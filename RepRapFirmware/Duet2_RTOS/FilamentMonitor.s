ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 1


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
  13              		.file	"FilamentMonitor.cpp"
  14              		.text
  15              		.section	.text._ZN15FilamentMonitor7DisableEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN15FilamentMonitor7DisableEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN15FilamentMonitor7DisableEv, %function
  24              	_ZN15FilamentMonitor7DisableEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
  28 0002 FF2B     		cmp	r3, #255
  29 0004 07D0     		beq	.L7
  30 0006 10B5     		push	{r4, lr}
  31 0008 0446     		mov	r4, r0
  32 000a 1846     		mov	r0, r3
  33 000c FFF7FEFF 		bl	_Z15detachInterruptm
  34 0010 FF23     		movs	r3, #255
  35 0012 2375     		strb	r3, [r4, #20]
  36 0014 10BD     		pop	{r4, pc}
  37              	.L7:
  38 0016 7047     		bx	lr
  39              		.size	_ZN15FilamentMonitor7DisableEv, .-_ZN15FilamentMonitor7DisableEv
  40              		.section	.text._ZN15FilamentMonitor14InterruptEntryE17CallbackParameter,"ax",%progbits
  41              		.align	1
  42              		.p2align 2,,3
  43              		.global	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter, %function
  49              	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52 0000 0368     		ldr	r3, [r0]
  53 0002 10B5     		push	{r4, lr}
  54 0004 1B69     		ldr	r3, [r3, #16]
  55 0006 0446     		mov	r4, r0
  56 0008 9847     		blx	r3
  57 000a 00B9     		cbnz	r0, .L17
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 2


  58 000c 10BD     		pop	{r4, pc}
  59              	.L17:
  60 000e 054B     		ldr	r3, .L18
  61 0010 A168     		ldr	r1, [r4, #8]
  62 0012 D868     		ldr	r0, [r3, #12]	@ unaligned
  63 0014 04F11502 		add	r2, r4, #21
  64 0018 FFF7FEFF 		bl	_ZN4Move23GetAccumulatedExtrusionEjRb
  65 001c 0123     		movs	r3, #1
  66 001e 6060     		str	r0, [r4, #4]
  67 0020 A375     		strb	r3, [r4, #22]
  68 0022 10BD     		pop	{r4, pc}
  69              	.L19:
  70              		.align	2
  71              	.L18:
  72 0024 00000000 		.word	reprap
  73              		.size	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter, .-_ZN15FilamentMonitor14InterruptE
  74              		.section	.text._ZN15FilamentMonitorD2Ev,"ax",%progbits
  75              		.align	1
  76              		.p2align 2,,3
  77              		.global	_ZN15FilamentMonitorD2Ev
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu fpv4-sp-d16
  82              		.type	_ZN15FilamentMonitorD2Ev, %function
  83              	_ZN15FilamentMonitorD2Ev:
  84              		@ args = 0, pretend = 0, frame = 0
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86              		@ link register save eliminated.
  87 0000 7047     		bx	lr
  88              		.size	_ZN15FilamentMonitorD2Ev, .-_ZN15FilamentMonitorD2Ev
  89              		.global	_ZN15FilamentMonitorD1Ev
  90              		.thumb_set _ZN15FilamentMonitorD1Ev,_ZN15FilamentMonitorD2Ev
  91 0002 00BF     		.section	.text._ZN15FilamentMonitorD0Ev,"ax",%progbits
  92              		.align	1
  93              		.p2align 2,,3
  94              		.global	_ZN15FilamentMonitorD0Ev
  95              		.syntax unified
  96              		.thumb
  97              		.thumb_func
  98              		.fpu fpv4-sp-d16
  99              		.type	_ZN15FilamentMonitorD0Ev, %function
 100              	_ZN15FilamentMonitorD0Ev:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103 0000 10B5     		push	{r4, lr}
 104 0002 1821     		movs	r1, #24
 105 0004 0446     		mov	r4, r0
 106 0006 FFF7FEFF 		bl	_ZdlPvj
 107 000a 2046     		mov	r0, r4
 108 000c 10BD     		pop	{r4, pc}
 109              		.size	_ZN15FilamentMonitorD0Ev, .-_ZN15FilamentMonitorD0Ev
 110 000e 00BF     		.section	.text._ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb,"ax"
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 114              		.syntax unified
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb, %function
 119              	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb:
 120              		@ args = 4, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122 0000 2DE9F042 		push	{r4, r5, r6, r7, r9, lr}
 123 0004 0D46     		mov	r5, r1
 124 0006 0746     		mov	r7, r0
 125 0008 4321     		movs	r1, #67
 126 000a 2846     		mov	r0, r5
 127 000c 9146     		mov	r9, r2
 128 000e 1E46     		mov	r6, r3
 129 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 130 0014 60B9     		cbnz	r0, .L35
 131 0016 069B     		ldr	r3, [sp, #24]
 132 0018 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 133 001a 14B9     		cbnz	r4, .L36
 134              	.L26:
 135 001c 2046     		mov	r0, r4
 136 001e BDE8F082 		pop	{r4, r5, r6, r7, r9, pc}
 137              	.L36:
 138 0022 4846     		mov	r0, r9
 139 0024 1749     		ldr	r1, .L39
 140 0026 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 141 002a 2046     		mov	r0, r4
 142 002c BDE8F082 		pop	{r4, r5, r6, r7, r9, pc}
 143              	.L35:
 144 0030 069A     		ldr	r2, [sp, #24]
 145 0032 0123     		movs	r3, #1
 146 0034 1370     		strb	r3, [r2]
 147 0036 0446     		mov	r4, r0
 148 0038 2846     		mov	r0, r5
 149 003a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 150 003e 124B     		ldr	r3, .L39+4
 151 0040 0146     		mov	r1, r0
 152 0042 0546     		mov	r5, r0
 153 0044 5868     		ldr	r0, [r3, #4]
 154 0046 FFF7FEFF 		bl	_ZNK8Platform13GetEndstopPinEi
 155 004a FF28     		cmp	r0, #255
 156 004c 14D0     		beq	.L37
 157 004e 0022     		movs	r2, #0
 158 0050 3D61     		str	r5, [r7, #16]
 159 0052 3875     		strb	r0, [r7, #20]
 160 0054 BA75     		strb	r2, [r7, #22]
 161 0056 1EB9     		cbnz	r6, .L38
 162              	.L27:
 163 0058 0024     		movs	r4, #0
 164 005a 2046     		mov	r0, r4
 165 005c BDE8F082 		pop	{r4, r5, r6, r7, r9, pc}
 166              	.L38:
 167 0060 3B46     		mov	r3, r7
 168 0062 3246     		mov	r2, r6
 169 0064 0949     		ldr	r1, .L39+8
 170 0066 FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 171 006a 0028     		cmp	r0, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 4


 172 006c F4D1     		bne	.L27
 173 006e 4846     		mov	r0, r9
 174 0070 0749     		ldr	r1, .L39+12
 175 0072 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 176 0076 D1E7     		b	.L26
 177              	.L37:
 178 0078 4846     		mov	r0, r9
 179 007a 0649     		ldr	r1, .L39+16
 180 007c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 181 0080 CCE7     		b	.L26
 182              	.L40:
 183 0082 00BF     		.align	2
 184              	.L39:
 185 0084 30000000 		.word	.LC2
 186 0088 00000000 		.word	reprap
 187 008c 00000000 		.word	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter
 188 0090 14000000 		.word	.LC1
 189 0094 00000000 		.word	.LC0
 190              		.size	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb, .-_ZN15Filam
 191              		.section	.text._ZN15FilamentMonitor10InitStaticEv,"ax",%progbits
 192              		.align	1
 193              		.p2align 2,,3
 194              		.global	_ZN15FilamentMonitor10InitStaticEv
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu fpv4-sp-d16
 199              		.type	_ZN15FilamentMonitor10InitStaticEv, %function
 200              	_ZN15FilamentMonitor10InitStaticEv:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              		@ link register save eliminated.
 204 0000 0149     		ldr	r1, .L42
 205 0002 0248     		ldr	r0, .L42+4
 206 0004 FFF7FEBF 		b	_ZN5Mutex6CreateEPKc
 207              	.L43:
 208              		.align	2
 209              	.L42:
 210 0008 00000000 		.word	.LC3
 211 000c 00000000 		.word	.LANCHOR0
 212              		.size	_ZN15FilamentMonitor10InitStaticEv, .-_ZN15FilamentMonitor10InitStaticEv
 213              		.section	.text._ZN15FilamentMonitor6CreateEji,"ax",%progbits
 214              		.align	1
 215              		.p2align 2,,3
 216              		.global	_ZN15FilamentMonitor6CreateEji
 217              		.syntax unified
 218              		.thumb
 219              		.thumb_func
 220              		.fpu fpv4-sp-d16
 221              		.type	_ZN15FilamentMonitor6CreateEji, %function
 222              	_ZN15FilamentMonitor6CreateEji:
 223              		@ args = 0, pretend = 0, frame = 0
 224              		@ frame_needed = 0, uses_anonymous_args = 0
 225 0000 4B1E     		subs	r3, r1, #1
 226 0002 70B5     		push	{r4, r5, r6, lr}
 227 0004 0C46     		mov	r4, r1
 228 0006 0646     		mov	r6, r0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 5


 229 0008 062B     		cmp	r3, #6
 230 000a 2FD8     		bhi	.L51
 231 000c DFE803F0 		tbb	[pc, r3]
 232              	.L47:
 233 0010 24       		.byte	(.L46-.L47)/2
 234 0011 24       		.byte	(.L46-.L47)/2
 235 0012 19       		.byte	(.L48-.L47)/2
 236 0013 19       		.byte	(.L48-.L47)/2
 237 0014 0E       		.byte	(.L49-.L47)/2
 238 0015 0E       		.byte	(.L49-.L47)/2
 239 0016 04       		.byte	(.L50-.L47)/2
 240 0017 00       		.p2align 1
 241              	.L50:
 242 0018 6020     		movs	r0, #96
 243 001a FFF7FEFF 		bl	_Znwj
 244 001e 3146     		mov	r1, r6
 245 0020 0722     		movs	r2, #7
 246 0022 0546     		mov	r5, r0
 247 0024 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitorC1Eji
 248              	.L44:
 249 0028 2846     		mov	r0, r5
 250 002a 70BD     		pop	{r4, r5, r6, pc}
 251              	.L49:
 252 002c 4FF4C270 		mov	r0, #388
 253 0030 FFF7FEFF 		bl	_Znwj
 254 0034 2246     		mov	r2, r4
 255 0036 0546     		mov	r5, r0
 256 0038 3146     		mov	r1, r6
 257 003a FFF7FEFF 		bl	_ZN20LaserFilamentMonitorC1Eji
 258 003e 2846     		mov	r0, r5
 259 0040 70BD     		pop	{r4, r5, r6, pc}
 260              	.L48:
 261 0042 4FF4C070 		mov	r0, #384
 262 0046 FFF7FEFF 		bl	_Znwj
 263 004a 2246     		mov	r2, r4
 264 004c 0546     		mov	r5, r0
 265 004e 3146     		mov	r1, r6
 266 0050 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitorC1Eji
 267 0054 2846     		mov	r0, r5
 268 0056 70BD     		pop	{r4, r5, r6, pc}
 269              	.L46:
 270 0058 1C20     		movs	r0, #28
 271 005a FFF7FEFF 		bl	_Znwj
 272 005e 2246     		mov	r2, r4
 273 0060 0546     		mov	r5, r0
 274 0062 3146     		mov	r1, r6
 275 0064 FFF7FEFF 		bl	_ZN21SimpleFilamentMonitorC1Eji
 276 0068 2846     		mov	r0, r5
 277 006a 70BD     		pop	{r4, r5, r6, pc}
 278              	.L51:
 279 006c 0025     		movs	r5, #0
 280 006e DBE7     		b	.L44
 281              		.size	_ZN15FilamentMonitor6CreateEji, .-_ZN15FilamentMonitor6CreateEji
 282              		.section	.text._ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj,"ax",%progbits
 283              		.align	1
 284              		.p2align 2,,3
 285              		.global	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 6


 286              		.syntax unified
 287              		.thumb
 288              		.thumb_func
 289              		.fpu fpv4-sp-d16
 290              		.type	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj, %function
 291              	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj:
 292              		@ args = 0, pretend = 0, frame = 16
 293              		@ frame_needed = 0, uses_anonymous_args = 0
 294 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 295 0004 85B0     		sub	sp, sp, #20
 296 0006 04AC     		add	r4, sp, #16
 297 0008 0023     		movs	r3, #0
 298 000a 04F80D3D 		strb	r3, [r4, #-13]!
 299 000e 8846     		mov	r8, r1
 300 0010 2346     		mov	r3, r4
 301 0012 5021     		movs	r1, #80
 302 0014 1546     		mov	r5, r2
 303 0016 01AA     		add	r2, sp, #4
 304 0018 8146     		mov	r9, r0
 305 001a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 306 001e 02A8     		add	r0, sp, #8
 307 0020 4FF0FF32 		mov	r2, #-1
 308 0024 2649     		ldr	r1, .L77
 309 0026 274E     		ldr	r6, .L77+4
 310 0028 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 311 002c 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 312 0030 23B3     		cbz	r3, .L54
 313 0032 56F82500 		ldr	r0, [r6, r5, lsl #2]
 314 0036 0199     		ldr	r1, [sp, #4]
 315 0038 78B1     		cbz	r0, .L55
 316 003a C368     		ldr	r3, [r0, #12]
 317 003c 8B42     		cmp	r3, r1
 318 003e 20D0     		beq	.L56
 319 0040 0368     		ldr	r3, [r0]
 320 0042 5B69     		ldr	r3, [r3, #20]
 321 0044 9847     		blx	r3
 322 0046 56F82500 		ldr	r0, [r6, r5, lsl #2]
 323 004a 10B1     		cbz	r0, .L57
 324 004c 0368     		ldr	r3, [r0]
 325 004e DB69     		ldr	r3, [r3, #28]
 326 0050 9847     		blx	r3
 327              	.L57:
 328 0052 0023     		movs	r3, #0
 329 0054 46F82530 		str	r3, [r6, r5, lsl #2]
 330 0058 0199     		ldr	r1, [sp, #4]
 331              	.L55:
 332 005a 2846     		mov	r0, r5
 333 005c FFF7FEFF 		bl	_ZN15FilamentMonitor6CreateEji
 334 0060 46F82500 		str	r0, [r6, r5, lsl #2]
 335 0064 68B9     		cbnz	r0, .L56
 336 0066 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 337 006a 13B3     		cbz	r3, .L63
 338              	.L76:
 339 006c 0124     		movs	r4, #1
 340              	.L59:
 341 006e 02A8     		add	r0, sp, #8
 342 0070 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 7


 343 0074 2046     		mov	r0, r4
 344 0076 05B0     		add	sp, sp, #20
 345              		@ sp needed
 346 0078 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 347              	.L54:
 348 007c 56F82500 		ldr	r0, [r6, r5, lsl #2]
 349 0080 B8B1     		cbz	r0, .L63
 350              	.L56:
 351 0082 0768     		ldr	r7, [r0]
 352 0084 2346     		mov	r3, r4
 353 0086 4246     		mov	r2, r8
 354 0088 4946     		mov	r1, r9
 355 008a 3C68     		ldr	r4, [r7]
 356 008c A047     		blx	r4
 357 008e 0028     		cmp	r0, #0
 358 0090 ECD0     		beq	.L76
 359 0092 56F82500 		ldr	r0, [r6, r5, lsl #2]
 360 0096 0368     		ldr	r3, [r0]
 361 0098 5B69     		ldr	r3, [r3, #20]
 362 009a 9847     		blx	r3
 363 009c 56F82500 		ldr	r0, [r6, r5, lsl #2]
 364 00a0 10B1     		cbz	r0, .L60
 365 00a2 0368     		ldr	r3, [r0]
 366 00a4 DB69     		ldr	r3, [r3, #28]
 367 00a6 9847     		blx	r3
 368              	.L60:
 369 00a8 0023     		movs	r3, #0
 370 00aa 46F82530 		str	r3, [r6, r5, lsl #2]
 371 00ae 0224     		movs	r4, #2
 372 00b0 DDE7     		b	.L59
 373              	.L63:
 374 00b2 2A46     		mov	r2, r5
 375 00b4 4046     		mov	r0, r8
 376 00b6 0449     		ldr	r1, .L77+8
 377 00b8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 378 00bc D6E7     		b	.L76
 379              	.L78:
 380 00be 00BF     		.align	2
 381              	.L77:
 382 00c0 00000000 		.word	.LANCHOR0
 383 00c4 00000000 		.word	.LANCHOR1
 384 00c8 00000000 		.word	.LC4
 385              		.size	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj, .-_ZN15FilamentMonitor9Configure
 386              		.section	.text._ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus,"ax",%progbits
 387              		.align	1
 388              		.p2align 2,,3
 389              		.global	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus
 390              		.syntax unified
 391              		.thumb
 392              		.thumb_func
 393              		.fpu fpv4-sp-d16
 394              		.type	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus, %function
 395              	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus:
 396              		@ args = 0, pretend = 0, frame = 0
 397              		@ frame_needed = 0, uses_anonymous_args = 0
 398              		@ link register save eliminated.
 399 0000 0428     		cmp	r0, #4
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 8


 400 0002 9ABF     		itte	ls
 401 0004 024B     		ldrls	r3, .L82
 402 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
 403 000a 0248     		ldrhi	r0, .L82+4
 404 000c 7047     		bx	lr
 405              	.L83:
 406 000e 00BF     		.align	2
 407              	.L82:
 408 0010 00000000 		.word	.LANCHOR2
 409 0014 00000000 		.word	.LC5
 410              		.size	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus, .-_ZN15FilamentMonitor15GetErr
 411              		.section	.text._ZN15FilamentMonitor4SpinEb,"ax",%progbits
 412              		.align	1
 413              		.p2align 2,,3
 414              		.global	_ZN15FilamentMonitor4SpinEb
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu fpv4-sp-d16
 419              		.type	_ZN15FilamentMonitor4SpinEb, %function
 420              	_ZN15FilamentMonitor4SpinEb:
 421              		@ args = 0, pretend = 0, frame = 24
 422              		@ frame_needed = 0, uses_anonymous_args = 0
 423 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 424 0004 87B0     		sub	sp, sp, #28
 425 0006 8346     		mov	fp, r0
 426 0008 4FF0FF32 		mov	r2, #-1
 427 000c 04A8     		add	r0, sp, #16
 428 000e 4149     		ldr	r1, .L107
 429 0010 414E     		ldr	r6, .L107+4
 430 0012 DFF814A1 		ldr	r10, .L107+20
 431 0016 DFF81491 		ldr	r9, .L107+24
 432 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 433 001e 0025     		movs	r5, #0
 434 0020 0BE0     		b	.L94
 435              	.L106:
 436 0022 97F81826 		ldrb	r2, [r7, #1560]	@ zero_extendqisi2
 437 0026 2368     		ldr	r3, [r4]
 438 0028 002A     		cmp	r2, #0
 439 002a 39D0     		beq	.L104
 440              	.L89:
 441 002c 9B68     		ldr	r3, [r3, #8]
 442 002e 2046     		mov	r0, r4
 443 0030 5946     		mov	r1, fp
 444 0032 9847     		blx	r3
 445              	.L85:
 446 0034 0135     		adds	r5, r5, #1
 447 0036 092D     		cmp	r5, #9
 448 0038 60D0     		beq	.L105
 449              	.L94:
 450 003a 56F8044F 		ldr	r4, [r6, #4]!
 451 003e 002C     		cmp	r4, #0
 452 0040 F8D0     		beq	.L85
 453 0042 DAF81470 		ldr	r7, [r10, #20]
 454              		.syntax unified
 455              	@ 330 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 456 0046 72B6     		cpsid i
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 9


 457              	@ 0 "" 2
 458              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 459 0048 BFF35F8F 		dmb
 460              	@ 0 "" 2
 461              		.thumb
 462              		.syntax unified
 463 004c 94F81680 		ldrb	r8, [r4, #22]	@ zero_extendqisi2
 464 0050 0023     		movs	r3, #0
 465 0052 89F80030 		strb	r3, [r9]
 466 0056 B8F1000F 		cmp	r8, #0
 467 005a 12D0     		beq	.L86
 468 005c A375     		strb	r3, [r4, #22]
 469 005e 0123     		movs	r3, #1
 470 0060 627D     		ldrb	r2, [r4, #21]	@ zero_extendqisi2
 471 0062 89F80030 		strb	r3, [r9]
 472 0066 6368     		ldr	r3, [r4, #4]
 473 0068 8DF80F20 		strb	r2, [sp, #15]
 474 006c 0093     		str	r3, [sp]
 475              		.syntax unified
 476              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 477 006e BFF35F8F 		dmb
 478              	@ 0 "" 2
 479              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 480 0072 62B6     		cpsie i
 481              	@ 0 "" 2
 482              		.thumb
 483              		.syntax unified
 484              	.L87:
 485 0074 3846     		mov	r0, r7
 486 0076 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv
 487 007a 0028     		cmp	r0, #0
 488 007c D1D1     		bne	.L106
 489 007e 2368     		ldr	r3, [r4]
 490 0080 D4E7     		b	.L89
 491              	.L86:
 492 0082 0123     		movs	r3, #1
 493 0084 89F80030 		strb	r3, [r9]
 494              		.syntax unified
 495              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 496 0088 BFF35F8F 		dmb
 497              	@ 0 "" 2
 498              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 499 008c 62B6     		cpsie i
 500              	@ 0 "" 2
 501              		.thumb
 502              		.syntax unified
 503 008e 0DF10F02 		add	r2, sp, #15
 504 0092 2946     		mov	r1, r5
 505 0094 DAF80C00 		ldr	r0, [r10, #12]
 506 0098 FFF7FEFF 		bl	_ZN4Move23GetAccumulatedExtrusionEjRb
 507 009c 0090     		str	r0, [sp]
 508 009e E9E7     		b	.L87
 509              	.L104:
 510 00a0 D7F85C03 		ldr	r0, [r7, #860]
 511 00a4 DAF80410 		ldr	r1, [r10, #4]
 512 00a8 DDED007A 		vldr.32	s15, [sp]	@ int
 513 00ac 5B68     		ldr	r3, [r3, #4]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 10


 514 00ae 0193     		str	r3, [sp, #4]
 515 00b0 2844     		add	r0, r0, r5
 516 00b2 01EB8001 		add	r1, r1, r0, lsl #2
 517 00b6 91ED770A 		vldr.32	s0, [r1, #476]
 518 00ba 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 519 00be F8EEE77A 		vcvt.f32.s32	s15, s15
 520 00c2 2046     		mov	r0, r4
 521 00c4 4346     		mov	r3, r8
 522 00c6 87EE800A 		vdiv.f32	s0, s15, s0
 523 00ca 5946     		mov	r1, fp
 524 00cc 019C     		ldr	r4, [sp, #4]
 525 00ce A047     		blx	r4
 526 00d0 BBF1000F 		cmp	fp, #0
 527 00d4 AED0     		beq	.L85
 528 00d6 0028     		cmp	r0, #0
 529 00d8 ACD0     		beq	.L85
 530 00da DAF80831 		ldr	r3, [r10, #264]
 531 00de 9B04     		lsls	r3, r3, #18
 532 00e0 12D5     		bpl	.L92
 533 00e2 0428     		cmp	r0, #4
 534 00e4 96BF     		itet	ls
 535 00e6 0D4B     		ldrls	r3, .L107+8
 536 00e8 0D4A     		ldrhi	r2, .L107+12
 537 00ea 53F82020 		ldrls	r2, [r3, r0, lsl #2]
 538 00ee 0D48     		ldr	r0, .L107+16
 539 00f0 2946     		mov	r1, r5
 540 00f2 0135     		adds	r5, r5, #1
 541 00f4 FFF7FEFF 		bl	debugPrintf
 542 00f8 092D     		cmp	r5, #9
 543 00fa 9ED1     		bne	.L94
 544              	.L105:
 545 00fc 04A8     		add	r0, sp, #16
 546 00fe FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 547 0102 07B0     		add	sp, sp, #28
 548              		@ sp needed
 549 0104 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 550              	.L92:
 551 0108 0246     		mov	r2, r0
 552 010a 2946     		mov	r1, r5
 553 010c 3846     		mov	r0, r7
 554 010e FFF7FEFF 		bl	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus
 555 0112 8FE7     		b	.L85
 556              	.L108:
 557              		.align	2
 558              	.L107:
 559 0114 00000000 		.word	.LANCHOR0
 560 0118 FCFFFFFF 		.word	.LANCHOR1-4
 561 011c 00000000 		.word	.LANCHOR2
 562 0120 00000000 		.word	.LC5
 563 0124 00000000 		.word	.LC6
 564 0128 00000000 		.word	reprap
 565 012c 00000000 		.word	g_interrupt_enabled
 566              		.size	_ZN15FilamentMonitor4SpinEb, .-_ZN15FilamentMonitor4SpinEb
 567              		.section	.text._ZN15FilamentMonitor11DiagnosticsE11MessageType,"ax",%progbits
 568              		.align	1
 569              		.p2align 2,,3
 570              		.global	_ZN15FilamentMonitor11DiagnosticsE11MessageType
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 11


 571              		.syntax unified
 572              		.thumb
 573              		.thumb_func
 574              		.fpu fpv4-sp-d16
 575              		.type	_ZN15FilamentMonitor11DiagnosticsE11MessageType, %function
 576              	_ZN15FilamentMonitor11DiagnosticsE11MessageType:
 577              		@ args = 0, pretend = 0, frame = 0
 578              		@ frame_needed = 0, uses_anonymous_args = 0
 579 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 580 0004 124D     		ldr	r5, .L127
 581 0006 DFF85080 		ldr	r8, .L127+8
 582 000a 124F     		ldr	r7, .L127+4
 583 000c 0646     		mov	r6, r0
 584 000e 0024     		movs	r4, #0
 585 0010 0123     		movs	r3, #1
 586              	.L114:
 587 0012 55F82400 		ldr	r0, [r5, r4, lsl #2]
 588 0016 A8B1     		cbz	r0, .L110
 589 0018 3BB1     		cbz	r3, .L113
 590 001a D8F80400 		ldr	r0, [r8, #4]
 591 001e 3A46     		mov	r2, r7
 592 0020 3146     		mov	r1, r6
 593 0022 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 594 0026 55F82400 		ldr	r0, [r5, r4, lsl #2]
 595              	.L113:
 596 002a 0368     		ldr	r3, [r0]
 597 002c 2246     		mov	r2, r4
 598 002e DB68     		ldr	r3, [r3, #12]
 599 0030 3146     		mov	r1, r6
 600 0032 0134     		adds	r4, r4, #1
 601 0034 9847     		blx	r3
 602 0036 092C     		cmp	r4, #9
 603 0038 07D0     		beq	.L109
 604 003a 55F82400 		ldr	r0, [r5, r4, lsl #2]
 605 003e 0028     		cmp	r0, #0
 606 0040 F3D1     		bne	.L113
 607 0042 0346     		mov	r3, r0
 608              	.L110:
 609 0044 0134     		adds	r4, r4, #1
 610 0046 092C     		cmp	r4, #9
 611 0048 E3D1     		bne	.L114
 612              	.L109:
 613 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 614              	.L128:
 615 004e 00BF     		.align	2
 616              	.L127:
 617 0050 00000000 		.word	.LANCHOR1
 618 0054 00000000 		.word	.LC7
 619 0058 00000000 		.word	reprap
 620              		.size	_ZN15FilamentMonitor11DiagnosticsE11MessageType, .-_ZN15FilamentMonitor11DiagnosticsE11Messa
 621              		.section	.text.startup._GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE,"ax",%progbits
 622              		.align	1
 623              		.p2align 2,,3
 624              		.syntax unified
 625              		.thumb
 626              		.thumb_func
 627              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 12


 628              		.type	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE, %function
 629              	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE:
 630              		@ args = 0, pretend = 0, frame = 0
 631              		@ frame_needed = 0, uses_anonymous_args = 0
 632              		@ link register save eliminated.
 633 0000 014B     		ldr	r3, .L130
 634 0002 0022     		movs	r2, #0
 635 0004 1A60     		str	r2, [r3]
 636 0006 7047     		bx	lr
 637              	.L131:
 638              		.align	2
 639              	.L130:
 640 0008 00000000 		.word	.LANCHOR0
 641              		.size	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE, .-_GLOBAL__sub_I__ZN15FilamentMo
 642              		.section	.init_array,"aw",%init_array
 643              		.align	2
 644 0000 00000000 		.word	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE(target1)
 645              		.global	_ZTV15FilamentMonitor
 646              		.global	_ZN15FilamentMonitor15filamentSensorsE
 647              		.global	_ZN15FilamentMonitor20filamentSensorsMutexE
 648              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 649              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 650              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 651              	_ZL28cpu_irq_prev_interrupt_state:
 652 0000 00       		.space	1
 653              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 654              		.align	2
 655              		.type	_ZL32cpu_irq_critical_section_counter, %object
 656              		.size	_ZL32cpu_irq_critical_section_counter, 4
 657              	_ZL32cpu_irq_critical_section_counter:
 658 0000 00000000 		.space	4
 659              		.section	.bss._ZN15FilamentMonitor15filamentSensorsE,"aw",%nobits
 660              		.align	2
 661              		.set	.LANCHOR1,. + 0
 662              		.type	_ZN15FilamentMonitor15filamentSensorsE, %object
 663              		.size	_ZN15FilamentMonitor15filamentSensorsE, 36
 664              	_ZN15FilamentMonitor15filamentSensorsE:
 665 0000 00000000 		.space	36
 665      00000000 
 665      00000000 
 665      00000000 
 665      00000000 
 666              		.section	.bss._ZN15FilamentMonitor20filamentSensorsMutexE,"aw",%nobits
 667              		.align	2
 668              		.set	.LANCHOR0,. + 0
 669              		.type	_ZN15FilamentMonitor20filamentSensorsMutexE, %object
 670              		.size	_ZN15FilamentMonitor20filamentSensorsMutexE, 96
 671              	_ZN15FilamentMonitor20filamentSensorsMutexE:
 672 0000 00000000 		.space	96
 672      00000000 
 672      00000000 
 672      00000000 
 672      00000000 
 673              		.section	.rodata.CSWTCH.45,"a",%progbits
 674              		.align	2
 675              		.set	.LANCHOR2,. + 0
 676              		.type	CSWTCH.45, %object
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 13


 677              		.size	CSWTCH.45, 20
 678              	CSWTCH.45:
 679 0000 00000000 		.word	.LC8
 680 0004 0C000000 		.word	.LC9
 681 0008 18000000 		.word	.LC10
 682 000c 2C000000 		.word	.LC11
 683 0010 40000000 		.word	.LC12
 684              		.section	.rodata._ZN15FilamentMonitor10InitStaticEv.str1.4,"aMS",%progbits,1
 685              		.align	2
 686              	.LC3:
 687 0000 46696C61 		.ascii	"FilamentSensors\000"
 687      6D656E74 
 687      53656E73 
 687      6F727300 
 688              		.section	.rodata._ZN15FilamentMonitor11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 689              		.align	2
 690              	.LC7:
 691 0000 3D3D3D20 		.ascii	"=== Filament sensors ===\012\000"
 691      46696C61 
 691      6D656E74 
 691      2073656E 
 691      736F7273 
 692              		.section	.rodata._ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb.st
 693              		.align	2
 694              	.LC0:
 695 0000 62616420 		.ascii	"bad endstop number\000"
 695      656E6473 
 695      746F7020 
 695      6E756D62 
 695      657200
 696 0013 00       		.space	1
 697              	.LC1:
 698 0014 756E7375 		.ascii	"unsuitable endstop number\000"
 698      69746162 
 698      6C652065 
 698      6E647374 
 698      6F70206E 
 699 002e 0000     		.space	2
 700              	.LC2:
 701 0030 6E6F2065 		.ascii	"no endstop number given\000"
 701      6E647374 
 701      6F70206E 
 701      756D6265 
 701      72206769 
 702              		.section	.rodata._ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus.str1.4,"aMS",%progbi
 703              		.align	2
 704              	.LC5:
 705 0000 756E6B6E 		.ascii	"unknown error\000"
 705      6F776E20 
 705      6572726F 
 705      7200
 706              		.section	.rodata._ZN15FilamentMonitor4SpinEb.str1.4,"aMS",%progbits,1
 707              		.align	2
 708              	.LC6:
 709 0000 46696C61 		.ascii	"Filament error: extruder %u reports %s\012\000"
 709      6D656E74 
 709      20657272 
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLf28DP.s 			page 14


 709      6F723A20 
 709      65787472 
 710              		.section	.rodata._ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj.str1.4,"aMS",%progbits
 711              		.align	2
 712              	.LC4:
 713 0000 45787472 		.ascii	"Extruder drive %u has no filament sensor\000"
 713      75646572 
 713      20647269 
 713      76652025 
 713      75206861 
 714              		.section	.rodata._ZTV15FilamentMonitor,"a",%progbits
 715              		.align	2
 716              		.type	_ZTV15FilamentMonitor, %object
 717              		.size	_ZTV15FilamentMonitor, 40
 718              	_ZTV15FilamentMonitor:
 719 0000 00000000 		.word	0
 720 0004 00000000 		.word	0
 721 0008 00000000 		.word	__cxa_pure_virtual
 722 000c 00000000 		.word	__cxa_pure_virtual
 723 0010 00000000 		.word	__cxa_pure_virtual
 724 0014 00000000 		.word	__cxa_pure_virtual
 725 0018 00000000 		.word	__cxa_pure_virtual
 726 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 727 0020 00000000 		.word	0
 728 0024 00000000 		.word	0
 729              		.section	.rodata.str1.4,"aMS",%progbits,1
 730              		.align	2
 731              	.LC8:
 732 0000 6E6F2065 		.ascii	"no error\000"
 732      72726F72 
 732      00
 733 0009 000000   		.space	3
 734              	.LC9:
 735 000c 6E6F2066 		.ascii	"no filament\000"
 735      696C616D 
 735      656E7400 
 736              	.LC10:
 737 0018 746F6F20 		.ascii	"too little movement\000"
 737      6C697474 
 737      6C65206D 
 737      6F76656D 
 737      656E7400 
 738              	.LC11:
 739 002c 746F6F20 		.ascii	"too much movement\000"
 739      6D756368 
 739      206D6F76 
 739      656D656E 
 739      7400
 740 003e 0000     		.space	2
 741              	.LC12:
 742 0040 73656E73 		.ascii	"sensor not working\000"
 742      6F72206E 
 742      6F742077 
 742      6F726B69 
 742      6E6700
 743              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
