ARM GAS  /tmp/ccCOaEG9.s 			page 1


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
  11              		.file	"Move.cpp"
  12              		.section	.text._ZNK10Kinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK10Kinematics23Suppo
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZNK10Kinematics23SupportsAutoCalibrationEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZNK10Kinematics23SupportsAutoCalibrationEv, %function
  21              	_ZNK10Kinematics23SupportsAutoCalibrationEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0020     		movs	r0, #0
  26 0002 7047     		bx	lr
  27              		.size	_ZNK10Kinematics23SupportsAutoCalibrationEv, .-_ZNK10Kinematics23SupportsAutoCalibrationEv
  28              		.section	.text._ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,"axG",%prog
  29              		.align	1
  30              		.p2align 2,,3
  31              		.weak	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %function
  37              	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 0020     		movs	r0, #0
  42 0002 7047     		bx	lr
  43              		.size	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN10Kinematics17
  44              		.section	.text._ZNK10Kinematics19WriteResumeSettingsEP9FileStore,"axG",%progbits,_ZNK10Kinematics1
  45              		.align	1
  46              		.p2align 2,,3
  47              		.weak	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu softvfp
  52              		.type	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, %function
  53              	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 0120     		movs	r0, #1
ARM GAS  /tmp/ccCOaEG9.s 			page 2


  58 0002 7047     		bx	lr
  59              		.size	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, .-_ZNK10Kinematics19WriteResumeSettingsEP
  60              		.section	.text._ZNK4Move14IsRawMotorMoveEh.part.6,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu softvfp
  67              		.type	_ZNK4Move14IsRawMotorMoveEh.part.6, %function
  68              	_ZNK4Move14IsRawMotorMoveEh.part.6:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71 0000 D0F8FC04 		ldr	r0, [r0, #1276]
  72 0004 08B5     		push	{r3, lr}
  73 0006 0368     		ldr	r3, [r0]
  74 0008 DB6C     		ldr	r3, [r3, #76]
  75 000a 9847     		blx	r3
  76 000c 0030     		adds	r0, r0, #0
  77 000e 18BF     		it	ne
  78 0010 0120     		movne	r0, #1
  79 0012 08BD     		pop	{r3, pc}
  80              		.size	_ZNK4Move14IsRawMotorMoveEh.part.6, .-_ZNK4Move14IsRawMotorMoveEh.part.6
  81              		.section	.text._ZN4MoveC2Ev,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.global	_ZN4MoveC2Ev
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu softvfp
  89              		.type	_ZN4MoveC2Ev, %function
  90              	_ZN4MoveC2Ev:
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  94 0002 0024     		movs	r4, #0
  95 0004 0746     		mov	r7, r0
  96 0006 00F1B001 		add	r1, r0, #176
  97 000a 00F1B402 		add	r2, r0, #180
  98 000e 00F1B803 		add	r3, r0, #184
  99 0012 C0F8BC10 		str	r1, [r0, #188]
 100 0016 C0F8C020 		str	r2, [r0, #192]
 101 001a C0F8C430 		str	r3, [r0, #196]
 102 001e 0460     		str	r4, [r0]
 103 0020 0474     		strb	r4, [r0, #16]
 104 0022 C830     		adds	r0, r0, #200
 105 0024 FFF7FEFF 		bl	_ZN9HeightMapC1Ev
 106 0028 07F53C70 		add	r0, r7, #752
 107 002c FFF7FEFF 		bl	_ZN19RandomProbePointSetC1Ev
 108 0030 C7F80445 		str	r4, [r7, #1284]
 109 0034 C7F80845 		str	r4, [r7, #1288]
 110 0038 2046     		mov	r0, r4
 111 003a FFF7FEFF 		bl	_ZN10Kinematics6CreateE14KinematicsType
 112 003e C7F8FC04 		str	r0, [r7, #1276]
 113 0042 F420     		movs	r0, #244
 114 0044 FFF7FEFF 		bl	_Znwj
ARM GAS  /tmp/ccCOaEG9.s 			page 3


 115 0048 0646     		mov	r6, r0
 116 004a 1325     		movs	r5, #19
 117 004c 2146     		mov	r1, r4
 118 004e 0446     		mov	r4, r0
 119 0050 FFF7FEFF 		bl	_ZN3DDAC1EPS_
 120 0054 7E60     		str	r6, [r7, #4]
 121 0056 BE60     		str	r6, [r7, #8]
 122              	.L7:
 123 0058 F420     		movs	r0, #244
 124 005a FFF7FEFF 		bl	_Znwj
 125 005e 0646     		mov	r6, r0
 126 0060 2146     		mov	r1, r4
 127 0062 FFF7FEFF 		bl	_ZN3DDAC1EPS_
 128 0066 013D     		subs	r5, r5, #1
 129 0068 6660     		str	r6, [r4, #4]
 130 006a 3446     		mov	r4, r6
 131 006c F4D1     		bne	.L7
 132 006e 7B68     		ldr	r3, [r7, #4]
 133 0070 6420     		movs	r0, #100
 134 0072 1E60     		str	r6, [r3]
 135 0074 7360     		str	r3, [r6, #4]
 136 0076 FFF7FEFF 		bl	_ZN13DriveMovement15InitialAllocateEj
 137 007a 3846     		mov	r0, r7
 138 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 139              		.size	_ZN4MoveC2Ev, .-_ZN4MoveC2Ev
 140              		.global	_ZN4MoveC1Ev
 141              		.thumb_set _ZN4MoveC1Ev,_ZN4MoveC2Ev
 142 007e 00BF     		.section	.text._ZN4Move4ExitEv,"ax",%progbits
 143              		.align	1
 144              		.p2align 2,,3
 145              		.global	_ZN4Move4ExitEv
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu softvfp
 150              		.type	_ZN4Move4ExitEv, %function
 151              	_ZN4Move4ExitEv:
 152              		@ args = 0, pretend = 0, frame = 0
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154 0000 10B5     		push	{r4, lr}
 155 0002 0446     		mov	r4, r0
 156 0004 FFF7FEFF 		bl	_ZN8Platform20DisableStepInterruptEv
 157 0008 0023     		movs	r3, #0
 158 000a 2360     		str	r3, [r4]
 159 000c A368     		ldr	r3, [r4, #8]
 160 000e 6268     		ldr	r2, [r4, #4]
 161 0010 9342     		cmp	r3, r2
 162 0012 18BF     		it	ne
 163 0014 0421     		movne	r1, #4
 164 0016 07D0     		beq	.L14
 165              	.L18:
 166 0018 A368     		ldr	r3, [r4, #8]
 167 001a 1972     		strb	r1, [r3, #8]
 168 001c A368     		ldr	r3, [r4, #8]
 169 001e 1B68     		ldr	r3, [r3]
 170 0020 A360     		str	r3, [r4, #8]
 171 0022 A368     		ldr	r3, [r4, #8]
ARM GAS  /tmp/ccCOaEG9.s 			page 4


 172 0024 9342     		cmp	r3, r2
 173 0026 F7D1     		bne	.L18
 174              	.L14:
 175 0028 E068     		ldr	r0, [r4, #12]
 176 002a 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 177 002c 042B     		cmp	r3, #4
 178 002e 07D1     		bne	.L16
 179              	.L15:
 180 0030 FFF7FEFF 		bl	_ZN3DDA4FreeEv
 181 0034 E368     		ldr	r3, [r4, #12]
 182 0036 1868     		ldr	r0, [r3]
 183 0038 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 184 003a E060     		str	r0, [r4, #12]
 185 003c 042B     		cmp	r3, #4
 186 003e F7D0     		beq	.L15
 187              	.L16:
 188 0040 0023     		movs	r3, #0
 189 0042 2374     		strb	r3, [r4, #16]
 190 0044 10BD     		pop	{r4, pc}
 191              		.size	_ZN4Move4ExitEv, .-_ZN4Move4ExitEv
 192 0046 00BF     		.section	.text._ZN4Move16PushBabySteppingEf,"ax",%progbits
 193              		.align	1
 194              		.p2align 2,,3
 195              		.global	_ZN4Move16PushBabySteppingEf
 196              		.syntax unified
 197              		.thumb
 198              		.thumb_func
 199              		.fpu softvfp
 200              		.type	_ZN4Move16PushBabySteppingEf, %function
 201              	_ZN4Move16PushBabySteppingEf:
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 0, uses_anonymous_args = 0
 204              		@ link register save eliminated.
 205 0000 4068     		ldr	r0, [r0, #4]
 206 0002 FFF7FEBF 		b	_ZN3DDA19AdvanceBabySteppingEf
 207              		.size	_ZN4Move16PushBabySteppingEf, .-_ZN4Move16PushBabySteppingEf
 208 0006 00BF     		.section	.text._ZN4Move13SetKinematicsE14KinematicsType,"ax",%progbits
 209              		.align	1
 210              		.p2align 2,,3
 211              		.global	_ZN4Move13SetKinematicsE14KinematicsType
 212              		.syntax unified
 213              		.thumb
 214              		.thumb_func
 215              		.fpu softvfp
 216              		.type	_ZN4Move13SetKinematicsE14KinematicsType, %function
 217              	_ZN4Move13SetKinematicsE14KinematicsType:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220 0000 38B5     		push	{r3, r4, r5, lr}
 221 0002 D0F8FC34 		ldr	r3, [r0, #1276]
 222 0006 9B7B     		ldrb	r3, [r3, #14]	@ zero_extendqisi2
 223 0008 8B42     		cmp	r3, r1
 224 000a 0FD0     		beq	.L28
 225 000c 0446     		mov	r4, r0
 226 000e 0846     		mov	r0, r1
 227 0010 FFF7FEFF 		bl	_ZN10Kinematics6CreateE14KinematicsType
 228 0014 0546     		mov	r5, r0
ARM GAS  /tmp/ccCOaEG9.s 			page 5


 229 0016 58B1     		cbz	r0, .L29
 230 0018 D4F8FC04 		ldr	r0, [r4, #1276]
 231 001c 10B1     		cbz	r0, .L27
 232 001e 0368     		ldr	r3, [r0]
 233 0020 9B6E     		ldr	r3, [r3, #104]
 234 0022 9847     		blx	r3
 235              	.L27:
 236 0024 C4F8FC54 		str	r5, [r4, #1276]
 237 0028 0120     		movs	r0, #1
 238 002a 38BD     		pop	{r3, r4, r5, pc}
 239              	.L28:
 240 002c 0120     		movs	r0, #1
 241 002e 38BD     		pop	{r3, r4, r5, pc}
 242              	.L29:
 243 0030 38BD     		pop	{r3, r4, r5, pc}
 244              		.size	_ZN4Move13SetKinematicsE14KinematicsType, .-_ZN4Move13SetKinematicsE14KinematicsType
 245 0032 00BF     		.section	.text._ZNK4Move14IsRawMotorMoveEh,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZNK4Move14IsRawMotorMoveEh
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu softvfp
 253              		.type	_ZNK4Move14IsRawMotorMoveEh, %function
 254              	_ZNK4Move14IsRawMotorMoveEh:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258 0000 0229     		cmp	r1, #2
 259 0002 07D0     		beq	.L36
 260 0004 01F0FD01 		and	r1, r1, #253
 261 0008 0129     		cmp	r1, #1
 262 000a 01D0     		beq	.L38
 263 000c 0020     		movs	r0, #0
 264 000e 7047     		bx	lr
 265              	.L38:
 266 0010 FFF7FEBF 		b	_ZNK4Move14IsRawMotorMoveEh.part.6
 267              	.L36:
 268 0014 0120     		movs	r0, #1
 269 0016 7047     		bx	lr
 270              		.size	_ZNK4Move14IsRawMotorMoveEh, .-_ZNK4Move14IsRawMotorMoveEh
 271              		.global	__aeabi_fsub
 272              		.section	.text._ZNK4Move22IsAccessibleProbePointEff,"ax",%progbits
 273              		.align	1
 274              		.p2align 2,,3
 275              		.global	_ZNK4Move22IsAccessibleProbePointEff
 276              		.syntax unified
 277              		.thumb
 278              		.thumb_func
 279              		.fpu softvfp
 280              		.type	_ZNK4Move22IsAccessibleProbePointEff, %function
 281              	_ZNK4Move22IsAccessibleProbePointEff:
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 0, uses_anonymous_args = 0
 284 0000 104B     		ldr	r3, .L41
 285 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
ARM GAS  /tmp/ccCOaEG9.s 			page 6


 286 0006 1B68     		ldr	r3, [r3]	@ unaligned
 287 0008 0646     		mov	r6, r0
 288 000a 0F46     		mov	r7, r1
 289 000c 1846     		mov	r0, r3
 290 000e 93F89410 		ldrb	r1, [r3, #148]	@ zero_extendqisi2
 291 0012 1546     		mov	r5, r2
 292 0014 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 293 0018 0446     		mov	r4, r0
 294 001a 2846     		mov	r0, r5
 295 001c A168     		ldr	r1, [r4, #8]	@ float
 296 001e FFF7FEFF 		bl	__aeabi_fsub
 297 0022 6168     		ldr	r1, [r4, #4]	@ float
 298 0024 0546     		mov	r5, r0
 299 0026 3846     		mov	r0, r7
 300 0028 FFF7FEFF 		bl	__aeabi_fsub
 301 002c D6F8FC34 		ldr	r3, [r6, #1276]
 302 0030 0146     		mov	r1, r0
 303 0032 1868     		ldr	r0, [r3]
 304 0034 2A46     		mov	r2, r5
 305 0036 446A     		ldr	r4, [r0, #36]
 306 0038 1846     		mov	r0, r3
 307 003a A446     		mov	ip, r4
 308 003c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 309 0040 0023     		movs	r3, #0
 310 0042 6047     		bx	ip
 311              	.L42:
 312              		.align	2
 313              	.L41:
 314 0044 00000000 		.word	reprap
 315              		.size	_ZNK4Move22IsAccessibleProbePointEff, .-_ZNK4Move22IsAccessibleProbePointEff
 316              		.global	__aeabi_f2d
 317              		.section	.text._ZN4Move11DiagnosticsE11MessageType,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	_ZN4Move11DiagnosticsE11MessageType
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu softvfp
 325              		.type	_ZN4Move11DiagnosticsE11MessageType, %function
 326              	_ZN4Move11DiagnosticsE11MessageType:
 327              		@ args = 0, pretend = 0, frame = 0
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 330 0004 0446     		mov	r4, r0
 331 0006 0F46     		mov	r7, r1
 332 0008 DFF820A1 		ldr	r10, .L52+40
 333 000c 88B0     		sub	sp, sp, #32
 334 000e DAF80060 		ldr	r6, [r10]
 335 0012 3C4A     		ldr	r2, .L52
 336 0014 3046     		mov	r0, r6
 337 0016 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 338 001a D4F814C0 		ldr	ip, [r4, #20]
 339 001e A369     		ldr	r3, [r4, #24]
 340 0020 616A     		ldr	r1, [r4, #36]
 341 0022 E269     		ldr	r2, [r4, #28]
 342 0024 DFF80881 		ldr	r8, .L52+44
ARM GAS  /tmp/ccCOaEG9.s 			page 7


 343 0028 D4F800E5 		ldr	lr, [r4, #1280]
 344 002c DFF80491 		ldr	r9, .L52+48
 345 0030 CDF814C0 		str	ip, [sp, #20]
 346 0034 0693     		str	r3, [sp, #24]
 347 0036 344D     		ldr	r5, .L52+4
 348 0038 D8F80030 		ldr	r3, [r8]
 349 003c 0491     		str	r1, [sp, #16]
 350 003e 0192     		str	r2, [sp, #4]
 351 0040 2A68     		ldr	r2, [r5]
 352 0042 D9F80010 		ldr	r1, [r9]
 353 0046 3046     		mov	r0, r6
 354 0048 CDF800E0 		str	lr, [sp]
 355 004c 0391     		str	r1, [sp, #12]
 356 004e 0292     		str	r2, [sp, #8]
 357 0050 3946     		mov	r1, r7
 358 0052 2E4A     		ldr	r2, .L52+8
 359 0054 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 360 0058 4FF0000E 		mov	lr, #0
 361 005c D4F80825 		ldr	r2, [r4, #1288]
 362 0060 2D68     		ldr	r5, [r5]
 363 0062 D4F80435 		ldr	r3, [r4, #1284]
 364 0066 C4F81CE0 		str	lr, [r4, #28]
 365 006a C4F818E0 		str	lr, [r4, #24]
 366 006e C4F814E0 		str	lr, [r4, #20]
 367 0072 C4F824E0 		str	lr, [r4, #36]
 368 0076 DAF80000 		ldr	r0, [r10]
 369 007a 0092     		str	r2, [sp]
 370 007c 3946     		mov	r1, r7
 371 007e 244A     		ldr	r2, .L52+12
 372 0080 C8F800E0 		str	lr, [r8]
 373 0084 C9F80050 		str	r5, [r9]
 374 0088 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 375 008c 3046     		mov	r0, r6
 376 008e 3946     		mov	r1, r7
 377 0090 204A     		ldr	r2, .L52+16
 378 0092 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 379 0096 94F8F034 		ldrb	r3, [r4, #1264]	@ zero_extendqisi2
 380 009a 6BBB     		cbnz	r3, .L50
 381 009c D4F8F032 		ldr	r3, [r4, #752]
 382 00a0 23BB     		cbnz	r3, .L51
 383 00a2 1D4A     		ldr	r2, .L52+20
 384 00a4 3946     		mov	r1, r7
 385 00a6 3046     		mov	r0, r6
 386 00a8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 387              	.L45:
 388 00ac 1B4A     		ldr	r2, .L52+24
 389 00ae 3946     		mov	r1, r7
 390 00b0 3046     		mov	r0, r6
 391 00b2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 392 00b6 DFF88080 		ldr	r8, .L52+52
 393 00ba 04F57D75 		add	r5, r4, #1012
 394 00be 04F58164 		add	r4, r4, #1032
 395              	.L47:
 396 00c2 55F8040B 		ldr	r0, [r5], #4	@ float
 397 00c6 FFF7FEFF 		bl	__aeabi_f2d
 398 00ca 4246     		mov	r2, r8
 399 00cc CDE90001 		strd	r0, [sp]
ARM GAS  /tmp/ccCOaEG9.s 			page 8


 400 00d0 3946     		mov	r1, r7
 401 00d2 3046     		mov	r0, r6
 402 00d4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 403 00d8 A542     		cmp	r5, r4
 404 00da F2D1     		bne	.L47
 405 00dc 3946     		mov	r1, r7
 406 00de 3046     		mov	r0, r6
 407 00e0 0F4A     		ldr	r2, .L52+28
 408 00e2 08B0     		add	sp, sp, #32
 409              		@ sp needed
 410 00e4 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 411 00e8 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 412              	.L51:
 413 00ec 0D4A     		ldr	r2, .L52+32
 414 00ee 3946     		mov	r1, r7
 415 00f0 3046     		mov	r0, r6
 416 00f2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 417 00f6 D9E7     		b	.L45
 418              	.L50:
 419 00f8 0B4A     		ldr	r2, .L52+36
 420 00fa 3946     		mov	r1, r7
 421 00fc 3046     		mov	r0, r6
 422 00fe FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 423 0102 D3E7     		b	.L45
 424              	.L53:
 425              		.align	2
 426              	.L52:
 427 0104 00000000 		.word	.LC0
 428 0108 00000000 		.word	_ZN13DriveMovement7numFreeE
 429 010c 10000000 		.word	.LC1
 430 0110 7C000000 		.word	.LC2
 431 0114 A8000000 		.word	.LC3
 432 0118 D8000000 		.word	.LC6
 433 011c E0000000 		.word	.LC7
 434 0120 FC000000 		.word	.LC9
 435 0124 CC000000 		.word	.LC5
 436 0128 C4000000 		.word	.LC4
 437 012c 00000000 		.word	reprap
 438 0130 00000000 		.word	_ZN3DDA10numHiccupsE
 439 0134 00000000 		.word	_ZN13DriveMovement7minFreeE
 440 0138 F4000000 		.word	.LC8
 441              		.size	_ZN4Move11DiagnosticsE11MessageType, .-_ZN4Move11DiagnosticsE11MessageType
 442              		.section	.text._ZN4Move12SetPositionsEPKf,"ax",%progbits
 443              		.align	1
 444              		.p2align 2,,3
 445              		.global	_ZN4Move12SetPositionsEPKf
 446              		.syntax unified
 447              		.thumb
 448              		.thumb_func
 449              		.fpu softvfp
 450              		.type	_ZN4Move12SetPositionsEPKf, %function
 451              	_ZN4Move12SetPositionsEPKf:
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 0, uses_anonymous_args = 0
 454              		@ link register save eliminated.
 455 0000 8268     		ldr	r2, [r0, #8]
 456 0002 4368     		ldr	r3, [r0, #4]
ARM GAS  /tmp/ccCOaEG9.s 			page 9


 457 0004 9342     		cmp	r3, r2
 458 0006 06D0     		beq	.L57
 459              	.L55:
 460 0008 064B     		ldr	r3, .L58
 461 000a 074A     		ldr	r2, .L58+4
 462 000c 1868     		ldr	r0, [r3]
 463 000e 40F2B511 		movw	r1, #437
 464 0012 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 465              	.L57:
 466 0016 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 467 0018 002A     		cmp	r2, #0
 468 001a F5D1     		bne	.L55
 469 001c 5868     		ldr	r0, [r3, #4]
 470 001e 0922     		movs	r2, #9
 471 0020 FFF7FEBF 		b	_ZN3DDA12SetPositionsEPKfj
 472              	.L59:
 473              		.align	2
 474              	.L58:
 475 0024 00000000 		.word	reprap
 476 0028 00000000 		.word	.LC10
 477              		.size	_ZN4Move12SetPositionsEPKf, .-_ZN4Move12SetPositionsEPKf
 478              		.global	__aeabi_fmul
 479              		.section	.text._ZN4Move22MotorEndPointToMachineEjf,"ax",%progbits
 480              		.align	1
 481              		.p2align 2,,3
 482              		.global	_ZN4Move22MotorEndPointToMachineEjf
 483              		.syntax unified
 484              		.thumb
 485              		.thumb_func
 486              		.fpu softvfp
 487              		.type	_ZN4Move22MotorEndPointToMachineEjf, %function
 488              	_ZN4Move22MotorEndPointToMachineEjf:
 489              		@ args = 0, pretend = 0, frame = 0
 490              		@ frame_needed = 0, uses_anonymous_args = 0
 491 0000 0A46     		mov	r2, r1
 492 0002 08B5     		push	{r3, lr}
 493 0004 064B     		ldr	r3, .L62
 494 0006 1B68     		ldr	r3, [r3]
 495 0008 03EB8000 		add	r0, r3, r0, lsl #2
 496 000c D0F82411 		ldr	r1, [r0, #292]	@ float
 497 0010 1046     		mov	r0, r2
 498 0012 FFF7FEFF 		bl	__aeabi_fmul
 499 0016 BDE80840 		pop	{r3, lr}
 500 001a FFF7FEBF 		b	lrintf
 501              	.L63:
 502 001e 00BF     		.align	2
 503              	.L62:
 504 0020 00000000 		.word	reprap
 505              		.size	_ZN4Move22MotorEndPointToMachineEjf, .-_ZN4Move22MotorEndPointToMachineEjf
 506              		.section	.text._ZNK4Move21MotorStepsToCartesianEPKljjPf,"ax",%progbits
 507              		.align	1
 508              		.p2align 2,,3
 509              		.global	_ZNK4Move21MotorStepsToCartesianEPKljjPf
 510              		.syntax unified
 511              		.thumb
 512              		.thumb_func
 513              		.fpu softvfp
ARM GAS  /tmp/ccCOaEG9.s 			page 10


 514              		.type	_ZNK4Move21MotorStepsToCartesianEPKljjPf, %function
 515              	_ZNK4Move21MotorStepsToCartesianEPKljjPf:
 516              		@ args = 4, pretend = 0, frame = 0
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518 0000 70B5     		push	{r4, r5, r6, lr}
 519 0002 82B0     		sub	sp, sp, #8
 520 0004 D0F8FC04 		ldr	r0, [r0, #1276]
 521 0008 069E     		ldr	r6, [sp, #24]
 522 000a 064D     		ldr	r5, .L66
 523 000c 0468     		ldr	r4, [r0]
 524 000e 2D68     		ldr	r5, [r5]
 525 0010 8DE84800 		stm	sp, {r3, r6}
 526 0014 1346     		mov	r3, r2
 527 0016 E468     		ldr	r4, [r4, #12]
 528 0018 05F59272 		add	r2, r5, #292
 529 001c A047     		blx	r4
 530 001e 02B0     		add	sp, sp, #8
 531              		@ sp needed
 532 0020 70BD     		pop	{r4, r5, r6, pc}
 533              	.L67:
 534 0022 00BF     		.align	2
 535              	.L66:
 536 0024 00000000 		.word	reprap
 537              		.size	_ZNK4Move21MotorStepsToCartesianEPKljjPf, .-_ZNK4Move21MotorStepsToCartesianEPKljjPf
 538              		.section	.text._ZNK4Move21CartesianToMotorStepsEPKfPlb,"ax",%progbits
 539              		.align	1
 540              		.p2align 2,,3
 541              		.global	_ZNK4Move21CartesianToMotorStepsEPKfPlb
 542              		.syntax unified
 543              		.thumb
 544              		.thumb_func
 545              		.fpu softvfp
 546              		.type	_ZNK4Move21CartesianToMotorStepsEPKfPlb, %function
 547              	_ZNK4Move21CartesianToMotorStepsEPKfPlb:
 548              		@ args = 0, pretend = 0, frame = 0
 549              		@ frame_needed = 0, uses_anonymous_args = 0
 550 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 551 0004 1646     		mov	r6, r2
 552 0006 284C     		ldr	r4, .L78
 553 0008 D0F8FC04 		ldr	r0, [r0, #1276]
 554 000c 2269     		ldr	r2, [r4, #16]
 555 000e 89B0     		sub	sp, sp, #36
 556 0010 D2F8FC51 		ldr	r5, [r2, #508]
 557 0014 0768     		ldr	r7, [r0]
 558 0016 0196     		str	r6, [sp, #4]
 559 0018 0293     		str	r3, [sp, #8]
 560 001a D2F8F831 		ldr	r3, [r2, #504]
 561 001e 2268     		ldr	r2, [r4]
 562 0020 0093     		str	r3, [sp]
 563 0022 BF68     		ldr	r7, [r7, #8]
 564 0024 2B46     		mov	r3, r5
 565 0026 02F59272 		add	r2, r2, #292
 566 002a 0D46     		mov	r5, r1
 567 002c B847     		blx	r7
 568 002e 636C     		ldr	r3, [r4, #68]
 569 0030 0746     		mov	r7, r0
 570 0032 03F05003 		and	r3, r3, #80
ARM GAS  /tmp/ccCOaEG9.s 			page 11


 571 0036 502B     		cmp	r3, #80
 572 0038 14D1     		bne	.L73
 573 003a B8B9     		cbnz	r0, .L77
 574 003c 2868     		ldr	r0, [r5]	@ float
 575 003e FFF7FEFF 		bl	__aeabi_f2d
 576 0042 8046     		mov	r8, r0
 577 0044 A868     		ldr	r0, [r5, #8]	@ float
 578 0046 8946     		mov	r9, r1
 579 0048 FFF7FEFF 		bl	__aeabi_f2d
 580 004c CDE90201 		strd	r0, [sp, #8]
 581 0050 6868     		ldr	r0, [r5, #4]	@ float
 582 0052 FFF7FEFF 		bl	__aeabi_f2d
 583 0056 4246     		mov	r2, r8
 584 0058 CDE90001 		strd	r0, [sp]
 585 005c 4B46     		mov	r3, r9
 586 005e 1348     		ldr	r0, .L78+4
 587 0060 FFF7FEFF 		bl	debugPrintf
 588              	.L73:
 589 0064 3846     		mov	r0, r7
 590 0066 09B0     		add	sp, sp, #36
 591              		@ sp needed
 592 0068 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 593              	.L77:
 594 006c 2868     		ldr	r0, [r5]	@ float
 595 006e FFF7FEFF 		bl	__aeabi_f2d
 596 0072 7268     		ldr	r2, [r6, #4]
 597 0074 3368     		ldr	r3, [r6]
 598 0076 8946     		mov	r9, r1
 599 0078 B168     		ldr	r1, [r6, #8]
 600 007a 8046     		mov	r8, r0
 601 007c A868     		ldr	r0, [r5, #8]	@ float
 602 007e 0592     		str	r2, [sp, #20]
 603 0080 0493     		str	r3, [sp, #16]
 604 0082 0691     		str	r1, [sp, #24]
 605 0084 FFF7FEFF 		bl	__aeabi_f2d
 606 0088 CDE90201 		strd	r0, [sp, #8]
 607 008c 6868     		ldr	r0, [r5, #4]	@ float
 608 008e FFF7FEFF 		bl	__aeabi_f2d
 609 0092 4246     		mov	r2, r8
 610 0094 CDE90001 		strd	r0, [sp]
 611 0098 4B46     		mov	r3, r9
 612 009a 0548     		ldr	r0, .L78+8
 613 009c FFF7FEFF 		bl	debugPrintf
 614 00a0 3846     		mov	r0, r7
 615 00a2 09B0     		add	sp, sp, #36
 616              		@ sp needed
 617 00a4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 618              	.L79:
 619              		.align	2
 620              	.L78:
 621 00a8 00000000 		.word	reprap
 622 00ac 2C000000 		.word	.LC12
 623 00b0 00000000 		.word	.LC11
 624              		.size	_ZNK4Move21CartesianToMotorStepsEPKfPlb, .-_ZNK4Move21CartesianToMotorStepsEPKfPlb
 625              		.section	.text._ZNK4Move17EndPointToMachineEPKfPlj,"ax",%progbits
 626              		.align	1
 627              		.p2align 2,,3
ARM GAS  /tmp/ccCOaEG9.s 			page 12


 628              		.global	_ZNK4Move17EndPointToMachineEPKfPlj
 629              		.syntax unified
 630              		.thumb
 631              		.thumb_func
 632              		.fpu softvfp
 633              		.type	_ZNK4Move17EndPointToMachineEPKfPlj, %function
 634              	_ZNK4Move17EndPointToMachineEPKfPlj:
 635              		@ args = 0, pretend = 0, frame = 0
 636              		@ frame_needed = 0, uses_anonymous_args = 0
 637 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 638 0004 1F46     		mov	r7, r3
 639 0006 0123     		movs	r3, #1
 640 0008 0E46     		mov	r6, r1
 641 000a 1546     		mov	r5, r2
 642 000c FFF7FEFF 		bl	_ZNK4Move21CartesianToMotorStepsEPKfPlb
 643 0010 F0B1     		cbz	r0, .L80
 644 0012 DFF84080 		ldr	r8, .L85
 645 0016 D8F81030 		ldr	r3, [r8, #16]
 646 001a D3F8F841 		ldr	r4, [r3, #504]
 647 001e A742     		cmp	r7, r4
 648 0020 16D9     		bls	.L80
 649 0022 04F18043 		add	r3, r4, #1073741824
 650 0026 013B     		subs	r3, r3, #1
 651 0028 9B00     		lsls	r3, r3, #2
 652 002a 1E44     		add	r6, r6, r3
 653 002c 1D44     		add	r5, r5, r3
 654              	.L83:
 655 002e D8F80030 		ldr	r3, [r8]
 656 0032 56F8041F 		ldr	r1, [r6, #4]!	@ float
 657 0036 03EB8403 		add	r3, r3, r4, lsl #2
 658 003a D3F82401 		ldr	r0, [r3, #292]	@ float
 659 003e FFF7FEFF 		bl	__aeabi_fmul
 660 0042 FFF7FEFF 		bl	lrintf
 661 0046 0134     		adds	r4, r4, #1
 662 0048 A742     		cmp	r7, r4
 663 004a 45F8040F 		str	r0, [r5, #4]!
 664 004e EED8     		bhi	.L83
 665              	.L80:
 666 0050 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 667              	.L86:
 668              		.align	2
 669              	.L85:
 670 0054 00000000 		.word	reprap
 671              		.size	_ZNK4Move17EndPointToMachineEPKfPlj, .-_ZNK4Move17EndPointToMachineEPKfPlj
 672              		.global	__aeabi_fadd
 673              		.section	.text._ZNK4Move13AxisTransformEPfmm,"ax",%progbits
 674              		.align	1
 675              		.p2align 2,,3
 676              		.global	_ZNK4Move13AxisTransformEPfmm
 677              		.syntax unified
 678              		.thumb
 679              		.thumb_func
 680              		.fpu softvfp
 681              		.type	_ZNK4Move13AxisTransformEPfmm, %function
 682              	_ZNK4Move13AxisTransformEPfmm:
 683              		@ args = 0, pretend = 0, frame = 8
 684              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccCOaEG9.s 			page 13


 685 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 686 0004 2A4C     		ldr	r4, .L109
 687 0006 83B0     		sub	sp, sp, #12
 688 0008 2469     		ldr	r4, [r4, #16]
 689 000a D4F8FC81 		ldr	r8, [r4, #508]
 690 000e B8F1010F 		cmp	r8, #1
 691 0012 0BD9     		bls	.L87
 692 0014 9E07     		lsls	r6, r3, #30
 693 0016 4FF00104 		mov	r4, #1
 694 001a 02D5     		bpl	.L91
 695 001c 09E0     		b	.L89
 696              	.L107:
 697 001e ED07     		lsls	r5, r5, #31
 698 0020 07D4     		bmi	.L89
 699              	.L91:
 700 0022 0134     		adds	r4, r4, #1
 701 0024 4445     		cmp	r4, r8
 702 0026 23FA04F5 		lsr	r5, r3, r4
 703 002a F8D1     		bne	.L107
 704              	.L87:
 705 002c 03B0     		add	sp, sp, #12
 706              		@ sp needed
 707 002e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 708              	.L89:
 709 0032 9246     		mov	r10, r2
 710 0034 8946     		mov	r9, r1
 711 0036 8346     		mov	fp, r0
 712 0038 0E46     		mov	r6, r1
 713 003a 0025     		movs	r5, #0
 714 003c 1F46     		mov	r7, r3
 715 003e 01EB8403 		add	r3, r1, r4, lsl #2
 716 0042 0193     		str	r3, [sp, #4]
 717              	.L95:
 718 0044 2AFA05F3 		lsr	r3, r10, r5
 719 0048 DB07     		lsls	r3, r3, #31
 720 004a 17D5     		bpl	.L92
 721 004c DBF8BC30 		ldr	r3, [fp, #188]
 722 0050 019A     		ldr	r2, [sp, #4]
 723 0052 1868     		ldr	r0, [r3]	@ float
 724 0054 1168     		ldr	r1, [r2]	@ float
 725 0056 FFF7FEFF 		bl	__aeabi_fmul
 726 005a DBF8C420 		ldr	r2, [fp, #196]
 727 005e D9F80810 		ldr	r1, [r9, #8]	@ float
 728 0062 0446     		mov	r4, r0
 729 0064 1068     		ldr	r0, [r2]	@ float
 730 0066 FFF7FEFF 		bl	__aeabi_fmul
 731 006a 0146     		mov	r1, r0
 732 006c 2046     		mov	r0, r4
 733 006e FFF7FEFF 		bl	__aeabi_fadd
 734 0072 0146     		mov	r1, r0
 735 0074 3068     		ldr	r0, [r6]	@ float
 736 0076 FFF7FEFF 		bl	__aeabi_fadd
 737 007a 3060     		str	r0, [r6]	@ float
 738              	.L92:
 739 007c 27FA05F3 		lsr	r3, r7, r5
 740 0080 13F0010F 		tst	r3, #1
 741 0084 05F10105 		add	r5, r5, #1
ARM GAS  /tmp/ccCOaEG9.s 			page 14


 742 0088 0BD0     		beq	.L93
 743 008a DBF8C030 		ldr	r3, [fp, #192]
 744 008e D9F80810 		ldr	r1, [r9, #8]	@ float
 745 0092 1868     		ldr	r0, [r3]	@ float
 746 0094 FFF7FEFF 		bl	__aeabi_fmul
 747 0098 0146     		mov	r1, r0
 748 009a 3068     		ldr	r0, [r6]	@ float
 749 009c FFF7FEFF 		bl	__aeabi_fadd
 750 00a0 3060     		str	r0, [r6]	@ float
 751              	.L93:
 752 00a2 A845     		cmp	r8, r5
 753 00a4 06F10406 		add	r6, r6, #4
 754 00a8 CCD1     		bne	.L95
 755 00aa 03B0     		add	sp, sp, #12
 756              		@ sp needed
 757 00ac BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 758              	.L110:
 759              		.align	2
 760              	.L109:
 761 00b0 00000000 		.word	reprap
 762              		.size	_ZNK4Move13AxisTransformEPfmm, .-_ZNK4Move13AxisTransformEPfmm
 763              		.section	.text._ZNK4Move26GetInterpolatedHeightErrorEff,"ax",%progbits
 764              		.align	1
 765              		.p2align 2,,3
 766              		.global	_ZNK4Move26GetInterpolatedHeightErrorEff
 767              		.syntax unified
 768              		.thumb
 769              		.thumb_func
 770              		.fpu softvfp
 771              		.type	_ZNK4Move26GetInterpolatedHeightErrorEff, %function
 772              	_ZNK4Move26GetInterpolatedHeightErrorEff:
 773              		@ args = 0, pretend = 0, frame = 0
 774              		@ frame_needed = 0, uses_anonymous_args = 0
 775              		@ link register save eliminated.
 776 0000 90F8F034 		ldrb	r3, [r0, #1264]	@ zero_extendqisi2
 777 0004 1BB9     		cbnz	r3, .L113
 778 0006 00F53C70 		add	r0, r0, #752
 779 000a FFF7FEBF 		b	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff
 780              	.L113:
 781 000e C830     		adds	r0, r0, #200
 782 0010 FFF7FEBF 		b	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 783              		.size	_ZNK4Move26GetInterpolatedHeightErrorEff, .-_ZNK4Move26GetInterpolatedHeightErrorEff
 784              		.section	.text._ZNK4Move20InverseAxisTransformEPfmm,"ax",%progbits
 785              		.align	1
 786              		.p2align 2,,3
 787              		.global	_ZNK4Move20InverseAxisTransformEPfmm
 788              		.syntax unified
 789              		.thumb
 790              		.thumb_func
 791              		.fpu softvfp
 792              		.type	_ZNK4Move20InverseAxisTransformEPfmm, %function
 793              	_ZNK4Move20InverseAxisTransformEPfmm:
 794              		@ args = 0, pretend = 0, frame = 8
 795              		@ frame_needed = 0, uses_anonymous_args = 0
 796 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 797 0004 2A4C     		ldr	r4, .L136
 798 0006 83B0     		sub	sp, sp, #12
ARM GAS  /tmp/ccCOaEG9.s 			page 15


 799 0008 2469     		ldr	r4, [r4, #16]
 800 000a D4F8FC81 		ldr	r8, [r4, #508]
 801 000e B8F1010F 		cmp	r8, #1
 802 0012 0BD9     		bls	.L114
 803 0014 9E07     		lsls	r6, r3, #30
 804 0016 4FF00104 		mov	r4, #1
 805 001a 02D5     		bpl	.L118
 806 001c 09E0     		b	.L116
 807              	.L134:
 808 001e ED07     		lsls	r5, r5, #31
 809 0020 07D4     		bmi	.L116
 810              	.L118:
 811 0022 0134     		adds	r4, r4, #1
 812 0024 4445     		cmp	r4, r8
 813 0026 23FA04F5 		lsr	r5, r3, r4
 814 002a F8D1     		bne	.L134
 815              	.L114:
 816 002c 03B0     		add	sp, sp, #12
 817              		@ sp needed
 818 002e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 819              	.L116:
 820 0032 9246     		mov	r10, r2
 821 0034 8946     		mov	r9, r1
 822 0036 8346     		mov	fp, r0
 823 0038 0E46     		mov	r6, r1
 824 003a 0025     		movs	r5, #0
 825 003c 1F46     		mov	r7, r3
 826 003e 01EB8403 		add	r3, r1, r4, lsl #2
 827 0042 0193     		str	r3, [sp, #4]
 828              	.L122:
 829 0044 27FA05F3 		lsr	r3, r7, r5
 830 0048 DB07     		lsls	r3, r3, #31
 831 004a 0BD5     		bpl	.L119
 832 004c DBF8C030 		ldr	r3, [fp, #192]
 833 0050 D9F80810 		ldr	r1, [r9, #8]	@ float
 834 0054 1868     		ldr	r0, [r3]	@ float
 835 0056 FFF7FEFF 		bl	__aeabi_fmul
 836 005a 0146     		mov	r1, r0
 837 005c 3068     		ldr	r0, [r6]	@ float
 838 005e FFF7FEFF 		bl	__aeabi_fsub
 839 0062 3060     		str	r0, [r6]	@ float
 840              	.L119:
 841 0064 2AFA05F3 		lsr	r3, r10, r5
 842 0068 13F0010F 		tst	r3, #1
 843 006c 05F10105 		add	r5, r5, #1
 844 0070 17D0     		beq	.L120
 845 0072 DBF8BC30 		ldr	r3, [fp, #188]
 846 0076 019A     		ldr	r2, [sp, #4]
 847 0078 1868     		ldr	r0, [r3]	@ float
 848 007a 1168     		ldr	r1, [r2]	@ float
 849 007c FFF7FEFF 		bl	__aeabi_fmul
 850 0080 DBF8C420 		ldr	r2, [fp, #196]
 851 0084 D9F80810 		ldr	r1, [r9, #8]	@ float
 852 0088 0446     		mov	r4, r0
 853 008a 1068     		ldr	r0, [r2]	@ float
 854 008c FFF7FEFF 		bl	__aeabi_fmul
 855 0090 0146     		mov	r1, r0
ARM GAS  /tmp/ccCOaEG9.s 			page 16


 856 0092 2046     		mov	r0, r4
 857 0094 FFF7FEFF 		bl	__aeabi_fadd
 858 0098 0146     		mov	r1, r0
 859 009a 3068     		ldr	r0, [r6]	@ float
 860 009c FFF7FEFF 		bl	__aeabi_fsub
 861 00a0 3060     		str	r0, [r6]	@ float
 862              	.L120:
 863 00a2 A845     		cmp	r8, r5
 864 00a4 06F10406 		add	r6, r6, #4
 865 00a8 CCD1     		bne	.L122
 866 00aa 03B0     		add	sp, sp, #12
 867              		@ sp needed
 868 00ac BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 869              	.L137:
 870              		.align	2
 871              	.L136:
 872 00b0 00000000 		.word	reprap
 873              		.size	_ZNK4Move20InverseAxisTransformEPfmm, .-_ZNK4Move20InverseAxisTransformEPfmm
 874              		.global	__aeabi_fcmplt
 875              		.global	__aeabi_ui2f
 876              		.global	__aeabi_fdiv
 877              		.section	.text._ZNK4Move12BedTransformEPfmm,"ax",%progbits
 878              		.align	1
 879              		.p2align 2,,3
 880              		.global	_ZNK4Move12BedTransformEPfmm
 881              		.syntax unified
 882              		.thumb
 883              		.thumb_func
 884              		.fpu softvfp
 885              		.type	_ZNK4Move12BedTransformEPfmm, %function
 886              	_ZNK4Move12BedTransformEPfmm:
 887              		@ args = 0, pretend = 0, frame = 8
 888              		@ frame_needed = 0, uses_anonymous_args = 0
 889 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 890 0004 8246     		mov	r10, r0
 891 0006 90F8F104 		ldrb	r0, [r0, #1265]	@ zero_extendqisi2
 892 000a 83B0     		sub	sp, sp, #12
 893 000c 8946     		mov	r9, r1
 894 000e 0192     		str	r2, [sp, #4]
 895 0010 1E46     		mov	r6, r3
 896 0012 0028     		cmp	r0, #0
 897 0014 6BD0     		beq	.L139
 898 0016 DAF8E414 		ldr	r1, [r10, #1252]	@ float
 899 001a D9F80800 		ldr	r0, [r9, #8]	@ float
 900 001e FFF7FEFF 		bl	__aeabi_fcmplt
 901 0022 0028     		cmp	r0, #0
 902 0024 60D0     		beq	.L138
 903 0026 3E4B     		ldr	r3, .L170
 904 0028 1B69     		ldr	r3, [r3, #16]
 905 002a D3F8FC51 		ldr	r5, [r3, #508]
 906 002e 002D     		cmp	r5, #0
 907 0030 6CD0     		beq	.L168
 908              	.L151:
 909 0032 0027     		movs	r7, #0
 910 0034 4FF00008 		mov	r8, #0
 911 0038 BB46     		mov	fp, r7
 912 003a CDF800A0 		str	r10, [sp]
ARM GAS  /tmp/ccCOaEG9.s 			page 17


 913              	.L145:
 914 003e 019B     		ldr	r3, [sp, #4]
 915 0040 23FA07F2 		lsr	r2, r3, r7
 916 0044 D207     		lsls	r2, r2, #31
 917 0046 20D5     		bpl	.L142
 918 0048 3B46     		mov	r3, r7
 919 004a 59F827A0 		ldr	r10, [r9, r7, lsl #2]	@ float
 920 004e 0024     		movs	r4, #0
 921 0050 5F46     		mov	r7, fp
 922 0052 9B46     		mov	fp, r3
 923 0054 02E0     		b	.L144
 924              	.L143:
 925 0056 0134     		adds	r4, r4, #1
 926 0058 AC42     		cmp	r4, r5
 927 005a 13D0     		beq	.L169
 928              	.L144:
 929 005c 26FA04F2 		lsr	r2, r6, r4
 930 0060 D307     		lsls	r3, r2, #31
 931 0062 F8D5     		bpl	.L143
 932 0064 59F82420 		ldr	r2, [r9, r4, lsl #2]	@ float
 933 0068 5146     		mov	r1, r10
 934 006a 0098     		ldr	r0, [sp]
 935 006c FFF7FEFF 		bl	_ZNK4Move26GetInterpolatedHeightErrorEff
 936 0070 0146     		mov	r1, r0
 937 0072 4046     		mov	r0, r8
 938 0074 FFF7FEFF 		bl	__aeabi_fadd
 939 0078 0134     		adds	r4, r4, #1
 940 007a AC42     		cmp	r4, r5
 941 007c 8046     		mov	r8, r0
 942 007e 07F10107 		add	r7, r7, #1
 943 0082 EBD1     		bne	.L144
 944              	.L169:
 945 0084 5B46     		mov	r3, fp
 946 0086 BB46     		mov	fp, r7
 947 0088 1F46     		mov	r7, r3
 948              	.L142:
 949 008a 0137     		adds	r7, r7, #1
 950 008c AF42     		cmp	r7, r5
 951 008e D6D1     		bne	.L145
 952 0090 BBF1010F 		cmp	fp, #1
 953 0094 DDF800A0 		ldr	r10, [sp]
 954 0098 07D9     		bls	.L165
 955 009a 5846     		mov	r0, fp
 956 009c FFF7FEFF 		bl	__aeabi_ui2f
 957 00a0 0146     		mov	r1, r0
 958 00a2 4046     		mov	r0, r8
 959 00a4 FFF7FEFF 		bl	__aeabi_fdiv
 960 00a8 8046     		mov	r8, r0
 961              	.L165:
 962 00aa 4046     		mov	r0, r8
 963 00ac DAF8EC14 		ldr	r1, [r10, #1260]	@ float
 964 00b0 FFF7FEFF 		bl	__aeabi_fadd
 965 00b4 9AF8F164 		ldrb	r6, [r10, #1265]	@ zero_extendqisi2
 966 00b8 0446     		mov	r4, r0
 967 00ba D9F80850 		ldr	r5, [r9, #8]	@ float
 968 00be 6EB1     		cbz	r6, .L148
 969              	.L149:
ARM GAS  /tmp/ccCOaEG9.s 			page 18


 970 00c0 2946     		mov	r1, r5
 971 00c2 DAF8E404 		ldr	r0, [r10, #1252]	@ float
 972 00c6 FFF7FEFF 		bl	__aeabi_fsub
 973 00ca DAF8E814 		ldr	r1, [r10, #1256]	@ float
 974 00ce FFF7FEFF 		bl	__aeabi_fmul
 975 00d2 0146     		mov	r1, r0
 976 00d4 2046     		mov	r0, r4
 977 00d6 FFF7FEFF 		bl	__aeabi_fmul
 978 00da 0446     		mov	r4, r0
 979              	.L148:
 980 00dc 2946     		mov	r1, r5
 981 00de 2046     		mov	r0, r4
 982 00e0 FFF7FEFF 		bl	__aeabi_fadd
 983 00e4 C9F80800 		str	r0, [r9, #8]	@ float
 984              	.L138:
 985 00e8 03B0     		add	sp, sp, #12
 986              		@ sp needed
 987 00ea BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 988              	.L139:
 989 00ee 0C4B     		ldr	r3, .L170
 990 00f0 1B69     		ldr	r3, [r3, #16]
 991 00f2 D3F8FC51 		ldr	r5, [r3, #508]
 992 00f6 002D     		cmp	r5, #0
 993 00f8 9BD1     		bne	.L151
 994 00fa DAF8EC04 		ldr	r0, [r10, #1260]	@ float
 995 00fe 0021     		movs	r1, #0
 996 0100 FFF7FEFF 		bl	__aeabi_fadd
 997 0104 D9F80850 		ldr	r5, [r9, #8]	@ float
 998 0108 0446     		mov	r4, r0
 999 010a E7E7     		b	.L148
 1000              	.L168:
 1001 010c 0021     		movs	r1, #0
 1002 010e DAF8EC04 		ldr	r0, [r10, #1260]	@ float
 1003 0112 FFF7FEFF 		bl	__aeabi_fadd
 1004 0116 D9F80850 		ldr	r5, [r9, #8]	@ float
 1005 011a 0446     		mov	r4, r0
 1006 011c D0E7     		b	.L149
 1007              	.L171:
 1008 011e 00BF     		.align	2
 1009              	.L170:
 1010 0120 00000000 		.word	reprap
 1011              		.size	_ZNK4Move12BedTransformEPfmm, .-_ZNK4Move12BedTransformEPfmm
 1012              		.section	.text._ZNK4Move19AxisAndBedTransformEPfmmb,"ax",%progbits
 1013              		.align	1
 1014              		.p2align 2,,3
 1015              		.global	_ZNK4Move19AxisAndBedTransformEPfmmb
 1016              		.syntax unified
 1017              		.thumb
 1018              		.thumb_func
 1019              		.fpu softvfp
 1020              		.type	_ZNK4Move19AxisAndBedTransformEPfmmb, %function
 1021              	_ZNK4Move19AxisAndBedTransformEPfmmb:
 1022              		@ args = 4, pretend = 0, frame = 0
 1023              		@ frame_needed = 0, uses_anonymous_args = 0
 1024 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1025 0004 9DF81840 		ldrb	r4, [sp, #24]	@ zero_extendqisi2
 1026 0008 0546     		mov	r5, r0
ARM GAS  /tmp/ccCOaEG9.s 			page 19


 1027 000a 0E46     		mov	r6, r1
 1028 000c 1746     		mov	r7, r2
 1029 000e 9846     		mov	r8, r3
 1030 0010 FFF7FEFF 		bl	_ZNK4Move13AxisTransformEPfmm
 1031 0014 0CB9     		cbnz	r4, .L175
 1032 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1033              	.L175:
 1034 001a 4346     		mov	r3, r8
 1035 001c 3A46     		mov	r2, r7
 1036 001e 3146     		mov	r1, r6
 1037 0020 2846     		mov	r0, r5
 1038 0022 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1039 0026 FFF7FEBF 		b	_ZNK4Move12BedTransformEPfmm
 1040              		.size	_ZNK4Move19AxisAndBedTransformEPfmmb, .-_ZNK4Move19AxisAndBedTransformEPfmmb
 1041              		.global	__aeabi_fcmpge
 1042              		.global	__aeabi_fcmpgt
 1043 002a 00BF     		.section	.text._ZNK4Move19InverseBedTransformEPfmm,"ax",%progbits
 1044              		.align	1
 1045              		.p2align 2,,3
 1046              		.global	_ZNK4Move19InverseBedTransformEPfmm
 1047              		.syntax unified
 1048              		.thumb
 1049              		.thumb_func
 1050              		.fpu softvfp
 1051              		.type	_ZNK4Move19InverseBedTransformEPfmm, %function
 1052              	_ZNK4Move19InverseBedTransformEPfmm:
 1053              		@ args = 0, pretend = 0, frame = 8
 1054              		@ frame_needed = 0, uses_anonymous_args = 0
 1055 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1056 0004 3F4C     		ldr	r4, .L203
 1057 0006 83B0     		sub	sp, sp, #12
 1058 0008 0090     		str	r0, [sp]
 1059 000a 2069     		ldr	r0, [r4, #16]
 1060 000c 8946     		mov	r9, r1
 1061 000e D0F8FC51 		ldr	r5, [r0, #508]
 1062 0012 0192     		str	r2, [sp, #4]
 1063 0014 002D     		cmp	r5, #0
 1064 0016 72D0     		beq	.L187
 1065 0018 0027     		movs	r7, #0
 1066 001a 1E46     		mov	r6, r3
 1067 001c BB46     		mov	fp, r7
 1068 001e 4FF00008 		mov	r8, #0
 1069              	.L181:
 1070 0022 019B     		ldr	r3, [sp, #4]
 1071 0024 23FA07F2 		lsr	r2, r3, r7
 1072 0028 D207     		lsls	r2, r2, #31
 1073 002a 20D5     		bpl	.L178
 1074 002c 3B46     		mov	r3, r7
 1075 002e 59F827A0 		ldr	r10, [r9, r7, lsl #2]	@ float
 1076 0032 0024     		movs	r4, #0
 1077 0034 5F46     		mov	r7, fp
 1078 0036 9B46     		mov	fp, r3
 1079 0038 02E0     		b	.L180
 1080              	.L179:
 1081 003a 0134     		adds	r4, r4, #1
 1082 003c A542     		cmp	r5, r4
 1083 003e 13D0     		beq	.L202
ARM GAS  /tmp/ccCOaEG9.s 			page 20


 1084              	.L180:
 1085 0040 26FA04F2 		lsr	r2, r6, r4
 1086 0044 D307     		lsls	r3, r2, #31
 1087 0046 F8D5     		bpl	.L179
 1088 0048 59F82420 		ldr	r2, [r9, r4, lsl #2]	@ float
 1089 004c 5146     		mov	r1, r10
 1090 004e 0098     		ldr	r0, [sp]
 1091 0050 FFF7FEFF 		bl	_ZNK4Move26GetInterpolatedHeightErrorEff
 1092 0054 0146     		mov	r1, r0
 1093 0056 4046     		mov	r0, r8
 1094 0058 FFF7FEFF 		bl	__aeabi_fadd
 1095 005c 0134     		adds	r4, r4, #1
 1096 005e A542     		cmp	r5, r4
 1097 0060 8046     		mov	r8, r0
 1098 0062 07F10107 		add	r7, r7, #1
 1099 0066 EBD1     		bne	.L180
 1100              	.L202:
 1101 0068 5B46     		mov	r3, fp
 1102 006a BB46     		mov	fp, r7
 1103 006c 1F46     		mov	r7, r3
 1104              	.L178:
 1105 006e 0137     		adds	r7, r7, #1
 1106 0070 BD42     		cmp	r5, r7
 1107 0072 D6D1     		bne	.L181
 1108 0074 BBF1010F 		cmp	fp, #1
 1109 0078 07D9     		bls	.L177
 1110 007a 5846     		mov	r0, fp
 1111 007c FFF7FEFF 		bl	__aeabi_ui2f
 1112 0080 0146     		mov	r1, r0
 1113 0082 4046     		mov	r0, r8
 1114 0084 FFF7FEFF 		bl	__aeabi_fdiv
 1115 0088 8046     		mov	r8, r0
 1116              	.L177:
 1117 008a 009D     		ldr	r5, [sp]
 1118 008c 4046     		mov	r0, r8
 1119 008e D5F8EC14 		ldr	r1, [r5, #1260]	@ float
 1120 0092 FFF7FEFF 		bl	__aeabi_fadd
 1121 0096 95F8F134 		ldrb	r3, [r5, #1265]	@ zero_extendqisi2
 1122 009a 0446     		mov	r4, r0
 1123 009c 2BB3     		cbz	r3, .L182
 1124 009e D5F8E454 		ldr	r5, [r5, #1252]	@ float
 1125 00a2 2946     		mov	r1, r5
 1126 00a4 FFF7FEFF 		bl	__aeabi_fcmpge
 1127 00a8 F8B9     		cbnz	r0, .L182
 1128 00aa 2146     		mov	r1, r4
 1129 00ac D9F80800 		ldr	r0, [r9, #8]	@ float
 1130 00b0 FFF7FEFF 		bl	__aeabi_fsub
 1131 00b4 009B     		ldr	r3, [sp]
 1132 00b6 0646     		mov	r6, r0
 1133 00b8 D3F8E814 		ldr	r1, [r3, #1256]	@ float
 1134 00bc 2046     		mov	r0, r4
 1135 00be FFF7FEFF 		bl	__aeabi_fmul
 1136 00c2 0146     		mov	r1, r0
 1137 00c4 4FF07E50 		mov	r0, #1065353216
 1138 00c8 FFF7FEFF 		bl	__aeabi_fsub
 1139 00cc 0146     		mov	r1, r0
 1140 00ce 3046     		mov	r0, r6
ARM GAS  /tmp/ccCOaEG9.s 			page 21


 1141 00d0 FFF7FEFF 		bl	__aeabi_fdiv
 1142 00d4 0446     		mov	r4, r0
 1143 00d6 0146     		mov	r1, r0
 1144 00d8 2846     		mov	r0, r5
 1145 00da FFF7FEFF 		bl	__aeabi_fcmpgt
 1146 00de 58B1     		cbz	r0, .L176
 1147 00e0 C9F80840 		str	r4, [r9, #8]	@ float
 1148 00e4 03B0     		add	sp, sp, #12
 1149              		@ sp needed
 1150 00e6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1151              	.L182:
 1152 00ea D9F80800 		ldr	r0, [r9, #8]	@ float
 1153 00ee 2146     		mov	r1, r4
 1154 00f0 FFF7FEFF 		bl	__aeabi_fsub
 1155 00f4 C9F80800 		str	r0, [r9, #8]	@ float
 1156              	.L176:
 1157 00f8 03B0     		add	sp, sp, #12
 1158              		@ sp needed
 1159 00fa BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1160              	.L187:
 1161 00fe 4FF00008 		mov	r8, #0
 1162 0102 C2E7     		b	.L177
 1163              	.L204:
 1164              		.align	2
 1165              	.L203:
 1166 0104 00000000 		.word	reprap
 1167              		.size	_ZNK4Move19InverseBedTransformEPfmm, .-_ZNK4Move19InverseBedTransformEPfmm
 1168              		.section	.text._ZNK4Move26InverseAxisAndBedTransformEPfmm,"ax",%progbits
 1169              		.align	1
 1170              		.p2align 2,,3
 1171              		.global	_ZNK4Move26InverseAxisAndBedTransformEPfmm
 1172              		.syntax unified
 1173              		.thumb
 1174              		.thumb_func
 1175              		.fpu softvfp
 1176              		.type	_ZNK4Move26InverseAxisAndBedTransformEPfmm, %function
 1177              	_ZNK4Move26InverseAxisAndBedTransformEPfmm:
 1178              		@ args = 0, pretend = 0, frame = 0
 1179              		@ frame_needed = 0, uses_anonymous_args = 0
 1180 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1181 0004 0446     		mov	r4, r0
 1182 0006 0D46     		mov	r5, r1
 1183 0008 1646     		mov	r6, r2
 1184 000a 1F46     		mov	r7, r3
 1185 000c FFF7FEFF 		bl	_ZNK4Move19InverseBedTransformEPfmm
 1186 0010 3B46     		mov	r3, r7
 1187 0012 3246     		mov	r2, r6
 1188 0014 2946     		mov	r1, r5
 1189 0016 2046     		mov	r0, r4
 1190 0018 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1191 001c FFF7FEBF 		b	_ZNK4Move20InverseAxisTransformEPfmm
 1192              		.size	_ZNK4Move26InverseAxisAndBedTransformEPfmm, .-_ZNK4Move26InverseAxisAndBedTransformEPfmm
 1193              		.section	.text._ZN4Move10PausePrintER12RestorePoint,"ax",%progbits
 1194              		.align	1
 1195              		.p2align 2,,3
 1196              		.global	_ZN4Move10PausePrintER12RestorePoint
 1197              		.syntax unified
ARM GAS  /tmp/ccCOaEG9.s 			page 22


 1198              		.thumb
 1199              		.thumb_func
 1200              		.fpu softvfp
 1201              		.type	_ZN4Move10PausePrintER12RestorePoint, %function
 1202              	_ZN4Move10PausePrintER12RestorePoint:
 1203              		@ args = 0, pretend = 0, frame = 0
 1204              		@ frame_needed = 0, uses_anonymous_args = 0
 1205 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1206 0004 0546     		mov	r5, r0
 1207 0006 0F46     		mov	r7, r1
 1208 0008 4668     		ldr	r6, [r0, #4]
 1209              		.syntax unified
 1210              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1211 000a 72B6     		cpsid i
 1212              	@ 0 "" 2
 1213              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1214 000c BFF35F8F 		dmb
 1215              	@ 0 "" 2
 1216              		.thumb
 1217              		.syntax unified
 1218 0010 0023     		movs	r3, #0
 1219 0012 2D49     		ldr	r1, .L234
 1220 0014 0B70     		strb	r3, [r1]
 1221 0016 0368     		ldr	r3, [r0]
 1222 0018 13B9     		cbnz	r3, .L212
 1223 001a 4DE0     		b	.L232
 1224              	.L213:
 1225 001c 002A     		cmp	r2, #0
 1226 001e 4ED1     		bne	.L210
 1227              	.L212:
 1228 0020 9A7A     		ldrb	r2, [r3, #10]	@ zero_extendqisi2
 1229 0022 1B68     		ldr	r3, [r3]
 1230 0024 02F00402 		and	r2, r2, #4
 1231 0028 9E42     		cmp	r6, r3
 1232 002a F7D1     		bne	.L213
 1233              	.L209:
 1234 002c 0123     		movs	r3, #1
 1235 002e 0B70     		strb	r3, [r1]
 1236              		.syntax unified
 1237              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1238 0030 BFF35F8F 		dmb
 1239              	@ 0 "" 2
 1240              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1241 0034 62B6     		cpsie i
 1242              	@ 0 "" 2
 1243              		.thumb
 1244              		.syntax unified
 1245 0036 254B     		ldr	r3, .L234+4
 1246 0038 6A68     		ldr	r2, [r5, #4]
 1247 003a 1B69     		ldr	r3, [r3, #16]
 1248 003c D2F80490 		ldr	r9, [r2, #4]
 1249 0040 D3F8FCA1 		ldr	r10, [r3, #508]
 1250 0044 BAF1000F 		cmp	r10, #0
 1251 0048 0CD0     		beq	.L217
 1252 004a 0024     		movs	r4, #0
 1253 004c A7F10408 		sub	r8, r7, #4
 1254              	.L218:
ARM GAS  /tmp/ccCOaEG9.s 			page 23


 1255 0050 2146     		mov	r1, r4
 1256 0052 0022     		movs	r2, #0
 1257 0054 4846     		mov	r0, r9
 1258 0056 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1259 005a 0134     		adds	r4, r4, #1
 1260 005c A245     		cmp	r10, r4
 1261 005e 48F8040F 		str	r0, [r8, #4]!	@ float
 1262 0062 F5D1     		bne	.L218
 1263              	.L217:
 1264 0064 D9F81430 		ldr	r3, [r9, #20]
 1265 0068 D9F81020 		ldr	r2, [r9, #16]
 1266 006c 3946     		mov	r1, r7
 1267 006e 2846     		mov	r0, r5
 1268 0070 FFF7FEFF 		bl	_ZNK4Move26InverseAxisAndBedTransformEPfmm
 1269 0074 6C68     		ldr	r4, [r5, #4]
 1270 0076 A642     		cmp	r6, r4
 1271 0078 23D0     		beq	.L233
 1272 007a 0021     		movs	r1, #0
 1273 007c 2046     		mov	r0, r4
 1274 007e FFF7FEFF 		bl	_ZNK3DDA17GetProportionDoneEb
 1275 0082 E37A     		ldrb	r3, [r4, #11]	@ zero_extendqisi2
 1276 0084 D4F89420 		ldr	r2, [r4, #148]	@ float
 1277 0088 9B07     		lsls	r3, r3, #30
 1278 008a 48BF     		it	mi
 1279 008c D4F89030 		ldrmi	r3, [r4, #144]	@ float
 1280 0090 3862     		str	r0, [r7, #32]	@ float
 1281 0092 48BF     		it	mi
 1282 0094 BB61     		strmi	r3, [r7, #24]	@ float
 1283 0096 A369     		ldr	r3, [r4, #24]
 1284 0098 FA61     		str	r2, [r7, #28]	@ float
 1285 009a 7B62     		str	r3, [r7, #36]
 1286              	.L220:
 1287 009c 2046     		mov	r0, r4
 1288 009e FFF7FEFF 		bl	_ZN3DDA4FreeEv
 1289 00a2 D5F80435 		ldr	r3, [r5, #1284]
 1290 00a6 2468     		ldr	r4, [r4]
 1291 00a8 013B     		subs	r3, r3, #1
 1292 00aa A642     		cmp	r6, r4
 1293 00ac C5F80435 		str	r3, [r5, #1284]
 1294 00b0 F4D1     		bne	.L220
 1295 00b2 0120     		movs	r0, #1
 1296 00b4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1297              	.L232:
 1298 00b8 8368     		ldr	r3, [r0, #8]
 1299 00ba 9E42     		cmp	r6, r3
 1300 00bc B6D0     		beq	.L209
 1301              	.L210:
 1302 00be 6B60     		str	r3, [r5, #4]
 1303 00c0 B4E7     		b	.L209
 1304              	.L233:
 1305 00c2 0020     		movs	r0, #0
 1306 00c4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1307              	.L235:
 1308              		.align	2
 1309              	.L234:
 1310 00c8 00000000 		.word	g_interrupt_enabled
 1311 00cc 00000000 		.word	reprap
ARM GAS  /tmp/ccCOaEG9.s 			page 24


 1312              		.size	_ZN4Move10PausePrintER12RestorePoint, .-_ZN4Move10PausePrintER12RestorePoint
 1313              		.section	.text._ZN4Move18SetZeroHeightErrorEPKf,"ax",%progbits
 1314              		.align	1
 1315              		.p2align 2,,3
 1316              		.global	_ZN4Move18SetZeroHeightErrorEPKf
 1317              		.syntax unified
 1318              		.thumb
 1319              		.thumb_func
 1320              		.fpu softvfp
 1321              		.type	_ZN4Move18SetZeroHeightErrorEPKf, %function
 1322              	_ZN4Move18SetZeroHeightErrorEPKf:
 1323              		@ args = 0, pretend = 0, frame = 24
 1324              		@ frame_needed = 0, uses_anonymous_args = 0
 1325 0000 70B5     		push	{r4, r5, r6, lr}
 1326 0002 0D46     		mov	r5, r1
 1327 0004 86B0     		sub	sp, sp, #24
 1328 0006 6C46     		mov	r4, sp
 1329 0008 0646     		mov	r6, r0
 1330 000a AA68     		ldr	r2, [r5, #8]	@ unaligned
 1331 000c 2868     		ldr	r0, [r5]	@ unaligned
 1332 000e EB68     		ldr	r3, [r5, #12]	@ unaligned
 1333 0010 4968     		ldr	r1, [r1, #4]	@ unaligned
 1334 0012 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1335 0014 2869     		ldr	r0, [r5, #16]	@ unaligned
 1336 0016 6969     		ldr	r1, [r5, #20]	@ unaligned
 1337 0018 0223     		movs	r3, #2
 1338 001a 03C4     		stmia	r4!, {r0, r1}
 1339 001c 0122     		movs	r2, #1
 1340 001e 6946     		mov	r1, sp
 1341 0020 3046     		mov	r0, r6
 1342 0022 FFF7FEFF 		bl	_ZNK4Move13AxisTransformEPfmm
 1343 0026 3046     		mov	r0, r6
 1344 0028 019A     		ldr	r2, [sp, #4]	@ float
 1345 002a 0099     		ldr	r1, [sp]	@ float
 1346 002c FFF7FEFF 		bl	_ZNK4Move26GetInterpolatedHeightErrorEff
 1347 0030 00F10040 		add	r0, r0, #-2147483648
 1348 0034 C6F8EC04 		str	r0, [r6, #1260]	@ float
 1349 0038 06B0     		add	sp, sp, #24
 1350              		@ sp needed
 1351 003a 70BD     		pop	{r4, r5, r6, pc}
 1352              		.size	_ZN4Move18SetZeroHeightErrorEPKf, .-_ZN4Move18SetZeroHeightErrorEPKf
 1353              		.section	.text._ZN4Move20SetIdentityTransformEv,"ax",%progbits
 1354              		.align	1
 1355              		.p2align 2,,3
 1356              		.global	_ZN4Move20SetIdentityTransformEv
 1357              		.syntax unified
 1358              		.thumb
 1359              		.thumb_func
 1360              		.fpu softvfp
 1361              		.type	_ZN4Move20SetIdentityTransformEv, %function
 1362              	_ZN4Move20SetIdentityTransformEv:
 1363              		@ args = 0, pretend = 0, frame = 0
 1364              		@ frame_needed = 0, uses_anonymous_args = 0
 1365 0000 70B5     		push	{r4, r5, r6, lr}
 1366 0002 0446     		mov	r4, r0
 1367 0004 0025     		movs	r5, #0
 1368 0006 00F1C806 		add	r6, r0, #200
ARM GAS  /tmp/ccCOaEG9.s 			page 25


 1369 000a 3046     		mov	r0, r6
 1370 000c C4F8F052 		str	r5, [r4, #752]
 1371 0010 FFF7FEFF 		bl	_ZN9HeightMap16ClearGridHeightsEv
 1372 0014 2946     		mov	r1, r5
 1373 0016 3046     		mov	r0, r6
 1374 0018 FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 1375 001c 0023     		movs	r3, #0
 1376 001e 84F8F054 		strb	r5, [r4, #1264]
 1377 0022 C4F8EC34 		str	r3, [r4, #1260]	@ float
 1378 0026 70BD     		pop	{r4, r5, r6, pc}
 1379              		.size	_ZN4Move20SetIdentityTransformEv, .-_ZN4Move20SetIdentityTransformEv
 1380              		.section	.text._ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef,"ax",%progbits
 1381              		.align	1
 1382              		.p2align 2,,3
 1383              		.global	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef
 1384              		.syntax unified
 1385              		.thumb
 1386              		.thumb_func
 1387              		.fpu softvfp
 1388              		.type	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef, %function
 1389              	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef:
 1390              		@ args = 0, pretend = 0, frame = 0
 1391              		@ frame_needed = 0, uses_anonymous_args = 0
 1392 0000 70B5     		push	{r4, r5, r6, lr}
 1393 0002 00F1C806 		add	r6, r0, #200
 1394 0006 0546     		mov	r5, r0
 1395 0008 3046     		mov	r0, r6
 1396 000a FFF7FEFF 		bl	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef
 1397 000e 0446     		mov	r4, r0
 1398 0010 20B9     		cbnz	r0, .L244
 1399 0012 0023     		movs	r3, #0
 1400 0014 2046     		mov	r0, r4
 1401 0016 C5F8EC34 		str	r3, [r5, #1260]	@ float
 1402 001a 70BD     		pop	{r4, r5, r6, pc}
 1403              	.L244:
 1404 001c 3046     		mov	r0, r6
 1405 001e FFF7FEFF 		bl	_ZN9HeightMap16ClearGridHeightsEv
 1406 0022 2046     		mov	r0, r4
 1407 0024 70BD     		pop	{r4, r5, r6, pc}
 1408              		.size	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef, .-_ZN4Move21LoadHeightMapFromFileEP
 1409 0026 00BF     		.section	.text._ZNK4Move19SaveHeightMapToFileEP9FileStore,"ax",%progbits
 1410              		.align	1
 1411              		.p2align 2,,3
 1412              		.global	_ZNK4Move19SaveHeightMapToFileEP9FileStore
 1413              		.syntax unified
 1414              		.thumb
 1415              		.thumb_func
 1416              		.fpu softvfp
 1417              		.type	_ZNK4Move19SaveHeightMapToFileEP9FileStore, %function
 1418              	_ZNK4Move19SaveHeightMapToFileEP9FileStore:
 1419              		@ args = 0, pretend = 0, frame = 0
 1420              		@ frame_needed = 0, uses_anonymous_args = 0
 1421              		@ link register save eliminated.
 1422 0000 D0F8EC24 		ldr	r2, [r0, #1260]	@ float
 1423 0004 C830     		adds	r0, r0, #200
 1424 0006 FFF7FEBF 		b	_ZNK9HeightMap10SaveToFileEP9FileStoref
 1425              		.size	_ZNK4Move19SaveHeightMapToFileEP9FileStore, .-_ZNK4Move19SaveHeightMapToFileEP9FileStore
ARM GAS  /tmp/ccCOaEG9.s 			page 26


 1426 000a 00BF     		.section	.text._ZN4Move14SetTaperHeightEf,"ax",%progbits
 1427              		.align	1
 1428              		.p2align 2,,3
 1429              		.global	_ZN4Move14SetTaperHeightEf
 1430              		.syntax unified
 1431              		.thumb
 1432              		.thumb_func
 1433              		.fpu softvfp
 1434              		.type	_ZN4Move14SetTaperHeightEf, %function
 1435              	_ZN4Move14SetTaperHeightEf:
 1436              		@ args = 0, pretend = 0, frame = 0
 1437              		@ frame_needed = 0, uses_anonymous_args = 0
 1438 0000 38B5     		push	{r3, r4, r5, lr}
 1439 0002 0C46     		mov	r4, r1
 1440 0004 0546     		mov	r5, r0
 1441 0006 4FF07E51 		mov	r1, #1065353216
 1442 000a 2046     		mov	r0, r4
 1443 000c FFF7FEFF 		bl	__aeabi_fcmpgt
 1444 0010 90B9     		cbnz	r0, .L251
 1445 0012 0346     		mov	r3, r0
 1446              	.L247:
 1447 0014 85F8F134 		strb	r3, [r5, #1265]
 1448 0018 4FF07E51 		mov	r1, #1065353216
 1449 001c 2046     		mov	r0, r4
 1450 001e FFF7FEFF 		bl	__aeabi_fcmpgt
 1451 0022 40B1     		cbz	r0, .L246
 1452 0024 C5F8E444 		str	r4, [r5, #1252]	@ float
 1453 0028 2146     		mov	r1, r4
 1454 002a 4FF07E50 		mov	r0, #1065353216
 1455 002e FFF7FEFF 		bl	__aeabi_fdiv
 1456 0032 C5F8E804 		str	r0, [r5, #1256]	@ float
 1457              	.L246:
 1458 0036 38BD     		pop	{r3, r4, r5, pc}
 1459              	.L251:
 1460 0038 4FF00103 		mov	r3, #1
 1461 003c EAE7     		b	.L247
 1462              		.size	_ZN4Move14SetTaperHeightEf, .-_ZN4Move14SetTaperHeightEf
 1463 003e 00BF     		.section	.text._ZN4Move7UseMeshEb,"ax",%progbits
 1464              		.align	1
 1465              		.p2align 2,,3
 1466              		.global	_ZN4Move7UseMeshEb
 1467              		.syntax unified
 1468              		.thumb
 1469              		.thumb_func
 1470              		.fpu softvfp
 1471              		.type	_ZN4Move7UseMeshEb, %function
 1472              	_ZN4Move7UseMeshEb:
 1473              		@ args = 0, pretend = 0, frame = 0
 1474              		@ frame_needed = 0, uses_anonymous_args = 0
 1475 0000 10B5     		push	{r4, lr}
 1476 0002 0446     		mov	r4, r0
 1477 0004 C830     		adds	r0, r0, #200
 1478 0006 FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 1479 000a 84F8F004 		strb	r0, [r4, #1264]
 1480 000e 10BD     		pop	{r4, pc}
 1481              		.size	_ZN4Move7UseMeshEb, .-_ZN4Move7UseMeshEb
 1482              		.section	.text._ZNK4Move16AxisCompensationEj,"ax",%progbits
ARM GAS  /tmp/ccCOaEG9.s 			page 27


 1483              		.align	1
 1484              		.p2align 2,,3
 1485              		.global	_ZNK4Move16AxisCompensationEj
 1486              		.syntax unified
 1487              		.thumb
 1488              		.thumb_func
 1489              		.fpu softvfp
 1490              		.type	_ZNK4Move16AxisCompensationEj, %function
 1491              	_ZNK4Move16AxisCompensationEj:
 1492              		@ args = 0, pretend = 0, frame = 0
 1493              		@ frame_needed = 0, uses_anonymous_args = 0
 1494              		@ link register save eliminated.
 1495 0000 0229     		cmp	r1, #2
 1496 0002 9ABF     		itte	ls
 1497 0004 2C31     		addls	r1, r1, #44
 1498 0006 50F82100 		ldrls	r0, [r0, r1, lsl #2]	@ float
 1499 000a 0020     		movhi	r0, #0
 1500 000c 7047     		bx	lr
 1501              		.size	_ZNK4Move16AxisCompensationEj, .-_ZNK4Move16AxisCompensationEj
 1502 000e 00BF     		.section	.text._ZN4Move19SetAxisCompensationEjf,"ax",%progbits
 1503              		.align	1
 1504              		.p2align 2,,3
 1505              		.global	_ZN4Move19SetAxisCompensationEjf
 1506              		.syntax unified
 1507              		.thumb
 1508              		.thumb_func
 1509              		.fpu softvfp
 1510              		.type	_ZN4Move19SetAxisCompensationEjf, %function
 1511              	_ZN4Move19SetAxisCompensationEjf:
 1512              		@ args = 0, pretend = 0, frame = 0
 1513              		@ frame_needed = 0, uses_anonymous_args = 0
 1514              		@ link register save eliminated.
 1515 0000 0229     		cmp	r1, #2
 1516 0002 9CBF     		itt	ls
 1517 0004 2C31     		addls	r1, r1, #44
 1518 0006 40F82120 		strls	r2, [r0, r1, lsl #2]	@ float
 1519 000a 7047     		bx	lr
 1520              		.size	_ZN4Move19SetAxisCompensationEjf, .-_ZN4Move19SetAxisCompensationEjf
 1521              		.section	.text._ZN4Move18FinishedBedProbingEiRK9StringRef,"ax",%progbits
 1522              		.align	1
 1523              		.p2align 2,,3
 1524              		.global	_ZN4Move18FinishedBedProbingEiRK9StringRef
 1525              		.syntax unified
 1526              		.thumb
 1527              		.thumb_func
 1528              		.fpu softvfp
 1529              		.type	_ZN4Move18FinishedBedProbingEiRK9StringRef, %function
 1530              	_ZN4Move18FinishedBedProbingEiRK9StringRef:
 1531              		@ args = 0, pretend = 0, frame = 0
 1532              		@ frame_needed = 0, uses_anonymous_args = 0
 1533 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1534 0004 00F53C75 		add	r5, r0, #752
 1535 0008 0C46     		mov	r4, r1
 1536 000a 0746     		mov	r7, r0
 1537 000c 2846     		mov	r0, r5
 1538 000e 9046     		mov	r8, r2
 1539 0010 FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
ARM GAS  /tmp/ccCOaEG9.s 			page 28


 1540 0014 002C     		cmp	r4, #0
 1541 0016 0646     		mov	r6, r0
 1542 0018 4EDB     		blt	.L276
 1543 001a A042     		cmp	r0, r4
 1544 001c 2ED3     		bcc	.L277
 1545 001e 2D4B     		ldr	r3, .L282
 1546 0020 5B6C     		ldr	r3, [r3, #68]
 1547 0022 DB06     		lsls	r3, r3, #27
 1548 0024 25D4     		bmi	.L278
 1549              	.L264:
 1550 0026 3146     		mov	r1, r6
 1551 0028 2846     		mov	r0, r5
 1552 002a 002C     		cmp	r4, #0
 1553 002c 08BF     		it	eq
 1554 002e 3446     		moveq	r4, r6
 1555 0030 FFF7FEFF 		bl	_ZNK19RandomProbePointSet15GoodProbePointsEj
 1556 0034 90B1     		cbz	r0, .L279
 1557 0036 D7F8FC04 		ldr	r0, [r7, #1276]
 1558 003a 274A     		ldr	r2, .L282+4
 1559 003c 0368     		ldr	r3, [r0]
 1560 003e 1B69     		ldr	r3, [r3, #16]
 1561 0040 9342     		cmp	r3, r2
 1562 0042 28D1     		bne	.L280
 1563              	.L267:
 1564 0044 2146     		mov	r1, r4
 1565 0046 4246     		mov	r2, r8
 1566 0048 2846     		mov	r0, r5
 1567 004a FFF7FEFF 		bl	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef
 1568 004e 0446     		mov	r4, r0
 1569              	.L262:
 1570 0050 2846     		mov	r0, r5
 1571 0052 FFF7FEFF 		bl	_ZN19RandomProbePointSet17ClearProbeHeightsEv
 1572 0056 2046     		mov	r0, r4
 1573 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1574              	.L279:
 1575 005c 0124     		movs	r4, #1
 1576 005e 1F49     		ldr	r1, .L282+8
 1577 0060 4046     		mov	r0, r8
 1578 0062 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1579 0066 2846     		mov	r0, r5
 1580 0068 FFF7FEFF 		bl	_ZN19RandomProbePointSet17ClearProbeHeightsEv
 1581 006c 2046     		mov	r0, r4
 1582 006e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1583              	.L278:
 1584 0072 0146     		mov	r1, r0
 1585 0074 2846     		mov	r0, r5
 1586 0076 FFF7FEFF 		bl	_ZNK19RandomProbePointSet10DebugPrintEj
 1587 007a D4E7     		b	.L264
 1588              	.L277:
 1589 007c 2246     		mov	r2, r4
 1590 007e 0124     		movs	r4, #1
 1591 0080 0346     		mov	r3, r0
 1592 0082 1749     		ldr	r1, .L282+12
 1593 0084 4046     		mov	r0, r8
 1594 0086 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1595 008a 2846     		mov	r0, r5
 1596 008c FFF7FEFF 		bl	_ZN19RandomProbePointSet17ClearProbeHeightsEv
ARM GAS  /tmp/ccCOaEG9.s 			page 29


 1597 0090 2046     		mov	r0, r4
 1598 0092 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1599              	.L280:
 1600 0096 9847     		blx	r3
 1601 0098 0028     		cmp	r0, #0
 1602 009a D3D0     		beq	.L267
 1603 009c D7F8FC04 		ldr	r0, [r7, #1276]
 1604 00a0 104B     		ldr	r3, .L282+16
 1605 00a2 0268     		ldr	r2, [r0]
 1606 00a4 5669     		ldr	r6, [r2, #20]
 1607 00a6 9E42     		cmp	r6, r3
 1608 00a8 0DD1     		bne	.L281
 1609 00aa 0024     		movs	r4, #0
 1610 00ac 2846     		mov	r0, r5
 1611 00ae FFF7FEFF 		bl	_ZN19RandomProbePointSet17ClearProbeHeightsEv
 1612 00b2 2046     		mov	r0, r4
 1613 00b4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1614              	.L276:
 1615 00b8 0146     		mov	r1, r0
 1616 00ba 4246     		mov	r2, r8
 1617 00bc 2846     		mov	r0, r5
 1618 00be FFF7FEFF 		bl	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef
 1619 00c2 0024     		movs	r4, #0
 1620 00c4 C4E7     		b	.L262
 1621              	.L281:
 1622 00c6 2146     		mov	r1, r4
 1623 00c8 4346     		mov	r3, r8
 1624 00ca 2A46     		mov	r2, r5
 1625 00cc B047     		blx	r6
 1626 00ce 0446     		mov	r4, r0
 1627 00d0 BEE7     		b	.L262
 1628              	.L283:
 1629 00d2 00BF     		.align	2
 1630              	.L282:
 1631 00d4 00000000 		.word	reprap
 1632 00d8 00000000 		.word	_ZNK10Kinematics23SupportsAutoCalibrationEv
 1633 00dc 50000000 		.word	.LC14
 1634 00e0 00000000 		.word	.LC13
 1635 00e4 00000000 		.word	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 1636              		.size	_ZN4Move18FinishedBedProbingEiRK9StringRef, .-_ZN4Move18FinishedBedProbingEiRK9StringRef
 1637              		.section	.text._ZN4Move20AdjustMotorPositionsEPKfj,"ax",%progbits
 1638              		.align	1
 1639              		.p2align 2,,3
 1640              		.global	_ZN4Move20AdjustMotorPositionsEPKfj
 1641              		.syntax unified
 1642              		.thumb
 1643              		.thumb_func
 1644              		.fpu softvfp
 1645              		.type	_ZN4Move20AdjustMotorPositionsEPKfj, %function
 1646              	_ZN4Move20AdjustMotorPositionsEPKfj:
 1647              		@ args = 0, pretend = 0, frame = 8
 1648              		@ frame_needed = 0, uses_anonymous_args = 0
 1649 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1650 0004 184B     		ldr	r3, .L290
 1651 0006 8146     		mov	r9, r0
 1652 0008 4068     		ldr	r0, [r0, #4]
 1653 000a 83B0     		sub	sp, sp, #12
ARM GAS  /tmp/ccCOaEG9.s 			page 30


 1654 000c D0F804B0 		ldr	fp, [r0, #4]
 1655 0010 1E68     		ldr	r6, [r3]
 1656 0012 0192     		str	r2, [sp, #4]
 1657 0014 12B3     		cbz	r2, .L286
 1658 0016 0BF11808 		add	r8, fp, #24
 1659 001a C246     		mov	r10, r8
 1660 001c 0025     		movs	r5, #0
 1661 001e 0F1F     		subs	r7, r1, #4
 1662 0020 06F59076 		add	r6, r6, #288
 1663              	.L287:
 1664 0024 56F8041F 		ldr	r1, [r6, #4]!	@ float
 1665 0028 57F8040F 		ldr	r0, [r7, #4]!	@ float
 1666 002c FFF7FEFF 		bl	__aeabi_fmul
 1667 0030 58F8044F 		ldr	r4, [r8, #4]!
 1668 0034 FFF7FEFF 		bl	lrintf
 1669 0038 2044     		add	r0, r0, r4
 1670 003a 4AF8040F 		str	r0, [r10, #4]!
 1671 003e 9BF80A10 		ldrb	r1, [fp, #10]	@ zero_extendqisi2
 1672 0042 019B     		ldr	r3, [sp, #4]
 1673 0044 05F11A02 		add	r2, r5, #26
 1674 0048 0135     		adds	r5, r5, #1
 1675 004a 6FF30001 		bfc	r1, #0, #1
 1676 004e 09EB8202 		add	r2, r9, r2, lsl #2
 1677 0052 AB42     		cmp	r3, r5
 1678 0054 8BF80A10 		strb	r1, [fp, #10]
 1679 0058 5060     		str	r0, [r2, #4]
 1680 005a E3D1     		bne	.L287
 1681              	.L286:
 1682 005c 0023     		movs	r3, #0
 1683 005e 89F86830 		strb	r3, [r9, #104]
 1684 0062 03B0     		add	sp, sp, #12
 1685              		@ sp needed
 1686 0064 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1687              	.L291:
 1688              		.align	2
 1689              	.L290:
 1690 0068 00000000 		.word	reprap
 1691              		.size	_ZN4Move20AdjustMotorPositionsEPKfj, .-_ZN4Move20AdjustMotorPositionsEPKfj
 1692              		.section	.text.hot._ZN4Move20CurrentMoveCompletedEv,"ax",%progbits
 1693              		.align	1
 1694              		.p2align 2,,3
 1695              		.global	_ZN4Move20CurrentMoveCompletedEv
 1696              		.syntax unified
 1697              		.thumb
 1698              		.thumb_func
 1699              		.fpu softvfp
 1700              		.type	_ZN4Move20CurrentMoveCompletedEv, %function
 1701              	_ZN4Move20CurrentMoveCompletedEv:
 1702              		@ args = 0, pretend = 0, frame = 0
 1703              		@ frame_needed = 0, uses_anonymous_args = 0
 1704 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1705 0004 0246     		mov	r2, r0
 1706 0006 0546     		mov	r5, r0
 1707 0008 52F8440B 		ldr	r0, [r2], #68
 1708 000c 05F16C01 		add	r1, r5, #108
 1709 0010 FFF7FEFF 		bl	_ZN3DDA16FetchEndPositionEPVlPVf
 1710 0014 164B     		ldr	r3, .L305
ARM GAS  /tmp/ccCOaEG9.s 			page 31


 1711 0016 85F86800 		strb	r0, [r5, #104]
 1712 001a 1B69     		ldr	r3, [r3, #16]
 1713 001c D3F8F871 		ldr	r7, [r3, #504]
 1714 0020 082F     		cmp	r7, #8
 1715 0022 19D8     		bhi	.L295
 1716 0024 3C46     		mov	r4, r7
 1717 0026 4FF00108 		mov	r8, #1
 1718              	.L296:
 1719 002a 2146     		mov	r1, r4
 1720 002c 2868     		ldr	r0, [r5]
 1721 002e FFF7FEFF 		bl	_ZNK3DDA13GetStepsTakenEj
 1722 0032 E61B     		subs	r6, r4, r7
 1723 0034 05EB8602 		add	r2, r5, r6, lsl #2
 1724 0038 D2F89030 		ldr	r3, [r2, #144]
 1725 003c 2146     		mov	r1, r4
 1726 003e 1844     		add	r0, r0, r3
 1727 0040 C2F89000 		str	r0, [r2, #144]
 1728 0044 2868     		ldr	r0, [r5]
 1729 0046 0134     		adds	r4, r4, #1
 1730 0048 FFF7FEFF 		bl	_ZNK3DDA25IsNonPrintingExtruderMoveEj
 1731 004c 10B1     		cbz	r0, .L294
 1732 004e 2E44     		add	r6, r6, r5
 1733 0050 86F8A880 		strb	r8, [r6, #168]
 1734              	.L294:
 1735 0054 092C     		cmp	r4, #9
 1736 0056 E8D1     		bne	.L296
 1737              	.L295:
 1738 0058 0023     		movs	r3, #0
 1739 005a 2B60     		str	r3, [r5]
 1740 005c AB68     		ldr	r3, [r5, #8]
 1741 005e 1B68     		ldr	r3, [r3]
 1742 0060 AB60     		str	r3, [r5, #8]
 1743 0062 D5F80835 		ldr	r3, [r5, #1288]
 1744 0066 0133     		adds	r3, r3, #1
 1745 0068 C5F80835 		str	r3, [r5, #1288]
 1746 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1747              	.L306:
 1748              		.align	2
 1749              	.L305:
 1750 0070 00000000 		.word	reprap
 1751              		.size	_ZN4Move20CurrentMoveCompletedEv, .-_ZN4Move20CurrentMoveCompletedEv
 1752              		.section	.text._ZN4Move4SpinEv,"ax",%progbits
 1753              		.align	1
 1754              		.p2align 2,,3
 1755              		.global	_ZN4Move4SpinEv
 1756              		.syntax unified
 1757              		.thumb
 1758              		.thumb_func
 1759              		.fpu softvfp
 1760              		.type	_ZN4Move4SpinEv, %function
 1761              	_ZN4Move4SpinEv:
 1762              		@ args = 0, pretend = 0, frame = 96
 1763              		@ frame_needed = 0, uses_anonymous_args = 0
 1764 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1765 0004 047C     		ldrb	r4, [r0, #16]	@ zero_extendqisi2
 1766 0006 99B0     		sub	sp, sp, #100
 1767 0008 002C     		cmp	r4, #0
ARM GAS  /tmp/ccCOaEG9.s 			page 32


 1768 000a 00F0DF80 		beq	.L412
 1769 000e 036A     		ldr	r3, [r0, #32]
 1770 0010 0546     		mov	r5, r0
 1771 0012 B3F57A7F 		cmp	r3, #1000
 1772 0016 3CBF     		itt	cc
 1773 0018 0133     		addcc	r3, r3, #1
 1774 001a 0362     		strcc	r3, [r0, #32]
 1775 001c C068     		ldr	r0, [r0, #12]
 1776 001e 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 1777 0020 042B     		cmp	r3, #4
 1778 0022 25D1     		bne	.L318
 1779 0024 A34E     		ldr	r6, .L424
 1780 0026 18E0     		b	.L317
 1781              	.L315:
 1782 0028 3168     		ldr	r1, [r6]
 1783 002a D5F80025 		ldr	r2, [r5, #1280]
 1784 002e D1F8AC30 		ldr	r3, [r1, #172]
 1785 0032 0132     		adds	r2, r2, #1
 1786 0034 43F00203 		orr	r3, r3, #2
 1787 0038 C5F80025 		str	r2, [r5, #1280]
 1788 003c C1F8AC30 		str	r3, [r1, #172]
 1789              	.L314:
 1790 0040 E868     		ldr	r0, [r5, #12]
 1791 0042 FFF7FEFF 		bl	_ZN3DDA4FreeEv
 1792 0046 10B1     		cbz	r0, .L316
 1793 0048 6B69     		ldr	r3, [r5, #20]
 1794 004a 0133     		adds	r3, r3, #1
 1795 004c 6B61     		str	r3, [r5, #20]
 1796              	.L316:
 1797 004e EB68     		ldr	r3, [r5, #12]
 1798 0050 1868     		ldr	r0, [r3]
 1799 0052 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 1800 0054 E860     		str	r0, [r5, #12]
 1801 0056 042B     		cmp	r3, #4
 1802 0058 0AD1     		bne	.L318
 1803              	.L317:
 1804 005a FFF7FEFF 		bl	_ZNK3DDA12HasStepErrorEv
 1805 005e 0028     		cmp	r0, #0
 1806 0060 EED0     		beq	.L314
 1807 0062 736C     		ldr	r3, [r6, #68]
 1808 0064 DB06     		lsls	r3, r3, #27
 1809 0066 DFD5     		bpl	.L315
 1810 0068 E868     		ldr	r0, [r5, #12]
 1811 006a FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1812 006e DBE7     		b	.L315
 1813              	.L318:
 1814 0070 6868     		ldr	r0, [r5, #4]
 1815 0072 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 1816 0074 03F0FF02 		and	r2, r3, #255
 1817 0078 002B     		cmp	r3, #0
 1818 007a 59D1     		bne	.L313
 1819 007c 0368     		ldr	r3, [r0]
 1820 007e 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 1821 0080 012B     		cmp	r3, #1
 1822 0082 55D0     		beq	.L313
 1823 0084 8C4B     		ldr	r3, .L424+4
 1824 0086 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/ccCOaEG9.s 			page 33


 1825 0088 082B     		cmp	r3, #8
 1826 008a 51DD     		ble	.L313
 1827 008c 4368     		ldr	r3, [r0, #4]
 1828 008e 197A     		ldrb	r1, [r3, #8]	@ zero_extendqisi2
 1829 0090 0129     		cmp	r1, #1
 1830 0092 0ED1     		bne	.L320
 1831 0094 1146     		mov	r1, r2
 1832              	.L321:
 1833 0096 1144     		add	r1, r1, r2
 1834 0098 D3F8B420 		ldr	r2, [r3, #180]
 1835 009c 5B68     		ldr	r3, [r3, #4]
 1836 009e 1E7A     		ldrb	r6, [r3, #8]	@ zero_extendqisi2
 1837 00a0 012E     		cmp	r6, #1
 1838 00a2 F8D0     		beq	.L321
 1839 00a4 854B     		ldr	r3, .L424+8
 1840 00a6 9942     		cmp	r1, r3
 1841 00a8 03D9     		bls	.L320
 1842 00aa 854B     		ldr	r3, .L424+12
 1843 00ac 0A44     		add	r2, r2, r1
 1844 00ae 9A42     		cmp	r2, r3
 1845 00b0 3ED8     		bhi	.L313
 1846              	.L320:
 1847 00b2 95F83065 		ldrb	r6, [r5, #1328]	@ zero_extendqisi2
 1848 00b6 002E     		cmp	r6, #0
 1849 00b8 00F09080 		beq	.L413
 1850 00bc 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 1851 00be 012B     		cmp	r3, #1
 1852 00c0 40F3BE80 		ble	.L414
 1853              	.L322:
 1854 00c4 0022     		movs	r2, #0
 1855 00c6 85F83025 		strb	r2, [r5, #1328]
 1856 00ca 002B     		cmp	r3, #0
 1857 00cc 41D1     		bne	.L415
 1858              	.L333:
 1859 00ce 2B68     		ldr	r3, [r5]
 1860 00d0 002B     		cmp	r3, #0
 1861 00d2 55D0     		beq	.L416
 1862              	.L336:
 1863 00d4 2C68     		ldr	r4, [r5]
 1864 00d6 44B3     		cbz	r4, .L307
 1865 00d8 0027     		movs	r7, #0
 1866 00da 3E46     		mov	r6, r7
 1867              	.L359:
 1868 00dc 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 1869 00de DBB2     		uxtb	r3, r3
 1870 00e0 9A1E     		subs	r2, r3, #2
 1871 00e2 022A     		cmp	r2, #2
 1872 00e4 29D9     		bls	.L350
 1873 00e6 012B     		cmp	r3, #1
 1874 00e8 1FD1     		bne	.L307
 1875 00ea 764B     		ldr	r3, .L424+16
 1876 00ec 9E42     		cmp	r6, r3
 1877 00ee 1CDC     		bgt	.L307
 1878 00f0 082F     		cmp	r7, #8
 1879 00f2 1AD8     		bhi	.L307
 1880 00f4 9846     		mov	r8, r3
 1881 00f6 48F22B09 		movw	r9, #32811
ARM GAS  /tmp/ccCOaEG9.s 			page 34


 1882 00fa 03E0     		b	.L353
 1883              	.L405:
 1884 00fc 4645     		cmp	r6, r8
 1885 00fe 14DC     		bgt	.L307
 1886 0100 092F     		cmp	r7, #9
 1887 0102 12D0     		beq	.L307
 1888              	.L353:
 1889 0104 2046     		mov	r0, r4
 1890 0106 FFF7FEFF 		bl	_ZNK3DDA15IsGoodToPrepareEv
 1891 010a 08B9     		cbnz	r0, .L354
 1892 010c 4E45     		cmp	r6, r9
 1893 010e 03DC     		bgt	.L360
 1894              	.L354:
 1895 0110 697C     		ldrb	r1, [r5, #17]	@ zero_extendqisi2
 1896 0112 2046     		mov	r0, r4
 1897 0114 FFF7FEFF 		bl	_ZN3DDA7PrepareEh
 1898              	.L360:
 1899 0118 2046     		mov	r0, r4
 1900 011a FFF7FEFF 		bl	_ZNK3DDA11GetTimeLeftEv
 1901 011e 2468     		ldr	r4, [r4]
 1902 0120 0137     		adds	r7, r7, #1
 1903 0122 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 1904 0124 0644     		add	r6, r6, r0
 1905 0126 012B     		cmp	r3, #1
 1906 0128 E8D0     		beq	.L405
 1907              	.L307:
 1908 012a 19B0     		add	sp, sp, #100
 1909              		@ sp needed
 1910 012c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1911              	.L313:
 1912 0130 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 1913 0132 0026     		movs	r6, #0
 1914 0134 002B     		cmp	r3, #0
 1915 0136 CAD0     		beq	.L333
 1916 0138 0BE0     		b	.L415
 1917              	.L350:
 1918 013a 2046     		mov	r0, r4
 1919 013c FFF7FEFF 		bl	_ZNK3DDA11GetTimeLeftEv
 1920 0140 2468     		ldr	r4, [r4]
 1921 0142 6B68     		ldr	r3, [r5, #4]
 1922 0144 0137     		adds	r7, r7, #1
 1923 0146 A342     		cmp	r3, r4
 1924 0148 0644     		add	r6, r6, r0
 1925 014a C7D1     		bne	.L359
 1926 014c 19B0     		add	sp, sp, #100
 1927              		@ sp needed
 1928 014e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1929              	.L415:
 1930 0152 2C68     		ldr	r4, [r5]
 1931 0154 002C     		cmp	r4, #0
 1932 0156 BAD0     		beq	.L333
 1933 0158 D4F8B400 		ldr	r0, [r4, #180]
 1934 015c FFF7FEFF 		bl	__aeabi_ui2f
 1935 0160 5949     		ldr	r1, .L424+20
 1936 0162 FFF7FEFF 		bl	__aeabi_fdiv
 1937 0166 0146     		mov	r1, r0
 1938 0168 A86A     		ldr	r0, [r5, #40]	@ float
ARM GAS  /tmp/ccCOaEG9.s 			page 35


 1939 016a FFF7FEFF 		bl	__aeabi_fadd
 1940 016e 0423     		movs	r3, #4
 1941 0170 A862     		str	r0, [r5, #40]	@ float
 1942 0172 2372     		strb	r3, [r4, #8]
 1943 0174 2846     		mov	r0, r5
 1944 0176 FFF7FEFF 		bl	_ZN4Move20CurrentMoveCompletedEv
 1945 017a 2B68     		ldr	r3, [r5]
 1946 017c 002B     		cmp	r3, #0
 1947 017e A9D1     		bne	.L336
 1948              	.L416:
 1949 0180 16B1     		cbz	r6, .L337
 1950 0182 2B6A     		ldr	r3, [r5, #32]
 1951 0184 0A2B     		cmp	r3, #10
 1952 0186 A5D9     		bls	.L336
 1953              	.L337:
 1954 0188 FFF7FEFF 		bl	_ZN8Platform20DisableStepInterruptEv
 1955 018c AC68     		ldr	r4, [r5, #8]
 1956 018e 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 1957 0190 012B     		cmp	r3, #1
 1958 0192 68D0     		beq	.L417
 1959              	.L339:
 1960 0194 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 1961 0196 022B     		cmp	r3, #2
 1962 0198 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 1963 019a 5FD0     		beq	.L418
 1964 019c 002B     		cmp	r3, #0
 1965 019e 99D1     		bne	.L336
 1966 01a0 AB7C     		ldrb	r3, [r5, #18]	@ zero_extendqisi2
 1967 01a2 022B     		cmp	r3, #2
 1968 01a4 00F0AF80 		beq	.L419
 1969              	.L346:
 1970 01a8 032B     		cmp	r3, #3
 1971 01aa 93D1     		bne	.L336
 1972 01ac FFF7FEFF 		bl	millis
 1973 01b0 D5F8F834 		ldr	r3, [r5, #1272]
 1974 01b4 D5F8F424 		ldr	r2, [r5, #1268]
 1975 01b8 C31A     		subs	r3, r0, r3
 1976 01ba 9342     		cmp	r3, r2
 1977 01bc 8AD3     		bcc	.L336
 1978 01be 3D4B     		ldr	r3, .L424
 1979 01c0 1868     		ldr	r0, [r3]
 1980 01c2 FFF7FEFF 		bl	_ZN8Platform14SetDriversIdleEv
 1981 01c6 0023     		movs	r3, #0
 1982 01c8 AB74     		strb	r3, [r5, #18]
 1983 01ca 83E7     		b	.L336
 1984              	.L412:
 1985 01cc 394B     		ldr	r3, .L424
 1986 01ce 01A9     		add	r1, sp, #4
 1987 01d0 1869     		ldr	r0, [r3, #16]
 1988 01d2 FFF7FEFF 		bl	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 1989 01d6 19B0     		add	sp, sp, #100
 1990              		@ sp needed
 1991 01d8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1992              	.L413:
 1993 01dc 354B     		ldr	r3, .L424
 1994 01de 01A9     		add	r1, sp, #4
 1995 01e0 1869     		ldr	r0, [r3, #16]
ARM GAS  /tmp/ccCOaEG9.s 			page 36


 1996 01e2 FFF7FEFF 		bl	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 1997 01e6 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 1998 01e8 0646     		mov	r6, r0
 1999 01ea 08B1     		cbz	r0, .L327
 2000 01ec 012B     		cmp	r3, #1
 2001 01ee 04DD     		ble	.L420
 2002              	.L327:
 2003 01f0 2646     		mov	r6, r4
 2004              	.L423:
 2005 01f2 002B     		cmp	r3, #0
 2006 01f4 3FF46BAF 		beq	.L333
 2007 01f8 ABE7     		b	.L415
 2008              	.L420:
 2009 01fa 9DF85C30 		ldrb	r3, [sp, #92]	@ zero_extendqisi2
 2010 01fe 002B     		cmp	r3, #0
 2011 0200 6FD0     		beq	.L421
 2012              	.L328:
 2013 0202 022B     		cmp	r3, #2
 2014 0204 6F68     		ldr	r7, [r5, #4]
 2015 0206 6AD0     		beq	.L361
 2016 0208 03F0FD03 		and	r3, r3, #253
 2017 020c 012B     		cmp	r3, #1
 2018 020e 5FD0     		beq	.L422
 2019              	.L329:
 2020 0210 3246     		mov	r2, r6
 2021 0212 01A9     		add	r1, sp, #4
 2022 0214 3846     		mov	r0, r7
 2023 0216 FFF7FEFF 		bl	_ZN3DDA4InitERN6GCodes7RawMoveEb
 2024 021a 70B1     		cbz	r0, .L409
 2025 021c 0021     		movs	r1, #0
 2026 021e 6A68     		ldr	r2, [r5, #4]
 2027 0220 D5F80435 		ldr	r3, [r5, #1284]
 2028 0224 1068     		ldr	r0, [r2]
 2029 0226 AA7C     		ldrb	r2, [r5, #18]	@ zero_extendqisi2
 2030 0228 0133     		adds	r3, r3, #1
 2031 022a 6860     		str	r0, [r5, #4]
 2032 022c C5F80435 		str	r3, [r5, #1284]
 2033 0230 2962     		str	r1, [r5, #32]
 2034 0232 002A     		cmp	r2, #0
 2035 0234 75D0     		beq	.L331
 2036 0236 032A     		cmp	r2, #3
 2037 0238 73D0     		beq	.L331
 2038              	.L409:
 2039 023a 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 2040 023c 2646     		mov	r6, r4
 2041 023e D8E7     		b	.L423
 2042              	.L414:
 2043 0240 05F20C51 		addw	r1, r5, #1292
 2044 0244 FFF7FEFF 		bl	_ZN3DDA4InitEPKf
 2045 0248 30B1     		cbz	r0, .L408
 2046 024a 6A68     		ldr	r2, [r5, #4]
 2047 024c AB7C     		ldrb	r3, [r5, #18]	@ zero_extendqisi2
 2048 024e 1268     		ldr	r2, [r2]
 2049 0250 6A60     		str	r2, [r5, #4]
 2050 0252 6BB1     		cbz	r3, .L324
 2051 0254 032B     		cmp	r3, #3
 2052 0256 0BD0     		beq	.L324
ARM GAS  /tmp/ccCOaEG9.s 			page 37


 2053              	.L408:
 2054 0258 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 2055 025a 33E7     		b	.L322
 2056              	.L418:
 2057 025c BBB1     		cbz	r3, .L341
 2058 025e 2C60     		str	r4, [r5]
 2059              	.L342:
 2060 0260 0223     		movs	r3, #2
 2061 0262 AB74     		strb	r3, [r5, #18]
 2062 0264 36E7     		b	.L336
 2063              	.L417:
 2064 0266 697C     		ldrb	r1, [r5, #17]	@ zero_extendqisi2
 2065 0268 2046     		mov	r0, r4
 2066 026a FFF7FEFF 		bl	_ZN3DDA7PrepareEh
 2067 026e 91E7     		b	.L339
 2068              	.L324:
 2069 0270 0123     		movs	r3, #1
 2070 0272 AB74     		strb	r3, [r5, #18]
 2071 0274 FFF7FEFF 		bl	millis
 2072 0278 D5F8F834 		ldr	r3, [r5, #1272]
 2073 027c 6A6A     		ldr	r2, [r5, #36]
 2074 027e C31A     		subs	r3, r0, r3
 2075 0280 9342     		cmp	r3, r2
 2076 0282 88BF     		it	hi
 2077 0284 6B62     		strhi	r3, [r5, #36]
 2078 0286 C5F8F804 		str	r0, [r5, #1272]
 2079 028a 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 2080 028c 1AE7     		b	.L322
 2081              	.L341:
 2082 028e 0F4B     		ldr	r3, .L424+24
 2083 0290 1969     		ldr	r1, [r3, #16]
 2084 0292 AB68     		ldr	r3, [r5, #8]
 2085 0294 2B60     		str	r3, [r5]
 2086 0296 2868     		ldr	r0, [r5]
 2087 0298 FFF7FEFF 		bl	_ZN3DDA5StartEm
 2088 029c 0028     		cmp	r0, #0
 2089 029e DFD0     		beq	.L342
 2090 02a0 2B68     		ldr	r3, [r5]
 2091 02a2 002B     		cmp	r3, #0
 2092 02a4 DCD0     		beq	.L342
 2093              	.L388:
 2094 02a6 2868     		ldr	r0, [r5]
 2095 02a8 FFF7FEFF 		bl	_ZN3DDA4StepEv
 2096 02ac 0028     		cmp	r0, #0
 2097 02ae FAD1     		bne	.L388
 2098 02b0 D6E7     		b	.L342
 2099              	.L425:
 2100 02b2 00BF     		.align	2
 2101              	.L424:
 2102 02b4 00000000 		.word	reprap
 2103 02b8 00000000 		.word	_ZN13DriveMovement7numFreeE
 2104 02bc BC010500 		.word	328124
 2105 02c0 F3061400 		.word	1312499
 2106 02c4 58000100 		.word	65624
 2107 02c8 A0372049 		.word	1226848160
 2108 02cc 00400840 		.word	1074282496
 2109              	.L422:
ARM GAS  /tmp/ccCOaEG9.s 			page 38


 2110 02d0 2846     		mov	r0, r5
 2111 02d2 FFF7FEFF 		bl	_ZNK4Move14IsRawMotorMoveEh.part.6
 2112 02d6 80F00100 		eor	r0, r0, #1
 2113 02da C6B2     		uxtb	r6, r0
 2114 02dc 98E7     		b	.L329
 2115              	.L361:
 2116 02de 0026     		movs	r6, #0
 2117 02e0 96E7     		b	.L329
 2118              	.L421:
 2119 02e2 149F     		ldr	r7, [sp, #80]
 2120 02e4 DDF85480 		ldr	r8, [sp, #84]
 2121 02e8 3A46     		mov	r2, r7
 2122 02ea 4346     		mov	r3, r8
 2123 02ec 01A9     		add	r1, sp, #4
 2124 02ee 2846     		mov	r0, r5
 2125 02f0 FFF7FEFF 		bl	_ZNK4Move13AxisTransformEPfmm
 2126 02f4 4346     		mov	r3, r8
 2127 02f6 3A46     		mov	r2, r7
 2128 02f8 01A9     		add	r1, sp, #4
 2129 02fa 2846     		mov	r0, r5
 2130 02fc FFF7FEFF 		bl	_ZNK4Move12BedTransformEPfmm
 2131 0300 9DF85C30 		ldrb	r3, [sp, #92]	@ zero_extendqisi2
 2132 0304 7DE7     		b	.L328
 2133              	.L419:
 2134 0306 0F4B     		ldr	r3, .L426
 2135 0308 1869     		ldr	r0, [r3, #16]
 2136 030a FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 2137 030e 08B1     		cbz	r0, .L347
 2138 0310 AB7C     		ldrb	r3, [r5, #18]	@ zero_extendqisi2
 2139 0312 49E7     		b	.L346
 2140              	.L347:
 2141 0314 FFF7FEFF 		bl	millis
 2142 0318 0323     		movs	r3, #3
 2143 031a C5F8F804 		str	r0, [r5, #1272]
 2144 031e AB74     		strb	r3, [r5, #18]
 2145 0320 D8E6     		b	.L336
 2146              	.L331:
 2147 0322 0123     		movs	r3, #1
 2148 0324 AB74     		strb	r3, [r5, #18]
 2149 0326 FFF7FEFF 		bl	millis
 2150 032a D5F8F834 		ldr	r3, [r5, #1272]
 2151 032e 6A6A     		ldr	r2, [r5, #36]
 2152 0330 C31A     		subs	r3, r0, r3
 2153 0332 9342     		cmp	r3, r2
 2154 0334 88BF     		it	hi
 2155 0336 6B62     		strhi	r3, [r5, #36]
 2156 0338 C5F8F804 		str	r0, [r5, #1272]
 2157 033c 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
 2158 033e 2646     		mov	r6, r4
 2159 0340 57E7     		b	.L423
 2160              	.L427:
 2161 0342 00BF     		.align	2
 2162              	.L426:
 2163 0344 00000000 		.word	reprap
 2164              		.size	_ZN4Move4SpinEv, .-_ZN4Move4SpinEv
 2165              		.section	.text.hot._ZN4Move16TryStartNextMoveEm,"ax",%progbits
 2166              		.align	1
ARM GAS  /tmp/ccCOaEG9.s 			page 39


 2167              		.p2align 2,,3
 2168              		.global	_ZN4Move16TryStartNextMoveEm
 2169              		.syntax unified
 2170              		.thumb
 2171              		.thumb_func
 2172              		.fpu softvfp
 2173              		.type	_ZN4Move16TryStartNextMoveEm, %function
 2174              	_ZN4Move16TryStartNextMoveEm:
 2175              		@ args = 0, pretend = 0, frame = 0
 2176              		@ frame_needed = 0, uses_anonymous_args = 0
 2177 0000 8368     		ldr	r3, [r0, #8]
 2178 0002 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 2179 0004 DBB2     		uxtb	r3, r3
 2180 0006 022B     		cmp	r3, #2
 2181 0008 15D0     		beq	.L437
 2182 000a 012B     		cmp	r3, #1
 2183 000c 10B5     		push	{r4, lr}
 2184 000e 0ED0     		beq	.L438
 2185              	.L430:
 2186 0010 0B4B     		ldr	r3, .L439
 2187 0012 0021     		movs	r1, #0
 2188 0014 1C68     		ldr	r4, [r3]
 2189 0016 D4F81006 		ldr	r0, [r4, #1552]	@ float
 2190 001a FFF7FEFF 		bl	__aeabi_fcmpgt
 2191 001e 20B1     		cbz	r0, .L431
 2192 0020 04F21460 		addw	r0, r4, #1556
 2193 0024 0021     		movs	r1, #0
 2194 0026 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 2195              	.L431:
 2196 002a 0020     		movs	r0, #0
 2197 002c 10BD     		pop	{r4, pc}
 2198              	.L438:
 2199 002e 8369     		ldr	r3, [r0, #24]
 2200 0030 0133     		adds	r3, r3, #1
 2201 0032 8361     		str	r3, [r0, #24]
 2202 0034 ECE7     		b	.L430
 2203              	.L437:
 2204 0036 8368     		ldr	r3, [r0, #8]
 2205 0038 0360     		str	r3, [r0]
 2206 003a 0068     		ldr	r0, [r0]
 2207 003c FFF7FEBF 		b	_ZN3DDA5StartEm
 2208              	.L440:
 2209              		.align	2
 2210              	.L439:
 2211 0040 00000000 		.word	reprap
 2212              		.size	_ZN4Move16TryStartNextMoveEm, .-_ZN4Move16TryStartNextMoveEm
 2213              		.section	.text._ZNK4Move25GetCurrentMachinePositionEPfb,"ax",%progbits
 2214              		.align	1
 2215              		.p2align 2,,3
 2216              		.global	_ZNK4Move25GetCurrentMachinePositionEPfb
 2217              		.syntax unified
 2218              		.thumb
 2219              		.thumb_func
 2220              		.fpu softvfp
 2221              		.type	_ZNK4Move25GetCurrentMachinePositionEPfb, %function
 2222              	_ZNK4Move25GetCurrentMachinePositionEPfb:
 2223              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccCOaEG9.s 			page 40


 2224              		@ frame_needed = 0, uses_anonymous_args = 0
 2225 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 2226 0004 104B     		ldr	r3, .L448
 2227 0006 9146     		mov	r9, r2
 2228 0008 1B69     		ldr	r3, [r3, #16]
 2229 000a 4268     		ldr	r2, [r0, #4]
 2230 000c 0D46     		mov	r5, r1
 2231 000e 0024     		movs	r4, #0
 2232 0010 D2F80480 		ldr	r8, [r2, #4]
 2233 0014 D3F8FC61 		ldr	r6, [r3, #508]
 2234 0018 0027     		movs	r7, #0
 2235 001a 05E0     		b	.L444
 2236              	.L442:
 2237 001c 0134     		adds	r4, r4, #1
 2238 001e 062C     		cmp	r4, #6
 2239 0020 2F60     		str	r7, [r5]	@ float
 2240 0022 05F10405 		add	r5, r5, #4
 2241 0026 0CD0     		beq	.L447
 2242              	.L444:
 2243 0028 A642     		cmp	r6, r4
 2244 002a F7D9     		bls	.L442
 2245 002c 2146     		mov	r1, r4
 2246 002e 4A46     		mov	r2, r9
 2247 0030 4046     		mov	r0, r8
 2248 0032 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 2249 0036 0134     		adds	r4, r4, #1
 2250 0038 062C     		cmp	r4, #6
 2251 003a 2860     		str	r0, [r5]	@ float
 2252 003c 05F10405 		add	r5, r5, #4
 2253 0040 F2D1     		bne	.L444
 2254              	.L447:
 2255 0042 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2256              	.L449:
 2257 0046 00BF     		.align	2
 2258              	.L448:
 2259 0048 00000000 		.word	reprap
 2260              		.size	_ZNK4Move25GetCurrentMachinePositionEPfb, .-_ZNK4Move25GetCurrentMachinePositionEPfb
 2261              		.global	__aeabi_i2f
 2262              		.section	.text._ZN4Move23MotorEndpointToPositionElj,"ax",%progbits
 2263              		.align	1
 2264              		.p2align 2,,3
 2265              		.global	_ZN4Move23MotorEndpointToPositionElj
 2266              		.syntax unified
 2267              		.thumb
 2268              		.thumb_func
 2269              		.fpu softvfp
 2270              		.type	_ZN4Move23MotorEndpointToPositionElj, %function
 2271              	_ZN4Move23MotorEndpointToPositionElj:
 2272              		@ args = 0, pretend = 0, frame = 0
 2273              		@ frame_needed = 0, uses_anonymous_args = 0
 2274 0000 10B5     		push	{r4, lr}
 2275 0002 0C46     		mov	r4, r1
 2276 0004 FFF7FEFF 		bl	__aeabi_i2f
 2277 0008 044B     		ldr	r3, .L452
 2278 000a 1968     		ldr	r1, [r3]
 2279 000c 01EB8401 		add	r1, r1, r4, lsl #2
 2280 0010 D1F82411 		ldr	r1, [r1, #292]	@ float
ARM GAS  /tmp/ccCOaEG9.s 			page 41


 2281 0014 FFF7FEFF 		bl	__aeabi_fdiv
 2282 0018 10BD     		pop	{r4, pc}
 2283              	.L453:
 2284 001a 00BF     		.align	2
 2285              	.L452:
 2286 001c 00000000 		.word	reprap
 2287              		.size	_ZN4Move23MotorEndpointToPositionElj, .-_ZN4Move23MotorEndpointToPositionElj
 2288              		.section	.text._ZNK4Move11IsExtrudingEv,"ax",%progbits
 2289              		.align	1
 2290              		.p2align 2,,3
 2291              		.global	_ZNK4Move11IsExtrudingEv
 2292              		.syntax unified
 2293              		.thumb
 2294              		.thumb_func
 2295              		.fpu softvfp
 2296              		.type	_ZNK4Move11IsExtrudingEv, %function
 2297              	_ZNK4Move11IsExtrudingEv:
 2298              		@ args = 0, pretend = 0, frame = 0
 2299              		@ frame_needed = 0, uses_anonymous_args = 0
 2300              		@ link register save eliminated.
 2301              		.syntax unified
 2302              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2303 0000 72B6     		cpsid i
 2304              	@ 0 "" 2
 2305              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2306 0002 BFF35F8F 		dmb
 2307              	@ 0 "" 2
 2308              		.thumb
 2309              		.syntax unified
 2310 0006 0023     		movs	r3, #0
 2311 0008 074A     		ldr	r2, .L457
 2312 000a 1370     		strb	r3, [r2]
 2313 000c 0368     		ldr	r3, [r0]
 2314 000e 4BB1     		cbz	r3, .L456
 2315 0010 0368     		ldr	r3, [r0]
 2316 0012 987A     		ldrb	r0, [r3, #10]	@ zero_extendqisi2
 2317 0014 C0F3C000 		ubfx	r0, r0, #3, #1
 2318              	.L455:
 2319 0018 0123     		movs	r3, #1
 2320 001a 1370     		strb	r3, [r2]
 2321              		.syntax unified
 2322              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2323 001c BFF35F8F 		dmb
 2324              	@ 0 "" 2
 2325              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2326 0020 62B6     		cpsie i
 2327              	@ 0 "" 2
 2328              		.thumb
 2329              		.syntax unified
 2330 0022 7047     		bx	lr
 2331              	.L456:
 2332 0024 1846     		mov	r0, r3
 2333 0026 F7E7     		b	.L455
 2334              	.L458:
 2335              		.align	2
 2336              	.L457:
 2337 0028 00000000 		.word	g_interrupt_enabled
ARM GAS  /tmp/ccCOaEG9.s 			page 42


 2338              		.size	_ZNK4Move11IsExtrudingEv, .-_ZNK4Move11IsExtrudingEv
 2339              		.section	.text._ZNK4Move22GetCurrentUserPositionEPfhmm,"ax",%progbits
 2340              		.align	1
 2341              		.p2align 2,,3
 2342              		.global	_ZNK4Move22GetCurrentUserPositionEPfhmm
 2343              		.syntax unified
 2344              		.thumb
 2345              		.thumb_func
 2346              		.fpu softvfp
 2347              		.type	_ZNK4Move22GetCurrentUserPositionEPfhmm, %function
 2348              	_ZNK4Move22GetCurrentUserPositionEPfhmm:
 2349              		@ args = 4, pretend = 0, frame = 0
 2350              		@ frame_needed = 0, uses_anonymous_args = 0
 2351 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2352 0004 022A     		cmp	r2, #2
 2353 0006 DDF81880 		ldr	r8, [sp, #24]
 2354 000a 13D0     		beq	.L460
 2355 000c 1E46     		mov	r6, r3
 2356 000e 02F0FD03 		and	r3, r2, #253
 2357 0012 012B     		cmp	r3, #1
 2358 0014 0F46     		mov	r7, r1
 2359 0016 0546     		mov	r5, r0
 2360 0018 1446     		mov	r4, r2
 2361 001a 10D0     		beq	.L464
 2362 001c 0022     		movs	r2, #0
 2363 001e FFF7FEFF 		bl	_ZNK4Move25GetCurrentMachinePositionEPfb
 2364 0022 ACB9     		cbnz	r4, .L459
 2365 0024 4346     		mov	r3, r8
 2366 0026 3246     		mov	r2, r6
 2367 0028 3946     		mov	r1, r7
 2368 002a 2846     		mov	r0, r5
 2369 002c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2370 0030 FFF7FEBF 		b	_ZNK4Move26InverseAxisAndBedTransformEPfmm
 2371              	.L460:
 2372 0034 0122     		movs	r2, #1
 2373 0036 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2374 003a FFF7FEBF 		b	_ZNK4Move25GetCurrentMachinePositionEPfb
 2375              	.L464:
 2376 003e FFF7FEFF 		bl	_ZNK4Move14IsRawMotorMoveEh.part.6
 2377 0042 3946     		mov	r1, r7
 2378 0044 0246     		mov	r2, r0
 2379 0046 2846     		mov	r0, r5
 2380 0048 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2381 004c FFF7FEBF 		b	_ZNK4Move25GetCurrentMachinePositionEPfb
 2382              	.L459:
 2383 0050 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2384              		.size	_ZNK4Move22GetCurrentUserPositionEPfhmm, .-_ZNK4Move22GetCurrentUserPositionEPfhmm
 2385              		.section	.text._ZN4Move15LiveCoordinatesEPfmm,"ax",%progbits
 2386              		.align	1
 2387              		.p2align 2,,3
 2388              		.global	_ZN4Move15LiveCoordinatesEPfmm
 2389              		.syntax unified
 2390              		.thumb
 2391              		.thumb_func
 2392              		.fpu softvfp
 2393              		.type	_ZN4Move15LiveCoordinatesEPfmm, %function
 2394              	_ZN4Move15LiveCoordinatesEPfmm:
ARM GAS  /tmp/ccCOaEG9.s 			page 43


 2395              		@ args = 0, pretend = 0, frame = 40
 2396              		@ frame_needed = 0, uses_anonymous_args = 0
 2397 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2398 0004 DFF82091 		ldr	r9, .L474+4
 2399 0008 0446     		mov	r4, r0
 2400 000a D9F81000 		ldr	r0, [r9, #16]
 2401 000e 9B46     		mov	fp, r3
 2402 0010 D0F8FC31 		ldr	r3, [r0, #508]
 2403 0014 8DB0     		sub	sp, sp, #52
 2404 0016 0F46     		mov	r7, r1
 2405 0018 9246     		mov	r10, r2
 2406 001a 0393     		str	r3, [sp, #12]
 2407 001c D0F8F881 		ldr	r8, [r0, #504]
 2408              		.syntax unified
 2409              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2410 0020 72B6     		cpsid i
 2411              	@ 0 "" 2
 2412              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2413 0022 BFF35F8F 		dmb
 2414              	@ 0 "" 2
 2415              		.thumb
 2416              		.syntax unified
 2417 0026 0023     		movs	r3, #0
 2418 0028 3E4E     		ldr	r6, .L474
 2419 002a 3370     		strb	r3, [r6]
 2420 002c 94F86830 		ldrb	r3, [r4, #104]	@ zero_extendqisi2
 2421 0030 03F0FF02 		and	r2, r3, #255
 2422 0034 0492     		str	r2, [sp, #16]
 2423 0036 002B     		cmp	r3, #0
 2424 0038 4AD1     		bne	.L472
 2425 003a C8EB8872 		rsb	r2, r8, r8, lsl #30
 2426 003e 2546     		mov	r5, r4
 2427 0040 04F14403 		add	r3, r4, #68
 2428 0044 4FEA8800 		lsl	r0, r8, #2
 2429 0048 9200     		lsls	r2, r2, #2
 2430 004a 1918     		adds	r1, r3, r0
 2431 004c 2432     		adds	r2, r2, #36
 2432 004e 3844     		add	r0, r0, r7
 2433 0050 0593     		str	r3, [sp, #20]
 2434 0052 FFF7FEFF 		bl	memcpy
 2435 0056 4FF00103 		mov	r3, #1
 2436 005a 55F86C0F 		ldr	r0, [r5, #108]!	@ unaligned
 2437 005e 3370     		strb	r3, [r6]
 2438 0060 6968     		ldr	r1, [r5, #4]	@ unaligned
 2439 0062 AA68     		ldr	r2, [r5, #8]	@ unaligned
 2440 0064 EB68     		ldr	r3, [r5, #12]	@ unaligned
 2441 0066 0DF1180E 		add	lr, sp, #24
 2442 006a AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2443 006e 2869     		ldr	r0, [r5, #16]	@ unaligned
 2444 0070 6969     		ldr	r1, [r5, #20]	@ unaligned
 2445 0072 AEE80300 		stmia	lr!, {r0, r1}
 2446              		.syntax unified
 2447              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2448 0076 BFF35F8F 		dmb
 2449              	@ 0 "" 2
 2450              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2451 007a 62B6     		cpsie i
ARM GAS  /tmp/ccCOaEG9.s 			page 44


 2452              	@ 0 "" 2
 2453              		.thumb
 2454              		.syntax unified
 2455 007c D4F8FC04 		ldr	r0, [r4, #1276]
 2456 0080 D9F80020 		ldr	r2, [r9]
 2457 0084 0368     		ldr	r3, [r0]
 2458 0086 CDF80080 		str	r8, [sp]
 2459 008a 0197     		str	r7, [sp, #4]
 2460 008c D3F80C80 		ldr	r8, [r3, #12]
 2461 0090 02F59272 		add	r2, r2, #292
 2462 0094 039B     		ldr	r3, [sp, #12]
 2463 0096 06A9     		add	r1, sp, #24
 2464 0098 C047     		blx	r8
 2465              		.syntax unified
 2466              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2467 009a 72B6     		cpsid i
 2468              	@ 0 "" 2
 2469              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2470 009c BFF35F8F 		dmb
 2471              	@ 0 "" 2
 2472              		.thumb
 2473              		.syntax unified
 2474 00a0 1822     		movs	r2, #24
 2475 00a2 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 2476 00a6 2946     		mov	r1, r5
 2477 00a8 0DEB0200 		add	r0, sp, r2
 2478 00ac 3370     		strb	r3, [r6]
 2479 00ae FFF7FEFF 		bl	memcmp
 2480 00b2 58B3     		cbz	r0, .L473
 2481              	.L469:
 2482 00b4 0123     		movs	r3, #1
 2483 00b6 3370     		strb	r3, [r6]
 2484              		.syntax unified
 2485              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2486 00b8 BFF35F8F 		dmb
 2487              	@ 0 "" 2
 2488              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2489 00bc 62B6     		cpsie i
 2490              	@ 0 "" 2
 2491              		.thumb
 2492              		.syntax unified
 2493              	.L468:
 2494 00be 5B46     		mov	r3, fp
 2495 00c0 5246     		mov	r2, r10
 2496 00c2 3946     		mov	r1, r7
 2497 00c4 2046     		mov	r0, r4
 2498 00c6 FFF7FEFF 		bl	_ZNK4Move26InverseAxisAndBedTransformEPfmm
 2499 00ca 0DB0     		add	sp, sp, #52
 2500              		@ sp needed
 2501 00cc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2502              	.L472:
 2503 00d0 0A46     		mov	r2, r1
 2504 00d2 04F14403 		add	r3, r4, #68
 2505 00d6 04F16401 		add	r1, r4, #100
 2506              	.L467:
 2507 00da D3F800C0 		ldr	ip, [r3]	@ unaligned
 2508 00de D3F804E0 		ldr	lr, [r3, #4]	@ unaligned
ARM GAS  /tmp/ccCOaEG9.s 			page 45


 2509 00e2 9D68     		ldr	r5, [r3, #8]	@ unaligned
 2510 00e4 D868     		ldr	r0, [r3, #12]	@ unaligned
 2511 00e6 1033     		adds	r3, r3, #16
 2512 00e8 8B42     		cmp	r3, r1
 2513 00ea C2F800C0 		str	ip, [r2]	@ unaligned
 2514 00ee C2F804E0 		str	lr, [r2, #4]	@ unaligned
 2515 00f2 9560     		str	r5, [r2, #8]	@ unaligned
 2516 00f4 D060     		str	r0, [r2, #12]	@ unaligned
 2517 00f6 02F11002 		add	r2, r2, #16
 2518 00fa EED1     		bne	.L467
 2519 00fc 0121     		movs	r1, #1
 2520 00fe 1B68     		ldr	r3, [r3]	@ unaligned
 2521 0100 1360     		str	r3, [r2]	@ unaligned
 2522 0102 3170     		strb	r1, [r6]
 2523              		.syntax unified
 2524              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2525 0104 BFF35F8F 		dmb
 2526              	@ 0 "" 2
 2527              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2528 0108 62B6     		cpsie i
 2529              	@ 0 "" 2
 2530              		.thumb
 2531              		.syntax unified
 2532 010a D8E7     		b	.L468
 2533              	.L473:
 2534 010c 039B     		ldr	r3, [sp, #12]
 2535 010e 0598     		ldr	r0, [sp, #20]
 2536 0110 9A00     		lsls	r2, r3, #2
 2537 0112 3946     		mov	r1, r7
 2538 0114 FFF7FEFF 		bl	memcpy
 2539 0118 4FF00103 		mov	r3, #1
 2540 011c 84F86830 		strb	r3, [r4, #104]
 2541 0120 C8E7     		b	.L469
 2542              	.L475:
 2543 0122 00BF     		.align	2
 2544              	.L474:
 2545 0124 00000000 		.word	g_interrupt_enabled
 2546 0128 00000000 		.word	reprap
 2547              		.size	_ZN4Move15LiveCoordinatesEPfmm, .-_ZN4Move15LiveCoordinatesEPfmm
 2548              		.section	.text._ZN4Move18SetLiveCoordinatesEPKf,"ax",%progbits
 2549              		.align	1
 2550              		.p2align 2,,3
 2551              		.global	_ZN4Move18SetLiveCoordinatesEPKf
 2552              		.syntax unified
 2553              		.thumb
 2554              		.thumb_func
 2555              		.fpu softvfp
 2556              		.type	_ZN4Move18SetLiveCoordinatesEPKf, %function
 2557              	_ZN4Move18SetLiveCoordinatesEPKf:
 2558              		@ args = 0, pretend = 0, frame = 0
 2559              		@ frame_needed = 0, uses_anonymous_args = 0
 2560              		@ link register save eliminated.
 2561 0000 0023     		movs	r3, #0
 2562 0002 30B4     		push	{r4, r5}
 2563 0004 0C1F     		subs	r4, r1, #4
 2564              	.L477:
 2565 0006 03F11002 		add	r2, r3, #16
ARM GAS  /tmp/ccCOaEG9.s 			page 46


 2566 000a 54F8045F 		ldr	r5, [r4, #4]!	@ float
 2567 000e 0133     		adds	r3, r3, #1
 2568 0010 00EB8202 		add	r2, r0, r2, lsl #2
 2569 0014 092B     		cmp	r3, #9
 2570 0016 5560     		str	r5, [r2, #4]	@ float
 2571 0018 F5D1     		bne	.L477
 2572 001a 30BC     		pop	{r4, r5}
 2573 001c 0122     		movs	r2, #1
 2574 001e 054B     		ldr	r3, .L480
 2575 0020 80F86820 		strb	r2, [r0, #104]
 2576 0024 1B69     		ldr	r3, [r3, #16]
 2577 0026 00F16C02 		add	r2, r0, #108
 2578 002a D3F8FC31 		ldr	r3, [r3, #508]
 2579 002e FFF7FEBF 		b	_ZNK4Move17EndPointToMachineEPKfPlj
 2580              	.L481:
 2581 0032 00BF     		.align	2
 2582              	.L480:
 2583 0034 00000000 		.word	reprap
 2584              		.size	_ZN4Move18SetLiveCoordinatesEPKf, .-_ZN4Move18SetLiveCoordinatesEPKf
 2585              		.section	.text._ZN4Move4InitEv,"ax",%progbits
 2586              		.align	1
 2587              		.p2align 2,,3
 2588              		.global	_ZN4Move4InitEv
 2589              		.syntax unified
 2590              		.thumb
 2591              		.thumb_func
 2592              		.fpu softvfp
 2593              		.type	_ZN4Move4InitEv, %function
 2594              	_ZN4Move4InitEv:
 2595              		@ args = 0, pretend = 0, frame = 40
 2596              		@ frame_needed = 0, uses_anonymous_args = 0
 2597 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2598 0002 0446     		mov	r4, r0
 2599 0004 4568     		ldr	r5, [r0, #4]
 2600 0006 8BB0     		sub	sp, sp, #44
 2601 0008 C560     		str	r5, [r0, #12]
 2602 000a 8560     		str	r5, [r0, #8]
 2603              	.L483:
 2604 000c 2846     		mov	r0, r5
 2605 000e FFF7FEFF 		bl	_ZN3DDA4InitEv
 2606 0012 2D68     		ldr	r5, [r5]
 2607 0014 6368     		ldr	r3, [r4, #4]
 2608 0016 9D42     		cmp	r5, r3
 2609 0018 F8D1     		bne	.L483
 2610 001a 0025     		movs	r5, #0
 2611 001c 2046     		mov	r0, r4
 2612 001e 2560     		str	r5, [r4]
 2613 0020 C4F80055 		str	r5, [r4, #1280]
 2614 0024 E561     		str	r5, [r4, #28]
 2615 0026 A561     		str	r5, [r4, #24]
 2616 0028 6561     		str	r5, [r4, #20]
 2617 002a FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 2618 002e 0022     		movs	r2, #0
 2619 0030 D4F8C010 		ldr	r1, [r4, #192]
 2620 0034 D4F8C470 		ldr	r7, [r4, #196]
 2621 0038 D4F8BC60 		ldr	r6, [r4, #188]
 2622 003c 2B46     		mov	r3, r5
ARM GAS  /tmp/ccCOaEG9.s 			page 47


 2623 003e 3A60     		str	r2, [r7]	@ float
 2624 0040 1046     		mov	r0, r2
 2625 0042 0A60     		str	r2, [r1]	@ float
 2626 0044 6946     		mov	r1, sp
 2627 0046 3260     		str	r2, [r6]	@ float
 2628              	.L484:
 2629 0048 03F11A02 		add	r2, r3, #26
 2630 004c 0133     		adds	r3, r3, #1
 2631 004e 04EB8202 		add	r2, r4, r2, lsl #2
 2632 0052 092B     		cmp	r3, #9
 2633 0054 41F8040F 		str	r0, [r1, #4]!	@ float
 2634 0058 5560     		str	r5, [r2, #4]
 2635 005a F5D1     		bne	.L484
 2636 005c 01A9     		add	r1, sp, #4
 2637 005e 2046     		mov	r0, r4
 2638 0060 FFF7FEFF 		bl	_ZN4Move18SetLiveCoordinatesEPKf
 2639 0064 01A9     		add	r1, sp, #4
 2640 0066 2046     		mov	r0, r4
 2641 0068 FFF7FEFF 		bl	_ZN4Move12SetPositionsEPKf
 2642 006c 0023     		movs	r3, #0
 2643 006e 0026     		movs	r6, #0
 2644 0070 1A46     		mov	r2, r3
 2645 0072 04F12C01 		add	r1, r4, #44
 2646              	.L485:
 2647 0076 03F12405 		add	r5, r3, #36
 2648 007a E018     		adds	r0, r4, r3
 2649 007c 0133     		adds	r3, r3, #1
 2650 007e 062B     		cmp	r3, #6
 2651 0080 44F82520 		str	r2, [r4, r5, lsl #2]
 2652 0084 80F8A820 		strb	r2, [r0, #168]
 2653 0088 41F8046B 		str	r6, [r1], #4	@ float
 2654 008c F3D1     		bne	.L485
 2655 008e 47F23051 		movw	r1, #30000
 2656 0092 0123     		movs	r3, #1
 2657 0094 84F8F024 		strb	r2, [r4, #1264]
 2658 0098 84F8F124 		strb	r2, [r4, #1265]
 2659 009c C4F8EC64 		str	r6, [r4, #1260]	@ float
 2660 00a0 A274     		strb	r2, [r4, #18]
 2661 00a2 2262     		str	r2, [r4, #32]
 2662 00a4 6274     		strb	r2, [r4, #17]
 2663 00a6 A662     		str	r6, [r4, #40]	@ float
 2664 00a8 6262     		str	r2, [r4, #36]
 2665 00aa 84F83025 		strb	r2, [r4, #1328]
 2666 00ae C4F8F414 		str	r1, [r4, #1268]
 2667 00b2 2374     		strb	r3, [r4, #16]
 2668 00b4 0BB0     		add	sp, sp, #44
 2669              		@ sp needed
 2670 00b6 F0BD     		pop	{r4, r5, r6, r7, pc}
 2671              		.size	_ZN4Move4InitEv, .-_ZN4Move4InitEv
 2672              		.section	.text._ZN4Move14SetNewPositionEPKfb,"ax",%progbits
 2673              		.align	1
 2674              		.p2align 2,,3
 2675              		.global	_ZN4Move14SetNewPositionEPKfb
 2676              		.syntax unified
 2677              		.thumb
 2678              		.thumb_func
 2679              		.fpu softvfp
ARM GAS  /tmp/ccCOaEG9.s 			page 48


 2680              		.type	_ZN4Move14SetNewPositionEPKfb, %function
 2681              	_ZN4Move14SetNewPositionEPKfb:
 2682              		@ args = 0, pretend = 0, frame = 40
 2683              		@ frame_needed = 0, uses_anonymous_args = 0
 2684 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2685 0004 0C46     		mov	r4, r1
 2686 0006 8046     		mov	r8, r0
 2687 0008 9146     		mov	r9, r2
 2688 000a 8DB0     		sub	sp, sp, #52
 2689 000c 03AE     		add	r6, sp, #12
 2690 000e 01F12007 		add	r7, r1, #32
 2691              	.L491:
 2692 0012 3546     		mov	r5, r6
 2693 0014 2068     		ldr	r0, [r4]	@ unaligned
 2694 0016 6168     		ldr	r1, [r4, #4]	@ unaligned
 2695 0018 A268     		ldr	r2, [r4, #8]	@ unaligned
 2696 001a E368     		ldr	r3, [r4, #12]	@ unaligned
 2697 001c 1034     		adds	r4, r4, #16
 2698 001e BC42     		cmp	r4, r7
 2699 0020 06F11006 		add	r6, r6, #16
 2700 0024 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2701 0026 F4D1     		bne	.L491
 2702 0028 2068     		ldr	r0, [r4]	@ unaligned
 2703 002a 3060     		str	r0, [r6]
 2704 002c 0C48     		ldr	r0, .L494
 2705 002e FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 2706 0032 0446     		mov	r4, r0
 2707 0034 0A48     		ldr	r0, .L494
 2708 0036 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 2709 003a 2246     		mov	r2, r4
 2710 003c 0346     		mov	r3, r0
 2711 003e 03A9     		add	r1, sp, #12
 2712 0040 4046     		mov	r0, r8
 2713 0042 CDF80090 		str	r9, [sp]
 2714 0046 FFF7FEFF 		bl	_ZNK4Move19AxisAndBedTransformEPfmmb
 2715 004a 03A9     		add	r1, sp, #12
 2716 004c 4046     		mov	r0, r8
 2717 004e FFF7FEFF 		bl	_ZN4Move18SetLiveCoordinatesEPKf
 2718 0052 03A9     		add	r1, sp, #12
 2719 0054 4046     		mov	r0, r8
 2720 0056 FFF7FEFF 		bl	_ZN4Move12SetPositionsEPKf
 2721 005a 0DB0     		add	sp, sp, #52
 2722              		@ sp needed
 2723 005c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2724              	.L495:
 2725              		.align	2
 2726              	.L494:
 2727 0060 00000000 		.word	reprap
 2728              		.size	_ZN4Move14SetNewPositionEPKfb, .-_ZN4Move14SetNewPositionEPKfb
 2729              		.section	.text._ZN4Move22ResetExtruderPositionsEv,"ax",%progbits
 2730              		.align	1
 2731              		.p2align 2,,3
 2732              		.global	_ZN4Move22ResetExtruderPositionsEv
 2733              		.syntax unified
 2734              		.thumb
 2735              		.thumb_func
 2736              		.fpu softvfp
ARM GAS  /tmp/ccCOaEG9.s 			page 49


 2737              		.type	_ZN4Move22ResetExtruderPositionsEv, %function
 2738              	_ZN4Move22ResetExtruderPositionsEv:
 2739              		@ args = 0, pretend = 0, frame = 0
 2740              		@ frame_needed = 0, uses_anonymous_args = 0
 2741              		@ link register save eliminated.
 2742 0000 10B4     		push	{r4}
 2743              		.syntax unified
 2744              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2745 0002 72B6     		cpsid i
 2746              	@ 0 "" 2
 2747              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2748 0004 BFF35F8F 		dmb
 2749              	@ 0 "" 2
 2750              		.thumb
 2751              		.syntax unified
 2752 0008 0022     		movs	r2, #0
 2753 000a 0C4B     		ldr	r3, .L506
 2754 000c 0C4C     		ldr	r4, .L506+4
 2755 000e 1B69     		ldr	r3, [r3, #16]
 2756 0010 2270     		strb	r2, [r4]
 2757 0012 D3F8F831 		ldr	r3, [r3, #504]
 2758 0016 082B     		cmp	r3, #8
 2759 0018 98BF     		it	ls
 2760 001a 0021     		movls	r1, #0
 2761 001c 07D8     		bhi	.L498
 2762              	.L499:
 2763 001e 03F11002 		add	r2, r3, #16
 2764 0022 0133     		adds	r3, r3, #1
 2765 0024 00EB8202 		add	r2, r0, r2, lsl #2
 2766 0028 092B     		cmp	r3, #9
 2767 002a 5160     		str	r1, [r2, #4]	@ float
 2768 002c F7D1     		bne	.L499
 2769              	.L498:
 2770 002e 0123     		movs	r3, #1
 2771 0030 2370     		strb	r3, [r4]
 2772              		.syntax unified
 2773              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2774 0032 BFF35F8F 		dmb
 2775              	@ 0 "" 2
 2776              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2777 0036 62B6     		cpsie i
 2778              	@ 0 "" 2
 2779              		.thumb
 2780              		.syntax unified
 2781 0038 10BC     		pop	{r4}
 2782 003a 7047     		bx	lr
 2783              	.L507:
 2784              		.align	2
 2785              	.L506:
 2786 003c 00000000 		.word	reprap
 2787 0040 00000000 		.word	g_interrupt_enabled
 2788              		.size	_ZN4Move22ResetExtruderPositionsEv, .-_ZN4Move22ResetExtruderPositionsEv
 2789              		.section	.text._ZN4Move23GetAccumulatedExtrusionEjRb,"ax",%progbits
 2790              		.align	1
 2791              		.p2align 2,,3
 2792              		.global	_ZN4Move23GetAccumulatedExtrusionEjRb
 2793              		.syntax unified
ARM GAS  /tmp/ccCOaEG9.s 			page 50


 2794              		.thumb
 2795              		.thumb_func
 2796              		.fpu softvfp
 2797              		.type	_ZN4Move23GetAccumulatedExtrusionEjRb, %function
 2798              	_ZN4Move23GetAccumulatedExtrusionEjRb:
 2799              		@ args = 0, pretend = 0, frame = 8
 2800              		@ frame_needed = 0, uses_anonymous_args = 0
 2801 0000 264B     		ldr	r3, .L523
 2802 0002 1B69     		ldr	r3, [r3, #16]
 2803 0004 D3F8F831 		ldr	r3, [r3, #504]
 2804 0008 0B44     		add	r3, r3, r1
 2805 000a 082B     		cmp	r3, #8
 2806 000c 28D8     		bhi	.L509
 2807 000e 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2808 0012 1746     		mov	r7, r2
 2809 0014 83B0     		sub	sp, sp, #12
 2810 0016 0546     		mov	r5, r0
 2811 0018 0C46     		mov	r4, r1
 2812              		.syntax unified
 2813              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2814 001a EFF3108B 		MRS fp, primask
 2815              	@ 0 "" 2
 2816              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2817 001e 72B6     		cpsid i
 2818              	@ 0 "" 2
 2819              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2820 0020 BFF35F8F 		dmb
 2821              	@ 0 "" 2
 2822              		.thumb
 2823              		.syntax unified
 2824 0024 4FF0000A 		mov	r10, #0
 2825 0028 DFF87490 		ldr	r9, .L523+4
 2826 002c 00EB8108 		add	r8, r0, r1, lsl #2
 2827 0030 89F800A0 		strb	r10, [r9]
 2828 0034 D8F89060 		ldr	r6, [r8, #144]
 2829 0038 0268     		ldr	r2, [r0]
 2830 003a AAB1     		cbz	r2, .L512
 2831 003c 1946     		mov	r1, r3
 2832 003e 1046     		mov	r0, r2
 2833 0040 0192     		str	r2, [sp, #4]
 2834 0042 FFF7FEFF 		bl	_ZNK3DDA13GetStepsTakenEj
 2835 0046 78B1     		cbz	r0, .L512
 2836 0048 019A     		ldr	r2, [sp, #4]
 2837 004a 937A     		ldrb	r3, [r2, #10]	@ zero_extendqisi2
 2838 004c 1B07     		lsls	r3, r3, #28
 2839 004e 20D5     		bpl	.L513
 2840 0050 2919     		adds	r1, r5, r4
 2841 0052 91F8A820 		ldrb	r2, [r1, #168]	@ zero_extendqisi2
 2842 0056 4342     		negs	r3, r0
 2843 0058 3A70     		strb	r2, [r7]
 2844 005a 81F8A8A0 		strb	r10, [r1, #168]
 2845 005e 09E0     		b	.L511
 2846              	.L509:
 2847 0060 0123     		movs	r3, #1
 2848 0062 0020     		movs	r0, #0
 2849 0064 1370     		strb	r3, [r2]
 2850 0066 7047     		bx	lr
ARM GAS  /tmp/ccCOaEG9.s 			page 51


 2851              	.L512:
 2852 0068 0023     		movs	r3, #0
 2853 006a 1846     		mov	r0, r3
 2854 006c 2919     		adds	r1, r5, r4
 2855 006e 91F8A820 		ldrb	r2, [r1, #168]	@ zero_extendqisi2
 2856 0072 3A70     		strb	r2, [r7]
 2857              	.L511:
 2858 0074 C8F89030 		str	r3, [r8, #144]
 2859 0078 BBF1000F 		cmp	fp, #0
 2860 007c 05D1     		bne	.L514
 2861 007e 0123     		movs	r3, #1
 2862 0080 89F80030 		strb	r3, [r9]
 2863              		.syntax unified
 2864              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2865 0084 BFF35F8F 		dmb
 2866              	@ 0 "" 2
 2867              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2868 0088 62B6     		cpsie i
 2869              	@ 0 "" 2
 2870              		.thumb
 2871              		.syntax unified
 2872              	.L514:
 2873 008a 3044     		add	r0, r0, r6
 2874 008c 03B0     		add	sp, sp, #12
 2875              		@ sp needed
 2876 008e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2877              	.L513:
 2878 0092 0123     		movs	r3, #1
 2879 0094 3B70     		strb	r3, [r7]
 2880 0096 4342     		negs	r3, r0
 2881 0098 ECE7     		b	.L511
 2882              	.L524:
 2883 009a 00BF     		.align	2
 2884              	.L523:
 2885 009c 00000000 		.word	reprap
 2886 00a0 00000000 		.word	g_interrupt_enabled
 2887              		.size	_ZN4Move23GetAccumulatedExtrusionEjRb, .-_ZN4Move23GetAccumulatedExtrusionEjRb
 2888              		.section	.text._ZN4Move18SetXYBedProbePointEjff,"ax",%progbits
 2889              		.align	1
 2890              		.p2align 2,,3
 2891              		.global	_ZN4Move18SetXYBedProbePointEjff
 2892              		.syntax unified
 2893              		.thumb
 2894              		.thumb_func
 2895              		.fpu softvfp
 2896              		.type	_ZN4Move18SetXYBedProbePointEjff, %function
 2897              	_ZN4Move18SetXYBedProbePointEjff:
 2898              		@ args = 0, pretend = 0, frame = 0
 2899              		@ frame_needed = 0, uses_anonymous_args = 0
 2900              		@ link register save eliminated.
 2901 0000 1F29     		cmp	r1, #31
 2902 0002 03D8     		bhi	.L527
 2903 0004 00F53C70 		add	r0, r0, #752
 2904 0008 FFF7FEBF 		b	_ZN19RandomProbePointSet18SetXYBedProbePointEjff
 2905              	.L527:
 2906 000c 034B     		ldr	r3, .L528
 2907 000e 044A     		ldr	r2, .L528+4
ARM GAS  /tmp/ccCOaEG9.s 			page 52


 2908 0010 1868     		ldr	r0, [r3]
 2909 0012 40F2B511 		movw	r1, #437
 2910 0016 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 2911              	.L529:
 2912 001a 00BF     		.align	2
 2913              	.L528:
 2914 001c 00000000 		.word	reprap
 2915 0020 00000000 		.word	.LC15
 2916              		.size	_ZN4Move18SetXYBedProbePointEjff, .-_ZN4Move18SetXYBedProbePointEjff
 2917              		.section	.text._ZN4Move17SetZBedProbePointEjfbb,"ax",%progbits
 2918              		.align	1
 2919              		.p2align 2,,3
 2920              		.global	_ZN4Move17SetZBedProbePointEjfbb
 2921              		.syntax unified
 2922              		.thumb
 2923              		.thumb_func
 2924              		.fpu softvfp
 2925              		.type	_ZN4Move17SetZBedProbePointEjfbb, %function
 2926              	_ZN4Move17SetZBedProbePointEjfbb:
 2927              		@ args = 4, pretend = 0, frame = 0
 2928              		@ frame_needed = 0, uses_anonymous_args = 0
 2929              		@ link register save eliminated.
 2930 0000 10B4     		push	{r4}
 2931 0002 1F29     		cmp	r1, #31
 2932 0004 9DF80440 		ldrb	r4, [sp, #4]	@ zero_extendqisi2
 2933 0008 05D8     		bhi	.L533
 2934 000a 0194     		str	r4, [sp, #4]
 2935 000c 00F53C70 		add	r0, r0, #752
 2936 0010 10BC     		pop	{r4}
 2937 0012 FFF7FEBF 		b	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb
 2938              	.L533:
 2939 0016 044B     		ldr	r3, .L534
 2940 0018 044A     		ldr	r2, .L534+4
 2941 001a 1868     		ldr	r0, [r3]
 2942 001c 40F2B511 		movw	r1, #437
 2943 0020 10BC     		pop	{r4}
 2944 0022 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 2945              	.L535:
 2946 0026 00BF     		.align	2
 2947              	.L534:
 2948 0028 00000000 		.word	reprap
 2949 002c 00000000 		.word	.LC16
 2950              		.size	_ZN4Move17SetZBedProbePointEjfbb, .-_ZN4Move17SetZBedProbePointEjfbb
 2951              		.section	.text._ZNK4Move19GetProbeCoordinatesEiRfS0_b,"ax",%progbits
 2952              		.align	1
 2953              		.p2align 2,,3
 2954              		.global	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 2955              		.syntax unified
 2956              		.thumb
 2957              		.thumb_func
 2958              		.fpu softvfp
 2959              		.type	_ZNK4Move19GetProbeCoordinatesEiRfS0_b, %function
 2960              	_ZNK4Move19GetProbeCoordinatesEiRfS0_b:
 2961              		@ args = 4, pretend = 0, frame = 0
 2962              		@ frame_needed = 0, uses_anonymous_args = 0
 2963 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2964 0002 00EB8104 		add	r4, r0, r1, lsl #2
ARM GAS  /tmp/ccCOaEG9.s 			page 53


 2965 0006 D4F8F402 		ldr	r0, [r4, #756]	@ float
 2966 000a 9DF81810 		ldrb	r1, [sp, #24]	@ zero_extendqisi2
 2967 000e 1060     		str	r0, [r2]	@ float
 2968 0010 D4F87403 		ldr	r0, [r4, #884]	@ float
 2969 0014 1860     		str	r0, [r3]	@ float
 2970 0016 91B1     		cbz	r1, .L537
 2971 0018 1D46     		mov	r5, r3
 2972 001a 0A4B     		ldr	r3, .L542
 2973 001c 1646     		mov	r6, r2
 2974 001e 1868     		ldr	r0, [r3]
 2975 0020 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 2976 0024 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 2977 0028 0746     		mov	r7, r0
 2978 002a 3068     		ldr	r0, [r6]	@ float
 2979 002c 7968     		ldr	r1, [r7, #4]	@ float
 2980 002e FFF7FEFF 		bl	__aeabi_fsub
 2981 0032 3060     		str	r0, [r6]	@ float
 2982 0034 B968     		ldr	r1, [r7, #8]	@ float
 2983 0036 2868     		ldr	r0, [r5]	@ float
 2984 0038 FFF7FEFF 		bl	__aeabi_fsub
 2985 003c 2860     		str	r0, [r5]	@ float
 2986              	.L537:
 2987 003e D4F8F403 		ldr	r0, [r4, #1012]	@ float
 2988 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2989              	.L543:
 2990              		.align	2
 2991              	.L542:
 2992 0044 00000000 		.word	reprap
 2993              		.size	_ZNK4Move19GetProbeCoordinatesEiRfS0_b, .-_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 2994              		.section	.text._ZN4Move8SimulateEh,"ax",%progbits
 2995              		.align	1
 2996              		.p2align 2,,3
 2997              		.global	_ZN4Move8SimulateEh
 2998              		.syntax unified
 2999              		.thumb
 3000              		.thumb_func
 3001              		.fpu softvfp
 3002              		.type	_ZN4Move8SimulateEh, %function
 3003              	_ZN4Move8SimulateEh:
 3004              		@ args = 0, pretend = 0, frame = 0
 3005              		@ frame_needed = 0, uses_anonymous_args = 0
 3006              		@ link register save eliminated.
 3007 0000 4174     		strb	r1, [r0, #17]
 3008 0002 09B1     		cbz	r1, .L544
 3009 0004 0023     		movs	r3, #0
 3010 0006 8362     		str	r3, [r0, #40]	@ float
 3011              	.L544:
 3012 0008 7047     		bx	lr
 3013              		.size	_ZN4Move8SimulateEh, .-_ZN4Move8SimulateEh
 3014 000a 00BF     		.section	.text._ZN4Move16AdjustLeadscrewsEPKf,"ax",%progbits
 3015              		.align	1
 3016              		.p2align 2,,3
 3017              		.global	_ZN4Move16AdjustLeadscrewsEPKf
 3018              		.syntax unified
 3019              		.thumb
 3020              		.thumb_func
 3021              		.fpu softvfp
ARM GAS  /tmp/ccCOaEG9.s 			page 54


 3022              		.type	_ZN4Move16AdjustLeadscrewsEPKf, %function
 3023              	_ZN4Move16AdjustLeadscrewsEPKf:
 3024              		@ args = 0, pretend = 0, frame = 0
 3025              		@ frame_needed = 0, uses_anonymous_args = 0
 3026              		@ link register save eliminated.
 3027 0000 30B4     		push	{r4, r5}
 3028 0002 0024     		movs	r4, #0
 3029 0004 00F5A662 		add	r2, r0, #1328
 3030 0008 00F20C53 		addw	r3, r0, #1292
 3031              	.L550:
 3032 000c 43F8044B 		str	r4, [r3], #4	@ float
 3033 0010 9A42     		cmp	r2, r3
 3034 0012 FBD1     		bne	.L550
 3035 0014 0B4B     		ldr	r3, .L558
 3036 0016 1A68     		ldr	r2, [r3]
 3037 0018 D2F82452 		ldr	r5, [r2, #548]
 3038 001c 6DB1     		cbz	r5, .L552
 3039 001e 02F50A72 		add	r2, r2, #552
 3040 0022 01EB8505 		add	r5, r1, r5, lsl #2
 3041              	.L553:
 3042 0026 12F8013B 		ldrb	r3, [r2], #1	@ zero_extendqisi2
 3043 002a 51F8044B 		ldr	r4, [r1], #4	@ float
 3044 002e 00EB8303 		add	r3, r0, r3, lsl #2
 3045 0032 A942     		cmp	r1, r5
 3046 0034 C3F80C45 		str	r4, [r3, #1292]	@ float
 3047 0038 F5D1     		bne	.L553
 3048              	.L552:
 3049 003a 30BC     		pop	{r4, r5}
 3050 003c 0123     		movs	r3, #1
 3051 003e 80F83035 		strb	r3, [r0, #1328]
 3052 0042 7047     		bx	lr
 3053              	.L559:
 3054              		.align	2
 3055              	.L558:
 3056 0044 00000000 		.word	reprap
 3057              		.size	_ZN4Move16AdjustLeadscrewsEPKf, .-_ZN4Move16AdjustLeadscrewsEPKf
 3058              		.section	.text._ZNK4Move11IdleTimeoutEv,"ax",%progbits
 3059              		.align	1
 3060              		.p2align 2,,3
 3061              		.global	_ZNK4Move11IdleTimeoutEv
 3062              		.syntax unified
 3063              		.thumb
 3064              		.thumb_func
 3065              		.fpu softvfp
 3066              		.type	_ZNK4Move11IdleTimeoutEv, %function
 3067              	_ZNK4Move11IdleTimeoutEv:
 3068              		@ args = 0, pretend = 0, frame = 0
 3069              		@ frame_needed = 0, uses_anonymous_args = 0
 3070 0000 08B5     		push	{r3, lr}
 3071 0002 D0F8F404 		ldr	r0, [r0, #1268]
 3072 0006 FFF7FEFF 		bl	__aeabi_ui2f
 3073 000a 0249     		ldr	r1, .L562
 3074 000c FFF7FEFF 		bl	__aeabi_fmul
 3075 0010 08BD     		pop	{r3, pc}
 3076              	.L563:
 3077 0012 00BF     		.align	2
 3078              	.L562:
ARM GAS  /tmp/ccCOaEG9.s 			page 55


 3079 0014 6F12833A 		.word	981668463
 3080              		.size	_ZNK4Move11IdleTimeoutEv, .-_ZNK4Move11IdleTimeoutEv
 3081              		.section	.text._ZN4Move14SetIdleTimeoutEf,"ax",%progbits
 3082              		.align	1
 3083              		.p2align 2,,3
 3084              		.global	_ZN4Move14SetIdleTimeoutEf
 3085              		.syntax unified
 3086              		.thumb
 3087              		.thumb_func
 3088              		.fpu softvfp
 3089              		.type	_ZN4Move14SetIdleTimeoutEf, %function
 3090              	_ZN4Move14SetIdleTimeoutEf:
 3091              		@ args = 0, pretend = 0, frame = 0
 3092              		@ frame_needed = 0, uses_anonymous_args = 0
 3093 0000 0B46     		mov	r3, r1
 3094 0002 10B5     		push	{r4, lr}
 3095 0004 0449     		ldr	r1, .L566
 3096 0006 0446     		mov	r4, r0
 3097 0008 1846     		mov	r0, r3
 3098 000a FFF7FEFF 		bl	__aeabi_fmul
 3099 000e FFF7FEFF 		bl	lrintf
 3100 0012 C4F8F404 		str	r0, [r4, #1268]
 3101 0016 10BD     		pop	{r4, pc}
 3102              	.L567:
 3103              		.align	2
 3104              	.L566:
 3105 0018 00007A44 		.word	1148846080
 3106              		.size	_ZN4Move14SetIdleTimeoutEf, .-_ZN4Move14SetIdleTimeoutEf
 3107              		.section	.text._ZNK4Move19WriteResumeSettingsEP9FileStore,"ax",%progbits
 3108              		.align	1
 3109              		.p2align 2,,3
 3110              		.global	_ZNK4Move19WriteResumeSettingsEP9FileStore
 3111              		.syntax unified
 3112              		.thumb
 3113              		.thumb_func
 3114              		.fpu softvfp
 3115              		.type	_ZNK4Move19WriteResumeSettingsEP9FileStore, %function
 3116              	_ZNK4Move19WriteResumeSettingsEP9FileStore:
 3117              		@ args = 0, pretend = 0, frame = 0
 3118              		@ frame_needed = 0, uses_anonymous_args = 0
 3119 0000 38B5     		push	{r3, r4, r5, lr}
 3120 0002 0446     		mov	r4, r0
 3121 0004 D0F8FC04 		ldr	r0, [r0, #1276]
 3122 0008 0A4A     		ldr	r2, .L574
 3123 000a 0368     		ldr	r3, [r0]
 3124 000c 0D46     		mov	r5, r1
 3125 000e 9B6D     		ldr	r3, [r3, #88]
 3126 0010 9342     		cmp	r3, r2
 3127 0012 0AD1     		bne	.L569
 3128              	.L572:
 3129 0014 94F8F034 		ldrb	r3, [r4, #1264]	@ zero_extendqisi2
 3130 0018 0BB9     		cbnz	r3, .L570
 3131 001a 0120     		movs	r0, #1
 3132 001c 38BD     		pop	{r3, r4, r5, pc}
 3133              	.L570:
 3134 001e 2846     		mov	r0, r5
 3135 0020 BDE83840 		pop	{r3, r4, r5, lr}
ARM GAS  /tmp/ccCOaEG9.s 			page 56


 3136 0024 0449     		ldr	r1, .L574+4
 3137 0026 FFF7FEBF 		b	_ZN9FileStore5WriteEPKc
 3138              	.L569:
 3139 002a 9847     		blx	r3
 3140 002c 0028     		cmp	r0, #0
 3141 002e F1D1     		bne	.L572
 3142 0030 38BD     		pop	{r3, r4, r5, pc}
 3143              	.L575:
 3144 0032 00BF     		.align	2
 3145              	.L574:
 3146 0034 00000000 		.word	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
 3147 0038 00000000 		.word	.LC17
 3148              		.size	_ZNK4Move19WriteResumeSettingsEP9FileStore, .-_ZNK4Move19WriteResumeSettingsEP9FileStore
 3149              		.section	.text._ZNK4Move15PrintCurrentDdaEv,"ax",%progbits
 3150              		.align	1
 3151              		.p2align 2,,3
 3152              		.global	_ZNK4Move15PrintCurrentDdaEv
 3153              		.syntax unified
 3154              		.thumb
 3155              		.thumb_func
 3156              		.fpu softvfp
 3157              		.type	_ZNK4Move15PrintCurrentDdaEv, %function
 3158              	_ZNK4Move15PrintCurrentDdaEv:
 3159              		@ args = 0, pretend = 0, frame = 0
 3160              		@ frame_needed = 0, uses_anonymous_args = 0
 3161              		@ link register save eliminated.
 3162 0000 0368     		ldr	r3, [r0]
 3163 0002 13B1     		cbz	r3, .L576
 3164 0004 0068     		ldr	r0, [r0]
 3165 0006 FFF7FEBF 		b	_ZNK3DDA13DebugPrintAllEv
 3166              	.L576:
 3167 000a 7047     		bx	lr
 3168              		.size	_ZNK4Move15PrintCurrentDdaEv, .-_ZNK4Move15PrintCurrentDdaEv
 3169              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3170              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3171              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3172              	_ZL28cpu_irq_prev_interrupt_state:
 3173 0000 00       		.space	1
 3174              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3175              		.align	2
 3176              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3177              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3178              	_ZL32cpu_irq_critical_section_counter:
 3179 0000 00000000 		.space	4
 3180              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 3181              		.align	2
 3182              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 3183              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 3184              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 3185 0000 00000000 		.space	4
 3186              		.section	.rodata._ZN4Move11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 3187              		.align	2
 3188              	.LC0:
 3189 0000 3D3D3D20 		.ascii	"=== Move ===\012\000"
 3189      4D6F7665 
 3189      203D3D3D 
 3189      0A00
ARM GAS  /tmp/ccCOaEG9.s 			page 57


 3190 000e 0000     		.space	2
 3191              	.LC1:
 3192 0010 48696363 		.ascii	"Hiccups: %lu, StepErrors: %u, LaErrors: %u, FreeDm:"
 3192      7570733A 
 3192      20256C75 
 3192      2C205374 
 3192      65704572 
 3193 0043 2025642C 		.ascii	" %d, MinFreeDm %d, MaxWait: %lums, Underruns: %u, %"
 3193      204D696E 
 3193      46726565 
 3193      446D2025 
 3193      642C204D 
 3194 0076 750A00   		.ascii	"u\012\000"
 3195 0079 000000   		.space	3
 3196              	.LC2:
 3197 007c 53636865 		.ascii	"Scheduled moves: %lu, completed moves: %lu\012\000"
 3197      64756C65 
 3197      64206D6F 
 3197      7665733A 
 3197      20256C75 
 3198              	.LC3:
 3199 00a8 42656420 		.ascii	"Bed compensation in use: \000"
 3199      636F6D70 
 3199      656E7361 
 3199      74696F6E 
 3199      20696E20 
 3200 00c2 0000     		.space	2
 3201              	.LC4:
 3202 00c4 6D657368 		.ascii	"mesh\012\000"
 3202      0A00
 3203 00ca 0000     		.space	2
 3204              	.LC5:
 3205 00cc 25642070 		.ascii	"%d point\012\000"
 3205      6F696E74 
 3205      0A00
 3206 00d6 0000     		.space	2
 3207              	.LC6:
 3208 00d8 6E6F6E65 		.ascii	"none\012\000"
 3208      0A00
 3209 00de 0000     		.space	2
 3210              	.LC7:
 3211 00e0 42656420 		.ascii	"Bed probe heights:\000"
 3211      70726F62 
 3211      65206865 
 3211      69676874 
 3211      733A00
 3212 00f3 00       		.space	1
 3213              	.LC8:
 3214 00f4 20252E33 		.ascii	" %.3f\000"
 3214      6600
 3215 00fa 0000     		.space	2
 3216              	.LC9:
 3217 00fc 0A00     		.ascii	"\012\000"
 3218              		.section	.rodata._ZN4Move12SetPositionsEPKf.str1.4,"aMS",%progbits,1
 3219              		.align	2
 3220              	.LC10:
 3221 0000 53657450 		.ascii	"SetPositions called when DDA ring not empty\012\000"
ARM GAS  /tmp/ccCOaEG9.s 			page 58


 3221      6F736974 
 3221      696F6E73 
 3221      2063616C 
 3221      6C656420 
 3222              		.section	.rodata._ZN4Move17SetZBedProbePointEjfbb.str1.4,"aMS",%progbits,1
 3223              		.align	2
 3224              	.LC16:
 3225 0000 5A207072 		.ascii	"Z probe point Z index out of range.\012\000"
 3225      6F626520 
 3225      706F696E 
 3225      74205A20 
 3225      696E6465 
 3226              		.section	.rodata._ZN4Move18FinishedBedProbingEiRK9StringRef.str1.4,"aMS",%progbits,1
 3227              		.align	2
 3228              	.LC13:
 3229 0000 42656420 		.ascii	"Bed calibration : %d factor calibration requested b"
 3229      63616C69 
 3229      62726174 
 3229      696F6E20 
 3229      3A202564 
 3230 0033 7574206F 		.ascii	"ut only %d points provided\012\000"
 3230      6E6C7920 
 3230      25642070 
 3230      6F696E74 
 3230      73207072 
 3231 004f 00       		.space	1
 3232              	.LC14:
 3233 0050 436F6D70 		.ascii	"Compensation or calibration cancelled due to probin"
 3233      656E7361 
 3233      74696F6E 
 3233      206F7220 
 3233      63616C69 
 3234 0083 67206572 		.ascii	"g errors\000"
 3234      726F7273 
 3234      00
 3235              		.section	.rodata._ZN4Move18SetXYBedProbePointEjff.str1.4,"aMS",%progbits,1
 3236              		.align	2
 3237              	.LC15:
 3238 0000 5A207072 		.ascii	"Z probe point index out of range.\012\000"
 3238      6F626520 
 3238      706F696E 
 3238      7420696E 
 3238      64657820 
 3239              		.section	.rodata._ZNK4Move19WriteResumeSettingsEP9FileStore.str1.4,"aMS",%progbits,1
 3240              		.align	2
 3241              	.LC17:
 3242 0000 47323920 		.ascii	"G29 S1\012\000"
 3242      53310A00 
 3243              		.section	.rodata._ZNK4Move21CartesianToMotorStepsEPKfPlb.str1.4,"aMS",%progbits,1
 3244              		.align	2
 3245              	.LC11:
 3246 0000 5472616E 		.ascii	"Transformed %.2f %.2f %.2f to %lu %lu %lu\012\000"
 3246      73666F72 
 3246      6D656420 
 3246      252E3266 
 3246      20252E32 
 3247 002b 00       		.space	1
ARM GAS  /tmp/ccCOaEG9.s 			page 59


 3248              	.LC12:
 3249 002c 556E6162 		.ascii	"Unable to transform %.2f %.2f %.2f\012\000"
 3249      6C652074 
 3249      6F207472 
 3249      616E7366 
 3249      6F726D20 
 3250              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
