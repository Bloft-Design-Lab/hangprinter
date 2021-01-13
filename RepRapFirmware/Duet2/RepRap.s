ARM GAS  /tmp/ccgYgJck.s 			page 1


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
  13              		.file	"RepRap.cpp"
  14              		.section	.text.hsmciIdle,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	hsmciIdle
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	hsmciIdle, %function
  23              	hsmciIdle:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 10B5     		push	{r4, lr}
  27 0002 114C     		ldr	r4, .L9
  28 0004 94F83E30 		ldrb	r3, [r4, #62]	@ zero_extendqisi2
  29 0008 012B     		cmp	r3, #1
  30 000a 0CD1     		bne	.L2
  31              	.L5:
  32 000c 0021     		movs	r1, #0
  33 000e 206A     		ldr	r0, [r4, #32]
  34 0010 FFF7FEFF 		bl	_ZN11PortControl4SpinEb
  35 0014 94F83E30 		ldrb	r3, [r4, #62]	@ zero_extendqisi2
  36 0018 0C2B     		cmp	r3, #12
  37 001a 0CD1     		bne	.L3
  38              	.L4:
  39 001c 0020     		movs	r0, #0
  40 001e BDE81040 		pop	{r4, lr}
  41 0022 FFF7FEBF 		b	_ZN15FilamentMonitor4SpinEb
  42              	.L2:
  43 0026 0021     		movs	r1, #0
  44 0028 6068     		ldr	r0, [r4, #4]
  45 002a FFF7FEFF 		bl	_ZN7Network4SpinEb
  46 002e 94F83E30 		ldrb	r3, [r4, #62]	@ zero_extendqisi2
  47 0032 0B2B     		cmp	r3, #11
  48 0034 EAD1     		bne	.L5
  49              	.L3:
  50 0036 0020     		movs	r0, #0
  51 0038 FFF7FEFF 		bl	_ZN13DuetExpansion4SpinEb
  52 003c 94F83E30 		ldrb	r3, [r4, #62]	@ zero_extendqisi2
  53 0040 0D2B     		cmp	r3, #13
  54 0042 EBD1     		bne	.L4
  55 0044 10BD     		pop	{r4, pc}
  56              	.L10:
  57 0046 00BF     		.align	2
ARM GAS  /tmp/ccgYgJck.s 			page 2


  58              	.L9:
  59 0048 00000000 		.word	reprap
  60              		.size	hsmciIdle, .-hsmciIdle
  61              		.section	.text._ZN6RepRap4ExitEv,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	_ZN6RepRap4ExitEv
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZN6RepRap4ExitEv, %function
  70              	_ZN6RepRap4ExitEv:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 10B5     		push	{r4, lr}
  74 0002 0446     		mov	r4, r0
  75 0004 0020     		movs	r0, #0
  76 0006 FFF7FEFF 		bl	hsmci_set_idle_func
  77 000a 0023     		movs	r3, #0
  78 000c 84F84D30 		strb	r3, [r4, #77]
  79 0010 E068     		ldr	r0, [r4, #12]
  80 0012 FFF7FEFF 		bl	_ZN4Heat4ExitEv
  81 0016 A068     		ldr	r0, [r4, #8]
  82 0018 FFF7FEFF 		bl	_ZN4Move4ExitEv
  83 001c 2069     		ldr	r0, [r4, #16]
  84 001e FFF7FEFF 		bl	_ZN6GCodes4ExitEv
  85 0022 A069     		ldr	r0, [r4, #24]
  86 0024 FFF7FEFF 		bl	_ZN7Scanner4ExitEv
  87 0028 206A     		ldr	r0, [r4, #32]
  88 002a FFF7FEFF 		bl	_ZN11PortControl4ExitEv
  89 002e 6068     		ldr	r0, [r4, #4]
  90 0030 FFF7FEFF 		bl	_ZN7Network4ExitEv
  91 0034 2068     		ldr	r0, [r4]
  92 0036 BDE81040 		pop	{r4, lr}
  93 003a FFF7FEBF 		b	_ZN8Platform4ExitEv
  94              		.size	_ZN6RepRap4ExitEv, .-_ZN6RepRap4ExitEv
  95              		.global	__aeabi_f2d
  96 003e 00BF     		.section	.text._ZN6RepRap6TimingE11MessageType,"ax",%progbits
  97              		.align	1
  98              		.p2align 2,,3
  99              		.global	_ZN6RepRap6TimingE11MessageType
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu fpv4-sp-d16
 104              		.type	_ZN6RepRap6TimingE11MessageType, %function
 105              	_ZN6RepRap6TimingE11MessageType:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108 0000 70B5     		push	{r4, r5, r6, lr}
 109 0002 2DED028B 		vpush.64	{d8}
 110 0006 D0ED107A 		vldr.32	s15, [r0, #64]	@ int
 111 000a 9FED158A 		vldr.32	s16, .L15
 112 000e 0568     		ldr	r5, [r0]
 113 0010 F8EE677A 		vcvt.f32.u32	s15, s15
 114 0014 84B0     		sub	sp, sp, #16
ARM GAS  /tmp/ccgYgJck.s 			page 3


 115 0016 67EE887A 		vmul.f32	s15, s15, s16
 116 001a 0446     		mov	r4, r0
 117 001c 17EE900A 		vmov	r0, s15
 118 0020 0E46     		mov	r6, r1
 119 0022 FFF7FEFF 		bl	__aeabi_f2d
 120 0026 D4ED117A 		vldr.32	s15, [r4, #68]	@ int
 121 002a F8EE677A 		vcvt.f32.u32	s15, s15
 122 002e CDE90201 		strd	r0, [sp, #8]
 123 0032 67EE887A 		vmul.f32	s15, s15, s16
 124 0036 17EE900A 		vmov	r0, s15
 125 003a FFF7FEFF 		bl	__aeabi_f2d
 126 003e 094A     		ldr	r2, .L15+4
 127 0040 CDE90001 		strd	r0, [sp]
 128 0044 3146     		mov	r1, r6
 129 0046 2846     		mov	r0, r5
 130 0048 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 131 004c 4FF0FF32 		mov	r2, #-1
 132 0050 0023     		movs	r3, #0
 133 0052 C4E91023 		strd	r2, r3, [r4, #64]
 134 0056 04B0     		add	sp, sp, #16
 135              		@ sp needed
 136 0058 BDEC028B 		vldm	sp!, {d8}
 137 005c 70BD     		pop	{r4, r5, r6, pc}
 138              	.L16:
 139 005e 00BF     		.align	2
 140              	.L15:
 141 0060 65CF8B3A 		.word	982241125
 142 0064 00000000 		.word	.LC0
 143              		.size	_ZN6RepRap6TimingE11MessageType, .-_ZN6RepRap6TimingE11MessageType
 144              		.section	.text._ZN6RepRap11DiagnosticsE11MessageType,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	_ZN6RepRap11DiagnosticsE11MessageType
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	_ZN6RepRap11DiagnosticsE11MessageType, %function
 153              	_ZN6RepRap11DiagnosticsE11MessageType:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156 0000 70B5     		push	{r4, r5, r6, lr}
 157 0002 0546     		mov	r5, r0
 158 0004 82B0     		sub	sp, sp, #8
 159 0006 224A     		ldr	r2, .L21
 160 0008 0068     		ldr	r0, [r0]
 161 000a 0C46     		mov	r4, r1
 162 000c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 163 0010 2E68     		ldr	r6, [r5]
 164 0012 3046     		mov	r0, r6
 165 0014 FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 166 0018 1E4B     		ldr	r3, .L21+4
 167 001a 0190     		str	r0, [sp, #4]
 168 001c 2146     		mov	r1, r4
 169 001e 3046     		mov	r0, r6
 170 0020 0093     		str	r3, [sp]
 171 0022 1D4A     		ldr	r2, .L21+8
ARM GAS  /tmp/ccgYgJck.s 			page 4


 172 0024 1D4B     		ldr	r3, .L21+12
 173 0026 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 174 002a FFF7FEFF 		bl	_ZN13DuetExpansion21GetExpansionBoardNameEv
 175 002e 1C49     		ldr	r1, .L21+16
 176 0030 1C4A     		ldr	r2, .L21+20
 177 0032 0346     		mov	r3, r0
 178 0034 0028     		cmp	r0, #0
 179 0036 08BF     		it	eq
 180 0038 0A46     		moveq	r2, r1
 181 003a 2146     		mov	r1, r4
 182 003c 2868     		ldr	r0, [r5]
 183 003e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 184 0042 2146     		mov	r1, r4
 185 0044 2868     		ldr	r0, [r5]
 186 0046 FFF7FEFF 		bl	_ZN8Platform13PrintUniqueIdE11MessageType
 187 004a 2046     		mov	r0, r4
 188 004c FFF7FEFF 		bl	_ZN12OutputBuffer11DiagnosticsE11MessageType
 189 0050 2046     		mov	r0, r4
 190 0052 FFF7FEFF 		bl	_ZN5Tasks11DiagnosticsE11MessageType
 191 0056 2146     		mov	r1, r4
 192 0058 2868     		ldr	r0, [r5]
 193 005a FFF7FEFF 		bl	_ZN8Platform11DiagnosticsE11MessageType
 194 005e 2146     		mov	r1, r4
 195 0060 A868     		ldr	r0, [r5, #8]
 196 0062 FFF7FEFF 		bl	_ZN4Move11DiagnosticsE11MessageType
 197 0066 2146     		mov	r1, r4
 198 0068 E868     		ldr	r0, [r5, #12]
 199 006a FFF7FEFF 		bl	_ZN4Heat11DiagnosticsE11MessageType
 200 006e 2146     		mov	r1, r4
 201 0070 2869     		ldr	r0, [r5, #16]
 202 0072 FFF7FEFF 		bl	_ZN6GCodes11DiagnosticsE11MessageType
 203 0076 2146     		mov	r1, r4
 204 0078 6868     		ldr	r0, [r5, #4]
 205 007a FFF7FEFF 		bl	_ZN7Network11DiagnosticsE11MessageType
 206 007e 2046     		mov	r0, r4
 207 0080 FFF7FEFF 		bl	_ZN15FilamentMonitor11DiagnosticsE11MessageType
 208 0084 2046     		mov	r0, r4
 209 0086 02B0     		add	sp, sp, #8
 210              		@ sp needed
 211 0088 BDE87040 		pop	{r4, r5, r6, lr}
 212 008c FFF7FEBF 		b	_ZN13DuetExpansion11DiagnosticsE11MessageType
 213              	.L22:
 214              		.align	2
 215              	.L21:
 216 0090 0C000000 		.word	.LC3
 217 0094 68000000 		.word	.LC6
 218 0098 4C000000 		.word	.LC5
 219 009c 24000000 		.word	.LC4
 220 00a0 00000000 		.word	.LC1
 221 00a4 04000000 		.word	.LC2
 222              		.size	_ZN6RepRap11DiagnosticsE11MessageType, .-_ZN6RepRap11DiagnosticsE11MessageType
 223              		.section	.text._ZN6RepRap4SpinEv.part.20,"ax",%progbits
 224              		.align	1
 225              		.p2align 2,,3
 226              		.syntax unified
 227              		.thumb
 228              		.thumb_func
ARM GAS  /tmp/ccgYgJck.s 			page 5


 229              		.fpu fpv4-sp-d16
 230              		.type	_ZN6RepRap4SpinEv.part.20, %function
 231              	_ZN6RepRap4SpinEv.part.20:
 232              		@ args = 0, pretend = 0, frame = 8
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 235 0004 494B     		ldr	r3, .L44
 236 0006 0446     		mov	r4, r0
 237 0008 0025     		movs	r5, #0
 238 000a 82B0     		sub	sp, sp, #8
 239 000c D3F89070 		ldr	r7, [r3, #144]
 240 0010 0068     		ldr	r0, [r0]
 241 0012 A587     		strh	r5, [r4, #60]	@ movhi
 242 0014 0126     		movs	r6, #1
 243 0016 84F83E50 		strb	r5, [r4, #62]
 244 001a FFF7FEFF 		bl	_ZN8Platform4SpinEv
 245 001e 3146     		mov	r1, r6
 246 0020 6068     		ldr	r0, [r4, #4]
 247 0022 A587     		strh	r5, [r4, #60]	@ movhi
 248 0024 84F83E60 		strb	r6, [r4, #62]
 249 0028 FFF7FEFF 		bl	_ZN7Network4SpinEb
 250 002c 0323     		movs	r3, #3
 251 002e 84F83E30 		strb	r3, [r4, #62]
 252 0032 2069     		ldr	r0, [r4, #16]
 253 0034 A587     		strh	r5, [r4, #60]	@ movhi
 254 0036 FFF7FEFF 		bl	_ZN6GCodes4SpinEv
 255 003a 0423     		movs	r3, #4
 256 003c 84F83E30 		strb	r3, [r4, #62]
 257 0040 A068     		ldr	r0, [r4, #8]
 258 0042 A587     		strh	r5, [r4, #60]	@ movhi
 259 0044 FFF7FEFF 		bl	_ZN4Move4SpinEv
 260 0048 0523     		movs	r3, #5
 261 004a 84F83E30 		strb	r3, [r4, #62]
 262 004e E068     		ldr	r0, [r4, #12]
 263 0050 A587     		strh	r5, [r4, #60]	@ movhi
 264 0052 FFF7FEFF 		bl	_ZN4Heat4SpinEv
 265 0056 0823     		movs	r3, #8
 266 0058 84F83E30 		strb	r3, [r4, #62]
 267 005c A069     		ldr	r0, [r4, #24]
 268 005e A587     		strh	r5, [r4, #60]	@ movhi
 269 0060 FFF7FEFF 		bl	_ZN7Scanner4SpinEv
 270 0064 0B23     		movs	r3, #11
 271 0066 3146     		mov	r1, r6
 272 0068 84F83E30 		strb	r3, [r4, #62]
 273 006c 206A     		ldr	r0, [r4, #32]
 274 006e A587     		strh	r5, [r4, #60]	@ movhi
 275 0070 FFF7FEFF 		bl	_ZN11PortControl4SpinEb
 276 0074 0923     		movs	r3, #9
 277 0076 84F83E30 		strb	r3, [r4, #62]
 278 007a E069     		ldr	r0, [r4, #28]
 279 007c A587     		strh	r5, [r4, #60]	@ movhi
 280 007e FFF7FEFF 		bl	_ZN12PrintMonitor4SpinEv
 281 0082 0C23     		movs	r3, #12
 282 0084 84F83E30 		strb	r3, [r4, #62]
 283 0088 3046     		mov	r0, r6
 284 008a A587     		strh	r5, [r4, #60]	@ movhi
 285 008c FFF7FEFF 		bl	_ZN13DuetExpansion4SpinEb
ARM GAS  /tmp/ccgYgJck.s 			page 6


 286 0090 0D23     		movs	r3, #13
 287 0092 84F83E30 		strb	r3, [r4, #62]
 288 0096 A587     		strh	r5, [r4, #60]	@ movhi
 289 0098 3046     		mov	r0, r6
 290 009a FFF7FEFF 		bl	_ZN15FilamentMonitor4SpinEb
 291 009e B4F8B013 		ldrh	r1, [r4, #944]
 292 00a2 A587     		strh	r5, [r4, #60]	@ movhi
 293 00a4 1023     		movs	r3, #16
 294 00a6 84F83E30 		strb	r3, [r4, #62]
 295 00aa B1B9     		cbnz	r1, .L42
 296              	.L24:
 297 00ac FFF7FEFF 		bl	millis
 298 00b0 636B     		ldr	r3, [r4, #52]
 299 00b2 C31A     		subs	r3, r0, r3
 300 00b4 B3F57A6F 		cmp	r3, #4000
 301 00b8 0646     		mov	r6, r0
 302 00ba 14D2     		bcs	.L43
 303              	.L25:
 304 00bc 1B4B     		ldr	r3, .L44
 305 00be 226C     		ldr	r2, [r4, #64]
 306 00c0 D3F89030 		ldr	r3, [r3, #144]
 307 00c4 DB1B     		subs	r3, r3, r7
 308 00c6 9342     		cmp	r3, r2
 309 00c8 626C     		ldr	r2, [r4, #68]
 310 00ca 38BF     		it	cc
 311 00cc 2364     		strcc	r3, [r4, #64]
 312 00ce 9342     		cmp	r3, r2
 313 00d0 88BF     		it	hi
 314 00d2 6364     		strhi	r3, [r4, #68]
 315 00d4 02B0     		add	sp, sp, #8
 316              		@ sp needed
 317 00d6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 318              	.L42:
 319 00da 2046     		mov	r0, r4
 320 00dc FFF7FEFF 		bl	_ZN6RepRap11DiagnosticsE11MessageType
 321 00e0 A4F8B053 		strh	r5, [r4, #944]	@ movhi
 322 00e4 E2E7     		b	.L24
 323              	.L43:
 324 00e6 6846     		mov	r0, sp
 325 00e8 4FF0FF32 		mov	r2, #-1
 326 00ec 04F12401 		add	r1, r4, #36
 327 00f0 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 328 00f4 E56A     		ldr	r5, [r4, #44]
 329 00f6 ADB1     		cbz	r5, .L26
 330 00f8 DFF83480 		ldr	r8, .L44+4
 331 00fc 01E0     		b	.L28
 332              	.L27:
 333 00fe 2D68     		ldr	r5, [r5]
 334 0100 85B1     		cbz	r5, .L26
 335              	.L28:
 336 0102 2846     		mov	r0, r5
 337 0104 FFF7FEFF 		bl	_ZN4Tool25DisplayColdExtrudeWarningEv
 338 0108 0028     		cmp	r0, #0
 339 010a F8D0     		beq	.L27
 340 010c D5F89C30 		ldr	r3, [r5, #156]
 341 0110 2068     		ldr	r0, [r4]
 342 0112 4246     		mov	r2, r8
ARM GAS  /tmp/ccgYgJck.s 			page 7


 343 0114 40F2B521 		movw	r1, #693
 344 0118 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 345 011c 6663     		str	r6, [r4, #52]
 346 011e 2D68     		ldr	r5, [r5]
 347 0120 002D     		cmp	r5, #0
 348 0122 EED1     		bne	.L28
 349              	.L26:
 350 0124 6846     		mov	r0, sp
 351 0126 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 352 012a C7E7     		b	.L25
 353              	.L45:
 354              		.align	2
 355              	.L44:
 356 012c 00000940 		.word	1074331648
 357 0130 00000000 		.word	.LC7
 358              		.size	_ZN6RepRap4SpinEv.part.20, .-_ZN6RepRap4SpinEv.part.20
 359              		.section	.text._ZN6RepRap4SpinEv,"ax",%progbits
 360              		.align	1
 361              		.p2align 2,,3
 362              		.global	_ZN6RepRap4SpinEv
 363              		.syntax unified
 364              		.thumb
 365              		.thumb_func
 366              		.fpu fpv4-sp-d16
 367              		.type	_ZN6RepRap4SpinEv, %function
 368              	_ZN6RepRap4SpinEv:
 369              		@ args = 0, pretend = 0, frame = 0
 370              		@ frame_needed = 0, uses_anonymous_args = 0
 371              		@ link register save eliminated.
 372 0000 90F84D30 		ldrb	r3, [r0, #77]	@ zero_extendqisi2
 373 0004 03B9     		cbnz	r3, .L48
 374 0006 7047     		bx	lr
 375              	.L48:
 376 0008 FFF7FEBF 		b	_ZN6RepRap4SpinEv.part.20
 377              		.size	_ZN6RepRap4SpinEv, .-_ZN6RepRap4SpinEv
 378              		.section	.text._ZN6RepRap13EmergencyStopEv,"ax",%progbits
 379              		.align	1
 380              		.p2align 2,,3
 381              		.global	_ZN6RepRap13EmergencyStopEv
 382              		.syntax unified
 383              		.thumb
 384              		.thumb_func
 385              		.fpu fpv4-sp-d16
 386              		.type	_ZN6RepRap13EmergencyStopEv, %function
 387              	_ZN6RepRap13EmergencyStopEv:
 388              		@ args = 0, pretend = 0, frame = 8
 389              		@ frame_needed = 0, uses_anonymous_args = 0
 390 0000 30B5     		push	{r4, r5, lr}
 391 0002 0122     		movs	r2, #1
 392 0004 0369     		ldr	r3, [r0, #16]
 393 0006 80F84C20 		strb	r2, [r0, #76]
 394 000a 93F8A830 		ldrb	r3, [r3, #168]	@ zero_extendqisi2
 395 000e 9342     		cmp	r3, r2
 396 0010 83B0     		sub	sp, sp, #12
 397 0012 0546     		mov	r5, r0
 398 0014 3CD0     		beq	.L51
 399 0016 022B     		cmp	r3, #2
ARM GAS  /tmp/ccgYgJck.s 			page 8


 400 0018 25D0     		beq	.L60
 401              	.L50:
 402 001a 6846     		mov	r0, sp
 403 001c 4FF0FF32 		mov	r2, #-1
 404 0020 05F12401 		add	r1, r5, #36
 405 0024 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 406 0028 EC6A     		ldr	r4, [r5, #44]
 407 002a 2CB1     		cbz	r4, .L53
 408              	.L54:
 409 002c 2046     		mov	r0, r4
 410 002e FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 411 0032 2468     		ldr	r4, [r4]
 412 0034 002C     		cmp	r4, #0
 413 0036 F9D1     		bne	.L54
 414              	.L53:
 415 0038 6846     		mov	r0, sp
 416 003a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 417 003e E868     		ldr	r0, [r5, #12]
 418 0040 FFF7FEFF 		bl	_ZN4Heat4ExitEv
 419 0044 A868     		ldr	r0, [r5, #8]
 420 0046 FFF7FEFF 		bl	_ZN4Move4ExitEv
 421 004a 2868     		ldr	r0, [r5]
 422 004c FFF7FEFF 		bl	_ZN8Platform16DisableAllDrivesEv
 423 0050 A868     		ldr	r0, [r5, #8]
 424 0052 FFF7FEFF 		bl	_ZN4Move4ExitEv
 425 0056 2868     		ldr	r0, [r5]
 426 0058 FFF7FEFF 		bl	_ZN8Platform16DisableAllDrivesEv
 427 005c 2868     		ldr	r0, [r5]
 428 005e FFF7FEFF 		bl	_ZN8Platform11StopLoggingEv
 429 0062 03B0     		add	sp, sp, #12
 430              		@ sp needed
 431 0064 30BD     		pop	{r4, r5, pc}
 432              	.L60:
 433 0066 0068     		ldr	r0, [r0]
 434 0068 00F60420 		addw	r0, r0, #2564
 435 006c FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 436 0070 2868     		ldr	r0, [r5]
 437 0072 00F62420 		addw	r0, r0, #2596
 438 0076 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 439 007a 2868     		ldr	r0, [r5]
 440 007c 00F64420 		addw	r0, r0, #2628
 441 0080 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 442 0084 2868     		ldr	r0, [r5]
 443 0086 00F66420 		addw	r0, r0, #2660
 444 008a FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 445 008e C4E7     		b	.L50
 446              	.L51:
 447 0090 9FED020A 		vldr.32	s0, .L61
 448 0094 0068     		ldr	r0, [r0]
 449 0096 FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEf
 450 009a BEE7     		b	.L50
 451              	.L62:
 452              		.align	2
 453              	.L61:
 454 009c 00000000 		.word	0
 455              		.size	_ZN6RepRap13EmergencyStopEv, .-_ZN6RepRap13EmergencyStopEv
 456              		.section	.text._ZN6RepRap8SetDebugEb,"ax",%progbits
ARM GAS  /tmp/ccgYgJck.s 			page 9


 457              		.align	1
 458              		.p2align 2,,3
 459              		.global	_ZN6RepRap8SetDebugEb
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu fpv4-sp-d16
 464              		.type	_ZN6RepRap8SetDebugEb, %function
 465              	_ZN6RepRap8SetDebugEb:
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468              		@ link register save eliminated.
 469 0000 0029     		cmp	r1, #0
 470 0002 4FF6FF73 		movw	r3, #65535
 471 0006 08BF     		it	eq
 472 0008 0023     		moveq	r3, #0
 473 000a 8364     		str	r3, [r0, #72]
 474 000c 7047     		bx	lr
 475              		.size	_ZN6RepRap8SetDebugEb, .-_ZN6RepRap8SetDebugEb
 476 000e 00BF     		.section	.text._ZN6RepRap10PrintDebugEv,"ax",%progbits
 477              		.align	1
 478              		.p2align 2,,3
 479              		.global	_ZN6RepRap10PrintDebugEv
 480              		.syntax unified
 481              		.thumb
 482              		.thumb_func
 483              		.fpu fpv4-sp-d16
 484              		.type	_ZN6RepRap10PrintDebugEv, %function
 485              	_ZN6RepRap10PrintDebugEv:
 486              		@ args = 0, pretend = 0, frame = 0
 487              		@ frame_needed = 0, uses_anonymous_args = 0
 488 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 489 0004 0546     		mov	r5, r0
 490 0006 82B0     		sub	sp, sp, #8
 491 0008 0068     		ldr	r0, [r0]
 492 000a 214A     		ldr	r2, .L79
 493 000c DFF89080 		ldr	r8, .L79+16
 494 0010 204F     		ldr	r7, .L79+4
 495 0012 3521     		movs	r1, #53
 496 0014 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 497 0018 0024     		movs	r4, #0
 498 001a 2868     		ldr	r0, [r5]
 499 001c 0126     		movs	r6, #1
 500 001e 02E0     		b	.L68
 501              	.L67:
 502 0020 0134     		adds	r4, r4, #1
 503 0022 102C     		cmp	r4, #16
 504 0024 0FD0     		beq	.L77
 505              	.L68:
 506 0026 AB6C     		ldr	r3, [r5, #72]
 507 0028 06FA04F2 		lsl	r2, r6, r4
 508 002c 1A42     		tst	r2, r3
 509 002e F7D0     		beq	.L67
 510 0030 58F82430 		ldr	r3, [r8, r4, lsl #2]
 511 0034 0094     		str	r4, [sp]
 512 0036 3A46     		mov	r2, r7
 513 0038 3521     		movs	r1, #53
ARM GAS  /tmp/ccgYgJck.s 			page 10


 514 003a 0134     		adds	r4, r4, #1
 515 003c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 516 0040 102C     		cmp	r4, #16
 517 0042 2868     		ldr	r0, [r5]
 518 0044 EFD1     		bne	.L68
 519              	.L77:
 520 0046 144A     		ldr	r2, .L79+8
 521 0048 DFF85480 		ldr	r8, .L79+16
 522 004c 114F     		ldr	r7, .L79+4
 523 004e 3521     		movs	r1, #53
 524 0050 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 525 0054 0024     		movs	r4, #0
 526 0056 2868     		ldr	r0, [r5]
 527 0058 0126     		movs	r6, #1
 528 005a 02E0     		b	.L70
 529              	.L69:
 530 005c 0134     		adds	r4, r4, #1
 531 005e 102C     		cmp	r4, #16
 532 0060 0FD0     		beq	.L78
 533              	.L70:
 534 0062 AB6C     		ldr	r3, [r5, #72]
 535 0064 06FA04F2 		lsl	r2, r6, r4
 536 0068 1A42     		tst	r2, r3
 537 006a F7D1     		bne	.L69
 538 006c 58F82430 		ldr	r3, [r8, r4, lsl #2]
 539 0070 0094     		str	r4, [sp]
 540 0072 3A46     		mov	r2, r7
 541 0074 3521     		movs	r1, #53
 542 0076 0134     		adds	r4, r4, #1
 543 0078 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 544 007c 102C     		cmp	r4, #16
 545 007e 2868     		ldr	r0, [r5]
 546 0080 EFD1     		bne	.L70
 547              	.L78:
 548 0082 064A     		ldr	r2, .L79+12
 549 0084 3521     		movs	r1, #53
 550 0086 02B0     		add	sp, sp, #8
 551              		@ sp needed
 552 0088 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 553 008c FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 554              	.L80:
 555              		.align	2
 556              	.L79:
 557 0090 00000000 		.word	.LC8
 558 0094 20000000 		.word	.LC9
 559 0098 28000000 		.word	.LC10
 560 009c 00000000 		.word	.LC1
 561 00a0 00000000 		.word	moduleName
 562              		.size	_ZN6RepRap10PrintDebugEv, .-_ZN6RepRap10PrintDebugEv
 563              		.section	.text._ZN6RepRap8SetDebugE6Moduleb,"ax",%progbits
 564              		.align	1
 565              		.p2align 2,,3
 566              		.global	_ZN6RepRap8SetDebugE6Moduleb
 567              		.syntax unified
 568              		.thumb
 569              		.thumb_func
 570              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccgYgJck.s 			page 11


 571              		.type	_ZN6RepRap8SetDebugE6Moduleb, %function
 572              	_ZN6RepRap8SetDebugE6Moduleb:
 573              		@ args = 0, pretend = 0, frame = 0
 574              		@ frame_needed = 0, uses_anonymous_args = 0
 575              		@ link register save eliminated.
 576 0000 0F29     		cmp	r1, #15
 577 0002 06D8     		bhi	.L82
 578 0004 0123     		movs	r3, #1
 579 0006 8B40     		lsls	r3, r3, r1
 580 0008 816C     		ldr	r1, [r0, #72]
 581 000a 22B9     		cbnz	r2, .L84
 582 000c 21EA0303 		bic	r3, r1, r3
 583 0010 8364     		str	r3, [r0, #72]
 584              	.L82:
 585 0012 FFF7FEBF 		b	_ZN6RepRap10PrintDebugEv
 586              	.L84:
 587 0016 0B43     		orrs	r3, r3, r1
 588 0018 8364     		str	r3, [r0, #72]
 589 001a FFF7FEBF 		b	_ZN6RepRap10PrintDebugEv
 590              		.size	_ZN6RepRap8SetDebugE6Moduleb, .-_ZN6RepRap8SetDebugE6Moduleb
 591 001e 00BF     		.section	.text._ZN6RepRap7AddToolEP4Tool,"ax",%progbits
 592              		.align	1
 593              		.p2align 2,,3
 594              		.global	_ZN6RepRap7AddToolEP4Tool
 595              		.syntax unified
 596              		.thumb
 597              		.thumb_func
 598              		.fpu fpv4-sp-d16
 599              		.type	_ZN6RepRap7AddToolEP4Tool, %function
 600              	_ZN6RepRap7AddToolEP4Tool:
 601              		@ args = 0, pretend = 0, frame = 8
 602              		@ frame_needed = 0, uses_anonymous_args = 0
 603 0000 30B5     		push	{r4, r5, lr}
 604 0002 0446     		mov	r4, r0
 605 0004 83B0     		sub	sp, sp, #12
 606 0006 0D46     		mov	r5, r1
 607 0008 6846     		mov	r0, sp
 608 000a 04F12401 		add	r1, r4, #36
 609 000e 4FF0FF32 		mov	r2, #-1
 610 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 611 0016 E36A     		ldr	r3, [r4, #44]
 612 0018 04F12C01 		add	r1, r4, #44
 613 001c 73B1     		cbz	r3, .L86
 614 001e D5F89C00 		ldr	r0, [r5, #156]
 615 0022 D3F89C20 		ldr	r2, [r3, #156]
 616 0026 9042     		cmp	r0, r2
 617 0028 04DC     		bgt	.L87
 618 002a 07E0     		b	.L86
 619              	.L88:
 620 002c D3F89C20 		ldr	r2, [r3, #156]
 621 0030 8242     		cmp	r2, r0
 622 0032 03DA     		bge	.L86
 623              	.L87:
 624 0034 1946     		mov	r1, r3
 625 0036 1B68     		ldr	r3, [r3]
 626 0038 002B     		cmp	r3, #0
 627 003a F7D1     		bne	.L88
ARM GAS  /tmp/ccgYgJck.s 			page 12


 628              	.L86:
 629 003c 2B60     		str	r3, [r5]
 630 003e 04F13A02 		add	r2, r4, #58
 631 0042 2846     		mov	r0, r5
 632 0044 0D60     		str	r5, [r1]
 633 0046 04F13801 		add	r1, r4, #56
 634 004a FFF7FEFF 		bl	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 635 004e 2068     		ldr	r0, [r4]
 636 0050 FFF7FEFF 		bl	_ZN8Platform23UpdateConfiguredHeatersEv
 637 0054 6846     		mov	r0, sp
 638 0056 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 639 005a 03B0     		add	sp, sp, #12
 640              		@ sp needed
 641 005c 30BD     		pop	{r4, r5, pc}
 642              		.size	_ZN6RepRap7AddToolEP4Tool, .-_ZN6RepRap7AddToolEP4Tool
 643 005e 00BF     		.section	.text._ZNK6RepRap7GetToolEi,"ax",%progbits
 644              		.align	1
 645              		.p2align 2,,3
 646              		.global	_ZNK6RepRap7GetToolEi
 647              		.syntax unified
 648              		.thumb
 649              		.thumb_func
 650              		.fpu fpv4-sp-d16
 651              		.type	_ZNK6RepRap7GetToolEi, %function
 652              	_ZNK6RepRap7GetToolEi:
 653              		@ args = 0, pretend = 0, frame = 8
 654              		@ frame_needed = 0, uses_anonymous_args = 0
 655 0000 30B5     		push	{r4, r5, lr}
 656 0002 0446     		mov	r4, r0
 657 0004 83B0     		sub	sp, sp, #12
 658 0006 0D46     		mov	r5, r1
 659 0008 6846     		mov	r0, sp
 660 000a 04F12401 		add	r1, r4, #36
 661 000e 4FF0FF32 		mov	r2, #-1
 662 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 663 0016 E46A     		ldr	r4, [r4, #44]
 664 0018 14B9     		cbnz	r4, .L97
 665 001a 05E0     		b	.L95
 666              	.L102:
 667 001c 2468     		ldr	r4, [r4]
 668 001e 1CB1     		cbz	r4, .L95
 669              	.L97:
 670 0020 D4F89C30 		ldr	r3, [r4, #156]
 671 0024 9D42     		cmp	r5, r3
 672 0026 F9D1     		bne	.L102
 673              	.L95:
 674 0028 6846     		mov	r0, sp
 675 002a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 676 002e 2046     		mov	r0, r4
 677 0030 03B0     		add	sp, sp, #12
 678              		@ sp needed
 679 0032 30BD     		pop	{r4, r5, pc}
 680              		.size	_ZNK6RepRap7GetToolEi, .-_ZNK6RepRap7GetToolEi
 681              		.section	.text._ZN6RepRap10SelectToolEib,"ax",%progbits
 682              		.align	1
 683              		.p2align 2,,3
 684              		.global	_ZN6RepRap10SelectToolEib
ARM GAS  /tmp/ccgYgJck.s 			page 13


 685              		.syntax unified
 686              		.thumb
 687              		.thumb_func
 688              		.fpu fpv4-sp-d16
 689              		.type	_ZN6RepRap10SelectToolEib, %function
 690              	_ZN6RepRap10SelectToolEib:
 691              		@ args = 0, pretend = 0, frame = 0
 692              		@ frame_needed = 0, uses_anonymous_args = 0
 693 0000 70B5     		push	{r4, r5, r6, lr}
 694 0002 1646     		mov	r6, r2
 695 0004 0546     		mov	r5, r0
 696 0006 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 697 000a 0446     		mov	r4, r0
 698 000c 36B9     		cbnz	r6, .L105
 699 000e 286B     		ldr	r0, [r5, #48]
 700 0010 18B1     		cbz	r0, .L106
 701 0012 A042     		cmp	r0, r4
 702 0014 04D0     		beq	.L108
 703 0016 FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 704              	.L106:
 705 001a 0CB9     		cbnz	r4, .L108
 706              	.L105:
 707 001c 2C63     		str	r4, [r5, #48]
 708 001e 70BD     		pop	{r4, r5, r6, pc}
 709              	.L108:
 710 0020 2046     		mov	r0, r4
 711 0022 FFF7FEFF 		bl	_ZN4Tool8ActivateEv
 712 0026 2C63     		str	r4, [r5, #48]
 713 0028 70BD     		pop	{r4, r5, r6, pc}
 714              		.size	_ZN6RepRap10SelectToolEib, .-_ZN6RepRap10SelectToolEib
 715 002a 00BF     		.section	.text._ZN6RepRap10DeleteToolEP4Tool,"ax",%progbits
 716              		.align	1
 717              		.p2align 2,,3
 718              		.global	_ZN6RepRap10DeleteToolEP4Tool
 719              		.syntax unified
 720              		.thumb
 721              		.thumb_func
 722              		.fpu fpv4-sp-d16
 723              		.type	_ZN6RepRap10DeleteToolEP4Tool, %function
 724              	_ZN6RepRap10DeleteToolEP4Tool:
 725              		@ args = 0, pretend = 0, frame = 8
 726              		@ frame_needed = 0, uses_anonymous_args = 0
 727 0000 0029     		cmp	r1, #0
 728 0002 4AD0     		beq	.L143
 729 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 730 0006 036B     		ldr	r3, [r0, #48]
 731 0008 9942     		cmp	r1, r3
 732 000a 83B0     		sub	sp, sp, #12
 733 000c 0646     		mov	r6, r0
 734 000e 0C46     		mov	r4, r1
 735 0010 44D0     		beq	.L146
 736              	.L116:
 737 0012 D4F89830 		ldr	r3, [r4, #152]
 738 0016 73B1     		cbz	r3, .L117
 739 0018 6FF0B807 		mvn	r7, #184
 740 001c 3F1B     		subs	r7, r7, r4
 741 001e 04F1B905 		add	r5, r4, #185
ARM GAS  /tmp/ccgYgJck.s 			page 14


 742              	.L118:
 743 0022 15F9011B 		ldrsb	r1, [r5], #1
 744 0026 F068     		ldr	r0, [r6, #12]
 745 0028 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 746 002c D4F89820 		ldr	r2, [r4, #152]
 747 0030 7B19     		adds	r3, r7, r5
 748 0032 9A42     		cmp	r2, r3
 749 0034 F5D8     		bhi	.L118
 750              	.L117:
 751 0036 4FF0FF32 		mov	r2, #-1
 752 003a 6846     		mov	r0, sp
 753 003c 06F12401 		add	r1, r6, #36
 754 0040 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 755 0044 F26A     		ldr	r2, [r6, #44]
 756 0046 42B1     		cbz	r2, .L119
 757 0048 A242     		cmp	r2, r4
 758 004a 03D1     		bne	.L121
 759 004c 20E0     		b	.L147
 760              	.L123:
 761 004e A342     		cmp	r3, r4
 762 0050 20D0     		beq	.L122
 763 0052 1A46     		mov	r2, r3
 764              	.L121:
 765 0054 1368     		ldr	r3, [r2]
 766 0056 002B     		cmp	r3, #0
 767 0058 F9D1     		bne	.L123
 768              	.L119:
 769 005a 2046     		mov	r0, r4
 770 005c FFF7FEFF 		bl	_ZN4Tool6DeleteEPS_
 771 0060 F46A     		ldr	r4, [r6, #44]
 772 0062 0023     		movs	r3, #0
 773 0064 B363     		str	r3, [r6, #56]
 774 0066 5CB1     		cbz	r4, .L124
 775 0068 06F13807 		add	r7, r6, #56
 776 006c 06F13A05 		add	r5, r6, #58
 777              	.L125:
 778 0070 2046     		mov	r0, r4
 779 0072 2A46     		mov	r2, r5
 780 0074 3946     		mov	r1, r7
 781 0076 FFF7FEFF 		bl	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 782 007a 2468     		ldr	r4, [r4]
 783 007c 002C     		cmp	r4, #0
 784 007e F7D1     		bne	.L125
 785              	.L124:
 786 0080 3068     		ldr	r0, [r6]
 787 0082 FFF7FEFF 		bl	_ZN8Platform23UpdateConfiguredHeatersEv
 788 0086 6846     		mov	r0, sp
 789 0088 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 790 008c 03B0     		add	sp, sp, #12
 791              		@ sp needed
 792 008e F0BD     		pop	{r4, r5, r6, r7, pc}
 793              	.L147:
 794 0090 06F12C02 		add	r2, r6, #44
 795              	.L122:
 796 0094 2368     		ldr	r3, [r4]
 797 0096 1360     		str	r3, [r2]
 798 0098 DFE7     		b	.L119
ARM GAS  /tmp/ccgYgJck.s 			page 15


 799              	.L143:
 800 009a 7047     		bx	lr
 801              	.L146:
 802 009c 0022     		movs	r2, #0
 803 009e 4FF0FF31 		mov	r1, #-1
 804 00a2 FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 805 00a6 B4E7     		b	.L116
 806              		.size	_ZN6RepRap10DeleteToolEP4Tool, .-_ZN6RepRap10DeleteToolEP4Tool
 807              		.section	.text._ZNK6RepRap9PrintToolEiRK9StringRef,"ax",%progbits
 808              		.align	1
 809              		.p2align 2,,3
 810              		.global	_ZNK6RepRap9PrintToolEiRK9StringRef
 811              		.syntax unified
 812              		.thumb
 813              		.thumb_func
 814              		.fpu fpv4-sp-d16
 815              		.type	_ZNK6RepRap9PrintToolEiRK9StringRef, %function
 816              	_ZNK6RepRap9PrintToolEiRK9StringRef:
 817              		@ args = 0, pretend = 0, frame = 0
 818              		@ frame_needed = 0, uses_anonymous_args = 0
 819 0000 10B5     		push	{r4, lr}
 820 0002 1446     		mov	r4, r2
 821 0004 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 822 0008 20B1     		cbz	r0, .L149
 823 000a 2146     		mov	r1, r4
 824 000c BDE81040 		pop	{r4, lr}
 825 0010 FFF7FEBF 		b	_ZNK4Tool5PrintERK9StringRef
 826              	.L149:
 827 0014 2046     		mov	r0, r4
 828 0016 0249     		ldr	r1, .L151
 829 0018 BDE81040 		pop	{r4, lr}
 830 001c FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 831              	.L152:
 832              		.align	2
 833              	.L151:
 834 0020 00000000 		.word	.LC11
 835              		.size	_ZNK6RepRap9PrintToolEiRK9StringRef, .-_ZNK6RepRap9PrintToolEiRK9StringRef
 836              		.section	.text._ZN6RepRap11StandbyToolEib,"ax",%progbits
 837              		.align	1
 838              		.p2align 2,,3
 839              		.global	_ZN6RepRap11StandbyToolEib
 840              		.syntax unified
 841              		.thumb
 842              		.thumb_func
 843              		.fpu fpv4-sp-d16
 844              		.type	_ZN6RepRap11StandbyToolEib, %function
 845              	_ZN6RepRap11StandbyToolEib:
 846              		@ args = 0, pretend = 0, frame = 0
 847              		@ frame_needed = 0, uses_anonymous_args = 0
 848 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 849 0004 1646     		mov	r6, r2
 850 0006 0446     		mov	r4, r0
 851 0008 0F46     		mov	r7, r1
 852 000a FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 853 000e 78B1     		cbz	r0, .L154
 854 0010 0546     		mov	r5, r0
 855 0012 26B1     		cbz	r6, .L158
ARM GAS  /tmp/ccgYgJck.s 			page 16


 856 0014 236B     		ldr	r3, [r4, #48]
 857 0016 AB42     		cmp	r3, r5
 858 0018 06D0     		beq	.L159
 859              	.L153:
 860 001a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 861              	.L158:
 862 001e FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 863 0022 236B     		ldr	r3, [r4, #48]
 864 0024 AB42     		cmp	r3, r5
 865 0026 F8D1     		bne	.L153
 866              	.L159:
 867 0028 0023     		movs	r3, #0
 868 002a 2363     		str	r3, [r4, #48]
 869 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 870              	.L154:
 871 0030 3B46     		mov	r3, r7
 872 0032 2068     		ldr	r0, [r4]
 873 0034 034A     		ldr	r2, .L160
 874 0036 40F2B511 		movw	r1, #437
 875 003a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 876 003e FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 877              	.L161:
 878 0042 00BF     		.align	2
 879              	.L160:
 880 0044 00000000 		.word	.LC12
 881              		.size	_ZN6RepRap11StandbyToolEib, .-_ZN6RepRap11StandbyToolEib
 882              		.section	.text._ZNK6RepRap20GetCurrentToolNumberEv,"ax",%progbits
 883              		.align	1
 884              		.p2align 2,,3
 885              		.global	_ZNK6RepRap20GetCurrentToolNumberEv
 886              		.syntax unified
 887              		.thumb
 888              		.thumb_func
 889              		.fpu fpv4-sp-d16
 890              		.type	_ZNK6RepRap20GetCurrentToolNumberEv, %function
 891              	_ZNK6RepRap20GetCurrentToolNumberEv:
 892              		@ args = 0, pretend = 0, frame = 0
 893              		@ frame_needed = 0, uses_anonymous_args = 0
 894              		@ link register save eliminated.
 895 0000 036B     		ldr	r3, [r0, #48]
 896 0002 13B1     		cbz	r3, .L164
 897 0004 D3F89C00 		ldr	r0, [r3, #156]
 898 0008 7047     		bx	lr
 899              	.L164:
 900 000a 4FF0FF30 		mov	r0, #-1
 901 000e 7047     		bx	lr
 902              		.size	_ZNK6RepRap20GetCurrentToolNumberEv, .-_ZNK6RepRap20GetCurrentToolNumberEv
 903              		.section	.text._ZNK6RepRap23GetCurrentOrDefaultToolEv,"ax",%progbits
 904              		.align	1
 905              		.p2align 2,,3
 906              		.global	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 907              		.syntax unified
 908              		.thumb
 909              		.thumb_func
 910              		.fpu fpv4-sp-d16
 911              		.type	_ZNK6RepRap23GetCurrentOrDefaultToolEv, %function
 912              	_ZNK6RepRap23GetCurrentOrDefaultToolEv:
ARM GAS  /tmp/ccgYgJck.s 			page 17


 913              		@ args = 0, pretend = 0, frame = 0
 914              		@ frame_needed = 0, uses_anonymous_args = 0
 915              		@ link register save eliminated.
 916 0000 036B     		ldr	r3, [r0, #48]
 917 0002 03B9     		cbnz	r3, .L165
 918 0004 C36A     		ldr	r3, [r0, #44]
 919              	.L165:
 920 0006 1846     		mov	r0, r3
 921 0008 7047     		bx	lr
 922              		.size	_ZNK6RepRap23GetCurrentOrDefaultToolEv, .-_ZNK6RepRap23GetCurrentOrDefaultToolEv
 923 000a 00BF     		.section	.text._ZNK6RepRap22IsHeaterAssignedToToolEa,"ax",%progbits
 924              		.align	1
 925              		.p2align 2,,3
 926              		.global	_ZNK6RepRap22IsHeaterAssignedToToolEa
 927              		.syntax unified
 928              		.thumb
 929              		.thumb_func
 930              		.fpu fpv4-sp-d16
 931              		.type	_ZNK6RepRap22IsHeaterAssignedToToolEa, %function
 932              	_ZNK6RepRap22IsHeaterAssignedToToolEa:
 933              		@ args = 0, pretend = 0, frame = 8
 934              		@ frame_needed = 0, uses_anonymous_args = 0
 935 0000 30B5     		push	{r4, r5, lr}
 936 0002 0546     		mov	r5, r0
 937 0004 83B0     		sub	sp, sp, #12
 938 0006 0C46     		mov	r4, r1
 939 0008 6846     		mov	r0, sp
 940 000a 05F12401 		add	r1, r5, #36
 941 000e 4FF0FF32 		mov	r2, #-1
 942 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 943 0016 E86A     		ldr	r0, [r5, #44]
 944 0018 A0B1     		cbz	r0, .L173
 945              	.L172:
 946 001a D0F89820 		ldr	r2, [r0, #152]
 947 001e 72B1     		cbz	r2, .L169
 948 0020 90F9B930 		ldrsb	r3, [r0, #185]
 949 0024 A342     		cmp	r3, r4
 950 0026 14D0     		beq	.L175
 951 0028 0244     		add	r2, r2, r0
 952 002a B932     		adds	r2, r2, #185
 953 002c 00F1BA03 		add	r3, r0, #186
 954 0030 03E0     		b	.L170
 955              	.L171:
 956 0032 13F9011B 		ldrsb	r1, [r3], #1
 957 0036 A142     		cmp	r1, r4
 958 0038 0BD0     		beq	.L175
 959              	.L170:
 960 003a 9A42     		cmp	r2, r3
 961 003c F9D1     		bne	.L171
 962              	.L169:
 963 003e 0068     		ldr	r0, [r0]
 964 0040 0028     		cmp	r0, #0
 965 0042 EAD1     		bne	.L172
 966              	.L173:
 967 0044 0446     		mov	r4, r0
 968 0046 6846     		mov	r0, sp
 969 0048 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
ARM GAS  /tmp/ccgYgJck.s 			page 18


 970 004c 2046     		mov	r0, r4
 971 004e 03B0     		add	sp, sp, #12
 972              		@ sp needed
 973 0050 30BD     		pop	{r4, r5, pc}
 974              	.L175:
 975 0052 6846     		mov	r0, sp
 976 0054 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 977 0058 0124     		movs	r4, #1
 978 005a 2046     		mov	r0, r4
 979 005c 03B0     		add	sp, sp, #12
 980              		@ sp needed
 981 005e 30BD     		pop	{r4, r5, pc}
 982              		.size	_ZNK6RepRap22IsHeaterAssignedToToolEa, .-_ZNK6RepRap22IsHeaterAssignedToToolEa
 983              		.section	.text._ZNK6RepRap26GetNumberOfContiguousToolsEv,"ax",%progbits
 984              		.align	1
 985              		.p2align 2,,3
 986              		.global	_ZNK6RepRap26GetNumberOfContiguousToolsEv
 987              		.syntax unified
 988              		.thumb
 989              		.thumb_func
 990              		.fpu fpv4-sp-d16
 991              		.type	_ZNK6RepRap26GetNumberOfContiguousToolsEv, %function
 992              	_ZNK6RepRap26GetNumberOfContiguousToolsEv:
 993              		@ args = 0, pretend = 0, frame = 0
 994              		@ frame_needed = 0, uses_anonymous_args = 0
 995 0000 38B5     		push	{r3, r4, r5, lr}
 996 0002 0546     		mov	r5, r0
 997 0004 0024     		movs	r4, #0
 998 0006 00E0     		b	.L183
 999              	.L185:
 1000 0008 0134     		adds	r4, r4, #1
 1001              	.L183:
 1002 000a 2146     		mov	r1, r4
 1003 000c 2846     		mov	r0, r5
 1004 000e FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 1005 0012 0028     		cmp	r0, #0
 1006 0014 F8D1     		bne	.L185
 1007 0016 2046     		mov	r0, r4
 1008 0018 38BD     		pop	{r3, r4, r5, pc}
 1009              		.size	_ZNK6RepRap26GetNumberOfContiguousToolsEv, .-_ZNK6RepRap26GetNumberOfContiguousToolsEv
 1010 001a 00BF     		.section	.text._ZN6RepRap4TickEv,"ax",%progbits
 1011              		.align	1
 1012              		.p2align 2,,3
 1013              		.global	_ZN6RepRap4TickEv
 1014              		.syntax unified
 1015              		.thumb
 1016              		.thumb_func
 1017              		.fpu fpv4-sp-d16
 1018              		.type	_ZN6RepRap4TickEv, %function
 1019              	_ZN6RepRap4TickEv:
 1020              		@ args = 0, pretend = 0, frame = 0
 1021              		@ frame_needed = 0, uses_anonymous_args = 0
 1022 0000 38B5     		push	{r3, r4, r5, lr}
 1023 0002 2DED028B 		vpush.64	{d8}
 1024 0006 90F84D30 		ldrb	r3, [r0, #77]	@ zero_extendqisi2
 1025 000a 13B1     		cbz	r3, .L186
 1026 000c 90F84E50 		ldrb	r5, [r0, #78]	@ zero_extendqisi2
ARM GAS  /tmp/ccgYgJck.s 			page 19


 1027 0010 15B1     		cbz	r5, .L195
 1028              	.L186:
 1029 0012 BDEC028B 		vldm	sp!, {d8}
 1030 0016 38BD     		pop	{r3, r4, r5, pc}
 1031              	.L195:
 1032 0018 0446     		mov	r4, r0
 1033 001a 0068     		ldr	r0, [r0]
 1034 001c FFF7FEFF 		bl	_ZN8Platform4TickEv
 1035 0020 A38F     		ldrh	r3, [r4, #60]
 1036 0022 0133     		adds	r3, r3, #1
 1037 0024 9BB2     		uxth	r3, r3
 1038 0026 44F61F62 		movw	r2, #19999
 1039 002a 9342     		cmp	r3, r2
 1040 002c A387     		strh	r3, [r4, #60]	@ movhi
 1041 002e F0D9     		bls	.L186
 1042 0030 0123     		movs	r3, #1
 1043 0032 9FED0F8A 		vldr.32	s16, .L196
 1044 0036 84F84E30 		strb	r3, [r4, #78]
 1045              	.L190:
 1046 003a 2946     		mov	r1, r5
 1047 003c 0022     		movs	r2, #0
 1048 003e B0EE480A 		vmov.f32	s0, s16
 1049 0042 2068     		ldr	r0, [r4]
 1050 0044 0135     		adds	r5, r5, #1
 1051 0046 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 1052 004a 082D     		cmp	r5, #8
 1053 004c F5D1     		bne	.L190
 1054 004e 0025     		movs	r5, #0
 1055              	.L191:
 1056 0050 2946     		mov	r1, r5
 1057 0052 2068     		ldr	r0, [r4]
 1058 0054 0135     		adds	r5, r5, #1
 1059 0056 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 1060 005a 0C2D     		cmp	r5, #12
 1061 005c F8D1     		bne	.L191
 1062 005e 05AA     		add	r2, sp, #20
 1063 0060 BDEC028B 		vldm	sp!, {d8}
 1064 0064 2068     		ldr	r0, [r4]
 1065 0066 4021     		movs	r1, #64
 1066 0068 BDE83840 		pop	{r3, r4, r5, lr}
 1067 006c FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 1068              	.L197:
 1069              		.align	2
 1070              	.L196:
 1071 0070 00000000 		.word	0
 1072              		.size	_ZN6RepRap4TickEv, .-_ZN6RepRap4TickEv
 1073              		.section	.text._ZNK6RepRap19SpinTimeoutImminentEv,"ax",%progbits
 1074              		.align	1
 1075              		.p2align 2,,3
 1076              		.global	_ZNK6RepRap19SpinTimeoutImminentEv
 1077              		.syntax unified
 1078              		.thumb
 1079              		.thumb_func
 1080              		.fpu fpv4-sp-d16
 1081              		.type	_ZNK6RepRap19SpinTimeoutImminentEv, %function
 1082              	_ZNK6RepRap19SpinTimeoutImminentEv:
 1083              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccgYgJck.s 			page 20


 1084              		@ frame_needed = 0, uses_anonymous_args = 0
 1085              		@ link register save eliminated.
 1086 0000 808F     		ldrh	r0, [r0, #60]
 1087 0002 B0F57A5F 		cmp	r0, #16000
 1088 0006 34BF     		ite	cc
 1089 0008 0020     		movcc	r0, #0
 1090 000a 0120     		movcs	r0, #1
 1091 000c 7047     		bx	lr
 1092              		.size	_ZNK6RepRap19SpinTimeoutImminentEv, .-_ZNK6RepRap19SpinTimeoutImminentEv
 1093 000e 00BF     		.section	.text._ZN6RepRap17GetConfigResponseEv,"ax",%progbits
 1094              		.align	1
 1095              		.p2align 2,,3
 1096              		.global	_ZN6RepRap17GetConfigResponseEv
 1097              		.syntax unified
 1098              		.thumb
 1099              		.thumb_func
 1100              		.fpu fpv4-sp-d16
 1101              		.type	_ZN6RepRap17GetConfigResponseEv, %function
 1102              	_ZN6RepRap17GetConfigResponseEv:
 1103              		@ args = 0, pretend = 0, frame = 8
 1104              		@ frame_needed = 0, uses_anonymous_args = 0
 1105 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1106 0004 85B0     		sub	sp, sp, #20
 1107 0006 0446     		mov	r4, r0
 1108 0008 03A8     		add	r0, sp, #12
 1109 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1110 000e 0028     		cmp	r0, #0
 1111 0010 00F00681 		beq	.L199
 1112 0014 2369     		ldr	r3, [r4, #16]
 1113 0016 8B49     		ldr	r1, .L230
 1114 0018 D3F89C82 		ldr	r8, [r3, #668]
 1115 001c 0398     		ldr	r0, [sp, #12]
 1116 001e FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1117 0022 B8F1000F 		cmp	r8, #0
 1118 0026 00F00881 		beq	.L201
 1119 002a DFF86492 		ldr	r9, .L230+76
 1120 002e 0025     		movs	r5, #0
 1121 0030 5B26     		movs	r6, #91
 1122              	.L203:
 1123 0032 2368     		ldr	r3, [r4]
 1124 0034 039F     		ldr	r7, [sp, #12]
 1125 0036 05F5E872 		add	r2, r5, #464
 1126 003a 03EB8203 		add	r3, r3, r2, lsl #2
 1127 003e 0135     		adds	r5, r5, #1
 1128 0040 5868     		ldr	r0, [r3, #4]	@ float
 1129 0042 FFF7FEFF 		bl	__aeabi_f2d
 1130 0046 3246     		mov	r2, r6
 1131 0048 CDE90001 		strd	r0, [sp]
 1132 004c 3846     		mov	r0, r7
 1133 004e 4946     		mov	r1, r9
 1134 0050 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1135 0054 4545     		cmp	r5, r8
 1136 0056 4FF02C06 		mov	r6, #44
 1137 005a EAD1     		bne	.L203
 1138 005c 7A49     		ldr	r1, .L230+4
 1139 005e 0398     		ldr	r0, [sp, #12]
 1140 0060 DFF82C92 		ldr	r9, .L230+76
ARM GAS  /tmp/ccgYgJck.s 			page 21


 1141 0064 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1142 0068 0026     		movs	r6, #0
 1143 006a 5B27     		movs	r7, #91
 1144              	.L204:
 1145 006c 2368     		ldr	r3, [r4]
 1146 006e DDF80C80 		ldr	r8, [sp, #12]
 1147 0072 06F5E472 		add	r2, r6, #456
 1148 0076 03EB8203 		add	r3, r3, r2, lsl #2
 1149 007a 0136     		adds	r6, r6, #1
 1150 007c 1868     		ldr	r0, [r3]	@ float
 1151 007e FFF7FEFF 		bl	__aeabi_f2d
 1152 0082 3A46     		mov	r2, r7
 1153 0084 CDE90001 		strd	r0, [sp]
 1154 0088 4046     		mov	r0, r8
 1155 008a 4946     		mov	r1, r9
 1156 008c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1157 0090 B542     		cmp	r5, r6
 1158 0092 4FF02C07 		mov	r7, #44
 1159 0096 E9D1     		bne	.L204
 1160              	.L212:
 1161 0098 6C49     		ldr	r1, .L230+8
 1162 009a 0398     		ldr	r0, [sp, #12]
 1163 009c DFF8F081 		ldr	r8, .L230+76
 1164 00a0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1165 00a4 0025     		movs	r5, #0
 1166 00a6 5B26     		movs	r6, #91
 1167              	.L205:
 1168 00a8 2368     		ldr	r3, [r4]
 1169 00aa 039F     		ldr	r7, [sp, #12]
 1170 00ac 03EB8503 		add	r3, r3, r5, lsl #2
 1171 00b0 0135     		adds	r5, r5, #1
 1172 00b2 D3F87001 		ldr	r0, [r3, #368]	@ float
 1173 00b6 FFF7FEFF 		bl	__aeabi_f2d
 1174 00ba 3246     		mov	r2, r6
 1175 00bc CDE90001 		strd	r0, [sp]
 1176 00c0 3846     		mov	r0, r7
 1177 00c2 4146     		mov	r1, r8
 1178 00c4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1179 00c8 0C2D     		cmp	r5, #12
 1180 00ca 4FF02C06 		mov	r6, #44
 1181 00ce EBD1     		bne	.L205
 1182 00d0 5F49     		ldr	r1, .L230+12
 1183 00d2 0398     		ldr	r0, [sp, #12]
 1184 00d4 DFF8B881 		ldr	r8, .L230+76
 1185 00d8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1186 00dc 0025     		movs	r5, #0
 1187 00de 5B26     		movs	r6, #91
 1188              	.L206:
 1189 00e0 40F28A32 		movw	r2, #906
 1190 00e4 2946     		mov	r1, r5
 1191 00e6 2068     		ldr	r0, [r4]
 1192 00e8 039F     		ldr	r7, [sp, #12]
 1193 00ea FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEji
 1194 00ee 10EE100A 		vmov	r0, s0
 1195 00f2 FFF7FEFF 		bl	__aeabi_f2d
 1196 00f6 0135     		adds	r5, r5, #1
 1197 00f8 CDE90001 		strd	r0, [sp]
ARM GAS  /tmp/ccgYgJck.s 			page 22


 1198 00fc 3246     		mov	r2, r6
 1199 00fe 3846     		mov	r0, r7
 1200 0100 4146     		mov	r1, r8
 1201 0102 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1202 0106 0C2D     		cmp	r5, #12
 1203 0108 4FF02C06 		mov	r6, #44
 1204 010c E8D1     		bne	.L206
 1205 010e 2068     		ldr	r0, [r4]
 1206 0110 039D     		ldr	r5, [sp, #12]
 1207 0112 FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 1208 0116 4F49     		ldr	r1, .L230+16
 1209 0118 0246     		mov	r2, r0
 1210 011a 2846     		mov	r0, r5
 1211 011c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1212 0120 FFF7FEFF 		bl	_ZN13DuetExpansion21GetExpansionBoardNameEv
 1213 0124 20B1     		cbz	r0, .L207
 1214 0126 0246     		mov	r2, r0
 1215 0128 4B49     		ldr	r1, .L230+20
 1216 012a 0398     		ldr	r0, [sp, #12]
 1217 012c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1218              	.L207:
 1219 0130 FFF7FEFF 		bl	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv
 1220 0134 20B1     		cbz	r0, .L208
 1221 0136 0246     		mov	r2, r0
 1222 0138 4749     		ldr	r1, .L230+20
 1223 013a 0398     		ldr	r0, [sp, #12]
 1224 013c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1225              	.L208:
 1226 0140 464A     		ldr	r2, .L230+24
 1227 0142 4749     		ldr	r1, .L230+28
 1228 0144 0398     		ldr	r0, [sp, #12]
 1229 0146 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1230 014a 464A     		ldr	r2, .L230+32
 1231 014c 4649     		ldr	r1, .L230+36
 1232 014e 0398     		ldr	r0, [sp, #12]
 1233 0150 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1234 0154 2068     		ldr	r0, [r4]
 1235 0156 FFF7FEFF 		bl	_ZNK8Platform10IsDuetWiFiEv
 1236 015a 0028     		cmp	r0, #0
 1237 015c 63D1     		bne	.L229
 1238              	.L209:
 1239 015e 434A     		ldr	r2, .L230+40
 1240 0160 4349     		ldr	r1, .L230+44
 1241 0162 0398     		ldr	r0, [sp, #12]
 1242 0164 DFF82881 		ldr	r8, .L230+76
 1243 0168 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1244 016c 2368     		ldr	r3, [r4]
 1245 016e DFED417A 		vldr.32	s15, .L230+48
 1246 0172 93EDF07A 		vldr.32	s14, [r3, #960]
 1247 0176 67EE277A 		vmul.f32	s15, s14, s15
 1248 017a 5B26     		movs	r6, #91
 1249 017c 17EE900A 		vmov	r0, s15
 1250 0180 FFF7FEFF 		bl	__aeabi_f2d
 1251 0184 0246     		mov	r2, r0
 1252 0186 0B46     		mov	r3, r1
 1253 0188 0398     		ldr	r0, [sp, #12]
 1254 018a 3B49     		ldr	r1, .L230+52
ARM GAS  /tmp/ccgYgJck.s 			page 23


 1255 018c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1256 0190 A068     		ldr	r0, [r4, #8]
 1257 0192 039D     		ldr	r5, [sp, #12]
 1258 0194 FFF7FEFF 		bl	_ZNK4Move11IdleTimeoutEv
 1259 0198 10EE100A 		vmov	r0, s0
 1260 019c FFF7FEFF 		bl	__aeabi_f2d
 1261 01a0 0246     		mov	r2, r0
 1262 01a2 0B46     		mov	r3, r1
 1263 01a4 2846     		mov	r0, r5
 1264 01a6 3549     		ldr	r1, .L230+56
 1265 01a8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1266 01ac 3449     		ldr	r1, .L230+60
 1267 01ae 0398     		ldr	r0, [sp, #12]
 1268 01b0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1269 01b4 0025     		movs	r5, #0
 1270              	.L210:
 1271 01b6 2368     		ldr	r3, [r4]
 1272 01b8 039F     		ldr	r7, [sp, #12]
 1273 01ba 03EB8503 		add	r3, r3, r5, lsl #2
 1274 01be 0135     		adds	r5, r5, #1
 1275 01c0 D3F8D801 		ldr	r0, [r3, #472]	@ float
 1276 01c4 FFF7FEFF 		bl	__aeabi_f2d
 1277 01c8 3246     		mov	r2, r6
 1278 01ca CDE90001 		strd	r0, [sp]
 1279 01ce 3846     		mov	r0, r7
 1280 01d0 4146     		mov	r1, r8
 1281 01d2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1282 01d6 0C2D     		cmp	r5, #12
 1283 01d8 4FF02C06 		mov	r6, #44
 1284 01dc EBD1     		bne	.L210
 1285 01de 2949     		ldr	r1, .L230+64
 1286 01e0 0398     		ldr	r0, [sp, #12]
 1287 01e2 DFF8AC80 		ldr	r8, .L230+76
 1288 01e6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1289 01ea 0025     		movs	r5, #0
 1290 01ec 5B26     		movs	r6, #91
 1291              	.L211:
 1292 01ee 2368     		ldr	r3, [r4]
 1293 01f0 039F     		ldr	r7, [sp, #12]
 1294 01f2 03EB8503 		add	r3, r3, r5, lsl #2
 1295 01f6 0135     		adds	r5, r5, #1
 1296 01f8 D3F84001 		ldr	r0, [r3, #320]	@ float
 1297 01fc FFF7FEFF 		bl	__aeabi_f2d
 1298 0200 3246     		mov	r2, r6
 1299 0202 CDE90001 		strd	r0, [sp]
 1300 0206 3846     		mov	r0, r7
 1301 0208 4146     		mov	r1, r8
 1302 020a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1303 020e 0C2D     		cmp	r5, #12
 1304 0210 4FF02C06 		mov	r6, #44
 1305 0214 EBD1     		bne	.L211
 1306 0216 1C49     		ldr	r1, .L230+68
 1307 0218 0398     		ldr	r0, [sp, #12]
 1308 021a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1309 021e 0398     		ldr	r0, [sp, #12]
 1310              	.L199:
 1311 0220 05B0     		add	sp, sp, #20
ARM GAS  /tmp/ccgYgJck.s 			page 24


 1312              		@ sp needed
 1313 0222 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1314              	.L229:
 1315 0226 6068     		ldr	r0, [r4, #4]
 1316 0228 039D     		ldr	r5, [sp, #12]
 1317 022a FFF7FEFF 		bl	_ZNK7Network20GetWiFiServerVersionEv
 1318 022e 1749     		ldr	r1, .L230+72
 1319 0230 0246     		mov	r2, r0
 1320 0232 2846     		mov	r0, r5
 1321 0234 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1322 0238 91E7     		b	.L209
 1323              	.L201:
 1324 023a 0349     		ldr	r1, .L230+4
 1325 023c 0398     		ldr	r0, [sp, #12]
 1326 023e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1327 0242 29E7     		b	.L212
 1328              	.L231:
 1329              		.align	2
 1330              	.L230:
 1331 0244 00000000 		.word	.LC13
 1332 0248 28010000 		.word	.LC29
 1333 024c 18000000 		.word	.LC15
 1334 0250 2C000000 		.word	.LC16
 1335 0254 3C000000 		.word	.LC17
 1336 0258 58000000 		.word	.LC18
 1337 025c 24000000 		.word	.LC4
 1338 0260 60000000 		.word	.LC19
 1339 0264 68000000 		.word	.LC6
 1340 0268 78000000 		.word	.LC20
 1341 026c A4000000 		.word	.LC22
 1342 0270 B4000000 		.word	.LC23
 1343 0274 0000C842 		.word	1120403456
 1344 0278 CC000000 		.word	.LC24
 1345 027c E8000000 		.word	.LC25
 1346 0280 FC000000 		.word	.LC26
 1347 0284 10010000 		.word	.LC27
 1348 0288 24010000 		.word	.LC28
 1349 028c 90000000 		.word	.LC21
 1350 0290 10000000 		.word	.LC14
 1351              		.size	_ZN6RepRap17GetConfigResponseEv, .-_ZN6RepRap17GetConfigResponseEv
 1352              		.section	.text._ZN6RepRap16GetFilesResponseEPKcjb,"ax",%progbits
 1353              		.align	1
 1354              		.p2align 2,,3
 1355              		.global	_ZN6RepRap16GetFilesResponseEPKcjb
 1356              		.syntax unified
 1357              		.thumb
 1358              		.thumb_func
 1359              		.fpu fpv4-sp-d16
 1360              		.type	_ZN6RepRap16GetFilesResponseEPKcjb, %function
 1361              	_ZN6RepRap16GetFilesResponseEPKcjb:
 1362              		@ args = 0, pretend = 0, frame = 144
 1363              		@ frame_needed = 0, uses_anonymous_args = 0
 1364 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1365 0004 A6B0     		sub	sp, sp, #152
 1366 0006 0746     		mov	r7, r0
 1367 0008 03A8     		add	r0, sp, #12
 1368 000a 0E46     		mov	r6, r1
ARM GAS  /tmp/ccgYgJck.s 			page 25


 1369 000c 9046     		mov	r8, r2
 1370 000e 9946     		mov	r9, r3
 1371 0010 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1372 0014 50B3     		cbz	r0, .L232
 1373 0016 4049     		ldr	r1, .L260
 1374 0018 0398     		ldr	r0, [sp, #12]
 1375 001a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1376 001e 3046     		mov	r0, r6
 1377 0020 FFF7FEFF 		bl	strlen
 1378 0024 039B     		ldr	r3, [sp, #12]
 1379 0026 0024     		movs	r4, #0
 1380 0028 0125     		movs	r5, #1
 1381 002a 0246     		mov	r2, r0
 1382 002c 3146     		mov	r1, r6
 1383 002e 1846     		mov	r0, r3
 1384 0030 0194     		str	r4, [sp, #4]
 1385 0032 2346     		mov	r3, r4
 1386 0034 0095     		str	r5, [sp]
 1387 0036 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1388 003a 3849     		ldr	r1, .L260+4
 1389 003c 0398     		ldr	r0, [sp, #12]
 1390 003e 4246     		mov	r2, r8
 1391 0040 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1392 0044 3B68     		ldr	r3, [r7]
 1393 0046 3146     		mov	r1, r6
 1394 0048 D3F8B409 		ldr	r0, [r3, #2484]
 1395 004c FFF7FEFF 		bl	_ZN11MassStorage17CheckDriveMountedEPKc
 1396 0050 78B1     		cbz	r0, .L245
 1397 0052 3B68     		ldr	r3, [r7]
 1398 0054 3146     		mov	r1, r6
 1399 0056 D3F8B409 		ldr	r0, [r3, #2484]
 1400 005a FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 1401 005e 50B9     		cbnz	r0, .L256
 1402 0060 0222     		movs	r2, #2
 1403              	.L234:
 1404 0062 2F49     		ldr	r1, .L260+8
 1405 0064 0398     		ldr	r0, [sp, #12]
 1406 0066 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1407              	.L243:
 1408 006a 0398     		ldr	r0, [sp, #12]
 1409              	.L232:
 1410 006c 26B0     		add	sp, sp, #152
 1411              		@ sp needed
 1412 006e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1413              	.L245:
 1414 0072 2A46     		mov	r2, r5
 1415 0074 F5E7     		b	.L234
 1416              	.L256:
 1417 0076 3B68     		ldr	r3, [r7]
 1418 0078 3146     		mov	r1, r6
 1419 007a D3F8B409 		ldr	r0, [r3, #2484]
 1420 007e 04AA     		add	r2, sp, #16
 1421 0080 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 1422 0084 8246     		mov	r10, r0
 1423 0086 0398     		ldr	r0, [sp, #12]
 1424 0088 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 1425 008c 0646     		mov	r6, r0
ARM GAS  /tmp/ccgYgJck.s 			page 26


 1426 008e BAF1000F 		cmp	r10, #0
 1427 0092 28D0     		beq	.L235
 1428              	.L242:
 1429 0094 9DF81130 		ldrb	r3, [sp, #17]	@ zero_extendqisi2
 1430 0098 2E2B     		cmp	r3, #46
 1431 009a 1CD0     		beq	.L236
 1432 009c A045     		cmp	r8, r4
 1433 009e 19D8     		bhi	.L237
 1434 00a0 0DF11100 		add	r0, sp, #17
 1435 00a4 FFF7FEFF 		bl	strlen
 1436 00a8 0A30     		adds	r0, r0, #10
 1437 00aa B6EB400F 		cmp	r6, r0, lsl #1
 1438 00ae 2DD3     		bcc	.L257
 1439 00b0 A045     		cmp	r8, r4
 1440 00b2 039B     		ldr	r3, [sp, #12]
 1441 00b4 1FD3     		bcc	.L258
 1442 00b6 B9F1000F 		cmp	r9, #0
 1443 00ba 25D0     		beq	.L247
 1444              	.L259:
 1445 00bc 9DF81020 		ldrb	r2, [sp, #16]	@ zero_extendqisi2
 1446              	.L241:
 1447 00c0 CDE90052 		strd	r5, r2, [sp]
 1448 00c4 1846     		mov	r0, r3
 1449 00c6 7822     		movs	r2, #120
 1450 00c8 0023     		movs	r3, #0
 1451 00ca 0DF11101 		add	r1, sp, #17
 1452 00ce FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1453 00d2 361A     		subs	r6, r6, r0
 1454              	.L237:
 1455 00d4 0134     		adds	r4, r4, #1
 1456              	.L236:
 1457 00d6 3B68     		ldr	r3, [r7]
 1458 00d8 04A9     		add	r1, sp, #16
 1459 00da D3F8B409 		ldr	r0, [r3, #2484]
 1460 00de FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 1461 00e2 0028     		cmp	r0, #0
 1462 00e4 D6D1     		bne	.L242
 1463              	.L235:
 1464 00e6 0024     		movs	r4, #0
 1465              	.L239:
 1466 00e8 2246     		mov	r2, r4
 1467 00ea 0023     		movs	r3, #0
 1468 00ec 0D49     		ldr	r1, .L260+12
 1469 00ee 0398     		ldr	r0, [sp, #12]
 1470 00f0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1471 00f4 B9E7     		b	.L243
 1472              	.L258:
 1473 00f6 1846     		mov	r0, r3
 1474 00f8 2C21     		movs	r1, #44
 1475 00fa FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 1476 00fe 039B     		ldr	r3, [sp, #12]
 1477 0100 361A     		subs	r6, r6, r0
 1478 0102 B9F1000F 		cmp	r9, #0
 1479 0106 D9D1     		bne	.L259
 1480              	.L247:
 1481 0108 4A46     		mov	r2, r9
 1482 010a D9E7     		b	.L241
ARM GAS  /tmp/ccgYgJck.s 			page 27


 1483              	.L257:
 1484 010c 3B68     		ldr	r3, [r7]
 1485 010e D3F8B409 		ldr	r0, [r3, #2484]
 1486 0112 FFF7FEFF 		bl	_ZN11MassStorage15AbandonFindNextEv
 1487 0116 E7E7     		b	.L239
 1488              	.L261:
 1489              		.align	2
 1490              	.L260:
 1491 0118 00000000 		.word	.LC30
 1492 011c 08000000 		.word	.LC31
 1493 0120 38000000 		.word	.LC33
 1494 0124 20000000 		.word	.LC32
 1495              		.size	_ZN6RepRap16GetFilesResponseEPKcjb, .-_ZN6RepRap16GetFilesResponseEPKcjb
 1496              		.section	.text._ZN6RepRap19GetFilelistResponseEPKcj,"ax",%progbits
 1497              		.align	1
 1498              		.p2align 2,,3
 1499              		.global	_ZN6RepRap19GetFilelistResponseEPKcj
 1500              		.syntax unified
 1501              		.thumb
 1502              		.thumb_func
 1503              		.fpu fpv4-sp-d16
 1504              		.type	_ZN6RepRap19GetFilelistResponseEPKcj, %function
 1505              	_ZN6RepRap19GetFilelistResponseEPKcj:
 1506              		@ args = 0, pretend = 0, frame = 144
 1507              		@ frame_needed = 0, uses_anonymous_args = 0
 1508 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1509 0004 A8B0     		sub	sp, sp, #160
 1510 0006 0646     		mov	r6, r0
 1511 0008 05A8     		add	r0, sp, #20
 1512 000a 0C46     		mov	r4, r1
 1513 000c 9046     		mov	r8, r2
 1514 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1515 0012 50B3     		cbz	r0, .L262
 1516 0014 5649     		ldr	r1, .L294
 1517 0016 0598     		ldr	r0, [sp, #20]
 1518 0018 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1519 001c 2046     		mov	r0, r4
 1520 001e FFF7FEFF 		bl	strlen
 1521 0022 059B     		ldr	r3, [sp, #20]
 1522 0024 0025     		movs	r5, #0
 1523 0026 0127     		movs	r7, #1
 1524 0028 0246     		mov	r2, r0
 1525 002a 2146     		mov	r1, r4
 1526 002c 1846     		mov	r0, r3
 1527 002e 0195     		str	r5, [sp, #4]
 1528 0030 2B46     		mov	r3, r5
 1529 0032 0097     		str	r7, [sp]
 1530 0034 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1531 0038 4E49     		ldr	r1, .L294+4
 1532 003a 0598     		ldr	r0, [sp, #20]
 1533 003c 4246     		mov	r2, r8
 1534 003e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1535 0042 3368     		ldr	r3, [r6]
 1536 0044 2146     		mov	r1, r4
 1537 0046 D3F8B409 		ldr	r0, [r3, #2484]
 1538 004a FFF7FEFF 		bl	_ZN11MassStorage17CheckDriveMountedEPKc
 1539 004e 78B1     		cbz	r0, .L276
ARM GAS  /tmp/ccgYgJck.s 			page 28


 1540 0050 3368     		ldr	r3, [r6]
 1541 0052 2146     		mov	r1, r4
 1542 0054 D3F8B409 		ldr	r0, [r3, #2484]
 1543 0058 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 1544 005c 50B9     		cbnz	r0, .L290
 1545 005e 0222     		movs	r2, #2
 1546              	.L264:
 1547 0060 4549     		ldr	r1, .L294+8
 1548 0062 0598     		ldr	r0, [sp, #20]
 1549 0064 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1550              	.L274:
 1551 0068 0598     		ldr	r0, [sp, #20]
 1552              	.L262:
 1553 006a 28B0     		add	sp, sp, #160
 1554              		@ sp needed
 1555 006c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1556              	.L276:
 1557 0070 3A46     		mov	r2, r7
 1558 0072 F5E7     		b	.L264
 1559              	.L290:
 1560 0074 3368     		ldr	r3, [r6]
 1561 0076 2146     		mov	r1, r4
 1562 0078 D3F8B409 		ldr	r0, [r3, #2484]
 1563 007c 06AA     		add	r2, sp, #24
 1564 007e FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 1565 0082 0746     		mov	r7, r0
 1566 0084 0598     		ldr	r0, [sp, #20]
 1567 0086 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 1568 008a 0446     		mov	r4, r0
 1569 008c 002F     		cmp	r7, #0
 1570 008e 61D0     		beq	.L265
 1571 0090 DFF8F090 		ldr	r9, .L294+20
 1572 0094 394F     		ldr	r7, .L294+12
 1573 0096 DFF8F0A0 		ldr	r10, .L294+24
 1574 009a 0CE0     		b	.L273
 1575              	.L293:
 1576 009c 0598     		ldr	r0, [sp, #20]
 1577 009e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 1578 00a2 241A     		subs	r4, r4, r0
 1579              	.L267:
 1580 00a4 0135     		adds	r5, r5, #1
 1581              	.L266:
 1582 00a6 3368     		ldr	r3, [r6]
 1583 00a8 06A9     		add	r1, sp, #24
 1584 00aa D3F8B409 		ldr	r0, [r3, #2484]
 1585 00ae FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 1586 00b2 0028     		cmp	r0, #0
 1587 00b4 4ED0     		beq	.L265
 1588              	.L273:
 1589 00b6 9DF81930 		ldrb	r3, [sp, #25]	@ zero_extendqisi2
 1590 00ba 2E2B     		cmp	r3, #46
 1591 00bc F3D0     		beq	.L266
 1592 00be A845     		cmp	r8, r5
 1593 00c0 0DF11900 		add	r0, sp, #25
 1594 00c4 EED8     		bhi	.L267
 1595 00c6 FFF7FEFF 		bl	strlen
 1596 00ca 1930     		adds	r0, r0, #25
ARM GAS  /tmp/ccgYgJck.s 			page 29


 1597 00cc B4EB400F 		cmp	r4, r0, lsl #1
 1598 00d0 47D3     		bcc	.L291
 1599 00d2 059B     		ldr	r3, [sp, #20]
 1600 00d4 002D     		cmp	r5, #0
 1601 00d6 36D1     		bne	.L292
 1602              	.L270:
 1603 00d8 9DF81820 		ldrb	r2, [sp, #24]	@ zero_extendqisi2
 1604 00dc 002A     		cmp	r2, #0
 1605 00de 0CBF     		ite	eq
 1606 00e0 6622     		moveq	r2, #102
 1607 00e2 6422     		movne	r2, #100
 1608 00e4 1846     		mov	r0, r3
 1609 00e6 4946     		mov	r1, r9
 1610 00e8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1611 00ec 0023     		movs	r3, #0
 1612 00ee 0122     		movs	r2, #1
 1613 00f0 CDE90023 		strd	r2, r3, [sp]
 1614 00f4 241A     		subs	r4, r4, r0
 1615 00f6 0DF11901 		add	r1, sp, #25
 1616 00fa 7822     		movs	r2, #120
 1617 00fc 0598     		ldr	r0, [sp, #20]
 1618 00fe FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1619 0102 259A     		ldr	r2, [sp, #148]
 1620 0104 3946     		mov	r1, r7
 1621 0106 241A     		subs	r4, r4, r0
 1622 0108 0598     		ldr	r0, [sp, #20]
 1623 010a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1624 010e 241A     		subs	r4, r4, r0
 1625 0110 26A8     		add	r0, sp, #152
 1626 0112 FFF7FEFF 		bl	gmtime
 1627 0116 4369     		ldr	r3, [r0, #20]
 1628 0118 502B     		cmp	r3, #80
 1629 011a 4FF07D01 		mov	r1, #125
 1630 011e 03F26C72 		addw	r2, r3, #1900
 1631 0122 BBDD     		ble	.L293
 1632 0124 0168     		ldr	r1, [r0]
 1633 0126 0369     		ldr	r3, [r0, #16]
 1634 0128 0391     		str	r1, [sp, #12]
 1635 012a 4168     		ldr	r1, [r0, #4]
 1636 012c 0291     		str	r1, [sp, #8]
 1637 012e 8168     		ldr	r1, [r0, #8]
 1638 0130 0191     		str	r1, [sp, #4]
 1639 0132 0599     		ldr	r1, [sp, #20]
 1640 0134 C068     		ldr	r0, [r0, #12]
 1641 0136 0090     		str	r0, [sp]
 1642 0138 0133     		adds	r3, r3, #1
 1643 013a 0846     		mov	r0, r1
 1644 013c 5146     		mov	r1, r10
 1645 013e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1646 0142 241A     		subs	r4, r4, r0
 1647 0144 AEE7     		b	.L267
 1648              	.L292:
 1649 0146 1846     		mov	r0, r3
 1650 0148 2C21     		movs	r1, #44
 1651 014a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 1652 014e 059B     		ldr	r3, [sp, #20]
 1653 0150 241A     		subs	r4, r4, r0
ARM GAS  /tmp/ccgYgJck.s 			page 30


 1654 0152 C1E7     		b	.L270
 1655              	.L265:
 1656 0154 0025     		movs	r5, #0
 1657              	.L269:
 1658 0156 2A46     		mov	r2, r5
 1659 0158 0949     		ldr	r1, .L294+16
 1660 015a 0598     		ldr	r0, [sp, #20]
 1661 015c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1662 0160 82E7     		b	.L274
 1663              	.L291:
 1664 0162 3368     		ldr	r3, [r6]
 1665 0164 D3F8B409 		ldr	r0, [r3, #2484]
 1666 0168 FFF7FEFF 		bl	_ZN11MassStorage15AbandonFindNextEv
 1667 016c F3E7     		b	.L269
 1668              	.L295:
 1669 016e 00BF     		.align	2
 1670              	.L294:
 1671 0170 00000000 		.word	.LC30
 1672 0174 08000000 		.word	.LC31
 1673 0178 38000000 		.word	.LC33
 1674 017c 18000000 		.word	.LC35
 1675 0180 50000000 		.word	.LC37
 1676 0184 00000000 		.word	.LC34
 1677 0188 24000000 		.word	.LC36
 1678              		.size	_ZN6RepRap19GetFilelistResponseEPKcj, .-_ZN6RepRap19GetFilelistResponseEPKcj
 1679              		.section	.text._ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb,"ax",%progbits
 1680              		.align	1
 1681              		.p2align 2,,3
 1682              		.global	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb
 1683              		.syntax unified
 1684              		.thumb
 1685              		.thumb_func
 1686              		.fpu fpv4-sp-d16
 1687              		.type	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb, %function
 1688              	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb:
 1689              		@ args = 0, pretend = 0, frame = 136
 1690              		@ frame_needed = 0, uses_anonymous_args = 0
 1691 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1692 0004 1546     		mov	r5, r2
 1693 0006 A6B0     		sub	sp, sp, #152
 1694 0008 11B1     		cbz	r1, .L297
 1695 000a 0A46     		mov	r2, r1
 1696 000c 0978     		ldrb	r1, [r1]	@ zero_extendqisi2
 1697 000e 99B9     		cbnz	r1, .L336
 1698              	.L297:
 1699 0010 C069     		ldr	r0, [r0, #28]
 1700 0012 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 1701 0014 43B9     		cbnz	r3, .L337
 1702 0016 2846     		mov	r0, r5
 1703 0018 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1704 001c 0446     		mov	r4, r0
 1705 001e 50BB     		cbnz	r0, .L335
 1706              	.L307:
 1707 0020 2046     		mov	r0, r4
 1708 0022 26B0     		add	sp, sp, #152
 1709              		@ sp needed
 1710 0024 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
ARM GAS  /tmp/ccgYgJck.s 			page 31


 1711              	.L337:
 1712 0028 2946     		mov	r1, r5
 1713 002a FFF7FEFF 		bl	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer
 1714 002e 0446     		mov	r4, r0
 1715 0030 2046     		mov	r0, r4
 1716 0032 26B0     		add	sp, sp, #152
 1717              		@ sp needed
 1718 0034 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1719              	.L336:
 1720 0038 0068     		ldr	r0, [r0]
 1721 003a 5049     		ldr	r1, .L343
 1722 003c D0F8B409 		ldr	r0, [r0, #2484]
 1723 0040 0093     		str	r3, [sp]
 1724 0042 0024     		movs	r4, #0
 1725 0044 00F59160 		add	r0, r0, #1160
 1726 0048 04AB     		add	r3, sp, #16
 1727 004a 8DF85E40 		strb	r4, [sp, #94]
 1728 004e FFF7FEFF 		bl	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 1729 0052 0446     		mov	r4, r0
 1730 0054 30B1     		cbz	r0, .L298
 1731 0056 9DF85C30 		ldrb	r3, [sp, #92]	@ zero_extendqisi2
 1732 005a 2846     		mov	r0, r5
 1733 005c 3BB1     		cbz	r3, .L299
 1734 005e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1735 0062 80B9     		cbnz	r0, .L338
 1736              	.L298:
 1737 0064 0024     		movs	r4, #0
 1738 0066 2046     		mov	r0, r4
 1739 0068 26B0     		add	sp, sp, #152
 1740              		@ sp needed
 1741 006a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1742              	.L299:
 1743 006e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1744 0072 0028     		cmp	r0, #0
 1745 0074 F6D0     		beq	.L298
 1746              	.L335:
 1747 0076 2868     		ldr	r0, [r5]
 1748 0078 4149     		ldr	r1, .L343+4
 1749 007a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1750 007e 2046     		mov	r0, r4
 1751 0080 26B0     		add	sp, sp, #152
 1752              		@ sp needed
 1753 0082 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1754              	.L338:
 1755 0086 049A     		ldr	r2, [sp, #16]
 1756 0088 3E49     		ldr	r1, .L343+8
 1757 008a 2868     		ldr	r0, [r5]
 1758 008c FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1759 0090 06A8     		add	r0, sp, #24
 1760 0092 FFF7FEFF 		bl	gmtime
 1761 0096 4269     		ldr	r2, [r0, #20]
 1762 0098 502A     		cmp	r2, #80
 1763 009a 5CDC     		bgt	.L339
 1764              	.L300:
 1765 009c 0A98     		ldr	r0, [sp, #40]	@ float
 1766 009e FFF7FEFF 		bl	__aeabi_f2d
 1767 00a2 8046     		mov	r8, r0
ARM GAS  /tmp/ccgYgJck.s 			page 32


 1768 00a4 0898     		ldr	r0, [sp, #32]	@ float
 1769 00a6 2E68     		ldr	r6, [r5]
 1770 00a8 8946     		mov	r9, r1
 1771 00aa FFF7FEFF 		bl	__aeabi_f2d
 1772 00ae CDE90201 		strd	r0, [sp, #8]
 1773 00b2 0998     		ldr	r0, [sp, #36]	@ float
 1774 00b4 FFF7FEFF 		bl	__aeabi_f2d
 1775 00b8 4246     		mov	r2, r8
 1776 00ba CDE90001 		strd	r0, [sp]
 1777 00be 4B46     		mov	r3, r9
 1778 00c0 3046     		mov	r0, r6
 1779 00c2 3149     		ldr	r1, .L343+12
 1780 00c4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1781 00c8 149A     		ldr	r2, [sp, #80]
 1782 00ca 002A     		cmp	r2, #0
 1783 00cc 3ED1     		bne	.L340
 1784              	.L301:
 1785 00ce 159A     		ldr	r2, [sp, #84]
 1786 00d0 2868     		ldr	r0, [r5]
 1787 00d2 002A     		cmp	r2, #0
 1788 00d4 35D1     		bne	.L341
 1789              	.L302:
 1790 00d6 2D49     		ldr	r1, .L343+16
 1791 00d8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1792 00dc 169B     		ldr	r3, [sp, #88]
 1793 00de 5BB3     		cbz	r3, .L342
 1794 00e0 DFF8C0A0 		ldr	r10, .L343+40
 1795 00e4 0DF12C08 		add	r8, sp, #44
 1796 00e8 0026     		movs	r6, #0
 1797 00ea 5B27     		movs	r7, #91
 1798              	.L305:
 1799 00ec 58F8040B 		ldr	r0, [r8], #4	@ float
 1800 00f0 D5F80090 		ldr	r9, [r5]
 1801 00f4 FFF7FEFF 		bl	__aeabi_f2d
 1802 00f8 3A46     		mov	r2, r7
 1803 00fa CDE90001 		strd	r0, [sp]
 1804 00fe 4846     		mov	r0, r9
 1805 0100 5146     		mov	r1, r10
 1806 0102 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1807 0106 169B     		ldr	r3, [sp, #88]
 1808 0108 0136     		adds	r6, r6, #1
 1809 010a B342     		cmp	r3, r6
 1810 010c 4FF02C07 		mov	r7, #44
 1811 0110 ECD8     		bhi	.L305
 1812              	.L304:
 1813 0112 1F49     		ldr	r1, .L343+20
 1814 0114 2868     		ldr	r0, [r5]
 1815 0116 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1816 011a 0023     		movs	r3, #0
 1817 011c 0122     		movs	r2, #1
 1818 011e 2868     		ldr	r0, [r5]
 1819 0120 0DF15E01 		add	r1, sp, #94
 1820 0124 CDE90023 		strd	r2, r3, [sp]
 1821 0128 3222     		movs	r2, #50
 1822 012a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1823 012e 2868     		ldr	r0, [r5]
 1824 0130 1849     		ldr	r1, .L343+24
ARM GAS  /tmp/ccgYgJck.s 			page 33


 1825 0132 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1826 0136 73E7     		b	.L307
 1827              	.L342:
 1828 0138 5B21     		movs	r1, #91
 1829 013a 2868     		ldr	r0, [r5]
 1830 013c FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 1831 0140 E7E7     		b	.L304
 1832              	.L341:
 1833 0142 1549     		ldr	r1, .L343+28
 1834 0144 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1835 0148 2868     		ldr	r0, [r5]
 1836 014a C4E7     		b	.L302
 1837              	.L340:
 1838 014c 1349     		ldr	r1, .L343+32
 1839 014e 2868     		ldr	r0, [r5]
 1840 0150 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1841 0154 BBE7     		b	.L301
 1842              	.L339:
 1843 0156 0168     		ldr	r1, [r0]
 1844 0158 0369     		ldr	r3, [r0, #16]
 1845 015a 0391     		str	r1, [sp, #12]
 1846 015c 4168     		ldr	r1, [r0, #4]
 1847 015e 0291     		str	r1, [sp, #8]
 1848 0160 8168     		ldr	r1, [r0, #8]
 1849 0162 0191     		str	r1, [sp, #4]
 1850 0164 2968     		ldr	r1, [r5]
 1851 0166 C068     		ldr	r0, [r0, #12]
 1852 0168 0090     		str	r0, [sp]
 1853 016a 02F26C72 		addw	r2, r2, #1900
 1854 016e 0133     		adds	r3, r3, #1
 1855 0170 0846     		mov	r0, r1
 1856 0172 0B49     		ldr	r1, .L343+36
 1857 0174 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1858 0178 90E7     		b	.L300
 1859              	.L344:
 1860 017a 00BF     		.align	2
 1861              	.L343:
 1862 017c 00000000 		.word	.LC38
 1863 0180 E8000000 		.word	.LC48
 1864 0184 0C000000 		.word	.LC39
 1865 0188 54000000 		.word	.LC41
 1866 018c BC000000 		.word	.LC44
 1867 0190 D0000000 		.word	.LC46
 1868 0194 E4000000 		.word	.LC47
 1869 0198 A4000000 		.word	.LC43
 1870 019c 90000000 		.word	.LC42
 1871 01a0 24000000 		.word	.LC40
 1872 01a4 C8000000 		.word	.LC45
 1873              		.size	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb, .-_ZN6RepRap19GetFileInfoResponseEPKcR
 1874              		.section	.text._ZN6RepRap4BeepEjj,"ax",%progbits
 1875              		.align	1
 1876              		.p2align 2,,3
 1877              		.global	_ZN6RepRap4BeepEjj
 1878              		.syntax unified
 1879              		.thumb
 1880              		.thumb_func
 1881              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccgYgJck.s 			page 34


 1882              		.type	_ZN6RepRap4BeepEjj, %function
 1883              	_ZN6RepRap4BeepEjj:
 1884              		@ args = 0, pretend = 0, frame = 0
 1885              		@ frame_needed = 0, uses_anonymous_args = 0
 1886              		@ link register save eliminated.
 1887 0000 30B4     		push	{r4, r5}
 1888 0002 3229     		cmp	r1, #50
 1889 0004 42F21075 		movw	r5, #10000
 1890 0008 38BF     		it	cc
 1891 000a 3221     		movcc	r1, #50
 1892 000c 0368     		ldr	r3, [r0]
 1893 000e 0A2A     		cmp	r2, #10
 1894 0010 38BF     		it	cc
 1895 0012 0A22     		movcc	r2, #10
 1896 0014 A942     		cmp	r1, r5
 1897 0016 28BF     		it	cs
 1898 0018 2946     		movcs	r1, r5
 1899 001a 93F89849 		ldrb	r4, [r3, #2456]	@ zero_extendqisi2
 1900 001e 4EF66025 		movw	r5, #60000
 1901 0022 AA42     		cmp	r2, r5
 1902 0024 28BF     		it	cs
 1903 0026 2A46     		movcs	r2, r5
 1904 0028 1CB9     		cbnz	r4, .L348
 1905 002a C0E92412 		strd	r1, r2, [r0, #144]
 1906 002e 30BC     		pop	{r4, r5}
 1907 0030 7047     		bx	lr
 1908              	.L348:
 1909 0032 1846     		mov	r0, r3
 1910 0034 30BC     		pop	{r4, r5}
 1911 0036 FFF7FEBF 		b	_ZN8Platform4BeepEii
 1912              		.size	_ZN6RepRap4BeepEjj, .-_ZN6RepRap4BeepEjj
 1913 003a 00BF     		.section	.text._ZN6RepRap10SetMessageEPKc,"ax",%progbits
 1914              		.align	1
 1915              		.p2align 2,,3
 1916              		.global	_ZN6RepRap10SetMessageEPKc
 1917              		.syntax unified
 1918              		.thumb
 1919              		.thumb_func
 1920              		.fpu fpv4-sp-d16
 1921              		.type	_ZN6RepRap10SetMessageEPKc, %function
 1922              	_ZN6RepRap10SetMessageEPKc:
 1923              		@ args = 0, pretend = 0, frame = 0
 1924              		@ frame_needed = 0, uses_anonymous_args = 0
 1925 0000 38B5     		push	{r3, r4, r5, lr}
 1926 0002 0446     		mov	r4, r0
 1927 0004 40F20112 		movw	r2, #257
 1928 0008 9830     		adds	r0, r0, #152
 1929 000a 0D46     		mov	r5, r1
 1930 000c FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1931 0010 2068     		ldr	r0, [r4]
 1932 0012 90F89839 		ldrb	r3, [r0, #2456]	@ zero_extendqisi2
 1933 0016 03B9     		cbnz	r3, .L352
 1934 0018 38BD     		pop	{r3, r4, r5, pc}
 1935              	.L352:
 1936 001a 2946     		mov	r1, r5
 1937 001c BDE83840 		pop	{r3, r4, r5, lr}
 1938 0020 FFF7FEBF 		b	_ZN8Platform14SendAuxMessageEPKc
ARM GAS  /tmp/ccgYgJck.s 			page 35


 1939              		.size	_ZN6RepRap10SetMessageEPKc, .-_ZN6RepRap10SetMessageEPKc
 1940              		.section	.text._ZN6RepRap8SetAlertEPKcS1_ifm,"ax",%progbits
 1941              		.align	1
 1942              		.p2align 2,,3
 1943              		.global	_ZN6RepRap8SetAlertEPKcS1_ifm
 1944              		.syntax unified
 1945              		.thumb
 1946              		.thumb_func
 1947              		.fpu fpv4-sp-d16
 1948              		.type	_ZN6RepRap8SetAlertEPKcS1_ifm, %function
 1949              	_ZN6RepRap8SetAlertEPKcS1_ifm:
 1950              		@ args = 4, pretend = 0, frame = 16
 1951              		@ frame_needed = 0, uses_anonymous_args = 0
 1952 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1953 0004 2DED028B 		vpush.64	{d8}
 1954 0008 85B0     		sub	sp, sp, #20
 1955 000a 0446     		mov	r4, r0
 1956 000c 8946     		mov	r9, r1
 1957 000e 9046     		mov	r8, r2
 1958 0010 00F12801 		add	r1, r0, #40
 1959 0014 4FF0FF32 		mov	r2, #-1
 1960 0018 6846     		mov	r0, sp
 1961 001a B0EE408A 		vmov.f32	s16, s0
 1962 001e 1F46     		mov	r7, r3
 1963 0020 40F20116 		movw	r6, #257
 1964 0024 0E9D     		ldr	r5, [sp, #56]
 1965 0026 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1966 002a 04F5CD73 		add	r3, r4, #410
 1967 002e 4946     		mov	r1, r9
 1968 0030 02A8     		add	r0, sp, #8
 1969 0032 CDE90236 		strd	r3, r6, [sp, #8]
 1970 0036 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1971 003a 04F29B23 		addw	r3, r4, #667
 1972 003e 4146     		mov	r1, r8
 1973 0040 02A8     		add	r0, sp, #8
 1974 0042 CDE90236 		strd	r3, r6, [sp, #8]
 1975 0046 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1976 004a B5EEC08A 		vcmpe.f32	s16, #0
 1977 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1978 0052 C4F89C73 		str	r7, [r4, #924]
 1979 0056 2AD8     		bhi	.L360
 1980 0058 0020     		movs	r0, #0
 1981              	.L354:
 1982 005a B4EE488A 		vcmp.f32	s16, s16
 1983 005e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1984 0062 C4F8A403 		str	r0, [r4, #932]
 1985 0066 04D6     		bvs	.L357
 1986 0068 B5EEC08A 		vcmpe.f32	s16, #0
 1987 006c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1988 0070 20DD     		ble	.L361
 1989              	.L357:
 1990 0072 9FED110A 		vldr.32	s0, .L362
 1991 0076 28EE000A 		vmul.f32	s0, s16, s0
 1992 007a FFF7FEFF 		bl	roundf
 1993 007e FCEEC07A 		vcvt.u32.f32	s15, s0
 1994 0082 17EE902A 		vmov	r2, s15	@ int
 1995              	.L356:
ARM GAS  /tmp/ccgYgJck.s 			page 36


 1996 0086 D4F8A033 		ldr	r3, [r4, #928]
 1997 008a C4F8A823 		str	r2, [r4, #936]
 1998 008e 0133     		adds	r3, r3, #1
 1999 0090 0122     		movs	r2, #1
 2000 0092 C4F8AC53 		str	r5, [r4, #940]
 2001 0096 6846     		mov	r0, sp
 2002 0098 C4F8A033 		str	r3, [r4, #928]
 2003 009c 84F89921 		strb	r2, [r4, #409]
 2004 00a0 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2005 00a4 05B0     		add	sp, sp, #20
 2006              		@ sp needed
 2007 00a6 BDEC028B 		vldm	sp!, {d8}
 2008 00aa BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2009              	.L360:
 2010 00ae FFF7FEFF 		bl	millis
 2011 00b2 D2E7     		b	.L354
 2012              	.L361:
 2013 00b4 0022     		movs	r2, #0
 2014 00b6 E6E7     		b	.L356
 2015              	.L363:
 2016              		.align	2
 2017              	.L362:
 2018 00b8 00007A44 		.word	1148846080
 2019              		.size	_ZN6RepRap8SetAlertEPKcS1_ifm, .-_ZN6RepRap8SetAlertEPKcS1_ifm
 2020              		.section	.text._ZN6RepRap10ClearAlertEv,"ax",%progbits
 2021              		.align	1
 2022              		.p2align 2,,3
 2023              		.global	_ZN6RepRap10ClearAlertEv
 2024              		.syntax unified
 2025              		.thumb
 2026              		.thumb_func
 2027              		.fpu fpv4-sp-d16
 2028              		.type	_ZN6RepRap10ClearAlertEv, %function
 2029              	_ZN6RepRap10ClearAlertEv:
 2030              		@ args = 0, pretend = 0, frame = 8
 2031              		@ frame_needed = 0, uses_anonymous_args = 0
 2032 0000 10B5     		push	{r4, lr}
 2033 0002 82B0     		sub	sp, sp, #8
 2034 0004 00F12801 		add	r1, r0, #40
 2035 0008 0446     		mov	r4, r0
 2036 000a 4FF0FF32 		mov	r2, #-1
 2037 000e 6846     		mov	r0, sp
 2038 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2039 0014 0023     		movs	r3, #0
 2040 0016 6846     		mov	r0, sp
 2041 0018 84F89931 		strb	r3, [r4, #409]
 2042 001c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2043 0020 02B0     		add	sp, sp, #8
 2044              		@ sp needed
 2045 0022 10BD     		pop	{r4, pc}
 2046              		.size	_ZN6RepRap10ClearAlertEv, .-_ZN6RepRap10ClearAlertEv
 2047              		.section	.text._ZNK6RepRap18GetStatusCharacterEv,"ax",%progbits
 2048              		.align	1
 2049              		.p2align 2,,3
 2050              		.global	_ZNK6RepRap18GetStatusCharacterEv
 2051              		.syntax unified
 2052              		.thumb
ARM GAS  /tmp/ccgYgJck.s 			page 37


 2053              		.thumb_func
 2054              		.fpu fpv4-sp-d16
 2055              		.type	_ZNK6RepRap18GetStatusCharacterEv, %function
 2056              	_ZNK6RepRap18GetStatusCharacterEv:
 2057              		@ args = 0, pretend = 0, frame = 0
 2058              		@ frame_needed = 0, uses_anonymous_args = 0
 2059 0000 90F84F30 		ldrb	r3, [r0, #79]	@ zero_extendqisi2
 2060 0004 53B9     		cbnz	r3, .L371
 2061 0006 0369     		ldr	r3, [r0, #16]
 2062 0008 93F8F535 		ldrb	r3, [r3, #1525]	@ zero_extendqisi2
 2063 000c 23B9     		cbnz	r3, .L372
 2064 000e 90F84C30 		ldrb	r3, [r0, #76]	@ zero_extendqisi2
 2065 0012 2BB1     		cbz	r3, .L388
 2066 0014 4820     		movs	r0, #72
 2067 0016 7047     		bx	lr
 2068              	.L372:
 2069 0018 4620     		movs	r0, #70
 2070 001a 7047     		bx	lr
 2071              	.L371:
 2072 001c 4320     		movs	r0, #67
 2073 001e 7047     		bx	lr
 2074              	.L388:
 2075 0020 10B5     		push	{r4, lr}
 2076 0022 0446     		mov	r4, r0
 2077 0024 0068     		ldr	r0, [r0]
 2078 0026 FFF7FEFF 		bl	_ZNK8Platform11HasVinPowerEv
 2079 002a A0B9     		cbnz	r0, .L389
 2080 002c 2069     		ldr	r0, [r4, #16]
 2081 002e 90F85835 		ldrb	r3, [r0, #1368]	@ zero_extendqisi2
 2082 0032 23B1     		cbz	r3, .L374
 2083              	.L369:
 2084 0034 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 2085 0038 18B1     		cbz	r0, .L390
 2086 003a 4420     		movs	r0, #68
 2087 003c 10BD     		pop	{r4, pc}
 2088              	.L374:
 2089 003e 4F20     		movs	r0, #79
 2090 0040 10BD     		pop	{r4, pc}
 2091              	.L390:
 2092 0042 2069     		ldr	r0, [r4, #16]
 2093 0044 FFF7FEFF 		bl	_ZNK6GCodes10IsResumingEv
 2094 0048 38B9     		cbnz	r0, .L376
 2095 004a 2069     		ldr	r0, [r4, #16]
 2096 004c 90F8AD30 		ldrb	r3, [r0, #173]	@ zero_extendqisi2
 2097 0050 2BB1     		cbz	r3, .L391
 2098 0052 5420     		movs	r0, #84
 2099 0054 10BD     		pop	{r4, pc}
 2100              	.L389:
 2101 0056 2069     		ldr	r0, [r4, #16]
 2102 0058 ECE7     		b	.L369
 2103              	.L376:
 2104 005a 5220     		movs	r0, #82
 2105 005c 10BD     		pop	{r4, pc}
 2106              	.L391:
 2107 005e FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 2108 0062 50B9     		cbnz	r0, .L378
 2109 0064 E369     		ldr	r3, [r4, #28]
ARM GAS  /tmp/ccgYgJck.s 			page 38


 2110 0066 2069     		ldr	r0, [r4, #16]
 2111 0068 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 2112 006a 43B1     		cbz	r3, .L370
 2113 006c 90F85835 		ldrb	r3, [r0, #1368]	@ zero_extendqisi2
 2114 0070 002B     		cmp	r3, #0
 2115 0072 0CBF     		ite	eq
 2116 0074 5020     		moveq	r0, #80
 2117 0076 4D20     		movne	r0, #77
 2118 0078 10BD     		pop	{r4, pc}
 2119              	.L378:
 2120 007a 5320     		movs	r0, #83
 2121 007c 10BD     		pop	{r4, pc}
 2122              	.L370:
 2123 007e FFF7FEFF 		bl	_ZNK6GCodes14DoingFileMacroEv
 2124 0082 20B9     		cbnz	r0, .L382
 2125 0084 A368     		ldr	r3, [r4, #8]
 2126 0086 9A68     		ldr	r2, [r3, #8]
 2127 0088 5968     		ldr	r1, [r3, #4]
 2128 008a 8A42     		cmp	r2, r1
 2129 008c 01D0     		beq	.L392
 2130              	.L382:
 2131 008e 4220     		movs	r0, #66
 2132 0090 10BD     		pop	{r4, pc}
 2133              	.L392:
 2134 0092 127A     		ldrb	r2, [r2, #8]	@ zero_extendqisi2
 2135 0094 002A     		cmp	r2, #0
 2136 0096 FAD1     		bne	.L382
 2137 0098 1B68     		ldr	r3, [r3]
 2138 009a 002B     		cmp	r3, #0
 2139 009c 14BF     		ite	ne
 2140 009e 4220     		movne	r0, #66
 2141 00a0 4920     		moveq	r0, #73
 2142 00a2 10BD     		pop	{r4, pc}
 2143              		.size	_ZNK6RepRap18GetStatusCharacterEv, .-_ZNK6RepRap18GetStatusCharacterEv
 2144              		.global	__aeabi_uldivmod
 2145              		.global	__aeabi_ul2d
 2146              		.section	.text._ZN6RepRap17GetStatusResponseEh14ResponseSource,"ax",%progbits
 2147              		.align	1
 2148              		.p2align 2,,3
 2149              		.global	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 2150              		.syntax unified
 2151              		.thumb
 2152              		.thumb_func
 2153              		.fpu fpv4-sp-d16
 2154              		.type	_ZN6RepRap17GetStatusResponseEh14ResponseSource, %function
 2155              	_ZN6RepRap17GetStatusResponseEh14ResponseSource:
 2156              		@ args = 0, pretend = 0, frame = 88
 2157              		@ frame_needed = 0, uses_anonymous_args = 0
 2158 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2159 0004 2DED028B 		vpush.64	{d8}
 2160 0008 9BB0     		sub	sp, sp, #108
 2161 000a 0446     		mov	r4, r0
 2162 000c 0BA8     		add	r0, sp, #44
 2163 000e CDE90721 		strd	r2, r1, [sp, #28]
 2164 0012 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2165 0016 0590     		str	r0, [sp, #20]
 2166 0018 0028     		cmp	r0, #0
ARM GAS  /tmp/ccgYgJck.s 			page 39


 2167 001a 00F0AF87 		beq	.L523
 2168 001e 2046     		mov	r0, r4
 2169 0020 FFF7FEFF 		bl	_ZNK6RepRap18GetStatusCharacterEv
 2170 0024 BC49     		ldr	r1, .L670
 2171 0026 0246     		mov	r2, r0
 2172 0028 0B98     		ldr	r0, [sp, #44]
 2173 002a FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2174 002e 2369     		ldr	r3, [r4, #16]
 2175 0030 BA49     		ldr	r1, .L670+4
 2176 0032 D3F89C72 		ldr	r7, [r3, #668]
 2177 0036 0B98     		ldr	r0, [sp, #44]
 2178 0038 0697     		str	r7, [sp, #24]
 2179 003a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2180 003e 002F     		cmp	r7, #0
 2181 0040 00F0DA87 		beq	.L395
 2182 0044 B64E     		ldr	r6, .L670+8
 2183 0046 0025     		movs	r5, #0
 2184 0048 5B22     		movs	r2, #91
 2185              	.L397:
 2186 004a 2369     		ldr	r3, [r4, #16]
 2187 004c 0B98     		ldr	r0, [sp, #44]
 2188 004e D3F87434 		ldr	r3, [r3, #1140]
 2189 0052 EB40     		lsrs	r3, r3, r5
 2190 0054 03F00103 		and	r3, r3, #1
 2191 0058 0135     		adds	r5, r5, #1
 2192 005a 3146     		mov	r1, r6
 2193 005c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2194 0060 BD42     		cmp	r5, r7
 2195 0062 4FF02C02 		mov	r2, #44
 2196 0066 F0D1     		bne	.L397
 2197 0068 AE49     		ldr	r1, .L670+12
 2198 006a 0B98     		ldr	r0, [sp, #44]
 2199 006c AE4F     		ldr	r7, .L670+16
 2200 006e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2201 0072 2569     		ldr	r5, [r4, #16]
 2202 0074 069B     		ldr	r3, [sp, #24]
 2203 0076 B435     		adds	r5, r5, #180
 2204 0078 05EB8306 		add	r6, r5, r3, lsl #2
 2205 007c 4FF05B08 		mov	r8, #91
 2206 0080 B146     		mov	r9, r6
 2207              	.L399:
 2208 0082 B5EC010A 		vldmia.32	r5!, {s0}
 2209 0086 0B9E     		ldr	r6, [sp, #44]
 2210 0088 FFF7FEFF 		bl	_Z7HideNanf
 2211 008c 4246     		mov	r2, r8
 2212 008e 3046     		mov	r0, r6
 2213 0090 8DED000B 		vstr.64	d0, [sp]
 2214 0094 3946     		mov	r1, r7
 2215 0096 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2216 009a A945     		cmp	r9, r5
 2217 009c 4FF02C08 		mov	r8, #44
 2218 00a0 EFD1     		bne	.L399
 2219 00a2 226B     		ldr	r2, [r4, #48]
 2220 00a4 A068     		ldr	r0, [r4, #8]
 2221 00a6 002A     		cmp	r2, #0
 2222 00a8 00F09683 		beq	.L644
 2223 00ac 0EAB     		add	r3, sp, #56
ARM GAS  /tmp/ccgYgJck.s 			page 40


 2224 00ae 1946     		mov	r1, r3
 2225 00b0 0493     		str	r3, [sp, #16]
 2226 00b2 D2E92823 		ldrd	r2, r3, [r2, #160]
 2227 00b6 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 2228 00ba 9C49     		ldr	r1, .L670+20
 2229 00bc 0B98     		ldr	r0, [sp, #44]
 2230 00be FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2231              	.L516:
 2232 00c2 994E     		ldr	r6, .L670+16
 2233 00c4 049F     		ldr	r7, [sp, #16]
 2234 00c6 DDF81890 		ldr	r9, [sp, #24]
 2235 00ca 0025     		movs	r5, #0
 2236 00cc 4FF05B08 		mov	r8, #91
 2237 00d0 A246     		mov	r10, r4
 2238              	.L400:
 2239 00d2 B7EC010A 		vldmia.32	r7!, {s0}
 2240 00d6 0B9C     		ldr	r4, [sp, #44]
 2241 00d8 FFF7FEFF 		bl	_Z7HideNanf
 2242 00dc 0135     		adds	r5, r5, #1
 2243 00de 4246     		mov	r2, r8
 2244 00e0 8DED000B 		vstr.64	d0, [sp]
 2245 00e4 2046     		mov	r0, r4
 2246 00e6 3146     		mov	r1, r6
 2247 00e8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2248 00ec 4D45     		cmp	r5, r9
 2249 00ee 4FF02C08 		mov	r8, #44
 2250 00f2 EED3     		bcc	.L400
 2251 00f4 5446     		mov	r4, r10
 2252              	.L520:
 2253 00f6 8E49     		ldr	r1, .L670+24
 2254 00f8 0B98     		ldr	r0, [sp, #44]
 2255 00fa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2256 00fe 238F     		ldrh	r3, [r4, #56]
 2257 0100 002B     		cmp	r3, #0
 2258 0102 00F0FE86 		beq	.L401
 2259 0106 8B4E     		ldr	r6, .L670+28
 2260 0108 0025     		movs	r5, #0
 2261 010a 4FF05B08 		mov	r8, #91
 2262              	.L402:
 2263 010e 2369     		ldr	r3, [r4, #16]
 2264 0110 0B9F     		ldr	r7, [sp, #44]
 2265 0112 D3F89832 		ldr	r3, [r3, #664]
 2266 0116 1AAA     		add	r2, sp, #104
 2267 0118 2B44     		add	r3, r3, r5
 2268 011a 02EB8303 		add	r3, r2, r3, lsl #2
 2269 011e 0135     		adds	r5, r5, #1
 2270 0120 53F8300C 		ldr	r0, [r3, #-48]	@ float
 2271 0124 FFF7FEFF 		bl	__aeabi_f2d
 2272 0128 4246     		mov	r2, r8
 2273 012a CDE90001 		strd	r0, [sp]
 2274 012e 3846     		mov	r0, r7
 2275 0130 3146     		mov	r1, r6
 2276 0132 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2277 0136 238F     		ldrh	r3, [r4, #56]
 2278 0138 AB42     		cmp	r3, r5
 2279 013a 4FF02C08 		mov	r8, #44
 2280 013e E6D8     		bhi	.L402
ARM GAS  /tmp/ccgYgJck.s 			page 41


 2281              	.L403:
 2282 0140 236B     		ldr	r3, [r4, #48]
 2283 0142 0B98     		ldr	r0, [sp, #44]
 2284 0144 002B     		cmp	r3, #0
 2285 0146 00F0ED85 		beq	.L524
 2286 014a D3F89C20 		ldr	r2, [r3, #156]
 2287              	.L404:
 2288 014e 7A49     		ldr	r1, .L670+32
 2289 0150 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2290 0154 079B     		ldr	r3, [sp, #28]
 2291 0156 012B     		cmp	r3, #1
 2292 0158 04F12801 		add	r1, r4, #40
 2293 015c 00F02685 		beq	.L645
 2294 0160 2368     		ldr	r3, [r4]
 2295 0162 94F89850 		ldrb	r5, [r4, #152]	@ zero_extendqisi2
 2296 0166 93F89839 		ldrb	r3, [r3, #2456]	@ zero_extendqisi2
 2297 016a 3BB9     		cbnz	r3, .L407
 2298              	.L406:
 2299 016c D4F89430 		ldr	r3, [r4, #148]
 2300 0170 23B1     		cbz	r3, .L407
 2301 0172 D4F89030 		ldr	r3, [r4, #144]
 2302 0176 002B     		cmp	r3, #0
 2303 0178 40F0DA85 		bne	.L408
 2304              	.L407:
 2305 017c 4FF0FF32 		mov	r2, #-1
 2306 0180 0498     		ldr	r0, [sp, #16]
 2307 0182 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2308 0186 94F89931 		ldrb	r3, [r4, #409]	@ zero_extendqisi2
 2309 018a 002B     		cmp	r3, #0
 2310 018c 40F05285 		bne	.L646
 2311 0190 05B3     		cbz	r5, .L413
 2312 0192 9FED6A8A 		vldr.32	s16, .L670+36
 2313              	.L411:
 2314 0196 6A49     		ldr	r1, .L670+40
 2315 0198 0B98     		ldr	r0, [sp, #44]
 2316 019a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2317 019e 0B98     		ldr	r0, [sp, #44]
 2318              	.L414:
 2319 01a0 6849     		ldr	r1, .L670+44
 2320 01a2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2321 01a6 0025     		movs	r5, #0
 2322 01a8 0122     		movs	r2, #1
 2323 01aa 2B46     		mov	r3, r5
 2324 01ac 0092     		str	r2, [sp]
 2325 01ae 0B98     		ldr	r0, [sp, #44]
 2326 01b0 0195     		str	r5, [sp, #4]
 2327 01b2 40F20112 		movw	r2, #257
 2328 01b6 04F19801 		add	r1, r4, #152
 2329 01ba FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 2330 01be 94F89931 		ldrb	r3, [r4, #409]	@ zero_extendqisi2
 2331 01c2 002B     		cmp	r3, #0
 2332 01c4 40F0CC85 		bne	.L416
 2333 01c8 84F89830 		strb	r3, [r4, #152]
 2334 01cc 0B98     		ldr	r0, [sp, #44]
 2335 01ce 5E49     		ldr	r1, .L670+48
 2336 01d0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2337              	.L413:
ARM GAS  /tmp/ccgYgJck.s 			page 42


 2338 01d4 0498     		ldr	r0, [sp, #16]
 2339 01d6 9FED5D8A 		vldr.32	s16, .L670+52
 2340 01da 514F     		ldr	r7, .L670+8
 2341 01dc FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2342 01e0 2068     		ldr	r0, [r4]
 2343 01e2 0B9D     		ldr	r5, [sp, #44]
 2344 01e4 FFF7FEFF 		bl	_ZNK8Platform8AtxPowerEv
 2345 01e8 5949     		ldr	r1, .L670+56
 2346 01ea 0246     		mov	r2, r0
 2347 01ec 2846     		mov	r0, r5
 2348 01ee FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2349 01f2 5849     		ldr	r1, .L670+60
 2350 01f4 0B98     		ldr	r0, [sp, #44]
 2351 01f6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2352 01fa 0025     		movs	r5, #0
 2353 01fc 4FF05B08 		mov	r8, #91
 2354              	.L418:
 2355 0200 2946     		mov	r1, r5
 2356 0202 2068     		ldr	r0, [r4]
 2357 0204 0B9E     		ldr	r6, [sp, #44]
 2358 0206 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 2359 020a 20EE080A 		vmul.f32	s0, s0, s16
 2360 020e FFF7FEFF 		bl	lrintf
 2361 0212 0135     		adds	r5, r5, #1
 2362 0214 0346     		mov	r3, r0
 2363 0216 4246     		mov	r2, r8
 2364 0218 3946     		mov	r1, r7
 2365 021a 3046     		mov	r0, r6
 2366 021c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2367 0220 092D     		cmp	r5, #9
 2368 0222 4FF02C08 		mov	r8, #44
 2369 0226 EBD1     		bne	.L418
 2370 0228 2069     		ldr	r0, [r4, #16]
 2371 022a 0B9D     		ldr	r5, [sp, #44]
 2372 022c FFF7FEFF 		bl	_ZNK6GCodes14GetSpeedFactorEv
 2373 0230 60EE087A 		vmul.f32	s15, s0, s16
 2374 0234 17EE900A 		vmov	r0, s15
 2375 0238 FFF7FEFF 		bl	__aeabi_f2d
 2376 023c 0B46     		mov	r3, r1
 2377 023e 0246     		mov	r2, r0
 2378 0240 4549     		ldr	r1, .L670+64
 2379 0242 2846     		mov	r0, r5
 2380 0244 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2381 0248 238F     		ldrh	r3, [r4, #56]
 2382 024a 002B     		cmp	r3, #0
 2383 024c 00F0EE86 		beq	.L419
 2384 0250 9FED3E8A 		vldr.32	s16, .L670+52
 2385 0254 374E     		ldr	r6, .L670+28
 2386 0256 0025     		movs	r5, #0
 2387 0258 4FF05B08 		mov	r8, #91
 2388              	.L420:
 2389 025c 2946     		mov	r1, r5
 2390 025e 2069     		ldr	r0, [r4, #16]
 2391 0260 0B9F     		ldr	r7, [sp, #44]
 2392 0262 FFF7FEFF 		bl	_ZN6GCodes18GetExtrusionFactorEj
 2393 0266 60EE087A 		vmul.f32	s15, s0, s16
 2394 026a 0135     		adds	r5, r5, #1
ARM GAS  /tmp/ccgYgJck.s 			page 43


 2395 026c 17EE900A 		vmov	r0, s15
 2396 0270 FFF7FEFF 		bl	__aeabi_f2d
 2397 0274 4246     		mov	r2, r8
 2398 0276 CDE90001 		strd	r0, [sp]
 2399 027a 3846     		mov	r0, r7
 2400 027c 3146     		mov	r1, r6
 2401 027e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2402 0282 238F     		ldrh	r3, [r4, #56]
 2403 0284 AB42     		cmp	r3, r5
 2404 0286 4FF02C08 		mov	r8, #44
 2405 028a E7D8     		bhi	.L420
 2406 028c 0B98     		ldr	r0, [sp, #44]
 2407 028e 3349     		ldr	r1, .L670+68
 2408              	.L422:
 2409 0290 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2410 0294 2369     		ldr	r3, [r4, #16]
 2411 0296 03F59E63 		add	r3, r3, #1264
 2412 029a 1868     		ldr	r0, [r3]	@ float
 2413 029c FFF7FEFF 		bl	__aeabi_f2d
 2414 02a0 0B46     		mov	r3, r1
 2415 02a2 0246     		mov	r2, r0
 2416 02a4 2E49     		ldr	r1, .L670+72
 2417 02a6 0B98     		ldr	r0, [sp, #44]
 2418 02a8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2419 02ac 079B     		ldr	r3, [sp, #28]
 2420 02ae 002B     		cmp	r3, #0
 2421 02b0 00F01685 		beq	.L647
 2422              	.L423:
 2423 02b4 2B49     		ldr	r1, .L670+76
 2424 02b6 0B98     		ldr	r0, [sp, #44]
 2425 02b8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2426 02bc 2068     		ldr	r0, [r4]
 2427 02be FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 2428 02c2 0DA9     		add	r1, sp, #52
 2429 02c4 0546     		mov	r5, r0
 2430 02c6 049A     		ldr	r2, [sp, #16]
 2431 02c8 2068     		ldr	r0, [r4]
 2432 02ca FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 2433 02ce 0128     		cmp	r0, #1
 2434 02d0 00F0A884 		beq	.L425
 2435 02d4 0228     		cmp	r0, #2
 2436 02d6 40F06D84 		bne	.L648
 2437 02da 0E9A     		ldr	r2, [sp, #56]
 2438 02dc 0092     		str	r2, [sp]
 2439 02de 0D9B     		ldr	r3, [sp, #52]
 2440 02e0 0B98     		ldr	r0, [sp, #44]
 2441 02e2 2149     		ldr	r1, .L670+80
 2442 02e4 2A46     		mov	r2, r5
 2443 02e6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2444              	.L427:
 2445 02ea 2068     		ldr	r0, [r4]
 2446 02ec 0B9D     		ldr	r5, [sp, #44]
 2447 02ee FFF7FEFF 		bl	_ZNK8Platform9GetFanRPMEv
 2448 02f2 FCEEC07A 		vcvt.u32.f32	s15, s0
 2449 02f6 1D49     		ldr	r1, .L670+84
 2450 02f8 17EE902A 		vmov	r2, s15	@ int
 2451 02fc 2846     		mov	r0, r5
ARM GAS  /tmp/ccgYgJck.s 			page 44


 2452 02fe FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2453 0302 1B49     		ldr	r1, .L670+88
 2454 0304 0B98     		ldr	r0, [sp, #44]
 2455 0306 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2456 030a E068     		ldr	r0, [r4, #12]
 2457 030c 90F9D280 		ldrsb	r8, [r0, #210]
 2458 0310 B8F1FF3F 		cmp	r8, #-1
 2459 0314 55D0     		beq	.L428
 2460 0316 2DE0     		b	.L671
 2461              	.L672:
 2462              		.align	2
 2463              	.L670:
 2464 0318 1C000000 		.word	.LC54
 2465 031c 38000000 		.word	.LC55
 2466 0320 48000000 		.word	.LC56
 2467 0324 10070000 		.word	.LC135
 2468 0328 50000000 		.word	.LC57
 2469 032c 1C070000 		.word	.LC136
 2470 0330 58000000 		.word	.LC58
 2471 0334 C8000000 		.word	.LC45
 2472 0338 64000000 		.word	.LC59
 2473 033c 00000000 		.word	0
 2474 0340 DC060000 		.word	.LC133
 2475 0344 7C000000 		.word	.LC61
 2476 0348 E4000000 		.word	.LC47
 2477 034c 0000C842 		.word	1120403456
 2478 0350 DC000000 		.word	.LC65
 2479 0354 F8000000 		.word	.LC66
 2480 0358 08010000 		.word	.LC67
 2481 035c 04000000 		.word	.LC50
 2482 0360 2C010000 		.word	.LC68
 2483 0364 4C010000 		.word	.LC70
 2484 0368 84010000 		.word	.LC72
 2485 036c C0010000 		.word	.LC74
 2486 0370 D0010000 		.word	.LC75
 2487              	.L671:
 2488 0374 4146     		mov	r1, r8
 2489 0376 0B9D     		ldr	r5, [sp, #44]
 2490 0378 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2491 037c 4146     		mov	r1, r8
 2492 037e E068     		ldr	r0, [r4, #12]
 2493 0380 10EE106A 		vmov	r6, s0
 2494 0384 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2495 0388 4146     		mov	r1, r8
 2496 038a E068     		ldr	r0, [r4, #12]
 2497 038c 8DED090A 		vstr.32	s0, [sp, #36]	@ int
 2498 0390 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2499 0394 8146     		mov	r9, r0
 2500 0396 3046     		mov	r0, r6	@ float
 2501 0398 FFF7FEFF 		bl	__aeabi_f2d
 2502 039c 9DED090A 		vldr.32	s0, [sp, #36]	@ int
 2503 03a0 0646     		mov	r6, r0
 2504 03a2 10EE100A 		vmov	r0, s0
 2505 03a6 0F46     		mov	r7, r1
 2506 03a8 CDE90298 		strd	r9, r8, [sp, #8]
 2507 03ac FFF7FEFF 		bl	__aeabi_f2d
 2508 03b0 3246     		mov	r2, r6
ARM GAS  /tmp/ccgYgJck.s 			page 45


 2509 03b2 CDE90001 		strd	r0, [sp]
 2510 03b6 3B46     		mov	r3, r7
 2511 03b8 2846     		mov	r0, r5
 2512 03ba C549     		ldr	r1, .L673
 2513 03bc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2514 03c0 E068     		ldr	r0, [r4, #12]
 2515              	.L428:
 2516 03c2 90F9D680 		ldrsb	r8, [r0, #214]
 2517 03c6 0B9D     		ldr	r5, [sp, #44]
 2518 03c8 B8F1FF3F 		cmp	r8, #-1
 2519 03cc 26D0     		beq	.L429
 2520 03ce 4146     		mov	r1, r8
 2521 03d0 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2522 03d4 4146     		mov	r1, r8
 2523 03d6 E068     		ldr	r0, [r4, #12]
 2524 03d8 10EE106A 		vmov	r6, s0
 2525 03dc FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2526 03e0 4146     		mov	r1, r8
 2527 03e2 E068     		ldr	r0, [r4, #12]
 2528 03e4 8DED090A 		vstr.32	s0, [sp, #36]	@ int
 2529 03e8 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2530 03ec 8146     		mov	r9, r0
 2531 03ee 3046     		mov	r0, r6	@ float
 2532 03f0 FFF7FEFF 		bl	__aeabi_f2d
 2533 03f4 9DED090A 		vldr.32	s0, [sp, #36]	@ int
 2534 03f8 0646     		mov	r6, r0
 2535 03fa 10EE100A 		vmov	r0, s0
 2536 03fe 0F46     		mov	r7, r1
 2537 0400 CDE90298 		strd	r9, r8, [sp, #8]
 2538 0404 FFF7FEFF 		bl	__aeabi_f2d
 2539 0408 3246     		mov	r2, r6
 2540 040a CDE90001 		strd	r0, [sp]
 2541 040e 3B46     		mov	r3, r7
 2542 0410 2846     		mov	r0, r5
 2543 0412 B049     		ldr	r1, .L673+4
 2544 0414 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2545 0418 E068     		ldr	r0, [r4, #12]
 2546 041a 0B9D     		ldr	r5, [sp, #44]
 2547              	.L429:
 2548 041c 90F9D780 		ldrsb	r8, [r0, #215]
 2549 0420 B8F1FF3F 		cmp	r8, #-1
 2550 0424 25D0     		beq	.L430
 2551 0426 4146     		mov	r1, r8
 2552 0428 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2553 042c 4146     		mov	r1, r8
 2554 042e E068     		ldr	r0, [r4, #12]
 2555 0430 10EE106A 		vmov	r6, s0
 2556 0434 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2557 0438 4146     		mov	r1, r8
 2558 043a E068     		ldr	r0, [r4, #12]
 2559 043c 8DED090A 		vstr.32	s0, [sp, #36]	@ int
 2560 0440 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2561 0444 8146     		mov	r9, r0
 2562 0446 3046     		mov	r0, r6	@ float
 2563 0448 FFF7FEFF 		bl	__aeabi_f2d
 2564 044c 9DED090A 		vldr.32	s0, [sp, #36]	@ int
 2565 0450 0646     		mov	r6, r0
ARM GAS  /tmp/ccgYgJck.s 			page 46


 2566 0452 10EE100A 		vmov	r0, s0
 2567 0456 0F46     		mov	r7, r1
 2568 0458 CDE90298 		strd	r9, r8, [sp, #8]
 2569 045c FFF7FEFF 		bl	__aeabi_f2d
 2570 0460 3246     		mov	r2, r6
 2571 0462 CDE90001 		strd	r0, [sp]
 2572 0466 3B46     		mov	r3, r7
 2573 0468 2846     		mov	r0, r5
 2574 046a 9B49     		ldr	r1, .L673+8
 2575 046c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2576 0470 0B9D     		ldr	r5, [sp, #44]
 2577              	.L430:
 2578 0472 9A49     		ldr	r1, .L673+12
 2579 0474 9A4E     		ldr	r6, .L673+16
 2580 0476 2846     		mov	r0, r5
 2581 0478 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2582 047c 0025     		movs	r5, #0
 2583 047e 4FF05B08 		mov	r8, #91
 2584              	.L431:
 2585 0482 69B2     		sxtb	r1, r5
 2586 0484 E068     		ldr	r0, [r4, #12]
 2587 0486 0B9F     		ldr	r7, [sp, #44]
 2588 0488 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2589 048c 10EE100A 		vmov	r0, s0
 2590 0490 FFF7FEFF 		bl	__aeabi_f2d
 2591 0494 0135     		adds	r5, r5, #1
 2592 0496 CDE90001 		strd	r0, [sp]
 2593 049a 4246     		mov	r2, r8
 2594 049c 3846     		mov	r0, r7
 2595 049e 3146     		mov	r1, r6
 2596 04a0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2597 04a4 082D     		cmp	r5, #8
 2598 04a6 4FF02C08 		mov	r8, #44
 2599 04aa EAD1     		bne	.L431
 2600 04ac 8D49     		ldr	r1, .L673+20
 2601 04ae 0B98     		ldr	r0, [sp, #44]
 2602 04b0 8D4F     		ldr	r7, .L673+24
 2603 04b2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2604 04b6 8D49     		ldr	r1, .L673+28
 2605 04b8 0B98     		ldr	r0, [sp, #44]
 2606 04ba FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2607 04be 0025     		movs	r5, #0
 2608 04c0 4FF05B08 		mov	r8, #91
 2609              	.L432:
 2610 04c4 69B2     		sxtb	r1, r5
 2611 04c6 E068     		ldr	r0, [r4, #12]
 2612 04c8 0B9E     		ldr	r6, [sp, #44]
 2613 04ca FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2614 04ce 0135     		adds	r5, r5, #1
 2615 04d0 0346     		mov	r3, r0
 2616 04d2 4246     		mov	r2, r8
 2617 04d4 3946     		mov	r1, r7
 2618 04d6 3046     		mov	r0, r6
 2619 04d8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2620 04dc 082D     		cmp	r5, #8
 2621 04de 4FF02C08 		mov	r8, #44
 2622 04e2 EFD1     		bne	.L432
ARM GAS  /tmp/ccgYgJck.s 			page 47


 2623 04e4 7F49     		ldr	r1, .L673+20
 2624 04e6 0B98     		ldr	r0, [sp, #44]
 2625 04e8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2626 04ec 8049     		ldr	r1, .L673+32
 2627 04ee 0B98     		ldr	r0, [sp, #44]
 2628 04f0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2629 04f4 638F     		ldrh	r3, [r4, #58]
 2630 04f6 012B     		cmp	r3, #1
 2631 04f8 40F29485 		bls	.L433
 2632 04fc 784E     		ldr	r6, .L673+16
 2633 04fe 0125     		movs	r5, #1
 2634 0500 4FF05B08 		mov	r8, #91
 2635              	.L434:
 2636 0504 69B2     		sxtb	r1, r5
 2637 0506 E068     		ldr	r0, [r4, #12]
 2638 0508 0B9F     		ldr	r7, [sp, #44]
 2639 050a FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2640 050e 10EE100A 		vmov	r0, s0
 2641 0512 FFF7FEFF 		bl	__aeabi_f2d
 2642 0516 4246     		mov	r2, r8
 2643 0518 CDE90001 		strd	r0, [sp]
 2644 051c 3846     		mov	r0, r7
 2645 051e 3146     		mov	r1, r6
 2646 0520 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2647 0524 638F     		ldrh	r3, [r4, #58]
 2648 0526 0135     		adds	r5, r5, #1
 2649 0528 AB42     		cmp	r3, r5
 2650 052a 4FF02C08 		mov	r8, #44
 2651 052e E9D8     		bhi	.L434
 2652 0530 0B98     		ldr	r0, [sp, #44]
 2653 0532 6C49     		ldr	r1, .L673+20
 2654              	.L436:
 2655 0534 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2656 0538 6E49     		ldr	r1, .L673+36
 2657 053a 0B98     		ldr	r0, [sp, #44]
 2658 053c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2659 0540 638F     		ldrh	r3, [r4, #58]
 2660 0542 012B     		cmp	r3, #1
 2661 0544 40F27E85 		bls	.L437
 2662 0548 654E     		ldr	r6, .L673+16
 2663 054a 0125     		movs	r5, #1
 2664 054c 4FF05B08 		mov	r8, #91
 2665              	.L438:
 2666 0550 69B2     		sxtb	r1, r5
 2667 0552 E068     		ldr	r0, [r4, #12]
 2668 0554 0B9F     		ldr	r7, [sp, #44]
 2669 0556 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2670 055a 10EE100A 		vmov	r0, s0
 2671 055e FFF7FEFF 		bl	__aeabi_f2d
 2672 0562 4246     		mov	r2, r8
 2673 0564 CDE90001 		strd	r0, [sp]
 2674 0568 3846     		mov	r0, r7
 2675 056a 3146     		mov	r1, r6
 2676 056c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2677 0570 638F     		ldrh	r3, [r4, #58]
 2678 0572 0135     		adds	r5, r5, #1
 2679 0574 AB42     		cmp	r3, r5
ARM GAS  /tmp/ccgYgJck.s 			page 48


 2680 0576 4FF02C08 		mov	r8, #44
 2681 057a E9D8     		bhi	.L438
 2682 057c 0B98     		ldr	r0, [sp, #44]
 2683 057e 5949     		ldr	r1, .L673+20
 2684              	.L440:
 2685 0580 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2686 0584 5C49     		ldr	r1, .L673+40
 2687 0586 0B98     		ldr	r0, [sp, #44]
 2688 0588 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2689 058c 638F     		ldrh	r3, [r4, #58]
 2690 058e 012B     		cmp	r3, #1
 2691 0590 40F25485 		bls	.L441
 2692 0594 524E     		ldr	r6, .L673+16
 2693 0596 0125     		movs	r5, #1
 2694 0598 4FF05B08 		mov	r8, #91
 2695              	.L442:
 2696 059c 69B2     		sxtb	r1, r5
 2697 059e E068     		ldr	r0, [r4, #12]
 2698 05a0 0B9F     		ldr	r7, [sp, #44]
 2699 05a2 FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 2700 05a6 10EE100A 		vmov	r0, s0
 2701 05aa FFF7FEFF 		bl	__aeabi_f2d
 2702 05ae 4246     		mov	r2, r8
 2703 05b0 CDE90001 		strd	r0, [sp]
 2704 05b4 3846     		mov	r0, r7
 2705 05b6 3146     		mov	r1, r6
 2706 05b8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2707 05bc 638F     		ldrh	r3, [r4, #58]
 2708 05be 0135     		adds	r5, r5, #1
 2709 05c0 AB42     		cmp	r3, r5
 2710 05c2 4FF02C08 		mov	r8, #44
 2711 05c6 E9D8     		bhi	.L442
 2712 05c8 0B98     		ldr	r0, [sp, #44]
 2713 05ca 4649     		ldr	r1, .L673+20
 2714              	.L444:
 2715 05cc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2716 05d0 4649     		ldr	r1, .L673+28
 2717 05d2 0B98     		ldr	r0, [sp, #44]
 2718 05d4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2719 05d8 638F     		ldrh	r3, [r4, #58]
 2720 05da 012B     		cmp	r3, #1
 2721 05dc 40F22A85 		bls	.L445
 2722 05e0 414F     		ldr	r7, .L673+24
 2723 05e2 0125     		movs	r5, #1
 2724 05e4 4FF05B08 		mov	r8, #91
 2725              	.L446:
 2726 05e8 69B2     		sxtb	r1, r5
 2727 05ea E068     		ldr	r0, [r4, #12]
 2728 05ec 0B9E     		ldr	r6, [sp, #44]
 2729 05ee FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2730 05f2 4246     		mov	r2, r8
 2731 05f4 0346     		mov	r3, r0
 2732 05f6 3946     		mov	r1, r7
 2733 05f8 3046     		mov	r0, r6
 2734 05fa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2735 05fe 638F     		ldrh	r3, [r4, #58]
 2736 0600 0135     		adds	r5, r5, #1
ARM GAS  /tmp/ccgYgJck.s 			page 49


 2737 0602 AB42     		cmp	r3, r5
 2738 0604 4FF02C08 		mov	r8, #44
 2739 0608 EED8     		bhi	.L446
 2740 060a 0B98     		ldr	r0, [sp, #44]
 2741 060c 3549     		ldr	r1, .L673+20
 2742              	.L448:
 2743 060e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2744 0612 04F12403 		add	r3, r4, #36
 2745 0616 1D46     		mov	r5, r3
 2746 0618 3849     		ldr	r1, .L673+44
 2747 061a 0B98     		ldr	r0, [sp, #44]
 2748 061c 0993     		str	r3, [sp, #36]
 2749 061e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2750 0622 2946     		mov	r1, r5
 2751 0624 4FF0FF32 		mov	r2, #-1
 2752 0628 0498     		ldr	r0, [sp, #16]
 2753 062a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2754 062e D4F82CB0 		ldr	fp, [r4, #44]
 2755 0632 BBF1000F 		cmp	fp, #0
 2756 0636 32D0     		beq	.L449
 2757 0638 DFF8A480 		ldr	r8, .L673+16
 2758 063c DFF8A490 		ldr	r9, .L673+20
 2759              	.L453:
 2760 0640 DBF89830 		ldr	r3, [fp, #152]
 2761 0644 0B9E     		ldr	r6, [sp, #44]
 2762 0646 002B     		cmp	r3, #0
 2763 0648 00F00781 		beq	.L526
 2764 064c 0BF15407 		add	r7, fp, #84
 2765 0650 0025     		movs	r5, #0
 2766 0652 4FF05B0A 		mov	r10, #91
 2767 0656 01E0     		b	.L452
 2768              	.L649:
 2769 0658 4FF02C0A 		mov	r10, #44
 2770              	.L452:
 2771 065c 57F8040B 		ldr	r0, [r7], #4	@ float
 2772 0660 FFF7FEFF 		bl	__aeabi_f2d
 2773 0664 5246     		mov	r2, r10
 2774 0666 CDE90001 		strd	r0, [sp]
 2775 066a 3046     		mov	r0, r6
 2776 066c 4146     		mov	r1, r8
 2777 066e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2778 0672 DBF89830 		ldr	r3, [fp, #152]
 2779 0676 0B9E     		ldr	r6, [sp, #44]
 2780 0678 0135     		adds	r5, r5, #1
 2781 067a AB42     		cmp	r3, r5
 2782 067c ECD8     		bhi	.L649
 2783 067e 4946     		mov	r1, r9
 2784              	.L450:
 2785 0680 3046     		mov	r0, r6
 2786 0682 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2787 0686 DBF80030 		ldr	r3, [fp]
 2788 068a 43B1     		cbz	r3, .L449
 2789 068c 1C49     		ldr	r1, .L673+48
 2790 068e 0B98     		ldr	r0, [sp, #44]
 2791 0690 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2792 0694 DBF800B0 		ldr	fp, [fp]
 2793 0698 BBF1000F 		cmp	fp, #0
ARM GAS  /tmp/ccgYgJck.s 			page 50


 2794 069c D0D1     		bne	.L453
 2795              	.L449:
 2796 069e 1949     		ldr	r1, .L673+52
 2797 06a0 0B98     		ldr	r0, [sp, #44]
 2798 06a2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2799 06a6 D4F82CB0 		ldr	fp, [r4, #44]
 2800 06aa BBF1000F 		cmp	fp, #0
 2801 06ae 4ED0     		beq	.L454
 2802 06b0 DFF82C80 		ldr	r8, .L673+16
 2803 06b4 DFF82C90 		ldr	r9, .L673+20
 2804              	.L458:
 2805 06b8 DBF89830 		ldr	r3, [fp, #152]
 2806 06bc 0B9E     		ldr	r6, [sp, #44]
 2807 06be 002B     		cmp	r3, #0
 2808 06c0 00F0C980 		beq	.L527
 2809 06c4 0BF17407 		add	r7, fp, #116
 2810 06c8 0025     		movs	r5, #0
 2811 06ca 4FF05B0A 		mov	r10, #91
 2812 06ce 1DE0     		b	.L457
 2813              	.L674:
 2814              		.align	2
 2815              	.L673:
 2816 06d0 DC010000 		.word	.LC76
 2817 06d4 1C020000 		.word	.LC77
 2818 06d8 60020000 		.word	.LC78
 2819 06dc A4020000 		.word	.LC79
 2820 06e0 C8000000 		.word	.LC45
 2821 06e4 04000000 		.word	.LC50
 2822 06e8 48000000 		.word	.LC56
 2823 06ec B0020000 		.word	.LC80
 2824 06f0 BC020000 		.word	.LC81
 2825 06f4 D4020000 		.word	.LC82
 2826 06f8 E0020000 		.word	.LC83
 2827 06fc EC020000 		.word	.LC84
 2828 0700 78000000 		.word	.LC60
 2829 0704 04030000 		.word	.LC85
 2830              	.L650:
 2831 0708 4FF02C0A 		mov	r10, #44
 2832              	.L457:
 2833 070c 57F8040B 		ldr	r0, [r7], #4	@ float
 2834 0710 FFF7FEFF 		bl	__aeabi_f2d
 2835 0714 5246     		mov	r2, r10
 2836 0716 CDE90001 		strd	r0, [sp]
 2837 071a 3046     		mov	r0, r6
 2838 071c 4146     		mov	r1, r8
 2839 071e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2840 0722 DBF89830 		ldr	r3, [fp, #152]
 2841 0726 0B9E     		ldr	r6, [sp, #44]
 2842 0728 0135     		adds	r5, r5, #1
 2843 072a AB42     		cmp	r3, r5
 2844 072c ECD8     		bhi	.L650
 2845 072e 4946     		mov	r1, r9
 2846              	.L455:
 2847 0730 3046     		mov	r0, r6
 2848 0732 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2849 0736 DBF80030 		ldr	r3, [fp]
 2850 073a 43B1     		cbz	r3, .L454
ARM GAS  /tmp/ccgYgJck.s 			page 51


 2851 073c 5249     		ldr	r1, .L675
 2852 073e 0B98     		ldr	r0, [sp, #44]
 2853 0740 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2854 0744 DBF800B0 		ldr	fp, [fp]
 2855 0748 BBF1000F 		cmp	fp, #0
 2856 074c B4D1     		bne	.L458
 2857              	.L454:
 2858 074e DDF810B0 		ldr	fp, [sp, #16]
 2859 0752 DFF854A1 		ldr	r10, .L675+32
 2860 0756 DFF85491 		ldr	r9, .L675+36
 2861 075a 5846     		mov	r0, fp
 2862 075c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2863 0760 4A49     		ldr	r1, .L675+4
 2864 0762 0B98     		ldr	r0, [sp, #44]
 2865 0764 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2866 0768 6425     		movs	r5, #100
 2867 076a 059F     		ldr	r7, [sp, #20]
 2868 076c 4FF00008 		mov	r8, #0
 2869 0770 23E0     		b	.L461
 2870              	.L460:
 2871 0772 5146     		mov	r1, r10
 2872 0774 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2873 0778 3046     		mov	r0, r6
 2874 077a FFF7FEFF 		bl	strlen
 2875 077e 0B9B     		ldr	r3, [sp, #44]
 2876 0780 CDF80480 		str	r8, [sp, #4]
 2877 0784 0127     		movs	r7, #1
 2878 0786 0246     		mov	r2, r0
 2879 0788 3146     		mov	r1, r6
 2880 078a 1846     		mov	r0, r3
 2881 078c 0097     		str	r7, [sp]
 2882 078e 0023     		movs	r3, #0
 2883 0790 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 2884 0794 5A46     		mov	r2, fp
 2885 0796 2946     		mov	r1, r5
 2886 0798 E068     		ldr	r0, [r4, #12]
 2887 079a FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 2888 079e 10EE100A 		vmov	r0, s0
 2889 07a2 FFF7FEFF 		bl	__aeabi_f2d
 2890 07a6 0246     		mov	r2, r0
 2891 07a8 0B46     		mov	r3, r1
 2892 07aa 0B98     		ldr	r0, [sp, #44]
 2893 07ac 4946     		mov	r1, r9
 2894 07ae FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2895 07b2 0027     		movs	r7, #0
 2896              	.L459:
 2897 07b4 0135     		adds	r5, r5, #1
 2898 07b6 6E2D     		cmp	r5, #110
 2899 07b8 1AD0     		beq	.L651
 2900              	.L461:
 2901 07ba 2946     		mov	r1, r5
 2902 07bc E068     		ldr	r0, [r4, #12]
 2903 07be FFF7FEFF 		bl	_ZNK4Heat13GetHeaterNameEj
 2904 07c2 0646     		mov	r6, r0
 2905 07c4 0028     		cmp	r0, #0
 2906 07c6 F5D0     		beq	.L459
 2907 07c8 0B98     		ldr	r0, [sp, #44]
ARM GAS  /tmp/ccgYgJck.s 			page 52


 2908 07ca 002F     		cmp	r7, #0
 2909 07cc D1D1     		bne	.L460
 2910 07ce 2C21     		movs	r1, #44
 2911 07d0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2912 07d4 0B98     		ldr	r0, [sp, #44]
 2913 07d6 CCE7     		b	.L460
 2914              	.L644:
 2915 07d8 0EAB     		add	r3, sp, #56
 2916 07da 0493     		str	r3, [sp, #16]
 2917 07dc 1946     		mov	r1, r3
 2918 07de 0122     		movs	r2, #1
 2919 07e0 0223     		movs	r3, #2
 2920 07e2 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 2921 07e6 2A49     		ldr	r1, .L675+8
 2922 07e8 0B98     		ldr	r0, [sp, #44]
 2923 07ea FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2924 07ee 68E4     		b	.L516
 2925              	.L651:
 2926 07f0 2849     		ldr	r1, .L675+12
 2927 07f2 0B98     		ldr	r0, [sp, #44]
 2928 07f4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2929 07f8 0B9D     		ldr	r5, [sp, #44]
 2930 07fa FFF7FEFF 		bl	millis64
 2931 07fe 4FF47A72 		mov	r2, #1000
 2932 0802 0023     		movs	r3, #0
 2933 0804 FFF7FEFF 		bl	__aeabi_uldivmod
 2934 0808 FFF7FEFF 		bl	__aeabi_ul2d
 2935 080c 0B46     		mov	r3, r1
 2936 080e 0246     		mov	r2, r0
 2937 0810 2149     		ldr	r1, .L675+16
 2938 0812 2846     		mov	r0, r5
 2939 0814 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2940 0818 A069     		ldr	r0, [r4, #24]
 2941 081a 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 2942 081c 002B     		cmp	r3, #0
 2943 081e 40F06A82 		bne	.L652
 2944              	.L462:
 2945 0822 2369     		ldr	r3, [r4, #16]
 2946 0824 0B98     		ldr	r0, [sp, #44]
 2947 0826 93F8A830 		ldrb	r3, [r3, #168]	@ zero_extendqisi2
 2948 082a 022B     		cmp	r3, #2
 2949 082c 00F06881 		beq	.L653
 2950              	.L463:
 2951 0830 089B     		ldr	r3, [sp, #32]
 2952 0832 022B     		cmp	r3, #2
 2953 0834 3CD0     		beq	.L654
 2954 0836 089B     		ldr	r3, [sp, #32]
 2955 0838 032B     		cmp	r3, #3
 2956 083a 00F00784 		beq	.L655
 2957              	.L500:
 2958 083e 079B     		ldr	r3, [sp, #28]
 2959 0840 012B     		cmp	r3, #1
 2960 0842 0CD0     		beq	.L656
 2961              	.L508:
 2962 0844 1549     		ldr	r1, .L675+20
 2963 0846 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2964 084a 0B98     		ldr	r0, [sp, #44]
ARM GAS  /tmp/ccgYgJck.s 			page 53


 2965 084c 1BB0     		add	sp, sp, #108
 2966              		@ sp needed
 2967 084e BDEC028B 		vldm	sp!, {d8}
 2968 0852 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2969              	.L527:
 2970 0856 1249     		ldr	r1, .L675+24
 2971 0858 6AE7     		b	.L455
 2972              	.L526:
 2973 085a 1149     		ldr	r1, .L675+24
 2974 085c 10E7     		b	.L450
 2975              	.L656:
 2976 085e 2368     		ldr	r3, [r4]
 2977 0860 0022     		movs	r2, #0
 2978 0862 D3F89059 		ldr	r5, [r3, #2448]
 2979 0866 C3F89029 		str	r2, [r3, #2448]
 2980 086a 0028     		cmp	r0, #0
 2981 086c EAD0     		beq	.L508
 2982 086e 2368     		ldr	r3, [r4]
 2983 0870 0C49     		ldr	r1, .L675+28
 2984 0872 D3F89429 		ldr	r2, [r3, #2452]
 2985 0876 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2986 087a 079A     		ldr	r2, [sp, #28]
 2987 087c 0B98     		ldr	r0, [sp, #44]
 2988 087e 2946     		mov	r1, r5
 2989 0880 FFF7FEFF 		bl	_ZN12OutputBuffer11EncodeReplyEPS_b
 2990 0884 0B98     		ldr	r0, [sp, #44]
 2991 0886 DDE7     		b	.L508
 2992              	.L676:
 2993              		.align	2
 2994              	.L675:
 2995 0888 78000000 		.word	.LC60
 2996 088c 14030000 		.word	.LC86
 2997 0890 1C070000 		.word	.LC136
 2998 0894 24010000 		.word	.LC28
 2999 0898 40030000 		.word	.LC89
 3000 089c E4000000 		.word	.LC47
 3001 08a0 00000000 		.word	.LC49
 3002 08a4 C8060000 		.word	.LC132
 3003 08a8 24030000 		.word	.LC87
 3004 08ac 30030000 		.word	.LC88
 3005              	.L654:
 3006 08b0 E368     		ldr	r3, [r4, #12]
 3007 08b2 93F8D130 		ldrb	r3, [r3, #209]	@ zero_extendqisi2
 3008 08b6 0022     		movs	r2, #0
 3009 08b8 002B     		cmp	r3, #0
 3010 08ba 00F03782 		beq	.L531
 3011 08be 0023     		movs	r3, #0
 3012              	.L471:
 3013 08c0 C049     		ldr	r1, .L677
 3014 08c2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3015 08c6 E368     		ldr	r3, [r4, #12]
 3016 08c8 0B98     		ldr	r0, [sp, #44]
 3017 08ca 93F8D130 		ldrb	r3, [r3, #209]	@ zero_extendqisi2
 3018 08ce 0022     		movs	r2, #0
 3019 08d0 002B     		cmp	r3, #0
 3020 08d2 00F05983 		beq	.L532
 3021 08d6 0023     		movs	r3, #0
ARM GAS  /tmp/ccgYgJck.s 			page 54


 3022              	.L472:
 3023 08d8 BB49     		ldr	r1, .L677+4
 3024 08da FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3025 08de 0025     		movs	r5, #0
 3026 08e0 2F46     		mov	r7, r5
 3027 08e2 0126     		movs	r6, #1
 3028              	.L474:
 3029 08e4 3946     		mov	r1, r7
 3030 08e6 2068     		ldr	r0, [r4]
 3031 08e8 FFF7FEFF 		bl	_ZNK8Platform17IsFanControllableEj
 3032 08ec 10B1     		cbz	r0, .L473
 3033 08ee 06FA07F3 		lsl	r3, r6, r7
 3034 08f2 1D43     		orrs	r5, r5, r3
 3035              	.L473:
 3036 08f4 0137     		adds	r7, r7, #1
 3037 08f6 092F     		cmp	r7, #9
 3038 08f8 F4D1     		bne	.L474
 3039 08fa 2A46     		mov	r2, r5
 3040 08fc B349     		ldr	r1, .L677+8
 3041 08fe 0B98     		ldr	r0, [sp, #44]
 3042 0900 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3043 0904 E068     		ldr	r0, [r4, #12]
 3044 0906 0B9D     		ldr	r5, [sp, #44]
 3045 0908 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEv
 3046 090c 10EE100A 		vmov	r0, s0
 3047 0910 FFF7FEFF 		bl	__aeabi_f2d
 3048 0914 0B46     		mov	r3, r1
 3049 0916 0246     		mov	r2, r0
 3050 0918 AD49     		ldr	r1, .L677+12
 3051 091a 2846     		mov	r0, r5
 3052 091c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3053 0920 2369     		ldr	r3, [r4, #16]
 3054 0922 4FF00008 		mov	r8, #0
 3055 0926 D3F89862 		ldr	r6, [r3, #664]
 3056 092a 4546     		mov	r5, r8
 3057 092c 0127     		movs	r7, #1
 3058              	.L477:
 3059 092e 2368     		ldr	r3, [r4]
 3060 0930 4645     		cmp	r6, r8
 3061 0932 4146     		mov	r1, r8
 3062 0934 1846     		mov	r0, r3
 3063 0936 40F2DB82 		bls	.L475
 3064 093a FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 3065 093e 0138     		subs	r0, r0, #1
 3066 0940 0128     		cmp	r0, #1
 3067 0942 40F2DA82 		bls	.L642
 3068              	.L476:
 3069 0946 08F10108 		add	r8, r8, #1
 3070 094a B8F10C0F 		cmp	r8, #12
 3071 094e EED1     		bne	.L477
 3072 0950 2A46     		mov	r2, r5
 3073 0952 A049     		ldr	r1, .L677+16
 3074 0954 0B98     		ldr	r0, [sp, #44]
 3075 0956 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3076 095a A368     		ldr	r3, [r4, #8]
 3077 095c 0B9D     		ldr	r5, [sp, #44]
 3078 095e D3F8580A 		ldr	r0, [r3, #2648]
ARM GAS  /tmp/ccgYgJck.s 			page 55


 3079 0962 0368     		ldr	r3, [r0]
 3080 0964 0121     		movs	r1, #1
 3081 0966 1B68     		ldr	r3, [r3]
 3082 0968 9847     		blx	r3
 3083 096a 2269     		ldr	r2, [r4, #16]
 3084 096c 069B     		ldr	r3, [sp, #24]
 3085 096e 0093     		str	r3, [sp]
 3086 0970 02F25A42 		addw	r2, r2, #1114
 3087 0974 0346     		mov	r3, r0
 3088 0976 0192     		str	r2, [sp, #4]
 3089 0978 2846     		mov	r0, r5
 3090 097a 974A     		ldr	r2, .L677+20
 3091 097c 9749     		ldr	r1, .L677+24
 3092 097e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3093 0982 2368     		ldr	r3, [r4]
 3094 0984 D3F8B439 		ldr	r3, [r3, #2484]
 3095 0988 93F87E24 		ldrb	r2, [r3, #1150]	@ zero_extendqisi2
 3096 098c 93F83E32 		ldrb	r3, [r3, #574]	@ zero_extendqisi2
 3097 0990 0AB1     		cbz	r2, .L478
 3098 0992 43F00203 		orr	r3, r3, #2
 3099              	.L478:
 3100 0996 0222     		movs	r2, #2
 3101 0998 9149     		ldr	r1, .L677+28
 3102 099a 0B98     		ldr	r0, [sp, #44]
 3103 099c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3104 09a0 9049     		ldr	r1, .L677+32
 3105 09a2 0B98     		ldr	r0, [sp, #44]
 3106 09a4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3107 09a8 0126     		movs	r6, #1
 3108 09aa 0023     		movs	r3, #0
 3109 09ac CDE90063 		strd	r6, r3, [sp]
 3110 09b0 2822     		movs	r2, #40
 3111 09b2 04F16501 		add	r1, r4, #101
 3112 09b6 0B98     		ldr	r0, [sp, #44]
 3113 09b8 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 3114 09bc 2068     		ldr	r0, [r4]
 3115 09be 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 3116 09c2 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 3117 09c6 C568     		ldr	r5, [r0, #12]	@ float
 3118 09c8 0268     		ldr	r2, [r0]
 3119 09ca 8749     		ldr	r1, .L677+36
 3120 09cc 0B98     		ldr	r0, [sp, #44]
 3121 09ce FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3122 09d2 2846     		mov	r0, r5	@ float
 3123 09d4 FFF7FEFF 		bl	__aeabi_f2d
 3124 09d8 0246     		mov	r2, r0
 3125 09da 0B46     		mov	r3, r1
 3126 09dc 0B98     		ldr	r0, [sp, #44]
 3127 09de 8349     		ldr	r1, .L677+40
 3128 09e0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3129 09e4 2368     		ldr	r3, [r4]
 3130 09e6 8249     		ldr	r1, .L677+44
 3131 09e8 93F89420 		ldrb	r2, [r3, #148]	@ zero_extendqisi2
 3132 09ec 0B98     		ldr	r0, [sp, #44]
 3133 09ee FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3134 09f2 8049     		ldr	r1, .L677+48
 3135 09f4 0B98     		ldr	r0, [sp, #44]
ARM GAS  /tmp/ccgYgJck.s 			page 56


 3136 09f6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3137 09fa 0999     		ldr	r1, [sp, #36]
 3138 09fc 0498     		ldr	r0, [sp, #16]
 3139 09fe 4FF0FF32 		mov	r2, #-1
 3140 0a02 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3141 0a06 E56A     		ldr	r5, [r4, #44]
 3142 0a08 002D     		cmp	r5, #0
 3143 0a0a 00F01C82 		beq	.L479
 3144 0a0e DFF810B2 		ldr	fp, .L677+92
 3145 0a12 0994     		str	r4, [sp, #36]
 3146 0a14 B246     		mov	r10, r6
 3147              	.L499:
 3148 0a16 D5F89C20 		ldr	r2, [r5, #156]
 3149 0a1a 0B98     		ldr	r0, [sp, #44]
 3150 0a1c 7649     		ldr	r1, .L677+52
 3151 0a1e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3152 0a22 AE68     		ldr	r6, [r5, #8]
 3153 0a24 002E     		cmp	r6, #0
 3154 0a26 00F06182 		beq	.L643
 3155 0a2a 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 3156 0a2c 0B98     		ldr	r0, [sp, #44]
 3157 0a2e 002B     		cmp	r3, #0
 3158 0a30 40F04C82 		bne	.L657
 3159              	.L481:
 3160 0a34 7149     		ldr	r1, .L677+56
 3161 0a36 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3162 0a3a D5F89830 		ldr	r3, [r5, #152]
 3163 0a3e 05F1B806 		add	r6, r5, #184
 3164 0a42 0024     		movs	r4, #0
 3165              	.L482:
 3166 0a44 0B9A     		ldr	r2, [sp, #44]
 3167 0a46 9C42     		cmp	r4, r3
 3168 0a48 5946     		mov	r1, fp
 3169 0a4a 1046     		mov	r0, r2
 3170 0a4c 04F10104 		add	r4, r4, #1
 3171 0a50 14D2     		bcs	.L483
 3172              	.L658:
 3173 0a52 16F9012F 		ldrsb	r2, [r6, #1]!
 3174 0a56 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3175 0a5a D5F89830 		ldr	r3, [r5, #152]
 3176 0a5e 9C42     		cmp	r4, r3
 3177 0a60 F0D2     		bcs	.L482
 3178 0a62 6749     		ldr	r1, .L677+60
 3179 0a64 0B98     		ldr	r0, [sp, #44]
 3180 0a66 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3181 0a6a D5F89830 		ldr	r3, [r5, #152]
 3182 0a6e 0B9A     		ldr	r2, [sp, #44]
 3183 0a70 9C42     		cmp	r4, r3
 3184 0a72 5946     		mov	r1, fp
 3185 0a74 1046     		mov	r0, r2
 3186 0a76 04F10104 		add	r4, r4, #1
 3187 0a7a EAD3     		bcc	.L658
 3188              	.L483:
 3189 0a7c 6149     		ldr	r1, .L677+64
 3190 0a7e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3191 0a82 D5F89430 		ldr	r3, [r5, #148]
 3192 0a86 05F1AF06 		add	r6, r5, #175
ARM GAS  /tmp/ccgYgJck.s 			page 57


 3193 0a8a 0024     		movs	r4, #0
 3194              	.L485:
 3195 0a8c 0B9A     		ldr	r2, [sp, #44]
 3196 0a8e 9C42     		cmp	r4, r3
 3197 0a90 5946     		mov	r1, fp
 3198 0a92 1046     		mov	r0, r2
 3199 0a94 04F10104 		add	r4, r4, #1
 3200 0a98 14D2     		bcs	.L486
 3201              	.L659:
 3202 0a9a 16F8012F 		ldrb	r2, [r6, #1]!	@ zero_extendqisi2
 3203 0a9e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3204 0aa2 D5F89430 		ldr	r3, [r5, #148]
 3205 0aa6 9C42     		cmp	r4, r3
 3206 0aa8 F0D2     		bcs	.L485
 3207 0aaa 5549     		ldr	r1, .L677+60
 3208 0aac 0B98     		ldr	r0, [sp, #44]
 3209 0aae FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3210 0ab2 D5F89430 		ldr	r3, [r5, #148]
 3211 0ab6 0B9A     		ldr	r2, [sp, #44]
 3212 0ab8 9C42     		cmp	r4, r3
 3213 0aba 5946     		mov	r1, fp
 3214 0abc 1046     		mov	r0, r2
 3215 0abe 04F10104 		add	r4, r4, #1
 3216 0ac2 EAD3     		bcc	.L659
 3217              	.L486:
 3218 0ac4 5049     		ldr	r1, .L677+68
 3219 0ac6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3220 0aca 0024     		movs	r4, #0
 3221 0acc 0B98     		ldr	r0, [sp, #44]
 3222 0ace 0599     		ldr	r1, [sp, #20]
 3223 0ad0 09E0     		b	.L490
 3224              	.L489:
 3225 0ad2 4E49     		ldr	r1, .L677+72
 3226 0ad4 2246     		mov	r2, r4
 3227 0ad6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3228 0ada 0B98     		ldr	r0, [sp, #44]
 3229 0adc 0021     		movs	r1, #0
 3230              	.L488:
 3231 0ade 0134     		adds	r4, r4, #1
 3232 0ae0 092C     		cmp	r4, #9
 3233 0ae2 00F04781 		beq	.L660
 3234              	.L490:
 3235 0ae6 D5F8A030 		ldr	r3, [r5, #160]
 3236 0aea 0AFA04F2 		lsl	r2, r10, r4
 3237 0aee 1A42     		tst	r2, r3
 3238 0af0 F5D0     		beq	.L488
 3239 0af2 0029     		cmp	r1, #0
 3240 0af4 EDD1     		bne	.L489
 3241 0af6 4249     		ldr	r1, .L677+60
 3242 0af8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3243 0afc 0B98     		ldr	r0, [sp, #44]
 3244 0afe E8E7     		b	.L489
 3245              	.L653:
 3246 0b00 2568     		ldr	r5, [r4]
 3247 0b02 D5F8201A 		ldr	r1, [r5, #2592]
 3248 0b06 D5F8402A 		ldr	r2, [r5, #2624]
 3249 0b0a D5F8603A 		ldr	r3, [r5, #2656]
ARM GAS  /tmp/ccgYgJck.s 			page 58


 3250 0b0e 0131     		adds	r1, r1, #1
 3251 0b10 4FF0FF3B 		mov	fp, #-1
 3252 0b14 18BF     		it	ne
 3253 0b16 4FF0000B 		movne	fp, #0
 3254 0b1a 0132     		adds	r2, r2, #1
 3255 0b1c 18BF     		it	ne
 3256 0b1e 4FF0010B 		movne	fp, #1
 3257 0b22 0133     		adds	r3, r3, #1
 3258 0b24 D5F8803A 		ldr	r3, [r5, #2688]
 3259 0b28 00F00F81 		beq	.L465
 3260 0b2c 0133     		adds	r3, r3, #1
 3261 0b2e 0CBF     		ite	eq
 3262 0b30 4FF0020B 		moveq	fp, #2
 3263 0b34 4FF0030B 		movne	fp, #3
 3264              	.L466:
 3265 0b38 3549     		ldr	r1, .L677+76
 3266 0b3a 0BF1010B 		add	fp, fp, #1
 3267 0b3e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3268 0b42 40F60429 		movw	r9, #2564
 3269 0b46 4FF00008 		mov	r8, #0
 3270 0b4a A246     		mov	r10, r4
 3271 0b4c 0FE0     		b	.L467
 3272              	.L468:
 3273 0b4e 0B98     		ldr	r0, [sp, #44]
 3274 0b50 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3275              	.L469:
 3276 0b54 08F10108 		add	r8, r8, #1
 3277 0b58 0B9B     		ldr	r3, [sp, #44]
 3278 0b5a C345     		cmp	fp, r8
 3279 0b5c 4FF02C01 		mov	r1, #44
 3280 0b60 1846     		mov	r0, r3
 3281 0b62 00F01382 		beq	.L661
 3282 0b66 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3283 0b6a 09F12009 		add	r9, r9, #32
 3284              	.L467:
 3285 0b6e DAF80050 		ldr	r5, [r10]
 3286 0b72 4D44     		add	r5, r5, r9
 3287 0b74 2869     		ldr	r0, [r5, #16]	@ float
 3288 0b76 FFF7FEFF 		bl	__aeabi_f2d
 3289 0b7a 0646     		mov	r6, r0
 3290 0b7c 6869     		ldr	r0, [r5, #20]	@ float
 3291 0b7e 0B9C     		ldr	r4, [sp, #44]
 3292 0b80 0F46     		mov	r7, r1
 3293 0b82 FFF7FEFF 		bl	__aeabi_f2d
 3294 0b86 3B46     		mov	r3, r7
 3295 0b88 CDE90001 		strd	r0, [sp]
 3296 0b8c 3246     		mov	r2, r6
 3297 0b8e 2149     		ldr	r1, .L677+80
 3298 0b90 2046     		mov	r0, r4
 3299 0b92 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3300 0b96 089B     		ldr	r3, [sp, #32]
 3301 0b98 022B     		cmp	r3, #2
 3302 0b9a 4FF07D01 		mov	r1, #125
 3303 0b9e D6D1     		bne	.L468
 3304 0ba0 EA69     		ldr	r2, [r5, #28]
 3305 0ba2 0B98     		ldr	r0, [sp, #44]
 3306 0ba4 1C49     		ldr	r1, .L677+84
ARM GAS  /tmp/ccgYgJck.s 			page 59


 3307 0ba6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3308 0baa D3E7     		b	.L469
 3309              	.L645:
 3310 0bac 94F89850 		ldrb	r5, [r4, #152]	@ zero_extendqisi2
 3311 0bb0 FFF7DCBA 		b	.L406
 3312              	.L648:
 3313 0bb4 2A46     		mov	r2, r5
 3314 0bb6 1949     		ldr	r1, .L677+88
 3315 0bb8 0B98     		ldr	r0, [sp, #44]
 3316 0bba FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3317 0bbe FFF794BB 		b	.L427
 3318              	.L678:
 3319 0bc2 00BF     		.align	2
 3320              	.L677:
 3321 0bc4 BC030000 		.word	.LC95
 3322 0bc8 D4030000 		.word	.LC96
 3323 0bcc EC030000 		.word	.LC97
 3324 0bd0 04040000 		.word	.LC98
 3325 0bd4 18040000 		.word	.LC99
 3326 0bd8 24000000 		.word	.LC4
 3327 0bdc 28040000 		.word	.LC100
 3328 0be0 68040000 		.word	.LC101
 3329 0be4 8C040000 		.word	.LC102
 3330 0be8 98040000 		.word	.LC103
 3331 0bec B4040000 		.word	.LC104
 3332 0bf0 C4040000 		.word	.LC105
 3333 0bf4 D0040000 		.word	.LC106
 3334 0bf8 DC040000 		.word	.LC107
 3335 0bfc EC040000 		.word	.LC108
 3336 0c00 78000000 		.word	.LC60
 3337 0c04 00050000 		.word	.LC110
 3338 0c08 10050000 		.word	.LC111
 3339 0c0c 20050000 		.word	.LC112
 3340 0c10 80030000 		.word	.LC92
 3341 0c14 90030000 		.word	.LC93
 3342 0c18 B0030000 		.word	.LC94
 3343 0c1c B0010000 		.word	.LC73
 3344 0c20 FC040000 		.word	.LC109
 3345              	.L425:
 3346 0c24 2A46     		mov	r2, r5
 3347 0c26 0D9B     		ldr	r3, [sp, #52]
 3348 0c28 B949     		ldr	r1, .L679
 3349 0c2a 0B98     		ldr	r0, [sp, #44]
 3350 0c2c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3351 0c30 FFF75BBB 		b	.L427
 3352              	.L646:
 3353 0c34 0026     		movs	r6, #0
 3354              	.L509:
 3355 0c36 D4F8A433 		ldr	r3, [r4, #932]
 3356 0c3a 002B     		cmp	r3, #0
 3357 0c3c 40F0AD81 		bne	.L662
 3358 0c40 9FEDB48A 		vldr.32	s16, .L679+4
 3359 0c44 002E     		cmp	r6, #0
 3360 0c46 00F0C981 		beq	.L663
 3361              	.L410:
 3362 0c4a B349     		ldr	r1, .L679+8
 3363 0c4c 0B98     		ldr	r0, [sp, #44]
ARM GAS  /tmp/ccgYgJck.s 			page 60


 3364 0c4e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3365 0c52 D4E92432 		ldrd	r3, r2, [r4, #144]
 3366 0c56 B149     		ldr	r1, .L679+12
 3367 0c58 0B98     		ldr	r0, [sp, #44]
 3368 0c5a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3369 0c5e 002D     		cmp	r5, #0
 3370 0c60 79D1     		bne	.L664
 3371              	.L512:
 3372 0c62 0023     		movs	r3, #0
 3373 0c64 C4E92433 		strd	r3, r3, [r4, #144]
 3374 0c68 0B98     		ldr	r0, [sp, #44]
 3375 0c6a 002D     		cmp	r5, #0
 3376 0c6c 7FF498AA 		bne	.L414
 3377              	.L513:
 3378 0c70 94F89931 		ldrb	r3, [r4, #409]	@ zero_extendqisi2
 3379              	.L415:
 3380 0c74 7BB3     		cbz	r3, .L417
 3381 0c76 0025     		movs	r5, #0
 3382 0c78 A949     		ldr	r1, .L679+16
 3383 0c7a 0126     		movs	r6, #1
 3384 0c7c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3385 0c80 2B46     		mov	r3, r5
 3386 0c82 4FF48072 		mov	r2, #256
 3387 0c86 0195     		str	r5, [sp, #4]
 3388 0c88 04F5CD71 		add	r1, r4, #410
 3389 0c8c 0B98     		ldr	r0, [sp, #44]
 3390 0c8e 0096     		str	r6, [sp]
 3391 0c90 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 3392 0c94 A349     		ldr	r1, .L679+20
 3393 0c96 0B98     		ldr	r0, [sp, #44]
 3394 0c98 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3395 0c9c 2B46     		mov	r3, r5
 3396 0c9e 4FF48072 		mov	r2, #256
 3397 0ca2 CDE90065 		strd	r6, r5, [sp]
 3398 0ca6 04F29B21 		addw	r1, r4, #667
 3399 0caa 0B98     		ldr	r0, [sp, #44]
 3400 0cac FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 3401 0cb0 D4F8AC33 		ldr	r3, [r4, #940]
 3402 0cb4 0293     		str	r3, [sp, #8]
 3403 0cb6 18EE100A 		vmov	r0, s16
 3404 0cba FFF7FEFF 		bl	__aeabi_f2d
 3405 0cbe 0B9D     		ldr	r5, [sp, #44]
 3406 0cc0 D4F8A033 		ldr	r3, [r4, #928]
 3407 0cc4 D4F89C23 		ldr	r2, [r4, #924]
 3408 0cc8 CDE90001 		strd	r0, [sp]
 3409 0ccc 2846     		mov	r0, r5
 3410 0cce 9649     		ldr	r1, .L679+24
 3411 0cd0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3412 0cd4 0B98     		ldr	r0, [sp, #44]
 3413              	.L417:
 3414 0cd6 9549     		ldr	r1, .L679+28
 3415 0cd8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3416 0cdc FFF77ABA 		b	.L413
 3417              	.L647:
 3418 0ce0 6068     		ldr	r0, [r4, #4]
 3419 0ce2 0B9D     		ldr	r5, [sp, #44]
 3420 0ce4 FFF7FEFF 		bl	_ZN7Network15GetHttpReplySeqEv
ARM GAS  /tmp/ccgYgJck.s 			page 61


 3421 0ce8 9149     		ldr	r1, .L679+32
 3422 0cea 0246     		mov	r2, r0
 3423 0cec 2846     		mov	r0, r5
 3424 0cee FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3425 0cf2 FFF7DFBA 		b	.L423
 3426              	.L652:
 3427 0cf6 0B9D     		ldr	r5, [sp, #44]
 3428 0cf8 FFF7FEFF 		bl	_ZNK7Scanner18GetStatusCharacterEv
 3429 0cfc 8D49     		ldr	r1, .L679+36
 3430 0cfe 0246     		mov	r2, r0
 3431 0d00 2846     		mov	r0, r5
 3432 0d02 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3433 0d06 A069     		ldr	r0, [r4, #24]
 3434 0d08 0B9D     		ldr	r5, [sp, #44]
 3435 0d0a FFF7FEFF 		bl	_ZNK7Scanner11GetProgressEv
 3436 0d0e 10EE100A 		vmov	r0, s0
 3437 0d12 FFF7FEFF 		bl	__aeabi_f2d
 3438 0d16 0246     		mov	r2, r0
 3439 0d18 0B46     		mov	r3, r1
 3440 0d1a 2846     		mov	r0, r5
 3441 0d1c 8649     		ldr	r1, .L679+40
 3442 0d1e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3443 0d22 7EE5     		b	.L462
 3444              	.L524:
 3445 0d24 4FF0FF32 		mov	r2, #-1
 3446 0d28 FFF711BA 		b	.L404
 3447              	.L531:
 3448 0d2c 834B     		ldr	r3, .L679+44
 3449 0d2e C7E5     		b	.L471
 3450              	.L408:
 3451 0d30 4FF0FF32 		mov	r2, #-1
 3452 0d34 0498     		ldr	r0, [sp, #16]
 3453 0d36 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3454 0d3a 94F89961 		ldrb	r6, [r4, #409]	@ zero_extendqisi2
 3455 0d3e 002E     		cmp	r6, #0
 3456 0d40 7FF479AF 		bne	.L509
 3457 0d44 9FED738A 		vldr.32	s16, .L679+4
 3458 0d48 7FE7     		b	.L410
 3459              	.L465:
 3460 0d4a 0133     		adds	r3, r3, #1
 3461 0d4c 00F05382 		beq	.L665
 3462 0d50 4FF0030B 		mov	fp, #3
 3463 0d54 F0E6     		b	.L466
 3464              	.L664:
 3465 0d56 7A49     		ldr	r1, .L679+48
 3466 0d58 0B98     		ldr	r0, [sp, #44]
 3467 0d5a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3468 0d5e 80E7     		b	.L512
 3469              	.L416:
 3470 0d60 7749     		ldr	r1, .L679+48
 3471 0d62 0B98     		ldr	r0, [sp, #44]
 3472 0d64 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3473 0d68 94F89931 		ldrb	r3, [r4, #409]	@ zero_extendqisi2
 3474 0d6c 0B98     		ldr	r0, [sp, #44]
 3475 0d6e 84F89850 		strb	r5, [r4, #152]
 3476 0d72 7FE7     		b	.L415
 3477              	.L660:
ARM GAS  /tmp/ccgYgJck.s 			page 62


 3478 0d74 7349     		ldr	r1, .L679+52
 3479 0d76 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3480 0d7a 0024     		movs	r4, #0
 3481 0d7c 0B98     		ldr	r0, [sp, #44]
 3482 0d7e 0599     		ldr	r1, [sp, #20]
 3483 0d80 08E0     		b	.L493
 3484              	.L492:
 3485 0d82 7149     		ldr	r1, .L679+56
 3486 0d84 2246     		mov	r2, r4
 3487 0d86 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3488 0d8a 0B98     		ldr	r0, [sp, #44]
 3489 0d8c 0021     		movs	r1, #0
 3490              	.L491:
 3491 0d8e 0134     		adds	r4, r4, #1
 3492 0d90 092C     		cmp	r4, #9
 3493 0d92 0CD0     		beq	.L666
 3494              	.L493:
 3495 0d94 D5F8A430 		ldr	r3, [r5, #164]
 3496 0d98 0AFA04F2 		lsl	r2, r10, r4
 3497 0d9c 1A42     		tst	r2, r3
 3498 0d9e F6D0     		beq	.L491
 3499 0da0 0029     		cmp	r1, #0
 3500 0da2 EED1     		bne	.L492
 3501 0da4 6649     		ldr	r1, .L679+48
 3502 0da6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3503 0daa 0B98     		ldr	r0, [sp, #44]
 3504 0dac E9E7     		b	.L492
 3505              	.L666:
 3506 0dae 6749     		ldr	r1, .L679+60
 3507 0db0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3508 0db4 D5F8AC20 		ldr	r2, [r5, #172]
 3509 0db8 6549     		ldr	r1, .L679+64
 3510 0dba 0B98     		ldr	r0, [sp, #44]
 3511 0dbc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3512 0dc0 6C68     		ldr	r4, [r5, #4]
 3513 0dc2 8CB1     		cbz	r4, .L494
 3514 0dc4 6349     		ldr	r1, .L679+68
 3515 0dc6 0B98     		ldr	r0, [sp, #44]
 3516 0dc8 0834     		adds	r4, r4, #8
 3517 0dca FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3518 0dce 2046     		mov	r0, r4
 3519 0dd0 FFF7FEFF 		bl	strlen
 3520 0dd4 0B9E     		ldr	r6, [sp, #44]
 3521 0dd6 CDF800A0 		str	r10, [sp]
 3522 0dda 0023     		movs	r3, #0
 3523 0ddc 0246     		mov	r2, r0
 3524 0dde 2146     		mov	r1, r4
 3525 0de0 3046     		mov	r0, r6
 3526 0de2 0193     		str	r3, [sp, #4]
 3527 0de4 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 3528              	.L494:
 3529 0de8 5B49     		ldr	r1, .L679+72
 3530 0dea 0B98     		ldr	r0, [sp, #44]
 3531 0dec FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3532 0df0 069B     		ldr	r3, [sp, #24]
 3533 0df2 CBB1     		cbz	r3, .L495
 3534 0df4 DFF88091 		ldr	r9, .L679+104
ARM GAS  /tmp/ccgYgJck.s 			page 63


 3535 0df8 0895     		str	r5, [sp, #32]
 3536 0dfa 05F10C06 		add	r6, r5, #12
 3537 0dfe 0024     		movs	r4, #0
 3538 0e00 9846     		mov	r8, r3
 3539              	.L497:
 3540 0e02 56F8040B 		ldr	r0, [r6], #4	@ float
 3541 0e06 554F     		ldr	r7, .L679+76
 3542 0e08 0B9D     		ldr	r5, [sp, #44]
 3543 0e0a FFF7FEFF 		bl	__aeabi_f2d
 3544 0e0e 002C     		cmp	r4, #0
 3545 0e10 18BF     		it	ne
 3546 0e12 4F46     		movne	r7, r9
 3547 0e14 0246     		mov	r2, r0
 3548 0e16 0B46     		mov	r3, r1
 3549 0e18 2846     		mov	r0, r5
 3550 0e1a 3946     		mov	r1, r7
 3551 0e1c 0134     		adds	r4, r4, #1
 3552 0e1e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3553 0e22 4445     		cmp	r4, r8
 3554 0e24 EDD1     		bne	.L497
 3555 0e26 089D     		ldr	r5, [sp, #32]
 3556              	.L495:
 3557 0e28 2968     		ldr	r1, [r5]
 3558 0e2a 4D4A     		ldr	r2, .L679+80
 3559 0e2c 4D4B     		ldr	r3, .L679+84
 3560 0e2e 0B98     		ldr	r0, [sp, #44]
 3561 0e30 0029     		cmp	r1, #0
 3562 0e32 0CBF     		ite	eq
 3563 0e34 1146     		moveq	r1, r2
 3564 0e36 1946     		movne	r1, r3
 3565 0e38 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3566 0e3c 2D68     		ldr	r5, [r5]
 3567 0e3e 002D     		cmp	r5, #0
 3568 0e40 7FF4E9AD 		bne	.L499
 3569 0e44 099C     		ldr	r4, [sp, #36]
 3570              	.L479:
 3571 0e46 4849     		ldr	r1, .L679+88
 3572 0e48 0B98     		ldr	r0, [sp, #44]
 3573 0e4a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3574 0e4e DDF81080 		ldr	r8, [sp, #16]
 3575 0e52 4046     		mov	r0, r8
 3576 0e54 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3577 0e58 4346     		mov	r3, r8
 3578 0e5a 0DAA     		add	r2, sp, #52
 3579 0e5c 0CA9     		add	r1, sp, #48
 3580 0e5e 2068     		ldr	r0, [r4]
 3581 0e60 FFF7FEFF 		bl	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 3582 0e64 0C98     		ldr	r0, [sp, #48]	@ float
 3583 0e66 FFF7FEFF 		bl	__aeabi_f2d
 3584 0e6a 0646     		mov	r6, r0
 3585 0e6c 0E98     		ldr	r0, [sp, #56]	@ float
 3586 0e6e 0B9D     		ldr	r5, [sp, #44]
 3587 0e70 0F46     		mov	r7, r1
 3588 0e72 FFF7FEFF 		bl	__aeabi_f2d
 3589 0e76 CDE90201 		strd	r0, [sp, #8]
 3590 0e7a 0D98     		ldr	r0, [sp, #52]	@ float
 3591 0e7c FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccgYgJck.s 			page 64


 3592 0e80 3246     		mov	r2, r6
 3593 0e82 3B46     		mov	r3, r7
 3594 0e84 CDE90001 		strd	r0, [sp]
 3595 0e88 2846     		mov	r0, r5
 3596 0e8a 3849     		ldr	r1, .L679+92
 3597 0e8c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3598 0e90 4346     		mov	r3, r8
 3599 0e92 0DAA     		add	r2, sp, #52
 3600 0e94 0CA9     		add	r1, sp, #48
 3601 0e96 2068     		ldr	r0, [r4]
 3602 0e98 FFF7FEFF 		bl	_ZNK8Platform16GetPowerVoltagesERfS0_S0_
 3603 0e9c 0C98     		ldr	r0, [sp, #48]	@ float
 3604 0e9e FFF7FEFF 		bl	__aeabi_f2d
 3605 0ea2 0646     		mov	r6, r0
 3606 0ea4 0E98     		ldr	r0, [sp, #56]	@ float
 3607 0ea6 0B9D     		ldr	r5, [sp, #44]
 3608 0ea8 0F46     		mov	r7, r1
 3609 0eaa FFF7FEFF 		bl	__aeabi_f2d
 3610 0eae CDE90201 		strd	r0, [sp, #8]
 3611 0eb2 0D98     		ldr	r0, [sp, #52]	@ float
 3612 0eb4 FFF7FEFF 		bl	__aeabi_f2d
 3613 0eb8 3246     		mov	r2, r6
 3614 0eba CDE90001 		strd	r0, [sp]
 3615 0ebe 3B46     		mov	r3, r7
 3616 0ec0 2846     		mov	r0, r5
 3617 0ec2 2B49     		ldr	r1, .L679+96
 3618 0ec4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3619 0ec8 0B98     		ldr	r0, [sp, #44]
 3620 0eca B8E4     		b	.L500
 3621              	.L657:
 3622 0ecc 2949     		ldr	r1, .L679+100
 3623 0ece FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3624 0ed2 3046     		mov	r0, r6
 3625 0ed4 FFF7FEFF 		bl	strlen
 3626 0ed8 0B9C     		ldr	r4, [sp, #44]
 3627 0eda CDF800A0 		str	r10, [sp]
 3628 0ede 0023     		movs	r3, #0
 3629 0ee0 0246     		mov	r2, r0
 3630 0ee2 3146     		mov	r1, r6
 3631 0ee4 2046     		mov	r0, r4
 3632 0ee6 0193     		str	r3, [sp, #4]
 3633 0ee8 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 3634              	.L643:
 3635 0eec 0B98     		ldr	r0, [sp, #44]
 3636 0eee A1E5     		b	.L481
 3637              	.L475:
 3638 0ef0 FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 3639 0ef4 0028     		cmp	r0, #0
 3640 0ef6 3FF426AD 		beq	.L476
 3641              	.L642:
 3642 0efa 07FA08F3 		lsl	r3, r7, r8
 3643 0efe 1D43     		orrs	r5, r5, r3
 3644 0f00 21E5     		b	.L476
 3645              	.L401:
 3646 0f02 5B21     		movs	r1, #91
 3647 0f04 0B98     		ldr	r0, [sp, #44]
 3648 0f06 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
ARM GAS  /tmp/ccgYgJck.s 			page 65


 3649 0f0a FFF719B9 		b	.L403
 3650              	.L680:
 3651 0f0e 00BF     		.align	2
 3652              	.L679:
 3653 0f10 5C010000 		.word	.LC71
 3654 0f14 00000000 		.word	0
 3655 0f18 DC060000 		.word	.LC133
 3656 0f1c E8060000 		.word	.LC134
 3657 0f20 88000000 		.word	.LC62
 3658 0f24 9C000000 		.word	.LC63
 3659 0f28 A8000000 		.word	.LC64
 3660 0f2c E4000000 		.word	.LC47
 3661 0f30 40010000 		.word	.LC69
 3662 0f34 50030000 		.word	.LC90
 3663 0f38 6C030000 		.word	.LC91
 3664 0f3c 00006440 		.word	1080295424
 3665 0f40 78000000 		.word	.LC60
 3666 0f44 24050000 		.word	.LC113
 3667 0f48 20050000 		.word	.LC112
 3668 0f4c 28050000 		.word	.LC114
 3669 0f50 2C050000 		.word	.LC115
 3670 0f54 38050000 		.word	.LC116
 3671 0f58 48050000 		.word	.LC117
 3672 0f5c 08000000 		.word	.LC51
 3673 0f60 24010000 		.word	.LC28
 3674 0f64 18000000 		.word	.LC53
 3675 0f68 04000000 		.word	.LC50
 3676 0f6c 58050000 		.word	.LC118
 3677 0f70 88050000 		.word	.LC119
 3678 0f74 8C040000 		.word	.LC102
 3679 0f78 10000000 		.word	.LC52
 3680              	.L523:
 3681 0f7c 0598     		ldr	r0, [sp, #20]
 3682 0f7e 1BB0     		add	sp, sp, #108
 3683              		@ sp needed
 3684 0f80 BDEC028B 		vldm	sp!, {d8}
 3685 0f84 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3686              	.L532:
 3687 0f88 A64B     		ldr	r3, .L681
 3688 0f8a A5E4     		b	.L472
 3689              	.L661:
 3690 0f8c 1846     		mov	r0, r3
 3691 0f8e 5D21     		movs	r1, #93
 3692 0f90 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3693 0f94 5446     		mov	r4, r10
 3694 0f96 0B98     		ldr	r0, [sp, #44]
 3695 0f98 4AE4     		b	.L463
 3696              	.L662:
 3697 0f9a D4EDEA7A 		vldr.32	s15, [r4, #936]	@ int
 3698 0f9e DFEDA28A 		vldr.32	s17, .L681+4
 3699 0fa2 F8EE677A 		vcvt.f32.u32	s15, s15
 3700 0fa6 87EEA88A 		vdiv.f32	s16, s15, s17
 3701 0faa FFF7FEFF 		bl	millis
 3702 0fae D4F8A433 		ldr	r3, [r4, #932]
 3703 0fb2 C01A     		subs	r0, r0, r3
 3704 0fb4 07EE900A 		vmov	s15, r0	@ int
 3705 0fb8 F8EE677A 		vcvt.f32.u32	s15, s15
ARM GAS  /tmp/ccgYgJck.s 			page 66


 3706 0fbc 87EEA87A 		vdiv.f32	s14, s15, s17
 3707 0fc0 38EE478A 		vsub.f32	s16, s16, s14
 3708 0fc4 B5EEC08A 		vcmpe.f32	s16, #0
 3709 0fc8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3710 0fcc CCBF     		ite	gt
 3711 0fce 0123     		movgt	r3, #1
 3712 0fd0 0023     		movle	r3, #0
 3713 0fd2 84F89931 		strb	r3, [r4, #409]
 3714 0fd6 002E     		cmp	r6, #0
 3715 0fd8 7FF437AE 		bne	.L410
 3716              	.L663:
 3717 0fdc 002D     		cmp	r5, #0
 3718 0fde 7FF4DAA8 		bne	.L411
 3719 0fe2 94F89931 		ldrb	r3, [r4, #409]	@ zero_extendqisi2
 3720 0fe6 002B     		cmp	r3, #0
 3721 0fe8 3FF4F4A8 		beq	.L413
 3722 0fec 8F49     		ldr	r1, .L681+8
 3723 0fee 0B98     		ldr	r0, [sp, #44]
 3724 0ff0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3725 0ff4 0B98     		ldr	r0, [sp, #44]
 3726 0ff6 3BE6     		b	.L513
 3727              	.L395:
 3728 0ff8 8D49     		ldr	r1, .L681+12
 3729 0ffa 0B98     		ldr	r0, [sp, #44]
 3730 0ffc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3731 1000 226B     		ldr	r2, [r4, #48]
 3732 1002 A068     		ldr	r0, [r4, #8]
 3733 1004 002A     		cmp	r2, #0
 3734 1006 00F00081 		beq	.L667
 3735 100a 0EAB     		add	r3, sp, #56
 3736 100c 0493     		str	r3, [sp, #16]
 3737 100e 1946     		mov	r1, r3
 3738 1010 D2E92823 		ldrd	r2, r3, [r2, #160]
 3739 1014 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 3740 1018 8649     		ldr	r1, .L681+16
 3741 101a 0B98     		ldr	r0, [sp, #44]
 3742 101c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3743 1020 FFF769B8 		b	.L520
 3744              	.L433:
 3745 1024 0B98     		ldr	r0, [sp, #44]
 3746 1026 8449     		ldr	r1, .L681+20
 3747 1028 FFF784BA 		b	.L436
 3748              	.L419:
 3749 102c 0B98     		ldr	r0, [sp, #44]
 3750 102e 8249     		ldr	r1, .L681+20
 3751 1030 FFF72EB9 		b	.L422
 3752              	.L445:
 3753 1034 0B98     		ldr	r0, [sp, #44]
 3754 1036 8049     		ldr	r1, .L681+20
 3755 1038 FFF7E9BA 		b	.L448
 3756              	.L441:
 3757 103c 0B98     		ldr	r0, [sp, #44]
 3758 103e 7E49     		ldr	r1, .L681+20
 3759 1040 FFF7C4BA 		b	.L444
 3760              	.L437:
 3761 1044 0B98     		ldr	r0, [sp, #44]
 3762 1046 7C49     		ldr	r1, .L681+20
ARM GAS  /tmp/ccgYgJck.s 			page 67


 3763 1048 FFF79ABA 		b	.L440
 3764              	.L655:
 3765 104c E369     		ldr	r3, [r4, #28]
 3766 104e 7B49     		ldr	r1, .L681+24
 3767 1050 1A6B     		ldr	r2, [r3, #48]
 3768 1052 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3769 1056 E569     		ldr	r5, [r4, #28]
 3770 1058 0B9E     		ldr	r6, [sp, #44]
 3771 105a D5ED117A 		vldr.32	s15, [r5, #68]
 3772 105e F5EEC07A 		vcmpe.f32	s15, #0
 3773 1062 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3774 1066 00F3AA80 		bgt	.L668
 3775 106a 0022     		movs	r2, #0
 3776 106c 0023     		movs	r3, #0
 3777              	.L501:
 3778 106e 7449     		ldr	r1, .L681+28
 3779 1070 3046     		mov	r0, r6
 3780 1072 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3781 1076 7349     		ldr	r1, .L681+32
 3782 1078 0B98     		ldr	r0, [sp, #44]
 3783 107a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3784 107e 238F     		ldrh	r3, [r4, #56]
 3785 1080 002B     		cmp	r3, #0
 3786 1082 00F0BD80 		beq	.L503
 3787 1086 DFF8E881 		ldr	r8, .L681+76
 3788 108a 0025     		movs	r5, #0
 3789 108c 5B26     		movs	r6, #91
 3790              	.L504:
 3791 108e 2946     		mov	r1, r5
 3792 1090 2069     		ldr	r0, [r4, #16]
 3793 1092 0B9F     		ldr	r7, [sp, #44]
 3794 1094 FFF7FEFF 		bl	_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 3795 1098 10EE100A 		vmov	r0, s0
 3796 109c FFF7FEFF 		bl	__aeabi_f2d
 3797 10a0 3246     		mov	r2, r6
 3798 10a2 CDE90001 		strd	r0, [sp]
 3799 10a6 3846     		mov	r0, r7
 3800 10a8 4146     		mov	r1, r8
 3801 10aa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3802 10ae 238F     		ldrh	r3, [r4, #56]
 3803 10b0 0135     		adds	r5, r5, #1
 3804 10b2 AB42     		cmp	r3, r5
 3805 10b4 4FF02C06 		mov	r6, #44
 3806 10b8 E9D8     		bhi	.L504
 3807              	.L505:
 3808 10ba E369     		ldr	r3, [r4, #28]
 3809 10bc 0B9D     		ldr	r5, [sp, #44]
 3810 10be 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 3811 10c0 002B     		cmp	r3, #0
 3812 10c2 40F08A80 		bne	.L669
 3813 10c6 0022     		movs	r2, #0
 3814 10c8 0023     		movs	r3, #0
 3815              	.L506:
 3816 10ca 5F49     		ldr	r1, .L681+36
 3817 10cc 2846     		mov	r0, r5
 3818 10ce FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3819 10d2 2069     		ldr	r0, [r4, #16]
ARM GAS  /tmp/ccgYgJck.s 			page 68


 3820 10d4 0B9D     		ldr	r5, [sp, #44]
 3821 10d6 FFF7FEFF 		bl	_ZNK6GCodes15GetFilePositionEv
 3822 10da 5C49     		ldr	r1, .L681+40
 3823 10dc 0246     		mov	r2, r0
 3824 10de 2846     		mov	r0, r5
 3825 10e0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3826 10e4 E069     		ldr	r0, [r4, #28]
 3827 10e6 0B9D     		ldr	r5, [sp, #44]
 3828 10e8 FFF7FEFF 		bl	_ZNK12PrintMonitor21GetFirstLayerDurationEv
 3829 10ec 10EE100A 		vmov	r0, s0
 3830 10f0 FFF7FEFF 		bl	__aeabi_f2d
 3831 10f4 0246     		mov	r2, r0
 3832 10f6 0B46     		mov	r3, r1
 3833 10f8 2846     		mov	r0, r5
 3834 10fa 5549     		ldr	r1, .L681+44
 3835 10fc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3836 1100 E369     		ldr	r3, [r4, #28]
 3837 1102 0B9D     		ldr	r5, [sp, #44]
 3838 1104 93F89420 		ldrb	r2, [r3, #148]	@ zero_extendqisi2
 3839 1108 002A     		cmp	r2, #0
 3840 110a 55D0     		beq	.L537
 3841 110c D3F8AC00 		ldr	r0, [r3, #172]	@ float
 3842 1110 FFF7FEFF 		bl	__aeabi_f2d
 3843 1114 0246     		mov	r2, r0
 3844 1116 0B46     		mov	r3, r1
 3845              	.L507:
 3846 1118 4E49     		ldr	r1, .L681+48
 3847 111a 2846     		mov	r0, r5
 3848 111c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3849 1120 E069     		ldr	r0, [r4, #28]
 3850 1122 0B9D     		ldr	r5, [sp, #44]
 3851 1124 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 3852 1128 10EE100A 		vmov	r0, s0
 3853 112c FFF7FEFF 		bl	__aeabi_f2d
 3854 1130 0246     		mov	r2, r0
 3855 1132 0B46     		mov	r3, r1
 3856 1134 2846     		mov	r0, r5
 3857 1136 4849     		ldr	r1, .L681+52
 3858 1138 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3859 113c E069     		ldr	r0, [r4, #28]
 3860 113e 0B9D     		ldr	r5, [sp, #44]
 3861 1140 FFF7FEFF 		bl	_ZNK12PrintMonitor17GetWarmUpDurationEv
 3862 1144 10EE100A 		vmov	r0, s0
 3863 1148 FFF7FEFF 		bl	__aeabi_f2d
 3864 114c 0246     		mov	r2, r0
 3865 114e 0B46     		mov	r3, r1
 3866 1150 2846     		mov	r0, r5
 3867 1152 4249     		ldr	r1, .L681+56
 3868 1154 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3869 1158 E069     		ldr	r0, [r4, #28]
 3870 115a 0B9D     		ldr	r5, [sp, #44]
 3871 115c 0121     		movs	r1, #1
 3872 115e FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3873 1162 10EE100A 		vmov	r0, s0
 3874 1166 FFF7FEFF 		bl	__aeabi_f2d
 3875 116a 0246     		mov	r2, r0
 3876 116c 0B46     		mov	r3, r1
ARM GAS  /tmp/ccgYgJck.s 			page 69


 3877 116e 2846     		mov	r0, r5
 3878 1170 3B49     		ldr	r1, .L681+60
 3879 1172 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3880 1176 E069     		ldr	r0, [r4, #28]
 3881 1178 0B9D     		ldr	r5, [sp, #44]
 3882 117a 0021     		movs	r1, #0
 3883 117c FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3884 1180 10EE100A 		vmov	r0, s0
 3885 1184 FFF7FEFF 		bl	__aeabi_f2d
 3886 1188 0246     		mov	r2, r0
 3887 118a 0B46     		mov	r3, r1
 3888 118c 2846     		mov	r0, r5
 3889 118e 3549     		ldr	r1, .L681+64
 3890 1190 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3891 1194 E069     		ldr	r0, [r4, #28]
 3892 1196 0B9D     		ldr	r5, [sp, #44]
 3893 1198 0221     		movs	r1, #2
 3894 119a FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3895 119e 10EE100A 		vmov	r0, s0
 3896 11a2 FFF7FEFF 		bl	__aeabi_f2d
 3897 11a6 0246     		mov	r2, r0
 3898 11a8 0B46     		mov	r3, r1
 3899 11aa 2846     		mov	r0, r5
 3900 11ac 2E49     		ldr	r1, .L681+68
 3901 11ae FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3902 11b2 0B98     		ldr	r0, [sp, #44]
 3903 11b4 FFF743BB 		b	.L500
 3904              	.L537:
 3905 11b8 0022     		movs	r2, #0
 3906 11ba 0023     		movs	r3, #0
 3907 11bc ACE7     		b	.L507
 3908              	.L668:
 3909 11be 2846     		mov	r0, r5
 3910 11c0 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 3911 11c4 D5ED117A 		vldr.32	s15, [r5, #68]
 3912 11c8 70EE677A 		vsub.f32	s15, s0, s15
 3913 11cc 17EE900A 		vmov	r0, s15
 3914 11d0 FFF7FEFF 		bl	__aeabi_f2d
 3915 11d4 0246     		mov	r2, r0
 3916 11d6 0B46     		mov	r3, r1
 3917 11d8 49E7     		b	.L501
 3918              	.L669:
 3919 11da 2069     		ldr	r0, [r4, #16]
 3920 11dc FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 3921 11e0 DFED227A 		vldr.32	s15, .L681+72
 3922 11e4 60EE277A 		vmul.f32	s15, s0, s15
 3923 11e8 17EE900A 		vmov	r0, s15
 3924 11ec FFF7FEFF 		bl	__aeabi_f2d
 3925 11f0 0246     		mov	r2, r0
 3926 11f2 0B46     		mov	r3, r1
 3927 11f4 69E7     		b	.L506
 3928              	.L665:
 3929 11f6 BBF1FF3F 		cmp	fp, #-1
 3930 11fa 3FF419AB 		beq	.L463
 3931 11fe 9BE4     		b	.L466
 3932              	.L503:
 3933 1200 5B21     		movs	r1, #91
ARM GAS  /tmp/ccgYgJck.s 			page 70


 3934 1202 0B98     		ldr	r0, [sp, #44]
 3935 1204 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3936 1208 57E7     		b	.L505
 3937              	.L667:
 3938 120a 0EAB     		add	r3, sp, #56
 3939 120c 0493     		str	r3, [sp, #16]
 3940 120e 1946     		mov	r1, r3
 3941 1210 0122     		movs	r2, #1
 3942 1212 0223     		movs	r3, #2
 3943 1214 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 3944 1218 0649     		ldr	r1, .L681+16
 3945 121a 0B98     		ldr	r0, [sp, #44]
 3946 121c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3947 1220 FEF769BF 		b	.L520
 3948              	.L682:
 3949              		.align	2
 3950              	.L681:
 3951 1224 00805640 		.word	1079410688
 3952 1228 00007A44 		.word	1148846080
 3953 122c DC060000 		.word	.LC133
 3954 1230 10070000 		.word	.LC135
 3955 1234 1C070000 		.word	.LC136
 3956 1238 00000000 		.word	.LC49
 3957 123c B4050000 		.word	.LC120
 3958 1240 C8050000 		.word	.LC121
 3959 1244 E4050000 		.word	.LC122
 3960 1248 F0050000 		.word	.LC123
 3961 124c 0C060000 		.word	.LC124
 3962 1250 20060000 		.word	.LC125
 3963 1254 3C060000 		.word	.LC126
 3964 1258 58060000 		.word	.LC127
 3965 125c 70060000 		.word	.LC128
 3966 1260 88060000 		.word	.LC129
 3967 1264 A4060000 		.word	.LC130
 3968 1268 B8060000 		.word	.LC131
 3969 126c 0000C842 		.word	1120403456
 3970 1270 C8000000 		.word	.LC45
 3971              		.size	_ZN6RepRap17GetStatusResponseEh14ResponseSource, .-_ZN6RepRap17GetStatusResponseEh14Response
 3972              		.section	.text._ZN6RepRap23GetLegacyStatusResponseEhi,"ax",%progbits
 3973              		.align	1
 3974              		.p2align 2,,3
 3975              		.global	_ZN6RepRap23GetLegacyStatusResponseEhi
 3976              		.syntax unified
 3977              		.thumb
 3978              		.thumb_func
 3979              		.fpu fpv4-sp-d16
 3980              		.type	_ZN6RepRap23GetLegacyStatusResponseEhi, %function
 3981              	_ZN6RepRap23GetLegacyStatusResponseEhi:
 3982              		@ args = 0, pretend = 0, frame = 80
 3983              		@ frame_needed = 0, uses_anonymous_args = 0
 3984 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3985 0004 2DED028B 		vpush.64	{d8}
 3986 0008 99B0     		sub	sp, sp, #100
 3987 000a 0446     		mov	r4, r0
 3988 000c 07A8     		add	r0, sp, #28
 3989 000e 8A46     		mov	r10, r1
 3990 0010 0492     		str	r2, [sp, #16]
ARM GAS  /tmp/ccgYgJck.s 			page 71


 3991 0012 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3992 0016 0028     		cmp	r0, #0
 3993 0018 00F05482 		beq	.L683
 3994 001c 2046     		mov	r0, r4
 3995 001e FFF7FEFF 		bl	_ZNK6RepRap18GetStatusCharacterEv
 3996 0022 5328     		cmp	r0, #83
 3997 0024 00F07882 		beq	.L738
 3998 0028 4828     		cmp	r0, #72
 3999 002a 14BF     		ite	ne
 4000 002c 0246     		movne	r2, r0
 4001 002e 5322     		moveq	r2, #83
 4002              	.L685:
 4003 0030 7549     		ldr	r1, .L794+8
 4004 0032 0798     		ldr	r0, [sp, #28]
 4005 0034 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 4006 0038 E068     		ldr	r0, [r4, #12]
 4007 003a 079D     		ldr	r5, [sp, #28]
 4008 003c 90F9D260 		ldrsb	r6, [r0, #210]
 4009 0040 771C     		adds	r7, r6, #1
 4010 0042 40F04482 		bne	.L782
 4011 0046 0022     		movs	r2, #0
 4012 0048 0023     		movs	r3, #0
 4013              	.L686:
 4014 004a 2846     		mov	r0, r5
 4015 004c 6F49     		ldr	r1, .L794+12
 4016 004e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4017 0052 638F     		ldrh	r3, [r4, #58]
 4018 0054 012B     		cmp	r3, #1
 4019 0056 16D9     		bls	.L687
 4020 0058 DFF8D081 		ldr	r8, .L794+44
 4021 005c 0125     		movs	r5, #1
 4022              	.L688:
 4023 005e 69B2     		sxtb	r1, r5
 4024 0060 E068     		ldr	r0, [r4, #12]
 4025 0062 079F     		ldr	r7, [sp, #28]
 4026 0064 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 4027 0068 10EE100A 		vmov	r0, s0
 4028 006c FFF7FEFF 		bl	__aeabi_f2d
 4029 0070 2C22     		movs	r2, #44
 4030 0072 CDE90001 		strd	r0, [sp]
 4031 0076 3846     		mov	r0, r7
 4032 0078 4146     		mov	r1, r8
 4033 007a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4034 007e 638F     		ldrh	r3, [r4, #58]
 4035 0080 0135     		adds	r5, r5, #1
 4036 0082 AB42     		cmp	r3, r5
 4037 0084 EBD8     		bhi	.L688
 4038              	.L687:
 4039 0086 6249     		ldr	r1, .L794+16
 4040 0088 0798     		ldr	r0, [sp, #28]
 4041 008a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4042 008e 711C     		adds	r1, r6, #1
 4043 0090 079D     		ldr	r5, [sp, #28]
 4044 0092 00F02B82 		beq	.L741
 4045 0096 3146     		mov	r1, r6
 4046 0098 E068     		ldr	r0, [r4, #12]
 4047 009a FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
ARM GAS  /tmp/ccgYgJck.s 			page 72


 4048 009e 10EE100A 		vmov	r0, s0
 4049 00a2 FFF7FEFF 		bl	__aeabi_f2d
 4050 00a6 0246     		mov	r2, r0
 4051 00a8 0B46     		mov	r3, r1
 4052              	.L689:
 4053 00aa 2846     		mov	r0, r5
 4054 00ac 5949     		ldr	r1, .L794+20
 4055 00ae FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4056 00b2 638F     		ldrh	r3, [r4, #58]
 4057 00b4 012B     		cmp	r3, #1
 4058 00b6 15D9     		bls	.L690
 4059 00b8 DFF87481 		ldr	r8, .L794+48
 4060 00bc 0125     		movs	r5, #1
 4061              	.L691:
 4062 00be 69B2     		sxtb	r1, r5
 4063 00c0 E068     		ldr	r0, [r4, #12]
 4064 00c2 079F     		ldr	r7, [sp, #28]
 4065 00c4 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 4066 00c8 10EE100A 		vmov	r0, s0
 4067 00cc FFF7FEFF 		bl	__aeabi_f2d
 4068 00d0 0B46     		mov	r3, r1
 4069 00d2 0246     		mov	r2, r0
 4070 00d4 4146     		mov	r1, r8
 4071 00d6 3846     		mov	r0, r7
 4072 00d8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4073 00dc 638F     		ldrh	r3, [r4, #58]
 4074 00de 0135     		adds	r5, r5, #1
 4075 00e0 AB42     		cmp	r3, r5
 4076 00e2 ECD8     		bhi	.L691
 4077              	.L690:
 4078 00e4 4A49     		ldr	r1, .L794+16
 4079 00e6 0798     		ldr	r0, [sp, #28]
 4080 00e8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4081 00ec 721C     		adds	r2, r6, #1
 4082 00ee 079D     		ldr	r5, [sp, #28]
 4083 00f0 00F0F981 		beq	.L742
 4084 00f4 3146     		mov	r1, r6
 4085 00f6 E068     		ldr	r0, [r4, #12]
 4086 00f8 FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 4087 00fc 10EE100A 		vmov	r0, s0
 4088 0100 FFF7FEFF 		bl	__aeabi_f2d
 4089 0104 0246     		mov	r2, r0
 4090 0106 0B46     		mov	r3, r1
 4091              	.L692:
 4092 0108 2846     		mov	r0, r5
 4093 010a 4349     		ldr	r1, .L794+24
 4094 010c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4095 0110 638F     		ldrh	r3, [r4, #58]
 4096 0112 012B     		cmp	r3, #1
 4097 0114 15D9     		bls	.L693
 4098 0116 DFF81881 		ldr	r8, .L794+48
 4099 011a 0125     		movs	r5, #1
 4100              	.L694:
 4101 011c 69B2     		sxtb	r1, r5
 4102 011e E068     		ldr	r0, [r4, #12]
 4103 0120 079F     		ldr	r7, [sp, #28]
 4104 0122 FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
ARM GAS  /tmp/ccgYgJck.s 			page 73


 4105 0126 10EE100A 		vmov	r0, s0
 4106 012a FFF7FEFF 		bl	__aeabi_f2d
 4107 012e 0B46     		mov	r3, r1
 4108 0130 0246     		mov	r2, r0
 4109 0132 4146     		mov	r1, r8
 4110 0134 3846     		mov	r0, r7
 4111 0136 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4112 013a 638F     		ldrh	r3, [r4, #58]
 4113 013c 0135     		adds	r5, r5, #1
 4114 013e AB42     		cmp	r3, r5
 4115 0140 ECD8     		bhi	.L694
 4116              	.L693:
 4117 0142 3349     		ldr	r1, .L794+16
 4118 0144 0798     		ldr	r0, [sp, #28]
 4119 0146 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4120 014a 731C     		adds	r3, r6, #1
 4121 014c 079D     		ldr	r5, [sp, #28]
 4122 014e 00F0C881 		beq	.L743
 4123 0152 3146     		mov	r1, r6
 4124 0154 E068     		ldr	r0, [r4, #12]
 4125 0156 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 4126 015a 0246     		mov	r2, r0
 4127              	.L695:
 4128 015c 2846     		mov	r0, r5
 4129 015e 2F49     		ldr	r1, .L794+28
 4130 0160 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4131 0164 638F     		ldrh	r3, [r4, #58]
 4132 0166 012B     		cmp	r3, #1
 4133 0168 0FD9     		bls	.L696
 4134 016a 2D4F     		ldr	r7, .L794+32
 4135 016c 0125     		movs	r5, #1
 4136              	.L697:
 4137 016e 69B2     		sxtb	r1, r5
 4138 0170 E068     		ldr	r0, [r4, #12]
 4139 0172 079E     		ldr	r6, [sp, #28]
 4140 0174 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 4141 0178 3946     		mov	r1, r7
 4142 017a 0246     		mov	r2, r0
 4143 017c 3046     		mov	r0, r6
 4144 017e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4145 0182 638F     		ldrh	r3, [r4, #58]
 4146 0184 0135     		adds	r5, r5, #1
 4147 0186 AB42     		cmp	r3, r5
 4148 0188 F1D8     		bhi	.L697
 4149              	.L696:
 4150 018a 2149     		ldr	r1, .L794+16
 4151 018c 0798     		ldr	r0, [sp, #28]
 4152 018e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4153 0192 2369     		ldr	r3, [r4, #16]
 4154 0194 2349     		ldr	r1, .L794+36
 4155 0196 0798     		ldr	r0, [sp, #28]
 4156 0198 D3F89C62 		ldr	r6, [r3, #668]
 4157 019c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4158 01a0 2569     		ldr	r5, [r4, #16]
 4159 01a2 B435     		adds	r5, r5, #180
 4160 01a4 002E     		cmp	r6, #0
 4161 01a6 00F0A982 		beq	.L698
ARM GAS  /tmp/ccgYgJck.s 			page 74


 4162 01aa 9FED1F8A 		vldr.32	s16, .L794+40
 4163 01ae DFF88490 		ldr	r9, .L794+52
 4164 01b2 05EB8608 		add	r8, r5, r6, lsl #2
 4165 01b6 4FF05B0B 		mov	fp, #91
 4166 01ba 0CE0     		b	.L702
 4167              	.L784:
 4168 01bc FFF7FEFF 		bl	__aeabi_f2d
 4169              	.L699:
 4170 01c0 CDE90001 		strd	r0, [sp]
 4171 01c4 5A46     		mov	r2, fp
 4172 01c6 3846     		mov	r0, r7
 4173 01c8 4946     		mov	r1, r9
 4174 01ca FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4175 01ce 4545     		cmp	r5, r8
 4176 01d0 4FF02C0B 		mov	fp, #44
 4177 01d4 30D0     		beq	.L783
 4178              	.L702:
 4179 01d6 F5EC017A 		vldmia.32	r5!, {s15}
 4180 01da 079F     		ldr	r7, [sp, #28]
 4181 01dc F4EE677A 		vcmp.f32	s15, s15
 4182 01e0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4183 01e4 B0EEE77A 		vabs.f32	s14, s15
 4184 01e8 17EE900A 		vmov	r0, s15
 4185 01ec 04D6     		bvs	.L774
 4186 01ee B4EE487A 		vcmp.f32	s14, s16
 4187 01f2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4188 01f6 E1DD     		ble	.L784
 4189              	.L774:
 4190 01f8 01A1     		adr	r1, .L794
 4191 01fa D1E90001 		ldrd	r0, [r1]
 4192 01fe DFE7     		b	.L699
 4193              	.L795:
 4194              		.align	3
 4195              	.L794:
 4196 0200 00000040 		.word	1073741824
 4197 0204 F387C340 		.word	1086556147
 4198 0208 00000000 		.word	.LC137
 4199 020c 1C000000 		.word	.LC138
 4200 0210 04000000 		.word	.LC50
 4201 0214 24000000 		.word	.LC139
 4202 0218 3C000000 		.word	.LC141
 4203 021c 50000000 		.word	.LC142
 4204 0220 60000000 		.word	.LC143
 4205 0224 64000000 		.word	.LC144
 4206 0228 FFFF7F7F 		.word	2139095039
 4207 022c C8000000 		.word	.LC45
 4208 0230 34000000 		.word	.LC140
 4209 0234 50000000 		.word	.LC57
 4210              	.L783:
 4211 0238 226B     		ldr	r2, [r4, #48]
 4212 023a A068     		ldr	r0, [r4, #8]
 4213 023c 002A     		cmp	r2, #0
 4214 023e 00F05282 		beq	.L785
 4215 0242 0CAF     		add	r7, sp, #48
 4216 0244 3946     		mov	r1, r7
 4217 0246 D2E92823 		ldrd	r2, r3, [r2, #160]
 4218 024a FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
ARM GAS  /tmp/ccgYgJck.s 			page 75


 4219 024e BA49     		ldr	r1, .L796
 4220 0250 0798     		ldr	r0, [sp, #28]
 4221 0252 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4222              	.L730:
 4223 0256 DFF82C83 		ldr	r8, .L796+76
 4224 025a 0025     		movs	r5, #0
 4225 025c 4FF05B09 		mov	r9, #91
 4226 0260 A346     		mov	fp, r4
 4227              	.L703:
 4228 0262 57F8040B 		ldr	r0, [r7], #4	@ float
 4229 0266 079C     		ldr	r4, [sp, #28]
 4230 0268 FFF7FEFF 		bl	__aeabi_f2d
 4231 026c 0135     		adds	r5, r5, #1
 4232 026e CDE90001 		strd	r0, [sp]
 4233 0272 4A46     		mov	r2, r9
 4234 0274 2046     		mov	r0, r4
 4235 0276 4146     		mov	r1, r8
 4236 0278 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4237 027c B542     		cmp	r5, r6
 4238 027e 4FF02C09 		mov	r9, #44
 4239 0282 EED3     		bcc	.L703
 4240 0284 5C46     		mov	r4, fp
 4241              	.L733:
 4242 0286 2069     		ldr	r0, [r4, #16]
 4243 0288 079D     		ldr	r5, [sp, #28]
 4244 028a 9FEDAC8A 		vldr.32	s16, .L796+4
 4245 028e FFF7FEFF 		bl	_ZNK6GCodes14GetSpeedFactorEv
 4246 0292 60EE087A 		vmul.f32	s15, s0, s16
 4247 0296 17EE900A 		vmov	r0, s15
 4248 029a FFF7FEFF 		bl	__aeabi_f2d
 4249 029e 0B46     		mov	r3, r1
 4250 02a0 0246     		mov	r2, r0
 4251 02a2 A749     		ldr	r1, .L796+8
 4252 02a4 2846     		mov	r0, r5
 4253 02a6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4254 02aa 238F     		ldrh	r3, [r4, #56]
 4255 02ac 002B     		cmp	r3, #0
 4256 02ae 00F01782 		beq	.L704
 4257 02b2 DFF8D482 		ldr	r8, .L796+80
 4258 02b6 0025     		movs	r5, #0
 4259 02b8 5B27     		movs	r7, #91
 4260 02ba B146     		mov	r9, r6
 4261              	.L705:
 4262 02bc 2946     		mov	r1, r5
 4263 02be 2069     		ldr	r0, [r4, #16]
 4264 02c0 079E     		ldr	r6, [sp, #28]
 4265 02c2 FFF7FEFF 		bl	_ZN6GCodes18GetExtrusionFactorEj
 4266 02c6 60EE087A 		vmul.f32	s15, s0, s16
 4267 02ca 0135     		adds	r5, r5, #1
 4268 02cc 17EE900A 		vmov	r0, s15
 4269 02d0 FFF7FEFF 		bl	__aeabi_f2d
 4270 02d4 3A46     		mov	r2, r7
 4271 02d6 CDE90001 		strd	r0, [sp]
 4272 02da 3046     		mov	r0, r6
 4273 02dc 4146     		mov	r1, r8
 4274 02de FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4275 02e2 238F     		ldrh	r3, [r4, #56]
ARM GAS  /tmp/ccgYgJck.s 			page 76


 4276 02e4 AB42     		cmp	r3, r5
 4277 02e6 4FF02C07 		mov	r7, #44
 4278 02ea E7D8     		bhi	.L705
 4279 02ec 0798     		ldr	r0, [sp, #28]
 4280 02ee 9549     		ldr	r1, .L796+12
 4281 02f0 4E46     		mov	r6, r9
 4282              	.L707:
 4283 02f2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4284 02f6 2369     		ldr	r3, [r4, #16]
 4285 02f8 03F59E63 		add	r3, r3, #1264
 4286 02fc 1868     		ldr	r0, [r3]	@ float
 4287 02fe FFF7FEFF 		bl	__aeabi_f2d
 4288 0302 0B46     		mov	r3, r1
 4289 0304 0246     		mov	r2, r0
 4290 0306 9049     		ldr	r1, .L796+16
 4291 0308 0798     		ldr	r0, [sp, #28]
 4292 030a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4293 030e 236B     		ldr	r3, [r4, #48]
 4294 0310 0798     		ldr	r0, [sp, #28]
 4295 0312 002B     		cmp	r3, #0
 4296 0314 00F05081 		beq	.L746
 4297 0318 D3F89C20 		ldr	r2, [r3, #156]
 4298              	.L708:
 4299 031c 8B49     		ldr	r1, .L796+20
 4300 031e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4301 0322 2068     		ldr	r0, [r4]
 4302 0324 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 4303 0328 09AA     		add	r2, sp, #36
 4304 032a 0546     		mov	r5, r0
 4305 032c 08A9     		add	r1, sp, #32
 4306 032e 2068     		ldr	r0, [r4]
 4307 0330 FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 4308 0334 0128     		cmp	r0, #1
 4309 0336 00F0F780 		beq	.L710
 4310 033a 0228     		cmp	r0, #2
 4311 033c 40F0EE80 		bne	.L786
 4312 0340 099A     		ldr	r2, [sp, #36]
 4313 0342 0092     		str	r2, [sp]
 4314 0344 DDE90703 		ldrd	r0, r3, [sp, #28]
 4315 0348 2A46     		mov	r2, r5
 4316 034a 8149     		ldr	r1, .L796+24
 4317 034c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4318              	.L712:
 4319 0350 8049     		ldr	r1, .L796+28
 4320 0352 0798     		ldr	r0, [sp, #28]
 4321 0354 9FED798A 		vldr.32	s16, .L796+4
 4322 0358 DFF83092 		ldr	r9, .L796+84
 4323 035c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4324 0360 0025     		movs	r5, #0
 4325 0362 5B27     		movs	r7, #91
 4326 0364 A046     		mov	r8, r4
 4327              	.L713:
 4328 0366 2946     		mov	r1, r5
 4329 0368 D8F80000 		ldr	r0, [r8]
 4330 036c 079C     		ldr	r4, [sp, #28]
 4331 036e FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 4332 0372 60EE087A 		vmul.f32	s15, s0, s16
ARM GAS  /tmp/ccgYgJck.s 			page 77


 4333 0376 0135     		adds	r5, r5, #1
 4334 0378 17EE900A 		vmov	r0, s15
 4335 037c FFF7FEFF 		bl	__aeabi_f2d
 4336 0380 3A46     		mov	r2, r7
 4337 0382 CDE90001 		strd	r0, [sp]
 4338 0386 2046     		mov	r0, r4
 4339 0388 4946     		mov	r1, r9
 4340 038a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4341 038e 092D     		cmp	r5, #9
 4342 0390 4FF02C07 		mov	r7, #44
 4343 0394 E7D1     		bne	.L713
 4344 0396 D8F80000 		ldr	r0, [r8]
 4345 039a 079D     		ldr	r5, [sp, #28]
 4346 039c FFF7FEFF 		bl	_ZNK8Platform9GetFanRPMEv
 4347 03a0 FCEEC07A 		vcvt.u32.f32	s15, s0
 4348 03a4 6C49     		ldr	r1, .L796+32
 4349 03a6 2846     		mov	r0, r5
 4350 03a8 17EE902A 		vmov	r2, s15	@ int
 4351 03ac FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4352 03b0 6A49     		ldr	r1, .L796+36
 4353 03b2 0798     		ldr	r0, [sp, #28]
 4354 03b4 4446     		mov	r4, r8
 4355 03b6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4356 03ba 8EB1     		cbz	r6, .L714
 4357 03bc 684F     		ldr	r7, .L796+40
 4358 03be 0025     		movs	r5, #0
 4359 03c0 5B22     		movs	r2, #91
 4360              	.L715:
 4361 03c2 2369     		ldr	r3, [r4, #16]
 4362 03c4 0798     		ldr	r0, [sp, #28]
 4363 03c6 D3F87434 		ldr	r3, [r3, #1140]
 4364 03ca EB40     		lsrs	r3, r3, r5
 4365 03cc 03F00103 		and	r3, r3, #1
 4366 03d0 0135     		adds	r5, r5, #1
 4367 03d2 3946     		mov	r1, r7
 4368 03d4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4369 03d8 B542     		cmp	r5, r6
 4370 03da 4FF02C02 		mov	r2, #44
 4371 03de F0D1     		bne	.L715
 4372              	.L714:
 4373 03e0 5D21     		movs	r1, #93
 4374 03e2 0798     		ldr	r0, [sp, #28]
 4375 03e4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 4376 03e8 E369     		ldr	r3, [r4, #28]
 4377 03ea 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 4378 03ec 002B     		cmp	r3, #0
 4379 03ee 40F0CF80 		bne	.L787
 4380              	.L716:
 4381 03f2 0AA8     		add	r0, sp, #40
 4382 03f4 4FF0FF32 		mov	r2, #-1
 4383 03f8 04F12801 		add	r1, r4, #40
 4384 03fc FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 4385 0400 94F89931 		ldrb	r3, [r4, #409]	@ zero_extendqisi2
 4386 0404 002B     		cmp	r3, #0
 4387 0406 74D0     		beq	.L718
 4388 0408 D4F8A433 		ldr	r3, [r4, #932]
 4389 040c 002B     		cmp	r3, #0
ARM GAS  /tmp/ccgYgJck.s 			page 78


 4390 040e 40F04081 		bne	.L788
 4391 0412 4FF00008 		mov	r8, #0
 4392 0416 4FF00009 		mov	r9, #0
 4393              	.L719:
 4394 041a D4F8AC13 		ldr	r1, [r4, #940]
 4395 041e D4F8A033 		ldr	r3, [r4, #928]
 4396 0422 D4F89C23 		ldr	r2, [r4, #924]
 4397 0426 0798     		ldr	r0, [sp, #28]
 4398 0428 0291     		str	r1, [sp, #8]
 4399 042a CDE90089 		strd	r8, [sp]
 4400 042e 4D49     		ldr	r1, .L796+44
 4401 0430 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4402 0434 0025     		movs	r5, #0
 4403 0436 4C49     		ldr	r1, .L796+48
 4404 0438 0798     		ldr	r0, [sp, #28]
 4405 043a 0127     		movs	r7, #1
 4406 043c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4407 0440 2B46     		mov	r3, r5
 4408 0442 4FF48072 		mov	r2, #256
 4409 0446 04F5CD71 		add	r1, r4, #410
 4410 044a 0798     		ldr	r0, [sp, #28]
 4411 044c 0195     		str	r5, [sp, #4]
 4412 044e 0097     		str	r7, [sp]
 4413 0450 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 4414 0454 4549     		ldr	r1, .L796+52
 4415 0456 0798     		ldr	r0, [sp, #28]
 4416 0458 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4417 045c 2B46     		mov	r3, r5
 4418 045e 4FF48072 		mov	r2, #256
 4419 0462 04F29B21 		addw	r1, r4, #667
 4420 0466 0798     		ldr	r0, [sp, #28]
 4421 0468 CDE90075 		strd	r7, r5, [sp]
 4422 046c FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 4423 0470 0AA8     		add	r0, sp, #40
 4424 0472 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 4425 0476 BAF1020F 		cmp	r10, #2
 4426 047a 44D0     		beq	.L789
 4427              	.L722:
 4428 047c BAF1030F 		cmp	r10, #3
 4429 0480 079D     		ldr	r5, [sp, #28]
 4430 0482 00F0CA80 		beq	.L790
 4431 0486 2368     		ldr	r3, [r4]
 4432 0488 BAF1010F 		cmp	r10, #1
 4433 048c D3F89429 		ldr	r2, [r3, #2452]
 4434 0490 04D9     		bls	.L728
 4435              	.L727:
 4436 0492 049B     		ldr	r3, [sp, #16]
 4437 0494 591C     		adds	r1, r3, #1
 4438 0496 10D0     		beq	.L729
 4439 0498 9342     		cmp	r3, r2
 4440 049a 0ED0     		beq	.L729
 4441              	.L728:
 4442 049c 2846     		mov	r0, r5
 4443 049e 3449     		ldr	r1, .L796+56
 4444 04a0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4445 04a4 2368     		ldr	r3, [r4]
 4446 04a6 0798     		ldr	r0, [sp, #28]
ARM GAS  /tmp/ccgYgJck.s 			page 79


 4447 04a8 D3F89019 		ldr	r1, [r3, #2448]
 4448 04ac 0022     		movs	r2, #0
 4449 04ae C3F89029 		str	r2, [r3, #2448]
 4450 04b2 0122     		movs	r2, #1
 4451 04b4 FFF7FEFF 		bl	_ZN12OutputBuffer11EncodeReplyEPS_b
 4452 04b8 079D     		ldr	r5, [sp, #28]
 4453              	.L729:
 4454 04ba 2E49     		ldr	r1, .L796+60
 4455 04bc 2846     		mov	r0, r5
 4456 04be FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4457 04c2 0798     		ldr	r0, [sp, #28]
 4458              	.L683:
 4459 04c4 19B0     		add	sp, sp, #100
 4460              		@ sp needed
 4461 04c6 BDEC028B 		vldm	sp!, {d8}
 4462 04ca BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4463              	.L782:
 4464 04ce 3146     		mov	r1, r6
 4465 04d0 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 4466 04d4 10EE100A 		vmov	r0, s0
 4467 04d8 FFF7FEFF 		bl	__aeabi_f2d
 4468 04dc 0246     		mov	r2, r0
 4469 04de 0B46     		mov	r3, r1
 4470 04e0 B3E5     		b	.L686
 4471              	.L743:
 4472 04e2 0022     		movs	r2, #0
 4473 04e4 3AE6     		b	.L695
 4474              	.L742:
 4475 04e6 0022     		movs	r2, #0
 4476 04e8 0023     		movs	r3, #0
 4477 04ea 0DE6     		b	.L692
 4478              	.L741:
 4479 04ec 0022     		movs	r2, #0
 4480 04ee 0023     		movs	r3, #0
 4481 04f0 DBE5     		b	.L689
 4482              	.L718:
 4483 04f2 2149     		ldr	r1, .L796+64
 4484 04f4 0798     		ldr	r0, [sp, #28]
 4485 04f6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4486 04fa 0AA8     		add	r0, sp, #40
 4487 04fc FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 4488 0500 BAF1020F 		cmp	r10, #2
 4489 0504 BAD1     		bne	.L722
 4490              	.L789:
 4491 0506 E069     		ldr	r0, [r4, #28]
 4492 0508 079D     		ldr	r5, [sp, #28]
 4493 050a 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 4494 050c 002B     		cmp	r3, #0
 4495 050e 59D1     		bne	.L791
 4496              	.L723:
 4497 0510 2368     		ldr	r3, [r4]
 4498 0512 D3F89429 		ldr	r2, [r3, #2452]
 4499 0516 BCE7     		b	.L727
 4500              	.L738:
 4501 0518 4122     		movs	r2, #65
 4502 051a 89E5     		b	.L685
 4503              	.L786:
ARM GAS  /tmp/ccgYgJck.s 			page 80


 4504 051c 2A46     		mov	r2, r5
 4505 051e 1749     		ldr	r1, .L796+68
 4506 0520 0798     		ldr	r0, [sp, #28]
 4507 0522 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4508 0526 13E7     		b	.L712
 4509              	.L710:
 4510 0528 2A46     		mov	r2, r5
 4511 052a 089B     		ldr	r3, [sp, #32]
 4512 052c 1449     		ldr	r1, .L796+72
 4513 052e 0798     		ldr	r0, [sp, #28]
 4514 0530 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4515 0534 0CE7     		b	.L712
 4516              	.L797:
 4517 0536 00BF     		.align	2
 4518              	.L796:
 4519 0538 1C070000 		.word	.LC136
 4520 053c 0000C842 		.word	1120403456
 4521 0540 6C000000 		.word	.LC145
 4522 0544 04000000 		.word	.LC50
 4523 0548 88000000 		.word	.LC146
 4524 054c 9C000000 		.word	.LC147
 4525 0550 BC000000 		.word	.LC149
 4526 0554 F8000000 		.word	.LC66
 4527 0558 E4000000 		.word	.LC151
 4528 055c F4000000 		.word	.LC152
 4529 0560 48000000 		.word	.LC56
 4530 0564 1C010000 		.word	.LC154
 4531 0568 6C010000 		.word	.LC155
 4532 056c 7C010000 		.word	.LC156
 4533 0570 2C020000 		.word	.LC161
 4534 0574 E4000000 		.word	.LC47
 4535 0578 90010000 		.word	.LC157
 4536 057c D4000000 		.word	.LC150
 4537 0580 A8000000 		.word	.LC148
 4538 0584 50000000 		.word	.LC57
 4539 0588 10000000 		.word	.LC14
 4540 058c C8000000 		.word	.LC45
 4541              	.L787:
 4542 0590 2069     		ldr	r0, [r4, #16]
 4543 0592 079D     		ldr	r5, [sp, #28]
 4544 0594 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 4545 0598 B5EEC00A 		vcmpe.f32	s0, #0
 4546 059c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4547 05a0 0DD4     		bmi	.L747
 4548 05a2 10EE100A 		vmov	r0, s0
 4549 05a6 FFF7FEFF 		bl	__aeabi_f2d
 4550 05aa 0246     		mov	r2, r0
 4551 05ac 0B46     		mov	r3, r1
 4552              	.L717:
 4553 05ae 2846     		mov	r0, r5
 4554 05b0 5A49     		ldr	r1, .L798
 4555 05b2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4556 05b6 1CE7     		b	.L716
 4557              	.L746:
 4558 05b8 4FF0FF32 		mov	r2, #-1
 4559 05bc AEE6     		b	.L708
 4560              	.L747:
ARM GAS  /tmp/ccgYgJck.s 			page 81


 4561 05be 0022     		movs	r2, #0
 4562 05c0 0023     		movs	r3, #0
 4563 05c2 F4E7     		b	.L717
 4564              	.L791:
 4565 05c4 0121     		movs	r1, #1
 4566 05c6 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 4567 05ca 0021     		movs	r1, #0
 4568 05cc E069     		ldr	r0, [r4, #28]
 4569 05ce 10EE106A 		vmov	r6, s0
 4570 05d2 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 4571 05d6 5146     		mov	r1, r10
 4572 05d8 E069     		ldr	r0, [r4, #28]
 4573 05da 10EE108A 		vmov	r8, s0
 4574 05de FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 4575 05e2 3046     		mov	r0, r6	@ float
 4576 05e4 8DED050A 		vstr.32	s0, [sp, #20]	@ int
 4577 05e8 FFF7FEFF 		bl	__aeabi_f2d
 4578 05ec 9DED050A 		vldr.32	s0, [sp, #20]	@ int
 4579 05f0 0646     		mov	r6, r0
 4580 05f2 10EE100A 		vmov	r0, s0
 4581 05f6 0F46     		mov	r7, r1
 4582 05f8 FFF7FEFF 		bl	__aeabi_f2d
 4583 05fc CDE90201 		strd	r0, [sp, #8]
 4584 0600 4046     		mov	r0, r8	@ float
 4585 0602 FFF7FEFF 		bl	__aeabi_f2d
 4586 0606 3246     		mov	r2, r6
 4587 0608 CDE90001 		strd	r0, [sp]
 4588 060c 3B46     		mov	r3, r7
 4589 060e 2846     		mov	r0, r5
 4590 0610 4349     		ldr	r1, .L798+4
 4591 0612 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4592 0616 079D     		ldr	r5, [sp, #28]
 4593 0618 7AE7     		b	.L723
 4594              	.L790:
 4595 061a A368     		ldr	r3, [r4, #8]
 4596 061c D3F8580A 		ldr	r0, [r3, #2648]
 4597 0620 0368     		ldr	r3, [r0]
 4598 0622 0121     		movs	r1, #1
 4599 0624 1B68     		ldr	r3, [r3]
 4600 0626 9847     		blx	r3
 4601 0628 2369     		ldr	r3, [r4, #16]
 4602 062a 8246     		mov	r10, r0
 4603 062c 0027     		movs	r7, #0
 4604 062e 03F25A49 		addw	r9, r3, #1114
 4605 0632 00E0     		b	.L726
 4606              	.L792:
 4607 0634 0137     		adds	r7, r7, #1
 4608              	.L726:
 4609 0636 3946     		mov	r1, r7
 4610 0638 2046     		mov	r0, r4
 4611 063a FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 4612 063e 0028     		cmp	r0, #0
 4613 0640 F8D1     		bne	.L792
 4614 0642 0221     		movs	r1, #2
 4615 0644 8046     		mov	r8, r0
 4616 0646 3346     		mov	r3, r6
 4617 0648 5246     		mov	r2, r10
ARM GAS  /tmp/ccgYgJck.s 			page 82


 4618 064a 2846     		mov	r0, r5
 4619 064c 0191     		str	r1, [sp, #4]
 4620 064e 0125     		movs	r5, #1
 4621 0650 3449     		ldr	r1, .L798+8
 4622 0652 0297     		str	r7, [sp, #8]
 4623 0654 CDF80090 		str	r9, [sp]
 4624 0658 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4625 065c 4346     		mov	r3, r8
 4626 065e 2822     		movs	r2, #40
 4627 0660 0095     		str	r5, [sp]
 4628 0662 04F16501 		add	r1, r4, #101
 4629 0666 0798     		ldr	r0, [sp, #28]
 4630 0668 CDF80480 		str	r8, [sp, #4]
 4631 066c FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 4632 0670 2D49     		ldr	r1, .L798+12
 4633 0672 0798     		ldr	r0, [sp, #28]
 4634 0674 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4635 0678 CDE90058 		strd	r5, r8, [sp]
 4636 067c 4346     		mov	r3, r8
 4637 067e 2722     		movs	r2, #39
 4638 0680 0798     		ldr	r0, [sp, #28]
 4639 0682 2A49     		ldr	r1, .L798+16
 4640 0684 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 4641 0688 2368     		ldr	r3, [r4]
 4642 068a 079D     		ldr	r5, [sp, #28]
 4643 068c D3F89429 		ldr	r2, [r3, #2452]
 4644 0690 FFE6     		b	.L727
 4645              	.L788:
 4646 0692 D4EDEA7A 		vldr.32	s15, [r4, #936]	@ int
 4647 0696 DFED268A 		vldr.32	s17, .L798+20
 4648 069a F8EE677A 		vcvt.f32.u32	s15, s15
 4649 069e 87EEA88A 		vdiv.f32	s16, s15, s17
 4650 06a2 FFF7FEFF 		bl	millis
 4651 06a6 D4F8A433 		ldr	r3, [r4, #932]
 4652 06aa C01A     		subs	r0, r0, r3
 4653 06ac 07EE900A 		vmov	s15, r0	@ int
 4654 06b0 F8EE677A 		vcvt.f32.u32	s15, s15
 4655 06b4 87EEA87A 		vdiv.f32	s14, s15, s17
 4656 06b8 78EE477A 		vsub.f32	s15, s16, s14
 4657 06bc F5EEC07A 		vcmpe.f32	s15, #0
 4658 06c0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4659 06c4 CCBF     		ite	gt
 4660 06c6 0123     		movgt	r3, #1
 4661 06c8 0023     		movle	r3, #0
 4662 06ca 84F89931 		strb	r3, [r4, #409]
 4663 06ce 7FF710AF 		ble	.L718
 4664 06d2 17EE900A 		vmov	r0, s15
 4665 06d6 FFF7FEFF 		bl	__aeabi_f2d
 4666 06da 8046     		mov	r8, r0
 4667 06dc 8946     		mov	r9, r1
 4668 06de 9CE6     		b	.L719
 4669              	.L704:
 4670 06e0 0798     		ldr	r0, [sp, #28]
 4671 06e2 1449     		ldr	r1, .L798+24
 4672 06e4 05E6     		b	.L707
 4673              	.L785:
 4674 06e6 0CAF     		add	r7, sp, #48
ARM GAS  /tmp/ccgYgJck.s 			page 83


 4675 06e8 3946     		mov	r1, r7
 4676 06ea 0223     		movs	r3, #2
 4677 06ec 0122     		movs	r2, #1
 4678 06ee FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 4679 06f2 1149     		ldr	r1, .L798+28
 4680 06f4 0798     		ldr	r0, [sp, #28]
 4681 06f6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4682 06fa ACE5     		b	.L730
 4683              	.L698:
 4684 06fc 226B     		ldr	r2, [r4, #48]
 4685 06fe A068     		ldr	r0, [r4, #8]
 4686 0700 4AB9     		cbnz	r2, .L793
 4687 0702 0223     		movs	r3, #2
 4688 0704 0122     		movs	r2, #1
 4689              	.L781:
 4690 0706 0CA9     		add	r1, sp, #48
 4691 0708 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 4692 070c 0A49     		ldr	r1, .L798+28
 4693 070e 0798     		ldr	r0, [sp, #28]
 4694 0710 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4695 0714 B7E5     		b	.L733
 4696              	.L793:
 4697 0716 D2E92823 		ldrd	r2, r3, [r2, #160]
 4698 071a F4E7     		b	.L781
 4699              	.L799:
 4700              		.align	2
 4701              	.L798:
 4702 071c 00010000 		.word	.LC153
 4703 0720 A4010000 		.word	.LC158
 4704 0724 C4010000 		.word	.LC159
 4705 0728 18020000 		.word	.LC160
 4706 072c 24000000 		.word	.LC4
 4707 0730 00007A44 		.word	1148846080
 4708 0734 00000000 		.word	.LC49
 4709 0738 1C070000 		.word	.LC136
 4710              		.size	_ZN6RepRap23GetLegacyStatusResponseEhi, .-_ZN6RepRap23GetLegacyStatusResponseEhi
 4711              		.section	.text._ZNK6RepRap7GetNameEv,"ax",%progbits
 4712              		.align	1
 4713              		.p2align 2,,3
 4714              		.global	_ZNK6RepRap7GetNameEv
 4715              		.syntax unified
 4716              		.thumb
 4717              		.thumb_func
 4718              		.fpu fpv4-sp-d16
 4719              		.type	_ZNK6RepRap7GetNameEv, %function
 4720              	_ZNK6RepRap7GetNameEv:
 4721              		@ args = 0, pretend = 0, frame = 0
 4722              		@ frame_needed = 0, uses_anonymous_args = 0
 4723              		@ link register save eliminated.
 4724 0000 6530     		adds	r0, r0, #101
 4725 0002 7047     		bx	lr
 4726              		.size	_ZNK6RepRap7GetNameEv, .-_ZNK6RepRap7GetNameEv
 4727              		.section	.text._ZN6RepRap7SetNameEPKc,"ax",%progbits
 4728              		.align	1
 4729              		.p2align 2,,3
 4730              		.global	_ZN6RepRap7SetNameEPKc
 4731              		.syntax unified
ARM GAS  /tmp/ccgYgJck.s 			page 84


 4732              		.thumb
 4733              		.thumb_func
 4734              		.fpu fpv4-sp-d16
 4735              		.type	_ZN6RepRap7SetNameEPKc, %function
 4736              	_ZN6RepRap7SetNameEPKc:
 4737              		@ args = 0, pretend = 0, frame = 8
 4738              		@ frame_needed = 0, uses_anonymous_args = 0
 4739 0000 30B5     		push	{r4, r5, lr}
 4740 0002 0446     		mov	r4, r0
 4741 0004 83B0     		sub	sp, sp, #12
 4742 0006 00F16505 		add	r5, r0, #101
 4743 000a 2923     		movs	r3, #41
 4744 000c 6846     		mov	r0, sp
 4745 000e CDE90053 		strd	r5, r3, [sp]
 4746 0012 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4747 0016 2946     		mov	r1, r5
 4748 0018 6068     		ldr	r0, [r4, #4]
 4749 001a FFF7FEFF 		bl	_ZN7Network11SetHostnameEPKc
 4750 001e 03B0     		add	sp, sp, #12
 4751              		@ sp needed
 4752 0020 30BD     		pop	{r4, r5, pc}
 4753              		.size	_ZN6RepRap7SetNameEPKc, .-_ZN6RepRap7SetNameEPKc
 4754 0022 00BF     		.section	.text._ZN6RepRap4InitEv,"ax",%progbits
 4755              		.align	1
 4756              		.p2align 2,,3
 4757              		.global	_ZN6RepRap4InitEv
 4758              		.syntax unified
 4759              		.thumb
 4760              		.thumb_func
 4761              		.fpu fpv4-sp-d16
 4762              		.type	_ZN6RepRap4InitEv, %function
 4763              	_ZN6RepRap4InitEv:
 4764              		@ args = 0, pretend = 0, frame = 0
 4765              		@ frame_needed = 0, uses_anonymous_args = 0
 4766 0000 30B5     		push	{r4, r5, lr}
 4767 0002 4549     		ldr	r1, .L816
 4768 0004 83B0     		sub	sp, sp, #12
 4769 0006 0446     		mov	r4, r0
 4770 0008 2430     		adds	r0, r0, #36
 4771 000a FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 4772 000e 4349     		ldr	r1, .L816+4
 4773 0010 04F12800 		add	r0, r4, #40
 4774 0014 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 4775 0018 2068     		ldr	r0, [r4]
 4776 001a FFF7FEFF 		bl	_ZN8Platform4InitEv
 4777 001e 6068     		ldr	r0, [r4, #4]
 4778 0020 FFF7FEFF 		bl	_ZN7Network4InitEv
 4779 0024 3E49     		ldr	r1, .L816+8
 4780 0026 2046     		mov	r0, r4
 4781 0028 FFF7FEFF 		bl	_ZN6RepRap7SetNameEPKc
 4782 002c 2069     		ldr	r0, [r4, #16]
 4783 002e FFF7FEFF 		bl	_ZN6GCodes4InitEv
 4784 0032 A068     		ldr	r0, [r4, #8]
 4785 0034 FFF7FEFF 		bl	_ZN4Move4InitEv
 4786 0038 E068     		ldr	r0, [r4, #12]
 4787 003a FFF7FEFF 		bl	_ZN4Heat4InitEv
 4788 003e A069     		ldr	r0, [r4, #24]
ARM GAS  /tmp/ccgYgJck.s 			page 85


 4789 0040 FFF7FEFF 		bl	_ZN7Scanner4InitEv
 4790 0044 206A     		ldr	r0, [r4, #32]
 4791 0046 FFF7FEFF 		bl	_ZN11PortControl4InitEv
 4792 004a E069     		ldr	r0, [r4, #28]
 4793 004c FFF7FEFF 		bl	_ZN12PrintMonitor4InitEv
 4794 0050 0125     		movs	r5, #1
 4795 0052 FFF7FEFF 		bl	_ZN15FilamentMonitor10InitStaticEv
 4796 0056 334A     		ldr	r2, .L816+12
 4797 0058 334B     		ldr	r3, .L816+16
 4798 005a 2068     		ldr	r0, [r4]
 4799 005c 0192     		str	r2, [sp, #4]
 4800 005e 2946     		mov	r1, r5
 4801 0060 84F84D50 		strb	r5, [r4, #77]
 4802 0064 314A     		ldr	r2, .L816+20
 4803 0066 0093     		str	r3, [sp]
 4804 0068 314B     		ldr	r3, .L816+24
 4805 006a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4806 006e 2946     		mov	r1, r5
 4807 0070 2068     		ldr	r0, [r4]
 4808 0072 304A     		ldr	r2, .L816+28
 4809 0074 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4810 0078 2368     		ldr	r3, [r4]
 4811 007a 2F49     		ldr	r1, .L816+32
 4812 007c 2F4A     		ldr	r2, .L816+36
 4813 007e D3F8B409 		ldr	r0, [r3, #2484]
 4814 0082 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 4815 0086 2946     		mov	r1, r5
 4816 0088 0028     		cmp	r0, #0
 4817 008a 34D0     		beq	.L804
 4818 008c 2068     		ldr	r0, [r4]
 4819 008e 2B4B     		ldr	r3, .L816+36
 4820 0090 2B4A     		ldr	r2, .L816+40
 4821 0092 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4822 0096 2949     		ldr	r1, .L816+36
 4823 0098 2069     		ldr	r0, [r4, #16]
 4824 009a FFF7FEFF 		bl	_ZN6GCodes13RunConfigFileEPKc
 4825 009e 20B9     		cbnz	r0, .L808
 4826 00a0 34E0     		b	.L806
 4827              	.L807:
 4828 00a2 2069     		ldr	r0, [r4, #16]
 4829 00a4 FFF7FEFF 		bl	_ZNK6GCodes12IsDaemonBusyEv
 4830 00a8 58B1     		cbz	r0, .L815
 4831              	.L808:
 4832 00aa 94F84D30 		ldrb	r3, [r4, #77]	@ zero_extendqisi2
 4833 00ae 002B     		cmp	r3, #0
 4834 00b0 F7D0     		beq	.L807
 4835 00b2 2046     		mov	r0, r4
 4836 00b4 FFF7FEFF 		bl	_ZN6RepRap4SpinEv.part.20
 4837 00b8 2069     		ldr	r0, [r4, #16]
 4838 00ba FFF7FEFF 		bl	_ZNK6GCodes12IsDaemonBusyEv
 4839 00be 0028     		cmp	r0, #0
 4840 00c0 F3D1     		bne	.L808
 4841              	.L815:
 4842 00c2 204A     		ldr	r2, .L816+44
 4843 00c4 2068     		ldr	r0, [r4]
 4844 00c6 0121     		movs	r1, #1
 4845 00c8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
ARM GAS  /tmp/ccgYgJck.s 			page 86


 4846              	.L809:
 4847 00cc 0025     		movs	r5, #0
 4848 00ce 6068     		ldr	r0, [r4, #4]
 4849 00d0 84F84F50 		strb	r5, [r4, #79]
 4850 00d4 FFF7FEFF 		bl	_ZN7Network8ActivateEv
 4851 00d8 1B48     		ldr	r0, .L816+48
 4852 00da FFF7FEFF 		bl	hsmci_set_idle_func
 4853 00de 144B     		ldr	r3, .L816+24
 4854 00e0 1A4A     		ldr	r2, .L816+52
 4855 00e2 2068     		ldr	r0, [r4]
 4856 00e4 0121     		movs	r1, #1
 4857 00e6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4858 00ea 4FF0FF33 		mov	r3, #-1
 4859 00ee C4E91035 		strd	r3, r5, [r4, #64]
 4860 00f2 03B0     		add	sp, sp, #12
 4861              		@ sp needed
 4862 00f4 30BD     		pop	{r4, r5, pc}
 4863              	.L804:
 4864 00f6 2068     		ldr	r0, [r4]
 4865 00f8 154B     		ldr	r3, .L816+56
 4866 00fa 164A     		ldr	r2, .L816+60
 4867 00fc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4868 0100 1349     		ldr	r1, .L816+56
 4869 0102 2069     		ldr	r0, [r4, #16]
 4870 0104 FFF7FEFF 		bl	_ZN6GCodes13RunConfigFileEPKc
 4871 0108 0028     		cmp	r0, #0
 4872 010a CED1     		bne	.L808
 4873              	.L806:
 4874 010c 124A     		ldr	r2, .L816+64
 4875 010e 2068     		ldr	r0, [r4]
 4876 0110 0121     		movs	r1, #1
 4877 0112 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4878 0116 D9E7     		b	.L809
 4879              	.L817:
 4880              		.align	2
 4881              	.L816:
 4882 0118 1C000000 		.word	.LC164
 4883 011c 28000000 		.word	.LC165
 4884 0120 34000000 		.word	.LC166
 4885 0124 A4000000 		.word	.LC22
 4886 0128 68000000 		.word	.LC6
 4887 012c 3C000000 		.word	.LC167
 4888 0130 24000000 		.word	.LC4
 4889 0134 54000000 		.word	.LC168
 4890 0138 60000000 		.word	.LC169
 4891 013c 00000000 		.word	.LC162
 4892 0140 68000000 		.word	.LC170
 4893 0144 94000000 		.word	.LC172
 4894 0148 00000000 		.word	hsmciIdle
 4895 014c B0000000 		.word	.LC174
 4896 0150 0C000000 		.word	.LC163
 4897 0154 70000000 		.word	.LC171
 4898 0158 9C000000 		.word	.LC173
 4899              		.size	_ZN6RepRap4InitEv, .-_ZN6RepRap4InitEv
 4900              		.section	.text._ZN6RepRap30GetProhibitedExtruderMovementsEjj,"ax",%progbits
 4901              		.align	1
 4902              		.p2align 2,,3
ARM GAS  /tmp/ccgYgJck.s 			page 87


 4903              		.global	_ZN6RepRap30GetProhibitedExtruderMovementsEjj
 4904              		.syntax unified
 4905              		.thumb
 4906              		.thumb_func
 4907              		.fpu fpv4-sp-d16
 4908              		.type	_ZN6RepRap30GetProhibitedExtruderMovementsEjj, %function
 4909              	_ZN6RepRap30GetProhibitedExtruderMovementsEjj:
 4910              		@ args = 0, pretend = 0, frame = 0
 4911              		@ frame_needed = 0, uses_anonymous_args = 0
 4912 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4913 0004 C368     		ldr	r3, [r0, #12]
 4914 0006 93F8D130 		ldrb	r3, [r3, #209]	@ zero_extendqisi2
 4915 000a C3BB     		cbnz	r3, .L824
 4916 000c 066B     		ldr	r6, [r0, #48]
 4917 000e DEB3     		cbz	r6, .L838
 4918 0010 D6F89400 		ldr	r0, [r6, #148]
 4919 0014 8146     		mov	r9, r0
 4920 0016 28B3     		cbz	r0, .L818
 4921 0018 9046     		mov	r8, r2
 4922 001a 0F46     		mov	r7, r1
 4923 001c 9946     		mov	r9, r3
 4924 001e 06F1AF05 		add	r5, r6, #175
 4925 0022 4FF0010A 		mov	r10, #1
 4926 0026 07E0     		b	.L823
 4927              	.L821:
 4928 0028 14EA080F 		tst	r4, r8
 4929 002c 1DD1     		bne	.L839
 4930              	.L822:
 4931 002e AE3D     		subs	r5, r5, #174
 4932 0030 AB1B     		subs	r3, r5, r6
 4933 0032 9842     		cmp	r0, r3
 4934 0034 5D46     		mov	r5, fp
 4935 0036 15D9     		bls	.L818
 4936              	.L823:
 4937 0038 6C78     		ldrb	r4, [r5, #1]	@ zero_extendqisi2
 4938 003a 0AFA04F4 		lsl	r4, r10, r4
 4939 003e 14EA0701 		ands	r1, r4, r7
 4940 0042 05F1010B 		add	fp, r5, #1
 4941 0046 EFD0     		beq	.L821
 4942 0048 0121     		movs	r1, #1
 4943 004a 3046     		mov	r0, r6
 4944 004c FFF7FEFF 		bl	_ZN4Tool12ToolCanDriveEb
 4945 0050 08B9     		cbnz	r0, .L837
 4946 0052 49EA0409 		orr	r9, r9, r4
 4947              	.L837:
 4948 0056 AE3D     		subs	r5, r5, #174
 4949 0058 D6F89400 		ldr	r0, [r6, #148]
 4950 005c AB1B     		subs	r3, r5, r6
 4951 005e 9842     		cmp	r0, r3
 4952 0060 5D46     		mov	r5, fp
 4953 0062 E9D8     		bhi	.L823
 4954              	.L818:
 4955 0064 4846     		mov	r0, r9
 4956 0066 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4957              	.L839:
 4958 006a 3046     		mov	r0, r6
 4959 006c FFF7FEFF 		bl	_ZN4Tool12ToolCanDriveEb
ARM GAS  /tmp/ccgYgJck.s 			page 88


 4960 0070 0028     		cmp	r0, #0
 4961 0072 F0D1     		bne	.L837
 4962 0074 D6F89400 		ldr	r0, [r6, #148]
 4963 0078 49EA0409 		orr	r9, r9, r4
 4964 007c D7E7     		b	.L822
 4965              	.L824:
 4966 007e 4FF00009 		mov	r9, #0
 4967 0082 4846     		mov	r0, r9
 4968 0084 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4969              	.L838:
 4970 0088 41EA0209 		orr	r9, r1, r2
 4971 008c 4846     		mov	r0, r9
 4972 008e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4973              		.size	_ZN6RepRap30GetProhibitedExtruderMovementsEjj, .-_ZN6RepRap30GetProhibitedExtruderMovementsE
 4974 0092 00BF     		.section	.text._ZN6RepRap20FlagTemperatureFaultEa,"ax",%progbits
 4975              		.align	1
 4976              		.p2align 2,,3
 4977              		.global	_ZN6RepRap20FlagTemperatureFaultEa
 4978              		.syntax unified
 4979              		.thumb
 4980              		.thumb_func
 4981              		.fpu fpv4-sp-d16
 4982              		.type	_ZN6RepRap20FlagTemperatureFaultEa, %function
 4983              	_ZN6RepRap20FlagTemperatureFaultEa:
 4984              		@ args = 0, pretend = 0, frame = 8
 4985              		@ frame_needed = 0, uses_anonymous_args = 0
 4986 0000 30B5     		push	{r4, r5, lr}
 4987 0002 0446     		mov	r4, r0
 4988 0004 83B0     		sub	sp, sp, #12
 4989 0006 0D46     		mov	r5, r1
 4990 0008 6846     		mov	r0, sp
 4991 000a 04F12401 		add	r1, r4, #36
 4992 000e 4FF0FF32 		mov	r2, #-1
 4993 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 4994 0016 E06A     		ldr	r0, [r4, #44]
 4995 0018 10B1     		cbz	r0, .L841
 4996 001a 2946     		mov	r1, r5
 4997 001c FFF7FEFF 		bl	_ZN4Tool20FlagTemperatureFaultEa
 4998              	.L841:
 4999 0020 6846     		mov	r0, sp
 5000 0022 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5001 0026 03B0     		add	sp, sp, #12
 5002              		@ sp needed
 5003 0028 30BD     		pop	{r4, r5, pc}
 5004              		.size	_ZN6RepRap20FlagTemperatureFaultEa, .-_ZN6RepRap20FlagTemperatureFaultEa
 5005 002a 00BF     		.section	.text._ZN6RepRap21ClearTemperatureFaultEa,"ax",%progbits
 5006              		.align	1
 5007              		.p2align 2,,3
 5008              		.global	_ZN6RepRap21ClearTemperatureFaultEa
 5009              		.syntax unified
 5010              		.thumb
 5011              		.thumb_func
 5012              		.fpu fpv4-sp-d16
 5013              		.type	_ZN6RepRap21ClearTemperatureFaultEa, %function
 5014              	_ZN6RepRap21ClearTemperatureFaultEa:
 5015              		@ args = 0, pretend = 0, frame = 8
 5016              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccgYgJck.s 			page 89


 5017 0000 30B5     		push	{r4, r5, lr}
 5018 0002 0446     		mov	r4, r0
 5019 0004 83B0     		sub	sp, sp, #12
 5020 0006 C068     		ldr	r0, [r0, #12]
 5021 0008 0D46     		mov	r5, r1
 5022 000a FFF7FEFF 		bl	_ZN4Heat10ResetFaultEa
 5023 000e 04F12401 		add	r1, r4, #36
 5024 0012 6846     		mov	r0, sp
 5025 0014 4FF0FF32 		mov	r2, #-1
 5026 0018 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 5027 001c E06A     		ldr	r0, [r4, #44]
 5028 001e 10B1     		cbz	r0, .L847
 5029 0020 2946     		mov	r1, r5
 5030 0022 FFF7FEFF 		bl	_ZN4Tool21ClearTemperatureFaultEa
 5031              	.L847:
 5032 0026 6846     		mov	r0, sp
 5033 0028 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5034 002c 03B0     		add	sp, sp, #12
 5035              		@ sp needed
 5036 002e 30BD     		pop	{r4, r5, pc}
 5037              		.size	_ZN6RepRap21ClearTemperatureFaultEa, .-_ZN6RepRap21ClearTemperatureFaultEa
 5038              		.section	.text._ZNK6RepRap15GetCurrentXAxesEv,"ax",%progbits
 5039              		.align	1
 5040              		.p2align 2,,3
 5041              		.global	_ZNK6RepRap15GetCurrentXAxesEv
 5042              		.syntax unified
 5043              		.thumb
 5044              		.thumb_func
 5045              		.fpu fpv4-sp-d16
 5046              		.type	_ZNK6RepRap15GetCurrentXAxesEv, %function
 5047              	_ZNK6RepRap15GetCurrentXAxesEv:
 5048              		@ args = 0, pretend = 0, frame = 0
 5049              		@ frame_needed = 0, uses_anonymous_args = 0
 5050              		@ link register save eliminated.
 5051 0000 036B     		ldr	r3, [r0, #48]
 5052 0002 13B1     		cbz	r3, .L854
 5053 0004 D3F8A000 		ldr	r0, [r3, #160]
 5054 0008 7047     		bx	lr
 5055              	.L854:
 5056 000a 0120     		movs	r0, #1
 5057 000c 7047     		bx	lr
 5058              		.size	_ZNK6RepRap15GetCurrentXAxesEv, .-_ZNK6RepRap15GetCurrentXAxesEv
 5059 000e 00BF     		.section	.text._ZNK6RepRap15GetCurrentYAxesEv,"ax",%progbits
 5060              		.align	1
 5061              		.p2align 2,,3
 5062              		.global	_ZNK6RepRap15GetCurrentYAxesEv
 5063              		.syntax unified
 5064              		.thumb
 5065              		.thumb_func
 5066              		.fpu fpv4-sp-d16
 5067              		.type	_ZNK6RepRap15GetCurrentYAxesEv, %function
 5068              	_ZNK6RepRap15GetCurrentYAxesEv:
 5069              		@ args = 0, pretend = 0, frame = 0
 5070              		@ frame_needed = 0, uses_anonymous_args = 0
 5071              		@ link register save eliminated.
 5072 0000 036B     		ldr	r3, [r0, #48]
 5073 0002 13B1     		cbz	r3, .L857
ARM GAS  /tmp/ccgYgJck.s 			page 90


 5074 0004 D3F8A400 		ldr	r0, [r3, #164]
 5075 0008 7047     		bx	lr
 5076              	.L857:
 5077 000a 0220     		movs	r0, #2
 5078 000c 7047     		bx	lr
 5079              		.size	_ZNK6RepRap15GetCurrentYAxesEv, .-_ZNK6RepRap15GetCurrentYAxesEv
 5080 000e 00BF     		.section	.text._ZNK6RepRap17WriteToolSettingsEP9FileStore,"ax",%progbits
 5081              		.align	1
 5082              		.p2align 2,,3
 5083              		.global	_ZNK6RepRap17WriteToolSettingsEP9FileStore
 5084              		.syntax unified
 5085              		.thumb
 5086              		.thumb_func
 5087              		.fpu fpv4-sp-d16
 5088              		.type	_ZNK6RepRap17WriteToolSettingsEP9FileStore, %function
 5089              	_ZNK6RepRap17WriteToolSettingsEP9FileStore:
 5090              		@ args = 0, pretend = 0, frame = 8
 5091              		@ frame_needed = 0, uses_anonymous_args = 0
 5092 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5093 0002 0646     		mov	r6, r0
 5094 0004 83B0     		sub	sp, sp, #12
 5095 0006 0F46     		mov	r7, r1
 5096 0008 6846     		mov	r0, sp
 5097 000a 06F12401 		add	r1, r6, #36
 5098 000e 4FF0FF32 		mov	r2, #-1
 5099 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 5100 0016 F46A     		ldr	r4, [r6, #44]
 5101 0018 04B3     		cbz	r4, .L878
 5102              	.L859:
 5103 001a 306B     		ldr	r0, [r6, #48]
 5104              	.L864:
 5105 001c A042     		cmp	r0, r4
 5106 001e 0ED0     		beq	.L879
 5107 0020 2046     		mov	r0, r4
 5108 0022 3946     		mov	r1, r7
 5109 0024 FFF7FEFF 		bl	_ZNK4Tool13WriteSettingsEP9FileStore
 5110 0028 2468     		ldr	r4, [r4]
 5111 002a 0546     		mov	r5, r0
 5112 002c A4B1     		cbz	r4, .L880
 5113 002e 002D     		cmp	r5, #0
 5114 0030 F3D1     		bne	.L859
 5115              	.L861:
 5116 0032 6846     		mov	r0, sp
 5117 0034 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5118 0038 2846     		mov	r0, r5
 5119 003a 03B0     		add	sp, sp, #12
 5120              		@ sp needed
 5121 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 5122              	.L879:
 5123 003e 0468     		ldr	r4, [r0]
 5124 0040 002C     		cmp	r4, #0
 5125 0042 EBD1     		bne	.L864
 5126              	.L863:
 5127 0044 3946     		mov	r1, r7
 5128 0046 FFF7FEFF 		bl	_ZNK4Tool13WriteSettingsEP9FileStore
 5129 004a 0546     		mov	r5, r0
 5130 004c 6846     		mov	r0, sp
ARM GAS  /tmp/ccgYgJck.s 			page 91


 5131 004e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5132 0052 2846     		mov	r0, r5
 5133 0054 03B0     		add	sp, sp, #12
 5134              		@ sp needed
 5135 0056 F0BD     		pop	{r4, r5, r6, r7, pc}
 5136              	.L880:
 5137 0058 0028     		cmp	r0, #0
 5138 005a EAD0     		beq	.L861
 5139              	.L878:
 5140 005c 306B     		ldr	r0, [r6, #48]
 5141 005e 0028     		cmp	r0, #0
 5142 0060 F0D1     		bne	.L863
 5143 0062 6846     		mov	r0, sp
 5144 0064 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5145 0068 0125     		movs	r5, #1
 5146 006a 2846     		mov	r0, r5
 5147 006c 03B0     		add	sp, sp, #12
 5148              		@ sp needed
 5149 006e F0BD     		pop	{r4, r5, r6, r7, pc}
 5150              		.size	_ZNK6RepRap17WriteToolSettingsEP9FileStore, .-_ZNK6RepRap17WriteToolSettingsEP9FileStore
 5151              		.section	.text._ZN6RepRap8DoDivideEmm,"ax",%progbits
 5152              		.align	1
 5153              		.p2align 2,,3
 5154              		.global	_ZN6RepRap8DoDivideEmm
 5155              		.syntax unified
 5156              		.thumb
 5157              		.thumb_func
 5158              		.fpu fpv4-sp-d16
 5159              		.type	_ZN6RepRap8DoDivideEmm, %function
 5160              	_ZN6RepRap8DoDivideEmm:
 5161              		@ args = 0, pretend = 0, frame = 0
 5162              		@ frame_needed = 0, uses_anonymous_args = 0
 5163              		@ link register save eliminated.
 5164 0000 B0FBF1F0 		udiv	r0, r0, r1
 5165 0004 7047     		bx	lr
 5166              		.size	_ZN6RepRap8DoDivideEmm, .-_ZN6RepRap8DoDivideEmm
 5167 0006 00BF     		.section	.text._ZNK6RepRap19ReportInternalErrorEPKcS1_i,"ax",%progbits
 5168              		.align	1
 5169              		.p2align 2,,3
 5170              		.global	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 5171              		.syntax unified
 5172              		.thumb
 5173              		.thumb_func
 5174              		.fpu fpv4-sp-d16
 5175              		.type	_ZNK6RepRap19ReportInternalErrorEPKcS1_i, %function
 5176              	_ZNK6RepRap19ReportInternalErrorEPKcS1_i:
 5177              		@ args = 0, pretend = 0, frame = 0
 5178              		@ frame_needed = 0, uses_anonymous_args = 0
 5179 0000 00B5     		push	{lr}
 5180 0002 83B0     		sub	sp, sp, #12
 5181 0004 0068     		ldr	r0, [r0]
 5182 0006 CDE90013 		strd	r1, r3, [sp]
 5183 000a 1346     		mov	r3, r2
 5184 000c 40F2B511 		movw	r1, #437
 5185 0010 024A     		ldr	r2, .L884
 5186 0012 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5187 0016 03B0     		add	sp, sp, #12
ARM GAS  /tmp/ccgYgJck.s 			page 92


 5188              		@ sp needed
 5189 0018 5DF804FB 		ldr	pc, [sp], #4
 5190              	.L885:
 5191              		.align	2
 5192              	.L884:
 5193 001c 00000000 		.word	.LC175
 5194              		.size	_ZNK6RepRap19ReportInternalErrorEPKcS1_i, .-_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 5195              		.section	.text._ZN6StringILj20EE10CopyAndPadEPKc,"axG",%progbits,_ZN6StringILj20EE10CopyAndPadEPKc
 5196              		.align	1
 5197              		.p2align 2,,3
 5198              		.weak	_ZN6StringILj20EE10CopyAndPadEPKc
 5199              		.syntax unified
 5200              		.thumb
 5201              		.thumb_func
 5202              		.fpu fpv4-sp-d16
 5203              		.type	_ZN6StringILj20EE10CopyAndPadEPKc, %function
 5204              	_ZN6StringILj20EE10CopyAndPadEPKc:
 5205              		@ args = 0, pretend = 0, frame = 8
 5206              		@ frame_needed = 0, uses_anonymous_args = 0
 5207 0000 00B5     		push	{lr}
 5208 0002 0022     		movs	r2, #0
 5209 0004 83B0     		sub	sp, sp, #12
 5210 0006 0346     		mov	r3, r0
 5211 0008 0260     		str	r2, [r0]	@ unaligned
 5212 000a 4260     		str	r2, [r0, #4]	@ unaligned
 5213 000c 8260     		str	r2, [r0, #8]	@ unaligned
 5214 000e C260     		str	r2, [r0, #12]	@ unaligned
 5215 0010 0261     		str	r2, [r0, #16]	@ unaligned
 5216 0012 0275     		strb	r2, [r0, #20]
 5217 0014 1522     		movs	r2, #21
 5218 0016 6846     		mov	r0, sp
 5219 0018 CDE90032 		strd	r3, r2, [sp]
 5220 001c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5221 0020 03B0     		add	sp, sp, #12
 5222              		@ sp needed
 5223 0022 5DF804FB 		ldr	pc, [sp], #4
 5224              		.size	_ZN6StringILj20EE10CopyAndPadEPKc, .-_ZN6StringILj20EE10CopyAndPadEPKc
 5225 0026 00BF     		.section	.text._ZNK6RepRap13CheckPasswordEPKc,"ax",%progbits
 5226              		.align	1
 5227              		.p2align 2,,3
 5228              		.global	_ZNK6RepRap13CheckPasswordEPKc
 5229              		.syntax unified
 5230              		.thumb
 5231              		.thumb_func
 5232              		.fpu fpv4-sp-d16
 5233              		.type	_ZNK6RepRap13CheckPasswordEPKc, %function
 5234              	_ZNK6RepRap13CheckPasswordEPKc:
 5235              		@ args = 0, pretend = 0, frame = 48
 5236              		@ frame_needed = 0, uses_anonymous_args = 0
 5237 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5238 0002 8DB0     		sub	sp, sp, #52
 5239 0004 0CAE     		add	r6, sp, #48
 5240 0006 0024     		movs	r4, #0
 5241 0008 06F8304D 		strb	r4, [r6, #-48]!
 5242 000c 0546     		mov	r5, r0
 5243 000e 3046     		mov	r0, r6
 5244 0010 FFF7FEFF 		bl	_ZN6StringILj20EE10CopyAndPadEPKc
ARM GAS  /tmp/ccgYgJck.s 			page 93


 5245 0014 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 5246 0016 06AF     		add	r7, sp, #24
 5247 0018 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 5248 001a 96E80300 		ldm	r6, {r0, r1}
 5249 001e 47F8040B 		str	r0, [r7], #4
 5250 0022 4F35     		adds	r5, r5, #79
 5251 0024 2046     		mov	r0, r4
 5252 0026 3970     		strb	r1, [r7]
 5253 0028 0DF11702 		add	r2, sp, #23
 5254 002c 0DF12B04 		add	r4, sp, #43
 5255              	.L889:
 5256 0030 12F8011F 		ldrb	r1, [r2, #1]!	@ zero_extendqisi2
 5257 0034 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
 5258 0038 A242     		cmp	r2, r4
 5259 003a 83EA0103 		eor	r3, r3, r1
 5260 003e 40EA0300 		orr	r0, r0, r3
 5261 0042 F5D1     		bne	.L889
 5262 0044 B0FA80F0 		clz	r0, r0
 5263 0048 4009     		lsrs	r0, r0, #5
 5264 004a 0DB0     		add	sp, sp, #52
 5265              		@ sp needed
 5266 004c F0BD     		pop	{r4, r5, r6, r7, pc}
 5267              		.size	_ZNK6RepRap13CheckPasswordEPKc, .-_ZNK6RepRap13CheckPasswordEPKc
 5268 004e 00BF     		.section	.text._ZNK6RepRap13NoPasswordSetEv,"ax",%progbits
 5269              		.align	1
 5270              		.p2align 2,,3
 5271              		.global	_ZNK6RepRap13NoPasswordSetEv
 5272              		.syntax unified
 5273              		.thumb
 5274              		.thumb_func
 5275              		.fpu fpv4-sp-d16
 5276              		.type	_ZNK6RepRap13NoPasswordSetEv, %function
 5277              	_ZNK6RepRap13NoPasswordSetEv:
 5278              		@ args = 0, pretend = 0, frame = 0
 5279              		@ frame_needed = 0, uses_anonymous_args = 0
 5280              		@ link register save eliminated.
 5281 0000 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 5282 0004 0BB9     		cbnz	r3, .L894
 5283 0006 0120     		movs	r0, #1
 5284 0008 7047     		bx	lr
 5285              	.L894:
 5286 000a 0149     		ldr	r1, .L895
 5287 000c FFF7FEBF 		b	_ZNK6RepRap13CheckPasswordEPKc
 5288              	.L896:
 5289              		.align	2
 5290              	.L895:
 5291 0010 00000000 		.word	.LC176
 5292              		.size	_ZNK6RepRap13NoPasswordSetEv, .-_ZNK6RepRap13NoPasswordSetEv
 5293              		.section	.text._ZN6RepRap11SetPasswordEPKc,"ax",%progbits
 5294              		.align	1
 5295              		.p2align 2,,3
 5296              		.global	_ZN6RepRap11SetPasswordEPKc
 5297              		.syntax unified
 5298              		.thumb
 5299              		.thumb_func
 5300              		.fpu fpv4-sp-d16
 5301              		.type	_ZN6RepRap11SetPasswordEPKc, %function
ARM GAS  /tmp/ccgYgJck.s 			page 94


 5302              	_ZN6RepRap11SetPasswordEPKc:
 5303              		@ args = 0, pretend = 0, frame = 0
 5304              		@ frame_needed = 0, uses_anonymous_args = 0
 5305 0000 08B5     		push	{r3, lr}
 5306 0002 5030     		adds	r0, r0, #80
 5307 0004 FFF7FEFF 		bl	_ZN6StringILj20EE10CopyAndPadEPKc
 5308 0008 08BD     		pop	{r3, pc}
 5309              		.size	_ZN6RepRap11SetPasswordEPKc, .-_ZN6RepRap11SetPasswordEPKc
 5310 000a 00BF     		.section	.text._ZN6RepRapC2Ev,"ax",%progbits
 5311              		.align	1
 5312              		.p2align 2,,3
 5313              		.global	_ZN6RepRapC2Ev
 5314              		.syntax unified
 5315              		.thumb
 5316              		.thumb_func
 5317              		.fpu fpv4-sp-d16
 5318              		.type	_ZN6RepRapC2Ev, %function
 5319              	_ZN6RepRapC2Ev:
 5320              		@ args = 0, pretend = 0, frame = 0
 5321              		@ frame_needed = 0, uses_anonymous_args = 0
 5322 0000 70B5     		push	{r4, r5, r6, lr}
 5323 0002 1022     		movs	r2, #16
 5324 0004 0025     		movs	r5, #0
 5325 0006 0123     		movs	r3, #1
 5326 0008 80F83E20 		strb	r2, [r0, #62]
 5327 000c 80F84F30 		strb	r3, [r0, #79]
 5328 0010 C0E90955 		strd	r5, r5, [r0, #36]
 5329 0014 C0E90B55 		strd	r5, r5, [r0, #44]
 5330 0018 C0E90D55 		strd	r5, r5, [r0, #52]
 5331 001c 8587     		strh	r5, [r0, #60]	@ movhi
 5332 001e 8564     		str	r5, [r0, #72]
 5333 0020 80F84C50 		strb	r5, [r0, #76]
 5334 0024 80F84D50 		strb	r5, [r0, #77]
 5335 0028 80F84E50 		strb	r5, [r0, #78]
 5336 002c 80F85050 		strb	r5, [r0, #80]
 5337 0030 80F86550 		strb	r5, [r0, #101]
 5338 0034 C0E92455 		strd	r5, r5, [r0, #144]
 5339 0038 80F89951 		strb	r5, [r0, #409]
 5340 003c 80F89A51 		strb	r5, [r0, #410]
 5341 0040 80F89B52 		strb	r5, [r0, #667]
 5342 0044 C0F8A053 		str	r5, [r0, #928]
 5343 0048 A0F8B053 		strh	r5, [r0, #944]	@ movhi
 5344 004c 0446     		mov	r4, r0
 5345 004e FFF7FEFF 		bl	_ZN12OutputBuffer4InitEv
 5346 0052 4FF43260 		mov	r0, #2848
 5347 0056 FFF7FEFF 		bl	_Znwj
 5348 005a 0646     		mov	r6, r0
 5349 005c FFF7FEFF 		bl	_ZN8PlatformC1Ev
 5350 0060 2660     		str	r6, [r4]
 5351 0062 3020     		movs	r0, #48
 5352 0064 FFF7FEFF 		bl	_Znwj
 5353 0068 2168     		ldr	r1, [r4]
 5354 006a 0646     		mov	r6, r0
 5355 006c FFF7FEFF 		bl	_ZN7NetworkC1ER8Platform
 5356 0070 6660     		str	r6, [r4, #4]
 5357 0072 40F2AC60 		movw	r0, #1708
 5358 0076 FFF7FEFF 		bl	_Znwj
ARM GAS  /tmp/ccgYgJck.s 			page 95


 5359 007a 2168     		ldr	r1, [r4]
 5360 007c 0646     		mov	r6, r0
 5361 007e FFF7FEFF 		bl	_ZN6GCodesC1ER8Platform
 5362 0082 2661     		str	r6, [r4, #16]
 5363 0084 40F69C20 		movw	r0, #2716
 5364 0088 FFF7FEFF 		bl	_Znwj
 5365 008c 0646     		mov	r6, r0
 5366 008e FFF7FEFF 		bl	_ZN4MoveC1Ev
 5367 0092 A660     		str	r6, [r4, #8]
 5368 0094 DC20     		movs	r0, #220
 5369 0096 FFF7FEFF 		bl	_Znwj
 5370 009a 2168     		ldr	r1, [r4]
 5371 009c 0646     		mov	r6, r0
 5372 009e FFF7FEFF 		bl	_ZN4HeatC1ER8Platform
 5373 00a2 E660     		str	r6, [r4, #12]
 5374 00a4 4FF49A70 		mov	r0, #308
 5375 00a8 FFF7FEFF 		bl	_Znwj
 5376 00ac 0346     		mov	r3, r0
 5377 00ae 2268     		ldr	r2, [r4]
 5378 00b0 80F89C50 		strb	r5, [r0, #156]
 5379 00b4 A061     		str	r0, [r4, #24]
 5380 00b6 5A60     		str	r2, [r3, #4]
 5381 00b8 5020     		movs	r0, #80
 5382 00ba FFF7FEFF 		bl	_Znwj
 5383 00be 0646     		mov	r6, r0
 5384 00c0 FFF7FEFF 		bl	_ZN11PortControlC1Ev
 5385 00c4 2662     		str	r6, [r4, #32]
 5386 00c6 4FF4D070 		mov	r0, #416
 5387 00ca FFF7FEFF 		bl	_Znwj
 5388 00ce 2269     		ldr	r2, [r4, #16]
 5389 00d0 2168     		ldr	r1, [r4]
 5390 00d2 0646     		mov	r6, r0
 5391 00d4 FFF7FEFF 		bl	_ZN12PrintMonitorC1ER8PlatformR6GCodes
 5392 00d8 04F15000 		add	r0, r4, #80
 5393 00dc E661     		str	r6, [r4, #28]
 5394 00de 0349     		ldr	r1, .L901
 5395 00e0 FFF7FEFF 		bl	_ZN6StringILj20EE10CopyAndPadEPKc
 5396 00e4 84F89850 		strb	r5, [r4, #152]
 5397 00e8 2046     		mov	r0, r4
 5398 00ea 70BD     		pop	{r4, r5, r6, pc}
 5399              	.L902:
 5400              		.align	2
 5401              	.L901:
 5402 00ec 00000000 		.word	.LC176
 5403              		.size	_ZN6RepRapC2Ev, .-_ZN6RepRapC2Ev
 5404              		.global	_ZN6RepRapC1Ev
 5405              		.thumb_set _ZN6RepRapC1Ev,_ZN6RepRapC2Ev
 5406              		.section	.text._ZN6StringILj220EE4catfEPKcz,"axG",%progbits,_ZN6StringILj220EE4catfEPKcz,comdat
 5407              		.align	1
 5408              		.p2align 2,,3
 5409              		.weak	_ZN6StringILj220EE4catfEPKcz
 5410              		.syntax unified
 5411              		.thumb
 5412              		.thumb_func
 5413              		.fpu fpv4-sp-d16
 5414              		.type	_ZN6StringILj220EE4catfEPKcz, %function
 5415              	_ZN6StringILj220EE4catfEPKcz:
ARM GAS  /tmp/ccgYgJck.s 			page 96


 5416              		@ args = 4, pretend = 12, frame = 16
 5417              		@ frame_needed = 0, uses_anonymous_args = 1
 5418 0000 0EB4     		push	{r1, r2, r3}
 5419 0002 00B5     		push	{lr}
 5420 0004 84B0     		sub	sp, sp, #16
 5421 0006 05AA     		add	r2, sp, #20
 5422 0008 0290     		str	r0, [sp, #8]
 5423 000a 52F8041B 		ldr	r1, [r2], #4
 5424 000e 0192     		str	r2, [sp, #4]
 5425 0010 DD23     		movs	r3, #221
 5426 0012 02A8     		add	r0, sp, #8
 5427 0014 0393     		str	r3, [sp, #12]
 5428 0016 FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 5429 001a 04B0     		add	sp, sp, #16
 5430              		@ sp needed
 5431 001c 5DF804EB 		ldr	lr, [sp], #4
 5432 0020 03B0     		add	sp, sp, #12
 5433 0022 7047     		bx	lr
 5434              		.size	_ZN6StringILj220EE4catfEPKcz, .-_ZN6StringILj220EE4catfEPKcz
 5435              		.section	.text._ZNK6RepRap19WriteToolParametersEP9FileStore,"ax",%progbits
 5436              		.align	1
 5437              		.p2align 2,,3
 5438              		.global	_ZNK6RepRap19WriteToolParametersEP9FileStore
 5439              		.syntax unified
 5440              		.thumb
 5441              		.thumb_func
 5442              		.fpu fpv4-sp-d16
 5443              		.type	_ZNK6RepRap19WriteToolParametersEP9FileStore, %function
 5444              	_ZNK6RepRap19WriteToolParametersEP9FileStore:
 5445              		@ args = 0, pretend = 0, frame = 248
 5446              		@ frame_needed = 0, uses_anonymous_args = 0
 5447 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5448 0004 C1B0     		sub	sp, sp, #260
 5449 0006 8046     		mov	r8, r0
 5450 0008 0391     		str	r1, [sp, #12]
 5451 000a 04A8     		add	r0, sp, #16
 5452 000c 08F12401 		add	r1, r8, #36
 5453 0010 4FF0FF32 		mov	r2, #-1
 5454 0014 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 5455 0018 D8F82CB0 		ldr	fp, [r8, #44]
 5456 001c DFF8D490 		ldr	r9, .L932+8
 5457 0020 0024     		movs	r4, #0
 5458 0022 2046     		mov	r0, r4
 5459 0024 BBF1000F 		cmp	fp, #0
 5460 0028 4BD0     		beq	.L915
 5461              	.L931:
 5462 002a DBF8A860 		ldr	r6, [fp, #168]
 5463 002e 46B9     		cbnz	r6, .L907
 5464 0030 5B46     		mov	r3, fp
 5465              	.L908:
 5466 0032 1B68     		ldr	r3, [r3]
 5467 0034 002B     		cmp	r3, #0
 5468 0036 44D0     		beq	.L915
 5469 0038 D3F8A860 		ldr	r6, [r3, #168]
 5470 003c 002E     		cmp	r6, #0
 5471 003e F8D0     		beq	.L908
 5472 0040 9B46     		mov	fp, r3
ARM GAS  /tmp/ccgYgJck.s 			page 97


 5473              	.L907:
 5474 0042 0022     		movs	r2, #0
 5475 0044 8DF82020 		strb	r2, [sp, #32]
 5476 0048 0028     		cmp	r0, #0
 5477 004a 44D0     		beq	.L925
 5478 004c 06AB     		add	r3, sp, #24
 5479 004e 08AF     		add	r7, sp, #32
 5480 0050 0293     		str	r3, [sp, #8]
 5481              	.L910:
 5482 0052 DBF89C20 		ldr	r2, [fp, #156]
 5483 0056 2549     		ldr	r1, .L932
 5484 0058 3846     		mov	r0, r7
 5485 005a FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 5486 005e 0BF10C05 		add	r5, fp, #12
 5487 0062 0024     		movs	r4, #0
 5488 0064 04E0     		b	.L912
 5489              	.L911:
 5490 0066 0134     		adds	r4, r4, #1
 5491 0068 092C     		cmp	r4, #9
 5492 006a 05F10405 		add	r5, r5, #4
 5493 006e 17D0     		beq	.L930
 5494              	.L912:
 5495 0070 26FA04F3 		lsr	r3, r6, r4
 5496 0074 DB07     		lsls	r3, r3, #31
 5497 0076 F6D5     		bpl	.L911
 5498 0078 D8F81030 		ldr	r3, [r8, #16]
 5499 007c 2868     		ldr	r0, [r5]	@ float
 5500 007e 2344     		add	r3, r3, r4
 5501 0080 0134     		adds	r4, r4, #1
 5502 0082 93F85AA4 		ldrb	r10, [r3, #1114]	@ zero_extendqisi2
 5503 0086 FFF7FEFF 		bl	__aeabi_f2d
 5504 008a 5246     		mov	r2, r10
 5505 008c CDE90001 		strd	r0, [sp]
 5506 0090 4946     		mov	r1, r9
 5507 0092 3846     		mov	r0, r7
 5508 0094 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 5509 0098 092C     		cmp	r4, #9
 5510 009a 05F10405 		add	r5, r5, #4
 5511 009e E7D1     		bne	.L912
 5512              	.L930:
 5513 00a0 DD22     		movs	r2, #221
 5514 00a2 0A21     		movs	r1, #10
 5515 00a4 0298     		ldr	r0, [sp, #8]
 5516 00a6 CDE90672 		strd	r7, r2, [sp, #24]
 5517 00aa FFF7FEFF 		bl	_ZNK9StringRef3catEc
 5518 00ae 3946     		mov	r1, r7
 5519 00b0 0398     		ldr	r0, [sp, #12]
 5520 00b2 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 5521 00b6 30B1     		cbz	r0, .L928
 5522 00b8 DBF800B0 		ldr	fp, [fp]
 5523 00bc BBF1000F 		cmp	fp, #0
 5524 00c0 B3D1     		bne	.L931
 5525              	.L915:
 5526 00c2 0124     		movs	r4, #1
 5527 00c4 00E0     		b	.L906
 5528              	.L928:
 5529 00c6 0446     		mov	r4, r0
ARM GAS  /tmp/ccgYgJck.s 			page 98


 5530              	.L906:
 5531 00c8 04A8     		add	r0, sp, #16
 5532 00ca FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5533 00ce 2046     		mov	r0, r4
 5534 00d0 41B0     		add	sp, sp, #260
 5535              		@ sp needed
 5536 00d2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5537              	.L925:
 5538 00d6 06AB     		add	r3, sp, #24
 5539 00d8 08AF     		add	r7, sp, #32
 5540 00da DD22     		movs	r2, #221
 5541 00dc 1846     		mov	r0, r3
 5542 00de 0449     		ldr	r1, .L932+4
 5543 00e0 0293     		str	r3, [sp, #8]
 5544 00e2 CDE90672 		strd	r7, r2, [sp, #24]
 5545 00e6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5546 00ea B2E7     		b	.L910
 5547              	.L933:
 5548              		.align	2
 5549              	.L932:
 5550 00ec 18000000 		.word	.LC178
 5551 00f0 00000000 		.word	.LC177
 5552 00f4 20000000 		.word	.LC179
 5553              		.size	_ZNK6RepRap19WriteToolParametersEP9FileStore, .-_ZNK6RepRap19WriteToolParametersEP9FileStore
 5554              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 5555              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 5556              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 5557              	_ZL28cpu_irq_prev_interrupt_state:
 5558 0000 00       		.space	1
 5559              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 5560              		.align	2
 5561              		.type	_ZL32cpu_irq_critical_section_counter, %object
 5562              		.size	_ZL32cpu_irq_critical_section_counter, 4
 5563              	_ZL32cpu_irq_critical_section_counter:
 5564 0000 00000000 		.space	4
 5565              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 5566              		.align	2
 5567              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 5568              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 5569              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 5570 0000 00000000 		.space	4
 5571              		.section	.rodata._ZN6RepRap10PrintDebugEv.str1.4,"aMS",%progbits,1
 5572              		.align	2
 5573              	.LC8:
 5574 0000 44656275 		.ascii	"Debugging enabled for modules:\000"
 5574      6767696E 
 5574      6720656E 
 5574      61626C65 
 5574      6420666F 
 5575 001f 00       		.space	1
 5576              	.LC9:
 5577 0020 20257328 		.ascii	" %s(%u)\000"
 5577      25752900 
 5578              	.LC10:
 5579 0028 0A446562 		.ascii	"\012Debugging disabled for modules:\000"
 5579      75676769 
 5579      6E672064 
ARM GAS  /tmp/ccgYgJck.s 			page 99


 5579      69736162 
 5579      6C656420 
 5580              		.section	.rodata._ZN6RepRap11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 5581              		.align	2
 5582              	.LC1:
 5583 0000 0A00     		.ascii	"\012\000"
 5584 0002 0000     		.space	2
 5585              	.LC2:
 5586 0004 202B2025 		.ascii	" + %s\012\000"
 5586      730A00
 5587 000b 00       		.space	1
 5588              	.LC3:
 5589 000c 3D3D3D20 		.ascii	"=== Diagnostics ===\012\000"
 5589      44696167 
 5589      6E6F7374 
 5589      69637320 
 5589      3D3D3D0A 
 5590 0021 000000   		.space	3
 5591              	.LC4:
 5592 0024 52657052 		.ascii	"RepRapFirmware for Duet 2 WiFi/Ethernet\000"
 5592      61704669 
 5592      726D7761 
 5592      72652066 
 5592      6F722044 
 5593              	.LC5:
 5594 004c 25732076 		.ascii	"%s version %s running on %s\000"
 5594      65727369 
 5594      6F6E2025 
 5594      73207275 
 5594      6E6E696E 
 5595              	.LC6:
 5596 0068 312E3231 		.ascii	"1.21.2beta1\000"
 5596      2E326265 
 5596      74613100 
 5597              		.section	.rodata._ZN6RepRap11StandbyToolEib.str1.4,"aMS",%progbits,1
 5598              		.align	2
 5599              	.LC12:
 5600 0000 41747465 		.ascii	"Attempt to standby a non-existent tool: %d.\012\000"
 5600      6D707420 
 5600      746F2073 
 5600      74616E64 
 5600      62792061 
 5601              		.section	.rodata._ZN6RepRap16GetFilesResponseEPKcjb.str1.4,"aMS",%progbits,1
 5602              		.align	2
 5603              	.LC30:
 5604 0000 7B226469 		.ascii	"{\"dir\":\000"
 5604      72223A00 
 5605              	.LC31:
 5606 0008 2C226669 		.ascii	",\"first\":%u,\"files\":[\000"
 5606      72737422 
 5606      3A25752C 
 5606      2266696C 
 5606      6573223A 
 5607 001e 0000     		.space	2
 5608              	.LC32:
 5609 0020 5D2C226E 		.ascii	"],\"next\":%u,\"err\":%u}\000"
 5609      65787422 
ARM GAS  /tmp/ccgYgJck.s 			page 100


 5609      3A25752C 
 5609      22657272 
 5609      223A2575 
 5610 0036 0000     		.space	2
 5611              	.LC33:
 5612 0038 5D2C2265 		.ascii	"],\"err\":%u}\000"
 5612      7272223A 
 5612      25757D00 
 5613              		.section	.rodata._ZN6RepRap17GetConfigResponseEv.str1.4,"aMS",%progbits,1
 5614              		.align	2
 5615              	.LC13:
 5616 0000 7B226178 		.ascii	"{\"axisMins\":\000"
 5616      69734D69 
 5616      6E73223A 
 5616      00
 5617 000d 000000   		.space	3
 5618              	.LC14:
 5619 0010 2563252E 		.ascii	"%c%.2f\000"
 5619      326600
 5620 0017 00       		.space	1
 5621              	.LC15:
 5622 0018 5D2C2261 		.ascii	"],\"accelerations\":\000"
 5622      6363656C 
 5622      65726174 
 5622      696F6E73 
 5622      223A00
 5623 002b 00       		.space	1
 5624              	.LC16:
 5625 002c 5D2C2263 		.ascii	"],\"currents\":\000"
 5625      75727265 
 5625      6E747322 
 5625      3A00
 5626 003a 0000     		.space	2
 5627              	.LC17:
 5628 003c 5D2C2266 		.ascii	"],\"firmwareElectronics\":\"%s\000"
 5628      69726D77 
 5628      61726545 
 5628      6C656374 
 5628      726F6E69 
 5629              	.LC18:
 5630 0058 202B2025 		.ascii	" + %s\000"
 5630      7300
 5631 005e 0000     		.space	2
 5632              	.LC19:
 5633 0060 222C2266 		.ascii	"\",\"firmwareName\":\"%s\"\000"
 5633      69726D77 
 5633      6172654E 
 5633      616D6522 
 5633      3A222573 
 5634 0076 0000     		.space	2
 5635              	.LC20:
 5636 0078 2C226669 		.ascii	",\"firmwareVersion\":\"%s\"\000"
 5636      726D7761 
 5636      72655665 
 5636      7273696F 
 5636      6E223A22 
 5637              	.LC21:
ARM GAS  /tmp/ccgYgJck.s 			page 101


 5638 0090 2C226477 		.ascii	",\"dwsVersion\":\"%s\"\000"
 5638      73566572 
 5638      73696F6E 
 5638      223A2225 
 5638      732200
 5639 00a3 00       		.space	1
 5640              	.LC22:
 5641 00a4 32303138 		.ascii	"2018-06-23b1\000"
 5641      2D30362D 
 5641      32336231 
 5641      00
 5642 00b1 000000   		.space	3
 5643              	.LC23:
 5644 00b4 2C226669 		.ascii	",\"firmwareDate\":\"%s\"\000"
 5644      726D7761 
 5644      72654461 
 5644      7465223A 
 5644      22257322 
 5645 00c9 000000   		.space	3
 5646              	.LC24:
 5647 00cc 2C226964 		.ascii	",\"idleCurrentFactor\":%.1f\000"
 5647      6C654375 
 5647      7272656E 
 5647      74466163 
 5647      746F7222 
 5648 00e6 0000     		.space	2
 5649              	.LC25:
 5650 00e8 2C226964 		.ascii	",\"idleTimeout\":%.1f\000"
 5650      6C655469 
 5650      6D656F75 
 5650      74223A25 
 5650      2E316600 
 5651              	.LC26:
 5652 00fc 2C226D69 		.ascii	",\"minFeedrates\":\000"
 5652      6E466565 
 5652      64726174 
 5652      6573223A 
 5652      00
 5653 010d 000000   		.space	3
 5654              	.LC27:
 5655 0110 5D2C226D 		.ascii	"],\"maxFeedrates\":\000"
 5655      61784665 
 5655      65647261 
 5655      74657322 
 5655      3A00
 5656 0122 0000     		.space	2
 5657              	.LC28:
 5658 0124 5D7D00   		.ascii	"]}\000"
 5659 0127 00       		.space	1
 5660              	.LC29:
 5661 0128 5D2C2261 		.ascii	"],\"axisMaxes\":\000"
 5661      7869734D 
 5661      61786573 
 5661      223A00
 5662              		.section	.rodata._ZN6RepRap17GetStatusResponseEh14ResponseSource.str1.4,"aMS",%progbits,1
 5663              		.align	2
 5664              	.LC49:
ARM GAS  /tmp/ccgYgJck.s 			page 102


 5665 0000 5B5D00   		.ascii	"[]\000"
 5666 0003 00       		.space	1
 5667              	.LC50:
 5668 0004 5D00     		.ascii	"]\000"
 5669 0006 0000     		.space	2
 5670              	.LC51:
 5671 0008 252E3266 		.ascii	"%.2f\000"
 5671      00
 5672 000d 000000   		.space	3
 5673              	.LC52:
 5674 0010 2C252E32 		.ascii	",%.2f\000"
 5674      6600
 5675 0016 0000     		.space	2
 5676              	.LC53:
 5677 0018 5D7D2C00 		.ascii	"]},\000"
 5678              	.LC54:
 5679 001c 7B227374 		.ascii	"{\"status\":\"%c\",\"coords\":{\000"
 5679      61747573 
 5679      223A2225 
 5679      63222C22 
 5679      636F6F72 
 5680 0036 0000     		.space	2
 5681              	.LC55:
 5682 0038 22617865 		.ascii	"\"axesHomed\":\000"
 5682      73486F6D 
 5682      6564223A 
 5682      00
 5683 0045 000000   		.space	3
 5684              	.LC56:
 5685 0048 25632564 		.ascii	"%c%d\000"
 5685      00
 5686 004d 000000   		.space	3
 5687              	.LC57:
 5688 0050 2563252E 		.ascii	"%c%.3f\000"
 5688      336600
 5689 0057 00       		.space	1
 5690              	.LC58:
 5691 0058 5D2C2265 		.ascii	"],\"extr\":\000"
 5691      78747222 
 5691      3A00
 5692 0062 0000     		.space	2
 5693              	.LC59:
 5694 0064 5D7D2C22 		.ascii	"]},\"currentTool\":%d\000"
 5694      63757272 
 5694      656E7454 
 5694      6F6F6C22 
 5694      3A256400 
 5695              	.LC60:
 5696 0078 2C00     		.ascii	",\000"
 5697 007a 0000     		.space	2
 5698              	.LC61:
 5699 007c 226D6573 		.ascii	"\"message\":\000"
 5699      73616765 
 5699      223A00
 5700 0087 00       		.space	1
 5701              	.LC62:
 5702 0088 226D7367 		.ascii	"\"msgBox\":{\"msg\":\000"
ARM GAS  /tmp/ccgYgJck.s 			page 103


 5702      426F7822 
 5702      3A7B226D 
 5702      7367223A 
 5702      00
 5703 0099 000000   		.space	3
 5704              	.LC63:
 5705 009c 2C227469 		.ascii	",\"title\":\000"
 5705      746C6522 
 5705      3A00
 5706 00a6 0000     		.space	2
 5707              	.LC64:
 5708 00a8 2C226D6F 		.ascii	",\"mode\":%d,\"seq\":%lu,\"timeout\":%.1f,\"control"
 5708      6465223A 
 5708      25642C22 
 5708      73657122 
 5708      3A256C75 
 5709 00d4 73223A25 		.ascii	"s\":%lu}\000"
 5709      6C757D00 
 5710              	.LC65:
 5711 00dc 2C227061 		.ascii	",\"params\":{\"atxPower\":%d\000"
 5711      72616D73 
 5711      223A7B22 
 5711      61747850 
 5711      6F776572 
 5712 00f5 000000   		.space	3
 5713              	.LC66:
 5714 00f8 2C226661 		.ascii	",\"fanPercent\":\000"
 5714      6E506572 
 5714      63656E74 
 5714      223A00
 5715 0107 00       		.space	1
 5716              	.LC67:
 5717 0108 5D2C2273 		.ascii	"],\"speedFactor\":%.1f,\"extrFactors\":\000"
 5717      70656564 
 5717      46616374 
 5717      6F72223A 
 5717      252E3166 
 5718              	.LC68:
 5719 012c 2C226261 		.ascii	",\"babystep\":%.3f}\000"
 5719      62797374 
 5719      6570223A 
 5719      252E3366 
 5719      7D00
 5720 013e 0000     		.space	2
 5721              	.LC69:
 5722 0140 2C227365 		.ascii	",\"seq\":%lu\000"
 5722      71223A25 
 5722      6C7500
 5723 014b 00       		.space	1
 5724              	.LC70:
 5725 014c 2C227365 		.ascii	",\"sensors\":{\000"
 5725      6E736F72 
 5725      73223A7B 
 5725      00
 5726 0159 000000   		.space	3
 5727              	.LC71:
 5728 015c 2270726F 		.ascii	"\"probeValue\":%d,\"probeSecondary\":[%d]\000"
ARM GAS  /tmp/ccgYgJck.s 			page 104


 5728      62655661 
 5728      6C756522 
 5728      3A25642C 
 5728      2270726F 
 5729 0182 0000     		.space	2
 5730              	.LC72:
 5731 0184 2270726F 		.ascii	"\"probeValue\":%d,\"probeSecondary\":[%d,%d]\000"
 5731      62655661 
 5731      6C756522 
 5731      3A25642C 
 5731      2270726F 
 5732 01ad 000000   		.space	3
 5733              	.LC73:
 5734 01b0 2270726F 		.ascii	"\"probeValue\":%d\000"
 5734      62655661 
 5734      6C756522 
 5734      3A256400 
 5735              	.LC74:
 5736 01c0 2C226661 		.ascii	",\"fanRPM\":%d}\000"
 5736      6E52504D 
 5736      223A2564 
 5736      7D00
 5737 01ce 0000     		.space	2
 5738              	.LC75:
 5739 01d0 2C227465 		.ascii	",\"temps\":{\000"
 5739      6D707322 
 5739      3A7B00
 5740 01db 00       		.space	1
 5741              	.LC76:
 5742 01dc 22626564 		.ascii	"\"bed\":{\"current\":%.1f,\"active\":%.1f,\"state\""
 5742      223A7B22 
 5742      63757272 
 5742      656E7422 
 5742      3A252E31 
 5743 0207 3A25642C 		.ascii	":%d,\"heater\":%d},\000"
 5743      22686561 
 5743      74657222 
 5743      3A25647D 
 5743      2C00
 5744 0219 000000   		.space	3
 5745              	.LC77:
 5746 021c 22636861 		.ascii	"\"chamber\":{\"current\":%.1f,\"active\":%.1f,\"sta"
 5746      6D626572 
 5746      223A7B22 
 5746      63757272 
 5746      656E7422 
 5747 0248 7465223A 		.ascii	"te\":%d,\"heater\":%d},\000"
 5747      25642C22 
 5747      68656174 
 5747      6572223A 
 5747      25647D2C 
 5748 025d 000000   		.space	3
 5749              	.LC78:
 5750 0260 22636162 		.ascii	"\"cabinet\":{\"current\":%.1f,\"active\":%.1f,\"sta"
 5750      696E6574 
 5750      223A7B22 
 5750      63757272 
ARM GAS  /tmp/ccgYgJck.s 			page 105


 5750      656E7422 
 5751 028c 7465223A 		.ascii	"te\":%d,\"heater\":%d},\000"
 5751      25642C22 
 5751      68656174 
 5751      6572223A 
 5751      25647D2C 
 5752 02a1 000000   		.space	3
 5753              	.LC79:
 5754 02a4 22637572 		.ascii	"\"current\":\000"
 5754      72656E74 
 5754      223A00
 5755 02af 00       		.space	1
 5756              	.LC80:
 5757 02b0 2C227374 		.ascii	",\"state\":\000"
 5757      61746522 
 5757      3A00
 5758 02ba 0000     		.space	2
 5759              	.LC81:
 5760 02bc 2C226865 		.ascii	",\"heads\":{\"current\":\000"
 5760      61647322 
 5760      3A7B2263 
 5760      75727265 
 5760      6E74223A 
 5761 02d1 000000   		.space	3
 5762              	.LC82:
 5763 02d4 2C226163 		.ascii	",\"active\":\000"
 5763      74697665 
 5763      223A00
 5764 02df 00       		.space	1
 5765              	.LC83:
 5766 02e0 2C227374 		.ascii	",\"standby\":\000"
 5766      616E6462 
 5766      79223A00 
 5767              	.LC84:
 5768 02ec 7D2C2274 		.ascii	"},\"tools\":{\"active\":[\000"
 5768      6F6F6C73 
 5768      223A7B22 
 5768      61637469 
 5768      7665223A 
 5769 0302 0000     		.space	2
 5770              	.LC85:
 5771 0304 5D2C2273 		.ascii	"],\"standby\":[\000"
 5771      74616E64 
 5771      6279223A 
 5771      5B00
 5772 0312 0000     		.space	2
 5773              	.LC86:
 5774 0314 5D7D2C22 		.ascii	"]},\"extra\":[\000"
 5774      65787472 
 5774      61223A5B 
 5774      00
 5775 0321 000000   		.space	3
 5776              	.LC87:
 5777 0324 7B226E61 		.ascii	"{\"name\":\000"
 5777      6D65223A 
 5777      00
 5778 032d 000000   		.space	3
ARM GAS  /tmp/ccgYgJck.s 			page 106


 5779              	.LC88:
 5780 0330 2C227465 		.ascii	",\"temp\":%.1f}\000"
 5780      6D70223A 
 5780      252E3166 
 5780      7D00
 5781 033e 0000     		.space	2
 5782              	.LC89:
 5783 0340 2C227469 		.ascii	",\"time\":%.1f\000"
 5783      6D65223A 
 5783      252E3166 
 5783      00
 5784 034d 000000   		.space	3
 5785              	.LC90:
 5786 0350 2C227363 		.ascii	",\"scanner\":{\"status\":\"%c\"\000"
 5786      616E6E65 
 5786      72223A7B 
 5786      22737461 
 5786      74757322 
 5787 036a 0000     		.space	2
 5788              	.LC91:
 5789 036c 2C227072 		.ascii	",\"progress\":%.1f}\000"
 5789      6F677265 
 5789      7373223A 
 5789      252E3166 
 5789      7D00
 5790 037e 0000     		.space	2
 5791              	.LC92:
 5792 0380 2C227370 		.ascii	",\"spindles\":[\000"
 5792      696E646C 
 5792      6573223A 
 5792      5B00
 5793 038e 0000     		.space	2
 5794              	.LC93:
 5795 0390 7B226375 		.ascii	"{\"current\":%.1f,\"active\":%.1f\000"
 5795      7272656E 
 5795      74223A25 
 5795      2E31662C 
 5795      22616374 
 5796 03ae 0000     		.space	2
 5797              	.LC94:
 5798 03b0 2C22746F 		.ascii	",\"tool\":%d}\000"
 5798      6F6C223A 
 5798      25647D00 
 5799              	.LC95:
 5800 03bc 2C22636F 		.ascii	",\"coldExtrudeTemp\":%.1f\000"
 5800      6C644578 
 5800      74727564 
 5800      6554656D 
 5800      70223A25 
 5801              	.LC96:
 5802 03d4 2C22636F 		.ascii	",\"coldRetractTemp\":%.1f\000"
 5802      6C645265 
 5802      74726163 
 5802      7454656D 
 5802      70223A25 
 5803              	.LC97:
 5804 03ec 2C22636F 		.ascii	",\"controllableFans\":%lu\000"
ARM GAS  /tmp/ccgYgJck.s 			page 107


 5804      6E74726F 
 5804      6C6C6162 
 5804      6C654661 
 5804      6E73223A 
 5805              	.LC98:
 5806 0404 2C227465 		.ascii	",\"tempLimit\":%.1f\000"
 5806      6D704C69 
 5806      6D697422 
 5806      3A252E31 
 5806      6600
 5807 0416 0000     		.space	2
 5808              	.LC99:
 5809 0418 2C22656E 		.ascii	",\"endstops\":%lu\000"
 5809      6473746F 
 5809      7073223A 
 5809      256C7500 
 5810              	.LC100:
 5811 0428 2C226669 		.ascii	",\"firmwareName\":\"%s\",\"geometry\":\"%s\",\"axes"
 5811      726D7761 
 5811      72654E61 
 5811      6D65223A 
 5811      22257322 
 5812 0452 223A2575 		.ascii	"\":%u,\"axisNames\":\"%s\"\000"
 5812      2C226178 
 5812      69734E61 
 5812      6D657322 
 5812      3A222573 
 5813              	.LC101:
 5814 0468 2C22766F 		.ascii	",\"volumes\":%u,\"mountedVolumes\":%u\000"
 5814      6C756D65 
 5814      73223A25 
 5814      752C226D 
 5814      6F756E74 
 5815 048a 0000     		.space	2
 5816              	.LC102:
 5817 048c 2C226E61 		.ascii	",\"name\":\000"
 5817      6D65223A 
 5817      00
 5818 0495 000000   		.space	3
 5819              	.LC103:
 5820 0498 2C227072 		.ascii	",\"probe\":{\"threshold\":%li\000"
 5820      6F626522 
 5820      3A7B2274 
 5820      68726573 
 5820      686F6C64 
 5821 04b2 0000     		.space	2
 5822              	.LC104:
 5823 04b4 2C226865 		.ascii	",\"height\":%.2f\000"
 5823      69676874 
 5823      223A252E 
 5823      326600
 5824 04c3 00       		.space	1
 5825              	.LC105:
 5826 04c4 2C227479 		.ascii	",\"type\":%u}\000"
 5826      7065223A 
 5826      25757D00 
 5827              	.LC106:
ARM GAS  /tmp/ccgYgJck.s 			page 108


 5828 04d0 2C22746F 		.ascii	",\"tools\":[\000"
 5828      6F6C7322 
 5828      3A5B00
 5829 04db 00       		.space	1
 5830              	.LC107:
 5831 04dc 7B226E75 		.ascii	"{\"number\":%d\000"
 5831      6D626572 
 5831      223A2564 
 5831      00
 5832 04e9 000000   		.space	3
 5833              	.LC108:
 5834 04ec 2C226865 		.ascii	",\"heaters\":[\000"
 5834      61746572 
 5834      73223A5B 
 5834      00
 5835 04f9 000000   		.space	3
 5836              	.LC109:
 5837 04fc 256400   		.ascii	"%d\000"
 5838 04ff 00       		.space	1
 5839              	.LC110:
 5840 0500 5D2C2264 		.ascii	"],\"drives\":[\000"
 5840      72697665 
 5840      73223A5B 
 5840      00
 5841 050d 000000   		.space	3
 5842              	.LC111:
 5843 0510 5D2C2261 		.ascii	"],\"axisMap\":[[\000"
 5843      7869734D 
 5843      6170223A 
 5843      5B5B00
 5844 051f 00       		.space	1
 5845              	.LC112:
 5846 0520 257500   		.ascii	"%u\000"
 5847 0523 00       		.space	1
 5848              	.LC113:
 5849 0524 5D2C5B00 		.ascii	"],[\000"
 5850              	.LC114:
 5851 0528 5D5D00   		.ascii	"]]\000"
 5852 052b 00       		.space	1
 5853              	.LC115:
 5854 052c 2C226661 		.ascii	",\"fans\":%lu\000"
 5854      6E73223A 
 5854      256C7500 
 5855              	.LC116:
 5856 0538 2C226669 		.ascii	",\"filament\":\000"
 5856      6C616D65 
 5856      6E74223A 
 5856      00
 5857 0545 000000   		.space	3
 5858              	.LC117:
 5859 0548 2C226F66 		.ascii	",\"offsets\":[\000"
 5859      66736574 
 5859      73223A5B 
 5859      00
 5860 0555 000000   		.space	3
 5861              	.LC118:
 5862 0558 2C226D63 		.ascii	",\"mcutemp\":{\"min\":%.1f,\"cur\":%.1f,\"max\":%.1"
ARM GAS  /tmp/ccgYgJck.s 			page 109


 5862      7574656D 
 5862      70223A7B 
 5862      226D696E 
 5862      223A252E 
 5863 0583 667D00   		.ascii	"f}\000"
 5864 0586 0000     		.space	2
 5865              	.LC119:
 5866 0588 2C227669 		.ascii	",\"vin\":{\"min\":%.1f,\"cur\":%.1f,\"max\":%.1f}\000"
 5866      6E223A7B 
 5866      226D696E 
 5866      223A252E 
 5866      31662C22 
 5867 05b2 0000     		.space	2
 5868              	.LC120:
 5869 05b4 2C226375 		.ascii	",\"currentLayer\":%d\000"
 5869      7272656E 
 5869      744C6179 
 5869      6572223A 
 5869      256400
 5870 05c7 00       		.space	1
 5871              	.LC121:
 5872 05c8 2C226375 		.ascii	",\"currentLayerTime\":%.1f\000"
 5872      7272656E 
 5872      744C6179 
 5872      65725469 
 5872      6D65223A 
 5873 05e1 000000   		.space	3
 5874              	.LC122:
 5875 05e4 2C226578 		.ascii	",\"extrRaw\":\000"
 5875      74725261 
 5875      77223A00 
 5876              	.LC123:
 5877 05f0 5D2C2266 		.ascii	"],\"fractionPrinted\":%.1f\000"
 5877      72616374 
 5877      696F6E50 
 5877      72696E74 
 5877      6564223A 
 5878 0609 000000   		.space	3
 5879              	.LC124:
 5880 060c 2C226669 		.ascii	",\"filePosition\":%lu\000"
 5880      6C65506F 
 5880      73697469 
 5880      6F6E223A 
 5880      256C7500 
 5881              	.LC125:
 5882 0620 2C226669 		.ascii	",\"firstLayerDuration\":%.1f\000"
 5882      7273744C 
 5882      61796572 
 5882      44757261 
 5882      74696F6E 
 5883 063b 00       		.space	1
 5884              	.LC126:
 5885 063c 2C226669 		.ascii	",\"firstLayerHeight\":%.2f\000"
 5885      7273744C 
 5885      61796572 
 5885      48656967 
 5885      6874223A 
ARM GAS  /tmp/ccgYgJck.s 			page 110


 5886 0655 000000   		.space	3
 5887              	.LC127:
 5888 0658 2C227072 		.ascii	",\"printDuration\":%.1f\000"
 5888      696E7444 
 5888      75726174 
 5888      696F6E22 
 5888      3A252E31 
 5889 066e 0000     		.space	2
 5890              	.LC128:
 5891 0670 2C227761 		.ascii	",\"warmUpDuration\":%.1f\000"
 5891      726D5570 
 5891      44757261 
 5891      74696F6E 
 5891      223A252E 
 5892 0687 00       		.space	1
 5893              	.LC129:
 5894 0688 2C227469 		.ascii	",\"timesLeft\":{\"file\":%.1f\000"
 5894      6D65734C 
 5894      65667422 
 5894      3A7B2266 
 5894      696C6522 
 5895 06a2 0000     		.space	2
 5896              	.LC130:
 5897 06a4 2C226669 		.ascii	",\"filament\":%.1f\000"
 5897      6C616D65 
 5897      6E74223A 
 5897      252E3166 
 5897      00
 5898 06b5 000000   		.space	3
 5899              	.LC131:
 5900 06b8 2C226C61 		.ascii	",\"layer\":%.1f}\000"
 5900      79657222 
 5900      3A252E31 
 5900      667D00
 5901 06c7 00       		.space	1
 5902              	.LC132:
 5903 06c8 2C227365 		.ascii	",\"seq\":%lu,\"resp\":\000"
 5903      71223A25 
 5903      6C752C22 
 5903      72657370 
 5903      223A00
 5904 06db 00       		.space	1
 5905              	.LC133:
 5906 06dc 2C226F75 		.ascii	",\"output\":{\000"
 5906      74707574 
 5906      223A7B00 
 5907              	.LC134:
 5908 06e8 22626565 		.ascii	"\"beepDuration\":%u,\"beepFrequency\":%u\000"
 5908      70447572 
 5908      6174696F 
 5908      6E223A25 
 5908      752C2262 
 5909 070d 000000   		.space	3
 5910              	.LC135:
 5911 0710 5D2C2278 		.ascii	"],\"xyz\":\000"
 5911      797A223A 
 5911      00
ARM GAS  /tmp/ccgYgJck.s 			page 111


 5912 0719 000000   		.space	3
 5913              	.LC136:
 5914 071c 5D2C226D 		.ascii	"],\"machine\":\000"
 5914      61636869 
 5914      6E65223A 
 5914      00
 5915              		.section	.rodata._ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb.str1.4,"aMS",%progbits,1
 5916              		.align	2
 5917              	.LC38:
 5918 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 5918      636F6465 
 5918      732F00
 5919 000b 00       		.space	1
 5920              	.LC39:
 5921 000c 7B226572 		.ascii	"{\"err\":0,\"size\":%lu,\000"
 5921      72223A30 
 5921      2C227369 
 5921      7A65223A 
 5921      256C752C 
 5922 0021 000000   		.space	3
 5923              	.LC40:
 5924 0024 226C6173 		.ascii	"\"lastModified\":\"%04u-%02u-%02uT%02u:%02u:%02u\","
 5924      744D6F64 
 5924      69666965 
 5924      64223A22 
 5924      25303475 
 5925 0053 00       		.ascii	"\000"
 5926              	.LC41:
 5927 0054 22686569 		.ascii	"\"height\":%.2f,\"firstLayerHeight\":%.2f,\"layerHe"
 5927      67687422 
 5927      3A252E32 
 5927      662C2266 
 5927      69727374 
 5928 0082 69676874 		.ascii	"ight\":%.2f,\000"
 5928      223A252E 
 5928      32662C00 
 5929 008e 0000     		.space	2
 5930              	.LC42:
 5931 0090 22707269 		.ascii	"\"printTime\":%lu,\000"
 5931      6E745469 
 5931      6D65223A 
 5931      256C752C 
 5931      00
 5932 00a1 000000   		.space	3
 5933              	.LC43:
 5934 00a4 2273696D 		.ascii	"\"simulatedTime\":%lu,\000"
 5934      756C6174 
 5934      65645469 
 5934      6D65223A 
 5934      256C752C 
 5935 00b9 000000   		.space	3
 5936              	.LC44:
 5937 00bc 2266696C 		.ascii	"\"filament\":\000"
 5937      616D656E 
 5937      74223A00 
 5938              	.LC45:
 5939 00c8 2563252E 		.ascii	"%c%.1f\000"
ARM GAS  /tmp/ccgYgJck.s 			page 112


 5939      316600
 5940 00cf 00       		.space	1
 5941              	.LC46:
 5942 00d0 5D2C2267 		.ascii	"],\"generatedBy\":\000"
 5942      656E6572 
 5942      61746564 
 5942      4279223A 
 5942      00
 5943 00e1 000000   		.space	3
 5944              	.LC47:
 5945 00e4 7D00     		.ascii	"}\000"
 5946 00e6 0000     		.space	2
 5947              	.LC48:
 5948 00e8 7B226572 		.ascii	"{\"err\":1}\000"
 5948      72223A31 
 5948      7D00
 5949              		.section	.rodata._ZN6RepRap19GetFilelistResponseEPKcj.str1.4,"aMS",%progbits,1
 5950              		.align	2
 5951              	.LC34:
 5952 0000 7B227479 		.ascii	"{\"type\":\"%c\",\"name\":\000"
 5952      7065223A 
 5952      22256322 
 5952      2C226E61 
 5952      6D65223A 
 5953 0015 000000   		.space	3
 5954              	.LC35:
 5955 0018 2C227369 		.ascii	",\"size\":%lu\000"
 5955      7A65223A 
 5955      256C7500 
 5956              	.LC36:
 5957 0024 2C226461 		.ascii	",\"date\":\"%04u-%02u-%02uT%02u:%02u:%02u\"}\000"
 5957      7465223A 
 5957      22253034 
 5957      752D2530 
 5957      32752D25 
 5958 004d 000000   		.space	3
 5959              	.LC37:
 5960 0050 5D2C226E 		.ascii	"],\"next\":%u}\000"
 5960      65787422 
 5960      3A25757D 
 5960      00
 5961              		.section	.rodata._ZN6RepRap23GetLegacyStatusResponseEhi.str1.4,"aMS",%progbits,1
 5962              		.align	2
 5963              	.LC137:
 5964 0000 7B227374 		.ascii	"{\"status\":\"%c\",\"heaters\":\000"
 5964      61747573 
 5964      223A2225 
 5964      63222C22 
 5964      68656174 
 5965 001a 0000     		.space	2
 5966              	.LC138:
 5967 001c 5B252E31 		.ascii	"[%.1f\000"
 5967      6600
 5968 0022 0000     		.space	2
 5969              	.LC139:
 5970 0024 2C226163 		.ascii	",\"active\":[%.1f\000"
 5970      74697665 
ARM GAS  /tmp/ccgYgJck.s 			page 113


 5970      223A5B25 
 5970      2E316600 
 5971              	.LC140:
 5972 0034 2C252E31 		.ascii	",%.1f\000"
 5972      6600
 5973 003a 0000     		.space	2
 5974              	.LC141:
 5975 003c 2C227374 		.ascii	",\"standby\":[%.1f\000"
 5975      616E6462 
 5975      79223A5B 
 5975      252E3166 
 5975      00
 5976 004d 000000   		.space	3
 5977              	.LC142:
 5978 0050 2C226873 		.ascii	",\"hstat\":[%d\000"
 5978      74617422 
 5978      3A5B2564 
 5978      00
 5979 005d 000000   		.space	3
 5980              	.LC143:
 5981 0060 2C256400 		.ascii	",%d\000"
 5982              	.LC144:
 5983 0064 2C22706F 		.ascii	",\"pos\":\000"
 5983      73223A00 
 5984              	.LC145:
 5985 006c 5D2C2273 		.ascii	"],\"sfactor\":%.2f,\"efactor\":\000"
 5985      66616374 
 5985      6F72223A 
 5985      252E3266 
 5985      2C226566 
 5986              	.LC146:
 5987 0088 2C226261 		.ascii	",\"babystep\":%.03f\000"
 5987      62797374 
 5987      6570223A 
 5987      252E3033 
 5987      6600
 5988 009a 0000     		.space	2
 5989              	.LC147:
 5990 009c 2C22746F 		.ascii	",\"tool\":%d\000"
 5990      6F6C223A 
 5990      256400
 5991 00a7 00       		.space	1
 5992              	.LC148:
 5993 00a8 2C227072 		.ascii	",\"probe\":\"%d (%d)\"\000"
 5993      6F626522 
 5993      3A222564 
 5993      20282564 
 5993      292200
 5994 00bb 00       		.space	1
 5995              	.LC149:
 5996 00bc 2C227072 		.ascii	",\"probe\":\"%d (%d, %d)\"\000"
 5996      6F626522 
 5996      3A222564 
 5996      20282564 
 5996      2C202564 
 5997 00d3 00       		.space	1
 5998              	.LC150:
ARM GAS  /tmp/ccgYgJck.s 			page 114


 5999 00d4 2C227072 		.ascii	",\"probe\":\"%d\"\000"
 5999      6F626522 
 5999      3A222564 
 5999      2200
 6000 00e2 0000     		.space	2
 6001              	.LC151:
 6002 00e4 5D2C2266 		.ascii	"],\"fanRPM\":%u\000"
 6002      616E5250 
 6002      4D223A25 
 6002      7500
 6003 00f2 0000     		.space	2
 6004              	.LC152:
 6005 00f4 2C22686F 		.ascii	",\"homed\":\000"
 6005      6D656422 
 6005      3A00
 6006 00fe 0000     		.space	2
 6007              	.LC153:
 6008 0100 2C226672 		.ascii	",\"fraction_printed\":%.4f\000"
 6008      61637469 
 6008      6F6E5F70 
 6008      72696E74 
 6008      6564223A 
 6009 0119 000000   		.space	3
 6010              	.LC154:
 6011 011c 2C226D73 		.ascii	",\"msgBox.mode\":%d,\"msgBox.seq\":%lu,\"msgBox.tim"
 6011      67426F78 
 6011      2E6D6F64 
 6011      65223A25 
 6011      642C226D 
 6012 014a 656F7574 		.ascii	"eout\":%.1f,\"msgBox.controls\":%lu\000"
 6012      223A252E 
 6012      31662C22 
 6012      6D736742 
 6012      6F782E63 
 6013 016b 00       		.space	1
 6014              	.LC155:
 6015 016c 2C226D73 		.ascii	",\"msgBox.msg\":\000"
 6015      67426F78 
 6015      2E6D7367 
 6015      223A00
 6016 017b 00       		.space	1
 6017              	.LC156:
 6018 017c 2C226D73 		.ascii	",\"msgBox.title\":\000"
 6018      67426F78 
 6018      2E746974 
 6018      6C65223A 
 6018      00
 6019 018d 000000   		.space	3
 6020              	.LC157:
 6021 0190 2C226D73 		.ascii	",\"msgBox.mode\":-1\000"
 6021      67426F78 
 6021      2E6D6F64 
 6021      65223A2D 
 6021      3100
 6022 01a2 0000     		.space	2
 6023              	.LC158:
 6024 01a4 2C227469 		.ascii	",\"timesLeft\":[%.1f,%.1f,%.1f]\000"
ARM GAS  /tmp/ccgYgJck.s 			page 115


 6024      6D65734C 
 6024      65667422 
 6024      3A5B252E 
 6024      31662C25 
 6025 01c2 0000     		.space	2
 6026              	.LC159:
 6027 01c4 2C226765 		.ascii	",\"geometry\":\"%s\",\"axes\":%u,\"axisNames\":\"%s"
 6027      6F6D6574 
 6027      7279223A 
 6027      22257322 
 6027      2C226178 
 6028 01ee 222C2276 		.ascii	"\",\"volumes\":%u,\"numTools\":%u,\"myName\":\000"
 6028      6F6C756D 
 6028      6573223A 
 6028      25752C22 
 6028      6E756D54 
 6029 0215 000000   		.space	3
 6030              	.LC160:
 6031 0218 2C226669 		.ascii	",\"firmwareName\":\000"
 6031      726D7761 
 6031      72654E61 
 6031      6D65223A 
 6031      00
 6032 0229 000000   		.space	3
 6033              	.LC161:
 6034 022c 2C227365 		.ascii	",\"seq\":%d,\"resp\":\000"
 6034      71223A25 
 6034      642C2272 
 6034      65737022 
 6034      3A00
 6035              		.section	.rodata._ZN6RepRap4InitEv.str1.4,"aMS",%progbits,1
 6036              		.align	2
 6037              	.LC162:
 6038 0000 636F6E66 		.ascii	"config.g\000"
 6038      69672E67 
 6038      00
 6039 0009 000000   		.space	3
 6040              	.LC163:
 6041 000c 636F6E66 		.ascii	"config.g.bak\000"
 6041      69672E67 
 6041      2E62616B 
 6041      00
 6042 0019 000000   		.space	3
 6043              	.LC164:
 6044 001c 546F6F6C 		.ascii	"ToolList\000"
 6044      4C697374 
 6044      00
 6045 0025 000000   		.space	3
 6046              	.LC165:
 6047 0028 4D657373 		.ascii	"MessageBox\000"
 6047      61676542 
 6047      6F7800
 6048 0033 00       		.space	1
 6049              	.LC166:
 6050 0034 4D792044 		.ascii	"My Duet\000"
 6050      75657400 
 6051              	.LC167:
ARM GAS  /tmp/ccgYgJck.s 			page 116


 6052 003c 25732056 		.ascii	"%s Version %s dated %s\012\000"
 6052      65727369 
 6052      6F6E2025 
 6052      73206461 
 6052      74656420 
 6053              	.LC168:
 6054 0054 0A457865 		.ascii	"\012Executing \000"
 6054      63757469 
 6054      6E672000 
 6055              	.LC169:
 6056 0060 303A2F73 		.ascii	"0:/sys/\000"
 6056      79732F00 
 6057              	.LC170:
 6058 0068 25732E2E 		.ascii	"%s...\000"
 6058      2E00
 6059 006e 0000     		.space	2
 6060              	.LC171:
 6061 0070 25732028 		.ascii	"%s (no configuration file found)...\000"
 6061      6E6F2063 
 6061      6F6E6669 
 6061      67757261 
 6061      74696F6E 
 6062              	.LC172:
 6063 0094 446F6E65 		.ascii	"Done!\012\000"
 6063      210A00
 6064 009b 00       		.space	1
 6065              	.LC173:
 6066 009c 4572726F 		.ascii	"Error, not found\012\000"
 6066      722C206E 
 6066      6F742066 
 6066      6F756E64 
 6066      0A00
 6067 00ae 0000     		.space	2
 6068              	.LC174:
 6069 00b0 25732069 		.ascii	"%s is up and running.\012\000"
 6069      73207570 
 6069      20616E64 
 6069      2072756E 
 6069      6E696E67 
 6070              		.section	.rodata._ZN6RepRap4SpinEv.part.20.str1.4,"aMS",%progbits,1
 6071              		.align	2
 6072              	.LC7:
 6073 0000 546F6F6C 		.ascii	"Tool %d was not driven because its heater temperatu"
 6073      20256420 
 6073      77617320 
 6073      6E6F7420 
 6073      64726976 
 6074 0033 72657320 		.ascii	"res were not high enough or it has a heater fault\012"
 6074      77657265 
 6074      206E6F74 
 6074      20686967 
 6074      6820656E 
 6075 0065 00       		.ascii	"\000"
 6076              		.section	.rodata._ZN6RepRap6TimingE11MessageType.str1.4,"aMS",%progbits,1
 6077              		.align	2
 6078              	.LC0:
 6079 0000 536C6F77 		.ascii	"Slowest loop: %.2fms; fastest: %.2fms\012\000"
ARM GAS  /tmp/ccgYgJck.s 			page 117


 6079      65737420 
 6079      6C6F6F70 
 6079      3A20252E 
 6079      32666D73 
 6080              		.section	.rodata._ZNK6RepRap13NoPasswordSetEv.str1.4,"aMS",%progbits,1
 6081              		.align	2
 6082              	.LC176:
 6083 0000 72657072 		.ascii	"reprap\000"
 6083      617000
 6084              		.section	.rodata._ZNK6RepRap19ReportInternalErrorEPKcS1_i.str1.4,"aMS",%progbits,1
 6085              		.align	2
 6086              	.LC175:
 6087 0000 496E7465 		.ascii	"Internal Error in %s at %s(%d)\012\000"
 6087      726E616C 
 6087      20457272 
 6087      6F722069 
 6087      6E202573 
 6088              		.section	.rodata._ZNK6RepRap19WriteToolParametersEP9FileStore.str1.4,"aMS",%progbits,1
 6089              		.align	2
 6090              	.LC177:
 6091 0000 3B205072 		.ascii	"; Probed tool offsets\012\000"
 6091      6F626564 
 6091      20746F6F 
 6091      6C206F66 
 6091      66736574 
 6092 0017 00       		.space	1
 6093              	.LC178:
 6094 0018 47313020 		.ascii	"G10 P%d\000"
 6094      50256400 
 6095              	.LC179:
 6096 0020 20256325 		.ascii	" %c%.2f\000"
 6096      2E326600 
 6097              		.section	.rodata._ZNK6RepRap9PrintToolEiRK9StringRef.str1.4,"aMS",%progbits,1
 6098              		.align	2
 6099              	.LC11:
 6100 0000 4572726F 		.ascii	"Error: Attempt to print details of non-existent too"
 6100      723A2041 
 6100      7474656D 
 6100      70742074 
 6100      6F207072 
 6101 0033 6C2E0A00 		.ascii	"l.\012\000"
 6102              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
