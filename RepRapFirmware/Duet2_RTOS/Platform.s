ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 1


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
  13              		.file	"Platform.cpp"
  14              		.text
  15              		.section	.text._ZNK8Platform19AnyAxisMotorStalledEj.part.22,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK8Platform19AnyAxisMotorStalledEj.part.22, %function
  23              	_ZNK8Platform19AnyAxisMotorStalledEj.part.22:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 01EB4101 		add	r1, r1, r1, lsl #1
  27 0004 8900     		lsls	r1, r1, #2
  28 0006 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  29 0008 4718     		adds	r7, r0, r1
  30 000a D7F82C33 		ldr	r3, [r7, #812]
  31 000e BBB1     		cbz	r3, .L2
  32 0010 01F54C71 		add	r1, r1, #816
  33 0014 0646     		mov	r6, r0
  34 0016 4518     		adds	r5, r0, r1
  35 0018 0024     		movs	r4, #0
  36 001a 03E0     		b	.L4
  37              	.L6:
  38 001c D7F82C33 		ldr	r3, [r7, #812]
  39 0020 A342     		cmp	r3, r4
  40 0022 0DD9     		bls	.L2
  41              	.L4:
  42 0024 15F8010B 		ldrb	r0, [r5], #1	@ zero_extendqisi2
  43 0028 D6F81C34 		ldr	r3, [r6, #1052]
  44 002c 9842     		cmp	r0, r3
  45 002e 04F10104 		add	r4, r4, #1
  46 0032 F3D2     		bcs	.L6
  47 0034 FFF7FEFF 		bl	_ZN12SmartDrivers13GetLiveStatusEj
  48 0038 C307     		lsls	r3, r0, #31
  49 003a EFD5     		bpl	.L6
  50 003c 0120     		movs	r0, #1
  51 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  52              	.L2:
  53 0040 0020     		movs	r0, #0
  54 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  55              		.size	_ZNK8Platform19AnyAxisMotorStalledEj.part.22, .-_ZNK8Platform19AnyAxisMotorStalledEj.part.22
  56              		.section	.text._ZN8Platform13DisableDriverEj.part.23,"ax",%progbits
  57              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 2


  58              		.p2align 2,,3
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu fpv4-sp-d16
  63              		.type	_ZN8Platform13DisableDriverEj.part.23, %function
  64              	_ZN8Platform13DisableDriverEj.part.23:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67 0000 10B5     		push	{r4, lr}
  68 0002 D0F81C24 		ldr	r2, [r0, #1052]
  69 0006 8A42     		cmp	r2, r1
  70 0008 0446     		mov	r4, r0
  71 000a 08D9     		bls	.L14
  72 000c 0846     		mov	r0, r1
  73 000e 0444     		add	r4, r4, r0
  74 0010 0021     		movs	r1, #0
  75 0012 FFF7FEFF 		bl	_ZN12SmartDrivers11EnableDriveEjb
  76 0016 0023     		movs	r3, #0
  77 0018 84F80031 		strb	r3, [r4, #256]
  78 001c 10BD     		pop	{r4, pc}
  79              	.L14:
  80 001e 0C44     		add	r4, r4, r1
  81 0020 064A     		ldr	r2, .L17
  82 0022 94F92431 		ldrsb	r3, [r4, #292]
  83 0026 505C     		ldrb	r0, [r2, r1]	@ zero_extendqisi2
  84 0028 002B     		cmp	r3, #0
  85 002a CCBF     		ite	gt
  86 002c 0021     		movgt	r1, #0
  87 002e 0121     		movle	r1, #1
  88 0030 FFF7FEFF 		bl	digitalWrite
  89 0034 0023     		movs	r3, #0
  90 0036 84F80031 		strb	r3, [r4, #256]
  91 003a 10BD     		pop	{r4, pc}
  92              	.L18:
  93              		.align	2
  94              	.L17:
  95 003c 00000000 		.word	.LANCHOR0
  96              		.size	_ZN8Platform13DisableDriverEj.part.23, .-_ZN8Platform13DisableDriverEj.part.23
  97              		.section	.text._ZN8Platform18UpdateMotorCurrentEj.part.24,"ax",%progbits
  98              		.align	1
  99              		.p2align 2,,3
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu fpv4-sp-d16
 104              		.type	_ZN8Platform18UpdateMotorCurrentEj.part.24, %function
 105              	_ZN8Platform18UpdateMotorCurrentEj.part.24:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108              		@ link register save eliminated.
 109 0000 4218     		adds	r2, r0, r1
 110 0002 00EB8103 		add	r3, r0, r1, lsl #2
 111 0006 92F80021 		ldrb	r2, [r2, #256]	@ zero_extendqisi2
 112 000a 93EDB30A 		vldr.32	s0, [r3, #716]
 113 000e 012A     		cmp	r2, #1
 114 0010 06BF     		itte	eq
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 3


 115 0012 00F58363 		addeq	r3, r0, #1048
 116 0016 D3ED007A 		vldreq.32	s15, [r3]
 117 001a D3EDBF7A 		vldrne.32	s15, [r3, #764]
 118 001e D0F81C34 		ldr	r3, [r0, #1052]
 119 0022 9942     		cmp	r1, r3
 120 0024 20EE270A 		vmul.f32	s0, s0, s15
 121 0028 00D3     		bcc	.L23
 122 002a 7047     		bx	lr
 123              	.L23:
 124 002c 0846     		mov	r0, r1
 125 002e FFF7FEBF 		b	_ZN12SmartDrivers10SetCurrentEjf
 126              		.size	_ZN8Platform18UpdateMotorCurrentEj.part.24, .-_ZN8Platform18UpdateMotorCurrentEj.part.24
 127 0032 00BF     		.section	.text._ZN8Platform16SetDriverCurrentEjfi.part.26,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv4-sp-d16
 134              		.type	_ZN8Platform16SetDriverCurrentEjfi.part.26, %function
 135              	_ZN8Platform16SetDriverCurrentEjfi.part.26:
 136              		@ args = 0, pretend = 0, frame = 8
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138 0000 10B5     		push	{r4, lr}
 139 0002 40F29133 		movw	r3, #913
 140 0006 9A42     		cmp	r2, r3
 141 0008 82B0     		sub	sp, sp, #8
 142 000a 0446     		mov	r4, r0
 143 000c 22D0     		beq	.L26
 144 000e 40F29533 		movw	r3, #917
 145 0012 9A42     		cmp	r2, r3
 146 0014 13D0     		beq	.L27
 147 0016 40F28A33 		movw	r3, #906
 148 001a 9A42     		cmp	r2, r3
 149 001c 05D0     		beq	.L30
 150 001e 2046     		mov	r0, r4
 151 0020 02B0     		add	sp, sp, #8
 152              		@ sp needed
 153 0022 BDE81040 		pop	{r4, lr}
 154 0026 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.24
 155              	.L30:
 156 002a 00EB8103 		add	r3, r0, r1, lsl #2
 157 002e 2046     		mov	r0, r4
 158 0030 83EDB30A 		vstr.32	s0, [r3, #716]
 159 0034 02B0     		add	sp, sp, #8
 160              		@ sp needed
 161 0036 BDE81040 		pop	{r4, lr}
 162 003a FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.24
 163              	.L27:
 164 003e 0846     		mov	r0, r1
 165 0040 0191     		str	r1, [sp, #4]
 166 0042 FFF7FEFF 		bl	_ZN12SmartDrivers27SetStandstillCurrentPercentEjf
 167 0046 0199     		ldr	r1, [sp, #4]
 168 0048 2046     		mov	r0, r4
 169 004a 02B0     		add	sp, sp, #8
 170              		@ sp needed
 171 004c BDE81040 		pop	{r4, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 4


 172 0050 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.24
 173              	.L26:
 174 0054 9FED067A 		vldr.32	s14, .L31
 175 0058 60EE077A 		vmul.f32	s15, s0, s14
 176 005c 00EB8103 		add	r3, r0, r1, lsl #2
 177 0060 2046     		mov	r0, r4
 178 0062 C3EDBF7A 		vstr.32	s15, [r3, #764]
 179 0066 02B0     		add	sp, sp, #8
 180              		@ sp needed
 181 0068 BDE81040 		pop	{r4, lr}
 182 006c FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.24
 183              	.L32:
 184              		.align	2
 185              	.L31:
 186 0070 0AD7233C 		.word	1008981770
 187              		.size	_ZN8Platform16SetDriverCurrentEjfi.part.26, .-_ZN8Platform16SetDriverCurrentEjfi.part.26
 188              		.section	.text._ZN8Platform14AppendAuxReplyEPKcb.part.28,"ax",%progbits
 189              		.align	1
 190              		.p2align 2,,3
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu fpv4-sp-d16
 195              		.type	_ZN8Platform14AppendAuxReplyEPKcb.part.28, %function
 196              	_ZN8Platform14AppendAuxReplyEPKcb.part.28:
 197              		@ args = 0, pretend = 0, frame = 16
 198              		@ frame_needed = 0, uses_anonymous_args = 0
 199 0000 70B5     		push	{r4, r5, r6, lr}
 200 0002 84B0     		sub	sp, sp, #16
 201 0004 1546     		mov	r5, r2
 202 0006 0446     		mov	r4, r0
 203 0008 0E46     		mov	r6, r1
 204 000a 4FF0FF32 		mov	r2, #-1
 205 000e 00F6FC21 		addw	r1, r0, #2812
 206 0012 02A8     		add	r0, sp, #8
 207 0014 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 208 0018 C5B9     		cbnz	r5, .L45
 209 001a D4F85C0B 		ldr	r0, [r4, #2908]
 210 001e 60B1     		cbz	r0, .L46
 211              	.L37:
 212 0020 D4F8603B 		ldr	r3, [r4, #2912]
 213 0024 0133     		adds	r3, r3, #1
 214 0026 3146     		mov	r1, r6
 215 0028 C4F8603B 		str	r3, [r4, #2912]
 216 002c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 217              	.L36:
 218 0030 02A8     		add	r0, sp, #8
 219 0032 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 220 0036 04B0     		add	sp, sp, #16
 221              		@ sp needed
 222 0038 70BD     		pop	{r4, r5, r6, pc}
 223              	.L46:
 224 003a 04F65C30 		addw	r0, r4, #2908
 225 003e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 226 0042 0028     		cmp	r0, #0
 227 0044 F4D0     		beq	.L36
 228 0046 D4F85C0B 		ldr	r0, [r4, #2908]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 5


 229 004a E9E7     		b	.L37
 230              	.L45:
 231 004c 01A8     		add	r0, sp, #4
 232 004e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 233 0052 0028     		cmp	r0, #0
 234 0054 ECD0     		beq	.L36
 235 0056 3146     		mov	r1, r6
 236 0058 0198     		ldr	r0, [sp, #4]
 237 005a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 238 005e 04F6E820 		addw	r0, r4, #2792
 239 0062 0199     		ldr	r1, [sp, #4]
 240 0064 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 241 0068 02A8     		add	r0, sp, #8
 242 006a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 243 006e 04B0     		add	sp, sp, #16
 244              		@ sp needed
 245 0070 70BD     		pop	{r4, r5, r6, pc}
 246              		.size	_ZN8Platform14AppendAuxReplyEPKcb.part.28, .-_ZN8Platform14AppendAuxReplyEPKcb.part.28
 247 0072 00BF     		.section	.text._ZN8Platform11AtxPowerOffEb.part.29,"ax",%progbits
 248              		.align	1
 249              		.p2align 2,,3
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv4-sp-d16
 254              		.type	_ZN8Platform11AtxPowerOffEb.part.29, %function
 255              	_ZN8Platform11AtxPowerOffEb.part.29:
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258 0000 836B     		ldr	r3, [r0, #56]
 259 0002 C3B1     		cbz	r3, .L53
 260 0004 D0B5     		push	{r4, r6, r7, lr}
 261 0006 00F62842 		addw	r2, r0, #3112
 262 000a D2E90067 		ldrd	r6, [r2]
 263 000e 82B0     		sub	sp, sp, #8
 264 0010 0446     		mov	r4, r0
 265 0012 0B4A     		ldr	r2, .L56
 266 0014 0092     		str	r2, [sp]
 267 0016 1846     		mov	r0, r3
 268 0018 3246     		mov	r2, r6
 269 001a 3B46     		mov	r3, r7
 270 001c FFF7FEFF 		bl	_ZN6Logger10LogMessageExPKc
 271 0020 A06B     		ldr	r0, [r4, #56]
 272 0022 0121     		movs	r1, #1
 273 0024 FFF7FEFF 		bl	_ZN6Logger5FlushEb
 274 0028 0021     		movs	r1, #0
 275 002a 4F20     		movs	r0, #79
 276 002c 02B0     		add	sp, sp, #8
 277              		@ sp needed
 278 002e BDE8D040 		pop	{r4, r6, r7, lr}
 279 0032 FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 280              	.L53:
 281 0036 0021     		movs	r1, #0
 282 0038 4F20     		movs	r0, #79
 283 003a FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 284              	.L57:
 285 003e 00BF     		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 6


 286              	.L56:
 287 0040 00000000 		.word	.LC8
 288              		.size	_ZN8Platform11AtxPowerOffEb.part.29, .-_ZN8Platform11AtxPowerOffEb.part.29
 289              		.section	.text.UrgentInit,"ax",%progbits
 290              		.align	1
 291              		.p2align 2,,3
 292              		.global	UrgentInit
 293              		.syntax unified
 294              		.thumb
 295              		.thumb_func
 296              		.fpu fpv4-sp-d16
 297              		.type	UrgentInit, %function
 298              	UrgentInit:
 299              		@ args = 0, pretend = 0, frame = 0
 300              		@ frame_needed = 0, uses_anonymous_args = 0
 301 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 302 0004 104C     		ldr	r4, .L63
 303 0006 DFF84880 		ldr	r8, .L63+8
 304 000a 104F     		ldr	r7, .L63+4
 305 000c 04F10B09 		add	r9, r4, #11
 306 0010 4E26     		movs	r6, #78
 307 0012 4B25     		movs	r5, #75
 308 0014 4620     		movs	r0, #70
 309 0016 05E0     		b	.L60
 310              	.L62:
 311 0018 14F8010F 		ldrb	r0, [r4, #1]!	@ zero_extendqisi2
 312 001c 18F8015F 		ldrb	r5, [r8, #1]!	@ zero_extendqisi2
 313 0020 17F8016F 		ldrb	r6, [r7, #1]!	@ zero_extendqisi2
 314              	.L60:
 315 0024 0022     		movs	r2, #0
 316 0026 0321     		movs	r1, #3
 317 0028 FFF7FEFF 		bl	pinModeDuet
 318 002c 2846     		mov	r0, r5
 319 002e 0022     		movs	r2, #0
 320 0030 0321     		movs	r1, #3
 321 0032 FFF7FEFF 		bl	pinModeDuet
 322 0036 3046     		mov	r0, r6
 323 0038 0022     		movs	r2, #0
 324 003a 0421     		movs	r1, #4
 325 003c FFF7FEFF 		bl	pinModeDuet
 326 0040 4C45     		cmp	r4, r9
 327 0042 E9D1     		bne	.L62
 328 0044 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 329              	.L64:
 330              		.align	2
 331              	.L63:
 332 0048 00000000 		.word	.LANCHOR1
 333 004c 00000000 		.word	.LANCHOR0
 334 0050 00000000 		.word	.LANCHOR2
 335              		.size	UrgentInit, .-UrgentInit
 336              		.section	.text._ZN8PlatformC2Ev,"ax",%progbits
 337              		.align	1
 338              		.p2align 2,,3
 339              		.global	_ZN8PlatformC2Ev
 340              		.syntax unified
 341              		.thumb
 342              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 7


 343              		.fpu fpv4-sp-d16
 344              		.type	_ZN8PlatformC2Ev, %function
 345              	_ZN8PlatformC2Ev:
 346              		@ args = 0, pretend = 0, frame = 0
 347              		@ frame_needed = 0, uses_anonymous_args = 0
 348 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 349 0004 0122     		movs	r2, #1
 350 0006 0446     		mov	r4, r0
 351 0008 0021     		movs	r1, #0
 352 000a 0025     		movs	r5, #0
 353 000c FFF7FEFF 		bl	_ZN6ODriveC1Ejj
 354 0010 0127     		movs	r7, #1
 355 0012 04F11C00 		add	r0, r4, #28
 356 0016 0322     		movs	r2, #3
 357 0018 0221     		movs	r1, #2
 358 001a FFF7FEFF 		bl	_ZN6ODriveC1Ejj
 359 001e 2946     		mov	r1, r5
 360 0020 3222     		movs	r2, #50
 361 0022 A563     		str	r5, [r4, #56]
 362 0024 C4E93455 		strd	r5, r5, [r4, #208]
 363 0028 C4F8D850 		str	r5, [r4, #216]
 364 002c 84F8FA50 		strb	r5, [r4, #250]
 365 0030 C4F8FC50 		str	r5, [r4, #252]
 366 0034 84F8F870 		strb	r7, [r4, #248]
 367 0038 04F59E70 		add	r0, r4, #316
 368 003c FFF7FEFF 		bl	memset
 369 0040 84F84054 		strb	r5, [r4, #1088]
 370 0044 84F84854 		strb	r5, [r4, #1096]
 371 0048 84F85054 		strb	r5, [r4, #1104]
 372 004c 84F85854 		strb	r5, [r4, #1112]
 373 0050 84F85C54 		strb	r5, [r4, #1116]
 374 0054 04F59060 		add	r0, r4, #1152
 375 0058 FFF7FEFF 		bl	_ZN16ZProbeProgrammerC1Ev
 376              		.syntax unified
 377              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 378 005c EFF31083 		MRS r3, primask
 379              	@ 0 "" 2
 380              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 381 0060 72B6     		cpsid i
 382              	@ 0 "" 2
 383              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 384 0062 BFF35F8F 		dmb
 385              	@ 0 "" 2
 386              		.thumb
 387              		.syntax unified
 388 0066 584E     		ldr	r6, .L78
 389 0068 3570     		strb	r5, [r6]
 390 006a C4F8C054 		str	r5, [r4, #1216]
 391 006e C4F8BC54 		str	r5, [r4, #1212]
 392 0072 84F8C454 		strb	r5, [r4, #1220]
 393 0076 A4F8AC54 		strh	r5, [r4, #1196]	@ movhi
 394 007a A4F8AE54 		strh	r5, [r4, #1198]	@ movhi
 395 007e A4F8B054 		strh	r5, [r4, #1200]	@ movhi
 396 0082 A4F8B254 		strh	r5, [r4, #1202]	@ movhi
 397 0086 A4F8B454 		strh	r5, [r4, #1204]	@ movhi
 398 008a A4F8B654 		strh	r5, [r4, #1206]	@ movhi
 399 008e A4F8B854 		strh	r5, [r4, #1208]	@ movhi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 8


 400 0092 A4F8BA54 		strh	r5, [r4, #1210]	@ movhi
 401 0096 1BB9     		cbnz	r3, .L66
 402 0098 3770     		strb	r7, [r6]
 403              		.syntax unified
 404              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 405 009a BFF35F8F 		dmb
 406              	@ 0 "" 2
 407              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 408 009e 62B6     		cpsie i
 409              	@ 0 "" 2
 410              		.thumb
 411              		.syntax unified
 412              	.L66:
 413              		.syntax unified
 414              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 415 00a0 EFF31082 		MRS r2, primask
 416              	@ 0 "" 2
 417              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 418 00a4 72B6     		cpsid i
 419              	@ 0 "" 2
 420              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 421 00a6 BFF35F8F 		dmb
 422              	@ 0 "" 2
 423              		.thumb
 424              		.syntax unified
 425 00aa 0023     		movs	r3, #0
 426 00ac 3370     		strb	r3, [r6]
 427 00ae C4F8DC34 		str	r3, [r4, #1244]
 428 00b2 C4F8D834 		str	r3, [r4, #1240]
 429 00b6 84F8E034 		strb	r3, [r4, #1248]
 430 00ba A4F8C834 		strh	r3, [r4, #1224]	@ movhi
 431 00be A4F8CA34 		strh	r3, [r4, #1226]	@ movhi
 432 00c2 A4F8CC34 		strh	r3, [r4, #1228]	@ movhi
 433 00c6 A4F8CE34 		strh	r3, [r4, #1230]	@ movhi
 434 00ca A4F8D034 		strh	r3, [r4, #1232]	@ movhi
 435 00ce A4F8D234 		strh	r3, [r4, #1234]	@ movhi
 436 00d2 A4F8D434 		strh	r3, [r4, #1236]	@ movhi
 437 00d6 A4F8D634 		strh	r3, [r4, #1238]	@ movhi
 438 00da 22B9     		cbnz	r2, .L67
 439 00dc 0123     		movs	r3, #1
 440 00de 3370     		strb	r3, [r6]
 441              		.syntax unified
 442              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 443 00e0 BFF35F8F 		dmb
 444              	@ 0 "" 2
 445              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 446 00e4 62B6     		cpsie i
 447              	@ 0 "" 2
 448              		.thumb
 449              		.syntax unified
 450              	.L67:
 451 00e6 04F2E442 		addw	r2, r4, #1252
 452 00ea 04F5F265 		add	r5, r4, #1936
 453 00ee 0021     		movs	r1, #0
 454 00f0 0127     		movs	r7, #1
 455              	.L70:
 456              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 9


 457              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 458 00f2 EFF31080 		MRS r0, primask
 459              	@ 0 "" 2
 460              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 461 00f6 72B6     		cpsid i
 462              	@ 0 "" 2
 463              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 464 00f8 BFF35F8F 		dmb
 465              	@ 0 "" 2
 466              		.thumb
 467              		.syntax unified
 468 00fc 0023     		movs	r3, #0
 469 00fe 3170     		strb	r1, [r6]
 470 0100 5164     		str	r1, [r2, #68]
 471 0102 1164     		str	r1, [r2, #64]
 472 0104 82F84810 		strb	r1, [r2, #72]
 473              	.L68:
 474 0108 22F81310 		strh	r1, [r2, r3, lsl #1]	@ movhi
 475 010c 0133     		adds	r3, r3, #1
 476 010e 202B     		cmp	r3, #32
 477 0110 FAD1     		bne	.L68
 478 0112 18B9     		cbnz	r0, .L69
 479 0114 3770     		strb	r7, [r6]
 480              		.syntax unified
 481              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 482 0116 BFF35F8F 		dmb
 483              	@ 0 "" 2
 484              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 485 011a 62B6     		cpsie i
 486              	@ 0 "" 2
 487              		.thumb
 488              		.syntax unified
 489              	.L69:
 490 011c 4C32     		adds	r2, r2, #76
 491 011e AA42     		cmp	r2, r5
 492 0120 E7D1     		bne	.L70
 493 0122 04F63C03 		addw	r3, r4, #2108
 494 0126 04F6C422 		addw	r2, r4, #2756
 495 012a 0026     		movs	r6, #0
 496              	.L71:
 497 012c 83F82D60 		strb	r6, [r3, #45]
 498 0130 4833     		adds	r3, r3, #72
 499 0132 9342     		cmp	r3, r2
 500 0134 FAD1     		bne	.L71
 501 0136 C4F8C46A 		str	r6, [r4, #2756]
 502 013a 04F6C820 		addw	r0, r4, #2760
 503 013e DFF88C90 		ldr	r9, .L78+4
 504 0142 FFF7FEFF 		bl	_ZN5TachoC1Ev
 505 0146 0027     		movs	r7, #0
 506 0148 C4F8E86A 		str	r6, [r4, #2792]
 507 014c C4F8FC6A 		str	r6, [r4, #2812]
 508 0150 C4F85C6B 		str	r6, [r4, #2908]
 509 0154 C4F8686B 		str	r6, [r4, #2920]
 510 0158 C4F87C6B 		str	r6, [r4, #2940]
 511 015c 84F8EA6B 		strb	r6, [r4, #3050]
 512 0160 C4F8F06B 		str	r6, [r4, #3056]
 513 0164 C4F8206C 		str	r6, [r4, #3104]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 10


 514 0168 04F63445 		addw	r5, r4, #3124
 515 016c 04F6B448 		addw	r8, r4, #3252
 516 0170 0026     		movs	r6, #0
 517              	.L72:
 518 0172 2846     		mov	r0, r5
 519 0174 FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 520 0178 A81D     		adds	r0, r5, #6
 521 017a FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 522 017e 4FF0FF33 		mov	r3, #-1
 523 0182 2E73     		strb	r6, [r5, #12]
 524 0184 2F61     		str	r7, [r5, #16]	@ float
 525 0186 6F61     		str	r7, [r5, #20]	@ float
 526 0188 C5F81890 		str	r9, [r5, #24]	@ float
 527 018c EB61     		str	r3, [r5, #28]
 528 018e 2035     		adds	r5, r5, #32
 529 0190 A845     		cmp	r8, r5
 530 0192 EED1     		bne	.L72
 531 0194 04F6B840 		addw	r0, r4, #3256
 532 0198 FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 533 019c 04F6BE40 		addw	r0, r4, #3262
 534 01a0 FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 535 01a4 84F84D6D 		strb	r6, [r4, #3405]
 536 01a8 84F84E6D 		strb	r6, [r4, #3406]
 537 01ac 41F24820 		movw	r0, #4680
 538 01b0 FFF7FEFF 		bl	_Znwj
 539 01b4 2146     		mov	r1, r4
 540 01b6 0546     		mov	r5, r0
 541 01b8 FFF7FEFF 		bl	_ZN11MassStorageC1EP8Platform
 542 01bc C4F8DC5B 		str	r5, [r4, #3036]
 543 01c0 2046     		mov	r0, r4
 544 01c2 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 545              	.L79:
 546 01c6 00BF     		.align	2
 547              	.L78:
 548 01c8 00000000 		.word	g_interrupt_enabled
 549 01cc 00401C46 		.word	1176256512
 550              		.size	_ZN8PlatformC2Ev, .-_ZN8PlatformC2Ev
 551              		.global	_ZN8PlatformC1Ev
 552              		.thumb_set _ZN8PlatformC1Ev,_ZN8PlatformC2Ev
 553              		.section	.text._ZN8Platform17SetZProbeDefaultsEv,"ax",%progbits
 554              		.align	1
 555              		.p2align 2,,3
 556              		.global	_ZN8Platform17SetZProbeDefaultsEv
 557              		.syntax unified
 558              		.thumb
 559              		.thumb_func
 560              		.fpu fpv4-sp-d16
 561              		.type	_ZN8Platform17SetZProbeDefaultsEv, %function
 562              	_ZN8Platform17SetZProbeDefaultsEv:
 563              		@ args = 0, pretend = 0, frame = 0
 564              		@ frame_needed = 0, uses_anonymous_args = 0
 565 0000 10B5     		push	{r4, lr}
 566 0002 2DED028B 		vpush.64	{d8}
 567 0006 9FED0C8A 		vldr.32	s16, .L82
 568 000a 9FED0C0A 		vldr.32	s0, .L82+4
 569 000e 0446     		mov	r4, r0
 570 0010 3C30     		adds	r0, r0, #60
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 11


 571 0012 FFF7FEFF 		bl	_ZN6ZProbe4InitEf
 572 0016 04F16C00 		add	r0, r4, #108
 573 001a B0EE480A 		vmov.f32	s0, s16
 574 001e FFF7FEFF 		bl	_ZN6ZProbe4InitEf
 575 0022 B0EE480A 		vmov.f32	s0, s16
 576 0026 BDEC028B 		vldm	sp!, {d8}
 577 002a 04F19C00 		add	r0, r4, #156
 578 002e BDE81040 		pop	{r4, lr}
 579 0032 FFF7FEBF 		b	_ZN6ZProbe4InitEf
 580              	.L83:
 581 0036 00BF     		.align	2
 582              	.L82:
 583 0038 3333333F 		.word	1060320051
 584 003c 00000000 		.word	0
 585              		.size	_ZN8Platform17SetZProbeDefaultsEv, .-_ZN8Platform17SetZProbeDefaultsEv
 586              		.section	.text._ZN8Platform10InitZProbeEv,"ax",%progbits
 587              		.align	1
 588              		.p2align 2,,3
 589              		.global	_ZN8Platform10InitZProbeEv
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu fpv4-sp-d16
 594              		.type	_ZN8Platform10InitZProbeEv, %function
 595              	_ZN8Platform10InitZProbeEv:
 596              		@ args = 0, pretend = 0, frame = 0
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598 0000 10B5     		push	{r4, lr}
 599 0002 0446     		mov	r4, r0
 600              		.syntax unified
 601              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 602 0004 EFF31081 		MRS r1, primask
 603              	@ 0 "" 2
 604              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 605 0008 72B6     		cpsid i
 606              	@ 0 "" 2
 607              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 608 000a BFF35F8F 		dmb
 609              	@ 0 "" 2
 610              		.thumb
 611              		.syntax unified
 612 000e 514A     		ldr	r2, .L101
 613 0010 0023     		movs	r3, #0
 614 0012 1370     		strb	r3, [r2]
 615 0014 C0F8C034 		str	r3, [r0, #1216]
 616 0018 C0F8BC34 		str	r3, [r0, #1212]
 617 001c 80F8C434 		strb	r3, [r0, #1220]
 618 0020 A0F8AC34 		strh	r3, [r0, #1196]	@ movhi
 619 0024 A0F8AE34 		strh	r3, [r0, #1198]	@ movhi
 620 0028 A0F8B034 		strh	r3, [r0, #1200]	@ movhi
 621 002c A0F8B234 		strh	r3, [r0, #1202]	@ movhi
 622 0030 A0F8B434 		strh	r3, [r0, #1204]	@ movhi
 623 0034 A0F8B634 		strh	r3, [r0, #1206]	@ movhi
 624 0038 A0F8B834 		strh	r3, [r0, #1208]	@ movhi
 625 003c A0F8BA34 		strh	r3, [r0, #1210]	@ movhi
 626 0040 21B9     		cbnz	r1, .L85
 627 0042 0123     		movs	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 12


 628 0044 1370     		strb	r3, [r2]
 629              		.syntax unified
 630              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 631 0046 BFF35F8F 		dmb
 632              	@ 0 "" 2
 633              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 634 004a 62B6     		cpsie i
 635              	@ 0 "" 2
 636              		.thumb
 637              		.syntax unified
 638              	.L85:
 639              		.syntax unified
 640              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 641 004c EFF31081 		MRS r1, primask
 642              	@ 0 "" 2
 643              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 644 0050 72B6     		cpsid i
 645              	@ 0 "" 2
 646              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 647 0052 BFF35F8F 		dmb
 648              	@ 0 "" 2
 649              		.thumb
 650              		.syntax unified
 651 0056 0023     		movs	r3, #0
 652 0058 1370     		strb	r3, [r2]
 653 005a C4F8DC34 		str	r3, [r4, #1244]
 654 005e C4F8D834 		str	r3, [r4, #1240]
 655 0062 84F8E034 		strb	r3, [r4, #1248]
 656 0066 A4F8C834 		strh	r3, [r4, #1224]	@ movhi
 657 006a A4F8CA34 		strh	r3, [r4, #1226]	@ movhi
 658 006e A4F8CC34 		strh	r3, [r4, #1228]	@ movhi
 659 0072 A4F8CE34 		strh	r3, [r4, #1230]	@ movhi
 660 0076 A4F8D034 		strh	r3, [r4, #1232]	@ movhi
 661 007a A4F8D234 		strh	r3, [r4, #1234]	@ movhi
 662 007e A4F8D434 		strh	r3, [r4, #1236]	@ movhi
 663 0082 A4F8D634 		strh	r3, [r4, #1238]	@ movhi
 664 0086 21B9     		cbnz	r1, .L86
 665 0088 0123     		movs	r3, #1
 666 008a 1370     		strb	r3, [r2]
 667              		.syntax unified
 668              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 669 008c BFF35F8F 		dmb
 670              	@ 0 "" 2
 671              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 672 0090 62B6     		cpsie i
 673              	@ 0 "" 2
 674              		.thumb
 675              		.syntax unified
 676              	.L86:
 677 0092 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 678 0096 94F9E90B 		ldrsb	r0, [r4, #3049]
 679 009a 2222     		movs	r2, #34
 680 009c 013B     		subs	r3, r3, #1
 681 009e 84F87D24 		strb	r2, [r4, #1149]
 682 00a2 032B     		cmp	r3, #3
 683 00a4 4AD8     		bhi	.L87
 684 00a6 DFE803F0 		tbb	[pc, r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 13


 685              	.L89:
 686 00aa 38       		.byte	(.L88-.L89)/2
 687 00ab 38       		.byte	(.L88-.L89)/2
 688 00ac 27       		.byte	(.L90-.L89)/2
 689 00ad 02       		.byte	(.L91-.L89)/2
 690              		.p2align 1
 691              	.L91:
 692 00ae 0021     		movs	r1, #0
 693 00b0 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 694 00b4 0022     		movs	r2, #0
 695 00b6 0121     		movs	r1, #1
 696 00b8 94F87C04 		ldrb	r0, [r4, #1148]	@ zero_extendqisi2
 697 00bc FFF7FEFF 		bl	pinModeDuet
 698 00c0 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 699 00c4 0A2B     		cmp	r3, #10
 700 00c6 08D8     		bhi	.L92
 701 00c8 0122     		movs	r2, #1
 702 00ca 02FA03F3 		lsl	r3, r2, r3
 703 00ce 40F22672 		movw	r2, #1830
 704 00d2 1342     		tst	r3, r2
 705 00d4 38D1     		bne	.L93
 706 00d6 1B07     		lsls	r3, r3, #28
 707 00d8 39D4     		bmi	.L94
 708              	.L92:
 709 00da 04F13C03 		add	r3, r4, #60
 710              	.L95:
 711 00de 93F82D30 		ldrb	r3, [r3, #45]	@ zero_extendqisi2
 712 00e2 0B2B     		cmp	r3, #11
 713 00e4 98BF     		it	ls
 714 00e6 1B19     		addls	r3, r3, r4
 715 00e8 4FF00002 		mov	r2, #0
 716 00ec 94BF     		ite	ls
 717 00ee 93F86E01 		ldrbls	r0, [r3, #366]	@ zero_extendqisi2
 718 00f2 FF20     		movhi	r0, #255
 719 00f4 1146     		mov	r1, r2
 720 00f6 06E0     		b	.L100
 721              	.L90:
 722 00f8 0121     		movs	r1, #1
 723 00fa FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 724 00fe 0022     		movs	r2, #0
 725 0100 0521     		movs	r1, #5
 726              	.L99:
 727 0102 94F87C04 		ldrb	r0, [r4, #1148]	@ zero_extendqisi2
 728              	.L100:
 729 0106 FFF7FEFF 		bl	pinModeDuet
 730 010a 94F87D04 		ldrb	r0, [r4, #1149]	@ zero_extendqisi2
 731 010e 0022     		movs	r2, #0
 732 0110 0321     		movs	r1, #3
 733 0112 BDE81040 		pop	{r4, lr}
 734 0116 FFF7FEBF 		b	pinModeDuet
 735              	.L88:
 736 011a 0121     		movs	r1, #1
 737 011c FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 738 0120 94F87C04 		ldrb	r0, [r4, #1148]	@ zero_extendqisi2
 739 0124 0022     		movs	r2, #0
 740 0126 0521     		movs	r1, #5
 741 0128 FFF7FEFF 		bl	pinModeDuet
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 14


 742 012c 94F87D04 		ldrb	r0, [r4, #1149]	@ zero_extendqisi2
 743 0130 0022     		movs	r2, #0
 744 0132 0421     		movs	r1, #4
 745 0134 BDE81040 		pop	{r4, lr}
 746 0138 FFF7FEBF 		b	pinModeDuet
 747              	.L87:
 748 013c 0021     		movs	r1, #0
 749 013e FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 750 0142 0022     		movs	r2, #0
 751 0144 0121     		movs	r1, #1
 752 0146 DCE7     		b	.L99
 753              	.L93:
 754 0148 04F16C03 		add	r3, r4, #108
 755 014c C7E7     		b	.L95
 756              	.L94:
 757 014e 04F19C03 		add	r3, r4, #156
 758 0152 C4E7     		b	.L95
 759              	.L102:
 760              		.align	2
 761              	.L101:
 762 0154 00000000 		.word	g_interrupt_enabled
 763              		.size	_ZN8Platform10InitZProbeEv, .-_ZN8Platform10InitZProbeEv
 764              		.section	.text._ZNK8Platform16GetZProbeReadingEv,"ax",%progbits
 765              		.align	1
 766              		.p2align 2,,3
 767              		.global	_ZNK8Platform16GetZProbeReadingEv
 768              		.syntax unified
 769              		.thumb
 770              		.thumb_func
 771              		.fpu fpv4-sp-d16
 772              		.type	_ZNK8Platform16GetZProbeReadingEv, %function
 773              	_ZNK8Platform16GetZProbeReadingEv:
 774              		@ args = 0, pretend = 0, frame = 0
 775              		@ frame_needed = 0, uses_anonymous_args = 0
 776 0000 70B5     		push	{r4, r5, r6, lr}
 777 0002 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 778 0006 A3F10802 		sub	r2, r3, #8
 779 000a 012A     		cmp	r2, #1
 780 000c 0446     		mov	r4, r0
 781 000e 13D9     		bls	.L104
 782 0010 90F8C424 		ldrb	r2, [r0, #1220]	@ zero_extendqisi2
 783 0014 02F0FF00 		and	r0, r2, #255
 784 0018 62B3     		cbz	r2, .L105
 785 001a 94F8E024 		ldrb	r2, [r4, #1248]	@ zero_extendqisi2
 786 001e 02F0FF00 		and	r0, r2, #255
 787 0022 3AB3     		cbz	r2, .L105
 788 0024 5A1E     		subs	r2, r3, #1
 789 0026 092A     		cmp	r2, #9
 790 0028 59D8     		bhi	.L136
 791 002a DFE802F0 		tbb	[pc, r2]
 792              	.L108:
 793 002e 2C       		.byte	(.L107-.L108)/2
 794 002f 3D       		.byte	(.L109-.L108)/2
 795 0030 2C       		.byte	(.L107-.L108)/2
 796 0031 2C       		.byte	(.L107-.L108)/2
 797 0032 2C       		.byte	(.L107-.L108)/2
 798 0033 58       		.byte	(.L136-.L108)/2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 15


 799 0034 58       		.byte	(.L136-.L108)/2
 800 0035 58       		.byte	(.L136-.L108)/2
 801 0036 58       		.byte	(.L136-.L108)/2
 802 0037 47       		.byte	(.L110-.L108)/2
 803              		.p2align 1
 804              	.L104:
 805 0038 0122     		movs	r2, #1
 806 003a 9A40     		lsls	r2, r2, r3
 807 003c 12F4487F 		tst	r2, #800
 808 0040 4AD1     		bne	.L114
 809 0042 D106     		lsls	r1, r2, #27
 810 0044 65D5     		bpl	.L152
 811 0046 40F22673 		movw	r3, #1830
 812 004a 1A42     		tst	r2, r3
 813 004c 78D1     		bne	.L118
 814 004e 1207     		lsls	r2, r2, #28
 815 0050 6ED5     		bpl	.L153
 816 0052 00F19C03 		add	r3, r0, #156
 817              	.L121:
 818 0056 93F82D30 		ldrb	r3, [r3, #45]	@ zero_extendqisi2
 819 005a 0B2B     		cmp	r3, #11
 820 005c 96BF     		itet	ls
 821 005e 1B19     		addls	r3, r3, r4
 822 0060 FF20     		movhi	r0, #255
 823 0062 93F86E01 		ldrbls	r0, [r3, #366]	@ zero_extendqisi2
 824              	.L151:
 825 0066 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 826 006a 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 827 006e 08B1     		cbz	r0, .L105
 828              	.L146:
 829 0070 4FF47A70 		mov	r0, #1000
 830              	.L105:
 831 0074 0A2B     		cmp	r3, #10
 832 0076 0CD9     		bls	.L111
 833              	.L131:
 834 0078 3C34     		adds	r4, r4, #60
 835              	.L133:
 836 007a 94F82E30 		ldrb	r3, [r4, #46]	@ zero_extendqisi2
 837 007e 0BB1     		cbz	r3, .L103
 838 0080 C0F57A70 		rsb	r0, r0, #1000
 839              	.L103:
 840 0084 70BD     		pop	{r4, r5, r6, pc}
 841              	.L107:
 842 0086 D4F8C004 		ldr	r0, [r4, #1216]
 843 008a D4F8DC24 		ldr	r2, [r4, #1244]
 844 008e 1044     		add	r0, r0, r2
 845 0090 8009     		lsrs	r0, r0, #6
 846              	.L111:
 847 0092 0122     		movs	r2, #1
 848 0094 02FA03F3 		lsl	r3, r2, r3
 849 0098 40F22672 		movw	r2, #1830
 850 009c 1342     		tst	r3, r2
 851 009e 0BD1     		bne	.L126
 852 00a0 1B07     		lsls	r3, r3, #28
 853 00a2 E9D5     		bpl	.L131
 854 00a4 9C34     		adds	r4, r4, #156
 855 00a6 E8E7     		b	.L133
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 16


 856              	.L109:
 857 00a8 D4F8C004 		ldr	r0, [r4, #1216]
 858 00ac D4F8DC34 		ldr	r3, [r4, #1244]
 859 00b0 C01A     		subs	r0, r0, r3
 860 00b2 48BF     		it	mi
 861 00b4 1F30     		addmi	r0, r0, #31
 862 00b6 4011     		asrs	r0, r0, #5
 863              	.L126:
 864 00b8 6C34     		adds	r4, r4, #108
 865 00ba DEE7     		b	.L133
 866              	.L110:
 867 00bc 224D     		ldr	r5, .L155
 868 00be EB68     		ldr	r3, [r5, #12]
 869 00c0 6A69     		ldr	r2, [r5, #20]	@ unaligned
 870 00c2 D3F8743A 		ldr	r3, [r3, #2676]
 871 00c6 D2F85C03 		ldr	r0, [r2, #860]
 872 00ca DE7B     		ldrb	r6, [r3, #15]	@ zero_extendqisi2
 873 00cc 022E     		cmp	r6, #2
 874 00ce 11D0     		beq	.L154
 875 00d0 0228     		cmp	r0, #2
 876 00d2 06D8     		bhi	.L149
 877 00d4 0020     		movs	r0, #0
 878 00d6 EFE7     		b	.L126
 879              	.L114:
 880 00d8 90F87C04 		ldrb	r0, [r0, #1148]	@ zero_extendqisi2
 881 00dc C3E7     		b	.L151
 882              	.L136:
 883 00de 0020     		movs	r0, #0
 884 00e0 70BD     		pop	{r4, r5, r6, pc}
 885              	.L149:
 886 00e2 0221     		movs	r1, #2
 887 00e4 2046     		mov	r0, r4
 888 00e6 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 889 00ea 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 890 00ee 0028     		cmp	r0, #0
 891 00f0 C0D0     		beq	.L105
 892 00f2 BDE7     		b	.L146
 893              	.L154:
 894 00f4 0028     		cmp	r0, #0
 895 00f6 DFD0     		beq	.L126
 896 00f8 0021     		movs	r1, #0
 897 00fa 2046     		mov	r0, r4
 898 00fc FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 899 0100 C8B9     		cbnz	r0, .L147
 900 0102 6B69     		ldr	r3, [r5, #20]
 901 0104 D3F85C33 		ldr	r3, [r3, #860]
 902 0108 022B     		cmp	r3, #2
 903 010a EAD8     		bhi	.L149
 904 010c 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 905 0110 B0E7     		b	.L105
 906              	.L152:
 907 0112 12F00E0F 		tst	r2, #14
 908 0116 ABD0     		beq	.L146
 909 0118 90F9E90B 		ldrsb	r0, [r0, #3049]
 910 011c FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 911 0120 B0F57A6F 		cmp	r0, #4000
 912 0124 07D2     		bcs	.L147
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 17


 913 0126 C0F38F00 		ubfx	r0, r0, #2, #16
 914 012a 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 915 012e A1E7     		b	.L105
 916              	.L153:
 917 0130 00F13C03 		add	r3, r0, #60
 918 0134 8FE7     		b	.L121
 919              	.L147:
 920 0136 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 921 013a 4FF47A70 		mov	r0, #1000
 922 013e 99E7     		b	.L105
 923              	.L118:
 924 0140 00F16C03 		add	r3, r0, #108
 925 0144 87E7     		b	.L121
 926              	.L156:
 927 0146 00BF     		.align	2
 928              	.L155:
 929 0148 00000000 		.word	reprap
 930              		.size	_ZNK8Platform16GetZProbeReadingEv, .-_ZNK8Platform16GetZProbeReadingEv
 931              		.section	.text._ZN8Platform24GetZProbeSecondaryValuesERiS0_,"ax",%progbits
 932              		.align	1
 933              		.p2align 2,,3
 934              		.global	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 935              		.syntax unified
 936              		.thumb
 937              		.thumb_func
 938              		.fpu fpv4-sp-d16
 939              		.type	_ZN8Platform24GetZProbeSecondaryValuesERiS0_, %function
 940              	_ZN8Platform24GetZProbeSecondaryValuesERiS0_:
 941              		@ args = 0, pretend = 0, frame = 0
 942              		@ frame_needed = 0, uses_anonymous_args = 0
 943              		@ link register save eliminated.
 944 0000 90F8C424 		ldrb	r2, [r0, #1220]	@ zero_extendqisi2
 945 0004 62B1     		cbz	r2, .L163
 946 0006 90F8E024 		ldrb	r2, [r0, #1248]	@ zero_extendqisi2
 947 000a 4AB1     		cbz	r2, .L163
 948 000c 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 949 0010 022B     		cmp	r3, #2
 950 0012 05D1     		bne	.L163
 951 0014 D0F8C034 		ldr	r3, [r0, #1216]
 952 0018 5B09     		lsrs	r3, r3, #5
 953 001a 0B60     		str	r3, [r1]
 954 001c 0120     		movs	r0, #1
 955 001e 7047     		bx	lr
 956              	.L163:
 957 0020 0020     		movs	r0, #0
 958 0022 7047     		bx	lr
 959              		.size	_ZN8Platform24GetZProbeSecondaryValuesERiS0_, .-_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 960              		.section	.text._ZN8Platform20GetZProbeTemperatureEv,"ax",%progbits
 961              		.align	1
 962              		.p2align 2,,3
 963              		.global	_ZN8Platform20GetZProbeTemperatureEv
 964              		.syntax unified
 965              		.thumb
 966              		.thumb_func
 967              		.fpu fpv4-sp-d16
 968              		.type	_ZN8Platform20GetZProbeTemperatureEv, %function
 969              	_ZN8Platform20GetZProbeTemperatureEv:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 18


 970              		@ args = 0, pretend = 0, frame = 8
 971              		@ frame_needed = 0, uses_anonymous_args = 0
 972 0000 30B5     		push	{r4, r5, lr}
 973 0002 0E4D     		ldr	r5, .L173
 974 0004 83B0     		sub	sp, sp, #12
 975 0006 0024     		movs	r4, #0
 976              	.L168:
 977 0008 2869     		ldr	r0, [r5, #16]
 978 000a 0319     		adds	r3, r0, r4
 979 000c 0DF10702 		add	r2, sp, #7
 980 0010 93F9D930 		ldrsb	r3, [r3, #217]
 981 0014 002B     		cmp	r3, #0
 982 0016 1946     		mov	r1, r3
 983 0018 04F10104 		add	r4, r4, #1
 984 001c 05DA     		bge	.L172
 985              	.L165:
 986 001e 042C     		cmp	r4, #4
 987 0020 F2D1     		bne	.L168
 988 0022 B3EE090A 		vmov.f32	s0, #2.5e+1
 989 0026 03B0     		add	sp, sp, #12
 990              		@ sp needed
 991 0028 30BD     		pop	{r4, r5, pc}
 992              	.L172:
 993 002a FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 994 002e 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 995 0032 002B     		cmp	r3, #0
 996 0034 F3D1     		bne	.L165
 997 0036 03B0     		add	sp, sp, #12
 998              		@ sp needed
 999 0038 30BD     		pop	{r4, r5, pc}
 1000              	.L174:
 1001 003a 00BF     		.align	2
 1002              	.L173:
 1003 003c 00000000 		.word	reprap
 1004              		.size	_ZN8Platform20GetZProbeTemperatureEv, .-_ZN8Platform20GetZProbeTemperatureEv
 1005              		.section	.text._ZN8Platform16ZProbeStopHeightEv,"ax",%progbits
 1006              		.align	1
 1007              		.p2align 2,,3
 1008              		.global	_ZN8Platform16ZProbeStopHeightEv
 1009              		.syntax unified
 1010              		.thumb
 1011              		.thumb_func
 1012              		.fpu fpv4-sp-d16
 1013              		.type	_ZN8Platform16ZProbeStopHeightEv, %function
 1014              	_ZN8Platform16ZProbeStopHeightEv:
 1015              		@ args = 0, pretend = 0, frame = 0
 1016              		@ frame_needed = 0, uses_anonymous_args = 0
 1017 0000 10B5     		push	{r4, lr}
 1018 0002 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 1019 0006 0A2B     		cmp	r3, #10
 1020 0008 08D8     		bhi	.L176
 1021 000a 0122     		movs	r2, #1
 1022 000c 02FA03F3 		lsl	r3, r2, r3
 1023 0010 40F22672 		movw	r2, #1830
 1024 0014 1342     		tst	r3, r2
 1025 0016 0AD1     		bne	.L177
 1026 0018 1B07     		lsls	r3, r3, #28
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 19


 1027 001a 11D4     		bmi	.L181
 1028              	.L176:
 1029 001c 00F13C04 		add	r4, r0, #60
 1030 0020 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1031 0024 2046     		mov	r0, r4
 1032 0026 BDE81040 		pop	{r4, lr}
 1033 002a FFF7FEBF 		b	_ZNK6ZProbe13GetStopHeightEf
 1034              	.L177:
 1035 002e 00F16C04 		add	r4, r0, #108
 1036 0032 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1037 0036 2046     		mov	r0, r4
 1038 0038 BDE81040 		pop	{r4, lr}
 1039 003c FFF7FEBF 		b	_ZNK6ZProbe13GetStopHeightEf
 1040              	.L181:
 1041 0040 00F19C04 		add	r4, r0, #156
 1042 0044 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1043 0048 2046     		mov	r0, r4
 1044 004a BDE81040 		pop	{r4, lr}
 1045 004e FFF7FEBF 		b	_ZNK6ZProbe13GetStopHeightEf
 1046              		.size	_ZN8Platform16ZProbeStopHeightEv, .-_ZN8Platform16ZProbeStopHeightEv
 1047 0052 00BF     		.section	.text._ZNK8Platform19GetZProbeDiveHeightEv,"ax",%progbits
 1048              		.align	1
 1049              		.p2align 2,,3
 1050              		.global	_ZNK8Platform19GetZProbeDiveHeightEv
 1051              		.syntax unified
 1052              		.thumb
 1053              		.thumb_func
 1054              		.fpu fpv4-sp-d16
 1055              		.type	_ZNK8Platform19GetZProbeDiveHeightEv, %function
 1056              	_ZNK8Platform19GetZProbeDiveHeightEv:
 1057              		@ args = 0, pretend = 0, frame = 0
 1058              		@ frame_needed = 0, uses_anonymous_args = 0
 1059              		@ link register save eliminated.
 1060 0000 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 1061 0004 0A2B     		cmp	r3, #10
 1062 0006 08D8     		bhi	.L183
 1063 0008 0122     		movs	r2, #1
 1064 000a 02FA03F3 		lsl	r3, r2, r3
 1065 000e 40F22672 		movw	r2, #1830
 1066 0012 1342     		tst	r3, r2
 1067 0014 05D1     		bne	.L184
 1068 0016 1B07     		lsls	r3, r3, #28
 1069 0018 07D4     		bmi	.L187
 1070              	.L183:
 1071 001a 3C30     		adds	r0, r0, #60
 1072 001c 90ED060A 		vldr.32	s0, [r0, #24]
 1073 0020 7047     		bx	lr
 1074              	.L184:
 1075 0022 6C30     		adds	r0, r0, #108
 1076 0024 90ED060A 		vldr.32	s0, [r0, #24]
 1077 0028 7047     		bx	lr
 1078              	.L187:
 1079 002a 9C30     		adds	r0, r0, #156
 1080 002c 90ED060A 		vldr.32	s0, [r0, #24]
 1081 0030 7047     		bx	lr
 1082              		.size	_ZNK8Platform19GetZProbeDiveHeightEv, .-_ZNK8Platform19GetZProbeDiveHeightEv
 1083 0032 00BF     		.section	.text._ZN8Platform23GetZProbeStartingHeightEv,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 20


 1084              		.align	1
 1085              		.p2align 2,,3
 1086              		.global	_ZN8Platform23GetZProbeStartingHeightEv
 1087              		.syntax unified
 1088              		.thumb
 1089              		.thumb_func
 1090              		.fpu fpv4-sp-d16
 1091              		.type	_ZN8Platform23GetZProbeStartingHeightEv, %function
 1092              	_ZN8Platform23GetZProbeStartingHeightEv:
 1093              		@ args = 0, pretend = 0, frame = 0
 1094              		@ frame_needed = 0, uses_anonymous_args = 0
 1095 0000 10B5     		push	{r4, lr}
 1096 0002 2DED028B 		vpush.64	{d8}
 1097 0006 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 1098 000a 0A2B     		cmp	r3, #10
 1099 000c 08D8     		bhi	.L189
 1100 000e 0122     		movs	r2, #1
 1101 0010 02FA03F3 		lsl	r3, r2, r3
 1102 0014 40F22672 		movw	r2, #1830
 1103 0018 1342     		tst	r3, r2
 1104 001a 1BD1     		bne	.L190
 1105 001c 1B07     		lsls	r3, r3, #28
 1106 001e 1CD4     		bmi	.L191
 1107              	.L189:
 1108 0020 00F13C04 		add	r4, r0, #60
 1109              	.L192:
 1110 0024 94ED068A 		vldr.32	s16, [r4, #24]
 1111 0028 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1112 002c 2046     		mov	r0, r4
 1113 002e FFF7FEFF 		bl	_ZNK6ZProbe13GetStopHeightEf
 1114 0032 B4EE400A 		vcmp.f32	s0, s0
 1115 0036 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1116 003a 06D6     		bvs	.L193
 1117 003c B5EEC00A 		vcmpe.f32	s0, #0
 1118 0040 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1119 0044 D8BF     		it	le
 1120 0046 9FED060A 		vldrle.32	s0, .L195
 1121              	.L193:
 1122 004a 38EE000A 		vadd.f32	s0, s16, s0
 1123 004e BDEC028B 		vldm	sp!, {d8}
 1124 0052 10BD     		pop	{r4, pc}
 1125              	.L190:
 1126 0054 00F16C04 		add	r4, r0, #108
 1127 0058 E4E7     		b	.L192
 1128              	.L191:
 1129 005a 00F19C04 		add	r4, r0, #156
 1130 005e E1E7     		b	.L192
 1131              	.L196:
 1132              		.align	2
 1133              	.L195:
 1134 0060 00000000 		.word	0
 1135              		.size	_ZN8Platform23GetZProbeStartingHeightEv, .-_ZN8Platform23GetZProbeStartingHeightEv
 1136              		.section	.text._ZNK8Platform20GetZProbeTravelSpeedEv,"ax",%progbits
 1137              		.align	1
 1138              		.p2align 2,,3
 1139              		.global	_ZNK8Platform20GetZProbeTravelSpeedEv
 1140              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 21


 1141              		.thumb
 1142              		.thumb_func
 1143              		.fpu fpv4-sp-d16
 1144              		.type	_ZNK8Platform20GetZProbeTravelSpeedEv, %function
 1145              	_ZNK8Platform20GetZProbeTravelSpeedEv:
 1146              		@ args = 0, pretend = 0, frame = 0
 1147              		@ frame_needed = 0, uses_anonymous_args = 0
 1148              		@ link register save eliminated.
 1149 0000 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 1150 0004 0A2B     		cmp	r3, #10
 1151 0006 08D8     		bhi	.L198
 1152 0008 0122     		movs	r2, #1
 1153 000a 02FA03F3 		lsl	r3, r2, r3
 1154 000e 40F22672 		movw	r2, #1830
 1155 0012 1342     		tst	r3, r2
 1156 0014 05D1     		bne	.L199
 1157 0016 1B07     		lsls	r3, r3, #28
 1158 0018 07D4     		bmi	.L202
 1159              	.L198:
 1160 001a 3C30     		adds	r0, r0, #60
 1161 001c 90ED080A 		vldr.32	s0, [r0, #32]
 1162 0020 7047     		bx	lr
 1163              	.L199:
 1164 0022 6C30     		adds	r0, r0, #108
 1165 0024 90ED080A 		vldr.32	s0, [r0, #32]
 1166 0028 7047     		bx	lr
 1167              	.L202:
 1168 002a 9C30     		adds	r0, r0, #156
 1169 002c 90ED080A 		vldr.32	s0, [r0, #32]
 1170 0030 7047     		bx	lr
 1171              		.size	_ZNK8Platform20GetZProbeTravelSpeedEv, .-_ZNK8Platform20GetZProbeTravelSpeedEv
 1172 0032 00BF     		.section	.text._ZN8Platform13SetZProbeTypeEj,"ax",%progbits
 1173              		.align	1
 1174              		.p2align 2,,3
 1175              		.global	_ZN8Platform13SetZProbeTypeEj
 1176              		.syntax unified
 1177              		.thumb
 1178              		.thumb_func
 1179              		.fpu fpv4-sp-d16
 1180              		.type	_ZN8Platform13SetZProbeTypeEj, %function
 1181              	_ZN8Platform13SetZProbeTypeEj:
 1182              		@ args = 0, pretend = 0, frame = 0
 1183              		@ frame_needed = 0, uses_anonymous_args = 0
 1184              		@ link register save eliminated.
 1185 0000 0A29     		cmp	r1, #10
 1186 0002 88BF     		it	hi
 1187 0004 0021     		movhi	r1, #0
 1188 0006 80F8CC10 		strb	r1, [r0, #204]
 1189 000a FFF7FEBF 		b	_ZN8Platform10InitZProbeEv
 1190              		.size	_ZN8Platform13SetZProbeTypeEj, .-_ZN8Platform13SetZProbeTypeEj
 1191 000e 00BF     		.section	.text._ZN8Platform10SetProbingEb,"ax",%progbits
 1192              		.align	1
 1193              		.p2align 2,,3
 1194              		.global	_ZN8Platform10SetProbingEb
 1195              		.syntax unified
 1196              		.thumb
 1197              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 22


 1198              		.fpu fpv4-sp-d16
 1199              		.type	_ZN8Platform10SetProbingEb, %function
 1200              	_ZN8Platform10SetProbingEb:
 1201              		@ args = 0, pretend = 0, frame = 0
 1202              		@ frame_needed = 0, uses_anonymous_args = 0
 1203              		@ link register save eliminated.
 1204 0000 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 1205 0004 032B     		cmp	r3, #3
 1206 0006 05D9     		bls	.L205
 1207 0008 092B     		cmp	r3, #9
 1208 000a 03D0     		beq	.L205
 1209 000c 90F87D04 		ldrb	r0, [r0, #1149]	@ zero_extendqisi2
 1210 0010 FFF7FEBF 		b	digitalWrite
 1211              	.L205:
 1212 0014 7047     		bx	lr
 1213              		.size	_ZN8Platform10SetProbingEb, .-_ZN8Platform10SetProbingEb
 1214 0016 00BF     		.section	.text._ZNK8Platform19GetZProbeParametersE10ZProbeType,"ax",%progbits
 1215              		.align	1
 1216              		.p2align 2,,3
 1217              		.global	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 1218              		.syntax unified
 1219              		.thumb
 1220              		.thumb_func
 1221              		.fpu fpv4-sp-d16
 1222              		.type	_ZNK8Platform19GetZProbeParametersE10ZProbeType, %function
 1223              	_ZNK8Platform19GetZProbeParametersE10ZProbeType:
 1224              		@ args = 0, pretend = 0, frame = 0
 1225              		@ frame_needed = 0, uses_anonymous_args = 0
 1226              		@ link register save eliminated.
 1227 0000 0A29     		cmp	r1, #10
 1228 0002 08D8     		bhi	.L211
 1229 0004 0123     		movs	r3, #1
 1230 0006 03FA01F1 		lsl	r1, r3, r1
 1231 000a 40F22673 		movw	r3, #1830
 1232 000e 1942     		tst	r1, r3
 1233 0010 03D1     		bne	.L212
 1234 0012 0B07     		lsls	r3, r1, #28
 1235 0014 03D4     		bmi	.L215
 1236              	.L211:
 1237 0016 3C30     		adds	r0, r0, #60
 1238 0018 7047     		bx	lr
 1239              	.L212:
 1240 001a 6C30     		adds	r0, r0, #108
 1241 001c 7047     		bx	lr
 1242              	.L215:
 1243 001e 9C30     		adds	r0, r0, #156
 1244 0020 7047     		bx	lr
 1245              		.size	_ZNK8Platform19GetZProbeParametersE10ZProbeType, .-_ZNK8Platform19GetZProbeParametersE10ZPro
 1246 0022 00BF     		.section	.text._ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe,"ax",%progbits
 1247              		.align	1
 1248              		.p2align 2,,3
 1249              		.global	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe
 1250              		.syntax unified
 1251              		.thumb
 1252              		.thumb_func
 1253              		.fpu fpv4-sp-d16
 1254              		.type	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 23


 1255              	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe:
 1256              		@ args = 0, pretend = 0, frame = 0
 1257              		@ frame_needed = 0, uses_anonymous_args = 0
 1258              		@ link register save eliminated.
 1259 0000 0A29     		cmp	r1, #10
 1260 0002 30B4     		push	{r4, r5}
 1261 0004 0446     		mov	r4, r0
 1262 0006 08D8     		bhi	.L217
 1263 0008 0123     		movs	r3, #1
 1264 000a 03FA01F1 		lsl	r1, r3, r1
 1265 000e 40F22673 		movw	r3, #1830
 1266 0012 1942     		tst	r1, r3
 1267 0014 0DD1     		bne	.L218
 1268 0016 0B07     		lsls	r3, r1, #28
 1269 0018 0FD4     		bmi	.L223
 1270              	.L217:
 1271 001a 1546     		mov	r5, r2
 1272 001c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1273 001e 3C34     		adds	r4, r4, #60
 1274              	.L222:
 1275 0020 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1276 0022 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1277 0024 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1278 0026 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1279 002a 84E80F00 		stm	r4, {r0, r1, r2, r3}
 1280 002e 30BC     		pop	{r4, r5}
 1281 0030 7047     		bx	lr
 1282              	.L218:
 1283 0032 1546     		mov	r5, r2
 1284 0034 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1285 0036 6C34     		adds	r4, r4, #108
 1286 0038 F2E7     		b	.L222
 1287              	.L223:
 1288 003a 1546     		mov	r5, r2
 1289 003c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1290 003e 9C34     		adds	r4, r4, #156
 1291 0040 EEE7     		b	.L222
 1292              		.size	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe, .-_ZN8Platform19SetZProbeParameters
 1293 0042 00BF     		.section	.text._ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef,"ax",%progbits
 1294              		.align	1
 1295              		.p2align 2,,3
 1296              		.global	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef
 1297              		.syntax unified
 1298              		.thumb
 1299              		.thumb_func
 1300              		.fpu fpv4-sp-d16
 1301              		.type	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef, %function
 1302              	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef:
 1303              		@ args = 0, pretend = 0, frame = 40
 1304              		@ frame_needed = 0, uses_anonymous_args = 0
 1305 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1306 0002 0D46     		mov	r5, r1
 1307 0004 8BB0     		sub	sp, sp, #44
 1308 0006 0746     		mov	r7, r0
 1309 0008 5321     		movs	r1, #83
 1310 000a 2846     		mov	r0, r5
 1311 000c 1646     		mov	r6, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 24


 1312 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1313 0012 00B3     		cbz	r0, .L225
 1314 0014 0AAA     		add	r2, sp, #40
 1315 0016 0823     		movs	r3, #8
 1316 0018 0DEB0304 		add	r4, sp, r3
 1317 001c 42F8243D 		str	r3, [r2, #-36]!
 1318 0020 2846     		mov	r0, r5
 1319 0022 2146     		mov	r1, r4
 1320 0024 0023     		movs	r3, #0
 1321 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1322 002a 019A     		ldr	r2, [sp, #4]
 1323 002c 9AB1     		cbz	r2, .L225
 1324 002e 029B     		ldr	r3, [sp, #8]
 1325 0030 FF2B     		cmp	r3, #255
 1326 0032 17D8     		bhi	.L227
 1327 0034 0023     		movs	r3, #0
 1328 0036 03E0     		b	.L228
 1329              	.L230:
 1330 0038 54F82310 		ldr	r1, [r4, r3, lsl #2]
 1331 003c FF29     		cmp	r1, #255
 1332 003e 11D8     		bhi	.L227
 1333              	.L228:
 1334 0040 0133     		adds	r3, r3, #1
 1335 0042 9A42     		cmp	r2, r3
 1336 0044 F8D1     		bne	.L230
 1337 0046 07F59060 		add	r0, r7, #1152
 1338 004a 2146     		mov	r1, r4
 1339 004c FFF7FEFF 		bl	_ZN16ZProbeProgrammer11SendProgramEPKmj
 1340 0050 0120     		movs	r0, #1
 1341 0052 0BB0     		add	sp, sp, #44
 1342              		@ sp needed
 1343 0054 F0BD     		pop	{r4, r5, r6, r7, pc}
 1344              	.L225:
 1345 0056 3046     		mov	r0, r6
 1346 0058 0649     		ldr	r1, .L240
 1347 005a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1348 005e 0220     		movs	r0, #2
 1349 0060 0BB0     		add	sp, sp, #44
 1350              		@ sp needed
 1351 0062 F0BD     		pop	{r4, r5, r6, r7, pc}
 1352              	.L227:
 1353 0064 3046     		mov	r0, r6
 1354 0066 0449     		ldr	r1, .L240+4
 1355 0068 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1356 006c 0220     		movs	r0, #2
 1357 006e 0BB0     		add	sp, sp, #44
 1358              		@ sp needed
 1359 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 1360              	.L241:
 1361 0072 00BF     		.align	2
 1362              	.L240:
 1363 0074 24000000 		.word	.LC10
 1364 0078 00000000 		.word	.LC9
 1365              		.size	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef, .-_ZN8Platform13ProgramZProbeER11GCo
 1366              		.section	.text._ZNK8Platform17SetZProbeModStateEb,"ax",%progbits
 1367              		.align	1
 1368              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 25


 1369              		.global	_ZNK8Platform17SetZProbeModStateEb
 1370              		.syntax unified
 1371              		.thumb
 1372              		.thumb_func
 1373              		.fpu fpv4-sp-d16
 1374              		.type	_ZNK8Platform17SetZProbeModStateEb, %function
 1375              	_ZNK8Platform17SetZProbeModStateEb:
 1376              		@ args = 0, pretend = 0, frame = 0
 1377              		@ frame_needed = 0, uses_anonymous_args = 0
 1378              		@ link register save eliminated.
 1379 0000 90F87D04 		ldrb	r0, [r0, #1149]	@ zero_extendqisi2
 1380 0004 FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 1381              		.size	_ZNK8Platform17SetZProbeModStateEb, .-_ZNK8Platform17SetZProbeModStateEb
 1382              		.section	.text._ZNK8Platform16HomingZWithProbeEv,"ax",%progbits
 1383              		.align	1
 1384              		.p2align 2,,3
 1385              		.global	_ZNK8Platform16HomingZWithProbeEv
 1386              		.syntax unified
 1387              		.thumb
 1388              		.thumb_func
 1389              		.fpu fpv4-sp-d16
 1390              		.type	_ZNK8Platform16HomingZWithProbeEv, %function
 1391              	_ZNK8Platform16HomingZWithProbeEv:
 1392              		@ args = 0, pretend = 0, frame = 0
 1393              		@ frame_needed = 0, uses_anonymous_args = 0
 1394              		@ link register save eliminated.
 1395 0000 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 1396 0004 4BB1     		cbz	r3, .L245
 1397 0006 D0F81838 		ldr	r3, [r0, #2072]
 1398 000a 022B     		cmp	r3, #2
 1399 000c 07D0     		beq	.L246
 1400 000e D0F8F407 		ldr	r0, [r0, #2036]
 1401 0012 B0FA80F0 		clz	r0, r0
 1402 0016 4009     		lsrs	r0, r0, #5
 1403 0018 7047     		bx	lr
 1404              	.L245:
 1405 001a 1846     		mov	r0, r3
 1406 001c 7047     		bx	lr
 1407              	.L246:
 1408 001e 0120     		movs	r0, #1
 1409 0020 7047     		bx	lr
 1410              		.size	_ZNK8Platform16HomingZWithProbeEv, .-_ZNK8Platform16HomingZWithProbeEv
 1411 0022 00BF     		.section	.text._ZN8Platform20RegisterI2cAddrUsageEh,"ax",%progbits
 1412              		.align	1
 1413              		.p2align 2,,3
 1414              		.global	_ZN8Platform20RegisterI2cAddrUsageEh
 1415              		.syntax unified
 1416              		.thumb
 1417              		.thumb_func
 1418              		.fpu fpv4-sp-d16
 1419              		.type	_ZN8Platform20RegisterI2cAddrUsageEh, %function
 1420              	_ZN8Platform20RegisterI2cAddrUsageEh:
 1421              		@ args = 0, pretend = 0, frame = 0
 1422              		@ frame_needed = 0, uses_anonymous_args = 0
 1423              		@ link register save eliminated.
 1424 0000 30B4     		push	{r4, r5}
 1425 0002 00F59E73 		add	r3, r0, #316
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 26


 1426 0006 00F23B15 		addw	r5, r0, #315
 1427 000a 0024     		movs	r4, #0
 1428 000c 02E0     		b	.L251
 1429              	.L248:
 1430 000e 0134     		adds	r4, r4, #1
 1431 0010 322C     		cmp	r4, #50
 1432 0012 12D0     		beq	.L247
 1433              	.L251:
 1434 0014 15F8012F 		ldrb	r2, [r5, #1]!	@ zero_extendqisi2
 1435 0018 002A     		cmp	r2, #0
 1436 001a F8D1     		bne	.L248
 1437 001c 0444     		add	r4, r4, r0
 1438 001e 00F5B770 		add	r0, r0, #366
 1439 0022 84F83C11 		strb	r1, [r4, #316]
 1440              	.L249:
 1441 0026 21B1     		cbz	r1, .L252
 1442 0028 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1443 002a 8C42     		cmp	r4, r1
 1444 002c 04BF     		itt	eq
 1445 002e 0132     		addeq	r2, r2, #1
 1446 0030 D2B2     		uxtbeq	r2, r2
 1447              	.L252:
 1448 0032 0133     		adds	r3, r3, #1
 1449 0034 8342     		cmp	r3, r0
 1450 0036 F6D1     		bne	.L249
 1451 0038 1446     		mov	r4, r2
 1452              	.L247:
 1453 003a 2046     		mov	r0, r4
 1454 003c 30BC     		pop	{r4, r5}
 1455 003e 7047     		bx	lr
 1456              		.size	_ZN8Platform20RegisterI2cAddrUsageEh, .-_ZN8Platform20RegisterI2cAddrUsageEh
 1457              		.section	.text._ZN8Platform22UnregisterI2cAddrUsageEh,"ax",%progbits
 1458              		.align	1
 1459              		.p2align 2,,3
 1460              		.global	_ZN8Platform22UnregisterI2cAddrUsageEh
 1461              		.syntax unified
 1462              		.thumb
 1463              		.thumb_func
 1464              		.fpu fpv4-sp-d16
 1465              		.type	_ZN8Platform22UnregisterI2cAddrUsageEh, %function
 1466              	_ZN8Platform22UnregisterI2cAddrUsageEh:
 1467              		@ args = 0, pretend = 0, frame = 0
 1468              		@ frame_needed = 0, uses_anonymous_args = 0
 1469              		@ link register save eliminated.
 1470 0000 10B4     		push	{r4}
 1471 0002 0023     		movs	r3, #0
 1472 0004 01E0     		b	.L265
 1473              	.L263:
 1474 0006 322B     		cmp	r3, #50
 1475 0008 0AD0     		beq	.L264
 1476              	.L265:
 1477 000a C218     		adds	r2, r0, r3
 1478 000c 0133     		adds	r3, r3, #1
 1479 000e 0029     		cmp	r1, #0
 1480 0010 F9D0     		beq	.L263
 1481 0012 92F83C41 		ldrb	r4, [r2, #316]	@ zero_extendqisi2
 1482 0016 8C42     		cmp	r4, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 27


 1483 0018 F5D1     		bne	.L263
 1484 001a 0023     		movs	r3, #0
 1485 001c 82F83C31 		strb	r3, [r2, #316]
 1486              	.L264:
 1487 0020 00F59E73 		add	r3, r0, #316
 1488 0024 00F5B772 		add	r2, r0, #366
 1489 0028 0020     		movs	r0, #0
 1490              	.L267:
 1491 002a 21B1     		cbz	r1, .L266
 1492 002c 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1493 002e 8C42     		cmp	r4, r1
 1494 0030 04BF     		itt	eq
 1495 0032 0130     		addeq	r0, r0, #1
 1496 0034 C0B2     		uxtbeq	r0, r0
 1497              	.L266:
 1498 0036 0133     		adds	r3, r3, #1
 1499 0038 9342     		cmp	r3, r2
 1500 003a F6D1     		bne	.L267
 1501 003c 5DF8044B 		ldr	r4, [sp], #4
 1502 0040 7047     		bx	lr
 1503              		.size	_ZN8Platform22UnregisterI2cAddrUsageEh, .-_ZN8Platform22UnregisterI2cAddrUsageEh
 1504 0042 00BF     		.section	.text._ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef,"ax",%progbits
 1505              		.align	1
 1506              		.p2align 2,,3
 1507              		.global	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef
 1508              		.syntax unified
 1509              		.thumb
 1510              		.thumb_func
 1511              		.fpu fpv4-sp-d16
 1512              		.type	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef, %function
 1513              	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef:
 1514              		@ args = 0, pretend = 0, frame = 8
 1515              		@ frame_needed = 0, uses_anonymous_args = 0
 1516 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1517 0002 1D4A     		ldr	r2, .L284
 1518 0004 83B0     		sub	sp, sp, #12
 1519 0006 0546     		mov	r5, r0
 1520 0008 0E46     		mov	r6, r1
 1521 000a D0F8DC0B 		ldr	r0, [r0, #3036]
 1522 000e 1B49     		ldr	r1, .L284+4
 1523 0010 0023     		movs	r3, #0
 1524 0012 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1525 0016 0446     		mov	r4, r0
 1526 0018 B8B1     		cbz	r0, .L283
 1527 001a 0422     		movs	r2, #4
 1528 001c 0DEB0201 		add	r1, sp, r2
 1529 0020 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1530 0024 0746     		mov	r7, r0
 1531 0026 2046     		mov	r0, r4
 1532 0028 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1533 002c 042F     		cmp	r7, #4
 1534 002e 03D1     		bne	.L280
 1535 0030 134B     		ldr	r3, .L284+8
 1536 0032 019A     		ldr	r2, [sp, #4]
 1537 0034 9A42     		cmp	r2, r3
 1538 0036 10D0     		beq	.L281
 1539              	.L280:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 28


 1540 0038 3046     		mov	r0, r6
 1541 003a 0F4A     		ldr	r2, .L284
 1542 003c 1149     		ldr	r1, .L284+12
 1543 003e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1544 0042 0024     		movs	r4, #0
 1545              	.L279:
 1546 0044 2046     		mov	r0, r4
 1547 0046 03B0     		add	sp, sp, #12
 1548              		@ sp needed
 1549 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 1550              	.L283:
 1551 004a 3046     		mov	r0, r6
 1552 004c 0A4A     		ldr	r2, .L284
 1553 004e 0E49     		ldr	r1, .L284+16
 1554 0050 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1555 0054 2046     		mov	r0, r4
 1556 0056 03B0     		add	sp, sp, #12
 1557              		@ sp needed
 1558 0058 F0BD     		pop	{r4, r5, r6, r7, pc}
 1559              	.L281:
 1560 005a D5F8DC0B 		ldr	r0, [r5, #3036]
 1561 005e 0B4A     		ldr	r2, .L284+20
 1562 0060 0649     		ldr	r1, .L284+4
 1563 0062 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 1564 0066 0446     		mov	r4, r0
 1565 0068 0028     		cmp	r0, #0
 1566 006a EBD1     		bne	.L279
 1567 006c 3046     		mov	r0, r6
 1568 006e 074A     		ldr	r2, .L284+20
 1569 0070 0749     		ldr	r1, .L284+24
 1570 0072 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1571 0076 E5E7     		b	.L279
 1572              	.L285:
 1573              		.align	2
 1574              	.L284:
 1575 0078 00000000 		.word	.LC11
 1576 007c 1C000000 		.word	.LC12
 1577 0080 00000220 		.word	537001984
 1578 0084 44000000 		.word	.LC14
 1579 0088 24000000 		.word	.LC13
 1580 008c 7C000000 		.word	.LC15
 1581 0090 88000000 		.word	.LC16
 1582              		.size	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef, .-_ZN8Platform32CheckFirmwareUp
 1583              		.section	.text._ZNK8Platform9EmulatingEv,"ax",%progbits
 1584              		.align	1
 1585              		.p2align 2,,3
 1586              		.global	_ZNK8Platform9EmulatingEv
 1587              		.syntax unified
 1588              		.thumb
 1589              		.thumb_func
 1590              		.fpu fpv4-sp-d16
 1591              		.type	_ZNK8Platform9EmulatingEv, %function
 1592              	_ZNK8Platform9EmulatingEv:
 1593              		@ args = 0, pretend = 0, frame = 0
 1594              		@ frame_needed = 0, uses_anonymous_args = 0
 1595              		@ link register save eliminated.
 1596 0000 90F8FB00 		ldrb	r0, [r0, #251]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 29


 1597 0004 0128     		cmp	r0, #1
 1598 0006 08BF     		it	eq
 1599 0008 0020     		moveq	r0, #0
 1600 000a 7047     		bx	lr
 1601              		.size	_ZNK8Platform9EmulatingEv, .-_ZNK8Platform9EmulatingEv
 1602              		.section	.text._ZN8Platform12SetIPAddressE9IPAddress,"ax",%progbits
 1603              		.align	1
 1604              		.p2align 2,,3
 1605              		.global	_ZN8Platform12SetIPAddressE9IPAddress
 1606              		.syntax unified
 1607              		.thumb
 1608              		.thumb_func
 1609              		.fpu fpv4-sp-d16
 1610              		.type	_ZN8Platform12SetIPAddressE9IPAddress, %function
 1611              	_ZN8Platform12SetIPAddressE9IPAddress:
 1612              		@ args = 0, pretend = 0, frame = 0
 1613              		@ frame_needed = 0, uses_anonymous_args = 0
 1614              		@ link register save eliminated.
 1615 0000 10B4     		push	{r4}
 1616 0002 054C     		ldr	r4, .L291
 1617 0004 C0F8D010 		str	r1, [r0, #208]
 1618 0008 D0E93532 		ldrd	r3, r2, [r0, #212]
 1619 000c A068     		ldr	r0, [r4, #8]
 1620 000e 5DF8044B 		ldr	r4, [sp], #4
 1621 0012 FFF7FEBF 		b	_ZN7Network20SetEthernetIPAddressE9IPAddressS0_S0_
 1622              	.L292:
 1623 0016 00BF     		.align	2
 1624              	.L291:
 1625 0018 00000000 		.word	reprap
 1626              		.size	_ZN8Platform12SetIPAddressE9IPAddress, .-_ZN8Platform12SetIPAddressE9IPAddress
 1627              		.section	.text._ZN8Platform10SetGateWayE9IPAddress,"ax",%progbits
 1628              		.align	1
 1629              		.p2align 2,,3
 1630              		.global	_ZN8Platform10SetGateWayE9IPAddress
 1631              		.syntax unified
 1632              		.thumb
 1633              		.thumb_func
 1634              		.fpu fpv4-sp-d16
 1635              		.type	_ZN8Platform10SetGateWayE9IPAddress, %function
 1636              	_ZN8Platform10SetGateWayE9IPAddress:
 1637              		@ args = 0, pretend = 0, frame = 0
 1638              		@ frame_needed = 0, uses_anonymous_args = 0
 1639              		@ link register save eliminated.
 1640 0000 10B4     		push	{r4}
 1641 0002 074A     		ldr	r2, .L295
 1642 0004 D0F8D430 		ldr	r3, [r0, #212]
 1643 0008 0446     		mov	r4, r0
 1644 000a 9068     		ldr	r0, [r2, #8]
 1645 000c C4F8D810 		str	r1, [r4, #216]
 1646 0010 0A46     		mov	r2, r1
 1647 0012 D4F8D010 		ldr	r1, [r4, #208]
 1648 0016 5DF8044B 		ldr	r4, [sp], #4
 1649 001a FFF7FEBF 		b	_ZN7Network20SetEthernetIPAddressE9IPAddressS0_S0_
 1650              	.L296:
 1651 001e 00BF     		.align	2
 1652              	.L295:
 1653 0020 00000000 		.word	reprap
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 30


 1654              		.size	_ZN8Platform10SetGateWayE9IPAddress, .-_ZN8Platform10SetGateWayE9IPAddress
 1655              		.section	.text._ZN8Platform10SetNetMaskE9IPAddress,"ax",%progbits
 1656              		.align	1
 1657              		.p2align 2,,3
 1658              		.global	_ZN8Platform10SetNetMaskE9IPAddress
 1659              		.syntax unified
 1660              		.thumb
 1661              		.thumb_func
 1662              		.fpu fpv4-sp-d16
 1663              		.type	_ZN8Platform10SetNetMaskE9IPAddress, %function
 1664              	_ZN8Platform10SetNetMaskE9IPAddress:
 1665              		@ args = 0, pretend = 0, frame = 0
 1666              		@ frame_needed = 0, uses_anonymous_args = 0
 1667              		@ link register save eliminated.
 1668 0000 10B4     		push	{r4}
 1669 0002 074B     		ldr	r3, .L299
 1670 0004 D0F8D820 		ldr	r2, [r0, #216]
 1671 0008 0446     		mov	r4, r0
 1672 000a 9868     		ldr	r0, [r3, #8]
 1673 000c C4F8D410 		str	r1, [r4, #212]
 1674 0010 0B46     		mov	r3, r1
 1675 0012 D4F8D010 		ldr	r1, [r4, #208]
 1676 0016 5DF8044B 		ldr	r4, [sp], #4
 1677 001a FFF7FEBF 		b	_ZN7Network20SetEthernetIPAddressE9IPAddressS0_S0_
 1678              	.L300:
 1679 001e 00BF     		.align	2
 1680              	.L299:
 1681 0020 00000000 		.word	reprap
 1682              		.size	_ZN8Platform10SetNetMaskE9IPAddress, .-_ZN8Platform10SetNetMaskE9IPAddress
 1683              		.section	.text._ZNK8Platform19AnyAxisMotorStalledEj,"ax",%progbits
 1684              		.align	1
 1685              		.p2align 2,,3
 1686              		.global	_ZNK8Platform19AnyAxisMotorStalledEj
 1687              		.syntax unified
 1688              		.thumb
 1689              		.thumb_func
 1690              		.fpu fpv4-sp-d16
 1691              		.type	_ZNK8Platform19AnyAxisMotorStalledEj, %function
 1692              	_ZNK8Platform19AnyAxisMotorStalledEj:
 1693              		@ args = 0, pretend = 0, frame = 0
 1694              		@ frame_needed = 0, uses_anonymous_args = 0
 1695              		@ link register save eliminated.
 1696 0000 044B     		ldr	r3, .L303
 1697 0002 5B69     		ldr	r3, [r3, #20]
 1698 0004 D3F85C33 		ldr	r3, [r3, #860]
 1699 0008 8B42     		cmp	r3, r1
 1700 000a 01D9     		bls	.L302
 1701 000c FFF7FEBF 		b	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 1702              	.L302:
 1703 0010 0020     		movs	r0, #0
 1704 0012 7047     		bx	lr
 1705              	.L304:
 1706              		.align	2
 1707              	.L303:
 1708 0014 00000000 		.word	reprap
 1709              		.size	_ZNK8Platform19AnyAxisMotorStalledEj, .-_ZNK8Platform19AnyAxisMotorStalledEj
 1710              		.section	.text._ZNK8Platform20ExtruderMotorStalledEj,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 31


 1711              		.align	1
 1712              		.p2align 2,,3
 1713              		.global	_ZNK8Platform20ExtruderMotorStalledEj
 1714              		.syntax unified
 1715              		.thumb
 1716              		.thumb_func
 1717              		.fpu fpv4-sp-d16
 1718              		.type	_ZNK8Platform20ExtruderMotorStalledEj, %function
 1719              	_ZNK8Platform20ExtruderMotorStalledEj:
 1720              		@ args = 0, pretend = 0, frame = 0
 1721              		@ frame_needed = 0, uses_anonymous_args = 0
 1722 0000 0144     		add	r1, r1, r0
 1723 0002 91F89803 		ldrb	r0, [r1, #920]	@ zero_extendqisi2
 1724 0006 0B28     		cmp	r0, #11
 1725 0008 01D9     		bls	.L312
 1726 000a 0020     		movs	r0, #0
 1727 000c 7047     		bx	lr
 1728              	.L312:
 1729 000e 08B5     		push	{r3, lr}
 1730 0010 FFF7FEFF 		bl	_ZN12SmartDrivers13GetLiveStatusEj
 1731 0014 00F00100 		and	r0, r0, #1
 1732 0018 08BD     		pop	{r3, pc}
 1733              		.size	_ZNK8Platform20ExtruderMotorStalledEj, .-_ZNK8Platform20ExtruderMotorStalledEj
 1734 001a 00BF     		.section	.text._ZN8Platform15DisableAutoSaveEv,"ax",%progbits
 1735              		.align	1
 1736              		.p2align 2,,3
 1737              		.global	_ZN8Platform15DisableAutoSaveEv
 1738              		.syntax unified
 1739              		.thumb
 1740              		.thumb_func
 1741              		.fpu fpv4-sp-d16
 1742              		.type	_ZN8Platform15DisableAutoSaveEv, %function
 1743              	_ZN8Platform15DisableAutoSaveEv:
 1744              		@ args = 0, pretend = 0, frame = 0
 1745              		@ frame_needed = 0, uses_anonymous_args = 0
 1746              		@ link register save eliminated.
 1747 0000 0023     		movs	r3, #0
 1748 0002 80F81C3C 		strb	r3, [r0, #3100]
 1749 0006 7047     		bx	lr
 1750              		.size	_ZN8Platform15DisableAutoSaveEv, .-_ZN8Platform15DisableAutoSaveEv
 1751              		.section	.text._ZNK8Platform9IsPowerOkEv,"ax",%progbits
 1752              		.align	1
 1753              		.p2align 2,,3
 1754              		.global	_ZNK8Platform9IsPowerOkEv
 1755              		.syntax unified
 1756              		.thumb
 1757              		.thumb_func
 1758              		.fpu fpv4-sp-d16
 1759              		.type	_ZNK8Platform9IsPowerOkEv, %function
 1760              	_ZNK8Platform9IsPowerOkEv:
 1761              		@ args = 0, pretend = 0, frame = 0
 1762              		@ frame_needed = 0, uses_anonymous_args = 0
 1763              		@ link register save eliminated.
 1764 0000 90F81C3C 		ldrb	r3, [r0, #3100]	@ zero_extendqisi2
 1765 0004 43B1     		cbz	r3, .L316
 1766 0006 B0F8FE3B 		ldrh	r3, [r0, #3070]
 1767 000a B0F8080C 		ldrh	r0, [r0, #3080]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 32


 1768 000e 9842     		cmp	r0, r3
 1769 0010 2CBF     		ite	cs
 1770 0012 0020     		movcs	r0, #0
 1771 0014 0120     		movcc	r0, #1
 1772 0016 7047     		bx	lr
 1773              	.L316:
 1774 0018 0120     		movs	r0, #1
 1775 001a 7047     		bx	lr
 1776              		.size	_ZNK8Platform9IsPowerOkEv, .-_ZNK8Platform9IsPowerOkEv
 1777              		.section	.text._ZNK8Platform11HasVinPowerEv,"ax",%progbits
 1778              		.align	1
 1779              		.p2align 2,,3
 1780              		.global	_ZNK8Platform11HasVinPowerEv
 1781              		.syntax unified
 1782              		.thumb
 1783              		.thumb_func
 1784              		.fpu fpv4-sp-d16
 1785              		.type	_ZNK8Platform11HasVinPowerEv, %function
 1786              	_ZNK8Platform11HasVinPowerEv:
 1787              		@ args = 0, pretend = 0, frame = 0
 1788              		@ frame_needed = 0, uses_anonymous_args = 0
 1789              		@ link register save eliminated.
 1790 0000 90F85D04 		ldrb	r0, [r0, #1117]	@ zero_extendqisi2
 1791 0004 7047     		bx	lr
 1792              		.size	_ZNK8Platform11HasVinPowerEv, .-_ZNK8Platform11HasVinPowerEv
 1793 0006 00BF     		.section	.text._ZN8Platform14EnableAutoSaveEff,"ax",%progbits
 1794              		.align	1
 1795              		.p2align 2,,3
 1796              		.global	_ZN8Platform14EnableAutoSaveEff
 1797              		.syntax unified
 1798              		.thumb
 1799              		.thumb_func
 1800              		.fpu fpv4-sp-d16
 1801              		.type	_ZN8Platform14EnableAutoSaveEff, %function
 1802              	_ZN8Platform14EnableAutoSaveEff:
 1803              		@ args = 0, pretend = 0, frame = 0
 1804              		@ frame_needed = 0, uses_anonymous_args = 0
 1805              		@ link register save eliminated.
 1806 0000 DFED0A7A 		vldr.32	s15, .L319
 1807 0004 20EE270A 		vmul.f32	s0, s0, s15
 1808 0008 60EEA70A 		vmul.f32	s1, s1, s15
 1809 000c BCEEC00A 		vcvt.u32.f32	s0, s0
 1810 0010 FCEEE00A 		vcvt.u32.f32	s1, s1
 1811 0014 10EE102A 		vmov	r2, s0	@ int
 1812 0018 A0F8082C 		strh	r2, [r0, #3080]	@ movhi
 1813 001c 10EE902A 		vmov	r2, s1	@ int
 1814 0020 0123     		movs	r3, #1
 1815 0022 A0F80A2C 		strh	r2, [r0, #3082]	@ movhi
 1816 0026 80F81C3C 		strb	r3, [r0, #3100]
 1817 002a 7047     		bx	lr
 1818              	.L320:
 1819              		.align	2
 1820              	.L319:
 1821 002c C9ACE142 		.word	1122086089
 1822              		.size	_ZN8Platform14EnableAutoSaveEff, .-_ZN8Platform14EnableAutoSaveEff
 1823              		.section	.text._ZN8Platform19GetAutoSaveSettingsERfS0_,"ax",%progbits
 1824              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 33


 1825              		.p2align 2,,3
 1826              		.global	_ZN8Platform19GetAutoSaveSettingsERfS0_
 1827              		.syntax unified
 1828              		.thumb
 1829              		.thumb_func
 1830              		.fpu fpv4-sp-d16
 1831              		.type	_ZN8Platform19GetAutoSaveSettingsERfS0_, %function
 1832              	_ZN8Platform19GetAutoSaveSettingsERfS0_:
 1833              		@ args = 0, pretend = 0, frame = 0
 1834              		@ frame_needed = 0, uses_anonymous_args = 0
 1835              		@ link register save eliminated.
 1836 0000 0346     		mov	r3, r0
 1837 0002 90F81C0C 		ldrb	r0, [r0, #3100]	@ zero_extendqisi2
 1838 0006 B8B1     		cbz	r0, .L322
 1839 0008 B3F8080C 		ldrh	r0, [r3, #3080]
 1840 000c DFED0B6A 		vldr.32	s13, .L326
 1841 0010 07EE100A 		vmov	s14, r0	@ int
 1842 0014 B8EEC77A 		vcvt.f32.s32	s14, s14
 1843 0018 27EE267A 		vmul.f32	s14, s14, s13
 1844 001c 81ED007A 		vstr.32	s14, [r1]
 1845 0020 B3F80A1C 		ldrh	r1, [r3, #3082]
 1846 0024 07EE901A 		vmov	s15, r1	@ int
 1847 0028 F8EEE77A 		vcvt.f32.s32	s15, s15
 1848 002c 67EEA67A 		vmul.f32	s15, s15, s13
 1849 0030 C2ED007A 		vstr.32	s15, [r2]
 1850 0034 93F81C0C 		ldrb	r0, [r3, #3100]	@ zero_extendqisi2
 1851              	.L322:
 1852 0038 7047     		bx	lr
 1853              	.L327:
 1854 003a 00BF     		.align	2
 1855              	.L326:
 1856 003c 3333113C 		.word	1007760179
 1857              		.size	_ZN8Platform19GetAutoSaveSettingsERfS0_, .-_ZN8Platform19GetAutoSaveSettingsERfS0_
 1858              		.section	.text._ZNK8Platform16WriteFanSettingsEP9FileStore,"ax",%progbits
 1859              		.align	1
 1860              		.p2align 2,,3
 1861              		.global	_ZNK8Platform16WriteFanSettingsEP9FileStore
 1862              		.syntax unified
 1863              		.thumb
 1864              		.thumb_func
 1865              		.fpu fpv4-sp-d16
 1866              		.type	_ZNK8Platform16WriteFanSettingsEP9FileStore, %function
 1867              	_ZNK8Platform16WriteFanSettingsEP9FileStore:
 1868              		@ args = 0, pretend = 0, frame = 0
 1869              		@ frame_needed = 0, uses_anonymous_args = 0
 1870 0000 70B5     		push	{r4, r5, r6, lr}
 1871 0002 0E46     		mov	r6, r1
 1872 0004 00F63C05 		addw	r5, r0, #2108
 1873 0008 0024     		movs	r4, #0
 1874              	.L329:
 1875 000a 2246     		mov	r2, r4
 1876 000c 2846     		mov	r0, r5
 1877 000e 3146     		mov	r1, r6
 1878 0010 FFF7FEFF 		bl	_ZNK3Fan13WriteSettingsEP9FileStorej
 1879 0014 4835     		adds	r5, r5, #72
 1880 0016 0134     		adds	r4, r4, #1
 1881 0018 08B1     		cbz	r0, .L330
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 34


 1882 001a 092C     		cmp	r4, #9
 1883 001c F5D1     		bne	.L329
 1884              	.L330:
 1885 001e 70BD     		pop	{r4, r5, r6, pc}
 1886              		.size	_ZNK8Platform16WriteFanSettingsEP9FileStore, .-_ZNK8Platform16WriteFanSettingsEP9FileStore
 1887              		.section	.text._ZNK8Platform26AdcReadingToCpuTemperatureEm,"ax",%progbits
 1888              		.align	1
 1889              		.p2align 2,,3
 1890              		.global	_ZNK8Platform26AdcReadingToCpuTemperatureEm
 1891              		.syntax unified
 1892              		.thumb
 1893              		.thumb_func
 1894              		.fpu fpv4-sp-d16
 1895              		.type	_ZNK8Platform26AdcReadingToCpuTemperatureEm, %function
 1896              	_ZNK8Platform26AdcReadingToCpuTemperatureEm:
 1897              		@ args = 0, pretend = 0, frame = 0
 1898              		@ frame_needed = 0, uses_anonymous_args = 0
 1899              		@ link register save eliminated.
 1900 0000 07EE901A 		vmov	s15, r1	@ int
 1901 0004 DFED0A6A 		vldr.32	s13, .L337
 1902 0008 9FED0A7A 		vldr.32	s14, .L337+4
 1903 000c B8EE676A 		vcvt.f32.u32	s12, s15
 1904 0010 DFED097A 		vldr.32	s15, .L337+8
 1905 0014 E6EE267A 		vfma.f32	s15, s12, s13
 1906 0018 00F5F360 		add	r0, r0, #1944
 1907 001c B3EE0B0A 		vmov.f32	s0, #2.7e+1
 1908 0020 A7EE870A 		vfma.f32	s0, s15, s14
 1909 0024 D0ED007A 		vldr.32	s15, [r0]
 1910 0028 30EE270A 		vadd.f32	s0, s0, s15
 1911 002c 7047     		bx	lr
 1912              	.L338:
 1913 002e 00BF     		.align	2
 1914              	.L337:
 1915 0030 3333D337 		.word	936588083
 1916 0034 16C45443 		.word	1129628694
 1917 0038 EC51B8BF 		.word	-1078439444
 1918              		.size	_ZNK8Platform26AdcReadingToCpuTemperatureEm, .-_ZNK8Platform26AdcReadingToCpuTemperatureEm
 1919              		.section	.text._ZN8Platform20InitialiseInterruptsEv,"ax",%progbits
 1920              		.align	1
 1921              		.p2align 2,,3
 1922              		.global	_ZN8Platform20InitialiseInterruptsEv
 1923              		.syntax unified
 1924              		.thumb
 1925              		.thumb_func
 1926              		.fpu fpv4-sp-d16
 1927              		.type	_ZN8Platform20InitialiseInterruptsEv, %function
 1928              	_ZN8Platform20InitialiseInterruptsEv:
 1929              		@ args = 0, pretend = 0, frame = 0
 1930              		@ frame_needed = 0, uses_anonymous_args = 0
 1931 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1932 0002 144C     		ldr	r4, .L341
 1933 0004 0025     		movs	r5, #0
 1934 0006 7026     		movs	r6, #112
 1935 0008 0746     		mov	r7, r0
 1936 000a 84F80453 		strb	r5, [r4, #772]
 1937 000e 0121     		movs	r1, #1
 1938 0010 1148     		ldr	r0, .L341+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 35


 1939 0012 84F81063 		strb	r6, [r4, #784]
 1940 0016 FFF7FEFF 		bl	_ZN9UARTClass20setInterruptPriorityEm
 1941 001a 2023     		movs	r3, #32
 1942 001c 84F82D63 		strb	r6, [r4, #813]
 1943 0020 84F80F33 		strb	r3, [r4, #783]
 1944 0024 FFF7FEFF 		bl	_ZN9StepTimer4InitEv
 1945 0028 5023     		movs	r3, #80
 1946 002a 9022     		movs	r2, #144
 1947 002c 84F80933 		strb	r3, [r4, #777]
 1948 0030 84F80A33 		strb	r3, [r4, #778]
 1949 0034 84F80B33 		strb	r3, [r4, #779]
 1950 0038 84F80C33 		strb	r3, [r4, #780]
 1951 003c 84F80D33 		strb	r3, [r4, #781]
 1952 0040 84F82363 		strb	r6, [r4, #803]
 1953 0044 84F81123 		strb	r2, [r4, #785]
 1954 0048 87F8EA5B 		strb	r5, [r7, #3050]
 1955 004c C7F8EC5B 		str	r5, [r7, #3052]
 1956 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1957              	.L342:
 1958 0052 00BF     		.align	2
 1959              	.L341:
 1960 0054 00E100E0 		.word	-536813312
 1961 0058 00000000 		.word	Serial
 1962              		.size	_ZN8Platform20InitialiseInterruptsEv, .-_ZN8Platform20InitialiseInterruptsEv
 1963              		.section	.text._ZN8Platform22DriverCoolingFansOnOffEmb,"ax",%progbits
 1964              		.align	1
 1965              		.p2align 2,,3
 1966              		.global	_ZN8Platform22DriverCoolingFansOnOffEmb
 1967              		.syntax unified
 1968              		.thumb
 1969              		.thumb_func
 1970              		.fpu fpv4-sp-d16
 1971              		.type	_ZN8Platform22DriverCoolingFansOnOffEmb, %function
 1972              	_ZN8Platform22DriverCoolingFansOnOffEmb:
 1973              		@ args = 0, pretend = 0, frame = 0
 1974              		@ frame_needed = 0, uses_anonymous_args = 0
 1975 0000 38B5     		push	{r3, r4, r5, lr}
 1976 0002 CB07     		lsls	r3, r1, #31
 1977 0004 0446     		mov	r4, r0
 1978 0006 01F00205 		and	r5, r1, #2
 1979 000a 07D5     		bpl	.L344
 1980 000c 6AB9     		cbnz	r2, .L345
 1981 000e 80F85024 		strb	r2, [r0, #1104]
 1982 0012 15B1     		cbz	r5, .L343
 1983 0014 0023     		movs	r3, #0
 1984 0016 84F85834 		strb	r3, [r4, #1112]
 1985              	.L343:
 1986 001a 38BD     		pop	{r3, r4, r5, pc}
 1987              	.L344:
 1988 001c 002D     		cmp	r5, #0
 1989 001e FCD0     		beq	.L343
 1990 0020 4AB9     		cbnz	r2, .L348
 1991 0022 0023     		movs	r3, #0
 1992 0024 84F85834 		strb	r3, [r4, #1112]
 1993 0028 F7E7     		b	.L343
 1994              	.L345:
 1995 002a 00F24C40 		addw	r0, r0, #1100
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 36


 1996 002e FFF7FEFF 		bl	_ZN11MillisTimer5StartEv
 1997 0032 002D     		cmp	r5, #0
 1998 0034 F1D0     		beq	.L343
 1999              	.L348:
 2000 0036 04F25440 		addw	r0, r4, #1108
 2001 003a BDE83840 		pop	{r3, r4, r5, lr}
 2002 003e FFF7FEBF 		b	_ZN11MillisTimer5StartEv
 2003              		.size	_ZN8Platform22DriverCoolingFansOnOffEmb, .-_ZN8Platform22DriverCoolingFansOnOffEmb
 2004 0042 00BF     		.section	.text._ZN8Platform9SetHeaterEjft,"ax",%progbits
 2005              		.align	1
 2006              		.p2align 2,,3
 2007              		.global	_ZN8Platform9SetHeaterEjft
 2008              		.syntax unified
 2009              		.thumb
 2010              		.thumb_func
 2011              		.fpu fpv4-sp-d16
 2012              		.type	_ZN8Platform9SetHeaterEjft, %function
 2013              	_ZN8Platform9SetHeaterEjft:
 2014              		@ args = 0, pretend = 0, frame = 0
 2015              		@ frame_needed = 0, uses_anonymous_args = 0
 2016 0000 10B5     		push	{r4, lr}
 2017 0002 114B     		ldr	r3, .L364
 2018 0004 5C5C     		ldrb	r4, [r3, r1]	@ zero_extendqisi2
 2019 0006 FF2C     		cmp	r4, #255
 2020 0008 2DED028B 		vpush.64	{d8}
 2021 000c 18D0     		beq	.L358
 2022 000e B0EE408A 		vmov.f32	s16, s0
 2023 0012 5AB1     		cbz	r2, .L363
 2024              	.L360:
 2025 0014 B7EE000A 		vmov.f32	s0, #1.0e+0
 2026 0018 30EE480A 		vsub.f32	s0, s0, s16
 2027 001c BDEC028B 		vldm	sp!, {d8}
 2028 0020 2046     		mov	r0, r4
 2029 0022 1146     		mov	r1, r2
 2030 0024 BDE81040 		pop	{r4, lr}
 2031 0028 FFF7FEBF 		b	_ZN6IoPort11WriteAnalogEhft
 2032              	.L363:
 2033 002c 074B     		ldr	r3, .L364+4
 2034 002e 49B2     		sxtb	r1, r1
 2035 0030 1869     		ldr	r0, [r3, #16]
 2036 0032 FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 2037 0036 0028     		cmp	r0, #0
 2038 0038 14BF     		ite	ne
 2039 003a 0A22     		movne	r2, #10
 2040 003c FA22     		moveq	r2, #250
 2041 003e E9E7     		b	.L360
 2042              	.L358:
 2043 0040 BDEC028B 		vldm	sp!, {d8}
 2044 0044 10BD     		pop	{r4, pc}
 2045              	.L365:
 2046 0046 00BF     		.align	2
 2047              	.L364:
 2048 0048 00000000 		.word	.LANCHOR3
 2049 004c 00000000 		.word	reprap
 2050              		.size	_ZN8Platform9SetHeaterEjft, .-_ZN8Platform9SetHeaterEjft
 2051              		.section	.text._ZN8Platform23UpdateConfiguredHeatersEv,"ax",%progbits
 2052              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 37


 2053              		.p2align 2,,3
 2054              		.global	_ZN8Platform23UpdateConfiguredHeatersEv
 2055              		.syntax unified
 2056              		.thumb
 2057              		.thumb_func
 2058              		.fpu fpv4-sp-d16
 2059              		.type	_ZN8Platform23UpdateConfiguredHeatersEv, %function
 2060              	_ZN8Platform23UpdateConfiguredHeatersEv:
 2061              		@ args = 0, pretend = 0, frame = 0
 2062              		@ frame_needed = 0, uses_anonymous_args = 0
 2063 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2064 0002 214B     		ldr	r3, .L380
 2065 0004 1C69     		ldr	r4, [r3, #16]
 2066 0006 0023     		movs	r3, #0
 2067 0008 0546     		mov	r5, r0
 2068 000a C0F83438 		str	r3, [r0, #2100]
 2069 000e 04F1D902 		add	r2, r4, #217
 2070 0012 04F1DD00 		add	r0, r4, #221
 2071 0016 0126     		movs	r6, #1
 2072              	.L367:
 2073 0018 12F9013B 		ldrsb	r3, [r2], #1
 2074 001c 002B     		cmp	r3, #0
 2075 001e 06DB     		blt	.L371
 2076 0020 D5F83418 		ldr	r1, [r5, #2100]
 2077 0024 06FA03F3 		lsl	r3, r6, r3
 2078 0028 0B43     		orrs	r3, r3, r1
 2079 002a C5F83438 		str	r3, [r5, #2100]
 2080              	.L371:
 2081 002e 8242     		cmp	r2, r0
 2082 0030 F2D1     		bne	.L367
 2083 0032 94F9DD30 		ldrsb	r3, [r4, #221]
 2084 0036 002B     		cmp	r3, #0
 2085 0038 07DB     		blt	.L368
 2086 003a D5F83428 		ldr	r2, [r5, #2100]
 2087 003e 0121     		movs	r1, #1
 2088 0040 01FA03F3 		lsl	r3, r1, r3
 2089 0044 1A43     		orrs	r2, r2, r3
 2090 0046 C5F83428 		str	r2, [r5, #2100]
 2091              	.L368:
 2092 004a 94F9DE30 		ldrsb	r3, [r4, #222]
 2093 004e 002B     		cmp	r3, #0
 2094 0050 07DB     		blt	.L369
 2095 0052 D5F83428 		ldr	r2, [r5, #2100]
 2096 0056 0121     		movs	r1, #1
 2097 0058 01FA03F3 		lsl	r3, r1, r3
 2098 005c 1A43     		orrs	r2, r2, r3
 2099 005e C5F83428 		str	r2, [r5, #2100]
 2100              	.L369:
 2101 0062 094E     		ldr	r6, .L380
 2102 0064 0024     		movs	r4, #0
 2103 0066 0127     		movs	r7, #1
 2104              	.L370:
 2105 0068 61B2     		sxtb	r1, r4
 2106 006a 3046     		mov	r0, r6
 2107 006c FFF7FEFF 		bl	_ZNK6RepRap22IsHeaterAssignedToToolEa
 2108 0070 30B1     		cbz	r0, .L373
 2109 0072 D5F83438 		ldr	r3, [r5, #2100]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 38


 2110 0076 07FA04F2 		lsl	r2, r7, r4
 2111 007a 1343     		orrs	r3, r3, r2
 2112 007c C5F83438 		str	r3, [r5, #2100]
 2113              	.L373:
 2114 0080 0134     		adds	r4, r4, #1
 2115 0082 082C     		cmp	r4, #8
 2116 0084 F0D1     		bne	.L370
 2117 0086 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2118              	.L381:
 2119              		.align	2
 2120              	.L380:
 2121 0088 00000000 		.word	reprap
 2122              		.size	_ZN8Platform23UpdateConfiguredHeatersEv, .-_ZN8Platform23UpdateConfiguredHeatersEv
 2123              		.section	.text._ZNK8Platform17EndStopInputStateEj,"ax",%progbits
 2124              		.align	1
 2125              		.p2align 2,,3
 2126              		.global	_ZNK8Platform17EndStopInputStateEj
 2127              		.syntax unified
 2128              		.thumb
 2129              		.thumb_func
 2130              		.fpu fpv4-sp-d16
 2131              		.type	_ZNK8Platform17EndStopInputStateEj, %function
 2132              	_ZNK8Platform17EndStopInputStateEj:
 2133              		@ args = 0, pretend = 0, frame = 0
 2134              		@ frame_needed = 0, uses_anonymous_args = 0
 2135              		@ link register save eliminated.
 2136 0000 0B29     		cmp	r1, #11
 2137 0002 06D8     		bhi	.L383
 2138 0004 0844     		add	r0, r0, r1
 2139 0006 90F86E01 		ldrb	r0, [r0, #366]	@ zero_extendqisi2
 2140 000a FF28     		cmp	r0, #255
 2141 000c 01D0     		beq	.L383
 2142 000e FFF7FEBF 		b	_ZN6IoPort7ReadPinEh
 2143              	.L383:
 2144 0012 0020     		movs	r0, #0
 2145 0014 7047     		bx	lr
 2146              		.size	_ZNK8Platform17EndStopInputStateEj, .-_ZNK8Platform17EndStopInputStateEj
 2147 0016 00BF     		.section	.text._ZNK8Platform19GetAllEndstopStatesEv,"ax",%progbits
 2148              		.align	1
 2149              		.p2align 2,,3
 2150              		.global	_ZNK8Platform19GetAllEndstopStatesEv
 2151              		.syntax unified
 2152              		.thumb
 2153              		.thumb_func
 2154              		.fpu fpv4-sp-d16
 2155              		.type	_ZNK8Platform19GetAllEndstopStatesEv, %function
 2156              	_ZNK8Platform19GetAllEndstopStatesEv:
 2157              		@ args = 0, pretend = 0, frame = 0
 2158              		@ frame_needed = 0, uses_anonymous_args = 0
 2159 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2160 0002 0024     		movs	r4, #0
 2161 0004 00F26D15 		addw	r5, r0, #365
 2162 0008 2646     		mov	r6, r4
 2163 000a 0127     		movs	r7, #1
 2164              	.L389:
 2165 000c 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
 2166 0010 FF2B     		cmp	r3, #255
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 39


 2167 0012 1846     		mov	r0, r3
 2168 0014 05D0     		beq	.L388
 2169 0016 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 2170 001a 10B1     		cbz	r0, .L388
 2171 001c 07FA04F3 		lsl	r3, r7, r4
 2172 0020 1E43     		orrs	r6, r6, r3
 2173              	.L388:
 2174 0022 0134     		adds	r4, r4, #1
 2175 0024 0C2C     		cmp	r4, #12
 2176 0026 F1D1     		bne	.L389
 2177 0028 3046     		mov	r0, r6
 2178 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2179              		.size	_ZNK8Platform19GetAllEndstopStatesEv, .-_ZNK8Platform19GetAllEndstopStatesEv
 2180              		.section	.text._ZNK8Platform15GetZProbeResultEv,"ax",%progbits
 2181              		.align	1
 2182              		.p2align 2,,3
 2183              		.global	_ZNK8Platform15GetZProbeResultEv
 2184              		.syntax unified
 2185              		.thumb
 2186              		.thumb_func
 2187              		.fpu fpv4-sp-d16
 2188              		.type	_ZNK8Platform15GetZProbeResultEv, %function
 2189              	_ZNK8Platform15GetZProbeResultEv:
 2190              		@ args = 0, pretend = 0, frame = 0
 2191              		@ frame_needed = 0, uses_anonymous_args = 0
 2192 0000 10B5     		push	{r4, lr}
 2193 0002 0446     		mov	r4, r0
 2194 0004 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 2195 0008 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 2196 000c 0A2B     		cmp	r3, #10
 2197 000e 08D8     		bhi	.L399
 2198 0010 0122     		movs	r2, #1
 2199 0012 02FA03F3 		lsl	r3, r2, r3
 2200 0016 40F22672 		movw	r2, #1830
 2201 001a 1342     		tst	r3, r2
 2202 001c 0FD1     		bne	.L400
 2203 001e 1B07     		lsls	r3, r3, #28
 2204 0020 13D4     		bmi	.L401
 2205              	.L399:
 2206 0022 3C34     		adds	r4, r4, #60
 2207              	.L402:
 2208 0024 2368     		ldr	r3, [r4]
 2209 0026 9842     		cmp	r0, r3
 2210 0028 0DDA     		bge	.L404
 2211              	.L407:
 2212 002a 00EB8000 		add	r0, r0, r0, lsl #2
 2213 002e 03EBC303 		add	r3, r3, r3, lsl #3
 2214 0032 B3EB400F 		cmp	r3, r0, lsl #1
 2215 0036 D4BF     		ite	le
 2216 0038 0320     		movle	r0, #3
 2217 003a 0020     		movgt	r0, #0
 2218 003c 10BD     		pop	{r4, pc}
 2219              	.L400:
 2220 003e 6C34     		adds	r4, r4, #108
 2221 0040 2368     		ldr	r3, [r4]
 2222 0042 9842     		cmp	r0, r3
 2223 0044 F1DB     		blt	.L407
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 40


 2224              	.L404:
 2225 0046 0120     		movs	r0, #1
 2226 0048 10BD     		pop	{r4, pc}
 2227              	.L401:
 2228 004a 9C34     		adds	r4, r4, #156
 2229 004c EAE7     		b	.L402
 2230              		.size	_ZNK8Platform15GetZProbeResultEv, .-_ZNK8Platform15GetZProbeResultEv
 2231 004e 00BF     		.section	.text._ZNK8Platform7StoppedEj,"ax",%progbits
 2232              		.align	1
 2233              		.p2align 2,,3
 2234              		.global	_ZNK8Platform7StoppedEj
 2235              		.syntax unified
 2236              		.thumb
 2237              		.thumb_func
 2238              		.fpu fpv4-sp-d16
 2239              		.type	_ZNK8Platform7StoppedEj, %function
 2240              	_ZNK8Platform7StoppedEj:
 2241              		@ args = 0, pretend = 0, frame = 0
 2242              		@ frame_needed = 0, uses_anonymous_args = 0
 2243 0000 70B5     		push	{r4, r5, r6, lr}
 2244 0002 594D     		ldr	r5, .L481
 2245 0004 6B69     		ldr	r3, [r5, #20]
 2246 0006 D3F85C33 		ldr	r3, [r3, #860]
 2247 000a 9942     		cmp	r1, r3
 2248 000c 0446     		mov	r4, r0
 2249 000e 09D2     		bcs	.L409
 2250 0010 00EB8106 		add	r6, r0, r1, lsl #2
 2251 0014 D6F81028 		ldr	r2, [r6, #2064]
 2252 0018 032A     		cmp	r2, #3
 2253 001a 0FD8     		bhi	.L434
 2254 001c DFE802F0 		tbb	[pc, r2]
 2255              	.L412:
 2256 0020 1D       		.byte	(.L411-.L412)/2
 2257 0021 28       		.byte	(.L413-.L412)/2
 2258 0022 39       		.byte	(.L414-.L412)/2
 2259 0023 10       		.byte	(.L415-.L412)/2
 2260              		.p2align 1
 2261              	.L409:
 2262 0024 0B29     		cmp	r1, #11
 2263 0026 09D8     		bhi	.L434
 2264 0028 C91A     		subs	r1, r1, r3
 2265 002a 0144     		add	r1, r1, r0
 2266 002c 91F89803 		ldrb	r0, [r1, #920]	@ zero_extendqisi2
 2267 0030 0B28     		cmp	r0, #11
 2268 0032 03D8     		bhi	.L434
 2269 0034 FFF7FEFF 		bl	_ZN12SmartDrivers13GetLiveStatusEj
 2270 0038 C307     		lsls	r3, r0, #31
 2271 003a 28D4     		bmi	.L426
 2272              	.L434:
 2273 003c 0020     		movs	r0, #0
 2274              	.L408:
 2275 003e 70BD     		pop	{r4, r5, r6, pc}
 2276              	.L415:
 2277 0040 EA68     		ldr	r2, [r5, #12]
 2278 0042 D2F8742A 		ldr	r2, [r2, #2676]
 2279 0046 D27B     		ldrb	r2, [r2, #15]	@ zero_extendqisi2
 2280 0048 013A     		subs	r2, r2, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 41


 2281 004a 072A     		cmp	r2, #7
 2282 004c 7FD8     		bhi	.L417
 2283 004e DFE802F0 		tbb	[pc, r2]
 2284              	.L419:
 2285 0052 42       		.byte	(.L418-.L419)/2
 2286 0053 2B       		.byte	(.L420-.L419)/2
 2287 0054 7E       		.byte	(.L417-.L419)/2
 2288 0055 7E       		.byte	(.L417-.L419)/2
 2289 0056 71       		.byte	(.L421-.L419)/2
 2290 0057 7E       		.byte	(.L417-.L419)/2
 2291 0058 7E       		.byte	(.L417-.L419)/2
 2292 0059 58       		.byte	(.L422-.L419)/2
 2293              		.p2align 1
 2294              	.L411:
 2295 005a 0B29     		cmp	r1, #11
 2296 005c EED8     		bhi	.L434
 2297 005e 2144     		add	r1, r1, r4
 2298 0060 91F86E01 		ldrb	r0, [r1, #366]	@ zero_extendqisi2
 2299 0064 FF28     		cmp	r0, #255
 2300 0066 E9D0     		beq	.L434
 2301 0068 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 2302 006c 58B1     		cbz	r0, .L475
 2303 006e E5E7     		b	.L434
 2304              	.L413:
 2305 0070 0B29     		cmp	r1, #11
 2306 0072 E3D8     		bhi	.L434
 2307 0074 2144     		add	r1, r1, r4
 2308 0076 91F86E01 		ldrb	r0, [r1, #366]	@ zero_extendqisi2
 2309 007a FF28     		cmp	r0, #255
 2310 007c DED0     		beq	.L434
 2311 007e FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 2312 0082 0028     		cmp	r0, #0
 2313 0084 DAD0     		beq	.L434
 2314              	.L475:
 2315 0086 D6F8EC37 		ldr	r3, [r6, #2028]
 2316 008a 022B     		cmp	r3, #2
 2317 008c 0AD1     		bne	.L416
 2318              	.L426:
 2319 008e 0220     		movs	r0, #2
 2320 0090 70BD     		pop	{r4, r5, r6, pc}
 2321              	.L414:
 2322 0092 2046     		mov	r0, r4
 2323 0094 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2324 0098 0128     		cmp	r0, #1
 2325 009a D0D1     		bne	.L408
 2326 009c D6F8EC07 		ldr	r0, [r6, #2028]
 2327 00a0 0228     		cmp	r0, #2
 2328 00a2 CCD0     		beq	.L408
 2329              	.L416:
 2330 00a4 0120     		movs	r0, #1
 2331 00a6 70BD     		pop	{r4, r5, r6, pc}
 2332              	.L420:
 2333 00a8 31F00202 		bics	r2, r1, #2
 2334 00ac 4FD1     		bne	.L417
 2335 00ae 002B     		cmp	r3, #0
 2336 00b0 C4D0     		beq	.L434
 2337 00b2 1146     		mov	r1, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 42


 2338 00b4 2046     		mov	r0, r4
 2339 00b6 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 2340 00ba 0028     		cmp	r0, #0
 2341 00bc E3D1     		bne	.L475
 2342 00be 6B69     		ldr	r3, [r5, #20]
 2343 00c0 D3F85C33 		ldr	r3, [r3, #860]
 2344 00c4 022B     		cmp	r3, #2
 2345 00c6 B9D9     		bls	.L434
 2346 00c8 2046     		mov	r0, r4
 2347 00ca 0221     		movs	r1, #2
 2348 00cc FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 2349 00d0 0028     		cmp	r0, #0
 2350 00d2 D8D1     		bne	.L475
 2351 00d4 B2E7     		b	.L434
 2352              	.L418:
 2353 00d6 0129     		cmp	r1, #1
 2354 00d8 39D8     		bhi	.L417
 2355              	.L479:
 2356 00da 002B     		cmp	r3, #0
 2357 00dc AED0     		beq	.L434
 2358 00de 0021     		movs	r1, #0
 2359 00e0 2046     		mov	r0, r4
 2360 00e2 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 2361 00e6 0028     		cmp	r0, #0
 2362 00e8 CDD1     		bne	.L475
 2363 00ea 6B69     		ldr	r3, [r5, #20]
 2364 00ec D3F85C33 		ldr	r3, [r3, #860]
 2365 00f0 012B     		cmp	r3, #1
 2366 00f2 A3D9     		bls	.L434
 2367 00f4 2046     		mov	r0, r4
 2368 00f6 0121     		movs	r1, #1
 2369 00f8 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 2370 00fc 0028     		cmp	r0, #0
 2371 00fe C2D1     		bne	.L475
 2372 0100 9CE7     		b	.L434
 2373              	.L422:
 2374 0102 0129     		cmp	r1, #1
 2375 0104 E9D9     		bls	.L479
 2376 0106 CA1E     		subs	r2, r1, #3
 2377 0108 012A     		cmp	r2, #1
 2378 010a 20D8     		bhi	.L417
 2379 010c 032B     		cmp	r3, #3
 2380 010e 95D9     		bls	.L434
 2381 0110 0321     		movs	r1, #3
 2382 0112 2046     		mov	r0, r4
 2383 0114 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 2384 0118 0028     		cmp	r0, #0
 2385 011a B4D1     		bne	.L475
 2386 011c 6B69     		ldr	r3, [r5, #20]
 2387 011e D3F85C33 		ldr	r3, [r3, #860]
 2388 0122 042B     		cmp	r3, #4
 2389 0124 8AD9     		bls	.L434
 2390              	.L468:
 2391 0126 2046     		mov	r0, r4
 2392 0128 0421     		movs	r1, #4
 2393 012a FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 2394 012e 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 43


 2395 0130 A9D1     		bne	.L475
 2396 0132 83E7     		b	.L434
 2397              	.L421:
 2398 0134 0129     		cmp	r1, #1
 2399 0136 D0D9     		bls	.L479
 2400 0138 0329     		cmp	r1, #3
 2401 013a 08D1     		bne	.L417
 2402 013c 032B     		cmp	r3, #3
 2403 013e 0CD8     		bhi	.L430
 2404              	.L432:
 2405 0140 6B69     		ldr	r3, [r5, #20]
 2406 0142 D3F85C33 		ldr	r3, [r3, #860]
 2407 0146 042B     		cmp	r3, #4
 2408 0148 7FF678AF 		bls	.L434
 2409 014c EBE7     		b	.L468
 2410              	.L417:
 2411 014e 2046     		mov	r0, r4
 2412 0150 FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 2413 0154 0028     		cmp	r0, #0
 2414 0156 96D1     		bne	.L475
 2415 0158 70E7     		b	.L434
 2416              	.L430:
 2417 015a 2046     		mov	r0, r4
 2418 015c FFF7FEFF 		bl	_ZNK8Platform19AnyAxisMotorStalledEj.part.22
 2419 0160 0028     		cmp	r0, #0
 2420 0162 90D1     		bne	.L475
 2421 0164 ECE7     		b	.L432
 2422              	.L482:
 2423 0166 00BF     		.align	2
 2424              	.L481:
 2425 0168 00000000 		.word	reprap
 2426              		.size	_ZNK8Platform7StoppedEj, .-_ZNK8Platform7StoppedEj
 2427              		.section	.text._ZN8Platform12SetDirectionEjb,"ax",%progbits
 2428              		.align	1
 2429              		.p2align 2,,3
 2430              		.global	_ZN8Platform12SetDirectionEjb
 2431              		.syntax unified
 2432              		.thumb
 2433              		.thumb_func
 2434              		.fpu fpv4-sp-d16
 2435              		.type	_ZN8Platform12SetDirectionEjb, %function
 2436              	_ZN8Platform12SetDirectionEjb:
 2437              		@ args = 0, pretend = 0, frame = 0
 2438              		@ frame_needed = 0, uses_anonymous_args = 0
 2439 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2440 0004 0646     		mov	r6, r0
 2441 0006 00EB8100 		add	r0, r0, r1, lsl #2
 2442 000a D6F81434 		ldr	r3, [r6, #1044]
 2443 000e D0F8A473 		ldr	r7, [r0, #932]
 2444 0012 1F40     		ands	r7, r7, r3
 2445 0014 9046     		mov	r8, r2
 2446 0016 09D0     		beq	.L484
 2447 0018 304B     		ldr	r3, .L508
 2448 001a D6F81044 		ldr	r4, [r6, #1040]
 2449 001e 1868     		ldr	r0, [r3]
 2450 0020 2F4A     		ldr	r2, .L508+4
 2451              	.L485:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 44


 2452 0022 D2F89030 		ldr	r3, [r2, #144]
 2453 0026 1B1A     		subs	r3, r3, r0
 2454 0028 A342     		cmp	r3, r4
 2455 002a FAD3     		bcc	.L485
 2456              	.L484:
 2457 002c 2D4B     		ldr	r3, .L508+8
 2458 002e 5B69     		ldr	r3, [r3, #20]
 2459 0030 D3F85C33 		ldr	r3, [r3, #860]
 2460 0034 9942     		cmp	r1, r3
 2461 0036 30D2     		bcs	.L486
 2462 0038 01EB4101 		add	r1, r1, r1, lsl #1
 2463 003c 8900     		lsls	r1, r1, #2
 2464 003e 06EB010A 		add	r10, r6, r1
 2465 0042 DAF82C33 		ldr	r3, [r10, #812]
 2466 0046 03B3     		cbz	r3, .L488
 2467 0048 01F54C71 		add	r1, r1, #816
 2468 004c DFF89C90 		ldr	r9, .L508+16
 2469 0050 7418     		adds	r4, r6, r1
 2470 0052 0025     		movs	r5, #0
 2471 0054 03E0     		b	.L492
 2472              	.L489:
 2473 0056 DAF82C33 		ldr	r3, [r10, #812]
 2474 005a AB42     		cmp	r3, r5
 2475 005c 15D9     		bls	.L488
 2476              	.L492:
 2477 005e 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 2478 0062 0B2B     		cmp	r3, #11
 2479 0064 05F10105 		add	r5, r5, #1
 2480 0068 F5D8     		bhi	.L489
 2481 006a F218     		adds	r2, r6, r3
 2482 006c 92F80C11 		ldrb	r1, [r2, #268]	@ zero_extendqisi2
 2483 0070 B8F1000F 		cmp	r8, #0
 2484 0074 01D1     		bne	.L490
 2485 0076 81F00101 		eor	r1, r1, #1
 2486              	.L490:
 2487 007a 19F80300 		ldrb	r0, [r9, r3]	@ zero_extendqisi2
 2488 007e FFF7FEFF 		bl	digitalWrite
 2489 0082 DAF82C33 		ldr	r3, [r10, #812]
 2490 0086 AB42     		cmp	r3, r5
 2491 0088 E9D8     		bhi	.L492
 2492              	.L488:
 2493 008a 27B1     		cbz	r7, .L483
 2494 008c 144A     		ldr	r2, .L508+4
 2495 008e 164B     		ldr	r3, .L508+12
 2496 0090 D2F89020 		ldr	r2, [r2, #144]
 2497 0094 1A60     		str	r2, [r3]
 2498              	.L483:
 2499 0096 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2500              	.L486:
 2501 009a 0B29     		cmp	r1, #11
 2502 009c 10D8     		bhi	.L493
 2503 009e C91A     		subs	r1, r1, r3
 2504 00a0 3144     		add	r1, r1, r6
 2505 00a2 91F89833 		ldrb	r3, [r1, #920]	@ zero_extendqisi2
 2506 00a6 0B2B     		cmp	r3, #11
 2507 00a8 EFD8     		bhi	.L488
 2508 00aa 1E44     		add	r6, r6, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 45


 2509 00ac 96F80C11 		ldrb	r1, [r6, #268]	@ zero_extendqisi2
 2510 00b0 B8F1000F 		cmp	r8, #0
 2511 00b4 0ED0     		beq	.L507
 2512              	.L495:
 2513 00b6 0D4A     		ldr	r2, .L508+16
 2514 00b8 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 2515 00ba FFF7FEFF 		bl	digitalWrite
 2516 00be E4E7     		b	.L488
 2517              	.L493:
 2518 00c0 0C39     		subs	r1, r1, #12
 2519 00c2 0B29     		cmp	r1, #11
 2520 00c4 E1D8     		bhi	.L488
 2521 00c6 CBB2     		uxtb	r3, r1
 2522 00c8 1E44     		add	r6, r6, r3
 2523 00ca 96F80C11 		ldrb	r1, [r6, #268]	@ zero_extendqisi2
 2524 00ce B8F1000F 		cmp	r8, #0
 2525 00d2 F0D1     		bne	.L495
 2526              	.L507:
 2527 00d4 81F00101 		eor	r1, r1, #1
 2528 00d8 EDE7     		b	.L495
 2529              	.L509:
 2530 00da 00BF     		.align	2
 2531              	.L508:
 2532 00dc 00000000 		.word	_ZN3DDA15lastStepLowTimeE
 2533 00e0 00000940 		.word	1074331648
 2534 00e4 00000000 		.word	reprap
 2535 00e8 00000000 		.word	_ZN3DDA17lastDirChangeTimeE
 2536 00ec 00000000 		.word	.LANCHOR2
 2537              		.size	_ZN8Platform12SetDirectionEjb, .-_ZN8Platform12SetDirectionEjb
 2538              		.section	.text._ZN8Platform12EnableDriverEj,"ax",%progbits
 2539              		.align	1
 2540              		.p2align 2,,3
 2541              		.global	_ZN8Platform12EnableDriverEj
 2542              		.syntax unified
 2543              		.thumb
 2544              		.thumb_func
 2545              		.fpu fpv4-sp-d16
 2546              		.type	_ZN8Platform12EnableDriverEj, %function
 2547              	_ZN8Platform12EnableDriverEj:
 2548              		@ args = 0, pretend = 0, frame = 0
 2549              		@ frame_needed = 0, uses_anonymous_args = 0
 2550 0000 D0F81C34 		ldr	r3, [r0, #1052]
 2551 0004 8B42     		cmp	r3, r1
 2552 0006 02D9     		bls	.L511
 2553 0008 90F85D34 		ldrb	r3, [r0, #1117]	@ zero_extendqisi2
 2554 000c FBB1     		cbz	r3, .L521
 2555              	.L511:
 2556 000e 0B29     		cmp	r1, #11
 2557 0010 1CD8     		bhi	.L518
 2558 0012 70B5     		push	{r4, r5, r6, lr}
 2559 0014 4618     		adds	r6, r0, r1
 2560 0016 96F80031 		ldrb	r3, [r6, #256]	@ zero_extendqisi2
 2561 001a 022B     		cmp	r3, #2
 2562 001c 1BD0     		beq	.L510
 2563 001e 0223     		movs	r3, #2
 2564 0020 0546     		mov	r5, r0
 2565 0022 86F80031 		strb	r3, [r6, #256]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 46


 2566 0026 0C46     		mov	r4, r1
 2567 0028 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.24
 2568 002c D5F81C34 		ldr	r3, [r5, #1052]
 2569 0030 A342     		cmp	r3, r4
 2570 0032 11D8     		bhi	.L522
 2571 0034 96F92411 		ldrsb	r1, [r6, #292]
 2572 0038 0A4B     		ldr	r3, .L523
 2573 003a 0029     		cmp	r1, #0
 2574 003c 185D     		ldrb	r0, [r3, r4]	@ zero_extendqisi2
 2575 003e D4BF     		ite	le
 2576 0040 0021     		movle	r1, #0
 2577 0042 0121     		movgt	r1, #1
 2578 0044 BDE87040 		pop	{r4, r5, r6, lr}
 2579 0048 FFF7FEBF 		b	digitalWrite
 2580              	.L518:
 2581 004c 7047     		bx	lr
 2582              	.L521:
 2583 004e 0123     		movs	r3, #1
 2584 0050 80F85E34 		strb	r3, [r0, #1118]
 2585 0054 7047     		bx	lr
 2586              	.L510:
 2587 0056 70BD     		pop	{r4, r5, r6, pc}
 2588              	.L522:
 2589 0058 2046     		mov	r0, r4
 2590 005a 0121     		movs	r1, #1
 2591 005c BDE87040 		pop	{r4, r5, r6, lr}
 2592 0060 FFF7FEBF 		b	_ZN12SmartDrivers11EnableDriveEjb
 2593              	.L524:
 2594              		.align	2
 2595              	.L523:
 2596 0064 00000000 		.word	.LANCHOR0
 2597              		.size	_ZN8Platform12EnableDriverEj, .-_ZN8Platform12EnableDriverEj
 2598              		.section	.text._ZN8Platform13DisableDriverEj,"ax",%progbits
 2599              		.align	1
 2600              		.p2align 2,,3
 2601              		.global	_ZN8Platform13DisableDriverEj
 2602              		.syntax unified
 2603              		.thumb
 2604              		.thumb_func
 2605              		.fpu fpv4-sp-d16
 2606              		.type	_ZN8Platform13DisableDriverEj, %function
 2607              	_ZN8Platform13DisableDriverEj:
 2608              		@ args = 0, pretend = 0, frame = 0
 2609              		@ frame_needed = 0, uses_anonymous_args = 0
 2610              		@ link register save eliminated.
 2611 0000 0B29     		cmp	r1, #11
 2612 0002 01D8     		bhi	.L525
 2613 0004 FFF7FEBF 		b	_ZN8Platform13DisableDriverEj.part.23
 2614              	.L525:
 2615 0008 7047     		bx	lr
 2616              		.size	_ZN8Platform13DisableDriverEj, .-_ZN8Platform13DisableDriverEj
 2617 000a 00BF     		.section	.text._ZN8Platform11EnableDriveEj,"ax",%progbits
 2618              		.align	1
 2619              		.p2align 2,,3
 2620              		.global	_ZN8Platform11EnableDriveEj
 2621              		.syntax unified
 2622              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 47


 2623              		.thumb_func
 2624              		.fpu fpv4-sp-d16
 2625              		.type	_ZN8Platform11EnableDriveEj, %function
 2626              	_ZN8Platform11EnableDriveEj:
 2627              		@ args = 0, pretend = 0, frame = 0
 2628              		@ frame_needed = 0, uses_anonymous_args = 0
 2629 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2630 0002 134B     		ldr	r3, .L534
 2631 0004 5B69     		ldr	r3, [r3, #20]
 2632 0006 D3F85C33 		ldr	r3, [r3, #860]
 2633 000a 8B42     		cmp	r3, r1
 2634 000c 0646     		mov	r6, r0
 2635 000e 15D9     		bls	.L528
 2636 0010 01EB4101 		add	r1, r1, r1, lsl #1
 2637 0014 8900     		lsls	r1, r1, #2
 2638 0016 4718     		adds	r7, r0, r1
 2639 0018 D7F82C33 		ldr	r3, [r7, #812]
 2640 001c 6BB1     		cbz	r3, .L527
 2641 001e 01F54C71 		add	r1, r1, #816
 2642 0022 4418     		adds	r4, r0, r1
 2643 0024 0025     		movs	r5, #0
 2644              	.L532:
 2645 0026 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 2646 002a 3046     		mov	r0, r6
 2647 002c FFF7FEFF 		bl	_ZN8Platform12EnableDriverEj
 2648 0030 D7F82C33 		ldr	r3, [r7, #812]
 2649 0034 0135     		adds	r5, r5, #1
 2650 0036 AB42     		cmp	r3, r5
 2651 0038 F5D8     		bhi	.L532
 2652              	.L527:
 2653 003a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2654              	.L528:
 2655 003c 0B29     		cmp	r1, #11
 2656 003e FCD8     		bhi	.L527
 2657 0040 C91A     		subs	r1, r1, r3
 2658 0042 0144     		add	r1, r1, r0
 2659 0044 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2660 0048 91F89813 		ldrb	r1, [r1, #920]	@ zero_extendqisi2
 2661 004c FFF7FEBF 		b	_ZN8Platform12EnableDriverEj
 2662              	.L535:
 2663              		.align	2
 2664              	.L534:
 2665 0050 00000000 		.word	reprap
 2666              		.size	_ZN8Platform11EnableDriveEj, .-_ZN8Platform11EnableDriveEj
 2667              		.section	.text._ZN8Platform12DisableDriveEj,"ax",%progbits
 2668              		.align	1
 2669              		.p2align 2,,3
 2670              		.global	_ZN8Platform12DisableDriveEj
 2671              		.syntax unified
 2672              		.thumb
 2673              		.thumb_func
 2674              		.fpu fpv4-sp-d16
 2675              		.type	_ZN8Platform12DisableDriveEj, %function
 2676              	_ZN8Platform12DisableDriveEj:
 2677              		@ args = 0, pretend = 0, frame = 0
 2678              		@ frame_needed = 0, uses_anonymous_args = 0
 2679 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 48


 2680 0002 184B     		ldr	r3, .L544
 2681 0004 5B69     		ldr	r3, [r3, #20]
 2682 0006 D3F85C23 		ldr	r2, [r3, #860]
 2683 000a 8A42     		cmp	r2, r1
 2684 000c 0646     		mov	r6, r0
 2685 000e 1DD9     		bls	.L537
 2686 0010 01EB4101 		add	r1, r1, r1, lsl #1
 2687 0014 8900     		lsls	r1, r1, #2
 2688 0016 4718     		adds	r7, r0, r1
 2689 0018 D7F82C23 		ldr	r2, [r7, #812]
 2690 001c AAB1     		cbz	r2, .L536
 2691 001e 01F54C71 		add	r1, r1, #816
 2692 0022 4418     		adds	r4, r0, r1
 2693 0024 0025     		movs	r5, #0
 2694 0026 03E0     		b	.L542
 2695              	.L540:
 2696 0028 D7F82C33 		ldr	r3, [r7, #812]
 2697 002c AB42     		cmp	r3, r5
 2698 002e 0CD9     		bls	.L536
 2699              	.L542:
 2700 0030 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 2701 0034 0B29     		cmp	r1, #11
 2702 0036 05F10105 		add	r5, r5, #1
 2703 003a F5D8     		bhi	.L540
 2704 003c 3046     		mov	r0, r6
 2705 003e FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj.part.23
 2706 0042 D7F82C33 		ldr	r3, [r7, #812]
 2707 0046 AB42     		cmp	r3, r5
 2708 0048 F2D8     		bhi	.L542
 2709              	.L536:
 2710 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2711              	.L537:
 2712 004c 0B29     		cmp	r1, #11
 2713 004e FCD8     		bhi	.L536
 2714 0050 891A     		subs	r1, r1, r2
 2715 0052 0144     		add	r1, r1, r0
 2716 0054 91F89813 		ldrb	r1, [r1, #920]	@ zero_extendqisi2
 2717 0058 0B29     		cmp	r1, #11
 2718 005a F6D8     		bhi	.L536
 2719 005c BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2720 0060 FFF7FEBF 		b	_ZN8Platform13DisableDriverEj.part.23
 2721              	.L545:
 2722              		.align	2
 2723              	.L544:
 2724 0064 00000000 		.word	reprap
 2725              		.size	_ZN8Platform12DisableDriveEj, .-_ZN8Platform12DisableDriveEj
 2726              		.section	.text._ZN8Platform16DisableAllDrivesEv,"ax",%progbits
 2727              		.align	1
 2728              		.p2align 2,,3
 2729              		.global	_ZN8Platform16DisableAllDrivesEv
 2730              		.syntax unified
 2731              		.thumb
 2732              		.thumb_func
 2733              		.fpu fpv4-sp-d16
 2734              		.type	_ZN8Platform16DisableAllDrivesEv, %function
 2735              	_ZN8Platform16DisableAllDrivesEv:
 2736              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 49


 2737              		@ frame_needed = 0, uses_anonymous_args = 0
 2738 0000 38B5     		push	{r3, r4, r5, lr}
 2739 0002 0546     		mov	r5, r0
 2740 0004 0024     		movs	r4, #0
 2741 0006 06E0     		b	.L548
 2742              	.L547:
 2743 0008 2146     		mov	r1, r4
 2744 000a 2846     		mov	r0, r5
 2745 000c 0134     		adds	r4, r4, #1
 2746 000e FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj.part.23
 2747 0012 0C2C     		cmp	r4, #12
 2748 0014 0ED0     		beq	.L551
 2749              	.L548:
 2750 0016 FFF7FEFF 		bl	_Z11inInterruptv
 2751 001a 0028     		cmp	r0, #0
 2752 001c F4D1     		bne	.L547
 2753 001e 2146     		mov	r1, r4
 2754 0020 2846     		mov	r0, r5
 2755 0022 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.24
 2756 0026 2146     		mov	r1, r4
 2757 0028 2846     		mov	r0, r5
 2758 002a 0134     		adds	r4, r4, #1
 2759 002c FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj.part.23
 2760 0030 0C2C     		cmp	r4, #12
 2761 0032 F0D1     		bne	.L548
 2762              	.L551:
 2763 0034 38BD     		pop	{r3, r4, r5, pc}
 2764              		.size	_ZN8Platform16DisableAllDrivesEv, .-_ZN8Platform16DisableAllDrivesEv
 2765 0036 00BF     		.section	.text._ZN8Platform14SetDriversIdleEv,"ax",%progbits
 2766              		.align	1
 2767              		.p2align 2,,3
 2768              		.global	_ZN8Platform14SetDriversIdleEv
 2769              		.syntax unified
 2770              		.thumb
 2771              		.thumb_func
 2772              		.fpu fpv4-sp-d16
 2773              		.type	_ZN8Platform14SetDriversIdleEv, %function
 2774              	_ZN8Platform14SetDriversIdleEv:
 2775              		@ args = 0, pretend = 0, frame = 0
 2776              		@ frame_needed = 0, uses_anonymous_args = 0
 2777 0000 70B5     		push	{r4, r5, r6, lr}
 2778 0002 00F58363 		add	r3, r0, #1048
 2779 0006 D3ED007A 		vldr.32	s15, [r3]
 2780 000a F5EE407A 		vcmp.f32	s15, #0
 2781 000e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2782 0012 15D0     		beq	.L559
 2783 0014 0546     		mov	r5, r0
 2784 0016 0024     		movs	r4, #0
 2785 0018 0126     		movs	r6, #1
 2786 001a 02E0     		b	.L553
 2787              	.L555:
 2788 001c 0134     		adds	r4, r4, #1
 2789 001e 0C2C     		cmp	r4, #12
 2790 0020 0DD0     		beq	.L552
 2791              	.L553:
 2792 0022 2B19     		adds	r3, r5, r4
 2793 0024 93F80021 		ldrb	r2, [r3, #256]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 50


 2794 0028 022A     		cmp	r2, #2
 2795 002a F7D1     		bne	.L555
 2796 002c 2146     		mov	r1, r4
 2797 002e 83F80061 		strb	r6, [r3, #256]
 2798 0032 2846     		mov	r0, r5
 2799 0034 0134     		adds	r4, r4, #1
 2800 0036 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.24
 2801 003a 0C2C     		cmp	r4, #12
 2802 003c F1D1     		bne	.L553
 2803              	.L552:
 2804 003e 70BD     		pop	{r4, r5, r6, pc}
 2805              	.L559:
 2806 0040 FFF7FEFF 		bl	_ZN8Platform16DisableAllDrivesEv
 2807 0044 024B     		ldr	r3, .L560
 2808 0046 5B69     		ldr	r3, [r3, #20]
 2809 0048 0022     		movs	r2, #0
 2810 004a C3F82C25 		str	r2, [r3, #1324]
 2811 004e 70BD     		pop	{r4, r5, r6, pc}
 2812              	.L561:
 2813              		.align	2
 2814              	.L560:
 2815 0050 00000000 		.word	reprap
 2816              		.size	_ZN8Platform14SetDriversIdleEv, .-_ZN8Platform14SetDriversIdleEv
 2817              		.section	.text._ZN8Platform16SetDriverCurrentEjfi,"ax",%progbits
 2818              		.align	1
 2819              		.p2align 2,,3
 2820              		.global	_ZN8Platform16SetDriverCurrentEjfi
 2821              		.syntax unified
 2822              		.thumb
 2823              		.thumb_func
 2824              		.fpu fpv4-sp-d16
 2825              		.type	_ZN8Platform16SetDriverCurrentEjfi, %function
 2826              	_ZN8Platform16SetDriverCurrentEjfi:
 2827              		@ args = 0, pretend = 0, frame = 0
 2828              		@ frame_needed = 0, uses_anonymous_args = 0
 2829              		@ link register save eliminated.
 2830 0000 0B29     		cmp	r1, #11
 2831 0002 01D8     		bhi	.L562
 2832 0004 FFF7FEBF 		b	_ZN8Platform16SetDriverCurrentEjfi.part.26
 2833              	.L562:
 2834 0008 7047     		bx	lr
 2835              		.size	_ZN8Platform16SetDriverCurrentEjfi, .-_ZN8Platform16SetDriverCurrentEjfi
 2836 000a 00BF     		.section	.text._ZN8Platform15SetMotorCurrentEjfi,"ax",%progbits
 2837              		.align	1
 2838              		.p2align 2,,3
 2839              		.global	_ZN8Platform15SetMotorCurrentEjfi
 2840              		.syntax unified
 2841              		.thumb
 2842              		.thumb_func
 2843              		.fpu fpv4-sp-d16
 2844              		.type	_ZN8Platform15SetMotorCurrentEjfi, %function
 2845              	_ZN8Platform15SetMotorCurrentEjfi:
 2846              		@ args = 0, pretend = 0, frame = 0
 2847              		@ frame_needed = 0, uses_anonymous_args = 0
 2848 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 2849 0004 1C4B     		ldr	r3, .L572
 2850 0006 5B69     		ldr	r3, [r3, #20]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 51


 2851 0008 D3F85C43 		ldr	r4, [r3, #860]
 2852 000c 8C42     		cmp	r4, r1
 2853 000e 8046     		mov	r8, r0
 2854 0010 25D9     		bls	.L565
 2855 0012 01EB4101 		add	r1, r1, r1, lsl #1
 2856 0016 8900     		lsls	r1, r1, #2
 2857 0018 00EB0109 		add	r9, r0, r1
 2858 001c 1746     		mov	r7, r2
 2859 001e D9F82C23 		ldr	r2, [r9, #812]
 2860 0022 D2B1     		cbz	r2, .L564
 2861 0024 01F54C71 		add	r1, r1, #816
 2862 0028 10EE106A 		vmov	r6, s0
 2863 002c 4418     		adds	r4, r0, r1
 2864 002e 0025     		movs	r5, #0
 2865 0030 03E0     		b	.L570
 2866              	.L568:
 2867 0032 D9F82C33 		ldr	r3, [r9, #812]
 2868 0036 AB42     		cmp	r3, r5
 2869 0038 0FD9     		bls	.L564
 2870              	.L570:
 2871 003a 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 2872 003e 0B29     		cmp	r1, #11
 2873 0040 05F10105 		add	r5, r5, #1
 2874 0044 F5D8     		bhi	.L568
 2875 0046 3A46     		mov	r2, r7
 2876 0048 00EE106A 		vmov	s0, r6
 2877 004c 4046     		mov	r0, r8
 2878 004e FFF7FEFF 		bl	_ZN8Platform16SetDriverCurrentEjfi.part.26
 2879 0052 D9F82C33 		ldr	r3, [r9, #812]
 2880 0056 AB42     		cmp	r3, r5
 2881 0058 EFD8     		bhi	.L570
 2882              	.L564:
 2883 005a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2884              	.L565:
 2885 005e 0B29     		cmp	r1, #11
 2886 0060 FBD8     		bhi	.L564
 2887 0062 091B     		subs	r1, r1, r4
 2888 0064 0144     		add	r1, r1, r0
 2889 0066 91F89813 		ldrb	r1, [r1, #920]	@ zero_extendqisi2
 2890 006a 0B29     		cmp	r1, #11
 2891 006c F5D8     		bhi	.L564
 2892 006e BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 2893 0072 FFF7FEBF 		b	_ZN8Platform16SetDriverCurrentEjfi.part.26
 2894              	.L573:
 2895 0076 00BF     		.align	2
 2896              	.L572:
 2897 0078 00000000 		.word	reprap
 2898              		.size	_ZN8Platform15SetMotorCurrentEjfi, .-_ZN8Platform15SetMotorCurrentEjfi
 2899              		.section	.text._ZN8Platform18UpdateMotorCurrentEj,"ax",%progbits
 2900              		.align	1
 2901              		.p2align 2,,3
 2902              		.global	_ZN8Platform18UpdateMotorCurrentEj
 2903              		.syntax unified
 2904              		.thumb
 2905              		.thumb_func
 2906              		.fpu fpv4-sp-d16
 2907              		.type	_ZN8Platform18UpdateMotorCurrentEj, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 52


 2908              	_ZN8Platform18UpdateMotorCurrentEj:
 2909              		@ args = 0, pretend = 0, frame = 0
 2910              		@ frame_needed = 0, uses_anonymous_args = 0
 2911              		@ link register save eliminated.
 2912 0000 0B29     		cmp	r1, #11
 2913 0002 01D8     		bhi	.L574
 2914 0004 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.24
 2915              	.L574:
 2916 0008 7047     		bx	lr
 2917              		.size	_ZN8Platform18UpdateMotorCurrentEj, .-_ZN8Platform18UpdateMotorCurrentEj
 2918 000a 00BF     		.section	.text._ZNK8Platform15GetMotorCurrentEji,"ax",%progbits
 2919              		.align	1
 2920              		.p2align 2,,3
 2921              		.global	_ZNK8Platform15GetMotorCurrentEji
 2922              		.syntax unified
 2923              		.thumb
 2924              		.thumb_func
 2925              		.fpu fpv4-sp-d16
 2926              		.type	_ZNK8Platform15GetMotorCurrentEji, %function
 2927              	_ZNK8Platform15GetMotorCurrentEji:
 2928              		@ args = 0, pretend = 0, frame = 0
 2929              		@ frame_needed = 0, uses_anonymous_args = 0
 2930              		@ link register save eliminated.
 2931 0000 0B29     		cmp	r1, #11
 2932 0002 22D8     		bhi	.L583
 2933 0004 10B4     		push	{r4}
 2934 0006 234B     		ldr	r3, .L596
 2935 0008 5B69     		ldr	r3, [r3, #20]
 2936 000a D3F85C43 		ldr	r4, [r3, #860]
 2937 000e D3F86433 		ldr	r3, [r3, #868]
 2938 0012 2344     		add	r3, r3, r4
 2939 0014 8B42     		cmp	r3, r1
 2940 0016 13D9     		bls	.L588
 2941 0018 A142     		cmp	r1, r4
 2942 001a 19D3     		bcc	.L593
 2943 001c 091B     		subs	r1, r1, r4
 2944 001e 0144     		add	r1, r1, r0
 2945 0020 91F89833 		ldrb	r3, [r1, #920]	@ zero_extendqisi2
 2946              	.L579:
 2947 0024 0B2B     		cmp	r3, #11
 2948 0026 0BD8     		bhi	.L588
 2949 0028 40F29131 		movw	r1, #913
 2950 002c 8A42     		cmp	r2, r1
 2951 002e 22D0     		beq	.L580
 2952 0030 40F29531 		movw	r1, #917
 2953 0034 8A42     		cmp	r2, r1
 2954 0036 17D0     		beq	.L581
 2955 0038 40F28A31 		movw	r1, #906
 2956 003c 8A42     		cmp	r2, r1
 2957 003e 0ED0     		beq	.L594
 2958              	.L588:
 2959 0040 9FED150A 		vldr.32	s0, .L596+4
 2960              	.L576:
 2961 0044 5DF8044B 		ldr	r4, [sp], #4
 2962 0048 7047     		bx	lr
 2963              	.L583:
 2964 004a 9FED130A 		vldr.32	s0, .L596+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 53


 2965 004e 7047     		bx	lr
 2966              	.L593:
 2967 0050 01EB4101 		add	r1, r1, r1, lsl #1
 2968 0054 00EB8101 		add	r1, r0, r1, lsl #2
 2969 0058 91F83033 		ldrb	r3, [r1, #816]	@ zero_extendqisi2
 2970 005c E2E7     		b	.L579
 2971              	.L594:
 2972 005e 00EB8300 		add	r0, r0, r3, lsl #2
 2973 0062 90EDB30A 		vldr.32	s0, [r0, #716]
 2974 0066 EDE7     		b	.L576
 2975              	.L581:
 2976 0068 D0F81C24 		ldr	r2, [r0, #1052]
 2977 006c 9342     		cmp	r3, r2
 2978 006e 0BD3     		bcc	.L595
 2979 0070 9FED0A0A 		vldr.32	s0, .L596+8
 2980 0074 E6E7     		b	.L576
 2981              	.L580:
 2982 0076 00EB8300 		add	r0, r0, r3, lsl #2
 2983 007a 90EDBF0A 		vldr.32	s0, [r0, #764]
 2984 007e DFED077A 		vldr.32	s15, .L596+8
 2985 0082 20EE270A 		vmul.f32	s0, s0, s15
 2986 0086 DDE7     		b	.L576
 2987              	.L595:
 2988 0088 1846     		mov	r0, r3
 2989 008a 5DF8044B 		ldr	r4, [sp], #4
 2990 008e FFF7FEBF 		b	_ZN12SmartDrivers27GetStandstillCurrentPercentEj
 2991              	.L597:
 2992 0092 00BF     		.align	2
 2993              	.L596:
 2994 0094 00000000 		.word	reprap
 2995 0098 00000000 		.word	0
 2996 009c 0000C842 		.word	1120403456
 2997              		.size	_ZNK8Platform15GetMotorCurrentEji, .-_ZNK8Platform15GetMotorCurrentEji
 2998              		.section	.text._ZN8Platform20SetIdleCurrentFactorEf,"ax",%progbits
 2999              		.align	1
 3000              		.p2align 2,,3
 3001              		.global	_ZN8Platform20SetIdleCurrentFactorEf
 3002              		.syntax unified
 3003              		.thumb
 3004              		.thumb_func
 3005              		.fpu fpv4-sp-d16
 3006              		.type	_ZN8Platform20SetIdleCurrentFactorEf, %function
 3007              	_ZN8Platform20SetIdleCurrentFactorEf:
 3008              		@ args = 0, pretend = 0, frame = 0
 3009              		@ frame_needed = 0, uses_anonymous_args = 0
 3010 0000 B4EE400A 		vcmp.f32	s0, s0
 3011 0004 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3012 0008 38B5     		push	{r3, r4, r5, lr}
 3013 000a 0546     		mov	r5, r0
 3014 000c 08D6     		bvs	.L599
 3015 000e F7EE007A 		vmov.f32	s15, #1.0e+0
 3016 0012 B4EEE70A 		vcmpe.f32	s0, s15
 3017 0016 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3018 001a 17D4     		bmi	.L608
 3019 001c B0EE670A 		vmov.f32	s0, s15
 3020              	.L599:
 3021 0020 05F58363 		add	r3, r5, #1048
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 54


 3022 0024 83ED000A 		vstr.32	s0, [r3]
 3023 0028 0024     		movs	r4, #0
 3024 002a 02E0     		b	.L602
 3025              	.L601:
 3026 002c 0134     		adds	r4, r4, #1
 3027 002e 0C2C     		cmp	r4, #12
 3028 0030 0BD0     		beq	.L609
 3029              	.L602:
 3030 0032 2B19     		adds	r3, r5, r4
 3031 0034 93F80031 		ldrb	r3, [r3, #256]	@ zero_extendqisi2
 3032 0038 012B     		cmp	r3, #1
 3033 003a F7D1     		bne	.L601
 3034 003c 2146     		mov	r1, r4
 3035 003e 2846     		mov	r0, r5
 3036 0040 0134     		adds	r4, r4, #1
 3037 0042 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.24
 3038 0046 0C2C     		cmp	r4, #12
 3039 0048 F3D1     		bne	.L602
 3040              	.L609:
 3041 004a 38BD     		pop	{r3, r4, r5, pc}
 3042              	.L608:
 3043 004c B5EEC00A 		vcmpe.f32	s0, #0
 3044 0050 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3045 0054 E4DC     		bgt	.L599
 3046 0056 9FED010A 		vldr.32	s0, .L610
 3047 005a E1E7     		b	.L599
 3048              	.L611:
 3049              		.align	2
 3050              	.L610:
 3051 005c 00000000 		.word	0
 3052              		.size	_ZN8Platform20SetIdleCurrentFactorEf, .-_ZN8Platform20SetIdleCurrentFactorEf
 3053              		.section	.text._ZN8Platform22SetDriverMicrosteppingEjji,"ax",%progbits
 3054              		.align	1
 3055              		.p2align 2,,3
 3056              		.global	_ZN8Platform22SetDriverMicrosteppingEjji
 3057              		.syntax unified
 3058              		.thumb
 3059              		.thumb_func
 3060              		.fpu fpv4-sp-d16
 3061              		.type	_ZN8Platform22SetDriverMicrosteppingEjji, %function
 3062              	_ZN8Platform22SetDriverMicrosteppingEjji:
 3063              		@ args = 0, pretend = 0, frame = 0
 3064              		@ frame_needed = 0, uses_anonymous_args = 0
 3065              		@ link register save eliminated.
 3066 0000 0B29     		cmp	r1, #11
 3067 0002 10B4     		push	{r4}
 3068 0004 0C46     		mov	r4, r1
 3069 0006 0CD8     		bhi	.L615
 3070 0008 1146     		mov	r1, r2
 3071 000a D0F81C24 		ldr	r2, [r0, #1052]
 3072 000e A242     		cmp	r2, r4
 3073 0010 0BD8     		bhi	.L617
 3074 0012 A1F11000 		sub	r0, r1, #16
 3075 0016 B0FA80F0 		clz	r0, r0
 3076 001a 4009     		lsrs	r0, r0, #5
 3077 001c 5DF8044B 		ldr	r4, [sp], #4
 3078 0020 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 55


 3079              	.L615:
 3080 0022 0020     		movs	r0, #0
 3081 0024 5DF8044B 		ldr	r4, [sp], #4
 3082 0028 7047     		bx	lr
 3083              	.L617:
 3084 002a 1A1C     		adds	r2, r3, #0
 3085 002c 2046     		mov	r0, r4
 3086 002e 18BF     		it	ne
 3087 0030 0122     		movne	r2, #1
 3088 0032 5DF8044B 		ldr	r4, [sp], #4
 3089 0036 FFF7FEBF 		b	_ZN12SmartDrivers16SetMicrosteppingEjjb
 3090              		.size	_ZN8Platform22SetDriverMicrosteppingEjji, .-_ZN8Platform22SetDriverMicrosteppingEjji
 3091 003a 00BF     		.section	.text._ZN8Platform16SetMicrosteppingEjib,"ax",%progbits
 3092              		.align	1
 3093              		.p2align 2,,3
 3094              		.global	_ZN8Platform16SetMicrosteppingEjib
 3095              		.syntax unified
 3096              		.thumb
 3097              		.thumb_func
 3098              		.fpu fpv4-sp-d16
 3099              		.type	_ZN8Platform16SetMicrosteppingEjib, %function
 3100              	_ZN8Platform16SetMicrosteppingEjib:
 3101              		@ args = 0, pretend = 0, frame = 0
 3102              		@ frame_needed = 0, uses_anonymous_args = 0
 3103 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3104 0004 294C     		ldr	r4, .L637
 3105 0006 6469     		ldr	r4, [r4, #20]
 3106 0008 D4F85C43 		ldr	r4, [r4, #860]
 3107 000c 8C42     		cmp	r4, r1
 3108 000e 9146     		mov	r9, r2
 3109 0010 25D9     		bls	.L619
 3110 0012 01EB4104 		add	r4, r1, r1, lsl #1
 3111 0016 A400     		lsls	r4, r4, #2
 3112 0018 00EB040A 		add	r10, r0, r4
 3113 001c DAF82C23 		ldr	r2, [r10, #812]
 3114 0020 D2B3     		cbz	r2, .L628
 3115 0022 04F54C74 		add	r4, r4, #816
 3116 0026 9846     		mov	r8, r3
 3117 0028 0746     		mov	r7, r0
 3118 002a 0444     		add	r4, r4, r0
 3119 002c 0025     		movs	r5, #0
 3120 002e 0126     		movs	r6, #1
 3121              	.L626:
 3122 0030 14F8010B 		ldrb	r0, [r4], #1	@ zero_extendqisi2
 3123 0034 0B28     		cmp	r0, #11
 3124 0036 09D8     		bhi	.L625
 3125 0038 D7F81C34 		ldr	r3, [r7, #1052]
 3126 003c 9842     		cmp	r0, r3
 3127 003e 26D3     		bcc	.L635
 3128 0040 A9F11000 		sub	r0, r9, #16
 3129 0044 B0FA80F0 		clz	r0, r0
 3130 0048 4009     		lsrs	r0, r0, #5
 3131              	.L624:
 3132 004a 00B9     		cbnz	r0, .L622
 3133              	.L625:
 3134 004c 0026     		movs	r6, #0
 3135              	.L622:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 56


 3136 004e DAF82C33 		ldr	r3, [r10, #812]
 3137 0052 0135     		adds	r5, r5, #1
 3138 0054 AB42     		cmp	r3, r5
 3139 0056 EBD8     		bhi	.L626
 3140              	.L620:
 3141 0058 3046     		mov	r0, r6
 3142 005a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3143              	.L619:
 3144 005e 0B29     		cmp	r1, #11
 3145 0060 11D8     		bhi	.L630
 3146 0062 0C1B     		subs	r4, r1, r4
 3147 0064 0444     		add	r4, r4, r0
 3148 0066 94F89843 		ldrb	r4, [r4, #920]	@ zero_extendqisi2
 3149 006a 0B2C     		cmp	r4, #11
 3150 006c 0BD8     		bhi	.L630
 3151 006e D0F81C24 		ldr	r2, [r0, #1052]
 3152 0072 9442     		cmp	r4, r2
 3153 0074 12D3     		bcc	.L636
 3154 0076 A9F11006 		sub	r6, r9, #16
 3155 007a B6FA86F6 		clz	r6, r6
 3156 007e 7609     		lsrs	r6, r6, #5
 3157 0080 3046     		mov	r0, r6
 3158 0082 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3159              	.L630:
 3160 0086 0026     		movs	r6, #0
 3161 0088 3046     		mov	r0, r6
 3162 008a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3163              	.L635:
 3164 008e 4246     		mov	r2, r8
 3165 0090 4946     		mov	r1, r9
 3166 0092 FFF7FEFF 		bl	_ZN12SmartDrivers16SetMicrosteppingEjjb
 3167 0096 D8E7     		b	.L624
 3168              	.L628:
 3169 0098 0126     		movs	r6, #1
 3170 009a DDE7     		b	.L620
 3171              	.L636:
 3172 009c 4946     		mov	r1, r9
 3173 009e 2046     		mov	r0, r4
 3174 00a0 1A46     		mov	r2, r3
 3175 00a2 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 3176 00a6 FFF7FEBF 		b	_ZN12SmartDrivers16SetMicrosteppingEjjb
 3177              	.L638:
 3178 00aa 00BF     		.align	2
 3179              	.L637:
 3180 00ac 00000000 		.word	reprap
 3181              		.size	_ZN8Platform16SetMicrosteppingEjib, .-_ZN8Platform16SetMicrosteppingEjib
 3182              		.section	.text._ZNK8Platform22GetDriverMicrosteppingEjRb,"ax",%progbits
 3183              		.align	1
 3184              		.p2align 2,,3
 3185              		.global	_ZNK8Platform22GetDriverMicrosteppingEjRb
 3186              		.syntax unified
 3187              		.thumb
 3188              		.thumb_func
 3189              		.fpu fpv4-sp-d16
 3190              		.type	_ZNK8Platform22GetDriverMicrosteppingEjRb, %function
 3191              	_ZNK8Platform22GetDriverMicrosteppingEjRb:
 3192              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 57


 3193              		@ frame_needed = 0, uses_anonymous_args = 0
 3194              		@ link register save eliminated.
 3195 0000 D0F81C34 		ldr	r3, [r0, #1052]
 3196 0004 8B42     		cmp	r3, r1
 3197 0006 0846     		mov	r0, r1
 3198 0008 02D9     		bls	.L640
 3199 000a 1146     		mov	r1, r2
 3200 000c FFF7FEBF 		b	_ZN12SmartDrivers16GetMicrosteppingEjRb
 3201              	.L640:
 3202 0010 0023     		movs	r3, #0
 3203 0012 1370     		strb	r3, [r2]
 3204 0014 1020     		movs	r0, #16
 3205 0016 7047     		bx	lr
 3206              		.size	_ZNK8Platform22GetDriverMicrosteppingEjRb, .-_ZNK8Platform22GetDriverMicrosteppingEjRb
 3207              		.section	.text._ZNK8Platform16GetMicrosteppingEjRb,"ax",%progbits
 3208              		.align	1
 3209              		.p2align 2,,3
 3210              		.global	_ZNK8Platform16GetMicrosteppingEjRb
 3211              		.syntax unified
 3212              		.thumb
 3213              		.thumb_func
 3214              		.fpu fpv4-sp-d16
 3215              		.type	_ZNK8Platform16GetMicrosteppingEjRb, %function
 3216              	_ZNK8Platform16GetMicrosteppingEjRb:
 3217              		@ args = 0, pretend = 0, frame = 0
 3218              		@ frame_needed = 0, uses_anonymous_args = 0
 3219              		@ link register save eliminated.
 3220 0000 104B     		ldr	r3, .L647
 3221 0002 5B69     		ldr	r3, [r3, #20]
 3222 0004 D3F85C33 		ldr	r3, [r3, #860]
 3223 0008 8B42     		cmp	r3, r1
 3224 000a 0CD9     		bls	.L642
 3225 000c 01EB4103 		add	r3, r1, r1, lsl #1
 3226 0010 00EB8303 		add	r3, r0, r3, lsl #2
 3227 0014 D0F81C14 		ldr	r1, [r0, #1052]
 3228 0018 93F83003 		ldrb	r0, [r3, #816]	@ zero_extendqisi2
 3229 001c 8842     		cmp	r0, r1
 3230 001e 0CD2     		bcs	.L643
 3231              	.L646:
 3232 0020 1146     		mov	r1, r2
 3233 0022 FFF7FEBF 		b	_ZN12SmartDrivers16GetMicrosteppingEjRb
 3234              	.L642:
 3235 0026 0B29     		cmp	r1, #11
 3236 0028 07D8     		bhi	.L643
 3237 002a CB1A     		subs	r3, r1, r3
 3238 002c 0344     		add	r3, r3, r0
 3239 002e D0F81C14 		ldr	r1, [r0, #1052]
 3240 0032 93F89803 		ldrb	r0, [r3, #920]	@ zero_extendqisi2
 3241 0036 8842     		cmp	r0, r1
 3242 0038 F2D3     		bcc	.L646
 3243              	.L643:
 3244 003a 0023     		movs	r3, #0
 3245 003c 1370     		strb	r3, [r2]
 3246 003e 1020     		movs	r0, #16
 3247 0040 7047     		bx	lr
 3248              	.L648:
 3249 0042 00BF     		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 58


 3250              	.L647:
 3251 0044 00000000 		.word	reprap
 3252              		.size	_ZNK8Platform16GetMicrosteppingEjRb, .-_ZNK8Platform16GetMicrosteppingEjRb
 3253              		.section	.text._ZN8Platform14SetEnableValueEja,"ax",%progbits
 3254              		.align	1
 3255              		.p2align 2,,3
 3256              		.global	_ZN8Platform14SetEnableValueEja
 3257              		.syntax unified
 3258              		.thumb
 3259              		.thumb_func
 3260              		.fpu fpv4-sp-d16
 3261              		.type	_ZN8Platform14SetEnableValueEja, %function
 3262              	_ZN8Platform14SetEnableValueEja:
 3263              		@ args = 0, pretend = 0, frame = 0
 3264              		@ frame_needed = 0, uses_anonymous_args = 0
 3265 0000 4318     		adds	r3, r0, r1
 3266 0002 0B29     		cmp	r1, #11
 3267 0004 70B5     		push	{r4, r5, r6, lr}
 3268 0006 0446     		mov	r4, r0
 3269 0008 0D46     		mov	r5, r1
 3270 000a 1646     		mov	r6, r2
 3271 000c 83F82421 		strb	r2, [r3, #292]
 3272 0010 1CD9     		bls	.L653
 3273              	.L650:
 3274 0012 0136     		adds	r6, r6, #1
 3275 0014 00D0     		beq	.L654
 3276 0016 70BD     		pop	{r4, r5, r6, pc}
 3277              	.L654:
 3278 0018 04F58560 		add	r0, r4, #1064
 3279 001c 0DC8     		ldm	r0, {r0, r2, r3}
 3280 001e 0121     		movs	r1, #1
 3281 0020 A940     		lsls	r1, r1, r5
 3282 0022 D4F82064 		ldr	r6, [r4, #1056]
 3283 0026 D4F82454 		ldr	r5, [r4, #1060]
 3284 002a C943     		mvns	r1, r1
 3285 002c 0E40     		ands	r6, r6, r1
 3286 002e 0D40     		ands	r5, r5, r1
 3287 0030 0840     		ands	r0, r0, r1
 3288 0032 0A40     		ands	r2, r2, r1
 3289 0034 1940     		ands	r1, r1, r3
 3290 0036 C4F82064 		str	r6, [r4, #1056]
 3291 003a C4F82454 		str	r5, [r4, #1060]
 3292 003e C4F82804 		str	r0, [r4, #1064]
 3293 0042 C4F82C24 		str	r2, [r4, #1068]
 3294 0046 C4F83014 		str	r1, [r4, #1072]
 3295 004a 70BD     		pop	{r4, r5, r6, pc}
 3296              	.L653:
 3297 004c FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj.part.23
 3298 0050 DFE7     		b	.L650
 3299              		.size	_ZN8Platform14SetEnableValueEja, .-_ZN8Platform14SetEnableValueEja
 3300 0052 00BF     		.section	.text._ZN8Platform14SetExternalI2CEjh,"ax",%progbits
 3301              		.align	1
 3302              		.p2align 2,,3
 3303              		.global	_ZN8Platform14SetExternalI2CEjh
 3304              		.syntax unified
 3305              		.thumb
 3306              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 59


 3307              		.fpu fpv4-sp-d16
 3308              		.type	_ZN8Platform14SetExternalI2CEjh, %function
 3309              	_ZN8Platform14SetExternalI2CEjh:
 3310              		@ args = 0, pretend = 0, frame = 0
 3311              		@ frame_needed = 0, uses_anonymous_args = 0
 3312              		@ link register save eliminated.
 3313 0000 0144     		add	r1, r1, r0
 3314 0002 81F83021 		strb	r2, [r1, #304]
 3315 0006 7047     		bx	lr
 3316              		.size	_ZN8Platform14SetExternalI2CEjh, .-_ZN8Platform14SetExternalI2CEjh
 3317              		.section	.text._ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig,"ax",%progbits
 3318              		.align	1
 3319              		.p2align 2,,3
 3320              		.global	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
 3321              		.syntax unified
 3322              		.thumb
 3323              		.thumb_func
 3324              		.fpu fpv4-sp-d16
 3325              		.type	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig, %function
 3326              	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig:
 3327              		@ args = 0, pretend = 0, frame = 0
 3328              		@ frame_needed = 0, uses_anonymous_args = 0
 3329 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3330 0004 9246     		mov	r10, r2
 3331 0006 0D46     		mov	r5, r1
 3332 0008 0746     		mov	r7, r0
 3333 000a 07CA     		ldm	r2, {r0, r1, r2}
 3334 000c 05EB4503 		add	r3, r5, r5, lsl #1
 3335 0010 07EB8303 		add	r3, r7, r3, lsl #2
 3336 0014 03F54B73 		add	r3, r3, #812
 3337 0018 83E80700 		stm	r3, {r0, r1, r2}
 3338 001c DAF80040 		ldr	r4, [r10]
 3339 0020 04B3     		cbz	r4, .L657
 3340 0022 6FF00306 		mvn	r6, #3
 3341 0026 DFF84890 		ldr	r9, .L663
 3342 002a DFF84880 		ldr	r8, .L663+4
 3343 002e A6EB0A06 		sub	r6, r6, r10
 3344 0032 0AF1040B 		add	fp, r10, #4
 3345 0036 0024     		movs	r4, #0
 3346              	.L659:
 3347 0038 1BF8013B 		ldrb	r3, [fp], #1	@ zero_extendqisi2
 3348 003c 0B2B     		cmp	r3, #11
 3349 003e 2946     		mov	r1, r5
 3350 0040 1846     		mov	r0, r3
 3351 0042 07D8     		bhi	.L658
 3352 0044 18F80330 		ldrb	r3, [r8, r3]	@ zero_extendqisi2
 3353 0048 C3EBC303 		rsb	r3, r3, r3, lsl #3
 3354 004c 09EB8303 		add	r3, r9, r3, lsl #2
 3355 0050 5B68     		ldr	r3, [r3, #4]
 3356 0052 1C43     		orrs	r4, r4, r3
 3357              	.L658:
 3358 0054 FFF7FEFF 		bl	_ZN12SmartDrivers13SetAxisNumberEjm
 3359 0058 DAF80020 		ldr	r2, [r10]
 3360 005c 06EB0B03 		add	r3, r6, fp
 3361 0060 9A42     		cmp	r2, r3
 3362 0062 E9D8     		bhi	.L659
 3363              	.L657:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 60


 3364 0064 07EB8505 		add	r5, r7, r5, lsl #2
 3365 0068 C5F8A443 		str	r4, [r5, #932]
 3366 006c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3367              	.L664:
 3368              		.align	2
 3369              	.L663:
 3370 0070 00000000 		.word	g_APinDescription
 3371 0074 00000000 		.word	.LANCHOR1
 3372              		.size	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig, .-_ZN8Platform20SetAxisDriversCon
 3373              		.section	.text._ZN8Platform17SetExtruderDriverEjh,"ax",%progbits
 3374              		.align	1
 3375              		.p2align 2,,3
 3376              		.global	_ZN8Platform17SetExtruderDriverEjh
 3377              		.syntax unified
 3378              		.thumb
 3379              		.thumb_func
 3380              		.fpu fpv4-sp-d16
 3381              		.type	_ZN8Platform17SetExtruderDriverEjh, %function
 3382              	_ZN8Platform17SetExtruderDriverEjh:
 3383              		@ args = 0, pretend = 0, frame = 0
 3384              		@ frame_needed = 0, uses_anonymous_args = 0
 3385 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3386 0002 114F     		ldr	r7, .L669
 3387 0004 0C46     		mov	r4, r1
 3388 0006 4118     		adds	r1, r0, r1
 3389 0008 7B69     		ldr	r3, [r7, #20]
 3390 000a 81F89823 		strb	r2, [r1, #920]
 3391 000e D3F85C13 		ldr	r1, [r3, #860]
 3392 0012 1646     		mov	r6, r2
 3393 0014 0546     		mov	r5, r0
 3394 0016 2144     		add	r1, r1, r4
 3395 0018 1046     		mov	r0, r2
 3396 001a FFF7FEFF 		bl	_ZN12SmartDrivers13SetAxisNumberEjm
 3397 001e 0B2E     		cmp	r6, #11
 3398 0020 10D8     		bhi	.L667
 3399 0022 0A4B     		ldr	r3, .L669+4
 3400 0024 0A4A     		ldr	r2, .L669+8
 3401 0026 9B5D     		ldrb	r3, [r3, r6]	@ zero_extendqisi2
 3402 0028 C3EBC303 		rsb	r3, r3, r3, lsl #3
 3403 002c 02EB8303 		add	r3, r2, r3, lsl #2
 3404 0030 5B68     		ldr	r3, [r3, #4]
 3405              	.L666:
 3406 0032 7A69     		ldr	r2, [r7, #20]
 3407 0034 D2F85C23 		ldr	r2, [r2, #860]
 3408 0038 1444     		add	r4, r4, r2
 3409 003a 05EB8404 		add	r4, r5, r4, lsl #2
 3410 003e C4F8A433 		str	r3, [r4, #932]
 3411 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3412              	.L667:
 3413 0044 0023     		movs	r3, #0
 3414 0046 F4E7     		b	.L666
 3415              	.L670:
 3416              		.align	2
 3417              	.L669:
 3418 0048 00000000 		.word	reprap
 3419 004c 00000000 		.word	.LANCHOR1
 3420 0050 00000000 		.word	g_APinDescription
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 61


 3421              		.size	_ZN8Platform17SetExtruderDriverEjh, .-_ZN8Platform17SetExtruderDriverEjh
 3422              		.section	.text._ZN8Platform19SetDriverStepTimingEjPKf,"ax",%progbits
 3423              		.align	1
 3424              		.p2align 2,,3
 3425              		.global	_ZN8Platform19SetDriverStepTimingEjPKf
 3426              		.syntax unified
 3427              		.thumb
 3428              		.thumb_func
 3429              		.fpu fpv4-sp-d16
 3430              		.type	_ZN8Platform19SetDriverStepTimingEjPKf, %function
 3431              	_ZN8Platform19SetDriverStepTimingEjPKf:
 3432              		@ args = 0, pretend = 0, frame = 0
 3433              		@ frame_needed = 0, uses_anonymous_args = 0
 3434              		@ link register save eliminated.
 3435 0000 0B29     		cmp	r1, #11
 3436 0002 F0B4     		push	{r4, r5, r6, r7}
 3437 0004 50D8     		bhi	.L681
 3438 0006 2A4B     		ldr	r3, .L686
 3439 0008 2A4C     		ldr	r4, .L686+4
 3440 000a 5B5C     		ldrb	r3, [r3, r1]	@ zero_extendqisi2
 3441 000c C3EBC303 		rsb	r3, r3, r3, lsl #3
 3442 0010 04EB8303 		add	r3, r4, r3, lsl #2
 3443 0014 5C68     		ldr	r4, [r3, #4]
 3444 0016 E443     		mvns	r4, r4
 3445              	.L672:
 3446 0018 D0F81434 		ldr	r3, [r0, #1044]
 3447 001c 1C40     		ands	r4, r4, r3
 3448 001e C0F81444 		str	r4, [r0, #1044]
 3449 0022 00F20443 		addw	r3, r0, #1028
 3450 0026 BCB3     		cbz	r4, .L673
 3451 0028 00F21446 		addw	r6, r0, #1044
 3452              	.L675:
 3453 002c 9FED227A 		vldr.32	s14, .L686+8
 3454 0030 DFED225A 		vldr.32	s11, .L686+12
 3455 0034 9FED226A 		vldr.32	s12, .L686+16
 3456 0038 DFED226A 		vldr.32	s13, .L686+20
 3457 003c DFF874C0 		ldr	ip, .L686+4
 3458 0040 1B4F     		ldr	r7, .L686
 3459              	.L674:
 3460 0042 F2EC017A 		vldmia.32	r2!, {s15}
 3461 0046 F4EEC77A 		vcmpe.f32	s15, s14
 3462 004a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3463 004e 1CDD     		ble	.L678
 3464 0050 0B29     		cmp	r1, #11
 3465 0052 1FD8     		bhi	.L682
 3466 0054 7C5C     		ldrb	r4, [r7, r1]	@ zero_extendqisi2
 3467 0056 C4EBC404 		rsb	r4, r4, r4, lsl #3
 3468 005a 0CEB8404 		add	r4, ip, r4, lsl #2
 3469 005e 6568     		ldr	r5, [r4, #4]
 3470              	.L679:
 3471 0060 D0F81444 		ldr	r4, [r0, #1044]
 3472 0064 2C43     		orrs	r4, r4, r5
 3473 0066 C0F81444 		str	r4, [r0, #1044]
 3474 006a 52ED017A 		vldr.32	s15, [r2, #-4]
 3475 006e 1D68     		ldr	r5, [r3]
 3476 0070 67EEA57A 		vmul.f32	s15, s15, s11
 3477 0074 B0EE665A 		vmov.f32	s10, s13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 62


 3478 0078 A7EE865A 		vfma.f32	s10, s15, s12
 3479 007c FCEEC57A 		vcvt.u32.f32	s15, s10
 3480 0080 17EE904A 		vmov	r4, s15	@ int
 3481 0084 A542     		cmp	r5, r4
 3482 0086 38BF     		it	cc
 3483 0088 1C60     		strcc	r4, [r3]
 3484              	.L678:
 3485 008a 0433     		adds	r3, r3, #4
 3486 008c 9E42     		cmp	r6, r3
 3487 008e D8D1     		bne	.L674
 3488 0090 F0BC     		pop	{r4, r5, r6, r7}
 3489 0092 7047     		bx	lr
 3490              	.L682:
 3491 0094 0025     		movs	r5, #0
 3492 0096 E3E7     		b	.L679
 3493              	.L673:
 3494 0098 1D46     		mov	r5, r3
 3495 009a 00F21446 		addw	r6, r0, #1044
 3496              	.L676:
 3497 009e 45F8044B 		str	r4, [r5], #4
 3498 00a2 AE42     		cmp	r6, r5
 3499 00a4 FBD1     		bne	.L676
 3500 00a6 C1E7     		b	.L675
 3501              	.L681:
 3502 00a8 4FF0FF34 		mov	r4, #-1
 3503 00ac B4E7     		b	.L672
 3504              	.L687:
 3505 00ae 00BF     		.align	2
 3506              	.L686:
 3507 00b0 00000000 		.word	.LANCHOR1
 3508 00b4 00000000 		.word	g_APinDescription
 3509 00b8 CDCC4C3E 		.word	1045220557
 3510 00bc C0E16449 		.word	1231348160
 3511 00c0 BD378635 		.word	897988541
 3512 00c4 A4707D3F 		.word	1065185444
 3513              		.size	_ZN8Platform19SetDriverStepTimingEjPKf, .-_ZN8Platform19SetDriverStepTimingEjPKf
 3514              		.section	.text._ZNK8Platform19GetDriverStepTimingEjPf,"ax",%progbits
 3515              		.align	1
 3516              		.p2align 2,,3
 3517              		.global	_ZNK8Platform19GetDriverStepTimingEjPf
 3518              		.syntax unified
 3519              		.thumb
 3520              		.thumb_func
 3521              		.fpu fpv4-sp-d16
 3522              		.type	_ZNK8Platform19GetDriverStepTimingEjPf, %function
 3523              	_ZNK8Platform19GetDriverStepTimingEjPf:
 3524              		@ args = 0, pretend = 0, frame = 0
 3525              		@ frame_needed = 0, uses_anonymous_args = 0
 3526              		@ link register save eliminated.
 3527 0000 0B29     		cmp	r1, #11
 3528 0002 30B4     		push	{r4, r5}
 3529 0004 0346     		mov	r3, r0
 3530 0006 2AD8     		bhi	.L692
 3531 0008 1648     		ldr	r0, .L696
 3532 000a 174C     		ldr	r4, .L696+4
 3533 000c 405C     		ldrb	r0, [r0, r1]	@ zero_extendqisi2
 3534 000e D3F81454 		ldr	r5, [r3, #1044]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 63


 3535 0012 C0EBC000 		rsb	r0, r0, r0, lsl #3
 3536 0016 04EB8000 		add	r0, r4, r0, lsl #2
 3537 001a 4168     		ldr	r1, [r0, #4]
 3538 001c 2940     		ands	r1, r1, r5
 3539 001e 14BF     		ite	ne
 3540 0020 0120     		movne	r0, #1
 3541 0022 0020     		moveq	r0, #0
 3542              	.L689:
 3543 0024 DFED115A 		vldr.32	s11, .L696+8
 3544 0028 9FED116A 		vldr.32	s12, .L696+12
 3545 002c DFED116A 		vldr.32	s13, .L696+16
 3546 0030 03F20443 		addw	r3, r3, #1028
 3547 0034 02F11004 		add	r4, r2, #16
 3548              	.L691:
 3549 0038 71B1     		cbz	r1, .L693
 3550 003a D3ED007A 		vldr.32	s15, [r3]	@ int
 3551 003e F8EE677A 		vcvt.f32.u32	s15, s15
 3552 0042 67EE867A 		vmul.f32	s15, s15, s12
 3553 0046 87EEA67A 		vdiv.f32	s14, s15, s13
 3554              	.L690:
 3555 004a 0433     		adds	r3, r3, #4
 3556 004c A2EC017A 		vstmia.32	r2!, {s14}
 3557 0050 A242     		cmp	r2, r4
 3558 0052 F1D1     		bne	.L691
 3559 0054 30BC     		pop	{r4, r5}
 3560 0056 7047     		bx	lr
 3561              	.L693:
 3562 0058 B0EE657A 		vmov.f32	s14, s11
 3563 005c F5E7     		b	.L690
 3564              	.L692:
 3565 005e 0020     		movs	r0, #0
 3566 0060 0146     		mov	r1, r0
 3567 0062 DFE7     		b	.L689
 3568              	.L697:
 3569              		.align	2
 3570              	.L696:
 3571 0064 00000000 		.word	.LANCHOR1
 3572 0068 00000000 		.word	g_APinDescription
 3573 006c 00000000 		.word	0
 3574 0070 00247449 		.word	1232348160
 3575 0074 C0E16449 		.word	1231348160
 3576              		.size	_ZNK8Platform19GetDriverStepTimingEjPf, .-_ZNK8Platform19GetDriverStepTimingEjPf
 3577              		.section	.text._ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb,"ax",%progbits
 3578              		.align	1
 3579              		.p2align 2,,3
 3580              		.global	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb
 3581              		.syntax unified
 3582              		.thumb
 3583              		.thumb_func
 3584              		.fpu fpv4-sp-d16
 3585              		.type	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb, %function
 3586              	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb:
 3587              		@ args = 8, pretend = 0, frame = 0
 3588              		@ frame_needed = 0, uses_anonymous_args = 0
 3589 0000 70B5     		push	{r4, r5, r6, lr}
 3590 0002 082A     		cmp	r2, #8
 3591 0004 DDE90465 		ldrd	r6, r5, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 64


 3592 0008 09D8     		bhi	.L702
 3593 000a 02EBC204 		add	r4, r2, r2, lsl #3
 3594 000e 00EBC400 		add	r0, r0, r4, lsl #3
 3595 0012 00F63C00 		addw	r0, r0, #2108
 3596 0016 BDE87040 		pop	{r4, r5, r6, lr}
 3597 001a FFF7FEBF 		b	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb
 3598              	.L702:
 3599 001e 3046     		mov	r0, r6
 3600 0020 0823     		movs	r3, #8
 3601 0022 0349     		ldr	r1, .L704
 3602 0024 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3603 0028 0123     		movs	r3, #1
 3604 002a 2B70     		strb	r3, [r5]
 3605 002c 0020     		movs	r0, #0
 3606 002e 70BD     		pop	{r4, r5, r6, pc}
 3607              	.L705:
 3608              		.align	2
 3609              	.L704:
 3610 0030 00000000 		.word	.LC17
 3611              		.size	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb, .-_ZN8Platform12ConfigureFanEjiR1
 3612              		.section	.text._ZNK8Platform11GetFanValueEj,"ax",%progbits
 3613              		.align	1
 3614              		.p2align 2,,3
 3615              		.global	_ZNK8Platform11GetFanValueEj
 3616              		.syntax unified
 3617              		.thumb
 3618              		.thumb_func
 3619              		.fpu fpv4-sp-d16
 3620              		.type	_ZNK8Platform11GetFanValueEj, %function
 3621              	_ZNK8Platform11GetFanValueEj:
 3622              		@ args = 0, pretend = 0, frame = 0
 3623              		@ frame_needed = 0, uses_anonymous_args = 0
 3624              		@ link register save eliminated.
 3625 0000 0829     		cmp	r1, #8
 3626 0002 08D8     		bhi	.L708
 3627 0004 01EBC101 		add	r1, r1, r1, lsl #3
 3628 0008 00EBC101 		add	r1, r0, r1, lsl #3
 3629 000c 01F63C01 		addw	r1, r1, #2108
 3630 0010 91ED000A 		vldr.32	s0, [r1]
 3631 0014 7047     		bx	lr
 3632              	.L708:
 3633 0016 BFEE000A 		vmov.f32	s0, #-1.0e+0
 3634 001a 7047     		bx	lr
 3635              		.size	_ZNK8Platform11GetFanValueEj, .-_ZNK8Platform11GetFanValueEj
 3636              		.section	.text._ZN8Platform11SetFanValueEjf,"ax",%progbits
 3637              		.align	1
 3638              		.p2align 2,,3
 3639              		.global	_ZN8Platform11SetFanValueEjf
 3640              		.syntax unified
 3641              		.thumb
 3642              		.thumb_func
 3643              		.fpu fpv4-sp-d16
 3644              		.type	_ZN8Platform11SetFanValueEjf, %function
 3645              	_ZN8Platform11SetFanValueEjf:
 3646              		@ args = 0, pretend = 0, frame = 0
 3647              		@ frame_needed = 0, uses_anonymous_args = 0
 3648              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 65


 3649 0000 0829     		cmp	r1, #8
 3650 0002 00D9     		bls	.L711
 3651 0004 7047     		bx	lr
 3652              	.L711:
 3653 0006 01EBC101 		add	r1, r1, r1, lsl #3
 3654 000a 00EBC100 		add	r0, r0, r1, lsl #3
 3655 000e 00F63C00 		addw	r0, r0, #2108
 3656 0012 FFF7FEBF 		b	_ZN3Fan6SetPwmEf
 3657              		.size	_ZN8Platform11SetFanValueEjf, .-_ZN8Platform11SetFanValueEjf
 3658 0016 00BF     		.section	.text._ZNK8Platform17IsFanControllableEj,"ax",%progbits
 3659              		.align	1
 3660              		.p2align 2,,3
 3661              		.global	_ZNK8Platform17IsFanControllableEj
 3662              		.syntax unified
 3663              		.thumb
 3664              		.thumb_func
 3665              		.fpu fpv4-sp-d16
 3666              		.type	_ZNK8Platform17IsFanControllableEj, %function
 3667              	_ZNK8Platform17IsFanControllableEj:
 3668              		@ args = 0, pretend = 0, frame = 0
 3669              		@ frame_needed = 0, uses_anonymous_args = 0
 3670              		@ link register save eliminated.
 3671 0000 0829     		cmp	r1, #8
 3672 0002 11D8     		bhi	.L715
 3673 0004 01EBC101 		add	r1, r1, r1, lsl #3
 3674 0008 C900     		lsls	r1, r1, #3
 3675 000a 01F63C03 		addw	r3, r1, #2108
 3676 000e 0344     		add	r3, r3, r0
 3677 0010 5A6A     		ldr	r2, [r3, #36]
 3678 0012 4AB9     		cbnz	r2, .L715
 3679 0014 0144     		add	r1, r1, r0
 3680 0016 91F87E08 		ldrb	r0, [r1, #2174]	@ zero_extendqisi2
 3681 001a 30B1     		cbz	r0, .L713
 3682 001c 93F82C00 		ldrb	r0, [r3, #44]	@ zero_extendqisi2
 3683 0020 FF38     		subs	r0, r0, #255
 3684 0022 18BF     		it	ne
 3685 0024 0120     		movne	r0, #1
 3686 0026 7047     		bx	lr
 3687              	.L715:
 3688 0028 0020     		movs	r0, #0
 3689              	.L713:
 3690 002a 7047     		bx	lr
 3691              		.size	_ZNK8Platform17IsFanControllableEj, .-_ZNK8Platform17IsFanControllableEj
 3692              		.section	.text._ZNK8Platform10GetFanNameEj,"ax",%progbits
 3693              		.align	1
 3694              		.p2align 2,,3
 3695              		.global	_ZNK8Platform10GetFanNameEj
 3696              		.syntax unified
 3697              		.thumb
 3698              		.thumb_func
 3699              		.fpu fpv4-sp-d16
 3700              		.type	_ZNK8Platform10GetFanNameEj, %function
 3701              	_ZNK8Platform10GetFanNameEj:
 3702              		@ args = 0, pretend = 0, frame = 0
 3703              		@ frame_needed = 0, uses_anonymous_args = 0
 3704              		@ link register save eliminated.
 3705 0000 0829     		cmp	r1, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 66


 3706 0002 9DBF     		ittte	ls
 3707 0004 01EBC101 		addls	r1, r1, r1, lsl #3
 3708 0008 00EBC100 		addls	r0, r0, r1, lsl #3
 3709 000c 00F66900 		addwls	r0, r0, #2153
 3710 0010 0048     		ldrhi	r0, .L722
 3711 0012 7047     		bx	lr
 3712              	.L723:
 3713              		.align	2
 3714              	.L722:
 3715 0014 00000000 		.word	.LC18
 3716              		.size	_ZNK8Platform10GetFanNameEj, .-_ZNK8Platform10GetFanNameEj
 3717              		.section	.text._ZNK8Platform9GetFanRPMEj,"ax",%progbits
 3718              		.align	1
 3719              		.p2align 2,,3
 3720              		.global	_ZNK8Platform9GetFanRPMEj
 3721              		.syntax unified
 3722              		.thumb
 3723              		.thumb_func
 3724              		.fpu fpv4-sp-d16
 3725              		.type	_ZNK8Platform9GetFanRPMEj, %function
 3726              	_ZNK8Platform9GetFanRPMEj:
 3727              		@ args = 0, pretend = 0, frame = 0
 3728              		@ frame_needed = 0, uses_anonymous_args = 0
 3729              		@ link register save eliminated.
 3730 0000 09B1     		cbz	r1, .L726
 3731 0002 0020     		movs	r0, #0
 3732 0004 7047     		bx	lr
 3733              	.L726:
 3734 0006 00F6C820 		addw	r0, r0, #2760
 3735 000a FFF7FEBF 		b	_ZNK5Tacho6GetRPMEv
 3736              		.size	_ZNK8Platform9GetFanRPMEj, .-_ZNK8Platform9GetFanRPMEj
 3737 000e 00BF     		.section	.text._ZNK8Platform20FansHardwareInvertedEj,"ax",%progbits
 3738              		.align	1
 3739              		.p2align 2,,3
 3740              		.global	_ZNK8Platform20FansHardwareInvertedEj
 3741              		.syntax unified
 3742              		.thumb
 3743              		.thumb_func
 3744              		.fpu fpv4-sp-d16
 3745              		.type	_ZNK8Platform20FansHardwareInvertedEj, %function
 3746              	_ZNK8Platform20FansHardwareInvertedEj:
 3747              		@ args = 0, pretend = 0, frame = 0
 3748              		@ frame_needed = 0, uses_anonymous_args = 0
 3749              		@ link register save eliminated.
 3750 0000 0020     		movs	r0, #0
 3751 0002 7047     		bx	lr
 3752              		.size	_ZNK8Platform20FansHardwareInvertedEj, .-_ZNK8Platform20FansHardwareInvertedEj
 3753              		.section	.text._ZN8Platform8InitFansEv,"ax",%progbits
 3754              		.align	1
 3755              		.p2align 2,,3
 3756              		.global	_ZN8Platform8InitFansEv
 3757              		.syntax unified
 3758              		.thumb
 3759              		.thumb_func
 3760              		.fpu fpv4-sp-d16
 3761              		.type	_ZN8Platform8InitFansEv, %function
 3762              	_ZN8Platform8InitFansEv:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 67


 3763              		@ args = 0, pretend = 0, frame = 0
 3764              		@ frame_needed = 0, uses_anonymous_args = 0
 3765 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3766 0004 3721     		movs	r1, #55
 3767 0006 82B0     		sub	sp, sp, #8
 3768 0008 8046     		mov	r8, r0
 3769 000a 114E     		ldr	r6, .L732
 3770 000c 00F63C05 		addw	r5, r0, #2108
 3771 0010 1424     		movs	r4, #20
 3772 0012 FA27     		movs	r7, #250
 3773 0014 01E0     		b	.L730
 3774              	.L729:
 3775 0016 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 3776              	.L730:
 3777 001a 0097     		str	r7, [sp]
 3778 001c 2246     		mov	r2, r4
 3779 001e 0134     		adds	r4, r4, #1
 3780 0020 2846     		mov	r0, r5
 3781 0022 0023     		movs	r3, #0
 3782 0024 A4B2     		uxth	r4, r4
 3783 0026 FFF7FEFF 		bl	_ZN3Fan4InitEhtbt
 3784 002a 1D2C     		cmp	r4, #29
 3785 002c 05F14805 		add	r5, r5, #72
 3786 0030 F1D1     		bne	.L729
 3787 0032 08F68408 		addw	r8, r8, #2180
 3788 0036 4046     		mov	r0, r8
 3789 0038 FE21     		movs	r1, #254
 3790 003a FFF7FEFF 		bl	_ZN3Fan19SetHeatersMonitoredEm
 3791 003e 4046     		mov	r0, r8
 3792 0040 B7EE000A 		vmov.f32	s0, #1.0e+0
 3793 0044 02B0     		add	sp, sp, #8
 3794              		@ sp needed
 3795 0046 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 3796 004a FFF7FEBF 		b	_ZN3Fan6SetPwmEf
 3797              	.L733:
 3798 004e 00BF     		.align	2
 3799              	.L732:
 3800 0050 00000000 		.word	.LANCHOR4
 3801              		.size	_ZN8Platform8InitFansEv, .-_ZN8Platform8InitFansEv
 3802              		.section	.text._ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType,"ax",%pr
 3803              		.align	1
 3804              		.p2align 2,,3
 3805              		.global	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType
 3806              		.syntax unified
 3807              		.thumb
 3808              		.thumb_func
 3809              		.fpu fpv4-sp-d16
 3810              		.type	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType, %function
 3811              	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType:
 3812              		@ args = 0, pretend = 0, frame = 0
 3813              		@ frame_needed = 0, uses_anonymous_args = 0
 3814              		@ link register save eliminated.
 3815 0000 00EB8101 		add	r1, r0, r1, lsl #2
 3816 0004 C1F8EC27 		str	r2, [r1, #2028]
 3817 0008 C1F81038 		str	r3, [r1, #2064]
 3818 000c 7047     		bx	lr
 3819              		.size	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType, .-_ZN8Platform23
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 68


 3820 000e 00BF     		.section	.text._ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType,"ax",
 3821              		.align	1
 3822              		.p2align 2,,3
 3823              		.global	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType
 3824              		.syntax unified
 3825              		.thumb
 3826              		.thumb_func
 3827              		.fpu fpv4-sp-d16
 3828              		.type	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType, %function
 3829              	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType:
 3830              		@ args = 0, pretend = 0, frame = 0
 3831              		@ frame_needed = 0, uses_anonymous_args = 0
 3832              		@ link register save eliminated.
 3833 0000 00EB8101 		add	r1, r0, r1, lsl #2
 3834 0004 D1F8EC07 		ldr	r0, [r1, #2028]
 3835 0008 1060     		str	r0, [r2]
 3836 000a D1F81028 		ldr	r2, [r1, #2064]
 3837 000e 1A60     		str	r2, [r3]
 3838 0010 7047     		bx	lr
 3839              		.size	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType, .-_ZNK8Platfo
 3840 0012 00BF     		.section	.text._ZN8Platform14AppendAuxReplyEPKcb,"ax",%progbits
 3841              		.align	1
 3842              		.p2align 2,,3
 3843              		.global	_ZN8Platform14AppendAuxReplyEPKcb
 3844              		.syntax unified
 3845              		.thumb
 3846              		.thumb_func
 3847              		.fpu fpv4-sp-d16
 3848              		.type	_ZN8Platform14AppendAuxReplyEPKcb, %function
 3849              	_ZN8Platform14AppendAuxReplyEPKcb:
 3850              		@ args = 0, pretend = 0, frame = 0
 3851              		@ frame_needed = 0, uses_anonymous_args = 0
 3852              		@ link register save eliminated.
 3853 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 3854 0002 33B1     		cbz	r3, .L745
 3855 0004 90F8643B 		ldrb	r3, [r0, #2916]	@ zero_extendqisi2
 3856 0008 10B4     		push	{r4}
 3857 000a 1BB9     		cbnz	r3, .L748
 3858 000c 5DF8044B 		ldr	r4, [sp], #4
 3859 0010 7047     		bx	lr
 3860              	.L745:
 3861 0012 7047     		bx	lr
 3862              	.L748:
 3863 0014 5DF8044B 		ldr	r4, [sp], #4
 3864 0018 FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEPKcb.part.28
 3865              		.size	_ZN8Platform14AppendAuxReplyEPKcb, .-_ZN8Platform14AppendAuxReplyEPKcb
 3866              		.section	.text._ZN8Platform14AppendAuxReplyEP12OutputBufferb,"ax",%progbits
 3867              		.align	1
 3868              		.p2align 2,,3
 3869              		.global	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 3870              		.syntax unified
 3871              		.thumb
 3872              		.thumb_func
 3873              		.fpu fpv4-sp-d16
 3874              		.type	_ZN8Platform14AppendAuxReplyEP12OutputBufferb, %function
 3875              	_ZN8Platform14AppendAuxReplyEP12OutputBufferb:
 3876              		@ args = 0, pretend = 0, frame = 16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 69


 3877              		@ frame_needed = 0, uses_anonymous_args = 0
 3878 0000 30B5     		push	{r4, r5, lr}
 3879 0002 85B0     		sub	sp, sp, #20
 3880 0004 0191     		str	r1, [sp, #4]
 3881 0006 41B1     		cbz	r1, .L752
 3882 0008 0446     		mov	r4, r0
 3883 000a 0846     		mov	r0, r1
 3884 000c 1546     		mov	r5, r2
 3885 000e FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3886 0012 10B1     		cbz	r0, .L752
 3887 0014 94F8643B 		ldrb	r3, [r4, #2916]	@ zero_extendqisi2
 3888 0018 23B9     		cbnz	r3, .L763
 3889              	.L752:
 3890 001a 01A8     		add	r0, sp, #4
 3891 001c FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3892 0020 05B0     		add	sp, sp, #20
 3893              		@ sp needed
 3894 0022 30BD     		pop	{r4, r5, pc}
 3895              	.L763:
 3896 0024 02A8     		add	r0, sp, #8
 3897 0026 4FF0FF32 		mov	r2, #-1
 3898 002a 04F6FC21 		addw	r1, r4, #2812
 3899 002e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3900 0032 7DB9     		cbnz	r5, .L764
 3901 0034 D4F8603B 		ldr	r3, [r4, #2912]
 3902 0038 D4F85C0B 		ldr	r0, [r4, #2908]
 3903 003c 0199     		ldr	r1, [sp, #4]
 3904 003e 0133     		adds	r3, r3, #1
 3905 0040 C4F8603B 		str	r3, [r4, #2912]
 3906 0044 60B1     		cbz	r0, .L765
 3907 0046 FFF7FEFF 		bl	_ZN12OutputBuffer6AppendEPS_
 3908              	.L754:
 3909 004a 02A8     		add	r0, sp, #8
 3910 004c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3911 0050 05B0     		add	sp, sp, #20
 3912              		@ sp needed
 3913 0052 30BD     		pop	{r4, r5, pc}
 3914              	.L764:
 3915 0054 04F6E820 		addw	r0, r4, #2792
 3916 0058 0199     		ldr	r1, [sp, #4]
 3917 005a FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 3918 005e F4E7     		b	.L754
 3919              	.L765:
 3920 0060 C4F85C1B 		str	r1, [r4, #2908]
 3921 0064 F1E7     		b	.L754
 3922              		.size	_ZN8Platform14AppendAuxReplyEP12OutputBufferb, .-_ZN8Platform14AppendAuxReplyEP12OutputBuffe
 3923 0066 00BF     		.section	.text._ZN8Platform7MessageE11MessageTypeP12OutputBuffer,"ax",%progbits
 3924              		.align	1
 3925              		.p2align 2,,3
 3926              		.global	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3927              		.syntax unified
 3928              		.thumb
 3929              		.thumb_func
 3930              		.fpu fpv4-sp-d16
 3931              		.type	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer, %function
 3932              	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer:
 3933              		@ args = 0, pretend = 0, frame = 16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 70


 3934              		@ frame_needed = 0, uses_anonymous_args = 0
 3935 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 3936 0004 87B0     		sub	sp, sp, #28
 3937 0006 0B06     		lsls	r3, r1, #24
 3938 0008 0C46     		mov	r4, r1
 3939 000a 0546     		mov	r5, r0
 3940 000c 0392     		str	r2, [sp, #12]
 3941 000e 0AD5     		bpl	.L767
 3942 0010 806B     		ldr	r0, [r0, #56]
 3943 0012 40B1     		cbz	r0, .L767
 3944 0014 05F62843 		addw	r3, r5, #3112
 3945 0018 D3E90067 		ldrd	r6, [r3]
 3946 001c 0092     		str	r2, [sp]
 3947 001e 3B46     		mov	r3, r7
 3948 0020 3246     		mov	r2, r6
 3949 0022 FFF7FEFF 		bl	_ZN6Logger10LogMessageExP12OutputBuffer
 3950              	.L767:
 3951 0026 14F00C09 		ands	r9, r4, #12
 3952 002a 14BF     		ite	ne
 3953 002c 0121     		movne	r1, #1
 3954 002e 0021     		moveq	r1, #0
 3955 0030 14F00306 		ands	r6, r4, #3
 3956 0034 18BF     		it	ne
 3957 0036 0131     		addne	r1, r1, #1
 3958 0038 14F01008 		ands	r8, r4, #16
 3959 003c 15D0     		beq	.L769
 3960 003e 14F02007 		ands	r7, r4, #32
 3961 0042 01F10101 		add	r1, r1, #1
 3962 0046 00D0     		beq	.L771
 3963              	.L770:
 3964 0048 0131     		adds	r1, r1, #1
 3965              	.L771:
 3966 004a 0139     		subs	r1, r1, #1
 3967 004c 0398     		ldr	r0, [sp, #12]
 3968 004e FFF7FEFF 		bl	_ZN12OutputBuffer18IncreaseReferencesEj
 3969 0052 B9F1000F 		cmp	r9, #0
 3970 0056 3CD1     		bne	.L810
 3971 0058 B8F1000F 		cmp	r8, #0
 3972 005c 2AD1     		bne	.L811
 3973              	.L776:
 3974 005e 002F     		cmp	r7, #0
 3975 0060 2FD1     		bne	.L812
 3976              	.L777:
 3977 0062 6EB9     		cbnz	r6, .L813
 3978              	.L766:
 3979 0064 07B0     		add	sp, sp, #28
 3980              		@ sp needed
 3981 0066 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3982              	.L769:
 3983 006a 14F02007 		ands	r7, r4, #32
 3984 006e EBD1     		bne	.L770
 3985 0070 0029     		cmp	r1, #0
 3986 0072 EAD1     		bne	.L771
 3987 0074 03A8     		add	r0, sp, #12
 3988 0076 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3989 007a 07B0     		add	sp, sp, #28
 3990              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 71


 3991 007c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3992              	.L813:
 3993 0080 04A8     		add	r0, sp, #16
 3994 0082 4FF0FF32 		mov	r2, #-1
 3995 0086 05F67C31 		addw	r1, r5, #2940
 3996 008a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3997 008e 1E48     		ldr	r0, .L814
 3998 0090 FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 3999 0094 28B1     		cbz	r0, .L778
 4000 0096 1D4B     		ldr	r3, .L814+4
 4001 0098 DB69     		ldr	r3, [r3, #28]
 4002 009a 1A69     		ldr	r2, [r3, #16]
 4003 009c 6AB3     		cbz	r2, .L779
 4004 009e 5B7A     		ldrb	r3, [r3, #9]	@ zero_extendqisi2
 4005 00a0 5BBB     		cbnz	r3, .L779
 4006              	.L778:
 4007 00a2 03A8     		add	r0, sp, #12
 4008 00a4 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 4009              	.L780:
 4010 00a8 04A8     		add	r0, sp, #16
 4011 00aa FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 4012 00ae 07B0     		add	sp, sp, #28
 4013              		@ sp needed
 4014 00b0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4015              	.L811:
 4016 00b4 154B     		ldr	r3, .L814+4
 4017 00b6 0399     		ldr	r1, [sp, #12]
 4018 00b8 9868     		ldr	r0, [r3, #8]
 4019 00ba FFF7FEFF 		bl	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer
 4020 00be 002F     		cmp	r7, #0
 4021 00c0 CFD0     		beq	.L777
 4022              	.L812:
 4023 00c2 124B     		ldr	r3, .L814+4
 4024 00c4 0399     		ldr	r1, [sp, #12]
 4025 00c6 9868     		ldr	r0, [r3, #8]
 4026 00c8 FFF7FEFF 		bl	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer
 4027 00cc 002E     		cmp	r6, #0
 4028 00ce C9D0     		beq	.L766
 4029 00d0 D6E7     		b	.L813
 4030              	.L810:
 4031 00d2 DDF80C90 		ldr	r9, [sp, #12]
 4032 00d6 0021     		movs	r1, #0
 4033 00d8 4846     		mov	r0, r9
 4034 00da FFF7FEFF 		bl	_ZN12OutputBufferixEj
 4035 00de 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 4036 00e0 7B2B     		cmp	r3, #123
 4037 00e2 14BF     		ite	ne
 4038 00e4 C4F38022 		ubfxne	r2, r4, #10, #1
 4039 00e8 0122     		moveq	r2, #1
 4040 00ea 4946     		mov	r1, r9
 4041 00ec 2846     		mov	r0, r5
 4042 00ee FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 4043 00f2 B8F1000F 		cmp	r8, #0
 4044 00f6 B2D0     		beq	.L776
 4045 00f8 DCE7     		b	.L811
 4046              	.L779:
 4047 00fa 05F66830 		addw	r0, r5, #2920
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 72


 4048 00fe 0399     		ldr	r1, [sp, #12]
 4049 0100 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 4050 0104 D0E7     		b	.L780
 4051              	.L815:
 4052 0106 00BF     		.align	2
 4053              	.L814:
 4054 0108 00000000 		.word	SerialUSB
 4055 010c 00000000 		.word	reprap
 4056              		.size	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer, .-_ZN8Platform7MessageE11MessageTypeP12Ou
 4057              		.section	.text._ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef,"ax",%progbits
 4058              		.align	1
 4059              		.p2align 2,,3
 4060              		.global	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef
 4061              		.syntax unified
 4062              		.thumb
 4063              		.thumb_func
 4064              		.fpu fpv4-sp-d16
 4065              		.type	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef, %function
 4066              	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef:
 4067              		@ args = 0, pretend = 0, frame = 136
 4068              		@ frame_needed = 0, uses_anonymous_args = 0
 4069 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4070 0002 0D46     		mov	r5, r1
 4071 0004 A5B0     		sub	sp, sp, #148
 4072 0006 0446     		mov	r4, r0
 4073 0008 5321     		movs	r1, #83
 4074 000a 2846     		mov	r0, r5
 4075 000c 1646     		mov	r6, r2
 4076 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4077 0012 0028     		cmp	r0, #0
 4078 0014 2ED0     		beq	.L817
 4079 0016 A06B     		ldr	r0, [r4, #56]
 4080 0018 28B1     		cbz	r0, .L818
 4081 001a 04F62843 		addw	r3, r4, #3112
 4082 001e D3E90023 		ldrd	r2, [r3]
 4083 0022 FFF7FEFF 		bl	_ZN6Logger4StopEx
 4084              	.L818:
 4085 0026 2846     		mov	r0, r5
 4086 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4087 002c 0028     		cmp	r0, #0
 4088 002e 3CDD     		ble	.L825
 4089 0030 A06B     		ldr	r0, [r4, #56]
 4090 0032 0028     		cmp	r0, #0
 4091 0034 3ED0     		beq	.L832
 4092 0036 04F62843 		addw	r3, r4, #3112
 4093 003a D3E90023 		ldrd	r2, [r3]
 4094 003e FFF7FEFF 		bl	_ZN6Logger4StopEx
 4095              	.L821:
 4096 0042 05AA     		add	r2, sp, #20
 4097 0044 7923     		movs	r3, #121
 4098 0046 5021     		movs	r1, #80
 4099 0048 2846     		mov	r0, r5
 4100 004a 0392     		str	r2, [sp, #12]
 4101 004c 0493     		str	r3, [sp, #16]
 4102 004e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4103 0052 03AF     		add	r7, sp, #12
 4104 0054 E8B9     		cbnz	r0, .L833
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 73


 4105 0056 3846     		mov	r0, r7
 4106 0058 1A49     		ldr	r1, .L834
 4107 005a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4108              	.L823:
 4109 005e 04F62843 		addw	r3, r4, #3112
 4110 0062 A06B     		ldr	r0, [r4, #56]
 4111 0064 D3E90023 		ldrd	r2, [r3]
 4112 0068 0097     		str	r7, [sp]
 4113 006a FFF7FEFF 		bl	_ZN6Logger5StartExRK9StringRef
 4114 006e 0120     		movs	r0, #1
 4115 0070 25B0     		add	sp, sp, #148
 4116              		@ sp needed
 4117 0072 F0BD     		pop	{r4, r5, r6, r7, pc}
 4118              	.L817:
 4119 0074 A36B     		ldr	r3, [r4, #56]
 4120 0076 DBB1     		cbz	r3, .L826
 4121 0078 1968     		ldr	r1, [r3]
 4122 007a 134A     		ldr	r2, .L834+4
 4123 007c 134B     		ldr	r3, .L834+8
 4124 007e 0029     		cmp	r1, #0
 4125 0080 18BF     		it	ne
 4126 0082 1A46     		movne	r2, r3
 4127              	.L824:
 4128 0084 1249     		ldr	r1, .L834+12
 4129 0086 3046     		mov	r0, r6
 4130 0088 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4131 008c 0120     		movs	r0, #1
 4132              	.L819:
 4133 008e 25B0     		add	sp, sp, #148
 4134              		@ sp needed
 4135 0090 F0BD     		pop	{r4, r5, r6, r7, pc}
 4136              	.L833:
 4137 0092 2846     		mov	r0, r5
 4138 0094 3946     		mov	r1, r7
 4139 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 4140 009a 0028     		cmp	r0, #0
 4141 009c DFD1     		bne	.L823
 4142 009e 3046     		mov	r0, r6
 4143 00a0 0C49     		ldr	r1, .L834+16
 4144 00a2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4145 00a6 0220     		movs	r0, #2
 4146 00a8 F1E7     		b	.L819
 4147              	.L825:
 4148 00aa 0120     		movs	r0, #1
 4149 00ac 25B0     		add	sp, sp, #148
 4150              		@ sp needed
 4151 00ae F0BD     		pop	{r4, r5, r6, r7, pc}
 4152              	.L826:
 4153 00b0 054A     		ldr	r2, .L834+4
 4154 00b2 E7E7     		b	.L824
 4155              	.L832:
 4156 00b4 1020     		movs	r0, #16
 4157 00b6 FFF7FEFF 		bl	_Znwj
 4158 00ba 0746     		mov	r7, r0
 4159 00bc FFF7FEFF 		bl	_ZN6LoggerC1Ev
 4160 00c0 A763     		str	r7, [r4, #56]
 4161 00c2 BEE7     		b	.L821
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 74


 4162              	.L835:
 4163              		.align	2
 4164              	.L834:
 4165 00c4 38000000 		.word	.LC22
 4166 00c8 08000000 		.word	.LC20
 4167 00cc 00000000 		.word	.LC19
 4168 00d0 48000000 		.word	.LC23
 4169 00d4 14000000 		.word	.LC21
 4170              		.size	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef, .-_ZN8Platform16ConfigureLoggingE
 4171              		.section	.text._ZN8Platform11StopLoggingEv,"ax",%progbits
 4172              		.align	1
 4173              		.p2align 2,,3
 4174              		.global	_ZN8Platform11StopLoggingEv
 4175              		.syntax unified
 4176              		.thumb
 4177              		.thumb_func
 4178              		.fpu fpv4-sp-d16
 4179              		.type	_ZN8Platform11StopLoggingEv, %function
 4180              	_ZN8Platform11StopLoggingEv:
 4181              		@ args = 0, pretend = 0, frame = 0
 4182              		@ frame_needed = 0, uses_anonymous_args = 0
 4183              		@ link register save eliminated.
 4184 0000 826B     		ldr	r2, [r0, #56]
 4185 0002 32B1     		cbz	r2, .L836
 4186 0004 00F62843 		addw	r3, r0, #3112
 4187 0008 1046     		mov	r0, r2
 4188 000a D3E90023 		ldrd	r2, [r3]
 4189 000e FFF7FEBF 		b	_ZN6Logger4StopEx
 4190              	.L836:
 4191 0012 7047     		bx	lr
 4192              		.size	_ZN8Platform11StopLoggingEv, .-_ZN8Platform11StopLoggingEv
 4193              		.section	.text._ZNK8Platform8AtxPowerEv,"ax",%progbits
 4194              		.align	1
 4195              		.p2align 2,,3
 4196              		.global	_ZNK8Platform8AtxPowerEv
 4197              		.syntax unified
 4198              		.thumb
 4199              		.thumb_func
 4200              		.fpu fpv4-sp-d16
 4201              		.type	_ZNK8Platform8AtxPowerEv, %function
 4202              	_ZNK8Platform8AtxPowerEv:
 4203              		@ args = 0, pretend = 0, frame = 0
 4204              		@ frame_needed = 0, uses_anonymous_args = 0
 4205              		@ link register save eliminated.
 4206 0000 4F20     		movs	r0, #79
 4207 0002 FFF7FEBF 		b	_ZN6IoPort7ReadPinEh
 4208              		.size	_ZNK8Platform8AtxPowerEv, .-_ZNK8Platform8AtxPowerEv
 4209 0006 00BF     		.section	.text._ZN8Platform10AtxPowerOnEv,"ax",%progbits
 4210              		.align	1
 4211              		.p2align 2,,3
 4212              		.global	_ZN8Platform10AtxPowerOnEv
 4213              		.syntax unified
 4214              		.thumb
 4215              		.thumb_func
 4216              		.fpu fpv4-sp-d16
 4217              		.type	_ZN8Platform10AtxPowerOnEv, %function
 4218              	_ZN8Platform10AtxPowerOnEv:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 75


 4219              		@ args = 0, pretend = 0, frame = 0
 4220              		@ frame_needed = 0, uses_anonymous_args = 0
 4221              		@ link register save eliminated.
 4222 0000 0023     		movs	r3, #0
 4223 0002 80F8C43C 		strb	r3, [r0, #3268]
 4224 0006 0121     		movs	r1, #1
 4225 0008 4F20     		movs	r0, #79
 4226 000a FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 4227              		.size	_ZN8Platform10AtxPowerOnEv, .-_ZN8Platform10AtxPowerOnEv
 4228 000e 00BF     		.section	.text._ZN8Platform11AtxPowerOffEb,"ax",%progbits
 4229              		.align	1
 4230              		.p2align 2,,3
 4231              		.global	_ZN8Platform11AtxPowerOffEb
 4232              		.syntax unified
 4233              		.thumb
 4234              		.thumb_func
 4235              		.fpu fpv4-sp-d16
 4236              		.type	_ZN8Platform11AtxPowerOffEb, %function
 4237              	_ZN8Platform11AtxPowerOffEb:
 4238              		@ args = 0, pretend = 0, frame = 0
 4239              		@ frame_needed = 0, uses_anonymous_args = 0
 4240              		@ link register save eliminated.
 4241 0000 80F8C41C 		strb	r1, [r0, #3268]
 4242 0004 09B9     		cbnz	r1, .L840
 4243 0006 FFF7FEBF 		b	_ZN8Platform11AtxPowerOffEb.part.29
 4244              	.L840:
 4245 000a 7047     		bx	lr
 4246              		.size	_ZN8Platform11AtxPowerOffEb, .-_ZN8Platform11AtxPowerOffEb
 4247              		.section	.text._ZN8Platform18SetPressureAdvanceEjf,"ax",%progbits
 4248              		.align	1
 4249              		.p2align 2,,3
 4250              		.global	_ZN8Platform18SetPressureAdvanceEjf
 4251              		.syntax unified
 4252              		.thumb
 4253              		.thumb_func
 4254              		.fpu fpv4-sp-d16
 4255              		.type	_ZN8Platform18SetPressureAdvanceEjf, %function
 4256              	_ZN8Platform18SetPressureAdvanceEjf:
 4257              		@ args = 0, pretend = 0, frame = 0
 4258              		@ frame_needed = 0, uses_anonymous_args = 0
 4259              		@ link register save eliminated.
 4260 0000 0829     		cmp	r1, #8
 4261 0002 9CBF     		itt	ls
 4262 0004 00EB8100 		addls	r0, r0, r1, lsl #2
 4263 0008 80ED8F0A 		vstrls.32	s0, [r0, #572]
 4264 000c 7047     		bx	lr
 4265              		.size	_ZN8Platform18SetPressureAdvanceEjf, .-_ZN8Platform18SetPressureAdvanceEjf
 4266 000e 00BF     		.section	.text._ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_,"ax",%progbits
 4267              		.align	1
 4268              		.p2align 2,,3
 4269              		.global	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_
 4270              		.syntax unified
 4271              		.thumb
 4272              		.thumb_func
 4273              		.fpu fpv4-sp-d16
 4274              		.type	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_, %function
 4275              	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 76


 4276              		@ args = 4, pretend = 0, frame = 0
 4277              		@ frame_needed = 0, uses_anonymous_args = 0
 4278              		@ link register save eliminated.
 4279 0000 0829     		cmp	r1, #8
 4280 0002 0DD8     		bhi	.L846
 4281 0004 00EB8100 		add	r0, r0, r1, lsl #2
 4282 0008 D0F86012 		ldr	r1, [r0, #608]	@ float
 4283 000c 1160     		str	r1, [r2]	@ float
 4284 000e D0F88422 		ldr	r2, [r0, #644]	@ float
 4285 0012 1A60     		str	r2, [r3]	@ float
 4286 0014 009A     		ldr	r2, [sp]
 4287 0016 D0F8A832 		ldr	r3, [r0, #680]	@ float
 4288 001a 1360     		str	r3, [r2]	@ float
 4289 001c 0120     		movs	r0, #1
 4290 001e 7047     		bx	lr
 4291              	.L846:
 4292 0020 0020     		movs	r0, #0
 4293 0022 7047     		bx	lr
 4294              		.size	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_, .-_ZNK8Platform24GetExtrusionCoefficients
 4295              		.section	.text._ZN8Platform21SetNonlinearExtrusionEjfff,"ax",%progbits
 4296              		.align	1
 4297              		.p2align 2,,3
 4298              		.global	_ZN8Platform21SetNonlinearExtrusionEjfff
 4299              		.syntax unified
 4300              		.thumb
 4301              		.thumb_func
 4302              		.fpu fpv4-sp-d16
 4303              		.type	_ZN8Platform21SetNonlinearExtrusionEjfff, %function
 4304              	_ZN8Platform21SetNonlinearExtrusionEjfff:
 4305              		@ args = 0, pretend = 0, frame = 0
 4306              		@ frame_needed = 0, uses_anonymous_args = 0
 4307              		@ link register save eliminated.
 4308 0000 0829     		cmp	r1, #8
 4309 0002 0ED8     		bhi	.L847
 4310 0004 00EB8100 		add	r0, r0, r1, lsl #2
 4311 0008 D0EDAA7A 		vldr.32	s15, [r0, #680]
 4312 000c F5EEC07A 		vcmpe.f32	s15, #0
 4313 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4314 0014 05DD     		ble	.L847
 4315 0016 80EDAA1A 		vstr.32	s2, [r0, #680]
 4316 001a 80ED980A 		vstr.32	s0, [r0, #608]
 4317 001e C0EDA10A 		vstr.32	s1, [r0, #644]
 4318              	.L847:
 4319 0022 7047     		bx	lr
 4320              		.size	_ZN8Platform21SetNonlinearExtrusionEjfff, .-_ZN8Platform21SetNonlinearExtrusionEjfff
 4321              		.section	.text._ZNK8Platform11GetBaudRateEj,"ax",%progbits
 4322              		.align	1
 4323              		.p2align 2,,3
 4324              		.global	_ZNK8Platform11GetBaudRateEj
 4325              		.syntax unified
 4326              		.thumb
 4327              		.thumb_func
 4328              		.fpu fpv4-sp-d16
 4329              		.type	_ZNK8Platform11GetBaudRateEj, %function
 4330              	_ZNK8Platform11GetBaudRateEj:
 4331              		@ args = 0, pretend = 0, frame = 0
 4332              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 77


 4333              		@ link register save eliminated.
 4334 0000 0229     		cmp	r1, #2
 4335 0002 05D9     		bls	.L855
 4336 0004 6329     		cmp	r1, #99
 4337 0006 0CBF     		ite	eq
 4338 0008 D0F8E00A 		ldreq	r0, [r0, #2784]
 4339 000c 0020     		movne	r0, #0
 4340 000e 7047     		bx	lr
 4341              	.L855:
 4342 0010 01F2B621 		addw	r1, r1, #694
 4343 0014 50F82100 		ldr	r0, [r0, r1, lsl #2]
 4344 0018 7047     		bx	lr
 4345              		.size	_ZNK8Platform11GetBaudRateEj, .-_ZNK8Platform11GetBaudRateEj
 4346 001a 00BF     		.section	.text._ZNK8Platform18GetCommsPropertiesEj,"ax",%progbits
 4347              		.align	1
 4348              		.p2align 2,,3
 4349              		.global	_ZNK8Platform18GetCommsPropertiesEj
 4350              		.syntax unified
 4351              		.thumb
 4352              		.thumb_func
 4353              		.fpu fpv4-sp-d16
 4354              		.type	_ZNK8Platform18GetCommsPropertiesEj, %function
 4355              	_ZNK8Platform18GetCommsPropertiesEj:
 4356              		@ args = 0, pretend = 0, frame = 0
 4357              		@ frame_needed = 0, uses_anonymous_args = 0
 4358              		@ link register save eliminated.
 4359 0000 0229     		cmp	r1, #2
 4360 0002 9ABF     		itte	ls
 4361 0004 4018     		addls	r0, r0, r1
 4362 0006 90F8E40A 		ldrbls	r0, [r0, #2788]	@ zero_extendqisi2
 4363 000a 0020     		movhi	r0, #0
 4364 000c 7047     		bx	lr
 4365              		.size	_ZNK8Platform18GetCommsPropertiesEj, .-_ZNK8Platform18GetCommsPropertiesEj
 4366 000e 00BF     		.section	.text._ZN8Platform12SetBoardTypeE9BoardType,"ax",%progbits
 4367              		.align	1
 4368              		.p2align 2,,3
 4369              		.global	_ZN8Platform12SetBoardTypeE9BoardType
 4370              		.syntax unified
 4371              		.thumb
 4372              		.thumb_func
 4373              		.fpu fpv4-sp-d16
 4374              		.type	_ZN8Platform12SetBoardTypeE9BoardType, %function
 4375              	_ZN8Platform12SetBoardTypeE9BoardType:
 4376              		@ args = 0, pretend = 0, frame = 0
 4377              		@ frame_needed = 0, uses_anonymous_args = 0
 4378 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4379 0004 0446     		mov	r4, r0
 4380 0006 0F46     		mov	r7, r1
 4381 0008 71B1     		cbz	r1, .L872
 4382 000a 84F8F810 		strb	r1, [r4, #248]
 4383              	.L864:
 4384 000e 94F8FA30 		ldrb	r3, [r4, #250]	@ zero_extendqisi2
 4385 0012 0BB9     		cbnz	r3, .L873
 4386 0014 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4387              	.L873:
 4388 0018 2046     		mov	r0, r4
 4389 001a FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 78


 4390 001e 2046     		mov	r0, r4
 4391 0020 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 4392 0024 FFF7FEBF 		b	_ZN8Platform8InitFansEv
 4393              	.L872:
 4394 0028 0A46     		mov	r2, r1
 4395 002a 6420     		movs	r0, #100
 4396 002c 0321     		movs	r1, #3
 4397 002e FFF7FEFF 		bl	pinModeDuet
 4398 0032 DFF89080 		ldr	r8, .L874+4
 4399 0036 224E     		ldr	r6, .L874
 4400 0038 3A46     		mov	r2, r7
 4401 003a 0121     		movs	r1, #1
 4402 003c 0520     		movs	r0, #5
 4403 003e FFF7FEFF 		bl	pinModeDuet
 4404 0042 3A46     		mov	r2, r7
 4405 0044 0121     		movs	r1, #1
 4406 0046 6720     		movs	r0, #103
 4407 0048 FFF7FEFF 		bl	pinModeDuet
 4408 004c D8F80030 		ldr	r3, [r8]
 4409 0050 A6FB0323 		umull	r2, r3, r6, r3
 4410 0054 9B0C     		lsrs	r3, r3, #18
 4411 0056 03EB8303 		add	r3, r3, r3, lsl #2
 4412 005a 5B00     		lsls	r3, r3, #1
 4413              		.syntax unified
 4414              	@ 88 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
 4415              		L_4961_delayMicroseconds:
 4416 005c 013B     		subs   r3, #1
 4417 005e FDD1     		bne    L_4961_delayMicroseconds
 4418              	
 4419              	@ 0 "" 2
 4420              		.thumb
 4421              		.syntax unified
 4422 0060 6720     		movs	r0, #103
 4423 0062 FFF7FEFF 		bl	digitalRead
 4424 0066 3A46     		mov	r2, r7
 4425 0068 0546     		mov	r5, r0
 4426 006a 0221     		movs	r1, #2
 4427 006c 6720     		movs	r0, #103
 4428 006e FFF7FEFF 		bl	pinModeDuet
 4429 0072 D8F80030 		ldr	r3, [r8]
 4430 0076 A6FB0323 		umull	r2, r3, r6, r3
 4431 007a 9B0C     		lsrs	r3, r3, #18
 4432 007c 03EB8303 		add	r3, r3, r3, lsl #2
 4433 0080 5B00     		lsls	r3, r3, #1
 4434              		.syntax unified
 4435              	@ 88 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
 4436              		L_4974_delayMicroseconds:
 4437 0082 013B     		subs   r3, #1
 4438 0084 FDD1     		bne    L_4974_delayMicroseconds
 4439              	
 4440              	@ 0 "" 2
 4441              		.thumb
 4442              		.syntax unified
 4443 0086 6720     		movs	r0, #103
 4444 0088 FFF7FEFF 		bl	digitalRead
 4445 008c 40B9     		cbnz	r0, .L861
 4446 008e 3DB1     		cbz	r5, .L861
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 79


 4447 0090 0520     		movs	r0, #5
 4448 0092 FFF7FEFF 		bl	digitalRead
 4449 0096 80B9     		cbnz	r0, .L866
 4450 0098 0323     		movs	r3, #3
 4451              	.L863:
 4452 009a 84F8F830 		strb	r3, [r4, #248]
 4453 009e B6E7     		b	.L864
 4454              	.L861:
 4455 00a0 0022     		movs	r2, #0
 4456 00a2 6720     		movs	r0, #103
 4457 00a4 1146     		mov	r1, r2
 4458 00a6 FFF7FEFF 		bl	pinModeDuet
 4459 00aa 0520     		movs	r0, #5
 4460 00ac FFF7FEFF 		bl	digitalRead
 4461 00b0 08B1     		cbz	r0, .L867
 4462 00b2 0223     		movs	r3, #2
 4463 00b4 F1E7     		b	.L863
 4464              	.L867:
 4465 00b6 0423     		movs	r3, #4
 4466 00b8 EFE7     		b	.L863
 4467              	.L866:
 4468 00ba 0123     		movs	r3, #1
 4469 00bc EDE7     		b	.L863
 4470              	.L875:
 4471 00be 00BF     		.align	2
 4472              	.L874:
 4473 00c0 819F5E16 		.word	375299969
 4474 00c4 00000000 		.word	SystemCoreClock
 4475              		.size	_ZN8Platform12SetBoardTypeE9BoardType, .-_ZN8Platform12SetBoardTypeE9BoardType
 4476              		.section	.text._ZNK8Platform20GetElectronicsStringEv,"ax",%progbits
 4477              		.align	1
 4478              		.p2align 2,,3
 4479              		.global	_ZNK8Platform20GetElectronicsStringEv
 4480              		.syntax unified
 4481              		.thumb
 4482              		.thumb_func
 4483              		.fpu fpv4-sp-d16
 4484              		.type	_ZNK8Platform20GetElectronicsStringEv, %function
 4485              	_ZNK8Platform20GetElectronicsStringEv:
 4486              		@ args = 0, pretend = 0, frame = 0
 4487              		@ frame_needed = 0, uses_anonymous_args = 0
 4488              		@ link register save eliminated.
 4489 0000 90F8F830 		ldrb	r3, [r0, #248]	@ zero_extendqisi2
 4490 0004 013B     		subs	r3, r3, #1
 4491 0006 DBB2     		uxtb	r3, r3
 4492 0008 032B     		cmp	r3, #3
 4493 000a 9ABF     		itte	ls
 4494 000c 024A     		ldrls	r2, .L879
 4495 000e 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 4496 0012 0248     		ldrhi	r0, .L879+4
 4497 0014 7047     		bx	lr
 4498              	.L880:
 4499 0016 00BF     		.align	2
 4500              	.L879:
 4501 0018 00000000 		.word	.LANCHOR5
 4502 001c 00000000 		.word	.LC24
 4503              		.size	_ZNK8Platform20GetElectronicsStringEv, .-_ZNK8Platform20GetElectronicsStringEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 80


 4504              		.section	.text._ZNK8Platform14GetBoardStringEv,"ax",%progbits
 4505              		.align	1
 4506              		.p2align 2,,3
 4507              		.global	_ZNK8Platform14GetBoardStringEv
 4508              		.syntax unified
 4509              		.thumb
 4510              		.thumb_func
 4511              		.fpu fpv4-sp-d16
 4512              		.type	_ZNK8Platform14GetBoardStringEv, %function
 4513              	_ZNK8Platform14GetBoardStringEv:
 4514              		@ args = 0, pretend = 0, frame = 0
 4515              		@ frame_needed = 0, uses_anonymous_args = 0
 4516              		@ link register save eliminated.
 4517 0000 90F8F830 		ldrb	r3, [r0, #248]	@ zero_extendqisi2
 4518 0004 013B     		subs	r3, r3, #1
 4519 0006 DBB2     		uxtb	r3, r3
 4520 0008 032B     		cmp	r3, #3
 4521 000a 9ABF     		itte	ls
 4522 000c 024A     		ldrls	r2, .L884
 4523 000e 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 4524 0012 0248     		ldrhi	r0, .L884+4
 4525 0014 7047     		bx	lr
 4526              	.L885:
 4527 0016 00BF     		.align	2
 4528              	.L884:
 4529 0018 00000000 		.word	.LANCHOR6
 4530 001c 00000000 		.word	.LC25
 4531              		.size	_ZNK8Platform14GetBoardStringEv, .-_ZNK8Platform14GetBoardStringEv
 4532              		.section	.text._ZNK8Platform10IsDuetWiFiEv,"ax",%progbits
 4533              		.align	1
 4534              		.p2align 2,,3
 4535              		.global	_ZNK8Platform10IsDuetWiFiEv
 4536              		.syntax unified
 4537              		.thumb
 4538              		.thumb_func
 4539              		.fpu fpv4-sp-d16
 4540              		.type	_ZNK8Platform10IsDuetWiFiEv, %function
 4541              	_ZNK8Platform10IsDuetWiFiEv:
 4542              		@ args = 0, pretend = 0, frame = 0
 4543              		@ frame_needed = 0, uses_anonymous_args = 0
 4544              		@ link register save eliminated.
 4545 0000 90F8F800 		ldrb	r0, [r0, #248]	@ zero_extendqisi2
 4546 0004 0138     		subs	r0, r0, #1
 4547 0006 0128     		cmp	r0, #1
 4548 0008 8CBF     		ite	hi
 4549 000a 0020     		movhi	r0, #0
 4550 000c 0120     		movls	r0, #1
 4551 000e 7047     		bx	lr
 4552              		.size	_ZNK8Platform10IsDuetWiFiEv, .-_ZNK8Platform10IsDuetWiFiEv
 4553              		.section	.text._ZN8Platform14GetFirmwarePinEt9PinAccessRhRb,"ax",%progbits
 4554              		.align	1
 4555              		.p2align 2,,3
 4556              		.global	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 4557              		.syntax unified
 4558              		.thumb
 4559              		.thumb_func
 4560              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 81


 4561              		.type	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb, %function
 4562              	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb:
 4563              		@ args = 4, pretend = 0, frame = 0
 4564              		@ frame_needed = 0, uses_anonymous_args = 0
 4565 0000 70B5     		push	{r4, r5, r6, lr}
 4566 0002 049E     		ldr	r6, [sp, #16]
 4567 0004 FF25     		movs	r5, #255
 4568 0006 0024     		movs	r4, #0
 4569 0008 0729     		cmp	r1, #7
 4570 000a 1D70     		strb	r5, [r3]
 4571 000c 3470     		strb	r4, [r6]
 4572 000e 1DD8     		bhi	.L888
 4573 0010 414C     		ldr	r4, .L930
 4574 0012 2469     		ldr	r4, [r4, #16]
 4575 0014 04EB8104 		add	r4, r4, r1, lsl #2
 4576 0018 646C     		ldr	r4, [r4, #68]
 4577 001a 94F84640 		ldrb	r4, [r4, #70]	@ zero_extendqisi2
 4578 001e 6CB3     		cbz	r4, .L889
 4579              	.L924:
 4580 0020 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 4581              	.L890:
 4582 0022 FF2C     		cmp	r4, #255
 4583 0024 28D0     		beq	.L905
 4584              	.L900:
 4585 0026 012A     		cmp	r2, #1
 4586 0028 39D0     		beq	.L925
 4587              	.L902:
 4588 002a 023A     		subs	r2, r2, #2
 4589 002c 012A     		cmp	r2, #1
 4590 002e 51D9     		bls	.L926
 4591 0030 0125     		movs	r5, #1
 4592              	.L903:
 4593 0032 4618     		adds	r6, r0, r1
 4594 0034 96F9C53C 		ldrsb	r3, [r6, #3269]
 4595 0038 AB42     		cmp	r3, r5
 4596 003a 38D0     		beq	.L909
 4597              	.L928:
 4598 003c 2046     		mov	r0, r4
 4599 003e 2946     		mov	r1, r5
 4600 0040 FFF7FEFF 		bl	_ZN6IoPort10SetPinModeEh7PinMode
 4601 0044 86F8C55C 		strb	r5, [r6, #3269]
 4602 0048 0120     		movs	r0, #1
 4603 004a 70BD     		pop	{r4, r5, r6, pc}
 4604              	.L888:
 4605 004c A1F11404 		sub	r4, r1, #20
 4606 0050 A5B2     		uxth	r5, r4
 4607 0052 082D     		cmp	r5, #8
 4608 0054 18D8     		bhi	.L891
 4609 0056 04EBC405 		add	r5, r4, r4, lsl #3
 4610 005a 00EBC505 		add	r5, r0, r5, lsl #3
 4611 005e B5F86658 		ldrh	r5, [r5, #2150]
 4612 0062 8D42     		cmp	r5, r1
 4613 0064 DCD0     		beq	.L924
 4614 0066 1629     		cmp	r1, #22
 4615 0068 01D9     		bls	.L893
 4616 006a 032A     		cmp	r2, #3
 4617 006c 13D0     		beq	.L894
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 82


 4618              	.L893:
 4619 006e 2B4D     		ldr	r5, .L930+4
 4620 0070 2C5D     		ldrb	r4, [r5, r4]	@ zero_extendqisi2
 4621 0072 1C70     		strb	r4, [r3]
 4622 0074 FF2C     		cmp	r4, #255
 4623 0076 D6D1     		bne	.L900
 4624              	.L905:
 4625 0078 0020     		movs	r0, #0
 4626 007a 70BD     		pop	{r4, r5, r6, pc}
 4627              	.L889:
 4628 007c 284C     		ldr	r4, .L930+8
 4629 007e 645C     		ldrb	r4, [r4, r1]	@ zero_extendqisi2
 4630 0080 1C70     		strb	r4, [r3]
 4631 0082 0124     		movs	r4, #1
 4632 0084 3470     		strb	r4, [r6]
 4633 0086 CBE7     		b	.L924
 4634              	.L891:
 4635 0088 A1F12804 		sub	r4, r1, #40
 4636 008c 0B2C     		cmp	r4, #11
 4637 008e 10D8     		bhi	.L895
 4638 0090 32B3     		cbz	r2, .L896
 4639 0092 012A     		cmp	r2, #1
 4640 0094 17D0     		beq	.L927
 4641              	.L894:
 4642 0096 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 4643 0098 FF2C     		cmp	r4, #255
 4644 009a C6D1     		bne	.L902
 4645 009c ECE7     		b	.L905
 4646              	.L925:
 4647 009e 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 4648 00a0 B3B1     		cbz	r3, .L904
 4649 00a2 4618     		adds	r6, r0, r1
 4650 00a4 0425     		movs	r5, #4
 4651 00a6 96F9C53C 		ldrsb	r3, [r6, #3269]
 4652 00aa AB42     		cmp	r3, r5
 4653 00ac C6D1     		bne	.L928
 4654              	.L909:
 4655 00ae 0120     		movs	r0, #1
 4656 00b0 70BD     		pop	{r4, r5, r6, pc}
 4657              	.L895:
 4658 00b2 A1F13C04 		sub	r4, r1, #60
 4659 00b6 052C     		cmp	r4, #5
 4660 00b8 17D8     		bhi	.L898
 4661 00ba 1A4C     		ldr	r4, .L930+12
 4662 00bc 0C44     		add	r4, r4, r1
 4663 00be 14F83C4C 		ldrb	r4, [r4, #-60]	@ zero_extendqisi2
 4664 00c2 1C70     		strb	r4, [r3]
 4665 00c4 ADE7     		b	.L890
 4666              	.L927:
 4667 00c6 2C29     		cmp	r1, #44
 4668 00c8 0AD8     		bhi	.L896
 4669 00ca 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 4670 00cc FF2C     		cmp	r4, #255
 4671 00ce D3D0     		beq	.L905
 4672              	.L904:
 4673 00d0 0325     		movs	r5, #3
 4674 00d2 AEE7     		b	.L903
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 83


 4675              	.L926:
 4676 00d4 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 4677 00d6 002B     		cmp	r3, #0
 4678 00d8 0CBF     		ite	eq
 4679 00da 0725     		moveq	r5, #7
 4680 00dc 0825     		movne	r5, #8
 4681 00de A8E7     		b	.L903
 4682              	.L896:
 4683 00e0 4418     		adds	r4, r0, r1
 4684 00e2 94F84641 		ldrb	r4, [r4, #326]	@ zero_extendqisi2
 4685 00e6 1C70     		strb	r4, [r3]
 4686 00e8 9BE7     		b	.L890
 4687              	.L898:
 4688 00ea A1F16404 		sub	r4, r1, #100
 4689 00ee 032C     		cmp	r4, #3
 4690 00f0 0AD9     		bls	.L929
 4691 00f2 A1F17804 		sub	r4, r1, #120
 4692 00f6 0F2C     		cmp	r4, #15
 4693 00f8 92D8     		bhi	.L924
 4694 00fa 032A     		cmp	r2, #3
 4695 00fc CBD0     		beq	.L894
 4696 00fe 01F16404 		add	r4, r1, #100
 4697 0102 E4B2     		uxtb	r4, r4
 4698 0104 1C70     		strb	r4, [r3]
 4699 0106 8EE7     		b	.L900
 4700              	.L929:
 4701 0108 032A     		cmp	r2, #3
 4702 010a C4D0     		beq	.L894
 4703 010c 064C     		ldr	r4, .L930+16
 4704 010e 0C44     		add	r4, r4, r1
 4705 0110 14F8644C 		ldrb	r4, [r4, #-100]	@ zero_extendqisi2
 4706 0114 1C70     		strb	r4, [r3]
 4707 0116 84E7     		b	.L890
 4708              	.L931:
 4709              		.align	2
 4710              	.L930:
 4711 0118 00000000 		.word	reprap
 4712 011c 00000000 		.word	.LANCHOR4
 4713 0120 00000000 		.word	.LANCHOR3
 4714 0124 00000000 		.word	.LANCHOR7
 4715 0128 00000000 		.word	.LANCHOR8
 4716              		.size	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb, .-_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 4717              		.section	.text._ZNK8Platform15TranslateFanPinEtRhRb,"ax",%progbits
 4718              		.align	1
 4719              		.p2align 2,,3
 4720              		.global	_ZNK8Platform15TranslateFanPinEtRhRb
 4721              		.syntax unified
 4722              		.thumb
 4723              		.thumb_func
 4724              		.fpu fpv4-sp-d16
 4725              		.type	_ZNK8Platform15TranslateFanPinEtRhRb, %function
 4726              	_ZNK8Platform15TranslateFanPinEtRhRb:
 4727              		@ args = 0, pretend = 0, frame = 0
 4728              		@ frame_needed = 0, uses_anonymous_args = 0
 4729              		@ link register save eliminated.
 4730 0000 0729     		cmp	r1, #7
 4731 0002 10B4     		push	{r4}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 84


 4732 0004 10D8     		bhi	.L933
 4733 0006 1248     		ldr	r0, .L938
 4734 0008 0069     		ldr	r0, [r0, #16]
 4735 000a 00EB8100 		add	r0, r0, r1, lsl #2
 4736 000e 406C     		ldr	r0, [r0, #68]
 4737 0010 90F84600 		ldrb	r0, [r0, #70]	@ zero_extendqisi2
 4738 0014 B8B9     		cbnz	r0, .L936
 4739 0016 0F48     		ldr	r0, .L938+4
 4740 0018 0124     		movs	r4, #1
 4741 001a 415C     		ldrb	r1, [r0, r1]	@ zero_extendqisi2
 4742 001c 1170     		strb	r1, [r2]
 4743 001e 2046     		mov	r0, r4
 4744 0020 1C70     		strb	r4, [r3]
 4745 0022 5DF8044B 		ldr	r4, [sp], #4
 4746 0026 7047     		bx	lr
 4747              	.L933:
 4748 0028 A1F11400 		sub	r0, r1, #20
 4749 002c 0828     		cmp	r0, #8
 4750 002e 0AD8     		bhi	.L936
 4751 0030 0948     		ldr	r0, .L938+8
 4752 0032 0144     		add	r1, r1, r0
 4753 0034 0024     		movs	r4, #0
 4754 0036 11F8141C 		ldrb	r1, [r1, #-20]	@ zero_extendqisi2
 4755 003a 1170     		strb	r1, [r2]
 4756 003c 0120     		movs	r0, #1
 4757 003e 1C70     		strb	r4, [r3]
 4758 0040 5DF8044B 		ldr	r4, [sp], #4
 4759 0044 7047     		bx	lr
 4760              	.L936:
 4761 0046 0020     		movs	r0, #0
 4762 0048 5DF8044B 		ldr	r4, [sp], #4
 4763 004c 7047     		bx	lr
 4764              	.L939:
 4765 004e 00BF     		.align	2
 4766              	.L938:
 4767 0050 00000000 		.word	reprap
 4768 0054 00000000 		.word	.LANCHOR3
 4769 0058 00000000 		.word	.LANCHOR4
 4770              		.size	_ZNK8Platform15TranslateFanPinEtRhRb, .-_ZNK8Platform15TranslateFanPinEtRhRb
 4771              		.section	.text._ZNK8Platform13AppendPinNameEtRK9StringRef,"ax",%progbits
 4772              		.align	1
 4773              		.p2align 2,,3
 4774              		.global	_ZNK8Platform13AppendPinNameEtRK9StringRef
 4775              		.syntax unified
 4776              		.thumb
 4777              		.thumb_func
 4778              		.fpu fpv4-sp-d16
 4779              		.type	_ZNK8Platform13AppendPinNameEtRK9StringRef, %function
 4780              	_ZNK8Platform13AppendPinNameEtRK9StringRef:
 4781              		@ args = 0, pretend = 0, frame = 0
 4782              		@ frame_needed = 0, uses_anonymous_args = 0
 4783              		@ link register save eliminated.
 4784 0000 0729     		cmp	r1, #7
 4785 0002 1046     		mov	r0, r2
 4786 0004 14D9     		bls	.L945
 4787 0006 A1F11402 		sub	r2, r1, #20
 4788 000a 93B2     		uxth	r3, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 85


 4789 000c 082B     		cmp	r3, #8
 4790 000e 0CD9     		bls	.L946
 4791 0010 A1F12802 		sub	r2, r1, #40
 4792 0014 93B2     		uxth	r3, r2
 4793 0016 0B2B     		cmp	r3, #11
 4794 0018 11D9     		bls	.L947
 4795 001a A1F13C02 		sub	r2, r1, #60
 4796 001e 93B2     		uxth	r3, r2
 4797 0020 052B     		cmp	r3, #5
 4798 0022 09D9     		bls	.L948
 4799 0024 0749     		ldr	r1, .L949
 4800 0026 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 4801              	.L946:
 4802 002a 0749     		ldr	r1, .L949+4
 4803 002c FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 4804              	.L945:
 4805 0030 0A46     		mov	r2, r1
 4806 0032 0649     		ldr	r1, .L949+8
 4807 0034 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 4808              	.L948:
 4809 0038 0549     		ldr	r1, .L949+12
 4810 003a FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 4811              	.L947:
 4812 003e 0549     		ldr	r1, .L949+16
 4813 0040 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 4814              	.L950:
 4815              		.align	2
 4816              	.L949:
 4817 0044 00000000 		.word	.LC25
 4818 0048 04000000 		.word	.LC27
 4819 004c 00000000 		.word	.LC26
 4820 0050 0C000000 		.word	.LC29
 4821 0054 08000000 		.word	.LC28
 4822              		.size	_ZNK8Platform13AppendPinNameEtRK9StringRef, .-_ZNK8Platform13AppendPinNameEtRK9StringRef
 4823              		.section	.text._ZN8Platform28SetExtrusionAncilliaryPwmPinEtb,"ax",%progbits
 4824              		.align	1
 4825              		.p2align 2,,3
 4826              		.global	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb
 4827              		.syntax unified
 4828              		.thumb
 4829              		.thumb_func
 4830              		.fpu fpv4-sp-d16
 4831              		.type	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb, %function
 4832              	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb:
 4833              		@ args = 0, pretend = 0, frame = 0
 4834              		@ frame_needed = 0, uses_anonymous_args = 0
 4835              		@ link register save eliminated.
 4836 0000 1346     		mov	r3, r2
 4837 0002 00F6B840 		addw	r0, r0, #3256
 4838 0006 0222     		movs	r2, #2
 4839 0008 FFF7FEBF 		b	_ZN6IoPort3SetEt9PinAccessb
 4840              		.size	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb, .-_ZN8Platform28SetExtrusionAncilliaryPwmPinE
 4841              		.section	.text._ZN8Platform11SetLaserPwmEt,"ax",%progbits
 4842              		.align	1
 4843              		.p2align 2,,3
 4844              		.global	_ZN8Platform11SetLaserPwmEt
 4845              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 86


 4846              		.thumb
 4847              		.thumb_func
 4848              		.fpu fpv4-sp-d16
 4849              		.type	_ZN8Platform11SetLaserPwmEt, %function
 4850              	_ZN8Platform11SetLaserPwmEt:
 4851              		@ args = 0, pretend = 0, frame = 0
 4852              		@ frame_needed = 0, uses_anonymous_args = 0
 4853              		@ link register save eliminated.
 4854 0000 07EE901A 		vmov	s15, r1	@ int
 4855 0004 B8EE670A 		vcvt.f32.u32	s0, s15
 4856 0008 DFED037A 		vldr.32	s15, .L953
 4857 000c 00F6BE40 		addw	r0, r0, #3262
 4858 0010 80EE270A 		vdiv.f32	s0, s0, s15
 4859 0014 FFF7FEBF 		b	_ZNK7PwmPort11WriteAnalogEf
 4860              	.L954:
 4861              		.align	2
 4862              	.L953:
 4863 0018 00FF7F47 		.word	1199570688
 4864              		.size	_ZN8Platform11SetLaserPwmEt, .-_ZN8Platform11SetLaserPwmEt
 4865              		.section	.text._ZN8Platform11SetLaserPinEtb,"ax",%progbits
 4866              		.align	1
 4867              		.p2align 2,,3
 4868              		.global	_ZN8Platform11SetLaserPinEtb
 4869              		.syntax unified
 4870              		.thumb
 4871              		.thumb_func
 4872              		.fpu fpv4-sp-d16
 4873              		.type	_ZN8Platform11SetLaserPinEtb, %function
 4874              	_ZN8Platform11SetLaserPinEtb:
 4875              		@ args = 0, pretend = 0, frame = 0
 4876              		@ frame_needed = 0, uses_anonymous_args = 0
 4877              		@ link register save eliminated.
 4878 0000 1346     		mov	r3, r2
 4879 0002 00F6BE40 		addw	r0, r0, #3262
 4880 0006 0222     		movs	r2, #2
 4881 0008 FFF7FEBF 		b	_ZN6IoPort3SetEt9PinAccessb
 4882              		.size	_ZN8Platform11SetLaserPinEtb, .-_ZN8Platform11SetLaserPinEtb
 4883              		.section	.text._ZN8Platform20SetLaserPwmFrequencyEf,"ax",%progbits
 4884              		.align	1
 4885              		.p2align 2,,3
 4886              		.global	_ZN8Platform20SetLaserPwmFrequencyEf
 4887              		.syntax unified
 4888              		.thumb
 4889              		.thumb_func
 4890              		.fpu fpv4-sp-d16
 4891              		.type	_ZN8Platform20SetLaserPwmFrequencyEf, %function
 4892              	_ZN8Platform20SetLaserPwmFrequencyEf:
 4893              		@ args = 0, pretend = 0, frame = 0
 4894              		@ frame_needed = 0, uses_anonymous_args = 0
 4895              		@ link register save eliminated.
 4896 0000 00F6BE40 		addw	r0, r0, #3262
 4897 0004 FFF7FEBF 		b	_ZN7PwmPort12SetFrequencyEf
 4898              		.size	_ZN8Platform20SetLaserPwmFrequencyEf, .-_ZN8Platform20SetLaserPwmFrequencyEf
 4899              		.section	.text._ZNK8Platform13GetEndstopPinEi,"ax",%progbits
 4900              		.align	1
 4901              		.p2align 2,,3
 4902              		.global	_ZNK8Platform13GetEndstopPinEi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 87


 4903              		.syntax unified
 4904              		.thumb
 4905              		.thumb_func
 4906              		.fpu fpv4-sp-d16
 4907              		.type	_ZNK8Platform13GetEndstopPinEi, %function
 4908              	_ZNK8Platform13GetEndstopPinEi:
 4909              		@ args = 0, pretend = 0, frame = 0
 4910              		@ frame_needed = 0, uses_anonymous_args = 0
 4911              		@ link register save eliminated.
 4912 0000 0B29     		cmp	r1, #11
 4913 0002 9ABF     		itte	ls
 4914 0004 4018     		addls	r0, r0, r1
 4915 0006 90F86E01 		ldrbls	r0, [r0, #366]	@ zero_extendqisi2
 4916 000a FF20     		movhi	r0, #255
 4917 000c 7047     		bx	lr
 4918              		.size	_ZNK8Platform13GetEndstopPinEi, .-_ZNK8Platform13GetEndstopPinEi
 4919 000e 00BF     		.section	.text._ZN8Platform14SetAxisMaximumEjfb,"ax",%progbits
 4920              		.align	1
 4921              		.p2align 2,,3
 4922              		.global	_ZN8Platform14SetAxisMaximumEjfb
 4923              		.syntax unified
 4924              		.thumb
 4925              		.thumb_func
 4926              		.fpu fpv4-sp-d16
 4927              		.type	_ZN8Platform14SetAxisMaximumEjfb, %function
 4928              	_ZN8Platform14SetAxisMaximumEjfb:
 4929              		@ args = 0, pretend = 0, frame = 0
 4930              		@ frame_needed = 0, uses_anonymous_args = 0
 4931              		@ link register save eliminated.
 4932 0000 01F5F373 		add	r3, r1, #486
 4933 0004 00EB8303 		add	r3, r0, r3, lsl #2
 4934 0008 83ED010A 		vstr.32	s0, [r3, #4]
 4935 000c 3AB1     		cbz	r2, .L960
 4936 000e D0F8E837 		ldr	r3, [r0, #2024]
 4937 0012 0122     		movs	r2, #1
 4938 0014 02FA01F1 		lsl	r1, r2, r1
 4939 0018 0B43     		orrs	r3, r3, r1
 4940 001a C0F8E837 		str	r3, [r0, #2024]
 4941              	.L960:
 4942 001e 7047     		bx	lr
 4943              		.size	_ZN8Platform14SetAxisMaximumEjfb, .-_ZN8Platform14SetAxisMaximumEjfb
 4944              		.section	.text._ZN8Platform14SetAxisMinimumEjfb,"ax",%progbits
 4945              		.align	1
 4946              		.p2align 2,,3
 4947              		.global	_ZN8Platform14SetAxisMinimumEjfb
 4948              		.syntax unified
 4949              		.thumb
 4950              		.thumb_func
 4951              		.fpu fpv4-sp-d16
 4952              		.type	_ZN8Platform14SetAxisMinimumEjfb, %function
 4953              	_ZN8Platform14SetAxisMinimumEjfb:
 4954              		@ args = 0, pretend = 0, frame = 0
 4955              		@ frame_needed = 0, uses_anonymous_args = 0
 4956              		@ link register save eliminated.
 4957 0000 01F5F873 		add	r3, r1, #496
 4958 0004 00EB8303 		add	r3, r0, r3, lsl #2
 4959 0008 83ED000A 		vstr.32	s0, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 88


 4960 000c 3AB1     		cbz	r2, .L965
 4961 000e D0F8E437 		ldr	r3, [r0, #2020]
 4962 0012 0122     		movs	r2, #1
 4963 0014 02FA01F1 		lsl	r1, r2, r1
 4964 0018 0B43     		orrs	r3, r3, r1
 4965 001a C0F8E437 		str	r3, [r0, #2020]
 4966              	.L965:
 4967 001e 7047     		bx	lr
 4968              		.size	_ZN8Platform14SetAxisMinimumEjfb, .-_ZN8Platform14SetAxisMinimumEjfb
 4969              		.section	.text._ZNK8Platform18GetMcuTemperaturesERfS0_S0_,"ax",%progbits
 4970              		.align	1
 4971              		.p2align 2,,3
 4972              		.global	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 4973              		.syntax unified
 4974              		.thumb
 4975              		.thumb_func
 4976              		.fpu fpv4-sp-d16
 4977              		.type	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_, %function
 4978              	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_:
 4979              		@ args = 0, pretend = 0, frame = 0
 4980              		@ frame_needed = 0, uses_anonymous_args = 0
 4981              		@ link register save eliminated.
 4982 0000 10B4     		push	{r4}
 4983 0002 D0F88847 		ldr	r4, [r0, #1928]
 4984 0006 9FED247A 		vldr.32	s14, .L972
 4985 000a 9FED246A 		vldr.32	s12, .L972+4
 4986 000e DFED246A 		vldr.32	s13, .L972+8
 4987 0012 05EE904A 		vmov	s11, r4	@ int
 4988 0016 D0F89447 		ldr	r4, [r0, #1940]
 4989 001a 07EE904A 		vmov	s15, r4	@ int
 4990 001e B8EE675A 		vcvt.f32.u32	s10, s15
 4991 0022 F0EE474A 		vmov.f32	s9, s14
 4992 0026 E5EE064A 		vfma.f32	s9, s10, s12
 4993 002a 00F5F364 		add	r4, r0, #1944
 4994 002e F3EE0B7A 		vmov.f32	s15, #2.7e+1
 4995 0032 B0EE645A 		vmov.f32	s10, s9
 4996 0036 F0EE674A 		vmov.f32	s9, s15
 4997 003a E5EE264A 		vfma.f32	s9, s10, s13
 4998 003e F8EE655A 		vcvt.f32.u32	s11, s11
 4999 0042 B0EE645A 		vmov.f32	s10, s9
 5000 0046 F0EE474A 		vmov.f32	s9, s14
 5001 004a E5EE864A 		vfma.f32	s9, s11, s12
 5002 004e F0EE645A 		vmov.f32	s11, s9
 5003 0052 D4ED004A 		vldr.32	s9, [r4]
 5004 0056 35EE245A 		vadd.f32	s10, s10, s9
 5005 005a F0EE674A 		vmov.f32	s9, s15
 5006 005e E5EEA64A 		vfma.f32	s9, s11, s13
 5007 0062 81ED005A 		vstr.32	s10, [r1]
 5008 0066 94ED005A 		vldr.32	s10, [r4]
 5009 006a 74EE855A 		vadd.f32	s11, s9, s10
 5010 006e C2ED005A 		vstr.32	s11, [r2]
 5011 0072 D0F89027 		ldr	r2, [r0, #1936]
 5012 0076 94ED005A 		vldr.32	s10, [r4]
 5013 007a 5DF8044B 		ldr	r4, [sp], #4
 5014 007e 05EE902A 		vmov	s11, r2	@ int
 5015 0082 F8EE655A 		vcvt.f32.u32	s11, s11
 5016 0086 A5EE867A 		vfma.f32	s14, s11, s12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 89


 5017 008a E7EE267A 		vfma.f32	s15, s14, s13
 5018 008e 77EE857A 		vadd.f32	s15, s15, s10
 5019 0092 C3ED007A 		vstr.32	s15, [r3]
 5020 0096 7047     		bx	lr
 5021              	.L973:
 5022              		.align	2
 5023              	.L972:
 5024 0098 EC51B8BF 		.word	-1078439444
 5025 009c 3333D337 		.word	936588083
 5026 00a0 16C45443 		.word	1129628694
 5027              		.size	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_, .-_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 5028              		.section	.text._ZNK8Platform16GetPowerVoltagesERfS0_S0_,"ax",%progbits
 5029              		.align	1
 5030              		.p2align 2,,3
 5031              		.global	_ZNK8Platform16GetPowerVoltagesERfS0_S0_
 5032              		.syntax unified
 5033              		.thumb
 5034              		.thumb_func
 5035              		.fpu fpv4-sp-d16
 5036              		.type	_ZNK8Platform16GetPowerVoltagesERfS0_S0_, %function
 5037              	_ZNK8Platform16GetPowerVoltagesERfS0_S0_:
 5038              		@ args = 0, pretend = 0, frame = 0
 5039              		@ frame_needed = 0, uses_anonymous_args = 0
 5040              		@ link register save eliminated.
 5041 0000 B0F802CC 		ldrh	ip, [r0, #3074]
 5042 0004 DFED0F6A 		vldr.32	s13, .L975
 5043 0008 07EE10CA 		vmov	s14, ip	@ int
 5044 000c B8EEC77A 		vcvt.f32.s32	s14, s14
 5045 0010 27EE267A 		vmul.f32	s14, s14, s13
 5046 0014 81ED007A 		vstr.32	s14, [r1]
 5047 0018 B0F8FE1B 		ldrh	r1, [r0, #3070]
 5048 001c 07EE101A 		vmov	s14, r1	@ int
 5049 0020 B8EEC77A 		vcvt.f32.s32	s14, s14
 5050 0024 27EE267A 		vmul.f32	s14, s14, s13
 5051 0028 82ED007A 		vstr.32	s14, [r2]
 5052 002c B0F8002C 		ldrh	r2, [r0, #3072]
 5053 0030 07EE902A 		vmov	s15, r2	@ int
 5054 0034 F8EEE77A 		vcvt.f32.s32	s15, s15
 5055 0038 67EEA67A 		vmul.f32	s15, s15, s13
 5056 003c C3ED007A 		vstr.32	s15, [r3]
 5057 0040 7047     		bx	lr
 5058              	.L976:
 5059 0042 00BF     		.align	2
 5060              	.L975:
 5061 0044 3333113C 		.word	1007760179
 5062              		.size	_ZNK8Platform16GetPowerVoltagesERfS0_S0_, .-_ZNK8Platform16GetPowerVoltagesERfS0_S0_
 5063              		.section	.text._ZNK8Platform22GetCurrentPowerVoltageEv,"ax",%progbits
 5064              		.align	1
 5065              		.p2align 2,,3
 5066              		.global	_ZNK8Platform22GetCurrentPowerVoltageEv
 5067              		.syntax unified
 5068              		.thumb
 5069              		.thumb_func
 5070              		.fpu fpv4-sp-d16
 5071              		.type	_ZNK8Platform22GetCurrentPowerVoltageEv, %function
 5072              	_ZNK8Platform22GetCurrentPowerVoltageEv:
 5073              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 90


 5074              		@ frame_needed = 0, uses_anonymous_args = 0
 5075              		@ link register save eliminated.
 5076 0000 B0F8FE3B 		ldrh	r3, [r0, #3070]
 5077 0004 DFED047A 		vldr.32	s15, .L978
 5078 0008 00EE103A 		vmov	s0, r3	@ int
 5079 000c B8EEC00A 		vcvt.f32.s32	s0, s0
 5080 0010 20EE270A 		vmul.f32	s0, s0, s15
 5081 0014 7047     		bx	lr
 5082              	.L979:
 5083 0016 00BF     		.align	2
 5084              	.L978:
 5085 0018 3333113C 		.word	1007760179
 5086              		.size	_ZNK8Platform22GetCurrentPowerVoltageEv, .-_ZNK8Platform22GetCurrentPowerVoltageEv
 5087              		.section	.text._ZNK8Platform24GetTmcDriversTemperatureEj,"ax",%progbits
 5088              		.align	1
 5089              		.p2align 2,,3
 5090              		.global	_ZNK8Platform24GetTmcDriversTemperatureEj
 5091              		.syntax unified
 5092              		.thumb
 5093              		.thumb_func
 5094              		.fpu fpv4-sp-d16
 5095              		.type	_ZNK8Platform24GetTmcDriversTemperatureEj, %function
 5096              	_ZNK8Platform24GetTmcDriversTemperatureEj:
 5097              		@ args = 0, pretend = 0, frame = 0
 5098              		@ frame_needed = 0, uses_anonymous_args = 0
 5099              		@ link register save eliminated.
 5100 0000 1F23     		movs	r3, #31
 5101 0002 01EB8101 		add	r1, r1, r1, lsl #2
 5102 0006 03FA01F1 		lsl	r1, r3, r1
 5103 000a D0F82034 		ldr	r3, [r0, #1056]
 5104 000e 89B2     		uxth	r1, r1
 5105 0010 1942     		tst	r1, r3
 5106 0012 0AD1     		bne	.L982
 5107 0014 D0F82434 		ldr	r3, [r0, #1060]
 5108 0018 DFED057A 		vldr.32	s15, .L984
 5109 001c 9FED050A 		vldr.32	s0, .L984+4
 5110 0020 1942     		tst	r1, r3
 5111 0022 08BF     		it	eq
 5112 0024 B0EE670A 		vmoveq.f32	s0, s15
 5113 0028 7047     		bx	lr
 5114              	.L982:
 5115 002a 9FED030A 		vldr.32	s0, .L984+8
 5116 002e 7047     		bx	lr
 5117              	.L985:
 5118              		.align	2
 5119              	.L984:
 5120 0030 00000000 		.word	0
 5121 0034 0000C842 		.word	1120403456
 5122 0038 00001643 		.word	1125515264
 5123              		.size	_ZNK8Platform24GetTmcDriversTemperatureEj, .-_ZNK8Platform24GetTmcDriversTemperatureEj
 5124              		.section	.text._ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRefRP12OutputBuffer,"a
 5125              		.align	1
 5126              		.p2align 2,,3
 5127              		.global	_ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRefRP12OutputBuffer
 5128              		.syntax unified
 5129              		.thumb
 5130              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 91


 5131              		.fpu fpv4-sp-d16
 5132              		.type	_ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRefRP12OutputBuffer, %function
 5133              	_ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRefRP12OutputBuffer:
 5134              		@ args = 0, pretend = 0, frame = 64
 5135              		@ frame_needed = 0, uses_anonymous_args = 0
 5136 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5137 0004 8946     		mov	r9, r1
 5138 0006 91B0     		sub	sp, sp, #68
 5139 0008 0546     		mov	r5, r0
 5140 000a 5021     		movs	r1, #80
 5141 000c 4846     		mov	r0, r9
 5142 000e 9046     		mov	r8, r2
 5143 0010 0193     		str	r3, [sp, #4]
 5144 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5145 0016 0028     		cmp	r0, #0
 5146 0018 40F0D880 		bne	.L1094
 5147 001c 0446     		mov	r4, r0
 5148              	.L987:
 5149 001e C64E     		ldr	r6, .L1102
 5150 0020 7369     		ldr	r3, [r6, #20]
 5151 0022 D3F85C23 		ldr	r2, [r3, #860]
 5152 0026 4AB3     		cbz	r2, .L993
 5153 0028 2F46     		mov	r7, r5
 5154 002a 4FF0000B 		mov	fp, #0
 5155 002e 4FF0010A 		mov	r10, #1
 5156 0032 08E0     		b	.L997
 5157              	.L994:
 5158 0034 7369     		ldr	r3, [r6, #20]
 5159 0036 D3F85C13 		ldr	r1, [r3, #860]
 5160 003a 0BF1010B 		add	fp, fp, #1
 5161 003e 5945     		cmp	r1, fp
 5162 0040 07F10C07 		add	r7, r7, #12
 5163 0044 1AD9     		bls	.L993
 5164              	.L997:
 5165 0046 5B44     		add	r3, r3, fp
 5166 0048 4846     		mov	r0, r9
 5167 004a 93F81015 		ldrb	r1, [r3, #1296]	@ zero_extendqisi2
 5168 004e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5169 0052 0028     		cmp	r0, #0
 5170 0054 EED0     		beq	.L994
 5171 0056 D7F82C03 		ldr	r0, [r7, #812]
 5172 005a 0028     		cmp	r0, #0
 5173 005c EAD0     		beq	.L994
 5174 005e 07F54C71 		add	r1, r7, #816
 5175 0062 D5F81C24 		ldr	r2, [r5, #1052]
 5176 0066 0844     		add	r0, r0, r1
 5177              	.L996:
 5178 0068 11F8013B 		ldrb	r3, [r1], #1	@ zero_extendqisi2
 5179 006c 9342     		cmp	r3, r2
 5180 006e 3CBF     		itt	cc
 5181 0070 0AFA03F3 		lslcc	r3, r10, r3
 5182 0074 1C43     		orrcc	r4, r4, r3
 5183 0076 8142     		cmp	r1, r0
 5184 0078 F6D1     		bne	.L996
 5185 007a DBE7     		b	.L994
 5186              	.L993:
 5187 007c 4521     		movs	r1, #69
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 92


 5188 007e 4846     		mov	r0, r9
 5189 0080 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5190 0084 0028     		cmp	r0, #0
 5191 0086 40F0CC80 		bne	.L1095
 5192              	.L998:
 5193 008a 5321     		movs	r1, #83
 5194 008c 4846     		mov	r0, r9
 5195 008e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5196 0092 0646     		mov	r6, r0
 5197 0094 0028     		cmp	r0, #0
 5198 0096 40F0EF80 		bne	.L1096
 5199              	.L1002:
 5200 009a 4621     		movs	r1, #70
 5201 009c 4846     		mov	r0, r9
 5202 009e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5203 00a2 8346     		mov	fp, r0
 5204 00a4 0028     		cmp	r0, #0
 5205 00a6 40F03981 		bne	.L1097
 5206              	.L1006:
 5207 00aa 4821     		movs	r1, #72
 5208 00ac 4846     		mov	r0, r9
 5209 00ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5210 00b2 8346     		mov	fp, r0
 5211 00b4 0028     		cmp	r0, #0
 5212 00b6 40F01681 		bne	.L1098
 5213              	.L1010:
 5214 00ba 5421     		movs	r1, #84
 5215 00bc 4846     		mov	r0, r9
 5216 00be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5217 00c2 0028     		cmp	r0, #0
 5218 00c4 40F0F480 		bne	.L1099
 5219 00c8 5221     		movs	r1, #82
 5220 00ca 4846     		mov	r0, r9
 5221 00cc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5222 00d0 0028     		cmp	r0, #0
 5223 00d2 5BD1     		bne	.L1029
 5224 00d4 002E     		cmp	r6, #0
 5225 00d6 75D1     		bne	.L1023
 5226 00d8 0198     		ldr	r0, [sp, #4]
 5227 00da FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 5228 00de 8146     		mov	r9, r0
 5229 00e0 0028     		cmp	r0, #0
 5230 00e2 00F04B81 		beq	.L1035
 5231 00e6 D5F81C14 		ldr	r1, [r5, #1052]
 5232 00ea 14B9     		cbnz	r4, .L1024
 5233 00ec 0124     		movs	r4, #1
 5234 00ee 8C40     		lsls	r4, r4, r1
 5235 00f0 013C     		subs	r4, r4, #1
 5236              	.L1024:
 5237 00f2 0029     		cmp	r1, #0
 5238 00f4 66D0     		beq	.L1023
 5239 00f6 DFF85CB2 		ldr	fp, .L1102+28
 5240 00fa 904F     		ldr	r7, .L1102+4
 5241 00fc 4FF0000A 		mov	r10, #0
 5242 0100 1BE0     		b	.L1028
 5243              	.L1101:
 5244 0102 D5F86414 		ldr	r1, [r5, #1124]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 93


 5245 0106 8E4B     		ldr	r3, .L1102+8
 5246 0108 8E4E     		ldr	r6, .L1102+12
 5247 010a 8F4A     		ldr	r2, .L1102+16
 5248 010c 21FA0AF1 		lsr	r1, r1, r10
 5249 0110 C907     		lsls	r1, r1, #31
 5250 0112 08D4     		bmi	.L1027
 5251 0114 D5F86024 		ldr	r2, [r5, #1120]
 5252 0118 22FA0AF2 		lsr	r2, r2, r10
 5253 011c 12F0010F 		tst	r2, #1
 5254 0120 0CBF     		ite	eq
 5255 0122 1A46     		moveq	r2, r3
 5256 0124 3246     		movne	r2, r6
 5257              	.L1027:
 5258 0126 3946     		mov	r1, r7
 5259 0128 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 5260 012c D5F81C14 		ldr	r1, [r5, #1052]
 5261 0130 4E46     		mov	r6, r9
 5262              	.L1025:
 5263 0132 0AF1010A 		add	r10, r10, #1
 5264 0136 5145     		cmp	r1, r10
 5265 0138 44D9     		bls	.L1023
 5266              	.L1028:
 5267 013a 24FA0AF2 		lsr	r2, r4, r10
 5268 013e D307     		lsls	r3, r2, #31
 5269 0140 F7D5     		bpl	.L1025
 5270 0142 019B     		ldr	r3, [sp, #4]
 5271 0144 1868     		ldr	r0, [r3]
 5272 0146 002E     		cmp	r6, #0
 5273 0148 40F02881 		bne	.L1100
 5274              	.L1026:
 5275 014c 5246     		mov	r2, r10
 5276 014e 5946     		mov	r1, fp
 5277 0150 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 5278 0154 D8F80020 		ldr	r2, [r8]
 5279 0158 0021     		movs	r1, #0
 5280 015a 1170     		strb	r1, [r2]
 5281 015c 5046     		mov	r0, r10
 5282 015e 4146     		mov	r1, r8
 5283 0160 FFF7FEFF 		bl	_ZN12SmartDrivers17AppendStallConfigEjRK9StringRef
 5284 0164 019E     		ldr	r6, [sp, #4]
 5285 0166 D8F80010 		ldr	r1, [r8]
 5286 016a 3068     		ldr	r0, [r6]
 5287 016c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 5288 0170 D5F86824 		ldr	r2, [r5, #1128]
 5289 0174 3068     		ldr	r0, [r6]
 5290 0176 22FA0AF2 		lsr	r2, r2, r10
 5291 017a D607     		lsls	r6, r2, #31
 5292 017c C1D5     		bpl	.L1101
 5293 017e 734A     		ldr	r2, .L1102+20
 5294 0180 D1E7     		b	.L1027
 5295              	.L1015:
 5296 0182 5221     		movs	r1, #82
 5297 0184 4846     		mov	r0, r9
 5298 0186 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5299 018a D8B1     		cbz	r0, .L1023
 5300              	.L1029:
 5301 018c 4846     		mov	r0, r9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 94


 5302 018e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5303 0192 0228     		cmp	r0, #2
 5304 0194 6FEA0403 		mvn	r3, r4
 5305 0198 00F00681 		beq	.L1020
 5306 019c 0328     		cmp	r0, #3
 5307 019e 00F0EF80 		beq	.L1021
 5308 01a2 0128     		cmp	r0, #1
 5309 01a4 00F01181 		beq	.L1022
 5310 01a8 05F58C60 		add	r0, r5, #1120
 5311 01ac 07C8     		ldm	r0, {r0, r1, r2}
 5312 01ae 1840     		ands	r0, r0, r3
 5313 01b0 1940     		ands	r1, r1, r3
 5314 01b2 1340     		ands	r3, r3, r2
 5315 01b4 C5F86004 		str	r0, [r5, #1120]
 5316 01b8 C5F86414 		str	r1, [r5, #1124]
 5317 01bc C5F86834 		str	r3, [r5, #1128]
 5318 01c0 0120     		movs	r0, #1
 5319 01c2 00E0     		b	.L1092
 5320              	.L1023:
 5321 01c4 0120     		movs	r0, #1
 5322              	.L1092:
 5323 01c6 11B0     		add	sp, sp, #68
 5324              		@ sp needed
 5325 01c8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5326              	.L1094:
 5327 01cc 10AA     		add	r2, sp, #64
 5328 01ce 0C23     		movs	r3, #12
 5329 01d0 04AE     		add	r6, sp, #16
 5330 01d2 42F8343D 		str	r3, [r2, #-52]!
 5331 01d6 3146     		mov	r1, r6
 5332 01d8 0023     		movs	r3, #0
 5333 01da 4846     		mov	r0, r9
 5334 01dc FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 5335 01e0 0399     		ldr	r1, [sp, #12]
 5336 01e2 0029     		cmp	r1, #0
 5337 01e4 00F00181 		beq	.L1031
 5338 01e8 049A     		ldr	r2, [sp, #16]
 5339 01ea D5F81C04 		ldr	r0, [r5, #1052]
 5340 01ee 8242     		cmp	r2, r0
 5341 01f0 0FD2     		bcs	.L989
 5342 01f2 0024     		movs	r4, #0
 5343 01f4 2346     		mov	r3, r4
 5344 01f6 4FF0010C 		mov	ip, #1
 5345              	.L990:
 5346 01fa 0133     		adds	r3, r3, #1
 5347 01fc 0CFA02F2 		lsl	r2, ip, r2
 5348 0200 8B42     		cmp	r3, r1
 5349 0202 44EA0204 		orr	r4, r4, r2
 5350 0206 3FF40AAF 		beq	.L987
 5351 020a 56F82320 		ldr	r2, [r6, r3, lsl #2]
 5352 020e 8242     		cmp	r2, r0
 5353 0210 F3D3     		bcc	.L990
 5354              	.L989:
 5355 0212 4046     		mov	r0, r8
 5356 0214 4E49     		ldr	r1, .L1102+24
 5357 0216 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5358 021a 0220     		movs	r0, #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 95


 5359 021c 11B0     		add	sp, sp, #68
 5360              		@ sp needed
 5361 021e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5362              	.L1095:
 5363 0222 10AE     		add	r6, sp, #64
 5364 0224 0923     		movs	r3, #9
 5365 0226 46F8343D 		str	r3, [r6, #-52]!
 5366 022a 04A9     		add	r1, sp, #16
 5367 022c 0023     		movs	r3, #0
 5368 022e 3246     		mov	r2, r6
 5369 0230 4846     		mov	r0, r9
 5370 0232 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 5371 0236 0399     		ldr	r1, [sp, #12]
 5372 0238 0029     		cmp	r1, #0
 5373 023a 3FF426AF 		beq	.L998
 5374 023e 3246     		mov	r2, r6
 5375 0240 06EB8101 		add	r1, r6, r1, lsl #2
 5376 0244 0126     		movs	r6, #1
 5377              	.L1001:
 5378 0246 52F8043F 		ldr	r3, [r2, #4]!
 5379 024a 082B     		cmp	r3, #8
 5380 024c 05EB0300 		add	r0, r5, r3
 5381 0250 08D8     		bhi	.L1000
 5382 0252 90F89833 		ldrb	r3, [r0, #920]	@ zero_extendqisi2
 5383 0256 D5F81C04 		ldr	r0, [r5, #1052]
 5384 025a 8342     		cmp	r3, r0
 5385 025c 3CBF     		itt	cc
 5386 025e 06FA03F3 		lslcc	r3, r6, r3
 5387 0262 1C43     		orrcc	r4, r4, r3
 5388              	.L1000:
 5389 0264 9142     		cmp	r1, r2
 5390 0266 EED1     		bne	.L1001
 5391 0268 5321     		movs	r1, #83
 5392 026a 4846     		mov	r0, r9
 5393 026c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5394 0270 0646     		mov	r6, r0
 5395 0272 0028     		cmp	r0, #0
 5396 0274 3FF411AF 		beq	.L1002
 5397              	.L1096:
 5398 0278 4846     		mov	r0, r9
 5399 027a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5400 027e D5F81C14 		ldr	r1, [r5, #1052]
 5401 0282 8246     		mov	r10, r0
 5402 0284 0029     		cmp	r1, #0
 5403 0286 3FF408AF 		beq	.L1002
 5404 028a 4FF0000B 		mov	fp, #0
 5405 028e 04E0     		b	.L1003
 5406              	.L1004:
 5407 0290 0BF1010B 		add	fp, fp, #1
 5408 0294 5945     		cmp	r1, fp
 5409 0296 7FF600AF 		bls	.L1002
 5410              	.L1003:
 5411 029a 24FA0BF3 		lsr	r3, r4, fp
 5412 029e DB07     		lsls	r3, r3, #31
 5413 02a0 F6D5     		bpl	.L1004
 5414 02a2 5146     		mov	r1, r10
 5415 02a4 5846     		mov	r0, fp
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 96


 5416 02a6 FFF7FEFF 		bl	_ZN12SmartDrivers17SetStallThresholdEji
 5417 02aa D5F81C14 		ldr	r1, [r5, #1052]
 5418 02ae EFE7     		b	.L1004
 5419              	.L1099:
 5420 02b0 4846     		mov	r0, r9
 5421 02b2 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 5422 02b6 D5F81C14 		ldr	r1, [r5, #1052]
 5423 02ba 0029     		cmp	r1, #0
 5424 02bc 3FF461AF 		beq	.L1015
 5425 02c0 87B2     		uxth	r7, r0
 5426 02c2 0026     		movs	r6, #0
 5427 02c4 03E0     		b	.L1017
 5428              	.L1016:
 5429 02c6 0136     		adds	r6, r6, #1
 5430 02c8 B142     		cmp	r1, r6
 5431 02ca 7FF65AAF 		bls	.L1015
 5432              	.L1017:
 5433 02ce 24FA06F3 		lsr	r3, r4, r6
 5434 02d2 DA07     		lsls	r2, r3, #31
 5435 02d4 F7D5     		bpl	.L1016
 5436 02d6 0621     		movs	r1, #6
 5437 02d8 3A46     		mov	r2, r7
 5438 02da 3046     		mov	r0, r6
 5439 02dc FFF7FEFF 		bl	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm
 5440 02e0 D5F81C14 		ldr	r1, [r5, #1052]
 5441 02e4 EFE7     		b	.L1016
 5442              	.L1098:
 5443 02e6 4846     		mov	r0, r9
 5444 02e8 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 5445 02ec D5F81C14 		ldr	r1, [r5, #1052]
 5446 02f0 8246     		mov	r10, r0
 5447 02f2 89B1     		cbz	r1, .L1013
 5448 02f4 0026     		movs	r6, #0
 5449 02f6 02E0     		b	.L1011
 5450              	.L1012:
 5451 02f8 0136     		adds	r6, r6, #1
 5452 02fa B142     		cmp	r1, r6
 5453 02fc 0CD9     		bls	.L1013
 5454              	.L1011:
 5455 02fe 24FA06F3 		lsr	r3, r4, r6
 5456 0302 D807     		lsls	r0, r3, #31
 5457 0304 F8D5     		bpl	.L1012
 5458 0306 5146     		mov	r1, r10
 5459 0308 3046     		mov	r0, r6
 5460 030a FFF7FEFF 		bl	_ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj
 5461 030e D5F81C14 		ldr	r1, [r5, #1052]
 5462 0312 0136     		adds	r6, r6, #1
 5463 0314 B142     		cmp	r1, r6
 5464 0316 F2D8     		bhi	.L1011
 5465              	.L1013:
 5466 0318 5E46     		mov	r6, fp
 5467 031a CEE6     		b	.L1010
 5468              	.L1097:
 5469 031c 4846     		mov	r0, r9
 5470 031e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5471 0322 D5F81C14 		ldr	r1, [r5, #1052]
 5472 0326 A0F1010A 		sub	r10, r0, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 97


 5473 032a BAFA8AFA 		clz	r10, r10
 5474 032e 4FEA5A1A 		lsr	r10, r10, #5
 5475 0332 09B3     		cbz	r1, .L1009
 5476 0334 0026     		movs	r6, #0
 5477 0336 12E0     		b	.L1007
 5478              	.L1103:
 5479              		.align	2
 5480              	.L1102:
 5481 0338 00000000 		.word	reprap
 5482 033c 44000000 		.word	.LC36
 5483 0340 08000000 		.word	.LC31
 5484 0344 18000000 		.word	.LC33
 5485 0348 10000000 		.word	.LC32
 5486 034c 00000000 		.word	.LC30
 5487 0350 1C000000 		.word	.LC34
 5488 0354 38000000 		.word	.LC35
 5489              	.L1008:
 5490 0358 0136     		adds	r6, r6, #1
 5491 035a B142     		cmp	r1, r6
 5492 035c 0CD9     		bls	.L1009
 5493              	.L1007:
 5494 035e 24FA06F3 		lsr	r3, r4, r6
 5495 0362 DF07     		lsls	r7, r3, #31
 5496 0364 F8D5     		bpl	.L1008
 5497 0366 5146     		mov	r1, r10
 5498 0368 3046     		mov	r0, r6
 5499 036a FFF7FEFF 		bl	_ZN12SmartDrivers14SetStallFilterEjb
 5500 036e D5F81C14 		ldr	r1, [r5, #1052]
 5501 0372 0136     		adds	r6, r6, #1
 5502 0374 B142     		cmp	r1, r6
 5503 0376 F2D8     		bhi	.L1007
 5504              	.L1009:
 5505 0378 5E46     		mov	r6, fp
 5506 037a 96E6     		b	.L1006
 5507              	.L1035:
 5508 037c 3046     		mov	r0, r6
 5509 037e 22E7     		b	.L1092
 5510              	.L1021:
 5511 0380 05F58C60 		add	r0, r5, #1120
 5512 0384 07C8     		ldm	r0, {r0, r1, r2}
 5513 0386 1840     		ands	r0, r0, r3
 5514 0388 2243     		orrs	r2, r2, r4
 5515 038a 0B40     		ands	r3, r3, r1
 5516 038c C5F86004 		str	r0, [r5, #1120]
 5517 0390 C5F86434 		str	r3, [r5, #1124]
 5518 0394 C5F86824 		str	r2, [r5, #1128]
 5519 0398 0120     		movs	r0, #1
 5520 039a 14E7     		b	.L1092
 5521              	.L1100:
 5522 039c 0A21     		movs	r1, #10
 5523 039e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 5524 03a2 019B     		ldr	r3, [sp, #4]
 5525 03a4 1868     		ldr	r0, [r3]
 5526 03a6 D1E6     		b	.L1026
 5527              	.L1020:
 5528 03a8 D5F86004 		ldr	r0, [r5, #1120]
 5529 03ac D5F86814 		ldr	r1, [r5, #1128]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 98


 5530 03b0 D5F86424 		ldr	r2, [r5, #1124]
 5531 03b4 1840     		ands	r0, r0, r3
 5532 03b6 2243     		orrs	r2, r2, r4
 5533 03b8 0B40     		ands	r3, r3, r1
 5534 03ba C5F86004 		str	r0, [r5, #1120]
 5535 03be C5F86834 		str	r3, [r5, #1128]
 5536 03c2 C5F86424 		str	r2, [r5, #1124]
 5537 03c6 0120     		movs	r0, #1
 5538 03c8 FDE6     		b	.L1092
 5539              	.L1022:
 5540 03ca D5F86864 		ldr	r6, [r5, #1128]
 5541 03ce D5F86414 		ldr	r1, [r5, #1124]
 5542 03d2 D5F86024 		ldr	r2, [r5, #1120]
 5543 03d6 1E40     		ands	r6, r6, r3
 5544 03d8 2243     		orrs	r2, r2, r4
 5545 03da 0B40     		ands	r3, r3, r1
 5546 03dc C5F86864 		str	r6, [r5, #1128]
 5547 03e0 C5F86434 		str	r3, [r5, #1124]
 5548 03e4 C5F86024 		str	r2, [r5, #1120]
 5549 03e8 EDE6     		b	.L1092
 5550              	.L1031:
 5551 03ea 0C46     		mov	r4, r1
 5552 03ec 17E6     		b	.L987
 5553              		.size	_ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRefRP12OutputBuffer, .-_ZN8Plat
 5554 03ee 00BF     		.section	.text._ZNK8Platform13IsDateTimeSetEv,"ax",%progbits
 5555              		.align	1
 5556              		.p2align 2,,3
 5557              		.global	_ZNK8Platform13IsDateTimeSetEv
 5558              		.syntax unified
 5559              		.thumb
 5560              		.thumb_func
 5561              		.fpu fpv4-sp-d16
 5562              		.type	_ZNK8Platform13IsDateTimeSetEv, %function
 5563              	_ZNK8Platform13IsDateTimeSetEv:
 5564              		@ args = 0, pretend = 0, frame = 0
 5565              		@ frame_needed = 0, uses_anonymous_args = 0
 5566              		@ link register save eliminated.
 5567 0000 D0F8282C 		ldr	r2, [r0, #3112]
 5568 0004 D0F82C3C 		ldr	r3, [r0, #3116]
 5569 0008 1343     		orrs	r3, r2, r3
 5570 000a 14BF     		ite	ne
 5571 000c 0120     		movne	r0, #1
 5572 000e 0020     		moveq	r0, #0
 5573 0010 7047     		bx	lr
 5574              		.size	_ZNK8Platform13IsDateTimeSetEv, .-_ZNK8Platform13IsDateTimeSetEv
 5575 0012 00BF     		.section	.text._ZNK8Platform11GetDateTimeEv,"ax",%progbits
 5576              		.align	1
 5577              		.p2align 2,,3
 5578              		.global	_ZNK8Platform11GetDateTimeEv
 5579              		.syntax unified
 5580              		.thumb
 5581              		.thumb_func
 5582              		.fpu fpv4-sp-d16
 5583              		.type	_ZNK8Platform11GetDateTimeEv, %function
 5584              	_ZNK8Platform11GetDateTimeEv:
 5585              		@ args = 0, pretend = 0, frame = 0
 5586              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 99


 5587              		@ link register save eliminated.
 5588 0000 00F62840 		addw	r0, r0, #3112
 5589 0004 D0E90001 		ldrd	r0, [r0]
 5590 0008 7047     		bx	lr
 5591              		.size	_ZNK8Platform11GetDateTimeEv, .-_ZNK8Platform11GetDateTimeEv
 5592 000a 00BF     		.section	.text._ZN8Platform7InitI2cEv,"ax",%progbits
 5593              		.align	1
 5594              		.p2align 2,,3
 5595              		.global	_ZN8Platform7InitI2cEv
 5596              		.syntax unified
 5597              		.thumb
 5598              		.thumb_func
 5599              		.fpu fpv4-sp-d16
 5600              		.type	_ZN8Platform7InitI2cEv, %function
 5601              	_ZN8Platform7InitI2cEv:
 5602              		@ args = 0, pretend = 0, frame = 8
 5603              		@ frame_needed = 0, uses_anonymous_args = 0
 5604 0000 90F84E3D 		ldrb	r3, [r0, #3406]	@ zero_extendqisi2
 5605 0004 03B1     		cbz	r3, .L1113
 5606 0006 7047     		bx	lr
 5607              	.L1113:
 5608 0008 10B5     		push	{r4, lr}
 5609 000a 82B0     		sub	sp, sp, #8
 5610 000c 0446     		mov	r4, r0
 5611 000e FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 5612 0012 4FF0FF32 		mov	r2, #-1
 5613 0016 0146     		mov	r1, r0
 5614 0018 6846     		mov	r0, sp
 5615 001a FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 5616 001e 94F84E3D 		ldrb	r3, [r4, #3406]	@ zero_extendqisi2
 5617 0022 23B1     		cbz	r3, .L1114
 5618 0024 6846     		mov	r0, sp
 5619 0026 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5620 002a 02B0     		add	sp, sp, #8
 5621              		@ sp needed
 5622 002c 10BD     		pop	{r4, pc}
 5623              	.L1114:
 5624 002e 0649     		ldr	r1, .L1115
 5625 0030 0648     		ldr	r0, .L1115+4
 5626 0032 FFF7FEFF 		bl	_ZN7TwoWire11BeginMasterEm
 5627 0036 0123     		movs	r3, #1
 5628 0038 84F84E3D 		strb	r3, [r4, #3406]
 5629 003c 6846     		mov	r0, sp
 5630 003e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5631 0042 02B0     		add	sp, sp, #8
 5632              		@ sp needed
 5633 0044 10BD     		pop	{r4, pc}
 5634              	.L1116:
 5635 0046 00BF     		.align	2
 5636              	.L1115:
 5637 0048 A0860100 		.word	100000
 5638 004c 00000000 		.word	Wire
 5639              		.size	_ZN8Platform7InitI2cEv, .-_ZN8Platform7InitI2cEv
 5640              		.section	.text._ZN8Platform6RandomEv,"ax",%progbits
 5641              		.align	1
 5642              		.p2align 2,,3
 5643              		.global	_ZN8Platform6RandomEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 100


 5644              		.syntax unified
 5645              		.thumb
 5646              		.thumb_func
 5647              		.fpu fpv4-sp-d16
 5648              		.type	_ZN8Platform6RandomEv, %function
 5649              	_ZN8Platform6RandomEv:
 5650              		@ args = 0, pretend = 0, frame = 0
 5651              		@ frame_needed = 0, uses_anonymous_args = 0
 5652              		@ link register save eliminated.
 5653 0000 10B4     		push	{r4}
 5654 0002 074A     		ldr	r2, .L1119
 5655 0004 D0E93934 		ldrd	r3, r4, [r0, #228]
 5656 0008 D2F89010 		ldr	r1, [r2, #144]
 5657 000c D0E93B20 		ldrd	r2, r0, [r0, #236]
 5658 0010 6340     		eors	r3, r3, r4
 5659 0012 4B40     		eors	r3, r3, r1
 5660 0014 5340     		eors	r3, r3, r2
 5661 0016 5840     		eors	r0, r0, r3
 5662 0018 5DF8044B 		ldr	r4, [sp], #4
 5663 001c 7047     		bx	lr
 5664              	.L1120:
 5665 001e 00BF     		.align	2
 5666              	.L1119:
 5667 0020 00000940 		.word	1074331648
 5668              		.size	_ZN8Platform6RandomEv, .-_ZN8Platform6RandomEv
 5669              		.section	.text.hot._ZN8Platform4TickEv,"ax",%progbits
 5670              		.align	1
 5671              		.p2align 2,,3
 5672              		.global	_ZN8Platform4TickEv
 5673              		.syntax unified
 5674              		.thumb
 5675              		.thumb_func
 5676              		.fpu fpv4-sp-d16
 5677              		.type	_ZN8Platform4TickEv, %function
 5678              	_ZN8Platform4TickEv:
 5679              		@ args = 0, pretend = 0, frame = 0
 5680              		@ frame_needed = 0, uses_anonymous_args = 0
 5681 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5682 0002 90F8EA3B 		ldrb	r3, [r0, #3050]	@ zero_extendqisi2
 5683 0006 0446     		mov	r4, r0
 5684 0008 6BB9     		cbnz	r3, .L1122
 5685              	.L1127:
 5686 000a 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 5687              	.L1123:
 5688 000e 022B     		cmp	r3, #2
 5689 0010 00F00081 		beq	.L1214
 5690              	.L1179:
 5691 0014 0123     		movs	r3, #1
 5692 0016 84F8EA3B 		strb	r3, [r4, #3050]
 5693 001a 4FF0FF30 		mov	r0, #-1
 5694 001e BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 5695 0022 FFF7FEBF 		b	_Z23AnalogInStartConversionm
 5696              	.L1122:
 5697 0026 90F9FC0B 		ldrsb	r0, [r0, #3068]
 5698 002a FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 5699 002e A4F8FE0B 		strh	r0, [r4, #3070]	@ movhi
 5700 0032 B4F8FE3B 		ldrh	r3, [r4, #3070]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 101


 5701 0036 B4F8002C 		ldrh	r2, [r4, #3072]
 5702 003a 9A42     		cmp	r2, r3
 5703 003c 04D2     		bcs	.L1124
 5704 003e B4F8FE3B 		ldrh	r3, [r4, #3070]
 5705 0042 9BB2     		uxth	r3, r3
 5706 0044 A4F8003C 		strh	r3, [r4, #3072]	@ movhi
 5707              	.L1124:
 5708 0048 B4F8FE3B 		ldrh	r3, [r4, #3070]
 5709 004c B4F8022C 		ldrh	r2, [r4, #3074]
 5710 0050 9A42     		cmp	r2, r3
 5711 0052 04D9     		bls	.L1125
 5712 0054 B4F8FE3B 		ldrh	r3, [r4, #3070]
 5713 0058 9BB2     		uxth	r3, r3
 5714 005a A4F8023C 		strh	r3, [r4, #3074]	@ movhi
 5715              	.L1125:
 5716 005e 94F85D34 		ldrb	r3, [r4, #1117]	@ zero_extendqisi2
 5717 0062 3BB1     		cbz	r3, .L1126
 5718 0064 B4F8FE3B 		ldrh	r3, [r4, #3070]
 5719 0068 40F6C842 		movw	r2, #3272
 5720 006c 9A42     		cmp	r2, r3
 5721 006e 01D2     		bcs	.L1126
 5722 0070 FFF7FEFF 		bl	_ZN12SmartDrivers14TurnDriversOffEv
 5723              	.L1126:
 5724 0074 94F8EA3B 		ldrb	r3, [r4, #3050]	@ zero_extendqisi2
 5725 0078 013B     		subs	r3, r3, #1
 5726 007a 032B     		cmp	r3, #3
 5727 007c C5D8     		bhi	.L1127
 5728 007e DFE803F0 		tbb	[pc, r3]
 5729              	.L1129:
 5730 0082 42       		.byte	(.L1128-.L1129)/2
 5731 0083 23       		.byte	(.L1130-.L1129)/2
 5732 0084 42       		.byte	(.L1128-.L1129)/2
 5733 0085 02       		.byte	(.L1131-.L1129)/2
 5734              		.p2align 1
 5735              	.L1131:
 5736 0086 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 5737 008a 092B     		cmp	r3, #9
 5738 008c 00F2E480 		bhi	.L1185
 5739 0090 0122     		movs	r2, #1
 5740 0092 9A40     		lsls	r2, r2, r3
 5741 0094 12F4487F 		tst	r2, #800
 5742 0098 40F02881 		bne	.L1168
 5743 009c D106     		lsls	r1, r2, #27
 5744 009e 40F1D880 		bpl	.L1215
 5745 00a2 40F22673 		movw	r3, #1830
 5746 00a6 1A42     		tst	r2, r3
 5747 00a8 40F04B81 		bne	.L1171
 5748 00ac 1307     		lsls	r3, r2, #28
 5749 00ae 40F16081 		bpl	.L1216
 5750 00b2 04F19C03 		add	r3, r4, #156
 5751              	.L1174:
 5752 00b6 93F82D30 		ldrb	r3, [r3, #45]	@ zero_extendqisi2
 5753 00ba 0B2B     		cmp	r3, #11
 5754 00bc 96BF     		itet	ls
 5755 00be 1B19     		addls	r3, r3, r4
 5756 00c0 FF20     		movhi	r0, #255
 5757 00c2 93F86E01 		ldrbls	r0, [r3, #366]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 102


 5758 00c6 13E1     		b	.L1213
 5759              	.L1130:
 5760 00c8 94F8CC70 		ldrb	r7, [r4, #204]	@ zero_extendqisi2
 5761 00cc 092F     		cmp	r7, #9
 5762 00ce 7ED8     		bhi	.L1182
 5763 00d0 0123     		movs	r3, #1
 5764 00d2 BB40     		lsls	r3, r3, r7
 5765 00d4 13F4487F 		tst	r3, #800
 5766 00d8 40F0FF80 		bne	.L1154
 5767 00dc DD06     		lsls	r5, r3, #27
 5768 00de 72D5     		bpl	.L1217
 5769 00e0 40F22672 		movw	r2, #1830
 5770 00e4 1342     		tst	r3, r2
 5771 00e6 40F02F81 		bne	.L1157
 5772 00ea 1807     		lsls	r0, r3, #28
 5773 00ec 40F13E81 		bpl	.L1218
 5774 00f0 04F19C03 		add	r3, r4, #156
 5775              	.L1160:
 5776 00f4 93F82D30 		ldrb	r3, [r3, #45]	@ zero_extendqisi2
 5777 00f8 0B2B     		cmp	r3, #11
 5778 00fa 96BF     		itet	ls
 5779 00fc 1B19     		addls	r3, r3, r4
 5780 00fe FF20     		movhi	r0, #255
 5781 0100 93F86E01 		ldrbls	r0, [r3, #366]	@ zero_extendqisi2
 5782 0104 EBE0     		b	.L1211
 5783              	.L1128:
 5784 0106 D4F8EC5B 		ldr	r5, [r4, #3052]
 5785 010a 6319     		adds	r3, r4, r5
 5786 010c 2626     		movs	r6, #38
 5787 010e 93F9E00B 		ldrsb	r0, [r3, #3040]
 5788 0112 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 5789 0116 4C23     		movs	r3, #76
 5790 0118 03FB0543 		mla	r3, r3, r5, r4
 5791 011c D3F82815 		ldr	r1, [r3, #1320]
 5792 0120 D3F82425 		ldr	r2, [r3, #1316]
 5793 0124 06FB0525 		mla	r5, r6, r5, r2
 5794 0128 04EB4505 		add	r5, r4, r5, lsl #1
 5795 012c 0132     		adds	r2, r2, #1
 5796 012e B5F8E464 		ldrh	r6, [r5, #1252]
 5797 0132 891B     		subs	r1, r1, r6
 5798 0134 0144     		add	r1, r1, r0
 5799 0136 202A     		cmp	r2, #32
 5800 0138 C3F82815 		str	r1, [r3, #1320]
 5801 013c A5F8E404 		strh	r0, [r5, #1252]	@ movhi
 5802 0140 C3F82425 		str	r2, [r3, #1316]
 5803 0144 6CD0     		beq	.L1219
 5804              	.L1132:
 5805 0146 D4F8EC3B 		ldr	r3, [r4, #3052]
 5806 014a D4F83418 		ldr	r1, [r4, #2100]
 5807 014e 0122     		movs	r2, #1
 5808 0150 9A40     		lsls	r2, r2, r3
 5809 0152 0A42     		tst	r2, r1
 5810 0154 6BD1     		bne	.L1220
 5811              	.L1133:
 5812 0156 0133     		adds	r3, r3, #1
 5813 0158 94F8CC20 		ldrb	r2, [r4, #204]	@ zero_extendqisi2
 5814 015c 092B     		cmp	r3, #9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 103


 5815 015e 08BF     		it	eq
 5816 0160 0023     		moveq	r3, #0
 5817 0162 022A     		cmp	r2, #2
 5818 0164 C4F8EC3B 		str	r3, [r4, #3052]
 5819 0168 94F8EA3B 		ldrb	r3, [r4, #3050]	@ zero_extendqisi2
 5820 016c 49D0     		beq	.L1137
 5821 016e 012B     		cmp	r3, #1
 5822 0170 0CBF     		ite	eq
 5823 0172 04F2AC45 		addweq	r5, r4, #1196
 5824 0176 04F59965 		addne	r5, r4, #1224
 5825 017a 092A     		cmp	r2, #9
 5826 017c 00F28380 		bhi	.L1144
 5827 0180 0123     		movs	r3, #1
 5828 0182 03FA02F2 		lsl	r2, r3, r2
 5829 0186 12F4487F 		tst	r2, #800
 5830 018a 40F0EC80 		bne	.L1142
 5831 018e D706     		lsls	r7, r2, #27
 5832 0190 40F1B580 		bpl	.L1221
 5833 0194 40F22673 		movw	r3, #1830
 5834 0198 1A42     		tst	r2, r3
 5835 019a 40F00181 		bne	.L1145
 5836 019e 1607     		lsls	r6, r2, #28
 5837 01a0 40F1FB80 		bpl	.L1222
 5838 01a4 04F19C03 		add	r3, r4, #156
 5839              	.L1148:
 5840 01a8 93F82D30 		ldrb	r3, [r3, #45]	@ zero_extendqisi2
 5841 01ac 0B2B     		cmp	r3, #11
 5842 01ae 96BF     		itet	ls
 5843 01b0 1B19     		addls	r3, r3, r4
 5844 01b2 FF20     		movhi	r0, #255
 5845 01b4 93F86E01 		ldrbls	r0, [r3, #366]	@ zero_extendqisi2
 5846              	.L1204:
 5847 01b8 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5848 01bc 0028     		cmp	r0, #0
 5849 01be 62D1     		bne	.L1144
 5850 01c0 0021     		movs	r1, #0
 5851 01c2 0846     		mov	r0, r1
 5852 01c4 62E0     		b	.L1141
 5853              	.L1217:
 5854 01c6 13F00E0F 		tst	r3, #14
 5855 01ca 40F0A480 		bne	.L1223
 5856              	.L1182:
 5857 01ce 4FF47A61 		mov	r1, #4000
 5858 01d2 0846     		mov	r0, r1
 5859              	.L1153:
 5860 01d4 D4F8BC24 		ldr	r2, [r4, #1212]
 5861 01d8 D4F8C064 		ldr	r6, [r4, #1216]
 5862 01dc 04EB4205 		add	r5, r4, r2, lsl #1
 5863 01e0 0132     		adds	r2, r2, #1
 5864 01e2 B5F8AC34 		ldrh	r3, [r5, #1196]
 5865 01e6 F31A     		subs	r3, r6, r3
 5866 01e8 0B44     		add	r3, r3, r1
 5867 01ea 082A     		cmp	r2, #8
 5868 01ec C4F8C034 		str	r3, [r4, #1216]
 5869 01f0 A5F8AC04 		strh	r0, [r5, #1196]	@ movhi
 5870 01f4 64D0     		beq	.L1164
 5871 01f6 C4F8BC24 		str	r2, [r4, #1212]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 104


 5872              	.L1165:
 5873 01fa 022F     		cmp	r7, #2
 5874 01fc 67D0     		beq	.L1224
 5875              	.L1205:
 5876 01fe 94F8EA3B 		ldrb	r3, [r4, #3050]	@ zero_extendqisi2
 5877              	.L1137:
 5878 0202 0133     		adds	r3, r3, #1
 5879 0204 84F8EA3B 		strb	r3, [r4, #3050]
 5880 0208 4FF0FF30 		mov	r0, #-1
 5881 020c BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 5882 0210 FFF7FEBF 		b	_Z23AnalogInStartConversionm
 5883              	.L1214:
 5884 0214 0121     		movs	r1, #1
 5885 0216 94F87D04 		ldrb	r0, [r4, #1149]	@ zero_extendqisi2
 5886 021a FFF7FEFF 		bl	digitalWrite
 5887 021e F9E6     		b	.L1179
 5888              	.L1219:
 5889 0220 0021     		movs	r1, #0
 5890 0222 0122     		movs	r2, #1
 5891 0224 C3F82415 		str	r1, [r3, #1316]
 5892 0228 83F82C25 		strb	r2, [r3, #1324]
 5893 022c 8BE7     		b	.L1132
 5894              	.L1220:
 5895 022e FFF7FEFF 		bl	millis
 5896 0232 5D4B     		ldr	r3, .L1226
 5897 0234 D4F8EC1B 		ldr	r1, [r4, #3052]
 5898 0238 0546     		mov	r5, r0
 5899 023a 1869     		ldr	r0, [r3, #16]
 5900 023c FFF7FEFF 		bl	_ZNK4Heat17GetLastSampleTimeEj
 5901 0240 41F28833 		movw	r3, #5000
 5902 0244 281A     		subs	r0, r5, r0
 5903 0246 9842     		cmp	r0, r3
 5904 0248 00F29680 		bhi	.L1134
 5905 024c D4F8EC3B 		ldr	r3, [r4, #3052]
 5906 0250 81E7     		b	.L1133
 5907              	.L1215:
 5908 0252 12F00E0F 		tst	r2, #14
 5909 0256 69D1     		bne	.L1225
 5910              	.L1185:
 5911 0258 4FF47A65 		mov	r5, #4000
 5912 025c 2846     		mov	r0, r5
 5913              	.L1167:
 5914 025e D4F8D814 		ldr	r1, [r4, #1240]
 5915 0262 D4F8DC24 		ldr	r2, [r4, #1244]
 5916 0266 04EB4106 		add	r6, r4, r1, lsl #1
 5917 026a 0131     		adds	r1, r1, #1
 5918 026c B6F8C874 		ldrh	r7, [r6, #1224]
 5919 0270 D21B     		subs	r2, r2, r7
 5920 0272 2A44     		add	r2, r2, r5
 5921 0274 0829     		cmp	r1, #8
 5922 0276 C4F8DC24 		str	r2, [r4, #1244]
 5923 027a A6F8C804 		strh	r0, [r6, #1224]	@ movhi
 5924 027e 18D0     		beq	.L1178
 5925 0280 C4F8D814 		str	r1, [r4, #1240]
 5926 0284 C3E6     		b	.L1123
 5927              	.L1144:
 5928 0286 4FF47A61 		mov	r1, #4000
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 105


 5929 028a 0846     		mov	r0, r1
 5930              	.L1141:
 5931 028c D5E90423 		ldrd	r2, r3, [r5, #16]
 5932 0290 35F81260 		ldrh	r6, [r5, r2, lsl #1]
 5933 0294 9B1B     		subs	r3, r3, r6
 5934 0296 0B44     		add	r3, r3, r1
 5935 0298 511C     		adds	r1, r2, #1
 5936 029a 0829     		cmp	r1, #8
 5937 029c 6B61     		str	r3, [r5, #20]
 5938 029e 25F81200 		strh	r0, [r5, r2, lsl #1]	@ movhi
 5939 02a2 04BF     		itt	eq
 5940 02a4 0123     		moveq	r3, #1
 5941 02a6 0022     		moveq	r2, #0
 5942 02a8 2961     		str	r1, [r5, #16]
 5943 02aa 04BF     		itt	eq
 5944 02ac 2B76     		strbeq	r3, [r5, #24]
 5945 02ae 2A61     		streq	r2, [r5, #16]
 5946 02b0 A5E7     		b	.L1205
 5947              	.L1178:
 5948 02b2 0021     		movs	r1, #0
 5949 02b4 0122     		movs	r2, #1
 5950 02b6 C4F8D814 		str	r1, [r4, #1240]
 5951 02ba 84F8E024 		strb	r2, [r4, #1248]
 5952 02be A6E6     		b	.L1123
 5953              	.L1164:
 5954 02c0 0022     		movs	r2, #0
 5955 02c2 0123     		movs	r3, #1
 5956 02c4 C4F8BC24 		str	r2, [r4, #1212]
 5957 02c8 84F8C434 		strb	r3, [r4, #1220]
 5958 02cc 95E7     		b	.L1165
 5959              	.L1224:
 5960 02ce 0021     		movs	r1, #0
 5961 02d0 94F87D04 		ldrb	r0, [r4, #1149]	@ zero_extendqisi2
 5962 02d4 FFF7FEFF 		bl	digitalWrite
 5963 02d8 91E7     		b	.L1205
 5964              	.L1154:
 5965 02da 94F87C04 		ldrb	r0, [r4, #1148]	@ zero_extendqisi2
 5966              	.L1211:
 5967 02de FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5968 02e2 D0BB     		cbnz	r0, .L1207
 5969 02e4 0146     		mov	r1, r0
 5970 02e6 94F8CC70 		ldrb	r7, [r4, #204]	@ zero_extendqisi2
 5971 02ea 73E7     		b	.L1153
 5972              	.L1168:
 5973 02ec 94F87C04 		ldrb	r0, [r4, #1148]	@ zero_extendqisi2
 5974              	.L1213:
 5975 02f0 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 5976 02f4 58BB     		cbnz	r0, .L1209
 5977 02f6 0546     		mov	r5, r0
 5978 02f8 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 5979 02fc AFE7     		b	.L1167
 5980              	.L1221:
 5981 02fe 12F00E0F 		tst	r2, #14
 5982 0302 C0D0     		beq	.L1144
 5983 0304 94F9E90B 		ldrsb	r0, [r4, #3049]
 5984 0308 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 5985 030c B0F57A6F 		cmp	r0, #4000
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 106


 5986 0310 B9D2     		bcs	.L1144
 5987 0312 0146     		mov	r1, r0
 5988 0314 BAE7     		b	.L1141
 5989              	.L1223:
 5990 0316 94F9E90B 		ldrsb	r0, [r4, #3049]
 5991 031a FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 5992 031e B0F57A6F 		cmp	r0, #4000
 5993 0322 1AD2     		bcs	.L1207
 5994 0324 94F8CC70 		ldrb	r7, [r4, #204]	@ zero_extendqisi2
 5995 0328 0146     		mov	r1, r0
 5996 032a 53E7     		b	.L1153
 5997              	.L1225:
 5998 032c 94F9E90B 		ldrsb	r0, [r4, #3049]
 5999 0330 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 6000 0334 B0F57A6F 		cmp	r0, #4000
 6001 0338 09D2     		bcs	.L1209
 6002 033a 0546     		mov	r5, r0
 6003 033c 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 6004 0340 8DE7     		b	.L1167
 6005              	.L1171:
 6006 0342 04F16C03 		add	r3, r4, #108
 6007 0346 B6E6     		b	.L1174
 6008              	.L1157:
 6009 0348 04F16C03 		add	r3, r4, #108
 6010 034c D2E6     		b	.L1160
 6011              	.L1209:
 6012 034e 4FF47A65 		mov	r5, #4000
 6013 0352 2846     		mov	r0, r5
 6014 0354 94F8CC30 		ldrb	r3, [r4, #204]	@ zero_extendqisi2
 6015 0358 81E7     		b	.L1167
 6016              	.L1207:
 6017 035a 4FF47A61 		mov	r1, #4000
 6018 035e 0846     		mov	r0, r1
 6019 0360 94F8CC70 		ldrb	r7, [r4, #204]	@ zero_extendqisi2
 6020 0364 36E7     		b	.L1153
 6021              	.L1142:
 6022 0366 94F87C04 		ldrb	r0, [r4, #1148]	@ zero_extendqisi2
 6023 036a 25E7     		b	.L1204
 6024              	.L1218:
 6025 036c 04F13C03 		add	r3, r4, #60
 6026 0370 C0E6     		b	.L1160
 6027              	.L1216:
 6028 0372 04F13C03 		add	r3, r4, #60
 6029 0376 9EE6     		b	.L1174
 6030              	.L1134:
 6031 0378 0022     		movs	r2, #0
 6032 037a 9FED0C0A 		vldr.32	s0, .L1226+4
 6033 037e D4F8EC1B 		ldr	r1, [r4, #3052]
 6034 0382 2046     		mov	r0, r4
 6035 0384 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 6036 0388 D4F8FC20 		ldr	r2, [r4, #252]
 6037 038c D4F8EC3B 		ldr	r3, [r4, #3052]
 6038 0390 42F00102 		orr	r2, r2, #1
 6039 0394 C4F8FC20 		str	r2, [r4, #252]
 6040 0398 DDE6     		b	.L1133
 6041              	.L1222:
 6042 039a 04F13C03 		add	r3, r4, #60
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 107


 6043 039e 03E7     		b	.L1148
 6044              	.L1145:
 6045 03a0 04F16C03 		add	r3, r4, #108
 6046 03a4 00E7     		b	.L1148
 6047              	.L1227:
 6048 03a6 00BF     		.align	2
 6049              	.L1226:
 6050 03a8 00000000 		.word	reprap
 6051 03ac 00000000 		.word	0
 6052              		.size	_ZN8Platform4TickEv, .-_ZN8Platform4TickEv
 6053              		.section	.text._ZN8Platform9GetODriveEj,"ax",%progbits
 6054              		.align	1
 6055              		.p2align 2,,3
 6056              		.global	_ZN8Platform9GetODriveEj
 6057              		.syntax unified
 6058              		.thumb
 6059              		.thumb_func
 6060              		.fpu fpv4-sp-d16
 6061              		.type	_ZN8Platform9GetODriveEj, %function
 6062              	_ZN8Platform9GetODriveEj:
 6063              		@ args = 0, pretend = 0, frame = 0
 6064              		@ frame_needed = 0, uses_anonymous_args = 0
 6065 0000 70B5     		push	{r4, r5, r6, lr}
 6066 0002 0D46     		mov	r5, r1
 6067 0004 0446     		mov	r4, r0
 6068 0006 FFF7FEFF 		bl	_ZNK6ODrive16AxisToODriveAxisEj
 6069 000a 0130     		adds	r0, r0, #1
 6070 000c 01D0     		beq	.L1232
 6071 000e 2046     		mov	r0, r4
 6072 0010 70BD     		pop	{r4, r5, r6, pc}
 6073              	.L1232:
 6074 0012 04F11C06 		add	r6, r4, #28
 6075 0016 2946     		mov	r1, r5
 6076 0018 3046     		mov	r0, r6
 6077 001a FFF7FEFF 		bl	_ZNK6ODrive16AxisToODriveAxisEj
 6078 001e B0F1FF3F 		cmp	r0, #-1
 6079 0022 18BF     		it	ne
 6080 0024 3446     		movne	r4, r6
 6081 0026 2046     		mov	r0, r4
 6082 0028 70BD     		pop	{r4, r5, r6, pc}
 6083              		.size	_ZN8Platform9GetODriveEj, .-_ZN8Platform9GetODriveEj
 6084 002a 00BF     		.section	.text._ZN8Platform18GetWriteableODriveEj,"ax",%progbits
 6085              		.align	1
 6086              		.p2align 2,,3
 6087              		.global	_ZN8Platform18GetWriteableODriveEj
 6088              		.syntax unified
 6089              		.thumb
 6090              		.thumb_func
 6091              		.fpu fpv4-sp-d16
 6092              		.type	_ZN8Platform18GetWriteableODriveEj, %function
 6093              	_ZN8Platform18GetWriteableODriveEj:
 6094              		@ args = 0, pretend = 0, frame = 0
 6095              		@ frame_needed = 0, uses_anonymous_args = 0
 6096              		@ link register save eliminated.
 6097 0000 FFF7FEBF 		b	_ZN8Platform9GetODriveEj
 6098              		.size	_ZN8Platform18GetWriteableODriveEj, .-_ZN8Platform18GetWriteableODriveEj
 6099              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 108


 6100              		.align	1
 6101              		.p2align 2,,3
 6102              		.weak	_ZN6StringILj220EE6printfEPKcz
 6103              		.syntax unified
 6104              		.thumb
 6105              		.thumb_func
 6106              		.fpu fpv4-sp-d16
 6107              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 6108              	_ZN6StringILj220EE6printfEPKcz:
 6109              		@ args = 4, pretend = 12, frame = 16
 6110              		@ frame_needed = 0, uses_anonymous_args = 1
 6111 0000 0EB4     		push	{r1, r2, r3}
 6112 0002 00B5     		push	{lr}
 6113 0004 84B0     		sub	sp, sp, #16
 6114 0006 05AA     		add	r2, sp, #20
 6115 0008 0290     		str	r0, [sp, #8]
 6116 000a 52F8041B 		ldr	r1, [r2], #4
 6117 000e 0192     		str	r2, [sp, #4]
 6118 0010 DD23     		movs	r3, #221
 6119 0012 02A8     		add	r0, sp, #8
 6120 0014 0393     		str	r3, [sp, #12]
 6121 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 6122 001a 04B0     		add	sp, sp, #16
 6123              		@ sp needed
 6124 001c 5DF804EB 		ldr	lr, [sp], #4
 6125 0020 03B0     		add	sp, sp, #12
 6126 0022 7047     		bx	lr
 6127              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 6128              		.section	.text._ZN6StringILj220EE4catfEPKcz,"axG",%progbits,_ZN6StringILj220EE4catfEPKcz,comdat
 6129              		.align	1
 6130              		.p2align 2,,3
 6131              		.weak	_ZN6StringILj220EE4catfEPKcz
 6132              		.syntax unified
 6133              		.thumb
 6134              		.thumb_func
 6135              		.fpu fpv4-sp-d16
 6136              		.type	_ZN6StringILj220EE4catfEPKcz, %function
 6137              	_ZN6StringILj220EE4catfEPKcz:
 6138              		@ args = 4, pretend = 12, frame = 16
 6139              		@ frame_needed = 0, uses_anonymous_args = 1
 6140 0000 0EB4     		push	{r1, r2, r3}
 6141 0002 00B5     		push	{lr}
 6142 0004 84B0     		sub	sp, sp, #16
 6143 0006 05AA     		add	r2, sp, #20
 6144 0008 0290     		str	r0, [sp, #8]
 6145 000a 52F8041B 		ldr	r1, [r2], #4
 6146 000e 0192     		str	r2, [sp, #4]
 6147 0010 DD23     		movs	r3, #221
 6148 0012 02A8     		add	r0, sp, #8
 6149 0014 0393     		str	r3, [sp, #12]
 6150 0016 FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 6151 001a 04B0     		add	sp, sp, #16
 6152              		@ sp needed
 6153 001c 5DF804EB 		ldr	lr, [sp], #4
 6154 0020 03B0     		add	sp, sp, #12
 6155 0022 7047     		bx	lr
 6156              		.size	_ZN6StringILj220EE4catfEPKcz, .-_ZN6StringILj220EE4catfEPKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 109


 6157              		.global	__aeabi_f2d
 6158              		.section	.text._ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.31,"ax",%progbits
 6159              		.align	1
 6160              		.p2align 2,,3
 6161              		.syntax unified
 6162              		.thumb
 6163              		.thumb_func
 6164              		.fpu fpv4-sp-d16
 6165              		.type	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.31, %function
 6166              	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.31:
 6167              		@ args = 0, pretend = 0, frame = 232
 6168              		@ frame_needed = 0, uses_anonymous_args = 0
 6169 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6170 0004 BDB0     		sub	sp, sp, #244
 6171 0006 3CAE     		add	r6, sp, #240
 6172 0008 0024     		movs	r4, #0
 6173 000a 06F8E04D 		strb	r4, [r6, #-224]!
 6174 000e 8246     		mov	r10, r0
 6175 0010 0D46     		mov	r5, r1
 6176 0012 9146     		mov	r9, r2
 6177 0014 3046     		mov	r0, r6
 6178 0016 1A46     		mov	r2, r3
 6179 0018 1749     		ldr	r1, .L1247
 6180 001a DFF86480 		ldr	r8, .L1247+8
 6181 001e 174F     		ldr	r7, .L1247+4
 6182 0020 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 6183 0024 02E0     		b	.L1240
 6184              	.L1239:
 6185 0026 0134     		adds	r4, r4, #1
 6186 0028 092C     		cmp	r4, #9
 6187 002a 17D0     		beq	.L1246
 6188              	.L1240:
 6189 002c 25FA04F3 		lsr	r3, r5, r4
 6190 0030 DB07     		lsls	r3, r3, #31
 6191 0032 F8D5     		bpl	.L1239
 6192 0034 D8F81430 		ldr	r3, [r8, #20]
 6193 0038 09EB8402 		add	r2, r9, r4, lsl #2
 6194 003c 2344     		add	r3, r3, r4
 6195 003e 1068     		ldr	r0, [r2]	@ float
 6196 0040 93F810B5 		ldrb	fp, [r3, #1296]	@ zero_extendqisi2
 6197 0044 FFF7FEFF 		bl	__aeabi_f2d
 6198 0048 0134     		adds	r4, r4, #1
 6199 004a CDE90001 		strd	r0, [sp]
 6200 004e 5A46     		mov	r2, fp
 6201 0050 3946     		mov	r1, r7
 6202 0052 3046     		mov	r0, r6
 6203 0054 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 6204 0058 092C     		cmp	r4, #9
 6205 005a E7D1     		bne	.L1240
 6206              	.L1246:
 6207 005c DD23     		movs	r3, #221
 6208 005e 0A21     		movs	r1, #10
 6209 0060 02A8     		add	r0, sp, #8
 6210 0062 CDE90263 		strd	r6, r3, [sp, #8]
 6211 0066 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6212 006a 3146     		mov	r1, r6
 6213 006c 5046     		mov	r0, r10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 110


 6214 006e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 6215 0072 3DB0     		add	sp, sp, #244
 6216              		@ sp needed
 6217 0074 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6218              	.L1248:
 6219              		.align	2
 6220              	.L1247:
 6221 0078 00000000 		.word	.LC37
 6222 007c 0C000000 		.word	.LC38
 6223 0080 00000000 		.word	reprap
 6224              		.size	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.31, .-_ZN8Platform15WriteAxisLimitsEP9Fi
 6225              		.section	.text._ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi,"ax",%progbits
 6226              		.align	1
 6227              		.p2align 2,,3
 6228              		.global	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi
 6229              		.syntax unified
 6230              		.thumb
 6231              		.thumb_func
 6232              		.fpu fpv4-sp-d16
 6233              		.type	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi, %function
 6234              	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi:
 6235              		@ args = 0, pretend = 0, frame = 0
 6236              		@ frame_needed = 0, uses_anonymous_args = 0
 6237              		@ link register save eliminated.
 6238 0000 09B9     		cbnz	r1, .L1251
 6239 0002 0120     		movs	r0, #1
 6240 0004 7047     		bx	lr
 6241              	.L1251:
 6242 0006 FFF7FEBF 		b	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.31
 6243              		.size	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi, .-_ZN8Platform15WriteAxisLimitsEP9FileStorem
 6244 000a 00BF     		.section	.text._ZNK8Platform23WritePlatformParametersEP9FileStoreb,"ax",%progbits
 6245              		.align	1
 6246              		.p2align 2,,3
 6247              		.global	_ZNK8Platform23WritePlatformParametersEP9FileStoreb
 6248              		.syntax unified
 6249              		.thumb
 6250              		.thumb_func
 6251              		.fpu fpv4-sp-d16
 6252              		.type	_ZNK8Platform23WritePlatformParametersEP9FileStoreb, %function
 6253              	_ZNK8Platform23WritePlatformParametersEP9FileStoreb:
 6254              		@ args = 0, pretend = 0, frame = 0
 6255              		@ frame_needed = 0, uses_anonymous_args = 0
 6256 0000 70B5     		push	{r4, r5, r6, lr}
 6257 0002 D0F8E437 		ldr	r3, [r0, #2020]
 6258 0006 0446     		mov	r4, r0
 6259 0008 0D46     		mov	r5, r1
 6260 000a 1646     		mov	r6, r2
 6261 000c 2BB9     		cbnz	r3, .L1253
 6262 000e D0F8E837 		ldr	r3, [r0, #2024]
 6263 0012 13B9     		cbnz	r3, .L1253
 6264              	.L1258:
 6265 0014 BEB9     		cbnz	r6, .L1254
 6266 0016 0120     		movs	r0, #1
 6267 0018 70BD     		pop	{r4, r5, r6, pc}
 6268              	.L1253:
 6269 001a 1E49     		ldr	r1, .L1276
 6270 001c 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 111


 6271 001e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 6272 0022 70B1     		cbz	r0, .L1261
 6273 0024 D4F8E417 		ldr	r1, [r4, #2020]
 6274 0028 59BB     		cbnz	r1, .L1257
 6275              	.L1260:
 6276 002a D4F8E817 		ldr	r1, [r4, #2024]
 6277 002e 0029     		cmp	r1, #0
 6278 0030 F0D0     		beq	.L1258
 6279 0032 0023     		movs	r3, #0
 6280 0034 04F29C72 		addw	r2, r4, #1948
 6281 0038 2846     		mov	r0, r5
 6282 003a FFF7FEFF 		bl	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.31
 6283 003e 0028     		cmp	r0, #0
 6284 0040 E8D1     		bne	.L1258
 6285              	.L1261:
 6286 0042 0020     		movs	r0, #0
 6287 0044 70BD     		pop	{r4, r5, r6, pc}
 6288              	.L1254:
 6289 0046 1449     		ldr	r1, .L1276+4
 6290 0048 2846     		mov	r0, r5
 6291 004a FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 6292 004e 0028     		cmp	r0, #0
 6293 0050 F7D0     		beq	.L1261
 6294 0052 0122     		movs	r2, #1
 6295 0054 2946     		mov	r1, r5
 6296 0056 04F16C00 		add	r0, r4, #108
 6297 005a FFF7FEFF 		bl	_ZNK6ZProbe15WriteParametersEP9FileStorej
 6298 005e 0028     		cmp	r0, #0
 6299 0060 EFD0     		beq	.L1261
 6300 0062 0322     		movs	r2, #3
 6301 0064 2946     		mov	r1, r5
 6302 0066 04F19C00 		add	r0, r4, #156
 6303 006a FFF7FEFF 		bl	_ZNK6ZProbe15WriteParametersEP9FileStorej
 6304 006e 0028     		cmp	r0, #0
 6305 0070 E7D0     		beq	.L1261
 6306 0072 2946     		mov	r1, r5
 6307 0074 04F13C00 		add	r0, r4, #60
 6308 0078 0422     		movs	r2, #4
 6309 007a BDE87040 		pop	{r4, r5, r6, lr}
 6310 007e FFF7FEBF 		b	_ZNK6ZProbe15WriteParametersEP9FileStorej
 6311              	.L1257:
 6312 0082 0123     		movs	r3, #1
 6313 0084 04F5F862 		add	r2, r4, #1984
 6314 0088 2846     		mov	r0, r5
 6315 008a FFF7FEFF 		bl	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.31
 6316 008e 0028     		cmp	r0, #0
 6317 0090 CBD1     		bne	.L1260
 6318 0092 D6E7     		b	.L1261
 6319              	.L1277:
 6320              		.align	2
 6321              	.L1276:
 6322 0094 00000000 		.word	.LC39
 6323 0098 18000000 		.word	.LC40
 6324              		.size	_ZNK8Platform23WritePlatformParametersEP9FileStoreb, .-_ZNK8Platform23WritePlatformParameter
 6325              		.section	.text.startup._GLOBAL__sub_I_UrgentInit,"ax",%progbits
 6326              		.align	1
 6327              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 112


 6328              		.syntax unified
 6329              		.thumb
 6330              		.thumb_func
 6331              		.fpu fpv4-sp-d16
 6332              		.type	_GLOBAL__sub_I_UrgentInit, %function
 6333              	_GLOBAL__sub_I_UrgentInit:
 6334              		@ args = 0, pretend = 0, frame = 0
 6335              		@ frame_needed = 0, uses_anonymous_args = 0
 6336              		@ link register save eliminated.
 6337 0000 0149     		ldr	r1, .L1279
 6338 0002 0248     		ldr	r0, .L1279+4
 6339 0004 FFF7FEBF 		b	_ZN9IPAddress5SetV4EPKh
 6340              	.L1280:
 6341              		.align	2
 6342              	.L1279:
 6343 0008 00000000 		.word	.LANCHOR9
 6344 000c 00000000 		.word	.LANCHOR10
 6345              		.size	_GLOBAL__sub_I_UrgentInit, .-_GLOBAL__sub_I_UrgentInit
 6346              		.section	.init_array,"aw",%init_array
 6347              		.align	2
 6348 0000 00000000 		.word	_GLOBAL__sub_I_UrgentInit(target1)
 6349              		.section	.text._ZN8Platform4InitEv,"ax",%progbits
 6350              		.align	1
 6351              		.p2align 2,,3
 6352              		.global	_ZN8Platform4InitEv
 6353              		.syntax unified
 6354              		.thumb
 6355              		.thumb_func
 6356              		.fpu fpv4-sp-d16
 6357              		.type	_ZN8Platform4InitEv, %function
 6358              	_ZN8Platform4InitEv:
 6359              		@ args = 0, pretend = 0, frame = 16
 6360              		@ frame_needed = 0, uses_anonymous_args = 0
 6361 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6362 0004 2DED028B 		vpush.64	{d8}
 6363 0008 0446     		mov	r4, r0
 6364 000a 0025     		movs	r5, #0
 6365 000c 85B0     		sub	sp, sp, #20
 6366 000e 0022     		movs	r2, #0
 6367 0010 0321     		movs	r1, #3
 6368 0012 2220     		movs	r0, #34
 6369 0014 FFF7FEFF 		bl	pinModeDuet
 6370 0018 2A46     		mov	r2, r5
 6371 001a 0321     		movs	r1, #3
 6372 001c 4F20     		movs	r0, #79
 6373 001e FFF7FEFF 		bl	pinModeDuet
 6374 0022 2946     		mov	r1, r5
 6375 0024 2046     		mov	r0, r4
 6376 0026 84F8C45C 		strb	r5, [r4, #3268]
 6377 002a FFF7FEFF 		bl	_ZN8Platform12SetBoardTypeE9BoardType
 6378 002e 0026     		movs	r6, #0
 6379 0030 04F62843 		addw	r3, r4, #3112
 6380 0034 0027     		movs	r7, #0
 6381 0036 4FF46142 		mov	r2, #57600
 6382 003a C3E90067 		strd	r6, [r3]
 6383 003e 4FF4E131 		mov	r1, #115200
 6384 0042 4FF48073 		mov	r3, #256
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 113


 6385 0046 C4F8DC2A 		str	r2, [r4, #2780]
 6386 004a A4F8E43A 		strh	r3, [r4, #2788]	@ movhi
 6387 004e C4F8D81A 		str	r1, [r4, #2776]
 6388 0052 04F67C30 		addw	r0, r4, #2940
 6389 0056 D949     		ldr	r1, .L1335
 6390 0058 D94E     		ldr	r6, .L1335+4
 6391 005a FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 6392 005e 04F6FC20 		addw	r0, r4, #2812
 6393 0062 D849     		ldr	r1, .L1335+8
 6394 0064 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 6395 0068 84F8645B 		strb	r5, [r4, #2916]
 6396 006c C4F8605B 		str	r5, [r4, #2912]
 6397 0070 3621     		movs	r1, #54
 6398 0072 D548     		ldr	r0, .L1335+12
 6399 0074 FFF7FEFF 		bl	_ZN9SerialCDC5StartEh
 6400 0078 D4F8DC1A 		ldr	r1, [r4, #2780]
 6401 007c D348     		ldr	r0, .L1335+16
 6402 007e FFF7FEFF 		bl	_ZN9UARTClass5beginEm
 6403 0082 0223     		movs	r3, #2
 6404 0084 84F8FB30 		strb	r3, [r4, #251]
 6405 0088 0121     		movs	r1, #1
 6406 008a 3520     		movs	r0, #53
 6407 008c FFF7FEFF 		bl	setPullup
 6408 0090 D4F8DC0B 		ldr	r0, [r4, #3036]
 6409 0094 FFF7FEFF 		bl	_ZN11MassStorage4InitEv
 6410 0098 CD4B     		ldr	r3, .L1335+20
 6411 009a C4F8D050 		str	r5, [r4, #208]
 6412 009e 04F1E400 		add	r0, r4, #228
 6413 00a2 1B68     		ldr	r3, [r3]
 6414 00a4 C4F8E450 		str	r5, [r4, #228]	@ unaligned
 6415 00a8 C4E93535 		strd	r3, r5, [r4, #212]
 6416 00ac 4560     		str	r5, [r0, #4]	@ unaligned
 6417 00ae 8560     		str	r5, [r0, #8]	@ unaligned
 6418 00b0 C560     		str	r5, [r0, #12]	@ unaligned
 6419 00b2 0561     		str	r5, [r0, #16]	@ unaligned
 6420 00b4 B560     		str	r5, [r6, #8]
 6421              		.syntax unified
 6422              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 6423 00b6 72B6     		cpsid i
 6424              	@ 0 "" 2
 6425              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6426 00b8 BFF35F8F 		dmb
 6427              	@ 0 "" 2
 6428              		.thumb
 6429              		.syntax unified
 6430 00bc C54F     		ldr	r7, .L1335+24
 6431 00be 0421     		movs	r1, #4
 6432 00c0 3D70     		strb	r5, [r7]
 6433 00c2 FFF7FEFF 		bl	flash_read_unique_id
 6434 00c6 0123     		movs	r3, #1
 6435 00c8 0546     		mov	r5, r0
 6436 00ca 3B70     		strb	r3, [r7]
 6437              		.syntax unified
 6438              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6439 00cc BFF35F8F 		dmb
 6440              	@ 0 "" 2
 6441              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 114


 6442 00d0 62B6     		cpsie i
 6443              	@ 0 "" 2
 6444              		.thumb
 6445              		.syntax unified
 6446 00d2 3362     		str	r3, [r6, #32]
 6447 00d4 3046     		mov	r0, r6
 6448 00d6 FFF7FEFF 		bl	cmcc_enable
 6449 00da 002D     		cmp	r5, #0
 6450 00dc 00F07782 		beq	.L1330
 6451 00e0 BD4B     		ldr	r3, .L1335+28
 6452 00e2 1868     		ldr	r0, [r3]
 6453 00e4 9B88     		ldrh	r3, [r3, #4]	@ unaligned
 6454 00e6 C4F8DC00 		str	r0, [r4, #220]	@ unaligned
 6455 00ea A4F8E030 		strh	r3, [r4, #224]	@ unaligned
 6456              	.L1283:
 6457 00ee BB4B     		ldr	r3, .L1335+32
 6458 00f0 BB4D     		ldr	r5, .L1335+36
 6459 00f2 DFF838C3 		ldr	ip, .L1335+112
 6460 00f6 BB4F     		ldr	r7, .L1335+40
 6461 00f8 DFF834E3 		ldr	lr, .L1335+116
 6462 00fc C4F88051 		str	r5, [r4, #384]	@ float
 6463 0100 07CB     		ldmia	r3!, {r0, r1, r2}
 6464 0102 C4F86E01 		str	r0, [r4, #366]	@ unaligned
 6465 0106 B848     		ldr	r0, .L1335+44
 6466 0108 B84B     		ldr	r3, .L1335+48
 6467 010a C4F87211 		str	r1, [r4, #370]	@ unaligned
 6468 010e C4F87621 		str	r2, [r4, #374]	@ unaligned
 6469 0112 B749     		ldr	r1, .L1335+52
 6470 0114 B74A     		ldr	r2, .L1335+56
 6471 0116 C4F87C51 		str	r5, [r4, #380]	@ float
 6472 011a C4F8B401 		str	r0, [r4, #436]	@ float
 6473 011e 0546     		mov	r5, r0	@ float
 6474 0120 B54E     		ldr	r6, .L1335+60
 6475 0122 B648     		ldr	r0, .L1335+64
 6476 0124 C4F81412 		str	r1, [r4, #532]	@ float
 6477 0128 C4F81032 		str	r3, [r4, #528]	@ float
 6478 012c C4F80C32 		str	r3, [r4, #524]	@ float
 6479 0130 C4F88421 		str	r2, [r4, #388]	@ float
 6480 0134 C4F8B0C1 		str	ip, [r4, #432]	@ float
 6481 0138 C4F8ACC1 		str	ip, [r4, #428]	@ float
 6482 013c C4F8E071 		str	r7, [r4, #480]	@ float
 6483 0140 C4F8DC71 		str	r7, [r4, #476]	@ float
 6484 0144 C4F8E4E1 		str	lr, [r4, #484]	@ float
 6485 0148 04F5C473 		add	r3, r4, #392
 6486 014c 04F5D671 		add	r1, r4, #428
 6487 0150 4FF08042 		mov	r2, #1073741824
 6488              	.L1285:
 6489 0154 43F8045B 		str	r5, [r3], #4	@ float
 6490 0158 8B42     		cmp	r3, r1
 6491 015a DE62     		str	r6, [r3, #44]	@ float
 6492 015c D865     		str	r0, [r3, #92]	@ float
 6493 015e C3F88C20 		str	r2, [r3, #140]	@ float
 6494 0162 F7D1     		bne	.L1285
 6495 0164 0023     		movs	r3, #0
 6496 0166 2120     		movs	r0, #33
 6497 0168 84F8CC30 		strb	r3, [r4, #204]
 6498 016c 84F87C04 		strb	r0, [r4, #1148]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 115


 6499 0170 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 6500 0174 84F8E90B 		strb	r0, [r4, #3049]
 6501 0178 2046     		mov	r0, r4
 6502 017a FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 6503 017e 2046     		mov	r0, r4
 6504 0180 FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
 6505 0184 04F5F862 		add	r2, r4, #1984
 6506 0188 9D48     		ldr	r0, .L1335+68
 6507 018a 0025     		movs	r5, #0
 6508 018c 1146     		mov	r1, r2
 6509 018e 04F29C73 		addw	r3, r4, #1948
 6510              	.L1286:
 6511 0192 42F8045B 		str	r5, [r2], #4	@ float
 6512 0196 43F8040B 		str	r0, [r3], #4	@ float
 6513 019a 8B42     		cmp	r3, r1
 6514 019c F9D1     		bne	.L1286
 6515 019e 0022     		movs	r2, #0
 6516 01a0 984E     		ldr	r6, .L1335+72
 6517 01a2 994D     		ldr	r5, .L1335+76
 6518 01a4 DFF88CE2 		ldr	lr, .L1335+120
 6519 01a8 DFF88CC2 		ldr	ip, .L1335+124
 6520 01ac 9748     		ldr	r0, .L1335+80
 6521 01ae C4F8E427 		str	r2, [r4, #2020]
 6522 01b2 04F58361 		add	r1, r4, #1048
 6523 01b6 C4F8E827 		str	r2, [r4, #2024]
 6524 01ba DFF88082 		ldr	r8, .L1335+128
 6525 01be C1F80080 		str	r8, [r1]	@ float
 6526 01c2 1746     		mov	r7, r2
 6527 01c4 4FF0FF32 		mov	r2, #-1
 6528 01c8 CEF8A420 		str	r2, [lr, #164]
 6529 01cc CCF8A420 		str	r2, [ip, #164]
 6530 01d0 C6F8A420 		str	r2, [r6, #164]
 6531 01d4 C5F8A420 		str	r2, [r5, #164]
 6532 01d8 4B26     		movs	r6, #75
 6533 01da C0F8A420 		str	r2, [r0, #164]
 6534 01de 4E22     		movs	r2, #78
 6535 01e0 8B4B     		ldr	r3, .L1335+84
 6536 01e2 9FED8C8A 		vldr.32	s16, .L1335+88
 6537 01e6 0394     		str	r4, [sp, #12]
 6538 01e8 BA46     		mov	r10, r7
 6539 01ea 04F20B19 		addw	r9, r4, #267
 6540 01ee 04F53378 		add	r8, r4, #716
 6541 01f2 A346     		mov	fp, r4
 6542 01f4 4625     		movs	r5, #70
 6543 01f6 CDE90026 		strd	r2, r6, [sp]
 6544 01fa 04E0     		b	.L1289
 6545              	.L1331:
 6546 01fc 7A5D     		ldrb	r2, [r7, r5]	@ zero_extendqisi2
 6547 01fe 0192     		str	r2, [sp, #4]
 6548 0200 3D5C     		ldrb	r5, [r7, r0]	@ zero_extendqisi2
 6549 0202 3A5D     		ldrb	r2, [r7, r4]	@ zero_extendqisi2
 6550 0204 0092     		str	r2, [sp]
 6551              	.L1289:
 6552 0206 4FF0010C 		mov	ip, #1
 6553 020a 039E     		ldr	r6, [sp, #12]
 6554 020c 89F819A0 		strb	r10, [r9, #25]
 6555 0210 4FF07E5E 		mov	lr, #1065353216
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 116


 6556 0214 09F801CF 		strb	ip, [r9, #1]!
 6557 0218 A8EC018A 		vstmia.32	r8!, {s16}
 6558 021c C8F82CE0 		str	lr, [r8, #44]	@ float
 6559 0220 0321     		movs	r1, #3
 6560 0222 06EB070E 		add	lr, r6, r7
 6561 0226 05FA01F4 		lsl	r4, r5, r1
 6562 022a 8EF800A1 		strb	r10, [lr, #256]
 6563 022e A4EB050E 		sub	lr, r4, r5
 6564 0232 03EB8E0E 		add	lr, r3, lr, lsl #2
 6565 0236 89F824A0 		strb	r10, [r9, #36]
 6566 023a 89F80CA0 		strb	r10, [r9, #12]
 6567 023e DEF804E0 		ldr	lr, [lr, #4]
 6568 0242 C8F804E1 		str	lr, [r8, #260]
 6569 0246 082F     		cmp	r7, #8
 6570 0248 2846     		mov	r0, r5
 6571 024a 4FF00002 		mov	r2, #0
 6572 024e C8F8D4E0 		str	lr, [r8, #212]
 6573 0252 07D8     		bhi	.L1287
 6574 0254 CBF82CC3 		str	ip, [fp, #812]
 6575 0258 8BF83073 		strb	r7, [fp, #816]
 6576 025c C8F81CC5 		str	ip, [r8, #1308]
 6577 0260 C8F840C5 		str	ip, [r8, #1344]
 6578              	.L1287:
 6579 0264 0293     		str	r3, [sp, #8]
 6580 0266 FFF7FEFF 		bl	pinModeDuet
 6581 026a 0198     		ldr	r0, [sp, #4]
 6582 026c 0022     		movs	r2, #0
 6583 026e 0321     		movs	r1, #3
 6584 0270 FFF7FEFF 		bl	pinModeDuet
 6585 0274 0098     		ldr	r0, [sp]
 6586 0276 0022     		movs	r2, #0
 6587 0278 0421     		movs	r1, #4
 6588 027a FFF7FEFF 		bl	pinModeDuet
 6589 027e 029B     		ldr	r3, [sp, #8]
 6590 0280 6548     		ldr	r0, .L1335+92
 6591 0282 641B     		subs	r4, r4, r5
 6592 0284 03EB8401 		add	r1, r3, r4, lsl #2
 6593 0288 53F82420 		ldr	r2, [r3, r4, lsl #2]
 6594 028c 4968     		ldr	r1, [r1, #4]
 6595 028e 634D     		ldr	r5, .L1335+96
 6596 0290 634C     		ldr	r4, .L1335+100
 6597 0292 C2F8A010 		str	r1, [r2, #160]
 6598 0296 0137     		adds	r7, r7, #1
 6599 0298 0C2F     		cmp	r7, #12
 6600 029a 0BF10C0B 		add	fp, fp, #12
 6601 029e ADD1     		bne	.L1331
 6602 02a0 039C     		ldr	r4, [sp, #12]
 6603 02a2 04F26D15 		addw	r5, r4, #365
 6604 02a6 04F27916 		addw	r6, r4, #377
 6605              	.L1290:
 6606 02aa 15F8010F 		ldrb	r0, [r5, #1]!	@ zero_extendqisi2
 6607 02ae 0022     		movs	r2, #0
 6608 02b0 0121     		movs	r1, #1
 6609 02b2 FFF7FEFF 		bl	pinModeDuet
 6610 02b6 B542     		cmp	r5, r6
 6611 02b8 F7D1     		bne	.L1290
 6612 02ba 04F20443 		addw	r3, r4, #1028
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 117


 6613 02be 04F21441 		addw	r1, r4, #1044
 6614 02c2 0022     		movs	r2, #0
 6615              	.L1291:
 6616 02c4 43F8042B 		str	r2, [r3], #4
 6617 02c8 9942     		cmp	r1, r3
 6618 02ca FBD1     		bne	.L1291
 6619 02cc 484E     		ldr	r6, .L1335+52
 6620 02ce C4F81424 		str	r2, [r4, #1044]
 6621 02d2 0021     		movs	r1, #0
 6622 02d4 04F29730 		addw	r0, r4, #919
 6623 02d8 04F50F73 		add	r3, r4, #572
 6624 02dc 0322     		movs	r2, #3
 6625              	.L1292:
 6626 02de 551C     		adds	r5, r2, #1
 6627 02e0 00F8012F 		strb	r2, [r0, #1]!
 6628 02e4 43F8041B 		str	r1, [r3], #4	@ float
 6629 02e8 EAB2     		uxtb	r2, r5
 6630 02ea 0C2A     		cmp	r2, #12
 6631 02ec 5964     		str	r1, [r3, #68]	@ float
 6632 02ee 1962     		str	r1, [r3, #32]	@ float
 6633 02f0 9E66     		str	r6, [r3, #104]	@ float
 6634 02f2 F4D1     		bne	.L1292
 6635 02f4 C820     		movs	r0, #200
 6636 02f6 FFF7FEFF 		bl	_Z5delaym
 6637 02fa FFF7FEFF 		bl	_ZN13DuetExpansion9DueXnInitEv
 6638 02fe 0228     		cmp	r0, #2
 6639 0300 84F8F900 		strb	r0, [r4, #249]
 6640 0304 00F05F81 		beq	.L1294
 6641 0308 0328     		cmp	r0, #3
 6642 030a 00F04981 		beq	.L1295
 6643 030e 0523     		movs	r3, #5
 6644 0310 C4F81C34 		str	r3, [r4, #1052]
 6645 0314 0028     		cmp	r0, #0
 6646 0316 40F04681 		bne	.L1296
 6647              	.L1297:
 6648 031a 0025     		movs	r5, #0
 6649 031c FFF7FEFF 		bl	_ZN13DuetExpansion20AdditionalOutputInitEv
 6650 0320 84F85D54 		strb	r5, [r4, #1117]
 6651 0324 D4F81C14 		ldr	r1, [r4, #1052]
 6652 0328 3D48     		ldr	r0, .L1335+100
 6653 032a FFF7FEFF 		bl	_ZN12SmartDrivers4InitEPKhj
 6654 032e 04F6B443 		addw	r3, r4, #3252
 6655 0332 0022     		movs	r2, #0
 6656 0334 C4F83854 		str	r5, [r4, #1080]
 6657 0338 C4F83454 		str	r5, [r4, #1076]
 6658 033c C4F83054 		str	r5, [r4, #1072]
 6659 0340 C4F82C54 		str	r5, [r4, #1068]
 6660 0344 C4F82854 		str	r5, [r4, #1064]
 6661 0348 C4F82454 		str	r5, [r4, #1060]
 6662 034c C4F82054 		str	r5, [r4, #1056]
 6663 0350 C4F86C54 		str	r5, [r4, #1132]
 6664 0354 C4F86854 		str	r5, [r4, #1128]
 6665 0358 C4F86454 		str	r5, [r4, #1124]
 6666 035c C4F86054 		str	r5, [r4, #1120]
 6667 0360 C4F87854 		str	r5, [r4, #1144]
 6668 0364 C4F87454 		str	r5, [r4, #1140]
 6669 0368 C4F87054 		str	r5, [r4, #1136]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 118


 6670 036c 84F81C5C 		strb	r5, [r4, #3100]
 6671 0370 84F81D5C 		strb	r5, [r4, #3101]
 6672 0374 84F85E54 		strb	r5, [r4, #1118]
 6673 0378 2A49     		ldr	r1, .L1335+104
 6674 037a 1A60     		str	r2, [r3]	@ float
 6675 037c 2B46     		mov	r3, r5
 6676 037e 002B     		cmp	r3, #0
 6677 0380 C4F83458 		str	r5, [r4, #2100]
 6678 0384 01F10300 		add	r0, r1, #3
 6679 0388 4FF00105 		mov	r5, #1
 6680 038c 06DB     		blt	.L1300
 6681              	.L1333:
 6682 038e D4F83428 		ldr	r2, [r4, #2100]
 6683 0392 05FA03F3 		lsl	r3, r5, r3
 6684 0396 1343     		orrs	r3, r3, r2
 6685 0398 C4F83438 		str	r3, [r4, #2100]
 6686              	.L1300:
 6687 039c 8142     		cmp	r1, r0
 6688 039e 05D0     		beq	.L1332
 6689              	.L1327:
 6690 03a0 11F9013B 		ldrsb	r3, [r1], #1
 6691 03a4 002B     		cmp	r3, #0
 6692 03a6 F2DA     		bge	.L1333
 6693 03a8 8142     		cmp	r1, r0
 6694 03aa F9D1     		bne	.L1327
 6695              	.L1332:
 6696 03ac 1E4D     		ldr	r5, .L1335+108
 6697 03ae 4FF4FA73 		mov	r3, #500
 6698 03b2 EE1D     		adds	r6, r5, #7
 6699 03b4 C4F83838 		str	r3, [r4, #2104]
 6700 03b8 1C20     		movs	r0, #28
 6701 03ba 43E0     		b	.L1299
 6702              	.L1336:
 6703              		.align	2
 6704              	.L1335:
 6705 03bc 00000000 		.word	.LC41
 6706 03c0 00400C40 		.word	1074544640
 6707 03c4 04000000 		.word	.LC42
 6708 03c8 00000000 		.word	SerialUSB
 6709 03cc 00000000 		.word	Serial
 6710 03d0 00000000 		.word	.LANCHOR10
 6711 03d4 00000000 		.word	g_interrupt_enabled
 6712 03d8 00000000 		.word	.LANCHOR11
 6713 03dc 00000000 		.word	.LANCHOR12
 6714 03e0 0000C842 		.word	1120403456
 6715 03e4 0000A042 		.word	1117782016
 6716 03e8 0000A041 		.word	1101004800
 6717 03ec 00007041 		.word	1097859072
 6718 03f0 CDCC4C3E 		.word	1045220557
 6719 03f4 0000A040 		.word	1084227584
 6720 03f8 00007A43 		.word	1132068864
 6721 03fc 0000D243 		.word	1137836032
 6722 0400 00004843 		.word	1128792064
 6723 0404 00120E40 		.word	1074663936
 6724 0408 00140E40 		.word	1074664448
 6725 040c 00160E40 		.word	1074664960
 6726 0410 00000000 		.word	g_APinDescription
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 119


 6727 0414 00000000 		.word	0
 6728 0418 00000000 		.word	.LANCHOR1
 6729 041c 00000000 		.word	.LANCHOR2
 6730 0420 00000000 		.word	.LANCHOR0
 6731 0424 01000000 		.word	.LANCHOR13+1
 6732 0428 01000000 		.word	.LANCHOR14+1
 6733 042c 0000FA43 		.word	1140457472
 6734 0430 00007A45 		.word	1165623296
 6735 0434 000E0E40 		.word	1074662912
 6736 0438 00100E40 		.word	1074663424
 6737 043c 9A99993E 		.word	1050253722
 6738              	.L1303:
 6739 0440 15F8010B 		ldrb	r0, [r5], #1	@ zero_extendqisi2
 6740              	.L1299:
 6741 0444 0121     		movs	r1, #1
 6742 0446 FFF7FEFF 		bl	setPullup
 6743 044a AE42     		cmp	r6, r5
 6744 044c F8D1     		bne	.L1303
 6745 044e 754D     		ldr	r5, .L1337
 6746 0450 1320     		movs	r0, #19
 6747 0452 EE1D     		adds	r6, r5, #7
 6748 0454 01E0     		b	.L1306
 6749              	.L1304:
 6750 0456 15F8010B 		ldrb	r0, [r5], #1	@ zero_extendqisi2
 6751              	.L1306:
 6752 045a 0022     		movs	r2, #0
 6753 045c 0321     		movs	r1, #3
 6754 045e FFF7FEFF 		bl	pinModeDuet
 6755 0462 B542     		cmp	r5, r6
 6756 0464 F7D1     		bne	.L1304
 6757 0466 04F53E65 		add	r5, r4, #3040
 6758 046a 6F4F     		ldr	r7, .L1337+4
 6759 046c 04F6E838 		addw	r8, r4, #3048
 6760 0470 2D26     		movs	r6, #45
 6761 0472 01E0     		b	.L1305
 6762              	.L1334:
 6763 0474 17F8016B 		ldrb	r6, [r7], #1	@ zero_extendqisi2
 6764              	.L1305:
 6765 0478 0022     		movs	r2, #0
 6766 047a 0521     		movs	r1, #5
 6767 047c 3046     		mov	r0, r6
 6768 047e FFF7FEFF 		bl	pinModeDuet
 6769 0482 3046     		mov	r0, r6
 6770 0484 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 6771 0488 05F8010B 		strb	r0, [r5], #1
 6772 048c 4545     		cmp	r5, r8
 6773 048e F1D1     		bne	.L1334
 6774 0490 FFF7FEFF 		bl	_Z24GetTemperatureAdcChannelv
 6775 0494 654E     		ldr	r6, .L1337+8
 6776 0496 84F8E80B 		strb	r0, [r4, #3048]
 6777 049a 361B     		subs	r6, r6, r4
 6778 049c 04F6DF3A 		addw	r10, r4, #3039
 6779 04a0 4FF00009 		mov	r9, #0
 6780 04a4 4C27     		movs	r7, #76
 6781 04a6 4FF00108 		mov	r8, #1
 6782              	.L1310:
 6783 04aa 06EB0A02 		add	r2, r6, r10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 120


 6784              		.syntax unified
 6785              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 6786 04ae EFF31080 		MRS r0, primask
 6787              	@ 0 "" 2
 6788              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 6789 04b2 72B6     		cpsid i
 6790              	@ 0 "" 2
 6791              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6792 04b4 BFF35F8F 		dmb
 6793              	@ 0 "" 2
 6794              		.thumb
 6795              		.syntax unified
 6796 04b8 5D49     		ldr	r1, .L1337+12
 6797 04ba 07FB0243 		mla	r3, r7, r2, r4
 6798 04be 4FF0260C 		mov	ip, #38
 6799 04c2 81F80090 		strb	r9, [r1]
 6800 04c6 C3F82895 		str	r9, [r3, #1320]
 6801 04ca 0CFB02F1 		mul	r1, ip, r2
 6802 04ce C3F82495 		str	r9, [r3, #1316]
 6803 04d2 0022     		movs	r2, #0
 6804 04d4 83F82C95 		strb	r9, [r3, #1324]
 6805              	.L1308:
 6806 04d8 8B18     		adds	r3, r1, r2
 6807 04da 03F51C73 		add	r3, r3, #624
 6808 04de 04EB4303 		add	r3, r4, r3, lsl #1
 6809 04e2 0132     		adds	r2, r2, #1
 6810 04e4 202A     		cmp	r2, #32
 6811 04e6 A3F80490 		strh	r9, [r3, #4]	@ movhi
 6812 04ea F5D1     		bne	.L1308
 6813 04ec 28B9     		cbnz	r0, .L1309
 6814 04ee 504B     		ldr	r3, .L1337+12
 6815 04f0 83F80080 		strb	r8, [r3]
 6816              		.syntax unified
 6817              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6818 04f4 BFF35F8F 		dmb
 6819              	@ 0 "" 2
 6820              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 6821 04f8 62B6     		cpsie i
 6822              	@ 0 "" 2
 6823              		.thumb
 6824              		.syntax unified
 6825              	.L1309:
 6826 04fa 1AF9010F 		ldrsb	r0, [r10, #1]!
 6827 04fe 0121     		movs	r1, #1
 6828 0500 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 6829 0504 5545     		cmp	r5, r10
 6830 0506 D0D1     		bne	.L1310
 6831 0508 2046     		mov	r0, r4
 6832 050a FFF7FEFF 		bl	_ZN8Platform8InitFansEv
 6833 050e 04F6C820 		addw	r0, r4, #2760
 6834 0512 6621     		movs	r1, #102
 6835 0514 FFF7FEFF 		bl	_ZN5Tacho4InitEh
 6836 0518 04F6F830 		addw	r0, r4, #3064
 6837 051c 04F6F433 		addw	r3, r4, #3060
 6838 0520 4FF07C55 		mov	r5, #1056964608
 6839 0524 0560     		str	r5, [r0]	@ float
 6840 0526 4348     		ldr	r0, .L1337+16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 121


 6841 0528 1860     		str	r0, [r3]	@ float
 6842 052a 04F5F363 		add	r3, r4, #1944
 6843 052e 0025     		movs	r5, #0
 6844 0530 0022     		movs	r2, #0
 6845 0532 4149     		ldr	r1, .L1337+20
 6846 0534 C4F89417 		str	r1, [r4, #1940]
 6847 0538 C4F89057 		str	r5, [r4, #1936]
 6848 053c 2420     		movs	r0, #36
 6849 053e 1A60     		str	r2, [r3]	@ float
 6850 0540 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 6851 0544 2A46     		mov	r2, r5
 6852 0546 84F8FC0B 		strb	r0, [r4, #3068]
 6853 054a 0521     		movs	r1, #5
 6854 054c 2420     		movs	r0, #36
 6855 054e FFF7FEFF 		bl	pinModeDuet
 6856 0552 94F9FC0B 		ldrsb	r0, [r4, #3068]
 6857 0556 0121     		movs	r1, #1
 6858 0558 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 6859 055c 42F20F73 		movw	r3, #9999
 6860 0560 A4F8005C 		strh	r5, [r4, #3072]	@ movhi
 6861 0564 8822     		movs	r2, #136
 6862 0566 A4F8FE5B 		strh	r5, [r4, #3070]	@ movhi
 6863 056a 4FF0FF31 		mov	r1, #-1
 6864 056e A4F8023C 		strh	r3, [r4, #3074]	@ movhi
 6865 0572 C4F8105C 		str	r5, [r4, #3088]
 6866 0576 C4F8185C 		str	r5, [r4, #3096]
 6867 057a C4F80C5C 		str	r5, [r4, #3084]
 6868 057e C4F8145C 		str	r5, [r4, #3092]
 6869 0582 04F6C540 		addw	r0, r4, #3269
 6870 0586 FFF7FEFF 		bl	memset
 6871 058a 2046     		mov	r0, r4
 6872 058c FFF7FEFF 		bl	_ZN8Platform20InitialiseInterruptsEv
 6873 0590 0123     		movs	r3, #1
 6874 0592 84F8FA30 		strb	r3, [r4, #250]
 6875 0596 05B0     		add	sp, sp, #20
 6876              		@ sp needed
 6877 0598 BDEC028B 		vldm	sp!, {d8}
 6878 059c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6879              	.L1295:
 6880 05a0 0A23     		movs	r3, #10
 6881 05a2 C4F81C34 		str	r3, [r4, #1052]
 6882              	.L1296:
 6883 05a6 C823     		movs	r3, #200
 6884 05a8 CB20     		movs	r0, #203
 6885 05aa CA21     		movs	r1, #202
 6886 05ac C922     		movs	r2, #201
 6887 05ae 84F87331 		strb	r3, [r4, #371]
 6888 05b2 D523     		movs	r3, #213
 6889 05b4 84F87401 		strb	r0, [r4, #372]
 6890 05b8 84F87511 		strb	r1, [r4, #373]
 6891 05bc 84F87621 		strb	r2, [r4, #374]
 6892 05c0 84F87731 		strb	r3, [r4, #375]
 6893 05c4 A9E6     		b	.L1297
 6894              	.L1294:
 6895 05c6 0723     		movs	r3, #7
 6896 05c8 C4F81C34 		str	r3, [r4, #1052]
 6897 05cc EBE7     		b	.L1296
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 122


 6898              	.L1330:
 6899 05ce D4E93932 		ldrd	r3, r2, [r4, #228]
 6900 05d2 D4F8EC10 		ldr	r1, [r4, #236]
 6901 05d6 194E     		ldr	r6, .L1337+24
 6902 05d8 C4F8DC50 		str	r5, [r4, #220]	@ unaligned
 6903 05dc 5340     		eors	r3, r3, r2
 6904 05de D4F8F020 		ldr	r2, [r4, #240]
 6905 05e2 A4F8E050 		strh	r5, [r4, #224]	@ unaligned
 6906 05e6 4B40     		eors	r3, r3, r1
 6907 05e8 5340     		eors	r3, r3, r2
 6908 05ea 83EA9323 		eor	r3, r3, r3, lsr #10
 6909 05ee BE22     		movs	r2, #190
 6910 05f0 2846     		mov	r0, r5
 6911 05f2 C4F8F430 		str	r3, [r4, #244]
 6912 05f6 84F8DC20 		strb	r2, [r4, #220]
 6913 05fa 04F1E305 		add	r5, r4, #227
 6914              	.L1284:
 6915 05fe A6FB0023 		umull	r2, r3, r6, r0
 6916 0602 9B08     		lsrs	r3, r3, #2
 6917 0604 03EB8303 		add	r3, r3, r3, lsl #2
 6918 0608 C31A     		subs	r3, r0, r3
 6919 060a 0133     		adds	r3, r3, #1
 6920 060c 2344     		add	r3, r3, r4
 6921 060e 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 6922 0612 93F8DC20 		ldrb	r2, [r3, #220]	@ zero_extendqisi2
 6923 0616 0130     		adds	r0, r0, #1
 6924 0618 4A40     		eors	r2, r2, r1
 6925 061a 0F28     		cmp	r0, #15
 6926 061c 83F8DC20 		strb	r2, [r3, #220]
 6927 0620 EDD1     		bne	.L1284
 6928 0622 64E5     		b	.L1283
 6929              	.L1338:
 6930              		.align	2
 6931              	.L1337:
 6932 0624 01000000 		.word	.LANCHOR3+1
 6933 0628 01000000 		.word	.LANCHOR15+1
 6934 062c 21F4FFFF 		.word	-3039
 6935 0630 00000000 		.word	g_interrupt_enabled
 6936 0634 0000E03F 		.word	1071644672
 6937 0638 E0FF0100 		.word	131040
 6938 063c CDCCCCCC 		.word	-858993459
 6939              		.size	_ZN8Platform4InitEv, .-_ZN8Platform4InitEv
 6940              		.section	.text._ZN8Platform4ExitEv,"ax",%progbits
 6941              		.align	1
 6942              		.p2align 2,,3
 6943              		.global	_ZN8Platform4ExitEv
 6944              		.syntax unified
 6945              		.thumb
 6946              		.thumb_func
 6947              		.fpu fpv4-sp-d16
 6948              		.type	_ZN8Platform4ExitEv, %function
 6949              	_ZN8Platform4ExitEv:
 6950              		@ args = 0, pretend = 0, frame = 0
 6951              		@ frame_needed = 0, uses_anonymous_args = 0
 6952 0000 10B5     		push	{r4, lr}
 6953 0002 0446     		mov	r4, r0
 6954 0004 806B     		ldr	r0, [r0, #56]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 123


 6955 0006 28B1     		cbz	r0, .L1340
 6956 0008 04F62843 		addw	r3, r4, #3112
 6957 000c D3E90023 		ldrd	r2, [r3]
 6958 0010 FFF7FEFF 		bl	_ZN6Logger4StopEx
 6959              	.L1340:
 6960 0014 D4F8DC0B 		ldr	r0, [r4, #3036]
 6961 0018 FFF7FEFF 		bl	_ZN11MassStorage13CloseAllFilesEv
 6962 001c D4F85C0B 		ldr	r0, [r4, #2908]
 6963 0020 28B1     		cbz	r0, .L1341
 6964              	.L1342:
 6965 0022 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 6966 0026 C4F85C0B 		str	r0, [r4, #2908]
 6967 002a 0028     		cmp	r0, #0
 6968 002c F9D1     		bne	.L1342
 6969              	.L1341:
 6970 002e 0023     		movs	r3, #0
 6971 0030 84F8FA30 		strb	r3, [r4, #250]
 6972 0034 0348     		ldr	r0, .L1351
 6973 0036 FFF7FEFF 		bl	_ZN9SerialCDC3endEv
 6974 003a 0348     		ldr	r0, .L1351+4
 6975 003c BDE81040 		pop	{r4, lr}
 6976 0040 FFF7FEBF 		b	_ZN9UARTClass3endEv
 6977              	.L1352:
 6978              		.align	2
 6979              	.L1351:
 6980 0044 00000000 		.word	SerialUSB
 6981 0048 00000000 		.word	Serial
 6982              		.size	_ZN8Platform4ExitEv, .-_ZN8Platform4ExitEv
 6983              		.section	.text._ZN8Platform12ResetChannelEj,"ax",%progbits
 6984              		.align	1
 6985              		.p2align 2,,3
 6986              		.global	_ZN8Platform12ResetChannelEj
 6987              		.syntax unified
 6988              		.thumb
 6989              		.thumb_func
 6990              		.fpu fpv4-sp-d16
 6991              		.type	_ZN8Platform12ResetChannelEj, %function
 6992              	_ZN8Platform12ResetChannelEj:
 6993              		@ args = 0, pretend = 0, frame = 0
 6994              		@ frame_needed = 0, uses_anonymous_args = 0
 6995 0000 10B5     		push	{r4, lr}
 6996 0002 69B1     		cbz	r1, .L1355
 6997 0004 0129     		cmp	r1, #1
 6998 0006 0AD1     		bne	.L1359
 6999 0008 0446     		mov	r4, r0
 7000 000a 0A48     		ldr	r0, .L1360
 7001 000c FFF7FEFF 		bl	_ZN9UARTClass3endEv
 7002 0010 D4F8DC1A 		ldr	r1, [r4, #2780]
 7003 0014 0748     		ldr	r0, .L1360
 7004 0016 BDE81040 		pop	{r4, lr}
 7005 001a FFF7FEBF 		b	_ZN9UARTClass5beginEm
 7006              	.L1359:
 7007 001e 10BD     		pop	{r4, pc}
 7008              	.L1355:
 7009 0020 0548     		ldr	r0, .L1360+4
 7010 0022 FFF7FEFF 		bl	_ZN9SerialCDC3endEv
 7011 0026 3621     		movs	r1, #54
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 124


 7012 0028 0348     		ldr	r0, .L1360+4
 7013 002a BDE81040 		pop	{r4, lr}
 7014 002e FFF7FEBF 		b	_ZN9SerialCDC5StartEh
 7015              	.L1361:
 7016 0032 00BF     		.align	2
 7017              	.L1360:
 7018 0034 00000000 		.word	Serial
 7019 0038 00000000 		.word	SerialUSB
 7020              		.size	_ZN8Platform12ResetChannelEj, .-_ZN8Platform12ResetChannelEj
 7021              		.section	.text._ZN8Platform11SetBaudRateEjm,"ax",%progbits
 7022              		.align	1
 7023              		.p2align 2,,3
 7024              		.global	_ZN8Platform11SetBaudRateEjm
 7025              		.syntax unified
 7026              		.thumb
 7027              		.thumb_func
 7028              		.fpu fpv4-sp-d16
 7029              		.type	_ZN8Platform11SetBaudRateEjm, %function
 7030              	_ZN8Platform11SetBaudRateEjm:
 7031              		@ args = 0, pretend = 0, frame = 0
 7032              		@ frame_needed = 0, uses_anonymous_args = 0
 7033              		@ link register save eliminated.
 7034 0000 0229     		cmp	r1, #2
 7035 0002 00D9     		bls	.L1367
 7036 0004 7047     		bx	lr
 7037              	.L1367:
 7038 0006 01F2B623 		addw	r3, r1, #694
 7039 000a 10B4     		push	{r4}
 7040 000c 40F82320 		str	r2, [r0, r3, lsl #2]
 7041 0010 5DF8044B 		ldr	r4, [sp], #4
 7042 0014 FFF7FEBF 		b	_ZN8Platform12ResetChannelEj
 7043              		.size	_ZN8Platform11SetBaudRateEjm, .-_ZN8Platform11SetBaudRateEjm
 7044              		.section	.text._ZN8Platform18SetCommsPropertiesEjm,"ax",%progbits
 7045              		.align	1
 7046              		.p2align 2,,3
 7047              		.global	_ZN8Platform18SetCommsPropertiesEjm
 7048              		.syntax unified
 7049              		.thumb
 7050              		.thumb_func
 7051              		.fpu fpv4-sp-d16
 7052              		.type	_ZN8Platform18SetCommsPropertiesEjm, %function
 7053              	_ZN8Platform18SetCommsPropertiesEjm:
 7054              		@ args = 0, pretend = 0, frame = 0
 7055              		@ frame_needed = 0, uses_anonymous_args = 0
 7056              		@ link register save eliminated.
 7057 0000 0229     		cmp	r1, #2
 7058 0002 00D9     		bls	.L1373
 7059 0004 7047     		bx	lr
 7060              	.L1373:
 7061 0006 0B46     		mov	r3, r1
 7062 0008 0344     		add	r3, r3, r0
 7063 000a 10B4     		push	{r4}
 7064 000c 83F8E42A 		strb	r2, [r3, #2788]
 7065 0010 5DF8044B 		ldr	r4, [sp], #4
 7066 0014 FFF7FEBF 		b	_ZN8Platform12ResetChannelEj
 7067              		.size	_ZN8Platform18SetCommsPropertiesEjm, .-_ZN8Platform18SetCommsPropertiesEjm
 7068              		.section	.text._ZN8Platform13SoftwareResetEtPKm,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 125


 7069              		.align	1
 7070              		.p2align 2,,3
 7071              		.global	_ZN8Platform13SoftwareResetEtPKm
 7072              		.syntax unified
 7073              		.thumb
 7074              		.thumb_func
 7075              		.fpu fpv4-sp-d16
 7076              		.type	_ZN8Platform13SoftwareResetEtPKm, %function
 7077              	_ZN8Platform13SoftwareResetEtPKm:
 7078              		@ args = 0, pretend = 0, frame = 512
 7079              		@ frame_needed = 0, uses_anonymous_args = 0
 7080 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7081 0004 0646     		mov	r6, r0
 7082 0006 ADF5007D 		sub	sp, sp, #512
 7083 000a 0C46     		mov	r4, r1
 7084 000c 1546     		mov	r5, r2
 7085              		.syntax unified
 7086              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 7087 000e 72B6     		cpsid i
 7088              	@ 0 "" 2
 7089              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 7090 0010 BFF35F8F 		dmb
 7091              	@ 0 "" 2
 7092              		.thumb
 7093              		.syntax unified
 7094 0014 4C4B     		ldr	r3, .L1410
 7095 0016 4D48     		ldr	r0, .L1410+4
 7096 0018 0027     		movs	r7, #0
 7097 001a 1F70     		strb	r7, [r3]
 7098 001c FFF7FEFF 		bl	wdt_restart
 7099 0020 4B48     		ldr	r0, .L1410+8
 7100 0022 FFF7FEFF 		bl	rswdt_restart
 7101 0026 4B4B     		ldr	r3, .L1410+12
 7102 0028 102C     		cmp	r4, #16
 7103 002a 9F60     		str	r7, [r3, #8]
 7104 002c 00F08980 		beq	.L1406
 7105 0030 002C     		cmp	r4, #0
 7106 0032 77D1     		bne	.L1407
 7107              	.L1377:
 7108 0034 484B     		ldr	r3, .L1410+16
 7109 0036 494A     		ldr	r2, .L1410+20
 7110 0038 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 7111 003a 92F8FC10 		ldrb	r1, [r2, #252]	@ zero_extendqisi2
 7112 003e 96F84D2D 		ldrb	r2, [r6, #3405]	@ zero_extendqisi2
 7113 0042 5B01     		lsls	r3, r3, #5
 7114 0044 DBB2     		uxtb	r3, r3
 7115 0046 0C43     		orrs	r4, r4, r1
 7116 0048 1C43     		orrs	r4, r4, r3
 7117 004a 22B1     		cbz	r2, .L1379
 7118 004c 6FEA4444 		mvn	r4, r4, lsl #17
 7119 0050 6FEA5444 		mvn	r4, r4, lsr #17
 7120 0054 A4B2     		uxth	r4, r4
 7121              	.L1379:
 7122 0056 6846     		mov	r0, sp
 7123 0058 8021     		movs	r1, #128
 7124 005a FFF7FEFF 		bl	flash_read_user_signature
 7125 005e 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 126


 7126 0060 56D1     		bne	.L1380
 7127 0062 5FAA     		add	r2, sp, #380
 7128 0064 0423     		movs	r3, #4
 7129              	.L1381:
 7130 0066 02F18000 		add	r0, r2, #128
 7131 006a 1146     		mov	r1, r2
 7132 006c 01E0     		b	.L1385
 7133              	.L1409:
 7134 006e 8842     		cmp	r0, r1
 7135 0070 49D0     		beq	.L1408
 7136              	.L1385:
 7137 0072 51F8047F 		ldr	r7, [r1, #4]!
 7138 0076 0137     		adds	r7, r7, #1
 7139 0078 F9D0     		beq	.L1409
 7140 007a 042B     		cmp	r3, #4
 7141 007c 48D0     		beq	.L1380
 7142              	.L1382:
 7143 007e DF01     		lsls	r7, r3, #7
 7144 0080 0DEB0708 		add	r8, sp, r7
 7145 0084 D6F8283C 		ldr	r3, [r6, #3112]
 7146 0088 C8F81C30 		str	r3, [r8, #28]
 7147 008c 47F60853 		movw	r3, #32008
 7148 0090 2DF80730 		strh	r3, [sp, r7]	@ movhi
 7149 0094 A8F80240 		strh	r4, [r8, #2]	@ movhi
 7150 0098 FFF7FEFF 		bl	_ZN5Tasks15GetNeverUsedRamEv
 7151 009c 304A     		ldr	r2, .L1410+24
 7152 009e C8F80400 		str	r0, [r8, #4]
 7153 00a2 D36A     		ldr	r3, [r2, #44]
 7154 00a4 C8F80830 		str	r3, [r8, #8]
 7155 00a8 936A     		ldr	r3, [r2, #40]
 7156 00aa C8F80C30 		str	r3, [r8, #12]
 7157 00ae 5368     		ldr	r3, [r2, #4]
 7158 00b0 C8F81030 		str	r3, [r8, #16]
 7159 00b4 936B     		ldr	r3, [r2, #56]
 7160 00b6 C8F81430 		str	r3, [r8, #20]
 7161 00ba 0020     		movs	r0, #0
 7162 00bc FFF7FEFF 		bl	pcTaskGetName
 7163 00c0 0368     		ldr	r3, [r0]
 7164 00c2 C8F82030 		str	r3, [r8, #32]
 7165 00c6 9DB1     		cbz	r5, .L1386
 7166 00c8 07F12003 		add	r3, r7, #32
 7167 00cc 2548     		ldr	r0, .L1410+28
 7168 00ce C8F81850 		str	r5, [r8, #24]
 7169 00d2 6B44     		add	r3, r3, sp
 7170 00d4 05F15C01 		add	r1, r5, #92
 7171              	.L1388:
 7172 00d8 8542     		cmp	r5, r0
 7173 00da 38BF     		it	cc
 7174 00dc 2A68     		ldrcc	r2, [r5]
 7175 00de 05F10405 		add	r5, r5, #4
 7176 00e2 28BF     		it	cs
 7177 00e4 4FF0FF32 		movcs	r2, #-1
 7178 00e8 8D42     		cmp	r5, r1
 7179 00ea 43F8042F 		str	r2, [r3, #4]!
 7180 00ee F3D1     		bne	.L1388
 7181              	.L1386:
 7182 00f0 6846     		mov	r0, sp
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 127


 7183 00f2 8021     		movs	r1, #128
 7184 00f4 FFF7FEFF 		bl	flash_write_user_signature
 7185              	.L1376:
 7186 00f8 1B4B     		ldr	r3, .L1410+32
 7187 00fa 4FF02542 		mov	r2, #-1526726656
 7188 00fe 9A60     		str	r2, [r3, #8]
 7189 0100 FFF7FEFF 		bl	Reset
 7190              	.L1389:
 7191 0104 FEE7     		b	.L1389
 7192              	.L1408:
 7193 0106 013B     		subs	r3, r3, #1
 7194 0108 A2F18002 		sub	r2, r2, #128
 7195 010c ABD1     		bne	.L1381
 7196 010e B6E7     		b	.L1382
 7197              	.L1380:
 7198 0110 FFF7FEFF 		bl	flash_erase_user_signature
 7199 0114 4FF40072 		mov	r2, #512
 7200 0118 FF21     		movs	r1, #255
 7201 011a 6846     		mov	r0, sp
 7202 011c FFF7FEFF 		bl	memset
 7203 0120 0023     		movs	r3, #0
 7204 0122 ACE7     		b	.L1382
 7205              	.L1407:
 7206 0124 1148     		ldr	r0, .L1410+36
 7207 0126 FFF7FEFF 		bl	_ZNK9SerialCDC8canWriteEv
 7208 012a 08B9     		cbnz	r0, .L1378
 7209 012c 44F48044 		orr	r4, r4, #16384
 7210              	.L1378:
 7211 0130 0F48     		ldr	r0, .L1410+40
 7212 0132 FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 7213 0136 0028     		cmp	r0, #0
 7214 0138 7FF47CAF 		bne	.L1377
 7215 013c 44F40064 		orr	r4, r4, #2048
 7216 0140 78E7     		b	.L1377
 7217              	.L1406:
 7218 0142 FFF7FEFF 		bl	EraseAndReset
 7219 0146 D7E7     		b	.L1376
 7220              	.L1411:
 7221              		.align	2
 7222              	.L1410:
 7223 0148 00000000 		.word	g_interrupt_enabled
 7224 014c 50180E40 		.word	1074665552
 7225 0150 00190E40 		.word	1074665728
 7226 0154 00400C40 		.word	1074544640
 7227 0158 00000000 		.word	.LANCHOR16
 7228 015c 00000000 		.word	reprap
 7229 0160 00ED00E0 		.word	-536810240
 7230 0164 00000000 		.word	_estack
 7231 0168 00180E40 		.word	1074665472
 7232 016c 00000000 		.word	SerialUSB
 7233 0170 00000000 		.word	Serial
 7234              		.size	_ZN8Platform13SoftwareResetEtPKm, .-_ZN8Platform13SoftwareResetEtPKm
 7235              		.section	.text._ZN8Platform16FlushAuxMessagesEv,"ax",%progbits
 7236              		.align	1
 7237              		.p2align 2,,3
 7238              		.global	_ZN8Platform16FlushAuxMessagesEv
 7239              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 128


 7240              		.thumb
 7241              		.thumb_func
 7242              		.fpu fpv4-sp-d16
 7243              		.type	_ZN8Platform16FlushAuxMessagesEv, %function
 7244              	_ZN8Platform16FlushAuxMessagesEv:
 7245              		@ args = 0, pretend = 0, frame = 8
 7246              		@ frame_needed = 0, uses_anonymous_args = 0
 7247 0000 70B5     		push	{r4, r5, r6, lr}
 7248 0002 82B0     		sub	sp, sp, #8
 7249 0004 00F6FC21 		addw	r1, r0, #2812
 7250 0008 00F6E824 		addw	r4, r0, #2792
 7251 000c 4FF0FF32 		mov	r2, #-1
 7252 0010 6846     		mov	r0, sp
 7253 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 7254 0016 2046     		mov	r0, r4
 7255 0018 FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 7256 001c 70B1     		cbz	r0, .L1414
 7257 001e 0546     		mov	r5, r0
 7258 0020 1848     		ldr	r0, .L1423
 7259 0022 FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 7260 0026 D5F80C21 		ldr	r2, [r5, #268]
 7261 002a D5F81031 		ldr	r3, [r5, #272]
 7262 002e D61A     		subs	r6, r2, r3
 7263 0030 8642     		cmp	r6, r0
 7264 0032 28BF     		it	cs
 7265 0034 0646     		movcs	r6, r0
 7266 0036 6EB9     		cbnz	r6, .L1421
 7267 0038 9A42     		cmp	r2, r3
 7268 003a 1AD0     		beq	.L1422
 7269              	.L1414:
 7270 003c 2046     		mov	r0, r4
 7271 003e FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 7272 0042 0446     		mov	r4, r0
 7273 0044 6846     		mov	r0, sp
 7274 0046 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 7275 004a 201C     		adds	r0, r4, #0
 7276 004c 18BF     		it	ne
 7277 004e 0120     		movne	r0, #1
 7278 0050 02B0     		add	sp, sp, #8
 7279              		@ sp needed
 7280 0052 70BD     		pop	{r4, r5, r6, pc}
 7281              	.L1421:
 7282 0054 3146     		mov	r1, r6
 7283 0056 2846     		mov	r0, r5
 7284 0058 FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 7285 005c 3246     		mov	r2, r6
 7286 005e 0146     		mov	r1, r0
 7287 0060 0848     		ldr	r0, .L1423
 7288 0062 FFF7FEFF 		bl	_ZN9UARTClass5writeEPKhj
 7289 0066 D5F80C21 		ldr	r2, [r5, #268]
 7290 006a D5F81031 		ldr	r3, [r5, #272]
 7291 006e 9A42     		cmp	r2, r3
 7292 0070 E4D1     		bne	.L1414
 7293              	.L1422:
 7294 0072 2846     		mov	r0, r5
 7295 0074 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 7296 0078 0146     		mov	r1, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 129


 7297 007a 2046     		mov	r0, r4
 7298 007c FFF7FEFF 		bl	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer
 7299 0080 DCE7     		b	.L1414
 7300              	.L1424:
 7301 0082 00BF     		.align	2
 7302              	.L1423:
 7303 0084 00000000 		.word	Serial
 7304              		.size	_ZN8Platform16FlushAuxMessagesEv, .-_ZN8Platform16FlushAuxMessagesEv
 7305              		.section	.text._ZN8Platform14SendAuxMessageEPKc,"ax",%progbits
 7306              		.align	1
 7307              		.p2align 2,,3
 7308              		.global	_ZN8Platform14SendAuxMessageEPKc
 7309              		.syntax unified
 7310              		.thumb
 7311              		.thumb_func
 7312              		.fpu fpv4-sp-d16
 7313              		.type	_ZN8Platform14SendAuxMessageEPKc, %function
 7314              	_ZN8Platform14SendAuxMessageEPKc:
 7315              		@ args = 0, pretend = 0, frame = 8
 7316              		@ frame_needed = 0, uses_anonymous_args = 0
 7317 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 7318 0002 85B0     		sub	sp, sp, #20
 7319 0004 0446     		mov	r4, r0
 7320 0006 03A8     		add	r0, sp, #12
 7321 0008 0D46     		mov	r5, r1
 7322 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 7323 000e E0B1     		cbz	r0, .L1425
 7324 0010 0F49     		ldr	r1, .L1431
 7325 0012 0398     		ldr	r0, [sp, #12]
 7326 0014 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 7327 0018 2846     		mov	r0, r5
 7328 001a FFF7FEFF 		bl	strlen
 7329 001e 039F     		ldr	r7, [sp, #12]
 7330 0020 0023     		movs	r3, #0
 7331 0022 0126     		movs	r6, #1
 7332 0024 0246     		mov	r2, r0
 7333 0026 CDE90063 		strd	r6, r3, [sp]
 7334 002a 2946     		mov	r1, r5
 7335 002c 3846     		mov	r0, r7
 7336 002e FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 7337 0032 0849     		ldr	r1, .L1431+4
 7338 0034 0398     		ldr	r0, [sp, #12]
 7339 0036 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 7340 003a 04F6E820 		addw	r0, r4, #2792
 7341 003e 0399     		ldr	r1, [sp, #12]
 7342 0040 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 7343 0044 2046     		mov	r0, r4
 7344 0046 FFF7FEFF 		bl	_ZN8Platform16FlushAuxMessagesEv
 7345              	.L1425:
 7346 004a 05B0     		add	sp, sp, #20
 7347              		@ sp needed
 7348 004c F0BD     		pop	{r4, r5, r6, r7, pc}
 7349              	.L1432:
 7350 004e 00BF     		.align	2
 7351              	.L1431:
 7352 0050 00000000 		.word	.LC43
 7353 0054 0C000000 		.word	.LC44
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 130


 7354              		.size	_ZN8Platform14SendAuxMessageEPKc, .-_ZN8Platform14SendAuxMessageEPKc
 7355              		.section	.text._ZN8Platform10RawMessageE11MessageTypePKc,"ax",%progbits
 7356              		.align	1
 7357              		.p2align 2,,3
 7358              		.global	_ZN8Platform10RawMessageE11MessageTypePKc
 7359              		.syntax unified
 7360              		.thumb
 7361              		.thumb_func
 7362              		.fpu fpv4-sp-d16
 7363              		.type	_ZN8Platform10RawMessageE11MessageTypePKc, %function
 7364              	_ZN8Platform10RawMessageE11MessageTypePKc:
 7365              		@ args = 0, pretend = 0, frame = 16
 7366              		@ frame_needed = 0, uses_anonymous_args = 0
 7367 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7368 0004 1446     		mov	r4, r2
 7369 0006 0A06     		lsls	r2, r1, #24
 7370 0008 86B0     		sub	sp, sp, #24
 7371 000a 0D46     		mov	r5, r1
 7372 000c 0646     		mov	r6, r0
 7373 000e 08D5     		bpl	.L1434
 7374 0010 806B     		ldr	r0, [r0, #56]
 7375 0012 30B1     		cbz	r0, .L1434
 7376 0014 06F62843 		addw	r3, r6, #3112
 7377 0018 D3E90023 		ldrd	r2, [r3]
 7378 001c 0094     		str	r4, [sp]
 7379 001e FFF7FEFF 		bl	_ZN6Logger10LogMessageExPKc
 7380              	.L1434:
 7381 0022 2B07     		lsls	r3, r5, #28
 7382 0024 47D4     		bmi	.L1494
 7383 0026 6F07     		lsls	r7, r5, #29
 7384 0028 0AD4     		bmi	.L1495
 7385              	.L1436:
 7386 002a E806     		lsls	r0, r5, #27
 7387 002c 49D4     		bmi	.L1496
 7388              	.L1438:
 7389 002e A906     		lsls	r1, r5, #26
 7390 0030 4ED4     		bmi	.L1497
 7391              	.L1439:
 7392 0032 AA07     		lsls	r2, r5, #30
 7393 0034 53D4     		bmi	.L1498
 7394              	.L1440:
 7395 0036 EB07     		lsls	r3, r5, #31
 7396 0038 12D4     		bmi	.L1499
 7397 003a 06B0     		add	sp, sp, #24
 7398              		@ sp needed
 7399 003c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7400              	.L1495:
 7401 0040 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 7402 0042 7B2B     		cmp	r3, #123
 7403 0044 72D0     		beq	.L1449
 7404 0046 002B     		cmp	r3, #0
 7405 0048 EFD0     		beq	.L1436
 7406 004a C5F38022 		ubfx	r2, r5, #10, #1
 7407              	.L1437:
 7408 004e 96F8643B 		ldrb	r3, [r6, #2916]	@ zero_extendqisi2
 7409 0052 002B     		cmp	r3, #0
 7410 0054 E9D0     		beq	.L1436
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 131


 7411 0056 2146     		mov	r1, r4
 7412 0058 3046     		mov	r0, r6
 7413 005a FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEPKcb.part.28
 7414 005e E4E7     		b	.L1436
 7415              	.L1499:
 7416 0060 0DF11008 		add	r8, sp, #16
 7417 0064 4FF0FF32 		mov	r2, #-1
 7418 0068 4046     		mov	r0, r8
 7419 006a 06F67C31 		addw	r1, r6, #2940
 7420 006e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 7421 0072 2F4B     		ldr	r3, .L1502
 7422 0074 DB69     		ldr	r3, [r3, #28]
 7423 0076 1A69     		ldr	r2, [r3, #16]
 7424 0078 0AB1     		cbz	r2, .L1444
 7425 007a 5B7A     		ldrb	r3, [r3, #9]	@ zero_extendqisi2
 7426 007c ABB1     		cbz	r3, .L1445
 7427              	.L1444:
 7428 007e 06F66836 		addw	r6, r6, #2920
 7429 0082 3046     		mov	r0, r6
 7430 0084 FFF7FEFF 		bl	_ZNVK11OutputStack11GetLastItemEv
 7431 0088 0390     		str	r0, [sp, #12]
 7432 008a 10B1     		cbz	r0, .L1446
 7433 008c 90F81431 		ldrb	r3, [r0, #276]	@ zero_extendqisi2
 7434 0090 43B1     		cbz	r3, .L1447
 7435              	.L1446:
 7436 0092 03A8     		add	r0, sp, #12
 7437 0094 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 7438 0098 38B1     		cbz	r0, .L1445
 7439 009a 3046     		mov	r0, r6
 7440 009c 0399     		ldr	r1, [sp, #12]
 7441 009e FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 7442 00a2 0398     		ldr	r0, [sp, #12]
 7443              	.L1447:
 7444 00a4 2146     		mov	r1, r4
 7445 00a6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 7446              	.L1445:
 7447 00aa 4046     		mov	r0, r8
 7448 00ac FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 7449              	.L1501:
 7450 00b0 06B0     		add	sp, sp, #24
 7451              		@ sp needed
 7452 00b2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7453              	.L1494:
 7454 00b6 3046     		mov	r0, r6
 7455 00b8 2146     		mov	r1, r4
 7456 00ba FFF7FEFF 		bl	_ZN8Platform14SendAuxMessageEPKc
 7457 00be E806     		lsls	r0, r5, #27
 7458 00c0 B5D5     		bpl	.L1438
 7459              	.L1496:
 7460 00c2 1B4B     		ldr	r3, .L1502
 7461 00c4 2146     		mov	r1, r4
 7462 00c6 9868     		ldr	r0, [r3, #8]
 7463 00c8 FFF7FEFF 		bl	_ZN7Network20HandleHttpGCodeReplyEPKc
 7464 00cc A906     		lsls	r1, r5, #26
 7465 00ce B0D5     		bpl	.L1439
 7466              	.L1497:
 7467 00d0 174B     		ldr	r3, .L1502
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 132


 7468 00d2 2146     		mov	r1, r4
 7469 00d4 9868     		ldr	r0, [r3, #8]
 7470 00d6 FFF7FEFF 		bl	_ZN7Network22HandleTelnetGCodeReplyEPKc
 7471 00da AA07     		lsls	r2, r5, #30
 7472 00dc ABD5     		bpl	.L1440
 7473              	.L1498:
 7474 00de 0DF11008 		add	r8, sp, #16
 7475 00e2 06F67C31 		addw	r1, r6, #2940
 7476 00e6 4FF0FF32 		mov	r2, #-1
 7477 00ea 4046     		mov	r0, r8
 7478 00ec FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 7479 00f0 2046     		mov	r0, r4
 7480 00f2 FFF7FEFF 		bl	strlen
 7481 00f6 0F4E     		ldr	r6, .L1502+4
 7482 00f8 0D4F     		ldr	r7, .L1502
 7483 00fa 0546     		mov	r5, r0
 7484 00fc 0DE0     		b	.L1442
 7485              	.L1500:
 7486 00fe 3846     		mov	r0, r7
 7487 0100 002D     		cmp	r5, #0
 7488 0102 D2D0     		beq	.L1445
 7489 0104 FFF7FEFF 		bl	_ZNK6RepRap19SpinTimeoutImminentEv
 7490 0108 2A46     		mov	r2, r5
 7491 010a 2146     		mov	r1, r4
 7492 010c 0028     		cmp	r0, #0
 7493 010e CCD1     		bne	.L1445
 7494 0110 3046     		mov	r0, r6
 7495 0112 FFF7FEFF 		bl	_ZN9SerialCDC5writeEPKhj
 7496 0116 2D1A     		subs	r5, r5, r0
 7497 0118 0444     		add	r4, r4, r0
 7498              	.L1442:
 7499 011a 3046     		mov	r0, r6
 7500 011c FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 7501 0120 0028     		cmp	r0, #0
 7502 0122 ECD1     		bne	.L1500
 7503 0124 4046     		mov	r0, r8
 7504 0126 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 7505 012a C1E7     		b	.L1501
 7506              	.L1449:
 7507 012c 0122     		movs	r2, #1
 7508 012e 8EE7     		b	.L1437
 7509              	.L1503:
 7510              		.align	2
 7511              	.L1502:
 7512 0130 00000000 		.word	reprap
 7513 0134 00000000 		.word	SerialUSB
 7514              		.size	_ZN8Platform10RawMessageE11MessageTypePKc, .-_ZN8Platform10RawMessageE11MessageTypePKc
 7515              		.section	.text._ZN8Platform8MessageFE11MessageTypePKcSt9__va_list,"ax",%progbits
 7516              		.align	1
 7517              		.p2align 2,,3
 7518              		.global	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 7519              		.syntax unified
 7520              		.thumb
 7521              		.thumb_func
 7522              		.fpu fpv4-sp-d16
 7523              		.type	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list, %function
 7524              	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 133


 7525              		@ args = 0, pretend = 0, frame = 1040
 7526              		@ frame_needed = 0, uses_anonymous_args = 0
 7527 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 7528 0004 ADF2144D 		subw	sp, sp, #1044
 7529 0008 0C46     		mov	r4, r1
 7530 000a 03AD     		add	r5, sp, #12
 7531 000c 0021     		movs	r1, #0
 7532 000e 1746     		mov	r7, r2
 7533 0010 E205     		lsls	r2, r4, #23
 7534 0012 0646     		mov	r6, r0
 7535 0014 9846     		mov	r8, r3
 7536 0016 2970     		strb	r1, [r5]
 7537 0018 24D4     		bmi	.L1510
 7538 001a A305     		lsls	r3, r4, #22
 7539 001c 12D4     		bmi	.L1511
 7540 001e 40F20143 		movw	r3, #1025
 7541 0022 4246     		mov	r2, r8
 7542 0024 3946     		mov	r1, r7
 7543 0026 01A8     		add	r0, sp, #4
 7544 0028 CDE90153 		strd	r5, r3, [sp, #4]
 7545 002c FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 7546              	.L1506:
 7547 0030 24F44071 		bic	r1, r4, #768
 7548 0034 2A46     		mov	r2, r5
 7549 0036 3046     		mov	r0, r6
 7550 0038 FFF7FEFF 		bl	_ZN8Platform10RawMessageE11MessageTypePKc
 7551 003c 0DF2144D 		addw	sp, sp, #1044
 7552              		@ sp needed
 7553 0040 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 7554              	.L1511:
 7555 0044 0A49     		ldr	r1, .L1512
 7556 0046 01A8     		add	r0, sp, #4
 7557 0048 40F20149 		movw	r9, #1025
 7558              	.L1509:
 7559 004c CDE90159 		strd	r5, r9, [sp, #4]
 7560 0050 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7561 0054 01A8     		add	r0, sp, #4
 7562 0056 4246     		mov	r2, r8
 7563 0058 3946     		mov	r1, r7
 7564 005a CDE90159 		strd	r5, r9, [sp, #4]
 7565 005e FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 7566 0062 E5E7     		b	.L1506
 7567              	.L1510:
 7568 0064 01A8     		add	r0, sp, #4
 7569 0066 40F20149 		movw	r9, #1025
 7570 006a 0249     		ldr	r1, .L1512+4
 7571 006c EEE7     		b	.L1509
 7572              	.L1513:
 7573 006e 00BF     		.align	2
 7574              	.L1512:
 7575 0070 08000000 		.word	.LC46
 7576 0074 00000000 		.word	.LC45
 7577              		.size	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list, .-_ZN8Platform8MessageFE11MessageTypePKc
 7578              		.section	.text._ZN8Platform8MessageFE11MessageTypePKcz,"ax",%progbits
 7579              		.align	1
 7580              		.p2align 2,,3
 7581              		.global	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 134


 7582              		.syntax unified
 7583              		.thumb
 7584              		.thumb_func
 7585              		.fpu fpv4-sp-d16
 7586              		.type	_ZN8Platform8MessageFE11MessageTypePKcz, %function
 7587              	_ZN8Platform8MessageFE11MessageTypePKcz:
 7588              		@ args = 4, pretend = 8, frame = 8
 7589              		@ frame_needed = 0, uses_anonymous_args = 1
 7590 0000 0CB4     		push	{r2, r3}
 7591 0002 00B5     		push	{lr}
 7592 0004 83B0     		sub	sp, sp, #12
 7593 0006 04AB     		add	r3, sp, #16
 7594 0008 53F8042B 		ldr	r2, [r3], #4
 7595 000c 0193     		str	r3, [sp, #4]
 7596 000e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 7597 0012 03B0     		add	sp, sp, #12
 7598              		@ sp needed
 7599 0014 5DF804EB 		ldr	lr, [sp], #4
 7600 0018 02B0     		add	sp, sp, #8
 7601 001a 7047     		bx	lr
 7602              		.size	_ZN8Platform8MessageFE11MessageTypePKcz, .-_ZN8Platform8MessageFE11MessageTypePKcz
 7603              		.section	.text._ZN8Platform4BeepEii,"ax",%progbits
 7604              		.align	1
 7605              		.p2align 2,,3
 7606              		.global	_ZN8Platform4BeepEii
 7607              		.syntax unified
 7608              		.thumb
 7609              		.thumb_func
 7610              		.fpu fpv4-sp-d16
 7611              		.type	_ZN8Platform4BeepEii, %function
 7612              	_ZN8Platform4BeepEii:
 7613              		@ args = 0, pretend = 0, frame = 0
 7614              		@ frame_needed = 0, uses_anonymous_args = 0
 7615 0000 00B5     		push	{lr}
 7616 0002 83B0     		sub	sp, sp, #12
 7617 0004 0B46     		mov	r3, r1
 7618 0006 0092     		str	r2, [sp]
 7619 0008 0421     		movs	r1, #4
 7620 000a 034A     		ldr	r2, .L1518
 7621 000c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7622 0010 03B0     		add	sp, sp, #12
 7623              		@ sp needed
 7624 0012 5DF804FB 		ldr	pc, [sp], #4
 7625              	.L1519:
 7626 0016 00BF     		.align	2
 7627              	.L1518:
 7628 0018 00000000 		.word	.LC47
 7629              		.size	_ZN8Platform4BeepEii, .-_ZN8Platform4BeepEii
 7630              		.section	.text._ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33,"ax",%progbits
 7631              		.align	1
 7632              		.p2align 2,,3
 7633              		.syntax unified
 7634              		.thumb
 7635              		.thumb_func
 7636              		.fpu fpv4-sp-d16
 7637              		.type	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33, %function
 7638              	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 135


 7639              		@ args = 4, pretend = 0, frame = 224
 7640              		@ frame_needed = 0, uses_anonymous_args = 0
 7641 0000 2DE9F04D 		push	{r4, r5, r6, r7, r8, r10, fp, lr}
 7642 0004 B8B0     		sub	sp, sp, #224
 7643 0006 38AE     		add	r6, sp, #224
 7644 0008 0025     		movs	r5, #0
 7645 000a 06F8E05D 		strb	r5, [r6, #-224]!
 7646 000e 9046     		mov	r8, r2
 7647 0010 8246     		mov	r10, r0
 7648 0012 8B46     		mov	fp, r1
 7649 0014 1A46     		mov	r2, r3
 7650 0016 3046     		mov	r0, r6
 7651 0018 1249     		ldr	r1, .L1532
 7652 001a FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 7653 001e D8F80040 		ldr	r4, [r8]
 7654 0022 84B1     		cbz	r4, .L1521
 7655 0024 104F     		ldr	r7, .L1532+4
 7656 0026 03E0     		b	.L1523
 7657              	.L1522:
 7658 0028 6408     		lsrs	r4, r4, #1
 7659 002a 05F10105 		add	r5, r5, #1
 7660 002e 0AD0     		beq	.L1521
 7661              	.L1523:
 7662 0030 E307     		lsls	r3, r4, #31
 7663 0032 F9D5     		bpl	.L1522
 7664 0034 2A46     		mov	r2, r5
 7665 0036 3946     		mov	r1, r7
 7666 0038 3046     		mov	r0, r6
 7667 003a FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 7668 003e 6408     		lsrs	r4, r4, #1
 7669 0040 05F10105 		add	r5, r5, #1
 7670 0044 F4D1     		bne	.L1523
 7671              	.L1521:
 7672 0046 3346     		mov	r3, r6
 7673 0048 5946     		mov	r1, fp
 7674 004a 5046     		mov	r0, r10
 7675 004c 074A     		ldr	r2, .L1532+8
 7676 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7677 0052 4099     		ldr	r1, [sp, #256]
 7678 0054 0122     		movs	r2, #1
 7679 0056 0023     		movs	r3, #0
 7680 0058 0A70     		strb	r2, [r1]
 7681 005a C8F80030 		str	r3, [r8]
 7682 005e 38B0     		add	sp, sp, #224
 7683              		@ sp needed
 7684 0060 BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 7685              	.L1533:
 7686              		.align	2
 7687              	.L1532:
 7688 0064 00000000 		.word	.LC48
 7689 0068 1C000000 		.word	.LC49
 7690 006c 20000000 		.word	.LC50
 7691              		.size	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33, .-_ZN8Platform13ReportDriversE11Me
 7692              		.section	.text._ZN8Platform13ReportDriversE11MessageTypeRmPKcRb,"ax",%progbits
 7693              		.align	1
 7694              		.p2align 2,,3
 7695              		.global	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 136


 7696              		.syntax unified
 7697              		.thumb
 7698              		.thumb_func
 7699              		.fpu fpv4-sp-d16
 7700              		.type	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb, %function
 7701              	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb:
 7702              		@ args = 4, pretend = 0, frame = 0
 7703              		@ frame_needed = 0, uses_anonymous_args = 0
 7704              		@ link register save eliminated.
 7705 0000 10B4     		push	{r4}
 7706 0002 1468     		ldr	r4, [r2]
 7707 0004 14B9     		cbnz	r4, .L1537
 7708 0006 5DF8044B 		ldr	r4, [sp], #4
 7709 000a 7047     		bx	lr
 7710              	.L1537:
 7711 000c 5DF8044B 		ldr	r4, [sp], #4
 7712 0010 FFF7FEBF 		b	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33
 7713              		.size	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb, .-_ZN8Platform13ReportDriversE11MessageTyp
 7714              		.section	.text._ZN8Platform13PrintUniqueIdE11MessageType,"ax",%progbits
 7715              		.align	1
 7716              		.p2align 2,,3
 7717              		.global	_ZN8Platform13PrintUniqueIdE11MessageType
 7718              		.syntax unified
 7719              		.thumb
 7720              		.thumb_func
 7721              		.fpu fpv4-sp-d16
 7722              		.type	_ZN8Platform13PrintUniqueIdE11MessageType, %function
 7723              	_ZN8Platform13PrintUniqueIdE11MessageType:
 7724              		@ args = 0, pretend = 0, frame = 40
 7725              		@ frame_needed = 0, uses_anonymous_args = 0
 7726 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 7727 0004 8BB0     		sub	sp, sp, #44
 7728 0006 2E4F     		ldr	r7, .L1551
 7729 0008 01AE     		add	r6, sp, #4
 7730 000a 0022     		movs	r2, #0
 7731 000c 4FF02D0C 		mov	ip, #45
 7732 0010 1BE0     		b	.L1543
 7733              	.L1550:
 7734 0012 002A     		cmp	r2, #0
 7735 0014 50D0     		beq	.L1545
 7736 0016 06F802CB 		strb	ip, [r6], #2
 7737 001a C846     		mov	r8, r9
 7738 001c B146     		mov	r9, r6
 7739              	.L1539:
 7740 001e 1B2C     		cmp	r4, #27
 7741 0020 06D9     		bls	.L1540
 7742 0022 DEF8E830 		ldr	r3, [lr, #232]
 7743 0026 C4F12004 		rsb	r4, r4, #32
 7744 002a 03FA04F4 		lsl	r4, r3, r4
 7745 002e 2543     		orrs	r5, r5, r4
 7746              	.L1540:
 7747 0030 05F01F03 		and	r3, r5, #31
 7748 0034 092B     		cmp	r3, #9
 7749 0036 DCB2     		uxtb	r4, r3
 7750 0038 1ED8     		bhi	.L1541
 7751 003a 04F13003 		add	r3, r4, #48
 7752              	.L1542:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 137


 7753 003e 0132     		adds	r2, r2, #1
 7754 0040 1E2A     		cmp	r2, #30
 7755 0042 88F80030 		strb	r3, [r8]
 7756 0046 4E46     		mov	r6, r9
 7757 0048 2CD0     		beq	.L1549
 7758              	.L1543:
 7759 004a 02EB8204 		add	r4, r2, r2, lsl #2
 7760 004e 4FEA541E 		lsr	lr, r4, #5
 7761 0052 A7FB0253 		umull	r5, r3, r7, r2
 7762 0056 00EB8E0E 		add	lr, r0, lr, lsl #2
 7763 005a 9B08     		lsrs	r3, r3, #2
 7764 005c DEF8E450 		ldr	r5, [lr, #228]
 7765 0060 03EB8303 		add	r3, r3, r3, lsl #2
 7766 0064 04F01F04 		and	r4, r4, #31
 7767 0068 9A42     		cmp	r2, r3
 7768 006a 25FA04F5 		lsr	r5, r5, r4
 7769 006e 06F10109 		add	r9, r6, #1
 7770 0072 CED0     		beq	.L1550
 7771 0074 B046     		mov	r8, r6
 7772 0076 D2E7     		b	.L1539
 7773              	.L1541:
 7774 0078 04F13703 		add	r3, r4, #55
 7775 007c 422B     		cmp	r3, #66
 7776 007e DED9     		bls	.L1542
 7777 0080 0C2C     		cmp	r4, #12
 7778 0082 1BD0     		beq	.L1546
 7779 0084 04F13903 		add	r3, r4, #57
 7780 0088 482B     		cmp	r3, #72
 7781 008a D8D9     		bls	.L1542
 7782 008c 04F13A03 		add	r3, r4, #58
 7783 0090 4E2B     		cmp	r3, #78
 7784 0092 D4D9     		bls	.L1542
 7785 0094 0132     		adds	r2, r2, #1
 7786 0096 04F13B03 		add	r3, r4, #59
 7787 009a 1E2A     		cmp	r2, #30
 7788 009c 88F80030 		strb	r3, [r8]
 7789 00a0 4E46     		mov	r6, r9
 7790 00a2 D2D1     		bne	.L1543
 7791              	.L1549:
 7792 00a4 0022     		movs	r2, #0
 7793 00a6 88F80120 		strb	r2, [r8, #1]
 7794 00aa 01AB     		add	r3, sp, #4
 7795 00ac 054A     		ldr	r2, .L1551+4
 7796 00ae FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7797 00b2 0BB0     		add	sp, sp, #44
 7798              		@ sp needed
 7799 00b4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 7800              	.L1545:
 7801 00b8 B046     		mov	r8, r6
 7802 00ba B9E7     		b	.L1540
 7803              	.L1546:
 7804 00bc 4423     		movs	r3, #68
 7805 00be BEE7     		b	.L1542
 7806              	.L1552:
 7807              		.align	2
 7808              	.L1551:
 7809 00c0 CDCCCCCC 		.word	-858993459
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 138


 7810 00c4 00000000 		.word	.LC51
 7811              		.size	_ZN8Platform13PrintUniqueIdE11MessageType, .-_ZN8Platform13PrintUniqueIdE11MessageType
 7812              		.global	__aeabi_uldivmod
 7813              		.section	.text._ZN8Platform11SetDateTimeEx,"ax",%progbits
 7814              		.align	1
 7815              		.p2align 2,,3
 7816              		.global	_ZN8Platform11SetDateTimeEx
 7817              		.syntax unified
 7818              		.thumb
 7819              		.thumb_func
 7820              		.fpu fpv4-sp-d16
 7821              		.type	_ZN8Platform11SetDateTimeEx, %function
 7822              	_ZN8Platform11SetDateTimeEx:
 7823              		@ args = 0, pretend = 0, frame = 48
 7824              		@ frame_needed = 0, uses_anonymous_args = 0
 7825 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 7826 0002 8FB0     		sub	sp, sp, #60
 7827 0004 0446     		mov	r4, r0
 7828 0006 05A9     		add	r1, sp, #20
 7829 0008 02A8     		add	r0, sp, #8
 7830 000a CDE90223 		strd	r2, [sp, #8]
 7831 000e FFF7FEFF 		bl	gmtime_r
 7832 0012 0028     		cmp	r0, #0
 7833 0014 14BF     		ite	ne
 7834 0016 0125     		movne	r5, #1
 7835 0018 0025     		moveq	r5, #0
 7836 001a 2AD0     		beq	.L1554
 7837 001c DDE90223 		ldrd	r2, [sp, #8]
 7838 0020 04F62841 		addw	r1, r4, #3112
 7839 0024 C1E90023 		strd	r2, [r1]
 7840 0028 FFF7FEFF 		bl	millis64
 7841 002c 4FF47A72 		mov	r2, #1000
 7842 0030 0023     		movs	r3, #0
 7843 0032 FFF7FEFF 		bl	__aeabi_uldivmod
 7844 0036 104B     		ldr	r3, .L1559
 7845 0038 104F     		ldr	r7, .L1559+4
 7846 003a 114A     		ldr	r2, .L1559+8
 7847 003c A3FB0013 		umull	r1, r3, r3, r0
 7848 0040 DB0A     		lsrs	r3, r3, #11
 7849 0042 A7FB00C6 		umull	ip, r6, r7, r0
 7850 0046 4FF46161 		mov	r1, #3600
 7851 004a 01FB1301 		mls	r1, r1, r3, r0
 7852 004e 7609     		lsrs	r6, r6, #5
 7853 0050 A7FB0171 		umull	r7, r1, r7, r1
 7854 0054 C6EB0616 		rsb	r6, r6, r6, lsl #4
 7855 0058 4909     		lsrs	r1, r1, #5
 7856 005a A0EB8600 		sub	r0, r0, r6, lsl #2
 7857 005e CDE90010 		strd	r1, r0, [sp]
 7858 0062 8021     		movs	r1, #128
 7859 0064 2046     		mov	r0, r4
 7860 0066 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7861 006a FFF7FEFF 		bl	millis
 7862 006e C4F8300C 		str	r0, [r4, #3120]
 7863              	.L1554:
 7864 0072 2846     		mov	r0, r5
 7865 0074 0FB0     		add	sp, sp, #60
 7866              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 139


 7867 0076 F0BD     		pop	{r4, r5, r6, r7, pc}
 7868              	.L1560:
 7869              		.align	2
 7870              	.L1559:
 7871 0078 C5B3A291 		.word	-1851608123
 7872 007c 89888888 		.word	-2004318071
 7873 0080 00000000 		.word	.LC52
 7874              		.size	_ZN8Platform11SetDateTimeEx, .-_ZN8Platform11SetDateTimeEx
 7875              		.section	.text._ZN8Platform7MessageE11MessageTypePKc,"ax",%progbits
 7876              		.align	1
 7877              		.p2align 2,,3
 7878              		.global	_ZN8Platform7MessageE11MessageTypePKc
 7879              		.syntax unified
 7880              		.thumb
 7881              		.thumb_func
 7882              		.fpu fpv4-sp-d16
 7883              		.type	_ZN8Platform7MessageE11MessageTypePKc, %function
 7884              	_ZN8Platform7MessageE11MessageTypePKc:
 7885              		@ args = 0, pretend = 0, frame = 1040
 7886              		@ frame_needed = 0, uses_anonymous_args = 0
 7887 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7888 0004 11F4407F 		tst	r1, #768
 7889 0008 ADF5826D 		sub	sp, sp, #1040
 7890 000c 1DD0     		beq	.L1567
 7891 000e 0C46     		mov	r4, r1
 7892 0010 114B     		ldr	r3, .L1568
 7893 0012 1249     		ldr	r1, .L1568+4
 7894 0014 14F4807F 		tst	r4, #256
 7895 0018 9046     		mov	r8, r2
 7896 001a 18BF     		it	ne
 7897 001c 1946     		movne	r1, r3
 7898 001e 03AD     		add	r5, sp, #12
 7899 0020 0023     		movs	r3, #0
 7900 0022 0746     		mov	r7, r0
 7901 0024 40F20146 		movw	r6, #1025
 7902 0028 01A8     		add	r0, sp, #4
 7903 002a 8DF80C30 		strb	r3, [sp, #12]
 7904 002e CDE90156 		strd	r5, r6, [sp, #4]
 7905 0032 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7906 0036 4146     		mov	r1, r8
 7907 0038 01A8     		add	r0, sp, #4
 7908 003a CDE90156 		strd	r5, r6, [sp, #4]
 7909 003e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7910 0042 24F44071 		bic	r1, r4, #768
 7911 0046 2A46     		mov	r2, r5
 7912 0048 3846     		mov	r0, r7
 7913              	.L1567:
 7914 004a FFF7FEFF 		bl	_ZN8Platform10RawMessageE11MessageTypePKc
 7915 004e 0DF5826D 		add	sp, sp, #1040
 7916              		@ sp needed
 7917 0052 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7918              	.L1569:
 7919 0056 00BF     		.align	2
 7920              	.L1568:
 7921 0058 00000000 		.word	.LC45
 7922 005c 08000000 		.word	.LC46
 7923              		.size	_ZN8Platform7MessageE11MessageTypePKc, .-_ZN8Platform7MessageE11MessageTypePKc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 140


 7924              		.section	.text._ZN8Platform12SetEmulatingE13Compatibility,"ax",%progbits
 7925              		.align	1
 7926              		.p2align 2,,3
 7927              		.global	_ZN8Platform12SetEmulatingE13Compatibility
 7928              		.syntax unified
 7929              		.thumb
 7930              		.thumb_func
 7931              		.fpu fpv4-sp-d16
 7932              		.type	_ZN8Platform12SetEmulatingE13Compatibility, %function
 7933              	_ZN8Platform12SetEmulatingE13Compatibility:
 7934              		@ args = 0, pretend = 0, frame = 0
 7935              		@ frame_needed = 0, uses_anonymous_args = 0
 7936              		@ link register save eliminated.
 7937 0000 0229     		cmp	r1, #2
 7938 0002 05D8     		bhi	.L1573
 7939 0004 0129     		cmp	r1, #1
 7940 0006 08BF     		it	eq
 7941 0008 0021     		moveq	r1, #0
 7942 000a 80F8FB10 		strb	r1, [r0, #251]
 7943 000e 7047     		bx	lr
 7944              	.L1573:
 7945 0010 024A     		ldr	r2, .L1574
 7946 0012 40F2B511 		movw	r1, #437
 7947 0016 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 7948              	.L1575:
 7949 001a 00BF     		.align	2
 7950              	.L1574:
 7951 001c 00000000 		.word	.LC53
 7952              		.size	_ZN8Platform12SetEmulatingE13Compatibility, .-_ZN8Platform12SetEmulatingE13Compatibility
 7953              		.section	.text._ZN8Platform11DiagnosticsE11MessageType,"ax",%progbits
 7954              		.align	1
 7955              		.p2align 2,,3
 7956              		.global	_ZN8Platform11DiagnosticsE11MessageType
 7957              		.syntax unified
 7958              		.thumb
 7959              		.thumb_func
 7960              		.fpu fpv4-sp-d16
 7961              		.type	_ZN8Platform11DiagnosticsE11MessageType, %function
 7962              	_ZN8Platform11DiagnosticsE11MessageType:
 7963              		@ args = 0, pretend = 0, frame = 784
 7964              		@ frame_needed = 0, uses_anonymous_args = 0
 7965 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 7966 0004 2DED068B 		vpush.64	{d8, d9, d10}
 7967 0008 DFF8E883 		ldr	r8, .L1626+112
 7968 000c DD4A     		ldr	r2, .L1626
 7969 000e D8F83430 		ldr	r3, [r8, #52]
 7970 0012 DD4E     		ldr	r6, .L1626+4
 7971 0014 DD4F     		ldr	r7, .L1626+8
 7972 0016 DFF8E0A3 		ldr	r10, .L1626+116
 7973 001a ADF54F7D 		sub	sp, sp, #828
 7974 001e 0446     		mov	r4, r0
 7975 0020 0A93     		str	r3, [sp, #40]
 7976 0022 8B46     		mov	fp, r1
 7977 0024 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7978 0028 FFF7FEFF 		bl	millis64
 7979 002c 4FF47A72 		mov	r2, #1000
 7980 0030 0023     		movs	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 141


 7981 0032 FFF7FEFF 		bl	__aeabi_uldivmod
 7982 0036 D64B     		ldr	r3, .L1626+12
 7983 0038 8446     		mov	ip, r0
 7984 003a D3F800E0 		ldr	lr, [r3]
 7985 003e 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 7986 0040 0DF13809 		add	r9, sp, #56
 7987 0044 4D46     		mov	r5, r9
 7988 0046 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 7989 0048 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 7990 004c 85E80F00 		stm	r5, {r0, r1, r2, r3}
 7991 0050 A7FB0C23 		umull	r2, r3, r7, ip
 7992 0054 AAFB0C01 		umull	r0, r1, r10, ip
 7993 0058 DB0A     		lsrs	r3, r3, #11
 7994 005a 4FF46162 		mov	r2, #3600
 7995 005e 02FB13C2 		mls	r2, r2, r3, ip
 7996 0062 CEF3022E 		ubfx	lr, lr, #8, #3
 7997 0066 4909     		lsrs	r1, r1, #5
 7998 0068 AAFB022A 		umull	r2, r10, r10, r2
 7999 006c C1EB0111 		rsb	r1, r1, r1, lsl #4
 8000 0070 59F82E00 		ldr	r0, [r9, lr, lsl #2]
 8001 0074 0290     		str	r0, [sp, #8]
 8002 0076 ACEB8101 		sub	r1, ip, r1, lsl #2
 8003 007a 4FEA5A12 		lsr	r2, r10, #5
 8004 007e CDE90021 		strd	r2, r1, [sp]
 8005 0082 2046     		mov	r0, r4
 8006 0084 5946     		mov	r1, fp
 8007 0086 C34A     		ldr	r2, .L1626+16
 8008 0088 4EAD     		add	r5, sp, #312
 8009 008a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8010 008e 2846     		mov	r0, r5
 8011 0090 4FF40072 		mov	r2, #512
 8012 0094 0021     		movs	r1, #0
 8013 0096 FFF7FEFF 		bl	memset
 8014              		.syntax unified
 8015              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 8016 009a EFF3108A 		MRS r10, primask
 8017              	@ 0 "" 2
 8018              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 8019 009e 72B6     		cpsid i
 8020              	@ 0 "" 2
 8021              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 8022 00a0 BFF35F8F 		dmb
 8023              	@ 0 "" 2
 8024              		.thumb
 8025              		.syntax unified
 8026 00a4 BC4E     		ldr	r6, .L1626+20
 8027 00a6 0023     		movs	r3, #0
 8028 00a8 3370     		strb	r3, [r6]
 8029 00aa 2846     		mov	r0, r5
 8030 00ac C8F80830 		str	r3, [r8, #8]
 8031 00b0 8021     		movs	r1, #128
 8032 00b2 FFF7FEFF 		bl	flash_read_user_signature
 8033 00b6 0127     		movs	r7, #1
 8034 00b8 8146     		mov	r9, r0
 8035 00ba C8F82070 		str	r7, [r8, #32]
 8036 00be 4046     		mov	r0, r8
 8037 00c0 FFF7FEFF 		bl	cmcc_enable
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 142


 8038 00c4 BAF1000F 		cmp	r10, #0
 8039 00c8 00F09A81 		beq	.L1624
 8040              	.L1577:
 8041 00cc B9F1000F 		cmp	r9, #0
 8042 00d0 0AD1     		bne	.L1579
 8043 00d2 0326     		movs	r6, #3
 8044 00d4 4FF6FF72 		movw	r2, #65535
 8045              	.L1578:
 8046 00d8 F701     		lsls	r7, r6, #7
 8047 00da EB5B     		ldrh	r3, [r5, r7]
 8048 00dc 9342     		cmp	r3, r2
 8049 00de 40F09481 		bne	.L1625
 8050 00e2 16F1FF36 		adds	r6, r6, #-1
 8051 00e6 F7D2     		bcs	.L1578
 8052              	.L1579:
 8053 00e8 AC4A     		ldr	r2, .L1626+24
 8054 00ea 5946     		mov	r1, fp
 8055 00ec 2046     		mov	r0, r4
 8056 00ee FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8057 00f2 0DF1580A 		add	r10, sp, #88
 8058              	.L1588:
 8059 00f6 D4F8FC30 		ldr	r3, [r4, #252]
 8060 00fa A94A     		ldr	r2, .L1626+28
 8061 00fc A94E     		ldr	r6, .L1626+32
 8062 00fe DFEDAA8A 		vldr.32	s17, .L1626+36
 8063 0102 DFEDAAAA 		vldr.32	s21, .L1626+40
 8064 0106 9FEDAAAA 		vldr.32	s20, .L1626+44
 8065 010a 9FEDAA9A 		vldr.32	s18, .L1626+48
 8066 010e 5946     		mov	r1, fp
 8067 0110 2046     		mov	r0, r4
 8068 0112 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8069 0116 D4F8DC0B 		ldr	r0, [r4, #3036]
 8070 011a FFF7FEFF 		bl	_ZNK11MassStorage15GetNumFreeFilesEv
 8071 011e A64A     		ldr	r2, .L1626+52
 8072 0120 0346     		mov	r3, r0
 8073 0122 5946     		mov	r1, fp
 8074 0124 2046     		mov	r0, r4
 8075 0126 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8076 012a 0021     		movs	r1, #0
 8077 012c D4F8DC0B 		ldr	r0, [r4, #3036]
 8078 0130 FFF7FEFF 		bl	_ZNK11MassStorage14IsCardDetectedEj
 8079 0134 A14B     		ldr	r3, .L1626+56
 8080 0136 0028     		cmp	r0, #0
 8081 0138 08BF     		it	eq
 8082 013a 1E46     		moveq	r6, r3
 8083 013c FFF7FEFF 		bl	hsmci_get_speed
 8084 0140 07EE100A 		vmov	s14, r0	@ int
 8085 0144 DFED9E7A 		vldr.32	s15, .L1626+60
 8086 0148 B8EE477A 		vcvt.f32.u32	s14, s14
 8087 014c B3EE0B8A 		vmov.f32	s16, #2.7e+1
 8088 0150 67EE277A 		vmul.f32	s15, s14, s15
 8089 0154 17EE900A 		vmov	r0, s15
 8090 0158 FFF7FEFF 		bl	__aeabi_f2d
 8091 015c 3346     		mov	r3, r6
 8092 015e 994A     		ldr	r2, .L1626+64
 8093 0160 CDE90001 		strd	r0, [sp]
 8094 0164 5946     		mov	r1, fp
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 143


 8095 0166 2046     		mov	r0, r4
 8096 0168 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8097 016c FFF7FEFF 		bl	_ZN9FileStore27GetAndClearLongestWriteTimeEv
 8098 0170 8DED0B0A 		vstr.32	s0, [sp, #44]	@ int
 8099 0174 FFF7FEFF 		bl	_ZN9FileStore24GetAndClearMaxRetryCountEv
 8100 0178 9DED0B0A 		vldr.32	s0, [sp, #44]	@ int
 8101 017c 0290     		str	r0, [sp, #8]
 8102 017e 10EE100A 		vmov	r0, s0
 8103 0182 FFF7FEFF 		bl	__aeabi_f2d
 8104 0186 904A     		ldr	r2, .L1626+68
 8105 0188 CDE90001 		strd	r0, [sp]
 8106 018c 5946     		mov	r1, fp
 8107 018e 2046     		mov	r0, r4
 8108 0190 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8109 0194 D4F89037 		ldr	r3, [r4, #1936]
 8110 0198 D4F88867 		ldr	r6, [r4, #1928]
 8111 019c 07EE903A 		vmov	s15, r3	@ int
 8112 01a0 F8EE677A 		vcvt.f32.u32	s15, s15
 8113 01a4 B0EE687A 		vmov.f32	s14, s17
 8114 01a8 A7EEAA7A 		vfma.f32	s14, s15, s21
 8115 01ac 04F5F363 		add	r3, r4, #1944
 8116 01b0 D3ED009A 		vldr.32	s19, [r3]
 8117 01b4 F0EE477A 		vmov.f32	s15, s14
 8118 01b8 B0EE487A 		vmov.f32	s14, s16
 8119 01bc A7EE8A7A 		vfma.f32	s14, s15, s20
 8120 01c0 77EE297A 		vadd.f32	s15, s14, s19
 8121 01c4 17EE900A 		vmov	r0, s15
 8122 01c8 FFF7FEFF 		bl	__aeabi_f2d
 8123 01cc 07EE906A 		vmov	s15, r6	@ int
 8124 01d0 F8EE677A 		vcvt.f32.u32	s15, s15
 8125 01d4 B0EE687A 		vmov.f32	s14, s17
 8126 01d8 A7EEAA7A 		vfma.f32	s14, s15, s21
 8127 01dc CDE90401 		strd	r0, [sp, #16]
 8128 01e0 F0EE477A 		vmov.f32	s15, s14
 8129 01e4 B0EE487A 		vmov.f32	s14, s16
 8130 01e8 A7EE8A7A 		vfma.f32	s14, s15, s20
 8131 01ec 77EE297A 		vadd.f32	s15, s14, s19
 8132 01f0 17EE900A 		vmov	r0, s15
 8133 01f4 FFF7FEFF 		bl	__aeabi_f2d
 8134 01f8 D4F89437 		ldr	r3, [r4, #1940]
 8135 01fc 07EE903A 		vmov	s15, r3	@ int
 8136 0200 F8EE677A 		vcvt.f32.u32	s15, s15
 8137 0204 CDE90201 		strd	r0, [sp, #8]
 8138 0208 E7EEAA8A 		vfma.f32	s17, s15, s21
 8139 020c A8EE8A8A 		vfma.f32	s16, s17, s20
 8140 0210 78EE297A 		vadd.f32	s15, s16, s19
 8141 0214 17EE900A 		vmov	r0, s15
 8142 0218 FFF7FEFF 		bl	__aeabi_f2d
 8143 021c 6B4A     		ldr	r2, .L1626+72
 8144 021e CDE90001 		strd	r0, [sp]
 8145 0222 5946     		mov	r1, fp
 8146 0224 2046     		mov	r0, r4
 8147 0226 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8148 022a B4F8023C 		ldrh	r3, [r4, #3074]
 8149 022e C4F89067 		str	r6, [r4, #1936]
 8150 0232 07EE903A 		vmov	s15, r3	@ int
 8151 0236 F8EEE77A 		vcvt.f32.s32	s15, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 144


 8152 023a C4F89467 		str	r6, [r4, #1940]
 8153 023e 67EE897A 		vmul.f32	s15, s15, s18
 8154 0242 17EE900A 		vmov	r0, s15
 8155 0246 FFF7FEFF 		bl	__aeabi_f2d
 8156 024a B4F8FE3B 		ldrh	r3, [r4, #3070]
 8157 024e 07EE903A 		vmov	s15, r3	@ int
 8158 0252 F8EEE77A 		vcvt.f32.s32	s15, s15
 8159 0256 8046     		mov	r8, r0
 8160 0258 67EE897A 		vmul.f32	s15, s15, s18
 8161 025c 8946     		mov	r9, r1
 8162 025e 17EE900A 		vmov	r0, s15
 8163 0262 FFF7FEFF 		bl	__aeabi_f2d
 8164 0266 B4F8003C 		ldrh	r3, [r4, #3072]
 8165 026a 07EE903A 		vmov	s15, r3	@ int
 8166 026e F8EEE77A 		vcvt.f32.s32	s15, s15
 8167 0272 0646     		mov	r6, r0
 8168 0274 67EE897A 		vmul.f32	s15, s15, s18
 8169 0278 0F46     		mov	r7, r1
 8170 027a 17EE900A 		vmov	r0, s15
 8171 027e FFF7FEFF 		bl	__aeabi_f2d
 8172 0282 94F85DC4 		ldrb	ip, [r4, #1117]	@ zero_extendqisi2
 8173 0286 524A     		ldr	r2, .L1626+76
 8174 0288 524B     		ldr	r3, .L1626+80
 8175 028a CDE90089 		strd	r8, [sp]
 8176 028e BCF1000F 		cmp	ip, #0
 8177 0292 08BF     		it	eq
 8178 0294 1346     		moveq	r3, r2
 8179 0296 D4F8142C 		ldr	r2, [r4, #3092]
 8180 029a D4F80CCC 		ldr	ip, [r4, #3084]
 8181 029e 0893     		str	r3, [sp, #32]
 8182 02a0 CDE90401 		strd	r0, [sp, #16]
 8183 02a4 CDE906C2 		strd	ip, r2, [sp, #24]
 8184 02a8 CDE90267 		strd	r6, [sp, #8]
 8185 02ac 4A4A     		ldr	r2, .L1626+84
 8186 02ae 5946     		mov	r1, fp
 8187 02b0 2046     		mov	r0, r4
 8188 02b2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8189 02b6 B4F8FE3B 		ldrh	r3, [r4, #3070]
 8190 02ba D4F81C24 		ldr	r2, [r4, #1052]
 8191 02be 9BB2     		uxth	r3, r3
 8192 02c0 A4F8003C 		strh	r3, [r4, #3072]	@ movhi
 8193 02c4 A4F8023C 		strh	r3, [r4, #3074]	@ movhi
 8194 02c8 C2B1     		cbz	r2, .L1591
 8195 02ca 0026     		movs	r6, #0
 8196 02cc DFF82C91 		ldr	r9, .L1626+120
 8197 02d0 B046     		mov	r8, r6
 8198 02d2 6527     		movs	r7, #101
 8199              	.L1592:
 8200 02d4 3046     		mov	r0, r6
 8201 02d6 5146     		mov	r1, r10
 8202 02d8 85F80080 		strb	r8, [r5]
 8203 02dc CAE90057 		strd	r5, r7, [r10]
 8204 02e0 FFF7FEFF 		bl	_ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef
 8205 02e4 3346     		mov	r3, r6
 8206 02e6 0095     		str	r5, [sp]
 8207 02e8 4A46     		mov	r2, r9
 8208 02ea 5946     		mov	r1, fp
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 145


 8209 02ec 2046     		mov	r0, r4
 8210 02ee FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8211 02f2 D4F81C34 		ldr	r3, [r4, #1052]
 8212 02f6 0136     		adds	r6, r6, #1
 8213 02f8 B342     		cmp	r3, r6
 8214 02fa EBD8     		bhi	.L1592
 8215              	.L1591:
 8216 02fc 5946     		mov	r1, fp
 8217 02fe 2046     		mov	r0, r4
 8218 0300 364A     		ldr	r2, .L1626+88
 8219 0302 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8220 0306 2946     		mov	r1, r5
 8221 0308 04F62840 		addw	r0, r4, #3112
 8222 030c FFF7FEFF 		bl	gmtime_r
 8223 0310 0028     		cmp	r0, #0
 8224 0312 00F0A980 		beq	.L1593
 8225 0316 D5E90010 		ldrd	r1, r0, [r5]
 8226 031a D5E90423 		ldrd	r2, r3, [r5, #16]
 8227 031e 0491     		str	r1, [sp, #16]
 8228 0320 D5E90261 		ldrd	r6, r1, [r5, #8]
 8229 0324 0132     		adds	r2, r2, #1
 8230 0326 0092     		str	r2, [sp]
 8231 0328 CDE90260 		strd	r6, r0, [sp, #8]
 8232 032c 0191     		str	r1, [sp, #4]
 8233 032e 03F26C73 		addw	r3, r3, #1900
 8234 0332 2B4A     		ldr	r2, .L1626+92
 8235 0334 5946     		mov	r1, fp
 8236 0336 2046     		mov	r0, r4
 8237 0338 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8238              	.L1594:
 8239 033c 0A9B     		ldr	r3, [sp, #40]
 8240 033e 294A     		ldr	r2, .L1626+96
 8241 0340 5946     		mov	r1, fp
 8242 0342 2046     		mov	r0, r4
 8243 0344 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8244 0348 5946     		mov	r1, fp
 8245 034a 2748     		ldr	r0, .L1626+100
 8246 034c FFF7FEFF 		bl	_ZN6RepRap6TimingE11MessageType
 8247 0350 5046     		mov	r0, r10
 8248 0352 0122     		movs	r2, #1
 8249 0354 2549     		ldr	r1, .L1626+104
 8250 0356 FFF7FEFF 		bl	_ZN7TwoWire14GetErrorCountsEb
 8251 035a DAE90251 		ldrd	r5, r1, [r10, #8]
 8252 035e DAF80420 		ldr	r2, [r10, #4]
 8253 0362 DAF80030 		ldr	r3, [r10]
 8254 0366 0291     		str	r1, [sp, #8]
 8255 0368 CDE90025 		strd	r2, r5, [sp]
 8256 036c 5946     		mov	r1, fp
 8257 036e 2046     		mov	r0, r4
 8258 0370 1F4A     		ldr	r2, .L1626+108
 8259 0372 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8260 0376 0DF54F7D 		add	sp, sp, #828
 8261              		@ sp needed
 8262 037a BDEC068B 		vldm	sp!, {d8-d10}
 8263 037e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8264              	.L1627:
 8265 0382 00BF     		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 146


 8266              	.L1626:
 8267 0384 B8000000 		.word	.LC69
 8268 0388 00000000 		.word	.LANCHOR17
 8269 038c C5B3A291 		.word	-1851608123
 8270 0390 04180E40 		.word	1074665476
 8271 0394 CC000000 		.word	.LC71
 8272 0398 00000000 		.word	g_interrupt_enabled
 8273 039c 00020000 		.word	.LC78
 8274 03a0 2C020000 		.word	.LC79
 8275 03a4 94000000 		.word	.LC65
 8276 03a8 EC51B8BF 		.word	-1078439444
 8277 03ac 3333D337 		.word	936588083
 8278 03b0 16C45443 		.word	1129628694
 8279 03b4 3333113C 		.word	1007760179
 8280 03b8 40020000 		.word	.LC80
 8281 03bc A0000000 		.word	.LC66
 8282 03c0 BD378635 		.word	897988541
 8283 03c4 58020000 		.word	.LC81
 8284 03c8 88020000 		.word	.LC82
 8285 03cc C4020000 		.word	.LC83
 8286 03d0 B4000000 		.word	.LC68
 8287 03d4 B0000000 		.word	.LC67
 8288 03d8 F8020000 		.word	.LC84
 8289 03dc 80030000 		.word	.LC86
 8290 03e0 8C030000 		.word	.LC87
 8291 03e4 B8030000 		.word	.LC89
 8292 03e8 00000000 		.word	reprap
 8293 03ec 00000000 		.word	Wire
 8294 03f0 D4030000 		.word	.LC90
 8295 03f4 00400C40 		.word	1074544640
 8296 03f8 89888888 		.word	-2004318071
 8297 03fc 70030000 		.word	.LC85
 8298              	.L1624:
 8299 0400 3770     		strb	r7, [r6]
 8300              		.syntax unified
 8301              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 8302 0402 BFF35F8F 		dmb
 8303              	@ 0 "" 2
 8304              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 8305 0406 62B6     		cpsie i
 8306              	@ 0 "" 2
 8307              		.thumb
 8308              		.syntax unified
 8309 0408 60E6     		b	.L1577
 8310              	.L1625:
 8311 040a 47F60852 		movw	r2, #32008
 8312 040e 9342     		cmp	r3, r2
 8313 0410 7FF46AAE 		bne	.L1579
 8314 0414 EB19     		adds	r3, r5, r7
 8315 0416 B3F80290 		ldrh	r9, [r3, #2]
 8316 041a 19F0F009 		ands	r9, r9, #240
 8317 041e 29D0     		beq	.L1597
 8318 0420 B9F1200F 		cmp	r9, #32
 8319 0424 00F09F80 		beq	.L1598
 8320 0428 B9F1300F 		cmp	r9, #48
 8321 042c 00F09E80 		beq	.L1599
 8322 0430 B9F1400F 		cmp	r9, #64
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 147


 8323 0434 00F09D80 		beq	.L1600
 8324 0438 B9F1500F 		cmp	r9, #80
 8325 043c 00F09C80 		beq	.L1601
 8326 0440 B9F1700F 		cmp	r9, #112
 8327 0444 00F09B80 		beq	.L1602
 8328 0448 B9F1800F 		cmp	r9, #128
 8329 044c 00F09A80 		beq	.L1603
 8330 0450 B9F1900F 		cmp	r9, #144
 8331 0454 00F09980 		beq	.L1604
 8332 0458 4D4A     		ldr	r2, .L1628
 8333 045a 4E4B     		ldr	r3, .L1628+4
 8334 045c B9F1A00F 		cmp	r9, #160
 8335 0460 0CBF     		ite	eq
 8336 0462 9146     		moveq	r9, r2
 8337 0464 9946     		movne	r9, r3
 8338 0466 07E0     		b	.L1582
 8339              	.L1593:
 8340 0468 4B4A     		ldr	r2, .L1628+8
 8341 046a 5946     		mov	r1, fp
 8342 046c 2046     		mov	r0, r4
 8343 046e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8344 0472 63E7     		b	.L1594
 8345              	.L1597:
 8346 0474 DFF84491 		ldr	r9, .L1628+44
 8347              	.L1582:
 8348 0478 EB19     		adds	r3, r5, r7
 8349 047a 0DF1580A 		add	r10, sp, #88
 8350 047e DA69     		ldr	r2, [r3, #28]
 8351 0480 0023     		movs	r3, #0
 8352 0482 8AF80030 		strb	r3, [r10]
 8353 0486 002A     		cmp	r2, #0
 8354 0488 65D0     		beq	.L1583
 8355 048a 0CA8     		add	r0, sp, #48
 8356 048c CDE90C23 		strd	r2, r3, [sp, #48]
 8357 0490 FFF7FEFF 		bl	gmtime
 8358 0494 4368     		ldr	r3, [r0, #4]
 8359 0496 4149     		ldr	r1, .L1628+12
 8360 0498 D0E904C2 		ldrd	ip, r2, [r0, #16]
 8361 049c 0293     		str	r3, [sp, #8]
 8362 049e 8368     		ldr	r3, [r0, #8]
 8363 04a0 0193     		str	r3, [sp, #4]
 8364 04a2 C068     		ldr	r0, [r0, #12]
 8365 04a4 0090     		str	r0, [sp]
 8366 04a6 0CF10103 		add	r3, ip, #1
 8367 04aa 02F26C72 		addw	r2, r2, #1900
 8368 04ae 5046     		mov	r0, r10
 8369 04b0 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 8370              	.L1584:
 8371 04b4 05EB0708 		add	r8, r5, r7
 8372 04b8 3949     		ldr	r1, .L1628+16
 8373 04ba B8F80230 		ldrh	r3, [r8, #2]
 8374 04be 3948     		ldr	r0, .L1628+20
 8375 04c0 0496     		str	r6, [sp, #16]
 8376 04c2 13F4004F 		tst	r3, #32768
 8377 04c6 03F00F03 		and	r3, r3, #15
 8378 04ca 374A     		ldr	r2, .L1628+24
 8379 04cc 51F82310 		ldr	r1, [r1, r3, lsl #2]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 148


 8380 04d0 D8F80430 		ldr	r3, [r8, #4]
 8381 04d4 08BF     		it	eq
 8382 04d6 0246     		moveq	r2, r0
 8383 04d8 CDE90213 		strd	r1, r3, [sp, #8]
 8384 04dc CDE90029 		strd	r2, r9, [sp]
 8385 04e0 5346     		mov	r3, r10
 8386 04e2 324A     		ldr	r2, .L1628+28
 8387 04e4 5946     		mov	r1, fp
 8388 04e6 2046     		mov	r0, r4
 8389 04e8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8390 04ec D8E90562 		ldrd	r6, r2, [r8, #20]
 8391 04f0 D8F82010 		ldr	r1, [r8, #32]
 8392 04f4 B8F80230 		ldrh	r3, [r8, #2]
 8393 04f8 D8F81000 		ldr	r0, [r8, #16]
 8394 04fc 0591     		str	r1, [sp, #20]
 8395 04fe D8F80C10 		ldr	r1, [r8, #12]
 8396 0502 0492     		str	r2, [sp, #16]
 8397 0504 D8F80820 		ldr	r2, [r8, #8]
 8398 0508 CDE90206 		strd	r0, r6, [sp, #8]
 8399 050c CDE90021 		strd	r2, r1, [sp]
 8400 0510 2046     		mov	r0, r4
 8401 0512 274A     		ldr	r2, .L1628+32
 8402 0514 5946     		mov	r1, fp
 8403 0516 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8404 051a D8F81830 		ldr	r3, [r8, #24]
 8405 051e 0133     		adds	r3, r3, #1
 8406 0520 3FF4E9AD 		beq	.L1588
 8407 0524 0023     		movs	r3, #0
 8408 0526 07F12006 		add	r6, r7, #32
 8409 052a 8AF80030 		strb	r3, [r10]
 8410 052e DFF89080 		ldr	r8, .L1628+48
 8411 0532 6DAB     		add	r3, sp, #436
 8412 0534 2E44     		add	r6, r6, r5
 8413 0536 1F44     		add	r7, r7, r3
 8414              	.L1587:
 8415 0538 56F8042F 		ldr	r2, [r6, #4]!
 8416 053c 4146     		mov	r1, r8
 8417 053e 5046     		mov	r0, r10
 8418 0540 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 8419 0544 BE42     		cmp	r6, r7
 8420 0546 F7D1     		bne	.L1587
 8421 0548 5346     		mov	r3, r10
 8422 054a 1A4A     		ldr	r2, .L1628+36
 8423 054c 5946     		mov	r1, fp
 8424 054e 2046     		mov	r0, r4
 8425 0550 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8426 0554 CFE5     		b	.L1588
 8427              	.L1583:
 8428 0556 DD23     		movs	r3, #221
 8429 0558 0CA8     		add	r0, sp, #48
 8430 055a 1749     		ldr	r1, .L1628+40
 8431 055c CDE90CA3 		strd	r10, r3, [sp, #48]
 8432 0560 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8433 0564 A6E7     		b	.L1584
 8434              	.L1598:
 8435 0566 DFF85C90 		ldr	r9, .L1628+52
 8436 056a 85E7     		b	.L1582
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 149


 8437              	.L1599:
 8438 056c DFF85890 		ldr	r9, .L1628+56
 8439 0570 82E7     		b	.L1582
 8440              	.L1600:
 8441 0572 DFF85890 		ldr	r9, .L1628+60
 8442 0576 7FE7     		b	.L1582
 8443              	.L1601:
 8444 0578 DFF85490 		ldr	r9, .L1628+64
 8445 057c 7CE7     		b	.L1582
 8446              	.L1602:
 8447 057e DFF85490 		ldr	r9, .L1628+68
 8448 0582 79E7     		b	.L1582
 8449              	.L1603:
 8450 0584 DFF85090 		ldr	r9, .L1628+72
 8451 0588 76E7     		b	.L1582
 8452              	.L1604:
 8453 058a DFF85090 		ldr	r9, .L1628+76
 8454 058e 73E7     		b	.L1582
 8455              	.L1629:
 8456              		.align	2
 8457              	.L1628:
 8458 0590 78000000 		.word	.LC63
 8459 0594 70000000 		.word	.LC62
 8460 0598 AC030000 		.word	.LC88
 8461 059c F8000000 		.word	.LC72
 8462 05a0 00000000 		.word	moduleName
 8463 05a4 00000000 		.word	.LC18
 8464 05a8 88000000 		.word	.LC64
 8465 05ac 24010000 		.word	.LC74
 8466 05b0 84010000 		.word	.LC75
 8467 05b4 F4010000 		.word	.LC77
 8468 05b8 14010000 		.word	.LC73
 8469 05bc 04000000 		.word	.LC55
 8470 05c0 EC010000 		.word	.LC76
 8471 05c4 00000000 		.word	.LC54
 8472 05c8 0C000000 		.word	.LC56
 8473 05cc 18000000 		.word	.LC57
 8474 05d0 2C000000 		.word	.LC58
 8475 05d4 40000000 		.word	.LC59
 8476 05d8 4C000000 		.word	.LC60
 8477 05dc 5C000000 		.word	.LC61
 8478              		.size	_ZN8Platform11DiagnosticsE11MessageType, .-_ZN8Platform11DiagnosticsE11MessageType
 8479              		.global	__aeabi_ui2d
 8480              		.global	__aeabi_ddiv
 8481              		.section	.text._ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi,"ax",%progbits
 8482              		.align	1
 8483              		.p2align 2,,3
 8484              		.global	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi
 8485              		.syntax unified
 8486              		.thumb
 8487              		.thumb_func
 8488              		.fpu fpv4-sp-d16
 8489              		.type	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi, %function
 8490              	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi:
 8491              		@ args = 0, pretend = 0, frame = 24
 8492              		@ frame_needed = 0, uses_anonymous_args = 0
 8493 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 150


 8494 0004 40F2E934 		movw	r4, #1001
 8495 0008 A342     		cmp	r3, r4
 8496 000a 8DB0     		sub	sp, sp, #52
 8497 000c 00F0EC81 		beq	.L1632
 8498 0010 0792     		str	r2, [sp, #28]
 8499 0012 0E46     		mov	r6, r1
 8500 0014 0546     		mov	r5, r0
 8501 0016 1C46     		mov	r4, r3
 8502 0018 17DD     		ble	.L1705
 8503 001a B3F57B7F 		cmp	r3, #1004
 8504 001e 00F0C480 		beq	.L1639
 8505 0022 00F39480 		bgt	.L1640
 8506 0026 40F2EA33 		movw	r3, #1002
 8507 002a 9C42     		cmp	r4, r3
 8508 002c 00F0B780 		beq	.L1641
 8509 0030 40F2EB33 		movw	r3, #1003
 8510 0034 9C42     		cmp	r4, r3
 8511 0036 40F0A281 		bne	.L1675
 8512 003a 0124     		movs	r4, #1
 8513 003c 80F84D4D 		strb	r4, [r0, #3405]
 8514 0040 D748     		ldr	r0, .L1715+24
 8515 0042 FFF7FEFF 		bl	debugPrintf
 8516 0046 2046     		mov	r0, r4
 8517 0048 90E0     		b	.L1631
 8518              	.L1705:
 8519 004a 642B     		cmp	r3, #100
 8520 004c 00F09381 		beq	.L1634
 8521 0050 40F3B480 		ble	.L1706
 8522 0054 652B     		cmp	r3, #101
 8523 0056 00F09980 		beq	.L1637
 8524 005a 662B     		cmp	r3, #102
 8525 005c 40F08F81 		bne	.L1675
 8526 0060 0FF22439 		adr	r9, .L1715
 8527 0064 D9E90089 		ldrd	r8, [r9]
 8528 0068 C9A5     		adr	r5, .L1715+8
 8529 006a D5E90045 		ldrd	r4, [r5]
 8530 006e DFF870A3 		ldr	r10, .L1715+88
 8531 0072 0126     		movs	r6, #1
 8532 0074 4FF0000B 		mov	fp, #0
 8533              	.L1638:
 8534 0078 08FB09F3 		mul	r3, r8, r9
 8535 007c A8FB0801 		umull	r0, r1, r8, r8
 8536 0080 01EB4301 		add	r1, r1, r3, lsl #1
 8537 0084 DAF89070 		ldr	r7, [r10, #144]
 8538 0088 FFF7FEFF 		bl	_Z7isqrt64y
 8539 008c 4045     		cmp	r0, r8
 8540 008e 18BF     		it	ne
 8541 0090 0026     		movne	r6, #0
 8542 0092 18F10108 		adds	r8, r8, #1
 8543 0096 DAF89030 		ldr	r3, [r10, #144]
 8544 009a 49F10009 		adc	r9, r9, #0
 8545 009e A945     		cmp	r9, r5
 8546 00a0 A3EB0703 		sub	r3, r3, r7
 8547 00a4 08BF     		it	eq
 8548 00a6 A045     		cmpeq	r8, r4
 8549 00a8 9B44     		add	fp, fp, r3
 8550 00aa E5D1     		bne	.L1638
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 151


 8551 00ac DFF83083 		ldr	r8, .L1715+88
 8552 00b0 4AF2C544 		movw	r4, #42181
 8553 00b4 0025     		movs	r5, #0
 8554 00b6 0127     		movs	r7, #1
 8555 00b8 4FF0000A 		mov	r10, #0
 8556 00bc B146     		mov	r9, r6
 8557              	.L1672:
 8558 00be 04FB05F3 		mul	r3, r4, r5
 8559 00c2 A4FB0401 		umull	r0, r1, r4, r4
 8560 00c6 01EB4301 		add	r1, r1, r3, lsl #1
 8561 00ca D8F89060 		ldr	r6, [r8, #144]
 8562 00ce FFF7FEFF 		bl	_Z7isqrt64y
 8563 00d2 D8F89030 		ldr	r3, [r8, #144]
 8564 00d6 A042     		cmp	r0, r4
 8565 00d8 18BF     		it	ne
 8566 00da 0027     		movne	r7, #0
 8567 00dc 9B1B     		subs	r3, r3, r6
 8568 00de 0134     		adds	r4, r4, #1
 8569 00e0 45F10005 		adc	r5, r5, #0
 8570 00e4 9A44     		add	r10, r10, r3
 8571 00e6 0023     		movs	r3, #0
 8572 00e8 4AF22952 		movw	r2, #42281
 8573 00ec 9D42     		cmp	r5, r3
 8574 00ee 08BF     		it	eq
 8575 00f0 9442     		cmpeq	r4, r2
 8576 00f2 E4D1     		bne	.L1672
 8577 00f4 42F21078 		movw	r8, #10000
 8578 00f8 08FB0BF0 		mul	r0, r8, fp
 8579 00fc FFF7FEFF 		bl	__aeabi_ui2d
 8580 0100 A5A3     		adr	r3, .L1715+16
 8581 0102 D3E90023 		ldrd	r2, [r3]
 8582 0106 FFF7FEFF 		bl	__aeabi_ddiv
 8583 010a 0446     		mov	r4, r0
 8584 010c 08FB0AF0 		mul	r0, r8, r10
 8585 0110 0D46     		mov	r5, r1
 8586 0112 FFF7FEFF 		bl	__aeabi_ui2d
 8587 0116 A0A3     		adr	r3, .L1715+16
 8588 0118 D3E90023 		ldrd	r2, [r3]
 8589 011c FFF7FEFF 		bl	__aeabi_ddiv
 8590 0120 A04B     		ldr	r3, .L1715+28
 8591 0122 A14A     		ldr	r2, .L1715+32
 8592 0124 B9F1000F 		cmp	r9, #0
 8593 0128 14BF     		ite	ne
 8594 012a 1E46     		movne	r6, r3
 8595 012c 1646     		moveq	r6, r2
 8596 012e 002F     		cmp	r7, #0
 8597 0130 14BF     		ite	ne
 8598 0132 1F46     		movne	r7, r3
 8599 0134 1746     		moveq	r7, r2
 8600 0136 CDE90201 		strd	r0, [sp, #8]
 8601 013a 2246     		mov	r2, r4
 8602 013c 2B46     		mov	r3, r5
 8603 013e 0798     		ldr	r0, [sp, #28]
 8604 0140 0096     		str	r6, [sp]
 8605 0142 0497     		str	r7, [sp, #16]
 8606 0144 9949     		ldr	r1, .L1715+36
 8607 0146 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 152


 8608 014a 0120     		movs	r0, #1
 8609 014c 0EE0     		b	.L1631
 8610              	.L1640:
 8611 014e 40F2ED33 		movw	r3, #1005
 8612 0152 9C42     		cmp	r4, r3
 8613 0154 0DD0     		beq	.L1643
 8614 0156 40F2EE33 		movw	r3, #1006
 8615 015a 9C42     		cmp	r4, r3
 8616 015c 40F00F81 		bne	.L1675
 8617 0160 0120     		movs	r0, #1
 8618 0162 4FF00253 		mov	r3, #545259520
 8619 0166 85F84D0D 		strb	r0, [r5, #3405]
 8620 016a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 8621              	.L1631:
 8622 016c 0DB0     		add	sp, sp, #52
 8623              		@ sp needed
 8624 016e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8625              	.L1643:
 8626 0172 8F4A     		ldr	r2, .L1715+40
 8627 0174 0120     		movs	r0, #1
 8628 0176 85F84D0D 		strb	r0, [r5, #3405]
 8629 017a 5369     		ldr	r3, [r2, #20]
 8630 017c 43F00803 		orr	r3, r3, #8
 8631 0180 5361     		str	r3, [r2, #20]
 8632              		.syntax unified
 8633              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 8634 0182 BFF35F8F 		dmb
 8635              	@ 0 "" 2
 8636              		.thumb
 8637              		.syntax unified
 8638 0186 8B4B     		ldr	r3, .L1715+44
 8639 0188 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 8640 018a EFE7     		b	.L1631
 8641              	.L1637:
 8642 018c FFF7FEFF 		bl	_ZN13DuetExpansion14DiagnosticReadEv
 8643 0190 8949     		ldr	r1, .L1715+48
 8644 0192 0246     		mov	r2, r0
 8645 0194 0798     		ldr	r0, [sp, #28]
 8646 0196 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8647 019a 0120     		movs	r0, #1
 8648 019c E6E7     		b	.L1631
 8649              	.L1641:
 8650 019e 0120     		movs	r0, #1
 8651 01a0 C5F8F04B 		str	r4, [r5, #3056]
 8652 01a4 85F84D0D 		strb	r0, [r5, #3405]
 8653 01a8 E0E7     		b	.L1631
 8654              	.L1639:
 8655 01aa 0124     		movs	r4, #1
 8656 01ac 80F84D4D 		strb	r4, [r0, #3405]
 8657 01b0 0021     		movs	r1, #0
 8658 01b2 2046     		mov	r0, r4
 8659 01b4 FFF7FEFF 		bl	_ZN6RepRap8DoDivideEmm
 8660 01b8 2046     		mov	r0, r4
 8661 01ba D7E7     		b	.L1631
 8662              	.L1706:
 8663 01bc 012B     		cmp	r3, #1
 8664 01be 40F0DE80 		bne	.L1675
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 153


 8665 01c2 0021     		movs	r1, #0
 8666 01c4 D0F8DC0B 		ldr	r0, [r0, #3036]
 8667 01c8 B78F     		ldrh	r7, [r6, #60]
 8668 01ca FFF7FEFF 		bl	_ZNK11MassStorage14IsCardDetectedEj
 8669 01ce 8146     		mov	r9, r0
 8670 01d0 0028     		cmp	r0, #0
 8671 01d2 00F01381 		beq	.L1707
 8672 01d6 FFF7FEFF 		bl	hsmci_get_speed
 8673 01da 784B     		ldr	r3, .L1715+52
 8674 01dc 9842     		cmp	r0, r3
 8675 01de 00F04381 		beq	.L1647
 8676 01e2 FFF7FEFF 		bl	hsmci_get_speed
 8677 01e6 07EE100A 		vmov	s14, r0	@ int
 8678 01ea DFED757A 		vldr.32	s15, .L1715+56
 8679 01ee B8EE477A 		vcvt.f32.u32	s14, s14
 8680 01f2 47F48074 		orr	r4, r7, #256
 8681 01f6 67EE277A 		vmul.f32	s15, s14, s15
 8682 01fa 17EE900A 		vmov	r0, s15
 8683 01fe FFF7FEFF 		bl	__aeabi_f2d
 8684 0202 704A     		ldr	r2, .L1715+60
 8685 0204 CDE90001 		strd	r0, [sp]
 8686 0208 2146     		mov	r1, r4
 8687 020a 2846     		mov	r0, r5
 8688 020c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8689              	.L1646:
 8690 0210 4FF0000C 		mov	ip, #0
 8691 0214 079B     		ldr	r3, [sp, #28]
 8692 0216 0093     		str	r3, [sp]
 8693 0218 0DF12704 		add	r4, sp, #39
 8694 021c CDF808C0 		str	ip, [sp, #8]
 8695 0220 0AAB     		add	r3, sp, #40
 8696 0222 0194     		str	r4, [sp, #4]
 8697 0224 0222     		movs	r2, #2
 8698 0226 5421     		movs	r1, #84
 8699 0228 3046     		mov	r0, r6
 8700 022a 8DF827C0 		strb	ip, [sp, #39]
 8701 022e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 8702 0232 0028     		cmp	r0, #0
 8703 0234 40F0EE80 		bne	.L1655
 8704 0238 9DF82780 		ldrb	r8, [sp, #39]	@ zero_extendqisi2
 8705 023c B8F1000F 		cmp	r8, #0
 8706 0240 00F01A81 		beq	.L1708
 8707 0244 D5F88837 		ldr	r3, [r5, #1928]
 8708 0248 9FED5F5A 		vldr.32	s10, .L1715+64
 8709 024c 9FED5F7A 		vldr.32	s14, .L1715+68
 8710 0250 DFED5F5A 		vldr.32	s11, .L1715+72
 8711 0254 9DED0A6A 		vldr.32	s12, [sp, #40]
 8712 0258 06EE903A 		vmov	s13, r3	@ int
 8713 025c F8EE666A 		vcvt.f32.u32	s13, s13
 8714 0260 F3EE0B7A 		vmov.f32	s15, #2.7e+1
 8715 0264 A6EE857A 		vfma.f32	s14, s13, s10
 8716 0268 05F5F363 		add	r3, r5, #1944
 8717 026c D3ED006A 		vldr.32	s13, [r3]
 8718 0270 E7EE257A 		vfma.f32	s15, s14, s11
 8719 0274 77EEA67A 		vadd.f32	s15, s15, s13
 8720 0278 B4EEE76A 		vcmpe.f32	s12, s15
 8721 027c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 154


 8722 0280 00F3E480 		bgt	.L1709
 8723 0284 9DED0B7A 		vldr.32	s14, [sp, #44]
 8724 0288 B4EEE77A 		vcmpe.f32	s14, s15
 8725 028c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8726 0290 40F1D580 		bpl	.L1695
 8727 0294 17EE900A 		vmov	r0, s15
 8728 0298 FFF7FEFF 		bl	__aeabi_f2d
 8729 029c 47F48073 		orr	r3, r7, #256
 8730 02a0 CDE90001 		strd	r0, [sp]
 8731 02a4 4B4A     		ldr	r2, .L1715+76
 8732 02a6 1946     		mov	r1, r3
 8733 02a8 2846     		mov	r0, r5
 8734 02aa FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8735              	.L1652:
 8736 02ae 4FF0000C 		mov	ip, #0
 8737 02b2 079B     		ldr	r3, [sp, #28]
 8738 02b4 0093     		str	r3, [sp]
 8739 02b6 0194     		str	r4, [sp, #4]
 8740 02b8 0AAB     		add	r3, sp, #40
 8741 02ba 3046     		mov	r0, r6
 8742 02bc CDF808C0 		str	ip, [sp, #8]
 8743 02c0 0222     		movs	r2, #2
 8744 02c2 5621     		movs	r1, #86
 8745 02c4 8DF827C0 		strb	ip, [sp, #39]
 8746 02c8 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 8747 02cc 0028     		cmp	r0, #0
 8748 02ce 40F0A180 		bne	.L1655
 8749 02d2 9DF82790 		ldrb	r9, [sp, #39]	@ zero_extendqisi2
 8750 02d6 B9F1000F 		cmp	r9, #0
 8751 02da 00F09780 		beq	.L1710
 8752 02de B5F8FE3B 		ldrh	r3, [r5, #3070]
 8753 02e2 DFED3D6A 		vldr.32	s13, .L1715+80
 8754 02e6 9DED0A7A 		vldr.32	s14, [sp, #40]
 8755 02ea 07EE903A 		vmov	s15, r3	@ int
 8756 02ee F8EEE77A 		vcvt.f32.s32	s15, s15
 8757 02f2 67EEA67A 		vmul.f32	s15, s15, s13
 8758 02f6 B4EEE77A 		vcmpe.f32	s14, s15
 8759 02fa F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8760 02fe 00F3DD80 		bgt	.L1711
 8761 0302 9DED0B7A 		vldr.32	s14, [sp, #44]
 8762 0306 B4EEE77A 		vcmpe.f32	s14, s15
 8763 030a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8764 030e 40F1B880 		bpl	.L1698
 8765 0312 17EE900A 		vmov	r0, s15
 8766 0316 FFF7FEFF 		bl	__aeabi_f2d
 8767 031a CDE90001 		strd	r0, [sp]
 8768 031e 2F4A     		ldr	r2, .L1715+84
 8769 0320 47F48073 		orr	r3, r7, #256
 8770              	.L1704:
 8771 0324 1946     		mov	r1, r3
 8772 0326 2846     		mov	r0, r5
 8773 0328 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8774 032c D5F81C34 		ldr	r3, [r5, #1052]
 8775 0330 002B     		cmp	r3, #0
 8776 0332 00F0CD80 		beq	.L1712
 8777 0336 C846     		mov	r8, r9
 8778              	.L1660:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 155


 8779 0338 DFF8A8B0 		ldr	fp, .L1715+92
 8780 033c 0024     		movs	r4, #0
 8781 033e 47F4807A 		orr	r10, r7, #256
 8782 0342 07E0     		b	.L1667
 8783              	.L1665:
 8784 0344 16F0180F 		tst	r6, #24
 8785 0348 66D1     		bne	.L1713
 8786              	.L1666:
 8787 034a D5F81C34 		ldr	r3, [r5, #1052]
 8788 034e 0134     		adds	r4, r4, #1
 8789 0350 A342     		cmp	r3, r4
 8790 0352 6AD9     		bls	.L1714
 8791              	.L1667:
 8792 0354 4FF0FF31 		mov	r1, #-1
 8793 0358 2046     		mov	r0, r4
 8794 035a FFF7FEFF 		bl	_ZN12SmartDrivers20GetAccumulatedStatusEjm
 8795 035e C307     		lsls	r3, r0, #31
 8796 0360 0646     		mov	r6, r0
 8797 0362 EFD5     		bpl	.L1665
 8798 0364 2346     		mov	r3, r4
 8799 0366 5A46     		mov	r2, fp
 8800 0368 5146     		mov	r1, r10
 8801 036a 2846     		mov	r0, r5
 8802 036c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8803 0370 4FF00009 		mov	r9, #0
 8804 0374 E6E7     		b	.L1665
 8805              	.L1634:
 8806 0376 FFF7FEFF 		bl	_ZN3DDA10PrintMovesEv
 8807 037a 0120     		movs	r0, #1
 8808 037c F6E6     		b	.L1631
 8809              	.L1675:
 8810 037e 0120     		movs	r0, #1
 8811 0380 F4E6     		b	.L1631
 8812              	.L1716:
 8813 0382 00BFAFF3 		.align	3
 8813      0080
 8814              	.L1715:
 8815 0388 3DAC6572 		.word	1919265853
 8816 038c 00000000 		.word	0
 8817 0390 A1AC6572 		.word	1919265953
 8818 0394 00000000 		.word	0
 8819 0398 00000000 		.word	0
 8820 039c 389C2C41 		.word	1093442616
 8821 03a0 18020000 		.word	.LC109
 8822 03a4 00000000 		.word	.LC91
 8823 03a8 04000000 		.word	.LC92
 8824 03ac 2C020000 		.word	.LC110
 8825 03b0 00ED00E0 		.word	-536810240
 8826 03b4 00000000 		.word	.LANCHOR18
 8827 03b8 60020000 		.word	.LC111
 8828 03bc 002D3101 		.word	20000000
 8829 03c0 BD378635 		.word	897988541
 8830 03c4 24000000 		.word	.LC94
 8831 03c8 3333D337 		.word	936588083
 8832 03cc EC51B8BF 		.word	-1078439444
 8833 03d0 16C45443 		.word	1129628694
 8834 03d4 AC000000 		.word	.LC98
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 156


 8835 03d8 3333113C 		.word	1007760179
 8836 03dc 50010000 		.word	.LC103
 8837 03e0 00000940 		.word	1074331648
 8838 03e4 94010000 		.word	.LC105
 8839              	.L1632:
 8840 03e8 0123     		movs	r3, #1
 8841 03ea 3C49     		ldr	r1, .L1717
 8842 03ec 80F84D3D 		strb	r3, [r0, #3405]
 8843 03f0 0A68     		ldr	r2, [r1]
 8844 03f2 22F00202 		bic	r2, r2, #2
 8845 03f6 1846     		mov	r0, r3
 8846 03f8 0A60     		str	r2, [r1]
 8847 03fa B7E6     		b	.L1631
 8848              	.L1707:
 8849 03fc 384A     		ldr	r2, .L1717+4
 8850 03fe 47F48071 		orr	r1, r7, #256
 8851 0402 2846     		mov	r0, r5
 8852 0404 A146     		mov	r9, r4
 8853 0406 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8854 040a 01E7     		b	.L1646
 8855              	.L1710:
 8856 040c 0798     		ldr	r0, [sp, #28]
 8857 040e 3549     		ldr	r1, .L1717+8
 8858 0410 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8859              	.L1655:
 8860 0414 0220     		movs	r0, #2
 8861 0416 A9E6     		b	.L1631
 8862              	.L1713:
 8863 0418 2346     		mov	r3, r4
 8864 041a 334A     		ldr	r2, .L1717+12
 8865 041c 5146     		mov	r1, r10
 8866 041e 2846     		mov	r0, r5
 8867 0420 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8868 0424 4FF00009 		mov	r9, #0
 8869 0428 8FE7     		b	.L1666
 8870              	.L1714:
 8871 042a B9F1000F 		cmp	r9, #0
 8872 042e 32D1     		bne	.L1668
 8873              	.L1661:
 8874 0430 2846     		mov	r0, r5
 8875 0432 3946     		mov	r1, r7
 8876 0434 2D4A     		ldr	r2, .L1717+16
 8877 0436 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8878 043a 0120     		movs	r0, #1
 8879 043c 96E6     		b	.L1631
 8880              	.L1695:
 8881 043e 2C4A     		ldr	r2, .L1717+20
 8882 0440 3946     		mov	r1, r7
 8883 0442 2846     		mov	r0, r5
 8884 0444 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8885 0448 C846     		mov	r8, r9
 8886 044a 30E7     		b	.L1652
 8887              	.L1709:
 8888 044c 17EE900A 		vmov	r0, s15
 8889 0450 FFF7FEFF 		bl	__aeabi_f2d
 8890 0454 47F48073 		orr	r3, r7, #256
 8891 0458 CDE90001 		strd	r0, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 157


 8892 045c 254A     		ldr	r2, .L1717+24
 8893 045e 1946     		mov	r1, r3
 8894 0460 2846     		mov	r0, r5
 8895 0462 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8896 0466 22E7     		b	.L1652
 8897              	.L1647:
 8898 0468 234A     		ldr	r2, .L1717+28
 8899 046a 3946     		mov	r1, r7
 8900 046c 2846     		mov	r0, r5
 8901 046e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8902 0472 4FF00009 		mov	r9, #0
 8903 0476 CBE6     		b	.L1646
 8904              	.L1708:
 8905 0478 0798     		ldr	r0, [sp, #28]
 8906 047a 2049     		ldr	r1, .L1717+32
 8907 047c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8908 0480 C8E7     		b	.L1655
 8909              	.L1698:
 8910 0482 1F4A     		ldr	r2, .L1717+36
 8911 0484 3946     		mov	r1, r7
 8912 0486 2846     		mov	r0, r5
 8913 0488 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8914 048c D5F81C34 		ldr	r3, [r5, #1052]
 8915 0490 002B     		cmp	r3, #0
 8916 0492 7FF451AF 		bne	.L1660
 8917              	.L1668:
 8918 0496 1B4A     		ldr	r2, .L1717+40
 8919 0498 3946     		mov	r1, r7
 8920 049a 2846     		mov	r0, r5
 8921 049c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8922 04a0 B8F1000F 		cmp	r8, #0
 8923 04a4 C4D1     		bne	.L1661
 8924 04a6 184A     		ldr	r2, .L1717+44
 8925 04a8 3946     		mov	r1, r7
 8926 04aa 2846     		mov	r0, r5
 8927 04ac FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8928 04b0 2846     		mov	r0, r5
 8929 04b2 3946     		mov	r1, r7
 8930 04b4 FFF7FEFF 		bl	_ZN8Platform13PrintUniqueIdE11MessageType
 8931 04b8 0120     		movs	r0, #1
 8932 04ba 57E6     		b	.L1631
 8933              	.L1711:
 8934 04bc 17EE900A 		vmov	r0, s15
 8935 04c0 FFF7FEFF 		bl	__aeabi_f2d
 8936 04c4 47F48073 		orr	r3, r7, #256
 8937 04c8 CDE90001 		strd	r0, [sp]
 8938 04cc 0F4A     		ldr	r2, .L1717+48
 8939 04ce 29E7     		b	.L1704
 8940              	.L1712:
 8941 04d0 0C4A     		ldr	r2, .L1717+40
 8942 04d2 3946     		mov	r1, r7
 8943 04d4 2846     		mov	r0, r5
 8944 04d6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8945 04da A9E7     		b	.L1661
 8946              	.L1718:
 8947              		.align	2
 8948              	.L1717:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 158


 8949 04dc 10E000E0 		.word	-536813552
 8950 04e0 0C000000 		.word	.LC93
 8951 04e4 F8000000 		.word	.LC100
 8952 04e8 B8010000 		.word	.LC106
 8953 04ec F0010000 		.word	.LC108
 8954 04f0 DC000000 		.word	.LC99
 8955 04f4 7C000000 		.word	.LC97
 8956 04f8 50000000 		.word	.LC95
 8957 04fc 68000000 		.word	.LC96
 8958 0500 80010000 		.word	.LC104
 8959 0504 3C010000 		.word	.LC102
 8960 0508 DC010000 		.word	.LC107
 8961 050c 0C010000 		.word	.LC101
 8962              		.size	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi, .-_ZN8Platform14DiagnosticTestER11
 8963              		.section	.text._ZN8Platform9SendAlertE11MessageTypePKcS2_ifm,"ax",%progbits
 8964              		.align	1
 8965              		.p2align 2,,3
 8966              		.global	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 8967              		.syntax unified
 8968              		.thumb
 8969              		.thumb_func
 8970              		.fpu fpv4-sp-d16
 8971              		.type	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm, %function
 8972              	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm:
 8973              		@ args = 8, pretend = 0, frame = 0
 8974              		@ frame_needed = 0, uses_anonymous_args = 0
 8975 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 8976 0004 11F0140F 		tst	r1, #20
 8977 0008 82B0     		sub	sp, sp, #8
 8978 000a 1E46     		mov	r6, r3
 8979 000c 0C46     		mov	r4, r1
 8980 000e 0746     		mov	r7, r0
 8981 0010 9046     		mov	r8, r2
 8982 0012 DDE90853 		ldrd	r5, r3, [sp, #32]
 8983 0016 11D1     		bne	.L1734
 8984              	.L1720:
 8985 0018 14F02104 		ands	r4, r4, #33
 8986 001c 0BD0     		beq	.L1719
 8987 001e 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 8988 0020 A3B9     		cbnz	r3, .L1735
 8989              	.L1723:
 8990 0022 4346     		mov	r3, r8
 8991 0024 134A     		ldr	r2, .L1738
 8992 0026 2146     		mov	r1, r4
 8993 0028 3846     		mov	r0, r7
 8994 002a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8995 002e 022D     		cmp	r5, #2
 8996 0030 1BD0     		beq	.L1736
 8997 0032 032D     		cmp	r5, #3
 8998 0034 11D0     		beq	.L1737
 8999              	.L1719:
 9000 0036 02B0     		add	sp, sp, #8
 9001              		@ sp needed
 9002 0038 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 9003              	.L1734:
 9004 003c 0093     		str	r3, [sp]
 9005 003e 3246     		mov	r2, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 159


 9006 0040 2B46     		mov	r3, r5
 9007 0042 4146     		mov	r1, r8
 9008 0044 0C48     		ldr	r0, .L1738+4
 9009 0046 FFF7FEFF 		bl	_ZN6RepRap8SetAlertEPKcS1_ifm
 9010 004a E5E7     		b	.L1720
 9011              	.L1735:
 9012 004c 3346     		mov	r3, r6
 9013 004e 0B4A     		ldr	r2, .L1738+8
 9014 0050 2146     		mov	r1, r4
 9015 0052 3846     		mov	r0, r7
 9016 0054 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9017 0058 E3E7     		b	.L1723
 9018              	.L1737:
 9019 005a 094A     		ldr	r2, .L1738+12
 9020 005c 2146     		mov	r1, r4
 9021 005e 3846     		mov	r0, r7
 9022              	.L1733:
 9023 0060 02B0     		add	sp, sp, #8
 9024              		@ sp needed
 9025 0062 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 9026 0066 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 9027              	.L1736:
 9028 006a 2146     		mov	r1, r4
 9029 006c 3846     		mov	r0, r7
 9030 006e 054A     		ldr	r2, .L1738+16
 9031 0070 F6E7     		b	.L1733
 9032              	.L1739:
 9033 0072 00BF     		.align	2
 9034              	.L1738:
 9035 0074 20000000 		.word	.LC50
 9036 0078 00000000 		.word	reprap
 9037 007c 00000000 		.word	.LC112
 9038 0080 20000000 		.word	.LC114
 9039 0084 08000000 		.word	.LC113
 9040              		.size	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm, .-_ZN8Platform9SendAlertE11MessageTypePKcS2_i
 9041              		.section	.text._ZN8Platform13FlushMessagesEv,"ax",%progbits
 9042              		.align	1
 9043              		.p2align 2,,3
 9044              		.global	_ZN8Platform13FlushMessagesEv
 9045              		.syntax unified
 9046              		.thumb
 9047              		.thumb_func
 9048              		.fpu fpv4-sp-d16
 9049              		.type	_ZN8Platform13FlushMessagesEv, %function
 9050              	_ZN8Platform13FlushMessagesEv:
 9051              		@ args = 0, pretend = 0, frame = 16
 9052              		@ frame_needed = 0, uses_anonymous_args = 0
 9053 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 9054 0002 85B0     		sub	sp, sp, #20
 9055 0004 0446     		mov	r4, r0
 9056 0006 FFF7FEFF 		bl	_ZN8Platform16FlushAuxMessagesEv
 9057 000a 04F67C31 		addw	r1, r4, #2940
 9058 000e 4FF0FF32 		mov	r2, #-1
 9059 0012 0546     		mov	r5, r0
 9060 0014 04F66834 		addw	r4, r4, #2920
 9061 0018 02A8     		add	r0, sp, #8
 9062 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 160


 9063 001e 2046     		mov	r0, r4
 9064 0020 FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 9065 0024 0190     		str	r0, [sp, #4]
 9066 0026 48B1     		cbz	r0, .L1742
 9067 0028 2448     		ldr	r0, .L1754
 9068 002a FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 9069 002e 90B9     		cbnz	r0, .L1743
 9070 0030 01A8     		add	r0, sp, #4
 9071 0032 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 9072 0036 2046     		mov	r0, r4
 9073 0038 FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
 9074              	.L1742:
 9075 003c 2046     		mov	r0, r4
 9076 003e FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 9077 0042 0446     		mov	r4, r0
 9078 0044 02A8     		add	r0, sp, #8
 9079 0046 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 9080 004a 2DBB     		cbnz	r5, .L1748
 9081 004c 201C     		adds	r0, r4, #0
 9082 004e 18BF     		it	ne
 9083 0050 0120     		movne	r0, #1
 9084 0052 05B0     		add	sp, sp, #20
 9085              		@ sp needed
 9086 0054 F0BD     		pop	{r4, r5, r6, r7, pc}
 9087              	.L1743:
 9088 0056 1948     		ldr	r0, .L1754
 9089 0058 FFF7FEFF 		bl	_ZNK9SerialCDC8canWriteEv
 9090 005c 019E     		ldr	r6, [sp, #4]
 9091 005e D6F80C21 		ldr	r2, [r6, #268]
 9092 0062 D6F81031 		ldr	r3, [r6, #272]
 9093 0066 D71A     		subs	r7, r2, r3
 9094 0068 8742     		cmp	r7, r0
 9095 006a 28BF     		it	cs
 9096 006c 0746     		movcs	r7, r0
 9097 006e B7B9     		cbnz	r7, .L1753
 9098              	.L1744:
 9099 0070 9A42     		cmp	r2, r3
 9100 0072 07D0     		beq	.L1745
 9101 0074 FFF7FEFF 		bl	millis
 9102 0078 B368     		ldr	r3, [r6, #8]
 9103 007a C01A     		subs	r0, r0, r3
 9104 007c B0F57A7F 		cmp	r0, #1000
 9105 0080 DCD9     		bls	.L1742
 9106 0082 019E     		ldr	r6, [sp, #4]
 9107              	.L1745:
 9108 0084 3046     		mov	r0, r6
 9109 0086 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 9110 008a 0346     		mov	r3, r0
 9111 008c 0146     		mov	r1, r0
 9112 008e 2046     		mov	r0, r4
 9113 0090 0193     		str	r3, [sp, #4]
 9114 0092 FFF7FEFF 		bl	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer
 9115 0096 D1E7     		b	.L1742
 9116              	.L1748:
 9117 0098 0120     		movs	r0, #1
 9118 009a 05B0     		add	sp, sp, #20
 9119              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 161


 9120 009c F0BD     		pop	{r4, r5, r6, r7, pc}
 9121              	.L1753:
 9122 009e 3046     		mov	r0, r6
 9123 00a0 3946     		mov	r1, r7
 9124 00a2 FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 9125 00a6 3A46     		mov	r2, r7
 9126 00a8 0146     		mov	r1, r0
 9127 00aa 0448     		ldr	r0, .L1754
 9128 00ac FFF7FEFF 		bl	_ZN9SerialCDC5writeEPKhj
 9129 00b0 019E     		ldr	r6, [sp, #4]
 9130 00b2 D6F80C21 		ldr	r2, [r6, #268]
 9131 00b6 D6F81031 		ldr	r3, [r6, #272]
 9132 00ba D9E7     		b	.L1744
 9133              	.L1755:
 9134              		.align	2
 9135              	.L1754:
 9136 00bc 00000000 		.word	SerialUSB
 9137              		.size	_ZN8Platform13FlushMessagesEv, .-_ZN8Platform13FlushMessagesEv
 9138              		.section	.text._ZN8Platform14UpdateFirmwareEv,"ax",%progbits
 9139              		.align	1
 9140              		.p2align 2,,3
 9141              		.global	_ZN8Platform14UpdateFirmwareEv
 9142              		.syntax unified
 9143              		.thumb
 9144              		.thumb_func
 9145              		.fpu fpv4-sp-d16
 9146              		.type	_ZN8Platform14UpdateFirmwareEv, %function
 9147              	_ZN8Platform14UpdateFirmwareEv:
 9148              		@ args = 0, pretend = 0, frame = 512
 9149              		@ frame_needed = 0, uses_anonymous_args = 0
 9150 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 9151 0004 0023     		movs	r3, #0
 9152 0006 ADF5027D 		sub	sp, sp, #520
 9153 000a 8146     		mov	r9, r0
 9154 000c 844A     		ldr	r2, .L1790
 9155 000e D0F8DC0B 		ldr	r0, [r0, #3036]
 9156 0012 8449     		ldr	r1, .L1790+4
 9157 0014 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 9158 0018 0028     		cmp	r0, #0
 9159 001a 70D0     		beq	.L1784
 9160 001c 8046     		mov	r8, r0
 9161 001e 8248     		ldr	r0, .L1790+8
 9162 0020 824E     		ldr	r6, .L1790+12
 9163 0022 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 9164 0026 824B     		ldr	r3, .L1790+16
 9165 0028 8249     		ldr	r1, .L1790+20
 9166 002a 0027     		movs	r7, #0
 9167 002c 9F60     		str	r7, [r3, #8]
 9168 002e 3A46     		mov	r2, r7
 9169 0030 3B46     		mov	r3, r7
 9170 0032 4FF48E00 		mov	r0, #4653056
 9171 0036 FFF7FEFF 		bl	flash_unlock
 9172 003a 4FF48E00 		mov	r0, #4653056
 9173 003e FFF7FEFF 		bl	flash_erase_sector
 9174 0042 4FF48E04 		mov	r4, #4653056
 9175 0046 4FF0010A 		mov	r10, #1
 9176 004a 28E0     		b	.L1763
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 162


 9177              	.L1788:
 9178 004c 02AB     		add	r3, sp, #8
 9179 004e B5F5007F 		cmp	r5, #512
 9180 0052 C5F50072 		rsb	r2, r5, #512
 9181 0056 4FF00001 		mov	r1, #0
 9182 005a 03EB0500 		add	r0, r3, r5
 9183 005e 01D0     		beq	.L1760
 9184 0060 FFF7FEFF 		bl	memset
 9185              	.L1760:
 9186              		.syntax unified
 9187              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 9188 0064 72B6     		cpsid i
 9189              	@ 0 "" 2
 9190              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 9191 0066 BFF35F8F 		dmb
 9192              	@ 0 "" 2
 9193              		.thumb
 9194              		.syntax unified
 9195 006a 0023     		movs	r3, #0
 9196 006c 02A9     		add	r1, sp, #8
 9197 006e 2046     		mov	r0, r4
 9198 0070 4FF40072 		mov	r2, #512
 9199 0074 3770     		strb	r7, [r6]
 9200 0076 FFF7FEFF 		bl	flash_write
 9201 007a 86F800A0 		strb	r10, [r6]
 9202 007e 0346     		mov	r3, r0
 9203              		.syntax unified
 9204              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 9205 0080 BFF35F8F 		dmb
 9206              	@ 0 "" 2
 9207              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 9208 0084 62B6     		cpsie i
 9209              	@ 0 "" 2
 9210              		.thumb
 9211              		.syntax unified
 9212 0086 2046     		mov	r0, r4
 9213 0088 2A46     		mov	r2, r5
 9214 008a 02A9     		add	r1, sp, #8
 9215 008c 0BBB     		cbnz	r3, .L1785
 9216 008e FFF7FEFF 		bl	memcmp
 9217 0092 48BB     		cbnz	r0, .L1786
 9218              	.L1762:
 9219 0094 04F50074 		add	r4, r4, #512
 9220 0098 B4F5900F 		cmp	r4, #4718592
 9221 009c 38D0     		beq	.L1787
 9222              	.L1763:
 9223 009e 4FF40072 		mov	r2, #512
 9224 00a2 02A9     		add	r1, sp, #8
 9225 00a4 4046     		mov	r0, r8
 9226 00a6 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 9227 00aa 051E     		subs	r5, r0, #0
 9228 00ac CEDC     		bgt	.L1788
 9229 00ae 0297     		str	r7, [sp, #8]
 9230              		.syntax unified
 9231              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 9232 00b0 72B6     		cpsid i
 9233              	@ 0 "" 2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 163


 9234              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 9235 00b2 BFF35F8F 		dmb
 9236              	@ 0 "" 2
 9237              		.thumb
 9238              		.syntax unified
 9239 00b6 0023     		movs	r3, #0
 9240 00b8 02A9     		add	r1, sp, #8
 9241 00ba 2046     		mov	r0, r4
 9242 00bc 4FF40072 		mov	r2, #512
 9243 00c0 3770     		strb	r7, [r6]
 9244 00c2 FFF7FEFF 		bl	flash_write
 9245 00c6 86F800A0 		strb	r10, [r6]
 9246              		.syntax unified
 9247              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 9248 00ca BFF35F8F 		dmb
 9249              	@ 0 "" 2
 9250              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 9251 00ce 62B6     		cpsie i
 9252              	@ 0 "" 2
 9253              		.thumb
 9254              		.syntax unified
 9255 00d0 E0E7     		b	.L1762
 9256              	.L1785:
 9257 00d2 0094     		str	r4, [sp]
 9258 00d4 4846     		mov	r0, r9
 9259 00d6 584A     		ldr	r2, .L1790+24
 9260 00d8 40F20911 		movw	r1, #265
 9261 00dc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9262              	.L1756:
 9263 00e0 0DF5027D 		add	sp, sp, #520
 9264              		@ sp needed
 9265 00e4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 9266              	.L1786:
 9267 00e8 2346     		mov	r3, r4
 9268 00ea 4846     		mov	r0, r9
 9269 00ec 534A     		ldr	r2, .L1790+28
 9270 00ee 40F20911 		movw	r1, #265
 9271 00f2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9272 00f6 0DF5027D 		add	sp, sp, #520
 9273              		@ sp needed
 9274 00fa BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 9275              	.L1784:
 9276 00fe 4846     		mov	r0, r9
 9277 0100 4F4A     		ldr	r2, .L1790+32
 9278 0102 0921     		movs	r1, #9
 9279 0104 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9280 0108 0DF5027D 		add	sp, sp, #520
 9281              		@ sp needed
 9282 010c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 9283              	.L1787:
 9284 0110 0023     		movs	r3, #0
 9285 0112 1A46     		mov	r2, r3
 9286 0114 4749     		ldr	r1, .L1790+20
 9287 0116 4FF48E00 		mov	r0, #4653056
 9288 011a FFF7FEFF 		bl	flash_lock
 9289 011e 4046     		mov	r0, r8
 9290 0120 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 164


 9291 0124 474A     		ldr	r2, .L1790+36
 9292 0126 0421     		movs	r1, #4
 9293 0128 4846     		mov	r0, r9
 9294 012a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9295 012e 464A     		ldr	r2, .L1790+40
 9296 0130 0121     		movs	r1, #1
 9297 0132 4846     		mov	r0, r9
 9298 0134 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9299 0138 FFF7FEFF 		bl	millis
 9300 013c 0446     		mov	r4, r0
 9301 013e 05E0     		b	.L1765
 9302              	.L1789:
 9303 0140 FFF7FEFF 		bl	millis
 9304 0144 001B     		subs	r0, r0, r4
 9305 0146 B0F5FA6F 		cmp	r0, #2000
 9306 014a 04D2     		bcs	.L1764
 9307              	.L1765:
 9308 014c 4846     		mov	r0, r9
 9309 014e FFF7FEFF 		bl	_ZN8Platform13FlushMessagesEv
 9310 0152 0028     		cmp	r0, #0
 9311 0154 F4D1     		bne	.L1789
 9312              	.L1764:
 9313 0156 3448     		ldr	r0, .L1790+8
 9314 0158 FFF7FEFF 		bl	_ZN6RepRap4ExitEv
 9315 015c 3B4B     		ldr	r3, .L1790+44
 9316 015e 0422     		movs	r2, #4
 9317 0160 1A60     		str	r2, [r3]
 9318              		.syntax unified
 9319              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 9320 0162 72B6     		cpsid i
 9321              	@ 0 "" 2
 9322              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 9323 0164 BFF35F8F 		dmb
 9324              	@ 0 "" 2
 9325              		.thumb
 9326              		.syntax unified
 9327 0168 0022     		movs	r2, #0
 9328 016a 3270     		strb	r2, [r6]
 9329 016c 4FF0FF31 		mov	r1, #-1
 9330              	.L1766:
 9331 0170 9300     		lsls	r3, r2, #2
 9332 0172 03F16043 		add	r3, r3, #-536870912
 9333 0176 03F56143 		add	r3, r3, #57600
 9334 017a 0132     		adds	r2, r2, #1
 9335 017c 082A     		cmp	r2, #8
 9336 017e C3F88010 		str	r1, [r3, #128]
 9337 0182 C3F88011 		str	r1, [r3, #384]
 9338 0186 F3D1     		bne	.L1766
 9339 0188 4FF48E02 		mov	r2, #4653056
 9340 018c 304B     		ldr	r3, .L1790+48
 9341 018e 1468     		ldr	r4, [r2]
 9342 0190 3048     		ldr	r0, .L1790+52
 9343 0192 314A     		ldr	r2, .L1790+56
 9344 0194 5964     		str	r1, [r3, #68]
 9345 0196 4164     		str	r1, [r0, #68]
 9346 0198 5164     		str	r1, [r2, #68]
 9347 019a C3F84416 		str	r1, [r3, #1604]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 165


 9348 019e 2F4B     		ldr	r3, .L1790+60
 9349 01a0 C0F84416 		str	r1, [r0, #1604]
 9350 01a4 04F12102 		add	r2, r4, #33
 9351 01a8 9A42     		cmp	r2, r3
 9352 01aa 0FD8     		bhi	.L1767
 9353 01ac 2C4F     		ldr	r7, .L1790+64
 9354 01ae 07F1200C 		add	ip, r7, #32
 9355              	.L1768:
 9356 01b2 3D46     		mov	r5, r7
 9357 01b4 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 9358 01b6 6545     		cmp	r5, ip
 9359 01b8 2060     		str	r0, [r4]	@ unaligned
 9360 01ba 6160     		str	r1, [r4, #4]	@ unaligned
 9361 01bc A260     		str	r2, [r4, #8]	@ unaligned
 9362 01be E360     		str	r3, [r4, #12]	@ unaligned
 9363 01c0 2F46     		mov	r7, r5
 9364 01c2 04F11004 		add	r4, r4, #16
 9365 01c6 F4D1     		bne	.L1768
 9366 01c8 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 9367 01ca 2370     		strb	r3, [r4]
 9368              	.L1767:
 9369 01cc 0021     		movs	r1, #0
 9370 01ce 2220     		movs	r0, #34
 9371 01d0 FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 9372 01d4 2348     		ldr	r0, .L1790+68
 9373 01d6 FFF7FEFF 		bl	wdt_restart
 9374 01da 2348     		ldr	r0, .L1790+72
 9375 01dc FFF7FEFF 		bl	rswdt_restart
 9376              		.syntax unified
 9377              	@ 445 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 9378 01e0 BFF34F8F 		dsb
 9379              	@ 0 "" 2
 9380              	@ 434 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 9381 01e4 BFF36F8F 		isb
 9382              	@ 0 "" 2
 9383              		.thumb
 9384              		.syntax unified
 9385 01e8 204B     		ldr	r3, .L1790+76
 9386 01ea 4FF48E02 		mov	r2, #4653056
 9387 01ee 9A60     		str	r2, [r3, #8]
 9388              		.syntax unified
 9389              	@ 445 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 9390 01f0 BFF34F8F 		dsb
 9391              	@ 0 "" 2
 9392              	@ 434 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 9393 01f4 BFF36F8F 		isb
 9394              	@ 0 "" 2
 9395              		.thumb
 9396              		.syntax unified
 9397 01f8 0123     		movs	r3, #1
 9398 01fa 3370     		strb	r3, [r6]
 9399              		.syntax unified
 9400              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 9401 01fc BFF35F8F 		dmb
 9402              	@ 0 "" 2
 9403              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 9404 0200 62B6     		cpsie i
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 166


 9405              	@ 0 "" 2
 9406              	@ 1188 "../src/Platform.cpp" 1
 9407 0202 1346     		mov r3, r2
 9408              	@ 0 "" 2
 9409              	@ 1191 "../src/Platform.cpp" 1
 9410 0204 1968     		ldr r1, [r3]
 9411              	@ 0 "" 2
 9412              	@ 1192 "../src/Platform.cpp" 1
 9413 0206 81F30888 		msr msp, r1
 9414              	@ 0 "" 2
 9415              	@ 1193 "../src/Platform.cpp" 1
 9416 020a A1F58061 		sub r1, #1024
 9417              	@ 0 "" 2
 9418              	@ 1194 "../src/Platform.cpp" 1
 9419 020e 8D46     		mov sp, r1
 9420              	@ 0 "" 2
 9421              	@ 1198 "../src/Platform.cpp" 1
 9422 0210 BFF36F8F 		isb
 9423              	@ 0 "" 2
 9424              	@ 1199 "../src/Platform.cpp" 1
 9425 0214 5968     		ldr r1, [r3, #4]
 9426              	@ 0 "" 2
 9427              	@ 1200 "../src/Platform.cpp" 1
 9428 0216 41F00101 		orr r1, r1, #1
 9429              	@ 0 "" 2
 9430              	@ 1201 "../src/Platform.cpp" 1
 9431 021a 0847     		bx r1
 9432              	@ 0 "" 2
 9433              		.thumb
 9434              		.syntax unified
 9435 021c 60E7     		b	.L1756
 9436              	.L1791:
 9437 021e 00BF     		.align	2
 9438              	.L1790:
 9439 0220 7C000000 		.word	.LC15
 9440 0224 1C000000 		.word	.LC12
 9441 0228 00000000 		.word	reprap
 9442 022c 00000000 		.word	g_interrupt_enabled
 9443 0230 00400C40 		.word	1074544640
 9444 0234 FFFF4700 		.word	4718591
 9445 0238 10000000 		.word	.LC116
 9446 023c 40000000 		.word	.LC117
 9447 0240 00000000 		.word	.LC115
 9448 0244 74000000 		.word	.LC118
 9449 0248 8C000000 		.word	.LC119
 9450 024c 10E000E0 		.word	-536813552
 9451 0250 000E0E40 		.word	1074662912
 9452 0254 00100E40 		.word	1074663424
 9453 0258 00120E40 		.word	1074663936
 9454 025c 00000220 		.word	537001984
 9455 0260 E8000000 		.word	.LC120
 9456 0264 50180E40 		.word	1074665552
 9457 0268 00190E40 		.word	1074665728
 9458 026c 00ED00E0 		.word	-536810240
 9459              		.size	_ZN8Platform14UpdateFirmwareEv, .-_ZN8Platform14UpdateFirmwareEv
 9460              		.section	.text._ZN8Platform4SpinEv,"ax",%progbits
 9461              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 167


 9462              		.p2align 2,,3
 9463              		.global	_ZN8Platform4SpinEv
 9464              		.syntax unified
 9465              		.thumb
 9466              		.thumb_func
 9467              		.fpu fpv4-sp-d16
 9468              		.type	_ZN8Platform4SpinEv, %function
 9469              	_ZN8Platform4SpinEv:
 9470              		@ args = 0, pretend = 0, frame = 280
 9471              		@ frame_needed = 0, uses_anonymous_args = 0
 9472 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 9473 0004 90F8FA50 		ldrb	r5, [r0, #250]	@ zero_extendqisi2
 9474 0008 C8B0     		sub	sp, sp, #288
 9475 000a 15B9     		cbnz	r5, .L1930
 9476              	.L1792:
 9477 000c 48B0     		add	sp, sp, #288
 9478              		@ sp needed
 9479 000e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 9480              	.L1930:
 9481 0012 0446     		mov	r4, r0
 9482 0014 D0F8DC0B 		ldr	r0, [r0, #3036]
 9483 0018 FFF7FEFF 		bl	_ZN11MassStorage4SpinEv
 9484 001c 2046     		mov	r0, r4
 9485 001e FFF7FEFF 		bl	_ZN8Platform13FlushMessagesEv
 9486 0022 94F88C37 		ldrb	r3, [r4, #1932]	@ zero_extendqisi2
 9487 0026 6BB1     		cbz	r3, .L1796
 9488 0028 D4F88837 		ldr	r3, [r4, #1928]
 9489 002c D4F89027 		ldr	r2, [r4, #1936]
 9490 0030 9A42     		cmp	r2, r3
 9491 0032 D4F89427 		ldr	r2, [r4, #1940]
 9492 0036 38BF     		it	cc
 9493 0038 C4F89037 		strcc	r3, [r4, #1936]
 9494 003c 9A42     		cmp	r2, r3
 9495 003e 88BF     		it	hi
 9496 0040 C4F89437 		strhi	r3, [r4, #1940]
 9497              	.L1796:
 9498 0044 D4F8F02B 		ldr	r2, [r4, #3056]
 9499 0048 40F2EA33 		movw	r3, #1002
 9500 004c 9A42     		cmp	r2, r3
 9501 004e 6DD0     		beq	.L1800
 9502 0050 94F85D04 		ldrb	r0, [r4, #1117]	@ zero_extendqisi2
 9503 0054 B4F8FE3B 		ldrh	r3, [r4, #3070]
 9504 0058 0028     		cmp	r0, #0
 9505 005a 68D0     		beq	.L1801
 9506 005c 40F22E42 		movw	r2, #1070
 9507 0060 9A42     		cmp	r2, r3
 9508 0062 77D3     		bcc	.L1802
 9509 0064 D4F80C3C 		ldr	r3, [r4, #3084]
 9510 0068 B4F8FE2B 		ldrh	r2, [r4, #3070]
 9511 006c A4F8042C 		strh	r2, [r4, #3076]	@ movhi
 9512 0070 0133     		adds	r3, r3, #1
 9513 0072 0020     		movs	r0, #0
 9514 0074 C4F80C3C 		str	r3, [r4, #3084]
 9515 0078 84F85D04 		strb	r0, [r4, #1117]
 9516              	.L1803:
 9517 007c FFF7FEFF 		bl	_ZN12SmartDrivers4SpinEb
 9518 0080 FFF7FEFF 		bl	millis
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 168


 9519 0084 04F62842 		addw	r2, r4, #3112
 9520 0088 D2E90078 		ldrd	r7, [r2]
 9521 008c 57EA0803 		orrs	r3, r7, r8
 9522 0090 0646     		mov	r6, r0
 9523 0092 0ED0     		beq	.L1828
 9524 0094 D4F8303C 		ldr	r3, [r4, #3120]
 9525 0098 C51A     		subs	r5, r0, r3
 9526 009a B5F57A7F 		cmp	r5, #1000
 9527 009e 08D3     		bcc	.L1828
 9528 00a0 781C     		adds	r0, r7, #1
 9529 00a2 48F10001 		adc	r1, r8, #0
 9530 00a6 03F57A73 		add	r3, r3, #1000
 9531 00aa C2E90001 		strd	r0, [r2]
 9532 00ae C4F8303C 		str	r3, [r4, #3120]
 9533              	.L1828:
 9534 00b2 D4F8C43A 		ldr	r3, [r4, #2756]
 9535 00b6 F31A     		subs	r3, r6, r3
 9536 00b8 B3F5FA7F 		cmp	r3, #500
 9537 00bc 19D3     		bcc	.L1830
 9538 00be C4F8C46A 		str	r6, [r4, #2756]
 9539 00c2 04F63C07 		addw	r7, r4, #2108
 9540 00c6 04F6C428 		addw	r8, r4, #2756
 9541 00ca 0025     		movs	r5, #0
 9542              	.L1832:
 9543 00cc 3846     		mov	r0, r7
 9544 00ce FFF7FEFF 		bl	_ZN3Fan5CheckEv
 9545 00d2 4837     		adds	r7, r7, #72
 9546 00d4 0028     		cmp	r0, #0
 9547 00d6 18BF     		it	ne
 9548 00d8 0546     		movne	r5, r0
 9549 00da B845     		cmp	r8, r7
 9550 00dc F6D1     		bne	.L1832
 9551 00de 94F8C43C 		ldrb	r3, [r4, #3268]	@ zero_extendqisi2
 9552 00e2 03B1     		cbz	r3, .L1833
 9553 00e4 85B3     		cbz	r5, .L1931
 9554              	.L1833:
 9555 00e6 D4F8203C 		ldr	r3, [r4, #3104]
 9556 00ea F31A     		subs	r3, r6, r3
 9557 00ec B3F57A6F 		cmp	r3, #4000
 9558 00f0 66D8     		bhi	.L1932
 9559              	.L1830:
 9560 00f2 94F81C3C 		ldrb	r3, [r4, #3100]	@ zero_extendqisi2
 9561 00f6 7BB1     		cbz	r3, .L1858
 9562 00f8 94F81D3C 		ldrb	r3, [r4, #3101]	@ zero_extendqisi2
 9563 00fc 012B     		cmp	r3, #1
 9564 00fe 00F09881 		beq	.L1859
 9565 0102 C0F08481 		bcc	.L1860
 9566 0106 022B     		cmp	r3, #2
 9567 0108 06D1     		bne	.L1858
 9568 010a B4F8FE3B 		ldrh	r3, [r4, #3070]
 9569 010e B4F80A2C 		ldrh	r2, [r4, #3082]
 9570 0112 9A42     		cmp	r2, r3
 9571 0114 40F29F81 		bls	.L1933
 9572              	.L1858:
 9573 0118 A06B     		ldr	r0, [r4, #56]
 9574 011a 0028     		cmp	r0, #0
 9575 011c 3FF476AF 		beq	.L1792
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 169


 9576 0120 0021     		movs	r1, #0
 9577 0122 FFF7FEFF 		bl	_ZN6Logger5FlushEb
 9578 0126 48B0     		add	sp, sp, #288
 9579              		@ sp needed
 9580 0128 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 9581              	.L1800:
 9582 012c FEE7     		b	.L1800
 9583              	.L1801:
 9584 012e B3F58D6F 		cmp	r3, #1128
 9585 0132 A3D3     		bcc	.L1803
 9586 0134 B4F8FE3B 		ldrh	r3, [r4, #3070]
 9587 0138 B3F5426F 		cmp	r3, #3104
 9588 013c 9ED2     		bcs	.L1803
 9589 013e 0123     		movs	r3, #1
 9590 0140 2846     		mov	r0, r5
 9591 0142 84F85D34 		strb	r3, [r4, #1117]
 9592 0146 99E7     		b	.L1803
 9593              	.L1931:
 9594 0148 84F8C45C 		strb	r5, [r4, #3268]
 9595 014c 2046     		mov	r0, r4
 9596 014e FFF7FEFF 		bl	_ZN8Platform11AtxPowerOffEb.part.29
 9597 0152 C8E7     		b	.L1833
 9598              	.L1802:
 9599 0154 B4F8FE3B 		ldrh	r3, [r4, #3070]
 9600 0158 40F6C842 		movw	r2, #3272
 9601 015c 9A42     		cmp	r2, r3
 9602 015e 0CD2     		bcs	.L1804
 9603 0160 D4F8143C 		ldr	r3, [r4, #3092]
 9604 0164 0133     		adds	r3, r3, #1
 9605 0166 C4F8143C 		str	r3, [r4, #3092]
 9606 016a B4F8FE3B 		ldrh	r3, [r4, #3070]
 9607 016e A4F8063C 		strh	r3, [r4, #3078]	@ movhi
 9608 0172 0020     		movs	r0, #0
 9609 0174 84F85D04 		strb	r0, [r4, #1117]
 9610 0178 80E7     		b	.L1803
 9611              	.L1804:
 9612 017a 94F85C04 		ldrb	r0, [r4, #1116]	@ zero_extendqisi2
 9613 017e 2318     		adds	r3, r4, r0
 9614 0180 93F92431 		ldrsb	r3, [r3, #292]
 9615 0184 002B     		cmp	r3, #0
 9616 0186 80F29B81 		bge	.L1928
 9617 018a D4F87864 		ldr	r6, [r4, #1144]
 9618              	.L1805:
 9619 018e 002E     		cmp	r6, #0
 9620 0190 40F07281 		bne	.L1934
 9621 0194 D4F87414 		ldr	r1, [r4, #1140]
 9622 0198 0029     		cmp	r1, #0
 9623 019a 40F06381 		bne	.L1935
 9624              	.L1826:
 9625 019e 94F85C34 		ldrb	r3, [r4, #1116]	@ zero_extendqisi2
 9626 01a2 D4F81C24 		ldr	r2, [r4, #1052]
 9627 01a6 94F85D04 		ldrb	r0, [r4, #1117]	@ zero_extendqisi2
 9628 01aa 0133     		adds	r3, r3, #1
 9629 01ac DBB2     		uxtb	r3, r3
 9630 01ae 9342     		cmp	r3, r2
 9631 01b0 84F85C34 		strb	r3, [r4, #1116]
 9632 01b4 7FF462AF 		bne	.L1803
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 170


 9633 01b8 0023     		movs	r3, #0
 9634 01ba 84F85C34 		strb	r3, [r4, #1116]
 9635 01be 5DE7     		b	.L1803
 9636              	.L1932:
 9637 01c0 0DF10F05 		add	r5, sp, #15
 9638 01c4 D4F82834 		ldr	r3, [r4, #1064]
 9639 01c8 0022     		movs	r2, #0
 9640 01ca 2A70     		strb	r2, [r5]
 9641 01cc 04F58562 		add	r2, r4, #1064
 9642 01d0 33B1     		cbz	r3, .L1835
 9643 01d2 0095     		str	r5, [sp]
 9644 01d4 AE4B     		ldr	r3, .L1939
 9645 01d6 40F2B511 		movw	r1, #437
 9646 01da 2046     		mov	r0, r4
 9647 01dc FFF7FEFF 		bl	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33
 9648              	.L1835:
 9649 01e0 D4F82034 		ldr	r3, [r4, #1056]
 9650 01e4 04F58462 		add	r2, r4, #1056
 9651 01e8 33B1     		cbz	r3, .L1836
 9652 01ea 0095     		str	r5, [sp]
 9653 01ec A94B     		ldr	r3, .L1939+4
 9654 01ee 40F2B511 		movw	r1, #437
 9655 01f2 2046     		mov	r0, r4
 9656 01f4 FFF7FEFF 		bl	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33
 9657              	.L1836:
 9658 01f8 4FF4FA71 		mov	r1, #500
 9659 01fc 04F23C40 		addw	r0, r4, #1084
 9660 0200 FFF7FEFF 		bl	_ZN11MillisTimer12CheckAndStopEm
 9661 0204 58B1     		cbz	r0, .L1837
 9662 0206 D4F82C34 		ldr	r3, [r4, #1068]
 9663 020a 04F22C42 		addw	r2, r4, #1068
 9664 020e 33B1     		cbz	r3, .L1837
 9665 0210 0095     		str	r5, [sp]
 9666 0212 A14B     		ldr	r3, .L1939+8
 9667 0214 40F2B521 		movw	r1, #693
 9668 0218 2046     		mov	r0, r4
 9669 021a FFF7FEFF 		bl	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33
 9670              	.L1837:
 9671 021e 4FF4FA71 		mov	r1, #500
 9672 0222 04F24440 		addw	r0, r4, #1092
 9673 0226 FFF7FEFF 		bl	_ZN11MillisTimer12CheckAndStopEm
 9674 022a 58B1     		cbz	r0, .L1838
 9675 022c D4F83034 		ldr	r3, [r4, #1072]
 9676 0230 04F58662 		add	r2, r4, #1072
 9677 0234 33B1     		cbz	r3, .L1838
 9678 0236 0095     		str	r5, [sp]
 9679 0238 984B     		ldr	r3, .L1939+12
 9680 023a 40F2B521 		movw	r1, #693
 9681 023e 2046     		mov	r0, r4
 9682 0240 FFF7FEFF 		bl	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33
 9683              	.L1838:
 9684 0244 D4F82434 		ldr	r3, [r4, #1060]
 9685 0248 E3B1     		cbz	r3, .L1839
 9686 024a 94F85034 		ldrb	r3, [r4, #1104]	@ zero_extendqisi2
 9687 024e 4FF47872 		mov	r2, #992
 9688 0252 1192     		str	r2, [sp, #68]
 9689 0254 04F24C40 		addw	r0, r4, #1100
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 171


 9690 0258 002B     		cmp	r3, #0
 9691 025a 40F0CA80 		bne	.L1936
 9692              	.L1841:
 9693 025e 94F85834 		ldrb	r3, [r4, #1112]	@ zero_extendqisi2
 9694 0262 04F25440 		addw	r0, r4, #1108
 9695 0266 002B     		cmp	r3, #0
 9696 0268 40F09980 		bne	.L1937
 9697              	.L1843:
 9698 026c D4F82434 		ldr	r3, [r4, #1060]
 9699 0270 04F22442 		addw	r2, r4, #1060
 9700 0274 33B1     		cbz	r3, .L1839
 9701 0276 0095     		str	r5, [sp]
 9702 0278 894B     		ldr	r3, .L1939+16
 9703 027a 40F2B521 		movw	r1, #693
 9704 027e 2046     		mov	r0, r4
 9705 0280 FFF7FEFF 		bl	_ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33
 9706              	.L1839:
 9707 0284 D4F87034 		ldr	r3, [r4, #1136]
 9708 0288 002B     		cmp	r3, #0
 9709 028a 54D1     		bne	.L1938
 9710              	.L1847:
 9711 028c D4F8142C 		ldr	r2, [r4, #3092]
 9712 0290 D4F8183C 		ldr	r3, [r4, #3096]
 9713 0294 9A42     		cmp	r2, r3
 9714 0296 1BD0     		beq	.L1849
 9715 0298 B4F8063C 		ldrh	r3, [r4, #3078]
 9716 029c 9FED817A 		vldr.32	s14, .L1939+20
 9717 02a0 07EE903A 		vmov	s15, r3	@ int
 9718 02a4 F8EEE77A 		vcvt.f32.s32	s15, s15
 9719 02a8 67EE877A 		vmul.f32	s15, s15, s14
 9720 02ac 17EE900A 		vmov	r0, s15
 9721 02b0 FFF7FEFF 		bl	__aeabi_f2d
 9722 02b4 7C4A     		ldr	r2, .L1939+24
 9723 02b6 CDE90001 		strd	r0, [sp]
 9724 02ba 40F2B521 		movw	r1, #693
 9725 02be 2046     		mov	r0, r4
 9726 02c0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9727 02c4 D4F8143C 		ldr	r3, [r4, #3092]
 9728 02c8 C4F8183C 		str	r3, [r4, #3096]
 9729 02cc 0123     		movs	r3, #1
 9730 02ce 2B70     		strb	r3, [r5]
 9731              	.L1849:
 9732 02d0 D4F80C2C 		ldr	r2, [r4, #3084]
 9733 02d4 D4F8103C 		ldr	r3, [r4, #3088]
 9734 02d8 9A42     		cmp	r2, r3
 9735 02da 1BD0     		beq	.L1850
 9736 02dc B4F8043C 		ldrh	r3, [r4, #3076]
 9737 02e0 9FED707A 		vldr.32	s14, .L1939+20
 9738 02e4 07EE903A 		vmov	s15, r3	@ int
 9739 02e8 F8EEE77A 		vcvt.f32.s32	s15, s15
 9740 02ec 67EE877A 		vmul.f32	s15, s15, s14
 9741 02f0 17EE900A 		vmov	r0, s15
 9742 02f4 FFF7FEFF 		bl	__aeabi_f2d
 9743 02f8 6C4A     		ldr	r2, .L1939+28
 9744 02fa CDE90001 		strd	r0, [sp]
 9745 02fe 40F2B521 		movw	r1, #693
 9746 0302 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 172


 9747 0304 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9748 0308 D4F80C3C 		ldr	r3, [r4, #3084]
 9749 030c C4F8103C 		str	r3, [r4, #3088]
 9750 0310 0123     		movs	r3, #1
 9751 0312 2B70     		strb	r3, [r5]
 9752              	.L1850:
 9753 0314 94F8F830 		ldrb	r3, [r4, #248]	@ zero_extendqisi2
 9754 0318 022B     		cmp	r3, #2
 9755 031a 4FD0     		beq	.L1851
 9756 031c 042B     		cmp	r3, #4
 9757 031e 4DD0     		beq	.L1851
 9758              	.L1852:
 9759 0320 94F85E34 		ldrb	r3, [r4, #1118]	@ zero_extendqisi2
 9760 0324 002B     		cmp	r3, #0
 9761 0326 5AD1     		bne	.L1853
 9762 0328 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 9763 032a 002B     		cmp	r3, #0
 9764 032c 3FF4E1AE 		beq	.L1830
 9765              	.L1854:
 9766 0330 C4F8206C 		str	r6, [r4, #3104]
 9767 0334 DDE6     		b	.L1830
 9768              	.L1938:
 9769 0336 5E4F     		ldr	r7, .L1939+32
 9770 0338 7869     		ldr	r0, [r7, #20]
 9771 033a FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv
 9772 033e 0028     		cmp	r0, #0
 9773 0340 A4D0     		beq	.L1847
 9774 0342 DD23     		movs	r3, #221
 9775 0344 D4F87014 		ldr	r1, [r4, #1136]
 9776 0348 4FF00009 		mov	r9, #0
 9777 034c 04A8     		add	r0, sp, #16
 9778 034e 0DF14008 		add	r8, sp, #64
 9779 0352 CDE90483 		strd	r8, r3, [sp, #16]
 9780 0356 8DF84090 		strb	r9, [sp, #64]
 9781 035a FFF7FEFF 		bl	_Z11ListDriversRK9StringRefm
 9782 035e C4F87094 		str	r9, [r4, #1136]
 9783 0362 3846     		mov	r0, r7
 9784 0364 D7F80C90 		ldr	r9, [r7, #12]
 9785 0368 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 9786 036c 8246     		mov	r10, r0
 9787 036e 3846     		mov	r0, r7
 9788 0370 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 9789 0374 5246     		mov	r2, r10
 9790 0376 0346     		mov	r3, r0
 9791 0378 04A9     		add	r1, sp, #16
 9792 037a 4846     		mov	r0, r9
 9793 037c FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 9794 0380 0698     		ldr	r0, [sp, #24]	@ float
 9795 0382 FFF7FEFF 		bl	__aeabi_f2d
 9796 0386 4346     		mov	r3, r8
 9797 0388 CDE90001 		strd	r0, [sp]
 9798 038c 494A     		ldr	r2, .L1939+36
 9799 038e 40F2B521 		movw	r1, #693
 9800 0392 2046     		mov	r0, r4
 9801 0394 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9802 0398 0123     		movs	r3, #1
 9803 039a 2B70     		strb	r3, [r5]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 173


 9804 039c 76E7     		b	.L1847
 9805              	.L1937:
 9806 039e 4FF47A61 		mov	r1, #4000
 9807 03a2 FFF7FEFF 		bl	_ZN11MillisTimer12CheckAndStopEm
 9808 03a6 0028     		cmp	r0, #0
 9809 03a8 7FF460AF 		bne	.L1843
 9810 03ac D4F82434 		ldr	r3, [r4, #1060]
 9811 03b0 119A     		ldr	r2, [sp, #68]
 9812 03b2 23EA0203 		bic	r3, r3, r2
 9813 03b6 C4F82434 		str	r3, [r4, #1060]
 9814 03ba 57E7     		b	.L1843
 9815              	.L1851:
 9816 03bc 6720     		movs	r0, #103
 9817 03be FFF7FEFF 		bl	digitalRead
 9818 03c2 0028     		cmp	r0, #0
 9819 03c4 ACD0     		beq	.L1852
 9820 03c6 3C4A     		ldr	r2, .L1939+40
 9821 03c8 40F2B511 		movw	r1, #437
 9822 03cc 2046     		mov	r0, r4
 9823 03ce FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9824 03d2 94F85E34 		ldrb	r3, [r4, #1118]	@ zero_extendqisi2
 9825 03d6 0122     		movs	r2, #1
 9826 03d8 2A70     		strb	r2, [r5]
 9827 03da 002B     		cmp	r3, #0
 9828 03dc A8D0     		beq	.L1854
 9829              	.L1853:
 9830 03de 374A     		ldr	r2, .L1939+44
 9831 03e0 40F2B511 		movw	r1, #437
 9832 03e4 2046     		mov	r0, r4
 9833 03e6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9834 03ea 0023     		movs	r3, #0
 9835 03ec 84F85E34 		strb	r3, [r4, #1118]
 9836 03f0 9EE7     		b	.L1854
 9837              	.L1936:
 9838 03f2 4FF47A61 		mov	r1, #4000
 9839 03f6 FFF7FEFF 		bl	_ZN11MillisTimer12CheckAndStopEm
 9840 03fa 0028     		cmp	r0, #0
 9841 03fc 7FF42FAF 		bne	.L1841
 9842 0400 D4F82434 		ldr	r3, [r4, #1060]
 9843 0404 23F01F03 		bic	r3, r3, #31
 9844 0408 C4F82434 		str	r3, [r4, #1060]
 9845 040c 27E7     		b	.L1841
 9846              	.L1860:
 9847 040e B4F8FE3B 		ldrh	r3, [r4, #3070]
 9848 0412 B4F80A2C 		ldrh	r2, [r4, #3082]
 9849 0416 9A42     		cmp	r2, r3
 9850 0418 07D9     		bls	.L1862
 9851 041a B4F8083C 		ldrh	r3, [r4, #3080]
 9852 041e B4F8FE2B 		ldrh	r2, [r4, #3070]
 9853 0422 3833     		adds	r3, r3, #56
 9854 0424 9342     		cmp	r3, r2
 9855 0426 BFF677AE 		bge	.L1858
 9856              	.L1862:
 9857 042a 0123     		movs	r3, #1
 9858 042c 84F81D3C 		strb	r3, [r4, #3101]
 9859 0430 72E6     		b	.L1858
 9860              	.L1859:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 174


 9861 0432 B4F8FE3B 		ldrh	r3, [r4, #3070]
 9862 0436 B4F8082C 		ldrh	r2, [r4, #3080]
 9863 043a 9A42     		cmp	r2, r3
 9864 043c 7FF66CAE 		bls	.L1858
 9865 0440 1B4B     		ldr	r3, .L1939+32
 9866 0442 5869     		ldr	r0, [r3, #20]
 9867 0444 FFF7FEFF 		bl	_ZN6GCodes15LowVoltagePauseEv
 9868 0448 0028     		cmp	r0, #0
 9869 044a 3FF465AE 		beq	.L1858
 9870 044e 0223     		movs	r3, #2
 9871 0450 84F81D3C 		strb	r3, [r4, #3101]
 9872 0454 60E6     		b	.L1858
 9873              	.L1933:
 9874 0456 164B     		ldr	r3, .L1939+32
 9875 0458 5869     		ldr	r0, [r3, #20]
 9876 045a FFF7FEFF 		bl	_ZN6GCodes16LowVoltageResumeEv
 9877 045e 0028     		cmp	r0, #0
 9878 0460 E3D1     		bne	.L1862
 9879 0462 59E6     		b	.L1858
 9880              	.L1935:
 9881 0464 124B     		ldr	r3, .L1939+32
 9882 0466 5869     		ldr	r0, [r3, #20]
 9883 0468 FFF7FEFF 		bl	_ZN6GCodes12PauseOnStallEm
 9884 046c 0028     		cmp	r0, #0
 9885 046e 3FF496AE 		beq	.L1826
 9886 0472 C4F87464 		str	r6, [r4, #1140]
 9887 0476 92E6     		b	.L1826
 9888              	.L1934:
 9889 0478 0D4B     		ldr	r3, .L1939+32
 9890 047a 3146     		mov	r1, r6
 9891 047c 5869     		ldr	r0, [r3, #20]
 9892 047e FFF7FEFF 		bl	_ZN6GCodes13ReHomeOnStallEm
 9893 0482 0028     		cmp	r0, #0
 9894 0484 3FF48BAE 		beq	.L1826
 9895 0488 0023     		movs	r3, #0
 9896 048a C4F87834 		str	r3, [r4, #1144]
 9897 048e 86E6     		b	.L1826
 9898              	.L1940:
 9899              		.align	2
 9900              	.L1939:
 9901 0490 00000000 		.word	.LC121
 9902 0494 10000000 		.word	.LC122
 9903 0498 2C000000 		.word	.LC123
 9904 049c 50000000 		.word	.LC124
 9905 04a0 74000000 		.word	.LC125
 9906 04a4 3333113C 		.word	1007760179
 9907 04a8 B0000000 		.word	.LC127
 9908 04ac D0000000 		.word	.LC128
 9909 04b0 00000000 		.word	reprap
 9910 04b4 88000000 		.word	.LC126
 9911 04b8 F0000000 		.word	.LC129
 9912 04bc 18010000 		.word	.LC130
 9913              	.L1928:
 9914 04c0 0021     		movs	r1, #0
 9915 04c2 FFF7FEFF 		bl	_ZN12SmartDrivers20GetAccumulatedStatusEjm
 9916 04c6 94F85C34 		ldrb	r3, [r4, #1116]	@ zero_extendqisi2
 9917 04ca 0125     		movs	r5, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 175


 9918 04cc 9D40     		lsls	r5, r5, r3
 9919 04ce 8307     		lsls	r3, r0, #30
 9920 04d0 0746     		mov	r7, r0
 9921 04d2 58D5     		bpl	.L1806
 9922 04d4 D4F82034 		ldr	r3, [r4, #1056]
 9923 04d8 2B43     		orrs	r3, r3, r5
 9924 04da C4F82034 		str	r3, [r4, #1056]
 9925              	.L1807:
 9926 04de D4F82834 		ldr	r3, [r4, #1064]
 9927 04e2 94F84064 		ldrb	r6, [r4, #1088]	@ zero_extendqisi2
 9928 04e6 17F0180F 		tst	r7, #24
 9929 04ea 14BF     		ite	ne
 9930 04ec 2B43     		orrne	r3, r3, r5
 9931 04ee AB43     		biceq	r3, r3, r5
 9932 04f0 B806     		lsls	r0, r7, #26
 9933 04f2 C4F82834 		str	r3, [r4, #1064]
 9934 04f6 37D5     		bpl	.L1810
 9935 04f8 3EB9     		cbnz	r6, .L1811
 9936 04fa 04F23C40 		addw	r0, r4, #1084
 9937 04fe FFF7FEFF 		bl	_ZN11MillisTimer5StartEv
 9938 0502 C4F83464 		str	r6, [r4, #1076]
 9939 0506 C4F82C64 		str	r6, [r4, #1068]
 9940              	.L1811:
 9941 050a D4F82C34 		ldr	r3, [r4, #1068]
 9942 050e 2B43     		orrs	r3, r3, r5
 9943 0510 C4F82C34 		str	r3, [r4, #1068]
 9944              	.L1812:
 9945 0514 7906     		lsls	r1, r7, #25
 9946 0516 94F84864 		ldrb	r6, [r4, #1096]	@ zero_extendqisi2
 9947 051a 3CD5     		bpl	.L1815
 9948 051c 3EB9     		cbnz	r6, .L1816
 9949 051e 04F24440 		addw	r0, r4, #1092
 9950 0522 FFF7FEFF 		bl	_ZN11MillisTimer5StartEv
 9951 0526 C4F83864 		str	r6, [r4, #1080]
 9952 052a C4F83064 		str	r6, [r4, #1072]
 9953              	.L1816:
 9954 052e D4F83034 		ldr	r3, [r4, #1072]
 9955 0532 2B43     		orrs	r3, r3, r5
 9956 0534 C4F83034 		str	r3, [r4, #1072]
 9957              	.L1817:
 9958 0538 FA07     		lsls	r2, r7, #31
 9959 053a D4F86C34 		ldr	r3, [r4, #1132]
 9960 053e D4F87864 		ldr	r6, [r4, #1144]
 9961 0542 0CD5     		bpl	.L1820
 9962 0544 1D42     		tst	r5, r3
 9963 0546 06D1     		bne	.L1821
 9964 0548 D4F86824 		ldr	r2, [r4, #1128]
 9965 054c 1542     		tst	r5, r2
 9966 054e 31D0     		beq	.L1822
 9967 0550 2E43     		orrs	r6, r6, r5
 9968 0552 C4F87864 		str	r6, [r4, #1144]
 9969              	.L1821:
 9970 0556 2B43     		orrs	r3, r3, r5
 9971 0558 C4F86C34 		str	r3, [r4, #1132]
 9972 055c 17E6     		b	.L1805
 9973              	.L1820:
 9974 055e 23EA0503 		bic	r3, r3, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 176


 9975 0562 C4F86C34 		str	r3, [r4, #1132]
 9976 0566 12E6     		b	.L1805
 9977              	.L1810:
 9978 0568 002E     		cmp	r6, #0
 9979 056a D3D0     		beq	.L1812
 9980 056c D4F83434 		ldr	r3, [r4, #1076]
 9981 0570 D4F82C24 		ldr	r2, [r4, #1068]
 9982 0574 2B43     		orrs	r3, r3, r5
 9983 0576 C4F83434 		str	r3, [r4, #1076]
 9984 057a 32EA0303 		bics	r3, r2, r3
 9985 057e 08BF     		it	eq
 9986 0580 84F84034 		strbeq	r3, [r4, #1088]
 9987 0584 C6E7     		b	.L1812
 9988              	.L1806:
 9989 0586 4607     		lsls	r6, r0, #29
 9990 0588 A9D5     		bpl	.L1807
 9991 058a D4F82434 		ldr	r3, [r4, #1060]
 9992 058e 2B43     		orrs	r3, r3, r5
 9993 0590 C4F82434 		str	r3, [r4, #1060]
 9994 0594 A3E7     		b	.L1807
 9995              	.L1815:
 9996 0596 002E     		cmp	r6, #0
 9997 0598 CED0     		beq	.L1817
 9998 059a D4F83834 		ldr	r3, [r4, #1080]
 9999 059e D4F83024 		ldr	r2, [r4, #1072]
 10000 05a2 2B43     		orrs	r3, r3, r5
 10001 05a4 C4F83834 		str	r3, [r4, #1080]
 10002 05a8 32EA0303 		bics	r3, r2, r3
 10003 05ac 08BF     		it	eq
 10004 05ae 84F84834 		strbeq	r3, [r4, #1096]
 10005 05b2 C1E7     		b	.L1817
 10006              	.L1822:
 10007 05b4 D4F86424 		ldr	r2, [r4, #1124]
 10008 05b8 1542     		tst	r5, r2
 10009 05ba 05D0     		beq	.L1823
 10010 05bc D4F87424 		ldr	r2, [r4, #1140]
 10011 05c0 2A43     		orrs	r2, r2, r5
 10012 05c2 C4F87424 		str	r2, [r4, #1140]
 10013 05c6 C6E7     		b	.L1821
 10014              	.L1823:
 10015 05c8 D4F86024 		ldr	r2, [r4, #1120]
 10016 05cc 1542     		tst	r5, r2
 10017 05ce C2D0     		beq	.L1821
 10018 05d0 D4F87024 		ldr	r2, [r4, #1136]
 10019 05d4 2A43     		orrs	r2, r2, r5
 10020 05d6 C4F87024 		str	r2, [r4, #1136]
 10021 05da BCE7     		b	.L1821
 10022              		.size	_ZN8Platform4SpinEv, .-_ZN8Platform4SpinEv
 10023              		.global	_ZN8Platform22softwareResetDebugInfoE
 10024              		.section	.rodata
 10025              		.align	2
 10026              		.set	.LANCHOR17,. + 0
 10027              	.LC70:
 10028 0000 A0000000 		.word	.LC1
 10029 0004 AC000000 		.word	.LC2
 10030 0008 B4000000 		.word	.LC3
 10031 000c C0000000 		.word	.LC4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 177


 10032 0010 CC000000 		.word	.LC5
 10033 0014 E8000000 		.word	.LC6
 10034 0018 E8000000 		.word	.LC6
 10035 001c E8000000 		.word	.LC6
 10036              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 10037              		.align	2
 10038              		.set	.LANCHOR10,. + 0
 10039              		.type	_ZL14DefaultNetMask, %object
 10040              		.size	_ZL14DefaultNetMask, 4
 10041              	_ZL14DefaultNetMask:
 10042 0000 00000000 		.space	4
 10043              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 10044              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 10045              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 10046              	_ZL28cpu_irq_prev_interrupt_state:
 10047 0000 00       		.space	1
 10048              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 10049              		.align	2
 10050              		.type	_ZL32cpu_irq_critical_section_counter, %object
 10051              		.size	_ZL32cpu_irq_critical_section_counter, 4
 10052              	_ZL32cpu_irq_critical_section_counter:
 10053 0000 00000000 		.space	4
 10054              		.section	.bss._ZN8Platform22softwareResetDebugInfoE,"aw",%nobits
 10055              		.set	.LANCHOR16,. + 0
 10056              		.type	_ZN8Platform22softwareResetDebugInfoE, %object
 10057              		.size	_ZN8Platform22softwareResetDebugInfoE, 1
 10058              	_ZN8Platform22softwareResetDebugInfoE:
 10059 0000 00       		.space	1
 10060              		.section	.rodata.._157,"a",%progbits
 10061              		.align	2
 10062              		.set	.LANCHOR9,. + 0
 10063              		.type	._157, %object
 10064              		.size	._157, 4
 10065              	._157:
 10066 0000 FF       		.byte	-1
 10067 0001 FF       		.byte	-1
 10068 0002 FF       		.byte	-1
 10069 0003 00       		.byte	0
 10070              		.section	.rodata.CSWTCH.486,"a",%progbits
 10071              		.align	2
 10072              		.set	.LANCHOR5,. + 0
 10073              		.type	CSWTCH.486, %object
 10074              		.size	CSWTCH.486, 16
 10075              	CSWTCH.486:
 10076 0000 38000000 		.word	.LC135
 10077 0004 50000000 		.word	.LC136
 10078 0008 68000000 		.word	.LC137
 10079 000c 84000000 		.word	.LC138
 10080              		.section	.rodata.CSWTCH.488,"a",%progbits
 10081              		.align	2
 10082              		.set	.LANCHOR6,. + 0
 10083              		.type	CSWTCH.488, %object
 10084              		.size	CSWTCH.488, 16
 10085              	CSWTCH.488:
 10086 0000 00000000 		.word	.LC131
 10087 0004 0C000000 		.word	.LC132
 10088 0008 18000000 		.word	.LC133
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 178


 10089 000c 28000000 		.word	.LC134
 10090              		.section	.rodata._ZL11ENABLE_PINS,"a",%progbits
 10091              		.align	2
 10092              		.set	.LANCHOR0,. + 0
 10093              		.type	_ZL11ENABLE_PINS, %object
 10094              		.size	_ZL11ENABLE_PINS, 12
 10095              	_ZL11ENABLE_PINS:
 10096 0000 4E       		.byte	78
 10097 0001 29       		.byte	41
 10098 0002 2A       		.byte	42
 10099 0003 31       		.byte	49
 10100 0004 39       		.byte	57
 10101 0005 57       		.byte	87
 10102 0006 58       		.byte	88
 10103 0007 59       		.byte	89
 10104 0008 5A       		.byte	90
 10105 0009 1F       		.byte	31
 10106 000a 52       		.byte	82
 10107 000b 3C       		.byte	60
 10108              		.section	.rodata._ZL12HEAT_ON_PINS,"a",%progbits
 10109              		.align	2
 10110              		.set	.LANCHOR3,. + 0
 10111              		.type	_ZL12HEAT_ON_PINS, %object
 10112              		.size	_ZL12HEAT_ON_PINS, 8
 10113              	_ZL12HEAT_ON_PINS:
 10114 0000 13       		.byte	19
 10115 0001 14       		.byte	20
 10116 0002 10       		.byte	16
 10117 0003 23       		.byte	35
 10118 0004 25       		.byte	37
 10119 0005 28       		.byte	40
 10120 0006 2B       		.byte	43
 10121 0007 0F       		.byte	15
 10122              		.section	.rodata._ZL13END_STOP_PINS,"a",%progbits
 10123              		.align	2
 10124              		.set	.LANCHOR12,. + 0
 10125              		.type	_ZL13END_STOP_PINS, %object
 10126              		.size	_ZL13END_STOP_PINS, 12
 10127              	_ZL13END_STOP_PINS:
 10128 0000 2E       		.byte	46
 10129 0001 02       		.byte	2
 10130 0002 5D       		.byte	93
 10131 0003 4A       		.byte	74
 10132 0004 30       		.byte	48
 10133 0005 60       		.byte	96
 10134 0006 61       		.byte	97
 10135 0007 62       		.byte	98
 10136 0008 63       		.byte	99
 10137 0009 11       		.byte	17
 10138 000a 27       		.byte	39
 10139 000b 08       		.byte	8
 10140              		.section	.rodata._ZL13SpecialPinMap,"a",%progbits
 10141              		.align	2
 10142              		.set	.LANCHOR7,. + 0
 10143              		.type	_ZL13SpecialPinMap, %object
 10144              		.size	_ZL13SpecialPinMap, 6
 10145              	_ZL13SpecialPinMap:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 179


 10146 0000 18       		.byte	24
 10147 0001 61       		.byte	97
 10148 0002 62       		.byte	98
 10149 0003 63       		.byte	99
 10150 0004 07       		.byte	7
 10151 0005 22       		.byte	34
 10152              		.section	.rodata._ZL14DIRECTION_PINS,"a",%progbits
 10153              		.align	2
 10154              		.set	.LANCHOR2,. + 0
 10155              		.type	_ZL14DIRECTION_PINS, %object
 10156              		.size	_ZL14DIRECTION_PINS, 12
 10157              	_ZL14DIRECTION_PINS:
 10158 0000 4B       		.byte	75
 10159 0001 4C       		.byte	76
 10160 0002 4D       		.byte	77
 10161 0003 01       		.byte	1
 10162 0004 49       		.byte	73
 10163 0005 5C       		.byte	92
 10164 0006 56       		.byte	86
 10165 0007 50       		.byte	80
 10166 0008 51       		.byte	81
 10167 0009 20       		.byte	32
 10168 000a 53       		.byte	83
 10169 000b 19       		.byte	25
 10170              		.section	.rodata._ZL15DueX5GpioPinMap,"a",%progbits
 10171              		.align	2
 10172              		.set	.LANCHOR8,. + 0
 10173              		.type	_ZL15DueX5GpioPinMap, %object
 10174              		.size	_ZL15DueX5GpioPinMap, 4
 10175              	_ZL15DueX5GpioPinMap:
 10176 0000 D3       		.byte	-45
 10177 0001 D2       		.byte	-46
 10178 0002 D1       		.byte	-47
 10179 0003 D0       		.byte	-48
 10180              		.section	.rodata._ZL15TEMP_SENSE_PINS,"a",%progbits
 10181              		.align	2
 10182              		.set	.LANCHOR15,. + 0
 10183              		.type	_ZL15TEMP_SENSE_PINS, %object
 10184              		.size	_ZL15TEMP_SENSE_PINS, 8
 10185              	_ZL15TEMP_SENSE_PINS:
 10186 0000 2D       		.byte	45
 10187 0001 2F       		.byte	47
 10188 0002 2C       		.byte	44
 10189 0003 3D       		.byte	61
 10190 0004 3E       		.byte	62
 10191 0005 3F       		.byte	63
 10192 0006 3B       		.byte	59
 10193 0007 12       		.byte	18
 10194              		.section	.rodata._ZL16COOLING_FAN_PINS,"a",%progbits
 10195              		.align	2
 10196              		.set	.LANCHOR4,. + 0
 10197              		.type	_ZL16COOLING_FAN_PINS, %object
 10198              		.size	_ZL16COOLING_FAN_PINS, 9
 10199              	_ZL16COOLING_FAN_PINS:
 10200 0000 37       		.byte	55
 10201 0001 3A       		.byte	58
 10202 0002 00       		.byte	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 180


 10203 0003 D4       		.byte	-44
 10204 0004 CF       		.byte	-49
 10205 0005 CE       		.byte	-50
 10206 0006 CD       		.byte	-51
 10207 0007 CC       		.byte	-52
 10208 0008 D7       		.byte	-41
 10209              		.section	.rodata._ZL17DefaultBedHeaters,"a",%progbits
 10210              		.align	2
 10211              		.set	.LANCHOR13,. + 0
 10212              		.type	_ZL17DefaultBedHeaters, %object
 10213              		.size	_ZL17DefaultBedHeaters, 4
 10214              	_ZL17DefaultBedHeaters:
 10215 0000 00       		.byte	0
 10216 0001 FF       		.byte	-1
 10217 0002 FF       		.byte	-1
 10218 0003 FF       		.byte	-1
 10219              		.section	.rodata._ZL17DefaultMacAddress,"a",%progbits
 10220              		.align	2
 10221              		.set	.LANCHOR11,. + 0
 10222              		.type	_ZL17DefaultMacAddress, %object
 10223              		.size	_ZL17DefaultMacAddress, 6
 10224              	_ZL17DefaultMacAddress:
 10225 0000 BE       		.byte	-66
 10226 0001 EF       		.byte	-17
 10227 0002 DE       		.byte	-34
 10228 0003 AD       		.byte	-83
 10229 0004 FE       		.byte	-2
 10230 0005 ED       		.byte	-19
 10231              		.section	.rodata._ZL19SpiTempSensorCsPins,"a",%progbits
 10232              		.align	2
 10233              		.set	.LANCHOR14,. + 0
 10234              		.type	_ZL19SpiTempSensorCsPins, %object
 10235              		.size	_ZL19SpiTempSensorCsPins, 8
 10236              	_ZL19SpiTempSensorCsPins:
 10237 0000 1C       		.byte	28
 10238 0001 32       		.byte	50
 10239 0002 33       		.byte	51
 10240 0003 34       		.byte	52
 10241 0004 18       		.byte	24
 10242 0005 61       		.byte	97
 10243 0006 62       		.byte	98
 10244 0007 63       		.byte	99
 10245              		.section	.rodata._ZL9STEP_PINS,"a",%progbits
 10246              		.align	2
 10247              		.set	.LANCHOR1,. + 0
 10248              		.type	_ZL9STEP_PINS, %object
 10249              		.size	_ZL9STEP_PINS, 12
 10250              	_ZL9STEP_PINS:
 10251 0000 46       		.byte	70
 10252 0001 47       		.byte	71
 10253 0002 48       		.byte	72
 10254 0003 45       		.byte	69
 10255 0004 44       		.byte	68
 10256 0005 42       		.byte	66
 10257 0006 41       		.byte	65
 10258 0007 40       		.byte	64
 10259 0008 43       		.byte	67
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 181


 10260 0009 5B       		.byte	91
 10261 000a 54       		.byte	84
 10262 000b 55       		.byte	85
 10263              		.section	.rodata._ZN8Platform11AtxPowerOffEb.part.29.str1.4,"aMS",%progbits,1
 10264              		.align	2
 10265              	.LC8:
 10266 0000 506F7765 		.ascii	"Power off commanded\000"
 10266      72206F66 
 10266      6620636F 
 10266      6D6D616E 
 10266      64656400 
 10267              		.section	.rodata._ZN8Platform11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 10268              		.align	2
 10269              	.LC54:
 10270 0000 4E4D4900 		.ascii	"NMI\000"
 10271              	.LC55:
 10272 0004 55736572 		.ascii	"User\000"
 10272      00
 10273 0009 000000   		.space	3
 10274              	.LC56:
 10275 000c 48617264 		.ascii	"Hard fault\000"
 10275      20666175 
 10275      6C7400
 10276 0017 00       		.space	1
 10277              	.LC57:
 10278 0018 53747563 		.ascii	"Stuck in spin loop\000"
 10278      6B20696E 
 10278      20737069 
 10278      6E206C6F 
 10278      6F7000
 10279 002b 00       		.space	1
 10280              	.LC58:
 10281 002c 57617463 		.ascii	"Watchdog timeout\000"
 10281      68646F67 
 10281      2074696D 
 10281      656F7574 
 10281      00
 10282 003d 000000   		.space	3
 10283              	.LC59:
 10284 0040 4F746865 		.ascii	"Other fault\000"
 10284      72206661 
 10284      756C7400 
 10285              	.LC60:
 10286 004c 53746163 		.ascii	"Stack overflow\000"
 10286      6B206F76 
 10286      6572666C 
 10286      6F7700
 10287 005b 00       		.space	1
 10288              	.LC61:
 10289 005c 41737365 		.ascii	"Assertion failed\000"
 10289      7274696F 
 10289      6E206661 
 10289      696C6564 
 10289      00
 10290 006d 000000   		.space	3
 10291              	.LC62:
 10292 0070 556E6B6E 		.ascii	"Unknown\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 182


 10292      6F776E00 
 10293              	.LC63:
 10294 0078 48656174 		.ascii	"Heat task stuck\000"
 10294      20746173 
 10294      6B207374 
 10294      75636B00 
 10295              	.LC64:
 10296 0088 64656C69 		.ascii	"deliberate \000"
 10296      62657261 
 10296      74652000 
 10297              	.LC65:
 10298 0094 64657465 		.ascii	"detected\000"
 10298      63746564 
 10298      00
 10299 009d 000000   		.space	3
 10300              	.LC66:
 10301 00a0 6E6F7420 		.ascii	"not detected\000"
 10301      64657465 
 10301      63746564 
 10301      00
 10302 00ad 000000   		.space	3
 10303              	.LC67:
 10304 00b0 79657300 		.ascii	"yes\000"
 10305              	.LC68:
 10306 00b4 6E6F00   		.ascii	"no\000"
 10307 00b7 00       		.space	1
 10308              	.LC69:
 10309 00b8 3D3D3D20 		.ascii	"=== Platform ===\012\000"
 10309      506C6174 
 10309      666F726D 
 10309      203D3D3D 
 10309      0A00
 10310 00ca 0000     		.space	2
 10311              	.LC71:
 10312 00cc 4C617374 		.ascii	"Last reset %02d:%02d:%02d ago, cause: %s\012\000"
 10312      20726573 
 10312      65742025 
 10312      3032643A 
 10312      25303264 
 10313 00f6 0000     		.space	2
 10314              	.LC72:
 10315 00f8 61742025 		.ascii	"at %04u-%02u-%02u %02u:%02u\000"
 10315      3034752D 
 10315      25303275 
 10315      2D253032 
 10315      75202530 
 10316              	.LC73:
 10317 0114 74696D65 		.ascii	"time unknown\000"
 10317      20756E6B 
 10317      6E6F776E 
 10317      00
 10318 0121 000000   		.space	3
 10319              	.LC74:
 10320 0124 4C617374 		.ascii	"Last software reset %s, reason: %s%s, spinning modu"
 10320      20736F66 
 10320      74776172 
 10320      65207265 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 183


 10320      73657420 
 10321 0157 6C652025 		.ascii	"le %s, available RAM %lu bytes (slot %d)\012\000"
 10321      732C2061 
 10321      7661696C 
 10321      61626C65 
 10321      2052414D 
 10322 0181 000000   		.space	3
 10323              	.LC75:
 10324 0184 536F6674 		.ascii	"Software reset code 0x%04x HFSR 0x%08lx CFSR 0x%08l"
 10324      77617265 
 10324      20726573 
 10324      65742063 
 10324      6F646520 
 10325 01b7 78204943 		.ascii	"x ICSR 0x%08lx BFAR 0x%08lx SP 0x%08lx Task 0x%08lx"
 10325      53522030 
 10325      78253038 
 10325      6C782042 
 10325      46415220 
 10326 01ea 0A00     		.ascii	"\012\000"
 10327              	.LC76:
 10328 01ec 20253038 		.ascii	" %08lx\000"
 10328      6C7800
 10329 01f3 00       		.space	1
 10330              	.LC77:
 10331 01f4 53746163 		.ascii	"Stack:%s\012\000"
 10331      6B3A2573 
 10331      0A00
 10332 01fe 0000     		.space	2
 10333              	.LC78:
 10334 0200 4C617374 		.ascii	"Last software reset details not available\012\000"
 10334      20736F66 
 10334      74776172 
 10334      65207265 
 10334      73657420 
 10335 022b 00       		.space	1
 10336              	.LC79:
 10337 022c 4572726F 		.ascii	"Error status: %lu\012\000"
 10337      72207374 
 10337      61747573 
 10337      3A20256C 
 10337      750A00
 10338 023f 00       		.space	1
 10339              	.LC80:
 10340 0240 46726565 		.ascii	"Free file entries: %u\012\000"
 10340      2066696C 
 10340      6520656E 
 10340      74726965 
 10340      733A2025 
 10341 0257 00       		.space	1
 10342              	.LC81:
 10343 0258 53442063 		.ascii	"SD card 0 %s, interface speed: %.1fMBytes/sec\012\000"
 10343      61726420 
 10343      30202573 
 10343      2C20696E 
 10343      74657266 
 10344 0287 00       		.space	1
 10345              	.LC82:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 184


 10346 0288 53442063 		.ascii	"SD card longest block write time: %.1fms, max retri"
 10346      61726420 
 10346      6C6F6E67 
 10346      65737420 
 10346      626C6F63 
 10347 02bb 65732025 		.ascii	"es %u\012\000"
 10347      750A00
 10348 02c2 0000     		.space	2
 10349              	.LC83:
 10350 02c4 4D435520 		.ascii	"MCU temperature: min %.1f, current %.1f, max %.1f\012"
 10350      74656D70 
 10350      65726174 
 10350      7572653A 
 10350      206D696E 
 10351 02f6 00       		.ascii	"\000"
 10352 02f7 00       		.space	1
 10353              	.LC84:
 10354 02f8 53757070 		.ascii	"Supply voltage: min %.1f, current %.1f, max %.1f, u"
 10354      6C792076 
 10354      6F6C7461 
 10354      67653A20 
 10354      6D696E20 
 10355 032b 6E646572 		.ascii	"nder voltage events: %lu, over voltage events: %lu,"
 10355      20766F6C 
 10355      74616765 
 10355      20657665 
 10355      6E74733A 
 10356 035e 20706F77 		.ascii	" power good: %s\012\000"
 10356      65722067 
 10356      6F6F643A 
 10356      2025730A 
 10356      00
 10357 036f 00       		.space	1
 10358              	.LC85:
 10359 0370 44726976 		.ascii	"Driver %u:%s\012\000"
 10359      65722025 
 10359      753A2573 
 10359      0A00
 10360 037e 0000     		.space	2
 10361              	.LC86:
 10362 0380 44617465 		.ascii	"Date/time: \000"
 10362      2F74696D 
 10362      653A2000 
 10363              	.LC87:
 10364 038c 25303475 		.ascii	"%04u-%02u-%02u %02u:%02u:%02u\012\000"
 10364      2D253032 
 10364      752D2530 
 10364      32752025 
 10364      3032753A 
 10365 03ab 00       		.space	1
 10366              	.LC88:
 10367 03ac 6E6F7420 		.ascii	"not set\012\000"
 10367      7365740A 
 10367      00
 10368 03b5 000000   		.space	3
 10369              	.LC89:
 10370 03b8 43616368 		.ascii	"Cache data hit count %lu\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 185


 10370      65206461 
 10370      74612068 
 10370      69742063 
 10370      6F756E74 
 10371 03d2 0000     		.space	2
 10372              	.LC90:
 10373 03d4 49324320 		.ascii	"I2C nak errors %lu, send timeouts %lu, receive time"
 10373      6E616B20 
 10373      6572726F 
 10373      72732025 
 10373      6C752C20 
 10374 0407 6F757473 		.ascii	"outs %lu, finishTimeouts %lu\012\000"
 10374      20256C75 
 10374      2C206669 
 10374      6E697368 
 10374      54696D65 
 10375              		.section	.rodata._ZN8Platform11SetDateTimeEx.str1.4,"aMS",%progbits,1
 10376              		.align	2
 10377              	.LC52:
 10378 0000 44617465 		.ascii	"Date and time set at power up + %02lu:%02lu:%02lu\012"
 10378      20616E64 
 10378      2074696D 
 10378      65207365 
 10378      74206174 
 10379 0032 00       		.ascii	"\000"
 10380              		.section	.rodata._ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbits,
 10381              		.align	2
 10382              	.LC17:
 10383 0000 46616E20 		.ascii	"Fan number %d is invalid, must be between 0 and %u\000"
 10383      6E756D62 
 10383      65722025 
 10383      64206973 
 10383      20696E76 
 10384              		.section	.rodata._ZN8Platform12SetEmulatingE13Compatibility.str1.4,"aMS",%progbits,1
 10385              		.align	2
 10386              	.LC53:
 10387 0000 41747465 		.ascii	"Attempt to emulate unsupported firmware.\012\000"
 10387      6D707420 
 10387      746F2065 
 10387      6D756C61 
 10387      74652075 
 10388              		.section	.rodata._ZN8Platform13PrintUniqueIdE11MessageType.str1.4,"aMS",%progbits,1
 10389              		.align	2
 10390              	.LC51:
 10391 0000 426F6172 		.ascii	"Board ID: %s\012\000"
 10391      64204944 
 10391      3A202573 
 10391      0A00
 10392              		.section	.rodata._ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 10393              		.align	2
 10394              	.LC9:
 10395 0000 4F757420 		.ascii	"Out of range value in program bytes\000"
 10395      6F662072 
 10395      616E6765 
 10395      2076616C 
 10395      75652069 
 10396              	.LC10:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 186


 10397 0024 4E6F2070 		.ascii	"No program bytes provided\000"
 10397      726F6772 
 10397      616D2062 
 10397      79746573 
 10397      2070726F 
 10398              		.section	.rodata._ZN8Platform13ReportDriversE11MessageTypeRmPKcRb.part.33.str1.4,"aMS",%progbits,1
 10399              		.align	2
 10400              	.LC48:
 10401 0000 25732072 		.ascii	"%s reported by driver(s)\000"
 10401      65706F72 
 10401      74656420 
 10401      62792064 
 10401      72697665 
 10402 0019 000000   		.space	3
 10403              	.LC49:
 10404 001c 20257500 		.ascii	" %u\000"
 10405              	.LC50:
 10406 0020 25730A00 		.ascii	"%s\012\000"
 10407              		.section	.rodata._ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi.str1.4,"aMS",%progbits,1
 10408              		.align	2
 10409              	.LC91:
 10410 0000 6F6B00   		.ascii	"ok\000"
 10411 0003 00       		.space	1
 10412              	.LC92:
 10413 0004 4552524F 		.ascii	"ERROR\000"
 10413      5200
 10414 000a 0000     		.space	2
 10415              	.LC93:
 10416 000c 53442063 		.ascii	"SD card 0 not detected\012\000"
 10416      61726420 
 10416      30206E6F 
 10416      74206465 
 10416      74656374 
 10417              	.LC94:
 10418 0024 53442063 		.ascii	"SD card speed %.2fMbytes/sec is unexpected\012\000"
 10418      61726420 
 10418      73706565 
 10418      6420252E 
 10418      32664D62 
 10419              	.LC95:
 10420 0050 53442063 		.ascii	"SD card interface OK\012\000"
 10420      61726420 
 10420      696E7465 
 10420      72666163 
 10420      65204F4B 
 10421 0066 0000     		.space	2
 10422              	.LC96:
 10423 0068 4D697373 		.ascii	"Missing T parameter\000"
 10423      696E6720 
 10423      54207061 
 10423      72616D65 
 10423      74657200 
 10424              	.LC97:
 10425 007c 4D435520 		.ascii	"MCU temperature %.1f is lower than expected\012\000"
 10425      74656D70 
 10425      65726174 
 10425      75726520 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 187


 10425      252E3166 
 10426 00a9 000000   		.space	3
 10427              	.LC98:
 10428 00ac 4D435520 		.ascii	"MCU temperature %.1f is higher than expected\012\000"
 10428      74656D70 
 10428      65726174 
 10428      75726520 
 10428      252E3166 
 10429 00da 0000     		.space	2
 10430              	.LC99:
 10431 00dc 4D435520 		.ascii	"MCU temperature reading OK\012\000"
 10431      74656D70 
 10431      65726174 
 10431      75726520 
 10431      72656164 
 10432              	.LC100:
 10433 00f8 4D697373 		.ascii	"Missing V parameter\000"
 10433      696E6720 
 10433      56207061 
 10433      72616D65 
 10433      74657200 
 10434              	.LC101:
 10435 010c 566F6C74 		.ascii	"Voltage reading %.1f is lower than expected\012\000"
 10435      61676520 
 10435      72656164 
 10435      696E6720 
 10435      252E3166 
 10436 0139 000000   		.space	3
 10437              	.LC102:
 10438 013c 44726976 		.ascii	"Driver status OK\012\000"
 10438      65722073 
 10438      74617475 
 10438      73204F4B 
 10438      0A00
 10439 014e 0000     		.space	2
 10440              	.LC103:
 10441 0150 566F6C74 		.ascii	"Voltage reading %.1f is higher than expected\012\000"
 10441      61676520 
 10441      72656164 
 10441      696E6720 
 10441      252E3166 
 10442 017e 0000     		.space	2
 10443              	.LC104:
 10444 0180 566F6C74 		.ascii	"Voltage reading OK\012\000"
 10444      61676520 
 10444      72656164 
 10444      696E6720 
 10444      4F4B0A00 
 10445              	.LC105:
 10446 0194 44726976 		.ascii	"Driver %u reports over temperature\012\000"
 10446      65722025 
 10446      75207265 
 10446      706F7274 
 10446      73206F76 
 10447              	.LC106:
 10448 01b8 44726976 		.ascii	"Driver %u reports short-to-ground\012\000"
 10448      65722025 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 188


 10448      75207265 
 10448      706F7274 
 10448      73207368 
 10449 01db 00       		.space	1
 10450              	.LC107:
 10451 01dc 416C6C20 		.ascii	"All checks passed\012\000"
 10451      63686563 
 10451      6B732070 
 10451      61737365 
 10451      640A00
 10452 01ef 00       		.space	1
 10453              	.LC108:
 10454 01f0 2A2A2A2A 		.ascii	"***** ONE OR MORE CHECKS FAILED *****\012\000"
 10454      2A204F4E 
 10454      45204F52 
 10454      204D4F52 
 10454      45204348 
 10455 0217 00       		.space	1
 10456              	.LC109:
 10457 0218 44696167 		.ascii	"Diagnostic Test\012\000"
 10457      6E6F7374 
 10457      69632054 
 10457      6573740A 
 10457      00
 10458 0229 000000   		.space	3
 10459              	.LC110:
 10460 022c 53717561 		.ascii	"Square roots: 62-bit %.2fus %s, 32-bit %.2fus %s\000"
 10460      72652072 
 10460      6F6F7473 
 10460      3A203632 
 10460      2D626974 
 10461 025d 000000   		.space	3
 10462              	.LC111:
 10463 0260 45787061 		.ascii	"Expander status %04X\012\000"
 10463      6E646572 
 10463      20737461 
 10463      74757320 
 10463      25303458 
 10464              		.section	.rodata._ZN8Platform14SendAuxMessageEPKc.str1.4,"aMS",%progbits,1
 10465              		.align	2
 10466              	.LC43:
 10467 0000 7B226D65 		.ascii	"{\"message\":\000"
 10467      73736167 
 10467      65223A00 
 10468              	.LC44:
 10469 000c 7D0A00   		.ascii	"}\012\000"
 10470              		.section	.rodata._ZN8Platform14UpdateFirmwareEv.str1.4,"aMS",%progbits,1
 10471              		.align	2
 10472              	.LC115:
 10473 0000 49415020 		.ascii	"IAP not found\012\000"
 10473      6E6F7420 
 10473      666F756E 
 10473      640A00
 10474 000f 00       		.space	1
 10475              	.LC116:
 10476 0010 666C6173 		.ascii	"flash write failed, code=%lu, address=0x%08lx\012\000"
 10476      68207772 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 189


 10476      69746520 
 10476      6661696C 
 10476      65642C20 
 10477 003f 00       		.space	1
 10478              	.LC117:
 10479 0040 76657269 		.ascii	"verify during flash write failed, address=0x%08lx\012"
 10479      66792064 
 10479      7572696E 
 10479      6720666C 
 10479      61736820 
 10480 0072 00       		.ascii	"\000"
 10481 0073 00       		.space	1
 10482              	.LC118:
 10483 0074 55706461 		.ascii	"Updating main firmware\012\000"
 10483      74696E67 
 10483      206D6169 
 10483      6E206669 
 10483      726D7761 
 10484              	.LC119:
 10485 008c 53687574 		.ascii	"Shutting down USB interface to update main firmware"
 10485      74696E67 
 10485      20646F77 
 10485      6E205553 
 10485      4220696E 
 10486 00bf 2E205472 		.ascii	". Try reconnecting after 30 seconds.\012\000"
 10486      79207265 
 10486      636F6E6E 
 10486      65637469 
 10486      6E672061 
 10487 00e5 000000   		.space	3
 10488              	.LC120:
 10489 00e8 303A2F73 		.ascii	"0:/sys/Duet2CombinedFirmware.bin\000"
 10489      79732F44 
 10489      75657432 
 10489      436F6D62 
 10489      696E6564 
 10490              		.section	.rodata._ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.31.str1.4,"aMS",%progbits,1
 10491              		.align	2
 10492              	.LC37:
 10493 0000 4D323038 		.ascii	"M208 S%d\000"
 10493      20532564 
 10493      00
 10494 0009 000000   		.space	3
 10495              	.LC38:
 10496 000c 20256325 		.ascii	" %c%.2f\000"
 10496      2E326600 
 10497              		.section	.rodata._ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,
 10498              		.align	2
 10499              	.LC19:
 10500 0000 656E6162 		.ascii	"enabled\000"
 10500      6C656400 
 10501              	.LC20:
 10502 0008 64697361 		.ascii	"disabled\000"
 10502      626C6564 
 10502      00
 10503 0011 000000   		.space	3
 10504              	.LC21:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 190


 10505 0014 4D697373 		.ascii	"Missing filename in M929 command\000"
 10505      696E6720 
 10505      66696C65 
 10505      6E616D65 
 10505      20696E20 
 10506 0035 000000   		.space	3
 10507              	.LC22:
 10508 0038 6576656E 		.ascii	"eventlog.txt\000"
 10508      746C6F67 
 10508      2E747874 
 10508      00
 10509 0045 000000   		.space	3
 10510              	.LC23:
 10511 0048 4576656E 		.ascii	"Event logging is %s\000"
 10511      74206C6F 
 10511      6767696E 
 10511      67206973 
 10511      20257300 
 10512              		.section	.rodata._ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRefRP12OutputBuffer.
 10513              		.align	2
 10514              	.LC30:
 10515 0000 7265686F 		.ascii	"rehome\000"
 10515      6D6500
 10516 0007 00       		.space	1
 10517              	.LC31:
 10518 0008 6E6F6E65 		.ascii	"none\000"
 10518      00
 10519 000d 000000   		.space	3
 10520              	.LC32:
 10521 0010 70617573 		.ascii	"pause\000"
 10521      6500
 10522 0016 0000     		.space	2
 10523              	.LC33:
 10524 0018 6C6F6700 		.ascii	"log\000"
 10525              	.LC34:
 10526 001c 496E7661 		.ascii	"Invalid drive number '%lu'\000"
 10526      6C696420 
 10526      64726976 
 10526      65206E75 
 10526      6D626572 
 10527 0037 00       		.space	1
 10528              	.LC35:
 10529 0038 44726976 		.ascii	"Driver %u: \000"
 10529      65722025 
 10529      753A2000 
 10530              	.LC36:
 10531 0044 2C206163 		.ascii	", action: %s\000"
 10531      74696F6E 
 10531      3A202573 
 10531      00
 10532              		.section	.rodata._ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef.str1.4,"aMS",%progbit
 10533              		.align	2
 10534              	.LC11:
 10535 0000 44756574 		.ascii	"Duet2CombinedFirmware.bin\000"
 10535      32436F6D 
 10535      62696E65 
 10535      64466972 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 191


 10535      6D776172 
 10536 001a 0000     		.space	2
 10537              	.LC12:
 10538 001c 303A2F73 		.ascii	"0:/sys/\000"
 10538      79732F00 
 10539              	.LC13:
 10540 0024 4669726D 		.ascii	"Firmware binary \"%s\" not found\000"
 10540      77617265 
 10540      2062696E 
 10540      61727920 
 10540      22257322 
 10541 0043 00       		.space	1
 10542              	.LC14:
 10543 0044 4669726D 		.ascii	"Firmware binary \"%s\" is not valid for this electr"
 10543      77617265 
 10543      2062696E 
 10543      61727920 
 10543      22257322 
 10544 0075 6F6E6963 		.ascii	"onics\000"
 10544      7300
 10545 007b 00       		.space	1
 10546              	.LC15:
 10547 007c 69617034 		.ascii	"iap4e.bin\000"
 10547      652E6269 
 10547      6E00
 10548 0086 0000     		.space	2
 10549              	.LC16:
 10550 0088 496E2D61 		.ascii	"In-application programming binary \"%s\" not found\000"
 10550      70706C69 
 10550      63617469 
 10550      6F6E2070 
 10550      726F6772 
 10551              		.section	.rodata._ZN8Platform4BeepEii.str1.4,"aMS",%progbits,1
 10552              		.align	2
 10553              	.LC47:
 10554 0000 7B226265 		.ascii	"{\"beep_freq\":%d,\"beep_length\":%d}\012\000"
 10554      65705F66 
 10554      72657122 
 10554      3A25642C 
 10554      22626565 
 10555              		.section	.rodata._ZN8Platform4InitEv.str1.4,"aMS",%progbits,1
 10556              		.align	2
 10557              	.LC41:
 10558 0000 55534200 		.ascii	"USB\000"
 10559              	.LC42:
 10560 0004 41757800 		.ascii	"Aux\000"
 10561              		.section	.rodata._ZN8Platform4SpinEv.str1.4,"aMS",%progbits,1
 10562              		.align	2
 10563              	.LC121:
 10564 0000 73686F72 		.ascii	"short-to-ground\000"
 10564      742D746F 
 10564      2D67726F 
 10564      756E6400 
 10565              	.LC122:
 10566 0010 6F766572 		.ascii	"over temperature shutdown\000"
 10566      2074656D 
 10566      70657261 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 192


 10566      74757265 
 10566      20736875 
 10567 002a 0000     		.space	2
 10568              	.LC123:
 10569 002c 6D6F746F 		.ascii	"motor phase A may be disconnected\000"
 10569      72207068 
 10569      61736520 
 10569      41206D61 
 10569      79206265 
 10570 004e 0000     		.space	2
 10571              	.LC124:
 10572 0050 6D6F746F 		.ascii	"motor phase B may be disconnected\000"
 10572      72207068 
 10572      61736520 
 10572      42206D61 
 10572      79206265 
 10573 0072 0000     		.space	2
 10574              	.LC125:
 10575 0074 68696768 		.ascii	"high temperature\000"
 10575      2074656D 
 10575      70657261 
 10575      74757265 
 10575      00
 10576 0085 000000   		.space	3
 10577              	.LC126:
 10578 0088 44726976 		.ascii	"Driver(s)%s stalled at Z height %.2f\000"
 10578      65722873 
 10578      29257320 
 10578      7374616C 
 10578      6C656420 
 10579 00ad 000000   		.space	3
 10580              	.LC127:
 10581 00b0 56494E20 		.ascii	"VIN over-voltage event (%.1fV)\000"
 10581      6F766572 
 10581      2D766F6C 
 10581      74616765 
 10581      20657665 
 10582 00cf 00       		.space	1
 10583              	.LC128:
 10584 00d0 56494E20 		.ascii	"VIN under-voltage event (%.1fV)\000"
 10584      756E6465 
 10584      722D766F 
 10584      6C746167 
 10584      65206576 
 10585              	.LC129:
 10586 00f0 56535341 		.ascii	"VSSA fault, check thermistor wiring\012\000"
 10586      20666175 
 10586      6C742C20 
 10586      63686563 
 10586      6B207468 
 10587 0115 000000   		.space	3
 10588              	.LC130:
 10589 0118 41747465 		.ascii	"Attempt to move motors when VIN is not in range\000"
 10589      6D707420 
 10589      746F206D 
 10589      6F766520 
 10589      6D6F746F 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 193


 10590              		.section	.rodata._ZN8Platform8MessageFE11MessageTypePKcSt9__va_list.str1.4,"aMS",%progbits,1
 10591              		.align	2
 10592              	.LC45:
 10593 0000 4572726F 		.ascii	"Error: \000"
 10593      723A2000 
 10594              	.LC46:
 10595 0008 5761726E 		.ascii	"Warning: \000"
 10595      696E673A 
 10595      2000
 10596              		.section	.rodata._ZN8Platform9SendAlertE11MessageTypePKcS2_ifm.str1.4,"aMS",%progbits,1
 10597              		.align	2
 10598              	.LC112:
 10599 0000 2D202573 		.ascii	"- %s -\012\000"
 10599      202D0A00 
 10600              	.LC113:
 10601 0008 53656E64 		.ascii	"Send M292 to continue\012\000"
 10601      204D3239 
 10601      3220746F 
 10601      20636F6E 
 10601      74696E75 
 10602 001f 00       		.space	1
 10603              	.LC114:
 10604 0020 53656E64 		.ascii	"Send M292 to continue or M292 P1 to cancel\012\000"
 10604      204D3239 
 10604      3220746F 
 10604      20636F6E 
 10604      74696E75 
 10605              		.section	.rodata._ZNK8Platform10GetFanNameEj.str1.4,"aMS",%progbits,1
 10606              		.align	2
 10607              	.LC18:
 10608 0000 00       		.ascii	"\000"
 10609              		.section	.rodata._ZNK8Platform13AppendPinNameEtRK9StringRef.str1.4,"aMS",%progbits,1
 10610              		.align	2
 10611              	.LC26:
 10612 0000 48257500 		.ascii	"H%u\000"
 10613              	.LC27:
 10614 0004 46257500 		.ascii	"F%u\000"
 10615              	.LC28:
 10616 0008 45257500 		.ascii	"E%u\000"
 10617              	.LC29:
 10618 000c 53257500 		.ascii	"S%u\000"
 10619              		.section	.rodata._ZNK8Platform14GetBoardStringEv.str1.4,"aMS",%progbits,1
 10620              		.align	2
 10621              	.LC25:
 10622 0000 756E6B6E 		.ascii	"unknown\000"
 10622      6F776E00 
 10623              		.section	.rodata._ZNK8Platform20GetElectronicsStringEv.str1.4,"aMS",%progbits,1
 10624              		.align	2
 10625              	.LC24:
 10626 0000 556E6964 		.ascii	"Unidentified\000"
 10626      656E7469 
 10626      66696564 
 10626      00
 10627              		.section	.rodata._ZNK8Platform23WritePlatformParametersEP9FileStoreb.str1.4,"aMS",%progbits,1
 10628              		.align	2
 10629              	.LC39:
 10630 0000 3B205072 		.ascii	"; Probed axis limits\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 194


 10630      6F626564 
 10630      20617869 
 10630      73206C69 
 10630      6D697473 
 10631 0016 0000     		.space	2
 10632              	.LC40:
 10633 0018 3B205A20 		.ascii	"; Z probe parameters\012\000"
 10633      70726F62 
 10633      65207061 
 10633      72616D65 
 10633      74657273 
 10634              		.section	.rodata._ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy,"a",%progbits
 10635              		.align	2
 10636              		.set	.LANCHOR18,. + 0
 10637              		.type	_ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy, %object
 10638              		.size	_ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy, 8
 10639              	_ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy:
 10640 0000 00000000 		.space	8
 10640      00000000 
 10641              		.section	.rodata.str1.4,"aMS",%progbits,1
 10642              		.align	2
 10643              	.LC131:
 10644 0000 64756574 		.ascii	"duetwifi10\000"
 10644      77696669 
 10644      313000
 10645 000b 00       		.space	1
 10646              	.LC132:
 10647 000c 64756574 		.ascii	"duetwifi102\000"
 10647      77696669 
 10647      31303200 
 10648              	.LC133:
 10649 0018 64756574 		.ascii	"duetethernet10\000"
 10649      65746865 
 10649      726E6574 
 10649      313000
 10650 0027 00       		.space	1
 10651              	.LC134:
 10652 0028 64756574 		.ascii	"duetethernet102\000"
 10652      65746865 
 10652      726E6574 
 10652      31303200 
 10653              	.LC135:
 10654 0038 44756574 		.ascii	"Duet WiFi 1.0 or 1.01\000"
 10654      20576946 
 10654      6920312E 
 10654      30206F72 
 10654      20312E30 
 10655 004e 0000     		.space	2
 10656              	.LC136:
 10657 0050 44756574 		.ascii	"Duet WiFi 1.02 or later\000"
 10657      20576946 
 10657      6920312E 
 10657      3032206F 
 10657      72206C61 
 10658              	.LC137:
 10659 0068 44756574 		.ascii	"Duet Ethernet 1.0 or 1.01\000"
 10659      20457468 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYMfLu7.s 			page 195


 10659      65726E65 
 10659      7420312E 
 10659      30206F72 
 10660 0082 0000     		.space	2
 10661              	.LC138:
 10662 0084 44756574 		.ascii	"Duet Ethernet 1.02 or later\000"
 10662      20457468 
 10662      65726E65 
 10662      7420312E 
 10662      3032206F 
 10663              	.LC1:
 10664 00a0 706F7765 		.ascii	"power up\000"
 10664      72207570 
 10664      00
 10665 00a9 000000   		.space	3
 10666              	.LC2:
 10667 00ac 6261636B 		.ascii	"backup\000"
 10667      757000
 10668 00b3 00       		.space	1
 10669              	.LC3:
 10670 00b4 77617463 		.ascii	"watchdog\000"
 10670      68646F67 
 10670      00
 10671 00bd 000000   		.space	3
 10672              	.LC4:
 10673 00c0 736F6674 		.ascii	"software\000"
 10673      77617265 
 10673      00
 10674 00c9 000000   		.space	3
 10675              	.LC5:
 10676 00cc 72657365 		.ascii	"reset button or watchdog\000"
 10676      74206275 
 10676      74746F6E 
 10676      206F7220 
 10676      77617463 
 10677 00e5 000000   		.space	3
 10678              	.LC6:
 10679 00e8 3F00     		.ascii	"?\000"
 10680              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
