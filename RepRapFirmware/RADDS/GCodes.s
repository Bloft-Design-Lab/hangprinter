ARM GAS  /tmp/ccx5mP1m.s 			page 1


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
  11              		.file	"GCodes.cpp"
  12              		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  21              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0120     		movs	r0, #1
  26 0002 7047     		bx	lr
  27              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  28              		.section	.text._ZNK10Kinematics15MustBeHomedAxesEmb,"axG",%progbits,_ZNK10Kinematics15MustBeHomedA
  29              		.align	1
  30              		.p2align 2,,3
  31              		.weak	_ZNK10Kinematics15MustBeHomedAxesEmb
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	_ZNK10Kinematics15MustBeHomedAxesEmb, %function
  37              	_ZNK10Kinematics15MustBeHomedAxesEmb:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 002A     		cmp	r2, #0
  42 0002 14BF     		ite	ne
  43 0004 0846     		movne	r0, r1
  44 0006 0020     		moveq	r0, #0
  45 0008 7047     		bx	lr
  46              		.size	_ZNK10Kinematics15MustBeHomedAxesEmb, .-_ZNK10Kinematics15MustBeHomedAxesEmb
  47 000a 00BF     		.section	.text._ZN6GCodes4PushER11GCodeBuffer.part.55,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu softvfp
  54              		.type	_ZN6GCodes4PushER11GCodeBuffer.part.55, %function
  55              	_ZN6GCodes4PushER11GCodeBuffer.part.55:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccx5mP1m.s 			page 2


  58              		@ link register save eliminated.
  59 0000 0068     		ldr	r0, [r0]
  60 0002 024A     		ldr	r2, .L6
  61 0004 40F2B511 		movw	r1, #437
  62 0008 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
  63              	.L7:
  64              		.align	2
  65              	.L6:
  66 000c 00000000 		.word	.LC0
  67              		.size	_ZN6GCodes4PushER11GCodeBuffer.part.55, .-_ZN6GCodes4PushER11GCodeBuffer.part.55
  68              		.global	__aeabi_f2d
  69              		.section	.text._ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu softvfp
  76              		.type	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61, %function
  77              	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  81 0004 85B0     		sub	sp, sp, #20
  82 0006 0E46     		mov	r6, r1
  83 0008 1446     		mov	r4, r2
  84 000a 8146     		mov	r9, r0
  85 000c FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
  86 0010 0028     		cmp	r0, #0
  87 0012 36D1     		bne	.L21
  88              	.L9:
  89 0014 84B3     		cbz	r4, .L10
  90 0016 726E     		ldr	r2, [r6, #100]
  91 0018 1C49     		ldr	r1, .L22
  92 001a 4846     		mov	r0, r9
  93 001c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
  94              	.L11:
  95 0020 336E     		ldr	r3, [r6, #96]
  96 0022 33B3     		cbz	r3, .L8
  97 0024 4FF03A08 		mov	r8, #58
  98 0028 0024     		movs	r4, #0
  99 002a 194B     		ldr	r3, .L22+4
 100 002c DFF868A0 		ldr	r10, .L22+12
 101 0030 DF68     		ldr	r7, [r3, #12]	@ unaligned
 102              	.L13:
 103 0032 3319     		adds	r3, r6, r4
 104 0034 93F97E50 		ldrsb	r5, [r3, #126]
 105 0038 3846     		mov	r0, r7
 106 003a 2946     		mov	r1, r5
 107 003c FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 108 0040 2946     		mov	r1, r5
 109 0042 8346     		mov	fp, r0
 110 0044 3846     		mov	r0, r7
 111 0046 FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 112 004a FFF7FEFF 		bl	__aeabi_f2d
 113 004e CDE90201 		strd	r0, [sp, #8]
 114 0052 5846     		mov	r0, fp
ARM GAS  /tmp/ccx5mP1m.s 			page 3


 115 0054 FFF7FEFF 		bl	__aeabi_f2d
 116 0058 4246     		mov	r2, r8
 117 005a CDE90001 		strd	r0, [sp]
 118 005e 5146     		mov	r1, r10
 119 0060 4846     		mov	r0, r9
 120 0062 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 121 0066 336E     		ldr	r3, [r6, #96]
 122 0068 0134     		adds	r4, r4, #1
 123 006a A342     		cmp	r3, r4
 124 006c 4FF02008 		mov	r8, #32
 125 0070 DFD8     		bhi	.L13
 126              	.L8:
 127 0072 05B0     		add	sp, sp, #20
 128              		@ sp needed
 129 0074 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 130              	.L10:
 131 0078 0649     		ldr	r1, .L22+8
 132 007a 4846     		mov	r0, r9
 133 007c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 134 0080 CEE7     		b	.L11
 135              	.L21:
 136 0082 2021     		movs	r1, #32
 137 0084 4846     		mov	r0, r9
 138 0086 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 139 008a C3E7     		b	.L9
 140              	.L23:
 141              		.align	2
 142              	.L22:
 143 008c 00000000 		.word	.LC1
 144 0090 00000000 		.word	reprap
 145 0094 04000000 		.word	.LC2
 146 0098 08000000 		.word	.LC3
 147              		.size	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61, .-_ZNK6GCodes22ReportToolT
 148              		.section	.text._ZN6GCodes7RawMove11SetDefaultsEv,"ax",%progbits
 149              		.align	1
 150              		.p2align 2,,3
 151              		.global	_ZN6GCodes7RawMove11SetDefaultsEv
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu softvfp
 156              		.type	_ZN6GCodes7RawMove11SetDefaultsEv, %function
 157              	_ZN6GCodes7RawMove11SetDefaultsEv:
 158              		@ args = 0, pretend = 0, frame = 0
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160              		@ link register save eliminated.
 161 0000 0022     		movs	r2, #0
 162 0002 30B4     		push	{r4, r5}
 163 0004 0221     		movs	r1, #2
 164 0006 4FF0FF35 		mov	r5, #-1
 165 000a 0124     		movs	r4, #1
 166 000c 90F85930 		ldrb	r3, [r0, #89]	@ zero_extendqisi2
 167 0010 4564     		str	r5, [r0, #68]
 168 0012 03F0CF03 		and	r3, r3, #207
 169 0016 62F34103 		bfi	r3, r2, #1, #1
 170 001a C464     		str	r4, [r0, #76]
 171 001c 80F85820 		strb	r2, [r0, #88]
ARM GAS  /tmp/ccx5mP1m.s 			page 4


 172 0020 80F85930 		strb	r3, [r0, #89]
 173 0024 4265     		str	r2, [r0, #84]
 174 0026 0165     		str	r1, [r0, #80]
 175 0028 30BC     		pop	{r4, r5}
 176 002a 7047     		bx	lr
 177              		.size	_ZN6GCodes7RawMove11SetDefaultsEv, .-_ZN6GCodes7RawMove11SetDefaultsEv
 178              		.section	.text._ZN6GCodesC2ER8Platform,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	_ZN6GCodesC2ER8Platform
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu softvfp
 186              		.type	_ZN6GCodesC2ER8Platform, %function
 187              	_ZN6GCodesC2ER8Platform:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 191 0002 0346     		mov	r3, r0
 192 0004 0446     		mov	r4, r0
 193 0006 0025     		movs	r5, #0
 194 0008 43F8181B 		str	r1, [r3], #24
 195 000c 00F11C0E 		add	lr, r0, #28
 196 0010 04F12C01 		add	r1, r4, #44
 197 0014 04F13002 		add	r2, r4, #48
 198 0018 00F12007 		add	r7, r0, #32
 199 001c 00F12406 		add	r6, r0, #36
 200 0020 A363     		str	r3, [r4, #56]
 201 0022 2830     		adds	r0, r0, #40
 202 0024 04F13403 		add	r3, r4, #52
 203 0028 C4F83CE0 		str	lr, [r4, #60]
 204 002c E164     		str	r1, [r4, #76]
 205 002e 2265     		str	r2, [r4, #80]
 206 0030 6365     		str	r3, [r4, #84]
 207 0032 2764     		str	r7, [r4, #64]
 208 0034 6664     		str	r6, [r4, #68]
 209 0036 A064     		str	r0, [r4, #72]
 210 0038 84F87C50 		strb	r5, [r4, #124]
 211 003c 84F87D50 		strb	r5, [r4, #125]
 212 0040 04F5A070 		add	r0, r4, #320
 213 0044 FFF7FEFF 		bl	_ZN12RestorePointC1Ev
 214 0048 04F5CC77 		add	r7, r4, #408
 215 004c 04F5B670 		add	r0, r4, #364
 216 0050 FFF7FEFF 		bl	_ZN12RestorePointC1Ev
 217 0054 04F5E276 		add	r6, r4, #452
 218 0058 3846     		mov	r0, r7
 219 005a FFF7FEFF 		bl	_ZN12RestorePointC1Ev
 220 005e 3046     		mov	r0, r6
 221 0060 FFF7FEFF 		bl	_ZN12RestorePointC1Ev
 222 0064 C4F8F461 		str	r6, [r4, #500]
 223 0068 C4F85C52 		str	r5, [r4, #604]
 224 006c C4F8F071 		str	r7, [r4, #496]
 225 0070 04F53370 		add	r0, r4, #716
 226 0074 FFF7FEFF 		bl	_ZN14GridDefinitionC1Ev
 227 0078 84F8CD53 		strb	r5, [r4, #973]
 228 007c C4F8D453 		str	r5, [r4, #980]
ARM GAS  /tmp/ccx5mP1m.s 			page 5


 229 0080 C4F85454 		str	r5, [r4, #1108]
 230 0084 4FF48A70 		mov	r0, #276
 231 0088 FFF7FEFF 		bl	_Znwj
 232 008c 0646     		mov	r6, r0
 233 008e FFF7FEFF 		bl	_ZN17NetworkGCodeInputC1Ev
 234 0092 6660     		str	r6, [r4, #4]
 235 0094 4FF48A70 		mov	r0, #276
 236 0098 FFF7FEFF 		bl	_Znwj
 237 009c 0646     		mov	r6, r0
 238 009e FFF7FEFF 		bl	_ZN17NetworkGCodeInputC1Ev
 239 00a2 A660     		str	r6, [r4, #8]
 240 00a4 4FF48A70 		mov	r0, #276
 241 00a8 FFF7FEFF 		bl	_Znwj
 242 00ac 0646     		mov	r6, r0
 243 00ae FFF7FEFF 		bl	_ZN17RegularGCodeInputC2Ev
 244 00b2 3C4B     		ldr	r3, .L28
 245 00b4 E660     		str	r6, [r4, #12]
 246 00b6 C6F81051 		str	r5, [r6, #272]
 247 00ba 3360     		str	r3, [r6]
 248 00bc 0820     		movs	r0, #8
 249 00be FFF7FEFF 		bl	_Znwj
 250 00c2 0346     		mov	r3, r0
 251 00c4 384A     		ldr	r2, .L28+4
 252 00c6 394E     		ldr	r6, .L28+8
 253 00c8 2061     		str	r0, [r4, #16]
 254 00ca 5A60     		str	r2, [r3, #4]
 255 00cc 1E60     		str	r6, [r3]
 256 00ce 0820     		movs	r0, #8
 257 00d0 FFF7FEFF 		bl	_Znwj
 258 00d4 0346     		mov	r3, r0
 259 00d6 364A     		ldr	r2, .L28+12
 260 00d8 6061     		str	r0, [r4, #20]
 261 00da 1E60     		str	r6, [r3]
 262 00dc 5A60     		str	r2, [r3, #4]
 263 00de B820     		movs	r0, #184
 264 00e0 FFF7FEFF 		bl	_Znwj
 265 00e4 0646     		mov	r6, r0
 266 00e6 2B46     		mov	r3, r5
 267 00e8 1022     		movs	r2, #16
 268 00ea 3249     		ldr	r1, .L28+16
 269 00ec FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 270 00f0 A36B     		ldr	r3, [r4, #56]
 271 00f2 B820     		movs	r0, #184
 272 00f4 1E60     		str	r6, [r3]
 273 00f6 FFF7FEFF 		bl	_Znwj
 274 00fa 0646     		mov	r6, r0
 275 00fc 2022     		movs	r2, #32
 276 00fe 2E49     		ldr	r1, .L28+20
 277 0100 0123     		movs	r3, #1
 278 0102 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 279 0106 E36B     		ldr	r3, [r4, #60]
 280 0108 B820     		movs	r0, #184
 281 010a 1E60     		str	r6, [r3]
 282 010c FFF7FEFF 		bl	_Znwj
 283 0110 0646     		mov	r6, r0
 284 0112 3522     		movs	r2, #53
 285 0114 2949     		ldr	r1, .L28+24
ARM GAS  /tmp/ccx5mP1m.s 			page 6


 286 0116 0123     		movs	r3, #1
 287 0118 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 288 011c 236C     		ldr	r3, [r4, #64]
 289 011e B820     		movs	r0, #184
 290 0120 1E60     		str	r6, [r3]
 291 0122 FFF7FEFF 		bl	_Znwj
 292 0126 0123     		movs	r3, #1
 293 0128 0646     		mov	r6, r0
 294 012a 1A46     		mov	r2, r3
 295 012c 2449     		ldr	r1, .L28+28
 296 012e FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 297 0132 636C     		ldr	r3, [r4, #68]
 298 0134 B820     		movs	r0, #184
 299 0136 1E60     		str	r6, [r3]
 300 0138 FFF7FEFF 		bl	_Znwj
 301 013c 0646     		mov	r6, r0
 302 013e 2B46     		mov	r3, r5
 303 0140 0422     		movs	r2, #4
 304 0142 2049     		ldr	r1, .L28+32
 305 0144 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 306 0148 A36C     		ldr	r3, [r4, #72]
 307 014a B820     		movs	r0, #184
 308 014c 1E60     		str	r6, [r3]
 309 014e FFF7FEFF 		bl	_Znwj
 310 0152 0646     		mov	r6, r0
 311 0154 2B46     		mov	r3, r5
 312 0156 3522     		movs	r2, #53
 313 0158 1B49     		ldr	r1, .L28+36
 314 015a FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 315 015e E36C     		ldr	r3, [r4, #76]
 316 0160 B820     		movs	r0, #184
 317 0162 1E60     		str	r6, [r3]
 318 0164 FFF7FEFF 		bl	_Znwj
 319 0168 0646     		mov	r6, r0
 320 016a 2B46     		mov	r3, r5
 321 016c 3522     		movs	r2, #53
 322 016e 1749     		ldr	r1, .L28+40
 323 0170 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 324 0174 236D     		ldr	r3, [r4, #80]
 325 0176 B820     		movs	r0, #184
 326 0178 1E60     		str	r6, [r3]
 327 017a FFF7FEFF 		bl	_Znwj
 328 017e 0646     		mov	r6, r0
 329 0180 3522     		movs	r2, #53
 330 0182 1349     		ldr	r1, .L28+44
 331 0184 2B46     		mov	r3, r5
 332 0186 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 333 018a 636D     		ldr	r3, [r4, #84]
 334 018c 0820     		movs	r0, #8
 335 018e 1E60     		str	r6, [r3]
 336 0190 FFF7FEFF 		bl	_Znwj
 337 0194 0546     		mov	r5, r0
 338 0196 FFF7FEFF 		bl	_ZN10GCodeQueueC1Ev
 339 019a C4F8D053 		str	r5, [r4, #976]
 340 019e 2046     		mov	r0, r4
 341 01a0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 342              	.L29:
ARM GAS  /tmp/ccx5mP1m.s 			page 7


 343 01a2 00BF     		.align	2
 344              	.L28:
 345 01a4 08000000 		.word	_ZTV14FileGCodeInput+8
 346 01a8 00000000 		.word	SerialUSB
 347 01ac 08000000 		.word	_ZTV16StreamGCodeInput+8
 348 01b0 00000000 		.word	Serial1
 349 01b4 00000000 		.word	.LC4
 350 01b8 08000000 		.word	.LC5
 351 01bc 10000000 		.word	.LC6
 352 01c0 18000000 		.word	.LC7
 353 01c4 20000000 		.word	.LC8
 354 01c8 24000000 		.word	.LC9
 355 01cc 2C000000 		.word	.LC10
 356 01d0 34000000 		.word	.LC11
 357              		.size	_ZN6GCodesC2ER8Platform, .-_ZN6GCodesC2ER8Platform
 358              		.global	_ZN6GCodesC1ER8Platform
 359              		.thumb_set _ZN6GCodesC1ER8Platform,_ZN6GCodesC2ER8Platform
 360              		.section	.text._ZN6GCodes4ExitEv,"ax",%progbits
 361              		.align	1
 362              		.p2align 2,,3
 363              		.global	_ZN6GCodes4ExitEv
 364              		.syntax unified
 365              		.thumb
 366              		.thumb_func
 367              		.fpu softvfp
 368              		.type	_ZN6GCodes4ExitEv, %function
 369              	_ZN6GCodes4ExitEv:
 370              		@ args = 0, pretend = 0, frame = 0
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372              		@ link register save eliminated.
 373 0000 0023     		movs	r3, #0
 374 0002 80F87D30 		strb	r3, [r0, #125]
 375 0006 7047     		bx	lr
 376              		.size	_ZN6GCodes4ExitEv, .-_ZN6GCodes4ExitEv
 377              		.section	.text._ZNK6GCodes14DoingFileMacroEv,"ax",%progbits
 378              		.align	1
 379              		.p2align 2,,3
 380              		.global	_ZNK6GCodes14DoingFileMacroEv
 381              		.syntax unified
 382              		.thumb
 383              		.thumb_func
 384              		.fpu softvfp
 385              		.type	_ZNK6GCodes14DoingFileMacroEv, %function
 386              	_ZNK6GCodes14DoingFileMacroEv:
 387              		@ args = 0, pretend = 0, frame = 0
 388              		@ frame_needed = 0, uses_anonymous_args = 0
 389 0000 38B5     		push	{r3, r4, r5, lr}
 390 0002 00F13805 		add	r5, r0, #56
 391 0006 00F11804 		add	r4, r0, #24
 392 000a 01E0     		b	.L33
 393              	.L36:
 394 000c A542     		cmp	r5, r4
 395 000e 05D0     		beq	.L32
 396              	.L33:
 397 0010 54F8040B 		ldr	r0, [r4], #4
 398 0014 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 399 0018 0028     		cmp	r0, #0
ARM GAS  /tmp/ccx5mP1m.s 			page 8


 400 001a F7D0     		beq	.L36
 401              	.L32:
 402 001c 38BD     		pop	{r3, r4, r5, pc}
 403              		.size	_ZNK6GCodes14DoingFileMacroEv, .-_ZNK6GCodes14DoingFileMacroEv
 404              		.global	__aeabi_ui2f
 405              		.global	__aeabi_fdiv
 406 001e 00BF     		.section	.text._ZNK6GCodes21FractionOfFilePrintedEv,"ax",%progbits
 407              		.align	1
 408              		.p2align 2,,3
 409              		.global	_ZNK6GCodes21FractionOfFilePrintedEv
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu softvfp
 414              		.type	_ZNK6GCodes21FractionOfFilePrintedEv, %function
 415              	_ZNK6GCodes21FractionOfFilePrintedEv:
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418 0000 036C     		ldr	r3, [r0, #64]
 419 0002 70B5     		push	{r4, r5, r6, lr}
 420 0004 0446     		mov	r4, r0
 421 0006 1868     		ldr	r0, [r3]
 422 0008 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 423 000c 0546     		mov	r5, r0
 424 000e 8068     		ldr	r0, [r0, #8]
 425 0010 D0B1     		cbz	r0, .L40
 426 0012 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 427 0016 0646     		mov	r6, r0
 428 0018 08B9     		cbnz	r0, .L44
 429 001a 0020     		movs	r0, #0
 430 001c 70BD     		pop	{r4, r5, r6, pc}
 431              	.L44:
 432 001e 236C     		ldr	r3, [r4, #64]
 433 0020 1868     		ldr	r0, [r3]
 434 0022 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 435 0026 88B1     		cbz	r0, .L45
 436 0028 0024     		movs	r4, #0
 437              	.L39:
 438 002a A868     		ldr	r0, [r5, #8]
 439 002c FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 440 0030 001B     		subs	r0, r0, r4
 441 0032 FFF7FEFF 		bl	__aeabi_ui2f
 442 0036 0446     		mov	r4, r0
 443 0038 3046     		mov	r0, r6
 444 003a FFF7FEFF 		bl	__aeabi_ui2f
 445 003e 0146     		mov	r1, r0
 446 0040 2046     		mov	r0, r4
 447 0042 FFF7FEFF 		bl	__aeabi_fdiv
 448 0046 70BD     		pop	{r4, r5, r6, pc}
 449              	.L40:
 450 0048 0348     		ldr	r0, .L46
 451 004a 70BD     		pop	{r4, r5, r6, pc}
 452              	.L45:
 453 004c E068     		ldr	r0, [r4, #12]
 454 004e 0368     		ldr	r3, [r0]
 455 0050 9B68     		ldr	r3, [r3, #8]
 456 0052 9847     		blx	r3
ARM GAS  /tmp/ccx5mP1m.s 			page 9


 457 0054 0446     		mov	r4, r0
 458 0056 E8E7     		b	.L39
 459              	.L47:
 460              		.align	2
 461              	.L46:
 462 0058 000080BF 		.word	-1082130432
 463              		.size	_ZNK6GCodes21FractionOfFilePrintedEv, .-_ZNK6GCodes21FractionOfFilePrintedEv
 464              		.section	.text._ZNK6GCodes15GetFilePositionEv,"ax",%progbits
 465              		.align	1
 466              		.p2align 2,,3
 467              		.global	_ZNK6GCodes15GetFilePositionEv
 468              		.syntax unified
 469              		.thumb
 470              		.thumb_func
 471              		.fpu softvfp
 472              		.type	_ZNK6GCodes15GetFilePositionEv, %function
 473              	_ZNK6GCodes15GetFilePositionEv:
 474              		@ args = 0, pretend = 0, frame = 0
 475              		@ frame_needed = 0, uses_anonymous_args = 0
 476 0000 38B5     		push	{r3, r4, r5, lr}
 477 0002 036C     		ldr	r3, [r0, #64]
 478 0004 0446     		mov	r4, r0
 479 0006 1868     		ldr	r0, [r3]
 480 0008 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 481 000c 0546     		mov	r5, r0
 482 000e 8068     		ldr	r0, [r0, #8]
 483 0010 48B1     		cbz	r0, .L48
 484 0012 236C     		ldr	r3, [r4, #64]
 485 0014 1868     		ldr	r0, [r3]
 486 0016 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 487 001a 28B1     		cbz	r0, .L54
 488 001c 0024     		movs	r4, #0
 489              	.L50:
 490 001e A868     		ldr	r0, [r5, #8]
 491 0020 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 492 0024 001B     		subs	r0, r0, r4
 493              	.L48:
 494 0026 38BD     		pop	{r3, r4, r5, pc}
 495              	.L54:
 496 0028 E068     		ldr	r0, [r4, #12]
 497 002a 0368     		ldr	r3, [r0]
 498 002c 9B68     		ldr	r3, [r3, #8]
 499 002e 9847     		blx	r3
 500 0030 0446     		mov	r4, r0
 501 0032 F4E7     		b	.L50
 502              		.size	_ZNK6GCodes15GetFilePositionEv, .-_ZNK6GCodes15GetFilePositionEv
 503              		.section	.text._ZNK6GCodes12IsDaemonBusyEv,"ax",%progbits
 504              		.align	1
 505              		.p2align 2,,3
 506              		.global	_ZNK6GCodes12IsDaemonBusyEv
 507              		.syntax unified
 508              		.thumb
 509              		.thumb_func
 510              		.fpu softvfp
 511              		.type	_ZNK6GCodes12IsDaemonBusyEv, %function
 512              	_ZNK6GCodes12IsDaemonBusyEv:
 513              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccx5mP1m.s 			page 10


 514              		@ frame_needed = 0, uses_anonymous_args = 0
 515              		@ link register save eliminated.
 516 0000 C36C     		ldr	r3, [r0, #76]
 517 0002 1B68     		ldr	r3, [r3]
 518 0004 9B68     		ldr	r3, [r3, #8]
 519 0006 9868     		ldr	r0, [r3, #8]
 520 0008 0030     		adds	r0, r0, #0
 521 000a 18BF     		it	ne
 522 000c 0120     		movne	r0, #1
 523 000e 7047     		bx	lr
 524              		.size	_ZNK6GCodes12IsDaemonBusyEv, .-_ZNK6GCodes12IsDaemonBusyEv
 525              		.section	.text._ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer,"ax",%progbits
 526              		.align	1
 527              		.p2align 2,,3
 528              		.global	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer
 529              		.syntax unified
 530              		.thumb
 531              		.thumb_func
 532              		.fpu softvfp
 533              		.type	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer, %function
 534              	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer:
 535              		@ args = 0, pretend = 0, frame = 0
 536              		@ frame_needed = 0, uses_anonymous_args = 0
 537              		@ link register save eliminated.
 538 0000 70B4     		push	{r4, r5, r6}
 539 0002 00F11805 		add	r5, r0, #24
 540 0006 3830     		adds	r0, r0, #56
 541              	.L57:
 542 0008 55F8043B 		ldr	r3, [r5], #4
 543 000c 8A68     		ldr	r2, [r1, #8]
 544 000e 9B68     		ldr	r3, [r3, #8]
 545 0010 167E     		ldrb	r6, [r2, #24]	@ zero_extendqisi2
 546 0012 1C7E     		ldrb	r4, [r3, #24]	@ zero_extendqisi2
 547 0014 8542     		cmp	r5, r0
 548 0016 66F30004 		bfi	r4, r6, #0, #1
 549 001a 1C76     		strb	r4, [r3, #24]
 550 001c 147E     		ldrb	r4, [r2, #24]	@ zero_extendqisi2
 551 001e 1E7E     		ldrb	r6, [r3, #24]	@ zero_extendqisi2
 552 0020 C4F34004 		ubfx	r4, r4, #1, #1
 553 0024 64F34106 		bfi	r6, r4, #1, #1
 554 0028 1E76     		strb	r6, [r3, #24]
 555 002a 5268     		ldr	r2, [r2, #4]	@ float
 556 002c 5A60     		str	r2, [r3, #4]	@ float
 557 002e EBD1     		bne	.L57
 558 0030 70BC     		pop	{r4, r5, r6}
 559 0032 7047     		bx	lr
 560              		.size	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer, .-_ZN6GCodes21CopyConfigFinalValuesER11GCo
 561              		.section	.text._ZN6GCodes14InitialiseTapsEv,"ax",%progbits
 562              		.align	1
 563              		.p2align 2,,3
 564              		.global	_ZN6GCodes14InitialiseTapsEv
 565              		.syntax unified
 566              		.thumb
 567              		.thumb_func
 568              		.fpu softvfp
 569              		.type	_ZN6GCodes14InitialiseTapsEv, %function
 570              	_ZN6GCodes14InitialiseTapsEv:
ARM GAS  /tmp/ccx5mP1m.s 			page 11


 571              		@ args = 0, pretend = 0, frame = 0
 572              		@ frame_needed = 0, uses_anonymous_args = 0
 573              		@ link register save eliminated.
 574 0000 0021     		movs	r1, #0
 575 0002 0022     		movs	r2, #0
 576 0004 034B     		ldr	r3, .L61
 577 0006 80F82B13 		strb	r1, [r0, #811]
 578 000a C0F81023 		str	r2, [r0, #784]	@ float
 579 000e C0F81433 		str	r3, [r0, #788]	@ float
 580 0012 7047     		bx	lr
 581              	.L62:
 582              		.align	2
 583              	.L61:
 584 0014 00007A44 		.word	1148846080
 585              		.size	_ZN6GCodes14InitialiseTapsEv, .-_ZN6GCodes14InitialiseTapsEv
 586              		.section	.text._ZN6GCodes13FilamentErrorEj20FilamentSensorStatus,"ax",%progbits
 587              		.align	1
 588              		.p2align 2,,3
 589              		.global	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu softvfp
 594              		.type	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus, %function
 595              	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus:
 596              		@ args = 0, pretend = 0, frame = 0
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598              		@ link register save eliminated.
 599 0000 90F83C34 		ldrb	r3, [r0, #1084]	@ zero_extendqisi2
 600 0004 1BB9     		cbnz	r3, .L63
 601 0006 C0F84014 		str	r1, [r0, #1088]
 602 000a 80F83C24 		strb	r2, [r0, #1084]
 603              	.L63:
 604 000e 7047     		bx	lr
 605              		.size	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus, .-_ZN6GCodes13FilamentErrorEj20FilamentSe
 606              		.section	.text._ZNK6GCodes9IsPausingEv,"ax",%progbits
 607              		.align	1
 608              		.p2align 2,,3
 609              		.global	_ZNK6GCodes9IsPausingEv
 610              		.syntax unified
 611              		.thumb
 612              		.thumb_func
 613              		.fpu softvfp
 614              		.type	_ZNK6GCodes9IsPausingEv, %function
 615              	_ZNK6GCodes9IsPausingEv:
 616              		@ args = 0, pretend = 0, frame = 0
 617              		@ frame_needed = 0, uses_anonymous_args = 0
 618 0000 036C     		ldr	r3, [r0, #64]
 619 0002 10B5     		push	{r4, lr}
 620 0004 0446     		mov	r4, r0
 621 0006 1868     		ldr	r0, [r3]
 622 0008 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 623 000c 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 624 000e 0F3B     		subs	r3, r3, #15
 625 0010 012B     		cmp	r3, #1
 626 0012 12D9     		bls	.L68
 627 0014 E36C     		ldr	r3, [r4, #76]
ARM GAS  /tmp/ccx5mP1m.s 			page 12


 628 0016 1868     		ldr	r0, [r3]
 629 0018 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 630 001c 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 631 001e 0F3B     		subs	r3, r3, #15
 632 0020 012B     		cmp	r3, #1
 633 0022 0AD9     		bls	.L68
 634 0024 636D     		ldr	r3, [r4, #84]
 635 0026 1868     		ldr	r0, [r3]
 636 0028 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 637 002c 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 638 002e 0F38     		subs	r0, r0, #15
 639 0030 0128     		cmp	r0, #1
 640 0032 8CBF     		ite	hi
 641 0034 0020     		movhi	r0, #0
 642 0036 0120     		movls	r0, #1
 643 0038 10BD     		pop	{r4, pc}
 644              	.L68:
 645 003a 0120     		movs	r0, #1
 646 003c 10BD     		pop	{r4, pc}
 647              		.size	_ZNK6GCodes9IsPausingEv, .-_ZNK6GCodes9IsPausingEv
 648 003e 00BF     		.section	.text._ZNK6GCodes8IsPausedEv,"ax",%progbits
 649              		.align	1
 650              		.p2align 2,,3
 651              		.global	_ZNK6GCodes8IsPausedEv
 652              		.syntax unified
 653              		.thumb
 654              		.thumb_func
 655              		.fpu softvfp
 656              		.type	_ZNK6GCodes8IsPausedEv, %function
 657              	_ZNK6GCodes8IsPausedEv:
 658              		@ args = 0, pretend = 0, frame = 0
 659              		@ frame_needed = 0, uses_anonymous_args = 0
 660 0000 90F87E20 		ldrb	r2, [r0, #126]	@ zero_extendqisi2
 661 0004 0AB9     		cbnz	r2, .L78
 662 0006 0020     		movs	r0, #0
 663 0008 7047     		bx	lr
 664              	.L78:
 665 000a 10B5     		push	{r4, lr}
 666 000c 0446     		mov	r4, r0
 667 000e FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 668 0012 08B1     		cbz	r0, .L79
 669 0014 0020     		movs	r0, #0
 670 0016 10BD     		pop	{r4, pc}
 671              	.L79:
 672 0018 236C     		ldr	r3, [r4, #64]
 673 001a 1868     		ldr	r0, [r3]
 674 001c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 675 0020 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 676 0022 1138     		subs	r0, r0, #17
 677 0024 0228     		cmp	r0, #2
 678 0026 94BF     		ite	ls
 679 0028 0020     		movls	r0, #0
 680 002a 0120     		movhi	r0, #1
 681 002c 10BD     		pop	{r4, pc}
 682              		.size	_ZNK6GCodes8IsPausedEv, .-_ZNK6GCodes8IsPausedEv
 683 002e 00BF     		.section	.text._ZNK6GCodes10IsResumingEv,"ax",%progbits
 684              		.align	1
ARM GAS  /tmp/ccx5mP1m.s 			page 13


 685              		.p2align 2,,3
 686              		.global	_ZNK6GCodes10IsResumingEv
 687              		.syntax unified
 688              		.thumb
 689              		.thumb_func
 690              		.fpu softvfp
 691              		.type	_ZNK6GCodes10IsResumingEv, %function
 692              	_ZNK6GCodes10IsResumingEv:
 693              		@ args = 0, pretend = 0, frame = 0
 694              		@ frame_needed = 0, uses_anonymous_args = 0
 695 0000 08B5     		push	{r3, lr}
 696 0002 036C     		ldr	r3, [r0, #64]
 697 0004 1868     		ldr	r0, [r3]
 698 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 699 000a 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 700 000c 1138     		subs	r0, r0, #17
 701 000e 0228     		cmp	r0, #2
 702 0010 8CBF     		ite	hi
 703 0012 0020     		movhi	r0, #0
 704 0014 0120     		movls	r0, #1
 705 0016 08BD     		pop	{r3, pc}
 706              		.size	_ZNK6GCodes10IsResumingEv, .-_ZNK6GCodes10IsResumingEv
 707              		.section	.text._ZNK6GCodes9IsRunningEv,"ax",%progbits
 708              		.align	1
 709              		.p2align 2,,3
 710              		.global	_ZNK6GCodes9IsRunningEv
 711              		.syntax unified
 712              		.thumb
 713              		.thumb_func
 714              		.fpu softvfp
 715              		.type	_ZNK6GCodes9IsRunningEv, %function
 716              	_ZNK6GCodes9IsRunningEv:
 717              		@ args = 0, pretend = 0, frame = 0
 718              		@ frame_needed = 0, uses_anonymous_args = 0
 719 0000 10B5     		push	{r4, lr}
 720 0002 0446     		mov	r4, r0
 721 0004 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 722 0008 08B1     		cbz	r0, .L83
 723              	.L85:
 724 000a 0020     		movs	r0, #0
 725 000c 10BD     		pop	{r4, pc}
 726              	.L83:
 727 000e 2046     		mov	r0, r4
 728 0010 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 729 0014 0028     		cmp	r0, #0
 730 0016 F8D1     		bne	.L85
 731 0018 236C     		ldr	r3, [r4, #64]
 732 001a 1868     		ldr	r0, [r3]
 733 001c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 734 0020 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 735 0022 1138     		subs	r0, r0, #17
 736 0024 0228     		cmp	r0, #2
 737 0026 94BF     		ite	ls
 738 0028 0020     		movls	r0, #0
 739 002a 0120     		movhi	r0, #1
 740 002c 10BD     		pop	{r4, pc}
 741              		.size	_ZNK6GCodes9IsRunningEv, .-_ZNK6GCodes9IsRunningEv
ARM GAS  /tmp/ccx5mP1m.s 			page 14


 742 002e 00BF     		.section	.text._ZNK6GCodes16IsReallyPrintingEv,"ax",%progbits
 743              		.align	1
 744              		.p2align 2,,3
 745              		.global	_ZNK6GCodes16IsReallyPrintingEv
 746              		.syntax unified
 747              		.thumb
 748              		.thumb_func
 749              		.fpu softvfp
 750              		.type	_ZNK6GCodes16IsReallyPrintingEv, %function
 751              	_ZNK6GCodes16IsReallyPrintingEv:
 752              		@ args = 0, pretend = 0, frame = 0
 753              		@ frame_needed = 0, uses_anonymous_args = 0
 754              		@ link register save eliminated.
 755 0000 034B     		ldr	r3, .L90
 756 0002 DB69     		ldr	r3, [r3, #28]
 757 0004 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 758 0006 0BB9     		cbnz	r3, .L89
 759 0008 1846     		mov	r0, r3
 760 000a 7047     		bx	lr
 761              	.L89:
 762 000c FFF7FEBF 		b	_ZNK6GCodes9IsRunningEv
 763              	.L91:
 764              		.align	2
 765              	.L90:
 766 0010 00000000 		.word	reprap
 767              		.size	_ZNK6GCodes16IsReallyPrintingEv, .-_ZNK6GCodes16IsReallyPrintingEv
 768              		.section	.text._ZNK6GCodes11IsHeatingUpEv,"ax",%progbits
 769              		.align	1
 770              		.p2align 2,,3
 771              		.global	_ZNK6GCodes11IsHeatingUpEv
 772              		.syntax unified
 773              		.thumb
 774              		.thumb_func
 775              		.fpu softvfp
 776              		.type	_ZNK6GCodes11IsHeatingUpEv, %function
 777              	_ZNK6GCodes11IsHeatingUpEv:
 778              		@ args = 0, pretend = 0, frame = 0
 779              		@ frame_needed = 0, uses_anonymous_args = 0
 780              		@ link register save eliminated.
 781 0000 036C     		ldr	r3, [r0, #64]
 782 0002 1B68     		ldr	r3, [r3]
 783 0004 93F82820 		ldrb	r2, [r3, #40]	@ zero_extendqisi2
 784 0008 092A     		cmp	r2, #9
 785 000a 01D0     		beq	.L99
 786              	.L95:
 787 000c 0020     		movs	r0, #0
 788 000e 7047     		bx	lr
 789              	.L99:
 790 0010 93F84C20 		ldrb	r2, [r3, #76]	@ zero_extendqisi2
 791 0014 4D2A     		cmp	r2, #77
 792 0016 F9D1     		bne	.L95
 793 0018 186C     		ldr	r0, [r3, #64]
 794 001a 6D28     		cmp	r0, #109
 795 001c 09D0     		beq	.L98
 796 001e 7428     		cmp	r0, #116
 797 0020 07D0     		beq	.L98
 798 0022 BE28     		cmp	r0, #190
ARM GAS  /tmp/ccx5mP1m.s 			page 15


 799 0024 05D0     		beq	.L98
 800 0026 A0F1BF00 		sub	r0, #191
 801 002a B0FA80F0 		clz	r0, r0
 802 002e 4009     		lsrs	r0, r0, #5
 803 0030 7047     		bx	lr
 804              	.L98:
 805 0032 0120     		movs	r0, #1
 806 0034 7047     		bx	lr
 807              		.size	_ZNK6GCodes11IsHeatingUpEv, .-_ZNK6GCodes11IsHeatingUpEv
 808              		.global	__aeabi_fadd
 809              		.global	__aeabi_fmul
 810 0036 00BF     		.section	.text._ZN6GCodes14SaveResumeInfoEb,"ax",%progbits
 811              		.align	1
 812              		.p2align 2,,3
 813              		.global	_ZN6GCodes14SaveResumeInfoEb
 814              		.syntax unified
 815              		.thumb
 816              		.thumb_func
 817              		.fpu softvfp
 818              		.type	_ZN6GCodes14SaveResumeInfoEb, %function
 819              	_ZN6GCodes14SaveResumeInfoEb:
 820              		@ args = 0, pretend = 0, frame = 216
 821              		@ frame_needed = 0, uses_anonymous_args = 0
 822 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 823 0004 B94E     		ldr	r6, .L165
 824 0006 BBB0     		sub	sp, sp, #236
 825 0008 F569     		ldr	r5, [r6, #28]
 826 000a 2A7B     		ldrb	r2, [r5, #12]	@ zero_extendqisi2
 827 000c 002A     		cmp	r2, #0
 828 000e 42D0     		beq	.L100
 829 0010 0268     		ldr	r2, [r0]
 830 0012 8846     		mov	r8, r1
 831 0014 0446     		mov	r4, r0
 832 0016 0123     		movs	r3, #1
 833 0018 D2F86805 		ldr	r0, [r2, #1384]
 834 001c B449     		ldr	r1, .L165+4
 835 001e B54A     		ldr	r2, .L165+8
 836 0020 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 837 0024 05F58479 		add	r9, r5, #264
 838 0028 0746     		mov	r7, r0
 839 002a 0028     		cmp	r0, #0
 840 002c 00F09281 		beq	.L162
 841 0030 0021     		movs	r1, #0
 842 0032 4FF0C90E 		mov	lr, #201
 843 0036 B04A     		ldr	r2, .L165+12
 844 0038 B04B     		ldr	r3, .L165+16
 845 003a 3AAD     		add	r5, sp, #232
 846 003c 05F8CC1D 		strb	r1, [r5, #-204]!
 847 0040 8845     		cmp	r8, r1
 848 0042 18BF     		it	ne
 849 0044 1346     		movne	r3, r2
 850 0046 05A8     		add	r0, sp, #20
 851 0048 4A46     		mov	r2, r9
 852 004a AD49     		ldr	r1, .L165+20
 853 004c 0595     		str	r5, [sp, #20]
 854 004e CDF818E0 		str	lr, [sp, #24]
 855 0052 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
ARM GAS  /tmp/ccx5mP1m.s 			page 16


 856 0056 2068     		ldr	r0, [r4]
 857 0058 FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 858 005c F0B9     		cbnz	r0, .L163
 859              	.L104:
 860 005e 0A21     		movs	r1, #10
 861 0060 05A8     		add	r0, sp, #20
 862 0062 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 863 0066 0599     		ldr	r1, [sp, #20]
 864 0068 3846     		mov	r0, r7
 865 006a FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 866 006e 0028     		cmp	r0, #0
 867 0070 2DD1     		bne	.L164
 868              	.L112:
 869 0072 3846     		mov	r0, r7
 870 0074 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 871              	.L115:
 872 0078 2268     		ldr	r2, [r4]
 873 007a 0123     		movs	r3, #1
 874 007c D2F86805 		ldr	r0, [r2, #1384]
 875 0080 9B49     		ldr	r1, .L165+4
 876 0082 9C4A     		ldr	r2, .L165+8
 877 0084 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 878 0088 2068     		ldr	r0, [r4]
 879 008a 9A4B     		ldr	r3, .L165+8
 880 008c 9D4A     		ldr	r2, .L165+24
 881 008e 40F2B511 		movw	r1, #437
 882 0092 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 883              	.L100:
 884 0096 3BB0     		add	sp, sp, #236
 885              		@ sp needed
 886 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 887              	.L163:
 888 009c 2068     		ldr	r0, [r4]
 889 009e FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 890 00a2 3AAB     		add	r3, sp, #232
 891 00a4 43F8D80D 		str	r0, [r3, #-216]!
 892 00a8 1846     		mov	r0, r3
 893 00aa FFF7FEFF 		bl	gmtime
 894 00ae 4168     		ldr	r1, [r0, #4]
 895 00b0 0369     		ldr	r3, [r0, #16]
 896 00b2 4269     		ldr	r2, [r0, #20]
 897 00b4 0291     		str	r1, [sp, #8]
 898 00b6 8168     		ldr	r1, [r0, #8]
 899 00b8 0133     		adds	r3, r3, #1
 900 00ba 0191     		str	r1, [sp, #4]
 901 00bc C168     		ldr	r1, [r0, #12]
 902 00be 02F26C72 		addw	r2, r2, #1900
 903 00c2 0091     		str	r1, [sp]
 904 00c4 05A8     		add	r0, sp, #20
 905 00c6 9049     		ldr	r1, .L165+28
 906 00c8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 907 00cc C7E7     		b	.L104
 908              	.L164:
 909 00ce 3946     		mov	r1, r7
 910 00d0 F068     		ldr	r0, [r6, #12]
 911 00d2 FFF7FEFF 		bl	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore
 912 00d6 0028     		cmp	r0, #0
ARM GAS  /tmp/ccx5mP1m.s 			page 17


 913 00d8 CBD0     		beq	.L112
 914 00da 3946     		mov	r1, r7
 915 00dc 8348     		ldr	r0, .L165
 916 00de FFF7FEFF 		bl	_ZNK6RepRap17WriteToolSettingsEP9FileStore
 917 00e2 0028     		cmp	r0, #0
 918 00e4 C5D0     		beq	.L112
 919 00e6 B068     		ldr	r0, [r6, #8]
 920 00e8 3946     		mov	r1, r7
 921 00ea FFF7FEFF 		bl	_ZNK4Move19WriteResumeSettingsEP9FileStore
 922 00ee 0028     		cmp	r0, #0
 923 00f0 BFD0     		beq	.L112
 924 00f2 8649     		ldr	r1, .L165+32
 925 00f4 864A     		ldr	r2, .L165+36
 926 00f6 05A8     		add	r0, sp, #20
 927 00f8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 928 00fc 0599     		ldr	r1, [sp, #20]
 929 00fe 3846     		mov	r0, r7
 930 0100 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 931 0104 0028     		cmp	r0, #0
 932 0106 B4D0     		beq	.L112
 933 0108 3946     		mov	r1, r7
 934 010a 2068     		ldr	r0, [r4]
 935 010c FFF7FEFF 		bl	_ZNK8Platform16WriteFanSettingsEP9FileStore
 936 0110 0028     		cmp	r0, #0
 937 0112 AED0     		beq	.L112
 938 0114 D4F88C02 		ldr	r0, [r4, #652]	@ float
 939 0118 FFF7FEFF 		bl	__aeabi_f2d
 940 011c 0246     		mov	r2, r0
 941 011e 0B46     		mov	r3, r1
 942 0120 05A8     		add	r0, sp, #20
 943 0122 7C49     		ldr	r1, .L165+40
 944 0124 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 945 0128 0599     		ldr	r1, [sp, #20]
 946 012a 3846     		mov	r0, r7
 947 012c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 948 0130 0028     		cmp	r0, #0
 949 0132 9ED0     		beq	.L112
 950 0134 D4F8C802 		ldr	r0, [r4, #712]	@ float
 951 0138 FFF7FEFF 		bl	__aeabi_f2d
 952 013c 0246     		mov	r2, r0
 953 013e 0B46     		mov	r3, r1
 954 0140 05A8     		add	r0, sp, #20
 955 0142 7549     		ldr	r1, .L165+44
 956 0144 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 957 0148 0599     		ldr	r1, [sp, #20]
 958 014a 3846     		mov	r0, r7
 959 014c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 960 0150 0028     		cmp	r0, #0
 961 0152 8ED0     		beq	.L112
 962 0154 236C     		ldr	r3, [r4, #64]
 963 0156 1868     		ldr	r0, [r3]
 964 0158 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 965 015c 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 966 015e 5B06     		lsls	r3, r3, #25
 967 0160 29D5     		bpl	.L111
 968 0162 6E49     		ldr	r1, .L165+48
 969 0164 05A8     		add	r0, sp, #20
ARM GAS  /tmp/ccx5mP1m.s 			page 18


 970 0166 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 971 016a D4F80032 		ldr	r3, [r4, #512]
 972 016e BBB1     		cbz	r3, .L122
 973 0170 0025     		movs	r5, #0
 974 0172 4426     		movs	r6, #68
 975 0174 DFF8D4A1 		ldr	r10, .L165+96
 976 0178 04F52C78 		add	r8, r4, #688
 977              	.L110:
 978 017c 58F8040B 		ldr	r0, [r8], #4	@ float
 979 0180 FFF7FEFF 		bl	__aeabi_f2d
 980 0184 3246     		mov	r2, r6
 981 0186 CDE90001 		strd	r0, [sp]
 982 018a 5146     		mov	r1, r10
 983 018c 05A8     		add	r0, sp, #20
 984 018e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 985 0192 D4F80032 		ldr	r3, [r4, #512]
 986 0196 0135     		adds	r5, r5, #1
 987 0198 AB42     		cmp	r3, r5
 988 019a 4FF03A06 		mov	r6, #58
 989 019e EDD8     		bhi	.L110
 990              	.L122:
 991 01a0 0A21     		movs	r1, #10
 992 01a2 05A8     		add	r0, sp, #20
 993 01a4 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 994 01a8 0599     		ldr	r1, [sp, #20]
 995 01aa 3846     		mov	r0, r7
 996 01ac FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 997 01b0 0028     		cmp	r0, #0
 998 01b2 3FF45EAF 		beq	.L112
 999              	.L111:
 1000 01b6 D4F81C02 		ldr	r0, [r4, #540]	@ float
 1001 01ba FFF7FEFF 		bl	__aeabi_f2d
 1002 01be 236C     		ldr	r3, [r4, #64]
 1003 01c0 8246     		mov	r10, r0
 1004 01c2 1868     		ldr	r0, [r3]
 1005 01c4 8B46     		mov	fp, r1
 1006 01c6 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 1007 01ca 027E     		ldrb	r2, [r0, #24]	@ zero_extendqisi2
 1008 01cc 544B     		ldr	r3, .L165+52
 1009 01ce 12F0010F 		tst	r2, #1
 1010 01d2 5449     		ldr	r1, .L165+56
 1011 01d4 08BF     		it	eq
 1012 01d6 1946     		moveq	r1, r3
 1013 01d8 5246     		mov	r2, r10
 1014 01da 0091     		str	r1, [sp]
 1015 01dc 5B46     		mov	r3, fp
 1016 01de 5249     		ldr	r1, .L165+60
 1017 01e0 05A8     		add	r0, sp, #20
 1018 01e2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1019 01e6 0599     		ldr	r1, [sp, #20]
 1020 01e8 3846     		mov	r0, r7
 1021 01ea FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1022 01ee 0028     		cmp	r0, #0
 1023 01f0 3FF43FAF 		beq	.L112
 1024 01f4 D4F8F031 		ldr	r3, [r4, #496]
 1025 01f8 186A     		ldr	r0, [r3, #32]	@ float
 1026 01fa 5D6A     		ldr	r5, [r3, #36]
ARM GAS  /tmp/ccx5mP1m.s 			page 19


 1027 01fc FFF7FEFF 		bl	__aeabi_f2d
 1028 0200 2B46     		mov	r3, r5
 1029 0202 CDE90001 		strd	r0, [sp]
 1030 0206 4A46     		mov	r2, r9
 1031 0208 4849     		ldr	r1, .L165+64
 1032 020a 05A8     		add	r0, sp, #20
 1033 020c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1034 0210 0599     		ldr	r1, [sp, #20]
 1035 0212 3846     		mov	r0, r7
 1036 0214 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1037 0218 0028     		cmp	r0, #0
 1038 021a 3FF42AAF 		beq	.L112
 1039 021e D4F8F031 		ldr	r3, [r4, #496]
 1040 0222 4FF08041 		mov	r1, #1073741824
 1041 0226 9868     		ldr	r0, [r3, #8]	@ float
 1042 0228 FFF7FEFF 		bl	__aeabi_fadd
 1043 022c FFF7FEFF 		bl	__aeabi_f2d
 1044 0230 0B46     		mov	r3, r1
 1045 0232 0246     		mov	r2, r0
 1046 0234 3E49     		ldr	r1, .L165+68
 1047 0236 05A8     		add	r0, sp, #20
 1048 0238 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1049 023c 3D49     		ldr	r1, .L165+72
 1050 023e 05A8     		add	r0, sp, #20
 1051 0240 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1052 0244 D4F8FC31 		ldr	r3, [r4, #508]
 1053 0248 E3B1     		cbz	r3, .L117
 1054 024a 0025     		movs	r5, #0
 1055 024c DFF80091 		ldr	r9, .L165+100
 1056 0250 04F27226 		addw	r6, r4, #626
 1057              	.L118:
 1058 0254 022D     		cmp	r5, #2
 1059 0256 10D0     		beq	.L116
 1060 0258 D4F8F031 		ldr	r3, [r4, #496]
 1061 025c 96F80080 		ldrb	r8, [r6]	@ zero_extendqisi2
 1062 0260 53F82500 		ldr	r0, [r3, r5, lsl #2]	@ float
 1063 0264 FFF7FEFF 		bl	__aeabi_f2d
 1064 0268 4246     		mov	r2, r8
 1065 026a CDE90001 		strd	r0, [sp]
 1066 026e 4946     		mov	r1, r9
 1067 0270 05A8     		add	r0, sp, #20
 1068 0272 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1069 0276 D4F8FC31 		ldr	r3, [r4, #508]
 1070              	.L116:
 1071 027a 0135     		adds	r5, r5, #1
 1072 027c AB42     		cmp	r3, r5
 1073 027e 06F10106 		add	r6, r6, #1
 1074 0282 E7D8     		bhi	.L118
 1075              	.L117:
 1076 0284 D4F8F031 		ldr	r3, [r4, #496]
 1077 0288 9868     		ldr	r0, [r3, #8]	@ float
 1078 028a FFF7FEFF 		bl	__aeabi_f2d
 1079 028e 0246     		mov	r2, r0
 1080 0290 0B46     		mov	r3, r1
 1081 0292 05A8     		add	r0, sp, #20
 1082 0294 2849     		ldr	r1, .L165+76
 1083 0296 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
ARM GAS  /tmp/ccx5mP1m.s 			page 20


 1084 029a D4F8F031 		ldr	r3, [r4, #496]
 1085 029e 2749     		ldr	r1, .L165+80
 1086 02a0 9869     		ldr	r0, [r3, #24]	@ float
 1087 02a2 FFF7FEFF 		bl	__aeabi_fmul
 1088 02a6 FFF7FEFF 		bl	__aeabi_f2d
 1089 02aa 0246     		mov	r2, r0
 1090 02ac 0B46     		mov	r3, r1
 1091 02ae 05A8     		add	r0, sp, #20
 1092 02b0 2349     		ldr	r1, .L165+84
 1093 02b2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1094 02b6 2349     		ldr	r1, .L165+88
 1095 02b8 05A8     		add	r0, sp, #20
 1096 02ba FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1097 02be 0599     		ldr	r1, [sp, #20]
 1098 02c0 3846     		mov	r0, r7
 1099 02c2 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1100 02c6 0546     		mov	r5, r0
 1101 02c8 3846     		mov	r0, r7
 1102 02ca FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1103 02ce 0028     		cmp	r0, #0
 1104 02d0 3FF4D2AE 		beq	.L115
 1105 02d4 002D     		cmp	r5, #0
 1106 02d6 3FF4CFAE 		beq	.L115
 1107 02da 2068     		ldr	r0, [r4]
 1108 02dc 1A4A     		ldr	r2, .L165+92
 1109 02de B521     		movs	r1, #181
 1110 02e0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1111 02e4 3BB0     		add	sp, sp, #236
 1112              		@ sp needed
 1113 02e6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1114              	.L166:
 1115 02ea 00BF     		.align	2
 1116              	.L165:
 1117 02ec 00000000 		.word	reprap
 1118 02f0 34000000 		.word	.LC17
 1119 02f4 28000000 		.word	.LC16
 1120 02f8 00000000 		.word	.LC12
 1121 02fc 10000000 		.word	.LC13
 1122 0300 58000000 		.word	.LC19
 1123 0304 54010000 		.word	.LC32
 1124 0308 7C000000 		.word	.LC20
 1125 030c 90010000 		.word	.LC34
 1126 0310 78010000 		.word	.LC33
 1127 0314 9C010000 		.word	.LC35
 1128 0318 9C000000 		.word	.LC21
 1129 031c A8010000 		.word	.LC36
 1130 0320 24000000 		.word	.LC15
 1131 0324 20000000 		.word	.LC14
 1132 0328 B8000000 		.word	.LC23
 1133 032c C8000000 		.word	.LC24
 1134 0330 E0000000 		.word	.LC25
 1135 0334 F0000000 		.word	.LC26
 1136 0338 FC000000 		.word	.LC27
 1137 033c 00007042 		.word	1114636288
 1138 0340 10010000 		.word	.LC28
 1139 0344 1C010000 		.word	.LC29
 1140 0348 2C010000 		.word	.LC31
ARM GAS  /tmp/ccx5mP1m.s 			page 21


 1141 034c B0000000 		.word	.LC22
 1142 0350 24010000 		.word	.LC30
 1143              	.L162:
 1144 0354 2068     		ldr	r0, [r4]
 1145 0356 034B     		ldr	r3, .L167
 1146 0358 034A     		ldr	r2, .L167+4
 1147 035a 40F2B511 		movw	r1, #437
 1148 035e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1149 0362 98E6     		b	.L100
 1150              	.L168:
 1151              		.align	2
 1152              	.L167:
 1153 0364 28000000 		.word	.LC16
 1154 0368 3C000000 		.word	.LC18
 1155              		.size	_ZN6GCodes14SaveResumeInfoEb, .-_ZN6GCodes14SaveResumeInfoEb
 1156              		.section	.text._ZN6GCodes11DiagnosticsE11MessageType,"ax",%progbits
 1157              		.align	1
 1158              		.p2align 2,,3
 1159              		.global	_ZN6GCodes11DiagnosticsE11MessageType
 1160              		.syntax unified
 1161              		.thumb
 1162              		.thumb_func
 1163              		.fpu softvfp
 1164              		.type	_ZN6GCodes11DiagnosticsE11MessageType, %function
 1165              	_ZN6GCodes11DiagnosticsE11MessageType:
 1166              		@ args = 0, pretend = 0, frame = 0
 1167              		@ frame_needed = 0, uses_anonymous_args = 0
 1168 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1169 0002 0646     		mov	r6, r0
 1170 0004 0D46     		mov	r5, r1
 1171 0006 83B0     		sub	sp, sp, #12
 1172 0008 0068     		ldr	r0, [r0]
 1173 000a 194A     		ldr	r2, .L175
 1174 000c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1175 0010 2946     		mov	r1, r5
 1176 0012 184A     		ldr	r2, .L175+4
 1177 0014 D6F8FC30 		ldr	r3, [r6, #252]
 1178 0018 3068     		ldr	r0, [r6]
 1179 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1180 001e 164B     		ldr	r3, .L175+8
 1181 0020 3468     		ldr	r4, [r6]
 1182 0022 1F68     		ldr	r7, [r3]
 1183 0024 FFF7FEFF 		bl	_ZN17GCodeMachineState11GetNumInUseEv
 1184 0028 3B46     		mov	r3, r7
 1185 002a 0090     		str	r0, [sp]
 1186 002c 2946     		mov	r1, r5
 1187 002e 2046     		mov	r0, r4
 1188 0030 124A     		ldr	r2, .L175+12
 1189 0032 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1190 0036 F36D     		ldr	r3, [r6, #92]
 1191 0038 3068     		ldr	r0, [r6]
 1192 003a BBB1     		cbz	r3, .L172
 1193 003c DB68     		ldr	r3, [r3, #12]
 1194              	.L170:
 1195 003e 104A     		ldr	r2, .L175+16
 1196 0040 2946     		mov	r1, r5
 1197 0042 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  /tmp/ccx5mP1m.s 			page 22


 1198 0046 06F11804 		add	r4, r6, #24
 1199 004a 06F13807 		add	r7, r6, #56
 1200              	.L171:
 1201 004e 54F8040B 		ldr	r0, [r4], #4
 1202 0052 2946     		mov	r1, r5
 1203 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer11DiagnosticsE11MessageType
 1204 0058 BC42     		cmp	r4, r7
 1205 005a F8D1     		bne	.L171
 1206 005c 2946     		mov	r1, r5
 1207 005e D6F8D003 		ldr	r0, [r6, #976]
 1208 0062 03B0     		add	sp, sp, #12
 1209              		@ sp needed
 1210 0064 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 1211 0068 FFF7FEBF 		b	_ZN10GCodeQueue11DiagnosticsE11MessageType
 1212              	.L172:
 1213 006c 054B     		ldr	r3, .L175+20
 1214 006e E6E7     		b	.L170
 1215              	.L176:
 1216              		.align	2
 1217              	.L175:
 1218 0070 08000000 		.word	.LC38
 1219 0074 18000000 		.word	.LC39
 1220 0078 00000000 		.word	_ZN17GCodeMachineState12numAllocatedE
 1221 007c 2C000000 		.word	.LC40
 1222 0080 54000000 		.word	.LC41
 1223 0084 00000000 		.word	.LC37
 1224              		.size	_ZN6GCodes11DiagnosticsE11MessageType, .-_ZN6GCodes11DiagnosticsE11MessageType
 1225              		.section	.text._ZN6GCodes4PushER11GCodeBuffer,"ax",%progbits
 1226              		.align	1
 1227              		.p2align 2,,3
 1228              		.global	_ZN6GCodes4PushER11GCodeBuffer
 1229              		.syntax unified
 1230              		.thumb
 1231              		.thumb_func
 1232              		.fpu softvfp
 1233              		.type	_ZN6GCodes4PushER11GCodeBuffer, %function
 1234              	_ZN6GCodes4PushER11GCodeBuffer:
 1235              		@ args = 0, pretend = 0, frame = 0
 1236              		@ frame_needed = 0, uses_anonymous_args = 0
 1237 0000 38B5     		push	{r3, r4, r5, lr}
 1238 0002 0546     		mov	r5, r0
 1239 0004 0846     		mov	r0, r1
 1240 0006 FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 1241 000a 0446     		mov	r4, r0
 1242 000c 10B9     		cbnz	r0, .L178
 1243 000e 2846     		mov	r0, r5
 1244 0010 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.55
 1245              	.L178:
 1246 0014 2046     		mov	r0, r4
 1247 0016 38BD     		pop	{r3, r4, r5, pc}
 1248              		.size	_ZN6GCodes4PushER11GCodeBuffer, .-_ZN6GCodes4PushER11GCodeBuffer
 1249              		.section	.text._ZN6GCodes3PopER11GCodeBuffer,"ax",%progbits
 1250              		.align	1
 1251              		.p2align 2,,3
 1252              		.global	_ZN6GCodes3PopER11GCodeBuffer
 1253              		.syntax unified
 1254              		.thumb
ARM GAS  /tmp/ccx5mP1m.s 			page 23


 1255              		.thumb_func
 1256              		.fpu softvfp
 1257              		.type	_ZN6GCodes3PopER11GCodeBuffer, %function
 1258              	_ZN6GCodes3PopER11GCodeBuffer:
 1259              		@ args = 0, pretend = 0, frame = 0
 1260              		@ frame_needed = 0, uses_anonymous_args = 0
 1261 0000 10B5     		push	{r4, lr}
 1262 0002 0446     		mov	r4, r0
 1263 0004 0846     		mov	r0, r1
 1264 0006 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 1265 000a 00B1     		cbz	r0, .L183
 1266 000c 10BD     		pop	{r4, pc}
 1267              	.L183:
 1268 000e 2068     		ldr	r0, [r4]
 1269 0010 034A     		ldr	r2, .L184
 1270 0012 40F2B511 		movw	r1, #437
 1271 0016 BDE81040 		pop	{r4, lr}
 1272 001a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1273              	.L185:
 1274 001e 00BF     		.align	2
 1275              	.L184:
 1276 0020 00000000 		.word	.LC42
 1277              		.size	_ZN6GCodes3PopER11GCodeBuffer, .-_ZN6GCodes3PopER11GCodeBuffer
 1278              		.global	__aeabi_fsub
 1279              		.global	__aeabi_fcmpeq
 1280              		.section	.text._ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer,"ax",%progbits
 1281              		.align	1
 1282              		.p2align 2,,3
 1283              		.global	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer
 1284              		.syntax unified
 1285              		.thumb
 1286              		.thumb_func
 1287              		.fpu softvfp
 1288              		.type	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer, %function
 1289              	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer:
 1290              		@ args = 0, pretend = 0, frame = 48
 1291              		@ frame_needed = 0, uses_anonymous_args = 0
 1292 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1293 0004 90F8F930 		ldrb	r3, [r0, #249]	@ zero_extendqisi2
 1294 0008 0F46     		mov	r7, r1
 1295 000a 13F01001 		ands	r1, r3, #16
 1296 000e 8DB0     		sub	sp, sp, #52
 1297 0010 0446     		mov	r4, r0
 1298 0012 02D1     		bne	.L187
 1299 0014 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 1300 0018 7ABB     		cbnz	r2, .L188
 1301              	.L187:
 1302 001a 4621     		movs	r1, #70
 1303 001c 3846     		mov	r0, r7
 1304 001e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1305 0022 0028     		cmp	r0, #0
 1306 0024 40F0A480 		bne	.L189
 1307 0028 BB68     		ldr	r3, [r7, #8]
 1308 002a 5868     		ldr	r0, [r3, #4]	@ float
 1309              	.L190:
 1310 002c 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 1311 0030 C4F8DC00 		str	r0, [r4, #220]	@ float
ARM GAS  /tmp/ccx5mP1m.s 			page 24


 1312 0034 43F02003 		orr	r3, r3, #32
 1313 0038 84F8F930 		strb	r3, [r4, #249]
 1314              	.L193:
 1315 003c D4F8F831 		ldr	r3, [r4, #504]
 1316 0040 082B     		cmp	r3, #8
 1317 0042 09D8     		bhi	.L197
 1318 0044 0021     		movs	r1, #0
 1319 0046 2833     		adds	r3, r3, #40
 1320 0048 04EB8303 		add	r3, r4, r3, lsl #2
 1321 004c 04F1C402 		add	r2, r4, #196
 1322              	.L198:
 1323 0050 43F8041B 		str	r1, [r3], #4	@ float
 1324 0054 9342     		cmp	r3, r2
 1325 0056 FBD1     		bne	.L198
 1326              	.L197:
 1327 0058 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 1328 005c D4F81C22 		ldr	r2, [r4, #540]	@ float
 1329 0060 6FF3C303 		bfc	r3, #3, #1
 1330 0064 D806     		lsls	r0, r3, #27
 1331 0066 84F8F930 		strb	r3, [r4, #249]
 1332 006a C4F8E020 		str	r2, [r4, #224]	@ float
 1333 006e 0CD4     		bmi	.L235
 1334              	.L196:
 1335 0070 0126     		movs	r6, #1
 1336              	.L222:
 1337 0072 3046     		mov	r0, r6
 1338 0074 0DB0     		add	sp, sp, #52
 1339              		@ sp needed
 1340 0076 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1341              	.L188:
 1342 007a 794A     		ldr	r2, .L238
 1343 007c 61F34513 		bfi	r3, r1, #5, #1
 1344 0080 80F8F930 		strb	r3, [r0, #249]
 1345 0084 C0F8DC20 		str	r2, [r0, #220]	@ float
 1346 0088 D8E7     		b	.L193
 1347              	.L235:
 1348 008a 4521     		movs	r1, #69
 1349 008c 3846     		mov	r0, r7
 1350 008e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1351 0092 0646     		mov	r6, r0
 1352 0094 0028     		cmp	r0, #0
 1353 0096 EBD0     		beq	.L196
 1354 0098 724B     		ldr	r3, .L238+4
 1355 009a DD6A     		ldr	r5, [r3, #44]
 1356 009c 002D     		cmp	r5, #0
 1357 009e 00F0D180 		beq	.L236
 1358 00a2 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 1359 00a6 D5F85C90 		ldr	r9, [r5, #92]
 1360 00aa 43F00803 		orr	r3, r3, #8
 1361 00ae 84F8F930 		strb	r3, [r4, #249]
 1362 00b2 B9F1000F 		cmp	r9, #0
 1363 00b6 DBD0     		beq	.L196
 1364 00b8 0CAA     		add	r2, sp, #48
 1365 00ba 0023     		movs	r3, #0
 1366 00bc 42F81C9D 		str	r9, [r2, #-28]!
 1367 00c0 06A9     		add	r1, sp, #24
 1368 00c2 3846     		mov	r0, r7
ARM GAS  /tmp/ccx5mP1m.s 			page 25


 1369 00c4 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 1370 00c8 059B     		ldr	r3, [sp, #20]
 1371 00ca 012B     		cmp	r3, #1
 1372 00cc 62D0     		beq	.L237
 1373 00ce BB68     		ldr	r3, [r7, #8]
 1374 00d0 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 1375 00d2 DA07     		lsls	r2, r3, #31
 1376 00d4 40F1BD80 		bpl	.L209
 1377 00d8 D4F83C22 		ldr	r2, [r4, #572]	@ float
 1378 00dc 09F17809 		add	r9, r9, #120
 1379 00e0 9346     		mov	fp, r2
 1380 00e2 03F04003 		and	r3, r3, #64
 1381 00e6 05EB0902 		add	r2, r5, r9
 1382 00ea 06AF     		add	r7, sp, #24
 1383 00ec 0192     		str	r2, [sp, #4]
 1384 00ee 7835     		adds	r5, r5, #120
 1385 00f0 0293     		str	r3, [sp, #8]
 1386 00f2 0396     		str	r6, [sp, #12]
 1387              	.L216:
 1388 00f4 5946     		mov	r1, fp
 1389 00f6 57F8040B 		ldr	r0, [r7], #4	@ float
 1390 00fa FFF7FEFF 		bl	__aeabi_fmul
 1391 00fe 0021     		movs	r1, #0
 1392 0100 8046     		mov	r8, r0
 1393 0102 FFF7FEFF 		bl	__aeabi_fcmpeq
 1394 0106 68BB     		cbnz	r0, .L210
 1395 0108 2E78     		ldrb	r6, [r5]	@ zero_extendqisi2
 1396 010a 029B     		ldr	r3, [sp, #8]
 1397 010c 06F1AC02 		add	r2, r6, #172
 1398 0110 54F82290 		ldr	r9, [r4, r2, lsl #2]	@ float
 1399 0114 23B1     		cbz	r3, .L213
 1400 0116 4046     		mov	r0, r8
 1401 0118 4946     		mov	r1, r9
 1402 011a FFF7FEFF 		bl	__aeabi_fmul
 1403 011e 8046     		mov	r8, r0
 1404              	.L213:
 1405 0120 04EB860A 		add	r10, r4, r6, lsl #2
 1406 0124 DAF82002 		ldr	r0, [r10, #544]	@ float
 1407 0128 4146     		mov	r1, r8
 1408 012a FFF7FEFF 		bl	__aeabi_fadd
 1409 012e CAF82002 		str	r0, [r10, #544]	@ float
 1410 0132 94F88110 		ldrb	r1, [r4, #129]	@ zero_extendqisi2
 1411 0136 31B9     		cbnz	r1, .L214
 1412 0138 D4F83802 		ldr	r0, [r4, #568]	@ float
 1413 013c 4146     		mov	r1, r8
 1414 013e FFF7FEFF 		bl	__aeabi_fadd
 1415 0142 C4F83802 		str	r0, [r4, #568]	@ float
 1416              	.L214:
 1417 0146 D4F8F821 		ldr	r2, [r4, #504]
 1418 014a DAF89812 		ldr	r1, [r10, #664]	@ float
 1419 014e B318     		adds	r3, r6, r2
 1420 0150 4046     		mov	r0, r8
 1421 0152 03F12808 		add	r8, r3, #40
 1422 0156 FFF7FEFF 		bl	__aeabi_fmul
 1423 015a 4946     		mov	r1, r9
 1424 015c FFF7FEFF 		bl	__aeabi_fmul
 1425 0160 44F82800 		str	r0, [r4, r8, lsl #2]	@ float
ARM GAS  /tmp/ccx5mP1m.s 			page 26


 1426              	.L210:
 1427 0164 019B     		ldr	r3, [sp, #4]
 1428 0166 0135     		adds	r5, r5, #1
 1429 0168 AB42     		cmp	r3, r5
 1430 016a C3D1     		bne	.L216
 1431 016c 039E     		ldr	r6, [sp, #12]
 1432 016e 80E7     		b	.L222
 1433              	.L189:
 1434 0170 3846     		mov	r0, r7
 1435 0172 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1436 0176 D4F83C12 		ldr	r1, [r4, #572]	@ float
 1437 017a FFF7FEFF 		bl	__aeabi_fmul
 1438 017e 94F8F830 		ldrb	r3, [r4, #248]	@ zero_extendqisi2
 1439 0182 BD68     		ldr	r5, [r7, #8]
 1440 0184 002B     		cmp	r3, #0
 1441 0186 59D1     		bne	.L191
 1442 0188 D4F89412 		ldr	r1, [r4, #660]	@ float
 1443 018c FFF7FEFF 		bl	__aeabi_fmul
 1444              	.L192:
 1445 0190 6860     		str	r0, [r5, #4]	@ float
 1446 0192 4BE7     		b	.L190
 1447              	.L237:
 1448 0194 D4F83C12 		ldr	r1, [r4, #572]	@ float
 1449 0198 0698     		ldr	r0, [sp, #24]	@ float
 1450 019a FFF7FEFF 		bl	__aeabi_fmul
 1451 019e BB68     		ldr	r3, [r7, #8]
 1452 01a0 8046     		mov	r8, r0
 1453 01a2 1F7E     		ldrb	r7, [r3, #24]	@ zero_extendqisi2
 1454 01a4 F907     		lsls	r1, r7, #31
 1455 01a6 52D4     		bmi	.L219
 1456 01a8 D4F81C12 		ldr	r1, [r4, #540]	@ float
 1457 01ac FFF7FEFF 		bl	__aeabi_fsub
 1458 01b0 8346     		mov	fp, r0
 1459 01b2 C4F81C82 		str	r8, [r4, #540]	@ float
 1460              	.L202:
 1461 01b6 05F12408 		add	r8, r5, #36
 1462 01ba 07F04003 		and	r3, r7, #64
 1463 01be 0193     		str	r3, [sp, #4]
 1464 01c0 08EB8903 		add	r3, r8, r9, lsl #2
 1465 01c4 9A46     		mov	r10, r3
 1466 01c6 7835     		adds	r5, r5, #120
 1467 01c8 0296     		str	r6, [sp, #8]
 1468              	.L207:
 1469 01ca 58F8041B 		ldr	r1, [r8], #4	@ float
 1470 01ce 5846     		mov	r0, fp
 1471 01d0 FFF7FEFF 		bl	__aeabi_fmul
 1472 01d4 0021     		movs	r1, #0
 1473 01d6 8146     		mov	r9, r0
 1474 01d8 FFF7FEFF 		bl	__aeabi_fcmpeq
 1475 01dc 40BB     		cbnz	r0, .L203
 1476 01de 019B     		ldr	r3, [sp, #4]
 1477 01e0 2F78     		ldrb	r7, [r5]	@ zero_extendqisi2
 1478 01e2 3BB1     		cbz	r3, .L205
 1479 01e4 07F1AC03 		add	r3, r7, #172
 1480 01e8 4846     		mov	r0, r9
 1481 01ea 54F82310 		ldr	r1, [r4, r3, lsl #2]	@ float
 1482 01ee FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  /tmp/ccx5mP1m.s 			page 27


 1483 01f2 8146     		mov	r9, r0
 1484              	.L205:
 1485 01f4 04EB8706 		add	r6, r4, r7, lsl #2
 1486 01f8 D6F82002 		ldr	r0, [r6, #544]	@ float
 1487 01fc 4946     		mov	r1, r9
 1488 01fe FFF7FEFF 		bl	__aeabi_fadd
 1489 0202 C6F82002 		str	r0, [r6, #544]	@ float
 1490 0206 94F88120 		ldrb	r2, [r4, #129]	@ zero_extendqisi2
 1491 020a 32B9     		cbnz	r2, .L206
 1492 020c D4F83802 		ldr	r0, [r4, #568]	@ float
 1493 0210 4946     		mov	r1, r9
 1494 0212 FFF7FEFF 		bl	__aeabi_fadd
 1495 0216 C4F83802 		str	r0, [r4, #568]	@ float
 1496              	.L206:
 1497 021a D4F8F821 		ldr	r2, [r4, #504]
 1498 021e D6F89802 		ldr	r0, [r6, #664]	@ float
 1499 0222 4946     		mov	r1, r9
 1500 0224 1744     		add	r7, r7, r2
 1501 0226 FFF7FEFF 		bl	__aeabi_fmul
 1502 022a 2837     		adds	r7, r7, #40
 1503 022c 44F82700 		str	r0, [r4, r7, lsl #2]	@ float
 1504              	.L203:
 1505 0230 C245     		cmp	r10, r8
 1506 0232 05F10105 		add	r5, r5, #1
 1507 0236 C8D1     		bne	.L207
 1508 0238 029E     		ldr	r6, [sp, #8]
 1509 023a 1AE7     		b	.L222
 1510              	.L191:
 1511 023c 0A49     		ldr	r1, .L238+8
 1512 023e FFF7FEFF 		bl	__aeabi_fmul
 1513 0242 A5E7     		b	.L192
 1514              	.L236:
 1515 0244 0123     		movs	r3, #1
 1516 0246 2E46     		mov	r6, r5
 1517 0248 84F85F34 		strb	r3, [r4, #1119]
 1518 024c 11E7     		b	.L222
 1519              	.L219:
 1520 024e 8346     		mov	fp, r0
 1521 0250 B1E7     		b	.L202
 1522              	.L209:
 1523 0252 2068     		ldr	r0, [r4]
 1524 0254 054A     		ldr	r2, .L238+12
 1525 0256 40F2B511 		movw	r1, #437
 1526 025a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1527 025e 08E7     		b	.L222
 1528              	.L239:
 1529              		.align	2
 1530              	.L238:
 1531 0260 00A08C46 		.word	1183621120
 1532 0264 00000000 		.word	reprap
 1533 0268 8988883C 		.word	1015580809
 1534 026c 00000000 		.word	.LC43
 1535              		.size	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer, .-_ZN6GCodes33LoadExtrusionAnd
 1536              		.section	.text._ZN6GCodes20CheckEnoughAxesHomedEm,"ax",%progbits
 1537              		.align	1
 1538              		.p2align 2,,3
 1539              		.global	_ZN6GCodes20CheckEnoughAxesHomedEm
ARM GAS  /tmp/ccx5mP1m.s 			page 28


 1540              		.syntax unified
 1541              		.thumb
 1542              		.thumb_func
 1543              		.fpu softvfp
 1544              		.type	_ZN6GCodes20CheckEnoughAxesHomedEm, %function
 1545              	_ZN6GCodes20CheckEnoughAxesHomedEm:
 1546              		@ args = 0, pretend = 0, frame = 0
 1547              		@ frame_needed = 0, uses_anonymous_args = 0
 1548 0000 0D4B     		ldr	r3, .L244
 1549 0002 70B5     		push	{r4, r5, r6, lr}
 1550 0004 9B68     		ldr	r3, [r3, #8]
 1551 0006 0446     		mov	r4, r0
 1552 0008 90F87A22 		ldrb	r2, [r0, #634]	@ zero_extendqisi2
 1553 000c D3F8FC04 		ldr	r0, [r3, #1276]
 1554 0010 0A4E     		ldr	r6, .L244+4
 1555 0012 0568     		ldr	r5, [r0]
 1556 0014 6D6D     		ldr	r5, [r5, #84]
 1557 0016 B542     		cmp	r5, r6
 1558 0018 0AD1     		bne	.L241
 1559 001a 002A     		cmp	r2, #0
 1560 001c 0B46     		mov	r3, r1
 1561 001e 08BF     		it	eq
 1562 0020 0023     		moveq	r3, #0
 1563              	.L242:
 1564 0022 D4F88022 		ldr	r2, [r4, #640]
 1565 0026 9343     		bics	r3, r3, r2
 1566 0028 14BF     		ite	ne
 1567 002a 0120     		movne	r0, #1
 1568 002c 0020     		moveq	r0, #0
 1569 002e 70BD     		pop	{r4, r5, r6, pc}
 1570              	.L241:
 1571 0030 A847     		blx	r5
 1572 0032 0346     		mov	r3, r0
 1573 0034 F5E7     		b	.L242
 1574              	.L245:
 1575 0036 00BF     		.align	2
 1576              	.L244:
 1577 0038 00000000 		.word	reprap
 1578 003c 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 1579              		.size	_ZN6GCodes20CheckEnoughAxesHomedEm, .-_ZN6GCodes20CheckEnoughAxesHomedEm
 1580              		.global	__aeabi_f2uiz
 1581              		.section	.text._ZN6GCodes12FinaliseMoveER11GCodeBuffer,"ax",%progbits
 1582              		.align	1
 1583              		.p2align 2,,3
 1584              		.global	_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 1585              		.syntax unified
 1586              		.thumb
 1587              		.thumb_func
 1588              		.fpu softvfp
 1589              		.type	_ZN6GCodes12FinaliseMoveER11GCodeBuffer, %function
 1590              	_ZN6GCodes12FinaliseMoveER11GCodeBuffer:
 1591              		@ args = 0, pretend = 0, frame = 0
 1592              		@ frame_needed = 0, uses_anonymous_args = 0
 1593 0000 D0F8F430 		ldr	r3, [r0, #244]
 1594 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1595 0008 0546     		mov	r5, r0
 1596 000a 0C46     		mov	r4, r1
ARM GAS  /tmp/ccx5mP1m.s 			page 29


 1597 000c 002B     		cmp	r3, #0
 1598 000e 43D1     		bne	.L256
 1599 0010 90F83821 		ldrb	r2, [r0, #312]	@ zero_extendqisi2
 1600 0014 82F00102 		eor	r2, r2, #1
 1601              	.L247:
 1602 0018 296C     		ldr	r1, [r5, #64]
 1603 001a 95F8F930 		ldrb	r3, [r5, #249]	@ zero_extendqisi2
 1604 001e 0968     		ldr	r1, [r1]
 1605 0020 62F38203 		bfi	r3, r2, #2, #1
 1606 0024 A142     		cmp	r1, r4
 1607 0026 85F8F930 		strb	r3, [r5, #249]
 1608 002a 18BF     		it	ne
 1609 002c 4FF0FF30 		movne	r0, #-1
 1610 0030 56D0     		beq	.L260
 1611              	.L248:
 1612 0032 D5F80081 		ldr	r8, [r5, #256]
 1613 0036 C5F8E400 		str	r0, [r5, #228]
 1614 003a B8F1010F 		cmp	r8, #1
 1615 003e 49D9     		bls	.L249
 1616 0040 0121     		movs	r1, #1
 1617 0042 0222     		movs	r2, #2
 1618 0044 A368     		ldr	r3, [r4, #8]
 1619 0046 D5F8F841 		ldr	r4, [r5, #504]
 1620 004a 85F83911 		strb	r1, [r5, #313]
 1621 004e 082C     		cmp	r4, #8
 1622 0050 1A75     		strb	r2, [r3, #20]
 1623 0052 10D8     		bhi	.L253
 1624 0054 4046     		mov	r0, r8
 1625 0056 FFF7FEFF 		bl	__aeabi_ui2f
 1626 005a 0746     		mov	r7, r0
 1627 005c 2834     		adds	r4, r4, #40
 1628 005e 05EB8404 		add	r4, r5, r4, lsl #2
 1629 0062 05F1C406 		add	r6, r5, #196
 1630              	.L254:
 1631 0066 2068     		ldr	r0, [r4]	@ float
 1632 0068 3946     		mov	r1, r7
 1633 006a FFF7FEFF 		bl	__aeabi_fdiv
 1634 006e 44F8040B 		str	r0, [r4], #4	@ float
 1635 0072 B442     		cmp	r4, r6
 1636 0074 F7D1     		bne	.L254
 1637              	.L253:
 1638 0076 D5F80C41 		ldr	r4, [r5, #268]	@ float
 1639 007a 0021     		movs	r1, #0
 1640 007c 2046     		mov	r0, r4
 1641 007e FFF7FEFF 		bl	__aeabi_fcmpeq
 1642 0082 58B1     		cbz	r0, .L261
 1643              	.L252:
 1644 0084 C5F80481 		str	r8, [r5, #260]
 1645 0088 C5F81041 		str	r4, [r5, #272]	@ float
 1646              		.syntax unified
 1647              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1648 008c BFF35F8F 		dmb
 1649              	@ 0 "" 2
 1650              		.thumb
 1651              		.syntax unified
 1652 0090 C5F8FC80 		str	r8, [r5, #252]
 1653 0094 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  /tmp/ccx5mP1m.s 			page 30


 1654              	.L256:
 1655 0098 0022     		movs	r2, #0
 1656 009a BDE7     		b	.L247
 1657              	.L261:
 1658 009c 4046     		mov	r0, r8
 1659 009e FFF7FEFF 		bl	__aeabi_ui2f
 1660 00a2 2146     		mov	r1, r4
 1661 00a4 FFF7FEFF 		bl	__aeabi_fmul
 1662 00a8 0446     		mov	r4, r0
 1663 00aa FFF7FEFF 		bl	floorf
 1664 00ae 0646     		mov	r6, r0
 1665 00b0 FFF7FEFF 		bl	__aeabi_f2uiz
 1666 00b4 A8EB0000 		sub	r0, r8, r0
 1667 00b8 C5F80401 		str	r0, [r5, #260]
 1668 00bc 3146     		mov	r1, r6
 1669 00be 2046     		mov	r0, r4
 1670 00c0 FFF7FEFF 		bl	__aeabi_fsub
 1671 00c4 C5F81001 		str	r0, [r5, #272]	@ float
 1672              		.syntax unified
 1673              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1674 00c8 BFF35F8F 		dmb
 1675              	@ 0 "" 2
 1676              		.thumb
 1677              		.syntax unified
 1678 00cc C5F8FC80 		str	r8, [r5, #252]
 1679 00d0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1680              	.L249:
 1681 00d4 0023     		movs	r3, #0
 1682 00d6 D5F80C41 		ldr	r4, [r5, #268]	@ float
 1683 00da 85F83931 		strb	r3, [r5, #313]
 1684 00de D1E7     		b	.L252
 1685              	.L260:
 1686 00e0 E868     		ldr	r0, [r5, #12]
 1687 00e2 0368     		ldr	r3, [r0]
 1688 00e4 9B68     		ldr	r3, [r3, #8]
 1689 00e6 9847     		blx	r3
 1690 00e8 0146     		mov	r1, r0
 1691 00ea 2046     		mov	r0, r4
 1692 00ec FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 1693 00f0 9FE7     		b	.L248
 1694              		.size	_ZN6GCodes12FinaliseMoveER11GCodeBuffer, .-_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 1695 00f2 00BF     		.section	.text._ZN6GCodes8ReadMoveERNS_7RawMoveE,"ax",%progbits
 1696              		.align	1
 1697              		.p2align 2,,3
 1698              		.global	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 1699              		.syntax unified
 1700              		.thumb
 1701              		.thumb_func
 1702              		.fpu softvfp
 1703              		.type	_ZN6GCodes8ReadMoveERNS_7RawMoveE, %function
 1704              	_ZN6GCodes8ReadMoveERNS_7RawMoveE:
 1705              		@ args = 0, pretend = 0, frame = 16
 1706              		@ frame_needed = 0, uses_anonymous_args = 0
 1707 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1708 0004 D0F8FC60 		ldr	r6, [r0, #252]
 1709 0008 87B0     		sub	sp, sp, #28
 1710 000a 002E     		cmp	r6, #0
ARM GAS  /tmp/ccx5mP1m.s 			page 31


 1711 000c 59D0     		beq	.L303
 1712 000e 8946     		mov	r9, r1
 1713 0010 00F1A004 		add	r4, r0, #160
 1714 0014 0546     		mov	r5, r0
 1715 0016 2146     		mov	r1, r4
 1716 0018 5C22     		movs	r2, #92
 1717 001a 4846     		mov	r0, r9
 1718 001c FFF7FEFF 		bl	memcpy
 1719 0020 012E     		cmp	r6, #1
 1720 0022 70D0     		beq	.L307
 1721 0024 95F838A1 		ldrb	r10, [r5, #312]	@ zero_extendqisi2
 1722 0028 BAF1000F 		cmp	r10, #0
 1723 002c 07D0     		beq	.L271
 1724 002e D5F83001 		ldr	r0, [r5, #304]	@ float
 1725 0032 D5F83411 		ldr	r1, [r5, #308]	@ float
 1726 0036 FFF7FEFF 		bl	__aeabi_fadd
 1727 003a C5F83001 		str	r0, [r5, #304]	@ float
 1728              	.L271:
 1729 003e D5F8FC31 		ldr	r3, [r5, #508]
 1730 0042 0593     		str	r3, [sp, #20]
 1731 0044 13B3     		cbz	r3, .L272
 1732 0046 C846     		mov	r8, r9
 1733 0048 0027     		movs	r7, #0
 1734 004a 09EB830B 		add	fp, r9, r3, lsl #2
 1735              	.L276:
 1736 004e BAF1000F 		cmp	r10, #0
 1737 0052 3AD1     		bne	.L308
 1738              	.L273:
 1739 0054 636A     		ldr	r3, [r4, #36]	@ float
 1740 0056 2068     		ldr	r0, [r4]	@ float
 1741 0058 1946     		mov	r1, r3
 1742 005a 0493     		str	r3, [sp, #16]
 1743 005c FFF7FEFF 		bl	__aeabi_fsub
 1744 0060 0390     		str	r0, [sp, #12]
 1745 0062 3046     		mov	r0, r6
 1746 0064 FFF7FEFF 		bl	__aeabi_ui2f
 1747 0068 039A     		ldr	r2, [sp, #12]
 1748 006a 0146     		mov	r1, r0
 1749 006c 1046     		mov	r0, r2
 1750 006e FFF7FEFF 		bl	__aeabi_fdiv
 1751 0072 049B     		ldr	r3, [sp, #16]
 1752 0074 1946     		mov	r1, r3
 1753 0076 FFF7FEFF 		bl	__aeabi_fadd
 1754 007a 6062     		str	r0, [r4, #36]	@ float
 1755              	.L283:
 1756 007c 48F8040B 		str	r0, [r8], #4	@ float
 1757 0080 D845     		cmp	r8, fp
 1758 0082 07F10107 		add	r7, r7, #1
 1759 0086 04F10404 		add	r4, r4, #4
 1760 008a E0D1     		bne	.L276
 1761              	.L272:
 1762 008c D5F80431 		ldr	r3, [r5, #260]
 1763 0090 9E42     		cmp	r6, r3
 1764 0092 7BD8     		bhi	.L309
 1765 0094 95F87922 		ldrb	r2, [r5, #633]	@ zero_extendqisi2
 1766 0098 002A     		cmp	r2, #0
 1767 009a 5DD1     		bne	.L310
ARM GAS  /tmp/ccx5mP1m.s 			page 32


 1768              	.L278:
 1769 009c 9E42     		cmp	r6, r3
 1770 009e 7DD0     		beq	.L311
 1771              	.L281:
 1772 00a0 701E     		subs	r0, r6, #1
 1773 00a2 C5F8FC00 		str	r0, [r5, #252]
 1774 00a6 FFF7FEFF 		bl	__aeabi_ui2f
 1775 00aa 0446     		mov	r4, r0
 1776 00ac D5F80001 		ldr	r0, [r5, #256]
 1777 00b0 FFF7FEFF 		bl	__aeabi_ui2f
 1778 00b4 0146     		mov	r1, r0
 1779 00b6 2046     		mov	r0, r4
 1780 00b8 FFF7FEFF 		bl	__aeabi_fdiv
 1781 00bc 0126     		movs	r6, #1
 1782 00be C9F84800 		str	r0, [r9, #72]	@ float
 1783              	.L303:
 1784 00c2 3046     		mov	r0, r6
 1785 00c4 07B0     		add	sp, sp, #28
 1786              		@ sp needed
 1787 00c6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1788              	.L308:
 1789 00ca 022F     		cmp	r7, #2
 1790 00cc C2D0     		beq	.L273
 1791 00ce D5F8F030 		ldr	r3, [r5, #240]
 1792 00d2 FB40     		lsrs	r3, r3, r7
 1793 00d4 DA07     		lsls	r2, r3, #31
 1794 00d6 11D4     		bmi	.L274
 1795 00d8 D5F8EC30 		ldr	r3, [r5, #236]
 1796 00dc FB40     		lsrs	r3, r3, r7
 1797 00de DB07     		lsls	r3, r3, #31
 1798 00e0 B8D5     		bpl	.L273
 1799 00e2 D5F83001 		ldr	r0, [r5, #304]	@ float
 1800 00e6 FFF7FEFF 		bl	cosf
 1801              	.L305:
 1802 00ea D5F82C11 		ldr	r1, [r5, #300]	@ float
 1803 00ee FFF7FEFF 		bl	__aeabi_fmul
 1804 00f2 616F     		ldr	r1, [r4, #116]	@ float
 1805 00f4 FFF7FEFF 		bl	__aeabi_fadd
 1806 00f8 6062     		str	r0, [r4, #36]	@ float
 1807 00fa BFE7     		b	.L283
 1808              	.L274:
 1809 00fc D5F83001 		ldr	r0, [r5, #304]	@ float
 1810 0100 FFF7FEFF 		bl	sinf
 1811 0104 F1E7     		b	.L305
 1812              	.L307:
 1813 0106 D5F80431 		ldr	r3, [r5, #260]
 1814 010a 012B     		cmp	r3, #1
 1815 010c 6DD0     		beq	.L265
 1816              	.L268:
 1817 010e 0022     		movs	r2, #0
 1818 0110 95F83831 		ldrb	r3, [r5, #312]	@ zero_extendqisi2
 1819 0114 C9F84820 		str	r2, [r9, #72]	@ float
 1820 0118 2BB1     		cbz	r3, .L267
 1821 011a 99F85930 		ldrb	r3, [r9, #89]	@ zero_extendqisi2
 1822 011e 43F00403 		orr	r3, r3, #4
 1823 0122 89F85930 		strb	r3, [r9, #89]
 1824              	.L267:
ARM GAS  /tmp/ccx5mP1m.s 			page 33


 1825 0126 0126     		movs	r6, #1
 1826 0128 0023     		movs	r3, #0
 1827 012a 0021     		movs	r1, #0
 1828 012c 3046     		mov	r0, r6
 1829 012e 95F8F920 		ldrb	r2, [r5, #249]	@ zero_extendqisi2
 1830 0132 C5F8FC30 		str	r3, [r5, #252]
 1831 0136 63F30002 		bfi	r2, r3, #0, #1
 1832 013a 85F83931 		strb	r3, [r5, #313]
 1833 013e 85F83831 		strb	r3, [r5, #312]
 1834 0142 C5F8F430 		str	r3, [r5, #244]
 1835 0146 85F8F830 		strb	r3, [r5, #248]
 1836 014a 85F8F920 		strb	r2, [r5, #249]
 1837 014e C5F80C11 		str	r1, [r5, #268]	@ float
 1838 0152 07B0     		add	sp, sp, #28
 1839              		@ sp needed
 1840 0154 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1841              	.L310:
 1842 0158 0124     		movs	r4, #1
 1843 015a 344A     		ldr	r2, .L313
 1844 015c D5F88032 		ldr	r3, [r5, #640]
 1845 0160 9168     		ldr	r1, [r2, #8]
 1846 0162 059A     		ldr	r2, [sp, #20]
 1847 0164 D1F8FC04 		ldr	r0, [r1, #1276]
 1848 0168 0168     		ldr	r1, [r0]
 1849 016a 0094     		str	r4, [sp]
 1850 016c 8C6A     		ldr	r4, [r1, #40]
 1851 016e 4946     		mov	r1, r9
 1852 0170 A047     		blx	r4
 1853 0172 A8B3     		cbz	r0, .L312
 1854 0174 0026     		movs	r6, #0
 1855 0176 0223     		movs	r3, #2
 1856 0178 3046     		mov	r0, r6
 1857 017a 85F83931 		strb	r3, [r5, #313]
 1858 017e 85F83861 		strb	r6, [r5, #312]
 1859 0182 C5F8FC60 		str	r6, [r5, #252]
 1860 0186 07B0     		add	sp, sp, #28
 1861              		@ sp needed
 1862 0188 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1863              	.L309:
 1864 018c 013E     		subs	r6, r6, #1
 1865 018e C5F8FC60 		str	r6, [r5, #252]
 1866 0192 0026     		movs	r6, #0
 1867 0194 3046     		mov	r0, r6
 1868 0196 07B0     		add	sp, sp, #28
 1869              		@ sp needed
 1870 0198 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1871              	.L311:
 1872 019c D5F81071 		ldr	r7, [r5, #272]	@ float
 1873 01a0 0021     		movs	r1, #0
 1874 01a2 3846     		mov	r0, r7
 1875 01a4 FFF7FEFF 		bl	__aeabi_fcmpeq
 1876 01a8 0028     		cmp	r0, #0
 1877 01aa 7FF479AF 		bne	.L281
 1878 01ae D5F8F841 		ldr	r4, [r5, #504]
 1879 01b2 082C     		cmp	r4, #8
 1880 01b4 3FF674AF 		bhi	.L281
 1881 01b8 3946     		mov	r1, r7
ARM GAS  /tmp/ccx5mP1m.s 			page 34


 1882 01ba 4FF07E50 		mov	r0, #1065353216
 1883 01be FFF7FEFF 		bl	__aeabi_fsub
 1884 01c2 8046     		mov	r8, r0
 1885 01c4 09EB8404 		add	r4, r9, r4, lsl #2
 1886 01c8 043C     		subs	r4, r4, #4
 1887 01ca 09F12007 		add	r7, r9, #32
 1888              	.L282:
 1889 01ce 6168     		ldr	r1, [r4, #4]	@ float
 1890 01d0 4046     		mov	r0, r8
 1891 01d2 FFF7FEFF 		bl	__aeabi_fmul
 1892 01d6 44F8040F 		str	r0, [r4, #4]!	@ float
 1893 01da A742     		cmp	r7, r4
 1894 01dc F7D1     		bne	.L282
 1895 01de 5FE7     		b	.L281
 1896              	.L312:
 1897 01e0 D5F80431 		ldr	r3, [r5, #260]
 1898 01e4 D5F8FC60 		ldr	r6, [r5, #252]
 1899 01e8 58E7     		b	.L278
 1900              	.L265:
 1901 01ea D5F81061 		ldr	r6, [r5, #272]	@ float
 1902 01ee 0021     		movs	r1, #0
 1903 01f0 3046     		mov	r0, r6
 1904 01f2 FFF7FEFF 		bl	__aeabi_fcmpeq
 1905 01f6 0028     		cmp	r0, #0
 1906 01f8 89D1     		bne	.L268
 1907 01fa D5F8F841 		ldr	r4, [r5, #504]
 1908 01fe 082C     		cmp	r4, #8
 1909 0200 85D8     		bhi	.L268
 1910 0202 3146     		mov	r1, r6
 1911 0204 4FF07E50 		mov	r0, #1065353216
 1912 0208 FFF7FEFF 		bl	__aeabi_fsub
 1913 020c 0746     		mov	r7, r0
 1914 020e 09EB8404 		add	r4, r9, r4, lsl #2
 1915 0212 043C     		subs	r4, r4, #4
 1916 0214 09F12006 		add	r6, r9, #32
 1917              	.L270:
 1918 0218 6168     		ldr	r1, [r4, #4]	@ float
 1919 021a 3846     		mov	r0, r7
 1920 021c FFF7FEFF 		bl	__aeabi_fmul
 1921 0220 44F8040F 		str	r0, [r4, #4]!	@ float
 1922 0224 A642     		cmp	r6, r4
 1923 0226 F7D1     		bne	.L270
 1924 0228 71E7     		b	.L268
 1925              	.L314:
 1926 022a 00BF     		.align	2
 1927              	.L313:
 1928 022c 00000000 		.word	reprap
 1929              		.size	_ZN6GCodes8ReadMoveERNS_7RawMoveE, .-_ZN6GCodes8ReadMoveERNS_7RawMoveE
 1930              		.section	.text._ZN6GCodes9ClearMoveEv,"ax",%progbits
 1931              		.align	1
 1932              		.p2align 2,,3
 1933              		.global	_ZN6GCodes9ClearMoveEv
 1934              		.syntax unified
 1935              		.thumb
 1936              		.thumb_func
 1937              		.fpu softvfp
 1938              		.type	_ZN6GCodes9ClearMoveEv, %function
ARM GAS  /tmp/ccx5mP1m.s 			page 35


 1939              	_ZN6GCodes9ClearMoveEv:
 1940              		@ args = 0, pretend = 0, frame = 0
 1941              		@ frame_needed = 0, uses_anonymous_args = 0
 1942              		@ link register save eliminated.
 1943 0000 0023     		movs	r3, #0
 1944 0002 0021     		movs	r1, #0
 1945 0004 90F8F920 		ldrb	r2, [r0, #249]	@ zero_extendqisi2
 1946 0008 C0F8FC30 		str	r3, [r0, #252]
 1947 000c 63F30002 		bfi	r2, r3, #0, #1
 1948 0010 80F8F920 		strb	r2, [r0, #249]
 1949 0014 80F83931 		strb	r3, [r0, #313]
 1950 0018 80F83831 		strb	r3, [r0, #312]
 1951 001c C0F8F430 		str	r3, [r0, #244]
 1952 0020 80F8F830 		strb	r3, [r0, #248]
 1953 0024 C0F80C11 		str	r1, [r0, #268]	@ float
 1954 0028 7047     		bx	lr
 1955              		.size	_ZN6GCodes9ClearMoveEv, .-_ZN6GCodes9ClearMoveEv
 1956 002a 00BF     		.section	.text._ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi,"ax",%progbits
 1957              		.align	1
 1958              		.p2align 2,,3
 1959              		.global	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 1960              		.syntax unified
 1961              		.thumb
 1962              		.thumb_func
 1963              		.fpu softvfp
 1964              		.type	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi, %function
 1965              	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi:
 1966              		@ args = 4, pretend = 0, frame = 0
 1967              		@ frame_needed = 0, uses_anonymous_args = 0
 1968 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1969 0004 0646     		mov	r6, r0
 1970 0006 0068     		ldr	r0, [r0]
 1971 0008 0C46     		mov	r4, r1
 1972 000a 1D46     		mov	r5, r3
 1973 000c D0F86805 		ldr	r0, [r0, #1384]
 1974 0010 0023     		movs	r3, #0
 1975 0012 2E49     		ldr	r1, .L333
 1976 0014 9146     		mov	r9, r2
 1977 0016 DDF82080 		ldr	r8, [sp, #32]
 1978 001a FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1979 001e 0028     		cmp	r0, #0
 1980 0020 43D0     		beq	.L329
 1981 0022 0746     		mov	r7, r0
 1982 0024 2046     		mov	r0, r4
 1983 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 1984 002a 0028     		cmp	r0, #0
 1985 002c 37D0     		beq	.L330
 1986 002e A568     		ldr	r5, [r4, #8]
 1987 0030 A868     		ldr	r0, [r5, #8]
 1988 0032 0028     		cmp	r0, #0
 1989 0034 3DD0     		beq	.L331
 1990 0036 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1991 003a A168     		ldr	r1, [r4, #8]
 1992              	.L322:
 1993 003c 0831     		adds	r1, r1, #8
 1994 003e F068     		ldr	r0, [r6, #12]
 1995 0040 AF60     		str	r7, [r5, #8]
ARM GAS  /tmp/ccx5mP1m.s 			page 36


 1996 0042 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 1997 0046 40F2F513 		movw	r3, #501
 1998 004a A8EB0303 		sub	r3, r8, r3
 1999 004e B3FA83F3 		clz	r3, r3
 2000 0052 A8F5FB70 		sub	r0, r8, #502
 2001 0056 B0FA80F0 		clz	r0, r0
 2002 005a A168     		ldr	r1, [r4, #8]
 2003 005c 5B09     		lsrs	r3, r3, #5
 2004 005e 0A7E     		ldrb	r2, [r1, #24]	@ zero_extendqisi2
 2005 0060 4009     		lsrs	r0, r0, #5
 2006 0062 42F00402 		orr	r2, r2, #4
 2007 0066 0A76     		strb	r2, [r1, #24]
 2008 0068 A268     		ldr	r2, [r4, #8]
 2009 006a B8F1620F 		cmp	r8, #98
 2010 006e 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 2011 0070 63F30411 		bfi	r1, r3, #4, #1
 2012 0074 1176     		strb	r1, [r2, #24]
 2013 0076 A368     		ldr	r3, [r4, #8]
 2014 0078 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 2015 007a 60F34512 		bfi	r2, r0, #5, #1
 2016 007e 1A76     		strb	r2, [r3, #24]
 2017 0080 04D0     		beq	.L320
 2018 0082 A268     		ldr	r2, [r4, #8]
 2019 0084 537E     		ldrb	r3, [r2, #25]	@ zero_extendqisi2
 2020 0086 43F00103 		orr	r3, r3, #1
 2021 008a 5376     		strb	r3, [r2, #25]
 2022              	.L320:
 2023 008c 0022     		movs	r2, #0
 2024 008e A368     		ldr	r3, [r4, #8]
 2025 0090 2046     		mov	r0, r4
 2026 0092 1A75     		strb	r2, [r3, #20]
 2027 0094 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 2028 0098 0120     		movs	r0, #1
 2029 009a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2030              	.L330:
 2031 009e 3046     		mov	r0, r6
 2032 00a0 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.55
 2033 00a4 0120     		movs	r0, #1
 2034 00a6 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2035              	.L329:
 2036 00aa 25B9     		cbnz	r5, .L332
 2037 00ac 2846     		mov	r0, r5
 2038 00ae BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2039              	.L331:
 2040 00b2 2946     		mov	r1, r5
 2041 00b4 C2E7     		b	.L322
 2042              	.L332:
 2043 00b6 3068     		ldr	r0, [r6]
 2044 00b8 4B46     		mov	r3, r9
 2045 00ba 054A     		ldr	r2, .L333+4
 2046 00bc 40F2B521 		movw	r1, #693
 2047 00c0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2048 00c4 2846     		mov	r0, r5
 2049 00c6 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2050              	.L334:
 2051 00ca 00BF     		.align	2
 2052              	.L333:
ARM GAS  /tmp/ccx5mP1m.s 			page 37


 2053 00cc 34000000 		.word	.LC17
 2054 00d0 00000000 		.word	.LC44
 2055              		.size	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi, .-_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2056              		.section	.text._ZN6GCodes13RunConfigFileEPKc,"ax",%progbits
 2057              		.align	1
 2058              		.p2align 2,,3
 2059              		.global	_ZN6GCodes13RunConfigFileEPKc
 2060              		.syntax unified
 2061              		.thumb
 2062              		.thumb_func
 2063              		.fpu softvfp
 2064              		.type	_ZN6GCodes13RunConfigFileEPKc, %function
 2065              	_ZN6GCodes13RunConfigFileEPKc:
 2066              		@ args = 0, pretend = 0, frame = 0
 2067              		@ frame_needed = 0, uses_anonymous_args = 0
 2068 0000 30B5     		push	{r4, r5, lr}
 2069 0002 0025     		movs	r5, #0
 2070 0004 C36C     		ldr	r3, [r0, #76]
 2071 0006 83B0     		sub	sp, sp, #12
 2072 0008 0A46     		mov	r2, r1
 2073 000a 1968     		ldr	r1, [r3]
 2074 000c 2B46     		mov	r3, r5
 2075 000e 0095     		str	r5, [sp]
 2076 0010 0446     		mov	r4, r0
 2077 0012 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2078 0016 84F88000 		strb	r0, [r4, #128]
 2079 001a 03B0     		add	sp, sp, #12
 2080              		@ sp needed
 2081 001c 30BD     		pop	{r4, r5, pc}
 2082              		.size	_ZN6GCodes13RunConfigFileEPKc, .-_ZN6GCodes13RunConfigFileEPKc
 2083 001e 00BF     		.section	.text._ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer,"ax",%progbits
 2084              		.align	1
 2085              		.p2align 2,,3
 2086              		.global	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 2087              		.syntax unified
 2088              		.thumb
 2089              		.thumb_func
 2090              		.fpu softvfp
 2091              		.type	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer, %function
 2092              	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer:
 2093              		@ args = 0, pretend = 0, frame = 0
 2094              		@ frame_needed = 0, uses_anonymous_args = 0
 2095 0000 70B5     		push	{r4, r5, r6, lr}
 2096 0002 0646     		mov	r6, r0
 2097 0004 0846     		mov	r0, r1
 2098 0006 0C46     		mov	r4, r1
 2099 0008 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 2100 000c 00B9     		cbnz	r0, .L344
 2101 000e 70BD     		pop	{r4, r5, r6, pc}
 2102              	.L344:
 2103 0010 A568     		ldr	r5, [r4, #8]
 2104 0012 F068     		ldr	r0, [r6, #12]
 2105 0014 05F10801 		add	r1, r5, #8
 2106 0018 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 2107 001c A868     		ldr	r0, [r5, #8]
 2108 001e 18B1     		cbz	r0, .L339
 2109 0020 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
ARM GAS  /tmp/ccx5mP1m.s 			page 38


 2110 0024 0023     		movs	r3, #0
 2111 0026 AB60     		str	r3, [r5, #8]
 2112              	.L339:
 2113 0028 2046     		mov	r0, r4
 2114 002a FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 2115 002e 2046     		mov	r0, r4
 2116 0030 BDE87040 		pop	{r4, r5, r6, lr}
 2117 0034 FFF7FEBF 		b	_ZN11GCodeBuffer4InitEv
 2118              		.size	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer, .-_ZN6GCodes21FileMacroCyclesReturnER11GCo
 2119              		.global	__aeabi_fcmpgt
 2120              		.section	.text._ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef,"ax",%progbits
 2121              		.align	1
 2122              		.p2align 2,,3
 2123              		.global	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef
 2124              		.syntax unified
 2125              		.thumb
 2126              		.thumb_func
 2127              		.fpu softvfp
 2128              		.type	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef, %function
 2129              	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef:
 2130              		@ args = 0, pretend = 0, frame = 8
 2131              		@ frame_needed = 0, uses_anonymous_args = 0
 2132 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2133 0004 0D46     		mov	r5, r1
 2134 0006 84B0     		sub	sp, sp, #16
 2135 0008 0446     		mov	r4, r0
 2136 000a 5321     		movs	r1, #83
 2137 000c 2846     		mov	r0, r5
 2138 000e 1646     		mov	r6, r2
 2139 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2140 0014 0028     		cmp	r0, #0
 2141 0016 72D1     		bne	.L379
 2142 0018 6FF00200 		mvn	r0, #2
 2143              	.L346:
 2144 001c 0021     		movs	r1, #0
 2145 001e 4FF0FF32 		mov	r2, #-1
 2146 0022 04AB     		add	r3, sp, #16
 2147 0024 03F8011D 		strb	r1, [r3, #-1]!
 2148 0028 C4F80003 		str	r0, [r4, #768]
 2149 002c C4F8FC22 		str	r2, [r4, #764]
 2150 0030 5021     		movs	r1, #80
 2151 0032 04F53F72 		add	r2, r4, #764
 2152 0036 2846     		mov	r0, r5
 2153 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 2154 003c 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 2155 0040 5BB1     		cbz	r3, .L347
 2156 0042 D4F8FC32 		ldr	r3, [r4, #764]
 2157 0046 1F2B     		cmp	r3, #31
 2158 0048 1BD9     		bls	.L348
 2159 004a 3046     		mov	r0, r6
 2160 004c 3F49     		ldr	r1, .L384
 2161 004e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2162 0052 0220     		movs	r0, #2
 2163 0054 04B0     		add	sp, sp, #16
 2164              		@ sp needed
 2165 0056 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2166              	.L347:
ARM GAS  /tmp/ccx5mP1m.s 			page 39


 2167 005a 2321     		movs	r1, #35
 2168 005c 0026     		movs	r6, #0
 2169 005e 2768     		ldr	r7, [r4]
 2170 0060 84F82B33 		strb	r3, [r4, #811]
 2171 0064 AA68     		ldr	r2, [r5, #8]
 2172 0066 97F89430 		ldrb	r3, [r7, #148]	@ zero_extendqisi2
 2173 006a 3948     		ldr	r0, .L384+4
 2174 006c C4F81063 		str	r6, [r4, #784]	@ float
 2175 0070 C4F81403 		str	r0, [r4, #788]	@ float
 2176 0074 1175     		strb	r1, [r2, #20]
 2177 0076 002B     		cmp	r3, #0
 2178 0078 35D1     		bne	.L376
 2179              	.L377:
 2180 007a 0120     		movs	r0, #1
 2181              	.L372:
 2182 007c 04B0     		add	sp, sp, #16
 2183              		@ sp needed
 2184 007e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2185              	.L348:
 2186 0082 94F87212 		ldrb	r1, [r4, #626]	@ zero_extendqisi2
 2187 0086 2846     		mov	r0, r5
 2188 0088 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2189 008c 0028     		cmp	r0, #0
 2190 008e 58D1     		bne	.L380
 2191 0090 D4F88490 		ldr	r9, [r4, #132]	@ float
 2192              	.L351:
 2193 0094 94F87312 		ldrb	r1, [r4, #627]	@ zero_extendqisi2
 2194 0098 2846     		mov	r0, r5
 2195 009a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2196 009e 0028     		cmp	r0, #0
 2197 00a0 31D1     		bne	.L381
 2198 00a2 D4F888A0 		ldr	r10, [r4, #136]	@ float
 2199              	.L353:
 2200 00a6 94F87412 		ldrb	r1, [r4, #628]	@ zero_extendqisi2
 2201 00aa 2846     		mov	r0, r5
 2202 00ac FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2203 00b0 0028     		cmp	r0, #0
 2204 00b2 41D1     		bne	.L382
 2205 00b4 D4F88C80 		ldr	r8, [r4, #140]	@ float
 2206              	.L355:
 2207 00b8 264F     		ldr	r7, .L384+8
 2208 00ba D4F8FC12 		ldr	r1, [r4, #764]
 2209 00be B868     		ldr	r0, [r7, #8]
 2210 00c0 5346     		mov	r3, r10
 2211 00c2 4A46     		mov	r2, r9
 2212 00c4 FFF7FEFF 		bl	_ZN4Move18SetXYBedProbePointEjff
 2213 00c8 2349     		ldr	r1, .L384+12
 2214 00ca 4046     		mov	r0, r8
 2215 00cc FFF7FEFF 		bl	__aeabi_fcmpgt
 2216 00d0 F0B9     		cbnz	r0, .L383
 2217 00d2 2121     		movs	r1, #33
 2218 00d4 2368     		ldr	r3, [r4]
 2219 00d6 AA68     		ldr	r2, [r5, #8]
 2220 00d8 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 2221 00dc 1175     		strb	r1, [r2, #20]
 2222 00de 002B     		cmp	r3, #0
 2223 00e0 CBD0     		beq	.L377
ARM GAS  /tmp/ccx5mP1m.s 			page 40


 2224 00e2 092B     		cmp	r3, #9
 2225 00e4 C9D0     		beq	.L377
 2226              	.L376:
 2227 00e6 94F82933 		ldrb	r3, [r4, #809]	@ zero_extendqisi2
 2228 00ea 002B     		cmp	r3, #0
 2229 00ec C5D1     		bne	.L377
 2230 00ee 0023     		movs	r3, #0
 2231 00f0 2946     		mov	r1, r5
 2232 00f2 2046     		mov	r0, r4
 2233 00f4 0093     		str	r3, [sp]
 2234 00f6 194A     		ldr	r2, .L384+16
 2235 00f8 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2236 00fc BDE7     		b	.L377
 2237              	.L379:
 2238 00fe 2846     		mov	r0, r5
 2239 0100 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2240 0104 8AE7     		b	.L346
 2241              	.L381:
 2242 0106 2846     		mov	r0, r5
 2243 0108 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2244 010c 8246     		mov	r10, r0
 2245 010e CAE7     		b	.L353
 2246              	.L383:
 2247 0110 0023     		movs	r3, #0
 2248 0112 D4F8FC12 		ldr	r1, [r4, #764]
 2249 0116 B868     		ldr	r0, [r7, #8]
 2250 0118 4246     		mov	r2, r8
 2251 011a 0093     		str	r3, [sp]
 2252 011c FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 2253 0120 D4F80013 		ldr	r1, [r4, #768]
 2254 0124 4B1C     		adds	r3, r1, #1
 2255 0126 A8DB     		blt	.L377
 2256 0128 3246     		mov	r2, r6
 2257 012a B868     		ldr	r0, [r7, #8]
 2258 012c FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiRK9StringRef
 2259 0130 0028     		cmp	r0, #0
 2260 0132 A2D0     		beq	.L377
 2261 0134 0220     		movs	r0, #2
 2262 0136 A1E7     		b	.L372
 2263              	.L382:
 2264 0138 2846     		mov	r0, r5
 2265 013a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2266 013e 8046     		mov	r8, r0
 2267 0140 BAE7     		b	.L355
 2268              	.L380:
 2269 0142 2846     		mov	r0, r5
 2270 0144 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2271 0148 8146     		mov	r9, r0
 2272 014a A3E7     		b	.L351
 2273              	.L385:
 2274              		.align	2
 2275              	.L384:
 2276 014c 00000000 		.word	.LC45
 2277 0150 00007A44 		.word	1148846080
 2278 0154 00000000 		.word	reprap
 2279 0158 003C1CC6 		.word	-971228160
 2280 015c 24000000 		.word	.LC46
ARM GAS  /tmp/ccx5mP1m.s 			page 41


 2281              		.size	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef, .-_ZN6GCodes10ExecuteG30ER11GCodeBufferRK
 2282              		.section	.text._ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer,"ax",%progbits
 2283              		.align	1
 2284              		.p2align 2,,3
 2285              		.global	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer
 2286              		.syntax unified
 2287              		.thumb
 2288              		.thumb_func
 2289              		.fpu softvfp
 2290              		.type	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer, %function
 2291              	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer:
 2292              		@ args = 0, pretend = 0, frame = 0
 2293              		@ frame_needed = 0, uses_anonymous_args = 0
 2294              		@ link register save eliminated.
 2295 0000 8B8E     		ldrh	r3, [r1, #52]
 2296 0002 352B     		cmp	r3, #53
 2297 0004 05D1     		bne	.L387
 2298 0006 90F95C34 		ldrsb	r3, [r0, #1116]
 2299 000a 002B     		cmp	r3, #0
 2300 000c ACBF     		ite	ge
 2301 000e 0423     		movge	r3, #4
 2302 0010 1023     		movlt	r3, #16
 2303              	.L387:
 2304 0012 1846     		mov	r0, r3
 2305 0014 7047     		bx	lr
 2306              		.size	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer, .-_ZNK6GCodes19GetMessageBoxDeviceER11GCode
 2307 0016 00BF     		.section	.text._ZN6GCodes13DoManualProbeER11GCodeBuffer,"ax",%progbits
 2308              		.align	1
 2309              		.p2align 2,,3
 2310              		.global	_ZN6GCodes13DoManualProbeER11GCodeBuffer
 2311              		.syntax unified
 2312              		.thumb
 2313              		.thumb_func
 2314              		.fpu softvfp
 2315              		.type	_ZN6GCodes13DoManualProbeER11GCodeBuffer, %function
 2316              	_ZN6GCodes13DoManualProbeER11GCodeBuffer:
 2317              		@ args = 0, pretend = 0, frame = 0
 2318              		@ frame_needed = 0, uses_anonymous_args = 0
 2319 0000 70B5     		push	{r4, r5, r6, lr}
 2320 0002 0646     		mov	r6, r0
 2321 0004 84B0     		sub	sp, sp, #16
 2322 0006 0846     		mov	r0, r1
 2323 0008 0C46     		mov	r4, r1
 2324 000a FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 2325 000e D8B1     		cbz	r0, .L397
 2326 0010 A568     		ldr	r5, [r4, #8]
 2327 0012 A868     		ldr	r0, [r5, #8]
 2328 0014 20B1     		cbz	r0, .L393
 2329 0016 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2330 001a 0023     		movs	r3, #0
 2331 001c AB60     		str	r3, [r5, #8]
 2332 001e A568     		ldr	r5, [r4, #8]
 2333              	.L393:
 2334 0020 6B7E     		ldrb	r3, [r5, #25]	@ zero_extendqisi2
 2335 0022 43F00203 		orr	r3, r3, #2
 2336 0026 6B76     		strb	r3, [r5, #25]
 2337 0028 A18E     		ldrh	r1, [r4, #52]
ARM GAS  /tmp/ccx5mP1m.s 			page 42


 2338 002a 3529     		cmp	r1, #53
 2339 002c 12D0     		beq	.L398
 2340              	.L391:
 2341 002e 0424     		movs	r4, #4
 2342 0030 0222     		movs	r2, #2
 2343 0032 0023     		movs	r3, #0
 2344 0034 3068     		ldr	r0, [r6]
 2345 0036 0092     		str	r2, [sp]
 2346 0038 0193     		str	r3, [sp, #4]	@ float
 2347 003a 0294     		str	r4, [sp, #8]
 2348 003c 094B     		ldr	r3, .L399
 2349 003e 0A4A     		ldr	r2, .L399+4
 2350 0040 FFF7FEFF 		bl	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 2351 0044 04B0     		add	sp, sp, #16
 2352              		@ sp needed
 2353 0046 70BD     		pop	{r4, r5, r6, pc}
 2354              	.L397:
 2355 0048 3046     		mov	r0, r6
 2356 004a 04B0     		add	sp, sp, #16
 2357              		@ sp needed
 2358 004c BDE87040 		pop	{r4, r5, r6, lr}
 2359 0050 FFF7FEBF 		b	_ZN6GCodes4PushER11GCodeBuffer.part.55
 2360              	.L398:
 2361 0054 96F95C34 		ldrsb	r3, [r6, #1116]
 2362 0058 002B     		cmp	r3, #0
 2363 005a B4BF     		ite	lt
 2364 005c 1021     		movlt	r1, #16
 2365 005e 0421     		movge	r1, #4
 2366 0060 E5E7     		b	.L391
 2367              	.L400:
 2368 0062 00BF     		.align	2
 2369              	.L399:
 2370 0064 00000000 		.word	.LC47
 2371 0068 14000000 		.word	.LC48
 2372              		.size	_ZN6GCodes13DoManualProbeER11GCodeBuffer, .-_ZN6GCodes13DoManualProbeER11GCodeBuffer
 2373              		.section	.text._ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef,"ax",%progbits
 2374              		.align	1
 2375              		.p2align 2,,3
 2376              		.global	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef
 2377              		.syntax unified
 2378              		.thumb
 2379              		.thumb_func
 2380              		.fpu softvfp
 2381              		.type	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef, %function
 2382              	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef:
 2383              		@ args = 0, pretend = 0, frame = 120
 2384              		@ frame_needed = 0, uses_anonymous_args = 0
 2385 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2386 0002 0024     		movs	r4, #0
 2387 0004 6525     		movs	r5, #101
 2388 0006 9FB0     		sub	sp, sp, #124
 2389 0008 0DF10703 		add	r3, sp, #7
 2390 000c 8DF81040 		strb	r4, [sp, #16]
 2391 0010 8DF80740 		strb	r4, [sp, #7]
 2392 0014 0646     		mov	r6, r0
 2393 0016 1746     		mov	r7, r2
 2394 0018 0846     		mov	r0, r1
ARM GAS  /tmp/ccx5mP1m.s 			page 43


 2395 001a 02AA     		add	r2, sp, #8
 2396 001c 5021     		movs	r1, #80
 2397 001e 04AC     		add	r4, sp, #16
 2398 0020 0395     		str	r5, [sp, #12]
 2399 0022 0294     		str	r4, [sp, #8]
 2400 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 2401 0028 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 2402 002c 5BB3     		cbz	r3, .L407
 2403              	.L402:
 2404 002e 3268     		ldr	r2, [r6]
 2405 0030 0123     		movs	r3, #1
 2406 0032 D2F86805 		ldr	r0, [r2, #1384]
 2407 0036 1C49     		ldr	r1, .L410
 2408 0038 04AA     		add	r2, sp, #16
 2409 003a FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2410 003e 0446     		mov	r4, r0
 2411 0040 48B3     		cbz	r0, .L408
 2412 0042 1A4B     		ldr	r3, .L410+4
 2413 0044 0146     		mov	r1, r0
 2414 0046 9868     		ldr	r0, [r3, #8]
 2415 0048 FFF7FEFF 		bl	_ZNK4Move19SaveHeightMapToFileEP9FileStore
 2416 004c 0546     		mov	r5, r0
 2417 004e 2046     		mov	r0, r4
 2418 0050 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2419 0054 3DB9     		cbnz	r5, .L409
 2420 0056 04AA     		add	r2, sp, #16
 2421 0058 3846     		mov	r0, r7
 2422 005a 1549     		ldr	r1, .L410+8
 2423 005c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2424 0060 2846     		mov	r0, r5
 2425 0062 1FB0     		add	sp, sp, #124
 2426              		@ sp needed
 2427 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
 2428              	.L409:
 2429 0066 3268     		ldr	r2, [r6]
 2430 0068 0023     		movs	r3, #0
 2431 006a D2F86805 		ldr	r0, [r2, #1384]
 2432 006e 0E49     		ldr	r1, .L410
 2433 0070 04AA     		add	r2, sp, #16
 2434 0072 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 2435 0076 04AA     		add	r2, sp, #16
 2436 0078 3846     		mov	r0, r7
 2437 007a 0E49     		ldr	r1, .L410+12
 2438 007c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2439 0080 2846     		mov	r0, r5
 2440 0082 1FB0     		add	sp, sp, #124
 2441              		@ sp needed
 2442 0084 F0BD     		pop	{r4, r5, r6, r7, pc}
 2443              	.L407:
 2444 0086 04AB     		add	r3, sp, #16
 2445 0088 02A8     		add	r0, sp, #8
 2446 008a 0B49     		ldr	r1, .L410+16
 2447 008c 0293     		str	r3, [sp, #8]
 2448 008e 0395     		str	r5, [sp, #12]
 2449 0090 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2450 0094 CBE7     		b	.L402
 2451              	.L408:
ARM GAS  /tmp/ccx5mP1m.s 			page 44


 2452 0096 0125     		movs	r5, #1
 2453 0098 04AA     		add	r2, sp, #16
 2454 009a 3846     		mov	r0, r7
 2455 009c 0749     		ldr	r1, .L410+20
 2456 009e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2457 00a2 2846     		mov	r0, r5
 2458 00a4 1FB0     		add	sp, sp, #124
 2459              		@ sp needed
 2460 00a6 F0BD     		pop	{r4, r5, r6, r7, pc}
 2461              	.L411:
 2462              		.align	2
 2463              	.L410:
 2464 00a8 34000000 		.word	.LC17
 2465 00ac 00000000 		.word	reprap
 2466 00b0 5C000000 		.word	.LC52
 2467 00b4 34000000 		.word	.LC51
 2468 00b8 00000000 		.word	.LC49
 2469 00bc 10000000 		.word	.LC50
 2470              		.size	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef, .-_ZNK6GCodes13SaveHeightMapER11GCode
 2471              		.section	.text._ZNK6GCodes21GetCurrentCoordinatesERK9StringRef,"ax",%progbits
 2472              		.align	1
 2473              		.p2align 2,,3
 2474              		.global	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef
 2475              		.syntax unified
 2476              		.thumb
 2477              		.thumb_func
 2478              		.fpu softvfp
 2479              		.type	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef, %function
 2480              	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef:
 2481              		@ args = 0, pretend = 0, frame = 40
 2482              		@ frame_needed = 0, uses_anonymous_args = 0
 2483 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2484 0004 DFF84081 		ldr	r8, .L446+12
 2485 0008 8DB0     		sub	sp, sp, #52
 2486 000a 0546     		mov	r5, r0
 2487 000c 4046     		mov	r0, r8
 2488 000e 0E46     		mov	r6, r1
 2489 0010 D8F80840 		ldr	r4, [r8, #8]
 2490 0014 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 2491 0018 0746     		mov	r7, r0
 2492 001a 4046     		mov	r0, r8
 2493 001c FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 2494 0020 3A46     		mov	r2, r7
 2495 0022 0346     		mov	r3, r0
 2496 0024 03A9     		add	r1, sp, #12
 2497 0026 2046     		mov	r0, r4
 2498 0028 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 2499 002c D8F82C40 		ldr	r4, [r8, #44]
 2500 0030 8CB1     		cbz	r4, .L416
 2501 0032 D5F8FC31 		ldr	r3, [r5, #508]
 2502 0036 73B1     		cbz	r3, .L416
 2503 0038 03F10309 		add	r9, r3, #3
 2504 003c 04EB8909 		add	r9, r4, r9, lsl #2
 2505 0040 03AF     		add	r7, sp, #12
 2506 0042 0C34     		adds	r4, r4, #12
 2507              	.L417:
 2508 0044 54F8041B 		ldr	r1, [r4], #4	@ float
ARM GAS  /tmp/ccx5mP1m.s 			page 45


 2509 0048 3868     		ldr	r0, [r7]	@ float
 2510 004a FFF7FEFF 		bl	__aeabi_fadd
 2511 004e 4C45     		cmp	r4, r9
 2512 0050 47F8040B 		str	r0, [r7], #4	@ float
 2513 0054 F6D1     		bne	.L417
 2514              	.L416:
 2515 0056 0024     		movs	r4, #0
 2516 0058 3368     		ldr	r3, [r6]
 2517 005a 1C70     		strb	r4, [r3]
 2518 005c D5F8FC31 		ldr	r3, [r5, #508]
 2519 0060 BBB1     		cbz	r3, .L414
 2520 0062 DFF8E8A0 		ldr	r10, .L446+16
 2521 0066 05F27229 		addw	r9, r5, #626
 2522 006a 05F18407 		add	r7, r5, #132
 2523              	.L420:
 2524 006e 57F8040B 		ldr	r0, [r7], #4	@ float
 2525 0072 19F801BB 		ldrb	fp, [r9], #1	@ zero_extendqisi2
 2526 0076 FFF7FEFF 		bl	_Z7HideNanf
 2527 007a 5A46     		mov	r2, fp
 2528 007c CDE90001 		strd	r0, [sp]
 2529 0080 5146     		mov	r1, r10
 2530 0082 3046     		mov	r0, r6
 2531 0084 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2532 0088 D5F8FC31 		ldr	r3, [r5, #508]
 2533 008c 0134     		adds	r4, r4, #1
 2534 008e A342     		cmp	r3, r4
 2535 0090 EDD8     		bhi	.L420
 2536              	.L414:
 2537 0092 D5F8F841 		ldr	r4, [r5, #504]
 2538 0096 082C     		cmp	r4, #8
 2539 0098 19D8     		bhi	.L418
 2540 009a 03AB     		add	r3, sp, #12
 2541 009c 03EB8409 		add	r9, r3, r4, lsl #2
 2542 00a0 A9F10409 		sub	r9, r9, #4
 2543 00a4 2746     		mov	r7, r4
 2544 00a6 DFF8A8A0 		ldr	r10, .L446+20
 2545 00aa 01E0     		b	.L419
 2546              	.L445:
 2547 00ac D5F8F871 		ldr	r7, [r5, #504]
 2548              	.L419:
 2549 00b0 59F8040F 		ldr	r0, [r9, #4]!	@ float
 2550 00b4 FFF7FEFF 		bl	__aeabi_f2d
 2551 00b8 E71B     		subs	r7, r4, r7
 2552 00ba CDE90001 		strd	r0, [sp]
 2553 00be 0134     		adds	r4, r4, #1
 2554 00c0 3A46     		mov	r2, r7
 2555 00c2 5146     		mov	r1, r10
 2556 00c4 3046     		mov	r0, r6
 2557 00c6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2558 00ca 092C     		cmp	r4, #9
 2559 00cc EED1     		bne	.L445
 2560              	.L418:
 2561 00ce 1B49     		ldr	r1, .L446
 2562 00d0 3046     		mov	r0, r6
 2563 00d2 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2564 00d6 D5F8FC31 		ldr	r3, [r5, #508]
 2565 00da 8BB1     		cbz	r3, .L421
ARM GAS  /tmp/ccx5mP1m.s 			page 46


 2566 00dc 0024     		movs	r4, #0
 2567 00de 184F     		ldr	r7, .L446+4
 2568              	.L425:
 2569 00e0 D8F80830 		ldr	r3, [r8, #8]
 2570 00e4 04F11A02 		add	r2, r4, #26
 2571 00e8 03EB8203 		add	r3, r3, r2, lsl #2
 2572 00ec 5A68     		ldr	r2, [r3, #4]
 2573 00ee 3946     		mov	r1, r7
 2574 00f0 3046     		mov	r0, r6
 2575 00f2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2576 00f6 D5F8FC31 		ldr	r3, [r5, #508]
 2577 00fa 0134     		adds	r4, r4, #1
 2578 00fc A342     		cmp	r3, r4
 2579 00fe EFD8     		bhi	.L425
 2580              	.L421:
 2581 0100 1049     		ldr	r1, .L446+8
 2582 0102 3046     		mov	r0, r6
 2583 0104 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2584 0108 D5F8FC31 		ldr	r3, [r5, #508]
 2585 010c 93B1     		cbz	r3, .L412
 2586 010e 0024     		movs	r4, #0
 2587 0110 DFF84080 		ldr	r8, .L446+24
 2588 0114 02AF     		add	r7, sp, #8
 2589              	.L426:
 2590 0116 57F8040F 		ldr	r0, [r7, #4]!	@ float
 2591 011a FFF7FEFF 		bl	_Z7HideNanf
 2592 011e 0B46     		mov	r3, r1
 2593 0120 0246     		mov	r2, r0
 2594 0122 4146     		mov	r1, r8
 2595 0124 3046     		mov	r0, r6
 2596 0126 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2597 012a D5F8FC31 		ldr	r3, [r5, #508]
 2598 012e 0134     		adds	r4, r4, #1
 2599 0130 A342     		cmp	r3, r4
 2600 0132 F0D8     		bhi	.L426
 2601              	.L412:
 2602 0134 0DB0     		add	sp, sp, #52
 2603              		@ sp needed
 2604 0136 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2605              	.L447:
 2606 013a 00BF     		.align	2
 2607              	.L446:
 2608 013c 0C000000 		.word	.LC54
 2609 0140 2C000000 		.word	.LC57
 2610 0144 20000000 		.word	.LC56
 2611 0148 00000000 		.word	reprap
 2612 014c 00000000 		.word	.LC53
 2613 0150 14000000 		.word	.LC55
 2614 0154 34000000 		.word	.LC58
 2615              		.size	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef, .-_ZNK6GCodes21GetCurrentCoordinatesERK9Str
 2616              		.section	.text._ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm,"ax",%progbits
 2617              		.align	1
 2618              		.p2align 2,,3
 2619              		.global	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm
 2620              		.syntax unified
 2621              		.thumb
 2622              		.thumb_func
ARM GAS  /tmp/ccx5mP1m.s 			page 47


 2623              		.fpu softvfp
 2624              		.type	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm, %function
 2625              	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm:
 2626              		@ args = 12, pretend = 0, frame = 0
 2627              		@ frame_needed = 0, uses_anonymous_args = 0
 2628 0000 2DE9F846 		push	{r3, r4, r5, r6, r7, r9, r10, lr}
 2629 0004 1746     		mov	r7, r2
 2630 0006 9946     		mov	r9, r3
 2631 0008 0368     		ldr	r3, [r0]
 2632 000a 0446     		mov	r4, r0
 2633 000c 4A46     		mov	r2, r9
 2634 000e D3F86805 		ldr	r0, [r3, #1384]
 2635 0012 0E46     		mov	r6, r1
 2636 0014 0123     		movs	r3, #1
 2637 0016 3946     		mov	r1, r7
 2638 0018 9DF824A0 		ldrb	r10, [sp, #36]	@ zero_extendqisi2
 2639 001c FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2640 0020 0023     		movs	r3, #0
 2641 0022 089A     		ldr	r2, [sp, #32]
 2642 0024 C4F86402 		str	r0, [r4, #612]
 2643 0028 C4F86822 		str	r2, [r4, #616]
 2644 002c 84F87032 		strb	r3, [r4, #624]
 2645 0030 38B1     		cbz	r0, .L452
 2646 0032 0A9B     		ldr	r3, [sp, #40]
 2647 0034 0120     		movs	r0, #1
 2648 0036 7364     		str	r3, [r6, #68]
 2649 0038 86F8B5A0 		strb	r10, [r6, #181]
 2650 003c F762     		str	r7, [r6, #44]
 2651 003e BDE8F886 		pop	{r3, r4, r5, r6, r7, r9, r10, pc}
 2652              	.L452:
 2653 0042 0546     		mov	r5, r0
 2654 0044 4B46     		mov	r3, r9
 2655 0046 2068     		ldr	r0, [r4]
 2656 0048 034A     		ldr	r2, .L453
 2657 004a 40F2B511 		movw	r1, #437
 2658 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2659 0052 2846     		mov	r0, r5
 2660 0054 BDE8F886 		pop	{r3, r4, r5, r6, r7, r9, r10, pc}
 2661              	.L454:
 2662              		.align	2
 2663              	.L453:
 2664 0058 00000000 		.word	.LC59
 2665              		.size	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm, .-_ZN6GCodes15OpenFileToWriteER11GCodeB
 2666              		.section	.text._ZN6GCodes16QueueFileToPrintEPKcRK9StringRef,"ax",%progbits
 2667              		.align	1
 2668              		.p2align 2,,3
 2669              		.global	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 2670              		.syntax unified
 2671              		.thumb
 2672              		.thumb_func
 2673              		.fpu softvfp
 2674              		.type	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef, %function
 2675              	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef:
 2676              		@ args = 0, pretend = 0, frame = 0
 2677              		@ frame_needed = 0, uses_anonymous_args = 0
 2678 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2679 0002 0368     		ldr	r3, [r0]
ARM GAS  /tmp/ccx5mP1m.s 			page 48


 2680 0004 0446     		mov	r4, r0
 2681 0006 0E46     		mov	r6, r1
 2682 0008 D3F86805 		ldr	r0, [r3, #1384]
 2683 000c 1746     		mov	r7, r2
 2684 000e 0023     		movs	r3, #0
 2685 0010 0A46     		mov	r2, r1
 2686 0012 1C49     		ldr	r1, .L463
 2687 0014 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2688 0018 0546     		mov	r5, r0
 2689 001a 60B3     		cbz	r0, .L456
 2690 001c 0026     		movs	r6, #0
 2691 001e 0023     		movs	r3, #0
 2692 0020 226C     		ldr	r2, [r4, #64]
 2693 0022 1948     		ldr	r0, .L463+4
 2694 0024 1168     		ldr	r1, [r2]
 2695 0026 8068     		ldr	r0, [r0, #8]
 2696 0028 8A68     		ldr	r2, [r1, #8]
 2697 002a 0E63     		str	r6, [r1, #48]
 2698 002c 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 2699 002e 66F38611 		bfi	r1, r6, #6, #1
 2700 0032 1176     		strb	r1, [r2, #24]
 2701 0034 C4F81C32 		str	r3, [r4, #540]	@ float
 2702 0038 C4F82032 		str	r3, [r4, #544]	@ float
 2703 003c C4F82432 		str	r3, [r4, #548]	@ float
 2704 0040 C4F82832 		str	r3, [r4, #552]	@ float
 2705 0044 C4F82C32 		str	r3, [r4, #556]	@ float
 2706 0048 C4F83032 		str	r3, [r4, #560]	@ float
 2707 004c C4F83432 		str	r3, [r4, #564]	@ float
 2708 0050 C4F83832 		str	r3, [r4, #568]	@ float
 2709 0054 FFF7FEFF 		bl	_ZN4Move22ResetExtruderPositionsEv
 2710 0058 D4F85C02 		ldr	r0, [r4, #604]
 2711 005c 08B1     		cbz	r0, .L457
 2712 005e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2713              	.L457:
 2714 0062 0022     		movs	r2, #0
 2715 0064 0023     		movs	r3, #0
 2716 0066 C4F85C52 		str	r5, [r4, #604]
 2717 006a C4F86022 		str	r2, [r4, #608]
 2718 006e C4F80831 		str	r3, [r4, #264]	@ float
 2719 0072 0120     		movs	r0, #1
 2720 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2721              	.L456:
 2722 0076 3246     		mov	r2, r6
 2723 0078 3846     		mov	r0, r7
 2724 007a 0449     		ldr	r1, .L463+8
 2725 007c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2726 0080 2846     		mov	r0, r5
 2727 0082 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2728              	.L464:
 2729              		.align	2
 2730              	.L463:
 2731 0084 00000000 		.word	.LC60
 2732 0088 00000000 		.word	reprap
 2733 008c 0C000000 		.word	.LC61
 2734              		.size	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef, .-_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 2735              		.section	.text._ZN6GCodes13StartPrintingEb,"ax",%progbits
 2736              		.align	1
ARM GAS  /tmp/ccx5mP1m.s 			page 49


 2737              		.p2align 2,,3
 2738              		.global	_ZN6GCodes13StartPrintingEb
 2739              		.syntax unified
 2740              		.thumb
 2741              		.thumb_func
 2742              		.fpu softvfp
 2743              		.type	_ZN6GCodes13StartPrintingEb, %function
 2744              	_ZN6GCodes13StartPrintingEb:
 2745              		@ args = 0, pretend = 0, frame = 0
 2746              		@ frame_needed = 0, uses_anonymous_args = 0
 2747 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2748 0004 036C     		ldr	r3, [r0, #64]
 2749 0006 82B0     		sub	sp, sp, #8
 2750 0008 0446     		mov	r4, r0
 2751 000a 1868     		ldr	r0, [r3]
 2752 000c 0E46     		mov	r6, r1
 2753 000e FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2754 0012 0546     		mov	r5, r0
 2755 0014 8068     		ldr	r0, [r0, #8]
 2756 0016 18B1     		cbz	r0, .L466
 2757 0018 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2758 001c 0023     		movs	r3, #0
 2759 001e AB60     		str	r3, [r5, #8]
 2760              	.L466:
 2761 0020 0027     		movs	r7, #0
 2762 0022 D4F85C22 		ldr	r2, [r4, #604]
 2763 0026 236C     		ldr	r3, [r4, #64]
 2764 0028 AA60     		str	r2, [r5, #8]
 2765 002a 1868     		ldr	r0, [r3]
 2766 002c C4F85C72 		str	r7, [r4, #604]
 2767 0030 D4F80C80 		ldr	r8, [r4, #12]
 2768 0034 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2769 0038 134D     		ldr	r5, .L479
 2770 003a 00F10801 		add	r1, r0, #8
 2771 003e 4046     		mov	r0, r8
 2772 0040 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 2773 0044 E869     		ldr	r0, [r5, #28]
 2774 0046 84F83C74 		strb	r7, [r4, #1084]
 2775 004a FFF7FEFF 		bl	_ZN12PrintMonitor12StartedPrintEv
 2776 004e E969     		ldr	r1, [r5, #28]
 2777 0050 94F83073 		ldrb	r7, [r4, #816]	@ zero_extendqisi2
 2778 0054 0D4A     		ldr	r2, .L479+4
 2779 0056 0E4D     		ldr	r5, .L479+8
 2780 0058 0B7B     		ldrb	r3, [r1, #12]	@ zero_extendqisi2
 2781 005a 2068     		ldr	r0, [r4]
 2782 005c 002F     		cmp	r7, #0
 2783 005e 18BF     		it	ne
 2784 0060 2A46     		movne	r2, r5
 2785 0062 0BB1     		cbz	r3, .L468
 2786 0064 01F58473 		add	r3, r1, #264
 2787              	.L468:
 2788 0068 8021     		movs	r1, #128
 2789 006a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2790 006e 46B1     		cbz	r6, .L465
 2791 0070 0022     		movs	r2, #0
 2792 0072 236C     		ldr	r3, [r4, #64]
 2793 0074 2046     		mov	r0, r4
ARM GAS  /tmp/ccx5mP1m.s 			page 50


 2794 0076 1968     		ldr	r1, [r3]
 2795 0078 1346     		mov	r3, r2
 2796 007a 0092     		str	r2, [sp]
 2797 007c 054A     		ldr	r2, .L479+12
 2798 007e FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2799              	.L465:
 2800 0082 02B0     		add	sp, sp, #8
 2801              		@ sp needed
 2802 0084 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2803              	.L480:
 2804              		.align	2
 2805              	.L479:
 2806 0088 00000000 		.word	reprap
 2807 008c 00000000 		.word	.LC62
 2808 0090 1C000000 		.word	.LC63
 2809 0094 44000000 		.word	.LC64
 2810              		.size	_ZN6GCodes13StartPrintingEb, .-_ZN6GCodes13StartPrintingEb
 2811              		.section	.text._ZN6GCodes11DoDwellTimeER11GCodeBufferm,"ax",%progbits
 2812              		.align	1
 2813              		.p2align 2,,3
 2814              		.global	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 2815              		.syntax unified
 2816              		.thumb
 2817              		.thumb_func
 2818              		.fpu softvfp
 2819              		.type	_ZN6GCodes11DoDwellTimeER11GCodeBufferm, %function
 2820              	_ZN6GCodes11DoDwellTimeER11GCodeBufferm:
 2821              		@ args = 0, pretend = 0, frame = 0
 2822              		@ frame_needed = 0, uses_anonymous_args = 0
 2823 0000 38B5     		push	{r3, r4, r5, lr}
 2824 0002 0C46     		mov	r4, r1
 2825 0004 1546     		mov	r5, r2
 2826 0006 FFF7FEFF 		bl	millis
 2827 000a 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 2828 000c 3BB1     		cbz	r3, .L482
 2829 000e 2368     		ldr	r3, [r4]
 2830 0010 C01A     		subs	r0, r0, r3
 2831 0012 A842     		cmp	r0, r5
 2832 0014 08D3     		bcc	.L484
 2833 0016 0023     		movs	r3, #0
 2834 0018 0120     		movs	r0, #1
 2835 001a 2371     		strb	r3, [r4, #4]
 2836 001c 38BD     		pop	{r3, r4, r5, pc}
 2837              	.L482:
 2838 001e 0122     		movs	r2, #1
 2839 0020 2060     		str	r0, [r4]
 2840 0022 2271     		strb	r2, [r4, #4]
 2841 0024 1846     		mov	r0, r3
 2842 0026 38BD     		pop	{r3, r4, r5, pc}
 2843              	.L484:
 2844 0028 0020     		movs	r0, #0
 2845 002a 38BD     		pop	{r3, r4, r5, pc}
 2846              		.size	_ZN6GCodes11DoDwellTimeER11GCodeBufferm, .-_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 2847              		.section	.text._ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef,"ax",%progbits
 2848              		.align	1
 2849              		.p2align 2,,3
 2850              		.global	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef
ARM GAS  /tmp/ccx5mP1m.s 			page 51


 2851              		.syntax unified
 2852              		.thumb
 2853              		.thumb_func
 2854              		.fpu softvfp
 2855              		.type	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef, %function
 2856              	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef:
 2857              		@ args = 0, pretend = 0, frame = 120
 2858              		@ frame_needed = 0, uses_anonymous_args = 0
 2859 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2860 0004 0C46     		mov	r4, r1
 2861 0006 A5B0     		sub	sp, sp, #148
 2862 0008 0746     		mov	r7, r0
 2863 000a 5021     		movs	r1, #80
 2864 000c 2046     		mov	r0, r4
 2865 000e 9046     		mov	r8, r2
 2866 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2867 0014 0546     		mov	r5, r0
 2868 0016 50B9     		cbnz	r0, .L487
 2869 0018 5321     		movs	r1, #83
 2870 001a 2046     		mov	r0, r4
 2871 001c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2872 0020 0028     		cmp	r0, #0
 2873 0022 55D1     		bne	.L540
 2874              	.L538:
 2875 0024 0025     		movs	r5, #0
 2876              	.L523:
 2877 0026 2846     		mov	r0, r5
 2878 0028 25B0     		add	sp, sp, #148
 2879              		@ sp needed
 2880 002a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2881              	.L487:
 2882 002e 2046     		mov	r0, r4
 2883 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2884 0034 B0F1000A 		subs	r10, r0, #0
 2885 0038 52DB     		blt	.L541
 2886 003a 0023     		movs	r3, #0
 2887 003c 5321     		movs	r1, #83
 2888 003e 2046     		mov	r0, r4
 2889 0040 8DF86C30 		strb	r3, [sp, #108]
 2890 0044 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2891 0048 0646     		mov	r6, r0
 2892 004a 58B1     		cbz	r0, .L491
 2893 004c 2122     		movs	r2, #33
 2894 004e 1BAB     		add	r3, sp, #108
 2895 0050 15A9     		add	r1, sp, #84
 2896 0052 2046     		mov	r0, r4
 2897 0054 1692     		str	r2, [sp, #88]
 2898 0056 1593     		str	r3, [sp, #84]
 2899 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 2900 005c 0028     		cmp	r0, #0
 2901 005e 00F00781 		beq	.L542
 2902 0062 0646     		mov	r6, r0
 2903              	.L491:
 2904 0064 D7F80032 		ldr	r3, [r7, #512]
 2905 0068 4421     		movs	r1, #68
 2906 006a 2046     		mov	r0, r4
 2907 006c 0893     		str	r3, [sp, #32]
ARM GAS  /tmp/ccx5mP1m.s 			page 52


 2908 006e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2909 0072 8646     		mov	lr, r0
 2910 0074 0028     		cmp	r0, #0
 2911 0076 40F0AB80 		bne	.L543
 2912 007a 0890     		str	r0, [sp, #32]
 2913              	.L493:
 2914 007c 0423     		movs	r3, #4
 2915 007e 4821     		movs	r1, #72
 2916 0080 2046     		mov	r0, r4
 2917 0082 0993     		str	r3, [sp, #36]
 2918 0084 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2919 0088 8646     		mov	lr, r0
 2920 008a 0028     		cmp	r0, #0
 2921 008c 40F09880 		bne	.L544
 2922 0090 0990     		str	r0, [sp, #36]
 2923              	.L495:
 2924 0092 5821     		movs	r1, #88
 2925 0094 2046     		mov	r0, r4
 2926 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2927 009a 0028     		cmp	r0, #0
 2928 009c 5BD1     		bne	.L545
 2929 009e 5921     		movs	r1, #89
 2930 00a0 2046     		mov	r0, r4
 2931 00a2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2932 00a6 00BB     		cbnz	r0, .L546
 2933 00a8 4621     		movs	r1, #70
 2934 00aa 2046     		mov	r0, r4
 2935 00ac FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2936 00b0 0028     		cmp	r0, #0
 2937 00b2 40F09580 		bne	.L547
 2938 00b6 002E     		cmp	r6, #0
 2939 00b8 40F0EF80 		bne	.L548
 2940 00bc 3546     		mov	r5, r6
 2941 00be 4246     		mov	r2, r8
 2942 00c0 5146     		mov	r1, r10
 2943 00c2 7B48     		ldr	r0, .L550
 2944 00c4 FFF7FEFF 		bl	_ZNK6RepRap9PrintToolEiRK9StringRef
 2945 00c8 2846     		mov	r0, r5
 2946 00ca 25B0     		add	sp, sp, #148
 2947              		@ sp needed
 2948 00cc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2949              	.L540:
 2950 00d0 2046     		mov	r0, r4
 2951 00d2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2952 00d6 2063     		str	r0, [r4, #48]
 2953 00d8 2846     		mov	r0, r5
 2954 00da 25B0     		add	sp, sp, #148
 2955              		@ sp needed
 2956 00dc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2957              	.L541:
 2958 00e0 4046     		mov	r0, r8
 2959 00e2 7449     		ldr	r1, .L550+4
 2960 00e4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2961 00e8 9DE7     		b	.L523
 2962              	.L546:
 2963 00ea 4FF00109 		mov	r9, #1
 2964 00ee 15AB     		add	r3, sp, #84
ARM GAS  /tmp/ccx5mP1m.s 			page 53


 2965 00f0 0793     		str	r3, [sp, #28]
 2966 00f2 0DF1280B 		add	fp, sp, #40
 2967              	.L514:
 2968 00f6 D7F8FC61 		ldr	r6, [r7, #508]
 2969 00fa 0799     		ldr	r1, [sp, #28]
 2970 00fc 0023     		movs	r3, #0
 2971 00fe 5A46     		mov	r2, fp
 2972 0100 2046     		mov	r0, r4
 2973 0102 0A96     		str	r6, [sp, #40]
 2974 0104 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2975 0108 0A99     		ldr	r1, [sp, #40]
 2976 010a 0029     		cmp	r1, #0
 2977 010c 00F0CA80 		beq	.L520
 2978 0110 079B     		ldr	r3, [sp, #28]
 2979 0112 0020     		movs	r0, #0
 2980 0114 1A46     		mov	r2, r3
 2981 0116 4FF0010E 		mov	lr, #1
 2982 011a 03EB8101 		add	r1, r3, r1, lsl #2
 2983              	.L503:
 2984 011e 52F8043B 		ldr	r3, [r2], #4
 2985 0122 1F2B     		cmp	r3, #31
 2986 0124 9CBF     		itt	ls
 2987 0126 0EFA03F3 		lslls	r3, lr, r3
 2988 012a 1843     		orrls	r0, r0, r3
 2989 012c 9142     		cmp	r1, r2
 2990 012e F6D1     		bne	.L503
 2991              	.L501:
 2992 0130 0123     		movs	r3, #1
 2993 0132 D7F8FC71 		ldr	r7, [r7, #508]
 2994 0136 03FA07F7 		lsl	r7, r3, r7
 2995 013a 013F     		subs	r7, r7, #1
 2996 013c 0740     		ands	r7, r7, r0
 2997              	.L500:
 2998 013e 17EA090F 		tst	r7, r9
 2999 0142 00F0A280 		beq	.L504
 3000 0146 4046     		mov	r0, r8
 3001 0148 5B49     		ldr	r1, .L550+8
 3002 014a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3003 014e 2846     		mov	r0, r5
 3004 0150 25B0     		add	sp, sp, #148
 3005              		@ sp needed
 3006 0152 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3007              	.L545:
 3008 0156 15AA     		add	r2, sp, #84
 3009 0158 1646     		mov	r6, r2
 3010 015a D7F8FC31 		ldr	r3, [r7, #508]
 3011 015e 0DF1900B 		add	fp, sp, #144
 3012 0162 4BF8683D 		str	r3, [fp, #-104]!
 3013 0166 0792     		str	r2, [sp, #28]
 3014 0168 3146     		mov	r1, r6
 3015 016a 5A46     		mov	r2, fp
 3016 016c 0023     		movs	r3, #0
 3017 016e 2046     		mov	r0, r4
 3018 0170 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3019 0174 0A99     		ldr	r1, [sp, #40]
 3020 0176 0029     		cmp	r1, #0
 3021 0178 00F09680 		beq	.L518
ARM GAS  /tmp/ccx5mP1m.s 			page 54


 3022 017c 3246     		mov	r2, r6
 3023 017e 4FF0000E 		mov	lr, #0
 3024 0182 0120     		movs	r0, #1
 3025 0184 06EB8101 		add	r1, r6, r1, lsl #2
 3026              	.L499:
 3027 0188 52F8043B 		ldr	r3, [r2], #4
 3028 018c 1F2B     		cmp	r3, #31
 3029 018e 9CBF     		itt	ls
 3030 0190 00FA03F3 		lslls	r3, r0, r3
 3031 0194 4EEA030E 		orrls	lr, lr, r3
 3032 0198 9142     		cmp	r1, r2
 3033 019a F5D1     		bne	.L499
 3034              	.L497:
 3035 019c 4FF00109 		mov	r9, #1
 3036 01a0 D7F8FC31 		ldr	r3, [r7, #508]
 3037 01a4 5921     		movs	r1, #89
 3038 01a6 09FA03F9 		lsl	r9, r9, r3
 3039 01aa 09F1FF39 		add	r9, r9, #-1
 3040 01ae 2046     		mov	r0, r4
 3041 01b0 09EA0E09 		and	r9, r9, lr
 3042 01b4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3043 01b8 0028     		cmp	r0, #0
 3044 01ba 9CD1     		bne	.L514
 3045 01bc 0227     		movs	r7, #2
 3046 01be BEE7     		b	.L500
 3047              	.L544:
 3048 01c0 0023     		movs	r3, #0
 3049 01c2 09AA     		add	r2, sp, #36
 3050 01c4 0BA9     		add	r1, sp, #44
 3051 01c6 2046     		mov	r0, r4
 3052 01c8 7646     		mov	r6, lr
 3053 01ca FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 3054 01ce 60E7     		b	.L495
 3055              	.L543:
 3056 01d0 0023     		movs	r3, #0
 3057 01d2 08AA     		add	r2, sp, #32
 3058 01d4 0FA9     		add	r1, sp, #60
 3059 01d6 2046     		mov	r0, r4
 3060 01d8 7646     		mov	r6, lr
 3061 01da FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 3062 01de 4DE7     		b	.L493
 3063              	.L547:
 3064 01e0 0227     		movs	r7, #2
 3065 01e2 4FF00109 		mov	r9, #1
 3066 01e6 15AB     		add	r3, sp, #84
 3067 01e8 0793     		str	r3, [sp, #28]
 3068 01ea 0DF1280B 		add	fp, sp, #40
 3069              	.L516:
 3070 01ee 4FF0020E 		mov	lr, #2
 3071 01f2 079E     		ldr	r6, [sp, #28]
 3072 01f4 5A46     		mov	r2, fp
 3073 01f6 2046     		mov	r0, r4
 3074 01f8 0023     		movs	r3, #0
 3075 01fa 3146     		mov	r1, r6
 3076 01fc CDF828E0 		str	lr, [sp, #40]
 3077 0200 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3078 0204 0A9A     		ldr	r2, [sp, #40]
ARM GAS  /tmp/ccx5mP1m.s 			page 55


 3079 0206 002A     		cmp	r2, #0
 3080 0208 50D0     		beq	.L521
 3081 020a 0021     		movs	r1, #0
 3082 020c 0120     		movs	r0, #1
 3083 020e 06EB8202 		add	r2, r6, r2, lsl #2
 3084              	.L508:
 3085 0212 56F8043B 		ldr	r3, [r6], #4
 3086 0216 1F2B     		cmp	r3, #31
 3087 0218 9CBF     		itt	ls
 3088 021a 00FA03F3 		lslls	r3, r0, r3
 3089 021e 1943     		orrls	r1, r1, r3
 3090 0220 9642     		cmp	r6, r2
 3091 0222 F6D1     		bne	.L508
 3092 0224 01F00304 		and	r4, r1, #3
 3093              	.L509:
 3094 0228 5146     		mov	r1, r10
 3095 022a 2148     		ldr	r0, .L550
 3096 022c FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 3097 0230 0146     		mov	r1, r0
 3098 0232 1F48     		ldr	r0, .L550
 3099 0234 FFF7FEFF 		bl	_ZN6RepRap10DeleteToolEP4Tool
 3100 0238 089B     		ldr	r3, [sp, #32]
 3101 023a 099A     		ldr	r2, [sp, #36]
 3102 023c 012B     		cmp	r3, #1
 3103 023e 01D1     		bne	.L512
 3104 0240 012A     		cmp	r2, #1
 3105 0242 1BD0     		beq	.L549
 3106              	.L512:
 3107 0244 0BA9     		add	r1, sp, #44
 3108 0246 0192     		str	r2, [sp, #4]
 3109 0248 0091     		str	r1, [sp]
 3110 024a CDF81480 		str	r8, [sp, #20]
 3111 024e 0494     		str	r4, [sp, #16]
 3112 0250 0397     		str	r7, [sp, #12]
 3113 0252 CDF80890 		str	r9, [sp, #8]
 3114 0256 5046     		mov	r0, r10
 3115 0258 0FAA     		add	r2, sp, #60
 3116 025a 1BA9     		add	r1, sp, #108
 3117 025c FFF7FEFF 		bl	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef
 3118 0260 0028     		cmp	r0, #0
 3119 0262 3FF4E0AE 		beq	.L523
 3120 0266 0146     		mov	r1, r0
 3121 0268 1148     		ldr	r0, .L550
 3122 026a FFF7FEFF 		bl	_ZN6RepRap7AddToolEP4Tool
 3123 026e D9E6     		b	.L538
 3124              	.L542:
 3125 0270 4046     		mov	r0, r8
 3126 0272 1249     		ldr	r1, .L550+12
 3127 0274 3546     		mov	r5, r6
 3128 0276 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3129 027a D4E6     		b	.L523
 3130              	.L549:
 3131 027c 0F99     		ldr	r1, [sp, #60]
 3132 027e 0131     		adds	r1, r1, #1
 3133 0280 E0D1     		bne	.L512
 3134 0282 0B99     		ldr	r1, [sp, #44]
 3135 0284 0131     		adds	r1, r1, #1
ARM GAS  /tmp/ccx5mP1m.s 			page 56


 3136 0286 DDD1     		bne	.L512
 3137 0288 CCE6     		b	.L538
 3138              	.L504:
 3139 028a 4621     		movs	r1, #70
 3140 028c 2046     		mov	r0, r4
 3141 028e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3142 0292 0028     		cmp	r0, #0
 3143 0294 ABD1     		bne	.L516
 3144 0296 0124     		movs	r4, #1
 3145 0298 C6E7     		b	.L509
 3146              	.L548:
 3147 029a 4FF00109 		mov	r9, #1
 3148 029e 0227     		movs	r7, #2
 3149 02a0 4C46     		mov	r4, r9
 3150 02a2 C1E7     		b	.L509
 3151              	.L520:
 3152 02a4 0846     		mov	r0, r1
 3153 02a6 43E7     		b	.L501
 3154              	.L518:
 3155 02a8 8E46     		mov	lr, r1
 3156 02aa 77E7     		b	.L497
 3157              	.L521:
 3158 02ac 1446     		mov	r4, r2
 3159 02ae BBE7     		b	.L509
 3160              	.L551:
 3161              		.align	2
 3162              	.L550:
 3163 02b0 00000000 		.word	reprap
 3164 02b4 00000000 		.word	.LC65
 3165 02b8 34000000 		.word	.LC67
 3166 02bc 20000000 		.word	.LC66
 3167              		.size	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef, .-_ZN6GCodes10ManageToolER11GCodeBufferRK
 3168              		.section	.text._ZN6GCodes13DisableDrivesEv,"ax",%progbits
 3169              		.align	1
 3170              		.p2align 2,,3
 3171              		.global	_ZN6GCodes13DisableDrivesEv
 3172              		.syntax unified
 3173              		.thumb
 3174              		.thumb_func
 3175              		.fpu softvfp
 3176              		.type	_ZN6GCodes13DisableDrivesEv, %function
 3177              	_ZN6GCodes13DisableDrivesEv:
 3178              		@ args = 0, pretend = 0, frame = 0
 3179              		@ frame_needed = 0, uses_anonymous_args = 0
 3180 0000 38B5     		push	{r3, r4, r5, lr}
 3181 0002 0546     		mov	r5, r0
 3182 0004 0024     		movs	r4, #0
 3183              	.L553:
 3184 0006 2146     		mov	r1, r4
 3185 0008 2868     		ldr	r0, [r5]
 3186 000a 0134     		adds	r4, r4, #1
 3187 000c FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 3188 0010 092C     		cmp	r4, #9
 3189 0012 F8D1     		bne	.L553
 3190 0014 0023     		movs	r3, #0
 3191 0016 C5F88032 		str	r3, [r5, #640]
 3192 001a 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  /tmp/ccx5mP1m.s 			page 57


 3193              		.size	_ZN6GCodes13DisableDrivesEv, .-_ZN6GCodes13DisableDrivesEv
 3194              		.global	__aeabi_fcmpun
 3195              		.section	.text._ZNK6GCodes19ChangeMicrosteppingEjjb,"ax",%progbits
 3196              		.align	1
 3197              		.p2align 2,,3
 3198              		.global	_ZNK6GCodes19ChangeMicrosteppingEjjb
 3199              		.syntax unified
 3200              		.thumb
 3201              		.thumb_func
 3202              		.fpu softvfp
 3203              		.type	_ZNK6GCodes19ChangeMicrosteppingEjjb, %function
 3204              	_ZNK6GCodes19ChangeMicrosteppingEjjb:
 3205              		@ args = 0, pretend = 0, frame = 8
 3206              		@ frame_needed = 0, uses_anonymous_args = 0
 3207 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3208 0004 82B0     		sub	sp, sp, #8
 3209 0006 0446     		mov	r4, r0
 3210 0008 1746     		mov	r7, r2
 3211 000a 0068     		ldr	r0, [r0]
 3212 000c 0DF10702 		add	r2, sp, #7
 3213 0010 1D46     		mov	r5, r3
 3214 0012 0E46     		mov	r6, r1
 3215 0014 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 3216 0018 2B46     		mov	r3, r5
 3217 001a 8046     		mov	r8, r0
 3218 001c 3A46     		mov	r2, r7
 3219 001e 3146     		mov	r1, r6
 3220 0020 2068     		ldr	r0, [r4]
 3221 0022 FFF7FEFF 		bl	_ZN8Platform16SetMicrosteppingEjib
 3222 0026 0546     		mov	r5, r0
 3223 0028 F0B1     		cbz	r0, .L562
 3224 002a 2468     		ldr	r4, [r4]
 3225 002c 3846     		mov	r0, r7
 3226 002e 04EB8604 		add	r4, r4, r6, lsl #2
 3227 0032 FFF7FEFF 		bl	__aeabi_ui2f
 3228 0036 D4F82411 		ldr	r1, [r4, #292]	@ float
 3229 003a FFF7FEFF 		bl	__aeabi_fmul
 3230 003e 0646     		mov	r6, r0
 3231 0040 4046     		mov	r0, r8
 3232 0042 FFF7FEFF 		bl	__aeabi_ui2f
 3233 0046 0146     		mov	r1, r0
 3234 0048 3046     		mov	r0, r6
 3235 004a FFF7FEFF 		bl	__aeabi_fdiv
 3236 004e 0146     		mov	r1, r0
 3237 0050 0646     		mov	r6, r0
 3238 0052 FFF7FEFF 		bl	__aeabi_fcmpun
 3239 0056 28B9     		cbnz	r0, .L560
 3240 0058 4FF07E51 		mov	r1, #1065353216
 3241 005c 3046     		mov	r0, r6
 3242 005e FFF7FEFF 		bl	__aeabi_fcmpgt
 3243 0062 28B1     		cbz	r0, .L567
 3244              	.L560:
 3245 0064 C4F82461 		str	r6, [r4, #292]	@ float
 3246              	.L562:
 3247 0068 2846     		mov	r0, r5
 3248 006a 02B0     		add	sp, sp, #8
 3249              		@ sp needed
ARM GAS  /tmp/ccx5mP1m.s 			page 58


 3250 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3251              	.L567:
 3252 0070 4FF07E56 		mov	r6, #1065353216
 3253 0074 F6E7     		b	.L560
 3254              		.size	_ZNK6GCodes19ChangeMicrosteppingEjjb, .-_ZNK6GCodes19ChangeMicrosteppingEjjb
 3255 0076 00BF     		.section	.text._ZN6GCodes17SetMappedFanSpeedEv,"ax",%progbits
 3256              		.align	1
 3257              		.p2align 2,,3
 3258              		.global	_ZN6GCodes17SetMappedFanSpeedEv
 3259              		.syntax unified
 3260              		.thumb
 3261              		.thumb_func
 3262              		.fpu softvfp
 3263              		.type	_ZN6GCodes17SetMappedFanSpeedEv, %function
 3264              	_ZN6GCodes17SetMappedFanSpeedEv:
 3265              		@ args = 0, pretend = 0, frame = 0
 3266              		@ frame_needed = 0, uses_anonymous_args = 0
 3267 0000 38B5     		push	{r3, r4, r5, lr}
 3268 0002 104B     		ldr	r3, .L578
 3269 0004 D96A     		ldr	r1, [r3, #44]
 3270 0006 31B9     		cbnz	r1, .L569
 3271 0008 BDE83840 		pop	{r3, r4, r5, lr}
 3272 000c D0F88C22 		ldr	r2, [r0, #652]	@ float
 3273 0010 0068     		ldr	r0, [r0]
 3274 0012 FFF7FEBF 		b	_ZN8Platform11SetFanValueEjf
 3275              	.L569:
 3276 0016 4D6F     		ldr	r5, [r1, #116]
 3277 0018 0446     		mov	r4, r0
 3278 001a EA07     		lsls	r2, r5, #31
 3279 001c 02D4     		bmi	.L576
 3280              	.L570:
 3281 001e AB07     		lsls	r3, r5, #30
 3282 0020 07D4     		bmi	.L577
 3283 0022 38BD     		pop	{r3, r4, r5, pc}
 3284              	.L576:
 3285 0024 D0F88C22 		ldr	r2, [r0, #652]	@ float
 3286 0028 0021     		movs	r1, #0
 3287 002a 0068     		ldr	r0, [r0]
 3288 002c FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 3289 0030 F5E7     		b	.L570
 3290              	.L577:
 3291 0032 D4F88C22 		ldr	r2, [r4, #652]	@ float
 3292 0036 2068     		ldr	r0, [r4]
 3293 0038 0121     		movs	r1, #1
 3294 003a BDE83840 		pop	{r3, r4, r5, lr}
 3295 003e FFF7FEBF 		b	_ZN8Platform11SetFanValueEjf
 3296              	.L579:
 3297 0042 00BF     		.align	2
 3298              	.L578:
 3299 0044 00000000 		.word	reprap
 3300              		.size	_ZN6GCodes17SetMappedFanSpeedEv, .-_ZN6GCodes17SetMappedFanSpeedEv
 3301              		.section	.text._ZN6GCodes17SetMappedFanSpeedEf,"ax",%progbits
 3302              		.align	1
 3303              		.p2align 2,,3
 3304              		.global	_ZN6GCodes17SetMappedFanSpeedEf
 3305              		.syntax unified
 3306              		.thumb
ARM GAS  /tmp/ccx5mP1m.s 			page 59


 3307              		.thumb_func
 3308              		.fpu softvfp
 3309              		.type	_ZN6GCodes17SetMappedFanSpeedEf, %function
 3310              	_ZN6GCodes17SetMappedFanSpeedEf:
 3311              		@ args = 0, pretend = 0, frame = 0
 3312              		@ frame_needed = 0, uses_anonymous_args = 0
 3313              		@ link register save eliminated.
 3314 0000 C0F88C12 		str	r1, [r0, #652]	@ float
 3315 0004 FFF7FEBF 		b	_ZN6GCodes17SetMappedFanSpeedEv
 3316              		.size	_ZN6GCodes17SetMappedFanSpeedEf, .-_ZN6GCodes17SetMappedFanSpeedEf
 3317              		.section	.text._ZN6GCodes13SaveFanSpeedsEv,"ax",%progbits
 3318              		.align	1
 3319              		.p2align 2,,3
 3320              		.global	_ZN6GCodes13SaveFanSpeedsEv
 3321              		.syntax unified
 3322              		.thumb
 3323              		.thumb_func
 3324              		.fpu softvfp
 3325              		.type	_ZN6GCodes13SaveFanSpeedsEv, %function
 3326              	_ZN6GCodes13SaveFanSpeedsEv:
 3327              		@ args = 0, pretend = 0, frame = 0
 3328              		@ frame_needed = 0, uses_anonymous_args = 0
 3329 0000 10B5     		push	{r4, lr}
 3330 0002 0021     		movs	r1, #0
 3331 0004 0446     		mov	r4, r0
 3332 0006 0068     		ldr	r0, [r0]
 3333 0008 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 3334 000c 0121     		movs	r1, #1
 3335 000e C4F88402 		str	r0, [r4, #644]	@ float
 3336 0012 2068     		ldr	r0, [r4]
 3337 0014 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 3338 0018 D4F88C32 		ldr	r3, [r4, #652]	@ float
 3339 001c C4F88802 		str	r0, [r4, #648]	@ float
 3340 0020 C4F89032 		str	r3, [r4, #656]	@ float
 3341 0024 10BD     		pop	{r4, pc}
 3342              		.size	_ZN6GCodes13SaveFanSpeedsEv, .-_ZN6GCodes13SaveFanSpeedsEv
 3343 0026 00BF     		.section	.text._ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc,"ax",%progbits
 3344              		.align	1
 3345              		.p2align 2,,3
 3346              		.global	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 3347              		.syntax unified
 3348              		.thumb
 3349              		.thumb_func
 3350              		.fpu softvfp
 3351              		.type	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc, %function
 3352              	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc:
 3353              		@ args = 0, pretend = 0, frame = 8
 3354              		@ frame_needed = 0, uses_anonymous_args = 0
 3355 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 3356 0002 8C68     		ldr	r4, [r1, #8]
 3357 0004 85B0     		sub	sp, sp, #20
 3358 0006 247E     		ldrb	r4, [r4, #24]	@ zero_extendqisi2
 3359 0008 6407     		lsls	r4, r4, #29
 3360 000a 27D4     		bmi	.L584
 3361 000c 046C     		ldr	r4, [r0, #64]
 3362 000e 2468     		ldr	r4, [r4]
 3363 0010 A142     		cmp	r1, r4
ARM GAS  /tmp/ccx5mP1m.s 			page 60


 3364 0012 23D0     		beq	.L584
 3365              	.L585:
 3366 0014 846C     		ldr	r4, [r0, #72]
 3367 0016 2468     		ldr	r4, [r4]
 3368 0018 A142     		cmp	r1, r4
 3369 001a 00F08480 		beq	.L639
 3370 001e 1E46     		mov	r6, r3
 3371 0020 436C     		ldr	r3, [r0, #68]
 3372 0022 1746     		mov	r7, r2
 3373 0024 1B68     		ldr	r3, [r3]
 3374 0026 0546     		mov	r5, r0
 3375 0028 9942     		cmp	r1, r3
 3376 002a 0C46     		mov	r4, r1
 3377 002c 1BD0     		beq	.L587
 3378 002e C36B     		ldr	r3, [r0, #60]
 3379 0030 1B68     		ldr	r3, [r3]
 3380 0032 9942     		cmp	r1, r3
 3381 0034 17D0     		beq	.L587
 3382 0036 91F84C30 		ldrb	r3, [r1, #76]	@ zero_extendqisi2
 3383 003a 898E     		ldrh	r1, [r1, #52]
 3384 003c 4D2B     		cmp	r3, #77
 3385 003e 34D1     		bne	.L593
 3386 0040 0023     		movs	r3, #0
 3387              	.L615:
 3388 0042 40F2E630 		movw	r0, #998
 3389 0046 226C     		ldr	r2, [r4, #64]
 3390 0048 8242     		cmp	r2, r0
 3391 004a 3AD0     		beq	.L640
 3392 004c 052B     		cmp	r3, #5
 3393 004e 00F28280 		bhi	.L624
 3394 0052 DFE803F0 		tbb	[pc, r3]
 3395              	.L611:
 3396 0056 2A       		.byte	(.L593-.L611)/2
 3397 0057 2A       		.byte	(.L593-.L611)/2
 3398 0058 47       		.byte	(.L601-.L611)/2
 3399 0059 22       		.byte	(.L617-.L611)/2
 3400 005a 20       		.byte	(.L618-.L611)/2
 3401 005b 18       		.byte	(.L619-.L611)/2
 3402              		.p2align 1
 3403              	.L584:
 3404 005c 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 3405 005e 002C     		cmp	r4, #0
 3406 0060 D8D1     		bne	.L585
 3407              	.L583:
 3408 0062 05B0     		add	sp, sp, #20
 3409              		@ sp needed
 3410 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
 3411              	.L587:
 3412 0066 2868     		ldr	r0, [r5]
 3413 0068 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 3414 006c 94F84C20 		ldrb	r2, [r4, #76]	@ zero_extendqisi2
 3415 0070 0346     		mov	r3, r0
 3416 0072 4D2A     		cmp	r2, #77
 3417 0074 A18E     		ldrh	r1, [r4, #52]
 3418 0076 E4D0     		beq	.L615
 3419 0078 0528     		cmp	r0, #5
 3420 007a 6CD8     		bhi	.L624
ARM GAS  /tmp/ccx5mP1m.s 			page 61


 3421 007c DFE800F0 		tbb	[pc, r0]
 3422              	.L594:
 3423 0080 15       		.byte	(.L593-.L594)/2
 3424 0081 15       		.byte	(.L593-.L594)/2
 3425 0082 0F       		.byte	(.L595-.L594)/2
 3426 0083 0D       		.byte	(.L617-.L594)/2
 3427 0084 0B       		.byte	(.L618-.L594)/2
 3428 0085 03       		.byte	(.L619-.L594)/2
 3429              		.p2align 1
 3430              	.L619:
 3431 0086 354B     		ldr	r3, .L645
 3432              	.L592:
 3433 0088 2868     		ldr	r0, [r5]
 3434 008a 354A     		ldr	r2, .L645+4
 3435              	.L633:
 3436 008c 05B0     		add	sp, sp, #20
 3437              		@ sp needed
 3438 008e BDE8F040 		pop	{r4, r5, r6, r7, lr}
 3439 0092 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 3440              	.L618:
 3441 0096 334B     		ldr	r3, .L645+8
 3442 0098 F6E7     		b	.L592
 3443              	.L617:
 3444 009a 334B     		ldr	r3, .L645+12
 3445 009c F4E7     		b	.L592
 3446              	.L595:
 3447 009e 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 3448 00a0 5BBB     		cbnz	r3, .L641
 3449              	.L609:
 3450 00a2 2868     		ldr	r0, [r5]
 3451 00a4 314B     		ldr	r3, .L645+16
 3452 00a6 324A     		ldr	r2, .L645+20
 3453 00a8 F0E7     		b	.L633
 3454              	.L593:
 3455 00aa 022F     		cmp	r7, #2
 3456 00ac 38D0     		beq	.L642
 3457 00ae 032F     		cmp	r7, #3
 3458 00b0 46D0     		beq	.L643
 3459              	.L610:
 3460 00b2 3346     		mov	r3, r6
 3461 00b4 2868     		ldr	r0, [r5]
 3462 00b6 2E4A     		ldr	r2, .L645+20
 3463 00b8 05B0     		add	sp, sp, #20
 3464              		@ sp needed
 3465 00ba BDE8F040 		pop	{r4, r5, r6, r7, lr}
 3466 00be FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 3467              	.L640:
 3468 00c2 052B     		cmp	r3, #5
 3469 00c4 47D8     		bhi	.L624
 3470 00c6 01A2     		adr	r2, .L616
 3471 00c8 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3472              		.p2align 2
 3473              	.L616:
 3474 00cc AB000000 		.word	.L593+1
 3475 00d0 AB000000 		.word	.L593+1
 3476 00d4 0F010000 		.word	.L625+1
 3477 00d8 9B000000 		.word	.L617+1
ARM GAS  /tmp/ccx5mP1m.s 			page 62


 3478 00dc 97000000 		.word	.L618+1
 3479 00e0 87000000 		.word	.L619+1
 3480              		.p2align 1
 3481              	.L601:
 3482 00e4 1C2A     		cmp	r2, #28
 3483 00e6 14D0     		beq	.L602
 3484 00e8 692A     		cmp	r2, #105
 3485 00ea D8D1     		bne	.L595
 3486 00ec 1F4B     		ldr	r3, .L645+16
 3487              	.L603:
 3488 00ee 2868     		ldr	r0, [r5]
 3489 00f0 204A     		ldr	r2, .L645+24
 3490 00f2 0096     		str	r6, [sp]
 3491 00f4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3492 00f8 B3E7     		b	.L583
 3493              	.L641:
 3494 00fa 2046     		mov	r0, r4
 3495 00fc 0391     		str	r1, [sp, #12]
 3496 00fe FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 3497 0102 0399     		ldr	r1, [sp, #12]
 3498 0104 F8B1     		cbz	r0, .L644
 3499 0106 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 3500 0108 002B     		cmp	r3, #0
 3501 010a D2D1     		bne	.L610
 3502 010c C9E7     		b	.L609
 3503              	.L625:
 3504 010e 1A4B     		ldr	r3, .L645+28
 3505 0110 EDE7     		b	.L603
 3506              	.L602:
 3507 0112 2868     		ldr	r0, [r5]
 3508 0114 154B     		ldr	r3, .L645+16
 3509 0116 0096     		str	r6, [sp]
 3510 0118 184A     		ldr	r2, .L645+32
 3511 011a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3512 011e A0E7     		b	.L583
 3513              	.L642:
 3514 0120 41F48071 		orr	r1, r1, #256
 3515 0124 C5E7     		b	.L610
 3516              	.L639:
 3517 0126 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 3518 0128 1946     		mov	r1, r3
 3519 012a A2F17B02 		sub	r2, #123
 3520 012e B2FA82F2 		clz	r2, r2
 3521 0132 0068     		ldr	r0, [r0]
 3522 0134 5209     		lsrs	r2, r2, #5
 3523 0136 05B0     		add	sp, sp, #20
 3524              		@ sp needed
 3525 0138 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 3526 013c FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEPKcb
 3527              	.L643:
 3528 0140 41F40071 		orr	r1, r1, #512
 3529 0144 B5E7     		b	.L610
 3530              	.L644:
 3531 0146 094A     		ldr	r2, .L645+16
 3532 0148 2868     		ldr	r0, [r5]
 3533 014a 3346     		mov	r3, r6
 3534 014c 0092     		str	r2, [sp]
ARM GAS  /tmp/ccx5mP1m.s 			page 63


 3535 014e 0B4A     		ldr	r2, .L645+32
 3536 0150 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3537 0154 85E7     		b	.L583
 3538              	.L624:
 3539 0156 0A4B     		ldr	r3, .L645+36
 3540 0158 96E7     		b	.L592
 3541              	.L646:
 3542 015a 00BF     		.align	2
 3543              	.L645:
 3544 015c 10000000 		.word	.LC71
 3545 0160 44000000 		.word	.LC77
 3546 0164 1C000000 		.word	.LC72
 3547 0168 28000000 		.word	.LC73
 3548 016c 04000000 		.word	.LC69
 3549 0170 30000000 		.word	.LC74
 3550 0174 3C000000 		.word	.LC76
 3551 0178 00000000 		.word	.LC68
 3552 017c 34000000 		.word	.LC75
 3553 0180 08000000 		.word	.LC70
 3554              		.size	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc, .-_ZN6GCodes11HandleReplyER11GCodeBu
 3555              		.section	.text._ZN6GCodes11FinishWriteER11GCodeBuffer,"ax",%progbits
 3556              		.align	1
 3557              		.p2align 2,,3
 3558              		.global	_ZN6GCodes11FinishWriteER11GCodeBuffer
 3559              		.syntax unified
 3560              		.thumb
 3561              		.thumb_func
 3562              		.fpu softvfp
 3563              		.type	_ZN6GCodes11FinishWriteER11GCodeBuffer, %function
 3564              	_ZN6GCodes11FinishWriteER11GCodeBuffer:
 3565              		@ args = 0, pretend = 0, frame = 0
 3566              		@ frame_needed = 0, uses_anonymous_args = 0
 3567 0000 70B5     		push	{r4, r5, r6, lr}
 3568 0002 0446     		mov	r4, r0
 3569 0004 D0F86402 		ldr	r0, [r0, #612]
 3570 0008 0D46     		mov	r5, r1
 3571 000a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3572 000e D4F86432 		ldr	r3, [r4, #612]
 3573 0012 6A6C     		ldr	r2, [r5, #68]
 3574 0014 5B6B     		ldr	r3, [r3, #52]
 3575 0016 DB43     		mvns	r3, r3
 3576 0018 9342     		cmp	r3, r2
 3577 001a 00D0     		beq	.L648
 3578 001c A2B9     		cbnz	r2, .L655
 3579              	.L648:
 3580 001e 2068     		ldr	r0, [r4]
 3581 0020 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 3582 0024 094B     		ldr	r3, .L656
 3583 0026 0A4A     		ldr	r2, .L656+4
 3584 0028 0228     		cmp	r0, #2
 3585 002a 18BF     		it	ne
 3586 002c 1346     		movne	r3, r2
 3587              	.L649:
 3588 002e 0022     		movs	r2, #0
 3589 0030 2946     		mov	r1, r5
 3590 0032 C4F86422 		str	r2, [r4, #612]
 3591 0036 2046     		mov	r0, r4
ARM GAS  /tmp/ccx5mP1m.s 			page 64


 3592 0038 85F8B520 		strb	r2, [r5, #181]
 3593 003c EA62     		str	r2, [r5, #44]
 3594 003e 0122     		movs	r2, #1
 3595 0040 BDE87040 		pop	{r4, r5, r6, lr}
 3596 0044 FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 3597              	.L655:
 3598 0048 024B     		ldr	r3, .L656+8
 3599 004a F0E7     		b	.L649
 3600              	.L657:
 3601              		.align	2
 3602              	.L656:
 3603 004c 28000000 		.word	.LC80
 3604 0050 24000000 		.word	.LC79
 3605 0054 00000000 		.word	.LC78
 3606              		.size	_ZN6GCodes11FinishWriteER11GCodeBuffer, .-_ZN6GCodes11FinishWriteER11GCodeBuffer
 3607              		.section	.text._ZN6GCodes15WriteHTMLToFileER11GCodeBufferc,"ax",%progbits
 3608              		.align	1
 3609              		.p2align 2,,3
 3610              		.global	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 3611              		.syntax unified
 3612              		.thumb
 3613              		.thumb_func
 3614              		.fpu softvfp
 3615              		.type	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc, %function
 3616              	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc:
 3617              		@ args = 0, pretend = 0, frame = 0
 3618              		@ frame_needed = 0, uses_anonymous_args = 0
 3619 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3620 0002 0546     		mov	r5, r0
 3621 0004 D0F86402 		ldr	r0, [r0, #612]
 3622 0008 0028     		cmp	r0, #0
 3623 000a 47D0     		beq	.L673
 3624 000c 1646     		mov	r6, r2
 3625 000e D5F86C32 		ldr	r3, [r5, #620]
 3626 0012 95F87022 		ldrb	r2, [r5, #624]	@ zero_extendqisi2
 3627 0016 0F46     		mov	r7, r1
 3628 0018 995C     		ldrb	r1, [r3, r2]	@ zero_extendqisi2
 3629 001a B142     		cmp	r1, r6
 3630 001c 30D0     		beq	.L674
 3631              	.L660:
 3632 001e 32B9     		cbnz	r2, .L675
 3633 0020 3146     		mov	r1, r6
 3634 0022 FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 3635 0026 D5F86832 		ldr	r3, [r5, #616]
 3636 002a DBB9     		cbnz	r3, .L676
 3637              	.L658:
 3638 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3639              	.L675:
 3640 002e 0024     		movs	r4, #0
 3641 0030 03E0     		b	.L664
 3642              	.L677:
 3643 0032 D5F86402 		ldr	r0, [r5, #612]
 3644 0036 D5F86C32 		ldr	r3, [r5, #620]
 3645              	.L664:
 3646 003a 195D     		ldrb	r1, [r3, r4]	@ zero_extendqisi2
 3647 003c FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 3648 0040 0134     		adds	r4, r4, #1
ARM GAS  /tmp/ccx5mP1m.s 			page 65


 3649 0042 95F87032 		ldrb	r3, [r5, #624]	@ zero_extendqisi2
 3650 0046 E4B2     		uxtb	r4, r4
 3651 0048 9C42     		cmp	r4, r3
 3652 004a F2DB     		blt	.L677
 3653 004c 0023     		movs	r3, #0
 3654 004e D5F86402 		ldr	r0, [r5, #612]
 3655 0052 85F87032 		strb	r3, [r5, #624]
 3656 0056 3146     		mov	r1, r6
 3657 0058 FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 3658 005c D5F86832 		ldr	r3, [r5, #616]
 3659 0060 002B     		cmp	r3, #0
 3660 0062 E3D0     		beq	.L658
 3661              	.L676:
 3662 0064 D5F86402 		ldr	r0, [r5, #612]
 3663 0068 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 3664 006c D5F86832 		ldr	r3, [r5, #616]
 3665 0070 9842     		cmp	r0, r3
 3666 0072 12D3     		bcc	.L678
 3667              	.L661:
 3668 0074 3946     		mov	r1, r7
 3669 0076 2846     		mov	r0, r5
 3670 0078 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3671 007c FFF7FEBF 		b	_ZN6GCodes11FinishWriteER11GCodeBuffer
 3672              	.L674:
 3673 0080 D5F86812 		ldr	r1, [r5, #616]
 3674 0084 0029     		cmp	r1, #0
 3675 0086 CAD1     		bne	.L660
 3676 0088 0132     		adds	r2, r2, #1
 3677 008a 95F87132 		ldrb	r3, [r5, #625]	@ zero_extendqisi2
 3678 008e D2B2     		uxtb	r2, r2
 3679 0090 9A42     		cmp	r2, r3
 3680 0092 85F87022 		strb	r2, [r5, #624]
 3681 0096 C9DB     		blt	.L658
 3682 0098 ECE7     		b	.L661
 3683              	.L678:
 3684 009a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3685              	.L673:
 3686 009c 2868     		ldr	r0, [r5]
 3687 009e 034A     		ldr	r2, .L679
 3688 00a0 40F2B511 		movw	r1, #437
 3689 00a4 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3690 00a8 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 3691              	.L680:
 3692              		.align	2
 3693              	.L679:
 3694 00ac 00000000 		.word	.LC81
 3695              		.size	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc, .-_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 3696              		.section	.text._ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer,"ax",%progbits
 3697              		.align	1
 3698              		.p2align 2,,3
 3699              		.global	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 3700              		.syntax unified
 3701              		.thumb
 3702              		.thumb_func
 3703              		.fpu softvfp
 3704              		.type	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer, %function
 3705              	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer:
ARM GAS  /tmp/ccx5mP1m.s 			page 66


 3706              		@ args = 0, pretend = 0, frame = 8
 3707              		@ frame_needed = 0, uses_anonymous_args = 0
 3708 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 3709 0002 83B0     		sub	sp, sp, #12
 3710 0004 0193     		str	r3, [sp, #4]
 3711 0006 63B3     		cbz	r3, .L681
 3712 0008 1746     		mov	r7, r2
 3713 000a 826C     		ldr	r2, [r0, #72]
 3714 000c 0C46     		mov	r4, r1
 3715 000e 1268     		ldr	r2, [r2]
 3716 0010 0646     		mov	r6, r0
 3717 0012 8A42     		cmp	r2, r1
 3718 0014 00F09180 		beq	.L739
 3719 0018 436C     		ldr	r3, [r0, #68]
 3720 001a 1B68     		ldr	r3, [r3]
 3721 001c 9942     		cmp	r1, r3
 3722 001e 45D0     		beq	.L684
 3723 0020 C36B     		ldr	r3, [r0, #60]
 3724 0022 1B68     		ldr	r3, [r3]
 3725 0024 9942     		cmp	r1, r3
 3726 0026 41D0     		beq	.L684
 3727 0028 91F84C30 		ldrb	r3, [r1, #76]	@ zero_extendqisi2
 3728 002c 8D8E     		ldrh	r5, [r1, #52]
 3729 002e 4D2B     		cmp	r3, #77
 3730 0030 2CD1     		bne	.L689
 3731 0032 0023     		movs	r3, #0
 3732              	.L710:
 3733 0034 40F2E631 		movw	r1, #998
 3734 0038 226C     		ldr	r2, [r4, #64]
 3735 003a 8A42     		cmp	r2, r1
 3736 003c 13D0     		beq	.L740
 3737 003e 052B     		cmp	r3, #5
 3738 0040 00F2B080 		bhi	.L718
 3739 0044 DFE803F0 		tbb	[pc, r3]
 3740              	.L707:
 3741 0048 22       		.byte	(.L689-.L707)/2
 3742 0049 22       		.byte	(.L689-.L707)/2
 3743 004a 6A       		.byte	(.L691-.L707)/2
 3744 004b 2B       		.byte	(.L700-.L707)/2
 3745 004c 03       		.byte	(.L712-.L707)/2
 3746 004d 30       		.byte	(.L713-.L707)/2
 3747              		.p2align 1
 3748              	.L712:
 3749 004e 564C     		ldr	r4, .L743
 3750              	.L699:
 3751 0050 01A8     		add	r0, sp, #4
 3752 0052 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3753              	.L701:
 3754 0056 2346     		mov	r3, r4
 3755 0058 2946     		mov	r1, r5
 3756 005a 3068     		ldr	r0, [r6]
 3757 005c 534A     		ldr	r2, .L743+4
 3758 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3759              	.L681:
 3760 0062 03B0     		add	sp, sp, #12
 3761              		@ sp needed
 3762 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccx5mP1m.s 			page 67


 3763              	.L740:
 3764 0066 052B     		cmp	r3, #5
 3765 0068 00F29C80 		bhi	.L718
 3766 006c 01A2     		adr	r2, .L711
 3767 006e 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3768 0072 00BF     		.p2align 2
 3769              	.L711:
 3770 0074 8D000000 		.word	.L689+1
 3771 0078 8D000000 		.word	.L689+1
 3772 007c 37010000 		.word	.L719+1
 3773 0080 9F000000 		.word	.L700+1
 3774 0084 4F000000 		.word	.L712+1
 3775 0088 A9000000 		.word	.L713+1
 3776              		.p2align 1
 3777              	.L689:
 3778 008c 002F     		cmp	r7, #0
 3779 008e 3FD1     		bne	.L741
 3780              	.L705:
 3781 0090 2946     		mov	r1, r5
 3782 0092 3068     		ldr	r0, [r6]
 3783 0094 019A     		ldr	r2, [sp, #4]
 3784 0096 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3785 009a 03B0     		add	sp, sp, #12
 3786              		@ sp needed
 3787 009c F0BD     		pop	{r4, r5, r6, r7, pc}
 3788              	.L700:
 3789 009e 01A8     		add	r0, sp, #4
 3790 00a0 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3791 00a4 424C     		ldr	r4, .L743+8
 3792 00a6 D6E7     		b	.L701
 3793              	.L713:
 3794 00a8 424C     		ldr	r4, .L743+12
 3795 00aa D1E7     		b	.L699
 3796              	.L684:
 3797 00ac 3068     		ldr	r0, [r6]
 3798 00ae FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 3799 00b2 94F84C20 		ldrb	r2, [r4, #76]	@ zero_extendqisi2
 3800 00b6 0346     		mov	r3, r0
 3801 00b8 4D2A     		cmp	r2, #77
 3802 00ba A58E     		ldrh	r5, [r4, #52]
 3803 00bc BAD0     		beq	.L710
 3804 00be 0528     		cmp	r0, #5
 3805 00c0 70D8     		bhi	.L718
 3806 00c2 01A3     		adr	r3, .L702
 3807 00c4 53F820F0 		ldr	pc, [r3, r0, lsl #2]
 3808              		.p2align 2
 3809              	.L702:
 3810 00c8 8D000000 		.word	.L689+1
 3811 00cc 8D000000 		.word	.L689+1
 3812 00d0 E1000000 		.word	.L695+1
 3813 00d4 9F000000 		.word	.L700+1
 3814 00d8 4F000000 		.word	.L712+1
 3815 00dc A9000000 		.word	.L713+1
 3816              		.p2align 1
 3817              	.L695:
 3818 00e0 0198     		ldr	r0, [sp, #4]
 3819 00e2 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
ARM GAS  /tmp/ccx5mP1m.s 			page 68


 3820 00e6 0028     		cmp	r0, #0
 3821 00e8 50D1     		bne	.L742
 3822              	.L696:
 3823 00ea 0198     		ldr	r0, [sp, #4]
 3824 00ec FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3825 00f0 0028     		cmp	r0, #0
 3826 00f2 CDD1     		bne	.L705
 3827 00f4 01A8     		add	r0, sp, #4
 3828 00f6 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3829              	.L730:
 3830 00fa 2946     		mov	r1, r5
 3831 00fc 3068     		ldr	r0, [r6]
 3832 00fe 2E4A     		ldr	r2, .L743+16
 3833 0100 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3834 0104 2946     		mov	r1, r5
 3835 0106 3068     		ldr	r0, [r6]
 3836 0108 2C4A     		ldr	r2, .L743+20
 3837 010a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3838 010e A8E7     		b	.L681
 3839              	.L741:
 3840 0110 2B4A     		ldr	r2, .L743+24
 3841              	.L733:
 3842 0112 2946     		mov	r1, r5
 3843 0114 3068     		ldr	r0, [r6]
 3844 0116 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3845 011a B9E7     		b	.L705
 3846              	.L691:
 3847 011c 142A     		cmp	r2, #20
 3848 011e 1ED0     		beq	.L692
 3849 0120 1C2A     		cmp	r2, #28
 3850 0122 2CD0     		beq	.L693
 3851 0124 692A     		cmp	r2, #105
 3852 0126 DBD1     		bne	.L695
 3853 0128 234A     		ldr	r2, .L743+16
 3854              	.L694:
 3855 012a 2946     		mov	r1, r5
 3856 012c 3068     		ldr	r0, [r6]
 3857 012e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3858 0132 244A     		ldr	r2, .L743+28
 3859 0134 EDE7     		b	.L733
 3860              	.L719:
 3861 0136 244A     		ldr	r2, .L743+32
 3862 0138 F7E7     		b	.L694
 3863              	.L739:
 3864 013a 0021     		movs	r1, #0
 3865 013c 1846     		mov	r0, r3
 3866 013e 0093     		str	r3, [sp]
 3867 0140 3468     		ldr	r4, [r6]
 3868 0142 FFF7FEFF 		bl	_ZN12OutputBufferixEj
 3869 0146 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 3870 0148 009B     		ldr	r3, [sp]
 3871 014a A2F17B02 		sub	r2, #123
 3872 014e B2FA82F2 		clz	r2, r2
 3873 0152 1946     		mov	r1, r3
 3874 0154 5209     		lsrs	r2, r2, #5
 3875 0156 2046     		mov	r0, r4
 3876 0158 FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
ARM GAS  /tmp/ccx5mP1m.s 			page 69


 3877 015c 81E7     		b	.L681
 3878              	.L692:
 3879 015e 1B4A     		ldr	r2, .L743+36
 3880 0160 2946     		mov	r1, r5
 3881 0162 3068     		ldr	r0, [r6]
 3882 0164 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3883 0168 019A     		ldr	r2, [sp, #4]
 3884 016a 2946     		mov	r1, r5
 3885 016c 3068     		ldr	r0, [r6]
 3886 016e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3887 0172 174A     		ldr	r2, .L743+40
 3888              	.L731:
 3889 0174 2946     		mov	r1, r5
 3890 0176 3068     		ldr	r0, [r6]
 3891 0178 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3892 017c BDE7     		b	.L730
 3893              	.L693:
 3894 017e 0E4A     		ldr	r2, .L743+16
 3895 0180 2946     		mov	r1, r5
 3896 0182 3068     		ldr	r0, [r6]
 3897 0184 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3898 0188 0C4A     		ldr	r2, .L743+20
 3899 018a C2E7     		b	.L733
 3900              	.L742:
 3901 018c 2046     		mov	r0, r4
 3902 018e FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 3903 0192 0028     		cmp	r0, #0
 3904 0194 A9D1     		bne	.L696
 3905 0196 019A     		ldr	r2, [sp, #4]
 3906 0198 2946     		mov	r1, r5
 3907 019a 3068     		ldr	r0, [r6]
 3908 019c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3909 01a0 064A     		ldr	r2, .L743+20
 3910 01a2 E7E7     		b	.L731
 3911              	.L718:
 3912 01a4 0B4C     		ldr	r4, .L743+44
 3913 01a6 53E7     		b	.L699
 3914              	.L744:
 3915              		.align	2
 3916              	.L743:
 3917 01a8 1C000000 		.word	.LC72
 3918 01ac 44000000 		.word	.LC77
 3919 01b0 28000000 		.word	.LC73
 3920 01b4 10000000 		.word	.LC71
 3921 01b8 04000000 		.word	.LC69
 3922 01bc 08000000 		.word	.LC83
 3923 01c0 00000000 		.word	.LC82
 3924 01c4 30000000 		.word	.LC86
 3925 01c8 00000000 		.word	.LC68
 3926 01cc 0C000000 		.word	.LC84
 3927 01d0 20000000 		.word	.LC85
 3928 01d4 08000000 		.word	.LC70
 3929              		.size	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer, .-_ZN6GCodes11HandleReplyER11GCodeBu
 3930              		.global	__aeabi_fcmple
 3931              		.global	__aeabi_fcmpge
 3932              		.section	.text._ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef,"ax",%progbits
 3933              		.align	1
ARM GAS  /tmp/ccx5mP1m.s 			page 70


 3934              		.p2align 2,,3
 3935              		.global	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef
 3936              		.syntax unified
 3937              		.thumb
 3938              		.thumb_func
 3939              		.fpu softvfp
 3940              		.type	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef, %function
 3941              	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef:
 3942              		@ args = 0, pretend = 0, frame = 0
 3943              		@ frame_needed = 0, uses_anonymous_args = 0
 3944 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3945 0004 0C46     		mov	r4, r1
 3946 0006 86B0     		sub	sp, sp, #24
 3947 0008 5021     		movs	r1, #80
 3948 000a 2046     		mov	r0, r4
 3949 000c 9046     		mov	r8, r2
 3950 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3951 0012 38B9     		cbnz	r0, .L789
 3952 0014 4821     		movs	r1, #72
 3953 0016 2046     		mov	r0, r4
 3954 0018 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3955 001c 10B9     		cbnz	r0, .L789
 3956 001e 0121     		movs	r1, #1
 3957 0020 0E46     		mov	r6, r1
 3958 0022 0BE0     		b	.L748
 3959              	.L789:
 3960 0024 2046     		mov	r0, r4
 3961 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3962 002a 0328     		cmp	r0, #3
 3963 002c 0646     		mov	r6, r0
 3964 002e 0146     		mov	r1, r0
 3965 0030 04D9     		bls	.L748
 3966 0032 A0F16403 		sub	r3, r0, #100
 3967 0036 032B     		cmp	r3, #3
 3968 0038 00F2AE80 		bhi	.L791
 3969              	.L748:
 3970 003c 694B     		ldr	r3, .L798
 3971 003e D868     		ldr	r0, [r3, #12]
 3972 0040 FFF7FEFF 		bl	_ZNK4Heat22AccessHeaterProtectionEj
 3973 0044 5021     		movs	r1, #80
 3974 0046 0746     		mov	r7, r0
 3975 0048 2046     		mov	r0, r4
 3976 004a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3977 004e 0028     		cmp	r0, #0
 3978 0050 52D1     		bne	.L750
 3979              	.L753:
 3980 0052 0025     		movs	r5, #0
 3981              	.L751:
 3982 0054 5821     		movs	r1, #88
 3983 0056 2046     		mov	r0, r4
 3984 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3985 005c 8146     		mov	r9, r0
 3986 005e 58B1     		cbz	r0, .L754
 3987 0060 2046     		mov	r0, r4
 3988 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3989 0066 0428     		cmp	r0, #4
 3990 0068 04D9     		bls	.L755
ARM GAS  /tmp/ccx5mP1m.s 			page 71


 3991 006a A0F16403 		sub	r3, r0, #100
 3992 006e 092B     		cmp	r3, #9
 3993 0070 00F2AA80 		bhi	.L792
 3994              	.L755:
 3995 0074 4D46     		mov	r5, r9
 3996 0076 7872     		strb	r0, [r7, #9]
 3997              	.L754:
 3998 0078 4121     		movs	r1, #65
 3999 007a 2046     		mov	r0, r4
 4000 007c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4001 0080 8146     		mov	r9, r0
 4002 0082 0028     		cmp	r0, #0
 4003 0084 5FD1     		bne	.L793
 4004 0086 4321     		movs	r1, #67
 4005 0088 2046     		mov	r0, r4
 4006 008a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4007 008e 0028     		cmp	r0, #0
 4008 0090 43D1     		bne	.L794
 4009              	.L758:
 4010 0092 5321     		movs	r1, #83
 4011 0094 2046     		mov	r0, r4
 4012 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4013 009a 0028     		cmp	r0, #0
 4014 009c 63D1     		bne	.L760
 4015 009e 002D     		cmp	r5, #0
 4016 00a0 4CD1     		bne	.L766
 4017 00a2 97F90890 		ldrsb	r9, [r7, #8]
 4018 00a6 B9F1000F 		cmp	r9, #0
 4019 00aa C0F29480 		blt	.L795
 4020 00ae BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 4021 00b0 022B     		cmp	r3, #2
 4022 00b2 96BF     		itet	ls
 4023 00b4 4C4A     		ldrls	r2, .L798+4
 4024 00b6 DFF838A1 		ldrhi	r10, .L798+12
 4025 00ba 52F823A0 		ldrls	r10, [r2, r3, lsl #2]
 4026 00be FB7A     		ldrb	r3, [r7, #11]	@ zero_extendqisi2
 4027 00c0 002B     		cmp	r3, #0
 4028 00c2 73D0     		beq	.L776
 4029 00c4 494C     		ldr	r4, .L798+8
 4030 00c6 4A4A     		ldr	r2, .L798+12
 4031 00c8 012B     		cmp	r3, #1
 4032 00ca 18BF     		it	ne
 4033 00cc 1446     		movne	r4, r2
 4034              	.L770:
 4035 00ce 7868     		ldr	r0, [r7, #4]	@ float
 4036 00d0 FFF7FEFF 		bl	__aeabi_f2d
 4037 00d4 CDE90401 		strd	r0, [sp, #16]
 4038 00d8 0294     		str	r4, [sp, #8]
 4039 00da CDF804A0 		str	r10, [sp, #4]
 4040 00de 97F90920 		ldrsb	r2, [r7, #9]
 4041 00e2 4B46     		mov	r3, r9
 4042 00e4 0092     		str	r2, [sp]
 4043 00e6 4046     		mov	r0, r8
 4044 00e8 3246     		mov	r2, r6
 4045 00ea 4249     		ldr	r1, .L798+16
 4046 00ec FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4047              	.L783:
ARM GAS  /tmp/ccx5mP1m.s 			page 72


 4048 00f0 2846     		mov	r0, r5
 4049 00f2 06B0     		add	sp, sp, #24
 4050              		@ sp needed
 4051 00f4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4052              	.L750:
 4053 00f8 4821     		movs	r1, #72
 4054 00fa 2046     		mov	r0, r4
 4055 00fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4056 0100 0546     		mov	r5, r0
 4057 0102 0028     		cmp	r0, #0
 4058 0104 A5D0     		beq	.L753
 4059 0106 2046     		mov	r0, r4
 4060 0108 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4061 010c 0428     		cmp	r0, #4
 4062 010e 3ADC     		bgt	.L796
 4063 0110 41B2     		sxtb	r1, r0
 4064 0112 3846     		mov	r0, r7
 4065 0114 FFF7FEFF 		bl	_ZN16HeaterProtection9SetHeaterEa
 4066 0118 9CE7     		b	.L751
 4067              	.L794:
 4068 011a 2046     		mov	r0, r4
 4069 011c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4070 0120 0128     		cmp	r0, #1
 4071 0122 0546     		mov	r5, r0
 4072 0124 04D9     		bls	.L759
 4073 0126 0246     		mov	r2, r0
 4074 0128 3349     		ldr	r1, .L798+20
 4075 012a 4046     		mov	r0, r8
 4076 012c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4077              	.L759:
 4078 0130 FD72     		strb	r5, [r7, #11]
 4079 0132 5321     		movs	r1, #83
 4080 0134 2046     		mov	r0, r4
 4081 0136 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4082 013a A0B9     		cbnz	r0, .L760
 4083              	.L766:
 4084 013c 0025     		movs	r5, #0
 4085 013e 2846     		mov	r0, r5
 4086 0140 06B0     		add	sp, sp, #24
 4087              		@ sp needed
 4088 0142 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4089              	.L793:
 4090 0146 2046     		mov	r0, r4
 4091 0148 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4092 014c 0228     		cmp	r0, #2
 4093 014e 8246     		mov	r10, r0
 4094 0150 34D8     		bhi	.L797
 4095              	.L757:
 4096 0152 87F80AA0 		strb	r10, [r7, #10]
 4097 0156 4321     		movs	r1, #67
 4098 0158 2046     		mov	r0, r4
 4099 015a 4D46     		mov	r5, r9
 4100 015c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4101 0160 0028     		cmp	r0, #0
 4102 0162 96D0     		beq	.L758
 4103 0164 D9E7     		b	.L794
 4104              	.L760:
ARM GAS  /tmp/ccx5mP1m.s 			page 73


 4105 0166 2046     		mov	r0, r4
 4106 0168 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4107 016c 2349     		ldr	r1, .L798+24
 4108 016e 0446     		mov	r4, r0
 4109 0170 FFF7FEFF 		bl	__aeabi_fcmple
 4110 0174 E0B9     		cbnz	r0, .L761
 4111 0176 2249     		ldr	r1, .L798+28
 4112 0178 2046     		mov	r0, r4
 4113 017a FFF7FEFF 		bl	__aeabi_fcmpge
 4114 017e B8B9     		cbnz	r0, .L761
 4115 0180 7C60     		str	r4, [r7, #4]	@ float
 4116 0182 0546     		mov	r5, r0
 4117 0184 B4E7     		b	.L783
 4118              	.L796:
 4119 0186 0246     		mov	r2, r0
 4120 0188 1E49     		ldr	r1, .L798+32
 4121 018a 4046     		mov	r0, r8
 4122 018c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4123 0190 2846     		mov	r0, r5
 4124 0192 06B0     		add	sp, sp, #24
 4125              		@ sp needed
 4126 0194 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4127              	.L791:
 4128 0198 0125     		movs	r5, #1
 4129 019a 0246     		mov	r2, r0
 4130 019c 1A49     		ldr	r1, .L798+36
 4131 019e 4046     		mov	r0, r8
 4132 01a0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4133 01a4 2846     		mov	r0, r5
 4134 01a6 06B0     		add	sp, sp, #24
 4135              		@ sp needed
 4136 01a8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4137              	.L776:
 4138 01ac 174C     		ldr	r4, .L798+40
 4139 01ae 8EE7     		b	.L770
 4140              	.L761:
 4141 01b0 4046     		mov	r0, r8
 4142 01b2 1749     		ldr	r1, .L798+44
 4143 01b4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4144 01b8 0125     		movs	r5, #1
 4145 01ba 99E7     		b	.L783
 4146              	.L797:
 4147 01bc 0246     		mov	r2, r0
 4148 01be 1549     		ldr	r1, .L798+48
 4149 01c0 4046     		mov	r0, r8
 4150 01c2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4151 01c6 C4E7     		b	.L757
 4152              	.L792:
 4153 01c8 0246     		mov	r2, r0
 4154 01ca 0E49     		ldr	r1, .L798+32
 4155 01cc 4046     		mov	r0, r8
 4156 01ce 4D46     		mov	r5, r9
 4157 01d0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4158 01d4 8CE7     		b	.L783
 4159              	.L795:
 4160 01d6 3246     		mov	r2, r6
 4161 01d8 4046     		mov	r0, r8
ARM GAS  /tmp/ccx5mP1m.s 			page 74


 4162 01da 0F49     		ldr	r1, .L798+52
 4163 01dc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4164 01e0 86E7     		b	.L783
 4165              	.L799:
 4166 01e2 00BF     		.align	2
 4167              	.L798:
 4168 01e4 00000000 		.word	reprap
 4169 01e8 00000000 		.word	.LANCHOR0
 4170 01ec 14000000 		.word	.LC89
 4171 01f0 00000000 		.word	.LC87
 4172 01f4 00010000 		.word	.LC96
 4173 01f8 88000000 		.word	.LC93
 4174 01fc 000020C1 		.word	-1054867456
 4175 0200 0000FA44 		.word	1157234688
 4176 0204 44000000 		.word	.LC91
 4177 0208 20000000 		.word	.LC90
 4178 020c 0C000000 		.word	.LC88
 4179 0210 B0000000 		.word	.LC94
 4180 0214 60000000 		.word	.LC92
 4181 0218 CC000000 		.word	.LC95
 4182              		.size	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef, .-_ZN6GCodes19SetHeaterProtectio
 4183              		.section	.text._ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef,"ax",%progbits
 4184              		.align	1
 4185              		.p2align 2,,3
 4186              		.global	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef
 4187              		.syntax unified
 4188              		.thumb
 4189              		.thumb_func
 4190              		.fpu softvfp
 4191              		.type	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef, %function
 4192              	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef:
 4193              		@ args = 0, pretend = 0, frame = 16
 4194              		@ frame_needed = 0, uses_anonymous_args = 0
 4195 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 4196 0004 0C46     		mov	r4, r1
 4197 0006 8BB0     		sub	sp, sp, #44
 4198 0008 4821     		movs	r1, #72
 4199 000a 2046     		mov	r0, r4
 4200 000c 1546     		mov	r5, r2
 4201 000e 1F46     		mov	r7, r3
 4202 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4203 0014 0028     		cmp	r0, #0
 4204 0016 46D1     		bne	.L811
 4205              	.L801:
 4206 0018 032D     		cmp	r5, #3
 4207 001a 02D9     		bls	.L812
 4208              	.L800:
 4209 001c 0BB0     		add	sp, sp, #44
 4210              		@ sp needed
 4211 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4212              	.L812:
 4213 0022 DFF8C490 		ldr	r9, .L815+12
 4214 0026 07A8     		add	r0, sp, #28
 4215 0028 D9F80C30 		ldr	r3, [r9, #12]
 4216 002c 0022     		movs	r2, #0
 4217 002e 03EB8503 		add	r3, r3, r5, lsl #2
 4218 0032 D3F82480 		ldr	r8, [r3, #36]
ARM GAS  /tmp/ccx5mP1m.s 			page 75


 4219 0036 0AAE     		add	r6, sp, #40
 4220 0038 08F13001 		add	r1, r8, #48
 4221 003c FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 4222 0040 0023     		movs	r3, #0
 4223 0042 06F80D3D 		strb	r3, [r6, #-13]!
 4224 0046 3346     		mov	r3, r6
 4225 0048 07AA     		add	r2, sp, #28
 4226 004a 5021     		movs	r1, #80
 4227 004c 2046     		mov	r0, r4
 4228 004e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4229 0052 3346     		mov	r3, r6
 4230 0054 08AA     		add	r2, sp, #32
 4231 0056 4921     		movs	r1, #73
 4232 0058 2046     		mov	r0, r4
 4233 005a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4234 005e 3346     		mov	r3, r6
 4235 0060 2046     		mov	r0, r4
 4236 0062 09AA     		add	r2, sp, #36
 4237 0064 4421     		movs	r1, #68
 4238 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4239 006a 9DF81B30 		ldrb	r3, [sp, #27]	@ zero_extendqisi2
 4240 006e 2BBB     		cbnz	r3, .L813
 4241 0070 98F84730 		ldrb	r3, [r8, #71]	@ zero_extendqisi2
 4242 0074 E3B1     		cbz	r3, .L814
 4243 0076 98F84930 		ldrb	r3, [r8, #73]	@ zero_extendqisi2
 4244 007a 43B3     		cbz	r3, .L806
 4245 007c 0998     		ldr	r0, [sp, #36]	@ float
 4246 007e FFF7FEFF 		bl	__aeabi_f2d
 4247 0082 CDE90401 		strd	r0, [sp, #16]
 4248 0086 0898     		ldr	r0, [sp, #32]	@ float
 4249 0088 FFF7FEFF 		bl	__aeabi_f2d
 4250 008c CDE90201 		strd	r0, [sp, #8]
 4251 0090 0798     		ldr	r0, [sp, #28]	@ float
 4252 0092 FFF7FEFF 		bl	__aeabi_f2d
 4253 0096 2A46     		mov	r2, r5
 4254 0098 CDE90001 		strd	r0, [sp]
 4255 009c 3846     		mov	r0, r7
 4256 009e 0F49     		ldr	r1, .L815
 4257 00a0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4258 00a4 BAE7     		b	.L800
 4259              	.L811:
 4260 00a6 2046     		mov	r0, r4
 4261 00a8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4262 00ac 0546     		mov	r5, r0
 4263 00ae B3E7     		b	.L801
 4264              	.L814:
 4265 00b0 2A46     		mov	r2, r5
 4266 00b2 3846     		mov	r0, r7
 4267 00b4 0A49     		ldr	r1, .L815+4
 4268 00b6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4269 00ba AFE7     		b	.L800
 4270              	.L813:
 4271 00bc 07AA     		add	r2, sp, #28
 4272 00be 2946     		mov	r1, r5
 4273 00c0 D9F80C00 		ldr	r0, [r9, #12]
 4274 00c4 FFF7FEFF 		bl	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters
 4275 00c8 0BB0     		add	sp, sp, #44
ARM GAS  /tmp/ccx5mP1m.s 			page 76


 4276              		@ sp needed
 4277 00ca BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4278              	.L806:
 4279 00ce 3846     		mov	r0, r7
 4280 00d0 2B46     		mov	r3, r5
 4281 00d2 2A46     		mov	r2, r5
 4282 00d4 0349     		ldr	r1, .L815+8
 4283 00d6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4284 00da 9FE7     		b	.L800
 4285              	.L816:
 4286              		.align	2
 4287              	.L815:
 4288 00dc 20000000 		.word	.LC98
 4289 00e0 00000000 		.word	.LC97
 4290 00e4 40000000 		.word	.LC99
 4291 00e8 00000000 		.word	reprap
 4292              		.size	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef, .-_ZN6GCodes16SetPidParametersER11
 4293              		.section	.text._ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef,"ax",%progbits
 4294              		.align	1
 4295              		.p2align 2,,3
 4296              		.global	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef
 4297              		.syntax unified
 4298              		.thumb
 4299              		.thumb_func
 4300              		.fpu softvfp
 4301              		.type	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef, %function
 4302              	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef:
 4303              		@ args = 0, pretend = 0, frame = 8
 4304              		@ frame_needed = 0, uses_anonymous_args = 0
 4305 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4306 0004 0C46     		mov	r4, r1
 4307 0006 84B0     		sub	sp, sp, #16
 4308 0008 5021     		movs	r1, #80
 4309 000a 2046     		mov	r0, r4
 4310 000c 1646     		mov	r6, r2
 4311 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4312 0012 18B9     		cbnz	r0, .L833
 4313 0014 0120     		movs	r0, #1
 4314              	.L831:
 4315 0016 04B0     		add	sp, sp, #16
 4316              		@ sp needed
 4317 0018 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4318              	.L833:
 4319 001c 2046     		mov	r0, r4
 4320 001e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4321 0022 0328     		cmp	r0, #3
 4322 0024 0546     		mov	r5, r0
 4323 0026 03D9     		bls	.L819
 4324 0028 A0F16403 		sub	r3, r0, #100
 4325 002c 092B     		cmp	r3, #9
 4326 002e 3CD8     		bhi	.L820
 4327              	.L819:
 4328 0030 2D4B     		ldr	r3, .L837
 4329 0032 2946     		mov	r1, r5
 4330 0034 D3F80C80 		ldr	r8, [r3, #12]
 4331 0038 4046     		mov	r0, r8
 4332 003a FFF7FEFF 		bl	_ZNK4Heat16GetHeaterChannelEj
ARM GAS  /tmp/ccx5mP1m.s 			page 77


 4333 003e 4FF0000E 		mov	lr, #0
 4334 0042 0746     		mov	r7, r0
 4335 0044 0DF10B03 		add	r3, sp, #11
 4336 0048 03AA     		add	r2, sp, #12
 4337 004a 5821     		movs	r1, #88
 4338 004c 2046     		mov	r0, r4
 4339 004e 0397     		str	r7, [sp, #12]
 4340 0050 8DF80BE0 		strb	lr, [sp, #11]
 4341 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 4342 0058 9DF80B30 		ldrb	r3, [sp, #11]	@ zero_extendqisi2
 4343 005c D3B1     		cbz	r3, .L834
 4344              	.L821:
 4345 005e 039A     		ldr	r2, [sp, #12]
 4346              	.L826:
 4347 0060 BA42     		cmp	r2, r7
 4348 0062 0CD0     		beq	.L824
 4349 0064 2946     		mov	r1, r5
 4350 0066 4046     		mov	r0, r8
 4351 0068 FFF7FEFF 		bl	_ZN4Heat16SetHeaterChannelEji
 4352 006c 38B1     		cbz	r0, .L824
 4353 006e 2B46     		mov	r3, r5
 4354 0070 3046     		mov	r0, r6
 4355 0072 039A     		ldr	r2, [sp, #12]
 4356 0074 1D49     		ldr	r1, .L837+4
 4357 0076 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4358 007a 0220     		movs	r0, #2
 4359 007c CBE7     		b	.L831
 4360              	.L824:
 4361 007e 0096     		str	r6, [sp]
 4362 0080 2346     		mov	r3, r4
 4363 0082 2A46     		mov	r2, r5
 4364 0084 4046     		mov	r0, r8
 4365 0086 40F23111 		movw	r1, #305
 4366 008a FFF7FEFF 		bl	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef
 4367 008e 04B0     		add	sp, sp, #16
 4368              		@ sp needed
 4369 0090 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4370              	.L834:
 4371 0094 002F     		cmp	r7, #0
 4372 0096 E2DA     		bge	.L821
 4373 0098 032D     		cmp	r5, #3
 4374 009a 0FDD     		ble	.L835
 4375              	.L822:
 4376 009c 2A46     		mov	r2, r5
 4377 009e 3046     		mov	r0, r6
 4378 00a0 1349     		ldr	r1, .L837+8
 4379 00a2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4380 00a6 0220     		movs	r0, #2
 4381 00a8 B5E7     		b	.L831
 4382              	.L820:
 4383 00aa 0246     		mov	r2, r0
 4384 00ac 1149     		ldr	r1, .L837+12
 4385 00ae 3046     		mov	r0, r6
 4386 00b0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4387 00b4 0220     		movs	r0, #2
 4388 00b6 04B0     		add	sp, sp, #16
 4389              		@ sp needed
ARM GAS  /tmp/ccx5mP1m.s 			page 78


 4390 00b8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4391              	.L835:
 4392 00bc 5221     		movs	r1, #82
 4393 00be 2046     		mov	r0, r4
 4394 00c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4395 00c4 10B1     		cbz	r0, .L836
 4396              	.L823:
 4397 00c6 0395     		str	r5, [sp, #12]
 4398 00c8 2A46     		mov	r2, r5
 4399 00ca C9E7     		b	.L826
 4400              	.L836:
 4401 00cc 5421     		movs	r1, #84
 4402 00ce 2046     		mov	r0, r4
 4403 00d0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4404 00d4 0028     		cmp	r0, #0
 4405 00d6 F6D1     		bne	.L823
 4406 00d8 4221     		movs	r1, #66
 4407 00da 2046     		mov	r0, r4
 4408 00dc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4409 00e0 0028     		cmp	r0, #0
 4410 00e2 F0D1     		bne	.L823
 4411 00e4 DAE7     		b	.L822
 4412              	.L838:
 4413 00e6 00BF     		.align	2
 4414              	.L837:
 4415 00e8 00000000 		.word	reprap
 4416 00ec 00000000 		.word	.LC100
 4417 00f0 54000000 		.word	.LC102
 4418 00f4 30000000 		.word	.LC101
 4419              		.size	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef, .-_ZN6GCodes19SetHeaterParameter
 4420              		.section	.text._ZN6GCodes14SetToolHeatersEP4Toolfb,"ax",%progbits
 4421              		.align	1
 4422              		.p2align 2,,3
 4423              		.global	_ZN6GCodes14SetToolHeatersEP4Toolfb
 4424              		.syntax unified
 4425              		.thumb
 4426              		.thumb_func
 4427              		.fpu softvfp
 4428              		.type	_ZN6GCodes14SetToolHeatersEP4Toolfb, %function
 4429              	_ZN6GCodes14SetToolHeatersEP4Toolfb:
 4430              		@ args = 0, pretend = 0, frame = 0
 4431              		@ frame_needed = 0, uses_anonymous_args = 0
 4432 0000 E9B1     		cbz	r1, .L840
 4433 0002 086E     		ldr	r0, [r1, #96]
 4434 0004 D0B1     		cbz	r0, .L853
 4435 0006 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 4436 0008 0D46     		mov	r5, r1
 4437 000a 1F46     		mov	r7, r3
 4438 000c 1646     		mov	r6, r2
 4439 000e 0024     		movs	r4, #0
 4440 0010 03E0     		b	.L844
 4441              	.L843:
 4442 0012 296E     		ldr	r1, [r5, #96]
 4443 0014 0134     		adds	r4, r4, #1
 4444 0016 A142     		cmp	r1, r4
 4445 0018 0FD9     		bls	.L854
 4446              	.L844:
ARM GAS  /tmp/ccx5mP1m.s 			page 79


 4447 001a 3246     		mov	r2, r6
 4448 001c 2146     		mov	r1, r4
 4449 001e 2846     		mov	r0, r5
 4450 0020 FFF7FEFF 		bl	_ZN4Tool30SetToolHeaterActiveTemperatureEjf
 4451 0024 002F     		cmp	r7, #0
 4452 0026 F4D0     		beq	.L843
 4453 0028 2146     		mov	r1, r4
 4454 002a 3246     		mov	r2, r6
 4455 002c 2846     		mov	r0, r5
 4456 002e FFF7FEFF 		bl	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf
 4457 0032 296E     		ldr	r1, [r5, #96]
 4458 0034 0134     		adds	r4, r4, #1
 4459 0036 A142     		cmp	r1, r4
 4460 0038 EFD8     		bhi	.L844
 4461              	.L854:
 4462 003a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 4463              	.L853:
 4464 003c 7047     		bx	lr
 4465              	.L840:
 4466 003e 0068     		ldr	r0, [r0]
 4467 0040 024A     		ldr	r2, .L855
 4468 0042 40F2B511 		movw	r1, #437
 4469 0046 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 4470              	.L856:
 4471 004a 00BF     		.align	2
 4472              	.L855:
 4473 004c 00000000 		.word	.LC103
 4474              		.size	_ZN6GCodes14SetToolHeatersEP4Toolfb, .-_ZN6GCodes14SetToolHeatersEP4Toolfb
 4475              		.section	.text._ZN6GCodes15RetractFilamentER11GCodeBufferb,"ax",%progbits
 4476              		.align	1
 4477              		.p2align 2,,3
 4478              		.global	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 4479              		.syntax unified
 4480              		.thumb
 4481              		.thumb_func
 4482              		.fpu softvfp
 4483              		.type	_ZN6GCodes15RetractFilamentER11GCodeBufferb, %function
 4484              	_ZN6GCodes15RetractFilamentER11GCodeBufferb:
 4485              		@ args = 0, pretend = 0, frame = 0
 4486              		@ frame_needed = 0, uses_anonymous_args = 0
 4487 0000 90F84833 		ldrb	r3, [r0, #840]	@ zero_extendqisi2
 4488 0004 9342     		cmp	r3, r2
 4489 0006 00F0AC80 		beq	.L883
 4490 000a 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 4491 000e 0E46     		mov	r6, r1
 4492 0010 82B0     		sub	sp, sp, #8
 4493 0012 0446     		mov	r4, r0
 4494 0014 0021     		movs	r1, #0
 4495 0016 D0F83403 		ldr	r0, [r0, #820]	@ float
 4496 001a 1546     		mov	r5, r2
 4497 001c FFF7FEFF 		bl	__aeabi_fcmpeq
 4498 0020 38B9     		cbnz	r0, .L914
 4499              	.L859:
 4500 0022 E36D     		ldr	r3, [r4, #92]
 4501 0024 9E42     		cmp	r6, r3
 4502 0026 1DD0     		beq	.L861
 4503 0028 B3B1     		cbz	r3, .L862
ARM GAS  /tmp/ccx5mP1m.s 			page 80


 4504              	.L881:
 4505 002a 0020     		movs	r0, #0
 4506 002c 02B0     		add	sp, sp, #8
 4507              		@ sp needed
 4508 002e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4509              	.L914:
 4510 0032 0021     		movs	r1, #0
 4511 0034 D4F84403 		ldr	r0, [r4, #836]	@ float
 4512 0038 FFF7FEFF 		bl	__aeabi_fcmpeq
 4513 003c 0028     		cmp	r0, #0
 4514 003e F0D0     		beq	.L859
 4515 0040 35B9     		cbnz	r5, .L905
 4516 0042 0021     		movs	r1, #0
 4517 0044 D4F83803 		ldr	r0, [r4, #824]	@ float
 4518 0048 FFF7FEFF 		bl	__aeabi_fcmpeq
 4519 004c 0028     		cmp	r0, #0
 4520 004e E8D0     		beq	.L859
 4521              	.L905:
 4522 0050 0120     		movs	r0, #1
 4523 0052 02B0     		add	sp, sp, #8
 4524              		@ sp needed
 4525 0054 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4526              	.L862:
 4527 0058 B268     		ldr	r2, [r6, #8]
 4528 005a E665     		str	r6, [r4, #92]
 4529 005c D368     		ldr	r3, [r2, #12]
 4530 005e 43F00103 		orr	r3, r3, #1
 4531 0062 D360     		str	r3, [r2, #12]
 4532              	.L861:
 4533 0064 D4F8FCA0 		ldr	r10, [r4, #252]
 4534 0068 BAF1000F 		cmp	r10, #0
 4535 006c DDD1     		bne	.L881
 4536 006e 6C4F     		ldr	r7, .L916
 4537 0070 3846     		mov	r0, r7
 4538 0072 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 4539 0076 8146     		mov	r9, r0
 4540 0078 3846     		mov	r0, r7
 4541 007a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 4542 007e 8046     		mov	r8, r0
 4543 0080 4B46     		mov	r3, r9
 4544 0082 B868     		ldr	r0, [r7, #8]
 4545 0084 5246     		mov	r2, r10
 4546 0086 CDF80080 		str	r8, [sp]
 4547 008a 04F1A001 		add	r1, r4, #160
 4548 008e FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 4549 0092 D4F8F831 		ldr	r3, [r4, #504]
 4550 0096 082B     		cmp	r3, #8
 4551 0098 09D8     		bhi	.L866
 4552 009a 0021     		movs	r1, #0
 4553 009c 2833     		adds	r3, r3, #40
 4554 009e 04EB8303 		add	r3, r4, r3, lsl #2
 4555 00a2 04F1C402 		add	r2, r4, #196
 4556              	.L867:
 4557 00a6 43F8041B 		str	r1, [r3], #4	@ float
 4558 00aa 9342     		cmp	r3, r2
 4559 00ac FBD1     		bne	.L867
 4560              	.L866:
ARM GAS  /tmp/ccx5mP1m.s 			page 81


 4561 00ae 0021     		movs	r1, #0
 4562 00b0 4FF0010C 		mov	ip, #1
 4563 00b4 4FF0FF30 		mov	r0, #-1
 4564 00b8 4FF0020E 		mov	lr, #2
 4565 00bc 226C     		ldr	r2, [r4, #64]
 4566 00be 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 4567 00c2 84F8F810 		strb	r1, [r4, #248]
 4568 00c6 1268     		ldr	r2, [r2]
 4569 00c8 03F0CD03 		and	r3, r3, #205
 4570 00cc 43EA0C03 		orr	r3, r3, ip
 4571 00d0 9642     		cmp	r6, r2
 4572 00d2 84F8F930 		strb	r3, [r4, #249]
 4573 00d6 C4F8F410 		str	r1, [r4, #244]
 4574 00da C4F8E400 		str	r0, [r4, #228]
 4575 00de C4F8ECC0 		str	ip, [r4, #236]
 4576 00e2 C4F8F0E0 		str	lr, [r4, #240]
 4577 00e6 00F09280 		beq	.L915
 4578              	.L865:
 4579 00ea C4F8E400 		str	r0, [r4, #228]
 4580 00ee C4F8EC90 		str	r9, [r4, #236]
 4581 00f2 C4F8F080 		str	r8, [r4, #240]
 4582 00f6 B5B3     		cbz	r5, .L868
 4583 00f8 FA6A     		ldr	r2, [r7, #44]
 4584 00fa 1AB3     		cbz	r2, .L869
 4585 00fc D16D     		ldr	r1, [r2, #92]
 4586 00fe 81B1     		cbz	r1, .L872
 4587 0100 D4F83433 		ldr	r3, [r4, #820]
 4588 0104 7831     		adds	r1, r1, #120
 4589 0106 D4F8F871 		ldr	r7, [r4, #504]
 4590 010a 1144     		add	r1, r1, r2
 4591 010c 03F10040 		add	r0, r3, #-2147483648
 4592 0110 7832     		adds	r2, r2, #120
 4593              	.L871:
 4594 0112 12F8013B 		ldrb	r3, [r2], #1	@ zero_extendqisi2
 4595 0116 3B44     		add	r3, r3, r7
 4596 0118 2833     		adds	r3, r3, #40
 4597 011a 8A42     		cmp	r2, r1
 4598 011c 44F82300 		str	r0, [r4, r3, lsl #2]	@ float
 4599 0120 F7D1     		bne	.L871
 4600              	.L872:
 4601 0122 0123     		movs	r3, #1
 4602 0124 94F8F920 		ldrb	r2, [r4, #249]	@ zero_extendqisi2
 4603 0128 D4F83C13 		ldr	r1, [r4, #828]	@ float
 4604 012c 6FF38202 		bfc	r2, #2, #1
 4605 0130 84F8F920 		strb	r2, [r4, #249]
 4606 0134 C4F80031 		str	r3, [r4, #256]
 4607 0138 C4F8DC10 		str	r1, [r4, #220]	@ float
 4608              		.syntax unified
 4609              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4610 013c BFF35F8F 		dmb
 4611              	@ 0 "" 2
 4612              		.thumb
 4613              		.syntax unified
 4614 0140 C4F8FC30 		str	r3, [r4, #252]
 4615              	.L869:
 4616 0144 0021     		movs	r1, #0
 4617 0146 D4F84403 		ldr	r0, [r4, #836]	@ float
ARM GAS  /tmp/ccx5mP1m.s 			page 82


 4618 014a FFF7FEFF 		bl	__aeabi_fcmpgt
 4619 014e 10B1     		cbz	r0, .L874
 4620 0150 2B22     		movs	r2, #43
 4621 0152 B368     		ldr	r3, [r6, #8]
 4622 0154 1A75     		strb	r2, [r3, #20]
 4623              	.L874:
 4624 0156 0120     		movs	r0, #1
 4625 0158 84F84853 		strb	r5, [r4, #840]
 4626 015c 02B0     		add	sp, sp, #8
 4627              		@ sp needed
 4628 015e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4629              	.L883:
 4630 0162 0120     		movs	r0, #1
 4631 0164 7047     		bx	lr
 4632              	.L868:
 4633 0166 4FF00008 		mov	r8, #0
 4634 016a D4F84403 		ldr	r0, [r4, #836]	@ float
 4635 016e 4146     		mov	r1, r8
 4636 0170 FFF7FEFF 		bl	__aeabi_fcmpgt
 4637 0174 F8B1     		cbz	r0, .L907
 4638 0176 2368     		ldr	r3, [r4]
 4639 0178 D4F89C10 		ldr	r1, [r4, #156]	@ float
 4640 017c D3F8DC30 		ldr	r3, [r3, #220]	@ float
 4641 0180 D4F8A800 		ldr	r0, [r4, #168]	@ float
 4642 0184 C4F8DC30 		str	r3, [r4, #220]	@ float
 4643 0188 FFF7FEFF 		bl	__aeabi_fsub
 4644 018c 0123     		movs	r3, #1
 4645 018e 94F8F920 		ldrb	r2, [r4, #249]	@ zero_extendqisi2
 4646 0192 C4F8A800 		str	r0, [r4, #168]	@ float
 4647 0196 65F38202 		bfi	r2, r5, #2, #1
 4648 019a C4F89C80 		str	r8, [r4, #156]	@ float
 4649 019e 84F8F920 		strb	r2, [r4, #249]
 4650 01a2 C4F80031 		str	r3, [r4, #256]
 4651              		.syntax unified
 4652              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4653 01a6 BFF35F8F 		dmb
 4654              	@ 0 "" 2
 4655              		.thumb
 4656              		.syntax unified
 4657 01aa 2C21     		movs	r1, #44
 4658 01ac B268     		ldr	r2, [r6, #8]
 4659 01ae C4F8FC30 		str	r3, [r4, #252]
 4660 01b2 1175     		strb	r1, [r2, #20]
 4661 01b4 CFE7     		b	.L874
 4662              	.L907:
 4663 01b6 FE6A     		ldr	r6, [r7, #44]
 4664 01b8 002E     		cmp	r6, #0
 4665 01ba CCD0     		beq	.L874
 4666 01bc F76D     		ldr	r7, [r6, #92]
 4667 01be A7B1     		cbz	r7, .L880
 4668 01c0 D4F83413 		ldr	r1, [r4, #820]	@ float
 4669 01c4 D4F83803 		ldr	r0, [r4, #824]	@ float
 4670 01c8 FFF7FEFF 		bl	__aeabi_fadd
 4671 01cc 07F17801 		add	r1, r7, #120
 4672 01d0 D4F8F871 		ldr	r7, [r4, #504]
 4673 01d4 3144     		add	r1, r1, r6
 4674 01d6 06F17802 		add	r2, r6, #120
ARM GAS  /tmp/ccx5mP1m.s 			page 83


 4675              	.L879:
 4676 01da 12F8013B 		ldrb	r3, [r2], #1	@ zero_extendqisi2
 4677 01de 3B44     		add	r3, r3, r7
 4678 01e0 2833     		adds	r3, r3, #40
 4679 01e2 9142     		cmp	r1, r2
 4680 01e4 44F82300 		str	r0, [r4, r3, lsl #2]	@ float
 4681 01e8 F7D1     		bne	.L879
 4682              	.L880:
 4683 01ea 0122     		movs	r2, #1
 4684 01ec 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 4685 01f0 D4F84013 		ldr	r1, [r4, #832]	@ float
 4686 01f4 43F00403 		orr	r3, r3, #4
 4687 01f8 84F8F930 		strb	r3, [r4, #249]
 4688 01fc C4F80021 		str	r2, [r4, #256]
 4689 0200 C4F8DC10 		str	r1, [r4, #220]	@ float
 4690              		.syntax unified
 4691              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4692 0204 BFF35F8F 		dmb
 4693              	@ 0 "" 2
 4694              		.thumb
 4695              		.syntax unified
 4696 0208 C4F8FC20 		str	r2, [r4, #252]
 4697 020c A3E7     		b	.L874
 4698              	.L915:
 4699 020e E068     		ldr	r0, [r4, #12]
 4700 0210 0368     		ldr	r3, [r0]
 4701 0212 9B68     		ldr	r3, [r3, #8]
 4702 0214 9847     		blx	r3
 4703 0216 0146     		mov	r1, r0
 4704 0218 3046     		mov	r0, r6
 4705 021a FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 4706 021e 64E7     		b	.L865
 4707              	.L917:
 4708              		.align	2
 4709              	.L916:
 4710 0220 00000000 		.word	reprap
 4711              		.size	_ZN6GCodes15RetractFilamentER11GCodeBufferb, .-_ZN6GCodes15RetractFilamentER11GCodeBufferb
 4712              		.section	.text._ZNK6GCodes26GetRawExtruderTotalByDriveEj,"ax",%progbits
 4713              		.align	1
 4714              		.p2align 2,,3
 4715              		.global	_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 4716              		.syntax unified
 4717              		.thumb
 4718              		.thumb_func
 4719              		.fpu softvfp
 4720              		.type	_ZNK6GCodes26GetRawExtruderTotalByDriveEj, %function
 4721              	_ZNK6GCodes26GetRawExtruderTotalByDriveEj:
 4722              		@ args = 0, pretend = 0, frame = 0
 4723              		@ frame_needed = 0, uses_anonymous_args = 0
 4724              		@ link register save eliminated.
 4725 0000 D0F80032 		ldr	r3, [r0, #512]
 4726 0004 8B42     		cmp	r3, r1
 4727 0006 86BF     		itte	hi
 4728 0008 8831     		addhi	r1, r1, #136
 4729 000a 50F82100 		ldrhi	r0, [r0, r1, lsl #2]	@ float
 4730 000e 0020     		movls	r0, #0
 4731 0010 7047     		bx	lr
ARM GAS  /tmp/ccx5mP1m.s 			page 84


 4732              		.size	_ZNK6GCodes26GetRawExtruderTotalByDriveEj, .-_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 4733 0012 00BF     		.section	.text._ZNK6GCodes15IsCodeQueueIdleEv,"ax",%progbits
 4734              		.align	1
 4735              		.p2align 2,,3
 4736              		.global	_ZNK6GCodes15IsCodeQueueIdleEv
 4737              		.syntax unified
 4738              		.thumb
 4739              		.thumb_func
 4740              		.fpu softvfp
 4741              		.type	_ZNK6GCodes15IsCodeQueueIdleEv, %function
 4742              	_ZNK6GCodes15IsCodeQueueIdleEv:
 4743              		@ args = 0, pretend = 0, frame = 0
 4744              		@ frame_needed = 0, uses_anonymous_args = 0
 4745              		@ link register save eliminated.
 4746 0000 036D     		ldr	r3, [r0, #80]
 4747 0002 1B68     		ldr	r3, [r3]
 4748 0004 93F82830 		ldrb	r3, [r3, #40]	@ zero_extendqisi2
 4749 0008 083B     		subs	r3, r3, #8
 4750 000a 012B     		cmp	r3, #1
 4751 000c 03D9     		bls	.L922
 4752 000e D0F8D003 		ldr	r0, [r0, #976]
 4753 0012 FFF7FEBF 		b	_ZNK10GCodeQueue6IsIdleEv
 4754              	.L922:
 4755 0016 0020     		movs	r0, #0
 4756 0018 7047     		bx	lr
 4757              		.size	_ZNK6GCodes15IsCodeQueueIdleEv, .-_ZNK6GCodes15IsCodeQueueIdleEv
 4758 001a 00BF     		.section	.text._ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb,"ax",%progbits
 4759              		.align	1
 4760              		.p2align 2,,3
 4761              		.global	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 4762              		.syntax unified
 4763              		.thumb
 4764              		.thumb_func
 4765              		.fpu softvfp
 4766              		.type	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb, %function
 4767              	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb:
 4768              		@ args = 0, pretend = 0, frame = 0
 4769              		@ frame_needed = 0, uses_anonymous_args = 0
 4770 0000 E9B1     		cbz	r1, .L936
 4771 0002 0B6E     		ldr	r3, [r1, #96]
 4772 0004 DBB1     		cbz	r3, .L936
 4773 0006 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4774 000a 0E46     		mov	r6, r1
 4775 000c 1746     		mov	r7, r2
 4776 000e 0024     		movs	r4, #0
 4777 0010 DFF83080 		ldr	r8, .L942
 4778 0014 01F17E05 		add	r5, r1, #126
 4779 0018 02E0     		b	.L927
 4780              	.L941:
 4781 001a 336E     		ldr	r3, [r6, #96]
 4782 001c A342     		cmp	r3, r4
 4783 001e 0BD9     		bls	.L940
 4784              	.L927:
 4785 0020 3A46     		mov	r2, r7
 4786 0022 15F9011B 		ldrsb	r1, [r5], #1
 4787 0026 D8F80C00 		ldr	r0, [r8, #12]
 4788 002a FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
ARM GAS  /tmp/ccx5mP1m.s 			page 85


 4789 002e 0134     		adds	r4, r4, #1
 4790 0030 0028     		cmp	r0, #0
 4791 0032 F2D1     		bne	.L941
 4792 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4793              	.L940:
 4794 0038 0120     		movs	r0, #1
 4795 003a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4796              	.L936:
 4797 003e 0120     		movs	r0, #1
 4798 0040 7047     		bx	lr
 4799              	.L943:
 4800 0042 00BF     		.align	2
 4801              	.L942:
 4802 0044 00000000 		.word	reprap
 4803              		.size	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb, .-_ZNK6GCodes28ToolHeatersAtSetTemperatu
 4804              		.section	.text._ZN6GCodes18SetMachinePositionEPKfb,"ax",%progbits
 4805              		.align	1
 4806              		.p2align 2,,3
 4807              		.global	_ZN6GCodes18SetMachinePositionEPKfb
 4808              		.syntax unified
 4809              		.thumb
 4810              		.thumb_func
 4811              		.fpu softvfp
 4812              		.type	_ZN6GCodes18SetMachinePositionEPKfb, %function
 4813              	_ZN6GCodes18SetMachinePositionEPKfb:
 4814              		@ args = 0, pretend = 0, frame = 0
 4815              		@ frame_needed = 0, uses_anonymous_args = 0
 4816              		@ link register save eliminated.
 4817 0000 10B4     		push	{r4}
 4818 0002 0C68     		ldr	r4, [r1]	@ unaligned
 4819 0004 034B     		ldr	r3, .L946
 4820 0006 C0F8A040 		str	r4, [r0, #160]	@ unaligned
 4821 000a 10BC     		pop	{r4}
 4822 000c 9868     		ldr	r0, [r3, #8]
 4823 000e FFF7FEBF 		b	_ZN4Move14SetNewPositionEPKfb
 4824              	.L947:
 4825 0012 00BF     		.align	2
 4826              	.L946:
 4827 0014 00000000 		.word	reprap
 4828              		.size	_ZN6GCodes18SetMachinePositionEPKfb, .-_ZN6GCodes18SetMachinePositionEPKfb
 4829              		.section	.text._ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer,"ax",%progbits
 4830              		.align	1
 4831              		.p2align 2,,3
 4832              		.global	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer
 4833              		.syntax unified
 4834              		.thumb
 4835              		.thumb_func
 4836              		.fpu softvfp
 4837              		.type	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer, %function
 4838              	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer:
 4839              		@ args = 0, pretend = 0, frame = 0
 4840              		@ frame_needed = 0, uses_anonymous_args = 0
 4841              		@ link register save eliminated.
 4842 0000 70B4     		push	{r4, r5, r6}
 4843 0002 D0F8FC61 		ldr	r6, [r0, #508]
 4844 0006 56B1     		cbz	r6, .L950
 4845 0008 0B46     		mov	r3, r1
ARM GAS  /tmp/ccx5mP1m.s 			page 86


 4846 000a 01EB8606 		add	r6, r1, r6, lsl #2
 4847 000e 00F18404 		add	r4, r0, #132
 4848              	.L951:
 4849 0012 54F8045B 		ldr	r5, [r4], #4	@ float
 4850 0016 43F8045B 		str	r5, [r3], #4	@ float
 4851 001a B342     		cmp	r3, r6
 4852 001c F9D1     		bne	.L951
 4853              	.L950:
 4854 001e 70BC     		pop	{r4, r5, r6}
 4855 0020 9368     		ldr	r3, [r2, #8]
 4856 0022 D0F81C22 		ldr	r2, [r0, #540]	@ float
 4857 0026 5B68     		ldr	r3, [r3, #4]	@ float
 4858 0028 CA61     		str	r2, [r1, #28]	@ float
 4859 002a 8B61     		str	r3, [r1, #24]	@ float
 4860 002c 7047     		bx	lr
 4861              		.size	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer, .-_ZNK6GCodes12SavePositionER12Res
 4862 002e 00BF     		.section	.text._ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer,"ax",%progbits
 4863              		.align	1
 4864              		.p2align 2,,3
 4865              		.global	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer
 4866              		.syntax unified
 4867              		.thumb
 4868              		.thumb_func
 4869              		.fpu softvfp
 4870              		.type	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer, %function
 4871              	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer:
 4872              		@ args = 0, pretend = 0, frame = 0
 4873              		@ frame_needed = 0, uses_anonymous_args = 0
 4874              		@ link register save eliminated.
 4875 0000 30B4     		push	{r4, r5}
 4876 0002 D0F8FC51 		ldr	r5, [r0, #508]
 4877 0006 4DB1     		cbz	r5, .L959
 4878 0008 0B46     		mov	r3, r1
 4879 000a 8430     		adds	r0, r0, #132
 4880 000c 01EB8505 		add	r5, r1, r5, lsl #2
 4881              	.L960:
 4882 0010 53F8044B 		ldr	r4, [r3], #4	@ float
 4883 0014 AB42     		cmp	r3, r5
 4884 0016 40F8044B 		str	r4, [r0], #4	@ float
 4885 001a F9D1     		bne	.L960
 4886              	.L959:
 4887 001c 12B1     		cbz	r2, .L955
 4888 001e 9368     		ldr	r3, [r2, #8]
 4889 0020 8A69     		ldr	r2, [r1, #24]	@ float
 4890 0022 5A60     		str	r2, [r3, #4]	@ float
 4891              	.L955:
 4892 0024 30BC     		pop	{r4, r5}
 4893 0026 7047     		bx	lr
 4894              		.size	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer, .-_ZN6GCodes15RestorePositionERK
 4895              		.section	.text._ZN6GCodes19ToolOffsetTransformEPKfPfm,"ax",%progbits
 4896              		.align	1
 4897              		.p2align 2,,3
 4898              		.global	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 4899              		.syntax unified
 4900              		.thumb
 4901              		.thumb_func
 4902              		.fpu softvfp
ARM GAS  /tmp/ccx5mP1m.s 			page 87


 4903              		.type	_ZN6GCodes19ToolOffsetTransformEPKfPfm, %function
 4904              	_ZN6GCodes19ToolOffsetTransformEPKfPfm:
 4905              		@ args = 0, pretend = 0, frame = 32
 4906              		@ frame_needed = 0, uses_anonymous_args = 0
 4907 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4908 0004 474C     		ldr	r4, .L986
 4909 0006 89B0     		sub	sp, sp, #36
 4910 0008 E56A     		ldr	r5, [r4, #44]
 4911 000a 0390     		str	r0, [sp, #12]
 4912 000c 8846     		mov	r8, r1
 4913 000e 9146     		mov	r9, r2
 4914 0010 0193     		str	r3, [sp, #4]
 4915 0012 002D     		cmp	r5, #0
 4916 0014 68D0     		beq	.L984
 4917 0016 AB6E     		ldr	r3, [r5, #104]
 4918 0018 039A     		ldr	r2, [sp, #12]
 4919 001a 1946     		mov	r1, r3
 4920 001c 0693     		str	r3, [sp, #24]
 4921 001e D2F8FC71 		ldr	r7, [r2, #508]
 4922 0022 EB6E     		ldr	r3, [r5, #108]
 4923 0024 0793     		str	r3, [sp, #28]
 4924 0026 77B3     		cbz	r7, .L966
 4925 0028 4FF0000B 		mov	fp, #0
 4926 002c 5C46     		mov	r4, fp
 4927 002e C3F34003 		ubfx	r3, r3, #1, #1
 4928 0032 0593     		str	r3, [sp, #20]
 4929 0034 01F00103 		and	r3, r1, #1
 4930 0038 0293     		str	r3, [sp, #8]
 4931 003a 019B     		ldr	r3, [sp, #4]
 4932 003c 0C35     		adds	r5, r5, #12
 4933 003e 03F00103 		and	r3, r3, #1
 4934 0042 02F50176 		add	r6, r2, #516
 4935 0046 0493     		str	r3, [sp, #16]
 4936              	.L974:
 4937 0048 74BB     		cbnz	r4, .L968
 4938 004a 029B     		ldr	r3, [sp, #8]
 4939 004c 93B1     		cbz	r3, .L970
 4940 004e 2968     		ldr	r1, [r5]	@ float
 4941 0050 306C     		ldr	r0, [r6, #64]	@ float
 4942 0052 FFF7FEFF 		bl	__aeabi_fsub
 4943 0056 049B     		ldr	r3, [sp, #16]
 4944 0058 8246     		mov	r10, r0
 4945 005a 002B     		cmp	r3, #0
 4946 005c 3ED1     		bne	.L976
 4947              	.L977:
 4948 005e 0021     		movs	r1, #0
 4949              	.L973:
 4950 0060 58F80100 		ldr	r0, [r8, r1]	@ float
 4951 0064 3168     		ldr	r1, [r6]	@ float
 4952 0066 FFF7FEFF 		bl	__aeabi_fmul
 4953 006a 5146     		mov	r1, r10
 4954 006c FFF7FEFF 		bl	__aeabi_fadd
 4955 0070 49F82400 		str	r0, [r9, r4, lsl #2]	@ float
 4956              	.L970:
 4957 0074 0134     		adds	r4, r4, #1
 4958 0076 BC42     		cmp	r4, r7
 4959 0078 0BF1040B 		add	fp, fp, #4
ARM GAS  /tmp/ccx5mP1m.s 			page 88


 4960 007c 06F10406 		add	r6, r6, #4
 4961 0080 05F10405 		add	r5, r5, #4
 4962 0084 E0D1     		bne	.L974
 4963              	.L966:
 4964 0086 039A     		ldr	r2, [sp, #12]
 4965 0088 D2F8C812 		ldr	r1, [r2, #712]	@ float
 4966 008c D2F89C00 		ldr	r0, [r2, #156]	@ float
 4967 0090 FFF7FEFF 		bl	__aeabi_fadd
 4968 0094 0146     		mov	r1, r0
 4969 0096 D9F80800 		ldr	r0, [r9, #8]	@ float
 4970 009a FFF7FEFF 		bl	__aeabi_fadd
 4971 009e C9F80800 		str	r0, [r9, #8]	@ float
 4972 00a2 09B0     		add	sp, sp, #36
 4973              		@ sp needed
 4974 00a4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4975              	.L968:
 4976 00a8 012C     		cmp	r4, #1
 4977 00aa 19D0     		beq	.L985
 4978              	.L971:
 4979 00ac 2968     		ldr	r1, [r5]	@ float
 4980 00ae 306C     		ldr	r0, [r6, #64]	@ float
 4981 00b0 FFF7FEFF 		bl	__aeabi_fsub
 4982 00b4 019B     		ldr	r3, [sp, #4]
 4983 00b6 8246     		mov	r10, r0
 4984 00b8 23FA04F1 		lsr	r1, r3, r4
 4985 00bc CB07     		lsls	r3, r1, #31
 4986 00be 0DD4     		bmi	.L976
 4987 00c0 069B     		ldr	r3, [sp, #24]
 4988 00c2 23FA04F1 		lsr	r1, r3, r4
 4989 00c6 CA07     		lsls	r2, r1, #31
 4990 00c8 C9D4     		bmi	.L977
 4991 00ca 079B     		ldr	r3, [sp, #28]
 4992 00cc 23FA04F1 		lsr	r1, r3, r4
 4993 00d0 11F0010F 		tst	r1, #1
 4994 00d4 0CBF     		ite	eq
 4995 00d6 5946     		moveq	r1, fp
 4996 00d8 0421     		movne	r1, #4
 4997 00da C1E7     		b	.L973
 4998              	.L976:
 4999 00dc 5946     		mov	r1, fp
 5000 00de BFE7     		b	.L973
 5001              	.L985:
 5002 00e0 059B     		ldr	r3, [sp, #20]
 5003 00e2 002B     		cmp	r3, #0
 5004 00e4 E2D1     		bne	.L971
 5005 00e6 C5E7     		b	.L970
 5006              	.L984:
 5007 00e8 D0F8FC31 		ldr	r3, [r0, #508]
 5008 00ec 002B     		cmp	r3, #0
 5009 00ee CAD0     		beq	.L966
 5010 00f0 0399     		ldr	r1, [sp, #12]
 5011 00f2 08EB830A 		add	r10, r8, r3, lsl #2
 5012 00f6 01F50176 		add	r6, r1, #516
 5013 00fa A9F10405 		sub	r5, r9, #4
 5014 00fe 01F51174 		add	r4, r1, #580
 5015              	.L967:
 5016 0102 54F8047B 		ldr	r7, [r4], #4	@ float
ARM GAS  /tmp/ccx5mP1m.s 			page 89


 5017 0106 56F8041B 		ldr	r1, [r6], #4	@ float
 5018 010a 58F8040B 		ldr	r0, [r8], #4	@ float
 5019 010e FFF7FEFF 		bl	__aeabi_fmul
 5020 0112 3946     		mov	r1, r7
 5021 0114 FFF7FEFF 		bl	__aeabi_fadd
 5022 0118 C245     		cmp	r10, r8
 5023 011a 45F8040F 		str	r0, [r5, #4]!	@ float
 5024 011e F0D1     		bne	.L967
 5025 0120 B1E7     		b	.L966
 5026              	.L987:
 5027 0122 00BF     		.align	2
 5028              	.L986:
 5029 0124 00000000 		.word	reprap
 5030              		.size	_ZN6GCodes19ToolOffsetTransformEPKfPfm, .-_ZN6GCodes19ToolOffsetTransformEPKfPfm
 5031              		.section	.text._ZN6GCodes13EndSimulationEP11GCodeBuffer,"ax",%progbits
 5032              		.align	1
 5033              		.p2align 2,,3
 5034              		.global	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 5035              		.syntax unified
 5036              		.thumb
 5037              		.thumb_func
 5038              		.fpu softvfp
 5039              		.type	_ZN6GCodes13EndSimulationEP11GCodeBuffer, %function
 5040              	_ZN6GCodes13EndSimulationEP11GCodeBuffer:
 5041              		@ args = 0, pretend = 0, frame = 0
 5042              		@ frame_needed = 0, uses_anonymous_args = 0
 5043 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5044 0002 D0F8FC41 		ldr	r4, [r0, #508]
 5045 0006 0546     		mov	r5, r0
 5046 0008 00F18407 		add	r7, r0, #132
 5047 000c 00F5A076 		add	r6, r0, #320
 5048 0010 54B1     		cbz	r4, .L992
 5049 0012 3B46     		mov	r3, r7
 5050 0014 3246     		mov	r2, r6
 5051 0016 2134     		adds	r4, r4, #33
 5052 0018 00EB8404 		add	r4, r0, r4, lsl #2
 5053              	.L993:
 5054 001c 52F8040B 		ldr	r0, [r2], #4	@ float
 5055 0020 43F8040B 		str	r0, [r3], #4	@ float
 5056 0024 A342     		cmp	r3, r4
 5057 0026 F9D1     		bne	.L993
 5058              	.L992:
 5059 0028 19B1     		cbz	r1, .L991
 5060 002a 8B68     		ldr	r3, [r1, #8]
 5061 002c D5F85821 		ldr	r2, [r5, #344]	@ float
 5062 0030 5A60     		str	r2, [r3, #4]	@ float
 5063              	.L991:
 5064 0032 3946     		mov	r1, r7
 5065 0034 0023     		movs	r3, #0
 5066 0036 05F1A002 		add	r2, r5, #160
 5067 003a 2846     		mov	r0, r5
 5068 003c FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 5069 0040 054B     		ldr	r3, .L996
 5070 0042 3146     		mov	r1, r6
 5071 0044 9868     		ldr	r0, [r3, #8]
 5072 0046 0122     		movs	r2, #1
 5073 0048 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
ARM GAS  /tmp/ccx5mP1m.s 			page 90


 5074 004c D5F83C31 		ldr	r3, [r5, #316]
 5075 0050 C5F88032 		str	r3, [r5, #640]
 5076 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5077              	.L997:
 5078 0056 00BF     		.align	2
 5079              	.L996:
 5080 0058 00000000 		.word	reprap
 5081              		.size	_ZN6GCodes13EndSimulationEP11GCodeBuffer, .-_ZN6GCodes13EndSimulationEP11GCodeBuffer
 5082              		.section	.text._ZN6GCodes26ToolOffsetInverseTransformEPKfPf,"ax",%progbits
 5083              		.align	1
 5084              		.p2align 2,,3
 5085              		.global	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5086              		.syntax unified
 5087              		.thumb
 5088              		.thumb_func
 5089              		.fpu softvfp
 5090              		.type	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf, %function
 5091              	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf:
 5092              		@ args = 0, pretend = 0, frame = 32
 5093              		@ frame_needed = 0, uses_anonymous_args = 0
 5094 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5095 0004 554D     		ldr	r5, .L1026
 5096 0006 89B0     		sub	sp, sp, #36
 5097 0008 EE6A     		ldr	r6, [r5, #44]
 5098 000a 8146     		mov	r9, r0
 5099 000c 0C46     		mov	r4, r1
 5100 000e 0692     		str	r2, [sp, #24]
 5101 0010 002E     		cmp	r6, #0
 5102 0012 00F08780 		beq	.L1025
 5103 0016 2846     		mov	r0, r5
 5104 0018 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5105 001c 0490     		str	r0, [sp, #16]
 5106 001e 2846     		mov	r0, r5
 5107 0020 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 5108 0024 D9F8FC31 		ldr	r3, [r9, #508]
 5109 0028 0593     		str	r3, [sp, #20]
 5110 002a 002B     		cmp	r3, #0
 5111 002c 67D0     		beq	.L1001
 5112 002e 4FF0000B 		mov	fp, #0
 5113 0032 0023     		movs	r3, #0
 5114 0034 CDF804B0 		str	fp, [sp, #4]
 5115 0038 CDF800B0 		str	fp, [sp]
 5116 003c 09F51175 		add	r5, r9, #580
 5117 0040 CDF81C90 		str	r9, [sp, #28]
 5118 0044 D946     		mov	r9, fp
 5119 0046 8346     		mov	fp, r0
 5120 0048 0293     		str	r3, [sp, #8]	@ float
 5121 004a 0393     		str	r3, [sp, #12]	@ float
 5122 004c 069B     		ldr	r3, [sp, #24]
 5123 004e 0C36     		adds	r6, r6, #12
 5124 0050 1F1F     		subs	r7, r3, #4
 5125              	.L1006:
 5126 0052 56F804AB 		ldr	r10, [r6], #4	@ float
 5127 0056 55F8040B 		ldr	r0, [r5], #4	@ float
 5128 005a 5146     		mov	r1, r10
 5129 005c FFF7FEFF 		bl	__aeabi_fsub
 5130 0060 5146     		mov	r1, r10
ARM GAS  /tmp/ccx5mP1m.s 			page 91


 5131 0062 8046     		mov	r8, r0
 5132 0064 2068     		ldr	r0, [r4]	@ float
 5133 0066 FFF7FEFF 		bl	__aeabi_fadd
 5134 006a 049B     		ldr	r3, [sp, #16]
 5135 006c 47F8040F 		str	r0, [r7, #4]!	@ float
 5136 0070 23FA09F2 		lsr	r2, r3, r9
 5137 0074 D307     		lsls	r3, r2, #31
 5138 0076 0FD5     		bpl	.L1004
 5139 0078 55F8441C 		ldr	r1, [r5, #-68]	@ float
 5140 007c 2068     		ldr	r0, [r4]	@ float
 5141 007e FFF7FEFF 		bl	__aeabi_fdiv
 5142 0082 4146     		mov	r1, r8
 5143 0084 FFF7FEFF 		bl	__aeabi_fsub
 5144 0088 0146     		mov	r1, r0
 5145 008a 0398     		ldr	r0, [sp, #12]	@ float
 5146 008c FFF7FEFF 		bl	__aeabi_fadd
 5147 0090 009B     		ldr	r3, [sp]
 5148 0092 0390     		str	r0, [sp, #12]	@ float
 5149 0094 0133     		adds	r3, r3, #1
 5150 0096 0093     		str	r3, [sp]
 5151              	.L1004:
 5152 0098 2BFA09F2 		lsr	r2, fp, r9
 5153 009c 12F0010F 		tst	r2, #1
 5154 00a0 09F10109 		add	r9, r9, #1
 5155 00a4 0FD0     		beq	.L1005
 5156 00a6 55F8441C 		ldr	r1, [r5, #-68]	@ float
 5157 00aa 2068     		ldr	r0, [r4]	@ float
 5158 00ac FFF7FEFF 		bl	__aeabi_fdiv
 5159 00b0 4146     		mov	r1, r8
 5160 00b2 FFF7FEFF 		bl	__aeabi_fsub
 5161 00b6 0146     		mov	r1, r0
 5162 00b8 0298     		ldr	r0, [sp, #8]	@ float
 5163 00ba FFF7FEFF 		bl	__aeabi_fadd
 5164 00be 019B     		ldr	r3, [sp, #4]
 5165 00c0 0290     		str	r0, [sp, #8]	@ float
 5166 00c2 0133     		adds	r3, r3, #1
 5167 00c4 0193     		str	r3, [sp, #4]
 5168              	.L1005:
 5169 00c6 059B     		ldr	r3, [sp, #20]
 5170 00c8 0434     		adds	r4, r4, #4
 5171 00ca 9945     		cmp	r9, r3
 5172 00cc C1D1     		bne	.L1006
 5173 00ce 009B     		ldr	r3, [sp]
 5174 00d0 DDF81C90 		ldr	r9, [sp, #28]
 5175 00d4 43B1     		cbz	r3, .L1007
 5176 00d6 1846     		mov	r0, r3
 5177 00d8 FFF7FEFF 		bl	__aeabi_ui2f
 5178 00dc 0146     		mov	r1, r0
 5179 00de 0398     		ldr	r0, [sp, #12]	@ float
 5180 00e0 FFF7FEFF 		bl	__aeabi_fdiv
 5181 00e4 069B     		ldr	r3, [sp, #24]
 5182 00e6 1860     		str	r0, [r3]	@ float
 5183              	.L1007:
 5184 00e8 019B     		ldr	r3, [sp, #4]
 5185 00ea 43B1     		cbz	r3, .L1001
 5186 00ec 1846     		mov	r0, r3
 5187 00ee FFF7FEFF 		bl	__aeabi_ui2f
ARM GAS  /tmp/ccx5mP1m.s 			page 92


 5188 00f2 0146     		mov	r1, r0
 5189 00f4 0298     		ldr	r0, [sp, #8]	@ float
 5190 00f6 FFF7FEFF 		bl	__aeabi_fdiv
 5191 00fa 069B     		ldr	r3, [sp, #24]
 5192 00fc 5860     		str	r0, [r3, #4]	@ float
 5193              	.L1001:
 5194 00fe D9F8C812 		ldr	r1, [r9, #712]	@ float
 5195 0102 D9F89C00 		ldr	r0, [r9, #156]	@ float
 5196 0106 FFF7FEFF 		bl	__aeabi_fadd
 5197 010a D9F80C12 		ldr	r1, [r9, #524]	@ float
 5198 010e FFF7FEFF 		bl	__aeabi_fdiv
 5199 0112 069C     		ldr	r4, [sp, #24]
 5200 0114 0146     		mov	r1, r0
 5201 0116 A068     		ldr	r0, [r4, #8]	@ float
 5202 0118 FFF7FEFF 		bl	__aeabi_fsub
 5203 011c A060     		str	r0, [r4, #8]	@ float
 5204 011e 09B0     		add	sp, sp, #36
 5205              		@ sp needed
 5206 0120 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5207              	.L1025:
 5208 0124 D0F8FC31 		ldr	r3, [r0, #508]
 5209 0128 002B     		cmp	r3, #0
 5210 012a E8D0     		beq	.L1001
 5211 012c 00F50177 		add	r7, r0, #516
 5212 0130 01EB830A 		add	r10, r1, r3, lsl #2
 5213 0134 161F     		subs	r6, r2, #4
 5214 0136 00F51175 		add	r5, r0, #580
 5215              	.L1003:
 5216 013a 57F8048B 		ldr	r8, [r7], #4	@ float
 5217 013e 55F8041B 		ldr	r1, [r5], #4	@ float
 5218 0142 54F8040B 		ldr	r0, [r4], #4	@ float
 5219 0146 FFF7FEFF 		bl	__aeabi_fsub
 5220 014a 4146     		mov	r1, r8
 5221 014c FFF7FEFF 		bl	__aeabi_fdiv
 5222 0150 A245     		cmp	r10, r4
 5223 0152 46F8040F 		str	r0, [r6, #4]!	@ float
 5224 0156 F0D1     		bne	.L1003
 5225 0158 D1E7     		b	.L1001
 5226              	.L1027:
 5227 015a 00BF     		.align	2
 5228              	.L1026:
 5229 015c 00000000 		.word	reprap
 5230              		.size	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf, .-_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5231              		.section	.text._ZN6GCodes5ResetEv,"ax",%progbits
 5232              		.align	1
 5233              		.p2align 2,,3
 5234              		.global	_ZN6GCodes5ResetEv
 5235              		.syntax unified
 5236              		.thumb
 5237              		.thumb_func
 5238              		.fpu softvfp
 5239              		.type	_ZN6GCodes5ResetEv, %function
 5240              	_ZN6GCodes5ResetEv:
 5241              		@ args = 0, pretend = 0, frame = 0
 5242              		@ frame_needed = 0, uses_anonymous_args = 0
 5243 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5244 0002 0446     		mov	r4, r0
ARM GAS  /tmp/ccx5mP1m.s 			page 93


 5245 0004 836B     		ldr	r3, [r0, #56]
 5246 0006 0025     		movs	r5, #0
 5247 0008 1868     		ldr	r0, [r3]
 5248 000a FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5249 000e E36B     		ldr	r3, [r4, #60]
 5250 0010 1868     		ldr	r0, [r3]
 5251 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5252 0016 236C     		ldr	r3, [r4, #64]
 5253 0018 1868     		ldr	r0, [r3]
 5254 001a FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5255 001e 636C     		ldr	r3, [r4, #68]
 5256 0020 1868     		ldr	r0, [r3]
 5257 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5258 0026 A36C     		ldr	r3, [r4, #72]
 5259 0028 1868     		ldr	r0, [r3]
 5260 002a FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5261 002e 0122     		movs	r2, #1
 5262 0030 A36C     		ldr	r3, [r4, #72]
 5263 0032 E16C     		ldr	r1, [r4, #76]
 5264 0034 1B68     		ldr	r3, [r3]
 5265 0036 0868     		ldr	r0, [r1]
 5266 0038 83F8B220 		strb	r2, [r3, #178]
 5267 003c FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5268 0040 236D     		ldr	r3, [r4, #80]
 5269 0042 1868     		ldr	r0, [r3]
 5270 0044 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5271 0048 636D     		ldr	r3, [r4, #84]
 5272 004a 1868     		ldr	r0, [r3]
 5273 004c FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5274 0050 D4F85C02 		ldr	r0, [r4, #604]
 5275 0054 A565     		str	r5, [r4, #88]
 5276 0056 18B1     		cbz	r0, .L1029
 5277 0058 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5278 005c C4F85C52 		str	r5, [r4, #604]
 5279              	.L1029:
 5280 0060 0025     		movs	r5, #0
 5281 0062 04F52C70 		add	r0, r4, #688
 5282 0066 0146     		mov	r1, r0
 5283 0068 4FF07E52 		mov	r2, #1065353216
 5284 006c 4F4B     		ldr	r3, .L1046
 5285 006e C4F86452 		str	r5, [r4, #612]
 5286 0072 C4F89432 		str	r3, [r4, #660]	@ float
 5287 0076 04F52673 		add	r3, r4, #664
 5288              	.L1030:
 5289 007a 41F8042B 		str	r2, [r1], #4	@ float
 5290 007e 43F8042B 		str	r2, [r3], #4	@ float
 5291 0082 8342     		cmp	r3, r0
 5292 0084 F9D1     		bne	.L1030
 5293 0086 4FF07E55 		mov	r5, #1065353216
 5294 008a 0020     		movs	r0, #0
 5295 008c 04F50173 		add	r3, r4, #516
 5296 0090 04F51172 		add	r2, r4, #580
 5297 0094 04F50771 		add	r1, r4, #540
 5298              	.L1031:
 5299 0098 43F8045B 		str	r5, [r3], #4	@ float
 5300 009c 8B42     		cmp	r3, r1
 5301 009e 42F8040B 		str	r0, [r2], #4	@ float
ARM GAS  /tmp/ccx5mP1m.s 			page 94


 5302 00a2 F9D1     		bne	.L1031
 5303 00a4 0022     		movs	r2, #0
 5304 00a6 04F19C03 		add	r3, r4, #156
 5305 00aa 04F1C001 		add	r1, r4, #192
 5306              	.L1032:
 5307 00ae 43F8042F 		str	r2, [r3, #4]!	@ float
 5308 00b2 8B42     		cmp	r3, r1
 5309 00b4 FBD1     		bne	.L1032
 5310 00b6 0023     		movs	r3, #0
 5311 00b8 0226     		movs	r6, #2
 5312 00ba 0127     		movs	r7, #1
 5313 00bc 3C49     		ldr	r1, .L1046+4
 5314 00be 84F8F830 		strb	r3, [r4, #248]
 5315 00c2 8868     		ldr	r0, [r1, #8]
 5316 00c4 94F8F910 		ldrb	r1, [r4, #249]	@ zero_extendqisi2
 5317 00c8 D0F8FC04 		ldr	r0, [r0, #1276]
 5318 00cc 63F30001 		bfi	r1, r3, #0, #1
 5319 00d0 D0F800E0 		ldr	lr, [r0]
 5320 00d4 04F1A005 		add	r5, r4, #160
 5321 00d8 C4F80C21 		str	r2, [r4, #268]	@ float
 5322 00dc C4F8C822 		str	r2, [r4, #712]	@ float
 5323 00e0 C4F8E020 		str	r2, [r4, #224]	@ float
 5324 00e4 C4F8FC30 		str	r3, [r4, #252]
 5325 00e8 2A46     		mov	r2, r5
 5326 00ea 84F83931 		strb	r3, [r4, #313]
 5327 00ee 84F83831 		strb	r3, [r4, #312]
 5328 00f2 C4F8F430 		str	r3, [r4, #244]
 5329 00f6 84F8F910 		strb	r1, [r4, #249]
 5330 00fa DEF83030 		ldr	r3, [lr, #48]
 5331 00fe D4F8FC11 		ldr	r1, [r4, #508]
 5332 0102 C4F8F060 		str	r6, [r4, #240]
 5333 0106 C4F8EC70 		str	r7, [r4, #236]
 5334 010a 9847     		blx	r3
 5335 010c 2946     		mov	r1, r5
 5336 010e 04F18402 		add	r2, r4, #132
 5337 0112 2046     		mov	r0, r4
 5338 0114 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5339 0118 04F5F876 		add	r6, r4, #496
 5340 011c 04F5B675 		add	r5, r4, #364
 5341              	.L1033:
 5342 0120 2846     		mov	r0, r5
 5343 0122 2C35     		adds	r5, r5, #44
 5344 0124 FFF7FEFF 		bl	_ZN12RestorePoint4InitEv
 5345 0128 AE42     		cmp	r6, r5
 5346 012a F9D1     		bne	.L1033
 5347 012c 0025     		movs	r5, #0
 5348 012e 04F57172 		add	r2, r4, #964
 5349 0132 04F55373 		add	r3, r4, #844
 5350              	.L1034:
 5351 0136 5D60     		str	r5, [r3, #4]
 5352 0138 1D60     		str	r5, [r3]
 5353 013a 1D72     		strb	r5, [r3, #8]
 5354 013c 0C33     		adds	r3, r3, #12
 5355 013e 9A42     		cmp	r2, r3
 5356 0140 F9D1     		bne	.L1034
 5357 0142 4FF0FF32 		mov	r2, #-1
 5358 0146 0023     		movs	r3, #0
ARM GAS  /tmp/ccx5mP1m.s 			page 95


 5359 0148 C4F8E420 		str	r2, [r4, #228]
 5360 014c C4F82C33 		str	r3, [r4, #812]	@ float
 5361 0150 C4F8C853 		str	r5, [r4, #968]
 5362 0154 84F83053 		strb	r5, [r4, #816]
 5363 0158 84F83253 		strb	r5, [r4, #818]
 5364 015c 84F83153 		strb	r5, [r4, #817]
 5365 0160 84F87E50 		strb	r5, [r4, #126]
 5366 0164 84F88150 		strb	r5, [r4, #129]
 5367 0168 84F82853 		strb	r5, [r4, #808]
 5368 016c 84F87F50 		strb	r5, [r4, #127]
 5369 0170 84F82953 		strb	r5, [r4, #809]
 5370 0174 2068     		ldr	r0, [r4]
 5371 0176 FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 5372 017a 84F8CC53 		strb	r5, [r4, #972]
 5373 017e C4F8C403 		str	r0, [r4, #964]
 5374 0182 84F83C54 		strb	r5, [r4, #1084]
 5375 0186 D4F8D003 		ldr	r0, [r4, #976]
 5376 018a FFF7FEFF 		bl	_ZN10GCodeQueue5ClearEv
 5377 018e 0022     		movs	r2, #0
 5378 0190 84F85F54 		strb	r5, [r4, #1119]
 5379 0194 84F85D54 		strb	r5, [r4, #1117]
 5380 0198 84F85E54 		strb	r5, [r4, #1118]
 5381 019c 04F15C03 		add	r3, r4, #92
 5382 01a0 7C34     		adds	r4, r4, #124
 5383              	.L1035:
 5384 01a2 43F8042B 		str	r2, [r3], #4
 5385 01a6 A342     		cmp	r3, r4
 5386 01a8 FBD1     		bne	.L1035
 5387 01aa F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5388              	.L1047:
 5389              		.align	2
 5390              	.L1046:
 5391 01ac 8988883C 		.word	1015580809
 5392 01b0 00000000 		.word	reprap
 5393              		.size	_ZN6GCodes5ResetEv, .-_ZN6GCodes5ResetEv
 5394              		.section	.text._ZN6GCodes15DoEmergencyStopEv,"ax",%progbits
 5395              		.align	1
 5396              		.p2align 2,,3
 5397              		.global	_ZN6GCodes15DoEmergencyStopEv
 5398              		.syntax unified
 5399              		.thumb
 5400              		.thumb_func
 5401              		.fpu softvfp
 5402              		.type	_ZN6GCodes15DoEmergencyStopEv, %function
 5403              	_ZN6GCodes15DoEmergencyStopEv:
 5404              		@ args = 0, pretend = 0, frame = 0
 5405              		@ frame_needed = 0, uses_anonymous_args = 0
 5406 0000 10B5     		push	{r4, lr}
 5407 0002 0446     		mov	r4, r0
 5408 0004 0648     		ldr	r0, .L1050
 5409 0006 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 5410 000a 2046     		mov	r0, r4
 5411 000c FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 5412 0010 2068     		ldr	r0, [r4]
 5413 0012 044A     		ldr	r2, .L1050+4
 5414 0014 3521     		movs	r1, #53
 5415 0016 BDE81040 		pop	{r4, lr}
ARM GAS  /tmp/ccx5mP1m.s 			page 96


 5416 001a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 5417              	.L1051:
 5418 001e 00BF     		.align	2
 5419              	.L1050:
 5420 0020 00000000 		.word	reprap
 5421 0024 00000000 		.word	.LC104
 5422              		.size	_ZN6GCodes15DoEmergencyStopEv, .-_ZN6GCodes15DoEmergencyStopEv
 5423              		.section	.text._ZN6GCodes4InitEv,"ax",%progbits
 5424              		.align	1
 5425              		.p2align 2,,3
 5426              		.global	_ZN6GCodes4InitEv
 5427              		.syntax unified
 5428              		.thumb
 5429              		.thumb_func
 5430              		.fpu softvfp
 5431              		.type	_ZN6GCodes4InitEv, %function
 5432              	_ZN6GCodes4InitEv:
 5433              		@ args = 0, pretend = 0, frame = 0
 5434              		@ frame_needed = 0, uses_anonymous_args = 0
 5435 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5436 0002 5A21     		movs	r1, #90
 5437 0004 0025     		movs	r5, #0
 5438 0006 0323     		movs	r3, #3
 5439 0008 0622     		movs	r2, #6
 5440 000a 5827     		movs	r7, #88
 5441 000c 5926     		movs	r6, #89
 5442 000e 80F87272 		strb	r7, [r0, #626]
 5443 0012 80F87362 		strb	r6, [r0, #627]
 5444 0016 80F87412 		strb	r1, [r0, #628]
 5445 001a C0F80022 		str	r2, [r0, #512]
 5446 001e C0F8F831 		str	r3, [r0, #504]
 5447 0022 C0F8FC31 		str	r3, [r0, #508]
 5448 0026 C0F87552 		str	r5, [r0, #629]	@ unaligned
 5449 002a 0446     		mov	r4, r0
 5450 002c FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 5451 0030 4FF07E50 		mov	r0, #1065353216
 5452 0034 1026     		movs	r6, #16
 5453 0036 2A4B     		ldr	r3, .L1054
 5454 0038 C4F83C02 		str	r0, [r4, #572]	@ float
 5455 003c 4FF08040 		mov	r0, #1073741824
 5456 0040 0122     		movs	r2, #1
 5457 0042 C4F84032 		str	r3, [r4, #576]	@ float
 5458 0046 FF27     		movs	r7, #255
 5459 0048 0023     		movs	r3, #0
 5460 004a 2649     		ldr	r1, .L1054+4
 5461 004c 84F87162 		strb	r6, [r4, #625]
 5462 0050 C4F86C12 		str	r1, [r4, #620]
 5463 0054 C4F83403 		str	r0, [r4, #820]	@ float
 5464 0058 2349     		ldr	r1, .L1054+8
 5465 005a 244E     		ldr	r6, .L1054+12
 5466 005c 2448     		ldr	r0, .L1054+16
 5467 005e 84F87052 		strb	r5, [r4, #624]
 5468 0062 84F88050 		strb	r5, [r4, #128]
 5469 0066 84F86054 		strb	r5, [r4, #1120]
 5470 006a 84F88150 		strb	r5, [r4, #129]
 5471 006e C4F86852 		str	r5, [r4, #616]
 5472 0072 C4F88052 		str	r5, [r4, #640]
ARM GAS  /tmp/ccx5mP1m.s 			page 97


 5473 0076 84F84853 		strb	r5, [r4, #840]
 5474 007a C4F83832 		str	r3, [r4, #568]	@ float
 5475 007e C4F81C32 		str	r3, [r4, #540]	@ float
 5476 0082 C4F82032 		str	r3, [r4, #544]	@ float
 5477 0086 C4F82432 		str	r3, [r4, #548]	@ float
 5478 008a C4F82832 		str	r3, [r4, #552]	@ float
 5479 008e C4F82C32 		str	r3, [r4, #556]	@ float
 5480 0092 C4F83032 		str	r3, [r4, #560]	@ float
 5481 0096 C4F83432 		str	r3, [r4, #564]	@ float
 5482 009a C4F88432 		str	r3, [r4, #644]	@ float
 5483 009e C4F88832 		str	r3, [r4, #648]	@ float
 5484 00a2 C4F89032 		str	r3, [r4, #656]	@ float
 5485 00a6 C4F88C32 		str	r3, [r4, #652]	@ float
 5486 00aa C4F83833 		str	r3, [r4, #824]	@ float
 5487 00ae C4F84433 		str	r3, [r4, #836]	@ float
 5488 00b2 C4F89C30 		str	r3, [r4, #156]	@ float
 5489 00b6 84F87D20 		strb	r2, [r4, #125]
 5490 00ba 84F87A22 		strb	r2, [r4, #634]
 5491 00be 84F87922 		strb	r2, [r4, #633]
 5492 00c2 C4F84013 		str	r1, [r4, #832]	@ float
 5493 00c6 C4F83C13 		str	r1, [r4, #828]	@ float
 5494 00ca 84F85C74 		strb	r7, [r4, #1116]
 5495 00ce 84F84854 		strb	r5, [r4, #1096]
 5496 00d2 C4F84C54 		str	r5, [r4, #1100]
 5497 00d6 C4F84464 		str	r6, [r4, #1092]	@ float
 5498 00da C4F85004 		str	r0, [r4, #1104]
 5499 00de F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5500              	.L1055:
 5501              		.align	2
 5502              	.L1054:
 5503 00e0 CDCC4C3E 		.word	1045220557
 5504 00e4 00000000 		.word	.LC105
 5505 00e8 56558541 		.word	1099257174
 5506 00ec 00007F43 		.word	1132396544
 5507 00f0 C0270900 		.word	600000
 5508              		.size	_ZN6GCodes4InitEv, .-_ZN6GCodes4InitEv
 5509              		.section	.text._ZN6GCodes15ClearBedMappingEv,"ax",%progbits
 5510              		.align	1
 5511              		.p2align 2,,3
 5512              		.global	_ZN6GCodes15ClearBedMappingEv
 5513              		.syntax unified
 5514              		.thumb
 5515              		.thumb_func
 5516              		.fpu softvfp
 5517              		.type	_ZN6GCodes15ClearBedMappingEv, %function
 5518              	_ZN6GCodes15ClearBedMappingEv:
 5519              		@ args = 0, pretend = 0, frame = 0
 5520              		@ frame_needed = 0, uses_anonymous_args = 0
 5521 0000 10B5     		push	{r4, lr}
 5522 0002 0446     		mov	r4, r0
 5523 0004 064B     		ldr	r3, .L1058
 5524 0006 9868     		ldr	r0, [r3, #8]
 5525 0008 FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 5526 000c 04F18402 		add	r2, r4, #132
 5527 0010 04F1A001 		add	r1, r4, #160
 5528 0014 2046     		mov	r0, r4
 5529 0016 BDE81040 		pop	{r4, lr}
ARM GAS  /tmp/ccx5mP1m.s 			page 98


 5530 001a FFF7FEBF 		b	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5531              	.L1059:
 5532 001e 00BF     		.align	2
 5533              	.L1058:
 5534 0020 00000000 		.word	reprap
 5535              		.size	_ZN6GCodes15ClearBedMappingEv, .-_ZN6GCodes15ClearBedMappingEv
 5536              		.section	.text._ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef,"ax",%progbits
 5537              		.align	1
 5538              		.p2align 2,,3
 5539              		.global	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef
 5540              		.syntax unified
 5541              		.thumb
 5542              		.thumb_func
 5543              		.fpu softvfp
 5544              		.type	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef, %function
 5545              	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef:
 5546              		@ args = 0, pretend = 0, frame = 0
 5547              		@ frame_needed = 0, uses_anonymous_args = 0
 5548 0000 70B5     		push	{r4, r5, r6, lr}
 5549 0002 90F8F832 		ldrb	r3, [r0, #760]	@ zero_extendqisi2
 5550 0006 82B0     		sub	sp, sp, #8
 5551 0008 93B1     		cbz	r3, .L1070
 5552 000a 0125     		movs	r5, #1
 5553 000c D0F8FC31 		ldr	r3, [r0, #508]
 5554 0010 0E46     		mov	r6, r1
 5555 0012 05FA03F3 		lsl	r3, r5, r3
 5556 0016 D0F88012 		ldr	r1, [r0, #640]
 5557 001a 013B     		subs	r3, r3, #1
 5558 001c 8B43     		bics	r3, r3, r1
 5559 001e 0446     		mov	r4, r0
 5560 0020 0DD0     		beq	.L1063
 5561 0022 1046     		mov	r0, r2
 5562 0024 1849     		ldr	r1, .L1071
 5563 0026 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5564 002a 0220     		movs	r0, #2
 5565 002c 02B0     		add	sp, sp, #8
 5566              		@ sp needed
 5567 002e 70BD     		pop	{r4, r5, r6, pc}
 5568              	.L1070:
 5569 0030 1046     		mov	r0, r2
 5570 0032 1649     		ldr	r1, .L1071+4
 5571 0034 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5572 0038 0220     		movs	r0, #2
 5573 003a 02B0     		add	sp, sp, #8
 5574              		@ sp needed
 5575 003c 70BD     		pop	{r4, r5, r6, pc}
 5576              	.L1063:
 5577 003e 144B     		ldr	r3, .L1071+8
 5578 0040 00F53371 		add	r1, r0, #716
 5579 0044 9868     		ldr	r0, [r3, #8]
 5580 0046 C830     		adds	r0, r0, #200
 5581 0048 FFF7FEFF 		bl	_ZN9HeightMap7SetGridERK14GridDefinition
 5582 004c 2046     		mov	r0, r4
 5583 004e FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 5584 0052 0023     		movs	r3, #0
 5585 0054 1820     		movs	r0, #24
 5586 0056 2268     		ldr	r2, [r4]
ARM GAS  /tmp/ccx5mP1m.s 			page 99


 5587 0058 B168     		ldr	r1, [r6, #8]
 5588 005a 92F89420 		ldrb	r2, [r2, #148]	@ zero_extendqisi2
 5589 005e C4F82433 		str	r3, [r4, #804]
 5590 0062 C4F82033 		str	r3, [r4, #800]
 5591 0066 0875     		strb	r0, [r1, #20]
 5592 0068 52B1     		cbz	r2, .L1069
 5593 006a 092A     		cmp	r2, #9
 5594 006c 08D0     		beq	.L1069
 5595 006e 94F82933 		ldrb	r3, [r4, #809]	@ zero_extendqisi2
 5596 0072 2BB9     		cbnz	r3, .L1069
 5597 0074 0093     		str	r3, [sp]
 5598 0076 3146     		mov	r1, r6
 5599 0078 2046     		mov	r0, r4
 5600 007a 064A     		ldr	r2, .L1071+12
 5601 007c FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 5602              	.L1069:
 5603 0080 2846     		mov	r0, r5
 5604 0082 02B0     		add	sp, sp, #8
 5605              		@ sp needed
 5606 0084 70BD     		pop	{r4, r5, r6, pc}
 5607              	.L1072:
 5608 0086 00BF     		.align	2
 5609              	.L1071:
 5610 0088 28000000 		.word	.LC107
 5611 008c 00000000 		.word	.LC106
 5612 0090 00000000 		.word	reprap
 5613 0094 24000000 		.word	.LC46
 5614              		.size	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef, .-_ZN6GCodes9ProbeGridER11GCodeBufferRK9Str
 5615              		.section	.text._ZN6GCodes25UpdateCurrentUserPositionEv,"ax",%progbits
 5616              		.align	1
 5617              		.p2align 2,,3
 5618              		.global	_ZN6GCodes25UpdateCurrentUserPositionEv
 5619              		.syntax unified
 5620              		.thumb
 5621              		.thumb_func
 5622              		.fpu softvfp
 5623              		.type	_ZN6GCodes25UpdateCurrentUserPositionEv, %function
 5624              	_ZN6GCodes25UpdateCurrentUserPositionEv:
 5625              		@ args = 0, pretend = 0, frame = 0
 5626              		@ frame_needed = 0, uses_anonymous_args = 0
 5627 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5628 0002 0E4D     		ldr	r5, .L1075
 5629 0004 83B0     		sub	sp, sp, #12
 5630 0006 0446     		mov	r4, r0
 5631 0008 2846     		mov	r0, r5
 5632 000a AE68     		ldr	r6, [r5, #8]
 5633 000c FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5634 0010 0746     		mov	r7, r0
 5635 0012 2846     		mov	r0, r5
 5636 0014 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 5637 0018 04F1A005 		add	r5, r4, #160
 5638 001c 0090     		str	r0, [sp]
 5639 001e 2946     		mov	r1, r5
 5640 0020 3046     		mov	r0, r6
 5641 0022 3B46     		mov	r3, r7
 5642 0024 0022     		movs	r2, #0
 5643 0026 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
ARM GAS  /tmp/ccx5mP1m.s 			page 100


 5644 002a 2946     		mov	r1, r5
 5645 002c 2046     		mov	r0, r4
 5646 002e 04F18402 		add	r2, r4, #132
 5647 0032 03B0     		add	sp, sp, #12
 5648              		@ sp needed
 5649 0034 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 5650 0038 FFF7FEBF 		b	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5651              	.L1076:
 5652              		.align	2
 5653              	.L1075:
 5654 003c 00000000 		.word	reprap
 5655              		.size	_ZN6GCodes25UpdateCurrentUserPositionEv, .-_ZN6GCodes25UpdateCurrentUserPositionEv
 5656              		.section	.text._ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer,"ax",%progbits
 5657              		.align	1
 5658              		.p2align 2,,3
 5659              		.global	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5660              		.syntax unified
 5661              		.thumb
 5662              		.thumb_func
 5663              		.fpu softvfp
 5664              		.type	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer, %function
 5665              	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer:
 5666              		@ args = 0, pretend = 0, frame = 0
 5667              		@ frame_needed = 0, uses_anonymous_args = 0
 5668 0000 C36D     		ldr	r3, [r0, #92]
 5669 0002 9942     		cmp	r1, r3
 5670 0004 08D0     		beq	.L1078
 5671 0006 0BB1     		cbz	r3, .L1091
 5672              	.L1088:
 5673 0008 0020     		movs	r0, #0
 5674 000a 7047     		bx	lr
 5675              	.L1091:
 5676 000c 8A68     		ldr	r2, [r1, #8]
 5677 000e C165     		str	r1, [r0, #92]
 5678 0010 D368     		ldr	r3, [r2, #12]
 5679 0012 43F00103 		orr	r3, r3, #1
 5680 0016 D360     		str	r3, [r2, #12]
 5681              	.L1078:
 5682 0018 D0F8FC30 		ldr	r3, [r0, #252]
 5683 001c 002B     		cmp	r3, #0
 5684 001e F3D1     		bne	.L1088
 5685 0020 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5686 0024 194E     		ldr	r6, .L1093
 5687 0026 82B0     		sub	sp, sp, #8
 5688 0028 B568     		ldr	r5, [r6, #8]
 5689 002a AB68     		ldr	r3, [r5, #8]
 5690 002c 6A68     		ldr	r2, [r5, #4]
 5691 002e 9342     		cmp	r3, r2
 5692 0030 03D0     		beq	.L1092
 5693              	.L1081:
 5694 0032 0020     		movs	r0, #0
 5695 0034 02B0     		add	sp, sp, #8
 5696              		@ sp needed
 5697 0036 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5698              	.L1092:
 5699 003a 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 5700 003c 002B     		cmp	r3, #0
ARM GAS  /tmp/ccx5mP1m.s 			page 101


 5701 003e F8D1     		bne	.L1081
 5702 0040 2F68     		ldr	r7, [r5]
 5703 0042 002F     		cmp	r7, #0
 5704 0044 F5D1     		bne	.L1081
 5705 0046 0446     		mov	r4, r0
 5706 0048 3046     		mov	r0, r6
 5707 004a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5708 004e 8046     		mov	r8, r0
 5709 0050 3046     		mov	r0, r6
 5710 0052 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 5711 0056 04F1A006 		add	r6, r4, #160
 5712 005a 4346     		mov	r3, r8
 5713 005c 0090     		str	r0, [sp]
 5714 005e 3A46     		mov	r2, r7
 5715 0060 2846     		mov	r0, r5
 5716 0062 3146     		mov	r1, r6
 5717 0064 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 5718 0068 D4F8FC21 		ldr	r2, [r4, #508]
 5719 006c 3146     		mov	r1, r6
 5720 006e 9200     		lsls	r2, r2, #2
 5721 0070 04F1C400 		add	r0, r4, #196
 5722 0074 FFF7FEFF 		bl	memcpy
 5723 0078 2046     		mov	r0, r4
 5724 007a 3146     		mov	r1, r6
 5725 007c 04F18402 		add	r2, r4, #132
 5726 0080 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5727 0084 0120     		movs	r0, #1
 5728 0086 02B0     		add	sp, sp, #8
 5729              		@ sp needed
 5730 0088 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5731              	.L1094:
 5732              		.align	2
 5733              	.L1093:
 5734 008c 00000000 		.word	reprap
 5735              		.size	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer, .-_ZN6GCodes32LockMovementAndW
 5736              		.global	__aeabi_f2iz
 5737              		.global	__aeabi_i2f
 5738              		.section	.text._ZN6GCodes7DoDwellER11GCodeBuffer,"ax",%progbits
 5739              		.align	1
 5740              		.p2align 2,,3
 5741              		.global	_ZN6GCodes7DoDwellER11GCodeBuffer
 5742              		.syntax unified
 5743              		.thumb
 5744              		.thumb_func
 5745              		.fpu softvfp
 5746              		.type	_ZN6GCodes7DoDwellER11GCodeBuffer, %function
 5747              	_ZN6GCodes7DoDwellER11GCodeBuffer:
 5748              		@ args = 0, pretend = 0, frame = 0
 5749              		@ frame_needed = 0, uses_anonymous_args = 0
 5750 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5751 0002 0C46     		mov	r4, r1
 5752 0004 0546     		mov	r5, r0
 5753 0006 5321     		movs	r1, #83
 5754 0008 2046     		mov	r0, r4
 5755 000a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5756 000e 70B3     		cbz	r0, .L1096
 5757 0010 2046     		mov	r0, r4
ARM GAS  /tmp/ccx5mP1m.s 			page 102


 5758 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5759 0016 1F49     		ldr	r1, .L1107
 5760 0018 FFF7FEFF 		bl	__aeabi_fmul
 5761 001c FFF7FEFF 		bl	__aeabi_f2iz
 5762 0020 0646     		mov	r6, r0
 5763              	.L1097:
 5764 0022 002E     		cmp	r6, #0
 5765 0024 20DD     		ble	.L1106
 5766 0026 2146     		mov	r1, r4
 5767 0028 2846     		mov	r0, r5
 5768 002a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5769 002e 48B3     		cbz	r0, .L1104
 5770 0030 95F83073 		ldrb	r7, [r5, #816]	@ zero_extendqisi2
 5771 0034 7FB1     		cbz	r7, .L1102
 5772 0036 3046     		mov	r0, r6
 5773 0038 FFF7FEFF 		bl	__aeabi_i2f
 5774 003c 1649     		ldr	r1, .L1107+4
 5775 003e FFF7FEFF 		bl	__aeabi_fmul
 5776 0042 0146     		mov	r1, r0
 5777 0044 D5F82C03 		ldr	r0, [r5, #812]	@ float
 5778 0048 FFF7FEFF 		bl	__aeabi_fadd
 5779 004c 0123     		movs	r3, #1
 5780 004e C5F82C03 		str	r0, [r5, #812]	@ float
 5781 0052 1846     		mov	r0, r3
 5782 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5783              	.L1102:
 5784 0056 FFF7FEFF 		bl	millis
 5785 005a 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 5786 005c ABB1     		cbz	r3, .L1103
 5787 005e 2368     		ldr	r3, [r4]
 5788 0060 C01A     		subs	r0, r0, r3
 5789 0062 8642     		cmp	r6, r0
 5790 0064 0ED8     		bhi	.L1104
 5791 0066 2771     		strb	r7, [r4, #4]
 5792              	.L1106:
 5793 0068 0123     		movs	r3, #1
 5794              	.L1099:
 5795 006a 1846     		mov	r0, r3
 5796 006c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5797              	.L1096:
 5798 006e 5021     		movs	r1, #80
 5799 0070 2046     		mov	r0, r4
 5800 0072 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5801 0076 0028     		cmp	r0, #0
 5802 0078 F6D0     		beq	.L1106
 5803 007a 2046     		mov	r0, r4
 5804 007c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5805 0080 0646     		mov	r6, r0
 5806 0082 CEE7     		b	.L1097
 5807              	.L1104:
 5808 0084 0023     		movs	r3, #0
 5809 0086 1846     		mov	r0, r3
 5810 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5811              	.L1103:
 5812 008a 0122     		movs	r2, #1
 5813 008c 2060     		str	r0, [r4]
 5814 008e 2271     		strb	r2, [r4, #4]
ARM GAS  /tmp/ccx5mP1m.s 			page 103


 5815 0090 EBE7     		b	.L1099
 5816              	.L1108:
 5817 0092 00BF     		.align	2
 5818              	.L1107:
 5819 0094 00007A44 		.word	1148846080
 5820 0098 6F12833A 		.word	981668463
 5821              		.size	_ZN6GCodes7DoDwellER11GCodeBuffer, .-_ZN6GCodes7DoDwellER11GCodeBuffer
 5822              		.section	.text._ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef,"ax",%progbits
 5823              		.align	1
 5824              		.p2align 2,,3
 5825              		.global	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef
 5826              		.syntax unified
 5827              		.thumb
 5828              		.thumb_func
 5829              		.fpu softvfp
 5830              		.type	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef, %function
 5831              	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef:
 5832              		@ args = 0, pretend = 0, frame = 0
 5833              		@ frame_needed = 0, uses_anonymous_args = 0
 5834 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5835 0004 0546     		mov	r5, r0
 5836 0006 0F46     		mov	r7, r1
 5837 0008 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5838 000c 40B3     		cbz	r0, .L1110
 5839 000e 0024     		movs	r4, #0
 5840 0010 D5F8F831 		ldr	r3, [r5, #504]
 5841 0014 C5F87C42 		str	r4, [r5, #636]
 5842 0018 23B3     		cbz	r3, .L1115
 5843 001a 4FF00108 		mov	r8, #1
 5844 001e 05F27226 		addw	r6, r5, #626
 5845              	.L1114:
 5846 0022 16F8011B 		ldrb	r1, [r6], #1	@ zero_extendqisi2
 5847 0026 3846     		mov	r0, r7
 5848 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5849 002c 60B1     		cbz	r0, .L1113
 5850 002e D5F87C22 		ldr	r2, [r5, #636]
 5851 0032 D5F88032 		ldr	r3, [r5, #640]
 5852 0036 08FA04F1 		lsl	r1, r8, r4
 5853 003a 0A43     		orrs	r2, r2, r1
 5854 003c 23EA0103 		bic	r3, r3, r1
 5855 0040 C5F87C22 		str	r2, [r5, #636]
 5856 0044 C5F88032 		str	r3, [r5, #640]
 5857              	.L1113:
 5858 0048 D5F8F831 		ldr	r3, [r5, #504]
 5859 004c 0134     		adds	r4, r4, #1
 5860 004e A342     		cmp	r3, r4
 5861 0050 E7D8     		bhi	.L1114
 5862 0052 D5F87C32 		ldr	r3, [r5, #636]
 5863 0056 2BB1     		cbz	r3, .L1115
 5864              	.L1112:
 5865 0058 0422     		movs	r2, #4
 5866 005a 0120     		movs	r0, #1
 5867 005c BB68     		ldr	r3, [r7, #8]
 5868 005e 1A75     		strb	r2, [r3, #20]
 5869              	.L1110:
 5870 0060 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5871              	.L1115:
ARM GAS  /tmp/ccx5mP1m.s 			page 104


 5872 0064 0123     		movs	r3, #1
 5873 0066 0021     		movs	r1, #0
 5874 0068 D5F8FC21 		ldr	r2, [r5, #508]
 5875 006c C5F88012 		str	r1, [r5, #640]
 5876 0070 9340     		lsls	r3, r3, r2
 5877 0072 013B     		subs	r3, r3, #1
 5878 0074 C5F87C32 		str	r3, [r5, #636]
 5879 0078 EEE7     		b	.L1112
 5880              		.size	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef, .-_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef
 5881 007a 00BF     		.section	.text._ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef,"ax",%progbits
 5882              		.align	1
 5883              		.p2align 2,,3
 5884              		.global	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef
 5885              		.syntax unified
 5886              		.thumb
 5887              		.thumb_func
 5888              		.fpu softvfp
 5889              		.type	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef, %function
 5890              	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef:
 5891              		@ args = 0, pretend = 0, frame = 24
 5892              		@ frame_needed = 0, uses_anonymous_args = 0
 5893 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5894 0004 0D46     		mov	r5, r1
 5895 0006 89B0     		sub	sp, sp, #36
 5896 0008 0746     		mov	r7, r0
 5897 000a 5021     		movs	r1, #80
 5898 000c 2846     		mov	r0, r5
 5899 000e 9346     		mov	fp, r2
 5900 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5901 0014 0028     		cmp	r0, #0
 5902 0016 40F0AD80 		bne	.L1169
 5903 001a 834B     		ldr	r3, .L1174
 5904 001c D3F82C90 		ldr	r9, [r3, #44]
 5905 0020 B9F1000F 		cmp	r9, #0
 5906 0024 00F0C780 		beq	.L1170
 5907              	.L1127:
 5908 0028 D7F8FC31 		ldr	r3, [r7, #508]
 5909 002c 002B     		cmp	r3, #0
 5910 002e 00F0C880 		beq	.L1129
 5911 0032 0024     		movs	r4, #0
 5912 0034 A246     		mov	r10, r4
 5913 0036 07F27228 		addw	r8, r7, #626
 5914              	.L1132:
 5915 003a 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 5916 003e 2846     		mov	r0, r5
 5917 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5918 0044 0646     		mov	r6, r0
 5919 0046 C0B1     		cbz	r0, .L1130
 5920 0048 FB6D     		ldr	r3, [r7, #92]
 5921 004a 9D42     		cmp	r5, r3
 5922 004c 08D0     		beq	.L1131
 5923 004e 002B     		cmp	r3, #0
 5924 0050 40F08C80 		bne	.L1150
 5925 0054 AA68     		ldr	r2, [r5, #8]
 5926 0056 FD65     		str	r5, [r7, #92]
 5927 0058 D368     		ldr	r3, [r2, #12]
 5928 005a 43F00103 		orr	r3, r3, #1
ARM GAS  /tmp/ccx5mP1m.s 			page 105


 5929 005e D360     		str	r3, [r2, #12]
 5930              	.L1131:
 5931 0060 2846     		mov	r0, r5
 5932 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5933 0066 AB68     		ldr	r3, [r5, #8]
 5934 0068 0246     		mov	r2, r0
 5935 006a 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 5936 006c 2146     		mov	r1, r4
 5937 006e C3F30013 		ubfx	r3, r3, #4, #1
 5938 0072 4846     		mov	r0, r9
 5939 0074 B246     		mov	r10, r6
 5940 0076 FFF7FEFF 		bl	_ZN4Tool9SetOffsetEjfb
 5941              	.L1130:
 5942 007a D7F8FC31 		ldr	r3, [r7, #508]
 5943 007e 0134     		adds	r4, r4, #1
 5944 0080 A342     		cmp	r3, r4
 5945 0082 DAD8     		bhi	.L1132
 5946 0084 BAF1000F 		cmp	r10, #0
 5947 0088 40F08880 		bne	.L1171
 5948 008c D9F86030 		ldr	r3, [r9, #96]
 5949 0090 0393     		str	r3, [sp, #12]
 5950 0092 F3B1     		cbz	r3, .L1146
 5951              	.L1134:
 5952 0094 5221     		movs	r1, #82
 5953 0096 2846     		mov	r0, r5
 5954 0098 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5955 009c 8046     		mov	r8, r0
 5956 009e 20B1     		cbz	r0, .L1137
 5957 00a0 97F83043 		ldrb	r4, [r7, #816]	@ zero_extendqisi2
 5958 00a4 002C     		cmp	r4, #0
 5959 00a6 00F0A980 		beq	.L1172
 5960              	.L1137:
 5961 00aa 5321     		movs	r1, #83
 5962 00ac 2846     		mov	r0, r5
 5963 00ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5964 00b2 40B1     		cbz	r0, .L1141
 5965 00b4 97F83043 		ldrb	r4, [r7, #816]	@ zero_extendqisi2
 5966 00b8 002C     		cmp	r4, #0
 5967 00ba 00F08980 		beq	.L1173
 5968              	.L1144:
 5969 00be 0120     		movs	r0, #1
 5970 00c0 09B0     		add	sp, sp, #36
 5971              		@ sp needed
 5972 00c2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5973              	.L1141:
 5974 00c6 BAF1000F 		cmp	r10, #0
 5975 00ca F8D1     		bne	.L1144
 5976 00cc B8F1000F 		cmp	r8, #0
 5977 00d0 F5D1     		bne	.L1144
 5978              	.L1146:
 5979 00d2 D9F86420 		ldr	r2, [r9, #100]
 5980 00d6 5549     		ldr	r1, .L1174+4
 5981 00d8 5846     		mov	r0, fp
 5982 00da FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5983 00de D7F8FC31 		ldr	r3, [r7, #508]
 5984 00e2 BBB1     		cbz	r3, .L1135
 5985 00e4 0024     		movs	r4, #0
ARM GAS  /tmp/ccx5mP1m.s 			page 106


 5986 00e6 DFF85481 		ldr	r8, .L1174+20
 5987 00ea 07F27226 		addw	r6, r7, #626
 5988 00ee 09F10C05 		add	r5, r9, #12
 5989              	.L1148:
 5990 00f2 55F8040B 		ldr	r0, [r5], #4	@ float
 5991 00f6 FFF7FEFF 		bl	__aeabi_f2d
 5992 00fa 16F8012B 		ldrb	r2, [r6], #1	@ zero_extendqisi2
 5993 00fe CDE90001 		strd	r0, [sp]
 5994 0102 4146     		mov	r1, r8
 5995 0104 5846     		mov	r0, fp
 5996 0106 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5997 010a D7F8FC31 		ldr	r3, [r7, #508]
 5998 010e 0134     		adds	r4, r4, #1
 5999 0110 A342     		cmp	r3, r4
 6000 0112 EED8     		bhi	.L1148
 6001              	.L1135:
 6002 0114 039B     		ldr	r3, [sp, #12]
 6003 0116 002B     		cmp	r3, #0
 6004 0118 D1D0     		beq	.L1144
 6005 011a 4549     		ldr	r1, .L1174+8
 6006 011c 5846     		mov	r0, fp
 6007 011e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6008 0122 039B     		ldr	r3, [sp, #12]
 6009 0124 002B     		cmp	r3, #0
 6010 0126 CAD0     		beq	.L1144
 6011 0128 0024     		movs	r4, #0
 6012 012a DFF81481 		ldr	r8, .L1174+24
 6013              	.L1149:
 6014 012e 2146     		mov	r1, r4
 6015 0130 4846     		mov	r0, r9
 6016 0132 FFF7FEFF 		bl	_ZNK4Tool30GetToolHeaterActiveTemperatureEj
 6017 0136 2146     		mov	r1, r4
 6018 0138 0646     		mov	r6, r0
 6019 013a 4846     		mov	r0, r9
 6020 013c FFF7FEFF 		bl	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj
 6021 0140 0546     		mov	r5, r0
 6022 0142 3046     		mov	r0, r6
 6023 0144 FFF7FEFF 		bl	__aeabi_f2d
 6024 0148 0646     		mov	r6, r0
 6025 014a 2846     		mov	r0, r5
 6026 014c 0F46     		mov	r7, r1
 6027 014e FFF7FEFF 		bl	__aeabi_f2d
 6028 0152 3B46     		mov	r3, r7
 6029 0154 CDE90001 		strd	r0, [sp]
 6030 0158 3246     		mov	r2, r6
 6031 015a 4146     		mov	r1, r8
 6032 015c 5846     		mov	r0, fp
 6033 015e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6034 0162 039B     		ldr	r3, [sp, #12]
 6035 0164 0134     		adds	r4, r4, #1
 6036 0166 A342     		cmp	r3, r4
 6037 0168 E1D8     		bhi	.L1149
 6038 016a A8E7     		b	.L1144
 6039              	.L1150:
 6040 016c 0020     		movs	r0, #0
 6041              	.L1165:
 6042 016e 09B0     		add	sp, sp, #36
ARM GAS  /tmp/ccx5mP1m.s 			page 107


 6043              		@ sp needed
 6044 0170 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6045              	.L1169:
 6046 0174 2846     		mov	r0, r5
 6047 0176 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6048 017a 2C6B     		ldr	r4, [r5, #48]
 6049 017c 0444     		add	r4, r4, r0
 6050 017e 2146     		mov	r1, r4
 6051 0180 2948     		ldr	r0, .L1174
 6052 0182 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 6053 0186 8146     		mov	r9, r0
 6054 0188 0028     		cmp	r0, #0
 6055 018a 7FF44DAF 		bne	.L1127
 6056 018e 2246     		mov	r2, r4
 6057 0190 5846     		mov	r0, fp
 6058 0192 2849     		ldr	r1, .L1174+12
 6059 0194 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6060 0198 0220     		movs	r0, #2
 6061 019a E8E7     		b	.L1165
 6062              	.L1171:
 6063 019c 07F18402 		add	r2, r7, #132
 6064 01a0 07F1A001 		add	r1, r7, #160
 6065 01a4 3846     		mov	r0, r7
 6066 01a6 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 6067 01aa D9F86030 		ldr	r3, [r9, #96]
 6068 01ae 0393     		str	r3, [sp, #12]
 6069 01b0 002B     		cmp	r3, #0
 6070 01b2 84D0     		beq	.L1144
 6071 01b4 6EE7     		b	.L1134
 6072              	.L1170:
 6073 01b6 5846     		mov	r0, fp
 6074 01b8 1F49     		ldr	r1, .L1174+16
 6075 01ba FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6076 01be 0220     		movs	r0, #2
 6077 01c0 D5E7     		b	.L1165
 6078              	.L1129:
 6079 01c2 D9F86020 		ldr	r2, [r9, #96]
 6080 01c6 0392     		str	r2, [sp, #12]
 6081 01c8 002A     		cmp	r2, #0
 6082 01ca 82D0     		beq	.L1146
 6083 01cc 9A46     		mov	r10, r3
 6084 01ce 61E7     		b	.L1134
 6085              	.L1173:
 6086 01d0 04AE     		add	r6, sp, #16
 6087 01d2 0123     		movs	r3, #1
 6088 01d4 2846     		mov	r0, r5
 6089 01d6 3146     		mov	r1, r6
 6090 01d8 03AA     		add	r2, sp, #12
 6091 01da FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6092 01de 039B     		ldr	r3, [sp, #12]
 6093 01e0 002B     		cmp	r3, #0
 6094 01e2 3FF46CAF 		beq	.L1144
 6095              	.L1145:
 6096 01e6 56F82420 		ldr	r2, [r6, r4, lsl #2]	@ float
 6097 01ea 2146     		mov	r1, r4
 6098 01ec 4846     		mov	r0, r9
 6099 01ee FFF7FEFF 		bl	_ZN4Tool30SetToolHeaterActiveTemperatureEjf
ARM GAS  /tmp/ccx5mP1m.s 			page 108


 6100 01f2 039B     		ldr	r3, [sp, #12]
 6101 01f4 0134     		adds	r4, r4, #1
 6102 01f6 A342     		cmp	r3, r4
 6103 01f8 F5D8     		bhi	.L1145
 6104 01fa 60E7     		b	.L1144
 6105              	.L1172:
 6106 01fc 04AE     		add	r6, sp, #16
 6107 01fe 0123     		movs	r3, #1
 6108 0200 3146     		mov	r1, r6
 6109 0202 03AA     		add	r2, sp, #12
 6110 0204 2846     		mov	r0, r5
 6111 0206 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6112 020a 039B     		ldr	r3, [sp, #12]
 6113 020c 002B     		cmp	r3, #0
 6114 020e 3FF44CAF 		beq	.L1137
 6115              	.L1140:
 6116 0212 56F82420 		ldr	r2, [r6, r4, lsl #2]	@ float
 6117 0216 2146     		mov	r1, r4
 6118 0218 4846     		mov	r0, r9
 6119 021a FFF7FEFF 		bl	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf
 6120 021e 039B     		ldr	r3, [sp, #12]
 6121 0220 0134     		adds	r4, r4, #1
 6122 0222 A342     		cmp	r3, r4
 6123 0224 F5D8     		bhi	.L1140
 6124 0226 40E7     		b	.L1137
 6125              	.L1175:
 6126              		.align	2
 6127              	.L1174:
 6128 0228 00000000 		.word	reprap
 6129 022c 90000000 		.word	.LC110
 6130 0230 A4000000 		.word	.LC111
 6131 0234 00000000 		.word	.LC108
 6132 0238 4C000000 		.word	.LC109
 6133 023c 24010000 		.word	.LC30
 6134 0240 C8000000 		.word	.LC112
 6135              		.size	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef, .-_ZN6GCodes18SetOrReportOffsetsE
 6136              		.section	.text._ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef,"ax",%progbits
 6137              		.align	1
 6138              		.p2align 2,,3
 6139              		.global	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef
 6140              		.syntax unified
 6141              		.thumb
 6142              		.thumb_func
 6143              		.fpu softvfp
 6144              		.type	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef, %function
 6145              	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef:
 6146              		@ args = 0, pretend = 0, frame = 120
 6147              		@ frame_needed = 0, uses_anonymous_args = 0
 6148 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 6149 0004 8846     		mov	r8, r1
 6150 0006 0024     		movs	r4, #0
 6151 0008 6526     		movs	r6, #101
 6152 000a A1B0     		sub	sp, sp, #132
 6153 000c 1546     		mov	r5, r2
 6154 000e 0746     		mov	r7, r0
 6155 0010 FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 6156 0014 0DF10F03 		add	r3, sp, #15
ARM GAS  /tmp/ccx5mP1m.s 			page 109


 6157 0018 8DF81840 		strb	r4, [sp, #24]
 6158 001c 8DF80F40 		strb	r4, [sp, #15]
 6159 0020 4046     		mov	r0, r8
 6160 0022 04AA     		add	r2, sp, #16
 6161 0024 5021     		movs	r1, #80
 6162 0026 06AC     		add	r4, sp, #24
 6163 0028 0596     		str	r6, [sp, #20]
 6164 002a 0494     		str	r4, [sp, #16]
 6165 002c FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 6166 0030 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 6167 0034 2BB3     		cbz	r3, .L1182
 6168              	.L1177:
 6169 0036 3A68     		ldr	r2, [r7]
 6170 0038 0023     		movs	r3, #0
 6171 003a D2F86805 		ldr	r0, [r2, #1384]
 6172 003e 2849     		ldr	r1, .L1185
 6173 0040 06AA     		add	r2, sp, #24
 6174 0042 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 6175 0046 0446     		mov	r4, r0
 6176 0048 18B3     		cbz	r0, .L1183
 6177 004a 264E     		ldr	r6, .L1185+4
 6178 004c 06AA     		add	r2, sp, #24
 6179 004e 2649     		ldr	r1, .L1185+8
 6180 0050 2846     		mov	r0, r5
 6181 0052 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6182 0056 2146     		mov	r1, r4
 6183 0058 2A46     		mov	r2, r5
 6184 005a B068     		ldr	r0, [r6, #8]
 6185 005c FFF7FEFF 		bl	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef
 6186 0060 8046     		mov	r8, r0
 6187 0062 2046     		mov	r0, r4
 6188 0064 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6189 0068 88F00101 		eor	r1, r8, #1
 6190 006c C9B2     		uxtb	r1, r1
 6191 006e B068     		ldr	r0, [r6, #8]
 6192 0070 FFF7FEFF 		bl	_ZN4Move7UseMeshEb
 6193 0074 B8F1000F 		cmp	r8, #0
 6194 0078 14D0     		beq	.L1184
 6195 007a 0220     		movs	r0, #2
 6196 007c 21B0     		add	sp, sp, #132
 6197              		@ sp needed
 6198 007e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6199              	.L1182:
 6200 0082 06AB     		add	r3, sp, #24
 6201 0084 04A8     		add	r0, sp, #16
 6202 0086 1949     		ldr	r1, .L1185+12
 6203 0088 0493     		str	r3, [sp, #16]
 6204 008a 0596     		str	r6, [sp, #20]
 6205 008c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6206 0090 D1E7     		b	.L1177
 6207              	.L1183:
 6208 0092 06AA     		add	r2, sp, #24
 6209 0094 2846     		mov	r0, r5
 6210 0096 1649     		ldr	r1, .L1185+16
 6211 0098 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6212 009c 0220     		movs	r0, #2
 6213 009e 21B0     		add	sp, sp, #132
ARM GAS  /tmp/ccx5mP1m.s 			page 110


 6214              		@ sp needed
 6215 00a0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6216              	.L1184:
 6217 00a4 2B68     		ldr	r3, [r5]
 6218 00a6 3046     		mov	r0, r6
 6219 00a8 83F80080 		strb	r8, [r3]
 6220 00ac B568     		ldr	r5, [r6, #8]
 6221 00ae FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 6222 00b2 8146     		mov	r9, r0
 6223 00b4 3046     		mov	r0, r6
 6224 00b6 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 6225 00ba 07F1A004 		add	r4, r7, #160
 6226 00be 0090     		str	r0, [sp]
 6227 00c0 4B46     		mov	r3, r9
 6228 00c2 2846     		mov	r0, r5
 6229 00c4 4246     		mov	r2, r8
 6230 00c6 2146     		mov	r1, r4
 6231 00c8 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 6232 00cc 3846     		mov	r0, r7
 6233 00ce 2146     		mov	r1, r4
 6234 00d0 07F18402 		add	r2, r7, #132
 6235 00d4 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 6236 00d8 0120     		movs	r0, #1
 6237 00da 21B0     		add	sp, sp, #132
 6238              		@ sp needed
 6239 00dc BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6240              	.L1186:
 6241              		.align	2
 6242              	.L1185:
 6243 00e0 34000000 		.word	.LC17
 6244 00e4 00000000 		.word	reprap
 6245 00e8 20000000 		.word	.LC114
 6246 00ec 00000000 		.word	.LC49
 6247 00f0 00000000 		.word	.LC113
 6248              		.size	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef, .-_ZN6GCodes13LoadHeightMapER11GCodeBu
 6249              		.section	.text._ZN6GCodes22TranslateEndStopResultE10EndStopHit,"ax",%progbits
 6250              		.align	1
 6251              		.p2align 2,,3
 6252              		.global	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 6253              		.syntax unified
 6254              		.thumb
 6255              		.thumb_func
 6256              		.fpu softvfp
 6257              		.type	_ZN6GCodes22TranslateEndStopResultE10EndStopHit, %function
 6258              	_ZN6GCodes22TranslateEndStopResultE10EndStopHit:
 6259              		@ args = 0, pretend = 0, frame = 0
 6260              		@ frame_needed = 0, uses_anonymous_args = 0
 6261              		@ link register save eliminated.
 6262 0000 0139     		subs	r1, r1, #1
 6263 0002 0229     		cmp	r1, #2
 6264 0004 9ABF     		itte	ls
 6265 0006 024B     		ldrls	r3, .L1190
 6266 0008 53F82100 		ldrls	r0, [r3, r1, lsl #2]
 6267 000c 0148     		ldrhi	r0, .L1190+4
 6268 000e 7047     		bx	lr
 6269              	.L1191:
 6270              		.align	2
ARM GAS  /tmp/ccx5mP1m.s 			page 111


 6271              	.L1190:
 6272 0010 00000000 		.word	.LANCHOR1
 6273 0014 00000000 		.word	.LC115
 6274              		.size	_ZN6GCodes22TranslateEndStopResultE10EndStopHit, .-_ZN6GCodes22TranslateEndStopResultE10EndS
 6275              		.section	.text._ZN6GCodes12ListTriggersERK9StringRefm,"ax",%progbits
 6276              		.align	1
 6277              		.p2align 2,,3
 6278              		.global	_ZN6GCodes12ListTriggersERK9StringRefm
 6279              		.syntax unified
 6280              		.thumb
 6281              		.thumb_func
 6282              		.fpu softvfp
 6283              		.type	_ZN6GCodes12ListTriggersERK9StringRefm, %function
 6284              	_ZN6GCodes12ListTriggersERK9StringRefm:
 6285              		@ args = 0, pretend = 0, frame = 0
 6286              		@ frame_needed = 0, uses_anonymous_args = 0
 6287 0000 002A     		cmp	r2, #0
 6288 0002 4ED0     		beq	.L1255
 6289 0004 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 6290 0008 0024     		movs	r4, #0
 6291 000a 1646     		mov	r6, r2
 6292 000c 8846     		mov	r8, r1
 6293 000e 0746     		mov	r7, r0
 6294 0010 2246     		mov	r2, r4
 6295 0012 DFF8A090 		ldr	r9, .L1259+4
 6296              	.L1203:
 6297 0016 26FA04F3 		lsr	r3, r6, r4
 6298 001a D807     		lsls	r0, r3, #31
 6299 001c 34D5     		bpl	.L1194
 6300 001e 002A     		cmp	r2, #0
 6301 0020 43D1     		bne	.L1256
 6302 0022 D7F8FC31 		ldr	r3, [r7, #508]
 6303 0026 A342     		cmp	r3, r4
 6304 0028 13D8     		bhi	.L1257
 6305              	.L1196:
 6306 002a D7F8F821 		ldr	r2, [r7, #504]
 6307 002e A242     		cmp	r2, r4
 6308 0030 2ED9     		bls	.L1202
 6309 0032 651C     		adds	r5, r4, #1
 6310 0034 092D     		cmp	r5, #9
 6311 0036 15D0     		beq	.L1192
 6312              	.L1253:
 6313 0038 26FA05F3 		lsr	r3, r6, r5
 6314 003c D907     		lsls	r1, r3, #31
 6315 003e 13D5     		bpl	.L1258
 6316              	.L1199:
 6317 0040 2C46     		mov	r4, r5
 6318 0042 2021     		movs	r1, #32
 6319 0044 4046     		mov	r0, r8
 6320 0046 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6321 004a D7F8FC31 		ldr	r3, [r7, #508]
 6322 004e A342     		cmp	r3, r4
 6323 0050 EBD9     		bls	.L1196
 6324              	.L1257:
 6325 0052 3B19     		adds	r3, r7, r4
 6326 0054 93F87212 		ldrb	r1, [r3, #626]	@ zero_extendqisi2
 6327 0058 4046     		mov	r0, r8
ARM GAS  /tmp/ccx5mP1m.s 			page 112


 6328 005a 651C     		adds	r5, r4, #1
 6329 005c FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6330 0060 092D     		cmp	r5, #9
 6331 0062 E9D1     		bne	.L1253
 6332              	.L1192:
 6333 0064 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 6334              	.L1258:
 6335 0068 A51C     		adds	r5, r4, #2
 6336 006a 092D     		cmp	r5, #9
 6337 006c FAD0     		beq	.L1192
 6338 006e 26FA05F3 		lsr	r3, r6, r5
 6339 0072 DA07     		lsls	r2, r3, #31
 6340 0074 E4D4     		bmi	.L1199
 6341 0076 E51C     		adds	r5, r4, #3
 6342 0078 092D     		cmp	r5, #9
 6343 007a F3D0     		beq	.L1192
 6344 007c 26FA05F3 		lsr	r3, r6, r5
 6345 0080 DB07     		lsls	r3, r3, #31
 6346 0082 DDD4     		bmi	.L1199
 6347 0084 2C46     		mov	r4, r5
 6348 0086 0122     		movs	r2, #1
 6349              	.L1194:
 6350 0088 0134     		adds	r4, r4, #1
 6351 008a 092C     		cmp	r4, #9
 6352 008c C3D1     		bne	.L1203
 6353 008e E9E7     		b	.L1192
 6354              	.L1202:
 6355 0090 A21A     		subs	r2, r4, r2
 6356 0092 4946     		mov	r1, r9
 6357 0094 4046     		mov	r0, r8
 6358 0096 651C     		adds	r5, r4, #1
 6359 0098 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6360 009c 092D     		cmp	r5, #9
 6361 009e CBD1     		bne	.L1253
 6362 00a0 E0E7     		b	.L1192
 6363              	.L1255:
 6364 00a2 0846     		mov	r0, r1
 6365 00a4 0249     		ldr	r1, .L1259
 6366 00a6 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 6367              	.L1256:
 6368 00aa 2546     		mov	r5, r4
 6369 00ac C8E7     		b	.L1199
 6370              	.L1260:
 6371 00ae 00BF     		.align	2
 6372              	.L1259:
 6373 00b0 00000000 		.word	.LC116
 6374 00b4 08000000 		.word	.LC117
 6375              		.size	_ZN6GCodes12ListTriggersERK9StringRefm, .-_ZN6GCodes12ListTriggersERK9StringRefm
 6376              		.section	.text._ZN6GCodes9StartHashEPKc,"ax",%progbits
 6377              		.align	1
 6378              		.p2align 2,,3
 6379              		.global	_ZN6GCodes9StartHashEPKc
 6380              		.syntax unified
 6381              		.thumb
 6382              		.thumb_func
 6383              		.fpu softvfp
 6384              		.type	_ZN6GCodes9StartHashEPKc, %function
ARM GAS  /tmp/ccx5mP1m.s 			page 113


 6385              	_ZN6GCodes9StartHashEPKc:
 6386              		@ args = 0, pretend = 0, frame = 0
 6387              		@ frame_needed = 0, uses_anonymous_args = 0
 6388 0000 0368     		ldr	r3, [r0]
 6389 0002 10B5     		push	{r4, lr}
 6390 0004 0A46     		mov	r2, r1
 6391 0006 0446     		mov	r4, r0
 6392 0008 0749     		ldr	r1, .L1265
 6393 000a D3F86805 		ldr	r0, [r3, #1384]
 6394 000e 0023     		movs	r3, #0
 6395 0010 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 6396 0014 C4F8D403 		str	r0, [r4, #980]
 6397 0018 20B1     		cbz	r0, .L1262
 6398 001a 04F57670 		add	r0, r4, #984
 6399 001e FFF7FEFF 		bl	SHA1Reset
 6400 0022 0120     		movs	r0, #1
 6401              	.L1262:
 6402 0024 10BD     		pop	{r4, pc}
 6403              	.L1266:
 6404 0026 00BF     		.align	2
 6405              	.L1265:
 6406 0028 00000000 		.word	.LC118
 6407              		.size	_ZN6GCodes9StartHashEPKc, .-_ZN6GCodes9StartHashEPKc
 6408              		.section	.text._ZN6GCodes11AdvanceHashERK9StringRef,"ax",%progbits
 6409              		.align	1
 6410              		.p2align 2,,3
 6411              		.global	_ZN6GCodes11AdvanceHashERK9StringRef
 6412              		.syntax unified
 6413              		.thumb
 6414              		.thumb_func
 6415              		.fpu softvfp
 6416              		.type	_ZN6GCodes11AdvanceHashERK9StringRef, %function
 6417              	_ZN6GCodes11AdvanceHashERK9StringRef:
 6418              		@ args = 0, pretend = 0, frame = 128
 6419              		@ frame_needed = 0, uses_anonymous_args = 0
 6420 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6421 0004 A0B0     		sub	sp, sp, #128
 6422 0006 0546     		mov	r5, r0
 6423 0008 0F46     		mov	r7, r1
 6424 000a D0F8D403 		ldr	r0, [r0, #980]
 6425 000e 6946     		mov	r1, sp
 6426 0010 8022     		movs	r2, #128
 6427 0012 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 6428 0016 431C     		adds	r3, r0, #1
 6429 0018 18D0     		beq	.L1268
 6430 001a 0646     		mov	r6, r0
 6431 001c 05F57674 		add	r4, r5, #984
 6432 0020 6946     		mov	r1, sp
 6433 0022 2046     		mov	r0, r4
 6434 0024 3246     		mov	r2, r6
 6435 0026 FFF7FEFF 		bl	SHA1Input
 6436 002a 802E     		cmp	r6, #128
 6437 002c 19D0     		beq	.L1271
 6438 002e 2046     		mov	r0, r4
 6439 0030 FFF7FEFF 		bl	SHA1Result
 6440 0034 DFF83480 		ldr	r8, .L1274
 6441 0038 05F57B76 		add	r6, r5, #1004
ARM GAS  /tmp/ccx5mP1m.s 			page 114


 6442              	.L1270:
 6443 003c 54F8042B 		ldr	r2, [r4], #4
 6444 0040 4146     		mov	r1, r8
 6445 0042 3846     		mov	r0, r7
 6446 0044 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6447 0048 B442     		cmp	r4, r6
 6448 004a F7D1     		bne	.L1270
 6449              	.L1268:
 6450 004c D5F8D403 		ldr	r0, [r5, #980]
 6451 0050 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6452 0054 0023     		movs	r3, #0
 6453 0056 0120     		movs	r0, #1
 6454 0058 C5F8D433 		str	r3, [r5, #980]
 6455 005c 20B0     		add	sp, sp, #128
 6456              		@ sp needed
 6457 005e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6458              	.L1271:
 6459 0062 0020     		movs	r0, #0
 6460 0064 20B0     		add	sp, sp, #128
 6461              		@ sp needed
 6462 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6463              	.L1275:
 6464 006a 00BF     		.align	2
 6465              	.L1274:
 6466 006c 00000000 		.word	.LC119
 6467              		.size	_ZN6GCodes11AdvanceHashERK9StringRef, .-_ZN6GCodes11AdvanceHashERK9StringRef
 6468              		.section	.text._ZNK6GCodes15AllAxesAreHomedEv,"ax",%progbits
 6469              		.align	1
 6470              		.p2align 2,,3
 6471              		.global	_ZNK6GCodes15AllAxesAreHomedEv
 6472              		.syntax unified
 6473              		.thumb
 6474              		.thumb_func
 6475              		.fpu softvfp
 6476              		.type	_ZNK6GCodes15AllAxesAreHomedEv, %function
 6477              	_ZNK6GCodes15AllAxesAreHomedEv:
 6478              		@ args = 0, pretend = 0, frame = 0
 6479              		@ frame_needed = 0, uses_anonymous_args = 0
 6480              		@ link register save eliminated.
 6481 0000 0123     		movs	r3, #1
 6482 0002 D0F8FC11 		ldr	r1, [r0, #508]
 6483 0006 D0F88022 		ldr	r2, [r0, #640]
 6484 000a 8B40     		lsls	r3, r3, r1
 6485 000c 013B     		subs	r3, r3, #1
 6486 000e 9343     		bics	r3, r3, r2
 6487 0010 0CBF     		ite	eq
 6488 0012 0120     		moveq	r0, #1
 6489 0014 0020     		movne	r0, #0
 6490 0016 7047     		bx	lr
 6491              		.size	_ZNK6GCodes15AllAxesAreHomedEv, .-_ZNK6GCodes15AllAxesAreHomedEv
 6492              		.section	.text._ZN6GCodes18SetAllAxesNotHomedEv,"ax",%progbits
 6493              		.align	1
 6494              		.p2align 2,,3
 6495              		.global	_ZN6GCodes18SetAllAxesNotHomedEv
 6496              		.syntax unified
 6497              		.thumb
 6498              		.thumb_func
ARM GAS  /tmp/ccx5mP1m.s 			page 115


 6499              		.fpu softvfp
 6500              		.type	_ZN6GCodes18SetAllAxesNotHomedEv, %function
 6501              	_ZN6GCodes18SetAllAxesNotHomedEv:
 6502              		@ args = 0, pretend = 0, frame = 0
 6503              		@ frame_needed = 0, uses_anonymous_args = 0
 6504              		@ link register save eliminated.
 6505 0000 0023     		movs	r3, #0
 6506 0002 C0F88032 		str	r3, [r0, #640]
 6507 0006 7047     		bx	lr
 6508              		.size	_ZN6GCodes18SetAllAxesNotHomedEv, .-_ZN6GCodes18SetAllAxesNotHomedEv
 6509              		.section	.text._ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef,"ax",%progbits
 6510              		.align	1
 6511              		.p2align 2,,3
 6512              		.global	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef
 6513              		.syntax unified
 6514              		.thumb
 6515              		.thumb_func
 6516              		.fpu softvfp
 6517              		.type	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef, %function
 6518              	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef:
 6519              		@ args = 0, pretend = 0, frame = 0
 6520              		@ frame_needed = 0, uses_anonymous_args = 0
 6521 0000 0368     		ldr	r3, [r0]
 6522 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6523 0006 0446     		mov	r4, r0
 6524 0008 0F46     		mov	r7, r1
 6525 000a 1646     		mov	r6, r2
 6526 000c D3F86805 		ldr	r0, [r3, #1384]
 6527 0010 364A     		ldr	r2, .L1307
 6528 0012 0123     		movs	r3, #1
 6529 0014 3649     		ldr	r1, .L1307+4
 6530 0016 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 6531 001a B8B1     		cbz	r0, .L1303
 6532 001c 3549     		ldr	r1, .L1307+8
 6533 001e 0546     		mov	r5, r0
 6534 0020 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 6535 0024 D0B9     		cbnz	r0, .L1304
 6536              	.L1281:
 6537 0026 2846     		mov	r0, r5
 6538 0028 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6539              	.L1286:
 6540 002c 3046     		mov	r0, r6
 6541 002e 2F4A     		ldr	r2, .L1307
 6542 0030 3149     		ldr	r1, .L1307+12
 6543 0032 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6544 0036 2268     		ldr	r2, [r4]
 6545 0038 0023     		movs	r3, #0
 6546 003a D2F86805 		ldr	r0, [r2, #1384]
 6547 003e 2C49     		ldr	r1, .L1307+4
 6548 0040 2A4A     		ldr	r2, .L1307
 6549 0042 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 6550 0046 0220     		movs	r0, #2
 6551 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6552              	.L1303:
 6553 004c 3046     		mov	r0, r6
 6554 004e 274A     		ldr	r2, .L1307
 6555 0050 2A49     		ldr	r1, .L1307+16
ARM GAS  /tmp/ccx5mP1m.s 			page 116


 6556 0052 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6557 0056 0220     		movs	r0, #2
 6558 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6559              	.L1304:
 6560 005c DFF8A480 		ldr	r8, .L1307+24
 6561 0060 274A     		ldr	r2, .L1307+20
 6562 0062 D8F80830 		ldr	r3, [r8, #8]
 6563 0066 D3F8FC04 		ldr	r0, [r3, #1276]
 6564 006a 0368     		ldr	r3, [r0]
 6565 006c DB69     		ldr	r3, [r3, #28]
 6566 006e 9342     		cmp	r3, r2
 6567 0070 36D1     		bne	.L1282
 6568              	.L1284:
 6569 0072 D8F80C00 		ldr	r0, [r8, #12]
 6570 0076 2946     		mov	r1, r5
 6571 0078 FFF7FEFF 		bl	_ZNK4Heat20WriteModelParametersEP9FileStore
 6572 007c 0028     		cmp	r0, #0
 6573 007e D2D0     		beq	.L1281
 6574 0080 5021     		movs	r1, #80
 6575 0082 3846     		mov	r0, r7
 6576 0084 D4F80080 		ldr	r8, [r4]
 6577 0088 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6578 008c C0B9     		cbnz	r0, .L1305
 6579              	.L1285:
 6580 008e 0246     		mov	r2, r0
 6581 0090 2946     		mov	r1, r5
 6582 0092 4046     		mov	r0, r8
 6583 0094 FFF7FEFF 		bl	_ZNK8Platform23WritePlatformParametersEP9FileStoreb
 6584 0098 0028     		cmp	r0, #0
 6585 009a C4D0     		beq	.L1281
 6586 009c 2946     		mov	r1, r5
 6587 009e 1948     		ldr	r0, .L1307+24
 6588 00a0 FFF7FEFF 		bl	_ZNK6RepRap19WriteToolParametersEP9FileStore
 6589 00a4 0746     		mov	r7, r0
 6590 00a6 2846     		mov	r0, r5
 6591 00a8 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6592 00ac 0028     		cmp	r0, #0
 6593 00ae BDD0     		beq	.L1286
 6594 00b0 002F     		cmp	r7, #0
 6595 00b2 BBD0     		beq	.L1286
 6596 00b4 94F86034 		ldrb	r3, [r4, #1120]	@ zero_extendqisi2
 6597 00b8 5BB1     		cbz	r3, .L1306
 6598 00ba 0120     		movs	r0, #1
 6599 00bc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6600              	.L1305:
 6601 00c0 3846     		mov	r0, r7
 6602 00c2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6603 00c6 A0F11F00 		sub	r0, #31
 6604 00ca B0FA80F0 		clz	r0, r0
 6605 00ce 4009     		lsrs	r0, r0, #5
 6606 00d0 DDE7     		b	.L1285
 6607              	.L1306:
 6608 00d2 3046     		mov	r0, r6
 6609 00d4 0C49     		ldr	r1, .L1307+28
 6610 00d6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6611 00da 0320     		movs	r0, #3
 6612 00dc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  /tmp/ccx5mP1m.s 			page 117


 6613              	.L1282:
 6614 00e0 2946     		mov	r1, r5
 6615 00e2 9847     		blx	r3
 6616 00e4 0028     		cmp	r0, #0
 6617 00e6 C4D1     		bne	.L1284
 6618 00e8 9DE7     		b	.L1281
 6619              	.L1308:
 6620 00ea 00BF     		.align	2
 6621              	.L1307:
 6622 00ec 00000000 		.word	.LC120
 6623 00f0 34000000 		.word	.LC17
 6624 00f4 14000000 		.word	.LC121
 6625 00f8 48000000 		.word	.LC122
 6626 00fc 3C000000 		.word	.LC18
 6627 0100 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 6628 0104 00000000 		.word	reprap
 6629 0108 60000000 		.word	.LC123
 6630              		.size	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef, .-_ZNK6GCodes23WriteConfigO
 6631              		.section	.text._ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb,"ax",%progbits
 6632              		.align	1
 6633              		.p2align 2,,3
 6634              		.global	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb
 6635              		.syntax unified
 6636              		.thumb
 6637              		.thumb_func
 6638              		.fpu softvfp
 6639              		.type	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb, %function
 6640              	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb:
 6641              		@ args = 0, pretend = 0, frame = 0
 6642              		@ frame_needed = 0, uses_anonymous_args = 0
 6643              		@ link register save eliminated.
 6644 0000 0846     		mov	r0, r1
 6645 0002 1146     		mov	r1, r2
 6646 0004 22B1     		cbz	r2, .L1309
 6647 0006 126E     		ldr	r2, [r2, #96]
 6648 0008 12B1     		cbz	r2, .L1309
 6649 000a 1A46     		mov	r2, r3
 6650 000c FFF7FEBF 		b	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61
 6651              	.L1309:
 6652 0010 7047     		bx	lr
 6653              		.size	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb, .-_ZNK6GCodes22ReportToolTemperatu
 6654 0012 00BF     		.section	.text._ZNK6GCodes25GenerateTemperatureReportERK9StringRef,"ax",%progbits
 6655              		.align	1
 6656              		.p2align 2,,3
 6657              		.global	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef
 6658              		.syntax unified
 6659              		.thumb
 6660              		.thumb_func
 6661              		.fpu softvfp
 6662              		.type	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef, %function
 6663              	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef:
 6664              		@ args = 0, pretend = 0, frame = 16
 6665              		@ frame_needed = 0, uses_anonymous_args = 0
 6666 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6667 0004 5C4E     		ldr	r6, .L1353
 6668 0006 0D46     		mov	r5, r1
 6669 0008 F16A     		ldr	r1, [r6, #44]
ARM GAS  /tmp/ccx5mP1m.s 			page 118


 6670 000a 87B0     		sub	sp, sp, #28
 6671 000c F468     		ldr	r4, [r6, #12]
 6672 000e 11B1     		cbz	r1, .L1316
 6673 0010 0B6E     		ldr	r3, [r1, #96]
 6674 0012 002B     		cmp	r3, #0
 6675 0014 4CD1     		bne	.L1317
 6676              	.L1316:
 6677 0016 B66A     		ldr	r6, [r6, #40]
 6678 0018 4EB1     		cbz	r6, .L1322
 6679              	.L1323:
 6680 001a 336E     		ldr	r3, [r6, #96]
 6681 001c 23B1     		cbz	r3, .L1330
 6682 001e 0122     		movs	r2, #1
 6683 0020 3146     		mov	r1, r6
 6684 0022 2846     		mov	r0, r5
 6685 0024 FFF7FEFF 		bl	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61
 6686              	.L1330:
 6687 0028 3668     		ldr	r6, [r6]
 6688 002a 002E     		cmp	r6, #0
 6689 002c F5D1     		bne	.L1323
 6690              	.L1322:
 6691 002e 94F98230 		ldrsb	r3, [r4, #130]
 6692 0032 002B     		cmp	r3, #0
 6693 0034 41DA     		bge	.L1349
 6694              	.L1320:
 6695 0036 4FF00108 		mov	r8, #1
 6696 003a 0027     		movs	r7, #0
 6697 003c DFF844A1 		ldr	r10, .L1353+12
 6698 0040 DFF83C91 		ldr	r9, .L1353+8
 6699 0044 DFF840B1 		ldr	fp, .L1353+16
 6700 0048 04F18306 		add	r6, r4, #131
 6701              	.L1325:
 6702 004c 96F90030 		ldrsb	r3, [r6]
 6703 0050 002B     		cmp	r3, #0
 6704 0052 2ADB     		blt	.L1315
 6705 0054 002F     		cmp	r7, #0
 6706 0056 56D0     		beq	.L1350
 6707 0058 0122     		movs	r2, #1
 6708 005a 5146     		mov	r1, r10
 6709 005c 2846     		mov	r0, r5
 6710 005e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6711 0062 96F90030 		ldrsb	r3, [r6]
 6712 0066 2046     		mov	r0, r4
 6713 0068 1946     		mov	r1, r3
 6714 006a 0393     		str	r3, [sp, #12]
 6715 006c FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 6716 0070 039B     		ldr	r3, [sp, #12]
 6717 0072 0490     		str	r0, [sp, #16]
 6718 0074 1946     		mov	r1, r3
 6719 0076 2046     		mov	r0, r4
 6720 0078 FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 6721 007c 049A     		ldr	r2, [sp, #16]
 6722 007e 0390     		str	r0, [sp, #12]	@ float
 6723 0080 1046     		mov	r0, r2
 6724 0082 FFF7FEFF 		bl	__aeabi_f2d
 6725 0086 0246     		mov	r2, r0
 6726 0088 0B46     		mov	r3, r1
ARM GAS  /tmp/ccx5mP1m.s 			page 119


 6727 008a 0398     		ldr	r0, [sp, #12]	@ float
 6728 008c CDE90423 		strd	r2, [sp, #16]
 6729 0090 FFF7FEFF 		bl	__aeabi_f2d
 6730 0094 DDE90423 		ldrd	r2, [sp, #16]
 6731 0098 CDE90001 		strd	r0, [sp]
 6732 009c 4946     		mov	r1, r9
 6733 009e 2846     		mov	r0, r5
 6734 00a0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6735 00a4 B8F1020F 		cmp	r8, #2
 6736 00a8 56D1     		bne	.L1329
 6737              	.L1315:
 6738 00aa 07B0     		add	sp, sp, #28
 6739              		@ sp needed
 6740 00ac BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6741              	.L1317:
 6742 00b0 0022     		movs	r2, #0
 6743 00b2 2846     		mov	r0, r5
 6744 00b4 FFF7FEFF 		bl	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61
 6745 00b8 ADE7     		b	.L1316
 6746              	.L1349:
 6747 00ba 2846     		mov	r0, r5
 6748 00bc FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 6749 00c0 0028     		cmp	r0, #0
 6750 00c2 4ED1     		bne	.L1351
 6751              	.L1324:
 6752 00c4 2D49     		ldr	r1, .L1353+4
 6753 00c6 2846     		mov	r0, r5
 6754 00c8 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6755 00cc 94F98260 		ldrsb	r6, [r4, #130]
 6756 00d0 2046     		mov	r0, r4
 6757 00d2 3146     		mov	r1, r6
 6758 00d4 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 6759 00d8 3146     		mov	r1, r6
 6760 00da 0746     		mov	r7, r0
 6761 00dc 2046     		mov	r0, r4
 6762 00de FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 6763 00e2 8046     		mov	r8, r0
 6764 00e4 3846     		mov	r0, r7
 6765 00e6 FFF7FEFF 		bl	__aeabi_f2d
 6766 00ea 0646     		mov	r6, r0
 6767 00ec 4046     		mov	r0, r8
 6768 00ee 0F46     		mov	r7, r1
 6769 00f0 FFF7FEFF 		bl	__aeabi_f2d
 6770 00f4 3246     		mov	r2, r6
 6771 00f6 CDE90001 		strd	r0, [sp]
 6772 00fa 3B46     		mov	r3, r7
 6773 00fc 2049     		ldr	r1, .L1353+8
 6774 00fe 2846     		mov	r0, r5
 6775 0100 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6776 0104 97E7     		b	.L1320
 6777              	.L1350:
 6778 0106 2846     		mov	r0, r5
 6779 0108 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 6780 010c 70BB     		cbnz	r0, .L1352
 6781              	.L1328:
 6782 010e 5946     		mov	r1, fp
 6783 0110 2846     		mov	r0, r5
ARM GAS  /tmp/ccx5mP1m.s 			page 120


 6784 0112 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6785 0116 96F90030 		ldrsb	r3, [r6]
 6786 011a 2046     		mov	r0, r4
 6787 011c 1946     		mov	r1, r3
 6788 011e 0393     		str	r3, [sp, #12]
 6789 0120 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 6790 0124 039B     		ldr	r3, [sp, #12]
 6791 0126 0490     		str	r0, [sp, #16]
 6792 0128 1946     		mov	r1, r3
 6793 012a 2046     		mov	r0, r4
 6794 012c FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 6795 0130 049A     		ldr	r2, [sp, #16]
 6796 0132 0390     		str	r0, [sp, #12]	@ float
 6797 0134 1046     		mov	r0, r2
 6798 0136 FFF7FEFF 		bl	__aeabi_f2d
 6799 013a 0246     		mov	r2, r0
 6800 013c 0B46     		mov	r3, r1
 6801 013e 0398     		ldr	r0, [sp, #12]	@ float
 6802 0140 CDE90423 		strd	r2, [sp, #16]
 6803 0144 FFF7FEFF 		bl	__aeabi_f2d
 6804 0148 DDE90423 		ldrd	r2, [sp, #16]
 6805 014c CDE90001 		strd	r0, [sp]
 6806 0150 4946     		mov	r1, r9
 6807 0152 2846     		mov	r0, r5
 6808 0154 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6809              	.L1329:
 6810 0158 0137     		adds	r7, r7, #1
 6811 015a 0136     		adds	r6, r6, #1
 6812 015c 08F10108 		add	r8, r8, #1
 6813 0160 74E7     		b	.L1325
 6814              	.L1351:
 6815 0162 2021     		movs	r1, #32
 6816 0164 2846     		mov	r0, r5
 6817 0166 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6818 016a ABE7     		b	.L1324
 6819              	.L1352:
 6820 016c 2021     		movs	r1, #32
 6821 016e 2846     		mov	r0, r5
 6822 0170 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6823 0174 CBE7     		b	.L1328
 6824              	.L1354:
 6825 0176 00BF     		.align	2
 6826              	.L1353:
 6827 0178 00000000 		.word	reprap
 6828 017c 00000000 		.word	.LC124
 6829 0180 04000000 		.word	.LC125
 6830 0184 14000000 		.word	.LC127
 6831 0188 10000000 		.word	.LC126
 6832              		.size	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef, .-_ZNK6GCodes25GenerateTemperatureRepor
 6833              		.section	.text._ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource,"ax",%progbits
 6834              		.align	1
 6835              		.p2align 2,,3
 6836              		.global	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 6837              		.syntax unified
 6838              		.thumb
 6839              		.thumb_func
 6840              		.fpu softvfp
ARM GAS  /tmp/ccx5mP1m.s 			page 121


 6841              		.type	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource, %function
 6842              	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource:
 6843              		@ args = 0, pretend = 0, frame = 8
 6844              		@ frame_needed = 0, uses_anonymous_args = 0
 6845 0000 0020     		movs	r0, #0
 6846 0002 00B5     		push	{lr}
 6847 0004 83B0     		sub	sp, sp, #12
 6848 0006 0190     		str	r0, [sp, #4]
 6849 0008 0529     		cmp	r1, #5
 6850 000a 26D8     		bhi	.L1362
 6851 000c DFE801F0 		tbb	[pc, r1]
 6852              	.L1358:
 6853 0010 1E       		.byte	(.L1357-.L1358)/2
 6854 0011 1E       		.byte	(.L1357-.L1358)/2
 6855 0012 16       		.byte	(.L1359-.L1358)/2
 6856 0013 16       		.byte	(.L1359-.L1358)/2
 6857 0014 16       		.byte	(.L1359-.L1358)/2
 6858 0015 03       		.byte	(.L1360-.L1358)/2
 6859              		.p2align 1
 6860              	.L1360:
 6861 0016 1248     		ldr	r0, .L1370
 6862 0018 FFF7FEFF 		bl	_ZN6RepRap17GetConfigResponseEv
 6863 001c 0190     		str	r0, [sp, #4]
 6864              	.L1361:
 6865 001e 50B1     		cbz	r0, .L1355
 6866 0020 0A21     		movs	r1, #10
 6867 0022 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 6868 0026 0198     		ldr	r0, [sp, #4]
 6869 0028 90F81531 		ldrb	r3, [r0, #277]	@ zero_extendqisi2
 6870 002c 1BB1     		cbz	r3, .L1355
 6871 002e 01A8     		add	r0, sp, #4
 6872 0030 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 6873 0034 0198     		ldr	r0, [sp, #4]
 6874              	.L1355:
 6875 0036 03B0     		add	sp, sp, #12
 6876              		@ sp needed
 6877 0038 5DF804FB 		ldr	pc, [sp], #4
 6878              	.L1359:
 6879 003c 0139     		subs	r1, r1, #1
 6880 003e C9B2     		uxtb	r1, r1
 6881 0040 1A46     		mov	r2, r3
 6882 0042 0748     		ldr	r0, .L1370
 6883 0044 FFF7FEFF 		bl	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 6884 0048 0190     		str	r0, [sp, #4]
 6885 004a E8E7     		b	.L1361
 6886              	.L1357:
 6887 004c 0231     		adds	r1, r1, #2
 6888 004e C9B2     		uxtb	r1, r1
 6889 0050 0348     		ldr	r0, .L1370
 6890 0052 FFF7FEFF 		bl	_ZN6RepRap23GetLegacyStatusResponseEhi
 6891 0056 0190     		str	r0, [sp, #4]
 6892 0058 E1E7     		b	.L1361
 6893              	.L1362:
 6894 005a 0020     		movs	r0, #0
 6895 005c EBE7     		b	.L1355
 6896              	.L1371:
 6897 005e 00BF     		.align	2
ARM GAS  /tmp/ccx5mP1m.s 			page 122


 6898              	.L1370:
 6899 0060 00000000 		.word	reprap
 6900              		.size	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource, .-_ZNK6GCodes26GenerateJsonStatu
 6901              		.section	.text._ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef,"ax",%progbits
 6902              		.align	1
 6903              		.p2align 2,,3
 6904              		.global	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 6905              		.syntax unified
 6906              		.thumb
 6907              		.thumb_func
 6908              		.fpu softvfp
 6909              		.type	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef, %function
 6910              	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef:
 6911              		@ args = 0, pretend = 0, frame = 0
 6912              		@ frame_needed = 0, uses_anonymous_args = 0
 6913 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 6914 0002 0C46     		mov	r4, r1
 6915 0004 0646     		mov	r6, r0
 6916 0006 1746     		mov	r7, r2
 6917 0008 FFF7FEFF 		bl	millis
 6918 000c 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 6919 000e 0546     		mov	r5, r0
 6920 0010 2BB1     		cbz	r3, .L1373
 6921 0012 2368     		ldr	r3, [r4]
 6922 0014 C31A     		subs	r3, r0, r3
 6923 0016 B3F57A7F 		cmp	r3, #1000
 6924 001a 04D2     		bcs	.L1384
 6925 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 6926              	.L1373:
 6927 001e 0123     		movs	r3, #1
 6928 0020 2060     		str	r0, [r4]
 6929 0022 2371     		strb	r3, [r4, #4]
 6930 0024 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 6931              	.L1384:
 6932 0026 3068     		ldr	r0, [r6]
 6933 0028 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 6934 002c 0228     		cmp	r0, #2
 6935 002e 11D0     		beq	.L1385
 6936              	.L1375:
 6937 0030 96F95C14 		ldrsb	r1, [r6, #1116]
 6938 0034 0029     		cmp	r1, #0
 6939 0036 0BDB     		blt	.L1378
 6940 0038 0123     		movs	r3, #1
 6941 003a 4FF0FF32 		mov	r2, #-1
 6942 003e 3046     		mov	r0, r6
 6943 0040 FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 6944 0044 20B1     		cbz	r0, .L1378
 6945 0046 0146     		mov	r1, r0
 6946 0048 0122     		movs	r2, #1
 6947 004a 3068     		ldr	r0, [r6]
 6948 004c FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 6949              	.L1378:
 6950 0050 2560     		str	r5, [r4]
 6951 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 6952              	.L1385:
 6953 0054 736C     		ldr	r3, [r6, #68]
 6954 0056 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/ccx5mP1m.s 			page 123


 6955 0058 9C42     		cmp	r4, r3
 6956 005a 03D0     		beq	.L1376
 6957 005c F36B     		ldr	r3, [r6, #60]
 6958 005e 1B68     		ldr	r3, [r3]
 6959 0060 9C42     		cmp	r4, r3
 6960 0062 E5D1     		bne	.L1375
 6961              	.L1376:
 6962 0064 3946     		mov	r1, r7
 6963 0066 3046     		mov	r0, r6
 6964 0068 FFF7FEFF 		bl	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef
 6965 006c 0A21     		movs	r1, #10
 6966 006e 3846     		mov	r0, r7
 6967 0070 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6968 0074 3A68     		ldr	r2, [r7]
 6969 0076 0121     		movs	r1, #1
 6970 0078 3068     		ldr	r0, [r6]
 6971 007a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6972 007e D7E7     		b	.L1375
 6973              		.size	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef, .-_ZNK6GCodes14CheckReportDueER11GCo
 6974              		.section	.text._ZN6GCodes12LockResourceERK11GCodeBufferj,"ax",%progbits
 6975              		.align	1
 6976              		.p2align 2,,3
 6977              		.global	_ZN6GCodes12LockResourceERK11GCodeBufferj
 6978              		.syntax unified
 6979              		.thumb
 6980              		.thumb_func
 6981              		.fpu softvfp
 6982              		.type	_ZN6GCodes12LockResourceERK11GCodeBufferj, %function
 6983              	_ZN6GCodes12LockResourceERK11GCodeBufferj:
 6984              		@ args = 0, pretend = 0, frame = 0
 6985              		@ frame_needed = 0, uses_anonymous_args = 0
 6986              		@ link register save eliminated.
 6987 0000 30B4     		push	{r4, r5}
 6988 0002 00EB8204 		add	r4, r0, r2, lsl #2
 6989 0006 E36D     		ldr	r3, [r4, #92]
 6990 0008 8B42     		cmp	r3, r1
 6991 000a 0DD0     		beq	.L1388
 6992 000c 13B1     		cbz	r3, .L1391
 6993 000e 30BC     		pop	{r4, r5}
 6994 0010 0020     		movs	r0, #0
 6995 0012 7047     		bx	lr
 6996              	.L1391:
 6997 0014 0120     		movs	r0, #1
 6998 0016 8D68     		ldr	r5, [r1, #8]
 6999 0018 E165     		str	r1, [r4, #92]
 7000 001a EB68     		ldr	r3, [r5, #12]
 7001 001c 00FA02F2 		lsl	r2, r0, r2
 7002 0020 1A43     		orrs	r2, r2, r3
 7003 0022 EA60     		str	r2, [r5, #12]
 7004 0024 30BC     		pop	{r4, r5}
 7005 0026 7047     		bx	lr
 7006              	.L1388:
 7007 0028 0120     		movs	r0, #1
 7008 002a 30BC     		pop	{r4, r5}
 7009 002c 7047     		bx	lr
 7010              		.size	_ZN6GCodes12LockResourceERK11GCodeBufferj, .-_ZN6GCodes12LockResourceERK11GCodeBufferj
 7011 002e 00BF     		.section	.text._ZN6GCodes12GrabResourceERK11GCodeBufferj,"ax",%progbits
ARM GAS  /tmp/ccx5mP1m.s 			page 124


 7012              		.align	1
 7013              		.p2align 2,,3
 7014              		.global	_ZN6GCodes12GrabResourceERK11GCodeBufferj
 7015              		.syntax unified
 7016              		.thumb
 7017              		.thumb_func
 7018              		.fpu softvfp
 7019              		.type	_ZN6GCodes12GrabResourceERK11GCodeBufferj, %function
 7020              	_ZN6GCodes12GrabResourceERK11GCodeBufferj:
 7021              		@ args = 0, pretend = 0, frame = 0
 7022              		@ frame_needed = 0, uses_anonymous_args = 0
 7023              		@ link register save eliminated.
 7024 0000 00EB8200 		add	r0, r0, r2, lsl #2
 7025 0004 C36D     		ldr	r3, [r0, #92]
 7026 0006 8B42     		cmp	r3, r1
 7027 0008 0DD0     		beq	.L1404
 7028 000a 6BB1     		cbz	r3, .L1407
 7029 000c 10B4     		push	{r4}
 7030 000e 0124     		movs	r4, #1
 7031 0010 9440     		lsls	r4, r4, r2
 7032 0012 E443     		mvns	r4, r4
 7033 0014 9B68     		ldr	r3, [r3, #8]
 7034              	.L1396:
 7035 0016 DA68     		ldr	r2, [r3, #12]
 7036 0018 2240     		ands	r2, r2, r4
 7037 001a DA60     		str	r2, [r3, #12]
 7038 001c 1B68     		ldr	r3, [r3]
 7039 001e 002B     		cmp	r3, #0
 7040 0020 F9D1     		bne	.L1396
 7041 0022 10BC     		pop	{r4}
 7042 0024 C165     		str	r1, [r0, #92]
 7043              	.L1404:
 7044 0026 7047     		bx	lr
 7045              	.L1407:
 7046 0028 C165     		str	r1, [r0, #92]
 7047 002a 7047     		bx	lr
 7048              		.size	_ZN6GCodes12GrabResourceERK11GCodeBufferj, .-_ZN6GCodes12GrabResourceERK11GCodeBufferj
 7049              		.section	.text._ZN6GCodes10LockHeaterERK11GCodeBufferi,"ax",%progbits
 7050              		.align	1
 7051              		.p2align 2,,3
 7052              		.global	_ZN6GCodes10LockHeaterERK11GCodeBufferi
 7053              		.syntax unified
 7054              		.thumb
 7055              		.thumb_func
 7056              		.fpu softvfp
 7057              		.type	_ZN6GCodes10LockHeaterERK11GCodeBufferi, %function
 7058              	_ZN6GCodes10LockHeaterERK11GCodeBufferi:
 7059              		@ args = 0, pretend = 0, frame = 0
 7060              		@ frame_needed = 0, uses_anonymous_args = 0
 7061              		@ link register save eliminated.
 7062 0000 032A     		cmp	r2, #3
 7063 0002 08D8     		bhi	.L1411
 7064 0004 00EB8200 		add	r0, r0, r2, lsl #2
 7065 0008 436E     		ldr	r3, [r0, #100]
 7066 000a 0232     		adds	r2, r2, #2
 7067 000c 9942     		cmp	r1, r3
 7068 000e 02D0     		beq	.L1411
ARM GAS  /tmp/ccx5mP1m.s 			page 125


 7069 0010 1BB1     		cbz	r3, .L1417
 7070 0012 0020     		movs	r0, #0
 7071 0014 7047     		bx	lr
 7072              	.L1411:
 7073 0016 0120     		movs	r0, #1
 7074 0018 7047     		bx	lr
 7075              	.L1417:
 7076 001a 0123     		movs	r3, #1
 7077 001c 10B4     		push	{r4}
 7078 001e 8C68     		ldr	r4, [r1, #8]
 7079 0020 4166     		str	r1, [r0, #100]
 7080 0022 E168     		ldr	r1, [r4, #12]
 7081 0024 03FA02F2 		lsl	r2, r3, r2
 7082 0028 0A43     		orrs	r2, r2, r1
 7083 002a E260     		str	r2, [r4, #12]
 7084 002c 1846     		mov	r0, r3
 7085 002e 10BC     		pop	{r4}
 7086 0030 7047     		bx	lr
 7087              		.size	_ZN6GCodes10LockHeaterERK11GCodeBufferi, .-_ZN6GCodes10LockHeaterERK11GCodeBufferi
 7088 0032 00BF     		.section	.text._ZN6GCodes7LockFanERK11GCodeBufferi,"ax",%progbits
 7089              		.align	1
 7090              		.p2align 2,,3
 7091              		.global	_ZN6GCodes7LockFanERK11GCodeBufferi
 7092              		.syntax unified
 7093              		.thumb
 7094              		.thumb_func
 7095              		.fpu softvfp
 7096              		.type	_ZN6GCodes7LockFanERK11GCodeBufferi, %function
 7097              	_ZN6GCodes7LockFanERK11GCodeBufferi:
 7098              		@ args = 0, pretend = 0, frame = 0
 7099              		@ frame_needed = 0, uses_anonymous_args = 0
 7100              		@ link register save eliminated.
 7101 0000 012A     		cmp	r2, #1
 7102 0002 01D9     		bls	.L1427
 7103              	.L1421:
 7104 0004 0120     		movs	r0, #1
 7105 0006 7047     		bx	lr
 7106              	.L1427:
 7107 0008 00EB8200 		add	r0, r0, r2, lsl #2
 7108 000c 436F     		ldr	r3, [r0, #116]
 7109 000e 0632     		adds	r2, r2, #6
 7110 0010 9942     		cmp	r1, r3
 7111 0012 F7D0     		beq	.L1421
 7112 0014 0BB1     		cbz	r3, .L1428
 7113 0016 0020     		movs	r0, #0
 7114 0018 7047     		bx	lr
 7115              	.L1428:
 7116 001a 0123     		movs	r3, #1
 7117 001c 10B4     		push	{r4}
 7118 001e 8C68     		ldr	r4, [r1, #8]
 7119 0020 4167     		str	r1, [r0, #116]
 7120 0022 E168     		ldr	r1, [r4, #12]
 7121 0024 03FA02F2 		lsl	r2, r3, r2
 7122 0028 0A43     		orrs	r2, r2, r1
 7123 002a E260     		str	r2, [r4, #12]
 7124 002c 1846     		mov	r0, r3
 7125 002e 10BC     		pop	{r4}
ARM GAS  /tmp/ccx5mP1m.s 			page 126


 7126 0030 7047     		bx	lr
 7127              		.size	_ZN6GCodes7LockFanERK11GCodeBufferi, .-_ZN6GCodes7LockFanERK11GCodeBufferi
 7128 0032 00BF     		.section	.text._ZN6GCodes14LockFileSystemERK11GCodeBuffer,"ax",%progbits
 7129              		.align	1
 7130              		.p2align 2,,3
 7131              		.global	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 7132              		.syntax unified
 7133              		.thumb
 7134              		.thumb_func
 7135              		.fpu softvfp
 7136              		.type	_ZN6GCodes14LockFileSystemERK11GCodeBuffer, %function
 7137              	_ZN6GCodes14LockFileSystemERK11GCodeBuffer:
 7138              		@ args = 0, pretend = 0, frame = 0
 7139              		@ frame_needed = 0, uses_anonymous_args = 0
 7140              		@ link register save eliminated.
 7141 0000 036E     		ldr	r3, [r0, #96]
 7142 0002 9942     		cmp	r1, r3
 7143 0004 02D0     		beq	.L1431
 7144 0006 1BB1     		cbz	r3, .L1433
 7145 0008 0020     		movs	r0, #0
 7146 000a 7047     		bx	lr
 7147              	.L1431:
 7148 000c 0120     		movs	r0, #1
 7149 000e 7047     		bx	lr
 7150              	.L1433:
 7151 0010 8A68     		ldr	r2, [r1, #8]
 7152 0012 0166     		str	r1, [r0, #96]
 7153 0014 D368     		ldr	r3, [r2, #12]
 7154 0016 0120     		movs	r0, #1
 7155 0018 43F00203 		orr	r3, r3, #2
 7156 001c D360     		str	r3, [r2, #12]
 7157 001e 7047     		bx	lr
 7158              		.size	_ZN6GCodes14LockFileSystemERK11GCodeBuffer, .-_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 7159              		.section	.text._ZN6GCodes12LockMovementERK11GCodeBuffer,"ax",%progbits
 7160              		.align	1
 7161              		.p2align 2,,3
 7162              		.global	_ZN6GCodes12LockMovementERK11GCodeBuffer
 7163              		.syntax unified
 7164              		.thumb
 7165              		.thumb_func
 7166              		.fpu softvfp
 7167              		.type	_ZN6GCodes12LockMovementERK11GCodeBuffer, %function
 7168              	_ZN6GCodes12LockMovementERK11GCodeBuffer:
 7169              		@ args = 0, pretend = 0, frame = 0
 7170              		@ frame_needed = 0, uses_anonymous_args = 0
 7171              		@ link register save eliminated.
 7172 0000 C36D     		ldr	r3, [r0, #92]
 7173 0002 9942     		cmp	r1, r3
 7174 0004 02D0     		beq	.L1436
 7175 0006 1BB1     		cbz	r3, .L1438
 7176 0008 0020     		movs	r0, #0
 7177 000a 7047     		bx	lr
 7178              	.L1436:
 7179 000c 0120     		movs	r0, #1
 7180 000e 7047     		bx	lr
 7181              	.L1438:
 7182 0010 8A68     		ldr	r2, [r1, #8]
ARM GAS  /tmp/ccx5mP1m.s 			page 127


 7183 0012 C165     		str	r1, [r0, #92]
 7184 0014 0120     		movs	r0, #1
 7185 0016 D368     		ldr	r3, [r2, #12]
 7186 0018 0343     		orrs	r3, r3, r0
 7187 001a D360     		str	r3, [r2, #12]
 7188 001c 7047     		bx	lr
 7189              		.size	_ZN6GCodes12LockMovementERK11GCodeBuffer, .-_ZN6GCodes12LockMovementERK11GCodeBuffer
 7190 001e 00BF     		.section	.text._ZN6GCodes12GrabMovementERK11GCodeBuffer,"ax",%progbits
 7191              		.align	1
 7192              		.p2align 2,,3
 7193              		.global	_ZN6GCodes12GrabMovementERK11GCodeBuffer
 7194              		.syntax unified
 7195              		.thumb
 7196              		.thumb_func
 7197              		.fpu softvfp
 7198              		.type	_ZN6GCodes12GrabMovementERK11GCodeBuffer, %function
 7199              	_ZN6GCodes12GrabMovementERK11GCodeBuffer:
 7200              		@ args = 0, pretend = 0, frame = 0
 7201              		@ frame_needed = 0, uses_anonymous_args = 0
 7202              		@ link register save eliminated.
 7203 0000 C36D     		ldr	r3, [r0, #92]
 7204 0002 9942     		cmp	r1, r3
 7205 0004 0AD0     		beq	.L1439
 7206 0006 3BB1     		cbz	r3, .L1442
 7207 0008 9B68     		ldr	r3, [r3, #8]
 7208              	.L1443:
 7209 000a DA68     		ldr	r2, [r3, #12]
 7210 000c 22F00102 		bic	r2, r2, #1
 7211 0010 DA60     		str	r2, [r3, #12]
 7212 0012 1B68     		ldr	r3, [r3]
 7213 0014 002B     		cmp	r3, #0
 7214 0016 F8D1     		bne	.L1443
 7215              	.L1442:
 7216 0018 C165     		str	r1, [r0, #92]
 7217 001a 7047     		bx	lr
 7218              	.L1439:
 7219 001c 7047     		bx	lr
 7220              		.size	_ZN6GCodes12GrabMovementERK11GCodeBuffer, .-_ZN6GCodes12GrabMovementERK11GCodeBuffer
 7221 001e 00BF     		.section	.text._ZN6GCodes9UnlockAllERK11GCodeBuffer,"ax",%progbits
 7222              		.align	1
 7223              		.p2align 2,,3
 7224              		.global	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7225              		.syntax unified
 7226              		.thumb
 7227              		.thumb_func
 7228              		.fpu softvfp
 7229              		.type	_ZN6GCodes9UnlockAllERK11GCodeBuffer, %function
 7230              	_ZN6GCodes9UnlockAllERK11GCodeBuffer:
 7231              		@ args = 0, pretend = 0, frame = 0
 7232              		@ frame_needed = 0, uses_anonymous_args = 0
 7233 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 7234 0002 8D68     		ldr	r5, [r1, #8]
 7235 0004 2F68     		ldr	r7, [r5]
 7236 0006 07B1     		cbz	r7, .L1448
 7237 0008 FF68     		ldr	r7, [r7, #12]
 7238              	.L1448:
 7239 000a 0023     		movs	r3, #0
ARM GAS  /tmp/ccx5mP1m.s 			page 128


 7240 000c 4FF0010E 		mov	lr, #1
 7241 0010 5C30     		adds	r0, r0, #92
 7242 0012 04E0     		b	.L1451
 7243              	.L1449:
 7244 0014 0133     		adds	r3, r3, #1
 7245 0016 082B     		cmp	r3, #8
 7246 0018 00F10400 		add	r0, r0, #4
 7247 001c 13D0     		beq	.L1456
 7248              	.L1451:
 7249 001e 0268     		ldr	r2, [r0]
 7250 0020 9142     		cmp	r1, r2
 7251 0022 F7D1     		bne	.L1449
 7252 0024 27FA03F4 		lsr	r4, r7, r3
 7253 0028 14F00104 		ands	r4, r4, #1
 7254 002c 0EFA03F6 		lsl	r6, lr, r3
 7255 0030 F0D1     		bne	.L1449
 7256 0032 EA68     		ldr	r2, [r5, #12]
 7257 0034 0133     		adds	r3, r3, #1
 7258 0036 22EA0602 		bic	r2, r2, r6
 7259 003a 082B     		cmp	r3, #8
 7260 003c 0460     		str	r4, [r0]
 7261 003e EA60     		str	r2, [r5, #12]
 7262 0040 00F10400 		add	r0, r0, #4
 7263 0044 EBD1     		bne	.L1451
 7264              	.L1456:
 7265 0046 F0BD     		pop	{r4, r5, r6, r7, pc}
 7266              		.size	_ZN6GCodes9UnlockAllERK11GCodeBuffer, .-_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7267              		.section	.text._ZN6GCodes9StopPrintE15StopPrintReason,"ax",%progbits
 7268              		.align	1
 7269              		.p2align 2,,3
 7270              		.global	_ZN6GCodes9StopPrintE15StopPrintReason
 7271              		.syntax unified
 7272              		.thumb
 7273              		.thumb_func
 7274              		.fpu softvfp
 7275              		.type	_ZN6GCodes9StopPrintE15StopPrintReason, %function
 7276              	_ZN6GCodes9StopPrintE15StopPrintReason:
 7277              		@ args = 0, pretend = 0, frame = 0
 7278              		@ frame_needed = 0, uses_anonymous_args = 0
 7279 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 7280 0004 0446     		mov	r4, r0
 7281 0006 0025     		movs	r5, #0
 7282 0008 036C     		ldr	r3, [r0, #64]
 7283 000a C0F8FC50 		str	r5, [r0, #252]
 7284 000e 84B0     		sub	sp, sp, #16
 7285 0010 1868     		ldr	r0, [r3]
 7286 0012 84F87F50 		strb	r5, [r4, #127]
 7287 0016 84F87E50 		strb	r5, [r4, #126]
 7288 001a 0F46     		mov	r7, r1
 7289 001c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 7290 0020 0646     		mov	r6, r0
 7291 0022 E068     		ldr	r0, [r4, #12]
 7292 0024 06F10801 		add	r1, r6, #8
 7293 0028 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 7294 002c 236C     		ldr	r3, [r4, #64]
 7295 002e 1868     		ldr	r0, [r3]
 7296 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
ARM GAS  /tmp/ccx5mP1m.s 			page 129


 7297 0034 B068     		ldr	r0, [r6, #8]
 7298 0036 10B1     		cbz	r0, .L1458
 7299 0038 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7300 003c B560     		str	r5, [r6, #8]
 7301              	.L1458:
 7302 003e 0022     		movs	r2, #0
 7303 0040 8A4E     		ldr	r6, .L1493
 7304 0042 D4F8D003 		ldr	r0, [r4, #976]
 7305 0046 B368     		ldr	r3, [r6, #8]
 7306 0048 C3F80825 		str	r2, [r3, #1288]
 7307 004c C3F80425 		str	r2, [r3, #1284]
 7308 0050 FFF7FEFF 		bl	_ZN10GCodeQueue5ClearEv
 7309 0054 236C     		ldr	r3, [r4, #64]
 7310 0056 2046     		mov	r0, r4
 7311 0058 1968     		ldr	r1, [r3]
 7312 005a FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7313 005e F069     		ldr	r0, [r6, #28]
 7314 0060 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 7315 0062 002B     		cmp	r3, #0
 7316 0064 40D0     		beq	.L1459
 7317 0066 94F83133 		ldrb	r3, [r4, #817]	@ zero_extendqisi2
 7318 006a 00F58475 		add	r5, r0, #264
 7319 006e 002B     		cmp	r3, #0
 7320 0070 3FD1     		bne	.L1475
 7321 0072 022F     		cmp	r7, #2
 7322 0074 00F0E380 		beq	.L1491
 7323              	.L1466:
 7324 0078 2068     		ldr	r0, [r4]
 7325 007a FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7326 007e 0228     		cmp	r0, #2
 7327 0080 00F0D780 		beq	.L1476
 7328              	.L1471:
 7329 0084 F069     		ldr	r0, [r6, #28]
 7330 0086 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 7331 008a 7949     		ldr	r1, .L1493+4
 7332 008c FFF7FEFF 		bl	__aeabi_fdiv
 7333 0090 FFF7FEFF 		bl	lrintf
 7334 0094 0246     		mov	r2, r0
 7335 0096 2068     		ldr	r0, [r4]
 7336 0098 1146     		mov	r1, r2
 7337 009a 002F     		cmp	r7, #0
 7338 009c 40F09980 		bne	.L1473
 7339 00a0 744B     		ldr	r3, .L1493+8
 7340 00a2 0095     		str	r5, [sp]
 7341 00a4 A3FB0213 		umull	r1, r3, r3, r2
 7342 00a8 5B09     		lsrs	r3, r3, #5
 7343 00aa C3EB0311 		rsb	r1, r3, r3, lsl #4
 7344 00ae A2EB8102 		sub	r2, r2, r1, lsl #2
 7345 00b2 0193     		str	r3, [sp, #4]
 7346 00b4 0292     		str	r2, [sp, #8]
 7347 00b6 704B     		ldr	r3, .L1493+12
 7348 00b8 704A     		ldr	r2, .L1493+16
 7349 00ba B521     		movs	r1, #181
 7350 00bc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7351 00c0 94F83033 		ldrb	r3, [r4, #816]	@ zero_extendqisi2
 7352 00c4 3BB9     		cbnz	r3, .L1490
 7353 00c6 2268     		ldr	r2, [r4]
ARM GAS  /tmp/ccx5mP1m.s 			page 130


 7354 00c8 0123     		movs	r3, #1
 7355 00ca D2F86805 		ldr	r0, [r2, #1384]
 7356 00ce 6C49     		ldr	r1, .L1493+20
 7357 00d0 6C4A     		ldr	r2, .L1493+24
 7358 00d2 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 7359              	.L1490:
 7360 00d6 F069     		ldr	r0, [r6, #28]
 7361              	.L1465:
 7362 00d8 0023     		movs	r3, #0
 7363 00da 84F83233 		strb	r3, [r4, #818]
 7364 00de 04B0     		add	sp, sp, #16
 7365              		@ sp needed
 7366 00e0 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 7367 00e4 FFF7FEBF 		b	_ZN12PrintMonitor12StoppedPrintEv
 7368              	.L1459:
 7369 00e8 94F83133 		ldrb	r3, [r4, #817]	@ zero_extendqisi2
 7370 00ec 002B     		cmp	r3, #0
 7371 00ee F3D0     		beq	.L1465
 7372 00f0 654D     		ldr	r5, .L1493+28
 7373              	.L1475:
 7374 00f2 D6F80890 		ldr	r9, [r6, #8]
 7375 00f6 D4F82C13 		ldr	r1, [r4, #812]	@ float
 7376 00fa D9F82800 		ldr	r0, [r9, #40]	@ float
 7377 00fe FFF7FEFF 		bl	__aeabi_fadd
 7378 0102 94F83283 		ldrb	r8, [r4, #818]	@ zero_extendqisi2
 7379 0106 8246     		mov	r10, r0
 7380 0108 B8F1000F 		cmp	r8, #0
 7381 010c 27D0     		beq	.L1461
 7382 010e 002F     		cmp	r7, #0
 7383 0110 71D0     		beq	.L1492
 7384 0112 0027     		movs	r7, #0
 7385 0114 4846     		mov	r0, r9
 7386 0116 3946     		mov	r1, r7
 7387 0118 84F83173 		strb	r7, [r4, #817]
 7388 011c 84F83073 		strb	r7, [r4, #816]
 7389 0120 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 7390 0124 3946     		mov	r1, r7
 7391 0126 2046     		mov	r0, r4
 7392 0128 FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 7393 012c 5049     		ldr	r1, .L1493+4
 7394 012e 5046     		mov	r0, r10
 7395 0130 FFF7FEFF 		bl	__aeabi_fdiv
 7396 0134 FFF7FEFF 		bl	lrintf
 7397 0138 0346     		mov	r3, r0
 7398              	.L1464:
 7399 013a 4E4A     		ldr	r2, .L1493+8
 7400 013c 2068     		ldr	r0, [r4]
 7401 013e A2FB0312 		umull	r1, r2, r2, r3
 7402 0142 5209     		lsrs	r2, r2, #5
 7403 0144 C2EB0211 		rsb	r1, r2, r2, lsl #4
 7404 0148 A3EB8101 		sub	r1, r3, r1, lsl #2
 7405 014c 0092     		str	r2, [sp]
 7406 014e 0191     		str	r1, [sp, #4]
 7407 0150 2B46     		mov	r3, r5
 7408 0152 4E4A     		ldr	r2, .L1493+32
 7409 0154 B521     		movs	r1, #181
 7410 0156 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  /tmp/ccx5mP1m.s 			page 131


 7411 015a F069     		ldr	r0, [r6, #28]
 7412 015c BCE7     		b	.L1465
 7413              	.L1461:
 7414 015e 4846     		mov	r0, r9
 7415 0160 4146     		mov	r1, r8
 7416 0162 84F83183 		strb	r8, [r4, #817]
 7417 0166 84F83083 		strb	r8, [r4, #816]
 7418 016a FFF7FEFF 		bl	_ZN4Move8SimulateEh
 7419 016e 4146     		mov	r1, r8
 7420 0170 2046     		mov	r0, r4
 7421 0172 FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 7422 0176 3E49     		ldr	r1, .L1493+4
 7423 0178 5046     		mov	r0, r10
 7424 017a FFF7FEFF 		bl	__aeabi_fdiv
 7425 017e FFF7FEFF 		bl	lrintf
 7426 0182 0346     		mov	r3, r0
 7427 0184 002F     		cmp	r7, #0
 7428 0186 D8D1     		bne	.L1464
 7429              	.L1463:
 7430 0188 3A4A     		ldr	r2, .L1493+8
 7431 018a 2068     		ldr	r0, [r4]
 7432 018c A2FB0312 		umull	r1, r2, r2, r3
 7433 0190 5209     		lsrs	r2, r2, #5
 7434 0192 C2EB0211 		rsb	r1, r2, r2, lsl #4
 7435 0196 A3EB8101 		sub	r1, r3, r1, lsl #2
 7436 019a 0092     		str	r2, [sp]
 7437 019c 0191     		str	r1, [sp, #4]
 7438 019e 2B46     		mov	r3, r5
 7439 01a0 3B4A     		ldr	r2, .L1493+36
 7440 01a2 B521     		movs	r1, #181
 7441 01a4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7442 01a8 F069     		ldr	r0, [r6, #28]
 7443 01aa 95E7     		b	.L1465
 7444              	.L1467:
 7445 01ac 0021     		movs	r1, #0
 7446 01ae 2068     		ldr	r0, [r4]
 7447 01b0 FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEf
 7448              	.L1469:
 7449 01b4 2068     		ldr	r0, [r4]
 7450 01b6 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7451 01ba 0228     		cmp	r0, #2
 7452 01bc 39D0     		beq	.L1476
 7453 01be F069     		ldr	r0, [r6, #28]
 7454 01c0 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 7455 01c4 2A49     		ldr	r1, .L1493+4
 7456 01c6 FFF7FEFF 		bl	__aeabi_fdiv
 7457 01ca FFF7FEFF 		bl	lrintf
 7458 01ce 0146     		mov	r1, r0
 7459 01d0 2068     		ldr	r0, [r4]
 7460              	.L1473:
 7461 01d2 284B     		ldr	r3, .L1493+8
 7462 01d4 0095     		str	r5, [sp]
 7463 01d6 A3FB0123 		umull	r2, r3, r3, r1
 7464 01da 5B09     		lsrs	r3, r3, #5
 7465 01dc C3EB0312 		rsb	r2, r3, r3, lsl #4
 7466 01e0 A1EB8201 		sub	r1, r1, r2, lsl #2
 7467 01e4 0193     		str	r3, [sp, #4]
ARM GAS  /tmp/ccx5mP1m.s 			page 132


 7468 01e6 0291     		str	r1, [sp, #8]
 7469 01e8 2A4B     		ldr	r3, .L1493+40
 7470 01ea 244A     		ldr	r2, .L1493+16
 7471 01ec B521     		movs	r1, #181
 7472 01ee FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7473 01f2 F069     		ldr	r0, [r6, #28]
 7474 01f4 70E7     		b	.L1465
 7475              	.L1492:
 7476 01f6 2368     		ldr	r3, [r4]
 7477 01f8 D3F86885 		ldr	r8, [r3, #1384]
 7478 01fc FFF7FEFF 		bl	lrintf
 7479 0200 2946     		mov	r1, r5
 7480 0202 0246     		mov	r2, r0
 7481 0204 4046     		mov	r0, r8
 7482 0206 FFF7FEFF 		bl	_ZN11MassStorage20RecordSimulationTimeEPKcm
 7483 020a 3946     		mov	r1, r7
 7484 020c B068     		ldr	r0, [r6, #8]
 7485 020e 84F83173 		strb	r7, [r4, #817]
 7486 0212 84F83073 		strb	r7, [r4, #816]
 7487 0216 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 7488 021a 3946     		mov	r1, r7
 7489 021c 2046     		mov	r0, r4
 7490 021e FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 7491 0222 1349     		ldr	r1, .L1493+4
 7492 0224 5046     		mov	r0, r10
 7493 0226 FFF7FEFF 		bl	__aeabi_fdiv
 7494 022a FFF7FEFF 		bl	lrintf
 7495 022e 0346     		mov	r3, r0
 7496 0230 AAE7     		b	.L1463
 7497              	.L1476:
 7498 0232 194A     		ldr	r2, .L1493+44
 7499 0234 0121     		movs	r1, #1
 7500 0236 2068     		ldr	r0, [r4]
 7501 0238 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7502 023c 22E7     		b	.L1471
 7503              	.L1491:
 7504 023e 0121     		movs	r1, #1
 7505 0240 F068     		ldr	r0, [r6, #12]
 7506 0242 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 7507 0246 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 7508 024a 012B     		cmp	r3, #1
 7509 024c AED0     		beq	.L1467
 7510 024e 022B     		cmp	r3, #2
 7511 0250 7FF412AF 		bne	.L1466
 7512 0254 4FF4B268 		mov	r8, #1424
 7513              	.L1470:
 7514 0258 2068     		ldr	r0, [r4]
 7515 025a 4044     		add	r0, r0, r8
 7516 025c 08F12008 		add	r8, r8, #32
 7517 0260 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 7518 0264 B8F5C26F 		cmp	r8, #1552
 7519 0268 F6D1     		bne	.L1470
 7520 026a A3E7     		b	.L1469
 7521              	.L1494:
 7522              		.align	2
 7523              	.L1493:
 7524 026c 00000000 		.word	reprap
ARM GAS  /tmp/ccx5mP1m.s 			page 133


 7525 0270 00007042 		.word	1114636288
 7526 0274 89888888 		.word	-2004318071
 7527 0278 D0000000 		.word	.LC134
 7528 027c A0000000 		.word	.LC133
 7529 0280 34000000 		.word	.LC17
 7530 0284 28000000 		.word	.LC16
 7531 0288 00000000 		.word	.LC128
 7532 028c 40000000 		.word	.LC130
 7533 0290 0C000000 		.word	.LC129
 7534 0294 94000000 		.word	.LC132
 7535 0298 80000000 		.word	.LC131
 7536              		.size	_ZN6GCodes9StopPrintE15StopPrintReason, .-_ZN6GCodes9StopPrintE15StopPrintReason
 7537              		.section	.text._ZN6GCodes10AbortPrintER11GCodeBuffer,"ax",%progbits
 7538              		.align	1
 7539              		.p2align 2,,3
 7540              		.global	_ZN6GCodes10AbortPrintER11GCodeBuffer
 7541              		.syntax unified
 7542              		.thumb
 7543              		.thumb_func
 7544              		.fpu softvfp
 7545              		.type	_ZN6GCodes10AbortPrintER11GCodeBuffer, %function
 7546              	_ZN6GCodes10AbortPrintER11GCodeBuffer:
 7547              		@ args = 0, pretend = 0, frame = 0
 7548              		@ frame_needed = 0, uses_anonymous_args = 0
 7549 0000 38B5     		push	{r3, r4, r5, lr}
 7550 0002 0D46     		mov	r5, r1
 7551 0004 0446     		mov	r4, r0
 7552 0006 C168     		ldr	r1, [r0, #12]
 7553 0008 2846     		mov	r0, r5
 7554 000a FFF7FEFF 		bl	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput
 7555 000e 236C     		ldr	r3, [r4, #64]
 7556 0010 1B68     		ldr	r3, [r3]
 7557 0012 9D42     		cmp	r5, r3
 7558 0014 00D0     		beq	.L1498
 7559 0016 38BD     		pop	{r3, r4, r5, pc}
 7560              	.L1498:
 7561 0018 2046     		mov	r0, r4
 7562 001a BDE83840 		pop	{r3, r4, r5, lr}
 7563 001e 0221     		movs	r1, #2
 7564 0020 FFF7FEBF 		b	_ZN6GCodes9StopPrintE15StopPrintReason
 7565              		.size	_ZN6GCodes10AbortPrintER11GCodeBuffer, .-_ZN6GCodes10AbortPrintER11GCodeBuffer
 7566              		.section	.text._ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef,"ax",%progbits
 7567              		.align	1
 7568              		.p2align 2,,3
 7569              		.global	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef
 7570              		.syntax unified
 7571              		.thumb
 7572              		.thumb_func
 7573              		.fpu softvfp
 7574              		.type	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef, %function
 7575              	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef:
 7576              		@ args = 0, pretend = 0, frame = 8
 7577              		@ frame_needed = 0, uses_anonymous_args = 0
 7578 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7579 0004 8E68     		ldr	r6, [r1, #8]
 7580 0006 82B0     		sub	sp, sp, #8
 7581 0008 06F10807 		add	r7, r6, #8
ARM GAS  /tmp/ccx5mP1m.s 			page 134


 7582 000c 0C46     		mov	r4, r1
 7583 000e 0546     		mov	r5, r0
 7584 0010 3946     		mov	r1, r7
 7585 0012 C068     		ldr	r0, [r0, #12]
 7586 0014 9046     		mov	r8, r2
 7587 0016 FFF7FEFF 		bl	_ZN14FileGCodeInput12ReadFromFileER8FileData
 7588 001a 0128     		cmp	r0, #1
 7589 001c 09D0     		beq	.L1501
 7590 001e 69D3     		bcc	.L1502
 7591 0020 0228     		cmp	r0, #2
 7592 0022 64D1     		bne	.L1499
 7593 0024 2146     		mov	r1, r4
 7594 0026 2846     		mov	r0, r5
 7595 0028 02B0     		add	sp, sp, #8
 7596              		@ sp needed
 7597 002a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7598 002e FFF7FEBF 		b	_ZN6GCodes10AbortPrintER11GCodeBuffer
 7599              	.L1501:
 7600 0032 236A     		ldr	r3, [r4, #32]
 7601 0034 2BB1     		cbz	r3, .L1505
 7602 0036 0A21     		movs	r1, #10
 7603 0038 2046     		mov	r0, r4
 7604 003a FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 7605 003e 0028     		cmp	r0, #0
 7606 0040 5FD1     		bne	.L1536
 7607              	.L1505:
 7608 0042 2046     		mov	r0, r4
 7609 0044 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7610 0048 A368     		ldr	r3, [r4, #8]
 7611 004a 1B68     		ldr	r3, [r3]
 7612 004c 002B     		cmp	r3, #0
 7613 004e 6BD0     		beq	.L1537
 7614 0050 E868     		ldr	r0, [r5, #12]
 7615 0052 3946     		mov	r1, r7
 7616 0054 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 7617 0058 B068     		ldr	r0, [r6, #8]
 7618 005a 18B1     		cbz	r0, .L1508
 7619 005c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7620 0060 0023     		movs	r3, #0
 7621 0062 B360     		str	r3, [r6, #8]
 7622              	.L1508:
 7623 0064 95F88030 		ldrb	r3, [r5, #128]	@ zero_extendqisi2
 7624 0068 D3B1     		cbz	r3, .L1509
 7625 006a 05F11800 		add	r0, r5, #24
 7626 006e 05F13807 		add	r7, r5, #56
 7627              	.L1510:
 7628 0072 50F8043B 		ldr	r3, [r0], #4
 7629 0076 A268     		ldr	r2, [r4, #8]
 7630 0078 9B68     		ldr	r3, [r3, #8]
 7631 007a 167E     		ldrb	r6, [r2, #24]	@ zero_extendqisi2
 7632 007c 197E     		ldrb	r1, [r3, #24]	@ zero_extendqisi2
 7633 007e B842     		cmp	r0, r7
 7634 0080 66F30001 		bfi	r1, r6, #0, #1
 7635 0084 1976     		strb	r1, [r3, #24]
 7636 0086 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 7637 0088 1E7E     		ldrb	r6, [r3, #24]	@ zero_extendqisi2
 7638 008a C1F34001 		ubfx	r1, r1, #1, #1
ARM GAS  /tmp/ccx5mP1m.s 			page 135


 7639 008e 61F34106 		bfi	r6, r1, #1, #1
 7640 0092 1E76     		strb	r6, [r3, #24]
 7641 0094 5268     		ldr	r2, [r2, #4]	@ float
 7642 0096 5A60     		str	r2, [r3, #4]	@ float
 7643 0098 EBD1     		bne	.L1510
 7644 009a 0023     		movs	r3, #0
 7645 009c 85F88030 		strb	r3, [r5, #128]
 7646              	.L1509:
 7647 00a0 2046     		mov	r0, r4
 7648 00a2 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 7649 00a6 0028     		cmp	r0, #0
 7650 00a8 37D0     		beq	.L1538
 7651              	.L1511:
 7652 00aa 2046     		mov	r0, r4
 7653 00ac FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7654 00b0 A368     		ldr	r3, [r4, #8]
 7655 00b2 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 7656 00b4 DBB9     		cbnz	r3, .L1499
 7657 00b6 2146     		mov	r1, r4
 7658 00b8 2846     		mov	r0, r5
 7659 00ba FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7660 00be 284B     		ldr	r3, .L1539
 7661 00c0 0122     		movs	r2, #1
 7662 00c2 2146     		mov	r1, r4
 7663 00c4 2846     		mov	r0, r5
 7664 00c6 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 7665 00ca 95F87F30 		ldrb	r3, [r5, #127]	@ zero_extendqisi2
 7666 00ce 73B1     		cbz	r3, .L1499
 7667 00d0 2B6C     		ldr	r3, [r5, #64]
 7668 00d2 1B68     		ldr	r3, [r3]
 7669 00d4 9C42     		cmp	r4, r3
 7670 00d6 0AD1     		bne	.L1499
 7671 00d8 2046     		mov	r0, r4
 7672 00da FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 7673 00de 0646     		mov	r6, r0
 7674 00e0 28B9     		cbnz	r0, .L1499
 7675 00e2 2046     		mov	r0, r4
 7676 00e4 1F49     		ldr	r1, .L1539+4
 7677 00e6 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 7678 00ea 85F87F60 		strb	r6, [r5, #127]
 7679              	.L1499:
 7680 00ee 02B0     		add	sp, sp, #8
 7681              		@ sp needed
 7682 00f0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7683              	.L1502:
 7684 00f4 E868     		ldr	r0, [r5, #12]
 7685 00f6 2146     		mov	r1, r4
 7686 00f8 0368     		ldr	r3, [r0]
 7687 00fa 5B68     		ldr	r3, [r3, #4]
 7688 00fc 9847     		blx	r3
 7689 00fe 0028     		cmp	r0, #0
 7690 0100 F5D0     		beq	.L1499
 7691              	.L1536:
 7692 0102 2146     		mov	r1, r4
 7693 0104 4246     		mov	r2, r8
 7694 0106 2846     		mov	r0, r5
 7695 0108 FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
ARM GAS  /tmp/ccx5mP1m.s 			page 136


 7696 010c 0146     		mov	r1, r0
 7697 010e 2046     		mov	r0, r4
 7698 0110 02B0     		add	sp, sp, #8
 7699              		@ sp needed
 7700 0112 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7701 0116 FFF7FEBF 		b	_ZN11GCodeBuffer11SetFinishedEb
 7702              	.L1538:
 7703 011a 134A     		ldr	r2, .L1539+8
 7704 011c 40F2B511 		movw	r1, #437
 7705 0120 2868     		ldr	r0, [r5]
 7706 0122 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7707 0126 C0E7     		b	.L1511
 7708              	.L1537:
 7709 0128 2146     		mov	r1, r4
 7710 012a 2846     		mov	r0, r5
 7711 012c 0193     		str	r3, [sp, #4]
 7712 012e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7713 0132 0028     		cmp	r0, #0
 7714 0134 DBD0     		beq	.L1499
 7715 0136 2A6D     		ldr	r2, [r5, #80]
 7716 0138 1268     		ldr	r2, [r2]
 7717 013a 92F82820 		ldrb	r2, [r2, #40]	@ zero_extendqisi2
 7718 013e 083A     		subs	r2, r2, #8
 7719 0140 012A     		cmp	r2, #1
 7720 0142 D4D9     		bls	.L1499
 7721 0144 D5F8D003 		ldr	r0, [r5, #976]
 7722 0148 FFF7FEFF 		bl	_ZNK10GCodeQueue6IsIdleEv
 7723 014c 0028     		cmp	r0, #0
 7724 014e CED0     		beq	.L1499
 7725 0150 019B     		ldr	r3, [sp, #4]
 7726 0152 2846     		mov	r0, r5
 7727 0154 1946     		mov	r1, r3
 7728 0156 02B0     		add	sp, sp, #8
 7729              		@ sp needed
 7730 0158 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7731 015c FFF7FEBF 		b	_ZN6GCodes9StopPrintE15StopPrintReason
 7732              	.L1540:
 7733              		.align	2
 7734              	.L1539:
 7735 0160 24000000 		.word	.LC79
 7736 0164 00000000 		.word	.LC135
 7737 0168 00000000 		.word	.LC42
 7738              		.size	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef, .-_ZN6GCodes11DoFilePrintER11GCodeBuffer
 7739              		.section	.text._ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef,"ax",%progbits
 7740              		.align	1
 7741              		.p2align 2,,3
 7742              		.global	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef
 7743              		.syntax unified
 7744              		.thumb
 7745              		.thumb_func
 7746              		.fpu softvfp
 7747              		.type	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef, %function
 7748              	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef:
 7749              		@ args = 0, pretend = 0, frame = 0
 7750              		@ frame_needed = 0, uses_anonymous_args = 0
 7751 0000 70B5     		push	{r4, r5, r6, lr}
 7752 0002 0C46     		mov	r4, r1
ARM GAS  /tmp/ccx5mP1m.s 			page 137


 7753 0004 1646     		mov	r6, r2
 7754 0006 0546     		mov	r5, r0
 7755 0008 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 7756 000c 18B1     		cbz	r0, .L1542
 7757 000e 2B6C     		ldr	r3, [r5, #64]
 7758 0010 1968     		ldr	r1, [r3]
 7759 0012 A142     		cmp	r1, r4
 7760 0014 23D0     		beq	.L1568
 7761              	.L1542:
 7762 0016 94F82830 		ldrb	r3, [r4, #40]	@ zero_extendqisi2
 7763 001a 083B     		subs	r3, r3, #8
 7764 001c 012B     		cmp	r3, #1
 7765 001e 23D9     		bls	.L1569
 7766 0020 A368     		ldr	r3, [r4, #8]
 7767 0022 9B68     		ldr	r3, [r3, #8]
 7768 0024 33B1     		cbz	r3, .L1570
 7769 0026 3246     		mov	r2, r6
 7770 0028 2146     		mov	r1, r4
 7771 002a 2846     		mov	r0, r5
 7772 002c BDE87040 		pop	{r4, r5, r6, lr}
 7773 0030 FFF7FEBF 		b	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef
 7774              	.L1570:
 7775 0034 2B6D     		ldr	r3, [r5, #80]
 7776 0036 1B68     		ldr	r3, [r3]
 7777 0038 9C42     		cmp	r4, r3
 7778 003a 2CD0     		beq	.L1571
 7779 003c AB6B     		ldr	r3, [r5, #56]
 7780 003e 1B68     		ldr	r3, [r3]
 7781 0040 9C42     		cmp	r4, r3
 7782 0042 2FD0     		beq	.L1572
 7783 0044 EB6B     		ldr	r3, [r5, #60]
 7784 0046 1B68     		ldr	r3, [r3]
 7785 0048 9C42     		cmp	r4, r3
 7786 004a 32D0     		beq	.L1573
 7787 004c 6B6C     		ldr	r3, [r5, #68]
 7788 004e 1B68     		ldr	r3, [r3]
 7789 0050 9C42     		cmp	r4, r3
 7790 0052 30D0     		beq	.L1574
 7791 0054 AB6C     		ldr	r3, [r5, #72]
 7792 0056 1B68     		ldr	r3, [r3]
 7793 0058 9C42     		cmp	r4, r3
 7794 005a 10D0     		beq	.L1575
 7795              	.L1541:
 7796 005c 70BD     		pop	{r4, r5, r6, pc}
 7797              	.L1568:
 7798 005e 2846     		mov	r0, r5
 7799 0060 BDE87040 		pop	{r4, r5, r6, lr}
 7800 0064 FFF7FEBF 		b	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7801              	.L1569:
 7802 0068 2146     		mov	r1, r4
 7803 006a 3246     		mov	r2, r6
 7804 006c 2846     		mov	r0, r5
 7805 006e FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
 7806 0072 0146     		mov	r1, r0
 7807 0074 2046     		mov	r0, r4
 7808 0076 BDE87040 		pop	{r4, r5, r6, lr}
 7809 007a FFF7FEBF 		b	_ZN11GCodeBuffer11SetFinishedEb
ARM GAS  /tmp/ccx5mP1m.s 			page 138


 7810              	.L1575:
 7811 007e 6869     		ldr	r0, [r5, #20]
 7812 0080 2146     		mov	r1, r4
 7813 0082 0368     		ldr	r3, [r0]
 7814 0084 5B68     		ldr	r3, [r3, #4]
 7815 0086 9847     		blx	r3
 7816 0088 0028     		cmp	r0, #0
 7817 008a E7D0     		beq	.L1541
 7818 008c 0122     		movs	r2, #1
 7819 008e 2B68     		ldr	r3, [r5]
 7820 0090 83F84C25 		strb	r2, [r3, #1356]
 7821 0094 70BD     		pop	{r4, r5, r6, pc}
 7822              	.L1571:
 7823 0096 2146     		mov	r1, r4
 7824 0098 D5F8D003 		ldr	r0, [r5, #976]
 7825 009c BDE87040 		pop	{r4, r5, r6, lr}
 7826 00a0 FFF7FEBF 		b	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 7827              	.L1572:
 7828 00a4 6868     		ldr	r0, [r5, #4]
 7829              	.L1564:
 7830 00a6 0368     		ldr	r3, [r0]
 7831 00a8 2146     		mov	r1, r4
 7832 00aa BDE87040 		pop	{r4, r5, r6, lr}
 7833 00ae 5B68     		ldr	r3, [r3, #4]
 7834 00b0 1847     		bx	r3
 7835              	.L1573:
 7836 00b2 A868     		ldr	r0, [r5, #8]
 7837 00b4 F7E7     		b	.L1564
 7838              	.L1574:
 7839 00b6 2869     		ldr	r0, [r5, #16]
 7840 00b8 F5E7     		b	.L1564
 7841              		.size	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes14StartNextGCodeER11GCode
 7842 00ba 00BF     		.section	.text._ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc,"ax",%progbits
 7843              		.align	1
 7844              		.p2align 2,,3
 7845              		.global	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 7846              		.syntax unified
 7847              		.thumb
 7848              		.thumb_func
 7849              		.fpu softvfp
 7850              		.type	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc, %function
 7851              	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc:
 7852              		@ args = 0, pretend = 0, frame = 0
 7853              		@ frame_needed = 0, uses_anonymous_args = 0
 7854 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 7855 0004 026C     		ldr	r2, [r0, #64]
 7856 0006 1E46     		mov	r6, r3
 7857 0008 1368     		ldr	r3, [r2]
 7858 000a 85B0     		sub	sp, sp, #20
 7859 000c 8B42     		cmp	r3, r1
 7860 000e 0446     		mov	r4, r0
 7861 0010 0D46     		mov	r5, r1
 7862 0012 00F0CC80 		beq	.L1602
 7863 0016 9B68     		ldr	r3, [r3, #8]
 7864 0018 D0F8F011 		ldr	r1, [r0, #496]
 7865 001c 5B68     		ldr	r3, [r3, #4]	@ float
 7866 001e 844F     		ldr	r7, .L1606
ARM GAS  /tmp/ccx5mP1m.s 			page 139


 7867 0020 8B61     		str	r3, [r1, #24]	@ float
 7868 0022 B868     		ldr	r0, [r7, #8]
 7869 0024 FFF7FEFF 		bl	_ZN4Move10PausePrintER12RestorePoint
 7870 0028 8046     		mov	r8, r0
 7871 002a 0028     		cmp	r0, #0
 7872 002c 40F0A380 		bne	.L1603
 7873 0030 D4F8FC00 		ldr	r0, [r4, #252]
 7874 0034 0028     		cmp	r0, #0
 7875 0036 00F0D580 		beq	.L1584
 7876 003a D4F8F091 		ldr	r9, [r4, #496]
 7877 003e D4F8E020 		ldr	r2, [r4, #224]	@ float
 7878 0042 D4F8E430 		ldr	r3, [r4, #228]
 7879 0046 D4F800A1 		ldr	r10, [r4, #256]
 7880 004a C9F81C20 		str	r2, [r9, #28]	@ float
 7881 004e D4F8DC20 		ldr	r2, [r4, #220]	@ float
 7882 0052 AAEB0000 		sub	r0, r10, r0
 7883 0056 C9F82430 		str	r3, [r9, #36]
 7884 005a C9F81820 		str	r2, [r9, #24]	@ float
 7885 005e FFF7FEFF 		bl	__aeabi_ui2f
 7886 0062 8346     		mov	fp, r0
 7887 0064 5046     		mov	r0, r10
 7888 0066 FFF7FEFF 		bl	__aeabi_ui2f
 7889 006a 0146     		mov	r1, r0
 7890 006c 5846     		mov	r0, fp
 7891 006e FFF7FEFF 		bl	__aeabi_fdiv
 7892 0072 04F18402 		add	r2, r4, #132
 7893 0076 C9F82000 		str	r0, [r9, #32]	@ float
 7894 007a 4946     		mov	r1, r9
 7895 007c 2046     		mov	r0, r4
 7896 007e FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 7897 0082 0022     		movs	r2, #0
 7898 0084 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 7899 0088 C4F8FC80 		str	r8, [r4, #252]
 7900 008c 68F30003 		bfi	r3, r8, #0, #1
 7901 0090 84F83981 		strb	r8, [r4, #313]
 7902 0094 84F83881 		strb	r8, [r4, #312]
 7903 0098 C4F8F480 		str	r8, [r4, #244]
 7904 009c 84F8F880 		strb	r8, [r4, #248]
 7905 00a0 84F8F930 		strb	r3, [r4, #249]
 7906 00a4 C4F80C21 		str	r2, [r4, #268]	@ float
 7907              	.L1583:
 7908 00a8 D4F8FC01 		ldr	r0, [r4, #508]
 7909 00ac 58B1     		cbz	r0, .L1588
 7910 00ae D4F8F031 		ldr	r3, [r4, #496]
 7911 00b2 04F18402 		add	r2, r4, #132
 7912 00b6 03EB8000 		add	r0, r3, r0, lsl #2
 7913              	.L1589:
 7914 00ba 52F8041B 		ldr	r1, [r2], #4	@ float
 7915 00be 43F8041B 		str	r1, [r3], #4	@ float
 7916 00c2 8342     		cmp	r3, r0
 7917 00c4 F9D1     		bne	.L1589
 7918              	.L1588:
 7919 00c6 236C     		ldr	r3, [r4, #64]
 7920 00c8 1B68     		ldr	r3, [r3]
 7921 00ca D3F80880 		ldr	r8, [r3, #8]
 7922 00ce D8F80830 		ldr	r3, [r8, #8]
 7923 00d2 CBB1     		cbz	r3, .L1587
ARM GAS  /tmp/ccx5mP1m.s 			page 140


 7924 00d4 D4F8F031 		ldr	r3, [r4, #496]
 7925 00d8 5B6A     		ldr	r3, [r3, #36]
 7926 00da 0133     		adds	r3, r3, #1
 7927 00dc 14D0     		beq	.L1587
 7928 00de 08F10801 		add	r1, r8, #8
 7929 00e2 E068     		ldr	r0, [r4, #12]
 7930 00e4 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 7931 00e8 D4F8F031 		ldr	r3, [r4, #496]
 7932 00ec D8F80800 		ldr	r0, [r8, #8]
 7933 00f0 596A     		ldr	r1, [r3, #36]
 7934 00f2 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 7935 00f6 236C     		ldr	r3, [r4, #64]
 7936 00f8 1868     		ldr	r0, [r3]
 7937 00fa FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7938 00fe 236C     		ldr	r3, [r4, #64]
 7939 0100 2046     		mov	r0, r4
 7940 0102 1968     		ldr	r1, [r3]
 7941 0104 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7942              	.L1587:
 7943 0108 D4F8D003 		ldr	r0, [r4, #976]
 7944 010c FFF7FEFF 		bl	_ZN10GCodeQueue12PurgeEntriesEv
 7945 0110 7B6C     		ldr	r3, [r7, #68]
 7946 0112 1B07     		lsls	r3, r3, #28
 7947 0114 00F18280 		bmi	.L1604
 7948              	.L1579:
 7949 0118 0021     		movs	r1, #0
 7950 011a 2068     		ldr	r0, [r4]
 7951 011c FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 7952 0120 0121     		movs	r1, #1
 7953 0122 C4F88402 		str	r0, [r4, #644]	@ float
 7954 0126 2068     		ldr	r0, [r4]
 7955 0128 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 7956 012c D4F88C32 		ldr	r3, [r4, #652]	@ float
 7957 0130 C4F88802 		str	r0, [r4, #648]	@ float
 7958 0134 C4F89032 		str	r3, [r4, #656]	@ float
 7959 0138 3D48     		ldr	r0, .L1606
 7960 013a D4F8F071 		ldr	r7, [r4, #496]
 7961 013e FFF7FEFF 		bl	_ZNK6RepRap20GetCurrentToolNumberEv
 7962 0142 B862     		str	r0, [r7, #40]
 7963 0144 94F83013 		ldrb	r1, [r4, #816]	@ zero_extendqisi2
 7964 0148 0029     		cmp	r1, #0
 7965 014a 47D0     		beq	.L1605
 7966              	.L1591:
 7967 014c 0F21     		movs	r1, #15
 7968 014e 0123     		movs	r3, #1
 7969 0150 AA68     		ldr	r2, [r5, #8]
 7970 0152 1175     		strb	r1, [r2, #20]
 7971 0154 84F87E30 		strb	r3, [r4, #126]
 7972 0158 56B1     		cbz	r6, .L1576
 7973 015a 0021     		movs	r1, #0
 7974 015c 0025     		movs	r5, #0
 7975 015e 2068     		ldr	r0, [r4]
 7976 0160 3246     		mov	r2, r6
 7977 0162 0093     		str	r3, [sp]
 7978 0164 0191     		str	r1, [sp, #4]	@ float
 7979 0166 0295     		str	r5, [sp, #8]
 7980 0168 324B     		ldr	r3, .L1606+4
ARM GAS  /tmp/ccx5mP1m.s 			page 141


 7981 016a 3521     		movs	r1, #53
 7982 016c FFF7FEFF 		bl	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 7983              	.L1576:
 7984 0170 05B0     		add	sp, sp, #20
 7985              		@ sp needed
 7986 0172 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 7987              	.L1603:
 7988 0176 04F18402 		add	r2, r4, #132
 7989 017a D4F8F011 		ldr	r1, [r4, #496]
 7990 017e 2046     		mov	r0, r4
 7991 0180 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 7992 0184 0023     		movs	r3, #0
 7993 0186 0021     		movs	r1, #0
 7994 0188 94F8F920 		ldrb	r2, [r4, #249]	@ zero_extendqisi2
 7995 018c C4F8FC30 		str	r3, [r4, #252]
 7996 0190 63F30002 		bfi	r2, r3, #0, #1
 7997 0194 84F83931 		strb	r3, [r4, #313]
 7998 0198 84F83831 		strb	r3, [r4, #312]
 7999 019c C4F8F430 		str	r3, [r4, #244]
 8000 01a0 84F8F830 		strb	r3, [r4, #248]
 8001 01a4 84F8F920 		strb	r2, [r4, #249]
 8002 01a8 C4F80C11 		str	r1, [r4, #268]	@ float
 8003 01ac 7CE7     		b	.L1583
 8004              	.L1602:
 8005 01ae D0F8FC01 		ldr	r0, [r0, #508]
 8006 01b2 D4F8F071 		ldr	r7, [r4, #496]
 8007 01b6 50B1     		cbz	r0, .L1580
 8008 01b8 3B46     		mov	r3, r7
 8009 01ba 07EB8000 		add	r0, r7, r0, lsl #2
 8010 01be 04F18402 		add	r2, r4, #132
 8011              	.L1581:
 8012 01c2 52F8041B 		ldr	r1, [r2], #4	@ float
 8013 01c6 43F8041B 		str	r1, [r3], #4	@ float
 8014 01ca 8342     		cmp	r3, r0
 8015 01cc F9D1     		bne	.L1581
 8016              	.L1580:
 8017 01ce AB68     		ldr	r3, [r5, #8]
 8018 01d0 D4F81C22 		ldr	r2, [r4, #540]	@ float
 8019 01d4 5B68     		ldr	r3, [r3, #4]	@ float
 8020 01d6 FA61     		str	r2, [r7, #28]	@ float
 8021 01d8 BB61     		str	r3, [r7, #24]	@ float
 8022 01da 9DE7     		b	.L1579
 8023              	.L1605:
 8024 01dc 2046     		mov	r0, r4
 8025 01de FFF7FEFF 		bl	_ZN6GCodes14SaveResumeInfoEb
 8026 01e2 B3E7     		b	.L1591
 8027              	.L1584:
 8028 01e4 236C     		ldr	r3, [r4, #64]
 8029 01e6 D4F8F081 		ldr	r8, [r4, #496]
 8030 01ea D3F80090 		ldr	r9, [r3]
 8031 01ee D4F81C22 		ldr	r2, [r4, #540]	@ float
 8032 01f2 D9F80830 		ldr	r3, [r9, #8]
 8033 01f6 E068     		ldr	r0, [r4, #12]
 8034 01f8 5B68     		ldr	r3, [r3, #4]	@ float
 8035 01fa C8F81C20 		str	r2, [r8, #28]	@ float
 8036 01fe 0022     		movs	r2, #0
 8037 0200 C8F81830 		str	r3, [r8, #24]	@ float
ARM GAS  /tmp/ccx5mP1m.s 			page 142


 8038 0204 0368     		ldr	r3, [r0]
 8039 0206 C8F82020 		str	r2, [r8, #32]	@ float
 8040 020a 9B68     		ldr	r3, [r3, #8]
 8041 020c 9847     		blx	r3
 8042 020e 0146     		mov	r1, r0
 8043 0210 4846     		mov	r0, r9
 8044 0212 FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 8045 0216 C8F82400 		str	r0, [r8, #36]
 8046 021a 45E7     		b	.L1583
 8047              	.L1604:
 8048 021c D4F8F031 		ldr	r3, [r4, #496]
 8049 0220 054A     		ldr	r2, .L1606+8
 8050 0222 5B6A     		ldr	r3, [r3, #36]
 8051 0224 3521     		movs	r1, #53
 8052 0226 2068     		ldr	r0, [r4]
 8053 0228 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8054 022c 74E7     		b	.L1579
 8055              	.L1607:
 8056 022e 00BF     		.align	2
 8057              	.L1606:
 8058 0230 00000000 		.word	reprap
 8059 0234 20000000 		.word	.LC137
 8060 0238 00000000 		.word	.LC136
 8061              		.size	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc, .-_ZN6GCodes7DoPauseER11GCodeBuffer11Paus
 8062              		.section	.text.hot._ZN6GCodes14DoStraightMoveER11GCodeBufferb,"ax",%progbits
 8063              		.align	1
 8064              		.p2align 2,,3
 8065              		.global	_ZN6GCodes14DoStraightMoveER11GCodeBufferb
 8066              		.syntax unified
 8067              		.thumb
 8068              		.thumb_func
 8069              		.fpu softvfp
 8070              		.type	_ZN6GCodes14DoStraightMoveER11GCodeBufferb, %function
 8071              	_ZN6GCodes14DoStraightMoveER11GCodeBufferb:
 8072              		@ args = 0, pretend = 0, frame = 16
 8073              		@ frame_needed = 0, uses_anonymous_args = 0
 8074 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 8075 0004 0025     		movs	r5, #0
 8076 0006 90F8F930 		ldrb	r3, [r0, #249]	@ zero_extendqisi2
 8077 000a 0446     		mov	r4, r0
 8078 000c 62F30413 		bfi	r3, r2, #4, #1
 8079 0010 87B0     		sub	sp, sp, #28
 8080 0012 80F8F930 		strb	r3, [r0, #249]
 8081 0016 C0F8F450 		str	r5, [r0, #244]
 8082 001a 80F8F850 		strb	r5, [r0, #248]
 8083 001e C548     		ldr	r0, .L1694
 8084 0020 0E46     		mov	r6, r1
 8085 0022 0392     		str	r2, [sp, #12]
 8086 0024 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 8087 0028 C4F8EC00 		str	r0, [r4, #236]
 8088 002c C148     		ldr	r0, .L1694
 8089 002e FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 8090 0032 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 8091 0036 C4F8F000 		str	r0, [r4, #240]
 8092 003a 65F34103 		bfi	r3, r5, #1, #1
 8093 003e C4F85854 		str	r5, [r4, #1112]
 8094 0042 84F8F930 		strb	r3, [r4, #249]
ARM GAS  /tmp/ccx5mP1m.s 			page 143


 8095 0046 3046     		mov	r0, r6
 8096 0048 5321     		movs	r1, #83
 8097 004a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8098 004e 0028     		cmp	r0, #0
 8099 0050 40F04481 		bne	.L1683
 8100              	.L1677:
 8101 0054 94F8F870 		ldrb	r7, [r4, #248]	@ zero_extendqisi2
 8102              	.L1610:
 8103 0058 002F     		cmp	r7, #0
 8104 005a 00F02681 		beq	.L1684
 8105 005e 4FF00009 		mov	r9, #0
 8106              	.L1612:
 8107 0062 B44D     		ldr	r5, .L1694
 8108 0064 04F1A003 		add	r3, r4, #160
 8109 0068 2846     		mov	r0, r5
 8110 006a 0293     		str	r3, [sp, #8]
 8111 006c D5F80880 		ldr	r8, [r5, #8]
 8112 0070 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 8113 0074 8246     		mov	r10, r0
 8114 0076 2846     		mov	r0, r5
 8115 0078 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 8116 007c 5346     		mov	r3, r10
 8117 007e 0090     		str	r0, [sp]
 8118 0080 3A46     		mov	r2, r7
 8119 0082 4046     		mov	r0, r8
 8120 0084 0299     		ldr	r1, [sp, #8]
 8121 0086 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 8122              	.L1616:
 8123 008a D4F8FC21 		ldr	r2, [r4, #508]
 8124 008e 0299     		ldr	r1, [sp, #8]
 8125 0090 9200     		lsls	r2, r2, #2
 8126 0092 04F1C400 		add	r0, r4, #196
 8127 0096 FFF7FEFF 		bl	memcpy
 8128 009a D4F88420 		ldr	r2, [r4, #132]	@ float
 8129 009e D4F8FC31 		ldr	r3, [r4, #508]
 8130 00a2 0492     		str	r2, [sp, #16]	@ float
 8131 00a4 D4F88820 		ldr	r2, [r4, #136]	@ float
 8132 00a8 0592     		str	r2, [sp, #20]	@ float
 8133 00aa 002B     		cmp	r3, #0
 8134 00ac 00F0A681 		beq	.L1652
 8135 00b0 4FF00008 		mov	r8, #0
 8136 00b4 4FF0010A 		mov	r10, #1
 8137 00b8 C346     		mov	fp, r8
 8138 00ba 04F27227 		addw	r7, r4, #626
 8139 00be 04F18405 		add	r5, r4, #132
 8140 00c2 11E0     		b	.L1624
 8141              	.L1646:
 8142 00c4 B368     		ldr	r3, [r6, #8]
 8143 00c6 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 8144 00c8 9907     		lsls	r1, r3, #30
 8145 00ca 40F1CD80 		bpl	.L1621
 8146 00ce 0146     		mov	r1, r0
 8147 00d0 E869     		ldr	r0, [r5, #28]	@ float
 8148 00d2 FFF7FEFF 		bl	__aeabi_fadd
 8149 00d6 E861     		str	r0, [r5, #28]	@ float
 8150              	.L1618:
 8151 00d8 D4F8FC31 		ldr	r3, [r4, #508]
ARM GAS  /tmp/ccx5mP1m.s 			page 144


 8152 00dc 0BF1010B 		add	fp, fp, #1
 8153 00e0 5B45     		cmp	r3, fp
 8154 00e2 05F10405 		add	r5, r5, #4
 8155 00e6 36D9     		bls	.L1617
 8156              	.L1624:
 8157 00e8 17F8011B 		ldrb	r1, [r7], #1	@ zero_extendqisi2
 8158 00ec 3046     		mov	r0, r6
 8159 00ee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8160 00f2 0028     		cmp	r0, #0
 8161 00f4 F0D0     		beq	.L1618
 8162 00f6 94F8F830 		ldrb	r3, [r4, #248]	@ zero_extendqisi2
 8163 00fa 5BB1     		cbz	r3, .L1619
 8164 00fc B368     		ldr	r3, [r6, #8]
 8165 00fe 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 8166 0100 9807     		lsls	r0, r3, #30
 8167 0102 07D4     		bmi	.L1619
 8168 0104 8B4B     		ldr	r3, .L1694
 8169 0106 9B68     		ldr	r3, [r3, #8]
 8170 0108 D3F8FC34 		ldr	r3, [r3, #1276]
 8171 010c 9B7B     		ldrb	r3, [r3, #14]	@ zero_extendqisi2
 8172 010e 032B     		cmp	r3, #3
 8173 0110 00F00C81 		beq	.L1685
 8174              	.L1619:
 8175 0114 0AFA0BF3 		lsl	r3, r10, fp
 8176 0118 3046     		mov	r0, r6
 8177 011a 48EA0308 		orr	r8, r8, r3
 8178 011e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8179 0122 D4F83C12 		ldr	r1, [r4, #572]	@ float
 8180 0126 FFF7FEFF 		bl	__aeabi_fmul
 8181 012a 94F8F830 		ldrb	r3, [r4, #248]	@ zero_extendqisi2
 8182 012e 002B     		cmp	r3, #0
 8183 0130 C8D1     		bne	.L1646
 8184 0132 B9F1000F 		cmp	r9, #0
 8185 0136 00F0AE80 		beq	.L1622
 8186 013a 0146     		mov	r1, r0
 8187 013c 59F82B00 		ldr	r0, [r9, fp, lsl #2]	@ float
 8188 0140 FFF7FEFF 		bl	__aeabi_fadd
 8189 0144 D4F8FC31 		ldr	r3, [r4, #508]
 8190 0148 0BF1010B 		add	fp, fp, #1
 8191 014c 5B45     		cmp	r3, fp
 8192 014e 2860     		str	r0, [r5]	@ float
 8193 0150 05F10405 		add	r5, r5, #4
 8194 0154 C8D8     		bhi	.L1624
 8195              	.L1617:
 8196 0156 94F8F830 		ldrb	r3, [r4, #248]	@ zero_extendqisi2
 8197 015a 002B     		cmp	r3, #0
 8198 015c 40F08680 		bne	.L1625
 8199 0160 94F82833 		ldrb	r3, [r4, #808]	@ zero_extendqisi2
 8200 0164 002B     		cmp	r3, #0
 8201 0166 00F01881 		beq	.L1686
 8202              	.L1627:
 8203 016a 3146     		mov	r1, r6
 8204 016c 2046     		mov	r0, r4
 8205 016e FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer
 8206 0172 94F8F830 		ldrb	r3, [r4, #248]	@ zero_extendqisi2
 8207 0176 002B     		cmp	r3, #0
 8208 0178 40F03A81 		bne	.L1687
ARM GAS  /tmp/ccx5mP1m.s 			page 145


 8209 017c B8F1000F 		cmp	r8, #0
 8210 0180 00F0DE80 		beq	.L1650
 8211 0184 04F18407 		add	r7, r4, #132
 8212 0188 4346     		mov	r3, r8
 8213 018a 029A     		ldr	r2, [sp, #8]
 8214 018c 3946     		mov	r1, r7
 8215 018e 2046     		mov	r0, r4
 8216 0190 FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 8217 0194 94F82823 		ldrb	r2, [r4, #808]	@ zero_extendqisi2
 8218 0198 D4F88032 		ldr	r3, [r4, #640]
 8219 019c 002A     		cmp	r2, #0
 8220 019e 40F0B080 		bne	.L1688
 8221              	.L1636:
 8222 01a2 94F87922 		ldrb	r2, [r4, #633]	@ zero_extendqisi2
 8223 01a6 634D     		ldr	r5, .L1694
 8224 01a8 002A     		cmp	r2, #0
 8225 01aa 40F0DB80 		bne	.L1689
 8226              	.L1638:
 8227 01ae 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 8228 01b2 13F00803 		ands	r3, r3, #8
 8229 01b6 40F01581 		bne	.L1690
 8230              	.L1641:
 8231 01ba AD68     		ldr	r5, [r5, #8]
 8232 01bc 94F8F920 		ldrb	r2, [r4, #249]	@ zero_extendqisi2
 8233 01c0 D5F8FC74 		ldr	r7, [r5, #1276]
 8234 01c4 63F34102 		bfi	r2, r3, #1, #1
 8235 01c8 3B7B     		ldrb	r3, [r7, #12]	@ zero_extendqisi2
 8236 01ca 84F8F920 		strb	r2, [r4, #249]
 8237 01ce 002B     		cmp	r3, #0
 8238 01d0 00F01681 		beq	.L1642
 8239 01d4 94F83033 		ldrb	r3, [r4, #816]	@ zero_extendqisi2
 8240 01d8 012B     		cmp	r3, #1
 8241 01da 00F01181 		beq	.L1642
 8242 01de D3B2     		uxtb	r3, r2
 8243 01e0 1B07     		lsls	r3, r3, #28
 8244 01e2 05D4     		bmi	.L1643
 8245 01e4 039B     		ldr	r3, [sp, #12]
 8246 01e6 1BB9     		cbnz	r3, .L1643
 8247 01e8 7B7B     		ldrb	r3, [r7, #13]	@ zero_extendqisi2
 8248 01ea 002B     		cmp	r3, #0
 8249 01ec 40F00881 		bne	.L1642
 8250              	.L1643:
 8251 01f0 0499     		ldr	r1, [sp, #16]	@ float
 8252 01f2 D4F88400 		ldr	r0, [r4, #132]	@ float
 8253 01f6 FFF7FEFF 		bl	__aeabi_fsub
 8254 01fa 0599     		ldr	r1, [sp, #20]	@ float
 8255 01fc 8046     		mov	r8, r0
 8256 01fe D4F88800 		ldr	r0, [r4, #136]	@ float
 8257 0202 FFF7FEFF 		bl	__aeabi_fsub
 8258 0206 0146     		mov	r1, r0
 8259 0208 FFF7FEFF 		bl	__aeabi_fmul
 8260 020c 4146     		mov	r1, r8
 8261 020e 0546     		mov	r5, r0
 8262 0210 4046     		mov	r0, r8
 8263 0212 FFF7FEFF 		bl	__aeabi_fmul
 8264 0216 0146     		mov	r1, r0
 8265 0218 2846     		mov	r0, r5
ARM GAS  /tmp/ccx5mP1m.s 			page 146


 8266 021a FFF7FEFF 		bl	__aeabi_fadd
 8267 021e FFF7FEFF 		bl	sqrtf
 8268 0222 B968     		ldr	r1, [r7, #8]	@ float
 8269 0224 8046     		mov	r8, r0
 8270 0226 FFF7FEFF 		bl	__aeabi_fdiv
 8271 022a FFF7FEFF 		bl	rintf
 8272 022e D4F8DC10 		ldr	r1, [r4, #220]	@ float
 8273 0232 0546     		mov	r5, r0
 8274 0234 4046     		mov	r0, r8
 8275 0236 FFF7FEFF 		bl	__aeabi_fdiv
 8276 023a 7968     		ldr	r1, [r7, #4]	@ float
 8277 023c FFF7FEFF 		bl	__aeabi_fmul
 8278 0240 FFF7FEFF 		bl	rintf
 8279 0244 0746     		mov	r7, r0
 8280 0246 2846     		mov	r0, r5
 8281 0248 FFF7FEFF 		bl	__aeabi_f2iz
 8282 024c 0546     		mov	r5, r0
 8283 024e 3846     		mov	r0, r7
 8284 0250 FFF7FEFF 		bl	__aeabi_f2iz
 8285 0254 8542     		cmp	r5, r0
 8286 0256 2B46     		mov	r3, r5
 8287 0258 A8BF     		it	ge
 8288 025a 0346     		movge	r3, r0
 8289 025c 012B     		cmp	r3, #1
 8290 025e B8BF     		it	lt
 8291 0260 0123     		movlt	r3, #1
 8292 0262 C4F80031 		str	r3, [r4, #256]
 8293 0266 6EE0     		b	.L1634
 8294              	.L1621:
 8295 0268 E861     		str	r0, [r5, #28]	@ float
 8296 026a 35E7     		b	.L1618
 8297              	.L1625:
 8298 026c 012B     		cmp	r3, #1
 8299 026e 00F0AB80 		beq	.L1631
 8300 0272 032B     		cmp	r3, #3
 8301 0274 7FF479AF 		bne	.L1627
 8302 0278 0123     		movs	r3, #1
 8303 027a D4F8F811 		ldr	r1, [r4, #504]
 8304 027e D4F8F420 		ldr	r2, [r4, #244]
 8305 0282 8B40     		lsls	r3, r3, r1
 8306 0284 013B     		subs	r3, r3, #1
 8307 0286 03EA0803 		and	r3, r3, r8
 8308 028a 1343     		orrs	r3, r3, r2
 8309 028c C4F8F430 		str	r3, [r4, #244]
 8310 0290 C4F85834 		str	r3, [r4, #1112]
 8311 0294 69E7     		b	.L1627
 8312              	.L1622:
 8313 0296 B368     		ldr	r3, [r6, #8]
 8314 0298 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 8315 029a 9A07     		lsls	r2, r3, #30
 8316 029c 2FD5     		bpl	.L1623
 8317 029e 0146     		mov	r1, r0
 8318 02a0 2868     		ldr	r0, [r5]	@ float
 8319 02a2 FFF7FEFF 		bl	__aeabi_fadd
 8320 02a6 2860     		str	r0, [r5]	@ float
 8321 02a8 16E7     		b	.L1618
 8322              	.L1684:
ARM GAS  /tmp/ccx5mP1m.s 			page 147


 8323 02aa 5221     		movs	r1, #82
 8324 02ac 3046     		mov	r0, r6
 8325 02ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8326 02b2 48B3     		cbz	r0, .L1691
 8327 02b4 3046     		mov	r0, r6
 8328 02b6 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8329 02ba 0228     		cmp	r0, #2
 8330 02bc 32D8     		bhi	.L1692
 8331 02be 4FF02C09 		mov	r9, #44
 8332 02c2 09FB0040 		mla	r0, r9, r0, r4
 8333 02c6 00F5B679 		add	r9, r0, #364
 8334              	.L1615:
 8335 02ca 94F8F870 		ldrb	r7, [r4, #248]	@ zero_extendqisi2
 8336 02ce 002F     		cmp	r7, #0
 8337 02d0 7FF4C7AE 		bne	.L1612
 8338 02d4 04F1A003 		add	r3, r4, #160
 8339 02d8 0293     		str	r3, [sp, #8]
 8340 02da D6E6     		b	.L1616
 8341              	.L1683:
 8342 02dc 3046     		mov	r0, r6
 8343 02de FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8344 02e2 431E     		subs	r3, r0, #1
 8345 02e4 022B     		cmp	r3, #2
 8346 02e6 11D8     		bhi	.L1611
 8347 02e8 0122     		movs	r2, #1
 8348 02ea 0223     		movs	r3, #2
 8349 02ec C7B2     		uxtb	r7, r0
 8350 02ee 84F8F870 		strb	r7, [r4, #248]
 8351 02f2 A946     		mov	r9, r5
 8352 02f4 C4F8EC20 		str	r2, [r4, #236]
 8353 02f8 C4F8F030 		str	r3, [r4, #240]
 8354 02fc B1E6     		b	.L1612
 8355              	.L1623:
 8356 02fe 2860     		str	r0, [r5]	@ float
 8357 0300 EAE6     		b	.L1618
 8358              	.L1688:
 8359 0302 23F00403 		bic	r3, r3, #4
 8360 0306 4CE7     		b	.L1636
 8361              	.L1691:
 8362 0308 B946     		mov	r9, r7
 8363 030a DEE7     		b	.L1615
 8364              	.L1611:
 8365 030c 6328     		cmp	r0, #99
 8366 030e 7FF4A1AE 		bne	.L1677
 8367 0312 D4F8F430 		ldr	r3, [r4, #244]
 8368 0316 94F8F870 		ldrb	r7, [r4, #248]	@ zero_extendqisi2
 8369 031a 43F00053 		orr	r3, r3, #536870912
 8370 031e C4F8F430 		str	r3, [r4, #244]
 8371 0322 99E6     		b	.L1610
 8372              	.L1692:
 8373 0324 0448     		ldr	r0, .L1694+4
 8374              	.L1608:
 8375 0326 07B0     		add	sp, sp, #28
 8376              		@ sp needed
 8377 0328 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8378              	.L1685:
 8379 032c 0348     		ldr	r0, .L1694+8
ARM GAS  /tmp/ccx5mP1m.s 			page 148


 8380 032e 07B0     		add	sp, sp, #28
 8381              		@ sp needed
 8382 0330 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8383              	.L1695:
 8384              		.align	2
 8385              	.L1694:
 8386 0334 00000000 		.word	reprap
 8387 0338 00000000 		.word	.LC138
 8388 033c 40000000 		.word	.LC140
 8389              	.L1650:
 8390 0340 0123     		movs	r3, #1
 8391 0342 C4F80031 		str	r3, [r4, #256]
 8392              	.L1634:
 8393 0346 0025     		movs	r5, #0
 8394 0348 3146     		mov	r1, r6
 8395 034a 2046     		mov	r0, r4
 8396 034c 84F83851 		strb	r5, [r4, #312]
 8397 0350 FFF7FEFF 		bl	_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 8398 0354 2046     		mov	r0, r4
 8399 0356 3146     		mov	r1, r6
 8400 0358 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8401 035c 2846     		mov	r0, r5
 8402 035e 07B0     		add	sp, sp, #28
 8403              		@ sp needed
 8404 0360 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8405              	.L1689:
 8406 0364 AA68     		ldr	r2, [r5, #8]
 8407 0366 94F8F910 		ldrb	r1, [r4, #249]	@ zero_extendqisi2
 8408 036a D2F8FC04 		ldr	r0, [r2, #1276]
 8409 036e C1F30011 		ubfx	r1, r1, #4, #1
 8410 0372 D0F800E0 		ldr	lr, [r0]
 8411 0376 D4F8FC21 		ldr	r2, [r4, #508]
 8412 037a 0091     		str	r1, [sp]
 8413 037c DEF82890 		ldr	r9, [lr, #40]
 8414 0380 0299     		ldr	r1, [sp, #8]
 8415 0382 C847     		blx	r9
 8416 0384 0028     		cmp	r0, #0
 8417 0386 3FF412AF 		beq	.L1638
 8418 038a 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 8419 038e 002B     		cmp	r3, #0
 8420 0390 54D0     		beq	.L1693
 8421 0392 2D48     		ldr	r0, .L1696
 8422 0394 07B0     		add	sp, sp, #28
 8423              		@ sp needed
 8424 0396 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8425              	.L1686:
 8426 039a 2C4D     		ldr	r5, .L1696+4
 8427 039c 2C49     		ldr	r1, .L1696+8
 8428 039e AB68     		ldr	r3, [r5, #8]
 8429 03a0 94F87A22 		ldrb	r2, [r4, #634]	@ zero_extendqisi2
 8430 03a4 D3F8FC04 		ldr	r0, [r3, #1276]
 8431 03a8 0368     		ldr	r3, [r0]
 8432 03aa 5B6D     		ldr	r3, [r3, #84]
 8433 03ac 8B42     		cmp	r3, r1
 8434 03ae 42D1     		bne	.L1628
 8435 03b0 002A     		cmp	r2, #0
 8436 03b2 3FF4DAAE 		beq	.L1627
ARM GAS  /tmp/ccx5mP1m.s 			page 149


 8437 03b6 4046     		mov	r0, r8
 8438              	.L1629:
 8439 03b8 D4F88032 		ldr	r3, [r4, #640]
 8440 03bc 30EA0303 		bics	r3, r0, r3
 8441 03c0 3FF4D3AE 		beq	.L1627
 8442 03c4 2348     		ldr	r0, .L1696+12
 8443 03c6 AEE7     		b	.L1608
 8444              	.L1631:
 8445 03c8 D4F8F811 		ldr	r1, [r4, #504]
 8446 03cc D4F8F420 		ldr	r2, [r4, #244]
 8447 03d0 8B40     		lsls	r3, r3, r1
 8448 03d2 013B     		subs	r3, r3, #1
 8449 03d4 03EA0803 		and	r3, r3, r8
 8450 03d8 42F08042 		orr	r2, r2, #1073741824
 8451 03dc 1343     		orrs	r3, r3, r2
 8452 03de C4F8F430 		str	r3, [r4, #244]
 8453 03e2 C2E6     		b	.L1627
 8454              	.L1690:
 8455 03e4 38F00403 		bics	r3, r8, #4
 8456 03e8 14BF     		ite	ne
 8457 03ea 0123     		movne	r3, #1
 8458 03ec 0023     		moveq	r3, #0
 8459 03ee E4E6     		b	.L1641
 8460              	.L1687:
 8461 03f0 0123     		movs	r3, #1
 8462 03f2 B268     		ldr	r2, [r6, #8]
 8463 03f4 C4F80031 		str	r3, [r4, #256]
 8464 03f8 1375     		strb	r3, [r2, #20]
 8465 03fa A4E7     		b	.L1634
 8466              	.L1652:
 8467 03fc 9846     		mov	r8, r3
 8468 03fe AAE6     		b	.L1617
 8469              	.L1642:
 8470 0400 95F8F034 		ldrb	r3, [r5, #1264]	@ zero_extendqisi2
 8471 0404 002B     		cmp	r3, #0
 8472 0406 9BD0     		beq	.L1650
 8473 0408 0599     		ldr	r1, [sp, #20]	@ float
 8474 040a D4F88800 		ldr	r0, [r4, #136]	@ float
 8475 040e FFF7FEFF 		bl	__aeabi_fsub
 8476 0412 0499     		ldr	r1, [sp, #16]	@ float
 8477 0414 0746     		mov	r7, r0
 8478 0416 D4F88400 		ldr	r0, [r4, #132]	@ float
 8479 041a FFF7FEFF 		bl	__aeabi_fsub
 8480 041e 3A46     		mov	r2, r7
 8481 0420 0146     		mov	r1, r0
 8482 0422 05F1C800 		add	r0, r5, #200
 8483 0426 FFF7FEFF 		bl	_ZNK9HeightMap18GetMinimumSegmentsEff
 8484 042a 0028     		cmp	r0, #0
 8485 042c 08BF     		it	eq
 8486 042e 0120     		moveq	r0, #1
 8487 0430 C4F80001 		str	r0, [r4, #256]
 8488 0434 87E7     		b	.L1634
 8489              	.L1628:
 8490 0436 4146     		mov	r1, r8
 8491 0438 9847     		blx	r3
 8492 043a BDE7     		b	.L1629
 8493              	.L1693:
ARM GAS  /tmp/ccx5mP1m.s 			page 150


 8494 043c 3A46     		mov	r2, r7
 8495 043e 0299     		ldr	r1, [sp, #8]
 8496 0440 2046     		mov	r0, r4
 8497 0442 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 8498 0446 B2E6     		b	.L1638
 8499              	.L1697:
 8500              		.align	2
 8501              	.L1696:
 8502 0448 94000000 		.word	.LC141
 8503 044c 00000000 		.word	reprap
 8504 0450 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 8505 0454 20000000 		.word	.LC139
 8506              		.size	_ZN6GCodes14DoStraightMoveER11GCodeBufferb, .-_ZN6GCodes14DoStraightMoveER11GCodeBufferb
 8507              		.global	__aeabi_fcmplt
 8508              		.section	.text._ZN6GCodes9DoArcMoveER11GCodeBufferb,"ax",%progbits
 8509              		.align	1
 8510              		.p2align 2,,3
 8511              		.global	_ZN6GCodes9DoArcMoveER11GCodeBufferb
 8512              		.syntax unified
 8513              		.thumb
 8514              		.thumb_func
 8515              		.fpu softvfp
 8516              		.type	_ZN6GCodes9DoArcMoveER11GCodeBufferb, %function
 8517              	_ZN6GCodes9DoArcMoveER11GCodeBufferb:
 8518              		@ args = 0, pretend = 0, frame = 24
 8519              		@ frame_needed = 0, uses_anonymous_args = 0
 8520 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 8521 0004 0D46     		mov	r5, r1
 8522 0006 89B0     		sub	sp, sp, #36
 8523 0008 0446     		mov	r4, r0
 8524 000a 5821     		movs	r1, #88
 8525 000c 2846     		mov	r0, r5
 8526 000e 0492     		str	r2, [sp, #16]
 8527 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8528 0014 8046     		mov	r8, r0
 8529 0016 0028     		cmp	r0, #0
 8530 0018 40F08681 		bne	.L1759
 8531 001c D4F88470 		ldr	r7, [r4, #132]	@ float
 8532              	.L1700:
 8533 0020 5921     		movs	r1, #89
 8534 0022 2846     		mov	r0, r5
 8535 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8536 0028 0646     		mov	r6, r0
 8537 002a 0028     		cmp	r0, #0
 8538 002c 40F07281 		bne	.L1760
 8539 0030 D4F88860 		ldr	r6, [r4, #136]	@ float
 8540              	.L1702:
 8541 0034 4921     		movs	r1, #73
 8542 0036 2846     		mov	r0, r5
 8543 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8544 003c 8146     		mov	r9, r0
 8545 003e 0028     		cmp	r0, #0
 8546 0040 40F05F81 		bne	.L1761
 8547 0044 0023     		movs	r3, #0
 8548 0046 0393     		str	r3, [sp, #12]	@ float
 8549              	.L1703:
 8550 0048 4A21     		movs	r1, #74
ARM GAS  /tmp/ccx5mP1m.s 			page 151


 8551 004a 2846     		mov	r0, r5
 8552 004c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8553 0050 0028     		cmp	r0, #0
 8554 0052 40F03D81 		bne	.L1762
 8555 0056 B8F1000F 		cmp	r8, #0
 8556 005a 03D1     		bne	.L1734
 8557 005c B9F1000F 		cmp	r9, #0
 8558 0060 40F03C81 		bne	.L1705
 8559              	.L1734:
 8560 0064 0023     		movs	r3, #0
 8561 0066 0593     		str	r3, [sp, #20]	@ float
 8562              	.L1706:
 8563 0068 D4F8FC21 		ldr	r2, [r4, #508]
 8564 006c 04F1A00A 		add	r10, r4, #160
 8565 0070 04F1C40B 		add	fp, r4, #196
 8566 0074 9200     		lsls	r2, r2, #2
 8567 0076 5146     		mov	r1, r10
 8568 0078 5846     		mov	r0, fp
 8569 007a FFF7FEFF 		bl	memcpy
 8570 007e AB68     		ldr	r3, [r5, #8]
 8571 0080 D4F88420 		ldr	r2, [r4, #132]	@ float
 8572 0084 93F81880 		ldrb	r8, [r3, #24]	@ zero_extendqisi2
 8573 0088 D4F88830 		ldr	r3, [r4, #136]	@ float
 8574 008c 0692     		str	r2, [sp, #24]	@ float
 8575 008e 9946     		mov	r9, r3
 8576 0090 0793     		str	r3, [sp, #28]	@ float
 8577 0092 18F00203 		ands	r3, r8, #2
 8578 0096 0293     		str	r3, [sp, #8]
 8579 0098 40F00681 		bne	.L1763
 8580 009c D4F8FC31 		ldr	r3, [r4, #508]
 8581 00a0 C4F88470 		str	r7, [r4, #132]	@ float
 8582 00a4 022B     		cmp	r3, #2
 8583 00a6 C4F88860 		str	r6, [r4, #136]	@ float
 8584 00aa 40F20E81 		bls	.L1764
 8585              	.L1752:
 8586 00ae 4FF00208 		mov	r8, #2
 8587 00b2 4FF00309 		mov	r9, #3
 8588 00b6 04F51D77 		add	r7, r4, #628
 8589 00ba 04F18C06 		add	r6, r4, #140
 8590 00be 07E0     		b	.L1715
 8591              	.L1712:
 8592 00c0 D4F8FC21 		ldr	r2, [r4, #508]
 8593 00c4 08F10108 		add	r8, r8, #1
 8594 00c8 4245     		cmp	r2, r8
 8595 00ca 06F10406 		add	r6, r6, #4
 8596 00ce 23D9     		bls	.L1709
 8597              	.L1715:
 8598 00d0 17F8011B 		ldrb	r1, [r7], #1	@ zero_extendqisi2
 8599 00d4 2846     		mov	r0, r5
 8600 00d6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8601 00da 0028     		cmp	r0, #0
 8602 00dc F0D0     		beq	.L1712
 8603 00de 2846     		mov	r0, r5
 8604 00e0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8605 00e4 D4F83C12 		ldr	r1, [r4, #572]	@ float
 8606 00e8 FFF7FEFF 		bl	__aeabi_fmul
 8607 00ec 029B     		ldr	r3, [sp, #8]
ARM GAS  /tmp/ccx5mP1m.s 			page 152


 8608 00ee 002B     		cmp	r3, #0
 8609 00f0 00F0F880 		beq	.L1713
 8610 00f4 0146     		mov	r1, r0
 8611 00f6 3068     		ldr	r0, [r6]	@ float
 8612 00f8 FFF7FEFF 		bl	__aeabi_fadd
 8613 00fc 3060     		str	r0, [r6]	@ float
 8614              	.L1714:
 8615 00fe 0123     		movs	r3, #1
 8616 0100 03FA08F2 		lsl	r2, r3, r8
 8617 0104 49EA0209 		orr	r9, r9, r2
 8618 0108 D4F8FC21 		ldr	r2, [r4, #508]
 8619 010c 08F10108 		add	r8, r8, #1
 8620 0110 4245     		cmp	r2, r8
 8621 0112 06F10406 		add	r6, r6, #4
 8622 0116 DBD8     		bhi	.L1715
 8623              	.L1709:
 8624 0118 BC4E     		ldr	r6, .L1767
 8625 011a BD49     		ldr	r1, .L1767+4
 8626 011c B368     		ldr	r3, [r6, #8]
 8627 011e 94F87A22 		ldrb	r2, [r4, #634]	@ zero_extendqisi2
 8628 0122 D3F8FC04 		ldr	r0, [r3, #1276]
 8629 0126 0368     		ldr	r3, [r0]
 8630 0128 5B6D     		ldr	r3, [r3, #84]
 8631 012a 8B42     		cmp	r3, r1
 8632 012c 40F0DC80 		bne	.L1716
 8633 0130 002A     		cmp	r2, #0
 8634 0132 40F0DC80 		bne	.L1717
 8635              	.L1720:
 8636 0136 0023     		movs	r3, #0
 8637 0138 5246     		mov	r2, r10
 8638 013a 04F18401 		add	r1, r4, #132
 8639 013e 2046     		mov	r0, r4
 8640 0140 FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 8641 0144 94F87932 		ldrb	r3, [r4, #633]	@ zero_extendqisi2
 8642 0148 002B     		cmp	r3, #0
 8643 014a 40F00781 		bne	.L1765
 8644              	.L1719:
 8645 014e 0699     		ldr	r1, [sp, #24]	@ float
 8646 0150 0398     		ldr	r0, [sp, #12]	@ float
 8647 0152 FFF7FEFF 		bl	__aeabi_fadd
 8648 0156 0146     		mov	r1, r0
 8649 0158 D4F88400 		ldr	r0, [r4, #132]	@ float
 8650 015c FFF7FEFF 		bl	__aeabi_fsub
 8651 0160 0599     		ldr	r1, [sp, #20]	@ float
 8652 0162 0746     		mov	r7, r0
 8653 0164 0798     		ldr	r0, [sp, #28]	@ float
 8654 0166 FFF7FEFF 		bl	__aeabi_fadd
 8655 016a 0146     		mov	r1, r0
 8656 016c D4F88800 		ldr	r0, [r4, #136]	@ float
 8657 0170 FFF7FEFF 		bl	__aeabi_fsub
 8658 0174 3946     		mov	r1, r7
 8659 0176 FFF7FEFF 		bl	atan2f
 8660 017a 0026     		movs	r6, #0
 8661 017c 0746     		mov	r7, r0
 8662 017e C4F8F460 		str	r6, [r4, #244]
 8663 0182 84F8F860 		strb	r6, [r4, #248]
 8664 0186 A148     		ldr	r0, .L1767
ARM GAS  /tmp/ccx5mP1m.s 			page 153


 8665 0188 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 8666 018c C4F8EC00 		str	r0, [r4, #236]
 8667 0190 9E48     		ldr	r0, .L1767
 8668 0192 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 8669 0196 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 8670 019a D4F8FC91 		ldr	r9, [r4, #508]
 8671 019e 43F01003 		orr	r3, r3, #16
 8672 01a2 8046     		mov	r8, r0
 8673 01a4 C4F8F000 		str	r0, [r4, #240]
 8674 01a8 84F8F930 		strb	r3, [r4, #249]
 8675 01ac B9F1000F 		cmp	r9, #0
 8676 01b0 15D0     		beq	.L1731
 8677 01b2 DA46     		mov	r10, fp
 8678 01b4 D4F8ECB0 		ldr	fp, [r4, #236]
 8679              	.L1723:
 8680 01b8 2BFA06F3 		lsr	r3, fp, r6
 8681 01bc D907     		lsls	r1, r3, #31
 8682 01be 28FA06F2 		lsr	r2, r8, r6
 8683 01c2 40F1C080 		bpl	.L1721
 8684 01c6 0399     		ldr	r1, [sp, #12]	@ float
 8685 01c8 DAF80000 		ldr	r0, [r10]	@ float
 8686 01cc FFF7FEFF 		bl	__aeabi_fadd
 8687 01d0 CAF85000 		str	r0, [r10, #80]	@ float
 8688              	.L1722:
 8689 01d4 0136     		adds	r6, r6, #1
 8690 01d6 4E45     		cmp	r6, r9
 8691 01d8 0AF1040A 		add	r10, r10, #4
 8692 01dc ECD1     		bne	.L1723
 8693              	.L1731:
 8694 01de 2946     		mov	r1, r5
 8695 01e0 2046     		mov	r0, r4
 8696 01e2 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer
 8697 01e6 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 8698 01ea DDF80C90 		ldr	r9, [sp, #12]	@ float
 8699 01ee 1A46     		mov	r2, r3
 8700 01f0 C3F3C003 		ubfx	r3, r3, #3, #1
 8701 01f4 63F34102 		bfi	r2, r3, #1, #1
 8702 01f8 84F8F920 		strb	r2, [r4, #249]
 8703 01fc 4946     		mov	r1, r9
 8704 01fe 4846     		mov	r0, r9
 8705 0200 FFF7FEFF 		bl	__aeabi_fmul
 8706 0204 DDF81480 		ldr	r8, [sp, #20]	@ float
 8707 0208 0646     		mov	r6, r0
 8708 020a 4146     		mov	r1, r8
 8709 020c 4046     		mov	r0, r8
 8710 020e FFF7FEFF 		bl	__aeabi_fmul
 8711 0212 0146     		mov	r1, r0
 8712 0214 3046     		mov	r0, r6
 8713 0216 FFF7FEFF 		bl	__aeabi_fadd
 8714 021a FFF7FEFF 		bl	sqrtf
 8715 021e 08F10043 		add	r3, r8, #-2147483648
 8716 0222 09F10041 		add	r1, r9, #-2147483648
 8717 0226 C4F82C01 		str	r0, [r4, #300]	@ float
 8718 022a 1846     		mov	r0, r3
 8719 022c FFF7FEFF 		bl	atan2f
 8720 0230 049B     		ldr	r3, [sp, #16]
 8721 0232 0146     		mov	r1, r0
ARM GAS  /tmp/ccx5mP1m.s 			page 154


 8722 0234 C4F83001 		str	r0, [r4, #304]	@ float
 8723 0238 002B     		cmp	r3, #0
 8724 023a 00F0A180 		beq	.L1724
 8725 023e 3946     		mov	r1, r7
 8726 0240 FFF7FEFF 		bl	__aeabi_fsub
 8727 0244 0021     		movs	r1, #0
 8728 0246 0646     		mov	r6, r0
 8729 0248 0746     		mov	r7, r0
 8730 024a FFF7FEFF 		bl	__aeabi_fcmplt
 8731 024e 0028     		cmp	r0, #0
 8732 0250 40F09F80 		bne	.L1725
 8733 0254 D4F82C11 		ldr	r1, [r4, #300]	@ float
 8734 0258 3046     		mov	r0, r6
 8735 025a FFF7FEFF 		bl	__aeabi_fmul
 8736 025e D4F84012 		ldr	r1, [r4, #576]	@ float
 8737 0262 FFF7FEFF 		bl	__aeabi_fdiv
 8738 0266 6B49     		ldr	r1, .L1767+8
 8739 0268 FFF7FEFF 		bl	__aeabi_fadd
 8740 026c FFF7FEFF 		bl	__aeabi_f2uiz
 8741 0270 0128     		cmp	r0, #1
 8742 0272 38BF     		it	cc
 8743 0274 0120     		movcc	r0, #1
 8744 0276 C4F80001 		str	r0, [r4, #256]
 8745 027a FFF7FEFF 		bl	__aeabi_ui2f
 8746 027e 0146     		mov	r1, r0
 8747 0280 3046     		mov	r0, r6
 8748 0282 FFF7FEFF 		bl	__aeabi_fdiv
 8749              	.L1729:
 8750 0286 00F10040 		add	r0, r0, #-2147483648
 8751              	.L1756:
 8752 028a 0123     		movs	r3, #1
 8753 028c C4F83401 		str	r0, [r4, #308]	@ float
 8754 0290 2946     		mov	r1, r5
 8755 0292 84F83831 		strb	r3, [r4, #312]
 8756 0296 2046     		mov	r0, r4
 8757 0298 FFF7FEFF 		bl	_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 8758 029c 2046     		mov	r0, r4
 8759 029e 2946     		mov	r1, r5
 8760 02a0 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8761 02a4 0020     		movs	r0, #0
 8762 02a6 1AE0     		b	.L1698
 8763              	.L1763:
 8764 02a8 1146     		mov	r1, r2
 8765 02aa 3846     		mov	r0, r7
 8766 02ac FFF7FEFF 		bl	__aeabi_fadd
 8767 02b0 4946     		mov	r1, r9
 8768 02b2 C4F88400 		str	r0, [r4, #132]	@ float
 8769 02b6 3046     		mov	r0, r6
 8770 02b8 FFF7FEFF 		bl	__aeabi_fadd
 8771 02bc D4F8FC31 		ldr	r3, [r4, #508]
 8772 02c0 C4F88800 		str	r0, [r4, #136]	@ float
 8773 02c4 022B     		cmp	r3, #2
 8774 02c6 3FF6F2AE 		bhi	.L1752
 8775              	.L1764:
 8776 02ca 4FF00309 		mov	r9, #3
 8777 02ce 23E7     		b	.L1709
 8778              	.L1762:
ARM GAS  /tmp/ccx5mP1m.s 			page 155


 8779 02d0 2846     		mov	r0, r5
 8780 02d2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8781 02d6 B8F1000F 		cmp	r8, #0
 8782 02da 2ED1     		bne	.L1766
 8783              	.L1705:
 8784 02dc 4E48     		ldr	r0, .L1767+12
 8785              	.L1698:
 8786 02de 09B0     		add	sp, sp, #36
 8787              		@ sp needed
 8788 02e0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8789              	.L1713:
 8790 02e4 3060     		str	r0, [r6]	@ float
 8791 02e6 0AE7     		b	.L1714
 8792              	.L1716:
 8793 02e8 4946     		mov	r1, r9
 8794 02ea 9847     		blx	r3
 8795 02ec 8146     		mov	r9, r0
 8796              	.L1717:
 8797 02ee D4F88032 		ldr	r3, [r4, #640]
 8798 02f2 39EA0303 		bics	r3, r9, r3
 8799 02f6 3FF41EAF 		beq	.L1720
 8800 02fa 4848     		ldr	r0, .L1767+16
 8801 02fc 09B0     		add	sp, sp, #36
 8802              		@ sp needed
 8803 02fe BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8804              	.L1761:
 8805 0302 2846     		mov	r0, r5
 8806 0304 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8807 0308 D4F83C12 		ldr	r1, [r4, #572]	@ float
 8808 030c FFF7FEFF 		bl	__aeabi_fmul
 8809 0310 0390     		str	r0, [sp, #12]	@ float
 8810 0312 99E6     		b	.L1703
 8811              	.L1760:
 8812 0314 2846     		mov	r0, r5
 8813 0316 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8814 031a D4F83C12 		ldr	r1, [r4, #572]	@ float
 8815 031e FFF7FEFF 		bl	__aeabi_fmul
 8816 0322 B046     		mov	r8, r6
 8817 0324 0646     		mov	r6, r0
 8818 0326 85E6     		b	.L1702
 8819              	.L1759:
 8820 0328 2846     		mov	r0, r5
 8821 032a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8822 032e D4F83C12 		ldr	r1, [r4, #572]	@ float
 8823 0332 FFF7FEFF 		bl	__aeabi_fmul
 8824 0336 0746     		mov	r7, r0
 8825 0338 72E6     		b	.L1700
 8826              	.L1766:
 8827 033a D4F83C12 		ldr	r1, [r4, #572]	@ float
 8828 033e FFF7FEFF 		bl	__aeabi_fmul
 8829 0342 0590     		str	r0, [sp, #20]	@ float
 8830 0344 90E6     		b	.L1706
 8831              	.L1721:
 8832 0346 D307     		lsls	r3, r2, #31
 8833 0348 7FF544AF 		bpl	.L1722
 8834 034c 0599     		ldr	r1, [sp, #20]	@ float
 8835 034e DAF80000 		ldr	r0, [r10]	@ float
ARM GAS  /tmp/ccx5mP1m.s 			page 156


 8836 0352 FFF7FEFF 		bl	__aeabi_fadd
 8837 0356 CAF85000 		str	r0, [r10, #80]	@ float
 8838 035a 3BE7     		b	.L1722
 8839              	.L1765:
 8840 035c 0121     		movs	r1, #1
 8841 035e B268     		ldr	r2, [r6, #8]
 8842 0360 D4F88032 		ldr	r3, [r4, #640]
 8843 0364 D2F8FC04 		ldr	r0, [r2, #1276]
 8844 0368 D4F8FC21 		ldr	r2, [r4, #508]
 8845 036c 0668     		ldr	r6, [r0]
 8846 036e 0091     		str	r1, [sp]
 8847 0370 B66A     		ldr	r6, [r6, #40]
 8848 0372 5146     		mov	r1, r10
 8849 0374 B047     		blx	r6
 8850 0376 0028     		cmp	r0, #0
 8851 0378 3FF4E9AE 		beq	.L1719
 8852 037c 2848     		ldr	r0, .L1767+20
 8853 037e AEE7     		b	.L1698
 8854              	.L1724:
 8855 0380 3846     		mov	r0, r7
 8856 0382 FFF7FEFF 		bl	__aeabi_fsub
 8857 0386 0021     		movs	r1, #0
 8858 0388 0646     		mov	r6, r0
 8859 038a 0746     		mov	r7, r0
 8860 038c FFF7FEFF 		bl	__aeabi_fcmplt
 8861 0390 08B3     		cbz	r0, .L1754
 8862              	.L1725:
 8863 0392 2449     		ldr	r1, .L1767+24
 8864 0394 3846     		mov	r0, r7
 8865 0396 FFF7FEFF 		bl	__aeabi_fadd
 8866 039a D4F82C11 		ldr	r1, [r4, #300]	@ float
 8867 039e 0646     		mov	r6, r0
 8868 03a0 FFF7FEFF 		bl	__aeabi_fmul
 8869 03a4 D4F84012 		ldr	r1, [r4, #576]	@ float
 8870 03a8 FFF7FEFF 		bl	__aeabi_fdiv
 8871 03ac 1949     		ldr	r1, .L1767+8
 8872 03ae FFF7FEFF 		bl	__aeabi_fadd
 8873 03b2 FFF7FEFF 		bl	__aeabi_f2uiz
 8874 03b6 0128     		cmp	r0, #1
 8875 03b8 38BF     		it	cc
 8876 03ba 0120     		movcc	r0, #1
 8877 03bc C4F80001 		str	r0, [r4, #256]
 8878 03c0 FFF7FEFF 		bl	__aeabi_ui2f
 8879 03c4 0146     		mov	r1, r0
 8880 03c6 3046     		mov	r0, r6
 8881 03c8 FFF7FEFF 		bl	__aeabi_fdiv
 8882 03cc 049B     		ldr	r3, [sp, #16]
 8883 03ce 002B     		cmp	r3, #0
 8884 03d0 3FF45BAF 		beq	.L1756
 8885 03d4 57E7     		b	.L1729
 8886              	.L1754:
 8887 03d6 D4F82C11 		ldr	r1, [r4, #300]	@ float
 8888 03da 3046     		mov	r0, r6
 8889 03dc FFF7FEFF 		bl	__aeabi_fmul
 8890 03e0 D4F84012 		ldr	r1, [r4, #576]	@ float
 8891 03e4 FFF7FEFF 		bl	__aeabi_fdiv
 8892 03e8 0A49     		ldr	r1, .L1767+8
ARM GAS  /tmp/ccx5mP1m.s 			page 157


 8893 03ea FFF7FEFF 		bl	__aeabi_fadd
 8894 03ee FFF7FEFF 		bl	__aeabi_f2uiz
 8895 03f2 0128     		cmp	r0, #1
 8896 03f4 38BF     		it	cc
 8897 03f6 0120     		movcc	r0, #1
 8898 03f8 C4F80001 		str	r0, [r4, #256]
 8899 03fc FFF7FEFF 		bl	__aeabi_ui2f
 8900 0400 0146     		mov	r1, r0
 8901 0402 3046     		mov	r0, r6
 8902 0404 FFF7FEFF 		bl	__aeabi_fdiv
 8903 0408 3FE7     		b	.L1756
 8904              	.L1768:
 8905 040a 00BF     		.align	2
 8906              	.L1767:
 8907 040c 00000000 		.word	reprap
 8908 0410 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 8909 0414 CDCC4C3F 		.word	1061997773
 8910 0418 00000000 		.word	.LC142
 8911 041c 1C000000 		.word	.LC143
 8912 0420 3C000000 		.word	.LC144
 8913 0424 DB0FC940 		.word	1086918619
 8914              		.size	_ZN6GCodes9DoArcMoveER11GCodeBufferb, .-_ZN6GCodes9DoArcMoveER11GCodeBufferb
 8915              		.section	.text._ZNK6GCodes10AppendAxesERK9StringRefm,"ax",%progbits
 8916              		.align	1
 8917              		.p2align 2,,3
 8918              		.global	_ZNK6GCodes10AppendAxesERK9StringRefm
 8919              		.syntax unified
 8920              		.thumb
 8921              		.thumb_func
 8922              		.fpu softvfp
 8923              		.type	_ZNK6GCodes10AppendAxesERK9StringRefm, %function
 8924              	_ZNK6GCodes10AppendAxesERK9StringRefm:
 8925              		@ args = 0, pretend = 0, frame = 0
 8926              		@ frame_needed = 0, uses_anonymous_args = 0
 8927 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 8928 0004 D0F8FC61 		ldr	r6, [r0, #508]
 8929 0008 D6B1     		cbz	r6, .L1769
 8930 000a 1746     		mov	r7, r2
 8931 000c 8946     		mov	r9, r1
 8932 000e 8046     		mov	r8, r0
 8933 0010 0024     		movs	r4, #0
 8934 0012 00F27225 		addw	r5, r0, #626
 8935 0016 03E0     		b	.L1773
 8936              	.L1771:
 8937 0018 A642     		cmp	r6, r4
 8938 001a 05F10105 		add	r5, r5, #1
 8939 001e 0FD9     		bls	.L1769
 8940              	.L1773:
 8941 0020 27FA04F3 		lsr	r3, r7, r4
 8942 0024 13F0010F 		tst	r3, #1
 8943 0028 04F10104 		add	r4, r4, #1
 8944 002c F4D0     		beq	.L1771
 8945 002e 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 8946 0030 4846     		mov	r0, r9
 8947 0032 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 8948 0036 D8F8FC61 		ldr	r6, [r8, #508]
 8949 003a 0135     		adds	r5, r5, #1
ARM GAS  /tmp/ccx5mP1m.s 			page 158


 8950 003c A642     		cmp	r6, r4
 8951 003e EFD8     		bhi	.L1773
 8952              	.L1769:
 8953 0040 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 8954              		.size	_ZNK6GCodes10AppendAxesERK9StringRefm, .-_ZNK6GCodes10AppendAxesERK9StringRefm
 8955              		.section	.text._ZNK6GCodes20GetMachineModeStringEv,"ax",%progbits
 8956              		.align	1
 8957              		.p2align 2,,3
 8958              		.global	_ZNK6GCodes20GetMachineModeStringEv
 8959              		.syntax unified
 8960              		.thumb
 8961              		.thumb_func
 8962              		.fpu softvfp
 8963              		.type	_ZNK6GCodes20GetMachineModeStringEv, %function
 8964              	_ZNK6GCodes20GetMachineModeStringEv:
 8965              		@ args = 0, pretend = 0, frame = 0
 8966              		@ frame_needed = 0, uses_anonymous_args = 0
 8967              		@ link register save eliminated.
 8968 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 8969 0004 022B     		cmp	r3, #2
 8970 0006 9ABF     		itte	ls
 8971 0008 024A     		ldrls	r2, .L1781
 8972 000a 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 8973 000e 0248     		ldrhi	r0, .L1781+4
 8974 0010 7047     		bx	lr
 8975              	.L1782:
 8976 0012 00BF     		.align	2
 8977              	.L1781:
 8978 0014 00000000 		.word	.LANCHOR2
 8979 0018 00000000 		.word	.LC145
 8980              		.size	_ZNK6GCodes20GetMachineModeStringEv, .-_ZNK6GCodes20GetMachineModeStringEv
 8981              		.section	.text._ZN6GCodes17HandleHeaterFaultEi,"ax",%progbits
 8982              		.align	1
 8983              		.p2align 2,,3
 8984              		.global	_ZN6GCodes17HandleHeaterFaultEi
 8985              		.syntax unified
 8986              		.thumb
 8987              		.thumb_func
 8988              		.fpu softvfp
 8989              		.type	_ZN6GCodes17HandleHeaterFaultEi, %function
 8990              	_ZN6GCodes17HandleHeaterFaultEi:
 8991              		@ args = 0, pretend = 0, frame = 0
 8992              		@ frame_needed = 0, uses_anonymous_args = 0
 8993 0000 90F84834 		ldrb	r3, [r0, #1096]	@ zero_extendqisi2
 8994 0004 03B1     		cbz	r3, .L1792
 8995 0006 7047     		bx	lr
 8996              	.L1792:
 8997 0008 036C     		ldr	r3, [r0, #64]
 8998 000a 10B5     		push	{r4, lr}
 8999 000c 0446     		mov	r4, r0
 9000 000e 1868     		ldr	r0, [r3]
 9001 0010 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 9002 0014 8368     		ldr	r3, [r0, #8]
 9003 0016 33B1     		cbz	r3, .L1783
 9004 0018 0123     		movs	r3, #1
 9005 001a 84F84834 		strb	r3, [r4, #1096]
 9006 001e FFF7FEFF 		bl	millis
ARM GAS  /tmp/ccx5mP1m.s 			page 159


 9007 0022 C4F84C04 		str	r0, [r4, #1100]
 9008              	.L1783:
 9009 0026 10BD     		pop	{r4, pc}
 9010              		.size	_ZN6GCodes17HandleHeaterFaultEi, .-_ZN6GCodes17HandleHeaterFaultEi
 9011              		.section	.text._ZN6GCodes16CheckHeaterFaultEv,"ax",%progbits
 9012              		.align	1
 9013              		.p2align 2,,3
 9014              		.global	_ZN6GCodes16CheckHeaterFaultEv
 9015              		.syntax unified
 9016              		.thumb
 9017              		.thumb_func
 9018              		.fpu softvfp
 9019              		.type	_ZN6GCodes16CheckHeaterFaultEv, %function
 9020              	_ZN6GCodes16CheckHeaterFaultEv:
 9021              		@ args = 0, pretend = 0, frame = 0
 9022              		@ frame_needed = 0, uses_anonymous_args = 0
 9023 0000 38B5     		push	{r3, r4, r5, lr}
 9024 0002 90F84834 		ldrb	r3, [r0, #1096]	@ zero_extendqisi2
 9025 0006 0446     		mov	r4, r0
 9026 0008 022B     		cmp	r3, #2
 9027 000a 22D0     		beq	.L1795
 9028 000c 032B     		cmp	r3, #3
 9029 000e 42D0     		beq	.L1796
 9030 0010 012B     		cmp	r3, #1
 9031 0012 00D0     		beq	.L1820
 9032              	.L1793:
 9033 0014 38BD     		pop	{r3, r4, r5, pc}
 9034              	.L1820:
 9035 0016 334D     		ldr	r5, .L1823
 9036 0018 EB69     		ldr	r3, [r5, #28]
 9037 001a 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 9038 001c 8BB1     		cbz	r3, .L1798
 9039 001e FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 9040 0022 70B1     		cbz	r0, .L1798
 9041 0024 636D     		ldr	r3, [r4, #84]
 9042 0026 1B68     		ldr	r3, [r3]
 9043 0028 9A68     		ldr	r2, [r3, #8]
 9044 002a 117D     		ldrb	r1, [r2, #20]	@ zero_extendqisi2
 9045 002c 49B9     		cbnz	r1, .L1798
 9046 002e 93F82810 		ldrb	r1, [r3, #40]	@ zero_extendqisi2
 9047 0032 0839     		subs	r1, r1, #8
 9048 0034 0129     		cmp	r1, #1
 9049 0036 04D9     		bls	.L1798
 9050 0038 E16D     		ldr	r1, [r4, #92]
 9051 003a 8B42     		cmp	r3, r1
 9052 003c 40D0     		beq	.L1801
 9053 003e 0029     		cmp	r1, #0
 9054 0040 39D0     		beq	.L1821
 9055              	.L1798:
 9056 0042 2046     		mov	r0, r4
 9057 0044 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 9058 0048 0028     		cmp	r0, #0
 9059 004a 45D0     		beq	.L1822
 9060              	.L1817:
 9061 004c 0223     		movs	r3, #2
 9062 004e 84F84834 		strb	r3, [r4, #1096]
 9063              	.L1795:
ARM GAS  /tmp/ccx5mP1m.s 			page 160


 9064 0052 FFF7FEFF 		bl	millis
 9065 0056 D4F84C34 		ldr	r3, [r4, #1100]
 9066 005a D4F85024 		ldr	r2, [r4, #1104]
 9067 005e C01A     		subs	r0, r0, r3
 9068 0060 9042     		cmp	r0, r2
 9069 0062 D7D3     		bcc	.L1793
 9070 0064 0221     		movs	r1, #2
 9071 0066 2046     		mov	r0, r4
 9072 0068 FFF7FEFF 		bl	_ZN6GCodes9StopPrintE15StopPrintReason
 9073 006c 1D4B     		ldr	r3, .L1823
 9074 006e 0121     		movs	r1, #1
 9075 0070 D868     		ldr	r0, [r3, #12]
 9076 0072 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 9077 0076 D4F85034 		ldr	r3, [r4, #1104]
 9078 007a 1B49     		ldr	r1, .L1823+4
 9079 007c 1B4A     		ldr	r2, .L1823+8
 9080 007e A1FB0313 		umull	r1, r3, r1, r3
 9081 0082 2068     		ldr	r0, [r4]
 9082 0084 9B09     		lsrs	r3, r3, #6
 9083 0086 40F2B511 		movw	r1, #437
 9084 008a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9085 008e 0323     		movs	r3, #3
 9086 0090 84F84834 		strb	r3, [r4, #1096]
 9087 0094 38BD     		pop	{r3, r4, r5, pc}
 9088              	.L1796:
 9089 0096 FFF7FEFF 		bl	millis
 9090 009a D4F84C34 		ldr	r3, [r4, #1100]
 9091 009e C01A     		subs	r0, r0, r3
 9092 00a0 B0F5FA6F 		cmp	r0, #2000
 9093 00a4 B6D3     		bcc	.L1793
 9094 00a6 0021     		movs	r1, #0
 9095 00a8 2068     		ldr	r0, [r4]
 9096 00aa FFF7FEFF 		bl	_ZN8Platform11AtxPowerOffEb
 9097 00ae 0423     		movs	r3, #4
 9098 00b0 84F84834 		strb	r3, [r4, #1096]
 9099 00b4 38BD     		pop	{r3, r4, r5, pc}
 9100              	.L1821:
 9101 00b6 D168     		ldr	r1, [r2, #12]
 9102 00b8 E365     		str	r3, [r4, #92]
 9103 00ba 41F00101 		orr	r1, r1, #1
 9104 00be D160     		str	r1, [r2, #12]
 9105              	.L1801:
 9106 00c0 E868     		ldr	r0, [r5, #12]
 9107 00c2 0021     		movs	r1, #0
 9108 00c4 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 9109 00c8 626D     		ldr	r2, [r4, #84]
 9110 00ca 094B     		ldr	r3, .L1823+12
 9111 00cc 1168     		ldr	r1, [r2]
 9112 00ce 2046     		mov	r0, r4
 9113 00d0 0322     		movs	r2, #3
 9114 00d2 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 9115 00d6 B9E7     		b	.L1817
 9116              	.L1822:
 9117 00d8 2046     		mov	r0, r4
 9118 00da FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 9119 00de 0028     		cmp	r0, #0
 9120 00e0 B4D1     		bne	.L1817
ARM GAS  /tmp/ccx5mP1m.s 			page 161


 9121 00e2 B6E7     		b	.L1795
 9122              	.L1824:
 9123              		.align	2
 9124              	.L1823:
 9125 00e4 00000000 		.word	reprap
 9126 00e8 D34D6210 		.word	274877907
 9127 00ec 00000000 		.word	.LC146
 9128 00f0 40000000 		.word	.LC147
 9129              		.size	_ZN6GCodes16CheckHeaterFaultEv, .-_ZN6GCodes16CheckHeaterFaultEv
 9130              		.section	.text._ZNK6GCodes14GetSpeedFactorEv,"ax",%progbits
 9131              		.align	1
 9132              		.p2align 2,,3
 9133              		.global	_ZNK6GCodes14GetSpeedFactorEv
 9134              		.syntax unified
 9135              		.thumb
 9136              		.thumb_func
 9137              		.fpu softvfp
 9138              		.type	_ZNK6GCodes14GetSpeedFactorEv, %function
 9139              	_ZNK6GCodes14GetSpeedFactorEv:
 9140              		@ args = 0, pretend = 0, frame = 0
 9141              		@ frame_needed = 0, uses_anonymous_args = 0
 9142 0000 08B5     		push	{r3, lr}
 9143 0002 D0F89402 		ldr	r0, [r0, #660]	@ float
 9144 0006 0249     		ldr	r1, .L1827
 9145 0008 FFF7FEFF 		bl	__aeabi_fmul
 9146 000c 08BD     		pop	{r3, pc}
 9147              	.L1828:
 9148 000e 00BF     		.align	2
 9149              	.L1827:
 9150 0010 00007042 		.word	1114636288
 9151              		.size	_ZNK6GCodes14GetSpeedFactorEv, .-_ZNK6GCodes14GetSpeedFactorEv
 9152              		.section	.text._ZN6GCodes14SetSpeedFactorEf,"ax",%progbits
 9153              		.align	1
 9154              		.p2align 2,,3
 9155              		.global	_ZN6GCodes14SetSpeedFactorEf
 9156              		.syntax unified
 9157              		.thumb
 9158              		.thumb_func
 9159              		.fpu softvfp
 9160              		.type	_ZN6GCodes14SetSpeedFactorEf, %function
 9161              	_ZN6GCodes14SetSpeedFactorEf:
 9162              		@ args = 0, pretend = 0, frame = 0
 9163              		@ frame_needed = 0, uses_anonymous_args = 0
 9164 0000 38B5     		push	{r3, r4, r5, lr}
 9165 0002 0546     		mov	r5, r0
 9166 0004 0846     		mov	r0, r1
 9167 0006 0C46     		mov	r4, r1
 9168 0008 FFF7FEFF 		bl	__aeabi_fcmpun
 9169 000c 88B9     		cbnz	r0, .L1834
 9170 000e 0C49     		ldr	r1, .L1841
 9171 0010 2046     		mov	r0, r4
 9172 0012 FFF7FEFF 		bl	__aeabi_fcmplt
 9173 0016 40B1     		cbz	r0, .L1839
 9174 0018 0A49     		ldr	r1, .L1841+4
 9175 001a 2046     		mov	r0, r4
 9176 001c FFF7FEFF 		bl	__aeabi_fcmpgt
 9177 0020 38B9     		cbnz	r0, .L1834
ARM GAS  /tmp/ccx5mP1m.s 			page 162


 9178 0022 0948     		ldr	r0, .L1841+8
 9179 0024 C5F89402 		str	r0, [r5, #660]	@ float
 9180 0028 38BD     		pop	{r3, r4, r5, pc}
 9181              	.L1839:
 9182 002a 0848     		ldr	r0, .L1841+12
 9183 002c C5F89402 		str	r0, [r5, #660]	@ float
 9184 0030 38BD     		pop	{r3, r4, r5, pc}
 9185              	.L1834:
 9186 0032 2046     		mov	r0, r4
 9187 0034 0649     		ldr	r1, .L1841+16
 9188 0036 FFF7FEFF 		bl	__aeabi_fdiv
 9189 003a C5F89402 		str	r0, [r5, #660]	@ float
 9190 003e 38BD     		pop	{r3, r4, r5, pc}
 9191              	.L1842:
 9192              		.align	2
 9193              	.L1841:
 9194 0040 0000A040 		.word	1084227584
 9195 0044 CDCCCC3D 		.word	1036831949
 9196 0048 0E74DA3A 		.word	987395086
 9197 004c ABAAAA3D 		.word	1034594987
 9198 0050 00007042 		.word	1114636288
 9199              		.size	_ZN6GCodes14SetSpeedFactorEf, .-_ZN6GCodes14SetSpeedFactorEf
 9200              		.section	.text._ZN6GCodes18GetExtrusionFactorEj,"ax",%progbits
 9201              		.align	1
 9202              		.p2align 2,,3
 9203              		.global	_ZN6GCodes18GetExtrusionFactorEj
 9204              		.syntax unified
 9205              		.thumb
 9206              		.thumb_func
 9207              		.fpu softvfp
 9208              		.type	_ZN6GCodes18GetExtrusionFactorEj, %function
 9209              	_ZN6GCodes18GetExtrusionFactorEj:
 9210              		@ args = 0, pretend = 0, frame = 0
 9211              		@ frame_needed = 0, uses_anonymous_args = 0
 9212              		@ link register save eliminated.
 9213 0000 D0F80032 		ldr	r3, [r0, #512]
 9214 0004 8B42     		cmp	r3, r1
 9215 0006 86BF     		itte	hi
 9216 0008 A631     		addhi	r1, r1, #166
 9217 000a 50F82100 		ldrhi	r0, [r0, r1, lsl #2]	@ float
 9218 000e 0020     		movls	r0, #0
 9219 0010 7047     		bx	lr
 9220              		.size	_ZN6GCodes18GetExtrusionFactorEj, .-_ZN6GCodes18GetExtrusionFactorEj
 9221 0012 00BF     		.section	.text._ZN6GCodes18SetExtrusionFactorEjf,"ax",%progbits
 9222              		.align	1
 9223              		.p2align 2,,3
 9224              		.global	_ZN6GCodes18SetExtrusionFactorEjf
 9225              		.syntax unified
 9226              		.thumb
 9227              		.thumb_func
 9228              		.fpu softvfp
 9229              		.type	_ZN6GCodes18SetExtrusionFactorEjf, %function
 9230              	_ZN6GCodes18SetExtrusionFactorEjf:
 9231              		@ args = 0, pretend = 0, frame = 0
 9232              		@ frame_needed = 0, uses_anonymous_args = 0
 9233 0000 D0F80032 		ldr	r3, [r0, #512]
 9234 0004 8B42     		cmp	r3, r1
ARM GAS  /tmp/ccx5mP1m.s 			page 163


 9235 0006 1DD9     		bls	.L1857
 9236 0008 70B5     		push	{r4, r5, r6, lr}
 9237 000a 0646     		mov	r6, r0
 9238 000c 0D46     		mov	r5, r1
 9239 000e 1046     		mov	r0, r2
 9240 0010 1146     		mov	r1, r2
 9241 0012 1446     		mov	r4, r2
 9242 0014 FFF7FEFF 		bl	__aeabi_fcmpun
 9243 0018 50B9     		cbnz	r0, .L1850
 9244 001a 4FF08041 		mov	r1, #1073741824
 9245 001e 2046     		mov	r0, r4
 9246 0020 FFF7FEFF 		bl	__aeabi_fcmplt
 9247 0024 40B1     		cbz	r0, .L1855
 9248 0026 0021     		movs	r1, #0
 9249 0028 2046     		mov	r0, r4
 9250 002a FFF7FEFF 		bl	__aeabi_fcmpgt
 9251 002e 50B1     		cbz	r0, .L1860
 9252              	.L1850:
 9253 0030 A635     		adds	r5, r5, #166
 9254 0032 46F82540 		str	r4, [r6, r5, lsl #2]	@ float
 9255 0036 70BD     		pop	{r4, r5, r6, pc}
 9256              	.L1855:
 9257 0038 4FF08044 		mov	r4, #1073741824
 9258 003c A635     		adds	r5, r5, #166
 9259 003e 46F82540 		str	r4, [r6, r5, lsl #2]	@ float
 9260 0042 70BD     		pop	{r4, r5, r6, pc}
 9261              	.L1857:
 9262 0044 7047     		bx	lr
 9263              	.L1860:
 9264 0046 0024     		movs	r4, #0
 9265 0048 A635     		adds	r5, r5, #166
 9266 004a 46F82540 		str	r4, [r6, r5, lsl #2]	@ float
 9267 004e 70BD     		pop	{r4, r5, r6, pc}
 9268              		.size	_ZN6GCodes18SetExtrusionFactorEjf, .-_ZN6GCodes18SetExtrusionFactorEjf
 9269              		.section	.text._ZN6StringILj50EE6printfEPKcz,"axG",%progbits,_ZN6StringILj50EE6printfEPKcz,comdat
 9270              		.align	1
 9271              		.p2align 2,,3
 9272              		.weak	_ZN6StringILj50EE6printfEPKcz
 9273              		.syntax unified
 9274              		.thumb
 9275              		.thumb_func
 9276              		.fpu softvfp
 9277              		.type	_ZN6StringILj50EE6printfEPKcz, %function
 9278              	_ZN6StringILj50EE6printfEPKcz:
 9279              		@ args = 4, pretend = 12, frame = 16
 9280              		@ frame_needed = 0, uses_anonymous_args = 1
 9281 0000 0EB4     		push	{r1, r2, r3}
 9282 0002 10B5     		push	{r4, lr}
 9283 0004 3324     		movs	r4, #51
 9284 0006 85B0     		sub	sp, sp, #20
 9285 0008 07AB     		add	r3, sp, #28
 9286 000a 53F8041B 		ldr	r1, [r3], #4
 9287 000e 0290     		str	r0, [sp, #8]
 9288 0010 1A46     		mov	r2, r3
 9289 0012 02A8     		add	r0, sp, #8
 9290 0014 0193     		str	r3, [sp, #4]
 9291 0016 0394     		str	r4, [sp, #12]
ARM GAS  /tmp/ccx5mP1m.s 			page 164


 9292 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 9293 001c 05B0     		add	sp, sp, #20
 9294              		@ sp needed
 9295 001e BDE81040 		pop	{r4, lr}
 9296 0022 03B0     		add	sp, sp, #12
 9297 0024 7047     		bx	lr
 9298              		.size	_ZN6StringILj50EE6printfEPKcz, .-_ZN6StringILj50EE6printfEPKcz
 9299 0026 00BF     		.section	.text._ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef,"ax",%progbits
 9300              		.align	1
 9301              		.p2align 2,,3
 9302              		.global	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef
 9303              		.syntax unified
 9304              		.thumb
 9305              		.thumb_func
 9306              		.fpu softvfp
 9307              		.type	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef, %function
 9308              	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef:
 9309              		@ args = 0, pretend = 0, frame = 72
 9310              		@ frame_needed = 0, uses_anonymous_args = 0
 9311 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 9312 0004 8F68     		ldr	r7, [r1, #8]
 9313 0006 97B0     		sub	sp, sp, #92
 9314 0008 3B7D     		ldrb	r3, [r7, #20]	@ zero_extendqisi2
 9315 000a 0D46     		mov	r5, r1
 9316 000c 013B     		subs	r3, r3, #1
 9317 000e 0446     		mov	r4, r0
 9318 0010 1646     		mov	r6, r2
 9319 0012 2D2B     		cmp	r3, #45
 9320 0014 00F2D086 		bhi	.L1864
 9321 0018 DFE813F0 		tbh	[pc, r3, lsl #1]
 9322              	.L1866:
 9323 001c 8206     		.2byte	(.L1865-.L1866)/2
 9324 001e 5D05     		.2byte	(.L1867-.L1866)/2
 9325 0020 9D05     		.2byte	(.L1868-.L1866)/2
 9326 0022 9505     		.2byte	(.L1869-.L1866)/2
 9327 0024 0205     		.2byte	(.L1870-.L1866)/2
 9328 0026 B704     		.2byte	(.L1871-.L1866)/2
 9329 0028 5906     		.2byte	(.L1872-.L1866)/2
 9330 002a D905     		.2byte	(.L1873-.L1866)/2
 9331 002c 4605     		.2byte	(.L1874-.L1866)/2
 9332 002e B704     		.2byte	(.L1871-.L1866)/2
 9333 0030 5906     		.2byte	(.L1872-.L1866)/2
 9334 0032 D905     		.2byte	(.L1873-.L1866)/2
 9335 0034 4605     		.2byte	(.L1874-.L1866)/2
 9336 0036 3005     		.2byte	(.L1875-.L1866)/2
 9337 0038 7D05     		.2byte	(.L1876-.L1866)/2
 9338 003a 5E00     		.2byte	(.L1877-.L1866)/2
 9339 003c F901     		.2byte	(.L1878-.L1866)/2
 9340 003e F901     		.2byte	(.L1878-.L1866)/2
 9341 0040 CA01     		.2byte	(.L1879-.L1866)/2
 9342 0042 B901     		.2byte	(.L1880-.L1866)/2
 9343 0044 AF01     		.2byte	(.L1881-.L1866)/2
 9344 0046 C703     		.2byte	(.L1882-.L1866)/2
 9345 0048 C703     		.2byte	(.L1882-.L1866)/2
 9346 004a AA03     		.2byte	(.L1883-.L1866)/2
 9347 004c 8800     		.2byte	(.L1894-.L1866)/2
 9348 004e 9F00     		.2byte	(.L1895-.L1866)/2
ARM GAS  /tmp/ccx5mP1m.s 			page 165


 9349 0050 6F02     		.2byte	(.L1886-.L1866)/2
 9350 0052 4D02     		.2byte	(.L1887-.L1866)/2
 9351 0054 2E00     		.2byte	(.L1898-.L1866)/2
 9352 0056 1706     		.2byte	(.L1889-.L1866)/2
 9353 0058 8804     		.2byte	(.L1890-.L1866)/2
 9354 005a 4A04     		.2byte	(.L1891-.L1866)/2
 9355 005c 2E00     		.2byte	(.L1898-.L1866)/2
 9356 005e EF03     		.2byte	(.L1893-.L1866)/2
 9357 0060 8800     		.2byte	(.L1894-.L1866)/2
 9358 0062 9F00     		.2byte	(.L1895-.L1866)/2
 9359 0064 B300     		.2byte	(.L1896-.L1866)/2
 9360 0066 7C01     		.2byte	(.L1897-.L1866)/2
 9361 0068 2E00     		.2byte	(.L1898-.L1866)/2
 9362 006a 1701     		.2byte	(.L1899-.L1866)/2
 9363 006c 1B05     		.2byte	(.L1900-.L1866)/2
 9364 006e A004     		.2byte	(.L1901-.L1866)/2
 9365 0070 C102     		.2byte	(.L1902-.L1866)/2
 9366 0072 2703     		.2byte	(.L1903-.L1866)/2
 9367 0074 3604     		.2byte	(.L1904-.L1866)/2
 9368 0076 AB06     		.2byte	(.L1905-.L1866)/2
 9369              		.p2align 1
 9370              	.L1898:
 9371 0078 0022     		movs	r2, #0
 9372 007a 0221     		movs	r1, #2
 9373 007c 4FF0FF30 		mov	r0, #-1
 9374 0080 0127     		movs	r7, #1
 9375 0082 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 9376 0086 84F8F820 		strb	r2, [r4, #248]
 9377 008a 03F0CF03 		and	r3, r3, #207
 9378 008e 62F34103 		bfi	r3, r2, #1, #1
 9379 0092 84F8F930 		strb	r3, [r4, #249]
 9380 0096 C4F8F420 		str	r2, [r4, #244]
 9381 009a C4F8E400 		str	r0, [r4, #228]
 9382 009e C4F8F010 		str	r1, [r4, #240]
 9383 00a2 C4F8EC70 		str	r7, [r4, #236]
 9384 00a6 2068     		ldr	r0, [r4]
 9385 00a8 FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 9386 00ac C4F8A800 		str	r0, [r4, #168]	@ float
 9387 00b0 2068     		ldr	r0, [r4]
 9388 00b2 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 9389 00b6 C4F80071 		str	r7, [r4, #256]
 9390 00ba C4F8DC00 		str	r0, [r4, #220]	@ float
 9391              	.L2207:
 9392              		.syntax unified
 9393              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9394 00be BFF35F8F 		dmb
 9395              	@ 0 "" 2
 9396              		.thumb
 9397              		.syntax unified
 9398 00c2 AA68     		ldr	r2, [r5, #8]
 9399 00c4 C4F8FC70 		str	r7, [r4, #252]
 9400 00c8 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9401 00ca 3B44     		add	r3, r3, r7
 9402 00cc DBB2     		uxtb	r3, r3
 9403 00ce 1375     		strb	r3, [r2, #20]
 9404              	.L1918:
 9405 00d0 93B1     		cbz	r3, .L1908
ARM GAS  /tmp/ccx5mP1m.s 			page 166


 9406              	.L1863:
 9407 00d2 17B0     		add	sp, sp, #92
 9408              		@ sp needed
 9409 00d4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 9410              	.L1877:
 9411 00d8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9412 00dc 0028     		cmp	r0, #0
 9413 00de 39D0     		beq	.L2202
 9414 00e0 AC49     		ldr	r1, .L2265
 9415 00e2 3046     		mov	r0, r6
 9416 00e4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9417 00e8 8021     		movs	r1, #128
 9418 00ea AB4A     		ldr	r2, .L2265+4
 9419              	.L2208:
 9420 00ec 2068     		ldr	r0, [r4]
 9421 00ee FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9422              	.L2209:
 9423 00f2 0022     		movs	r2, #0
 9424 00f4 AB68     		ldr	r3, [r5, #8]
 9425 00f6 1A75     		strb	r2, [r3, #20]
 9426              	.L1908:
 9427 00f8 0023     		movs	r3, #0
 9428 00fa 2946     		mov	r1, r5
 9429 00fc 2B71     		strb	r3, [r5, #4]
 9430 00fe 2046     		mov	r0, r4
 9431 0100 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 9432              	.L2080:
 9433 0104 AB68     		ldr	r3, [r5, #8]
 9434 0106 1969     		ldr	r1, [r3, #16]
 9435 0108 0029     		cmp	r1, #0
 9436 010a 00F05286 		beq	.L2236
 9437 010e 3046     		mov	r0, r6
 9438 0110 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9439 0114 0021     		movs	r1, #0
 9440 0116 0222     		movs	r2, #2
 9441 0118 AB68     		ldr	r3, [r5, #8]
 9442 011a 1961     		str	r1, [r3, #16]
 9443              	.L2077:
 9444 011c 3368     		ldr	r3, [r6]
 9445 011e 2946     		mov	r1, r5
 9446 0120 2046     		mov	r0, r4
 9447 0122 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 9448 0126 17B0     		add	sp, sp, #92
 9449              		@ sp needed
 9450 0128 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 9451              	.L1894:
 9452 012c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9453 0130 80B1     		cbz	r0, .L2202
 9454 0132 AA68     		ldr	r2, [r5, #8]
 9455 0134 2168     		ldr	r1, [r4]
 9456 0136 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9457 0138 91F89410 		ldrb	r1, [r1, #148]	@ zero_extendqisi2
 9458 013c 0133     		adds	r3, r3, #1
 9459 013e DBB2     		uxtb	r3, r3
 9460 0140 0929     		cmp	r1, #9
 9461 0142 1375     		strb	r3, [r2, #20]
 9462 0144 C4D1     		bne	.L1918
ARM GAS  /tmp/ccx5mP1m.s 			page 167


 9463 0146 0023     		movs	r3, #0
 9464 0148 944A     		ldr	r2, .L2265+8
 9465 014a 0093     		str	r3, [sp]
 9466              	.L2205:
 9467 014c 2946     		mov	r1, r5
 9468 014e 2046     		mov	r0, r4
 9469 0150 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 9470              	.L2202:
 9471 0154 AB68     		ldr	r3, [r5, #8]
 9472 0156 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 9473 0158 BAE7     		b	.L1918
 9474              	.L1895:
 9475 015a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9476 015e 0028     		cmp	r0, #0
 9477 0160 F8D0     		beq	.L2202
 9478 0162 FFF7FEFF 		bl	millis
 9479 0166 2368     		ldr	r3, [r4]
 9480 0168 C4F81803 		str	r0, [r4, #792]
 9481 016c 93F89410 		ldrb	r1, [r3, #148]	@ zero_extendqisi2
 9482 0170 0029     		cmp	r1, #0
 9483 0172 40F02C87 		bne	.L2237
 9484              	.L2206:
 9485 0176 AA68     		ldr	r2, [r5, #8]
 9486 0178 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9487 017a 0133     		adds	r3, r3, #1
 9488 017c DBB2     		uxtb	r3, r3
 9489 017e 1375     		strb	r3, [r2, #20]
 9490 0180 A6E7     		b	.L1918
 9491              	.L1896:
 9492 0182 FFF7FEFF 		bl	millis
 9493 0186 2268     		ldr	r2, [r4]
 9494 0188 D4F81833 		ldr	r3, [r4, #792]
 9495 018c 92F89410 		ldrb	r1, [r2, #148]	@ zero_extendqisi2
 9496 0190 C71A     		subs	r7, r0, r3
 9497 0192 1046     		mov	r0, r2
 9498 0194 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 9499 0198 8149     		ldr	r1, .L2265+12
 9500 019a 406A     		ldr	r0, [r0, #36]	@ float
 9501 019c FFF7FEFF 		bl	__aeabi_fmul
 9502 01a0 FFF7FEFF 		bl	__aeabi_f2uiz
 9503 01a4 8742     		cmp	r7, r0
 9504 01a6 D5D3     		bcc	.L2202
 9505 01a8 2068     		ldr	r0, [r4]
 9506 01aa 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 9507 01ae 002B     		cmp	r3, #0
 9508 01b0 00F02086 		beq	.L2204
 9509 01b4 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 9510 01b8 0128     		cmp	r0, #1
 9511 01ba 0746     		mov	r7, r0
 9512 01bc 01F06B80 		beq	.L2238
 9513 01c0 0027     		movs	r7, #0
 9514 01c2 0121     		movs	r1, #1
 9515 01c4 84F81C73 		strb	r7, [r4, #796]
 9516 01c8 2068     		ldr	r0, [r4]
 9517 01ca FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 9518 01ce 4FF0FF3E 		mov	lr, #-1
 9519 01d2 0120     		movs	r0, #1
ARM GAS  /tmp/ccx5mP1m.s 			page 168


 9520 01d4 0221     		movs	r1, #2
 9521 01d6 4FF00042 		mov	r2, #-2147483648
 9522 01da 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 9523 01de 84F8F870 		strb	r7, [r4, #248]
 9524 01e2 03F0CF03 		and	r3, r3, #207
 9525 01e6 67F34103 		bfi	r3, r7, #1, #1
 9526 01ea 84F8F930 		strb	r3, [r4, #249]
 9527 01ee D4F88032 		ldr	r3, [r4, #640]
 9528 01f2 C4F8E4E0 		str	lr, [r4, #228]
 9529 01f6 5F07     		lsls	r7, r3, #29
 9530 01f8 C4F8EC00 		str	r0, [r4, #236]
 9531 01fc C4F8F010 		str	r1, [r4, #240]
 9532 0200 C4F8F420 		str	r2, [r4, #244]
 9533 0204 01F18480 		bmi	.L2239
 9534 0208 2768     		ldr	r7, [r4]
 9535 020a D7F86414 		ldr	r1, [r7, #1124]	@ float
 9536 020e D7F84C04 		ldr	r0, [r7, #1100]	@ float
 9537 0212 FFF7FEFF 		bl	__aeabi_fsub
 9538 0216 6349     		ldr	r1, .L2265+16
 9539 0218 FFF7FEFF 		bl	__aeabi_fmul
 9540              	.L2023:
 9541 021c C4F8A800 		str	r0, [r4, #168]	@ float
 9542 0220 97F89410 		ldrb	r1, [r7, #148]	@ zero_extendqisi2
 9543 0224 3846     		mov	r0, r7
 9544 0226 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 9545 022a 0123     		movs	r3, #1
 9546 022c C269     		ldr	r2, [r0, #28]	@ float
 9547 022e C4F80031 		str	r3, [r4, #256]
 9548 0232 C4F8DC20 		str	r2, [r4, #220]	@ float
 9549              		.syntax unified
 9550              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9551 0236 BFF35F8F 		dmb
 9552              	@ 0 "" 2
 9553              		.thumb
 9554              		.syntax unified
 9555 023a AA68     		ldr	r2, [r5, #8]
 9556 023c C4F8FC30 		str	r3, [r4, #252]
 9557 0240 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9558 0242 0133     		adds	r3, r3, #1
 9559 0244 DBB2     		uxtb	r3, r3
 9560 0246 1375     		strb	r3, [r2, #20]
 9561 0248 42E7     		b	.L1918
 9562              	.L1899:
 9563 024a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9564 024e 0028     		cmp	r0, #0
 9565 0250 80D0     		beq	.L2202
 9566 0252 2068     		ldr	r0, [r4]
 9567 0254 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 9568 0258 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 9569 025c 94F82B83 		ldrb	r8, [r4, #811]	@ zero_extendqisi2
 9570 0260 0590     		str	r0, [sp, #20]
 9571 0262 B8F1010F 		cmp	r8, #1
 9572 0266 40F39387 		ble	.L2032
 9573 026a D4F80893 		ldr	r9, [r4, #776]	@ float
 9574 026e D4F80CB3 		ldr	fp, [r4, #780]	@ float
 9575 0272 4846     		mov	r0, r9
 9576 0274 5946     		mov	r1, fp
ARM GAS  /tmp/ccx5mP1m.s 			page 169


 9577 0276 FFF7FEFF 		bl	__aeabi_fsub
 9578 027a D4F81473 		ldr	r7, [r4, #788]	@ float
 9579 027e 20F0004A 		bic	r10, r0, #-2147483648
 9580 0282 3946     		mov	r1, r7
 9581 0284 3846     		mov	r0, r7
 9582 0286 FFF7FEFF 		bl	__aeabi_fcmpun
 9583 028a 20B9     		cbnz	r0, .L2199
 9584 028c 5146     		mov	r1, r10
 9585 028e 3846     		mov	r0, r7
 9586 0290 FFF7FEFF 		bl	__aeabi_fcmplt
 9587 0294 00B1     		cbz	r0, .L2073
 9588              	.L2199:
 9589 0296 BA46     		mov	r10, r7
 9590              	.L2073:
 9591 0298 94F82A23 		ldrb	r2, [r4, #810]	@ zero_extendqisi2
 9592 029c C4F814A3 		str	r10, [r4, #788]	@ float
 9593 02a0 62B9     		cbnz	r2, .L2035
 9594 02a2 059B     		ldr	r3, [sp, #20]
 9595 02a4 93F82C70 		ldrb	r7, [r3, #44]	@ zero_extendqisi2
 9596 02a8 012F     		cmp	r7, #1
 9597 02aa 07DD     		ble	.L2035
 9598 02ac 059B     		ldr	r3, [sp, #20]
 9599 02ae 5046     		mov	r0, r10
 9600 02b0 996A     		ldr	r1, [r3, #40]	@ float
 9601 02b2 FFF7FEFF 		bl	__aeabi_fcmple
 9602 02b6 0028     		cmp	r0, #0
 9603 02b8 00F00E87 		beq	.L2240
 9604              	.L2035:
 9605 02bc 4946     		mov	r1, r9
 9606 02be 5846     		mov	r0, fp
 9607 02c0 FFF7FEFF 		bl	__aeabi_fadd
 9608 02c4 4FF07C51 		mov	r1, #1056964608
 9609 02c8 FFF7FEFF 		bl	__aeabi_fmul
 9610 02cc 0246     		mov	r2, r0
 9611 02ce C4F80803 		str	r0, [r4, #776]	@ float
 9612              	.L2037:
 9613 02d2 D4F8FC12 		ldr	r1, [r4, #764]
 9614 02d6 0029     		cmp	r1, #0
 9615 02d8 C0F2FC87 		blt	.L2038
 9616 02dc 94F82A33 		ldrb	r3, [r4, #810]	@ zero_extendqisi2
 9617 02e0 3148     		ldr	r0, .L2265+20
 9618 02e2 8068     		ldr	r0, [r0, #8]
 9619 02e4 0093     		str	r3, [sp]
 9620 02e6 0123     		movs	r3, #1
 9621 02e8 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 9622              	.L2039:
 9623 02ec AA68     		ldr	r2, [r5, #8]
 9624 02ee 2168     		ldr	r1, [r4]
 9625 02f0 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9626 02f2 91F89410 		ldrb	r1, [r1, #148]	@ zero_extendqisi2
 9627 02f6 0133     		adds	r3, r3, #1
 9628 02f8 DBB2     		uxtb	r3, r3
 9629 02fa 1375     		strb	r3, [r2, #20]
 9630 02fc 0029     		cmp	r1, #0
 9631 02fe 00F08583 		beq	.L1943
 9632 0302 94F82923 		ldrb	r2, [r4, #809]	@ zero_extendqisi2
 9633 0306 002A     		cmp	r2, #0
ARM GAS  /tmp/ccx5mP1m.s 			page 170


 9634 0308 40F08083 		bne	.L1943
 9635 030c 1346     		mov	r3, r2
 9636 030e 0092     		str	r2, [sp]
 9637              	.L2203:
 9638 0310 264A     		ldr	r2, .L2265+24
 9639 0312 1BE7     		b	.L2205
 9640              	.L1897:
 9641 0314 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9642 0318 0028     		cmp	r0, #0
 9643 031a 3FF41BAF 		beq	.L2202
 9644 031e 4FF00008 		mov	r8, #0
 9645 0322 214F     		ldr	r7, .L2265+20
 9646 0324 4146     		mov	r1, r8
 9647 0326 F868     		ldr	r0, [r7, #12]
 9648 0328 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 9649 032c 94F82B33 		ldrb	r3, [r4, #811]	@ zero_extendqisi2
 9650 0330 2168     		ldr	r1, [r4]
 9651 0332 0133     		adds	r3, r3, #1
 9652 0334 84F82B33 		strb	r3, [r4, #811]
 9653 0338 91F89430 		ldrb	r3, [r1, #148]	@ zero_extendqisi2
 9654 033c 84F82883 		strb	r8, [r4, #808]
 9655 0340 84F82A83 		strb	r8, [r4, #810]
 9656 0344 002B     		cmp	r3, #0
 9657 0346 40F0F786 		bne	.L2025
 9658 034a D4F8A830 		ldr	r3, [r4, #168]	@ float
 9659 034e C4F80833 		str	r3, [r4, #776]	@ float
 9660              	.L2026:
 9661 0352 D4F8FC32 		ldr	r3, [r4, #764]
 9662 0356 002B     		cmp	r3, #0
 9663 0358 C0F22A87 		blt	.L2241
 9664              	.L2028:
 9665 035c AA68     		ldr	r2, [r5, #8]
 9666 035e 91F89410 		ldrb	r1, [r1, #148]	@ zero_extendqisi2
 9667 0362 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9668 0364 0929     		cmp	r1, #9
 9669 0366 03F10103 		add	r3, r3, #1
 9670 036a DBB2     		uxtb	r3, r3
 9671 036c 1375     		strb	r3, [r2, #20]
 9672 036e 7FF4AFAE 		bne	.L1918
 9673 0372 0023     		movs	r3, #0
 9674 0374 0D4A     		ldr	r2, .L2265+24
 9675 0376 0093     		str	r3, [sp]
 9676 0378 E8E6     		b	.L2205
 9677              	.L1881:
 9678 037a 90F8CC33 		ldrb	r3, [r0, #972]	@ zero_extendqisi2
 9679 037e DB07     		lsls	r3, r3, #31
 9680 0380 00F1BB85 		bmi	.L2242
 9681              	.L1971:
 9682 0384 0023     		movs	r3, #0
 9683 0386 84F8CD33 		strb	r3, [r4, #973]
 9684              	.L2210:
 9685 038a 3B75     		strb	r3, [r7, #20]
 9686 038c B4E6     		b	.L1908
 9687              	.L1880:
 9688 038e 1523     		movs	r3, #21
 9689 0390 3B75     		strb	r3, [r7, #20]
 9690 0392 9EE6     		b	.L1863
ARM GAS  /tmp/ccx5mP1m.s 			page 171


 9691              	.L2266:
 9692              		.align	2
 9693              	.L2265:
 9694 0394 20000000 		.word	.LC137
 9695 0398 9C000000 		.word	.LC154
 9696 039c 24000000 		.word	.LC46
 9697 03a0 00007A44 		.word	1148846080
 9698 03a4 CDCC8CBF 		.word	-1081291571
 9699 03a8 00000000 		.word	reprap
 9700 03ac 84010000 		.word	.LC160
 9701              	.L1879:
 9702 03b0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9703 03b4 0028     		cmp	r0, #0
 9704 03b6 3FF4CDAE 		beq	.L2202
 9705 03ba 0027     		movs	r7, #0
 9706 03bc D4F88422 		ldr	r2, [r4, #644]	@ float
 9707 03c0 3946     		mov	r1, r7
 9708 03c2 2068     		ldr	r0, [r4]
 9709 03c4 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 9710 03c8 D4F88822 		ldr	r2, [r4, #648]	@ float
 9711 03cc 0121     		movs	r1, #1
 9712 03ce 2068     		ldr	r0, [r4]
 9713 03d0 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 9714 03d4 226C     		ldr	r2, [r4, #64]
 9715 03d6 D4F8F031 		ldr	r3, [r4, #496]
 9716 03da 1168     		ldr	r1, [r2]
 9717 03dc 9869     		ldr	r0, [r3, #24]	@ float
 9718 03de DA69     		ldr	r2, [r3, #28]	@ float
 9719 03e0 8968     		ldr	r1, [r1, #8]
 9720 03e2 1B6A     		ldr	r3, [r3, #32]	@ float
 9721 03e4 C4F81C22 		str	r2, [r4, #540]	@ float
 9722 03e8 C4F8E020 		str	r2, [r4, #224]	@ float
 9723 03ec 4860     		str	r0, [r1, #4]	@ float
 9724 03ee C4F80C31 		str	r3, [r4, #268]	@ float
 9725 03f2 DA49     		ldr	r1, .L2267
 9726 03f4 84F87E70 		strb	r7, [r4, #126]
 9727 03f8 3046     		mov	r0, r6
 9728 03fa FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9729 03fe D84A     		ldr	r2, .L2267+4
 9730 0400 8021     		movs	r1, #128
 9731 0402 2068     		ldr	r0, [r4]
 9732 0404 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9733 0408 AB68     		ldr	r3, [r5, #8]
 9734 040a 1F75     		strb	r7, [r3, #20]
 9735 040c 74E6     		b	.L1908
 9736              	.L1878:
 9737 040e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9738 0412 0028     		cmp	r0, #0
 9739 0414 3FF49EAE 		beq	.L2202
 9740 0418 D4F8FC71 		ldr	r7, [r4, #508]
 9741 041c D4F8A860 		ldr	r6, [r4, #168]	@ float
 9742 0420 04F18401 		add	r1, r4, #132
 9743 0424 57B1     		cbz	r7, .L1964
 9744 0426 0A46     		mov	r2, r1
 9745 0428 D4F8F031 		ldr	r3, [r4, #496]
 9746 042c 03EB8707 		add	r7, r3, r7, lsl #2
 9747              	.L1965:
ARM GAS  /tmp/ccx5mP1m.s 			page 172


 9748 0430 53F8040B 		ldr	r0, [r3], #4	@ float
 9749 0434 9F42     		cmp	r7, r3
 9750 0436 42F8040B 		str	r0, [r2], #4	@ float
 9751 043a F9D1     		bne	.L1965
 9752              	.L1964:
 9753 043c 0023     		movs	r3, #0
 9754 043e 04F1A002 		add	r2, r4, #160
 9755 0442 2046     		mov	r0, r4
 9756 0444 FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 9757 0448 D4F8F831 		ldr	r3, [r4, #504]
 9758 044c 082B     		cmp	r3, #8
 9759 044e 09D8     		bhi	.L1962
 9760 0450 0021     		movs	r1, #0
 9761 0452 2833     		adds	r3, r3, #40
 9762 0454 04EB8303 		add	r3, r4, r3, lsl #2
 9763 0458 04F1C402 		add	r2, r4, #196
 9764              	.L1968:
 9765 045c 43F8041B 		str	r1, [r3], #4	@ float
 9766 0460 9A42     		cmp	r2, r3
 9767 0462 FBD1     		bne	.L1968
 9768              	.L1962:
 9769 0464 0022     		movs	r2, #0
 9770 0466 4FF0FF37 		mov	r7, #-1
 9771 046a 0120     		movs	r0, #1
 9772 046c 0221     		movs	r1, #2
 9773 046e 84F8F820 		strb	r2, [r4, #248]
 9774 0472 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 9775 0476 AD68     		ldr	r5, [r5, #8]
 9776 0478 03F0CF03 		and	r3, r3, #207
 9777 047c 62F34103 		bfi	r3, r2, #1, #1
 9778 0480 C4F8F420 		str	r2, [r4, #244]
 9779 0484 2A7D     		ldrb	r2, [r5, #20]	@ zero_extendqisi2
 9780 0486 84F8F930 		strb	r3, [r4, #249]
 9781 048a B64B     		ldr	r3, .L2267+8
 9782 048c 112A     		cmp	r2, #17
 9783 048e C4F8E470 		str	r7, [r4, #228]
 9784 0492 C4F8EC00 		str	r0, [r4, #236]
 9785 0496 C4F8F010 		str	r1, [r4, #240]
 9786 049a C4F8DC30 		str	r3, [r4, #220]	@ float
 9787 049e 00F0F785 		beq	.L2243
 9788              	.L1967:
 9789 04a2 1323     		movs	r3, #19
 9790 04a4 2B75     		strb	r3, [r5, #20]
 9791              	.L2066:
 9792 04a6 0123     		movs	r3, #1
 9793 04a8 C4F80031 		str	r3, [r4, #256]
 9794              		.syntax unified
 9795              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9796 04ac BFF35F8F 		dmb
 9797              	@ 0 "" 2
 9798              		.thumb
 9799              		.syntax unified
 9800 04b0 C4F8FC30 		str	r3, [r4, #252]
 9801 04b4 0DE6     		b	.L1863
 9802              	.L1887:
 9803 04b6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9804 04ba 0028     		cmp	r0, #0
ARM GAS  /tmp/ccx5mP1m.s 			page 173


 9805 04bc 3FF44AAE 		beq	.L2202
 9806 04c0 0027     		movs	r7, #0
 9807 04c2 94F82B23 		ldrb	r2, [r4, #811]	@ zero_extendqisi2
 9808 04c6 A84B     		ldr	r3, .L2267+12
 9809 04c8 0132     		adds	r2, r2, #1
 9810 04ca D868     		ldr	r0, [r3, #12]
 9811 04cc 84F82B23 		strb	r2, [r4, #811]
 9812 04d0 84F82873 		strb	r7, [r4, #808]
 9813 04d4 3946     		mov	r1, r7
 9814 04d6 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 9815 04da 2068     		ldr	r0, [r4]
 9816 04dc 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 9817 04e0 002B     		cmp	r3, #0
 9818 04e2 40F01D86 		bne	.L1991
 9819 04e6 AA68     		ldr	r2, [r5, #8]
 9820 04e8 D4F8A810 		ldr	r1, [r4, #168]	@ float
 9821 04ec 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9822 04ee C4F80813 		str	r1, [r4, #776]	@ float
 9823 04f2 0133     		adds	r3, r3, #1
 9824 04f4 DBB2     		uxtb	r3, r3
 9825 04f6 1375     		strb	r3, [r2, #20]
 9826 04f8 EAE5     		b	.L1918
 9827              	.L1886:
 9828 04fa FFF7FEFF 		bl	millis
 9829 04fe 2268     		ldr	r2, [r4]
 9830 0500 D4F81833 		ldr	r3, [r4, #792]
 9831 0504 92F89410 		ldrb	r1, [r2, #148]	@ zero_extendqisi2
 9832 0508 C71A     		subs	r7, r0, r3
 9833 050a 1046     		mov	r0, r2
 9834 050c FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 9835 0510 9649     		ldr	r1, .L2267+16
 9836 0512 406A     		ldr	r0, [r0, #36]	@ float
 9837 0514 FFF7FEFF 		bl	__aeabi_fmul
 9838 0518 FFF7FEFF 		bl	__aeabi_f2uiz
 9839 051c 8742     		cmp	r7, r0
 9840 051e FFF419AE 		bcc	.L2202
 9841 0522 2068     		ldr	r0, [r4]
 9842 0524 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 9843 0528 002B     		cmp	r3, #0
 9844 052a 00F06384 		beq	.L2204
 9845 052e FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 9846 0532 0128     		cmp	r0, #1
 9847 0534 00F07686 		beq	.L2244
 9848 0538 4FF00008 		mov	r8, #0
 9849 053c 0121     		movs	r1, #1
 9850 053e 2068     		ldr	r0, [r4]
 9851 0540 84F81C83 		strb	r8, [r4, #796]
 9852 0544 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 9853 0548 0127     		movs	r7, #1
 9854 054a 0221     		movs	r1, #2
 9855 054c 4FF00042 		mov	r2, #-2147483648
 9856 0550 4FF0FF30 		mov	r0, #-1
 9857 0554 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 9858 0558 C4F8E400 		str	r0, [r4, #228]
 9859 055c 03F0CF03 		and	r3, r3, #207
 9860 0560 68F34103 		bfi	r3, r8, #1, #1
 9861 0564 84F8F930 		strb	r3, [r4, #249]
ARM GAS  /tmp/ccx5mP1m.s 			page 174


 9862 0568 C4F8F010 		str	r1, [r4, #240]
 9863 056c C4F8F420 		str	r2, [r4, #244]
 9864 0570 84F8F880 		strb	r8, [r4, #248]
 9865 0574 C4F8EC70 		str	r7, [r4, #236]
 9866 0578 2068     		ldr	r0, [r4]
 9867 057a FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 9868 057e 2368     		ldr	r3, [r4]
 9869 0580 00F10040 		add	r0, r0, #-2147483648
 9870 0584 C4F8A800 		str	r0, [r4, #168]	@ float
 9871 0588 93F89410 		ldrb	r1, [r3, #148]	@ zero_extendqisi2
 9872 058c 1846     		mov	r0, r3
 9873 058e FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 9874 0592 C369     		ldr	r3, [r0, #28]	@ float
 9875 0594 C4F80071 		str	r7, [r4, #256]
 9876 0598 C4F8DC30 		str	r3, [r4, #220]	@ float
 9877 059c 8FE5     		b	.L2207
 9878              	.L1902:
 9879 059e D0F8FC70 		ldr	r7, [r0, #252]
 9880 05a2 002F     		cmp	r7, #0
 9881 05a4 7FF495AD 		bne	.L1863
 9882 05a8 DFF8BC81 		ldr	r8, .L2267+12
 9883 05ac 4046     		mov	r0, r8
 9884 05ae FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 9885 05b2 8146     		mov	r9, r0
 9886 05b4 4046     		mov	r0, r8
 9887 05b6 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 9888 05ba D8F80820 		ldr	r2, [r8, #8]
 9889 05be 4B46     		mov	r3, r9
 9890 05c0 0090     		str	r0, [sp]
 9891 05c2 04F1A001 		add	r1, r4, #160
 9892 05c6 1046     		mov	r0, r2
 9893 05c8 3A46     		mov	r2, r7
 9894 05ca FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 9895 05ce D4F84473 		ldr	r7, [r4, #836]	@ float
 9896 05d2 D4F8A800 		ldr	r0, [r4, #168]	@ float
 9897 05d6 3946     		mov	r1, r7
 9898 05d8 FFF7FEFF 		bl	__aeabi_fadd
 9899 05dc D4F8F831 		ldr	r3, [r4, #504]
 9900 05e0 C4F8A800 		str	r0, [r4, #168]	@ float
 9901 05e4 082B     		cmp	r3, #8
 9902 05e6 09D8     		bhi	.L2049
 9903 05e8 0021     		movs	r1, #0
 9904 05ea 2833     		adds	r3, r3, #40
 9905 05ec 04EB8303 		add	r3, r4, r3, lsl #2
 9906 05f0 04F1C402 		add	r2, r4, #196
 9907              	.L2050:
 9908 05f4 43F8041B 		str	r1, [r3], #4	@ float
 9909 05f8 9A42     		cmp	r2, r3
 9910 05fa FBD1     		bne	.L2050
 9911              	.L2049:
 9912 05fc 0022     		movs	r2, #0
 9913 05fe 4FF0FF30 		mov	r0, #-1
 9914 0602 4FF0010E 		mov	lr, #1
 9915 0606 0221     		movs	r1, #2
 9916 0608 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 9917 060c 84F8F820 		strb	r2, [r4, #248]
 9918 0610 03F0CF03 		and	r3, r3, #207
ARM GAS  /tmp/ccx5mP1m.s 			page 175


 9919 0614 62F34103 		bfi	r3, r2, #1, #1
 9920 0618 84F8F930 		strb	r3, [r4, #249]
 9921 061c 2368     		ldr	r3, [r4]
 9922 061e D3F8DCC0 		ldr	ip, [r3, #220]	@ float
 9923 0622 236C     		ldr	r3, [r4, #64]
 9924 0624 1B68     		ldr	r3, [r3]
 9925 0626 C4F8F420 		str	r2, [r4, #244]
 9926 062a 9D42     		cmp	r5, r3
 9927 062c C4F8DCC0 		str	ip, [r4, #220]	@ float
 9928 0630 C4F8E400 		str	r0, [r4, #228]
 9929 0634 C4F8ECE0 		str	lr, [r4, #236]
 9930 0638 C4F8F010 		str	r1, [r4, #240]
 9931 063c 00F02C87 		beq	.L2245
 9932              	.L2048:
 9933 0640 0123     		movs	r3, #1
 9934 0642 94F8F920 		ldrb	r2, [r4, #249]	@ zero_extendqisi2
 9935 0646 C4F8E400 		str	r0, [r4, #228]
 9936 064a 6FF38202 		bfc	r2, #2, #1
 9937 064e C4F89C70 		str	r7, [r4, #156]	@ float
 9938 0652 84F8F920 		strb	r2, [r4, #249]
 9939 0656 C4F80031 		str	r3, [r4, #256]
 9940              		.syntax unified
 9941              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9942 065a BFF35F8F 		dmb
 9943              	@ 0 "" 2
 9944              		.thumb
 9945              		.syntax unified
 9946 065e 0021     		movs	r1, #0
 9947 0660 AA68     		ldr	r2, [r5, #8]
 9948 0662 C4F8FC30 		str	r3, [r4, #252]
 9949 0666 1175     		strb	r1, [r2, #20]
 9950 0668 46E5     		b	.L1908
 9951              	.L1903:
 9952 066a D0F8FC90 		ldr	r9, [r0, #252]
 9953 066e B9F1000F 		cmp	r9, #0
 9954 0672 7FF42EAD 		bne	.L1863
 9955 0676 DFF8F0A0 		ldr	r10, .L2267+12
 9956 067a DAF82C80 		ldr	r8, [r10, #44]
 9957 067e B8F1000F 		cmp	r8, #0
 9958 0682 00F01281 		beq	.L2062
 9959 0686 5046     		mov	r0, r10
 9960 0688 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 9961 068c 0746     		mov	r7, r0
 9962 068e 5046     		mov	r0, r10
 9963 0690 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 9964 0694 DAF80820 		ldr	r2, [r10, #8]
 9965 0698 3B46     		mov	r3, r7
 9966 069a 0090     		str	r0, [sp]
 9967 069c 04F1A001 		add	r1, r4, #160
 9968 06a0 1046     		mov	r0, r2
 9969 06a2 4A46     		mov	r2, r9
 9970 06a4 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 9971 06a8 D4F8F871 		ldr	r7, [r4, #504]
 9972 06ac 082F     		cmp	r7, #8
 9973 06ae 0AD8     		bhi	.L2056
 9974 06b0 0021     		movs	r1, #0
 9975 06b2 07F12803 		add	r3, r7, #40
ARM GAS  /tmp/ccx5mP1m.s 			page 176


 9976 06b6 04EB8303 		add	r3, r4, r3, lsl #2
 9977 06ba 04F1C402 		add	r2, r4, #196
 9978              	.L2057:
 9979 06be 43F8041B 		str	r1, [r3], #4	@ float
 9980 06c2 9A42     		cmp	r2, r3
 9981 06c4 FBD1     		bne	.L2057
 9982              	.L2056:
 9983 06c6 D8F85C90 		ldr	r9, [r8, #92]
 9984 06ca B9F1000F 		cmp	r9, #0
 9985 06ce 12D0     		beq	.L2059
 9986 06d0 D4F83413 		ldr	r1, [r4, #820]	@ float
 9987 06d4 D4F83803 		ldr	r0, [r4, #824]	@ float
 9988 06d8 FFF7FEFF 		bl	__aeabi_fadd
 9989 06dc 09F17802 		add	r2, r9, #120
 9990 06e0 4244     		add	r2, r2, r8
 9991 06e2 08F17808 		add	r8, r8, #120
 9992              	.L2058:
 9993 06e6 18F8013B 		ldrb	r3, [r8], #1	@ zero_extendqisi2
 9994 06ea 3B44     		add	r3, r3, r7
 9995 06ec 2833     		adds	r3, r3, #40
 9996 06ee 4245     		cmp	r2, r8
 9997 06f0 44F82300 		str	r0, [r4, r3, lsl #2]	@ float
 9998 06f4 F7D1     		bne	.L2058
 9999              	.L2059:
 10000 06f6 0022     		movs	r2, #0
 10001 06f8 4FF0010E 		mov	lr, #1
 10002 06fc 4FF0FF30 		mov	r0, #-1
 10003 0700 0227     		movs	r7, #2
 10004 0702 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 10005 0706 216C     		ldr	r1, [r4, #64]
 10006 0708 84F8F820 		strb	r2, [r4, #248]
 10007 070c 03F0CD03 		and	r3, r3, #205
 10008 0710 0968     		ldr	r1, [r1]
 10009 0712 43EA0E03 		orr	r3, r3, lr
 10010 0716 84F8F930 		strb	r3, [r4, #249]
 10011 071a D4F84033 		ldr	r3, [r4, #832]	@ float
 10012 071e 8D42     		cmp	r5, r1
 10013 0720 C4F8F420 		str	r2, [r4, #244]
 10014 0724 C4F8E400 		str	r0, [r4, #228]
 10015 0728 C4F8ECE0 		str	lr, [r4, #236]
 10016 072c C4F8F070 		str	r7, [r4, #240]
 10017 0730 C4F8DC30 		str	r3, [r4, #220]	@ float
 10018 0734 00F0A486 		beq	.L2246
 10019              	.L2055:
 10020 0738 0122     		movs	r2, #1
 10021 073a 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 10022 073e C4F8E400 		str	r0, [r4, #228]
 10023 0742 43F00403 		orr	r3, r3, #4
 10024 0746 84F8F930 		strb	r3, [r4, #249]
 10025 074a C4F80021 		str	r2, [r4, #256]
 10026              		.syntax unified
 10027              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 10028 074e BFF35F8F 		dmb
 10029              	@ 0 "" 2
 10030              		.thumb
 10031              		.syntax unified
 10032 0752 AF68     		ldr	r7, [r5, #8]
ARM GAS  /tmp/ccx5mP1m.s 			page 177


 10033 0754 C4F8FC20 		str	r2, [r4, #252]
 10034 0758 A7E0     		b	.L2062
 10035              	.L2268:
 10036 075a 00BF     		.align	2
 10037              	.L2267:
 10038 075c B0000000 		.word	.LC155
 10039 0760 C4000000 		.word	.LC156
 10040 0764 01004842 		.word	1112014849
 10041 0768 00000000 		.word	reprap
 10042 076c 00007A44 		.word	1148846080
 10043              	.L1883:
 10044 0770 CA4B     		ldr	r3, .L2269
 10045 0772 D0F82013 		ldr	r1, [r0, #800]
 10046 0776 D3F80880 		ldr	r8, [r3, #8]
 10047 077a 08F1C807 		add	r7, r8, #200
 10048 077e 3846     		mov	r0, r7
 10049 0780 FFF7FEFF 		bl	_ZNK14GridDefinition14GetXCoordinateEj
 10050 0784 D4F82413 		ldr	r1, [r4, #804]
 10051 0788 8146     		mov	r9, r0
 10052 078a 3846     		mov	r0, r7
 10053 078c FFF7FEFF 		bl	_ZNK14GridDefinition14GetYCoordinateEj
 10054 0790 4946     		mov	r1, r9
 10055 0792 8246     		mov	r10, r0
 10056 0794 0246     		mov	r2, r0
 10057 0796 3846     		mov	r0, r7
 10058 0798 FFF7FEFF 		bl	_ZNK14GridDefinition10IsInRadiusEff
 10059 079c 0028     		cmp	r0, #0
 10060 079e 40F05583 		bne	.L2247
 10061 07a2 1F22     		movs	r2, #31
 10062 07a4 AB68     		ldr	r3, [r5, #8]
 10063 07a6 1A75     		strb	r2, [r3, #20]
 10064 07a8 93E4     		b	.L1863
 10065              	.L1882:
 10066 07aa 4821     		movs	r1, #72
 10067 07ac 2846     		mov	r0, r5
 10068 07ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10069 07b2 0028     		cmp	r0, #0
 10070 07b4 40F0D383 		bne	.L2248
 10071              	.L1972:
 10072 07b8 B84F     		ldr	r7, .L2269
 10073 07ba FB6A     		ldr	r3, [r7, #44]
 10074 07bc 43B1     		cbz	r3, .L2068
 10075 07be 94F83023 		ldrb	r2, [r4, #816]	@ zero_extendqisi2
 10076 07c2 596E     		ldr	r1, [r3, #100]
 10077 07c4 0032     		adds	r2, r2, #0
 10078 07c6 18BF     		it	ne
 10079 07c8 0122     		movne	r2, #1
 10080 07ca 3846     		mov	r0, r7
 10081 07cc FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEib
 10082              	.L2068:
 10083 07d0 F868     		ldr	r0, [r7, #12]
 10084 07d2 0121     		movs	r1, #1
 10085 07d4 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 10086              	.L1973:
 10087 07d8 AB68     		ldr	r3, [r5, #8]
 10088 07da 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 10089 07dc 172B     		cmp	r3, #23
ARM GAS  /tmp/ccx5mP1m.s 			page 178


 10090 07de 40F0FC82 		bne	.L1974
 10091 07e2 0027     		movs	r7, #0
 10092              	.L1975:
 10093 07e4 3946     		mov	r1, r7
 10094 07e6 2068     		ldr	r0, [r4]
 10095 07e8 0137     		adds	r7, r7, #1
 10096 07ea FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 10097 07ee 092F     		cmp	r7, #9
 10098 07f0 F8D1     		bne	.L1975
 10099 07f2 0023     		movs	r3, #0
 10100 07f4 C4F88032 		str	r3, [r4, #640]
 10101 07f8 7BE4     		b	.L2209
 10102              	.L1893:
 10103 07fa FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10104 07fe 0028     		cmp	r0, #0
 10105 0800 3FF4A8AC 		beq	.L2202
 10106 0804 4FF00008 		mov	r8, #0
 10107 0808 4FF0FF3E 		mov	lr, #-1
 10108 080c 0127     		movs	r7, #1
 10109 080e 0222     		movs	r2, #2
 10110 0810 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 10111 0814 A149     		ldr	r1, .L2269
 10112 0816 03F0CF03 		and	r3, r3, #207
 10113 081a 68F34103 		bfi	r3, r8, #1, #1
 10114 081e C4F8E4E0 		str	lr, [r4, #228]
 10115 0822 84F8F930 		strb	r3, [r4, #249]
 10116 0826 8868     		ldr	r0, [r1, #8]
 10117 0828 04F1A403 		add	r3, r4, #164
 10118 082c D4F8FC12 		ldr	r1, [r4, #764]
 10119 0830 84F8F880 		strb	r8, [r4, #248]
 10120 0834 C4F8F480 		str	r8, [r4, #244]
 10121 0838 C4F8EC70 		str	r7, [r4, #236]
 10122 083c 0097     		str	r7, [sp]
 10123 083e C4F8F020 		str	r2, [r4, #240]
 10124 0842 04F1A002 		add	r2, r4, #160
 10125 0846 FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 10126 084a 2068     		ldr	r0, [r4]
 10127 084c FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 10128 0850 C4F8A800 		str	r0, [r4, #168]	@ float
 10129 0854 2068     		ldr	r0, [r4]
 10130 0856 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 10131 085a C4F80071 		str	r7, [r4, #256]
 10132 085e C4F8DC00 		str	r0, [r4, #220]	@ float
 10133              		.syntax unified
 10134              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 10135 0862 BFF35F8F 		dmb
 10136              	@ 0 "" 2
 10137              		.thumb
 10138              		.syntax unified
 10139 0866 0020     		movs	r0, #0
 10140 0868 84F82B83 		strb	r8, [r4, #811]
 10141 086c A968     		ldr	r1, [r5, #8]
 10142 086e 8C4B     		ldr	r3, .L2269+4
 10143 0870 0A7D     		ldrb	r2, [r1, #20]	@ zero_extendqisi2
 10144 0872 C4F81433 		str	r3, [r4, #788]	@ float
 10145 0876 3A44     		add	r2, r2, r7
 10146 0878 D2B2     		uxtb	r2, r2
ARM GAS  /tmp/ccx5mP1m.s 			page 179


 10147 087a C4F8FC70 		str	r7, [r4, #252]
 10148 087e C4F81003 		str	r0, [r4, #784]	@ float
 10149 0882 1346     		mov	r3, r2
 10150 0884 0A75     		strb	r2, [r1, #20]
 10151 0886 23E4     		b	.L1918
 10152              	.L1904:
 10153 0888 DFF81082 		ldr	r8, .L2269
 10154 088c D8F82C20 		ldr	r2, [r8, #44]
 10155 0890 5AB1     		cbz	r2, .L2062
 10156 0892 00F26147 		addw	r7, r0, #1121
 10157 0896 3946     		mov	r1, r7
 10158 0898 5068     		ldr	r0, [r2, #4]
 10159 089a FFF7FEFF 		bl	_ZN8Filament4LoadEPKc
 10160 089e D8F84430 		ldr	r3, [r8, #68]
 10161 08a2 1907     		lsls	r1, r3, #28
 10162 08a4 00F18283 		bmi	.L2249
 10163              	.L2216:
 10164 08a8 AF68     		ldr	r7, [r5, #8]
 10165              	.L2062:
 10166 08aa 0023     		movs	r3, #0
 10167 08ac 3B75     		strb	r3, [r7, #20]
 10168 08ae 23E4     		b	.L1908
 10169              	.L1891:
 10170 08b0 DFF8E881 		ldr	r8, .L2269
 10171 08b4 09AA     		add	r2, sp, #36
 10172 08b6 D8F80800 		ldr	r0, [r8, #8]
 10173 08ba 08A9     		add	r1, sp, #32
 10174 08bc C830     		adds	r0, r0, #200
 10175 08be FFF7FEFF 		bl	_ZNK9HeightMap13GetStatisticsERfS0_
 10176 08c2 0328     		cmp	r0, #3
 10177 08c4 0746     		mov	r7, r0
 10178 08c6 40F2B782 		bls	.L2007
 10179 08ca 0998     		ldr	r0, [sp, #36]	@ float
 10180 08cc FFF7FEFF 		bl	__aeabi_f2d
 10181 08d0 CDE90201 		strd	r0, [sp, #8]
 10182 08d4 0898     		ldr	r0, [sp, #32]	@ float
 10183 08d6 FFF7FEFF 		bl	__aeabi_f2d
 10184 08da 3A46     		mov	r2, r7
 10185 08dc CDE90001 		strd	r0, [sp]
 10186 08e0 7049     		ldr	r1, .L2269+8
 10187 08e2 3046     		mov	r0, r6
 10188 08e4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10189 08e8 2946     		mov	r1, r5
 10190 08ea 3246     		mov	r2, r6
 10191 08ec 2046     		mov	r0, r4
 10192 08ee FFF7FEFF 		bl	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef
 10193 08f2 0746     		mov	r7, r0
 10194 08f4 D8F80800 		ldr	r0, [r8, #8]
 10195 08f8 C830     		adds	r0, r0, #200
 10196 08fa FFF7FEFF 		bl	_ZN9HeightMap18ExtrapolateMissingEv
 10197 08fe D8F80800 		ldr	r0, [r8, #8]
 10198 0902 0121     		movs	r1, #1
 10199 0904 FFF7FEFF 		bl	_ZN4Move7UseMeshEb
 10200              	.L2045:
 10201 0908 0022     		movs	r2, #0
 10202 090a AB68     		ldr	r3, [r5, #8]
 10203 090c 1A75     		strb	r2, [r3, #20]
ARM GAS  /tmp/ccx5mP1m.s 			page 180


 10204              	.L1939:
 10205 090e 0023     		movs	r3, #0
 10206 0910 2946     		mov	r1, r5
 10207 0912 2B71     		strb	r3, [r5, #4]
 10208 0914 2046     		mov	r0, r4
 10209 0916 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10210 091a 002F     		cmp	r7, #0
 10211 091c 3FF4F2AB 		beq	.L2080
 10212              	.L2064:
 10213 0920 0021     		movs	r1, #0
 10214 0922 AB68     		ldr	r3, [r5, #8]
 10215 0924 0222     		movs	r2, #2
 10216 0926 1961     		str	r1, [r3, #16]
 10217 0928 FFF7F8BB 		b	.L2077
 10218              	.L1890:
 10219 092c D0F82433 		ldr	r3, [r0, #804]
 10220 0930 5A4A     		ldr	r2, .L2269
 10221 0932 D0F82013 		ldr	r1, [r0, #800]
 10222 0936 D807     		lsls	r0, r3, #31
 10223 0938 9268     		ldr	r2, [r2, #8]
 10224 093a 40F15382 		bpl	.L2001
 10225 093e 0029     		cmp	r1, #0
 10226 0940 00F08082 		beq	.L2198
 10227 0944 0139     		subs	r1, r1, #1
 10228 0946 C4F82013 		str	r1, [r4, #800]
 10229              	.L2003:
 10230 094a D2F8E820 		ldr	r2, [r2, #232]
 10231 094e 9A42     		cmp	r2, r3
 10232 0950 00F00C83 		beq	.L2250
 10233 0954 1823     		movs	r3, #24
 10234 0956 3B75     		strb	r3, [r7, #20]
 10235 0958 FFF7BBBB 		b	.L1863
 10236              	.L1901:
 10237 095c D0F80033 		ldr	r3, [r0, #768]
 10238 0960 0233     		adds	r3, r3, #2
 10239 0962 40F02E82 		bne	.L2043
 10240 0966 4D4B     		ldr	r3, .L2269
 10241 0968 DF6A     		ldr	r7, [r3, #44]
 10242 096a 002F     		cmp	r7, #0
 10243 096c 00F05184 		beq	.L2251
 10244 0970 7969     		ldr	r1, [r7, #20]	@ float
 10245 0972 D0F80803 		ldr	r0, [r0, #776]	@ float
 10246 0976 FFF7FEFF 		bl	__aeabi_fadd
 10247 097a 0123     		movs	r3, #1
 10248 097c 0246     		mov	r2, r0
 10249 097e 0221     		movs	r1, #2
 10250 0980 3846     		mov	r0, r7
 10251 0982 FFF7FEFF 		bl	_ZN4Tool9SetOffsetEjfb
 10252 0986 0027     		movs	r7, #0
 10253 0988 BEE7     		b	.L2045
 10254              	.L1871:
 10255 098a 0127     		movs	r7, #1
 10256 098c 0021     		movs	r1, #0
 10257 098e 80F88170 		strb	r7, [r0, #129]
 10258 0992 0068     		ldr	r0, [r0]
 10259 0994 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 10260 0998 3946     		mov	r1, r7
ARM GAS  /tmp/ccx5mP1m.s 			page 181


 10261 099a C4F88402 		str	r0, [r4, #644]	@ float
 10262 099e 2068     		ldr	r0, [r4]
 10263 09a0 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 10264 09a4 2346     		mov	r3, r4
 10265 09a6 D4F88C22 		ldr	r2, [r4, #652]	@ float
 10266 09aa C4F88802 		str	r0, [r4, #648]	@ float
 10267 09ae C4F89022 		str	r2, [r4, #656]	@ float
 10268 09b2 53F8840F 		ldr	r0, [r3, #132]!	@ unaligned
 10269 09b6 D4F8F421 		ldr	r2, [r4, #500]
 10270 09ba 5968     		ldr	r1, [r3, #4]	@ unaligned
 10271 09bc D3F808C0 		ldr	ip, [r3, #8]	@ unaligned
 10272 09c0 D3F80CE0 		ldr	lr, [r3, #12]	@ unaligned
 10273 09c4 5160     		str	r1, [r2, #4]	@ unaligned
 10274 09c6 1060     		str	r0, [r2]	@ unaligned
 10275 09c8 C2F808C0 		str	ip, [r2, #8]	@ unaligned
 10276 09cc C2F80CE0 		str	lr, [r2, #12]	@ unaligned
 10277 09d0 1869     		ldr	r0, [r3, #16]	@ unaligned
 10278 09d2 5969     		ldr	r1, [r3, #20]	@ unaligned
 10279 09d4 1061     		str	r0, [r2, #16]	@ unaligned
 10280 09d6 5161     		str	r1, [r2, #20]	@ unaligned
 10281 09d8 AA68     		ldr	r2, [r5, #8]
 10282 09da D4F8F411 		ldr	r1, [r4, #500]
 10283 09de 5068     		ldr	r0, [r2, #4]	@ float
 10284 09e0 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10285 09e2 8861     		str	r0, [r1, #24]	@ float
 10286 09e4 517D     		ldrb	r1, [r2, #21]	@ zero_extendqisi2
 10287 09e6 3B44     		add	r3, r3, r7
 10288 09e8 DBB2     		uxtb	r3, r3
 10289 09ea C807     		lsls	r0, r1, #31
 10290 09ec 1375     		strb	r3, [r2, #20]
 10291 09ee 7FF56FAB 		bpl	.L1918
 10292 09f2 2A4A     		ldr	r2, .L2269
 10293 09f4 D06A     		ldr	r0, [r2, #44]
 10294 09f6 48B1     		cbz	r0, .L1943
 10295 09f8 D4F8FC21 		ldr	r2, [r4, #508]
 10296 09fc D4F88012 		ldr	r1, [r4, #640]
 10297 0a00 07FA02F2 		lsl	r2, r7, r2
 10298 0a04 013A     		subs	r2, r2, #1
 10299 0a06 8A43     		bics	r2, r2, r1
 10300 0a08 00F0C381 		beq	.L2252
 10301              	.L1943:
 10302 0a0c 002B     		cmp	r3, #0
 10303 0a0e 7FF460AB 		bne	.L1863
 10304 0a12 2B71     		strb	r3, [r5, #4]
 10305 0a14 2946     		mov	r1, r5
 10306 0a16 2046     		mov	r0, r4
 10307 0a18 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10308 0a1c FFF772BB 		b	.L2080
 10309              	.L1870:
 10310 0a20 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10311 0a24 0028     		cmp	r0, #0
 10312 0a26 3FF495AB 		beq	.L2202
 10313 0a2a D4F87C32 		ldr	r3, [r4, #636]
 10314 0a2e D4F88022 		ldr	r2, [r4, #640]
 10315 0a32 13EA0207 		ands	r7, r3, r2
 10316 0a36 00F0F882 		beq	.L2253
 10317 0a3a 23EA0202 		bic	r2, r3, r2
ARM GAS  /tmp/ccx5mP1m.s 			page 182


 10318 0a3e 002A     		cmp	r2, #0
 10319 0a40 14BF     		ite	ne
 10320 0a42 0423     		movne	r3, #4
 10321 0a44 0023     		moveq	r3, #0
 10322 0a46 A968     		ldr	r1, [r5, #8]
 10323 0a48 C4F87C22 		str	r2, [r4, #636]
 10324 0a4c 0B75     		strb	r3, [r1, #20]
 10325 0a4e FFF73FBB 		b	.L1918
 10326              	.L1900:
 10327 0a52 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10328 0a56 0746     		mov	r7, r0
 10329 0a58 0028     		cmp	r0, #0
 10330 0a5a 3FF455AF 		beq	.L2045
 10331 0a5e D4F80013 		ldr	r1, [r4, #768]
 10332 0a62 0129     		cmp	r1, #1
 10333 0a64 00F0FE83 		beq	.L2254
 10334 0a68 481C     		adds	r0, r1, #1
 10335 0a6a C0F2B481 		blt	.L2215
 10336 0a6e 0B4B     		ldr	r3, .L2269
 10337 0a70 3246     		mov	r2, r6
 10338 0a72 9868     		ldr	r0, [r3, #8]
 10339 0a74 FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiRK9StringRef
 10340 0a78 0746     		mov	r7, r0
 10341 0a7a 45E7     		b	.L2045
 10342              	.L1875:
 10343 0a7c 90F85E34 		ldrb	r3, [r0, #1118]	@ zero_extendqisi2
 10344 0a80 23B9     		cbnz	r3, .L1955
 10345 0a82 90F83033 		ldrb	r3, [r0, #816]	@ zero_extendqisi2
 10346 0a86 002B     		cmp	r3, #0
 10347 0a88 00F0EC82 		beq	.L2255
 10348              	.L1955:
 10349 0a8c 0023     		movs	r3, #0
 10350 0a8e 84F85D34 		strb	r3, [r4, #1117]
 10351 0a92 84F85E34 		strb	r3, [r4, #1118]
 10352 0a96 3B75     		strb	r3, [r7, #20]
 10353 0a98 FFF72EBB 		b	.L1908
 10354              	.L2270:
 10355              		.align	2
 10356              	.L2269:
 10357 0a9c 00000000 		.word	reprap
 10358 0aa0 00007A44 		.word	1148846080
 10359 0aa4 B8010000 		.word	.LC162
 10360              	.L1874:
 10361 0aa8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10362 0aac 0028     		cmp	r0, #0
 10363 0aae 3FF451AB 		beq	.L2202
 10364 0ab2 0021     		movs	r1, #0
 10365 0ab4 D4F8F421 		ldr	r2, [r4, #500]
 10366 0ab8 AB68     		ldr	r3, [r5, #8]
 10367 0aba 9768     		ldr	r7, [r2, #8]	@ float
 10368 0abc 9069     		ldr	r0, [r2, #24]	@ float
 10369 0abe 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 10370 0ac0 C4F88C70 		str	r7, [r4, #140]	@ float
 10371 0ac4 092A     		cmp	r2, #9
 10372 0ac6 5860     		str	r0, [r3, #4]	@ float
 10373 0ac8 84F88110 		strb	r1, [r4, #129]
 10374 0acc 40F05E82 		bne	.L1954
ARM GAS  /tmp/ccx5mP1m.s 			page 183


 10375 0ad0 1975     		strb	r1, [r3, #20]
 10376 0ad2 FFF711BB 		b	.L1908
 10377              	.L1867:
 10378 0ad6 90F83931 		ldrb	r3, [r0, #313]	@ zero_extendqisi2
 10379 0ada 002B     		cmp	r3, #0
 10380 0adc 3FF455AC 		beq	.L2210
 10381 0ae0 022B     		cmp	r3, #2
 10382 0ae2 7FF4F6AA 		bne	.L1863
 10383 0ae6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10384 0aea 0028     		cmp	r0, #0
 10385 0aec 3FF432AB 		beq	.L2202
 10386 0af0 CA49     		ldr	r1, .L2271
 10387 0af2 3046     		mov	r0, r6
 10388 0af4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10389 0af8 0021     		movs	r1, #0
 10390 0afa AA68     		ldr	r2, [r5, #8]
 10391 0afc 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 10392 0b00 1175     		strb	r1, [r2, #20]
 10393 0b02 002B     		cmp	r3, #0
 10394 0b04 40F0B184 		bne	.L2256
 10395              	.L1919:
 10396 0b08 0023     		movs	r3, #0
 10397 0b0a 2946     		mov	r1, r5
 10398 0b0c 2B71     		strb	r3, [r5, #4]
 10399 0b0e 2046     		mov	r0, r4
 10400 0b10 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10401 0b14 04E7     		b	.L2064
 10402              	.L1876:
 10403 0b16 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10404 0b1a 0028     		cmp	r0, #0
 10405 0b1c 3FF41AAB 		beq	.L2202
 10406 0b20 0123     		movs	r3, #1
 10407 0b22 1027     		movs	r7, #16
 10408 0b24 D4F8FC21 		ldr	r2, [r4, #508]
 10409 0b28 D4F88002 		ldr	r0, [r4, #640]
 10410 0b2c 03FA02F2 		lsl	r2, r3, r2
 10411 0b30 A968     		ldr	r1, [r5, #8]
 10412 0b32 013A     		subs	r2, r2, #1
 10413 0b34 8243     		bics	r2, r2, r0
 10414 0b36 0F75     		strb	r7, [r1, #20]
 10415 0b38 7FF4CBAA 		bne	.L1863
 10416 0b3c 0022     		movs	r2, #0
 10417 0b3e 0092     		str	r2, [sp]
 10418 0b40 B74A     		ldr	r2, .L2271+4
 10419 0b42 FFF703BB 		b	.L2205
 10420              	.L1869:
 10421 0b46 D0F87C12 		ldr	r1, [r0, #636]
 10422 0b4a 0029     		cmp	r1, #0
 10423 0b4c 40F0DE81 		bne	.L1927
 10424 0b50 3975     		strb	r1, [r7, #20]
 10425 0b52 FFF7D1BA 		b	.L1908
 10426              	.L1868:
 10427 0b56 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10428 0b5a 0028     		cmp	r0, #0
 10429 0b5c 3FF4FAAA 		beq	.L2202
 10430 0b60 B04B     		ldr	r3, .L2271+8
 10431 0b62 D3F82C90 		ldr	r9, [r3, #44]
ARM GAS  /tmp/ccx5mP1m.s 			page 184


 10432 0b66 B9F1000F 		cmp	r9, #0
 10433 0b6a 3FF4C2AA 		beq	.L2209
 10434 0b6e D4F8F831 		ldr	r3, [r4, #504]
 10435 0b72 002B     		cmp	r3, #0
 10436 0b74 3FF4BDAA 		beq	.L2209
 10437 0b78 0027     		movs	r7, #0
 10438 0b7a 04F27228 		addw	r8, r4, #626
 10439 0b7e 05E0     		b	.L1926
 10440              	.L1925:
 10441 0b80 D4F8F831 		ldr	r3, [r4, #504]
 10442 0b84 0137     		adds	r7, r7, #1
 10443 0b86 BB42     		cmp	r3, r7
 10444 0b88 7FF6B3AA 		bls	.L2209
 10445              	.L1926:
 10446 0b8c 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 10447 0b90 2846     		mov	r0, r5
 10448 0b92 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10449 0b96 0028     		cmp	r0, #0
 10450 0b98 F2D0     		beq	.L1925
 10451 0b9a D4F8F421 		ldr	r2, [r4, #500]
 10452 0b9e 04EB8703 		add	r3, r4, r7, lsl #2
 10453 0ba2 52F82700 		ldr	r0, [r2, r7, lsl #2]	@ float
 10454 0ba6 D3F88410 		ldr	r1, [r3, #132]	@ float
 10455 0baa FFF7FEFF 		bl	__aeabi_fsub
 10456 0bae 8046     		mov	r8, r0
 10457 0bb0 2846     		mov	r0, r5
 10458 0bb2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 10459 0bb6 0146     		mov	r1, r0
 10460 0bb8 4046     		mov	r0, r8
 10461 0bba FFF7FEFF 		bl	__aeabi_fadd
 10462 0bbe 3946     		mov	r1, r7
 10463 0bc0 0246     		mov	r2, r0
 10464 0bc2 0123     		movs	r3, #1
 10465 0bc4 4846     		mov	r0, r9
 10466 0bc6 FFF7FEFF 		bl	_ZN4Tool9SetOffsetEjfb
 10467 0bca FFF792BA 		b	.L2209
 10468              	.L1873:
 10469 0bce FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10470 0bd2 0028     		cmp	r0, #0
 10471 0bd4 3FF4BEAA 		beq	.L2202
 10472 0bd8 94F83023 		ldrb	r2, [r4, #816]	@ zero_extendqisi2
 10473 0bdc AB68     		ldr	r3, [r5, #8]
 10474 0bde 0032     		adds	r2, r2, #0
 10475 0be0 18BF     		it	ne
 10476 0be2 0122     		movne	r2, #1
 10477 0be4 B3F91610 		ldrsh	r1, [r3, #22]
 10478 0be8 8E48     		ldr	r0, .L2271+8
 10479 0bea FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 10480 0bee 2046     		mov	r0, r4
 10481 0bf0 FFF7FEFF 		bl	_ZN6GCodes25UpdateCurrentUserPositionEv
 10482 0bf4 0122     		movs	r2, #1
 10483 0bf6 A968     		ldr	r1, [r5, #8]
 10484 0bf8 D4F8FC01 		ldr	r0, [r4, #508]
 10485 0bfc 0B7D     		ldrb	r3, [r1, #20]	@ zero_extendqisi2
 10486 0bfe 8240     		lsls	r2, r2, r0
 10487 0c00 D4F88002 		ldr	r0, [r4, #640]
 10488 0c04 0133     		adds	r3, r3, #1
ARM GAS  /tmp/ccx5mP1m.s 			page 185


 10489 0c06 013A     		subs	r2, r2, #1
 10490 0c08 DBB2     		uxtb	r3, r3
 10491 0c0a 8243     		bics	r2, r2, r0
 10492 0c0c 0B75     		strb	r3, [r1, #20]
 10493 0c0e 7FF45FAA 		bne	.L1918
 10494 0c12 B1F91610 		ldrsh	r1, [r1, #22]
 10495 0c16 8348     		ldr	r0, .L2271+8
 10496 0c18 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 10497 0c1c AB68     		ldr	r3, [r5, #8]
 10498 0c1e 0028     		cmp	r0, #0
 10499 0c20 7CD0     		beq	.L2212
 10500 0c22 5A7D     		ldrb	r2, [r3, #21]	@ zero_extendqisi2
 10501 0c24 5207     		lsls	r2, r2, #29
 10502 0c26 79D5     		bpl	.L2212
 10503 0c28 4FF00008 		mov	r8, #0
 10504 0c2c 16AF     		add	r7, sp, #88
 10505 0c2e 07F8348D 		strb	r8, [r7, #-52]!
 10506 0c32 B3F91620 		ldrsh	r2, [r3, #22]
 10507 0c36 3846     		mov	r0, r7
 10508 0c38 7B49     		ldr	r1, .L2271+12
 10509 0c3a FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 10510 0c3e 3A46     		mov	r2, r7
 10511 0c40 CDF80080 		str	r8, [sp]
 10512 0c44 4346     		mov	r3, r8
 10513 0c46 FFF781BA 		b	.L2205
 10514              	.L1889:
 10515 0c4a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10516 0c4e 0028     		cmp	r0, #0
 10517 0c50 3FF480AA 		beq	.L2202
 10518 0c54 2068     		ldr	r0, [r4]
 10519 0c56 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 10520 0c5a FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10521 0c5e 94F82B93 		ldrb	r9, [r4, #811]	@ zero_extendqisi2
 10522 0c62 8246     		mov	r10, r0
 10523 0c64 B9F1010F 		cmp	r9, #1
 10524 0c68 40F39B82 		ble	.L1995
 10525 0c6c D4F808B3 		ldr	fp, [r4, #776]	@ float
 10526 0c70 D4F80C13 		ldr	r1, [r4, #780]	@ float
 10527 0c74 5846     		mov	r0, fp
 10528 0c76 FFF7FEFF 		bl	__aeabi_fsub
 10529 0c7a D4F81473 		ldr	r7, [r4, #788]	@ float
 10530 0c7e 20F00048 		bic	r8, r0, #-2147483648
 10531 0c82 3946     		mov	r1, r7
 10532 0c84 3846     		mov	r0, r7
 10533 0c86 FFF7FEFF 		bl	__aeabi_fcmpun
 10534 0c8a 20B9     		cbnz	r0, .L2197
 10535 0c8c 4146     		mov	r1, r8
 10536 0c8e 3846     		mov	r0, r7
 10537 0c90 FFF7FEFF 		bl	__aeabi_fcmplt
 10538 0c94 00B1     		cbz	r0, .L2069
 10539              	.L2197:
 10540 0c96 B846     		mov	r8, r7
 10541              	.L2069:
 10542 0c98 C4F81483 		str	r8, [r4, #788]	@ float
 10543 0c9c 9AF82C70 		ldrb	r7, [r10, #44]	@ zero_extendqisi2
 10544 0ca0 012F     		cmp	r7, #1
 10545 0ca2 08DD     		ble	.L1998
ARM GAS  /tmp/ccx5mP1m.s 			page 186


 10546 0ca4 4146     		mov	r1, r8
 10547 0ca6 DAF82800 		ldr	r0, [r10, #40]	@ float
 10548 0caa FFF7FEFF 		bl	__aeabi_fcmpge
 10549 0cae 8046     		mov	r8, r0
 10550 0cb0 0028     		cmp	r0, #0
 10551 0cb2 00F0A281 		beq	.L2257
 10552              	.L1998:
 10553 0cb6 5B4A     		ldr	r2, .L2271+8
 10554 0cb8 5B46     		mov	r3, fp
 10555 0cba 9068     		ldr	r0, [r2, #8]
 10556 0cbc D4F82013 		ldr	r1, [r4, #800]
 10557 0cc0 D4F82423 		ldr	r2, [r4, #804]
 10558 0cc4 C830     		adds	r0, r0, #200
 10559 0cc6 FFF7FEFF 		bl	_ZN9HeightMap13SetGridHeightEjjf
 10560 0cca FFF754BA 		b	.L2206
 10561              	.L1872:
 10562 0cce FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10563 0cd2 0028     		cmp	r0, #0
 10564 0cd4 3FF43EAA 		beq	.L2202
 10565 0cd8 5248     		ldr	r0, .L2271+8
 10566 0cda C36A     		ldr	r3, [r0, #44]
 10567 0cdc 3BB1     		cbz	r3, .L1946
 10568 0cde 94F83023 		ldrb	r2, [r4, #816]	@ zero_extendqisi2
 10569 0ce2 596E     		ldr	r1, [r3, #100]
 10570 0ce4 0032     		adds	r2, r2, #0
 10571 0ce6 18BF     		it	ne
 10572 0ce8 0122     		movne	r2, #1
 10573 0cea FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEib
 10574              	.L1946:
 10575 0cee AB68     		ldr	r3, [r5, #8]
 10576 0cf0 4C48     		ldr	r0, .L2271+8
 10577 0cf2 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 10578 0cf4 B3F91610 		ldrsh	r1, [r3, #22]
 10579 0cf8 0132     		adds	r2, r2, #1
 10580 0cfa 1A75     		strb	r2, [r3, #20]
 10581 0cfc FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 10582 0d00 0028     		cmp	r0, #0
 10583 0d02 00F08282 		beq	.L2258
 10584 0d06 0123     		movs	r3, #1
 10585 0d08 D4F8FC11 		ldr	r1, [r4, #508]
 10586 0d0c D4F88022 		ldr	r2, [r4, #640]
 10587 0d10 8B40     		lsls	r3, r3, r1
 10588 0d12 013B     		subs	r3, r3, #1
 10589 0d14 9343     		bics	r3, r3, r2
 10590 0d16 AB68     		ldr	r3, [r5, #8]
 10591 0d18 00F0C981 		beq	.L2259
 10592              	.L2212:
 10593 0d1c 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 10594 0d1e 75E6     		b	.L1943
 10595              	.L1865:
 10596 0d20 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10597 0d24 0028     		cmp	r0, #0
 10598 0d26 3FF415AA 		beq	.L2202
 10599 0d2a D4F8F821 		ldr	r2, [r4, #504]
 10600 0d2e 002A     		cmp	r2, #0
 10601 0d30 3FF4DFA9 		beq	.L2209
 10602 0d34 0027     		movs	r7, #0
ARM GAS  /tmp/ccx5mP1m.s 			page 187


 10603 0d36 04F1A008 		add	r8, r4, #160
 10604 0d3a 05E0     		b	.L1913
 10605              	.L1909:
 10606 0d3c 0137     		adds	r7, r7, #1
 10607 0d3e BA42     		cmp	r2, r7
 10608 0d40 08F10408 		add	r8, r8, #4
 10609 0d44 7FF6D5A9 		bls	.L2209
 10610              	.L1913:
 10611 0d48 D4F85834 		ldr	r3, [r4, #1112]
 10612 0d4c FB40     		lsrs	r3, r3, r7
 10613 0d4e DB07     		lsls	r3, r3, #31
 10614 0d50 F4D5     		bpl	.L1909
 10615 0d52 09AB     		add	r3, sp, #36
 10616 0d54 08AA     		add	r2, sp, #32
 10617 0d56 3946     		mov	r1, r7
 10618 0d58 2068     		ldr	r0, [r4]
 10619 0d5a FFF7FEFF 		bl	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType
 10620 0d5e 089B     		ldr	r3, [sp, #32]
 10621 0d60 022B     		cmp	r3, #2
 10622 0d62 00F02A81 		beq	.L2260
 10623 0d66 012B     		cmp	r3, #1
 10624 0d68 00F04081 		beq	.L2261
 10625              	.L2196:
 10626 0d6c D4F8F821 		ldr	r2, [r4, #504]
 10627 0d70 E4E7     		b	.L1909
 10628              	.L1905:
 10629 0d72 DFF8B080 		ldr	r8, .L2271+8
 10630 0d76 D8F82C30 		ldr	r3, [r8, #44]
 10631 0d7a 002B     		cmp	r3, #0
 10632 0d7c 3FF495AD 		beq	.L2062
 10633 0d80 D8F84420 		ldr	r2, [r8, #68]
 10634 0d84 1207     		lsls	r2, r2, #28
 10635 0d86 00F10781 		bmi	.L2262
 10636              	.L2063:
 10637 0d8a 5868     		ldr	r0, [r3, #4]
 10638 0d8c FFF7FEFF 		bl	_ZN8Filament6UnloadEv
 10639 0d90 8AE5     		b	.L2216
 10640              	.L2252:
 10641 0d92 4FF00008 		mov	r8, #0
 10642 0d96 16AF     		add	r7, sp, #88
 10643 0d98 07F8348D 		strb	r8, [r7, #-52]!
 10644 0d9c 426E     		ldr	r2, [r0, #100]
 10645 0d9e 2349     		ldr	r1, .L2271+16
 10646 0da0 3846     		mov	r0, r7
 10647 0da2 FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 10648 0da6 3A46     		mov	r2, r7
 10649 0da8 CDF80080 		str	r8, [sp]
 10650 0dac 4346     		mov	r3, r8
 10651 0dae FFF7CDB9 		b	.L2205
 10652              	.L2236:
 10653 0db2 0122     		movs	r2, #1
 10654 0db4 FFF7B2B9 		b	.L2077
 10655              	.L1864:
 10656 0db8 1D4A     		ldr	r2, .L2271+20
 10657 0dba 40F2B511 		movw	r1, #437
 10658 0dbe FFF795B9 		b	.L2208
 10659              	.L2043:
ARM GAS  /tmp/ccx5mP1m.s 			page 188


 10660 0dc2 D0F80403 		ldr	r0, [r0, #772]	@ float
 10661 0dc6 FFF7FEFF 		bl	__aeabi_f2d
 10662 0dca 0246     		mov	r2, r0
 10663 0dcc 0B46     		mov	r3, r1
 10664 0dce 3046     		mov	r0, r6
 10665 0dd0 1849     		ldr	r1, .L2271+24
 10666 0dd2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10667              	.L2215:
 10668 0dd6 0027     		movs	r7, #0
 10669 0dd8 96E5     		b	.L2045
 10670              	.L1974:
 10671 0dda 2068     		ldr	r0, [r4]
 10672 0ddc FFF7FEFF 		bl	_ZN8Platform14SetDriversIdleEv
 10673 0de0 FFF787B9 		b	.L2209
 10674              	.L2001:
 10675 0de4 D2F8E400 		ldr	r0, [r2, #228]
 10676 0de8 0131     		adds	r1, r1, #1
 10677 0dea 8142     		cmp	r1, r0
 10678 0dec 2AD0     		beq	.L2198
 10679 0dee C4F82013 		str	r1, [r4, #800]
 10680 0df2 AAE5     		b	.L2003
 10681              	.L2204:
 10682 0df4 0127     		movs	r7, #1
 10683 0df6 2946     		mov	r1, r5
 10684 0df8 2046     		mov	r0, r4
 10685 0dfa FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10686 0dfe AA68     		ldr	r2, [r5, #8]
 10687 0e00 2946     		mov	r1, r5
 10688 0e02 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10689 0e04 2046     		mov	r0, r4
 10690 0e06 3B44     		add	r3, r3, r7
 10691 0e08 1375     		strb	r3, [r2, #20]
 10692 0e0a 84F82873 		strb	r7, [r4, #808]
 10693 0e0e FFF7FEFF 		bl	_ZN6GCodes13DoManualProbeER11GCodeBuffer
 10694 0e12 AB68     		ldr	r3, [r5, #8]
 10695 0e14 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 10696 0e16 FFF75BB9 		b	.L1918
 10697              	.L2272:
 10698 0e1a 00BF     		.align	2
 10699              	.L2271:
 10700 0e1c 00000000 		.word	.LC148
 10701 0e20 94000000 		.word	.LC153
 10702 0e24 00000000 		.word	reprap
 10703 0e28 D8020000 		.word	.LC172
 10704 0e2c C0020000 		.word	.LC170
 10705 0e30 A8020000 		.word	.LC169
 10706 0e34 60020000 		.word	.LC166
 10707              	.L2007:
 10708 0e38 CB49     		ldr	r1, .L2273
 10709 0e3a 3046     		mov	r0, r6
 10710 0e3c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10711 0e40 0127     		movs	r7, #1
 10712 0e42 61E5     		b	.L2045
 10713              	.L2198:
 10714 0e44 0133     		adds	r3, r3, #1
 10715 0e46 C4F82433 		str	r3, [r4, #804]
 10716 0e4a 7EE5     		b	.L2003
ARM GAS  /tmp/ccx5mP1m.s 			page 189


 10717              	.L2247:
 10718 0e4c 4046     		mov	r0, r8
 10719 0e4e 5246     		mov	r2, r10
 10720 0e50 4946     		mov	r1, r9
 10721 0e52 FFF7FEFF 		bl	_ZNK4Move22IsAccessibleProbePointEff
 10722 0e56 0028     		cmp	r0, #0
 10723 0e58 00F0EE80 		beq	.L1978
 10724 0e5c 0027     		movs	r7, #0
 10725 0e5e 4FF0FF3E 		mov	lr, #-1
 10726 0e62 0222     		movs	r2, #2
 10727 0e64 4FF00108 		mov	r8, #1
 10728 0e68 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 10729 0e6c 2068     		ldr	r0, [r4]
 10730 0e6e 03F0CF03 		and	r3, r3, #207
 10731 0e72 67F34103 		bfi	r3, r7, #1, #1
 10732 0e76 84F8F870 		strb	r7, [r4, #248]
 10733 0e7a 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 10734 0e7e 84F8F930 		strb	r3, [r4, #249]
 10735 0e82 C4F8E4E0 		str	lr, [r4, #228]
 10736 0e86 C4F8F020 		str	r2, [r4, #240]
 10737 0e8a C4F8F470 		str	r7, [r4, #244]
 10738 0e8e C4F8EC80 		str	r8, [r4, #236]
 10739 0e92 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10740 0e96 4168     		ldr	r1, [r0, #4]	@ float
 10741 0e98 4846     		mov	r0, r9
 10742 0e9a FFF7FEFF 		bl	__aeabi_fsub
 10743 0e9e 2368     		ldr	r3, [r4]
 10744 0ea0 C4F8A000 		str	r0, [r4, #160]	@ float
 10745 0ea4 93F89410 		ldrb	r1, [r3, #148]	@ zero_extendqisi2
 10746 0ea8 1846     		mov	r0, r3
 10747 0eaa FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10748 0eae 8168     		ldr	r1, [r0, #8]	@ float
 10749 0eb0 5046     		mov	r0, r10
 10750 0eb2 FFF7FEFF 		bl	__aeabi_fsub
 10751 0eb6 C4F8A400 		str	r0, [r4, #164]	@ float
 10752 0eba 2068     		ldr	r0, [r4]
 10753 0ebc FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 10754 0ec0 C4F8A800 		str	r0, [r4, #168]	@ float
 10755 0ec4 2068     		ldr	r0, [r4]
 10756 0ec6 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 10757 0eca C4F80081 		str	r8, [r4, #256]
 10758 0ece C4F8DC00 		str	r0, [r4, #220]	@ float
 10759              		.syntax unified
 10760              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 10761 0ed2 BFF35F8F 		dmb
 10762              	@ 0 "" 2
 10763              		.thumb
 10764              		.syntax unified
 10765 0ed6 0020     		movs	r0, #0
 10766 0ed8 84F82B73 		strb	r7, [r4, #811]
 10767 0edc A968     		ldr	r1, [r5, #8]
 10768 0ede A34B     		ldr	r3, .L2273+4
 10769 0ee0 0A7D     		ldrb	r2, [r1, #20]	@ zero_extendqisi2
 10770 0ee2 C4F81433 		str	r3, [r4, #788]	@ float
 10771 0ee6 4244     		add	r2, r2, r8
 10772 0ee8 D2B2     		uxtb	r2, r2
 10773 0eea C4F8FC80 		str	r8, [r4, #252]
ARM GAS  /tmp/ccx5mP1m.s 			page 190


 10774 0eee C4F81003 		str	r0, [r4, #784]	@ float
 10775 0ef2 1346     		mov	r3, r2
 10776 0ef4 0A75     		strb	r2, [r1, #20]
 10777 0ef6 FFF7EBB8 		b	.L1918
 10778              	.L2242:
 10779 0efa 0023     		movs	r3, #0
 10780 0efc 0068     		ldr	r0, [r0]
 10781 0efe 84F8CC33 		strb	r3, [r4, #972]
 10782 0f02 FFF7FEFF 		bl	_ZN8Platform14UpdateFirmwareEv
 10783 0f06 AF68     		ldr	r7, [r5, #8]
 10784 0f08 FFF73CBA 		b	.L1971
 10785              	.L1927:
 10786 0f0c 984B     		ldr	r3, .L2273+8
 10787 0f0e 0DF1240E 		add	lr, sp, #36
 10788 0f12 9A68     		ldr	r2, [r3, #8]
 10789 0f14 D0F8FC31 		ldr	r3, [r0, #508]
 10790 0f18 D2F8FC04 		ldr	r0, [r2, #1276]
 10791 0f1c D4F88022 		ldr	r2, [r4, #640]
 10792 0f20 0768     		ldr	r7, [r0]
 10793 0f22 CDF800E0 		str	lr, [sp]
 10794 0f26 3F6C     		ldr	r7, [r7, #64]
 10795 0f28 B847     		blx	r7
 10796 0f2a 8046     		mov	r8, r0
 10797 0f2c 0028     		cmp	r0, #0
 10798 0f2e 00F0F781 		beq	.L2263
 10799 0f32 0521     		movs	r1, #5
 10800 0f34 0027     		movs	r7, #0
 10801 0f36 AA68     		ldr	r2, [r5, #8]
 10802 0f38 3B46     		mov	r3, r7
 10803 0f3a 1175     		strb	r1, [r2, #20]
 10804 0f3c 0246     		mov	r2, r0
 10805 0f3e 0097     		str	r7, [sp]
 10806 0f40 2946     		mov	r1, r5
 10807 0f42 2046     		mov	r0, r4
 10808 0f44 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 10809 0f48 8146     		mov	r9, r0
 10810 0f4a 0028     		cmp	r0, #0
 10811 0f4c 00F07F81 		beq	.L1938
 10812 0f50 AB68     		ldr	r3, [r5, #8]
 10813 0f52 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 10814 0f54 002B     		cmp	r3, #0
 10815 0f56 3FF4DAAC 		beq	.L1939
 10816 0f5a FFF7BAB8 		b	.L1863
 10817              	.L2248:
 10818 0f5e 2846     		mov	r0, r5
 10819 0f60 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 10820 0f64 0028     		cmp	r0, #0
 10821 0f66 3FF737AC 		bgt	.L1973
 10822 0f6a 25E4     		b	.L1972
 10823              	.L2250:
 10824 0f6c 2022     		movs	r2, #32
 10825 0f6e 2368     		ldr	r3, [r4]
 10826 0f70 3A75     		strb	r2, [r7, #20]
 10827 0f72 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 10828 0f76 002B     		cmp	r3, #0
 10829 0f78 3FF4ABA8 		beq	.L1863
 10830              	.L2218:
ARM GAS  /tmp/ccx5mP1m.s 			page 191


 10831 0f7c 94F82933 		ldrb	r3, [r4, #809]	@ zero_extendqisi2
 10832 0f80 002B     		cmp	r3, #0
 10833 0f82 7FF4A6A8 		bne	.L1863
 10834              	.L2187:
 10835 0f86 0093     		str	r3, [sp]
 10836 0f88 FFF7C2B9 		b	.L2203
 10837              	.L1954:
 10838 0f8c 2946     		mov	r1, r5
 10839 0f8e 2046     		mov	r0, r4
 10840 0f90 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10841 0f94 FFF7EFB8 		b	.L2206
 10842              	.L2262:
 10843 0f98 5B68     		ldr	r3, [r3, #4]
 10844 0f9a 764A     		ldr	r2, .L2273+12
 10845 0f9c 0833     		adds	r3, r3, #8
 10846 0f9e B521     		movs	r1, #181
 10847 0fa0 0068     		ldr	r0, [r0]
 10848 0fa2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 10849 0fa6 D8F82C30 		ldr	r3, [r8, #44]
 10850 0faa EEE6     		b	.L2063
 10851              	.L2249:
 10852 0fac 3B46     		mov	r3, r7
 10853 0fae 724A     		ldr	r2, .L2273+16
 10854 0fb0 B521     		movs	r1, #181
 10855 0fb2 2068     		ldr	r0, [r4]
 10856 0fb4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 10857 0fb8 76E4     		b	.L2216
 10858              	.L2260:
 10859 0fba D8F80020 		ldr	r2, [r8]	@ float
 10860 0fbe 0123     		movs	r3, #1
 10861 0fc0 3946     		mov	r1, r7
 10862 0fc2 2068     		ldr	r0, [r4]
 10863 0fc4 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 10864 0fc8 D4F8F821 		ldr	r2, [r4, #504]
 10865 0fcc B6E6     		b	.L1909
 10866              	.L2237:
 10867 0fce 1846     		mov	r0, r3
 10868 0fd0 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10869 0fd4 90F82E30 		ldrb	r3, [r0, #46]	@ zero_extendqisi2
 10870 0fd8 002B     		cmp	r3, #0
 10871 0fda 3FF4CCA8 		beq	.L2206
 10872 0fde 644B     		ldr	r3, .L2273+8
 10873 0fe0 0121     		movs	r1, #1
 10874 0fe2 D868     		ldr	r0, [r3, #12]
 10875 0fe4 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 10876 0fe8 FFF7C5B8 		b	.L2206
 10877              	.L2261:
 10878 0fec D8F80020 		ldr	r2, [r8]	@ float
 10879 0ff0 3946     		mov	r1, r7
 10880 0ff2 2068     		ldr	r0, [r4]
 10881 0ff4 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 10882 0ff8 B8E6     		b	.L2196
 10883              	.L2257:
 10884 0ffa B945     		cmp	r9, r7
 10885 0ffc C0F28380 		blt	.L2071
 10886 1000 5E4A     		ldr	r2, .L2273+20
 10887              	.L2225:
ARM GAS  /tmp/ccx5mP1m.s 			page 192


 10888 1002 40F2B511 		movw	r1, #437
 10889 1006 2068     		ldr	r0, [r4]
 10890 1008 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 10891 100c 2368     		ldr	r3, [r4]
 10892 100e AA68     		ldr	r2, [r5, #8]
 10893 1010 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 10894 1014 82F81480 		strb	r8, [r2, #20]
 10895 1018 002B     		cmp	r3, #0
 10896 101a 3FF46DA8 		beq	.L1908
 10897              	.L2220:
 10898 101e 94F82933 		ldrb	r3, [r4, #809]	@ zero_extendqisi2
 10899 1022 002B     		cmp	r3, #0
 10900 1024 7FF468A8 		bne	.L1908
 10901 1028 ADE7     		b	.L2187
 10902              	.L2253:
 10903 102a 5549     		ldr	r1, .L2273+24
 10904 102c 3046     		mov	r0, r6
 10905 102e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10906 1032 AB68     		ldr	r3, [r5, #8]
 10907 1034 1F75     		strb	r7, [r3, #20]
 10908 1036 67E5     		b	.L1919
 10909              	.L1978:
 10910 1038 5046     		mov	r0, r10
 10911 103a FFF7FEFF 		bl	__aeabi_f2d
 10912 103e CDE90201 		strd	r0, [sp, #8]
 10913 1042 4846     		mov	r0, r9
 10914 1044 FFF7FEFF 		bl	__aeabi_f2d
 10915 1048 2368     		ldr	r3, [r4]
 10916 104a 4E4A     		ldr	r2, .L2273+28
 10917 104c CDE90001 		strd	r0, [sp]
 10918 1050 1846     		mov	r0, r3
 10919 1052 40F2B521 		movw	r1, #693
 10920 1056 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 10921 105a 1F22     		movs	r2, #31
 10922 105c AB68     		ldr	r3, [r5, #8]
 10923 105e 1A75     		strb	r2, [r3, #20]
 10924 1060 FFF737B8 		b	.L1863
 10925              	.L2255:
 10926 1064 3A7E     		ldrb	r2, [r7, #24]	@ zero_extendqisi2
 10927 1066 424B     		ldr	r3, .L2273+8
 10928 1068 C2F3C002 		ubfx	r2, r2, #3, #1
 10929 106c D96A     		ldr	r1, [r3, #44]
 10930 106e FFF7FEFF 		bl	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 10931 1072 08B1     		cbz	r0, .L1956
 10932 1074 AF68     		ldr	r7, [r5, #8]
 10933 1076 09E5     		b	.L1955
 10934              	.L1956:
 10935 1078 3246     		mov	r2, r6
 10936 107a 2946     		mov	r1, r5
 10937 107c 2046     		mov	r0, r4
 10938 107e FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 10939 1082 0122     		movs	r2, #1
 10940 1084 AB68     		ldr	r3, [r5, #8]
 10941 1086 84F85D24 		strb	r2, [r4, #1117]
 10942 108a 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 10943 108c FFF720B8 		b	.L1918
 10944              	.L2243:
ARM GAS  /tmp/ccx5mP1m.s 			page 193


 10945 1090 D4F8F031 		ldr	r3, [r4, #496]
 10946 1094 3046     		mov	r0, r6
 10947 1096 9968     		ldr	r1, [r3, #8]	@ float
 10948 1098 FFF7FEFF 		bl	__aeabi_fcmpgt
 10949 109c 0028     		cmp	r0, #0
 10950 109e 3FF400AA 		beq	.L1967
 10951 10a2 1223     		movs	r3, #18
 10952 10a4 C4F8A860 		str	r6, [r4, #168]	@ float
 10953 10a8 2B75     		strb	r3, [r5, #20]
 10954 10aa FFF7FCB9 		b	.L2066
 10955              	.L2259:
 10956 10ae 5A7D     		ldrb	r2, [r3, #21]	@ zero_extendqisi2
 10957 10b0 9107     		lsls	r1, r2, #30
 10958 10b2 7FF533AE 		bpl	.L2212
 10959 10b6 4FF00008 		mov	r8, #0
 10960 10ba 16AF     		add	r7, sp, #88
 10961 10bc 07F8348D 		strb	r8, [r7, #-52]!
 10962 10c0 B3F91620 		ldrsh	r2, [r3, #22]
 10963 10c4 3846     		mov	r0, r7
 10964 10c6 3049     		ldr	r1, .L2273+32
 10965 10c8 FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 10966 10cc 3A46     		mov	r2, r7
 10967 10ce CDF80080 		str	r8, [sp]
 10968 10d2 4346     		mov	r3, r8
 10969 10d4 FFF73AB8 		b	.L2205
 10970              	.L2240:
 10971 10d8 4745     		cmp	r7, r8
 10972 10da 00F39181 		bgt	.L2075
 10973 10de 274A     		ldr	r2, .L2273+20
 10974 10e0 40F2B521 		movw	r1, #693
 10975 10e4 2068     		ldr	r0, [r4]
 10976 10e6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 10977 10ea 94F82B03 		ldrb	r0, [r4, #811]	@ zero_extendqisi2
 10978 10ee FFF7FEFF 		bl	__aeabi_i2f
 10979 10f2 0146     		mov	r1, r0
 10980 10f4 D4F81003 		ldr	r0, [r4, #784]	@ float
 10981 10f8 FFF7FEFF 		bl	__aeabi_fdiv
 10982 10fc 0246     		mov	r2, r0
 10983 10fe C4F80803 		str	r0, [r4, #776]	@ float
 10984 1102 FFF7E6B8 		b	.L2037
 10985              	.L2071:
 10986 1106 FFF7FEFF 		bl	millis
 10987 110a 1922     		movs	r2, #25
 10988 110c AB68     		ldr	r3, [r5, #8]
 10989 110e D4F80813 		ldr	r1, [r4, #776]	@ float
 10990 1112 C4F81803 		str	r0, [r4, #792]
 10991 1116 C4F80C13 		str	r1, [r4, #780]	@ float
 10992 111a 1A75     		strb	r2, [r3, #20]
 10993 111c FEF7D9BF 		b	.L1863
 10994              	.L1991:
 10995 1120 3946     		mov	r1, r7
 10996 1122 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 10997 1126 94F81C33 		ldrb	r3, [r4, #796]	@ zero_extendqisi2
 10998 112a 03F0FF08 		and	r8, r3, #255
 10999 112e 002B     		cmp	r3, #0
 11000 1130 40F03E81 		bne	.L1992
 11001 1134 154A     		ldr	r2, .L2273+36
ARM GAS  /tmp/ccx5mP1m.s 			page 194


 11002 1136 64E7     		b	.L2225
 11003              	.L2025:
 11004 1138 0846     		mov	r0, r1
 11005 113a 4146     		mov	r1, r8
 11006 113c FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 11007 1140 94F81C33 		ldrb	r3, [r4, #796]	@ zero_extendqisi2
 11008 1144 002B     		cmp	r3, #0
 11009 1146 40F06681 		bne	.L2027
 11010 114a 104A     		ldr	r2, .L2273+36
 11011 114c 40F2B511 		movw	r1, #437
 11012 1150 2068     		ldr	r0, [r4]
 11013 1152 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11014 1156 0122     		movs	r2, #1
 11015 1158 0023     		movs	r3, #0
 11016 115a 84F82A23 		strb	r2, [r4, #810]
 11017 115e C4F80833 		str	r3, [r4, #776]	@ float
 11018 1162 2168     		ldr	r1, [r4]
 11019 1164 FFF7F5B8 		b	.L2026
 11020              	.L2274:
 11021              		.align	2
 11022              	.L2273:
 11023 1168 EC010000 		.word	.LC163
 11024 116c 00007A44 		.word	1148846080
 11025 1170 00000000 		.word	reprap
 11026 1174 90020000 		.word	.LC168
 11027 1178 7C020000 		.word	.LC167
 11028 117c 94010000 		.word	.LC161
 11029 1180 84000000 		.word	.LC152
 11030 1184 D8000000 		.word	.LC157
 11031 1188 CC020000 		.word	.LC171
 11032 118c 54010000 		.word	.LC159
 11033              	.L2032:
 11034 1190 94F82A33 		ldrb	r3, [r4, #810]	@ zero_extendqisi2
 11035 1194 002B     		cmp	r3, #0
 11036 1196 00F02B81 		beq	.L2078
 11037              	.L2200:
 11038 119a D4F80823 		ldr	r2, [r4, #776]	@ float
 11039 119e FFF798B8 		b	.L2037
 11040              	.L1995:
 11041 11a2 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 11042 11a6 012B     		cmp	r3, #1
 11043 11a8 ADDC     		bgt	.L2071
 11044 11aa D4F808B3 		ldr	fp, [r4, #776]	@ float
 11045 11ae 82E5     		b	.L1998
 11046              	.L2241:
 11047 11b0 D4F80033 		ldr	r3, [r4, #768]
 11048 11b4 0233     		adds	r3, r3, #2
 11049 11b6 012B     		cmp	r3, #1
 11050 11b8 40F27A81 		bls	.L2264
 11051 11bc 94F82B33 		ldrb	r3, [r4, #811]	@ zero_extendqisi2
 11052 11c0 012B     		cmp	r3, #1
 11053 11c2 7FF4CBA8 		bne	.L2028
 11054 11c6 94F82A93 		ldrb	r9, [r4, #810]	@ zero_extendqisi2
 11055 11ca B9F1000F 		cmp	r9, #0
 11056 11ce 7FF4C5A8 		bne	.L2028
 11057 11d2 0846     		mov	r0, r1
 11058 11d4 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
ARM GAS  /tmp/ccx5mP1m.s 			page 195


 11059 11d8 04F1A008 		add	r8, r4, #160
 11060 11dc 4A46     		mov	r2, r9
 11061 11de C4F8A800 		str	r0, [r4, #168]	@ float
 11062 11e2 4146     		mov	r1, r8
 11063 11e4 B868     		ldr	r0, [r7, #8]
 11064 11e6 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 11065 11ea 4146     		mov	r1, r8
 11066 11ec B868     		ldr	r0, [r7, #8]
 11067 11ee FFF7FEFF 		bl	_ZN4Move18SetZeroHeightErrorEPKf
 11068 11f2 0022     		movs	r2, #0
 11069 11f4 D4F88032 		ldr	r3, [r4, #640]
 11070 11f8 2168     		ldr	r1, [r4]
 11071 11fa 43F00403 		orr	r3, r3, #4
 11072 11fe C4F88032 		str	r3, [r4, #640]
 11073 1202 C4F80823 		str	r2, [r4, #776]	@ float
 11074 1206 FFF7A9B8 		b	.L2028
 11075              	.L2258:
 11076 120a AB68     		ldr	r3, [r5, #8]
 11077 120c 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 11078 120e FFF7FDBB 		b	.L1943
 11079              	.L2251:
 11080 1212 AD4A     		ldr	r2, .L2275
 11081 1214 40F2B511 		movw	r1, #437
 11082 1218 0068     		ldr	r0, [r0]
 11083 121a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11084 121e 0127     		movs	r7, #1
 11085 1220 FFF772BB 		b	.L2045
 11086              	.L2244:
 11087 1224 A94B     		ldr	r3, .L2275+4
 11088 1226 0021     		movs	r1, #0
 11089 1228 D868     		ldr	r0, [r3, #12]
 11090 122a FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 11091 122e A84A     		ldr	r2, .L2275+8
 11092 1230 40F2B511 		movw	r1, #437
 11093 1234 2068     		ldr	r0, [r4]
 11094 1236 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11095              	.L2020:
 11096 123a 0021     		movs	r1, #0
 11097 123c 2368     		ldr	r3, [r4]
 11098 123e AA68     		ldr	r2, [r5, #8]
 11099 1240 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 11100 1244 1175     		strb	r1, [r2, #20]
 11101 1246 002B     		cmp	r3, #0
 11102 1248 3EF456AF 		beq	.L1908
 11103 124c E7E6     		b	.L2220
 11104              	.L1938:
 11105 124e 4246     		mov	r2, r8
 11106 1250 A049     		ldr	r1, .L2275+12
 11107 1252 3046     		mov	r0, r6
 11108 1254 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 11109 1258 AB68     		ldr	r3, [r5, #8]
 11110 125a 0127     		movs	r7, #1
 11111 125c 83F81490 		strb	r9, [r3, #20]
 11112 1260 FFF755BB 		b	.L1939
 11113              	.L2254:
 11114 1264 D4F80813 		ldr	r1, [r4, #776]	@ float
 11115 1268 D4F8A800 		ldr	r0, [r4, #168]	@ float
ARM GAS  /tmp/ccx5mP1m.s 			page 196


 11116 126c FFF7FEFF 		bl	__aeabi_fsub
 11117 1270 964B     		ldr	r3, .L2275+4
 11118 1272 04F1A007 		add	r7, r4, #160
 11119 1276 3946     		mov	r1, r7
 11120 1278 C4F8A800 		str	r0, [r4, #168]	@ float
 11121 127c 0022     		movs	r2, #0
 11122 127e 9868     		ldr	r0, [r3, #8]
 11123 1280 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 11124 1284 3946     		mov	r1, r7
 11125 1286 04F18402 		add	r2, r4, #132
 11126 128a 2046     		mov	r0, r4
 11127 128c FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 11128 1290 0027     		movs	r7, #0
 11129 1292 FFF739BB 		b	.L2045
 11130              	.L2238:
 11131 1296 DFF83492 		ldr	r9, .L2275+4
 11132 129a 0021     		movs	r1, #0
 11133 129c D9F80C00 		ldr	r0, [r9, #12]
 11134 12a0 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 11135 12a4 8C4A     		ldr	r2, .L2275+16
 11136 12a6 40F2B511 		movw	r1, #437
 11137 12aa 2068     		ldr	r0, [r4]
 11138 12ac FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11139 12b0 D4F8FC82 		ldr	r8, [r4, #764]
 11140 12b4 B8F1000F 		cmp	r8, #0
 11141 12b8 BFDB     		blt	.L2020
 11142 12ba 2068     		ldr	r0, [r4]
 11143 12bc D9F80890 		ldr	r9, [r9, #8]
 11144 12c0 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 11145 12c4 0097     		str	r7, [sp]
 11146 12c6 0246     		mov	r2, r0
 11147 12c8 3B46     		mov	r3, r7
 11148 12ca 4846     		mov	r0, r9
 11149 12cc 4146     		mov	r1, r8
 11150 12ce FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 11151 12d2 B2E7     		b	.L2020
 11152              	.L2038:
 11153 12d4 D4F8A800 		ldr	r0, [r4, #168]	@ float
 11154 12d8 1146     		mov	r1, r2
 11155 12da FFF7FEFF 		bl	__aeabi_fsub
 11156 12de DFF8EC81 		ldr	r8, .L2275+4
 11157 12e2 04F1A007 		add	r7, r4, #160
 11158 12e6 C4F8A800 		str	r0, [r4, #168]	@ float
 11159 12ea 3946     		mov	r1, r7
 11160 12ec D8F80800 		ldr	r0, [r8, #8]
 11161 12f0 0022     		movs	r2, #0
 11162 12f2 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 11163 12f6 3946     		mov	r1, r7
 11164 12f8 D8F80800 		ldr	r0, [r8, #8]
 11165 12fc FFF7FEFF 		bl	_ZN4Move18SetZeroHeightErrorEPKf
 11166 1300 3946     		mov	r1, r7
 11167 1302 04F18402 		add	r2, r4, #132
 11168 1306 2046     		mov	r0, r4
 11169 1308 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 11170 130c FEF7EEBF 		b	.L2039
 11171              	.L2239:
 11172 1310 2068     		ldr	r0, [r4]
ARM GAS  /tmp/ccx5mP1m.s 			page 197


 11173 1312 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 11174 1316 2768     		ldr	r7, [r4]
 11175 1318 00F10040 		add	r0, r0, #-2147483648
 11176 131c FEF77EBF 		b	.L2023
 11177              	.L2263:
 11178 1320 6E49     		ldr	r1, .L2275+20
 11179 1322 3046     		mov	r0, r6
 11180 1324 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11181 1328 D4F8FC21 		ldr	r2, [r4, #508]
 11182 132c DDF82490 		ldr	r9, [sp, #36]
 11183 1330 B2B1     		cbz	r2, .L1933
 11184 1332 4746     		mov	r7, r8
 11185 1334 04F27228 		addw	r8, r4, #626
 11186 1338 03E0     		b	.L1934
 11187              	.L1932:
 11188 133a 9742     		cmp	r7, r2
 11189 133c 08F10108 		add	r8, r8, #1
 11190 1340 0ED2     		bcs	.L1933
 11191              	.L1934:
 11192 1342 29FA07F3 		lsr	r3, r9, r7
 11193 1346 13F0010F 		tst	r3, #1
 11194 134a 07F10107 		add	r7, r7, #1
 11195 134e F4D0     		beq	.L1932
 11196 1350 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
 11197 1354 3046     		mov	r0, r6
 11198 1356 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 11199 135a D4F8FC21 		ldr	r2, [r4, #508]
 11200 135e ECE7     		b	.L1932
 11201              	.L1933:
 11202 1360 5F49     		ldr	r1, .L2275+24
 11203 1362 3046     		mov	r0, r6
 11204 1364 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 11205 1368 D4F8FC21 		ldr	r2, [r4, #508]
 11206 136c D4F87C92 		ldr	r9, [r4, #636]
 11207 1370 B2B1     		cbz	r2, .L1930
 11208 1372 0027     		movs	r7, #0
 11209 1374 04F27228 		addw	r8, r4, #626
 11210 1378 03E0     		b	.L1937
 11211              	.L1936:
 11212 137a 9742     		cmp	r7, r2
 11213 137c 08F10108 		add	r8, r8, #1
 11214 1380 0ED2     		bcs	.L1930
 11215              	.L1937:
 11216 1382 29FA07F3 		lsr	r3, r9, r7
 11217 1386 13F0010F 		tst	r3, #1
 11218 138a 07F10107 		add	r7, r7, #1
 11219 138e F4D0     		beq	.L1936
 11220 1390 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
 11221 1394 3046     		mov	r0, r6
 11222 1396 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 11223 139a D4F8FC21 		ldr	r2, [r4, #508]
 11224 139e ECE7     		b	.L1936
 11225              	.L1930:
 11226 13a0 0023     		movs	r3, #0
 11227 13a2 AA68     		ldr	r2, [r5, #8]
 11228 13a4 0127     		movs	r7, #1
 11229 13a6 C4F87C32 		str	r3, [r4, #636]
ARM GAS  /tmp/ccx5mP1m.s 			page 198


 11230 13aa 1375     		strb	r3, [r2, #20]
 11231 13ac FFF7AFBA 		b	.L1939
 11232              	.L1992:
 11233 13b0 2068     		ldr	r0, [r4]
 11234 13b2 D4F8A880 		ldr	r8, [r4, #168]	@ float
 11235 13b6 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 11236 13ba 0146     		mov	r1, r0
 11237 13bc 4046     		mov	r0, r8
 11238 13be FFF7FEFF 		bl	__aeabi_fsub
 11239 13c2 0146     		mov	r1, r0
 11240 13c4 D4F81003 		ldr	r0, [r4, #784]	@ float
 11241 13c8 C4F80813 		str	r1, [r4, #776]	@ float
 11242 13cc FFF7FEFF 		bl	__aeabi_fadd
 11243 13d0 AB68     		ldr	r3, [r5, #8]
 11244 13d2 2168     		ldr	r1, [r4]
 11245 13d4 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 11246 13d6 91F89410 		ldrb	r1, [r1, #148]	@ zero_extendqisi2
 11247 13da 0132     		adds	r2, r2, #1
 11248 13dc D2B2     		uxtb	r2, r2
 11249 13de 0929     		cmp	r1, #9
 11250 13e0 C4F81003 		str	r0, [r4, #784]	@ float
 11251 13e4 1A75     		strb	r2, [r3, #20]
 11252 13e6 6CD1     		bne	.L2091
 11253 13e8 0097     		str	r7, [sp]
 11254 13ea 3B46     		mov	r3, r7
 11255 13ec FEF790BF 		b	.L2203
 11256              	.L2078:
 11257 13f0 059B     		ldr	r3, [sp, #20]
 11258 13f2 93F82C30 		ldrb	r3, [r3, #44]	@ zero_extendqisi2
 11259 13f6 012B     		cmp	r3, #1
 11260 13f8 7FF7CFAE 		ble	.L2200
 11261 13fc D4F80893 		ldr	r9, [r4, #776]	@ float
 11262              	.L2075:
 11263 1400 C4F80C93 		str	r9, [r4, #780]	@ float
 11264 1404 FFF7FEFF 		bl	millis
 11265 1408 2322     		movs	r2, #35
 11266 140a AB68     		ldr	r3, [r5, #8]
 11267 140c C4F81803 		str	r0, [r4, #792]
 11268 1410 1A75     		strb	r2, [r3, #20]
 11269 1412 FEF75EBE 		b	.L1863
 11270              	.L2027:
 11271 1416 4FF0000E 		mov	lr, #0
 11272 141a 0DF11F03 		add	r3, sp, #31
 11273 141e 08AA     		add	r2, sp, #32
 11274 1420 4821     		movs	r1, #72
 11275 1422 2846     		mov	r0, r5
 11276 1424 CDF820E0 		str	lr, [sp, #32]	@ float
 11277 1428 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 11278 142c 4246     		mov	r2, r8
 11279 142e 09A9     		add	r1, sp, #36
 11280 1430 B868     		ldr	r0, [r7, #8]
 11281 1432 FFF7FEFF 		bl	_ZNK4Move25GetCurrentMachinePositionEPfb
 11282 1436 0899     		ldr	r1, [sp, #32]	@ float
 11283 1438 0B98     		ldr	r0, [sp, #44]	@ float
 11284 143a FFF7FEFF 		bl	__aeabi_fsub
 11285 143e 8046     		mov	r8, r0
 11286 1440 2068     		ldr	r0, [r4]
ARM GAS  /tmp/ccx5mP1m.s 			page 199


 11287 1442 C4F80483 		str	r8, [r4, #772]	@ float
 11288 1446 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 11289 144a 0146     		mov	r1, r0
 11290 144c 4046     		mov	r0, r8
 11291 144e FFF7FEFF 		bl	__aeabi_fsub
 11292 1452 0146     		mov	r1, r0
 11293 1454 D4F81003 		ldr	r0, [r4, #784]	@ float
 11294 1458 C4F80813 		str	r1, [r4, #776]	@ float
 11295 145c FFF7FEFF 		bl	__aeabi_fadd
 11296 1460 2168     		ldr	r1, [r4]
 11297 1462 C4F81003 		str	r0, [r4, #784]	@ float
 11298 1466 FEF774BF 		b	.L2026
 11299              	.L2256:
 11300 146a 2946     		mov	r1, r5
 11301 146c 2046     		mov	r0, r4
 11302 146e FFF7FEFF 		bl	_ZN6GCodes10AbortPrintER11GCodeBuffer
 11303 1472 AB68     		ldr	r3, [r5, #8]
 11304 1474 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 11305 1476 002B     		cmp	r3, #0
 11306 1478 3FF446AB 		beq	.L1919
 11307 147c FEF729BE 		b	.L1863
 11308              	.L2246:
 11309 1480 AB68     		ldr	r3, [r5, #8]
 11310 1482 9868     		ldr	r0, [r3, #8]
 11311 1484 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 11312 1488 0746     		mov	r7, r0
 11313 148a E068     		ldr	r0, [r4, #12]
 11314 148c 0368     		ldr	r3, [r0]
 11315 148e 9B68     		ldr	r3, [r3, #8]
 11316 1490 9847     		blx	r3
 11317 1492 381A     		subs	r0, r7, r0
 11318 1494 FFF750B9 		b	.L2055
 11319              	.L2245:
 11320 1498 E068     		ldr	r0, [r4, #12]
 11321 149a 0368     		ldr	r3, [r0]
 11322 149c 9B68     		ldr	r3, [r3, #8]
 11323 149e 9847     		blx	r3
 11324 14a0 0146     		mov	r1, r0
 11325 14a2 2846     		mov	r0, r5
 11326 14a4 FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 11327 14a8 D4F84473 		ldr	r7, [r4, #836]	@ float
 11328 14ac FFF7C8B8 		b	.L2048
 11329              	.L2264:
 11330 14b0 2A20     		movs	r0, #42
 11331 14b2 91F89430 		ldrb	r3, [r1, #148]	@ zero_extendqisi2
 11332 14b6 AA68     		ldr	r2, [r5, #8]
 11333 14b8 1075     		strb	r0, [r2, #20]
 11334 14ba 002B     		cmp	r3, #0
 11335 14bc 3EF409AE 		beq	.L1863
 11336 14c0 5CE5     		b	.L2218
 11337              	.L2091:
 11338 14c2 1346     		mov	r3, r2
 11339 14c4 FEF704BE 		b	.L1918
 11340              	.L2276:
 11341              		.align	2
 11342              	.L2275:
 11343 14c8 38020000 		.word	.LC165
ARM GAS  /tmp/ccx5mP1m.s 			page 200


 11344 14cc 00000000 		.word	reprap
 11345 14d0 1C010000 		.word	.LC158
 11346 14d4 68000000 		.word	.LC151
 11347 14d8 04020000 		.word	.LC164
 11348 14dc 38000000 		.word	.LC149
 11349 14e0 50000000 		.word	.LC150
 11350              		.size	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef, .-_ZN6GCodes15RunStateMachineER11GCo
 11351              		.section	.text._ZN6GCodes16WriteGCodeToFileER11GCodeBuffer,"ax",%progbits
 11352              		.align	1
 11353              		.p2align 2,,3
 11354              		.global	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 11355              		.syntax unified
 11356              		.thumb
 11357              		.thumb_func
 11358              		.fpu softvfp
 11359              		.type	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer, %function
 11360              	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer:
 11361              		@ args = 0, pretend = 0, frame = 56
 11362              		@ frame_needed = 0, uses_anonymous_args = 0
 11363 0000 70B5     		push	{r4, r5, r6, lr}
 11364 0002 0546     		mov	r5, r0
 11365 0004 D0F86402 		ldr	r0, [r0, #612]
 11366 0008 8EB0     		sub	sp, sp, #56
 11367 000a 0028     		cmp	r0, #0
 11368 000c 3BD0     		beq	.L2288
 11369 000e 91F84C30 		ldrb	r3, [r1, #76]	@ zero_extendqisi2
 11370 0012 0C46     		mov	r4, r1
 11371 0014 4D2B     		cmp	r3, #77
 11372 0016 12D0     		beq	.L2289
 11373 0018 472B     		cmp	r3, #71
 11374 001a 27D0     		beq	.L2290
 11375              	.L2281:
 11376 001c 04F14D01 		add	r1, r4, #77
 11377 0020 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 11378 0024 0A21     		movs	r1, #10
 11379 0026 D5F86402 		ldr	r0, [r5, #612]
 11380 002a FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 11381 002e 2146     		mov	r1, r4
 11382 0030 2846     		mov	r0, r5
 11383 0032 224B     		ldr	r3, .L2291
 11384 0034 0122     		movs	r2, #1
 11385 0036 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 11386              	.L2277:
 11387 003a 0EB0     		add	sp, sp, #56
 11388              		@ sp needed
 11389 003c 70BD     		pop	{r4, r5, r6, pc}
 11390              	.L2289:
 11391 003e 0B6C     		ldr	r3, [r1, #64]
 11392 0040 1D2B     		cmp	r3, #29
 11393 0042 EBD1     		bne	.L2281
 11394 0044 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 11395 0048 0023     		movs	r3, #0
 11396 004a 2868     		ldr	r0, [r5]
 11397 004c C5F86432 		str	r3, [r5, #612]
 11398 0050 E362     		str	r3, [r4, #44]
 11399 0052 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 11400 0056 194A     		ldr	r2, .L2291
ARM GAS  /tmp/ccx5mP1m.s 			page 201


 11401 0058 194B     		ldr	r3, .L2291+4
 11402 005a 2146     		mov	r1, r4
 11403 005c 0228     		cmp	r0, #2
 11404 005e 18BF     		it	ne
 11405 0060 1346     		movne	r3, r2
 11406 0062 0122     		movs	r2, #1
 11407 0064 2846     		mov	r0, r5
 11408 0066 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 11409 006a E6E7     		b	.L2277
 11410              	.L2290:
 11411 006c 40F2E633 		movw	r3, #998
 11412 0070 0A6C     		ldr	r2, [r1, #64]
 11413 0072 9A42     		cmp	r2, r3
 11414 0074 D2D1     		bne	.L2281
 11415 0076 5021     		movs	r1, #80
 11416 0078 2046     		mov	r0, r4
 11417 007a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 11418 007e 48B9     		cbnz	r0, .L2284
 11419 0080 D5F86402 		ldr	r0, [r5, #612]
 11420 0084 CAE7     		b	.L2281
 11421              	.L2288:
 11422 0086 2868     		ldr	r0, [r5]
 11423 0088 0E4A     		ldr	r2, .L2291+8
 11424 008a 40F2B511 		movw	r1, #437
 11425 008e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11426 0092 D2E7     		b	.L2277
 11427              	.L2284:
 11428 0094 0023     		movs	r3, #0
 11429 0096 0EAE     		add	r6, sp, #56
 11430 0098 2046     		mov	r0, r4
 11431 009a 06F8343D 		strb	r3, [r6, #-52]!
 11432 009e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 11433 00a2 0949     		ldr	r1, .L2291+12
 11434 00a4 0246     		mov	r2, r0
 11435 00a6 3046     		mov	r0, r6
 11436 00a8 FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 11437 00ac 3346     		mov	r3, r6
 11438 00ae 2146     		mov	r1, r4
 11439 00b0 2846     		mov	r0, r5
 11440 00b2 0122     		movs	r2, #1
 11441 00b4 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 11442 00b8 BFE7     		b	.L2277
 11443              	.L2292:
 11444 00ba 00BF     		.align	2
 11445              	.L2291:
 11446 00bc 24000000 		.word	.LC79
 11447 00c0 28000000 		.word	.LC80
 11448 00c4 00000000 		.word	.LC81
 11449 00c8 00000000 		.word	.LC173
 11450              		.size	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer, .-_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 11451              		.section	.text._ZN6StringILj25EE6printfEPKcz,"axG",%progbits,_ZN6StringILj25EE6printfEPKcz,comdat
 11452              		.align	1
 11453              		.p2align 2,,3
 11454              		.weak	_ZN6StringILj25EE6printfEPKcz
 11455              		.syntax unified
 11456              		.thumb
 11457              		.thumb_func
ARM GAS  /tmp/ccx5mP1m.s 			page 202


 11458              		.fpu softvfp
 11459              		.type	_ZN6StringILj25EE6printfEPKcz, %function
 11460              	_ZN6StringILj25EE6printfEPKcz:
 11461              		@ args = 4, pretend = 12, frame = 16
 11462              		@ frame_needed = 0, uses_anonymous_args = 1
 11463 0000 0EB4     		push	{r1, r2, r3}
 11464 0002 10B5     		push	{r4, lr}
 11465 0004 1A24     		movs	r4, #26
 11466 0006 85B0     		sub	sp, sp, #20
 11467 0008 07AB     		add	r3, sp, #28
 11468 000a 53F8041B 		ldr	r1, [r3], #4
 11469 000e 0290     		str	r0, [sp, #8]
 11470 0010 1A46     		mov	r2, r3
 11471 0012 02A8     		add	r0, sp, #8
 11472 0014 0193     		str	r3, [sp, #4]
 11473 0016 0394     		str	r4, [sp, #12]
 11474 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 11475 001c 05B0     		add	sp, sp, #20
 11476              		@ sp needed
 11477 001e BDE81040 		pop	{r4, lr}
 11478 0022 03B0     		add	sp, sp, #12
 11479 0024 7047     		bx	lr
 11480              		.size	_ZN6StringILj25EE6printfEPKcz, .-_ZN6StringILj25EE6printfEPKcz
 11481 0026 00BF     		.section	.text._ZN6GCodes13CheckTriggersEv,"ax",%progbits
 11482              		.align	1
 11483              		.p2align 2,,3
 11484              		.global	_ZN6GCodes13CheckTriggersEv
 11485              		.syntax unified
 11486              		.thumb
 11487              		.thumb_func
 11488              		.fpu softvfp
 11489              		.type	_ZN6GCodes13CheckTriggersEv, %function
 11490              	_ZN6GCodes13CheckTriggersEv:
 11491              		@ args = 0, pretend = 0, frame = 32
 11492              		@ frame_needed = 0, uses_anonymous_args = 0
 11493 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 11494 0002 0446     		mov	r4, r0
 11495 0004 8BB0     		sub	sp, sp, #44
 11496 0006 0068     		ldr	r0, [r0]
 11497 0008 D4F8C453 		ldr	r5, [r4, #964]
 11498 000c FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 11499 0010 4D4E     		ldr	r6, .L2335
 11500 0012 C4F8C403 		str	r0, [r4, #964]
 11501 0016 D6F81CE0 		ldr	lr, [r6, #28]
 11502 001a 2146     		mov	r1, r4
 11503 001c 20EA0506 		bic	r6, r0, r5
 11504 0020 0023     		movs	r3, #0
 11505 0022 0A22     		movs	r2, #10
 11506 0024 0127     		movs	r7, #1
 11507 0026 25EA0000 		bic	r0, r5, r0
 11508 002a 0FE0     		b	.L2300
 11509              	.L2331:
 11510 002c 012D     		cmp	r5, #1
 11511 002e 22D0     		beq	.L2329
 11512              	.L2297:
 11513 0030 9A42     		cmp	r2, r3
 11514 0032 01F10C01 		add	r1, r1, #12
ARM GAS  /tmp/ccx5mP1m.s 			page 203


 11515 0036 06D9     		bls	.L2299
 11516 0038 D4F8C853 		ldr	r5, [r4, #968]
 11517 003c DD40     		lsrs	r5, r5, r3
 11518 003e 15F0010F 		tst	r5, #1
 11519 0042 18BF     		it	ne
 11520 0044 1A46     		movne	r2, r3
 11521              	.L2299:
 11522 0046 0133     		adds	r3, r3, #1
 11523 0048 0A2B     		cmp	r3, #10
 11524 004a 1FD0     		beq	.L2330
 11525              	.L2300:
 11526 004c D1F84C53 		ldr	r5, [r1, #844]
 11527 0050 07FA03FC 		lsl	ip, r7, r3
 11528 0054 2E42     		tst	r6, r5
 11529 0056 03D1     		bne	.L2296
 11530 0058 D1F85053 		ldr	r5, [r1, #848]
 11531 005c 2842     		tst	r0, r5
 11532 005e E7D0     		beq	.L2297
 11533              	.L2296:
 11534 0060 91F85453 		ldrb	r5, [r1, #852]	@ zero_extendqisi2
 11535 0064 002D     		cmp	r5, #0
 11536 0066 E1D1     		bne	.L2331
 11537 0068 D4F8C853 		ldr	r5, [r4, #968]
 11538 006c 45EA0C05 		orr	r5, r5, ip
 11539 0070 C4F8C853 		str	r5, [r4, #968]
 11540 0074 DCE7     		b	.L2297
 11541              	.L2329:
 11542 0076 9EF80C50 		ldrb	r5, [lr, #12]	@ zero_extendqisi2
 11543 007a 002D     		cmp	r5, #0
 11544 007c D8D0     		beq	.L2297
 11545 007e D4F8C853 		ldr	r5, [r4, #968]
 11546 0082 45EA0C05 		orr	r5, r5, ip
 11547 0086 C4F8C853 		str	r5, [r4, #968]
 11548 008a D1E7     		b	.L2297
 11549              	.L2330:
 11550 008c 42B1     		cbz	r2, .L2332
 11551 008e 0A2A     		cmp	r2, #10
 11552 0090 04D0     		beq	.L2295
 11553 0092 E36C     		ldr	r3, [r4, #76]
 11554 0094 1B68     		ldr	r3, [r3]
 11555 0096 9B68     		ldr	r3, [r3, #8]
 11556 0098 9968     		ldr	r1, [r3, #8]
 11557 009a 61B1     		cbz	r1, .L2333
 11558              	.L2295:
 11559 009c 0BB0     		add	sp, sp, #44
 11560              		@ sp needed
 11561 009e F0BD     		pop	{r4, r5, r6, r7, pc}
 11562              	.L2332:
 11563 00a0 D4F8C833 		ldr	r3, [r4, #968]
 11564 00a4 2046     		mov	r0, r4
 11565 00a6 23F00103 		bic	r3, r3, #1
 11566 00aa C4F8C833 		str	r3, [r4, #968]
 11567 00ae FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 11568 00b2 0BB0     		add	sp, sp, #44
 11569              		@ sp needed
 11570 00b4 F0BD     		pop	{r4, r5, r6, r7, pc}
 11571              	.L2333:
ARM GAS  /tmp/ccx5mP1m.s 			page 204


 11572 00b6 1F7D     		ldrb	r7, [r3, #20]	@ zero_extendqisi2
 11573 00b8 002F     		cmp	r7, #0
 11574 00ba EFD1     		bne	.L2295
 11575 00bc 012A     		cmp	r2, #1
 11576 00be 0AD1     		bne	.L2324
 11577 00c0 9EF80C30 		ldrb	r3, [lr, #12]	@ zero_extendqisi2
 11578 00c4 0BBB     		cbnz	r3, .L2334
 11579              	.L2306:
 11580 00c6 D4F8C833 		ldr	r3, [r4, #968]
 11581 00ca 23F00203 		bic	r3, r3, #2
 11582 00ce C4F8C833 		str	r3, [r4, #968]
 11583 00d2 0BB0     		add	sp, sp, #44
 11584              		@ sp needed
 11585 00d4 F0BD     		pop	{r4, r5, r6, r7, pc}
 11586              	.L2324:
 11587 00d6 0126     		movs	r6, #1
 11588 00d8 D4F8C813 		ldr	r1, [r4, #968]
 11589 00dc 06FA02F3 		lsl	r3, r6, r2
 11590 00e0 0AAD     		add	r5, sp, #40
 11591 00e2 21EA0301 		bic	r1, r1, r3
 11592 00e6 05F81C7D 		strb	r7, [r5, #-28]!
 11593 00ea C4F8C813 		str	r1, [r4, #968]
 11594 00ee 2846     		mov	r0, r5
 11595 00f0 1649     		ldr	r1, .L2335+4
 11596 00f2 FFF7FEFF 		bl	_ZN6StringILj25EE6printfEPKcz
 11597 00f6 E36C     		ldr	r3, [r4, #76]
 11598 00f8 2A46     		mov	r2, r5
 11599 00fa 1968     		ldr	r1, [r3]
 11600 00fc 2046     		mov	r0, r4
 11601 00fe 3346     		mov	r3, r6
 11602 0100 0097     		str	r7, [sp]
 11603 0102 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 11604 0106 0BB0     		add	sp, sp, #44
 11605              		@ sp needed
 11606 0108 F0BD     		pop	{r4, r5, r6, r7, pc}
 11607              	.L2334:
 11608 010a 2046     		mov	r0, r4
 11609 010c FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 11610 0110 0028     		cmp	r0, #0
 11611 0112 D8D0     		beq	.L2306
 11612 0114 E26C     		ldr	r2, [r4, #76]
 11613 0116 E36D     		ldr	r3, [r4, #92]
 11614 0118 1168     		ldr	r1, [r2]
 11615 011a 9942     		cmp	r1, r3
 11616 011c 08D0     		beq	.L2308
 11617 011e 002B     		cmp	r3, #0
 11618 0120 BCD1     		bne	.L2295
 11619 0122 8868     		ldr	r0, [r1, #8]
 11620 0124 E165     		str	r1, [r4, #92]
 11621 0126 C368     		ldr	r3, [r0, #12]
 11622 0128 1168     		ldr	r1, [r2]
 11623 012a 43F00103 		orr	r3, r3, #1
 11624 012e C360     		str	r3, [r0, #12]
 11625              	.L2308:
 11626 0130 D4F8C833 		ldr	r3, [r4, #968]
 11627 0134 2046     		mov	r0, r4
 11628 0136 23F00203 		bic	r3, r3, #2
ARM GAS  /tmp/ccx5mP1m.s 			page 205


 11629 013a C4F8C833 		str	r3, [r4, #968]
 11630 013e 0222     		movs	r2, #2
 11631 0140 034B     		ldr	r3, .L2335+8
 11632 0142 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 11633 0146 A9E7     		b	.L2295
 11634              	.L2336:
 11635              		.align	2
 11636              	.L2335:
 11637 0148 00000000 		.word	reprap
 11638 014c 00000000 		.word	.LC174
 11639 0150 14000000 		.word	.LC175
 11640              		.size	_ZN6GCodes13CheckTriggersEv, .-_ZN6GCodes13CheckTriggersEv
 11641              		.section	.text._ZN6StringILj100EE6printfEPKcz,"axG",%progbits,_ZN6StringILj100EE6printfEPKcz,comda
 11642              		.align	1
 11643              		.p2align 2,,3
 11644              		.weak	_ZN6StringILj100EE6printfEPKcz
 11645              		.syntax unified
 11646              		.thumb
 11647              		.thumb_func
 11648              		.fpu softvfp
 11649              		.type	_ZN6StringILj100EE6printfEPKcz, %function
 11650              	_ZN6StringILj100EE6printfEPKcz:
 11651              		@ args = 4, pretend = 12, frame = 16
 11652              		@ frame_needed = 0, uses_anonymous_args = 1
 11653 0000 0EB4     		push	{r1, r2, r3}
 11654 0002 10B5     		push	{r4, lr}
 11655 0004 6524     		movs	r4, #101
 11656 0006 85B0     		sub	sp, sp, #20
 11657 0008 07AB     		add	r3, sp, #28
 11658 000a 53F8041B 		ldr	r1, [r3], #4
 11659 000e 0290     		str	r0, [sp, #8]
 11660 0010 1A46     		mov	r2, r3
 11661 0012 02A8     		add	r0, sp, #8
 11662 0014 0193     		str	r3, [sp, #4]
 11663 0016 0394     		str	r4, [sp, #12]
 11664 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 11665 001c 05B0     		add	sp, sp, #20
 11666              		@ sp needed
 11667 001e BDE81040 		pop	{r4, lr}
 11668 0022 03B0     		add	sp, sp, #12
 11669 0024 7047     		bx	lr
 11670              		.size	_ZN6StringILj100EE6printfEPKcz, .-_ZN6StringILj100EE6printfEPKcz
 11671 0026 00BF     		.section	.text._ZN6GCodes13CheckFilamentEv,"ax",%progbits
 11672              		.align	1
 11673              		.p2align 2,,3
 11674              		.global	_ZN6GCodes13CheckFilamentEv
 11675              		.syntax unified
 11676              		.thumb
 11677              		.thumb_func
 11678              		.fpu softvfp
 11679              		.type	_ZN6GCodes13CheckFilamentEv, %function
 11680              	_ZN6GCodes13CheckFilamentEv:
 11681              		@ args = 0, pretend = 0, frame = 104
 11682              		@ frame_needed = 0, uses_anonymous_args = 0
 11683 0000 90F83C34 		ldrb	r3, [r0, #1084]	@ zero_extendqisi2
 11684 0004 1BB1     		cbz	r3, .L2355
 11685 0006 214B     		ldr	r3, .L2361
ARM GAS  /tmp/ccx5mP1m.s 			page 206


 11686 0008 DB69     		ldr	r3, [r3, #28]
 11687 000a 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 11688 000c 03B9     		cbnz	r3, .L2359
 11689              	.L2355:
 11690 000e 7047     		bx	lr
 11691              	.L2359:
 11692 0010 F0B5     		push	{r4, r5, r6, r7, lr}
 11693 0012 9BB0     		sub	sp, sp, #108
 11694 0014 0446     		mov	r4, r0
 11695 0016 FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 11696 001a 08B9     		cbnz	r0, .L2360
 11697              	.L2339:
 11698 001c 1BB0     		add	sp, sp, #108
 11699              		@ sp needed
 11700 001e F0BD     		pop	{r4, r5, r6, r7, pc}
 11701              	.L2360:
 11702 0020 636D     		ldr	r3, [r4, #84]
 11703 0022 1B68     		ldr	r3, [r3]
 11704 0024 9A68     		ldr	r2, [r3, #8]
 11705 0026 117D     		ldrb	r1, [r2, #20]	@ zero_extendqisi2
 11706 0028 0029     		cmp	r1, #0
 11707 002a F7D1     		bne	.L2339
 11708 002c 93F82810 		ldrb	r1, [r3, #40]	@ zero_extendqisi2
 11709 0030 0839     		subs	r1, r1, #8
 11710 0032 0129     		cmp	r1, #1
 11711 0034 F2D9     		bls	.L2339
 11712 0036 E16D     		ldr	r1, [r4, #92]
 11713 0038 8B42     		cmp	r3, r1
 11714 003a 06D0     		beq	.L2344
 11715 003c 0029     		cmp	r1, #0
 11716 003e EDD1     		bne	.L2339
 11717 0040 D168     		ldr	r1, [r2, #12]
 11718 0042 E365     		str	r3, [r4, #92]
 11719 0044 41F00101 		orr	r1, r1, #1
 11720 0048 D160     		str	r1, [r2, #12]
 11721              	.L2344:
 11722 004a 0026     		movs	r6, #0
 11723 004c 1AAD     		add	r5, sp, #104
 11724 004e 94F83C04 		ldrb	r0, [r4, #1084]	@ zero_extendqisi2
 11725 0052 05F8686D 		strb	r6, [r5, #-104]!
 11726 0056 D4F84074 		ldr	r7, [r4, #1088]
 11727 005a FFF7FEFF 		bl	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus
 11728 005e 3A46     		mov	r2, r7
 11729 0060 0346     		mov	r3, r0
 11730 0062 0B49     		ldr	r1, .L2361+4
 11731 0064 2846     		mov	r0, r5
 11732 0066 FFF7FEFF 		bl	_ZN6StringILj100EE6printfEPKcz
 11733 006a 626D     		ldr	r2, [r4, #84]
 11734 006c 2B46     		mov	r3, r5
 11735 006e 1168     		ldr	r1, [r2]
 11736 0070 2046     		mov	r0, r4
 11737 0072 0422     		movs	r2, #4
 11738 0074 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 11739 0078 84F83C64 		strb	r6, [r4, #1084]
 11740 007c 2A46     		mov	r2, r5
 11741 007e 2068     		ldr	r0, [r4]
 11742 0080 8021     		movs	r1, #128
ARM GAS  /tmp/ccx5mP1m.s 			page 207


 11743 0082 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11744 0086 1BB0     		add	sp, sp, #108
 11745              		@ sp needed
 11746 0088 F0BD     		pop	{r4, r5, r6, r7, pc}
 11747              	.L2362:
 11748 008a 00BF     		.align	2
 11749              	.L2361:
 11750 008c 00000000 		.word	reprap
 11751 0090 00000000 		.word	.LC176
 11752              		.size	_ZN6GCodes13CheckFilamentEv, .-_ZN6GCodes13CheckFilamentEv
 11753              		.section	.text._ZN6GCodes4SpinEv,"ax",%progbits
 11754              		.align	1
 11755              		.p2align 2,,3
 11756              		.global	_ZN6GCodes4SpinEv
 11757              		.syntax unified
 11758              		.thumb
 11759              		.thumb_func
 11760              		.fpu softvfp
 11761              		.type	_ZN6GCodes4SpinEv, %function
 11762              	_ZN6GCodes4SpinEv:
 11763              		@ args = 0, pretend = 0, frame = 2064
 11764              		@ frame_needed = 0, uses_anonymous_args = 0
 11765 0000 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 11766 0004 03B9     		cbnz	r3, .L2390
 11767 0006 7047     		bx	lr
 11768              	.L2390:
 11769 0008 F0B5     		push	{r4, r5, r6, r7, lr}
 11770 000a 0446     		mov	r4, r0
 11771 000c ADF6140D 		subw	sp, sp, #2068
 11772 0010 FFF7FEFF 		bl	_ZN6GCodes13CheckTriggersEv
 11773 0014 2046     		mov	r0, r4
 11774 0016 FFF7FEFF 		bl	_ZN6GCodes16CheckHeaterFaultEv
 11775 001a 2046     		mov	r0, r4
 11776 001c FFF7FEFF 		bl	_ZN6GCodes13CheckFilamentEv
 11777 0020 636D     		ldr	r3, [r4, #84]
 11778 0022 1D68     		ldr	r5, [r3]
 11779 0024 AB68     		ldr	r3, [r5, #8]
 11780 0026 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 11781 0028 DAB9     		cbnz	r2, .L2365
 11782 002a 95F82820 		ldrb	r2, [r5, #40]	@ zero_extendqisi2
 11783 002e 083A     		subs	r2, r2, #8
 11784 0030 012A     		cmp	r2, #1
 11785 0032 02D9     		bls	.L2367
 11786 0034 9868     		ldr	r0, [r3, #8]
 11787 0036 0028     		cmp	r0, #0
 11788 0038 39D0     		beq	.L2391
 11789              	.L2367:
 11790 003a 0022     		movs	r2, #0
 11791 003c 03AE     		add	r6, sp, #12
 11792 003e 3270     		strb	r2, [r6]
 11793 0040 5F7E     		ldrb	r7, [r3, #25]	@ zero_extendqisi2
 11794 0042 7A07     		lsls	r2, r7, #29
 11795 0044 46D5     		bpl	.L2371
 11796              	.L2393:
 11797 0046 2846     		mov	r0, r5
 11798 0048 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 11799 004c 3B07     		lsls	r3, r7, #28
ARM GAS  /tmp/ccx5mP1m.s 			page 208


 11800 004e 14D5     		bpl	.L2372
 11801 0050 AB68     		ldr	r3, [r5, #8]
 11802 0052 1B68     		ldr	r3, [r3]
 11803 0054 002B     		cmp	r3, #0
 11804 0056 47D0     		beq	.L2392
 11805 0058 2946     		mov	r1, r5
 11806 005a 2046     		mov	r0, r4
 11807 005c FFF7FEFF 		bl	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 11808 0060 0BE0     		b	.L2372
 11809              	.L2365:
 11810 0062 0023     		movs	r3, #0
 11811 0064 03AE     		add	r6, sp, #12
 11812 0066 3370     		strb	r3, [r6]
 11813              	.L2370:
 11814 0068 40F60103 		movw	r3, #2049
 11815 006c 2946     		mov	r1, r5
 11816 006e 01AA     		add	r2, sp, #4
 11817 0070 2046     		mov	r0, r4
 11818 0072 0293     		str	r3, [sp, #8]
 11819 0074 0196     		str	r6, [sp, #4]
 11820 0076 FFF7FEFF 		bl	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef
 11821              	.L2372:
 11822 007a FFF7FEFF 		bl	millis
 11823 007e D4F85434 		ldr	r3, [r4, #1108]
 11824 0082 0546     		mov	r5, r0
 11825 0084 C31A     		subs	r3, r0, r3
 11826 0086 B3F57A6F 		cmp	r3, #4000
 11827 008a 0DD3     		bcc	.L2363
 11828 008c 94F85F34 		ldrb	r3, [r4, #1119]	@ zero_extendqisi2
 11829 0090 53B1     		cbz	r3, .L2363
 11830 0092 184A     		ldr	r2, .L2394
 11831 0094 40F2B511 		movw	r1, #437
 11832 0098 2068     		ldr	r0, [r4]
 11833 009a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11834 009e 0023     		movs	r3, #0
 11835 00a0 C4F85454 		str	r5, [r4, #1108]
 11836 00a4 84F85F34 		strb	r3, [r4, #1119]
 11837              	.L2363:
 11838 00a8 0DF6140D 		addw	sp, sp, #2068
 11839              		@ sp needed
 11840 00ac F0BD     		pop	{r4, r5, r6, r7, pc}
 11841              	.L2391:
 11842 00ae A16D     		ldr	r1, [r4, #88]
 11843 00b0 03AE     		add	r6, sp, #12
 11844 00b2 4B1C     		adds	r3, r1, #1
 11845 00b4 072B     		cmp	r3, #7
 11846 00b6 14BF     		ite	ne
 11847 00b8 1A46     		movne	r2, r3
 11848 00ba 0246     		moveq	r2, r0
 11849 00bc 0631     		adds	r1, r1, #6
 11850 00be 54F82150 		ldr	r5, [r4, r1, lsl #2]
 11851 00c2 3070     		strb	r0, [r6]
 11852 00c4 AB68     		ldr	r3, [r5, #8]
 11853 00c6 A265     		str	r2, [r4, #88]
 11854 00c8 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 11855 00ca 002A     		cmp	r2, #0
 11856 00cc CCD1     		bne	.L2370
ARM GAS  /tmp/ccx5mP1m.s 			page 209


 11857 00ce 5F7E     		ldrb	r7, [r3, #25]	@ zero_extendqisi2
 11858 00d0 7A07     		lsls	r2, r7, #29
 11859 00d2 B8D4     		bmi	.L2393
 11860              	.L2371:
 11861 00d4 40F60103 		movw	r3, #2049
 11862 00d8 2946     		mov	r1, r5
 11863 00da 01AA     		add	r2, sp, #4
 11864 00dc 2046     		mov	r0, r4
 11865 00de 0293     		str	r3, [sp, #8]
 11866 00e0 0196     		str	r6, [sp, #4]
 11867 00e2 FFF7FEFF 		bl	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef
 11868 00e6 C8E7     		b	.L2372
 11869              	.L2392:
 11870 00e8 0121     		movs	r1, #1
 11871 00ea 2046     		mov	r0, r4
 11872 00ec FFF7FEFF 		bl	_ZN6GCodes9StopPrintE15StopPrintReason
 11873 00f0 C3E7     		b	.L2372
 11874              	.L2395:
 11875 00f2 00BF     		.align	2
 11876              	.L2394:
 11877 00f4 00000000 		.word	.LC177
 11878              		.size	_ZN6GCodes4SpinEv, .-_ZN6GCodes4SpinEv
 11879              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 11880              		.align	1
 11881              		.p2align 2,,3
 11882              		.weak	_ZN6StringILj220EE6printfEPKcz
 11883              		.syntax unified
 11884              		.thumb
 11885              		.thumb_func
 11886              		.fpu softvfp
 11887              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 11888              	_ZN6StringILj220EE6printfEPKcz:
 11889              		@ args = 4, pretend = 12, frame = 16
 11890              		@ frame_needed = 0, uses_anonymous_args = 1
 11891 0000 0EB4     		push	{r1, r2, r3}
 11892 0002 10B5     		push	{r4, lr}
 11893 0004 DD24     		movs	r4, #221
 11894 0006 85B0     		sub	sp, sp, #20
 11895 0008 07AB     		add	r3, sp, #28
 11896 000a 53F8041B 		ldr	r1, [r3], #4
 11897 000e 0290     		str	r0, [sp, #8]
 11898 0010 1A46     		mov	r2, r3
 11899 0012 02A8     		add	r0, sp, #8
 11900 0014 0193     		str	r3, [sp, #4]
 11901 0016 0394     		str	r4, [sp, #12]
 11902 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 11903 001c 05B0     		add	sp, sp, #20
 11904              		@ sp needed
 11905 001e BDE81040 		pop	{r4, lr}
 11906 0022 03B0     		add	sp, sp, #12
 11907 0024 7047     		bx	lr
 11908              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 11909 0026 00BF     		.section	.text._ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef,"ax",%progbits
 11910              		.align	1
 11911              		.p2align 2,,3
 11912              		.global	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef
 11913              		.syntax unified
ARM GAS  /tmp/ccx5mP1m.s 			page 210


 11914              		.thumb
 11915              		.thumb_func
 11916              		.fpu softvfp
 11917              		.type	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef, %function
 11918              	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef:
 11919              		@ args = 0, pretend = 0, frame = 264
 11920              		@ frame_needed = 0, uses_anonymous_args = 0
 11921 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 11922 0004 4E4B     		ldr	r3, .L2431
 11923 0006 C4B0     		sub	sp, sp, #272
 11924 0008 DC6A     		ldr	r4, [r3, #44]
 11925 000a 1546     		mov	r5, r2
 11926 000c 002C     		cmp	r4, #0
 11927 000e 49D0     		beq	.L2426
 11928 0010 6368     		ldr	r3, [r4, #4]
 11929 0012 8BB1     		cbz	r3, .L2427
 11930 0014 0E46     		mov	r6, r1
 11931 0016 0746     		mov	r7, r0
 11932 0018 5321     		movs	r1, #83
 11933 001a 3046     		mov	r0, r6
 11934 001c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 11935 0020 90B9     		cbnz	r0, .L2428
 11936 0022 6268     		ldr	r2, [r4, #4]
 11937 0024 137A     		ldrb	r3, [r2, #8]	@ zero_extendqisi2
 11938 0026 A3BB     		cbnz	r3, .L2429
 11939 0028 2846     		mov	r0, r5
 11940 002a 4649     		ldr	r1, .L2431+4
 11941 002c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 11942              	.L2423:
 11943 0030 0120     		movs	r0, #1
 11944              	.L2419:
 11945 0032 44B0     		add	sp, sp, #272
 11946              		@ sp needed
 11947 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 11948              	.L2427:
 11949 0038 1046     		mov	r0, r2
 11950 003a 4349     		ldr	r1, .L2431+8
 11951 003c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11952 0040 0220     		movs	r0, #2
 11953 0042 44B0     		add	sp, sp, #272
 11954              		@ sp needed
 11955 0044 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 11956              	.L2428:
 11957 0048 0022     		movs	r2, #0
 11958 004a 2123     		movs	r3, #33
 11959 004c 0DF10C08 		add	r8, sp, #12
 11960 0050 0CA9     		add	r1, sp, #48
 11961 0052 3046     		mov	r0, r6
 11962 0054 88F80020 		strb	r2, [r8]
 11963 0058 CDF83080 		str	r8, [sp, #48]
 11964 005c 0D93     		str	r3, [sp, #52]
 11965 005e FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 11966 0062 70B1     		cbz	r0, .L2403
 11967 0064 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 11968 0068 5BB1     		cbz	r3, .L2403
 11969 006a 3849     		ldr	r1, .L2431+12
 11970 006c 4046     		mov	r0, r8
ARM GAS  /tmp/ccx5mP1m.s 			page 211


 11971 006e FFF7FEFF 		bl	_Z14StringContainsPKcS0_
 11972 0072 0028     		cmp	r0, #0
 11973 0074 1EDB     		blt	.L2430
 11974 0076 2846     		mov	r0, r5
 11975 0078 3549     		ldr	r1, .L2431+16
 11976 007a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11977 007e 0220     		movs	r0, #2
 11978 0080 D7E7     		b	.L2419
 11979              	.L2403:
 11980 0082 2846     		mov	r0, r5
 11981 0084 3349     		ldr	r1, .L2431+20
 11982 0086 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11983 008a 0220     		movs	r0, #2
 11984 008c 44B0     		add	sp, sp, #272
 11985              		@ sp needed
 11986 008e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 11987              	.L2429:
 11988 0092 0832     		adds	r2, r2, #8
 11989 0094 2846     		mov	r0, r5
 11990 0096 3049     		ldr	r1, .L2431+24
 11991 0098 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 11992 009c 0120     		movs	r0, #1
 11993 009e 44B0     		add	sp, sp, #272
 11994              		@ sp needed
 11995 00a0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 11996              	.L2426:
 11997 00a4 1046     		mov	r0, r2
 11998 00a6 2D49     		ldr	r1, .L2431+28
 11999 00a8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12000 00ac 0220     		movs	r0, #2
 12001 00ae 44B0     		add	sp, sp, #272
 12002              		@ sp needed
 12003 00b0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 12004              	.L2430:
 12005 00b4 6168     		ldr	r1, [r4, #4]
 12006 00b6 4046     		mov	r0, r8
 12007 00b8 0831     		adds	r1, r1, #8
 12008 00ba FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 12009 00be 0028     		cmp	r0, #0
 12010 00c0 B6D1     		bne	.L2423
 12011 00c2 6368     		ldr	r3, [r4, #4]
 12012 00c4 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 12013 00c6 2BB1     		cbz	r3, .L2406
 12014 00c8 2846     		mov	r0, r5
 12015 00ca 2549     		ldr	r1, .L2431+32
 12016 00cc FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12017 00d0 0220     		movs	r0, #2
 12018 00d2 AEE7     		b	.L2419
 12019              	.L2406:
 12020 00d4 3B68     		ldr	r3, [r7]
 12021 00d6 4246     		mov	r2, r8
 12022 00d8 D3F86805 		ldr	r0, [r3, #1384]
 12023 00dc 2149     		ldr	r1, .L2431+36
 12024 00de FFF7FEFF 		bl	_ZN11MassStorage15DirectoryExistsEPKcS1_
 12025 00e2 28B9     		cbnz	r0, .L2407
 12026 00e4 2846     		mov	r0, r5
 12027 00e6 2049     		ldr	r1, .L2431+40
ARM GAS  /tmp/ccx5mP1m.s 			page 212


 12028 00e8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12029 00ec 0220     		movs	r0, #2
 12030 00ee A0E7     		b	.L2419
 12031              	.L2407:
 12032 00f0 4046     		mov	r0, r8
 12033 00f2 FFF7FEFF 		bl	_ZN8Filament7IsInUseEPKc
 12034 00f6 28B1     		cbz	r0, .L2408
 12035 00f8 2846     		mov	r0, r5
 12036 00fa 1C49     		ldr	r1, .L2431+44
 12037 00fc FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12038 0100 0220     		movs	r0, #2
 12039 0102 96E7     		b	.L2419
 12040              	.L2408:
 12041 0104 2022     		movs	r2, #32
 12042 0106 4146     		mov	r1, r8
 12043 0108 07F26140 		addw	r0, r7, #1121
 12044 010c FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 12045 0110 2D20     		movs	r0, #45
 12046 0112 0024     		movs	r4, #0
 12047 0114 B268     		ldr	r2, [r6, #8]
 12048 0116 1649     		ldr	r1, .L2431+48
 12049 0118 1075     		strb	r0, [r2, #20]
 12050 011a 4346     		mov	r3, r8
 12051 011c 114A     		ldr	r2, .L2431+36
 12052 011e 0091     		str	r1, [sp]
 12053 0120 0CA8     		add	r0, sp, #48
 12054 0122 1449     		ldr	r1, .L2431+52
 12055 0124 8DF83040 		strb	r4, [sp, #48]
 12056 0128 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 12057 012c 0094     		str	r4, [sp]
 12058 012e 0CAA     		add	r2, sp, #48
 12059 0130 3146     		mov	r1, r6
 12060 0132 3846     		mov	r0, r7
 12061 0134 0123     		movs	r3, #1
 12062 0136 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12063 013a 0120     		movs	r0, #1
 12064 013c 79E7     		b	.L2419
 12065              	.L2432:
 12066 013e 00BF     		.align	2
 12067              	.L2431:
 12068 0140 00000000 		.word	reprap
 12069 0144 6C010000 		.word	.LC188
 12070 0148 14000000 		.word	.LC179
 12071 014c AC010000 		.word	.LC190
 12072 0150 50000000 		.word	.LC180
 12073 0154 94010000 		.word	.LC189
 12074 0158 40010000 		.word	.LC187
 12075 015c 00000000 		.word	.LC178
 12076 0160 78000000 		.word	.LC181
 12077 0164 BC000000 		.word	.LC182
 12078 0168 CC000000 		.word	.LC183
 12079 016c F8000000 		.word	.LC184
 12080 0170 38010000 		.word	.LC186
 12081 0174 30010000 		.word	.LC185
 12082              		.size	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef, .-_ZN6GCodes12LoadFilamentER11GCodeBuff
 12083              		.section	.text._ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef,"ax",%progbits
 12084              		.align	1
ARM GAS  /tmp/ccx5mP1m.s 			page 213


 12085              		.p2align 2,,3
 12086              		.global	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef
 12087              		.syntax unified
 12088              		.thumb
 12089              		.thumb_func
 12090              		.fpu softvfp
 12091              		.type	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef, %function
 12092              	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef:
 12093              		@ args = 0, pretend = 0, frame = 224
 12094              		@ frame_needed = 0, uses_anonymous_args = 0
 12095 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 12096 0002 1A4B     		ldr	r3, .L2442
 12097 0004 BBB0     		sub	sp, sp, #236
 12098 0006 DB6A     		ldr	r3, [r3, #44]
 12099 0008 0BB3     		cbz	r3, .L2439
 12100 000a 5B68     		ldr	r3, [r3, #4]
 12101 000c 33B3     		cbz	r3, .L2440
 12102 000e 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 12103 0010 12B9     		cbnz	r2, .L2441
 12104 0012 0120     		movs	r0, #1
 12105 0014 3BB0     		add	sp, sp, #236
 12106              		@ sp needed
 12107 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
 12108              	.L2441:
 12109 0018 0646     		mov	r6, r0
 12110 001a 0027     		movs	r7, #0
 12111 001c 2E20     		movs	r0, #46
 12112 001e 0C46     		mov	r4, r1
 12113 0020 8968     		ldr	r1, [r1, #8]
 12114 0022 3AAD     		add	r5, sp, #232
 12115 0024 124A     		ldr	r2, .L2442+4
 12116 0026 0875     		strb	r0, [r1, #20]
 12117 0028 05F8E07D 		strb	r7, [r5, #-224]!
 12118 002c 0833     		adds	r3, r3, #8
 12119 002e 0092     		str	r2, [sp]
 12120 0030 2846     		mov	r0, r5
 12121 0032 104A     		ldr	r2, .L2442+8
 12122 0034 1049     		ldr	r1, .L2442+12
 12123 0036 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 12124 003a 2A46     		mov	r2, r5
 12125 003c 0097     		str	r7, [sp]
 12126 003e 2146     		mov	r1, r4
 12127 0040 3046     		mov	r0, r6
 12128 0042 0123     		movs	r3, #1
 12129 0044 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12130 0048 0120     		movs	r0, #1
 12131 004a 3BB0     		add	sp, sp, #236
 12132              		@ sp needed
 12133 004c F0BD     		pop	{r4, r5, r6, r7, pc}
 12134              	.L2439:
 12135 004e 1046     		mov	r0, r2
 12136 0050 0A49     		ldr	r1, .L2442+16
 12137 0052 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12138 0056 0220     		movs	r0, #2
 12139 0058 3BB0     		add	sp, sp, #236
 12140              		@ sp needed
 12141 005a F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccx5mP1m.s 			page 214


 12142              	.L2440:
 12143 005c 1046     		mov	r0, r2
 12144 005e 0849     		ldr	r1, .L2442+20
 12145 0060 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12146 0064 0220     		movs	r0, #2
 12147 0066 3BB0     		add	sp, sp, #236
 12148              		@ sp needed
 12149 0068 F0BD     		pop	{r4, r5, r6, r7, pc}
 12150              	.L2443:
 12151 006a 00BF     		.align	2
 12152              	.L2442:
 12153 006c 00000000 		.word	reprap
 12154 0070 34000000 		.word	.LC192
 12155 0074 BC000000 		.word	.LC182
 12156 0078 30010000 		.word	.LC185
 12157 007c 00000000 		.word	.LC178
 12158 0080 00000000 		.word	.LC191
 12159              		.size	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef, .-_ZN6GCodes14UnloadFilamentER11GCode
 12160              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 12161              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 12162              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 12163              	_ZL28cpu_irq_prev_interrupt_state:
 12164 0000 00       		.space	1
 12165              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 12166              		.align	2
 12167              		.type	_ZL32cpu_irq_critical_section_counter, %object
 12168              		.size	_ZL32cpu_irq_critical_section_counter, 4
 12169              	_ZL32cpu_irq_critical_section_counter:
 12170 0000 00000000 		.space	4
 12171              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 12172              		.align	2
 12173              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 12174              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 12175              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 12176 0000 00000000 		.space	4
 12177              		.section	.rodata.CSWTCH.643,"a",%progbits
 12178              		.align	2
 12179              		.set	.LANCHOR0,. + 0
 12180              		.type	CSWTCH.643, %object
 12181              		.size	CSWTCH.643, 12
 12182              	CSWTCH.643:
 12183 0000 34000000 		.word	.LC199
 12184 0004 4C000000 		.word	.LC200
 12185 0008 64000000 		.word	.LC201
 12186              		.section	.rodata.CSWTCH.661,"a",%progbits
 12187              		.align	2
 12188              		.set	.LANCHOR1,. + 0
 12189              		.type	CSWTCH.661, %object
 12190              		.size	CSWTCH.661, 12
 12191              	CSWTCH.661:
 12192 0000 10000000 		.word	.LC196
 12193 0004 1C000000 		.word	.LC197
 12194 0008 28000000 		.word	.LC198
 12195              		.section	.rodata.CSWTCH.677,"a",%progbits
 12196              		.align	2
 12197              		.set	.LANCHOR2,. + 0
 12198              		.type	CSWTCH.677, %object
ARM GAS  /tmp/ccx5mP1m.s 			page 215


 12199              		.size	CSWTCH.677, 12
 12200              	CSWTCH.677:
 12201 0000 00000000 		.word	.LC193
 12202 0004 04000000 		.word	.LC194
 12203 0008 0C000000 		.word	.LC195
 12204              		.section	.rodata._ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12205              		.align	2
 12206              	.LC45:
 12207 0000 5A207072 		.ascii	"Z probe point index out of range\000"
 12207      6F626520 
 12207      706F696E 
 12207      7420696E 
 12207      64657820 
 12208 0021 000000   		.space	3
 12209              	.LC46:
 12210 0024 6465706C 		.ascii	"deployprobe.g\000"
 12210      6F797072 
 12210      6F62652E 
 12210      6700
 12211              		.section	.rodata._ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12212              		.align	2
 12213              	.LC65:
 12214 0000 546F6F6C 		.ascii	"Tool number must be positive\000"
 12214      206E756D 
 12214      62657220 
 12214      6D757374 
 12214      20626520 
 12215 001d 000000   		.space	3
 12216              	.LC66:
 12217 0020 496E7661 		.ascii	"Invalid tool name\000"
 12217      6C696420 
 12217      746F6F6C 
 12217      206E616D 
 12217      6500
 12218 0032 0000     		.space	2
 12219              	.LC67:
 12220 0034 43616E6E 		.ascii	"Cannot map both X and Y to the same axis\000"
 12220      6F74206D 
 12220      61702062 
 12220      6F746820 
 12220      5820616E 
 12221              		.section	.rodata._ZN6GCodes11AdvanceHashERK9StringRef.str1.4,"aMS",%progbits,1
 12222              		.align	2
 12223              	.LC119:
 12224 0000 256C7800 		.ascii	"%lx\000"
 12225              		.section	.rodata._ZN6GCodes11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 12226              		.align	2
 12227              	.LC37:
 12228 0000 6E756C6C 		.ascii	"null\000"
 12228      00
 12229 0005 000000   		.space	3
 12230              	.LC38:
 12231 0008 3D3D3D20 		.ascii	"=== GCodes ===\012\000"
 12231      47436F64 
 12231      6573203D 
 12231      3D3D0A00 
 12232              	.LC39:
ARM GAS  /tmp/ccx5mP1m.s 			page 216


 12233 0018 5365676D 		.ascii	"Segments left: %u\012\000"
 12233      656E7473 
 12233      206C6566 
 12233      743A2025 
 12233      750A00
 12234 002b 00       		.space	1
 12235              	.LC40:
 12236 002c 53746163 		.ascii	"Stack records: %u allocated, %u in use\012\000"
 12236      6B207265 
 12236      636F7264 
 12236      733A2025 
 12236      7520616C 
 12237              	.LC41:
 12238 0054 4D6F7665 		.ascii	"Movement lock held by %s\012\000"
 12238      6D656E74 
 12238      206C6F63 
 12238      6B206865 
 12238      6C642062 
 12239              		.section	.rodata._ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi.str1.4,"aMS",%progbits,1
 12240              		.align	2
 12241              	.LC44:
 12242 0000 4D616372 		.ascii	"Macro file %s not found.\012\000"
 12242      6F206669 
 12242      6C652025 
 12242      73206E6F 
 12242      7420666F 
 12243              		.section	.rodata._ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12244              		.align	2
 12245              	.LC135:
 12246 0000 4D323236 		.ascii	"M226\000"
 12246      00
 12247              		.section	.rodata._ZN6GCodes11FinishWriteER11GCodeBuffer.str1.4,"aMS",%progbits,1
 12248              		.align	2
 12249              	.LC78:
 12250 0000 4572726F 		.ascii	"Error: CRC32 checksum doesn't match\000"
 12250      723A2043 
 12250      52433332 
 12250      20636865 
 12250      636B7375 
 12251              	.LC79:
 12252 0024 00       		.ascii	"\000"
 12253 0025 000000   		.space	3
 12254              	.LC80:
 12255 0028 446F6E65 		.ascii	"Done saving file.\000"
 12255      20736176 
 12255      696E6720 
 12255      66696C65 
 12255      2E00
 12256              		.section	.rodata._ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc.str1.4,"aMS",%progbits,1
 12257              		.align	2
 12258              	.LC68:
 12259 0000 72732000 		.ascii	"rs \000"
 12260              	.LC69:
 12261 0004 6F6B00   		.ascii	"ok\000"
 12262 0007 00       		.space	1
 12263              	.LC70:
 12264 0008 756E6B6E 		.ascii	"unknown\000"
ARM GAS  /tmp/ccx5mP1m.s 			page 217


 12264      6F776E00 
 12265              	.LC71:
 12266 0010 72657065 		.ascii	"repetier\000"
 12266      74696572 
 12266      00
 12267 0019 000000   		.space	3
 12268              	.LC72:
 12269 001c 73707269 		.ascii	"sprinter\000"
 12269      6E746572 
 12269      00
 12270 0025 000000   		.space	3
 12271              	.LC73:
 12272 0028 74656163 		.ascii	"teacup\000"
 12272      757000
 12273 002f 00       		.space	1
 12274              	.LC74:
 12275 0030 25730A00 		.ascii	"%s\012\000"
 12276              	.LC75:
 12277 0034 25730A25 		.ascii	"%s\012%s\012\000"
 12277      730A00
 12278 003b 00       		.space	1
 12279              	.LC76:
 12280 003c 25732025 		.ascii	"%s %s\012\000"
 12280      730A00
 12281 0043 00       		.space	1
 12282              	.LC77:
 12283 0044 456D756C 		.ascii	"Emulation of %s is not yet supported.\012\000"
 12283      6174696F 
 12283      6E206F66 
 12283      20257320 
 12283      6973206E 
 12284              		.section	.rodata._ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer.str1.4,"aMS",%progbits,1
 12285              		.align	2
 12286              	.LC82:
 12287 0000 4572726F 		.ascii	"Error: \000"
 12287      723A2000 
 12288              	.LC83:
 12289 0008 0A00     		.ascii	"\012\000"
 12290 000a 0000     		.space	2
 12291              	.LC84:
 12292 000c 42656769 		.ascii	"Begin file list\012\000"
 12292      6E206669 
 12292      6C65206C 
 12292      6973740A 
 12292      00
 12293 001d 000000   		.space	3
 12294              	.LC85:
 12295 0020 456E6420 		.ascii	"End file list\012\000"
 12295      66696C65 
 12295      206C6973 
 12295      740A00
 12296 002f 00       		.space	1
 12297              	.LC86:
 12298 0030 2000     		.ascii	" \000"
 12299              		.section	.rodata._ZN6GCodes12ListTriggersERK9StringRefm.str1.4,"aMS",%progbits,1
 12300              		.align	2
 12301              	.LC116:
ARM GAS  /tmp/ccx5mP1m.s 			page 218


 12302 0000 286E6F6E 		.ascii	"(none)\000"
 12302      652900
 12303 0007 00       		.space	1
 12304              	.LC117:
 12305 0008 45256400 		.ascii	"E%d\000"
 12306              		.section	.rodata._ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12307              		.align	2
 12308              	.LC178:
 12309 0000 4E6F2074 		.ascii	"No tool selected\000"
 12309      6F6F6C20 
 12309      73656C65 
 12309      63746564 
 12309      00
 12310 0011 000000   		.space	3
 12311              	.LC179:
 12312 0014 4C6F6164 		.ascii	"Loading filament into the selected tool is not supp"
 12312      696E6720 
 12312      66696C61 
 12312      6D656E74 
 12312      20696E74 
 12313 0047 6F727465 		.ascii	"orted\000"
 12313      6400
 12314 004d 000000   		.space	3
 12315              	.LC180:
 12316 0050 46696C61 		.ascii	"Filament names must not contain commas\000"
 12316      6D656E74 
 12316      206E616D 
 12316      6573206D 
 12316      75737420 
 12317 0077 00       		.space	1
 12318              	.LC181:
 12319 0078 556E6C6F 		.ascii	"Unload the current filament before you attempt to l"
 12319      61642074 
 12319      68652063 
 12319      75727265 
 12319      6E742066 
 12320 00ab 6F616420 		.ascii	"oad another one\000"
 12320      616E6F74 
 12320      68657220 
 12320      6F6E6500 
 12321 00bb 00       		.space	1
 12322              	.LC182:
 12323 00bc 303A2F66 		.ascii	"0:/filaments/\000"
 12323      696C616D 
 12323      656E7473 
 12323      2F00
 12324 00ca 0000     		.space	2
 12325              	.LC183:
 12326 00cc 46696C61 		.ascii	"Filament configuration directory not found\000"
 12326      6D656E74 
 12326      20636F6E 
 12326      66696775 
 12326      72617469 
 12327 00f7 00       		.space	1
 12328              	.LC184:
 12329 00f8 4F6E6520 		.ascii	"One filament type can be only assigned to a single "
 12329      66696C61 
ARM GAS  /tmp/ccx5mP1m.s 			page 219


 12329      6D656E74 
 12329      20747970 
 12329      65206361 
 12330 012b 746F6F6C 		.ascii	"tool\000"
 12330      00
 12331              	.LC185:
 12332 0130 25732573 		.ascii	"%s%s/%s\000"
 12332      2F257300 
 12333              	.LC186:
 12334 0138 6C6F6164 		.ascii	"load.g\000"
 12334      2E6700
 12335 013f 00       		.space	1
 12336              	.LC187:
 12337 0140 4C6F6164 		.ascii	"Loaded filament in the selected tool: %s\000"
 12337      65642066 
 12337      696C616D 
 12337      656E7420 
 12337      696E2074 
 12338 0169 000000   		.space	3
 12339              	.LC188:
 12340 016c 4E6F2066 		.ascii	"No filament loaded in the selected tool\000"
 12340      696C616D 
 12340      656E7420 
 12340      6C6F6164 
 12340      65642069 
 12341              	.LC189:
 12342 0194 496E7661 		.ascii	"Invalid filament name\000"
 12342      6C696420 
 12342      66696C61 
 12342      6D656E74 
 12342      206E616D 
 12343 01aa 0000     		.space	2
 12344              	.LC190:
 12345 01ac 2C00     		.ascii	",\000"
 12346              		.section	.rodata._ZN6GCodes13CheckFilamentEv.str1.4,"aMS",%progbits,1
 12347              		.align	2
 12348              	.LC176:
 12349 0000 45787472 		.ascii	"Extruder %u reports %s\000"
 12349      75646572 
 12349      20257520 
 12349      7265706F 
 12349      72747320 
 12350              		.section	.rodata._ZN6GCodes13CheckTriggersEv.str1.4,"aMS",%progbits,1
 12351              		.align	2
 12352              	.LC174:
 12353 0000 303A2F73 		.ascii	"0:/sys/trigger%u.g\000"
 12353      79732F74 
 12353      72696767 
 12353      65722575 
 12353      2E6700
 12354 0013 00       		.space	1
 12355              	.LC175:
 12356 0014 5072696E 		.ascii	"Print paused by external trigger\000"
 12356      74207061 
 12356      75736564 
 12356      20627920 
 12356      65787465 
ARM GAS  /tmp/ccx5mP1m.s 			page 220


 12357              		.section	.rodata._ZN6GCodes13DoManualProbeER11GCodeBuffer.str1.4,"aMS",%progbits,1
 12358              		.align	2
 12359              	.LC47:
 12360 0000 4D616E75 		.ascii	"Manual bed probing\000"
 12360      616C2062 
 12360      65642070 
 12360      726F6269 
 12360      6E6700
 12361 0013 00       		.space	1
 12362              	.LC48:
 12363 0014 41646A75 		.ascii	"Adjust height until the nozzle just touches the bed"
 12363      73742068 
 12363      65696768 
 12363      7420756E 
 12363      74696C20 
 12364 0047 2C207468 		.ascii	", then press OK\000"
 12364      656E2070 
 12364      72657373 
 12364      204F4B00 
 12365              		.section	.rodata._ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12366              		.align	2
 12367              	.LC113:
 12368 0000 48656967 		.ascii	"Height map file %s not found\000"
 12368      6874206D 
 12368      61702066 
 12368      696C6520 
 12368      2573206E 
 12369 001d 000000   		.space	3
 12370              	.LC114:
 12371 0020 4661696C 		.ascii	"Failed to load height map from file %s: \000"
 12371      65642074 
 12371      6F206C6F 
 12371      61642068 
 12371      65696768 
 12372              		.section	.rodata._ZN6GCodes13StartPrintingEb.str1.4,"aMS",%progbits,1
 12373              		.align	2
 12374              	.LC62:
 12375 0000 53746172 		.ascii	"Started printing file %s\012\000"
 12375      74656420 
 12375      7072696E 
 12375      74696E67 
 12375      2066696C 
 12376 001a 0000     		.space	2
 12377              	.LC63:
 12378 001c 53746172 		.ascii	"Started simulating printing file %s\012\000"
 12378      74656420 
 12378      73696D75 
 12378      6C617469 
 12378      6E672070 
 12379 0041 000000   		.space	3
 12380              	.LC64:
 12381 0044 73746172 		.ascii	"start.g\000"
 12381      742E6700 
 12382              		.section	.rodata._ZN6GCodes14DoStraightMoveER11GCodeBufferb.str1.4,"aMS",%progbits,1
 12383              		.align	2
 12384              	.LC138:
 12385 0000 47302F47 		.ascii	"G0/G1: bad restore point number\000"
ARM GAS  /tmp/ccx5mP1m.s 			page 221


 12385      313A2062 
 12385      61642072 
 12385      6573746F 
 12385      72652070 
 12386              	.LC139:
 12387 0020 47302F47 		.ascii	"G0/G1: insufficient axes homed\000"
 12387      313A2069 
 12387      6E737566 
 12387      66696369 
 12387      656E7420 
 12388 003f 00       		.space	1
 12389              	.LC140:
 12390 0040 47302F47 		.ascii	"G0/G1: attempt to move individual motors of a delta"
 12390      313A2061 
 12390      7474656D 
 12390      70742074 
 12390      6F206D6F 
 12391 0073 206D6163 		.ascii	" machine to absolute positions\000"
 12391      68696E65 
 12391      20746F20 
 12391      6162736F 
 12391      6C757465 
 12392 0092 0000     		.space	2
 12393              	.LC141:
 12394 0094 47302F47 		.ascii	"G0/G1: outside machine limits\000"
 12394      313A206F 
 12394      75747369 
 12394      6465206D 
 12394      61636869 
 12395              		.section	.rodata._ZN6GCodes14SaveResumeInfoEb.str1.4,"aMS",%progbits,1
 12396              		.align	2
 12397              	.LC12:
 12398 0000 706F7765 		.ascii	"power failure\000"
 12398      72206661 
 12398      696C7572 
 12398      6500
 12399 000e 0000     		.space	2
 12400              	.LC13:
 12401 0010 7072696E 		.ascii	"print paused\000"
 12401      74207061 
 12401      75736564 
 12401      00
 12402 001d 000000   		.space	3
 12403              	.LC14:
 12404 0020 4D383300 		.ascii	"M83\000"
 12405              	.LC15:
 12406 0024 4D383200 		.ascii	"M82\000"
 12407              	.LC16:
 12408 0028 72657375 		.ascii	"resurrect.g\000"
 12408      72726563 
 12408      742E6700 
 12409              	.LC17:
 12410 0034 303A2F73 		.ascii	"0:/sys/\000"
 12410      79732F00 
 12411              	.LC18:
 12412 003c 4661696C 		.ascii	"Failed to create file %s\000"
 12412      65642074 
ARM GAS  /tmp/ccx5mP1m.s 			page 222


 12412      6F206372 
 12412      65617465 
 12412      2066696C 
 12413 0055 000000   		.space	3
 12414              	.LC19:
 12415 0058 3B204669 		.ascii	"; File \"%s\" resume print after %s\000"
 12415      6C652022 
 12415      25732220 
 12415      72657375 
 12415      6D652070 
 12416 007a 0000     		.space	2
 12417              	.LC20:
 12418 007c 20617420 		.ascii	" at %04u-%02u-%02u %02u:%02u\000"
 12418      25303475 
 12418      2D253032 
 12418      752D2530 
 12418      32752025 
 12419 0099 000000   		.space	3
 12420              	.LC21:
 12421 009c 4D313136 		.ascii	"M116\012M290 S%.3f\012\000"
 12421      0A4D3239 
 12421      30205325 
 12421      2E33660A 
 12421      00
 12422 00ad 000000   		.space	3
 12423              	.LC22:
 12424 00b0 2563252E 		.ascii	"%c%.03f\000"
 12424      30336600 
 12425              	.LC23:
 12426 00b8 47393220 		.ascii	"G92 E%.5f\012%s\012\000"
 12426      45252E35 
 12426      660A2573 
 12426      0A00
 12427 00c6 0000     		.space	2
 12428              	.LC24:
 12429 00c8 4D323320 		.ascii	"M23 %s\012M26 S%lu P%.3f\012\000"
 12429      25730A4D 
 12429      32362053 
 12429      256C7520 
 12429      50252E33 
 12430 00df 00       		.space	1
 12431              	.LC25:
 12432 00e0 47302046 		.ascii	"G0 F6000 Z%.3f\012\000"
 12432      36303030 
 12432      205A252E 
 12432      33660A00 
 12433              	.LC26:
 12434 00f0 47302046 		.ascii	"G0 F6000\000"
 12434      36303030 
 12434      00
 12435 00f9 000000   		.space	3
 12436              	.LC27:
 12437 00fc 0A473020 		.ascii	"\012G0 F6000 Z%.3f\012\000"
 12437      46363030 
 12437      30205A25 
 12437      2E33660A 
 12437      00
ARM GAS  /tmp/ccx5mP1m.s 			page 223


 12438 010d 000000   		.space	3
 12439              	.LC28:
 12440 0110 47312046 		.ascii	"G1 F%.1f\000"
 12440      252E3166 
 12440      00
 12441 0119 000000   		.space	3
 12442              	.LC29:
 12443 011c 0A4D3234 		.ascii	"\012M24\012\000"
 12443      0A00
 12444 0122 0000     		.space	2
 12445              	.LC30:
 12446 0124 20256325 		.ascii	" %c%.2f\000"
 12446      2E326600 
 12447              	.LC31:
 12448 012c 52657375 		.ascii	"Resume-after-power-fail state saved\012\000"
 12448      6D652D61 
 12448      66746572 
 12448      2D706F77 
 12448      65722D66 
 12449 0151 000000   		.space	3
 12450              	.LC32:
 12451 0154 4661696C 		.ascii	"Failed to write or close file %s\012\000"
 12451      65642074 
 12451      6F207772 
 12451      69746520 
 12451      6F722063 
 12452 0176 0000     		.space	2
 12453              	.LC33:
 12454 0178 72657375 		.ascii	"resurrect-prologue.g\000"
 12454      72726563 
 12454      742D7072 
 12454      6F6C6F67 
 12454      75652E67 
 12455 018d 000000   		.space	3
 12456              	.LC34:
 12457 0190 4D393820 		.ascii	"M98 P%s\012\000"
 12457      5025730A 
 12457      00
 12458 0199 000000   		.space	3
 12459              	.LC35:
 12460 019c 4D313036 		.ascii	"M106 S%.2f\012\000"
 12460      2053252E 
 12460      32660A00 
 12461              	.LC36:
 12462 01a8 4D323030 		.ascii	"M200 \000"
 12462      2000
 12463              		.section	.rodata._ZN6GCodes14SetToolHeatersEP4Toolfb.str1.4,"aMS",%progbits,1
 12464              		.align	2
 12465              	.LC103:
 12466 0000 53657474 		.ascii	"Setting temperature: no tool selected.\012\000"
 12466      696E6720 
 12466      74656D70 
 12466      65726174 
 12466      7572653A 
 12467              		.section	.rodata._ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12468              		.align	2
 12469              	.LC191:
ARM GAS  /tmp/ccx5mP1m.s 			page 224


 12470 0000 556E6C6F 		.ascii	"Unloading filament from this tool is not supported\000"
 12470      6164696E 
 12470      67206669 
 12470      6C616D65 
 12470      6E742066 
 12471 0033 00       		.space	1
 12472              	.LC192:
 12473 0034 756E6C6F 		.ascii	"unload.g\000"
 12473      61642E67 
 12473      00
 12474              		.section	.rodata._ZN6GCodes15DoEmergencyStopEv.str1.4,"aMS",%progbits,1
 12475              		.align	2
 12476              	.LC104:
 12477 0000 456D6572 		.ascii	"Emergency Stop! Reset the controller to continue.\000"
 12477      67656E63 
 12477      79205374 
 12477      6F702120 
 12477      52657365 
 12478              		.section	.rodata._ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm.str1.4,"aMS",%progbits,1
 12479              		.align	2
 12480              	.LC59:
 12481 0000 4661696C 		.ascii	"Failed to open GCode file \"%s\" for writing.\012\000"
 12481      65642074 
 12481      6F206F70 
 12481      656E2047 
 12481      436F6465 
 12482              		.section	.rodata._ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12483              		.align	2
 12484              	.LC148:
 12485 0000 47312F47 		.ascii	"G1/G2/G3: intermediate position outside machine lim"
 12485      322F4733 
 12485      3A20696E 
 12485      7465726D 
 12485      65646961 
 12486 0033 69747300 		.ascii	"its\000"
 12487 0037 00       		.space	1
 12488              	.LC149:
 12489 0038 4D757374 		.ascii	"Must home these axes:\000"
 12489      20686F6D 
 12489      65207468 
 12489      65736520 
 12489      61786573 
 12490 004e 0000     		.space	2
 12491              	.LC150:
 12492 0050 20626566 		.ascii	" before homing these:\000"
 12492      6F726520 
 12492      686F6D69 
 12492      6E672074 
 12492      68657365 
 12493 0066 0000     		.space	2
 12494              	.LC151:
 12495 0068 486F6D69 		.ascii	"Homing file %s not found\000"
 12495      6E672066 
 12495      696C6520 
 12495      2573206E 
 12495      6F742066 
 12496 0081 000000   		.space	3
ARM GAS  /tmp/ccx5mP1m.s 			page 225


 12497              	.LC152:
 12498 0084 486F6D69 		.ascii	"Homing failed\000"
 12498      6E672066 
 12498      61696C65 
 12498      6400
 12499 0092 0000     		.space	2
 12500              	.LC153:
 12501 0094 70617573 		.ascii	"pause.g\000"
 12501      652E6700 
 12502              	.LC154:
 12503 009c 5072696E 		.ascii	"Printing paused\012\000"
 12503      74696E67 
 12503      20706175 
 12503      7365640A 
 12503      00
 12504 00ad 000000   		.space	3
 12505              	.LC155:
 12506 00b0 5072696E 		.ascii	"Printing resumed\000"
 12506      74696E67 
 12506      20726573 
 12506      756D6564 
 12506      00
 12507 00c1 000000   		.space	3
 12508              	.LC156:
 12509 00c4 5072696E 		.ascii	"Printing resumed\012\000"
 12509      74696E67 
 12509      20726573 
 12509      756D6564 
 12509      0A00
 12510 00d6 0000     		.space	2
 12511              	.LC157:
 12512 00d8 536B6970 		.ascii	"Skipping grid point (%.1f, %.1f) because Z probe ca"
 12512      70696E67 
 12512      20677269 
 12512      6420706F 
 12512      696E7420 
 12513 010b 6E6E6F74 		.ascii	"nnot reach it\012\000"
 12513      20726561 
 12513      63682069 
 12513      740A00
 12514 011a 0000     		.space	2
 12515              	.LC158:
 12516 011c 5A207072 		.ascii	"Z probe already triggered before probing move start"
 12516      6F626520 
 12516      616C7265 
 12516      61647920 
 12516      74726967 
 12517 014f 656400   		.ascii	"ed\000"
 12518 0152 0000     		.space	2
 12519              	.LC159:
 12520 0154 5A207072 		.ascii	"Z probe was not triggered during probing move\012\000"
 12520      6F626520 
 12520      77617320 
 12520      6E6F7420 
 12520      74726967 
 12521 0183 00       		.space	1
 12522              	.LC160:
ARM GAS  /tmp/ccx5mP1m.s 			page 226


 12523 0184 72657472 		.ascii	"retractprobe.g\000"
 12523      61637470 
 12523      726F6265 
 12523      2E6700
 12524 0193 00       		.space	1
 12525              	.LC161:
 12526 0194 5A207072 		.ascii	"Z probe readings not consistent\012\000"
 12526      6F626520 
 12526      72656164 
 12526      696E6773 
 12526      206E6F74 
 12527 01b5 000000   		.space	3
 12528              	.LC162:
 12529 01b8 256C7520 		.ascii	"%lu points probed, mean error %.3f, deviation %.3f\012"
 12529      706F696E 
 12529      74732070 
 12529      726F6265 
 12529      642C206D 
 12530 01eb 00       		.ascii	"\000"
 12531              	.LC163:
 12532 01ec 546F6F20 		.ascii	"Too few points probed\000"
 12532      66657720 
 12532      706F696E 
 12532      74732070 
 12532      726F6265 
 12533 0202 0000     		.space	2
 12534              	.LC164:
 12535 0204 5A207072 		.ascii	"Z probe already triggered at start of probing move\012"
 12535      6F626520 
 12535      616C7265 
 12535      61647920 
 12535      74726967 
 12536 0237 00       		.ascii	"\000"
 12537              	.LC165:
 12538 0238 47333020 		.ascii	"G30 S-2 commanded with no tool selected\000"
 12538      532D3220 
 12538      636F6D6D 
 12538      616E6465 
 12538      64207769 
 12539              	.LC166:
 12540 0260 53746F70 		.ascii	"Stopped at height %.3f mm\000"
 12540      70656420 
 12540      61742068 
 12540      65696768 
 12540      7420252E 
 12541 027a 0000     		.space	2
 12542              	.LC167:
 12543 027c 46696C61 		.ascii	"Filament %s loaded\000"
 12543      6D656E74 
 12543      20257320 
 12543      6C6F6164 
 12543      656400
 12544 028f 00       		.space	1
 12545              	.LC168:
 12546 0290 46696C61 		.ascii	"Filament %s unloaded\000"
 12546      6D656E74 
 12546      20257320 
ARM GAS  /tmp/ccx5mP1m.s 			page 227


 12546      756E6C6F 
 12546      61646564 
 12547 02a5 000000   		.space	3
 12548              	.LC169:
 12549 02a8 556E6465 		.ascii	"Undefined GCodeState\012\000"
 12549      66696E65 
 12549      64204743 
 12549      6F646553 
 12549      74617465 
 12550 02be 0000     		.space	2
 12551              	.LC170:
 12552 02c0 74667265 		.ascii	"tfree%d.g\000"
 12552      6525642E 
 12552      6700
 12553 02ca 0000     		.space	2
 12554              	.LC171:
 12555 02cc 74707265 		.ascii	"tpre%d.g\000"
 12555      25642E67 
 12555      00
 12556 02d5 000000   		.space	3
 12557              	.LC172:
 12558 02d8 74706F73 		.ascii	"tpost%d.g\000"
 12558      7425642E 
 12558      6700
 12559              		.section	.rodata._ZN6GCodes15WriteHTMLToFileER11GCodeBufferc.str1.4,"aMS",%progbits,1
 12560              		.align	2
 12561              	.LC81:
 12562 0000 41747465 		.ascii	"Attempt to write to a null file.\012\000"
 12562      6D707420 
 12562      746F2077 
 12562      72697465 
 12562      20746F20 
 12563              		.section	.rodata._ZN6GCodes16CheckHeaterFaultEv.str1.4,"aMS",%progbits,1
 12564              		.align	2
 12565              	.LC146:
 12566 0000 53687574 		.ascii	"Shutting down due to un-cleared heater fault after "
 12566      74696E67 
 12566      20646F77 
 12566      6E206475 
 12566      6520746F 
 12567 0033 256C7520 		.ascii	"%lu seconds\012\000"
 12567      7365636F 
 12567      6E64730A 
 12567      00
 12568              	.LC147:
 12569 0040 48656174 		.ascii	"Heater fault\000"
 12569      65722066 
 12569      61756C74 
 12569      00
 12570              		.section	.rodata._ZN6GCodes16QueueFileToPrintEPKcRK9StringRef.str1.4,"aMS",%progbits,1
 12571              		.align	2
 12572              	.LC60:
 12573 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 12573      636F6465 
 12573      732F00
 12574 000b 00       		.space	1
 12575              	.LC61:
ARM GAS  /tmp/ccx5mP1m.s 			page 228


 12576 000c 47436F64 		.ascii	"GCode file \"%s\" not found\012\000"
 12576      65206669 
 12576      6C652022 
 12576      25732220 
 12576      6E6F7420 
 12577              		.section	.rodata._ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef.str1.4,"aMS",%progbits,1
 12578              		.align	2
 12579              	.LC97:
 12580 0000 48656174 		.ascii	"Heater %d is in bang-bang mode\000"
 12580      65722025 
 12580      64206973 
 12580      20696E20 
 12580      62616E67 
 12581 001f 00       		.space	1
 12582              	.LC98:
 12583 0020 48656174 		.ascii	"Heater %d P:%.1f I:%.3f D:%.1f\000"
 12583      65722025 
 12583      6420503A 
 12583      252E3166 
 12583      20493A25 
 12584 003f 00       		.space	1
 12585              	.LC99:
 12586 0040 48656174 		.ascii	"Heater %d uses model-derived PID parameters. Use M3"
 12586      65722025 
 12586      64207573 
 12586      6573206D 
 12586      6F64656C 
 12587 0073 30372048 		.ascii	"07 H%d to view them\000"
 12587      25642074 
 12587      6F207669 
 12587      65772074 
 12587      68656D00 
 12588              		.section	.rodata._ZN6GCodes16WriteGCodeToFileER11GCodeBuffer.str1.4,"aMS",%progbits,1
 12589              		.align	2
 12590              	.LC173:
 12591 0000 256C690A 		.ascii	"%li\012\000"
 12591      00
 12592              		.section	.rodata._ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,
 12593              		.align	2
 12594              	.LC108:
 12595 0000 41747465 		.ascii	"Attempt to set/report offsets and temperatures for "
 12595      6D707420 
 12595      746F2073 
 12595      65742F72 
 12595      65706F72 
 12596 0033 6E6F6E2D 		.ascii	"non-existent tool: %d\000"
 12596      65786973 
 12596      74656E74 
 12596      20746F6F 
 12596      6C3A2025 
 12597 0049 000000   		.space	3
 12598              	.LC109:
 12599 004c 41747465 		.ascii	"Attempt to set/report offsets and temperatures for "
 12599      6D707420 
 12599      746F2073 
 12599      65742F72 
 12599      65706F72 
ARM GAS  /tmp/ccx5mP1m.s 			page 229


 12600 007f 6E6F2073 		.ascii	"no selected tool\000"
 12600      656C6563 
 12600      74656420 
 12600      746F6F6C 
 12600      00
 12601              	.LC110:
 12602 0090 546F6F6C 		.ascii	"Tool %d offsets:\000"
 12602      20256420 
 12602      6F666673 
 12602      6574733A 
 12602      00
 12603 00a1 000000   		.space	3
 12604              	.LC111:
 12605 00a4 2C206163 		.ascii	", active/standby temperature(s):\000"
 12605      74697665 
 12605      2F737461 
 12605      6E646279 
 12605      2074656D 
 12606 00c5 000000   		.space	3
 12607              	.LC112:
 12608 00c8 20252E31 		.ascii	" %.1f/%.1f\000"
 12608      662F252E 
 12608      316600
 12609              		.section	.rodata._ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits
 12610              		.align	2
 12611              	.LC100:
 12612 0000 756E6162 		.ascii	"unable to use sensor channel %li on heater %d\000"
 12612      6C652074 
 12612      6F207573 
 12612      65207365 
 12612      6E736F72 
 12613 002e 0000     		.space	2
 12614              	.LC101:
 12615 0030 68656174 		.ascii	"heater number %d is out of range\000"
 12615      6572206E 
 12615      756D6265 
 12615      72202564 
 12615      20697320 
 12616 0051 000000   		.space	3
 12617              	.LC102:
 12618 0054 68656174 		.ascii	"heater %d is not configured\000"
 12618      65722025 
 12618      64206973 
 12618      206E6F74 
 12618      20636F6E 
 12619              		.section	.rodata._ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits
 12620              		.align	2
 12621              	.LC87:
 12622 0000 28756E64 		.ascii	"(undefined)\000"
 12622      6566696E 
 12622      65642900 
 12623              	.LC88:
 12624 000c 65786365 		.ascii	"exceeds\000"
 12624      65647300 
 12625              	.LC89:
 12626 0014 66616C6C 		.ascii	"falls below\000"
 12626      73206265 
ARM GAS  /tmp/ccx5mP1m.s 			page 230


 12626      6C6F7700 
 12627              	.LC90:
 12628 0020 496E7661 		.ascii	"Invalid heater protection item '%d'\000"
 12628      6C696420 
 12628      68656174 
 12628      65722070 
 12628      726F7465 
 12629              	.LC91:
 12630 0044 496E7661 		.ascii	"Invalid heater number '%d'\000"
 12630      6C696420 
 12630      68656174 
 12630      6572206E 
 12630      756D6265 
 12631 005f 00       		.space	1
 12632              	.LC92:
 12633 0060 496E7661 		.ascii	"Invalid heater protection action '%d'\000"
 12633      6C696420 
 12633      68656174 
 12633      65722070 
 12633      726F7465 
 12634 0086 0000     		.space	2
 12635              	.LC93:
 12636 0088 496E7661 		.ascii	"Invalid heater protection trigger '%d'\000"
 12636      6C696420 
 12636      68656174 
 12636      65722070 
 12636      726F7465 
 12637 00af 00       		.space	1
 12638              	.LC94:
 12639 00b0 496E7661 		.ascii	"Invalid temperature limit\000"
 12639      6C696420 
 12639      74656D70 
 12639      65726174 
 12639      75726520 
 12640 00ca 0000     		.space	2
 12641              	.LC95:
 12642 00cc 54656D70 		.ascii	"Temperature protection item %d is not configured\000"
 12642      65726174 
 12642      75726520 
 12642      70726F74 
 12642      65637469 
 12643 00fd 000000   		.space	3
 12644              	.LC96:
 12645 0100 54656D70 		.ascii	"Temperature protection item %d is configured for he"
 12645      65726174 
 12645      75726520 
 12645      70726F74 
 12645      65637469 
 12646 0133 61746572 		.ascii	"ater %d and supervises heater %d to %s if the tempe"
 12646      20256420 
 12646      616E6420 
 12646      73757065 
 12646      72766973 
 12647 0166 72617475 		.ascii	"rature %s %.1f\302\260C\000"
 12647      72652025 
 12647      7320252E 
 12647      3166C2B0 
ARM GAS  /tmp/ccx5mP1m.s 			page 231


 12647      4300
 12648              		.section	.rodata._ZN6GCodes22TranslateEndStopResultE10EndStopHit.str1.4,"aMS",%progbits,1
 12649              		.align	2
 12650              	.LC115:
 12651 0000 6E6F7420 		.ascii	"not stopped\000"
 12651      73746F70 
 12651      70656400 
 12652              		.section	.rodata._ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer.str1.4,"aMS",%progbi
 12653              		.align	2
 12654              	.LC43:
 12655 0000 4D756C74 		.ascii	"Multiple E parameters in G1 commands are not suppor"
 12655      69706C65 
 12655      20452070 
 12655      6172616D 
 12655      65746572 
 12656 0033 74656420 		.ascii	"ted in absolute extrusion mode\012\000"
 12656      696E2061 
 12656      62736F6C 
 12656      75746520 
 12656      65787472 
 12657              		.section	.rodata._ZN6GCodes3PopER11GCodeBuffer.str1.4,"aMS",%progbits,1
 12658              		.align	2
 12659              	.LC42:
 12660 0000 506F7028 		.ascii	"Pop(): stack underflow!\012\000"
 12660      293A2073 
 12660      7461636B 
 12660      20756E64 
 12660      6572666C 
 12661              		.section	.rodata._ZN6GCodes4InitEv.str1.4,"aMS",%progbits,1
 12662              		.align	2
 12663              	.LC105:
 12664 0000 3C212D2D 		.ascii	"<!-- **EoF** -->\000"
 12664      202A2A45 
 12664      6F462A2A 
 12664      202D2D3E 
 12664      00
 12665              		.section	.rodata._ZN6GCodes4PushER11GCodeBuffer.part.55.str1.4,"aMS",%progbits,1
 12666              		.align	2
 12667              	.LC0:
 12668 0000 50757368 		.ascii	"Push(): stack overflow!\012\000"
 12668      28293A20 
 12668      73746163 
 12668      6B206F76 
 12668      6572666C 
 12669              		.section	.rodata._ZN6GCodes4SpinEv.str1.4,"aMS",%progbits,1
 12670              		.align	2
 12671              	.LC177:
 12672 0000 41747465 		.ascii	"Attempting to extrude with no tool selected.\012\000"
 12672      6D707469 
 12672      6E672074 
 12672      6F206578 
 12672      74727564 
 12673              		.section	.rodata._ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc.str1.4,"aMS",%progbits,1
 12674              		.align	2
 12675              	.LC136:
 12676 0000 50617573 		.ascii	"Paused print, file offset=%lu\012\000"
 12676      65642070 
ARM GAS  /tmp/ccx5mP1m.s 			page 232


 12676      72696E74 
 12676      2C206669 
 12676      6C65206F 
 12677 001f 00       		.space	1
 12678              	.LC137:
 12679 0020 5072696E 		.ascii	"Printing paused\000"
 12679      74696E67 
 12679      20706175 
 12679      73656400 
 12680              		.section	.rodata._ZN6GCodes9DoArcMoveER11GCodeBufferb.str1.4,"aMS",%progbits,1
 12681              		.align	2
 12682              	.LC142:
 12683 0000 47322F47 		.ascii	"G2/G3: missing parameter\000"
 12683      333A206D 
 12683      69737369 
 12683      6E672070 
 12683      6172616D 
 12684 0019 000000   		.space	3
 12685              	.LC143:
 12686 001c 47322F47 		.ascii	"G2/G3: insufficient axes homed\000"
 12686      333A2069 
 12686      6E737566 
 12686      66696369 
 12686      656E7420 
 12687 003b 00       		.space	1
 12688              	.LC144:
 12689 003c 47322F47 		.ascii	"G2/G3: outside machine limits\000"
 12689      333A206F 
 12689      75747369 
 12689      6465206D 
 12689      61636869 
 12690              		.section	.rodata._ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12691              		.align	2
 12692              	.LC106:
 12693 0000 4E6F2076 		.ascii	"No valid grid defined for bed probing\000"
 12693      616C6964 
 12693      20677269 
 12693      64206465 
 12693      66696E65 
 12694 0026 0000     		.space	2
 12695              	.LC107:
 12696 0028 4D757374 		.ascii	"Must home printer before bed probing\000"
 12696      20686F6D 
 12696      65207072 
 12696      696E7465 
 12696      72206265 
 12697              		.section	.rodata._ZN6GCodes9StartHashEPKc.str1.4,"aMS",%progbits,1
 12698              		.align	2
 12699              	.LC118:
 12700 0000 303A00   		.ascii	"0:\000"
 12701              		.section	.rodata._ZN6GCodes9StopPrintE15StopPrintReason.str1.4,"aMS",%progbits,1
 12702              		.align	2
 12703              	.LC128:
 12704 0000 28756E6B 		.ascii	"(unknown)\000"
 12704      6E6F776E 
 12704      2900
 12705 000a 0000     		.space	2
ARM GAS  /tmp/ccx5mP1m.s 			page 233


 12706              	.LC129:
 12707 000c 46696C65 		.ascii	"File %s will print in %luh %lum plus heating time\012"
 12707      20257320 
 12707      77696C6C 
 12707      20707269 
 12707      6E742069 
 12708 003e 00       		.ascii	"\000"
 12709 003f 00       		.space	1
 12710              	.LC130:
 12711 0040 43616E63 		.ascii	"Cancelled simulating file %s after %luh %lum simula"
 12711      656C6C65 
 12711      64207369 
 12711      6D756C61 
 12711      74696E67 
 12712 0073 74656420 		.ascii	"ted time\012\000"
 12712      74696D65 
 12712      0A00
 12713 007d 000000   		.space	3
 12714              	.LC131:
 12715 0080 446F6E65 		.ascii	"Done printing file\012\000"
 12715      20707269 
 12715      6E74696E 
 12715      67206669 
 12715      6C650A00 
 12716              	.LC132:
 12717 0094 43616E63 		.ascii	"Cancelled\000"
 12717      656C6C65 
 12717      6400
 12718 009e 0000     		.space	2
 12719              	.LC133:
 12720 00a0 25732070 		.ascii	"%s printing file %s, print time was %luh %lum\012\000"
 12720      72696E74 
 12720      696E6720 
 12720      66696C65 
 12720      2025732C 
 12721 00cf 00       		.space	1
 12722              	.LC134:
 12723 00d0 46696E69 		.ascii	"Finished\000"
 12723      73686564 
 12723      00
 12724              		.section	.rodata._ZN6GCodesC2ER8Platform.str1.4,"aMS",%progbits,1
 12725              		.align	2
 12726              	.LC4:
 12727 0000 68747470 		.ascii	"http\000"
 12727      00
 12728 0005 000000   		.space	3
 12729              	.LC5:
 12730 0008 74656C6E 		.ascii	"telnet\000"
 12730      657400
 12731 000f 00       		.space	1
 12732              	.LC6:
 12733 0010 66696C65 		.ascii	"file\000"
 12733      00
 12734 0015 000000   		.space	3
 12735              	.LC7:
 12736 0018 73657269 		.ascii	"serial\000"
 12736      616C00
ARM GAS  /tmp/ccx5mP1m.s 			page 234


 12737 001f 00       		.space	1
 12738              	.LC8:
 12739 0020 61757800 		.ascii	"aux\000"
 12740              	.LC9:
 12741 0024 6461656D 		.ascii	"daemon\000"
 12741      6F6E00
 12742 002b 00       		.space	1
 12743              	.LC10:
 12744 002c 71756575 		.ascii	"queue\000"
 12744      6500
 12745 0032 0000     		.space	2
 12746              	.LC11:
 12747 0034 6175746F 		.ascii	"autopause\000"
 12747      70617573 
 12747      6500
 12748              		.section	.rodata._ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12749              		.align	2
 12750              	.LC49:
 12751 0000 68656967 		.ascii	"heightmap.csv\000"
 12751      68746D61 
 12751      702E6373 
 12751      7600
 12752 000e 0000     		.space	2
 12753              	.LC50:
 12754 0010 4661696C 		.ascii	"Failed to create height map file %s\000"
 12754      65642074 
 12754      6F206372 
 12754      65617465 
 12754      20686569 
 12755              	.LC51:
 12756 0034 4661696C 		.ascii	"Failed to save height map to file %s\000"
 12756      65642074 
 12756      6F207361 
 12756      76652068 
 12756      65696768 
 12757 0059 000000   		.space	3
 12758              	.LC52:
 12759 005c 48656967 		.ascii	"Height map saved to file %s\000"
 12759      6874206D 
 12759      61702073 
 12759      61766564 
 12759      20746F20 
 12760              		.section	.rodata._ZNK6GCodes20GetMachineModeStringEv.str1.4,"aMS",%progbits,1
 12761              		.align	2
 12762              	.LC145:
 12763 0000 556E6B6E 		.ascii	"Unknown\000"
 12763      6F776E00 
 12764              		.section	.rodata._ZNK6GCodes21GetCurrentCoordinatesERK9StringRef.str1.4,"aMS",%progbits,1
 12765              		.align	2
 12766              	.LC53:
 12767 0000 25633A25 		.ascii	"%c:%.3f \000"
 12767      2E336620 
 12767      00
 12768 0009 000000   		.space	3
 12769              	.LC54:
 12770 000c 20436F75 		.ascii	" Count\000"
 12770      6E7400
ARM GAS  /tmp/ccx5mP1m.s 			page 235


 12771 0013 00       		.space	1
 12772              	.LC55:
 12773 0014 4525753A 		.ascii	"E%u:%.1f \000"
 12773      252E3166 
 12773      2000
 12774 001e 0000     		.space	2
 12775              	.LC56:
 12776 0020 204D6163 		.ascii	" Machine\000"
 12776      68696E65 
 12776      00
 12777 0029 000000   		.space	3
 12778              	.LC57:
 12779 002c 20256C69 		.ascii	" %li\000"
 12779      00
 12780 0031 000000   		.space	3
 12781              	.LC58:
 12782 0034 20252E33 		.ascii	" %.3f\000"
 12782      6600
 12783              		.section	.rodata._ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61.str1.4,"aMS",%pr
 12784              		.align	2
 12785              	.LC1:
 12786 0000 54257500 		.ascii	"T%u\000"
 12787              	.LC2:
 12788 0004 5400     		.ascii	"T\000"
 12789 0006 0000     		.space	2
 12790              	.LC3:
 12791 0008 2563252E 		.ascii	"%c%.1f /%.1f\000"
 12791      3166202F 
 12791      252E3166 
 12791      00
 12792              		.section	.rodata._ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef.str1.4,"aMS",%pro
 12793              		.align	2
 12794              	.LC120:
 12795 0000 636F6E66 		.ascii	"config-override.g\000"
 12795      69672D6F 
 12795      76657272 
 12795      6964652E 
 12795      6700
 12796 0012 0000     		.space	2
 12797              	.LC121:
 12798 0014 3B205468 		.ascii	"; This is a system-generated file - do not edit\012"
 12798      69732069 
 12798      73206120 
 12798      73797374 
 12798      656D2D67 
 12799 0044 00       		.ascii	"\000"
 12800 0045 000000   		.space	3
 12801              	.LC122:
 12802 0048 4661696C 		.ascii	"Failed to write file %s\000"
 12802      65642074 
 12802      6F207772 
 12802      69746520 
 12802      66696C65 
 12803              	.LC123:
 12804 0060 4E6F204D 		.ascii	"No M501 command was executed in config.g\000"
 12804      35303120 
 12804      636F6D6D 
ARM GAS  /tmp/ccx5mP1m.s 			page 236


 12804      616E6420 
 12804      77617320 
 12805              		.section	.rodata._ZNK6GCodes25GenerateTemperatureReportERK9StringRef.str1.4,"aMS",%progbits,1
 12806              		.align	2
 12807              	.LC124:
 12808 0000 423A00   		.ascii	"B:\000"
 12809 0003 00       		.space	1
 12810              	.LC125:
 12811 0004 252E3166 		.ascii	"%.1f /%.1f\000"
 12811      202F252E 
 12811      316600
 12812 000f 00       		.space	1
 12813              	.LC126:
 12814 0010 433A00   		.ascii	"C:\000"
 12815 0013 00       		.space	1
 12816              	.LC127:
 12817 0014 20432575 		.ascii	" C%u:\000"
 12817      3A00
 12818              		.section	.rodata.str1.4,"aMS",%progbits,1
 12819              		.align	2
 12820              	.LC193:
 12821 0000 46464600 		.ascii	"FFF\000"
 12822              	.LC194:
 12823 0004 4C617365 		.ascii	"Laser\000"
 12823      7200
 12824 000a 0000     		.space	2
 12825              	.LC195:
 12826 000c 434E4300 		.ascii	"CNC\000"
 12827              	.LC196:
 12828 0010 6174206D 		.ascii	"at min stop\000"
 12828      696E2073 
 12828      746F7000 
 12829              	.LC197:
 12830 001c 6174206D 		.ascii	"at max stop\000"
 12830      61782073 
 12830      746F7000 
 12831              	.LC198:
 12832 0028 6E656172 		.ascii	"near stop\000"
 12832      2073746F 
 12832      7000
 12833 0032 0000     		.space	2
 12834              	.LC199:
 12835 0034 67656E65 		.ascii	"generate a heater fault\000"
 12835      72617465 
 12835      20612068 
 12835      65617465 
 12835      72206661 
 12836              	.LC200:
 12837 004c 7065726D 		.ascii	"permanently switch off\000"
 12837      616E656E 
 12837      746C7920 
 12837      73776974 
 12837      6368206F 
 12838 0063 00       		.space	1
 12839              	.LC201:
 12840 0064 74656D70 		.ascii	"temporarily switch off\000"
 12840      6F726172 
ARM GAS  /tmp/ccx5mP1m.s 			page 237


 12840      696C7920 
 12840      73776974 
 12840      6368206F 
 12841              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
