ARM GAS  /tmp/ccDCB0nG.s 			page 1


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
  11              		.file	"RepRap.cpp"
  12              		.section	.text.hsmciIdle,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	hsmciIdle
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	hsmciIdle, %function
  21              	hsmciIdle:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 044B     		ldr	r3, .L4
  26 0002 93F83A30 		ldrb	r3, [r3, #58]	@ zero_extendqisi2
  27 0006 0D2B     		cmp	r3, #13
  28 0008 02D0     		beq	.L1
  29 000a 0020     		movs	r0, #0
  30 000c FFF7FEBF 		b	_ZN15FilamentMonitor4SpinEb
  31              	.L1:
  32 0010 7047     		bx	lr
  33              	.L5:
  34 0012 00BF     		.align	2
  35              	.L4:
  36 0014 00000000 		.word	reprap
  37              		.size	hsmciIdle, .-hsmciIdle
  38              		.section	.text._ZN6RepRap4ExitEv,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	_ZN6RepRap4ExitEv
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu softvfp
  46              		.type	_ZN6RepRap4ExitEv, %function
  47              	_ZN6RepRap4ExitEv:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50 0000 10B5     		push	{r4, lr}
  51 0002 0023     		movs	r3, #0
  52 0004 0446     		mov	r4, r0
  53 0006 C068     		ldr	r0, [r0, #12]
  54 0008 84F84930 		strb	r3, [r4, #73]
  55 000c FFF7FEFF 		bl	_ZN4Heat4ExitEv
  56 0010 A068     		ldr	r0, [r4, #8]
  57 0012 FFF7FEFF 		bl	_ZN4Move4ExitEv
ARM GAS  /tmp/ccDCB0nG.s 			page 2


  58 0016 2069     		ldr	r0, [r4, #16]
  59 0018 FFF7FEFF 		bl	_ZN6GCodes4ExitEv
  60 001c 2068     		ldr	r0, [r4]
  61 001e BDE81040 		pop	{r4, lr}
  62 0022 FFF7FEBF 		b	_ZN8Platform4ExitEv
  63              		.size	_ZN6RepRap4ExitEv, .-_ZN6RepRap4ExitEv
  64              		.global	__aeabi_ui2f
  65              		.global	__aeabi_fmul
  66              		.global	__aeabi_f2d
  67 0026 00BF     		.section	.text._ZN6RepRap6TimingE11MessageType,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	_ZN6RepRap6TimingE11MessageType
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu softvfp
  75              		.type	_ZN6RepRap6TimingE11MessageType, %function
  76              	_ZN6RepRap6TimingE11MessageType:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79 0000 30B5     		push	{r4, r5, lr}
  80 0002 0446     		mov	r4, r0
  81 0004 85B0     		sub	sp, sp, #20
  82 0006 C06B     		ldr	r0, [r0, #60]
  83 0008 0D46     		mov	r5, r1
  84 000a FFF7FEFF 		bl	__aeabi_ui2f
  85 000e 0F49     		ldr	r1, .L10
  86 0010 FFF7FEFF 		bl	__aeabi_fmul
  87 0014 FFF7FEFF 		bl	__aeabi_f2d
  88 0018 CDE90201 		strd	r0, [sp, #8]
  89 001c 206C     		ldr	r0, [r4, #64]
  90 001e FFF7FEFF 		bl	__aeabi_ui2f
  91 0022 0A49     		ldr	r1, .L10
  92 0024 FFF7FEFF 		bl	__aeabi_fmul
  93 0028 FFF7FEFF 		bl	__aeabi_f2d
  94 002c 2368     		ldr	r3, [r4]
  95 002e 084A     		ldr	r2, .L10+4
  96 0030 CDE90001 		strd	r0, [sp]
  97 0034 1846     		mov	r0, r3
  98 0036 2946     		mov	r1, r5
  99 0038 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 100 003c 4FF0FF32 		mov	r2, #-1
 101 0040 0023     		movs	r3, #0
 102 0042 E263     		str	r2, [r4, #60]
 103 0044 2364     		str	r3, [r4, #64]
 104 0046 05B0     		add	sp, sp, #20
 105              		@ sp needed
 106 0048 30BD     		pop	{r4, r5, pc}
 107              	.L11:
 108 004a 00BF     		.align	2
 109              	.L10:
 110 004c 90BAC73A 		.word	986167952
 111 0050 00000000 		.word	.LC0
 112              		.size	_ZN6RepRap6TimingE11MessageType, .-_ZN6RepRap6TimingE11MessageType
 113              		.section	.text._ZN6RepRap11DiagnosticsE11MessageType,"ax",%progbits
 114              		.align	1
ARM GAS  /tmp/ccDCB0nG.s 			page 3


 115              		.p2align 2,,3
 116              		.global	_ZN6RepRap11DiagnosticsE11MessageType
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu softvfp
 121              		.type	_ZN6RepRap11DiagnosticsE11MessageType, %function
 122              	_ZN6RepRap11DiagnosticsE11MessageType:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125 0000 70B5     		push	{r4, r5, r6, lr}
 126 0002 0546     		mov	r5, r0
 127 0004 82B0     		sub	sp, sp, #8
 128 0006 174A     		ldr	r2, .L14
 129 0008 0068     		ldr	r0, [r0]
 130 000a 0C46     		mov	r4, r1
 131 000c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 132 0010 2E68     		ldr	r6, [r5]
 133 0012 3046     		mov	r0, r6
 134 0014 FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 135 0018 134B     		ldr	r3, .L14+4
 136 001a 144A     		ldr	r2, .L14+8
 137 001c 2146     		mov	r1, r4
 138 001e 0190     		str	r0, [sp, #4]
 139 0020 0093     		str	r3, [sp]
 140 0022 3046     		mov	r0, r6
 141 0024 124B     		ldr	r3, .L14+12
 142 0026 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 143 002a 2046     		mov	r0, r4
 144 002c FFF7FEFF 		bl	_ZN12OutputBuffer11DiagnosticsE11MessageType
 145 0030 2046     		mov	r0, r4
 146 0032 FFF7FEFF 		bl	_ZN5Tasks11DiagnosticsE11MessageType
 147 0036 2146     		mov	r1, r4
 148 0038 2868     		ldr	r0, [r5]
 149 003a FFF7FEFF 		bl	_ZN8Platform11DiagnosticsE11MessageType
 150 003e 2146     		mov	r1, r4
 151 0040 A868     		ldr	r0, [r5, #8]
 152 0042 FFF7FEFF 		bl	_ZN4Move11DiagnosticsE11MessageType
 153 0046 2146     		mov	r1, r4
 154 0048 E868     		ldr	r0, [r5, #12]
 155 004a FFF7FEFF 		bl	_ZN4Heat11DiagnosticsE11MessageType
 156 004e 2869     		ldr	r0, [r5, #16]
 157 0050 2146     		mov	r1, r4
 158 0052 FFF7FEFF 		bl	_ZN6GCodes11DiagnosticsE11MessageType
 159 0056 2046     		mov	r0, r4
 160 0058 02B0     		add	sp, sp, #8
 161              		@ sp needed
 162 005a BDE87040 		pop	{r4, r5, r6, lr}
 163 005e FFF7FEBF 		b	_ZN15FilamentMonitor11DiagnosticsE11MessageType
 164              	.L15:
 165 0062 00BF     		.align	2
 166              	.L14:
 167 0064 00000000 		.word	.LC1
 168 0068 54000000 		.word	.LC4
 169 006c 34000000 		.word	.LC3
 170 0070 18000000 		.word	.LC2
 171              		.size	_ZN6RepRap11DiagnosticsE11MessageType, .-_ZN6RepRap11DiagnosticsE11MessageType
ARM GAS  /tmp/ccDCB0nG.s 			page 4


 172              		.section	.text._ZN6RepRap4SpinEv.part.26,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu softvfp
 179              		.type	_ZN6RepRap4SpinEv.part.26, %function
 180              	_ZN6RepRap4SpinEv.part.26:
 181              		@ args = 0, pretend = 0, frame = 8
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 184 0004 0446     		mov	r4, r0
 185 0006 0025     		movs	r5, #0
 186 0008 384B     		ldr	r3, .L37
 187 000a 82B0     		sub	sp, sp, #8
 188 000c 0068     		ldr	r0, [r0]
 189 000e 1F69     		ldr	r7, [r3, #16]
 190 0010 2587     		strh	r5, [r4, #56]	@ movhi
 191 0012 84F83A50 		strb	r5, [r4, #58]
 192 0016 FFF7FEFF 		bl	_ZN8Platform4SpinEv
 193 001a 0323     		movs	r3, #3
 194 001c 2069     		ldr	r0, [r4, #16]
 195 001e 84F83A30 		strb	r3, [r4, #58]
 196 0022 2587     		strh	r5, [r4, #56]	@ movhi
 197 0024 FFF7FEFF 		bl	_ZN6GCodes4SpinEv
 198 0028 0423     		movs	r3, #4
 199 002a A068     		ldr	r0, [r4, #8]
 200 002c 84F83A30 		strb	r3, [r4, #58]
 201 0030 2587     		strh	r5, [r4, #56]	@ movhi
 202 0032 FFF7FEFF 		bl	_ZN4Move4SpinEv
 203 0036 0523     		movs	r3, #5
 204 0038 E068     		ldr	r0, [r4, #12]
 205 003a 84F83A30 		strb	r3, [r4, #58]
 206 003e 2587     		strh	r5, [r4, #56]	@ movhi
 207 0040 FFF7FEFF 		bl	_ZN4Heat4SpinEv
 208 0044 0923     		movs	r3, #9
 209 0046 E069     		ldr	r0, [r4, #28]
 210 0048 84F83A30 		strb	r3, [r4, #58]
 211 004c 2587     		strh	r5, [r4, #56]	@ movhi
 212 004e FFF7FEFF 		bl	_ZN12PrintMonitor4SpinEv
 213 0052 0D23     		movs	r3, #13
 214 0054 2587     		strh	r5, [r4, #56]	@ movhi
 215 0056 84F83A30 		strb	r3, [r4, #58]
 216 005a 0120     		movs	r0, #1
 217 005c FFF7FEFF 		bl	_ZN15FilamentMonitor4SpinEb
 218 0060 1023     		movs	r3, #16
 219 0062 B4F8AC13 		ldrh	r1, [r4, #940]
 220 0066 2587     		strh	r5, [r4, #56]	@ movhi
 221 0068 84F83A30 		strb	r3, [r4, #58]
 222 006c A9B9     		cbnz	r1, .L35
 223              	.L17:
 224 006e FFF7FEFF 		bl	millis
 225 0072 236B     		ldr	r3, [r4, #48]
 226 0074 0646     		mov	r6, r0
 227 0076 C31A     		subs	r3, r0, r3
 228 0078 B3F57A6F 		cmp	r3, #4000
ARM GAS  /tmp/ccDCB0nG.s 			page 5


 229 007c 13D2     		bcs	.L36
 230              	.L18:
 231 007e 1B4B     		ldr	r3, .L37
 232 0080 E26B     		ldr	r2, [r4, #60]
 233 0082 1B69     		ldr	r3, [r3, #16]
 234 0084 DB1B     		subs	r3, r3, r7
 235 0086 9342     		cmp	r3, r2
 236 0088 226C     		ldr	r2, [r4, #64]
 237 008a 38BF     		it	cc
 238 008c E363     		strcc	r3, [r4, #60]
 239 008e 9342     		cmp	r3, r2
 240 0090 88BF     		it	hi
 241 0092 2364     		strhi	r3, [r4, #64]
 242 0094 02B0     		add	sp, sp, #8
 243              		@ sp needed
 244 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 245              	.L35:
 246 009a 2046     		mov	r0, r4
 247 009c FFF7FEFF 		bl	_ZN6RepRap11DiagnosticsE11MessageType
 248 00a0 A4F8AC53 		strh	r5, [r4, #940]	@ movhi
 249 00a4 E3E7     		b	.L17
 250              	.L36:
 251 00a6 6846     		mov	r0, sp
 252 00a8 4FF0FF32 		mov	r2, #-1
 253 00ac 04F12001 		add	r1, r4, #32
 254 00b0 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 255 00b4 A56A     		ldr	r5, [r4, #40]
 256 00b6 A5B1     		cbz	r5, .L21
 257 00b8 DFF83480 		ldr	r8, .L37+4
 258 00bc 01E0     		b	.L22
 259              	.L20:
 260 00be 2D68     		ldr	r5, [r5]
 261 00c0 7DB1     		cbz	r5, .L21
 262              	.L22:
 263 00c2 2846     		mov	r0, r5
 264 00c4 FFF7FEFF 		bl	_ZN4Tool25DisplayColdExtrudeWarningEv
 265 00c8 0028     		cmp	r0, #0
 266 00ca F8D0     		beq	.L20
 267 00cc 6B6E     		ldr	r3, [r5, #100]
 268 00ce 4246     		mov	r2, r8
 269 00d0 40F2B521 		movw	r1, #693
 270 00d4 2068     		ldr	r0, [r4]
 271 00d6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 272 00da 2D68     		ldr	r5, [r5]
 273 00dc 2663     		str	r6, [r4, #48]
 274 00de 002D     		cmp	r5, #0
 275 00e0 EFD1     		bne	.L22
 276              	.L21:
 277 00e2 6846     		mov	r0, sp
 278 00e4 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 279 00e8 C9E7     		b	.L18
 280              	.L38:
 281 00ea 00BF     		.align	2
 282              	.L37:
 283 00ec 00400840 		.word	1074282496
 284 00f0 00000000 		.word	.LC5
 285              		.size	_ZN6RepRap4SpinEv.part.26, .-_ZN6RepRap4SpinEv.part.26
ARM GAS  /tmp/ccDCB0nG.s 			page 6


 286              		.section	.text._ZN6RepRap4SpinEv,"ax",%progbits
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	_ZN6RepRap4SpinEv
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu softvfp
 294              		.type	_ZN6RepRap4SpinEv, %function
 295              	_ZN6RepRap4SpinEv:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298              		@ link register save eliminated.
 299 0000 90F84930 		ldrb	r3, [r0, #73]	@ zero_extendqisi2
 300 0004 03B9     		cbnz	r3, .L41
 301 0006 7047     		bx	lr
 302              	.L41:
 303 0008 FFF7FEBF 		b	_ZN6RepRap4SpinEv.part.26
 304              		.size	_ZN6RepRap4SpinEv, .-_ZN6RepRap4SpinEv
 305              		.section	.text._ZN6RepRap4InitEv,"ax",%progbits
 306              		.align	1
 307              		.p2align 2,,3
 308              		.global	_ZN6RepRap4InitEv
 309              		.syntax unified
 310              		.thumb
 311              		.thumb_func
 312              		.fpu softvfp
 313              		.type	_ZN6RepRap4InitEv, %function
 314              	_ZN6RepRap4InitEv:
 315              		@ args = 0, pretend = 0, frame = 8
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317 0000 70B5     		push	{r4, r5, r6, lr}
 318 0002 0446     		mov	r4, r0
 319 0004 0646     		mov	r6, r0
 320 0006 84B0     		sub	sp, sp, #16
 321 0008 2030     		adds	r0, r0, #32
 322 000a 3E49     		ldr	r1, .L56
 323 000c FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 324 0010 3D49     		ldr	r1, .L56+4
 325 0012 04F12400 		add	r0, r4, #36
 326 0016 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 327 001a 56F8610B 		ldr	r0, [r6], #97
 328 001e FFF7FEFF 		bl	_ZN8Platform4InitEv
 329 0022 2923     		movs	r3, #41
 330 0024 0125     		movs	r5, #1
 331 0026 3949     		ldr	r1, .L56+8
 332 0028 02A8     		add	r0, sp, #8
 333 002a 0393     		str	r3, [sp, #12]
 334 002c 0296     		str	r6, [sp, #8]
 335 002e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 336 0032 2069     		ldr	r0, [r4, #16]
 337 0034 FFF7FEFF 		bl	_ZN6GCodes4InitEv
 338 0038 A068     		ldr	r0, [r4, #8]
 339 003a FFF7FEFF 		bl	_ZN4Move4InitEv
 340 003e E068     		ldr	r0, [r4, #12]
 341 0040 FFF7FEFF 		bl	_ZN4Heat4InitEv
 342 0044 E069     		ldr	r0, [r4, #28]
ARM GAS  /tmp/ccDCB0nG.s 			page 7


 343 0046 FFF7FEFF 		bl	_ZN12PrintMonitor4InitEv
 344 004a FFF7FEFF 		bl	_ZN15FilamentMonitor10InitStaticEv
 345 004e 304A     		ldr	r2, .L56+12
 346 0050 304B     		ldr	r3, .L56+16
 347 0052 2068     		ldr	r0, [r4]
 348 0054 84F84950 		strb	r5, [r4, #73]
 349 0058 2946     		mov	r1, r5
 350 005a 0192     		str	r2, [sp, #4]
 351 005c 0093     		str	r3, [sp]
 352 005e 2E4A     		ldr	r2, .L56+20
 353 0060 2E4B     		ldr	r3, .L56+24
 354 0062 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 355 0066 2946     		mov	r1, r5
 356 0068 2068     		ldr	r0, [r4]
 357 006a 2D4A     		ldr	r2, .L56+28
 358 006c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 359 0070 2368     		ldr	r3, [r4]
 360 0072 2C49     		ldr	r1, .L56+32
 361 0074 2C4A     		ldr	r2, .L56+36
 362 0076 D3F86805 		ldr	r0, [r3, #1384]
 363 007a FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 364 007e 2946     		mov	r1, r5
 365 0080 0028     		cmp	r0, #0
 366 0082 2ED0     		beq	.L43
 367 0084 2068     		ldr	r0, [r4]
 368 0086 284B     		ldr	r3, .L56+36
 369 0088 284A     		ldr	r2, .L56+40
 370 008a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 371 008e 2649     		ldr	r1, .L56+36
 372 0090 2069     		ldr	r0, [r4, #16]
 373 0092 FFF7FEFF 		bl	_ZN6GCodes13RunConfigFileEPKc
 374 0096 20B9     		cbnz	r0, .L51
 375 0098 2EE0     		b	.L45
 376              	.L46:
 377 009a 2069     		ldr	r0, [r4, #16]
 378 009c FFF7FEFF 		bl	_ZNK6GCodes12IsDaemonBusyEv
 379 00a0 58B1     		cbz	r0, .L55
 380              	.L51:
 381 00a2 94F84930 		ldrb	r3, [r4, #73]	@ zero_extendqisi2
 382 00a6 002B     		cmp	r3, #0
 383 00a8 F7D0     		beq	.L46
 384 00aa 2046     		mov	r0, r4
 385 00ac FFF7FEFF 		bl	_ZN6RepRap4SpinEv.part.26
 386 00b0 2069     		ldr	r0, [r4, #16]
 387 00b2 FFF7FEFF 		bl	_ZNK6GCodes12IsDaemonBusyEv
 388 00b6 0028     		cmp	r0, #0
 389 00b8 F3D1     		bne	.L51
 390              	.L55:
 391 00ba 1D4A     		ldr	r2, .L56+44
 392 00bc 0121     		movs	r1, #1
 393 00be 2068     		ldr	r0, [r4]
 394 00c0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 395              	.L48:
 396 00c4 0025     		movs	r5, #0
 397 00c6 154B     		ldr	r3, .L56+24
 398 00c8 84F84B50 		strb	r5, [r4, #75]
 399 00cc 194A     		ldr	r2, .L56+48
ARM GAS  /tmp/ccDCB0nG.s 			page 8


 400 00ce 0121     		movs	r1, #1
 401 00d0 2068     		ldr	r0, [r4]
 402 00d2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 403 00d6 4FF0FF33 		mov	r3, #-1
 404 00da 2564     		str	r5, [r4, #64]
 405 00dc E363     		str	r3, [r4, #60]
 406 00de 04B0     		add	sp, sp, #16
 407              		@ sp needed
 408 00e0 70BD     		pop	{r4, r5, r6, pc}
 409              	.L43:
 410 00e2 2068     		ldr	r0, [r4]
 411 00e4 144B     		ldr	r3, .L56+52
 412 00e6 154A     		ldr	r2, .L56+56
 413 00e8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 414 00ec 1249     		ldr	r1, .L56+52
 415 00ee 2069     		ldr	r0, [r4, #16]
 416 00f0 FFF7FEFF 		bl	_ZN6GCodes13RunConfigFileEPKc
 417 00f4 0028     		cmp	r0, #0
 418 00f6 D4D1     		bne	.L51
 419              	.L45:
 420 00f8 114A     		ldr	r2, .L56+60
 421 00fa 0121     		movs	r1, #1
 422 00fc 2068     		ldr	r0, [r4]
 423 00fe FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 424 0102 DFE7     		b	.L48
 425              	.L57:
 426              		.align	2
 427              	.L56:
 428 0104 1C000000 		.word	.LC8
 429 0108 28000000 		.word	.LC9
 430 010c 34000000 		.word	.LC10
 431 0110 54000000 		.word	.LC12
 432 0114 54000000 		.word	.LC4
 433 0118 3C000000 		.word	.LC11
 434 011c 18000000 		.word	.LC2
 435 0120 64000000 		.word	.LC13
 436 0124 70000000 		.word	.LC14
 437 0128 00000000 		.word	.LC6
 438 012c 78000000 		.word	.LC15
 439 0130 A4000000 		.word	.LC17
 440 0134 C0000000 		.word	.LC19
 441 0138 0C000000 		.word	.LC7
 442 013c 80000000 		.word	.LC16
 443 0140 AC000000 		.word	.LC18
 444              		.size	_ZN6RepRap4InitEv, .-_ZN6RepRap4InitEv
 445              		.section	.text._ZN6RepRap13EmergencyStopEv,"ax",%progbits
 446              		.align	1
 447              		.p2align 2,,3
 448              		.global	_ZN6RepRap13EmergencyStopEv
 449              		.syntax unified
 450              		.thumb
 451              		.thumb_func
 452              		.fpu softvfp
 453              		.type	_ZN6RepRap13EmergencyStopEv, %function
 454              	_ZN6RepRap13EmergencyStopEv:
 455              		@ args = 0, pretend = 0, frame = 8
 456              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccDCB0nG.s 			page 9


 457 0000 0122     		movs	r2, #1
 458 0002 30B5     		push	{r4, r5, lr}
 459 0004 0369     		ldr	r3, [r0, #16]
 460 0006 83B0     		sub	sp, sp, #12
 461 0008 93F87C30 		ldrb	r3, [r3, #124]	@ zero_extendqisi2
 462 000c 0546     		mov	r5, r0
 463 000e 9342     		cmp	r3, r2
 464 0010 80F84820 		strb	r2, [r0, #72]
 465 0014 31D0     		beq	.L60
 466 0016 022B     		cmp	r3, #2
 467 0018 09D1     		bne	.L59
 468 001a 4FF4B264 		mov	r4, #1424
 469              	.L62:
 470 001e 2868     		ldr	r0, [r5]
 471 0020 2044     		add	r0, r0, r4
 472 0022 2034     		adds	r4, r4, #32
 473 0024 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 474 0028 B4F5C26F 		cmp	r4, #1552
 475 002c F7D1     		bne	.L62
 476              	.L59:
 477 002e 6846     		mov	r0, sp
 478 0030 4FF0FF32 		mov	r2, #-1
 479 0034 05F12001 		add	r1, r5, #32
 480 0038 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 481 003c AC6A     		ldr	r4, [r5, #40]
 482 003e 2CB1     		cbz	r4, .L64
 483              	.L65:
 484 0040 2046     		mov	r0, r4
 485 0042 FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 486 0046 2468     		ldr	r4, [r4]
 487 0048 002C     		cmp	r4, #0
 488 004a F9D1     		bne	.L65
 489              	.L64:
 490 004c 6846     		mov	r0, sp
 491 004e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 492 0052 E868     		ldr	r0, [r5, #12]
 493 0054 FFF7FEFF 		bl	_ZN4Heat4ExitEv
 494 0058 A868     		ldr	r0, [r5, #8]
 495 005a FFF7FEFF 		bl	_ZN4Move4ExitEv
 496 005e 2868     		ldr	r0, [r5]
 497 0060 FFF7FEFF 		bl	_ZN8Platform16DisableAllDrivesEv
 498 0064 A868     		ldr	r0, [r5, #8]
 499 0066 FFF7FEFF 		bl	_ZN4Move4ExitEv
 500 006a 2868     		ldr	r0, [r5]
 501 006c FFF7FEFF 		bl	_ZN8Platform16DisableAllDrivesEv
 502 0070 2868     		ldr	r0, [r5]
 503 0072 FFF7FEFF 		bl	_ZN8Platform11StopLoggingEv
 504 0076 03B0     		add	sp, sp, #12
 505              		@ sp needed
 506 0078 30BD     		pop	{r4, r5, pc}
 507              	.L60:
 508 007a 0021     		movs	r1, #0
 509 007c 0068     		ldr	r0, [r0]
 510 007e FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEf
 511 0082 D4E7     		b	.L59
 512              		.size	_ZN6RepRap13EmergencyStopEv, .-_ZN6RepRap13EmergencyStopEv
 513              		.section	.text._ZN6RepRap8SetDebugEb,"ax",%progbits
ARM GAS  /tmp/ccDCB0nG.s 			page 10


 514              		.align	1
 515              		.p2align 2,,3
 516              		.global	_ZN6RepRap8SetDebugEb
 517              		.syntax unified
 518              		.thumb
 519              		.thumb_func
 520              		.fpu softvfp
 521              		.type	_ZN6RepRap8SetDebugEb, %function
 522              	_ZN6RepRap8SetDebugEb:
 523              		@ args = 0, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525              		@ link register save eliminated.
 526 0000 0029     		cmp	r1, #0
 527 0002 4FF6FF73 		movw	r3, #65535
 528 0006 08BF     		it	eq
 529 0008 0023     		moveq	r3, #0
 530 000a 4364     		str	r3, [r0, #68]
 531 000c 7047     		bx	lr
 532              		.size	_ZN6RepRap8SetDebugEb, .-_ZN6RepRap8SetDebugEb
 533 000e 00BF     		.section	.text._ZN6RepRap10PrintDebugEv,"ax",%progbits
 534              		.align	1
 535              		.p2align 2,,3
 536              		.global	_ZN6RepRap10PrintDebugEv
 537              		.syntax unified
 538              		.thumb
 539              		.thumb_func
 540              		.fpu softvfp
 541              		.type	_ZN6RepRap10PrintDebugEv, %function
 542              	_ZN6RepRap10PrintDebugEv:
 543              		@ args = 0, pretend = 0, frame = 0
 544              		@ frame_needed = 0, uses_anonymous_args = 0
 545 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 546 0004 224A     		ldr	r2, .L90
 547 0006 82B0     		sub	sp, sp, #8
 548 0008 0546     		mov	r5, r0
 549 000a 3521     		movs	r1, #53
 550 000c 0068     		ldr	r0, [r0]
 551 000e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 552 0012 0024     		movs	r4, #0
 553 0014 0126     		movs	r6, #1
 554 0016 DFF88880 		ldr	r8, .L90+16
 555 001a 1E4F     		ldr	r7, .L90+4
 556 001c 02E0     		b	.L79
 557              	.L78:
 558 001e 0134     		adds	r4, r4, #1
 559 0020 102C     		cmp	r4, #16
 560 0022 0FD0     		beq	.L88
 561              	.L79:
 562 0024 6B6C     		ldr	r3, [r5, #68]
 563 0026 06FA04F2 		lsl	r2, r6, r4
 564 002a 1A42     		tst	r2, r3
 565 002c F7D0     		beq	.L78
 566 002e 58F82430 		ldr	r3, [r8, r4, lsl #2]
 567 0032 2868     		ldr	r0, [r5]
 568 0034 3A46     		mov	r2, r7
 569 0036 0094     		str	r4, [sp]
 570 0038 3521     		movs	r1, #53
ARM GAS  /tmp/ccDCB0nG.s 			page 11


 571 003a 0134     		adds	r4, r4, #1
 572 003c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 573 0040 102C     		cmp	r4, #16
 574 0042 EFD1     		bne	.L79
 575              	.L88:
 576 0044 144A     		ldr	r2, .L90+8
 577 0046 3521     		movs	r1, #53
 578 0048 2868     		ldr	r0, [r5]
 579 004a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 580 004e 0024     		movs	r4, #0
 581 0050 0126     		movs	r6, #1
 582 0052 DFF84C80 		ldr	r8, .L90+16
 583 0056 0F4F     		ldr	r7, .L90+4
 584 0058 02E0     		b	.L81
 585              	.L80:
 586 005a 0134     		adds	r4, r4, #1
 587 005c 102C     		cmp	r4, #16
 588 005e 0FD0     		beq	.L89
 589              	.L81:
 590 0060 6B6C     		ldr	r3, [r5, #68]
 591 0062 06FA04F2 		lsl	r2, r6, r4
 592 0066 1A42     		tst	r2, r3
 593 0068 F7D1     		bne	.L80
 594 006a 58F82430 		ldr	r3, [r8, r4, lsl #2]
 595 006e 2868     		ldr	r0, [r5]
 596 0070 3A46     		mov	r2, r7
 597 0072 0094     		str	r4, [sp]
 598 0074 3521     		movs	r1, #53
 599 0076 0134     		adds	r4, r4, #1
 600 0078 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 601 007c 102C     		cmp	r4, #16
 602 007e EFD1     		bne	.L81
 603              	.L89:
 604 0080 3521     		movs	r1, #53
 605 0082 2868     		ldr	r0, [r5]
 606 0084 054A     		ldr	r2, .L90+12
 607 0086 02B0     		add	sp, sp, #8
 608              		@ sp needed
 609 0088 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 610 008c FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 611              	.L91:
 612              		.align	2
 613              	.L90:
 614 0090 00000000 		.word	.LC20
 615 0094 20000000 		.word	.LC21
 616 0098 28000000 		.word	.LC22
 617 009c 4C000000 		.word	.LC23
 618 00a0 00000000 		.word	moduleName
 619              		.size	_ZN6RepRap10PrintDebugEv, .-_ZN6RepRap10PrintDebugEv
 620              		.section	.text._ZN6RepRap8SetDebugE6Moduleb,"ax",%progbits
 621              		.align	1
 622              		.p2align 2,,3
 623              		.global	_ZN6RepRap8SetDebugE6Moduleb
 624              		.syntax unified
 625              		.thumb
 626              		.thumb_func
 627              		.fpu softvfp
ARM GAS  /tmp/ccDCB0nG.s 			page 12


 628              		.type	_ZN6RepRap8SetDebugE6Moduleb, %function
 629              	_ZN6RepRap8SetDebugE6Moduleb:
 630              		@ args = 0, pretend = 0, frame = 0
 631              		@ frame_needed = 0, uses_anonymous_args = 0
 632              		@ link register save eliminated.
 633 0000 0F29     		cmp	r1, #15
 634 0002 07DC     		bgt	.L93
 635 0004 42B9     		cbnz	r2, .L95
 636 0006 0122     		movs	r2, #1
 637 0008 436C     		ldr	r3, [r0, #68]
 638 000a 02FA01F1 		lsl	r1, r2, r1
 639 000e 23EA0103 		bic	r3, r3, r1
 640 0012 4364     		str	r3, [r0, #68]
 641              	.L93:
 642 0014 FFF7FEBF 		b	_ZN6RepRap10PrintDebugEv
 643              	.L95:
 644 0018 0122     		movs	r2, #1
 645 001a 436C     		ldr	r3, [r0, #68]
 646 001c 02FA01F1 		lsl	r1, r2, r1
 647 0020 0B43     		orrs	r3, r3, r1
 648 0022 4364     		str	r3, [r0, #68]
 649 0024 FFF7FEBF 		b	_ZN6RepRap10PrintDebugEv
 650              		.size	_ZN6RepRap8SetDebugE6Moduleb, .-_ZN6RepRap8SetDebugE6Moduleb
 651              		.section	.text._ZN6RepRap7AddToolEP4Tool,"ax",%progbits
 652              		.align	1
 653              		.p2align 2,,3
 654              		.global	_ZN6RepRap7AddToolEP4Tool
 655              		.syntax unified
 656              		.thumb
 657              		.thumb_func
 658              		.fpu softvfp
 659              		.type	_ZN6RepRap7AddToolEP4Tool, %function
 660              	_ZN6RepRap7AddToolEP4Tool:
 661              		@ args = 0, pretend = 0, frame = 8
 662              		@ frame_needed = 0, uses_anonymous_args = 0
 663 0000 30B5     		push	{r4, r5, lr}
 664 0002 0446     		mov	r4, r0
 665 0004 83B0     		sub	sp, sp, #12
 666 0006 4FF0FF32 		mov	r2, #-1
 667 000a 0D46     		mov	r5, r1
 668 000c 6846     		mov	r0, sp
 669 000e 04F12001 		add	r1, r4, #32
 670 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 671 0016 A36A     		ldr	r3, [r4, #40]
 672 0018 04F12802 		add	r2, r4, #40
 673 001c 4BB1     		cbz	r3, .L97
 674 001e 686E     		ldr	r0, [r5, #100]
 675 0020 596E     		ldr	r1, [r3, #100]
 676 0022 8842     		cmp	r0, r1
 677 0024 05DD     		ble	.L97
 678              	.L99:
 679 0026 1A46     		mov	r2, r3
 680 0028 1B68     		ldr	r3, [r3]
 681 002a 13B1     		cbz	r3, .L97
 682 002c 596E     		ldr	r1, [r3, #100]
 683 002e 8142     		cmp	r1, r0
 684 0030 F9DB     		blt	.L99
ARM GAS  /tmp/ccDCB0nG.s 			page 13


 685              	.L97:
 686 0032 2B60     		str	r3, [r5]
 687 0034 04F13401 		add	r1, r4, #52
 688 0038 2846     		mov	r0, r5
 689 003a 1560     		str	r5, [r2]
 690 003c 04F13602 		add	r2, r4, #54
 691 0040 FFF7FEFF 		bl	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 692 0044 2068     		ldr	r0, [r4]
 693 0046 FFF7FEFF 		bl	_ZN8Platform23UpdateConfiguredHeatersEv
 694 004a 6846     		mov	r0, sp
 695 004c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 696 0050 03B0     		add	sp, sp, #12
 697              		@ sp needed
 698 0052 30BD     		pop	{r4, r5, pc}
 699              		.size	_ZN6RepRap7AddToolEP4Tool, .-_ZN6RepRap7AddToolEP4Tool
 700              		.section	.text._ZNK6RepRap7GetToolEi,"ax",%progbits
 701              		.align	1
 702              		.p2align 2,,3
 703              		.global	_ZNK6RepRap7GetToolEi
 704              		.syntax unified
 705              		.thumb
 706              		.thumb_func
 707              		.fpu softvfp
 708              		.type	_ZNK6RepRap7GetToolEi, %function
 709              	_ZNK6RepRap7GetToolEi:
 710              		@ args = 0, pretend = 0, frame = 8
 711              		@ frame_needed = 0, uses_anonymous_args = 0
 712 0000 30B5     		push	{r4, r5, lr}
 713 0002 0446     		mov	r4, r0
 714 0004 83B0     		sub	sp, sp, #12
 715 0006 0D46     		mov	r5, r1
 716 0008 6846     		mov	r0, sp
 717 000a 04F12001 		add	r1, r4, #32
 718 000e 4FF0FF32 		mov	r2, #-1
 719 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 720 0016 A46A     		ldr	r4, [r4, #40]
 721 0018 14B9     		cbnz	r4, .L110
 722 001a 04E0     		b	.L107
 723              	.L115:
 724 001c 2468     		ldr	r4, [r4]
 725 001e 14B1     		cbz	r4, .L107
 726              	.L110:
 727 0020 636E     		ldr	r3, [r4, #100]
 728 0022 9D42     		cmp	r5, r3
 729 0024 FAD1     		bne	.L115
 730              	.L107:
 731 0026 6846     		mov	r0, sp
 732 0028 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 733 002c 2046     		mov	r0, r4
 734 002e 03B0     		add	sp, sp, #12
 735              		@ sp needed
 736 0030 30BD     		pop	{r4, r5, pc}
 737              		.size	_ZNK6RepRap7GetToolEi, .-_ZNK6RepRap7GetToolEi
 738 0032 00BF     		.section	.text._ZN6RepRap10SelectToolEib,"ax",%progbits
 739              		.align	1
 740              		.p2align 2,,3
 741              		.global	_ZN6RepRap10SelectToolEib
ARM GAS  /tmp/ccDCB0nG.s 			page 14


 742              		.syntax unified
 743              		.thumb
 744              		.thumb_func
 745              		.fpu softvfp
 746              		.type	_ZN6RepRap10SelectToolEib, %function
 747              	_ZN6RepRap10SelectToolEib:
 748              		@ args = 0, pretend = 0, frame = 0
 749              		@ frame_needed = 0, uses_anonymous_args = 0
 750 0000 70B5     		push	{r4, r5, r6, lr}
 751 0002 1646     		mov	r6, r2
 752 0004 0546     		mov	r5, r0
 753 0006 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 754 000a 0446     		mov	r4, r0
 755 000c 4EB9     		cbnz	r6, .L118
 756 000e E86A     		ldr	r0, [r5, #44]
 757 0010 18B1     		cbz	r0, .L119
 758 0012 8442     		cmp	r4, r0
 759 0014 02D0     		beq	.L121
 760 0016 FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 761              	.L119:
 762 001a 14B1     		cbz	r4, .L118
 763              	.L121:
 764 001c 2046     		mov	r0, r4
 765 001e FFF7FEFF 		bl	_ZN4Tool8ActivateEv
 766              	.L118:
 767 0022 EC62     		str	r4, [r5, #44]
 768 0024 70BD     		pop	{r4, r5, r6, pc}
 769              		.size	_ZN6RepRap10SelectToolEib, .-_ZN6RepRap10SelectToolEib
 770 0026 00BF     		.section	.text._ZN6RepRap10DeleteToolEP4Tool,"ax",%progbits
 771              		.align	1
 772              		.p2align 2,,3
 773              		.global	_ZN6RepRap10DeleteToolEP4Tool
 774              		.syntax unified
 775              		.thumb
 776              		.thumb_func
 777              		.fpu softvfp
 778              		.type	_ZN6RepRap10DeleteToolEP4Tool, %function
 779              	_ZN6RepRap10DeleteToolEP4Tool:
 780              		@ args = 0, pretend = 0, frame = 8
 781              		@ frame_needed = 0, uses_anonymous_args = 0
 782 0000 0029     		cmp	r1, #0
 783 0002 47D0     		beq	.L157
 784 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 785 0006 C36A     		ldr	r3, [r0, #44]
 786 0008 83B0     		sub	sp, sp, #12
 787 000a 9942     		cmp	r1, r3
 788 000c 0546     		mov	r5, r0
 789 000e 0C46     		mov	r4, r1
 790 0010 41D0     		beq	.L161
 791              	.L129:
 792 0012 236E     		ldr	r3, [r4, #96]
 793 0014 5BB1     		cbz	r3, .L134
 794 0016 0026     		movs	r6, #0
 795 0018 04F17E07 		add	r7, r4, #126
 796              	.L133:
 797 001c 17F9011B 		ldrsb	r1, [r7], #1
 798 0020 E868     		ldr	r0, [r5, #12]
ARM GAS  /tmp/ccDCB0nG.s 			page 15


 799 0022 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 800 0026 236E     		ldr	r3, [r4, #96]
 801 0028 0136     		adds	r6, r6, #1
 802 002a B342     		cmp	r3, r6
 803 002c F6D8     		bhi	.L133
 804              	.L134:
 805 002e 4FF0FF32 		mov	r2, #-1
 806 0032 6846     		mov	r0, sp
 807 0034 05F12001 		add	r1, r5, #32
 808 0038 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 809 003c AA6A     		ldr	r2, [r5, #40]
 810 003e 42B1     		cbz	r2, .L131
 811 0040 A242     		cmp	r2, r4
 812 0042 03D1     		bne	.L137
 813 0044 21E0     		b	.L162
 814              	.L139:
 815 0046 9C42     		cmp	r4, r3
 816 0048 21D0     		beq	.L138
 817 004a 1A46     		mov	r2, r3
 818              	.L137:
 819 004c 1368     		ldr	r3, [r2]
 820 004e 002B     		cmp	r3, #0
 821 0050 F9D1     		bne	.L139
 822              	.L131:
 823 0052 2046     		mov	r0, r4
 824 0054 FFF7FEFF 		bl	_ZN4Tool6DeleteEPS_
 825 0058 0023     		movs	r3, #0
 826 005a AC6A     		ldr	r4, [r5, #40]
 827 005c EB86     		strh	r3, [r5, #54]	@ movhi
 828 005e AB86     		strh	r3, [r5, #52]	@ movhi
 829 0060 5CB1     		cbz	r4, .L142
 830 0062 05F13407 		add	r7, r5, #52
 831 0066 05F13606 		add	r6, r5, #54
 832              	.L143:
 833 006a 2046     		mov	r0, r4
 834 006c 3246     		mov	r2, r6
 835 006e 3946     		mov	r1, r7
 836 0070 FFF7FEFF 		bl	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 837 0074 2468     		ldr	r4, [r4]
 838 0076 002C     		cmp	r4, #0
 839 0078 F7D1     		bne	.L143
 840              	.L142:
 841 007a 2868     		ldr	r0, [r5]
 842 007c FFF7FEFF 		bl	_ZN8Platform23UpdateConfiguredHeatersEv
 843 0080 6846     		mov	r0, sp
 844 0082 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 845 0086 03B0     		add	sp, sp, #12
 846              		@ sp needed
 847 0088 F0BD     		pop	{r4, r5, r6, r7, pc}
 848              	.L162:
 849 008a 05F12802 		add	r2, r5, #40
 850              	.L138:
 851 008e 2368     		ldr	r3, [r4]
 852 0090 1360     		str	r3, [r2]
 853 0092 DEE7     		b	.L131
 854              	.L157:
 855 0094 7047     		bx	lr
ARM GAS  /tmp/ccDCB0nG.s 			page 16


 856              	.L161:
 857 0096 0022     		movs	r2, #0
 858 0098 4FF0FF31 		mov	r1, #-1
 859 009c FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 860 00a0 B7E7     		b	.L129
 861              		.size	_ZN6RepRap10DeleteToolEP4Tool, .-_ZN6RepRap10DeleteToolEP4Tool
 862 00a2 00BF     		.section	.text._ZNK6RepRap9PrintToolEiRK9StringRef,"ax",%progbits
 863              		.align	1
 864              		.p2align 2,,3
 865              		.global	_ZNK6RepRap9PrintToolEiRK9StringRef
 866              		.syntax unified
 867              		.thumb
 868              		.thumb_func
 869              		.fpu softvfp
 870              		.type	_ZNK6RepRap9PrintToolEiRK9StringRef, %function
 871              	_ZNK6RepRap9PrintToolEiRK9StringRef:
 872              		@ args = 0, pretend = 0, frame = 0
 873              		@ frame_needed = 0, uses_anonymous_args = 0
 874 0000 10B5     		push	{r4, lr}
 875 0002 1446     		mov	r4, r2
 876 0004 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 877 0008 20B1     		cbz	r0, .L164
 878 000a 2146     		mov	r1, r4
 879 000c BDE81040 		pop	{r4, lr}
 880 0010 FFF7FEBF 		b	_ZNK4Tool5PrintERK9StringRef
 881              	.L164:
 882 0014 2046     		mov	r0, r4
 883 0016 BDE81040 		pop	{r4, lr}
 884 001a 0149     		ldr	r1, .L166
 885 001c FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 886              	.L167:
 887              		.align	2
 888              	.L166:
 889 0020 00000000 		.word	.LC24
 890              		.size	_ZNK6RepRap9PrintToolEiRK9StringRef, .-_ZNK6RepRap9PrintToolEiRK9StringRef
 891              		.section	.text._ZN6RepRap11StandbyToolEib,"ax",%progbits
 892              		.align	1
 893              		.p2align 2,,3
 894              		.global	_ZN6RepRap11StandbyToolEib
 895              		.syntax unified
 896              		.thumb
 897              		.thumb_func
 898              		.fpu softvfp
 899              		.type	_ZN6RepRap11StandbyToolEib, %function
 900              	_ZN6RepRap11StandbyToolEib:
 901              		@ args = 0, pretend = 0, frame = 0
 902              		@ frame_needed = 0, uses_anonymous_args = 0
 903 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 904 0004 1646     		mov	r6, r2
 905 0006 0446     		mov	r4, r0
 906 0008 0F46     		mov	r7, r1
 907 000a FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 908 000e 78B1     		cbz	r0, .L169
 909 0010 0546     		mov	r5, r0
 910 0012 26B1     		cbz	r6, .L173
 911 0014 E36A     		ldr	r3, [r4, #44]
 912 0016 9D42     		cmp	r5, r3
ARM GAS  /tmp/ccDCB0nG.s 			page 17


 913 0018 06D0     		beq	.L174
 914              	.L168:
 915 001a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 916              	.L173:
 917 001e FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 918 0022 E36A     		ldr	r3, [r4, #44]
 919 0024 9D42     		cmp	r5, r3
 920 0026 F8D1     		bne	.L168
 921              	.L174:
 922 0028 0023     		movs	r3, #0
 923 002a E362     		str	r3, [r4, #44]
 924 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 925              	.L169:
 926 0030 3B46     		mov	r3, r7
 927 0032 2068     		ldr	r0, [r4]
 928 0034 034A     		ldr	r2, .L175
 929 0036 40F2B511 		movw	r1, #437
 930 003a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 931 003e FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 932              	.L176:
 933 0042 00BF     		.align	2
 934              	.L175:
 935 0044 00000000 		.word	.LC25
 936              		.size	_ZN6RepRap11StandbyToolEib, .-_ZN6RepRap11StandbyToolEib
 937              		.section	.text._ZNK6RepRap20GetCurrentToolNumberEv,"ax",%progbits
 938              		.align	1
 939              		.p2align 2,,3
 940              		.global	_ZNK6RepRap20GetCurrentToolNumberEv
 941              		.syntax unified
 942              		.thumb
 943              		.thumb_func
 944              		.fpu softvfp
 945              		.type	_ZNK6RepRap20GetCurrentToolNumberEv, %function
 946              	_ZNK6RepRap20GetCurrentToolNumberEv:
 947              		@ args = 0, pretend = 0, frame = 0
 948              		@ frame_needed = 0, uses_anonymous_args = 0
 949              		@ link register save eliminated.
 950 0000 C36A     		ldr	r3, [r0, #44]
 951 0002 0BB1     		cbz	r3, .L179
 952 0004 586E     		ldr	r0, [r3, #100]
 953 0006 7047     		bx	lr
 954              	.L179:
 955 0008 4FF0FF30 		mov	r0, #-1
 956 000c 7047     		bx	lr
 957              		.size	_ZNK6RepRap20GetCurrentToolNumberEv, .-_ZNK6RepRap20GetCurrentToolNumberEv
 958 000e 00BF     		.section	.text._ZNK6RepRap23GetCurrentOrDefaultToolEv,"ax",%progbits
 959              		.align	1
 960              		.p2align 2,,3
 961              		.global	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 962              		.syntax unified
 963              		.thumb
 964              		.thumb_func
 965              		.fpu softvfp
 966              		.type	_ZNK6RepRap23GetCurrentOrDefaultToolEv, %function
 967              	_ZNK6RepRap23GetCurrentOrDefaultToolEv:
 968              		@ args = 0, pretend = 0, frame = 0
 969              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccDCB0nG.s 			page 18


 970              		@ link register save eliminated.
 971 0000 C36A     		ldr	r3, [r0, #44]
 972 0002 0BB1     		cbz	r3, .L183
 973 0004 1846     		mov	r0, r3
 974 0006 7047     		bx	lr
 975              	.L183:
 976 0008 806A     		ldr	r0, [r0, #40]
 977 000a 7047     		bx	lr
 978              		.size	_ZNK6RepRap23GetCurrentOrDefaultToolEv, .-_ZNK6RepRap23GetCurrentOrDefaultToolEv
 979              		.section	.text._ZNK6RepRap22IsHeaterAssignedToToolEa,"ax",%progbits
 980              		.align	1
 981              		.p2align 2,,3
 982              		.global	_ZNK6RepRap22IsHeaterAssignedToToolEa
 983              		.syntax unified
 984              		.thumb
 985              		.thumb_func
 986              		.fpu softvfp
 987              		.type	_ZNK6RepRap22IsHeaterAssignedToToolEa, %function
 988              	_ZNK6RepRap22IsHeaterAssignedToToolEa:
 989              		@ args = 0, pretend = 0, frame = 8
 990              		@ frame_needed = 0, uses_anonymous_args = 0
 991 0000 30B5     		push	{r4, r5, lr}
 992 0002 0546     		mov	r5, r0
 993 0004 83B0     		sub	sp, sp, #12
 994 0006 0C46     		mov	r4, r1
 995 0008 6846     		mov	r0, sp
 996 000a 05F12001 		add	r1, r5, #32
 997 000e 4FF0FF32 		mov	r2, #-1
 998 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 999 0016 A86A     		ldr	r0, [r5, #40]
 1000 0018 98B1     		cbz	r0, .L190
 1001              	.L189:
 1002 001a 016E     		ldr	r1, [r0, #96]
 1003 001c 71B1     		cbz	r1, .L186
 1004 001e 90F97E30 		ldrsb	r3, [r0, #126]
 1005 0022 A342     		cmp	r3, r4
 1006 0024 0FD0     		beq	.L192
 1007 0026 7E31     		adds	r1, r1, #126
 1008 0028 0144     		add	r1, r1, r0
 1009 002a 00F17F03 		add	r3, r0, #127
 1010 002e 03E0     		b	.L187
 1011              	.L188:
 1012 0030 13F9012B 		ldrsb	r2, [r3], #1
 1013 0034 A242     		cmp	r2, r4
 1014 0036 06D0     		beq	.L192
 1015              	.L187:
 1016 0038 9942     		cmp	r1, r3
 1017 003a F9D1     		bne	.L188
 1018              	.L186:
 1019 003c 0068     		ldr	r0, [r0]
 1020 003e 0028     		cmp	r0, #0
 1021 0040 EBD1     		bne	.L189
 1022              	.L190:
 1023 0042 0446     		mov	r4, r0
 1024 0044 00E0     		b	.L185
 1025              	.L192:
 1026 0046 0124     		movs	r4, #1
ARM GAS  /tmp/ccDCB0nG.s 			page 19


 1027              	.L185:
 1028 0048 6846     		mov	r0, sp
 1029 004a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1030 004e 2046     		mov	r0, r4
 1031 0050 03B0     		add	sp, sp, #12
 1032              		@ sp needed
 1033 0052 30BD     		pop	{r4, r5, pc}
 1034              		.size	_ZNK6RepRap22IsHeaterAssignedToToolEa, .-_ZNK6RepRap22IsHeaterAssignedToToolEa
 1035              		.section	.text._ZNK6RepRap26GetNumberOfContiguousToolsEv,"ax",%progbits
 1036              		.align	1
 1037              		.p2align 2,,3
 1038              		.global	_ZNK6RepRap26GetNumberOfContiguousToolsEv
 1039              		.syntax unified
 1040              		.thumb
 1041              		.thumb_func
 1042              		.fpu softvfp
 1043              		.type	_ZNK6RepRap26GetNumberOfContiguousToolsEv, %function
 1044              	_ZNK6RepRap26GetNumberOfContiguousToolsEv:
 1045              		@ args = 0, pretend = 0, frame = 0
 1046              		@ frame_needed = 0, uses_anonymous_args = 0
 1047 0000 38B5     		push	{r3, r4, r5, lr}
 1048 0002 0546     		mov	r5, r0
 1049 0004 0024     		movs	r4, #0
 1050 0006 00E0     		b	.L200
 1051              	.L202:
 1052 0008 0134     		adds	r4, r4, #1
 1053              	.L200:
 1054 000a 2146     		mov	r1, r4
 1055 000c 2846     		mov	r0, r5
 1056 000e FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 1057 0012 0028     		cmp	r0, #0
 1058 0014 F8D1     		bne	.L202
 1059 0016 2046     		mov	r0, r4
 1060 0018 38BD     		pop	{r3, r4, r5, pc}
 1061              		.size	_ZNK6RepRap26GetNumberOfContiguousToolsEv, .-_ZNK6RepRap26GetNumberOfContiguousToolsEv
 1062 001a 00BF     		.section	.text._ZN6RepRap4TickEv,"ax",%progbits
 1063              		.align	1
 1064              		.p2align 2,,3
 1065              		.global	_ZN6RepRap4TickEv
 1066              		.syntax unified
 1067              		.thumb
 1068              		.thumb_func
 1069              		.fpu softvfp
 1070              		.type	_ZN6RepRap4TickEv, %function
 1071              	_ZN6RepRap4TickEv:
 1072              		@ args = 0, pretend = 0, frame = 0
 1073              		@ frame_needed = 0, uses_anonymous_args = 0
 1074 0000 90F84930 		ldrb	r3, [r0, #73]	@ zero_extendqisi2
 1075 0004 63B3     		cbz	r3, .L212
 1076 0006 70B5     		push	{r4, r5, r6, lr}
 1077 0008 90F84A50 		ldrb	r5, [r0, #74]	@ zero_extendqisi2
 1078 000c 05B1     		cbz	r5, .L215
 1079              	.L203:
 1080 000e 70BD     		pop	{r4, r5, r6, pc}
 1081              	.L215:
 1082 0010 0446     		mov	r4, r0
 1083 0012 0068     		ldr	r0, [r0]
ARM GAS  /tmp/ccDCB0nG.s 			page 20


 1084 0014 FFF7FEFF 		bl	_ZN8Platform4TickEv
 1085 0018 44F61F62 		movw	r2, #19999
 1086 001c 238F     		ldrh	r3, [r4, #56]
 1087 001e 0133     		adds	r3, r3, #1
 1088 0020 9BB2     		uxth	r3, r3
 1089 0022 9342     		cmp	r3, r2
 1090 0024 2387     		strh	r3, [r4, #56]	@ movhi
 1091 0026 F2D9     		bls	.L203
 1092 0028 0123     		movs	r3, #1
 1093 002a 0026     		movs	r6, #0
 1094 002c 84F84A30 		strb	r3, [r4, #74]
 1095              	.L207:
 1096 0030 2946     		mov	r1, r5
 1097 0032 0023     		movs	r3, #0
 1098 0034 3246     		mov	r2, r6
 1099 0036 2068     		ldr	r0, [r4]
 1100 0038 0135     		adds	r5, r5, #1
 1101 003a FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 1102 003e 042D     		cmp	r5, #4
 1103 0040 F6D1     		bne	.L207
 1104 0042 0025     		movs	r5, #0
 1105              	.L208:
 1106 0044 2946     		mov	r1, r5
 1107 0046 2068     		ldr	r0, [r4]
 1108 0048 0135     		adds	r5, r5, #1
 1109 004a FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 1110 004e 092D     		cmp	r5, #9
 1111 0050 F8D1     		bne	.L208
 1112 0052 2068     		ldr	r0, [r4]
 1113 0054 05AA     		add	r2, sp, #20
 1114 0056 4021     		movs	r1, #64
 1115 0058 BDE87040 		pop	{r4, r5, r6, lr}
 1116 005c FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 1117              	.L212:
 1118 0060 7047     		bx	lr
 1119              		.size	_ZN6RepRap4TickEv, .-_ZN6RepRap4TickEv
 1120 0062 00BF     		.section	.text._ZNK6RepRap19SpinTimeoutImminentEv,"ax",%progbits
 1121              		.align	1
 1122              		.p2align 2,,3
 1123              		.global	_ZNK6RepRap19SpinTimeoutImminentEv
 1124              		.syntax unified
 1125              		.thumb
 1126              		.thumb_func
 1127              		.fpu softvfp
 1128              		.type	_ZNK6RepRap19SpinTimeoutImminentEv, %function
 1129              	_ZNK6RepRap19SpinTimeoutImminentEv:
 1130              		@ args = 0, pretend = 0, frame = 0
 1131              		@ frame_needed = 0, uses_anonymous_args = 0
 1132              		@ link register save eliminated.
 1133 0000 008F     		ldrh	r0, [r0, #56]
 1134 0002 B0F57A5F 		cmp	r0, #16000
 1135 0006 34BF     		ite	cc
 1136 0008 0020     		movcc	r0, #0
 1137 000a 0120     		movcs	r0, #1
 1138 000c 7047     		bx	lr
 1139              		.size	_ZNK6RepRap19SpinTimeoutImminentEv, .-_ZNK6RepRap19SpinTimeoutImminentEv
 1140 000e 00BF     		.section	.text._ZN6RepRap17GetConfigResponseEv,"ax",%progbits
ARM GAS  /tmp/ccDCB0nG.s 			page 21


 1141              		.align	1
 1142              		.p2align 2,,3
 1143              		.global	_ZN6RepRap17GetConfigResponseEv
 1144              		.syntax unified
 1145              		.thumb
 1146              		.thumb_func
 1147              		.fpu softvfp
 1148              		.type	_ZN6RepRap17GetConfigResponseEv, %function
 1149              	_ZN6RepRap17GetConfigResponseEv:
 1150              		@ args = 0, pretend = 0, frame = 8
 1151              		@ frame_needed = 0, uses_anonymous_args = 0
 1152 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1153 0004 85B0     		sub	sp, sp, #20
 1154 0006 0446     		mov	r4, r0
 1155 0008 03A8     		add	r0, sp, #12
 1156 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1157 000e 0028     		cmp	r0, #0
 1158 0010 00F0E680 		beq	.L217
 1159 0014 2369     		ldr	r3, [r4, #16]
 1160 0016 7649     		ldr	r1, .L236
 1161 0018 D3F8FC81 		ldr	r8, [r3, #508]
 1162 001c 0398     		ldr	r0, [sp, #12]
 1163 001e FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1164 0022 B8F1000F 		cmp	r8, #0
 1165 0026 00F0DE80 		beq	.L219
 1166 002a 0025     		movs	r5, #0
 1167 002c 5B26     		movs	r6, #91
 1168 002e DFF8CC91 		ldr	r9, .L236+12
 1169              	.L221:
 1170 0032 2368     		ldr	r3, [r4]
 1171 0034 039F     		ldr	r7, [sp, #12]
 1172 0036 03EB8503 		add	r3, r3, r5, lsl #2
 1173 003a D3F85C04 		ldr	r0, [r3, #1116]	@ float
 1174 003e FFF7FEFF 		bl	__aeabi_f2d
 1175 0042 0135     		adds	r5, r5, #1
 1176 0044 CDE90001 		strd	r0, [sp]
 1177 0048 3246     		mov	r2, r6
 1178 004a 3846     		mov	r0, r7
 1179 004c 4946     		mov	r1, r9
 1180 004e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1181 0052 4545     		cmp	r5, r8
 1182 0054 4FF02C06 		mov	r6, #44
 1183 0058 EBD1     		bne	.L221
 1184 005a 6649     		ldr	r1, .L236+4
 1185 005c 0398     		ldr	r0, [sp, #12]
 1186 005e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1187 0062 0026     		movs	r6, #0
 1188 0064 5B27     		movs	r7, #91
 1189 0066 DFF89491 		ldr	r9, .L236+12
 1190              	.L222:
 1191 006a 2368     		ldr	r3, [r4]
 1192 006c DDF80C80 		ldr	r8, [sp, #12]
 1193 0070 03EB8603 		add	r3, r3, r6, lsl #2
 1194 0074 D3F84404 		ldr	r0, [r3, #1092]	@ float
 1195 0078 FFF7FEFF 		bl	__aeabi_f2d
 1196 007c 0136     		adds	r6, r6, #1
 1197 007e CDE90001 		strd	r0, [sp]
ARM GAS  /tmp/ccDCB0nG.s 			page 22


 1198 0082 3A46     		mov	r2, r7
 1199 0084 4046     		mov	r0, r8
 1200 0086 4946     		mov	r1, r9
 1201 0088 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1202 008c B542     		cmp	r5, r6
 1203 008e 4FF02C07 		mov	r7, #44
 1204 0092 EAD1     		bne	.L222
 1205              	.L227:
 1206 0094 5849     		ldr	r1, .L236+8
 1207 0096 0398     		ldr	r0, [sp, #12]
 1208 0098 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1209 009c 0025     		movs	r5, #0
 1210 009e 5B26     		movs	r6, #91
 1211 00a0 564F     		ldr	r7, .L236+12
 1212              	.L223:
 1213 00a2 2368     		ldr	r3, [r4]
 1214 00a4 05F13E02 		add	r2, r5, #62
 1215 00a8 53F82200 		ldr	r0, [r3, r2, lsl #2]	@ float
 1216 00ac FFF7FEFF 		bl	__aeabi_f2d
 1217 00b0 039B     		ldr	r3, [sp, #12]
 1218 00b2 CDE90001 		strd	r0, [sp]
 1219 00b6 3246     		mov	r2, r6
 1220 00b8 0135     		adds	r5, r5, #1
 1221 00ba 1846     		mov	r0, r3
 1222 00bc 3946     		mov	r1, r7
 1223 00be FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1224 00c2 092D     		cmp	r5, #9
 1225 00c4 4FF02C06 		mov	r6, #44
 1226 00c8 EBD1     		bne	.L223
 1227 00ca 4D49     		ldr	r1, .L236+16
 1228 00cc 0398     		ldr	r0, [sp, #12]
 1229 00ce FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1230 00d2 0025     		movs	r5, #0
 1231 00d4 5B26     		movs	r6, #91
 1232 00d6 DFF82481 		ldr	r8, .L236+12
 1233              	.L224:
 1234 00da 40F28A32 		movw	r2, #906
 1235 00de 2946     		mov	r1, r5
 1236 00e0 2068     		ldr	r0, [r4]
 1237 00e2 039F     		ldr	r7, [sp, #12]
 1238 00e4 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEji
 1239 00e8 FFF7FEFF 		bl	__aeabi_f2d
 1240 00ec 0135     		adds	r5, r5, #1
 1241 00ee CDE90001 		strd	r0, [sp]
 1242 00f2 3246     		mov	r2, r6
 1243 00f4 3846     		mov	r0, r7
 1244 00f6 4146     		mov	r1, r8
 1245 00f8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1246 00fc 092D     		cmp	r5, #9
 1247 00fe 4FF02C06 		mov	r6, #44
 1248 0102 EAD1     		bne	.L224
 1249 0104 2068     		ldr	r0, [r4]
 1250 0106 039D     		ldr	r5, [sp, #12]
 1251 0108 FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 1252 010c 3D49     		ldr	r1, .L236+20
 1253 010e 0246     		mov	r2, r0
 1254 0110 2846     		mov	r0, r5
ARM GAS  /tmp/ccDCB0nG.s 			page 23


 1255 0112 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1256 0116 3C4A     		ldr	r2, .L236+24
 1257 0118 3C49     		ldr	r1, .L236+28
 1258 011a 0398     		ldr	r0, [sp, #12]
 1259 011c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1260 0120 3B4A     		ldr	r2, .L236+32
 1261 0122 3C49     		ldr	r1, .L236+36
 1262 0124 0398     		ldr	r0, [sp, #12]
 1263 0126 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1264 012a 3B4A     		ldr	r2, .L236+40
 1265 012c 3B49     		ldr	r1, .L236+44
 1266 012e 0398     		ldr	r0, [sp, #12]
 1267 0130 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1268 0134 2368     		ldr	r3, [r4]
 1269 0136 3A49     		ldr	r1, .L236+48
 1270 0138 D3F8A802 		ldr	r0, [r3, #680]	@ float
 1271 013c FFF7FEFF 		bl	__aeabi_fmul
 1272 0140 FFF7FEFF 		bl	__aeabi_f2d
 1273 0144 0246     		mov	r2, r0
 1274 0146 0B46     		mov	r3, r1
 1275 0148 0398     		ldr	r0, [sp, #12]
 1276 014a 3649     		ldr	r1, .L236+52
 1277 014c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1278 0150 A068     		ldr	r0, [r4, #8]
 1279 0152 039D     		ldr	r5, [sp, #12]
 1280 0154 FFF7FEFF 		bl	_ZNK4Move11IdleTimeoutEv
 1281 0158 FFF7FEFF 		bl	__aeabi_f2d
 1282 015c 0246     		mov	r2, r0
 1283 015e 0B46     		mov	r3, r1
 1284 0160 2846     		mov	r0, r5
 1285 0162 3149     		ldr	r1, .L236+56
 1286 0164 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1287 0168 3049     		ldr	r1, .L236+60
 1288 016a 0398     		ldr	r0, [sp, #12]
 1289 016c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1290 0170 0025     		movs	r5, #0
 1291 0172 5B26     		movs	r6, #91
 1292 0174 214F     		ldr	r7, .L236+12
 1293              	.L225:
 1294 0176 2368     		ldr	r3, [r4]
 1295 0178 05F15202 		add	r2, r5, #82
 1296 017c 53F82200 		ldr	r0, [r3, r2, lsl #2]	@ float
 1297 0180 FFF7FEFF 		bl	__aeabi_f2d
 1298 0184 039B     		ldr	r3, [sp, #12]
 1299 0186 CDE90001 		strd	r0, [sp]
 1300 018a 3246     		mov	r2, r6
 1301 018c 0135     		adds	r5, r5, #1
 1302 018e 1846     		mov	r0, r3
 1303 0190 3946     		mov	r1, r7
 1304 0192 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1305 0196 092D     		cmp	r5, #9
 1306 0198 4FF02C06 		mov	r6, #44
 1307 019c EBD1     		bne	.L225
 1308 019e 2449     		ldr	r1, .L236+64
 1309 01a0 0398     		ldr	r0, [sp, #12]
 1310 01a2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1311 01a6 0025     		movs	r5, #0
ARM GAS  /tmp/ccDCB0nG.s 			page 24


 1312 01a8 5B26     		movs	r6, #91
 1313 01aa DFF85080 		ldr	r8, .L236+12
 1314              	.L226:
 1315 01ae 2368     		ldr	r3, [r4]
 1316 01b0 039F     		ldr	r7, [sp, #12]
 1317 01b2 03EB8503 		add	r3, r3, r5, lsl #2
 1318 01b6 D3F8D400 		ldr	r0, [r3, #212]	@ float
 1319 01ba FFF7FEFF 		bl	__aeabi_f2d
 1320 01be 0135     		adds	r5, r5, #1
 1321 01c0 CDE90001 		strd	r0, [sp]
 1322 01c4 3246     		mov	r2, r6
 1323 01c6 3846     		mov	r0, r7
 1324 01c8 4146     		mov	r1, r8
 1325 01ca FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1326 01ce 092D     		cmp	r5, #9
 1327 01d0 4FF02C06 		mov	r6, #44
 1328 01d4 EBD1     		bne	.L226
 1329 01d6 1749     		ldr	r1, .L236+68
 1330 01d8 0398     		ldr	r0, [sp, #12]
 1331 01da FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1332 01de 0398     		ldr	r0, [sp, #12]
 1333              	.L217:
 1334 01e0 05B0     		add	sp, sp, #20
 1335              		@ sp needed
 1336 01e2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1337              	.L219:
 1338 01e6 0349     		ldr	r1, .L236+4
 1339 01e8 0398     		ldr	r0, [sp, #12]
 1340 01ea FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1341 01ee 51E7     		b	.L227
 1342              	.L237:
 1343              		.align	2
 1344              	.L236:
 1345 01f0 00000000 		.word	.LC26
 1346 01f4 FC000000 		.word	.LC39
 1347 01f8 18000000 		.word	.LC28
 1348 01fc 10000000 		.word	.LC27
 1349 0200 2C000000 		.word	.LC29
 1350 0204 3C000000 		.word	.LC30
 1351 0208 18000000 		.word	.LC2
 1352 020c 58000000 		.word	.LC31
 1353 0210 54000000 		.word	.LC4
 1354 0214 70000000 		.word	.LC32
 1355 0218 54000000 		.word	.LC12
 1356 021c 88000000 		.word	.LC33
 1357 0220 0000C842 		.word	1120403456
 1358 0224 A0000000 		.word	.LC34
 1359 0228 BC000000 		.word	.LC35
 1360 022c D0000000 		.word	.LC36
 1361 0230 E4000000 		.word	.LC37
 1362 0234 F8000000 		.word	.LC38
 1363              		.size	_ZN6RepRap17GetConfigResponseEv, .-_ZN6RepRap17GetConfigResponseEv
 1364              		.section	.text._ZN6RepRap16GetFilesResponseEPKcjb,"ax",%progbits
 1365              		.align	1
 1366              		.p2align 2,,3
 1367              		.global	_ZN6RepRap16GetFilesResponseEPKcjb
 1368              		.syntax unified
ARM GAS  /tmp/ccDCB0nG.s 			page 25


 1369              		.thumb
 1370              		.thumb_func
 1371              		.fpu softvfp
 1372              		.type	_ZN6RepRap16GetFilesResponseEPKcjb, %function
 1373              	_ZN6RepRap16GetFilesResponseEPKcjb:
 1374              		@ args = 0, pretend = 0, frame = 120
 1375              		@ frame_needed = 0, uses_anonymous_args = 0
 1376 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1377 0004 A0B0     		sub	sp, sp, #128
 1378 0006 0746     		mov	r7, r0
 1379 0008 03A8     		add	r0, sp, #12
 1380 000a 0E46     		mov	r6, r1
 1381 000c 9046     		mov	r8, r2
 1382 000e 9946     		mov	r9, r3
 1383 0010 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1384 0014 18B3     		cbz	r0, .L238
 1385 0016 3E49     		ldr	r1, .L265
 1386 0018 0398     		ldr	r0, [sp, #12]
 1387 001a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1388 001e 3046     		mov	r0, r6
 1389 0020 FFF7FEFF 		bl	strlen
 1390 0024 0024     		movs	r4, #0
 1391 0026 0125     		movs	r5, #1
 1392 0028 0399     		ldr	r1, [sp, #12]
 1393 002a 0246     		mov	r2, r0
 1394 002c 2346     		mov	r3, r4
 1395 002e 0846     		mov	r0, r1
 1396 0030 0194     		str	r4, [sp, #4]
 1397 0032 3146     		mov	r1, r6
 1398 0034 0095     		str	r5, [sp]
 1399 0036 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1400 003a 3649     		ldr	r1, .L265+4
 1401 003c 4246     		mov	r2, r8
 1402 003e 0398     		ldr	r0, [sp, #12]
 1403 0040 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1404 0044 3B68     		ldr	r3, [r7]
 1405 0046 3146     		mov	r1, r6
 1406 0048 D3F86805 		ldr	r0, [r3, #1384]
 1407 004c FFF7FEFF 		bl	_ZN11MassStorage17CheckDriveMountedEPKc
 1408 0050 40B9     		cbnz	r0, .L260
 1409 0052 2A46     		mov	r2, r5
 1410              	.L240:
 1411 0054 3049     		ldr	r1, .L265+8
 1412 0056 0398     		ldr	r0, [sp, #12]
 1413 0058 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1414              	.L250:
 1415 005c 0398     		ldr	r0, [sp, #12]
 1416              	.L238:
 1417 005e 20B0     		add	sp, sp, #128
 1418              		@ sp needed
 1419 0060 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1420              	.L260:
 1421 0064 3B68     		ldr	r3, [r7]
 1422 0066 3146     		mov	r1, r6
 1423 0068 D3F86805 		ldr	r0, [r3, #1384]
 1424 006c FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 1425 0070 08B9     		cbnz	r0, .L261
ARM GAS  /tmp/ccDCB0nG.s 			page 26


 1426 0072 0222     		movs	r2, #2
 1427 0074 EEE7     		b	.L240
 1428              	.L261:
 1429 0076 3B68     		ldr	r3, [r7]
 1430 0078 3146     		mov	r1, r6
 1431 007a D3F86805 		ldr	r0, [r3, #1384]
 1432 007e 04AA     		add	r2, sp, #16
 1433 0080 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 1434 0084 8246     		mov	r10, r0
 1435 0086 0398     		ldr	r0, [sp, #12]
 1436 0088 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 1437 008c 0646     		mov	r6, r0
 1438 008e BAF1000F 		cmp	r10, #0
 1439 0092 13D1     		bne	.L248
 1440 0094 2EE0     		b	.L249
 1441              	.L264:
 1442 0096 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 1443              	.L247:
 1444 009a 0193     		str	r3, [sp, #4]
 1445 009c 0095     		str	r5, [sp]
 1446 009e 0023     		movs	r3, #0
 1447 00a0 6422     		movs	r2, #100
 1448 00a2 0DF11101 		add	r1, sp, #17
 1449 00a6 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1450 00aa 361A     		subs	r6, r6, r0
 1451              	.L244:
 1452 00ac 0134     		adds	r4, r4, #1
 1453              	.L243:
 1454 00ae 3B68     		ldr	r3, [r7]
 1455 00b0 04A9     		add	r1, sp, #16
 1456 00b2 D3F86805 		ldr	r0, [r3, #1384]
 1457 00b6 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 1458 00ba D8B1     		cbz	r0, .L249
 1459              	.L248:
 1460 00bc 9DF81130 		ldrb	r3, [sp, #17]	@ zero_extendqisi2
 1461 00c0 2E2B     		cmp	r3, #46
 1462 00c2 F4D0     		beq	.L243
 1463 00c4 A045     		cmp	r8, r4
 1464 00c6 F1D8     		bhi	.L244
 1465 00c8 0DF11100 		add	r0, sp, #17
 1466 00cc FFF7FEFF 		bl	strlen
 1467 00d0 0A30     		adds	r0, r0, #10
 1468 00d2 B6EB400F 		cmp	r6, r0, lsl #1
 1469 00d6 15D3     		bcc	.L262
 1470 00d8 A045     		cmp	r8, r4
 1471 00da 05D3     		bcc	.L263
 1472              	.L246:
 1473 00dc 0398     		ldr	r0, [sp, #12]
 1474 00de B9F1000F 		cmp	r9, #0
 1475 00e2 D8D1     		bne	.L264
 1476 00e4 4B46     		mov	r3, r9
 1477 00e6 D8E7     		b	.L247
 1478              	.L263:
 1479 00e8 2C21     		movs	r1, #44
 1480 00ea 0398     		ldr	r0, [sp, #12]
 1481 00ec FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 1482 00f0 361A     		subs	r6, r6, r0
ARM GAS  /tmp/ccDCB0nG.s 			page 27


 1483 00f2 F3E7     		b	.L246
 1484              	.L249:
 1485 00f4 0024     		movs	r4, #0
 1486              	.L242:
 1487 00f6 2246     		mov	r2, r4
 1488 00f8 0023     		movs	r3, #0
 1489 00fa 0849     		ldr	r1, .L265+12
 1490 00fc 0398     		ldr	r0, [sp, #12]
 1491 00fe FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1492 0102 ABE7     		b	.L250
 1493              	.L262:
 1494 0104 3B68     		ldr	r3, [r7]
 1495 0106 D3F86805 		ldr	r0, [r3, #1384]
 1496 010a FFF7FEFF 		bl	_ZN11MassStorage15AbandonFindNextEv
 1497 010e F2E7     		b	.L242
 1498              	.L266:
 1499              		.align	2
 1500              	.L265:
 1501 0110 00000000 		.word	.LC40
 1502 0114 08000000 		.word	.LC41
 1503 0118 38000000 		.word	.LC43
 1504 011c 20000000 		.word	.LC42
 1505              		.size	_ZN6RepRap16GetFilesResponseEPKcjb, .-_ZN6RepRap16GetFilesResponseEPKcjb
 1506              		.section	.text._ZN6RepRap19GetFilelistResponseEPKcj,"ax",%progbits
 1507              		.align	1
 1508              		.p2align 2,,3
 1509              		.global	_ZN6RepRap19GetFilelistResponseEPKcj
 1510              		.syntax unified
 1511              		.thumb
 1512              		.thumb_func
 1513              		.fpu softvfp
 1514              		.type	_ZN6RepRap19GetFilelistResponseEPKcj, %function
 1515              	_ZN6RepRap19GetFilelistResponseEPKcj:
 1516              		@ args = 0, pretend = 0, frame = 120
 1517              		@ frame_needed = 0, uses_anonymous_args = 0
 1518 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1519 0004 A2B0     		sub	sp, sp, #136
 1520 0006 0746     		mov	r7, r0
 1521 0008 05A8     		add	r0, sp, #20
 1522 000a 0D46     		mov	r5, r1
 1523 000c 9046     		mov	r8, r2
 1524 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1525 0012 18B3     		cbz	r0, .L267
 1526 0014 5449     		ldr	r1, .L298
 1527 0016 0598     		ldr	r0, [sp, #20]
 1528 0018 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1529 001c 2846     		mov	r0, r5
 1530 001e FFF7FEFF 		bl	strlen
 1531 0022 0024     		movs	r4, #0
 1532 0024 0126     		movs	r6, #1
 1533 0026 0599     		ldr	r1, [sp, #20]
 1534 0028 0246     		mov	r2, r0
 1535 002a 2346     		mov	r3, r4
 1536 002c 0846     		mov	r0, r1
 1537 002e 0194     		str	r4, [sp, #4]
 1538 0030 2946     		mov	r1, r5
 1539 0032 0096     		str	r6, [sp]
ARM GAS  /tmp/ccDCB0nG.s 			page 28


 1540 0034 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1541 0038 4C49     		ldr	r1, .L298+4
 1542 003a 4246     		mov	r2, r8
 1543 003c 0598     		ldr	r0, [sp, #20]
 1544 003e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1545 0042 3B68     		ldr	r3, [r7]
 1546 0044 2946     		mov	r1, r5
 1547 0046 D3F86805 		ldr	r0, [r3, #1384]
 1548 004a FFF7FEFF 		bl	_ZN11MassStorage17CheckDriveMountedEPKc
 1549 004e 40B9     		cbnz	r0, .L293
 1550 0050 3246     		mov	r2, r6
 1551              	.L269:
 1552 0052 4749     		ldr	r1, .L298+8
 1553 0054 0598     		ldr	r0, [sp, #20]
 1554 0056 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1555              	.L280:
 1556 005a 0598     		ldr	r0, [sp, #20]
 1557              	.L267:
 1558 005c 22B0     		add	sp, sp, #136
 1559              		@ sp needed
 1560 005e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1561              	.L293:
 1562 0062 3B68     		ldr	r3, [r7]
 1563 0064 2946     		mov	r1, r5
 1564 0066 D3F86805 		ldr	r0, [r3, #1384]
 1565 006a FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 1566 006e 08B9     		cbnz	r0, .L294
 1567 0070 0222     		movs	r2, #2
 1568 0072 EEE7     		b	.L269
 1569              	.L294:
 1570 0074 3B68     		ldr	r3, [r7]
 1571 0076 2946     		mov	r1, r5
 1572 0078 D3F86805 		ldr	r0, [r3, #1384]
 1573 007c 06AA     		add	r2, sp, #24
 1574 007e FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 1575 0082 0646     		mov	r6, r0
 1576 0084 0598     		ldr	r0, [sp, #20]
 1577 0086 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 1578 008a 0546     		mov	r5, r0
 1579 008c 002E     		cmp	r6, #0
 1580 008e 5DD0     		beq	.L279
 1581 0090 DFF8E890 		ldr	r9, .L298+20
 1582 0094 374E     		ldr	r6, .L298+12
 1583 0096 DFF8E8A0 		ldr	r10, .L298+24
 1584 009a 0DE0     		b	.L278
 1585              	.L297:
 1586 009c 7D21     		movs	r1, #125
 1587 009e 0598     		ldr	r0, [sp, #20]
 1588 00a0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 1589 00a4 2D1A     		subs	r5, r5, r0
 1590              	.L273:
 1591 00a6 0134     		adds	r4, r4, #1
 1592              	.L272:
 1593 00a8 3B68     		ldr	r3, [r7]
 1594 00aa 06A9     		add	r1, sp, #24
 1595 00ac D3F86805 		ldr	r0, [r3, #1384]
 1596 00b0 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
ARM GAS  /tmp/ccDCB0nG.s 			page 29


 1597 00b4 0028     		cmp	r0, #0
 1598 00b6 49D0     		beq	.L279
 1599              	.L278:
 1600 00b8 9DF81930 		ldrb	r3, [sp, #25]	@ zero_extendqisi2
 1601 00bc 2E2B     		cmp	r3, #46
 1602 00be F3D0     		beq	.L272
 1603 00c0 A045     		cmp	r8, r4
 1604 00c2 F0D8     		bhi	.L273
 1605 00c4 0DF11900 		add	r0, sp, #25
 1606 00c8 FFF7FEFF 		bl	strlen
 1607 00cc 1930     		adds	r0, r0, #25
 1608 00ce B5EB400F 		cmp	r5, r0, lsl #1
 1609 00d2 42D3     		bcc	.L295
 1610 00d4 002C     		cmp	r4, #0
 1611 00d6 33D1     		bne	.L296
 1612              	.L275:
 1613 00d8 9DF81830 		ldrb	r3, [sp, #24]	@ zero_extendqisi2
 1614 00dc 4946     		mov	r1, r9
 1615 00de 002B     		cmp	r3, #0
 1616 00e0 14BF     		ite	ne
 1617 00e2 6422     		movne	r2, #100
 1618 00e4 6622     		moveq	r2, #102
 1619 00e6 0598     		ldr	r0, [sp, #20]
 1620 00e8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1621 00ec 0023     		movs	r3, #0
 1622 00ee 0122     		movs	r2, #1
 1623 00f0 2D1A     		subs	r5, r5, r0
 1624 00f2 8DE80C00 		stm	sp, {r2, r3}
 1625 00f6 0DF11901 		add	r1, sp, #25
 1626 00fa 6422     		movs	r2, #100
 1627 00fc 0598     		ldr	r0, [sp, #20]
 1628 00fe FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1629 0102 209A     		ldr	r2, [sp, #128]
 1630 0104 2D1A     		subs	r5, r5, r0
 1631 0106 3146     		mov	r1, r6
 1632 0108 0598     		ldr	r0, [sp, #20]
 1633 010a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1634 010e 2D1A     		subs	r5, r5, r0
 1635 0110 21A8     		add	r0, sp, #132
 1636 0112 FFF7FEFF 		bl	gmtime
 1637 0116 4369     		ldr	r3, [r0, #20]
 1638 0118 502B     		cmp	r3, #80
 1639 011a 03F26C72 		addw	r2, r3, #1900
 1640 011e BDDD     		ble	.L297
 1641 0120 0168     		ldr	r1, [r0]
 1642 0122 0369     		ldr	r3, [r0, #16]
 1643 0124 0391     		str	r1, [sp, #12]
 1644 0126 4168     		ldr	r1, [r0, #4]
 1645 0128 0133     		adds	r3, r3, #1
 1646 012a 0291     		str	r1, [sp, #8]
 1647 012c 8168     		ldr	r1, [r0, #8]
 1648 012e 0191     		str	r1, [sp, #4]
 1649 0130 C168     		ldr	r1, [r0, #12]
 1650 0132 0598     		ldr	r0, [sp, #20]
 1651 0134 0091     		str	r1, [sp]
 1652 0136 5146     		mov	r1, r10
 1653 0138 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
ARM GAS  /tmp/ccDCB0nG.s 			page 30


 1654 013c 2D1A     		subs	r5, r5, r0
 1655 013e B2E7     		b	.L273
 1656              	.L296:
 1657 0140 2C21     		movs	r1, #44
 1658 0142 0598     		ldr	r0, [sp, #20]
 1659 0144 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 1660 0148 2D1A     		subs	r5, r5, r0
 1661 014a C5E7     		b	.L275
 1662              	.L279:
 1663 014c 0024     		movs	r4, #0
 1664              	.L271:
 1665 014e 2246     		mov	r2, r4
 1666 0150 0949     		ldr	r1, .L298+16
 1667 0152 0598     		ldr	r0, [sp, #20]
 1668 0154 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1669 0158 7FE7     		b	.L280
 1670              	.L295:
 1671 015a 3B68     		ldr	r3, [r7]
 1672 015c D3F86805 		ldr	r0, [r3, #1384]
 1673 0160 FFF7FEFF 		bl	_ZN11MassStorage15AbandonFindNextEv
 1674 0164 F3E7     		b	.L271
 1675              	.L299:
 1676 0166 00BF     		.align	2
 1677              	.L298:
 1678 0168 00000000 		.word	.LC40
 1679 016c 08000000 		.word	.LC41
 1680 0170 38000000 		.word	.LC43
 1681 0174 18000000 		.word	.LC45
 1682 0178 50000000 		.word	.LC47
 1683 017c 00000000 		.word	.LC44
 1684 0180 24000000 		.word	.LC46
 1685              		.size	_ZN6RepRap19GetFilelistResponseEPKcj, .-_ZN6RepRap19GetFilelistResponseEPKcj
 1686              		.section	.text._ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb,"ax",%progbits
 1687              		.align	1
 1688              		.p2align 2,,3
 1689              		.global	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb
 1690              		.syntax unified
 1691              		.thumb
 1692              		.thumb_func
 1693              		.fpu softvfp
 1694              		.type	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb, %function
 1695              	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb:
 1696              		@ args = 0, pretend = 0, frame = 112
 1697              		@ frame_needed = 0, uses_anonymous_args = 0
 1698 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1699 0004 1546     		mov	r5, r2
 1700 0006 A1B0     		sub	sp, sp, #132
 1701 0008 11B1     		cbz	r1, .L301
 1702 000a 1C46     		mov	r4, r3
 1703 000c 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 1704 000e 9BB9     		cbnz	r3, .L340
 1705              	.L301:
 1706 0010 C069     		ldr	r0, [r0, #28]
 1707 0012 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 1708 0014 43B9     		cbnz	r3, .L341
 1709 0016 2846     		mov	r0, r5
 1710 0018 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
ARM GAS  /tmp/ccDCB0nG.s 			page 31


 1711 001c 0446     		mov	r4, r0
 1712 001e 58BB     		cbnz	r0, .L339
 1713              	.L311:
 1714 0020 2046     		mov	r0, r4
 1715 0022 21B0     		add	sp, sp, #132
 1716              		@ sp needed
 1717 0024 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1718              	.L341:
 1719 0028 2946     		mov	r1, r5
 1720 002a FFF7FEFF 		bl	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer
 1721 002e 0446     		mov	r4, r0
 1722 0030 2046     		mov	r0, r4
 1723 0032 21B0     		add	sp, sp, #132
 1724              		@ sp needed
 1725 0034 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1726              	.L340:
 1727 0038 0026     		movs	r6, #0
 1728 003a 0368     		ldr	r3, [r0]
 1729 003c 0A46     		mov	r2, r1
 1730 003e D3F86805 		ldr	r0, [r3, #1384]
 1731 0042 4E49     		ldr	r1, .L347
 1732 0044 0094     		str	r4, [sp]
 1733 0046 04AB     		add	r3, sp, #16
 1734 0048 00F59160 		add	r0, r0, #1160
 1735 004c 8DF84A60 		strb	r6, [sp, #74]
 1736 0050 FFF7FEFF 		bl	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 1737 0054 0446     		mov	r4, r0
 1738 0056 30B1     		cbz	r0, .L302
 1739 0058 9DF84830 		ldrb	r3, [sp, #72]	@ zero_extendqisi2
 1740 005c 2846     		mov	r0, r5
 1741 005e 3BB1     		cbz	r3, .L303
 1742 0060 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1743 0064 80B9     		cbnz	r0, .L342
 1744              	.L302:
 1745 0066 0024     		movs	r4, #0
 1746 0068 2046     		mov	r0, r4
 1747 006a 21B0     		add	sp, sp, #132
 1748              		@ sp needed
 1749 006c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1750              	.L303:
 1751 0070 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1752 0074 0028     		cmp	r0, #0
 1753 0076 F6D0     		beq	.L302
 1754              	.L339:
 1755 0078 2868     		ldr	r0, [r5]
 1756 007a 4149     		ldr	r1, .L347+4
 1757 007c FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1758 0080 2046     		mov	r0, r4
 1759 0082 21B0     		add	sp, sp, #132
 1760              		@ sp needed
 1761 0084 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1762              	.L342:
 1763 0088 049A     		ldr	r2, [sp, #16]
 1764 008a 3E49     		ldr	r1, .L347+8
 1765 008c 2868     		ldr	r0, [r5]
 1766 008e FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1767 0092 05A8     		add	r0, sp, #20
ARM GAS  /tmp/ccDCB0nG.s 			page 32


 1768 0094 FFF7FEFF 		bl	gmtime
 1769 0098 4269     		ldr	r2, [r0, #20]
 1770 009a 502A     		cmp	r2, #80
 1771 009c 5BDC     		bgt	.L343
 1772              	.L304:
 1773 009e 0898     		ldr	r0, [sp, #32]	@ float
 1774 00a0 FFF7FEFF 		bl	__aeabi_f2d
 1775 00a4 8046     		mov	r8, r0
 1776 00a6 0698     		ldr	r0, [sp, #24]	@ float
 1777 00a8 8946     		mov	r9, r1
 1778 00aa FFF7FEFF 		bl	__aeabi_f2d
 1779 00ae CDE90201 		strd	r0, [sp, #8]
 1780 00b2 0798     		ldr	r0, [sp, #28]	@ float
 1781 00b4 FFF7FEFF 		bl	__aeabi_f2d
 1782 00b8 2E68     		ldr	r6, [r5]
 1783 00ba 4246     		mov	r2, r8
 1784 00bc CDE90001 		strd	r0, [sp]
 1785 00c0 4B46     		mov	r3, r9
 1786 00c2 3046     		mov	r0, r6
 1787 00c4 3049     		ldr	r1, .L347+12
 1788 00c6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1789 00ca 0F9A     		ldr	r2, [sp, #60]
 1790 00cc 002A     		cmp	r2, #0
 1791 00ce 3DD1     		bne	.L344
 1792              	.L305:
 1793 00d0 109A     		ldr	r2, [sp, #64]
 1794 00d2 002A     		cmp	r2, #0
 1795 00d4 35D1     		bne	.L345
 1796              	.L306:
 1797 00d6 2D49     		ldr	r1, .L347+16
 1798 00d8 2868     		ldr	r0, [r5]
 1799 00da FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1800 00de 119B     		ldr	r3, [sp, #68]
 1801 00e0 53B3     		cbz	r3, .L346
 1802 00e2 0026     		movs	r6, #0
 1803 00e4 4FF05B08 		mov	r8, #91
 1804 00e8 DFF8B890 		ldr	r9, .L347+40
 1805 00ec 08AF     		add	r7, sp, #32
 1806              	.L309:
 1807 00ee 57F8040F 		ldr	r0, [r7, #4]!	@ float
 1808 00f2 FFF7FEFF 		bl	__aeabi_f2d
 1809 00f6 2B68     		ldr	r3, [r5]
 1810 00f8 4246     		mov	r2, r8
 1811 00fa CDE90001 		strd	r0, [sp]
 1812 00fe 1846     		mov	r0, r3
 1813 0100 4946     		mov	r1, r9
 1814 0102 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1815 0106 119B     		ldr	r3, [sp, #68]
 1816 0108 0136     		adds	r6, r6, #1
 1817 010a B342     		cmp	r3, r6
 1818 010c 4FF02C08 		mov	r8, #44
 1819 0110 EDD8     		bhi	.L309
 1820              	.L308:
 1821 0112 1F49     		ldr	r1, .L347+20
 1822 0114 2868     		ldr	r0, [r5]
 1823 0116 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1824 011a 0023     		movs	r3, #0
ARM GAS  /tmp/ccDCB0nG.s 			page 33


 1825 011c 0122     		movs	r2, #1
 1826 011e 2868     		ldr	r0, [r5]
 1827 0120 0DF14A01 		add	r1, sp, #74
 1828 0124 8DE80C00 		stm	sp, {r2, r3}
 1829 0128 3222     		movs	r2, #50
 1830 012a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1831 012e 2868     		ldr	r0, [r5]
 1832 0130 1849     		ldr	r1, .L347+24
 1833 0132 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1834 0136 73E7     		b	.L311
 1835              	.L346:
 1836 0138 5B21     		movs	r1, #91
 1837 013a 2868     		ldr	r0, [r5]
 1838 013c FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 1839 0140 E7E7     		b	.L308
 1840              	.L345:
 1841 0142 1549     		ldr	r1, .L347+28
 1842 0144 2868     		ldr	r0, [r5]
 1843 0146 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1844 014a C4E7     		b	.L306
 1845              	.L344:
 1846 014c 1349     		ldr	r1, .L347+32
 1847 014e 2868     		ldr	r0, [r5]
 1848 0150 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1849 0154 BCE7     		b	.L305
 1850              	.L343:
 1851 0156 0168     		ldr	r1, [r0]
 1852 0158 0369     		ldr	r3, [r0, #16]
 1853 015a 0391     		str	r1, [sp, #12]
 1854 015c 4668     		ldr	r6, [r0, #4]
 1855 015e 2968     		ldr	r1, [r5]
 1856 0160 0296     		str	r6, [sp, #8]
 1857 0162 8668     		ldr	r6, [r0, #8]
 1858 0164 02F26C72 		addw	r2, r2, #1900
 1859 0168 0196     		str	r6, [sp, #4]
 1860 016a C068     		ldr	r0, [r0, #12]
 1861 016c 0133     		adds	r3, r3, #1
 1862 016e 0090     		str	r0, [sp]
 1863 0170 0846     		mov	r0, r1
 1864 0172 0B49     		ldr	r1, .L347+36
 1865 0174 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1866 0178 91E7     		b	.L304
 1867              	.L348:
 1868 017a 00BF     		.align	2
 1869              	.L347:
 1870 017c 00000000 		.word	.LC48
 1871 0180 E8000000 		.word	.LC58
 1872 0184 0C000000 		.word	.LC49
 1873 0188 54000000 		.word	.LC51
 1874 018c BC000000 		.word	.LC54
 1875 0190 D0000000 		.word	.LC56
 1876 0194 E4000000 		.word	.LC57
 1877 0198 A4000000 		.word	.LC53
 1878 019c 90000000 		.word	.LC52
 1879 01a0 24000000 		.word	.LC50
 1880 01a4 C8000000 		.word	.LC55
 1881              		.size	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb, .-_ZN6RepRap19GetFileInfoResponseEPKcR
ARM GAS  /tmp/ccDCB0nG.s 			page 34


 1882              		.section	.text._ZN6RepRap4BeepEjj,"ax",%progbits
 1883              		.align	1
 1884              		.p2align 2,,3
 1885              		.global	_ZN6RepRap4BeepEjj
 1886              		.syntax unified
 1887              		.thumb
 1888              		.thumb_func
 1889              		.fpu softvfp
 1890              		.type	_ZN6RepRap4BeepEjj, %function
 1891              	_ZN6RepRap4BeepEjj:
 1892              		@ args = 0, pretend = 0, frame = 0
 1893              		@ frame_needed = 0, uses_anonymous_args = 0
 1894              		@ link register save eliminated.
 1895 0000 3229     		cmp	r1, #50
 1896 0002 30B4     		push	{r4, r5}
 1897 0004 38BF     		it	cc
 1898 0006 3221     		movcc	r1, #50
 1899 0008 42F21074 		movw	r4, #10000
 1900 000c 0A2A     		cmp	r2, #10
 1901 000e 38BF     		it	cc
 1902 0010 0A22     		movcc	r2, #10
 1903 0012 4EF66025 		movw	r5, #60000
 1904 0016 0368     		ldr	r3, [r0]
 1905 0018 A142     		cmp	r1, r4
 1906 001a 28BF     		it	cs
 1907 001c 2146     		movcs	r1, r4
 1908 001e 93F84C45 		ldrb	r4, [r3, #1356]	@ zero_extendqisi2
 1909 0022 AA42     		cmp	r2, r5
 1910 0024 28BF     		it	cs
 1911 0026 2A46     		movcs	r2, r5
 1912 0028 2CB9     		cbnz	r4, .L352
 1913 002a 30BC     		pop	{r4, r5}
 1914 002c C0F88C10 		str	r1, [r0, #140]
 1915 0030 C0F89020 		str	r2, [r0, #144]
 1916 0034 7047     		bx	lr
 1917              	.L352:
 1918 0036 1846     		mov	r0, r3
 1919 0038 30BC     		pop	{r4, r5}
 1920 003a FFF7FEBF 		b	_ZN8Platform4BeepEii
 1921              		.size	_ZN6RepRap4BeepEjj, .-_ZN6RepRap4BeepEjj
 1922 003e 00BF     		.section	.text._ZN6RepRap10SetMessageEPKc,"ax",%progbits
 1923              		.align	1
 1924              		.p2align 2,,3
 1925              		.global	_ZN6RepRap10SetMessageEPKc
 1926              		.syntax unified
 1927              		.thumb
 1928              		.thumb_func
 1929              		.fpu softvfp
 1930              		.type	_ZN6RepRap10SetMessageEPKc, %function
 1931              	_ZN6RepRap10SetMessageEPKc:
 1932              		@ args = 0, pretend = 0, frame = 0
 1933              		@ frame_needed = 0, uses_anonymous_args = 0
 1934 0000 38B5     		push	{r3, r4, r5, lr}
 1935 0002 0446     		mov	r4, r0
 1936 0004 40F20112 		movw	r2, #257
 1937 0008 9430     		adds	r0, r0, #148
 1938 000a 0D46     		mov	r5, r1
ARM GAS  /tmp/ccDCB0nG.s 			page 35


 1939 000c FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1940 0010 2068     		ldr	r0, [r4]
 1941 0012 90F84C35 		ldrb	r3, [r0, #1356]	@ zero_extendqisi2
 1942 0016 03B9     		cbnz	r3, .L356
 1943 0018 38BD     		pop	{r3, r4, r5, pc}
 1944              	.L356:
 1945 001a 2946     		mov	r1, r5
 1946 001c BDE83840 		pop	{r3, r4, r5, lr}
 1947 0020 FFF7FEBF 		b	_ZN8Platform14SendAuxMessageEPKc
 1948              		.size	_ZN6RepRap10SetMessageEPKc, .-_ZN6RepRap10SetMessageEPKc
 1949              		.global	__aeabi_fcmple
 1950              		.global	__aeabi_fcmpun
 1951              		.global	__aeabi_f2uiz
 1952              		.global	__aeabi_fcmpgt
 1953              		.section	.text._ZN6RepRap8SetAlertEPKcS1_ifm,"ax",%progbits
 1954              		.align	1
 1955              		.p2align 2,,3
 1956              		.global	_ZN6RepRap8SetAlertEPKcS1_ifm
 1957              		.syntax unified
 1958              		.thumb
 1959              		.thumb_func
 1960              		.fpu softvfp
 1961              		.type	_ZN6RepRap8SetAlertEPKcS1_ifm, %function
 1962              	_ZN6RepRap8SetAlertEPKcS1_ifm:
 1963              		@ args = 8, pretend = 0, frame = 16
 1964              		@ frame_needed = 0, uses_anonymous_args = 0
 1965 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1966 0004 0446     		mov	r4, r0
 1967 0006 8946     		mov	r9, r1
 1968 0008 9046     		mov	r8, r2
 1969 000a 40F20116 		movw	r6, #257
 1970 000e 1F46     		mov	r7, r3
 1971 0010 85B0     		sub	sp, sp, #20
 1972 0012 00F12401 		add	r1, r0, #36
 1973 0016 4FF0FF32 		mov	r2, #-1
 1974 001a 6846     		mov	r0, sp
 1975 001c 0D9D     		ldr	r5, [sp, #52]
 1976 001e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1977 0022 04F5CB73 		add	r3, r4, #406
 1978 0026 4946     		mov	r1, r9
 1979 0028 02A8     		add	r0, sp, #8
 1980 002a 0293     		str	r3, [sp, #8]
 1981 002c 0396     		str	r6, [sp, #12]
 1982 002e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1983 0032 4146     		mov	r1, r8
 1984 0034 04F29723 		addw	r3, r4, #663
 1985 0038 02A8     		add	r0, sp, #8
 1986 003a 0396     		str	r6, [sp, #12]
 1987 003c 0293     		str	r3, [sp, #8]
 1988 003e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1989 0042 C4F89873 		str	r7, [r4, #920]
 1990 0046 0C98     		ldr	r0, [sp, #48]	@ float
 1991 0048 0021     		movs	r1, #0
 1992 004a FFF7FEFF 		bl	__aeabi_fcmple
 1993 004e 38BB     		cbnz	r0, .L363
 1994 0050 FFF7FEFF 		bl	millis
 1995              	.L358:
ARM GAS  /tmp/ccDCB0nG.s 			page 36


 1996 0054 0C99     		ldr	r1, [sp, #48]	@ float
 1997 0056 C4F8A003 		str	r0, [r4, #928]
 1998 005a 0846     		mov	r0, r1
 1999 005c FFF7FEFF 		bl	__aeabi_fcmpun
 2000 0060 20B9     		cbnz	r0, .L361
 2001 0062 0021     		movs	r1, #0
 2002 0064 0C98     		ldr	r0, [sp, #48]	@ float
 2003 0066 FFF7FEFF 		bl	__aeabi_fcmpgt
 2004 006a 38B1     		cbz	r0, .L362
 2005              	.L361:
 2006 006c 0D49     		ldr	r1, .L367
 2007 006e 0C98     		ldr	r0, [sp, #48]	@ float
 2008 0070 FFF7FEFF 		bl	__aeabi_fmul
 2009 0074 FFF7FEFF 		bl	roundf
 2010 0078 FFF7FEFF 		bl	__aeabi_f2uiz
 2011              	.L362:
 2012 007c 0122     		movs	r2, #1
 2013 007e D4F89C33 		ldr	r3, [r4, #924]
 2014 0082 C4F8A403 		str	r0, [r4, #932]
 2015 0086 1344     		add	r3, r3, r2
 2016 0088 C4F8A853 		str	r5, [r4, #936]
 2017 008c 6846     		mov	r0, sp
 2018 008e C4F89C33 		str	r3, [r4, #924]
 2019 0092 84F89521 		strb	r2, [r4, #405]
 2020 0096 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2021 009a 05B0     		add	sp, sp, #20
 2022              		@ sp needed
 2023 009c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2024              	.L363:
 2025 00a0 0020     		movs	r0, #0
 2026 00a2 D7E7     		b	.L358
 2027              	.L368:
 2028              		.align	2
 2029              	.L367:
 2030 00a4 00007A44 		.word	1148846080
 2031              		.size	_ZN6RepRap8SetAlertEPKcS1_ifm, .-_ZN6RepRap8SetAlertEPKcS1_ifm
 2032              		.section	.text._ZN6RepRap10ClearAlertEv,"ax",%progbits
 2033              		.align	1
 2034              		.p2align 2,,3
 2035              		.global	_ZN6RepRap10ClearAlertEv
 2036              		.syntax unified
 2037              		.thumb
 2038              		.thumb_func
 2039              		.fpu softvfp
 2040              		.type	_ZN6RepRap10ClearAlertEv, %function
 2041              	_ZN6RepRap10ClearAlertEv:
 2042              		@ args = 0, pretend = 0, frame = 8
 2043              		@ frame_needed = 0, uses_anonymous_args = 0
 2044 0000 10B5     		push	{r4, lr}
 2045 0002 82B0     		sub	sp, sp, #8
 2046 0004 00F12401 		add	r1, r0, #36
 2047 0008 0446     		mov	r4, r0
 2048 000a 4FF0FF32 		mov	r2, #-1
 2049 000e 6846     		mov	r0, sp
 2050 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2051 0014 0023     		movs	r3, #0
 2052 0016 6846     		mov	r0, sp
ARM GAS  /tmp/ccDCB0nG.s 			page 37


 2053 0018 84F89531 		strb	r3, [r4, #405]
 2054 001c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2055 0020 02B0     		add	sp, sp, #8
 2056              		@ sp needed
 2057 0022 10BD     		pop	{r4, pc}
 2058              		.size	_ZN6RepRap10ClearAlertEv, .-_ZN6RepRap10ClearAlertEv
 2059              		.section	.text._ZNK6RepRap18GetStatusCharacterEv,"ax",%progbits
 2060              		.align	1
 2061              		.p2align 2,,3
 2062              		.global	_ZNK6RepRap18GetStatusCharacterEv
 2063              		.syntax unified
 2064              		.thumb
 2065              		.thumb_func
 2066              		.fpu softvfp
 2067              		.type	_ZNK6RepRap18GetStatusCharacterEv, %function
 2068              	_ZNK6RepRap18GetStatusCharacterEv:
 2069              		@ args = 0, pretend = 0, frame = 0
 2070              		@ frame_needed = 0, uses_anonymous_args = 0
 2071 0000 90F84B30 		ldrb	r3, [r0, #75]	@ zero_extendqisi2
 2072 0004 53B9     		cbnz	r3, .L375
 2073 0006 0369     		ldr	r3, [r0, #16]
 2074 0008 93F8CD23 		ldrb	r2, [r3, #973]	@ zero_extendqisi2
 2075 000c 22B9     		cbnz	r2, .L376
 2076 000e 90F84820 		ldrb	r2, [r0, #72]	@ zero_extendqisi2
 2077 0012 2AB1     		cbz	r2, .L391
 2078 0014 4820     		movs	r0, #72
 2079 0016 7047     		bx	lr
 2080              	.L376:
 2081 0018 4620     		movs	r0, #70
 2082 001a 7047     		bx	lr
 2083              	.L375:
 2084 001c 4320     		movs	r0, #67
 2085 001e 7047     		bx	lr
 2086              	.L391:
 2087 0020 10B5     		push	{r4, lr}
 2088 0022 0446     		mov	r4, r0
 2089 0024 1846     		mov	r0, r3
 2090 0026 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 2091 002a 08B1     		cbz	r0, .L392
 2092 002c 4420     		movs	r0, #68
 2093 002e 10BD     		pop	{r4, pc}
 2094              	.L392:
 2095 0030 2069     		ldr	r0, [r4, #16]
 2096 0032 FFF7FEFF 		bl	_ZNK6GCodes10IsResumingEv
 2097 0036 28B9     		cbnz	r0, .L379
 2098 0038 2069     		ldr	r0, [r4, #16]
 2099 003a 90F88130 		ldrb	r3, [r0, #129]	@ zero_extendqisi2
 2100 003e 1BB1     		cbz	r3, .L393
 2101 0040 5420     		movs	r0, #84
 2102 0042 10BD     		pop	{r4, pc}
 2103              	.L379:
 2104 0044 5220     		movs	r0, #82
 2105 0046 10BD     		pop	{r4, pc}
 2106              	.L393:
 2107 0048 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 2108 004c 50B9     		cbnz	r0, .L381
 2109 004e E369     		ldr	r3, [r4, #28]
ARM GAS  /tmp/ccDCB0nG.s 			page 38


 2110 0050 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 2111 0052 4BB1     		cbz	r3, .L373
 2112 0054 2369     		ldr	r3, [r4, #16]
 2113 0056 93F83033 		ldrb	r3, [r3, #816]	@ zero_extendqisi2
 2114 005a 002B     		cmp	r3, #0
 2115 005c 14BF     		ite	ne
 2116 005e 4D20     		movne	r0, #77
 2117 0060 5020     		moveq	r0, #80
 2118 0062 10BD     		pop	{r4, pc}
 2119              	.L381:
 2120 0064 5320     		movs	r0, #83
 2121 0066 10BD     		pop	{r4, pc}
 2122              	.L373:
 2123 0068 2069     		ldr	r0, [r4, #16]
 2124 006a FFF7FEFF 		bl	_ZNK6GCodes14DoingFileMacroEv
 2125 006e 20B9     		cbnz	r0, .L384
 2126 0070 A368     		ldr	r3, [r4, #8]
 2127 0072 9A68     		ldr	r2, [r3, #8]
 2128 0074 5968     		ldr	r1, [r3, #4]
 2129 0076 8A42     		cmp	r2, r1
 2130 0078 01D0     		beq	.L394
 2131              	.L384:
 2132 007a 4220     		movs	r0, #66
 2133 007c 10BD     		pop	{r4, pc}
 2134              	.L394:
 2135 007e 127A     		ldrb	r2, [r2, #8]	@ zero_extendqisi2
 2136 0080 002A     		cmp	r2, #0
 2137 0082 FAD1     		bne	.L384
 2138 0084 1B68     		ldr	r3, [r3]
 2139 0086 002B     		cmp	r3, #0
 2140 0088 14BF     		ite	ne
 2141 008a 4220     		movne	r0, #66
 2142 008c 4920     		moveq	r0, #73
 2143 008e 10BD     		pop	{r4, pc}
 2144              		.size	_ZNK6RepRap18GetStatusCharacterEv, .-_ZNK6RepRap18GetStatusCharacterEv
 2145              		.global	__aeabi_fdiv
 2146              		.global	__aeabi_fsub
 2147              		.global	__aeabi_uldivmod
 2148              		.global	__aeabi_ul2d
 2149              		.section	.text._ZN6RepRap17GetStatusResponseEh14ResponseSource,"ax",%progbits
 2150              		.align	1
 2151              		.p2align 2,,3
 2152              		.global	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 2153              		.syntax unified
 2154              		.thumb
 2155              		.thumb_func
 2156              		.fpu softvfp
 2157              		.type	_ZN6RepRap17GetStatusResponseEh14ResponseSource, %function
 2158              	_ZN6RepRap17GetStatusResponseEh14ResponseSource:
 2159              		@ args = 0, pretend = 0, frame = 80
 2160              		@ frame_needed = 0, uses_anonymous_args = 0
 2161 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2162 0004 99B0     		sub	sp, sp, #100
 2163 0006 0446     		mov	r4, r0
 2164 0008 0DA8     		add	r0, sp, #52
 2165 000a 0891     		str	r1, [sp, #32]
 2166 000c 0992     		str	r2, [sp, #36]
ARM GAS  /tmp/ccDCB0nG.s 			page 39


 2167 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2168 0012 0590     		str	r0, [sp, #20]
 2169 0014 0028     		cmp	r0, #0
 2170 0016 00F05284 		beq	.L540
 2171 001a 2046     		mov	r0, r4
 2172 001c FFF7FEFF 		bl	_ZNK6RepRap18GetStatusCharacterEv
 2173 0020 5E49     		ldr	r1, .L706
 2174 0022 0246     		mov	r2, r0
 2175 0024 0D98     		ldr	r0, [sp, #52]
 2176 0026 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2177 002a 2369     		ldr	r3, [r4, #16]
 2178 002c 5C49     		ldr	r1, .L706+4
 2179 002e D3F8FC31 		ldr	r3, [r3, #508]
 2180 0032 0D98     		ldr	r0, [sp, #52]
 2181 0034 1D46     		mov	r5, r3
 2182 0036 0793     		str	r3, [sp, #28]
 2183 0038 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2184 003c 2B46     		mov	r3, r5
 2185 003e 002D     		cmp	r5, #0
 2186 0040 00F08B84 		beq	.L397
 2187 0044 0025     		movs	r5, #0
 2188 0046 5B22     		movs	r2, #91
 2189 0048 1F46     		mov	r7, r3
 2190 004a 564E     		ldr	r6, .L706+8
 2191              	.L399:
 2192 004c 2369     		ldr	r3, [r4, #16]
 2193 004e 3146     		mov	r1, r6
 2194 0050 D3F88032 		ldr	r3, [r3, #640]
 2195 0054 0D98     		ldr	r0, [sp, #52]
 2196 0056 EB40     		lsrs	r3, r3, r5
 2197 0058 03F00103 		and	r3, r3, #1
 2198 005c 0135     		adds	r5, r5, #1
 2199 005e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2200 0062 BD42     		cmp	r5, r7
 2201 0064 4FF02C02 		mov	r2, #44
 2202 0068 F0D1     		bne	.L399
 2203 006a 0026     		movs	r6, #0
 2204 006c 4FF05B0A 		mov	r10, #91
 2205 0070 A946     		mov	r9, r5
 2206 0072 4D49     		ldr	r1, .L706+12
 2207 0074 0D98     		ldr	r0, [sp, #52]
 2208 0076 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2209 007a 2769     		ldr	r7, [r4, #16]
 2210 007c DFF83081 		ldr	r8, .L706+20
 2211 0080 8037     		adds	r7, r7, #128
 2212              	.L401:
 2213 0082 57F8040F 		ldr	r0, [r7, #4]!	@ float
 2214 0086 0D9D     		ldr	r5, [sp, #52]
 2215 0088 FFF7FEFF 		bl	_Z7HideNanf
 2216 008c 0136     		adds	r6, r6, #1
 2217 008e CDE90001 		strd	r0, [sp]
 2218 0092 5246     		mov	r2, r10
 2219 0094 2846     		mov	r0, r5
 2220 0096 4146     		mov	r1, r8
 2221 0098 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2222 009c B145     		cmp	r9, r6
 2223 009e 4FF02C0A 		mov	r10, #44
ARM GAS  /tmp/ccDCB0nG.s 			page 40


 2224 00a2 EED1     		bne	.L401
 2225 00a4 E26A     		ldr	r2, [r4, #44]
 2226 00a6 A068     		ldr	r0, [r4, #8]
 2227 00a8 002A     		cmp	r2, #0
 2228 00aa 00F04384 		beq	.L682
 2229              	.L525:
 2230 00ae 0FAB     		add	r3, sp, #60
 2231 00b0 1946     		mov	r1, r3
 2232 00b2 0693     		str	r3, [sp, #24]
 2233 00b4 D36E     		ldr	r3, [r2, #108]
 2234 00b6 926E     		ldr	r2, [r2, #104]
 2235 00b8 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 2236 00bc 3B49     		ldr	r1, .L706+16
 2237 00be 0D98     		ldr	r0, [sp, #52]
 2238 00c0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2239 00c4 079B     		ldr	r3, [sp, #28]
 2240 00c6 002B     		cmp	r3, #0
 2241 00c8 00F06884 		beq	.L683
 2242              	.L402:
 2243 00cc 0DF13808 		add	r8, sp, #56
 2244 00d0 4646     		mov	r6, r8
 2245 00d2 0025     		movs	r5, #0
 2246 00d4 4FF05B0A 		mov	r10, #91
 2247 00d8 A346     		mov	fp, r4
 2248 00da 354F     		ldr	r7, .L706+20
 2249 00dc DDF81C90 		ldr	r9, [sp, #28]
 2250              	.L406:
 2251 00e0 56F8040F 		ldr	r0, [r6, #4]!	@ float
 2252 00e4 0D9C     		ldr	r4, [sp, #52]
 2253 00e6 FFF7FEFF 		bl	_Z7HideNanf
 2254 00ea 0135     		adds	r5, r5, #1
 2255 00ec CDE90001 		strd	r0, [sp]
 2256 00f0 5246     		mov	r2, r10
 2257 00f2 2046     		mov	r0, r4
 2258 00f4 3946     		mov	r1, r7
 2259 00f6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2260 00fa 4D45     		cmp	r5, r9
 2261 00fc 4FF02C0A 		mov	r10, #44
 2262 0100 EED3     		bcc	.L406
 2263 0102 5C46     		mov	r4, fp
 2264              	.L405:
 2265 0104 2B49     		ldr	r1, .L706+24
 2266 0106 0D98     		ldr	r0, [sp, #52]
 2267 0108 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2268 010c A38E     		ldrh	r3, [r4, #52]
 2269 010e 002B     		cmp	r3, #0
 2270 0110 00F00B84 		beq	.L684
 2271 0114 0025     		movs	r5, #0
 2272 0116 4FF05B09 		mov	r9, #91
 2273 011a 274E     		ldr	r6, .L706+28
 2274              	.L407:
 2275 011c 2369     		ldr	r3, [r4, #16]
 2276 011e 18AA     		add	r2, sp, #96
 2277 0120 D3F8F831 		ldr	r3, [r3, #504]
 2278 0124 0D9F     		ldr	r7, [sp, #52]
 2279 0126 2B44     		add	r3, r3, r5
 2280 0128 02EB8303 		add	r3, r2, r3, lsl #2
ARM GAS  /tmp/ccDCB0nG.s 			page 41


 2281 012c 53F8240C 		ldr	r0, [r3, #-36]	@ float
 2282 0130 FFF7FEFF 		bl	__aeabi_f2d
 2283 0134 4A46     		mov	r2, r9
 2284 0136 CDE90001 		strd	r0, [sp]
 2285 013a 3846     		mov	r0, r7
 2286 013c 3146     		mov	r1, r6
 2287 013e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2288 0142 A38E     		ldrh	r3, [r4, #52]
 2289 0144 0135     		adds	r5, r5, #1
 2290 0146 AB42     		cmp	r3, r5
 2291 0148 4FF02C09 		mov	r9, #44
 2292 014c E6D8     		bhi	.L407
 2293              	.L528:
 2294 014e E36A     		ldr	r3, [r4, #44]
 2295 0150 0D98     		ldr	r0, [sp, #52]
 2296 0152 002B     		cmp	r3, #0
 2297 0154 00F0C583 		beq	.L541
 2298 0158 5A6E     		ldr	r2, [r3, #100]
 2299              	.L408:
 2300 015a 1849     		ldr	r1, .L706+32
 2301 015c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2302 0160 099B     		ldr	r3, [sp, #36]
 2303 0162 012B     		cmp	r3, #1
 2304 0164 03D0     		beq	.L409
 2305 0166 2368     		ldr	r3, [r4]
 2306 0168 93F84C35 		ldrb	r3, [r3, #1356]	@ zero_extendqisi2
 2307 016c 43BB     		cbnz	r3, .L410
 2308              	.L409:
 2309 016e D4F89030 		ldr	r3, [r4, #144]
 2310 0172 2BB3     		cbz	r3, .L410
 2311 0174 D4F88C30 		ldr	r3, [r4, #140]
 2312 0178 13B3     		cbz	r3, .L410
 2313 017a 4FF0FF32 		mov	r2, #-1
 2314 017e 04F12401 		add	r1, r4, #36
 2315 0182 0698     		ldr	r0, [sp, #24]
 2316 0184 94F89460 		ldrb	r6, [r4, #148]	@ zero_extendqisi2
 2317 0188 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2318 018c 94F89571 		ldrb	r7, [r4, #405]	@ zero_extendqisi2
 2319 0190 002F     		cmp	r7, #0
 2320 0192 40F01283 		bne	.L519
 2321 0196 0025     		movs	r5, #0
 2322 0198 18E3     		b	.L414
 2323              	.L707:
 2324 019a 00BF     		.align	2
 2325              	.L706:
 2326 019c 1C000000 		.word	.LC64
 2327 01a0 38000000 		.word	.LC65
 2328 01a4 48000000 		.word	.LC66
 2329 01a8 94060000 		.word	.LC142
 2330 01ac 58000000 		.word	.LC68
 2331 01b0 50000000 		.word	.LC67
 2332 01b4 68000000 		.word	.LC69
 2333 01b8 C8000000 		.word	.LC55
 2334 01bc 74000000 		.word	.LC70
 2335              	.L410:
 2336 01c0 4FF0FF32 		mov	r2, #-1
 2337 01c4 04F12401 		add	r1, r4, #36
ARM GAS  /tmp/ccDCB0nG.s 			page 42


 2338 01c8 0698     		ldr	r0, [sp, #24]
 2339 01ca 94F89460 		ldrb	r6, [r4, #148]	@ zero_extendqisi2
 2340 01ce FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2341 01d2 94F89531 		ldrb	r3, [r4, #405]	@ zero_extendqisi2
 2342 01d6 002B     		cmp	r3, #0
 2343 01d8 40F0EE82 		bne	.L685
 2344 01dc 86B1     		cbz	r6, .L416
 2345 01de 0025     		movs	r5, #0
 2346              	.L415:
 2347 01e0 BE49     		ldr	r1, .L708
 2348 01e2 0D98     		ldr	r0, [sp, #52]
 2349 01e4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2350 01e8 002E     		cmp	r6, #0
 2351 01ea 40F00583 		bne	.L417
 2352              	.L694:
 2353 01ee 94F89531 		ldrb	r3, [r4, #405]	@ zero_extendqisi2
 2354 01f2 002B     		cmp	r3, #0
 2355 01f4 40F01A83 		bne	.L686
 2356              	.L420:
 2357 01f8 B949     		ldr	r1, .L708+4
 2358 01fa 0D98     		ldr	r0, [sp, #52]
 2359 01fc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2360              	.L416:
 2361 0200 0698     		ldr	r0, [sp, #24]
 2362 0202 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2363 0206 2068     		ldr	r0, [r4]
 2364 0208 0D9D     		ldr	r5, [sp, #52]
 2365 020a FFF7FEFF 		bl	_ZNK8Platform8AtxPowerEv
 2366 020e B549     		ldr	r1, .L708+8
 2367 0210 0246     		mov	r2, r0
 2368 0212 2846     		mov	r0, r5
 2369 0214 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2370 0218 B349     		ldr	r1, .L708+12
 2371 021a 0D98     		ldr	r0, [sp, #52]
 2372 021c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2373 0220 0025     		movs	r5, #0
 2374 0222 4FF05B0A 		mov	r10, #91
 2375 0226 DFF8C892 		ldr	r9, .L708+20
 2376 022a B04F     		ldr	r7, .L708+16
 2377              	.L421:
 2378 022c 2946     		mov	r1, r5
 2379 022e 2068     		ldr	r0, [r4]
 2380 0230 0D9E     		ldr	r6, [sp, #52]
 2381 0232 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 2382 0236 4946     		mov	r1, r9
 2383 0238 FFF7FEFF 		bl	__aeabi_fmul
 2384 023c FFF7FEFF 		bl	lrintf
 2385 0240 0135     		adds	r5, r5, #1
 2386 0242 0346     		mov	r3, r0
 2387 0244 5246     		mov	r2, r10
 2388 0246 3946     		mov	r1, r7
 2389 0248 3046     		mov	r0, r6
 2390 024a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2391 024e 022D     		cmp	r5, #2
 2392 0250 4FF02C0A 		mov	r10, #44
 2393 0254 EAD1     		bne	.L421
 2394 0256 2069     		ldr	r0, [r4, #16]
ARM GAS  /tmp/ccDCB0nG.s 			page 43


 2395 0258 0D9D     		ldr	r5, [sp, #52]
 2396 025a FFF7FEFF 		bl	_ZNK6GCodes14GetSpeedFactorEv
 2397 025e A449     		ldr	r1, .L708+20
 2398 0260 FFF7FEFF 		bl	__aeabi_fmul
 2399 0264 FFF7FEFF 		bl	__aeabi_f2d
 2400 0268 0B46     		mov	r3, r1
 2401 026a 0246     		mov	r2, r0
 2402 026c A149     		ldr	r1, .L708+24
 2403 026e 2846     		mov	r0, r5
 2404 0270 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2405 0274 A38E     		ldrh	r3, [r4, #52]
 2406 0276 002B     		cmp	r3, #0
 2407 0278 00F06C83 		beq	.L422
 2408 027c 0025     		movs	r5, #0
 2409 027e 4FF05B0A 		mov	r10, #91
 2410 0282 9B4F     		ldr	r7, .L708+20
 2411 0284 9C4E     		ldr	r6, .L708+28
 2412              	.L423:
 2413 0286 2946     		mov	r1, r5
 2414 0288 2069     		ldr	r0, [r4, #16]
 2415 028a DDF83490 		ldr	r9, [sp, #52]
 2416 028e FFF7FEFF 		bl	_ZN6GCodes18GetExtrusionFactorEj
 2417 0292 3946     		mov	r1, r7
 2418 0294 FFF7FEFF 		bl	__aeabi_fmul
 2419 0298 FFF7FEFF 		bl	__aeabi_f2d
 2420 029c 5246     		mov	r2, r10
 2421 029e CDE90001 		strd	r0, [sp]
 2422 02a2 4846     		mov	r0, r9
 2423 02a4 3146     		mov	r1, r6
 2424 02a6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2425 02aa A38E     		ldrh	r3, [r4, #52]
 2426 02ac 0135     		adds	r5, r5, #1
 2427 02ae AB42     		cmp	r3, r5
 2428 02b0 4FF02C0A 		mov	r10, #44
 2429 02b4 E7D8     		bhi	.L423
 2430 02b6 0D98     		ldr	r0, [sp, #52]
 2431 02b8 9049     		ldr	r1, .L708+32
 2432              	.L530:
 2433 02ba FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2434 02be 2369     		ldr	r3, [r4, #16]
 2435 02c0 D3F8C802 		ldr	r0, [r3, #712]	@ float
 2436 02c4 FFF7FEFF 		bl	__aeabi_f2d
 2437 02c8 0B46     		mov	r3, r1
 2438 02ca 0246     		mov	r2, r0
 2439 02cc 8C49     		ldr	r1, .L708+36
 2440 02ce 0D98     		ldr	r0, [sp, #52]
 2441 02d0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2442 02d4 099B     		ldr	r3, [sp, #36]
 2443 02d6 002B     		cmp	r3, #0
 2444 02d8 00F0EB82 		beq	.L687
 2445              	.L425:
 2446 02dc 8949     		ldr	r1, .L708+40
 2447 02de 0D98     		ldr	r0, [sp, #52]
 2448 02e0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2449 02e4 2068     		ldr	r0, [r4]
 2450 02e6 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 2451 02ea 069A     		ldr	r2, [sp, #24]
ARM GAS  /tmp/ccDCB0nG.s 			page 44


 2452 02ec 0546     		mov	r5, r0
 2453 02ee 4146     		mov	r1, r8
 2454 02f0 2068     		ldr	r0, [r4]
 2455 02f2 FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 2456 02f6 0128     		cmp	r0, #1
 2457 02f8 00F0D482 		beq	.L427
 2458 02fc 0228     		cmp	r0, #2
 2459 02fe 40F0CB82 		bne	.L688
 2460 0302 0F99     		ldr	r1, [sp, #60]
 2461 0304 0E9B     		ldr	r3, [sp, #56]
 2462 0306 0091     		str	r1, [sp]
 2463 0308 0D98     		ldr	r0, [sp, #52]
 2464 030a 2A46     		mov	r2, r5
 2465 030c 7E49     		ldr	r1, .L708+44
 2466 030e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2467              	.L429:
 2468 0312 2068     		ldr	r0, [r4]
 2469 0314 0D9D     		ldr	r5, [sp, #52]
 2470 0316 FFF7FEFF 		bl	_ZNK8Platform9GetFanRPMEv
 2471 031a FFF7FEFF 		bl	__aeabi_f2uiz
 2472 031e 7B49     		ldr	r1, .L708+48
 2473 0320 0246     		mov	r2, r0
 2474 0322 2846     		mov	r0, r5
 2475 0324 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2476 0328 7949     		ldr	r1, .L708+52
 2477 032a 0D98     		ldr	r0, [sp, #52]
 2478 032c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2479 0330 E068     		ldr	r0, [r4, #12]
 2480 0332 90F98250 		ldrsb	r5, [r0, #130]
 2481 0336 691C     		adds	r1, r5, #1
 2482 0338 23D0     		beq	.L430
 2483 033a 2946     		mov	r1, r5
 2484 033c DDF83480 		ldr	r8, [sp, #52]
 2485 0340 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2486 0344 2946     		mov	r1, r5
 2487 0346 0646     		mov	r6, r0
 2488 0348 E068     		ldr	r0, [r4, #12]
 2489 034a FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2490 034e 2946     		mov	r1, r5
 2491 0350 8246     		mov	r10, r0
 2492 0352 E068     		ldr	r0, [r4, #12]
 2493 0354 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2494 0358 8146     		mov	r9, r0
 2495 035a 3046     		mov	r0, r6
 2496 035c FFF7FEFF 		bl	__aeabi_f2d
 2497 0360 0646     		mov	r6, r0
 2498 0362 5046     		mov	r0, r10
 2499 0364 0F46     		mov	r7, r1
 2500 0366 CDF80890 		str	r9, [sp, #8]
 2501 036a 0395     		str	r5, [sp, #12]
 2502 036c FFF7FEFF 		bl	__aeabi_f2d
 2503 0370 3246     		mov	r2, r6
 2504 0372 CDE90001 		strd	r0, [sp]
 2505 0376 3B46     		mov	r3, r7
 2506 0378 4046     		mov	r0, r8
 2507 037a 6649     		ldr	r1, .L708+56
 2508 037c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
ARM GAS  /tmp/ccDCB0nG.s 			page 45


 2509 0380 E068     		ldr	r0, [r4, #12]
 2510              	.L430:
 2511 0382 90F98350 		ldrsb	r5, [r0, #131]
 2512 0386 6A1C     		adds	r2, r5, #1
 2513 0388 23D0     		beq	.L431
 2514 038a 2946     		mov	r1, r5
 2515 038c DDF83480 		ldr	r8, [sp, #52]
 2516 0390 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2517 0394 2946     		mov	r1, r5
 2518 0396 0646     		mov	r6, r0
 2519 0398 E068     		ldr	r0, [r4, #12]
 2520 039a FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2521 039e 2946     		mov	r1, r5
 2522 03a0 8246     		mov	r10, r0
 2523 03a2 E068     		ldr	r0, [r4, #12]
 2524 03a4 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2525 03a8 8146     		mov	r9, r0
 2526 03aa 3046     		mov	r0, r6
 2527 03ac FFF7FEFF 		bl	__aeabi_f2d
 2528 03b0 0646     		mov	r6, r0
 2529 03b2 5046     		mov	r0, r10
 2530 03b4 0F46     		mov	r7, r1
 2531 03b6 CDF80890 		str	r9, [sp, #8]
 2532 03ba 0395     		str	r5, [sp, #12]
 2533 03bc FFF7FEFF 		bl	__aeabi_f2d
 2534 03c0 3246     		mov	r2, r6
 2535 03c2 CDE90001 		strd	r0, [sp]
 2536 03c6 3B46     		mov	r3, r7
 2537 03c8 4046     		mov	r0, r8
 2538 03ca 5349     		ldr	r1, .L708+60
 2539 03cc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2540 03d0 E068     		ldr	r0, [r4, #12]
 2541              	.L431:
 2542 03d2 90F98450 		ldrsb	r5, [r0, #132]
 2543 03d6 6B1C     		adds	r3, r5, #1
 2544 03d8 22D0     		beq	.L432
 2545 03da 2946     		mov	r1, r5
 2546 03dc DDF83480 		ldr	r8, [sp, #52]
 2547 03e0 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2548 03e4 2946     		mov	r1, r5
 2549 03e6 0646     		mov	r6, r0
 2550 03e8 E068     		ldr	r0, [r4, #12]
 2551 03ea FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2552 03ee 2946     		mov	r1, r5
 2553 03f0 8246     		mov	r10, r0
 2554 03f2 E068     		ldr	r0, [r4, #12]
 2555 03f4 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2556 03f8 8146     		mov	r9, r0
 2557 03fa 3046     		mov	r0, r6
 2558 03fc FFF7FEFF 		bl	__aeabi_f2d
 2559 0400 0646     		mov	r6, r0
 2560 0402 5046     		mov	r0, r10
 2561 0404 0F46     		mov	r7, r1
 2562 0406 CDF80890 		str	r9, [sp, #8]
 2563 040a 0395     		str	r5, [sp, #12]
 2564 040c FFF7FEFF 		bl	__aeabi_f2d
 2565 0410 3246     		mov	r2, r6
ARM GAS  /tmp/ccDCB0nG.s 			page 46


 2566 0412 CDE90001 		strd	r0, [sp]
 2567 0416 3B46     		mov	r3, r7
 2568 0418 4046     		mov	r0, r8
 2569 041a 4049     		ldr	r1, .L708+64
 2570 041c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2571              	.L432:
 2572 0420 3F49     		ldr	r1, .L708+68
 2573 0422 0D98     		ldr	r0, [sp, #52]
 2574 0424 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2575 0428 0025     		movs	r5, #0
 2576 042a 4FF05B08 		mov	r8, #91
 2577 042e 324E     		ldr	r6, .L708+28
 2578              	.L433:
 2579 0430 69B2     		sxtb	r1, r5
 2580 0432 E068     		ldr	r0, [r4, #12]
 2581 0434 0D9F     		ldr	r7, [sp, #52]
 2582 0436 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2583 043a FFF7FEFF 		bl	__aeabi_f2d
 2584 043e 0135     		adds	r5, r5, #1
 2585 0440 CDE90001 		strd	r0, [sp]
 2586 0444 4246     		mov	r2, r8
 2587 0446 3846     		mov	r0, r7
 2588 0448 3146     		mov	r1, r6
 2589 044a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2590 044e 042D     		cmp	r5, #4
 2591 0450 4FF02C08 		mov	r8, #44
 2592 0454 ECD1     		bne	.L433
 2593 0456 2949     		ldr	r1, .L708+32
 2594 0458 0D98     		ldr	r0, [sp, #52]
 2595 045a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2596 045e 3149     		ldr	r1, .L708+72
 2597 0460 0D98     		ldr	r0, [sp, #52]
 2598 0462 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2599 0466 0025     		movs	r5, #0
 2600 0468 4FF05B08 		mov	r8, #91
 2601 046c 1F4F     		ldr	r7, .L708+16
 2602              	.L434:
 2603 046e 69B2     		sxtb	r1, r5
 2604 0470 E068     		ldr	r0, [r4, #12]
 2605 0472 0D9E     		ldr	r6, [sp, #52]
 2606 0474 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2607 0478 0135     		adds	r5, r5, #1
 2608 047a 0346     		mov	r3, r0
 2609 047c 4246     		mov	r2, r8
 2610 047e 3946     		mov	r1, r7
 2611 0480 3046     		mov	r0, r6
 2612 0482 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2613 0486 042D     		cmp	r5, #4
 2614 0488 4FF02C08 		mov	r8, #44
 2615 048c EFD1     		bne	.L434
 2616 048e 1B49     		ldr	r1, .L708+32
 2617 0490 0D98     		ldr	r0, [sp, #52]
 2618 0492 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2619 0496 2449     		ldr	r1, .L708+76
 2620 0498 0D98     		ldr	r0, [sp, #52]
 2621 049a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2622 049e E38E     		ldrh	r3, [r4, #54]
ARM GAS  /tmp/ccDCB0nG.s 			page 47


 2623 04a0 012B     		cmp	r3, #1
 2624 04a2 40F25482 		bls	.L435
 2625 04a6 0125     		movs	r5, #1
 2626 04a8 4FF05B08 		mov	r8, #91
 2627 04ac 124E     		ldr	r6, .L708+28
 2628              	.L436:
 2629 04ae 69B2     		sxtb	r1, r5
 2630 04b0 E068     		ldr	r0, [r4, #12]
 2631 04b2 0D9F     		ldr	r7, [sp, #52]
 2632 04b4 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2633 04b8 FFF7FEFF 		bl	__aeabi_f2d
 2634 04bc 4246     		mov	r2, r8
 2635 04be CDE90001 		strd	r0, [sp]
 2636 04c2 3846     		mov	r0, r7
 2637 04c4 3146     		mov	r1, r6
 2638 04c6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2639 04ca E38E     		ldrh	r3, [r4, #54]
 2640 04cc 0135     		adds	r5, r5, #1
 2641 04ce AB42     		cmp	r3, r5
 2642 04d0 4FF02C08 		mov	r8, #44
 2643 04d4 EBD8     		bhi	.L436
 2644 04d6 0D98     		ldr	r0, [sp, #52]
 2645 04d8 0849     		ldr	r1, .L708+32
 2646 04da 27E0     		b	.L709
 2647              	.L710:
 2648              		.align	2
 2649              	.L708:
 2650 04dc 60060000 		.word	.LC140
 2651 04e0 E4000000 		.word	.LC57
 2652 04e4 EC000000 		.word	.LC76
 2653 04e8 08010000 		.word	.LC77
 2654 04ec 48000000 		.word	.LC66
 2655 04f0 0000C842 		.word	1120403456
 2656 04f4 18010000 		.word	.LC78
 2657 04f8 C8000000 		.word	.LC55
 2658 04fc 00000000 		.word	.LC59
 2659 0500 3C010000 		.word	.LC79
 2660 0504 5C010000 		.word	.LC81
 2661 0508 94010000 		.word	.LC83
 2662 050c D0010000 		.word	.LC85
 2663 0510 E0010000 		.word	.LC86
 2664 0514 EC010000 		.word	.LC87
 2665 0518 2C020000 		.word	.LC88
 2666 051c 70020000 		.word	.LC89
 2667 0520 B4020000 		.word	.LC90
 2668 0524 C0020000 		.word	.LC91
 2669 0528 CC020000 		.word	.LC92
 2670              	.L709:
 2671              	.L531:
 2672 052c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2673 0530 9449     		ldr	r1, .L711
 2674 0532 0D98     		ldr	r0, [sp, #52]
 2675 0534 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2676 0538 E38E     		ldrh	r3, [r4, #54]
 2677 053a 012B     		cmp	r3, #1
 2678 053c 40F22B82 		bls	.L438
 2679 0540 0125     		movs	r5, #1
ARM GAS  /tmp/ccDCB0nG.s 			page 48


 2680 0542 4FF05B08 		mov	r8, #91
 2681 0546 904E     		ldr	r6, .L711+4
 2682              	.L439:
 2683 0548 69B2     		sxtb	r1, r5
 2684 054a E068     		ldr	r0, [r4, #12]
 2685 054c 0D9F     		ldr	r7, [sp, #52]
 2686 054e FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2687 0552 FFF7FEFF 		bl	__aeabi_f2d
 2688 0556 4246     		mov	r2, r8
 2689 0558 CDE90001 		strd	r0, [sp]
 2690 055c 3846     		mov	r0, r7
 2691 055e 3146     		mov	r1, r6
 2692 0560 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2693 0564 E38E     		ldrh	r3, [r4, #54]
 2694 0566 0135     		adds	r5, r5, #1
 2695 0568 AB42     		cmp	r3, r5
 2696 056a 4FF02C08 		mov	r8, #44
 2697 056e EBD8     		bhi	.L439
 2698 0570 0D98     		ldr	r0, [sp, #52]
 2699 0572 8649     		ldr	r1, .L711+8
 2700              	.L532:
 2701 0574 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2702 0578 8549     		ldr	r1, .L711+12
 2703 057a 0D98     		ldr	r0, [sp, #52]
 2704 057c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2705 0580 E38E     		ldrh	r3, [r4, #54]
 2706 0582 012B     		cmp	r3, #1
 2707 0584 40F20482 		bls	.L441
 2708 0588 0125     		movs	r5, #1
 2709 058a 4FF05B08 		mov	r8, #91
 2710 058e 7E4E     		ldr	r6, .L711+4
 2711              	.L442:
 2712 0590 69B2     		sxtb	r1, r5
 2713 0592 E068     		ldr	r0, [r4, #12]
 2714 0594 0D9F     		ldr	r7, [sp, #52]
 2715 0596 FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 2716 059a FFF7FEFF 		bl	__aeabi_f2d
 2717 059e 4246     		mov	r2, r8
 2718 05a0 CDE90001 		strd	r0, [sp]
 2719 05a4 3846     		mov	r0, r7
 2720 05a6 3146     		mov	r1, r6
 2721 05a8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2722 05ac E38E     		ldrh	r3, [r4, #54]
 2723 05ae 0135     		adds	r5, r5, #1
 2724 05b0 AB42     		cmp	r3, r5
 2725 05b2 4FF02C08 		mov	r8, #44
 2726 05b6 EBD8     		bhi	.L442
 2727 05b8 0D98     		ldr	r0, [sp, #52]
 2728 05ba 7449     		ldr	r1, .L711+8
 2729              	.L533:
 2730 05bc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2731 05c0 7449     		ldr	r1, .L711+16
 2732 05c2 0D98     		ldr	r0, [sp, #52]
 2733 05c4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2734 05c8 E38E     		ldrh	r3, [r4, #54]
 2735 05ca 012B     		cmp	r3, #1
 2736 05cc 40F2DD81 		bls	.L444
ARM GAS  /tmp/ccDCB0nG.s 			page 49


 2737 05d0 0125     		movs	r5, #1
 2738 05d2 4FF05B08 		mov	r8, #91
 2739 05d6 704F     		ldr	r7, .L711+20
 2740              	.L445:
 2741 05d8 69B2     		sxtb	r1, r5
 2742 05da E068     		ldr	r0, [r4, #12]
 2743 05dc 0D9E     		ldr	r6, [sp, #52]
 2744 05de FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2745 05e2 4246     		mov	r2, r8
 2746 05e4 0346     		mov	r3, r0
 2747 05e6 3946     		mov	r1, r7
 2748 05e8 3046     		mov	r0, r6
 2749 05ea FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2750 05ee E38E     		ldrh	r3, [r4, #54]
 2751 05f0 0135     		adds	r5, r5, #1
 2752 05f2 AB42     		cmp	r3, r5
 2753 05f4 4FF02C08 		mov	r8, #44
 2754 05f8 EED8     		bhi	.L445
 2755 05fa 0D98     		ldr	r0, [sp, #52]
 2756 05fc 6349     		ldr	r1, .L711+8
 2757              	.L534:
 2758 05fe FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2759 0602 04F12003 		add	r3, r4, #32
 2760 0606 1D46     		mov	r5, r3
 2761 0608 6449     		ldr	r1, .L711+24
 2762 060a 0D98     		ldr	r0, [sp, #52]
 2763 060c 0A93     		str	r3, [sp, #40]
 2764 060e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2765 0612 2946     		mov	r1, r5
 2766 0614 4FF0FF32 		mov	r2, #-1
 2767 0618 0698     		ldr	r0, [sp, #24]
 2768 061a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2769 061e A66A     		ldr	r6, [r4, #40]
 2770 0620 66B3     		cbz	r6, .L453
 2771 0622 DFF88891 		ldr	r9, .L711+40
 2772 0626 584F     		ldr	r7, .L711+4
 2773 0628 DFF86081 		ldr	r8, .L711+8
 2774              	.L454:
 2775 062c 336E     		ldr	r3, [r6, #96]
 2776 062e 002B     		cmp	r3, #0
 2777 0630 00F02F81 		beq	.L450
 2778 0634 0025     		movs	r5, #0
 2779 0636 4FF05B0B 		mov	fp, #91
 2780 063a 06F13C0A 		add	r10, r6, #60
 2781              	.L452:
 2782 063e 5AF8040B 		ldr	r0, [r10], #4	@ float
 2783 0642 FFF7FEFF 		bl	__aeabi_f2d
 2784 0646 0D9B     		ldr	r3, [sp, #52]
 2785 0648 CDE90001 		strd	r0, [sp]
 2786 064c 5A46     		mov	r2, fp
 2787 064e 1846     		mov	r0, r3
 2788 0650 3946     		mov	r1, r7
 2789 0652 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2790 0656 336E     		ldr	r3, [r6, #96]
 2791 0658 0135     		adds	r5, r5, #1
 2792 065a AB42     		cmp	r3, r5
 2793 065c 4FF02C0B 		mov	fp, #44
ARM GAS  /tmp/ccDCB0nG.s 			page 50


 2794 0660 EDD8     		bhi	.L452
 2795 0662 4146     		mov	r1, r8
 2796 0664 0D98     		ldr	r0, [sp, #52]
 2797              	.L535:
 2798 0666 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2799 066a 3368     		ldr	r3, [r6]
 2800 066c 33B1     		cbz	r3, .L453
 2801 066e 4C49     		ldr	r1, .L711+28
 2802 0670 0D98     		ldr	r0, [sp, #52]
 2803 0672 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2804 0676 3668     		ldr	r6, [r6]
 2805 0678 002E     		cmp	r6, #0
 2806 067a D7D1     		bne	.L454
 2807              	.L453:
 2808 067c 4949     		ldr	r1, .L711+32
 2809 067e 0D98     		ldr	r0, [sp, #52]
 2810 0680 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2811 0684 A66A     		ldr	r6, [r4, #40]
 2812 0686 66B3     		cbz	r6, .L448
 2813 0688 DFF82091 		ldr	r9, .L711+40
 2814 068c 3E4F     		ldr	r7, .L711+4
 2815 068e DFF8FC80 		ldr	r8, .L711+8
 2816              	.L459:
 2817 0692 336E     		ldr	r3, [r6, #96]
 2818 0694 002B     		cmp	r3, #0
 2819 0696 00F0F980 		beq	.L456
 2820 069a 0025     		movs	r5, #0
 2821 069c 4FF05B0B 		mov	fp, #91
 2822 06a0 06F14C0A 		add	r10, r6, #76
 2823              	.L458:
 2824 06a4 5AF8040B 		ldr	r0, [r10], #4	@ float
 2825 06a8 FFF7FEFF 		bl	__aeabi_f2d
 2826 06ac 0D9B     		ldr	r3, [sp, #52]
 2827 06ae CDE90001 		strd	r0, [sp]
 2828 06b2 5A46     		mov	r2, fp
 2829 06b4 1846     		mov	r0, r3
 2830 06b6 3946     		mov	r1, r7
 2831 06b8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2832 06bc 336E     		ldr	r3, [r6, #96]
 2833 06be 0135     		adds	r5, r5, #1
 2834 06c0 AB42     		cmp	r3, r5
 2835 06c2 4FF02C0B 		mov	fp, #44
 2836 06c6 EDD8     		bhi	.L458
 2837 06c8 4146     		mov	r1, r8
 2838 06ca 0D98     		ldr	r0, [sp, #52]
 2839              	.L536:
 2840 06cc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2841 06d0 3368     		ldr	r3, [r6]
 2842 06d2 33B1     		cbz	r3, .L448
 2843 06d4 3249     		ldr	r1, .L711+28
 2844 06d6 0D98     		ldr	r0, [sp, #52]
 2845 06d8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2846 06dc 3668     		ldr	r6, [r6]
 2847 06de 002E     		cmp	r6, #0
 2848 06e0 D7D1     		bne	.L459
 2849              	.L448:
 2850 06e2 069D     		ldr	r5, [sp, #24]
ARM GAS  /tmp/ccDCB0nG.s 			page 51


 2851 06e4 6427     		movs	r7, #100
 2852 06e6 2846     		mov	r0, r5
 2853 06e8 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2854 06ec 2E49     		ldr	r1, .L711+36
 2855 06ee 0D98     		ldr	r0, [sp, #52]
 2856 06f0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2857 06f4 DDF814B0 		ldr	fp, [sp, #20]
 2858 06f8 4FF00009 		mov	r9, #0
 2859 06fc 5B46     		mov	r3, fp
 2860 06fe AB46     		mov	fp, r5
 2861 0700 DFF8ACA0 		ldr	r10, .L711+44
 2862 0704 DFF8AC80 		ldr	r8, .L711+48
 2863              	.L455:
 2864 0708 3946     		mov	r1, r7
 2865 070a E068     		ldr	r0, [r4, #12]
 2866 070c 0B93     		str	r3, [sp, #44]
 2867 070e FFF7FEFF 		bl	_ZNK4Heat13GetHeaterNameEj
 2868 0712 0B9B     		ldr	r3, [sp, #44]
 2869 0714 0546     		mov	r5, r0
 2870 0716 0028     		cmp	r0, #0
 2871 0718 00F04B81 		beq	.L543
 2872 071c 002B     		cmp	r3, #0
 2873 071e 00F0BD84 		beq	.L689
 2874              	.L461:
 2875 0722 5146     		mov	r1, r10
 2876 0724 0D98     		ldr	r0, [sp, #52]
 2877 0726 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2878 072a 2846     		mov	r0, r5
 2879 072c FFF7FEFF 		bl	strlen
 2880 0730 0126     		movs	r6, #1
 2881 0732 0D9B     		ldr	r3, [sp, #52]
 2882 0734 0246     		mov	r2, r0
 2883 0736 2946     		mov	r1, r5
 2884 0738 0096     		str	r6, [sp]
 2885 073a 1846     		mov	r0, r3
 2886 073c CDF80490 		str	r9, [sp, #4]
 2887 0740 0023     		movs	r3, #0
 2888 0742 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 2889 0746 5A46     		mov	r2, fp
 2890 0748 3946     		mov	r1, r7
 2891 074a E068     		ldr	r0, [r4, #12]
 2892 074c FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 2893 0750 FFF7FEFF 		bl	__aeabi_f2d
 2894 0754 BE19     		adds	r6, r7, r6
 2895 0756 0246     		mov	r2, r0
 2896 0758 0B46     		mov	r3, r1
 2897 075a 0D98     		ldr	r0, [sp, #52]
 2898 075c 4146     		mov	r1, r8
 2899 075e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2900 0762 6E2E     		cmp	r6, #110
 2901 0764 00F02A81 		beq	.L466
 2902 0768 3146     		mov	r1, r6
 2903 076a E068     		ldr	r0, [r4, #12]
 2904 076c FFF7FEFF 		bl	_ZNK4Heat13GetHeaterNameEj
 2905 0770 0546     		mov	r5, r0
 2906 0772 0028     		cmp	r0, #0
 2907 0774 00F04E81 		beq	.L690
ARM GAS  /tmp/ccDCB0nG.s 			page 52


 2908              	.L465:
 2909 0778 2C21     		movs	r1, #44
 2910 077a 0D98     		ldr	r0, [sp, #52]
 2911 077c 3746     		mov	r7, r6
 2912 077e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2913 0782 CEE7     		b	.L461
 2914              	.L712:
 2915              		.align	2
 2916              	.L711:
 2917 0784 E4020000 		.word	.LC93
 2918 0788 C8000000 		.word	.LC55
 2919 078c 00000000 		.word	.LC59
 2920 0790 F0020000 		.word	.LC94
 2921 0794 C0020000 		.word	.LC91
 2922 0798 48000000 		.word	.LC66
 2923 079c FC020000 		.word	.LC95
 2924 07a0 88000000 		.word	.LC71
 2925 07a4 14030000 		.word	.LC96
 2926 07a8 24030000 		.word	.LC97
 2927 07ac 04000000 		.word	.LC60
 2928 07b0 34030000 		.word	.LC98
 2929 07b4 40030000 		.word	.LC99
 2930              	.L685:
 2931 07b8 0027     		movs	r7, #0
 2932              	.L519:
 2933 07ba D4F8A033 		ldr	r3, [r4, #928]
 2934 07be 002B     		cmp	r3, #0
 2935 07c0 40F09280 		bne	.L691
 2936 07c4 0025     		movs	r5, #0
 2937              	.L412:
 2938 07c6 002F     		cmp	r7, #0
 2939 07c8 00F08280 		beq	.L692
 2940              	.L414:
 2941 07cc A749     		ldr	r1, .L713
 2942 07ce 0D98     		ldr	r0, [sp, #52]
 2943 07d0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2944 07d4 D4F88C30 		ldr	r3, [r4, #140]
 2945 07d8 D4F89020 		ldr	r2, [r4, #144]
 2946 07dc A449     		ldr	r1, .L713+4
 2947 07de 0D98     		ldr	r0, [sp, #52]
 2948 07e0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2949 07e4 002E     		cmp	r6, #0
 2950 07e6 6ED1     		bne	.L693
 2951              	.L522:
 2952 07e8 0023     		movs	r3, #0
 2953 07ea C4F89030 		str	r3, [r4, #144]
 2954 07ee C4F88C30 		str	r3, [r4, #140]
 2955 07f2 002E     		cmp	r6, #0
 2956 07f4 3FF4FBAC 		beq	.L694
 2957              	.L417:
 2958 07f8 9E49     		ldr	r1, .L713+8
 2959 07fa 0D98     		ldr	r0, [sp, #52]
 2960 07fc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2961 0800 0023     		movs	r3, #0
 2962 0802 0122     		movs	r2, #1
 2963 0804 0D98     		ldr	r0, [sp, #52]
 2964 0806 8DE80C00 		stm	sp, {r2, r3}
ARM GAS  /tmp/ccDCB0nG.s 			page 53


 2965 080a 04F19401 		add	r1, r4, #148
 2966 080e 40F20112 		movw	r2, #257
 2967 0812 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 2968 0816 94F89531 		ldrb	r3, [r4, #405]	@ zero_extendqisi2
 2969 081a 002B     		cmp	r3, #0
 2970 081c 40F0C280 		bne	.L695
 2971              	.L419:
 2972 0820 0022     		movs	r2, #0
 2973 0822 84F89420 		strb	r2, [r4, #148]
 2974 0826 002B     		cmp	r3, #0
 2975 0828 3FF4E6AC 		beq	.L420
 2976              	.L686:
 2977 082c 0026     		movs	r6, #0
 2978 082e 0127     		movs	r7, #1
 2979 0830 9149     		ldr	r1, .L713+12
 2980 0832 0D98     		ldr	r0, [sp, #52]
 2981 0834 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2982 0838 3346     		mov	r3, r6
 2983 083a 4FF48072 		mov	r2, #256
 2984 083e 04F5CB71 		add	r1, r4, #406
 2985 0842 0D98     		ldr	r0, [sp, #52]
 2986 0844 0196     		str	r6, [sp, #4]
 2987 0846 0097     		str	r7, [sp]
 2988 0848 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 2989 084c 8B49     		ldr	r1, .L713+16
 2990 084e 0D98     		ldr	r0, [sp, #52]
 2991 0850 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2992 0854 3346     		mov	r3, r6
 2993 0856 4FF48072 		mov	r2, #256
 2994 085a 04F29721 		addw	r1, r4, #663
 2995 085e 0D98     		ldr	r0, [sp, #52]
 2996 0860 0097     		str	r7, [sp]
 2997 0862 0196     		str	r6, [sp, #4]
 2998 0864 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 2999 0868 D4F8A833 		ldr	r3, [r4, #936]
 3000 086c 2846     		mov	r0, r5
 3001 086e 0293     		str	r3, [sp, #8]
 3002 0870 FFF7FEFF 		bl	__aeabi_f2d
 3003 0874 0D9D     		ldr	r5, [sp, #52]
 3004 0876 D4F89C33 		ldr	r3, [r4, #924]
 3005 087a D4F89823 		ldr	r2, [r4, #920]
 3006 087e CDE90001 		strd	r0, [sp]
 3007 0882 2846     		mov	r0, r5
 3008 0884 7E49     		ldr	r1, .L713+20
 3009 0886 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3010 088a B5E4     		b	.L420
 3011              	.L456:
 3012 088c 4946     		mov	r1, r9
 3013 088e 0D98     		ldr	r0, [sp, #52]
 3014 0890 1CE7     		b	.L536
 3015              	.L450:
 3016 0892 4946     		mov	r1, r9
 3017 0894 0D98     		ldr	r0, [sp, #52]
 3018 0896 E6E6     		b	.L535
 3019              	.L688:
 3020 0898 2A46     		mov	r2, r5
 3021 089a 7A49     		ldr	r1, .L713+24
ARM GAS  /tmp/ccDCB0nG.s 			page 54


 3022 089c 0D98     		ldr	r0, [sp, #52]
 3023 089e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3024 08a2 36E5     		b	.L429
 3025              	.L427:
 3026 08a4 2A46     		mov	r2, r5
 3027 08a6 0E9B     		ldr	r3, [sp, #56]
 3028 08a8 7749     		ldr	r1, .L713+28
 3029 08aa 0D98     		ldr	r0, [sp, #52]
 3030 08ac FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3031 08b0 2FE5     		b	.L429
 3032              	.L687:
 3033 08b2 1A46     		mov	r2, r3
 3034 08b4 7549     		ldr	r1, .L713+32
 3035 08b6 0D98     		ldr	r0, [sp, #52]
 3036 08b8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3037 08bc 0EE5     		b	.L425
 3038              	.L540:
 3039 08be 0598     		ldr	r0, [sp, #20]
 3040 08c0 19B0     		add	sp, sp, #100
 3041              		@ sp needed
 3042 08c2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3043              	.L693:
 3044 08c6 7249     		ldr	r1, .L713+36
 3045 08c8 0D98     		ldr	r0, [sp, #52]
 3046 08ca FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3047 08ce 8BE7     		b	.L522
 3048              	.L692:
 3049 08d0 002E     		cmp	r6, #0
 3050 08d2 7FF485AC 		bne	.L415
 3051 08d6 94F89531 		ldrb	r3, [r4, #405]	@ zero_extendqisi2
 3052 08da 002B     		cmp	r3, #0
 3053 08dc 7FF480AC 		bne	.L415
 3054 08e0 8EE4     		b	.L416
 3055              	.L541:
 3056 08e2 4FF0FF32 		mov	r2, #-1
 3057 08e6 38E4     		b	.L408
 3058              	.L691:
 3059 08e8 D4F8A403 		ldr	r0, [r4, #932]
 3060 08ec FFF7FEFF 		bl	__aeabi_ui2f
 3061 08f0 6849     		ldr	r1, .L713+40
 3062 08f2 FFF7FEFF 		bl	__aeabi_fdiv
 3063 08f6 0546     		mov	r5, r0
 3064 08f8 FFF7FEFF 		bl	millis
 3065 08fc D4F8A033 		ldr	r3, [r4, #928]
 3066 0900 4FF00109 		mov	r9, #1
 3067 0904 C01A     		subs	r0, r0, r3
 3068 0906 FFF7FEFF 		bl	__aeabi_ui2f
 3069 090a 6249     		ldr	r1, .L713+40
 3070 090c FFF7FEFF 		bl	__aeabi_fdiv
 3071 0910 0146     		mov	r1, r0
 3072 0912 2846     		mov	r0, r5
 3073 0914 FFF7FEFF 		bl	__aeabi_fsub
 3074 0918 0021     		movs	r1, #0
 3075 091a 0546     		mov	r5, r0
 3076 091c FFF7FEFF 		bl	__aeabi_fcmpgt
 3077 0920 00B9     		cbnz	r0, .L413
 3078 0922 8146     		mov	r9, r0
ARM GAS  /tmp/ccDCB0nG.s 			page 55


 3079              	.L413:
 3080 0924 84F89591 		strb	r9, [r4, #405]
 3081 0928 4DE7     		b	.L412
 3082              	.L684:
 3083 092a 5B21     		movs	r1, #91
 3084 092c 0D98     		ldr	r0, [sp, #52]
 3085 092e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3086 0932 0CE4     		b	.L528
 3087              	.L682:
 3088 0934 0FAB     		add	r3, sp, #60
 3089 0936 0693     		str	r3, [sp, #24]
 3090 0938 1946     		mov	r1, r3
 3091 093a 0122     		movs	r2, #1
 3092 093c 0223     		movs	r3, #2
 3093 093e FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 3094 0942 5549     		ldr	r1, .L713+44
 3095 0944 0D98     		ldr	r0, [sp, #52]
 3096 0946 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3097 094a FFF7BFBB 		b	.L402
 3098              	.L435:
 3099 094e 0D98     		ldr	r0, [sp, #52]
 3100 0950 5249     		ldr	r1, .L713+48
 3101 0952 EBE5     		b	.L531
 3102              	.L422:
 3103 0954 0D98     		ldr	r0, [sp, #52]
 3104 0956 5149     		ldr	r1, .L713+48
 3105 0958 AFE4     		b	.L530
 3106              	.L397:
 3107 095a 5149     		ldr	r1, .L713+52
 3108 095c 0D98     		ldr	r0, [sp, #52]
 3109 095e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3110 0962 E26A     		ldr	r2, [r4, #44]
 3111 0964 A068     		ldr	r0, [r4, #8]
 3112 0966 002A     		cmp	r2, #0
 3113 0968 7FF4A1AB 		bne	.L525
 3114 096c 0FAB     		add	r3, sp, #60
 3115 096e 1946     		mov	r1, r3
 3116 0970 0693     		str	r3, [sp, #24]
 3117 0972 0122     		movs	r2, #1
 3118 0974 0223     		movs	r3, #2
 3119 0976 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 3120 097a 4749     		ldr	r1, .L713+44
 3121 097c 0D98     		ldr	r0, [sp, #52]
 3122 097e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3123 0982 0DF13808 		add	r8, sp, #56
 3124 0986 FFF7BDBB 		b	.L405
 3125              	.L444:
 3126 098a 0D98     		ldr	r0, [sp, #52]
 3127 098c 4349     		ldr	r1, .L713+48
 3128 098e 36E6     		b	.L534
 3129              	.L441:
 3130 0990 0D98     		ldr	r0, [sp, #52]
 3131 0992 4249     		ldr	r1, .L713+48
 3132 0994 12E6     		b	.L533
 3133              	.L438:
 3134 0996 0D98     		ldr	r0, [sp, #52]
 3135 0998 4049     		ldr	r1, .L713+48
ARM GAS  /tmp/ccDCB0nG.s 			page 56


 3136 099a EBE5     		b	.L532
 3137              	.L683:
 3138 099c 0DF13808 		add	r8, sp, #56
 3139 09a0 FFF7B0BB 		b	.L405
 3140              	.L695:
 3141 09a4 3A49     		ldr	r1, .L713+36
 3142 09a6 0D98     		ldr	r0, [sp, #52]
 3143 09a8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3144 09ac 94F89531 		ldrb	r3, [r4, #405]	@ zero_extendqisi2
 3145 09b0 36E7     		b	.L419
 3146              	.L543:
 3147 09b2 3E46     		mov	r6, r7
 3148              	.L460:
 3149 09b4 771C     		adds	r7, r6, #1
 3150 09b6 6E2F     		cmp	r7, #110
 3151 09b8 7FF4A6AE 		bne	.L455
 3152              	.L466:
 3153 09bc 3949     		ldr	r1, .L713+56
 3154 09be 0D98     		ldr	r0, [sp, #52]
 3155 09c0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3156 09c4 0D9D     		ldr	r5, [sp, #52]
 3157 09c6 FFF7FEFF 		bl	millis64
 3158 09ca 4FF47A72 		mov	r2, #1000
 3159 09ce 0023     		movs	r3, #0
 3160 09d0 FFF7FEFF 		bl	__aeabi_uldivmod
 3161 09d4 FFF7FEFF 		bl	__aeabi_ul2d
 3162 09d8 0B46     		mov	r3, r1
 3163 09da 0246     		mov	r2, r0
 3164 09dc 3249     		ldr	r1, .L713+60
 3165 09de 2846     		mov	r0, r5
 3166 09e0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3167 09e4 2369     		ldr	r3, [r4, #16]
 3168 09e6 93F87C30 		ldrb	r3, [r3, #124]	@ zero_extendqisi2
 3169 09ea 022B     		cmp	r3, #2
 3170 09ec 00F04582 		beq	.L696
 3171              	.L464:
 3172 09f0 089B     		ldr	r3, [sp, #32]
 3173 09f2 022B     		cmp	r3, #2
 3174 09f4 5ED0     		beq	.L697
 3175 09f6 089B     		ldr	r3, [sp, #32]
 3176 09f8 032B     		cmp	r3, #3
 3177 09fa 00F08C82 		beq	.L698
 3178              	.L481:
 3179 09fe 099B     		ldr	r3, [sp, #36]
 3180 0a00 012B     		cmp	r3, #1
 3181 0a02 1FD0     		beq	.L699
 3182              	.L664:
 3183 0a04 0D98     		ldr	r0, [sp, #52]
 3184              	.L518:
 3185 0a06 2949     		ldr	r1, .L713+64
 3186 0a08 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3187 0a0c 0D98     		ldr	r0, [sp, #52]
 3188 0a0e 19B0     		add	sp, sp, #100
 3189              		@ sp needed
 3190 0a10 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3191              	.L690:
 3192 0a14 BE1C     		adds	r6, r7, #2
ARM GAS  /tmp/ccDCB0nG.s 			page 57


 3193 0a16 6E2E     		cmp	r6, #110
 3194 0a18 D0D0     		beq	.L466
 3195 0a1a 3146     		mov	r1, r6
 3196 0a1c E068     		ldr	r0, [r4, #12]
 3197 0a1e FFF7FEFF 		bl	_ZNK4Heat13GetHeaterNameEj
 3198 0a22 0546     		mov	r5, r0
 3199 0a24 0028     		cmp	r0, #0
 3200 0a26 7FF4A7AE 		bne	.L465
 3201 0a2a FE1C     		adds	r6, r7, #3
 3202 0a2c 6E2E     		cmp	r6, #110
 3203 0a2e C5D0     		beq	.L466
 3204 0a30 3146     		mov	r1, r6
 3205 0a32 E068     		ldr	r0, [r4, #12]
 3206 0a34 FFF7FEFF 		bl	_ZNK4Heat13GetHeaterNameEj
 3207 0a38 0546     		mov	r5, r0
 3208 0a3a 0028     		cmp	r0, #0
 3209 0a3c 7FF49CAE 		bne	.L465
 3210 0a40 0346     		mov	r3, r0
 3211 0a42 B7E7     		b	.L460
 3212              	.L699:
 3213 0a44 0022     		movs	r2, #0
 3214 0a46 2368     		ldr	r3, [r4]
 3215 0a48 0D98     		ldr	r0, [sp, #52]
 3216 0a4a D3F84445 		ldr	r4, [r3, #1348]
 3217 0a4e C3F84425 		str	r2, [r3, #1348]
 3218 0a52 0028     		cmp	r0, #0
 3219 0a54 D7D0     		beq	.L518
 3220 0a56 D3F84825 		ldr	r2, [r3, #1352]
 3221 0a5a 1549     		ldr	r1, .L713+68
 3222 0a5c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3223 0a60 099A     		ldr	r2, [sp, #36]
 3224 0a62 2146     		mov	r1, r4
 3225 0a64 0D98     		ldr	r0, [sp, #52]
 3226 0a66 FFF7FEFF 		bl	_ZN12OutputBuffer11EncodeReplyEPS_b
 3227 0a6a CBE7     		b	.L664
 3228              	.L714:
 3229              		.align	2
 3230              	.L713:
 3231 0a6c 60060000 		.word	.LC140
 3232 0a70 6C060000 		.word	.LC141
 3233 0a74 8C000000 		.word	.LC72
 3234 0a78 98000000 		.word	.LC73
 3235 0a7c AC000000 		.word	.LC74
 3236 0a80 B8000000 		.word	.LC75
 3237 0a84 C0010000 		.word	.LC84
 3238 0a88 6C010000 		.word	.LC82
 3239 0a8c 50010000 		.word	.LC80
 3240 0a90 88000000 		.word	.LC71
 3241 0a94 00007A44 		.word	1148846080
 3242 0a98 58000000 		.word	.LC68
 3243 0a9c 04000000 		.word	.LC60
 3244 0aa0 94060000 		.word	.LC142
 3245 0aa4 F8000000 		.word	.LC38
 3246 0aa8 50030000 		.word	.LC100
 3247 0aac E4000000 		.word	.LC57
 3248 0ab0 4C060000 		.word	.LC139
 3249              	.L697:
ARM GAS  /tmp/ccDCB0nG.s 			page 58


 3250 0ab4 E368     		ldr	r3, [r4, #12]
 3251 0ab6 0D98     		ldr	r0, [sp, #52]
 3252 0ab8 93F88130 		ldrb	r3, [r3, #129]	@ zero_extendqisi2
 3253 0abc 0022     		movs	r2, #0
 3254 0abe 002B     		cmp	r3, #0
 3255 0ac0 00F02782 		beq	.L544
 3256 0ac4 0023     		movs	r3, #0
 3257              	.L473:
 3258 0ac6 A849     		ldr	r1, .L715
 3259 0ac8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3260 0acc E368     		ldr	r3, [r4, #12]
 3261 0ace 0D98     		ldr	r0, [sp, #52]
 3262 0ad0 93F88130 		ldrb	r3, [r3, #129]	@ zero_extendqisi2
 3263 0ad4 0022     		movs	r2, #0
 3264 0ad6 002B     		cmp	r3, #0
 3265 0ad8 00F01982 		beq	.L545
 3266 0adc 0023     		movs	r3, #0
 3267              	.L474:
 3268 0ade A349     		ldr	r1, .L715+4
 3269 0ae0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3270 0ae4 0021     		movs	r1, #0
 3271 0ae6 2068     		ldr	r0, [r4]
 3272 0ae8 FFF7FEFF 		bl	_ZNK8Platform17IsFanControllableEj
 3273 0aec 0121     		movs	r1, #1
 3274 0aee 0646     		mov	r6, r0
 3275 0af0 2068     		ldr	r0, [r4]
 3276 0af2 FFF7FEFF 		bl	_ZNK8Platform17IsFanControllableEj
 3277 0af6 08B1     		cbz	r0, .L475
 3278 0af8 46F00206 		orr	r6, r6, #2
 3279              	.L475:
 3280 0afc 3246     		mov	r2, r6
 3281 0afe 9C49     		ldr	r1, .L715+8
 3282 0b00 0D98     		ldr	r0, [sp, #52]
 3283 0b02 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3284 0b06 E068     		ldr	r0, [r4, #12]
 3285 0b08 0D9E     		ldr	r6, [sp, #52]
 3286 0b0a FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEv
 3287 0b0e FFF7FEFF 		bl	__aeabi_f2d
 3288 0b12 0025     		movs	r5, #0
 3289 0b14 0B46     		mov	r3, r1
 3290 0b16 0246     		mov	r2, r0
 3291 0b18 9649     		ldr	r1, .L715+12
 3292 0b1a 3046     		mov	r0, r6
 3293 0b1c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3294 0b20 2369     		ldr	r3, [r4, #16]
 3295 0b22 4FF00108 		mov	r8, #1
 3296 0b26 2F46     		mov	r7, r5
 3297 0b28 D3F8F861 		ldr	r6, [r3, #504]
 3298 0b2c 07E0     		b	.L478
 3299              	.L701:
 3300 0b2e FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 3301 0b32 0138     		subs	r0, r0, #1
 3302 0b34 0128     		cmp	r0, #1
 3303 0b36 0AD9     		bls	.L663
 3304              	.L477:
 3305 0b38 0135     		adds	r5, r5, #1
 3306 0b3a 092D     		cmp	r5, #9
ARM GAS  /tmp/ccDCB0nG.s 			page 59


 3307 0b3c 0ED0     		beq	.L700
 3308              	.L478:
 3309 0b3e AE42     		cmp	r6, r5
 3310 0b40 2946     		mov	r1, r5
 3311 0b42 2068     		ldr	r0, [r4]
 3312 0b44 F3D8     		bhi	.L701
 3313 0b46 FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 3314 0b4a 0028     		cmp	r0, #0
 3315 0b4c F4D0     		beq	.L477
 3316              	.L663:
 3317 0b4e 08FA05F3 		lsl	r3, r8, r5
 3318 0b52 0135     		adds	r5, r5, #1
 3319 0b54 092D     		cmp	r5, #9
 3320 0b56 47EA0307 		orr	r7, r7, r3
 3321 0b5a F0D1     		bne	.L478
 3322              	.L700:
 3323 0b5c 3A46     		mov	r2, r7
 3324 0b5e 8649     		ldr	r1, .L715+16
 3325 0b60 0D98     		ldr	r0, [sp, #52]
 3326 0b62 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3327 0b66 A368     		ldr	r3, [r4, #8]
 3328 0b68 0121     		movs	r1, #1
 3329 0b6a D3F8FC04 		ldr	r0, [r3, #1276]
 3330 0b6e 0D9D     		ldr	r5, [sp, #52]
 3331 0b70 0368     		ldr	r3, [r0]
 3332 0b72 1B68     		ldr	r3, [r3]
 3333 0b74 9847     		blx	r3
 3334 0b76 2269     		ldr	r2, [r4, #16]
 3335 0b78 0799     		ldr	r1, [sp, #28]
 3336 0b7a 02F27222 		addw	r2, r2, #626
 3337 0b7e 0346     		mov	r3, r0
 3338 0b80 8DE80600 		stm	sp, {r1, r2}
 3339 0b84 2846     		mov	r0, r5
 3340 0b86 7D4A     		ldr	r2, .L715+20
 3341 0b88 7D49     		ldr	r1, .L715+24
 3342 0b8a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3343 0b8e 2368     		ldr	r3, [r4]
 3344 0b90 D3F86835 		ldr	r3, [r3, #1384]
 3345 0b94 93F87E24 		ldrb	r2, [r3, #1150]	@ zero_extendqisi2
 3346 0b98 93F83E32 		ldrb	r3, [r3, #574]	@ zero_extendqisi2
 3347 0b9c 0AB1     		cbz	r2, .L524
 3348 0b9e 43F00203 		orr	r3, r3, #2
 3349              	.L524:
 3350 0ba2 0222     		movs	r2, #2
 3351 0ba4 7749     		ldr	r1, .L715+28
 3352 0ba6 0D98     		ldr	r0, [sp, #52]
 3353 0ba8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3354 0bac 7649     		ldr	r1, .L715+32
 3355 0bae 0D98     		ldr	r0, [sp, #52]
 3356 0bb0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3357 0bb4 0126     		movs	r6, #1
 3358 0bb6 0023     		movs	r3, #0
 3359 0bb8 2822     		movs	r2, #40
 3360 0bba 0193     		str	r3, [sp, #4]
 3361 0bbc 04F16101 		add	r1, r4, #97
 3362 0bc0 0D98     		ldr	r0, [sp, #52]
 3363 0bc2 0096     		str	r6, [sp]
ARM GAS  /tmp/ccDCB0nG.s 			page 60


 3364 0bc4 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 3365 0bc8 2068     		ldr	r0, [r4]
 3366 0bca 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 3367 0bce FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 3368 0bd2 C568     		ldr	r5, [r0, #12]	@ float
 3369 0bd4 0268     		ldr	r2, [r0]
 3370 0bd6 6D49     		ldr	r1, .L715+36
 3371 0bd8 0D98     		ldr	r0, [sp, #52]
 3372 0bda FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3373 0bde 2846     		mov	r0, r5
 3374 0be0 FFF7FEFF 		bl	__aeabi_f2d
 3375 0be4 0246     		mov	r2, r0
 3376 0be6 0B46     		mov	r3, r1
 3377 0be8 0D98     		ldr	r0, [sp, #52]
 3378 0bea 6949     		ldr	r1, .L715+40
 3379 0bec FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3380 0bf0 2368     		ldr	r3, [r4]
 3381 0bf2 6849     		ldr	r1, .L715+44
 3382 0bf4 93F89420 		ldrb	r2, [r3, #148]	@ zero_extendqisi2
 3383 0bf8 0D98     		ldr	r0, [sp, #52]
 3384 0bfa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3385 0bfe 6649     		ldr	r1, .L715+48
 3386 0c00 0D98     		ldr	r0, [sp, #52]
 3387 0c02 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3388 0c06 0A99     		ldr	r1, [sp, #40]
 3389 0c08 4FF0FF32 		mov	r2, #-1
 3390 0c0c 0698     		ldr	r0, [sp, #24]
 3391 0c0e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3392 0c12 A56A     		ldr	r5, [r4, #40]
 3393 0c14 002D     		cmp	r5, #0
 3394 0c16 00F02881 		beq	.L509
 3395 0c1a B346     		mov	fp, r6
 3396 0c1c A846     		mov	r8, r5
 3397 0c1e DFF898A1 		ldr	r10, .L715+80
 3398 0c22 0A94     		str	r4, [sp, #40]
 3399              	.L510:
 3400 0c24 D8F86420 		ldr	r2, [r8, #100]
 3401 0c28 5C49     		ldr	r1, .L715+52
 3402 0c2a 0D98     		ldr	r0, [sp, #52]
 3403 0c2c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3404 0c30 D8F80850 		ldr	r5, [r8, #8]
 3405 0c34 95B1     		cbz	r5, .L482
 3406 0c36 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 3407 0c38 83B1     		cbz	r3, .L482
 3408 0c3a 5349     		ldr	r1, .L715+32
 3409 0c3c 0D98     		ldr	r0, [sp, #52]
 3410 0c3e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3411 0c42 2846     		mov	r0, r5
 3412 0c44 FFF7FEFF 		bl	strlen
 3413 0c48 0023     		movs	r3, #0
 3414 0c4a 0D9C     		ldr	r4, [sp, #52]
 3415 0c4c 0246     		mov	r2, r0
 3416 0c4e CDF800B0 		str	fp, [sp]
 3417 0c52 2946     		mov	r1, r5
 3418 0c54 0193     		str	r3, [sp, #4]
 3419 0c56 2046     		mov	r0, r4
 3420 0c58 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
ARM GAS  /tmp/ccDCB0nG.s 			page 61


 3421              	.L482:
 3422 0c5c 0024     		movs	r4, #0
 3423 0c5e 5049     		ldr	r1, .L715+56
 3424 0c60 0D98     		ldr	r0, [sp, #52]
 3425 0c62 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3426 0c66 D8F86030 		ldr	r3, [r8, #96]
 3427 0c6a 08F17E05 		add	r5, r8, #126
 3428              	.L483:
 3429 0c6e A342     		cmp	r3, r4
 3430 0c70 04F10104 		add	r4, r4, #1
 3431 0c74 13D9     		bls	.L484
 3432              	.L702:
 3433 0c76 15F9012B 		ldrsb	r2, [r5], #1
 3434 0c7a 5146     		mov	r1, r10
 3435 0c7c 0D98     		ldr	r0, [sp, #52]
 3436 0c7e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3437 0c82 D8F86030 		ldr	r3, [r8, #96]
 3438 0c86 A342     		cmp	r3, r4
 3439 0c88 F1D9     		bls	.L483
 3440 0c8a 4649     		ldr	r1, .L715+60
 3441 0c8c 0D98     		ldr	r0, [sp, #52]
 3442 0c8e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3443 0c92 D8F86030 		ldr	r3, [r8, #96]
 3444 0c96 A342     		cmp	r3, r4
 3445 0c98 04F10104 		add	r4, r4, #1
 3446 0c9c EBD8     		bhi	.L702
 3447              	.L484:
 3448 0c9e 0024     		movs	r4, #0
 3449 0ca0 4149     		ldr	r1, .L715+64
 3450 0ca2 0D98     		ldr	r0, [sp, #52]
 3451 0ca4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3452 0ca8 D8F85C30 		ldr	r3, [r8, #92]
 3453 0cac 08F17805 		add	r5, r8, #120
 3454              	.L486:
 3455 0cb0 9C42     		cmp	r4, r3
 3456 0cb2 04F10104 		add	r4, r4, #1
 3457 0cb6 13D2     		bcs	.L487
 3458              	.L703:
 3459 0cb8 15F8012B 		ldrb	r2, [r5], #1	@ zero_extendqisi2
 3460 0cbc 5146     		mov	r1, r10
 3461 0cbe 0D98     		ldr	r0, [sp, #52]
 3462 0cc0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3463 0cc4 D8F85C30 		ldr	r3, [r8, #92]
 3464 0cc8 9C42     		cmp	r4, r3
 3465 0cca F1D2     		bcs	.L486
 3466 0ccc 3549     		ldr	r1, .L715+60
 3467 0cce 0D98     		ldr	r0, [sp, #52]
 3468 0cd0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3469 0cd4 D8F85C30 		ldr	r3, [r8, #92]
 3470 0cd8 9C42     		cmp	r4, r3
 3471 0cda 04F10104 		add	r4, r4, #1
 3472 0cde EBD3     		bcc	.L703
 3473              	.L487:
 3474 0ce0 0024     		movs	r4, #0
 3475 0ce2 3249     		ldr	r1, .L715+68
 3476 0ce4 0D98     		ldr	r0, [sp, #52]
 3477 0ce6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
ARM GAS  /tmp/ccDCB0nG.s 			page 62


 3478 0cea 059B     		ldr	r3, [sp, #20]
 3479 0cec D8F86820 		ldr	r2, [r8, #104]
 3480              	.L495:
 3481 0cf0 0BFA04F1 		lsl	r1, fp, r4
 3482 0cf4 1142     		tst	r1, r2
 3483 0cf6 13D0     		beq	.L489
 3484 0cf8 6BB1     		cbz	r3, .L493
 3485              	.L490:
 3486 0cfa 2246     		mov	r2, r4
 3487 0cfc 2C49     		ldr	r1, .L715+72
 3488 0cfe 0134     		adds	r4, r4, #1
 3489 0d00 0D98     		ldr	r0, [sp, #52]
 3490 0d02 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3491 0d06 062C     		cmp	r4, #6
 3492 0d08 0DD0     		beq	.L494
 3493 0d0a D8F86820 		ldr	r2, [r8, #104]
 3494 0d0e 0BFA04F3 		lsl	r3, fp, r4
 3495 0d12 1340     		ands	r3, r3, r2
 3496 0d14 04D0     		beq	.L489
 3497              	.L493:
 3498 0d16 2349     		ldr	r1, .L715+60
 3499 0d18 0D98     		ldr	r0, [sp, #52]
 3500 0d1a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3501 0d1e ECE7     		b	.L490
 3502              	.L489:
 3503 0d20 0134     		adds	r4, r4, #1
 3504 0d22 062C     		cmp	r4, #6
 3505 0d24 E4D1     		bne	.L495
 3506              	.L494:
 3507 0d26 0024     		movs	r4, #0
 3508 0d28 2249     		ldr	r1, .L715+76
 3509 0d2a 0D98     		ldr	r0, [sp, #52]
 3510 0d2c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3511 0d30 059B     		ldr	r3, [sp, #20]
 3512 0d32 D8F86C20 		ldr	r2, [r8, #108]
 3513              	.L492:
 3514 0d36 0BFA04F1 		lsl	r1, fp, r4
 3515 0d3a 1142     		tst	r1, r2
 3516 0d3c 3ED0     		beq	.L496
 3517 0d3e 6BB1     		cbz	r3, .L501
 3518              	.L497:
 3519 0d40 2246     		mov	r2, r4
 3520 0d42 1B49     		ldr	r1, .L715+72
 3521 0d44 0134     		adds	r4, r4, #1
 3522 0d46 0D98     		ldr	r0, [sp, #52]
 3523 0d48 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3524 0d4c 062C     		cmp	r4, #6
 3525 0d4e 38D0     		beq	.L502
 3526 0d50 D8F86C20 		ldr	r2, [r8, #108]
 3527 0d54 0BFA04F3 		lsl	r3, fp, r4
 3528 0d58 1340     		ands	r3, r3, r2
 3529 0d5a 2FD0     		beq	.L496
 3530              	.L501:
 3531 0d5c 1149     		ldr	r1, .L715+60
 3532 0d5e 0D98     		ldr	r0, [sp, #52]
 3533 0d60 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3534 0d64 ECE7     		b	.L497
ARM GAS  /tmp/ccDCB0nG.s 			page 63


 3535              	.L716:
 3536 0d66 00BF     		.align	2
 3537              	.L715:
 3538 0d68 9C030000 		.word	.LC104
 3539 0d6c B4030000 		.word	.LC105
 3540 0d70 CC030000 		.word	.LC106
 3541 0d74 E4030000 		.word	.LC107
 3542 0d78 F8030000 		.word	.LC108
 3543 0d7c 18000000 		.word	.LC2
 3544 0d80 08040000 		.word	.LC109
 3545 0d84 48040000 		.word	.LC110
 3546 0d88 6C040000 		.word	.LC111
 3547 0d8c 78040000 		.word	.LC112
 3548 0d90 94040000 		.word	.LC113
 3549 0d94 A4040000 		.word	.LC114
 3550 0d98 B0040000 		.word	.LC115
 3551 0d9c BC040000 		.word	.LC116
 3552 0da0 CC040000 		.word	.LC117
 3553 0da4 88000000 		.word	.LC71
 3554 0da8 E0040000 		.word	.LC119
 3555 0dac F0040000 		.word	.LC120
 3556 0db0 00050000 		.word	.LC121
 3557 0db4 04050000 		.word	.LC122
 3558 0db8 DC040000 		.word	.LC118
 3559              	.L496:
 3560 0dbc 0134     		adds	r4, r4, #1
 3561 0dbe 062C     		cmp	r4, #6
 3562 0dc0 B9D1     		bne	.L492
 3563              	.L502:
 3564 0dc2 B849     		ldr	r1, .L717
 3565 0dc4 0D98     		ldr	r0, [sp, #52]
 3566 0dc6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3567 0dca D8F87420 		ldr	r2, [r8, #116]
 3568 0dce B649     		ldr	r1, .L717+4
 3569 0dd0 0D98     		ldr	r0, [sp, #52]
 3570 0dd2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3571 0dd6 D8F80450 		ldr	r5, [r8, #4]
 3572 0dda 8DB1     		cbz	r5, .L500
 3573 0ddc B349     		ldr	r1, .L717+8
 3574 0dde 0835     		adds	r5, r5, #8
 3575 0de0 0D98     		ldr	r0, [sp, #52]
 3576 0de2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3577 0de6 2846     		mov	r0, r5
 3578 0de8 FFF7FEFF 		bl	strlen
 3579 0dec 0023     		movs	r3, #0
 3580 0dee 0D9C     		ldr	r4, [sp, #52]
 3581 0df0 0246     		mov	r2, r0
 3582 0df2 2946     		mov	r1, r5
 3583 0df4 CDF800B0 		str	fp, [sp]
 3584 0df8 0193     		str	r3, [sp, #4]
 3585 0dfa 2046     		mov	r0, r4
 3586 0dfc FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 3587              	.L500:
 3588 0e00 AB49     		ldr	r1, .L717+12
 3589 0e02 0D98     		ldr	r0, [sp, #52]
 3590 0e04 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3591 0e08 079B     		ldr	r3, [sp, #28]
ARM GAS  /tmp/ccDCB0nG.s 			page 64


 3592 0e0a E3B1     		cbz	r3, .L507
 3593 0e0c 0024     		movs	r4, #0
 3594 0e0e 08F10C05 		add	r5, r8, #12
 3595 0e12 CDF82080 		str	r8, [sp, #32]
 3596 0e16 DFF8F492 		ldr	r9, .L717+104
 3597 0e1a DDF81C80 		ldr	r8, [sp, #28]
 3598              	.L508:
 3599 0e1e A54F     		ldr	r7, .L717+16
 3600 0e20 55F8040B 		ldr	r0, [r5], #4	@ float
 3601 0e24 FFF7FEFF 		bl	__aeabi_f2d
 3602 0e28 002C     		cmp	r4, #0
 3603 0e2a 18BF     		it	ne
 3604 0e2c 4F46     		movne	r7, r9
 3605 0e2e 0D9E     		ldr	r6, [sp, #52]
 3606 0e30 0246     		mov	r2, r0
 3607 0e32 0B46     		mov	r3, r1
 3608 0e34 0134     		adds	r4, r4, #1
 3609 0e36 3946     		mov	r1, r7
 3610 0e38 3046     		mov	r0, r6
 3611 0e3a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3612 0e3e 4445     		cmp	r4, r8
 3613 0e40 EDD1     		bne	.L508
 3614 0e42 DDF82080 		ldr	r8, [sp, #32]
 3615              	.L507:
 3616 0e46 D8F80010 		ldr	r1, [r8]
 3617 0e4a 9B4A     		ldr	r2, .L717+20
 3618 0e4c 9B4B     		ldr	r3, .L717+24
 3619 0e4e 0D98     		ldr	r0, [sp, #52]
 3620 0e50 0029     		cmp	r1, #0
 3621 0e52 14BF     		ite	ne
 3622 0e54 1146     		movne	r1, r2
 3623 0e56 1946     		moveq	r1, r3
 3624 0e58 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3625 0e5c D8F80080 		ldr	r8, [r8]
 3626 0e60 B8F1000F 		cmp	r8, #0
 3627 0e64 7FF4DEAE 		bne	.L510
 3628 0e68 0A9C     		ldr	r4, [sp, #40]
 3629              	.L509:
 3630 0e6a 9549     		ldr	r1, .L717+28
 3631 0e6c 0D98     		ldr	r0, [sp, #52]
 3632 0e6e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3633 0e72 0698     		ldr	r0, [sp, #24]
 3634 0e74 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3635 0e78 C1E5     		b	.L481
 3636              	.L696:
 3637 0e7a 0023     		movs	r3, #0
 3638 0e7c 4FF0FF3B 		mov	fp, #-1
 3639 0e80 2268     		ldr	r2, [r4]
 3640              	.L468:
 3641 0e82 D2F8AC15 		ldr	r1, [r2, #1452]
 3642 0e86 2032     		adds	r2, r2, #32
 3643 0e88 B1F1FF3F 		cmp	r1, #-1
 3644 0e8c 18BF     		it	ne
 3645 0e8e 9B46     		movne	fp, r3
 3646 0e90 0133     		adds	r3, r3, #1
 3647 0e92 042B     		cmp	r3, #4
 3648 0e94 F5D1     		bne	.L468
ARM GAS  /tmp/ccDCB0nG.s 			page 65


 3649 0e96 BBF1FF3F 		cmp	fp, #-1
 3650 0e9a 3FF4A9AD 		beq	.L464
 3651 0e9e 8949     		ldr	r1, .L717+32
 3652 0ea0 0D98     		ldr	r0, [sp, #52]
 3653 0ea2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3654 0ea6 4FF4B26A 		mov	r10, #1424
 3655 0eaa 0027     		movs	r7, #0
 3656 0eac 864E     		ldr	r6, .L717+36
 3657 0eae 0CE0     		b	.L469
 3658              	.L470:
 3659 0eb0 7D21     		movs	r1, #125
 3660 0eb2 0D98     		ldr	r0, [sp, #52]
 3661 0eb4 0137     		adds	r7, r7, #1
 3662 0eb6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3663 0eba BB45     		cmp	fp, r7
 3664 0ebc 22DB     		blt	.L704
 3665              	.L657:
 3666 0ebe 2C21     		movs	r1, #44
 3667 0ec0 0D98     		ldr	r0, [sp, #52]
 3668 0ec2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3669 0ec6 0AF1200A 		add	r10, r10, #32
 3670              	.L469:
 3671 0eca 2568     		ldr	r5, [r4]
 3672 0ecc 5544     		add	r5, r5, r10
 3673 0ece 2869     		ldr	r0, [r5, #16]	@ float
 3674 0ed0 FFF7FEFF 		bl	__aeabi_f2d
 3675 0ed4 8046     		mov	r8, r0
 3676 0ed6 6869     		ldr	r0, [r5, #20]	@ float
 3677 0ed8 8946     		mov	r9, r1
 3678 0eda FFF7FEFF 		bl	__aeabi_f2d
 3679 0ede 4B46     		mov	r3, r9
 3680 0ee0 CDE90001 		strd	r0, [sp]
 3681 0ee4 4246     		mov	r2, r8
 3682 0ee6 0D98     		ldr	r0, [sp, #52]
 3683 0ee8 3146     		mov	r1, r6
 3684 0eea FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3685 0eee 089B     		ldr	r3, [sp, #32]
 3686 0ef0 022B     		cmp	r3, #2
 3687 0ef2 DDD1     		bne	.L470
 3688 0ef4 EA69     		ldr	r2, [r5, #28]
 3689 0ef6 7549     		ldr	r1, .L717+40
 3690 0ef8 0D98     		ldr	r0, [sp, #52]
 3691 0efa 0137     		adds	r7, r7, #1
 3692 0efc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3693 0f00 BB45     		cmp	fp, r7
 3694 0f02 DCDA     		bge	.L657
 3695              	.L704:
 3696 0f04 5D21     		movs	r1, #93
 3697 0f06 0D98     		ldr	r0, [sp, #52]
 3698 0f08 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3699 0f0c 70E5     		b	.L464
 3700              	.L545:
 3701 0f0e 704B     		ldr	r3, .L717+44
 3702 0f10 E5E5     		b	.L474
 3703              	.L544:
 3704 0f12 704B     		ldr	r3, .L717+48
 3705 0f14 D7E5     		b	.L473
ARM GAS  /tmp/ccDCB0nG.s 			page 66


 3706              	.L698:
 3707 0f16 E369     		ldr	r3, [r4, #28]
 3708 0f18 6F49     		ldr	r1, .L717+52
 3709 0f1a 1A6B     		ldr	r2, [r3, #48]
 3710 0f1c 0D98     		ldr	r0, [sp, #52]
 3711 0f1e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3712 0f22 E569     		ldr	r5, [r4, #28]
 3713 0f24 0021     		movs	r1, #0
 3714 0f26 686C     		ldr	r0, [r5, #68]	@ float
 3715 0f28 0D9E     		ldr	r6, [sp, #52]
 3716 0f2a FFF7FEFF 		bl	__aeabi_fcmpgt
 3717 0f2e 0028     		cmp	r0, #0
 3718 0f30 00F09E80 		beq	.L653
 3719 0f34 2846     		mov	r0, r5
 3720 0f36 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 3721 0f3a 696C     		ldr	r1, [r5, #68]	@ float
 3722 0f3c FFF7FEFF 		bl	__aeabi_fsub
 3723 0f40 FFF7FEFF 		bl	__aeabi_f2d
 3724 0f44 0246     		mov	r2, r0
 3725 0f46 0B46     		mov	r3, r1
 3726              	.L511:
 3727 0f48 6449     		ldr	r1, .L717+56
 3728 0f4a 3046     		mov	r0, r6
 3729 0f4c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3730 0f50 6349     		ldr	r1, .L717+60
 3731 0f52 0D98     		ldr	r0, [sp, #52]
 3732 0f54 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3733 0f58 A38E     		ldrh	r3, [r4, #52]
 3734 0f5a 002B     		cmp	r3, #0
 3735 0f5c 00F09980 		beq	.L513
 3736 0f60 0025     		movs	r5, #0
 3737 0f62 5B26     		movs	r6, #91
 3738 0f64 DFF8A881 		ldr	r8, .L717+108
 3739              	.L514:
 3740 0f68 2946     		mov	r1, r5
 3741 0f6a 2069     		ldr	r0, [r4, #16]
 3742 0f6c 0D9F     		ldr	r7, [sp, #52]
 3743 0f6e FFF7FEFF 		bl	_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 3744 0f72 FFF7FEFF 		bl	__aeabi_f2d
 3745 0f76 3246     		mov	r2, r6
 3746 0f78 CDE90001 		strd	r0, [sp]
 3747 0f7c 3846     		mov	r0, r7
 3748 0f7e 4146     		mov	r1, r8
 3749 0f80 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3750 0f84 A38E     		ldrh	r3, [r4, #52]
 3751 0f86 0135     		adds	r5, r5, #1
 3752 0f88 AB42     		cmp	r3, r5
 3753 0f8a 4FF02C06 		mov	r6, #44
 3754 0f8e EBD8     		bhi	.L514
 3755              	.L537:
 3756 0f90 E369     		ldr	r3, [r4, #28]
 3757 0f92 0D9D     		ldr	r5, [sp, #52]
 3758 0f94 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 3759 0f96 002B     		cmp	r3, #0
 3760 0f98 70D1     		bne	.L705
 3761 0f9a 0022     		movs	r2, #0
 3762 0f9c 0023     		movs	r3, #0
ARM GAS  /tmp/ccDCB0nG.s 			page 67


 3763              	.L515:
 3764 0f9e 5149     		ldr	r1, .L717+64
 3765 0fa0 2846     		mov	r0, r5
 3766 0fa2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3767 0fa6 2069     		ldr	r0, [r4, #16]
 3768 0fa8 0D9D     		ldr	r5, [sp, #52]
 3769 0faa FFF7FEFF 		bl	_ZNK6GCodes15GetFilePositionEv
 3770 0fae 4E49     		ldr	r1, .L717+68
 3771 0fb0 0246     		mov	r2, r0
 3772 0fb2 2846     		mov	r0, r5
 3773 0fb4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3774 0fb8 E069     		ldr	r0, [r4, #28]
 3775 0fba 0D9D     		ldr	r5, [sp, #52]
 3776 0fbc FFF7FEFF 		bl	_ZNK12PrintMonitor21GetFirstLayerDurationEv
 3777 0fc0 FFF7FEFF 		bl	__aeabi_f2d
 3778 0fc4 0246     		mov	r2, r0
 3779 0fc6 0B46     		mov	r3, r1
 3780 0fc8 2846     		mov	r0, r5
 3781 0fca 4849     		ldr	r1, .L717+72
 3782 0fcc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3783 0fd0 E369     		ldr	r3, [r4, #28]
 3784 0fd2 0D9D     		ldr	r5, [sp, #52]
 3785 0fd4 93F89420 		ldrb	r2, [r3, #148]	@ zero_extendqisi2
 3786 0fd8 002A     		cmp	r2, #0
 3787 0fda 4CD0     		beq	.L549
 3788 0fdc D3F8A400 		ldr	r0, [r3, #164]	@ float
 3789 0fe0 FFF7FEFF 		bl	__aeabi_f2d
 3790 0fe4 0246     		mov	r2, r0
 3791 0fe6 0B46     		mov	r3, r1
 3792              	.L516:
 3793 0fe8 4149     		ldr	r1, .L717+76
 3794 0fea 2846     		mov	r0, r5
 3795 0fec FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3796 0ff0 E069     		ldr	r0, [r4, #28]
 3797 0ff2 0D9D     		ldr	r5, [sp, #52]
 3798 0ff4 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 3799 0ff8 FFF7FEFF 		bl	__aeabi_f2d
 3800 0ffc 0246     		mov	r2, r0
 3801 0ffe 0B46     		mov	r3, r1
 3802 1000 2846     		mov	r0, r5
 3803 1002 3C49     		ldr	r1, .L717+80
 3804 1004 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3805 1008 E069     		ldr	r0, [r4, #28]
 3806 100a 0D9D     		ldr	r5, [sp, #52]
 3807 100c FFF7FEFF 		bl	_ZNK12PrintMonitor17GetWarmUpDurationEv
 3808 1010 FFF7FEFF 		bl	__aeabi_f2d
 3809 1014 0246     		mov	r2, r0
 3810 1016 0B46     		mov	r3, r1
 3811 1018 2846     		mov	r0, r5
 3812 101a 3749     		ldr	r1, .L717+84
 3813 101c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3814 1020 0121     		movs	r1, #1
 3815 1022 E069     		ldr	r0, [r4, #28]
 3816 1024 0D9D     		ldr	r5, [sp, #52]
 3817 1026 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3818 102a FFF7FEFF 		bl	__aeabi_f2d
 3819 102e 0246     		mov	r2, r0
ARM GAS  /tmp/ccDCB0nG.s 			page 68


 3820 1030 0B46     		mov	r3, r1
 3821 1032 2846     		mov	r0, r5
 3822 1034 3149     		ldr	r1, .L717+88
 3823 1036 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3824 103a 0021     		movs	r1, #0
 3825 103c E069     		ldr	r0, [r4, #28]
 3826 103e 0D9D     		ldr	r5, [sp, #52]
 3827 1040 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3828 1044 FFF7FEFF 		bl	__aeabi_f2d
 3829 1048 0246     		mov	r2, r0
 3830 104a 0B46     		mov	r3, r1
 3831 104c 2846     		mov	r0, r5
 3832 104e 2C49     		ldr	r1, .L717+92
 3833 1050 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3834 1054 0221     		movs	r1, #2
 3835 1056 E069     		ldr	r0, [r4, #28]
 3836 1058 0D9D     		ldr	r5, [sp, #52]
 3837 105a FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3838 105e FFF7FEFF 		bl	__aeabi_f2d
 3839 1062 0246     		mov	r2, r0
 3840 1064 0B46     		mov	r3, r1
 3841 1066 2846     		mov	r0, r5
 3842 1068 2649     		ldr	r1, .L717+96
 3843 106a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3844 106e C6E4     		b	.L481
 3845              	.L653:
 3846 1070 0022     		movs	r2, #0
 3847 1072 0023     		movs	r3, #0
 3848 1074 68E7     		b	.L511
 3849              	.L549:
 3850 1076 0022     		movs	r2, #0
 3851 1078 0023     		movs	r3, #0
 3852 107a B5E7     		b	.L516
 3853              	.L705:
 3854 107c 2069     		ldr	r0, [r4, #16]
 3855 107e FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 3856 1082 2149     		ldr	r1, .L717+100
 3857 1084 FFF7FEFF 		bl	__aeabi_fmul
 3858 1088 FFF7FEFF 		bl	__aeabi_f2d
 3859 108c 0246     		mov	r2, r0
 3860 108e 0B46     		mov	r3, r1
 3861 1090 85E7     		b	.L515
 3862              	.L513:
 3863 1092 5B21     		movs	r1, #91
 3864 1094 0D98     		ldr	r0, [sp, #52]
 3865 1096 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3866 109a 79E7     		b	.L537
 3867              	.L689:
 3868 109c 3E46     		mov	r6, r7
 3869 109e FFF76BBB 		b	.L465
 3870              	.L718:
 3871 10a2 00BF     		.align	2
 3872              	.L717:
 3873 10a4 08050000 		.word	.LC123
 3874 10a8 0C050000 		.word	.LC124
 3875 10ac 18050000 		.word	.LC125
 3876 10b0 28050000 		.word	.LC126
ARM GAS  /tmp/ccDCB0nG.s 			page 69


 3877 10b4 08000000 		.word	.LC61
 3878 10b8 18000000 		.word	.LC63
 3879 10bc F8000000 		.word	.LC38
 3880 10c0 00000000 		.word	.LC59
 3881 10c4 60030000 		.word	.LC101
 3882 10c8 70030000 		.word	.LC102
 3883 10cc 90030000 		.word	.LC103
 3884 10d0 00805640 		.word	1079410688
 3885 10d4 00006440 		.word	1080295424
 3886 10d8 38050000 		.word	.LC127
 3887 10dc 4C050000 		.word	.LC128
 3888 10e0 68050000 		.word	.LC129
 3889 10e4 74050000 		.word	.LC130
 3890 10e8 90050000 		.word	.LC131
 3891 10ec A4050000 		.word	.LC132
 3892 10f0 C0050000 		.word	.LC133
 3893 10f4 DC050000 		.word	.LC134
 3894 10f8 F4050000 		.word	.LC135
 3895 10fc 0C060000 		.word	.LC136
 3896 1100 28060000 		.word	.LC137
 3897 1104 3C060000 		.word	.LC138
 3898 1108 0000C842 		.word	1120403456
 3899 110c 10000000 		.word	.LC62
 3900 1110 C8000000 		.word	.LC55
 3901              		.size	_ZN6RepRap17GetStatusResponseEh14ResponseSource, .-_ZN6RepRap17GetStatusResponseEh14Response
 3902              		.global	__aeabi_fcmplt
 3903              		.section	.text._ZN6RepRap23GetLegacyStatusResponseEhi,"ax",%progbits
 3904              		.align	1
 3905              		.p2align 2,,3
 3906              		.global	_ZN6RepRap23GetLegacyStatusResponseEhi
 3907              		.syntax unified
 3908              		.thumb
 3909              		.thumb_func
 3910              		.fpu softvfp
 3911              		.type	_ZN6RepRap23GetLegacyStatusResponseEhi, %function
 3912              	_ZN6RepRap23GetLegacyStatusResponseEhi:
 3913              		@ args = 0, pretend = 0, frame = 72
 3914              		@ frame_needed = 0, uses_anonymous_args = 0
 3915 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3916 0004 97B0     		sub	sp, sp, #92
 3917 0006 0446     		mov	r4, r0
 3918 0008 08A8     		add	r0, sp, #32
 3919 000a 0591     		str	r1, [sp, #20]
 3920 000c 0692     		str	r2, [sp, #24]
 3921 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3922 0012 0028     		cmp	r0, #0
 3923 0014 00F03C82 		beq	.L719
 3924 0018 2046     		mov	r0, r4
 3925 001a FFF7FEFF 		bl	_ZNK6RepRap18GetStatusCharacterEv
 3926 001e 5328     		cmp	r0, #83
 3927 0020 00F0F182 		beq	.L791
 3928 0024 4828     		cmp	r0, #72
 3929 0026 14BF     		ite	ne
 3930 0028 0246     		movne	r2, r0
 3931 002a 5322     		moveq	r2, #83
 3932              	.L721:
 3933 002c 7849     		ldr	r1, .L851+8
ARM GAS  /tmp/ccDCB0nG.s 			page 70


 3934 002e 0898     		ldr	r0, [sp, #32]
 3935 0030 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 3936 0034 E068     		ldr	r0, [r4, #12]
 3937 0036 089D     		ldr	r5, [sp, #32]
 3938 0038 90F98260 		ldrsb	r6, [r0, #130]
 3939 003c 721C     		adds	r2, r6, #1
 3940 003e 00F02A82 		beq	.L722
 3941 0042 3146     		mov	r1, r6
 3942 0044 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 3943 0048 FFF7FEFF 		bl	__aeabi_f2d
 3944 004c 0B46     		mov	r3, r1
 3945 004e 0246     		mov	r2, r0
 3946 0050 7049     		ldr	r1, .L851+12
 3947 0052 2846     		mov	r0, r5
 3948 0054 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3949 0058 E38E     		ldrh	r3, [r4, #54]
 3950 005a 012B     		cmp	r3, #1
 3951 005c 40F27183 		bls	.L723
 3952              	.L725:
 3953 0060 0125     		movs	r5, #1
 3954 0062 DFF8D081 		ldr	r8, .L851+44
 3955              	.L724:
 3956 0066 69B2     		sxtb	r1, r5
 3957 0068 E068     		ldr	r0, [r4, #12]
 3958 006a 089F     		ldr	r7, [sp, #32]
 3959 006c FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 3960 0070 FFF7FEFF 		bl	__aeabi_f2d
 3961 0074 2C22     		movs	r2, #44
 3962 0076 CDE90001 		strd	r0, [sp]
 3963 007a 3846     		mov	r0, r7
 3964 007c 4146     		mov	r1, r8
 3965 007e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3966 0082 E38E     		ldrh	r3, [r4, #54]
 3967 0084 0135     		adds	r5, r5, #1
 3968 0086 AB42     		cmp	r3, r5
 3969 0088 EDD8     		bhi	.L724
 3970 008a 6349     		ldr	r1, .L851+16
 3971 008c 0898     		ldr	r0, [sp, #32]
 3972 008e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3973 0092 731C     		adds	r3, r6, #1
 3974 0094 089D     		ldr	r5, [sp, #32]
 3975 0096 00F00D82 		beq	.L728
 3976              	.L727:
 3977 009a 3146     		mov	r1, r6
 3978 009c E068     		ldr	r0, [r4, #12]
 3979 009e FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 3980 00a2 FFF7FEFF 		bl	__aeabi_f2d
 3981 00a6 0B46     		mov	r3, r1
 3982 00a8 0246     		mov	r2, r0
 3983 00aa 5C49     		ldr	r1, .L851+20
 3984 00ac 2846     		mov	r0, r5
 3985 00ae FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3986 00b2 E38E     		ldrh	r3, [r4, #54]
 3987 00b4 012B     		cmp	r3, #1
 3988 00b6 40F24A83 		bls	.L730
 3989              	.L732:
 3990 00ba 0125     		movs	r5, #1
ARM GAS  /tmp/ccDCB0nG.s 			page 71


 3991 00bc DFF87881 		ldr	r8, .L851+48
 3992              	.L731:
 3993 00c0 69B2     		sxtb	r1, r5
 3994 00c2 E068     		ldr	r0, [r4, #12]
 3995 00c4 089F     		ldr	r7, [sp, #32]
 3996 00c6 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 3997 00ca FFF7FEFF 		bl	__aeabi_f2d
 3998 00ce 0B46     		mov	r3, r1
 3999 00d0 0246     		mov	r2, r0
 4000 00d2 4146     		mov	r1, r8
 4001 00d4 3846     		mov	r0, r7
 4002 00d6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4003 00da E38E     		ldrh	r3, [r4, #54]
 4004 00dc 0135     		adds	r5, r5, #1
 4005 00de AB42     		cmp	r3, r5
 4006 00e0 EED8     		bhi	.L731
 4007 00e2 4D49     		ldr	r1, .L851+16
 4008 00e4 0898     		ldr	r0, [sp, #32]
 4009 00e6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4010 00ea 771C     		adds	r7, r6, #1
 4011 00ec 089D     		ldr	r5, [sp, #32]
 4012 00ee 00F0F081 		beq	.L735
 4013              	.L734:
 4014 00f2 3146     		mov	r1, r6
 4015 00f4 E068     		ldr	r0, [r4, #12]
 4016 00f6 FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 4017 00fa FFF7FEFF 		bl	__aeabi_f2d
 4018 00fe 0B46     		mov	r3, r1
 4019 0100 0246     		mov	r2, r0
 4020 0102 4749     		ldr	r1, .L851+24
 4021 0104 2846     		mov	r0, r5
 4022 0106 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4023 010a E38E     		ldrh	r3, [r4, #54]
 4024 010c 012B     		cmp	r3, #1
 4025 010e 40F22783 		bls	.L737
 4026              	.L781:
 4027 0112 0125     		movs	r5, #1
 4028 0114 DFF82081 		ldr	r8, .L851+48
 4029              	.L738:
 4030 0118 69B2     		sxtb	r1, r5
 4031 011a E068     		ldr	r0, [r4, #12]
 4032 011c 089F     		ldr	r7, [sp, #32]
 4033 011e FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 4034 0122 FFF7FEFF 		bl	__aeabi_f2d
 4035 0126 0B46     		mov	r3, r1
 4036 0128 0246     		mov	r2, r0
 4037 012a 4146     		mov	r1, r8
 4038 012c 3846     		mov	r0, r7
 4039 012e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4040 0132 E38E     		ldrh	r3, [r4, #54]
 4041 0134 0135     		adds	r5, r5, #1
 4042 0136 AB42     		cmp	r3, r5
 4043 0138 EED8     		bhi	.L738
 4044 013a 3749     		ldr	r1, .L851+16
 4045 013c 0898     		ldr	r0, [sp, #32]
 4046 013e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4047 0142 701C     		adds	r0, r6, #1
ARM GAS  /tmp/ccDCB0nG.s 			page 72


 4048 0144 089D     		ldr	r5, [sp, #32]
 4049 0146 00F03B82 		beq	.L793
 4050              	.L780:
 4051 014a 3146     		mov	r1, r6
 4052 014c E068     		ldr	r0, [r4, #12]
 4053 014e FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 4054 0152 0246     		mov	r2, r0
 4055              	.L739:
 4056 0154 2846     		mov	r0, r5
 4057 0156 3349     		ldr	r1, .L851+28
 4058 0158 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4059 015c E38E     		ldrh	r3, [r4, #54]
 4060 015e 012B     		cmp	r3, #1
 4061 0160 0FD9     		bls	.L744
 4062 0162 0125     		movs	r5, #1
 4063 0164 304F     		ldr	r7, .L851+32
 4064              	.L743:
 4065 0166 69B2     		sxtb	r1, r5
 4066 0168 E068     		ldr	r0, [r4, #12]
 4067 016a 089E     		ldr	r6, [sp, #32]
 4068 016c FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 4069 0170 3946     		mov	r1, r7
 4070 0172 0246     		mov	r2, r0
 4071 0174 3046     		mov	r0, r6
 4072 0176 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4073 017a E38E     		ldrh	r3, [r4, #54]
 4074 017c 0135     		adds	r5, r5, #1
 4075 017e AB42     		cmp	r3, r5
 4076 0180 F1D8     		bhi	.L743
 4077              	.L744:
 4078 0182 2549     		ldr	r1, .L851+16
 4079 0184 0898     		ldr	r0, [sp, #32]
 4080 0186 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4081 018a 2369     		ldr	r3, [r4, #16]
 4082 018c 2749     		ldr	r1, .L851+36
 4083 018e D3F8FC61 		ldr	r6, [r3, #508]
 4084 0192 0898     		ldr	r0, [sp, #32]
 4085 0194 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4086 0198 2369     		ldr	r3, [r4, #16]
 4087 019a 002E     		cmp	r6, #0
 4088 019c 50D0     		beq	.L840
 4089 019e 0027     		movs	r7, #0
 4090 01a0 4FF05B0A 		mov	r10, #91
 4091 01a4 DFF894B0 		ldr	fp, .L851+52
 4092 01a8 03F18009 		add	r9, r3, #128
 4093 01ac B046     		mov	r8, r6
 4094 01ae 0794     		str	r4, [sp, #28]
 4095 01b0 0FE0     		b	.L748
 4096              	.L779:
 4097 01b2 2046     		mov	r0, r4
 4098 01b4 FFF7FEFF 		bl	__aeabi_f2d
 4099              	.L745:
 4100 01b8 CDE90001 		strd	r0, [sp]
 4101 01bc 5246     		mov	r2, r10
 4102 01be 3046     		mov	r0, r6
 4103 01c0 0137     		adds	r7, r7, #1
 4104 01c2 1B49     		ldr	r1, .L851+40
ARM GAS  /tmp/ccDCB0nG.s 			page 73


 4105 01c4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4106 01c8 4745     		cmp	r7, r8
 4107 01ca 4FF02C0A 		mov	r10, #44
 4108 01ce 00F09181 		beq	.L841
 4109              	.L748:
 4110 01d2 59F8044F 		ldr	r4, [r9, #4]!	@ float
 4111 01d6 089E     		ldr	r6, [sp, #32]
 4112 01d8 2146     		mov	r1, r4
 4113 01da 2046     		mov	r0, r4
 4114 01dc 24F00045 		bic	r5, r4, #-2147483648
 4115 01e0 FFF7FEFF 		bl	__aeabi_fcmpun
 4116 01e4 58B9     		cbnz	r0, .L794
 4117 01e6 5946     		mov	r1, fp
 4118 01e8 2846     		mov	r0, r5
 4119 01ea FFF7FEFF 		bl	__aeabi_fcmpun
 4120 01ee 0028     		cmp	r0, #0
 4121 01f0 DFD1     		bne	.L779
 4122 01f2 2846     		mov	r0, r5
 4123 01f4 5946     		mov	r1, fp
 4124 01f6 FFF7FEFF 		bl	__aeabi_fcmple
 4125 01fa 0028     		cmp	r0, #0
 4126 01fc D9D1     		bne	.L779
 4127              	.L794:
 4128 01fe 02A1     		adr	r1, .L851
 4129 0200 D1E90001 		ldrd	r0, [r1]
 4130 0204 D8E7     		b	.L745
 4131              	.L852:
 4132 0206 00BF     		.align	3
 4133              	.L851:
 4134 0208 00000040 		.word	1073741824
 4135 020c F387C340 		.word	1086556147
 4136 0210 00000000 		.word	.LC143
 4137 0214 1C000000 		.word	.LC144
 4138 0218 00000000 		.word	.LC59
 4139 021c 24000000 		.word	.LC145
 4140 0220 3C000000 		.word	.LC147
 4141 0224 50000000 		.word	.LC148
 4142 0228 68000000 		.word	.LC150
 4143 022c 60000000 		.word	.LC149
 4144 0230 50000000 		.word	.LC67
 4145 0234 C8000000 		.word	.LC55
 4146 0238 34000000 		.word	.LC146
 4147 023c FFFF7F7F 		.word	2139095039
 4148              	.L840:
 4149 0240 E26A     		ldr	r2, [r4, #44]
 4150 0242 A068     		ldr	r0, [r4, #8]
 4151 0244 002A     		cmp	r2, #0
 4152 0246 40F08882 		bne	.L842
 4153 024a 0223     		movs	r3, #2
 4154 024c 0122     		movs	r2, #1
 4155              	.L828:
 4156 024e 0DA9     		add	r1, sp, #52
 4157 0250 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 4158 0254 BB49     		ldr	r1, .L853
 4159 0256 0898     		ldr	r0, [sp, #32]
 4160 0258 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4161              	.L749:
ARM GAS  /tmp/ccDCB0nG.s 			page 74


 4162 025c 2069     		ldr	r0, [r4, #16]
 4163 025e 089D     		ldr	r5, [sp, #32]
 4164 0260 FFF7FEFF 		bl	_ZNK6GCodes14GetSpeedFactorEv
 4165 0264 B849     		ldr	r1, .L853+4
 4166 0266 FFF7FEFF 		bl	__aeabi_fmul
 4167 026a FFF7FEFF 		bl	__aeabi_f2d
 4168 026e 0B46     		mov	r3, r1
 4169 0270 0246     		mov	r2, r0
 4170 0272 B649     		ldr	r1, .L853+8
 4171 0274 2846     		mov	r0, r5
 4172 0276 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4173 027a A38E     		ldrh	r3, [r4, #52]
 4174 027c 002B     		cmp	r3, #0
 4175 027e 00F05A82 		beq	.L752
 4176 0282 0025     		movs	r5, #0
 4177 0284 5B27     		movs	r7, #91
 4178 0286 B246     		mov	r10, r6
 4179 0288 DFF8BC92 		ldr	r9, .L853+4
 4180 028c DFF80083 		ldr	r8, .L853+76
 4181              	.L753:
 4182 0290 2946     		mov	r1, r5
 4183 0292 2069     		ldr	r0, [r4, #16]
 4184 0294 089E     		ldr	r6, [sp, #32]
 4185 0296 FFF7FEFF 		bl	_ZN6GCodes18GetExtrusionFactorEj
 4186 029a 4946     		mov	r1, r9
 4187 029c FFF7FEFF 		bl	__aeabi_fmul
 4188 02a0 FFF7FEFF 		bl	__aeabi_f2d
 4189 02a4 3A46     		mov	r2, r7
 4190 02a6 CDE90001 		strd	r0, [sp]
 4191 02aa 3046     		mov	r0, r6
 4192 02ac 4146     		mov	r1, r8
 4193 02ae FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4194 02b2 A38E     		ldrh	r3, [r4, #52]
 4195 02b4 0135     		adds	r5, r5, #1
 4196 02b6 AB42     		cmp	r3, r5
 4197 02b8 4FF02C07 		mov	r7, #44
 4198 02bc E8D8     		bhi	.L753
 4199 02be 5646     		mov	r6, r10
 4200 02c0 0898     		ldr	r0, [sp, #32]
 4201 02c2 A349     		ldr	r1, .L853+12
 4202              	.L788:
 4203 02c4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4204 02c8 2369     		ldr	r3, [r4, #16]
 4205 02ca D3F8C802 		ldr	r0, [r3, #712]	@ float
 4206 02ce FFF7FEFF 		bl	__aeabi_f2d
 4207 02d2 0B46     		mov	r3, r1
 4208 02d4 0246     		mov	r2, r0
 4209 02d6 9F49     		ldr	r1, .L853+16
 4210 02d8 0898     		ldr	r0, [sp, #32]
 4211 02da FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4212 02de E36A     		ldr	r3, [r4, #44]
 4213 02e0 0898     		ldr	r0, [sp, #32]
 4214 02e2 002B     		cmp	r3, #0
 4215 02e4 00F0B981 		beq	.L795
 4216 02e8 5A6E     		ldr	r2, [r3, #100]
 4217              	.L755:
 4218 02ea 9B49     		ldr	r1, .L853+20
ARM GAS  /tmp/ccDCB0nG.s 			page 75


 4219 02ec FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4220 02f0 2068     		ldr	r0, [r4]
 4221 02f2 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 4222 02f6 0AAA     		add	r2, sp, #40
 4223 02f8 0546     		mov	r5, r0
 4224 02fa 09A9     		add	r1, sp, #36
 4225 02fc 2068     		ldr	r0, [r4]
 4226 02fe FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 4227 0302 0128     		cmp	r0, #1
 4228 0304 00F06481 		beq	.L757
 4229 0308 0228     		cmp	r0, #2
 4230 030a 40F05B81 		bne	.L843
 4231 030e 0A99     		ldr	r1, [sp, #40]
 4232 0310 099B     		ldr	r3, [sp, #36]
 4233 0312 0091     		str	r1, [sp]
 4234 0314 0898     		ldr	r0, [sp, #32]
 4235 0316 2A46     		mov	r2, r5
 4236 0318 9049     		ldr	r1, .L853+24
 4237 031a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4238              	.L759:
 4239 031e 9049     		ldr	r1, .L853+28
 4240 0320 0898     		ldr	r0, [sp, #32]
 4241 0322 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4242 0326 0025     		movs	r5, #0
 4243 0328 5B27     		movs	r7, #91
 4244 032a A246     		mov	r10, r4
 4245 032c DFF81892 		ldr	r9, .L853+4
 4246 0330 DFF86082 		ldr	r8, .L853+80
 4247              	.L760:
 4248 0334 2946     		mov	r1, r5
 4249 0336 DAF80000 		ldr	r0, [r10]
 4250 033a 089C     		ldr	r4, [sp, #32]
 4251 033c FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 4252 0340 4946     		mov	r1, r9
 4253 0342 FFF7FEFF 		bl	__aeabi_fmul
 4254 0346 FFF7FEFF 		bl	__aeabi_f2d
 4255 034a 0135     		adds	r5, r5, #1
 4256 034c CDE90001 		strd	r0, [sp]
 4257 0350 3A46     		mov	r2, r7
 4258 0352 2046     		mov	r0, r4
 4259 0354 4146     		mov	r1, r8
 4260 0356 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4261 035a 022D     		cmp	r5, #2
 4262 035c 4FF02C07 		mov	r7, #44
 4263 0360 E8D1     		bne	.L760
 4264 0362 DAF80000 		ldr	r0, [r10]
 4265 0366 089D     		ldr	r5, [sp, #32]
 4266 0368 FFF7FEFF 		bl	_ZNK8Platform9GetFanRPMEv
 4267 036c FFF7FEFF 		bl	__aeabi_f2uiz
 4268 0370 7C49     		ldr	r1, .L853+32
 4269 0372 0246     		mov	r2, r0
 4270 0374 2846     		mov	r0, r5
 4271 0376 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4272 037a 7B49     		ldr	r1, .L853+36
 4273 037c 0898     		ldr	r0, [sp, #32]
 4274 037e 5446     		mov	r4, r10
 4275 0380 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
ARM GAS  /tmp/ccDCB0nG.s 			page 76


 4276 0384 8EB1     		cbz	r6, .L764
 4277 0386 0025     		movs	r5, #0
 4278 0388 5B22     		movs	r2, #91
 4279 038a 784F     		ldr	r7, .L853+40
 4280              	.L765:
 4281 038c 2369     		ldr	r3, [r4, #16]
 4282 038e 3946     		mov	r1, r7
 4283 0390 D3F88032 		ldr	r3, [r3, #640]
 4284 0394 0898     		ldr	r0, [sp, #32]
 4285 0396 EB40     		lsrs	r3, r3, r5
 4286 0398 03F00103 		and	r3, r3, #1
 4287 039c 0135     		adds	r5, r5, #1
 4288 039e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4289 03a2 B542     		cmp	r5, r6
 4290 03a4 4FF02C02 		mov	r2, #44
 4291 03a8 F0D1     		bne	.L765
 4292              	.L764:
 4293 03aa 5D21     		movs	r1, #93
 4294 03ac 0898     		ldr	r0, [sp, #32]
 4295 03ae FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 4296 03b2 E369     		ldr	r3, [r4, #28]
 4297 03b4 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 4298 03b6 002B     		cmp	r3, #0
 4299 03b8 40F01181 		bne	.L844
 4300              	.L763:
 4301 03bc 0BA8     		add	r0, sp, #44
 4302 03be 4FF0FF32 		mov	r2, #-1
 4303 03c2 04F12401 		add	r1, r4, #36
 4304 03c6 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 4305 03ca 94F89531 		ldrb	r3, [r4, #405]	@ zero_extendqisi2
 4306 03ce 002B     		cmp	r3, #0
 4307 03d0 00F0E480 		beq	.L767
 4308 03d4 D4F8A033 		ldr	r3, [r4, #928]
 4309 03d8 002B     		cmp	r3, #0
 4310 03da 40F04181 		bne	.L845
 4311 03de 4FF00008 		mov	r8, #0
 4312 03e2 4FF00009 		mov	r9, #0
 4313              	.L768:
 4314 03e6 0025     		movs	r5, #0
 4315 03e8 0127     		movs	r7, #1
 4316 03ea D4F89C33 		ldr	r3, [r4, #924]
 4317 03ee D4F89823 		ldr	r2, [r4, #920]
 4318 03f2 CDE90089 		strd	r8, [sp]
 4319 03f6 D4F8A813 		ldr	r1, [r4, #936]
 4320 03fa 0898     		ldr	r0, [sp, #32]
 4321 03fc 0291     		str	r1, [sp, #8]
 4322 03fe 5C49     		ldr	r1, .L853+44
 4323 0400 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4324 0404 5B49     		ldr	r1, .L853+48
 4325 0406 0898     		ldr	r0, [sp, #32]
 4326 0408 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4327 040c 2B46     		mov	r3, r5
 4328 040e 4FF48072 		mov	r2, #256
 4329 0412 04F5CB71 		add	r1, r4, #406
 4330 0416 0898     		ldr	r0, [sp, #32]
 4331 0418 0195     		str	r5, [sp, #4]
 4332 041a 0097     		str	r7, [sp]
ARM GAS  /tmp/ccDCB0nG.s 			page 77


 4333 041c FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 4334 0420 5549     		ldr	r1, .L853+52
 4335 0422 0898     		ldr	r0, [sp, #32]
 4336 0424 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4337 0428 2B46     		mov	r3, r5
 4338 042a 4FF48072 		mov	r2, #256
 4339 042e 04F29721 		addw	r1, r4, #663
 4340 0432 0898     		ldr	r0, [sp, #32]
 4341 0434 0097     		str	r7, [sp]
 4342 0436 0195     		str	r5, [sp, #4]
 4343 0438 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 4344 043c 0BA8     		add	r0, sp, #44
 4345 043e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 4346 0442 059B     		ldr	r3, [sp, #20]
 4347 0444 022B     		cmp	r3, #2
 4348 0446 00F0B480 		beq	.L846
 4349              	.L772:
 4350 044a 059B     		ldr	r3, [sp, #20]
 4351 044c 032B     		cmp	r3, #3
 4352 044e 00F03481 		beq	.L847
 4353 0452 2368     		ldr	r3, [r4]
 4354 0454 D3F84825 		ldr	r2, [r3, #1352]
 4355 0458 059B     		ldr	r3, [sp, #20]
 4356 045a 012B     		cmp	r3, #1
 4357 045c 05DD     		ble	.L777
 4358              	.L789:
 4359 045e 0699     		ldr	r1, [sp, #24]
 4360 0460 0B46     		mov	r3, r1
 4361 0462 0131     		adds	r1, r1, #1
 4362 0464 0FD0     		beq	.L778
 4363 0466 9342     		cmp	r3, r2
 4364 0468 0DD0     		beq	.L778
 4365              	.L777:
 4366 046a 4449     		ldr	r1, .L853+56
 4367 046c 0898     		ldr	r0, [sp, #32]
 4368 046e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4369 0472 0022     		movs	r2, #0
 4370 0474 2368     		ldr	r3, [r4]
 4371 0476 0898     		ldr	r0, [sp, #32]
 4372 0478 D3F84415 		ldr	r1, [r3, #1348]
 4373 047c C3F84425 		str	r2, [r3, #1348]
 4374 0480 0122     		movs	r2, #1
 4375 0482 FFF7FEFF 		bl	_ZN12OutputBuffer11EncodeReplyEPS_b
 4376              	.L778:
 4377 0486 3E49     		ldr	r1, .L853+60
 4378 0488 0898     		ldr	r0, [sp, #32]
 4379 048a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4380 048e 0898     		ldr	r0, [sp, #32]
 4381              	.L719:
 4382 0490 17B0     		add	sp, sp, #92
 4383              		@ sp needed
 4384 0492 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4385              	.L722:
 4386 0496 0023     		movs	r3, #0
 4387 0498 2846     		mov	r0, r5
 4388 049a 0022     		movs	r2, #0
 4389 049c 3949     		ldr	r1, .L853+64
ARM GAS  /tmp/ccDCB0nG.s 			page 78


 4390 049e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4391 04a2 E38E     		ldrh	r3, [r4, #54]
 4392 04a4 012B     		cmp	r3, #1
 4393 04a6 3FF6DBAD 		bhi	.L725
 4394 04aa 2949     		ldr	r1, .L853+12
 4395 04ac 0898     		ldr	r0, [sp, #32]
 4396 04ae FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4397 04b2 089D     		ldr	r5, [sp, #32]
 4398              	.L728:
 4399 04b4 0023     		movs	r3, #0
 4400 04b6 2846     		mov	r0, r5
 4401 04b8 0022     		movs	r2, #0
 4402 04ba 3349     		ldr	r1, .L853+68
 4403 04bc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4404 04c0 E38E     		ldrh	r3, [r4, #54]
 4405 04c2 012B     		cmp	r3, #1
 4406 04c4 3FF6F9AD 		bhi	.L732
 4407 04c8 2149     		ldr	r1, .L853+12
 4408 04ca 0898     		ldr	r0, [sp, #32]
 4409 04cc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4410 04d0 089D     		ldr	r5, [sp, #32]
 4411              	.L735:
 4412 04d2 0023     		movs	r3, #0
 4413 04d4 2846     		mov	r0, r5
 4414 04d6 0022     		movs	r2, #0
 4415 04d8 2C49     		ldr	r1, .L853+72
 4416 04da FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4417 04de E38E     		ldrh	r3, [r4, #54]
 4418 04e0 012B     		cmp	r3, #1
 4419 04e2 3FF616AE 		bhi	.L781
 4420 04e6 1A49     		ldr	r1, .L853+12
 4421 04e8 0898     		ldr	r0, [sp, #32]
 4422 04ea FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4423 04ee 089D     		ldr	r5, [sp, #32]
 4424 04f0 0022     		movs	r2, #0
 4425 04f2 2FE6     		b	.L739
 4426              	.L841:
 4427 04f4 079C     		ldr	r4, [sp, #28]
 4428 04f6 4646     		mov	r6, r8
 4429 04f8 E26A     		ldr	r2, [r4, #44]
 4430 04fa A068     		ldr	r0, [r4, #8]
 4431 04fc 002A     		cmp	r2, #0
 4432 04fe 00F01D81 		beq	.L848
 4433 0502 D36E     		ldr	r3, [r2, #108]
 4434 0504 926E     		ldr	r2, [r2, #104]
 4435              	.L827:
 4436 0506 0DA9     		add	r1, sp, #52
 4437 0508 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 4438 050c 0D49     		ldr	r1, .L853
 4439 050e 0898     		ldr	r0, [sp, #32]
 4440 0510 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4441 0514 0025     		movs	r5, #0
 4442 0516 4FF05B09 		mov	r9, #91
 4443 051a DFF87C80 		ldr	r8, .L853+84
 4444 051e 0CAF     		add	r7, sp, #48
 4445              	.L751:
 4446 0520 57F8040F 		ldr	r0, [r7, #4]!	@ float
ARM GAS  /tmp/ccDCB0nG.s 			page 79


 4447 0524 FFF7FEFF 		bl	__aeabi_f2d
 4448 0528 089B     		ldr	r3, [sp, #32]
 4449 052a CDE90001 		strd	r0, [sp]
 4450 052e 4A46     		mov	r2, r9
 4451 0530 0135     		adds	r5, r5, #1
 4452 0532 1846     		mov	r0, r3
 4453 0534 4146     		mov	r1, r8
 4454 0536 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4455 053a B542     		cmp	r5, r6
 4456 053c 4FF02C09 		mov	r9, #44
 4457 0540 EED3     		bcc	.L751
 4458 0542 8BE6     		b	.L749
 4459              	.L854:
 4460              		.align	2
 4461              	.L853:
 4462 0544 58000000 		.word	.LC68
 4463 0548 0000C842 		.word	1120403456
 4464 054c 6C000000 		.word	.LC151
 4465 0550 00000000 		.word	.LC59
 4466 0554 88000000 		.word	.LC152
 4467 0558 9C000000 		.word	.LC153
 4468 055c BC000000 		.word	.LC155
 4469 0560 08010000 		.word	.LC77
 4470 0564 E4000000 		.word	.LC157
 4471 0568 F4000000 		.word	.LC158
 4472 056c 48000000 		.word	.LC66
 4473 0570 1C010000 		.word	.LC160
 4474 0574 6C010000 		.word	.LC161
 4475 0578 7C010000 		.word	.LC162
 4476 057c 2C020000 		.word	.LC167
 4477 0580 E4000000 		.word	.LC57
 4478 0584 1C000000 		.word	.LC144
 4479 0588 24000000 		.word	.LC145
 4480 058c 3C000000 		.word	.LC147
 4481 0590 10000000 		.word	.LC27
 4482 0594 C8000000 		.word	.LC55
 4483 0598 50000000 		.word	.LC67
 4484              	.L767:
 4485 059c 7349     		ldr	r1, .L855
 4486 059e 0898     		ldr	r0, [sp, #32]
 4487 05a0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4488 05a4 0BA8     		add	r0, sp, #44
 4489 05a6 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 4490 05aa 059B     		ldr	r3, [sp, #20]
 4491 05ac 022B     		cmp	r3, #2
 4492 05ae 7FF44CAF 		bne	.L772
 4493              	.L846:
 4494 05b2 E069     		ldr	r0, [r4, #28]
 4495 05b4 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 4496 05b6 43BB     		cbnz	r3, .L849
 4497              	.L773:
 4498 05b8 2368     		ldr	r3, [r4]
 4499 05ba D3F84825 		ldr	r2, [r3, #1352]
 4500 05be 4EE7     		b	.L789
 4501              	.L793:
 4502 05c0 0022     		movs	r2, #0
 4503 05c2 C7E5     		b	.L739
ARM GAS  /tmp/ccDCB0nG.s 			page 80


 4504              	.L843:
 4505 05c4 2A46     		mov	r2, r5
 4506 05c6 6A49     		ldr	r1, .L855+4
 4507 05c8 0898     		ldr	r0, [sp, #32]
 4508 05ca FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4509 05ce A6E6     		b	.L759
 4510              	.L757:
 4511 05d0 2A46     		mov	r2, r5
 4512 05d2 099B     		ldr	r3, [sp, #36]
 4513 05d4 6749     		ldr	r1, .L855+8
 4514 05d6 0898     		ldr	r0, [sp, #32]
 4515 05d8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4516 05dc 9FE6     		b	.L759
 4517              	.L844:
 4518 05de 2069     		ldr	r0, [r4, #16]
 4519 05e0 089D     		ldr	r5, [sp, #32]
 4520 05e2 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 4521 05e6 0021     		movs	r1, #0
 4522 05e8 0746     		mov	r7, r0
 4523 05ea FFF7FEFF 		bl	__aeabi_fcmplt
 4524 05ee 0028     		cmp	r0, #0
 4525 05f0 30D1     		bne	.L796
 4526 05f2 3846     		mov	r0, r7
 4527 05f4 FFF7FEFF 		bl	__aeabi_f2d
 4528 05f8 0246     		mov	r2, r0
 4529 05fa 0B46     		mov	r3, r1
 4530              	.L766:
 4531 05fc 2846     		mov	r0, r5
 4532 05fe 5E49     		ldr	r1, .L855+12
 4533 0600 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4534 0604 DAE6     		b	.L763
 4535              	.L791:
 4536 0606 4122     		movs	r2, #65
 4537 0608 10E5     		b	.L721
 4538              	.L849:
 4539 060a 0121     		movs	r1, #1
 4540 060c 089D     		ldr	r5, [sp, #32]
 4541 060e FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 4542 0612 0021     		movs	r1, #0
 4543 0614 0646     		mov	r6, r0
 4544 0616 E069     		ldr	r0, [r4, #28]
 4545 0618 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 4546 061c 0599     		ldr	r1, [sp, #20]
 4547 061e 8046     		mov	r8, r0
 4548 0620 E069     		ldr	r0, [r4, #28]
 4549 0622 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 4550 0626 8146     		mov	r9, r0
 4551 0628 3046     		mov	r0, r6
 4552 062a FFF7FEFF 		bl	__aeabi_f2d
 4553 062e 0646     		mov	r6, r0
 4554 0630 4846     		mov	r0, r9
 4555 0632 0F46     		mov	r7, r1
 4556 0634 FFF7FEFF 		bl	__aeabi_f2d
 4557 0638 CDE90201 		strd	r0, [sp, #8]
 4558 063c 4046     		mov	r0, r8
 4559 063e FFF7FEFF 		bl	__aeabi_f2d
 4560 0642 3246     		mov	r2, r6
ARM GAS  /tmp/ccDCB0nG.s 			page 81


 4561 0644 CDE90001 		strd	r0, [sp]
 4562 0648 3B46     		mov	r3, r7
 4563 064a 2846     		mov	r0, r5
 4564 064c 4B49     		ldr	r1, .L855+16
 4565 064e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4566 0652 B1E7     		b	.L773
 4567              	.L796:
 4568 0654 0022     		movs	r2, #0
 4569 0656 0023     		movs	r3, #0
 4570 0658 D0E7     		b	.L766
 4571              	.L795:
 4572 065a 4FF0FF32 		mov	r2, #-1
 4573 065e 44E6     		b	.L755
 4574              	.L845:
 4575 0660 D4F8A403 		ldr	r0, [r4, #932]
 4576 0664 FFF7FEFF 		bl	__aeabi_ui2f
 4577 0668 4549     		ldr	r1, .L855+20
 4578 066a FFF7FEFF 		bl	__aeabi_fdiv
 4579 066e 0546     		mov	r5, r0
 4580 0670 FFF7FEFF 		bl	millis
 4581 0674 D4F8A033 		ldr	r3, [r4, #928]
 4582 0678 4FF00107 		mov	r7, #1
 4583 067c C01A     		subs	r0, r0, r3
 4584 067e FFF7FEFF 		bl	__aeabi_ui2f
 4585 0682 3F49     		ldr	r1, .L855+20
 4586 0684 FFF7FEFF 		bl	__aeabi_fdiv
 4587 0688 0146     		mov	r1, r0
 4588 068a 2846     		mov	r0, r5
 4589 068c FFF7FEFF 		bl	__aeabi_fsub
 4590 0690 0021     		movs	r1, #0
 4591 0692 0546     		mov	r5, r0
 4592 0694 FFF7FEFF 		bl	__aeabi_fcmpgt
 4593 0698 00B9     		cbnz	r0, .L769
 4594 069a 0746     		mov	r7, r0
 4595              	.L769:
 4596 069c 84F89571 		strb	r7, [r4, #405]
 4597 06a0 0021     		movs	r1, #0
 4598 06a2 2846     		mov	r0, r5
 4599 06a4 FFF7FEFF 		bl	__aeabi_fcmpgt
 4600 06a8 0028     		cmp	r0, #0
 4601 06aa 3FF477AF 		beq	.L767
 4602 06ae 2846     		mov	r0, r5
 4603 06b0 FFF7FEFF 		bl	__aeabi_f2d
 4604 06b4 8046     		mov	r8, r0
 4605 06b6 8946     		mov	r9, r1
 4606 06b8 95E6     		b	.L768
 4607              	.L847:
 4608 06ba A368     		ldr	r3, [r4, #8]
 4609 06bc 0121     		movs	r1, #1
 4610 06be D3F8FC04 		ldr	r0, [r3, #1276]
 4611 06c2 DDF82090 		ldr	r9, [sp, #32]
 4612 06c6 0368     		ldr	r3, [r0]
 4613 06c8 4FF0000B 		mov	fp, #0
 4614 06cc 1B68     		ldr	r3, [r3]
 4615 06ce 9847     		blx	r3
 4616 06d0 2769     		ldr	r7, [r4, #16]
 4617 06d2 8246     		mov	r10, r0
ARM GAS  /tmp/ccDCB0nG.s 			page 82


 4618 06d4 07F27227 		addw	r7, r7, #626
 4619 06d8 01E0     		b	.L776
 4620              	.L850:
 4621 06da 0BF1010B 		add	fp, fp, #1
 4622              	.L776:
 4623 06de 5946     		mov	r1, fp
 4624 06e0 2046     		mov	r0, r4
 4625 06e2 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 4626 06e6 0028     		cmp	r0, #0
 4627 06e8 F7D1     		bne	.L850
 4628 06ea 0221     		movs	r1, #2
 4629 06ec 0546     		mov	r5, r0
 4630 06ee 4FF00108 		mov	r8, #1
 4631 06f2 3346     		mov	r3, r6
 4632 06f4 5246     		mov	r2, r10
 4633 06f6 0191     		str	r1, [sp, #4]
 4634 06f8 CDF808B0 		str	fp, [sp, #8]
 4635 06fc 0097     		str	r7, [sp]
 4636 06fe 4846     		mov	r0, r9
 4637 0700 2049     		ldr	r1, .L855+24
 4638 0702 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4639 0706 2B46     		mov	r3, r5
 4640 0708 2822     		movs	r2, #40
 4641 070a 04F16101 		add	r1, r4, #97
 4642 070e 0898     		ldr	r0, [sp, #32]
 4643 0710 0195     		str	r5, [sp, #4]
 4644 0712 CDF80080 		str	r8, [sp]
 4645 0716 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 4646 071a 1B49     		ldr	r1, .L855+28
 4647 071c 0898     		ldr	r0, [sp, #32]
 4648 071e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4649 0722 0898     		ldr	r0, [sp, #32]
 4650 0724 CDF80080 		str	r8, [sp]
 4651 0728 0195     		str	r5, [sp, #4]
 4652 072a 2B46     		mov	r3, r5
 4653 072c 1822     		movs	r2, #24
 4654 072e 1749     		ldr	r1, .L855+32
 4655 0730 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 4656 0734 40E7     		b	.L773
 4657              	.L752:
 4658 0736 0898     		ldr	r0, [sp, #32]
 4659 0738 1549     		ldr	r1, .L855+36
 4660 073a C3E5     		b	.L788
 4661              	.L848:
 4662 073c 0223     		movs	r3, #2
 4663 073e 0122     		movs	r2, #1
 4664 0740 E1E6     		b	.L827
 4665              	.L723:
 4666 0742 1449     		ldr	r1, .L855+40
 4667 0744 0898     		ldr	r0, [sp, #32]
 4668 0746 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4669 074a 089D     		ldr	r5, [sp, #32]
 4670 074c A5E4     		b	.L727
 4671              	.L730:
 4672 074e 1149     		ldr	r1, .L855+40
 4673 0750 0898     		ldr	r0, [sp, #32]
 4674 0752 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
ARM GAS  /tmp/ccDCB0nG.s 			page 83


 4675 0756 089D     		ldr	r5, [sp, #32]
 4676 0758 CBE4     		b	.L734
 4677              	.L842:
 4678 075a D36E     		ldr	r3, [r2, #108]
 4679 075c 926E     		ldr	r2, [r2, #104]
 4680 075e 76E5     		b	.L828
 4681              	.L737:
 4682 0760 0C49     		ldr	r1, .L855+40
 4683 0762 0898     		ldr	r0, [sp, #32]
 4684 0764 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 4685 0768 089D     		ldr	r5, [sp, #32]
 4686 076a EEE4     		b	.L780
 4687              	.L856:
 4688              		.align	2
 4689              	.L855:
 4690 076c 90010000 		.word	.LC163
 4691 0770 D4000000 		.word	.LC156
 4692 0774 A8000000 		.word	.LC154
 4693 0778 00010000 		.word	.LC159
 4694 077c A4010000 		.word	.LC164
 4695 0780 00007A44 		.word	1148846080
 4696 0784 C4010000 		.word	.LC165
 4697 0788 18020000 		.word	.LC166
 4698 078c 18000000 		.word	.LC2
 4699 0790 04000000 		.word	.LC60
 4700 0794 00000000 		.word	.LC59
 4701              		.size	_ZN6RepRap23GetLegacyStatusResponseEhi, .-_ZN6RepRap23GetLegacyStatusResponseEhi
 4702              		.section	.text._ZNK6RepRap7GetNameEv,"ax",%progbits
 4703              		.align	1
 4704              		.p2align 2,,3
 4705              		.global	_ZNK6RepRap7GetNameEv
 4706              		.syntax unified
 4707              		.thumb
 4708              		.thumb_func
 4709              		.fpu softvfp
 4710              		.type	_ZNK6RepRap7GetNameEv, %function
 4711              	_ZNK6RepRap7GetNameEv:
 4712              		@ args = 0, pretend = 0, frame = 0
 4713              		@ frame_needed = 0, uses_anonymous_args = 0
 4714              		@ link register save eliminated.
 4715 0000 6130     		adds	r0, r0, #97
 4716 0002 7047     		bx	lr
 4717              		.size	_ZNK6RepRap7GetNameEv, .-_ZNK6RepRap7GetNameEv
 4718              		.section	.text._ZN6RepRap7SetNameEPKc,"ax",%progbits
 4719              		.align	1
 4720              		.p2align 2,,3
 4721              		.global	_ZN6RepRap7SetNameEPKc
 4722              		.syntax unified
 4723              		.thumb
 4724              		.thumb_func
 4725              		.fpu softvfp
 4726              		.type	_ZN6RepRap7SetNameEPKc, %function
 4727              	_ZN6RepRap7SetNameEPKc:
 4728              		@ args = 0, pretend = 0, frame = 8
 4729              		@ frame_needed = 0, uses_anonymous_args = 0
 4730 0000 2923     		movs	r3, #41
 4731 0002 00B5     		push	{lr}
ARM GAS  /tmp/ccDCB0nG.s 			page 84


 4732 0004 83B0     		sub	sp, sp, #12
 4733 0006 00F16102 		add	r2, r0, #97
 4734 000a 6846     		mov	r0, sp
 4735 000c 8DE80C00 		stm	sp, {r2, r3}
 4736 0010 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4737 0014 03B0     		add	sp, sp, #12
 4738              		@ sp needed
 4739 0016 5DF804FB 		ldr	pc, [sp], #4
 4740              		.size	_ZN6RepRap7SetNameEPKc, .-_ZN6RepRap7SetNameEPKc
 4741 001a 00BF     		.section	.text._ZN6RepRap30GetProhibitedExtruderMovementsEjj,"ax",%progbits
 4742              		.align	1
 4743              		.p2align 2,,3
 4744              		.global	_ZN6RepRap30GetProhibitedExtruderMovementsEjj
 4745              		.syntax unified
 4746              		.thumb
 4747              		.thumb_func
 4748              		.fpu softvfp
 4749              		.type	_ZN6RepRap30GetProhibitedExtruderMovementsEjj, %function
 4750              	_ZN6RepRap30GetProhibitedExtruderMovementsEjj:
 4751              		@ args = 0, pretend = 0, frame = 0
 4752              		@ frame_needed = 0, uses_anonymous_args = 0
 4753 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4754 0004 C368     		ldr	r3, [r0, #12]
 4755 0006 93F88150 		ldrb	r5, [r3, #129]	@ zero_extendqisi2
 4756 000a B5BB     		cbnz	r5, .L867
 4757 000c D0F82C80 		ldr	r8, [r0, #44]
 4758 0010 B8F1000F 		cmp	r8, #0
 4759 0014 36D0     		beq	.L862
 4760 0016 D8F85C30 		ldr	r3, [r8, #92]
 4761 001a 9A46     		mov	r10, r3
 4762 001c 03B3     		cbz	r3, .L860
 4763 001e 9146     		mov	r9, r2
 4764 0020 0E46     		mov	r6, r1
 4765 0022 4FF0010B 		mov	fp, #1
 4766 0026 AA46     		mov	r10, r5
 4767 0028 08F17807 		add	r7, r8, #120
 4768 002c 05E0     		b	.L866
 4769              	.L864:
 4770 002e 19EA040F 		tst	r9, r4
 4771 0032 18D1     		bne	.L878
 4772              	.L865:
 4773 0034 0135     		adds	r5, r5, #1
 4774 0036 AB42     		cmp	r3, r5
 4775 0038 12D9     		bls	.L860
 4776              	.L866:
 4777 003a 17F8014B 		ldrb	r4, [r7], #1	@ zero_extendqisi2
 4778 003e 0BFA04F4 		lsl	r4, fp, r4
 4779 0042 16EA0401 		ands	r1, r6, r4
 4780 0046 F2D0     		beq	.L864
 4781 0048 0121     		movs	r1, #1
 4782 004a 4046     		mov	r0, r8
 4783 004c FFF7FEFF 		bl	_ZN4Tool12ToolCanDriveEb
 4784 0050 08B9     		cbnz	r0, .L877
 4785 0052 4AEA040A 		orr	r10, r10, r4
 4786              	.L877:
 4787 0056 D8F85C30 		ldr	r3, [r8, #92]
 4788 005a 0135     		adds	r5, r5, #1
ARM GAS  /tmp/ccDCB0nG.s 			page 85


 4789 005c AB42     		cmp	r3, r5
 4790 005e ECD8     		bhi	.L866
 4791              	.L860:
 4792 0060 5046     		mov	r0, r10
 4793 0062 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4794              	.L878:
 4795 0066 4046     		mov	r0, r8
 4796 0068 FFF7FEFF 		bl	_ZN4Tool12ToolCanDriveEb
 4797 006c D8F85C30 		ldr	r3, [r8, #92]
 4798 0070 0028     		cmp	r0, #0
 4799 0072 DFD1     		bne	.L865
 4800 0074 4AEA040A 		orr	r10, r10, r4
 4801 0078 DCE7     		b	.L865
 4802              	.L867:
 4803 007a 4FF0000A 		mov	r10, #0
 4804 007e 5046     		mov	r0, r10
 4805 0080 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4806              	.L862:
 4807 0084 41EA020A 		orr	r10, r1, r2
 4808 0088 EAE7     		b	.L860
 4809              		.size	_ZN6RepRap30GetProhibitedExtruderMovementsEjj, .-_ZN6RepRap30GetProhibitedExtruderMovementsE
 4810 008a 00BF     		.section	.text._ZN6RepRap20FlagTemperatureFaultEa,"ax",%progbits
 4811              		.align	1
 4812              		.p2align 2,,3
 4813              		.global	_ZN6RepRap20FlagTemperatureFaultEa
 4814              		.syntax unified
 4815              		.thumb
 4816              		.thumb_func
 4817              		.fpu softvfp
 4818              		.type	_ZN6RepRap20FlagTemperatureFaultEa, %function
 4819              	_ZN6RepRap20FlagTemperatureFaultEa:
 4820              		@ args = 0, pretend = 0, frame = 8
 4821              		@ frame_needed = 0, uses_anonymous_args = 0
 4822 0000 30B5     		push	{r4, r5, lr}
 4823 0002 0446     		mov	r4, r0
 4824 0004 83B0     		sub	sp, sp, #12
 4825 0006 0D46     		mov	r5, r1
 4826 0008 6846     		mov	r0, sp
 4827 000a 04F12001 		add	r1, r4, #32
 4828 000e 4FF0FF32 		mov	r2, #-1
 4829 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 4830 0016 A06A     		ldr	r0, [r4, #40]
 4831 0018 10B1     		cbz	r0, .L880
 4832 001a 2946     		mov	r1, r5
 4833 001c FFF7FEFF 		bl	_ZN4Tool20FlagTemperatureFaultEa
 4834              	.L880:
 4835 0020 6846     		mov	r0, sp
 4836 0022 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 4837 0026 03B0     		add	sp, sp, #12
 4838              		@ sp needed
 4839 0028 30BD     		pop	{r4, r5, pc}
 4840              		.size	_ZN6RepRap20FlagTemperatureFaultEa, .-_ZN6RepRap20FlagTemperatureFaultEa
 4841 002a 00BF     		.section	.text._ZN6RepRap21ClearTemperatureFaultEa,"ax",%progbits
 4842              		.align	1
 4843              		.p2align 2,,3
 4844              		.global	_ZN6RepRap21ClearTemperatureFaultEa
 4845              		.syntax unified
ARM GAS  /tmp/ccDCB0nG.s 			page 86


 4846              		.thumb
 4847              		.thumb_func
 4848              		.fpu softvfp
 4849              		.type	_ZN6RepRap21ClearTemperatureFaultEa, %function
 4850              	_ZN6RepRap21ClearTemperatureFaultEa:
 4851              		@ args = 0, pretend = 0, frame = 8
 4852              		@ frame_needed = 0, uses_anonymous_args = 0
 4853 0000 30B5     		push	{r4, r5, lr}
 4854 0002 0446     		mov	r4, r0
 4855 0004 83B0     		sub	sp, sp, #12
 4856 0006 C068     		ldr	r0, [r0, #12]
 4857 0008 0D46     		mov	r5, r1
 4858 000a FFF7FEFF 		bl	_ZN4Heat10ResetFaultEa
 4859 000e 04F12001 		add	r1, r4, #32
 4860 0012 6846     		mov	r0, sp
 4861 0014 4FF0FF32 		mov	r2, #-1
 4862 0018 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 4863 001c A06A     		ldr	r0, [r4, #40]
 4864 001e 10B1     		cbz	r0, .L886
 4865 0020 2946     		mov	r1, r5
 4866 0022 FFF7FEFF 		bl	_ZN4Tool21ClearTemperatureFaultEa
 4867              	.L886:
 4868 0026 6846     		mov	r0, sp
 4869 0028 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 4870 002c 03B0     		add	sp, sp, #12
 4871              		@ sp needed
 4872 002e 30BD     		pop	{r4, r5, pc}
 4873              		.size	_ZN6RepRap21ClearTemperatureFaultEa, .-_ZN6RepRap21ClearTemperatureFaultEa
 4874              		.section	.text._ZNK6RepRap15GetCurrentXAxesEv,"ax",%progbits
 4875              		.align	1
 4876              		.p2align 2,,3
 4877              		.global	_ZNK6RepRap15GetCurrentXAxesEv
 4878              		.syntax unified
 4879              		.thumb
 4880              		.thumb_func
 4881              		.fpu softvfp
 4882              		.type	_ZNK6RepRap15GetCurrentXAxesEv, %function
 4883              	_ZNK6RepRap15GetCurrentXAxesEv:
 4884              		@ args = 0, pretend = 0, frame = 0
 4885              		@ frame_needed = 0, uses_anonymous_args = 0
 4886              		@ link register save eliminated.
 4887 0000 C36A     		ldr	r3, [r0, #44]
 4888 0002 0BB1     		cbz	r3, .L893
 4889 0004 986E     		ldr	r0, [r3, #104]
 4890 0006 7047     		bx	lr
 4891              	.L893:
 4892 0008 0120     		movs	r0, #1
 4893 000a 7047     		bx	lr
 4894              		.size	_ZNK6RepRap15GetCurrentXAxesEv, .-_ZNK6RepRap15GetCurrentXAxesEv
 4895              		.section	.text._ZNK6RepRap15GetCurrentYAxesEv,"ax",%progbits
 4896              		.align	1
 4897              		.p2align 2,,3
 4898              		.global	_ZNK6RepRap15GetCurrentYAxesEv
 4899              		.syntax unified
 4900              		.thumb
 4901              		.thumb_func
 4902              		.fpu softvfp
ARM GAS  /tmp/ccDCB0nG.s 			page 87


 4903              		.type	_ZNK6RepRap15GetCurrentYAxesEv, %function
 4904              	_ZNK6RepRap15GetCurrentYAxesEv:
 4905              		@ args = 0, pretend = 0, frame = 0
 4906              		@ frame_needed = 0, uses_anonymous_args = 0
 4907              		@ link register save eliminated.
 4908 0000 C36A     		ldr	r3, [r0, #44]
 4909 0002 0BB1     		cbz	r3, .L896
 4910 0004 D86E     		ldr	r0, [r3, #108]
 4911 0006 7047     		bx	lr
 4912              	.L896:
 4913 0008 0220     		movs	r0, #2
 4914 000a 7047     		bx	lr
 4915              		.size	_ZNK6RepRap15GetCurrentYAxesEv, .-_ZNK6RepRap15GetCurrentYAxesEv
 4916              		.section	.text._ZNK6RepRap17WriteToolSettingsEP9FileStore,"ax",%progbits
 4917              		.align	1
 4918              		.p2align 2,,3
 4919              		.global	_ZNK6RepRap17WriteToolSettingsEP9FileStore
 4920              		.syntax unified
 4921              		.thumb
 4922              		.thumb_func
 4923              		.fpu softvfp
 4924              		.type	_ZNK6RepRap17WriteToolSettingsEP9FileStore, %function
 4925              	_ZNK6RepRap17WriteToolSettingsEP9FileStore:
 4926              		@ args = 0, pretend = 0, frame = 8
 4927              		@ frame_needed = 0, uses_anonymous_args = 0
 4928 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4929 0002 0646     		mov	r6, r0
 4930 0004 83B0     		sub	sp, sp, #12
 4931 0006 0F46     		mov	r7, r1
 4932 0008 6846     		mov	r0, sp
 4933 000a 06F12001 		add	r1, r6, #32
 4934 000e 4FF0FF32 		mov	r2, #-1
 4935 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 4936 0016 B46A     		ldr	r4, [r6, #40]
 4937 0018 44B9     		cbnz	r4, .L900
 4938 001a 19E0     		b	.L917
 4939              	.L902:
 4940 001c 2046     		mov	r0, r4
 4941 001e 3946     		mov	r1, r7
 4942 0020 FFF7FEFF 		bl	_ZNK4Tool13WriteSettingsEP9FileStore
 4943 0024 2468     		ldr	r4, [r4]
 4944 0026 0546     		mov	r5, r0
 4945 0028 84B1     		cbz	r4, .L918
 4946 002a 4DB1     		cbz	r5, .L901
 4947              	.L900:
 4948 002c F06A     		ldr	r0, [r6, #44]
 4949              	.L904:
 4950 002e 8442     		cmp	r4, r0
 4951 0030 F4D1     		bne	.L902
 4952 0032 2468     		ldr	r4, [r4]
 4953 0034 002C     		cmp	r4, #0
 4954 0036 FAD1     		bne	.L904
 4955              	.L903:
 4956 0038 3946     		mov	r1, r7
 4957 003a FFF7FEFF 		bl	_ZNK4Tool13WriteSettingsEP9FileStore
 4958 003e 0546     		mov	r5, r0
 4959              	.L901:
ARM GAS  /tmp/ccDCB0nG.s 			page 88


 4960 0040 6846     		mov	r0, sp
 4961 0042 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 4962 0046 2846     		mov	r0, r5
 4963 0048 03B0     		add	sp, sp, #12
 4964              		@ sp needed
 4965 004a F0BD     		pop	{r4, r5, r6, r7, pc}
 4966              	.L918:
 4967 004c 0028     		cmp	r0, #0
 4968 004e F7D0     		beq	.L901
 4969              	.L917:
 4970 0050 F06A     		ldr	r0, [r6, #44]
 4971 0052 0028     		cmp	r0, #0
 4972 0054 F0D1     		bne	.L903
 4973 0056 0125     		movs	r5, #1
 4974 0058 6846     		mov	r0, sp
 4975 005a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 4976 005e 2846     		mov	r0, r5
 4977 0060 03B0     		add	sp, sp, #12
 4978              		@ sp needed
 4979 0062 F0BD     		pop	{r4, r5, r6, r7, pc}
 4980              		.size	_ZNK6RepRap17WriteToolSettingsEP9FileStore, .-_ZNK6RepRap17WriteToolSettingsEP9FileStore
 4981              		.section	.text._ZN6RepRap8DoDivideEmm,"ax",%progbits
 4982              		.align	1
 4983              		.p2align 2,,3
 4984              		.global	_ZN6RepRap8DoDivideEmm
 4985              		.syntax unified
 4986              		.thumb
 4987              		.thumb_func
 4988              		.fpu softvfp
 4989              		.type	_ZN6RepRap8DoDivideEmm, %function
 4990              	_ZN6RepRap8DoDivideEmm:
 4991              		@ args = 0, pretend = 0, frame = 0
 4992              		@ frame_needed = 0, uses_anonymous_args = 0
 4993              		@ link register save eliminated.
 4994 0000 B0FBF1F0 		udiv	r0, r0, r1
 4995 0004 7047     		bx	lr
 4996              		.size	_ZN6RepRap8DoDivideEmm, .-_ZN6RepRap8DoDivideEmm
 4997 0006 00BF     		.section	.text._ZNK6RepRap19ReportInternalErrorEPKcS1_i,"ax",%progbits
 4998              		.align	1
 4999              		.p2align 2,,3
 5000              		.global	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 5001              		.syntax unified
 5002              		.thumb
 5003              		.thumb_func
 5004              		.fpu softvfp
 5005              		.type	_ZNK6RepRap19ReportInternalErrorEPKcS1_i, %function
 5006              	_ZNK6RepRap19ReportInternalErrorEPKcS1_i:
 5007              		@ args = 0, pretend = 0, frame = 0
 5008              		@ frame_needed = 0, uses_anonymous_args = 0
 5009 0000 00B5     		push	{lr}
 5010 0002 83B0     		sub	sp, sp, #12
 5011 0004 0068     		ldr	r0, [r0]
 5012 0006 8DE80A00 		stm	sp, {r1, r3}
 5013 000a 1346     		mov	r3, r2
 5014 000c 40F2B511 		movw	r1, #437
 5015 0010 024A     		ldr	r2, .L922
 5016 0012 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  /tmp/ccDCB0nG.s 			page 89


 5017 0016 03B0     		add	sp, sp, #12
 5018              		@ sp needed
 5019 0018 5DF804FB 		ldr	pc, [sp], #4
 5020              	.L923:
 5021              		.align	2
 5022              	.L922:
 5023 001c 00000000 		.word	.LC168
 5024              		.size	_ZNK6RepRap19ReportInternalErrorEPKcS1_i, .-_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 5025              		.section	.text._ZN6StringILj20EE10CopyAndPadEPKc,"axG",%progbits,_ZN6StringILj20EE10CopyAndPadEPKc
 5026              		.align	1
 5027              		.p2align 2,,3
 5028              		.weak	_ZN6StringILj20EE10CopyAndPadEPKc
 5029              		.syntax unified
 5030              		.thumb
 5031              		.thumb_func
 5032              		.fpu softvfp
 5033              		.type	_ZN6StringILj20EE10CopyAndPadEPKc, %function
 5034              	_ZN6StringILj20EE10CopyAndPadEPKc:
 5035              		@ args = 0, pretend = 0, frame = 8
 5036              		@ frame_needed = 0, uses_anonymous_args = 0
 5037 0000 0022     		movs	r2, #0
 5038 0002 10B5     		push	{r4, lr}
 5039 0004 0346     		mov	r3, r0
 5040 0006 1524     		movs	r4, #21
 5041 0008 82B0     		sub	sp, sp, #8
 5042 000a 0260     		str	r2, [r0]	@ unaligned
 5043 000c 4260     		str	r2, [r0, #4]	@ unaligned
 5044 000e 8260     		str	r2, [r0, #8]	@ unaligned
 5045 0010 C260     		str	r2, [r0, #12]	@ unaligned
 5046 0012 0261     		str	r2, [r0, #16]	@ unaligned
 5047 0014 0275     		strb	r2, [r0, #20]
 5048 0016 6846     		mov	r0, sp
 5049 0018 8DE81800 		stm	sp, {r3, r4}
 5050 001c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5051 0020 02B0     		add	sp, sp, #8
 5052              		@ sp needed
 5053 0022 10BD     		pop	{r4, pc}
 5054              		.size	_ZN6StringILj20EE10CopyAndPadEPKc, .-_ZN6StringILj20EE10CopyAndPadEPKc
 5055              		.section	.text._ZNK6RepRap13CheckPasswordEPKc,"ax",%progbits
 5056              		.align	1
 5057              		.p2align 2,,3
 5058              		.global	_ZNK6RepRap13CheckPasswordEPKc
 5059              		.syntax unified
 5060              		.thumb
 5061              		.thumb_func
 5062              		.fpu softvfp
 5063              		.type	_ZNK6RepRap13CheckPasswordEPKc, %function
 5064              	_ZNK6RepRap13CheckPasswordEPKc:
 5065              		@ args = 0, pretend = 0, frame = 48
 5066              		@ frame_needed = 0, uses_anonymous_args = 0
 5067 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5068 0002 0024     		movs	r4, #0
 5069 0004 0546     		mov	r5, r0
 5070 0006 8DB0     		sub	sp, sp, #52
 5071 0008 0CAE     		add	r6, sp, #48
 5072 000a 06F8304D 		strb	r4, [r6, #-48]!
 5073 000e 3046     		mov	r0, r6
ARM GAS  /tmp/ccDCB0nG.s 			page 90


 5074 0010 06AF     		add	r7, sp, #24
 5075 0012 FFF7FEFF 		bl	_ZN6StringILj20EE10CopyAndPadEPKc
 5076 0016 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 5077 0018 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 5078 001a 96E80300 		ldm	r6, {r0, r1}
 5079 001e 47F8040B 		str	r0, [r7], #4
 5080 0022 3970     		strb	r1, [r7]
 5081 0024 05F14B00 		add	r0, r5, #75
 5082 0028 0DF11702 		add	r2, sp, #23
 5083 002c 0DF12B05 		add	r5, sp, #43
 5084              	.L927:
 5085 0030 12F8011F 		ldrb	r1, [r2, #1]!	@ zero_extendqisi2
 5086 0034 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 5087 0038 AA42     		cmp	r2, r5
 5088 003a 83EA0103 		eor	r3, r3, r1
 5089 003e 44EA0304 		orr	r4, r4, r3
 5090 0042 F5D1     		bne	.L927
 5091 0044 B4FA84F0 		clz	r0, r4
 5092 0048 4009     		lsrs	r0, r0, #5
 5093 004a 0DB0     		add	sp, sp, #52
 5094              		@ sp needed
 5095 004c F0BD     		pop	{r4, r5, r6, r7, pc}
 5096              		.size	_ZNK6RepRap13CheckPasswordEPKc, .-_ZNK6RepRap13CheckPasswordEPKc
 5097 004e 00BF     		.section	.text._ZNK6RepRap13NoPasswordSetEv,"ax",%progbits
 5098              		.align	1
 5099              		.p2align 2,,3
 5100              		.global	_ZNK6RepRap13NoPasswordSetEv
 5101              		.syntax unified
 5102              		.thumb
 5103              		.thumb_func
 5104              		.fpu softvfp
 5105              		.type	_ZNK6RepRap13NoPasswordSetEv, %function
 5106              	_ZNK6RepRap13NoPasswordSetEv:
 5107              		@ args = 0, pretend = 0, frame = 0
 5108              		@ frame_needed = 0, uses_anonymous_args = 0
 5109              		@ link register save eliminated.
 5110 0000 90F84C30 		ldrb	r3, [r0, #76]	@ zero_extendqisi2
 5111 0004 0BB9     		cbnz	r3, .L932
 5112 0006 0120     		movs	r0, #1
 5113 0008 7047     		bx	lr
 5114              	.L932:
 5115 000a 0149     		ldr	r1, .L933
 5116 000c FFF7FEBF 		b	_ZNK6RepRap13CheckPasswordEPKc
 5117              	.L934:
 5118              		.align	2
 5119              	.L933:
 5120 0010 00000000 		.word	.LC169
 5121              		.size	_ZNK6RepRap13NoPasswordSetEv, .-_ZNK6RepRap13NoPasswordSetEv
 5122              		.section	.text._ZN6RepRap11SetPasswordEPKc,"ax",%progbits
 5123              		.align	1
 5124              		.p2align 2,,3
 5125              		.global	_ZN6RepRap11SetPasswordEPKc
 5126              		.syntax unified
 5127              		.thumb
 5128              		.thumb_func
 5129              		.fpu softvfp
 5130              		.type	_ZN6RepRap11SetPasswordEPKc, %function
ARM GAS  /tmp/ccDCB0nG.s 			page 91


 5131              	_ZN6RepRap11SetPasswordEPKc:
 5132              		@ args = 0, pretend = 0, frame = 0
 5133              		@ frame_needed = 0, uses_anonymous_args = 0
 5134 0000 08B5     		push	{r3, lr}
 5135 0002 4C30     		adds	r0, r0, #76
 5136 0004 FFF7FEFF 		bl	_ZN6StringILj20EE10CopyAndPadEPKc
 5137 0008 08BD     		pop	{r3, pc}
 5138              		.size	_ZN6RepRap11SetPasswordEPKc, .-_ZN6RepRap11SetPasswordEPKc
 5139 000a 00BF     		.section	.text._ZN6RepRapC2Ev,"ax",%progbits
 5140              		.align	1
 5141              		.p2align 2,,3
 5142              		.global	_ZN6RepRapC2Ev
 5143              		.syntax unified
 5144              		.thumb
 5145              		.thumb_func
 5146              		.fpu softvfp
 5147              		.type	_ZN6RepRapC2Ev, %function
 5148              	_ZN6RepRapC2Ev:
 5149              		@ args = 0, pretend = 0, frame = 0
 5150              		@ frame_needed = 0, uses_anonymous_args = 0
 5151 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5152 0002 0025     		movs	r5, #0
 5153 0004 1023     		movs	r3, #16
 5154 0006 0126     		movs	r6, #1
 5155 0008 80F83A30 		strb	r3, [r0, #58]
 5156 000c 0562     		str	r5, [r0, #32]
 5157 000e 4562     		str	r5, [r0, #36]
 5158 0010 8562     		str	r5, [r0, #40]
 5159 0012 C562     		str	r5, [r0, #44]
 5160 0014 0563     		str	r5, [r0, #48]
 5161 0016 8586     		strh	r5, [r0, #52]	@ movhi
 5162 0018 C586     		strh	r5, [r0, #54]	@ movhi
 5163 001a 0587     		strh	r5, [r0, #56]	@ movhi
 5164 001c 4564     		str	r5, [r0, #68]
 5165 001e 80F84850 		strb	r5, [r0, #72]
 5166 0022 80F84950 		strb	r5, [r0, #73]
 5167 0026 80F84A50 		strb	r5, [r0, #74]
 5168 002a 80F84C50 		strb	r5, [r0, #76]
 5169 002e 80F86150 		strb	r5, [r0, #97]
 5170 0032 C0F88C50 		str	r5, [r0, #140]
 5171 0036 C0F89050 		str	r5, [r0, #144]
 5172 003a 80F89551 		strb	r5, [r0, #405]
 5173 003e 80F89651 		strb	r5, [r0, #406]
 5174 0042 80F89752 		strb	r5, [r0, #663]
 5175 0046 C0F89C53 		str	r5, [r0, #924]
 5176 004a A0F8AC53 		strh	r5, [r0, #940]	@ movhi
 5177 004e 80F84B60 		strb	r6, [r0, #75]
 5178 0052 0446     		mov	r4, r0
 5179 0054 FFF7FEFF 		bl	_ZN12OutputBuffer4InitEv
 5180 0058 4FF4CD60 		mov	r0, #1640
 5181 005c FFF7FEFF 		bl	_Znwj
 5182 0060 0746     		mov	r7, r0
 5183 0062 FFF7FEFF 		bl	_ZN8PlatformC1Ev
 5184 0066 2760     		str	r7, [r4]
 5185 0068 3046     		mov	r0, r6
 5186 006a FFF7FEFF 		bl	_Znwj
 5187 006e 6060     		str	r0, [r4, #4]
ARM GAS  /tmp/ccDCB0nG.s 			page 92


 5188 0070 40F28440 		movw	r0, #1156
 5189 0074 FFF7FEFF 		bl	_Znwj
 5190 0078 0646     		mov	r6, r0
 5191 007a 2168     		ldr	r1, [r4]
 5192 007c FFF7FEFF 		bl	_ZN6GCodesC1ER8Platform
 5193 0080 2661     		str	r6, [r4, #16]
 5194 0082 40F23450 		movw	r0, #1332
 5195 0086 FFF7FEFF 		bl	_Znwj
 5196 008a 0646     		mov	r6, r0
 5197 008c FFF7FEFF 		bl	_ZN4MoveC1Ev
 5198 0090 A660     		str	r6, [r4, #8]
 5199 0092 8820     		movs	r0, #136
 5200 0094 FFF7FEFF 		bl	_Znwj
 5201 0098 0646     		mov	r6, r0
 5202 009a 2168     		ldr	r1, [r4]
 5203 009c FFF7FEFF 		bl	_ZN4HeatC1ER8Platform
 5204 00a0 E660     		str	r6, [r4, #12]
 5205 00a2 4FF4B870 		mov	r0, #368
 5206 00a6 FFF7FEFF 		bl	_Znwj
 5207 00aa 0646     		mov	r6, r0
 5208 00ac 2269     		ldr	r2, [r4, #16]
 5209 00ae 2168     		ldr	r1, [r4]
 5210 00b0 FFF7FEFF 		bl	_ZN12PrintMonitorC1ER8PlatformR6GCodes
 5211 00b4 04F14C00 		add	r0, r4, #76
 5212 00b8 E661     		str	r6, [r4, #28]
 5213 00ba 0349     		ldr	r1, .L939
 5214 00bc FFF7FEFF 		bl	_ZN6StringILj20EE10CopyAndPadEPKc
 5215 00c0 84F89450 		strb	r5, [r4, #148]
 5216 00c4 2046     		mov	r0, r4
 5217 00c6 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5218              	.L940:
 5219              		.align	2
 5220              	.L939:
 5221 00c8 00000000 		.word	.LC169
 5222              		.size	_ZN6RepRapC2Ev, .-_ZN6RepRapC2Ev
 5223              		.global	_ZN6RepRapC1Ev
 5224              		.thumb_set _ZN6RepRapC1Ev,_ZN6RepRapC2Ev
 5225              		.section	.text._ZN6StringILj220EE4catfEPKcz,"axG",%progbits,_ZN6StringILj220EE4catfEPKcz,comdat
 5226              		.align	1
 5227              		.p2align 2,,3
 5228              		.weak	_ZN6StringILj220EE4catfEPKcz
 5229              		.syntax unified
 5230              		.thumb
 5231              		.thumb_func
 5232              		.fpu softvfp
 5233              		.type	_ZN6StringILj220EE4catfEPKcz, %function
 5234              	_ZN6StringILj220EE4catfEPKcz:
 5235              		@ args = 4, pretend = 12, frame = 16
 5236              		@ frame_needed = 0, uses_anonymous_args = 1
 5237 0000 0EB4     		push	{r1, r2, r3}
 5238 0002 10B5     		push	{r4, lr}
 5239 0004 DD24     		movs	r4, #221
 5240 0006 85B0     		sub	sp, sp, #20
 5241 0008 07AB     		add	r3, sp, #28
 5242 000a 53F8041B 		ldr	r1, [r3], #4
 5243 000e 0290     		str	r0, [sp, #8]
 5244 0010 1A46     		mov	r2, r3
ARM GAS  /tmp/ccDCB0nG.s 			page 93


 5245 0012 02A8     		add	r0, sp, #8
 5246 0014 0193     		str	r3, [sp, #4]
 5247 0016 0394     		str	r4, [sp, #12]
 5248 0018 FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 5249 001c 05B0     		add	sp, sp, #20
 5250              		@ sp needed
 5251 001e BDE81040 		pop	{r4, lr}
 5252 0022 03B0     		add	sp, sp, #12
 5253 0024 7047     		bx	lr
 5254              		.size	_ZN6StringILj220EE4catfEPKcz, .-_ZN6StringILj220EE4catfEPKcz
 5255 0026 00BF     		.section	.text._ZNK6RepRap19WriteToolParametersEP9FileStore,"ax",%progbits
 5256              		.align	1
 5257              		.p2align 2,,3
 5258              		.global	_ZNK6RepRap19WriteToolParametersEP9FileStore
 5259              		.syntax unified
 5260              		.thumb
 5261              		.thumb_func
 5262              		.fpu softvfp
 5263              		.type	_ZNK6RepRap19WriteToolParametersEP9FileStore, %function
 5264              	_ZNK6RepRap19WriteToolParametersEP9FileStore:
 5265              		@ args = 0, pretend = 0, frame = 248
 5266              		@ frame_needed = 0, uses_anonymous_args = 0
 5267 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5268 0004 8046     		mov	r8, r0
 5269 0006 C1B0     		sub	sp, sp, #260
 5270 0008 0391     		str	r1, [sp, #12]
 5271 000a 04A8     		add	r0, sp, #16
 5272 000c 08F12001 		add	r1, r8, #32
 5273 0010 4FF0FF32 		mov	r2, #-1
 5274 0014 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 5275 0018 D8F82860 		ldr	r6, [r8, #40]
 5276 001c 002E     		cmp	r6, #0
 5277 001e 4ED0     		beq	.L946
 5278 0020 0024     		movs	r4, #0
 5279 0022 2046     		mov	r0, r4
 5280              	.L950:
 5281 0024 D6F870B0 		ldr	fp, [r6, #112]
 5282 0028 BBF1000F 		cmp	fp, #0
 5283 002c 44D0     		beq	.L947
 5284 002e 0022     		movs	r2, #0
 5285 0030 8DF82020 		strb	r2, [sp, #32]
 5286 0034 0028     		cmp	r0, #0
 5287 0036 4AD0     		beq	.L967
 5288 0038 08AF     		add	r7, sp, #32
 5289 003a 0DF11809 		add	r9, sp, #24
 5290              	.L951:
 5291 003e BA46     		mov	r10, r7
 5292 0040 5F46     		mov	r7, fp
 5293              	.L948:
 5294 0042 726E     		ldr	r2, [r6, #100]
 5295 0044 2849     		ldr	r1, .L971
 5296 0046 5046     		mov	r0, r10
 5297 0048 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 5298 004c 0024     		movs	r4, #0
 5299 004e 06F10C05 		add	r5, r6, #12
 5300 0052 04E0     		b	.L953
 5301              	.L952:
ARM GAS  /tmp/ccDCB0nG.s 			page 94


 5302 0054 0134     		adds	r4, r4, #1
 5303 0056 062C     		cmp	r4, #6
 5304 0058 05F10405 		add	r5, r5, #4
 5305 005c 17D0     		beq	.L969
 5306              	.L953:
 5307 005e 27FA04F3 		lsr	r3, r7, r4
 5308 0062 DB07     		lsls	r3, r3, #31
 5309 0064 F6D5     		bpl	.L952
 5310 0066 D8F81030 		ldr	r3, [r8, #16]
 5311 006a 2868     		ldr	r0, [r5]	@ float
 5312 006c 2344     		add	r3, r3, r4
 5313 006e 93F872B2 		ldrb	fp, [r3, #626]	@ zero_extendqisi2
 5314 0072 FFF7FEFF 		bl	__aeabi_f2d
 5315 0076 0134     		adds	r4, r4, #1
 5316 0078 CDE90001 		strd	r0, [sp]
 5317 007c 5A46     		mov	r2, fp
 5318 007e 1B49     		ldr	r1, .L971+4
 5319 0080 5046     		mov	r0, r10
 5320 0082 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 5321 0086 062C     		cmp	r4, #6
 5322 0088 05F10405 		add	r5, r5, #4
 5323 008c E7D1     		bne	.L953
 5324              	.L969:
 5325 008e DD23     		movs	r3, #221
 5326 0090 0A21     		movs	r1, #10
 5327 0092 4846     		mov	r0, r9
 5328 0094 0793     		str	r3, [sp, #28]
 5329 0096 CDF818A0 		str	r10, [sp, #24]
 5330 009a FFF7FEFF 		bl	_ZNK9StringRef3catEc
 5331 009e 5146     		mov	r1, r10
 5332 00a0 0398     		ldr	r0, [sp, #12]
 5333 00a2 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 5334 00a6 3668     		ldr	r6, [r6]
 5335 00a8 E0B1     		cbz	r0, .L970
 5336 00aa 46B1     		cbz	r6, .L946
 5337 00ac 376F     		ldr	r7, [r6, #112]
 5338 00ae 1FB1     		cbz	r7, .L947
 5339 00b0 0023     		movs	r3, #0
 5340 00b2 8DF82030 		strb	r3, [sp, #32]
 5341 00b6 C4E7     		b	.L948
 5342              	.L947:
 5343 00b8 3668     		ldr	r6, [r6]
 5344 00ba 002E     		cmp	r6, #0
 5345 00bc B2D1     		bne	.L950
 5346              	.L946:
 5347 00be 0124     		movs	r4, #1
 5348              	.L945:
 5349 00c0 04A8     		add	r0, sp, #16
 5350 00c2 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5351 00c6 2046     		mov	r0, r4
 5352 00c8 41B0     		add	sp, sp, #260
 5353              		@ sp needed
 5354 00ca BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5355              	.L967:
 5356 00ce DD22     		movs	r2, #221
 5357 00d0 0DF11809 		add	r9, sp, #24
 5358 00d4 08AF     		add	r7, sp, #32
ARM GAS  /tmp/ccDCB0nG.s 			page 95


 5359 00d6 4846     		mov	r0, r9
 5360 00d8 0549     		ldr	r1, .L971+8
 5361 00da 0792     		str	r2, [sp, #28]
 5362 00dc 0697     		str	r7, [sp, #24]
 5363 00de FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5364 00e2 ACE7     		b	.L951
 5365              	.L970:
 5366 00e4 0446     		mov	r4, r0
 5367 00e6 EBE7     		b	.L945
 5368              	.L972:
 5369              		.align	2
 5370              	.L971:
 5371 00e8 18000000 		.word	.LC171
 5372 00ec 20000000 		.word	.LC172
 5373 00f0 00000000 		.word	.LC170
 5374              		.size	_ZNK6RepRap19WriteToolParametersEP9FileStore, .-_ZNK6RepRap19WriteToolParametersEP9FileStore
 5375              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 5376              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 5377              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 5378              	_ZL28cpu_irq_prev_interrupt_state:
 5379 0000 00       		.space	1
 5380              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 5381              		.align	2
 5382              		.type	_ZL32cpu_irq_critical_section_counter, %object
 5383              		.size	_ZL32cpu_irq_critical_section_counter, 4
 5384              	_ZL32cpu_irq_critical_section_counter:
 5385 0000 00000000 		.space	4
 5386              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 5387              		.align	2
 5388              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 5389              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 5390              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 5391 0000 00000000 		.space	4
 5392              		.section	.rodata._ZN6RepRap10PrintDebugEv.str1.4,"aMS",%progbits,1
 5393              		.align	2
 5394              	.LC20:
 5395 0000 44656275 		.ascii	"Debugging enabled for modules:\000"
 5395      6767696E 
 5395      6720656E 
 5395      61626C65 
 5395      6420666F 
 5396 001f 00       		.space	1
 5397              	.LC21:
 5398 0020 20257328 		.ascii	" %s(%u)\000"
 5398      25752900 
 5399              	.LC22:
 5400 0028 0A446562 		.ascii	"\012Debugging disabled for modules:\000"
 5400      75676769 
 5400      6E672064 
 5400      69736162 
 5400      6C656420 
 5401 0049 000000   		.space	3
 5402              	.LC23:
 5403 004c 0A00     		.ascii	"\012\000"
 5404              		.section	.rodata._ZN6RepRap11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 5405              		.align	2
 5406              	.LC1:
ARM GAS  /tmp/ccDCB0nG.s 			page 96


 5407 0000 3D3D3D20 		.ascii	"=== Diagnostics ===\012\000"
 5407      44696167 
 5407      6E6F7374 
 5407      69637320 
 5407      3D3D3D0A 
 5408 0015 000000   		.space	3
 5409              	.LC2:
 5410 0018 52657052 		.ascii	"RepRapFirmware for RADDS\000"
 5410      61704669 
 5410      726D7761 
 5410      72652066 
 5410      6F722052 
 5411 0031 000000   		.space	3
 5412              	.LC3:
 5413 0034 25732076 		.ascii	"%s version %s running on %s\012\000"
 5413      65727369 
 5413      6F6E2025 
 5413      73207275 
 5413      6E6E696E 
 5414 0051 000000   		.space	3
 5415              	.LC4:
 5416 0054 312E3231 		.ascii	"1.21.2beta1\000"
 5416      2E326265 
 5416      74613100 
 5417              		.section	.rodata._ZN6RepRap11StandbyToolEib.str1.4,"aMS",%progbits,1
 5418              		.align	2
 5419              	.LC25:
 5420 0000 41747465 		.ascii	"Attempt to standby a non-existent tool: %d.\012\000"
 5420      6D707420 
 5420      746F2073 
 5420      74616E64 
 5420      62792061 
 5421              		.section	.rodata._ZN6RepRap16GetFilesResponseEPKcjb.str1.4,"aMS",%progbits,1
 5422              		.align	2
 5423              	.LC40:
 5424 0000 7B226469 		.ascii	"{\"dir\":\000"
 5424      72223A00 
 5425              	.LC41:
 5426 0008 2C226669 		.ascii	",\"first\":%u,\"files\":[\000"
 5426      72737422 
 5426      3A25752C 
 5426      2266696C 
 5426      6573223A 
 5427 001e 0000     		.space	2
 5428              	.LC42:
 5429 0020 5D2C226E 		.ascii	"],\"next\":%u,\"err\":%u}\000"
 5429      65787422 
 5429      3A25752C 
 5429      22657272 
 5429      223A2575 
 5430 0036 0000     		.space	2
 5431              	.LC43:
 5432 0038 5D2C2265 		.ascii	"],\"err\":%u}\000"
 5432      7272223A 
 5432      25757D00 
 5433              		.section	.rodata._ZN6RepRap17GetConfigResponseEv.str1.4,"aMS",%progbits,1
 5434              		.align	2
ARM GAS  /tmp/ccDCB0nG.s 			page 97


 5435              	.LC26:
 5436 0000 7B226178 		.ascii	"{\"axisMins\":\000"
 5436      69734D69 
 5436      6E73223A 
 5436      00
 5437 000d 000000   		.space	3
 5438              	.LC27:
 5439 0010 2563252E 		.ascii	"%c%.2f\000"
 5439      326600
 5440 0017 00       		.space	1
 5441              	.LC28:
 5442 0018 5D2C2261 		.ascii	"],\"accelerations\":\000"
 5442      6363656C 
 5442      65726174 
 5442      696F6E73 
 5442      223A00
 5443 002b 00       		.space	1
 5444              	.LC29:
 5445 002c 5D2C2263 		.ascii	"],\"currents\":\000"
 5445      75727265 
 5445      6E747322 
 5445      3A00
 5446 003a 0000     		.space	2
 5447              	.LC30:
 5448 003c 5D2C2266 		.ascii	"],\"firmwareElectronics\":\"%s\000"
 5448      69726D77 
 5448      61726545 
 5448      6C656374 
 5448      726F6E69 
 5449              	.LC31:
 5450 0058 222C2266 		.ascii	"\",\"firmwareName\":\"%s\"\000"
 5450      69726D77 
 5450      6172654E 
 5450      616D6522 
 5450      3A222573 
 5451 006e 0000     		.space	2
 5452              	.LC32:
 5453 0070 2C226669 		.ascii	",\"firmwareVersion\":\"%s\"\000"
 5453      726D7761 
 5453      72655665 
 5453      7273696F 
 5453      6E223A22 
 5454              	.LC33:
 5455 0088 2C226669 		.ascii	",\"firmwareDate\":\"%s\"\000"
 5455      726D7761 
 5455      72654461 
 5455      7465223A 
 5455      22257322 
 5456 009d 000000   		.space	3
 5457              	.LC34:
 5458 00a0 2C226964 		.ascii	",\"idleCurrentFactor\":%.1f\000"
 5458      6C654375 
 5458      7272656E 
 5458      74466163 
 5458      746F7222 
 5459 00ba 0000     		.space	2
 5460              	.LC35:
ARM GAS  /tmp/ccDCB0nG.s 			page 98


 5461 00bc 2C226964 		.ascii	",\"idleTimeout\":%.1f\000"
 5461      6C655469 
 5461      6D656F75 
 5461      74223A25 
 5461      2E316600 
 5462              	.LC36:
 5463 00d0 2C226D69 		.ascii	",\"minFeedrates\":\000"
 5463      6E466565 
 5463      64726174 
 5463      6573223A 
 5463      00
 5464 00e1 000000   		.space	3
 5465              	.LC37:
 5466 00e4 5D2C226D 		.ascii	"],\"maxFeedrates\":\000"
 5466      61784665 
 5466      65647261 
 5466      74657322 
 5466      3A00
 5467 00f6 0000     		.space	2
 5468              	.LC38:
 5469 00f8 5D7D00   		.ascii	"]}\000"
 5470 00fb 00       		.space	1
 5471              	.LC39:
 5472 00fc 5D2C2261 		.ascii	"],\"axisMaxes\":\000"
 5472      7869734D 
 5472      61786573 
 5472      223A00
 5473              		.section	.rodata._ZN6RepRap17GetStatusResponseEh14ResponseSource.str1.4,"aMS",%progbits,1
 5474              		.align	2
 5475              	.LC59:
 5476 0000 5D00     		.ascii	"]\000"
 5477 0002 0000     		.space	2
 5478              	.LC60:
 5479 0004 5B5D00   		.ascii	"[]\000"
 5480 0007 00       		.space	1
 5481              	.LC61:
 5482 0008 252E3266 		.ascii	"%.2f\000"
 5482      00
 5483 000d 000000   		.space	3
 5484              	.LC62:
 5485 0010 2C252E32 		.ascii	",%.2f\000"
 5485      6600
 5486 0016 0000     		.space	2
 5487              	.LC63:
 5488 0018 5D7D2C00 		.ascii	"]},\000"
 5489              	.LC64:
 5490 001c 7B227374 		.ascii	"{\"status\":\"%c\",\"coords\":{\000"
 5490      61747573 
 5490      223A2225 
 5490      63222C22 
 5490      636F6F72 
 5491 0036 0000     		.space	2
 5492              	.LC65:
 5493 0038 22617865 		.ascii	"\"axesHomed\":\000"
 5493      73486F6D 
 5493      6564223A 
 5493      00
ARM GAS  /tmp/ccDCB0nG.s 			page 99


 5494 0045 000000   		.space	3
 5495              	.LC66:
 5496 0048 25632564 		.ascii	"%c%d\000"
 5496      00
 5497 004d 000000   		.space	3
 5498              	.LC67:
 5499 0050 2563252E 		.ascii	"%c%.3f\000"
 5499      336600
 5500 0057 00       		.space	1
 5501              	.LC68:
 5502 0058 5D2C226D 		.ascii	"],\"machine\":\000"
 5502      61636869 
 5502      6E65223A 
 5502      00
 5503 0065 000000   		.space	3
 5504              	.LC69:
 5505 0068 5D2C2265 		.ascii	"],\"extr\":\000"
 5505      78747222 
 5505      3A00
 5506 0072 0000     		.space	2
 5507              	.LC70:
 5508 0074 5D7D2C22 		.ascii	"]},\"currentTool\":%d\000"
 5508      63757272 
 5508      656E7454 
 5508      6F6F6C22 
 5508      3A256400 
 5509              	.LC71:
 5510 0088 2C00     		.ascii	",\000"
 5511 008a 0000     		.space	2
 5512              	.LC72:
 5513 008c 226D6573 		.ascii	"\"message\":\000"
 5513      73616765 
 5513      223A00
 5514 0097 00       		.space	1
 5515              	.LC73:
 5516 0098 226D7367 		.ascii	"\"msgBox\":{\"msg\":\000"
 5516      426F7822 
 5516      3A7B226D 
 5516      7367223A 
 5516      00
 5517 00a9 000000   		.space	3
 5518              	.LC74:
 5519 00ac 2C227469 		.ascii	",\"title\":\000"
 5519      746C6522 
 5519      3A00
 5520 00b6 0000     		.space	2
 5521              	.LC75:
 5522 00b8 2C226D6F 		.ascii	",\"mode\":%d,\"seq\":%lu,\"timeout\":%.1f,\"control"
 5522      6465223A 
 5522      25642C22 
 5522      73657122 
 5522      3A256C75 
 5523 00e4 73223A25 		.ascii	"s\":%lu}\000"
 5523      6C757D00 
 5524              	.LC76:
 5525 00ec 2C227061 		.ascii	",\"params\":{\"atxPower\":%d\000"
 5525      72616D73 
ARM GAS  /tmp/ccDCB0nG.s 			page 100


 5525      223A7B22 
 5525      61747850 
 5525      6F776572 
 5526 0105 000000   		.space	3
 5527              	.LC77:
 5528 0108 2C226661 		.ascii	",\"fanPercent\":\000"
 5528      6E506572 
 5528      63656E74 
 5528      223A00
 5529 0117 00       		.space	1
 5530              	.LC78:
 5531 0118 5D2C2273 		.ascii	"],\"speedFactor\":%.1f,\"extrFactors\":\000"
 5531      70656564 
 5531      46616374 
 5531      6F72223A 
 5531      252E3166 
 5532              	.LC79:
 5533 013c 2C226261 		.ascii	",\"babystep\":%.3f}\000"
 5533      62797374 
 5533      6570223A 
 5533      252E3366 
 5533      7D00
 5534 014e 0000     		.space	2
 5535              	.LC80:
 5536 0150 2C227365 		.ascii	",\"seq\":%lu\000"
 5536      71223A25 
 5536      6C7500
 5537 015b 00       		.space	1
 5538              	.LC81:
 5539 015c 2C227365 		.ascii	",\"sensors\":{\000"
 5539      6E736F72 
 5539      73223A7B 
 5539      00
 5540 0169 000000   		.space	3
 5541              	.LC82:
 5542 016c 2270726F 		.ascii	"\"probeValue\":%d,\"probeSecondary\":[%d]\000"
 5542      62655661 
 5542      6C756522 
 5542      3A25642C 
 5542      2270726F 
 5543 0192 0000     		.space	2
 5544              	.LC83:
 5545 0194 2270726F 		.ascii	"\"probeValue\":%d,\"probeSecondary\":[%d,%d]\000"
 5545      62655661 
 5545      6C756522 
 5545      3A25642C 
 5545      2270726F 
 5546 01bd 000000   		.space	3
 5547              	.LC84:
 5548 01c0 2270726F 		.ascii	"\"probeValue\":%d\000"
 5548      62655661 
 5548      6C756522 
 5548      3A256400 
 5549              	.LC85:
 5550 01d0 2C226661 		.ascii	",\"fanRPM\":%d}\000"
 5550      6E52504D 
 5550      223A2564 
ARM GAS  /tmp/ccDCB0nG.s 			page 101


 5550      7D00
 5551 01de 0000     		.space	2
 5552              	.LC86:
 5553 01e0 2C227465 		.ascii	",\"temps\":{\000"
 5553      6D707322 
 5553      3A7B00
 5554 01eb 00       		.space	1
 5555              	.LC87:
 5556 01ec 22626564 		.ascii	"\"bed\":{\"current\":%.1f,\"active\":%.1f,\"state\""
 5556      223A7B22 
 5556      63757272 
 5556      656E7422 
 5556      3A252E31 
 5557 0217 3A25642C 		.ascii	":%d,\"heater\":%d},\000"
 5557      22686561 
 5557      74657222 
 5557      3A25647D 
 5557      2C00
 5558 0229 000000   		.space	3
 5559              	.LC88:
 5560 022c 22636861 		.ascii	"\"chamber\":{\"current\":%.1f,\"active\":%.1f,\"sta"
 5560      6D626572 
 5560      223A7B22 
 5560      63757272 
 5560      656E7422 
 5561 0258 7465223A 		.ascii	"te\":%d,\"heater\":%d},\000"
 5561      25642C22 
 5561      68656174 
 5561      6572223A 
 5561      25647D2C 
 5562 026d 000000   		.space	3
 5563              	.LC89:
 5564 0270 22636162 		.ascii	"\"cabinet\":{\"current\":%.1f,\"active\":%.1f,\"sta"
 5564      696E6574 
 5564      223A7B22 
 5564      63757272 
 5564      656E7422 
 5565 029c 7465223A 		.ascii	"te\":%d,\"heater\":%d},\000"
 5565      25642C22 
 5565      68656174 
 5565      6572223A 
 5565      25647D2C 
 5566 02b1 000000   		.space	3
 5567              	.LC90:
 5568 02b4 22637572 		.ascii	"\"current\":\000"
 5568      72656E74 
 5568      223A00
 5569 02bf 00       		.space	1
 5570              	.LC91:
 5571 02c0 2C227374 		.ascii	",\"state\":\000"
 5571      61746522 
 5571      3A00
 5572 02ca 0000     		.space	2
 5573              	.LC92:
 5574 02cc 2C226865 		.ascii	",\"heads\":{\"current\":\000"
 5574      61647322 
 5574      3A7B2263 
ARM GAS  /tmp/ccDCB0nG.s 			page 102


 5574      75727265 
 5574      6E74223A 
 5575 02e1 000000   		.space	3
 5576              	.LC93:
 5577 02e4 2C226163 		.ascii	",\"active\":\000"
 5577      74697665 
 5577      223A00
 5578 02ef 00       		.space	1
 5579              	.LC94:
 5580 02f0 2C227374 		.ascii	",\"standby\":\000"
 5580      616E6462 
 5580      79223A00 
 5581              	.LC95:
 5582 02fc 7D2C2274 		.ascii	"},\"tools\":{\"active\":[\000"
 5582      6F6F6C73 
 5582      223A7B22 
 5582      61637469 
 5582      7665223A 
 5583 0312 0000     		.space	2
 5584              	.LC96:
 5585 0314 5D2C2273 		.ascii	"],\"standby\":[\000"
 5585      74616E64 
 5585      6279223A 
 5585      5B00
 5586 0322 0000     		.space	2
 5587              	.LC97:
 5588 0324 5D7D2C22 		.ascii	"]},\"extra\":[\000"
 5588      65787472 
 5588      61223A5B 
 5588      00
 5589 0331 000000   		.space	3
 5590              	.LC98:
 5591 0334 7B226E61 		.ascii	"{\"name\":\000"
 5591      6D65223A 
 5591      00
 5592 033d 000000   		.space	3
 5593              	.LC99:
 5594 0340 2C227465 		.ascii	",\"temp\":%.1f}\000"
 5594      6D70223A 
 5594      252E3166 
 5594      7D00
 5595 034e 0000     		.space	2
 5596              	.LC100:
 5597 0350 2C227469 		.ascii	",\"time\":%.1f\000"
 5597      6D65223A 
 5597      252E3166 
 5597      00
 5598 035d 000000   		.space	3
 5599              	.LC101:
 5600 0360 2C227370 		.ascii	",\"spindles\":[\000"
 5600      696E646C 
 5600      6573223A 
 5600      5B00
 5601 036e 0000     		.space	2
 5602              	.LC102:
 5603 0370 7B226375 		.ascii	"{\"current\":%.1f,\"active\":%.1f\000"
 5603      7272656E 
ARM GAS  /tmp/ccDCB0nG.s 			page 103


 5603      74223A25 
 5603      2E31662C 
 5603      22616374 
 5604 038e 0000     		.space	2
 5605              	.LC103:
 5606 0390 2C22746F 		.ascii	",\"tool\":%d}\000"
 5606      6F6C223A 
 5606      25647D00 
 5607              	.LC104:
 5608 039c 2C22636F 		.ascii	",\"coldExtrudeTemp\":%.1f\000"
 5608      6C644578 
 5608      74727564 
 5608      6554656D 
 5608      70223A25 
 5609              	.LC105:
 5610 03b4 2C22636F 		.ascii	",\"coldRetractTemp\":%.1f\000"
 5610      6C645265 
 5610      74726163 
 5610      7454656D 
 5610      70223A25 
 5611              	.LC106:
 5612 03cc 2C22636F 		.ascii	",\"controllableFans\":%lu\000"
 5612      6E74726F 
 5612      6C6C6162 
 5612      6C654661 
 5612      6E73223A 
 5613              	.LC107:
 5614 03e4 2C227465 		.ascii	",\"tempLimit\":%.1f\000"
 5614      6D704C69 
 5614      6D697422 
 5614      3A252E31 
 5614      6600
 5615 03f6 0000     		.space	2
 5616              	.LC108:
 5617 03f8 2C22656E 		.ascii	",\"endstops\":%lu\000"
 5617      6473746F 
 5617      7073223A 
 5617      256C7500 
 5618              	.LC109:
 5619 0408 2C226669 		.ascii	",\"firmwareName\":\"%s\",\"geometry\":\"%s\",\"axes"
 5619      726D7761 
 5619      72654E61 
 5619      6D65223A 
 5619      22257322 
 5620 0432 223A2575 		.ascii	"\":%u,\"axisNames\":\"%s\"\000"
 5620      2C226178 
 5620      69734E61 
 5620      6D657322 
 5620      3A222573 
 5621              	.LC110:
 5622 0448 2C22766F 		.ascii	",\"volumes\":%u,\"mountedVolumes\":%u\000"
 5622      6C756D65 
 5622      73223A25 
 5622      752C226D 
 5622      6F756E74 
 5623 046a 0000     		.space	2
 5624              	.LC111:
ARM GAS  /tmp/ccDCB0nG.s 			page 104


 5625 046c 2C226E61 		.ascii	",\"name\":\000"
 5625      6D65223A 
 5625      00
 5626 0475 000000   		.space	3
 5627              	.LC112:
 5628 0478 2C227072 		.ascii	",\"probe\":{\"threshold\":%li\000"
 5628      6F626522 
 5628      3A7B2274 
 5628      68726573 
 5628      686F6C64 
 5629 0492 0000     		.space	2
 5630              	.LC113:
 5631 0494 2C226865 		.ascii	",\"height\":%.2f\000"
 5631      69676874 
 5631      223A252E 
 5631      326600
 5632 04a3 00       		.space	1
 5633              	.LC114:
 5634 04a4 2C227479 		.ascii	",\"type\":%u}\000"
 5634      7065223A 
 5634      25757D00 
 5635              	.LC115:
 5636 04b0 2C22746F 		.ascii	",\"tools\":[\000"
 5636      6F6C7322 
 5636      3A5B00
 5637 04bb 00       		.space	1
 5638              	.LC116:
 5639 04bc 7B226E75 		.ascii	"{\"number\":%d\000"
 5639      6D626572 
 5639      223A2564 
 5639      00
 5640 04c9 000000   		.space	3
 5641              	.LC117:
 5642 04cc 2C226865 		.ascii	",\"heaters\":[\000"
 5642      61746572 
 5642      73223A5B 
 5642      00
 5643 04d9 000000   		.space	3
 5644              	.LC118:
 5645 04dc 256400   		.ascii	"%d\000"
 5646 04df 00       		.space	1
 5647              	.LC119:
 5648 04e0 5D2C2264 		.ascii	"],\"drives\":[\000"
 5648      72697665 
 5648      73223A5B 
 5648      00
 5649 04ed 000000   		.space	3
 5650              	.LC120:
 5651 04f0 5D2C2261 		.ascii	"],\"axisMap\":[[\000"
 5651      7869734D 
 5651      6170223A 
 5651      5B5B00
 5652 04ff 00       		.space	1
 5653              	.LC121:
 5654 0500 257500   		.ascii	"%u\000"
 5655 0503 00       		.space	1
 5656              	.LC122:
ARM GAS  /tmp/ccDCB0nG.s 			page 105


 5657 0504 5D2C5B00 		.ascii	"],[\000"
 5658              	.LC123:
 5659 0508 5D5D00   		.ascii	"]]\000"
 5660 050b 00       		.space	1
 5661              	.LC124:
 5662 050c 2C226661 		.ascii	",\"fans\":%lu\000"
 5662      6E73223A 
 5662      256C7500 
 5663              	.LC125:
 5664 0518 2C226669 		.ascii	",\"filament\":\000"
 5664      6C616D65 
 5664      6E74223A 
 5664      00
 5665 0525 000000   		.space	3
 5666              	.LC126:
 5667 0528 2C226F66 		.ascii	",\"offsets\":[\000"
 5667      66736574 
 5667      73223A5B 
 5667      00
 5668 0535 000000   		.space	3
 5669              	.LC127:
 5670 0538 2C226375 		.ascii	",\"currentLayer\":%d\000"
 5670      7272656E 
 5670      744C6179 
 5670      6572223A 
 5670      256400
 5671 054b 00       		.space	1
 5672              	.LC128:
 5673 054c 2C226375 		.ascii	",\"currentLayerTime\":%.1f\000"
 5673      7272656E 
 5673      744C6179 
 5673      65725469 
 5673      6D65223A 
 5674 0565 000000   		.space	3
 5675              	.LC129:
 5676 0568 2C226578 		.ascii	",\"extrRaw\":\000"
 5676      74725261 
 5676      77223A00 
 5677              	.LC130:
 5678 0574 5D2C2266 		.ascii	"],\"fractionPrinted\":%.1f\000"
 5678      72616374 
 5678      696F6E50 
 5678      72696E74 
 5678      6564223A 
 5679 058d 000000   		.space	3
 5680              	.LC131:
 5681 0590 2C226669 		.ascii	",\"filePosition\":%lu\000"
 5681      6C65506F 
 5681      73697469 
 5681      6F6E223A 
 5681      256C7500 
 5682              	.LC132:
 5683 05a4 2C226669 		.ascii	",\"firstLayerDuration\":%.1f\000"
 5683      7273744C 
 5683      61796572 
 5683      44757261 
 5683      74696F6E 
ARM GAS  /tmp/ccDCB0nG.s 			page 106


 5684 05bf 00       		.space	1
 5685              	.LC133:
 5686 05c0 2C226669 		.ascii	",\"firstLayerHeight\":%.2f\000"
 5686      7273744C 
 5686      61796572 
 5686      48656967 
 5686      6874223A 
 5687 05d9 000000   		.space	3
 5688              	.LC134:
 5689 05dc 2C227072 		.ascii	",\"printDuration\":%.1f\000"
 5689      696E7444 
 5689      75726174 
 5689      696F6E22 
 5689      3A252E31 
 5690 05f2 0000     		.space	2
 5691              	.LC135:
 5692 05f4 2C227761 		.ascii	",\"warmUpDuration\":%.1f\000"
 5692      726D5570 
 5692      44757261 
 5692      74696F6E 
 5692      223A252E 
 5693 060b 00       		.space	1
 5694              	.LC136:
 5695 060c 2C227469 		.ascii	",\"timesLeft\":{\"file\":%.1f\000"
 5695      6D65734C 
 5695      65667422 
 5695      3A7B2266 
 5695      696C6522 
 5696 0626 0000     		.space	2
 5697              	.LC137:
 5698 0628 2C226669 		.ascii	",\"filament\":%.1f\000"
 5698      6C616D65 
 5698      6E74223A 
 5698      252E3166 
 5698      00
 5699 0639 000000   		.space	3
 5700              	.LC138:
 5701 063c 2C226C61 		.ascii	",\"layer\":%.1f}\000"
 5701      79657222 
 5701      3A252E31 
 5701      667D00
 5702 064b 00       		.space	1
 5703              	.LC139:
 5704 064c 2C227365 		.ascii	",\"seq\":%lu,\"resp\":\000"
 5704      71223A25 
 5704      6C752C22 
 5704      72657370 
 5704      223A00
 5705 065f 00       		.space	1
 5706              	.LC140:
 5707 0660 2C226F75 		.ascii	",\"output\":{\000"
 5707      74707574 
 5707      223A7B00 
 5708              	.LC141:
 5709 066c 22626565 		.ascii	"\"beepDuration\":%u,\"beepFrequency\":%u\000"
 5709      70447572 
 5709      6174696F 
ARM GAS  /tmp/ccDCB0nG.s 			page 107


 5709      6E223A25 
 5709      752C2262 
 5710 0691 000000   		.space	3
 5711              	.LC142:
 5712 0694 5D2C2278 		.ascii	"],\"xyz\":\000"
 5712      797A223A 
 5712      00
 5713              		.section	.rodata._ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb.str1.4,"aMS",%progbits,1
 5714              		.align	2
 5715              	.LC48:
 5716 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 5716      636F6465 
 5716      732F00
 5717 000b 00       		.space	1
 5718              	.LC49:
 5719 000c 7B226572 		.ascii	"{\"err\":0,\"size\":%lu,\000"
 5719      72223A30 
 5719      2C227369 
 5719      7A65223A 
 5719      256C752C 
 5720 0021 000000   		.space	3
 5721              	.LC50:
 5722 0024 226C6173 		.ascii	"\"lastModified\":\"%04u-%02u-%02uT%02u:%02u:%02u\","
 5722      744D6F64 
 5722      69666965 
 5722      64223A22 
 5722      25303475 
 5723 0053 00       		.ascii	"\000"
 5724              	.LC51:
 5725 0054 22686569 		.ascii	"\"height\":%.2f,\"firstLayerHeight\":%.2f,\"layerHe"
 5725      67687422 
 5725      3A252E32 
 5725      662C2266 
 5725      69727374 
 5726 0082 69676874 		.ascii	"ight\":%.2f,\000"
 5726      223A252E 
 5726      32662C00 
 5727 008e 0000     		.space	2
 5728              	.LC52:
 5729 0090 22707269 		.ascii	"\"printTime\":%lu,\000"
 5729      6E745469 
 5729      6D65223A 
 5729      256C752C 
 5729      00
 5730 00a1 000000   		.space	3
 5731              	.LC53:
 5732 00a4 2273696D 		.ascii	"\"simulatedTime\":%lu,\000"
 5732      756C6174 
 5732      65645469 
 5732      6D65223A 
 5732      256C752C 
 5733 00b9 000000   		.space	3
 5734              	.LC54:
 5735 00bc 2266696C 		.ascii	"\"filament\":\000"
 5735      616D656E 
 5735      74223A00 
 5736              	.LC55:
ARM GAS  /tmp/ccDCB0nG.s 			page 108


 5737 00c8 2563252E 		.ascii	"%c%.1f\000"
 5737      316600
 5738 00cf 00       		.space	1
 5739              	.LC56:
 5740 00d0 5D2C2267 		.ascii	"],\"generatedBy\":\000"
 5740      656E6572 
 5740      61746564 
 5740      4279223A 
 5740      00
 5741 00e1 000000   		.space	3
 5742              	.LC57:
 5743 00e4 7D00     		.ascii	"}\000"
 5744 00e6 0000     		.space	2
 5745              	.LC58:
 5746 00e8 7B226572 		.ascii	"{\"err\":1}\000"
 5746      72223A31 
 5746      7D00
 5747              		.section	.rodata._ZN6RepRap19GetFilelistResponseEPKcj.str1.4,"aMS",%progbits,1
 5748              		.align	2
 5749              	.LC44:
 5750 0000 7B227479 		.ascii	"{\"type\":\"%c\",\"name\":\000"
 5750      7065223A 
 5750      22256322 
 5750      2C226E61 
 5750      6D65223A 
 5751 0015 000000   		.space	3
 5752              	.LC45:
 5753 0018 2C227369 		.ascii	",\"size\":%lu\000"
 5753      7A65223A 
 5753      256C7500 
 5754              	.LC46:
 5755 0024 2C226461 		.ascii	",\"date\":\"%04u-%02u-%02uT%02u:%02u:%02u\"}\000"
 5755      7465223A 
 5755      22253034 
 5755      752D2530 
 5755      32752D25 
 5756 004d 000000   		.space	3
 5757              	.LC47:
 5758 0050 5D2C226E 		.ascii	"],\"next\":%u}\000"
 5758      65787422 
 5758      3A25757D 
 5758      00
 5759              		.section	.rodata._ZN6RepRap23GetLegacyStatusResponseEhi.str1.4,"aMS",%progbits,1
 5760              		.align	2
 5761              	.LC143:
 5762 0000 7B227374 		.ascii	"{\"status\":\"%c\",\"heaters\":\000"
 5762      61747573 
 5762      223A2225 
 5762      63222C22 
 5762      68656174 
 5763 001a 0000     		.space	2
 5764              	.LC144:
 5765 001c 5B252E31 		.ascii	"[%.1f\000"
 5765      6600
 5766 0022 0000     		.space	2
 5767              	.LC145:
 5768 0024 2C226163 		.ascii	",\"active\":[%.1f\000"
ARM GAS  /tmp/ccDCB0nG.s 			page 109


 5768      74697665 
 5768      223A5B25 
 5768      2E316600 
 5769              	.LC146:
 5770 0034 2C252E31 		.ascii	",%.1f\000"
 5770      6600
 5771 003a 0000     		.space	2
 5772              	.LC147:
 5773 003c 2C227374 		.ascii	",\"standby\":[%.1f\000"
 5773      616E6462 
 5773      79223A5B 
 5773      252E3166 
 5773      00
 5774 004d 000000   		.space	3
 5775              	.LC148:
 5776 0050 2C226873 		.ascii	",\"hstat\":[%d\000"
 5776      74617422 
 5776      3A5B2564 
 5776      00
 5777 005d 000000   		.space	3
 5778              	.LC149:
 5779 0060 2C22706F 		.ascii	",\"pos\":\000"
 5779      73223A00 
 5780              	.LC150:
 5781 0068 2C256400 		.ascii	",%d\000"
 5782              	.LC151:
 5783 006c 5D2C2273 		.ascii	"],\"sfactor\":%.2f,\"efactor\":\000"
 5783      66616374 
 5783      6F72223A 
 5783      252E3266 
 5783      2C226566 
 5784              	.LC152:
 5785 0088 2C226261 		.ascii	",\"babystep\":%.03f\000"
 5785      62797374 
 5785      6570223A 
 5785      252E3033 
 5785      6600
 5786 009a 0000     		.space	2
 5787              	.LC153:
 5788 009c 2C22746F 		.ascii	",\"tool\":%d\000"
 5788      6F6C223A 
 5788      256400
 5789 00a7 00       		.space	1
 5790              	.LC154:
 5791 00a8 2C227072 		.ascii	",\"probe\":\"%d (%d)\"\000"
 5791      6F626522 
 5791      3A222564 
 5791      20282564 
 5791      292200
 5792 00bb 00       		.space	1
 5793              	.LC155:
 5794 00bc 2C227072 		.ascii	",\"probe\":\"%d (%d, %d)\"\000"
 5794      6F626522 
 5794      3A222564 
 5794      20282564 
 5794      2C202564 
 5795 00d3 00       		.space	1
ARM GAS  /tmp/ccDCB0nG.s 			page 110


 5796              	.LC156:
 5797 00d4 2C227072 		.ascii	",\"probe\":\"%d\"\000"
 5797      6F626522 
 5797      3A222564 
 5797      2200
 5798 00e2 0000     		.space	2
 5799              	.LC157:
 5800 00e4 5D2C2266 		.ascii	"],\"fanRPM\":%u\000"
 5800      616E5250 
 5800      4D223A25 
 5800      7500
 5801 00f2 0000     		.space	2
 5802              	.LC158:
 5803 00f4 2C22686F 		.ascii	",\"homed\":\000"
 5803      6D656422 
 5803      3A00
 5804 00fe 0000     		.space	2
 5805              	.LC159:
 5806 0100 2C226672 		.ascii	",\"fraction_printed\":%.4f\000"
 5806      61637469 
 5806      6F6E5F70 
 5806      72696E74 
 5806      6564223A 
 5807 0119 000000   		.space	3
 5808              	.LC160:
 5809 011c 2C226D73 		.ascii	",\"msgBox.mode\":%d,\"msgBox.seq\":%lu,\"msgBox.tim"
 5809      67426F78 
 5809      2E6D6F64 
 5809      65223A25 
 5809      642C226D 
 5810 014a 656F7574 		.ascii	"eout\":%.1f,\"msgBox.controls\":%lu\000"
 5810      223A252E 
 5810      31662C22 
 5810      6D736742 
 5810      6F782E63 
 5811 016b 00       		.space	1
 5812              	.LC161:
 5813 016c 2C226D73 		.ascii	",\"msgBox.msg\":\000"
 5813      67426F78 
 5813      2E6D7367 
 5813      223A00
 5814 017b 00       		.space	1
 5815              	.LC162:
 5816 017c 2C226D73 		.ascii	",\"msgBox.title\":\000"
 5816      67426F78 
 5816      2E746974 
 5816      6C65223A 
 5816      00
 5817 018d 000000   		.space	3
 5818              	.LC163:
 5819 0190 2C226D73 		.ascii	",\"msgBox.mode\":-1\000"
 5819      67426F78 
 5819      2E6D6F64 
 5819      65223A2D 
 5819      3100
 5820 01a2 0000     		.space	2
 5821              	.LC164:
ARM GAS  /tmp/ccDCB0nG.s 			page 111


 5822 01a4 2C227469 		.ascii	",\"timesLeft\":[%.1f,%.1f,%.1f]\000"
 5822      6D65734C 
 5822      65667422 
 5822      3A5B252E 
 5822      31662C25 
 5823 01c2 0000     		.space	2
 5824              	.LC165:
 5825 01c4 2C226765 		.ascii	",\"geometry\":\"%s\",\"axes\":%u,\"axisNames\":\"%s"
 5825      6F6D6574 
 5825      7279223A 
 5825      22257322 
 5825      2C226178 
 5826 01ee 222C2276 		.ascii	"\",\"volumes\":%u,\"numTools\":%u,\"myName\":\000"
 5826      6F6C756D 
 5826      6573223A 
 5826      25752C22 
 5826      6E756D54 
 5827 0215 000000   		.space	3
 5828              	.LC166:
 5829 0218 2C226669 		.ascii	",\"firmwareName\":\000"
 5829      726D7761 
 5829      72654E61 
 5829      6D65223A 
 5829      00
 5830 0229 000000   		.space	3
 5831              	.LC167:
 5832 022c 2C227365 		.ascii	",\"seq\":%d,\"resp\":\000"
 5832      71223A25 
 5832      642C2272 
 5832      65737022 
 5832      3A00
 5833              		.section	.rodata._ZN6RepRap4InitEv.str1.4,"aMS",%progbits,1
 5834              		.align	2
 5835              	.LC6:
 5836 0000 636F6E66 		.ascii	"config.g\000"
 5836      69672E67 
 5836      00
 5837 0009 000000   		.space	3
 5838              	.LC7:
 5839 000c 636F6E66 		.ascii	"config.g.bak\000"
 5839      69672E67 
 5839      2E62616B 
 5839      00
 5840 0019 000000   		.space	3
 5841              	.LC8:
 5842 001c 546F6F6C 		.ascii	"ToolList\000"
 5842      4C697374 
 5842      00
 5843 0025 000000   		.space	3
 5844              	.LC9:
 5845 0028 4D657373 		.ascii	"MessageBox\000"
 5845      61676542 
 5845      6F7800
 5846 0033 00       		.space	1
 5847              	.LC10:
 5848 0034 4D792044 		.ascii	"My Duet\000"
 5848      75657400 
ARM GAS  /tmp/ccDCB0nG.s 			page 112


 5849              	.LC11:
 5850 003c 25732056 		.ascii	"%s Version %s dated %s\012\000"
 5850      65727369 
 5850      6F6E2025 
 5850      73206461 
 5850      74656420 
 5851              	.LC12:
 5852 0054 32303138 		.ascii	"2018-06-23b1\000"
 5852      2D30362D 
 5852      32336231 
 5852      00
 5853 0061 000000   		.space	3
 5854              	.LC13:
 5855 0064 0A457865 		.ascii	"\012Executing \000"
 5855      63757469 
 5855      6E672000 
 5856              	.LC14:
 5857 0070 303A2F73 		.ascii	"0:/sys/\000"
 5857      79732F00 
 5858              	.LC15:
 5859 0078 25732E2E 		.ascii	"%s...\000"
 5859      2E00
 5860 007e 0000     		.space	2
 5861              	.LC16:
 5862 0080 25732028 		.ascii	"%s (no configuration file found)...\000"
 5862      6E6F2063 
 5862      6F6E6669 
 5862      67757261 
 5862      74696F6E 
 5863              	.LC17:
 5864 00a4 446F6E65 		.ascii	"Done!\012\000"
 5864      210A00
 5865 00ab 00       		.space	1
 5866              	.LC18:
 5867 00ac 4572726F 		.ascii	"Error, not found\012\000"
 5867      722C206E 
 5867      6F742066 
 5867      6F756E64 
 5867      0A00
 5868 00be 0000     		.space	2
 5869              	.LC19:
 5870 00c0 25732069 		.ascii	"%s is up and running.\012\000"
 5870      73207570 
 5870      20616E64 
 5870      2072756E 
 5870      6E696E67 
 5871              		.section	.rodata._ZN6RepRap4SpinEv.part.26.str1.4,"aMS",%progbits,1
 5872              		.align	2
 5873              	.LC5:
 5874 0000 546F6F6C 		.ascii	"Tool %d was not driven because its heater temperatu"
 5874      20256420 
 5874      77617320 
 5874      6E6F7420 
 5874      64726976 
 5875 0033 72657320 		.ascii	"res were not high enough or it has a heater fault\012"
 5875      77657265 
 5875      206E6F74 
ARM GAS  /tmp/ccDCB0nG.s 			page 113


 5875      20686967 
 5875      6820656E 
 5876 0065 00       		.ascii	"\000"
 5877              		.section	.rodata._ZN6RepRap6TimingE11MessageType.str1.4,"aMS",%progbits,1
 5878              		.align	2
 5879              	.LC0:
 5880 0000 536C6F77 		.ascii	"Slowest loop: %.2fms; fastest: %.2fms\012\000"
 5880      65737420 
 5880      6C6F6F70 
 5880      3A20252E 
 5880      32666D73 
 5881              		.section	.rodata._ZNK6RepRap13NoPasswordSetEv.str1.4,"aMS",%progbits,1
 5882              		.align	2
 5883              	.LC169:
 5884 0000 72657072 		.ascii	"reprap\000"
 5884      617000
 5885              		.section	.rodata._ZNK6RepRap19ReportInternalErrorEPKcS1_i.str1.4,"aMS",%progbits,1
 5886              		.align	2
 5887              	.LC168:
 5888 0000 496E7465 		.ascii	"Internal Error in %s at %s(%d)\012\000"
 5888      726E616C 
 5888      20457272 
 5888      6F722069 
 5888      6E202573 
 5889              		.section	.rodata._ZNK6RepRap19WriteToolParametersEP9FileStore.str1.4,"aMS",%progbits,1
 5890              		.align	2
 5891              	.LC170:
 5892 0000 3B205072 		.ascii	"; Probed tool offsets\012\000"
 5892      6F626564 
 5892      20746F6F 
 5892      6C206F66 
 5892      66736574 
 5893 0017 00       		.space	1
 5894              	.LC171:
 5895 0018 47313020 		.ascii	"G10 P%d\000"
 5895      50256400 
 5896              	.LC172:
 5897 0020 20256325 		.ascii	" %c%.2f\000"
 5897      2E326600 
 5898              		.section	.rodata._ZNK6RepRap9PrintToolEiRK9StringRef.str1.4,"aMS",%progbits,1
 5899              		.align	2
 5900              	.LC24:
 5901 0000 4572726F 		.ascii	"Error: Attempt to print details of non-existent too"
 5901      723A2041 
 5901      7474656D 
 5901      70742074 
 5901      6F207072 
 5902 0033 6C2E0A00 		.ascii	"l.\012\000"
 5903              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
