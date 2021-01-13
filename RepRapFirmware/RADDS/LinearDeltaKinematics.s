ARM GAS  /tmp/ccArai7H.s 			page 1


   1              		.cpu cortex-m3
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"LinearDeltaKinematics.cpp"
  12              		.section	.text._ZNK10Kinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK10Kinematics17HomingButto
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZNK10Kinematics17HomingButtonNamesEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZNK10Kinematics17HomingButtonNamesEv, %function
  21              	_ZNK10Kinematics17HomingButtonNamesEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0048     		ldr	r0, .L2
  26 0002 7047     		bx	lr
  27              	.L3:
  28              		.align	2
  29              	.L2:
  30 0004 00000000 		.word	.LC0
  31              		.size	_ZNK10Kinematics17HomingButtonNamesEv, .-_ZNK10Kinematics17HomingButtonNamesEv
  32              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
  33              		.align	1
  34              		.p2align 2,,3
  35              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu softvfp
  40              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
  41              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 0020     		movs	r0, #0
  46 0002 7047     		bx	lr
  47              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
  48              		.section	.text._ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK21Linear
  49              		.align	1
  50              		.p2align 2,,3
  51              		.weak	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu softvfp
  56              		.type	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv, %function
  57              	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv:
ARM GAS  /tmp/ccArai7H.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 0120     		movs	r0, #1
  62 0002 7047     		bx	lr
  63              		.size	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv, .-_ZNK21LinearDeltaKinematics23Suppo
  64              		.section	.text._ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK21Linear
  65              		.align	1
  66              		.p2align 2,,3
  67              		.weak	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu softvfp
  72              		.type	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv, %function
  73              	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76              		@ link register save eliminated.
  77 0000 0720     		movs	r0, #7
  78 0002 7047     		bx	lr
  79              		.size	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv, .-_ZNK21LinearDeltaKinematics23AxesT
  80              		.section	.text._ZNK21LinearDeltaKinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK21LinearDeltaKi
  81              		.align	1
  82              		.p2align 2,,3
  83              		.weak	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu softvfp
  88              		.type	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj, %function
  89              	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj:
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 0020     		movs	r0, #0
  94 0002 7047     		bx	lr
  95              		.size	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj, .-_ZNK21LinearDeltaKinematics16NumHomingBut
  96              		.section	.text._ZNK21LinearDeltaKinematics13GetHomingModeEv,"axG",%progbits,_ZNK21LinearDeltaKinem
  97              		.align	1
  98              		.p2align 2,,3
  99              		.weak	_ZNK21LinearDeltaKinematics13GetHomingModeEv
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu softvfp
 104              		.type	_ZNK21LinearDeltaKinematics13GetHomingModeEv, %function
 105              	_ZNK21LinearDeltaKinematics13GetHomingModeEv:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108              		@ link register save eliminated.
 109 0000 0120     		movs	r0, #1
 110 0002 7047     		bx	lr
 111              		.size	_ZNK21LinearDeltaKinematics13GetHomingModeEv, .-_ZNK21LinearDeltaKinematics13GetHomingModeEv
 112              		.section	.text._ZNK21LinearDeltaKinematics7GetNameEb,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  /tmp/ccArai7H.s 			page 3


 115              		.global	_ZNK21LinearDeltaKinematics7GetNameEb
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu softvfp
 120              		.type	_ZNK21LinearDeltaKinematics7GetNameEb, %function
 121              	_ZNK21LinearDeltaKinematics7GetNameEb:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124              		@ link register save eliminated.
 125 0000 024B     		ldr	r3, .L12
 126 0002 0348     		ldr	r0, .L12+4
 127 0004 0029     		cmp	r1, #0
 128 0006 08BF     		it	eq
 129 0008 1846     		moveq	r0, r3
 130 000a 7047     		bx	lr
 131              	.L13:
 132              		.align	2
 133              	.L12:
 134 000c 08000000 		.word	.LC2
 135 0010 00000000 		.word	.LC1
 136              		.size	_ZNK21LinearDeltaKinematics7GetNameEb, .-_ZNK21LinearDeltaKinematics7GetNameEb
 137              		.global	__aeabi_fmul
 138              		.global	__aeabi_fadd
 139              		.global	__aeabi_fcmplt
 140              		.section	.text._ZNK21LinearDeltaKinematics11IsReachableEffb,"ax",%progbits
 141              		.align	1
 142              		.p2align 2,,3
 143              		.global	_ZNK21LinearDeltaKinematics11IsReachableEffb
 144              		.syntax unified
 145              		.thumb
 146              		.thumb_func
 147              		.fpu softvfp
 148              		.type	_ZNK21LinearDeltaKinematics11IsReachableEffb, %function
 149              	_ZNK21LinearDeltaKinematics11IsReachableEffb:
 150              		@ args = 0, pretend = 0, frame = 0
 151              		@ frame_needed = 0, uses_anonymous_args = 0
 152 0000 70B5     		push	{r4, r5, r6, lr}
 153 0002 0446     		mov	r4, r0
 154 0004 0846     		mov	r0, r1
 155 0006 1646     		mov	r6, r2
 156 0008 FFF7FEFF 		bl	__aeabi_fmul
 157 000c 3146     		mov	r1, r6
 158 000e 0546     		mov	r5, r0
 159 0010 3046     		mov	r0, r6
 160 0012 FFF7FEFF 		bl	__aeabi_fmul
 161 0016 0146     		mov	r1, r0
 162 0018 2846     		mov	r0, r5
 163 001a FFF7FEFF 		bl	__aeabi_fadd
 164 001e A16E     		ldr	r1, [r4, #104]	@ float
 165 0020 FFF7FEFF 		bl	__aeabi_fcmplt
 166 0024 18B9     		cbnz	r0, .L16
 167 0026 0346     		mov	r3, r0
 168 0028 03F00100 		and	r0, r3, #1
 169 002c 70BD     		pop	{r4, r5, r6, pc}
 170              	.L16:
 171 002e 4FF00103 		mov	r3, #1
ARM GAS  /tmp/ccArai7H.s 			page 4


 172 0032 03F00100 		and	r0, r3, #1
 173 0036 70BD     		pop	{r4, r5, r6, pc}
 174              		.size	_ZNK21LinearDeltaKinematics11IsReachableEffb, .-_ZNK21LinearDeltaKinematics11IsReachableEffb
 175              		.section	.text._ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 176              		.align	1
 177              		.p2align 2,,3
 178              		.global	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu softvfp
 183              		.type	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf, %function
 184              	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              		@ link register save eliminated.
 188 0000 61B1     		cbz	r1, .L30
 189 0002 10B4     		push	{r4}
 190 0004 1346     		mov	r3, r2
 191 0006 0024     		movs	r4, #0
 192 0008 02EB8101 		add	r1, r2, r1, lsl #2
 193              	.L22:
 194 000c 43F8044B 		str	r4, [r3], #4	@ float
 195 0010 8B42     		cmp	r3, r1
 196 0012 FBD1     		bne	.L22
 197 0014 436C     		ldr	r3, [r0, #68]	@ float
 198 0016 10BC     		pop	{r4}
 199 0018 9360     		str	r3, [r2, #8]	@ float
 200 001a 7047     		bx	lr
 201              	.L30:
 202 001c 436C     		ldr	r3, [r0, #68]	@ float
 203 001e 9360     		str	r3, [r2, #8]	@ float
 204 0020 7047     		bx	lr
 205              		.size	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf, .-_ZNK21LinearDeltaKinematics25G
 206 0022 00BF     		.section	.text._ZNK21LinearDeltaKinematics13GetMotionTypeEj,"ax",%progbits
 207              		.align	1
 208              		.p2align 2,,3
 209              		.global	_ZNK21LinearDeltaKinematics13GetMotionTypeEj
 210              		.syntax unified
 211              		.thumb
 212              		.thumb_func
 213              		.fpu softvfp
 214              		.type	_ZNK21LinearDeltaKinematics13GetMotionTypeEj, %function
 215              	_ZNK21LinearDeltaKinematics13GetMotionTypeEj:
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218              		@ link register save eliminated.
 219 0000 0229     		cmp	r1, #2
 220 0002 8CBF     		ite	hi
 221 0004 0020     		movhi	r0, #0
 222 0006 0120     		movls	r0, #1
 223 0008 7047     		bx	lr
 224              		.size	_ZNK21LinearDeltaKinematics13GetMotionTypeEj, .-_ZNK21LinearDeltaKinematics13GetMotionTypeEj
 225 000a 00BF     		.section	.text._ZNK21LinearDeltaKinematics17GetTiltCorrectionEj,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj
ARM GAS  /tmp/ccArai7H.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu softvfp
 233              		.type	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj, %function
 234              	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237              		@ link register save eliminated.
 238 0000 21B1     		cbz	r1, .L36
 239 0002 0129     		cmp	r1, #1
 240 0004 0CBF     		ite	eq
 241 0006 C06C     		ldreq	r0, [r0, #76]	@ float
 242 0008 0020     		movne	r0, #0
 243 000a 7047     		bx	lr
 244              	.L36:
 245 000c 806C     		ldr	r0, [r0, #72]	@ float
 246 000e 7047     		bx	lr
 247              		.size	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj, .-_ZNK21LinearDeltaKinematics17GetTiltCorr
 248              		.section	.text._ZNK21LinearDeltaKinematics16AxesAssumedHomedEm,"ax",%progbits
 249              		.align	1
 250              		.p2align 2,,3
 251              		.global	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu softvfp
 256              		.type	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm, %function
 257              	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm:
 258              		@ args = 0, pretend = 0, frame = 0
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260              		@ link register save eliminated.
 261 0000 01F00703 		and	r3, r1, #7
 262 0004 072B     		cmp	r3, #7
 263 0006 14BF     		ite	ne
 264 0008 21F00700 		bicne	r0, r1, #7
 265 000c 0846     		moveq	r0, r1
 266 000e 7047     		bx	lr
 267              		.size	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm, .-_ZNK21LinearDeltaKinematics16AxesAssumedH
 268              		.section	.text._ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb,"ax",%progbits
 269              		.align	1
 270              		.p2align 2,,3
 271              		.global	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb
 272              		.syntax unified
 273              		.thumb
 274              		.thumb_func
 275              		.fpu softvfp
 276              		.type	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb, %function
 277              	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280              		@ link register save eliminated.
 281 0000 4B07     		lsls	r3, r1, #29
 282 0002 14BF     		ite	ne
 283 0004 41F00700 		orrne	r0, r1, #7
 284 0008 0846     		moveq	r0, r1
 285 000a 7047     		bx	lr
ARM GAS  /tmp/ccArai7H.s 			page 6


 286              		.size	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb, .-_ZNK21LinearDeltaKinematics15MustBeHomedA
 287              		.section	.text._ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 288              		.align	1
 289              		.p2align 2,,3
 290              		.global	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu softvfp
 295              		.type	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj, %function
 296              	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299              		@ link register save eliminated.
 300 0000 0020     		movs	r0, #0
 301 0002 7047     		bx	lr
 302              		.size	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj, .-_ZNK21LinearDeltaKinematics24Quer
 303              		.section	.text._ZN11FixedMatrixIfLj32ELj3EEclEjj,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj3EEclEjj
 304              		.align	1
 305              		.p2align 2,,3
 306              		.weak	_ZN11FixedMatrixIfLj32ELj3EEclEjj
 307              		.syntax unified
 308              		.thumb
 309              		.thumb_func
 310              		.fpu softvfp
 311              		.type	_ZN11FixedMatrixIfLj32ELj3EEclEjj, %function
 312              	_ZN11FixedMatrixIfLj32ELj3EEclEjj:
 313              		@ args = 0, pretend = 0, frame = 0
 314              		@ frame_needed = 0, uses_anonymous_args = 0
 315              		@ link register save eliminated.
 316 0000 0132     		adds	r2, r2, #1
 317 0002 01EB4101 		add	r1, r1, r1, lsl #1
 318 0006 1144     		add	r1, r1, r2
 319 0008 00EB8100 		add	r0, r0, r1, lsl #2
 320 000c 7047     		bx	lr
 321              		.size	_ZN11FixedMatrixIfLj32ELj3EEclEjj, .-_ZN11FixedMatrixIfLj32ELj3EEclEjj
 322 000e 00BF     		.section	.text._ZN11FixedMatrixIfLj32ELj9EEclEjj,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj9EEclEjj
 323              		.align	1
 324              		.p2align 2,,3
 325              		.weak	_ZN11FixedMatrixIfLj32ELj9EEclEjj
 326              		.syntax unified
 327              		.thumb
 328              		.thumb_func
 329              		.fpu softvfp
 330              		.type	_ZN11FixedMatrixIfLj32ELj9EEclEjj, %function
 331              	_ZN11FixedMatrixIfLj32ELj9EEclEjj:
 332              		@ args = 0, pretend = 0, frame = 0
 333              		@ frame_needed = 0, uses_anonymous_args = 0
 334              		@ link register save eliminated.
 335 0000 0132     		adds	r2, r2, #1
 336 0002 01EBC101 		add	r1, r1, r1, lsl #3
 337 0006 1144     		add	r1, r1, r2
 338 0008 00EB8100 		add	r0, r0, r1, lsl #2
 339 000c 7047     		bx	lr
 340              		.size	_ZN11FixedMatrixIfLj32ELj9EEclEjj, .-_ZN11FixedMatrixIfLj32ELj9EEclEjj
 341 000e 00BF     		.section	.text._ZN11FixedMatrixIfLj9ELj10EEclEjj,"axG",%progbits,_ZN11FixedMatrixIfLj9ELj10EEclEjj
 342              		.align	1
ARM GAS  /tmp/ccArai7H.s 			page 7


 343              		.p2align 2,,3
 344              		.weak	_ZN11FixedMatrixIfLj9ELj10EEclEjj
 345              		.syntax unified
 346              		.thumb
 347              		.thumb_func
 348              		.fpu softvfp
 349              		.type	_ZN11FixedMatrixIfLj9ELj10EEclEjj, %function
 350              	_ZN11FixedMatrixIfLj9ELj10EEclEjj:
 351              		@ args = 0, pretend = 0, frame = 0
 352              		@ frame_needed = 0, uses_anonymous_args = 0
 353              		@ link register save eliminated.
 354 0000 0132     		adds	r2, r2, #1
 355 0002 01EB8101 		add	r1, r1, r1, lsl #2
 356 0006 02EB4101 		add	r1, r2, r1, lsl #1
 357 000a 00EB8100 		add	r0, r0, r1, lsl #2
 358 000e 7047     		bx	lr
 359              		.size	_ZN11FixedMatrixIfLj9ELj10EEclEjj, .-_ZN11FixedMatrixIfLj9ELj10EEclEjj
 360              		.section	.text._ZN11FixedMatrixIfLj9ELj10EED2Ev,"axG",%progbits,_ZN11FixedMatrixIfLj9ELj10EED5Ev,c
 361              		.align	1
 362              		.p2align 2,,3
 363              		.weak	_ZN11FixedMatrixIfLj9ELj10EED2Ev
 364              		.syntax unified
 365              		.thumb
 366              		.thumb_func
 367              		.fpu softvfp
 368              		.type	_ZN11FixedMatrixIfLj9ELj10EED2Ev, %function
 369              	_ZN11FixedMatrixIfLj9ELj10EED2Ev:
 370              		@ args = 0, pretend = 0, frame = 0
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372              		@ link register save eliminated.
 373 0000 7047     		bx	lr
 374              		.size	_ZN11FixedMatrixIfLj9ELj10EED2Ev, .-_ZN11FixedMatrixIfLj9ELj10EED2Ev
 375              		.weak	_ZN11FixedMatrixIfLj9ELj10EED1Ev
 376              		.thumb_set _ZN11FixedMatrixIfLj9ELj10EED1Ev,_ZN11FixedMatrixIfLj9ELj10EED2Ev
 377 0002 00BF     		.section	.text._ZN11FixedMatrixIfLj32ELj9EED2Ev,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj9EED5Ev,c
 378              		.align	1
 379              		.p2align 2,,3
 380              		.weak	_ZN11FixedMatrixIfLj32ELj9EED2Ev
 381              		.syntax unified
 382              		.thumb
 383              		.thumb_func
 384              		.fpu softvfp
 385              		.type	_ZN11FixedMatrixIfLj32ELj9EED2Ev, %function
 386              	_ZN11FixedMatrixIfLj32ELj9EED2Ev:
 387              		@ args = 0, pretend = 0, frame = 0
 388              		@ frame_needed = 0, uses_anonymous_args = 0
 389              		@ link register save eliminated.
 390 0000 7047     		bx	lr
 391              		.size	_ZN11FixedMatrixIfLj32ELj9EED2Ev, .-_ZN11FixedMatrixIfLj32ELj9EED2Ev
 392              		.weak	_ZN11FixedMatrixIfLj32ELj9EED1Ev
 393              		.thumb_set _ZN11FixedMatrixIfLj32ELj9EED1Ev,_ZN11FixedMatrixIfLj32ELj9EED2Ev
 394 0002 00BF     		.section	.text._ZN11FixedMatrixIfLj32ELj3EED2Ev,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj3EED5Ev,c
 395              		.align	1
 396              		.p2align 2,,3
 397              		.weak	_ZN11FixedMatrixIfLj32ELj3EED2Ev
 398              		.syntax unified
 399              		.thumb
ARM GAS  /tmp/ccArai7H.s 			page 8


 400              		.thumb_func
 401              		.fpu softvfp
 402              		.type	_ZN11FixedMatrixIfLj32ELj3EED2Ev, %function
 403              	_ZN11FixedMatrixIfLj32ELj3EED2Ev:
 404              		@ args = 0, pretend = 0, frame = 0
 405              		@ frame_needed = 0, uses_anonymous_args = 0
 406              		@ link register save eliminated.
 407 0000 7047     		bx	lr
 408              		.size	_ZN11FixedMatrixIfLj32ELj3EED2Ev, .-_ZN11FixedMatrixIfLj32ELj3EED2Ev
 409              		.weak	_ZN11FixedMatrixIfLj32ELj3EED1Ev
 410              		.thumb_set _ZN11FixedMatrixIfLj32ELj3EED1Ev,_ZN11FixedMatrixIfLj32ELj3EED2Ev
 411 0002 00BF     		.section	.text._ZN21LinearDeltaKinematicsD2Ev,"axG",%progbits,_ZN21LinearDeltaKinematicsD5Ev,comda
 412              		.align	1
 413              		.p2align 2,,3
 414              		.weak	_ZN21LinearDeltaKinematicsD2Ev
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu softvfp
 419              		.type	_ZN21LinearDeltaKinematicsD2Ev, %function
 420              	_ZN21LinearDeltaKinematicsD2Ev:
 421              		@ args = 0, pretend = 0, frame = 0
 422              		@ frame_needed = 0, uses_anonymous_args = 0
 423              		@ link register save eliminated.
 424 0000 7047     		bx	lr
 425              		.size	_ZN21LinearDeltaKinematicsD2Ev, .-_ZN21LinearDeltaKinematicsD2Ev
 426              		.weak	_ZN21LinearDeltaKinematicsD1Ev
 427              		.thumb_set _ZN21LinearDeltaKinematicsD1Ev,_ZN21LinearDeltaKinematicsD2Ev
 428 0002 00BF     		.section	.text._ZNK11FixedMatrixIfLj9ELj10EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj9ELj10EE4
 429              		.align	1
 430              		.p2align 2,,3
 431              		.weak	_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv
 432              		.syntax unified
 433              		.thumb
 434              		.thumb_func
 435              		.fpu softvfp
 436              		.type	_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv, %function
 437              	_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv:
 438              		@ args = 0, pretend = 0, frame = 0
 439              		@ frame_needed = 0, uses_anonymous_args = 0
 440              		@ link register save eliminated.
 441 0000 0920     		movs	r0, #9
 442 0002 7047     		bx	lr
 443              		.size	_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv, .-_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv
 444              		.section	.text._ZNK11FixedMatrixIfLj9ELj10EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj9ELj10EE4
 445              		.align	1
 446              		.p2align 2,,3
 447              		.weak	_ZNK11FixedMatrixIfLj9ELj10EE4colsEv
 448              		.syntax unified
 449              		.thumb
 450              		.thumb_func
 451              		.fpu softvfp
 452              		.type	_ZNK11FixedMatrixIfLj9ELj10EE4colsEv, %function
 453              	_ZNK11FixedMatrixIfLj9ELj10EE4colsEv:
 454              		@ args = 0, pretend = 0, frame = 0
 455              		@ frame_needed = 0, uses_anonymous_args = 0
 456              		@ link register save eliminated.
ARM GAS  /tmp/ccArai7H.s 			page 9


 457 0000 0A20     		movs	r0, #10
 458 0002 7047     		bx	lr
 459              		.size	_ZNK11FixedMatrixIfLj9ELj10EE4colsEv, .-_ZNK11FixedMatrixIfLj9ELj10EE4colsEv
 460              		.section	.text._ZNK11FixedMatrixIfLj9ELj10EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIfLj9ELj10EEclE
 461              		.align	1
 462              		.p2align 2,,3
 463              		.weak	_ZNK11FixedMatrixIfLj9ELj10EEclEjj
 464              		.syntax unified
 465              		.thumb
 466              		.thumb_func
 467              		.fpu softvfp
 468              		.type	_ZNK11FixedMatrixIfLj9ELj10EEclEjj, %function
 469              	_ZNK11FixedMatrixIfLj9ELj10EEclEjj:
 470              		@ args = 0, pretend = 0, frame = 0
 471              		@ frame_needed = 0, uses_anonymous_args = 0
 472              		@ link register save eliminated.
 473 0000 0132     		adds	r2, r2, #1
 474 0002 01EB8101 		add	r1, r1, r1, lsl #2
 475 0006 02EB4101 		add	r1, r2, r1, lsl #1
 476 000a 00EB8100 		add	r0, r0, r1, lsl #2
 477 000e 7047     		bx	lr
 478              		.size	_ZNK11FixedMatrixIfLj9ELj10EEclEjj, .-_ZNK11FixedMatrixIfLj9ELj10EEclEjj
 479              		.section	.text._ZNK11FixedMatrixIfLj32ELj9EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj9EE4
 480              		.align	1
 481              		.p2align 2,,3
 482              		.weak	_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv
 483              		.syntax unified
 484              		.thumb
 485              		.thumb_func
 486              		.fpu softvfp
 487              		.type	_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv, %function
 488              	_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv:
 489              		@ args = 0, pretend = 0, frame = 0
 490              		@ frame_needed = 0, uses_anonymous_args = 0
 491              		@ link register save eliminated.
 492 0000 2020     		movs	r0, #32
 493 0002 7047     		bx	lr
 494              		.size	_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv, .-_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv
 495              		.section	.text._ZNK11FixedMatrixIfLj32ELj9EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj9EE4
 496              		.align	1
 497              		.p2align 2,,3
 498              		.weak	_ZNK11FixedMatrixIfLj32ELj9EE4colsEv
 499              		.syntax unified
 500              		.thumb
 501              		.thumb_func
 502              		.fpu softvfp
 503              		.type	_ZNK11FixedMatrixIfLj32ELj9EE4colsEv, %function
 504              	_ZNK11FixedMatrixIfLj32ELj9EE4colsEv:
 505              		@ args = 0, pretend = 0, frame = 0
 506              		@ frame_needed = 0, uses_anonymous_args = 0
 507              		@ link register save eliminated.
 508 0000 0920     		movs	r0, #9
 509 0002 7047     		bx	lr
 510              		.size	_ZNK11FixedMatrixIfLj32ELj9EE4colsEv, .-_ZNK11FixedMatrixIfLj32ELj9EE4colsEv
 511              		.section	.text._ZNK11FixedMatrixIfLj32ELj9EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj9EEclE
 512              		.align	1
 513              		.p2align 2,,3
ARM GAS  /tmp/ccArai7H.s 			page 10


 514              		.weak	_ZNK11FixedMatrixIfLj32ELj9EEclEjj
 515              		.syntax unified
 516              		.thumb
 517              		.thumb_func
 518              		.fpu softvfp
 519              		.type	_ZNK11FixedMatrixIfLj32ELj9EEclEjj, %function
 520              	_ZNK11FixedMatrixIfLj32ELj9EEclEjj:
 521              		@ args = 0, pretend = 0, frame = 0
 522              		@ frame_needed = 0, uses_anonymous_args = 0
 523              		@ link register save eliminated.
 524 0000 0132     		adds	r2, r2, #1
 525 0002 01EBC101 		add	r1, r1, r1, lsl #3
 526 0006 1144     		add	r1, r1, r2
 527 0008 00EB8100 		add	r0, r0, r1, lsl #2
 528 000c 7047     		bx	lr
 529              		.size	_ZNK11FixedMatrixIfLj32ELj9EEclEjj, .-_ZNK11FixedMatrixIfLj32ELj9EEclEjj
 530 000e 00BF     		.section	.text._ZNK11FixedMatrixIfLj32ELj3EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj3EE4
 531              		.align	1
 532              		.p2align 2,,3
 533              		.weak	_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv
 534              		.syntax unified
 535              		.thumb
 536              		.thumb_func
 537              		.fpu softvfp
 538              		.type	_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv, %function
 539              	_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv:
 540              		@ args = 0, pretend = 0, frame = 0
 541              		@ frame_needed = 0, uses_anonymous_args = 0
 542              		@ link register save eliminated.
 543 0000 2020     		movs	r0, #32
 544 0002 7047     		bx	lr
 545              		.size	_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv, .-_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv
 546              		.section	.text._ZNK11FixedMatrixIfLj32ELj3EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj3EE4
 547              		.align	1
 548              		.p2align 2,,3
 549              		.weak	_ZNK11FixedMatrixIfLj32ELj3EE4colsEv
 550              		.syntax unified
 551              		.thumb
 552              		.thumb_func
 553              		.fpu softvfp
 554              		.type	_ZNK11FixedMatrixIfLj32ELj3EE4colsEv, %function
 555              	_ZNK11FixedMatrixIfLj32ELj3EE4colsEv:
 556              		@ args = 0, pretend = 0, frame = 0
 557              		@ frame_needed = 0, uses_anonymous_args = 0
 558              		@ link register save eliminated.
 559 0000 0320     		movs	r0, #3
 560 0002 7047     		bx	lr
 561              		.size	_ZNK11FixedMatrixIfLj32ELj3EE4colsEv, .-_ZNK11FixedMatrixIfLj32ELj3EE4colsEv
 562              		.section	.text._ZNK11FixedMatrixIfLj32ELj3EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj3EEclE
 563              		.align	1
 564              		.p2align 2,,3
 565              		.weak	_ZNK11FixedMatrixIfLj32ELj3EEclEjj
 566              		.syntax unified
 567              		.thumb
 568              		.thumb_func
 569              		.fpu softvfp
 570              		.type	_ZNK11FixedMatrixIfLj32ELj3EEclEjj, %function
ARM GAS  /tmp/ccArai7H.s 			page 11


 571              	_ZNK11FixedMatrixIfLj32ELj3EEclEjj:
 572              		@ args = 0, pretend = 0, frame = 0
 573              		@ frame_needed = 0, uses_anonymous_args = 0
 574              		@ link register save eliminated.
 575 0000 0132     		adds	r2, r2, #1
 576 0002 01EB4101 		add	r1, r1, r1, lsl #1
 577 0006 1144     		add	r1, r1, r2
 578 0008 00EB8100 		add	r0, r0, r1, lsl #2
 579 000c 7047     		bx	lr
 580              		.size	_ZNK11FixedMatrixIfLj32ELj3EEclEjj, .-_ZNK11FixedMatrixIfLj32ELj3EEclEjj
 581              		.global	__aeabi_fcmpgt
 582              		.global	__aeabi_fdiv
 583              		.global	__aeabi_fsub
 584 000e 00BF     		.section	.text._ZNK21LinearDeltaKinematics13LimitPositionEPfjmb,"ax",%progbits
 585              		.align	1
 586              		.p2align 2,,3
 587              		.global	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb
 588              		.syntax unified
 589              		.thumb
 590              		.thumb_func
 591              		.fpu softvfp
 592              		.type	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb, %function
 593              	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb:
 594              		@ args = 4, pretend = 0, frame = 0
 595              		@ frame_needed = 0, uses_anonymous_args = 0
 596 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 597 0004 1D46     		mov	r5, r3
 598 0006 03F00703 		and	r3, r3, #7
 599 000a 072B     		cmp	r3, #7
 600 000c 83B0     		sub	sp, sp, #12
 601 000e 0646     		mov	r6, r0
 602 0010 0C46     		mov	r4, r1
 603 0012 9046     		mov	r8, r2
 604 0014 0DD0     		beq	.L79
 605 0016 0027     		movs	r7, #0
 606              	.L61:
 607 0018 0095     		str	r5, [sp]
 608 001a 4346     		mov	r3, r8
 609 001c 2146     		mov	r1, r4
 610 001e 3046     		mov	r0, r6
 611 0020 0322     		movs	r2, #3
 612 0022 FFF7FEFF 		bl	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm
 613 0026 0028     		cmp	r0, #0
 614 0028 08BF     		it	eq
 615 002a 3846     		moveq	r0, r7
 616 002c 03B0     		add	sp, sp, #12
 617              		@ sp needed
 618 002e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 619              	.L79:
 620 0032 4968     		ldr	r1, [r1, #4]	@ float
 621 0034 D4F80090 		ldr	r9, [r4]	@ float
 622 0038 0846     		mov	r0, r1
 623 003a FFF7FEFF 		bl	__aeabi_fmul
 624 003e 4946     		mov	r1, r9
 625 0040 0746     		mov	r7, r0
 626 0042 4846     		mov	r0, r9
 627 0044 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  /tmp/ccArai7H.s 			page 12


 628 0048 0146     		mov	r1, r0
 629 004a 3846     		mov	r0, r7
 630 004c FFF7FEFF 		bl	__aeabi_fadd
 631 0050 B76E     		ldr	r7, [r6, #104]	@ float
 632 0052 8246     		mov	r10, r0
 633 0054 3946     		mov	r1, r7
 634 0056 FFF7FEFF 		bl	__aeabi_fcmpgt
 635 005a 68B9     		cbnz	r0, .L80
 636 005c 0027     		movs	r7, #0
 637              	.L62:
 638 005e 204B     		ldr	r3, .L82
 639 0060 A068     		ldr	r0, [r4, #8]	@ float
 640 0062 1B68     		ldr	r3, [r3]	@ unaligned
 641 0064 D3F86494 		ldr	r9, [r3, #1124]	@ float
 642 0068 4946     		mov	r1, r9
 643 006a FFF7FEFF 		bl	__aeabi_fcmplt
 644 006e B0B1     		cbz	r0, .L81
 645              	.L78:
 646 0070 C4F80890 		str	r9, [r4, #8]	@ float
 647 0074 0127     		movs	r7, #1
 648 0076 CFE7     		b	.L61
 649              	.L80:
 650 0078 5146     		mov	r1, r10
 651 007a 3846     		mov	r0, r7
 652 007c FFF7FEFF 		bl	__aeabi_fdiv
 653 0080 FFF7FEFF 		bl	sqrtf
 654 0084 0746     		mov	r7, r0
 655 0086 0146     		mov	r1, r0
 656 0088 2068     		ldr	r0, [r4]	@ float
 657 008a FFF7FEFF 		bl	__aeabi_fmul
 658 008e 3946     		mov	r1, r7
 659 0090 2060     		str	r0, [r4]	@ float
 660 0092 6068     		ldr	r0, [r4, #4]	@ float
 661 0094 FFF7FEFF 		bl	__aeabi_fmul
 662 0098 0127     		movs	r7, #1
 663 009a 6060     		str	r0, [r4, #4]	@ float
 664 009c DFE7     		b	.L62
 665              	.L81:
 666 009e 5046     		mov	r0, r10
 667 00a0 D6F86C90 		ldr	r9, [r6, #108]	@ float
 668 00a4 D6F824B0 		ldr	fp, [r6, #36]	@ float
 669 00a8 D6F89CA0 		ldr	r10, [r6, #156]	@ float
 670 00ac FFF7FEFF 		bl	sqrtf
 671 00b0 0146     		mov	r1, r0
 672 00b2 5846     		mov	r0, fp
 673 00b4 FFF7FEFF 		bl	__aeabi_fsub
 674 00b8 0146     		mov	r1, r0
 675 00ba FFF7FEFF 		bl	__aeabi_fmul
 676 00be 0146     		mov	r1, r0
 677 00c0 5046     		mov	r0, r10
 678 00c2 FFF7FEFF 		bl	__aeabi_fsub
 679 00c6 FFF7FEFF 		bl	sqrtf
 680 00ca 0146     		mov	r1, r0
 681 00cc 4846     		mov	r0, r9
 682 00ce FFF7FEFF 		bl	__aeabi_fsub
 683 00d2 A168     		ldr	r1, [r4, #8]	@ float
 684 00d4 8146     		mov	r9, r0
ARM GAS  /tmp/ccArai7H.s 			page 13


 685 00d6 FFF7FEFF 		bl	__aeabi_fcmplt
 686 00da 0028     		cmp	r0, #0
 687 00dc 9CD0     		beq	.L61
 688 00de C7E7     		b	.L78
 689              	.L83:
 690              		.align	2
 691              	.L82:
 692 00e0 00000000 		.word	reprap
 693              		.size	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb, .-_ZNK21LinearDeltaKinematics13LimitPositi
 694              		.section	.text._ZN21LinearDeltaKinematicsD0Ev,"axG",%progbits,_ZN21LinearDeltaKinematicsD5Ev,comda
 695              		.align	1
 696              		.p2align 2,,3
 697              		.weak	_ZN21LinearDeltaKinematicsD0Ev
 698              		.syntax unified
 699              		.thumb
 700              		.thumb_func
 701              		.fpu softvfp
 702              		.type	_ZN21LinearDeltaKinematicsD0Ev, %function
 703              	_ZN21LinearDeltaKinematicsD0Ev:
 704              		@ args = 0, pretend = 0, frame = 0
 705              		@ frame_needed = 0, uses_anonymous_args = 0
 706 0000 10B5     		push	{r4, lr}
 707 0002 0446     		mov	r4, r0
 708 0004 A421     		movs	r1, #164
 709 0006 FFF7FEFF 		bl	_ZdlPvj
 710 000a 2046     		mov	r0, r4
 711 000c 10BD     		pop	{r4, pc}
 712              		.size	_ZN21LinearDeltaKinematicsD0Ev, .-_ZN21LinearDeltaKinematicsD0Ev
 713 000e 00BF     		.section	.text._ZN11FixedMatrixIfLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj3EED5Ev,c
 714              		.align	1
 715              		.p2align 2,,3
 716              		.weak	_ZN11FixedMatrixIfLj32ELj3EED0Ev
 717              		.syntax unified
 718              		.thumb
 719              		.thumb_func
 720              		.fpu softvfp
 721              		.type	_ZN11FixedMatrixIfLj32ELj3EED0Ev, %function
 722              	_ZN11FixedMatrixIfLj32ELj3EED0Ev:
 723              		@ args = 0, pretend = 0, frame = 0
 724              		@ frame_needed = 0, uses_anonymous_args = 0
 725 0000 10B5     		push	{r4, lr}
 726 0002 0446     		mov	r4, r0
 727 0004 4FF4C271 		mov	r1, #388
 728 0008 FFF7FEFF 		bl	_ZdlPvj
 729 000c 2046     		mov	r0, r4
 730 000e 10BD     		pop	{r4, pc}
 731              		.size	_ZN11FixedMatrixIfLj32ELj3EED0Ev, .-_ZN11FixedMatrixIfLj32ELj3EED0Ev
 732              		.section	.text._ZN11FixedMatrixIfLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj9EED5Ev,c
 733              		.align	1
 734              		.p2align 2,,3
 735              		.weak	_ZN11FixedMatrixIfLj32ELj9EED0Ev
 736              		.syntax unified
 737              		.thumb
 738              		.thumb_func
 739              		.fpu softvfp
 740              		.type	_ZN11FixedMatrixIfLj32ELj9EED0Ev, %function
 741              	_ZN11FixedMatrixIfLj32ELj9EED0Ev:
ARM GAS  /tmp/ccArai7H.s 			page 14


 742              		@ args = 0, pretend = 0, frame = 0
 743              		@ frame_needed = 0, uses_anonymous_args = 0
 744 0000 10B5     		push	{r4, lr}
 745 0002 0446     		mov	r4, r0
 746 0004 40F28441 		movw	r1, #1156
 747 0008 FFF7FEFF 		bl	_ZdlPvj
 748 000c 2046     		mov	r0, r4
 749 000e 10BD     		pop	{r4, pc}
 750              		.size	_ZN11FixedMatrixIfLj32ELj9EED0Ev, .-_ZN11FixedMatrixIfLj32ELj9EED0Ev
 751              		.section	.text._ZN11FixedMatrixIfLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIfLj9ELj10EED5Ev,c
 752              		.align	1
 753              		.p2align 2,,3
 754              		.weak	_ZN11FixedMatrixIfLj9ELj10EED0Ev
 755              		.syntax unified
 756              		.thumb
 757              		.thumb_func
 758              		.fpu softvfp
 759              		.type	_ZN11FixedMatrixIfLj9ELj10EED0Ev, %function
 760              	_ZN11FixedMatrixIfLj9ELj10EED0Ev:
 761              		@ args = 0, pretend = 0, frame = 0
 762              		@ frame_needed = 0, uses_anonymous_args = 0
 763 0000 10B5     		push	{r4, lr}
 764 0002 0446     		mov	r4, r0
 765 0004 4FF4B671 		mov	r1, #364
 766 0008 FFF7FEFF 		bl	_ZdlPvj
 767 000c 2046     		mov	r0, r4
 768 000e 10BD     		pop	{r4, pc}
 769              		.size	_ZN11FixedMatrixIfLj9ELj10EED0Ev, .-_ZN11FixedMatrixIfLj9ELj10EED0Ev
 770              		.global	__aeabi_fcmpun
 771              		.section	.text._ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 772              		.align	1
 773              		.p2align 2,,3
 774              		.global	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf
 775              		.syntax unified
 776              		.thumb
 777              		.thumb_func
 778              		.fpu softvfp
 779              		.type	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 780              	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 781              		@ args = 0, pretend = 0, frame = 0
 782              		@ frame_needed = 0, uses_anonymous_args = 0
 783 0000 1368     		ldr	r3, [r2]	@ float
 784 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 785 0006 1846     		mov	r0, r3
 786 0008 8846     		mov	r8, r1
 787 000a 1946     		mov	r1, r3
 788 000c 5568     		ldr	r5, [r2, #4]	@ float
 789 000e FFF7FEFF 		bl	__aeabi_fmul
 790 0012 2946     		mov	r1, r5
 791 0014 0446     		mov	r4, r0
 792 0016 2846     		mov	r0, r5
 793 0018 FFF7FEFF 		bl	__aeabi_fmul
 794 001c 0146     		mov	r1, r0
 795 001e 2046     		mov	r0, r4
 796 0020 FFF7FEFF 		bl	__aeabi_fadd
 797 0024 FFF7FEFF 		bl	sqrtf
 798 0028 1C49     		ldr	r1, .L108
ARM GAS  /tmp/ccArai7H.s 			page 15


 799 002a 0746     		mov	r7, r0
 800 002c FFF7FEFF 		bl	__aeabi_fcmpgt
 801 0030 0028     		cmp	r0, #0
 802 0032 31D0     		beq	.L102
 803 0034 1A4B     		ldr	r3, .L108+4
 804 0036 1E68     		ldr	r6, [r3]
 805 0038 D6F8D450 		ldr	r5, [r6, #212]	@ float
 806 003c D6F8D840 		ldr	r4, [r6, #216]	@ float
 807 0040 2946     		mov	r1, r5
 808 0042 2846     		mov	r0, r5
 809 0044 FFF7FEFF 		bl	__aeabi_fcmpun
 810 0048 20B9     		cbnz	r0, .L99
 811 004a 2946     		mov	r1, r5
 812 004c 2046     		mov	r0, r4
 813 004e FFF7FEFF 		bl	__aeabi_fcmpgt
 814 0052 F8B1     		cbz	r0, .L106
 815              	.L99:
 816 0054 D6F8F840 		ldr	r4, [r6, #248]	@ float
 817 0058 D6F8FC60 		ldr	r6, [r6, #252]	@ float
 818 005c 2146     		mov	r1, r4
 819 005e 2046     		mov	r0, r4
 820 0060 FFF7FEFF 		bl	__aeabi_fcmpun
 821 0064 20B9     		cbnz	r0, .L100
 822 0066 3146     		mov	r1, r6
 823 0068 2046     		mov	r0, r4
 824 006a FFF7FEFF 		bl	__aeabi_fcmplt
 825 006e 78B1     		cbz	r0, .L107
 826              	.L100:
 827 0070 3946     		mov	r1, r7
 828 0072 2046     		mov	r0, r4
 829 0074 FFF7FEFF 		bl	__aeabi_fdiv
 830 0078 3946     		mov	r1, r7
 831 007a 0446     		mov	r4, r0
 832 007c 2846     		mov	r0, r5
 833 007e FFF7FEFF 		bl	__aeabi_fdiv
 834 0082 2246     		mov	r2, r4
 835 0084 0146     		mov	r1, r0
 836 0086 4046     		mov	r0, r8
 837 0088 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 838 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 839              	.L107:
 840 0090 3446     		mov	r4, r6
 841 0092 EDE7     		b	.L100
 842              	.L106:
 843 0094 2546     		mov	r5, r4
 844 0096 DDE7     		b	.L99
 845              	.L102:
 846 0098 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 847              	.L109:
 848              		.align	2
 849              	.L108:
 850 009c 0AD7233C 		.word	1008981770
 851 00a0 00000000 		.word	reprap
 852              		.size	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21LinearDeltaKinemati
 853              		.section	.text._ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 854              		.align	1
 855              		.p2align 2,,3
ARM GAS  /tmp/ccArai7H.s 			page 16


 856              		.global	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore
 857              		.syntax unified
 858              		.thumb
 859              		.thumb_func
 860              		.fpu softvfp
 861              		.type	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore, %function
 862              	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore:
 863              		@ args = 0, pretend = 0, frame = 0
 864              		@ frame_needed = 0, uses_anonymous_args = 0
 865              		@ link register save eliminated.
 866 0000 90F8A020 		ldrb	r2, [r0, #160]	@ zero_extendqisi2
 867 0004 0AB9     		cbnz	r2, .L112
 868 0006 0120     		movs	r0, #1
 869 0008 7047     		bx	lr
 870              	.L112:
 871 000a 0368     		ldr	r3, [r0]
 872 000c DB69     		ldr	r3, [r3, #28]
 873 000e 1847     		bx	r3
 874              		.size	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK21LinearDeltaKinematics1
 875              		.section	.text._ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm,"ax",%progbits
 876              		.align	1
 877              		.p2align 2,,3
 878              		.global	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm
 879              		.syntax unified
 880              		.thumb
 881              		.thumb_func
 882              		.fpu softvfp
 883              		.type	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm, %function
 884              	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm:
 885              		@ args = 4, pretend = 0, frame = 0
 886              		@ frame_needed = 0, uses_anonymous_args = 0
 887              		@ link register save eliminated.
 888 0000 4A07     		lsls	r2, r1, #29
 889 0002 11D1     		bne	.L120
 890 0004 032B     		cmp	r3, #3
 891 0006 0BD9     		bls	.L115
 892 0008 0807     		lsls	r0, r1, #28
 893 000a 4FF00302 		mov	r2, #3
 894 000e 02D5     		bpl	.L118
 895 0010 0CE0     		b	.L116
 896              	.L119:
 897 0012 C007     		lsls	r0, r0, #31
 898 0014 0AD4     		bmi	.L116
 899              	.L118:
 900 0016 0132     		adds	r2, r2, #1
 901 0018 9342     		cmp	r3, r2
 902 001a 21FA02F0 		lsr	r0, r1, r2
 903 001e F8D1     		bne	.L119
 904              	.L115:
 905 0020 0020     		movs	r0, #0
 906 0022 009B     		ldr	r3, [sp]
 907 0024 1860     		str	r0, [r3]
 908 0026 7047     		bx	lr
 909              	.L120:
 910 0028 0248     		ldr	r0, .L124
 911 002a 7047     		bx	lr
 912              	.L116:
ARM GAS  /tmp/ccArai7H.s 			page 17


 913 002c 024B     		ldr	r3, .L124+4
 914 002e 53F82200 		ldr	r0, [r3, r2, lsl #2]
 915 0032 7047     		bx	lr
 916              	.L125:
 917              		.align	2
 918              	.L124:
 919 0034 00000000 		.word	.LC3
 920 0038 00000000 		.word	_ZN10Kinematics23StandardHomingFileNamesE
 921              		.size	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm, .-_ZNK21LinearDeltaKinematics17GetHomi
 922              		.section	.text._ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 923              		.align	1
 924              		.p2align 2,,3
 925              		.global	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 926              		.syntax unified
 927              		.thumb
 928              		.thumb_func
 929              		.fpu softvfp
 930              		.type	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 931              	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 932              		@ args = 4, pretend = 0, frame = 0
 933              		@ frame_needed = 0, uses_anonymous_args = 0
 934 0000 70B5     		push	{r4, r5, r6, lr}
 935 0002 049D     		ldr	r5, [sp, #16]
 936 0004 A2B1     		cbz	r2, .L126
 937 0006 0C46     		mov	r4, r1
 938 0008 1E46     		mov	r6, r3
 939 000a 00EB8103 		add	r3, r0, r1, lsl #2
 940 000e 596B     		ldr	r1, [r3, #52]	@ float
 941 0010 C06E     		ldr	r0, [r0, #108]	@ float
 942 0012 FFF7FEFF 		bl	__aeabi_fadd
 943 0016 56F82410 		ldr	r1, [r6, r4, lsl #2]	@ float
 944 001a FFF7FEFF 		bl	__aeabi_fmul
 945 001e FFF7FEFF 		bl	lrintf
 946 0022 05EB8404 		add	r4, r5, r4, lsl #2
 947 0026 E061     		str	r0, [r4, #28]
 948 0028 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 949 002a 6FF30003 		bfc	r3, #0, #1
 950 002e AB72     		strb	r3, [r5, #10]
 951              	.L126:
 952 0030 70BD     		pop	{r4, r5, r6, pc}
 953              		.size	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK21LinearDeltaKinemati
 954 0032 00BF     		.section	.text._ZNK21LinearDeltaKinematics9TransformEPKfj.part.7,"ax",%progbits
 955              		.align	1
 956              		.p2align 2,,3
 957              		.syntax unified
 958              		.thumb
 959              		.thumb_func
 960              		.fpu softvfp
 961              		.type	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7, %function
 962              	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7:
 963              		@ args = 0, pretend = 0, frame = 0
 964              		@ frame_needed = 0, uses_anonymous_args = 0
 965 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 966 0004 0C46     		mov	r4, r1
 967 0006 00EB8206 		add	r6, r0, r2, lsl #2
 968 000a 0546     		mov	r5, r0
 969 000c 316D     		ldr	r1, [r6, #80]	@ float
ARM GAS  /tmp/ccArai7H.s 			page 18


 970 000e 2068     		ldr	r0, [r4]	@ float
 971 0010 FFF7FEFF 		bl	__aeabi_fsub
 972 0014 F16D     		ldr	r1, [r6, #92]	@ float
 973 0016 8046     		mov	r8, r0
 974 0018 6068     		ldr	r0, [r4, #4]	@ float
 975 001a FFF7FEFF 		bl	__aeabi_fsub
 976 001e 4146     		mov	r1, r8
 977 0020 0746     		mov	r7, r0
 978 0022 4046     		mov	r0, r8
 979 0024 FFF7FEFF 		bl	__aeabi_fmul
 980 0028 0146     		mov	r1, r0
 981 002a D5F89C00 		ldr	r0, [r5, #156]	@ float
 982 002e FFF7FEFF 		bl	__aeabi_fsub
 983 0032 3946     		mov	r1, r7
 984 0034 0646     		mov	r6, r0
 985 0036 3846     		mov	r0, r7
 986 0038 FFF7FEFF 		bl	__aeabi_fmul
 987 003c 0146     		mov	r1, r0
 988 003e 3046     		mov	r0, r6
 989 0040 FFF7FEFF 		bl	__aeabi_fsub
 990 0044 FFF7FEFF 		bl	sqrtf
 991 0048 A96C     		ldr	r1, [r5, #72]	@ float
 992 004a 0746     		mov	r7, r0
 993 004c 2068     		ldr	r0, [r4]	@ float
 994 004e FFF7FEFF 		bl	__aeabi_fmul
 995 0052 A168     		ldr	r1, [r4, #8]	@ float
 996 0054 0646     		mov	r6, r0
 997 0056 3846     		mov	r0, r7
 998 0058 FFF7FEFF 		bl	__aeabi_fadd
 999 005c 0146     		mov	r1, r0
 1000 005e 3046     		mov	r0, r6
 1001 0060 FFF7FEFF 		bl	__aeabi_fadd
 1002 0064 E96C     		ldr	r1, [r5, #76]	@ float
 1003 0066 0646     		mov	r6, r0
 1004 0068 6068     		ldr	r0, [r4, #4]	@ float
 1005 006a FFF7FEFF 		bl	__aeabi_fmul
 1006 006e 0146     		mov	r1, r0
 1007 0070 3046     		mov	r0, r6
 1008 0072 FFF7FEFF 		bl	__aeabi_fadd
 1009 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1010              		.size	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7, .-_ZNK21LinearDeltaKinematics9TransformEP
 1011 007a 00BF     		.section	.text._ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 1012              		.align	1
 1013              		.p2align 2,,3
 1014              		.global	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 1015              		.syntax unified
 1016              		.thumb
 1017              		.thumb_func
 1018              		.fpu softvfp
 1019              		.type	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 1020              	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 1021              		@ args = 12, pretend = 0, frame = 0
 1022              		@ frame_needed = 0, uses_anonymous_args = 0
 1023 0000 032B     		cmp	r3, #3
 1024 0002 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1025 0006 9A46     		mov	r10, r3
 1026 0008 1746     		mov	r7, r2
ARM GAS  /tmp/ccArai7H.s 			page 19


 1027 000a 8346     		mov	fp, r0
 1028 000c 0C46     		mov	r4, r1
 1029 000e 28BF     		it	cs
 1030 0010 4FF0030A 		movcs	r10, #3
 1031 0014 0025     		movs	r5, #0
 1032 0016 9846     		mov	r8, r3
 1033 0018 0B9B     		ldr	r3, [sp, #44]
 1034 001a A2F10409 		sub	r9, r2, #4
 1035 001e 1E1F     		subs	r6, r3, #4
 1036              	.L138:
 1037 0020 5545     		cmp	r5, r10
 1038 0022 18D1     		bne	.L145
 1039 0024 B8F1030F 		cmp	r8, #3
 1040 0028 12D9     		bls	.L140
 1041 002a 0325     		movs	r5, #3
 1042 002c 0B9B     		ldr	r3, [sp, #44]
 1043 002e 0834     		adds	r4, r4, #8
 1044 0030 0837     		adds	r7, r7, #8
 1045 0032 03F10806 		add	r6, r3, #8
 1046              	.L137:
 1047 0036 57F8041F 		ldr	r1, [r7, #4]!	@ float
 1048 003a 54F8040F 		ldr	r0, [r4, #4]!	@ float
 1049 003e FFF7FEFF 		bl	__aeabi_fmul
 1050 0042 FFF7FEFF 		bl	lrintf
 1051 0046 0135     		adds	r5, r5, #1
 1052 0048 A845     		cmp	r8, r5
 1053 004a 46F8040F 		str	r0, [r6, #4]!
 1054 004e F2D1     		bne	.L137
 1055              	.L140:
 1056 0050 0120     		movs	r0, #1
 1057 0052 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1058              	.L145:
 1059 0056 2A46     		mov	r2, r5
 1060 0058 2146     		mov	r1, r4
 1061 005a 5846     		mov	r0, fp
 1062 005c FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 1063 0060 59F8041F 		ldr	r1, [r9, #4]!	@ float
 1064 0064 FFF7FEFF 		bl	__aeabi_fmul
 1065 0068 FFF7FEFF 		bl	lrintf
 1066 006c 0135     		adds	r5, r5, #1
 1067 006e 46F8040F 		str	r0, [r6, #4]!
 1068 0072 D5E7     		b	.L138
 1069              		.size	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21LinearDeltaKinematic
 1070              		.section	.text._ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv,"ax",%progbits
 1071              		.align	1
 1072              		.p2align 2,,3
 1073              		.global	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv
 1074              		.syntax unified
 1075              		.thumb
 1076              		.thumb_func
 1077              		.fpu softvfp
 1078              		.type	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv, %function
 1079              	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv:
 1080              		@ args = 0, pretend = 0, frame = 0
 1081              		@ frame_needed = 0, uses_anonymous_args = 0
 1082 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1083 0004 0446     		mov	r4, r0
ARM GAS  /tmp/ccArai7H.s 			page 20


 1084 0006 876B     		ldr	r7, [r0, #56]	@ float
 1085 0008 D0F83480 		ldr	r8, [r0, #52]	@ float
 1086 000c E66B     		ldr	r6, [r4, #60]	@ float
 1087 000e 3946     		mov	r1, r7
 1088 0010 4046     		mov	r0, r8
 1089 0012 FFF7FEFF 		bl	__aeabi_fadd
 1090 0016 3146     		mov	r1, r6
 1091 0018 FFF7FEFF 		bl	__aeabi_fadd
 1092 001c 0F49     		ldr	r1, .L148
 1093 001e FFF7FEFF 		bl	__aeabi_fdiv
 1094 0022 0546     		mov	r5, r0
 1095 0024 0146     		mov	r1, r0
 1096 0026 4046     		mov	r0, r8
 1097 0028 FFF7FEFF 		bl	__aeabi_fsub
 1098 002c 2946     		mov	r1, r5
 1099 002e 6063     		str	r0, [r4, #52]	@ float
 1100 0030 3846     		mov	r0, r7
 1101 0032 FFF7FEFF 		bl	__aeabi_fsub
 1102 0036 2946     		mov	r1, r5
 1103 0038 A063     		str	r0, [r4, #56]	@ float
 1104 003a 3046     		mov	r0, r6
 1105 003c FFF7FEFF 		bl	__aeabi_fsub
 1106 0040 2946     		mov	r1, r5
 1107 0042 E063     		str	r0, [r4, #60]	@ float
 1108 0044 606C     		ldr	r0, [r4, #68]	@ float
 1109 0046 FFF7FEFF 		bl	__aeabi_fadd
 1110 004a 2946     		mov	r1, r5
 1111 004c 6064     		str	r0, [r4, #68]	@ float
 1112 004e E06E     		ldr	r0, [r4, #108]	@ float
 1113 0050 FFF7FEFF 		bl	__aeabi_fadd
 1114 0054 E066     		str	r0, [r4, #108]	@ float
 1115 0056 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1116              	.L149:
 1117 005a 00BF     		.align	2
 1118              	.L148:
 1119 005c 00004040 		.word	1077936128
 1120              		.size	_ZN21LinearDeltaKinematics27NormaliseEndstopAdjustmentsEv, .-_ZN21LinearDeltaKinematics27Nor
 1121              		.section	.text._ZNK21LinearDeltaKinematics9TransformEPKfj,"ax",%progbits
 1122              		.align	1
 1123              		.p2align 2,,3
 1124              		.global	_ZNK21LinearDeltaKinematics9TransformEPKfj
 1125              		.syntax unified
 1126              		.thumb
 1127              		.thumb_func
 1128              		.fpu softvfp
 1129              		.type	_ZNK21LinearDeltaKinematics9TransformEPKfj, %function
 1130              	_ZNK21LinearDeltaKinematics9TransformEPKfj:
 1131              		@ args = 0, pretend = 0, frame = 0
 1132              		@ frame_needed = 0, uses_anonymous_args = 0
 1133              		@ link register save eliminated.
 1134 0000 022A     		cmp	r2, #2
 1135 0002 04D9     		bls	.L154
 1136 0004 10B4     		push	{r4}
 1137 0006 51F82200 		ldr	r0, [r1, r2, lsl #2]	@ float
 1138 000a 10BC     		pop	{r4}
 1139 000c 7047     		bx	lr
 1140              	.L154:
ARM GAS  /tmp/ccArai7H.s 			page 21


 1141 000e FFF7FEBF 		b	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 1142              		.size	_ZNK21LinearDeltaKinematics9TransformEPKfj, .-_ZNK21LinearDeltaKinematics9TransformEPKfj
 1143 0012 00BF     		.section	.text._ZNK21LinearDeltaKinematics16InverseTransformEfffPf,"ax",%progbits
 1144              		.align	1
 1145              		.p2align 2,,3
 1146              		.global	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 1147              		.syntax unified
 1148              		.thumb
 1149              		.thumb_func
 1150              		.fpu softvfp
 1151              		.type	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf, %function
 1152              	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf:
 1153              		@ args = 4, pretend = 0, frame = 24
 1154              		@ frame_needed = 0, uses_anonymous_args = 0
 1155 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1156 0004 0446     		mov	r4, r0
 1157 0006 87B0     		sub	sp, sp, #28
 1158 0008 0846     		mov	r0, r1
 1159 000a 1E46     		mov	r6, r3
 1160 000c 1746     		mov	r7, r2
 1161 000e 0D46     		mov	r5, r1
 1162 0010 FFF7FEFF 		bl	__aeabi_fmul
 1163 0014 D4F88810 		ldr	r1, [r4, #136]	@ float
 1164 0018 0390     		str	r0, [sp, #12]	@ float
 1165 001a FFF7FEFF 		bl	__aeabi_fadd
 1166 001e 3946     		mov	r1, r7
 1167 0020 8346     		mov	fp, r0
 1168 0022 3846     		mov	r0, r7
 1169 0024 FFF7FEFF 		bl	__aeabi_fmul
 1170 0028 D4F88C10 		ldr	r1, [r4, #140]	@ float
 1171 002c FFF7FEFF 		bl	__aeabi_fadd
 1172 0030 3146     		mov	r1, r6
 1173 0032 8046     		mov	r8, r0
 1174 0034 3046     		mov	r0, r6
 1175 0036 FFF7FEFF 		bl	__aeabi_fmul
 1176 003a D4F89010 		ldr	r1, [r4, #144]	@ float
 1177 003e FFF7FEFF 		bl	__aeabi_fadd
 1178 0042 226F     		ldr	r2, [r4, #112]	@ float
 1179 0044 8246     		mov	r10, r0
 1180 0046 1146     		mov	r1, r2
 1181 0048 5846     		mov	r0, fp
 1182 004a 0592     		str	r2, [sp, #20]
 1183 004c FFF7FEFF 		bl	__aeabi_fmul
 1184 0050 D4F87490 		ldr	r9, [r4, #116]	@ float
 1185 0054 0090     		str	r0, [sp]
 1186 0056 4946     		mov	r1, r9
 1187 0058 4046     		mov	r0, r8
 1188 005a FFF7FEFF 		bl	__aeabi_fmul
 1189 005e 009B     		ldr	r3, [sp]
 1190 0060 0146     		mov	r1, r0
 1191 0062 1846     		mov	r0, r3
 1192 0064 A36F     		ldr	r3, [r4, #120]	@ float
 1193 0066 0193     		str	r3, [sp, #4]	@ float
 1194 0068 FFF7FEFF 		bl	__aeabi_fadd
 1195 006c 0199     		ldr	r1, [sp, #4]	@ float
 1196 006e 0090     		str	r0, [sp]
 1197 0070 5046     		mov	r0, r10
ARM GAS  /tmp/ccArai7H.s 			page 22


 1198 0072 FFF7FEFF 		bl	__aeabi_fmul
 1199 0076 009B     		ldr	r3, [sp]
 1200 0078 0146     		mov	r1, r0
 1201 007a 1846     		mov	r0, r3
 1202 007c FFF7FEFF 		bl	__aeabi_fadd
 1203 0080 E36F     		ldr	r3, [r4, #124]	@ float
 1204 0082 D4F88020 		ldr	r2, [r4, #128]	@ float
 1205 0086 1946     		mov	r1, r3
 1206 0088 0090     		str	r0, [sp]	@ float
 1207 008a 5846     		mov	r0, fp
 1208 008c 0493     		str	r3, [sp, #16]
 1209 008e 0292     		str	r2, [sp, #8]	@ float
 1210 0090 FFF7FEFF 		bl	__aeabi_fmul
 1211 0094 0299     		ldr	r1, [sp, #8]	@ float
 1212 0096 8346     		mov	fp, r0
 1213 0098 4046     		mov	r0, r8
 1214 009a FFF7FEFF 		bl	__aeabi_fmul
 1215 009e 0146     		mov	r1, r0
 1216 00a0 5846     		mov	r0, fp
 1217 00a2 FFF7FEFF 		bl	__aeabi_fadd
 1218 00a6 D4F88480 		ldr	r8, [r4, #132]	@ float
 1219 00aa 8346     		mov	fp, r0
 1220 00ac 4146     		mov	r1, r8
 1221 00ae 5046     		mov	r0, r10
 1222 00b0 FFF7FEFF 		bl	__aeabi_fmul
 1223 00b4 0146     		mov	r1, r0
 1224 00b6 5846     		mov	r0, fp
 1225 00b8 FFF7FEFF 		bl	__aeabi_fadd
 1226 00bc 059A     		ldr	r2, [sp, #20]
 1227 00be 8246     		mov	r10, r0
 1228 00c0 1146     		mov	r1, r2
 1229 00c2 2846     		mov	r0, r5
 1230 00c4 FFF7FEFF 		bl	__aeabi_fmul
 1231 00c8 4946     		mov	r1, r9
 1232 00ca 8346     		mov	fp, r0
 1233 00cc 3846     		mov	r0, r7
 1234 00ce FFF7FEFF 		bl	__aeabi_fmul
 1235 00d2 0146     		mov	r1, r0
 1236 00d4 5846     		mov	r0, fp
 1237 00d6 FFF7FEFF 		bl	__aeabi_fadd
 1238 00da 0199     		ldr	r1, [sp, #4]	@ float
 1239 00dc 8146     		mov	r9, r0
 1240 00de 3046     		mov	r0, r6
 1241 00e0 FFF7FEFF 		bl	__aeabi_fmul
 1242 00e4 0146     		mov	r1, r0
 1243 00e6 4846     		mov	r0, r9
 1244 00e8 FFF7FEFF 		bl	__aeabi_fadd
 1245 00ec 0146     		mov	r1, r0
 1246 00ee FFF7FEFF 		bl	__aeabi_fadd
 1247 00f2 049B     		ldr	r3, [sp, #16]
 1248 00f4 8146     		mov	r9, r0
 1249 00f6 1946     		mov	r1, r3
 1250 00f8 2846     		mov	r0, r5
 1251 00fa FFF7FEFF 		bl	__aeabi_fmul
 1252 00fe 0299     		ldr	r1, [sp, #8]	@ float
 1253 0100 8346     		mov	fp, r0
 1254 0102 3846     		mov	r0, r7
ARM GAS  /tmp/ccArai7H.s 			page 23


 1255 0104 FFF7FEFF 		bl	__aeabi_fmul
 1256 0108 0146     		mov	r1, r0
 1257 010a 5846     		mov	r0, fp
 1258 010c FFF7FEFF 		bl	__aeabi_fadd
 1259 0110 4146     		mov	r1, r8
 1260 0112 0746     		mov	r7, r0
 1261 0114 3046     		mov	r0, r6
 1262 0116 FFF7FEFF 		bl	__aeabi_fmul
 1263 011a 0146     		mov	r1, r0
 1264 011c 3846     		mov	r0, r7
 1265 011e FFF7FEFF 		bl	__aeabi_fadd
 1266 0122 0146     		mov	r1, r0
 1267 0124 FFF7FEFF 		bl	__aeabi_fadd
 1268 0128 4946     		mov	r1, r9
 1269 012a 0646     		mov	r6, r0
 1270 012c 4846     		mov	r0, r9
 1271 012e FFF7FEFF 		bl	__aeabi_fmul
 1272 0132 3146     		mov	r1, r6
 1273 0134 0746     		mov	r7, r0
 1274 0136 3046     		mov	r0, r6
 1275 0138 FFF7FEFF 		bl	__aeabi_fmul
 1276 013c 0146     		mov	r1, r0
 1277 013e 3846     		mov	r0, r7
 1278 0140 D4F89870 		ldr	r7, [r4, #152]	@ float
 1279 0144 FFF7FEFF 		bl	__aeabi_fadd
 1280 0148 3946     		mov	r1, r7
 1281 014a FFF7FEFF 		bl	__aeabi_fadd
 1282 014e 3146     		mov	r1, r6
 1283 0150 0190     		str	r0, [sp, #4]	@ float
 1284 0152 5046     		mov	r0, r10
 1285 0154 FFF7FEFF 		bl	__aeabi_fmul
 1286 0158 4946     		mov	r1, r9
 1287 015a 8046     		mov	r8, r0
 1288 015c 0098     		ldr	r0, [sp]	@ float
 1289 015e FFF7FEFF 		bl	__aeabi_fmul
 1290 0162 0146     		mov	r1, r0
 1291 0164 4046     		mov	r0, r8
 1292 0166 FFF7FEFF 		bl	__aeabi_fadd
 1293 016a 3946     		mov	r1, r7
 1294 016c 8046     		mov	r8, r0
 1295 016e 2846     		mov	r0, r5
 1296 0170 FFF7FEFF 		bl	__aeabi_fmul
 1297 0174 0146     		mov	r1, r0
 1298 0176 4046     		mov	r0, r8
 1299 0178 FFF7FEFF 		bl	__aeabi_fadd
 1300 017c D4F850B0 		ldr	fp, [r4, #80]	@ float
 1301 0180 D4F89450 		ldr	r5, [r4, #148]	@ float
 1302 0184 8046     		mov	r8, r0
 1303 0186 5946     		mov	r1, fp
 1304 0188 3046     		mov	r0, r6
 1305 018a FFF7FEFF 		bl	__aeabi_fmul
 1306 018e 2946     		mov	r1, r5
 1307 0190 FFF7FEFF 		bl	__aeabi_fmul
 1308 0194 0146     		mov	r1, r0
 1309 0196 4046     		mov	r0, r8
 1310 0198 FFF7FEFF 		bl	__aeabi_fadd
 1311 019c D4F85C80 		ldr	r8, [r4, #92]	@ float
ARM GAS  /tmp/ccArai7H.s 			page 24


 1312 01a0 0290     		str	r0, [sp, #8]
 1313 01a2 4146     		mov	r1, r8
 1314 01a4 4846     		mov	r0, r9
 1315 01a6 FFF7FEFF 		bl	__aeabi_fmul
 1316 01aa 2946     		mov	r1, r5
 1317 01ac FFF7FEFF 		bl	__aeabi_fmul
 1318 01b0 029B     		ldr	r3, [sp, #8]
 1319 01b2 0146     		mov	r1, r0
 1320 01b4 1846     		mov	r0, r3
 1321 01b6 FFF7FEFF 		bl	__aeabi_fsub
 1322 01ba 2946     		mov	r1, r5
 1323 01bc 0290     		str	r0, [sp, #8]
 1324 01be 5846     		mov	r0, fp
 1325 01c0 FFF7FEFF 		bl	__aeabi_fmul
 1326 01c4 5146     		mov	r1, r10
 1327 01c6 FFF7FEFF 		bl	__aeabi_fadd
 1328 01ca 4146     		mov	r1, r8
 1329 01cc 8346     		mov	fp, r0
 1330 01ce 2846     		mov	r0, r5
 1331 01d0 FFF7FEFF 		bl	__aeabi_fmul
 1332 01d4 0146     		mov	r1, r0
 1333 01d6 0098     		ldr	r0, [sp]	@ float
 1334 01d8 FFF7FEFF 		bl	__aeabi_fsub
 1335 01dc 029B     		ldr	r3, [sp, #8]
 1336 01de 8046     		mov	r8, r0
 1337 01e0 1946     		mov	r1, r3
 1338 01e2 1846     		mov	r0, r3
 1339 01e4 FFF7FEFF 		bl	__aeabi_fmul
 1340 01e8 5946     		mov	r1, fp
 1341 01ea 0546     		mov	r5, r0
 1342 01ec 5846     		mov	r0, fp
 1343 01ee FFF7FEFF 		bl	__aeabi_fmul
 1344 01f2 4146     		mov	r1, r8
 1345 01f4 8346     		mov	fp, r0
 1346 01f6 4046     		mov	r0, r8
 1347 01f8 FFF7FEFF 		bl	__aeabi_fmul
 1348 01fc 0146     		mov	r1, r0
 1349 01fe 5846     		mov	r0, fp
 1350 0200 FFF7FEFF 		bl	__aeabi_fadd
 1351 0204 D4F89C10 		ldr	r1, [r4, #156]	@ float
 1352 0208 8046     		mov	r8, r0
 1353 020a 0398     		ldr	r0, [sp, #12]	@ float
 1354 020c FFF7FEFF 		bl	__aeabi_fsub
 1355 0210 3946     		mov	r1, r7
 1356 0212 FFF7FEFF 		bl	__aeabi_fmul
 1357 0216 0146     		mov	r1, r0
 1358 0218 4046     		mov	r0, r8
 1359 021a FFF7FEFF 		bl	__aeabi_fadd
 1360 021e 019F     		ldr	r7, [sp, #4]	@ float
 1361 0220 3946     		mov	r1, r7
 1362 0222 FFF7FEFF 		bl	__aeabi_fmul
 1363 0226 0146     		mov	r1, r0
 1364 0228 2846     		mov	r0, r5
 1365 022a FFF7FEFF 		bl	__aeabi_fsub
 1366 022e FFF7FEFF 		bl	sqrtf
 1367 0232 029B     		ldr	r3, [sp, #8]
 1368 0234 0146     		mov	r1, r0
ARM GAS  /tmp/ccArai7H.s 			page 25


 1369 0236 1846     		mov	r0, r3
 1370 0238 FFF7FEFF 		bl	__aeabi_fsub
 1371 023c 3946     		mov	r1, r7
 1372 023e FFF7FEFF 		bl	__aeabi_fdiv
 1373 0242 0546     		mov	r5, r0
 1374 0244 0146     		mov	r1, r0
 1375 0246 3046     		mov	r0, r6
 1376 0248 FFF7FEFF 		bl	__aeabi_fmul
 1377 024c 5146     		mov	r1, r10
 1378 024e FFF7FEFF 		bl	__aeabi_fsub
 1379 0252 D4F89410 		ldr	r1, [r4, #148]	@ float
 1380 0256 FFF7FEFF 		bl	__aeabi_fdiv
 1381 025a 109B     		ldr	r3, [sp, #64]
 1382 025c 0746     		mov	r7, r0
 1383 025e 1860     		str	r0, [r3]	@ float
 1384 0260 2946     		mov	r1, r5
 1385 0262 4846     		mov	r0, r9
 1386 0264 FFF7FEFF 		bl	__aeabi_fmul
 1387 0268 0146     		mov	r1, r0
 1388 026a 0098     		ldr	r0, [sp]	@ float
 1389 026c FFF7FEFF 		bl	__aeabi_fsub
 1390 0270 D4F89410 		ldr	r1, [r4, #148]	@ float
 1391 0274 FFF7FEFF 		bl	__aeabi_fdiv
 1392 0278 109B     		ldr	r3, [sp, #64]
 1393 027a 0646     		mov	r6, r0
 1394 027c 5860     		str	r0, [r3, #4]	@ float
 1395 027e A16C     		ldr	r1, [r4, #72]	@ float
 1396 0280 3846     		mov	r0, r7
 1397 0282 FFF7FEFF 		bl	__aeabi_fmul
 1398 0286 E16C     		ldr	r1, [r4, #76]	@ float
 1399 0288 0746     		mov	r7, r0
 1400 028a 3046     		mov	r0, r6
 1401 028c FFF7FEFF 		bl	__aeabi_fmul
 1402 0290 0146     		mov	r1, r0
 1403 0292 3846     		mov	r0, r7
 1404 0294 FFF7FEFF 		bl	__aeabi_fadd
 1405 0298 0146     		mov	r1, r0
 1406 029a 2846     		mov	r0, r5
 1407 029c FFF7FEFF 		bl	__aeabi_fsub
 1408 02a0 109B     		ldr	r3, [sp, #64]
 1409 02a2 9860     		str	r0, [r3, #8]	@ float
 1410 02a4 07B0     		add	sp, sp, #28
 1411              		@ sp needed
 1412 02a6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1413              		.size	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf, .-_ZNK21LinearDeltaKinematics16InverseT
 1414 02aa 00BF     		.section	.text._ZN21LinearDeltaKinematics6RecalcEv,"ax",%progbits
 1415              		.align	1
 1416              		.p2align 2,,3
 1417              		.global	_ZN21LinearDeltaKinematics6RecalcEv
 1418              		.syntax unified
 1419              		.thumb
 1420              		.thumb_func
 1421              		.fpu softvfp
 1422              		.type	_ZN21LinearDeltaKinematics6RecalcEv, %function
 1423              	_ZN21LinearDeltaKinematics6RecalcEv:
 1424              		@ args = 0, pretend = 0, frame = 32
 1425              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccArai7H.s 			page 26


 1426 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1427 0004 6F49     		ldr	r1, .L159
 1428 0006 8BB0     		sub	sp, sp, #44
 1429 0008 0446     		mov	r4, r0
 1430 000a 806A     		ldr	r0, [r0, #40]	@ float
 1431 000c FFF7FEFF 		bl	__aeabi_fadd
 1432 0010 6D49     		ldr	r1, .L159+4
 1433 0012 FFF7FEFF 		bl	__aeabi_fmul
 1434 0016 0646     		mov	r6, r0
 1435 0018 FFF7FEFF 		bl	cosf
 1436 001c 656A     		ldr	r5, [r4, #36]	@ float
 1437 001e 0146     		mov	r1, r0
 1438 0020 2846     		mov	r0, r5
 1439 0022 FFF7FEFF 		bl	__aeabi_fmul
 1440 0026 00F10043 		add	r3, r0, #-2147483648
 1441 002a 2365     		str	r3, [r4, #80]	@ float
 1442 002c 8046     		mov	r8, r0
 1443 002e 3046     		mov	r0, r6
 1444 0030 FFF7FEFF 		bl	sinf
 1445 0034 0146     		mov	r1, r0
 1446 0036 2846     		mov	r0, r5
 1447 0038 FFF7FEFF 		bl	__aeabi_fmul
 1448 003c 00F10042 		add	r2, r0, #-2147483648
 1449 0040 E265     		str	r2, [r4, #92]	@ float
 1450 0042 8246     		mov	r10, r0
 1451 0044 E16A     		ldr	r1, [r4, #44]	@ float
 1452 0046 5F48     		ldr	r0, .L159
 1453 0048 0492     		str	r2, [sp, #16]
 1454 004a FFF7FEFF 		bl	__aeabi_fsub
 1455 004e 5E49     		ldr	r1, .L159+4
 1456 0050 FFF7FEFF 		bl	__aeabi_fmul
 1457 0054 0646     		mov	r6, r0
 1458 0056 FFF7FEFF 		bl	cosf
 1459 005a 0146     		mov	r1, r0
 1460 005c 2846     		mov	r0, r5
 1461 005e FFF7FEFF 		bl	__aeabi_fmul
 1462 0062 0746     		mov	r7, r0
 1463 0064 3046     		mov	r0, r6
 1464 0066 6765     		str	r7, [r4, #84]	@ float
 1465 0068 FFF7FEFF 		bl	sinf
 1466 006c 0146     		mov	r1, r0
 1467 006e 2846     		mov	r0, r5
 1468 0070 FFF7FEFF 		bl	__aeabi_fmul
 1469 0074 00F10043 		add	r3, r0, #-2147483648
 1470 0078 0646     		mov	r6, r0
 1471 007a 2366     		str	r3, [r4, #96]	@ float
 1472 007c 206B     		ldr	r0, [r4, #48]	@ float
 1473 007e 5249     		ldr	r1, .L159+4
 1474 0080 FFF7FEFF 		bl	__aeabi_fmul
 1475 0084 0390     		str	r0, [sp, #12]
 1476 0086 FFF7FEFF 		bl	sinf
 1477 008a 0146     		mov	r1, r0
 1478 008c 2846     		mov	r0, r5
 1479 008e FFF7FEFF 		bl	__aeabi_fmul
 1480 0092 039B     		ldr	r3, [sp, #12]
 1481 0094 00F1004B 		add	fp, r0, #-2147483648
 1482 0098 8146     		mov	r9, r0
ARM GAS  /tmp/ccArai7H.s 			page 27


 1483 009a C4F858B0 		str	fp, [r4, #88]	@ float
 1484 009e 1846     		mov	r0, r3
 1485 00a0 FFF7FEFF 		bl	cosf
 1486 00a4 0146     		mov	r1, r0
 1487 00a6 2846     		mov	r0, r5
 1488 00a8 FFF7FEFF 		bl	__aeabi_fmul
 1489 00ac 0546     		mov	r5, r0
 1490 00ae 3946     		mov	r1, r7
 1491 00b0 6566     		str	r5, [r4, #100]	@ float
 1492 00b2 5846     		mov	r0, fp
 1493 00b4 FFF7FEFF 		bl	__aeabi_fsub
 1494 00b8 4146     		mov	r1, r8
 1495 00ba 2067     		str	r0, [r4, #112]	@ float
 1496 00bc 4846     		mov	r0, r9
 1497 00be FFF7FEFF 		bl	__aeabi_fsub
 1498 00c2 3946     		mov	r1, r7
 1499 00c4 6067     		str	r0, [r4, #116]	@ float
 1500 00c6 0590     		str	r0, [sp, #20]
 1501 00c8 4046     		mov	r0, r8
 1502 00ca FFF7FEFF 		bl	__aeabi_fadd
 1503 00ce 2946     		mov	r1, r5
 1504 00d0 8346     		mov	fp, r0
 1505 00d2 A067     		str	r0, [r4, #120]	@ float
 1506 00d4 3046     		mov	r0, r6
 1507 00d6 FFF7FEFF 		bl	__aeabi_fadd
 1508 00da 049A     		ldr	r2, [sp, #16]
 1509 00dc 2946     		mov	r1, r5
 1510 00de E067     		str	r0, [r4, #124]	@ float
 1511 00e0 1046     		mov	r0, r2
 1512 00e2 FFF7FEFF 		bl	__aeabi_fsub
 1513 00e6 3146     		mov	r1, r6
 1514 00e8 0390     		str	r0, [sp, #12]	@ float
 1515 00ea C4F88000 		str	r0, [r4, #128]	@ float
 1516 00ee 5046     		mov	r0, r10
 1517 00f0 FFF7FEFF 		bl	__aeabi_fsub
 1518 00f4 4146     		mov	r1, r8
 1519 00f6 C4F88400 		str	r0, [r4, #132]	@ float
 1520 00fa 0490     		str	r0, [sp, #16]
 1521 00fc 4046     		mov	r0, r8
 1522 00fe FFF7FEFF 		bl	__aeabi_fmul
 1523 0102 5146     		mov	r1, r10
 1524 0104 8046     		mov	r8, r0
 1525 0106 5046     		mov	r0, r10
 1526 0108 FFF7FEFF 		bl	__aeabi_fmul
 1527 010c 0146     		mov	r1, r0
 1528 010e 4046     		mov	r0, r8
 1529 0110 FFF7FEFF 		bl	__aeabi_fadd
 1530 0114 3946     		mov	r1, r7
 1531 0116 C4F88800 		str	r0, [r4, #136]	@ float
 1532 011a 3846     		mov	r0, r7
 1533 011c FFF7FEFF 		bl	__aeabi_fmul
 1534 0120 3146     		mov	r1, r6
 1535 0122 0746     		mov	r7, r0
 1536 0124 3046     		mov	r0, r6
 1537 0126 FFF7FEFF 		bl	__aeabi_fmul
 1538 012a 0146     		mov	r1, r0
 1539 012c 3846     		mov	r0, r7
ARM GAS  /tmp/ccArai7H.s 			page 28


 1540 012e FFF7FEFF 		bl	__aeabi_fadd
 1541 0132 4946     		mov	r1, r9
 1542 0134 C4F88C00 		str	r0, [r4, #140]	@ float
 1543 0138 4846     		mov	r0, r9
 1544 013a FFF7FEFF 		bl	__aeabi_fmul
 1545 013e 2946     		mov	r1, r5
 1546 0140 0646     		mov	r6, r0
 1547 0142 2846     		mov	r0, r5
 1548 0144 FFF7FEFF 		bl	__aeabi_fmul
 1549 0148 0146     		mov	r1, r0
 1550 014a 3046     		mov	r0, r6
 1551 014c FFF7FEFF 		bl	__aeabi_fadd
 1552 0150 049A     		ldr	r2, [sp, #16]
 1553 0152 059B     		ldr	r3, [sp, #20]
 1554 0154 1146     		mov	r1, r2
 1555 0156 C4F89000 		str	r0, [r4, #144]	@ float
 1556 015a 1846     		mov	r0, r3
 1557 015c FFF7FEFF 		bl	__aeabi_fmul
 1558 0160 0399     		ldr	r1, [sp, #12]	@ float
 1559 0162 0546     		mov	r5, r0
 1560 0164 5846     		mov	r0, fp
 1561 0166 FFF7FEFF 		bl	__aeabi_fmul
 1562 016a 0146     		mov	r1, r0
 1563 016c 2846     		mov	r0, r5
 1564 016e FFF7FEFF 		bl	__aeabi_fsub
 1565 0172 0146     		mov	r1, r0
 1566 0174 FFF7FEFF 		bl	__aeabi_fadd
 1567 0178 0146     		mov	r1, r0
 1568 017a C4F89400 		str	r0, [r4, #148]	@ float
 1569 017e FFF7FEFF 		bl	__aeabi_fmul
 1570 0182 256A     		ldr	r5, [r4, #32]	@ float
 1571 0184 C4F89800 		str	r0, [r4, #152]	@ float
 1572 0188 2946     		mov	r1, r5
 1573 018a 2846     		mov	r0, r5
 1574 018c FFF7FEFF 		bl	__aeabi_fmul
 1575 0190 07AE     		add	r6, sp, #28
 1576 0192 2B46     		mov	r3, r5
 1577 0194 2A46     		mov	r2, r5
 1578 0196 C4F89C00 		str	r0, [r4, #156]	@ float
 1579 019a 2946     		mov	r1, r5
 1580 019c 2046     		mov	r0, r4
 1581 019e 0096     		str	r6, [sp]
 1582 01a0 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 1583 01a4 616C     		ldr	r1, [r4, #68]	@ float
 1584 01a6 2846     		mov	r0, r5
 1585 01a8 FFF7FEFF 		bl	__aeabi_fadd
 1586 01ac 0999     		ldr	r1, [sp, #36]	@ float
 1587 01ae FFF7FEFF 		bl	__aeabi_fsub
 1588 01b2 216C     		ldr	r1, [r4, #64]	@ float
 1589 01b4 E066     		str	r0, [r4, #108]	@ float
 1590 01b6 0846     		mov	r0, r1
 1591 01b8 FFF7FEFF 		bl	__aeabi_fmul
 1592 01bc A066     		str	r0, [r4, #104]	@ float
 1593 01be 0BB0     		add	sp, sp, #44
 1594              		@ sp needed
 1595 01c0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1596              	.L160:
ARM GAS  /tmp/ccArai7H.s 			page 29


 1597              		.align	2
 1598              	.L159:
 1599 01c4 0000F041 		.word	1106247680
 1600 01c8 35FA8E3C 		.word	1016003125
 1601              		.size	_ZN21LinearDeltaKinematics6RecalcEv, .-_ZN21LinearDeltaKinematics6RecalcEv
 1602              		.section	.text._ZN21LinearDeltaKinematics4InitEv,"ax",%progbits
 1603              		.align	1
 1604              		.p2align 2,,3
 1605              		.global	_ZN21LinearDeltaKinematics4InitEv
 1606              		.syntax unified
 1607              		.thumb
 1608              		.thumb_func
 1609              		.fpu softvfp
 1610              		.type	_ZN21LinearDeltaKinematics4InitEv, %function
 1611              	_ZN21LinearDeltaKinematics4InitEv:
 1612              		@ args = 0, pretend = 0, frame = 0
 1613              		@ frame_needed = 0, uses_anonymous_args = 0
 1614              		@ link register save eliminated.
 1615 0000 0023     		movs	r3, #0
 1616 0002 0021     		movs	r1, #0
 1617 0004 F0B4     		push	{r4, r5, r6, r7}
 1618 0006 0769     		ldr	r7, [r0, #16]	@ float
 1619 0008 4669     		ldr	r6, [r0, #20]	@ float
 1620 000a 8569     		ldr	r5, [r0, #24]	@ float
 1621 000c C469     		ldr	r4, [r0, #28]	@ float
 1622 000e 1A46     		mov	r2, r3
 1623 0010 80F8A010 		strb	r1, [r0, #160]
 1624 0014 C364     		str	r3, [r0, #76]	@ float
 1625 0016 8364     		str	r3, [r0, #72]	@ float
 1626 0018 0762     		str	r7, [r0, #32]	@ float
 1627 001a 4662     		str	r6, [r0, #36]	@ float
 1628 001c 0564     		str	r5, [r0, #64]	@ float
 1629 001e 4464     		str	r4, [r0, #68]	@ float
 1630 0020 00F12803 		add	r3, r0, #40
 1631 0024 00F13401 		add	r1, r0, #52
 1632              	.L162:
 1633 0028 43F8042B 		str	r2, [r3], #4	@ float
 1634 002c 8B42     		cmp	r3, r1
 1635 002e 9A60     		str	r2, [r3, #8]	@ float
 1636 0030 1A63     		str	r2, [r3, #48]	@ float
 1637 0032 5A62     		str	r2, [r3, #36]	@ float
 1638 0034 F8D1     		bne	.L162
 1639 0036 F0BC     		pop	{r4, r5, r6, r7}
 1640 0038 FFF7FEBF 		b	_ZN21LinearDeltaKinematics6RecalcEv
 1641              		.size	_ZN21LinearDeltaKinematics4InitEv, .-_ZN21LinearDeltaKinematics4InitEv
 1642              		.section	.text._ZN21LinearDeltaKinematicsC2Ev,"ax",%progbits
 1643              		.align	1
 1644              		.p2align 2,,3
 1645              		.global	_ZN21LinearDeltaKinematicsC2Ev
 1646              		.syntax unified
 1647              		.thumb
 1648              		.thumb_func
 1649              		.fpu softvfp
 1650              		.type	_ZN21LinearDeltaKinematicsC2Ev, %function
 1651              	_ZN21LinearDeltaKinematicsC2Ev:
 1652              		@ args = 0, pretend = 0, frame = 0
 1653              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccArai7H.s 			page 30


 1654 0000 0123     		movs	r3, #1
 1655 0002 30B5     		push	{r4, r5, lr}
 1656 0004 0446     		mov	r4, r0
 1657 0006 83B0     		sub	sp, sp, #12
 1658 0008 0093     		str	r3, [sp]
 1659 000a 0A4A     		ldr	r2, .L167
 1660 000c 0023     		movs	r3, #0
 1661 000e 0321     		movs	r1, #3
 1662 0010 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffb
 1663 0014 084D     		ldr	r5, .L167+4
 1664 0016 0949     		ldr	r1, .L167+8
 1665 0018 094A     		ldr	r2, .L167+12
 1666 001a 0A4B     		ldr	r3, .L167+16
 1667 001c 0A48     		ldr	r0, .L167+20
 1668 001e 2560     		str	r5, [r4]
 1669 0020 2061     		str	r0, [r4, #16]	@ float
 1670 0022 6161     		str	r1, [r4, #20]	@ float
 1671 0024 2046     		mov	r0, r4
 1672 0026 A261     		str	r2, [r4, #24]	@ float
 1673 0028 E361     		str	r3, [r4, #28]	@ float
 1674 002a FFF7FEFF 		bl	_ZN21LinearDeltaKinematics4InitEv
 1675 002e 2046     		mov	r0, r4
 1676 0030 03B0     		add	sp, sp, #12
 1677              		@ sp needed
 1678 0032 30BD     		pop	{r4, r5, pc}
 1679              	.L168:
 1680              		.align	2
 1681              	.L167:
 1682 0034 000080BF 		.word	-1082130432
 1683 0038 08000000 		.word	.LANCHOR0+8
 1684 003c 3333D342 		.word	1121137459
 1685 0040 0000A042 		.word	1117782016
 1686 0044 00007043 		.word	1131413504
 1687 0048 00005743 		.word	1129775104
 1688              		.size	_ZN21LinearDeltaKinematicsC2Ev, .-_ZN21LinearDeltaKinematicsC2Ev
 1689              		.global	_ZN21LinearDeltaKinematicsC1Ev
 1690              		.thumb_set _ZN21LinearDeltaKinematicsC1Ev,_ZN21LinearDeltaKinematicsC2Ev
 1691              		.section	.text._ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21LinearDel
 1692              		.align	1
 1693              		.p2align 2,,3
 1694              		.weak	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv
 1695              		.syntax unified
 1696              		.thumb
 1697              		.thumb_func
 1698              		.fpu softvfp
 1699              		.type	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv, %function
 1700              	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv:
 1701              		@ args = 0, pretend = 0, frame = 0
 1702              		@ frame_needed = 0, uses_anonymous_args = 0
 1703              		@ link register save eliminated.
 1704 0000 FFF7FEBF 		b	_ZN21LinearDeltaKinematics4InitEv
 1705              		.size	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv, .-_ZN21LinearDeltaKinematics22SetCalib
 1706              		.global	__aeabi_f2d
 1707              		.section	.text._ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1708              		.align	1
 1709              		.p2align 2,,3
 1710              		.global	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
ARM GAS  /tmp/ccArai7H.s 			page 31


 1711              		.syntax unified
 1712              		.thumb
 1713              		.thumb_func
 1714              		.fpu softvfp
 1715              		.type	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1716              	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1717              		@ args = 4, pretend = 0, frame = 0
 1718              		@ frame_needed = 0, uses_anonymous_args = 0
 1719 0000 2DE9F04D 		push	{r4, r5, r6, r7, r8, r10, fp, lr}
 1720 0004 40F29927 		movw	r7, #665
 1721 0008 8CB0     		sub	sp, sp, #48
 1722 000a B942     		cmp	r1, r7
 1723 000c 0546     		mov	r5, r0
 1724 000e 1446     		mov	r4, r2
 1725 0010 9846     		mov	r8, r3
 1726 0012 DDF850E0 		ldr	lr, [sp, #80]
 1727 0016 59D0     		beq	.L172
 1728 0018 40F29A27 		movw	r7, #666
 1729 001c B942     		cmp	r1, r7
 1730 001e 4ED1     		bne	.L219
 1731 0020 5821     		movs	r1, #88
 1732 0022 1046     		mov	r0, r2
 1733 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1734 0028 0646     		mov	r6, r0
 1735 002a 0028     		cmp	r0, #0
 1736 002c 40F02C81 		bne	.L220
 1737              	.L185:
 1738 0030 5921     		movs	r1, #89
 1739 0032 2046     		mov	r0, r4
 1740 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1741 0038 0746     		mov	r7, r0
 1742 003a 0028     		cmp	r0, #0
 1743 003c 40F01E81 		bne	.L221
 1744              	.L186:
 1745 0040 5A21     		movs	r1, #90
 1746 0042 2046     		mov	r0, r4
 1747 0044 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1748 0048 0746     		mov	r7, r0
 1749 004a 0028     		cmp	r0, #0
 1750 004c 40F01081 		bne	.L222
 1751              	.L187:
 1752 0050 4121     		movs	r1, #65
 1753 0052 2046     		mov	r0, r4
 1754 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1755 0058 0028     		cmp	r0, #0
 1756 005a 40F0B580 		bne	.L223
 1757 005e 4221     		movs	r1, #66
 1758 0060 2046     		mov	r0, r4
 1759 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1760 0066 0028     		cmp	r0, #0
 1761 0068 40F0BA80 		bne	.L189
 1762 006c 002E     		cmp	r6, #0
 1763 006e 40F0C080 		bne	.L190
 1764 0072 686B     		ldr	r0, [r5, #52]	@ float
 1765 0074 FFF7FEFF 		bl	__aeabi_f2d
 1766 0078 8246     		mov	r10, r0
 1767 007a 8B46     		mov	fp, r1
ARM GAS  /tmp/ccArai7H.s 			page 32


 1768 007c E86C     		ldr	r0, [r5, #76]	@ float
 1769 007e 8549     		ldr	r1, .L230
 1770 0080 FFF7FEFF 		bl	__aeabi_fmul
 1771 0084 FFF7FEFF 		bl	__aeabi_f2d
 1772 0088 CDE90601 		strd	r0, [sp, #24]
 1773 008c 8149     		ldr	r1, .L230
 1774 008e A86C     		ldr	r0, [r5, #72]	@ float
 1775 0090 FFF7FEFF 		bl	__aeabi_fmul
 1776 0094 FFF7FEFF 		bl	__aeabi_f2d
 1777 0098 CDE90401 		strd	r0, [sp, #16]
 1778 009c E86B     		ldr	r0, [r5, #60]	@ float
 1779 009e FFF7FEFF 		bl	__aeabi_f2d
 1780 00a2 CDE90201 		strd	r0, [sp, #8]
 1781 00a6 A86B     		ldr	r0, [r5, #56]	@ float
 1782 00a8 FFF7FEFF 		bl	__aeabi_f2d
 1783 00ac 5246     		mov	r2, r10
 1784 00ae CDE90001 		strd	r0, [sp]
 1785 00b2 5B46     		mov	r3, fp
 1786 00b4 4046     		mov	r0, r8
 1787 00b6 7849     		ldr	r1, .L230+4
 1788 00b8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1789 00bc 64E0     		b	.L184
 1790              	.L219:
 1791 00be CDF850E0 		str	lr, [sp, #80]
 1792 00c2 0CB0     		add	sp, sp, #48
 1793              		@ sp needed
 1794 00c4 BDE8F04D 		pop	{r4, r5, r6, r7, r8, r10, fp, lr}
 1795 00c8 FFF7FEBF 		b	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1796              	.L172:
 1797 00cc 4C21     		movs	r1, #76
 1798 00ce 1046     		mov	r0, r2
 1799 00d0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1800 00d4 0646     		mov	r6, r0
 1801 00d6 0028     		cmp	r0, #0
 1802 00d8 40F09680 		bne	.L224
 1803              	.L174:
 1804 00dc 5221     		movs	r1, #82
 1805 00de 2046     		mov	r0, r4
 1806 00e0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1807 00e4 0746     		mov	r7, r0
 1808 00e6 0028     		cmp	r0, #0
 1809 00e8 40F08880 		bne	.L225
 1810              	.L175:
 1811 00ec 4221     		movs	r1, #66
 1812 00ee 2046     		mov	r0, r4
 1813 00f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1814 00f4 0746     		mov	r7, r0
 1815 00f6 0028     		cmp	r0, #0
 1816 00f8 40F09780 		bne	.L226
 1817              	.L176:
 1818 00fc 5821     		movs	r1, #88
 1819 00fe 2046     		mov	r0, r4
 1820 0100 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1821 0104 0746     		mov	r7, r0
 1822 0106 0028     		cmp	r0, #0
 1823 0108 40F08980 		bne	.L227
 1824              	.L177:
ARM GAS  /tmp/ccArai7H.s 			page 33


 1825 010c 5921     		movs	r1, #89
 1826 010e 2046     		mov	r0, r4
 1827 0110 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1828 0114 0746     		mov	r7, r0
 1829 0116 0028     		cmp	r0, #0
 1830 0118 7BD1     		bne	.L228
 1831              	.L178:
 1832 011a 5A21     		movs	r1, #90
 1833 011c 2046     		mov	r0, r4
 1834 011e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1835 0122 0028     		cmp	r0, #0
 1836 0124 34D1     		bne	.L229
 1837 0126 4821     		movs	r1, #72
 1838 0128 2046     		mov	r0, r4
 1839 012a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1840 012e 0028     		cmp	r0, #0
 1841 0130 37D1     		bne	.L180
 1842 0132 002E     		cmp	r6, #0
 1843 0134 40D1     		bne	.L181
 1844 0136 286A     		ldr	r0, [r5, #32]	@ float
 1845 0138 FFF7FEFF 		bl	__aeabi_f2d
 1846 013c 8246     		mov	r10, r0
 1847 013e 286B     		ldr	r0, [r5, #48]	@ float
 1848 0140 8B46     		mov	fp, r1
 1849 0142 FFF7FEFF 		bl	__aeabi_f2d
 1850 0146 CDE90A01 		strd	r0, [sp, #40]
 1851 014a E86A     		ldr	r0, [r5, #44]	@ float
 1852 014c FFF7FEFF 		bl	__aeabi_f2d
 1853 0150 CDE90801 		strd	r0, [sp, #32]
 1854 0154 A86A     		ldr	r0, [r5, #40]	@ float
 1855 0156 FFF7FEFF 		bl	__aeabi_f2d
 1856 015a CDE90601 		strd	r0, [sp, #24]
 1857 015e 286C     		ldr	r0, [r5, #64]	@ float
 1858 0160 FFF7FEFF 		bl	__aeabi_f2d
 1859 0164 CDE90401 		strd	r0, [sp, #16]
 1860 0168 686C     		ldr	r0, [r5, #68]	@ float
 1861 016a FFF7FEFF 		bl	__aeabi_f2d
 1862 016e CDE90201 		strd	r0, [sp, #8]
 1863 0172 686A     		ldr	r0, [r5, #36]	@ float
 1864 0174 FFF7FEFF 		bl	__aeabi_f2d
 1865 0178 5246     		mov	r2, r10
 1866 017a CDE90001 		strd	r0, [sp]
 1867 017e 5B46     		mov	r3, fp
 1868 0180 4046     		mov	r0, r8
 1869 0182 4649     		ldr	r1, .L230+8
 1870 0184 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1871              	.L184:
 1872 0188 3046     		mov	r0, r6
 1873 018a 0CB0     		add	sp, sp, #48
 1874              		@ sp needed
 1875 018c BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 1876              	.L229:
 1877 0190 2046     		mov	r0, r4
 1878 0192 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1879 0196 4821     		movs	r1, #72
 1880 0198 2863     		str	r0, [r5, #48]	@ float
 1881 019a 2046     		mov	r0, r4
ARM GAS  /tmp/ccArai7H.s 			page 34


 1882 019c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1883 01a0 50B1     		cbz	r0, .L181
 1884              	.L180:
 1885 01a2 2046     		mov	r0, r4
 1886 01a4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1887 01a8 3D4B     		ldr	r3, .L230+12
 1888 01aa 0246     		mov	r2, r0
 1889 01ac 6864     		str	r0, [r5, #68]	@ float
 1890 01ae 0221     		movs	r1, #2
 1891 01b0 1868     		ldr	r0, [r3]
 1892 01b2 0023     		movs	r3, #0
 1893 01b4 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1894              	.L181:
 1895 01b8 0126     		movs	r6, #1
 1896 01ba 2846     		mov	r0, r5
 1897 01bc FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 1898 01c0 3046     		mov	r0, r6
 1899 01c2 0CB0     		add	sp, sp, #48
 1900              		@ sp needed
 1901 01c4 BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 1902              	.L223:
 1903 01c8 2046     		mov	r0, r4
 1904 01ca FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1905 01ce 3549     		ldr	r1, .L230+16
 1906 01d0 FFF7FEFF 		bl	__aeabi_fmul
 1907 01d4 4221     		movs	r1, #66
 1908 01d6 A864     		str	r0, [r5, #72]	@ float
 1909 01d8 2046     		mov	r0, r4
 1910 01da FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1911 01de 40B1     		cbz	r0, .L190
 1912              	.L189:
 1913 01e0 2046     		mov	r0, r4
 1914 01e2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1915 01e6 2F49     		ldr	r1, .L230+16
 1916 01e8 FFF7FEFF 		bl	__aeabi_fmul
 1917 01ec 0126     		movs	r6, #1
 1918 01ee E864     		str	r0, [r5, #76]	@ float
 1919 01f0 CAE7     		b	.L184
 1920              	.L190:
 1921 01f2 0126     		movs	r6, #1
 1922 01f4 3046     		mov	r0, r6
 1923 01f6 0CB0     		add	sp, sp, #48
 1924              		@ sp needed
 1925 01f8 BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 1926              	.L225:
 1927 01fc 2046     		mov	r0, r4
 1928 01fe FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1929 0202 3E46     		mov	r6, r7
 1930 0204 6862     		str	r0, [r5, #36]	@ float
 1931 0206 71E7     		b	.L175
 1932              	.L224:
 1933 0208 2046     		mov	r0, r4
 1934 020a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1935 020e 2862     		str	r0, [r5, #32]	@ float
 1936 0210 64E7     		b	.L174
 1937              	.L228:
 1938 0212 2046     		mov	r0, r4
ARM GAS  /tmp/ccArai7H.s 			page 35


 1939 0214 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1940 0218 3E46     		mov	r6, r7
 1941 021a E862     		str	r0, [r5, #44]	@ float
 1942 021c 7DE7     		b	.L178
 1943              	.L227:
 1944 021e 2046     		mov	r0, r4
 1945 0220 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1946 0224 3E46     		mov	r6, r7
 1947 0226 A862     		str	r0, [r5, #40]	@ float
 1948 0228 70E7     		b	.L177
 1949              	.L226:
 1950 022a 2046     		mov	r0, r4
 1951 022c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1952 0230 0023     		movs	r3, #0
 1953 0232 1B49     		ldr	r1, .L230+12
 1954 0234 00F10042 		add	r2, r0, #-2147483648
 1955 0238 0E68     		ldr	r6, [r1]
 1956 023a 2864     		str	r0, [r5, #64]	@ float
 1957 023c 1946     		mov	r1, r3
 1958 023e 3046     		mov	r0, r6
 1959 0240 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 1960 0244 2A6C     		ldr	r2, [r5, #64]
 1961 0246 3046     		mov	r0, r6
 1962 0248 02F10042 		add	r2, r2, #-2147483648
 1963 024c 0023     		movs	r3, #0
 1964 024e 0121     		movs	r1, #1
 1965 0250 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 1966 0254 0023     		movs	r3, #0
 1967 0256 3046     		mov	r0, r6
 1968 0258 1946     		mov	r1, r3
 1969 025a 2A6C     		ldr	r2, [r5, #64]	@ float
 1970 025c FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1971 0260 3046     		mov	r0, r6
 1972 0262 0023     		movs	r3, #0
 1973 0264 2A6C     		ldr	r2, [r5, #64]	@ float
 1974 0266 0121     		movs	r1, #1
 1975 0268 3E46     		mov	r6, r7
 1976 026a FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1977 026e 45E7     		b	.L176
 1978              	.L222:
 1979 0270 2046     		mov	r0, r4
 1980 0272 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1981 0276 3E46     		mov	r6, r7
 1982 0278 E863     		str	r0, [r5, #60]	@ float
 1983 027a E9E6     		b	.L187
 1984              	.L221:
 1985 027c 2046     		mov	r0, r4
 1986 027e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1987 0282 3E46     		mov	r6, r7
 1988 0284 A863     		str	r0, [r5, #56]	@ float
 1989 0286 DBE6     		b	.L186
 1990              	.L220:
 1991 0288 2046     		mov	r0, r4
 1992 028a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1993 028e 6863     		str	r0, [r5, #52]	@ float
 1994 0290 CEE6     		b	.L185
 1995              	.L231:
ARM GAS  /tmp/ccArai7H.s 			page 36


 1996 0292 00BF     		.align	2
 1997              	.L230:
 1998 0294 0000C842 		.word	1120403456
 1999 0298 64000000 		.word	.LC5
 2000 029c 00000000 		.word	.LC4
 2001 02a0 00000000 		.word	reprap
 2002 02a4 0AD7233C 		.word	1008981770
 2003              		.size	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21LinearDeltaKinema
 2004              		.global	__aeabi_i2f
 2005              		.section	.text._ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 2006              		.align	1
 2007              		.p2align 2,,3
 2008              		.global	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf
 2009              		.syntax unified
 2010              		.thumb
 2011              		.thumb_func
 2012              		.fpu softvfp
 2013              		.type	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 2014              	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 2015              		@ args = 8, pretend = 0, frame = 0
 2016              		@ frame_needed = 0, uses_anonymous_args = 0
 2017 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2018 0004 1546     		mov	r5, r2
 2019 0006 82B0     		sub	sp, sp, #8
 2020 0008 8046     		mov	r8, r0
 2021 000a 8868     		ldr	r0, [r1, #8]
 2022 000c 1F46     		mov	r7, r3
 2023 000e 0C46     		mov	r4, r1
 2024 0010 FFF7FEFF 		bl	__aeabi_i2f
 2025 0014 A968     		ldr	r1, [r5, #8]	@ float
 2026 0016 FFF7FEFF 		bl	__aeabi_fdiv
 2027 001a 8246     		mov	r10, r0
 2028 001c 6068     		ldr	r0, [r4, #4]
 2029 001e FFF7FEFF 		bl	__aeabi_i2f
 2030 0022 6968     		ldr	r1, [r5, #4]	@ float
 2031 0024 FFF7FEFF 		bl	__aeabi_fdiv
 2032 0028 8146     		mov	r9, r0
 2033 002a 2068     		ldr	r0, [r4]
 2034 002c FFF7FEFF 		bl	__aeabi_i2f
 2035 0030 2968     		ldr	r1, [r5]	@ float
 2036 0032 FFF7FEFF 		bl	__aeabi_fdiv
 2037 0036 0B9E     		ldr	r6, [sp, #44]
 2038 0038 0146     		mov	r1, r0
 2039 003a 5346     		mov	r3, r10
 2040 003c 4A46     		mov	r2, r9
 2041 003e 4046     		mov	r0, r8
 2042 0040 0096     		str	r6, [sp]
 2043 0042 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 2044 0046 032F     		cmp	r7, #3
 2045 0048 10D9     		bls	.L232
 2046 004a 04EB8707 		add	r7, r4, r7, lsl #2
 2047 004e 0835     		adds	r5, r5, #8
 2048 0050 0836     		adds	r6, r6, #8
 2049 0052 0C34     		adds	r4, r4, #12
 2050              	.L235:
 2051 0054 54F8040B 		ldr	r0, [r4], #4
 2052 0058 FFF7FEFF 		bl	__aeabi_i2f
ARM GAS  /tmp/ccArai7H.s 			page 37


 2053 005c 55F8041F 		ldr	r1, [r5, #4]!	@ float
 2054 0060 FFF7FEFF 		bl	__aeabi_fdiv
 2055 0064 BC42     		cmp	r4, r7
 2056 0066 46F8040F 		str	r0, [r6, #4]!	@ float
 2057 006a F3D1     		bne	.L235
 2058              	.L232:
 2059 006c 02B0     		add	sp, sp, #8
 2060              		@ sp needed
 2061 006e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2062              		.size	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21LinearDeltaKinematics
 2063 0072 00BF     		.section	.text._ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff,"ax",%progbits
 2064              		.align	1
 2065              		.p2align 2,,3
 2066              		.global	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff
 2067              		.syntax unified
 2068              		.thumb
 2069              		.thumb_func
 2070              		.fpu softvfp
 2071              		.type	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff, %function
 2072              	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff:
 2073              		@ args = 4, pretend = 0, frame = 368
 2074              		@ frame_needed = 0, uses_anonymous_args = 0
 2075 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2076 0004 0446     		mov	r4, r0
 2077 0006 D0F804B0 		ldr	fp, [r0, #4]	@ float
 2078 000a 90F80CA0 		ldrb	r10, [r0, #12]	@ zero_extendqisi2
 2079 000e 90F80DC0 		ldrb	ip, [r0, #13]	@ zero_extendqisi2
 2080 0012 90F80EE0 		ldrb	lr, [r0, #14]	@ zero_extendqisi2
 2081 0016 006A     		ldr	r0, [r0, #32]	@ float
 2082 0018 DFB0     		sub	sp, sp, #380
 2083 001a 8146     		mov	r9, r0
 2084 001c 04F13406 		add	r6, r4, #52
 2085 0020 0396     		str	r6, [sp, #12]
 2086 0022 A668     		ldr	r6, [r4, #8]	@ float
 2087 0024 04F12800 		add	r0, r4, #40
 2088 0028 0E96     		str	r6, [sp, #56]	@ float
 2089 002a 2669     		ldr	r6, [r4, #16]	@ float
 2090 002c 16AD     		add	r5, sp, #88
 2091 002e 1096     		str	r6, [sp, #64]	@ float
 2092 0030 6669     		ldr	r6, [r4, #20]	@ float
 2093 0032 D4F82480 		ldr	r8, [r4, #36]	@ float
 2094 0036 1196     		str	r6, [sp, #68]	@ float
 2095 0038 A669     		ldr	r6, [r4, #24]	@ float
 2096 003a 0491     		str	r1, [sp, #16]
 2097 003c 1296     		str	r6, [sp, #72]	@ float
 2098 003e E669     		ldr	r6, [r4, #28]	@ float
 2099 0040 0292     		str	r2, [sp, #8]	@ float
 2100 0042 0690     		str	r0, [sp, #24]
 2101 0044 CDF834B0 		str	fp, [sp, #52]	@ float
 2102 0048 07C8     		ldm	r0, {r0, r1, r2}
 2103 004a 8DF83CA0 		strb	r10, [sp, #60]
 2104 004e 85E80700 		stm	r5, {r0, r1, r2}
 2105 0052 8DF83DC0 		strb	ip, [sp, #61]
 2106 0056 8DF83EE0 		strb	lr, [sp, #62]
 2107 005a 1396     		str	r6, [sp, #76]	@ float
 2108 005c CDF81490 		str	r9, [sp, #20]	@ float
 2109 0060 CDF85090 		str	r9, [sp, #80]	@ float
ARM GAS  /tmp/ccArai7H.s 			page 38


 2110 0064 039D     		ldr	r5, [sp, #12]
 2111 0066 04F15006 		add	r6, r4, #80
 2112 006a 95E80700 		ldm	r5, {r0, r1, r2}
 2113 006e 19AD     		add	r5, sp, #100
 2114 0070 85E80700 		stm	r5, {r0, r1, r2}
 2115 0074 96E80700 		ldm	r6, {r0, r1, r2}
 2116 0078 0DF18009 		add	r9, sp, #128
 2117 007c 89E80700 		stm	r9, {r0, r1, r2}
 2118 0080 04F15C05 		add	r5, r4, #92
 2119 0084 0DF18C09 		add	r9, sp, #140
 2120 0088 95E80700 		ldm	r5, {r0, r1, r2}
 2121 008c 89E80700 		stm	r9, {r0, r1, r2}
 2122 0090 D4F84090 		ldr	r9, [r4, #64]	@ float
 2123 0094 A64F     		ldr	r7, .L258
 2124 0096 CDF87090 		str	r9, [sp, #112]	@ float
 2125 009a D4F84490 		ldr	r9, [r4, #68]	@ float
 2126 009e 226F     		ldr	r2, [r4, #112]	@ float
 2127 00a0 CDF87490 		str	r9, [sp, #116]	@ float
 2128 00a4 D4F84890 		ldr	r9, [r4, #72]	@ float
 2129 00a8 0C97     		str	r7, [sp, #48]
 2130 00aa CDF87890 		str	r9, [sp, #120]	@ float
 2131 00ae D4F84C90 		ldr	r9, [r4, #76]	@ float
 2132 00b2 CDF85480 		str	r8, [sp, #84]	@ float
 2133 00b6 CDF87C90 		str	r9, [sp, #124]	@ float
 2134 00ba D4F86890 		ldr	r9, [r4, #104]	@ float
 2135 00be 0796     		str	r6, [sp, #28]
 2136 00c0 CDF89890 		str	r9, [sp, #152]	@ float
 2137 00c4 D4F86C90 		ldr	r9, [r4, #108]	@ float
 2138 00c8 2892     		str	r2, [sp, #160]	@ float
 2139 00ca CDF89C90 		str	r9, [sp, #156]	@ float
 2140 00ce D4F87490 		ldr	r9, [r4, #116]	@ float
 2141 00d2 CDF8D8B0 		str	fp, [sp, #216]	@ float
 2142 00d6 CDF8A490 		str	r9, [sp, #164]	@ float
 2143 00da 9946     		mov	r9, r3
 2144 00dc A36F     		ldr	r3, [r4, #120]	@ float
 2145 00de 94F8A0B0 		ldrb	fp, [r4, #160]	@ zero_extendqisi2
 2146 00e2 2A93     		str	r3, [sp, #168]	@ float
 2147 00e4 A368     		ldr	r3, [r4, #8]	@ float
 2148 00e6 8DF8E0A0 		strb	r10, [sp, #224]
 2149 00ea 3793     		str	r3, [sp, #220]	@ float
 2150 00ec 2369     		ldr	r3, [r4, #16]	@ float
 2151 00ee 8DF8E1C0 		strb	ip, [sp, #225]
 2152 00f2 3993     		str	r3, [sp, #228]	@ float
 2153 00f4 6369     		ldr	r3, [r4, #20]	@ float
 2154 00f6 8DF8E2E0 		strb	lr, [sp, #226]
 2155 00fa 3A93     		str	r3, [sp, #232]	@ float
 2156 00fc A369     		ldr	r3, [r4, #24]	@ float
 2157 00fe 3597     		str	r7, [sp, #212]
 2158 0100 3B93     		str	r3, [sp, #236]	@ float
 2159 0102 E369     		ldr	r3, [r4, #28]	@ float
 2160 0104 0DF1FC0C 		add	ip, sp, #252
 2161 0108 3C93     		str	r3, [sp, #240]	@ float
 2162 010a E36F     		ldr	r3, [r4, #124]	@ float
 2163 010c 0DF5847E 		add	lr, sp, #264
 2164 0110 2B93     		str	r3, [sp, #172]	@ float
 2165 0112 D4F88030 		ldr	r3, [r4, #128]	@ float
 2166 0116 49AF     		add	r7, sp, #292
ARM GAS  /tmp/ccArai7H.s 			page 39


 2167 0118 2C93     		str	r3, [sp, #176]	@ float
 2168 011a D4F88430 		ldr	r3, [r4, #132]	@ float
 2169 011e 2D93     		str	r3, [sp, #180]	@ float
 2170 0120 D4F88830 		ldr	r3, [r4, #136]	@ float
 2171 0124 2E93     		str	r3, [sp, #184]	@ float
 2172 0126 D4F88C30 		ldr	r3, [r4, #140]	@ float
 2173 012a 2F93     		str	r3, [sp, #188]	@ float
 2174 012c D4F89030 		ldr	r3, [r4, #144]	@ float
 2175 0130 D4F84CA0 		ldr	r10, [r4, #76]	@ float
 2176 0134 3093     		str	r3, [sp, #192]	@ float
 2177 0136 D4F89430 		ldr	r3, [r4, #148]	@ float
 2178 013a 0499     		ldr	r1, [sp, #16]
 2179 013c 3193     		str	r3, [sp, #196]	@ float
 2180 013e D4F89830 		ldr	r3, [r4, #152]	@ float
 2181 0142 CDF820A1 		str	r10, [sp, #288]	@ float
 2182 0146 3293     		str	r3, [sp, #200]	@ float
 2183 0148 D4F89C30 		ldr	r3, [r4, #156]	@ float
 2184 014c A1F1030A 		sub	r10, r1, #3
 2185 0150 3393     		str	r3, [sp, #204]	@ float
 2186 0152 059B     		ldr	r3, [sp, #20]	@ float
 2187 0154 A16E     		ldr	r1, [r4, #104]	@ float
 2188 0156 3D93     		str	r3, [sp, #244]	@ float
 2189 0158 236C     		ldr	r3, [r4, #64]	@ float
 2190 015a 4F91     		str	r1, [sp, #316]	@ float
 2191 015c 4593     		str	r3, [sp, #276]	@ float
 2192 015e 636C     		ldr	r3, [r4, #68]	@ float
 2193 0160 E16E     		ldr	r1, [r4, #108]	@ float
 2194 0162 4693     		str	r3, [sp, #280]	@ float
 2195 0164 5192     		str	r2, [sp, #324]	@ float
 2196 0166 A36C     		ldr	r3, [r4, #72]	@ float
 2197 0168 069A     		ldr	r2, [sp, #24]
 2198 016a 4793     		str	r3, [sp, #284]	@ float
 2199 016c 5091     		str	r1, [sp, #320]	@ float
 2200 016e 8DF8D0B0 		strb	fp, [sp, #208]
 2201 0172 07CA     		ldm	r2, {r0, r1, r2}
 2202 0174 CDF8F880 		str	r8, [sp, #248]	@ float
 2203 0178 8CE80700 		stm	ip, {r0, r1, r2}
 2204 017c 0399     		ldr	r1, [sp, #12]
 2205 017e 4CAB     		add	r3, sp, #304
 2206 0180 07C9     		ldm	r1, {r0, r1, r2}
 2207 0182 8EE80700 		stm	lr, {r0, r1, r2}
 2208 0186 96E80700 		ldm	r6, {r0, r1, r2}
 2209 018a 87E80700 		stm	r7, {r0, r1, r2}
 2210 018e 95E80700 		ldm	r5, {r0, r1, r2}
 2211 0192 83E80700 		stm	r3, {r0, r1, r2}
 2212 0196 636F     		ldr	r3, [r4, #116]	@ float
 2213 0198 5293     		str	r3, [sp, #328]	@ float
 2214 019a A36F     		ldr	r3, [r4, #120]	@ float
 2215 019c 5393     		str	r3, [sp, #332]	@ float
 2216 019e E36F     		ldr	r3, [r4, #124]	@ float
 2217 01a0 5493     		str	r3, [sp, #336]	@ float
 2218 01a2 D4F88030 		ldr	r3, [r4, #128]	@ float
 2219 01a6 5593     		str	r3, [sp, #340]	@ float
 2220 01a8 D4F88430 		ldr	r3, [r4, #132]	@ float
 2221 01ac 5693     		str	r3, [sp, #344]	@ float
 2222 01ae D4F88830 		ldr	r3, [r4, #136]	@ float
 2223 01b2 5793     		str	r3, [sp, #348]	@ float
ARM GAS  /tmp/ccArai7H.s 			page 40


 2224 01b4 D4F88C30 		ldr	r3, [r4, #140]	@ float
 2225 01b8 5893     		str	r3, [sp, #352]	@ float
 2226 01ba D4F89030 		ldr	r3, [r4, #144]	@ float
 2227 01be 8DF874B1 		strb	fp, [sp, #372]
 2228 01c2 5993     		str	r3, [sp, #356]	@ float
 2229 01c4 D4F89430 		ldr	r3, [r4, #148]	@ float
 2230 01c8 5A93     		str	r3, [sp, #360]	@ float
 2231 01ca D4F89830 		ldr	r3, [r4, #152]	@ float
 2232 01ce 5B93     		str	r3, [sp, #364]	@ float
 2233 01d0 D4F89C30 		ldr	r3, [r4, #156]	@ float
 2234 01d4 5C93     		str	r3, [sp, #368]	@ float
 2235 01d6 BAF1030F 		cmp	r10, #3
 2236 01da 5BD8     		bhi	.L238
 2237 01dc DFE80AF0 		tbb	[pc, r10]
 2238              	.L240:
 2239 01e0 37       		.byte	(.L239-.L240)/2
 2240 01e1 26       		.byte	(.L241-.L240)/2
 2241 01e2 02       		.byte	(.L242-.L240)/2
 2242 01e3 48       		.byte	(.L243-.L240)/2
 2243              		.p2align 1
 2244              	.L242:
 2245 01e4 1798     		ldr	r0, [sp, #92]	@ float
 2246 01e6 5349     		ldr	r1, .L258+4
 2247 01e8 FFF7FEFF 		bl	__aeabi_fadd
 2248 01ec 5149     		ldr	r1, .L258+4
 2249 01ee 1790     		str	r0, [sp, #92]	@ float
 2250 01f0 4098     		ldr	r0, [sp, #256]	@ float
 2251 01f2 FFF7FEFF 		bl	__aeabi_fsub
 2252 01f6 4090     		str	r0, [sp, #256]	@ float
 2253 01f8 0CA8     		add	r0, sp, #48
 2254 01fa FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2255 01fe 35A8     		add	r0, sp, #212
 2256 0200 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2257              	.L255:
 2258 0204 09AD     		add	r5, sp, #36
 2259 0206 689B     		ldr	r3, [sp, #416]	@ float
 2260 0208 0CA8     		add	r0, sp, #48
 2261 020a 0095     		str	r5, [sp]
 2262 020c 4A46     		mov	r2, r9
 2263 020e 0299     		ldr	r1, [sp, #8]	@ float
 2264 0210 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 2265 0214 049B     		ldr	r3, [sp, #16]
 2266 0216 072B     		cmp	r3, #7
 2267 0218 6DD1     		bne	.L250
 2268 021a 2868     		ldr	r0, [r5]
 2269 021c 216C     		ldr	r1, [r4, #64]	@ float
 2270 021e 00F10040 		add	r0, r0, #-2147483648
 2271 0222 FFF7FEFF 		bl	__aeabi_fdiv
 2272 0226 5FB0     		add	sp, sp, #380
 2273              		@ sp needed
 2274 0228 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2275              	.L241:
 2276 022c 1698     		ldr	r0, [sp, #88]	@ float
 2277 022e 4149     		ldr	r1, .L258+4
 2278 0230 FFF7FEFF 		bl	__aeabi_fadd
 2279 0234 3F49     		ldr	r1, .L258+4
 2280 0236 1690     		str	r0, [sp, #88]	@ float
ARM GAS  /tmp/ccArai7H.s 			page 41


 2281 0238 3F98     		ldr	r0, [sp, #252]	@ float
 2282 023a FFF7FEFF 		bl	__aeabi_fsub
 2283 023e 3F90     		str	r0, [sp, #252]	@ float
 2284 0240 0CA8     		add	r0, sp, #48
 2285 0242 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2286 0246 35A8     		add	r0, sp, #212
 2287 0248 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2288 024c DAE7     		b	.L255
 2289              	.L239:
 2290 024e 3949     		ldr	r1, .L258+4
 2291 0250 4046     		mov	r0, r8
 2292 0252 FFF7FEFF 		bl	__aeabi_fadd
 2293 0256 3749     		ldr	r1, .L258+4
 2294 0258 1590     		str	r0, [sp, #84]	@ float
 2295 025a 4046     		mov	r0, r8
 2296 025c FFF7FEFF 		bl	__aeabi_fsub
 2297 0260 3E90     		str	r0, [sp, #248]	@ float
 2298 0262 0CA8     		add	r0, sp, #48
 2299 0264 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2300 0268 35A8     		add	r0, sp, #212
 2301 026a FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2302 026e C9E7     		b	.L255
 2303              	.L243:
 2304 0270 059D     		ldr	r5, [sp, #20]	@ float
 2305 0272 3049     		ldr	r1, .L258+4
 2306 0274 2846     		mov	r0, r5
 2307 0276 FFF7FEFF 		bl	__aeabi_fadd
 2308 027a 2E49     		ldr	r1, .L258+4
 2309 027c 1490     		str	r0, [sp, #80]	@ float
 2310 027e 2846     		mov	r0, r5
 2311 0280 FFF7FEFF 		bl	__aeabi_fsub
 2312 0284 3D90     		str	r0, [sp, #244]	@ float
 2313 0286 0CA8     		add	r0, sp, #48
 2314 0288 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2315 028c 35A8     		add	r0, sp, #212
 2316 028e FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2317 0292 B7E7     		b	.L255
 2318              	.L238:
 2319 0294 049B     		ldr	r3, [sp, #16]
 2320 0296 002B     		cmp	r3, #0
 2321 0298 39D1     		bne	.L245
 2322 029a 2649     		ldr	r1, .L258+4
 2323 029c 0298     		ldr	r0, [sp, #8]	@ float
 2324 029e FFF7FEFF 		bl	__aeabi_fadd
 2325 02a2 09AD     		add	r5, sp, #36
 2326 02a4 0146     		mov	r1, r0
 2327 02a6 0095     		str	r5, [sp]
 2328 02a8 0CA8     		add	r0, sp, #48
 2329 02aa 689B     		ldr	r3, [sp, #416]	@ float
 2330 02ac 4A46     		mov	r2, r9
 2331 02ae FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 2332              	.L246:
 2333 02b2 049B     		ldr	r3, [sp, #16]
 2334 02b4 AC68     		ldr	r4, [r5, #8]	@ float
 2335 02b6 ABB9     		cbnz	r3, .L248
 2336 02b8 0298     		ldr	r0, [sp, #8]	@ float
 2337 02ba 1E49     		ldr	r1, .L258+4
ARM GAS  /tmp/ccArai7H.s 			page 42


 2338 02bc FFF7FEFF 		bl	__aeabi_fsub
 2339 02c0 0290     		str	r0, [sp, #8]	@ float
 2340              	.L252:
 2341 02c2 4A46     		mov	r2, r9
 2342 02c4 689B     		ldr	r3, [sp, #416]	@ float
 2343 02c6 0299     		ldr	r1, [sp, #8]	@ float
 2344 02c8 35A8     		add	r0, sp, #212
 2345 02ca 0095     		str	r5, [sp]
 2346 02cc FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 2347 02d0 A968     		ldr	r1, [r5, #8]	@ float
 2348 02d2 2046     		mov	r0, r4
 2349 02d4 FFF7FEFF 		bl	__aeabi_fsub
 2350 02d8 1749     		ldr	r1, .L258+8
 2351 02da FFF7FEFF 		bl	__aeabi_fdiv
 2352 02de 5FB0     		add	sp, sp, #380
 2353              		@ sp needed
 2354 02e0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2355              	.L248:
 2356 02e4 049B     		ldr	r3, [sp, #16]
 2357 02e6 012B     		cmp	r3, #1
 2358 02e8 28D1     		bne	.L253
 2359              	.L256:
 2360 02ea 4846     		mov	r0, r9
 2361 02ec 1149     		ldr	r1, .L258+4
 2362 02ee FFF7FEFF 		bl	__aeabi_fsub
 2363 02f2 8146     		mov	r9, r0
 2364 02f4 E5E7     		b	.L252
 2365              	.L250:
 2366 02f6 049B     		ldr	r3, [sp, #16]
 2367 02f8 082B     		cmp	r3, #8
 2368 02fa DAD1     		bne	.L246
 2369 02fc 6868     		ldr	r0, [r5, #4]
 2370 02fe 216C     		ldr	r1, [r4, #64]	@ float
 2371 0300 00F10040 		add	r0, r0, #-2147483648
 2372 0304 FFF7FEFF 		bl	__aeabi_fdiv
 2373 0308 5FB0     		add	sp, sp, #380
 2374              		@ sp needed
 2375 030a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2376              	.L245:
 2377 030e 049B     		ldr	r3, [sp, #16]
 2378 0310 012B     		cmp	r3, #1
 2379 0312 1CD1     		bne	.L247
 2380 0314 0749     		ldr	r1, .L258+4
 2381 0316 4846     		mov	r0, r9
 2382 0318 FFF7FEFF 		bl	__aeabi_fadd
 2383 031c 09AD     		add	r5, sp, #36
 2384 031e 0246     		mov	r2, r0
 2385 0320 0095     		str	r5, [sp]
 2386 0322 0CA8     		add	r0, sp, #48
 2387 0324 689B     		ldr	r3, [sp, #416]	@ float
 2388 0326 0299     		ldr	r1, [sp, #8]	@ float
 2389 0328 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 2390 032c AC68     		ldr	r4, [r5, #8]	@ float
 2391 032e DCE7     		b	.L256
 2392              	.L259:
 2393              		.align	2
 2394              	.L258:
ARM GAS  /tmp/ccArai7H.s 			page 43


 2395 0330 08000000 		.word	.LANCHOR0+8
 2396 0334 CDCC4C3E 		.word	1045220557
 2397 0338 CDCCCC3E 		.word	1053609165
 2398              	.L253:
 2399 033c 049B     		ldr	r3, [sp, #16]
 2400 033e 022B     		cmp	r3, #2
 2401 0340 BFD1     		bne	.L252
 2402              	.L249:
 2403 0342 6898     		ldr	r0, [sp, #416]	@ float
 2404 0344 0B49     		ldr	r1, .L260
 2405 0346 FFF7FEFF 		bl	__aeabi_fsub
 2406 034a 6890     		str	r0, [sp, #416]	@ float
 2407 034c B9E7     		b	.L252
 2408              	.L247:
 2409 034e 049B     		ldr	r3, [sp, #16]
 2410 0350 022B     		cmp	r3, #2
 2411 0352 7FF457AF 		bne	.L255
 2412 0356 0749     		ldr	r1, .L260
 2413 0358 6898     		ldr	r0, [sp, #416]	@ float
 2414 035a FFF7FEFF 		bl	__aeabi_fadd
 2415 035e 09AD     		add	r5, sp, #36
 2416 0360 0346     		mov	r3, r0
 2417 0362 0095     		str	r5, [sp]
 2418 0364 0CA8     		add	r0, sp, #48
 2419 0366 4A46     		mov	r2, r9
 2420 0368 0299     		ldr	r1, [sp, #8]	@ float
 2421 036a FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 2422 036e AC68     		ldr	r4, [r5, #8]	@ float
 2423 0370 E7E7     		b	.L249
 2424              	.L261:
 2425 0372 00BF     		.align	2
 2426              	.L260:
 2427 0374 CDCC4C3E 		.word	1045220557
 2428              		.size	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff, .-_ZNK21LinearDeltaKinematics17ComputeD
 2429              		.section	.text._ZN21LinearDeltaKinematics6AdjustEjPKf,"ax",%progbits
 2430              		.align	1
 2431              		.p2align 2,,3
 2432              		.global	_ZN21LinearDeltaKinematics6AdjustEjPKf
 2433              		.syntax unified
 2434              		.thumb
 2435              		.thumb_func
 2436              		.fpu softvfp
 2437              		.type	_ZN21LinearDeltaKinematics6AdjustEjPKf, %function
 2438              	_ZN21LinearDeltaKinematics6AdjustEjPKf:
 2439              		@ args = 0, pretend = 0, frame = 8
 2440              		@ frame_needed = 0, uses_anonymous_args = 0
 2441 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2442 0004 C36E     		ldr	r3, [r0, #108]	@ float
 2443 0006 466B     		ldr	r6, [r0, #52]	@ float
 2444 0008 83B0     		sub	sp, sp, #12
 2445 000a 0446     		mov	r4, r0
 2446 000c 8846     		mov	r8, r1
 2447 000e 1846     		mov	r0, r3
 2448 0010 3146     		mov	r1, r6
 2449 0012 1546     		mov	r5, r2
 2450 0014 0193     		str	r3, [sp, #4]
 2451 0016 FFF7FEFF 		bl	__aeabi_fadd
ARM GAS  /tmp/ccArai7H.s 			page 44


 2452 001a 2968     		ldr	r1, [r5]	@ float
 2453 001c 8146     		mov	r9, r0
 2454 001e 3046     		mov	r0, r6
 2455 0020 FFF7FEFF 		bl	__aeabi_fadd
 2456 0024 6063     		str	r0, [r4, #52]	@ float
 2457 0026 6968     		ldr	r1, [r5, #4]	@ float
 2458 0028 8246     		mov	r10, r0
 2459 002a A06B     		ldr	r0, [r4, #56]	@ float
 2460 002c FFF7FEFF 		bl	__aeabi_fadd
 2461 0030 A063     		str	r0, [r4, #56]	@ float
 2462 0032 A968     		ldr	r1, [r5, #8]	@ float
 2463 0034 0746     		mov	r7, r0
 2464 0036 E06B     		ldr	r0, [r4, #60]	@ float
 2465 0038 FFF7FEFF 		bl	__aeabi_fadd
 2466 003c 8346     		mov	fp, r0
 2467 003e 3946     		mov	r1, r7
 2468 0040 5046     		mov	r0, r10
 2469 0042 FFF7FEFF 		bl	__aeabi_fadd
 2470 0046 5946     		mov	r1, fp
 2471 0048 FFF7FEFF 		bl	__aeabi_fadd
 2472 004c 4549     		ldr	r1, .L280
 2473 004e FFF7FEFF 		bl	__aeabi_fdiv
 2474 0052 0646     		mov	r6, r0
 2475 0054 0146     		mov	r1, r0
 2476 0056 5046     		mov	r0, r10
 2477 0058 FFF7FEFF 		bl	__aeabi_fsub
 2478 005c 3146     		mov	r1, r6
 2479 005e 6063     		str	r0, [r4, #52]	@ float
 2480 0060 8246     		mov	r10, r0
 2481 0062 3846     		mov	r0, r7
 2482 0064 FFF7FEFF 		bl	__aeabi_fsub
 2483 0068 3146     		mov	r1, r6
 2484 006a A063     		str	r0, [r4, #56]	@ float
 2485 006c 5846     		mov	r0, fp
 2486 006e FFF7FEFF 		bl	__aeabi_fsub
 2487 0072 616C     		ldr	r1, [r4, #68]	@ float
 2488 0074 E063     		str	r0, [r4, #60]	@ float
 2489 0076 3046     		mov	r0, r6
 2490 0078 FFF7FEFF 		bl	__aeabi_fadd
 2491 007c 019B     		ldr	r3, [sp, #4]
 2492 007e 6064     		str	r0, [r4, #68]	@ float
 2493 0080 0746     		mov	r7, r0
 2494 0082 1946     		mov	r1, r3
 2495 0084 3046     		mov	r0, r6
 2496 0086 FFF7FEFF 		bl	__aeabi_fadd
 2497 008a B8F1030F 		cmp	r8, #3
 2498 008e E066     		str	r0, [r4, #108]	@ float
 2499 0090 39D9     		bls	.L273
 2500 0092 E968     		ldr	r1, [r5, #12]	@ float
 2501 0094 606A     		ldr	r0, [r4, #36]	@ float
 2502 0096 FFF7FEFF 		bl	__aeabi_fadd
 2503 009a B8F1050F 		cmp	r8, #5
 2504 009e 6062     		str	r0, [r4, #36]	@ float
 2505 00a0 12D9     		bls	.L265
 2506 00a2 2969     		ldr	r1, [r5, #16]	@ float
 2507 00a4 A06A     		ldr	r0, [r4, #40]	@ float
 2508 00a6 FFF7FEFF 		bl	__aeabi_fadd
ARM GAS  /tmp/ccArai7H.s 			page 45


 2509 00aa A062     		str	r0, [r4, #40]	@ float
 2510 00ac 6969     		ldr	r1, [r5, #20]	@ float
 2511 00ae E06A     		ldr	r0, [r4, #44]	@ float
 2512 00b0 FFF7FEFF 		bl	__aeabi_fadd
 2513 00b4 B8F1070F 		cmp	r8, #7
 2514 00b8 E062     		str	r0, [r4, #44]	@ float
 2515 00ba 4CD0     		beq	.L266
 2516 00bc B8F1090F 		cmp	r8, #9
 2517 00c0 23D0     		beq	.L278
 2518 00c2 B8F1080F 		cmp	r8, #8
 2519 00c6 39D0     		beq	.L279
 2520              	.L265:
 2521 00c8 2046     		mov	r0, r4
 2522 00ca FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6RecalcEv
 2523 00ce 676C     		ldr	r7, [r4, #68]	@ float
 2524 00d0 E66E     		ldr	r6, [r4, #108]	@ float
 2525 00d2 D4F834A0 		ldr	r10, [r4, #52]	@ float
 2526              	.L263:
 2527 00d6 5146     		mov	r1, r10
 2528 00d8 3046     		mov	r0, r6
 2529 00da FFF7FEFF 		bl	__aeabi_fadd
 2530 00de 4946     		mov	r1, r9
 2531 00e0 FFF7FEFF 		bl	__aeabi_fsub
 2532 00e4 2968     		ldr	r1, [r5]	@ float
 2533 00e6 FFF7FEFF 		bl	__aeabi_fsub
 2534 00ea 0546     		mov	r5, r0
 2535 00ec 0146     		mov	r1, r0
 2536 00ee 3846     		mov	r0, r7
 2537 00f0 FFF7FEFF 		bl	__aeabi_fsub
 2538 00f4 2946     		mov	r1, r5
 2539 00f6 6064     		str	r0, [r4, #68]	@ float
 2540 00f8 3046     		mov	r0, r6
 2541 00fa FFF7FEFF 		bl	__aeabi_fsub
 2542 00fe E066     		str	r0, [r4, #108]	@ float
 2543 0100 03B0     		add	sp, sp, #12
 2544              		@ sp needed
 2545 0102 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2546              	.L273:
 2547 0106 0646     		mov	r6, r0
 2548 0108 E5E7     		b	.L263
 2549              	.L278:
 2550 010a A969     		ldr	r1, [r5, #24]	@ float
 2551 010c 206A     		ldr	r0, [r4, #32]	@ float
 2552 010e FFF7FEFF 		bl	__aeabi_fadd
 2553 0112 266C     		ldr	r6, [r4, #64]	@ float
 2554 0114 2062     		str	r0, [r4, #32]	@ float
 2555 0116 E869     		ldr	r0, [r5, #28]	@ float
 2556 0118 3146     		mov	r1, r6
 2557 011a FFF7FEFF 		bl	__aeabi_fdiv
 2558 011e 0146     		mov	r1, r0
 2559 0120 A06C     		ldr	r0, [r4, #72]	@ float
 2560 0122 FFF7FEFF 		bl	__aeabi_fadd
 2561 0126 3146     		mov	r1, r6
 2562 0128 A064     		str	r0, [r4, #72]	@ float
 2563 012a 286A     		ldr	r0, [r5, #32]	@ float
 2564              	.L275:
 2565 012c FFF7FEFF 		bl	__aeabi_fdiv
ARM GAS  /tmp/ccArai7H.s 			page 46


 2566 0130 0146     		mov	r1, r0
 2567 0132 E06C     		ldr	r0, [r4, #76]	@ float
 2568 0134 FFF7FEFF 		bl	__aeabi_fadd
 2569 0138 E064     		str	r0, [r4, #76]	@ float
 2570 013a C5E7     		b	.L265
 2571              	.L279:
 2572 013c 266C     		ldr	r6, [r4, #64]	@ float
 2573 013e A869     		ldr	r0, [r5, #24]	@ float
 2574 0140 3146     		mov	r1, r6
 2575 0142 FFF7FEFF 		bl	__aeabi_fdiv
 2576 0146 0146     		mov	r1, r0
 2577 0148 A06C     		ldr	r0, [r4, #72]	@ float
 2578 014a FFF7FEFF 		bl	__aeabi_fadd
 2579 014e A064     		str	r0, [r4, #72]	@ float
 2580 0150 3146     		mov	r1, r6
 2581 0152 E869     		ldr	r0, [r5, #28]	@ float
 2582 0154 EAE7     		b	.L275
 2583              	.L266:
 2584 0156 A969     		ldr	r1, [r5, #24]	@ float
 2585 0158 206A     		ldr	r0, [r4, #32]	@ float
 2586 015a FFF7FEFF 		bl	__aeabi_fadd
 2587 015e 2062     		str	r0, [r4, #32]	@ float
 2588 0160 B2E7     		b	.L265
 2589              	.L281:
 2590 0162 00BF     		.align	2
 2591              	.L280:
 2592 0164 00004040 		.word	1077936128
 2593              		.size	_ZN21LinearDeltaKinematics6AdjustEjPKf, .-_ZN21LinearDeltaKinematics6AdjustEjPKf
 2594              		.section	.text._ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2595              		.align	1
 2596              		.p2align 2,,3
 2597              		.global	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef
 2598              		.syntax unified
 2599              		.thumb
 2600              		.thumb_func
 2601              		.fpu softvfp
 2602              		.type	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef, %function
 2603              	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef:
 2604              		@ args = 0, pretend = 0, frame = 0
 2605              		@ frame_needed = 0, uses_anonymous_args = 0
 2606 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2607 0002 0446     		mov	r4, r0
 2608 0004 95B0     		sub	sp, sp, #84
 2609 0006 406B     		ldr	r0, [r0, #52]	@ float
 2610 0008 0D46     		mov	r5, r1
 2611 000a FFF7FEFF 		bl	__aeabi_f2d
 2612 000e 0646     		mov	r6, r0
 2613 0010 0F46     		mov	r7, r1
 2614 0012 E06C     		ldr	r0, [r4, #76]	@ float
 2615 0014 1F49     		ldr	r1, .L284
 2616 0016 FFF7FEFF 		bl	__aeabi_fmul
 2617 001a FFF7FEFF 		bl	__aeabi_f2d
 2618 001e CDE91201 		strd	r0, [sp, #72]
 2619 0022 1C49     		ldr	r1, .L284
 2620 0024 A06C     		ldr	r0, [r4, #72]	@ float
 2621 0026 FFF7FEFF 		bl	__aeabi_fmul
 2622 002a FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccArai7H.s 			page 47


 2623 002e CDE91001 		strd	r0, [sp, #64]
 2624 0032 206B     		ldr	r0, [r4, #48]	@ float
 2625 0034 FFF7FEFF 		bl	__aeabi_f2d
 2626 0038 CDE90E01 		strd	r0, [sp, #56]
 2627 003c E06A     		ldr	r0, [r4, #44]	@ float
 2628 003e FFF7FEFF 		bl	__aeabi_f2d
 2629 0042 CDE90C01 		strd	r0, [sp, #48]
 2630 0046 A06A     		ldr	r0, [r4, #40]	@ float
 2631 0048 FFF7FEFF 		bl	__aeabi_f2d
 2632 004c CDE90A01 		strd	r0, [sp, #40]
 2633 0050 606A     		ldr	r0, [r4, #36]	@ float
 2634 0052 FFF7FEFF 		bl	__aeabi_f2d
 2635 0056 CDE90801 		strd	r0, [sp, #32]
 2636 005a 206A     		ldr	r0, [r4, #32]	@ float
 2637 005c FFF7FEFF 		bl	__aeabi_f2d
 2638 0060 CDE90601 		strd	r0, [sp, #24]
 2639 0064 606C     		ldr	r0, [r4, #68]	@ float
 2640 0066 FFF7FEFF 		bl	__aeabi_f2d
 2641 006a CDE90401 		strd	r0, [sp, #16]
 2642 006e E06B     		ldr	r0, [r4, #60]	@ float
 2643 0070 FFF7FEFF 		bl	__aeabi_f2d
 2644 0074 CDE90201 		strd	r0, [sp, #8]
 2645 0078 A06B     		ldr	r0, [r4, #56]	@ float
 2646 007a FFF7FEFF 		bl	__aeabi_f2d
 2647 007e 3246     		mov	r2, r6
 2648 0080 CDE90001 		strd	r0, [sp]
 2649 0084 3B46     		mov	r3, r7
 2650 0086 2846     		mov	r0, r5
 2651 0088 0349     		ldr	r1, .L284+4
 2652 008a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2653 008e 15B0     		add	sp, sp, #84
 2654              		@ sp needed
 2655 0090 F0BD     		pop	{r4, r5, r6, r7, pc}
 2656              	.L285:
 2657 0092 00BF     		.align	2
 2658              	.L284:
 2659 0094 0000C842 		.word	1120403456
 2660 0098 00000000 		.word	.LC6
 2661              		.size	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef, .-_ZNK21LinearDeltaKinematics15Pr
 2662              		.section	.text._ZN11FixedMatrixIfLj9ELj10EE11GaussJordanEPfj,"axG",%progbits,_ZN11FixedMatrixIfLj9
 2663              		.align	1
 2664              		.p2align 2,,3
 2665              		.weak	_ZN11FixedMatrixIfLj9ELj10EE11GaussJordanEPfj
 2666              		.syntax unified
 2667              		.thumb
 2668              		.thumb_func
 2669              		.fpu softvfp
 2670              		.type	_ZN11FixedMatrixIfLj9ELj10EE11GaussJordanEPfj, %function
 2671              	_ZN11FixedMatrixIfLj9ELj10EE11GaussJordanEPfj:
 2672              		@ args = 0, pretend = 0, frame = 56
 2673              		@ frame_needed = 0, uses_anonymous_args = 0
 2674 0000 002A     		cmp	r2, #0
 2675 0002 00F0E481 		beq	.L351
 2676 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2677 000a 1746     		mov	r7, r2
 2678 000c 0246     		mov	r2, r0
 2679 000e 8FB0     		sub	sp, sp, #60
ARM GAS  /tmp/ccArai7H.s 			page 48


 2680 0010 0432     		adds	r2, r2, #4
 2681 0012 0C92     		str	r2, [sp, #48]
 2682 0014 0A92     		str	r2, [sp, #40]
 2683 0016 0246     		mov	r2, r0
 2684 0018 0023     		movs	r3, #0
 2685 001a 52F82C9B 		ldr	r9, [r2], #44
 2686 001e DFF8B0A3 		ldr	r10, .L366
 2687 0022 D9F80860 		ldr	r6, [r9, #8]
 2688 0026 CDF80890 		str	r9, [sp, #8]
 2689 002a 5645     		cmp	r6, r10
 2690 002c 0D91     		str	r1, [sp, #52]
 2691 002e 0090     		str	r0, [sp]
 2692 0030 0B93     		str	r3, [sp, #44]
 2693 0032 0193     		str	r3, [sp, #4]
 2694 0034 0992     		str	r2, [sp, #36]
 2695 0036 B946     		mov	r9, r7
 2696 0038 40F05A81 		bne	.L288
 2697              	.L363:
 2698 003c 099B     		ldr	r3, [sp, #36]
 2699 003e A3F12800 		sub	r0, r3, #40
 2700              	.L289:
 2701 0042 019B     		ldr	r3, [sp, #4]
 2702 0044 0568     		ldr	r5, [r0]
 2703 0046 0133     		adds	r3, r3, #1
 2704 0048 9945     		cmp	r9, r3
 2705 004a 0693     		str	r3, [sp, #24]
 2706 004c 25F00045 		bic	r5, r5, #-2147483648
 2707 0050 40F28980 		bls	.L290
 2708 0054 099A     		ldr	r2, [sp, #36]
 2709 0056 9B46     		mov	fp, r3
 2710 0058 DB07     		lsls	r3, r3, #31
 2711 005a CDF82090 		str	r9, [sp, #32]
 2712 005e 6FF02708 		mvn	r8, #39
 2713 0062 0392     		str	r2, [sp, #12]
 2714 0064 0493     		str	r3, [sp, #16]
 2715 0066 DDF80090 		ldr	r9, [sp]
 2716 006a 0DE0     		b	.L304
 2717              	.L293:
 2718 006c 039B     		ldr	r3, [sp, #12]
 2719 006e 0BF1010B 		add	fp, fp, #1
 2720 0072 2833     		adds	r3, r3, #40
 2721 0074 0393     		str	r3, [sp, #12]
 2722 0076 049B     		ldr	r3, [sp, #16]
 2723 0078 A8F12808 		sub	r8, r8, #40
 2724 007c 03F10043 		add	r3, r3, #-2147483648
 2725 0080 0493     		str	r3, [sp, #16]
 2726 0082 089B     		ldr	r3, [sp, #32]
 2727 0084 5B45     		cmp	r3, fp
 2728 0086 6DD9     		bls	.L355
 2729              	.L304:
 2730 0088 5645     		cmp	r6, r10
 2731 008a 62D1     		bne	.L291
 2732 008c 0398     		ldr	r0, [sp, #12]
 2733              	.L292:
 2734 008e 0368     		ldr	r3, [r0]
 2735 0090 2946     		mov	r1, r5
 2736 0092 23F00043 		bic	r3, r3, #-2147483648
ARM GAS  /tmp/ccArai7H.s 			page 49


 2737 0096 1846     		mov	r0, r3
 2738 0098 0793     		str	r3, [sp, #28]	@ float
 2739 009a FFF7FEFF 		bl	__aeabi_fcmpgt
 2740 009e 0028     		cmp	r0, #0
 2741 00a0 E4D0     		beq	.L293
 2742 00a2 019A     		ldr	r2, [sp, #4]
 2743 00a4 9345     		cmp	fp, r2
 2744 00a6 00F04D81 		beq	.L342
 2745 00aa 092A     		cmp	r2, #9
 2746 00ac 00F24A81 		bhi	.L342
 2747 00b0 049B     		ldr	r3, [sp, #16]
 2748 00b2 1746     		mov	r7, r2
 2749 00b4 9B00     		lsls	r3, r3, #2
 2750 00b6 039D     		ldr	r5, [sp, #12]
 2751 00b8 0593     		str	r3, [sp, #20]
 2752 00ba 029A     		ldr	r2, [sp, #8]
 2753 00bc 16E0     		b	.L303
 2754              	.L357:
 2755 00be 08EB0500 		add	r0, r8, r5
 2756 00c2 5645     		cmp	r6, r10
 2757 00c4 0468     		ldr	r4, [r0]	@ float
 2758 00c6 1DD1     		bne	.L297
 2759              	.L358:
 2760 00c8 5645     		cmp	r6, r10
 2761 00ca 08EB0503 		add	r3, r8, r5
 2762 00ce 23D1     		bne	.L299
 2763              	.L359:
 2764 00d0 0599     		ldr	r1, [sp, #20]
 2765 00d2 5645     		cmp	r6, r10
 2766 00d4 01EB0500 		add	r0, r1, r5
 2767 00d8 0168     		ldr	r1, [r0]	@ float
 2768 00da 1960     		str	r1, [r3]	@ float
 2769 00dc 29D1     		bne	.L301
 2770              	.L360:
 2771 00de 2846     		mov	r0, r5
 2772 00e0 0137     		adds	r7, r7, #1
 2773 00e2 0A2F     		cmp	r7, #10
 2774 00e4 0460     		str	r4, [r0]	@ float
 2775 00e6 05F10405 		add	r5, r5, #4
 2776 00ea 2FD0     		beq	.L356
 2777              	.L303:
 2778 00ec 5645     		cmp	r6, r10
 2779 00ee E6D0     		beq	.L357
 2780 00f0 3A46     		mov	r2, r7
 2781 00f2 0199     		ldr	r1, [sp, #4]
 2782 00f4 4846     		mov	r0, r9
 2783 00f6 B047     		blx	r6
 2784 00f8 D9F80020 		ldr	r2, [r9]
 2785 00fc 0468     		ldr	r4, [r0]	@ float
 2786 00fe 9668     		ldr	r6, [r2, #8]
 2787 0100 5645     		cmp	r6, r10
 2788 0102 E1D0     		beq	.L358
 2789              	.L297:
 2790 0104 3A46     		mov	r2, r7
 2791 0106 0199     		ldr	r1, [sp, #4]
 2792 0108 4846     		mov	r0, r9
 2793 010a B047     		blx	r6
ARM GAS  /tmp/ccArai7H.s 			page 50


 2794 010c D9F80020 		ldr	r2, [r9]
 2795 0110 0346     		mov	r3, r0
 2796 0112 9668     		ldr	r6, [r2, #8]
 2797 0114 5645     		cmp	r6, r10
 2798 0116 DBD0     		beq	.L359
 2799              	.L299:
 2800 0118 0293     		str	r3, [sp, #8]
 2801 011a 3A46     		mov	r2, r7
 2802 011c 5946     		mov	r1, fp
 2803 011e 4846     		mov	r0, r9
 2804 0120 B047     		blx	r6
 2805 0122 D9F80020 		ldr	r2, [r9]
 2806 0126 029B     		ldr	r3, [sp, #8]
 2807 0128 9668     		ldr	r6, [r2, #8]
 2808 012a 0168     		ldr	r1, [r0]	@ float
 2809 012c 5645     		cmp	r6, r10
 2810 012e 1960     		str	r1, [r3]	@ float
 2811 0130 D5D0     		beq	.L360
 2812              	.L301:
 2813 0132 3A46     		mov	r2, r7
 2814 0134 5946     		mov	r1, fp
 2815 0136 4846     		mov	r0, r9
 2816 0138 B047     		blx	r6
 2817 013a 0137     		adds	r7, r7, #1
 2818 013c D9F80020 		ldr	r2, [r9]
 2819 0140 0A2F     		cmp	r7, #10
 2820 0142 9668     		ldr	r6, [r2, #8]
 2821 0144 05F10405 		add	r5, r5, #4
 2822 0148 0460     		str	r4, [r0]	@ float
 2823 014a CFD1     		bne	.L303
 2824              	.L356:
 2825 014c 0292     		str	r2, [sp, #8]
 2826 014e 079D     		ldr	r5, [sp, #28]	@ float
 2827 0150 8CE7     		b	.L293
 2828              	.L291:
 2829 0152 019A     		ldr	r2, [sp, #4]
 2830 0154 5946     		mov	r1, fp
 2831 0156 4846     		mov	r0, r9
 2832 0158 B047     		blx	r6
 2833 015a D9F80030 		ldr	r3, [r9]
 2834 015e 0293     		str	r3, [sp, #8]
 2835 0160 9E68     		ldr	r6, [r3, #8]
 2836 0162 94E7     		b	.L292
 2837              	.L355:
 2838 0164 9946     		mov	r9, r3
 2839              	.L290:
 2840 0166 5645     		cmp	r6, r10
 2841 0168 40F0EE80 		bne	.L305
 2842 016c 099B     		ldr	r3, [sp, #36]
 2843 016e A3F12800 		sub	r0, r3, #40
 2844              	.L306:
 2845 0172 0368     		ldr	r3, [r0]	@ float
 2846 0174 0793     		str	r3, [sp, #28]	@ float
 2847 0176 019B     		ldr	r3, [sp, #4]
 2848 0178 002B     		cmp	r3, #0
 2849 017a 53D0     		beq	.L315
 2850 017c 0A9B     		ldr	r3, [sp, #40]
ARM GAS  /tmp/ccArai7H.s 			page 51


 2851 017e 029C     		ldr	r4, [sp, #8]
 2852 0180 0393     		str	r3, [sp, #12]
 2853 0182 0023     		movs	r3, #0
 2854 0184 0493     		str	r3, [sp, #16]
 2855 0186 0B9B     		ldr	r3, [sp, #44]
 2856 0188 4FEA8308 		lsl	r8, r3, #2
 2857              	.L316:
 2858 018c A568     		ldr	r5, [r4, #8]
 2859 018e 5545     		cmp	r5, r10
 2860 0190 40F0D080 		bne	.L310
 2861 0194 0398     		ldr	r0, [sp, #12]
 2862              	.L311:
 2863 0196 0068     		ldr	r0, [r0]	@ float
 2864 0198 0799     		ldr	r1, [sp, #28]	@ float
 2865 019a FFF7FEFF 		bl	__aeabi_fdiv
 2866 019e 5545     		cmp	r5, r10
 2867 01a0 8346     		mov	fp, r0
 2868 01a2 40F0C080 		bne	.L312
 2869 01a6 0398     		ldr	r0, [sp, #12]
 2870              	.L313:
 2871 01a8 0023     		movs	r3, #0
 2872 01aa 0360     		str	r3, [r0]	@ float
 2873 01ac 069B     		ldr	r3, [sp, #24]
 2874 01ae 9945     		cmp	r9, r3
 2875 01b0 2CD3     		bcc	.L321
 2876 01b2 039B     		ldr	r3, [sp, #12]
 2877 01b4 069F     		ldr	r7, [sp, #24]
 2878 01b6 1D1D     		adds	r5, r3, #4
 2879 01b8 11E0     		b	.L322
 2880              	.L318:
 2881 01ba 0168     		ldr	r1, [r0]	@ float
 2882 01bc 5846     		mov	r0, fp
 2883 01be FFF7FEFF 		bl	__aeabi_fmul
 2884 01c2 5645     		cmp	r6, r10
 2885 01c4 0346     		mov	r3, r0
 2886 01c6 17D1     		bne	.L319
 2887 01c8 2E46     		mov	r6, r5
 2888              	.L320:
 2889 01ca 3068     		ldr	r0, [r6]	@ float
 2890 01cc 1946     		mov	r1, r3
 2891 01ce FFF7FEFF 		bl	__aeabi_fsub
 2892 01d2 0137     		adds	r7, r7, #1
 2893 01d4 B945     		cmp	r9, r7
 2894 01d6 05F10405 		add	r5, r5, #4
 2895 01da 3060     		str	r0, [r6]	@ float
 2896 01dc 16D3     		bcc	.L321
 2897              	.L322:
 2898 01de A668     		ldr	r6, [r4, #8]
 2899 01e0 05EB0800 		add	r0, r5, r8
 2900 01e4 5645     		cmp	r6, r10
 2901 01e6 E8D0     		beq	.L318
 2902 01e8 009C     		ldr	r4, [sp]
 2903 01ea 3A46     		mov	r2, r7
 2904 01ec 2046     		mov	r0, r4
 2905 01ee 0199     		ldr	r1, [sp, #4]
 2906 01f0 B047     		blx	r6
 2907 01f2 2468     		ldr	r4, [r4]
ARM GAS  /tmp/ccArai7H.s 			page 52


 2908 01f4 A668     		ldr	r6, [r4, #8]
 2909 01f6 E0E7     		b	.L318
 2910              	.L319:
 2911 01f8 009C     		ldr	r4, [sp]
 2912 01fa 0290     		str	r0, [sp, #8]
 2913 01fc 3A46     		mov	r2, r7
 2914 01fe 2046     		mov	r0, r4
 2915 0200 0499     		ldr	r1, [sp, #16]
 2916 0202 B047     		blx	r6
 2917 0204 2468     		ldr	r4, [r4]
 2918 0206 0646     		mov	r6, r0
 2919 0208 029B     		ldr	r3, [sp, #8]
 2920 020a DEE7     		b	.L320
 2921              	.L321:
 2922 020c 039A     		ldr	r2, [sp, #12]
 2923 020e 049B     		ldr	r3, [sp, #16]
 2924 0210 2832     		adds	r2, r2, #40
 2925 0212 0392     		str	r2, [sp, #12]
 2926 0214 019A     		ldr	r2, [sp, #4]
 2927 0216 0133     		adds	r3, r3, #1
 2928 0218 9342     		cmp	r3, r2
 2929 021a 0493     		str	r3, [sp, #16]
 2930 021c A8F12808 		sub	r8, r8, #40
 2931 0220 B4D1     		bne	.L316
 2932 0222 0294     		str	r4, [sp, #8]
 2933              	.L315:
 2934 0224 069B     		ldr	r3, [sp, #24]
 2935 0226 9945     		cmp	r9, r3
 2936 0228 00F09680 		beq	.L361
 2937 022c 6FF02703 		mvn	r3, #39
 2938 0230 9B46     		mov	fp, r3
 2939 0232 099A     		ldr	r2, [sp, #36]
 2940 0234 0392     		str	r2, [sp, #12]
 2941 0236 069A     		ldr	r2, [sp, #24]
 2942 0238 0492     		str	r2, [sp, #16]
 2943 023a 029A     		ldr	r2, [sp, #8]
 2944 023c 9668     		ldr	r6, [r2, #8]
 2945              	.L333:
 2946 023e 5645     		cmp	r6, r10
 2947 0240 68D1     		bne	.L323
 2948 0242 0398     		ldr	r0, [sp, #12]
 2949              	.L324:
 2950 0244 0068     		ldr	r0, [r0]	@ float
 2951 0246 0799     		ldr	r1, [sp, #28]	@ float
 2952 0248 FFF7FEFF 		bl	__aeabi_fdiv
 2953 024c 5645     		cmp	r6, r10
 2954 024e 8046     		mov	r8, r0
 2955 0250 57D1     		bne	.L325
 2956 0252 0398     		ldr	r0, [sp, #12]
 2957              	.L326:
 2958 0254 0023     		movs	r3, #0
 2959 0256 069F     		ldr	r7, [sp, #24]
 2960 0258 0360     		str	r3, [r0]	@ float
 2961 025a B945     		cmp	r9, r7
 2962 025c 2DD3     		bcc	.L327
 2963 025e 039B     		ldr	r3, [sp, #12]
 2964 0260 1D1D     		adds	r5, r3, #4
ARM GAS  /tmp/ccArai7H.s 			page 53


 2965 0262 13E0     		b	.L332
 2966              	.L362:
 2967 0264 0BEB0500 		add	r0, fp, r5
 2968              	.L329:
 2969 0268 0168     		ldr	r1, [r0]	@ float
 2970 026a 4046     		mov	r0, r8
 2971 026c FFF7FEFF 		bl	__aeabi_fmul
 2972 0270 5645     		cmp	r6, r10
 2973 0272 0346     		mov	r3, r0
 2974 0274 15D1     		bne	.L330
 2975 0276 2C46     		mov	r4, r5
 2976              	.L331:
 2977 0278 2068     		ldr	r0, [r4]	@ float
 2978 027a 1946     		mov	r1, r3
 2979 027c FFF7FEFF 		bl	__aeabi_fsub
 2980 0280 0137     		adds	r7, r7, #1
 2981 0282 B945     		cmp	r9, r7
 2982 0284 05F10405 		add	r5, r5, #4
 2983 0288 2060     		str	r0, [r4]	@ float
 2984 028a 16D3     		bcc	.L327
 2985              	.L332:
 2986 028c 5645     		cmp	r6, r10
 2987 028e E9D0     		beq	.L362
 2988 0290 009C     		ldr	r4, [sp]
 2989 0292 3A46     		mov	r2, r7
 2990 0294 0199     		ldr	r1, [sp, #4]
 2991 0296 2046     		mov	r0, r4
 2992 0298 B047     		blx	r6
 2993 029a 2368     		ldr	r3, [r4]
 2994 029c 0293     		str	r3, [sp, #8]
 2995 029e 9E68     		ldr	r6, [r3, #8]
 2996 02a0 E2E7     		b	.L329
 2997              	.L330:
 2998 02a2 0590     		str	r0, [sp, #20]
 2999 02a4 3A46     		mov	r2, r7
 3000 02a6 0499     		ldr	r1, [sp, #16]
 3001 02a8 0098     		ldr	r0, [sp]
 3002 02aa B047     		blx	r6
 3003 02ac 009B     		ldr	r3, [sp]
 3004 02ae 0446     		mov	r4, r0
 3005 02b0 1B68     		ldr	r3, [r3]
 3006 02b2 0293     		str	r3, [sp, #8]
 3007 02b4 9E68     		ldr	r6, [r3, #8]
 3008 02b6 059B     		ldr	r3, [sp, #20]
 3009 02b8 DEE7     		b	.L331
 3010              	.L327:
 3011 02ba 049B     		ldr	r3, [sp, #16]
 3012 02bc 039A     		ldr	r2, [sp, #12]
 3013 02be 0133     		adds	r3, r3, #1
 3014 02c0 2832     		adds	r2, r2, #40
 3015 02c2 9945     		cmp	r9, r3
 3016 02c4 0493     		str	r3, [sp, #16]
 3017 02c6 0392     		str	r2, [sp, #12]
 3018 02c8 ABF1280B 		sub	fp, fp, #40
 3019 02cc B7D8     		bhi	.L333
 3020 02ce 099B     		ldr	r3, [sp, #36]
 3021 02d0 5645     		cmp	r6, r10
ARM GAS  /tmp/ccArai7H.s 			page 54


 3022 02d2 03F12C03 		add	r3, r3, #44
 3023 02d6 0993     		str	r3, [sp, #36]
 3024 02d8 0A9B     		ldr	r3, [sp, #40]
 3025 02da 03F10403 		add	r3, r3, #4
 3026 02de 0A93     		str	r3, [sp, #40]
 3027 02e0 0B9B     		ldr	r3, [sp, #44]
 3028 02e2 03F10A03 		add	r3, r3, #10
 3029 02e6 0B93     		str	r3, [sp, #44]
 3030 02e8 069B     		ldr	r3, [sp, #24]
 3031 02ea 0193     		str	r3, [sp, #4]
 3032 02ec 3FF4A6AE 		beq	.L363
 3033              	.L288:
 3034 02f0 009C     		ldr	r4, [sp]
 3035 02f2 0199     		ldr	r1, [sp, #4]
 3036 02f4 2046     		mov	r0, r4
 3037 02f6 0A46     		mov	r2, r1
 3038 02f8 B047     		blx	r6
 3039 02fa 2368     		ldr	r3, [r4]
 3040 02fc 0293     		str	r3, [sp, #8]
 3041 02fe 9E68     		ldr	r6, [r3, #8]
 3042 0300 9FE6     		b	.L289
 3043              	.L325:
 3044 0302 009C     		ldr	r4, [sp]
 3045 0304 019A     		ldr	r2, [sp, #4]
 3046 0306 0499     		ldr	r1, [sp, #16]
 3047 0308 2046     		mov	r0, r4
 3048 030a B047     		blx	r6
 3049 030c 2368     		ldr	r3, [r4]
 3050 030e 0293     		str	r3, [sp, #8]
 3051 0310 9E68     		ldr	r6, [r3, #8]
 3052 0312 9FE7     		b	.L326
 3053              	.L323:
 3054 0314 009C     		ldr	r4, [sp]
 3055 0316 019A     		ldr	r2, [sp, #4]
 3056 0318 0499     		ldr	r1, [sp, #16]
 3057 031a 2046     		mov	r0, r4
 3058 031c B047     		blx	r6
 3059 031e 2368     		ldr	r3, [r4]
 3060 0320 0293     		str	r3, [sp, #8]
 3061 0322 9E68     		ldr	r6, [r3, #8]
 3062 0324 8EE7     		b	.L324
 3063              	.L312:
 3064 0326 009C     		ldr	r4, [sp]
 3065 0328 019A     		ldr	r2, [sp, #4]
 3066 032a 2046     		mov	r0, r4
 3067 032c 0499     		ldr	r1, [sp, #16]
 3068 032e A847     		blx	r5
 3069 0330 2468     		ldr	r4, [r4]
 3070 0332 39E7     		b	.L313
 3071              	.L310:
 3072 0334 009C     		ldr	r4, [sp]
 3073 0336 019A     		ldr	r2, [sp, #4]
 3074 0338 2046     		mov	r0, r4
 3075 033a 0499     		ldr	r1, [sp, #16]
 3076 033c A847     		blx	r5
 3077 033e 2468     		ldr	r4, [r4]
 3078 0340 A568     		ldr	r5, [r4, #8]
ARM GAS  /tmp/ccArai7H.s 			page 55


 3079 0342 28E7     		b	.L311
 3080              	.L342:
 3081 0344 079D     		ldr	r5, [sp, #28]	@ float
 3082 0346 91E6     		b	.L293
 3083              	.L305:
 3084 0348 009C     		ldr	r4, [sp]
 3085 034a 0199     		ldr	r1, [sp, #4]
 3086 034c 2046     		mov	r0, r4
 3087 034e 0A46     		mov	r2, r1
 3088 0350 B047     		blx	r6
 3089 0352 2368     		ldr	r3, [r4]
 3090 0354 0293     		str	r3, [sp, #8]
 3091 0356 0CE7     		b	.L306
 3092              	.L361:
 3093 0358 019C     		ldr	r4, [sp, #4]
 3094 035a 009A     		ldr	r2, [sp]
 3095 035c 0D9B     		ldr	r3, [sp, #52]
 3096 035e DDF80890 		ldr	r9, [sp, #8]
 3097 0362 0234     		adds	r4, r4, #2
 3098 0364 1E1F     		subs	r6, r3, #4
 3099 0366 0025     		movs	r5, #0
 3100 0368 02EB8404 		add	r4, r2, r4, lsl #2
 3101 036c DDF818B0 		ldr	fp, [sp, #24]
 3102 0370 0C9F     		ldr	r7, [sp, #48]
 3103 0372 4B46     		mov	r3, r9
 3104 0374 9046     		mov	r8, r2
 3105 0376 14E0     		b	.L340
 3106              	.L364:
 3107 0378 2046     		mov	r0, r4
 3108 037a 5345     		cmp	r3, r10
 3109 037c D0F80090 		ldr	r9, [r0]	@ float
 3110 0380 1DD1     		bne	.L337
 3111              	.L365:
 3112 0382 3846     		mov	r0, r7
 3113              	.L338:
 3114 0384 0168     		ldr	r1, [r0]	@ float
 3115 0386 4846     		mov	r0, r9
 3116 0388 FFF7FEFF 		bl	__aeabi_fdiv
 3117 038c 0135     		adds	r5, r5, #1
 3118 038e AB45     		cmp	fp, r5
 3119 0390 46F8040F 		str	r0, [r6, #4]!	@ float
 3120 0394 07F12C07 		add	r7, r7, #44
 3121 0398 04F12804 		add	r4, r4, #40
 3122 039c 14D0     		beq	.L286
 3123 039e D8F80030 		ldr	r3, [r8]
 3124              	.L340:
 3125 03a2 9B68     		ldr	r3, [r3, #8]
 3126 03a4 5345     		cmp	r3, r10
 3127 03a6 E7D0     		beq	.L364
 3128 03a8 5A46     		mov	r2, fp
 3129 03aa 2946     		mov	r1, r5
 3130 03ac 4046     		mov	r0, r8
 3131 03ae 9847     		blx	r3
 3132 03b0 D8F80030 		ldr	r3, [r8]
 3133 03b4 D0F80090 		ldr	r9, [r0]	@ float
 3134 03b8 9B68     		ldr	r3, [r3, #8]
 3135 03ba 5345     		cmp	r3, r10
ARM GAS  /tmp/ccArai7H.s 			page 56


 3136 03bc E1D0     		beq	.L365
 3137              	.L337:
 3138 03be 2A46     		mov	r2, r5
 3139 03c0 2946     		mov	r1, r5
 3140 03c2 4046     		mov	r0, r8
 3141 03c4 9847     		blx	r3
 3142 03c6 DDE7     		b	.L338
 3143              	.L286:
 3144 03c8 0FB0     		add	sp, sp, #60
 3145              		@ sp needed
 3146 03ca BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3147              	.L351:
 3148 03ce 7047     		bx	lr
 3149              	.L367:
 3150              		.align	2
 3151              	.L366:
 3152 03d0 00000000 		.word	_ZN11FixedMatrixIfLj9ELj10EEclEjj
 3153              		.size	_ZN11FixedMatrixIfLj9ELj10EE11GaussJordanEPfj, .-_ZN11FixedMatrixIfLj9ELj10EE11GaussJordanEP
 3154              		.global	__aeabi_ui2f
 3155              		.section	.text._ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 3156              		.align	1
 3157              		.p2align 2,,3
 3158              		.global	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 3159              		.syntax unified
 3160              		.thumb
 3161              		.thumb_func
 3162              		.fpu softvfp
 3163              		.type	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 3164              	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 3165              		@ args = 0, pretend = 0, frame = 2328
 3166              		@ frame_needed = 0, uses_anonymous_args = 0
 3167 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3168 0004 0C46     		mov	r4, r1
 3169 0006 ADF62C1D 		subw	sp, sp, #2348
 3170 000a 0790     		str	r0, [sp, #28]
 3171 000c 1046     		mov	r0, r2
 3172 000e 1593     		str	r3, [sp, #84]
 3173 0010 0B92     		str	r2, [sp, #44]
 3174 0012 1091     		str	r1, [sp, #64]
 3175 0014 FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 3176 0018 E31E     		subs	r3, r4, #3
 3177 001a 062B     		cmp	r3, #6
 3178 001c 00F28382 		bhi	.L369
 3179 0020 052C     		cmp	r4, #5
 3180 0022 00F08082 		beq	.L369
 3181 0026 504B     		ldr	r3, .L437
 3182 0028 8246     		mov	r10, r0
 3183 002a 5B6C     		ldr	r3, [r3, #68]
 3184 002c D806     		lsls	r0, r3, #27
 3185 002e 00F15F82 		bmi	.L428
 3186 0032 0DF2A443 		addw	r3, sp, #1188
 3187 0036 0A93     		str	r3, [sp, #40]
 3188 0038 0023     		movs	r3, #0
 3189 003a BAF1000F 		cmp	r10, #0
 3190 003e 00F06E82 		beq	.L431
 3191              	.L373:
 3192 0042 0024     		movs	r4, #0
ARM GAS  /tmp/ccArai7H.s 			page 57


 3193 0044 9B46     		mov	fp, r3
 3194 0046 1F46     		mov	r7, r3
 3195 0048 0B9B     		ldr	r3, [sp, #44]
 3196 004a DDF81C90 		ldr	r9, [sp, #28]
 3197 004e 03F28316 		addw	r6, r3, #387
 3198 0052 DDF82880 		ldr	r8, [sp, #40]
 3199 0056 2DAB     		add	r3, sp, #180
 3200 0058 C8AD     		add	r5, sp, #800
 3201 005a 0693     		str	r3, [sp, #24]
 3202 005c CDF814A0 		str	r10, [sp, #20]
 3203 0060 0496     		str	r6, [sp, #16]
 3204              	.L376:
 3205 0062 049A     		ldr	r2, [sp, #16]
 3206 0064 069E     		ldr	r6, [sp, #24]
 3207 0066 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 3208 006a 2146     		mov	r1, r4
 3209 006c 0492     		str	r2, [sp, #16]
 3210 006e 3E4A     		ldr	r2, .L437
 3211 0070 C3F38003 		ubfx	r3, r3, #2, #1
 3212 0074 9068     		ldr	r0, [r2, #8]
 3213 0076 0093     		str	r3, [sp]
 3214 0078 4246     		mov	r2, r8
 3215 007a 0DF59563 		add	r3, sp, #1192
 3216 007e 46F82470 		str	r7, [r6, r4, lsl #2]	@ float
 3217 0082 FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3218 0086 0022     		movs	r2, #0
 3219 0088 8246     		mov	r10, r0
 3220 008a 4146     		mov	r1, r8
 3221 008c 4846     		mov	r0, r9
 3222 008e C8F80870 		str	r7, [r8, #8]	@ float
 3223 0092 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 3224 0096 0122     		movs	r2, #1
 3225 0098 6860     		str	r0, [r5, #4]	@ float
 3226 009a 4146     		mov	r1, r8
 3227 009c 4846     		mov	r0, r9
 3228 009e FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 3229 00a2 0222     		movs	r2, #2
 3230 00a4 A860     		str	r0, [r5, #8]	@ float
 3231 00a6 4146     		mov	r1, r8
 3232 00a8 4846     		mov	r0, r9
 3233 00aa FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics9TransformEPKfj.part.7
 3234 00ae 5146     		mov	r1, r10
 3235 00b0 45F80C0F 		str	r0, [r5, #12]!	@ float
 3236 00b4 5046     		mov	r0, r10
 3237 00b6 FFF7FEFF 		bl	__aeabi_fmul
 3238 00ba 0146     		mov	r1, r0
 3239 00bc 5846     		mov	r0, fp
 3240 00be FFF7FEFF 		bl	__aeabi_fadd
 3241 00c2 059B     		ldr	r3, [sp, #20]
 3242 00c4 0134     		adds	r4, r4, #1
 3243 00c6 A342     		cmp	r3, r4
 3244 00c8 8346     		mov	fp, r0
 3245 00ca CAD1     		bne	.L376
 3246 00cc 9A46     		mov	r10, r3
 3247 00ce 1390     		str	r0, [sp, #76]	@ float
 3248              	.L375:
 3249 00d0 0AEBCA03 		add	r3, r10, r10, lsl #3
ARM GAS  /tmp/ccArai7H.s 			page 58


 3250 00d4 9B00     		lsls	r3, r3, #2
 3251 00d6 1793     		str	r3, [sp, #92]
 3252 00d8 0223     		movs	r3, #2
 3253 00da 1098     		ldr	r0, [sp, #64]
 3254 00dc 0E93     		str	r3, [sp, #56]
 3255 00de 8200     		lsls	r2, r0, #2
 3256 00e0 111F     		subs	r1, r2, #4
 3257 00e2 0D92     		str	r2, [sp, #52]
 3258 00e4 C0EB8072 		rsb	r2, r0, r0, lsl #30
 3259 00e8 9200     		lsls	r2, r2, #2
 3260 00ea 1192     		str	r2, [sp, #68]
 3261 00ec 079A     		ldr	r2, [sp, #28]
 3262 00ee 5646     		mov	r6, r10
 3263 00f0 1346     		mov	r3, r2
 3264 00f2 3433     		adds	r3, r3, #52
 3265 00f4 1893     		str	r3, [sp, #96]
 3266 00f6 1346     		mov	r3, r2
 3267 00f8 8346     		mov	fp, r0
 3268 00fa 24AC     		add	r4, sp, #144
 3269 00fc 6118     		adds	r1, r4, r1
 3270 00fe 4033     		adds	r3, r3, #64
 3271 0100 1691     		str	r1, [sp, #88]
 3272 0102 1993     		str	r3, [sp, #100]
 3273              	.L374:
 3274 0104 0A9B     		ldr	r3, [sp, #40]
 3275 0106 1A46     		mov	r2, r3
 3276 0108 184B     		ldr	r3, .L437+4
 3277 010a 1360     		str	r3, [r2]
 3278 010c 002E     		cmp	r6, #0
 3279 010e 3CD0     		beq	.L382
 3280 0110 0023     		movs	r3, #0
 3281 0112 0893     		str	r3, [sp, #32]
 3282 0114 C8AB     		add	r3, sp, #800
 3283 0116 0493     		str	r3, [sp, #16]
 3284 0118 DDF81CA0 		ldr	r10, [sp, #28]
 3285 011c 0DF59563 		add	r3, sp, #1192
 3286 0120 0593     		str	r3, [sp, #20]
 3287 0122 0996     		str	r6, [sp, #36]
 3288              	.L383:
 3289 0124 049A     		ldr	r2, [sp, #16]
 3290 0126 059E     		ldr	r6, [sp, #20]
 3291 0128 D2F80490 		ldr	r9, [r2, #4]	@ float
 3292 012c D2F80880 		ldr	r8, [r2, #8]	@ float
 3293 0130 D768     		ldr	r7, [r2, #12]	@ float
 3294 0132 0125     		movs	r5, #1
 3295 0134 0024     		movs	r4, #0
 3296 0136 0BE0     		b	.L381
 3297              	.L380:
 3298 0138 0097     		str	r7, [sp]	@ float
 3299 013a FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics17ComputeDerivativeEjfff
 3300 013e AB45     		cmp	fp, r5
 3301 0140 04F10104 		add	r4, r4, #1
 3302 0144 46F8040B 		str	r0, [r6], #4	@ float
 3303 0148 05F10103 		add	r3, r5, #1
 3304 014c 10D9     		bls	.L432
 3305 014e 1D46     		mov	r5, r3
 3306              	.L381:
ARM GAS  /tmp/ccArai7H.s 			page 59


 3307 0150 BBF1080F 		cmp	fp, #8
 3308 0154 4346     		mov	r3, r8
 3309 0156 4A46     		mov	r2, r9
 3310 0158 5046     		mov	r0, r10
 3311 015a 2146     		mov	r1, r4
 3312 015c ECD1     		bne	.L380
 3313 015e 052C     		cmp	r4, #5
 3314 0160 94BF     		ite	ls
 3315 0162 2146     		movls	r1, r4
 3316 0164 2946     		movhi	r1, r5
 3317 0166 E7E7     		b	.L380
 3318              	.L438:
 3319              		.align	2
 3320              	.L437:
 3321 0168 00000000 		.word	reprap
 3322 016c 08000000 		.word	_ZTV11FixedMatrixIfLj32ELj9EE+8
 3323              	.L432:
 3324 0170 049A     		ldr	r2, [sp, #16]
 3325 0172 089B     		ldr	r3, [sp, #32]
 3326 0174 0C32     		adds	r2, r2, #12
 3327 0176 0492     		str	r2, [sp, #16]
 3328 0178 059A     		ldr	r2, [sp, #20]
 3329 017a 0133     		adds	r3, r3, #1
 3330 017c 2432     		adds	r2, r2, #36
 3331 017e 0592     		str	r2, [sp, #20]
 3332 0180 099A     		ldr	r2, [sp, #36]
 3333 0182 0893     		str	r3, [sp, #32]
 3334 0184 9A42     		cmp	r2, r3
 3335 0186 CDD1     		bne	.L383
 3336 0188 1646     		mov	r6, r2
 3337              	.L382:
 3338 018a AC4B     		ldr	r3, .L439
 3339 018c 5B6C     		ldr	r3, [r3, #68]
 3340 018e 13F01003 		ands	r3, r3, #16
 3341 0192 1493     		str	r3, [sp, #80]
 3342 0194 40F0A081 		bne	.L433
 3343              	.L379:
 3344 0198 0B9B     		ldr	r3, [sp, #44]
 3345 019a D3F80411 		ldr	r1, [r3, #260]	@ float
 3346 019e 069B     		ldr	r3, [sp, #24]
 3347 01a0 1868     		ldr	r0, [r3]	@ float
 3348 01a2 A74B     		ldr	r3, .L439+4
 3349 01a4 6D93     		str	r3, [sp, #436]
 3350 01a6 FFF7FEFF 		bl	__aeabi_fadd
 3351 01aa 0022     		movs	r2, #0
 3352 01ac 6EAB     		add	r3, sp, #440
 3353 01ae 0993     		str	r3, [sp, #36]
 3354 01b0 0A9B     		ldr	r3, [sp, #40]
 3355 01b2 0892     		str	r2, [sp, #32]
 3356 01b4 9946     		mov	r9, r3
 3357 01b6 00F10042 		add	r2, r0, #-2147483648
 3358 01ba 0F92     		str	r2, [sp, #60]
 3359 01bc 179A     		ldr	r2, [sp, #92]
 3360 01be CDF830B0 		str	fp, [sp, #48]
 3361 01c2 243A     		subs	r2, r2, #36
 3362 01c4 1292     		str	r2, [sp, #72]
 3363              	.L389:
ARM GAS  /tmp/ccArai7H.s 			page 60


 3364 01c6 D9F80420 		ldr	r2, [r9, #4]	@ float
 3365 01ca 089B     		ldr	r3, [sp, #32]
 3366 01cc 0492     		str	r2, [sp, #16]	@ float
 3367 01ce 0D9A     		ldr	r2, [sp, #52]
 3368 01d0 1D46     		mov	r5, r3
 3369 01d2 DDF82480 		ldr	r8, [sp, #36]
 3370 01d6 1344     		add	r3, r3, r2
 3371 01d8 0A9F     		ldr	r7, [sp, #40]
 3372 01da 0593     		str	r3, [sp, #20]
 3373              	.L386:
 3374 01dc 57F8041F 		ldr	r1, [r7, #4]!	@ float
 3375 01e0 0498     		ldr	r0, [sp, #16]	@ float
 3376 01e2 FFF7FEFF 		bl	__aeabi_fmul
 3377 01e6 012E     		cmp	r6, #1
 3378 01e8 8246     		mov	r10, r0
 3379 01ea 12D9     		bls	.L384
 3380 01ec 4C46     		mov	r4, r9
 3381 01ee 4FF0010B 		mov	fp, #1
 3382              	.L385:
 3383 01f2 6319     		adds	r3, r4, r5
 3384 01f4 A16A     		ldr	r1, [r4, #40]	@ float
 3385 01f6 986A     		ldr	r0, [r3, #40]	@ float
 3386 01f8 FFF7FEFF 		bl	__aeabi_fmul
 3387 01fc 0146     		mov	r1, r0
 3388 01fe 5046     		mov	r0, r10
 3389 0200 FFF7FEFF 		bl	__aeabi_fadd
 3390 0204 0BF1010B 		add	fp, fp, #1
 3391 0208 5E45     		cmp	r6, fp
 3392 020a 8246     		mov	r10, r0
 3393 020c 04F12404 		add	r4, r4, #36
 3394 0210 EFD1     		bne	.L385
 3395              	.L384:
 3396 0212 059B     		ldr	r3, [sp, #20]
 3397 0214 0435     		adds	r5, r5, #4
 3398 0216 9D42     		cmp	r5, r3
 3399 0218 48F804AB 		str	r10, [r8], #4	@ float
 3400 021c DED1     		bne	.L386
 3401 021e 0498     		ldr	r0, [sp, #16]	@ float
 3402 0220 0F99     		ldr	r1, [sp, #60]	@ float
 3403 0222 FFF7FEFF 		bl	__aeabi_fmul
 3404 0226 012E     		cmp	r6, #1
 3405 0228 0546     		mov	r5, r0
 3406 022a 1BD9     		bls	.L387
 3407 022c 4C46     		mov	r4, r9
 3408 022e 0B9B     		ldr	r3, [sp, #44]
 3409 0230 DDF818A0 		ldr	r10, [sp, #24]
 3410 0234 03F58278 		add	r8, r3, #260
 3411 0238 129B     		ldr	r3, [sp, #72]
 3412 023a 03EB0907 		add	r7, r3, r9
 3413              	.L388:
 3414 023e 58F8041F 		ldr	r1, [r8, #4]!	@ float
 3415 0242 5AF8040F 		ldr	r0, [r10, #4]!	@ float
 3416 0246 FFF7FEFF 		bl	__aeabi_fadd
 3417 024a A16A     		ldr	r1, [r4, #40]	@ float
 3418 024c 00F10040 		add	r0, r0, #-2147483648
 3419 0250 FFF7FEFF 		bl	__aeabi_fmul
 3420 0254 0146     		mov	r1, r0
ARM GAS  /tmp/ccArai7H.s 			page 61


 3421 0256 2846     		mov	r0, r5
 3422 0258 FFF7FEFF 		bl	__aeabi_fadd
 3423 025c 2434     		adds	r4, r4, #36
 3424 025e BC42     		cmp	r4, r7
 3425 0260 0546     		mov	r5, r0
 3426 0262 ECD1     		bne	.L388
 3427              	.L387:
 3428 0264 0999     		ldr	r1, [sp, #36]
 3429 0266 089B     		ldr	r3, [sp, #32]
 3430 0268 0A46     		mov	r2, r1
 3431 026a 2832     		adds	r2, r2, #40
 3432 026c 0992     		str	r2, [sp, #36]
 3433 026e 119A     		ldr	r2, [sp, #68]
 3434 0270 043B     		subs	r3, r3, #4
 3435 0272 0C98     		ldr	r0, [sp, #48]
 3436 0274 9342     		cmp	r3, r2
 3437 0276 0893     		str	r3, [sp, #32]
 3438 0278 41F82050 		str	r5, [r1, r0, lsl #2]	@ float
 3439 027c 09F10409 		add	r9, r9, #4
 3440 0280 A1D1     		bne	.L389
 3441 0282 149B     		ldr	r3, [sp, #80]
 3442 0284 8346     		mov	fp, r0
 3443 0286 002B     		cmp	r3, #0
 3444 0288 40F01F81 		bne	.L434
 3445              	.L390:
 3446 028c 24A9     		add	r1, sp, #144
 3447 028e 5A46     		mov	r2, fp
 3448 0290 6DA8     		add	r0, sp, #436
 3449 0292 FFF7FEFF 		bl	_ZN11FixedMatrixIfLj9ELj10EE11GaussJordanEPfj
 3450 0296 694B     		ldr	r3, .L439
 3451 0298 5B6C     		ldr	r3, [r3, #68]
 3452 029a D906     		lsls	r1, r3, #27
 3453 029c 00F1D880 		bmi	.L435
 3454              	.L391:
 3455 02a0 079D     		ldr	r5, [sp, #28]
 3456 02a2 1BAF     		add	r7, sp, #108
 3457 02a4 EC6E     		ldr	r4, [r5, #108]	@ float
 3458 02a6 686B     		ldr	r0, [r5, #52]	@ float
 3459 02a8 2146     		mov	r1, r4
 3460 02aa FFF7FEFF 		bl	__aeabi_fadd
 3461 02ae 2146     		mov	r1, r4
 3462 02b0 1B90     		str	r0, [sp, #108]	@ float
 3463 02b2 A86B     		ldr	r0, [r5, #56]	@ float
 3464 02b4 FFF7FEFF 		bl	__aeabi_fadd
 3465 02b8 2146     		mov	r1, r4
 3466 02ba 1C90     		str	r0, [sp, #112]	@ float
 3467 02bc E86B     		ldr	r0, [r5, #60]	@ float
 3468 02be 0795     		str	r5, [sp, #28]
 3469 02c0 FFF7FEFF 		bl	__aeabi_fadd
 3470 02c4 DDF81C80 		ldr	r8, [sp, #28]
 3471 02c8 1EAA     		add	r2, sp, #120
 3472 02ca 1D90     		str	r0, [sp, #116]	@ float
 3473 02cc 1546     		mov	r5, r2
 3474 02ce 4046     		mov	r0, r8
 3475 02d0 24AA     		add	r2, sp, #144
 3476 02d2 5946     		mov	r1, fp
 3477 02d4 189C     		ldr	r4, [sp, #96]
ARM GAS  /tmp/ccArai7H.s 			page 62


 3478 02d6 FFF7FEFF 		bl	_ZN21LinearDeltaKinematics6AdjustEjPKf
 3479 02da D8F86C80 		ldr	r8, [r8, #108]	@ float
 3480              	.L396:
 3481 02de 57F8049B 		ldr	r9, [r7], #4	@ float
 3482 02e2 4146     		mov	r1, r8
 3483 02e4 54F8040B 		ldr	r0, [r4], #4	@ float
 3484 02e8 FFF7FEFF 		bl	__aeabi_fadd
 3485 02ec 4946     		mov	r1, r9
 3486 02ee FFF7FEFF 		bl	__aeabi_fsub
 3487 02f2 199B     		ldr	r3, [sp, #100]
 3488 02f4 45F8040B 		str	r0, [r5], #4	@ float
 3489 02f8 A342     		cmp	r3, r4
 3490 02fa F0D1     		bne	.L396
 3491 02fc 4F4B     		ldr	r3, .L439
 3492 02fe 0322     		movs	r2, #3
 3493 0300 1EA9     		add	r1, sp, #120
 3494 0302 9868     		ldr	r0, [r3, #8]
 3495 0304 FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
 3496 0308 002E     		cmp	r6, #0
 3497 030a 00F01681 		beq	.L405
 3498 030e 0023     		movs	r3, #0
 3499 0310 9846     		mov	r8, r3
 3500 0312 0B9B     		ldr	r3, [sp, #44]
 3501 0314 0024     		movs	r4, #0
 3502 0316 03F58073 		add	r3, r3, #256
 3503 031a 9A46     		mov	r10, r3
 3504 031c C9AD     		add	r5, sp, #804
 3505 031e 27AF     		add	r7, sp, #156
 3506 0320 0DF18409 		add	r9, sp, #132
 3507 0324 0496     		str	r6, [sp, #16]
 3508 0326 CDF814B0 		str	fp, [sp, #20]
 3509              	.L399:
 3510 032a AB46     		mov	fp, r5
 3511 032c 24AE     		add	r6, sp, #144
 3512              	.L398:
 3513 032e 56F8041B 		ldr	r1, [r6], #4	@ float
 3514 0332 DBF80000 		ldr	r0, [fp]	@ float
 3515 0336 FFF7FEFF 		bl	__aeabi_fadd
 3516 033a B742     		cmp	r7, r6
 3517 033c 4BF8040B 		str	r0, [fp], #4	@ float
 3518 0340 F5D1     		bne	.L398
 3519 0342 AB68     		ldr	r3, [r5, #8]	@ float
 3520 0344 6A68     		ldr	r2, [r5, #4]	@ float
 3521 0346 0798     		ldr	r0, [sp, #28]
 3522 0348 55F80C1B 		ldr	r1, [r5], #12	@ float
 3523 034c CDF80090 		str	r9, [sp]
 3524 0350 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics16InverseTransformEfffPf
 3525 0354 D9F80830 		ldr	r3, [r9, #8]	@ float
 3526 0358 069A     		ldr	r2, [sp, #24]
 3527 035a 1846     		mov	r0, r3
 3528 035c 42F82430 		str	r3, [r2, r4, lsl #2]	@ float
 3529 0360 5AF8041F 		ldr	r1, [r10, #4]!	@ float
 3530 0364 FFF7FEFF 		bl	__aeabi_fadd
 3531 0368 4DAA     		add	r2, sp, #308
 3532 036a 42F82400 		str	r0, [r2, r4, lsl #2]	@ float
 3533 036e 0146     		mov	r1, r0
 3534 0370 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  /tmp/ccArai7H.s 			page 63


 3535 0374 0146     		mov	r1, r0
 3536 0376 4046     		mov	r0, r8
 3537 0378 FFF7FEFF 		bl	__aeabi_fadd
 3538 037c 049B     		ldr	r3, [sp, #16]
 3539 037e 0134     		adds	r4, r4, #1
 3540 0380 A342     		cmp	r3, r4
 3541 0382 8046     		mov	r8, r0
 3542 0384 D1D1     		bne	.L399
 3543 0386 0546     		mov	r5, r0
 3544 0388 1E46     		mov	r6, r3
 3545 038a DDF814B0 		ldr	fp, [sp, #20]
 3546              	.L397:
 3547 038e 3046     		mov	r0, r6
 3548 0390 FFF7FEFF 		bl	__aeabi_ui2f
 3549 0394 0146     		mov	r1, r0
 3550 0396 0446     		mov	r4, r0
 3551 0398 2846     		mov	r0, r5
 3552 039a FFF7FEFF 		bl	__aeabi_fdiv
 3553 039e FFF7FEFF 		bl	sqrtf
 3554 03a2 264B     		ldr	r3, .L439
 3555 03a4 0546     		mov	r5, r0
 3556 03a6 5B6C     		ldr	r3, [r3, #68]
 3557 03a8 DA06     		lsls	r2, r3, #27
 3558 03aa 40D4     		bmi	.L436
 3559              	.L400:
 3560 03ac 0E9B     		ldr	r3, [sp, #56]
 3561 03ae 013B     		subs	r3, r3, #1
 3562 03b0 0E93     		str	r3, [sp, #56]
 3563 03b2 7FF4A7AE 		bne	.L374
 3564 03b6 214B     		ldr	r3, .L439
 3565 03b8 B246     		mov	r10, r6
 3566 03ba 5B6C     		ldr	r3, [r3, #68]
 3567 03bc DB06     		lsls	r3, r3, #27
 3568 03be 0ED5     		bpl	.L402
 3569 03c0 DD23     		movs	r3, #221
 3570 03c2 0A9E     		ldr	r6, [sp, #40]
 3571 03c4 9DF83810 		ldrb	r1, [sp, #56]	@ zero_extendqisi2
 3572 03c8 0798     		ldr	r0, [sp, #28]
 3573 03ca 3170     		strb	r1, [r6]
 3574 03cc 6DA9     		add	r1, sp, #436
 3575 03ce 6D96     		str	r6, [sp, #436]
 3576 03d0 6E93     		str	r3, [sp, #440]
 3577 03d2 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef
 3578 03d6 3146     		mov	r1, r6
 3579 03d8 1A48     		ldr	r0, .L439+8
 3580 03da FFF7FEFF 		bl	debugPrintf
 3581              	.L402:
 3582 03de 2146     		mov	r1, r4
 3583 03e0 1398     		ldr	r0, [sp, #76]	@ float
 3584 03e2 FFF7FEFF 		bl	__aeabi_fdiv
 3585 03e6 FFF7FEFF 		bl	sqrtf
 3586 03ea 0446     		mov	r4, r0
 3587 03ec 2846     		mov	r0, r5
 3588 03ee FFF7FEFF 		bl	__aeabi_f2d
 3589 03f2 CDE90201 		strd	r0, [sp, #8]
 3590 03f6 2046     		mov	r0, r4
 3591 03f8 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccArai7H.s 			page 64


 3592 03fc 159C     		ldr	r4, [sp, #84]
 3593 03fe CDE90001 		strd	r0, [sp]
 3594 0402 5346     		mov	r3, r10
 3595 0404 109A     		ldr	r2, [sp, #64]
 3596 0406 1049     		ldr	r1, .L439+12
 3597 0408 2046     		mov	r0, r4
 3598 040a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3599 040e 0B4A     		ldr	r2, .L439
 3600 0410 2368     		ldr	r3, [r4]
 3601 0412 1068     		ldr	r0, [r2]
 3602 0414 8021     		movs	r1, #128
 3603 0416 0B4A     		ldr	r2, .L439+8
 3604 0418 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3605 041c 0123     		movs	r3, #1
 3606 041e 0020     		movs	r0, #0
 3607 0420 079A     		ldr	r2, [sp, #28]
 3608 0422 82F8A030 		strb	r3, [r2, #160]
 3609 0426 0DF62C1D 		addw	sp, sp, #2348
 3610              		@ sp needed
 3611 042a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3612              	.L436:
 3613 042e 3246     		mov	r2, r6
 3614 0430 4DA9     		add	r1, sp, #308
 3615 0432 0648     		ldr	r0, .L439+16
 3616 0434 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKfj
 3617 0438 B8E7     		b	.L400
 3618              	.L440:
 3619 043a 00BF     		.align	2
 3620              	.L439:
 3621 043c 00000000 		.word	reprap
 3622 0440 08000000 		.word	_ZTV11FixedMatrixIfLj9ELj10EE+8
 3623 0444 54000000 		.word	.LC8
 3624 0448 C8000000 		.word	.LC17
 3625 044c B0000000 		.word	.LC16
 3626              	.L435:
 3627 0450 0BF10103 		add	r3, fp, #1
 3628 0454 5A46     		mov	r2, fp
 3629 0456 6DA9     		add	r1, sp, #436
 3630 0458 3948     		ldr	r0, .L441
 3631 045a FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIfEjj
 3632 045e 3948     		ldr	r0, .L441+4
 3633 0460 5A46     		mov	r2, fp
 3634 0462 24A9     		add	r1, sp, #144
 3635 0464 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKfj
 3636 0468 3748     		ldr	r0, .L441+8
 3637 046a FFF7FEFF 		bl	debugPrintf
 3638 046e 46B3     		cbz	r6, .L394
 3639 0470 0027     		movs	r7, #0
 3640 0472 0B9B     		ldr	r3, [sp, #44]
 3641 0474 DDF858A0 		ldr	r10, [sp, #88]
 3642 0478 03F58078 		add	r8, r3, #256
 3643 047c 0DF59565 		add	r5, sp, #1192
 3644 0480 CDF810B0 		str	fp, [sp, #16]
 3645              	.L395:
 3646 0484 AB46     		mov	fp, r5
 3647 0486 58F8049F 		ldr	r9, [r8, #4]!	@ float
 3648 048a 23AC     		add	r4, sp, #140
ARM GAS  /tmp/ccArai7H.s 			page 65


 3649              	.L393:
 3650 048c 54F8041F 		ldr	r1, [r4, #4]!	@ float
 3651 0490 5BF8040B 		ldr	r0, [fp], #4	@ float
 3652 0494 FFF7FEFF 		bl	__aeabi_fmul
 3653 0498 0146     		mov	r1, r0
 3654 049a 4846     		mov	r0, r9
 3655 049c FFF7FEFF 		bl	__aeabi_fadd
 3656 04a0 A245     		cmp	r10, r4
 3657 04a2 8146     		mov	r9, r0
 3658 04a4 F2D1     		bne	.L393
 3659 04a6 FFF7FEFF 		bl	__aeabi_f2d
 3660 04aa 0137     		adds	r7, r7, #1
 3661 04ac 0246     		mov	r2, r0
 3662 04ae 0B46     		mov	r3, r1
 3663 04b0 2648     		ldr	r0, .L441+12
 3664 04b2 FFF7FEFF 		bl	debugPrintf
 3665 04b6 BE42     		cmp	r6, r7
 3666 04b8 05F12405 		add	r5, r5, #36
 3667 04bc E2D1     		bne	.L395
 3668 04be DDF810B0 		ldr	fp, [sp, #16]
 3669              	.L394:
 3670 04c2 2348     		ldr	r0, .L441+16
 3671 04c4 FFF7FEFF 		bl	debugPrintf
 3672 04c8 EAE6     		b	.L391
 3673              	.L434:
 3674 04ca 431C     		adds	r3, r0, #1
 3675 04cc 0246     		mov	r2, r0
 3676 04ce 6DA9     		add	r1, sp, #436
 3677 04d0 2048     		ldr	r0, .L441+20
 3678 04d2 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIfEjj
 3679 04d6 D9E6     		b	.L390
 3680              	.L433:
 3681 04d8 5B46     		mov	r3, fp
 3682 04da 3246     		mov	r2, r6
 3683 04dc 0A99     		ldr	r1, [sp, #40]
 3684 04de 1E48     		ldr	r0, .L441+24
 3685 04e0 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIfEjj
 3686 04e4 1D4B     		ldr	r3, .L441+28
 3687 04e6 5B6C     		ldr	r3, [r3, #68]
 3688 04e8 03F01003 		and	r3, r3, #16
 3689 04ec 1493     		str	r3, [sp, #80]
 3690 04ee 53E6     		b	.L379
 3691              	.L428:
 3692 04f0 0DF2A441 		addw	r1, sp, #1188
 3693 04f4 DD23     		movs	r3, #221
 3694 04f6 0022     		movs	r2, #0
 3695 04f8 0C46     		mov	r4, r1
 3696 04fa 0A91     		str	r1, [sp, #40]
 3697 04fc 0798     		ldr	r0, [sp, #28]
 3698 04fe C8A9     		add	r1, sp, #800
 3699 0500 C993     		str	r3, [sp, #804]
 3700 0502 8DF8A424 		strb	r2, [sp, #1188]
 3701 0506 C894     		str	r4, [sp, #800]
 3702 0508 FFF7FEFF 		bl	_ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef
 3703 050c 2146     		mov	r1, r4
 3704 050e 1448     		ldr	r0, .L441+32
 3705 0510 FFF7FEFF 		bl	debugPrintf
ARM GAS  /tmp/ccArai7H.s 			page 66


 3706 0514 0023     		movs	r3, #0
 3707 0516 BAF1000F 		cmp	r10, #0
 3708 051a 7FF492AD 		bne	.L373
 3709              	.L431:
 3710 051e 1393     		str	r3, [sp, #76]	@ float
 3711 0520 2DAB     		add	r3, sp, #180
 3712 0522 0693     		str	r3, [sp, #24]
 3713 0524 D4E5     		b	.L375
 3714              	.L369:
 3715 0526 109A     		ldr	r2, [sp, #64]
 3716 0528 1598     		ldr	r0, [sp, #84]
 3717 052a 0E49     		ldr	r1, .L441+36
 3718 052c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3719 0530 0120     		movs	r0, #1
 3720 0532 0DF62C1D 		addw	sp, sp, #2348
 3721              		@ sp needed
 3722 0536 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3723              	.L405:
 3724 053a 0023     		movs	r3, #0
 3725 053c 1D46     		mov	r5, r3
 3726 053e 26E7     		b	.L397
 3727              	.L442:
 3728              		.align	2
 3729              	.L441:
 3730 0540 7C000000 		.word	.LC11
 3731 0544 8C000000 		.word	.LC12
 3732 0548 98000000 		.word	.LC13
 3733 054c A8000000 		.word	.LC15
 3734 0550 A4000000 		.word	.LC14
 3735 0554 6C000000 		.word	.LC10
 3736 0558 58000000 		.word	.LC9
 3737 055c 00000000 		.word	reprap
 3738 0560 54000000 		.word	.LC8
 3739 0564 00000000 		.word	.LC7
 3740              		.size	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21L
 3741              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 3742              		.align	1
 3743              		.p2align 2,,3
 3744              		.weak	_ZN6StringILj220EE6printfEPKcz
 3745              		.syntax unified
 3746              		.thumb
 3747              		.thumb_func
 3748              		.fpu softvfp
 3749              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 3750              	_ZN6StringILj220EE6printfEPKcz:
 3751              		@ args = 4, pretend = 12, frame = 16
 3752              		@ frame_needed = 0, uses_anonymous_args = 1
 3753 0000 0EB4     		push	{r1, r2, r3}
 3754 0002 10B5     		push	{r4, lr}
 3755 0004 DD24     		movs	r4, #221
 3756 0006 85B0     		sub	sp, sp, #20
 3757 0008 07AB     		add	r3, sp, #28
 3758 000a 53F8041B 		ldr	r1, [r3], #4
 3759 000e 0290     		str	r0, [sp, #8]
 3760 0010 1A46     		mov	r2, r3
 3761 0012 02A8     		add	r0, sp, #8
 3762 0014 0193     		str	r3, [sp, #4]
ARM GAS  /tmp/ccArai7H.s 			page 67


 3763 0016 0394     		str	r4, [sp, #12]
 3764 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 3765 001c 05B0     		add	sp, sp, #20
 3766              		@ sp needed
 3767 001e BDE81040 		pop	{r4, lr}
 3768 0022 03B0     		add	sp, sp, #12
 3769 0024 7047     		bx	lr
 3770              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 3771 0026 00BF     		.section	.text._ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 3772              		.align	1
 3773              		.p2align 2,,3
 3774              		.global	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore
 3775              		.syntax unified
 3776              		.thumb
 3777              		.thumb_func
 3778              		.fpu softvfp
 3779              		.type	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore, %function
 3780              	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore:
 3781              		@ args = 0, pretend = 0, frame = 224
 3782              		@ frame_needed = 0, uses_anonymous_args = 0
 3783 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 3784 0004 0D46     		mov	r5, r1
 3785 0006 C4B0     		sub	sp, sp, #272
 3786 0008 0446     		mov	r4, r0
 3787 000a 3349     		ldr	r1, .L456
 3788 000c 2846     		mov	r0, r5
 3789 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3790 0012 10B9     		cbnz	r0, .L455
 3791              	.L446:
 3792 0014 44B0     		add	sp, sp, #272
 3793              		@ sp needed
 3794 0016 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 3795              	.L455:
 3796 001a 0023     		movs	r3, #0
 3797 001c 206A     		ldr	r0, [r4, #32]	@ float
 3798 001e 44AE     		add	r6, sp, #272
 3799 0020 06F8E03D 		strb	r3, [r6, #-224]!
 3800 0024 FFF7FEFF 		bl	__aeabi_f2d
 3801 0028 8046     		mov	r8, r0
 3802 002a 206B     		ldr	r0, [r4, #48]	@ float
 3803 002c 8946     		mov	r9, r1
 3804 002e FFF7FEFF 		bl	__aeabi_f2d
 3805 0032 CDE90A01 		strd	r0, [sp, #40]
 3806 0036 E06A     		ldr	r0, [r4, #44]	@ float
 3807 0038 FFF7FEFF 		bl	__aeabi_f2d
 3808 003c CDE90801 		strd	r0, [sp, #32]
 3809 0040 A06A     		ldr	r0, [r4, #40]	@ float
 3810 0042 FFF7FEFF 		bl	__aeabi_f2d
 3811 0046 CDE90601 		strd	r0, [sp, #24]
 3812 004a 206C     		ldr	r0, [r4, #64]	@ float
 3813 004c FFF7FEFF 		bl	__aeabi_f2d
 3814 0050 CDE90401 		strd	r0, [sp, #16]
 3815 0054 606C     		ldr	r0, [r4, #68]	@ float
 3816 0056 FFF7FEFF 		bl	__aeabi_f2d
 3817 005a CDE90201 		strd	r0, [sp, #8]
 3818 005e 606A     		ldr	r0, [r4, #36]	@ float
 3819 0060 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccArai7H.s 			page 68


 3820 0064 4246     		mov	r2, r8
 3821 0066 CDE90001 		strd	r0, [sp]
 3822 006a 4B46     		mov	r3, r9
 3823 006c 1B49     		ldr	r1, .L456+4
 3824 006e 3046     		mov	r0, r6
 3825 0070 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3826 0074 3146     		mov	r1, r6
 3827 0076 2846     		mov	r0, r5
 3828 0078 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3829 007c 0028     		cmp	r0, #0
 3830 007e C9D0     		beq	.L446
 3831 0080 606B     		ldr	r0, [r4, #52]	@ float
 3832 0082 FFF7FEFF 		bl	__aeabi_f2d
 3833 0086 8046     		mov	r8, r0
 3834 0088 8946     		mov	r9, r1
 3835 008a E06C     		ldr	r0, [r4, #76]	@ float
 3836 008c 1449     		ldr	r1, .L456+8
 3837 008e FFF7FEFF 		bl	__aeabi_fmul
 3838 0092 FFF7FEFF 		bl	__aeabi_f2d
 3839 0096 CDE90601 		strd	r0, [sp, #24]
 3840 009a 1149     		ldr	r1, .L456+8
 3841 009c A06C     		ldr	r0, [r4, #72]	@ float
 3842 009e FFF7FEFF 		bl	__aeabi_fmul
 3843 00a2 FFF7FEFF 		bl	__aeabi_f2d
 3844 00a6 CDE90401 		strd	r0, [sp, #16]
 3845 00aa E06B     		ldr	r0, [r4, #60]	@ float
 3846 00ac FFF7FEFF 		bl	__aeabi_f2d
 3847 00b0 CDE90201 		strd	r0, [sp, #8]
 3848 00b4 A06B     		ldr	r0, [r4, #56]	@ float
 3849 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3850 00ba 4246     		mov	r2, r8
 3851 00bc CDE90001 		strd	r0, [sp]
 3852 00c0 4B46     		mov	r3, r9
 3853 00c2 0849     		ldr	r1, .L456+12
 3854 00c4 3046     		mov	r0, r6
 3855 00c6 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3856 00ca 3146     		mov	r1, r6
 3857 00cc 2846     		mov	r0, r5
 3858 00ce FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3859 00d2 44B0     		add	sp, sp, #272
 3860              		@ sp needed
 3861 00d4 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 3862              	.L457:
 3863              		.align	2
 3864              	.L456:
 3865 00d8 00000000 		.word	.LC18
 3866 00dc 14000000 		.word	.LC19
 3867 00e0 0000C842 		.word	1120403456
 3868 00e4 44000000 		.word	.LC20
 3869              		.size	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21LinearDeltaKine
 3870              		.global	_ZTV21LinearDeltaKinematics
 3871              		.weak	_ZTV11FixedMatrixIfLj32ELj9EE
 3872              		.section	.rodata._ZTV11FixedMatrixIfLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIfLj32ELj9EE,comdat
 3873              		.align	2
 3874              		.type	_ZTV11FixedMatrixIfLj32ELj9EE, %object
 3875              		.size	_ZTV11FixedMatrixIfLj32ELj9EE, 32
 3876              	_ZTV11FixedMatrixIfLj32ELj9EE:
ARM GAS  /tmp/ccArai7H.s 			page 69


 3877 0000 00000000 		.word	0
 3878 0004 00000000 		.word	0
 3879 0008 00000000 		.word	_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv
 3880 000c 00000000 		.word	_ZNK11FixedMatrixIfLj32ELj9EE4colsEv
 3881 0010 00000000 		.word	_ZN11FixedMatrixIfLj32ELj9EEclEjj
 3882 0014 00000000 		.word	_ZNK11FixedMatrixIfLj32ELj9EEclEjj
 3883 0018 00000000 		.word	_ZN11FixedMatrixIfLj32ELj9EED1Ev
 3884 001c 00000000 		.word	_ZN11FixedMatrixIfLj32ELj9EED0Ev
 3885              		.weak	_ZTV11FixedMatrixIfLj9ELj10EE
 3886              		.section	.rodata._ZTV11FixedMatrixIfLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIfLj9ELj10EE,comdat
 3887              		.align	2
 3888              		.type	_ZTV11FixedMatrixIfLj9ELj10EE, %object
 3889              		.size	_ZTV11FixedMatrixIfLj9ELj10EE, 32
 3890              	_ZTV11FixedMatrixIfLj9ELj10EE:
 3891 0000 00000000 		.word	0
 3892 0004 00000000 		.word	0
 3893 0008 00000000 		.word	_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv
 3894 000c 00000000 		.word	_ZNK11FixedMatrixIfLj9ELj10EE4colsEv
 3895 0010 00000000 		.word	_ZN11FixedMatrixIfLj9ELj10EEclEjj
 3896 0014 00000000 		.word	_ZNK11FixedMatrixIfLj9ELj10EEclEjj
 3897 0018 00000000 		.word	_ZN11FixedMatrixIfLj9ELj10EED1Ev
 3898 001c 00000000 		.word	_ZN11FixedMatrixIfLj9ELj10EED0Ev
 3899              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3900              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3901              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3902              	_ZL28cpu_irq_prev_interrupt_state:
 3903 0000 00       		.space	1
 3904              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3905              		.align	2
 3906              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3907              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3908              	_ZL32cpu_irq_critical_section_counter:
 3909 0000 00000000 		.space	4
 3910              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 3911              		.align	2
 3912              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 3913              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 3914              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 3915 0000 00000000 		.space	4
 3916              		.section	.rodata._ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 3917              		.align	2
 3918              	.LC7:
 3919 0000 44656C74 		.ascii	"Delta calibration with %d factors requested but onl"
 3919      61206361 
 3919      6C696272 
 3919      6174696F 
 3919      6E207769 
 3920 0033 7920332C 		.ascii	"y 3, 4, 6, 7, 8 and 9 supported\000"
 3920      20342C20 
 3920      362C2037 
 3920      2C203820 
 3920      616E6420 
 3921 0053 00       		.space	1
 3922              	.LC8:
 3923 0054 25730A00 		.ascii	"%s\012\000"
 3924              	.LC9:
 3925 0058 44657269 		.ascii	"Derivative matrix\000"
ARM GAS  /tmp/ccArai7H.s 			page 70


 3925      76617469 
 3925      7665206D 
 3925      61747269 
 3925      7800
 3926 006a 0000     		.space	2
 3927              	.LC10:
 3928 006c 4E6F726D 		.ascii	"Normal matrix\000"
 3928      616C206D 
 3928      61747269 
 3928      7800
 3929 007a 0000     		.space	2
 3930              	.LC11:
 3931 007c 536F6C76 		.ascii	"Solved matrix\000"
 3931      6564206D 
 3931      61747269 
 3931      7800
 3932 008a 0000     		.space	2
 3933              	.LC12:
 3934 008c 536F6C75 		.ascii	"Solution\000"
 3934      74696F6E 
 3934      00
 3935 0095 000000   		.space	3
 3936              	.LC13:
 3937 0098 52657369 		.ascii	"Residuals:\000"
 3937      6475616C 
 3937      733A00
 3938 00a3 00       		.space	1
 3939              	.LC14:
 3940 00a4 0A00     		.ascii	"\012\000"
 3941 00a6 0000     		.space	2
 3942              	.LC15:
 3943 00a8 2025372E 		.ascii	" %7.4f\000"
 3943      346600
 3944 00af 00       		.space	1
 3945              	.LC16:
 3946 00b0 45787065 		.ascii	"Expected probe error\000"
 3946      63746564 
 3946      2070726F 
 3946      62652065 
 3946      72726F72 
 3947 00c5 000000   		.space	3
 3948              	.LC17:
 3949 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 3949      62726174 
 3949      65642025 
 3949      64206661 
 3949      63746F72 
 3950 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 3950      20252E33 
 3950      66206166 
 3950      74657220 
 3950      252E3366 
 3951              		.section	.rodata._ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 3952              		.align	2
 3953              	.LC4:
 3954 0000 44696167 		.ascii	"Diagonal %.3f, delta radius %.3f, homed height %.3f"
 3954      6F6E616C 
ARM GAS  /tmp/ccArai7H.s 			page 71


 3954      20252E33 
 3954      662C2064 
 3954      656C7461 
 3955 0033 2C206265 		.ascii	", bed radius %.1f, X %.3f\302\260, Y %.3f\302\260, "
 3955      64207261 
 3955      64697573 
 3955      20252E31 
 3955      662C2058 
 3956 005a 5A20252E 		.ascii	"Z %.3f\302\260\000"
 3956      3366C2B0 
 3956      00
 3957 0063 00       		.space	1
 3958              	.LC5:
 3959 0064 456E6473 		.ascii	"Endstop adjustments X%.2f Y%.2f Z%.2f, tilt X%.2f%%"
 3959      746F7020 
 3959      61646A75 
 3959      73746D65 
 3959      6E747320 
 3960 0097 2059252E 		.ascii	" Y%.2f%%\000"
 3960      32662525 
 3960      00
 3961              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 3962              		.align	2
 3963              	.LC0:
 3964 0000 58595A55 		.ascii	"XYZUVWABC\000"
 3964      56574142 
 3964      4300
 3965              		.section	.rodata._ZNK21LinearDeltaKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 3966              		.align	2
 3967              	.LC6:
 3968 0000 53746F70 		.ascii	"Stops X%.3f Y%.3f Z%.3f height %.3f diagonal %.3f r"
 3968      73205825 
 3968      2E336620 
 3968      59252E33 
 3968      66205A25 
 3969 0033 61646975 		.ascii	"adius %.3f xcorr %.2f ycorr %.2f zcorr %.2f xtilt %"
 3969      7320252E 
 3969      33662078 
 3969      636F7272 
 3969      20252E32 
 3970 0066 2E336625 		.ascii	".3f%% ytilt %.3f%%\012\000"
 3970      25207974 
 3970      696C7420 
 3970      252E3366 
 3970      25250A00 
 3971              		.section	.rodata._ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm.str1.4,"aMS",%progbits,1
 3972              		.align	2
 3973              	.LC3:
 3974 0000 686F6D65 		.ascii	"homedelta.g\000"
 3974      64656C74 
 3974      612E6700 
 3975              		.section	.rodata._ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 3976              		.align	2
 3977              	.LC18:
 3978 0000 3B204465 		.ascii	"; Delta parameters\012\000"
 3978      6C746120 
 3978      70617261 
ARM GAS  /tmp/ccArai7H.s 			page 72


 3978      6D657465 
 3978      72730A00 
 3979              	.LC19:
 3980 0014 4D363635 		.ascii	"M665 L%.3f R%.3f H%.3f B%.1f X%.3f Y%.3f Z%.3f\012\000"
 3980      204C252E 
 3980      33662052 
 3980      252E3366 
 3980      2048252E 
 3981              	.LC20:
 3982 0044 4D363636 		.ascii	"M666 X%.3f Y%.3f Z%.3f A%.2f B%.2f\012\000"
 3982      2058252E 
 3982      33662059 
 3982      252E3366 
 3982      205A252E 
 3983              		.section	.rodata._ZNK21LinearDeltaKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 3984              		.align	2
 3985              	.LC1:
 3986 0000 64656C74 		.ascii	"delta\000"
 3986      6100
 3987 0006 0000     		.space	2
 3988              	.LC2:
 3989 0008 4C696E65 		.ascii	"Linear delta\000"
 3989      61722064 
 3989      656C7461 
 3989      00
 3990              		.section	.rodata._ZTV21LinearDeltaKinematics,"a",%progbits
 3991              		.align	2
 3992              		.set	.LANCHOR0,. + 0
 3993              		.type	_ZTV21LinearDeltaKinematics, %object
 3994              		.size	_ZTV21LinearDeltaKinematics, 116
 3995              	_ZTV21LinearDeltaKinematics:
 3996 0000 00000000 		.word	0
 3997 0004 00000000 		.word	0
 3998 0008 00000000 		.word	_ZNK21LinearDeltaKinematics7GetNameEb
 3999 000c 00000000 		.word	_ZN21LinearDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 4000 0010 00000000 		.word	_ZNK21LinearDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 4001 0014 00000000 		.word	_ZNK21LinearDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf
 4002 0018 00000000 		.word	_ZNK21LinearDeltaKinematics23SupportsAutoCalibrationEv
 4003 001c 00000000 		.word	_ZN21LinearDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 4004 0020 00000000 		.word	_ZN21LinearDeltaKinematics22SetCalibrationDefaultsEv
 4005 0024 00000000 		.word	_ZNK21LinearDeltaKinematics26WriteCalibrationParametersEP9FileStore
 4006 0028 00000000 		.word	_ZNK21LinearDeltaKinematics17GetTiltCorrectionEj
 4007 002c 00000000 		.word	_ZNK21LinearDeltaKinematics11IsReachableEffb
 4008 0030 00000000 		.word	_ZNK21LinearDeltaKinematics13LimitPositionEPfjmb
 4009 0034 00000000 		.word	_ZNK21LinearDeltaKinematics23AxesToHomeBeforeProbingEv
 4010 0038 00000000 		.word	_ZNK21LinearDeltaKinematics25GetAssumedInitialPositionEjPf
 4011 003c 00000000 		.word	_ZNK21LinearDeltaKinematics13GetMotionTypeEj
 4012 0040 00000000 		.word	_ZNK21LinearDeltaKinematics16NumHomingButtonsEj
 4013 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 4014 0048 00000000 		.word	_ZNK21LinearDeltaKinematics17GetHomingFileNameEmmjRm
 4015 004c 00000000 		.word	_ZNK21LinearDeltaKinematics24QueryTerminateHomingMoveEj
 4016 0050 00000000 		.word	_ZNK21LinearDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 4017 0054 00000000 		.word	_ZNK21LinearDeltaKinematics13GetHomingModeEv
 4018 0058 00000000 		.word	_ZNK21LinearDeltaKinematics16AxesAssumedHomedEm
 4019 005c 00000000 		.word	_ZNK21LinearDeltaKinematics15MustBeHomedAxesEmb
 4020 0060 00000000 		.word	_ZNK21LinearDeltaKinematics19WriteResumeSettingsEP9FileStore
 4021 0064 00000000 		.word	_ZNK21LinearDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf
ARM GAS  /tmp/ccArai7H.s 			page 73


 4022 0068 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 4023 006c 00000000 		.word	_ZN21LinearDeltaKinematicsD1Ev
 4024 0070 00000000 		.word	_ZN21LinearDeltaKinematicsD0Ev
 4025              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
