ARM GAS  /tmp/ccEXGxHv.s 			page 1


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
  14              		.section	.text._ZNK10Kinematics16AxesAssumedHomedEm,"axG",%progbits,_ZNK10Kinematics16AxesAssumedH
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZNK10Kinematics16AxesAssumedHomedEm
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK10Kinematics16AxesAssumedHomedEm, %function
  23              	_ZNK10Kinematics16AxesAssumedHomedEm:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0846     		mov	r0, r1
  28 0002 7047     		bx	lr
  29              		.size	_ZNK10Kinematics16AxesAssumedHomedEm, .-_ZNK10Kinematics16AxesAssumedHomedEm
  30              		.global	__aeabi_f2d
  31              		.section	.text._ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef, %function
  40              	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef:
  41              		@ args = 0, pretend = 0, frame = 64
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  44 0004 0E46     		mov	r6, r1
  45 0006 96B0     		sub	sp, sp, #88
  46 0008 0746     		mov	r7, r0
  47 000a 5421     		movs	r1, #84
  48 000c 3046     		mov	r0, r6
  49 000e 9246     		mov	r10, r2
  50 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  51 0014 8146     		mov	r9, r0
  52 0016 0028     		cmp	r0, #0
  53 0018 6BD1     		bne	.L22
  54 001a 3868     		ldr	r0, [r7]
  55 001c 90F89480 		ldrb	r8, [r0, #148]	@ zero_extendqisi2
  56              	.L7:
  57 0020 4146     		mov	r1, r8
ARM GAS  /tmp/ccEXGxHv.s 			page 2


  58 0022 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
  59 0026 0546     		mov	r5, r0
  60 0028 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  61 002a 0AAC     		add	r4, sp, #40
  62 002c 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  63 002e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  64 0030 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  65 0032 95E80F00 		ldm	r5, {r0, r1, r2, r3}
  66 0036 16AD     		add	r5, sp, #88
  67 0038 4FF0000C 		mov	ip, #0
  68 003c 05F839CD 		strb	ip, [r5, #-57]!
  69 0040 84E80F00 		stm	r4, {r0, r1, r2, r3}
  70 0044 2B46     		mov	r3, r5
  71 0046 0BAA     		add	r2, sp, #44
  72 0048 97F85A14 		ldrb	r1, [r7, #1114]	@ zero_extendqisi2
  73 004c 3046     		mov	r0, r6
  74 004e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
  75 0052 2B46     		mov	r3, r5
  76 0054 0CAA     		add	r2, sp, #48
  77 0056 97F85B14 		ldrb	r1, [r7, #1115]	@ zero_extendqisi2
  78 005a 3046     		mov	r0, r6
  79 005c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
  80 0060 2B46     		mov	r3, r5
  81 0062 0DAA     		add	r2, sp, #52
  82 0064 97F85C14 		ldrb	r1, [r7, #1116]	@ zero_extendqisi2
  83 0068 3046     		mov	r0, r6
  84 006a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
  85 006e 5021     		movs	r1, #80
  86 0070 3046     		mov	r0, r6
  87 0072 2B46     		mov	r3, r5
  88 0074 0AAA     		add	r2, sp, #40
  89 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
  90 007a 4321     		movs	r1, #67
  91 007c 3046     		mov	r0, r6
  92 007e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  93 0082 0028     		cmp	r0, #0
  94 0084 4ED1     		bne	.L23
  95              	.L8:
  96 0086 9DF81F30 		ldrb	r3, [sp, #31]	@ zero_extendqisi2
  97 008a 002B     		cmp	r3, #0
  98 008c 3BD1     		bne	.L24
  99 008e B9F1000F 		cmp	r9, #0
 100 0092 15D1     		bne	.L25
 101 0094 3868     		ldr	r0, [r7]
 102 0096 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 103 009a 09AA     		add	r2, sp, #36
 104 009c 0446     		mov	r4, r0
 105 009e 08A9     		add	r1, sp, #32
 106 00a0 3868     		ldr	r0, [r7]
 107 00a2 FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 108 00a6 0128     		cmp	r0, #1
 109 00a8 5ED0     		beq	.L13
 110 00aa 0228     		cmp	r0, #2
 111 00ac 53D0     		beq	.L14
 112 00ae 2246     		mov	r2, r4
 113 00b0 5046     		mov	r0, r10
 114 00b2 3449     		ldr	r1, .L27
ARM GAS  /tmp/ccEXGxHv.s 			page 3


 115 00b4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 116              	.L15:
 117 00b8 0120     		movs	r0, #1
 118 00ba 16B0     		add	sp, sp, #88
 119              		@ sp needed
 120 00bc BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 121              	.L25:
 122 00c0 0C98     		ldr	r0, [sp, #48]	@ float
 123 00c2 0A9C     		ldr	r4, [sp, #40]
 124 00c4 FFF7FEFF 		bl	__aeabi_f2d
 125 00c8 CDE90401 		strd	r0, [sp, #16]
 126 00cc 0B98     		ldr	r0, [sp, #44]	@ float
 127 00ce FFF7FEFF 		bl	__aeabi_f2d
 128 00d2 CDE90201 		strd	r0, [sp, #8]
 129 00d6 0D98     		ldr	r0, [sp, #52]	@ float
 130 00d8 FFF7FEFF 		bl	__aeabi_f2d
 131 00dc 2246     		mov	r2, r4
 132 00de CDE90001 		strd	r0, [sp]
 133 00e2 5046     		mov	r0, r10
 134 00e4 2849     		ldr	r1, .L27+4
 135 00e6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 136 00ea 0120     		movs	r0, #1
 137              	.L6:
 138 00ec 16B0     		add	sp, sp, #88
 139              		@ sp needed
 140 00ee BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 141              	.L22:
 142 00f2 3046     		mov	r0, r6
 143 00f4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 144 00f8 431E     		subs	r3, r0, #1
 145 00fa 092B     		cmp	r3, #9
 146 00fc 3BD8     		bhi	.L26
 147 00fe 5FFA80F8 		uxtb	r8, r0
 148 0102 3868     		ldr	r0, [r7]
 149 0104 8CE7     		b	.L7
 150              	.L24:
 151 0106 3146     		mov	r1, r6
 152 0108 3846     		mov	r0, r7
 153 010a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 154 010e 0028     		cmp	r0, #0
 155 0110 ECD0     		beq	.L6
 156 0112 3868     		ldr	r0, [r7]
 157 0114 0AAA     		add	r2, sp, #40
 158 0116 4146     		mov	r1, r8
 159 0118 FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe
 160 011c 0120     		movs	r0, #1
 161 011e 16B0     		add	sp, sp, #88
 162              		@ sp needed
 163 0120 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 164              	.L23:
 165 0124 3046     		mov	r0, r6
 166 0126 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 167 012a 0123     		movs	r3, #1
 168 012c 5321     		movs	r1, #83
 169 012e 3046     		mov	r0, r6
 170 0130 8DED0F0A 		vstr.32	s0, [sp, #60]
 171 0134 8DF81F30 		strb	r3, [sp, #31]
ARM GAS  /tmp/ccEXGxHv.s 			page 4


 172 0138 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 173 013c 28B1     		cbz	r0, .L9
 174 013e 3046     		mov	r0, r6
 175 0140 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 176 0144 8DED0E0A 		vstr.32	s0, [sp, #56]
 177 0148 9DE7     		b	.L8
 178              	.L9:
 179 014a 3868     		ldr	r0, [r7]
 180 014c FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 181 0150 8DED0E0A 		vstr.32	s0, [sp, #56]
 182 0154 97E7     		b	.L8
 183              	.L14:
 184 0156 DDE90832 		ldrd	r3, r2, [sp, #32]
 185 015a 5046     		mov	r0, r10
 186 015c 0092     		str	r2, [sp]
 187 015e 0B49     		ldr	r1, .L27+8
 188 0160 2246     		mov	r2, r4
 189 0162 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 190 0166 A7E7     		b	.L15
 191              	.L13:
 192 0168 2246     		mov	r2, r4
 193 016a 5046     		mov	r0, r10
 194 016c 089B     		ldr	r3, [sp, #32]
 195 016e 0849     		ldr	r1, .L27+12
 196 0170 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 197 0174 A0E7     		b	.L15
 198              	.L26:
 199 0176 5046     		mov	r0, r10
 200 0178 0649     		ldr	r1, .L27+16
 201 017a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 202 017e 0220     		movs	r0, #2
 203 0180 B4E7     		b	.L6
 204              	.L28:
 205 0182 00BF     		.align	2
 206              	.L27:
 207 0184 64000000 		.word	.LC5
 208 0188 18000000 		.word	.LC2
 209 018c 58000000 		.word	.LC4
 210 0190 50000000 		.word	.LC3
 211 0194 00000000 		.word	.LC1
 212              		.size	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef, .-_ZN6GCodes14SetPrintZProbeER11GCode
 213              		.section	.text._ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef,"ax",%progbits
 214              		.align	1
 215              		.p2align 2,,3
 216              		.global	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef
 217              		.syntax unified
 218              		.thumb
 219              		.thumb_func
 220              		.fpu fpv4-sp-d16
 221              		.type	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef, %function
 222              	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef:
 223              		@ args = 0, pretend = 0, frame = 0
 224              		@ frame_needed = 0, uses_anonymous_args = 0
 225 0000 70B5     		push	{r4, r5, r6, lr}
 226 0002 0C46     		mov	r4, r1
 227 0004 0546     		mov	r5, r0
 228 0006 5321     		movs	r1, #83
ARM GAS  /tmp/ccEXGxHv.s 			page 5


 229 0008 2046     		mov	r0, r4
 230 000a 1646     		mov	r6, r2
 231 000c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 232 0010 80B1     		cbz	r0, .L33
 233 0012 2046     		mov	r0, r4
 234 0014 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 235 0018 0228     		cmp	r0, #2
 236 001a 0ED8     		bhi	.L31
 237 001c C0EB0010 		rsb	r0, r0, r0, lsl #4
 238 0020 8100     		lsls	r1, r0, #2
 239 0022 01F5EE71 		add	r1, r1, #476
 240              	.L30:
 241 0026 2846     		mov	r0, r5
 242 0028 2246     		mov	r2, r4
 243 002a 2944     		add	r1, r1, r5
 244 002c FFF7FEFF 		bl	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer
 245 0030 0120     		movs	r0, #1
 246 0032 70BD     		pop	{r4, r5, r6, pc}
 247              	.L33:
 248 0034 4FF4EE71 		mov	r1, #476
 249 0038 F5E7     		b	.L30
 250              	.L31:
 251 003a 3046     		mov	r0, r6
 252 003c 0249     		ldr	r1, .L35
 253 003e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 254 0042 0220     		movs	r0, #2
 255 0044 70BD     		pop	{r4, r5, r6, pc}
 256              	.L36:
 257 0046 00BF     		.align	2
 258              	.L35:
 259 0048 00000000 		.word	.LC6
 260              		.size	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef, .-_ZN6GCodes12SavePositionER11GCodeBuff
 261              		.section	.text._ZN6GCodes12SetPositionsER11GCodeBuffer,"ax",%progbits
 262              		.align	1
 263              		.p2align 2,,3
 264              		.global	_ZN6GCodes12SetPositionsER11GCodeBuffer
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu fpv4-sp-d16
 269              		.type	_ZN6GCodes12SetPositionsER11GCodeBuffer, %function
 270              	_ZN6GCodes12SetPositionsER11GCodeBuffer:
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 274 0004 2DED028B 		vpush.64	{d8}
 275 0008 D0F89C32 		ldr	r3, [r0, #668]
 276 000c 83B0     		sub	sp, sp, #12
 277 000e 0546     		mov	r5, r0
 278 0010 0F46     		mov	r7, r1
 279 0012 002B     		cmp	r3, #0
 280 0014 00F08480 		beq	.L38
 281 0018 4FF00008 		mov	r8, #0
 282 001c 4446     		mov	r4, r8
 283 001e 00F25946 		addw	r6, r0, #1113
 284 0022 4FF00109 		mov	r9, #1
 285 0026 04E0     		b	.L43
ARM GAS  /tmp/ccEXGxHv.s 			page 6


 286              	.L39:
 287 0028 D5F89C32 		ldr	r3, [r5, #668]
 288 002c 0134     		adds	r4, r4, #1
 289 002e A342     		cmp	r3, r4
 290 0030 1FD9     		bls	.L65
 291              	.L43:
 292 0032 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 293 0036 3846     		mov	r0, r7
 294 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 295 003c 0028     		cmp	r0, #0
 296 003e F3D0     		beq	.L39
 297 0040 3846     		mov	r0, r7
 298 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 299 0046 B0EE408A 		vmov.f32	s16, s0
 300 004a B8F1000F 		cmp	r8, #0
 301 004e 1ED0     		beq	.L40
 302              	.L41:
 303 0050 D5EDBD7A 		vldr.32	s15, [r5, #756]
 304 0054 27EE880A 		vmul.f32	s0, s15, s16
 305 0058 05EB8402 		add	r2, r5, r4, lsl #2
 306 005c 09FA04F3 		lsl	r3, r9, r4
 307 0060 82ED2D0A 		vstr.32	s0, [r2, #180]
 308 0064 48EA0308 		orr	r8, r8, r3
 309 0068 D5F89C32 		ldr	r3, [r5, #668]
 310 006c 0134     		adds	r4, r4, #1
 311 006e A342     		cmp	r3, r4
 312 0070 DFD8     		bhi	.L43
 313              	.L65:
 314 0072 4521     		movs	r1, #69
 315 0074 3846     		mov	r0, r7
 316 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 317 007a 80B9     		cbnz	r0, .L66
 318 007c B8F1000F 		cmp	r8, #0
 319 0080 19D1     		bne	.L45
 320              	.L64:
 321 0082 0120     		movs	r0, #1
 322              	.L62:
 323 0084 03B0     		add	sp, sp, #12
 324              		@ sp needed
 325 0086 BDEC028B 		vldm	sp!, {d8}
 326 008a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 327              	.L40:
 328 008e 3946     		mov	r1, r7
 329 0090 2846     		mov	r0, r5
 330 0092 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 331 0096 0028     		cmp	r0, #0
 332 0098 DAD1     		bne	.L41
 333 009a 4046     		mov	r0, r8
 334 009c F2E7     		b	.L62
 335              	.L66:
 336 009e 3846     		mov	r0, r7
 337 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 338 00a4 D5EDBD7A 		vldr.32	s15, [r5, #756]
 339 00a8 27EE800A 		vmul.f32	s0, s15, s0
 340 00ac 85EDB20A 		vstr.32	s0, [r5, #712]
 341 00b0 B8F1000F 		cmp	r8, #0
 342 00b4 E5D0     		beq	.L64
ARM GAS  /tmp/ccEXGxHv.s 			page 7


 343              	.L45:
 344 00b6 05F1DC04 		add	r4, r5, #220
 345 00ba 05F1B407 		add	r7, r5, #180
 346 00be 224E     		ldr	r6, .L69
 347 00c0 3946     		mov	r1, r7
 348 00c2 2246     		mov	r2, r4
 349 00c4 0023     		movs	r3, #0
 350 00c6 2846     		mov	r0, r5
 351 00c8 FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 352 00cc B368     		ldr	r3, [r6, #8]	@ unaligned
 353 00ce D5F89C22 		ldr	r2, [r5, #668]
 354 00d2 D3F8580A 		ldr	r0, [r3, #2648]
 355 00d6 0023     		movs	r3, #0
 356 00d8 0168     		ldr	r1, [r0]
 357 00da 0093     		str	r3, [sp]
 358 00dc 0123     		movs	r3, #1
 359 00de 9340     		lsls	r3, r3, r2
 360 00e0 D1F82890 		ldr	r9, [r1, #40]
 361 00e4 013B     		subs	r3, r3, #1
 362 00e6 2146     		mov	r1, r4
 363 00e8 C847     		blx	r9
 364 00ea 98B9     		cbnz	r0, .L67
 365              	.L46:
 366 00ec 0122     		movs	r2, #1
 367 00ee B068     		ldr	r0, [r6, #8]
 368 00f0 2146     		mov	r1, r4
 369 00f2 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 370 00f6 B368     		ldr	r3, [r6, #8]
 371 00f8 144A     		ldr	r2, .L69+4
 372 00fa D3F8580A 		ldr	r0, [r3, #2648]
 373 00fe 0368     		ldr	r3, [r0]
 374 0100 5B6D     		ldr	r3, [r3, #84]
 375 0102 9342     		cmp	r3, r2
 376 0104 1CD1     		bne	.L68
 377              	.L47:
 378 0106 D5F87434 		ldr	r3, [r5, #1140]
 379 010a 43EA0803 		orr	r3, r3, r8
 380 010e C5F87434 		str	r3, [r5, #1140]
 381 0112 B6E7     		b	.L64
 382              	.L67:
 383 0114 3A46     		mov	r2, r7
 384 0116 2146     		mov	r1, r4
 385 0118 2846     		mov	r0, r5
 386 011a FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 387 011e E5E7     		b	.L46
 388              	.L38:
 389 0120 4521     		movs	r1, #69
 390 0122 3846     		mov	r0, r7
 391 0124 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 392 0128 0028     		cmp	r0, #0
 393 012a AAD0     		beq	.L64
 394 012c 3846     		mov	r0, r7
 395 012e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 396 0132 D5EDBD7A 		vldr.32	s15, [r5, #756]
 397 0136 67EE807A 		vmul.f32	s15, s15, s0
 398 013a C5EDB27A 		vstr.32	s15, [r5, #712]
 399 013e A0E7     		b	.L64
ARM GAS  /tmp/ccEXGxHv.s 			page 8


 400              	.L68:
 401 0140 4146     		mov	r1, r8
 402 0142 9847     		blx	r3
 403 0144 8046     		mov	r8, r0
 404 0146 DEE7     		b	.L47
 405              	.L70:
 406              		.align	2
 407              	.L69:
 408 0148 00000000 		.word	reprap
 409 014c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 410              		.size	_ZN6GCodes12SetPositionsER11GCodeBuffer, .-_ZN6GCodes12SetPositionsER11GCodeBuffer
 411              		.section	.text._ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef,"ax",%progbits
 412              		.align	1
 413              		.p2align 2,,3
 414              		.global	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu fpv4-sp-d16
 419              		.type	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef, %function
 420              	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef:
 421              		@ args = 0, pretend = 0, frame = 8
 422              		@ frame_needed = 0, uses_anonymous_args = 0
 423 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 424 0004 85B0     		sub	sp, sp, #20
 425 0006 D0F89C32 		ldr	r3, [r0, #668]
 426 000a 0392     		str	r2, [sp, #12]
 427 000c 0446     		mov	r4, r0
 428 000e 63B3     		cbz	r3, .L77
 429 0010 0023     		movs	r3, #0
 430 0012 0F46     		mov	r7, r1
 431 0014 00F25945 		addw	r5, r0, #1113
 432 0018 00F54076 		add	r6, r0, #768
 433 001c 0293     		str	r3, [sp, #8]
 434 001e 09E0     		b	.L76
 435              	.L75:
 436 0020 A5F58B65 		sub	r5, r5, #1112
 437 0024 D4F89C22 		ldr	r2, [r4, #668]
 438 0028 2B1B     		subs	r3, r5, r4
 439 002a 9A42     		cmp	r2, r3
 440 002c 06F10406 		add	r6, r6, #4
 441 0030 5546     		mov	r5, r10
 442 0032 14D9     		bls	.L89
 443              	.L76:
 444 0034 6978     		ldrb	r1, [r5, #1]	@ zero_extendqisi2
 445 0036 3846     		mov	r0, r7
 446 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 447 003c 05F1010A 		add	r10, r5, #1
 448 0040 8346     		mov	fp, r0
 449 0042 0028     		cmp	r0, #0
 450 0044 ECD0     		beq	.L75
 451 0046 3846     		mov	r0, r7
 452 0048 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 453 004c D4EDBD7A 		vldr.32	s15, [r4, #756]
 454 0050 CDF808B0 		str	fp, [sp, #8]
 455 0054 27EEC00A 		vnmul.f32	s0, s15, s0
 456 0058 86ED000A 		vstr.32	s0, [r6]
ARM GAS  /tmp/ccEXGxHv.s 			page 9


 457 005c E0E7     		b	.L75
 458              	.L89:
 459 005e 029B     		ldr	r3, [sp, #8]
 460 0060 1BB1     		cbz	r3, .L77
 461              	.L73:
 462 0062 0120     		movs	r0, #1
 463 0064 05B0     		add	sp, sp, #20
 464              		@ sp needed
 465 0066 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 466              	.L77:
 467 006a 1849     		ldr	r1, .L90
 468 006c 0398     		ldr	r0, [sp, #12]
 469 006e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 470 0072 D4F89C32 		ldr	r3, [r4, #668]
 471 0076 002B     		cmp	r3, #0
 472 0078 F3D0     		beq	.L73
 473 007a 154E     		ldr	r6, .L90+4
 474 007c 04F25945 		addw	r5, r4, #1113
 475 0080 04F54077 		add	r7, r4, #768
 476              	.L78:
 477 0084 B7EC017A 		vldmia.32	r7!, {s14}
 478 0088 D4EDBD7A 		vldr.32	s15, [r4, #756]
 479 008c 95F801A0 		ldrb	r10, [r5, #1]	@ zero_extendqisi2
 480 0090 C7EE277A 		vdiv.f32	s15, s14, s15
 481 0094 17EE900A 		vmov	r0, s15
 482 0098 FFF7FEFF 		bl	__aeabi_f2d
 483 009c 8046     		mov	r8, r0
 484 009e 01F10049 		add	r9, r1, #-2147483648
 485 00a2 5246     		mov	r2, r10
 486 00a4 CDE90089 		strd	r8, [sp]
 487 00a8 3146     		mov	r1, r6
 488 00aa 0398     		ldr	r0, [sp, #12]
 489 00ac FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 490 00b0 A5F58B63 		sub	r3, r5, #1112
 491 00b4 D4F89C22 		ldr	r2, [r4, #668]
 492 00b8 1B1B     		subs	r3, r3, r4
 493 00ba 9A42     		cmp	r2, r3
 494 00bc 05F10105 		add	r5, r5, #1
 495 00c0 E0D8     		bhi	.L78
 496 00c2 0120     		movs	r0, #1
 497 00c4 05B0     		add	sp, sp, #20
 498              		@ sp needed
 499 00c6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 500              	.L91:
 501 00ca 00BF     		.align	2
 502              	.L90:
 503 00cc 00000000 		.word	.LC7
 504 00d0 10000000 		.word	.LC8
 505              		.size	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef, .-_ZN6GCodes10OffsetAxesER11GCodeBufferRK
 506              		.section	.text._ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb,"ax",%progbits
 507              		.align	1
 508              		.p2align 2,,3
 509              		.global	_ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb
 510              		.syntax unified
 511              		.thumb
 512              		.thumb_func
 513              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccEXGxHv.s 			page 10


 514              		.type	_ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb, %function
 515              	_ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb:
 516              		@ args = 0, pretend = 0, frame = 16
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 519 0004 2DED028B 		vpush.64	{d8}
 520 0008 0F46     		mov	r7, r1
 521 000a 87B0     		sub	sp, sp, #28
 522 000c 0446     		mov	r4, r0
 523 000e 5021     		movs	r1, #80
 524 0010 3846     		mov	r0, r7
 525 0012 9346     		mov	fp, r2
 526 0014 9A46     		mov	r10, r3
 527 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 528 001a 0028     		cmp	r0, #0
 529 001c 64D0     		beq	.L93
 530 001e 3846     		mov	r0, r7
 531 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 532 0024 421E     		subs	r2, r0, #1
 533 0026 082A     		cmp	r2, #8
 534 0028 0390     		str	r0, [sp, #12]
 535 002a 0492     		str	r2, [sp, #16]
 536 002c 5CD8     		bhi	.L93
 537 002e D4F89C32 		ldr	r3, [r4, #668]
 538 0032 002B     		cmp	r3, #0
 539 0034 66D0     		beq	.L94
 540 0036 02EBC205 		add	r5, r2, r2, lsl #3
 541 003a 4FF00009 		mov	r9, #0
 542 003e 04EB8505 		add	r5, r4, r5, lsl #2
 543 0042 04F25946 		addw	r6, r4, #1113
 544 0046 CDF814B0 		str	fp, [sp, #20]
 545 004a D046     		mov	r8, r10
 546 004c A346     		mov	fp, r4
 547 004e 4C46     		mov	r4, r9
 548 0050 07E0     		b	.L101
 549              	.L95:
 550 0052 DBF89C22 		ldr	r2, [fp, #668]
 551 0056 09F10109 		add	r9, r9, #1
 552 005a 4A45     		cmp	r2, r9
 553 005c 05F10405 		add	r5, r5, #4
 554 0060 2ED9     		bls	.L119
 555              	.L101:
 556 0062 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 557 0066 3846     		mov	r0, r7
 558 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 559 006c 8246     		mov	r10, r0
 560 006e 0028     		cmp	r0, #0
 561 0070 EFD0     		beq	.L95
 562 0072 3846     		mov	r0, r7
 563 0074 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 564 0078 9BEDBD8A 		vldr.32	s16, [fp, #756]
 565 007c 20EE088A 		vmul.f32	s16, s0, s16
 566 0080 C4B3     		cbz	r4, .L96
 567              	.L99:
 568 0082 0BEB8901 		add	r1, fp, r9, lsl #2
 569 0086 B8F1000F 		cmp	r8, #0
 570 008a 0ED0     		beq	.L98
ARM GAS  /tmp/ccEXGxHv.s 			page 11


 571 008c DBF8FC22 		ldr	r2, [fp, #764]
 572 0090 91ED2D0A 		vldr.32	s0, [r1, #180]
 573 0094 02EBC202 		add	r2, r2, r2, lsl #3
 574 0098 4A44     		add	r2, r2, r9
 575 009a 0BEB8202 		add	r2, fp, r2, lsl #2
 576 009e D2EDC07A 		vldr.32	s15, [r2, #768]
 577 00a2 30EE488A 		vsub.f32	s16, s0, s16
 578 00a6 38EE278A 		vadd.f32	s16, s16, s15
 579              	.L98:
 580 00aa 85EDC08A 		vstr.32	s16, [r5, #768]
 581 00ae DBF89C22 		ldr	r2, [fp, #668]
 582 00b2 09F10109 		add	r9, r9, #1
 583 00b6 4A45     		cmp	r2, r9
 584 00b8 5446     		mov	r4, r10
 585 00ba 05F10405 		add	r5, r5, #4
 586 00be D0D8     		bhi	.L101
 587              	.L119:
 588 00c0 A046     		mov	r8, r4
 589 00c2 5C46     		mov	r4, fp
 590 00c4 DDF814B0 		ldr	fp, [sp, #20]
 591 00c8 B8F1000F 		cmp	r8, #0
 592 00cc 1AD0     		beq	.L94
 593 00ce 2046     		mov	r0, r4
 594 00d0 04F1B402 		add	r2, r4, #180
 595 00d4 04F1DC01 		add	r1, r4, #220
 596 00d8 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 597 00dc 0120     		movs	r0, #1
 598 00de 07B0     		add	sp, sp, #28
 599              		@ sp needed
 600 00e0 BDEC028B 		vldm	sp!, {d8}
 601 00e4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 602              	.L93:
 603 00e8 0620     		movs	r0, #6
 604              	.L100:
 605 00ea 07B0     		add	sp, sp, #28
 606              		@ sp needed
 607 00ec BDEC028B 		vldm	sp!, {d8}
 608 00f0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 609              	.L96:
 610 00f4 3946     		mov	r1, r7
 611 00f6 5846     		mov	r0, fp
 612 00f8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 613 00fc 0028     		cmp	r0, #0
 614 00fe C0D1     		bne	.L99
 615 0100 2046     		mov	r0, r4
 616 0102 F2E7     		b	.L100
 617              	.L94:
 618 0104 039A     		ldr	r2, [sp, #12]
 619 0106 1949     		ldr	r1, .L120
 620 0108 5846     		mov	r0, fp
 621 010a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 622 010e D4F89C32 		ldr	r3, [r4, #668]
 623 0112 2BB3     		cbz	r3, .L103
 624 0114 049B     		ldr	r3, [sp, #16]
 625 0116 164F     		ldr	r7, .L120+4
 626 0118 03EBC306 		add	r6, r3, r3, lsl #3
 627 011c 04EB8606 		add	r6, r4, r6, lsl #2
ARM GAS  /tmp/ccEXGxHv.s 			page 12


 628 0120 06F54076 		add	r6, r6, #768
 629 0124 04F25945 		addw	r5, r4, #1113
 630              	.L104:
 631 0128 B6EC017A 		vldmia.32	r6!, {s14}
 632 012c D4EDBD7A 		vldr.32	s15, [r4, #756]
 633 0130 95F80180 		ldrb	r8, [r5, #1]	@ zero_extendqisi2
 634 0134 C7EE277A 		vdiv.f32	s15, s14, s15
 635 0138 17EE900A 		vmov	r0, s15
 636 013c FFF7FEFF 		bl	__aeabi_f2d
 637 0140 4246     		mov	r2, r8
 638 0142 CDE90001 		strd	r0, [sp]
 639 0146 3946     		mov	r1, r7
 640 0148 5846     		mov	r0, fp
 641 014a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 642 014e A5F58B63 		sub	r3, r5, #1112
 643 0152 D4F89C22 		ldr	r2, [r4, #668]
 644 0156 1B1B     		subs	r3, r3, r4
 645 0158 9A42     		cmp	r2, r3
 646 015a 05F10105 		add	r5, r5, #1
 647 015e E3D8     		bhi	.L104
 648              	.L103:
 649 0160 0120     		movs	r0, #1
 650 0162 07B0     		add	sp, sp, #28
 651              		@ sp needed
 652 0164 BDEC028B 		vldm	sp!, {d8}
 653 0168 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 654              	.L121:
 655              		.align	2
 656              	.L120:
 657 016c 00000000 		.word	.LC9
 658 0170 10000000 		.word	.LC8
 659              		.size	_ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb, .-_ZN6GCodes26GetSetWork
 660              		.section	.text._ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef,"ax",%progbits
 661              		.align	1
 662              		.p2align 2,,3
 663              		.global	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef
 664              		.syntax unified
 665              		.thumb
 666              		.thumb_func
 667              		.fpu fpv4-sp-d16
 668              		.type	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef, %function
 669              	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef:
 670              		@ args = 0, pretend = 0, frame = 32
 671              		@ frame_needed = 0, uses_anonymous_args = 0
 672 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 673 0004 2DED068B 		vpush.64	{d8, d9, d10}
 674 0008 0D46     		mov	r5, r1
 675 000a 8CB0     		sub	sp, sp, #48
 676 000c 0746     		mov	r7, r0
 677 000e 5021     		movs	r1, #80
 678 0010 2846     		mov	r0, r5
 679 0012 1646     		mov	r6, r2
 680 0014 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 681 0018 0028     		cmp	r0, #0
 682 001a 40F08E80 		bne	.L145
 683 001e 0446     		mov	r4, r0
 684 0020 2946     		mov	r1, r5
ARM GAS  /tmp/ccEXGxHv.s 			page 13


 685 0022 3846     		mov	r0, r7
 686 0024 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 687 0028 20B9     		cbnz	r0, .L146
 688              	.L141:
 689 002a 0CB0     		add	sp, sp, #48
 690              		@ sp needed
 691 002c BDEC068B 		vldm	sp!, {d8-d10}
 692 0030 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 693              	.L146:
 694 0034 754B     		ldr	r3, .L148
 695 0036 0294     		str	r4, [sp, #8]
 696 0038 93E80300 		ldm	r3, {r0, r1}
 697 003c 04AA     		add	r2, sp, #16
 698 003e 0DF12808 		add	r8, sp, #40
 699 0042 0096     		str	r6, [sp]
 700 0044 06AB     		add	r3, sp, #24
 701 0046 88E80300 		stm	r8, {r0, r1}
 702 004a 0192     		str	r2, [sp, #4]
 703 004c 5821     		movs	r1, #88
 704 004e 0222     		movs	r2, #2
 705 0050 2846     		mov	r0, r5
 706 0052 8DF81040 		strb	r4, [sp, #16]
 707 0056 8DF81140 		strb	r4, [sp, #17]
 708 005a 8DF81240 		strb	r4, [sp, #18]
 709 005e 8DF81340 		strb	r4, [sp, #19]
 710 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 711 0066 0028     		cmp	r0, #0
 712 0068 61D1     		bne	.L144
 713 006a 0DF11102 		add	r2, sp, #17
 714 006e 0290     		str	r0, [sp, #8]
 715 0070 0192     		str	r2, [sp, #4]
 716 0072 0096     		str	r6, [sp]
 717 0074 08AB     		add	r3, sp, #32
 718 0076 0222     		movs	r2, #2
 719 0078 5921     		movs	r1, #89
 720 007a 2846     		mov	r0, r5
 721 007c FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 722 0080 0028     		cmp	r0, #0
 723 0082 54D1     		bne	.L144
 724 0084 0122     		movs	r2, #1
 725 0086 0DF11303 		add	r3, sp, #19
 726 008a CDE90132 		strd	r3, r2, [sp, #4]
 727 008e 0096     		str	r6, [sp]
 728 0090 4346     		mov	r3, r8
 729 0092 0222     		movs	r2, #2
 730 0094 5321     		movs	r1, #83
 731 0096 2846     		mov	r0, r5
 732 0098 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 733 009c 0028     		cmp	r0, #0
 734 009e 46D1     		bne	.L144
 735 00a0 0DF11203 		add	r3, sp, #18
 736 00a4 2846     		mov	r0, r5
 737 00a6 5A4C     		ldr	r4, .L148+4
 738 00a8 0594     		str	r4, [sp, #20]	@ float
 739 00aa 05AA     		add	r2, sp, #20
 740 00ac 5221     		movs	r1, #82
 741 00ae FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
ARM GAS  /tmp/ccEXGxHv.s 			page 14


 742 00b2 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 743 00b6 002B     		cmp	r3, #0
 744 00b8 49D1     		bne	.L127
 745 00ba 9DF81130 		ldrb	r3, [sp, #17]	@ zero_extendqisi2
 746 00be 002B     		cmp	r3, #0
 747 00c0 40F08480 		bne	.L128
 748 00c4 9DF81230 		ldrb	r3, [sp, #18]	@ zero_extendqisi2
 749 00c8 002B     		cmp	r3, #0
 750 00ca 53D1     		bne	.L129
 751 00cc 9DF81330 		ldrb	r3, [sp, #19]	@ zero_extendqisi2
 752 00d0 002B     		cmp	r3, #0
 753 00d2 40F08880 		bne	.L130
 754 00d6 97F82035 		ldrb	r3, [r7, #1312]	@ zero_extendqisi2
 755 00da 002B     		cmp	r3, #0
 756 00dc 00F08F80 		beq	.L131
 757 00e0 4C49     		ldr	r1, .L148+8
 758 00e2 3046     		mov	r0, r6
 759 00e4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 760 00e8 07F2F440 		addw	r0, r7, #1268
 761 00ec 3146     		mov	r1, r6
 762 00ee FFF7FEFF 		bl	_ZNK14GridDefinition15PrintParametersERK9StringRef
 763 00f2 0120     		movs	r0, #1
 764 00f4 99E7     		b	.L141
 765              	.L147:
 766 00f6 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 767 00fa 002B     		cmp	r3, #0
 768 00fc 6CD0     		beq	.L135
 769 00fe DDED078A 		vldr.32	s17, [sp, #28]
 770 0102 9DED067A 		vldr.32	s14, [sp, #24]
 771 0106 9DED098A 		vldr.32	s16, [sp, #36]
 772 010a DDED087A 		vldr.32	s15, [sp, #32]
 773 010e 78EEC78A 		vsub.f32	s17, s17, s14
 774 0112 38EE678A 		vsub.f32	s16, s16, s15
 775              	.L136:
 776 0116 4049     		ldr	r1, .L148+12
 777 0118 3046     		mov	r0, r6
 778 011a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 779 011e 3146     		mov	r1, r6
 780 0120 F0EE480A 		vmov.f32	s1, s16
 781 0124 B0EE680A 		vmov.f32	s0, s17
 782 0128 3846     		mov	r0, r7
 783 012a FFF7FEFF 		bl	_ZNK14GridDefinition10PrintErrorEffRK9StringRef
 784              	.L144:
 785 012e 0220     		movs	r0, #2
 786 0130 0CB0     		add	sp, sp, #48
 787              		@ sp needed
 788 0132 BDEC068B 		vldm	sp!, {d8-d10}
 789 0136 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 790              	.L145:
 791 013a 3046     		mov	r0, r6
 792 013c 3749     		ldr	r1, .L148+16
 793 013e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 794 0142 0220     		movs	r0, #2
 795 0144 0CB0     		add	sp, sp, #48
 796              		@ sp needed
 797 0146 BDEC068B 		vldm	sp!, {d8-d10}
 798 014a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  /tmp/ccEXGxHv.s 			page 15


 799              	.L127:
 800 014e 9DF81130 		ldrb	r3, [sp, #17]	@ zero_extendqisi2
 801 0152 DBB3     		cbz	r3, .L128
 802 0154 DDED059A 		vldr.32	s19, [sp, #20]
 803              	.L134:
 804 0158 07F2F447 		addw	r7, r7, #1268
 805 015c 4346     		mov	r3, r8
 806 015e B0EE690A 		vmov.f32	s0, s19
 807 0162 08AA     		add	r2, sp, #32
 808 0164 06A9     		add	r1, sp, #24
 809 0166 3846     		mov	r0, r7
 810 0168 FFF7FEFF 		bl	_ZN14GridDefinition3SetEPKfS1_fS1_
 811 016c 0028     		cmp	r0, #0
 812 016e C2D0     		beq	.L147
 813 0170 0120     		movs	r0, #1
 814 0172 5AE7     		b	.L141
 815              	.L129:
 816 0174 DDED059A 		vldr.32	s19, [sp, #20]
 817 0178 F5EEC09A 		vcmpe.f32	s19, #0
 818 017c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 819 0180 37DD     		ble	.L142
 820 0182 9FED279A 		vldr.32	s18, .L148+20
 821 0186 DDED0A8A 		vldr.32	s17, [sp, #40]
 822 018a 39EEC9AA 		vsub.f32	s20, s19, s18
 823 018e 8AEE280A 		vdiv.f32	s0, s20, s17
 824 0192 FFF7FEFF 		bl	floorf
 825 0196 68EE807A 		vmul.f32	s15, s17, s0
 826 019a 9DED0B8A 		vldr.32	s16, [sp, #44]
 827 019e 37EE897A 		vadd.f32	s14, s15, s18
 828 01a2 8AEE080A 		vdiv.f32	s0, s20, s16
 829 01a6 F1EE677A 		vneg.f32	s15, s15
 830 01aa 8DED077A 		vstr.32	s14, [sp, #28]
 831 01ae CDED067A 		vstr.32	s15, [sp, #24]
 832 01b2 FFF7FEFF 		bl	floorf
 833 01b6 28EE000A 		vmul.f32	s0, s16, s0
 834 01ba 30EE099A 		vadd.f32	s18, s0, s18
 835 01be B1EE400A 		vneg.f32	s0, s0
 836 01c2 8DED099A 		vstr.32	s18, [sp, #36]
 837 01c6 8DED080A 		vstr.32	s0, [sp, #32]
 838 01ca C5E7     		b	.L134
 839              	.L128:
 840 01cc 3046     		mov	r0, r6
 841 01ce 1549     		ldr	r1, .L148+24
 842 01d0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 843 01d4 0220     		movs	r0, #2
 844 01d6 28E7     		b	.L141
 845              	.L135:
 846 01d8 9DED058A 		vldr.32	s16, [sp, #20]
 847 01dc 38EE088A 		vadd.f32	s16, s16, s16
 848 01e0 F0EE488A 		vmov.f32	s17, s16
 849 01e4 97E7     		b	.L136
 850              	.L130:
 851 01e6 3046     		mov	r0, r6
 852 01e8 0F49     		ldr	r1, .L148+28
 853 01ea FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 854 01ee 0220     		movs	r0, #2
 855 01f0 1BE7     		b	.L141
ARM GAS  /tmp/ccEXGxHv.s 			page 16


 856              	.L142:
 857 01f2 3046     		mov	r0, r6
 858 01f4 0D49     		ldr	r1, .L148+32
 859 01f6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 860 01fa 0220     		movs	r0, #2
 861 01fc 15E7     		b	.L141
 862              	.L131:
 863 01fe 3046     		mov	r0, r6
 864 0200 0B49     		ldr	r1, .L148+36
 865 0202 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 866 0206 0120     		movs	r0, #1
 867 0208 0FE7     		b	.L141
 868              	.L149:
 869 020a 00BF     		.align	2
 870              	.L148:
 871 020c 00000000 		.word	.LANCHOR0
 872 0210 000080BF 		.word	-1082130432
 873 0214 4C000000 		.word	.LC11
 874 0218 00010000 		.word	.LC16
 875 021c 00000000 		.word	.LC10
 876 0220 CDCCCC3D 		.word	1036831949
 877 0224 68000000 		.word	.LC13
 878 0228 94000000 		.word	.LC14
 879 022c C4000000 		.word	.LC15
 880 0230 54000000 		.word	.LC12
 881              		.size	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef, .-_ZN6GCodes10DefineGridER11GCodeBufferRK
 882              		.section	.text._ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b,"ax",%progbits
 883              		.align	1
 884              		.p2align 2,,3
 885              		.global	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b
 886              		.syntax unified
 887              		.thumb
 888              		.thumb_func
 889              		.fpu fpv4-sp-d16
 890              		.type	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b, %function
 891              	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b:
 892              		@ args = 4, pretend = 0, frame = 8
 893              		@ frame_needed = 0, uses_anonymous_args = 0
 894 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 895 0004 304E     		ldr	r6, .L158
 896 0006 F469     		ldr	r4, [r6, #28]
 897 0008 85B0     		sub	sp, sp, #20
 898 000a 247B     		ldrb	r4, [r4, #12]	@ zero_extendqisi2
 899 000c 9DF83890 		ldrb	r9, [sp, #56]	@ zero_extendqisi2
 900 0010 9046     		mov	r8, r2
 901 0012 7CBB     		cbnz	r4, .L156
 902 0014 8B46     		mov	fp, r1
 903 0016 1968     		ldr	r1, [r3]
 904 0018 1F46     		mov	r7, r3
 905 001a 0546     		mov	r5, r0
 906 001c FFF7FEFF 		bl	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 907 0020 20B3     		cbz	r0, .L154
 908 0022 95F85845 		ldrb	r4, [r5, #1368]	@ zero_extendqisi2
 909 0026 D6F808A0 		ldr	r10, [r6, #8]
 910 002a 5CB3     		cbz	r4, .L157
 911              	.L153:
 912 002c 05F25453 		addw	r3, r5, #1364
ARM GAS  /tmp/ccEXGxHv.s 			page 17


 913 0030 0124     		movs	r4, #1
 914 0032 0022     		movs	r2, #0
 915 0034 1A60     		str	r2, [r3]	@ float
 916 0036 5046     		mov	r0, r10
 917 0038 2146     		mov	r1, r4
 918 003a 85F85A95 		strb	r9, [r5, #1370]
 919 003e 85F85945 		strb	r4, [r5, #1369]
 920 0042 85F85845 		strb	r4, [r5, #1368]
 921 0046 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 922 004a F069     		ldr	r0, [r6, #28]
 923 004c 3968     		ldr	r1, [r7]
 924 004e FFF7FEFF 		bl	_ZN12PrintMonitor13StartingPrintEPKc
 925 0052 2146     		mov	r1, r4
 926 0054 2846     		mov	r0, r5
 927 0056 FFF7FEFF 		bl	_ZN6GCodes13StartPrintingEb
 928 005a 3A68     		ldr	r2, [r7]
 929 005c 1B49     		ldr	r1, .L158+4
 930 005e 4046     		mov	r0, r8
 931 0060 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 932 0064 2046     		mov	r0, r4
 933 0066 05B0     		add	sp, sp, #20
 934              		@ sp needed
 935 0068 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 936              	.L154:
 937 006c 0220     		movs	r0, #2
 938 006e 05B0     		add	sp, sp, #20
 939              		@ sp needed
 940 0070 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 941              	.L156:
 942 0074 1046     		mov	r0, r2
 943 0076 1649     		ldr	r1, .L158+8
 944 0078 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 945 007c 0220     		movs	r0, #2
 946 007e 05B0     		add	sp, sp, #20
 947              		@ sp needed
 948 0080 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 949              	.L157:
 950 0084 D5F89C22 		ldr	r2, [r5, #668]
 951 0088 D5F87434 		ldr	r3, [r5, #1140]
 952 008c C5F89C31 		str	r3, [r5, #412]
 953 0090 0123     		movs	r3, #1
 954 0092 9340     		lsls	r3, r3, r2
 955 0094 013B     		subs	r3, r3, #1
 956 0096 C5F87434 		str	r3, [r5, #1140]
 957 009a 3046     		mov	r0, r6
 958 009c FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 959 00a0 0390     		str	r0, [sp, #12]
 960 00a2 3046     		mov	r0, r6
 961 00a4 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 962 00a8 039B     		ldr	r3, [sp, #12]
 963 00aa 0090     		str	r0, [sp]
 964 00ac 2246     		mov	r2, r4
 965 00ae 5046     		mov	r0, r10
 966 00b0 05F5D071 		add	r1, r5, #416
 967 00b4 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 968 00b8 DBF80830 		ldr	r3, [fp, #8]
 969 00bc D6F808A0 		ldr	r10, [r6, #8]
ARM GAS  /tmp/ccEXGxHv.s 			page 18


 970 00c0 5B68     		ldr	r3, [r3, #4]	@ float
 971 00c2 C5F8C431 		str	r3, [r5, #452]	@ float
 972 00c6 B1E7     		b	.L153
 973              	.L159:
 974              		.align	2
 975              	.L158:
 976 00c8 00000000 		.word	reprap
 977 00cc 30000000 		.word	.LC18
 978 00d0 00000000 		.word	.LC17
 979              		.size	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b, .-_ZN6GCodes12SimulateFileER11GCode
 980              		.section	.text._ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm,"ax",%progbits
 981              		.align	1
 982              		.p2align 2,,3
 983              		.global	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm
 984              		.syntax unified
 985              		.thumb
 986              		.thumb_func
 987              		.fpu fpv4-sp-d16
 988              		.type	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm, %function
 989              	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm:
 990              		@ args = 0, pretend = 0, frame = 0
 991              		@ frame_needed = 0, uses_anonymous_args = 0
 992 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 993 0004 90F85845 		ldrb	r4, [r0, #1368]	@ zero_extendqisi2
 994 0008 9C42     		cmp	r4, r3
 995 000a 82B0     		sub	sp, sp, #8
 996 000c 22D0     		beq	.L165
 997 000e 0E46     		mov	r6, r1
 998 0010 1D46     		mov	r5, r3
 999 0012 0446     		mov	r4, r0
 1000 0014 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1001 0018 C8B1     		cbz	r0, .L161
 1002 001a FDB1     		cbz	r5, .L168
 1003 001c DFF88C80 		ldr	r8, .L170
 1004 0020 94F85895 		ldrb	r9, [r4, #1368]	@ zero_extendqisi2
 1005 0024 D8F80870 		ldr	r7, [r8, #8]
 1006 0028 B9F1000F 		cmp	r9, #0
 1007 002c 1DD0     		beq	.L169
 1008              	.L164:
 1009 002e 04F25453 		addw	r3, r4, #1364
 1010 0032 0022     		movs	r2, #0
 1011 0034 1A60     		str	r2, [r3]	@ float
 1012              	.L163:
 1013 0036 0023     		movs	r3, #0
 1014 0038 E9B2     		uxtb	r1, r5
 1015 003a 3846     		mov	r0, r7
 1016 003c 84F85815 		strb	r1, [r4, #1368]
 1017 0040 84F85A35 		strb	r3, [r4, #1370]
 1018 0044 84F85935 		strb	r3, [r4, #1369]
 1019 0048 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 1020 004c 0120     		movs	r0, #1
 1021              	.L161:
 1022 004e 02B0     		add	sp, sp, #8
 1023              		@ sp needed
 1024 0050 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1025              	.L165:
 1026 0054 0120     		movs	r0, #1
ARM GAS  /tmp/ccEXGxHv.s 			page 19


 1027 0056 02B0     		add	sp, sp, #8
 1028              		@ sp needed
 1029 0058 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1030              	.L168:
 1031 005c 3146     		mov	r1, r6
 1032 005e 2046     		mov	r0, r4
 1033 0060 FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 1034 0064 114B     		ldr	r3, .L170
 1035 0066 9F68     		ldr	r7, [r3, #8]
 1036 0068 E5E7     		b	.L163
 1037              	.L169:
 1038 006a D4F89C22 		ldr	r2, [r4, #668]
 1039 006e D4F87434 		ldr	r3, [r4, #1140]
 1040 0072 C4F89C31 		str	r3, [r4, #412]
 1041 0076 0123     		movs	r3, #1
 1042 0078 9340     		lsls	r3, r3, r2
 1043 007a 013B     		subs	r3, r3, #1
 1044 007c C4F87434 		str	r3, [r4, #1140]
 1045 0080 4046     		mov	r0, r8
 1046 0082 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 1047 0086 8246     		mov	r10, r0
 1048 0088 4046     		mov	r0, r8
 1049 008a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 1050 008e 5346     		mov	r3, r10
 1051 0090 0090     		str	r0, [sp]
 1052 0092 4A46     		mov	r2, r9
 1053 0094 3846     		mov	r0, r7
 1054 0096 04F5D071 		add	r1, r4, #416
 1055 009a FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 1056 009e B368     		ldr	r3, [r6, #8]
 1057 00a0 D8F80870 		ldr	r7, [r8, #8]
 1058 00a4 5B68     		ldr	r3, [r3, #4]	@ float
 1059 00a6 C4F8C431 		str	r3, [r4, #452]	@ float
 1060 00aa C0E7     		b	.L164
 1061              	.L171:
 1062              		.align	2
 1063              	.L170:
 1064 00ac 00000000 		.word	reprap
 1065              		.size	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm, .-_ZN6GCodes20ChangeSimulation
 1066              		.section	.text._ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef,"ax",%progbits
 1067              		.align	1
 1068              		.p2align 2,,3
 1069              		.global	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef
 1070              		.syntax unified
 1071              		.thumb
 1072              		.thumb_func
 1073              		.fpu fpv4-sp-d16
 1074              		.type	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef, %function
 1075              	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef:
 1076              		@ args = 0, pretend = 0, frame = 56
 1077              		@ frame_needed = 0, uses_anonymous_args = 0
 1078 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1079 0004 2DED028B 		vpush.64	{d8}
 1080 0008 99B0     		sub	sp, sp, #100
 1081 000a 0023     		movs	r3, #0
 1082 000c 0E46     		mov	r6, r1
 1083 000e 0746     		mov	r7, r0
ARM GAS  /tmp/ccEXGxHv.s 			page 20


 1084 0010 0846     		mov	r0, r1
 1085 0012 5021     		movs	r1, #80
 1086 0014 9146     		mov	r9, r2
 1087 0016 8DF82F30 		strb	r3, [sp, #47]
 1088 001a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1089 001e 8046     		mov	r8, r0
 1090 0020 0028     		cmp	r0, #0
 1091 0022 40F0E380 		bne	.L206
 1092              	.L173:
 1093 0026 3868     		ldr	r0, [r7]
 1094 0028 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 1095 002c FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 1096 0030 0546     		mov	r5, r0
 1097 0032 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1098 0034 0CAC     		add	r4, sp, #48
 1099 0036 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1100 0038 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1101 003a 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1102 003c 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1103 0040 84E80F00 		stm	r4, {r0, r1, r2, r3}
 1104 0044 4821     		movs	r1, #72
 1105 0046 3046     		mov	r0, r6
 1106 0048 0DF12F03 		add	r3, sp, #47
 1107 004c 12AA     		add	r2, sp, #72
 1108 004e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1109 0052 4621     		movs	r1, #70
 1110 0054 3046     		mov	r0, r6
 1111 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1112 005a 0028     		cmp	r0, #0
 1113 005c 40F0B980 		bne	.L207
 1114              	.L174:
 1115 0060 5421     		movs	r1, #84
 1116 0062 3046     		mov	r0, r6
 1117 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1118 0068 0028     		cmp	r0, #0
 1119 006a 40F0A580 		bne	.L208
 1120              	.L175:
 1121 006e 4921     		movs	r1, #73
 1122 0070 3046     		mov	r0, r6
 1123 0072 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1124 0076 0028     		cmp	r0, #0
 1125 0078 40F09280 		bne	.L209
 1126              	.L176:
 1127 007c 4221     		movs	r1, #66
 1128 007e 3046     		mov	r0, r6
 1129 0080 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1130 0084 0028     		cmp	r0, #0
 1131 0086 7DD1     		bne	.L210
 1132              	.L177:
 1133 0088 0DF12F03 		add	r3, sp, #47
 1134 008c 15AA     		add	r2, sp, #84
 1135 008e 5221     		movs	r1, #82
 1136 0090 3046     		mov	r0, r6
 1137 0092 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1138 0096 5321     		movs	r1, #83
 1139 0098 3046     		mov	r0, r6
 1140 009a 0DF12F03 		add	r3, sp, #47
ARM GAS  /tmp/ccEXGxHv.s 			page 21


 1141 009e 16AA     		add	r2, sp, #88
 1142 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1143 00a4 4121     		movs	r1, #65
 1144 00a6 3046     		mov	r0, r6
 1145 00a8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1146 00ac 58B9     		cbnz	r0, .L211
 1147 00ae 9DF82F30 		ldrb	r3, [sp, #47]	@ zero_extendqisi2
 1148 00b2 83B9     		cbnz	r3, .L179
 1149 00b4 B8F1000F 		cmp	r8, #0
 1150 00b8 1AD0     		beq	.L186
 1151              	.L199:
 1152 00ba 0120     		movs	r0, #1
 1153 00bc 19B0     		add	sp, sp, #100
 1154              		@ sp needed
 1155 00be BDEC028B 		vldm	sp!, {d8}
 1156 00c2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1157              	.L211:
 1158 00c6 3046     		mov	r0, r6
 1159 00c8 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 1160 00cc 0123     		movs	r3, #1
 1161 00ce 8DF85C00 		strb	r0, [sp, #92]
 1162 00d2 8DF82F30 		strb	r3, [sp, #47]
 1163              	.L179:
 1164 00d6 3868     		ldr	r0, [r7]
 1165 00d8 0CAA     		add	r2, sp, #48
 1166 00da 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 1167 00de FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe
 1168 00e2 B8F1000F 		cmp	r8, #0
 1169 00e6 E8D1     		bne	.L199
 1170 00e8 9DF82F30 		ldrb	r3, [sp, #47]	@ zero_extendqisi2
 1171 00ec 002B     		cmp	r3, #0
 1172 00ee E4D1     		bne	.L199
 1173              	.L186:
 1174 00f0 3A68     		ldr	r2, [r7]
 1175 00f2 9DF85D10 		ldrb	r1, [sp, #93]	@ zero_extendqisi2
 1176 00f6 444B     		ldr	r3, .L212
 1177 00f8 444D     		ldr	r5, .L212+4
 1178 00fa 1298     		ldr	r0, [sp, #72]	@ float
 1179 00fc 92F89440 		ldrb	r4, [r2, #148]	@ zero_extendqisi2
 1180 0100 0029     		cmp	r1, #0
 1181 0102 08BF     		it	eq
 1182 0104 1D46     		moveq	r5, r3
 1183 0106 FFF7FEFF 		bl	__aeabi_f2d
 1184 010a 9FED417A 		vldr.32	s14, .L212+8
 1185 010e DDED137A 		vldr.32	s15, [sp, #76]
 1186 0112 9DED148A 		vldr.32	s16, [sp, #80]
 1187 0116 67EE877A 		vmul.f32	s15, s15, s14
 1188 011a 8246     		mov	r10, r0
 1189 011c 1598     		ldr	r0, [sp, #84]	@ float
 1190 011e 28EE078A 		vmul.f32	s16, s16, s14
 1191 0122 FDEEE78A 		vcvt.s32.f32	s17, s15
 1192 0126 8B46     		mov	fp, r1
 1193 0128 FFF7FEFF 		bl	__aeabi_f2d
 1194 012c 9DF85E80 		ldrb	r8, [sp, #94]	@ zero_extendqisi2
 1195 0130 384B     		ldr	r3, .L212+12
 1196 0132 0F46     		mov	r7, r1
 1197 0134 3849     		ldr	r1, .L212+16
ARM GAS  /tmp/ccEXGxHv.s 			page 22


 1198 0136 0646     		mov	r6, r0
 1199 0138 1698     		ldr	r0, [sp, #88]	@ float
 1200 013a B8F1000F 		cmp	r8, #0
 1201 013e 14BF     		ite	ne
 1202 0140 8846     		movne	r8, r1
 1203 0142 9846     		moveq	r8, r3
 1204 0144 FFF7FEFF 		bl	__aeabi_f2d
 1205 0148 BDEEC88A 		vcvt.s32.f32	s16, s16
 1206 014c 9DF85CC0 		ldrb	ip, [sp, #92]	@ zero_extendqisi2
 1207 0150 8DED038A 		vstr.32	s16, [sp, #12]	@ int
 1208 0154 CDE90801 		strd	r0, [sp, #32]
 1209 0158 CDE900AB 		strd	r10, [sp]
 1210 015c CDED028A 		vstr.32	s17, [sp, #8]	@ int
 1211 0160 CDF81880 		str	r8, [sp, #24]
 1212 0164 2B46     		mov	r3, r5
 1213 0166 2246     		mov	r2, r4
 1214 0168 CDE90467 		strd	r6, [sp, #16]
 1215 016c 4846     		mov	r0, r9
 1216 016e CDF81CC0 		str	ip, [sp, #28]
 1217 0172 2A49     		ldr	r1, .L212+20
 1218 0174 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1219 0178 0120     		movs	r0, #1
 1220 017a 19B0     		add	sp, sp, #100
 1221              		@ sp needed
 1222 017c BDEC028B 		vldm	sp!, {d8}
 1223 0180 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1224              	.L210:
 1225 0184 3046     		mov	r0, r6
 1226 0186 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1227 018a A0F10100 		sub	r0, #1
 1228 018e B0FA80F0 		clz	r0, r0
 1229 0192 4009     		lsrs	r0, r0, #5
 1230 0194 0123     		movs	r3, #1
 1231 0196 8DF85E00 		strb	r0, [sp, #94]
 1232 019a 8DF82F30 		strb	r3, [sp, #47]
 1233 019e 73E7     		b	.L177
 1234              	.L209:
 1235 01a0 3046     		mov	r0, r6
 1236 01a2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1237 01a6 0030     		adds	r0, r0, #0
 1238 01a8 18BF     		it	ne
 1239 01aa 0120     		movne	r0, #1
 1240 01ac 0123     		movs	r3, #1
 1241 01ae 8DF85D00 		strb	r0, [sp, #93]
 1242 01b2 8DF82F30 		strb	r3, [sp, #47]
 1243 01b6 61E7     		b	.L176
 1244              	.L208:
 1245 01b8 3046     		mov	r0, r6
 1246 01ba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1247 01be DFED187A 		vldr.32	s15, .L212+24
 1248 01c2 20EE270A 		vmul.f32	s0, s0, s15
 1249 01c6 0123     		movs	r3, #1
 1250 01c8 8DED140A 		vstr.32	s0, [sp, #80]
 1251 01cc 8DF82F30 		strb	r3, [sp, #47]
 1252 01d0 4DE7     		b	.L175
 1253              	.L207:
 1254 01d2 3046     		mov	r0, r6
ARM GAS  /tmp/ccEXGxHv.s 			page 23


 1255 01d4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1256 01d8 DFED117A 		vldr.32	s15, .L212+24
 1257 01dc 20EE270A 		vmul.f32	s0, s0, s15
 1258 01e0 0123     		movs	r3, #1
 1259 01e2 8DED130A 		vstr.32	s0, [sp, #76]
 1260 01e6 8DF82F30 		strb	r3, [sp, #47]
 1261 01ea 39E7     		b	.L174
 1262              	.L206:
 1263 01ec 3046     		mov	r0, r6
 1264 01ee 3C68     		ldr	r4, [r7]
 1265 01f0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1266 01f4 0146     		mov	r1, r0
 1267 01f6 2046     		mov	r0, r4
 1268 01f8 FFF7FEFF 		bl	_ZN8Platform13SetZProbeTypeEj
 1269 01fc 6422     		movs	r2, #100
 1270 01fe 3146     		mov	r1, r6
 1271 0200 3846     		mov	r0, r7
 1272 0202 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 1273 0206 0EE7     		b	.L173
 1274              	.L213:
 1275              		.align	2
 1276              	.L212:
 1277 0208 04000000 		.word	.LC20
 1278 020c 00000000 		.word	.LC19
 1279 0210 00007042 		.word	1114636288
 1280 0214 14000000 		.word	.LC22
 1281 0218 08000000 		.word	.LC21
 1282 021c 1C000000 		.word	.LC23
 1283 0220 8988883C 		.word	1015580809
 1284              		.size	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef, .-_ZN6GCodes17SetOrReportZProbeER1
 1285              		.section	.text._ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi,"ax",%progbits
 1286              		.align	1
 1287              		.p2align 2,,3
 1288              		.global	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi
 1289              		.syntax unified
 1290              		.thumb
 1291              		.thumb_func
 1292              		.fpu fpv4-sp-d16
 1293              		.type	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi, %function
 1294              	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi:
 1295              		@ args = 0, pretend = 0, frame = 48
 1296              		@ frame_needed = 0, uses_anonymous_args = 0
 1297 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1298 0004 0C46     		mov	r4, r1
 1299 0006 8DB0     		sub	sp, sp, #52
 1300 0008 0546     		mov	r5, r0
 1301 000a 5421     		movs	r1, #84
 1302 000c 2046     		mov	r0, r4
 1303 000e 1746     		mov	r7, r2
 1304 0010 9846     		mov	r8, r3
 1305 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1306 0016 0028     		cmp	r0, #0
 1307 0018 5AD0     		beq	.L215
 1308 001a 2046     		mov	r0, r4
 1309 001c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1310 0020 0928     		cmp	r0, #9
 1311 0022 0646     		mov	r6, r0
ARM GAS  /tmp/ccEXGxHv.s 			page 24


 1312 0024 00F2A680 		bhi	.L216
 1313 0028 40F24623 		movw	r3, #582
 1314 002c 9845     		cmp	r8, r3
 1315 002e 57D0     		beq	.L258
 1316 0030 4321     		movs	r1, #67
 1317 0032 2046     		mov	r0, r4
 1318 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1319 0038 0028     		cmp	r0, #0
 1320 003a 40F0A380 		bne	.L259
 1321 003e 4FEA4609 		lsl	r9, r6, #1
 1322 0042 09EB0603 		add	r3, r9, r6
 1323 0046 9B00     		lsls	r3, r3, #2
 1324 0048 03F27452 		addw	r2, r3, #1396
 1325 004c A918     		adds	r1, r5, r2
 1326 004e AA58     		ldr	r2, [r5, r2]
 1327 0050 002A     		cmp	r2, #0
 1328 0052 5FD0     		beq	.L260
 1329              	.L224:
 1330 0054 5321     		movs	r1, #83
 1331 0056 2046     		mov	r0, r4
 1332 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1333 005c 0028     		cmp	r0, #0
 1334 005e 65D0     		beq	.L227
 1335              	.L226:
 1336 0060 2046     		mov	r0, r4
 1337 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1338 0066 D5F89832 		ldr	r3, [r5, #664]
 1339 006a 0190     		str	r0, [sp, #4]
 1340 006c 002B     		cmp	r3, #0
 1341 006e 00F0DC80 		beq	.L261
 1342 0072 4FF0000A 		mov	r10, #0
 1343 0076 D046     		mov	r8, r10
 1344 0078 05F25947 		addw	r7, r5, #1113
 1345 007c 4FF0010B 		mov	fp, #1
 1346              	.L229:
 1347 0080 17F8011F 		ldrb	r1, [r7, #1]!	@ zero_extendqisi2
 1348 0084 2046     		mov	r0, r4
 1349 0086 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1350 008a 18B1     		cbz	r0, .L228
 1351 008c 0BFA08F2 		lsl	r2, fp, r8
 1352 0090 4AEA020A 		orr	r10, r10, r2
 1353              	.L228:
 1354 0094 D5F89822 		ldr	r2, [r5, #664]
 1355 0098 08F10108 		add	r8, r8, #1
 1356 009c 4245     		cmp	r2, r8
 1357 009e EFD8     		bhi	.L229
 1358              	.L222:
 1359 00a0 4521     		movs	r1, #69
 1360 00a2 2046     		mov	r0, r4
 1361 00a4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1362 00a8 0028     		cmp	r0, #0
 1363 00aa 40F08980 		bne	.L262
 1364              	.L230:
 1365 00ae 019B     		ldr	r3, [sp, #4]
 1366 00b0 002B     		cmp	r3, #0
 1367 00b2 00F0AF80 		beq	.L235
 1368 00b6 012B     		cmp	r3, #1
ARM GAS  /tmp/ccEXGxHv.s 			page 25


 1369 00b8 00F0A180 		beq	.L236
 1370 00bc 0133     		adds	r3, r3, #1
 1371 00be 73D0     		beq	.L263
 1372 00c0 2868     		ldr	r0, [r5]
 1373 00c2 654A     		ldr	r2, .L265
 1374 00c4 40F2B511 		movw	r1, #437
 1375 00c8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1376 00cc 0120     		movs	r0, #1
 1377 00ce 04E0     		b	.L219
 1378              	.L215:
 1379 00d0 3846     		mov	r0, r7
 1380 00d2 6249     		ldr	r1, .L265+4
 1381 00d4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1382 00d8 0220     		movs	r0, #2
 1383              	.L219:
 1384 00da 0DB0     		add	sp, sp, #52
 1385              		@ sp needed
 1386 00dc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1387              	.L258:
 1388 00e0 2868     		ldr	r0, [r5]
 1389 00e2 FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 1390 00e6 06EB4603 		add	r3, r6, r6, lsl #1
 1391 00ea 05EB8303 		add	r3, r5, r3, lsl #2
 1392 00ee D3F87425 		ldr	r2, [r3, #1396]
 1393 00f2 1042     		tst	r0, r2
 1394 00f4 03D1     		bne	.L218
 1395 00f6 D3F87835 		ldr	r3, [r3, #1400]
 1396 00fa 8343     		bics	r3, r3, r0
 1397 00fc 36D0     		beq	.L257
 1398              	.L218:
 1399 00fe 0120     		movs	r0, #1
 1400 0100 D5F8F035 		ldr	r3, [r5, #1520]
 1401 0104 00FA06F6 		lsl	r6, r0, r6
 1402 0108 3343     		orrs	r3, r3, r6
 1403 010a C5F8F035 		str	r3, [r5, #1520]
 1404 010e 0DB0     		add	sp, sp, #52
 1405              		@ sp needed
 1406 0110 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1407              	.L260:
 1408 0114 4A68     		ldr	r2, [r1, #4]
 1409 0116 002A     		cmp	r2, #0
 1410 0118 9CD1     		bne	.L224
 1411 011a 2B44     		add	r3, r3, r5
 1412 011c 5321     		movs	r1, #83
 1413 011e 83F87C25 		strb	r2, [r3, #1404]
 1414 0122 2046     		mov	r0, r4
 1415 0124 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1416 0128 0028     		cmp	r0, #0
 1417 012a 99D1     		bne	.L226
 1418              	.L227:
 1419 012c 3246     		mov	r2, r6
 1420 012e 4E44     		add	r6, r6, r9
 1421 0130 05EB8606 		add	r6, r5, r6, lsl #2
 1422 0134 4A49     		ldr	r1, .L265+8
 1423 0136 3846     		mov	r0, r7
 1424 0138 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1425 013c D6F87425 		ldr	r2, [r6, #1396]
ARM GAS  /tmp/ccEXGxHv.s 			page 26


 1426 0140 3946     		mov	r1, r7
 1427 0142 2846     		mov	r0, r5
 1428 0144 FFF7FEFF 		bl	_ZN6GCodes12ListTriggersERK9StringRefm
 1429 0148 4649     		ldr	r1, .L265+12
 1430 014a 3846     		mov	r0, r7
 1431 014c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1432 0150 2846     		mov	r0, r5
 1433 0152 D6F87825 		ldr	r2, [r6, #1400]
 1434 0156 3946     		mov	r1, r7
 1435 0158 FFF7FEFF 		bl	_ZN6GCodes12ListTriggersERK9StringRefm
 1436 015c 4249     		ldr	r1, .L265+16
 1437 015e 3846     		mov	r0, r7
 1438 0160 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1439 0164 96F87C45 		ldrb	r4, [r6, #1404]	@ zero_extendqisi2
 1440 0168 012C     		cmp	r4, #1
 1441 016a 60D0     		beq	.L264
 1442              	.L257:
 1443 016c 0120     		movs	r0, #1
 1444 016e 0DB0     		add	sp, sp, #52
 1445              		@ sp needed
 1446 0170 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1447              	.L216:
 1448 0174 3846     		mov	r0, r7
 1449 0176 3D49     		ldr	r1, .L265+20
 1450 0178 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1451 017c 0220     		movs	r0, #2
 1452 017e 0DB0     		add	sp, sp, #52
 1453              		@ sp needed
 1454 0180 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1455              	.L259:
 1456 0184 2046     		mov	r0, r4
 1457 0186 4FEA4609 		lsl	r9, r6, #1
 1458 018a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1459 018e 09EB0603 		add	r3, r9, r6
 1460 0192 05EB8303 		add	r3, r5, r3, lsl #2
 1461 0196 5321     		movs	r1, #83
 1462 0198 83F87C05 		strb	r0, [r3, #1404]
 1463 019c 2046     		mov	r0, r4
 1464 019e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1465 01a2 0028     		cmp	r0, #0
 1466 01a4 E2D0     		beq	.L257
 1467 01a6 5BE7     		b	.L226
 1468              	.L263:
 1469 01a8 4E44     		add	r6, r6, r9
 1470 01aa 05EB8605 		add	r5, r5, r6, lsl #2
 1471 01ae BAF1000F 		cmp	r10, #0
 1472 01b2 42D1     		bne	.L238
 1473 01b4 0120     		movs	r0, #1
 1474 01b6 C5F878A5 		str	r10, [r5, #1400]
 1475 01ba C5F874A5 		str	r10, [r5, #1396]
 1476 01be 8CE7     		b	.L219
 1477              	.L262:
 1478 01c0 0DF13008 		add	r8, sp, #48
 1479 01c4 0923     		movs	r3, #9
 1480 01c6 48F8283D 		str	r3, [r8, #-40]!
 1481 01ca 03A9     		add	r1, sp, #12
 1482 01cc 2046     		mov	r0, r4
ARM GAS  /tmp/ccEXGxHv.s 			page 27


 1483 01ce 4246     		mov	r2, r8
 1484 01d0 0023     		movs	r3, #0
 1485 01d2 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1486 01d6 0299     		ldr	r1, [sp, #8]
 1487 01d8 0029     		cmp	r1, #0
 1488 01da 3FF468AF 		beq	.L230
 1489 01de 4246     		mov	r2, r8
 1490 01e0 08EB8101 		add	r1, r8, r1, lsl #2
 1491 01e4 0120     		movs	r0, #1
 1492              	.L233:
 1493 01e6 52F8043F 		ldr	r3, [r2, #4]!
 1494 01ea 082B     		cmp	r3, #8
 1495 01ec 04D8     		bhi	.L232
 1496 01ee 0333     		adds	r3, r3, #3
 1497 01f0 00FA03F3 		lsl	r3, r0, r3
 1498 01f4 4AEA030A 		orr	r10, r10, r3
 1499              	.L232:
 1500 01f8 9142     		cmp	r1, r2
 1501 01fa F4D1     		bne	.L233
 1502 01fc 57E7     		b	.L230
 1503              	.L236:
 1504 01fe 4E44     		add	r6, r6, r9
 1505 0200 05EB8605 		add	r5, r5, r6, lsl #2
 1506 0204 0198     		ldr	r0, [sp, #4]
 1507 0206 D5F87435 		ldr	r3, [r5, #1396]
 1508 020a 43EA0A03 		orr	r3, r3, r10
 1509 020e C5F87435 		str	r3, [r5, #1396]
 1510 0212 62E7     		b	.L219
 1511              	.L235:
 1512 0214 4E44     		add	r6, r6, r9
 1513 0216 05EB8605 		add	r5, r5, r6, lsl #2
 1514 021a 0120     		movs	r0, #1
 1515 021c D5F87835 		ldr	r3, [r5, #1400]
 1516 0220 43EA0A03 		orr	r3, r3, r10
 1517 0224 C5F87835 		str	r3, [r5, #1400]
 1518 0228 57E7     		b	.L219
 1519              	.L261:
 1520 022a 9A46     		mov	r10, r3
 1521 022c 38E7     		b	.L222
 1522              	.L264:
 1523 022e 3846     		mov	r0, r7
 1524 0230 0F49     		ldr	r1, .L265+24
 1525 0232 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1526 0236 2046     		mov	r0, r4
 1527 0238 4FE7     		b	.L219
 1528              	.L238:
 1529 023a D5F87425 		ldr	r2, [r5, #1396]
 1530 023e D5F87835 		ldr	r3, [r5, #1400]
 1531 0242 6FEA0A0A 		mvn	r10, r10
 1532 0246 02EA0A02 		and	r2, r2, r10
 1533 024a 03EA0A03 		and	r3, r3, r10
 1534 024e C5F87425 		str	r2, [r5, #1396]
 1535 0252 C5F87835 		str	r3, [r5, #1400]
 1536 0256 89E7     		b	.L257
 1537              	.L266:
 1538              		.align	2
 1539              	.L265:
ARM GAS  /tmp/ccEXGxHv.s 			page 28


 1540 0258 00000000 		.word	.LC24
 1541 025c AC000000 		.word	.LC30
 1542 0260 24000000 		.word	.LC25
 1543 0264 4C000000 		.word	.LC26
 1544 0268 64000000 		.word	.LC27
 1545 026c 90000000 		.word	.LC29
 1546 0270 74000000 		.word	.LC28
 1547              		.size	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi, .-_ZN6GCodes23CheckOrConfig
 1548              		.section	.text._ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef,"ax",%progbits
 1549              		.align	1
 1550              		.p2align 2,,3
 1551              		.global	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef
 1552              		.syntax unified
 1553              		.thumb
 1554              		.thumb_func
 1555              		.fpu fpv4-sp-d16
 1556              		.type	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef, %function
 1557              	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef:
 1558              		@ args = 0, pretend = 0, frame = 56
 1559              		@ frame_needed = 0, uses_anonymous_args = 0
 1560 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1561 0004 2DED028B 		vpush.64	{d8}
 1562 0008 8FB0     		sub	sp, sp, #60
 1563 000a 9346     		mov	fp, r2
 1564 000c 0746     		mov	r7, r0
 1565 000e 8846     		mov	r8, r1
 1566 0010 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1567 0014 0028     		cmp	r0, #0
 1568 0016 70D0     		beq	.L310
 1569 0018 B84E     		ldr	r6, .L356
 1570 001a 9FEDB98A 		vldr.32	s16, .L356+4
 1571 001e 0190     		str	r0, [sp, #4]
 1572 0020 5824     		movs	r4, #88
 1573 0022 4FF00009 		mov	r9, #0
 1574 0026 03E0     		b	.L288
 1575              	.L269:
 1576 0028 16F8014F 		ldrb	r4, [r6, #1]!	@ zero_extendqisi2
 1577 002c 002C     		cmp	r4, #0
 1578 002e 46D0     		beq	.L350
 1579              	.L288:
 1580 0030 2146     		mov	r1, r4
 1581 0032 4046     		mov	r0, r8
 1582 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1583 0038 0546     		mov	r5, r0
 1584 003a 0028     		cmp	r0, #0
 1585 003c F4D0     		beq	.L269
 1586 003e 0EAA     		add	r2, sp, #56
 1587 0040 0423     		movs	r3, #4
 1588 0042 0DF11409 		add	r9, sp, #20
 1589 0046 42F8303D 		str	r3, [r2, #-48]!
 1590 004a 4046     		mov	r0, r8
 1591 004c 4946     		mov	r1, r9
 1592 004e 0023     		movs	r3, #0
 1593 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1594 0054 0298     		ldr	r0, [sp, #8]
 1595 0056 0390     		str	r0, [sp, #12]
 1596 0058 0028     		cmp	r0, #0
ARM GAS  /tmp/ccEXGxHv.s 			page 29


 1597 005a 71D0     		beq	.L270
 1598 005c 0022     		movs	r2, #0
 1599 005e 1346     		mov	r3, r2
 1600              	.L271:
 1601 0060 59F82210 		ldr	r1, [r9, r2, lsl #2]
 1602 0064 0DF10C0A 		add	r10, sp, #12
 1603 0068 0132     		adds	r2, r2, #1
 1604 006a 0B29     		cmp	r1, #11
 1605 006c 0AEB020C 		add	ip, r10, r2
 1606 0070 3ED8     		bhi	.L272
 1607 0072 9042     		cmp	r0, r2
 1608 0074 8CF80310 		strb	r1, [ip, #3]
 1609 0078 F2D8     		bhi	.L271
 1610 007a 002B     		cmp	r3, #0
 1611 007c 40F01681 		bne	.L345
 1612 0080 D7F89812 		ldr	r1, [r7, #664]
 1613 0084 0029     		cmp	r1, #0
 1614 0086 00F02F81 		beq	.L312
 1615              	.L276:
 1616 008a 97F86434 		ldrb	r3, [r7, #1124]	@ zero_extendqisi2
 1617 008e A342     		cmp	r3, r4
 1618 0090 00F02781 		beq	.L313
 1619 0094 07F26443 		addw	r3, r7, #1124
 1620 0098 4FF00009 		mov	r9, #0
 1621 009c 03E0     		b	.L280
 1622              	.L282:
 1623 009e 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 1624 00a2 A242     		cmp	r2, r4
 1625 00a4 2ED0     		beq	.L281
 1626              	.L280:
 1627 00a6 09F10109 		add	r9, r9, #1
 1628 00aa 4945     		cmp	r1, r9
 1629 00ac F7D8     		bhi	.L282
 1630 00ae B9F1080F 		cmp	r9, #8
 1631 00b2 4BD9     		bls	.L351
 1632              	.L284:
 1633 00b4 A946     		mov	r9, r5
 1634              	.L354:
 1635 00b6 16F8014F 		ldrb	r4, [r6, #1]!	@ zero_extendqisi2
 1636 00ba 002C     		cmp	r4, #0
 1637 00bc B8D1     		bne	.L288
 1638              	.L350:
 1639 00be 4521     		movs	r1, #69
 1640 00c0 4046     		mov	r0, r8
 1641 00c2 DDF804A0 		ldr	r10, [sp, #4]
 1642 00c6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1643 00ca 0028     		cmp	r0, #0
 1644 00cc 40F0BD80 		bne	.L352
 1645 00d0 5021     		movs	r1, #80
 1646 00d2 4046     		mov	r0, r8
 1647 00d4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1648 00d8 0028     		cmp	r0, #0
 1649 00da 40F0A980 		bne	.L294
 1650 00de B9F1000F 		cmp	r9, #0
 1651 00e2 4AD0     		beq	.L353
 1652              	.L349:
 1653 00e4 0120     		movs	r0, #1
ARM GAS  /tmp/ccEXGxHv.s 			page 30


 1654 00e6 0FB0     		add	sp, sp, #60
 1655              		@ sp needed
 1656 00e8 BDEC028B 		vldm	sp!, {d8}
 1657 00ec BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1658              	.L272:
 1659 00f0 9042     		cmp	r0, r2
 1660 00f2 40F2DB80 		bls	.L345
 1661 00f6 2B46     		mov	r3, r5
 1662 00f8 B2E7     		b	.L271
 1663              	.L310:
 1664              	.L341:
 1665 00fa 0FB0     		add	sp, sp, #60
 1666              		@ sp needed
 1667 00fc BDEC028B 		vldm	sp!, {d8}
 1668 0100 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1669              	.L281:
 1670 0104 B9F1080F 		cmp	r9, #8
 1671 0108 D4D8     		bhi	.L284
 1672              	.L348:
 1673 010a 0DF10C0A 		add	r10, sp, #12
 1674              	.L279:
 1675 010e 7D4B     		ldr	r3, .L356+8
 1676 0110 0122     		movs	r2, #1
 1677 0112 9868     		ldr	r0, [r3, #8]
 1678 0114 07F1DC01 		add	r1, r7, #220
 1679 0118 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 1680 011c 5246     		mov	r2, r10
 1681 011e 4946     		mov	r1, r9
 1682 0120 3868     		ldr	r0, [r7]
 1683 0122 FFF7FEFF 		bl	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
 1684 0126 D7F89822 		ldr	r2, [r7, #664]
 1685 012a D7F8A032 		ldr	r3, [r7, #672]
 1686 012e 1344     		add	r3, r3, r2
 1687 0130 0C2B     		cmp	r3, #12
 1688 0132 84BF     		itt	hi
 1689 0134 C2F10C02 		rsbhi	r2, r2, #12
 1690 0138 C7F8A022 		strhi	r2, [r7, #672]
 1691 013c A946     		mov	r9, r5
 1692 013e BAE7     		b	.L354
 1693              	.L270:
 1694 0140 D7F89812 		ldr	r1, [r7, #664]
 1695 0144 0029     		cmp	r1, #0
 1696 0146 A0D1     		bne	.L276
 1697 0148 8946     		mov	r9, r1
 1698 014a 01E0     		b	.L275
 1699              	.L351:
 1700 014c 4945     		cmp	r1, r9
 1701 014e DCD1     		bne	.L348
 1702              	.L275:
 1703 0150 4846     		mov	r0, r9
 1704 0152 09F10102 		add	r2, r9, #1
 1705 0156 0DF10C0A 		add	r10, sp, #12
 1706 015a 8946     		mov	r9, r1
 1707 015c 0146     		mov	r1, r0
 1708              	.L278:
 1709 015e 7818     		adds	r0, r7, r1
 1710 0160 07EB8101 		add	r1, r7, r1, lsl #2
ARM GAS  /tmp/ccEXGxHv.s 			page 31


 1711 0164 80F86444 		strb	r4, [r0, #1124]
 1712 0168 81ED378A 		vstr.32	s16, [r1, #220]
 1713 016c 81ED2D8A 		vstr.32	s16, [r1, #180]
 1714 0170 C7F89822 		str	r2, [r7, #664]
 1715 0174 C7F89C22 		str	r2, [r7, #668]
 1716 0178 C9E7     		b	.L279
 1717              	.L353:
 1718 017a 6349     		ldr	r1, .L356+12
 1719 017c 5846     		mov	r0, fp
 1720 017e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1721 0182 D7F89832 		ldr	r3, [r7, #664]
 1722 0186 63B3     		cbz	r3, .L299
 1723 0188 DFF884A1 		ldr	r10, .L356+20
 1724 018c C846     		mov	r8, r9
 1725              	.L302:
 1726 018e 2021     		movs	r1, #32
 1727 0190 5846     		mov	r0, fp
 1728 0192 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1729 0196 3B68     		ldr	r3, [r7]
 1730 0198 03EBC806 		add	r6, r3, r8, lsl #3
 1731 019c D6F8F822 		ldr	r2, [r6, #760]
 1732 01a0 BAB1     		cbz	r2, .L300
 1733 01a2 5A4D     		ldr	r5, .L356+16
 1734 01a4 07EB0802 		add	r2, r7, r8
 1735 01a8 ED1A     		subs	r5, r5, r3
 1736 01aa 09F53F74 		add	r4, r9, #764
 1737 01ae 92F86424 		ldrb	r2, [r2, #1124]	@ zero_extendqisi2
 1738 01b2 A5EB0905 		sub	r5, r5, r9
 1739 01b6 1C44     		add	r4, r4, r3
 1740              	.L301:
 1741 01b8 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 1742 01bc 5146     		mov	r1, r10
 1743 01be 5846     		mov	r0, fp
 1744 01c0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1745 01c4 D6F8F812 		ldr	r1, [r6, #760]
 1746 01c8 2B19     		adds	r3, r5, r4
 1747 01ca 9942     		cmp	r1, r3
 1748 01cc 4FF03A02 		mov	r2, #58
 1749 01d0 F2D8     		bhi	.L301
 1750              	.L300:
 1751 01d2 D7F89832 		ldr	r3, [r7, #664]
 1752 01d6 08F10108 		add	r8, r8, #1
 1753 01da 4345     		cmp	r3, r8
 1754 01dc 09F10809 		add	r9, r9, #8
 1755 01e0 D5D8     		bhi	.L302
 1756              	.L299:
 1757 01e2 2021     		movs	r1, #32
 1758 01e4 5846     		mov	r0, fp
 1759 01e6 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1760 01ea D7F8A032 		ldr	r3, [r7, #672]
 1761 01ee 8BB1     		cbz	r3, .L303
 1762 01f0 474D     		ldr	r5, .L356+20
 1763 01f2 0024     		movs	r4, #0
 1764 01f4 4522     		movs	r2, #69
 1765              	.L304:
 1766 01f6 3B68     		ldr	r3, [r7]
 1767 01f8 2344     		add	r3, r3, r4
ARM GAS  /tmp/ccEXGxHv.s 			page 32


 1768 01fa 2946     		mov	r1, r5
 1769 01fc 93F84033 		ldrb	r3, [r3, #832]	@ zero_extendqisi2
 1770 0200 5846     		mov	r0, fp
 1771 0202 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1772 0206 D7F8A032 		ldr	r3, [r7, #672]
 1773 020a 0134     		adds	r4, r4, #1
 1774 020c A342     		cmp	r3, r4
 1775 020e 4FF03A02 		mov	r2, #58
 1776 0212 F0D8     		bhi	.L304
 1777              	.L303:
 1778 0214 D7F89C22 		ldr	r2, [r7, #668]
 1779 0218 3E49     		ldr	r1, .L356+24
 1780 021a 5846     		mov	r0, fp
 1781 021c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1782 0220 60E7     		b	.L349
 1783              	.L293:
 1784 0222 5021     		movs	r1, #80
 1785 0224 4046     		mov	r0, r8
 1786 0226 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1787 022a 0028     		cmp	r0, #0
 1788 022c 3FF45AAF 		beq	.L349
 1789              	.L294:
 1790 0230 4046     		mov	r0, r8
 1791 0232 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1792 0236 0228     		cmp	r0, #2
 1793 0238 59DD     		ble	.L296
 1794 023a D7F89832 		ldr	r3, [r7, #664]
 1795 023e 8342     		cmp	r3, r0
 1796 0240 55D3     		bcc	.L296
 1797 0242 C7F89C02 		str	r0, [r7, #668]
 1798 0246 0120     		movs	r0, #1
 1799 0248 57E7     		b	.L341
 1800              	.L352:
 1801 024a D7F89832 		ldr	r3, [r7, #664]
 1802 024e 0EAA     		add	r2, sp, #56
 1803 0250 C3F10C03 		rsb	r3, r3, #12
 1804 0254 42F82C3D 		str	r3, [r2, #-44]!
 1805 0258 05A9     		add	r1, sp, #20
 1806 025a 2346     		mov	r3, r4
 1807 025c 4046     		mov	r0, r8
 1808 025e FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1809 0262 039B     		ldr	r3, [sp, #12]
 1810 0264 C7F8A032 		str	r3, [r7, #672]
 1811 0268 002B     		cmp	r3, #0
 1812 026a DAD0     		beq	.L293
 1813              	.L308:
 1814 026c 04AE     		add	r6, sp, #16
 1815 026e 0025     		movs	r5, #0
 1816 0270 03E0     		b	.L291
 1817              	.L314:
 1818 0272 0135     		adds	r5, r5, #1
 1819 0274 AB42     		cmp	r3, r5
 1820 0276 5446     		mov	r4, r10
 1821 0278 0CD9     		bls	.L355
 1822              	.L291:
 1823 027a 56F8042F 		ldr	r2, [r6, #4]!
 1824 027e 0B2A     		cmp	r2, #11
ARM GAS  /tmp/ccEXGxHv.s 			page 33


 1825 0280 F7D8     		bhi	.L314
 1826 0282 2946     		mov	r1, r5
 1827 0284 D2B2     		uxtb	r2, r2
 1828 0286 3868     		ldr	r0, [r7]
 1829 0288 FFF7FEFF 		bl	_ZN8Platform17SetExtruderDriverEjh
 1830 028c 039B     		ldr	r3, [sp, #12]
 1831 028e 0135     		adds	r5, r5, #1
 1832 0290 AB42     		cmp	r3, r5
 1833 0292 F2D8     		bhi	.L291
 1834              	.L355:
 1835 0294 002C     		cmp	r4, #0
 1836 0296 C4D0     		beq	.L293
 1837              	.L287:
 1838 0298 5846     		mov	r0, fp
 1839 029a 1F49     		ldr	r1, .L356+28
 1840 029c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1841 02a0 0220     		movs	r0, #2
 1842 02a2 0FB0     		add	sp, sp, #60
 1843              		@ sp needed
 1844 02a4 BDEC028B 		vldm	sp!, {d8}
 1845 02a8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1846              	.L345:
 1847 02ac 4521     		movs	r1, #69
 1848 02ae 4046     		mov	r0, r8
 1849 02b0 DDF804A0 		ldr	r10, [sp, #4]
 1850 02b4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1851 02b8 0446     		mov	r4, r0
 1852 02ba 0028     		cmp	r0, #0
 1853 02bc ECD0     		beq	.L287
 1854 02be D7F89832 		ldr	r3, [r7, #664]
 1855 02c2 0EAA     		add	r2, sp, #56
 1856 02c4 C3F10C03 		rsb	r3, r3, #12
 1857 02c8 42F82C3D 		str	r3, [r2, #-44]!
 1858 02cc 4946     		mov	r1, r9
 1859 02ce 0023     		movs	r3, #0
 1860 02d0 4046     		mov	r0, r8
 1861 02d2 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1862 02d6 039B     		ldr	r3, [sp, #12]
 1863 02d8 C7F8A032 		str	r3, [r7, #672]
 1864 02dc 002B     		cmp	r3, #0
 1865 02de C5D1     		bne	.L308
 1866 02e0 DAE7     		b	.L287
 1867              	.L313:
 1868 02e2 4FF00009 		mov	r9, #0
 1869 02e6 10E7     		b	.L348
 1870              	.L312:
 1871 02e8 9946     		mov	r9, r3
 1872 02ea 0122     		movs	r2, #1
 1873 02ec 37E7     		b	.L278
 1874              	.L296:
 1875 02ee 5846     		mov	r0, fp
 1876 02f0 0A49     		ldr	r1, .L356+32
 1877 02f2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1878 02f6 0220     		movs	r0, #2
 1879 02f8 FFE6     		b	.L341
 1880              	.L357:
 1881 02fa 00BF     		.align	2
ARM GAS  /tmp/ccEXGxHv.s 			page 34


 1882              	.L356:
 1883 02fc 00000000 		.word	.LC31
 1884 0300 00000000 		.word	0
 1885 0304 00000000 		.word	reprap
 1886 0308 44000000 		.word	.LC34
 1887 030c 04FDFFFF 		.word	-764
 1888 0310 58000000 		.word	.LC35
 1889 0314 60000000 		.word	.LC36
 1890 0318 0C000000 		.word	.LC32
 1891 031c 24000000 		.word	.LC33
 1892              		.size	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef, .-_ZN6GCodes14DoDriveMappingER11GCode
 1893              		.section	.text._ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef,"ax",%progbits
 1894              		.align	1
 1895              		.p2align 2,,3
 1896              		.global	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef
 1897              		.syntax unified
 1898              		.thumb
 1899              		.thumb_func
 1900              		.fpu fpv4-sp-d16
 1901              		.type	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef, %function
 1902              	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef:
 1903              		@ args = 0, pretend = 0, frame = 0
 1904              		@ frame_needed = 0, uses_anonymous_args = 0
 1905 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1906 0004 2DED028B 		vpush.64	{d8}
 1907 0008 874B     		ldr	r3, .L397
 1908 000a 1B6B     		ldr	r3, [r3, #48]
 1909 000c 9146     		mov	r9, r2
 1910 000e 002B     		cmp	r3, #0
 1911 0010 00F0FA80 		beq	.L393
 1912 0014 0446     		mov	r4, r0
 1913 0016 0D46     		mov	r5, r1
 1914 0018 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1915 001c 0028     		cmp	r0, #0
 1916 001e 00F0A680 		beq	.L360
 1917 0022 D4F89832 		ldr	r3, [r4, #664]
 1918 0026 002B     		cmp	r3, #0
 1919 0028 00F0A080 		beq	.L377
 1920 002c DFED7F8A 		vldr.32	s17, .L397+4
 1921 0030 9FED7F8A 		vldr.32	s16, .L397+8
 1922 0034 04F25948 		addw	r8, r4, #1113
 1923 0038 04F1DC07 		add	r7, r4, #220
 1924 003c 0026     		movs	r6, #0
 1925 003e 07E0     		b	.L378
 1926              	.L362:
 1927 0040 D4F89832 		ldr	r3, [r4, #664]
 1928 0044 0136     		adds	r6, r6, #1
 1929 0046 B342     		cmp	r3, r6
 1930 0048 07F10407 		add	r7, r7, #4
 1931 004c 40F28E80 		bls	.L377
 1932              	.L378:
 1933 0050 18F8011F 		ldrb	r1, [r8, #1]!	@ zero_extendqisi2
 1934 0054 2846     		mov	r0, r5
 1935 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1936 005a 0028     		cmp	r0, #0
 1937 005c F0D0     		beq	.L362
 1938 005e 4521     		movs	r1, #69
ARM GAS  /tmp/ccEXGxHv.s 			page 35


 1939 0060 2846     		mov	r0, r5
 1940 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1941 0066 0028     		cmp	r0, #0
 1942 0068 00F08580 		beq	.L363
 1943 006c 2846     		mov	r0, r5
 1944 006e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1945 0072 0C28     		cmp	r0, #12
 1946 0074 00F3D180 		bgt	.L394
 1947 0078 D4F89422 		ldr	r2, [r4, #660]
 1948 007c 04F1B403 		add	r3, r4, #180
 1949 0080 04F1D401 		add	r1, r4, #212
 1950              	.L367:
 1951 0084 D3F800A0 		ldr	r10, [r3]	@ unaligned
 1952 0088 D3F804E0 		ldr	lr, [r3, #4]	@ unaligned
 1953 008c D3F808C0 		ldr	ip, [r3, #8]	@ unaligned
 1954 0090 D3F80CB0 		ldr	fp, [r3, #12]	@ unaligned
 1955 0094 C2F80CB0 		str	fp, [r2, #12]	@ unaligned
 1956 0098 1033     		adds	r3, r3, #16
 1957 009a 8B42     		cmp	r3, r1
 1958 009c C2F800A0 		str	r10, [r2]	@ unaligned
 1959 00a0 C2F804E0 		str	lr, [r2, #4]	@ unaligned
 1960 00a4 C2F808C0 		str	ip, [r2, #8]	@ unaligned
 1961 00a8 02F11002 		add	r2, r2, #16
 1962 00ac EAD1     		bne	.L367
 1963 00ae 1B68     		ldr	r3, [r3]	@ unaligned
 1964 00b0 1360     		str	r3, [r2]	@ unaligned
 1965 00b2 0028     		cmp	r0, #0
 1966 00b4 4FF00303 		mov	r3, #3
 1967 00b8 84F84E31 		strb	r3, [r4, #334]
 1968 00bc 79DB     		blt	.L366
 1969 00be 0123     		movs	r3, #1
 1970 00c0 03FA00F0 		lsl	r0, r3, r0
 1971 00c4 40F08050 		orr	r0, r0, #268435456
 1972 00c8 C4F84801 		str	r0, [r4, #328]
 1973              	.L369:
 1974 00cc 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 1975 00d0 03F0FD03 		and	r3, r3, #253
 1976 00d4 6FF38203 		bfc	r3, #2, #1
 1977 00d8 0121     		movs	r1, #1
 1978 00da 0222     		movs	r2, #2
 1979 00dc 84F84F31 		strb	r3, [r4, #335]
 1980 00e0 4FF0FF33 		mov	r3, #-1
 1981 00e4 C4F84011 		str	r1, [r4, #320]
 1982 00e8 C4F84421 		str	r2, [r4, #324]
 1983 00ec C4F83831 		str	r3, [r4, #312]
 1984 00f0 5221     		movs	r1, #82
 1985 00f2 2846     		mov	r0, r5
 1986 00f4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1987 00f8 0028     		cmp	r0, #0
 1988 00fa 5FD0     		beq	.L370
 1989 00fc 2846     		mov	r0, r5
 1990 00fe FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1991 0102 D7ED007A 		vldr.32	s15, [r7]
 1992 0106 37EE800A 		vadd.f32	s0, s15, s0
 1993 010a 87ED000A 		vstr.32	s0, [r7]
 1994              	.L371:
 1995 010e D4F89832 		ldr	r3, [r4, #664]
ARM GAS  /tmp/ccEXGxHv.s 			page 36


 1996 0112 0B2B     		cmp	r3, #11
 1997 0114 08D8     		bhi	.L374
 1998 0116 3733     		adds	r3, r3, #55
 1999 0118 04EB8303 		add	r3, r4, r3, lsl #2
 2000 011c 04F58672 		add	r2, r4, #268
 2001              	.L375:
 2002 0120 A3EC018A 		vstmia.32	r3!, {s16}
 2003 0124 9342     		cmp	r3, r2
 2004 0126 FBD1     		bne	.L375
 2005              	.L374:
 2006 0128 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 2007 012c 6FF3C303 		bfc	r3, #3, #1
 2008 0130 84F84F31 		strb	r3, [r4, #335]
 2009 0134 4621     		movs	r1, #70
 2010 0136 2846     		mov	r0, r5
 2011 0138 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2012 013c 0028     		cmp	r0, #0
 2013 013e 4AD1     		bne	.L395
 2014              	.L376:
 2015 0140 AB68     		ldr	r3, [r5, #8]
 2016 0142 5A68     		ldr	r2, [r3, #4]	@ float
 2017 0144 C4F83021 		str	r2, [r4, #304]	@ float
 2018 0148 0123     		movs	r3, #1
 2019 014a C4F85431 		str	r3, [r4, #340]
 2020              		.syntax unified
 2021              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2022 014e BFF35F8F 		dmb
 2023              	@ 0 "" 2
 2024              		.thumb
 2025              		.syntax unified
 2026 0152 C4F85031 		str	r3, [r4, #336]
 2027 0156 AB68     		ldr	r3, [r5, #8]
 2028 0158 0322     		movs	r2, #3
 2029 015a 1A75     		strb	r2, [r3, #20]
 2030 015c D4F89832 		ldr	r3, [r4, #664]
 2031 0160 0136     		adds	r6, r6, #1
 2032 0162 B342     		cmp	r3, r6
 2033 0164 07F10407 		add	r7, r7, #4
 2034 0168 3FF672AF 		bhi	.L378
 2035              	.L377:
 2036 016c 0120     		movs	r0, #1
 2037              	.L360:
 2038 016e BDEC028B 		vldm	sp!, {d8}
 2039 0172 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2040              	.L363:
 2041 0176 D4F89422 		ldr	r2, [r4, #660]
 2042 017a 04F1B403 		add	r3, r4, #180
 2043 017e 04F1D401 		add	r1, r4, #212
 2044              	.L365:
 2045 0182 D3F800E0 		ldr	lr, [r3]	@ unaligned
 2046 0186 D3F804C0 		ldr	ip, [r3, #4]	@ unaligned
 2047 018a 9868     		ldr	r0, [r3, #8]	@ unaligned
 2048 018c D3F80CA0 		ldr	r10, [r3, #12]	@ unaligned
 2049 0190 C2F80CA0 		str	r10, [r2, #12]	@ unaligned
 2050 0194 1033     		adds	r3, r3, #16
 2051 0196 8B42     		cmp	r3, r1
 2052 0198 C2F800E0 		str	lr, [r2]	@ unaligned
ARM GAS  /tmp/ccEXGxHv.s 			page 37


 2053 019c C2F804C0 		str	ip, [r2, #4]	@ unaligned
 2054 01a0 9060     		str	r0, [r2, #8]	@ unaligned
 2055 01a2 02F11002 		add	r2, r2, #16
 2056 01a6 ECD1     		bne	.L365
 2057 01a8 1B68     		ldr	r3, [r3]	@ unaligned
 2058 01aa 1360     		str	r3, [r2]	@ unaligned
 2059 01ac 0323     		movs	r3, #3
 2060 01ae 84F84E31 		strb	r3, [r4, #334]
 2061              	.L366:
 2062 01b2 0123     		movs	r3, #1
 2063 01b4 B340     		lsls	r3, r3, r6
 2064 01b6 C4F84831 		str	r3, [r4, #328]
 2065 01ba 87E7     		b	.L369
 2066              	.L370:
 2067 01bc 5321     		movs	r1, #83
 2068 01be 2846     		mov	r0, r5
 2069 01c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2070 01c4 A0B9     		cbnz	r0, .L396
 2071              	.L372:
 2072 01c6 2368     		ldr	r3, [r4]
 2073 01c8 06F5E472 		add	r2, r6, #456
 2074 01cc 03EB8203 		add	r3, r3, r2, lsl #2
 2075 01d0 1B68     		ldr	r3, [r3]	@ float
 2076              	.L373:
 2077 01d2 3B60     		str	r3, [r7]	@ float
 2078 01d4 9BE7     		b	.L371
 2079              	.L395:
 2080 01d6 2846     		mov	r0, r5
 2081 01d8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2082 01dc D4EDBD7A 		vldr.32	s15, [r4, #756]
 2083 01e0 AB68     		ldr	r3, [r5, #8]
 2084 01e2 60EE277A 		vmul.f32	s15, s0, s15
 2085 01e6 67EEA87A 		vmul.f32	s15, s15, s17
 2086 01ea C3ED017A 		vstr.32	s15, [r3, #4]
 2087 01ee A7E7     		b	.L376
 2088              	.L396:
 2089 01f0 2846     		mov	r0, r5
 2090 01f2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2091 01f6 0028     		cmp	r0, #0
 2092 01f8 E5DD     		ble	.L372
 2093 01fa 2368     		ldr	r3, [r4]
 2094 01fc 06F5E872 		add	r2, r6, #464
 2095 0200 03EB8203 		add	r3, r3, r2, lsl #2
 2096 0204 5B68     		ldr	r3, [r3, #4]	@ float
 2097 0206 E4E7     		b	.L373
 2098              	.L393:
 2099 0208 1046     		mov	r0, r2
 2100 020a 0A49     		ldr	r1, .L397+12
 2101 020c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2102 0210 BDEC028B 		vldm	sp!, {d8}
 2103 0214 0220     		movs	r0, #2
 2104 0216 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2105              	.L394:
 2106 021a 4846     		mov	r0, r9
 2107 021c 0649     		ldr	r1, .L397+16
 2108 021e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2109 0222 0220     		movs	r0, #2
ARM GAS  /tmp/ccEXGxHv.s 			page 38


 2110 0224 A3E7     		b	.L360
 2111              	.L398:
 2112 0226 00BF     		.align	2
 2113              	.L397:
 2114 0228 00000000 		.word	reprap
 2115 022c 8988883C 		.word	1015580809
 2116 0230 00000000 		.word	0
 2117 0234 00000000 		.word	.LC37
 2118 0238 14000000 		.word	.LC38
 2119              		.size	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef, .-_ZN6GCodes9ProbeToolER11GCodeBufferRK9Str
 2120              		.section	.text._ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef,"ax",%progbits
 2121              		.align	1
 2122              		.p2align 2,,3
 2123              		.global	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef
 2124              		.syntax unified
 2125              		.thumb
 2126              		.thumb_func
 2127              		.fpu fpv4-sp-d16
 2128              		.type	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef, %function
 2129              	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef:
 2130              		@ args = 0, pretend = 0, frame = 72
 2131              		@ frame_needed = 0, uses_anonymous_args = 0
 2132 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2133 0004 0646     		mov	r6, r0
 2134 0006 96B0     		sub	sp, sp, #88
 2135 0008 0068     		ldr	r0, [r0]
 2136 000a 0C46     		mov	r4, r1
 2137 000c 9046     		mov	r8, r2
 2138 000e FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 2139 0012 CDE90401 		strd	r0, [sp, #16]
 2140 0016 0DA9     		add	r1, sp, #52
 2141 0018 04A8     		add	r0, sp, #16
 2142 001a FFF7FEFF 		bl	gmtime_r
 2143 001e 2046     		mov	r0, r4
 2144 0020 5021     		movs	r1, #80
 2145 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2146 0026 88B9     		cbnz	r0, .L400
 2147 0028 5321     		movs	r1, #83
 2148 002a 2046     		mov	r0, r4
 2149 002c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2150 0030 88BB     		cbnz	r0, .L410
 2151 0032 3068     		ldr	r0, [r6]
 2152 0034 FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 2153 0038 0028     		cmp	r0, #0
 2154 003a 45D1     		bne	.L411
 2155 003c 4046     		mov	r0, r8
 2156 003e 3049     		ldr	r1, .L413
 2157 0040 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2158 0044 0120     		movs	r0, #1
 2159 0046 16B0     		add	sp, sp, #88
 2160              		@ sp needed
 2161 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2162              	.L400:
 2163 004c 16AD     		add	r5, sp, #88
 2164 004e 0023     		movs	r3, #0
 2165 0050 05F8343D 		strb	r3, [r5, #-52]!
 2166 0054 07AF     		add	r7, sp, #28
ARM GAS  /tmp/ccEXGxHv.s 			page 39


 2167 0056 3946     		mov	r1, r7
 2168 0058 0D23     		movs	r3, #13
 2169 005a 2046     		mov	r0, r4
 2170 005c CDE90753 		strd	r5, r3, [sp, #28]
 2171 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 2172 0064 0DAA     		add	r2, sp, #52
 2173 0066 2846     		mov	r0, r5
 2174 0068 2649     		ldr	r1, .L413+4
 2175 006a FFF7FEFF 		bl	strptime
 2176 006e 0028     		cmp	r0, #0
 2177 0070 3FD0     		beq	.L412
 2178 0072 5321     		movs	r1, #83
 2179 0074 2046     		mov	r0, r4
 2180 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2181 007a 70B9     		cbnz	r0, .L406
 2182              	.L407:
 2183 007c 0DA8     		add	r0, sp, #52
 2184 007e 3468     		ldr	r4, [r6]
 2185 0080 FFF7FEFF 		bl	mktime
 2186 0084 0246     		mov	r2, r0
 2187 0086 0B46     		mov	r3, r1
 2188 0088 2046     		mov	r0, r4
 2189 008a FFF7FEFF 		bl	_ZN8Platform11SetDateTimeEx
 2190 008e 0120     		movs	r0, #1
 2191              	.L405:
 2192 0090 16B0     		add	sp, sp, #88
 2193              		@ sp needed
 2194 0092 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2195              	.L410:
 2196 0096 09AD     		add	r5, sp, #36
 2197 0098 07AF     		add	r7, sp, #28
 2198              	.L406:
 2199 009a 0022     		movs	r2, #0
 2200 009c 3946     		mov	r1, r7
 2201 009e 0D23     		movs	r3, #13
 2202 00a0 2046     		mov	r0, r4
 2203 00a2 8DF82420 		strb	r2, [sp, #36]
 2204 00a6 0795     		str	r5, [sp, #28]
 2205 00a8 0893     		str	r3, [sp, #32]
 2206 00aa FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 2207 00ae 0DAA     		add	r2, sp, #52
 2208 00b0 2846     		mov	r0, r5
 2209 00b2 1549     		ldr	r1, .L413+8
 2210 00b4 FFF7FEFF 		bl	strptime
 2211 00b8 0028     		cmp	r0, #0
 2212 00ba DFD1     		bne	.L407
 2213 00bc 4046     		mov	r0, r8
 2214 00be 1349     		ldr	r1, .L413+12
 2215 00c0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2216 00c4 0220     		movs	r0, #2
 2217 00c6 E3E7     		b	.L405
 2218              	.L411:
 2219 00c8 DDE90D10 		ldrd	r1, r0, [sp, #52]
 2220 00cc DDE91132 		ldrd	r3, r2, [sp, #68]
 2221 00d0 0F9C     		ldr	r4, [sp, #60]
 2222 00d2 0391     		str	r1, [sp, #12]
 2223 00d4 1099     		ldr	r1, [sp, #64]
ARM GAS  /tmp/ccEXGxHv.s 			page 40


 2224 00d6 0290     		str	r0, [sp, #8]
 2225 00d8 CDE90014 		strd	r1, r4, [sp]
 2226 00dc 4046     		mov	r0, r8
 2227 00de 0133     		adds	r3, r3, #1
 2228 00e0 02F26C72 		addw	r2, r2, #1900
 2229 00e4 0A49     		ldr	r1, .L413+16
 2230 00e6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2231 00ea 0120     		movs	r0, #1
 2232 00ec 16B0     		add	sp, sp, #88
 2233              		@ sp needed
 2234 00ee BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2235              	.L412:
 2236 00f2 4046     		mov	r0, r8
 2237 00f4 0749     		ldr	r1, .L413+20
 2238 00f6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2239 00fa 0220     		movs	r0, #2
 2240 00fc C8E7     		b	.L405
 2241              	.L414:
 2242 00fe 00BF     		.align	2
 2243              	.L413:
 2244 0100 78000000 		.word	.LC44
 2245 0104 0C000000 		.word	.LC40
 2246 0108 00000000 		.word	.LC39
 2247 010c 2C000000 		.word	.LC42
 2248 0110 40000000 		.word	.LC43
 2249 0114 18000000 		.word	.LC41
 2250              		.size	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11SetDateTimeER11GCodeBuffer
 2251              		.section	.text._ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef,"ax",%progbits
 2252              		.align	1
 2253              		.p2align 2,,3
 2254              		.global	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef
 2255              		.syntax unified
 2256              		.thumb
 2257              		.thumb_func
 2258              		.fpu fpv4-sp-d16
 2259              		.type	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef, %function
 2260              	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef:
 2261              		@ args = 0, pretend = 0, frame = 16
 2262              		@ frame_needed = 0, uses_anonymous_args = 0
 2263 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2264 0004 84B0     		sub	sp, sp, #16
 2265 0006 1746     		mov	r7, r2
 2266 0008 0546     		mov	r5, r0
 2267 000a 0E46     		mov	r6, r1
 2268 000c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2269 0010 18B9     		cbnz	r0, .L416
 2270              	.L429:
 2271 0012 0020     		movs	r0, #0
 2272              	.L417:
 2273 0014 04B0     		add	sp, sp, #16
 2274              		@ sp needed
 2275 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2276              	.L416:
 2277 001a 354B     		ldr	r3, .L446
 2278 001c 0121     		movs	r1, #1
 2279 001e D868     		ldr	r0, [r3, #12]
 2280 0020 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
ARM GAS  /tmp/ccEXGxHv.s 			page 41


 2281 0024 2846     		mov	r0, r5
 2282 0026 FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 2283 002a 95F8F445 		ldrb	r4, [r5, #1524]	@ zero_extendqisi2
 2284 002e CCB9     		cbnz	r4, .L418
 2285 0030 5321     		movs	r1, #83
 2286 0032 3046     		mov	r0, r6
 2287 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2288 0038 30BB     		cbnz	r0, .L443
 2289 003a 0120     		movs	r0, #1
 2290 003c 85F8F405 		strb	r0, [r5, #1524]
 2291              	.L426:
 2292 0040 3946     		mov	r1, r7
 2293 0042 FFF7FEFF 		bl	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef
 2294 0046 40B1     		cbz	r0, .L428
 2295 0048 95F8F435 		ldrb	r3, [r5, #1524]	@ zero_extendqisi2
 2296 004c DB07     		lsls	r3, r3, #31
 2297 004e 09D5     		bpl	.L418
 2298 0050 3946     		mov	r1, r7
 2299 0052 2868     		ldr	r0, [r5]
 2300 0054 FFF7FEFF 		bl	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef
 2301 0058 20B9     		cbnz	r0, .L418
 2302              	.L428:
 2303 005a 0023     		movs	r3, #0
 2304 005c 85F8F435 		strb	r3, [r5, #1524]
 2305 0060 0220     		movs	r0, #2
 2306 0062 D7E7     		b	.L417
 2307              	.L418:
 2308 0064 0124     		movs	r4, #1
 2309 0066 85F8F545 		strb	r4, [r5, #1525]
 2310 006a 2846     		mov	r0, r5
 2311 006c 4FF47A72 		mov	r2, #1000
 2312 0070 3146     		mov	r1, r6
 2313 0072 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 2314 0076 0028     		cmp	r0, #0
 2315 0078 CBD0     		beq	.L429
 2316 007a B368     		ldr	r3, [r6, #8]
 2317 007c 1422     		movs	r2, #20
 2318 007e 2046     		mov	r0, r4
 2319 0080 1A75     		strb	r2, [r3, #20]
 2320 0082 04B0     		add	sp, sp, #16
 2321              		@ sp needed
 2322 0084 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2323              	.L443:
 2324 0088 04AA     		add	r2, sp, #16
 2325 008a 0323     		movs	r3, #3
 2326 008c 0DF10408 		add	r8, sp, #4
 2327 0090 42F8103D 		str	r3, [r2, #-16]!
 2328 0094 4146     		mov	r1, r8
 2329 0096 2346     		mov	r3, r4
 2330 0098 3046     		mov	r0, r6
 2331 009a FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2332 009e 0099     		ldr	r1, [sp]
 2333 00a0 19B3     		cbz	r1, .L444
 2334 00a2 019A     		ldr	r2, [sp, #4]
 2335 00a4 032A     		cmp	r2, #3
 2336 00a6 17D8     		bhi	.L422
 2337 00a8 2346     		mov	r3, r4
ARM GAS  /tmp/ccEXGxHv.s 			page 42


 2338 00aa 95F8F405 		ldrb	r0, [r5, #1524]	@ zero_extendqisi2
 2339 00ae 0124     		movs	r4, #1
 2340 00b0 03E0     		b	.L424
 2341              	.L425:
 2342 00b2 58F82320 		ldr	r2, [r8, r3, lsl #2]
 2343 00b6 032A     		cmp	r2, #3
 2344 00b8 0CD8     		bhi	.L445
 2345              	.L424:
 2346 00ba 04FA02F2 		lsl	r2, r4, r2
 2347 00be 0133     		adds	r3, r3, #1
 2348 00c0 1043     		orrs	r0, r0, r2
 2349 00c2 8B42     		cmp	r3, r1
 2350 00c4 C0B2     		uxtb	r0, r0
 2351 00c6 F4D1     		bne	.L425
 2352 00c8 85F8F405 		strb	r0, [r5, #1524]
 2353              	.L421:
 2354 00cc 0028     		cmp	r0, #0
 2355 00ce B7D1     		bne	.L426
 2356 00d0 0120     		movs	r0, #1
 2357 00d2 9FE7     		b	.L417
 2358              	.L445:
 2359 00d4 85F8F405 		strb	r0, [r5, #1524]
 2360              	.L422:
 2361 00d8 3846     		mov	r0, r7
 2362 00da 0649     		ldr	r1, .L446+4
 2363 00dc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2364 00e0 0023     		movs	r3, #0
 2365 00e2 85F8F435 		strb	r3, [r5, #1524]
 2366 00e6 0220     		movs	r0, #2
 2367 00e8 94E7     		b	.L417
 2368              	.L444:
 2369 00ea 95F8F405 		ldrb	r0, [r5, #1524]	@ zero_extendqisi2
 2370 00ee EDE7     		b	.L421
 2371              	.L447:
 2372              		.align	2
 2373              	.L446:
 2374 00f0 00000000 		.word	reprap
 2375 00f4 00000000 		.word	.LC45
 2376              		.size	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef, .-_ZN6GCodes14UpdateFirmwareER11GCode
 2377              		.section	.text._ZN6GCodes10I2cForwardER11GCodeBufferhPhjRK9StringRef,"ax",%progbits
 2378              		.align	1
 2379              		.p2align 2,,3
 2380              		.global	_ZN6GCodes10I2cForwardER11GCodeBufferhPhjRK9StringRef
 2381              		.syntax unified
 2382              		.thumb
 2383              		.thumb_func
 2384              		.fpu fpv4-sp-d16
 2385              		.type	_ZN6GCodes10I2cForwardER11GCodeBufferhPhjRK9StringRef, %function
 2386              	_ZN6GCodes10I2cForwardER11GCodeBufferhPhjRK9StringRef:
 2387              		@ args = 8, pretend = 0, frame = 0
 2388              		@ frame_needed = 0, uses_anonymous_args = 0
 2389 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2390 0004 9146     		mov	r9, r2
 2391 0006 91F84E20 		ldrb	r2, [r1, #78]	@ zero_extendqisi2
 2392 000a 0068     		ldr	r0, [r0]
 2393 000c DDF82080 		ldr	r8, [sp, #32]
 2394 0010 202A     		cmp	r2, #32
ARM GAS  /tmp/ccEXGxHv.s 			page 43


 2395 0012 0E46     		mov	r6, r1
 2396 0014 1D46     		mov	r5, r3
 2397 0016 00D0     		beq	.L471
 2398 0018 6ABB     		cbnz	r2, .L451
 2399              	.L471:
 2400 001a FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 2401 001e 4946     		mov	r1, r9
 2402 0020 3748     		ldr	r0, .L475
 2403 0022 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEi
 2404 0026 96F84D10 		ldrb	r1, [r6, #77]	@ zero_extendqisi2
 2405 002a 3548     		ldr	r0, .L475
 2406 002c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 2407 0030 0127     		movs	r7, #1
 2408              	.L458:
 2409 0032 2021     		movs	r1, #32
 2410 0034 3248     		ldr	r0, .L475
 2411 0036 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 2412 003a B8F1000F 		cmp	r8, #0
 2413 003e 0BD0     		beq	.L460
 2414 0040 05EB0806 		add	r6, r5, r8
 2415 0044 2E4C     		ldr	r4, .L475
 2416 0046 013E     		subs	r6, r6, #1
 2417 0048 013D     		subs	r5, r5, #1
 2418              	.L461:
 2419 004a 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 2420 004e 2046     		mov	r0, r4
 2421 0050 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 2422 0054 B542     		cmp	r5, r6
 2423 0056 F8D1     		bne	.L461
 2424              	.L460:
 2425 0058 2948     		ldr	r0, .L475
 2426 005a FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 2427 005e 30BB     		cbnz	r0, .L472
 2428 0060 08F10102 		add	r2, r8, #1
 2429 0064 3A44     		add	r2, r2, r7
 2430 0066 4B46     		mov	r3, r9
 2431 0068 2649     		ldr	r1, .L475+4
 2432 006a 0998     		ldr	r0, [sp, #36]
 2433 006c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2434 0070 0120     		movs	r0, #1
 2435 0072 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2436              	.L451:
 2437 0076 91F84F30 		ldrb	r3, [r1, #79]	@ zero_extendqisi2
 2438 007a 202B     		cmp	r3, #32
 2439 007c 00D0     		beq	.L454
 2440 007e EBB9     		cbnz	r3, .L473
 2441              	.L454:
 2442 0080 FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 2443 0084 4946     		mov	r1, r9
 2444 0086 1E48     		ldr	r0, .L475
 2445 0088 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEi
 2446 008c 0227     		movs	r7, #2
 2447              	.L453:
 2448 008e DFF870A0 		ldr	r10, .L475
 2449 0092 06F14C04 		add	r4, r6, #76
 2450              	.L459:
 2451 0096 6178     		ldrb	r1, [r4, #1]	@ zero_extendqisi2
ARM GAS  /tmp/ccEXGxHv.s 			page 44


 2452 0098 5046     		mov	r0, r10
 2453 009a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 2454 009e A4F14B03 		sub	r3, r4, #75
 2455 00a2 9B1B     		subs	r3, r3, r6
 2456 00a4 9F42     		cmp	r7, r3
 2457 00a6 04F10104 		add	r4, r4, #1
 2458 00aa F4D8     		bhi	.L459
 2459 00ac C1E7     		b	.L458
 2460              	.L472:
 2461 00ae 1649     		ldr	r1, .L475+8
 2462 00b0 0998     		ldr	r0, [sp, #36]
 2463 00b2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2464 00b6 0220     		movs	r0, #2
 2465 00b8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2466              	.L473:
 2467 00bc 91F85030 		ldrb	r3, [r1, #80]	@ zero_extendqisi2
 2468 00c0 202B     		cmp	r3, #32
 2469 00c2 0DD0     		beq	.L456
 2470 00c4 63B1     		cbz	r3, .L456
 2471 00c6 91F85130 		ldrb	r3, [r1, #81]	@ zero_extendqisi2
 2472 00ca 13F0DF0F 		tst	r3, #223
 2473 00ce 0FD0     		beq	.L474
 2474 00d0 FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 2475 00d4 4946     		mov	r1, r9
 2476 00d6 0A48     		ldr	r0, .L475
 2477 00d8 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEi
 2478 00dc 0027     		movs	r7, #0
 2479 00de A8E7     		b	.L458
 2480              	.L456:
 2481 00e0 FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 2482 00e4 4946     		mov	r1, r9
 2483 00e6 0648     		ldr	r0, .L475
 2484 00e8 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEi
 2485 00ec 0327     		movs	r7, #3
 2486 00ee CEE7     		b	.L453
 2487              	.L474:
 2488 00f0 FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 2489 00f4 4946     		mov	r1, r9
 2490 00f6 0248     		ldr	r0, .L475
 2491 00f8 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEi
 2492 00fc 0427     		movs	r7, #4
 2493 00fe C6E7     		b	.L453
 2494              	.L476:
 2495              		.align	2
 2496              	.L475:
 2497 0100 00000000 		.word	Wire
 2498 0104 18000000 		.word	.LC47
 2499 0108 00000000 		.word	.LC46
 2500              		.size	_ZN6GCodes10I2cForwardER11GCodeBufferhPhjRK9StringRef, .-_ZN6GCodes10I2cForwardER11GCodeBuff
 2501              		.section	.text._ZN6GCodes10I2cForwardER11GCodeBufferhRK9StringRef,"ax",%progbits
 2502              		.align	1
 2503              		.p2align 2,,3
 2504              		.global	_ZN6GCodes10I2cForwardER11GCodeBufferhRK9StringRef
 2505              		.syntax unified
 2506              		.thumb
 2507              		.thumb_func
 2508              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccEXGxHv.s 			page 45


 2509              		.type	_ZN6GCodes10I2cForwardER11GCodeBufferhRK9StringRef, %function
 2510              	_ZN6GCodes10I2cForwardER11GCodeBufferhRK9StringRef:
 2511              		@ args = 0, pretend = 0, frame = 0
 2512              		@ frame_needed = 0, uses_anonymous_args = 0
 2513 0000 10B5     		push	{r4, lr}
 2514 0002 0024     		movs	r4, #0
 2515 0004 82B0     		sub	sp, sp, #8
 2516 0006 CDE90043 		strd	r4, r3, [sp]
 2517 000a 2346     		mov	r3, r4
 2518 000c FFF7FEFF 		bl	_ZN6GCodes10I2cForwardER11GCodeBufferhPhjRK9StringRef
 2519 0010 02B0     		add	sp, sp, #8
 2520              		@ sp needed
 2521 0012 10BD     		pop	{r4, pc}
 2522              		.size	_ZN6GCodes10I2cForwardER11GCodeBufferhRK9StringRef, .-_ZN6GCodes10I2cForwardER11GCodeBufferh
 2523              		.section	.text._ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef,"ax",%progbits
 2524              		.align	1
 2525              		.p2align 2,,3
 2526              		.global	_ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef
 2527              		.syntax unified
 2528              		.thumb
 2529              		.thumb_func
 2530              		.fpu fpv4-sp-d16
 2531              		.type	_ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef, %function
 2532              	_ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef:
 2533              		@ args = 0, pretend = 0, frame = 0
 2534              		@ frame_needed = 0, uses_anonymous_args = 0
 2535 0000 D0F89C32 		ldr	r3, [r0, #668]
 2536 0004 002B     		cmp	r3, #0
 2537 0006 4CD0     		beq	.L499
 2538 0008 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2539 000c 00F26344 		addw	r4, r0, #1123
 2540 0010 83B0     		sub	sp, sp, #12
 2541 0012 9146     		mov	r9, r2
 2542 0014 8846     		mov	r8, r1
 2543 0016 0646     		mov	r6, r0
 2544 0018 2546     		mov	r5, r4
 2545 001a 01E0     		b	.L483
 2546              	.L504:
 2547 001c 9342     		cmp	r3, r2
 2548 001e 3DD9     		bls	.L503
 2549              	.L483:
 2550 0020 6978     		ldrb	r1, [r5, #1]	@ zero_extendqisi2
 2551 0022 4046     		mov	r0, r8
 2552 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2553 0028 6F1C     		adds	r7, r5, #1
 2554 002a A5F26245 		subw	r5, r5, #1122
 2555 002e AA1B     		subs	r2, r5, r6
 2556 0030 D6F89C32 		ldr	r3, [r6, #668]
 2557 0034 3D46     		mov	r5, r7
 2558 0036 0028     		cmp	r0, #0
 2559 0038 F0D0     		beq	.L504
 2560 003a 4FF0000A 		mov	r10, #0
 2561              	.L482:
 2562 003e 4BB3     		cbz	r3, .L480
 2563 0040 194F     		ldr	r7, .L505
 2564 0042 4FF0000B 		mov	fp, #0
 2565 0046 BF1B     		subs	r7, r7, r6
ARM GAS  /tmp/ccEXGxHv.s 			page 46


 2566 0048 04E0     		b	.L485
 2567              	.L486:
 2568 004a D6F89C22 		ldr	r2, [r6, #668]
 2569 004e E319     		adds	r3, r4, r7
 2570 0050 9A42     		cmp	r2, r3
 2571 0052 1FD9     		bls	.L480
 2572              	.L485:
 2573 0054 E519     		adds	r5, r4, r7
 2574 0056 4046     		mov	r0, r8
 2575 0058 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
 2576 005c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2577 0060 10B9     		cbnz	r0, .L484
 2578 0062 BAF1000F 		cmp	r10, #0
 2579 0066 F0D0     		beq	.L486
 2580              	.L484:
 2581 0068 3368     		ldr	r3, [r6]
 2582 006a 03EBC505 		add	r5, r3, r5, lsl #3
 2583 006e 95F8FC22 		ldrb	r2, [r5, #764]	@ zero_extendqisi2
 2584 0072 1344     		add	r3, r3, r2
 2585 0074 93F8F420 		ldrb	r2, [r3, #244]	@ zero_extendqisi2
 2586 0078 002A     		cmp	r2, #0
 2587 007a E6D0     		beq	.L486
 2588 007c CDE900B9 		strd	fp, r9, [sp]
 2589 0080 0023     		movs	r3, #0
 2590 0082 4146     		mov	r1, r8
 2591 0084 3046     		mov	r0, r6
 2592 0086 FFF7FEFF 		bl	_ZN6GCodes10I2cForwardER11GCodeBufferhPhjRK9StringRef
 2593 008a 0128     		cmp	r0, #1
 2594 008c DDD0     		beq	.L486
 2595 008e 03B0     		add	sp, sp, #12
 2596              		@ sp needed
 2597 0090 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2598              	.L480:
 2599 0094 0120     		movs	r0, #1
 2600 0096 03B0     		add	sp, sp, #12
 2601              		@ sp needed
 2602 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2603              	.L503:
 2604 009c 4FF0010A 		mov	r10, #1
 2605 00a0 CDE7     		b	.L482
 2606              	.L499:
 2607 00a2 0120     		movs	r0, #1
 2608 00a4 7047     		bx	lr
 2609              	.L506:
 2610 00a6 00BF     		.align	2
 2611              	.L505:
 2612 00a8 9DFBFFFF 		.word	-1123
 2613              		.size	_ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef, .-_ZN6GCodes14MarkEncoderRefER11GCode
 2614              		.global	__aeabi_ui2d
 2615              		.global	__aeabi_dcmpeq
 2616              		.section	.text._ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef,"ax",%progbits
 2617              		.align	1
 2618              		.p2align 2,,3
 2619              		.global	_ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef
 2620              		.syntax unified
 2621              		.thumb
 2622              		.thumb_func
ARM GAS  /tmp/ccEXGxHv.s 			page 47


 2623              		.fpu fpv4-sp-d16
 2624              		.type	_ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef, %function
 2625              	_ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef:
 2626              		@ args = 0, pretend = 0, frame = 16
 2627              		@ frame_needed = 0, uses_anonymous_args = 0
 2628 0000 D0F89C32 		ldr	r3, [r0, #668]
 2629 0004 002B     		cmp	r3, #0
 2630 0006 66D0     		beq	.L534
 2631 0008 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2632 000c 2DED028B 		vpush.64	{d8}
 2633 0010 87B0     		sub	sp, sp, #28
 2634 0012 00F26345 		addw	r5, r0, #1123
 2635 0016 0392     		str	r2, [sp, #12]
 2636 0018 0F46     		mov	r7, r1
 2637 001a 0646     		mov	r6, r0
 2638 001c 4FF0000A 		mov	r10, #0
 2639 0020 4FF0000B 		mov	fp, #0
 2640 0024 DFED2D8A 		vldr.32	s17, .L539
 2641 0028 0295     		str	r5, [sp, #8]
 2642 002a 0024     		movs	r4, #0
 2643 002c 04E0     		b	.L514
 2644              	.L509:
 2645 002e D6F89C32 		ldr	r3, [r6, #668]
 2646 0032 0134     		adds	r4, r4, #1
 2647 0034 A342     		cmp	r3, r4
 2648 0036 48D9     		bls	.L538
 2649              	.L514:
 2650 0038 029B     		ldr	r3, [sp, #8]
 2651 003a 3846     		mov	r0, r7
 2652 003c 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
 2653 0040 0293     		str	r3, [sp, #8]
 2654 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2655 0046 0028     		cmp	r0, #0
 2656 0048 F1D0     		beq	.L509
 2657 004a 3368     		ldr	r3, [r6]
 2658 004c 03EBC402 		add	r2, r3, r4, lsl #3
 2659 0050 92F8FC82 		ldrb	r8, [r2, #764]	@ zero_extendqisi2
 2660 0054 4344     		add	r3, r3, r8
 2661 0056 93F8F490 		ldrb	r9, [r3, #244]	@ zero_extendqisi2
 2662 005a B9F1000F 		cmp	r9, #0
 2663 005e E6D0     		beq	.L509
 2664 0060 3846     		mov	r0, r7
 2665 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2666 0066 B4EEE80A 		vcmpe.f32	s0, s17
 2667 006a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2668 006e 4CBF     		ite	mi
 2669 0070 0120     		movmi	r0, #1
 2670 0072 0020     		movpl	r0, #0
 2671 0074 B0EE408A 		vmov.f32	s16, s0
 2672 0078 FFF7FEFF 		bl	__aeabi_ui2d
 2673 007c 5246     		mov	r2, r10
 2674 007e 5B46     		mov	r3, fp
 2675 0080 FFF7FEFF 		bl	__aeabi_dcmpeq
 2676 0084 B0EEC88A 		vabs.f32	s16, s16
 2677 0088 4FF0040C 		mov	ip, #4
 2678 008c 05AB     		add	r3, sp, #20
 2679 008e 4A46     		mov	r2, r9
ARM GAS  /tmp/ccEXGxHv.s 			page 48


 2680 0090 3946     		mov	r1, r7
 2681 0092 F1EE487A 		vneg.f32	s15, s16
 2682 0096 0028     		cmp	r0, #0
 2683 0098 C9D1     		bne	.L509
 2684 009a 3068     		ldr	r0, [r6]
 2685 009c CDED057A 		vstr.32	s15, [sp, #20]
 2686 00a0 8044     		add	r8, r8, r0
 2687 00a2 3046     		mov	r0, r6
 2688 00a4 98F8D0E0 		ldrb	lr, [r8, #208]	@ zero_extendqisi2
 2689 00a8 BEF1000F 		cmp	lr, #0
 2690 00ac 01D0     		beq	.L512
 2691 00ae 8DED058A 		vstr.32	s16, [sp, #20]
 2692              	.L512:
 2693 00b2 039D     		ldr	r5, [sp, #12]
 2694 00b4 CDE900C5 		strd	ip, r5, [sp]
 2695 00b8 FFF7FEFF 		bl	_ZN6GCodes10I2cForwardER11GCodeBufferhPhjRK9StringRef
 2696 00bc 0128     		cmp	r0, #1
 2697 00be B6D0     		beq	.L509
 2698 00c0 07B0     		add	sp, sp, #28
 2699              		@ sp needed
 2700 00c2 BDEC028B 		vldm	sp!, {d8}
 2701 00c6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2702              	.L538:
 2703 00ca 0120     		movs	r0, #1
 2704 00cc 07B0     		add	sp, sp, #28
 2705              		@ sp needed
 2706 00ce BDEC028B 		vldm	sp!, {d8}
 2707 00d2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2708              	.L534:
 2709 00d6 0120     		movs	r0, #1
 2710 00d8 7047     		bx	lr
 2711              	.L540:
 2712 00da 00BF     		.align	2
 2713              	.L539:
 2714 00dc 00007F43 		.word	1132396544
 2715              		.size	_ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef, .-_ZN6GCodes13SetTorqueModeER11GCodeBu
 2716              		.section	.text._ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef,"ax",%progbits
 2717              		.align	1
 2718              		.p2align 2,,3
 2719              		.global	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef
 2720              		.syntax unified
 2721              		.thumb
 2722              		.thumb_func
 2723              		.fpu fpv4-sp-d16
 2724              		.type	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef, %function
 2725              	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef:
 2726              		@ args = 0, pretend = 0, frame = 136
 2727              		@ frame_needed = 0, uses_anonymous_args = 0
 2728 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2729 0002 0C46     		mov	r4, r1
 2730 0004 A3B0     		sub	sp, sp, #140
 2731 0006 0546     		mov	r5, r0
 2732 0008 4121     		movs	r1, #65
 2733 000a 2046     		mov	r0, r4
 2734 000c 1646     		mov	r6, r2
 2735 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2736 0012 78B3     		cbz	r0, .L545
ARM GAS  /tmp/ccEXGxHv.s 			page 49


 2737 0014 2046     		mov	r0, r4
 2738 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2739 001a 4221     		movs	r1, #66
 2740 001c 0746     		mov	r7, r0
 2741 001e 2046     		mov	r0, r4
 2742 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2743 0024 30B3     		cbz	r0, .L545
 2744 0026 22AA     		add	r2, sp, #136
 2745 0028 2023     		movs	r3, #32
 2746 002a 42F8843D 		str	r3, [r2, #-132]!
 2747 002e 2046     		mov	r0, r4
 2748 0030 0023     		movs	r3, #0
 2749 0032 02A9     		add	r1, sp, #8
 2750 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 2751 0038 019B     		ldr	r3, [sp, #4]
 2752 003a DBB1     		cbz	r3, .L545
 2753 003c 2868     		ldr	r0, [r5]
 2754 003e FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 2755 0042 3946     		mov	r1, r7
 2756 0044 1048     		ldr	r0, .L559
 2757 0046 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEi
 2758 004a 019B     		ldr	r3, [sp, #4]
 2759 004c 63B1     		cbz	r3, .L546
 2760 004e 0E4F     		ldr	r7, .L559
 2761 0050 02AD     		add	r5, sp, #8
 2762 0052 0024     		movs	r4, #0
 2763              	.L547:
 2764 0054 55F8041B 		ldr	r1, [r5], #4
 2765 0058 3846     		mov	r0, r7
 2766 005a C9B2     		uxtb	r1, r1
 2767 005c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 2768 0060 019B     		ldr	r3, [sp, #4]
 2769 0062 0134     		adds	r4, r4, #1
 2770 0064 A342     		cmp	r3, r4
 2771 0066 F5D8     		bhi	.L547
 2772              	.L546:
 2773 0068 0748     		ldr	r0, .L559
 2774 006a FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 2775 006e 20B9     		cbnz	r0, .L558
 2776 0070 0120     		movs	r0, #1
 2777 0072 00E0     		b	.L543
 2778              	.L545:
 2779 0074 0620     		movs	r0, #6
 2780              	.L543:
 2781 0076 23B0     		add	sp, sp, #140
 2782              		@ sp needed
 2783 0078 F0BD     		pop	{r4, r5, r6, r7, pc}
 2784              	.L558:
 2785 007a 3046     		mov	r0, r6
 2786 007c 0349     		ldr	r1, .L559+4
 2787 007e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2788 0082 0220     		movs	r0, #2
 2789 0084 F7E7     		b	.L543
 2790              	.L560:
 2791 0086 00BF     		.align	2
 2792              	.L559:
 2793 0088 00000000 		.word	Wire
ARM GAS  /tmp/ccEXGxHv.s 			page 50


 2794 008c 00000000 		.word	.LC46
 2795              		.size	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef, .-_ZN6GCodes7SendI2cER11GCodeBufferRK9StringR
 2796              		.section	.text._ZN6GCodes15I2cRequestFloatEh,"ax",%progbits
 2797              		.align	1
 2798              		.p2align 2,,3
 2799              		.global	_ZN6GCodes15I2cRequestFloatEh
 2800              		.syntax unified
 2801              		.thumb
 2802              		.thumb_func
 2803              		.fpu fpv4-sp-d16
 2804              		.type	_ZN6GCodes15I2cRequestFloatEh, %function
 2805              	_ZN6GCodes15I2cRequestFloatEh:
 2806              		@ args = 0, pretend = 0, frame = 8
 2807              		@ frame_needed = 0, uses_anonymous_args = 0
 2808 0000 70B5     		push	{r4, r5, r6, lr}
 2809 0002 154D     		ldr	r5, .L573
 2810 0004 0068     		ldr	r0, [r0]
 2811 0006 82B0     		sub	sp, sp, #8
 2812 0008 0C46     		mov	r4, r1
 2813 000a FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 2814 000e 2146     		mov	r1, r4
 2815 0010 0422     		movs	r2, #4
 2816 0012 2846     		mov	r0, r5
 2817 0014 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 2818 0018 FFF7FEFF 		bl	millis
 2819 001c 0424     		movs	r4, #4
 2820 001e 0646     		mov	r6, r0
 2821 0020 04E0     		b	.L564
 2822              	.L562:
 2823 0022 FFF7FEFF 		bl	millis
 2824 0026 301A     		subs	r0, r6, r0
 2825 0028 0228     		cmp	r0, #2
 2826 002a 11D8     		bhi	.L563
 2827              	.L564:
 2828 002c 2846     		mov	r0, r5
 2829 002e FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 2830 0032 0028     		cmp	r0, #0
 2831 0034 F5D0     		beq	.L562
 2832 0036 2846     		mov	r0, r5
 2833 0038 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 2834 003c C4F10403 		rsb	r3, r4, #4
 2835 0040 02AA     		add	r2, sp, #8
 2836 0042 1344     		add	r3, r3, r2
 2837 0044 013C     		subs	r4, r4, #1
 2838 0046 14F0FF04 		ands	r4, r4, #255
 2839 004a 03F8040C 		strb	r0, [r3, #-4]
 2840 004e E8D1     		bne	.L562
 2841              	.L563:
 2842 0050 9DED010A 		vldr.32	s0, [sp, #4]
 2843 0054 02B0     		add	sp, sp, #8
 2844              		@ sp needed
 2845 0056 70BD     		pop	{r4, r5, r6, pc}
 2846              	.L574:
 2847              		.align	2
 2848              	.L573:
 2849 0058 00000000 		.word	Wire
 2850              		.size	_ZN6GCodes15I2cRequestFloatEh, .-_ZN6GCodes15I2cRequestFloatEh
ARM GAS  /tmp/ccEXGxHv.s 			page 51


 2851              		.section	.text._ZN6GCodes28GetAxisPositionsFromEncodersERK9StringRef,"ax",%progbits
 2852              		.align	1
 2853              		.p2align 2,,3
 2854              		.global	_ZN6GCodes28GetAxisPositionsFromEncodersERK9StringRef
 2855              		.syntax unified
 2856              		.thumb
 2857              		.thumb_func
 2858              		.fpu fpv4-sp-d16
 2859              		.type	_ZN6GCodes28GetAxisPositionsFromEncodersERK9StringRef, %function
 2860              	_ZN6GCodes28GetAxisPositionsFromEncodersERK9StringRef:
 2861              		@ args = 0, pretend = 0, frame = 0
 2862              		@ frame_needed = 0, uses_anonymous_args = 0
 2863 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2864 0004 0546     		mov	r5, r0
 2865 0006 2DED028B 		vpush.64	{d8}
 2866 000a 0846     		mov	r0, r1
 2867 000c 0E46     		mov	r6, r1
 2868 000e 3249     		ldr	r1, .L590
 2869 0010 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2870 0014 D5F89C22 		ldr	r2, [r5, #668]
 2871 0018 002A     		cmp	r2, #0
 2872 001a 55D0     		beq	.L576
 2873 001c 2F4F     		ldr	r7, .L590+4
 2874 001e DFF8C490 		ldr	r9, .L590+12
 2875 0022 DFF8C480 		ldr	r8, .L590+16
 2876 0026 0024     		movs	r4, #0
 2877 0028 06E0     		b	.L580
 2878              	.L577:
 2879 002a 531E     		subs	r3, r2, #1
 2880 002c A342     		cmp	r3, r4
 2881 002e 04F10104 		add	r4, r4, #1
 2882 0032 41D8     		bhi	.L589
 2883              	.L579:
 2884 0034 9442     		cmp	r4, r2
 2885 0036 47D2     		bcs	.L576
 2886              	.L580:
 2887 0038 2B68     		ldr	r3, [r5]
 2888 003a 03EBC401 		add	r1, r3, r4, lsl #3
 2889 003e 91F8FCA2 		ldrb	r10, [r1, #764]	@ zero_extendqisi2
 2890 0042 5344     		add	r3, r3, r10
 2891 0044 93F8F410 		ldrb	r1, [r3, #244]	@ zero_extendqisi2
 2892 0048 0029     		cmp	r1, #0
 2893 004a EED0     		beq	.L577
 2894 004c 2846     		mov	r0, r5
 2895 004e FFF7FEFF 		bl	_ZN6GCodes15I2cRequestFloatEh
 2896 0052 2B68     		ldr	r3, [r5]
 2897 0054 9A44     		add	r10, r10, r3
 2898 0056 2146     		mov	r1, r4
 2899 0058 9AF8DC20 		ldrb	r2, [r10, #220]	@ zero_extendqisi2
 2900 005c 9AF8D030 		ldrb	r3, [r10, #208]	@ zero_extendqisi2
 2901 0060 9A42     		cmp	r2, r3
 2902 0062 BB68     		ldr	r3, [r7, #8]
 2903 0064 D3F8580A 		ldr	r0, [r3, #2648]
 2904 0068 0368     		ldr	r3, [r0]
 2905 006a 9B6E     		ldr	r3, [r3, #104]
 2906 006c B0EE408A 		vmov.f32	s16, s0
 2907 0070 08BF     		it	eq
ARM GAS  /tmp/ccEXGxHv.s 			page 52


 2908 0072 B1EE408A 		vnegeq.f32	s16, s0
 2909 0076 9847     		blx	r3
 2910 0078 BB68     		ldr	r3, [r7, #8]
 2911 007a 3A68     		ldr	r2, [r7]
 2912 007c D3F8583A 		ldr	r3, [r3, #2648]
 2913 0080 0146     		mov	r1, r0
 2914 0082 1868     		ldr	r0, [r3]
 2915 0084 02F5D472 		add	r2, r2, #424
 2916 0088 D0F864A0 		ldr	r10, [r0, #100]
 2917 008c B0EE480A 		vmov.f32	s0, s16
 2918 0090 1846     		mov	r0, r3
 2919 0092 2346     		mov	r3, r4
 2920 0094 D047     		blx	r10
 2921 0096 10EE100A 		vmov	r0, s0
 2922 009a FFF7FEFF 		bl	__aeabi_f2d
 2923 009e 0246     		mov	r2, r0
 2924 00a0 0B46     		mov	r3, r1
 2925 00a2 3046     		mov	r0, r6
 2926 00a4 4946     		mov	r1, r9
 2927 00a6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2928 00aa D5F89C22 		ldr	r2, [r5, #668]
 2929 00ae 531E     		subs	r3, r2, #1
 2930 00b0 A342     		cmp	r3, r4
 2931 00b2 04F10104 		add	r4, r4, #1
 2932 00b6 BDD9     		bls	.L579
 2933              	.L589:
 2934 00b8 4146     		mov	r1, r8
 2935 00ba 3046     		mov	r0, r6
 2936 00bc FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2937 00c0 D5F89C22 		ldr	r2, [r5, #668]
 2938 00c4 9442     		cmp	r4, r2
 2939 00c6 B7D3     		bcc	.L580
 2940              	.L576:
 2941 00c8 BDEC028B 		vldm	sp!, {d8}
 2942 00cc 3046     		mov	r0, r6
 2943 00ce 0449     		ldr	r1, .L590+8
 2944 00d0 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 2945 00d4 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 2946              	.L591:
 2947              		.align	2
 2948              	.L590:
 2949 00d8 00000000 		.word	.LC48
 2950 00dc 00000000 		.word	reprap
 2951 00e0 10000000 		.word	.LC51
 2952 00e4 04000000 		.word	.LC49
 2953 00e8 0C000000 		.word	.LC50
 2954              		.size	_ZN6GCodes28GetAxisPositionsFromEncodersERK9StringRef, .-_ZN6GCodes28GetAxisPositionsFromEnc
 2955              		.section	.text._ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef,"ax",%progbits
 2956              		.align	1
 2957              		.p2align 2,,3
 2958              		.global	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef
 2959              		.syntax unified
 2960              		.thumb
 2961              		.thumb_func
 2962              		.fpu fpv4-sp-d16
 2963              		.type	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef, %function
 2964              	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef:
ARM GAS  /tmp/ccEXGxHv.s 			page 53


 2965              		@ args = 0, pretend = 0, frame = 0
 2966              		@ frame_needed = 0, uses_anonymous_args = 0
 2967 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2968 0004 0C46     		mov	r4, r1
 2969 0006 0646     		mov	r6, r0
 2970 0008 4121     		movs	r1, #65
 2971 000a 2046     		mov	r0, r4
 2972 000c 1546     		mov	r5, r2
 2973 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2974 0012 0028     		cmp	r0, #0
 2975 0014 39D0     		beq	.L593
 2976 0016 2046     		mov	r0, r4
 2977 0018 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2978 001c 4221     		movs	r1, #66
 2979 001e 0746     		mov	r7, r0
 2980 0020 2046     		mov	r0, r4
 2981 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2982 0026 80B3     		cbz	r0, .L593
 2983 0028 2046     		mov	r0, r4
 2984 002a FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2985 002e 431E     		subs	r3, r0, #1
 2986 0030 1F2B     		cmp	r3, #31
 2987 0032 0446     		mov	r4, r0
 2988 0034 29D8     		bhi	.L593
 2989 0036 3068     		ldr	r0, [r6]
 2990 0038 154E     		ldr	r6, .L609
 2991 003a DFF85C80 		ldr	r8, .L609+8
 2992 003e FFF7FEFF 		bl	_ZN8Platform7InitI2cEv
 2993 0042 F9B2     		uxtb	r1, r7
 2994 0044 E2B2     		uxtb	r2, r4
 2995 0046 3046     		mov	r0, r6
 2996 0048 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 2997 004c 1149     		ldr	r1, .L609+4
 2998 004e 2846     		mov	r0, r5
 2999 0050 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3000 0054 FFF7FEFF 		bl	millis
 3001 0058 0746     		mov	r7, r0
 3002 005a 04E0     		b	.L596
 3003              	.L594:
 3004 005c FFF7FEFF 		bl	millis
 3005 0060 381A     		subs	r0, r7, r0
 3006 0062 0228     		cmp	r0, #2
 3007 0064 0ED8     		bhi	.L597
 3008              	.L596:
 3009 0066 3046     		mov	r0, r6
 3010 0068 FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 3011 006c 0028     		cmp	r0, #0
 3012 006e F5D0     		beq	.L594
 3013 0070 3046     		mov	r0, r6
 3014 0072 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 3015 0076 4146     		mov	r1, r8
 3016 0078 C2B2     		uxtb	r2, r0
 3017 007a 2846     		mov	r0, r5
 3018 007c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 3019 0080 013C     		subs	r4, r4, #1
 3020 0082 EBD1     		bne	.L594
 3021              	.L597:
ARM GAS  /tmp/ccEXGxHv.s 			page 54


 3022 0084 0120     		movs	r0, #1
 3023 0086 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3024              	.L593:
 3025 008a 0620     		movs	r0, #6
 3026 008c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3027              	.L610:
 3028              		.align	2
 3029              	.L609:
 3030 0090 00000000 		.word	Wire
 3031 0094 00000000 		.word	.LC52
 3032 0098 0C000000 		.word	.LC53
 3033              		.size	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef, .-_ZN6GCodes10ReceiveI2cER11GCodeBufferRK
 3034              		.section	.rodata
 3035              		.align	2
 3036              		.set	.LANCHOR0,. + 0
 3037              	.LC0:
 3038 0000 0000A041 		.word	1101004800
 3039 0004 0000A041 		.word	1101004800
 3040              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3041              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3042              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3043              	_ZL28cpu_irq_prev_interrupt_state:
 3044 0000 00       		.space	1
 3045              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3046              		.align	2
 3047              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3048              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3049              	_ZL32cpu_irq_critical_section_counter:
 3050 0000 00000000 		.space	4
 3051              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 3052              		.align	2
 3053              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 3054              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 3055              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 3056 0000 00000000 		.space	4
 3057              		.section	.rodata._ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 3058              		.align	2
 3059              	.LC10:
 3060 0000 4572726F 		.ascii	"Error: M557 P parameter is no longer supported. Use"
 3060      723A204D 
 3060      35353720 
 3060      50207061 
 3060      72616D65 
 3061 0033 20612062 		.ascii	" a bed.g file instead.\012\000"
 3061      65642E67 
 3061      2066696C 
 3061      6520696E 
 3061      73746561 
 3062 004b 00       		.space	1
 3063              	.LC11:
 3064 004c 47726964 		.ascii	"Grid: \000"
 3064      3A2000
 3065 0053 00       		.space	1
 3066              	.LC12:
 3067 0054 47726964 		.ascii	"Grid is not defined\000"
 3067      20697320 
 3067      6E6F7420 
ARM GAS  /tmp/ccEXGxHv.s 			page 55


 3067      64656669 
 3067      6E656400 
 3068              	.LC13:
 3069 0068 73706563 		.ascii	"specify both or neither of X and Y in M577\000"
 3069      69667920 
 3069      626F7468 
 3069      206F7220 
 3069      6E656974 
 3070 0093 00       		.space	1
 3071              	.LC14:
 3072 0094 73706563 		.ascii	"specify at least radius or X,Y ranges in M577\000"
 3072      69667920 
 3072      6174206C 
 3072      65617374 
 3072      20726164 
 3073 00c2 0000     		.space	2
 3074              	.LC15:
 3075 00c4 4D353737 		.ascii	"M577 radius must be positive unless X and Y are spe"
 3075      20726164 
 3075      69757320 
 3075      6D757374 
 3075      20626520 
 3076 00f7 63696669 		.ascii	"cified\000"
 3076      656400
 3077 00fe 0000     		.space	2
 3078              	.LC16:
 3079 0100 62616420 		.ascii	"bad grid definition: \000"
 3079      67726964 
 3079      20646566 
 3079      696E6974 
 3079      696F6E3A 
 3080              		.section	.rodata._ZN6GCodes10I2cForwardER11GCodeBufferhPhjRK9StringRef.str1.4,"aMS",%progbits,1
 3081              		.align	2
 3082              	.LC46:
 3083 0000 49324320 		.ascii	"I2C transmission error\000"
 3083      7472616E 
 3083      736D6973 
 3083      73696F6E 
 3083      20657272 
 3084 0017 00       		.space	1
 3085              	.LC47:
 3086 0018 53656E74 		.ascii	"Sent %d bytes to i2c addr 0x%02x\000"
 3086      20256420 
 3086      62797465 
 3086      7320746F 
 3086      20693263 
 3087              		.section	.rodata._ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 3088              		.align	2
 3089              	.LC7:
 3090 0000 41786973 		.ascii	"Axis offsets:\000"
 3090      206F6666 
 3090      73657473 
 3090      3A00
 3091 000e 0000     		.space	2
 3092              	.LC8:
 3093 0010 20256325 		.ascii	" %c%.2f\000"
 3093      2E326600 
ARM GAS  /tmp/ccEXGxHv.s 			page 56


 3094              		.section	.rodata._ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 3095              		.align	2
 3096              	.LC52:
 3097 0000 52656365 		.ascii	"Received\000"
 3097      69766564 
 3097      00
 3098 0009 000000   		.space	3
 3099              	.LC53:
 3100 000c 20253032 		.ascii	" %02x\000"
 3100      7800
 3101              		.section	.rodata._ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 3102              		.align	2
 3103              	.LC39:
 3104 0000 25483A25 		.ascii	"%H:%M:%S\000"
 3104      4D3A2553 
 3104      00
 3105 0009 000000   		.space	3
 3106              	.LC40:
 3107 000c 25592D25 		.ascii	"%Y-%m-%d\000"
 3107      6D2D2564 
 3107      00
 3108 0015 000000   		.space	3
 3109              	.LC41:
 3110 0018 496E7661 		.ascii	"Invalid date format\000"
 3110      6C696420 
 3110      64617465 
 3110      20666F72 
 3110      6D617400 
 3111              	.LC42:
 3112 002c 496E7661 		.ascii	"Invalid time format\000"
 3112      6C696420 
 3112      74696D65 
 3112      20666F72 
 3112      6D617400 
 3113              	.LC43:
 3114 0040 43757272 		.ascii	"Current date and time: %04u-%02u-%02u %02u:%02u:%02"
 3114      656E7420 
 3114      64617465 
 3114      20616E64 
 3114      2074696D 
 3115 0073 7500     		.ascii	"u\000"
 3116 0075 000000   		.space	3
 3117              	.LC44:
 3118 0078 436C6F63 		.ascii	"Clock has not been set\000"
 3118      6B206861 
 3118      73206E6F 
 3118      74206265 
 3118      656E2073 
 3119              		.section	.rodata._ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 3120              		.align	2
 3121              	.LC6:
 3122 0000 42616420 		.ascii	"Bad restore point number\000"
 3122      72657374 
 3122      6F726520 
 3122      706F696E 
 3122      74206E75 
 3123              		.section	.rodata._ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b.str1.4,"aMS",%progbits,1
ARM GAS  /tmp/ccEXGxHv.s 			page 57


 3124              		.align	2
 3125              	.LC17:
 3126 0000 63616E6E 		.ascii	"cannot simulate while a file is being printed\000"
 3126      6F742073 
 3126      696D756C 
 3126      61746520 
 3126      7768696C 
 3127 002e 0000     		.space	2
 3128              	.LC18:
 3129 0030 53696D75 		.ascii	"Simulating print of file %s\000"
 3129      6C617469 
 3129      6E672070 
 3129      72696E74 
 3129      206F6620 
 3130              		.section	.rodata._ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 3131              		.align	2
 3132              	.LC31:
 3133 0000 58595A55 		.ascii	"XYZUVWABCD\000"
 3133      56574142 
 3133      434400
 3134 000b 00       		.space	1
 3135              	.LC32:
 3136 000c 496E7661 		.ascii	"Invalid driver number\000"
 3136      6C696420 
 3136      64726976 
 3136      6572206E 
 3136      756D6265 
 3137 0022 0000     		.space	2
 3138              	.LC33:
 3139 0024 496E7661 		.ascii	"Invalid number of visible axes\000"
 3139      6C696420 
 3139      6E756D62 
 3139      6572206F 
 3139      66207669 
 3140 0043 00       		.space	1
 3141              	.LC34:
 3142 0044 44726976 		.ascii	"Driver assignments:\000"
 3142      65722061 
 3142      73736967 
 3142      6E6D656E 
 3142      74733A00 
 3143              	.LC35:
 3144 0058 25632575 		.ascii	"%c%u\000"
 3144      00
 3145 005d 000000   		.space	3
 3146              	.LC36:
 3147 0060 2C202575 		.ascii	", %u axes visible\000"
 3147      20617865 
 3147      73207669 
 3147      7369626C 
 3147      6500
 3148              		.section	.rodata._ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 3149              		.align	2
 3150              	.LC1:
 3151 0000 496E7661 		.ascii	"Invalid Z probe type\000"
 3151      6C696420 
 3151      5A207072 
ARM GAS  /tmp/ccEXGxHv.s 			page 58


 3151      6F626520 
 3151      74797065 
 3152 0015 000000   		.space	3
 3153              	.LC2:
 3154 0018 54687265 		.ascii	"Threshold %li, trigger height %.2f, offsets X%.1f Y"
 3154      73686F6C 
 3154      6420256C 
 3154      692C2074 
 3154      72696767 
 3155 004b 252E3166 		.ascii	"%.1f\000"
 3155      00
 3156              	.LC3:
 3157 0050 25642028 		.ascii	"%d (%d)\000"
 3157      25642900 
 3158              	.LC4:
 3159 0058 25642028 		.ascii	"%d (%d, %d)\000"
 3159      25642C20 
 3159      25642900 
 3160              	.LC5:
 3161 0064 256400   		.ascii	"%d\000"
 3162              		.section	.rodata._ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 3163              		.align	2
 3164              	.LC45:
 3165 0000 496E7661 		.ascii	"Invalid module number '%lu'\012\000"
 3165      6C696420 
 3165      6D6F6475 
 3165      6C65206E 
 3165      756D6265 
 3166              		.section	.rodata._ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 3167              		.align	2
 3168              	.LC19:
 3169 0000 79657300 		.ascii	"yes\000"
 3170              	.LC20:
 3171 0004 6E6F00   		.ascii	"no\000"
 3172 0007 00       		.space	1
 3173              	.LC21:
 3174 0008 73757370 		.ascii	"suspended\000"
 3174      656E6465 
 3174      6400
 3175 0012 0000     		.space	2
 3176              	.LC22:
 3177 0014 6E6F726D 		.ascii	"normal\000"
 3177      616C00
 3178 001b 00       		.space	1
 3179              	.LC23:
 3180 001c 5A205072 		.ascii	"Z Probe type %u, invert %s, dive height %.1fmm, pro"
 3180      6F626520 
 3180      74797065 
 3180      2025752C 
 3180      20696E76 
 3181 004f 62652073 		.ascii	"be speed %dmm/min, travel speed %dmm/min, recovery "
 3181      70656564 
 3181      2025646D 
 3181      6D2F6D69 
 3181      6E2C2074 
 3182 0082 74696D65 		.ascii	"time %.2f sec, heaters %s, max taps %u, max diff %."
 3182      20252E32 
ARM GAS  /tmp/ccEXGxHv.s 			page 59


 3182      66207365 
 3182      632C2068 
 3182      65617465 
 3183 00b5 326600   		.ascii	"2f\000"
 3184              		.section	.rodata._ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi.str1.4,"aMS",%pro
 3185              		.align	2
 3186              	.LC24:
 3187 0000 42616420 		.ascii	"Bad S parameter in M581 command\012\000"
 3187      53207061 
 3187      72616D65 
 3187      74657220 
 3187      696E204D 
 3188 0021 000000   		.space	3
 3189              	.LC25:
 3190 0024 54726967 		.ascii	"Trigger %u fires on a rising edge on \000"
 3190      67657220 
 3190      25752066 
 3190      69726573 
 3190      206F6E20 
 3191 004a 0000     		.space	2
 3192              	.LC26:
 3193 004c 206F7220 		.ascii	" or a falling edge on \000"
 3193      61206661 
 3193      6C6C696E 
 3193      67206564 
 3193      6765206F 
 3194 0063 00       		.space	1
 3195              	.LC27:
 3196 0064 20656E64 		.ascii	" endstop inputs\000"
 3196      73746F70 
 3196      20696E70 
 3196      75747300 
 3197              	.LC28:
 3198 0074 20776865 		.ascii	" when printing from SD card\000"
 3198      6E207072 
 3198      696E7469 
 3198      6E672066 
 3198      726F6D20 
 3199              	.LC29:
 3200 0090 54726967 		.ascii	"Trigger number out of range\000"
 3200      67657220 
 3200      6E756D62 
 3200      6572206F 
 3200      7574206F 
 3201              	.LC30:
 3202 00ac 4D697373 		.ascii	"Missing T parameter\000"
 3202      696E6720 
 3202      54207061 
 3202      72616D65 
 3202      74657200 
 3203              		.section	.rodata._ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb.str1.4,"aMS",%
 3204              		.align	2
 3205              	.LC9:
 3206 0000 4F726967 		.ascii	"Origin of workplace %lu:\000"
 3206      696E206F 
 3206      6620776F 
 3206      726B706C 
ARM GAS  /tmp/ccEXGxHv.s 			page 60


 3206      61636520 
 3207              		.section	.rodata._ZN6GCodes28GetAxisPositionsFromEncodersERK9StringRef.str1.4,"aMS",%progbits,1
 3208              		.align	2
 3209              	.LC48:
 3210 0000 5B00     		.ascii	"[\000"
 3211 0002 0000     		.space	2
 3212              	.LC49:
 3213 0004 252E3266 		.ascii	"%.2f\000"
 3213      00
 3214 0009 000000   		.space	3
 3215              	.LC50:
 3216 000c 2C2000   		.ascii	", \000"
 3217 000f 00       		.space	1
 3218              	.LC51:
 3219 0010 205D2C0A 		.ascii	" ],\012\000"
 3219      00
 3220              		.section	.rodata._ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 3221              		.align	2
 3222              	.LC37:
 3223 0000 4E6F2074 		.ascii	"No tool selected!\000"
 3223      6F6F6C20 
 3223      73656C65 
 3223      63746564 
 3223      2100
 3224 0012 0000     		.space	2
 3225              	.LC38:
 3226 0014 496E7661 		.ascii	"Invalid endstop number\000"
 3226      6C696420 
 3226      656E6473 
 3226      746F7020 
 3226      6E756D62 
 3227              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
