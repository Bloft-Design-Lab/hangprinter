ARM GAS  /tmp/cc6jfxXH.s 			page 1


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
  13              		.file	"LinearDeltaKinematics.cpp"
  14              		.section	.text._ZNK10Kinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK10Kinematics17HomingButto
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZNK10Kinematics17HomingButtonNamesEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK10Kinematics17HomingButtonNamesEv, %function
  23              	_ZNK10Kinematics17HomingButtonNamesEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0048     		ldr	r0, .L3
  28 0002 7047     		bx	lr
  29              	.L4:
  30              		.align	2
  31              	.L3:
  32 0004 00000000 		.word	.LC0
  33              		.size	_ZNK10Kinematics17HomingButtonNamesEv, .-_ZNK10Kinematics17HomingButtonNamesEv
  34              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
  35              		.align	1
  36              		.p2align 2,,3
  37              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
  43              	_ZNK10Kinematics16MachineAxisNamesEv:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46              		@ link register save eliminated.
  47 0000 0048     		ldr	r0, .L6
  48 0002 7047     		bx	lr
  49              	.L7:
  50              		.align	2
  51              	.L6:
  52 0004 00000000 		.word	.LC1
  53              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
  54              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
  55              		.align	1
  56              		.p2align 2,,3
  57              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
ARM GAS  /tmp/cc6jfxXH.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu fpv4-sp-d16
  62              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
  63              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 0020     		movs	r0, #0
  68 0002 7047     		bx	lr
  69              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
  70              		.section	.text._ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK21Linear
  71              		.align	1
  72              		.p2align 2,,3
  73              		.weak	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv, %function
  79              	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 0120     		movs	r0, #1
  84 0002 7047     		bx	lr
  85              		.size	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv, .-_ZNK21LinearDeltaKinematics23Suppo
  86              		.section	.text._ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK21Linear
  87              		.align	1
  88              		.p2align 2,,3
  89              		.weak	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu fpv4-sp-d16
  94              		.type	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv, %function
  95              	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98              		@ link register save eliminated.
  99 0000 0720     		movs	r0, #7
 100 0002 7047     		bx	lr
 101              		.size	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv, .-_ZNK21LinearDeltaKinematics23AxesT
 102              		.section	.text._ZNK21LinearDeltaKinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK21LinearDeltaKi
 103              		.align	1
 104              		.p2align 2,,3
 105              		.weak	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu fpv4-sp-d16
 110              		.type	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj, %function
 111              	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  /tmp/cc6jfxXH.s 			page 3


 115 0000 0020     		movs	r0, #0
 116 0002 7047     		bx	lr
 117              		.size	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj, .-_ZNK21LinearDeltaKinematics16NumHomingBut
 118              		.section	.text._ZNK21LinearDeltaKinematics13GetHomingModeEv,"axG",%progbits,_ZNK21LinearDeltaKinem
 119              		.align	1
 120              		.p2align 2,,3
 121              		.weak	_ZNK21LinearDeltaKinematics13GetHomingModeEv
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu fpv4-sp-d16
 126              		.type	_ZNK21LinearDeltaKinematics13GetHomingModeEv, %function
 127              	_ZNK21LinearDeltaKinematics13GetHomingModeEv:
 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131 0000 0120     		movs	r0, #1
 132 0002 7047     		bx	lr
 133              		.size	_ZNK21LinearDeltaKinematics13GetHomingModeEv, .-_ZNK21LinearDeltaKinematics13GetHomingModeEv
 134              		.section	.text._ZNK21LinearDeltaKinematics7GetNameEb,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	_ZNK21LinearDeltaKinematics7GetNameEb
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	_ZNK21LinearDeltaKinematics7GetNameEb, %function
 143              	_ZNK21LinearDeltaKinematics7GetNameEb:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 024B     		ldr	r3, .L16
 148 0002 0348     		ldr	r0, .L16+4
 149 0004 0029     		cmp	r1, #0
 150 0006 08BF     		it	eq
 151 0008 1846     		moveq	r0, r3
 152 000a 7047     		bx	lr
 153              	.L17:
 154              		.align	2
 155              	.L16:
 156 000c 08000000 		.word	.LC3
 157 0010 00000000 		.word	.LC2
 158              		.size	_ZNK21LinearDeltaKinematics7GetNameEb, .-_ZNK21LinearDeltaKinematics7GetNameEb
 159              		.section	.text._ZNK21LinearDeltaKinematics11IsReachableEffb,"ax",%progbits
 160              		.align	1
 161              		.p2align 2,,3
 162              		.global	_ZNK21LinearDeltaKinematics11IsReachableEffb
 163              		.syntax unified
 164              		.thumb
 165              		.thumb_func
 166              		.fpu fpv4-sp-d16
 167              		.type	_ZNK21LinearDeltaKinematics11IsReachableEffb, %function
 168              	_ZNK21LinearDeltaKinematics11IsReachableEffb:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171              		@ link register save eliminated.
ARM GAS  /tmp/cc6jfxXH.s 			page 4


 172 0000 60EEA00A 		vmul.f32	s1, s1, s1
 173 0004 D0ED1A7A 		vldr.32	s15, [r0, #104]
 174 0008 E0EE000A 		vfma.f32	s1, s0, s0
 175 000c F4EEE70A 		vcmpe.f32	s1, s15
 176 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 177 0014 4CBF     		ite	mi
 178 0016 0120     		movmi	r0, #1
 179 0018 0020     		movpl	r0, #0
 180 001a 7047     		bx	lr
 181              		.size	_ZNK21LinearDeltaKinematics11IsReachableEffb, .-_ZNK21LinearDeltaKinematics11IsReachableEffb
 182              		.section	.text._ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 183              		.align	1
 184              		.p2align 2,,3
 185              		.global	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu fpv4-sp-d16
 190              		.type	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf, %function
 191              	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194              		@ link register save eliminated.
 195 0000 69B1     		cbz	r1, .L27
 196 0002 10B4     		push	{r4}
 197 0004 02EB8101 		add	r1, r2, r1, lsl #2
 198 0008 0024     		movs	r4, #0
 199 000a 1346     		mov	r3, r2
 200              	.L21:
 201 000c 43F8044B 		str	r4, [r3], #4	@ float
 202 0010 8B42     		cmp	r3, r1
 203 0012 FBD1     		bne	.L21
 204 0014 436C     		ldr	r3, [r0, #68]	@ float
 205 0016 9360     		str	r3, [r2, #8]	@ float
 206 0018 5DF8044B 		ldr	r4, [sp], #4
 207 001c 7047     		bx	lr
 208              	.L27:
 209 001e 436C     		ldr	r3, [r0, #68]	@ float
 210 0020 9360     		str	r3, [r2, #8]	@ float
 211 0022 7047     		bx	lr
 212              		.size	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf, .-_ZNK21LinearDeltaKinematics25G
 213              		.section	.text._ZNK21LinearDeltaKinematics13GetMotionTypeEj,"ax",%progbits
 214              		.align	1
 215              		.p2align 2,,3
 216              		.global	_ZNK21LinearDeltaKinematics13GetMotionTypeEj
 217              		.syntax unified
 218              		.thumb
 219              		.thumb_func
 220              		.fpu fpv4-sp-d16
 221              		.type	_ZNK21LinearDeltaKinematics13GetMotionTypeEj, %function
 222              	_ZNK21LinearDeltaKinematics13GetMotionTypeEj:
 223              		@ args = 0, pretend = 0, frame = 0
 224              		@ frame_needed = 0, uses_anonymous_args = 0
 225              		@ link register save eliminated.
 226 0000 0229     		cmp	r1, #2
 227 0002 8CBF     		ite	hi
 228 0004 0020     		movhi	r0, #0
ARM GAS  /tmp/cc6jfxXH.s 			page 5


 229 0006 0120     		movls	r0, #1
 230 0008 7047     		bx	lr
 231              		.size	_ZNK21LinearDeltaKinematics13GetMotionTypeEj, .-_ZNK21LinearDeltaKinematics13GetMotionTypeEj
 232 000a 00BF     		.section	.text._ZNK21LinearDeltaKinematics17GetTiltCorrectionEj,"ax",%progbits
 233              		.align	1
 234              		.p2align 2,,3
 235              		.global	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj
 236              		.syntax unified
 237              		.thumb
 238              		.thumb_func
 239              		.fpu fpv4-sp-d16
 240              		.type	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj, %function
 241              	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj:
 242              		@ args = 0, pretend = 0, frame = 0
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244              		@ link register save eliminated.
 245 0000 31B1     		cbz	r1, .L35
 246 0002 0129     		cmp	r1, #1
 247 0004 0CBF     		ite	eq
 248 0006 90ED130A 		vldreq.32	s0, [r0, #76]
 249 000a 9FED030A 		vldrne.32	s0, .L36
 250 000e 7047     		bx	lr
 251              	.L35:
 252 0010 90ED120A 		vldr.32	s0, [r0, #72]
 253 0014 7047     		bx	lr
 254              	.L37:
 255 0016 00BF     		.align	2
 256              	.L36:
 257 0018 00000000 		.word	0
 258              		.size	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj, .-_ZNK21LinearDeltaKinematics17GetTiltCorr
 259              		.section	.text._ZNK21LinearDeltaKinematics16AxesAssumedHomedEm,"ax",%progbits
 260              		.align	1
 261              		.p2align 2,,3
 262              		.global	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm
 263              		.syntax unified
 264              		.thumb
 265              		.thumb_func
 266              		.fpu fpv4-sp-d16
 267              		.type	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm, %function
 268              	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm:
 269              		@ args = 0, pretend = 0, frame = 0
 270              		@ frame_needed = 0, uses_anonymous_args = 0
 271              		@ link register save eliminated.
 272 0000 01F00703 		and	r3, r1, #7
 273 0004 072B     		cmp	r3, #7
 274 0006 14BF     		ite	ne
 275 0008 21F00700 		bicne	r0, r1, #7
 276 000c 0846     		moveq	r0, r1
 277 000e 7047     		bx	lr
 278              		.size	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm, .-_ZNK21LinearDeltaKinematics16AxesAssumedH
 279              		.section	.text._ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb,"ax",%progbits
 280              		.align	1
 281              		.p2align 2,,3
 282              		.global	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb
 283              		.syntax unified
 284              		.thumb
 285              		.thumb_func
ARM GAS  /tmp/cc6jfxXH.s 			page 6


 286              		.fpu fpv4-sp-d16
 287              		.type	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb, %function
 288              	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb:
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291              		@ link register save eliminated.
 292 0000 4B07     		lsls	r3, r1, #29
 293 0002 14BF     		ite	ne
 294 0004 41F00700 		orrne	r0, r1, #7
 295 0008 0846     		moveq	r0, r1
 296 000a 7047     		bx	lr
 297              		.size	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb, .-_ZNK21LinearDeltaKinematics15MustBeHomedA
 298              		.section	.text._ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 299              		.align	1
 300              		.p2align 2,,3
 301              		.global	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj
 302              		.syntax unified
 303              		.thumb
 304              		.thumb_func
 305              		.fpu fpv4-sp-d16
 306              		.type	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj, %function
 307              	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj:
 308              		@ args = 0, pretend = 0, frame = 0
 309              		@ frame_needed = 0, uses_anonymous_args = 0
 310              		@ link register save eliminated.
 311 0000 0020     		movs	r0, #0
 312 0002 7047     		bx	lr
 313              		.size	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj, .-_ZNK21LinearDeltaKinematics24Quer
 314              		.section	.text._ZN11FixedMatrixIdLj32ELj3EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EEclEjj
 315              		.align	1
 316              		.p2align 2,,3
 317              		.weak	_ZN11FixedMatrixIdLj32ELj3EEclEjj
 318              		.syntax unified
 319              		.thumb
 320              		.thumb_func
 321              		.fpu fpv4-sp-d16
 322              		.type	_ZN11FixedMatrixIdLj32ELj3EEclEjj, %function
 323              	_ZN11FixedMatrixIdLj32ELj3EEclEjj:
 324              		@ args = 0, pretend = 0, frame = 0
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326              		@ link register save eliminated.
 327 0000 0132     		adds	r2, r2, #1
 328 0002 01EB4101 		add	r1, r1, r1, lsl #1
 329 0006 1144     		add	r1, r1, r2
 330 0008 00EBC100 		add	r0, r0, r1, lsl #3
 331 000c 7047     		bx	lr
 332              		.size	_ZN11FixedMatrixIdLj32ELj3EEclEjj, .-_ZN11FixedMatrixIdLj32ELj3EEclEjj
 333 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj9EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EEclEjj
 334              		.align	1
 335              		.p2align 2,,3
 336              		.weak	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 337              		.syntax unified
 338              		.thumb
 339              		.thumb_func
 340              		.fpu fpv4-sp-d16
 341              		.type	_ZN11FixedMatrixIdLj32ELj9EEclEjj, %function
 342              	_ZN11FixedMatrixIdLj32ELj9EEclEjj:
ARM GAS  /tmp/cc6jfxXH.s 			page 7


 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345              		@ link register save eliminated.
 346 0000 0132     		adds	r2, r2, #1
 347 0002 01EBC101 		add	r1, r1, r1, lsl #3
 348 0006 1144     		add	r1, r1, r2
 349 0008 00EBC100 		add	r0, r0, r1, lsl #3
 350 000c 7047     		bx	lr
 351              		.size	_ZN11FixedMatrixIdLj32ELj9EEclEjj, .-_ZN11FixedMatrixIdLj32ELj9EEclEjj
 352 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj9ELj10EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EEclEjj
 353              		.align	1
 354              		.p2align 2,,3
 355              		.weak	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 356              		.syntax unified
 357              		.thumb
 358              		.thumb_func
 359              		.fpu fpv4-sp-d16
 360              		.type	_ZN11FixedMatrixIdLj9ELj10EEclEjj, %function
 361              	_ZN11FixedMatrixIdLj9ELj10EEclEjj:
 362              		@ args = 0, pretend = 0, frame = 0
 363              		@ frame_needed = 0, uses_anonymous_args = 0
 364              		@ link register save eliminated.
 365 0000 0132     		adds	r2, r2, #1
 366 0002 01EB8101 		add	r1, r1, r1, lsl #2
 367 0006 02EB4101 		add	r1, r2, r1, lsl #1
 368 000a 00EBC100 		add	r0, r0, r1, lsl #3
 369 000e 7047     		bx	lr
 370              		.size	_ZN11FixedMatrixIdLj9ELj10EEclEjj, .-_ZN11FixedMatrixIdLj9ELj10EEclEjj
 371              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 372              		.align	1
 373              		.p2align 2,,3
 374              		.weak	_ZN11FixedMatrixIdLj9ELj10EED2Ev
 375              		.syntax unified
 376              		.thumb
 377              		.thumb_func
 378              		.fpu fpv4-sp-d16
 379              		.type	_ZN11FixedMatrixIdLj9ELj10EED2Ev, %function
 380              	_ZN11FixedMatrixIdLj9ELj10EED2Ev:
 381              		@ args = 0, pretend = 0, frame = 0
 382              		@ frame_needed = 0, uses_anonymous_args = 0
 383              		@ link register save eliminated.
 384 0000 7047     		bx	lr
 385              		.size	_ZN11FixedMatrixIdLj9ELj10EED2Ev, .-_ZN11FixedMatrixIdLj9ELj10EED2Ev
 386              		.weak	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 387              		.thumb_set _ZN11FixedMatrixIdLj9ELj10EED1Ev,_ZN11FixedMatrixIdLj9ELj10EED2Ev
 388 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj9EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 389              		.align	1
 390              		.p2align 2,,3
 391              		.weak	_ZN11FixedMatrixIdLj32ELj9EED2Ev
 392              		.syntax unified
 393              		.thumb
 394              		.thumb_func
 395              		.fpu fpv4-sp-d16
 396              		.type	_ZN11FixedMatrixIdLj32ELj9EED2Ev, %function
 397              	_ZN11FixedMatrixIdLj32ELj9EED2Ev:
 398              		@ args = 0, pretend = 0, frame = 0
 399              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc6jfxXH.s 			page 8


 400              		@ link register save eliminated.
 401 0000 7047     		bx	lr
 402              		.size	_ZN11FixedMatrixIdLj32ELj9EED2Ev, .-_ZN11FixedMatrixIdLj32ELj9EED2Ev
 403              		.weak	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 404              		.thumb_set _ZN11FixedMatrixIdLj32ELj9EED1Ev,_ZN11FixedMatrixIdLj32ELj9EED2Ev
 405 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj3EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 406              		.align	1
 407              		.p2align 2,,3
 408              		.weak	_ZN11FixedMatrixIdLj32ELj3EED2Ev
 409              		.syntax unified
 410              		.thumb
 411              		.thumb_func
 412              		.fpu fpv4-sp-d16
 413              		.type	_ZN11FixedMatrixIdLj32ELj3EED2Ev, %function
 414              	_ZN11FixedMatrixIdLj32ELj3EED2Ev:
 415              		@ args = 0, pretend = 0, frame = 0
 416              		@ frame_needed = 0, uses_anonymous_args = 0
 417              		@ link register save eliminated.
 418 0000 7047     		bx	lr
 419              		.size	_ZN11FixedMatrixIdLj32ELj3EED2Ev, .-_ZN11FixedMatrixIdLj32ELj3EED2Ev
 420              		.weak	_ZN11FixedMatrixIdLj32ELj3EED1Ev
 421              		.thumb_set _ZN11FixedMatrixIdLj32ELj3EED1Ev,_ZN11FixedMatrixIdLj32ELj3EED2Ev
 422 0002 00BF     		.section	.text._ZN21LinearDeltaKinematicsD2Ev,"axG",%progbits,_ZN21LinearDeltaKinematicsD5Ev,comda
 423              		.align	1
 424              		.p2align 2,,3
 425              		.weak	_ZN21LinearDeltaKinematicsD2Ev
 426              		.syntax unified
 427              		.thumb
 428              		.thumb_func
 429              		.fpu fpv4-sp-d16
 430              		.type	_ZN21LinearDeltaKinematicsD2Ev, %function
 431              	_ZN21LinearDeltaKinematicsD2Ev:
 432              		@ args = 0, pretend = 0, frame = 0
 433              		@ frame_needed = 0, uses_anonymous_args = 0
 434              		@ link register save eliminated.
 435 0000 7047     		bx	lr
 436              		.size	_ZN21LinearDeltaKinematicsD2Ev, .-_ZN21LinearDeltaKinematicsD2Ev
 437              		.weak	_ZN21LinearDeltaKinematicsD1Ev
 438              		.thumb_set _ZN21LinearDeltaKinematicsD1Ev,_ZN21LinearDeltaKinematicsD2Ev
 439 0002 00BF     		.section	.text._ZNK11FixedMatrixIdLj9ELj10EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EE4
 440              		.align	1
 441              		.p2align 2,,3
 442              		.weak	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 443              		.syntax unified
 444              		.thumb
 445              		.thumb_func
 446              		.fpu fpv4-sp-d16
 447              		.type	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv, %function
 448              	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv:
 449              		@ args = 0, pretend = 0, frame = 0
 450              		@ frame_needed = 0, uses_anonymous_args = 0
 451              		@ link register save eliminated.
 452 0000 0920     		movs	r0, #9
 453 0002 7047     		bx	lr
 454              		.size	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv, .-_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 455              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EE4
 456              		.align	1
ARM GAS  /tmp/cc6jfxXH.s 			page 9


 457              		.p2align 2,,3
 458              		.weak	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 459              		.syntax unified
 460              		.thumb
 461              		.thumb_func
 462              		.fpu fpv4-sp-d16
 463              		.type	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv, %function
 464              	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv:
 465              		@ args = 0, pretend = 0, frame = 0
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467              		@ link register save eliminated.
 468 0000 0A20     		movs	r0, #10
 469 0002 7047     		bx	lr
 470              		.size	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv, .-_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 471              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EEclE
 472              		.align	1
 473              		.p2align 2,,3
 474              		.weak	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 475              		.syntax unified
 476              		.thumb
 477              		.thumb_func
 478              		.fpu fpv4-sp-d16
 479              		.type	_ZNK11FixedMatrixIdLj9ELj10EEclEjj, %function
 480              	_ZNK11FixedMatrixIdLj9ELj10EEclEjj:
 481              		@ args = 0, pretend = 0, frame = 0
 482              		@ frame_needed = 0, uses_anonymous_args = 0
 483              		@ link register save eliminated.
 484 0000 0132     		adds	r2, r2, #1
 485 0002 01EB8101 		add	r1, r1, r1, lsl #2
 486 0006 02EB4101 		add	r1, r2, r1, lsl #1
 487 000a 00EBC100 		add	r0, r0, r1, lsl #3
 488 000e 7047     		bx	lr
 489              		.size	_ZNK11FixedMatrixIdLj9ELj10EEclEjj, .-_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 490              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EE4
 491              		.align	1
 492              		.p2align 2,,3
 493              		.weak	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 494              		.syntax unified
 495              		.thumb
 496              		.thumb_func
 497              		.fpu fpv4-sp-d16
 498              		.type	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv, %function
 499              	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv:
 500              		@ args = 0, pretend = 0, frame = 0
 501              		@ frame_needed = 0, uses_anonymous_args = 0
 502              		@ link register save eliminated.
 503 0000 2020     		movs	r0, #32
 504 0002 7047     		bx	lr
 505              		.size	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 506              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EE4
 507              		.align	1
 508              		.p2align 2,,3
 509              		.weak	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 510              		.syntax unified
 511              		.thumb
 512              		.thumb_func
 513              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cc6jfxXH.s 			page 10


 514              		.type	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv, %function
 515              	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv:
 516              		@ args = 0, pretend = 0, frame = 0
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518              		@ link register save eliminated.
 519 0000 0920     		movs	r0, #9
 520 0002 7047     		bx	lr
 521              		.size	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 522              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EEclE
 523              		.align	1
 524              		.p2align 2,,3
 525              		.weak	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 526              		.syntax unified
 527              		.thumb
 528              		.thumb_func
 529              		.fpu fpv4-sp-d16
 530              		.type	_ZNK11FixedMatrixIdLj32ELj9EEclEjj, %function
 531              	_ZNK11FixedMatrixIdLj32ELj9EEclEjj:
 532              		@ args = 0, pretend = 0, frame = 0
 533              		@ frame_needed = 0, uses_anonymous_args = 0
 534              		@ link register save eliminated.
 535 0000 0132     		adds	r2, r2, #1
 536 0002 01EBC101 		add	r1, r1, r1, lsl #3
 537 0006 1144     		add	r1, r1, r2
 538 0008 00EBC100 		add	r0, r0, r1, lsl #3
 539 000c 7047     		bx	lr
 540              		.size	_ZNK11FixedMatrixIdLj32ELj9EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 541 000e 00BF     		.section	.text._ZNK11FixedMatrixIdLj32ELj3EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EE4
 542              		.align	1
 543              		.p2align 2,,3
 544              		.weak	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv
 545              		.syntax unified
 546              		.thumb
 547              		.thumb_func
 548              		.fpu fpv4-sp-d16
 549              		.type	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv, %function
 550              	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv:
 551              		@ args = 0, pretend = 0, frame = 0
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553              		@ link register save eliminated.
 554 0000 2020     		movs	r0, #32
 555 0002 7047     		bx	lr
 556              		.size	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv
 557              		.section	.text._ZNK11FixedMatrixIdLj32ELj3EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EE4
 558              		.align	1
 559              		.p2align 2,,3
 560              		.weak	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv
 561              		.syntax unified
 562              		.thumb
 563              		.thumb_func
 564              		.fpu fpv4-sp-d16
 565              		.type	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv, %function
 566              	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv:
 567              		@ args = 0, pretend = 0, frame = 0
 568              		@ frame_needed = 0, uses_anonymous_args = 0
 569              		@ link register save eliminated.
 570 0000 0320     		movs	r0, #3
ARM GAS  /tmp/cc6jfxXH.s 			page 11


 571 0002 7047     		bx	lr
 572              		.size	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj3EE4colsEv
 573              		.section	.text._ZNK11FixedMatrixIdLj32ELj3EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EEclE
 574              		.align	1
 575              		.p2align 2,,3
 576              		.weak	_ZNK11FixedMatrixIdLj32ELj3EEclEjj
 577              		.syntax unified
 578              		.thumb
 579              		.thumb_func
 580              		.fpu fpv4-sp-d16
 581              		.type	_ZNK11FixedMatrixIdLj32ELj3EEclEjj, %function
 582              	_ZNK11FixedMatrixIdLj32ELj3EEclEjj:
 583              		@ args = 0, pretend = 0, frame = 0
 584              		@ frame_needed = 0, uses_anonymous_args = 0
 585              		@ link register save eliminated.
 586 0000 0132     		adds	r2, r2, #1
 587 0002 01EB4101 		add	r1, r1, r1, lsl #1
 588 0006 1144     		add	r1, r1, r2
 589 0008 00EBC100 		add	r0, r0, r1, lsl #3
 590 000c 7047     		bx	lr
 591              		.size	_ZNK11FixedMatrixIdLj32ELj3EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj3EEclEjj
 592 000e 00BF     		.section	.text._ZNK21LinearDeltaKinematics13LimitPositionEPfjmb,"ax",%progbits
 593              		.align	1
 594              		.p2align 2,,3
 595              		.global	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb
 596              		.syntax unified
 597              		.thumb
 598              		.thumb_func
 599              		.fpu fpv4-sp-d16
 600              		.type	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb, %function
 601              	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb:
 602              		@ args = 4, pretend = 0, frame = 16
 603              		@ frame_needed = 0, uses_anonymous_args = 0
 604 0000 30B5     		push	{r4, r5, lr}
 605 0002 2DED048B 		vpush.64	{d8, d9}
 606 0006 03F00705 		and	r5, r3, #7
 607 000a 072D     		cmp	r5, #7
 608 000c 1C46     		mov	r4, r3
 609 000e 87B0     		sub	sp, sp, #28
 610 0010 1346     		mov	r3, r2
 611 0012 0BD0     		beq	.L81
 612 0014 0025     		movs	r5, #0
 613              	.L62:
 614 0016 0094     		str	r4, [sp]
 615 0018 0322     		movs	r2, #3
 616 001a FFF7FEFF 		bl	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm
 617 001e 0028     		cmp	r0, #0
 618 0020 08BF     		it	eq
 619 0022 2846     		moveq	r0, r5
 620 0024 07B0     		add	sp, sp, #28
 621              		@ sp needed
 622 0026 BDEC048B 		vldm	sp!, {d8-d9}
 623 002a 30BD     		pop	{r4, r5, pc}
 624              	.L81:
 625 002c 91ED017A 		vldr.32	s14, [r1, #4]
 626 0030 D1ED007A 		vldr.32	s15, [r1]
 627 0034 D0ED1A6A 		vldr.32	s13, [r0, #104]
ARM GAS  /tmp/cc6jfxXH.s 			page 12


 628 0038 27EE078A 		vmul.f32	s16, s14, s14
 629 003c A7EEA78A 		vfma.f32	s16, s15, s15
 630 0040 F4EEC86A 		vcmpe.f32	s13, s16
 631 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 632 0048 11D4     		bmi	.L82
 633 004a 0025     		movs	r5, #0
 634              	.L63:
 635 004c 384A     		ldr	r2, .L86
 636 004e 91ED027A 		vldr.32	s14, [r1, #8]
 637 0052 1268     		ldr	r2, [r2]	@ unaligned
 638 0054 02F24C72 		addw	r2, r2, #1868
 639 0058 D2ED007A 		vldr.32	s15, [r2]
 640 005c B4EEE77A 		vcmpe.f32	s14, s15
 641 0060 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 642 0064 16D5     		bpl	.L78
 643              	.L80:
 644 0066 C1ED027A 		vstr.32	s15, [r1, #8]
 645 006a 0125     		movs	r5, #1
 646 006c D3E7     		b	.L62
 647              	.L82:
 648 006e 86EE880A 		vdiv.f32	s0, s13, s16
 649 0072 B5EE400A 		vcmp.f32	s0, #0
 650 0076 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 651 007a F1EEC08A 		vsqrt.f32	s17, s0
 652 007e 2BD4     		bmi	.L83
 653              	.L65:
 654 0080 0125     		movs	r5, #1
 655 0082 68EEA77A 		vmul.f32	s15, s17, s15
 656 0086 28EE877A 		vmul.f32	s14, s17, s14
 657 008a C1ED007A 		vstr.32	s15, [r1]
 658 008e 81ED017A 		vstr.32	s14, [r1, #4]
 659 0092 DBE7     		b	.L63
 660              	.L78:
 661 0094 B5EE408A 		vcmp.f32	s16, #0
 662 0098 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 663 009c 90ED1B9A 		vldr.32	s18, [r0, #108]
 664 00a0 D0ED278A 		vldr.32	s17, [r0, #156]
 665 00a4 D0ED097A 		vldr.32	s15, [r0, #36]
 666 00a8 F1EEC89A 		vsqrt.f32	s19, s16
 667 00ac 30D4     		bmi	.L84
 668              	.L68:
 669 00ae 77EEE97A 		vsub.f32	s15, s15, s19
 670 00b2 E7EEE78A 		vfms.f32	s17, s15, s15
 671 00b6 F5EE408A 		vcmp.f32	s17, #0
 672 00ba F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 673 00be F1EEE87A 		vsqrt.f32	s15, s17
 674 00c2 16D4     		bmi	.L85
 675              	.L69:
 676 00c4 79EE677A 		vsub.f32	s15, s18, s15
 677 00c8 91ED027A 		vldr.32	s14, [r1, #8]
 678 00cc B4EEE77A 		vcmpe.f32	s14, s15
 679 00d0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 680 00d4 9FDD     		ble	.L62
 681 00d6 C6E7     		b	.L80
 682              	.L83:
 683 00d8 CDE90312 		strd	r1, r2, [sp, #12]
 684 00dc 0290     		str	r0, [sp, #8]
ARM GAS  /tmp/cc6jfxXH.s 			page 13


 685 00de FFF7FEFF 		bl	sqrtf
 686 00e2 0399     		ldr	r1, [sp, #12]
 687 00e4 049B     		ldr	r3, [sp, #16]
 688 00e6 D1ED007A 		vldr.32	s15, [r1]
 689 00ea 91ED017A 		vldr.32	s14, [r1, #4]
 690 00ee 0298     		ldr	r0, [sp, #8]
 691 00f0 C6E7     		b	.L65
 692              	.L85:
 693 00f2 B0EE680A 		vmov.f32	s0, s17
 694 00f6 CDE90413 		strd	r1, r3, [sp, #16]
 695 00fa 0390     		str	r0, [sp, #12]
 696 00fc CDED027A 		vstr.32	s15, [sp, #8]	@ int
 697 0100 FFF7FEFF 		bl	sqrtf
 698 0104 DDE90413 		ldrd	r1, r3, [sp, #16]
 699 0108 0398     		ldr	r0, [sp, #12]
 700 010a DDED027A 		vldr.32	s15, [sp, #8]	@ int
 701 010e D9E7     		b	.L69
 702              	.L84:
 703 0110 B0EE480A 		vmov.f32	s0, s16
 704 0114 CDE90413 		strd	r1, r3, [sp, #16]
 705 0118 0390     		str	r0, [sp, #12]
 706 011a CDED027A 		vstr.32	s15, [sp, #8]	@ int
 707 011e FFF7FEFF 		bl	sqrtf
 708 0122 DDE90413 		ldrd	r1, r3, [sp, #16]
 709 0126 0398     		ldr	r0, [sp, #12]
 710 0128 DDED027A 		vldr.32	s15, [sp, #8]	@ int
 711 012c BFE7     		b	.L68
 712              	.L87:
 713 012e 00BF     		.align	2
 714              	.L86:
 715 0130 00000000 		.word	reprap
 716              		.size	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb, .-_ZNK21LinearDeltaKinematics13LimitPositi
 717              		.section	.text._ZN21LinearDeltaKinematicsD0Ev,"axG",%progbits,_ZN21LinearDeltaKinematicsD5Ev,comda
 718              		.align	1
 719              		.p2align 2,,3
 720              		.weak	_ZN21LinearDeltaKinematicsD0Ev
 721              		.syntax unified
 722              		.thumb
 723              		.thumb_func
 724              		.fpu fpv4-sp-d16
 725              		.type	_ZN21LinearDeltaKinematicsD0Ev, %function
 726              	_ZN21LinearDeltaKinematicsD0Ev:
 727              		@ args = 0, pretend = 0, frame = 0
 728              		@ frame_needed = 0, uses_anonymous_args = 0
 729 0000 10B5     		push	{r4, lr}
 730 0002 A421     		movs	r1, #164
 731 0004 0446     		mov	r4, r0
 732 0006 FFF7FEFF 		bl	_ZdlPvj
 733 000a 2046     		mov	r0, r4
 734 000c 10BD     		pop	{r4, pc}
 735              		.size	_ZN21LinearDeltaKinematicsD0Ev, .-_ZN21LinearDeltaKinematicsD0Ev
 736 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 737              		.align	1
 738              		.p2align 2,,3
 739              		.weak	_ZN11FixedMatrixIdLj32ELj3EED0Ev
 740              		.syntax unified
 741              		.thumb
ARM GAS  /tmp/cc6jfxXH.s 			page 14


 742              		.thumb_func
 743              		.fpu fpv4-sp-d16
 744              		.type	_ZN11FixedMatrixIdLj32ELj3EED0Ev, %function
 745              	_ZN11FixedMatrixIdLj32ELj3EED0Ev:
 746              		@ args = 0, pretend = 0, frame = 0
 747              		@ frame_needed = 0, uses_anonymous_args = 0
 748 0000 10B5     		push	{r4, lr}
 749 0002 4FF44271 		mov	r1, #776
 750 0006 0446     		mov	r4, r0
 751 0008 FFF7FEFF 		bl	_ZdlPvj
 752 000c 2046     		mov	r0, r4
 753 000e 10BD     		pop	{r4, pc}
 754              		.size	_ZN11FixedMatrixIdLj32ELj3EED0Ev, .-_ZN11FixedMatrixIdLj32ELj3EED0Ev
 755              		.section	.text._ZN11FixedMatrixIdLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 756              		.align	1
 757              		.p2align 2,,3
 758              		.weak	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 759              		.syntax unified
 760              		.thumb
 761              		.thumb_func
 762              		.fpu fpv4-sp-d16
 763              		.type	_ZN11FixedMatrixIdLj32ELj9EED0Ev, %function
 764              	_ZN11FixedMatrixIdLj32ELj9EED0Ev:
 765              		@ args = 0, pretend = 0, frame = 0
 766              		@ frame_needed = 0, uses_anonymous_args = 0
 767 0000 10B5     		push	{r4, lr}
 768 0002 40F60811 		movw	r1, #2312
 769 0006 0446     		mov	r4, r0
 770 0008 FFF7FEFF 		bl	_ZdlPvj
 771 000c 2046     		mov	r0, r4
 772 000e 10BD     		pop	{r4, pc}
 773              		.size	_ZN11FixedMatrixIdLj32ELj9EED0Ev, .-_ZN11FixedMatrixIdLj32ELj9EED0Ev
 774              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 775              		.align	1
 776              		.p2align 2,,3
 777              		.weak	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 778              		.syntax unified
 779              		.thumb
 780              		.thumb_func
 781              		.fpu fpv4-sp-d16
 782              		.type	_ZN11FixedMatrixIdLj9ELj10EED0Ev, %function
 783              	_ZN11FixedMatrixIdLj9ELj10EED0Ev:
 784              		@ args = 0, pretend = 0, frame = 0
 785              		@ frame_needed = 0, uses_anonymous_args = 0
 786 0000 10B5     		push	{r4, lr}
 787 0002 4FF43671 		mov	r1, #728
 788 0006 0446     		mov	r4, r0
 789 0008 FFF7FEFF 		bl	_ZdlPvj
 790 000c 2046     		mov	r0, r4
 791 000e 10BD     		pop	{r4, pc}
 792              		.size	_ZN11FixedMatrixIdLj9ELj10EED0Ev, .-_ZN11FixedMatrixIdLj9ELj10EED0Ev
 793              		.section	.text._ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 794              		.align	1
 795              		.p2align 2,,3
 796              		.global	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf
 797              		.syntax unified
 798              		.thumb
ARM GAS  /tmp/cc6jfxXH.s 			page 15


 799              		.thumb_func
 800              		.fpu fpv4-sp-d16
 801              		.type	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 802              	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 803              		@ args = 0, pretend = 0, frame = 8
 804              		@ frame_needed = 0, uses_anonymous_args = 0
 805 0000 92ED010A 		vldr.32	s0, [r2, #4]
 806 0004 D2ED007A 		vldr.32	s15, [r2]
 807 0008 00B5     		push	{lr}
 808 000a 20EE000A 		vmul.f32	s0, s0, s0
 809 000e 2DED028B 		vpush.64	{d8}
 810 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 811 0016 83B0     		sub	sp, sp, #12
 812 0018 B5EE400A 		vcmp.f32	s0, #0
 813 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 814 0020 B1EEC08A 		vsqrt.f32	s16, s0
 815 0024 39D4     		bmi	.L105
 816              	.L97:
 817 0026 DFED1F7A 		vldr.32	s15, .L106
 818 002a B4EEE78A 		vcmpe.f32	s16, s15
 819 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 820 0032 2DDD     		ble	.L103
 821 0034 1C4B     		ldr	r3, .L106+4
 822 0036 1B68     		ldr	r3, [r3]
 823 0038 93ED500A 		vldr.32	s0, [r3, #320]
 824 003c D3ED517A 		vldr.32	s15, [r3, #324]
 825 0040 B4EE400A 		vcmp.f32	s0, s0
 826 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 827 0048 06D6     		bvs	.L100
 828 004a B4EEE70A 		vcmpe.f32	s0, s15
 829 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 830 0052 58BF     		it	pl
 831 0054 B0EE670A 		vmovpl.f32	s0, s15
 832              	.L100:
 833 0058 D3ED5C0A 		vldr.32	s1, [r3, #368]
 834 005c D3ED5D7A 		vldr.32	s15, [r3, #372]
 835 0060 F4EE600A 		vcmp.f32	s1, s1
 836 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 837 0068 06D6     		bvs	.L101
 838 006a F4EEE70A 		vcmpe.f32	s1, s15
 839 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 840 0072 58BF     		it	pl
 841 0074 F0EE670A 		vmovpl.f32	s1, s15
 842              	.L101:
 843 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 844 007c 0846     		mov	r0, r1
 845 007e 80EE080A 		vdiv.f32	s0, s0, s16
 846 0082 03B0     		add	sp, sp, #12
 847              		@ sp needed
 848 0084 BDEC028B 		vldm	sp!, {d8}
 849 0088 5DF804EB 		ldr	lr, [sp], #4
 850 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 851              	.L103:
 852 0090 03B0     		add	sp, sp, #12
 853              		@ sp needed
 854 0092 BDEC028B 		vldm	sp!, {d8}
 855 0096 5DF804FB 		ldr	pc, [sp], #4
ARM GAS  /tmp/cc6jfxXH.s 			page 16


 856              	.L105:
 857 009a 0191     		str	r1, [sp, #4]
 858 009c FFF7FEFF 		bl	sqrtf
 859 00a0 0199     		ldr	r1, [sp, #4]
 860 00a2 C0E7     		b	.L97
 861              	.L107:
 862              		.align	2
 863              	.L106:
 864 00a4 0AD7233C 		.word	1008981770
 865 00a8 00000000 		.word	reprap
 866              		.size	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21LinearDeltaKinemati
 867              		.section	.text._ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 868              		.align	1
 869              		.p2align 2,,3
 870              		.global	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore
 871              		.syntax unified
 872              		.thumb
 873              		.thumb_func
 874              		.fpu fpv4-sp-d16
 875              		.type	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore, %function
 876              	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore:
 877              		@ args = 0, pretend = 0, frame = 0
 878              		@ frame_needed = 0, uses_anonymous_args = 0
 879              		@ link register save eliminated.
 880 0000 90F8A020 		ldrb	r2, [r0, #160]	@ zero_extendqisi2
 881 0004 0AB9     		cbnz	r2, .L110
 882 0006 0120     		movs	r0, #1
 883 0008 7047     		bx	lr
 884              	.L110:
 885 000a 0368     		ldr	r3, [r0]
 886 000c DB69     		ldr	r3, [r3, #28]
 887 000e 1847     		bx	r3
 888              		.size	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK21LinearDeltaKinematics1
 889              		.section	.text._ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 890              		.align	1
 891              		.p2align 2,,3
 892              		.global	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 893              		.syntax unified
 894              		.thumb
 895              		.thumb_func
 896              		.fpu fpv4-sp-d16
 897              		.type	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 898              	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 899              		@ args = 4, pretend = 0, frame = 0
 900              		@ frame_needed = 0, uses_anonymous_args = 0
 901 0000 38B5     		push	{r3, r4, r5, lr}
 902 0002 049D     		ldr	r5, [sp, #16]
 903 0004 02B9     		cbnz	r2, .L117
 904 0006 38BD     		pop	{r3, r4, r5, pc}
 905              	.L117:
 906 0008 00EB8102 		add	r2, r0, r1, lsl #2
 907 000c 92ED0D0A 		vldr.32	s0, [r2, #52]
 908 0010 D0ED1B7A 		vldr.32	s15, [r0, #108]
 909 0014 03EB8103 		add	r3, r3, r1, lsl #2
 910 0018 77EE807A 		vadd.f32	s15, s15, s0
 911 001c 93ED000A 		vldr.32	s0, [r3]
 912 0020 27EE800A 		vmul.f32	s0, s15, s0
ARM GAS  /tmp/cc6jfxXH.s 			page 17


 913 0024 0C46     		mov	r4, r1
 914 0026 FFF7FEFF 		bl	lrintf
 915 002a AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 916 002c 05EB8404 		add	r4, r5, r4, lsl #2
 917 0030 6FF30003 		bfc	r3, #0, #1
 918 0034 E061     		str	r0, [r4, #28]
 919 0036 AB72     		strb	r3, [r5, #10]
 920 0038 38BD     		pop	{r3, r4, r5, pc}
 921              		.size	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK21LinearDeltaKinemati
 922 003a 00BF     		.section	.text._ZNK21LinearDeltaKinematics9TransformEPKfj.part.7,"ax",%progbits
 923              		.align	1
 924              		.p2align 2,,3
 925              		.syntax unified
 926              		.thumb
 927              		.thumb_func
 928              		.fpu fpv4-sp-d16
 929              		.type	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7, %function
 930              	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7:
 931              		@ args = 0, pretend = 0, frame = 8
 932              		@ frame_needed = 0, uses_anonymous_args = 0
 933 0000 00EB8202 		add	r2, r0, r2, lsl #2
 934 0004 D2ED146A 		vldr.32	s13, [r2, #80]
 935 0008 D1ED005A 		vldr.32	s11, [r1]
 936 000c D0ED277A 		vldr.32	s15, [r0, #156]
 937 0010 92ED177A 		vldr.32	s14, [r2, #92]
 938 0014 91ED016A 		vldr.32	s12, [r1, #4]
 939 0018 75EEE66A 		vsub.f32	s13, s11, s13
 940 001c 00B5     		push	{lr}
 941 001e E6EEE67A 		vfms.f32	s15, s13, s13
 942 0022 36EE477A 		vsub.f32	s14, s12, s14
 943 0026 2DED028B 		vpush.64	{d8}
 944 002a E7EE477A 		vfms.f32	s15, s14, s14
 945 002e 83B0     		sub	sp, sp, #12
 946 0030 F5EE407A 		vcmp.f32	s15, #0
 947 0034 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 948 0038 B1EEE78A 		vsqrt.f32	s16, s15
 949 003c 10D4     		bmi	.L121
 950              	.L119:
 951 003e 91ED020A 		vldr.32	s0, [r1, #8]
 952 0042 90ED127A 		vldr.32	s14, [r0, #72]
 953 0046 D0ED137A 		vldr.32	s15, [r0, #76]
 954 004a 38EE000A 		vadd.f32	s0, s16, s0
 955 004e A7EE250A 		vfma.f32	s0, s14, s11
 956 0052 A7EE860A 		vfma.f32	s0, s15, s12
 957 0056 03B0     		add	sp, sp, #12
 958              		@ sp needed
 959 0058 BDEC028B 		vldm	sp!, {d8}
 960 005c 5DF804FB 		ldr	pc, [sp], #4
 961              	.L121:
 962 0060 B0EE670A 		vmov.f32	s0, s15
 963 0064 CDE90001 		strd	r0, r1, [sp]
 964 0068 FFF7FEFF 		bl	sqrtf
 965 006c 0199     		ldr	r1, [sp, #4]
 966 006e 0098     		ldr	r0, [sp]
 967 0070 D1ED005A 		vldr.32	s11, [r1]
 968 0074 91ED016A 		vldr.32	s12, [r1, #4]
 969 0078 E1E7     		b	.L119
ARM GAS  /tmp/cc6jfxXH.s 			page 18


 970              		.size	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7, .-_ZNK21LinearDeltaKinematics9TransformEP
 971 007a 00BF     		.section	.text._ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 972              		.align	1
 973              		.p2align 2,,3
 974              		.global	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 975              		.syntax unified
 976              		.thumb
 977              		.thumb_func
 978              		.fpu fpv4-sp-d16
 979              		.type	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 980              	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 981              		@ args = 12, pretend = 0, frame = 0
 982              		@ frame_needed = 0, uses_anonymous_args = 0
 983 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 984 0004 032B     		cmp	r3, #3
 985 0006 9A46     		mov	r10, r3
 986 0008 9846     		mov	r8, r3
 987 000a 0B9B     		ldr	r3, [sp, #44]
 988 000c 1746     		mov	r7, r2
 989 000e 8346     		mov	fp, r0
 990 0010 0C46     		mov	r4, r1
 991 0012 28BF     		it	cs
 992 0014 4FF0030A 		movcs	r10, #3
 993 0018 9146     		mov	r9, r2
 994 001a 1E1F     		subs	r6, r3, #4
 995 001c 0025     		movs	r5, #0
 996              	.L124:
 997 001e AA45     		cmp	r10, r5
 998 0020 18D1     		bne	.L130
 999 0022 B8F1030F 		cmp	r8, #3
 1000 0026 12D9     		bls	.L128
 1001 0028 0B9B     		ldr	r3, [sp, #44]
 1002 002a 04EB8808 		add	r8, r4, r8, lsl #2
 1003 002e 0C37     		adds	r7, r7, #12
 1004 0030 03F10806 		add	r6, r3, #8
 1005 0034 0C34     		adds	r4, r4, #12
 1006              	.L127:
 1007 0036 B4EC010A 		vldmia.32	r4!, {s0}
 1008 003a F7EC017A 		vldmia.32	r7!, {s15}
 1009 003e 20EE270A 		vmul.f32	s0, s0, s15
 1010 0042 FFF7FEFF 		bl	lrintf
 1011 0046 4445     		cmp	r4, r8
 1012 0048 46F8040F 		str	r0, [r6, #4]!
 1013 004c F3D1     		bne	.L127
 1014              	.L128:
 1015 004e 0120     		movs	r0, #1
 1016 0050 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1017              	.L130:
 1018 0054 2A46     		mov	r2, r5
 1019 0056 2146     		mov	r1, r4
 1020 0058 5846     		mov	r0, fp
 1021 005a FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 1022 005e F9EC017A 		vldmia.32	r9!, {s15}
 1023 0062 27EE800A 		vmul.f32	s0, s15, s0
 1024 0066 FFF7FEFF 		bl	lrintf
 1025 006a 0135     		adds	r5, r5, #1
 1026 006c 46F8040F 		str	r0, [r6, #4]!
ARM GAS  /tmp/cc6jfxXH.s 			page 19


 1027 0070 D5E7     		b	.L124
 1028              		.size	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21LinearDeltaKinematic
 1029 0072 00BF     		.section	.text._ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm,"ax",%progbits
 1030              		.align	1
 1031              		.p2align 2,,3
 1032              		.global	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm
 1033              		.syntax unified
 1034              		.thumb
 1035              		.thumb_func
 1036              		.fpu fpv4-sp-d16
 1037              		.type	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm, %function
 1038              	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm:
 1039              		@ args = 4, pretend = 0, frame = 0
 1040              		@ frame_needed = 0, uses_anonymous_args = 0
 1041              		@ link register save eliminated.
 1042 0000 4A07     		lsls	r2, r1, #29
 1043 0002 11D1     		bne	.L137
 1044 0004 032B     		cmp	r3, #3
 1045 0006 0BD9     		bls	.L133
 1046 0008 0807     		lsls	r0, r1, #28
 1047 000a 4FF00302 		mov	r2, #3
 1048 000e 0DD4     		bmi	.L134
 1049 0010 01E0     		b	.L135
 1050              	.L136:
 1051 0012 C007     		lsls	r0, r0, #31
 1052 0014 0AD4     		bmi	.L134
 1053              	.L135:
 1054 0016 0132     		adds	r2, r2, #1
 1055 0018 9342     		cmp	r3, r2
 1056 001a 21FA02F0 		lsr	r0, r1, r2
 1057 001e F8D1     		bne	.L136
 1058              	.L133:
 1059 0020 009B     		ldr	r3, [sp]
 1060 0022 0020     		movs	r0, #0
 1061 0024 1860     		str	r0, [r3]
 1062 0026 7047     		bx	lr
 1063              	.L137:
 1064 0028 0248     		ldr	r0, .L141
 1065 002a 7047     		bx	lr
 1066              	.L134:
 1067 002c 024B     		ldr	r3, .L141+4
 1068 002e 53F82200 		ldr	r0, [r3, r2, lsl #2]
 1069 0032 7047     		bx	lr
 1070              	.L142:
 1071              		.align	2
 1072              	.L141:
 1073 0034 00000000 		.word	.LC4
 1074 0038 00000000 		.word	_ZN10Kinematics23StandardHomingFileNamesE
 1075              		.size	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm, .-_ZNK21LinearDeltaKinematics17GetHomi
 1076              		.section	.text._ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv,"ax",%progbits
 1077              		.align	1
 1078              		.p2align 2,,3
 1079              		.global	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv
 1080              		.syntax unified
 1081              		.thumb
 1082              		.thumb_func
 1083              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cc6jfxXH.s 			page 20


 1084              		.type	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv, %function
 1085              	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv:
 1086              		@ args = 0, pretend = 0, frame = 0
 1087              		@ frame_needed = 0, uses_anonymous_args = 0
 1088              		@ link register save eliminated.
 1089 0000 90ED0D6A 		vldr.32	s12, [r0, #52]
 1090 0004 D0ED0E6A 		vldr.32	s13, [r0, #56]
 1091 0008 90ED0F7A 		vldr.32	s14, [r0, #60]
 1092 000c 90ED115A 		vldr.32	s10, [r0, #68]
 1093 0010 D0ED1B5A 		vldr.32	s11, [r0, #108]
 1094 0014 76EE264A 		vadd.f32	s9, s12, s13
 1095 0018 B0EE084A 		vmov.f32	s8, #3.0e+0
 1096 001c 74EE874A 		vadd.f32	s9, s9, s14
 1097 0020 C4EE847A 		vdiv.f32	s15, s9, s8
 1098 0024 36EE676A 		vsub.f32	s12, s12, s15
 1099 0028 76EEE76A 		vsub.f32	s13, s13, s15
 1100 002c 37EE677A 		vsub.f32	s14, s14, s15
 1101 0030 35EE275A 		vadd.f32	s10, s10, s15
 1102 0034 75EEA77A 		vadd.f32	s15, s11, s15
 1103 0038 80ED0D6A 		vstr.32	s12, [r0, #52]
 1104 003c C0ED0E6A 		vstr.32	s13, [r0, #56]
 1105 0040 80ED0F7A 		vstr.32	s14, [r0, #60]
 1106 0044 80ED115A 		vstr.32	s10, [r0, #68]
 1107 0048 C0ED1B7A 		vstr.32	s15, [r0, #108]
 1108 004c 7047     		bx	lr
 1109              		.size	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv, .-_ZN21LinearDeltaKinematics27Nor
 1110 004e 00BF     		.section	.text._ZNK21LinearDeltaKinematics9TransformEPKfj,"ax",%progbits
 1111              		.align	1
 1112              		.p2align 2,,3
 1113              		.global	_ZNK21LinearDeltaKinematics9TransformEPKfj
 1114              		.syntax unified
 1115              		.thumb
 1116              		.thumb_func
 1117              		.fpu fpv4-sp-d16
 1118              		.type	_ZNK21LinearDeltaKinematics9TransformEPKfj, %function
 1119              	_ZNK21LinearDeltaKinematics9TransformEPKfj:
 1120              		@ args = 0, pretend = 0, frame = 0
 1121              		@ frame_needed = 0, uses_anonymous_args = 0
 1122              		@ link register save eliminated.
 1123 0000 022A     		cmp	r2, #2
 1124 0002 07D9     		bls	.L148
 1125 0004 10B4     		push	{r4}
 1126 0006 01EB8203 		add	r3, r1, r2, lsl #2
 1127 000a 93ED000A 		vldr.32	s0, [r3]
 1128 000e 5DF8044B 		ldr	r4, [sp], #4
 1129 0012 7047     		bx	lr
 1130              	.L148:
 1131 0014 FFF7FEBF 		b	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 1132              		.size	_ZNK21LinearDeltaKinematics9TransformEPKfj, .-_ZNK21LinearDeltaKinematics9TransformEPKfj
 1133              		.section	.text._ZNK21LinearDeltaKinematics16InverseTransformEfffPf,"ax",%progbits
 1134              		.align	1
 1135              		.p2align 2,,3
 1136              		.global	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 1137              		.syntax unified
 1138              		.thumb
 1139              		.thumb_func
 1140              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cc6jfxXH.s 			page 21


 1141              		.type	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf, %function
 1142              	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf:
 1143              		@ args = 0, pretend = 0, frame = 8
 1144              		@ frame_needed = 0, uses_anonymous_args = 0
 1145 0000 00B5     		push	{lr}
 1146 0002 2DED088B 		vpush.64	{d8, d9, d10, d11}
 1147 0006 D0ED239A 		vldr.32	s19, [r0, #140]
 1148 000a 90ED1D9A 		vldr.32	s18, [r0, #116]
 1149 000e D0ED223A 		vldr.32	s7, [r0, #136]
 1150 0012 D0ED1C1A 		vldr.32	s3, [r0, #112]
 1151 0016 D0ED207A 		vldr.32	s15, [r0, #128]
 1152 001a 90ED1F2A 		vldr.32	s4, [r0, #124]
 1153 001e 90ED244A 		vldr.32	s8, [r0, #144]
 1154 0022 D0ED1E2A 		vldr.32	s5, [r0, #120]
 1155 0026 90ED213A 		vldr.32	s6, [r0, #132]
 1156 002a D0ED256A 		vldr.32	s13, [r0, #148]
 1157 002e 90ED175A 		vldr.32	s10, [r0, #92]
 1158 0032 D0ED144A 		vldr.32	s9, [r0, #80]
 1159 0036 90ED266A 		vldr.32	s12, [r0, #152]
 1160 003a E0EEA09A 		vfma.f32	s19, s1, s1
 1161 003e 83B0     		sub	sp, sp, #12
 1162 0040 29EE207A 		vmul.f32	s14, s18, s1
 1163 0044 E0EE003A 		vfma.f32	s7, s0, s0
 1164 0048 A1EE807A 		vfma.f32	s14, s3, s0
 1165 004c 29EE299A 		vmul.f32	s18, s18, s19
 1166 0050 27EEA08A 		vmul.f32	s16, s15, s1
 1167 0054 A1EE014A 		vfma.f32	s8, s2, s2
 1168 0058 67EEA99A 		vmul.f32	s19, s15, s19
 1169 005c A2EE008A 		vfma.f32	s16, s4, s0
 1170 0060 A1EEA39A 		vfma.f32	s18, s3, s7
 1171 0064 F0EE477A 		vmov.f32	s15, s14
 1172 0068 E2EE817A 		vfma.f32	s15, s5, s2
 1173 006c E2EE239A 		vfma.f32	s19, s4, s7
 1174 0070 A2EE849A 		vfma.f32	s18, s5, s8
 1175 0074 A3EE018A 		vfma.f32	s16, s6, s2
 1176 0078 77EEA7AA 		vadd.f32	s21, s15, s15
 1177 007c E3EE049A 		vfma.f32	s19, s6, s8
 1178 0080 38EE088A 		vadd.f32	s16, s16, s16
 1179 0084 69EE2A8A 		vmul.f32	s17, s18, s21
 1180 0088 B1EE667A 		vneg.f32	s14, s13
 1181 008c F0EE497A 		vmov.f32	s15, s18
 1182 0090 E7EE057A 		vfma.f32	s15, s14, s10
 1183 0094 E9EE888A 		vfma.f32	s17, s19, s16
 1184 0098 B0EE694A 		vmov.f32	s8, s19
 1185 009c A4EEA64A 		vfma.f32	s8, s9, s13
 1186 00a0 F0EE405A 		vmov.f32	s11, s0
 1187 00a4 E6EE008A 		vfma.f32	s17, s12, s0
 1188 00a8 27EEA70A 		vmul.f32	s0, s15, s15
 1189 00ac D0ED277A 		vldr.32	s15, [r0, #156]
 1190 00b0 64EE884A 		vmul.f32	s9, s9, s16
 1191 00b4 A4EE040A 		vfma.f32	s0, s8, s8
 1192 00b8 D5EEA57A 		vfnms.f32	s15, s11, s11
 1193 00bc 28EE08AA 		vmul.f32	s20, s16, s16
 1194 00c0 E4EEA68A 		vfma.f32	s17, s9, s13
 1195 00c4 AAEEAAAA 		vfma.f32	s20, s21, s21
 1196 00c8 25EE2A5A 		vmul.f32	s10, s10, s21
 1197 00cc A6EE270A 		vfma.f32	s0, s12, s15
ARM GAS  /tmp/cc6jfxXH.s 			page 22


 1198 00d0 E7EE058A 		vfma.f32	s17, s14, s10
 1199 00d4 3AEE06AA 		vadd.f32	s20, s20, s12
 1200 00d8 2AEE400A 		vnmul.f32	s0, s20, s0
 1201 00dc A8EEA80A 		vfma.f32	s0, s17, s17
 1202 00e0 B5EE400A 		vcmp.f32	s0, #0
 1203 00e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1204 00e8 B1EEC0BA 		vsqrt.f32	s22, s0
 1205 00ec 22D4     		bmi	.L152
 1206              	.L150:
 1207 00ee 78EECB8A 		vsub.f32	s17, s17, s22
 1208 00f2 88EE8A7A 		vdiv.f32	s14, s17, s20
 1209 00f6 D8EE079A 		vfnms.f32	s19, s16, s14
 1210 00fa AAEEC79A 		vfms.f32	s18, s21, s14
 1211 00fe 89EEA66A 		vdiv.f32	s12, s19, s13
 1212 0102 81ED006A 		vstr.32	s12, [r1]
 1213 0106 D0ED256A 		vldr.32	s13, [r0, #148]
 1214 010a C9EE267A 		vdiv.f32	s15, s18, s13
 1215 010e C1ED017A 		vstr.32	s15, [r1, #4]
 1216 0112 D0ED135A 		vldr.32	s11, [r0, #76]
 1217 0116 D0ED126A 		vldr.32	s13, [r0, #72]
 1218 011a 67EEA57A 		vmul.f32	s15, s15, s11
 1219 011e E6EE267A 		vfma.f32	s15, s12, s13
 1220 0122 77EE677A 		vsub.f32	s15, s14, s15
 1221 0126 C1ED027A 		vstr.32	s15, [r1, #8]
 1222 012a 03B0     		add	sp, sp, #12
 1223              		@ sp needed
 1224 012c BDEC088B 		vldm	sp!, {d8-d11}
 1225 0130 5DF804FB 		ldr	pc, [sp], #4
 1226              	.L152:
 1227 0134 CDE90001 		strd	r0, r1, [sp]
 1228 0138 FFF7FEFF 		bl	sqrtf
 1229 013c 0098     		ldr	r0, [sp]
 1230 013e 0199     		ldr	r1, [sp, #4]
 1231 0140 D0ED256A 		vldr.32	s13, [r0, #148]
 1232 0144 D3E7     		b	.L150
 1233              		.size	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf, .-_ZNK21LinearDeltaKinematics16InverseT
 1234              		.section	.text._ZN21LinearDeltaKinematics6RecalcEv,"ax",%progbits
 1235              		.align	1
 1236              		.p2align 2,,3
 1237              		.global	_ZN21LinearDeltaKinematics6RecalcEv
 1238              		.syntax unified
 1239              		.thumb
 1240              		.thumb_func
 1241              		.fpu fpv4-sp-d16
 1242              		.type	_ZN21LinearDeltaKinematics6RecalcEv, %function
 1243              	_ZN21LinearDeltaKinematics6RecalcEv:
 1244              		@ args = 0, pretend = 0, frame = 16
 1245              		@ frame_needed = 0, uses_anonymous_args = 0
 1246 0000 10B5     		push	{r4, lr}
 1247 0002 2DED088B 		vpush.64	{d8, d9, d10, d11}
 1248 0006 D0ED0A8A 		vldr.32	s17, [r0, #40]
 1249 000a DFED54BA 		vldr.32	s23, .L155
 1250 000e 90ED098A 		vldr.32	s16, [r0, #36]
 1251 0012 B3EE0E9A 		vmov.f32	s18, #3.0e+1
 1252 0016 78EE898A 		vadd.f32	s17, s17, s18
 1253 001a 84B0     		sub	sp, sp, #16
 1254 001c 68EEAB8A 		vmul.f32	s17, s17, s23
ARM GAS  /tmp/cc6jfxXH.s 			page 23


 1255 0020 0446     		mov	r4, r0
 1256 0022 B0EE680A 		vmov.f32	s0, s17
 1257 0026 FFF7FEFF 		bl	cosf
 1258 002a 68EE00AA 		vmul.f32	s21, s16, s0
 1259 002e B0EE680A 		vmov.f32	s0, s17
 1260 0032 F1EE6A7A 		vneg.f32	s15, s21
 1261 0036 C4ED147A 		vstr.32	s15, [r4, #80]
 1262 003a FFF7FEFF 		bl	sinf
 1263 003e D4ED0B7A 		vldr.32	s15, [r4, #44]
 1264 0042 39EE679A 		vsub.f32	s18, s18, s15
 1265 0046 68EE008A 		vmul.f32	s17, s16, s0
 1266 004a 29EE2B9A 		vmul.f32	s18, s18, s23
 1267 004e B1EE68AA 		vneg.f32	s20, s17
 1268 0052 84ED17AA 		vstr.32	s20, [r4, #92]
 1269 0056 B0EE490A 		vmov.f32	s0, s18
 1270 005a FFF7FEFF 		bl	cosf
 1271 005e 68EE009A 		vmul.f32	s19, s16, s0
 1272 0062 B0EE490A 		vmov.f32	s0, s18
 1273 0066 C4ED159A 		vstr.32	s19, [r4, #84]
 1274 006a FFF7FEFF 		bl	sinf
 1275 006e 94ED0CBA 		vldr.32	s22, [r4, #48]
 1276 0072 28EE009A 		vmul.f32	s18, s16, s0
 1277 0076 2BEE2BBA 		vmul.f32	s22, s22, s23
 1278 007a F1EE497A 		vneg.f32	s15, s18
 1279 007e C4ED187A 		vstr.32	s15, [r4, #96]
 1280 0082 B0EE4B0A 		vmov.f32	s0, s22
 1281 0086 FFF7FEFF 		bl	sinf
 1282 008a 68EE00BA 		vmul.f32	s23, s16, s0
 1283 008e B0EE4B0A 		vmov.f32	s0, s22
 1284 0092 B1EE6BBA 		vneg.f32	s22, s23
 1285 0096 84ED16BA 		vstr.32	s22, [r4, #88]
 1286 009a FFF7FEFF 		bl	cosf
 1287 009e 28EE000A 		vmul.f32	s0, s16, s0
 1288 00a2 7AEEA95A 		vadd.f32	s11, s21, s19
 1289 00a6 3AEE40AA 		vsub.f32	s20, s20, s0
 1290 00aa 38EEC96A 		vsub.f32	s12, s17, s18
 1291 00ae 3BEEEA5A 		vsub.f32	s10, s23, s21
 1292 00b2 6AEE657A 		vnmul.f32	s15, s20, s11
 1293 00b6 60EE006A 		vmul.f32	s13, s0, s0
 1294 00ba E5EE067A 		vfma.f32	s15, s10, s12
 1295 00be 2046     		mov	r0, r4
 1296 00c0 01A9     		add	r1, sp, #4
 1297 00c2 29EE097A 		vmul.f32	s14, s18, s18
 1298 00c6 68EEA88A 		vmul.f32	s17, s17, s17
 1299 00ca 94ED088A 		vldr.32	s16, [r4, #32]
 1300 00ce 84ED190A 		vstr.32	s0, [r4, #100]
 1301 00d2 EBEEAB6A 		vfma.f32	s13, s23, s23
 1302 00d6 77EEA77A 		vadd.f32	s15, s15, s15
 1303 00da A9EEA97A 		vfma.f32	s14, s19, s19
 1304 00de EAEEAA8A 		vfma.f32	s17, s21, s21
 1305 00e2 27EEA74A 		vmul.f32	s8, s15, s15
 1306 00e6 68EE084A 		vmul.f32	s9, s16, s16
 1307 00ea 39EE009A 		vadd.f32	s18, s18, s0
 1308 00ee 7BEE699A 		vsub.f32	s19, s22, s19
 1309 00f2 C4ED246A 		vstr.32	s13, [r4, #144]
 1310 00f6 C4ED257A 		vstr.32	s15, [r4, #148]
 1311 00fa 84ED237A 		vstr.32	s14, [r4, #140]
ARM GAS  /tmp/cc6jfxXH.s 			page 24


 1312 00fe B0EE481A 		vmov.f32	s2, s16
 1313 0102 F0EE480A 		vmov.f32	s1, s16
 1314 0106 B0EE480A 		vmov.f32	s0, s16
 1315 010a 84ED20AA 		vstr.32	s20, [r4, #128]
 1316 010e C4ED1C9A 		vstr.32	s19, [r4, #112]
 1317 0112 84ED1F9A 		vstr.32	s18, [r4, #124]
 1318 0116 84ED1D5A 		vstr.32	s10, [r4, #116]
 1319 011a C4ED1E5A 		vstr.32	s11, [r4, #120]
 1320 011e 84ED264A 		vstr.32	s8, [r4, #152]
 1321 0122 84ED216A 		vstr.32	s12, [r4, #132]
 1322 0126 C4ED228A 		vstr.32	s17, [r4, #136]
 1323 012a C4ED274A 		vstr.32	s9, [r4, #156]
 1324 012e FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 1325 0132 D4ED116A 		vldr.32	s13, [r4, #68]
 1326 0136 9DED037A 		vldr.32	s14, [sp, #12]
 1327 013a D4ED107A 		vldr.32	s15, [r4, #64]
 1328 013e 38EE268A 		vadd.f32	s16, s16, s13
 1329 0142 67EEA77A 		vmul.f32	s15, s15, s15
 1330 0146 38EE478A 		vsub.f32	s16, s16, s14
 1331 014a C4ED1A7A 		vstr.32	s15, [r4, #104]
 1332 014e 84ED1B8A 		vstr.32	s16, [r4, #108]
 1333 0152 04B0     		add	sp, sp, #16
 1334              		@ sp needed
 1335 0154 BDEC088B 		vldm	sp!, {d8-d11}
 1336 0158 10BD     		pop	{r4, pc}
 1337              	.L156:
 1338 015a 00BF     		.align	2
 1339              	.L155:
 1340 015c 35FA8E3C 		.word	1016003125
 1341              		.size	_ZN21LinearDeltaKinematics6RecalcEv, .-_ZN21LinearDeltaKinematics6RecalcEv
 1342              		.section	.text._ZN21LinearDeltaKinematics4InitEv,"ax",%progbits
 1343              		.align	1
 1344              		.p2align 2,,3
 1345              		.global	_ZN21LinearDeltaKinematics4InitEv
 1346              		.syntax unified
 1347              		.thumb
 1348              		.thumb_func
 1349              		.fpu fpv4-sp-d16
 1350              		.type	_ZN21LinearDeltaKinematics4InitEv, %function
 1351              	_ZN21LinearDeltaKinematics4InitEv:
 1352              		@ args = 0, pretend = 0, frame = 0
 1353              		@ frame_needed = 0, uses_anonymous_args = 0
 1354 0000 0268     		ldr	r2, [r0]
 1355 0002 0169     		ldr	r1, [r0, #16]	@ float
 1356 0004 126C     		ldr	r2, [r2, #64]
 1357 0006 38B5     		push	{r3, r4, r5, lr}
 1358 0008 0162     		str	r1, [r0, #32]	@ float
 1359 000a C169     		ldr	r1, [r0, #28]	@ float
 1360 000c 4164     		str	r1, [r0, #68]	@ float
 1361 000e 0021     		movs	r1, #0
 1362 0010 8569     		ldr	r5, [r0, #24]	@ float
 1363 0012 80F8A010 		strb	r1, [r0, #160]
 1364 0016 1349     		ldr	r1, .L162
 1365 0018 4369     		ldr	r3, [r0, #20]	@ float
 1366 001a 0564     		str	r5, [r0, #64]	@ float
 1367 001c 124D     		ldr	r5, .L162+4
 1368 001e 4362     		str	r3, [r0, #36]	@ float
ARM GAS  /tmp/cc6jfxXH.s 			page 25


 1369 0020 8A42     		cmp	r2, r1
 1370 0022 4FF00003 		mov	r3, #0
 1371 0026 0446     		mov	r4, r0
 1372 0028 C364     		str	r3, [r0, #76]	@ float
 1373 002a 8364     		str	r3, [r0, #72]	@ float
 1374 002c 8362     		str	r3, [r0, #40]	@ float
 1375 002e 4363     		str	r3, [r0, #52]	@ float
 1376 0030 C365     		str	r3, [r0, #92]	@ float
 1377 0032 0365     		str	r3, [r0, #80]	@ float
 1378 0034 C362     		str	r3, [r0, #44]	@ float
 1379 0036 8363     		str	r3, [r0, #56]	@ float
 1380 0038 0366     		str	r3, [r0, #96]	@ float
 1381 003a 4365     		str	r3, [r0, #84]	@ float
 1382 003c 0363     		str	r3, [r0, #48]	@ float
 1383 003e C363     		str	r3, [r0, #60]	@ float
 1384 0040 4366     		str	r3, [r0, #100]	@ float
 1385 0042 8365     		str	r3, [r0, #88]	@ float
 1386 0044 2D69     		ldr	r5, [r5, #16]
 1387 0046 09D1     		bne	.L161
 1388 0048 0849     		ldr	r1, .L162+8
 1389              	.L158:
 1390 004a 2846     		mov	r0, r5
 1391 004c 0322     		movs	r2, #3
 1392 004e FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 1393 0052 2046     		mov	r0, r4
 1394 0054 BDE83840 		pop	{r3, r4, r5, lr}
 1395 0058 FFF7FEBF 		b	_ZN21LinearDeltaKinematics6RecalcEv
 1396              	.L161:
 1397 005c 9047     		blx	r2
 1398 005e 0146     		mov	r1, r0
 1399 0060 F3E7     		b	.L158
 1400              	.L163:
 1401 0062 00BF     		.align	2
 1402              	.L162:
 1403 0064 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 1404 0068 00000000 		.word	reprap
 1405 006c 00000000 		.word	.LC1
 1406              		.size	_ZN21LinearDeltaKinematics4InitEv, .-_ZN21LinearDeltaKinematics4InitEv
 1407              		.section	.text._ZN21LinearDeltaKinematicsC2Ev,"ax",%progbits
 1408              		.align	1
 1409              		.p2align 2,,3
 1410              		.global	_ZN21LinearDeltaKinematicsC2Ev
 1411              		.syntax unified
 1412              		.thumb
 1413              		.thumb_func
 1414              		.fpu fpv4-sp-d16
 1415              		.type	_ZN21LinearDeltaKinematicsC2Ev, %function
 1416              	_ZN21LinearDeltaKinematicsC2Ev:
 1417              		@ args = 0, pretend = 0, frame = 0
 1418              		@ frame_needed = 0, uses_anonymous_args = 0
 1419 0000 38B5     		push	{r3, r4, r5, lr}
 1420 0002 DFED0C0A 		vldr.32	s1, .L166
 1421 0006 0C4D     		ldr	r5, .L166+4
 1422 0008 0446     		mov	r4, r0
 1423 000a BFEE000A 		vmov.f32	s0, #-1.0e+0
 1424 000e 0122     		movs	r2, #1
 1425 0010 0321     		movs	r1, #3
ARM GAS  /tmp/cc6jfxXH.s 			page 26


 1426 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffb
 1427 0016 0949     		ldr	r1, .L166+8
 1428 0018 094A     		ldr	r2, .L166+12
 1429 001a 0A4B     		ldr	r3, .L166+16
 1430 001c 0A48     		ldr	r0, .L166+20
 1431 001e 2061     		str	r0, [r4, #16]	@ float
 1432 0020 2560     		str	r5, [r4]
 1433 0022 2046     		mov	r0, r4
 1434 0024 6161     		str	r1, [r4, #20]	@ float
 1435 0026 A261     		str	r2, [r4, #24]	@ float
 1436 0028 E361     		str	r3, [r4, #28]	@ float
 1437 002a FFF7FEFF 		bl	_ZN21LinearDeltaKinematics4InitEv
 1438 002e 2046     		mov	r0, r4
 1439 0030 38BD     		pop	{r3, r4, r5, pc}
 1440              	.L167:
 1441 0032 00BF     		.align	2
 1442              	.L166:
 1443 0034 00000000 		.word	0
 1444 0038 08000000 		.word	.LANCHOR0+8
 1445 003c 3333D342 		.word	1121137459
 1446 0040 0000A042 		.word	1117782016
 1447 0044 00007043 		.word	1131413504
 1448 0048 00005743 		.word	1129775104
 1449              		.size	_ZN21LinearDeltaKinematicsC2Ev, .-_ZN21LinearDeltaKinematicsC2Ev
 1450              		.global	_ZN21LinearDeltaKinematicsC1Ev
 1451              		.thumb_set _ZN21LinearDeltaKinematicsC1Ev,_ZN21LinearDeltaKinematicsC2Ev
 1452              		.section	.text._ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21LinearDel
 1453              		.align	1
 1454              		.p2align 2,,3
 1455              		.weak	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv
 1456              		.syntax unified
 1457              		.thumb
 1458              		.thumb_func
 1459              		.fpu fpv4-sp-d16
 1460              		.type	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv, %function
 1461              	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv:
 1462              		@ args = 0, pretend = 0, frame = 0
 1463              		@ frame_needed = 0, uses_anonymous_args = 0
 1464              		@ link register save eliminated.
 1465 0000 FFF7FEBF 		b	_ZN21LinearDeltaKinematics4InitEv
 1466              		.size	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv, .-_ZN21LinearDeltaKinematics22SetCalib
 1467              		.global	__aeabi_f2d
 1468              		.section	.text._ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1469              		.align	1
 1470              		.p2align 2,,3
 1471              		.global	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1472              		.syntax unified
 1473              		.thumb
 1474              		.thumb_func
 1475              		.fpu fpv4-sp-d16
 1476              		.type	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1477              	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1478              		@ args = 4, pretend = 0, frame = 0
 1479              		@ frame_needed = 0, uses_anonymous_args = 0
 1480 0000 2DE9F04D 		push	{r4, r5, r6, r7, r8, r10, fp, lr}
 1481 0004 2DED028B 		vpush.64	{d8}
 1482 0008 40F29927 		movw	r7, #665
ARM GAS  /tmp/cc6jfxXH.s 			page 27


 1483 000c B942     		cmp	r1, r7
 1484 000e 8CB0     		sub	sp, sp, #48
 1485 0010 0546     		mov	r5, r0
 1486 0012 1446     		mov	r4, r2
 1487 0014 9846     		mov	r8, r3
 1488 0016 64D0     		beq	.L171
 1489 0018 40F29A27 		movw	r7, #666
 1490 001c B942     		cmp	r1, r7
 1491 001e 59D1     		bne	.L217
 1492 0020 5821     		movs	r1, #88
 1493 0022 1046     		mov	r0, r2
 1494 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1495 0028 0646     		mov	r6, r0
 1496 002a 0028     		cmp	r0, #0
 1497 002c 40F00C81 		bne	.L218
 1498              	.L184:
 1499 0030 5921     		movs	r1, #89
 1500 0032 2046     		mov	r0, r4
 1501 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1502 0038 0746     		mov	r7, r0
 1503 003a 0028     		cmp	r0, #0
 1504 003c 40F0FD80 		bne	.L219
 1505              	.L185:
 1506 0040 5A21     		movs	r1, #90
 1507 0042 2046     		mov	r0, r4
 1508 0044 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1509 0048 0746     		mov	r7, r0
 1510 004a 0028     		cmp	r0, #0
 1511 004c 40F0EE80 		bne	.L220
 1512              	.L186:
 1513 0050 4121     		movs	r1, #65
 1514 0052 2046     		mov	r0, r4
 1515 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1516 0058 0028     		cmp	r0, #0
 1517 005a 40F0C080 		bne	.L221
 1518 005e 4221     		movs	r1, #66
 1519 0060 2046     		mov	r0, r4
 1520 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1521 0066 0028     		cmp	r0, #0
 1522 0068 40F0C780 		bne	.L188
 1523 006c 002E     		cmp	r6, #0
 1524 006e 40F0CF80 		bne	.L189
 1525 0072 686B     		ldr	r0, [r5, #52]	@ float
 1526 0074 9FED958A 		vldr.32	s16, .L228
 1527 0078 FFF7FEFF 		bl	__aeabi_f2d
 1528 007c D5ED137A 		vldr.32	s15, [r5, #76]
 1529 0080 67EE887A 		vmul.f32	s15, s15, s16
 1530 0084 8246     		mov	r10, r0
 1531 0086 17EE900A 		vmov	r0, s15
 1532 008a 8B46     		mov	fp, r1
 1533 008c FFF7FEFF 		bl	__aeabi_f2d
 1534 0090 D5ED127A 		vldr.32	s15, [r5, #72]
 1535 0094 67EE887A 		vmul.f32	s15, s15, s16
 1536 0098 CDE90601 		strd	r0, [sp, #24]
 1537 009c 17EE900A 		vmov	r0, s15
 1538 00a0 FFF7FEFF 		bl	__aeabi_f2d
 1539 00a4 CDE90401 		strd	r0, [sp, #16]
ARM GAS  /tmp/cc6jfxXH.s 			page 28


 1540 00a8 E86B     		ldr	r0, [r5, #60]	@ float
 1541 00aa FFF7FEFF 		bl	__aeabi_f2d
 1542 00ae CDE90201 		strd	r0, [sp, #8]
 1543 00b2 A86B     		ldr	r0, [r5, #56]	@ float
 1544 00b4 FFF7FEFF 		bl	__aeabi_f2d
 1545 00b8 5246     		mov	r2, r10
 1546 00ba CDE90001 		strd	r0, [sp]
 1547 00be 5B46     		mov	r3, fp
 1548 00c0 4046     		mov	r0, r8
 1549 00c2 8349     		ldr	r1, .L228+4
 1550 00c4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1551              	.L183:
 1552 00c8 3046     		mov	r0, r6
 1553 00ca 0CB0     		add	sp, sp, #48
 1554              		@ sp needed
 1555 00cc BDEC028B 		vldm	sp!, {d8}
 1556 00d0 BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 1557              	.L217:
 1558 00d4 0CB0     		add	sp, sp, #48
 1559              		@ sp needed
 1560 00d6 BDEC028B 		vldm	sp!, {d8}
 1561 00da BDE8F04D 		pop	{r4, r5, r6, r7, r8, r10, fp, lr}
 1562 00de FFF7FEBF 		b	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1563              	.L171:
 1564 00e2 4C21     		movs	r1, #76
 1565 00e4 1046     		mov	r0, r2
 1566 00e6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1567 00ea 0646     		mov	r6, r0
 1568 00ec 0028     		cmp	r0, #0
 1569 00ee 40F0E680 		bne	.L222
 1570              	.L173:
 1571 00f2 5221     		movs	r1, #82
 1572 00f4 2046     		mov	r0, r4
 1573 00f6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1574 00fa 0746     		mov	r7, r0
 1575 00fc 0028     		cmp	r0, #0
 1576 00fe 40F0D780 		bne	.L223
 1577              	.L174:
 1578 0102 4221     		movs	r1, #66
 1579 0104 2046     		mov	r0, r4
 1580 0106 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1581 010a 0746     		mov	r7, r0
 1582 010c 0028     		cmp	r0, #0
 1583 010e 40F0A880 		bne	.L224
 1584              	.L175:
 1585 0112 5821     		movs	r1, #88
 1586 0114 2046     		mov	r0, r4
 1587 0116 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1588 011a 0746     		mov	r7, r0
 1589 011c 0028     		cmp	r0, #0
 1590 011e 40F09980 		bne	.L225
 1591              	.L176:
 1592 0122 5921     		movs	r1, #89
 1593 0124 2046     		mov	r0, r4
 1594 0126 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1595 012a 0746     		mov	r7, r0
 1596 012c 0028     		cmp	r0, #0
ARM GAS  /tmp/cc6jfxXH.s 			page 29


 1597 012e 76D1     		bne	.L226
 1598              	.L177:
 1599 0130 5A21     		movs	r1, #90
 1600 0132 2046     		mov	r0, r4
 1601 0134 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1602 0138 0028     		cmp	r0, #0
 1603 013a 31D1     		bne	.L227
 1604 013c 4821     		movs	r1, #72
 1605 013e 2046     		mov	r0, r4
 1606 0140 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1607 0144 0028     		cmp	r0, #0
 1608 0146 35D1     		bne	.L179
 1609 0148 002E     		cmp	r6, #0
 1610 014a 3ED1     		bne	.L180
 1611 014c 286A     		ldr	r0, [r5, #32]	@ float
 1612 014e FFF7FEFF 		bl	__aeabi_f2d
 1613 0152 8246     		mov	r10, r0
 1614 0154 286B     		ldr	r0, [r5, #48]	@ float
 1615 0156 8B46     		mov	fp, r1
 1616 0158 FFF7FEFF 		bl	__aeabi_f2d
 1617 015c CDE90A01 		strd	r0, [sp, #40]
 1618 0160 E86A     		ldr	r0, [r5, #44]	@ float
 1619 0162 FFF7FEFF 		bl	__aeabi_f2d
 1620 0166 CDE90801 		strd	r0, [sp, #32]
 1621 016a A86A     		ldr	r0, [r5, #40]	@ float
 1622 016c FFF7FEFF 		bl	__aeabi_f2d
 1623 0170 CDE90601 		strd	r0, [sp, #24]
 1624 0174 286C     		ldr	r0, [r5, #64]	@ float
 1625 0176 FFF7FEFF 		bl	__aeabi_f2d
 1626 017a CDE90401 		strd	r0, [sp, #16]
 1627 017e 686C     		ldr	r0, [r5, #68]	@ float
 1628 0180 FFF7FEFF 		bl	__aeabi_f2d
 1629 0184 CDE90201 		strd	r0, [sp, #8]
 1630 0188 686A     		ldr	r0, [r5, #36]	@ float
 1631 018a FFF7FEFF 		bl	__aeabi_f2d
 1632 018e 5246     		mov	r2, r10
 1633 0190 CDE90001 		strd	r0, [sp]
 1634 0194 5B46     		mov	r3, fp
 1635 0196 4046     		mov	r0, r8
 1636 0198 4E49     		ldr	r1, .L228+8
 1637 019a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1638 019e 93E7     		b	.L183
 1639              	.L227:
 1640 01a0 2046     		mov	r0, r4
 1641 01a2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1642 01a6 4821     		movs	r1, #72
 1643 01a8 85ED0C0A 		vstr.32	s0, [r5, #48]
 1644 01ac 2046     		mov	r0, r4
 1645 01ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1646 01b2 50B1     		cbz	r0, .L180
 1647              	.L179:
 1648 01b4 2046     		mov	r0, r4
 1649 01b6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1650 01ba 474B     		ldr	r3, .L228+12
 1651 01bc 85ED110A 		vstr.32	s0, [r5, #68]
 1652 01c0 1868     		ldr	r0, [r3]
 1653 01c2 0022     		movs	r2, #0
ARM GAS  /tmp/cc6jfxXH.s 			page 30


 1654 01c4 0221     		movs	r1, #2
 1655 01c6 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1656              	.L180:
 1657 01ca 2846     		mov	r0, r5
 1658 01cc FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1659 01d0 0126     		movs	r6, #1
 1660 01d2 3046     		mov	r0, r6
 1661 01d4 0CB0     		add	sp, sp, #48
 1662              		@ sp needed
 1663 01d6 BDEC028B 		vldm	sp!, {d8}
 1664 01da BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 1665              	.L221:
 1666 01de 2046     		mov	r0, r4
 1667 01e0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1668 01e4 DFED3D7A 		vldr.32	s15, .L228+16
 1669 01e8 20EE270A 		vmul.f32	s0, s0, s15
 1670 01ec 4221     		movs	r1, #66
 1671 01ee 85ED120A 		vstr.32	s0, [r5, #72]
 1672 01f2 2046     		mov	r0, r4
 1673 01f4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1674 01f8 50B1     		cbz	r0, .L189
 1675              	.L188:
 1676 01fa 2046     		mov	r0, r4
 1677 01fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1678 0200 DFED367A 		vldr.32	s15, .L228+16
 1679 0204 20EE270A 		vmul.f32	s0, s0, s15
 1680 0208 0126     		movs	r6, #1
 1681 020a 85ED130A 		vstr.32	s0, [r5, #76]
 1682 020e 5BE7     		b	.L183
 1683              	.L189:
 1684 0210 0126     		movs	r6, #1
 1685 0212 3046     		mov	r0, r6
 1686 0214 0CB0     		add	sp, sp, #48
 1687              		@ sp needed
 1688 0216 BDEC028B 		vldm	sp!, {d8}
 1689 021a BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 1690              	.L226:
 1691 021e 2046     		mov	r0, r4
 1692 0220 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1693 0224 3E46     		mov	r6, r7
 1694 0226 85ED0B0A 		vstr.32	s0, [r5, #44]
 1695 022a 81E7     		b	.L177
 1696              	.L220:
 1697 022c 2046     		mov	r0, r4
 1698 022e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1699 0232 3E46     		mov	r6, r7
 1700 0234 85ED0F0A 		vstr.32	s0, [r5, #60]
 1701 0238 0AE7     		b	.L186
 1702              	.L219:
 1703 023a 2046     		mov	r0, r4
 1704 023c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1705 0240 3E46     		mov	r6, r7
 1706 0242 85ED0E0A 		vstr.32	s0, [r5, #56]
 1707 0246 FBE6     		b	.L185
 1708              	.L218:
 1709 0248 2046     		mov	r0, r4
 1710 024a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
ARM GAS  /tmp/cc6jfxXH.s 			page 31


 1711 024e 85ED0D0A 		vstr.32	s0, [r5, #52]
 1712 0252 EDE6     		b	.L184
 1713              	.L225:
 1714 0254 2046     		mov	r0, r4
 1715 0256 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1716 025a 3E46     		mov	r6, r7
 1717 025c 85ED0A0A 		vstr.32	s0, [r5, #40]
 1718 0260 5FE7     		b	.L176
 1719              	.L224:
 1720 0262 2046     		mov	r0, r4
 1721 0264 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1722 0268 1B4B     		ldr	r3, .L228+12
 1723 026a 85ED100A 		vstr.32	s0, [r5, #64]
 1724 026e 1E68     		ldr	r6, [r3]
 1725 0270 0022     		movs	r2, #0
 1726 0272 3046     		mov	r0, r6
 1727 0274 1146     		mov	r1, r2
 1728 0276 B1EE400A 		vneg.f32	s0, s0
 1729 027a FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 1730 027e 95ED100A 		vldr.32	s0, [r5, #64]
 1731 0282 3046     		mov	r0, r6
 1732 0284 B1EE400A 		vneg.f32	s0, s0
 1733 0288 0022     		movs	r2, #0
 1734 028a 0121     		movs	r1, #1
 1735 028c FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 1736 0290 0022     		movs	r2, #0
 1737 0292 3046     		mov	r0, r6
 1738 0294 1146     		mov	r1, r2
 1739 0296 95ED100A 		vldr.32	s0, [r5, #64]
 1740 029a FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1741 029e 3046     		mov	r0, r6
 1742 02a0 0022     		movs	r2, #0
 1743 02a2 95ED100A 		vldr.32	s0, [r5, #64]
 1744 02a6 0121     		movs	r1, #1
 1745 02a8 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1746 02ac 3E46     		mov	r6, r7
 1747 02ae 30E7     		b	.L175
 1748              	.L223:
 1749 02b0 2046     		mov	r0, r4
 1750 02b2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1751 02b6 3E46     		mov	r6, r7
 1752 02b8 85ED090A 		vstr.32	s0, [r5, #36]
 1753 02bc 21E7     		b	.L174
 1754              	.L222:
 1755 02be 2046     		mov	r0, r4
 1756 02c0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1757 02c4 85ED080A 		vstr.32	s0, [r5, #32]
 1758 02c8 13E7     		b	.L173
 1759              	.L229:
 1760 02ca 00BF     		.align	2
 1761              	.L228:
 1762 02cc 0000C842 		.word	1120403456
 1763 02d0 64000000 		.word	.LC6
 1764 02d4 00000000 		.word	.LC5
 1765 02d8 00000000 		.word	reprap
 1766 02dc 0AD7233C 		.word	1008981770
 1767              		.size	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21LinearDeltaKinema
ARM GAS  /tmp/cc6jfxXH.s 			page 32


 1768              		.section	.text._ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 1769              		.align	1
 1770              		.p2align 2,,3
 1771              		.global	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf
 1772              		.syntax unified
 1773              		.thumb
 1774              		.thumb_func
 1775              		.fpu fpv4-sp-d16
 1776              		.type	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 1777              	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 1778              		@ args = 8, pretend = 0, frame = 0
 1779              		@ frame_needed = 0, uses_anonymous_args = 0
 1780 0000 D1ED027A 		vldr.32	s15, [r1, #8]	@ int
 1781 0004 92ED021A 		vldr.32	s2, [r2, #8]
 1782 0008 D2ED010A 		vldr.32	s1, [r2, #4]
 1783 000c 92ED000A 		vldr.32	s0, [r2]
 1784 0010 F8EEE76A 		vcvt.f32.s32	s13, s15
 1785 0014 D1ED017A 		vldr.32	s15, [r1, #4]	@ int
 1786 0018 B8EEE77A 		vcvt.f32.s32	s14, s15
 1787 001c D1ED007A 		vldr.32	s15, [r1]	@ int
 1788 0020 F8EEE77A 		vcvt.f32.s32	s15, s15
 1789 0024 70B5     		push	{r4, r5, r6, lr}
 1790 0026 86EE811A 		vdiv.f32	s2, s13, s2
 1791 002a 1E46     		mov	r6, r3
 1792 002c 0C46     		mov	r4, r1
 1793 002e 0599     		ldr	r1, [sp, #20]
 1794 0030 1546     		mov	r5, r2
 1795 0032 C7EE200A 		vdiv.f32	s1, s14, s1
 1796 0036 87EE800A 		vdiv.f32	s0, s15, s0
 1797 003a FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 1798 003e 032E     		cmp	r6, #3
 1799 0040 16D9     		bls	.L230
 1800 0042 059B     		ldr	r3, [sp, #20]
 1801 0044 04EB8600 		add	r0, r4, r6, lsl #2
 1802 0048 0438     		subs	r0, r0, #4
 1803 004a 04F10801 		add	r1, r4, #8
 1804 004e 05F10C02 		add	r2, r5, #12
 1805 0052 0C33     		adds	r3, r3, #12
 1806              	.L232:
 1807 0054 51F8044F 		ldr	r4, [r1, #4]!
 1808 0058 F2EC016A 		vldmia.32	r2!, {s13}
 1809 005c 07EE904A 		vmov	s15, r4	@ int
 1810 0060 F8EEE77A 		vcvt.f32.s32	s15, s15
 1811 0064 8142     		cmp	r1, r0
 1812 0066 87EEA67A 		vdiv.f32	s14, s15, s13
 1813 006a A3EC017A 		vstmia.32	r3!, {s14}
 1814 006e F1D1     		bne	.L232
 1815              	.L230:
 1816 0070 70BD     		pop	{r4, r5, r6, pc}
 1817              		.size	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21LinearDeltaKinematics
 1818              		.global	__aeabi_dsub
 1819              		.global	__aeabi_ddiv
 1820 0072 00BF     		.section	.text._ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff,"ax",%progbits
 1821              		.align	1
 1822              		.p2align 2,,3
 1823              		.global	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff
 1824              		.syntax unified
ARM GAS  /tmp/cc6jfxXH.s 			page 33


 1825              		.thumb
 1826              		.thumb_func
 1827              		.fpu fpv4-sp-d16
 1828              		.type	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff, %function
 1829              	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff:
 1830              		@ args = 0, pretend = 0, frame = 344
 1831              		@ frame_needed = 0, uses_anonymous_args = 0
 1832 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1833 0004 00F12807 		add	r7, r0, #40
 1834 0008 2DED088B 		vpush.64	{d8, d9, d10, d11}
 1835 000c 0446     		mov	r4, r0
 1836 000e 8846     		mov	r8, r1
 1837 0010 97E80700 		ldm	r7, {r0, r1, r2}
 1838 0014 D7B0     		sub	sp, sp, #348
 1839 0016 04F13406 		add	r6, r4, #52
 1840 001a 0EAB     		add	r3, sp, #56
 1841 001c 83E80700 		stm	r3, {r0, r1, r2}
 1842 0020 96E80700 		ldm	r6, {r0, r1, r2}
 1843 0024 94ED016A 		vldr.32	s12, [r4, #4]
 1844 0028 D4ED026A 		vldr.32	s13, [r4, #8]
 1845 002c 94ED059A 		vldr.32	s18, [r4, #20]
 1846 0030 D4ED068A 		vldr.32	s17, [r4, #24]
 1847 0034 94ED078A 		vldr.32	s16, [r4, #28]
 1848 0038 D4ED04BA 		vldr.32	s23, [r4, #16]
 1849 003c D4ED087A 		vldr.32	s15, [r4, #32]
 1850 0040 94ED097A 		vldr.32	s14, [r4, #36]
 1851 0044 94F80CB0 		ldrb	fp, [r4, #12]	@ zero_extendqisi2
 1852 0048 94F80DA0 		ldrb	r10, [r4, #13]	@ zero_extendqisi2
 1853 004c 94F80E90 		ldrb	r9, [r4, #14]	@ zero_extendqisi2
 1854 0050 8DED056A 		vstr.32	s12, [sp, #20]
 1855 0054 04F15005 		add	r5, r4, #80
 1856 0058 11AB     		add	r3, sp, #68
 1857 005a CDED066A 		vstr.32	s13, [sp, #24]
 1858 005e 8DED099A 		vstr.32	s18, [sp, #36]
 1859 0062 CDED0A8A 		vstr.32	s17, [sp, #40]
 1860 0066 8DED0B8A 		vstr.32	s16, [sp, #44]
 1861 006a 8DF81CB0 		strb	fp, [sp, #28]
 1862 006e 8DF81DA0 		strb	r10, [sp, #29]
 1863 0072 CDED08BA 		vstr.32	s23, [sp, #32]
 1864 0076 CDED0C7A 		vstr.32	s15, [sp, #48]
 1865 007a 8DED0D7A 		vstr.32	s14, [sp, #52]
 1866 007e 8DF81E90 		strb	r9, [sp, #30]
 1867 0082 83E80700 		stm	r3, {r0, r1, r2}
 1868 0086 95E80700 		ldm	r5, {r0, r1, r2}
 1869 008a 04F15C03 		add	r3, r4, #92
 1870 008e 0DF1600C 		add	ip, sp, #96
 1871 0092 8CE80700 		stm	ip, {r0, r1, r2}
 1872 0096 93E80700 		ldm	r3, {r0, r1, r2}
 1873 009a 94ED10BA 		vldr.32	s22, [r4, #64]
 1874 009e D4ED11AA 		vldr.32	s21, [r4, #68]
 1875 00a2 94ED12AA 		vldr.32	s20, [r4, #72]
 1876 00a6 D4ED139A 		vldr.32	s19, [r4, #76]
 1877 00aa D4ED1A1A 		vldr.32	s3, [r4, #104]
 1878 00ae 94ED1B2A 		vldr.32	s4, [r4, #108]
 1879 00b2 D4ED1C2A 		vldr.32	s5, [r4, #112]
 1880 00b6 94ED1D3A 		vldr.32	s6, [r4, #116]
 1881 00ba DFF808E3 		ldr	lr, .L256+12
ARM GAS  /tmp/cc6jfxXH.s 			page 34


 1882 00be D4ED1E3A 		vldr.32	s7, [r4, #120]
 1883 00c2 CDF810E0 		str	lr, [sp, #16]
 1884 00c6 0DF16C0C 		add	ip, sp, #108
 1885 00ca 8CE80700 		stm	ip, {r0, r1, r2}
 1886 00ce 8DED14BA 		vstr.32	s22, [sp, #80]
 1887 00d2 CDED15AA 		vstr.32	s21, [sp, #84]
 1888 00d6 8DED16AA 		vstr.32	s20, [sp, #88]
 1889 00da CDED179A 		vstr.32	s19, [sp, #92]
 1890 00de CDED1E1A 		vstr.32	s3, [sp, #120]
 1891 00e2 8DED1F2A 		vstr.32	s4, [sp, #124]
 1892 00e6 CDED202A 		vstr.32	s5, [sp, #128]
 1893 00ea 8DED213A 		vstr.32	s6, [sp, #132]
 1894 00ee 94ED1F4A 		vldr.32	s8, [r4, #124]
 1895 00f2 D4ED204A 		vldr.32	s9, [r4, #128]
 1896 00f6 94ED215A 		vldr.32	s10, [r4, #132]
 1897 00fa D4ED225A 		vldr.32	s11, [r4, #136]
 1898 00fe 8DED2E6A 		vstr.32	s12, [sp, #184]
 1899 0102 CDED2F6A 		vstr.32	s13, [sp, #188]
 1900 0106 94ED236A 		vldr.32	s12, [r4, #140]
 1901 010a D4ED246A 		vldr.32	s13, [r4, #144]
 1902 010e 8DF8C0B0 		strb	fp, [sp, #192]
 1903 0112 8DF8C1A0 		strb	r10, [sp, #193]
 1904 0116 D4F894B0 		ldr	fp, [r4, #148]	@ float
 1905 011a D4F898A0 		ldr	r10, [r4, #152]	@ float
 1906 011e 8DF8C290 		strb	r9, [sp, #194]
 1907 0122 94F8A0C0 		ldrb	ip, [r4, #160]	@ zero_extendqisi2
 1908 0126 D4F89C90 		ldr	r9, [r4, #156]	@ float
 1909 012a 8DED329A 		vstr.32	s18, [sp, #200]
 1910 012e CDED338A 		vstr.32	s17, [sp, #204]
 1911 0132 8DED348A 		vstr.32	s16, [sp, #208]
 1912 0136 CDED223A 		vstr.32	s7, [sp, #136]
 1913 013a 8DED234A 		vstr.32	s8, [sp, #140]
 1914 013e CDED31BA 		vstr.32	s23, [sp, #196]
 1915 0142 CDED357A 		vstr.32	s15, [sp, #212]
 1916 0146 8DED367A 		vstr.32	s14, [sp, #216]
 1917 014a CDF8B4E0 		str	lr, [sp, #180]
 1918 014e CDED244A 		vstr.32	s9, [sp, #144]
 1919 0152 8DED255A 		vstr.32	s10, [sp, #148]
 1920 0156 CDED265A 		vstr.32	s11, [sp, #152]
 1921 015a 8DED276A 		vstr.32	s12, [sp, #156]
 1922 015e CDED286A 		vstr.32	s13, [sp, #160]
 1923 0162 CDF8A4B0 		str	fp, [sp, #164]	@ float
 1924 0166 CDF8A8A0 		str	r10, [sp, #168]	@ float
 1925 016a CDF8AC90 		str	r9, [sp, #172]	@ float
 1926 016e 8DF8B0C0 		strb	ip, [sp, #176]
 1927 0172 97E80700 		ldm	r7, {r0, r1, r2}
 1928 0176 37AF     		add	r7, sp, #220
 1929 0178 87E80700 		stm	r7, {r0, r1, r2}
 1930 017c 96E80700 		ldm	r6, {r0, r1, r2}
 1931 0180 3AAE     		add	r6, sp, #232
 1932 0182 86E80700 		stm	r6, {r0, r1, r2}
 1933 0186 95E80700 		ldm	r5, {r0, r1, r2}
 1934 018a 41AD     		add	r5, sp, #260
 1935 018c 85E80700 		stm	r5, {r0, r1, r2}
 1936 0190 93E80700 		ldm	r3, {r0, r1, r2}
 1937 0194 A8F10305 		sub	r5, r8, #3
 1938 0198 44AB     		add	r3, sp, #272
ARM GAS  /tmp/cc6jfxXH.s 			page 35


 1939 019a 8DED3DBA 		vstr.32	s22, [sp, #244]
 1940 019e CDED3EAA 		vstr.32	s21, [sp, #248]
 1941 01a2 8DED3FAA 		vstr.32	s20, [sp, #252]
 1942 01a6 CDED409A 		vstr.32	s19, [sp, #256]
 1943 01aa CDED471A 		vstr.32	s3, [sp, #284]
 1944 01ae 8DED482A 		vstr.32	s4, [sp, #288]
 1945 01b2 CDED492A 		vstr.32	s5, [sp, #292]
 1946 01b6 8DED4A3A 		vstr.32	s6, [sp, #296]
 1947 01ba 83E80700 		stm	r3, {r0, r1, r2}
 1948 01be B0EE408A 		vmov.f32	s16, s0
 1949 01c2 CDED4B3A 		vstr.32	s7, [sp, #300]
 1950 01c6 F0EE608A 		vmov.f32	s17, s1
 1951 01ca B0EE419A 		vmov.f32	s18, s2
 1952 01ce 8DED4C4A 		vstr.32	s8, [sp, #304]
 1953 01d2 CDED4D4A 		vstr.32	s9, [sp, #308]
 1954 01d6 8DED4E5A 		vstr.32	s10, [sp, #312]
 1955 01da CDED4F5A 		vstr.32	s11, [sp, #316]
 1956 01de 8DED506A 		vstr.32	s12, [sp, #320]
 1957 01e2 CDED516A 		vstr.32	s13, [sp, #324]
 1958 01e6 CDF848B1 		str	fp, [sp, #328]	@ float
 1959 01ea CDF84CA1 		str	r10, [sp, #332]	@ float
 1960 01ee CDF85091 		str	r9, [sp, #336]	@ float
 1961 01f2 8DF854C1 		strb	ip, [sp, #340]
 1962 01f6 032D     		cmp	r5, #3
 1963 01f8 70D8     		bhi	.L236
 1964 01fa DFE805F0 		tbb	[pc, r5]
 1965              	.L238:
 1966 01fe 5E       		.byte	(.L237-.L238)/2
 1967 01ff 38       		.byte	(.L239-.L238)/2
 1968 0200 02       		.byte	(.L240-.L238)/2
 1969 0201 4D       		.byte	(.L241-.L238)/2
 1970              		.p2align 1
 1971              	.L240:
 1972 0202 9DED0F7A 		vldr.32	s14, [sp, #60]
 1973 0206 DFED6E6A 		vldr.32	s13, .L256+8
 1974 020a DDED387A 		vldr.32	s15, [sp, #224]
 1975 020e 37EE267A 		vadd.f32	s14, s14, s13
 1976 0212 77EEE67A 		vsub.f32	s15, s15, s13
 1977 0216 04A8     		add	r0, sp, #16
 1978 0218 8DED0F7A 		vstr.32	s14, [sp, #60]
 1979 021c CDED387A 		vstr.32	s15, [sp, #224]
 1980 0220 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1981 0224 2DA8     		add	r0, sp, #180
 1982 0226 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1983              	.L253:
 1984 022a 01AD     		add	r5, sp, #4
 1985 022c 04A8     		add	r0, sp, #16
 1986 022e 2946     		mov	r1, r5
 1987 0230 B0EE491A 		vmov.f32	s2, s18
 1988 0234 F0EE680A 		vmov.f32	s1, s17
 1989 0238 B0EE480A 		vmov.f32	s0, s16
 1990 023c FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 1991 0240 B8F1070F 		cmp	r8, #7
 1992 0244 40F08A80 		bne	.L244
 1993 0248 D5ED007A 		vldr.32	s15, [r5]
 1994              	.L255:
 1995 024c 94ED107A 		vldr.32	s14, [r4, #64]
ARM GAS  /tmp/cc6jfxXH.s 			page 36


 1996 0250 F1EE677A 		vneg.f32	s15, s15
 1997 0254 C7EE877A 		vdiv.f32	s15, s15, s14
 1998 0258 17EE900A 		vmov	r0, s15
 1999 025c FFF7FEFF 		bl	__aeabi_f2d
 2000 0260 41EC100B 		vmov	d0, r0, r1
 2001 0264 57B0     		add	sp, sp, #348
 2002              		@ sp needed
 2003 0266 BDEC088B 		vldm	sp!, {d8-d11}
 2004 026a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2005              	.L239:
 2006 026e 9DED0E7A 		vldr.32	s14, [sp, #56]
 2007 0272 DFED536A 		vldr.32	s13, .L256+8
 2008 0276 DDED377A 		vldr.32	s15, [sp, #220]
 2009 027a 37EE267A 		vadd.f32	s14, s14, s13
 2010 027e 77EEE67A 		vsub.f32	s15, s15, s13
 2011 0282 04A8     		add	r0, sp, #16
 2012 0284 8DED0E7A 		vstr.32	s14, [sp, #56]
 2013 0288 CDED377A 		vstr.32	s15, [sp, #220]
 2014 028c FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2015 0290 2DA8     		add	r0, sp, #180
 2016 0292 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2017 0296 C8E7     		b	.L253
 2018              	.L241:
 2019 0298 9FED497A 		vldr.32	s14, .L256+8
 2020 029c 77EE876A 		vadd.f32	s13, s15, s14
 2021 02a0 77EEC77A 		vsub.f32	s15, s15, s14
 2022 02a4 04A8     		add	r0, sp, #16
 2023 02a6 CDED0C6A 		vstr.32	s13, [sp, #48]
 2024 02aa CDED357A 		vstr.32	s15, [sp, #212]
 2025 02ae FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2026 02b2 2DA8     		add	r0, sp, #180
 2027 02b4 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2028 02b8 B7E7     		b	.L253
 2029              	.L237:
 2030 02ba DFED417A 		vldr.32	s15, .L256+8
 2031 02be 77EE276A 		vadd.f32	s13, s14, s15
 2032 02c2 37EE677A 		vsub.f32	s14, s14, s15
 2033 02c6 04A8     		add	r0, sp, #16
 2034 02c8 CDED0D6A 		vstr.32	s13, [sp, #52]
 2035 02cc 8DED367A 		vstr.32	s14, [sp, #216]
 2036 02d0 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2037 02d4 2DA8     		add	r0, sp, #180
 2038 02d6 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2039 02da A6E7     		b	.L253
 2040              	.L236:
 2041 02dc B8F1000F 		cmp	r8, #0
 2042 02e0 42D1     		bne	.L243
 2043 02e2 9FED370A 		vldr.32	s0, .L256+8
 2044 02e6 01AD     		add	r5, sp, #4
 2045 02e8 04A8     		add	r0, sp, #16
 2046 02ea 38EE000A 		vadd.f32	s0, s16, s0
 2047 02ee 2946     		mov	r1, r5
 2048 02f0 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 2049              	.L246:
 2050 02f4 AC68     		ldr	r4, [r5, #8]	@ float
 2051 02f6 B8F1000F 		cmp	r8, #0
 2052 02fa 27D1     		bne	.L249
ARM GAS  /tmp/cc6jfxXH.s 			page 37


 2053 02fc DFED307A 		vldr.32	s15, .L256+8
 2054 0300 38EE678A 		vsub.f32	s16, s16, s15
 2055              	.L250:
 2056 0304 F0EE680A 		vmov.f32	s1, s17
 2057 0308 B0EE480A 		vmov.f32	s0, s16
 2058 030c B0EE491A 		vmov.f32	s2, s18
 2059 0310 2946     		mov	r1, r5
 2060 0312 2DA8     		add	r0, sp, #180
 2061 0314 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 2062 0318 2046     		mov	r0, r4	@ float
 2063 031a FFF7FEFF 		bl	__aeabi_f2d
 2064 031e 0646     		mov	r6, r0
 2065 0320 A868     		ldr	r0, [r5, #8]	@ float
 2066 0322 0F46     		mov	r7, r1
 2067 0324 FFF7FEFF 		bl	__aeabi_f2d
 2068 0328 0246     		mov	r2, r0
 2069 032a 0B46     		mov	r3, r1
 2070 032c 3046     		mov	r0, r6
 2071 032e 3946     		mov	r1, r7
 2072 0330 FFF7FEFF 		bl	__aeabi_dsub
 2073 0334 20A3     		adr	r3, .L256
 2074 0336 D3E90023 		ldrd	r2, [r3]
 2075 033a FFF7FEFF 		bl	__aeabi_ddiv
 2076 033e 41EC100B 		vmov	d0, r0, r1
 2077 0342 57B0     		add	sp, sp, #348
 2078              		@ sp needed
 2079 0344 BDEC088B 		vldm	sp!, {d8-d11}
 2080 0348 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2081              	.L249:
 2082 034c B8F1010F 		cmp	r8, #1
 2083 0350 17D1     		bne	.L251
 2084 0352 DFED1B7A 		vldr.32	s15, .L256+8
 2085 0356 78EEE78A 		vsub.f32	s17, s17, s15
 2086 035a D3E7     		b	.L250
 2087              	.L244:
 2088 035c B8F1080F 		cmp	r8, #8
 2089 0360 C8D1     		bne	.L246
 2090 0362 D5ED017A 		vldr.32	s15, [r5, #4]
 2091 0366 71E7     		b	.L255
 2092              	.L243:
 2093 0368 B8F1010F 		cmp	r8, #1
 2094 036c 11D1     		bne	.L245
 2095 036e DFED140A 		vldr.32	s1, .L256+8
 2096 0372 01AD     		add	r5, sp, #4
 2097 0374 04A8     		add	r0, sp, #16
 2098 0376 78EEA00A 		vadd.f32	s1, s17, s1
 2099 037a 2946     		mov	r1, r5
 2100 037c FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 2101 0380 B8E7     		b	.L246
 2102              	.L251:
 2103 0382 B8F1020F 		cmp	r8, #2
 2104 0386 BDD1     		bne	.L250
 2105              	.L247:
 2106 0388 DFED0D7A 		vldr.32	s15, .L256+8
 2107 038c 39EE679A 		vsub.f32	s18, s18, s15
 2108 0390 B8E7     		b	.L250
 2109              	.L245:
ARM GAS  /tmp/cc6jfxXH.s 			page 38


 2110 0392 B8F1020F 		cmp	r8, #2
 2111 0396 7FF448AF 		bne	.L253
 2112 039a 9FED091A 		vldr.32	s2, .L256+8
 2113 039e 01AD     		add	r5, sp, #4
 2114 03a0 04A8     		add	r0, sp, #16
 2115 03a2 39EE011A 		vadd.f32	s2, s18, s2
 2116 03a6 2946     		mov	r1, r5
 2117 03a8 F0EE680A 		vmov.f32	s1, s17
 2118 03ac B0EE480A 		vmov.f32	s0, s16
 2119 03b0 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 2120 03b4 AC68     		ldr	r4, [r5, #8]	@ float
 2121 03b6 E7E7     		b	.L247
 2122              	.L257:
 2123              		.align	3
 2124              	.L256:
 2125 03b8 000000A0 		.word	2684354560
 2126 03bc 9999D93F 		.word	1071225241
 2127 03c0 CDCC4C3E 		.word	1045220557
 2128 03c4 08000000 		.word	.LANCHOR0+8
 2129              		.size	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff, .-_ZNK21LinearDeltaKinematics17ComputeD
 2130              		.global	__aeabi_d2f
 2131              		.section	.text._ZN21LinearDeltaKinematics6AdjustEjPKd,"ax",%progbits
 2132              		.align	1
 2133              		.p2align 2,,3
 2134              		.global	_ZN21LinearDeltaKinematics6AdjustEjPKd
 2135              		.syntax unified
 2136              		.thumb
 2137              		.thumb_func
 2138              		.fpu fpv4-sp-d16
 2139              		.type	_ZN21LinearDeltaKinematics6AdjustEjPKd, %function
 2140              	_ZN21LinearDeltaKinematics6AdjustEjPKd:
 2141              		@ args = 0, pretend = 0, frame = 0
 2142              		@ frame_needed = 0, uses_anonymous_args = 0
 2143 0000 70B5     		push	{r4, r5, r6, lr}
 2144 0002 0446     		mov	r4, r0
 2145 0004 2DED048B 		vpush.64	{d8, d9}
 2146 0008 0E46     		mov	r6, r1
 2147 000a D2E90001 		ldrd	r0, [r2]
 2148 000e 1546     		mov	r5, r2
 2149 0010 FFF7FEFF 		bl	__aeabi_d2f
 2150 0014 08EE900A 		vmov	s17, r0
 2151 0018 D5E90201 		ldrd	r0, [r5, #8]
 2152 001c FFF7FEFF 		bl	__aeabi_d2f
 2153 0020 94ED0E8A 		vldr.32	s16, [r4, #56]
 2154 0024 D4ED0D9A 		vldr.32	s19, [r4, #52]
 2155 0028 94ED1B9A 		vldr.32	s18, [r4, #108]
 2156 002c 07EE900A 		vmov	s15, r0
 2157 0030 D5E90401 		ldrd	r0, [r5, #16]
 2158 0034 37EE888A 		vadd.f32	s16, s15, s16
 2159 0038 FFF7FEFF 		bl	__aeabi_d2f
 2160 003c 78EEA97A 		vadd.f32	s15, s17, s19
 2161 0040 94ED0F6A 		vldr.32	s12, [r4, #60]
 2162 0044 D4ED116A 		vldr.32	s13, [r4, #68]
 2163 0048 07EE100A 		vmov	s14, r0
 2164 004c 77EE885A 		vadd.f32	s11, s15, s16
 2165 0050 37EE066A 		vadd.f32	s12, s14, s12
 2166 0054 B0EE085A 		vmov.f32	s10, #3.0e+0
ARM GAS  /tmp/cc6jfxXH.s 			page 39


 2167 0058 75EE865A 		vadd.f32	s11, s11, s12
 2168 005c 032E     		cmp	r6, #3
 2169 005e 85EE857A 		vdiv.f32	s14, s11, s10
 2170 0062 79EE299A 		vadd.f32	s19, s18, s19
 2171 0066 38EE478A 		vsub.f32	s16, s16, s14
 2172 006a 77EEC77A 		vsub.f32	s15, s15, s14
 2173 006e 36EE476A 		vsub.f32	s12, s12, s14
 2174 0072 77EE266A 		vadd.f32	s13, s14, s13
 2175 0076 37EE097A 		vadd.f32	s14, s14, s18
 2176 007a 84ED0E8A 		vstr.32	s16, [r4, #56]
 2177 007e C4ED0D7A 		vstr.32	s15, [r4, #52]
 2178 0082 84ED0F6A 		vstr.32	s12, [r4, #60]
 2179 0086 C4ED116A 		vstr.32	s13, [r4, #68]
 2180 008a 84ED1B7A 		vstr.32	s14, [r4, #108]
 2181 008e 1CD9     		bls	.L259
 2182 0090 D5E90601 		ldrd	r0, [r5, #24]
 2183 0094 FFF7FEFF 		bl	__aeabi_d2f
 2184 0098 D4ED097A 		vldr.32	s15, [r4, #36]
 2185 009c 07EE100A 		vmov	s14, r0
 2186 00a0 77EE877A 		vadd.f32	s15, s15, s14
 2187 00a4 052E     		cmp	r6, #5
 2188 00a6 C4ED097A 		vstr.32	s15, [r4, #36]
 2189 00aa 1FD8     		bhi	.L270
 2190              	.L261:
 2191 00ac 2046     		mov	r0, r4
 2192 00ae FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2193 00b2 D5E90001 		ldrd	r0, [r5]
 2194 00b6 FFF7FEFF 		bl	__aeabi_d2f
 2195 00ba D4ED116A 		vldr.32	s13, [r4, #68]
 2196 00be 94ED1B7A 		vldr.32	s14, [r4, #108]
 2197 00c2 D4ED0D7A 		vldr.32	s15, [r4, #52]
 2198 00c6 08EE900A 		vmov	s17, r0
 2199              	.L259:
 2200 00ca 77EE277A 		vadd.f32	s15, s14, s15
 2201 00ce 77EEE97A 		vsub.f32	s15, s15, s19
 2202 00d2 77EEE87A 		vsub.f32	s15, s15, s17
 2203 00d6 BDEC048B 		vldm	sp!, {d8-d9}
 2204 00da 76EEE76A 		vsub.f32	s13, s13, s15
 2205 00de 37EE677A 		vsub.f32	s14, s14, s15
 2206 00e2 C4ED116A 		vstr.32	s13, [r4, #68]
 2207 00e6 84ED1B7A 		vstr.32	s14, [r4, #108]
 2208 00ea 70BD     		pop	{r4, r5, r6, pc}
 2209              	.L270:
 2210 00ec D5E90801 		ldrd	r0, [r5, #32]
 2211 00f0 FFF7FEFF 		bl	__aeabi_d2f
 2212 00f4 D4ED0A7A 		vldr.32	s15, [r4, #40]
 2213 00f8 07EE100A 		vmov	s14, r0
 2214 00fc 77EE877A 		vadd.f32	s15, s15, s14
 2215 0100 D5E90A01 		ldrd	r0, [r5, #40]
 2216 0104 C4ED0A7A 		vstr.32	s15, [r4, #40]
 2217 0108 FFF7FEFF 		bl	__aeabi_d2f
 2218 010c D4ED0B7A 		vldr.32	s15, [r4, #44]
 2219 0110 07EE100A 		vmov	s14, r0
 2220 0114 77EE877A 		vadd.f32	s15, s15, s14
 2221 0118 072E     		cmp	r6, #7
 2222 011a C4ED0B7A 		vstr.32	s15, [r4, #44]
 2223 011e 22D0     		beq	.L262
ARM GAS  /tmp/cc6jfxXH.s 			page 40


 2224 0120 092E     		cmp	r6, #9
 2225 0122 2DD0     		beq	.L271
 2226 0124 082E     		cmp	r6, #8
 2227 0126 C1D1     		bne	.L261
 2228 0128 D5E90C01 		ldrd	r0, [r5, #48]
 2229 012c FFF7FEFF 		bl	__aeabi_d2f
 2230 0130 94ED108A 		vldr.32	s16, [r4, #64]
 2231 0134 D4ED127A 		vldr.32	s15, [r4, #72]
 2232 0138 07EE100A 		vmov	s14, r0
 2233 013c 87EE087A 		vdiv.f32	s14, s14, s16
 2234 0140 D5E90E01 		ldrd	r0, [r5, #56]
 2235              	.L269:
 2236 0144 77EE877A 		vadd.f32	s15, s15, s14
 2237 0148 C4ED127A 		vstr.32	s15, [r4, #72]
 2238 014c FFF7FEFF 		bl	__aeabi_d2f
 2239 0150 07EE900A 		vmov	s15, r0
 2240 0154 87EE887A 		vdiv.f32	s14, s15, s16
 2241 0158 D4ED137A 		vldr.32	s15, [r4, #76]
 2242 015c 77EE877A 		vadd.f32	s15, s15, s14
 2243 0160 C4ED137A 		vstr.32	s15, [r4, #76]
 2244 0164 A2E7     		b	.L261
 2245              	.L262:
 2246 0166 D5E90C01 		ldrd	r0, [r5, #48]
 2247 016a FFF7FEFF 		bl	__aeabi_d2f
 2248 016e D4ED087A 		vldr.32	s15, [r4, #32]
 2249 0172 07EE100A 		vmov	s14, r0
 2250 0176 77EE877A 		vadd.f32	s15, s15, s14
 2251 017a C4ED087A 		vstr.32	s15, [r4, #32]
 2252 017e 95E7     		b	.L261
 2253              	.L271:
 2254 0180 D5E90C01 		ldrd	r0, [r5, #48]
 2255 0184 FFF7FEFF 		bl	__aeabi_d2f
 2256 0188 D4ED087A 		vldr.32	s15, [r4, #32]
 2257 018c 94ED108A 		vldr.32	s16, [r4, #64]
 2258 0190 07EE100A 		vmov	s14, r0
 2259 0194 77EE877A 		vadd.f32	s15, s15, s14
 2260 0198 D5E90E01 		ldrd	r0, [r5, #56]
 2261 019c C4ED087A 		vstr.32	s15, [r4, #32]
 2262 01a0 FFF7FEFF 		bl	__aeabi_d2f
 2263 01a4 07EE900A 		vmov	s15, r0
 2264 01a8 D5E91001 		ldrd	r0, [r5, #64]
 2265 01ac 87EE887A 		vdiv.f32	s14, s15, s16
 2266 01b0 D4ED127A 		vldr.32	s15, [r4, #72]
 2267 01b4 C6E7     		b	.L269
 2268              		.size	_ZN21LinearDeltaKinematics6AdjustEjPKd, .-_ZN21LinearDeltaKinematics6AdjustEjPKd
 2269 01b6 00BF     		.section	.text._ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2270              		.align	1
 2271              		.p2align 2,,3
 2272              		.global	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef
 2273              		.syntax unified
 2274              		.thumb
 2275              		.thumb_func
 2276              		.fpu fpv4-sp-d16
 2277              		.type	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef, %function
 2278              	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef:
 2279              		@ args = 0, pretend = 0, frame = 0
 2280              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc6jfxXH.s 			page 41


 2281 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2282 0002 2DED028B 		vpush.64	{d8}
 2283 0006 0446     		mov	r4, r0
 2284 0008 95B0     		sub	sp, sp, #84
 2285 000a 406B     		ldr	r0, [r0, #52]	@ float
 2286 000c 9FED268A 		vldr.32	s16, .L274
 2287 0010 0D46     		mov	r5, r1
 2288 0012 FFF7FEFF 		bl	__aeabi_f2d
 2289 0016 D4ED137A 		vldr.32	s15, [r4, #76]
 2290 001a 67EE887A 		vmul.f32	s15, s15, s16
 2291 001e 0646     		mov	r6, r0
 2292 0020 17EE900A 		vmov	r0, s15
 2293 0024 0F46     		mov	r7, r1
 2294 0026 FFF7FEFF 		bl	__aeabi_f2d
 2295 002a D4ED127A 		vldr.32	s15, [r4, #72]
 2296 002e 67EE887A 		vmul.f32	s15, s15, s16
 2297 0032 CDE91201 		strd	r0, [sp, #72]
 2298 0036 17EE900A 		vmov	r0, s15
 2299 003a FFF7FEFF 		bl	__aeabi_f2d
 2300 003e CDE91001 		strd	r0, [sp, #64]
 2301 0042 206B     		ldr	r0, [r4, #48]	@ float
 2302 0044 FFF7FEFF 		bl	__aeabi_f2d
 2303 0048 CDE90E01 		strd	r0, [sp, #56]
 2304 004c E06A     		ldr	r0, [r4, #44]	@ float
 2305 004e FFF7FEFF 		bl	__aeabi_f2d
 2306 0052 CDE90C01 		strd	r0, [sp, #48]
 2307 0056 A06A     		ldr	r0, [r4, #40]	@ float
 2308 0058 FFF7FEFF 		bl	__aeabi_f2d
 2309 005c CDE90A01 		strd	r0, [sp, #40]
 2310 0060 606A     		ldr	r0, [r4, #36]	@ float
 2311 0062 FFF7FEFF 		bl	__aeabi_f2d
 2312 0066 CDE90801 		strd	r0, [sp, #32]
 2313 006a 206A     		ldr	r0, [r4, #32]	@ float
 2314 006c FFF7FEFF 		bl	__aeabi_f2d
 2315 0070 CDE90601 		strd	r0, [sp, #24]
 2316 0074 606C     		ldr	r0, [r4, #68]	@ float
 2317 0076 FFF7FEFF 		bl	__aeabi_f2d
 2318 007a CDE90401 		strd	r0, [sp, #16]
 2319 007e E06B     		ldr	r0, [r4, #60]	@ float
 2320 0080 FFF7FEFF 		bl	__aeabi_f2d
 2321 0084 CDE90201 		strd	r0, [sp, #8]
 2322 0088 A06B     		ldr	r0, [r4, #56]	@ float
 2323 008a FFF7FEFF 		bl	__aeabi_f2d
 2324 008e 3246     		mov	r2, r6
 2325 0090 CDE90001 		strd	r0, [sp]
 2326 0094 3B46     		mov	r3, r7
 2327 0096 2846     		mov	r0, r5
 2328 0098 0449     		ldr	r1, .L274+4
 2329 009a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2330 009e 15B0     		add	sp, sp, #84
 2331              		@ sp needed
 2332 00a0 BDEC028B 		vldm	sp!, {d8}
 2333 00a4 F0BD     		pop	{r4, r5, r6, r7, pc}
 2334              	.L275:
 2335 00a6 00BF     		.align	2
 2336              	.L274:
 2337 00a8 0000C842 		.word	1120403456
ARM GAS  /tmp/cc6jfxXH.s 			page 42


 2338 00ac 00000000 		.word	.LC7
 2339              		.size	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef, .-_ZNK21LinearDeltaKinematics15Pr
 2340              		.global	__aeabi_dmul
 2341              		.section	.text._ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj9
 2342              		.align	1
 2343              		.p2align 2,,3
 2344              		.weak	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 2345              		.syntax unified
 2346              		.thumb
 2347              		.thumb_func
 2348              		.fpu fpv4-sp-d16
 2349              		.type	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, %function
 2350              	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj:
 2351              		@ args = 0, pretend = 0, frame = 64
 2352              		@ frame_needed = 0, uses_anonymous_args = 0
 2353 0000 002A     		cmp	r2, #0
 2354 0002 00F01C82 		beq	.L340
 2355 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2356 000a 2DED068B 		vpush.64	{d8, d9, d10}
 2357 000e 91B0     		sub	sp, sp, #68
 2358 0010 AD4E     		ldr	r6, .L357+8
 2359 0012 0092     		str	r2, [sp]
 2360 0014 0246     		mov	r2, r0
 2361 0016 0F91     		str	r1, [sp, #60]
 2362 0018 52F8083B 		ldr	r3, [r2], #8
 2363 001c 0D92     		str	r2, [sp, #52]
 2364 001e 9F68     		ldr	r7, [r3, #8]
 2365 0020 0023     		movs	r3, #0
 2366 0022 BB46     		mov	fp, r7
 2367 0024 0A93     		str	r3, [sp, #40]
 2368 0026 CDE90B33 		strd	r3, r3, [sp, #44]
 2369 002a 0493     		str	r3, [sp, #16]
 2370 002c B345     		cmp	fp, r6
 2371 002e 00F15803 		add	r3, r0, #88
 2372 0032 9FEDA3AB 		vldr.64	d10, .L357
 2373 0036 0E93     		str	r3, [sp, #56]
 2374 0038 8246     		mov	r10, r0
 2375 003a 40F08E81 		bne	.L278
 2376              	.L354:
 2377 003e 0D9B     		ldr	r3, [sp, #52]
 2378 0040 0A9A     		ldr	r2, [sp, #40]
 2379 0042 9818     		adds	r0, r3, r2
 2380              	.L279:
 2381 0044 D0E90001 		ldrd	r0, [r0]
 2382 0048 FFF7FEFF 		bl	__aeabi_d2f
 2383 004c 049B     		ldr	r3, [sp, #16]
 2384 004e 0099     		ldr	r1, [sp]
 2385 0050 0133     		adds	r3, r3, #1
 2386 0052 07EE900A 		vmov	s15, r0
 2387 0056 9942     		cmp	r1, r3
 2388 0058 0693     		str	r3, [sp, #24]
 2389 005a B0EEE78A 		vabs.f32	s16, s15
 2390 005e 40F29480 		bls	.L280
 2391 0062 CB1A     		subs	r3, r1, r3
 2392 0064 0193     		str	r3, [sp, #4]
 2393 0066 0A9A     		ldr	r2, [sp, #40]
 2394 0068 0E9B     		ldr	r3, [sp, #56]
ARM GAS  /tmp/cc6jfxXH.s 			page 43


 2395 006a 1344     		add	r3, r3, r2
 2396 006c 6FF04F08 		mvn	r8, #79
 2397 0070 0025     		movs	r5, #0
 2398 0072 0293     		str	r3, [sp, #8]
 2399 0074 5C46     		mov	r4, fp
 2400 0076 06E0     		b	.L294
 2401              	.L283:
 2402 0078 019B     		ldr	r3, [sp, #4]
 2403 007a 0135     		adds	r5, r5, #1
 2404 007c AB42     		cmp	r3, r5
 2405 007e A8F15008 		sub	r8, r8, #80
 2406 0082 00F08180 		beq	.L343
 2407              	.L294:
 2408 0086 069B     		ldr	r3, [sp, #24]
 2409 0088 B442     		cmp	r4, r6
 2410 008a 03EB050B 		add	fp, r3, r5
 2411 008e 69D1     		bne	.L281
 2412 0090 029B     		ldr	r3, [sp, #8]
 2413 0092 05EB8500 		add	r0, r5, r5, lsl #2
 2414 0096 03EB0010 		add	r0, r3, r0, lsl #4
 2415              	.L282:
 2416 009a D0E90001 		ldrd	r0, [r0]
 2417 009e FFF7FEFF 		bl	__aeabi_d2f
 2418 00a2 07EE900A 		vmov	s15, r0
 2419 00a6 B0EEE79A 		vabs.f32	s18, s15
 2420 00aa B4EEC89A 		vcmpe.f32	s18, s16
 2421 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2422 00b2 E1DD     		ble	.L283
 2423 00b4 049B     		ldr	r3, [sp, #16]
 2424 00b6 5B45     		cmp	r3, fp
 2425 00b8 00F07881 		beq	.L329
 2426 00bc 0B9A     		ldr	r2, [sp, #44]
 2427 00be 092A     		cmp	r2, #9
 2428 00c0 00F27481 		bhi	.L329
 2429 00c4 029A     		ldr	r2, [sp, #8]
 2430 00c6 0595     		str	r5, [sp, #20]
 2431 00c8 05EB8507 		add	r7, r5, r5, lsl #2
 2432 00cc 02EB0717 		add	r7, r2, r7, lsl #4
 2433 00d0 9946     		mov	r9, r3
 2434 00d2 5D46     		mov	r5, fp
 2435 00d4 1AE0     		b	.L293
 2436              	.L345:
 2437 00d6 07EB0800 		add	r0, r7, r8
 2438 00da B442     		cmp	r4, r6
 2439 00dc 90ED008B 		vldr.64	d8, [r0]
 2440 00e0 21D1     		bne	.L287
 2441              	.L346:
 2442 00e2 B442     		cmp	r4, r6
 2443 00e4 BB46     		mov	fp, r7
 2444 00e6 28D1     		bne	.L289
 2445              	.L347:
 2446 00e8 9BED007B 		vldr.64	d7, [fp]
 2447 00ec 07EB0800 		add	r0, r7, r8
 2448 00f0 B442     		cmp	r4, r6
 2449 00f2 80ED007B 		vstr.64	d7, [r0]
 2450 00f6 2DD1     		bne	.L291
 2451              	.L348:
ARM GAS  /tmp/cc6jfxXH.s 			page 44


 2452 00f8 3846     		mov	r0, r7
 2453              	.L292:
 2454 00fa 09F10109 		add	r9, r9, #1
 2455 00fe B9F10A0F 		cmp	r9, #10
 2456 0102 80ED008B 		vstr.64	d8, [r0]
 2457 0106 07F10807 		add	r7, r7, #8
 2458 010a 33D0     		beq	.L344
 2459              	.L293:
 2460 010c B442     		cmp	r4, r6
 2461 010e E2D0     		beq	.L345
 2462 0110 4A46     		mov	r2, r9
 2463 0112 0499     		ldr	r1, [sp, #16]
 2464 0114 5046     		mov	r0, r10
 2465 0116 A047     		blx	r4
 2466 0118 DAF80020 		ldr	r2, [r10]
 2467 011c 9468     		ldr	r4, [r2, #8]
 2468 011e B442     		cmp	r4, r6
 2469 0120 90ED008B 		vldr.64	d8, [r0]
 2470 0124 DDD0     		beq	.L346
 2471              	.L287:
 2472 0126 4A46     		mov	r2, r9
 2473 0128 2946     		mov	r1, r5
 2474 012a 5046     		mov	r0, r10
 2475 012c A047     		blx	r4
 2476 012e DAF80020 		ldr	r2, [r10]
 2477 0132 9468     		ldr	r4, [r2, #8]
 2478 0134 B442     		cmp	r4, r6
 2479 0136 8346     		mov	fp, r0
 2480 0138 D6D0     		beq	.L347
 2481              	.L289:
 2482 013a 4A46     		mov	r2, r9
 2483 013c 0499     		ldr	r1, [sp, #16]
 2484 013e 5046     		mov	r0, r10
 2485 0140 A047     		blx	r4
 2486 0142 DAF80020 		ldr	r2, [r10]
 2487 0146 9BED007B 		vldr.64	d7, [fp]
 2488 014a 9468     		ldr	r4, [r2, #8]
 2489 014c B442     		cmp	r4, r6
 2490 014e 80ED007B 		vstr.64	d7, [r0]
 2491 0152 D1D0     		beq	.L348
 2492              	.L291:
 2493 0154 4A46     		mov	r2, r9
 2494 0156 2946     		mov	r1, r5
 2495 0158 5046     		mov	r0, r10
 2496 015a A047     		blx	r4
 2497 015c DAF80020 		ldr	r2, [r10]
 2498 0160 9468     		ldr	r4, [r2, #8]
 2499 0162 CAE7     		b	.L292
 2500              	.L281:
 2501 0164 049A     		ldr	r2, [sp, #16]
 2502 0166 5946     		mov	r1, fp
 2503 0168 5046     		mov	r0, r10
 2504 016a A047     		blx	r4
 2505 016c DAF80030 		ldr	r3, [r10]
 2506 0170 9C68     		ldr	r4, [r3, #8]
 2507 0172 92E7     		b	.L282
 2508              	.L344:
ARM GAS  /tmp/cc6jfxXH.s 			page 45


 2509 0174 059D     		ldr	r5, [sp, #20]
 2510 0176 019B     		ldr	r3, [sp, #4]
 2511 0178 0135     		adds	r5, r5, #1
 2512 017a AB42     		cmp	r3, r5
 2513 017c B0EE498A 		vmov.f32	s16, s18
 2514 0180 A8F15008 		sub	r8, r8, #80
 2515 0184 7FF47FAF 		bne	.L294
 2516              	.L343:
 2517 0188 A346     		mov	fp, r4
 2518              	.L280:
 2519 018a B345     		cmp	fp, r6
 2520 018c 40F01181 		bne	.L295
 2521 0190 0D9B     		ldr	r3, [sp, #52]
 2522 0192 0A9A     		ldr	r2, [sp, #40]
 2523 0194 9818     		adds	r0, r3, r2
 2524              	.L296:
 2525 0196 90ED007B 		vldr.64	d7, [r0]
 2526 019a 0B9B     		ldr	r3, [sp, #44]
 2527 019c 8DED087B 		vstr.64	d7, [sp, #32]
 2528 01a0 002B     		cmp	r3, #0
 2529 01a2 61D0     		beq	.L310
 2530 01a4 069B     		ldr	r3, [sp, #24]
 2531 01a6 0AEBC303 		add	r3, r10, r3, lsl #3
 2532 01aa 0593     		str	r3, [sp, #20]
 2533 01ac 0C9B     		ldr	r3, [sp, #48]
 2534 01ae DB00     		lsls	r3, r3, #3
 2535 01b0 0193     		str	r3, [sp, #4]
 2536 01b2 0023     		movs	r3, #0
 2537 01b4 0793     		str	r3, [sp, #28]
 2538 01b6 5F46     		mov	r7, fp
 2539              	.L311:
 2540 01b8 B742     		cmp	r7, r6
 2541 01ba 40F0EF80 		bne	.L300
 2542 01be 0598     		ldr	r0, [sp, #20]
 2543              	.L301:
 2544 01c0 DDE90823 		ldrd	r2, [sp, #32]
 2545 01c4 D0E90001 		ldrd	r0, [r0]
 2546 01c8 FFF7FEFF 		bl	__aeabi_ddiv
 2547 01cc B742     		cmp	r7, r6
 2548 01ce CDE90201 		strd	r0, [sp, #8]
 2549 01d2 40F0DB80 		bne	.L302
 2550 01d6 0598     		ldr	r0, [sp, #20]
 2551              	.L303:
 2552 01d8 009B     		ldr	r3, [sp]
 2553 01da 069D     		ldr	r5, [sp, #24]
 2554 01dc 1A46     		mov	r2, r3
 2555 01de AA42     		cmp	r2, r5
 2556 01e0 80ED00AB 		vstr.64	d10, [r0]
 2557 01e4 33D3     		bcc	.L304
 2558 01e6 059B     		ldr	r3, [sp, #20]
 2559 01e8 D146     		mov	r9, r10
 2560 01ea 03F10804 		add	r4, r3, #8
 2561 01ee 1AE0     		b	.L309
 2562              	.L350:
 2563 01f0 019B     		ldr	r3, [sp, #4]
 2564 01f2 1819     		adds	r0, r3, r4
 2565              	.L306:
ARM GAS  /tmp/cc6jfxXH.s 			page 46


 2566 01f4 D0E90023 		ldrd	r2, [r0]
 2567 01f8 DDE90201 		ldrd	r0, [sp, #8]
 2568 01fc FFF7FEFF 		bl	__aeabi_dmul
 2569 0200 B742     		cmp	r7, r6
 2570 0202 8246     		mov	r10, r0
 2571 0204 8B46     		mov	fp, r1
 2572 0206 18D1     		bne	.L307
 2573 0208 A046     		mov	r8, r4
 2574              	.L308:
 2575 020a 5B46     		mov	r3, fp
 2576 020c D8E90001 		ldrd	r0, [r8]
 2577 0210 5246     		mov	r2, r10
 2578 0212 FFF7FEFF 		bl	__aeabi_dsub
 2579 0216 009B     		ldr	r3, [sp]
 2580 0218 0135     		adds	r5, r5, #1
 2581 021a AB42     		cmp	r3, r5
 2582 021c 04F10804 		add	r4, r4, #8
 2583 0220 C8E90001 		strd	r0, [r8]
 2584 0224 12D3     		bcc	.L349
 2585              	.L309:
 2586 0226 B742     		cmp	r7, r6
 2587 0228 E2D0     		beq	.L350
 2588 022a 2A46     		mov	r2, r5
 2589 022c 0499     		ldr	r1, [sp, #16]
 2590 022e 4846     		mov	r0, r9
 2591 0230 B847     		blx	r7
 2592 0232 D9F80030 		ldr	r3, [r9]
 2593 0236 9F68     		ldr	r7, [r3, #8]
 2594 0238 DCE7     		b	.L306
 2595              	.L307:
 2596 023a 2A46     		mov	r2, r5
 2597 023c 0799     		ldr	r1, [sp, #28]
 2598 023e 4846     		mov	r0, r9
 2599 0240 B847     		blx	r7
 2600 0242 D9F80030 		ldr	r3, [r9]
 2601 0246 8046     		mov	r8, r0
 2602 0248 9F68     		ldr	r7, [r3, #8]
 2603 024a DEE7     		b	.L308
 2604              	.L349:
 2605 024c CA46     		mov	r10, r9
 2606              	.L304:
 2607 024e 059A     		ldr	r2, [sp, #20]
 2608 0250 079B     		ldr	r3, [sp, #28]
 2609 0252 5032     		adds	r2, r2, #80
 2610 0254 0592     		str	r2, [sp, #20]
 2611 0256 019A     		ldr	r2, [sp, #4]
 2612 0258 503A     		subs	r2, r2, #80
 2613 025a 0192     		str	r2, [sp, #4]
 2614 025c 049A     		ldr	r2, [sp, #16]
 2615 025e 0133     		adds	r3, r3, #1
 2616 0260 9342     		cmp	r3, r2
 2617 0262 0793     		str	r3, [sp, #28]
 2618 0264 A8D1     		bne	.L311
 2619 0266 BB46     		mov	fp, r7
 2620              	.L310:
 2621 0268 009B     		ldr	r3, [sp]
 2622 026a 069A     		ldr	r2, [sp, #24]
ARM GAS  /tmp/cc6jfxXH.s 			page 47


 2623 026c 9342     		cmp	r3, r2
 2624 026e 00F0A980 		beq	.L351
 2625 0272 0C9B     		ldr	r3, [sp, #48]
 2626 0274 0A9A     		ldr	r2, [sp, #40]
 2627 0276 0A33     		adds	r3, r3, #10
 2628 0278 0C93     		str	r3, [sp, #48]
 2629 027a 0E9B     		ldr	r3, [sp, #56]
 2630 027c 1344     		add	r3, r3, r2
 2631 027e 0593     		str	r3, [sp, #20]
 2632 0280 069B     		ldr	r3, [sp, #24]
 2633 0282 0793     		str	r3, [sp, #28]
 2634 0284 6FF04F03 		mvn	r3, #79
 2635 0288 0193     		str	r3, [sp, #4]
 2636 028a 5F46     		mov	r7, fp
 2637              	.L322:
 2638 028c B742     		cmp	r7, r6
 2639 028e 6DD1     		bne	.L312
 2640 0290 0598     		ldr	r0, [sp, #20]
 2641              	.L313:
 2642 0292 DDE90823 		ldrd	r2, [sp, #32]
 2643 0296 D0E90001 		ldrd	r0, [r0]
 2644 029a FFF7FEFF 		bl	__aeabi_ddiv
 2645 029e B742     		cmp	r7, r6
 2646 02a0 CDE90201 		strd	r0, [sp, #8]
 2647 02a4 6AD1     		bne	.L314
 2648 02a6 0598     		ldr	r0, [sp, #20]
 2649              	.L315:
 2650 02a8 009B     		ldr	r3, [sp]
 2651 02aa 069D     		ldr	r5, [sp, #24]
 2652 02ac 1A46     		mov	r2, r3
 2653 02ae AA42     		cmp	r2, r5
 2654 02b0 80ED00AB 		vstr.64	d10, [r0]
 2655 02b4 39D3     		bcc	.L316
 2656 02b6 059B     		ldr	r3, [sp, #20]
 2657 02b8 D146     		mov	r9, r10
 2658 02ba 03F10804 		add	r4, r3, #8
 2659 02be 20E0     		b	.L321
 2660              	.L358:
 2661              		.align	3
 2662              	.L357:
 2663 02c0 00000000 		.word	0
 2664 02c4 00000000 		.word	0
 2665 02c8 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 2666              	.L353:
 2667 02cc 019B     		ldr	r3, [sp, #4]
 2668 02ce 1819     		adds	r0, r3, r4
 2669              	.L318:
 2670 02d0 D0E90023 		ldrd	r2, [r0]
 2671 02d4 DDE90201 		ldrd	r0, [sp, #8]
 2672 02d8 FFF7FEFF 		bl	__aeabi_dmul
 2673 02dc B742     		cmp	r7, r6
 2674 02de 8246     		mov	r10, r0
 2675 02e0 8B46     		mov	fp, r1
 2676 02e2 18D1     		bne	.L319
 2677 02e4 A046     		mov	r8, r4
 2678              	.L320:
 2679 02e6 5B46     		mov	r3, fp
ARM GAS  /tmp/cc6jfxXH.s 			page 48


 2680 02e8 D8E90001 		ldrd	r0, [r8]
 2681 02ec 5246     		mov	r2, r10
 2682 02ee FFF7FEFF 		bl	__aeabi_dsub
 2683 02f2 009B     		ldr	r3, [sp]
 2684 02f4 0135     		adds	r5, r5, #1
 2685 02f6 AB42     		cmp	r3, r5
 2686 02f8 04F10804 		add	r4, r4, #8
 2687 02fc C8E90001 		strd	r0, [r8]
 2688 0300 12D3     		bcc	.L352
 2689              	.L321:
 2690 0302 B742     		cmp	r7, r6
 2691 0304 E2D0     		beq	.L353
 2692 0306 2A46     		mov	r2, r5
 2693 0308 0499     		ldr	r1, [sp, #16]
 2694 030a 4846     		mov	r0, r9
 2695 030c B847     		blx	r7
 2696 030e D9F80030 		ldr	r3, [r9]
 2697 0312 9F68     		ldr	r7, [r3, #8]
 2698 0314 DCE7     		b	.L318
 2699              	.L319:
 2700 0316 2A46     		mov	r2, r5
 2701 0318 0799     		ldr	r1, [sp, #28]
 2702 031a 4846     		mov	r0, r9
 2703 031c B847     		blx	r7
 2704 031e D9F80030 		ldr	r3, [r9]
 2705 0322 8046     		mov	r8, r0
 2706 0324 9F68     		ldr	r7, [r3, #8]
 2707 0326 DEE7     		b	.L320
 2708              	.L352:
 2709 0328 CA46     		mov	r10, r9
 2710              	.L316:
 2711 032a 059A     		ldr	r2, [sp, #20]
 2712 032c 079B     		ldr	r3, [sp, #28]
 2713 032e 5032     		adds	r2, r2, #80
 2714 0330 0592     		str	r2, [sp, #20]
 2715 0332 019A     		ldr	r2, [sp, #4]
 2716 0334 503A     		subs	r2, r2, #80
 2717 0336 0192     		str	r2, [sp, #4]
 2718 0338 009A     		ldr	r2, [sp]
 2719 033a 0133     		adds	r3, r3, #1
 2720 033c 9A42     		cmp	r2, r3
 2721 033e 0793     		str	r3, [sp, #28]
 2722 0340 A4D1     		bne	.L322
 2723 0342 0B9B     		ldr	r3, [sp, #44]
 2724 0344 0133     		adds	r3, r3, #1
 2725 0346 0B93     		str	r3, [sp, #44]
 2726 0348 0A9B     		ldr	r3, [sp, #40]
 2727 034a BB46     		mov	fp, r7
 2728 034c 5833     		adds	r3, r3, #88
 2729 034e 0A93     		str	r3, [sp, #40]
 2730 0350 B345     		cmp	fp, r6
 2731 0352 069B     		ldr	r3, [sp, #24]
 2732 0354 0493     		str	r3, [sp, #16]
 2733 0356 3FF472AE 		beq	.L354
 2734              	.L278:
 2735 035a 0499     		ldr	r1, [sp, #16]
 2736 035c 5046     		mov	r0, r10
ARM GAS  /tmp/cc6jfxXH.s 			page 49


 2737 035e 0A46     		mov	r2, r1
 2738 0360 D847     		blx	fp
 2739 0362 DAF80030 		ldr	r3, [r10]
 2740 0366 D3F808B0 		ldr	fp, [r3, #8]
 2741 036a 6BE6     		b	.L279
 2742              	.L312:
 2743 036c 049A     		ldr	r2, [sp, #16]
 2744 036e 0799     		ldr	r1, [sp, #28]
 2745 0370 5046     		mov	r0, r10
 2746 0372 B847     		blx	r7
 2747 0374 DAF80030 		ldr	r3, [r10]
 2748 0378 9F68     		ldr	r7, [r3, #8]
 2749 037a 8AE7     		b	.L313
 2750              	.L314:
 2751 037c 049A     		ldr	r2, [sp, #16]
 2752 037e 0799     		ldr	r1, [sp, #28]
 2753 0380 5046     		mov	r0, r10
 2754 0382 B847     		blx	r7
 2755 0384 DAF80030 		ldr	r3, [r10]
 2756 0388 9F68     		ldr	r7, [r3, #8]
 2757 038a 8DE7     		b	.L315
 2758              	.L302:
 2759 038c 049A     		ldr	r2, [sp, #16]
 2760 038e 0799     		ldr	r1, [sp, #28]
 2761 0390 5046     		mov	r0, r10
 2762 0392 B847     		blx	r7
 2763 0394 DAF80030 		ldr	r3, [r10]
 2764 0398 9F68     		ldr	r7, [r3, #8]
 2765 039a 1DE7     		b	.L303
 2766              	.L300:
 2767 039c 049A     		ldr	r2, [sp, #16]
 2768 039e 0799     		ldr	r1, [sp, #28]
 2769 03a0 5046     		mov	r0, r10
 2770 03a2 B847     		blx	r7
 2771 03a4 DAF80030 		ldr	r3, [r10]
 2772 03a8 9F68     		ldr	r7, [r3, #8]
 2773 03aa 09E7     		b	.L301
 2774              	.L329:
 2775 03ac B0EE498A 		vmov.f32	s16, s18
 2776 03b0 62E6     		b	.L283
 2777              	.L295:
 2778 03b2 0499     		ldr	r1, [sp, #16]
 2779 03b4 5046     		mov	r0, r10
 2780 03b6 0A46     		mov	r2, r1
 2781 03b8 D847     		blx	fp
 2782 03ba DAF80030 		ldr	r3, [r10]
 2783 03be D3F808B0 		ldr	fp, [r3, #8]
 2784 03c2 E8E6     		b	.L296
 2785              	.L351:
 2786 03c4 049C     		ldr	r4, [sp, #16]
 2787 03c6 0D9D     		ldr	r5, [sp, #52]
 2788 03c8 DDF83C90 		ldr	r9, [sp, #60]
 2789 03cc 5F46     		mov	r7, fp
 2790 03ce 0234     		adds	r4, r4, #2
 2791 03d0 3B46     		mov	r3, r7
 2792 03d2 0AEBC404 		add	r4, r10, r4, lsl #3
 2793 03d6 4FF00008 		mov	r8, #0
ARM GAS  /tmp/cc6jfxXH.s 			page 50


 2794 03da 5746     		mov	r7, r10
 2795 03dc 18E0     		b	.L299
 2796              	.L355:
 2797 03de 2046     		mov	r0, r4
 2798 03e0 B342     		cmp	r3, r6
 2799 03e2 D0E900AB 		ldrd	r10, [r0]
 2800 03e6 1FD1     		bne	.L326
 2801              	.L356:
 2802 03e8 2B46     		mov	r3, r5
 2803              	.L327:
 2804 03ea D3E90023 		ldrd	r2, [r3]
 2805 03ee 5046     		mov	r0, r10
 2806 03f0 5946     		mov	r1, fp
 2807 03f2 FFF7FEFF 		bl	__aeabi_ddiv
 2808 03f6 069B     		ldr	r3, [sp, #24]
 2809 03f8 08F10108 		add	r8, r8, #1
 2810 03fc 4345     		cmp	r3, r8
 2811 03fe 05F15805 		add	r5, r5, #88
 2812 0402 04F15004 		add	r4, r4, #80
 2813 0406 E9E80201 		strd	r0, [r9], #8
 2814 040a 13D0     		beq	.L276
 2815 040c 3B68     		ldr	r3, [r7]
 2816 040e 9B68     		ldr	r3, [r3, #8]
 2817              	.L299:
 2818 0410 B342     		cmp	r3, r6
 2819 0412 E4D0     		beq	.L355
 2820 0414 069A     		ldr	r2, [sp, #24]
 2821 0416 4146     		mov	r1, r8
 2822 0418 3846     		mov	r0, r7
 2823 041a 9847     		blx	r3
 2824 041c 3B68     		ldr	r3, [r7]
 2825 041e 9B68     		ldr	r3, [r3, #8]
 2826 0420 B342     		cmp	r3, r6
 2827 0422 D0E900AB 		ldrd	r10, [r0]
 2828 0426 DFD0     		beq	.L356
 2829              	.L326:
 2830 0428 4246     		mov	r2, r8
 2831 042a 4146     		mov	r1, r8
 2832 042c 3846     		mov	r0, r7
 2833 042e 9847     		blx	r3
 2834 0430 0346     		mov	r3, r0
 2835 0432 DAE7     		b	.L327
 2836              	.L276:
 2837 0434 11B0     		add	sp, sp, #68
 2838              		@ sp needed
 2839 0436 BDEC068B 		vldm	sp!, {d8-d10}
 2840 043a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2841              	.L340:
 2842 043e 7047     		bx	lr
 2843              		.size	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEP
 2844              		.global	__aeabi_dadd
 2845              		.global	__aeabi_ui2d
 2846              		.section	.text._ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 2847              		.align	1
 2848              		.p2align 2,,3
 2849              		.global	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2850              		.syntax unified
ARM GAS  /tmp/cc6jfxXH.s 			page 51


 2851              		.thumb
 2852              		.thumb_func
 2853              		.fpu fpv4-sp-d16
 2854              		.type	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 2855              	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 2856              		@ args = 0, pretend = 0, frame = 4576
 2857              		@ frame_needed = 0, uses_anonymous_args = 0
 2858 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2859 0004 2DED048B 		vpush.64	{d8, d9}
 2860 0008 ADF58F5D 		sub	sp, sp, #4576
 2861 000c 85B0     		sub	sp, sp, #20
 2862 000e 8B46     		mov	fp, r1
 2863 0010 0C90     		str	r0, [sp, #48]
 2864 0012 1046     		mov	r0, r2
 2865 0014 1D93     		str	r3, [sp, #116]
 2866 0016 1092     		str	r2, [sp, #64]
 2867 0018 FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 2868 001c ABF10303 		sub	r3, fp, #3
 2869 0020 062B     		cmp	r3, #6
 2870 0022 0690     		str	r0, [sp, #24]
 2871 0024 00F2E180 		bhi	.L360
 2872 0028 BBF1050F 		cmp	fp, #5
 2873 002c 00F0DD80 		beq	.L360
 2874 0030 774B     		ldr	r3, .L441+8
 2875 0032 9B6C     		ldr	r3, [r3, #72]
 2876 0034 D806     		lsls	r0, r3, #27
 2877 0036 00F10C83 		bmi	.L430
 2878 003a 0DF6E803 		addw	r3, sp, #2280
 2879 003e 1893     		str	r3, [sp, #96]
 2880 0040 0DF5BC63 		add	r3, sp, #1504
 2881 0044 1993     		str	r3, [sp, #100]
 2882              	.L363:
 2883 0046 9FED707B 		vldr.64	d7, .L441
 2884 004a 069B     		ldr	r3, [sp, #24]
 2885 004c 8DED127B 		vstr.64	d7, [sp, #72]
 2886 0050 002B     		cmp	r3, #0
 2887 0052 00F01383 		beq	.L432
 2888 0056 44AB     		add	r3, sp, #272
 2889 0058 1793     		str	r3, [sp, #92]
 2890 005a 109A     		ldr	r2, [sp, #64]
 2891 005c 9FED6D8A 		vldr.32	s16, .L441+12
 2892 0060 199E     		ldr	r6, [sp, #100]
 2893 0062 0C9D     		ldr	r5, [sp, #48]
 2894 0064 189C     		ldr	r4, [sp, #96]
 2895 0066 CDF81CB0 		str	fp, [sp, #28]
 2896 006a 42AB     		add	r3, sp, #264
 2897 006c 1A93     		str	r3, [sp, #104]
 2898 006e 9946     		mov	r9, r3
 2899 0070 069B     		ldr	r3, [sp, #24]
 2900 0072 02F28317 		addw	r7, r2, #387
 2901 0076 07EB030A 		add	r10, r7, r3
 2902 007a 4FF00008 		mov	r8, #0
 2903 007e CDF810A0 		str	r10, [sp, #16]
 2904              	.L367:
 2905 0082 9FED617B 		vldr.64	d7, .L441
 2906 0086 17F8013F 		ldrb	r3, [r7, #1]!	@ zero_extendqisi2
 2907 008a 614A     		ldr	r2, .L441+8
ARM GAS  /tmp/cc6jfxXH.s 			page 52


 2908 008c C3F38003 		ubfx	r3, r3, #2, #1
 2909 0090 9068     		ldr	r0, [r2, #8]
 2910 0092 0093     		str	r3, [sp]
 2911 0094 2246     		mov	r2, r4
 2912 0096 A9EC027B 		vstmia.64	r9!, {d7}
 2913 009a 0DF6EC03 		addw	r3, sp, #2284
 2914 009e 4146     		mov	r1, r8
 2915 00a0 FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 2916 00a4 10EE100A 		vmov	r0, s0
 2917 00a8 FFF7FEFF 		bl	__aeabi_f2d
 2918 00ac 0022     		movs	r2, #0
 2919 00ae 8246     		mov	r10, r0
 2920 00b0 8B46     		mov	fp, r1
 2921 00b2 2846     		mov	r0, r5
 2922 00b4 2146     		mov	r1, r4
 2923 00b6 84ED028A 		vstr.32	s16, [r4, #8]
 2924 00ba FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 2925 00be 10EE100A 		vmov	r0, s0
 2926 00c2 FFF7FEFF 		bl	__aeabi_f2d
 2927 00c6 0122     		movs	r2, #1
 2928 00c8 C6E90201 		strd	r0, [r6, #8]
 2929 00cc 2146     		mov	r1, r4
 2930 00ce 2846     		mov	r0, r5
 2931 00d0 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 2932 00d4 10EE100A 		vmov	r0, s0
 2933 00d8 FFF7FEFF 		bl	__aeabi_f2d
 2934 00dc 0222     		movs	r2, #2
 2935 00de C6E90401 		strd	r0, [r6, #16]
 2936 00e2 2146     		mov	r1, r4
 2937 00e4 2846     		mov	r0, r5
 2938 00e6 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 2939 00ea 10EE100A 		vmov	r0, s0
 2940 00ee FFF7FEFF 		bl	__aeabi_f2d
 2941 00f2 5246     		mov	r2, r10
 2942 00f4 E6E90601 		strd	r0, [r6, #24]!
 2943 00f8 5B46     		mov	r3, fp
 2944 00fa 5046     		mov	r0, r10
 2945 00fc 5946     		mov	r1, fp
 2946 00fe FFF7FEFF 		bl	__aeabi_dmul
 2947 0102 0B46     		mov	r3, r1
 2948 0104 0246     		mov	r2, r0
 2949 0106 DDE91201 		ldrd	r0, [sp, #72]
 2950 010a FFF7FEFF 		bl	__aeabi_dadd
 2951 010e 049B     		ldr	r3, [sp, #16]
 2952 0110 9F42     		cmp	r7, r3
 2953 0112 08F10108 		add	r8, r8, #1
 2954 0116 CDE91201 		strd	r0, [sp, #72]
 2955 011a B2D1     		bne	.L367
 2956 011c DDF81CB0 		ldr	fp, [sp, #28]
 2957              	.L366:
 2958 0120 069C     		ldr	r4, [sp, #24]
 2959 0122 109D     		ldr	r5, [sp, #64]
 2960 0124 CBEB4B70 		rsb	r0, fp, fp, lsl #29
 2961 0128 C000     		lsls	r0, r0, #3
 2962 012a 0830     		adds	r0, r0, #8
 2963 012c 1590     		str	r0, [sp, #84]
 2964 012e 1998     		ldr	r0, [sp, #100]
ARM GAS  /tmp/cc6jfxXH.s 			page 53


 2965 0130 04EB4401 		add	r1, r4, r4, lsl #1
 2966 0134 00EBC101 		add	r1, r0, r1, lsl #3
 2967 0138 4FEACB03 		lsl	r3, fp, #3
 2968 013c 2191     		str	r1, [sp, #132]
 2969 013e C2A9     		add	r1, sp, #776
 2970 0140 1944     		add	r1, r1, r3
 2971 0142 2091     		str	r1, [sp, #128]
 2972 0144 1899     		ldr	r1, [sp, #96]
 2973 0146 1944     		add	r1, r1, r3
 2974 0148 1491     		str	r1, [sp, #80]
 2975 014a 0DF50F61 		add	r1, sp, #2288
 2976 014e 1944     		add	r1, r1, r3
 2977 0150 0791     		str	r1, [sp, #28]
 2978 0152 30A9     		add	r1, sp, #192
 2979 0154 04EBC402 		add	r2, r4, r4, lsl #3
 2980 0158 CB18     		adds	r3, r1, r3
 2981 015a 05F58275 		add	r5, r5, #260
 2982 015e 2593     		str	r3, [sp, #148]
 2983 0160 D300     		lsls	r3, r2, #3
 2984 0162 2293     		str	r3, [sp, #136]
 2985 0164 05EB8403 		add	r3, r5, r4, lsl #2
 2986 0168 1193     		str	r3, [sp, #68]
 2987 016a 0223     		movs	r3, #2
 2988 016c 1C93     		str	r3, [sp, #112]
 2989 016e 0C9B     		ldr	r3, [sp, #48]
 2990 0170 1F95     		str	r5, [sp, #124]
 2991 0172 1A46     		mov	r2, r3
 2992 0174 3432     		adds	r2, r2, #52
 2993 0176 4033     		adds	r3, r3, #64
 2994 0178 2392     		str	r2, [sp, #140]
 2995 017a 2493     		str	r3, [sp, #144]
 2996              	.L365:
 2997 017c 189B     		ldr	r3, [sp, #96]
 2998 017e 1A46     		mov	r2, r3
 2999 0180 254B     		ldr	r3, .L441+16
 3000 0182 1360     		str	r3, [r2]
 3001 0184 069B     		ldr	r3, [sp, #24]
 3002 0186 002B     		cmp	r3, #0
 3003 0188 4FD0     		beq	.L368
 3004 018a 199C     		ldr	r4, [sp, #100]
 3005 018c DDF88490 		ldr	r9, [sp, #132]
 3006 0190 DDF83080 		ldr	r8, [sp, #48]
 3007 0194 0DF50F65 		add	r5, sp, #2288
 3008              	.L373:
 3009 0198 D4E90201 		ldrd	r0, [r4, #8]
 3010 019c FFF7FEFF 		bl	__aeabi_d2f
 3011 01a0 09EE100A 		vmov	s18, r0
 3012 01a4 D4E90401 		ldrd	r0, [r4, #16]
 3013 01a8 FFF7FEFF 		bl	__aeabi_d2f
 3014 01ac 08EE900A 		vmov	s17, r0
 3015 01b0 D4E90601 		ldrd	r0, [r4, #24]
 3016 01b4 FFF7FEFF 		bl	__aeabi_d2f
 3017 01b8 08EE100A 		vmov	s16, r0
 3018 01bc 2F46     		mov	r7, r5
 3019 01be 0021     		movs	r1, #0
 3020              	.L369:
 3021 01c0 BBF1080F 		cmp	fp, #8
ARM GAS  /tmp/cc6jfxXH.s 			page 54


 3022 01c4 B0EE481A 		vmov.f32	s2, s16
 3023 01c8 F0EE680A 		vmov.f32	s1, s17
 3024 01cc B0EE490A 		vmov.f32	s0, s18
 3025 01d0 4046     		mov	r0, r8
 3026 01d2 01F10106 		add	r6, r1, #1
 3027 01d6 00F08281 		beq	.L433
 3028              	.L370:
 3029 01da FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff
 3030 01de B345     		cmp	fp, r6
 3031 01e0 A7EC020B 		vstmia.64	r7!, {d0}
 3032 01e4 1CD0     		beq	.L434
 3033 01e6 3146     		mov	r1, r6
 3034 01e8 EAE7     		b	.L369
 3035              	.L360:
 3036 01ea 5A46     		mov	r2, fp
 3037 01ec 1D98     		ldr	r0, [sp, #116]
 3038 01ee 0B49     		ldr	r1, .L441+20
 3039 01f0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3040 01f4 0120     		movs	r0, #1
 3041 01f6 0DF58F5D 		add	sp, sp, #4576
 3042 01fa 05B0     		add	sp, sp, #20
 3043              		@ sp needed
 3044 01fc BDEC048B 		vldm	sp!, {d8-d9}
 3045 0200 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3046              	.L442:
 3047 0204 AFF30080 		.align	3
 3048              	.L441:
 3049 0208 00000000 		.word	0
 3050 020c 00000000 		.word	0
 3051 0210 00000000 		.word	reprap
 3052 0214 00000000 		.word	0
 3053 0218 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj9EE+8
 3054 021c 00000000 		.word	.LC8
 3055              	.L434:
 3056 0220 1834     		adds	r4, r4, #24
 3057 0222 4C45     		cmp	r4, r9
 3058 0224 05F14805 		add	r5, r5, #72
 3059 0228 B6D1     		bne	.L373
 3060              	.L368:
 3061 022a B14B     		ldr	r3, .L443+8
 3062 022c 9B6C     		ldr	r3, [r3, #72]
 3063 022e 13F01003 		ands	r3, r3, #16
 3064 0232 1B93     		str	r3, [sp, #108]
 3065 0234 40F0B281 		bne	.L435
 3066              	.L374:
 3067 0238 109B     		ldr	r3, [sp, #64]
 3068 023a D3F80401 		ldr	r0, [r3, #260]	@ float
 3069 023e AD4B     		ldr	r3, .L443+12
 3070 0240 C293     		str	r3, [sp, #776]
 3071 0242 FFF7FEFF 		bl	__aeabi_f2d
 3072 0246 1A9B     		ldr	r3, [sp, #104]
 3073 0248 D3E90023 		ldrd	r2, [r3]
 3074 024c FFF7FEFF 		bl	__aeabi_dadd
 3075 0250 01F10043 		add	r3, r1, #-2147483648
 3076 0254 0F93     		str	r3, [sp, #60]
 3077 0256 229A     		ldr	r2, [sp, #136]
 3078 0258 209B     		ldr	r3, [sp, #128]
ARM GAS  /tmp/cc6jfxXH.s 			page 55


 3079 025a 0993     		str	r3, [sp, #36]
 3080 025c 189B     		ldr	r3, [sp, #96]
 3081 025e 0E90     		str	r0, [sp, #56]
 3082 0260 583A     		subs	r2, r2, #88
 3083 0262 0892     		str	r2, [sp, #32]
 3084 0264 9946     		mov	r9, r3
 3085 0266 CDF878B0 		str	fp, [sp, #120]
 3086              	.L380:
 3087 026a 99ED027B 		vldr.64	d7, [r9, #8]
 3088 026e 0DF50F63 		add	r3, sp, #2288
 3089 0272 1693     		str	r3, [sp, #88]
 3090 0274 099A     		ldr	r2, [sp, #36]
 3091 0276 159B     		ldr	r3, [sp, #84]
 3092 0278 8DED047B 		vstr.64	d7, [sp, #16]
 3093 027c 03EB020B 		add	fp, r3, r2
 3094 0280 0DF50F64 		add	r4, sp, #2288
 3095              	.L377:
 3096 0284 D4E90023 		ldrd	r2, [r4]
 3097 0288 DDE90401 		ldrd	r0, [sp, #16]
 3098 028c FFF7FEFF 		bl	__aeabi_dmul
 3099 0290 069B     		ldr	r3, [sp, #24]
 3100 0292 012B     		cmp	r3, #1
 3101 0294 0646     		mov	r6, r0
 3102 0296 0F46     		mov	r7, r1
 3103 0298 04F1080A 		add	r10, r4, #8
 3104 029c 17D9     		bls	.L375
 3105 029e 089B     		ldr	r3, [sp, #32]
 3106 02a0 083C     		subs	r4, r4, #8
 3107 02a2 03EB0A08 		add	r8, r3, r10
 3108 02a6 4D46     		mov	r5, r9
 3109              	.L376:
 3110 02a8 D4E91423 		ldrd	r2, [r4, #80]
 3111 02ac D5E91401 		ldrd	r0, [r5, #80]
 3112 02b0 FFF7FEFF 		bl	__aeabi_dmul
 3113 02b4 0246     		mov	r2, r0
 3114 02b6 0B46     		mov	r3, r1
 3115 02b8 3046     		mov	r0, r6
 3116 02ba 3946     		mov	r1, r7
 3117 02bc FFF7FEFF 		bl	__aeabi_dadd
 3118 02c0 4834     		adds	r4, r4, #72
 3119 02c2 A045     		cmp	r8, r4
 3120 02c4 0646     		mov	r6, r0
 3121 02c6 0F46     		mov	r7, r1
 3122 02c8 05F14805 		add	r5, r5, #72
 3123 02cc ECD1     		bne	.L376
 3124              	.L375:
 3125 02ce 079B     		ldr	r3, [sp, #28]
 3126 02d0 5345     		cmp	r3, r10
 3127 02d2 EBE80267 		strd	r6, [fp], #8
 3128 02d6 5446     		mov	r4, r10
 3129 02d8 D4D1     		bne	.L377
 3130 02da DDE90E23 		ldrd	r2, [sp, #56]
 3131 02de DDE90401 		ldrd	r0, [sp, #16]
 3132 02e2 FFF7FEFF 		bl	__aeabi_dmul
 3133 02e6 069B     		ldr	r3, [sp, #24]
 3134 02e8 012B     		cmp	r3, #1
 3135 02ea 0646     		mov	r6, r0
ARM GAS  /tmp/cc6jfxXH.s 			page 56


 3136 02ec 0F46     		mov	r7, r1
 3137 02ee 2DD9     		bls	.L378
 3138 02f0 109B     		ldr	r3, [sp, #64]
 3139 02f2 CDF83490 		str	r9, [sp, #52]
 3140 02f6 4C46     		mov	r4, r9
 3141 02f8 DDF85C80 		ldr	r8, [sp, #92]
 3142 02fc DDF84490 		ldr	r9, [sp, #68]
 3143 0300 03F58475 		add	r5, r3, #264
 3144              	.L379:
 3145 0304 F8E80223 		ldrd	r2, [r8], #8
 3146 0308 55F8040B 		ldr	r0, [r5], #4	@ float
 3147 030c CDE90423 		strd	r2, [sp, #16]
 3148 0310 FFF7FEFF 		bl	__aeabi_f2d
 3149 0314 DDE90423 		ldrd	r2, [sp, #16]
 3150 0318 FFF7FEFF 		bl	__aeabi_dadd
 3151 031c 01F1004B 		add	fp, r1, #-2147483648
 3152 0320 D4E91423 		ldrd	r2, [r4, #80]
 3153 0324 5946     		mov	r1, fp
 3154 0326 8246     		mov	r10, r0
 3155 0328 FFF7FEFF 		bl	__aeabi_dmul
 3156 032c 0246     		mov	r2, r0
 3157 032e 0B46     		mov	r3, r1
 3158 0330 3046     		mov	r0, r6
 3159 0332 3946     		mov	r1, r7
 3160 0334 FFF7FEFF 		bl	__aeabi_dadd
 3161 0338 4D45     		cmp	r5, r9
 3162 033a 0646     		mov	r6, r0
 3163 033c 0F46     		mov	r7, r1
 3164 033e 04F14804 		add	r4, r4, #72
 3165 0342 DFD1     		bne	.L379
 3166 0344 CDE90AAB 		strd	r10, [sp, #40]
 3167 0348 DDF83490 		ldr	r9, [sp, #52]
 3168              	.L378:
 3169 034c 099B     		ldr	r3, [sp, #36]
 3170 034e C3E90267 		strd	r6, [r3, #8]
 3171 0352 5033     		adds	r3, r3, #80
 3172 0354 0993     		str	r3, [sp, #36]
 3173 0356 149B     		ldr	r3, [sp, #80]
 3174 0358 09F10809 		add	r9, r9, #8
 3175 035c 9945     		cmp	r9, r3
 3176 035e 84D1     		bne	.L380
 3177 0360 1B9B     		ldr	r3, [sp, #108]
 3178 0362 DDF878B0 		ldr	fp, [sp, #120]
 3179 0366 002B     		cmp	r3, #0
 3180 0368 40F01081 		bne	.L436
 3181              	.L381:
 3182 036c 30A9     		add	r1, sp, #192
 3183 036e 5A46     		mov	r2, fp
 3184 0370 C2A8     		add	r0, sp, #776
 3185 0372 FFF7FEFF 		bl	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3186 0376 5E4B     		ldr	r3, .L443+8
 3187 0378 9B6C     		ldr	r3, [r3, #72]
 3188 037a D906     		lsls	r1, r3, #27
 3189 037c 00F12681 		bmi	.L437
 3190              	.L382:
 3191 0380 0C9C     		ldr	r4, [sp, #48]
 3192 0382 D4ED1B7A 		vldr.32	s15, [r4, #108]
ARM GAS  /tmp/cc6jfxXH.s 			page 57


 3193 0386 94ED0D6A 		vldr.32	s12, [r4, #52]
 3194 038a D4ED0E6A 		vldr.32	s13, [r4, #56]
 3195 038e 94ED0F7A 		vldr.32	s14, [r4, #60]
 3196 0392 76EEA76A 		vadd.f32	s13, s13, s15
 3197 0396 36EE276A 		vadd.f32	s12, s12, s15
 3198 039a 77EE277A 		vadd.f32	s15, s14, s15
 3199 039e 30AA     		add	r2, sp, #192
 3200 03a0 5946     		mov	r1, fp
 3201 03a2 2046     		mov	r0, r4
 3202 03a4 CDED286A 		vstr.32	s13, [sp, #160]
 3203 03a8 8DED276A 		vstr.32	s12, [sp, #156]
 3204 03ac CDED297A 		vstr.32	s15, [sp, #164]
 3205 03b0 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6AdjustEjPKd
 3206 03b4 D4ED1B6A 		vldr.32	s13, [r4, #108]
 3207 03b8 239B     		ldr	r3, [sp, #140]
 3208 03ba 2498     		ldr	r0, [sp, #144]
 3209 03bc 27A9     		add	r1, sp, #156
 3210 03be 2AAA     		add	r2, sp, #168
 3211              	.L386:
 3212 03c0 B3EC017A 		vldmia.32	r3!, {s14}
 3213 03c4 F1EC017A 		vldmia.32	r1!, {s15}
 3214 03c8 36EE877A 		vadd.f32	s14, s13, s14
 3215 03cc 9842     		cmp	r0, r3
 3216 03ce 77EE677A 		vsub.f32	s15, s14, s15
 3217 03d2 E2EC017A 		vstmia.32	r2!, {s15}
 3218 03d6 F3D1     		bne	.L386
 3219 03d8 454B     		ldr	r3, .L443+8
 3220 03da 0322     		movs	r2, #3
 3221 03dc 9868     		ldr	r0, [r3, #8]
 3222 03de 2AA9     		add	r1, sp, #168
 3223 03e0 FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
 3224 03e4 9FED407B 		vldr.64	d7, .L443
 3225 03e8 069B     		ldr	r3, [sp, #24]
 3226 03ea 8DED047B 		vstr.64	d7, [sp, #16]
 3227 03ee 002B     		cmp	r3, #0
 3228 03f0 54D0     		beq	.L387
 3229 03f2 CDF834B0 		str	fp, [sp, #52]
 3230 03f6 DDF868A0 		ldr	r10, [sp, #104]
 3231 03fa DDF87C80 		ldr	r8, [sp, #124]
 3232 03fe 199E     		ldr	r6, [sp, #100]
 3233 0400 DDF844B0 		ldr	fp, [sp, #68]
 3234 0404 0DF50279 		add	r9, sp, #520
 3235 0408 36AF     		add	r7, sp, #216
 3236              	.L389:
 3237 040a 06F10805 		add	r5, r6, #8
 3238 040e 30AC     		add	r4, sp, #192
 3239              	.L388:
 3240 0410 F4E80223 		ldrd	r2, [r4], #8
 3241 0414 D5E90001 		ldrd	r0, [r5]
 3242 0418 FFF7FEFF 		bl	__aeabi_dadd
 3243 041c BC42     		cmp	r4, r7
 3244 041e E5E80201 		strd	r0, [r5], #8
 3245 0422 F5D1     		bne	.L388
 3246 0424 D6E90601 		ldrd	r0, [r6, #24]
 3247 0428 FFF7FEFF 		bl	__aeabi_d2f
 3248 042c 0990     		str	r0, [sp, #36]
 3249 042e D6E90401 		ldrd	r0, [r6, #16]
ARM GAS  /tmp/cc6jfxXH.s 			page 58


 3250 0432 FFF7FEFF 		bl	__aeabi_d2f
 3251 0436 0890     		str	r0, [sp, #32]
 3252 0438 D6E90201 		ldrd	r0, [r6, #8]
 3253 043c FFF7FEFF 		bl	__aeabi_d2f
 3254 0440 9DED091A 		vldr.32	s2, [sp, #36]	@ int
 3255 0444 DDED080A 		vldr.32	s1, [sp, #32]	@ int
 3256 0448 00EE100A 		vmov	s0, r0
 3257 044c 2DA9     		add	r1, sp, #180
 3258 044e 0C98     		ldr	r0, [sp, #48]
 3259 0450 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 3260 0454 9DED2F8A 		vldr.32	s16, [sp, #188]
 3261 0458 18EE100A 		vmov	r0, s16
 3262 045c FFF7FEFF 		bl	__aeabi_f2d
 3263 0460 F8EC017A 		vldmia.32	r8!, {s15}
 3264 0464 78EE277A 		vadd.f32	s15, s16, s15
 3265 0468 EAE80201 		strd	r0, [r10], #8
 3266 046c 17EE900A 		vmov	r0, s15
 3267 0470 FFF7FEFF 		bl	__aeabi_f2d
 3268 0474 0246     		mov	r2, r0
 3269 0476 0B46     		mov	r3, r1
 3270 0478 E9E80223 		strd	r2, [r9], #8
 3271 047c FFF7FEFF 		bl	__aeabi_dmul
 3272 0480 0246     		mov	r2, r0
 3273 0482 0B46     		mov	r3, r1
 3274 0484 DDE90401 		ldrd	r0, [sp, #16]
 3275 0488 FFF7FEFF 		bl	__aeabi_dadd
 3276 048c D845     		cmp	r8, fp
 3277 048e 06F11806 		add	r6, r6, #24
 3278 0492 CDE90401 		strd	r0, [sp, #16]
 3279 0496 B8D1     		bne	.L389
 3280 0498 DDF834B0 		ldr	fp, [sp, #52]
 3281              	.L387:
 3282 049c 0698     		ldr	r0, [sp, #24]
 3283 049e FFF7FEFF 		bl	__aeabi_ui2d
 3284 04a2 0246     		mov	r2, r0
 3285 04a4 0B46     		mov	r3, r1
 3286 04a6 0446     		mov	r4, r0
 3287 04a8 0D46     		mov	r5, r1
 3288 04aa DDE90401 		ldrd	r0, [sp, #16]
 3289 04ae FFF7FEFF 		bl	__aeabi_ddiv
 3290 04b2 FFF7FEFF 		bl	__aeabi_d2f
 3291 04b6 00EE100A 		vmov	s0, r0
 3292 04ba B5EE400A 		vcmp.f32	s0, #0
 3293 04be F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3294 04c2 B1EEC08A 		vsqrt.f32	s16, s0
 3295 04c6 00F1E180 		bmi	.L438
 3296              	.L390:
 3297 04ca 094B     		ldr	r3, .L443+8
 3298 04cc 9B6C     		ldr	r3, [r3, #72]
 3299 04ce DA06     		lsls	r2, r3, #27
 3300 04d0 70D4     		bmi	.L439
 3301              	.L391:
 3302 04d2 1C9B     		ldr	r3, [sp, #112]
 3303 04d4 012B     		cmp	r3, #1
 3304 04d6 0FD0     		beq	.L392
 3305 04d8 0123     		movs	r3, #1
 3306 04da 1C93     		str	r3, [sp, #112]
ARM GAS  /tmp/cc6jfxXH.s 			page 59


 3307 04dc 4EE6     		b	.L365
 3308              	.L433:
 3309 04de 0529     		cmp	r1, #5
 3310 04e0 6ED9     		bls	.L371
 3311 04e2 3146     		mov	r1, r6
 3312 04e4 79E6     		b	.L370
 3313              	.L444:
 3314 04e6 00BF     		.align	3
 3315              	.L443:
 3316 04e8 00000000 		.word	0
 3317 04ec 00000000 		.word	0
 3318 04f0 00000000 		.word	reprap
 3319 04f4 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 3320              	.L392:
 3321 04f8 664B     		ldr	r3, .L445
 3322 04fa 9B6C     		ldr	r3, [r3, #72]
 3323 04fc DB06     		lsls	r3, r3, #27
 3324 04fe 0DD5     		bpl	.L393
 3325 0500 189E     		ldr	r6, [sp, #96]
 3326 0502 0C98     		ldr	r0, [sp, #48]
 3327 0504 C296     		str	r6, [sp, #776]
 3328 0506 0022     		movs	r2, #0
 3329 0508 DD23     		movs	r3, #221
 3330 050a C2A9     		add	r1, sp, #776
 3331 050c 3270     		strb	r2, [r6]
 3332 050e C393     		str	r3, [sp, #780]
 3333 0510 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef
 3334 0514 3146     		mov	r1, r6
 3335 0516 6048     		ldr	r0, .L445+4
 3336 0518 FFF7FEFF 		bl	debugPrintf
 3337              	.L393:
 3338 051c 2246     		mov	r2, r4
 3339 051e 2B46     		mov	r3, r5
 3340 0520 DDE91201 		ldrd	r0, [sp, #72]
 3341 0524 FFF7FEFF 		bl	__aeabi_ddiv
 3342 0528 FFF7FEFF 		bl	__aeabi_d2f
 3343 052c 00EE100A 		vmov	s0, r0
 3344 0530 B5EE400A 		vcmp.f32	s0, #0
 3345 0534 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3346 0538 F1EEC08A 		vsqrt.f32	s17, s0
 3347 053c 00F1A380 		bmi	.L440
 3348              	.L394:
 3349 0540 18EE100A 		vmov	r0, s16
 3350 0544 FFF7FEFF 		bl	__aeabi_f2d
 3351 0548 CDE90201 		strd	r0, [sp, #8]
 3352 054c 18EE900A 		vmov	r0, s17
 3353 0550 FFF7FEFF 		bl	__aeabi_f2d
 3354 0554 1D9C     		ldr	r4, [sp, #116]
 3355 0556 069B     		ldr	r3, [sp, #24]
 3356 0558 CDE90001 		strd	r0, [sp]
 3357 055c 5A46     		mov	r2, fp
 3358 055e 4F49     		ldr	r1, .L445+8
 3359 0560 2046     		mov	r0, r4
 3360 0562 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3361 0566 4B4A     		ldr	r2, .L445
 3362 0568 2368     		ldr	r3, [r4]
 3363 056a 1068     		ldr	r0, [r2]
ARM GAS  /tmp/cc6jfxXH.s 			page 60


 3364 056c 4A4A     		ldr	r2, .L445+4
 3365 056e 8021     		movs	r1, #128
 3366 0570 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3367 0574 0C9A     		ldr	r2, [sp, #48]
 3368 0576 0123     		movs	r3, #1
 3369 0578 0020     		movs	r0, #0
 3370 057a 82F8A030 		strb	r3, [r2, #160]
 3371 057e 0DF58F5D 		add	sp, sp, #4576
 3372 0582 05B0     		add	sp, sp, #20
 3373              		@ sp needed
 3374 0584 BDEC048B 		vldm	sp!, {d8-d9}
 3375 0588 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3376              	.L436:
 3377 058c 0BF10103 		add	r3, fp, #1
 3378 0590 5A46     		mov	r2, fp
 3379 0592 C2A9     		add	r1, sp, #776
 3380 0594 4248     		ldr	r0, .L445+12
 3381 0596 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3382 059a E7E6     		b	.L381
 3383              	.L435:
 3384 059c 5B46     		mov	r3, fp
 3385 059e 069A     		ldr	r2, [sp, #24]
 3386 05a0 1899     		ldr	r1, [sp, #96]
 3387 05a2 4048     		ldr	r0, .L445+16
 3388 05a4 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3389 05a8 3A4B     		ldr	r3, .L445
 3390 05aa 9B6C     		ldr	r3, [r3, #72]
 3391 05ac 03F01003 		and	r3, r3, #16
 3392 05b0 1B93     		str	r3, [sp, #108]
 3393 05b2 41E6     		b	.L374
 3394              	.L439:
 3395 05b4 069A     		ldr	r2, [sp, #24]
 3396 05b6 3C48     		ldr	r0, .L445+20
 3397 05b8 82A9     		add	r1, sp, #520
 3398 05ba FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 3399 05be 88E7     		b	.L391
 3400              	.L371:
 3401 05c0 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff
 3402 05c4 3146     		mov	r1, r6
 3403 05c6 A7EC020B 		vstmia.64	r7!, {d0}
 3404 05ca F9E5     		b	.L369
 3405              	.L437:
 3406 05cc 0BF10103 		add	r3, fp, #1
 3407 05d0 5A46     		mov	r2, fp
 3408 05d2 C2A9     		add	r1, sp, #776
 3409 05d4 3548     		ldr	r0, .L445+24
 3410 05d6 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3411 05da 5A46     		mov	r2, fp
 3412 05dc 30A9     		add	r1, sp, #192
 3413 05de 3448     		ldr	r0, .L445+28
 3414 05e0 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 3415 05e4 3348     		ldr	r0, .L445+32
 3416 05e6 FFF7FEFF 		bl	debugPrintf
 3417 05ea 069B     		ldr	r3, [sp, #24]
 3418 05ec 6BB3     		cbz	r3, .L383
 3419 05ee CDF810B0 		str	fp, [sp, #16]
 3420 05f2 DFF8C890 		ldr	r9, .L445+40
ARM GAS  /tmp/cc6jfxXH.s 			page 61


 3421 05f6 DDF87C80 		ldr	r8, [sp, #124]
 3422 05fa DDF894A0 		ldr	r10, [sp, #148]
 3423 05fe DDF858B0 		ldr	fp, [sp, #88]
 3424              	.L385:
 3425 0602 58F8040B 		ldr	r0, [r8], #4	@ float
 3426 0606 FFF7FEFF 		bl	__aeabi_f2d
 3427 060a 5D46     		mov	r5, fp
 3428 060c 0646     		mov	r6, r0
 3429 060e 0F46     		mov	r7, r1
 3430 0610 30AC     		add	r4, sp, #192
 3431              	.L384:
 3432 0612 F5E80223 		ldrd	r2, [r5], #8
 3433 0616 F4E80201 		ldrd	r0, [r4], #8
 3434 061a FFF7FEFF 		bl	__aeabi_dmul
 3435 061e 0246     		mov	r2, r0
 3436 0620 0B46     		mov	r3, r1
 3437 0622 3046     		mov	r0, r6
 3438 0624 3946     		mov	r1, r7
 3439 0626 FFF7FEFF 		bl	__aeabi_dadd
 3440 062a A245     		cmp	r10, r4
 3441 062c 0646     		mov	r6, r0
 3442 062e 0F46     		mov	r7, r1
 3443 0630 EFD1     		bne	.L384
 3444 0632 0246     		mov	r2, r0
 3445 0634 0B46     		mov	r3, r1
 3446 0636 4846     		mov	r0, r9
 3447 0638 FFF7FEFF 		bl	debugPrintf
 3448 063c 119B     		ldr	r3, [sp, #68]
 3449 063e 9845     		cmp	r8, r3
 3450 0640 0BF1480B 		add	fp, fp, #72
 3451 0644 DDD1     		bne	.L385
 3452 0646 DDF810B0 		ldr	fp, [sp, #16]
 3453              	.L383:
 3454 064a 1B48     		ldr	r0, .L445+36
 3455 064c FFF7FEFF 		bl	debugPrintf
 3456 0650 96E6     		b	.L382
 3457              	.L430:
 3458 0652 0DF5BC63 		add	r3, sp, #1504
 3459 0656 0DF6E804 		addw	r4, sp, #2280
 3460 065a 1D46     		mov	r5, r3
 3461 065c 1993     		str	r3, [sp, #100]
 3462 065e 0022     		movs	r2, #0
 3463 0660 DD23     		movs	r3, #221
 3464 0662 2946     		mov	r1, r5
 3465 0664 0C98     		ldr	r0, [sp, #48]
 3466 0666 1894     		str	r4, [sp, #96]
 3467 0668 2270     		strb	r2, [r4]
 3468 066a C5E90043 		strd	r4, r3, [r5]
 3469 066e FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef
 3470 0672 2146     		mov	r1, r4
 3471 0674 0848     		ldr	r0, .L445+4
 3472 0676 FFF7FEFF 		bl	debugPrintf
 3473 067a E4E4     		b	.L363
 3474              	.L432:
 3475 067c 44AB     		add	r3, sp, #272
 3476 067e 1793     		str	r3, [sp, #92]
 3477 0680 42AB     		add	r3, sp, #264
ARM GAS  /tmp/cc6jfxXH.s 			page 62


 3478 0682 1A93     		str	r3, [sp, #104]
 3479 0684 4CE5     		b	.L366
 3480              	.L440:
 3481 0686 FFF7FEFF 		bl	sqrtf
 3482 068a 59E7     		b	.L394
 3483              	.L438:
 3484 068c FFF7FEFF 		bl	sqrtf
 3485 0690 1BE7     		b	.L390
 3486              	.L446:
 3487 0692 00BF     		.align	2
 3488              	.L445:
 3489 0694 00000000 		.word	reprap
 3490 0698 54000000 		.word	.LC9
 3491 069c C8000000 		.word	.LC18
 3492 06a0 6C000000 		.word	.LC11
 3493 06a4 58000000 		.word	.LC10
 3494 06a8 B0000000 		.word	.LC17
 3495 06ac 7C000000 		.word	.LC12
 3496 06b0 8C000000 		.word	.LC13
 3497 06b4 98000000 		.word	.LC14
 3498 06b8 AC000000 		.word	.LC16
 3499 06bc A4000000 		.word	.LC15
 3500              		.size	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21L
 3501              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 3502              		.align	1
 3503              		.p2align 2,,3
 3504              		.weak	_ZN6StringILj220EE6printfEPKcz
 3505              		.syntax unified
 3506              		.thumb
 3507              		.thumb_func
 3508              		.fpu fpv4-sp-d16
 3509              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 3510              	_ZN6StringILj220EE6printfEPKcz:
 3511              		@ args = 4, pretend = 12, frame = 16
 3512              		@ frame_needed = 0, uses_anonymous_args = 1
 3513 0000 0EB4     		push	{r1, r2, r3}
 3514 0002 00B5     		push	{lr}
 3515 0004 84B0     		sub	sp, sp, #16
 3516 0006 05AA     		add	r2, sp, #20
 3517 0008 0290     		str	r0, [sp, #8]
 3518 000a 52F8041B 		ldr	r1, [r2], #4
 3519 000e 0192     		str	r2, [sp, #4]
 3520 0010 DD23     		movs	r3, #221
 3521 0012 02A8     		add	r0, sp, #8
 3522 0014 0393     		str	r3, [sp, #12]
 3523 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 3524 001a 04B0     		add	sp, sp, #16
 3525              		@ sp needed
 3526 001c 5DF804EB 		ldr	lr, [sp], #4
 3527 0020 03B0     		add	sp, sp, #12
 3528 0022 7047     		bx	lr
 3529              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 3530              		.section	.text._ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 3531              		.align	1
 3532              		.p2align 2,,3
 3533              		.global	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore
 3534              		.syntax unified
ARM GAS  /tmp/cc6jfxXH.s 			page 63


 3535              		.thumb
 3536              		.thumb_func
 3537              		.fpu fpv4-sp-d16
 3538              		.type	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore, %function
 3539              	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore:
 3540              		@ args = 0, pretend = 0, frame = 224
 3541              		@ frame_needed = 0, uses_anonymous_args = 0
 3542 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 3543 0004 2DED028B 		vpush.64	{d8}
 3544 0008 0D46     		mov	r5, r1
 3545 000a C4B0     		sub	sp, sp, #272
 3546 000c 0446     		mov	r4, r0
 3547 000e 3849     		ldr	r1, .L460
 3548 0010 2846     		mov	r0, r5
 3549 0012 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3550 0016 20B9     		cbnz	r0, .L459
 3551              	.L450:
 3552 0018 44B0     		add	sp, sp, #272
 3553              		@ sp needed
 3554 001a BDEC028B 		vldm	sp!, {d8}
 3555 001e BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 3556              	.L459:
 3557 0022 44AE     		add	r6, sp, #272
 3558 0024 0023     		movs	r3, #0
 3559 0026 206A     		ldr	r0, [r4, #32]	@ float
 3560 0028 06F8E03D 		strb	r3, [r6, #-224]!
 3561 002c FFF7FEFF 		bl	__aeabi_f2d
 3562 0030 8046     		mov	r8, r0
 3563 0032 206B     		ldr	r0, [r4, #48]	@ float
 3564 0034 8946     		mov	r9, r1
 3565 0036 FFF7FEFF 		bl	__aeabi_f2d
 3566 003a CDE90A01 		strd	r0, [sp, #40]
 3567 003e E06A     		ldr	r0, [r4, #44]	@ float
 3568 0040 FFF7FEFF 		bl	__aeabi_f2d
 3569 0044 CDE90801 		strd	r0, [sp, #32]
 3570 0048 A06A     		ldr	r0, [r4, #40]	@ float
 3571 004a FFF7FEFF 		bl	__aeabi_f2d
 3572 004e CDE90601 		strd	r0, [sp, #24]
 3573 0052 206C     		ldr	r0, [r4, #64]	@ float
 3574 0054 FFF7FEFF 		bl	__aeabi_f2d
 3575 0058 CDE90401 		strd	r0, [sp, #16]
 3576 005c 606C     		ldr	r0, [r4, #68]	@ float
 3577 005e FFF7FEFF 		bl	__aeabi_f2d
 3578 0062 CDE90201 		strd	r0, [sp, #8]
 3579 0066 606A     		ldr	r0, [r4, #36]	@ float
 3580 0068 FFF7FEFF 		bl	__aeabi_f2d
 3581 006c 4246     		mov	r2, r8
 3582 006e CDE90001 		strd	r0, [sp]
 3583 0072 4B46     		mov	r3, r9
 3584 0074 1F49     		ldr	r1, .L460+4
 3585 0076 3046     		mov	r0, r6
 3586 0078 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3587 007c 3146     		mov	r1, r6
 3588 007e 2846     		mov	r0, r5
 3589 0080 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3590 0084 0028     		cmp	r0, #0
 3591 0086 C7D0     		beq	.L450
ARM GAS  /tmp/cc6jfxXH.s 			page 64


 3592 0088 606B     		ldr	r0, [r4, #52]	@ float
 3593 008a 9FED1B8A 		vldr.32	s16, .L460+8
 3594 008e FFF7FEFF 		bl	__aeabi_f2d
 3595 0092 D4ED137A 		vldr.32	s15, [r4, #76]
 3596 0096 67EE887A 		vmul.f32	s15, s15, s16
 3597 009a 8046     		mov	r8, r0
 3598 009c 17EE900A 		vmov	r0, s15
 3599 00a0 8946     		mov	r9, r1
 3600 00a2 FFF7FEFF 		bl	__aeabi_f2d
 3601 00a6 D4ED127A 		vldr.32	s15, [r4, #72]
 3602 00aa 67EE887A 		vmul.f32	s15, s15, s16
 3603 00ae CDE90601 		strd	r0, [sp, #24]
 3604 00b2 17EE900A 		vmov	r0, s15
 3605 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3606 00ba CDE90401 		strd	r0, [sp, #16]
 3607 00be E06B     		ldr	r0, [r4, #60]	@ float
 3608 00c0 FFF7FEFF 		bl	__aeabi_f2d
 3609 00c4 CDE90201 		strd	r0, [sp, #8]
 3610 00c8 A06B     		ldr	r0, [r4, #56]	@ float
 3611 00ca FFF7FEFF 		bl	__aeabi_f2d
 3612 00ce 4246     		mov	r2, r8
 3613 00d0 CDE90001 		strd	r0, [sp]
 3614 00d4 4B46     		mov	r3, r9
 3615 00d6 0949     		ldr	r1, .L460+12
 3616 00d8 3046     		mov	r0, r6
 3617 00da FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3618 00de 3146     		mov	r1, r6
 3619 00e0 2846     		mov	r0, r5
 3620 00e2 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3621 00e6 44B0     		add	sp, sp, #272
 3622              		@ sp needed
 3623 00e8 BDEC028B 		vldm	sp!, {d8}
 3624 00ec BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 3625              	.L461:
 3626              		.align	2
 3627              	.L460:
 3628 00f0 00000000 		.word	.LC19
 3629 00f4 14000000 		.word	.LC20
 3630 00f8 0000C842 		.word	1120403456
 3631 00fc 44000000 		.word	.LC21
 3632              		.size	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21LinearDeltaKine
 3633              		.global	_ZTV21LinearDeltaKinematics
 3634              		.weak	_ZTV11FixedMatrixIdLj32ELj9EE
 3635              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj9EE,comdat
 3636              		.align	2
 3637              		.type	_ZTV11FixedMatrixIdLj32ELj9EE, %object
 3638              		.size	_ZTV11FixedMatrixIdLj32ELj9EE, 32
 3639              	_ZTV11FixedMatrixIdLj32ELj9EE:
 3640 0000 00000000 		.word	0
 3641 0004 00000000 		.word	0
 3642 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 3643 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 3644 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 3645 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 3646 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 3647 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 3648              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
ARM GAS  /tmp/cc6jfxXH.s 			page 65


 3649              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 3650              		.align	2
 3651              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 3652              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 3653              	_ZTV11FixedMatrixIdLj9ELj10EE:
 3654 0000 00000000 		.word	0
 3655 0004 00000000 		.word	0
 3656 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 3657 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 3658 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3659 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 3660 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 3661 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 3662              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3663              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3664              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3665              	_ZL28cpu_irq_prev_interrupt_state:
 3666 0000 00       		.space	1
 3667              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3668              		.align	2
 3669              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3670              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3671              	_ZL32cpu_irq_critical_section_counter:
 3672 0000 00000000 		.space	4
 3673              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 3674              		.align	2
 3675              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 3676              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 3677              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 3678 0000 00000000 		.space	4
 3679              		.section	.rodata._ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 3680              		.align	2
 3681              	.LC8:
 3682 0000 44656C74 		.ascii	"Delta calibration with %d factors requested but onl"
 3682      61206361 
 3682      6C696272 
 3682      6174696F 
 3682      6E207769 
 3683 0033 7920332C 		.ascii	"y 3, 4, 6, 7, 8 and 9 supported\000"
 3683      20342C20 
 3683      362C2037 
 3683      2C203820 
 3683      616E6420 
 3684 0053 00       		.space	1
 3685              	.LC9:
 3686 0054 25730A00 		.ascii	"%s\012\000"
 3687              	.LC10:
 3688 0058 44657269 		.ascii	"Derivative matrix\000"
 3688      76617469 
 3688      7665206D 
 3688      61747269 
 3688      7800
 3689 006a 0000     		.space	2
 3690              	.LC11:
 3691 006c 4E6F726D 		.ascii	"Normal matrix\000"
 3691      616C206D 
 3691      61747269 
ARM GAS  /tmp/cc6jfxXH.s 			page 66


 3691      7800
 3692 007a 0000     		.space	2
 3693              	.LC12:
 3694 007c 536F6C76 		.ascii	"Solved matrix\000"
 3694      6564206D 
 3694      61747269 
 3694      7800
 3695 008a 0000     		.space	2
 3696              	.LC13:
 3697 008c 536F6C75 		.ascii	"Solution\000"
 3697      74696F6E 
 3697      00
 3698 0095 000000   		.space	3
 3699              	.LC14:
 3700 0098 52657369 		.ascii	"Residuals:\000"
 3700      6475616C 
 3700      733A00
 3701 00a3 00       		.space	1
 3702              	.LC15:
 3703 00a4 2025372E 		.ascii	" %7.4f\000"
 3703      346600
 3704 00ab 00       		.space	1
 3705              	.LC16:
 3706 00ac 0A00     		.ascii	"\012\000"
 3707 00ae 0000     		.space	2
 3708              	.LC17:
 3709 00b0 45787065 		.ascii	"Expected probe error\000"
 3709      63746564 
 3709      2070726F 
 3709      62652065 
 3709      72726F72 
 3710 00c5 000000   		.space	3
 3711              	.LC18:
 3712 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 3712      62726174 
 3712      65642025 
 3712      64206661 
 3712      63746F72 
 3713 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 3713      20252E33 
 3713      66206166 
 3713      74657220 
 3713      252E3366 
 3714              		.section	.rodata._ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 3715              		.align	2
 3716              	.LC5:
 3717 0000 44696167 		.ascii	"Diagonal %.3f, delta radius %.3f, homed height %.3f"
 3717      6F6E616C 
 3717      20252E33 
 3717      662C2064 
 3717      656C7461 
 3718 0033 2C206265 		.ascii	", bed radius %.1f, X %.3f\302\260, Y %.3f\302\260, "
 3718      64207261 
 3718      64697573 
 3718      20252E31 
 3718      662C2058 
 3719 005a 5A20252E 		.ascii	"Z %.3f\302\260\000"
ARM GAS  /tmp/cc6jfxXH.s 			page 67


 3719      3366C2B0 
 3719      00
 3720 0063 00       		.space	1
 3721              	.LC6:
 3722 0064 456E6473 		.ascii	"Endstop adjustments X%.2f Y%.2f Z%.2f, tilt X%.2f%%"
 3722      746F7020 
 3722      61646A75 
 3722      73746D65 
 3722      6E747320 
 3723 0097 2059252E 		.ascii	" Y%.2f%%\000"
 3723      32662525 
 3723      00
 3724              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 3725              		.align	2
 3726              	.LC1:
 3727 0000 58595A00 		.ascii	"XYZ\000"
 3728              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 3729              		.align	2
 3730              	.LC0:
 3731 0000 58595A55 		.ascii	"XYZUVWABC\000"
 3731      56574142 
 3731      4300
 3732              		.section	.rodata._ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 3733              		.align	2
 3734              	.LC7:
 3735 0000 53746F70 		.ascii	"Stops X%.3f Y%.3f Z%.3f height %.3f diagonal %.3f r"
 3735      73205825 
 3735      2E336620 
 3735      59252E33 
 3735      66205A25 
 3736 0033 61646975 		.ascii	"adius %.3f xcorr %.2f ycorr %.2f zcorr %.2f xtilt %"
 3736      7320252E 
 3736      33662078 
 3736      636F7272 
 3736      20252E32 
 3737 0066 2E336625 		.ascii	".3f%% ytilt %.3f%%\012\000"
 3737      25207974 
 3737      696C7420 
 3737      252E3366 
 3737      25250A00 
 3738              		.section	.rodata._ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm.str1.4,"aMS",%progbits,1
 3739              		.align	2
 3740              	.LC4:
 3741 0000 686F6D65 		.ascii	"homedelta.g\000"
 3741      64656C74 
 3741      612E6700 
 3742              		.section	.rodata._ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 3743              		.align	2
 3744              	.LC19:
 3745 0000 3B204465 		.ascii	"; Delta parameters\012\000"
 3745      6C746120 
 3745      70617261 
 3745      6D657465 
 3745      72730A00 
 3746              	.LC20:
 3747 0014 4D363635 		.ascii	"M665 L%.3f R%.3f H%.3f B%.1f X%.3f Y%.3f Z%.3f\012\000"
 3747      204C252E 
ARM GAS  /tmp/cc6jfxXH.s 			page 68


 3747      33662052 
 3747      252E3366 
 3747      2048252E 
 3748              	.LC21:
 3749 0044 4D363636 		.ascii	"M666 X%.3f Y%.3f Z%.3f A%.2f B%.2f\012\000"
 3749      2058252E 
 3749      33662059 
 3749      252E3366 
 3749      205A252E 
 3750              		.section	.rodata._ZNK21LinearDeltaKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 3751              		.align	2
 3752              	.LC2:
 3753 0000 64656C74 		.ascii	"delta\000"
 3753      6100
 3754 0006 0000     		.space	2
 3755              	.LC3:
 3756 0008 4C696E65 		.ascii	"Linear delta\000"
 3756      61722064 
 3756      656C7461 
 3756      00
 3757              		.section	.rodata._ZTV21LinearDeltaKinematics,"a",%progbits
 3758              		.align	2
 3759              		.set	.LANCHOR0,. + 0
 3760              		.type	_ZTV21LinearDeltaKinematics, %object
 3761              		.size	_ZTV21LinearDeltaKinematics, 128
 3762              	_ZTV21LinearDeltaKinematics:
 3763 0000 00000000 		.word	0
 3764 0004 00000000 		.word	0
 3765 0008 00000000 		.word	_ZNK21LinearDeltaKinematics7GetNameEb
 3766 000c 00000000 		.word	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 3767 0010 00000000 		.word	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 3768 0014 00000000 		.word	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf
 3769 0018 00000000 		.word	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv
 3770 001c 00000000 		.word	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 3771 0020 00000000 		.word	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv
 3772 0024 00000000 		.word	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore
 3773 0028 00000000 		.word	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj
 3774 002c 00000000 		.word	_ZNK21LinearDeltaKinematics11IsReachableEffb
 3775 0030 00000000 		.word	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb
 3776 0034 00000000 		.word	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv
 3777 0038 00000000 		.word	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf
 3778 003c 00000000 		.word	_ZNK21LinearDeltaKinematics13GetMotionTypeEj
 3779 0040 00000000 		.word	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj
 3780 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 3781 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 3782 004c 00000000 		.word	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm
 3783 0050 00000000 		.word	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj
 3784 0054 00000000 		.word	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 3785 0058 00000000 		.word	_ZNK21LinearDeltaKinematics13GetHomingModeEv
 3786 005c 00000000 		.word	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm
 3787 0060 00000000 		.word	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb
 3788 0064 00000000 		.word	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore
 3789 0068 00000000 		.word	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf
 3790 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 3791 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 3792 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 3793 0078 00000000 		.word	_ZN21LinearDeltaKinematicsD1Ev
ARM GAS  /tmp/cc6jfxXH.s 			page 69


 3794 007c 00000000 		.word	_ZN21LinearDeltaKinematicsD0Ev
 3795              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
