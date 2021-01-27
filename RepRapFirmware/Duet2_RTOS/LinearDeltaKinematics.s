ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 1


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
  14              		.text
  15              		.section	.text._ZNK10Kinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK10Kinematics17HomingButto
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZNK10Kinematics17HomingButtonNamesEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK10Kinematics17HomingButtonNamesEv, %function
  24              	_ZNK10Kinematics17HomingButtonNamesEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0048     		ldr	r0, .L3
  29 0002 7047     		bx	lr
  30              	.L4:
  31              		.align	2
  32              	.L3:
  33 0004 00000000 		.word	.LC0
  34              		.size	_ZNK10Kinematics17HomingButtonNamesEv, .-_ZNK10Kinematics17HomingButtonNamesEv
  35              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
  36              		.align	1
  37              		.p2align 2,,3
  38              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
  44              	_ZNK10Kinematics16MachineAxisNamesEv:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47              		@ link register save eliminated.
  48 0000 0048     		ldr	r0, .L6
  49 0002 7047     		bx	lr
  50              	.L7:
  51              		.align	2
  52              	.L6:
  53 0004 00000000 		.word	.LC1
  54              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
  55              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 2


  58              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu fpv4-sp-d16
  63              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
  64              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67              		@ link register save eliminated.
  68 0000 0020     		movs	r0, #0
  69 0002 7047     		bx	lr
  70              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
  71              		.section	.text._ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK21Linear
  72              		.align	1
  73              		.p2align 2,,3
  74              		.weak	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv, %function
  80              	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 0120     		movs	r0, #1
  85 0002 7047     		bx	lr
  86              		.size	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv, .-_ZNK21LinearDeltaKinematics23Suppo
  87              		.section	.text._ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK21Linear
  88              		.align	1
  89              		.p2align 2,,3
  90              		.weak	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu fpv4-sp-d16
  95              		.type	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv, %function
  96              	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99              		@ link register save eliminated.
 100 0000 0720     		movs	r0, #7
 101 0002 7047     		bx	lr
 102              		.size	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv, .-_ZNK21LinearDeltaKinematics23AxesT
 103              		.section	.text._ZNK21LinearDeltaKinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK21LinearDeltaKi
 104              		.align	1
 105              		.p2align 2,,3
 106              		.weak	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 111              		.type	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj, %function
 112              	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 3


 115              		@ link register save eliminated.
 116 0000 0020     		movs	r0, #0
 117 0002 7047     		bx	lr
 118              		.size	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj, .-_ZNK21LinearDeltaKinematics16NumHomingBut
 119              		.section	.text._ZNK21LinearDeltaKinematics13GetHomingModeEv,"axG",%progbits,_ZNK21LinearDeltaKinem
 120              		.align	1
 121              		.p2align 2,,3
 122              		.weak	_ZNK21LinearDeltaKinematics13GetHomingModeEv
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu fpv4-sp-d16
 127              		.type	_ZNK21LinearDeltaKinematics13GetHomingModeEv, %function
 128              	_ZNK21LinearDeltaKinematics13GetHomingModeEv:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131              		@ link register save eliminated.
 132 0000 0120     		movs	r0, #1
 133 0002 7047     		bx	lr
 134              		.size	_ZNK21LinearDeltaKinematics13GetHomingModeEv, .-_ZNK21LinearDeltaKinematics13GetHomingModeEv
 135              		.section	.text._ZNK21LinearDeltaKinematics7GetNameEb,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
 138              		.global	_ZNK21LinearDeltaKinematics7GetNameEb
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv4-sp-d16
 143              		.type	_ZNK21LinearDeltaKinematics7GetNameEb, %function
 144              	_ZNK21LinearDeltaKinematics7GetNameEb:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147              		@ link register save eliminated.
 148 0000 024B     		ldr	r3, .L16
 149 0002 0348     		ldr	r0, .L16+4
 150 0004 0029     		cmp	r1, #0
 151 0006 08BF     		it	eq
 152 0008 1846     		moveq	r0, r3
 153 000a 7047     		bx	lr
 154              	.L17:
 155              		.align	2
 156              	.L16:
 157 000c 08000000 		.word	.LC3
 158 0010 00000000 		.word	.LC2
 159              		.size	_ZNK21LinearDeltaKinematics7GetNameEb, .-_ZNK21LinearDeltaKinematics7GetNameEb
 160              		.section	.text._ZNK21LinearDeltaKinematics11IsReachableEffb,"ax",%progbits
 161              		.align	1
 162              		.p2align 2,,3
 163              		.global	_ZNK21LinearDeltaKinematics11IsReachableEffb
 164              		.syntax unified
 165              		.thumb
 166              		.thumb_func
 167              		.fpu fpv4-sp-d16
 168              		.type	_ZNK21LinearDeltaKinematics11IsReachableEffb, %function
 169              	_ZNK21LinearDeltaKinematics11IsReachableEffb:
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 4


 172              		@ link register save eliminated.
 173 0000 60EEA00A 		vmul.f32	s1, s1, s1
 174 0004 D0ED167A 		vldr.32	s15, [r0, #88]
 175 0008 E0EE000A 		vfma.f32	s1, s0, s0
 176 000c F4EEE70A 		vcmpe.f32	s1, s15
 177 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 178 0014 4CBF     		ite	mi
 179 0016 0120     		movmi	r0, #1
 180 0018 0020     		movpl	r0, #0
 181 001a 7047     		bx	lr
 182              		.size	_ZNK21LinearDeltaKinematics11IsReachableEffb, .-_ZNK21LinearDeltaKinematics11IsReachableEffb
 183              		.section	.text._ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 184              		.align	1
 185              		.p2align 2,,3
 186              		.global	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf, %function
 192              	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf:
 193              		@ args = 0, pretend = 0, frame = 0
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195              		@ link register save eliminated.
 196 0000 69B1     		cbz	r1, .L27
 197 0002 10B4     		push	{r4}
 198 0004 02EB8101 		add	r1, r2, r1, lsl #2
 199 0008 0024     		movs	r4, #0
 200 000a 1346     		mov	r3, r2
 201              	.L21:
 202 000c 43F8044B 		str	r4, [r3], #4	@ float
 203 0010 8B42     		cmp	r3, r1
 204 0012 FBD1     		bne	.L21
 205 0014 436B     		ldr	r3, [r0, #52]	@ float
 206 0016 9360     		str	r3, [r2, #8]	@ float
 207 0018 5DF8044B 		ldr	r4, [sp], #4
 208 001c 7047     		bx	lr
 209              	.L27:
 210 001e 436B     		ldr	r3, [r0, #52]	@ float
 211 0020 9360     		str	r3, [r2, #8]	@ float
 212 0022 7047     		bx	lr
 213              		.size	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf, .-_ZNK21LinearDeltaKinematics25G
 214              		.section	.text._ZNK21LinearDeltaKinematics13GetMotionTypeEj,"ax",%progbits
 215              		.align	1
 216              		.p2align 2,,3
 217              		.global	_ZNK21LinearDeltaKinematics13GetMotionTypeEj
 218              		.syntax unified
 219              		.thumb
 220              		.thumb_func
 221              		.fpu fpv4-sp-d16
 222              		.type	_ZNK21LinearDeltaKinematics13GetMotionTypeEj, %function
 223              	_ZNK21LinearDeltaKinematics13GetMotionTypeEj:
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226              		@ link register save eliminated.
 227 0000 0229     		cmp	r1, #2
 228 0002 8CBF     		ite	hi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 5


 229 0004 0020     		movhi	r0, #0
 230 0006 0120     		movls	r0, #1
 231 0008 7047     		bx	lr
 232              		.size	_ZNK21LinearDeltaKinematics13GetMotionTypeEj, .-_ZNK21LinearDeltaKinematics13GetMotionTypeEj
 233 000a 00BF     		.section	.text._ZNK21LinearDeltaKinematics17GetTiltCorrectionEj,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj, %function
 242              	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245              		@ link register save eliminated.
 246 0000 31B1     		cbz	r1, .L35
 247 0002 0129     		cmp	r1, #1
 248 0004 0CBF     		ite	eq
 249 0006 90ED0F0A 		vldreq.32	s0, [r0, #60]
 250 000a 9FED030A 		vldrne.32	s0, .L36
 251 000e 7047     		bx	lr
 252              	.L35:
 253 0010 90ED0E0A 		vldr.32	s0, [r0, #56]
 254 0014 7047     		bx	lr
 255              	.L37:
 256 0016 00BF     		.align	2
 257              	.L36:
 258 0018 00000000 		.word	0
 259              		.size	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj, .-_ZNK21LinearDeltaKinematics17GetTiltCorr
 260              		.section	.text._ZNK21LinearDeltaKinematics16AxesAssumedHomedEm,"ax",%progbits
 261              		.align	1
 262              		.p2align 2,,3
 263              		.global	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu fpv4-sp-d16
 268              		.type	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm, %function
 269              	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm:
 270              		@ args = 0, pretend = 0, frame = 0
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272              		@ link register save eliminated.
 273 0000 01F00703 		and	r3, r1, #7
 274 0004 072B     		cmp	r3, #7
 275 0006 14BF     		ite	ne
 276 0008 21F00700 		bicne	r0, r1, #7
 277 000c 0846     		moveq	r0, r1
 278 000e 7047     		bx	lr
 279              		.size	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm, .-_ZNK21LinearDeltaKinematics16AxesAssumedH
 280              		.section	.text._ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb,"ax",%progbits
 281              		.align	1
 282              		.p2align 2,,3
 283              		.global	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb
 284              		.syntax unified
 285              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 6


 286              		.thumb_func
 287              		.fpu fpv4-sp-d16
 288              		.type	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb, %function
 289              	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb:
 290              		@ args = 0, pretend = 0, frame = 0
 291              		@ frame_needed = 0, uses_anonymous_args = 0
 292              		@ link register save eliminated.
 293 0000 4B07     		lsls	r3, r1, #29
 294 0002 14BF     		ite	ne
 295 0004 41F00700 		orrne	r0, r1, #7
 296 0008 0846     		moveq	r0, r1
 297 000a 7047     		bx	lr
 298              		.size	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb, .-_ZNK21LinearDeltaKinematics15MustBeHomedA
 299              		.section	.text._ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 300              		.align	1
 301              		.p2align 2,,3
 302              		.global	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj
 303              		.syntax unified
 304              		.thumb
 305              		.thumb_func
 306              		.fpu fpv4-sp-d16
 307              		.type	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj, %function
 308              	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj:
 309              		@ args = 0, pretend = 0, frame = 0
 310              		@ frame_needed = 0, uses_anonymous_args = 0
 311              		@ link register save eliminated.
 312 0000 0020     		movs	r0, #0
 313 0002 7047     		bx	lr
 314              		.size	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj, .-_ZNK21LinearDeltaKinematics24Quer
 315              		.section	.text._ZN11FixedMatrixIdLj32ELj3EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EEclEjj
 316              		.align	1
 317              		.p2align 2,,3
 318              		.weak	_ZN11FixedMatrixIdLj32ELj3EEclEjj
 319              		.syntax unified
 320              		.thumb
 321              		.thumb_func
 322              		.fpu fpv4-sp-d16
 323              		.type	_ZN11FixedMatrixIdLj32ELj3EEclEjj, %function
 324              	_ZN11FixedMatrixIdLj32ELj3EEclEjj:
 325              		@ args = 0, pretend = 0, frame = 0
 326              		@ frame_needed = 0, uses_anonymous_args = 0
 327              		@ link register save eliminated.
 328 0000 0132     		adds	r2, r2, #1
 329 0002 01EB4101 		add	r1, r1, r1, lsl #1
 330 0006 1144     		add	r1, r1, r2
 331 0008 00EBC100 		add	r0, r0, r1, lsl #3
 332 000c 7047     		bx	lr
 333              		.size	_ZN11FixedMatrixIdLj32ELj3EEclEjj, .-_ZN11FixedMatrixIdLj32ELj3EEclEjj
 334 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj9EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EEclEjj
 335              		.align	1
 336              		.p2align 2,,3
 337              		.weak	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 338              		.syntax unified
 339              		.thumb
 340              		.thumb_func
 341              		.fpu fpv4-sp-d16
 342              		.type	_ZN11FixedMatrixIdLj32ELj9EEclEjj, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 7


 343              	_ZN11FixedMatrixIdLj32ELj9EEclEjj:
 344              		@ args = 0, pretend = 0, frame = 0
 345              		@ frame_needed = 0, uses_anonymous_args = 0
 346              		@ link register save eliminated.
 347 0000 0132     		adds	r2, r2, #1
 348 0002 01EBC101 		add	r1, r1, r1, lsl #3
 349 0006 1144     		add	r1, r1, r2
 350 0008 00EBC100 		add	r0, r0, r1, lsl #3
 351 000c 7047     		bx	lr
 352              		.size	_ZN11FixedMatrixIdLj32ELj9EEclEjj, .-_ZN11FixedMatrixIdLj32ELj9EEclEjj
 353 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj9ELj10EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EEclEjj
 354              		.align	1
 355              		.p2align 2,,3
 356              		.weak	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 357              		.syntax unified
 358              		.thumb
 359              		.thumb_func
 360              		.fpu fpv4-sp-d16
 361              		.type	_ZN11FixedMatrixIdLj9ELj10EEclEjj, %function
 362              	_ZN11FixedMatrixIdLj9ELj10EEclEjj:
 363              		@ args = 0, pretend = 0, frame = 0
 364              		@ frame_needed = 0, uses_anonymous_args = 0
 365              		@ link register save eliminated.
 366 0000 0132     		adds	r2, r2, #1
 367 0002 01EB8101 		add	r1, r1, r1, lsl #2
 368 0006 02EB4101 		add	r1, r2, r1, lsl #1
 369 000a 00EBC100 		add	r0, r0, r1, lsl #3
 370 000e 7047     		bx	lr
 371              		.size	_ZN11FixedMatrixIdLj9ELj10EEclEjj, .-_ZN11FixedMatrixIdLj9ELj10EEclEjj
 372              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 373              		.align	1
 374              		.p2align 2,,3
 375              		.weak	_ZN11FixedMatrixIdLj9ELj10EED2Ev
 376              		.syntax unified
 377              		.thumb
 378              		.thumb_func
 379              		.fpu fpv4-sp-d16
 380              		.type	_ZN11FixedMatrixIdLj9ELj10EED2Ev, %function
 381              	_ZN11FixedMatrixIdLj9ELj10EED2Ev:
 382              		@ args = 0, pretend = 0, frame = 0
 383              		@ frame_needed = 0, uses_anonymous_args = 0
 384              		@ link register save eliminated.
 385 0000 7047     		bx	lr
 386              		.size	_ZN11FixedMatrixIdLj9ELj10EED2Ev, .-_ZN11FixedMatrixIdLj9ELj10EED2Ev
 387              		.weak	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 388              		.thumb_set _ZN11FixedMatrixIdLj9ELj10EED1Ev,_ZN11FixedMatrixIdLj9ELj10EED2Ev
 389 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj9EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 390              		.align	1
 391              		.p2align 2,,3
 392              		.weak	_ZN11FixedMatrixIdLj32ELj9EED2Ev
 393              		.syntax unified
 394              		.thumb
 395              		.thumb_func
 396              		.fpu fpv4-sp-d16
 397              		.type	_ZN11FixedMatrixIdLj32ELj9EED2Ev, %function
 398              	_ZN11FixedMatrixIdLj32ELj9EED2Ev:
 399              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 8


 400              		@ frame_needed = 0, uses_anonymous_args = 0
 401              		@ link register save eliminated.
 402 0000 7047     		bx	lr
 403              		.size	_ZN11FixedMatrixIdLj32ELj9EED2Ev, .-_ZN11FixedMatrixIdLj32ELj9EED2Ev
 404              		.weak	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 405              		.thumb_set _ZN11FixedMatrixIdLj32ELj9EED1Ev,_ZN11FixedMatrixIdLj32ELj9EED2Ev
 406 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj3EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 407              		.align	1
 408              		.p2align 2,,3
 409              		.weak	_ZN11FixedMatrixIdLj32ELj3EED2Ev
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu fpv4-sp-d16
 414              		.type	_ZN11FixedMatrixIdLj32ELj3EED2Ev, %function
 415              	_ZN11FixedMatrixIdLj32ELj3EED2Ev:
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418              		@ link register save eliminated.
 419 0000 7047     		bx	lr
 420              		.size	_ZN11FixedMatrixIdLj32ELj3EED2Ev, .-_ZN11FixedMatrixIdLj32ELj3EED2Ev
 421              		.weak	_ZN11FixedMatrixIdLj32ELj3EED1Ev
 422              		.thumb_set _ZN11FixedMatrixIdLj32ELj3EED1Ev,_ZN11FixedMatrixIdLj32ELj3EED2Ev
 423 0002 00BF     		.section	.text._ZN21LinearDeltaKinematicsD2Ev,"axG",%progbits,_ZN21LinearDeltaKinematicsD5Ev,comda
 424              		.align	1
 425              		.p2align 2,,3
 426              		.weak	_ZN21LinearDeltaKinematicsD2Ev
 427              		.syntax unified
 428              		.thumb
 429              		.thumb_func
 430              		.fpu fpv4-sp-d16
 431              		.type	_ZN21LinearDeltaKinematicsD2Ev, %function
 432              	_ZN21LinearDeltaKinematicsD2Ev:
 433              		@ args = 0, pretend = 0, frame = 0
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435              		@ link register save eliminated.
 436 0000 7047     		bx	lr
 437              		.size	_ZN21LinearDeltaKinematicsD2Ev, .-_ZN21LinearDeltaKinematicsD2Ev
 438              		.weak	_ZN21LinearDeltaKinematicsD1Ev
 439              		.thumb_set _ZN21LinearDeltaKinematicsD1Ev,_ZN21LinearDeltaKinematicsD2Ev
 440 0002 00BF     		.section	.text._ZNK11FixedMatrixIdLj9ELj10EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EE4
 441              		.align	1
 442              		.p2align 2,,3
 443              		.weak	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 444              		.syntax unified
 445              		.thumb
 446              		.thumb_func
 447              		.fpu fpv4-sp-d16
 448              		.type	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv, %function
 449              	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv:
 450              		@ args = 0, pretend = 0, frame = 0
 451              		@ frame_needed = 0, uses_anonymous_args = 0
 452              		@ link register save eliminated.
 453 0000 0920     		movs	r0, #9
 454 0002 7047     		bx	lr
 455              		.size	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv, .-_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 456              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EE4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 9


 457              		.align	1
 458              		.p2align 2,,3
 459              		.weak	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu fpv4-sp-d16
 464              		.type	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv, %function
 465              	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv:
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468              		@ link register save eliminated.
 469 0000 0A20     		movs	r0, #10
 470 0002 7047     		bx	lr
 471              		.size	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv, .-_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 472              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EEclE
 473              		.align	1
 474              		.p2align 2,,3
 475              		.weak	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 476              		.syntax unified
 477              		.thumb
 478              		.thumb_func
 479              		.fpu fpv4-sp-d16
 480              		.type	_ZNK11FixedMatrixIdLj9ELj10EEclEjj, %function
 481              	_ZNK11FixedMatrixIdLj9ELj10EEclEjj:
 482              		@ args = 0, pretend = 0, frame = 0
 483              		@ frame_needed = 0, uses_anonymous_args = 0
 484              		@ link register save eliminated.
 485 0000 0132     		adds	r2, r2, #1
 486 0002 01EB8101 		add	r1, r1, r1, lsl #2
 487 0006 02EB4101 		add	r1, r2, r1, lsl #1
 488 000a 00EBC100 		add	r0, r0, r1, lsl #3
 489 000e 7047     		bx	lr
 490              		.size	_ZNK11FixedMatrixIdLj9ELj10EEclEjj, .-_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 491              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EE4
 492              		.align	1
 493              		.p2align 2,,3
 494              		.weak	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu fpv4-sp-d16
 499              		.type	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv, %function
 500              	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv:
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 504 0000 2020     		movs	r0, #32
 505 0002 7047     		bx	lr
 506              		.size	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 507              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EE4
 508              		.align	1
 509              		.p2align 2,,3
 510              		.weak	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 10


 514              		.fpu fpv4-sp-d16
 515              		.type	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv, %function
 516              	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv:
 517              		@ args = 0, pretend = 0, frame = 0
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519              		@ link register save eliminated.
 520 0000 0920     		movs	r0, #9
 521 0002 7047     		bx	lr
 522              		.size	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 523              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EEclE
 524              		.align	1
 525              		.p2align 2,,3
 526              		.weak	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 527              		.syntax unified
 528              		.thumb
 529              		.thumb_func
 530              		.fpu fpv4-sp-d16
 531              		.type	_ZNK11FixedMatrixIdLj32ELj9EEclEjj, %function
 532              	_ZNK11FixedMatrixIdLj32ELj9EEclEjj:
 533              		@ args = 0, pretend = 0, frame = 0
 534              		@ frame_needed = 0, uses_anonymous_args = 0
 535              		@ link register save eliminated.
 536 0000 0132     		adds	r2, r2, #1
 537 0002 01EBC101 		add	r1, r1, r1, lsl #3
 538 0006 1144     		add	r1, r1, r2
 539 0008 00EBC100 		add	r0, r0, r1, lsl #3
 540 000c 7047     		bx	lr
 541              		.size	_ZNK11FixedMatrixIdLj32ELj9EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 542 000e 00BF     		.section	.text._ZNK11FixedMatrixIdLj32ELj3EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EE4
 543              		.align	1
 544              		.p2align 2,,3
 545              		.weak	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv
 546              		.syntax unified
 547              		.thumb
 548              		.thumb_func
 549              		.fpu fpv4-sp-d16
 550              		.type	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv, %function
 551              	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv:
 552              		@ args = 0, pretend = 0, frame = 0
 553              		@ frame_needed = 0, uses_anonymous_args = 0
 554              		@ link register save eliminated.
 555 0000 2020     		movs	r0, #32
 556 0002 7047     		bx	lr
 557              		.size	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv
 558              		.section	.text._ZNK11FixedMatrixIdLj32ELj3EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EE4
 559              		.align	1
 560              		.p2align 2,,3
 561              		.weak	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv
 562              		.syntax unified
 563              		.thumb
 564              		.thumb_func
 565              		.fpu fpv4-sp-d16
 566              		.type	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv, %function
 567              	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv:
 568              		@ args = 0, pretend = 0, frame = 0
 569              		@ frame_needed = 0, uses_anonymous_args = 0
 570              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 11


 571 0000 0320     		movs	r0, #3
 572 0002 7047     		bx	lr
 573              		.size	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj3EE4colsEv
 574              		.section	.text._ZNK11FixedMatrixIdLj32ELj3EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EEclE
 575              		.align	1
 576              		.p2align 2,,3
 577              		.weak	_ZNK11FixedMatrixIdLj32ELj3EEclEjj
 578              		.syntax unified
 579              		.thumb
 580              		.thumb_func
 581              		.fpu fpv4-sp-d16
 582              		.type	_ZNK11FixedMatrixIdLj32ELj3EEclEjj, %function
 583              	_ZNK11FixedMatrixIdLj32ELj3EEclEjj:
 584              		@ args = 0, pretend = 0, frame = 0
 585              		@ frame_needed = 0, uses_anonymous_args = 0
 586              		@ link register save eliminated.
 587 0000 0132     		adds	r2, r2, #1
 588 0002 01EB4101 		add	r1, r1, r1, lsl #1
 589 0006 1144     		add	r1, r1, r2
 590 0008 00EBC100 		add	r0, r0, r1, lsl #3
 591 000c 7047     		bx	lr
 592              		.size	_ZNK11FixedMatrixIdLj32ELj3EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj3EEclEjj
 593 000e 00BF     		.section	.text._ZNK21LinearDeltaKinematics13LimitPositionEPfjmb,"ax",%progbits
 594              		.align	1
 595              		.p2align 2,,3
 596              		.global	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb
 597              		.syntax unified
 598              		.thumb
 599              		.thumb_func
 600              		.fpu fpv4-sp-d16
 601              		.type	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb, %function
 602              	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb:
 603              		@ args = 4, pretend = 0, frame = 16
 604              		@ frame_needed = 0, uses_anonymous_args = 0
 605 0000 30B5     		push	{r4, r5, lr}
 606 0002 2DED048B 		vpush.64	{d8, d9}
 607 0006 03F00705 		and	r5, r3, #7
 608 000a 072D     		cmp	r5, #7
 609 000c 1C46     		mov	r4, r3
 610 000e 87B0     		sub	sp, sp, #28
 611 0010 1346     		mov	r3, r2
 612 0012 0BD0     		beq	.L81
 613 0014 0025     		movs	r5, #0
 614              	.L62:
 615 0016 0094     		str	r4, [sp]
 616 0018 0322     		movs	r2, #3
 617 001a FFF7FEFF 		bl	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm
 618 001e 0028     		cmp	r0, #0
 619 0020 08BF     		it	eq
 620 0022 2846     		moveq	r0, r5
 621 0024 07B0     		add	sp, sp, #28
 622              		@ sp needed
 623 0026 BDEC048B 		vldm	sp!, {d8-d9}
 624 002a 30BD     		pop	{r4, r5, pc}
 625              	.L81:
 626 002c 91ED017A 		vldr.32	s14, [r1, #4]
 627 0030 D1ED007A 		vldr.32	s15, [r1]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 12


 628 0034 D0ED166A 		vldr.32	s13, [r0, #88]
 629 0038 27EE078A 		vmul.f32	s16, s14, s14
 630 003c A7EEA78A 		vfma.f32	s16, s15, s15
 631 0040 F4EEC86A 		vcmpe.f32	s13, s16
 632 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 633 0048 11D4     		bmi	.L82
 634 004a 0025     		movs	r5, #0
 635              	.L63:
 636 004c 384A     		ldr	r2, .L86
 637 004e 91ED027A 		vldr.32	s14, [r1, #8]
 638 0052 5268     		ldr	r2, [r2, #4]	@ unaligned
 639 0054 02F5F962 		add	r2, r2, #1992
 640 0058 D2ED007A 		vldr.32	s15, [r2]
 641 005c B4EEE77A 		vcmpe.f32	s14, s15
 642 0060 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 643 0064 16D5     		bpl	.L78
 644              	.L80:
 645 0066 C1ED027A 		vstr.32	s15, [r1, #8]
 646 006a 0125     		movs	r5, #1
 647 006c D3E7     		b	.L62
 648              	.L82:
 649 006e 86EE880A 		vdiv.f32	s0, s13, s16
 650 0072 B5EE400A 		vcmp.f32	s0, #0
 651 0076 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 652 007a F1EEC08A 		vsqrt.f32	s17, s0
 653 007e 2BD4     		bmi	.L83
 654              	.L65:
 655 0080 0125     		movs	r5, #1
 656 0082 68EEA77A 		vmul.f32	s15, s17, s15
 657 0086 28EE877A 		vmul.f32	s14, s17, s14
 658 008a C1ED007A 		vstr.32	s15, [r1]
 659 008e 81ED017A 		vstr.32	s14, [r1, #4]
 660 0092 DBE7     		b	.L63
 661              	.L78:
 662 0094 B5EE408A 		vcmp.f32	s16, #0
 663 0098 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 664 009c 90ED179A 		vldr.32	s18, [r0, #92]
 665 00a0 D0ED238A 		vldr.32	s17, [r0, #140]
 666 00a4 D0ED057A 		vldr.32	s15, [r0, #20]
 667 00a8 F1EEC89A 		vsqrt.f32	s19, s16
 668 00ac 30D4     		bmi	.L84
 669              	.L68:
 670 00ae 77EEE97A 		vsub.f32	s15, s15, s19
 671 00b2 E7EEE78A 		vfms.f32	s17, s15, s15
 672 00b6 F5EE408A 		vcmp.f32	s17, #0
 673 00ba F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 674 00be F1EEE87A 		vsqrt.f32	s15, s17
 675 00c2 16D4     		bmi	.L85
 676              	.L69:
 677 00c4 79EE677A 		vsub.f32	s15, s18, s15
 678 00c8 91ED027A 		vldr.32	s14, [r1, #8]
 679 00cc B4EEE77A 		vcmpe.f32	s14, s15
 680 00d0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 681 00d4 9FDD     		ble	.L62
 682 00d6 C6E7     		b	.L80
 683              	.L83:
 684 00d8 CDE90312 		strd	r1, r2, [sp, #12]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 13


 685 00dc 0290     		str	r0, [sp, #8]
 686 00de FFF7FEFF 		bl	sqrtf
 687 00e2 0399     		ldr	r1, [sp, #12]
 688 00e4 049B     		ldr	r3, [sp, #16]
 689 00e6 D1ED007A 		vldr.32	s15, [r1]
 690 00ea 91ED017A 		vldr.32	s14, [r1, #4]
 691 00ee 0298     		ldr	r0, [sp, #8]
 692 00f0 C6E7     		b	.L65
 693              	.L85:
 694 00f2 B0EE680A 		vmov.f32	s0, s17
 695 00f6 CDE90413 		strd	r1, r3, [sp, #16]
 696 00fa 0390     		str	r0, [sp, #12]
 697 00fc CDED027A 		vstr.32	s15, [sp, #8]	@ int
 698 0100 FFF7FEFF 		bl	sqrtf
 699 0104 DDE90413 		ldrd	r1, r3, [sp, #16]
 700 0108 0398     		ldr	r0, [sp, #12]
 701 010a DDED027A 		vldr.32	s15, [sp, #8]	@ int
 702 010e D9E7     		b	.L69
 703              	.L84:
 704 0110 B0EE480A 		vmov.f32	s0, s16
 705 0114 CDE90413 		strd	r1, r3, [sp, #16]
 706 0118 0390     		str	r0, [sp, #12]
 707 011a CDED027A 		vstr.32	s15, [sp, #8]	@ int
 708 011e FFF7FEFF 		bl	sqrtf
 709 0122 DDE90413 		ldrd	r1, r3, [sp, #16]
 710 0126 0398     		ldr	r0, [sp, #12]
 711 0128 DDED027A 		vldr.32	s15, [sp, #8]	@ int
 712 012c BFE7     		b	.L68
 713              	.L87:
 714 012e 00BF     		.align	2
 715              	.L86:
 716 0130 00000000 		.word	reprap
 717              		.size	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb, .-_ZNK21LinearDeltaKinematics13LimitPositi
 718              		.section	.text._ZN21LinearDeltaKinematicsD0Ev,"axG",%progbits,_ZN21LinearDeltaKinematicsD5Ev,comda
 719              		.align	1
 720              		.p2align 2,,3
 721              		.weak	_ZN21LinearDeltaKinematicsD0Ev
 722              		.syntax unified
 723              		.thumb
 724              		.thumb_func
 725              		.fpu fpv4-sp-d16
 726              		.type	_ZN21LinearDeltaKinematicsD0Ev, %function
 727              	_ZN21LinearDeltaKinematicsD0Ev:
 728              		@ args = 0, pretend = 0, frame = 0
 729              		@ frame_needed = 0, uses_anonymous_args = 0
 730 0000 10B5     		push	{r4, lr}
 731 0002 9421     		movs	r1, #148
 732 0004 0446     		mov	r4, r0
 733 0006 FFF7FEFF 		bl	_ZdlPvj
 734 000a 2046     		mov	r0, r4
 735 000c 10BD     		pop	{r4, pc}
 736              		.size	_ZN21LinearDeltaKinematicsD0Ev, .-_ZN21LinearDeltaKinematicsD0Ev
 737 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 738              		.align	1
 739              		.p2align 2,,3
 740              		.weak	_ZN11FixedMatrixIdLj32ELj3EED0Ev
 741              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 14


 742              		.thumb
 743              		.thumb_func
 744              		.fpu fpv4-sp-d16
 745              		.type	_ZN11FixedMatrixIdLj32ELj3EED0Ev, %function
 746              	_ZN11FixedMatrixIdLj32ELj3EED0Ev:
 747              		@ args = 0, pretend = 0, frame = 0
 748              		@ frame_needed = 0, uses_anonymous_args = 0
 749 0000 10B5     		push	{r4, lr}
 750 0002 4FF44271 		mov	r1, #776
 751 0006 0446     		mov	r4, r0
 752 0008 FFF7FEFF 		bl	_ZdlPvj
 753 000c 2046     		mov	r0, r4
 754 000e 10BD     		pop	{r4, pc}
 755              		.size	_ZN11FixedMatrixIdLj32ELj3EED0Ev, .-_ZN11FixedMatrixIdLj32ELj3EED0Ev
 756              		.section	.text._ZN11FixedMatrixIdLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 757              		.align	1
 758              		.p2align 2,,3
 759              		.weak	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 760              		.syntax unified
 761              		.thumb
 762              		.thumb_func
 763              		.fpu fpv4-sp-d16
 764              		.type	_ZN11FixedMatrixIdLj32ELj9EED0Ev, %function
 765              	_ZN11FixedMatrixIdLj32ELj9EED0Ev:
 766              		@ args = 0, pretend = 0, frame = 0
 767              		@ frame_needed = 0, uses_anonymous_args = 0
 768 0000 10B5     		push	{r4, lr}
 769 0002 40F60811 		movw	r1, #2312
 770 0006 0446     		mov	r4, r0
 771 0008 FFF7FEFF 		bl	_ZdlPvj
 772 000c 2046     		mov	r0, r4
 773 000e 10BD     		pop	{r4, pc}
 774              		.size	_ZN11FixedMatrixIdLj32ELj9EED0Ev, .-_ZN11FixedMatrixIdLj32ELj9EED0Ev
 775              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 776              		.align	1
 777              		.p2align 2,,3
 778              		.weak	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 779              		.syntax unified
 780              		.thumb
 781              		.thumb_func
 782              		.fpu fpv4-sp-d16
 783              		.type	_ZN11FixedMatrixIdLj9ELj10EED0Ev, %function
 784              	_ZN11FixedMatrixIdLj9ELj10EED0Ev:
 785              		@ args = 0, pretend = 0, frame = 0
 786              		@ frame_needed = 0, uses_anonymous_args = 0
 787 0000 10B5     		push	{r4, lr}
 788 0002 4FF43671 		mov	r1, #728
 789 0006 0446     		mov	r4, r0
 790 0008 FFF7FEFF 		bl	_ZdlPvj
 791 000c 2046     		mov	r0, r4
 792 000e 10BD     		pop	{r4, pc}
 793              		.size	_ZN11FixedMatrixIdLj9ELj10EED0Ev, .-_ZN11FixedMatrixIdLj9ELj10EED0Ev
 794              		.section	.text._ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
 795              		.align	1
 796              		.p2align 2,,3
 797              		.global	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRK9StringRef
 798              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 15


 799              		.thumb
 800              		.thumb_func
 801              		.fpu fpv4-sp-d16
 802              		.type	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRK9StringRef, %function
 803              	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRK9StringRef:
 804              		@ args = 4, pretend = 0, frame = 0
 805              		@ frame_needed = 0, uses_anonymous_args = 0
 806 0000 10B5     		push	{r4, lr}
 807 0002 11F0070F 		tst	r1, #7
 808 0006 029C     		ldr	r4, [sp, #8]
 809 0008 03D1     		bne	.L100
 810 000a BDE81040 		pop	{r4, lr}
 811 000e FFF7FEBF 		b	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 812              	.L100:
 813 0012 2046     		mov	r0, r4
 814 0014 0249     		ldr	r1, .L102
 815 0016 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 816 001a 0020     		movs	r0, #0
 817 001c 10BD     		pop	{r4, pc}
 818              	.L103:
 819 001e 00BF     		.align	2
 820              	.L102:
 821 0020 00000000 		.word	.LC4
 822              		.size	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK21LinearDeltaKinematic
 823              		.section	.text._ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 824              		.align	1
 825              		.p2align 2,,3
 826              		.global	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf
 827              		.syntax unified
 828              		.thumb
 829              		.thumb_func
 830              		.fpu fpv4-sp-d16
 831              		.type	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 832              	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 833              		@ args = 0, pretend = 0, frame = 8
 834              		@ frame_needed = 0, uses_anonymous_args = 0
 835 0000 92ED010A 		vldr.32	s0, [r2, #4]
 836 0004 D2ED007A 		vldr.32	s15, [r2]
 837 0008 00B5     		push	{lr}
 838 000a 20EE000A 		vmul.f32	s0, s0, s0
 839 000e 2DED028B 		vpush.64	{d8}
 840 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 841 0016 83B0     		sub	sp, sp, #12
 842 0018 B5EE400A 		vcmp.f32	s0, #0
 843 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 844 0020 B1EEC08A 		vsqrt.f32	s16, s0
 845 0024 39D4     		bmi	.L113
 846              	.L105:
 847 0026 DFED1F7A 		vldr.32	s15, .L114
 848 002a B4EEE78A 		vcmpe.f32	s16, s15
 849 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 850 0032 2DDD     		ble	.L111
 851 0034 1C4B     		ldr	r3, .L114+4
 852 0036 5B68     		ldr	r3, [r3, #4]
 853 0038 93ED5F0A 		vldr.32	s0, [r3, #380]
 854 003c D3ED607A 		vldr.32	s15, [r3, #384]
 855 0040 B4EE400A 		vcmp.f32	s0, s0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 16


 856 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 857 0048 06D6     		bvs	.L108
 858 004a B4EEE70A 		vcmpe.f32	s0, s15
 859 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 860 0052 58BF     		it	pl
 861 0054 B0EE670A 		vmovpl.f32	s0, s15
 862              	.L108:
 863 0058 D3ED6B0A 		vldr.32	s1, [r3, #428]
 864 005c D3ED6C7A 		vldr.32	s15, [r3, #432]
 865 0060 F4EE600A 		vcmp.f32	s1, s1
 866 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 867 0068 06D6     		bvs	.L109
 868 006a F4EEE70A 		vcmpe.f32	s1, s15
 869 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 870 0072 58BF     		it	pl
 871 0074 F0EE670A 		vmovpl.f32	s1, s15
 872              	.L109:
 873 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 874 007c 0846     		mov	r0, r1
 875 007e 80EE080A 		vdiv.f32	s0, s0, s16
 876 0082 03B0     		add	sp, sp, #12
 877              		@ sp needed
 878 0084 BDEC028B 		vldm	sp!, {d8}
 879 0088 5DF804EB 		ldr	lr, [sp], #4
 880 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 881              	.L111:
 882 0090 03B0     		add	sp, sp, #12
 883              		@ sp needed
 884 0092 BDEC028B 		vldm	sp!, {d8}
 885 0096 5DF804FB 		ldr	pc, [sp], #4
 886              	.L113:
 887 009a 0191     		str	r1, [sp, #4]
 888 009c FFF7FEFF 		bl	sqrtf
 889 00a0 0199     		ldr	r1, [sp, #4]
 890 00a2 C0E7     		b	.L105
 891              	.L115:
 892              		.align	2
 893              	.L114:
 894 00a4 0AD7233C 		.word	1008981770
 895 00a8 00000000 		.word	reprap
 896              		.size	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21LinearDeltaKinemati
 897              		.section	.text._ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 898              		.align	1
 899              		.p2align 2,,3
 900              		.global	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore
 901              		.syntax unified
 902              		.thumb
 903              		.thumb_func
 904              		.fpu fpv4-sp-d16
 905              		.type	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore, %function
 906              	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore:
 907              		@ args = 0, pretend = 0, frame = 0
 908              		@ frame_needed = 0, uses_anonymous_args = 0
 909              		@ link register save eliminated.
 910 0000 90F89020 		ldrb	r2, [r0, #144]	@ zero_extendqisi2
 911 0004 0AB9     		cbnz	r2, .L118
 912 0006 0120     		movs	r0, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 17


 913 0008 7047     		bx	lr
 914              	.L118:
 915 000a 0368     		ldr	r3, [r0]
 916 000c DB69     		ldr	r3, [r3, #28]
 917 000e 1847     		bx	r3
 918              		.size	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK21LinearDeltaKinematics1
 919              		.section	.text._ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 920              		.align	1
 921              		.p2align 2,,3
 922              		.global	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 923              		.syntax unified
 924              		.thumb
 925              		.thumb_func
 926              		.fpu fpv4-sp-d16
 927              		.type	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 928              	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 929              		@ args = 4, pretend = 0, frame = 0
 930              		@ frame_needed = 0, uses_anonymous_args = 0
 931 0000 70B5     		push	{r4, r5, r6, lr}
 932 0002 0229     		cmp	r1, #2
 933 0004 0C46     		mov	r4, r1
 934 0006 049D     		ldr	r5, [sp, #16]
 935 0008 01D8     		bhi	.L120
 936 000a 02BB     		cbnz	r2, .L128
 937 000c 70BD     		pop	{r4, r5, r6, pc}
 938              	.L120:
 939 000e 1C49     		ldr	r1, .L130
 940 0010 4968     		ldr	r1, [r1, #4]
 941 0012 AAB9     		cbnz	r2, .L129
 942 0014 04F5F872 		add	r2, r4, #496
 943 0018 01EB8201 		add	r1, r1, r2, lsl #2
 944 001c 91ED000A 		vldr.32	s0, [r1]
 945              	.L123:
 946 0020 03EB8403 		add	r3, r3, r4, lsl #2
 947 0024 D3ED007A 		vldr.32	s15, [r3]
 948 0028 20EE270A 		vmul.f32	s0, s0, s15
 949 002c FFF7FEFF 		bl	lrintf
 950 0030 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 951 0032 0834     		adds	r4, r4, #8
 952 0034 6FF30003 		bfc	r3, #0, #1
 953 0038 45F82400 		str	r0, [r5, r4, lsl #2]
 954 003c AB72     		strb	r3, [r5, #10]
 955 003e 70BD     		pop	{r4, r5, r6, pc}
 956              	.L129:
 957 0040 04F5F372 		add	r2, r4, #486
 958 0044 01EB8201 		add	r1, r1, r2, lsl #2
 959 0048 91ED010A 		vldr.32	s0, [r1, #4]
 960 004c E8E7     		b	.L123
 961              	.L128:
 962 004e 01F10806 		add	r6, r1, #8
 963 0052 00EB8602 		add	r2, r0, r6, lsl #2
 964 0056 92ED010A 		vldr.32	s0, [r2, #4]
 965 005a D0ED177A 		vldr.32	s15, [r0, #92]
 966 005e 03EB8103 		add	r3, r3, r1, lsl #2
 967 0062 77EE807A 		vadd.f32	s15, s15, s0
 968 0066 93ED000A 		vldr.32	s0, [r3]
 969 006a 27EE800A 		vmul.f32	s0, s15, s0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 18


 970 006e FFF7FEFF 		bl	lrintf
 971 0072 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 972 0074 45F82600 		str	r0, [r5, r6, lsl #2]
 973 0078 6FF30003 		bfc	r3, #0, #1
 974 007c AB72     		strb	r3, [r5, #10]
 975 007e 70BD     		pop	{r4, r5, r6, pc}
 976              	.L131:
 977              		.align	2
 978              	.L130:
 979 0080 00000000 		.word	reprap
 980              		.size	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK21LinearDeltaKinemati
 981              		.section	.text._ZNK21LinearDeltaKinematics9TransformEPKfj.part.7,"ax",%progbits
 982              		.align	1
 983              		.p2align 2,,3
 984              		.syntax unified
 985              		.thumb
 986              		.thumb_func
 987              		.fpu fpv4-sp-d16
 988              		.type	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7, %function
 989              	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7:
 990              		@ args = 0, pretend = 0, frame = 8
 991              		@ frame_needed = 0, uses_anonymous_args = 0
 992 0000 00EB8202 		add	r2, r0, r2, lsl #2
 993 0004 D2ED106A 		vldr.32	s13, [r2, #64]
 994 0008 D1ED005A 		vldr.32	s11, [r1]
 995 000c D0ED237A 		vldr.32	s15, [r0, #140]
 996 0010 92ED137A 		vldr.32	s14, [r2, #76]
 997 0014 91ED016A 		vldr.32	s12, [r1, #4]
 998 0018 75EEE66A 		vsub.f32	s13, s11, s13
 999 001c 00B5     		push	{lr}
 1000 001e E6EEE67A 		vfms.f32	s15, s13, s13
 1001 0022 36EE477A 		vsub.f32	s14, s12, s14
 1002 0026 2DED028B 		vpush.64	{d8}
 1003 002a E7EE477A 		vfms.f32	s15, s14, s14
 1004 002e 83B0     		sub	sp, sp, #12
 1005 0030 F5EE407A 		vcmp.f32	s15, #0
 1006 0034 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1007 0038 B1EEE78A 		vsqrt.f32	s16, s15
 1008 003c 10D4     		bmi	.L135
 1009              	.L133:
 1010 003e 91ED020A 		vldr.32	s0, [r1, #8]
 1011 0042 90ED0E7A 		vldr.32	s14, [r0, #56]
 1012 0046 D0ED0F7A 		vldr.32	s15, [r0, #60]
 1013 004a 38EE000A 		vadd.f32	s0, s16, s0
 1014 004e A7EE250A 		vfma.f32	s0, s14, s11
 1015 0052 A7EE860A 		vfma.f32	s0, s15, s12
 1016 0056 03B0     		add	sp, sp, #12
 1017              		@ sp needed
 1018 0058 BDEC028B 		vldm	sp!, {d8}
 1019 005c 5DF804FB 		ldr	pc, [sp], #4
 1020              	.L135:
 1021 0060 B0EE670A 		vmov.f32	s0, s15
 1022 0064 CDE90001 		strd	r0, r1, [sp]
 1023 0068 FFF7FEFF 		bl	sqrtf
 1024 006c 0199     		ldr	r1, [sp, #4]
 1025 006e 0098     		ldr	r0, [sp]
 1026 0070 D1ED005A 		vldr.32	s11, [r1]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 19


 1027 0074 91ED016A 		vldr.32	s12, [r1, #4]
 1028 0078 E1E7     		b	.L133
 1029              		.size	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7, .-_ZNK21LinearDeltaKinematics9TransformEP
 1030 007a 00BF     		.section	.text._ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 1031              		.align	1
 1032              		.p2align 2,,3
 1033              		.global	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 1034              		.syntax unified
 1035              		.thumb
 1036              		.thumb_func
 1037              		.fpu fpv4-sp-d16
 1038              		.type	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 1039              	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 1040              		@ args = 12, pretend = 0, frame = 0
 1041              		@ frame_needed = 0, uses_anonymous_args = 0
 1042 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1043 0004 2DED028B 		vpush.64	{d8}
 1044 0008 032B     		cmp	r3, #3
 1045 000a 0D9E     		ldr	r6, [sp, #52]
 1046 000c 9FED238A 		vldr.32	s16, .L152
 1047 0010 9A46     		mov	r10, r3
 1048 0012 9946     		mov	r9, r3
 1049 0014 8346     		mov	fp, r0
 1050 0016 0C46     		mov	r4, r1
 1051 0018 1746     		mov	r7, r2
 1052 001a 28BF     		it	cs
 1053 001c 4FF0030A 		movcs	r10, #3
 1054 0020 0025     		movs	r5, #0
 1055 0022 4FF00108 		mov	r8, #1
 1056              	.L140:
 1057 0026 AA45     		cmp	r10, r5
 1058 0028 18D1     		bne	.L150
 1059 002a B9F1030F 		cmp	r9, #3
 1060 002e 10D9     		bls	.L147
 1061 0030 04EB8909 		add	r9, r4, r9, lsl #2
 1062 0034 0C37     		adds	r7, r7, #12
 1063 0036 0836     		adds	r6, r6, #8
 1064 0038 0C34     		adds	r4, r4, #12
 1065              	.L143:
 1066 003a B4EC010A 		vldmia.32	r4!, {s0}
 1067 003e F7EC017A 		vldmia.32	r7!, {s15}
 1068 0042 20EE270A 		vmul.f32	s0, s0, s15
 1069 0046 FFF7FEFF 		bl	lrintf
 1070 004a 4C45     		cmp	r4, r9
 1071 004c 46F8040F 		str	r0, [r6, #4]!
 1072 0050 F3D1     		bne	.L143
 1073              	.L147:
 1074 0052 BDEC028B 		vldm	sp!, {d8}
 1075 0056 4046     		mov	r0, r8
 1076 0058 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1077              	.L150:
 1078 005c 2A46     		mov	r2, r5
 1079 005e 2146     		mov	r1, r4
 1080 0060 5846     		mov	r0, fp
 1081 0062 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 1082 0066 B4EE400A 		vcmp.f32	s0, s0
 1083 006a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 20


 1084 006e F0EEC07A 		vabs.f32	s15, s0
 1085 0072 04D6     		bvs	.L148
 1086 0074 F4EE487A 		vcmp.f32	s15, s16
 1087 0078 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1088 007c 03DD     		ble	.L151
 1089              	.L148:
 1090 007e 4FF00008 		mov	r8, #0
 1091              	.L138:
 1092 0082 0135     		adds	r5, r5, #1
 1093 0084 CFE7     		b	.L140
 1094              	.L151:
 1095 0086 07EB8503 		add	r3, r7, r5, lsl #2
 1096 008a D3ED007A 		vldr.32	s15, [r3]
 1097 008e 20EE270A 		vmul.f32	s0, s0, s15
 1098 0092 FFF7FEFF 		bl	lrintf
 1099 0096 46F82500 		str	r0, [r6, r5, lsl #2]
 1100 009a F2E7     		b	.L138
 1101              	.L153:
 1102              		.align	2
 1103              	.L152:
 1104 009c FFFF7F7F 		.word	2139095039
 1105              		.size	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21LinearDeltaKinematic
 1106              		.section	.text._ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv,"ax",%progbits
 1107              		.align	1
 1108              		.p2align 2,,3
 1109              		.global	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv
 1110              		.syntax unified
 1111              		.thumb
 1112              		.thumb_func
 1113              		.fpu fpv4-sp-d16
 1114              		.type	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv, %function
 1115              	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv:
 1116              		@ args = 0, pretend = 0, frame = 0
 1117              		@ frame_needed = 0, uses_anonymous_args = 0
 1118              		@ link register save eliminated.
 1119 0000 90ED096A 		vldr.32	s12, [r0, #36]
 1120 0004 D0ED0A6A 		vldr.32	s13, [r0, #40]
 1121 0008 90ED0B7A 		vldr.32	s14, [r0, #44]
 1122 000c 90ED0D5A 		vldr.32	s10, [r0, #52]
 1123 0010 D0ED175A 		vldr.32	s11, [r0, #92]
 1124 0014 76EE264A 		vadd.f32	s9, s12, s13
 1125 0018 B0EE084A 		vmov.f32	s8, #3.0e+0
 1126 001c 74EE874A 		vadd.f32	s9, s9, s14
 1127 0020 C4EE847A 		vdiv.f32	s15, s9, s8
 1128 0024 36EE676A 		vsub.f32	s12, s12, s15
 1129 0028 76EEE76A 		vsub.f32	s13, s13, s15
 1130 002c 37EE677A 		vsub.f32	s14, s14, s15
 1131 0030 35EE275A 		vadd.f32	s10, s10, s15
 1132 0034 75EEA77A 		vadd.f32	s15, s11, s15
 1133 0038 80ED096A 		vstr.32	s12, [r0, #36]
 1134 003c C0ED0A6A 		vstr.32	s13, [r0, #40]
 1135 0040 80ED0B7A 		vstr.32	s14, [r0, #44]
 1136 0044 80ED0D5A 		vstr.32	s10, [r0, #52]
 1137 0048 C0ED177A 		vstr.32	s15, [r0, #92]
 1138 004c 7047     		bx	lr
 1139              		.size	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv, .-_ZN21LinearDeltaKinematics27Nor
 1140 004e 00BF     		.section	.text._ZNK21LinearDeltaKinematics9TransformEPKfj,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 21


 1141              		.align	1
 1142              		.p2align 2,,3
 1143              		.global	_ZNK21LinearDeltaKinematics9TransformEPKfj
 1144              		.syntax unified
 1145              		.thumb
 1146              		.thumb_func
 1147              		.fpu fpv4-sp-d16
 1148              		.type	_ZNK21LinearDeltaKinematics9TransformEPKfj, %function
 1149              	_ZNK21LinearDeltaKinematics9TransformEPKfj:
 1150              		@ args = 0, pretend = 0, frame = 0
 1151              		@ frame_needed = 0, uses_anonymous_args = 0
 1152              		@ link register save eliminated.
 1153 0000 022A     		cmp	r2, #2
 1154 0002 07D9     		bls	.L159
 1155 0004 10B4     		push	{r4}
 1156 0006 01EB8203 		add	r3, r1, r2, lsl #2
 1157 000a 93ED000A 		vldr.32	s0, [r3]
 1158 000e 5DF8044B 		ldr	r4, [sp], #4
 1159 0012 7047     		bx	lr
 1160              	.L159:
 1161 0014 FFF7FEBF 		b	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 1162              		.size	_ZNK21LinearDeltaKinematics9TransformEPKfj, .-_ZNK21LinearDeltaKinematics9TransformEPKfj
 1163              		.section	.text._ZNK21LinearDeltaKinematics16ForwardTransformEfffPf,"ax",%progbits
 1164              		.align	1
 1165              		.p2align 2,,3
 1166              		.global	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf
 1167              		.syntax unified
 1168              		.thumb
 1169              		.thumb_func
 1170              		.fpu fpv4-sp-d16
 1171              		.type	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf, %function
 1172              	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf:
 1173              		@ args = 0, pretend = 0, frame = 8
 1174              		@ frame_needed = 0, uses_anonymous_args = 0
 1175 0000 00B5     		push	{lr}
 1176 0002 2DED088B 		vpush.64	{d8, d9, d10, d11}
 1177 0006 D0ED1F9A 		vldr.32	s19, [r0, #124]
 1178 000a 90ED199A 		vldr.32	s18, [r0, #100]
 1179 000e D0ED1E3A 		vldr.32	s7, [r0, #120]
 1180 0012 D0ED181A 		vldr.32	s3, [r0, #96]
 1181 0016 D0ED1C7A 		vldr.32	s15, [r0, #112]
 1182 001a 90ED1B2A 		vldr.32	s4, [r0, #108]
 1183 001e 90ED204A 		vldr.32	s8, [r0, #128]
 1184 0022 D0ED1A2A 		vldr.32	s5, [r0, #104]
 1185 0026 90ED1D3A 		vldr.32	s6, [r0, #116]
 1186 002a D0ED216A 		vldr.32	s13, [r0, #132]
 1187 002e 90ED135A 		vldr.32	s10, [r0, #76]
 1188 0032 D0ED104A 		vldr.32	s9, [r0, #64]
 1189 0036 90ED226A 		vldr.32	s12, [r0, #136]
 1190 003a E0EEA09A 		vfma.f32	s19, s1, s1
 1191 003e 83B0     		sub	sp, sp, #12
 1192 0040 29EE207A 		vmul.f32	s14, s18, s1
 1193 0044 E0EE003A 		vfma.f32	s7, s0, s0
 1194 0048 A1EE807A 		vfma.f32	s14, s3, s0
 1195 004c 29EE299A 		vmul.f32	s18, s18, s19
 1196 0050 27EEA08A 		vmul.f32	s16, s15, s1
 1197 0054 A1EE014A 		vfma.f32	s8, s2, s2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 22


 1198 0058 67EEA99A 		vmul.f32	s19, s15, s19
 1199 005c A2EE008A 		vfma.f32	s16, s4, s0
 1200 0060 A1EEA39A 		vfma.f32	s18, s3, s7
 1201 0064 F0EE477A 		vmov.f32	s15, s14
 1202 0068 E2EE817A 		vfma.f32	s15, s5, s2
 1203 006c E2EE239A 		vfma.f32	s19, s4, s7
 1204 0070 A2EE849A 		vfma.f32	s18, s5, s8
 1205 0074 A3EE018A 		vfma.f32	s16, s6, s2
 1206 0078 77EEA7AA 		vadd.f32	s21, s15, s15
 1207 007c E3EE049A 		vfma.f32	s19, s6, s8
 1208 0080 38EE088A 		vadd.f32	s16, s16, s16
 1209 0084 69EE2A8A 		vmul.f32	s17, s18, s21
 1210 0088 B1EE667A 		vneg.f32	s14, s13
 1211 008c F0EE497A 		vmov.f32	s15, s18
 1212 0090 E7EE057A 		vfma.f32	s15, s14, s10
 1213 0094 E9EE888A 		vfma.f32	s17, s19, s16
 1214 0098 B0EE694A 		vmov.f32	s8, s19
 1215 009c A4EEA64A 		vfma.f32	s8, s9, s13
 1216 00a0 F0EE405A 		vmov.f32	s11, s0
 1217 00a4 E6EE008A 		vfma.f32	s17, s12, s0
 1218 00a8 27EEA70A 		vmul.f32	s0, s15, s15
 1219 00ac D0ED237A 		vldr.32	s15, [r0, #140]
 1220 00b0 64EE884A 		vmul.f32	s9, s9, s16
 1221 00b4 A4EE040A 		vfma.f32	s0, s8, s8
 1222 00b8 D5EEA57A 		vfnms.f32	s15, s11, s11
 1223 00bc 28EE08AA 		vmul.f32	s20, s16, s16
 1224 00c0 E4EEA68A 		vfma.f32	s17, s9, s13
 1225 00c4 AAEEAAAA 		vfma.f32	s20, s21, s21
 1226 00c8 25EE2A5A 		vmul.f32	s10, s10, s21
 1227 00cc A6EE270A 		vfma.f32	s0, s12, s15
 1228 00d0 E7EE058A 		vfma.f32	s17, s14, s10
 1229 00d4 3AEE06AA 		vadd.f32	s20, s20, s12
 1230 00d8 2AEE400A 		vnmul.f32	s0, s20, s0
 1231 00dc A8EEA80A 		vfma.f32	s0, s17, s17
 1232 00e0 B5EE400A 		vcmp.f32	s0, #0
 1233 00e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1234 00e8 B1EEC0BA 		vsqrt.f32	s22, s0
 1235 00ec 22D4     		bmi	.L163
 1236              	.L161:
 1237 00ee 78EECB8A 		vsub.f32	s17, s17, s22
 1238 00f2 88EE8A7A 		vdiv.f32	s14, s17, s20
 1239 00f6 D8EE079A 		vfnms.f32	s19, s16, s14
 1240 00fa AAEEC79A 		vfms.f32	s18, s21, s14
 1241 00fe 89EEA66A 		vdiv.f32	s12, s19, s13
 1242 0102 81ED006A 		vstr.32	s12, [r1]
 1243 0106 D0ED216A 		vldr.32	s13, [r0, #132]
 1244 010a C9EE267A 		vdiv.f32	s15, s18, s13
 1245 010e C1ED017A 		vstr.32	s15, [r1, #4]
 1246 0112 D0ED0F5A 		vldr.32	s11, [r0, #60]
 1247 0116 D0ED0E6A 		vldr.32	s13, [r0, #56]
 1248 011a 67EEA57A 		vmul.f32	s15, s15, s11
 1249 011e E6EE267A 		vfma.f32	s15, s12, s13
 1250 0122 77EE677A 		vsub.f32	s15, s14, s15
 1251 0126 C1ED027A 		vstr.32	s15, [r1, #8]
 1252 012a 03B0     		add	sp, sp, #12
 1253              		@ sp needed
 1254 012c BDEC088B 		vldm	sp!, {d8-d11}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 23


 1255 0130 5DF804FB 		ldr	pc, [sp], #4
 1256              	.L163:
 1257 0134 CDE90001 		strd	r0, r1, [sp]
 1258 0138 FFF7FEFF 		bl	sqrtf
 1259 013c 0098     		ldr	r0, [sp]
 1260 013e 0199     		ldr	r1, [sp, #4]
 1261 0140 D0ED216A 		vldr.32	s13, [r0, #132]
 1262 0144 D3E7     		b	.L161
 1263              		.size	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf, .-_ZNK21LinearDeltaKinematics16ForwardT
 1264 0146 00BF     		.section	.text._ZN21LinearDeltaKinematics6RecalcEv,"ax",%progbits
 1265              		.align	1
 1266              		.p2align 2,,3
 1267              		.global	_ZN21LinearDeltaKinematics6RecalcEv
 1268              		.syntax unified
 1269              		.thumb
 1270              		.thumb_func
 1271              		.fpu fpv4-sp-d16
 1272              		.type	_ZN21LinearDeltaKinematics6RecalcEv, %function
 1273              	_ZN21LinearDeltaKinematics6RecalcEv:
 1274              		@ args = 0, pretend = 0, frame = 16
 1275              		@ frame_needed = 0, uses_anonymous_args = 0
 1276 0000 10B5     		push	{r4, lr}
 1277 0002 2DED088B 		vpush.64	{d8, d9, d10, d11}
 1278 0006 D0ED068A 		vldr.32	s17, [r0, #24]
 1279 000a DFED54BA 		vldr.32	s23, .L166
 1280 000e 90ED058A 		vldr.32	s16, [r0, #20]
 1281 0012 B3EE0E9A 		vmov.f32	s18, #3.0e+1
 1282 0016 78EE898A 		vadd.f32	s17, s17, s18
 1283 001a 84B0     		sub	sp, sp, #16
 1284 001c 68EEAB8A 		vmul.f32	s17, s17, s23
 1285 0020 0446     		mov	r4, r0
 1286 0022 B0EE680A 		vmov.f32	s0, s17
 1287 0026 FFF7FEFF 		bl	cosf
 1288 002a 68EE00AA 		vmul.f32	s21, s16, s0
 1289 002e B0EE680A 		vmov.f32	s0, s17
 1290 0032 F1EE6A7A 		vneg.f32	s15, s21
 1291 0036 C4ED107A 		vstr.32	s15, [r4, #64]
 1292 003a FFF7FEFF 		bl	sinf
 1293 003e D4ED077A 		vldr.32	s15, [r4, #28]
 1294 0042 39EE679A 		vsub.f32	s18, s18, s15
 1295 0046 68EE008A 		vmul.f32	s17, s16, s0
 1296 004a 29EE2B9A 		vmul.f32	s18, s18, s23
 1297 004e B1EE68AA 		vneg.f32	s20, s17
 1298 0052 84ED13AA 		vstr.32	s20, [r4, #76]
 1299 0056 B0EE490A 		vmov.f32	s0, s18
 1300 005a FFF7FEFF 		bl	cosf
 1301 005e 68EE009A 		vmul.f32	s19, s16, s0
 1302 0062 B0EE490A 		vmov.f32	s0, s18
 1303 0066 C4ED119A 		vstr.32	s19, [r4, #68]
 1304 006a FFF7FEFF 		bl	sinf
 1305 006e 94ED08BA 		vldr.32	s22, [r4, #32]
 1306 0072 28EE009A 		vmul.f32	s18, s16, s0
 1307 0076 2BEE2BBA 		vmul.f32	s22, s22, s23
 1308 007a F1EE497A 		vneg.f32	s15, s18
 1309 007e C4ED147A 		vstr.32	s15, [r4, #80]
 1310 0082 B0EE4B0A 		vmov.f32	s0, s22
 1311 0086 FFF7FEFF 		bl	sinf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 24


 1312 008a 68EE00BA 		vmul.f32	s23, s16, s0
 1313 008e B0EE4B0A 		vmov.f32	s0, s22
 1314 0092 B1EE6BBA 		vneg.f32	s22, s23
 1315 0096 84ED12BA 		vstr.32	s22, [r4, #72]
 1316 009a FFF7FEFF 		bl	cosf
 1317 009e 28EE000A 		vmul.f32	s0, s16, s0
 1318 00a2 7AEEA95A 		vadd.f32	s11, s21, s19
 1319 00a6 3AEE40AA 		vsub.f32	s20, s20, s0
 1320 00aa 38EEC96A 		vsub.f32	s12, s17, s18
 1321 00ae 3BEEEA5A 		vsub.f32	s10, s23, s21
 1322 00b2 6AEE657A 		vnmul.f32	s15, s20, s11
 1323 00b6 60EE006A 		vmul.f32	s13, s0, s0
 1324 00ba E5EE067A 		vfma.f32	s15, s10, s12
 1325 00be 2046     		mov	r0, r4
 1326 00c0 01A9     		add	r1, sp, #4
 1327 00c2 29EE097A 		vmul.f32	s14, s18, s18
 1328 00c6 68EEA88A 		vmul.f32	s17, s17, s17
 1329 00ca 94ED048A 		vldr.32	s16, [r4, #16]
 1330 00ce 84ED150A 		vstr.32	s0, [r4, #84]
 1331 00d2 EBEEAB6A 		vfma.f32	s13, s23, s23
 1332 00d6 77EEA77A 		vadd.f32	s15, s15, s15
 1333 00da A9EEA97A 		vfma.f32	s14, s19, s19
 1334 00de EAEEAA8A 		vfma.f32	s17, s21, s21
 1335 00e2 27EEA74A 		vmul.f32	s8, s15, s15
 1336 00e6 68EE084A 		vmul.f32	s9, s16, s16
 1337 00ea 39EE009A 		vadd.f32	s18, s18, s0
 1338 00ee 7BEE699A 		vsub.f32	s19, s22, s19
 1339 00f2 C4ED206A 		vstr.32	s13, [r4, #128]
 1340 00f6 C4ED217A 		vstr.32	s15, [r4, #132]
 1341 00fa 84ED1F7A 		vstr.32	s14, [r4, #124]
 1342 00fe B0EE481A 		vmov.f32	s2, s16
 1343 0102 F0EE480A 		vmov.f32	s1, s16
 1344 0106 B0EE480A 		vmov.f32	s0, s16
 1345 010a 84ED1CAA 		vstr.32	s20, [r4, #112]
 1346 010e C4ED189A 		vstr.32	s19, [r4, #96]
 1347 0112 84ED1B9A 		vstr.32	s18, [r4, #108]
 1348 0116 84ED195A 		vstr.32	s10, [r4, #100]
 1349 011a C4ED1A5A 		vstr.32	s11, [r4, #104]
 1350 011e 84ED224A 		vstr.32	s8, [r4, #136]
 1351 0122 84ED1D6A 		vstr.32	s12, [r4, #116]
 1352 0126 C4ED1E8A 		vstr.32	s17, [r4, #120]
 1353 012a C4ED234A 		vstr.32	s9, [r4, #140]
 1354 012e FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf
 1355 0132 D4ED0D6A 		vldr.32	s13, [r4, #52]
 1356 0136 9DED037A 		vldr.32	s14, [sp, #12]
 1357 013a D4ED0C7A 		vldr.32	s15, [r4, #48]
 1358 013e 38EE268A 		vadd.f32	s16, s16, s13
 1359 0142 67EEA77A 		vmul.f32	s15, s15, s15
 1360 0146 38EE478A 		vsub.f32	s16, s16, s14
 1361 014a C4ED167A 		vstr.32	s15, [r4, #88]
 1362 014e 84ED178A 		vstr.32	s16, [r4, #92]
 1363 0152 04B0     		add	sp, sp, #16
 1364              		@ sp needed
 1365 0154 BDEC088B 		vldm	sp!, {d8-d11}
 1366 0158 10BD     		pop	{r4, pc}
 1367              	.L167:
 1368 015a 00BF     		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 25


 1369              	.L166:
 1370 015c 35FA8E3C 		.word	1016003125
 1371              		.size	_ZN21LinearDeltaKinematics6RecalcEv, .-_ZN21LinearDeltaKinematics6RecalcEv
 1372              		.section	.text._ZN21LinearDeltaKinematics4InitEv,"ax",%progbits
 1373              		.align	1
 1374              		.p2align 2,,3
 1375              		.global	_ZN21LinearDeltaKinematics4InitEv
 1376              		.syntax unified
 1377              		.thumb
 1378              		.thumb_func
 1379              		.fpu fpv4-sp-d16
 1380              		.type	_ZN21LinearDeltaKinematics4InitEv, %function
 1381              	_ZN21LinearDeltaKinematics4InitEv:
 1382              		@ args = 0, pretend = 0, frame = 0
 1383              		@ frame_needed = 0, uses_anonymous_args = 0
 1384 0000 38B5     		push	{r3, r4, r5, lr}
 1385 0002 0368     		ldr	r3, [r0]
 1386 0004 1749     		ldr	r1, .L173
 1387 0006 1A6C     		ldr	r2, [r3, #64]
 1388 0008 0161     		str	r1, [r0, #16]	@ float
 1389 000a 1749     		ldr	r1, .L173+4
 1390 000c 4163     		str	r1, [r0, #52]	@ float
 1391 000e 0021     		movs	r1, #0
 1392 0010 164D     		ldr	r5, .L173+8
 1393 0012 80F89010 		strb	r1, [r0, #144]
 1394 0016 1649     		ldr	r1, .L173+12
 1395 0018 164B     		ldr	r3, .L173+16
 1396 001a 4561     		str	r5, [r0, #20]	@ float
 1397 001c 164D     		ldr	r5, .L173+20
 1398 001e 0363     		str	r3, [r0, #48]	@ float
 1399 0020 8A42     		cmp	r2, r1
 1400 0022 4FF00003 		mov	r3, #0
 1401 0026 0446     		mov	r4, r0
 1402 0028 6D69     		ldr	r5, [r5, #20]
 1403 002a C363     		str	r3, [r0, #60]	@ float
 1404 002c 8363     		str	r3, [r0, #56]	@ float
 1405 002e 8361     		str	r3, [r0, #24]	@ float
 1406 0030 4362     		str	r3, [r0, #36]	@ float
 1407 0032 C364     		str	r3, [r0, #76]	@ float
 1408 0034 0364     		str	r3, [r0, #64]	@ float
 1409 0036 C361     		str	r3, [r0, #28]	@ float
 1410 0038 8362     		str	r3, [r0, #40]	@ float
 1411 003a 0365     		str	r3, [r0, #80]	@ float
 1412 003c 4364     		str	r3, [r0, #68]	@ float
 1413 003e 0362     		str	r3, [r0, #32]	@ float
 1414 0040 C362     		str	r3, [r0, #44]	@ float
 1415 0042 4365     		str	r3, [r0, #84]	@ float
 1416 0044 8364     		str	r3, [r0, #72]	@ float
 1417 0046 09D1     		bne	.L172
 1418 0048 0C49     		ldr	r1, .L173+24
 1419              	.L169:
 1420 004a 2846     		mov	r0, r5
 1421 004c 0322     		movs	r2, #3
 1422 004e FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 1423 0052 2046     		mov	r0, r4
 1424 0054 BDE83840 		pop	{r3, r4, r5, lr}
 1425 0058 FFF7FEBF 		b	_ZN21LinearDeltaKinematics6RecalcEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 26


 1426              	.L172:
 1427 005c 9047     		blx	r2
 1428 005e 0146     		mov	r1, r0
 1429 0060 F3E7     		b	.L169
 1430              	.L174:
 1431 0062 00BF     		.align	2
 1432              	.L173:
 1433 0064 00005743 		.word	1129775104
 1434 0068 00007043 		.word	1131413504
 1435 006c 3333D342 		.word	1121137459
 1436 0070 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 1437 0074 0000A042 		.word	1117782016
 1438 0078 00000000 		.word	reprap
 1439 007c 00000000 		.word	.LC1
 1440              		.size	_ZN21LinearDeltaKinematics4InitEv, .-_ZN21LinearDeltaKinematics4InitEv
 1441              		.section	.text._ZN21LinearDeltaKinematicsC2Ev,"ax",%progbits
 1442              		.align	1
 1443              		.p2align 2,,3
 1444              		.global	_ZN21LinearDeltaKinematicsC2Ev
 1445              		.syntax unified
 1446              		.thumb
 1447              		.thumb_func
 1448              		.fpu fpv4-sp-d16
 1449              		.type	_ZN21LinearDeltaKinematicsC2Ev, %function
 1450              	_ZN21LinearDeltaKinematicsC2Ev:
 1451              		@ args = 0, pretend = 0, frame = 0
 1452              		@ frame_needed = 0, uses_anonymous_args = 0
 1453 0000 10B5     		push	{r4, lr}
 1454 0002 0122     		movs	r2, #1
 1455 0004 0446     		mov	r4, r0
 1456 0006 DFED070A 		vldr.32	s1, .L177
 1457 000a BFEE000A 		vmov.f32	s0, #-1.0e+0
 1458 000e 0321     		movs	r1, #3
 1459 0010 0023     		movs	r3, #0
 1460 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 1461 0016 044B     		ldr	r3, .L177+4
 1462 0018 2360     		str	r3, [r4]
 1463 001a 2046     		mov	r0, r4
 1464 001c FFF7FEFF 		bl	_ZN21LinearDeltaKinematics4InitEv
 1465 0020 2046     		mov	r0, r4
 1466 0022 10BD     		pop	{r4, pc}
 1467              	.L178:
 1468              		.align	2
 1469              	.L177:
 1470 0024 00000000 		.word	0
 1471 0028 08000000 		.word	.LANCHOR0+8
 1472              		.size	_ZN21LinearDeltaKinematicsC2Ev, .-_ZN21LinearDeltaKinematicsC2Ev
 1473              		.global	_ZN21LinearDeltaKinematicsC1Ev
 1474              		.thumb_set _ZN21LinearDeltaKinematicsC1Ev,_ZN21LinearDeltaKinematicsC2Ev
 1475              		.section	.text._ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21LinearDel
 1476              		.align	1
 1477              		.p2align 2,,3
 1478              		.weak	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv
 1479              		.syntax unified
 1480              		.thumb
 1481              		.thumb_func
 1482              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 27


 1483              		.type	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv, %function
 1484              	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv:
 1485              		@ args = 0, pretend = 0, frame = 0
 1486              		@ frame_needed = 0, uses_anonymous_args = 0
 1487              		@ link register save eliminated.
 1488 0000 FFF7FEBF 		b	_ZN21LinearDeltaKinematics4InitEv
 1489              		.size	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv, .-_ZN21LinearDeltaKinematics22SetCalib
 1490              		.global	__aeabi_f2d
 1491              		.section	.text._ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1492              		.align	1
 1493              		.p2align 2,,3
 1494              		.global	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1495              		.syntax unified
 1496              		.thumb
 1497              		.thumb_func
 1498              		.fpu fpv4-sp-d16
 1499              		.type	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1500              	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1501              		@ args = 4, pretend = 0, frame = 8
 1502              		@ frame_needed = 0, uses_anonymous_args = 0
 1503 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1504 0004 2DED028B 		vpush.64	{d8}
 1505 0008 40F29927 		movw	r7, #665
 1506 000c B942     		cmp	r1, r7
 1507 000e 8FB0     		sub	sp, sp, #60
 1508 0010 0446     		mov	r4, r0
 1509 0012 1546     		mov	r5, r2
 1510 0014 9846     		mov	r8, r3
 1511 0016 65D0     		beq	.L182
 1512 0018 40F29A27 		movw	r7, #666
 1513 001c B942     		cmp	r1, r7
 1514 001e 56D1     		bne	.L202
 1515 0020 0EAE     		add	r6, sp, #56
 1516 0022 0023     		movs	r3, #0
 1517 0024 06F8013D 		strb	r3, [r6, #-1]!
 1518 0028 00F12402 		add	r2, r0, #36
 1519 002c 3346     		mov	r3, r6
 1520 002e 5821     		movs	r1, #88
 1521 0030 2846     		mov	r0, r5
 1522 0032 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1523 0036 3346     		mov	r3, r6
 1524 0038 04F12802 		add	r2, r4, #40
 1525 003c 5921     		movs	r1, #89
 1526 003e 2846     		mov	r0, r5
 1527 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1528 0044 5A21     		movs	r1, #90
 1529 0046 3346     		mov	r3, r6
 1530 0048 04F12C02 		add	r2, r4, #44
 1531 004c 2846     		mov	r0, r5
 1532 004e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1533 0052 4121     		movs	r1, #65
 1534 0054 2846     		mov	r0, r5
 1535 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1536 005a 0028     		cmp	r0, #0
 1537 005c 40F0F580 		bne	.L203
 1538              	.L190:
 1539 0060 4221     		movs	r1, #66
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 28


 1540 0062 2846     		mov	r0, r5
 1541 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1542 0068 0646     		mov	r6, r0
 1543 006a 0028     		cmp	r0, #0
 1544 006c 40F0DE80 		bne	.L204
 1545 0070 9DF83760 		ldrb	r6, [sp, #55]	@ zero_extendqisi2
 1546 0074 86BB     		cbnz	r6, .L189
 1547 0076 606A     		ldr	r0, [r4, #36]	@ float
 1548 0078 9FED7A8A 		vldr.32	s16, .L207
 1549 007c FFF7FEFF 		bl	__aeabi_f2d
 1550 0080 D4ED0F7A 		vldr.32	s15, [r4, #60]
 1551 0084 67EE887A 		vmul.f32	s15, s15, s16
 1552 0088 0646     		mov	r6, r0
 1553 008a 17EE900A 		vmov	r0, s15
 1554 008e 0F46     		mov	r7, r1
 1555 0090 FFF7FEFF 		bl	__aeabi_f2d
 1556 0094 D4ED0E7A 		vldr.32	s15, [r4, #56]
 1557 0098 67EE887A 		vmul.f32	s15, s15, s16
 1558 009c CDE90601 		strd	r0, [sp, #24]
 1559 00a0 17EE900A 		vmov	r0, s15
 1560 00a4 FFF7FEFF 		bl	__aeabi_f2d
 1561 00a8 CDE90401 		strd	r0, [sp, #16]
 1562 00ac E06A     		ldr	r0, [r4, #44]	@ float
 1563 00ae FFF7FEFF 		bl	__aeabi_f2d
 1564 00b2 CDE90201 		strd	r0, [sp, #8]
 1565 00b6 A06A     		ldr	r0, [r4, #40]	@ float
 1566 00b8 FFF7FEFF 		bl	__aeabi_f2d
 1567 00bc 3246     		mov	r2, r6
 1568 00be CDE90001 		strd	r0, [sp]
 1569 00c2 3B46     		mov	r3, r7
 1570 00c4 4046     		mov	r0, r8
 1571 00c6 6849     		ldr	r1, .L207+4
 1572 00c8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1573 00cc 6AE0     		b	.L201
 1574              	.L202:
 1575 00ce 189C     		ldr	r4, [sp, #96]
 1576 00d0 0094     		str	r4, [sp]
 1577 00d2 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1578 00d6 0646     		mov	r6, r0
 1579              	.L189:
 1580 00d8 3046     		mov	r0, r6
 1581 00da 0FB0     		add	sp, sp, #60
 1582              		@ sp needed
 1583 00dc BDEC028B 		vldm	sp!, {d8}
 1584 00e0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1585              	.L182:
 1586 00e4 0EAE     		add	r6, sp, #56
 1587 00e6 0027     		movs	r7, #0
 1588 00e8 06F8017D 		strb	r7, [r6, #-1]!
 1589 00ec 00F11002 		add	r2, r0, #16
 1590 00f0 3346     		mov	r3, r6
 1591 00f2 4C21     		movs	r1, #76
 1592 00f4 2846     		mov	r0, r5
 1593 00f6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1594 00fa 5221     		movs	r1, #82
 1595 00fc 3346     		mov	r3, r6
 1596 00fe 04F11402 		add	r2, r4, #20
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 29


 1597 0102 2846     		mov	r0, r5
 1598 0104 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1599 0108 4221     		movs	r1, #66
 1600 010a 2846     		mov	r0, r5
 1601 010c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1602 0110 0028     		cmp	r0, #0
 1603 0112 61D1     		bne	.L205
 1604              	.L184:
 1605 0114 3346     		mov	r3, r6
 1606 0116 04F11802 		add	r2, r4, #24
 1607 011a 5821     		movs	r1, #88
 1608 011c 2846     		mov	r0, r5
 1609 011e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1610 0122 3346     		mov	r3, r6
 1611 0124 04F11C02 		add	r2, r4, #28
 1612 0128 5921     		movs	r1, #89
 1613 012a 2846     		mov	r0, r5
 1614 012c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1615 0130 5A21     		movs	r1, #90
 1616 0132 3346     		mov	r3, r6
 1617 0134 04F12002 		add	r2, r4, #32
 1618 0138 2846     		mov	r0, r5
 1619 013a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1620 013e 4821     		movs	r1, #72
 1621 0140 2846     		mov	r0, r5
 1622 0142 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1623 0146 0028     		cmp	r0, #0
 1624 0148 34D1     		bne	.L206
 1625 014a 9DF83730 		ldrb	r3, [sp, #55]	@ zero_extendqisi2
 1626 014e 002B     		cmp	r3, #0
 1627 0150 3ED1     		bne	.L186
 1628 0152 2069     		ldr	r0, [r4, #16]	@ float
 1629 0154 FFF7FEFF 		bl	__aeabi_f2d
 1630 0158 0646     		mov	r6, r0
 1631 015a 206A     		ldr	r0, [r4, #32]	@ float
 1632 015c 0F46     		mov	r7, r1
 1633 015e FFF7FEFF 		bl	__aeabi_f2d
 1634 0162 CDE90A01 		strd	r0, [sp, #40]
 1635 0166 E069     		ldr	r0, [r4, #28]	@ float
 1636 0168 FFF7FEFF 		bl	__aeabi_f2d
 1637 016c CDE90801 		strd	r0, [sp, #32]
 1638 0170 A069     		ldr	r0, [r4, #24]	@ float
 1639 0172 FFF7FEFF 		bl	__aeabi_f2d
 1640 0176 CDE90601 		strd	r0, [sp, #24]
 1641 017a 206B     		ldr	r0, [r4, #48]	@ float
 1642 017c FFF7FEFF 		bl	__aeabi_f2d
 1643 0180 CDE90401 		strd	r0, [sp, #16]
 1644 0184 606B     		ldr	r0, [r4, #52]	@ float
 1645 0186 FFF7FEFF 		bl	__aeabi_f2d
 1646 018a CDE90201 		strd	r0, [sp, #8]
 1647 018e 6069     		ldr	r0, [r4, #20]	@ float
 1648 0190 FFF7FEFF 		bl	__aeabi_f2d
 1649 0194 3246     		mov	r2, r6
 1650 0196 CDE90001 		strd	r0, [sp]
 1651 019a 3B46     		mov	r3, r7
 1652 019c 4046     		mov	r0, r8
 1653 019e 3349     		ldr	r1, .L207+8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 30


 1654 01a0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1655              	.L201:
 1656 01a4 9DF83760 		ldrb	r6, [sp, #55]	@ zero_extendqisi2
 1657 01a8 3046     		mov	r0, r6
 1658 01aa 0FB0     		add	sp, sp, #60
 1659              		@ sp needed
 1660 01ac BDEC028B 		vldm	sp!, {d8}
 1661 01b0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1662              	.L206:
 1663 01b4 2846     		mov	r0, r5
 1664 01b6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1665 01ba 2D4B     		ldr	r3, .L207+12
 1666 01bc 84ED0D0A 		vstr.32	s0, [r4, #52]
 1667 01c0 5868     		ldr	r0, [r3, #4]
 1668 01c2 0022     		movs	r2, #0
 1669 01c4 0221     		movs	r1, #2
 1670 01c6 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1671 01ca 0123     		movs	r3, #1
 1672 01cc 8DF83730 		strb	r3, [sp, #55]
 1673              	.L186:
 1674 01d0 2046     		mov	r0, r4
 1675 01d2 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1676 01d6 E5E7     		b	.L201
 1677              	.L205:
 1678 01d8 2846     		mov	r0, r5
 1679 01da FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1680 01de 244B     		ldr	r3, .L207+12
 1681 01e0 84ED0C0A 		vstr.32	s0, [r4, #48]
 1682 01e4 D3F80490 		ldr	r9, [r3, #4]
 1683 01e8 B1EE400A 		vneg.f32	s0, s0
 1684 01ec 4846     		mov	r0, r9
 1685 01ee 3A46     		mov	r2, r7
 1686 01f0 3946     		mov	r1, r7
 1687 01f2 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 1688 01f6 94ED0C0A 		vldr.32	s0, [r4, #48]
 1689 01fa 4846     		mov	r0, r9
 1690 01fc B1EE400A 		vneg.f32	s0, s0
 1691 0200 3A46     		mov	r2, r7
 1692 0202 0121     		movs	r1, #1
 1693 0204 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 1694 0208 3A46     		mov	r2, r7
 1695 020a 4846     		mov	r0, r9
 1696 020c 94ED0C0A 		vldr.32	s0, [r4, #48]
 1697 0210 3946     		mov	r1, r7
 1698 0212 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1699 0216 3A46     		mov	r2, r7
 1700 0218 4846     		mov	r0, r9
 1701 021a 94ED0C0A 		vldr.32	s0, [r4, #48]
 1702 021e 0121     		movs	r1, #1
 1703 0220 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1704 0224 0123     		movs	r3, #1
 1705 0226 8DF83730 		strb	r3, [sp, #55]
 1706 022a 73E7     		b	.L184
 1707              	.L204:
 1708 022c 2846     		mov	r0, r5
 1709 022e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1710 0232 DFED107A 		vldr.32	s15, .L207+16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 31


 1711 0236 20EE270A 		vmul.f32	s0, s0, s15
 1712 023a 3046     		mov	r0, r6
 1713 023c 84ED0F0A 		vstr.32	s0, [r4, #60]
 1714 0240 0FB0     		add	sp, sp, #60
 1715              		@ sp needed
 1716 0242 BDEC028B 		vldm	sp!, {d8}
 1717 0246 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1718              	.L203:
 1719 024a 2846     		mov	r0, r5
 1720 024c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1721 0250 DFED087A 		vldr.32	s15, .L207+16
 1722 0254 20EE270A 		vmul.f32	s0, s0, s15
 1723 0258 0123     		movs	r3, #1
 1724 025a 84ED0E0A 		vstr.32	s0, [r4, #56]
 1725 025e 8DF83730 		strb	r3, [sp, #55]
 1726 0262 FDE6     		b	.L190
 1727              	.L208:
 1728              		.align	2
 1729              	.L207:
 1730 0264 0000C842 		.word	1120403456
 1731 0268 64000000 		.word	.LC6
 1732 026c 00000000 		.word	.LC5
 1733 0270 00000000 		.word	reprap
 1734 0274 0AD7233C 		.word	1008981770
 1735              		.size	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21LinearDeltaKinema
 1736              		.section	.text._ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 1737              		.align	1
 1738              		.p2align 2,,3
 1739              		.global	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf
 1740              		.syntax unified
 1741              		.thumb
 1742              		.thumb_func
 1743              		.fpu fpv4-sp-d16
 1744              		.type	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 1745              	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 1746              		@ args = 8, pretend = 0, frame = 0
 1747              		@ frame_needed = 0, uses_anonymous_args = 0
 1748 0000 D1ED027A 		vldr.32	s15, [r1, #8]	@ int
 1749 0004 92ED021A 		vldr.32	s2, [r2, #8]
 1750 0008 D2ED010A 		vldr.32	s1, [r2, #4]
 1751 000c 92ED000A 		vldr.32	s0, [r2]
 1752 0010 F8EEE76A 		vcvt.f32.s32	s13, s15
 1753 0014 D1ED017A 		vldr.32	s15, [r1, #4]	@ int
 1754 0018 B8EEE77A 		vcvt.f32.s32	s14, s15
 1755 001c D1ED007A 		vldr.32	s15, [r1]	@ int
 1756 0020 F8EEE77A 		vcvt.f32.s32	s15, s15
 1757 0024 70B5     		push	{r4, r5, r6, lr}
 1758 0026 86EE811A 		vdiv.f32	s2, s13, s2
 1759 002a 1E46     		mov	r6, r3
 1760 002c 0C46     		mov	r4, r1
 1761 002e 0599     		ldr	r1, [sp, #20]
 1762 0030 1546     		mov	r5, r2
 1763 0032 C7EE200A 		vdiv.f32	s1, s14, s1
 1764 0036 87EE800A 		vdiv.f32	s0, s15, s0
 1765 003a FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf
 1766 003e 032E     		cmp	r6, #3
 1767 0040 16D9     		bls	.L209
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 32


 1768 0042 059B     		ldr	r3, [sp, #20]
 1769 0044 04EB8600 		add	r0, r4, r6, lsl #2
 1770 0048 0438     		subs	r0, r0, #4
 1771 004a 04F10801 		add	r1, r4, #8
 1772 004e 05F10C02 		add	r2, r5, #12
 1773 0052 0C33     		adds	r3, r3, #12
 1774              	.L211:
 1775 0054 51F8044F 		ldr	r4, [r1, #4]!
 1776 0058 F2EC016A 		vldmia.32	r2!, {s13}
 1777 005c 07EE904A 		vmov	s15, r4	@ int
 1778 0060 F8EEE77A 		vcvt.f32.s32	s15, s15
 1779 0064 8142     		cmp	r1, r0
 1780 0066 87EEA67A 		vdiv.f32	s14, s15, s13
 1781 006a A3EC017A 		vstmia.32	r3!, {s14}
 1782 006e F1D1     		bne	.L211
 1783              	.L209:
 1784 0070 70BD     		pop	{r4, r5, r6, pc}
 1785              		.size	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21LinearDeltaKinematics
 1786              		.global	__aeabi_dsub
 1787              		.global	__aeabi_ddiv
 1788              		.section	.text._ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff,"ax",%progbits
 1789              		.align	1
 1790              		.p2align 2,,3
 1791              		.global	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff
 1792              		.syntax unified
 1793              		.thumb
 1794              		.thumb_func
 1795              		.fpu fpv4-sp-d16
 1796              		.type	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff, %function
 1797              	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff:
 1798              		@ args = 0, pretend = 0, frame = 320
 1799              		@ frame_needed = 0, uses_anonymous_args = 0
 1800 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1801 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 1802 0008 D1B0     		sub	sp, sp, #324
 1803 000a 00F11807 		add	r7, r0, #24
 1804 000e 0446     		mov	r4, r0
 1805 0010 0191     		str	r1, [sp, #4]
 1806 0012 97E80700 		ldm	r7, {r0, r1, r2}
 1807 0016 04F12406 		add	r6, r4, #36
 1808 001a 0CAB     		add	r3, sp, #48
 1809 001c 83E80700 		stm	r3, {r0, r1, r2}
 1810 0020 96E80700 		ldm	r6, {r0, r1, r2}
 1811 0024 94ED018A 		vldr.32	s16, [r4, #4]
 1812 0028 D4ED026A 		vldr.32	s13, [r4, #8]
 1813 002c D4ED047A 		vldr.32	s15, [r4, #16]
 1814 0030 94ED057A 		vldr.32	s14, [r4, #20]
 1815 0034 D4ED0CBA 		vldr.32	s23, [r4, #48]
 1816 0038 94F80CB0 		ldrb	fp, [r4, #12]	@ zero_extendqisi2
 1817 003c 94F80DA0 		ldrb	r10, [r4, #13]	@ zero_extendqisi2
 1818 0040 94F80E90 		ldrb	r9, [r4, #14]	@ zero_extendqisi2
 1819 0044 94ED0DBA 		vldr.32	s22, [r4, #52]
 1820 0048 94F80F80 		ldrb	r8, [r4, #15]	@ zero_extendqisi2
 1821 004c 8DED078A 		vstr.32	s16, [sp, #28]
 1822 0050 04F14005 		add	r5, r4, #64
 1823 0054 0FAB     		add	r3, sp, #60
 1824 0056 83E80700 		stm	r3, {r0, r1, r2}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 33


 1825 005a CDED086A 		vstr.32	s13, [sp, #32]
 1826 005e 8DF824B0 		strb	fp, [sp, #36]
 1827 0062 CDED0A7A 		vstr.32	s15, [sp, #40]
 1828 0066 8DED0B7A 		vstr.32	s14, [sp, #44]
 1829 006a CDED12BA 		vstr.32	s23, [sp, #72]
 1830 006e 8DF825A0 		strb	r10, [sp, #37]
 1831 0072 8DF82690 		strb	r9, [sp, #38]
 1832 0076 95E80700 		ldm	r5, {r0, r1, r2}
 1833 007a 04F14C03 		add	r3, r4, #76
 1834 007e 0DF1580C 		add	ip, sp, #88
 1835 0082 8CE80700 		stm	ip, {r0, r1, r2}
 1836 0086 93E80700 		ldm	r3, {r0, r1, r2}
 1837 008a D4ED0EAA 		vldr.32	s21, [r4, #56]
 1838 008e 94ED0FAA 		vldr.32	s20, [r4, #60]
 1839 0092 D4ED169A 		vldr.32	s19, [r4, #88]
 1840 0096 D4ED171A 		vldr.32	s3, [r4, #92]
 1841 009a 94ED182A 		vldr.32	s4, [r4, #96]
 1842 009e D4ED192A 		vldr.32	s5, [r4, #100]
 1843 00a2 94ED1A3A 		vldr.32	s6, [r4, #104]
 1844 00a6 D4ED1B3A 		vldr.32	s7, [r4, #108]
 1845 00aa DFF8F8E2 		ldr	lr, .L235+12
 1846 00ae 94ED1C4A 		vldr.32	s8, [r4, #112]
 1847 00b2 D4ED1D4A 		vldr.32	s9, [r4, #116]
 1848 00b6 8DF82780 		strb	r8, [sp, #39]
 1849 00ba 0DF1640C 		add	ip, sp, #100
 1850 00be 8CE80700 		stm	ip, {r0, r1, r2}
 1851 00c2 CDF818E0 		str	lr, [sp, #24]
 1852 00c6 8DED13BA 		vstr.32	s22, [sp, #76]
 1853 00ca CDED14AA 		vstr.32	s21, [sp, #80]
 1854 00ce 8DED15AA 		vstr.32	s20, [sp, #84]
 1855 00d2 CDED1C9A 		vstr.32	s19, [sp, #112]
 1856 00d6 CDED1D1A 		vstr.32	s3, [sp, #116]
 1857 00da 8DED1E2A 		vstr.32	s4, [sp, #120]
 1858 00de CDED1F2A 		vstr.32	s5, [sp, #124]
 1859 00e2 8DED203A 		vstr.32	s6, [sp, #128]
 1860 00e6 CDED213A 		vstr.32	s7, [sp, #132]
 1861 00ea 97E80700 		ldm	r7, {r0, r1, r2}
 1862 00ee 31AF     		add	r7, sp, #196
 1863 00f0 87E80700 		stm	r7, {r0, r1, r2}
 1864 00f4 96E80700 		ldm	r6, {r0, r1, r2}
 1865 00f8 94ED1E5A 		vldr.32	s10, [r4, #120]
 1866 00fc D4ED1F5A 		vldr.32	s11, [r4, #124]
 1867 0100 94ED206A 		vldr.32	s12, [r4, #128]
 1868 0104 CDED2D6A 		vstr.32	s13, [sp, #180]
 1869 0108 D4ED216A 		vldr.32	s13, [r4, #132]
 1870 010c 8DF8B8B0 		strb	fp, [sp, #184]
 1871 0110 D4F88CC0 		ldr	ip, [r4, #140]	@ float
 1872 0114 D4F888B0 		ldr	fp, [r4, #136]	@ float
 1873 0118 94F89070 		ldrb	r7, [r4, #144]	@ zero_extendqisi2
 1874 011c 8DED2C8A 		vstr.32	s16, [sp, #176]
 1875 0120 34AE     		add	r6, sp, #208
 1876 0122 8DED224A 		vstr.32	s8, [sp, #136]
 1877 0126 CDED234A 		vstr.32	s9, [sp, #140]
 1878 012a 8DED245A 		vstr.32	s10, [sp, #144]
 1879 012e 8DF8B9A0 		strb	r10, [sp, #185]
 1880 0132 8DF8BA90 		strb	r9, [sp, #186]
 1881 0136 8DF8BB80 		strb	r8, [sp, #187]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 34


 1882 013a CDED2F7A 		vstr.32	s15, [sp, #188]
 1883 013e 8DED307A 		vstr.32	s14, [sp, #192]
 1884 0142 CDF8ACE0 		str	lr, [sp, #172]
 1885 0146 CDED255A 		vstr.32	s11, [sp, #148]
 1886 014a 8DED266A 		vstr.32	s12, [sp, #152]
 1887 014e CDED276A 		vstr.32	s13, [sp, #156]
 1888 0152 CDF8A0B0 		str	fp, [sp, #160]	@ float
 1889 0156 CDF8A4C0 		str	ip, [sp, #164]	@ float
 1890 015a 86E80700 		stm	r6, {r0, r1, r2}
 1891 015e 95E80700 		ldm	r5, {r0, r1, r2}
 1892 0162 3BAD     		add	r5, sp, #236
 1893 0164 85E80700 		stm	r5, {r0, r1, r2}
 1894 0168 93E80700 		ldm	r3, {r0, r1, r2}
 1895 016c 019D     		ldr	r5, [sp, #4]
 1896 016e 8DF8A870 		strb	r7, [sp, #168]
 1897 0172 3EAB     		add	r3, sp, #248
 1898 0174 033D     		subs	r5, r5, #3
 1899 0176 CDED37BA 		vstr.32	s23, [sp, #220]
 1900 017a 8DED38BA 		vstr.32	s22, [sp, #224]
 1901 017e CDED39AA 		vstr.32	s21, [sp, #228]
 1902 0182 8DED3AAA 		vstr.32	s20, [sp, #232]
 1903 0186 CDED419A 		vstr.32	s19, [sp, #260]
 1904 018a CDED421A 		vstr.32	s3, [sp, #264]
 1905 018e 8DED432A 		vstr.32	s4, [sp, #268]
 1906 0192 CDED442A 		vstr.32	s5, [sp, #272]
 1907 0196 8DED453A 		vstr.32	s6, [sp, #276]
 1908 019a CDED463A 		vstr.32	s7, [sp, #280]
 1909 019e 8DED474A 		vstr.32	s8, [sp, #284]
 1910 01a2 CDED484A 		vstr.32	s9, [sp, #288]
 1911 01a6 8DED495A 		vstr.32	s10, [sp, #292]
 1912 01aa CDED4A5A 		vstr.32	s11, [sp, #296]
 1913 01ae 8DED4B6A 		vstr.32	s12, [sp, #300]
 1914 01b2 CDED4C6A 		vstr.32	s13, [sp, #304]
 1915 01b6 CDF834B1 		str	fp, [sp, #308]	@ float
 1916 01ba CDF838C1 		str	ip, [sp, #312]	@ float
 1917 01be B0EE408A 		vmov.f32	s16, s0
 1918 01c2 83E80700 		stm	r3, {r0, r1, r2}
 1919 01c6 F0EE608A 		vmov.f32	s17, s1
 1920 01ca B0EE419A 		vmov.f32	s18, s2
 1921 01ce 8DF83C71 		strb	r7, [sp, #316]
 1922 01d2 032D     		cmp	r5, #3
 1923 01d4 70D8     		bhi	.L215
 1924 01d6 DFE805F0 		tbb	[pc, r5]
 1925              	.L217:
 1926 01da 5E       		.byte	(.L216-.L217)/2
 1927 01db 38       		.byte	(.L218-.L217)/2
 1928 01dc 02       		.byte	(.L219-.L217)/2
 1929 01dd 4D       		.byte	(.L220-.L217)/2
 1930              		.p2align 1
 1931              	.L219:
 1932 01de 9DED0D7A 		vldr.32	s14, [sp, #52]
 1933 01e2 DFED6F6A 		vldr.32	s13, .L235+8
 1934 01e6 DDED327A 		vldr.32	s15, [sp, #200]
 1935 01ea 37EE267A 		vadd.f32	s14, s14, s13
 1936 01ee 77EEE67A 		vsub.f32	s15, s15, s13
 1937 01f2 06A8     		add	r0, sp, #24
 1938 01f4 8DED0D7A 		vstr.32	s14, [sp, #52]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 35


 1939 01f8 CDED327A 		vstr.32	s15, [sp, #200]
 1940 01fc FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1941 0200 2BA8     		add	r0, sp, #172
 1942 0202 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1943              	.L232:
 1944 0206 03AD     		add	r5, sp, #12
 1945 0208 06A8     		add	r0, sp, #24
 1946 020a 2946     		mov	r1, r5
 1947 020c B0EE491A 		vmov.f32	s2, s18
 1948 0210 F0EE680A 		vmov.f32	s1, s17
 1949 0214 B0EE480A 		vmov.f32	s0, s16
 1950 0218 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf
 1951 021c 019B     		ldr	r3, [sp, #4]
 1952 021e 072B     		cmp	r3, #7
 1953 0220 40F08980 		bne	.L223
 1954 0224 D5ED007A 		vldr.32	s15, [r5]
 1955              	.L234:
 1956 0228 94ED0C7A 		vldr.32	s14, [r4, #48]
 1957 022c F1EE677A 		vneg.f32	s15, s15
 1958 0230 C7EE877A 		vdiv.f32	s15, s15, s14
 1959 0234 17EE900A 		vmov	r0, s15
 1960 0238 FFF7FEFF 		bl	__aeabi_f2d
 1961 023c 41EC100B 		vmov	d0, r0, r1
 1962 0240 51B0     		add	sp, sp, #324
 1963              		@ sp needed
 1964 0242 BDEC088B 		vldm	sp!, {d8-d11}
 1965 0246 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1966              	.L218:
 1967 024a 9DED0C7A 		vldr.32	s14, [sp, #48]
 1968 024e DFED546A 		vldr.32	s13, .L235+8
 1969 0252 DDED317A 		vldr.32	s15, [sp, #196]
 1970 0256 37EE267A 		vadd.f32	s14, s14, s13
 1971 025a 77EEE67A 		vsub.f32	s15, s15, s13
 1972 025e 06A8     		add	r0, sp, #24
 1973 0260 8DED0C7A 		vstr.32	s14, [sp, #48]
 1974 0264 CDED317A 		vstr.32	s15, [sp, #196]
 1975 0268 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1976 026c 2BA8     		add	r0, sp, #172
 1977 026e FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1978 0272 C8E7     		b	.L232
 1979              	.L220:
 1980 0274 9FED4A7A 		vldr.32	s14, .L235+8
 1981 0278 77EE876A 		vadd.f32	s13, s15, s14
 1982 027c 77EEC77A 		vsub.f32	s15, s15, s14
 1983 0280 06A8     		add	r0, sp, #24
 1984 0282 CDED0A6A 		vstr.32	s13, [sp, #40]
 1985 0286 CDED2F7A 		vstr.32	s15, [sp, #188]
 1986 028a FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1987 028e 2BA8     		add	r0, sp, #172
 1988 0290 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1989 0294 B7E7     		b	.L232
 1990              	.L216:
 1991 0296 DFED427A 		vldr.32	s15, .L235+8
 1992 029a 77EE276A 		vadd.f32	s13, s14, s15
 1993 029e 37EE677A 		vsub.f32	s14, s14, s15
 1994 02a2 06A8     		add	r0, sp, #24
 1995 02a4 CDED0B6A 		vstr.32	s13, [sp, #44]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 36


 1996 02a8 8DED307A 		vstr.32	s14, [sp, #192]
 1997 02ac FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1998 02b0 2BA8     		add	r0, sp, #172
 1999 02b2 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2000 02b6 A6E7     		b	.L232
 2001              	.L215:
 2002 02b8 019B     		ldr	r3, [sp, #4]
 2003 02ba 002B     		cmp	r3, #0
 2004 02bc 41D1     		bne	.L222
 2005 02be 9FED380A 		vldr.32	s0, .L235+8
 2006 02c2 03AD     		add	r5, sp, #12
 2007 02c4 06A8     		add	r0, sp, #24
 2008 02c6 38EE000A 		vadd.f32	s0, s16, s0
 2009 02ca 2946     		mov	r1, r5
 2010 02cc FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf
 2011              	.L225:
 2012 02d0 019B     		ldr	r3, [sp, #4]
 2013 02d2 AC68     		ldr	r4, [r5, #8]	@ float
 2014 02d4 3BBB     		cbnz	r3, .L228
 2015 02d6 DFED327A 		vldr.32	s15, .L235+8
 2016 02da 38EE678A 		vsub.f32	s16, s16, s15
 2017              	.L229:
 2018 02de F0EE680A 		vmov.f32	s1, s17
 2019 02e2 B0EE480A 		vmov.f32	s0, s16
 2020 02e6 B0EE491A 		vmov.f32	s2, s18
 2021 02ea 2946     		mov	r1, r5
 2022 02ec 2BA8     		add	r0, sp, #172
 2023 02ee FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf
 2024 02f2 2046     		mov	r0, r4	@ float
 2025 02f4 FFF7FEFF 		bl	__aeabi_f2d
 2026 02f8 0646     		mov	r6, r0
 2027 02fa A868     		ldr	r0, [r5, #8]	@ float
 2028 02fc 0F46     		mov	r7, r1
 2029 02fe FFF7FEFF 		bl	__aeabi_f2d
 2030 0302 0246     		mov	r2, r0
 2031 0304 0B46     		mov	r3, r1
 2032 0306 3046     		mov	r0, r6
 2033 0308 3946     		mov	r1, r7
 2034 030a FFF7FEFF 		bl	__aeabi_dsub
 2035 030e 22A3     		adr	r3, .L235
 2036 0310 D3E90023 		ldrd	r2, [r3]
 2037 0314 FFF7FEFF 		bl	__aeabi_ddiv
 2038 0318 41EC100B 		vmov	d0, r0, r1
 2039 031c 51B0     		add	sp, sp, #324
 2040              		@ sp needed
 2041 031e BDEC088B 		vldm	sp!, {d8-d11}
 2042 0322 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2043              	.L228:
 2044 0326 019B     		ldr	r3, [sp, #4]
 2045 0328 012B     		cmp	r3, #1
 2046 032a 17D1     		bne	.L230
 2047 032c DFED1C7A 		vldr.32	s15, .L235+8
 2048 0330 78EEE78A 		vsub.f32	s17, s17, s15
 2049 0334 D3E7     		b	.L229
 2050              	.L223:
 2051 0336 019B     		ldr	r3, [sp, #4]
 2052 0338 082B     		cmp	r3, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 37


 2053 033a C9D1     		bne	.L225
 2054 033c D5ED017A 		vldr.32	s15, [r5, #4]
 2055 0340 72E7     		b	.L234
 2056              	.L222:
 2057 0342 019B     		ldr	r3, [sp, #4]
 2058 0344 012B     		cmp	r3, #1
 2059 0346 11D1     		bne	.L224
 2060 0348 DFED150A 		vldr.32	s1, .L235+8
 2061 034c 03AD     		add	r5, sp, #12
 2062 034e 06A8     		add	r0, sp, #24
 2063 0350 78EEA00A 		vadd.f32	s1, s17, s1
 2064 0354 2946     		mov	r1, r5
 2065 0356 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf
 2066 035a B9E7     		b	.L225
 2067              	.L230:
 2068 035c 019B     		ldr	r3, [sp, #4]
 2069 035e 022B     		cmp	r3, #2
 2070 0360 BDD1     		bne	.L229
 2071              	.L226:
 2072 0362 DFED0F7A 		vldr.32	s15, .L235+8
 2073 0366 39EE679A 		vsub.f32	s18, s18, s15
 2074 036a B8E7     		b	.L229
 2075              	.L224:
 2076 036c 019B     		ldr	r3, [sp, #4]
 2077 036e 022B     		cmp	r3, #2
 2078 0370 7FF449AF 		bne	.L232
 2079 0374 9FED0A1A 		vldr.32	s2, .L235+8
 2080 0378 03AD     		add	r5, sp, #12
 2081 037a 06A8     		add	r0, sp, #24
 2082 037c 39EE011A 		vadd.f32	s2, s18, s2
 2083 0380 2946     		mov	r1, r5
 2084 0382 F0EE680A 		vmov.f32	s1, s17
 2085 0386 B0EE480A 		vmov.f32	s0, s16
 2086 038a FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf
 2087 038e AC68     		ldr	r4, [r5, #8]	@ float
 2088 0390 E7E7     		b	.L226
 2089              	.L236:
 2090 0392 00BFAFF3 		.align	3
 2090      0080
 2091              	.L235:
 2092 0398 000000A0 		.word	-1610612736
 2093 039c 9999D93F 		.word	1071225241
 2094 03a0 CDCC4C3E 		.word	1045220557
 2095 03a4 08000000 		.word	.LANCHOR0+8
 2096              		.size	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff, .-_ZNK21LinearDeltaKinematics17ComputeD
 2097              		.global	__aeabi_d2f
 2098              		.section	.text._ZN21LinearDeltaKinematics6AdjustEjPKd,"ax",%progbits
 2099              		.align	1
 2100              		.p2align 2,,3
 2101              		.global	_ZN21LinearDeltaKinematics6AdjustEjPKd
 2102              		.syntax unified
 2103              		.thumb
 2104              		.thumb_func
 2105              		.fpu fpv4-sp-d16
 2106              		.type	_ZN21LinearDeltaKinematics6AdjustEjPKd, %function
 2107              	_ZN21LinearDeltaKinematics6AdjustEjPKd:
 2108              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 38


 2109              		@ frame_needed = 0, uses_anonymous_args = 0
 2110 0000 70B5     		push	{r4, r5, r6, lr}
 2111 0002 0446     		mov	r4, r0
 2112 0004 2DED048B 		vpush.64	{d8, d9}
 2113 0008 0E46     		mov	r6, r1
 2114 000a D2E90001 		ldrd	r0, [r2]
 2115 000e 1546     		mov	r5, r2
 2116 0010 FFF7FEFF 		bl	__aeabi_d2f
 2117 0014 08EE900A 		vmov	s17, r0
 2118 0018 D5E90201 		ldrd	r0, [r5, #8]
 2119 001c FFF7FEFF 		bl	__aeabi_d2f
 2120 0020 94ED0A8A 		vldr.32	s16, [r4, #40]
 2121 0024 D4ED099A 		vldr.32	s19, [r4, #36]
 2122 0028 94ED179A 		vldr.32	s18, [r4, #92]
 2123 002c 07EE900A 		vmov	s15, r0
 2124 0030 D5E90401 		ldrd	r0, [r5, #16]
 2125 0034 37EE888A 		vadd.f32	s16, s15, s16
 2126 0038 FFF7FEFF 		bl	__aeabi_d2f
 2127 003c 78EEA97A 		vadd.f32	s15, s17, s19
 2128 0040 94ED0B6A 		vldr.32	s12, [r4, #44]
 2129 0044 D4ED0D6A 		vldr.32	s13, [r4, #52]
 2130 0048 07EE100A 		vmov	s14, r0
 2131 004c 77EE885A 		vadd.f32	s11, s15, s16
 2132 0050 37EE066A 		vadd.f32	s12, s14, s12
 2133 0054 B0EE085A 		vmov.f32	s10, #3.0e+0
 2134 0058 75EE865A 		vadd.f32	s11, s11, s12
 2135 005c 032E     		cmp	r6, #3
 2136 005e 85EE857A 		vdiv.f32	s14, s11, s10
 2137 0062 79EE299A 		vadd.f32	s19, s18, s19
 2138 0066 38EE478A 		vsub.f32	s16, s16, s14
 2139 006a 77EEC77A 		vsub.f32	s15, s15, s14
 2140 006e 36EE476A 		vsub.f32	s12, s12, s14
 2141 0072 77EE266A 		vadd.f32	s13, s14, s13
 2142 0076 37EE097A 		vadd.f32	s14, s14, s18
 2143 007a 84ED0A8A 		vstr.32	s16, [r4, #40]
 2144 007e C4ED097A 		vstr.32	s15, [r4, #36]
 2145 0082 84ED0B6A 		vstr.32	s12, [r4, #44]
 2146 0086 C4ED0D6A 		vstr.32	s13, [r4, #52]
 2147 008a 84ED177A 		vstr.32	s14, [r4, #92]
 2148 008e 1CD9     		bls	.L238
 2149 0090 D5E90601 		ldrd	r0, [r5, #24]
 2150 0094 FFF7FEFF 		bl	__aeabi_d2f
 2151 0098 D4ED057A 		vldr.32	s15, [r4, #20]
 2152 009c 07EE100A 		vmov	s14, r0
 2153 00a0 77EE877A 		vadd.f32	s15, s15, s14
 2154 00a4 052E     		cmp	r6, #5
 2155 00a6 C4ED057A 		vstr.32	s15, [r4, #20]
 2156 00aa 1FD8     		bhi	.L249
 2157              	.L240:
 2158 00ac 2046     		mov	r0, r4
 2159 00ae FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2160 00b2 D5E90001 		ldrd	r0, [r5]
 2161 00b6 FFF7FEFF 		bl	__aeabi_d2f
 2162 00ba D4ED0D6A 		vldr.32	s13, [r4, #52]
 2163 00be 94ED177A 		vldr.32	s14, [r4, #92]
 2164 00c2 D4ED097A 		vldr.32	s15, [r4, #36]
 2165 00c6 08EE900A 		vmov	s17, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 39


 2166              	.L238:
 2167 00ca 77EE277A 		vadd.f32	s15, s14, s15
 2168 00ce 77EEE97A 		vsub.f32	s15, s15, s19
 2169 00d2 77EEE87A 		vsub.f32	s15, s15, s17
 2170 00d6 BDEC048B 		vldm	sp!, {d8-d9}
 2171 00da 76EEE76A 		vsub.f32	s13, s13, s15
 2172 00de 37EE677A 		vsub.f32	s14, s14, s15
 2173 00e2 C4ED0D6A 		vstr.32	s13, [r4, #52]
 2174 00e6 84ED177A 		vstr.32	s14, [r4, #92]
 2175 00ea 70BD     		pop	{r4, r5, r6, pc}
 2176              	.L249:
 2177 00ec D5E90801 		ldrd	r0, [r5, #32]
 2178 00f0 FFF7FEFF 		bl	__aeabi_d2f
 2179 00f4 D4ED067A 		vldr.32	s15, [r4, #24]
 2180 00f8 07EE100A 		vmov	s14, r0
 2181 00fc 77EE877A 		vadd.f32	s15, s15, s14
 2182 0100 D5E90A01 		ldrd	r0, [r5, #40]
 2183 0104 C4ED067A 		vstr.32	s15, [r4, #24]
 2184 0108 FFF7FEFF 		bl	__aeabi_d2f
 2185 010c D4ED077A 		vldr.32	s15, [r4, #28]
 2186 0110 07EE100A 		vmov	s14, r0
 2187 0114 77EE877A 		vadd.f32	s15, s15, s14
 2188 0118 072E     		cmp	r6, #7
 2189 011a C4ED077A 		vstr.32	s15, [r4, #28]
 2190 011e 22D0     		beq	.L241
 2191 0120 092E     		cmp	r6, #9
 2192 0122 2DD0     		beq	.L250
 2193 0124 082E     		cmp	r6, #8
 2194 0126 C1D1     		bne	.L240
 2195 0128 D5E90C01 		ldrd	r0, [r5, #48]
 2196 012c FFF7FEFF 		bl	__aeabi_d2f
 2197 0130 94ED0C8A 		vldr.32	s16, [r4, #48]
 2198 0134 D4ED0E7A 		vldr.32	s15, [r4, #56]
 2199 0138 07EE100A 		vmov	s14, r0
 2200 013c 87EE087A 		vdiv.f32	s14, s14, s16
 2201 0140 D5E90E01 		ldrd	r0, [r5, #56]
 2202              	.L248:
 2203 0144 77EE877A 		vadd.f32	s15, s15, s14
 2204 0148 C4ED0E7A 		vstr.32	s15, [r4, #56]
 2205 014c FFF7FEFF 		bl	__aeabi_d2f
 2206 0150 07EE900A 		vmov	s15, r0
 2207 0154 87EE887A 		vdiv.f32	s14, s15, s16
 2208 0158 D4ED0F7A 		vldr.32	s15, [r4, #60]
 2209 015c 77EE877A 		vadd.f32	s15, s15, s14
 2210 0160 C4ED0F7A 		vstr.32	s15, [r4, #60]
 2211 0164 A2E7     		b	.L240
 2212              	.L241:
 2213 0166 D5E90C01 		ldrd	r0, [r5, #48]
 2214 016a FFF7FEFF 		bl	__aeabi_d2f
 2215 016e D4ED047A 		vldr.32	s15, [r4, #16]
 2216 0172 07EE100A 		vmov	s14, r0
 2217 0176 77EE877A 		vadd.f32	s15, s15, s14
 2218 017a C4ED047A 		vstr.32	s15, [r4, #16]
 2219 017e 95E7     		b	.L240
 2220              	.L250:
 2221 0180 D5E90C01 		ldrd	r0, [r5, #48]
 2222 0184 FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 40


 2223 0188 D4ED047A 		vldr.32	s15, [r4, #16]
 2224 018c 94ED0C8A 		vldr.32	s16, [r4, #48]
 2225 0190 07EE100A 		vmov	s14, r0
 2226 0194 77EE877A 		vadd.f32	s15, s15, s14
 2227 0198 D5E90E01 		ldrd	r0, [r5, #56]
 2228 019c C4ED047A 		vstr.32	s15, [r4, #16]
 2229 01a0 FFF7FEFF 		bl	__aeabi_d2f
 2230 01a4 07EE900A 		vmov	s15, r0
 2231 01a8 D5E91001 		ldrd	r0, [r5, #64]
 2232 01ac 87EE887A 		vdiv.f32	s14, s15, s16
 2233 01b0 D4ED0E7A 		vldr.32	s15, [r4, #56]
 2234 01b4 C6E7     		b	.L248
 2235              		.size	_ZN21LinearDeltaKinematics6AdjustEjPKd, .-_ZN21LinearDeltaKinematics6AdjustEjPKd
 2236 01b6 00BF     		.section	.text._ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2237              		.align	1
 2238              		.p2align 2,,3
 2239              		.global	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef
 2240              		.syntax unified
 2241              		.thumb
 2242              		.thumb_func
 2243              		.fpu fpv4-sp-d16
 2244              		.type	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef, %function
 2245              	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef:
 2246              		@ args = 0, pretend = 0, frame = 0
 2247              		@ frame_needed = 0, uses_anonymous_args = 0
 2248 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2249 0002 2DED028B 		vpush.64	{d8}
 2250 0006 0446     		mov	r4, r0
 2251 0008 95B0     		sub	sp, sp, #84
 2252 000a 406A     		ldr	r0, [r0, #36]	@ float
 2253 000c 9FED268A 		vldr.32	s16, .L253
 2254 0010 0D46     		mov	r5, r1
 2255 0012 FFF7FEFF 		bl	__aeabi_f2d
 2256 0016 D4ED0F7A 		vldr.32	s15, [r4, #60]
 2257 001a 67EE887A 		vmul.f32	s15, s15, s16
 2258 001e 0646     		mov	r6, r0
 2259 0020 17EE900A 		vmov	r0, s15
 2260 0024 0F46     		mov	r7, r1
 2261 0026 FFF7FEFF 		bl	__aeabi_f2d
 2262 002a D4ED0E7A 		vldr.32	s15, [r4, #56]
 2263 002e 67EE887A 		vmul.f32	s15, s15, s16
 2264 0032 CDE91201 		strd	r0, [sp, #72]
 2265 0036 17EE900A 		vmov	r0, s15
 2266 003a FFF7FEFF 		bl	__aeabi_f2d
 2267 003e CDE91001 		strd	r0, [sp, #64]
 2268 0042 206A     		ldr	r0, [r4, #32]	@ float
 2269 0044 FFF7FEFF 		bl	__aeabi_f2d
 2270 0048 CDE90E01 		strd	r0, [sp, #56]
 2271 004c E069     		ldr	r0, [r4, #28]	@ float
 2272 004e FFF7FEFF 		bl	__aeabi_f2d
 2273 0052 CDE90C01 		strd	r0, [sp, #48]
 2274 0056 A069     		ldr	r0, [r4, #24]	@ float
 2275 0058 FFF7FEFF 		bl	__aeabi_f2d
 2276 005c CDE90A01 		strd	r0, [sp, #40]
 2277 0060 6069     		ldr	r0, [r4, #20]	@ float
 2278 0062 FFF7FEFF 		bl	__aeabi_f2d
 2279 0066 CDE90801 		strd	r0, [sp, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 41


 2280 006a 2069     		ldr	r0, [r4, #16]	@ float
 2281 006c FFF7FEFF 		bl	__aeabi_f2d
 2282 0070 CDE90601 		strd	r0, [sp, #24]
 2283 0074 606B     		ldr	r0, [r4, #52]	@ float
 2284 0076 FFF7FEFF 		bl	__aeabi_f2d
 2285 007a CDE90401 		strd	r0, [sp, #16]
 2286 007e E06A     		ldr	r0, [r4, #44]	@ float
 2287 0080 FFF7FEFF 		bl	__aeabi_f2d
 2288 0084 CDE90201 		strd	r0, [sp, #8]
 2289 0088 A06A     		ldr	r0, [r4, #40]	@ float
 2290 008a FFF7FEFF 		bl	__aeabi_f2d
 2291 008e 3246     		mov	r2, r6
 2292 0090 CDE90001 		strd	r0, [sp]
 2293 0094 3B46     		mov	r3, r7
 2294 0096 2846     		mov	r0, r5
 2295 0098 0449     		ldr	r1, .L253+4
 2296 009a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2297 009e 15B0     		add	sp, sp, #84
 2298              		@ sp needed
 2299 00a0 BDEC028B 		vldm	sp!, {d8}
 2300 00a4 F0BD     		pop	{r4, r5, r6, r7, pc}
 2301              	.L254:
 2302 00a6 00BF     		.align	2
 2303              	.L253:
 2304 00a8 0000C842 		.word	1120403456
 2305 00ac 00000000 		.word	.LC7
 2306              		.size	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef, .-_ZNK21LinearDeltaKinematics15Pr
 2307              		.global	__aeabi_dmul
 2308              		.section	.text._ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj9
 2309              		.align	1
 2310              		.p2align 2,,3
 2311              		.weak	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 2312              		.syntax unified
 2313              		.thumb
 2314              		.thumb_func
 2315              		.fpu fpv4-sp-d16
 2316              		.type	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, %function
 2317              	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj:
 2318              		@ args = 0, pretend = 0, frame = 64
 2319              		@ frame_needed = 0, uses_anonymous_args = 0
 2320 0000 002A     		cmp	r2, #0
 2321 0002 00F02082 		beq	.L319
 2322 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2323 000a 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2324 000e 91B0     		sub	sp, sp, #68
 2325 0010 AF4E     		ldr	r6, .L336+8
 2326 0012 0092     		str	r2, [sp]
 2327 0014 0246     		mov	r2, r0
 2328 0016 0F91     		str	r1, [sp, #60]
 2329 0018 52F8083B 		ldr	r3, [r2], #8
 2330 001c 0D92     		str	r2, [sp, #52]
 2331 001e 9F68     		ldr	r7, [r3, #8]
 2332 0020 0023     		movs	r3, #0
 2333 0022 BB46     		mov	fp, r7
 2334 0024 0A93     		str	r3, [sp, #40]
 2335 0026 CDE90B33 		strd	r3, r3, [sp, #44]
 2336 002a 0493     		str	r3, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 42


 2337 002c B345     		cmp	fp, r6
 2338 002e 00F15803 		add	r3, r0, #88
 2339 0032 9FEDA5BB 		vldr.64	d11, .L336
 2340 0036 0E93     		str	r3, [sp, #56]
 2341 0038 8246     		mov	r10, r0
 2342 003a 40F09281 		bne	.L257
 2343              	.L333:
 2344 003e 0D9B     		ldr	r3, [sp, #52]
 2345 0040 0A9A     		ldr	r2, [sp, #40]
 2346 0042 9818     		adds	r0, r3, r2
 2347              	.L258:
 2348 0044 D0E90001 		ldrd	r0, [r0]
 2349 0048 FFF7FEFF 		bl	__aeabi_d2f
 2350 004c 049B     		ldr	r3, [sp, #16]
 2351 004e 0099     		ldr	r1, [sp]
 2352 0050 0133     		adds	r3, r3, #1
 2353 0052 07EE900A 		vmov	s15, r0
 2354 0056 9942     		cmp	r1, r3
 2355 0058 0693     		str	r3, [sp, #24]
 2356 005a B0EEE78A 		vabs.f32	s16, s15
 2357 005e 40F29680 		bls	.L259
 2358 0062 CB1A     		subs	r3, r1, r3
 2359 0064 0193     		str	r3, [sp, #4]
 2360 0066 0A9A     		ldr	r2, [sp, #40]
 2361 0068 0E9B     		ldr	r3, [sp, #56]
 2362 006a 1344     		add	r3, r3, r2
 2363 006c 6FF04F07 		mvn	r7, #79
 2364 0070 0025     		movs	r5, #0
 2365 0072 0293     		str	r3, [sp, #8]
 2366 0074 5C46     		mov	r4, fp
 2367 0076 06E0     		b	.L273
 2368              	.L262:
 2369 0078 019B     		ldr	r3, [sp, #4]
 2370 007a 0135     		adds	r5, r5, #1
 2371 007c AB42     		cmp	r3, r5
 2372 007e A7F15007 		sub	r7, r7, #80
 2373 0082 00F08380 		beq	.L322
 2374              	.L273:
 2375 0086 069B     		ldr	r3, [sp, #24]
 2376 0088 B442     		cmp	r4, r6
 2377 008a 03EB0509 		add	r9, r3, r5
 2378 008e 6AD1     		bne	.L260
 2379 0090 029B     		ldr	r3, [sp, #8]
 2380 0092 05EB8500 		add	r0, r5, r5, lsl #2
 2381 0096 03EB0010 		add	r0, r3, r0, lsl #4
 2382              	.L261:
 2383 009a D0E90001 		ldrd	r0, [r0]
 2384 009e FFF7FEFF 		bl	__aeabi_d2f
 2385 00a2 07EE900A 		vmov	s15, r0
 2386 00a6 B0EEE7AA 		vabs.f32	s20, s15
 2387 00aa B4EEC8AA 		vcmpe.f32	s20, s16
 2388 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2389 00b2 E1DD     		ble	.L262
 2390 00b4 049B     		ldr	r3, [sp, #16]
 2391 00b6 4B45     		cmp	r3, r9
 2392 00b8 00F07C81 		beq	.L308
 2393 00bc 0B9A     		ldr	r2, [sp, #44]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 43


 2394 00be 092A     		cmp	r2, #9
 2395 00c0 00F27881 		bhi	.L308
 2396 00c4 029A     		ldr	r2, [sp, #8]
 2397 00c6 05EB8508 		add	r8, r5, r5, lsl #2
 2398 00ca 9B46     		mov	fp, r3
 2399 00cc 2B46     		mov	r3, r5
 2400 00ce 02EB0818 		add	r8, r2, r8, lsl #4
 2401 00d2 4D46     		mov	r5, r9
 2402 00d4 B946     		mov	r9, r7
 2403 00d6 1F46     		mov	r7, r3
 2404 00d8 1AE0     		b	.L272
 2405              	.L324:
 2406 00da 08EB0900 		add	r0, r8, r9
 2407 00de B442     		cmp	r4, r6
 2408 00e0 90ED008B 		vldr.64	d8, [r0]
 2409 00e4 21D1     		bne	.L266
 2410              	.L325:
 2411 00e6 4046     		mov	r0, r8
 2412 00e8 B442     		cmp	r4, r6
 2413 00ea 90ED009B 		vldr.64	d9, [r0]
 2414 00ee 27D1     		bne	.L268
 2415              	.L326:
 2416 00f0 08EB0900 		add	r0, r8, r9
 2417 00f4 B442     		cmp	r4, r6
 2418 00f6 80ED009B 		vstr.64	d9, [r0]
 2419 00fa 2CD1     		bne	.L270
 2420              	.L327:
 2421 00fc 4046     		mov	r0, r8
 2422              	.L271:
 2423 00fe 0BF1010B 		add	fp, fp, #1
 2424 0102 BBF10A0F 		cmp	fp, #10
 2425 0106 80ED008B 		vstr.64	d8, [r0]
 2426 010a 08F10808 		add	r8, r8, #8
 2427 010e 32D0     		beq	.L323
 2428              	.L272:
 2429 0110 B442     		cmp	r4, r6
 2430 0112 E2D0     		beq	.L324
 2431 0114 5A46     		mov	r2, fp
 2432 0116 0499     		ldr	r1, [sp, #16]
 2433 0118 5046     		mov	r0, r10
 2434 011a A047     		blx	r4
 2435 011c DAF80020 		ldr	r2, [r10]
 2436 0120 9468     		ldr	r4, [r2, #8]
 2437 0122 B442     		cmp	r4, r6
 2438 0124 90ED008B 		vldr.64	d8, [r0]
 2439 0128 DDD0     		beq	.L325
 2440              	.L266:
 2441 012a 5A46     		mov	r2, fp
 2442 012c 2946     		mov	r1, r5
 2443 012e 5046     		mov	r0, r10
 2444 0130 A047     		blx	r4
 2445 0132 DAF80020 		ldr	r2, [r10]
 2446 0136 9468     		ldr	r4, [r2, #8]
 2447 0138 B442     		cmp	r4, r6
 2448 013a 90ED009B 		vldr.64	d9, [r0]
 2449 013e D7D0     		beq	.L326
 2450              	.L268:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 44


 2451 0140 5A46     		mov	r2, fp
 2452 0142 0499     		ldr	r1, [sp, #16]
 2453 0144 5046     		mov	r0, r10
 2454 0146 A047     		blx	r4
 2455 0148 DAF80020 		ldr	r2, [r10]
 2456 014c 9468     		ldr	r4, [r2, #8]
 2457 014e B442     		cmp	r4, r6
 2458 0150 80ED009B 		vstr.64	d9, [r0]
 2459 0154 D2D0     		beq	.L327
 2460              	.L270:
 2461 0156 5A46     		mov	r2, fp
 2462 0158 2946     		mov	r1, r5
 2463 015a 5046     		mov	r0, r10
 2464 015c A047     		blx	r4
 2465 015e DAF80020 		ldr	r2, [r10]
 2466 0162 9468     		ldr	r4, [r2, #8]
 2467 0164 CBE7     		b	.L271
 2468              	.L260:
 2469 0166 049A     		ldr	r2, [sp, #16]
 2470 0168 4946     		mov	r1, r9
 2471 016a 5046     		mov	r0, r10
 2472 016c A047     		blx	r4
 2473 016e DAF80030 		ldr	r3, [r10]
 2474 0172 9C68     		ldr	r4, [r3, #8]
 2475 0174 91E7     		b	.L261
 2476              	.L323:
 2477 0176 3D46     		mov	r5, r7
 2478 0178 019B     		ldr	r3, [sp, #4]
 2479 017a 0135     		adds	r5, r5, #1
 2480 017c 4F46     		mov	r7, r9
 2481 017e AB42     		cmp	r3, r5
 2482 0180 B0EE4A8A 		vmov.f32	s16, s20
 2483 0184 A7F15007 		sub	r7, r7, #80
 2484 0188 7FF47DAF 		bne	.L273
 2485              	.L322:
 2486 018c A346     		mov	fp, r4
 2487              	.L259:
 2488 018e B345     		cmp	fp, r6
 2489 0190 40F01381 		bne	.L274
 2490 0194 0D9B     		ldr	r3, [sp, #52]
 2491 0196 0A9A     		ldr	r2, [sp, #40]
 2492 0198 9818     		adds	r0, r3, r2
 2493              	.L275:
 2494 019a 90ED007B 		vldr.64	d7, [r0]
 2495 019e 0B9B     		ldr	r3, [sp, #44]
 2496 01a0 8DED087B 		vstr.64	d7, [sp, #32]
 2497 01a4 002B     		cmp	r3, #0
 2498 01a6 61D0     		beq	.L289
 2499 01a8 069B     		ldr	r3, [sp, #24]
 2500 01aa 0AEBC303 		add	r3, r10, r3, lsl #3
 2501 01ae 0593     		str	r3, [sp, #20]
 2502 01b0 0C9B     		ldr	r3, [sp, #48]
 2503 01b2 DB00     		lsls	r3, r3, #3
 2504 01b4 0193     		str	r3, [sp, #4]
 2505 01b6 0023     		movs	r3, #0
 2506 01b8 0793     		str	r3, [sp, #28]
 2507 01ba 5F46     		mov	r7, fp
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 45


 2508              	.L290:
 2509 01bc B742     		cmp	r7, r6
 2510 01be 40F0F180 		bne	.L279
 2511 01c2 0598     		ldr	r0, [sp, #20]
 2512              	.L280:
 2513 01c4 DDE90823 		ldrd	r2, [sp, #32]
 2514 01c8 D0E90001 		ldrd	r0, [r0]
 2515 01cc FFF7FEFF 		bl	__aeabi_ddiv
 2516 01d0 B742     		cmp	r7, r6
 2517 01d2 CDE90201 		strd	r0, [sp, #8]
 2518 01d6 40F0DD80 		bne	.L281
 2519 01da 0598     		ldr	r0, [sp, #20]
 2520              	.L282:
 2521 01dc 009B     		ldr	r3, [sp]
 2522 01de 069D     		ldr	r5, [sp, #24]
 2523 01e0 1A46     		mov	r2, r3
 2524 01e2 AA42     		cmp	r2, r5
 2525 01e4 80ED00BB 		vstr.64	d11, [r0]
 2526 01e8 33D3     		bcc	.L283
 2527 01ea 059B     		ldr	r3, [sp, #20]
 2528 01ec D146     		mov	r9, r10
 2529 01ee 03F10804 		add	r4, r3, #8
 2530 01f2 1AE0     		b	.L288
 2531              	.L329:
 2532 01f4 019B     		ldr	r3, [sp, #4]
 2533 01f6 1819     		adds	r0, r3, r4
 2534              	.L285:
 2535 01f8 D0E90023 		ldrd	r2, [r0]
 2536 01fc DDE90201 		ldrd	r0, [sp, #8]
 2537 0200 FFF7FEFF 		bl	__aeabi_dmul
 2538 0204 B742     		cmp	r7, r6
 2539 0206 8246     		mov	r10, r0
 2540 0208 8B46     		mov	fp, r1
 2541 020a 18D1     		bne	.L286
 2542 020c A046     		mov	r8, r4
 2543              	.L287:
 2544 020e 5B46     		mov	r3, fp
 2545 0210 D8E90001 		ldrd	r0, [r8]
 2546 0214 5246     		mov	r2, r10
 2547 0216 FFF7FEFF 		bl	__aeabi_dsub
 2548 021a 009B     		ldr	r3, [sp]
 2549 021c 0135     		adds	r5, r5, #1
 2550 021e AB42     		cmp	r3, r5
 2551 0220 04F10804 		add	r4, r4, #8
 2552 0224 C8E90001 		strd	r0, [r8]
 2553 0228 12D3     		bcc	.L328
 2554              	.L288:
 2555 022a B742     		cmp	r7, r6
 2556 022c E2D0     		beq	.L329
 2557 022e 2A46     		mov	r2, r5
 2558 0230 0499     		ldr	r1, [sp, #16]
 2559 0232 4846     		mov	r0, r9
 2560 0234 B847     		blx	r7
 2561 0236 D9F80030 		ldr	r3, [r9]
 2562 023a 9F68     		ldr	r7, [r3, #8]
 2563 023c DCE7     		b	.L285
 2564              	.L286:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 46


 2565 023e 2A46     		mov	r2, r5
 2566 0240 0799     		ldr	r1, [sp, #28]
 2567 0242 4846     		mov	r0, r9
 2568 0244 B847     		blx	r7
 2569 0246 D9F80030 		ldr	r3, [r9]
 2570 024a 8046     		mov	r8, r0
 2571 024c 9F68     		ldr	r7, [r3, #8]
 2572 024e DEE7     		b	.L287
 2573              	.L328:
 2574 0250 CA46     		mov	r10, r9
 2575              	.L283:
 2576 0252 059A     		ldr	r2, [sp, #20]
 2577 0254 079B     		ldr	r3, [sp, #28]
 2578 0256 5032     		adds	r2, r2, #80
 2579 0258 0592     		str	r2, [sp, #20]
 2580 025a 019A     		ldr	r2, [sp, #4]
 2581 025c 503A     		subs	r2, r2, #80
 2582 025e 0192     		str	r2, [sp, #4]
 2583 0260 049A     		ldr	r2, [sp, #16]
 2584 0262 0133     		adds	r3, r3, #1
 2585 0264 9342     		cmp	r3, r2
 2586 0266 0793     		str	r3, [sp, #28]
 2587 0268 A8D1     		bne	.L290
 2588 026a BB46     		mov	fp, r7
 2589              	.L289:
 2590 026c 009B     		ldr	r3, [sp]
 2591 026e 069A     		ldr	r2, [sp, #24]
 2592 0270 9342     		cmp	r3, r2
 2593 0272 00F0AB80 		beq	.L330
 2594 0276 0C9B     		ldr	r3, [sp, #48]
 2595 0278 0A9A     		ldr	r2, [sp, #40]
 2596 027a 0A33     		adds	r3, r3, #10
 2597 027c 0C93     		str	r3, [sp, #48]
 2598 027e 0E9B     		ldr	r3, [sp, #56]
 2599 0280 1344     		add	r3, r3, r2
 2600 0282 0593     		str	r3, [sp, #20]
 2601 0284 069B     		ldr	r3, [sp, #24]
 2602 0286 0793     		str	r3, [sp, #28]
 2603 0288 6FF04F03 		mvn	r3, #79
 2604 028c 0193     		str	r3, [sp, #4]
 2605 028e 5F46     		mov	r7, fp
 2606              	.L301:
 2607 0290 B742     		cmp	r7, r6
 2608 0292 6FD1     		bne	.L291
 2609 0294 0598     		ldr	r0, [sp, #20]
 2610              	.L292:
 2611 0296 DDE90823 		ldrd	r2, [sp, #32]
 2612 029a D0E90001 		ldrd	r0, [r0]
 2613 029e FFF7FEFF 		bl	__aeabi_ddiv
 2614 02a2 B742     		cmp	r7, r6
 2615 02a4 CDE90201 		strd	r0, [sp, #8]
 2616 02a8 6CD1     		bne	.L293
 2617 02aa 0598     		ldr	r0, [sp, #20]
 2618              	.L294:
 2619 02ac 009B     		ldr	r3, [sp]
 2620 02ae 069D     		ldr	r5, [sp, #24]
 2621 02b0 1A46     		mov	r2, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 47


 2622 02b2 AA42     		cmp	r2, r5
 2623 02b4 80ED00BB 		vstr.64	d11, [r0]
 2624 02b8 3BD3     		bcc	.L295
 2625 02ba 059B     		ldr	r3, [sp, #20]
 2626 02bc D146     		mov	r9, r10
 2627 02be 03F10804 		add	r4, r3, #8
 2628 02c2 22E0     		b	.L300
 2629              	.L337:
 2630 02c4 AFF30080 		.align	3
 2631              	.L336:
 2632 02c8 00000000 		.word	0
 2633 02cc 00000000 		.word	0
 2634 02d0 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 2635              	.L332:
 2636 02d4 019B     		ldr	r3, [sp, #4]
 2637 02d6 1819     		adds	r0, r3, r4
 2638              	.L297:
 2639 02d8 D0E90023 		ldrd	r2, [r0]
 2640 02dc DDE90201 		ldrd	r0, [sp, #8]
 2641 02e0 FFF7FEFF 		bl	__aeabi_dmul
 2642 02e4 B742     		cmp	r7, r6
 2643 02e6 8246     		mov	r10, r0
 2644 02e8 8B46     		mov	fp, r1
 2645 02ea 18D1     		bne	.L298
 2646 02ec A046     		mov	r8, r4
 2647              	.L299:
 2648 02ee 5B46     		mov	r3, fp
 2649 02f0 D8E90001 		ldrd	r0, [r8]
 2650 02f4 5246     		mov	r2, r10
 2651 02f6 FFF7FEFF 		bl	__aeabi_dsub
 2652 02fa 009B     		ldr	r3, [sp]
 2653 02fc 0135     		adds	r5, r5, #1
 2654 02fe AB42     		cmp	r3, r5
 2655 0300 04F10804 		add	r4, r4, #8
 2656 0304 C8E90001 		strd	r0, [r8]
 2657 0308 12D3     		bcc	.L331
 2658              	.L300:
 2659 030a B742     		cmp	r7, r6
 2660 030c E2D0     		beq	.L332
 2661 030e 2A46     		mov	r2, r5
 2662 0310 0499     		ldr	r1, [sp, #16]
 2663 0312 4846     		mov	r0, r9
 2664 0314 B847     		blx	r7
 2665 0316 D9F80030 		ldr	r3, [r9]
 2666 031a 9F68     		ldr	r7, [r3, #8]
 2667 031c DCE7     		b	.L297
 2668              	.L298:
 2669 031e 2A46     		mov	r2, r5
 2670 0320 0799     		ldr	r1, [sp, #28]
 2671 0322 4846     		mov	r0, r9
 2672 0324 B847     		blx	r7
 2673 0326 D9F80030 		ldr	r3, [r9]
 2674 032a 8046     		mov	r8, r0
 2675 032c 9F68     		ldr	r7, [r3, #8]
 2676 032e DEE7     		b	.L299
 2677              	.L331:
 2678 0330 CA46     		mov	r10, r9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 48


 2679              	.L295:
 2680 0332 059A     		ldr	r2, [sp, #20]
 2681 0334 079B     		ldr	r3, [sp, #28]
 2682 0336 5032     		adds	r2, r2, #80
 2683 0338 0592     		str	r2, [sp, #20]
 2684 033a 019A     		ldr	r2, [sp, #4]
 2685 033c 503A     		subs	r2, r2, #80
 2686 033e 0192     		str	r2, [sp, #4]
 2687 0340 009A     		ldr	r2, [sp]
 2688 0342 0133     		adds	r3, r3, #1
 2689 0344 9A42     		cmp	r2, r3
 2690 0346 0793     		str	r3, [sp, #28]
 2691 0348 A2D1     		bne	.L301
 2692 034a 0B9B     		ldr	r3, [sp, #44]
 2693 034c 0133     		adds	r3, r3, #1
 2694 034e 0B93     		str	r3, [sp, #44]
 2695 0350 0A9B     		ldr	r3, [sp, #40]
 2696 0352 BB46     		mov	fp, r7
 2697 0354 5833     		adds	r3, r3, #88
 2698 0356 0A93     		str	r3, [sp, #40]
 2699 0358 B345     		cmp	fp, r6
 2700 035a 069B     		ldr	r3, [sp, #24]
 2701 035c 0493     		str	r3, [sp, #16]
 2702 035e 3FF46EAE 		beq	.L333
 2703              	.L257:
 2704 0362 0499     		ldr	r1, [sp, #16]
 2705 0364 5046     		mov	r0, r10
 2706 0366 0A46     		mov	r2, r1
 2707 0368 D847     		blx	fp
 2708 036a DAF80030 		ldr	r3, [r10]
 2709 036e D3F808B0 		ldr	fp, [r3, #8]
 2710 0372 67E6     		b	.L258
 2711              	.L291:
 2712 0374 049A     		ldr	r2, [sp, #16]
 2713 0376 0799     		ldr	r1, [sp, #28]
 2714 0378 5046     		mov	r0, r10
 2715 037a B847     		blx	r7
 2716 037c DAF80030 		ldr	r3, [r10]
 2717 0380 9F68     		ldr	r7, [r3, #8]
 2718 0382 88E7     		b	.L292
 2719              	.L293:
 2720 0384 049A     		ldr	r2, [sp, #16]
 2721 0386 0799     		ldr	r1, [sp, #28]
 2722 0388 5046     		mov	r0, r10
 2723 038a B847     		blx	r7
 2724 038c DAF80030 		ldr	r3, [r10]
 2725 0390 9F68     		ldr	r7, [r3, #8]
 2726 0392 8BE7     		b	.L294
 2727              	.L281:
 2728 0394 049A     		ldr	r2, [sp, #16]
 2729 0396 0799     		ldr	r1, [sp, #28]
 2730 0398 5046     		mov	r0, r10
 2731 039a B847     		blx	r7
 2732 039c DAF80030 		ldr	r3, [r10]
 2733 03a0 9F68     		ldr	r7, [r3, #8]
 2734 03a2 1BE7     		b	.L282
 2735              	.L279:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 49


 2736 03a4 049A     		ldr	r2, [sp, #16]
 2737 03a6 0799     		ldr	r1, [sp, #28]
 2738 03a8 5046     		mov	r0, r10
 2739 03aa B847     		blx	r7
 2740 03ac DAF80030 		ldr	r3, [r10]
 2741 03b0 9F68     		ldr	r7, [r3, #8]
 2742 03b2 07E7     		b	.L280
 2743              	.L308:
 2744 03b4 B0EE4A8A 		vmov.f32	s16, s20
 2745 03b8 5EE6     		b	.L262
 2746              	.L274:
 2747 03ba 0499     		ldr	r1, [sp, #16]
 2748 03bc 5046     		mov	r0, r10
 2749 03be 0A46     		mov	r2, r1
 2750 03c0 D847     		blx	fp
 2751 03c2 DAF80030 		ldr	r3, [r10]
 2752 03c6 D3F808B0 		ldr	fp, [r3, #8]
 2753 03ca E6E6     		b	.L275
 2754              	.L330:
 2755 03cc 049C     		ldr	r4, [sp, #16]
 2756 03ce 0D9D     		ldr	r5, [sp, #52]
 2757 03d0 DDF83C90 		ldr	r9, [sp, #60]
 2758 03d4 5F46     		mov	r7, fp
 2759 03d6 0234     		adds	r4, r4, #2
 2760 03d8 3B46     		mov	r3, r7
 2761 03da 0AEBC404 		add	r4, r10, r4, lsl #3
 2762 03de 4FF00008 		mov	r8, #0
 2763 03e2 5746     		mov	r7, r10
 2764 03e4 18E0     		b	.L278
 2765              	.L334:
 2766 03e6 2046     		mov	r0, r4
 2767 03e8 B342     		cmp	r3, r6
 2768 03ea D0E900AB 		ldrd	r10, [r0]
 2769 03ee 1FD1     		bne	.L305
 2770              	.L335:
 2771 03f0 2B46     		mov	r3, r5
 2772              	.L306:
 2773 03f2 D3E90023 		ldrd	r2, [r3]
 2774 03f6 5046     		mov	r0, r10
 2775 03f8 5946     		mov	r1, fp
 2776 03fa FFF7FEFF 		bl	__aeabi_ddiv
 2777 03fe 069B     		ldr	r3, [sp, #24]
 2778 0400 08F10108 		add	r8, r8, #1
 2779 0404 4345     		cmp	r3, r8
 2780 0406 05F15805 		add	r5, r5, #88
 2781 040a 04F15004 		add	r4, r4, #80
 2782 040e E9E80201 		strd	r0, [r9], #8
 2783 0412 13D0     		beq	.L255
 2784 0414 3B68     		ldr	r3, [r7]
 2785 0416 9B68     		ldr	r3, [r3, #8]
 2786              	.L278:
 2787 0418 B342     		cmp	r3, r6
 2788 041a E4D0     		beq	.L334
 2789 041c 069A     		ldr	r2, [sp, #24]
 2790 041e 4146     		mov	r1, r8
 2791 0420 3846     		mov	r0, r7
 2792 0422 9847     		blx	r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 50


 2793 0424 3B68     		ldr	r3, [r7]
 2794 0426 9B68     		ldr	r3, [r3, #8]
 2795 0428 B342     		cmp	r3, r6
 2796 042a D0E900AB 		ldrd	r10, [r0]
 2797 042e DFD0     		beq	.L335
 2798              	.L305:
 2799 0430 4246     		mov	r2, r8
 2800 0432 4146     		mov	r1, r8
 2801 0434 3846     		mov	r0, r7
 2802 0436 9847     		blx	r3
 2803 0438 0346     		mov	r3, r0
 2804 043a DAE7     		b	.L306
 2805              	.L255:
 2806 043c 11B0     		add	sp, sp, #68
 2807              		@ sp needed
 2808 043e BDEC088B 		vldm	sp!, {d8-d11}
 2809 0442 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2810              	.L319:
 2811 0446 7047     		bx	lr
 2812              		.size	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEP
 2813              		.global	__aeabi_dadd
 2814              		.global	__aeabi_ui2d
 2815              		.section	.text._ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 2816              		.align	1
 2817              		.p2align 2,,3
 2818              		.global	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2819              		.syntax unified
 2820              		.thumb
 2821              		.thumb_func
 2822              		.fpu fpv4-sp-d16
 2823              		.type	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 2824              	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 2825              		@ args = 0, pretend = 0, frame = 4576
 2826              		@ frame_needed = 0, uses_anonymous_args = 0
 2827 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2828 0004 2DED048B 		vpush.64	{d8, d9}
 2829 0008 ADF58F5D 		sub	sp, sp, #4576
 2830 000c 85B0     		sub	sp, sp, #20
 2831 000e 8B46     		mov	fp, r1
 2832 0010 0C90     		str	r0, [sp, #48]
 2833 0012 1046     		mov	r0, r2
 2834 0014 1D93     		str	r3, [sp, #116]
 2835 0016 1092     		str	r2, [sp, #64]
 2836 0018 FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 2837 001c ABF10303 		sub	r3, fp, #3
 2838 0020 062B     		cmp	r3, #6
 2839 0022 0690     		str	r0, [sp, #24]
 2840 0024 00F2E280 		bhi	.L339
 2841 0028 BBF1050F 		cmp	fp, #5
 2842 002c 00F0DE80 		beq	.L339
 2843 0030 774B     		ldr	r3, .L420+8
 2844 0032 D3F80831 		ldr	r3, [r3, #264]
 2845 0036 D806     		lsls	r0, r3, #27
 2846 0038 00F11183 		bmi	.L409
 2847 003c 0DF6E803 		addw	r3, sp, #2280
 2848 0040 1893     		str	r3, [sp, #96]
 2849 0042 0DF5BC63 		add	r3, sp, #1504
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 51


 2850 0046 1993     		str	r3, [sp, #100]
 2851              	.L342:
 2852 0048 9FED6F7B 		vldr.64	d7, .L420
 2853 004c 069B     		ldr	r3, [sp, #24]
 2854 004e 8DED127B 		vstr.64	d7, [sp, #72]
 2855 0052 002B     		cmp	r3, #0
 2856 0054 00F01883 		beq	.L411
 2857 0058 44AB     		add	r3, sp, #272
 2858 005a 1793     		str	r3, [sp, #92]
 2859 005c 109A     		ldr	r2, [sp, #64]
 2860 005e 9FED6D8A 		vldr.32	s16, .L420+12
 2861 0062 199E     		ldr	r6, [sp, #100]
 2862 0064 0C9D     		ldr	r5, [sp, #48]
 2863 0066 189C     		ldr	r4, [sp, #96]
 2864 0068 CDF81CB0 		str	fp, [sp, #28]
 2865 006c 42AB     		add	r3, sp, #264
 2866 006e 1A93     		str	r3, [sp, #104]
 2867 0070 9946     		mov	r9, r3
 2868 0072 069B     		ldr	r3, [sp, #24]
 2869 0074 02F28717 		addw	r7, r2, #391
 2870 0078 07EB030A 		add	r10, r7, r3
 2871 007c 4FF00008 		mov	r8, #0
 2872 0080 CDF810A0 		str	r10, [sp, #16]
 2873              	.L346:
 2874 0084 9FED607B 		vldr.64	d7, .L420
 2875 0088 17F8013F 		ldrb	r3, [r7, #1]!	@ zero_extendqisi2
 2876 008c 604A     		ldr	r2, .L420+8
 2877 008e C3F38003 		ubfx	r3, r3, #2, #1
 2878 0092 D068     		ldr	r0, [r2, #12]
 2879 0094 0093     		str	r3, [sp]
 2880 0096 2246     		mov	r2, r4
 2881 0098 A9EC027B 		vstmia.64	r9!, {d7}
 2882 009c 0DF6EC03 		addw	r3, sp, #2284
 2883 00a0 4146     		mov	r1, r8
 2884 00a2 FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 2885 00a6 10EE100A 		vmov	r0, s0
 2886 00aa FFF7FEFF 		bl	__aeabi_f2d
 2887 00ae 0022     		movs	r2, #0
 2888 00b0 8246     		mov	r10, r0
 2889 00b2 8B46     		mov	fp, r1
 2890 00b4 2846     		mov	r0, r5
 2891 00b6 2146     		mov	r1, r4
 2892 00b8 84ED028A 		vstr.32	s16, [r4, #8]
 2893 00bc FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 2894 00c0 10EE100A 		vmov	r0, s0
 2895 00c4 FFF7FEFF 		bl	__aeabi_f2d
 2896 00c8 0122     		movs	r2, #1
 2897 00ca C6E90201 		strd	r0, [r6, #8]
 2898 00ce 2146     		mov	r1, r4
 2899 00d0 2846     		mov	r0, r5
 2900 00d2 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 2901 00d6 10EE100A 		vmov	r0, s0
 2902 00da FFF7FEFF 		bl	__aeabi_f2d
 2903 00de 0222     		movs	r2, #2
 2904 00e0 C6E90401 		strd	r0, [r6, #16]
 2905 00e4 2146     		mov	r1, r4
 2906 00e6 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 52


 2907 00e8 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 2908 00ec 10EE100A 		vmov	r0, s0
 2909 00f0 FFF7FEFF 		bl	__aeabi_f2d
 2910 00f4 5246     		mov	r2, r10
 2911 00f6 E6E90601 		strd	r0, [r6, #24]!
 2912 00fa 5B46     		mov	r3, fp
 2913 00fc 5046     		mov	r0, r10
 2914 00fe 5946     		mov	r1, fp
 2915 0100 FFF7FEFF 		bl	__aeabi_dmul
 2916 0104 0B46     		mov	r3, r1
 2917 0106 0246     		mov	r2, r0
 2918 0108 DDE91201 		ldrd	r0, [sp, #72]
 2919 010c FFF7FEFF 		bl	__aeabi_dadd
 2920 0110 049B     		ldr	r3, [sp, #16]
 2921 0112 9F42     		cmp	r7, r3
 2922 0114 08F10108 		add	r8, r8, #1
 2923 0118 CDE91201 		strd	r0, [sp, #72]
 2924 011c B2D1     		bne	.L346
 2925 011e DDF81CB0 		ldr	fp, [sp, #28]
 2926              	.L345:
 2927 0122 069C     		ldr	r4, [sp, #24]
 2928 0124 109D     		ldr	r5, [sp, #64]
 2929 0126 CBEB4B70 		rsb	r0, fp, fp, lsl #29
 2930 012a C000     		lsls	r0, r0, #3
 2931 012c 0830     		adds	r0, r0, #8
 2932 012e 1590     		str	r0, [sp, #84]
 2933 0130 1998     		ldr	r0, [sp, #100]
 2934 0132 04EB4401 		add	r1, r4, r4, lsl #1
 2935 0136 00EBC101 		add	r1, r0, r1, lsl #3
 2936 013a 4FEACB03 		lsl	r3, fp, #3
 2937 013e 2191     		str	r1, [sp, #132]
 2938 0140 C2A9     		add	r1, sp, #776
 2939 0142 1944     		add	r1, r1, r3
 2940 0144 2091     		str	r1, [sp, #128]
 2941 0146 1899     		ldr	r1, [sp, #96]
 2942 0148 1944     		add	r1, r1, r3
 2943 014a 1491     		str	r1, [sp, #80]
 2944 014c 0DF50F61 		add	r1, sp, #2288
 2945 0150 1944     		add	r1, r1, r3
 2946 0152 0791     		str	r1, [sp, #28]
 2947 0154 30A9     		add	r1, sp, #192
 2948 0156 04EBC402 		add	r2, r4, r4, lsl #3
 2949 015a CB18     		adds	r3, r1, r3
 2950 015c 05F58475 		add	r5, r5, #264
 2951 0160 2593     		str	r3, [sp, #148]
 2952 0162 D300     		lsls	r3, r2, #3
 2953 0164 2293     		str	r3, [sp, #136]
 2954 0166 05EB8403 		add	r3, r5, r4, lsl #2
 2955 016a 1193     		str	r3, [sp, #68]
 2956 016c 0223     		movs	r3, #2
 2957 016e 1C93     		str	r3, [sp, #112]
 2958 0170 0C9B     		ldr	r3, [sp, #48]
 2959 0172 1F95     		str	r5, [sp, #124]
 2960 0174 1A46     		mov	r2, r3
 2961 0176 2432     		adds	r2, r2, #36
 2962 0178 3033     		adds	r3, r3, #48
 2963 017a 2392     		str	r2, [sp, #140]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 53


 2964 017c 2493     		str	r3, [sp, #144]
 2965              	.L344:
 2966 017e 189B     		ldr	r3, [sp, #96]
 2967 0180 1A46     		mov	r2, r3
 2968 0182 254B     		ldr	r3, .L420+16
 2969 0184 1360     		str	r3, [r2]
 2970 0186 069B     		ldr	r3, [sp, #24]
 2971 0188 002B     		cmp	r3, #0
 2972 018a 4ED0     		beq	.L347
 2973 018c 199C     		ldr	r4, [sp, #100]
 2974 018e DDF88490 		ldr	r9, [sp, #132]
 2975 0192 DDF83080 		ldr	r8, [sp, #48]
 2976 0196 0DF50F65 		add	r5, sp, #2288
 2977              	.L352:
 2978 019a D4E90201 		ldrd	r0, [r4, #8]
 2979 019e FFF7FEFF 		bl	__aeabi_d2f
 2980 01a2 09EE100A 		vmov	s18, r0
 2981 01a6 D4E90401 		ldrd	r0, [r4, #16]
 2982 01aa FFF7FEFF 		bl	__aeabi_d2f
 2983 01ae 08EE900A 		vmov	s17, r0
 2984 01b2 D4E90601 		ldrd	r0, [r4, #24]
 2985 01b6 FFF7FEFF 		bl	__aeabi_d2f
 2986 01ba 08EE100A 		vmov	s16, r0
 2987 01be 2F46     		mov	r7, r5
 2988 01c0 0021     		movs	r1, #0
 2989              	.L348:
 2990 01c2 BBF1080F 		cmp	fp, #8
 2991 01c6 B0EE481A 		vmov.f32	s2, s16
 2992 01ca F0EE680A 		vmov.f32	s1, s17
 2993 01ce B0EE490A 		vmov.f32	s0, s18
 2994 01d2 4046     		mov	r0, r8
 2995 01d4 01F10106 		add	r6, r1, #1
 2996 01d8 00F08481 		beq	.L412
 2997              	.L349:
 2998 01dc FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff
 2999 01e0 B345     		cmp	fp, r6
 3000 01e2 A7EC020B 		vstmia.64	r7!, {d0}
 3001 01e6 1BD0     		beq	.L413
 3002 01e8 3146     		mov	r1, r6
 3003 01ea EAE7     		b	.L348
 3004              	.L339:
 3005 01ec 5A46     		mov	r2, fp
 3006 01ee 1D98     		ldr	r0, [sp, #116]
 3007 01f0 0A49     		ldr	r1, .L420+20
 3008 01f2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3009 01f6 0120     		movs	r0, #1
 3010 01f8 0DF58F5D 		add	sp, sp, #4576
 3011 01fc 05B0     		add	sp, sp, #20
 3012              		@ sp needed
 3013 01fe BDEC048B 		vldm	sp!, {d8-d9}
 3014 0202 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3015              	.L421:
 3016 0206 00BF     		.align	3
 3017              	.L420:
 3018 0208 00000000 		.word	0
 3019 020c 00000000 		.word	0
 3020 0210 00000000 		.word	reprap
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 54


 3021 0214 00000000 		.word	0
 3022 0218 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj9EE+8
 3023 021c 00000000 		.word	.LC8
 3024              	.L413:
 3025 0220 1834     		adds	r4, r4, #24
 3026 0222 4C45     		cmp	r4, r9
 3027 0224 05F14805 		add	r5, r5, #72
 3028 0228 B7D1     		bne	.L352
 3029              	.L347:
 3030 022a B34B     		ldr	r3, .L422+8
 3031 022c D3F80831 		ldr	r3, [r3, #264]
 3032 0230 13F01003 		ands	r3, r3, #16
 3033 0234 1B93     		str	r3, [sp, #108]
 3034 0236 40F0B681 		bne	.L414
 3035              	.L353:
 3036 023a 109B     		ldr	r3, [sp, #64]
 3037 023c D3F80801 		ldr	r0, [r3, #264]	@ float
 3038 0240 AE4B     		ldr	r3, .L422+12
 3039 0242 C293     		str	r3, [sp, #776]
 3040 0244 FFF7FEFF 		bl	__aeabi_f2d
 3041 0248 1A9B     		ldr	r3, [sp, #104]
 3042 024a D3E90023 		ldrd	r2, [r3]
 3043 024e FFF7FEFF 		bl	__aeabi_dadd
 3044 0252 01F10043 		add	r3, r1, #-2147483648
 3045 0256 0F93     		str	r3, [sp, #60]
 3046 0258 229A     		ldr	r2, [sp, #136]
 3047 025a 209B     		ldr	r3, [sp, #128]
 3048 025c 0993     		str	r3, [sp, #36]
 3049 025e 189B     		ldr	r3, [sp, #96]
 3050 0260 0E90     		str	r0, [sp, #56]
 3051 0262 583A     		subs	r2, r2, #88
 3052 0264 0892     		str	r2, [sp, #32]
 3053 0266 9946     		mov	r9, r3
 3054 0268 CDF878B0 		str	fp, [sp, #120]
 3055              	.L359:
 3056 026c 99ED027B 		vldr.64	d7, [r9, #8]
 3057 0270 0DF50F63 		add	r3, sp, #2288
 3058 0274 1693     		str	r3, [sp, #88]
 3059 0276 099A     		ldr	r2, [sp, #36]
 3060 0278 159B     		ldr	r3, [sp, #84]
 3061 027a 8DED047B 		vstr.64	d7, [sp, #16]
 3062 027e 03EB020B 		add	fp, r3, r2
 3063 0282 0DF50F64 		add	r4, sp, #2288
 3064              	.L356:
 3065 0286 D4E90023 		ldrd	r2, [r4]
 3066 028a DDE90401 		ldrd	r0, [sp, #16]
 3067 028e FFF7FEFF 		bl	__aeabi_dmul
 3068 0292 069B     		ldr	r3, [sp, #24]
 3069 0294 012B     		cmp	r3, #1
 3070 0296 0646     		mov	r6, r0
 3071 0298 0F46     		mov	r7, r1
 3072 029a 04F1080A 		add	r10, r4, #8
 3073 029e 17D9     		bls	.L354
 3074 02a0 089B     		ldr	r3, [sp, #32]
 3075 02a2 083C     		subs	r4, r4, #8
 3076 02a4 03EB0A08 		add	r8, r3, r10
 3077 02a8 4D46     		mov	r5, r9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 55


 3078              	.L355:
 3079 02aa D4E91423 		ldrd	r2, [r4, #80]
 3080 02ae D5E91401 		ldrd	r0, [r5, #80]
 3081 02b2 FFF7FEFF 		bl	__aeabi_dmul
 3082 02b6 0246     		mov	r2, r0
 3083 02b8 0B46     		mov	r3, r1
 3084 02ba 3046     		mov	r0, r6
 3085 02bc 3946     		mov	r1, r7
 3086 02be FFF7FEFF 		bl	__aeabi_dadd
 3087 02c2 4834     		adds	r4, r4, #72
 3088 02c4 A045     		cmp	r8, r4
 3089 02c6 0646     		mov	r6, r0
 3090 02c8 0F46     		mov	r7, r1
 3091 02ca 05F14805 		add	r5, r5, #72
 3092 02ce ECD1     		bne	.L355
 3093              	.L354:
 3094 02d0 079B     		ldr	r3, [sp, #28]
 3095 02d2 5345     		cmp	r3, r10
 3096 02d4 EBE80267 		strd	r6, [fp], #8
 3097 02d8 5446     		mov	r4, r10
 3098 02da D4D1     		bne	.L356
 3099 02dc DDE90E23 		ldrd	r2, [sp, #56]
 3100 02e0 DDE90401 		ldrd	r0, [sp, #16]
 3101 02e4 FFF7FEFF 		bl	__aeabi_dmul
 3102 02e8 069B     		ldr	r3, [sp, #24]
 3103 02ea 012B     		cmp	r3, #1
 3104 02ec 0646     		mov	r6, r0
 3105 02ee 0F46     		mov	r7, r1
 3106 02f0 2DD9     		bls	.L357
 3107 02f2 109B     		ldr	r3, [sp, #64]
 3108 02f4 CDF83490 		str	r9, [sp, #52]
 3109 02f8 4C46     		mov	r4, r9
 3110 02fa DDF85C80 		ldr	r8, [sp, #92]
 3111 02fe DDF84490 		ldr	r9, [sp, #68]
 3112 0302 03F58675 		add	r5, r3, #268
 3113              	.L358:
 3114 0306 F8E80223 		ldrd	r2, [r8], #8
 3115 030a 55F8040B 		ldr	r0, [r5], #4	@ float
 3116 030e CDE90423 		strd	r2, [sp, #16]
 3117 0312 FFF7FEFF 		bl	__aeabi_f2d
 3118 0316 DDE90423 		ldrd	r2, [sp, #16]
 3119 031a FFF7FEFF 		bl	__aeabi_dadd
 3120 031e 01F1004B 		add	fp, r1, #-2147483648
 3121 0322 D4E91423 		ldrd	r2, [r4, #80]
 3122 0326 5946     		mov	r1, fp
 3123 0328 8246     		mov	r10, r0
 3124 032a FFF7FEFF 		bl	__aeabi_dmul
 3125 032e 0246     		mov	r2, r0
 3126 0330 0B46     		mov	r3, r1
 3127 0332 3046     		mov	r0, r6
 3128 0334 3946     		mov	r1, r7
 3129 0336 FFF7FEFF 		bl	__aeabi_dadd
 3130 033a 4D45     		cmp	r5, r9
 3131 033c 0646     		mov	r6, r0
 3132 033e 0F46     		mov	r7, r1
 3133 0340 04F14804 		add	r4, r4, #72
 3134 0344 DFD1     		bne	.L358
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 56


 3135 0346 CDE90AAB 		strd	r10, [sp, #40]
 3136 034a DDF83490 		ldr	r9, [sp, #52]
 3137              	.L357:
 3138 034e 099B     		ldr	r3, [sp, #36]
 3139 0350 C3E90267 		strd	r6, [r3, #8]
 3140 0354 5033     		adds	r3, r3, #80
 3141 0356 0993     		str	r3, [sp, #36]
 3142 0358 149B     		ldr	r3, [sp, #80]
 3143 035a 09F10809 		add	r9, r9, #8
 3144 035e 9945     		cmp	r9, r3
 3145 0360 84D1     		bne	.L359
 3146 0362 1B9B     		ldr	r3, [sp, #108]
 3147 0364 DDF878B0 		ldr	fp, [sp, #120]
 3148 0368 002B     		cmp	r3, #0
 3149 036a 40F01481 		bne	.L415
 3150              	.L360:
 3151 036e 30A9     		add	r1, sp, #192
 3152 0370 5A46     		mov	r2, fp
 3153 0372 C2A8     		add	r0, sp, #776
 3154 0374 FFF7FEFF 		bl	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3155 0378 5F4B     		ldr	r3, .L422+8
 3156 037a D3F80831 		ldr	r3, [r3, #264]
 3157 037e D906     		lsls	r1, r3, #27
 3158 0380 00F12A81 		bmi	.L416
 3159              	.L361:
 3160 0384 0C9C     		ldr	r4, [sp, #48]
 3161 0386 D4ED177A 		vldr.32	s15, [r4, #92]
 3162 038a 94ED096A 		vldr.32	s12, [r4, #36]
 3163 038e D4ED0A6A 		vldr.32	s13, [r4, #40]
 3164 0392 94ED0B7A 		vldr.32	s14, [r4, #44]
 3165 0396 76EEA76A 		vadd.f32	s13, s13, s15
 3166 039a 36EE276A 		vadd.f32	s12, s12, s15
 3167 039e 77EE277A 		vadd.f32	s15, s14, s15
 3168 03a2 30AA     		add	r2, sp, #192
 3169 03a4 5946     		mov	r1, fp
 3170 03a6 2046     		mov	r0, r4
 3171 03a8 CDED286A 		vstr.32	s13, [sp, #160]
 3172 03ac 8DED276A 		vstr.32	s12, [sp, #156]
 3173 03b0 CDED297A 		vstr.32	s15, [sp, #164]
 3174 03b4 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6AdjustEjPKd
 3175 03b8 D4ED176A 		vldr.32	s13, [r4, #92]
 3176 03bc 239B     		ldr	r3, [sp, #140]
 3177 03be 2498     		ldr	r0, [sp, #144]
 3178 03c0 27A9     		add	r1, sp, #156
 3179 03c2 2AAA     		add	r2, sp, #168
 3180              	.L365:
 3181 03c4 B3EC017A 		vldmia.32	r3!, {s14}
 3182 03c8 F1EC017A 		vldmia.32	r1!, {s15}
 3183 03cc 36EE877A 		vadd.f32	s14, s13, s14
 3184 03d0 9842     		cmp	r0, r3
 3185 03d2 77EE677A 		vsub.f32	s15, s14, s15
 3186 03d6 E2EC017A 		vstmia.32	r2!, {s15}
 3187 03da F3D1     		bne	.L365
 3188 03dc 464B     		ldr	r3, .L422+8
 3189 03de 0322     		movs	r2, #3
 3190 03e0 D868     		ldr	r0, [r3, #12]
 3191 03e2 2AA9     		add	r1, sp, #168
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 57


 3192 03e4 FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
 3193 03e8 9FED417B 		vldr.64	d7, .L422
 3194 03ec 069B     		ldr	r3, [sp, #24]
 3195 03ee 8DED047B 		vstr.64	d7, [sp, #16]
 3196 03f2 002B     		cmp	r3, #0
 3197 03f4 54D0     		beq	.L366
 3198 03f6 CDF834B0 		str	fp, [sp, #52]
 3199 03fa DDF868A0 		ldr	r10, [sp, #104]
 3200 03fe DDF87C80 		ldr	r8, [sp, #124]
 3201 0402 199E     		ldr	r6, [sp, #100]
 3202 0404 DDF844B0 		ldr	fp, [sp, #68]
 3203 0408 0DF50279 		add	r9, sp, #520
 3204 040c 36AF     		add	r7, sp, #216
 3205              	.L368:
 3206 040e 06F10805 		add	r5, r6, #8
 3207 0412 30AC     		add	r4, sp, #192
 3208              	.L367:
 3209 0414 F4E80223 		ldrd	r2, [r4], #8
 3210 0418 D5E90001 		ldrd	r0, [r5]
 3211 041c FFF7FEFF 		bl	__aeabi_dadd
 3212 0420 BC42     		cmp	r4, r7
 3213 0422 E5E80201 		strd	r0, [r5], #8
 3214 0426 F5D1     		bne	.L367
 3215 0428 D6E90601 		ldrd	r0, [r6, #24]
 3216 042c FFF7FEFF 		bl	__aeabi_d2f
 3217 0430 0990     		str	r0, [sp, #36]
 3218 0432 D6E90401 		ldrd	r0, [r6, #16]
 3219 0436 FFF7FEFF 		bl	__aeabi_d2f
 3220 043a 0890     		str	r0, [sp, #32]
 3221 043c D6E90201 		ldrd	r0, [r6, #8]
 3222 0440 FFF7FEFF 		bl	__aeabi_d2f
 3223 0444 9DED091A 		vldr.32	s2, [sp, #36]	@ int
 3224 0448 DDED080A 		vldr.32	s1, [sp, #32]	@ int
 3225 044c 00EE100A 		vmov	s0, r0
 3226 0450 2DA9     		add	r1, sp, #180
 3227 0452 0C98     		ldr	r0, [sp, #48]
 3228 0454 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16ForwardTransformEfffPf
 3229 0458 9DED2F8A 		vldr.32	s16, [sp, #188]
 3230 045c 18EE100A 		vmov	r0, s16
 3231 0460 FFF7FEFF 		bl	__aeabi_f2d
 3232 0464 F8EC017A 		vldmia.32	r8!, {s15}
 3233 0468 78EE277A 		vadd.f32	s15, s16, s15
 3234 046c EAE80201 		strd	r0, [r10], #8
 3235 0470 17EE900A 		vmov	r0, s15
 3236 0474 FFF7FEFF 		bl	__aeabi_f2d
 3237 0478 0246     		mov	r2, r0
 3238 047a 0B46     		mov	r3, r1
 3239 047c E9E80223 		strd	r2, [r9], #8
 3240 0480 FFF7FEFF 		bl	__aeabi_dmul
 3241 0484 0246     		mov	r2, r0
 3242 0486 0B46     		mov	r3, r1
 3243 0488 DDE90401 		ldrd	r0, [sp, #16]
 3244 048c FFF7FEFF 		bl	__aeabi_dadd
 3245 0490 D845     		cmp	r8, fp
 3246 0492 06F11806 		add	r6, r6, #24
 3247 0496 CDE90401 		strd	r0, [sp, #16]
 3248 049a B8D1     		bne	.L368
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 58


 3249 049c DDF834B0 		ldr	fp, [sp, #52]
 3250              	.L366:
 3251 04a0 0698     		ldr	r0, [sp, #24]
 3252 04a2 FFF7FEFF 		bl	__aeabi_ui2d
 3253 04a6 0246     		mov	r2, r0
 3254 04a8 0B46     		mov	r3, r1
 3255 04aa 0446     		mov	r4, r0
 3256 04ac 0D46     		mov	r5, r1
 3257 04ae DDE90401 		ldrd	r0, [sp, #16]
 3258 04b2 FFF7FEFF 		bl	__aeabi_ddiv
 3259 04b6 FFF7FEFF 		bl	__aeabi_d2f
 3260 04ba 00EE100A 		vmov	s0, r0
 3261 04be B5EE400A 		vcmp.f32	s0, #0
 3262 04c2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3263 04c6 B1EEC08A 		vsqrt.f32	s16, s0
 3264 04ca 00F1E580 		bmi	.L417
 3265              	.L369:
 3266 04ce 0A4B     		ldr	r3, .L422+8
 3267 04d0 D3F80831 		ldr	r3, [r3, #264]
 3268 04d4 DA06     		lsls	r2, r3, #27
 3269 04d6 73D4     		bmi	.L418
 3270              	.L370:
 3271 04d8 1C9B     		ldr	r3, [sp, #112]
 3272 04da 012B     		cmp	r3, #1
 3273 04dc 10D0     		beq	.L371
 3274 04de 0123     		movs	r3, #1
 3275 04e0 1C93     		str	r3, [sp, #112]
 3276 04e2 4CE6     		b	.L344
 3277              	.L412:
 3278 04e4 0529     		cmp	r1, #5
 3279 04e6 71D9     		bls	.L350
 3280 04e8 3146     		mov	r1, r6
 3281 04ea 77E6     		b	.L349
 3282              	.L423:
 3283 04ec AFF30080 		.align	3
 3284              	.L422:
 3285 04f0 00000000 		.word	0
 3286 04f4 00000000 		.word	0
 3287 04f8 00000000 		.word	reprap
 3288 04fc 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 3289              	.L371:
 3290 0500 674B     		ldr	r3, .L424
 3291 0502 D3F80831 		ldr	r3, [r3, #264]
 3292 0506 DB06     		lsls	r3, r3, #27
 3293 0508 0DD5     		bpl	.L372
 3294 050a 189E     		ldr	r6, [sp, #96]
 3295 050c 0C98     		ldr	r0, [sp, #48]
 3296 050e C296     		str	r6, [sp, #776]
 3297 0510 0022     		movs	r2, #0
 3298 0512 DD23     		movs	r3, #221
 3299 0514 C2A9     		add	r1, sp, #776
 3300 0516 3270     		strb	r2, [r6]
 3301 0518 C393     		str	r3, [sp, #780]
 3302 051a FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef
 3303 051e 3146     		mov	r1, r6
 3304 0520 6048     		ldr	r0, .L424+4
 3305 0522 FFF7FEFF 		bl	debugPrintf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 59


 3306              	.L372:
 3307 0526 2246     		mov	r2, r4
 3308 0528 2B46     		mov	r3, r5
 3309 052a DDE91201 		ldrd	r0, [sp, #72]
 3310 052e FFF7FEFF 		bl	__aeabi_ddiv
 3311 0532 FFF7FEFF 		bl	__aeabi_d2f
 3312 0536 00EE100A 		vmov	s0, r0
 3313 053a B5EE400A 		vcmp.f32	s0, #0
 3314 053e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3315 0542 F1EEC08A 		vsqrt.f32	s17, s0
 3316 0546 00F1A480 		bmi	.L419
 3317              	.L373:
 3318 054a 18EE100A 		vmov	r0, s16
 3319 054e FFF7FEFF 		bl	__aeabi_f2d
 3320 0552 CDE90201 		strd	r0, [sp, #8]
 3321 0556 18EE900A 		vmov	r0, s17
 3322 055a FFF7FEFF 		bl	__aeabi_f2d
 3323 055e 1D9C     		ldr	r4, [sp, #116]
 3324 0560 069B     		ldr	r3, [sp, #24]
 3325 0562 CDE90001 		strd	r0, [sp]
 3326 0566 5A46     		mov	r2, fp
 3327 0568 4F49     		ldr	r1, .L424+8
 3328 056a 2046     		mov	r0, r4
 3329 056c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3330 0570 4B4A     		ldr	r2, .L424
 3331 0572 2368     		ldr	r3, [r4]
 3332 0574 5068     		ldr	r0, [r2, #4]
 3333 0576 4B4A     		ldr	r2, .L424+4
 3334 0578 8021     		movs	r1, #128
 3335 057a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3336 057e 0C9A     		ldr	r2, [sp, #48]
 3337 0580 0123     		movs	r3, #1
 3338 0582 0020     		movs	r0, #0
 3339 0584 82F89030 		strb	r3, [r2, #144]
 3340 0588 0DF58F5D 		add	sp, sp, #4576
 3341 058c 05B0     		add	sp, sp, #20
 3342              		@ sp needed
 3343 058e BDEC048B 		vldm	sp!, {d8-d9}
 3344 0592 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3345              	.L415:
 3346 0596 0BF10103 		add	r3, fp, #1
 3347 059a 5A46     		mov	r2, fp
 3348 059c C2A9     		add	r1, sp, #776
 3349 059e 4348     		ldr	r0, .L424+12
 3350 05a0 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3351 05a4 E3E6     		b	.L360
 3352              	.L414:
 3353 05a6 5B46     		mov	r3, fp
 3354 05a8 069A     		ldr	r2, [sp, #24]
 3355 05aa 1899     		ldr	r1, [sp, #96]
 3356 05ac 4048     		ldr	r0, .L424+16
 3357 05ae FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3358 05b2 3B4B     		ldr	r3, .L424
 3359 05b4 D3F80831 		ldr	r3, [r3, #264]
 3360 05b8 03F01003 		and	r3, r3, #16
 3361 05bc 1B93     		str	r3, [sp, #108]
 3362 05be 3CE6     		b	.L353
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 60


 3363              	.L418:
 3364 05c0 069A     		ldr	r2, [sp, #24]
 3365 05c2 3C48     		ldr	r0, .L424+20
 3366 05c4 82A9     		add	r1, sp, #520
 3367 05c6 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 3368 05ca 85E7     		b	.L370
 3369              	.L350:
 3370 05cc FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff
 3371 05d0 3146     		mov	r1, r6
 3372 05d2 A7EC020B 		vstmia.64	r7!, {d0}
 3373 05d6 F4E5     		b	.L348
 3374              	.L416:
 3375 05d8 0BF10103 		add	r3, fp, #1
 3376 05dc 5A46     		mov	r2, fp
 3377 05de C2A9     		add	r1, sp, #776
 3378 05e0 3548     		ldr	r0, .L424+24
 3379 05e2 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3380 05e6 5A46     		mov	r2, fp
 3381 05e8 30A9     		add	r1, sp, #192
 3382 05ea 3448     		ldr	r0, .L424+28
 3383 05ec FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 3384 05f0 3348     		ldr	r0, .L424+32
 3385 05f2 FFF7FEFF 		bl	debugPrintf
 3386 05f6 069B     		ldr	r3, [sp, #24]
 3387 05f8 6BB3     		cbz	r3, .L362
 3388 05fa CDF810B0 		str	fp, [sp, #16]
 3389 05fe DFF8C890 		ldr	r9, .L424+40
 3390 0602 DDF87C80 		ldr	r8, [sp, #124]
 3391 0606 DDF894A0 		ldr	r10, [sp, #148]
 3392 060a DDF858B0 		ldr	fp, [sp, #88]
 3393              	.L364:
 3394 060e 58F8040B 		ldr	r0, [r8], #4	@ float
 3395 0612 FFF7FEFF 		bl	__aeabi_f2d
 3396 0616 5D46     		mov	r5, fp
 3397 0618 0646     		mov	r6, r0
 3398 061a 0F46     		mov	r7, r1
 3399 061c 30AC     		add	r4, sp, #192
 3400              	.L363:
 3401 061e F5E80223 		ldrd	r2, [r5], #8
 3402 0622 F4E80201 		ldrd	r0, [r4], #8
 3403 0626 FFF7FEFF 		bl	__aeabi_dmul
 3404 062a 0246     		mov	r2, r0
 3405 062c 0B46     		mov	r3, r1
 3406 062e 3046     		mov	r0, r6
 3407 0630 3946     		mov	r1, r7
 3408 0632 FFF7FEFF 		bl	__aeabi_dadd
 3409 0636 A245     		cmp	r10, r4
 3410 0638 0646     		mov	r6, r0
 3411 063a 0F46     		mov	r7, r1
 3412 063c EFD1     		bne	.L363
 3413 063e 0246     		mov	r2, r0
 3414 0640 0B46     		mov	r3, r1
 3415 0642 4846     		mov	r0, r9
 3416 0644 FFF7FEFF 		bl	debugPrintf
 3417 0648 119B     		ldr	r3, [sp, #68]
 3418 064a 9845     		cmp	r8, r3
 3419 064c 0BF1480B 		add	fp, fp, #72
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 61


 3420 0650 DDD1     		bne	.L364
 3421 0652 DDF810B0 		ldr	fp, [sp, #16]
 3422              	.L362:
 3423 0656 1B48     		ldr	r0, .L424+36
 3424 0658 FFF7FEFF 		bl	debugPrintf
 3425 065c 92E6     		b	.L361
 3426              	.L409:
 3427 065e 0DF5BC63 		add	r3, sp, #1504
 3428 0662 0DF6E804 		addw	r4, sp, #2280
 3429 0666 1D46     		mov	r5, r3
 3430 0668 1993     		str	r3, [sp, #100]
 3431 066a 0022     		movs	r2, #0
 3432 066c DD23     		movs	r3, #221
 3433 066e 2946     		mov	r1, r5
 3434 0670 0C98     		ldr	r0, [sp, #48]
 3435 0672 1894     		str	r4, [sp, #96]
 3436 0674 2270     		strb	r2, [r4]
 3437 0676 C5E90043 		strd	r4, r3, [r5]
 3438 067a FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef
 3439 067e 2146     		mov	r1, r4
 3440 0680 0848     		ldr	r0, .L424+4
 3441 0682 FFF7FEFF 		bl	debugPrintf
 3442 0686 DFE4     		b	.L342
 3443              	.L411:
 3444 0688 44AB     		add	r3, sp, #272
 3445 068a 1793     		str	r3, [sp, #92]
 3446 068c 42AB     		add	r3, sp, #264
 3447 068e 1A93     		str	r3, [sp, #104]
 3448 0690 47E5     		b	.L345
 3449              	.L419:
 3450 0692 FFF7FEFF 		bl	sqrtf
 3451 0696 58E7     		b	.L373
 3452              	.L417:
 3453 0698 FFF7FEFF 		bl	sqrtf
 3454 069c 17E7     		b	.L369
 3455              	.L425:
 3456 069e 00BF     		.align	2
 3457              	.L424:
 3458 06a0 00000000 		.word	reprap
 3459 06a4 54000000 		.word	.LC9
 3460 06a8 C8000000 		.word	.LC18
 3461 06ac 6C000000 		.word	.LC11
 3462 06b0 58000000 		.word	.LC10
 3463 06b4 B0000000 		.word	.LC17
 3464 06b8 7C000000 		.word	.LC12
 3465 06bc 8C000000 		.word	.LC13
 3466 06c0 98000000 		.word	.LC14
 3467 06c4 AC000000 		.word	.LC16
 3468 06c8 A4000000 		.word	.LC15
 3469              		.size	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21L
 3470              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 3471              		.align	1
 3472              		.p2align 2,,3
 3473              		.weak	_ZN6StringILj220EE6printfEPKcz
 3474              		.syntax unified
 3475              		.thumb
 3476              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 62


 3477              		.fpu fpv4-sp-d16
 3478              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 3479              	_ZN6StringILj220EE6printfEPKcz:
 3480              		@ args = 4, pretend = 12, frame = 16
 3481              		@ frame_needed = 0, uses_anonymous_args = 1
 3482 0000 0EB4     		push	{r1, r2, r3}
 3483 0002 00B5     		push	{lr}
 3484 0004 84B0     		sub	sp, sp, #16
 3485 0006 05AA     		add	r2, sp, #20
 3486 0008 0290     		str	r0, [sp, #8]
 3487 000a 52F8041B 		ldr	r1, [r2], #4
 3488 000e 0192     		str	r2, [sp, #4]
 3489 0010 DD23     		movs	r3, #221
 3490 0012 02A8     		add	r0, sp, #8
 3491 0014 0393     		str	r3, [sp, #12]
 3492 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 3493 001a 04B0     		add	sp, sp, #16
 3494              		@ sp needed
 3495 001c 5DF804EB 		ldr	lr, [sp], #4
 3496 0020 03B0     		add	sp, sp, #12
 3497 0022 7047     		bx	lr
 3498              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 3499              		.section	.text._ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 3500              		.align	1
 3501              		.p2align 2,,3
 3502              		.global	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore
 3503              		.syntax unified
 3504              		.thumb
 3505              		.thumb_func
 3506              		.fpu fpv4-sp-d16
 3507              		.type	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore, %function
 3508              	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore:
 3509              		@ args = 0, pretend = 0, frame = 224
 3510              		@ frame_needed = 0, uses_anonymous_args = 0
 3511 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 3512 0004 2DED028B 		vpush.64	{d8}
 3513 0008 0D46     		mov	r5, r1
 3514 000a C4B0     		sub	sp, sp, #272
 3515 000c 0446     		mov	r4, r0
 3516 000e 3849     		ldr	r1, .L439
 3517 0010 2846     		mov	r0, r5
 3518 0012 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3519 0016 20B9     		cbnz	r0, .L438
 3520              	.L429:
 3521 0018 44B0     		add	sp, sp, #272
 3522              		@ sp needed
 3523 001a BDEC028B 		vldm	sp!, {d8}
 3524 001e BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 3525              	.L438:
 3526 0022 44AE     		add	r6, sp, #272
 3527 0024 0023     		movs	r3, #0
 3528 0026 2069     		ldr	r0, [r4, #16]	@ float
 3529 0028 06F8E03D 		strb	r3, [r6, #-224]!
 3530 002c FFF7FEFF 		bl	__aeabi_f2d
 3531 0030 8046     		mov	r8, r0
 3532 0032 206A     		ldr	r0, [r4, #32]	@ float
 3533 0034 8946     		mov	r9, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 63


 3534 0036 FFF7FEFF 		bl	__aeabi_f2d
 3535 003a CDE90A01 		strd	r0, [sp, #40]
 3536 003e E069     		ldr	r0, [r4, #28]	@ float
 3537 0040 FFF7FEFF 		bl	__aeabi_f2d
 3538 0044 CDE90801 		strd	r0, [sp, #32]
 3539 0048 A069     		ldr	r0, [r4, #24]	@ float
 3540 004a FFF7FEFF 		bl	__aeabi_f2d
 3541 004e CDE90601 		strd	r0, [sp, #24]
 3542 0052 206B     		ldr	r0, [r4, #48]	@ float
 3543 0054 FFF7FEFF 		bl	__aeabi_f2d
 3544 0058 CDE90401 		strd	r0, [sp, #16]
 3545 005c 606B     		ldr	r0, [r4, #52]	@ float
 3546 005e FFF7FEFF 		bl	__aeabi_f2d
 3547 0062 CDE90201 		strd	r0, [sp, #8]
 3548 0066 6069     		ldr	r0, [r4, #20]	@ float
 3549 0068 FFF7FEFF 		bl	__aeabi_f2d
 3550 006c 4246     		mov	r2, r8
 3551 006e CDE90001 		strd	r0, [sp]
 3552 0072 4B46     		mov	r3, r9
 3553 0074 1F49     		ldr	r1, .L439+4
 3554 0076 3046     		mov	r0, r6
 3555 0078 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3556 007c 3146     		mov	r1, r6
 3557 007e 2846     		mov	r0, r5
 3558 0080 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3559 0084 0028     		cmp	r0, #0
 3560 0086 C7D0     		beq	.L429
 3561 0088 606A     		ldr	r0, [r4, #36]	@ float
 3562 008a 9FED1B8A 		vldr.32	s16, .L439+8
 3563 008e FFF7FEFF 		bl	__aeabi_f2d
 3564 0092 D4ED0F7A 		vldr.32	s15, [r4, #60]
 3565 0096 67EE887A 		vmul.f32	s15, s15, s16
 3566 009a 8046     		mov	r8, r0
 3567 009c 17EE900A 		vmov	r0, s15
 3568 00a0 8946     		mov	r9, r1
 3569 00a2 FFF7FEFF 		bl	__aeabi_f2d
 3570 00a6 D4ED0E7A 		vldr.32	s15, [r4, #56]
 3571 00aa 67EE887A 		vmul.f32	s15, s15, s16
 3572 00ae CDE90601 		strd	r0, [sp, #24]
 3573 00b2 17EE900A 		vmov	r0, s15
 3574 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3575 00ba CDE90401 		strd	r0, [sp, #16]
 3576 00be E06A     		ldr	r0, [r4, #44]	@ float
 3577 00c0 FFF7FEFF 		bl	__aeabi_f2d
 3578 00c4 CDE90201 		strd	r0, [sp, #8]
 3579 00c8 A06A     		ldr	r0, [r4, #40]	@ float
 3580 00ca FFF7FEFF 		bl	__aeabi_f2d
 3581 00ce 4246     		mov	r2, r8
 3582 00d0 CDE90001 		strd	r0, [sp]
 3583 00d4 4B46     		mov	r3, r9
 3584 00d6 0949     		ldr	r1, .L439+12
 3585 00d8 3046     		mov	r0, r6
 3586 00da FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3587 00de 3146     		mov	r1, r6
 3588 00e0 2846     		mov	r0, r5
 3589 00e2 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3590 00e6 44B0     		add	sp, sp, #272
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 64


 3591              		@ sp needed
 3592 00e8 BDEC028B 		vldm	sp!, {d8}
 3593 00ec BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 3594              	.L440:
 3595              		.align	2
 3596              	.L439:
 3597 00f0 00000000 		.word	.LC19
 3598 00f4 14000000 		.word	.LC20
 3599 00f8 0000C842 		.word	1120403456
 3600 00fc 44000000 		.word	.LC21
 3601              		.size	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21LinearDeltaKine
 3602              		.global	_ZTV21LinearDeltaKinematics
 3603              		.weak	_ZTV11FixedMatrixIdLj32ELj9EE
 3604              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj9EE,comdat
 3605              		.align	2
 3606              		.type	_ZTV11FixedMatrixIdLj32ELj9EE, %object
 3607              		.size	_ZTV11FixedMatrixIdLj32ELj9EE, 32
 3608              	_ZTV11FixedMatrixIdLj32ELj9EE:
 3609 0000 00000000 		.word	0
 3610 0004 00000000 		.word	0
 3611 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 3612 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 3613 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 3614 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 3615 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 3616 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 3617              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
 3618              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 3619              		.align	2
 3620              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 3621              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 3622              	_ZTV11FixedMatrixIdLj9ELj10EE:
 3623 0000 00000000 		.word	0
 3624 0004 00000000 		.word	0
 3625 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 3626 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 3627 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3628 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 3629 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 3630 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 3631              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3632              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3633              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3634              	_ZL28cpu_irq_prev_interrupt_state:
 3635 0000 00       		.space	1
 3636              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3637              		.align	2
 3638              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3639              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3640              	_ZL32cpu_irq_critical_section_counter:
 3641 0000 00000000 		.space	4
 3642              		.section	.rodata._ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 3643              		.align	2
 3644              	.LC8:
 3645 0000 44656C74 		.ascii	"Delta calibration with %d factors requested but onl"
 3645      61206361 
 3645      6C696272 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 65


 3645      6174696F 
 3645      6E207769 
 3646 0033 7920332C 		.ascii	"y 3, 4, 6, 7, 8 and 9 supported\000"
 3646      20342C20 
 3646      362C2037 
 3646      2C203820 
 3646      616E6420 
 3647 0053 00       		.space	1
 3648              	.LC9:
 3649 0054 25730A00 		.ascii	"%s\012\000"
 3650              	.LC10:
 3651 0058 44657269 		.ascii	"Derivative matrix\000"
 3651      76617469 
 3651      7665206D 
 3651      61747269 
 3651      7800
 3652 006a 0000     		.space	2
 3653              	.LC11:
 3654 006c 4E6F726D 		.ascii	"Normal matrix\000"
 3654      616C206D 
 3654      61747269 
 3654      7800
 3655 007a 0000     		.space	2
 3656              	.LC12:
 3657 007c 536F6C76 		.ascii	"Solved matrix\000"
 3657      6564206D 
 3657      61747269 
 3657      7800
 3658 008a 0000     		.space	2
 3659              	.LC13:
 3660 008c 536F6C75 		.ascii	"Solution\000"
 3660      74696F6E 
 3660      00
 3661 0095 000000   		.space	3
 3662              	.LC14:
 3663 0098 52657369 		.ascii	"Residuals:\000"
 3663      6475616C 
 3663      733A00
 3664 00a3 00       		.space	1
 3665              	.LC15:
 3666 00a4 2025372E 		.ascii	" %7.4f\000"
 3666      346600
 3667 00ab 00       		.space	1
 3668              	.LC16:
 3669 00ac 0A00     		.ascii	"\012\000"
 3670 00ae 0000     		.space	2
 3671              	.LC17:
 3672 00b0 45787065 		.ascii	"Expected probe error\000"
 3672      63746564 
 3672      2070726F 
 3672      62652065 
 3672      72726F72 
 3673 00c5 000000   		.space	3
 3674              	.LC18:
 3675 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 3675      62726174 
 3675      65642025 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 66


 3675      64206661 
 3675      63746F72 
 3676 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 3676      20252E33 
 3676      66206166 
 3676      74657220 
 3676      252E3366 
 3677              		.section	.rodata._ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 3678              		.align	2
 3679              	.LC5:
 3680 0000 44696167 		.ascii	"Diagonal %.3f, delta radius %.3f, homed height %.3f"
 3680      6F6E616C 
 3680      20252E33 
 3680      662C2064 
 3680      656C7461 
 3681 0033 2C206265 		.ascii	", bed radius %.1f, X %.3f\302\260, Y %.3f\302\260, "
 3681      64207261 
 3681      64697573 
 3681      20252E31 
 3681      662C2058 
 3682 005a 5A20252E 		.ascii	"Z %.3f\302\260\000"
 3682      3366C2B0 
 3682      00
 3683 0063 00       		.space	1
 3684              	.LC6:
 3685 0064 456E6473 		.ascii	"Endstop adjustments X%.2f Y%.2f Z%.2f, tilt X%.2f%%"
 3685      746F7020 
 3685      61646A75 
 3685      73746D65 
 3685      6E747320 
 3686 0097 2059252E 		.ascii	" Y%.2f%%\000"
 3686      32662525 
 3686      00
 3687              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 3688              		.align	2
 3689              	.LC1:
 3690 0000 58595A00 		.ascii	"XYZ\000"
 3691              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 3692              		.align	2
 3693              	.LC0:
 3694 0000 58595A55 		.ascii	"XYZUVWABC\000"
 3694      56574142 
 3694      4300
 3695              		.section	.rodata._ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 3696              		.align	2
 3697              	.LC7:
 3698 0000 53746F70 		.ascii	"Stops X%.3f Y%.3f Z%.3f height %.3f diagonal %.3f r"
 3698      73205825 
 3698      2E336620 
 3698      59252E33 
 3698      66205A25 
 3699 0033 61646975 		.ascii	"adius %.3f xcorr %.2f ycorr %.2f zcorr %.2f xtilt %"
 3699      7320252E 
 3699      33662078 
 3699      636F7272 
 3699      20252E32 
 3700 0066 2E336625 		.ascii	".3f%% ytilt %.3f%%\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 67


 3700      25207974 
 3700      696C7420 
 3700      252E3366 
 3700      25250A00 
 3701              		.section	.rodata._ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%prog
 3702              		.align	2
 3703              	.LC4:
 3704 0000 686F6D65 		.ascii	"homedelta.g\000"
 3704      64656C74 
 3704      612E6700 
 3705              		.section	.rodata._ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 3706              		.align	2
 3707              	.LC19:
 3708 0000 3B204465 		.ascii	"; Delta parameters\012\000"
 3708      6C746120 
 3708      70617261 
 3708      6D657465 
 3708      72730A00 
 3709              	.LC20:
 3710 0014 4D363635 		.ascii	"M665 L%.3f R%.3f H%.3f B%.1f X%.3f Y%.3f Z%.3f\012\000"
 3710      204C252E 
 3710      33662052 
 3710      252E3366 
 3710      2048252E 
 3711              	.LC21:
 3712 0044 4D363636 		.ascii	"M666 X%.3f Y%.3f Z%.3f A%.2f B%.2f\012\000"
 3712      2058252E 
 3712      33662059 
 3712      252E3366 
 3712      205A252E 
 3713              		.section	.rodata._ZNK21LinearDeltaKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 3714              		.align	2
 3715              	.LC2:
 3716 0000 64656C74 		.ascii	"delta\000"
 3716      6100
 3717 0006 0000     		.space	2
 3718              	.LC3:
 3719 0008 4C696E65 		.ascii	"Linear delta\000"
 3719      61722064 
 3719      656C7461 
 3719      00
 3720              		.section	.rodata._ZTV21LinearDeltaKinematics,"a",%progbits
 3721              		.align	2
 3722              		.set	.LANCHOR0,. + 0
 3723              		.type	_ZTV21LinearDeltaKinematics, %object
 3724              		.size	_ZTV21LinearDeltaKinematics, 128
 3725              	_ZTV21LinearDeltaKinematics:
 3726 0000 00000000 		.word	0
 3727 0004 00000000 		.word	0
 3728 0008 00000000 		.word	_ZNK21LinearDeltaKinematics7GetNameEb
 3729 000c 00000000 		.word	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 3730 0010 00000000 		.word	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 3731 0014 00000000 		.word	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf
 3732 0018 00000000 		.word	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv
 3733 001c 00000000 		.word	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 3734 0020 00000000 		.word	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv
 3735 0024 00000000 		.word	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxSeRmn.s 			page 68


 3736 0028 00000000 		.word	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj
 3737 002c 00000000 		.word	_ZNK21LinearDeltaKinematics11IsReachableEffb
 3738 0030 00000000 		.word	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb
 3739 0034 00000000 		.word	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv
 3740 0038 00000000 		.word	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf
 3741 003c 00000000 		.word	_ZNK21LinearDeltaKinematics13GetMotionTypeEj
 3742 0040 00000000 		.word	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj
 3743 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 3744 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 3745 004c 00000000 		.word	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRK9StringRef
 3746 0050 00000000 		.word	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj
 3747 0054 00000000 		.word	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 3748 0058 00000000 		.word	_ZNK21LinearDeltaKinematics13GetHomingModeEv
 3749 005c 00000000 		.word	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm
 3750 0060 00000000 		.word	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb
 3751 0064 00000000 		.word	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore
 3752 0068 00000000 		.word	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf
 3753 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 3754 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 3755 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 3756 0078 00000000 		.word	_ZN21LinearDeltaKinematicsD1Ev
 3757 007c 00000000 		.word	_ZN21LinearDeltaKinematicsD0Ev
 3758              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
