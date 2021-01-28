ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 1


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
  13              		.file	"GCodes3.cpp"
  14              		.text
  15              		.section	.text._ZNK10Kinematics16AxesAssumedHomedEm,"axG",%progbits,_ZNK10Kinematics16AxesAssumedH
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZNK10Kinematics16AxesAssumedHomedEm
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK10Kinematics16AxesAssumedHomedEm, %function
  24              	_ZNK10Kinematics16AxesAssumedHomedEm:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0846     		mov	r0, r1
  29 0002 7047     		bx	lr
  30              		.size	_ZNK10Kinematics16AxesAssumedHomedEm, .-_ZNK10Kinematics16AxesAssumedHomedEm
  31              		.global	__aeabi_f2d
  32              		.section	.text._ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef, %function
  41              	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef:
  42              		@ args = 0, pretend = 0, frame = 64
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  45 0004 0E46     		mov	r6, r1
  46 0006 96B0     		sub	sp, sp, #88
  47 0008 0746     		mov	r7, r0
  48 000a 5421     		movs	r1, #84
  49 000c 3046     		mov	r0, r6
  50 000e 9246     		mov	r10, r2
  51 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  52 0014 8146     		mov	r9, r0
  53 0016 0028     		cmp	r0, #0
  54 0018 6BD1     		bne	.L22
  55 001a 7868     		ldr	r0, [r7, #4]
  56 001c 90F8CC80 		ldrb	r8, [r0, #204]	@ zero_extendqisi2
  57              	.L7:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 2


  58 0020 4146     		mov	r1, r8
  59 0022 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
  60 0026 0546     		mov	r5, r0
  61 0028 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  62 002a 0AAC     		add	r4, sp, #40
  63 002c 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  64 002e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  65 0030 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  66 0032 95E80F00 		ldm	r5, {r0, r1, r2, r3}
  67 0036 16AD     		add	r5, sp, #88
  68 0038 4FF0000C 		mov	ip, #0
  69 003c 05F839CD 		strb	ip, [r5, #-57]!
  70 0040 84E80F00 		stm	r4, {r0, r1, r2, r3}
  71 0044 2B46     		mov	r3, r5
  72 0046 0BAA     		add	r2, sp, #44
  73 0048 97F81015 		ldrb	r1, [r7, #1296]	@ zero_extendqisi2
  74 004c 3046     		mov	r0, r6
  75 004e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
  76 0052 2B46     		mov	r3, r5
  77 0054 0CAA     		add	r2, sp, #48
  78 0056 97F81115 		ldrb	r1, [r7, #1297]	@ zero_extendqisi2
  79 005a 3046     		mov	r0, r6
  80 005c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
  81 0060 2B46     		mov	r3, r5
  82 0062 0DAA     		add	r2, sp, #52
  83 0064 97F81215 		ldrb	r1, [r7, #1298]	@ zero_extendqisi2
  84 0068 3046     		mov	r0, r6
  85 006a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
  86 006e 5021     		movs	r1, #80
  87 0070 2B46     		mov	r3, r5
  88 0072 0AAA     		add	r2, sp, #40
  89 0074 3046     		mov	r0, r6
  90 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
  91 007a 4321     		movs	r1, #67
  92 007c 3046     		mov	r0, r6
  93 007e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  94 0082 0028     		cmp	r0, #0
  95 0084 4ED1     		bne	.L23
  96              	.L8:
  97 0086 9DF81F30 		ldrb	r3, [sp, #31]	@ zero_extendqisi2
  98 008a 002B     		cmp	r3, #0
  99 008c 3BD1     		bne	.L24
 100 008e B9F1000F 		cmp	r9, #0
 101 0092 15D1     		bne	.L25
 102 0094 7868     		ldr	r0, [r7, #4]
 103 0096 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 104 009a 09AA     		add	r2, sp, #36
 105 009c 0446     		mov	r4, r0
 106 009e 08A9     		add	r1, sp, #32
 107 00a0 7868     		ldr	r0, [r7, #4]
 108 00a2 FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 109 00a6 0128     		cmp	r0, #1
 110 00a8 5ED0     		beq	.L13
 111 00aa 0228     		cmp	r0, #2
 112 00ac 53D0     		beq	.L14
 113 00ae 2246     		mov	r2, r4
 114 00b0 5046     		mov	r0, r10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 3


 115 00b2 3449     		ldr	r1, .L27
 116 00b4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 117              	.L15:
 118 00b8 0120     		movs	r0, #1
 119 00ba 16B0     		add	sp, sp, #88
 120              		@ sp needed
 121 00bc BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 122              	.L25:
 123 00c0 0C98     		ldr	r0, [sp, #48]	@ float
 124 00c2 0A9C     		ldr	r4, [sp, #40]
 125 00c4 FFF7FEFF 		bl	__aeabi_f2d
 126 00c8 CDE90401 		strd	r0, [sp, #16]
 127 00cc 0B98     		ldr	r0, [sp, #44]	@ float
 128 00ce FFF7FEFF 		bl	__aeabi_f2d
 129 00d2 CDE90201 		strd	r0, [sp, #8]
 130 00d6 0D98     		ldr	r0, [sp, #52]	@ float
 131 00d8 FFF7FEFF 		bl	__aeabi_f2d
 132 00dc 2246     		mov	r2, r4
 133 00de CDE90001 		strd	r0, [sp]
 134 00e2 5046     		mov	r0, r10
 135 00e4 2849     		ldr	r1, .L27+4
 136 00e6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 137 00ea 0120     		movs	r0, #1
 138              	.L6:
 139 00ec 16B0     		add	sp, sp, #88
 140              		@ sp needed
 141 00ee BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 142              	.L22:
 143 00f2 3046     		mov	r0, r6
 144 00f4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 145 00f8 431E     		subs	r3, r0, #1
 146 00fa 092B     		cmp	r3, #9
 147 00fc 3BD8     		bhi	.L26
 148 00fe 5FFA80F8 		uxtb	r8, r0
 149 0102 7868     		ldr	r0, [r7, #4]
 150 0104 8CE7     		b	.L7
 151              	.L24:
 152 0106 3146     		mov	r1, r6
 153 0108 3846     		mov	r0, r7
 154 010a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 155 010e 0028     		cmp	r0, #0
 156 0110 ECD0     		beq	.L6
 157 0112 7868     		ldr	r0, [r7, #4]
 158 0114 0AAA     		add	r2, sp, #40
 159 0116 4146     		mov	r1, r8
 160 0118 FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe
 161 011c 0120     		movs	r0, #1
 162 011e 16B0     		add	sp, sp, #88
 163              		@ sp needed
 164 0120 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 165              	.L23:
 166 0124 3046     		mov	r0, r6
 167 0126 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 168 012a 0123     		movs	r3, #1
 169 012c 5321     		movs	r1, #83
 170 012e 3046     		mov	r0, r6
 171 0130 8DED0F0A 		vstr.32	s0, [sp, #60]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 4


 172 0134 8DF81F30 		strb	r3, [sp, #31]
 173 0138 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 174 013c 28B1     		cbz	r0, .L9
 175 013e 3046     		mov	r0, r6
 176 0140 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 177 0144 8DED0E0A 		vstr.32	s0, [sp, #56]
 178 0148 9DE7     		b	.L8
 179              	.L9:
 180 014a 7868     		ldr	r0, [r7, #4]
 181 014c FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 182 0150 8DED0E0A 		vstr.32	s0, [sp, #56]
 183 0154 97E7     		b	.L8
 184              	.L14:
 185 0156 DDE90832 		ldrd	r3, r2, [sp, #32]
 186 015a 5046     		mov	r0, r10
 187 015c 0092     		str	r2, [sp]
 188 015e 0B49     		ldr	r1, .L27+8
 189 0160 2246     		mov	r2, r4
 190 0162 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 191 0166 A7E7     		b	.L15
 192              	.L13:
 193 0168 2246     		mov	r2, r4
 194 016a 5046     		mov	r0, r10
 195 016c 089B     		ldr	r3, [sp, #32]
 196 016e 0849     		ldr	r1, .L27+12
 197 0170 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 198 0174 A0E7     		b	.L15
 199              	.L26:
 200 0176 5046     		mov	r0, r10
 201 0178 0649     		ldr	r1, .L27+16
 202 017a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 203 017e 0220     		movs	r0, #2
 204 0180 B4E7     		b	.L6
 205              	.L28:
 206 0182 00BF     		.align	2
 207              	.L27:
 208 0184 64000000 		.word	.LC5
 209 0188 18000000 		.word	.LC2
 210 018c 58000000 		.word	.LC4
 211 0190 50000000 		.word	.LC3
 212 0194 00000000 		.word	.LC1
 213              		.size	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef, .-_ZN6GCodes14SetPrintZProbeER11GCode
 214              		.section	.text._ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef,"ax",%progbits
 215              		.align	1
 216              		.p2align 2,,3
 217              		.global	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef
 218              		.syntax unified
 219              		.thumb
 220              		.thumb_func
 221              		.fpu fpv4-sp-d16
 222              		.type	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef, %function
 223              	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef:
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 227 0002 0F46     		mov	r7, r1
 228 0004 0546     		mov	r5, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 5


 229 0006 5321     		movs	r1, #83
 230 0008 3846     		mov	r0, r7
 231 000a 1646     		mov	r6, r2
 232 000c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 233 0010 D0B1     		cbz	r0, .L33
 234 0012 3846     		mov	r0, r7
 235 0014 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 236 0018 0528     		cmp	r0, #5
 237 001a 0446     		mov	r4, r0
 238 001c 19D8     		bhi	.L31
 239 001e 0601     		lsls	r6, r0, #4
 240 0020 311A     		subs	r1, r6, r0
 241 0022 8900     		lsls	r1, r1, #2
 242 0024 01F5F671 		add	r1, r1, #492
 243              	.L30:
 244 0028 2944     		add	r1, r1, r5
 245 002a 2846     		mov	r0, r5
 246 002c 3A46     		mov	r2, r7
 247 002e FFF7FEFF 		bl	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer
 248 0032 0B48     		ldr	r0, .L35
 249 0034 FFF7FEFF 		bl	_ZNK6RepRap20GetCurrentToolNumberEv
 250 0038 341B     		subs	r4, r6, r4
 251 003a 05EB8405 		add	r5, r5, r4, lsl #2
 252 003e 0123     		movs	r3, #1
 253 0040 C5F82002 		str	r0, [r5, #544]
 254              	.L32:
 255 0044 1846     		mov	r0, r3
 256 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 257              	.L33:
 258 0048 0446     		mov	r4, r0
 259 004a 0646     		mov	r6, r0
 260 004c 4FF4F671 		mov	r1, #492
 261 0050 EAE7     		b	.L30
 262              	.L31:
 263 0052 3046     		mov	r0, r6
 264 0054 0349     		ldr	r1, .L35+4
 265 0056 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 266 005a 0223     		movs	r3, #2
 267 005c F2E7     		b	.L32
 268              	.L36:
 269 005e 00BF     		.align	2
 270              	.L35:
 271 0060 00000000 		.word	reprap
 272 0064 00000000 		.word	.LC6
 273              		.size	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef, .-_ZN6GCodes12SavePositionER11GCodeBuff
 274              		.section	.text._ZN6GCodes12SetPositionsER11GCodeBuffer,"ax",%progbits
 275              		.align	1
 276              		.p2align 2,,3
 277              		.global	_ZN6GCodes12SetPositionsER11GCodeBuffer
 278              		.syntax unified
 279              		.thumb
 280              		.thumb_func
 281              		.fpu fpv4-sp-d16
 282              		.type	_ZN6GCodes12SetPositionsER11GCodeBuffer, %function
 283              	_ZN6GCodes12SetPositionsER11GCodeBuffer:
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 6


 286 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 287 0004 2DED028B 		vpush.64	{d8}
 288 0008 D0F86033 		ldr	r3, [r0, #864]
 289 000c 83B0     		sub	sp, sp, #12
 290 000e 0546     		mov	r5, r0
 291 0010 0F46     		mov	r7, r1
 292 0012 002B     		cmp	r3, #0
 293 0014 00F08480 		beq	.L38
 294 0018 4FF00008 		mov	r8, #0
 295 001c 4446     		mov	r4, r8
 296 001e 00F20F56 		addw	r6, r0, #1295
 297 0022 4FF00109 		mov	r9, #1
 298 0026 04E0     		b	.L43
 299              	.L39:
 300 0028 D5F86033 		ldr	r3, [r5, #864]
 301 002c 0134     		adds	r4, r4, #1
 302 002e A342     		cmp	r3, r4
 303 0030 1FD9     		bls	.L65
 304              	.L43:
 305 0032 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 306 0036 3846     		mov	r0, r7
 307 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 308 003c 0028     		cmp	r0, #0
 309 003e F3D0     		beq	.L39
 310 0040 3846     		mov	r0, r7
 311 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 312 0046 B0EE408A 		vmov.f32	s16, s0
 313 004a B8F1000F 		cmp	r8, #0
 314 004e 1ED0     		beq	.L40
 315              	.L41:
 316 0050 D5EDEE7A 		vldr.32	s15, [r5, #952]
 317 0054 27EE880A 		vmul.f32	s0, s15, s16
 318 0058 05EB8402 		add	r2, r5, r4, lsl #2
 319 005c 09FA04F3 		lsl	r3, r9, r4
 320 0060 82ED300A 		vstr.32	s0, [r2, #192]
 321 0064 48EA0308 		orr	r8, r8, r3
 322 0068 D5F86033 		ldr	r3, [r5, #864]
 323 006c 0134     		adds	r4, r4, #1
 324 006e A342     		cmp	r3, r4
 325 0070 DFD8     		bhi	.L43
 326              	.L65:
 327 0072 4521     		movs	r1, #69
 328 0074 3846     		mov	r0, r7
 329 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 330 007a 80B9     		cbnz	r0, .L66
 331 007c B8F1000F 		cmp	r8, #0
 332 0080 19D1     		bne	.L45
 333              	.L64:
 334 0082 0120     		movs	r0, #1
 335              	.L62:
 336 0084 03B0     		add	sp, sp, #12
 337              		@ sp needed
 338 0086 BDEC028B 		vldm	sp!, {d8}
 339 008a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 340              	.L40:
 341 008e 3946     		mov	r1, r7
 342 0090 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 7


 343 0092 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 344 0096 0028     		cmp	r0, #0
 345 0098 DAD1     		bne	.L41
 346 009a 4046     		mov	r0, r8
 347 009c F2E7     		b	.L62
 348              	.L66:
 349 009e 3846     		mov	r0, r7
 350 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 351 00a4 D5EDEE7A 		vldr.32	s15, [r5, #952]
 352 00a8 27EE800A 		vmul.f32	s0, s15, s0
 353 00ac 85EDE30A 		vstr.32	s0, [r5, #908]
 354 00b0 B8F1000F 		cmp	r8, #0
 355 00b4 E5D0     		beq	.L64
 356              	.L45:
 357 00b6 05F1EC04 		add	r4, r5, #236
 358 00ba 05F1C007 		add	r7, r5, #192
 359 00be 224E     		ldr	r6, .L69
 360 00c0 3946     		mov	r1, r7
 361 00c2 2246     		mov	r2, r4
 362 00c4 0023     		movs	r3, #0
 363 00c6 2846     		mov	r0, r5
 364 00c8 FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 365 00cc F368     		ldr	r3, [r6, #12]
 366 00ce D5F86023 		ldr	r2, [r5, #864]
 367 00d2 D3F8740A 		ldr	r0, [r3, #2676]
 368 00d6 0023     		movs	r3, #0
 369 00d8 0168     		ldr	r1, [r0]
 370 00da 0093     		str	r3, [sp]
 371 00dc 0123     		movs	r3, #1
 372 00de 9340     		lsls	r3, r3, r2
 373 00e0 D1F82890 		ldr	r9, [r1, #40]
 374 00e4 013B     		subs	r3, r3, #1
 375 00e6 2146     		mov	r1, r4
 376 00e8 C847     		blx	r9
 377 00ea 98B9     		cbnz	r0, .L67
 378              	.L46:
 379 00ec 0122     		movs	r2, #1
 380 00ee F068     		ldr	r0, [r6, #12]
 381 00f0 2146     		mov	r1, r4
 382 00f2 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 383 00f6 F368     		ldr	r3, [r6, #12]
 384 00f8 144A     		ldr	r2, .L69+4
 385 00fa D3F8740A 		ldr	r0, [r3, #2676]
 386 00fe 0368     		ldr	r3, [r0]
 387 0100 5B6D     		ldr	r3, [r3, #84]
 388 0102 9342     		cmp	r3, r2
 389 0104 1CD1     		bne	.L68
 390              	.L47:
 391 0106 D5F82C35 		ldr	r3, [r5, #1324]
 392 010a 43EA0803 		orr	r3, r3, r8
 393 010e C5F82C35 		str	r3, [r5, #1324]
 394 0112 B6E7     		b	.L64
 395              	.L67:
 396 0114 3A46     		mov	r2, r7
 397 0116 2146     		mov	r1, r4
 398 0118 2846     		mov	r0, r5
 399 011a FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 8


 400 011e E5E7     		b	.L46
 401              	.L38:
 402 0120 4521     		movs	r1, #69
 403 0122 3846     		mov	r0, r7
 404 0124 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 405 0128 0028     		cmp	r0, #0
 406 012a AAD0     		beq	.L64
 407 012c 3846     		mov	r0, r7
 408 012e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 409 0132 D5EDEE7A 		vldr.32	s15, [r5, #952]
 410 0136 67EE807A 		vmul.f32	s15, s15, s0
 411 013a C5EDE37A 		vstr.32	s15, [r5, #908]
 412 013e A0E7     		b	.L64
 413              	.L68:
 414 0140 4146     		mov	r1, r8
 415 0142 9847     		blx	r3
 416 0144 8046     		mov	r8, r0
 417 0146 DEE7     		b	.L47
 418              	.L70:
 419              		.align	2
 420              	.L69:
 421 0148 00000000 		.word	reprap
 422 014c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 423              		.size	_ZN6GCodes12SetPositionsER11GCodeBuffer, .-_ZN6GCodes12SetPositionsER11GCodeBuffer
 424              		.section	.text._ZN6GCodes10I2cForwardERK11GCodeBufferhPKhjRK9StringRef,"ax",%progbits
 425              		.align	1
 426              		.p2align 2,,3
 427              		.global	_ZN6GCodes10I2cForwardERK11GCodeBufferhPKhjRK9StringRef
 428              		.syntax unified
 429              		.thumb
 430              		.thumb_func
 431              		.fpu fpv4-sp-d16
 432              		.type	_ZN6GCodes10I2cForwardERK11GCodeBufferhPKhjRK9StringRef, %function
 433              	_ZN6GCodes10I2cForwardERK11GCodeBufferhPKhjRK9StringRef:
 434              		@ args = 8, pretend = 0, frame = 40
 435              		@ frame_needed = 0, uses_anonymous_args = 0
 436 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 437 0004 91F85640 		ldrb	r4, [r1, #86]	@ zero_extendqisi2
 438 0008 8DB0     		sub	sp, sp, #52
 439 000a 14F0DF0F 		tst	r4, #223
 440 000e 169F     		ldr	r7, [sp, #88]
 441 0010 01F1550A 		add	r10, r1, #85
 442 0014 14D0     		beq	.L77
 443 0016 91F85740 		ldrb	r4, [r1, #87]	@ zero_extendqisi2
 444 001a 14F0DF0F 		tst	r4, #223
 445 001e 56D0     		beq	.L78
 446 0020 91F85840 		ldrb	r4, [r1, #88]	@ zero_extendqisi2
 447 0024 14F0DF0F 		tst	r4, #223
 448 0028 67D0     		beq	.L79
 449 002a 91F85940 		ldrb	r4, [r1, #89]	@ zero_extendqisi2
 450 002e 14F0DF0F 		tst	r4, #223
 451 0032 68D1     		bne	.L80
 452 0034 4FF0040B 		mov	fp, #4
 453 0038 D946     		mov	r9, fp
 454 003a 4FF00508 		mov	r8, #5
 455 003e 04E0     		b	.L72
 456              	.L77:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 9


 457 0040 4FF0010B 		mov	fp, #1
 458 0044 D946     		mov	r9, fp
 459 0046 4FF00208 		mov	r8, #2
 460              	.L72:
 461 004a 4068     		ldr	r0, [r0, #4]
 462 004c 0C46     		mov	r4, r1
 463 004e 1E46     		mov	r6, r3
 464 0050 1546     		mov	r5, r2
 465 0052 FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 466 0056 0AF1FF32 		add	r2, r10, #-1
 467 005a 7B1C     		adds	r3, r7, #1
 468 005c 04F15401 		add	r1, r4, #84
 469 0060 5A44     		add	r2, r2, fp
 470 0062 03EB0904 		add	r4, r3, r9
 471 0066 04A8     		add	r0, sp, #16
 472              	.L74:
 473 0068 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 474 006c 00F8013B 		strb	r3, [r0], #1
 475 0070 9142     		cmp	r1, r2
 476 0072 F9D1     		bne	.L74
 477 0074 0CAB     		add	r3, sp, #48
 478 0076 9944     		add	r9, r9, r3
 479 0078 2023     		movs	r3, #32
 480 007a 09F8203C 		strb	r3, [r9, #-32]
 481 007e 002F     		cmp	r7, #0
 482 0080 33D1     		bne	.L86
 483              	.L75:
 484 0082 0CAB     		add	r3, sp, #48
 485 0084 2344     		add	r3, r3, r4
 486 0086 0026     		movs	r6, #0
 487 0088 03F8206C 		strb	r6, [r3, #-32]
 488 008c FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 489 0090 4FF0FF32 		mov	r2, #-1
 490 0094 0146     		mov	r1, r0
 491 0096 02A8     		add	r0, sp, #8
 492 0098 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 493 009c 1B4B     		ldr	r3, .L88
 494 009e 0096     		str	r6, [sp]
 495 00a0 04AA     		add	r2, sp, #16
 496 00a2 0193     		str	r3, [sp, #4]
 497 00a4 2946     		mov	r1, r5
 498 00a6 2346     		mov	r3, r4
 499 00a8 1948     		ldr	r0, .L88+4
 500 00aa FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 501 00ae 0646     		mov	r6, r0
 502 00b0 02A8     		add	r0, sp, #8
 503 00b2 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 504 00b6 B442     		cmp	r4, r6
 505 00b8 0FD1     		bne	.L87
 506 00ba 2B46     		mov	r3, r5
 507 00bc 2246     		mov	r2, r4
 508 00be 1549     		ldr	r1, .L88+8
 509 00c0 1798     		ldr	r0, [sp, #92]
 510 00c2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 511 00c6 0120     		movs	r0, #1
 512              	.L73:
 513 00c8 0DB0     		add	sp, sp, #52
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 10


 514              		@ sp needed
 515 00ca BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 516              	.L78:
 517 00ce 4FF0020B 		mov	fp, #2
 518 00d2 D946     		mov	r9, fp
 519 00d4 4FF00308 		mov	r8, #3
 520 00d8 B7E7     		b	.L72
 521              	.L87:
 522 00da 0F49     		ldr	r1, .L88+12
 523 00dc 1798     		ldr	r0, [sp, #92]
 524 00de FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 525 00e2 0220     		movs	r0, #2
 526 00e4 0DB0     		add	sp, sp, #52
 527              		@ sp needed
 528 00e6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 529              	.L86:
 530 00ea 04AB     		add	r3, sp, #16
 531 00ec 3A46     		mov	r2, r7
 532 00ee 3146     		mov	r1, r6
 533 00f0 03EB0800 		add	r0, r3, r8
 534 00f4 FFF7FEFF 		bl	memcpy
 535 00f8 C3E7     		b	.L75
 536              	.L79:
 537 00fa 4FF0030B 		mov	fp, #3
 538 00fe D946     		mov	r9, fp
 539 0100 4FF00408 		mov	r8, #4
 540 0104 A1E7     		b	.L72
 541              	.L80:
 542 0106 0220     		movs	r0, #2
 543 0108 DEE7     		b	.L73
 544              	.L89:
 545 010a 00BF     		.align	2
 546              	.L88:
 547 010c 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 548 0110 00000000 		.word	Wire
 549 0114 18000000 		.word	.LC8
 550 0118 00000000 		.word	.LC7
 551              		.size	_ZN6GCodes10I2cForwardERK11GCodeBufferhPKhjRK9StringRef, .-_ZN6GCodes10I2cForwardERK11GCodeB
 552              		.section	.text._ZN6GCodes10I2cForwardERK11GCodeBufferhRK9StringRef,"ax",%progbits
 553              		.align	1
 554              		.p2align 2,,3
 555              		.global	_ZN6GCodes10I2cForwardERK11GCodeBufferhRK9StringRef
 556              		.syntax unified
 557              		.thumb
 558              		.thumb_func
 559              		.fpu fpv4-sp-d16
 560              		.type	_ZN6GCodes10I2cForwardERK11GCodeBufferhRK9StringRef, %function
 561              	_ZN6GCodes10I2cForwardERK11GCodeBufferhRK9StringRef:
 562              		@ args = 0, pretend = 0, frame = 0
 563              		@ frame_needed = 0, uses_anonymous_args = 0
 564 0000 10B5     		push	{r4, lr}
 565 0002 0024     		movs	r4, #0
 566 0004 82B0     		sub	sp, sp, #8
 567 0006 CDE90043 		strd	r4, r3, [sp]
 568 000a 2346     		mov	r3, r4
 569 000c FFF7FEFF 		bl	_ZN6GCodes10I2cForwardERK11GCodeBufferhPKhjRK9StringRef
 570 0010 02B0     		add	sp, sp, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 11


 571              		@ sp needed
 572 0012 10BD     		pop	{r4, pc}
 573              		.size	_ZN6GCodes10I2cForwardERK11GCodeBufferhRK9StringRef, .-_ZN6GCodes10I2cForwardERK11GCodeBuffe
 574              		.section	.text._ZN6GCodes15I2cRequestFloatEh,"ax",%progbits
 575              		.align	1
 576              		.p2align 2,,3
 577              		.global	_ZN6GCodes15I2cRequestFloatEh
 578              		.syntax unified
 579              		.thumb
 580              		.thumb_func
 581              		.fpu fpv4-sp-d16
 582              		.type	_ZN6GCodes15I2cRequestFloatEh, %function
 583              	_ZN6GCodes15I2cRequestFloatEh:
 584              		@ args = 0, pretend = 0, frame = 16
 585              		@ frame_needed = 0, uses_anonymous_args = 0
 586 0000 10B5     		push	{r4, lr}
 587 0002 86B0     		sub	sp, sp, #24
 588 0004 4068     		ldr	r0, [r0, #4]
 589 0006 0C46     		mov	r4, r1
 590 0008 FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 591 000c FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 592 0010 4FF0FF32 		mov	r2, #-1
 593 0014 0146     		mov	r1, r0
 594 0016 04A8     		add	r0, sp, #16
 595 0018 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 596 001c 0A4B     		ldr	r3, .L96
 597 001e 0193     		str	r3, [sp, #4]
 598 0020 0423     		movs	r3, #4
 599 0022 2146     		mov	r1, r4
 600 0024 0093     		str	r3, [sp]
 601 0026 03AA     		add	r2, sp, #12
 602 0028 0023     		movs	r3, #0
 603 002a 0848     		ldr	r0, .L96+4
 604 002c FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 605 0030 0446     		mov	r4, r0
 606 0032 04A8     		add	r0, sp, #16
 607 0034 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 608 0038 042C     		cmp	r4, #4
 609 003a 0CBF     		ite	eq
 610 003c 9DED030A 		vldreq.32	s0, [sp, #12]
 611 0040 9FED030A 		vldrne.32	s0, .L96+8
 612 0044 06B0     		add	sp, sp, #24
 613              		@ sp needed
 614 0046 10BD     		pop	{r4, pc}
 615              	.L97:
 616              		.align	2
 617              	.L96:
 618 0048 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 619 004c 00000000 		.word	Wire
 620 0050 0000C07F 		.word	2143289344
 621              		.size	_ZN6GCodes15I2cRequestFloatEh, .-_ZN6GCodes15I2cRequestFloatEh
 622              		.section	.text._ZN6GCodes23GetEncoderPositionsUARTERK9StringRef,"ax",%progbits
 623              		.align	1
 624              		.p2align 2,,3
 625              		.global	_ZN6GCodes23GetEncoderPositionsUARTERK9StringRef
 626              		.syntax unified
 627              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 12


 628              		.thumb_func
 629              		.fpu fpv4-sp-d16
 630              		.type	_ZN6GCodes23GetEncoderPositionsUARTERK9StringRef, %function
 631              	_ZN6GCodes23GetEncoderPositionsUARTERK9StringRef:
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 634 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 635 0004 0646     		mov	r6, r0
 636 0006 2DED028B 		vpush.64	{d8}
 637 000a 0846     		mov	r0, r1
 638 000c 0F46     		mov	r7, r1
 639 000e 2549     		ldr	r1, .L107
 640 0010 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 641 0014 D6F86033 		ldr	r3, [r6, #864]
 642 0018 E3B3     		cbz	r3, .L99
 643 001a DFF89490 		ldr	r9, .L107+12
 644 001e 9FED228A 		vldr.32	s16, .L107+4
 645 0022 DFF89080 		ldr	r8, .L107+16
 646 0026 0024     		movs	r4, #0
 647              	.L101:
 648 0028 2146     		mov	r1, r4
 649 002a D9F80400 		ldr	r0, [r9, #4]
 650 002e FFF7FEFF 		bl	_ZN8Platform9GetODriveEj
 651 0032 2146     		mov	r1, r4
 652 0034 0546     		mov	r5, r0
 653 0036 FFF7FEFF 		bl	_ZNK6ODrive16AxisToODriveAxisEj
 654 003a 8246     		mov	r10, r0
 655 003c 0146     		mov	r1, r0
 656 003e 2846     		mov	r0, r5
 657 0040 FFF7FEFF 		bl	_ZNK6ODrive24AskForEncoderPosEstimateE10ODriveAxis
 658 0044 7368     		ldr	r3, [r6, #4]
 659 0046 04EB4402 		add	r2, r4, r4, lsl #1
 660 004a 03EB8202 		add	r2, r3, r2, lsl #2
 661 004e 05EB8A05 		add	r5, r5, r10, lsl #2
 662 0052 D5ED007A 		vldr.32	s15, [r5]
 663 0056 92F83023 		ldrb	r2, [r2, #816]	@ zero_extendqisi2
 664 005a 95ED027A 		vldr.32	s14, [r5, #8]
 665 005e 30EE670A 		vsub.f32	s0, s0, s15
 666 0062 1344     		add	r3, r3, r2
 667 0064 20EE080A 		vmul.f32	s0, s0, s16
 668 0068 93F80C31 		ldrb	r3, [r3, #268]	@ zero_extendqisi2
 669 006c 0134     		adds	r4, r4, #1
 670 006e C0EE077A 		vdiv.f32	s15, s0, s14
 671 0072 0BB9     		cbnz	r3, .L100
 672 0074 F1EE677A 		vneg.f32	s15, s15
 673              	.L100:
 674 0078 17EE900A 		vmov	r0, s15
 675 007c FFF7FEFF 		bl	__aeabi_f2d
 676 0080 0B46     		mov	r3, r1
 677 0082 0246     		mov	r2, r0
 678 0084 4146     		mov	r1, r8
 679 0086 3846     		mov	r0, r7
 680 0088 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 681 008c D6F86033 		ldr	r3, [r6, #864]
 682 0090 A342     		cmp	r3, r4
 683 0092 C9D8     		bhi	.L101
 684              	.L99:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 13


 685 0094 BDEC028B 		vldm	sp!, {d8}
 686 0098 3846     		mov	r0, r7
 687 009a 0449     		ldr	r1, .L107+8
 688 009c BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 689 00a0 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 690              	.L108:
 691              		.align	2
 692              	.L107:
 693 00a4 00000000 		.word	.LC9
 694 00a8 0000B443 		.word	1135869952
 695 00ac 0C000000 		.word	.LC11
 696 00b0 00000000 		.word	reprap
 697 00b4 04000000 		.word	.LC10
 698              		.size	_ZN6GCodes23GetEncoderPositionsUARTERK9StringRef, .-_ZN6GCodes23GetEncoderPositionsUARTERK9S
 699              		.section	.text._ZN6GCodes31GetAxisPositionsFromEncodersI2CERK9StringRef,"ax",%progbits
 700              		.align	1
 701              		.p2align 2,,3
 702              		.global	_ZN6GCodes31GetAxisPositionsFromEncodersI2CERK9StringRef
 703              		.syntax unified
 704              		.thumb
 705              		.thumb_func
 706              		.fpu fpv4-sp-d16
 707              		.type	_ZN6GCodes31GetAxisPositionsFromEncodersI2CERK9StringRef, %function
 708              	_ZN6GCodes31GetAxisPositionsFromEncodersI2CERK9StringRef:
 709              		@ args = 0, pretend = 0, frame = 0
 710              		@ frame_needed = 0, uses_anonymous_args = 0
 711 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 712 0004 0546     		mov	r5, r0
 713 0006 2DED028B 		vpush.64	{d8}
 714 000a 0846     		mov	r0, r1
 715 000c 0E46     		mov	r6, r1
 716 000e 3449     		ldr	r1, .L124
 717 0010 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 718 0014 D5F86003 		ldr	r0, [r5, #864]
 719 0018 0028     		cmp	r0, #0
 720 001a 57D0     		beq	.L110
 721 001c 314F     		ldr	r7, .L124+4
 722 001e DFF8CC90 		ldr	r9, .L124+12
 723 0022 DFF8CC80 		ldr	r8, .L124+16
 724 0026 0024     		movs	r4, #0
 725 0028 06E0     		b	.L114
 726              	.L111:
 727 002a 431E     		subs	r3, r0, #1
 728 002c A342     		cmp	r3, r4
 729 002e 04F10104 		add	r4, r4, #1
 730 0032 43D8     		bhi	.L123
 731              	.L113:
 732 0034 8442     		cmp	r4, r0
 733 0036 49D2     		bcs	.L110
 734              	.L114:
 735 0038 6B68     		ldr	r3, [r5, #4]
 736 003a 04EB4402 		add	r2, r4, r4, lsl #1
 737 003e 03EB8202 		add	r2, r3, r2, lsl #2
 738 0042 92F830A3 		ldrb	r10, [r2, #816]	@ zero_extendqisi2
 739 0046 5344     		add	r3, r3, r10
 740 0048 93F83011 		ldrb	r1, [r3, #304]	@ zero_extendqisi2
 741 004c 0029     		cmp	r1, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 14


 742 004e ECD0     		beq	.L111
 743 0050 2846     		mov	r0, r5
 744 0052 FFF7FEFF 		bl	_ZN6GCodes15I2cRequestFloatEh
 745 0056 6B68     		ldr	r3, [r5, #4]
 746 0058 9A44     		add	r10, r10, r3
 747 005a 2146     		mov	r1, r4
 748 005c 9AF81821 		ldrb	r2, [r10, #280]	@ zero_extendqisi2
 749 0060 9AF80C31 		ldrb	r3, [r10, #268]	@ zero_extendqisi2
 750 0064 9A42     		cmp	r2, r3
 751 0066 FB68     		ldr	r3, [r7, #12]
 752 0068 D3F8740A 		ldr	r0, [r3, #2676]
 753 006c 0368     		ldr	r3, [r0]
 754 006e 9B6E     		ldr	r3, [r3, #104]
 755 0070 B0EE408A 		vmov.f32	s16, s0
 756 0074 08BF     		it	eq
 757 0076 B1EE408A 		vnegeq.f32	s16, s0
 758 007a 9847     		blx	r3
 759 007c FB68     		ldr	r3, [r7, #12]
 760 007e 7A68     		ldr	r2, [r7, #4]
 761 0080 D3F8743A 		ldr	r3, [r3, #2676]
 762 0084 0146     		mov	r1, r0
 763 0086 1868     		ldr	r0, [r3]
 764 0088 02F5EE72 		add	r2, r2, #476
 765 008c D0F864A0 		ldr	r10, [r0, #100]
 766 0090 B0EE480A 		vmov.f32	s0, s16
 767 0094 1846     		mov	r0, r3
 768 0096 2346     		mov	r3, r4
 769 0098 D047     		blx	r10
 770 009a 10EE100A 		vmov	r0, s0
 771 009e FFF7FEFF 		bl	__aeabi_f2d
 772 00a2 0B46     		mov	r3, r1
 773 00a4 0246     		mov	r2, r0
 774 00a6 4946     		mov	r1, r9
 775 00a8 3046     		mov	r0, r6
 776 00aa FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 777 00ae D5F86003 		ldr	r0, [r5, #864]
 778 00b2 431E     		subs	r3, r0, #1
 779 00b4 A342     		cmp	r3, r4
 780 00b6 04F10104 		add	r4, r4, #1
 781 00ba BBD9     		bls	.L113
 782              	.L123:
 783 00bc 4146     		mov	r1, r8
 784 00be 3046     		mov	r0, r6
 785 00c0 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 786 00c4 D5F86003 		ldr	r0, [r5, #864]
 787 00c8 8442     		cmp	r4, r0
 788 00ca B5D3     		bcc	.L114
 789              	.L110:
 790 00cc 3046     		mov	r0, r6
 791 00ce 0649     		ldr	r1, .L124+8
 792 00d0 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 793 00d4 BDEC028B 		vldm	sp!, {d8}
 794 00d8 0120     		movs	r0, #1
 795 00da BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 796              	.L125:
 797 00de 00BF     		.align	2
 798              	.L124:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 15


 799 00e0 00000000 		.word	.LC9
 800 00e4 00000000 		.word	reprap
 801 00e8 0C000000 		.word	.LC11
 802 00ec 00000000 		.word	.LC12
 803 00f0 08000000 		.word	.LC13
 804              		.size	_ZN6GCodes31GetAxisPositionsFromEncodersI2CERK9StringRef, .-_ZN6GCodes31GetAxisPositionsFrom
 805              		.section	.text._ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef,"ax",%progbits
 806              		.align	1
 807              		.p2align 2,,3
 808              		.global	_ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef
 809              		.syntax unified
 810              		.thumb
 811              		.thumb_func
 812              		.fpu fpv4-sp-d16
 813              		.type	_ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef, %function
 814              	_ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef:
 815              		@ args = 0, pretend = 0, frame = 8
 816              		@ frame_needed = 0, uses_anonymous_args = 0
 817 0000 D0F86033 		ldr	r3, [r0, #864]
 818 0004 002B     		cmp	r3, #0
 819 0006 00F0B080 		beq	.L159
 820 000a 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 821 000e 2DED088B 		vpush.64	{d8, d9, d10, d11}
 822 0012 9246     		mov	r10, r2
 823 0014 89B0     		sub	sp, sp, #36
 824 0016 0F46     		mov	r7, r1
 825 0018 0546     		mov	r5, r0
 826 001a 9FED55AB 		vldr.64	d10, .L166
 827 001e DFED569A 		vldr.32	s19, .L166+8
 828 0022 DFED568A 		vldr.32	s17, .L166+12
 829 0026 9FED56BA 		vldr.32	s22, .L166+16
 830 002a 00F21956 		addw	r6, r0, #1305
 831 002e 0024     		movs	r4, #0
 832 0030 25E0     		b	.L140
 833              	.L164:
 834 0032 3846     		mov	r0, r7
 835 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 836 0038 B0EEC00A 		vabs.f32	s0, s0
 837 003c B4EEE80A 		vcmpe.f32	s0, s17
 838 0040 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 839 0044 16D5     		bpl	.L129
 840 0046 6B68     		ldr	r3, [r5, #4]
 841 0048 8DED070A 		vstr.32	s0, [sp, #28]
 842 004c 4344     		add	r3, r3, r8
 843 004e 93F80C31 		ldrb	r3, [r3, #268]	@ zero_extendqisi2
 844 0052 1BB1     		cbz	r3, .L133
 845 0054 B1EE400A 		vneg.f32	s0, s0
 846 0058 8DED070A 		vstr.32	s0, [sp, #28]
 847              	.L133:
 848 005c 0423     		movs	r3, #4
 849 005e 0093     		str	r3, [sp]
 850 0060 CDF804A0 		str	r10, [sp, #4]
 851 0064 4A46     		mov	r2, r9
 852 0066 07AB     		add	r3, sp, #28
 853 0068 3946     		mov	r1, r7
 854 006a 2846     		mov	r0, r5
 855 006c FFF7FEFF 		bl	_ZN6GCodes10I2cForwardERK11GCodeBufferhPKhjRK9StringRef
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 16


 856 0070 0128     		cmp	r0, #1
 857 0072 5DD1     		bne	.L134
 858              	.L129:
 859 0074 D5F86033 		ldr	r3, [r5, #864]
 860 0078 0134     		adds	r4, r4, #1
 861 007a A342     		cmp	r3, r4
 862 007c 57D9     		bls	.L163
 863              	.L140:
 864 007e 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 865 0082 3846     		mov	r0, r7
 866 0084 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 867 0088 0028     		cmp	r0, #0
 868 008a F3D0     		beq	.L129
 869 008c 6B68     		ldr	r3, [r5, #4]
 870 008e 04EB4402 		add	r2, r4, r4, lsl #1
 871 0092 03EB8202 		add	r2, r3, r2, lsl #2
 872 0096 92F83083 		ldrb	r8, [r2, #816]	@ zero_extendqisi2
 873 009a 4344     		add	r3, r3, r8
 874 009c 93F83091 		ldrb	r9, [r3, #304]	@ zero_extendqisi2
 875 00a0 B9F1000F 		cmp	r9, #0
 876 00a4 C5D1     		bne	.L164
 877 00a6 374B     		ldr	r3, .L166+20
 878 00a8 2146     		mov	r1, r4
 879 00aa 5868     		ldr	r0, [r3, #4]
 880 00ac FFF7FEFF 		bl	_ZN8Platform9GetODriveEj
 881 00b0 2146     		mov	r1, r4
 882 00b2 8346     		mov	fp, r0
 883 00b4 FFF7FEFF 		bl	_ZNK6ODrive16AxisToODriveAxisEj
 884 00b8 8146     		mov	r9, r0
 885 00ba 3846     		mov	r0, r7
 886 00bc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 887 00c0 B0EEC08A 		vabs.f32	s16, s0
 888 00c4 B4EEE98A 		vcmpe.f32	s16, s19
 889 00c8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 890 00cc 35D4     		bmi	.L165
 891 00ce B4EEE88A 		vcmpe.f32	s16, s17
 892 00d2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 893 00d6 CDD5     		bpl	.L129
 894 00d8 6B68     		ldr	r3, [r5, #4]
 895 00da 4344     		add	r3, r3, r8
 896 00dc 93F80C31 		ldrb	r3, [r3, #268]	@ zero_extendqisi2
 897 00e0 0BB1     		cbz	r3, .L139
 898 00e2 B1EE488A 		vneg.f32	s16, s16
 899              	.L139:
 900 00e6 88EE289A 		vdiv.f32	s18, s16, s17
 901 00ea 4946     		mov	r1, r9
 902 00ec 5846     		mov	r0, fp
 903 00ee F3EE0E7A 		vmov.f32	s15, #3.0e+1
 904 00f2 29EE279A 		vmul.f32	s18, s18, s15
 905 00f6 B0EE490A 		vmov.f32	s0, s18
 906 00fa FFF7FEFF 		bl	_ZNK6ODrive10SetCurrentE10ODriveAxisf
 907 00fe 19EE100A 		vmov	r0, s18
 908 0102 FFF7FEFF 		bl	__aeabi_f2d
 909 0106 CDE90401 		strd	r0, [sp, #16]
 910 010a 18EE100A 		vmov	r0, s16
 911 010e 8DED02AB 		vstr.64	d10, [sp, #8]
 912 0112 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 17


 913 0116 2246     		mov	r2, r4
 914 0118 CDE90001 		strd	r0, [sp]
 915 011c 1A49     		ldr	r1, .L166+24
 916 011e 5046     		mov	r0, r10
 917 0120 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 918 0124 D5F86033 		ldr	r3, [r5, #864]
 919 0128 0134     		adds	r4, r4, #1
 920 012a A342     		cmp	r3, r4
 921 012c A7D8     		bhi	.L140
 922              	.L163:
 923 012e 0120     		movs	r0, #1
 924              	.L134:
 925 0130 09B0     		add	sp, sp, #36
 926              		@ sp needed
 927 0132 BDEC088B 		vldm	sp!, {d8-d11}
 928 0136 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 929              	.L165:
 930 013a B0EE4B0A 		vmov.f32	s0, s22
 931 013e 4946     		mov	r1, r9
 932 0140 5846     		mov	r0, fp
 933 0142 FFF7FEFF 		bl	_ZNK6ODrive10SetCurrentE10ODriveAxisf
 934 0146 4946     		mov	r1, r9
 935 0148 5846     		mov	r0, fp
 936 014a FFF7FEFF 		bl	_ZNK6ODrive24AskForEncoderPosEstimateE10ODriveAxis
 937 014e 4946     		mov	r1, r9
 938 0150 5846     		mov	r0, fp
 939 0152 FFF7FEFF 		bl	_ZNK6ODrive14SetPosSetpointE10ODriveAxisf
 940 0156 4946     		mov	r1, r9
 941 0158 5846     		mov	r0, fp
 942 015a FFF7FEFF 		bl	_ZNK6ODrive25EnablePositionControlModeE10ODriveAxis
 943 015e 4A46     		mov	r2, r9
 944 0160 0A49     		ldr	r1, .L166+28
 945 0162 5046     		mov	r0, r10
 946 0164 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 947 0168 84E7     		b	.L129
 948              	.L159:
 949 016a 0120     		movs	r0, #1
 950 016c 7047     		bx	lr
 951              	.L167:
 952 016e 00BF     		.align	3
 953              	.L166:
 954 0170 00000000 		.word	0
 955 0174 00C05F40 		.word	1080016896
 956 0178 CDCCCC3D 		.word	1036831949
 957 017c 0000FE42 		.word	1123942400
 958 0180 00000000 		.word	0
 959 0184 00000000 		.word	reprap
 960 0188 20000000 		.word	.LC15
 961 018c 00000000 		.word	.LC14
 962              		.size	_ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef, .-_ZN6GCodes13SetTorqueModeER11GCodeBu
 963              		.section	.text._ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef,"ax",%progbits
 964              		.align	1
 965              		.p2align 2,,3
 966              		.global	_ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef
 967              		.syntax unified
 968              		.thumb
 969              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 18


 970              		.fpu fpv4-sp-d16
 971              		.type	_ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef, %function
 972              	_ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef:
 973              		@ args = 0, pretend = 0, frame = 8
 974              		@ frame_needed = 0, uses_anonymous_args = 0
 975 0000 D0F86033 		ldr	r3, [r0, #864]
 976 0004 002B     		cmp	r3, #0
 977 0006 00F08880 		beq	.L188
 978 000a 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 979 000e 00F21956 		addw	r6, r0, #1305
 980 0012 89B0     		sub	sp, sp, #36
 981 0014 9246     		mov	r10, r2
 982 0016 0F46     		mov	r7, r1
 983 0018 0546     		mov	r5, r0
 984 001a 3446     		mov	r4, r6
 985 001c 01E0     		b	.L172
 986              	.L193:
 987 001e 9A42     		cmp	r2, r3
 988 0020 78D9     		bls	.L192
 989              	.L172:
 990 0022 6178     		ldrb	r1, [r4, #1]	@ zero_extendqisi2
 991 0024 3846     		mov	r0, r7
 992 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 993 002a 04F10108 		add	r8, r4, #1
 994 002e A4F5A364 		sub	r4, r4, #1304
 995 0032 631B     		subs	r3, r4, r5
 996 0034 D5F86023 		ldr	r2, [r5, #864]
 997 0038 4446     		mov	r4, r8
 998 003a 0028     		cmp	r0, #0
 999 003c EFD0     		beq	.L193
 1000 003e 0023     		movs	r3, #0
 1001 0040 0793     		str	r3, [sp, #28]
 1002              	.L171:
 1003 0042 002A     		cmp	r2, #0
 1004 0044 62D0     		beq	.L169
 1005 0046 6FF4A368 		mvn	r8, #1304
 1006 004a A8EB0508 		sub	r8, r8, r5
 1007 004e 0CE0     		b	.L178
 1008              	.L194:
 1009 0050 CDE900CA 		strd	ip, r10, [sp]
 1010 0054 3946     		mov	r1, r7
 1011 0056 FFF7FEFF 		bl	_ZN6GCodes10I2cForwardERK11GCodeBufferhPKhjRK9StringRef
 1012 005a 0128     		cmp	r0, #1
 1013 005c 57D1     		bne	.L176
 1014              	.L174:
 1015 005e D5F86023 		ldr	r2, [r5, #864]
 1016 0062 06EB0803 		add	r3, r6, r8
 1017 0066 9A42     		cmp	r2, r3
 1018 0068 50D9     		bls	.L169
 1019              	.L178:
 1020 006a 06EB0804 		add	r4, r6, r8
 1021 006e 3846     		mov	r0, r7
 1022 0070 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 1023 0074 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1024 0078 04EB4402 		add	r2, r4, r4, lsl #1
 1025 007c 10B9     		cbnz	r0, .L173
 1026 007e 079B     		ldr	r3, [sp, #28]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 19


 1027 0080 002B     		cmp	r3, #0
 1028 0082 ECD0     		beq	.L174
 1029              	.L173:
 1030 0084 6B68     		ldr	r3, [r5, #4]
 1031 0086 03EB8202 		add	r2, r3, r2, lsl #2
 1032 008a 4FF0000C 		mov	ip, #0
 1033 008e 92F83023 		ldrb	r2, [r2, #816]	@ zero_extendqisi2
 1034 0092 1A44     		add	r2, r2, r3
 1035 0094 2146     		mov	r1, r4
 1036 0096 92F830E1 		ldrb	lr, [r2, #304]	@ zero_extendqisi2
 1037 009a 6346     		mov	r3, ip
 1038 009c 2846     		mov	r0, r5
 1039 009e 7246     		mov	r2, lr
 1040 00a0 BEF1000F 		cmp	lr, #0
 1041 00a4 D4D1     		bne	.L194
 1042 00a6 1E4B     		ldr	r3, .L195
 1043 00a8 5868     		ldr	r0, [r3, #4]
 1044 00aa FFF7FEFF 		bl	_ZN8Platform18GetWriteableODriveEj
 1045 00ae D0E90531 		ldrd	r3, r1, [r0, #20]
 1046 00b2 2246     		mov	r2, r4
 1047 00b4 8346     		mov	fp, r0
 1048 00b6 0091     		str	r1, [sp]
 1049 00b8 5046     		mov	r0, r10
 1050 00ba 1A49     		ldr	r1, .L195+4
 1051 00bc FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1052 00c0 2146     		mov	r1, r4
 1053 00c2 5846     		mov	r0, fp
 1054 00c4 FFF7FEFF 		bl	_ZNK6ODrive16AxisToODriveAxisEj
 1055 00c8 8146     		mov	r9, r0
 1056 00ca 0146     		mov	r1, r0
 1057 00cc 0BEB8904 		add	r4, fp, r9, lsl #2
 1058 00d0 5846     		mov	r0, fp
 1059 00d2 FFF7FEFF 		bl	_ZN6ODrive24StoreEncoderPosReferenceE10ODriveAxis
 1060 00d6 4946     		mov	r1, r9
 1061 00d8 5846     		mov	r0, fp
 1062 00da FFF7FEFF 		bl	_ZN6ODrive17StoreCountsPerRevE10ODriveAxis
 1063 00de A068     		ldr	r0, [r4, #8]	@ float
 1064 00e0 FFF7FEFF 		bl	__aeabi_f2d
 1065 00e4 CDE90401 		strd	r0, [sp, #16]
 1066 00e8 CDF80890 		str	r9, [sp, #8]
 1067 00ec 2068     		ldr	r0, [r4]	@ float
 1068 00ee FFF7FEFF 		bl	__aeabi_f2d
 1069 00f2 4A46     		mov	r2, r9
 1070 00f4 CDE90001 		strd	r0, [sp]
 1071 00f8 0B49     		ldr	r1, .L195+8
 1072 00fa 5046     		mov	r0, r10
 1073 00fc FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1074 0100 D5F86023 		ldr	r2, [r5, #864]
 1075 0104 06EB0803 		add	r3, r6, r8
 1076 0108 9A42     		cmp	r2, r3
 1077 010a AED8     		bhi	.L178
 1078              	.L169:
 1079 010c 0120     		movs	r0, #1
 1080              	.L176:
 1081 010e 09B0     		add	sp, sp, #36
 1082              		@ sp needed
 1083 0110 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 20


 1084              	.L192:
 1085 0114 0123     		movs	r3, #1
 1086 0116 0793     		str	r3, [sp, #28]
 1087 0118 93E7     		b	.L171
 1088              	.L188:
 1089 011a 0120     		movs	r0, #1
 1090 011c 7047     		bx	lr
 1091              	.L196:
 1092 011e 00BF     		.align	2
 1093              	.L195:
 1094 0120 00000000 		.word	reprap
 1095 0124 00000000 		.word	.LC16
 1096 0128 28000000 		.word	.LC17
 1097              		.size	_ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef, .-_ZN6GCodes14MarkEncoderRefER11GCode
 1098              		.section	.text._ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef,"ax",%progbits
 1099              		.align	1
 1100              		.p2align 2,,3
 1101              		.global	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef
 1102              		.syntax unified
 1103              		.thumb
 1104              		.thumb_func
 1105              		.fpu fpv4-sp-d16
 1106              		.type	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef, %function
 1107              	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef:
 1108              		@ args = 0, pretend = 0, frame = 8
 1109              		@ frame_needed = 0, uses_anonymous_args = 0
 1110 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1111 0004 85B0     		sub	sp, sp, #20
 1112 0006 D0F86033 		ldr	r3, [r0, #864]
 1113 000a 0392     		str	r2, [sp, #12]
 1114 000c 0446     		mov	r4, r0
 1115 000e 63B3     		cbz	r3, .L203
 1116 0010 0023     		movs	r3, #0
 1117 0012 0F46     		mov	r7, r1
 1118 0014 00F20F55 		addw	r5, r0, #1295
 1119 0018 00F57176 		add	r6, r0, #964
 1120 001c 0293     		str	r3, [sp, #8]
 1121 001e 09E0     		b	.L202
 1122              	.L201:
 1123 0020 A5F20E55 		subw	r5, r5, #1294
 1124 0024 D4F86023 		ldr	r2, [r4, #864]
 1125 0028 2B1B     		subs	r3, r5, r4
 1126 002a 9A42     		cmp	r2, r3
 1127 002c 06F10406 		add	r6, r6, #4
 1128 0030 5546     		mov	r5, r10
 1129 0032 14D9     		bls	.L215
 1130              	.L202:
 1131 0034 6978     		ldrb	r1, [r5, #1]	@ zero_extendqisi2
 1132 0036 3846     		mov	r0, r7
 1133 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1134 003c 05F1010A 		add	r10, r5, #1
 1135 0040 8346     		mov	fp, r0
 1136 0042 0028     		cmp	r0, #0
 1137 0044 ECD0     		beq	.L201
 1138 0046 3846     		mov	r0, r7
 1139 0048 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1140 004c D4EDEE7A 		vldr.32	s15, [r4, #952]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 21


 1141 0050 CDF808B0 		str	fp, [sp, #8]
 1142 0054 27EEC00A 		vnmul.f32	s0, s15, s0
 1143 0058 86ED000A 		vstr.32	s0, [r6]
 1144 005c E0E7     		b	.L201
 1145              	.L215:
 1146 005e 029B     		ldr	r3, [sp, #8]
 1147 0060 1BB1     		cbz	r3, .L203
 1148              	.L199:
 1149 0062 0120     		movs	r0, #1
 1150 0064 05B0     		add	sp, sp, #20
 1151              		@ sp needed
 1152 0066 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1153              	.L203:
 1154 006a 1849     		ldr	r1, .L216
 1155 006c 0398     		ldr	r0, [sp, #12]
 1156 006e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1157 0072 D4F86033 		ldr	r3, [r4, #864]
 1158 0076 002B     		cmp	r3, #0
 1159 0078 F3D0     		beq	.L199
 1160 007a 154E     		ldr	r6, .L216+4
 1161 007c 04F20F55 		addw	r5, r4, #1295
 1162 0080 04F57177 		add	r7, r4, #964
 1163              	.L204:
 1164 0084 B7EC017A 		vldmia.32	r7!, {s14}
 1165 0088 D4EDEE7A 		vldr.32	s15, [r4, #952]
 1166 008c 95F801A0 		ldrb	r10, [r5, #1]	@ zero_extendqisi2
 1167 0090 C7EE277A 		vdiv.f32	s15, s14, s15
 1168 0094 17EE900A 		vmov	r0, s15
 1169 0098 FFF7FEFF 		bl	__aeabi_f2d
 1170 009c 8046     		mov	r8, r0
 1171 009e 01F10049 		add	r9, r1, #-2147483648
 1172 00a2 5246     		mov	r2, r10
 1173 00a4 CDE90089 		strd	r8, [sp]
 1174 00a8 3146     		mov	r1, r6
 1175 00aa 0398     		ldr	r0, [sp, #12]
 1176 00ac FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1177 00b0 A5F20E53 		subw	r3, r5, #1294
 1178 00b4 D4F86023 		ldr	r2, [r4, #864]
 1179 00b8 1B1B     		subs	r3, r3, r4
 1180 00ba 9A42     		cmp	r2, r3
 1181 00bc 05F10105 		add	r5, r5, #1
 1182 00c0 E0D8     		bhi	.L204
 1183 00c2 0120     		movs	r0, #1
 1184 00c4 05B0     		add	sp, sp, #20
 1185              		@ sp needed
 1186 00c6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1187              	.L217:
 1188 00ca 00BF     		.align	2
 1189              	.L216:
 1190 00cc 00000000 		.word	.LC18
 1191 00d0 10000000 		.word	.LC19
 1192              		.size	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef, .-_ZN6GCodes10OffsetAxesER11GCodeBufferRK
 1193              		.section	.text._ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb,"ax",%progbits
 1194              		.align	1
 1195              		.p2align 2,,3
 1196              		.global	_ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb
 1197              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 22


 1198              		.thumb
 1199              		.thumb_func
 1200              		.fpu fpv4-sp-d16
 1201              		.type	_ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb, %function
 1202              	_ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb:
 1203              		@ args = 0, pretend = 0, frame = 16
 1204              		@ frame_needed = 0, uses_anonymous_args = 0
 1205 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1206 0004 2DED028B 		vpush.64	{d8}
 1207 0008 0F46     		mov	r7, r1
 1208 000a 87B0     		sub	sp, sp, #28
 1209 000c 0446     		mov	r4, r0
 1210 000e 5021     		movs	r1, #80
 1211 0010 3846     		mov	r0, r7
 1212 0012 0492     		str	r2, [sp, #16]
 1213 0014 9B46     		mov	fp, r3
 1214 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1215 001a 0028     		cmp	r0, #0
 1216 001c 40F0A580 		bne	.L244
 1217 0020 D4F8C033 		ldr	r3, [r4, #960]
 1218 0024 0133     		adds	r3, r3, #1
 1219 0026 0393     		str	r3, [sp, #12]
 1220 0028 039B     		ldr	r3, [sp, #12]
 1221 002a 03F1FF38 		add	r8, r3, #-1
 1222 002e B8F1080F 		cmp	r8, #8
 1223 0032 00F2A580 		bhi	.L232
 1224              	.L246:
 1225 0036 D4F86033 		ldr	r3, [r4, #864]
 1226 003a 002B     		cmp	r3, #0
 1227 003c 60D0     		beq	.L222
 1228 003e 08EBC805 		add	r5, r8, r8, lsl #3
 1229 0042 4FF0000A 		mov	r10, #0
 1230 0046 04EB8505 		add	r5, r4, r5, lsl #2
 1231 004a 04F20F56 		addw	r6, r4, #1295
 1232 004e CDF81480 		str	r8, [sp, #20]
 1233 0052 D946     		mov	r9, fp
 1234 0054 A046     		mov	r8, r4
 1235 0056 5446     		mov	r4, r10
 1236 0058 07E0     		b	.L228
 1237              	.L223:
 1238 005a D8F86023 		ldr	r2, [r8, #864]
 1239 005e 0AF1010A 		add	r10, r10, #1
 1240 0062 5245     		cmp	r2, r10
 1241 0064 05F10405 		add	r5, r5, #4
 1242 0068 2ED9     		bls	.L245
 1243              	.L228:
 1244 006a 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 1245 006e 3846     		mov	r0, r7
 1246 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1247 0074 8346     		mov	fp, r0
 1248 0076 0028     		cmp	r0, #0
 1249 0078 EFD0     		beq	.L223
 1250 007a 3846     		mov	r0, r7
 1251 007c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1252 0080 98EDEE8A 		vldr.32	s16, [r8, #952]
 1253 0084 20EE088A 		vmul.f32	s16, s0, s16
 1254 0088 94B3     		cbz	r4, .L224
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 23


 1255              	.L227:
 1256 008a 08EB8A01 		add	r1, r8, r10, lsl #2
 1257 008e B9F1000F 		cmp	r9, #0
 1258 0092 0ED0     		beq	.L226
 1259 0094 D8F8C023 		ldr	r2, [r8, #960]
 1260 0098 91ED300A 		vldr.32	s0, [r1, #192]
 1261 009c 02EBC202 		add	r2, r2, r2, lsl #3
 1262 00a0 5244     		add	r2, r2, r10
 1263 00a2 08EB8202 		add	r2, r8, r2, lsl #2
 1264 00a6 D2EDF17A 		vldr.32	s15, [r2, #964]
 1265 00aa 30EE488A 		vsub.f32	s16, s0, s16
 1266 00ae 38EE278A 		vadd.f32	s16, s16, s15
 1267              	.L226:
 1268 00b2 85EDF18A 		vstr.32	s16, [r5, #964]
 1269 00b6 D8F86023 		ldr	r2, [r8, #864]
 1270 00ba 0AF1010A 		add	r10, r10, #1
 1271 00be 5245     		cmp	r2, r10
 1272 00c0 5C46     		mov	r4, fp
 1273 00c2 05F10405 		add	r5, r5, #4
 1274 00c6 D0D8     		bhi	.L228
 1275              	.L245:
 1276 00c8 A146     		mov	r9, r4
 1277 00ca 4446     		mov	r4, r8
 1278 00cc DDF81480 		ldr	r8, [sp, #20]
 1279 00d0 B9F1000F 		cmp	r9, #0
 1280 00d4 14D0     		beq	.L222
 1281 00d6 2046     		mov	r0, r4
 1282 00d8 04F1C002 		add	r2, r4, #192
 1283 00dc 04F1EC01 		add	r1, r4, #236
 1284 00e0 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 1285 00e4 0120     		movs	r0, #1
 1286              	.L221:
 1287 00e6 07B0     		add	sp, sp, #28
 1288              		@ sp needed
 1289 00e8 BDEC028B 		vldm	sp!, {d8}
 1290 00ec BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1291              	.L224:
 1292 00f0 3946     		mov	r1, r7
 1293 00f2 4046     		mov	r0, r8
 1294 00f4 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1295 00f8 0028     		cmp	r0, #0
 1296 00fa C6D1     		bne	.L227
 1297 00fc 2046     		mov	r0, r4
 1298 00fe F2E7     		b	.L221
 1299              	.L222:
 1300 0100 039A     		ldr	r2, [sp, #12]
 1301 0102 2249     		ldr	r1, .L247
 1302 0104 0498     		ldr	r0, [sp, #16]
 1303 0106 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1304 010a D4F86033 		ldr	r3, [r4, #864]
 1305 010e 33B3     		cbz	r3, .L230
 1306 0110 08EBC806 		add	r6, r8, r8, lsl #3
 1307 0114 04EB8606 		add	r6, r4, r6, lsl #2
 1308 0118 1D4F     		ldr	r7, .L247+4
 1309 011a DDF81080 		ldr	r8, [sp, #16]
 1310 011e 06F57176 		add	r6, r6, #964
 1311 0122 04F20F55 		addw	r5, r4, #1295
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 24


 1312              	.L231:
 1313 0126 B6EC017A 		vldmia.32	r6!, {s14}
 1314 012a D4EDEE7A 		vldr.32	s15, [r4, #952]
 1315 012e 95F80190 		ldrb	r9, [r5, #1]	@ zero_extendqisi2
 1316 0132 C7EE277A 		vdiv.f32	s15, s14, s15
 1317 0136 17EE900A 		vmov	r0, s15
 1318 013a FFF7FEFF 		bl	__aeabi_f2d
 1319 013e 4A46     		mov	r2, r9
 1320 0140 CDE90001 		strd	r0, [sp]
 1321 0144 3946     		mov	r1, r7
 1322 0146 4046     		mov	r0, r8
 1323 0148 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1324 014c A5F20E53 		subw	r3, r5, #1294
 1325 0150 D4F86023 		ldr	r2, [r4, #864]
 1326 0154 1B1B     		subs	r3, r3, r4
 1327 0156 9A42     		cmp	r2, r3
 1328 0158 05F10105 		add	r5, r5, #1
 1329 015c E3D8     		bhi	.L231
 1330              	.L230:
 1331 015e 0120     		movs	r0, #1
 1332 0160 07B0     		add	sp, sp, #28
 1333              		@ sp needed
 1334 0162 BDEC028B 		vldm	sp!, {d8}
 1335 0166 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1336              	.L244:
 1337 016a 3846     		mov	r0, r7
 1338 016c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1339 0170 0390     		str	r0, [sp, #12]
 1340 0172 039B     		ldr	r3, [sp, #12]
 1341 0174 03F1FF38 		add	r8, r3, #-1
 1342 0178 B8F1080F 		cmp	r8, #8
 1343 017c 7FF65BAF 		bls	.L246
 1344              	.L232:
 1345 0180 0620     		movs	r0, #6
 1346 0182 07B0     		add	sp, sp, #28
 1347              		@ sp needed
 1348 0184 BDEC028B 		vldm	sp!, {d8}
 1349 0188 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1350              	.L248:
 1351              		.align	2
 1352              	.L247:
 1353 018c 00000000 		.word	.LC20
 1354 0190 10000000 		.word	.LC19
 1355              		.size	_ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb, .-_ZN6GCodes26GetSetWork
 1356              		.section	.text._ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef,"ax",%progbits
 1357              		.align	1
 1358              		.p2align 2,,3
 1359              		.global	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef
 1360              		.syntax unified
 1361              		.thumb
 1362              		.thumb_func
 1363              		.fpu fpv4-sp-d16
 1364              		.type	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef, %function
 1365              	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef:
 1366              		@ args = 0, pretend = 0, frame = 48
 1367              		@ frame_needed = 0, uses_anonymous_args = 0
 1368 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 25


 1369 0004 2DED048B 		vpush.64	{d8, d9}
 1370 0008 90B0     		sub	sp, sp, #64
 1371 000a 1646     		mov	r6, r2
 1372 000c 8046     		mov	r8, r0
 1373 000e 0D46     		mov	r5, r1
 1374 0010 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 1375 0014 20B9     		cbnz	r0, .L303
 1376              	.L298:
 1377 0016 10B0     		add	sp, sp, #64
 1378              		@ sp needed
 1379 0018 BDEC048B 		vldm	sp!, {d8-d9}
 1380 001c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1381              	.L303:
 1382 0020 D04B     		ldr	r3, .L310
 1383 0022 0096     		str	r6, [sp]
 1384 0024 93E80300 		ldm	r3, {r0, r1}
 1385 0028 0024     		movs	r4, #0
 1386 002a 0DF11702 		add	r2, sp, #23
 1387 002e 0CAF     		add	r7, sp, #48
 1388 0030 87E80300 		stm	r7, {r0, r1}
 1389 0034 08AB     		add	r3, sp, #32
 1390 0036 0192     		str	r2, [sp, #4]
 1391 0038 0294     		str	r4, [sp, #8]
 1392 003a 0222     		movs	r2, #2
 1393 003c 5821     		movs	r1, #88
 1394 003e 2846     		mov	r0, r5
 1395 0040 8DF81740 		strb	r4, [sp, #23]
 1396 0044 8DF81840 		strb	r4, [sp, #24]
 1397 0048 8DF81940 		strb	r4, [sp, #25]
 1398 004c 8DF81A40 		strb	r4, [sp, #26]
 1399 0050 8DF81B40 		strb	r4, [sp, #27]
 1400 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1401 0058 0028     		cmp	r0, #0
 1402 005a 40F0A980 		bne	.L302
 1403 005e 06AA     		add	r2, sp, #24
 1404 0060 0290     		str	r0, [sp, #8]
 1405 0062 0192     		str	r2, [sp, #4]
 1406 0064 0096     		str	r6, [sp]
 1407 0066 0AAB     		add	r3, sp, #40
 1408 0068 0222     		movs	r2, #2
 1409 006a 5921     		movs	r1, #89
 1410 006c 2846     		mov	r0, r5
 1411 006e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1412 0072 0028     		cmp	r0, #0
 1413 0074 40F09C80 		bne	.L302
 1414 0078 0DF11A03 		add	r3, sp, #26
 1415 007c 0124     		movs	r4, #1
 1416 007e CDE90134 		strd	r3, r4, [sp, #4]
 1417 0082 0096     		str	r6, [sp]
 1418 0084 0EAB     		add	r3, sp, #56
 1419 0086 0222     		movs	r2, #2
 1420 0088 5021     		movs	r1, #80
 1421 008a 2846     		mov	r0, r5
 1422 008c FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1423 0090 0028     		cmp	r0, #0
 1424 0092 40F08D80 		bne	.L302
 1425 0096 9DF81A30 		ldrb	r3, [sp, #26]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 26


 1426 009a 63B9     		cbnz	r3, .L256
 1427 009c 0DF11B03 		add	r3, sp, #27
 1428 00a0 CDE90063 		strd	r6, r3, [sp]
 1429 00a4 0294     		str	r4, [sp, #8]
 1430 00a6 3B46     		mov	r3, r7
 1431 00a8 0222     		movs	r2, #2
 1432 00aa 5321     		movs	r1, #83
 1433 00ac 2846     		mov	r0, r5
 1434 00ae FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1435 00b2 0028     		cmp	r0, #0
 1436 00b4 7CD1     		bne	.L302
 1437              	.L256:
 1438 00b6 0DF11903 		add	r3, sp, #25
 1439 00ba 2846     		mov	r0, r5
 1440 00bc AA4C     		ldr	r4, .L310+4
 1441 00be 0794     		str	r4, [sp, #28]	@ float
 1442 00c0 07AA     		add	r2, sp, #28
 1443 00c2 5221     		movs	r1, #82
 1444 00c4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1445 00c8 9DF81730 		ldrb	r3, [sp, #23]	@ zero_extendqisi2
 1446 00cc 002B     		cmp	r3, #0
 1447 00ce 75D0     		beq	.L304
 1448 00d0 9DF81830 		ldrb	r3, [sp, #24]	@ zero_extendqisi2
 1449 00d4 002B     		cmp	r3, #0
 1450 00d6 00F0D980 		beq	.L257
 1451 00da 9DF81A30 		ldrb	r3, [sp, #26]	@ zero_extendqisi2
 1452 00de 9DED079A 		vldr.32	s18, [sp, #28]
 1453 00e2 DBB3     		cbz	r3, .L261
 1454 00e4 9DED0C7A 		vldr.32	s14, [sp, #48]
 1455 00e8 F0EE007A 		vmov.f32	s15, #2.0e+0
 1456 00ec B4EEE77A 		vcmpe.f32	s14, s15
 1457 00f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1458 00f4 14DB     		blt	.L262
 1459 00f6 DDED097A 		vldr.32	s15, [sp, #36]
 1460 00fa 9DED087A 		vldr.32	s14, [sp, #32]
 1461 00fe F4EEC77A 		vcmpe.f32	s15, s14
 1462 0102 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1463 0106 0BDD     		ble	.L262
 1464 0108 0E9B     		ldr	r3, [sp, #56]
 1465 010a 013B     		subs	r3, r3, #1
 1466 010c 77EEC77A 		vsub.f32	s15, s15, s14
 1467 0110 07EE103A 		vmov	s14, r3	@ int
 1468 0114 B8EE477A 		vcvt.f32.u32	s14, s14
 1469 0118 C7EE876A 		vdiv.f32	s13, s15, s14
 1470 011c CDED0C6A 		vstr.32	s13, [sp, #48]
 1471              	.L262:
 1472 0120 9DED0D7A 		vldr.32	s14, [sp, #52]
 1473 0124 F0EE007A 		vmov.f32	s15, #2.0e+0
 1474 0128 B4EEE77A 		vcmpe.f32	s14, s15
 1475 012c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1476 0130 14DB     		blt	.L261
 1477 0132 DDED0B7A 		vldr.32	s15, [sp, #44]
 1478 0136 9DED0A7A 		vldr.32	s14, [sp, #40]
 1479 013a F4EEC77A 		vcmpe.f32	s15, s14
 1480 013e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1481 0142 0BDD     		ble	.L261
 1482 0144 0F9B     		ldr	r3, [sp, #60]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 27


 1483 0146 013B     		subs	r3, r3, #1
 1484 0148 77EEC77A 		vsub.f32	s15, s15, s14
 1485 014c 07EE103A 		vmov	s14, r3	@ int
 1486 0150 B8EE477A 		vcvt.f32.u32	s14, s14
 1487 0154 C7EE876A 		vdiv.f32	s13, s15, s14
 1488 0158 CDED0D6A 		vstr.32	s13, [sp, #52]
 1489              	.L261:
 1490 015c 08F2AC58 		addw	r8, r8, #1452
 1491 0160 3B46     		mov	r3, r7
 1492 0162 B0EE490A 		vmov.f32	s0, s18
 1493 0166 0AAA     		add	r2, sp, #40
 1494 0168 08A9     		add	r1, sp, #32
 1495 016a 4046     		mov	r0, r8
 1496 016c FFF7FEFF 		bl	_ZN14GridDefinition3SetEPKfS1_fS1_
 1497 0170 08B1     		cbz	r0, .L305
 1498 0172 0120     		movs	r0, #1
 1499 0174 4FE7     		b	.L298
 1500              	.L305:
 1501 0176 9DF81730 		ldrb	r3, [sp, #23]	@ zero_extendqisi2
 1502 017a 002B     		cmp	r3, #0
 1503 017c 00F09E80 		beq	.L277
 1504 0180 DDED098A 		vldr.32	s17, [sp, #36]
 1505 0184 9DED087A 		vldr.32	s14, [sp, #32]
 1506 0188 9DED0B8A 		vldr.32	s16, [sp, #44]
 1507 018c DDED0A7A 		vldr.32	s15, [sp, #40]
 1508 0190 78EEC78A 		vsub.f32	s17, s17, s14
 1509 0194 38EE678A 		vsub.f32	s16, s16, s15
 1510              	.L278:
 1511 0198 7449     		ldr	r1, .L310+8
 1512 019a 3046     		mov	r0, r6
 1513 019c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1514 01a0 3146     		mov	r1, r6
 1515 01a2 F0EE480A 		vmov.f32	s1, s16
 1516 01a6 B0EE680A 		vmov.f32	s0, s17
 1517 01aa 4046     		mov	r0, r8
 1518 01ac FFF7FEFF 		bl	_ZNK14GridDefinition10PrintErrorEffRK9StringRef
 1519              	.L302:
 1520 01b0 0220     		movs	r0, #2
 1521 01b2 10B0     		add	sp, sp, #64
 1522              		@ sp needed
 1523 01b4 BDEC048B 		vldm	sp!, {d8-d9}
 1524 01b8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1525              	.L304:
 1526 01bc 9DF81830 		ldrb	r3, [sp, #24]	@ zero_extendqisi2
 1527 01c0 002B     		cmp	r3, #0
 1528 01c2 63D1     		bne	.L257
 1529 01c4 9DF81930 		ldrb	r3, [sp, #25]	@ zero_extendqisi2
 1530 01c8 9BB9     		cbnz	r3, .L258
 1531 01ca 9DF81B30 		ldrb	r3, [sp, #27]	@ zero_extendqisi2
 1532 01ce 002B     		cmp	r3, #0
 1533 01d0 7BD1     		bne	.L259
 1534 01d2 98F8DC35 		ldrb	r3, [r8, #1500]	@ zero_extendqisi2
 1535 01d6 002B     		cmp	r3, #0
 1536 01d8 00F08380 		beq	.L260
 1537 01dc 6449     		ldr	r1, .L310+12
 1538 01de 3046     		mov	r0, r6
 1539 01e0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 28


 1540 01e4 08F2AC50 		addw	r0, r8, #1452
 1541 01e8 3146     		mov	r1, r6
 1542 01ea FFF7FEFF 		bl	_ZNK14GridDefinition15PrintParametersERK9StringRef
 1543 01ee 0120     		movs	r0, #1
 1544 01f0 11E7     		b	.L298
 1545              	.L258:
 1546 01f2 9DED079A 		vldr.32	s18, [sp, #28]
 1547 01f6 B5EEC09A 		vcmpe.f32	s18, #0
 1548 01fa F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1549 01fe 6ADD     		ble	.L300
 1550 0200 DFED5C8A 		vldr.32	s17, .L310+16
 1551 0204 9DF81A40 		ldrb	r4, [sp, #26]	@ zero_extendqisi2
 1552 0208 39EE688A 		vsub.f32	s16, s18, s17
 1553 020c 002C     		cmp	r4, #0
 1554 020e 4CD0     		beq	.L269
 1555 0210 0E9B     		ldr	r3, [sp, #56]
 1556 0212 012B     		cmp	r3, #1
 1557 0214 49D9     		bls	.L269
 1558 0216 0F9A     		ldr	r2, [sp, #60]
 1559 0218 D007     		lsls	r0, r2, #31
 1560 021a 68D5     		bpl	.L306
 1561 021c F0EE488A 		vmov.f32	s17, s16
 1562              	.L270:
 1563 0220 013B     		subs	r3, r3, #1
 1564 0222 07EE903A 		vmov	s15, r3	@ int
 1565 0226 78EE086A 		vadd.f32	s13, s16, s16
 1566 022a F8EE677A 		vcvt.f32.u32	s15, s15
 1567 022e B0EE480A 		vmov.f32	s0, s16
 1568 0232 86EEA77A 		vdiv.f32	s14, s13, s15
 1569 0236 B0EE688A 		vmov.f32	s16, s17
 1570 023a 8DED0C7A 		vstr.32	s14, [sp, #48]
 1571              	.L272:
 1572 023e DFED4D7A 		vldr.32	s15, .L310+16
 1573 0242 70EE277A 		vadd.f32	s15, s0, s15
 1574 0246 B1EE400A 		vneg.f32	s0, s0
 1575 024a CDED097A 		vstr.32	s15, [sp, #36]
 1576 024e 8DED080A 		vstr.32	s0, [sp, #32]
 1577 0252 0CB3     		cbz	r4, .L273
 1578 0254 0F9B     		ldr	r3, [sp, #60]
 1579 0256 012B     		cmp	r3, #1
 1580 0258 1ED9     		bls	.L273
 1581 025a 0E9A     		ldr	r2, [sp, #56]
 1582 025c D107     		lsls	r1, r2, #31
 1583 025e 60D5     		bpl	.L307
 1584              	.L274:
 1585 0260 013B     		subs	r3, r3, #1
 1586 0262 07EE903A 		vmov	s15, r3	@ int
 1587 0266 78EE086A 		vadd.f32	s13, s16, s16
 1588 026a F8EE677A 		vcvt.f32.u32	s15, s15
 1589 026e 86EEA77A 		vdiv.f32	s14, s13, s15
 1590 0272 8DED0D7A 		vstr.32	s14, [sp, #52]
 1591              	.L276:
 1592 0276 DFED3F7A 		vldr.32	s15, .L310+16
 1593 027a 78EE277A 		vadd.f32	s15, s16, s15
 1594 027e B1EE488A 		vneg.f32	s16, s16
 1595 0282 CDED0B7A 		vstr.32	s15, [sp, #44]
 1596 0286 8DED0A8A 		vstr.32	s16, [sp, #40]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 29


 1597 028a 67E7     		b	.L261
 1598              	.L257:
 1599 028c 3046     		mov	r0, r6
 1600 028e 3A49     		ldr	r1, .L310+20
 1601 0290 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1602 0294 0220     		movs	r0, #2
 1603 0296 BEE6     		b	.L298
 1604              	.L273:
 1605 0298 DDED0D8A 		vldr.32	s17, [sp, #52]
 1606 029c 88EE280A 		vdiv.f32	s0, s16, s17
 1607 02a0 FFF7FEFF 		bl	floorf
 1608 02a4 28EE808A 		vmul.f32	s16, s17, s0
 1609 02a8 E5E7     		b	.L276
 1610              	.L269:
 1611 02aa DDED0C8A 		vldr.32	s17, [sp, #48]
 1612 02ae 88EE280A 		vdiv.f32	s0, s16, s17
 1613 02b2 FFF7FEFF 		bl	floorf
 1614 02b6 28EE800A 		vmul.f32	s0, s17, s0
 1615 02ba C0E7     		b	.L272
 1616              	.L277:
 1617 02bc 9DED078A 		vldr.32	s16, [sp, #28]
 1618 02c0 38EE088A 		vadd.f32	s16, s16, s16
 1619 02c4 F0EE488A 		vmov.f32	s17, s16
 1620 02c8 66E7     		b	.L278
 1621              	.L259:
 1622 02ca 3046     		mov	r0, r6
 1623 02cc 2B49     		ldr	r1, .L310+24
 1624 02ce FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1625 02d2 0220     		movs	r0, #2
 1626 02d4 9FE6     		b	.L298
 1627              	.L300:
 1628 02d6 3046     		mov	r0, r6
 1629 02d8 2949     		ldr	r1, .L310+28
 1630 02da FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1631 02de 0220     		movs	r0, #2
 1632 02e0 99E6     		b	.L298
 1633              	.L260:
 1634 02e2 3046     		mov	r0, r6
 1635 02e4 2749     		ldr	r1, .L310+32
 1636 02e6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1637 02ea 0120     		movs	r0, #1
 1638 02ec 93E6     		b	.L298
 1639              	.L306:
 1640 02ee 013A     		subs	r2, r2, #1
 1641 02f0 02FB02F2 		mul	r2, r2, r2
 1642 02f4 07EE902A 		vmov	s15, r2	@ int
 1643 02f8 F8EE677A 		vcvt.f32.u32	s15, s15
 1644 02fc B7EE000A 		vmov.f32	s0, #1.0e+0
 1645 0300 80EE277A 		vdiv.f32	s14, s0, s15
 1646 0304 30EE470A 		vsub.f32	s0, s0, s14
 1647 0308 B5EE400A 		vcmp.f32	s0, #0
 1648 030c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1649 0310 F1EEC09A 		vsqrt.f32	s19, s0
 1650 0314 58BF     		it	pl
 1651 0316 F0EE488A 		vmovpl.f32	s17, s16
 1652 031a 19D4     		bmi	.L308
 1653              	.L271:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 30


 1654 031c 28EE298A 		vmul.f32	s16, s16, s19
 1655 0320 7EE7     		b	.L270
 1656              	.L307:
 1657 0322 013A     		subs	r2, r2, #1
 1658 0324 02FB02F2 		mul	r2, r2, r2
 1659 0328 07EE902A 		vmov	s15, r2	@ int
 1660 032c F8EE677A 		vcvt.f32.u32	s15, s15
 1661 0330 B7EE000A 		vmov.f32	s0, #1.0e+0
 1662 0334 80EE277A 		vdiv.f32	s14, s0, s15
 1663 0338 30EE470A 		vsub.f32	s0, s0, s14
 1664 033c B5EE400A 		vcmp.f32	s0, #0
 1665 0340 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1666 0344 F1EEC08A 		vsqrt.f32	s17, s0
 1667 0348 1ED4     		bmi	.L309
 1668              	.L275:
 1669 034a 28EE288A 		vmul.f32	s16, s16, s17
 1670 034e 87E7     		b	.L274
 1671              	.L308:
 1672 0350 FFF7FEFF 		bl	sqrtf
 1673 0354 9DED079A 		vldr.32	s18, [sp, #28]
 1674 0358 0E9B     		ldr	r3, [sp, #56]
 1675 035a 9DF81A40 		ldrb	r4, [sp, #26]	@ zero_extendqisi2
 1676 035e 79EE688A 		vsub.f32	s17, s18, s17
 1677 0362 DBE7     		b	.L271
 1678              	.L311:
 1679              		.align	2
 1680              	.L310:
 1681 0364 00000000 		.word	.LANCHOR0
 1682 0368 000080BF 		.word	-1082130432
 1683 036c B4000000 		.word	.LC26
 1684 0370 00000000 		.word	.LC21
 1685 0374 CDCCCC3D 		.word	1036831949
 1686 0378 1C000000 		.word	.LC23
 1687 037c 48000000 		.word	.LC24
 1688 0380 78000000 		.word	.LC25
 1689 0384 08000000 		.word	.LC22
 1690              	.L309:
 1691 0388 FFF7FEFF 		bl	sqrtf
 1692 038c 0F9B     		ldr	r3, [sp, #60]
 1693 038e 9DED079A 		vldr.32	s18, [sp, #28]
 1694 0392 DAE7     		b	.L275
 1695              		.size	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef, .-_ZN6GCodes10DefineGridER11GCodeBufferRK
 1696              		.section	.text._ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b,"ax",%progbits
 1697              		.align	1
 1698              		.p2align 2,,3
 1699              		.global	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b
 1700              		.syntax unified
 1701              		.thumb
 1702              		.thumb_func
 1703              		.fpu fpv4-sp-d16
 1704              		.type	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b, %function
 1705              	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b:
 1706              		@ args = 4, pretend = 0, frame = 8
 1707              		@ frame_needed = 0, uses_anonymous_args = 0
 1708 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1709 0004 304E     		ldr	r6, .L320
 1710 0006 346A     		ldr	r4, [r6, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 31


 1711 0008 85B0     		sub	sp, sp, #20
 1712 000a 247B     		ldrb	r4, [r4, #12]	@ zero_extendqisi2
 1713 000c 9DF83890 		ldrb	r9, [sp, #56]	@ zero_extendqisi2
 1714 0010 9046     		mov	r8, r2
 1715 0012 7CBB     		cbnz	r4, .L318
 1716 0014 8B46     		mov	fp, r1
 1717 0016 1968     		ldr	r1, [r3]
 1718 0018 1F46     		mov	r7, r3
 1719 001a 0546     		mov	r5, r0
 1720 001c FFF7FEFF 		bl	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 1721 0020 20B3     		cbz	r0, .L316
 1722 0022 95F81846 		ldrb	r4, [r5, #1560]	@ zero_extendqisi2
 1723 0026 D6F80CA0 		ldr	r10, [r6, #12]
 1724 002a 5CB3     		cbz	r4, .L319
 1725              	.L315:
 1726 002c 05F21463 		addw	r3, r5, #1556
 1727 0030 0124     		movs	r4, #1
 1728 0032 0022     		movs	r2, #0
 1729 0034 1A60     		str	r2, [r3]	@ float
 1730 0036 5046     		mov	r0, r10
 1731 0038 2146     		mov	r1, r4
 1732 003a 85F81A96 		strb	r9, [r5, #1562]
 1733 003e 85F81946 		strb	r4, [r5, #1561]
 1734 0042 85F81846 		strb	r4, [r5, #1560]
 1735 0046 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 1736 004a 306A     		ldr	r0, [r6, #32]
 1737 004c 3968     		ldr	r1, [r7]
 1738 004e FFF7FEFF 		bl	_ZN12PrintMonitor13StartingPrintEPKc
 1739 0052 2146     		mov	r1, r4
 1740 0054 2846     		mov	r0, r5
 1741 0056 FFF7FEFF 		bl	_ZN6GCodes13StartPrintingEb
 1742 005a 3A68     		ldr	r2, [r7]
 1743 005c 1B49     		ldr	r1, .L320+4
 1744 005e 4046     		mov	r0, r8
 1745 0060 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1746 0064 2046     		mov	r0, r4
 1747 0066 05B0     		add	sp, sp, #20
 1748              		@ sp needed
 1749 0068 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1750              	.L316:
 1751 006c 0220     		movs	r0, #2
 1752 006e 05B0     		add	sp, sp, #20
 1753              		@ sp needed
 1754 0070 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1755              	.L318:
 1756 0074 1046     		mov	r0, r2
 1757 0076 1649     		ldr	r1, .L320+8
 1758 0078 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1759 007c 0220     		movs	r0, #2
 1760 007e 05B0     		add	sp, sp, #20
 1761              		@ sp needed
 1762 0080 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1763              	.L319:
 1764 0084 D5F86023 		ldr	r2, [r5, #864]
 1765 0088 D5F82C35 		ldr	r3, [r5, #1324]
 1766 008c C5F8AC31 		str	r3, [r5, #428]
 1767 0090 0123     		movs	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 32


 1768 0092 9340     		lsls	r3, r3, r2
 1769 0094 013B     		subs	r3, r3, #1
 1770 0096 C5F82C35 		str	r3, [r5, #1324]
 1771 009a 3046     		mov	r0, r6
 1772 009c FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 1773 00a0 0390     		str	r0, [sp, #12]
 1774 00a2 3046     		mov	r0, r6
 1775 00a4 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 1776 00a8 039B     		ldr	r3, [sp, #12]
 1777 00aa 0090     		str	r0, [sp]
 1778 00ac 2246     		mov	r2, r4
 1779 00ae 5046     		mov	r0, r10
 1780 00b0 05F5D871 		add	r1, r5, #432
 1781 00b4 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 1782 00b8 DBF80830 		ldr	r3, [fp, #8]
 1783 00bc D6F80CA0 		ldr	r10, [r6, #12]
 1784 00c0 5B68     		ldr	r3, [r3, #4]	@ float
 1785 00c2 C5F8D431 		str	r3, [r5, #468]	@ float
 1786 00c6 B1E7     		b	.L315
 1787              	.L321:
 1788              		.align	2
 1789              	.L320:
 1790 00c8 00000000 		.word	reprap
 1791 00cc 30000000 		.word	.LC28
 1792 00d0 00000000 		.word	.LC27
 1793              		.size	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b, .-_ZN6GCodes12SimulateFileER11GCode
 1794              		.section	.text._ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm,"ax",%progbits
 1795              		.align	1
 1796              		.p2align 2,,3
 1797              		.global	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm
 1798              		.syntax unified
 1799              		.thumb
 1800              		.thumb_func
 1801              		.fpu fpv4-sp-d16
 1802              		.type	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm, %function
 1803              	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm:
 1804              		@ args = 0, pretend = 0, frame = 0
 1805              		@ frame_needed = 0, uses_anonymous_args = 0
 1806 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1807 0004 90F81846 		ldrb	r4, [r0, #1560]	@ zero_extendqisi2
 1808 0008 9C42     		cmp	r4, r3
 1809 000a 82B0     		sub	sp, sp, #8
 1810 000c 22D0     		beq	.L327
 1811 000e 0E46     		mov	r6, r1
 1812 0010 1D46     		mov	r5, r3
 1813 0012 0446     		mov	r4, r0
 1814 0014 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1815 0018 C8B1     		cbz	r0, .L323
 1816 001a FDB1     		cbz	r5, .L330
 1817 001c DFF88C80 		ldr	r8, .L332
 1818 0020 94F81896 		ldrb	r9, [r4, #1560]	@ zero_extendqisi2
 1819 0024 D8F80C70 		ldr	r7, [r8, #12]
 1820 0028 B9F1000F 		cmp	r9, #0
 1821 002c 1DD0     		beq	.L331
 1822              	.L326:
 1823 002e 04F21463 		addw	r3, r4, #1556
 1824 0032 0022     		movs	r2, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 33


 1825 0034 1A60     		str	r2, [r3]	@ float
 1826              	.L325:
 1827 0036 0023     		movs	r3, #0
 1828 0038 E9B2     		uxtb	r1, r5
 1829 003a 3846     		mov	r0, r7
 1830 003c 84F81816 		strb	r1, [r4, #1560]
 1831 0040 84F81A36 		strb	r3, [r4, #1562]
 1832 0044 84F81936 		strb	r3, [r4, #1561]
 1833 0048 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 1834 004c 0120     		movs	r0, #1
 1835              	.L323:
 1836 004e 02B0     		add	sp, sp, #8
 1837              		@ sp needed
 1838 0050 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1839              	.L327:
 1840 0054 0120     		movs	r0, #1
 1841 0056 02B0     		add	sp, sp, #8
 1842              		@ sp needed
 1843 0058 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1844              	.L330:
 1845 005c 3146     		mov	r1, r6
 1846 005e 2046     		mov	r0, r4
 1847 0060 FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 1848 0064 114B     		ldr	r3, .L332
 1849 0066 DF68     		ldr	r7, [r3, #12]
 1850 0068 E5E7     		b	.L325
 1851              	.L331:
 1852 006a D4F86023 		ldr	r2, [r4, #864]
 1853 006e D4F82C35 		ldr	r3, [r4, #1324]
 1854 0072 C4F8AC31 		str	r3, [r4, #428]
 1855 0076 0123     		movs	r3, #1
 1856 0078 9340     		lsls	r3, r3, r2
 1857 007a 013B     		subs	r3, r3, #1
 1858 007c C4F82C35 		str	r3, [r4, #1324]
 1859 0080 4046     		mov	r0, r8
 1860 0082 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 1861 0086 8246     		mov	r10, r0
 1862 0088 4046     		mov	r0, r8
 1863 008a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 1864 008e 5346     		mov	r3, r10
 1865 0090 0090     		str	r0, [sp]
 1866 0092 4A46     		mov	r2, r9
 1867 0094 3846     		mov	r0, r7
 1868 0096 04F5D871 		add	r1, r4, #432
 1869 009a FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 1870 009e B368     		ldr	r3, [r6, #8]
 1871 00a0 D8F80C70 		ldr	r7, [r8, #12]
 1872 00a4 5B68     		ldr	r3, [r3, #4]	@ float
 1873 00a6 C4F8D431 		str	r3, [r4, #468]	@ float
 1874 00aa C0E7     		b	.L326
 1875              	.L333:
 1876              		.align	2
 1877              	.L332:
 1878 00ac 00000000 		.word	reprap
 1879              		.size	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm, .-_ZN6GCodes20ChangeSimulation
 1880              		.section	.text._ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef,"ax",%progbits
 1881              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 34


 1882              		.p2align 2,,3
 1883              		.global	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef
 1884              		.syntax unified
 1885              		.thumb
 1886              		.thumb_func
 1887              		.fpu fpv4-sp-d16
 1888              		.type	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef, %function
 1889              	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef:
 1890              		@ args = 0, pretend = 0, frame = 64
 1891              		@ frame_needed = 0, uses_anonymous_args = 0
 1892 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1893 0004 2DED028B 		vpush.64	{d8}
 1894 0008 9DB0     		sub	sp, sp, #116
 1895 000a 0E46     		mov	r6, r1
 1896 000c 8146     		mov	r9, r0
 1897 000e 0023     		movs	r3, #0
 1898 0010 0846     		mov	r0, r1
 1899 0012 5021     		movs	r1, #80
 1900 0014 1746     		mov	r7, r2
 1901 0016 8DF83F30 		strb	r3, [sp, #63]
 1902 001a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1903 001e 0028     		cmp	r0, #0
 1904 0020 40F0A680 		bne	.L375
 1905 0024 8046     		mov	r8, r0
 1906 0026 4321     		movs	r1, #67
 1907 0028 3046     		mov	r0, r6
 1908 002a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1909 002e 0028     		cmp	r0, #0
 1910 0030 40F0BF80 		bne	.L376
 1911              	.L340:
 1912 0034 D9F80400 		ldr	r0, [r9, #4]
 1913 0038 90F8CC10 		ldrb	r1, [r0, #204]	@ zero_extendqisi2
 1914 003c FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 1915 0040 0546     		mov	r5, r0
 1916 0042 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1917 0044 10AC     		add	r4, sp, #64
 1918 0046 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1919 0048 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1920 004a 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1921 004c 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1922 0050 9DF83F50 		ldrb	r5, [sp, #63]	@ zero_extendqisi2
 1923 0054 84E80F00 		stm	r4, {r0, r1, r2, r3}
 1924 0058 0DB1     		cbz	r5, .L341
 1925 005a 8DF86D80 		strb	r8, [sp, #109]
 1926              	.L341:
 1927 005e 4821     		movs	r1, #72
 1928 0060 0DF13F03 		add	r3, sp, #63
 1929 0064 16AA     		add	r2, sp, #88
 1930 0066 3046     		mov	r0, r6
 1931 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1932 006c 4621     		movs	r1, #70
 1933 006e 3046     		mov	r0, r6
 1934 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1935 0074 0028     		cmp	r0, #0
 1936 0076 40F0E080 		bne	.L377
 1937              	.L342:
 1938 007a 5421     		movs	r1, #84
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 35


 1939 007c 3046     		mov	r0, r6
 1940 007e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1941 0082 0028     		cmp	r0, #0
 1942 0084 40F0CC80 		bne	.L378
 1943              	.L343:
 1944 0088 4921     		movs	r1, #73
 1945 008a 3046     		mov	r0, r6
 1946 008c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1947 0090 0028     		cmp	r0, #0
 1948 0092 40F0B980 		bne	.L379
 1949              	.L344:
 1950 0096 4221     		movs	r1, #66
 1951 0098 3046     		mov	r0, r6
 1952 009a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1953 009e 0028     		cmp	r0, #0
 1954 00a0 40F0A480 		bne	.L380
 1955              	.L345:
 1956 00a4 0DF13F03 		add	r3, sp, #63
 1957 00a8 19AA     		add	r2, sp, #100
 1958 00aa 5221     		movs	r1, #82
 1959 00ac 3046     		mov	r0, r6
 1960 00ae FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1961 00b2 5321     		movs	r1, #83
 1962 00b4 0DF13F03 		add	r3, sp, #63
 1963 00b8 1AAA     		add	r2, sp, #104
 1964 00ba 3046     		mov	r0, r6
 1965 00bc FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1966 00c0 4121     		movs	r1, #65
 1967 00c2 3046     		mov	r0, r6
 1968 00c4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1969 00c8 0028     		cmp	r0, #0
 1970 00ca 7AD1     		bne	.L381
 1971 00cc D9F80400 		ldr	r0, [r9, #4]
 1972 00d0 9DF83F30 		ldrb	r3, [sp, #63]	@ zero_extendqisi2
 1973 00d4 90F8CC20 		ldrb	r2, [r0, #204]	@ zero_extendqisi2
 1974 00d8 002B     		cmp	r3, #0
 1975 00da 7CD1     		bne	.L347
 1976 00dc 614B     		ldr	r3, .L382
 1977 00de 9DF86E40 		ldrb	r4, [sp, #110]	@ zero_extendqisi2
 1978 00e2 6149     		ldr	r1, .L382+4
 1979 00e4 1698     		ldr	r0, [sp, #88]	@ float
 1980 00e6 0D92     		str	r2, [sp, #52]
 1981 00e8 002C     		cmp	r4, #0
 1982 00ea 0CBF     		ite	eq
 1983 00ec 1C46     		moveq	r4, r3
 1984 00ee 0C46     		movne	r4, r1
 1985 00f0 FFF7FEFF 		bl	__aeabi_f2d
 1986 00f4 9FED5D7A 		vldr.32	s14, .L382+8
 1987 00f8 DDED177A 		vldr.32	s15, [sp, #92]
 1988 00fc 9DED188A 		vldr.32	s16, [sp, #96]
 1989 0100 5B4D     		ldr	r5, .L382+12
 1990 0102 9DF86D60 		ldrb	r6, [sp, #109]	@ zero_extendqisi2
 1991 0106 67EE877A 		vmul.f32	s15, s15, s14
 1992 010a 8046     		mov	r8, r0
 1993 010c 1998     		ldr	r0, [sp, #100]	@ float
 1994 010e 28EE078A 		vmul.f32	s16, s16, s14
 1995 0112 FDEEE78A 		vcvt.s32.f32	s17, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 36


 1996 0116 8946     		mov	r9, r1
 1997 0118 FFF7FEFF 		bl	__aeabi_f2d
 1998 011c 9DF86FC0 		ldrb	ip, [sp, #111]	@ zero_extendqisi2
 1999 0120 8B46     		mov	fp, r1
 2000 0122 5449     		ldr	r1, .L382+16
 2001 0124 8246     		mov	r10, r0
 2002 0126 1A98     		ldr	r0, [sp, #104]	@ float
 2003 0128 BCF1000F 		cmp	ip, #0
 2004 012c 18BF     		it	ne
 2005 012e 0D46     		movne	r5, r1
 2006 0130 FFF7FEFF 		bl	__aeabi_f2d
 2007 0134 BDEEC88A 		vcvt.s32.f32	s16, s16
 2008 0138 9DF86CC0 		ldrb	ip, [sp, #108]	@ zero_extendqisi2
 2009 013c 0094     		str	r4, [sp]
 2010 013e CDE90A01 		strd	r0, [sp, #40]
 2011 0142 8DED058A 		vstr.32	s16, [sp, #20]	@ int
 2012 0146 CDED048A 		vstr.32	s17, [sp, #16]	@ int
 2013 014a 0895     		str	r5, [sp, #32]
 2014 014c CDE906AB 		strd	r10, [sp, #24]
 2015 0150 CDE90289 		strd	r8, [sp, #8]
 2016 0154 0D9A     		ldr	r2, [sp, #52]
 2017 0156 CDF824C0 		str	ip, [sp, #36]
 2018 015a 3846     		mov	r0, r7
 2019 015c 3346     		mov	r3, r6
 2020 015e 4649     		ldr	r1, .L382+20
 2021 0160 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2022 0164 0120     		movs	r0, #1
 2023 0166 1DB0     		add	sp, sp, #116
 2024              		@ sp needed
 2025 0168 BDEC028B 		vldm	sp!, {d8}
 2026 016c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2027              	.L375:
 2028 0170 0123     		movs	r3, #1
 2029 0172 3046     		mov	r0, r6
 2030 0174 8DF83F30 		strb	r3, [sp, #63]
 2031 0178 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2032 017c 0628     		cmp	r0, #6
 2033 017e 0146     		mov	r1, r0
 2034 0180 6CD0     		beq	.L337
 2035 0182 0728     		cmp	r0, #7
 2036 0184 66D0     		beq	.L338
 2037 0186 0428     		cmp	r0, #4
 2038 0188 0CBF     		ite	eq
 2039 018a 4FF00308 		moveq	r8, #3
 2040 018e 4FF00008 		movne	r8, #0
 2041              	.L339:
 2042 0192 D9F80400 		ldr	r0, [r9, #4]
 2043 0196 FFF7FEFF 		bl	_ZN8Platform13SetZProbeTypeEj
 2044 019a 3146     		mov	r1, r6
 2045 019c 6422     		movs	r2, #100
 2046 019e 4846     		mov	r0, r9
 2047 01a0 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 2048 01a4 4321     		movs	r1, #67
 2049 01a6 3046     		mov	r0, r6
 2050 01a8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2051 01ac 0028     		cmp	r0, #0
 2052 01ae 3FF441AF 		beq	.L340
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 37


 2053              	.L376:
 2054 01b2 3046     		mov	r0, r6
 2055 01b4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2056 01b8 0123     		movs	r3, #1
 2057 01ba 8046     		mov	r8, r0
 2058 01bc 8DF83F30 		strb	r3, [sp, #63]
 2059 01c0 38E7     		b	.L340
 2060              	.L381:
 2061 01c2 3046     		mov	r0, r6
 2062 01c4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2063 01c8 0123     		movs	r3, #1
 2064 01ca 8DF86C00 		strb	r0, [sp, #108]
 2065 01ce D9F80400 		ldr	r0, [r9, #4]
 2066 01d2 8DF83F30 		strb	r3, [sp, #63]
 2067              	.L347:
 2068 01d6 90F8CC10 		ldrb	r1, [r0, #204]	@ zero_extendqisi2
 2069 01da 10AA     		add	r2, sp, #64
 2070 01dc FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe
 2071 01e0 0120     		movs	r0, #1
 2072 01e2 1DB0     		add	sp, sp, #116
 2073              		@ sp needed
 2074 01e4 BDEC028B 		vldm	sp!, {d8}
 2075 01e8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2076              	.L380:
 2077 01ec 3046     		mov	r0, r6
 2078 01ee FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2079 01f2 A0F10100 		sub	r0, #1
 2080 01f6 B0FA80F0 		clz	r0, r0
 2081 01fa 4009     		lsrs	r0, r0, #5
 2082 01fc 0123     		movs	r3, #1
 2083 01fe 8DF86F00 		strb	r0, [sp, #111]
 2084 0202 8DF83F30 		strb	r3, [sp, #63]
 2085 0206 4DE7     		b	.L345
 2086              	.L379:
 2087 0208 3046     		mov	r0, r6
 2088 020a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2089 020e 0030     		adds	r0, r0, #0
 2090 0210 18BF     		it	ne
 2091 0212 0120     		movne	r0, #1
 2092 0214 0123     		movs	r3, #1
 2093 0216 8DF86E00 		strb	r0, [sp, #110]
 2094 021a 8DF83F30 		strb	r3, [sp, #63]
 2095 021e 3AE7     		b	.L344
 2096              	.L378:
 2097 0220 3046     		mov	r0, r6
 2098 0222 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2099 0226 DFED157A 		vldr.32	s15, .L382+24
 2100 022a 20EE270A 		vmul.f32	s0, s0, s15
 2101 022e 0123     		movs	r3, #1
 2102 0230 8DED180A 		vstr.32	s0, [sp, #96]
 2103 0234 8DF83F30 		strb	r3, [sp, #63]
 2104 0238 26E7     		b	.L343
 2105              	.L377:
 2106 023a 3046     		mov	r0, r6
 2107 023c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2108 0240 DFED0E7A 		vldr.32	s15, .L382+24
 2109 0244 20EE270A 		vmul.f32	s0, s0, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 38


 2110 0248 0123     		movs	r3, #1
 2111 024a 8DED170A 		vstr.32	s0, [sp, #92]
 2112 024e 8DF83F30 		strb	r3, [sp, #63]
 2113 0252 12E7     		b	.L342
 2114              	.L338:
 2115 0254 0421     		movs	r1, #4
 2116 0256 4FF00208 		mov	r8, #2
 2117 025a 9AE7     		b	.L339
 2118              	.L337:
 2119 025c 0421     		movs	r1, #4
 2120 025e 8846     		mov	r8, r1
 2121 0260 97E7     		b	.L339
 2122              	.L383:
 2123 0262 00BF     		.align	2
 2124              	.L382:
 2125 0264 04000000 		.word	.LC30
 2126 0268 00000000 		.word	.LC29
 2127 026c 00007042 		.word	1114636288
 2128 0270 14000000 		.word	.LC32
 2129 0274 08000000 		.word	.LC31
 2130 0278 1C000000 		.word	.LC33
 2131 027c 8988883C 		.word	1015580809
 2132              		.size	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef, .-_ZN6GCodes17SetOrReportZProbeER1
 2133              		.section	.text._ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi,"ax",%progbits
 2134              		.align	1
 2135              		.p2align 2,,3
 2136              		.global	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi
 2137              		.syntax unified
 2138              		.thumb
 2139              		.thumb_func
 2140              		.fpu fpv4-sp-d16
 2141              		.type	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi, %function
 2142              	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi:
 2143              		@ args = 0, pretend = 0, frame = 48
 2144              		@ frame_needed = 0, uses_anonymous_args = 0
 2145 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2146 0004 0C46     		mov	r4, r1
 2147 0006 8DB0     		sub	sp, sp, #52
 2148 0008 0546     		mov	r5, r0
 2149 000a 5421     		movs	r1, #84
 2150 000c 2046     		mov	r0, r4
 2151 000e 1746     		mov	r7, r2
 2152 0010 9846     		mov	r8, r3
 2153 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2154 0016 0028     		cmp	r0, #0
 2155 0018 5AD0     		beq	.L385
 2156 001a 2046     		mov	r0, r4
 2157 001c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2158 0020 0928     		cmp	r0, #9
 2159 0022 0646     		mov	r6, r0
 2160 0024 00F2A680 		bhi	.L386
 2161 0028 40F24623 		movw	r3, #582
 2162 002c 9845     		cmp	r8, r3
 2163 002e 57D0     		beq	.L428
 2164 0030 4321     		movs	r1, #67
 2165 0032 2046     		mov	r0, r4
 2166 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 39


 2167 0038 0028     		cmp	r0, #0
 2168 003a 40F0A380 		bne	.L429
 2169 003e 4FEA4609 		lsl	r9, r6, #1
 2170 0042 09EB0603 		add	r3, r9, r6
 2171 0046 9B00     		lsls	r3, r3, #2
 2172 0048 03F23462 		addw	r2, r3, #1588
 2173 004c A918     		adds	r1, r5, r2
 2174 004e AA58     		ldr	r2, [r5, r2]
 2175 0050 002A     		cmp	r2, #0
 2176 0052 5FD0     		beq	.L430
 2177              	.L394:
 2178 0054 5321     		movs	r1, #83
 2179 0056 2046     		mov	r0, r4
 2180 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2181 005c 0028     		cmp	r0, #0
 2182 005e 65D0     		beq	.L397
 2183              	.L396:
 2184 0060 2046     		mov	r0, r4
 2185 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2186 0066 D5F85C33 		ldr	r3, [r5, #860]
 2187 006a 0190     		str	r0, [sp, #4]
 2188 006c 002B     		cmp	r3, #0
 2189 006e 00F0DC80 		beq	.L431
 2190 0072 4FF0000A 		mov	r10, #0
 2191 0076 D046     		mov	r8, r10
 2192 0078 05F20F57 		addw	r7, r5, #1295
 2193 007c 4FF0010B 		mov	fp, #1
 2194              	.L399:
 2195 0080 17F8011F 		ldrb	r1, [r7, #1]!	@ zero_extendqisi2
 2196 0084 2046     		mov	r0, r4
 2197 0086 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2198 008a 18B1     		cbz	r0, .L398
 2199 008c 0BFA08F2 		lsl	r2, fp, r8
 2200 0090 4AEA020A 		orr	r10, r10, r2
 2201              	.L398:
 2202 0094 D5F85C23 		ldr	r2, [r5, #860]
 2203 0098 08F10108 		add	r8, r8, #1
 2204 009c 4245     		cmp	r2, r8
 2205 009e EFD8     		bhi	.L399
 2206              	.L392:
 2207 00a0 4521     		movs	r1, #69
 2208 00a2 2046     		mov	r0, r4
 2209 00a4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2210 00a8 0028     		cmp	r0, #0
 2211 00aa 40F08980 		bne	.L432
 2212              	.L400:
 2213 00ae 019B     		ldr	r3, [sp, #4]
 2214 00b0 002B     		cmp	r3, #0
 2215 00b2 00F0AF80 		beq	.L405
 2216 00b6 012B     		cmp	r3, #1
 2217 00b8 00F0A180 		beq	.L406
 2218 00bc 0133     		adds	r3, r3, #1
 2219 00be 73D0     		beq	.L433
 2220 00c0 6868     		ldr	r0, [r5, #4]
 2221 00c2 654A     		ldr	r2, .L435
 2222 00c4 40F2B511 		movw	r1, #437
 2223 00c8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 40


 2224 00cc 0120     		movs	r0, #1
 2225 00ce 04E0     		b	.L389
 2226              	.L385:
 2227 00d0 3846     		mov	r0, r7
 2228 00d2 6249     		ldr	r1, .L435+4
 2229 00d4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2230 00d8 0220     		movs	r0, #2
 2231              	.L389:
 2232 00da 0DB0     		add	sp, sp, #52
 2233              		@ sp needed
 2234 00dc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2235              	.L428:
 2236 00e0 6868     		ldr	r0, [r5, #4]
 2237 00e2 FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 2238 00e6 06EB4603 		add	r3, r6, r6, lsl #1
 2239 00ea 05EB8303 		add	r3, r5, r3, lsl #2
 2240 00ee D3F83426 		ldr	r2, [r3, #1588]
 2241 00f2 1042     		tst	r0, r2
 2242 00f4 03D1     		bne	.L388
 2243 00f6 D3F83836 		ldr	r3, [r3, #1592]
 2244 00fa 8343     		bics	r3, r3, r0
 2245 00fc 36D0     		beq	.L427
 2246              	.L388:
 2247 00fe 0120     		movs	r0, #1
 2248 0100 D5F8B036 		ldr	r3, [r5, #1712]
 2249 0104 00FA06F6 		lsl	r6, r0, r6
 2250 0108 3343     		orrs	r3, r3, r6
 2251 010a C5F8B036 		str	r3, [r5, #1712]
 2252 010e 0DB0     		add	sp, sp, #52
 2253              		@ sp needed
 2254 0110 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2255              	.L430:
 2256 0114 4A68     		ldr	r2, [r1, #4]
 2257 0116 002A     		cmp	r2, #0
 2258 0118 9CD1     		bne	.L394
 2259 011a 2B44     		add	r3, r3, r5
 2260 011c 5321     		movs	r1, #83
 2261 011e 83F83C26 		strb	r2, [r3, #1596]
 2262 0122 2046     		mov	r0, r4
 2263 0124 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2264 0128 0028     		cmp	r0, #0
 2265 012a 99D1     		bne	.L396
 2266              	.L397:
 2267 012c 3246     		mov	r2, r6
 2268 012e 4E44     		add	r6, r6, r9
 2269 0130 05EB8606 		add	r6, r5, r6, lsl #2
 2270 0134 4A49     		ldr	r1, .L435+8
 2271 0136 3846     		mov	r0, r7
 2272 0138 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2273 013c D6F83426 		ldr	r2, [r6, #1588]
 2274 0140 3946     		mov	r1, r7
 2275 0142 2846     		mov	r0, r5
 2276 0144 FFF7FEFF 		bl	_ZN6GCodes12ListTriggersERK9StringRefm
 2277 0148 4649     		ldr	r1, .L435+12
 2278 014a 3846     		mov	r0, r7
 2279 014c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2280 0150 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 41


 2281 0152 D6F83826 		ldr	r2, [r6, #1592]
 2282 0156 3946     		mov	r1, r7
 2283 0158 FFF7FEFF 		bl	_ZN6GCodes12ListTriggersERK9StringRefm
 2284 015c 4249     		ldr	r1, .L435+16
 2285 015e 3846     		mov	r0, r7
 2286 0160 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2287 0164 96F83C46 		ldrb	r4, [r6, #1596]	@ zero_extendqisi2
 2288 0168 012C     		cmp	r4, #1
 2289 016a 60D0     		beq	.L434
 2290              	.L427:
 2291 016c 0120     		movs	r0, #1
 2292 016e 0DB0     		add	sp, sp, #52
 2293              		@ sp needed
 2294 0170 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2295              	.L386:
 2296 0174 3846     		mov	r0, r7
 2297 0176 3D49     		ldr	r1, .L435+20
 2298 0178 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2299 017c 0220     		movs	r0, #2
 2300 017e 0DB0     		add	sp, sp, #52
 2301              		@ sp needed
 2302 0180 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2303              	.L429:
 2304 0184 2046     		mov	r0, r4
 2305 0186 4FEA4609 		lsl	r9, r6, #1
 2306 018a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2307 018e 09EB0603 		add	r3, r9, r6
 2308 0192 05EB8303 		add	r3, r5, r3, lsl #2
 2309 0196 5321     		movs	r1, #83
 2310 0198 83F83C06 		strb	r0, [r3, #1596]
 2311 019c 2046     		mov	r0, r4
 2312 019e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2313 01a2 0028     		cmp	r0, #0
 2314 01a4 E2D0     		beq	.L427
 2315 01a6 5BE7     		b	.L396
 2316              	.L433:
 2317 01a8 4E44     		add	r6, r6, r9
 2318 01aa 05EB8605 		add	r5, r5, r6, lsl #2
 2319 01ae BAF1000F 		cmp	r10, #0
 2320 01b2 42D1     		bne	.L408
 2321 01b4 0120     		movs	r0, #1
 2322 01b6 C5F838A6 		str	r10, [r5, #1592]
 2323 01ba C5F834A6 		str	r10, [r5, #1588]
 2324 01be 8CE7     		b	.L389
 2325              	.L432:
 2326 01c0 0DF13008 		add	r8, sp, #48
 2327 01c4 0923     		movs	r3, #9
 2328 01c6 48F8283D 		str	r3, [r8, #-40]!
 2329 01ca 03A9     		add	r1, sp, #12
 2330 01cc 2046     		mov	r0, r4
 2331 01ce 4246     		mov	r2, r8
 2332 01d0 0023     		movs	r3, #0
 2333 01d2 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2334 01d6 0299     		ldr	r1, [sp, #8]
 2335 01d8 0029     		cmp	r1, #0
 2336 01da 3FF468AF 		beq	.L400
 2337 01de 4246     		mov	r2, r8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 42


 2338 01e0 08EB8101 		add	r1, r8, r1, lsl #2
 2339 01e4 0120     		movs	r0, #1
 2340              	.L403:
 2341 01e6 52F8043F 		ldr	r3, [r2, #4]!
 2342 01ea 082B     		cmp	r3, #8
 2343 01ec 04D8     		bhi	.L402
 2344 01ee 0333     		adds	r3, r3, #3
 2345 01f0 00FA03F3 		lsl	r3, r0, r3
 2346 01f4 4AEA030A 		orr	r10, r10, r3
 2347              	.L402:
 2348 01f8 9142     		cmp	r1, r2
 2349 01fa F4D1     		bne	.L403
 2350 01fc 57E7     		b	.L400
 2351              	.L406:
 2352 01fe 4E44     		add	r6, r6, r9
 2353 0200 05EB8605 		add	r5, r5, r6, lsl #2
 2354 0204 0198     		ldr	r0, [sp, #4]
 2355 0206 D5F83436 		ldr	r3, [r5, #1588]
 2356 020a 43EA0A03 		orr	r3, r3, r10
 2357 020e C5F83436 		str	r3, [r5, #1588]
 2358 0212 62E7     		b	.L389
 2359              	.L405:
 2360 0214 4E44     		add	r6, r6, r9
 2361 0216 05EB8605 		add	r5, r5, r6, lsl #2
 2362 021a 0120     		movs	r0, #1
 2363 021c D5F83836 		ldr	r3, [r5, #1592]
 2364 0220 43EA0A03 		orr	r3, r3, r10
 2365 0224 C5F83836 		str	r3, [r5, #1592]
 2366 0228 57E7     		b	.L389
 2367              	.L431:
 2368 022a 9A46     		mov	r10, r3
 2369 022c 38E7     		b	.L392
 2370              	.L434:
 2371 022e 3846     		mov	r0, r7
 2372 0230 0F49     		ldr	r1, .L435+24
 2373 0232 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2374 0236 2046     		mov	r0, r4
 2375 0238 4FE7     		b	.L389
 2376              	.L408:
 2377 023a D5F83426 		ldr	r2, [r5, #1588]
 2378 023e D5F83836 		ldr	r3, [r5, #1592]
 2379 0242 6FEA0A0A 		mvn	r10, r10
 2380 0246 02EA0A02 		and	r2, r2, r10
 2381 024a 03EA0A03 		and	r3, r3, r10
 2382 024e C5F83426 		str	r2, [r5, #1588]
 2383 0252 C5F83836 		str	r3, [r5, #1592]
 2384 0256 89E7     		b	.L427
 2385              	.L436:
 2386              		.align	2
 2387              	.L435:
 2388 0258 00000000 		.word	.LC34
 2389 025c AC000000 		.word	.LC40
 2390 0260 24000000 		.word	.LC35
 2391 0264 4C000000 		.word	.LC36
 2392 0268 64000000 		.word	.LC37
 2393 026c 90000000 		.word	.LC39
 2394 0270 74000000 		.word	.LC38
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 43


 2395              		.size	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi, .-_ZN6GCodes23CheckOrConfig
 2396              		.section	.text._ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef,"ax",%progbits
 2397              		.align	1
 2398              		.p2align 2,,3
 2399              		.global	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef
 2400              		.syntax unified
 2401              		.thumb
 2402              		.thumb_func
 2403              		.fpu fpv4-sp-d16
 2404              		.type	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef, %function
 2405              	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef:
 2406              		@ args = 0, pretend = 0, frame = 64
 2407              		@ frame_needed = 0, uses_anonymous_args = 0
 2408 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2409 0004 2DED028B 		vpush.64	{d8}
 2410 0008 91B0     		sub	sp, sp, #68
 2411 000a 9046     		mov	r8, r2
 2412 000c 0646     		mov	r6, r0
 2413 000e 8A46     		mov	r10, r1
 2414 0010 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2415 0014 0028     		cmp	r0, #0
 2416 0016 00F0B280 		beq	.L497
 2417 001a 934F     		ldr	r7, .L505
 2418 001c 9FED938A 		vldr.32	s16, .L505+4
 2419 0020 5824     		movs	r4, #88
 2420 0022 4FF00009 		mov	r9, #0
 2421 0026 4FF0050B 		mov	fp, #5
 2422 002a 03E0     		b	.L453
 2423              	.L439:
 2424 002c 17F8014F 		ldrb	r4, [r7, #1]!	@ zero_extendqisi2
 2425 0030 002C     		cmp	r4, #0
 2426 0032 3ED0     		beq	.L500
 2427              	.L453:
 2428 0034 2146     		mov	r1, r4
 2429 0036 5046     		mov	r0, r10
 2430 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2431 003c 0546     		mov	r5, r0
 2432 003e 0028     		cmp	r0, #0
 2433 0040 F4D0     		beq	.L439
 2434 0042 10AA     		add	r2, sp, #64
 2435 0044 5046     		mov	r0, r10
 2436 0046 42F834BD 		str	fp, [r2, #-52]!
 2437 004a 07A9     		add	r1, sp, #28
 2438 004c 0023     		movs	r3, #0
 2439 004e FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2440 0052 0398     		ldr	r0, [sp, #12]
 2441 0054 0490     		str	r0, [sp, #16]
 2442 0056 60B1     		cbz	r0, .L444
 2443 0058 07AA     		add	r2, sp, #28
 2444 005a 02EB8000 		add	r0, r2, r0, lsl #2
 2445 005e 05A9     		add	r1, sp, #20
 2446              	.L445:
 2447 0060 52F8043B 		ldr	r3, [r2], #4
 2448 0064 FF2B     		cmp	r3, #255
 2449 0066 28BF     		it	cs
 2450 0068 FF23     		movcs	r3, #255
 2451 006a 8242     		cmp	r2, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 44


 2452 006c 01F8013B 		strb	r3, [r1], #1
 2453 0070 F6D1     		bne	.L445
 2454              	.L444:
 2455 0072 D6F85C03 		ldr	r0, [r6, #860]
 2456 0076 0028     		cmp	r0, #0
 2457 0078 00F0F080 		beq	.L501
 2458 007c 96F81A35 		ldrb	r3, [r6, #1306]	@ zero_extendqisi2
 2459 0080 A342     		cmp	r3, r4
 2460 0082 00F0EE80 		beq	.L473
 2461 0086 06F21A52 		addw	r2, r6, #1306
 2462 008a 0023     		movs	r3, #0
 2463 008c 05E0     		b	.L447
 2464              	.L449:
 2465 008e 12F8011F 		ldrb	r1, [r2, #1]!	@ zero_extendqisi2
 2466 0092 A142     		cmp	r1, r4
 2467 0094 4B46     		mov	r3, r9
 2468 0096 00F0AF80 		beq	.L448
 2469              	.L447:
 2470 009a 03F10109 		add	r9, r3, #1
 2471 009e 8145     		cmp	r9, r0
 2472 00a0 F5D1     		bne	.L449
 2473 00a2 0828     		cmp	r0, #8
 2474 00a4 40F2C480 		bls	.L502
 2475              	.L451:
 2476 00a8 A946     		mov	r9, r5
 2477              	.L504:
 2478 00aa 17F8014F 		ldrb	r4, [r7, #1]!	@ zero_extendqisi2
 2479 00ae 002C     		cmp	r4, #0
 2480 00b0 C0D1     		bne	.L453
 2481              	.L500:
 2482 00b2 4521     		movs	r1, #69
 2483 00b4 5046     		mov	r0, r10
 2484 00b6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2485 00ba 0028     		cmp	r0, #0
 2486 00bc 64D1     		bne	.L503
 2487 00be 5021     		movs	r1, #80
 2488 00c0 5046     		mov	r0, r10
 2489 00c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2490 00c6 0028     		cmp	r0, #0
 2491 00c8 40F08280 		bne	.L458
 2492 00cc B9F1000F 		cmp	r9, #0
 2493 00d0 40F08980 		bne	.L459
 2494 00d4 6649     		ldr	r1, .L505+8
 2495 00d6 4046     		mov	r0, r8
 2496 00d8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2497 00dc D6F85C33 		ldr	r3, [r6, #860]
 2498 00e0 6BB3     		cbz	r3, .L465
 2499 00e2 06F21953 		addw	r3, r6, #1305
 2500 00e6 DFF88CA1 		ldr	r10, .L505+12
 2501 00ea 0193     		str	r3, [sp, #4]
 2502 00ec 4FF44C7B 		mov	fp, #816
 2503              	.L468:
 2504 00f0 2021     		movs	r1, #32
 2505 00f2 4046     		mov	r0, r8
 2506 00f4 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 2507 00f8 7568     		ldr	r5, [r6, #4]
 2508 00fa 019B     		ldr	r3, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 45


 2509 00fc 09EB4907 		add	r7, r9, r9, lsl #1
 2510 0100 05EB8707 		add	r7, r5, r7, lsl #2
 2511 0104 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 2512 0108 0193     		str	r3, [sp, #4]
 2513 010a D7F82C33 		ldr	r3, [r7, #812]
 2514 010e 73B1     		cbz	r3, .L466
 2515 0110 5D44     		add	r5, r5, fp
 2516 0112 0024     		movs	r4, #0
 2517              	.L467:
 2518 0114 15F8013B 		ldrb	r3, [r5], #1	@ zero_extendqisi2
 2519 0118 5146     		mov	r1, r10
 2520 011a 4046     		mov	r0, r8
 2521 011c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2522 0120 D7F82C33 		ldr	r3, [r7, #812]
 2523 0124 0134     		adds	r4, r4, #1
 2524 0126 A342     		cmp	r3, r4
 2525 0128 4FF03A02 		mov	r2, #58
 2526 012c F2D8     		bhi	.L467
 2527              	.L466:
 2528 012e D6F85C33 		ldr	r3, [r6, #860]
 2529 0132 09F10109 		add	r9, r9, #1
 2530 0136 4B45     		cmp	r3, r9
 2531 0138 0BF10C0B 		add	fp, fp, #12
 2532 013c D8D8     		bhi	.L468
 2533              	.L465:
 2534 013e 2021     		movs	r1, #32
 2535 0140 4046     		mov	r0, r8
 2536 0142 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 2537 0146 D6F86433 		ldr	r3, [r6, #868]
 2538 014a 8BB1     		cbz	r3, .L469
 2539 014c 494D     		ldr	r5, .L505+12
 2540 014e 0024     		movs	r4, #0
 2541 0150 4522     		movs	r2, #69
 2542              	.L470:
 2543 0152 7368     		ldr	r3, [r6, #4]
 2544 0154 2344     		add	r3, r3, r4
 2545 0156 2946     		mov	r1, r5
 2546 0158 93F89833 		ldrb	r3, [r3, #920]	@ zero_extendqisi2
 2547 015c 4046     		mov	r0, r8
 2548 015e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2549 0162 D6F86433 		ldr	r3, [r6, #868]
 2550 0166 0134     		adds	r4, r4, #1
 2551 0168 A342     		cmp	r3, r4
 2552 016a 4FF03A02 		mov	r2, #58
 2553 016e F0D8     		bhi	.L470
 2554              	.L469:
 2555 0170 D6F86023 		ldr	r2, [r6, #864]
 2556 0174 4049     		ldr	r1, .L505+16
 2557 0176 4046     		mov	r0, r8
 2558 0178 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2559 017c 0120     		movs	r0, #1
 2560              	.L497:
 2561 017e 11B0     		add	sp, sp, #68
 2562              		@ sp needed
 2563 0180 BDEC028B 		vldm	sp!, {d8}
 2564 0184 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2565              	.L503:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 46


 2566 0188 D6F85C33 		ldr	r3, [r6, #860]
 2567 018c 10AA     		add	r2, sp, #64
 2568 018e C3F10C03 		rsb	r3, r3, #12
 2569 0192 42F8303D 		str	r3, [r2, #-48]!
 2570 0196 07A9     		add	r1, sp, #28
 2571 0198 2346     		mov	r3, r4
 2572 019a 5046     		mov	r0, r10
 2573 019c FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2574 01a0 049B     		ldr	r3, [sp, #16]
 2575 01a2 C6F86433 		str	r3, [r6, #868]
 2576 01a6 73B1     		cbz	r3, .L455
 2577 01a8 06AD     		add	r5, sp, #24
 2578              	.L457:
 2579 01aa 55F8042F 		ldr	r2, [r5, #4]!
 2580 01ae 7068     		ldr	r0, [r6, #4]
 2581 01b0 FF2A     		cmp	r2, #255
 2582 01b2 28BF     		it	cs
 2583 01b4 FF22     		movcs	r2, #255
 2584 01b6 2146     		mov	r1, r4
 2585 01b8 D2B2     		uxtb	r2, r2
 2586 01ba FFF7FEFF 		bl	_ZN8Platform17SetExtruderDriverEjh
 2587 01be 049B     		ldr	r3, [sp, #16]
 2588 01c0 0134     		adds	r4, r4, #1
 2589 01c2 A342     		cmp	r3, r4
 2590 01c4 F1D8     		bhi	.L457
 2591              	.L455:
 2592 01c6 5021     		movs	r1, #80
 2593 01c8 5046     		mov	r0, r10
 2594 01ca FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2595 01ce 50B1     		cbz	r0, .L459
 2596              	.L458:
 2597 01d0 5046     		mov	r0, r10
 2598 01d2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2599 01d6 0228     		cmp	r0, #2
 2600 01d8 3ADD     		ble	.L461
 2601 01da D6F85C33 		ldr	r3, [r6, #860]
 2602 01de 8342     		cmp	r3, r0
 2603 01e0 36D3     		bcc	.L461
 2604 01e2 C6F86003 		str	r0, [r6, #864]
 2605              	.L459:
 2606 01e6 3046     		mov	r0, r6
 2607 01e8 FFF7FEFF 		bl	_ZN6GCodes25UpdateCurrentUserPositionEv
 2608 01ec 0120     		movs	r0, #1
 2609 01ee 11B0     		add	sp, sp, #68
 2610              		@ sp needed
 2611 01f0 BDEC028B 		vldm	sp!, {d8}
 2612 01f4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2613              	.L448:
 2614 01f8 082B     		cmp	r3, #8
 2615 01fa 3FF655AF 		bhi	.L451
 2616              	.L446:
 2617 01fe 1F4B     		ldr	r3, .L505+20
 2618 0200 0122     		movs	r2, #1
 2619 0202 D868     		ldr	r0, [r3, #12]
 2620 0204 06F1EC01 		add	r1, r6, #236
 2621 0208 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 2622 020c 4946     		mov	r1, r9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 47


 2623 020e 04AA     		add	r2, sp, #16
 2624 0210 7068     		ldr	r0, [r6, #4]
 2625 0212 FFF7FEFF 		bl	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
 2626 0216 D6F85C23 		ldr	r2, [r6, #860]
 2627 021a D6F86433 		ldr	r3, [r6, #868]
 2628 021e 1344     		add	r3, r3, r2
 2629 0220 0C2B     		cmp	r3, #12
 2630 0222 84BF     		itt	hi
 2631 0224 C2F10C02 		rsbhi	r2, r2, #12
 2632 0228 C6F86423 		strhi	r2, [r6, #868]
 2633 022c A946     		mov	r9, r5
 2634 022e 3CE7     		b	.L504
 2635              	.L502:
 2636 0230 0233     		adds	r3, r3, #2
 2637              	.L441:
 2638 0232 06EB0901 		add	r1, r6, r9
 2639 0236 06EB8902 		add	r2, r6, r9, lsl #2
 2640 023a 81F81A45 		strb	r4, [r1, #1306]
 2641 023e 82ED3B8A 		vstr.32	s16, [r2, #236]
 2642 0242 82ED308A 		vstr.32	s16, [r2, #192]
 2643 0246 C6F85C33 		str	r3, [r6, #860]
 2644 024a C6F86033 		str	r3, [r6, #864]
 2645 024e D6E7     		b	.L446
 2646              	.L461:
 2647 0250 4046     		mov	r0, r8
 2648 0252 0B49     		ldr	r1, .L505+24
 2649 0254 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2650 0258 0220     		movs	r0, #2
 2651 025a 90E7     		b	.L497
 2652              	.L501:
 2653 025c 8146     		mov	r9, r0
 2654 025e 0123     		movs	r3, #1
 2655 0260 E7E7     		b	.L441
 2656              	.L473:
 2657 0262 4FF00009 		mov	r9, #0
 2658 0266 CAE7     		b	.L446
 2659              	.L506:
 2660              		.align	2
 2661              	.L505:
 2662 0268 00000000 		.word	.LC41
 2663 026c 00000000 		.word	0
 2664 0270 2C000000 		.word	.LC43
 2665 0274 40000000 		.word	.LC44
 2666 0278 48000000 		.word	.LC45
 2667 027c 00000000 		.word	reprap
 2668 0280 0C000000 		.word	.LC42
 2669              		.size	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef, .-_ZN6GCodes14DoDriveMappingER11GCode
 2670              		.section	.text._ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef,"ax",%progbits
 2671              		.align	1
 2672              		.p2align 2,,3
 2673              		.global	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef
 2674              		.syntax unified
 2675              		.thumb
 2676              		.thumb_func
 2677              		.fpu fpv4-sp-d16
 2678              		.type	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef, %function
 2679              	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 48


 2680              		@ args = 0, pretend = 0, frame = 0
 2681              		@ frame_needed = 0, uses_anonymous_args = 0
 2682 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2683 0004 2DED028B 		vpush.64	{d8}
 2684 0008 874B     		ldr	r3, .L546
 2685 000a D3F8EC30 		ldr	r3, [r3, #236]
 2686 000e 9146     		mov	r9, r2
 2687 0010 002B     		cmp	r3, #0
 2688 0012 00F0FA80 		beq	.L542
 2689 0016 0446     		mov	r4, r0
 2690 0018 0D46     		mov	r5, r1
 2691 001a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2692 001e 0028     		cmp	r0, #0
 2693 0020 00F0A680 		beq	.L509
 2694 0024 D4F85C33 		ldr	r3, [r4, #860]
 2695 0028 002B     		cmp	r3, #0
 2696 002a 00F0A080 		beq	.L526
 2697 002e DFED7F8A 		vldr.32	s17, .L546+4
 2698 0032 9FED7F8A 		vldr.32	s16, .L546+8
 2699 0036 04F20F58 		addw	r8, r4, #1295
 2700 003a 04F1EC07 		add	r7, r4, #236
 2701 003e 0026     		movs	r6, #0
 2702 0040 07E0     		b	.L527
 2703              	.L511:
 2704 0042 D4F85C33 		ldr	r3, [r4, #860]
 2705 0046 0136     		adds	r6, r6, #1
 2706 0048 B342     		cmp	r3, r6
 2707 004a 07F10407 		add	r7, r7, #4
 2708 004e 40F28E80 		bls	.L526
 2709              	.L527:
 2710 0052 18F8011F 		ldrb	r1, [r8, #1]!	@ zero_extendqisi2
 2711 0056 2846     		mov	r0, r5
 2712 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2713 005c 0028     		cmp	r0, #0
 2714 005e F0D0     		beq	.L511
 2715 0060 4521     		movs	r1, #69
 2716 0062 2846     		mov	r0, r5
 2717 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2718 0068 0028     		cmp	r0, #0
 2719 006a 00F08580 		beq	.L512
 2720 006e 2846     		mov	r0, r5
 2721 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2722 0074 0C28     		cmp	r0, #12
 2723 0076 00F3D180 		bgt	.L543
 2724 007a D4F85823 		ldr	r2, [r4, #856]
 2725 007e 04F1C003 		add	r3, r4, #192
 2726 0082 04F1E001 		add	r1, r4, #224
 2727              	.L516:
 2728 0086 D3F800A0 		ldr	r10, [r3]	@ unaligned
 2729 008a D3F804E0 		ldr	lr, [r3, #4]	@ unaligned
 2730 008e D3F808C0 		ldr	ip, [r3, #8]	@ unaligned
 2731 0092 D3F80CB0 		ldr	fp, [r3, #12]	@ unaligned
 2732 0096 C2F80CB0 		str	fp, [r2, #12]	@ unaligned
 2733 009a 1033     		adds	r3, r3, #16
 2734 009c 8B42     		cmp	r3, r1
 2735 009e C2F800A0 		str	r10, [r2]	@ unaligned
 2736 00a2 C2F804E0 		str	lr, [r2, #4]	@ unaligned
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 49


 2737 00a6 C2F808C0 		str	ip, [r2, #8]	@ unaligned
 2738 00aa 02F11002 		add	r2, r2, #16
 2739 00ae EAD1     		bne	.L516
 2740 00b0 1B68     		ldr	r3, [r3]	@ unaligned
 2741 00b2 1360     		str	r3, [r2]	@ unaligned
 2742 00b4 0028     		cmp	r0, #0
 2743 00b6 4FF00303 		mov	r3, #3
 2744 00ba 84F85E31 		strb	r3, [r4, #350]
 2745 00be 79DB     		blt	.L515
 2746 00c0 0123     		movs	r3, #1
 2747 00c2 03FA00F0 		lsl	r0, r3, r0
 2748 00c6 40F08050 		orr	r0, r0, #268435456
 2749 00ca C4F85801 		str	r0, [r4, #344]
 2750              	.L518:
 2751 00ce 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 2752 00d2 03F0FD03 		and	r3, r3, #253
 2753 00d6 6FF38203 		bfc	r3, #2, #1
 2754 00da 0121     		movs	r1, #1
 2755 00dc 0222     		movs	r2, #2
 2756 00de 84F85F31 		strb	r3, [r4, #351]
 2757 00e2 4FF0FF33 		mov	r3, #-1
 2758 00e6 C4F85011 		str	r1, [r4, #336]
 2759 00ea C4F85421 		str	r2, [r4, #340]
 2760 00ee C4F84831 		str	r3, [r4, #328]
 2761 00f2 5221     		movs	r1, #82
 2762 00f4 2846     		mov	r0, r5
 2763 00f6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2764 00fa 0028     		cmp	r0, #0
 2765 00fc 5FD0     		beq	.L519
 2766 00fe 2846     		mov	r0, r5
 2767 0100 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2768 0104 D7ED007A 		vldr.32	s15, [r7]
 2769 0108 37EE800A 		vadd.f32	s0, s15, s0
 2770 010c 87ED000A 		vstr.32	s0, [r7]
 2771              	.L520:
 2772 0110 D4F85C33 		ldr	r3, [r4, #860]
 2773 0114 0B2B     		cmp	r3, #11
 2774 0116 08D8     		bhi	.L523
 2775 0118 3B33     		adds	r3, r3, #59
 2776 011a 04EB8303 		add	r3, r4, r3, lsl #2
 2777 011e 04F58E72 		add	r2, r4, #284
 2778              	.L524:
 2779 0122 A3EC018A 		vstmia.32	r3!, {s16}
 2780 0126 9342     		cmp	r3, r2
 2781 0128 FBD1     		bne	.L524
 2782              	.L523:
 2783 012a 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 2784 012e 6FF3C303 		bfc	r3, #3, #1
 2785 0132 84F85F31 		strb	r3, [r4, #351]
 2786 0136 4621     		movs	r1, #70
 2787 0138 2846     		mov	r0, r5
 2788 013a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2789 013e 0028     		cmp	r0, #0
 2790 0140 4AD1     		bne	.L544
 2791              	.L525:
 2792 0142 AB68     		ldr	r3, [r5, #8]
 2793 0144 5A68     		ldr	r2, [r3, #4]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 50


 2794 0146 C4F84021 		str	r2, [r4, #320]	@ float
 2795 014a 0123     		movs	r3, #1
 2796 014c C4F86431 		str	r3, [r4, #356]
 2797              		.syntax unified
 2798              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 2799 0150 BFF35F8F 		dmb
 2800              	@ 0 "" 2
 2801              		.thumb
 2802              		.syntax unified
 2803 0154 C4F86031 		str	r3, [r4, #352]
 2804 0158 AB68     		ldr	r3, [r5, #8]
 2805 015a 0322     		movs	r2, #3
 2806 015c 1A75     		strb	r2, [r3, #20]
 2807 015e D4F85C33 		ldr	r3, [r4, #860]
 2808 0162 0136     		adds	r6, r6, #1
 2809 0164 B342     		cmp	r3, r6
 2810 0166 07F10407 		add	r7, r7, #4
 2811 016a 3FF672AF 		bhi	.L527
 2812              	.L526:
 2813 016e 0120     		movs	r0, #1
 2814              	.L509:
 2815 0170 BDEC028B 		vldm	sp!, {d8}
 2816 0174 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2817              	.L512:
 2818 0178 D4F85823 		ldr	r2, [r4, #856]
 2819 017c 04F1C003 		add	r3, r4, #192
 2820 0180 04F1E001 		add	r1, r4, #224
 2821              	.L514:
 2822 0184 D3F800E0 		ldr	lr, [r3]	@ unaligned
 2823 0188 D3F804C0 		ldr	ip, [r3, #4]	@ unaligned
 2824 018c 9868     		ldr	r0, [r3, #8]	@ unaligned
 2825 018e D3F80CA0 		ldr	r10, [r3, #12]	@ unaligned
 2826 0192 C2F80CA0 		str	r10, [r2, #12]	@ unaligned
 2827 0196 1033     		adds	r3, r3, #16
 2828 0198 8B42     		cmp	r3, r1
 2829 019a C2F800E0 		str	lr, [r2]	@ unaligned
 2830 019e C2F804C0 		str	ip, [r2, #4]	@ unaligned
 2831 01a2 9060     		str	r0, [r2, #8]	@ unaligned
 2832 01a4 02F11002 		add	r2, r2, #16
 2833 01a8 ECD1     		bne	.L514
 2834 01aa 1B68     		ldr	r3, [r3]	@ unaligned
 2835 01ac 1360     		str	r3, [r2]	@ unaligned
 2836 01ae 0323     		movs	r3, #3
 2837 01b0 84F85E31 		strb	r3, [r4, #350]
 2838              	.L515:
 2839 01b4 0123     		movs	r3, #1
 2840 01b6 B340     		lsls	r3, r3, r6
 2841 01b8 C4F85831 		str	r3, [r4, #344]
 2842 01bc 87E7     		b	.L518
 2843              	.L519:
 2844 01be 5321     		movs	r1, #83
 2845 01c0 2846     		mov	r0, r5
 2846 01c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2847 01c6 A0B9     		cbnz	r0, .L545
 2848              	.L521:
 2849 01c8 6368     		ldr	r3, [r4, #4]
 2850 01ca 06F5F372 		add	r2, r6, #486
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 51


 2851 01ce 03EB8203 		add	r3, r3, r2, lsl #2
 2852 01d2 5B68     		ldr	r3, [r3, #4]	@ float
 2853              	.L522:
 2854 01d4 3B60     		str	r3, [r7]	@ float
 2855 01d6 9BE7     		b	.L520
 2856              	.L544:
 2857 01d8 2846     		mov	r0, r5
 2858 01da FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2859 01de D4EDEE7A 		vldr.32	s15, [r4, #952]
 2860 01e2 AB68     		ldr	r3, [r5, #8]
 2861 01e4 60EE277A 		vmul.f32	s15, s0, s15
 2862 01e8 67EEA87A 		vmul.f32	s15, s15, s17
 2863 01ec C3ED017A 		vstr.32	s15, [r3, #4]
 2864 01f0 A7E7     		b	.L525
 2865              	.L545:
 2866 01f2 2846     		mov	r0, r5
 2867 01f4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2868 01f8 0028     		cmp	r0, #0
 2869 01fa E5DD     		ble	.L521
 2870 01fc 6368     		ldr	r3, [r4, #4]
 2871 01fe 06F5F872 		add	r2, r6, #496
 2872 0202 03EB8203 		add	r3, r3, r2, lsl #2
 2873 0206 1B68     		ldr	r3, [r3]	@ float
 2874 0208 E4E7     		b	.L522
 2875              	.L542:
 2876 020a 1046     		mov	r0, r2
 2877 020c 0949     		ldr	r1, .L546+12
 2878 020e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2879 0212 BDEC028B 		vldm	sp!, {d8}
 2880 0216 0220     		movs	r0, #2
 2881 0218 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2882              	.L543:
 2883 021c 4846     		mov	r0, r9
 2884 021e 0649     		ldr	r1, .L546+16
 2885 0220 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2886 0224 0220     		movs	r0, #2
 2887 0226 A3E7     		b	.L509
 2888              	.L547:
 2889              		.align	2
 2890              	.L546:
 2891 0228 00000000 		.word	reprap
 2892 022c 8988883C 		.word	1015580809
 2893 0230 00000000 		.word	0
 2894 0234 00000000 		.word	.LC46
 2895 0238 14000000 		.word	.LC47
 2896              		.size	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef, .-_ZN6GCodes9ProbeToolER11GCodeBufferRK9Str
 2897              		.section	.text._ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef,"ax",%progbits
 2898              		.align	1
 2899              		.p2align 2,,3
 2900              		.global	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef
 2901              		.syntax unified
 2902              		.thumb
 2903              		.thumb_func
 2904              		.fpu fpv4-sp-d16
 2905              		.type	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef, %function
 2906              	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef:
 2907              		@ args = 0, pretend = 0, frame = 72
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 52


 2908              		@ frame_needed = 0, uses_anonymous_args = 0
 2909 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2910 0004 0646     		mov	r6, r0
 2911 0006 96B0     		sub	sp, sp, #88
 2912 0008 4068     		ldr	r0, [r0, #4]
 2913 000a 0C46     		mov	r4, r1
 2914 000c 9046     		mov	r8, r2
 2915 000e FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 2916 0012 CDE90401 		strd	r0, [sp, #16]
 2917 0016 0DA9     		add	r1, sp, #52
 2918 0018 04A8     		add	r0, sp, #16
 2919 001a FFF7FEFF 		bl	gmtime_r
 2920 001e 2046     		mov	r0, r4
 2921 0020 5021     		movs	r1, #80
 2922 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2923 0026 88B9     		cbnz	r0, .L549
 2924 0028 5321     		movs	r1, #83
 2925 002a 2046     		mov	r0, r4
 2926 002c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2927 0030 88BB     		cbnz	r0, .L559
 2928 0032 7068     		ldr	r0, [r6, #4]
 2929 0034 FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 2930 0038 0028     		cmp	r0, #0
 2931 003a 45D1     		bne	.L560
 2932 003c 4046     		mov	r0, r8
 2933 003e 3049     		ldr	r1, .L562
 2934 0040 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2935 0044 0120     		movs	r0, #1
 2936 0046 16B0     		add	sp, sp, #88
 2937              		@ sp needed
 2938 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2939              	.L549:
 2940 004c 16AD     		add	r5, sp, #88
 2941 004e 0023     		movs	r3, #0
 2942 0050 05F8343D 		strb	r3, [r5, #-52]!
 2943 0054 07AF     		add	r7, sp, #28
 2944 0056 3946     		mov	r1, r7
 2945 0058 0D23     		movs	r3, #13
 2946 005a 2046     		mov	r0, r4
 2947 005c CDE90753 		strd	r5, r3, [sp, #28]
 2948 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 2949 0064 0DAA     		add	r2, sp, #52
 2950 0066 2846     		mov	r0, r5
 2951 0068 2649     		ldr	r1, .L562+4
 2952 006a FFF7FEFF 		bl	strptime
 2953 006e 0028     		cmp	r0, #0
 2954 0070 3FD0     		beq	.L561
 2955 0072 5321     		movs	r1, #83
 2956 0074 2046     		mov	r0, r4
 2957 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2958 007a 70B9     		cbnz	r0, .L555
 2959              	.L556:
 2960 007c 0DA8     		add	r0, sp, #52
 2961 007e 7468     		ldr	r4, [r6, #4]
 2962 0080 FFF7FEFF 		bl	mktime
 2963 0084 0246     		mov	r2, r0
 2964 0086 0B46     		mov	r3, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 53


 2965 0088 2046     		mov	r0, r4
 2966 008a FFF7FEFF 		bl	_ZN8Platform11SetDateTimeEx
 2967 008e 0120     		movs	r0, #1
 2968              	.L554:
 2969 0090 16B0     		add	sp, sp, #88
 2970              		@ sp needed
 2971 0092 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2972              	.L559:
 2973 0096 09AD     		add	r5, sp, #36
 2974 0098 07AF     		add	r7, sp, #28
 2975              	.L555:
 2976 009a 0022     		movs	r2, #0
 2977 009c 3946     		mov	r1, r7
 2978 009e 0D23     		movs	r3, #13
 2979 00a0 2046     		mov	r0, r4
 2980 00a2 8DF82420 		strb	r2, [sp, #36]
 2981 00a6 0795     		str	r5, [sp, #28]
 2982 00a8 0893     		str	r3, [sp, #32]
 2983 00aa FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 2984 00ae 0DAA     		add	r2, sp, #52
 2985 00b0 2846     		mov	r0, r5
 2986 00b2 1549     		ldr	r1, .L562+8
 2987 00b4 FFF7FEFF 		bl	strptime
 2988 00b8 0028     		cmp	r0, #0
 2989 00ba DFD1     		bne	.L556
 2990 00bc 4046     		mov	r0, r8
 2991 00be 1349     		ldr	r1, .L562+12
 2992 00c0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2993 00c4 0220     		movs	r0, #2
 2994 00c6 E3E7     		b	.L554
 2995              	.L560:
 2996 00c8 DDE90D10 		ldrd	r1, r0, [sp, #52]
 2997 00cc DDE91132 		ldrd	r3, r2, [sp, #68]
 2998 00d0 0F9C     		ldr	r4, [sp, #60]
 2999 00d2 0391     		str	r1, [sp, #12]
 3000 00d4 1099     		ldr	r1, [sp, #64]
 3001 00d6 0290     		str	r0, [sp, #8]
 3002 00d8 CDE90014 		strd	r1, r4, [sp]
 3003 00dc 4046     		mov	r0, r8
 3004 00de 0133     		adds	r3, r3, #1
 3005 00e0 02F26C72 		addw	r2, r2, #1900
 3006 00e4 0A49     		ldr	r1, .L562+16
 3007 00e6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3008 00ea 0120     		movs	r0, #1
 3009 00ec 16B0     		add	sp, sp, #88
 3010              		@ sp needed
 3011 00ee BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3012              	.L561:
 3013 00f2 4046     		mov	r0, r8
 3014 00f4 0749     		ldr	r1, .L562+20
 3015 00f6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3016 00fa 0220     		movs	r0, #2
 3017 00fc C8E7     		b	.L554
 3018              	.L563:
 3019 00fe 00BF     		.align	2
 3020              	.L562:
 3021 0100 78000000 		.word	.LC53
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 54


 3022 0104 0C000000 		.word	.LC49
 3023 0108 00000000 		.word	.LC48
 3024 010c 2C000000 		.word	.LC51
 3025 0110 40000000 		.word	.LC52
 3026 0114 18000000 		.word	.LC50
 3027              		.size	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11SetDateTimeER11GCodeBuffer
 3028              		.section	.text._ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef,"ax",%progbits
 3029              		.align	1
 3030              		.p2align 2,,3
 3031              		.global	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef
 3032              		.syntax unified
 3033              		.thumb
 3034              		.thumb_func
 3035              		.fpu fpv4-sp-d16
 3036              		.type	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef, %function
 3037              	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef:
 3038              		@ args = 0, pretend = 0, frame = 16
 3039              		@ frame_needed = 0, uses_anonymous_args = 0
 3040 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3041 0004 84B0     		sub	sp, sp, #16
 3042 0006 1746     		mov	r7, r2
 3043 0008 0546     		mov	r5, r0
 3044 000a 0E46     		mov	r6, r1
 3045 000c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3046 0010 18B9     		cbnz	r0, .L565
 3047              	.L578:
 3048 0012 0020     		movs	r0, #0
 3049              	.L566:
 3050 0014 04B0     		add	sp, sp, #16
 3051              		@ sp needed
 3052 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3053              	.L565:
 3054 001a 354B     		ldr	r3, .L595
 3055 001c 0121     		movs	r1, #1
 3056 001e 1869     		ldr	r0, [r3, #16]
 3057 0020 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 3058 0024 2846     		mov	r0, r5
 3059 0026 FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 3060 002a 95F8B446 		ldrb	r4, [r5, #1716]	@ zero_extendqisi2
 3061 002e CCB9     		cbnz	r4, .L567
 3062 0030 5321     		movs	r1, #83
 3063 0032 3046     		mov	r0, r6
 3064 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3065 0038 30BB     		cbnz	r0, .L592
 3066 003a 0120     		movs	r0, #1
 3067 003c 85F8B406 		strb	r0, [r5, #1716]
 3068              	.L575:
 3069 0040 3946     		mov	r1, r7
 3070 0042 FFF7FEFF 		bl	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef
 3071 0046 40B1     		cbz	r0, .L577
 3072 0048 95F8B436 		ldrb	r3, [r5, #1716]	@ zero_extendqisi2
 3073 004c DB07     		lsls	r3, r3, #31
 3074 004e 09D5     		bpl	.L567
 3075 0050 3946     		mov	r1, r7
 3076 0052 6868     		ldr	r0, [r5, #4]
 3077 0054 FFF7FEFF 		bl	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef
 3078 0058 20B9     		cbnz	r0, .L567
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 55


 3079              	.L577:
 3080 005a 0023     		movs	r3, #0
 3081 005c 85F8B436 		strb	r3, [r5, #1716]
 3082 0060 0220     		movs	r0, #2
 3083 0062 D7E7     		b	.L566
 3084              	.L567:
 3085 0064 0124     		movs	r4, #1
 3086 0066 85F8B546 		strb	r4, [r5, #1717]
 3087 006a 2846     		mov	r0, r5
 3088 006c 4FF47A72 		mov	r2, #1000
 3089 0070 3146     		mov	r1, r6
 3090 0072 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 3091 0076 0028     		cmp	r0, #0
 3092 0078 CBD0     		beq	.L578
 3093 007a B368     		ldr	r3, [r6, #8]
 3094 007c 1622     		movs	r2, #22
 3095 007e 2046     		mov	r0, r4
 3096 0080 1A75     		strb	r2, [r3, #20]
 3097 0082 04B0     		add	sp, sp, #16
 3098              		@ sp needed
 3099 0084 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3100              	.L592:
 3101 0088 04AA     		add	r2, sp, #16
 3102 008a 0323     		movs	r3, #3
 3103 008c 0DF10408 		add	r8, sp, #4
 3104 0090 42F8103D 		str	r3, [r2, #-16]!
 3105 0094 4146     		mov	r1, r8
 3106 0096 2346     		mov	r3, r4
 3107 0098 3046     		mov	r0, r6
 3108 009a FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3109 009e 0099     		ldr	r1, [sp]
 3110 00a0 19B3     		cbz	r1, .L593
 3111 00a2 019A     		ldr	r2, [sp, #4]
 3112 00a4 032A     		cmp	r2, #3
 3113 00a6 17D8     		bhi	.L571
 3114 00a8 2346     		mov	r3, r4
 3115 00aa 95F8B406 		ldrb	r0, [r5, #1716]	@ zero_extendqisi2
 3116 00ae 0124     		movs	r4, #1
 3117 00b0 03E0     		b	.L573
 3118              	.L574:
 3119 00b2 58F82320 		ldr	r2, [r8, r3, lsl #2]
 3120 00b6 032A     		cmp	r2, #3
 3121 00b8 0CD8     		bhi	.L594
 3122              	.L573:
 3123 00ba 04FA02F2 		lsl	r2, r4, r2
 3124 00be 0133     		adds	r3, r3, #1
 3125 00c0 1043     		orrs	r0, r0, r2
 3126 00c2 8B42     		cmp	r3, r1
 3127 00c4 C0B2     		uxtb	r0, r0
 3128 00c6 F4D1     		bne	.L574
 3129 00c8 85F8B406 		strb	r0, [r5, #1716]
 3130              	.L570:
 3131 00cc 0028     		cmp	r0, #0
 3132 00ce B7D1     		bne	.L575
 3133 00d0 0120     		movs	r0, #1
 3134 00d2 9FE7     		b	.L566
 3135              	.L594:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 56


 3136 00d4 85F8B406 		strb	r0, [r5, #1716]
 3137              	.L571:
 3138 00d8 3846     		mov	r0, r7
 3139 00da 0649     		ldr	r1, .L595+4
 3140 00dc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3141 00e0 0023     		movs	r3, #0
 3142 00e2 85F8B436 		strb	r3, [r5, #1716]
 3143 00e6 0220     		movs	r0, #2
 3144 00e8 94E7     		b	.L566
 3145              	.L593:
 3146 00ea 95F8B406 		ldrb	r0, [r5, #1716]	@ zero_extendqisi2
 3147 00ee EDE7     		b	.L570
 3148              	.L596:
 3149              		.align	2
 3150              	.L595:
 3151 00f0 00000000 		.word	reprap
 3152 00f4 00000000 		.word	.LC54
 3153              		.size	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef, .-_ZN6GCodes14UpdateFirmwareER11GCode
 3154              		.section	.text._ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef,"ax",%progbits
 3155              		.align	1
 3156              		.p2align 2,,3
 3157              		.global	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef
 3158              		.syntax unified
 3159              		.thumb
 3160              		.thumb_func
 3161              		.fpu fpv4-sp-d16
 3162              		.type	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef, %function
 3163              	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef:
 3164              		@ args = 0, pretend = 0, frame = 184
 3165              		@ frame_needed = 0, uses_anonymous_args = 0
 3166 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3167 0004 0F46     		mov	r7, r1
 3168 0006 B0B0     		sub	sp, sp, #192
 3169 0008 0546     		mov	r5, r0
 3170 000a 4121     		movs	r1, #65
 3171 000c 3846     		mov	r0, r7
 3172 000e 1446     		mov	r4, r2
 3173 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3174 0014 0028     		cmp	r0, #0
 3175 0016 50D0     		beq	.L611
 3176 0018 3846     		mov	r0, r7
 3177 001a FFF7FEFF 		bl	_ZN11GCodeBuffer18GetUIValueMaybeHexEv
 3178 001e 4FF00008 		mov	r8, #0
 3179 0022 5221     		movs	r1, #82
 3180 0024 0646     		mov	r6, r0
 3181 0026 0DF10F03 		add	r3, sp, #15
 3182 002a 04AA     		add	r2, sp, #16
 3183 002c 3846     		mov	r0, r7
 3184 002e CDF81080 		str	r8, [sp, #16]
 3185 0032 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 3186 0036 4221     		movs	r1, #66
 3187 0038 3846     		mov	r0, r7
 3188 003a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3189 003e 0028     		cmp	r0, #0
 3190 0040 3FD1     		bne	.L623
 3191 0042 0590     		str	r0, [sp, #20]
 3192              	.L600:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 57


 3193 0044 049B     		ldr	r3, [sp, #16]
 3194 0046 C318     		adds	r3, r0, r3
 3195 0048 37D0     		beq	.L611
 3196 004a 202B     		cmp	r3, #32
 3197 004c 84BF     		itt	hi
 3198 004e C0F12003 		rsbhi	r3, r0, #32
 3199 0052 0493     		strhi	r3, [sp, #16]
 3200 0054 0028     		cmp	r0, #0
 3201 0056 61D0     		beq	.L624
 3202 0058 10AB     		add	r3, sp, #64
 3203 005a 08AF     		add	r7, sp, #32
 3204 005c 03EB8000 		add	r0, r3, r0, lsl #2
 3205 0060 3A46     		mov	r2, r7
 3206              	.L604:
 3207 0062 53F8041B 		ldr	r1, [r3], #4
 3208 0066 02F8011B 		strb	r1, [r2], #1
 3209 006a 8342     		cmp	r3, r0
 3210 006c F9D1     		bne	.L604
 3211              	.L603:
 3212 006e 6868     		ldr	r0, [r5, #4]
 3213 0070 FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 3214 0074 FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 3215 0078 4FF0FF32 		mov	r2, #-1
 3216 007c 0146     		mov	r1, r0
 3217 007e 06A8     		add	r0, sp, #24
 3218 0080 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 3219 0084 049A     		ldr	r2, [sp, #16]
 3220 0086 2A49     		ldr	r1, .L628
 3221 0088 059B     		ldr	r3, [sp, #20]
 3222 008a 0191     		str	r1, [sp, #4]
 3223 008c 0092     		str	r2, [sp]
 3224 008e B1B2     		uxth	r1, r6
 3225 0090 3A46     		mov	r2, r7
 3226 0092 2848     		ldr	r0, .L628+4
 3227 0094 FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 3228 0098 0546     		mov	r5, r0
 3229 009a 06A8     		add	r0, sp, #24
 3230 009c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3231 00a0 0598     		ldr	r0, [sp, #20]
 3232 00a2 A842     		cmp	r0, r5
 3233 00a4 32D8     		bhi	.L625
 3234 00a6 049B     		ldr	r3, [sp, #16]
 3235 00a8 B3B9     		cbnz	r3, .L626
 3236              	.L607:
 3237 00aa 1844     		add	r0, r0, r3
 3238 00ac A842     		cmp	r0, r5
 3239 00ae 14BF     		ite	ne
 3240 00b0 0220     		movne	r0, #2
 3241 00b2 0120     		moveq	r0, #1
 3242 00b4 30B0     		add	sp, sp, #192
 3243              		@ sp needed
 3244 00b6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3245              	.L611:
 3246 00ba 0620     		movs	r0, #6
 3247 00bc 30B0     		add	sp, sp, #192
 3248              		@ sp needed
 3249 00be BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 58


 3250              	.L623:
 3251 00c2 30AA     		add	r2, sp, #192
 3252 00c4 2023     		movs	r3, #32
 3253 00c6 42F8AC3D 		str	r3, [r2, #-172]!
 3254 00ca 3846     		mov	r0, r7
 3255 00cc 4346     		mov	r3, r8
 3256 00ce 10A9     		add	r1, sp, #64
 3257 00d0 FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 3258 00d4 0598     		ldr	r0, [sp, #20]
 3259 00d6 B5E7     		b	.L600
 3260              	.L626:
 3261 00d8 1749     		ldr	r1, .L628+8
 3262 00da 2046     		mov	r0, r4
 3263 00dc FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3264 00e0 0598     		ldr	r0, [sp, #20]
 3265 00e2 A842     		cmp	r0, r5
 3266 00e4 1CD0     		beq	.L627
 3267 00e6 0FD2     		bcs	.L622
 3268 00e8 0138     		subs	r0, r0, #1
 3269 00ea 0DF11F03 		add	r3, sp, #31
 3270 00ee DFF85480 		ldr	r8, .L628+20
 3271 00f2 0744     		add	r7, r7, r0
 3272 00f4 5E19     		adds	r6, r3, r5
 3273              	.L610:
 3274 00f6 17F8012F 		ldrb	r2, [r7, #1]!	@ zero_extendqisi2
 3275 00fa 4146     		mov	r1, r8
 3276 00fc 2046     		mov	r0, r4
 3277 00fe FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 3278 0102 BE42     		cmp	r6, r7
 3279 0104 F7D1     		bne	.L610
 3280 0106 0598     		ldr	r0, [sp, #20]
 3281              	.L622:
 3282 0108 049B     		ldr	r3, [sp, #16]
 3283 010a CEE7     		b	.L607
 3284              	.L625:
 3285 010c 2046     		mov	r0, r4
 3286 010e 0B49     		ldr	r1, .L628+12
 3287 0110 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3288 0114 0220     		movs	r0, #2
 3289 0116 30B0     		add	sp, sp, #192
 3290              		@ sp needed
 3291 0118 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3292              	.L624:
 3293 011c 08AF     		add	r7, sp, #32
 3294 011e A6E7     		b	.L603
 3295              	.L627:
 3296 0120 2046     		mov	r0, r4
 3297 0122 0749     		ldr	r1, .L628+16
 3298 0124 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 3299 0128 DDE90430 		ldrd	r3, r0, [sp, #16]
 3300 012c BDE7     		b	.L607
 3301              	.L629:
 3302 012e 00BF     		.align	2
 3303              	.L628:
 3304 0130 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 3305 0134 00000000 		.word	Wire
 3306 0138 00000000 		.word	.LC55
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 59


 3307 013c 00000000 		.word	.LC7
 3308 0140 0C000000 		.word	.LC56
 3309 0144 18000000 		.word	.LC57
 3310              		.size	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef, .-_ZN6GCodes7SendI2cER11GCodeBufferRK9StringR
 3311              		.section	.text._ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef,"ax",%progbits
 3312              		.align	1
 3313              		.p2align 2,,3
 3314              		.global	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef
 3315              		.syntax unified
 3316              		.thumb
 3317              		.thumb_func
 3318              		.fpu fpv4-sp-d16
 3319              		.type	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef, %function
 3320              	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef:
 3321              		@ args = 0, pretend = 0, frame = 40
 3322              		@ frame_needed = 0, uses_anonymous_args = 0
 3323 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 3324 0004 0C46     		mov	r4, r1
 3325 0006 8DB0     		sub	sp, sp, #52
 3326 0008 0546     		mov	r5, r0
 3327 000a 4121     		movs	r1, #65
 3328 000c 2046     		mov	r0, r4
 3329 000e 1646     		mov	r6, r2
 3330 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3331 0014 0028     		cmp	r0, #0
 3332 0016 41D0     		beq	.L633
 3333 0018 2046     		mov	r0, r4
 3334 001a FFF7FEFF 		bl	_ZN11GCodeBuffer18GetUIValueMaybeHexEv
 3335 001e 4221     		movs	r1, #66
 3336 0020 0746     		mov	r7, r0
 3337 0022 2046     		mov	r0, r4
 3338 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3339 0028 0028     		cmp	r0, #0
 3340 002a 37D0     		beq	.L633
 3341 002c 2046     		mov	r0, r4
 3342 002e FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 3343 0032 431E     		subs	r3, r0, #1
 3344 0034 1F2B     		cmp	r3, #31
 3345 0036 0446     		mov	r4, r0
 3346 0038 30D8     		bhi	.L633
 3347 003a 6868     		ldr	r0, [r5, #4]
 3348 003c FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 3349 0040 FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 3350 0044 4FF0FF32 		mov	r2, #-1
 3351 0048 0146     		mov	r1, r0
 3352 004a 02A8     		add	r0, sp, #8
 3353 004c FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 3354 0050 174B     		ldr	r3, .L644
 3355 0052 0193     		str	r3, [sp, #4]
 3356 0054 B9B2     		uxth	r1, r7
 3357 0056 04AA     		add	r2, sp, #16
 3358 0058 0023     		movs	r3, #0
 3359 005a 0094     		str	r4, [sp]
 3360 005c 1548     		ldr	r0, .L644+4
 3361 005e FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 3362 0062 8146     		mov	r9, r0
 3363 0064 02A8     		add	r0, sp, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 60


 3364 0066 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3365 006a 1349     		ldr	r1, .L644+8
 3366 006c 3046     		mov	r0, r6
 3367 006e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3368 0072 B9F1000F 		cmp	r9, #0
 3369 0076 15D0     		beq	.L643
 3370 0078 04AD     		add	r5, sp, #16
 3371 007a DFF84480 		ldr	r8, .L644+16
 3372 007e 05EB0907 		add	r7, r5, r9
 3373              	.L636:
 3374 0082 15F8012B 		ldrb	r2, [r5], #1	@ zero_extendqisi2
 3375 0086 4146     		mov	r1, r8
 3376 0088 3046     		mov	r0, r6
 3377 008a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 3378 008e BD42     		cmp	r5, r7
 3379 0090 F7D1     		bne	.L636
 3380 0092 4C45     		cmp	r4, r9
 3381 0094 0CBF     		ite	eq
 3382 0096 0120     		moveq	r0, #1
 3383 0098 0220     		movne	r0, #2
 3384 009a 00E0     		b	.L632
 3385              	.L633:
 3386 009c 0620     		movs	r0, #6
 3387              	.L632:
 3388 009e 0DB0     		add	sp, sp, #52
 3389              		@ sp needed
 3390 00a0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3391              	.L643:
 3392 00a4 3046     		mov	r0, r6
 3393 00a6 0549     		ldr	r1, .L644+12
 3394 00a8 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 3395 00ac 0220     		movs	r0, #2
 3396 00ae F6E7     		b	.L632
 3397              	.L645:
 3398              		.align	2
 3399              	.L644:
 3400 00b0 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 3401 00b4 00000000 		.word	Wire
 3402 00b8 00000000 		.word	.LC55
 3403 00bc 0C000000 		.word	.LC56
 3404 00c0 18000000 		.word	.LC57
 3405              		.size	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef, .-_ZN6GCodes10ReceiveI2cER11GCodeBufferRK
 3406              		.section	.text._ZN6GCodes14SetHeaterModelER11GCodeBufferRK9StringRef,"ax",%progbits
 3407              		.align	1
 3408              		.p2align 2,,3
 3409              		.global	_ZN6GCodes14SetHeaterModelER11GCodeBufferRK9StringRef
 3410              		.syntax unified
 3411              		.thumb
 3412              		.thumb_func
 3413              		.fpu fpv4-sp-d16
 3414              		.type	_ZN6GCodes14SetHeaterModelER11GCodeBufferRK9StringRef, %function
 3415              	_ZN6GCodes14SetHeaterModelER11GCodeBufferRK9StringRef:
 3416              		@ args = 0, pretend = 0, frame = 56
 3417              		@ frame_needed = 0, uses_anonymous_args = 0
 3418 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3419 0004 0846     		mov	r0, r1
 3420 0006 9AB0     		sub	sp, sp, #104
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 61


 3421 0008 0C46     		mov	r4, r1
 3422 000a 4821     		movs	r1, #72
 3423 000c 1646     		mov	r6, r2
 3424 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3425 0012 18B9     		cbnz	r0, .L647
 3426              	.L653:
 3427 0014 0120     		movs	r0, #1
 3428              	.L648:
 3429 0016 1AB0     		add	sp, sp, #104
 3430              		@ sp needed
 3431 0018 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3432              	.L647:
 3433 001c 2046     		mov	r0, r4
 3434 001e FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 3435 0022 0728     		cmp	r0, #7
 3436 0024 0746     		mov	r7, r0
 3437 0026 F5D8     		bhi	.L653
 3438 0028 DFF8C482 		ldr	r8, .L671+56
 3439 002c 00F1100A 		add	r10, r0, #16
 3440 0030 D8F81030 		ldr	r3, [r8, #16]
 3441 0034 4FEA8A09 		lsl	r9, r10, #2
 3442 0038 4B44     		add	r3, r3, r9
 3443 003a 5D68     		ldr	r5, [r3, #4]
 3444 003c 95F84730 		ldrb	r3, [r5, #71]	@ zero_extendqisi2
 3445 0040 296B     		ldr	r1, [r5, #48]	@ float
 3446 0042 686B     		ldr	r0, [r5, #52]	@ float
 3447 0044 D5F838C0 		ldr	ip, [r5, #56]	@ float
 3448 0048 EA6B     		ldr	r2, [r5, #60]	@ float
 3449 004a 0F91     		str	r1, [sp, #60]	@ float
 3450 004c 1090     		str	r0, [sp, #64]	@ float
 3451 004e 296C     		ldr	r1, [r5, #64]	@ float
 3452 0050 B5F84400 		ldrh	r0, [r5, #68]
 3453 0054 CDF844C0 		str	ip, [sp, #68]	@ float
 3454 0058 83F00103 		eor	r3, r3, #1
 3455 005c 4FF0000C 		mov	ip, #0
 3456 0060 1593     		str	r3, [sp, #84]
 3457 0062 1292     		str	r2, [sp, #72]	@ float
 3458 0064 0DF13B03 		add	r3, sp, #59
 3459 0068 0FAA     		add	r2, sp, #60
 3460 006a 1391     		str	r1, [sp, #76]	@ float
 3461 006c 1490     		str	r0, [sp, #80]
 3462 006e 4121     		movs	r1, #65
 3463 0070 2046     		mov	r0, r4
 3464 0072 8DF83BC0 		strb	ip, [sp, #59]
 3465 0076 CDF858C0 		str	ip, [sp, #88]
 3466 007a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3467 007e 0DF13B03 		add	r3, sp, #59
 3468 0082 10AA     		add	r2, sp, #64
 3469 0084 4321     		movs	r1, #67
 3470 0086 2046     		mov	r0, r4
 3471 0088 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3472 008c 0DF13B03 		add	r3, sp, #59
 3473 0090 11AA     		add	r2, sp, #68
 3474 0092 4421     		movs	r1, #68
 3475 0094 2046     		mov	r0, r4
 3476 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3477 009a 0DF13B03 		add	r3, sp, #59
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 62


 3478 009e 15AA     		add	r2, sp, #84
 3479 00a0 4221     		movs	r1, #66
 3480 00a2 2046     		mov	r0, r4
 3481 00a4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3482 00a8 0DF13B03 		add	r3, sp, #59
 3483 00ac 12AA     		add	r2, sp, #72
 3484 00ae 5321     		movs	r1, #83
 3485 00b0 2046     		mov	r0, r4
 3486 00b2 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3487 00b6 0DF13B03 		add	r3, sp, #59
 3488 00ba 13AA     		add	r2, sp, #76
 3489 00bc 5621     		movs	r1, #86
 3490 00be 2046     		mov	r0, r4
 3491 00c0 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3492 00c4 0DF13B03 		add	r3, sp, #59
 3493 00c8 16AA     		add	r2, sp, #88
 3494 00ca 4921     		movs	r1, #73
 3495 00cc 2046     		mov	r0, r4
 3496 00ce FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3497 00d2 0DF13B03 		add	r3, sp, #59
 3498 00d6 2046     		mov	r0, r4
 3499 00d8 14AA     		add	r2, sp, #80
 3500 00da 4621     		movs	r1, #70
 3501 00dc FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 3502 00e0 9DF83B30 		ldrb	r3, [sp, #59]	@ zero_extendqisi2
 3503 00e4 9BB3     		cbz	r3, .L650
 3504 00e6 DDE91512 		ldrd	r1, r2, [sp, #84]
 3505 00ea 149B     		ldr	r3, [sp, #80]
 3506 00ec D8F81000 		ldr	r0, [r8, #16]
 3507 00f0 9DED132A 		vldr.32	s4, [sp, #76]
 3508 00f4 DDED121A 		vldr.32	s3, [sp, #72]
 3509 00f8 9DED111A 		vldr.32	s2, [sp, #68]
 3510 00fc DDED100A 		vldr.32	s1, [sp, #64]
 3511 0100 9DED0F0A 		vldr.32	s0, [sp, #60]
 3512 0104 22F00202 		bic	r2, r2, #2
 3513 0108 B3F57A7F 		cmp	r3, #1000
 3514 010c 4844     		add	r0, r0, r9
 3515 010e A2F10102 		sub	r2, #1
 3516 0112 28BF     		it	cs
 3517 0114 4FF47A73 		movcs	r3, #1000
 3518 0118 B1FA81F1 		clz	r1, r1
 3519 011c B2FA82F2 		clz	r2, r2
 3520 0120 4068     		ldr	r0, [r0, #4]
 3521 0122 5209     		lsrs	r2, r2, #5
 3522 0124 4909     		lsrs	r1, r1, #5
 3523 0126 9BB2     		uxth	r3, r3
 3524 0128 FFF7FEFF 		bl	_ZN3PID8SetModelEfffffbbt
 3525 012c 0028     		cmp	r0, #0
 3526 012e 00F0BD80 		beq	.L668
 3527 0132 D8F81020 		ldr	r2, [r8, #16]
 3528 0136 169B     		ldr	r3, [sp, #88]
 3529 0138 9144     		add	r9, r9, r2
 3530 013a 023B     		subs	r3, r3, #2
 3531 013c 012B     		cmp	r3, #1
 3532 013e D9F80420 		ldr	r2, [r9, #4]
 3533 0142 8CBF     		ite	hi
 3534 0144 0023     		movhi	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 63


 3535 0146 0123     		movls	r3, #1
 3536 0148 82F87D30 		strb	r3, [r2, #125]
 3537 014c 62E7     		b	.L653
 3538              	.L650:
 3539 014e 95F84630 		ldrb	r3, [r5, #70]	@ zero_extendqisi2
 3540 0152 002B     		cmp	r3, #0
 3541 0154 00F0A480 		beq	.L669
 3542 0158 95F84730 		ldrb	r3, [r5, #71]	@ zero_extendqisi2
 3543 015c 002B     		cmp	r3, #0
 3544 015e 40F08B80 		bne	.L670
 3545 0162 554A     		ldr	r2, .L671
 3546              	.L655:
 3547 0164 D8F81030 		ldr	r3, [r8, #16]
 3548 0168 95F84810 		ldrb	r1, [r5, #72]	@ zero_extendqisi2
 3549 016c 03EB8A0A 		add	r10, r3, r10, lsl #2
 3550 0170 DAF80430 		ldr	r3, [r10, #4]
 3551 0174 93F87D30 		ldrb	r3, [r3, #125]	@ zero_extendqisi2
 3552 0178 0029     		cmp	r1, #0
 3553 017a 00F08A80 		beq	.L656
 3554 017e 4F48     		ldr	r0, .L671+4
 3555 0180 4F49     		ldr	r1, .L671+8
 3556 0182 002B     		cmp	r3, #0
 3557 0184 0CBF     		ite	eq
 3558 0186 0346     		moveq	r3, r0
 3559 0188 0B46     		movne	r3, r1
 3560              	.L657:
 3561 018a CDE90A23 		strd	r2, r3, [sp, #40]
 3562 018e 286C     		ldr	r0, [r5, #64]	@ float
 3563 0190 FFF7FEFF 		bl	__aeabi_f2d
 3564 0194 CDE90801 		strd	r0, [sp, #32]
 3565 0198 E86B     		ldr	r0, [r5, #60]	@ float
 3566 019a FFF7FEFF 		bl	__aeabi_f2d
 3567 019e CDE90601 		strd	r0, [sp, #24]
 3568 01a2 A86B     		ldr	r0, [r5, #56]	@ float
 3569 01a4 FFF7FEFF 		bl	__aeabi_f2d
 3570 01a8 CDE90401 		strd	r0, [sp, #16]
 3571 01ac 686B     		ldr	r0, [r5, #52]	@ float
 3572 01ae FFF7FEFF 		bl	__aeabi_f2d
 3573 01b2 CDE90201 		strd	r0, [sp, #8]
 3574 01b6 286B     		ldr	r0, [r5, #48]	@ float
 3575 01b8 FFF7FEFF 		bl	__aeabi_f2d
 3576 01bc 3A46     		mov	r2, r7
 3577 01be CDE90001 		strd	r0, [sp]
 3578 01c2 4049     		ldr	r1, .L671+12
 3579 01c4 3046     		mov	r0, r6
 3580 01c6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3581 01ca B5F84420 		ldrh	r2, [r5, #68]
 3582 01ce 002A     		cmp	r2, #0
 3583 01d0 5AD1     		bne	.L658
 3584 01d2 3D49     		ldr	r1, .L671+16
 3585 01d4 3046     		mov	r0, r6
 3586 01d6 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 3587              	.L659:
 3588 01da 95F84730 		ldrb	r3, [r5, #71]	@ zero_extendqisi2
 3589 01de 002B     		cmp	r3, #0
 3590 01e0 3FF418AF 		beq	.L653
 3591 01e4 3035     		adds	r5, r5, #48
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 64


 3592 01e6 2846     		mov	r0, r5
 3593 01e8 0021     		movs	r1, #0
 3594 01ea FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 3595 01ee 10EE100A 		vmov	r0, s0
 3596 01f2 CDED0D0A 		vstr.32	s1, [sp, #52]	@ int
 3597 01f6 8DED0C1A 		vstr.32	s2, [sp, #48]	@ int
 3598 01fa FFF7FEFF 		bl	__aeabi_f2d
 3599 01fe 9DED0C1A 		vldr.32	s2, [sp, #48]	@ int
 3600 0202 8046     		mov	r8, r0
 3601 0204 11EE100A 		vmov	r0, s2
 3602 0208 8946     		mov	r9, r1
 3603 020a FFF7FEFF 		bl	__aeabi_f2d
 3604 020e DDED0D0A 		vldr.32	s1, [sp, #52]	@ int
 3605 0212 CDE90201 		strd	r0, [sp, #8]
 3606 0216 10EE900A 		vmov	r0, s1
 3607 021a FFF7FEFF 		bl	__aeabi_f2d
 3608 021e 4246     		mov	r2, r8
 3609 0220 4B46     		mov	r3, r9
 3610 0222 CDE90001 		strd	r0, [sp]
 3611 0226 2949     		ldr	r1, .L671+20
 3612 0228 3046     		mov	r0, r6
 3613 022a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 3614 022e 2846     		mov	r0, r5
 3615 0230 0121     		movs	r1, #1
 3616 0232 FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 3617 0236 10EE100A 		vmov	r0, s0
 3618 023a CDED0D0A 		vstr.32	s1, [sp, #52]	@ int
 3619 023e 8DED0C1A 		vstr.32	s2, [sp, #48]	@ int
 3620 0242 FFF7FEFF 		bl	__aeabi_f2d
 3621 0246 9DED0C1A 		vldr.32	s2, [sp, #48]	@ int
 3622 024a 0446     		mov	r4, r0
 3623 024c 11EE100A 		vmov	r0, s2
 3624 0250 0D46     		mov	r5, r1
 3625 0252 FFF7FEFF 		bl	__aeabi_f2d
 3626 0256 DDED0D0A 		vldr.32	s1, [sp, #52]	@ int
 3627 025a CDE90201 		strd	r0, [sp, #8]
 3628 025e 10EE900A 		vmov	r0, s1
 3629 0262 FFF7FEFF 		bl	__aeabi_f2d
 3630 0266 2246     		mov	r2, r4
 3631 0268 CDE90001 		strd	r0, [sp]
 3632 026c 2B46     		mov	r3, r5
 3633 026e 3046     		mov	r0, r6
 3634 0270 1749     		ldr	r1, .L671+24
 3635 0272 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 3636 0276 CDE6     		b	.L653
 3637              	.L670:
 3638 0278 95F84910 		ldrb	r1, [r5, #73]	@ zero_extendqisi2
 3639 027c 154A     		ldr	r2, .L671+28
 3640 027e 164B     		ldr	r3, .L671+32
 3641 0280 0029     		cmp	r1, #0
 3642 0282 18BF     		it	ne
 3643 0284 1A46     		movne	r2, r3
 3644 0286 6DE7     		b	.L655
 3645              	.L658:
 3646 0288 1449     		ldr	r1, .L671+36
 3647 028a 3046     		mov	r0, r6
 3648 028c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 65


 3649 0290 A3E7     		b	.L659
 3650              	.L656:
 3651 0292 1348     		ldr	r0, .L671+40
 3652 0294 1349     		ldr	r1, .L671+44
 3653 0296 002B     		cmp	r3, #0
 3654 0298 0CBF     		ite	eq
 3655 029a 0346     		moveq	r3, r0
 3656 029c 0B46     		movne	r3, r1
 3657 029e 74E7     		b	.L657
 3658              	.L669:
 3659 02a0 3A46     		mov	r2, r7
 3660 02a2 3046     		mov	r0, r6
 3661 02a4 1049     		ldr	r1, .L671+48
 3662 02a6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3663 02aa B3E6     		b	.L653
 3664              	.L668:
 3665 02ac 3046     		mov	r0, r6
 3666 02ae 0F49     		ldr	r1, .L671+52
 3667 02b0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3668 02b4 0220     		movs	r0, #2
 3669 02b6 AEE6     		b	.L648
 3670              	.L672:
 3671              		.align	2
 3672              	.L671:
 3673 02b8 04000000 		.word	.LC59
 3674 02bc 1C000000 		.word	.LC61
 3675 02c0 3C000000 		.word	.LC63
 3676 02c4 90000000 		.word	.LC66
 3677 02c8 1C010000 		.word	.LC67
 3678 02cc 2C010000 		.word	.LC69
 3679 02d0 70010000 		.word	.LC70
 3680 02d4 00000000 		.word	.LC58
 3681 02d8 10000000 		.word	.LC60
 3682 02dc 24010000 		.word	.LC68
 3683 02e0 04000000 		.word	.LC30
 3684 02e4 30000000 		.word	.LC62
 3685 02e8 78000000 		.word	.LC65
 3686 02ec 60000000 		.word	.LC64
 3687 02f0 00000000 		.word	reprap
 3688              		.size	_ZN6GCodes14SetHeaterModelER11GCodeBufferRK9StringRef, .-_ZN6GCodes14SetHeaterModelER11GCode
 3689              		.section	.text._ZN6GCodes28ConnectODriveToSerialChannelEjjmRK9StringRef,"ax",%progbits
 3690              		.align	1
 3691              		.p2align 2,,3
 3692              		.global	_ZN6GCodes28ConnectODriveToSerialChannelEjjmRK9StringRef
 3693              		.syntax unified
 3694              		.thumb
 3695              		.thumb_func
 3696              		.fpu fpv4-sp-d16
 3697              		.type	_ZN6GCodes28ConnectODriveToSerialChannelEjjmRK9StringRef, %function
 3698              	_ZN6GCodes28ConnectODriveToSerialChannelEjjmRK9StringRef:
 3699              		@ args = 4, pretend = 0, frame = 0
 3700              		@ frame_needed = 0, uses_anonymous_args = 0
 3701 0000 0129     		cmp	r1, #1
 3702 0002 70B5     		push	{r4, r5, r6, lr}
 3703 0004 22D8     		bhi	.L684
 3704 0006 1D46     		mov	r5, r3
 3705 0008 224B     		ldr	r3, .L689
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 66


 3706 000a 1446     		mov	r4, r2
 3707 000c 5868     		ldr	r0, [r3, #4]
 3708 000e 61B1     		cbz	r1, .L685
 3709 0010 012C     		cmp	r4, #1
 3710 0012 00F11C06 		add	r6, r0, #28
 3711 0016 0BD0     		beq	.L679
 3712              	.L688:
 3713 0018 632C     		cmp	r4, #99
 3714 001a 1FD1     		bne	.L686
 3715 001c FFF7FEFF 		bl	_Z32signalThatSspiPinsAreUsedForUartv
 3716 0020 0446     		mov	r4, r0
 3717 0022 18B3     		cbz	r0, .L687
 3718 0024 0124     		movs	r4, #1
 3719 0026 2046     		mov	r0, r4
 3720 0028 70BD     		pop	{r4, r5, r6, pc}
 3721              	.L685:
 3722 002a 012C     		cmp	r4, #1
 3723 002c 0646     		mov	r6, r0
 3724 002e F3D1     		bne	.L688
 3725              	.L679:
 3726 0030 2A46     		mov	r2, r5
 3727 0032 2146     		mov	r1, r4
 3728 0034 FFF7FEFF 		bl	_ZN8Platform11SetBaudRateEjm
 3729 0038 1749     		ldr	r1, .L689+4
 3730 003a 3046     		mov	r0, r6
 3731 003c FFF7FEFF 		bl	_ZN6ODrive9SetSerialEP6Stream
 3732 0040 0024     		movs	r4, #0
 3733 0042 3046     		mov	r0, r6
 3734 0044 FFF7FEFF 		bl	_ZNK6ODrive5flushEv
 3735 0048 2046     		mov	r0, r4
 3736 004a 70BD     		pop	{r4, r5, r6, pc}
 3737              	.L684:
 3738 004c 0A46     		mov	r2, r1
 3739 004e 0498     		ldr	r0, [sp, #16]
 3740 0050 1249     		ldr	r1, .L689+8
 3741 0052 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3742 0056 0124     		movs	r4, #1
 3743              	.L673:
 3744 0058 2046     		mov	r0, r4
 3745 005a 70BD     		pop	{r4, r5, r6, pc}
 3746              	.L686:
 3747 005c 2246     		mov	r2, r4
 3748 005e 1049     		ldr	r1, .L689+12
 3749 0060 0498     		ldr	r0, [sp, #16]
 3750 0062 0124     		movs	r4, #1
 3751 0064 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3752 0068 2046     		mov	r0, r4
 3753 006a 70BD     		pop	{r4, r5, r6, pc}
 3754              	.L687:
 3755 006c 0D48     		ldr	r0, .L689+16
 3756 006e FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 3757 0072 0D48     		ldr	r0, .L689+20
 3758 0074 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 3759 0078 2946     		mov	r1, r5
 3760 007a 0C48     		ldr	r0, .L689+24
 3761 007c FFF7FEFF 		bl	_ZN10USARTClass5beginEm
 3762 0080 0121     		movs	r1, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 67


 3763 0082 0A48     		ldr	r0, .L689+24
 3764 0084 FFF7FEFF 		bl	_ZN9UARTClass20setInterruptPriorityEm
 3765 0088 3046     		mov	r0, r6
 3766 008a 0849     		ldr	r1, .L689+24
 3767 008c FFF7FEFF 		bl	_ZN6ODrive9SetSerialEP6Stream
 3768 0090 E2E7     		b	.L673
 3769              	.L690:
 3770 0092 00BF     		.align	2
 3771              	.L689:
 3772 0094 00000000 		.word	reprap
 3773 0098 00000000 		.word	Serial
 3774 009c 00000000 		.word	.LC71
 3775 00a0 20000000 		.word	.LC72
 3776 00a4 F4020000 		.word	g_APinDescription+756
 3777 00a8 D8020000 		.word	g_APinDescription+728
 3778 00ac 00000000 		.word	Serial2
 3779              		.size	_ZN6GCodes28ConnectODriveToSerialChannelEjjmRK9StringRef, .-_ZN6GCodes28ConnectODriveToSeria
 3780              		.section	.text._ZN6GCodes15ConfigureDriverER11GCodeBufferRK9StringRef,"ax",%progbits
 3781              		.align	1
 3782              		.p2align 2,,3
 3783              		.global	_ZN6GCodes15ConfigureDriverER11GCodeBufferRK9StringRef
 3784              		.syntax unified
 3785              		.thumb
 3786              		.thumb_func
 3787              		.fpu fpv4-sp-d16
 3788              		.type	_ZN6GCodes15ConfigureDriverER11GCodeBufferRK9StringRef, %function
 3789              	_ZN6GCodes15ConfigureDriverER11GCodeBufferRK9StringRef:
 3790              		@ args = 0, pretend = 0, frame = 40
 3791              		@ frame_needed = 0, uses_anonymous_args = 0
 3792 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3793 0004 91B0     		sub	sp, sp, #68
 3794 0006 0026     		movs	r6, #0
 3795 0008 0DF11E03 		add	r3, sp, #30
 3796 000c 0092     		str	r2, [sp]
 3797 000e 0193     		str	r3, [sp, #4]
 3798 0010 0C46     		mov	r4, r1
 3799 0012 09AB     		add	r3, sp, #36
 3800 0014 1546     		mov	r5, r2
 3801 0016 0746     		mov	r7, r0
 3802 0018 0296     		str	r6, [sp, #8]
 3803 001a 0846     		mov	r0, r1
 3804 001c 0322     		movs	r2, #3
 3805 001e 5121     		movs	r1, #81
 3806 0020 8DF81E60 		strb	r6, [sp, #30]
 3807 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 3808 0028 9DF81E30 		ldrb	r3, [sp, #30]	@ zero_extendqisi2
 3809 002c EBB9     		cbnz	r3, .L772
 3810              	.L692:
 3811 002e 5021     		movs	r1, #80
 3812 0030 2046     		mov	r0, r4
 3813 0032 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3814 0036 18B9     		cbnz	r0, .L695
 3815              	.L720:
 3816 0038 0120     		movs	r0, #1
 3817              	.L696:
 3818 003a 11B0     		add	sp, sp, #68
 3819              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 68


 3820 003c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3821              	.L695:
 3822 0040 2046     		mov	r0, r4
 3823 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3824 0046 0B28     		cmp	r0, #11
 3825 0048 0646     		mov	r6, r0
 3826 004a F5D8     		bhi	.L720
 3827 004c 0023     		movs	r3, #0
 3828 004e 5321     		movs	r1, #83
 3829 0050 2046     		mov	r0, r4
 3830 0052 8DF81F30 		strb	r3, [sp, #31]
 3831 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3832 005a 90B3     		cbz	r0, .L698
 3833 005c 2146     		mov	r1, r4
 3834 005e 3846     		mov	r0, r7
 3835 0060 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3836 0064 F8B9     		cbnz	r0, .L773
 3837              	.L699:
 3838 0066 0020     		movs	r0, #0
 3839 0068 E7E7     		b	.L696
 3840              	.L772:
 3841 006a 0B99     		ldr	r1, [sp, #44]
 3842 006c 0091     		str	r1, [sp]
 3843 006e DDE90923 		ldrd	r2, r3, [sp, #36]
 3844 0072 CA49     		ldr	r1, .L784
 3845 0074 2846     		mov	r0, r5
 3846 0076 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3847 007a DDE90A23 		ldrd	r2, r3, [sp, #40]
 3848 007e 0999     		ldr	r1, [sp, #36]
 3849 0080 0095     		str	r5, [sp]
 3850 0082 3846     		mov	r0, r7
 3851 0084 FFF7FEFF 		bl	_ZN6GCodes28ConnectODriveToSerialChannelEjjmRK9StringRef
 3852 0088 40B9     		cbnz	r0, .L693
 3853 008a 0A9A     		ldr	r2, [sp, #40]
 3854 008c 022A     		cmp	r2, #2
 3855 008e 00F02181 		beq	.L774
 3856              	.L694:
 3857 0092 C349     		ldr	r1, .L784+4
 3858 0094 2846     		mov	r0, r5
 3859 0096 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 3860 009a C8E7     		b	.L692
 3861              	.L693:
 3862 009c C149     		ldr	r1, .L784+8
 3863 009e 2846     		mov	r0, r5
 3864 00a0 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 3865 00a4 C3E7     		b	.L692
 3866              	.L773:
 3867 00a6 0123     		movs	r3, #1
 3868 00a8 2046     		mov	r0, r4
 3869 00aa D7F80480 		ldr	r8, [r7, #4]
 3870 00ae 8DF81F30 		strb	r3, [sp, #31]
 3871 00b2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3872 00b6 B044     		add	r8, r8, r6
 3873 00b8 0030     		adds	r0, r0, #0
 3874 00ba 18BF     		it	ne
 3875 00bc 0120     		movne	r0, #1
 3876 00be 88F80C01 		strb	r0, [r8, #268]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 69


 3877              	.L698:
 3878 00c2 5221     		movs	r1, #82
 3879 00c4 2046     		mov	r0, r4
 3880 00c6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3881 00ca 90B1     		cbz	r0, .L700
 3882 00cc 2146     		mov	r1, r4
 3883 00ce 3846     		mov	r0, r7
 3884 00d0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3885 00d4 0028     		cmp	r0, #0
 3886 00d6 C6D0     		beq	.L699
 3887 00d8 0123     		movs	r3, #1
 3888 00da 2046     		mov	r0, r4
 3889 00dc D7F80480 		ldr	r8, [r7, #4]
 3890 00e0 8DF81F30 		strb	r3, [sp, #31]
 3891 00e4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3892 00e8 3146     		mov	r1, r6
 3893 00ea 42B2     		sxtb	r2, r0
 3894 00ec 4046     		mov	r0, r8
 3895 00ee FFF7FEFF 		bl	_ZN8Platform14SetEnableValueEja
 3896              	.L700:
 3897 00f2 4D21     		movs	r1, #77
 3898 00f4 2046     		mov	r0, r4
 3899 00f6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3900 00fa 0028     		cmp	r0, #0
 3901 00fc 40F00781 		bne	.L775
 3902              	.L701:
 3903 0100 5421     		movs	r1, #84
 3904 0102 2046     		mov	r0, r4
 3905 0104 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3906 0108 0028     		cmp	r0, #0
 3907 010a 40F0E880 		bne	.L770
 3908 010e 0DF13008 		add	r8, sp, #48
 3909              	.L702:
 3910 0112 4921     		movs	r1, #73
 3911 0114 2046     		mov	r0, r4
 3912 0116 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3913 011a 0028     		cmp	r0, #0
 3914 011c 40F00781 		bne	.L776
 3915              	.L705:
 3916 0120 0DF11F03 		add	r3, sp, #31
 3917 0124 4246     		mov	r2, r8
 3918 0126 4421     		movs	r1, #68
 3919 0128 2046     		mov	r0, r4
 3920 012a FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 3921 012e 30B1     		cbz	r0, .L707
 3922 0130 0C99     		ldr	r1, [sp, #48]
 3923 0132 3046     		mov	r0, r6
 3924 0134 FFF7FEFF 		bl	_ZN12SmartDrivers13SetDriverModeEjj
 3925 0138 0028     		cmp	r0, #0
 3926 013a 00F01E81 		beq	.L777
 3927              	.L707:
 3928 013e 0DF11F03 		add	r3, sp, #31
 3929 0142 4246     		mov	r2, r8
 3930 0144 4321     		movs	r1, #67
 3931 0146 2046     		mov	r0, r4
 3932 0148 FFF7FEFF 		bl	_ZN11GCodeBuffer21TryGetUIValueMaybeHexEcRmRb
 3933 014c 38B1     		cbz	r0, .L709
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 70


 3934 014e 0C9A     		ldr	r2, [sp, #48]
 3935 0150 0521     		movs	r1, #5
 3936 0152 3046     		mov	r0, r6
 3937 0154 FFF7FEFF 		bl	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm
 3938 0158 0028     		cmp	r0, #0
 3939 015a 00F01981 		beq	.L778
 3940              	.L709:
 3941 015e 0DF11F03 		add	r3, sp, #31
 3942 0162 4246     		mov	r2, r8
 3943 0164 4621     		movs	r1, #70
 3944 0166 2046     		mov	r0, r4
 3945 0168 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 3946 016c 38B1     		cbz	r0, .L710
 3947 016e 0C9A     		ldr	r2, [sp, #48]
 3948 0170 0021     		movs	r1, #0
 3949 0172 3046     		mov	r0, r6
 3950 0174 FFF7FEFF 		bl	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm
 3951 0178 0028     		cmp	r0, #0
 3952 017a 00F04581 		beq	.L779
 3953              	.L710:
 3954 017e 0DF11F03 		add	r3, sp, #31
 3955 0182 4246     		mov	r2, r8
 3956 0184 4221     		movs	r1, #66
 3957 0186 2046     		mov	r0, r4
 3958 0188 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 3959 018c 38B1     		cbz	r0, .L711
 3960 018e 0C9A     		ldr	r2, [sp, #48]
 3961 0190 0121     		movs	r1, #1
 3962 0192 3046     		mov	r0, r6
 3963 0194 FFF7FEFF 		bl	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm
 3964 0198 0028     		cmp	r0, #0
 3965 019a 00F03B81 		beq	.L780
 3966              	.L711:
 3967 019e 0DF11F03 		add	r3, sp, #31
 3968 01a2 4246     		mov	r2, r8
 3969 01a4 5621     		movs	r1, #86
 3970 01a6 2046     		mov	r0, r4
 3971 01a8 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 3972 01ac 38B1     		cbz	r0, .L712
 3973 01ae 0C9A     		ldr	r2, [sp, #48]
 3974 01b0 0721     		movs	r1, #7
 3975 01b2 3046     		mov	r0, r6
 3976 01b4 FFF7FEFF 		bl	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm
 3977 01b8 0028     		cmp	r0, #0
 3978 01ba 00F03681 		beq	.L781
 3979              	.L712:
 3980 01be 5921     		movs	r1, #89
 3981 01c0 2046     		mov	r0, r4
 3982 01c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3983 01c6 0028     		cmp	r0, #0
 3984 01c8 40F00881 		bne	.L782
 3985              	.L714:
 3986 01cc 9DF81F30 		ldrb	r3, [sp, #31]	@ zero_extendqisi2
 3987 01d0 002B     		cmp	r3, #0
 3988 01d2 7FF431AF 		bne	.L720
 3989 01d6 7A68     		ldr	r2, [r7, #4]
 3990 01d8 7349     		ldr	r1, .L784+12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 71


 3991 01da 744C     		ldr	r4, .L784+16
 3992 01dc 744B     		ldr	r3, .L784+20
 3993 01de 3244     		add	r2, r2, r6
 3994 01e0 92F924C1 		ldrsb	ip, [r2, #292]
 3995 01e4 92F80C01 		ldrb	r0, [r2, #268]	@ zero_extendqisi2
 3996 01e8 92F83021 		ldrb	r2, [r2, #304]	@ zero_extendqisi2
 3997 01ec 0192     		str	r2, [sp, #4]
 3998 01ee BCF1000F 		cmp	ip, #0
 3999 01f2 18BF     		it	ne
 4000 01f4 0C46     		movne	r4, r1
 4001 01f6 6F49     		ldr	r1, .L784+24
 4002 01f8 0094     		str	r4, [sp]
 4003 01fa 0028     		cmp	r0, #0
 4004 01fc 08BF     		it	eq
 4005 01fe 0B46     		moveq	r3, r1
 4006 0200 3246     		mov	r2, r6
 4007 0202 6D49     		ldr	r1, .L784+28
 4008 0204 2846     		mov	r0, r5
 4009 0206 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4010 020a 4246     		mov	r2, r8
 4011 020c 3146     		mov	r1, r6
 4012 020e 7868     		ldr	r0, [r7, #4]
 4013 0210 FFF7FEFF 		bl	_ZNK8Platform19GetDriverStepTimingEjPf
 4014 0214 0028     		cmp	r0, #0
 4015 0216 00F00381 		beq	.L723
 4016 021a 0C98     		ldr	r0, [sp, #48]	@ float
 4017 021c FFF7FEFF 		bl	__aeabi_f2d
 4018 0220 8046     		mov	r8, r0
 4019 0222 0F98     		ldr	r0, [sp, #60]	@ float
 4020 0224 8946     		mov	r9, r1
 4021 0226 FFF7FEFF 		bl	__aeabi_f2d
 4022 022a CDE90401 		strd	r0, [sp, #16]
 4023 022e 0E98     		ldr	r0, [sp, #56]	@ float
 4024 0230 FFF7FEFF 		bl	__aeabi_f2d
 4025 0234 CDE90201 		strd	r0, [sp, #8]
 4026 0238 0D98     		ldr	r0, [sp, #52]	@ float
 4027 023a FFF7FEFF 		bl	__aeabi_f2d
 4028 023e 4246     		mov	r2, r8
 4029 0240 CDE90001 		strd	r0, [sp]
 4030 0244 4B46     		mov	r3, r9
 4031 0246 5D49     		ldr	r1, .L784+32
 4032 0248 2846     		mov	r0, r5
 4033 024a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 4034              	.L724:
 4035 024e 7B68     		ldr	r3, [r7, #4]
 4036 0250 D3F81C34 		ldr	r3, [r3, #1052]
 4037 0254 9E42     		cmp	r6, r3
 4038 0256 BFF4EFAE 		bcs	.L720
 4039 025a 3046     		mov	r0, r6
 4040 025c FFF7FEFF 		bl	_ZN12SmartDrivers13GetDriverModeEj
 4041 0260 FFF7FEFF 		bl	_Z19TranslateDriverModej
 4042 0264 0521     		movs	r1, #5
 4043 0266 0446     		mov	r4, r0
 4044 0268 3046     		mov	r0, r6
 4045 026a FFF7FEFF 		bl	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister
 4046 026e 0021     		movs	r1, #0
 4047 0270 0746     		mov	r7, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 72


 4048 0272 3046     		mov	r0, r6
 4049 0274 FFF7FEFF 		bl	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister
 4050 0278 0121     		movs	r1, #1
 4051 027a 8346     		mov	fp, r0
 4052 027c 3046     		mov	r0, r6
 4053 027e FFF7FEFF 		bl	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister
 4054 0282 0221     		movs	r1, #2
 4055 0284 8046     		mov	r8, r0
 4056 0286 3046     		mov	r0, r6
 4057 0288 FFF7FEFF 		bl	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister
 4058 028c 0321     		movs	r1, #3
 4059 028e 8146     		mov	r9, r0
 4060 0290 3046     		mov	r0, r6
 4061 0292 FFF7FEFF 		bl	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister
 4062 0296 0421     		movs	r1, #4
 4063 0298 8246     		mov	r10, r0
 4064 029a 3046     		mov	r0, r6
 4065 029c FFF7FEFF 		bl	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister
 4066 02a0 3B46     		mov	r3, r7
 4067 02a2 CDE903A0 		strd	r10, r0, [sp, #12]
 4068 02a6 2246     		mov	r2, r4
 4069 02a8 4549     		ldr	r1, .L784+36
 4070 02aa CDF800B0 		str	fp, [sp]
 4071 02ae CDE90189 		strd	r8, r9, [sp, #4]
 4072 02b2 2846     		mov	r0, r5
 4073 02b4 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 4074 02b8 3046     		mov	r0, r6
 4075 02ba 0921     		movs	r1, #9
 4076 02bc FFF7FEFF 		bl	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister
 4077 02c0 B0F5806F 		cmp	r0, #1024
 4078 02c4 80F0C880 		bcs	.L726
 4079 02c8 0246     		mov	r2, r0
 4080 02ca 3E49     		ldr	r1, .L784+40
 4081 02cc 2846     		mov	r0, r5
 4082 02ce FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 4083 02d2 B1E6     		b	.L720
 4084              	.L774:
 4085 02d4 3C49     		ldr	r1, .L784+44
 4086 02d6 2846     		mov	r0, r5
 4087 02d8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 4088 02dc D9E6     		b	.L694
 4089              	.L770:
 4090 02de 10AA     		add	r2, sp, #64
 4091 02e0 4FF0010C 		mov	ip, #1
 4092 02e4 0423     		movs	r3, #4
 4093 02e6 0DF13008 		add	r8, sp, #48
 4094 02ea 42F8203D 		str	r3, [r2, #-32]!
 4095 02ee 4146     		mov	r1, r8
 4096 02f0 6346     		mov	r3, ip
 4097 02f2 2046     		mov	r0, r4
 4098 02f4 8DF81FC0 		strb	ip, [sp, #31]
 4099 02f8 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 4100 02fc 089B     		ldr	r3, [sp, #32]
 4101 02fe 042B     		cmp	r3, #4
 4102 0300 35D0     		beq	.L703
 4103 0302 2846     		mov	r0, r5
 4104 0304 3149     		ldr	r1, .L784+48
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 73


 4105 0306 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4106 030a 0220     		movs	r0, #2
 4107 030c 95E6     		b	.L696
 4108              	.L775:
 4109 030e 0123     		movs	r3, #1
 4110 0310 2046     		mov	r0, r4
 4111 0312 D7F80480 		ldr	r8, [r7, #4]
 4112 0316 8DF81F30 		strb	r3, [sp, #31]
 4113 031a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4114 031e 40B2     		sxtb	r0, r0
 4115 0320 0030     		adds	r0, r0, #0
 4116 0322 B044     		add	r8, r8, r6
 4117 0324 18BF     		it	ne
 4118 0326 0120     		movne	r0, #1
 4119 0328 88F81801 		strb	r0, [r8, #280]
 4120 032c E8E6     		b	.L701
 4121              	.L776:
 4122 032e 7868     		ldr	r0, [r7, #4]
 4123 0330 8319     		adds	r3, r0, r6
 4124 0332 93F83011 		ldrb	r1, [r3, #304]	@ zero_extendqisi2
 4125 0336 0123     		movs	r3, #1
 4126 0338 8DF81F30 		strb	r3, [sp, #31]
 4127 033c FFF7FEFF 		bl	_ZN8Platform22UnregisterI2cAddrUsageEh
 4128 0340 2046     		mov	r0, r4
 4129 0342 FFF7FEFF 		bl	_ZN11GCodeBuffer18GetUIValueMaybeHexEv
 4130 0346 5FFA80F9 		uxtb	r9, r0
 4131 034a 4946     		mov	r1, r9
 4132 034c 7868     		ldr	r0, [r7, #4]
 4133 034e FFF7FEFF 		bl	_ZN8Platform20RegisterI2cAddrUsageEh
 4134 0352 0128     		cmp	r0, #1
 4135 0354 05D9     		bls	.L706
 4136 0356 0246     		mov	r2, r0
 4137 0358 4B46     		mov	r3, r9
 4138 035a 1D49     		ldr	r1, .L784+52
 4139 035c 2846     		mov	r0, r5
 4140 035e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4141              	.L706:
 4142 0362 4A46     		mov	r2, r9
 4143 0364 3146     		mov	r1, r6
 4144 0366 7868     		ldr	r0, [r7, #4]
 4145 0368 FFF7FEFF 		bl	_ZN8Platform14SetExternalI2CEjh
 4146 036c D8E6     		b	.L705
 4147              	.L703:
 4148 036e 4246     		mov	r2, r8
 4149 0370 3146     		mov	r1, r6
 4150 0372 7868     		ldr	r0, [r7, #4]
 4151 0374 FFF7FEFF 		bl	_ZN8Platform19SetDriverStepTimingEjPKf
 4152 0378 CBE6     		b	.L702
 4153              	.L777:
 4154 037a 0C98     		ldr	r0, [sp, #48]
 4155 037c FFF7FEFF 		bl	_Z19TranslateDriverModej
 4156 0380 3246     		mov	r2, r6
 4157 0382 0346     		mov	r3, r0
 4158 0384 1349     		ldr	r1, .L784+56
 4159 0386 2846     		mov	r0, r5
 4160 0388 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4161              	.L717:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 74


 4162 038c 0220     		movs	r0, #2
 4163 038e 54E6     		b	.L696
 4164              	.L778:
 4165 0390 3246     		mov	r2, r6
 4166 0392 2846     		mov	r0, r5
 4167 0394 1049     		ldr	r1, .L784+60
 4168 0396 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4169 039a F7E7     		b	.L717
 4170              	.L785:
 4171              		.align	2
 4172              	.L784:
 4173 039c 24000000 		.word	.LC77
 4174 03a0 B0000000 		.word	.LC79
 4175 03a4 BC000000 		.word	.LC80
 4176 03a8 18000000 		.word	.LC75
 4177 03ac 20000000 		.word	.LC76
 4178 03b0 00000000 		.word	.LC73
 4179 03b4 0C000000 		.word	.LC74
 4180 03b8 20020000 		.word	.LC90
 4181 03bc 64020000 		.word	.LC91
 4182 03c0 84020000 		.word	.LC93
 4183 03c4 D0020000 		.word	.LC94
 4184 03c8 58000000 		.word	.LC78
 4185 03cc C8000000 		.word	.LC81
 4186 03d0 E0000000 		.word	.LC82
 4187 03d4 2C010000 		.word	.LC83
 4188 03d8 54010000 		.word	.LC84
 4189              	.L782:
 4190 03dc 10AA     		add	r2, sp, #64
 4191 03de 4FF00309 		mov	r9, #3
 4192 03e2 2046     		mov	r0, r4
 4193 03e4 0023     		movs	r3, #0
 4194 03e6 0124     		movs	r4, #1
 4195 03e8 42F8209D 		str	r9, [r2, #-32]!
 4196 03ec 4146     		mov	r1, r8
 4197 03ee 8DF81F40 		strb	r4, [sp, #31]
 4198 03f2 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 4199 03f6 089B     		ldr	r3, [sp, #32]
 4200 03f8 023B     		subs	r3, r3, #2
 4201 03fa A342     		cmp	r3, r4
 4202 03fc 1BD9     		bls	.L783
 4203 03fe 2846     		mov	r0, r5
 4204 0400 2249     		ldr	r1, .L786
 4205 0402 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4206 0406 C1E7     		b	.L717
 4207              	.L779:
 4208 0408 3246     		mov	r2, r6
 4209 040a 2846     		mov	r0, r5
 4210 040c 2049     		ldr	r1, .L786+4
 4211 040e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4212 0412 BBE7     		b	.L717
 4213              	.L780:
 4214 0414 3246     		mov	r2, r6
 4215 0416 2846     		mov	r0, r5
 4216 0418 1E49     		ldr	r1, .L786+8
 4217 041a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4218 041e B5E7     		b	.L717
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 75


 4219              	.L723:
 4220 0420 1D49     		ldr	r1, .L786+12
 4221 0422 2846     		mov	r0, r5
 4222 0424 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 4223 0428 11E7     		b	.L724
 4224              	.L781:
 4225 042a 3246     		mov	r2, r6
 4226 042c 2846     		mov	r0, r5
 4227 042e 1B49     		ldr	r1, .L786+16
 4228 0430 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4229 0434 AAE7     		b	.L717
 4230              	.L783:
 4231 0436 0C9A     		ldr	r2, [sp, #48]
 4232 0438 0221     		movs	r1, #2
 4233 043a 3046     		mov	r0, r6
 4234 043c FFF7FEFF 		bl	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm
 4235 0440 4946     		mov	r1, r9
 4236 0442 0D9A     		ldr	r2, [sp, #52]
 4237 0444 3046     		mov	r0, r6
 4238 0446 FFF7FEFF 		bl	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm
 4239 044a 50B9     		cbnz	r0, .L716
 4240              	.L718:
 4241 044c 3246     		mov	r2, r6
 4242 044e 2846     		mov	r0, r5
 4243 0450 1349     		ldr	r1, .L786+20
 4244 0452 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4245 0456 99E7     		b	.L717
 4246              	.L726:
 4247 0458 2846     		mov	r0, r5
 4248 045a 1249     		ldr	r1, .L786+24
 4249 045c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 4250 0460 EAE5     		b	.L720
 4251              	.L716:
 4252 0462 0C9A     		ldr	r2, [sp, #48]
 4253 0464 0221     		movs	r1, #2
 4254 0466 3046     		mov	r0, r6
 4255 0468 FFF7FEFF 		bl	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm
 4256 046c 0028     		cmp	r0, #0
 4257 046e EDD0     		beq	.L718
 4258 0470 089B     		ldr	r3, [sp, #32]
 4259 0472 032B     		cmp	r3, #3
 4260 0474 7FF4AAAE 		bne	.L714
 4261 0478 0E9A     		ldr	r2, [sp, #56]
 4262 047a 0421     		movs	r1, #4
 4263 047c 3046     		mov	r0, r6
 4264 047e FFF7FEFF 		bl	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm
 4265 0482 0028     		cmp	r0, #0
 4266 0484 7FF4A2AE 		bne	.L714
 4267 0488 E0E7     		b	.L718
 4268              	.L787:
 4269 048a 00BF     		.align	2
 4270              	.L786:
 4271 048c 04020000 		.word	.LC89
 4272 0490 6C010000 		.word	.LC85
 4273 0494 88010000 		.word	.LC86
 4274 0498 7C020000 		.word	.LC92
 4275 049c A8010000 		.word	.LC87
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 76


 4276 04a0 DC010000 		.word	.LC88
 4277 04a4 DC020000 		.word	.LC95
 4278              		.size	_ZN6GCodes15ConfigureDriverER11GCodeBufferRK9StringRef, .-_ZN6GCodes15ConfigureDriverER11GCo
 4279              		.section	.rodata
 4280              		.align	2
 4281              		.set	.LANCHOR0,. + 0
 4282              	.LC0:
 4283 0000 0000A041 		.word	1101004800
 4284 0004 0000A041 		.word	1101004800
 4285              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4286              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4287              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4288              	_ZL28cpu_irq_prev_interrupt_state:
 4289 0000 00       		.space	1
 4290              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4291              		.align	2
 4292              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4293              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4294              	_ZL32cpu_irq_critical_section_counter:
 4295 0000 00000000 		.space	4
 4296              		.section	.rodata._ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4297              		.align	2
 4298              	.LC21:
 4299 0000 47726964 		.ascii	"Grid: \000"
 4299      3A2000
 4300 0007 00       		.space	1
 4301              	.LC22:
 4302 0008 47726964 		.ascii	"Grid is not defined\000"
 4302      20697320 
 4302      6E6F7420 
 4302      64656669 
 4302      6E656400 
 4303              	.LC23:
 4304 001c 73706563 		.ascii	"specify both or neither of X and Y in M577\000"
 4304      69667920 
 4304      626F7468 
 4304      206F7220 
 4304      6E656974 
 4305 0047 00       		.space	1
 4306              	.LC24:
 4307 0048 73706563 		.ascii	"specify at least radius or X,Y ranges in M577\000"
 4307      69667920 
 4307      6174206C 
 4307      65617374 
 4307      20726164 
 4308 0076 0000     		.space	2
 4309              	.LC25:
 4310 0078 4D353737 		.ascii	"M577 radius must be positive unless X and Y are spe"
 4310      20726164 
 4310      69757320 
 4310      6D757374 
 4310      20626520 
 4311 00ab 63696669 		.ascii	"cified\000"
 4311      656400
 4312 00b2 0000     		.space	2
 4313              	.LC26:
 4314 00b4 62616420 		.ascii	"bad grid definition: \000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 77


 4314      67726964 
 4314      20646566 
 4314      696E6974 
 4314      696F6E3A 
 4315              		.section	.rodata._ZN6GCodes10I2cForwardERK11GCodeBufferhPKhjRK9StringRef.str1.4,"aMS",%progbits,1
 4316              		.align	2
 4317              	.LC7:
 4318 0000 49324320 		.ascii	"I2C transmission error\000"
 4318      7472616E 
 4318      736D6973 
 4318      73696F6E 
 4318      20657272 
 4319 0017 00       		.space	1
 4320              	.LC8:
 4321 0018 53656E74 		.ascii	"Sent %d bytes to i2c addr 0x%02x\000"
 4321      20256420 
 4321      62797465 
 4321      7320746F 
 4321      20693263 
 4322              		.section	.rodata._ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4323              		.align	2
 4324              	.LC18:
 4325 0000 41786973 		.ascii	"Axis offsets:\000"
 4325      206F6666 
 4325      73657473 
 4325      3A00
 4326 000e 0000     		.space	2
 4327              	.LC19:
 4328 0010 20256325 		.ascii	" %c%.2f\000"
 4328      2E326600 
 4329              		.section	.rodata._ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4330              		.align	2
 4331              	.LC48:
 4332 0000 25483A25 		.ascii	"%H:%M:%S\000"
 4332      4D3A2553 
 4332      00
 4333 0009 000000   		.space	3
 4334              	.LC49:
 4335 000c 25592D25 		.ascii	"%Y-%m-%d\000"
 4335      6D2D2564 
 4335      00
 4336 0015 000000   		.space	3
 4337              	.LC50:
 4338 0018 496E7661 		.ascii	"Invalid date format\000"
 4338      6C696420 
 4338      64617465 
 4338      20666F72 
 4338      6D617400 
 4339              	.LC51:
 4340 002c 496E7661 		.ascii	"Invalid time format\000"
 4340      6C696420 
 4340      74696D65 
 4340      20666F72 
 4340      6D617400 
 4341              	.LC52:
 4342 0040 43757272 		.ascii	"Current date and time: %04u-%02u-%02u %02u:%02u:%02"
 4342      656E7420 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 78


 4342      64617465 
 4342      20616E64 
 4342      2074696D 
 4343 0073 7500     		.ascii	"u\000"
 4344 0075 000000   		.space	3
 4345              	.LC53:
 4346 0078 436C6F63 		.ascii	"Clock has not been set\000"
 4346      6B206861 
 4346      73206E6F 
 4346      74206265 
 4346      656E2073 
 4347              		.section	.rodata._ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4348              		.align	2
 4349              	.LC6:
 4350 0000 42616420 		.ascii	"Bad restore point number\000"
 4350      72657374 
 4350      6F726520 
 4350      706F696E 
 4350      74206E75 
 4351              		.section	.rodata._ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b.str1.4,"aMS",%progbits,1
 4352              		.align	2
 4353              	.LC27:
 4354 0000 63616E6E 		.ascii	"cannot simulate while a file is being printed\000"
 4354      6F742073 
 4354      696D756C 
 4354      61746520 
 4354      7768696C 
 4355 002e 0000     		.space	2
 4356              	.LC28:
 4357 0030 53696D75 		.ascii	"Simulating print of file %s\000"
 4357      6C617469 
 4357      6E672070 
 4357      72696E74 
 4357      206F6620 
 4358              		.section	.rodata._ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4359              		.align	2
 4360              	.LC14:
 4361 0000 53657420 		.ascii	"Set axis %d to position mode.\000"
 4361      61786973 
 4361      20256420 
 4361      746F2070 
 4361      6F736974 
 4362 001e 0000     		.space	2
 4363              	.LC15:
 4364 0020 53657420 		.ascii	"Set torque of axis %d to %.3f out of %.3f. (current"
 4364      746F7271 
 4364      7565206F 
 4364      66206178 
 4364      69732025 
 4365 0053 3A20252E 		.ascii	": %.3f A).\000"
 4365      33662041 
 4365      292E00
 4366              		.section	.rodata._ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4367              		.align	2
 4368              	.LC41:
 4369 0000 58595A55 		.ascii	"XYZUVWABCD\000"
 4369      56574142 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 79


 4369      434400
 4370 000b 00       		.space	1
 4371              	.LC42:
 4372 000c 496E7661 		.ascii	"Invalid number of visible axes\000"
 4372      6C696420 
 4372      6E756D62 
 4372      6572206F 
 4372      66207669 
 4373 002b 00       		.space	1
 4374              	.LC43:
 4375 002c 44726976 		.ascii	"Driver assignments:\000"
 4375      65722061 
 4375      73736967 
 4375      6E6D656E 
 4375      74733A00 
 4376              	.LC44:
 4377 0040 25632575 		.ascii	"%c%u\000"
 4377      00
 4378 0045 000000   		.space	3
 4379              	.LC45:
 4380 0048 2C202575 		.ascii	", %u axes visible\000"
 4380      20617865 
 4380      73207669 
 4380      7369626C 
 4380      6500
 4381              		.section	.rodata._ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4382              		.align	2
 4383              	.LC16:
 4384 0000 61786973 		.ascii	"axis: %d, ODrive axis map {%d, %d}, \000"
 4384      3A202564 
 4384      2C204F44 
 4384      72697665 
 4384      20617869 
 4385 0025 000000   		.space	3
 4386              	.LC17:
 4387 0028 53657420 		.ascii	"Set odrv.encoderPosReference[%d] to %.3f and counts"
 4387      6F647276 
 4387      2E656E63 
 4387      6F646572 
 4387      506F7352 
 4388 005b 50657252 		.ascii	"PerRev[%d] to %.3f\012\000"
 4388      65765B25 
 4388      645D2074 
 4388      6F20252E 
 4388      33660A00 
 4389              		.section	.rodata._ZN6GCodes14SetHeaterModelER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4390              		.align	2
 4391              	.LC58:
 4392 0000 50494400 		.ascii	"PID\000"
 4393              	.LC59:
 4394 0004 62616E67 		.ascii	"bang-bang\000"
 4394      2D62616E 
 4394      6700
 4395 000e 0000     		.space	2
 4396              	.LC60:
 4397 0010 63757374 		.ascii	"custom PID\000"
 4397      6F6D2050 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 80


 4397      494400
 4398 001b 00       		.space	1
 4399              	.LC61:
 4400 001c 74656D70 		.ascii	"temperature control\000"
 4400      65726174 
 4400      75726520 
 4400      636F6E74 
 4400      726F6C00 
 4401              	.LC62:
 4402 0030 50574D20 		.ascii	"PWM signal\000"
 4402      7369676E 
 4402      616C00
 4403 003b 00       		.space	1
 4404              	.LC63:
 4405 003c 50574D20 		.ascii	"PWM signal and temperature control\000"
 4405      7369676E 
 4405      616C2061 
 4405      6E642074 
 4405      656D7065 
 4406 005f 00       		.space	1
 4407              	.LC64:
 4408 0060 62616420 		.ascii	"bad model parameters\000"
 4408      6D6F6465 
 4408      6C207061 
 4408      72616D65 
 4408      74657273 
 4409 0075 000000   		.space	3
 4410              	.LC65:
 4411 0078 48656174 		.ascii	"Heater %u is disabled\000"
 4411      65722025 
 4411      75206973 
 4411      20646973 
 4411      61626C65 
 4412 008e 0000     		.space	2
 4413              	.LC66:
 4414 0090 48656174 		.ascii	"Heater %u model: gain %.1f, time constant %.1f, dea"
 4414      65722025 
 4414      75206D6F 
 4414      64656C3A 
 4414      20676169 
 4415 00c3 64207469 		.ascii	"d time %.1f, max PWM %.2f, calibration voltage %.1f"
 4415      6D652025 
 4415      2E31662C 
 4415      206D6178 
 4415      2050574D 
 4416 00f6 2C206D6F 		.ascii	", mode %s, inverted %s, frequency \000"
 4416      64652025 
 4416      732C2069 
 4416      6E766572 
 4416      74656420 
 4417 0119 000000   		.space	3
 4418              	.LC67:
 4419 011c 64656661 		.ascii	"default\000"
 4419      756C7400 
 4420              	.LC68:
 4421 0124 2575487A 		.ascii	"%uHz\000"
 4421      00
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 81


 4422 0129 000000   		.space	3
 4423              	.LC69:
 4424 012c 0A436F6D 		.ascii	"\012Computed PID parameters for setpoint change: P%"
 4424      70757465 
 4424      64205049 
 4424      44207061 
 4424      72616D65 
 4425 015c 2E31662C 		.ascii	".1f, I%.3f, D%.1f\000"
 4425      2049252E 
 4425      33662C20 
 4425      44252E31 
 4425      6600
 4426 016e 0000     		.space	2
 4427              	.LC70:
 4428 0170 0A436F6D 		.ascii	"\012Computed PID parameters for load change: P%.1f,"
 4428      70757465 
 4428      64205049 
 4428      44207061 
 4428      72616D65 
 4429 01a0 2049252E 		.ascii	" I%.3f, D%.1f\000"
 4429      33662C20 
 4429      44252E31 
 4429      6600
 4430              		.section	.rodata._ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4431              		.align	2
 4432              	.LC1:
 4433 0000 496E7661 		.ascii	"Invalid Z probe type\000"
 4433      6C696420 
 4433      5A207072 
 4433      6F626520 
 4433      74797065 
 4434 0015 000000   		.space	3
 4435              	.LC2:
 4436 0018 54687265 		.ascii	"Threshold %li, trigger height %.2f, offsets X%.1f Y"
 4436      73686F6C 
 4436      6420256C 
 4436      692C2074 
 4436      72696767 
 4437 004b 252E3166 		.ascii	"%.1f\000"
 4437      00
 4438              	.LC3:
 4439 0050 25642028 		.ascii	"%d (%d)\000"
 4439      25642900 
 4440              	.LC4:
 4441 0058 25642028 		.ascii	"%d (%d, %d)\000"
 4441      25642C20 
 4441      25642900 
 4442              	.LC5:
 4443 0064 256400   		.ascii	"%d\000"
 4444              		.section	.rodata._ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4445              		.align	2
 4446              	.LC54:
 4447 0000 496E7661 		.ascii	"Invalid module number '%lu'\012\000"
 4447      6C696420 
 4447      6D6F6475 
 4447      6C65206E 
 4447      756D6265 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 82


 4448              		.section	.rodata._ZN6GCodes15ConfigureDriverER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4449              		.align	2
 4450              	.LC73:
 4451 0000 666F7277 		.ascii	"forwards\000"
 4451      61726473 
 4451      00
 4452 0009 000000   		.space	3
 4453              	.LC74:
 4454 000c 696E2072 		.ascii	"in reverse\000"
 4454      65766572 
 4454      736500
 4455 0017 00       		.space	1
 4456              	.LC75:
 4457 0018 68696768 		.ascii	"high\000"
 4457      00
 4458 001d 000000   		.space	3
 4459              	.LC76:
 4460 0020 6C6F7700 		.ascii	"low\000"
 4461              	.LC77:
 4462 0024 436F6E6E 		.ascii	"Connecting ODrive %u to serial %u at %lu baud...\000"
 4462      65637469 
 4462      6E67204F 
 4462      44726976 
 4462      65202575 
 4463 0055 000000   		.space	3
 4464              	.LC78:
 4465 0058 53657474 		.ascii	"Setting baud of serial %u is not yet implemented. H"
 4465      696E6720 
 4465      62617564 
 4465      206F6620 
 4465      73657269 
 4466 008b 61726420 		.ascii	"ard coded value 115200 will be used.\000"
 4466      636F6465 
 4466      64207661 
 4466      6C756520 
 4466      31313532 
 4467              	.LC79:
 4468 00b0 53756363 		.ascii	"Success.\000"
 4468      6573732E 
 4468      00
 4469 00b9 000000   		.space	3
 4470              	.LC80:
 4471 00bc 4661696C 		.ascii	"Failure.\000"
 4471      7572652E 
 4471      00
 4472 00c5 000000   		.space	3
 4473              	.LC81:
 4474 00c8 62616420 		.ascii	"bad timing parameter\000"
 4474      74696D69 
 4474      6E672070 
 4474      6172616D 
 4474      65746572 
 4475 00dd 000000   		.space	3
 4476              	.LC82:
 4477 00e0 5761726E 		.ascii	"Warning, there are now %d registered recipiens on t"
 4477      696E672C 
 4477      20746865 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 83


 4477      72652061 
 4477      7265206E 
 4478 0113 68652069 		.ascii	"he i2c address 0x%02x\000"
 4478      32632061 
 4478      64647265 
 4478      73732030 
 4478      78253032 
 4479 0129 000000   		.space	3
 4480              	.LC83:
 4481 012c 44726976 		.ascii	"Driver %u does not support mode '%s'\000"
 4481      65722025 
 4481      7520646F 
 4481      6573206E 
 4481      6F742073 
 4482 0151 000000   		.space	3
 4483              	.LC84:
 4484 0154 42616420 		.ascii	"Bad ccr for driver %u\000"
 4484      63637220 
 4484      666F7220 
 4484      64726976 
 4484      65722025 
 4485 016a 0000     		.space	2
 4486              	.LC85:
 4487 016c 42616420 		.ascii	"Bad off time for driver %u\000"
 4487      6F666620 
 4487      74696D65 
 4487      20666F72 
 4487      20647269 
 4488 0187 00       		.space	1
 4489              	.LC86:
 4490 0188 42616420 		.ascii	"Bad blanking time for driver %u\000"
 4490      626C616E 
 4490      6B696E67 
 4490      2074696D 
 4490      6520666F 
 4491              	.LC87:
 4492 01a8 42616420 		.ascii	"Bad mode change microstep interval for driver %u\000"
 4492      6D6F6465 
 4492      20636861 
 4492      6E676520 
 4492      6D696372 
 4493 01d9 000000   		.space	3
 4494              	.LC88:
 4495 01dc 42616420 		.ascii	"Bad hysteresis setting for driver %u\000"
 4495      68797374 
 4495      65726573 
 4495      69732073 
 4495      65747469 
 4496 0201 000000   		.space	3
 4497              	.LC89:
 4498 0204 45787065 		.ascii	"Expected 2 or 3 H values\000"
 4498      63746564 
 4498      2032206F 
 4498      72203320 
 4498      48207661 
 4499 021d 000000   		.space	3
 4500              	.LC90:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 84


 4501 0220 44726976 		.ascii	"Drive %u runs %s, active %s enable, i2c value 0x%02"
 4501      65202575 
 4501      2072756E 
 4501      73202573 
 4501      2C206163 
 4502 0253 782C2073 		.ascii	"x, step timing \000"
 4502      74657020 
 4502      74696D69 
 4502      6E672000 
 4503 0263 00       		.space	1
 4504              	.LC91:
 4505 0264 252E3166 		.ascii	"%.1f:%.1f:%.1f:%.1fus\000"
 4505      3A252E31 
 4505      663A252E 
 4505      31663A25 
 4505      2E316675 
 4506 027a 0000     		.space	2
 4507              	.LC92:
 4508 027c 66617374 		.ascii	"fast\000"
 4508      00
 4509 0281 000000   		.space	3
 4510              	.LC93:
 4511 0284 2C206D6F 		.ascii	", mode %s, ccr 0x%05lx, toff %lu, tblank %lu, hstar"
 4511      64652025 
 4511      732C2063 
 4511      63722030 
 4511      78253035 
 4512 02b7 742F6865 		.ascii	"t/hend/hdec %lu/%lu/%lu\000"
 4512      6E642F68 
 4512      64656320 
 4512      256C752F 
 4512      256C752F 
 4513 02cf 00       		.space	1
 4514              	.LC94:
 4515 02d0 2C20706F 		.ascii	", pos %lu\000"
 4515      7320256C 
 4515      7500
 4516 02da 0000     		.space	2
 4517              	.LC95:
 4518 02dc 2C20706F 		.ascii	", pos unknown\000"
 4518      7320756E 
 4518      6B6E6F77 
 4518      6E00
 4519              		.section	.rodata._ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4520              		.align	2
 4521              	.LC29:
 4522 0000 79657300 		.ascii	"yes\000"
 4523              	.LC30:
 4524 0004 6E6F00   		.ascii	"no\000"
 4525 0007 00       		.space	1
 4526              	.LC31:
 4527 0008 73757370 		.ascii	"suspended\000"
 4527      656E6465 
 4527      6400
 4528 0012 0000     		.space	2
 4529              	.LC32:
 4530 0014 6E6F726D 		.ascii	"normal\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 85


 4530      616C00
 4531 001b 00       		.space	1
 4532              	.LC33:
 4533 001c 5A205072 		.ascii	"Z Probe type %u, input %u, invert %s, dive height %"
 4533      6F626520 
 4533      74797065 
 4533      2025752C 
 4533      20696E70 
 4534 004f 2E31666D 		.ascii	".1fmm, probe speed %dmm/min, travel speed %dmm/min,"
 4534      6D2C2070 
 4534      726F6265 
 4534      20737065 
 4534      65642025 
 4535 0082 20726563 		.ascii	" recovery time %.2f sec, heaters %s, max taps %u, m"
 4535      6F766572 
 4535      79207469 
 4535      6D652025 
 4535      2E326620 
 4536 00b5 61782064 		.ascii	"ax diff %.2f\000"
 4536      69666620 
 4536      252E3266 
 4536      00
 4537              		.section	.rodata._ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi.str1.4,"aMS",%pro
 4538              		.align	2
 4539              	.LC34:
 4540 0000 42616420 		.ascii	"Bad S parameter in M581 command\012\000"
 4540      53207061 
 4540      72616D65 
 4540      74657220 
 4540      696E204D 
 4541 0021 000000   		.space	3
 4542              	.LC35:
 4543 0024 54726967 		.ascii	"Trigger %u fires on a rising edge on \000"
 4543      67657220 
 4543      25752066 
 4543      69726573 
 4543      206F6E20 
 4544 004a 0000     		.space	2
 4545              	.LC36:
 4546 004c 206F7220 		.ascii	" or a falling edge on \000"
 4546      61206661 
 4546      6C6C696E 
 4546      67206564 
 4546      6765206F 
 4547 0063 00       		.space	1
 4548              	.LC37:
 4549 0064 20656E64 		.ascii	" endstop inputs\000"
 4549      73746F70 
 4549      20696E70 
 4549      75747300 
 4550              	.LC38:
 4551 0074 20776865 		.ascii	" when printing from SD card\000"
 4551      6E207072 
 4551      696E7469 
 4551      6E672066 
 4551      726F6D20 
 4552              	.LC39:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 86


 4553 0090 54726967 		.ascii	"Trigger number out of range\000"
 4553      67657220 
 4553      6E756D62 
 4553      6572206F 
 4553      7574206F 
 4554              	.LC40:
 4555 00ac 4D697373 		.ascii	"Missing T parameter\000"
 4555      696E6720 
 4555      54207061 
 4555      72616D65 
 4555      74657200 
 4556              		.section	.rodata._ZN6GCodes23GetEncoderPositionsUARTERK9StringRef.str1.4,"aMS",%progbits,1
 4557              		.align	2
 4558              	.LC9:
 4559 0000 5B00     		.ascii	"[\000"
 4560 0002 0000     		.space	2
 4561              	.LC10:
 4562 0004 252E3266 		.ascii	"%.2f, \000"
 4562      2C2000
 4563 000b 00       		.space	1
 4564              	.LC11:
 4565 000c 205D2C0A 		.ascii	" ],\012\000"
 4565      00
 4566              		.section	.rodata._ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb.str1.4,"aMS",%
 4567              		.align	2
 4568              	.LC20:
 4569 0000 4F726967 		.ascii	"Origin of workplace %lu:\000"
 4569      696E206F 
 4569      6620776F 
 4569      726B706C 
 4569      61636520 
 4570              		.section	.rodata._ZN6GCodes28ConnectODriveToSerialChannelEjjmRK9StringRef.str1.4,"aMS",%progbits,1
 4571              		.align	2
 4572              	.LC71:
 4573 0000 4F447269 		.ascii	"ODrive number %u doesn't exist.\000"
 4573      7665206E 
 4573      756D6265 
 4573      72202575 
 4573      20646F65 
 4574              	.LC72:
 4575 0020 4368616E 		.ascii	"Channel %u is not available.\000"
 4575      6E656C20 
 4575      25752069 
 4575      73206E6F 
 4575      74206176 
 4576              		.section	.rodata._ZN6GCodes31GetAxisPositionsFromEncodersI2CERK9StringRef.str1.4,"aMS",%progbits,1
 4577              		.align	2
 4578              	.LC12:
 4579 0000 252E3266 		.ascii	"%.2f\000"
 4579      00
 4580 0005 000000   		.space	3
 4581              	.LC13:
 4582 0008 2C2000   		.ascii	", \000"
 4583              		.section	.rodata._ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4584              		.align	2
 4585              	.LC55:
 4586 0000 52656365 		.ascii	"Received\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmaoGs7.s 			page 87


 4586      69766564 
 4586      00
 4587 0009 000000   		.space	3
 4588              	.LC56:
 4589 000c 206E6F74 		.ascii	" nothing\000"
 4589      68696E67 
 4589      00
 4590 0015 000000   		.space	3
 4591              	.LC57:
 4592 0018 20253032 		.ascii	" %02x\000"
 4592      7800
 4593              		.section	.rodata._ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 4594              		.align	2
 4595              	.LC46:
 4596 0000 4E6F2074 		.ascii	"No tool selected!\000"
 4596      6F6F6C20 
 4596      73656C65 
 4596      63746564 
 4596      2100
 4597 0012 0000     		.space	2
 4598              	.LC47:
 4599 0014 496E7661 		.ascii	"Invalid endstop number\000"
 4599      6C696420 
 4599      656E6473 
 4599      746F7020 
 4599      6E756D62 
 4600              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
