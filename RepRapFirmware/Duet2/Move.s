ARM GAS  /tmp/ccPDZFMs.s 			page 1


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
  13              		.file	"Move.cpp"
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
  46              		.section	.text._ZNK10Kinematics19WriteResumeSettingsEP9FileStore,"axG",%progbits,_ZNK10Kinematics1
  47              		.align	1
  48              		.p2align 2,,3
  49              		.weak	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, %function
  55              	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccPDZFMs.s 			page 2


  58              		@ link register save eliminated.
  59 0000 0120     		movs	r0, #1
  60 0002 7047     		bx	lr
  61              		.size	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, .-_ZNK10Kinematics19WriteResumeSettingsEP
  62              		.section	.text._ZNK4Move14IsRawMotorMoveEh.part.6,"ax",%progbits
  63              		.align	1
  64              		.p2align 2,,3
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZNK4Move14IsRawMotorMoveEh.part.6, %function
  70              	_ZNK4Move14IsRawMotorMoveEh.part.6:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 08B5     		push	{r3, lr}
  74 0002 D0F8580A 		ldr	r0, [r0, #2648]
  75 0006 0368     		ldr	r3, [r0]
  76 0008 1B6D     		ldr	r3, [r3, #80]
  77 000a 9847     		blx	r3
  78 000c 0030     		adds	r0, r0, #0
  79 000e 18BF     		it	ne
  80 0010 0120     		movne	r0, #1
  81 0012 08BD     		pop	{r3, pc}
  82              		.size	_ZNK4Move14IsRawMotorMoveEh.part.6, .-_ZNK4Move14IsRawMotorMoveEh.part.6
  83              		.section	.text._ZN4MoveC2Ev,"ax",%progbits
  84              		.align	1
  85              		.p2align 2,,3
  86              		.global	_ZN4MoveC2Ev
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu fpv4-sp-d16
  91              		.type	_ZN4MoveC2Ev, %function
  92              	_ZN4MoveC2Ev:
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  96 0002 00F1E401 		add	r1, r0, #228
  97 0006 00F1E802 		add	r2, r0, #232
  98 000a 00F1EC03 		add	r3, r0, #236
  99 000e 0025     		movs	r5, #0
 100 0010 0746     		mov	r7, r0
 101 0012 C0E93C12 		strd	r1, r2, [r0, #240]
 102 0016 C0F8F830 		str	r3, [r0, #248]
 103 001a 0560     		str	r5, [r0]
 104 001c 0574     		strb	r5, [r0, #16]
 105 001e FC30     		adds	r0, r0, #252
 106 0020 FFF7FEFF 		bl	_ZN9HeightMapC1Ev
 107 0024 07F64C00 		addw	r0, r7, #2124
 108 0028 FFF7FEFF 		bl	_ZN19RandomProbePointSetC1Ev
 109 002c C7F8605A 		str	r5, [r7, #2656]
 110 0030 C7F8645A 		str	r5, [r7, #2660]
 111 0034 2846     		mov	r0, r5
 112 0036 FFF7FEFF 		bl	_ZN10Kinematics6CreateE14KinematicsType
 113 003a C7F8580A 		str	r0, [r7, #2648]
 114 003e 4FF49470 		mov	r0, #296
ARM GAS  /tmp/ccPDZFMs.s 			page 3


 115 0042 FFF7FEFF 		bl	_Znwj
 116 0046 2946     		mov	r1, r5
 117 0048 0446     		mov	r4, r0
 118 004a 1D25     		movs	r5, #29
 119 004c FFF7FEFF 		bl	_ZN3DDAC1EPS_
 120 0050 7C60     		str	r4, [r7, #4]
 121 0052 BC60     		str	r4, [r7, #8]
 122              	.L8:
 123 0054 4FF49470 		mov	r0, #296
 124 0058 FFF7FEFF 		bl	_Znwj
 125 005c 2146     		mov	r1, r4
 126 005e 0646     		mov	r6, r0
 127 0060 FFF7FEFF 		bl	_ZN3DDAC1EPS_
 128 0064 013D     		subs	r5, r5, #1
 129 0066 6660     		str	r6, [r4, #4]
 130 0068 3446     		mov	r4, r6
 131 006a F3D1     		bne	.L8
 132 006c 7B68     		ldr	r3, [r7, #4]
 133 006e 1E60     		str	r6, [r3]
 134 0070 7B68     		ldr	r3, [r7, #4]
 135 0072 7360     		str	r3, [r6, #4]
 136 0074 F020     		movs	r0, #240
 137 0076 FFF7FEFF 		bl	_ZN13DriveMovement15InitialAllocateEj
 138 007a 3846     		mov	r0, r7
 139 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 140              		.size	_ZN4MoveC2Ev, .-_ZN4MoveC2Ev
 141              		.global	_ZN4MoveC1Ev
 142              		.thumb_set _ZN4MoveC1Ev,_ZN4MoveC2Ev
 143 007e 00BF     		.section	.text._ZN4Move4ExitEv,"ax",%progbits
 144              		.align	1
 145              		.p2align 2,,3
 146              		.global	_ZN4Move4ExitEv
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu fpv4-sp-d16
 151              		.type	_ZN4Move4ExitEv, %function
 152              	_ZN4Move4ExitEv:
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155 0000 10B5     		push	{r4, lr}
 156 0002 0446     		mov	r4, r0
 157 0004 FFF7FEFF 		bl	_ZN8Platform20DisableStepInterruptEv
 158 0008 0023     		movs	r3, #0
 159 000a 2360     		str	r3, [r4]
 160 000c A268     		ldr	r2, [r4, #8]
 161 000e 6368     		ldr	r3, [r4, #4]
 162 0010 9A42     		cmp	r2, r3
 163 0012 09D0     		beq	.L15
 164 0014 0421     		movs	r1, #4
 165              	.L12:
 166 0016 A368     		ldr	r3, [r4, #8]
 167 0018 1972     		strb	r1, [r3, #8]
 168 001a A268     		ldr	r2, [r4, #8]
 169 001c 6368     		ldr	r3, [r4, #4]
 170 001e 1268     		ldr	r2, [r2]
 171 0020 A260     		str	r2, [r4, #8]
ARM GAS  /tmp/ccPDZFMs.s 			page 4


 172 0022 A268     		ldr	r2, [r4, #8]
 173 0024 9A42     		cmp	r2, r3
 174 0026 F6D1     		bne	.L12
 175              	.L15:
 176 0028 E068     		ldr	r0, [r4, #12]
 177 002a 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 178 002c 042B     		cmp	r3, #4
 179 002e 07D1     		bne	.L14
 180              	.L13:
 181 0030 FFF7FEFF 		bl	_ZN3DDA4FreeEv
 182 0034 E368     		ldr	r3, [r4, #12]
 183 0036 1868     		ldr	r0, [r3]
 184 0038 E060     		str	r0, [r4, #12]
 185 003a 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 186 003c 042B     		cmp	r3, #4
 187 003e F7D0     		beq	.L13
 188              	.L14:
 189 0040 0023     		movs	r3, #0
 190 0042 2374     		strb	r3, [r4, #16]
 191 0044 10BD     		pop	{r4, pc}
 192              		.size	_ZN4Move4ExitEv, .-_ZN4Move4ExitEv
 193 0046 00BF     		.section	.text._ZN4Move16PushBabySteppingEf,"ax",%progbits
 194              		.align	1
 195              		.p2align 2,,3
 196              		.global	_ZN4Move16PushBabySteppingEf
 197              		.syntax unified
 198              		.thumb
 199              		.thumb_func
 200              		.fpu fpv4-sp-d16
 201              		.type	_ZN4Move16PushBabySteppingEf, %function
 202              	_ZN4Move16PushBabySteppingEf:
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205              		@ link register save eliminated.
 206 0000 4068     		ldr	r0, [r0, #4]
 207 0002 FFF7FEBF 		b	_ZN3DDA19AdvanceBabySteppingEf
 208              		.size	_ZN4Move16PushBabySteppingEf, .-_ZN4Move16PushBabySteppingEf
 209 0006 00BF     		.section	.text._ZN4Move13SetKinematicsE14KinematicsType,"ax",%progbits
 210              		.align	1
 211              		.p2align 2,,3
 212              		.global	_ZN4Move13SetKinematicsE14KinematicsType
 213              		.syntax unified
 214              		.thumb
 215              		.thumb_func
 216              		.fpu fpv4-sp-d16
 217              		.type	_ZN4Move13SetKinematicsE14KinematicsType, %function
 218              	_ZN4Move13SetKinematicsE14KinematicsType:
 219              		@ args = 0, pretend = 0, frame = 0
 220              		@ frame_needed = 0, uses_anonymous_args = 0
 221 0000 38B5     		push	{r3, r4, r5, lr}
 222 0002 D0F8583A 		ldr	r3, [r0, #2648]
 223 0006 9B7B     		ldrb	r3, [r3, #14]	@ zero_extendqisi2
 224 0008 8B42     		cmp	r3, r1
 225 000a 0FD0     		beq	.L27
 226 000c 0446     		mov	r4, r0
 227 000e 0846     		mov	r0, r1
 228 0010 FFF7FEFF 		bl	_ZN10Kinematics6CreateE14KinematicsType
ARM GAS  /tmp/ccPDZFMs.s 			page 5


 229 0014 0546     		mov	r5, r0
 230 0016 40B1     		cbz	r0, .L25
 231 0018 D4F8580A 		ldr	r0, [r4, #2648]
 232 001c 10B1     		cbz	r0, .L26
 233 001e 0368     		ldr	r3, [r0]
 234 0020 5B6F     		ldr	r3, [r3, #116]
 235 0022 9847     		blx	r3
 236              	.L26:
 237 0024 C4F8585A 		str	r5, [r4, #2648]
 238 0028 0120     		movs	r0, #1
 239              	.L25:
 240 002a 38BD     		pop	{r3, r4, r5, pc}
 241              	.L27:
 242 002c 0120     		movs	r0, #1
 243 002e 38BD     		pop	{r3, r4, r5, pc}
 244              		.size	_ZN4Move13SetKinematicsE14KinematicsType, .-_ZN4Move13SetKinematicsE14KinematicsType
 245              		.section	.text._ZNK4Move14IsRawMotorMoveEh,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZNK4Move14IsRawMotorMoveEh
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZNK4Move14IsRawMotorMoveEh, %function
 254              	_ZNK4Move14IsRawMotorMoveEh:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258 0000 0229     		cmp	r1, #2
 259 0002 07D0     		beq	.L35
 260 0004 01F0FD01 		and	r1, r1, #253
 261 0008 0129     		cmp	r1, #1
 262 000a 01D0     		beq	.L37
 263 000c 0020     		movs	r0, #0
 264 000e 7047     		bx	lr
 265              	.L37:
 266 0010 FFF7FEBF 		b	_ZNK4Move14IsRawMotorMoveEh.part.6
 267              	.L35:
 268 0014 0120     		movs	r0, #1
 269 0016 7047     		bx	lr
 270              		.size	_ZNK4Move14IsRawMotorMoveEh, .-_ZNK4Move14IsRawMotorMoveEh
 271              		.section	.text._ZNK4Move22IsAccessibleProbePointEff,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	_ZNK4Move22IsAccessibleProbePointEff
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv4-sp-d16
 279              		.type	_ZNK4Move22IsAccessibleProbePointEff, %function
 280              	_ZNK4Move22IsAccessibleProbePointEff:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283 0000 10B5     		push	{r4, lr}
 284 0002 2DED028B 		vpush.64	{d8}
 285 0006 0F4B     		ldr	r3, .L40
ARM GAS  /tmp/ccPDZFMs.s 			page 6


 286 0008 1B68     		ldr	r3, [r3]	@ unaligned
 287 000a 0446     		mov	r4, r0
 288 000c 93F89410 		ldrb	r1, [r3, #148]	@ zero_extendqisi2
 289 0010 1846     		mov	r0, r3
 290 0012 B0EE408A 		vmov.f32	s16, s0
 291 0016 F0EE608A 		vmov.f32	s17, s1
 292 001a FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 293 001e D0ED020A 		vldr.32	s1, [r0, #8]
 294 0022 90ED010A 		vldr.32	s0, [r0, #4]
 295 0026 D4F8583A 		ldr	r3, [r4, #2648]
 296 002a 78EEE00A 		vsub.f32	s1, s17, s1
 297 002e 38EE400A 		vsub.f32	s0, s16, s0
 298 0032 BDEC028B 		vldm	sp!, {d8}
 299 0036 1A68     		ldr	r2, [r3]
 300 0038 1846     		mov	r0, r3
 301 003a 526A     		ldr	r2, [r2, #36]
 302 003c 0021     		movs	r1, #0
 303 003e BDE81040 		pop	{r4, lr}
 304 0042 1047     		bx	r2
 305              	.L41:
 306              		.align	2
 307              	.L40:
 308 0044 00000000 		.word	reprap
 309              		.size	_ZNK4Move22IsAccessibleProbePointEff, .-_ZNK4Move22IsAccessibleProbePointEff
 310              		.global	__aeabi_f2d
 311              		.section	.text._ZN4Move11DiagnosticsE11MessageType,"ax",%progbits
 312              		.align	1
 313              		.p2align 2,,3
 314              		.global	_ZN4Move11DiagnosticsE11MessageType
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu fpv4-sp-d16
 319              		.type	_ZN4Move11DiagnosticsE11MessageType, %function
 320              	_ZN4Move11DiagnosticsE11MessageType:
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 324 0004 DFF814A1 		ldr	r10, .L51+40
 325 0008 3A4A     		ldr	r2, .L51
 326 000a DAF80060 		ldr	r6, [r10]
 327 000e DFF81081 		ldr	r8, .L51+44
 328 0012 394D     		ldr	r5, .L51+4
 329 0014 DFF80C91 		ldr	r9, .L51+48
 330 0018 88B0     		sub	sp, sp, #32
 331 001a 0446     		mov	r4, r0
 332 001c 3046     		mov	r0, r6
 333 001e 0F46     		mov	r7, r1
 334 0020 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 335 0024 D4E90502 		ldrd	r0, r2, [r4, #20]
 336 0028 D8F80030 		ldr	r3, [r8]
 337 002c 616A     		ldr	r1, [r4, #36]
 338 002e 0692     		str	r2, [sp, #24]
 339 0030 E269     		ldr	r2, [r4, #28]
 340 0032 0590     		str	r0, [sp, #20]
 341 0034 D4F85C0A 		ldr	r0, [r4, #2652]
 342 0038 0491     		str	r1, [sp, #16]
ARM GAS  /tmp/ccPDZFMs.s 			page 7


 343 003a 0192     		str	r2, [sp, #4]
 344 003c 2A68     		ldr	r2, [r5]
 345 003e D9F80010 		ldr	r1, [r9]
 346 0042 0090     		str	r0, [sp]
 347 0044 CDE90221 		strd	r2, r1, [sp, #8]
 348 0048 3046     		mov	r0, r6
 349 004a 3946     		mov	r1, r7
 350 004c 2B4A     		ldr	r2, .L51+8
 351 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 352 0052 2968     		ldr	r1, [r5]
 353 0054 D4F8642A 		ldr	r2, [r4, #2660]
 354 0058 D4F8603A 		ldr	r3, [r4, #2656]
 355 005c DAF80000 		ldr	r0, [r10]
 356 0060 0092     		str	r2, [sp]
 357 0062 0025     		movs	r5, #0
 358 0064 C9F80010 		str	r1, [r9]
 359 0068 254A     		ldr	r2, .L51+12
 360 006a 6561     		str	r5, [r4, #20]
 361 006c 3946     		mov	r1, r7
 362 006e C4E90655 		strd	r5, r5, [r4, #24]
 363 0072 6562     		str	r5, [r4, #36]
 364 0074 C8F80050 		str	r5, [r8]
 365 0078 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 366 007c 3046     		mov	r0, r6
 367 007e 3946     		mov	r1, r7
 368 0080 204A     		ldr	r2, .L51+16
 369 0082 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 370 0086 94F84C3A 		ldrb	r3, [r4, #2636]	@ zero_extendqisi2
 371 008a 6BBB     		cbnz	r3, .L49
 372 008c D4F84C38 		ldr	r3, [r4, #2124]
 373 0090 23BB     		cbnz	r3, .L50
 374 0092 1D4A     		ldr	r2, .L51+20
 375 0094 3946     		mov	r1, r7
 376 0096 3046     		mov	r0, r6
 377 0098 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 378              	.L44:
 379 009c 1B4A     		ldr	r2, .L51+24
 380 009e DFF88880 		ldr	r8, .L51+52
 381 00a2 3946     		mov	r1, r7
 382 00a4 3046     		mov	r0, r6
 383 00a6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 384 00aa 04F51565 		add	r5, r4, #2384
 385 00ae 04F66414 		addw	r4, r4, #2404
 386              	.L46:
 387 00b2 55F8040B 		ldr	r0, [r5], #4	@ float
 388 00b6 FFF7FEFF 		bl	__aeabi_f2d
 389 00ba 4246     		mov	r2, r8
 390 00bc CDE90001 		strd	r0, [sp]
 391 00c0 3946     		mov	r1, r7
 392 00c2 3046     		mov	r0, r6
 393 00c4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 394 00c8 A542     		cmp	r5, r4
 395 00ca F2D1     		bne	.L46
 396 00cc 104A     		ldr	r2, .L51+28
 397 00ce 3946     		mov	r1, r7
 398 00d0 3046     		mov	r0, r6
 399 00d2 08B0     		add	sp, sp, #32
ARM GAS  /tmp/ccPDZFMs.s 			page 8


 400              		@ sp needed
 401 00d4 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 402 00d8 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 403              	.L50:
 404 00dc 0D4A     		ldr	r2, .L51+32
 405 00de 3946     		mov	r1, r7
 406 00e0 3046     		mov	r0, r6
 407 00e2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 408 00e6 D9E7     		b	.L44
 409              	.L49:
 410 00e8 0B4A     		ldr	r2, .L51+36
 411 00ea 3946     		mov	r1, r7
 412 00ec 3046     		mov	r0, r6
 413 00ee FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 414 00f2 D3E7     		b	.L44
 415              	.L52:
 416              		.align	2
 417              	.L51:
 418 00f4 00000000 		.word	.LC0
 419 00f8 00000000 		.word	_ZN13DriveMovement7numFreeE
 420 00fc 10000000 		.word	.LC1
 421 0100 7C000000 		.word	.LC2
 422 0104 A8000000 		.word	.LC3
 423 0108 D8000000 		.word	.LC6
 424 010c E0000000 		.word	.LC7
 425 0110 FC000000 		.word	.LC9
 426 0114 CC000000 		.word	.LC5
 427 0118 C4000000 		.word	.LC4
 428 011c 00000000 		.word	reprap
 429 0120 00000000 		.word	_ZN3DDA10numHiccupsE
 430 0124 00000000 		.word	_ZN13DriveMovement7minFreeE
 431 0128 F4000000 		.word	.LC8
 432              		.size	_ZN4Move11DiagnosticsE11MessageType, .-_ZN4Move11DiagnosticsE11MessageType
 433              		.section	.text._ZN4Move12SetPositionsEPKf,"ax",%progbits
 434              		.align	1
 435              		.p2align 2,,3
 436              		.global	_ZN4Move12SetPositionsEPKf
 437              		.syntax unified
 438              		.thumb
 439              		.thumb_func
 440              		.fpu fpv4-sp-d16
 441              		.type	_ZN4Move12SetPositionsEPKf, %function
 442              	_ZN4Move12SetPositionsEPKf:
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 0, uses_anonymous_args = 0
 445              		@ link register save eliminated.
 446 0000 8368     		ldr	r3, [r0, #8]
 447 0002 4268     		ldr	r2, [r0, #4]
 448 0004 9342     		cmp	r3, r2
 449 0006 06D0     		beq	.L55
 450              	.L54:
 451 0008 064B     		ldr	r3, .L56
 452 000a 074A     		ldr	r2, .L56+4
 453 000c 1868     		ldr	r0, [r3]
 454 000e 40F2B511 		movw	r1, #437
 455 0012 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 456              	.L55:
ARM GAS  /tmp/ccPDZFMs.s 			page 9


 457 0016 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 458 0018 002A     		cmp	r2, #0
 459 001a F5D1     		bne	.L54
 460 001c 5868     		ldr	r0, [r3, #4]
 461 001e 0C22     		movs	r2, #12
 462 0020 FFF7FEBF 		b	_ZN3DDA12SetPositionsEPKfj
 463              	.L57:
 464              		.align	2
 465              	.L56:
 466 0024 00000000 		.word	reprap
 467 0028 00000000 		.word	.LC10
 468              		.size	_ZN4Move12SetPositionsEPKf, .-_ZN4Move12SetPositionsEPKf
 469              		.section	.text._ZN4Move22MotorEndPointToMachineEjf,"ax",%progbits
 470              		.align	1
 471              		.p2align 2,,3
 472              		.global	_ZN4Move22MotorEndPointToMachineEjf
 473              		.syntax unified
 474              		.thumb
 475              		.thumb_func
 476              		.fpu fpv4-sp-d16
 477              		.type	_ZN4Move22MotorEndPointToMachineEjf, %function
 478              	_ZN4Move22MotorEndPointToMachineEjf:
 479              		@ args = 0, pretend = 0, frame = 0
 480              		@ frame_needed = 0, uses_anonymous_args = 0
 481              		@ link register save eliminated.
 482 0000 044B     		ldr	r3, .L59
 483 0002 1B68     		ldr	r3, [r3]
 484 0004 03EB8000 		add	r0, r3, r0, lsl #2
 485 0008 D0ED6A7A 		vldr.32	s15, [r0, #424]
 486 000c 20EE270A 		vmul.f32	s0, s0, s15
 487 0010 FFF7FEBF 		b	lrintf
 488              	.L60:
 489              		.align	2
 490              	.L59:
 491 0014 00000000 		.word	reprap
 492              		.size	_ZN4Move22MotorEndPointToMachineEjf, .-_ZN4Move22MotorEndPointToMachineEjf
 493              		.section	.text._ZNK4Move21MotorStepsToCartesianEPKljjPf,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	_ZNK4Move21MotorStepsToCartesianEPKljjPf
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu fpv4-sp-d16
 501              		.type	_ZNK4Move21MotorStepsToCartesianEPKljjPf, %function
 502              	_ZNK4Move21MotorStepsToCartesianEPKljjPf:
 503              		@ args = 4, pretend = 0, frame = 0
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505 0000 30B5     		push	{r4, r5, lr}
 506 0002 084D     		ldr	r5, .L63
 507 0004 D0F8580A 		ldr	r0, [r0, #2648]
 508 0008 2D68     		ldr	r5, [r5]
 509 000a 0468     		ldr	r4, [r0]
 510 000c 83B0     		sub	sp, sp, #12
 511 000e 0093     		str	r3, [sp]
 512 0010 069B     		ldr	r3, [sp, #24]
 513 0012 0193     		str	r3, [sp, #4]
ARM GAS  /tmp/ccPDZFMs.s 			page 10


 514 0014 E468     		ldr	r4, [r4, #12]
 515 0016 1346     		mov	r3, r2
 516 0018 05F5D472 		add	r2, r5, #424
 517 001c A047     		blx	r4
 518 001e 03B0     		add	sp, sp, #12
 519              		@ sp needed
 520 0020 30BD     		pop	{r4, r5, pc}
 521              	.L64:
 522 0022 00BF     		.align	2
 523              	.L63:
 524 0024 00000000 		.word	reprap
 525              		.size	_ZNK4Move21MotorStepsToCartesianEPKljjPf, .-_ZNK4Move21MotorStepsToCartesianEPKljjPf
 526              		.section	.text._ZNK4Move21CartesianToMotorStepsEPKfPlb,"ax",%progbits
 527              		.align	1
 528              		.p2align 2,,3
 529              		.global	_ZNK4Move21CartesianToMotorStepsEPKfPlb
 530              		.syntax unified
 531              		.thumb
 532              		.thumb_func
 533              		.fpu fpv4-sp-d16
 534              		.type	_ZNK4Move21CartesianToMotorStepsEPKfPlb, %function
 535              	_ZNK4Move21CartesianToMotorStepsEPKfPlb:
 536              		@ args = 0, pretend = 0, frame = 0
 537              		@ frame_needed = 0, uses_anonymous_args = 0
 538 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 539 0004 284E     		ldr	r6, .L71
 540 0006 D0F8580A 		ldr	r0, [r0, #2648]
 541 000a 3569     		ldr	r5, [r6, #16]
 542 000c D0F800C0 		ldr	ip, [r0]
 543 0010 D5F89C72 		ldr	r7, [r5, #668]
 544 0014 88B0     		sub	sp, sp, #32
 545 0016 1446     		mov	r4, r2
 546 0018 0293     		str	r3, [sp, #8]
 547 001a 0192     		str	r2, [sp, #4]
 548 001c D5F89832 		ldr	r3, [r5, #664]
 549 0020 3268     		ldr	r2, [r6]
 550 0022 0093     		str	r3, [sp]
 551 0024 DCF80850 		ldr	r5, [ip, #8]
 552 0028 3B46     		mov	r3, r7
 553 002a 02F5D472 		add	r2, r2, #424
 554 002e 8A46     		mov	r10, r1
 555 0030 A847     		blx	r5
 556 0032 B36C     		ldr	r3, [r6, #72]
 557 0034 03F05003 		and	r3, r3, #80
 558 0038 502B     		cmp	r3, #80
 559 003a 0546     		mov	r5, r0
 560 003c 03D0     		beq	.L69
 561 003e 2846     		mov	r0, r5
 562 0040 08B0     		add	sp, sp, #32
 563              		@ sp needed
 564 0042 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 565              	.L69:
 566 0046 DAF80000 		ldr	r0, [r10]	@ float
 567 004a FFF7FEFF 		bl	__aeabi_f2d
 568 004e 0646     		mov	r6, r0
 569 0050 DAF80400 		ldr	r0, [r10, #4]	@ float
 570 0054 0F46     		mov	r7, r1
ARM GAS  /tmp/ccPDZFMs.s 			page 11


 571 0056 FFF7FEFF 		bl	__aeabi_f2d
 572 005a 8046     		mov	r8, r0
 573 005c DAF80800 		ldr	r0, [r10, #8]	@ float
 574 0060 8946     		mov	r9, r1
 575 0062 FFF7FEFF 		bl	__aeabi_f2d
 576 0066 65B9     		cbnz	r5, .L70
 577 0068 CDE90201 		strd	r0, [sp, #8]
 578 006c CDE90089 		strd	r8, [sp]
 579 0070 3246     		mov	r2, r6
 580 0072 3B46     		mov	r3, r7
 581 0074 0D48     		ldr	r0, .L71+4
 582 0076 FFF7FEFF 		bl	debugPrintf
 583 007a 2846     		mov	r0, r5
 584 007c 08B0     		add	sp, sp, #32
 585              		@ sp needed
 586 007e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 587              	.L70:
 588 0082 A368     		ldr	r3, [r4, #8]
 589 0084 0693     		str	r3, [sp, #24]
 590 0086 D4E90043 		ldrd	r4, r3, [r4]
 591 008a 3246     		mov	r2, r6
 592 008c 0593     		str	r3, [sp, #20]
 593 008e CDE90201 		strd	r0, [sp, #8]
 594 0092 CDE90089 		strd	r8, [sp]
 595 0096 3B46     		mov	r3, r7
 596 0098 0494     		str	r4, [sp, #16]
 597 009a 0548     		ldr	r0, .L71+8
 598 009c FFF7FEFF 		bl	debugPrintf
 599 00a0 2846     		mov	r0, r5
 600 00a2 08B0     		add	sp, sp, #32
 601              		@ sp needed
 602 00a4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 603              	.L72:
 604              		.align	2
 605              	.L71:
 606 00a8 00000000 		.word	reprap
 607 00ac 2C000000 		.word	.LC12
 608 00b0 00000000 		.word	.LC11
 609              		.size	_ZNK4Move21CartesianToMotorStepsEPKfPlb, .-_ZNK4Move21CartesianToMotorStepsEPKfPlb
 610              		.section	.text._ZNK4Move17EndPointToMachineEPKfPlj,"ax",%progbits
 611              		.align	1
 612              		.p2align 2,,3
 613              		.global	_ZNK4Move17EndPointToMachineEPKfPlj
 614              		.syntax unified
 615              		.thumb
 616              		.thumb_func
 617              		.fpu fpv4-sp-d16
 618              		.type	_ZNK4Move17EndPointToMachineEPKfPlj, %function
 619              	_ZNK4Move17EndPointToMachineEPKfPlj:
 620              		@ args = 0, pretend = 0, frame = 0
 621              		@ frame_needed = 0, uses_anonymous_args = 0
 622 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 623 0004 1F46     		mov	r7, r3
 624 0006 0123     		movs	r3, #1
 625 0008 0E46     		mov	r6, r1
 626 000a 1546     		mov	r5, r2
 627 000c FFF7FEFF 		bl	_ZNK4Move21CartesianToMotorStepsEPKfPlb
ARM GAS  /tmp/ccPDZFMs.s 			page 12


 628 0010 E0B1     		cbz	r0, .L73
 629 0012 DFF83C80 		ldr	r8, .L81
 630 0016 D8F81030 		ldr	r3, [r8, #16]
 631 001a D3F89842 		ldr	r4, [r3, #664]
 632 001e A742     		cmp	r7, r4
 633 0020 14D9     		bls	.L73
 634 0022 A300     		lsls	r3, r4, #2
 635 0024 1A1F     		subs	r2, r3, #4
 636 0026 1E44     		add	r6, r6, r3
 637 0028 1544     		add	r5, r5, r2
 638              	.L75:
 639 002a D8F80030 		ldr	r3, [r8]
 640 002e B6EC010A 		vldmia.32	r6!, {s0}
 641 0032 03EB8403 		add	r3, r3, r4, lsl #2
 642 0036 D3ED6A7A 		vldr.32	s15, [r3, #424]
 643 003a 20EE270A 		vmul.f32	s0, s0, s15
 644 003e FFF7FEFF 		bl	lrintf
 645 0042 0134     		adds	r4, r4, #1
 646 0044 A742     		cmp	r7, r4
 647 0046 45F8040F 		str	r0, [r5, #4]!
 648 004a EED1     		bne	.L75
 649              	.L73:
 650 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 651              	.L82:
 652              		.align	2
 653              	.L81:
 654 0050 00000000 		.word	reprap
 655              		.size	_ZNK4Move17EndPointToMachineEPKfPlj, .-_ZNK4Move17EndPointToMachineEPKfPlj
 656              		.section	.text._ZNK4Move13AxisTransformEPfmm,"ax",%progbits
 657              		.align	1
 658              		.p2align 2,,3
 659              		.global	_ZNK4Move13AxisTransformEPfmm
 660              		.syntax unified
 661              		.thumb
 662              		.thumb_func
 663              		.fpu fpv4-sp-d16
 664              		.type	_ZNK4Move13AxisTransformEPfmm, %function
 665              	_ZNK4Move13AxisTransformEPfmm:
 666              		@ args = 0, pretend = 0, frame = 0
 667              		@ frame_needed = 0, uses_anonymous_args = 0
 668 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 669 0002 254C     		ldr	r4, .L103
 670 0004 2469     		ldr	r4, [r4, #16]
 671 0006 D4F89CC2 		ldr	ip, [r4, #668]
 672 000a BCF1010F 		cmp	ip, #1
 673 000e 0BD9     		bls	.L83
 674 0010 9E07     		lsls	r6, r3, #30
 675 0012 4FF00104 		mov	r4, #1
 676 0016 08D4     		bmi	.L85
 677 0018 01E0     		b	.L86
 678              	.L101:
 679 001a ED07     		lsls	r5, r5, #31
 680 001c 05D4     		bmi	.L85
 681              	.L86:
 682 001e 0134     		adds	r4, r4, #1
 683 0020 6445     		cmp	r4, ip
 684 0022 23FA04F5 		lsr	r5, r3, r4
ARM GAS  /tmp/ccPDZFMs.s 			page 13


 685 0026 F8D1     		bne	.L101
 686              	.L83:
 687 0028 F0BD     		pop	{r4, r5, r6, r7, pc}
 688              	.L85:
 689 002a 01EB8404 		add	r4, r1, r4, lsl #2
 690 002e 0E46     		mov	r6, r1
 691 0030 0025     		movs	r5, #0
 692              	.L90:
 693 0032 22FA05F7 		lsr	r7, r2, r5
 694 0036 17F0010F 		tst	r7, #1
 695 003a 23FA05FE 		lsr	lr, r3, r5
 696 003e 05F10105 		add	r5, r5, #1
 697 0042 15D0     		beq	.L87
 698 0044 D0F8F870 		ldr	r7, [r0, #248]
 699 0048 D1ED025A 		vldr.32	s11, [r1, #8]
 700 004c D7ED007A 		vldr.32	s15, [r7]
 701 0050 D0F8F070 		ldr	r7, [r0, #240]
 702 0054 D4ED006A 		vldr.32	s13, [r4]
 703 0058 97ED006A 		vldr.32	s12, [r7]
 704 005c 96ED007A 		vldr.32	s14, [r6]
 705 0060 67EEA57A 		vmul.f32	s15, s15, s11
 706 0064 E6EE267A 		vfma.f32	s15, s12, s13
 707 0068 77EE277A 		vadd.f32	s15, s14, s15
 708 006c C6ED007A 		vstr.32	s15, [r6]
 709              	.L87:
 710 0070 1EF0010F 		tst	lr, #1
 711 0074 0BD0     		beq	.L88
 712 0076 D0F8F470 		ldr	r7, [r0, #244]
 713 007a 91ED027A 		vldr.32	s14, [r1, #8]
 714 007e D7ED006A 		vldr.32	s13, [r7]
 715 0082 D6ED007A 		vldr.32	s15, [r6]
 716 0086 E6EE877A 		vfma.f32	s15, s13, s14
 717 008a C6ED007A 		vstr.32	s15, [r6]
 718              	.L88:
 719 008e AC45     		cmp	ip, r5
 720 0090 06F10406 		add	r6, r6, #4
 721 0094 CDD1     		bne	.L90
 722 0096 F0BD     		pop	{r4, r5, r6, r7, pc}
 723              	.L104:
 724              		.align	2
 725              	.L103:
 726 0098 00000000 		.word	reprap
 727              		.size	_ZNK4Move13AxisTransformEPfmm, .-_ZNK4Move13AxisTransformEPfmm
 728              		.section	.text._ZNK4Move26GetInterpolatedHeightErrorEff,"ax",%progbits
 729              		.align	1
 730              		.p2align 2,,3
 731              		.global	_ZNK4Move26GetInterpolatedHeightErrorEff
 732              		.syntax unified
 733              		.thumb
 734              		.thumb_func
 735              		.fpu fpv4-sp-d16
 736              		.type	_ZNK4Move26GetInterpolatedHeightErrorEff, %function
 737              	_ZNK4Move26GetInterpolatedHeightErrorEff:
 738              		@ args = 0, pretend = 0, frame = 0
 739              		@ frame_needed = 0, uses_anonymous_args = 0
 740              		@ link register save eliminated.
 741 0000 90F84C3A 		ldrb	r3, [r0, #2636]	@ zero_extendqisi2
ARM GAS  /tmp/ccPDZFMs.s 			page 14


 742 0004 1BB9     		cbnz	r3, .L107
 743 0006 00F64C00 		addw	r0, r0, #2124
 744 000a FFF7FEBF 		b	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff
 745              	.L107:
 746 000e FC30     		adds	r0, r0, #252
 747 0010 FFF7FEBF 		b	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 748              		.size	_ZNK4Move26GetInterpolatedHeightErrorEff, .-_ZNK4Move26GetInterpolatedHeightErrorEff
 749              		.section	.text._ZNK4Move20InverseAxisTransformEPfmm,"ax",%progbits
 750              		.align	1
 751              		.p2align 2,,3
 752              		.global	_ZNK4Move20InverseAxisTransformEPfmm
 753              		.syntax unified
 754              		.thumb
 755              		.thumb_func
 756              		.fpu fpv4-sp-d16
 757              		.type	_ZNK4Move20InverseAxisTransformEPfmm, %function
 758              	_ZNK4Move20InverseAxisTransformEPfmm:
 759              		@ args = 0, pretend = 0, frame = 0
 760              		@ frame_needed = 0, uses_anonymous_args = 0
 761 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 762 0002 254C     		ldr	r4, .L128
 763 0004 2469     		ldr	r4, [r4, #16]
 764 0006 D4F89CC2 		ldr	ip, [r4, #668]
 765 000a BCF1010F 		cmp	ip, #1
 766 000e 0BD9     		bls	.L108
 767 0010 9E07     		lsls	r6, r3, #30
 768 0012 4FF00104 		mov	r4, #1
 769 0016 08D4     		bmi	.L110
 770 0018 01E0     		b	.L111
 771              	.L126:
 772 001a ED07     		lsls	r5, r5, #31
 773 001c 05D4     		bmi	.L110
 774              	.L111:
 775 001e 0134     		adds	r4, r4, #1
 776 0020 6445     		cmp	r4, ip
 777 0022 23FA04F5 		lsr	r5, r3, r4
 778 0026 F8D1     		bne	.L126
 779              	.L108:
 780 0028 F0BD     		pop	{r4, r5, r6, r7, pc}
 781              	.L110:
 782 002a 01EB8404 		add	r4, r1, r4, lsl #2
 783 002e 0E46     		mov	r6, r1
 784 0030 0025     		movs	r5, #0
 785              	.L115:
 786 0032 23FA05F7 		lsr	r7, r3, r5
 787 0036 17F0010F 		tst	r7, #1
 788 003a 22FA05FE 		lsr	lr, r2, r5
 789 003e 05F10105 		add	r5, r5, #1
 790 0042 0BD0     		beq	.L112
 791 0044 D0F8F470 		ldr	r7, [r0, #244]
 792 0048 91ED027A 		vldr.32	s14, [r1, #8]
 793 004c D7ED006A 		vldr.32	s13, [r7]
 794 0050 D6ED007A 		vldr.32	s15, [r6]
 795 0054 E6EEC77A 		vfms.f32	s15, s13, s14
 796 0058 C6ED007A 		vstr.32	s15, [r6]
 797              	.L112:
 798 005c 1EF0010F 		tst	lr, #1
ARM GAS  /tmp/ccPDZFMs.s 			page 15


 799 0060 15D0     		beq	.L113
 800 0062 D0F8F870 		ldr	r7, [r0, #248]
 801 0066 D1ED025A 		vldr.32	s11, [r1, #8]
 802 006a D7ED007A 		vldr.32	s15, [r7]
 803 006e D0F8F070 		ldr	r7, [r0, #240]
 804 0072 D4ED006A 		vldr.32	s13, [r4]
 805 0076 97ED006A 		vldr.32	s12, [r7]
 806 007a 96ED007A 		vldr.32	s14, [r6]
 807 007e 67EEA57A 		vmul.f32	s15, s15, s11
 808 0082 E6EE267A 		vfma.f32	s15, s12, s13
 809 0086 77EE677A 		vsub.f32	s15, s14, s15
 810 008a C6ED007A 		vstr.32	s15, [r6]
 811              	.L113:
 812 008e AC45     		cmp	ip, r5
 813 0090 06F10406 		add	r6, r6, #4
 814 0094 CDD1     		bne	.L115
 815 0096 F0BD     		pop	{r4, r5, r6, r7, pc}
 816              	.L129:
 817              		.align	2
 818              	.L128:
 819 0098 00000000 		.word	reprap
 820              		.size	_ZNK4Move20InverseAxisTransformEPfmm, .-_ZNK4Move20InverseAxisTransformEPfmm
 821              		.section	.text._ZNK4Move12BedTransformEPfmm,"ax",%progbits
 822              		.align	1
 823              		.p2align 2,,3
 824              		.global	_ZNK4Move12BedTransformEPfmm
 825              		.syntax unified
 826              		.thumb
 827              		.thumb_func
 828              		.fpu fpv4-sp-d16
 829              		.type	_ZNK4Move12BedTransformEPfmm, %function
 830              	_ZNK4Move12BedTransformEPfmm:
 831              		@ args = 0, pretend = 0, frame = 0
 832              		@ frame_needed = 0, uses_anonymous_args = 0
 833 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 834 0004 2DED028B 		vpush.64	{d8}
 835 0008 8946     		mov	r9, r1
 836 000a 90F84D1A 		ldrb	r1, [r0, #2637]	@ zero_extendqisi2
 837 000e 8046     		mov	r8, r0
 838 0010 9246     		mov	r10, r2
 839 0012 1F46     		mov	r7, r3
 840 0014 0029     		cmp	r1, #0
 841 0016 61D0     		beq	.L131
 842 0018 00F52463 		add	r3, r0, #2624
 843 001c D3ED007A 		vldr.32	s15, [r3]
 844 0020 99ED027A 		vldr.32	s14, [r9, #8]
 845 0024 B4EEE77A 		vcmpe.f32	s14, s15
 846 0028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 847 002c 52D5     		bpl	.L130
 848 002e 3A4A     		ldr	r2, .L158
 849 0030 1269     		ldr	r2, [r2, #16]
 850 0032 D2F89C62 		ldr	r6, [r2, #668]
 851 0036 002E     		cmp	r6, #0
 852 0038 65D0     		beq	.L156
 853              	.L142:
 854 003a 0025     		movs	r5, #0
 855 003c 9FED378A 		vldr.32	s16, .L158+4
ARM GAS  /tmp/ccPDZFMs.s 			page 16


 856 0040 AB46     		mov	fp, r5
 857 0042 02E0     		b	.L137
 858              	.L134:
 859 0044 0135     		adds	r5, r5, #1
 860 0046 B542     		cmp	r5, r6
 861 0048 1ED0     		beq	.L157
 862              	.L137:
 863 004a 2AFA05F3 		lsr	r3, r10, r5
 864 004e DA07     		lsls	r2, r3, #31
 865 0050 F8D5     		bpl	.L134
 866 0052 09EB8503 		add	r3, r9, r5, lsl #2
 867 0056 D3ED008A 		vldr.32	s17, [r3]
 868 005a 0024     		movs	r4, #0
 869 005c 02E0     		b	.L136
 870              	.L135:
 871 005e 0134     		adds	r4, r4, #1
 872 0060 B442     		cmp	r4, r6
 873 0062 EFD0     		beq	.L134
 874              	.L136:
 875 0064 27FA04F0 		lsr	r0, r7, r4
 876 0068 C307     		lsls	r3, r0, #31
 877 006a F8D5     		bpl	.L135
 878 006c 09EB8403 		add	r3, r9, r4, lsl #2
 879 0070 D3ED000A 		vldr.32	s1, [r3]
 880 0074 B0EE680A 		vmov.f32	s0, s17
 881 0078 4046     		mov	r0, r8
 882 007a FFF7FEFF 		bl	_ZNK4Move26GetInterpolatedHeightErrorEff
 883 007e 0BF1010B 		add	fp, fp, #1
 884 0082 38EE008A 		vadd.f32	s16, s16, s0
 885 0086 EAE7     		b	.L135
 886              	.L157:
 887 0088 BBF1010F 		cmp	fp, #1
 888 008c 98F84D3A 		ldrb	r3, [r8, #2637]	@ zero_extendqisi2
 889 0090 05D9     		bls	.L138
 890 0092 07EE90BA 		vmov	s15, fp	@ int
 891 0096 F8EE677A 		vcvt.f32.u32	s15, s15
 892 009a 88EE278A 		vdiv.f32	s16, s16, s15
 893              	.L138:
 894 009e 08F64822 		addw	r2, r8, #2632
 895 00a2 D2ED007A 		vldr.32	s15, [r2]
 896 00a6 99ED027A 		vldr.32	s14, [r9, #8]
 897 00aa 38EE278A 		vadd.f32	s16, s16, s15
 898 00ae 6BB1     		cbz	r3, .L139
 899 00b0 08F52463 		add	r3, r8, #2624
 900              	.L140:
 901 00b4 D3ED007A 		vldr.32	s15, [r3]
 902 00b8 08F64428 		addw	r8, r8, #2628
 903 00bc D8ED006A 		vldr.32	s13, [r8]
 904 00c0 77EEC77A 		vsub.f32	s15, s15, s14
 905 00c4 67EEA67A 		vmul.f32	s15, s15, s13
 906 00c8 28EE278A 		vmul.f32	s16, s16, s15
 907              	.L139:
 908 00cc 38EE078A 		vadd.f32	s16, s16, s14
 909 00d0 89ED028A 		vstr.32	s16, [r9, #8]
 910              	.L130:
 911 00d4 BDEC028B 		vldm	sp!, {d8}
 912 00d8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  /tmp/ccPDZFMs.s 			page 17


 913              	.L131:
 914 00dc 0E4B     		ldr	r3, .L158
 915 00de 1B69     		ldr	r3, [r3, #16]
 916 00e0 D3F89C62 		ldr	r6, [r3, #668]
 917 00e4 002E     		cmp	r6, #0
 918 00e6 A8D1     		bne	.L142
 919 00e8 08F64828 		addw	r8, r8, #2632
 920 00ec D8ED007A 		vldr.32	s15, [r8]
 921 00f0 9FED0A8A 		vldr.32	s16, .L158+4
 922 00f4 99ED027A 		vldr.32	s14, [r9, #8]
 923 00f8 37EE888A 		vadd.f32	s16, s15, s16
 924 00fc 38EE078A 		vadd.f32	s16, s16, s14
 925 0100 89ED028A 		vstr.32	s16, [r9, #8]
 926 0104 E6E7     		b	.L130
 927              	.L156:
 928 0106 08F64822 		addw	r2, r8, #2632
 929 010a D2ED007A 		vldr.32	s15, [r2]
 930 010e 9FED038A 		vldr.32	s16, .L158+4
 931 0112 37EE888A 		vadd.f32	s16, s15, s16
 932 0116 CDE7     		b	.L140
 933              	.L159:
 934              		.align	2
 935              	.L158:
 936 0118 00000000 		.word	reprap
 937 011c 00000000 		.word	0
 938              		.size	_ZNK4Move12BedTransformEPfmm, .-_ZNK4Move12BedTransformEPfmm
 939              		.section	.text._ZNK4Move19AxisAndBedTransformEPfmmb,"ax",%progbits
 940              		.align	1
 941              		.p2align 2,,3
 942              		.global	_ZNK4Move19AxisAndBedTransformEPfmmb
 943              		.syntax unified
 944              		.thumb
 945              		.thumb_func
 946              		.fpu fpv4-sp-d16
 947              		.type	_ZNK4Move19AxisAndBedTransformEPfmmb, %function
 948              	_ZNK4Move19AxisAndBedTransformEPfmmb:
 949              		@ args = 4, pretend = 0, frame = 0
 950              		@ frame_needed = 0, uses_anonymous_args = 0
 951 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 952 0004 9DF81840 		ldrb	r4, [sp, #24]	@ zero_extendqisi2
 953 0008 FFF7FEFF 		bl	_ZNK4Move13AxisTransformEPfmm
 954 000c 0CB9     		cbnz	r4, .L163
 955 000e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 956              	.L163:
 957 0012 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 958 0016 FFF7FEBF 		b	_ZNK4Move12BedTransformEPfmm
 959              		.size	_ZNK4Move19AxisAndBedTransformEPfmmb, .-_ZNK4Move19AxisAndBedTransformEPfmmb
 960 001a 00BF     		.section	.text._ZNK4Move19InverseBedTransformEPfmm,"ax",%progbits
 961              		.align	1
 962              		.p2align 2,,3
 963              		.global	_ZNK4Move19InverseBedTransformEPfmm
 964              		.syntax unified
 965              		.thumb
 966              		.thumb_func
 967              		.fpu fpv4-sp-d16
 968              		.type	_ZNK4Move19InverseBedTransformEPfmm, %function
 969              	_ZNK4Move19InverseBedTransformEPfmm:
ARM GAS  /tmp/ccPDZFMs.s 			page 18


 970              		@ args = 0, pretend = 0, frame = 0
 971              		@ frame_needed = 0, uses_anonymous_args = 0
 972 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 973 0004 2DED028B 		vpush.64	{d8}
 974 0008 364C     		ldr	r4, .L191
 975 000a 2469     		ldr	r4, [r4, #16]
 976 000c D4F89C62 		ldr	r6, [r4, #668]
 977 0010 8046     		mov	r8, r0
 978 0012 8A46     		mov	r10, r1
 979 0014 002E     		cmp	r6, #0
 980 0016 62D0     		beq	.L175
 981 0018 0025     		movs	r5, #0
 982 001a 9146     		mov	r9, r2
 983 001c 1F46     		mov	r7, r3
 984 001e 9FED328A 		vldr.32	s16, .L191+4
 985 0022 AB46     		mov	fp, r5
 986 0024 02E0     		b	.L169
 987              	.L166:
 988 0026 0135     		adds	r5, r5, #1
 989 0028 AE42     		cmp	r6, r5
 990 002a 1ED0     		beq	.L190
 991              	.L169:
 992 002c 29FA05F3 		lsr	r3, r9, r5
 993 0030 DA07     		lsls	r2, r3, #31
 994 0032 F8D5     		bpl	.L166
 995 0034 0AEB8503 		add	r3, r10, r5, lsl #2
 996 0038 D3ED008A 		vldr.32	s17, [r3]
 997 003c 0024     		movs	r4, #0
 998 003e 02E0     		b	.L168
 999              	.L167:
 1000 0040 0134     		adds	r4, r4, #1
 1001 0042 A642     		cmp	r6, r4
 1002 0044 EFD0     		beq	.L166
 1003              	.L168:
 1004 0046 27FA04F2 		lsr	r2, r7, r4
 1005 004a D307     		lsls	r3, r2, #31
 1006 004c F8D5     		bpl	.L167
 1007 004e 0AEB8403 		add	r3, r10, r4, lsl #2
 1008 0052 D3ED000A 		vldr.32	s1, [r3]
 1009 0056 B0EE680A 		vmov.f32	s0, s17
 1010 005a 4046     		mov	r0, r8
 1011 005c FFF7FEFF 		bl	_ZNK4Move26GetInterpolatedHeightErrorEff
 1012 0060 0BF1010B 		add	fp, fp, #1
 1013 0064 38EE008A 		vadd.f32	s16, s16, s0
 1014 0068 EAE7     		b	.L167
 1015              	.L190:
 1016 006a BBF1010F 		cmp	fp, #1
 1017 006e 05D9     		bls	.L165
 1018 0070 07EE90BA 		vmov	s15, fp	@ int
 1019 0074 F8EE677A 		vcvt.f32.u32	s15, s15
 1020 0078 88EE278A 		vdiv.f32	s16, s16, s15
 1021              	.L165:
 1022 007c 08F64822 		addw	r2, r8, #2632
 1023 0080 98F84D3A 		ldrb	r3, [r8, #2637]	@ zero_extendqisi2
 1024 0084 92ED007A 		vldr.32	s14, [r2]
 1025 0088 DAED027A 		vldr.32	s15, [r10, #8]
 1026 008c 38EE078A 		vadd.f32	s16, s16, s14
ARM GAS  /tmp/ccPDZFMs.s 			page 19


 1027 0090 77EEC87A 		vsub.f32	s15, s15, s16
 1028 0094 EBB1     		cbz	r3, .L170
 1029 0096 08F52463 		add	r3, r8, #2624
 1030 009a 93ED007A 		vldr.32	s14, [r3]
 1031 009e B4EEC87A 		vcmpe.f32	s14, s16
 1032 00a2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1033 00a6 14D9     		bls	.L170
 1034 00a8 08F64428 		addw	r8, r8, #2628
 1035 00ac 98ED006A 		vldr.32	s12, [r8]
 1036 00b0 F7EE006A 		vmov.f32	s13, #1.0e+0
 1037 00b4 E6EE486A 		vfms.f32	s13, s12, s16
 1038 00b8 BDEC028B 		vldm	sp!, {d8}
 1039 00bc 87EEA66A 		vdiv.f32	s12, s15, s13
 1040 00c0 B4EEC67A 		vcmpe.f32	s14, s12
 1041 00c4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1042 00c8 C8BF     		it	gt
 1043 00ca 8AED026A 		vstrgt.32	s12, [r10, #8]
 1044 00ce BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1045              	.L170:
 1046 00d2 BDEC028B 		vldm	sp!, {d8}
 1047 00d6 CAED027A 		vstr.32	s15, [r10, #8]
 1048 00da BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1049              	.L175:
 1050 00de 9FED028A 		vldr.32	s16, .L191+4
 1051 00e2 CBE7     		b	.L165
 1052              	.L192:
 1053              		.align	2
 1054              	.L191:
 1055 00e4 00000000 		.word	reprap
 1056 00e8 00000000 		.word	0
 1057              		.size	_ZNK4Move19InverseBedTransformEPfmm, .-_ZNK4Move19InverseBedTransformEPfmm
 1058              		.section	.text._ZNK4Move26InverseAxisAndBedTransformEPfmm,"ax",%progbits
 1059              		.align	1
 1060              		.p2align 2,,3
 1061              		.global	_ZNK4Move26InverseAxisAndBedTransformEPfmm
 1062              		.syntax unified
 1063              		.thumb
 1064              		.thumb_func
 1065              		.fpu fpv4-sp-d16
 1066              		.type	_ZNK4Move26InverseAxisAndBedTransformEPfmm, %function
 1067              	_ZNK4Move26InverseAxisAndBedTransformEPfmm:
 1068              		@ args = 0, pretend = 0, frame = 0
 1069              		@ frame_needed = 0, uses_anonymous_args = 0
 1070 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1071 0004 0446     		mov	r4, r0
 1072 0006 0D46     		mov	r5, r1
 1073 0008 1646     		mov	r6, r2
 1074 000a 1F46     		mov	r7, r3
 1075 000c FFF7FEFF 		bl	_ZNK4Move19InverseBedTransformEPfmm
 1076 0010 3B46     		mov	r3, r7
 1077 0012 3246     		mov	r2, r6
 1078 0014 2946     		mov	r1, r5
 1079 0016 2046     		mov	r0, r4
 1080 0018 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1081 001c FFF7FEBF 		b	_ZNK4Move20InverseAxisTransformEPfmm
 1082              		.size	_ZNK4Move26InverseAxisAndBedTransformEPfmm, .-_ZNK4Move26InverseAxisAndBedTransformEPfmm
 1083              		.section	.text._ZN4Move10PausePrintER12RestorePoint,"ax",%progbits
ARM GAS  /tmp/ccPDZFMs.s 			page 20


 1084              		.align	1
 1085              		.p2align 2,,3
 1086              		.global	_ZN4Move10PausePrintER12RestorePoint
 1087              		.syntax unified
 1088              		.thumb
 1089              		.thumb_func
 1090              		.fpu fpv4-sp-d16
 1091              		.type	_ZN4Move10PausePrintER12RestorePoint, %function
 1092              	_ZN4Move10PausePrintER12RestorePoint:
 1093              		@ args = 0, pretend = 0, frame = 0
 1094              		@ frame_needed = 0, uses_anonymous_args = 0
 1095 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1096 0004 0646     		mov	r6, r0
 1097 0006 8846     		mov	r8, r1
 1098 0008 4768     		ldr	r7, [r0, #4]
 1099              		.syntax unified
 1100              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1101 000a 72B6     		cpsid i
 1102              	@ 0 "" 2
 1103              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1104 000c BFF35F8F 		dmb
 1105              	@ 0 "" 2
 1106              		.thumb
 1107              		.syntax unified
 1108 0010 334A     		ldr	r2, .L219
 1109 0012 0023     		movs	r3, #0
 1110 0014 1370     		strb	r3, [r2]
 1111 0016 0368     		ldr	r3, [r0]
 1112 0018 002B     		cmp	r3, #0
 1113 001a 59D0     		beq	.L218
 1114 001c 1C68     		ldr	r4, [r3]
 1115 001e 997A     		ldrb	r1, [r3, #10]	@ zero_extendqisi2
 1116 0020 A742     		cmp	r7, r4
 1117 0022 01F00401 		and	r1, r1, #4
 1118 0026 09D0     		beq	.L197
 1119 0028 11B1     		cbz	r1, .L199
 1120 002a 54E0     		b	.L198
 1121              	.L200:
 1122 002c 002B     		cmp	r3, #0
 1123 002e 52D1     		bne	.L198
 1124              	.L199:
 1125 0030 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 1126 0032 2468     		ldr	r4, [r4]
 1127 0034 A742     		cmp	r7, r4
 1128 0036 03F00403 		and	r3, r3, #4
 1129 003a F7D1     		bne	.L200
 1130              	.L197:
 1131 003c 0123     		movs	r3, #1
 1132 003e 1370     		strb	r3, [r2]
 1133              		.syntax unified
 1134              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1135 0040 BFF35F8F 		dmb
 1136              	@ 0 "" 2
 1137              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1138 0044 62B6     		cpsie i
 1139              	@ 0 "" 2
 1140              		.thumb
ARM GAS  /tmp/ccPDZFMs.s 			page 21


 1141              		.syntax unified
 1142 0046 274B     		ldr	r3, .L219+4
 1143 0048 7268     		ldr	r2, [r6, #4]
 1144 004a 1B69     		ldr	r3, [r3, #16]
 1145 004c D2F804A0 		ldr	r10, [r2, #4]
 1146 0050 D3F89CB2 		ldr	fp, [r3, #668]
 1147 0054 BBF1000F 		cmp	fp, #0
 1148 0058 0BD0     		beq	.L201
 1149 005a C146     		mov	r9, r8
 1150 005c 0025     		movs	r5, #0
 1151              	.L202:
 1152 005e 2946     		mov	r1, r5
 1153 0060 0022     		movs	r2, #0
 1154 0062 5046     		mov	r0, r10
 1155 0064 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1156 0068 0135     		adds	r5, r5, #1
 1157 006a AB45     		cmp	fp, r5
 1158 006c A9EC010A 		vstmia.32	r9!, {s0}
 1159 0070 F5D1     		bne	.L202
 1160              	.L201:
 1161 0072 DAE90423 		ldrd	r2, r3, [r10, #16]
 1162 0076 4146     		mov	r1, r8
 1163 0078 3046     		mov	r0, r6
 1164 007a FFF7FEFF 		bl	_ZNK4Move26InverseAxisAndBedTransformEPfmm
 1165 007e B4F8F030 		ldrh	r3, [r4, #240]
 1166 0082 A8F83430 		strh	r3, [r8, #52]	@ movhi
 1167 0086 7468     		ldr	r4, [r6, #4]
 1168 0088 BC42     		cmp	r4, r7
 1169 008a 26D0     		beq	.L206
 1170 008c 0021     		movs	r1, #0
 1171 008e 2046     		mov	r0, r4
 1172 0090 FFF7FEFF 		bl	_ZNK3DDA17GetProportionDoneEb
 1173 0094 E37A     		ldrb	r3, [r4, #11]	@ zero_extendqisi2
 1174 0096 D4F8B820 		ldr	r2, [r4, #184]	@ float
 1175 009a 88ED0B0A 		vstr.32	s0, [r8, #44]
 1176 009e 9B07     		lsls	r3, r3, #30
 1177 00a0 44BF     		itt	mi
 1178 00a2 D4F8B430 		ldrmi	r3, [r4, #180]	@ float
 1179 00a6 C8F82430 		strmi	r3, [r8, #36]	@ float
 1180 00aa A369     		ldr	r3, [r4, #24]
 1181 00ac C8F83030 		str	r3, [r8, #48]
 1182 00b0 C8F82820 		str	r2, [r8, #40]	@ float
 1183              	.L205:
 1184 00b4 2046     		mov	r0, r4
 1185 00b6 FFF7FEFF 		bl	_ZN3DDA4FreeEv
 1186 00ba D6F8603A 		ldr	r3, [r6, #2656]
 1187 00be 2468     		ldr	r4, [r4]
 1188 00c0 013B     		subs	r3, r3, #1
 1189 00c2 A742     		cmp	r7, r4
 1190 00c4 C6F8603A 		str	r3, [r6, #2656]
 1191 00c8 F4D1     		bne	.L205
 1192 00ca 0120     		movs	r0, #1
 1193 00cc BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1194              	.L218:
 1195 00d0 8468     		ldr	r4, [r0, #8]
 1196 00d2 A742     		cmp	r7, r4
 1197 00d4 B2D0     		beq	.L197
ARM GAS  /tmp/ccPDZFMs.s 			page 22


 1198              	.L198:
 1199 00d6 7460     		str	r4, [r6, #4]
 1200 00d8 B0E7     		b	.L197
 1201              	.L206:
 1202 00da 0020     		movs	r0, #0
 1203 00dc BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1204              	.L220:
 1205              		.align	2
 1206              	.L219:
 1207 00e0 00000000 		.word	g_interrupt_enabled
 1208 00e4 00000000 		.word	reprap
 1209              		.size	_ZN4Move10PausePrintER12RestorePoint, .-_ZN4Move10PausePrintER12RestorePoint
 1210              		.section	.text._ZN4Move18SetZeroHeightErrorEPKf,"ax",%progbits
 1211              		.align	1
 1212              		.p2align 2,,3
 1213              		.global	_ZN4Move18SetZeroHeightErrorEPKf
 1214              		.syntax unified
 1215              		.thumb
 1216              		.thumb_func
 1217              		.fpu fpv4-sp-d16
 1218              		.type	_ZN4Move18SetZeroHeightErrorEPKf, %function
 1219              	_ZN4Move18SetZeroHeightErrorEPKf:
 1220              		@ args = 0, pretend = 0, frame = 40
 1221              		@ frame_needed = 0, uses_anonymous_args = 0
 1222 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1223 0002 8BB0     		sub	sp, sp, #44
 1224 0004 0C46     		mov	r4, r1
 1225 0006 0746     		mov	r7, r0
 1226 0008 01F1200C 		add	ip, r1, #32
 1227 000c 01AE     		add	r6, sp, #4
 1228              	.L222:
 1229 000e 2068     		ldr	r0, [r4]	@ unaligned
 1230 0010 6168     		ldr	r1, [r4, #4]	@ unaligned
 1231 0012 A268     		ldr	r2, [r4, #8]	@ unaligned
 1232 0014 E368     		ldr	r3, [r4, #12]	@ unaligned
 1233 0016 3546     		mov	r5, r6
 1234 0018 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 1235 001a 1034     		adds	r4, r4, #16
 1236 001c 6445     		cmp	r4, ip
 1237 001e 2E46     		mov	r6, r5
 1238 0020 F5D1     		bne	.L222
 1239 0022 2068     		ldr	r0, [r4]	@ unaligned
 1240 0024 2860     		str	r0, [r5]
 1241 0026 01A9     		add	r1, sp, #4
 1242 0028 3846     		mov	r0, r7
 1243 002a 0223     		movs	r3, #2
 1244 002c 0122     		movs	r2, #1
 1245 002e FFF7FEFF 		bl	_ZNK4Move13AxisTransformEPfmm
 1246 0032 DDED020A 		vldr.32	s1, [sp, #8]
 1247 0036 9DED010A 		vldr.32	s0, [sp, #4]
 1248 003a FFF7FEFF 		bl	_ZNK4Move26GetInterpolatedHeightErrorEff
 1249 003e 07F64827 		addw	r7, r7, #2632
 1250 0042 B1EE400A 		vneg.f32	s0, s0
 1251 0046 87ED000A 		vstr.32	s0, [r7]
 1252 004a 0BB0     		add	sp, sp, #44
 1253              		@ sp needed
 1254 004c F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccPDZFMs.s 			page 23


 1255              		.size	_ZN4Move18SetZeroHeightErrorEPKf, .-_ZN4Move18SetZeroHeightErrorEPKf
 1256 004e 00BF     		.section	.text._ZN4Move20SetIdentityTransformEv,"ax",%progbits
 1257              		.align	1
 1258              		.p2align 2,,3
 1259              		.global	_ZN4Move20SetIdentityTransformEv
 1260              		.syntax unified
 1261              		.thumb
 1262              		.thumb_func
 1263              		.fpu fpv4-sp-d16
 1264              		.type	_ZN4Move20SetIdentityTransformEv, %function
 1265              	_ZN4Move20SetIdentityTransformEv:
 1266              		@ args = 0, pretend = 0, frame = 0
 1267              		@ frame_needed = 0, uses_anonymous_args = 0
 1268 0000 70B5     		push	{r4, r5, r6, lr}
 1269 0002 0446     		mov	r4, r0
 1270 0004 0025     		movs	r5, #0
 1271 0006 00F1FC06 		add	r6, r0, #252
 1272 000a 3046     		mov	r0, r6
 1273 000c C4F84C58 		str	r5, [r4, #2124]
 1274 0010 FFF7FEFF 		bl	_ZN9HeightMap16ClearGridHeightsEv
 1275 0014 2946     		mov	r1, r5
 1276 0016 3046     		mov	r0, r6
 1277 0018 FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 1278 001c 04F64824 		addw	r4, r4, #2632
 1279 0020 2571     		strb	r5, [r4, #4]
 1280 0022 0023     		movs	r3, #0
 1281 0024 2360     		str	r3, [r4]	@ float
 1282 0026 70BD     		pop	{r4, r5, r6, pc}
 1283              		.size	_ZN4Move20SetIdentityTransformEv, .-_ZN4Move20SetIdentityTransformEv
 1284              		.section	.text._ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef,"ax",%progbits
 1285              		.align	1
 1286              		.p2align 2,,3
 1287              		.global	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef
 1288              		.syntax unified
 1289              		.thumb
 1290              		.thumb_func
 1291              		.fpu fpv4-sp-d16
 1292              		.type	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef, %function
 1293              	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef:
 1294              		@ args = 0, pretend = 0, frame = 0
 1295              		@ frame_needed = 0, uses_anonymous_args = 0
 1296 0000 70B5     		push	{r4, r5, r6, lr}
 1297 0002 00F1FC06 		add	r6, r0, #252
 1298 0006 0446     		mov	r4, r0
 1299 0008 3046     		mov	r0, r6
 1300 000a FFF7FEFF 		bl	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef
 1301 000e 0546     		mov	r5, r0
 1302 0010 28B9     		cbnz	r0, .L231
 1303 0012 04F64824 		addw	r4, r4, #2632
 1304 0016 0023     		movs	r3, #0
 1305 0018 2360     		str	r3, [r4]	@ float
 1306 001a 2846     		mov	r0, r5
 1307 001c 70BD     		pop	{r4, r5, r6, pc}
 1308              	.L231:
 1309 001e 3046     		mov	r0, r6
 1310 0020 FFF7FEFF 		bl	_ZN9HeightMap16ClearGridHeightsEv
 1311 0024 2846     		mov	r0, r5
ARM GAS  /tmp/ccPDZFMs.s 			page 24


 1312 0026 70BD     		pop	{r4, r5, r6, pc}
 1313              		.size	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef, .-_ZN4Move21LoadHeightMapFromFileEP
 1314              		.section	.text._ZNK4Move19SaveHeightMapToFileEP9FileStore,"ax",%progbits
 1315              		.align	1
 1316              		.p2align 2,,3
 1317              		.global	_ZNK4Move19SaveHeightMapToFileEP9FileStore
 1318              		.syntax unified
 1319              		.thumb
 1320              		.thumb_func
 1321              		.fpu fpv4-sp-d16
 1322              		.type	_ZNK4Move19SaveHeightMapToFileEP9FileStore, %function
 1323              	_ZNK4Move19SaveHeightMapToFileEP9FileStore:
 1324              		@ args = 0, pretend = 0, frame = 0
 1325              		@ frame_needed = 0, uses_anonymous_args = 0
 1326              		@ link register save eliminated.
 1327 0000 00F64823 		addw	r3, r0, #2632
 1328 0004 93ED000A 		vldr.32	s0, [r3]
 1329 0008 FC30     		adds	r0, r0, #252
 1330 000a FFF7FEBF 		b	_ZNK9HeightMap10SaveToFileEP9FileStoref
 1331              		.size	_ZNK4Move19SaveHeightMapToFileEP9FileStore, .-_ZNK4Move19SaveHeightMapToFileEP9FileStore
 1332 000e 00BF     		.section	.text._ZN4Move14SetTaperHeightEf,"ax",%progbits
 1333              		.align	1
 1334              		.p2align 2,,3
 1335              		.global	_ZN4Move14SetTaperHeightEf
 1336              		.syntax unified
 1337              		.thumb
 1338              		.thumb_func
 1339              		.fpu fpv4-sp-d16
 1340              		.type	_ZN4Move14SetTaperHeightEf, %function
 1341              	_ZN4Move14SetTaperHeightEf:
 1342              		@ args = 0, pretend = 0, frame = 0
 1343              		@ frame_needed = 0, uses_anonymous_args = 0
 1344              		@ link register save eliminated.
 1345 0000 F7EE007A 		vmov.f32	s15, #1.0e+0
 1346 0004 B4EEE70A 		vcmpe.f32	s0, s15
 1347 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1348 000c CCBF     		ite	gt
 1349 000e 0123     		movgt	r3, #1
 1350 0010 0023     		movle	r3, #0
 1351 0012 80F84D3A 		strb	r3, [r0, #2637]
 1352 0016 09DD     		ble	.L233
 1353 0018 87EE807A 		vdiv.f32	s14, s15, s0
 1354 001c 00F52463 		add	r3, r0, #2624
 1355 0020 00F64420 		addw	r0, r0, #2628
 1356 0024 83ED000A 		vstr.32	s0, [r3]
 1357 0028 80ED007A 		vstr.32	s14, [r0]
 1358              	.L233:
 1359 002c 7047     		bx	lr
 1360              		.size	_ZN4Move14SetTaperHeightEf, .-_ZN4Move14SetTaperHeightEf
 1361 002e 00BF     		.section	.text._ZN4Move7UseMeshEb,"ax",%progbits
 1362              		.align	1
 1363              		.p2align 2,,3
 1364              		.global	_ZN4Move7UseMeshEb
 1365              		.syntax unified
 1366              		.thumb
 1367              		.thumb_func
 1368              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccPDZFMs.s 			page 25


 1369              		.type	_ZN4Move7UseMeshEb, %function
 1370              	_ZN4Move7UseMeshEb:
 1371              		@ args = 0, pretend = 0, frame = 0
 1372              		@ frame_needed = 0, uses_anonymous_args = 0
 1373 0000 10B5     		push	{r4, lr}
 1374 0002 0446     		mov	r4, r0
 1375 0004 FC30     		adds	r0, r0, #252
 1376 0006 FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 1377 000a 84F84C0A 		strb	r0, [r4, #2636]
 1378 000e 10BD     		pop	{r4, pc}
 1379              		.size	_ZN4Move7UseMeshEb, .-_ZN4Move7UseMeshEb
 1380              		.section	.text._ZNK4Move16AxisCompensationEj,"ax",%progbits
 1381              		.align	1
 1382              		.p2align 2,,3
 1383              		.global	_ZNK4Move16AxisCompensationEj
 1384              		.syntax unified
 1385              		.thumb
 1386              		.thumb_func
 1387              		.fpu fpv4-sp-d16
 1388              		.type	_ZNK4Move16AxisCompensationEj, %function
 1389              	_ZNK4Move16AxisCompensationEj:
 1390              		@ args = 0, pretend = 0, frame = 0
 1391              		@ frame_needed = 0, uses_anonymous_args = 0
 1392              		@ link register save eliminated.
 1393 0000 0229     		cmp	r1, #2
 1394 0002 9ABF     		itte	ls
 1395 0004 00EB8100 		addls	r0, r0, r1, lsl #2
 1396 0008 90ED390A 		vldrls.32	s0, [r0, #228]
 1397 000c 9FED010A 		vldrhi.32	s0, .L242
 1398 0010 7047     		bx	lr
 1399              	.L243:
 1400 0012 00BF     		.align	2
 1401              	.L242:
 1402 0014 00000000 		.word	0
 1403              		.size	_ZNK4Move16AxisCompensationEj, .-_ZNK4Move16AxisCompensationEj
 1404              		.section	.text._ZN4Move19SetAxisCompensationEjf,"ax",%progbits
 1405              		.align	1
 1406              		.p2align 2,,3
 1407              		.global	_ZN4Move19SetAxisCompensationEjf
 1408              		.syntax unified
 1409              		.thumb
 1410              		.thumb_func
 1411              		.fpu fpv4-sp-d16
 1412              		.type	_ZN4Move19SetAxisCompensationEjf, %function
 1413              	_ZN4Move19SetAxisCompensationEjf:
 1414              		@ args = 0, pretend = 0, frame = 0
 1415              		@ frame_needed = 0, uses_anonymous_args = 0
 1416              		@ link register save eliminated.
 1417 0000 0229     		cmp	r1, #2
 1418 0002 9CBF     		itt	ls
 1419 0004 00EB8100 		addls	r0, r0, r1, lsl #2
 1420 0008 80ED390A 		vstrls.32	s0, [r0, #228]
 1421 000c 7047     		bx	lr
 1422              		.size	_ZN4Move19SetAxisCompensationEjf, .-_ZN4Move19SetAxisCompensationEjf
 1423 000e 00BF     		.section	.text._ZN4Move18FinishedBedProbingEiRK9StringRef,"ax",%progbits
 1424              		.align	1
 1425              		.p2align 2,,3
ARM GAS  /tmp/ccPDZFMs.s 			page 26


 1426              		.global	_ZN4Move18FinishedBedProbingEiRK9StringRef
 1427              		.syntax unified
 1428              		.thumb
 1429              		.thumb_func
 1430              		.fpu fpv4-sp-d16
 1431              		.type	_ZN4Move18FinishedBedProbingEiRK9StringRef, %function
 1432              	_ZN4Move18FinishedBedProbingEiRK9StringRef:
 1433              		@ args = 0, pretend = 0, frame = 0
 1434              		@ frame_needed = 0, uses_anonymous_args = 0
 1435 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1436 0004 00F64C05 		addw	r5, r0, #2124
 1437 0008 0746     		mov	r7, r0
 1438 000a 2846     		mov	r0, r5
 1439 000c 0C46     		mov	r4, r1
 1440 000e 9046     		mov	r8, r2
 1441 0010 FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 1442 0014 002C     		cmp	r4, #0
 1443 0016 0646     		mov	r6, r0
 1444 0018 3DDB     		blt	.L262
 1445 001a 8442     		cmp	r4, r0
 1446 001c 29D8     		bhi	.L263
 1447 001e 2F4B     		ldr	r3, .L268
 1448 0020 9B6C     		ldr	r3, [r3, #72]
 1449 0022 DB06     		lsls	r3, r3, #27
 1450 0024 32D4     		bmi	.L264
 1451              	.L250:
 1452 0026 3146     		mov	r1, r6
 1453 0028 2846     		mov	r0, r5
 1454 002a 002C     		cmp	r4, #0
 1455 002c 08BF     		it	eq
 1456 002e 3446     		moveq	r4, r6
 1457 0030 FFF7FEFF 		bl	_ZNK19RandomProbePointSet15GoodProbePointsEj
 1458 0034 90B1     		cbz	r0, .L265
 1459 0036 D7F8580A 		ldr	r0, [r7, #2648]
 1460 003a 294A     		ldr	r2, .L268+4
 1461 003c 0368     		ldr	r3, [r0]
 1462 003e 1B69     		ldr	r3, [r3, #16]
 1463 0040 9342     		cmp	r3, r2
 1464 0042 34D1     		bne	.L266
 1465              	.L253:
 1466 0044 2146     		mov	r1, r4
 1467 0046 4246     		mov	r2, r8
 1468 0048 2846     		mov	r0, r5
 1469 004a FFF7FEFF 		bl	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef
 1470 004e 0446     		mov	r4, r0
 1471              	.L248:
 1472 0050 2846     		mov	r0, r5
 1473 0052 FFF7FEFF 		bl	_ZN19RandomProbePointSet17ClearProbeHeightsEv
 1474 0056 2046     		mov	r0, r4
 1475 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1476              	.L265:
 1477 005c 2149     		ldr	r1, .L268+8
 1478 005e 4046     		mov	r0, r8
 1479 0060 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1480 0064 0124     		movs	r4, #1
 1481 0066 2846     		mov	r0, r5
 1482 0068 FFF7FEFF 		bl	_ZN19RandomProbePointSet17ClearProbeHeightsEv
ARM GAS  /tmp/ccPDZFMs.s 			page 27


 1483 006c 2046     		mov	r0, r4
 1484 006e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1485              	.L263:
 1486 0072 0346     		mov	r3, r0
 1487 0074 2246     		mov	r2, r4
 1488 0076 1C49     		ldr	r1, .L268+12
 1489 0078 4046     		mov	r0, r8
 1490 007a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1491 007e 0124     		movs	r4, #1
 1492 0080 2846     		mov	r0, r5
 1493 0082 FFF7FEFF 		bl	_ZN19RandomProbePointSet17ClearProbeHeightsEv
 1494 0086 2046     		mov	r0, r4
 1495 0088 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1496              	.L264:
 1497 008c 0146     		mov	r1, r0
 1498 008e 2846     		mov	r0, r5
 1499 0090 FFF7FEFF 		bl	_ZNK19RandomProbePointSet10DebugPrintEj
 1500 0094 C7E7     		b	.L250
 1501              	.L262:
 1502 0096 0146     		mov	r1, r0
 1503 0098 4246     		mov	r2, r8
 1504 009a 2846     		mov	r0, r5
 1505 009c FFF7FEFF 		bl	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef
 1506 00a0 0024     		movs	r4, #0
 1507 00a2 2846     		mov	r0, r5
 1508 00a4 FFF7FEFF 		bl	_ZN19RandomProbePointSet17ClearProbeHeightsEv
 1509 00a8 2046     		mov	r0, r4
 1510 00aa BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1511              	.L266:
 1512 00ae 9847     		blx	r3
 1513 00b0 0028     		cmp	r0, #0
 1514 00b2 C7D0     		beq	.L253
 1515 00b4 D7F8580A 		ldr	r0, [r7, #2648]
 1516 00b8 0C4B     		ldr	r3, .L268+16
 1517 00ba 0268     		ldr	r2, [r0]
 1518 00bc 5669     		ldr	r6, [r2, #20]
 1519 00be 9E42     		cmp	r6, r3
 1520 00c0 06D1     		bne	.L267
 1521 00c2 2846     		mov	r0, r5
 1522 00c4 0024     		movs	r4, #0
 1523 00c6 FFF7FEFF 		bl	_ZN19RandomProbePointSet17ClearProbeHeightsEv
 1524 00ca 2046     		mov	r0, r4
 1525 00cc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1526              	.L267:
 1527 00d0 2146     		mov	r1, r4
 1528 00d2 4346     		mov	r3, r8
 1529 00d4 2A46     		mov	r2, r5
 1530 00d6 B047     		blx	r6
 1531 00d8 0446     		mov	r4, r0
 1532 00da B9E7     		b	.L248
 1533              	.L269:
 1534              		.align	2
 1535              	.L268:
 1536 00dc 00000000 		.word	reprap
 1537 00e0 00000000 		.word	_ZNK10Kinematics23SupportsAutoCalibrationEv
 1538 00e4 50000000 		.word	.LC14
 1539 00e8 00000000 		.word	.LC13
ARM GAS  /tmp/ccPDZFMs.s 			page 28


 1540 00ec 00000000 		.word	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 1541              		.size	_ZN4Move18FinishedBedProbingEiRK9StringRef, .-_ZN4Move18FinishedBedProbingEiRK9StringRef
 1542              		.section	.text._ZN4Move20AdjustMotorPositionsEPKfj,"ax",%progbits
 1543              		.align	1
 1544              		.p2align 2,,3
 1545              		.global	_ZN4Move20AdjustMotorPositionsEPKfj
 1546              		.syntax unified
 1547              		.thumb
 1548              		.thumb_func
 1549              		.fpu fpv4-sp-d16
 1550              		.type	_ZN4Move20AdjustMotorPositionsEPKfj, %function
 1551              	_ZN4Move20AdjustMotorPositionsEPKfj:
 1552              		@ args = 0, pretend = 0, frame = 8
 1553              		@ frame_needed = 0, uses_anonymous_args = 0
 1554 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1555 0004 8046     		mov	r8, r0
 1556 0006 83B0     		sub	sp, sp, #12
 1557 0008 1848     		ldr	r0, .L278
 1558 000a D8F80430 		ldr	r3, [r8, #4]
 1559 000e 0668     		ldr	r6, [r0]
 1560 0010 D3F804A0 		ldr	r10, [r3, #4]
 1561 0014 0192     		str	r2, [sp, #4]
 1562 0016 12B3     		cbz	r2, .L271
 1563 0018 0AF1180B 		add	fp, r10, #24
 1564 001c 06F5D476 		add	r6, r6, #424
 1565 0020 0F46     		mov	r7, r1
 1566 0022 D946     		mov	r9, fp
 1567 0024 0025     		movs	r5, #0
 1568              	.L272:
 1569 0026 B7EC010A 		vldmia.32	r7!, {s0}
 1570 002a F6EC017A 		vldmia.32	r6!, {s15}
 1571 002e 5BF8044F 		ldr	r4, [fp, #4]!
 1572 0032 20EE270A 		vmul.f32	s0, s0, s15
 1573 0036 FFF7FEFF 		bl	lrintf
 1574 003a 9AF80A10 		ldrb	r1, [r10, #10]	@ zero_extendqisi2
 1575 003e 05F12003 		add	r3, r5, #32
 1576 0042 08EB8303 		add	r3, r8, r3, lsl #2
 1577 0046 2044     		add	r0, r0, r4
 1578 0048 6FF30001 		bfc	r1, #0, #1
 1579 004c 49F8040F 		str	r0, [r9, #4]!
 1580 0050 8AF80A10 		strb	r1, [r10, #10]
 1581 0054 5860     		str	r0, [r3, #4]
 1582 0056 019B     		ldr	r3, [sp, #4]
 1583 0058 0135     		adds	r5, r5, #1
 1584 005a AB42     		cmp	r3, r5
 1585 005c E3D1     		bne	.L272
 1586              	.L271:
 1587 005e 0023     		movs	r3, #0
 1588 0060 88F88030 		strb	r3, [r8, #128]
 1589 0064 03B0     		add	sp, sp, #12
 1590              		@ sp needed
 1591 0066 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1592              	.L279:
 1593 006a 00BF     		.align	2
 1594              	.L278:
 1595 006c 00000000 		.word	reprap
 1596              		.size	_ZN4Move20AdjustMotorPositionsEPKfj, .-_ZN4Move20AdjustMotorPositionsEPKfj
ARM GAS  /tmp/ccPDZFMs.s 			page 29


 1597              		.section	.text.hot._ZN4Move20CurrentMoveCompletedEv,"ax",%progbits
 1598              		.align	1
 1599              		.p2align 2,,3
 1600              		.global	_ZN4Move20CurrentMoveCompletedEv
 1601              		.syntax unified
 1602              		.thumb
 1603              		.thumb_func
 1604              		.fpu fpv4-sp-d16
 1605              		.type	_ZN4Move20CurrentMoveCompletedEv, %function
 1606              	_ZN4Move20CurrentMoveCompletedEv:
 1607              		@ args = 0, pretend = 0, frame = 0
 1608              		@ frame_needed = 0, uses_anonymous_args = 0
 1609 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1610 0004 0246     		mov	r2, r0
 1611 0006 0546     		mov	r5, r0
 1612 0008 00F18401 		add	r1, r0, #132
 1613 000c 52F8500B 		ldr	r0, [r2], #80
 1614 0010 FFF7FEFF 		bl	_ZN3DDA16FetchEndPositionEPVlPVf
 1615 0014 164B     		ldr	r3, .L289
 1616 0016 85F88000 		strb	r0, [r5, #128]
 1617 001a 1B69     		ldr	r3, [r3, #16]
 1618 001c D3F89872 		ldr	r7, [r3, #664]
 1619 0020 0B2F     		cmp	r7, #11
 1620 0022 19D8     		bhi	.L281
 1621 0024 3C46     		mov	r4, r7
 1622 0026 4FF00108 		mov	r8, #1
 1623              	.L283:
 1624 002a 2146     		mov	r1, r4
 1625 002c E61B     		subs	r6, r4, r7
 1626 002e 2868     		ldr	r0, [r5]
 1627 0030 FFF7FEFF 		bl	_ZNK3DDA13GetStepsTakenEj
 1628 0034 05EB8602 		add	r2, r5, r6, lsl #2
 1629 0038 2146     		mov	r1, r4
 1630 003a D2F8B430 		ldr	r3, [r2, #180]
 1631 003e 1844     		add	r0, r0, r3
 1632 0040 C2F8B400 		str	r0, [r2, #180]
 1633 0044 2868     		ldr	r0, [r5]
 1634 0046 FFF7FEFF 		bl	_ZNK3DDA25IsNonPrintingExtruderMoveEj
 1635 004a 0134     		adds	r4, r4, #1
 1636 004c 10B1     		cbz	r0, .L282
 1637 004e 2E44     		add	r6, r6, r5
 1638 0050 86F8D880 		strb	r8, [r6, #216]
 1639              	.L282:
 1640 0054 0C2C     		cmp	r4, #12
 1641 0056 E8D1     		bne	.L283
 1642              	.L281:
 1643 0058 0023     		movs	r3, #0
 1644 005a 2B60     		str	r3, [r5]
 1645 005c AB68     		ldr	r3, [r5, #8]
 1646 005e 1B68     		ldr	r3, [r3]
 1647 0060 AB60     		str	r3, [r5, #8]
 1648 0062 D5F8643A 		ldr	r3, [r5, #2660]
 1649 0066 0133     		adds	r3, r3, #1
 1650 0068 C5F8643A 		str	r3, [r5, #2660]
 1651 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1652              	.L290:
 1653              		.align	2
ARM GAS  /tmp/ccPDZFMs.s 			page 30


 1654              	.L289:
 1655 0070 00000000 		.word	reprap
 1656              		.size	_ZN4Move20CurrentMoveCompletedEv, .-_ZN4Move20CurrentMoveCompletedEv
 1657              		.section	.text._ZN4Move4SpinEv,"ax",%progbits
 1658              		.align	1
 1659              		.p2align 2,,3
 1660              		.global	_ZN4Move4SpinEv
 1661              		.syntax unified
 1662              		.thumb
 1663              		.thumb_func
 1664              		.fpu fpv4-sp-d16
 1665              		.type	_ZN4Move4SpinEv, %function
 1666              	_ZN4Move4SpinEv:
 1667              		@ args = 0, pretend = 0, frame = 120
 1668              		@ frame_needed = 0, uses_anonymous_args = 0
 1669 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1670 0004 067C     		ldrb	r6, [r0, #16]	@ zero_extendqisi2
 1671 0006 9FB0     		sub	sp, sp, #124
 1672 0008 002E     		cmp	r6, #0
 1673 000a 00F0DB80 		beq	.L391
 1674 000e 036A     		ldr	r3, [r0, #32]
 1675 0010 B3F57A7F 		cmp	r3, #1000
 1676 0014 3CBF     		itt	cc
 1677 0016 0133     		addcc	r3, r3, #1
 1678 0018 0362     		strcc	r3, [r0, #32]
 1679 001a 0546     		mov	r5, r0
 1680 001c C068     		ldr	r0, [r0, #12]
 1681 001e 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 1682 0020 042B     		cmp	r3, #4
 1683 0022 25D1     		bne	.L295
 1684 0024 A44C     		ldr	r4, .L401
 1685 0026 18E0     		b	.L299
 1686              	.L297:
 1687 0028 D5F85C3A 		ldr	r3, [r5, #2652]
 1688 002c 2268     		ldr	r2, [r4]
 1689 002e 0133     		adds	r3, r3, #1
 1690 0030 C5F85C3A 		str	r3, [r5, #2652]
 1691 0034 D2F8C030 		ldr	r3, [r2, #192]
 1692 0038 43F00203 		orr	r3, r3, #2
 1693 003c C2F8C030 		str	r3, [r2, #192]
 1694              	.L296:
 1695 0040 E868     		ldr	r0, [r5, #12]
 1696 0042 FFF7FEFF 		bl	_ZN3DDA4FreeEv
 1697 0046 10B1     		cbz	r0, .L298
 1698 0048 6B69     		ldr	r3, [r5, #20]
 1699 004a 0133     		adds	r3, r3, #1
 1700 004c 6B61     		str	r3, [r5, #20]
 1701              	.L298:
 1702 004e EB68     		ldr	r3, [r5, #12]
 1703 0050 1868     		ldr	r0, [r3]
 1704 0052 E860     		str	r0, [r5, #12]
 1705 0054 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 1706 0056 042B     		cmp	r3, #4
 1707 0058 0AD1     		bne	.L295
 1708              	.L299:
 1709 005a FFF7FEFF 		bl	_ZNK3DDA12HasStepErrorEv
 1710 005e 0028     		cmp	r0, #0
ARM GAS  /tmp/ccPDZFMs.s 			page 31


 1711 0060 EED0     		beq	.L296
 1712 0062 A36C     		ldr	r3, [r4, #72]
 1713 0064 DB06     		lsls	r3, r3, #27
 1714 0066 DFD5     		bpl	.L297
 1715 0068 E868     		ldr	r0, [r5, #12]
 1716 006a FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1717 006e DBE7     		b	.L297
 1718              	.L295:
 1719 0070 6868     		ldr	r0, [r5, #4]
 1720 0072 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 1721 0074 03F0FF02 		and	r2, r3, #255
 1722 0078 002B     		cmp	r3, #0
 1723 007a 78D1     		bne	.L302
 1724 007c 0368     		ldr	r3, [r0]
 1725 007e 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 1726 0080 012B     		cmp	r3, #1
 1727 0082 74D0     		beq	.L302
 1728 0084 8D4B     		ldr	r3, .L401+4
 1729 0086 1B68     		ldr	r3, [r3]
 1730 0088 0B2B     		cmp	r3, #11
 1731 008a 70DD     		ble	.L302
 1732 008c 4368     		ldr	r3, [r0, #4]
 1733 008e 197A     		ldrb	r1, [r3, #8]	@ zero_extendqisi2
 1734 0090 0129     		cmp	r1, #1
 1735 0092 0ED1     		bne	.L303
 1736 0094 1146     		mov	r1, r2
 1737              	.L304:
 1738 0096 1144     		add	r1, r1, r2
 1739 0098 D3F8D820 		ldr	r2, [r3, #216]
 1740 009c 5B68     		ldr	r3, [r3, #4]
 1741 009e 1C7A     		ldrb	r4, [r3, #8]	@ zero_extendqisi2
 1742 00a0 012C     		cmp	r4, #1
 1743 00a2 F8D0     		beq	.L304
 1744 00a4 864B     		ldr	r3, .L401+8
 1745 00a6 9942     		cmp	r1, r3
 1746 00a8 03D9     		bls	.L303
 1747 00aa 864B     		ldr	r3, .L401+12
 1748 00ac 0A44     		add	r2, r2, r1
 1749 00ae 9A42     		cmp	r2, r3
 1750 00b0 5DD8     		bhi	.L302
 1751              	.L303:
 1752 00b2 95F8984A 		ldrb	r4, [r5, #2712]	@ zero_extendqisi2
 1753 00b6 002C     		cmp	r4, #0
 1754 00b8 00F0A680 		beq	.L305
 1755 00bc 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 1756 00be 012B     		cmp	r3, #1
 1757 00c0 40F28880 		bls	.L392
 1758              	.L306:
 1759 00c4 0022     		movs	r2, #0
 1760 00c6 85F8982A 		strb	r2, [r5, #2712]
 1761 00ca A3B1     		cbz	r3, .L317
 1762              	.L395:
 1763 00cc 2B68     		ldr	r3, [r5]
 1764 00ce 93B1     		cbz	r3, .L317
 1765 00d0 93ED367A 		vldr.32	s14, [r3, #216]	@ int
 1766 00d4 9FED7C6A 		vldr.32	s12, .L401+16
 1767 00d8 D5ED0A7A 		vldr.32	s15, [r5, #40]
ARM GAS  /tmp/ccPDZFMs.s 			page 32


 1768 00dc B8EE477A 		vcvt.f32.u32	s14, s14
 1769 00e0 0422     		movs	r2, #4
 1770 00e2 C7EE066A 		vdiv.f32	s13, s14, s12
 1771 00e6 2846     		mov	r0, r5
 1772 00e8 77EEA67A 		vadd.f32	s15, s15, s13
 1773 00ec C5ED0A7A 		vstr.32	s15, [r5, #40]
 1774 00f0 1A72     		strb	r2, [r3, #8]
 1775 00f2 FFF7FEFF 		bl	_ZN4Move20CurrentMoveCompletedEv
 1776              	.L317:
 1777 00f6 2B68     		ldr	r3, [r5]
 1778 00f8 002B     		cmp	r3, #0
 1779 00fa 3DD0     		beq	.L393
 1780              	.L319:
 1781 00fc 2C68     		ldr	r4, [r5]
 1782 00fe 9CB3     		cbz	r4, .L291
 1783 0100 0027     		movs	r7, #0
 1784 0102 3E46     		mov	r6, r7
 1785 0104 08E0     		b	.L331
 1786              	.L394:
 1787 0106 FFF7FEFF 		bl	_ZNK3DDA11GetTimeLeftEv
 1788 010a 2468     		ldr	r4, [r4]
 1789 010c 6B68     		ldr	r3, [r5, #4]
 1790 010e A342     		cmp	r3, r4
 1791 0110 0644     		add	r6, r6, r0
 1792 0112 07F10107 		add	r7, r7, #1
 1793 0116 27D0     		beq	.L291
 1794              	.L331:
 1795 0118 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 1796 011a DBB2     		uxtb	r3, r3
 1797 011c 9A1E     		subs	r2, r3, #2
 1798 011e 022A     		cmp	r2, #2
 1799 0120 2046     		mov	r0, r4
 1800 0122 F0D9     		bls	.L394
 1801 0124 012B     		cmp	r3, #1
 1802 0126 1FD1     		bne	.L291
 1803 0128 684B     		ldr	r3, .L401+20
 1804 012a 9E42     		cmp	r6, r3
 1805 012c 1CDC     		bgt	.L291
 1806 012e 0D2F     		cmp	r7, #13
 1807 0130 1AD8     		bhi	.L291
 1808 0132 9846     		mov	r8, r3
 1809 0134 4BF21A79 		movw	r9, #46874
 1810 0138 03E0     		b	.L334
 1811              	.L387:
 1812 013a 4645     		cmp	r6, r8
 1813 013c 14DC     		bgt	.L291
 1814 013e 0E2F     		cmp	r7, #14
 1815 0140 12D0     		beq	.L291
 1816              	.L334:
 1817 0142 2046     		mov	r0, r4
 1818 0144 FFF7FEFF 		bl	_ZNK3DDA15IsGoodToPrepareEv
 1819 0148 0137     		adds	r7, r7, #1
 1820 014a 08B9     		cbnz	r0, .L335
 1821 014c 4E45     		cmp	r6, r9
 1822 014e 03DC     		bgt	.L336
 1823              	.L335:
 1824 0150 697C     		ldrb	r1, [r5, #17]	@ zero_extendqisi2
ARM GAS  /tmp/ccPDZFMs.s 			page 33


 1825 0152 2046     		mov	r0, r4
 1826 0154 FFF7FEFF 		bl	_ZN3DDA7PrepareEh
 1827              	.L336:
 1828 0158 2046     		mov	r0, r4
 1829 015a FFF7FEFF 		bl	_ZNK3DDA11GetTimeLeftEv
 1830 015e 2468     		ldr	r4, [r4]
 1831 0160 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 1832 0162 012B     		cmp	r3, #1
 1833 0164 0644     		add	r6, r6, r0
 1834 0166 E8D0     		beq	.L387
 1835              	.L291:
 1836 0168 1FB0     		add	sp, sp, #124
 1837              		@ sp needed
 1838 016a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1839              	.L302:
 1840 016e 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 1841 0170 0024     		movs	r4, #0
 1842 0172 002B     		cmp	r3, #0
 1843 0174 BFD0     		beq	.L317
 1844 0176 A9E7     		b	.L395
 1845              	.L393:
 1846 0178 14B1     		cbz	r4, .L320
 1847 017a 2B6A     		ldr	r3, [r5, #32]
 1848 017c 0A2B     		cmp	r3, #10
 1849 017e BDD9     		bls	.L319
 1850              	.L320:
 1851 0180 FFF7FEFF 		bl	_ZN8Platform20DisableStepInterruptEv
 1852 0184 AC68     		ldr	r4, [r5, #8]
 1853 0186 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 1854 0188 012B     		cmp	r3, #1
 1855 018a 38D0     		beq	.L396
 1856              	.L322:
 1857 018c 227A     		ldrb	r2, [r4, #8]	@ zero_extendqisi2
 1858 018e 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 1859 0190 022A     		cmp	r2, #2
 1860 0192 2ED0     		beq	.L397
 1861 0194 002B     		cmp	r3, #0
 1862 0196 B1D1     		bne	.L319
 1863 0198 AB7C     		ldrb	r3, [r5, #18]	@ zero_extendqisi2
 1864 019a 022B     		cmp	r3, #2
 1865 019c 00F09A80 		beq	.L398
 1866              	.L328:
 1867 01a0 032B     		cmp	r3, #3
 1868 01a2 ABD1     		bne	.L319
 1869 01a4 FFF7FEFF 		bl	millis
 1870 01a8 D5F8543A 		ldr	r3, [r5, #2644]
 1871 01ac D5F8502A 		ldr	r2, [r5, #2640]
 1872 01b0 C31A     		subs	r3, r0, r3
 1873 01b2 9342     		cmp	r3, r2
 1874 01b4 A2D3     		bcc	.L319
 1875 01b6 404B     		ldr	r3, .L401
 1876 01b8 1868     		ldr	r0, [r3]
 1877 01ba FFF7FEFF 		bl	_ZN8Platform14SetDriversIdleEv
 1878 01be 0023     		movs	r3, #0
 1879 01c0 AB74     		strb	r3, [r5, #18]
 1880 01c2 9BE7     		b	.L319
 1881              	.L391:
ARM GAS  /tmp/ccPDZFMs.s 			page 34


 1882 01c4 3C4B     		ldr	r3, .L401
 1883 01c6 01A9     		add	r1, sp, #4
 1884 01c8 1869     		ldr	r0, [r3, #16]
 1885 01ca FFF7FEFF 		bl	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 1886 01ce 1FB0     		add	sp, sp, #124
 1887              		@ sp needed
 1888 01d0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1889              	.L392:
 1890 01d4 05F66821 		addw	r1, r5, #2664
 1891 01d8 FFF7FEFF 		bl	_ZN3DDA4InitEPKf
 1892 01dc 38B1     		cbz	r0, .L389
 1893 01de 6A68     		ldr	r2, [r5, #4]
 1894 01e0 AB7C     		ldrb	r3, [r5, #18]	@ zero_extendqisi2
 1895 01e2 1268     		ldr	r2, [r2]
 1896 01e4 6A60     		str	r2, [r5, #4]
 1897 01e6 002B     		cmp	r3, #0
 1898 01e8 7BD0     		beq	.L308
 1899 01ea 032B     		cmp	r3, #3
 1900 01ec 79D0     		beq	.L308
 1901              	.L389:
 1902 01ee 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 1903 01f0 68E7     		b	.L306
 1904              	.L397:
 1905 01f2 002B     		cmp	r3, #0
 1906 01f4 4CD0     		beq	.L324
 1907 01f6 2C60     		str	r4, [r5]
 1908              	.L325:
 1909 01f8 0223     		movs	r3, #2
 1910 01fa AB74     		strb	r3, [r5, #18]
 1911 01fc 7EE7     		b	.L319
 1912              	.L396:
 1913 01fe 697C     		ldrb	r1, [r5, #17]	@ zero_extendqisi2
 1914 0200 2046     		mov	r0, r4
 1915 0202 FFF7FEFF 		bl	_ZN3DDA7PrepareEh
 1916 0206 C1E7     		b	.L322
 1917              	.L305:
 1918 0208 2B4B     		ldr	r3, .L401
 1919 020a 01A9     		add	r1, sp, #4
 1920 020c 1869     		ldr	r0, [r3, #16]
 1921 020e FFF7FEFF 		bl	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 1922 0212 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 1923 0214 0446     		mov	r4, r0
 1924 0216 08B1     		cbz	r0, .L311
 1925 0218 012B     		cmp	r3, #1
 1926 021a 04D9     		bls	.L399
 1927              	.L311:
 1928 021c 3446     		mov	r4, r6
 1929              	.L400:
 1930 021e 002B     		cmp	r3, #0
 1931 0220 3FF469AF 		beq	.L317
 1932 0224 52E7     		b	.L395
 1933              	.L399:
 1934 0226 9DF87630 		ldrb	r3, [sp, #118]	@ zero_extendqisi2
 1935 022a 63B9     		cbnz	r3, .L312
 1936 022c DDE91A78 		ldrd	r7, r8, [sp, #104]
 1937 0230 01A9     		add	r1, sp, #4
 1938 0232 4346     		mov	r3, r8
ARM GAS  /tmp/ccPDZFMs.s 			page 35


 1939 0234 3A46     		mov	r2, r7
 1940 0236 2846     		mov	r0, r5
 1941 0238 FFF7FEFF 		bl	_ZNK4Move13AxisTransformEPfmm
 1942 023c 01A9     		add	r1, sp, #4
 1943 023e FFF7FEFF 		bl	_ZNK4Move12BedTransformEPfmm
 1944 0242 9DF87630 		ldrb	r3, [sp, #118]	@ zero_extendqisi2
 1945              	.L312:
 1946 0246 6F68     		ldr	r7, [r5, #4]
 1947 0248 022B     		cmp	r3, #2
 1948 024a 60D0     		beq	.L338
 1949 024c 03F0FD03 		and	r3, r3, #253
 1950 0250 012B     		cmp	r3, #1
 1951 0252 05D1     		bne	.L313
 1952 0254 2846     		mov	r0, r5
 1953 0256 FFF7FEFF 		bl	_ZNK4Move14IsRawMotorMoveEh.part.6
 1954 025a 80F00100 		eor	r0, r0, #1
 1955 025e C4B2     		uxtb	r4, r0
 1956              	.L313:
 1957 0260 2246     		mov	r2, r4
 1958 0262 01A9     		add	r1, sp, #4
 1959 0264 3846     		mov	r0, r7
 1960 0266 FFF7FEFF 		bl	_ZN3DDA4InitERN6GCodes7RawMoveEb
 1961 026a 70B1     		cbz	r0, .L390
 1962 026c 6968     		ldr	r1, [r5, #4]
 1963 026e D5F8603A 		ldr	r3, [r5, #2656]
 1964 0272 0968     		ldr	r1, [r1]
 1965 0274 AA7C     		ldrb	r2, [r5, #18]	@ zero_extendqisi2
 1966 0276 6960     		str	r1, [r5, #4]
 1967 0278 0133     		adds	r3, r3, #1
 1968 027a 0021     		movs	r1, #0
 1969 027c C5F8603A 		str	r3, [r5, #2656]
 1970 0280 2962     		str	r1, [r5, #32]
 1971 0282 002A     		cmp	r2, #0
 1972 0284 45D0     		beq	.L315
 1973 0286 032A     		cmp	r2, #3
 1974 0288 43D0     		beq	.L315
 1975              	.L390:
 1976 028a 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 1977 028c 3446     		mov	r4, r6
 1978 028e C6E7     		b	.L400
 1979              	.L324:
 1980 0290 0F4B     		ldr	r3, .L401+24
 1981 0292 D3F89010 		ldr	r1, [r3, #144]
 1982 0296 AB68     		ldr	r3, [r5, #8]
 1983 0298 2B60     		str	r3, [r5]
 1984 029a 2868     		ldr	r0, [r5]
 1985 029c FFF7FEFF 		bl	_ZN3DDA5StartEm
 1986 02a0 0028     		cmp	r0, #0
 1987 02a2 A9D0     		beq	.L325
 1988 02a4 2B68     		ldr	r3, [r5]
 1989 02a6 002B     		cmp	r3, #0
 1990 02a8 A6D0     		beq	.L325
 1991              	.L327:
 1992 02aa 2868     		ldr	r0, [r5]
 1993 02ac FFF7FEFF 		bl	_ZN3DDA4StepEv
 1994 02b0 0028     		cmp	r0, #0
 1995 02b2 FAD1     		bne	.L327
ARM GAS  /tmp/ccPDZFMs.s 			page 36


 1996 02b4 A0E7     		b	.L325
 1997              	.L402:
 1998 02b6 00BF     		.align	2
 1999              	.L401:
 2000 02b8 00000000 		.word	reprap
 2001 02bc 00000000 		.word	_ZN13DriveMovement7numFreeE
 2002 02c0 0D270700 		.word	468749
 2003 02c4 379C1C00 		.word	1874999
 2004 02c8 C0E16449 		.word	1231348160
 2005 02cc 356E0100 		.word	93749
 2006 02d0 00000940 		.word	1074331648
 2007              	.L398:
 2008 02d4 174B     		ldr	r3, .L403
 2009 02d6 1869     		ldr	r0, [r3, #16]
 2010 02d8 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 2011 02dc 80B1     		cbz	r0, .L329
 2012 02de AB7C     		ldrb	r3, [r5, #18]	@ zero_extendqisi2
 2013 02e0 5EE7     		b	.L328
 2014              	.L308:
 2015 02e2 0123     		movs	r3, #1
 2016 02e4 AB74     		strb	r3, [r5, #18]
 2017 02e6 FFF7FEFF 		bl	millis
 2018 02ea D5F8543A 		ldr	r3, [r5, #2644]
 2019 02ee 6A6A     		ldr	r2, [r5, #36]
 2020 02f0 C5F8540A 		str	r0, [r5, #2644]
 2021 02f4 C31A     		subs	r3, r0, r3
 2022 02f6 9A42     		cmp	r2, r3
 2023 02f8 38BF     		it	cc
 2024 02fa 6B62     		strcc	r3, [r5, #36]
 2025 02fc 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 2026 02fe E1E6     		b	.L306
 2027              	.L329:
 2028 0300 FFF7FEFF 		bl	millis
 2029 0304 0323     		movs	r3, #3
 2030 0306 C5F8540A 		str	r0, [r5, #2644]
 2031 030a AB74     		strb	r3, [r5, #18]
 2032 030c F6E6     		b	.L319
 2033              	.L338:
 2034 030e 0024     		movs	r4, #0
 2035 0310 A6E7     		b	.L313
 2036              	.L315:
 2037 0312 0123     		movs	r3, #1
 2038 0314 AB74     		strb	r3, [r5, #18]
 2039 0316 FFF7FEFF 		bl	millis
 2040 031a D5F8543A 		ldr	r3, [r5, #2644]
 2041 031e 6A6A     		ldr	r2, [r5, #36]
 2042 0320 C5F8540A 		str	r0, [r5, #2644]
 2043 0324 C31A     		subs	r3, r0, r3
 2044 0326 9A42     		cmp	r2, r3
 2045 0328 38BF     		it	cc
 2046 032a 6B62     		strcc	r3, [r5, #36]
 2047 032c 3446     		mov	r4, r6
 2048 032e 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 2049 0330 75E7     		b	.L400
 2050              	.L404:
 2051 0332 00BF     		.align	2
 2052              	.L403:
ARM GAS  /tmp/ccPDZFMs.s 			page 37


 2053 0334 00000000 		.word	reprap
 2054              		.size	_ZN4Move4SpinEv, .-_ZN4Move4SpinEv
 2055              		.section	.text._ZN4Move13LowPowerPauseER12RestorePoint,"ax",%progbits
 2056              		.align	1
 2057              		.p2align 2,,3
 2058              		.global	_ZN4Move13LowPowerPauseER12RestorePoint
 2059              		.syntax unified
 2060              		.thumb
 2061              		.thumb_func
 2062              		.fpu fpv4-sp-d16
 2063              		.type	_ZN4Move13LowPowerPauseER12RestorePoint, %function
 2064              	_ZN4Move13LowPowerPauseER12RestorePoint:
 2065              		@ args = 0, pretend = 0, frame = 0
 2066              		@ frame_needed = 0, uses_anonymous_args = 0
 2067 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2068 0004 0546     		mov	r5, r0
 2069 0006 8946     		mov	r9, r1
 2070 0008 4668     		ldr	r6, [r0, #4]
 2071              		.syntax unified
 2072              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2073 000a 72B6     		cpsid i
 2074              	@ 0 "" 2
 2075              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2076 000c BFF35F8F 		dmb
 2077              	@ 0 "" 2
 2078              		.thumb
 2079              		.syntax unified
 2080 0010 DFF8F480 		ldr	r8, .L434+4
 2081 0014 0027     		movs	r7, #0
 2082 0016 88F80070 		strb	r7, [r8]
 2083 001a 0468     		ldr	r4, [r0]
 2084 001c 002C     		cmp	r4, #0
 2085 001e 6AD0     		beq	.L406
 2086 0020 A369     		ldr	r3, [r4, #24]
 2087 0022 0133     		adds	r3, r3, #1
 2088 0024 0AD1     		bne	.L433
 2089 0026 A642     		cmp	r6, r4
 2090 0028 03D1     		bne	.L410
 2091 002a 15E0     		b	.L408
 2092              	.L411:
 2093 002c A369     		ldr	r3, [r4, #24]
 2094 002e 0133     		adds	r3, r3, #1
 2095 0030 02D1     		bne	.L420
 2096              	.L410:
 2097 0032 2468     		ldr	r4, [r4]
 2098 0034 A642     		cmp	r6, r4
 2099 0036 F9D1     		bne	.L411
 2100              	.L420:
 2101 0038 0027     		movs	r7, #0
 2102 003a 0DE0     		b	.L408
 2103              	.L433:
 2104 003c FFF7FEFF 		bl	_ZN8Platform20DisableStepInterruptEv
 2105 0040 2046     		mov	r0, r4
 2106 0042 FFF7FEFF 		bl	_ZN3DDA11MoveAbortedEv
 2107 0046 2846     		mov	r0, r5
 2108 0048 FFF7FEFF 		bl	_ZN4Move20CurrentMoveCompletedEv
 2109 004c D5F8643A 		ldr	r3, [r5, #2660]
ARM GAS  /tmp/ccPDZFMs.s 			page 38


 2110 0050 013B     		subs	r3, r3, #1
 2111 0052 C5F8643A 		str	r3, [r5, #2660]
 2112 0056 0127     		movs	r7, #1
 2113              	.L408:
 2114 0058 0123     		movs	r3, #1
 2115 005a 88F80030 		strb	r3, [r8]
 2116              		.syntax unified
 2117              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2118 005e BFF35F8F 		dmb
 2119              	@ 0 "" 2
 2120              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2121 0062 62B6     		cpsie i
 2122              	@ 0 "" 2
 2123              		.thumb
 2124              		.syntax unified
 2125 0064 B442     		cmp	r4, r6
 2126 0066 43D0     		beq	.L421
 2127 0068 D4F8B410 		ldr	r1, [r4, #180]	@ float
 2128 006c A369     		ldr	r3, [r4, #24]
 2129 006e D4F8B820 		ldr	r2, [r4, #184]	@ float
 2130 0072 C9F82820 		str	r2, [r9, #40]	@ float
 2131 0076 C9F82410 		str	r1, [r9, #36]	@ float
 2132 007a C9F83030 		str	r3, [r9, #48]
 2133 007e 3946     		mov	r1, r7
 2134 0080 2046     		mov	r0, r4
 2135 0082 FFF7FEFF 		bl	_ZNK3DDA17GetProportionDoneEb
 2136 0086 B4F8F030 		ldrh	r3, [r4, #240]
 2137 008a A9F83430 		strh	r3, [r9, #52]	@ movhi
 2138 008e 89ED0B0A 		vstr.32	s0, [r9, #44]
 2139 0092 07B1     		cbz	r7, .L413
 2140 0094 2468     		ldr	r4, [r4]
 2141              	.L413:
 2142 0096 1B4B     		ldr	r3, .L434
 2143 0098 6C60     		str	r4, [r5, #4]
 2144 009a 1B69     		ldr	r3, [r3, #16]
 2145 009c D4F80480 		ldr	r8, [r4, #4]
 2146 00a0 D3F89CA2 		ldr	r10, [r3, #668]
 2147 00a4 BAF1000F 		cmp	r10, #0
 2148 00a8 0BD0     		beq	.L414
 2149 00aa 4F46     		mov	r7, r9
 2150 00ac 0024     		movs	r4, #0
 2151              	.L415:
 2152 00ae 2146     		mov	r1, r4
 2153 00b0 0022     		movs	r2, #0
 2154 00b2 4046     		mov	r0, r8
 2155 00b4 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 2156 00b8 0134     		adds	r4, r4, #1
 2157 00ba A245     		cmp	r10, r4
 2158 00bc A7EC010A 		vstmia.32	r7!, {s0}
 2159 00c0 F5D1     		bne	.L415
 2160              	.L414:
 2161 00c2 4946     		mov	r1, r9
 2162 00c4 D8E90423 		ldrd	r2, r3, [r8, #16]
 2163 00c8 2846     		mov	r0, r5
 2164 00ca FFF7FEFF 		bl	_ZNK4Move26InverseAxisAndBedTransformEPfmm
 2165 00ce 6C68     		ldr	r4, [r5, #4]
 2166 00d0 A642     		cmp	r6, r4
ARM GAS  /tmp/ccPDZFMs.s 			page 39


 2167 00d2 0AD0     		beq	.L417
 2168              	.L416:
 2169 00d4 2046     		mov	r0, r4
 2170 00d6 FFF7FEFF 		bl	_ZN3DDA4FreeEv
 2171 00da D5F8603A 		ldr	r3, [r5, #2656]
 2172 00de 013B     		subs	r3, r3, #1
 2173 00e0 C5F8603A 		str	r3, [r5, #2656]
 2174 00e4 2468     		ldr	r4, [r4]
 2175 00e6 A642     		cmp	r6, r4
 2176 00e8 F4D1     		bne	.L416
 2177              	.L417:
 2178 00ea 0120     		movs	r0, #1
 2179 00ec BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2180              	.L421:
 2181 00f0 0020     		movs	r0, #0
 2182 00f2 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2183              	.L406:
 2184 00f6 8468     		ldr	r4, [r0, #8]
 2185 00f8 A642     		cmp	r6, r4
 2186 00fa ADD0     		beq	.L408
 2187 00fc A369     		ldr	r3, [r4, #24]
 2188 00fe 0133     		adds	r3, r3, #1
 2189 0100 97D0     		beq	.L410
 2190 0102 A9E7     		b	.L408
 2191              	.L435:
 2192              		.align	2
 2193              	.L434:
 2194 0104 00000000 		.word	reprap
 2195 0108 00000000 		.word	g_interrupt_enabled
 2196              		.size	_ZN4Move13LowPowerPauseER12RestorePoint, .-_ZN4Move13LowPowerPauseER12RestorePoint
 2197              		.section	.text.hot._ZN4Move16TryStartNextMoveEm,"ax",%progbits
 2198              		.align	1
 2199              		.p2align 2,,3
 2200              		.global	_ZN4Move16TryStartNextMoveEm
 2201              		.syntax unified
 2202              		.thumb
 2203              		.thumb_func
 2204              		.fpu fpv4-sp-d16
 2205              		.type	_ZN4Move16TryStartNextMoveEm, %function
 2206              	_ZN4Move16TryStartNextMoveEm:
 2207              		@ args = 0, pretend = 0, frame = 0
 2208              		@ frame_needed = 0, uses_anonymous_args = 0
 2209 0000 08B5     		push	{r3, lr}
 2210 0002 8368     		ldr	r3, [r0, #8]
 2211 0004 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 2212 0006 DBB2     		uxtb	r3, r3
 2213 0008 022B     		cmp	r3, #2
 2214 000a 17D0     		beq	.L444
 2215 000c 012B     		cmp	r3, #1
 2216 000e 02D1     		bne	.L438
 2217 0010 8369     		ldr	r3, [r0, #24]
 2218 0012 0133     		adds	r3, r3, #1
 2219 0014 8361     		str	r3, [r0, #24]
 2220              	.L438:
 2221 0016 0D4B     		ldr	r3, .L445
 2222 0018 1868     		ldr	r0, [r3]
 2223 001a 00F68423 		addw	r3, r0, #2692
ARM GAS  /tmp/ccPDZFMs.s 			page 40


 2224 001e D3ED007A 		vldr.32	s15, [r3]
 2225 0022 F5EEC07A 		vcmpe.f32	s15, #0
 2226 0026 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2227 002a 05DD     		ble	.L439
 2228 002c 00F68820 		addw	r0, r0, #2696
 2229 0030 9FED070A 		vldr.32	s0, .L445+4
 2230 0034 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 2231              	.L439:
 2232 0038 0020     		movs	r0, #0
 2233 003a 08BD     		pop	{r3, pc}
 2234              	.L444:
 2235 003c 8368     		ldr	r3, [r0, #8]
 2236 003e 0360     		str	r3, [r0]
 2237 0040 0068     		ldr	r0, [r0]
 2238 0042 BDE80840 		pop	{r3, lr}
 2239 0046 FFF7FEBF 		b	_ZN3DDA5StartEm
 2240              	.L446:
 2241 004a 00BF     		.align	2
 2242              	.L445:
 2243 004c 00000000 		.word	reprap
 2244 0050 00000000 		.word	0
 2245              		.size	_ZN4Move16TryStartNextMoveEm, .-_ZN4Move16TryStartNextMoveEm
 2246              		.section	.text._ZNK4Move25GetCurrentMachinePositionEPfb,"ax",%progbits
 2247              		.align	1
 2248              		.p2align 2,,3
 2249              		.global	_ZNK4Move25GetCurrentMachinePositionEPfb
 2250              		.syntax unified
 2251              		.thumb
 2252              		.thumb_func
 2253              		.fpu fpv4-sp-d16
 2254              		.type	_ZNK4Move25GetCurrentMachinePositionEPfb, %function
 2255              	_ZNK4Move25GetCurrentMachinePositionEPfb:
 2256              		@ args = 0, pretend = 0, frame = 0
 2257              		@ frame_needed = 0, uses_anonymous_args = 0
 2258 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 2259 0004 104B     		ldr	r3, .L454
 2260 0006 4068     		ldr	r0, [r0, #4]
 2261 0008 1B69     		ldr	r3, [r3, #16]
 2262 000a D0F80490 		ldr	r9, [r0, #4]
 2263 000e D3F89C62 		ldr	r6, [r3, #668]
 2264 0012 0027     		movs	r7, #0
 2265 0014 9046     		mov	r8, r2
 2266 0016 0D46     		mov	r5, r1
 2267 0018 0024     		movs	r4, #0
 2268 001a 05E0     		b	.L450
 2269              	.L448:
 2270 001c 0134     		adds	r4, r4, #1
 2271 001e 092C     		cmp	r4, #9
 2272 0020 2F60     		str	r7, [r5]	@ float
 2273 0022 05F10405 		add	r5, r5, #4
 2274 0026 0DD0     		beq	.L453
 2275              	.L450:
 2276 0028 A642     		cmp	r6, r4
 2277 002a F7D9     		bls	.L448
 2278 002c 2146     		mov	r1, r4
 2279 002e 4246     		mov	r2, r8
 2280 0030 4846     		mov	r0, r9
ARM GAS  /tmp/ccPDZFMs.s 			page 41


 2281 0032 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 2282 0036 0134     		adds	r4, r4, #1
 2283 0038 092C     		cmp	r4, #9
 2284 003a 85ED000A 		vstr.32	s0, [r5]
 2285 003e 05F10405 		add	r5, r5, #4
 2286 0042 F1D1     		bne	.L450
 2287              	.L453:
 2288 0044 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2289              	.L455:
 2290              		.align	2
 2291              	.L454:
 2292 0048 00000000 		.word	reprap
 2293              		.size	_ZNK4Move25GetCurrentMachinePositionEPfb, .-_ZNK4Move25GetCurrentMachinePositionEPfb
 2294              		.section	.text._ZN4Move23MotorEndpointToPositionElj,"ax",%progbits
 2295              		.align	1
 2296              		.p2align 2,,3
 2297              		.global	_ZN4Move23MotorEndpointToPositionElj
 2298              		.syntax unified
 2299              		.thumb
 2300              		.thumb_func
 2301              		.fpu fpv4-sp-d16
 2302              		.type	_ZN4Move23MotorEndpointToPositionElj, %function
 2303              	_ZN4Move23MotorEndpointToPositionElj:
 2304              		@ args = 0, pretend = 0, frame = 0
 2305              		@ frame_needed = 0, uses_anonymous_args = 0
 2306              		@ link register save eliminated.
 2307 0000 064B     		ldr	r3, .L457
 2308 0002 1B68     		ldr	r3, [r3]
 2309 0004 07EE100A 		vmov	s14, r0	@ int
 2310 0008 03EB8101 		add	r1, r3, r1, lsl #2
 2311 000c D1ED6A7A 		vldr.32	s15, [r1, #424]
 2312 0010 B8EEC70A 		vcvt.f32.s32	s0, s14
 2313 0014 80EE270A 		vdiv.f32	s0, s0, s15
 2314 0018 7047     		bx	lr
 2315              	.L458:
 2316 001a 00BF     		.align	2
 2317              	.L457:
 2318 001c 00000000 		.word	reprap
 2319              		.size	_ZN4Move23MotorEndpointToPositionElj, .-_ZN4Move23MotorEndpointToPositionElj
 2320              		.section	.text._ZNK4Move11IsExtrudingEv,"ax",%progbits
 2321              		.align	1
 2322              		.p2align 2,,3
 2323              		.global	_ZNK4Move11IsExtrudingEv
 2324              		.syntax unified
 2325              		.thumb
 2326              		.thumb_func
 2327              		.fpu fpv4-sp-d16
 2328              		.type	_ZNK4Move11IsExtrudingEv, %function
 2329              	_ZNK4Move11IsExtrudingEv:
 2330              		@ args = 0, pretend = 0, frame = 0
 2331              		@ frame_needed = 0, uses_anonymous_args = 0
 2332              		@ link register save eliminated.
 2333              		.syntax unified
 2334              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2335 0000 72B6     		cpsid i
 2336              	@ 0 "" 2
 2337              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
ARM GAS  /tmp/ccPDZFMs.s 			page 42


 2338 0002 BFF35F8F 		dmb
 2339              	@ 0 "" 2
 2340              		.thumb
 2341              		.syntax unified
 2342 0006 084A     		ldr	r2, .L462
 2343 0008 0023     		movs	r3, #0
 2344 000a 1370     		strb	r3, [r2]
 2345 000c 0368     		ldr	r3, [r0]
 2346 000e 4BB1     		cbz	r3, .L461
 2347 0010 0368     		ldr	r3, [r0]
 2348 0012 987A     		ldrb	r0, [r3, #10]	@ zero_extendqisi2
 2349 0014 C0F3C000 		ubfx	r0, r0, #3, #1
 2350              	.L460:
 2351 0018 0123     		movs	r3, #1
 2352 001a 1370     		strb	r3, [r2]
 2353              		.syntax unified
 2354              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2355 001c BFF35F8F 		dmb
 2356              	@ 0 "" 2
 2357              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2358 0020 62B6     		cpsie i
 2359              	@ 0 "" 2
 2360              		.thumb
 2361              		.syntax unified
 2362 0022 7047     		bx	lr
 2363              	.L461:
 2364 0024 1846     		mov	r0, r3
 2365 0026 F7E7     		b	.L460
 2366              	.L463:
 2367              		.align	2
 2368              	.L462:
 2369 0028 00000000 		.word	g_interrupt_enabled
 2370              		.size	_ZNK4Move11IsExtrudingEv, .-_ZNK4Move11IsExtrudingEv
 2371              		.section	.text._ZNK4Move22GetCurrentUserPositionEPfhmm,"ax",%progbits
 2372              		.align	1
 2373              		.p2align 2,,3
 2374              		.global	_ZNK4Move22GetCurrentUserPositionEPfhmm
 2375              		.syntax unified
 2376              		.thumb
 2377              		.thumb_func
 2378              		.fpu fpv4-sp-d16
 2379              		.type	_ZNK4Move22GetCurrentUserPositionEPfhmm, %function
 2380              	_ZNK4Move22GetCurrentUserPositionEPfhmm:
 2381              		@ args = 4, pretend = 0, frame = 0
 2382              		@ frame_needed = 0, uses_anonymous_args = 0
 2383 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2384 0004 022A     		cmp	r2, #2
 2385 0006 DDF81880 		ldr	r8, [sp, #24]
 2386 000a 17D0     		beq	.L465
 2387 000c 1E46     		mov	r6, r3
 2388 000e 02F0FD03 		and	r3, r2, #253
 2389 0012 012B     		cmp	r3, #1
 2390 0014 0546     		mov	r5, r0
 2391 0016 0F46     		mov	r7, r1
 2392 0018 1446     		mov	r4, r2
 2393 001a 14D0     		beq	.L470
 2394 001c 0022     		movs	r2, #0
ARM GAS  /tmp/ccPDZFMs.s 			page 43


 2395              	.L466:
 2396 001e 3946     		mov	r1, r7
 2397 0020 2846     		mov	r0, r5
 2398 0022 FFF7FEFF 		bl	_ZNK4Move25GetCurrentMachinePositionEPfb
 2399 0026 3CB9     		cbnz	r4, .L464
 2400 0028 4346     		mov	r3, r8
 2401 002a 3246     		mov	r2, r6
 2402 002c 3946     		mov	r1, r7
 2403 002e 2846     		mov	r0, r5
 2404 0030 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2405 0034 FFF7FEBF 		b	_ZNK4Move26InverseAxisAndBedTransformEPfmm
 2406              	.L464:
 2407 0038 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2408              	.L465:
 2409 003c 0122     		movs	r2, #1
 2410 003e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2411 0042 FFF7FEBF 		b	_ZNK4Move25GetCurrentMachinePositionEPfb
 2412              	.L470:
 2413 0046 FFF7FEFF 		bl	_ZNK4Move14IsRawMotorMoveEh.part.6
 2414 004a 0246     		mov	r2, r0
 2415 004c E7E7     		b	.L466
 2416              		.size	_ZNK4Move22GetCurrentUserPositionEPfhmm, .-_ZNK4Move22GetCurrentUserPositionEPfhmm
 2417 004e 00BF     		.section	.text._ZN4Move15LiveCoordinatesEPfmm,"ax",%progbits
 2418              		.align	1
 2419              		.p2align 2,,3
 2420              		.global	_ZN4Move15LiveCoordinatesEPfmm
 2421              		.syntax unified
 2422              		.thumb
 2423              		.thumb_func
 2424              		.fpu fpv4-sp-d16
 2425              		.type	_ZN4Move15LiveCoordinatesEPfmm, %function
 2426              	_ZN4Move15LiveCoordinatesEPfmm:
 2427              		@ args = 0, pretend = 0, frame = 56
 2428              		@ frame_needed = 0, uses_anonymous_args = 0
 2429 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2430 0004 DFF81091 		ldr	r9, .L481+4
 2431 0008 D9F81050 		ldr	r5, [r9, #16]
 2432 000c 91B0     		sub	sp, sp, #68
 2433 000e 9B46     		mov	fp, r3
 2434 0010 D5F89C32 		ldr	r3, [r5, #668]
 2435 0014 0292     		str	r2, [sp, #8]
 2436 0016 0446     		mov	r4, r0
 2437 0018 0E46     		mov	r6, r1
 2438 001a 0393     		str	r3, [sp, #12]
 2439 001c D5F89882 		ldr	r8, [r5, #664]
 2440              		.syntax unified
 2441              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2442 0020 72B6     		cpsid i
 2443              	@ 0 "" 2
 2444              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2445 0022 BFF35F8F 		dmb
 2446              	@ 0 "" 2
 2447              		.thumb
 2448              		.syntax unified
 2449 0026 3B4F     		ldr	r7, .L481
 2450 0028 0023     		movs	r3, #0
 2451 002a 3B70     		strb	r3, [r7]
ARM GAS  /tmp/ccPDZFMs.s 			page 44


 2452 002c 90F88030 		ldrb	r3, [r0, #128]	@ zero_extendqisi2
 2453 0030 00F1500A 		add	r10, r0, #80
 2454 0034 002B     		cmp	r3, #0
 2455 0036 56D1     		bne	.L480
 2456 0038 C8EB8872 		rsb	r2, r8, r8, lsl #30
 2457 003c 4FEA8800 		lsl	r0, r8, #2
 2458 0040 9200     		lsls	r2, r2, #2
 2459 0042 04F18403 		add	r3, r4, #132
 2460 0046 0AEB0001 		add	r1, r10, r0
 2461 004a 3032     		adds	r2, r2, #48
 2462 004c 3044     		add	r0, r0, r6
 2463 004e 1D46     		mov	r5, r3
 2464 0050 0593     		str	r3, [sp, #20]
 2465 0052 FFF7FEFF 		bl	memcpy
 2466 0056 04F1A403 		add	r3, r4, #164
 2467 005a 0DF11C0E 		add	lr, sp, #28
 2468 005e 0493     		str	r3, [sp, #16]
 2469              	.L475:
 2470 0060 EB68     		ldr	r3, [r5, #12]	@ unaligned
 2471 0062 2868     		ldr	r0, [r5]	@ unaligned
 2472 0064 6968     		ldr	r1, [r5, #4]	@ unaligned
 2473 0066 AA68     		ldr	r2, [r5, #8]	@ unaligned
 2474 0068 F446     		mov	ip, lr
 2475 006a ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 2476 006e 049B     		ldr	r3, [sp, #16]
 2477 0070 1035     		adds	r5, r5, #16
 2478 0072 9D42     		cmp	r5, r3
 2479 0074 E646     		mov	lr, ip
 2480 0076 F3D1     		bne	.L475
 2481 0078 2868     		ldr	r0, [r5]	@ unaligned
 2482 007a CCF80000 		str	r0, [ip]
 2483 007e 0125     		movs	r5, #1
 2484 0080 3D70     		strb	r5, [r7]
 2485              		.syntax unified
 2486              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2487 0082 BFF35F8F 		dmb
 2488              	@ 0 "" 2
 2489              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2490 0086 62B6     		cpsie i
 2491              	@ 0 "" 2
 2492              		.thumb
 2493              		.syntax unified
 2494 0088 D4F8580A 		ldr	r0, [r4, #2648]
 2495 008c D9F80020 		ldr	r2, [r9]
 2496 0090 0368     		ldr	r3, [r0]
 2497 0092 CDE90086 		strd	r8, r6, [sp]
 2498 0096 02F5D472 		add	r2, r2, #424
 2499 009a D3F80C80 		ldr	r8, [r3, #12]
 2500 009e 039B     		ldr	r3, [sp, #12]
 2501 00a0 07A9     		add	r1, sp, #28
 2502 00a2 C047     		blx	r8
 2503              		.syntax unified
 2504              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2505 00a4 72B6     		cpsid i
 2506              	@ 0 "" 2
 2507              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2508 00a6 BFF35F8F 		dmb
ARM GAS  /tmp/ccPDZFMs.s 			page 45


 2509              	@ 0 "" 2
 2510              		.thumb
 2511              		.syntax unified
 2512 00aa 0023     		movs	r3, #0
 2513 00ac 0599     		ldr	r1, [sp, #20]
 2514 00ae 3B70     		strb	r3, [r7]
 2515 00b0 07A8     		add	r0, sp, #28
 2516 00b2 2422     		movs	r2, #36
 2517 00b4 FFF7FEFF 		bl	memcmp
 2518 00b8 38B9     		cbnz	r0, .L476
 2519 00ba 039B     		ldr	r3, [sp, #12]
 2520 00bc 5046     		mov	r0, r10
 2521 00be 9A00     		lsls	r2, r3, #2
 2522 00c0 3146     		mov	r1, r6
 2523 00c2 FFF7FEFF 		bl	memcpy
 2524 00c6 84F88050 		strb	r5, [r4, #128]
 2525              	.L476:
 2526 00ca 0123     		movs	r3, #1
 2527 00cc 3B70     		strb	r3, [r7]
 2528              		.syntax unified
 2529              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2530 00ce BFF35F8F 		dmb
 2531              	@ 0 "" 2
 2532              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2533 00d2 62B6     		cpsie i
 2534              	@ 0 "" 2
 2535              		.thumb
 2536              		.syntax unified
 2537 00d4 5B46     		mov	r3, fp
 2538 00d6 029A     		ldr	r2, [sp, #8]
 2539 00d8 3146     		mov	r1, r6
 2540 00da 2046     		mov	r0, r4
 2541 00dc FFF7FEFF 		bl	_ZNK4Move26InverseAxisAndBedTransformEPfmm
 2542 00e0 11B0     		add	sp, sp, #68
 2543              		@ sp needed
 2544 00e2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2545              	.L480:
 2546 00e6 0A46     		mov	r2, r1
 2547 00e8 5346     		mov	r3, r10
 2548 00ea 00F18001 		add	r1, r0, #128
 2549              	.L473:
 2550 00ee D3F800C0 		ldr	ip, [r3]	@ unaligned
 2551 00f2 5D68     		ldr	r5, [r3, #4]	@ unaligned
 2552 00f4 9868     		ldr	r0, [r3, #8]	@ unaligned
 2553 00f6 D3F80CE0 		ldr	lr, [r3, #12]	@ unaligned
 2554 00fa C2F80CE0 		str	lr, [r2, #12]	@ unaligned
 2555 00fe 1033     		adds	r3, r3, #16
 2556 0100 8B42     		cmp	r3, r1
 2557 0102 C2F800C0 		str	ip, [r2]	@ unaligned
 2558 0106 5560     		str	r5, [r2, #4]	@ unaligned
 2559 0108 9060     		str	r0, [r2, #8]	@ unaligned
 2560 010a 02F11002 		add	r2, r2, #16
 2561 010e EED1     		bne	.L473
 2562 0110 DBE7     		b	.L476
 2563              	.L482:
 2564 0112 00BF     		.align	2
 2565              	.L481:
ARM GAS  /tmp/ccPDZFMs.s 			page 46


 2566 0114 00000000 		.word	g_interrupt_enabled
 2567 0118 00000000 		.word	reprap
 2568              		.size	_ZN4Move15LiveCoordinatesEPfmm, .-_ZN4Move15LiveCoordinatesEPfmm
 2569              		.section	.text._ZN4Move18SetLiveCoordinatesEPKf,"ax",%progbits
 2570              		.align	1
 2571              		.p2align 2,,3
 2572              		.global	_ZN4Move18SetLiveCoordinatesEPKf
 2573              		.syntax unified
 2574              		.thumb
 2575              		.thumb_func
 2576              		.fpu fpv4-sp-d16
 2577              		.type	_ZN4Move18SetLiveCoordinatesEPKf, %function
 2578              	_ZN4Move18SetLiveCoordinatesEPKf:
 2579              		@ args = 0, pretend = 0, frame = 0
 2580              		@ frame_needed = 0, uses_anonymous_args = 0
 2581              		@ link register save eliminated.
 2582 0000 30B4     		push	{r4, r5}
 2583 0002 0023     		movs	r3, #0
 2584 0004 0C46     		mov	r4, r1
 2585              	.L484:
 2586 0006 03F11402 		add	r2, r3, #20
 2587 000a 00EB8202 		add	r2, r0, r2, lsl #2
 2588 000e 0133     		adds	r3, r3, #1
 2589 0010 54F8045B 		ldr	r5, [r4], #4	@ float
 2590 0014 1560     		str	r5, [r2]	@ float
 2591 0016 0C2B     		cmp	r3, #12
 2592 0018 F5D1     		bne	.L484
 2593 001a 064B     		ldr	r3, .L487
 2594 001c 0122     		movs	r2, #1
 2595 001e 1B69     		ldr	r3, [r3, #16]
 2596 0020 80F88020 		strb	r2, [r0, #128]
 2597 0024 D3F89C32 		ldr	r3, [r3, #668]
 2598 0028 00F18402 		add	r2, r0, #132
 2599 002c 30BC     		pop	{r4, r5}
 2600 002e FFF7FEBF 		b	_ZNK4Move17EndPointToMachineEPKfPlj
 2601              	.L488:
 2602 0032 00BF     		.align	2
 2603              	.L487:
 2604 0034 00000000 		.word	reprap
 2605              		.size	_ZN4Move18SetLiveCoordinatesEPKf, .-_ZN4Move18SetLiveCoordinatesEPKf
 2606              		.section	.text._ZN4Move4InitEv,"ax",%progbits
 2607              		.align	1
 2608              		.p2align 2,,3
 2609              		.global	_ZN4Move4InitEv
 2610              		.syntax unified
 2611              		.thumb
 2612              		.thumb_func
 2613              		.fpu fpv4-sp-d16
 2614              		.type	_ZN4Move4InitEv, %function
 2615              	_ZN4Move4InitEv:
 2616              		@ args = 0, pretend = 0, frame = 48
 2617              		@ frame_needed = 0, uses_anonymous_args = 0
 2618 0000 70B5     		push	{r4, r5, r6, lr}
 2619 0002 4568     		ldr	r5, [r0, #4]
 2620 0004 C560     		str	r5, [r0, #12]
 2621 0006 8CB0     		sub	sp, sp, #48
 2622 0008 0446     		mov	r4, r0
ARM GAS  /tmp/ccPDZFMs.s 			page 47


 2623 000a 8560     		str	r5, [r0, #8]
 2624              	.L490:
 2625 000c 2846     		mov	r0, r5
 2626 000e FFF7FEFF 		bl	_ZN3DDA4InitEv
 2627 0012 2D68     		ldr	r5, [r5]
 2628 0014 6368     		ldr	r3, [r4, #4]
 2629 0016 AB42     		cmp	r3, r5
 2630 0018 F8D1     		bne	.L490
 2631 001a 0025     		movs	r5, #0
 2632 001c 2560     		str	r5, [r4]
 2633 001e C4F85C5A 		str	r5, [r4, #2652]
 2634 0022 C4E90655 		strd	r5, r5, [r4, #24]
 2635 0026 6561     		str	r5, [r4, #20]
 2636 0028 2046     		mov	r0, r4
 2637 002a FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 2638 002e D4F8F830 		ldr	r3, [r4, #248]
 2639 0032 0022     		movs	r2, #0
 2640 0034 1A60     		str	r2, [r3]	@ float
 2641 0036 D4F8F430 		ldr	r3, [r4, #244]
 2642 003a 1A60     		str	r2, [r3]	@ float
 2643 003c D4F8F010 		ldr	r1, [r4, #240]
 2644 0040 2B46     		mov	r3, r5
 2645 0042 0A60     		str	r2, [r1]	@ float
 2646 0044 1546     		mov	r5, r2	@ float
 2647 0046 1846     		mov	r0, r3
 2648 0048 6946     		mov	r1, sp
 2649              	.L491:
 2650 004a 03F12002 		add	r2, r3, #32
 2651 004e 04EB8202 		add	r2, r4, r2, lsl #2
 2652 0052 0133     		adds	r3, r3, #1
 2653 0054 0C2B     		cmp	r3, #12
 2654 0056 41F8045B 		str	r5, [r1], #4	@ float
 2655 005a 5060     		str	r0, [r2, #4]
 2656 005c F5D1     		bne	.L491
 2657 005e 6946     		mov	r1, sp
 2658 0060 2046     		mov	r0, r4
 2659 0062 FFF7FEFF 		bl	_ZN4Move18SetLiveCoordinatesEPKf
 2660 0066 6946     		mov	r1, sp
 2661 0068 2046     		mov	r0, r4
 2662 006a FFF7FEFF 		bl	_ZN4Move12SetPositionsEPKf
 2663 006e 0023     		movs	r3, #0
 2664 0070 0026     		movs	r6, #0
 2665 0072 1946     		mov	r1, r3
 2666 0074 04F12C00 		add	r0, r4, #44
 2667              	.L492:
 2668 0078 03F12C02 		add	r2, r3, #44
 2669 007c E518     		adds	r5, r4, r3
 2670 007e 04EB8202 		add	r2, r4, r2, lsl #2
 2671 0082 0133     		adds	r3, r3, #1
 2672 0084 092B     		cmp	r3, #9
 2673 0086 5160     		str	r1, [r2, #4]
 2674 0088 85F8D810 		strb	r1, [r5, #216]
 2675 008c 40F8046B 		str	r6, [r0], #4	@ float
 2676 0090 F2D1     		bne	.L492
 2677 0092 04F64820 		addw	r0, r4, #2632
 2678 0096 47F23052 		movw	r2, #30000
 2679 009a 0123     		movs	r3, #1
ARM GAS  /tmp/ccPDZFMs.s 			page 48


 2680 009c 84F84C1A 		strb	r1, [r4, #2636]
 2681 00a0 84F84D1A 		strb	r1, [r4, #2637]
 2682 00a4 0660     		str	r6, [r0]	@ float
 2683 00a6 A174     		strb	r1, [r4, #18]
 2684 00a8 2162     		str	r1, [r4, #32]
 2685 00aa 6174     		strb	r1, [r4, #17]
 2686 00ac A662     		str	r6, [r4, #40]	@ float
 2687 00ae 6162     		str	r1, [r4, #36]
 2688 00b0 84F8981A 		strb	r1, [r4, #2712]
 2689 00b4 C4F8502A 		str	r2, [r4, #2640]
 2690 00b8 2374     		strb	r3, [r4, #16]
 2691 00ba 0CB0     		add	sp, sp, #48
 2692              		@ sp needed
 2693 00bc 70BD     		pop	{r4, r5, r6, pc}
 2694              		.size	_ZN4Move4InitEv, .-_ZN4Move4InitEv
 2695 00be 00BF     		.section	.text._ZN4Move14SetNewPositionEPKfb,"ax",%progbits
 2696              		.align	1
 2697              		.p2align 2,,3
 2698              		.global	_ZN4Move14SetNewPositionEPKfb
 2699              		.syntax unified
 2700              		.thumb
 2701              		.thumb_func
 2702              		.fpu fpv4-sp-d16
 2703              		.type	_ZN4Move14SetNewPositionEPKfb, %function
 2704              	_ZN4Move14SetNewPositionEPKfb:
 2705              		@ args = 0, pretend = 0, frame = 48
 2706              		@ frame_needed = 0, uses_anonymous_args = 0
 2707 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2708 0004 8EB0     		sub	sp, sp, #56
 2709 0006 0C46     		mov	r4, r1
 2710 0008 0746     		mov	r7, r0
 2711 000a 9046     		mov	r8, r2
 2712 000c 01F1300C 		add	ip, r1, #48
 2713 0010 02AE     		add	r6, sp, #8
 2714              	.L498:
 2715 0012 2068     		ldr	r0, [r4]	@ unaligned
 2716 0014 6168     		ldr	r1, [r4, #4]	@ unaligned
 2717 0016 A268     		ldr	r2, [r4, #8]	@ unaligned
 2718 0018 E368     		ldr	r3, [r4, #12]	@ unaligned
 2719 001a 3546     		mov	r5, r6
 2720 001c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2721 001e 1034     		adds	r4, r4, #16
 2722 0020 6445     		cmp	r4, ip
 2723 0022 2E46     		mov	r6, r5
 2724 0024 F5D1     		bne	.L498
 2725 0026 0D48     		ldr	r0, .L501
 2726 0028 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 2727 002c 0446     		mov	r4, r0
 2728 002e 0B48     		ldr	r0, .L501
 2729 0030 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 2730 0034 2246     		mov	r2, r4
 2731 0036 0346     		mov	r3, r0
 2732 0038 02A9     		add	r1, sp, #8
 2733 003a 3846     		mov	r0, r7
 2734 003c CDF80080 		str	r8, [sp]
 2735 0040 FFF7FEFF 		bl	_ZNK4Move19AxisAndBedTransformEPfmmb
 2736 0044 02A9     		add	r1, sp, #8
ARM GAS  /tmp/ccPDZFMs.s 			page 49


 2737 0046 3846     		mov	r0, r7
 2738 0048 FFF7FEFF 		bl	_ZN4Move18SetLiveCoordinatesEPKf
 2739 004c 02A9     		add	r1, sp, #8
 2740 004e 3846     		mov	r0, r7
 2741 0050 FFF7FEFF 		bl	_ZN4Move12SetPositionsEPKf
 2742 0054 0EB0     		add	sp, sp, #56
 2743              		@ sp needed
 2744 0056 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2745              	.L502:
 2746 005a 00BF     		.align	2
 2747              	.L501:
 2748 005c 00000000 		.word	reprap
 2749              		.size	_ZN4Move14SetNewPositionEPKfb, .-_ZN4Move14SetNewPositionEPKfb
 2750              		.section	.text._ZN4Move22ResetExtruderPositionsEv,"ax",%progbits
 2751              		.align	1
 2752              		.p2align 2,,3
 2753              		.global	_ZN4Move22ResetExtruderPositionsEv
 2754              		.syntax unified
 2755              		.thumb
 2756              		.thumb_func
 2757              		.fpu fpv4-sp-d16
 2758              		.type	_ZN4Move22ResetExtruderPositionsEv, %function
 2759              	_ZN4Move22ResetExtruderPositionsEv:
 2760              		@ args = 0, pretend = 0, frame = 0
 2761              		@ frame_needed = 0, uses_anonymous_args = 0
 2762              		@ link register save eliminated.
 2763 0000 10B4     		push	{r4}
 2764              		.syntax unified
 2765              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2766 0002 72B6     		cpsid i
 2767              	@ 0 "" 2
 2768              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2769 0004 BFF35F8F 		dmb
 2770              	@ 0 "" 2
 2771              		.thumb
 2772              		.syntax unified
 2773 0008 0C4B     		ldr	r3, .L508
 2774 000a 0D4C     		ldr	r4, .L508+4
 2775 000c 1B69     		ldr	r3, [r3, #16]
 2776 000e D3F89832 		ldr	r3, [r3, #664]
 2777 0012 0022     		movs	r2, #0
 2778 0014 0B2B     		cmp	r3, #11
 2779 0016 2270     		strb	r2, [r4]
 2780 0018 08D8     		bhi	.L504
 2781 001a 0021     		movs	r1, #0
 2782              	.L505:
 2783 001c 03F11402 		add	r2, r3, #20
 2784 0020 00EB8202 		add	r2, r0, r2, lsl #2
 2785 0024 0133     		adds	r3, r3, #1
 2786 0026 0C2B     		cmp	r3, #12
 2787 0028 1160     		str	r1, [r2]	@ float
 2788 002a F7D1     		bne	.L505
 2789              	.L504:
 2790 002c 0123     		movs	r3, #1
 2791 002e 2370     		strb	r3, [r4]
 2792              		.syntax unified
 2793              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
ARM GAS  /tmp/ccPDZFMs.s 			page 50


 2794 0030 BFF35F8F 		dmb
 2795              	@ 0 "" 2
 2796              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2797 0034 62B6     		cpsie i
 2798              	@ 0 "" 2
 2799              		.thumb
 2800              		.syntax unified
 2801 0036 5DF8044B 		ldr	r4, [sp], #4
 2802 003a 7047     		bx	lr
 2803              	.L509:
 2804              		.align	2
 2805              	.L508:
 2806 003c 00000000 		.word	reprap
 2807 0040 00000000 		.word	g_interrupt_enabled
 2808              		.size	_ZN4Move22ResetExtruderPositionsEv, .-_ZN4Move22ResetExtruderPositionsEv
 2809              		.section	.text._ZN4Move23GetAccumulatedExtrusionEjRb,"ax",%progbits
 2810              		.align	1
 2811              		.p2align 2,,3
 2812              		.global	_ZN4Move23GetAccumulatedExtrusionEjRb
 2813              		.syntax unified
 2814              		.thumb
 2815              		.thumb_func
 2816              		.fpu fpv4-sp-d16
 2817              		.type	_ZN4Move23GetAccumulatedExtrusionEjRb, %function
 2818              	_ZN4Move23GetAccumulatedExtrusionEjRb:
 2819              		@ args = 0, pretend = 0, frame = 8
 2820              		@ frame_needed = 0, uses_anonymous_args = 0
 2821 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2822 0004 264B     		ldr	r3, .L523
 2823 0006 1B69     		ldr	r3, [r3, #16]
 2824 0008 D3F89832 		ldr	r3, [r3, #664]
 2825 000c 0B44     		add	r3, r3, r1
 2826 000e 0B2B     		cmp	r3, #11
 2827 0010 83B0     		sub	sp, sp, #12
 2828 0012 2DD8     		bhi	.L511
 2829 0014 1646     		mov	r6, r2
 2830 0016 0546     		mov	r5, r0
 2831 0018 0C46     		mov	r4, r1
 2832              		.syntax unified
 2833              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2834 001a EFF3108B 		MRS fp, primask
 2835              	@ 0 "" 2
 2836              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2837 001e 72B6     		cpsid i
 2838              	@ 0 "" 2
 2839              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2840 0020 BFF35F8F 		dmb
 2841              	@ 0 "" 2
 2842              		.thumb
 2843              		.syntax unified
 2844 0024 DFF87C90 		ldr	r9, .L523+4
 2845 0028 00EB8108 		add	r8, r0, r1, lsl #2
 2846 002c 4FF0000A 		mov	r10, #0
 2847 0030 89F800A0 		strb	r10, [r9]
 2848 0034 D8F8B470 		ldr	r7, [r8, #180]
 2849 0038 0268     		ldr	r2, [r0]
 2850 003a 2AB1     		cbz	r2, .L514
ARM GAS  /tmp/ccPDZFMs.s 			page 51


 2851 003c 1946     		mov	r1, r3
 2852 003e 1046     		mov	r0, r2
 2853 0040 0192     		str	r2, [sp, #4]
 2854 0042 FFF7FEFF 		bl	_ZNK3DDA13GetStepsTakenEj
 2855 0046 D0B9     		cbnz	r0, .L522
 2856              	.L514:
 2857 0048 2919     		adds	r1, r5, r4
 2858 004a 0020     		movs	r0, #0
 2859 004c 91F8D830 		ldrb	r3, [r1, #216]	@ zero_extendqisi2
 2860 0050 3370     		strb	r3, [r6]
 2861              	.L513:
 2862 0052 C8F8B400 		str	r0, [r8, #180]
 2863 0056 BBF1000F 		cmp	fp, #0
 2864 005a 0CD1     		bne	.L510
 2865 005c 0123     		movs	r3, #1
 2866 005e 89F80030 		strb	r3, [r9]
 2867              		.syntax unified
 2868              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2869 0062 BFF35F8F 		dmb
 2870              	@ 0 "" 2
 2871              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2872 0066 62B6     		cpsie i
 2873              	@ 0 "" 2
 2874              		.thumb
 2875              		.syntax unified
 2876 0068 3846     		mov	r0, r7
 2877 006a 03B0     		add	sp, sp, #12
 2878              		@ sp needed
 2879 006c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2880              	.L511:
 2881 0070 0123     		movs	r3, #1
 2882 0072 1370     		strb	r3, [r2]
 2883 0074 0027     		movs	r7, #0
 2884              	.L510:
 2885 0076 3846     		mov	r0, r7
 2886 0078 03B0     		add	sp, sp, #12
 2887              		@ sp needed
 2888 007a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2889              	.L522:
 2890 007e 019A     		ldr	r2, [sp, #4]
 2891 0080 937A     		ldrb	r3, [r2, #10]	@ zero_extendqisi2
 2892 0082 1B07     		lsls	r3, r3, #28
 2893 0084 0744     		add	r7, r7, r0
 2894 0086 C0F10000 		rsb	r0, r0, #0
 2895 008a 06D5     		bpl	.L515
 2896 008c 2919     		adds	r1, r5, r4
 2897 008e 91F8D830 		ldrb	r3, [r1, #216]	@ zero_extendqisi2
 2898 0092 3370     		strb	r3, [r6]
 2899 0094 81F8D8A0 		strb	r10, [r1, #216]
 2900 0098 DBE7     		b	.L513
 2901              	.L515:
 2902 009a 0123     		movs	r3, #1
 2903 009c 3370     		strb	r3, [r6]
 2904 009e D8E7     		b	.L513
 2905              	.L524:
 2906              		.align	2
 2907              	.L523:
ARM GAS  /tmp/ccPDZFMs.s 			page 52


 2908 00a0 00000000 		.word	reprap
 2909 00a4 00000000 		.word	g_interrupt_enabled
 2910              		.size	_ZN4Move23GetAccumulatedExtrusionEjRb, .-_ZN4Move23GetAccumulatedExtrusionEjRb
 2911              		.section	.text._ZN4Move18SetXYBedProbePointEjff,"ax",%progbits
 2912              		.align	1
 2913              		.p2align 2,,3
 2914              		.global	_ZN4Move18SetXYBedProbePointEjff
 2915              		.syntax unified
 2916              		.thumb
 2917              		.thumb_func
 2918              		.fpu fpv4-sp-d16
 2919              		.type	_ZN4Move18SetXYBedProbePointEjff, %function
 2920              	_ZN4Move18SetXYBedProbePointEjff:
 2921              		@ args = 0, pretend = 0, frame = 0
 2922              		@ frame_needed = 0, uses_anonymous_args = 0
 2923              		@ link register save eliminated.
 2924 0000 1F29     		cmp	r1, #31
 2925 0002 03D8     		bhi	.L527
 2926 0004 00F64C00 		addw	r0, r0, #2124
 2927 0008 FFF7FEBF 		b	_ZN19RandomProbePointSet18SetXYBedProbePointEjff
 2928              	.L527:
 2929 000c 034B     		ldr	r3, .L528
 2930 000e 044A     		ldr	r2, .L528+4
 2931 0010 1868     		ldr	r0, [r3]
 2932 0012 40F2B511 		movw	r1, #437
 2933 0016 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 2934              	.L529:
 2935 001a 00BF     		.align	2
 2936              	.L528:
 2937 001c 00000000 		.word	reprap
 2938 0020 00000000 		.word	.LC15
 2939              		.size	_ZN4Move18SetXYBedProbePointEjff, .-_ZN4Move18SetXYBedProbePointEjff
 2940              		.section	.text._ZN4Move17SetZBedProbePointEjfbb,"ax",%progbits
 2941              		.align	1
 2942              		.p2align 2,,3
 2943              		.global	_ZN4Move17SetZBedProbePointEjfbb
 2944              		.syntax unified
 2945              		.thumb
 2946              		.thumb_func
 2947              		.fpu fpv4-sp-d16
 2948              		.type	_ZN4Move17SetZBedProbePointEjfbb, %function
 2949              	_ZN4Move17SetZBedProbePointEjfbb:
 2950              		@ args = 0, pretend = 0, frame = 0
 2951              		@ frame_needed = 0, uses_anonymous_args = 0
 2952              		@ link register save eliminated.
 2953 0000 1F29     		cmp	r1, #31
 2954 0002 03D8     		bhi	.L532
 2955 0004 00F64C00 		addw	r0, r0, #2124
 2956 0008 FFF7FEBF 		b	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb
 2957              	.L532:
 2958 000c 034B     		ldr	r3, .L533
 2959 000e 044A     		ldr	r2, .L533+4
 2960 0010 1868     		ldr	r0, [r3]
 2961 0012 40F2B511 		movw	r1, #437
 2962 0016 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 2963              	.L534:
 2964 001a 00BF     		.align	2
ARM GAS  /tmp/ccPDZFMs.s 			page 53


 2965              	.L533:
 2966 001c 00000000 		.word	reprap
 2967 0020 00000000 		.word	.LC16
 2968              		.size	_ZN4Move17SetZBedProbePointEjfbb, .-_ZN4Move17SetZBedProbePointEjfbb
 2969              		.section	.text._ZNK4Move19GetProbeCoordinatesEiRfS0_b,"ax",%progbits
 2970              		.align	1
 2971              		.p2align 2,,3
 2972              		.global	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 2973              		.syntax unified
 2974              		.thumb
 2975              		.thumb_func
 2976              		.fpu fpv4-sp-d16
 2977              		.type	_ZNK4Move19GetProbeCoordinatesEiRfS0_b, %function
 2978              	_ZNK4Move19GetProbeCoordinatesEiRfS0_b:
 2979              		@ args = 4, pretend = 0, frame = 0
 2980              		@ frame_needed = 0, uses_anonymous_args = 0
 2981 0000 70B5     		push	{r4, r5, r6, lr}
 2982 0002 00EB8104 		add	r4, r0, r1, lsl #2
 2983 0006 04F50561 		add	r1, r4, #2128
 2984 000a 0868     		ldr	r0, [r1]	@ float
 2985 000c 1060     		str	r0, [r2]	@ float
 2986 000e 04F50D60 		add	r0, r4, #2256
 2987 0012 9DF81010 		ldrb	r1, [sp, #16]	@ zero_extendqisi2
 2988 0016 0068     		ldr	r0, [r0]	@ float
 2989 0018 1860     		str	r0, [r3]	@ float
 2990 001a B9B1     		cbz	r1, .L536
 2991 001c 1D46     		mov	r5, r3
 2992 001e 0E4B     		ldr	r3, .L541
 2993 0020 1868     		ldr	r0, [r3]
 2994 0022 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 2995 0026 1646     		mov	r6, r2
 2996 0028 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 2997 002c D6ED007A 		vldr.32	s15, [r6]
 2998 0030 90ED017A 		vldr.32	s14, [r0, #4]
 2999 0034 77EEC77A 		vsub.f32	s15, s15, s14
 3000 0038 C6ED007A 		vstr.32	s15, [r6]
 3001 003c D5ED007A 		vldr.32	s15, [r5]
 3002 0040 90ED027A 		vldr.32	s14, [r0, #8]
 3003 0044 77EEC77A 		vsub.f32	s15, s15, s14
 3004 0048 C5ED007A 		vstr.32	s15, [r5]
 3005              	.L536:
 3006 004c 04F51564 		add	r4, r4, #2384
 3007 0050 94ED000A 		vldr.32	s0, [r4]
 3008 0054 70BD     		pop	{r4, r5, r6, pc}
 3009              	.L542:
 3010 0056 00BF     		.align	2
 3011              	.L541:
 3012 0058 00000000 		.word	reprap
 3013              		.size	_ZNK4Move19GetProbeCoordinatesEiRfS0_b, .-_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3014              		.section	.text._ZN4Move8SimulateEh,"ax",%progbits
 3015              		.align	1
 3016              		.p2align 2,,3
 3017              		.global	_ZN4Move8SimulateEh
 3018              		.syntax unified
 3019              		.thumb
 3020              		.thumb_func
 3021              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccPDZFMs.s 			page 54


 3022              		.type	_ZN4Move8SimulateEh, %function
 3023              	_ZN4Move8SimulateEh:
 3024              		@ args = 0, pretend = 0, frame = 0
 3025              		@ frame_needed = 0, uses_anonymous_args = 0
 3026              		@ link register save eliminated.
 3027 0000 4174     		strb	r1, [r0, #17]
 3028 0002 09B1     		cbz	r1, .L543
 3029 0004 0023     		movs	r3, #0
 3030 0006 8362     		str	r3, [r0, #40]	@ float
 3031              	.L543:
 3032 0008 7047     		bx	lr
 3033              		.size	_ZN4Move8SimulateEh, .-_ZN4Move8SimulateEh
 3034              		.global	__aeabi_d2f
 3035 000a 00BF     		.section	.text._ZN4Move16AdjustLeadscrewsEPKd,"ax",%progbits
 3036              		.align	1
 3037              		.p2align 2,,3
 3038              		.global	_ZN4Move16AdjustLeadscrewsEPKd
 3039              		.syntax unified
 3040              		.thumb
 3041              		.thumb_func
 3042              		.fpu fpv4-sp-d16
 3043              		.type	_ZN4Move16AdjustLeadscrewsEPKd, %function
 3044              	_ZN4Move16AdjustLeadscrewsEPKd:
 3045              		@ args = 0, pretend = 0, frame = 0
 3046              		@ frame_needed = 0, uses_anonymous_args = 0
 3047 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 3048 0004 0746     		mov	r7, r0
 3049 0006 07F66823 		addw	r3, r7, #2664
 3050 000a 0020     		movs	r0, #0
 3051 000c 07F69822 		addw	r2, r7, #2712
 3052              	.L549:
 3053 0010 43F8040B 		str	r0, [r3], #4	@ float
 3054 0014 9A42     		cmp	r2, r3
 3055 0016 FBD1     		bne	.L549
 3056 0018 114B     		ldr	r3, .L558
 3057 001a D3F80090 		ldr	r9, [r3]
 3058 001e D9F80833 		ldr	r3, [r9, #776]
 3059 0022 BBB1     		cbz	r3, .L550
 3060 0024 DFF83C80 		ldr	r8, .L558+4
 3061 0028 0E46     		mov	r6, r1
 3062 002a A8EB0908 		sub	r8, r8, r9
 3063 002e 09F54375 		add	r5, r9, #780
 3064              	.L551:
 3065 0032 15F8014B 		ldrb	r4, [r5], #1	@ zero_extendqisi2
 3066 0036 F6E80201 		ldrd	r0, [r6], #8
 3067 003a FFF7FEFF 		bl	__aeabi_d2f
 3068 003e 04F29A24 		addw	r4, r4, #666
 3069 0042 07EB8404 		add	r4, r7, r4, lsl #2
 3070 0046 08EB0503 		add	r3, r8, r5
 3071 004a 2060     		str	r0, [r4]	@ float
 3072 004c D9F80823 		ldr	r2, [r9, #776]
 3073 0050 9A42     		cmp	r2, r3
 3074 0052 EED8     		bhi	.L551
 3075              	.L550:
 3076 0054 0123     		movs	r3, #1
 3077 0056 87F8983A 		strb	r3, [r7, #2712]
 3078 005a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
ARM GAS  /tmp/ccPDZFMs.s 			page 55


 3079              	.L559:
 3080 005e 00BF     		.align	2
 3081              	.L558:
 3082 0060 00000000 		.word	reprap
 3083 0064 F4FCFFFF 		.word	-780
 3084              		.size	_ZN4Move16AdjustLeadscrewsEPKd, .-_ZN4Move16AdjustLeadscrewsEPKd
 3085              		.section	.text._ZNK4Move11IdleTimeoutEv,"ax",%progbits
 3086              		.align	1
 3087              		.p2align 2,,3
 3088              		.global	_ZNK4Move11IdleTimeoutEv
 3089              		.syntax unified
 3090              		.thumb
 3091              		.thumb_func
 3092              		.fpu fpv4-sp-d16
 3093              		.type	_ZNK4Move11IdleTimeoutEv, %function
 3094              	_ZNK4Move11IdleTimeoutEv:
 3095              		@ args = 0, pretend = 0, frame = 0
 3096              		@ frame_needed = 0, uses_anonymous_args = 0
 3097              		@ link register save eliminated.
 3098 0000 D0F8503A 		ldr	r3, [r0, #2640]
 3099 0004 DFED047A 		vldr.32	s15, .L561
 3100 0008 00EE103A 		vmov	s0, r3	@ int
 3101 000c B8EE400A 		vcvt.f32.u32	s0, s0
 3102 0010 20EE270A 		vmul.f32	s0, s0, s15
 3103 0014 7047     		bx	lr
 3104              	.L562:
 3105 0016 00BF     		.align	2
 3106              	.L561:
 3107 0018 6F12833A 		.word	981668463
 3108              		.size	_ZNK4Move11IdleTimeoutEv, .-_ZNK4Move11IdleTimeoutEv
 3109              		.section	.text._ZN4Move14SetIdleTimeoutEf,"ax",%progbits
 3110              		.align	1
 3111              		.p2align 2,,3
 3112              		.global	_ZN4Move14SetIdleTimeoutEf
 3113              		.syntax unified
 3114              		.thumb
 3115              		.thumb_func
 3116              		.fpu fpv4-sp-d16
 3117              		.type	_ZN4Move14SetIdleTimeoutEf, %function
 3118              	_ZN4Move14SetIdleTimeoutEf:
 3119              		@ args = 0, pretend = 0, frame = 0
 3120              		@ frame_needed = 0, uses_anonymous_args = 0
 3121 0000 DFED057A 		vldr.32	s15, .L565
 3122 0004 10B5     		push	{r4, lr}
 3123 0006 20EE270A 		vmul.f32	s0, s0, s15
 3124 000a 0446     		mov	r4, r0
 3125 000c FFF7FEFF 		bl	lrintf
 3126 0010 C4F8500A 		str	r0, [r4, #2640]
 3127 0014 10BD     		pop	{r4, pc}
 3128              	.L566:
 3129 0016 00BF     		.align	2
 3130              	.L565:
 3131 0018 00007A44 		.word	1148846080
 3132              		.size	_ZN4Move14SetIdleTimeoutEf, .-_ZN4Move14SetIdleTimeoutEf
 3133              		.section	.text._ZNK4Move19WriteResumeSettingsEP9FileStore,"ax",%progbits
 3134              		.align	1
 3135              		.p2align 2,,3
ARM GAS  /tmp/ccPDZFMs.s 			page 56


 3136              		.global	_ZNK4Move19WriteResumeSettingsEP9FileStore
 3137              		.syntax unified
 3138              		.thumb
 3139              		.thumb_func
 3140              		.fpu fpv4-sp-d16
 3141              		.type	_ZNK4Move19WriteResumeSettingsEP9FileStore, %function
 3142              	_ZNK4Move19WriteResumeSettingsEP9FileStore:
 3143              		@ args = 0, pretend = 0, frame = 0
 3144              		@ frame_needed = 0, uses_anonymous_args = 0
 3145 0000 38B5     		push	{r3, r4, r5, lr}
 3146 0002 0446     		mov	r4, r0
 3147 0004 D0F8580A 		ldr	r0, [r0, #2648]
 3148 0008 0A4A     		ldr	r2, .L574
 3149 000a 0368     		ldr	r3, [r0]
 3150 000c DB6D     		ldr	r3, [r3, #92]
 3151 000e 9342     		cmp	r3, r2
 3152 0010 0D46     		mov	r5, r1
 3153 0012 04D1     		bne	.L568
 3154              	.L571:
 3155 0014 94F84C3A 		ldrb	r3, [r4, #2636]	@ zero_extendqisi2
 3156 0018 2BB9     		cbnz	r3, .L569
 3157 001a 0120     		movs	r0, #1
 3158 001c 38BD     		pop	{r3, r4, r5, pc}
 3159              	.L568:
 3160 001e 9847     		blx	r3
 3161 0020 0028     		cmp	r0, #0
 3162 0022 F7D1     		bne	.L571
 3163 0024 38BD     		pop	{r3, r4, r5, pc}
 3164              	.L569:
 3165 0026 2846     		mov	r0, r5
 3166 0028 0349     		ldr	r1, .L574+4
 3167 002a BDE83840 		pop	{r3, r4, r5, lr}
 3168 002e FFF7FEBF 		b	_ZN9FileStore5WriteEPKc
 3169              	.L575:
 3170 0032 00BF     		.align	2
 3171              	.L574:
 3172 0034 00000000 		.word	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
 3173 0038 00000000 		.word	.LC17
 3174              		.size	_ZNK4Move19WriteResumeSettingsEP9FileStore, .-_ZNK4Move19WriteResumeSettingsEP9FileStore
 3175              		.section	.text._ZNK4Move15PrintCurrentDdaEv,"ax",%progbits
 3176              		.align	1
 3177              		.p2align 2,,3
 3178              		.global	_ZNK4Move15PrintCurrentDdaEv
 3179              		.syntax unified
 3180              		.thumb
 3181              		.thumb_func
 3182              		.fpu fpv4-sp-d16
 3183              		.type	_ZNK4Move15PrintCurrentDdaEv, %function
 3184              	_ZNK4Move15PrintCurrentDdaEv:
 3185              		@ args = 0, pretend = 0, frame = 0
 3186              		@ frame_needed = 0, uses_anonymous_args = 0
 3187              		@ link register save eliminated.
 3188 0000 0368     		ldr	r3, [r0]
 3189 0002 13B1     		cbz	r3, .L576
 3190 0004 0068     		ldr	r0, [r0]
 3191 0006 FFF7FEBF 		b	_ZNK3DDA13DebugPrintAllEv
 3192              	.L576:
ARM GAS  /tmp/ccPDZFMs.s 			page 57


 3193 000a 7047     		bx	lr
 3194              		.size	_ZNK4Move15PrintCurrentDdaEv, .-_ZNK4Move15PrintCurrentDdaEv
 3195              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3196              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3197              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3198              	_ZL28cpu_irq_prev_interrupt_state:
 3199 0000 00       		.space	1
 3200              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3201              		.align	2
 3202              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3203              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3204              	_ZL32cpu_irq_critical_section_counter:
 3205 0000 00000000 		.space	4
 3206              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 3207              		.align	2
 3208              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 3209              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 3210              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 3211 0000 00000000 		.space	4
 3212              		.section	.rodata._ZN4Move11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 3213              		.align	2
 3214              	.LC0:
 3215 0000 3D3D3D20 		.ascii	"=== Move ===\012\000"
 3215      4D6F7665 
 3215      203D3D3D 
 3215      0A00
 3216 000e 0000     		.space	2
 3217              	.LC1:
 3218 0010 48696363 		.ascii	"Hiccups: %lu, StepErrors: %u, LaErrors: %u, FreeDm:"
 3218      7570733A 
 3218      20256C75 
 3218      2C205374 
 3218      65704572 
 3219 0043 2025642C 		.ascii	" %d, MinFreeDm %d, MaxWait: %lums, Underruns: %u, %"
 3219      204D696E 
 3219      46726565 
 3219      446D2025 
 3219      642C204D 
 3220 0076 750A00   		.ascii	"u\012\000"
 3221 0079 000000   		.space	3
 3222              	.LC2:
 3223 007c 53636865 		.ascii	"Scheduled moves: %lu, completed moves: %lu\012\000"
 3223      64756C65 
 3223      64206D6F 
 3223      7665733A 
 3223      20256C75 
 3224              	.LC3:
 3225 00a8 42656420 		.ascii	"Bed compensation in use: \000"
 3225      636F6D70 
 3225      656E7361 
 3225      74696F6E 
 3225      20696E20 
 3226 00c2 0000     		.space	2
 3227              	.LC4:
 3228 00c4 6D657368 		.ascii	"mesh\012\000"
 3228      0A00
 3229 00ca 0000     		.space	2
ARM GAS  /tmp/ccPDZFMs.s 			page 58


 3230              	.LC5:
 3231 00cc 25642070 		.ascii	"%d point\012\000"
 3231      6F696E74 
 3231      0A00
 3232 00d6 0000     		.space	2
 3233              	.LC6:
 3234 00d8 6E6F6E65 		.ascii	"none\012\000"
 3234      0A00
 3235 00de 0000     		.space	2
 3236              	.LC7:
 3237 00e0 42656420 		.ascii	"Bed probe heights:\000"
 3237      70726F62 
 3237      65206865 
 3237      69676874 
 3237      733A00
 3238 00f3 00       		.space	1
 3239              	.LC8:
 3240 00f4 20252E33 		.ascii	" %.3f\000"
 3240      6600
 3241 00fa 0000     		.space	2
 3242              	.LC9:
 3243 00fc 0A00     		.ascii	"\012\000"
 3244              		.section	.rodata._ZN4Move12SetPositionsEPKf.str1.4,"aMS",%progbits,1
 3245              		.align	2
 3246              	.LC10:
 3247 0000 53657450 		.ascii	"SetPositions called when DDA ring not empty\012\000"
 3247      6F736974 
 3247      696F6E73 
 3247      2063616C 
 3247      6C656420 
 3248              		.section	.rodata._ZN4Move17SetZBedProbePointEjfbb.str1.4,"aMS",%progbits,1
 3249              		.align	2
 3250              	.LC16:
 3251 0000 5A207072 		.ascii	"Z probe point Z index out of range.\012\000"
 3251      6F626520 
 3251      706F696E 
 3251      74205A20 
 3251      696E6465 
 3252              		.section	.rodata._ZN4Move18FinishedBedProbingEiRK9StringRef.str1.4,"aMS",%progbits,1
 3253              		.align	2
 3254              	.LC13:
 3255 0000 42656420 		.ascii	"Bed calibration : %d factor calibration requested b"
 3255      63616C69 
 3255      62726174 
 3255      696F6E20 
 3255      3A202564 
 3256 0033 7574206F 		.ascii	"ut only %d points provided\012\000"
 3256      6E6C7920 
 3256      25642070 
 3256      6F696E74 
 3256      73207072 
 3257 004f 00       		.space	1
 3258              	.LC14:
 3259 0050 436F6D70 		.ascii	"Compensation or calibration cancelled due to probin"
 3259      656E7361 
 3259      74696F6E 
 3259      206F7220 
ARM GAS  /tmp/ccPDZFMs.s 			page 59


 3259      63616C69 
 3260 0083 67206572 		.ascii	"g errors\000"
 3260      726F7273 
 3260      00
 3261              		.section	.rodata._ZN4Move18SetXYBedProbePointEjff.str1.4,"aMS",%progbits,1
 3262              		.align	2
 3263              	.LC15:
 3264 0000 5A207072 		.ascii	"Z probe point index out of range.\012\000"
 3264      6F626520 
 3264      706F696E 
 3264      7420696E 
 3264      64657820 
 3265              		.section	.rodata._ZNK4Move19WriteResumeSettingsEP9FileStore.str1.4,"aMS",%progbits,1
 3266              		.align	2
 3267              	.LC17:
 3268 0000 47323920 		.ascii	"G29 S1\012\000"
 3268      53310A00 
 3269              		.section	.rodata._ZNK4Move21CartesianToMotorStepsEPKfPlb.str1.4,"aMS",%progbits,1
 3270              		.align	2
 3271              	.LC11:
 3272 0000 5472616E 		.ascii	"Transformed %.2f %.2f %.2f to %lu %lu %lu\012\000"
 3272      73666F72 
 3272      6D656420 
 3272      252E3266 
 3272      20252E32 
 3273 002b 00       		.space	1
 3274              	.LC12:
 3275 002c 556E6162 		.ascii	"Unable to transform %.2f %.2f %.2f\012\000"
 3275      6C652074 
 3275      6F207472 
 3275      616E7366 
 3275      6F726D20 
 3276              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
