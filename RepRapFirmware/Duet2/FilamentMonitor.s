ARM GAS  /tmp/ccgqNnQd.s 			page 1


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
  14              		.section	.text._ZN15FilamentMonitor7DisableEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN15FilamentMonitor7DisableEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN15FilamentMonitor7DisableEv, %function
  23              	_ZN15FilamentMonitor7DisableEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
  27 0002 FF2B     		cmp	r3, #255
  28 0004 07D0     		beq	.L7
  29 0006 10B5     		push	{r4, lr}
  30 0008 0446     		mov	r4, r0
  31 000a 1846     		mov	r0, r3
  32 000c FFF7FEFF 		bl	_Z15detachInterruptm
  33 0010 FF23     		movs	r3, #255
  34 0012 2375     		strb	r3, [r4, #20]
  35 0014 10BD     		pop	{r4, pc}
  36              	.L7:
  37 0016 7047     		bx	lr
  38              		.size	_ZN15FilamentMonitor7DisableEv, .-_ZN15FilamentMonitor7DisableEv
  39              		.section	.text._ZN15FilamentMonitor14InterruptEntryE17CallbackParameter,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv4-sp-d16
  47              		.type	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter, %function
  48              	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51 0000 0368     		ldr	r3, [r0]
  52 0002 10B5     		push	{r4, lr}
  53 0004 1B69     		ldr	r3, [r3, #16]
  54 0006 0446     		mov	r4, r0
  55 0008 9847     		blx	r3
  56 000a 00B9     		cbnz	r0, .L17
  57 000c 10BD     		pop	{r4, pc}
ARM GAS  /tmp/ccgqNnQd.s 			page 2


  58              	.L17:
  59 000e 054B     		ldr	r3, .L18
  60 0010 A168     		ldr	r1, [r4, #8]
  61 0012 9868     		ldr	r0, [r3, #8]	@ unaligned
  62 0014 04F11502 		add	r2, r4, #21
  63 0018 FFF7FEFF 		bl	_ZN4Move23GetAccumulatedExtrusionEjRb
  64 001c 0123     		movs	r3, #1
  65 001e 6060     		str	r0, [r4, #4]
  66 0020 A375     		strb	r3, [r4, #22]
  67 0022 10BD     		pop	{r4, pc}
  68              	.L19:
  69              		.align	2
  70              	.L18:
  71 0024 00000000 		.word	reprap
  72              		.size	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter, .-_ZN15FilamentMonitor14InterruptE
  73              		.section	.text._ZN15FilamentMonitorD2Ev,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	_ZN15FilamentMonitorD2Ev
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu fpv4-sp-d16
  81              		.type	_ZN15FilamentMonitorD2Ev, %function
  82              	_ZN15FilamentMonitorD2Ev:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85              		@ link register save eliminated.
  86 0000 7047     		bx	lr
  87              		.size	_ZN15FilamentMonitorD2Ev, .-_ZN15FilamentMonitorD2Ev
  88              		.global	_ZN15FilamentMonitorD1Ev
  89              		.thumb_set _ZN15FilamentMonitorD1Ev,_ZN15FilamentMonitorD2Ev
  90 0002 00BF     		.section	.text._ZN15FilamentMonitorD0Ev,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	_ZN15FilamentMonitorD0Ev
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	_ZN15FilamentMonitorD0Ev, %function
  99              	_ZN15FilamentMonitorD0Ev:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102 0000 10B5     		push	{r4, lr}
 103 0002 1821     		movs	r1, #24
 104 0004 0446     		mov	r4, r0
 105 0006 FFF7FEFF 		bl	_ZdlPvj
 106 000a 2046     		mov	r0, r4
 107 000c 10BD     		pop	{r4, pc}
 108              		.size	_ZN15FilamentMonitorD0Ev, .-_ZN15FilamentMonitorD0Ev
 109 000e 00BF     		.section	.text._ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb,"ax"
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 113              		.syntax unified
 114              		.thumb
ARM GAS  /tmp/ccgqNnQd.s 			page 3


 115              		.thumb_func
 116              		.fpu fpv4-sp-d16
 117              		.type	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb, %function
 118              	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb:
 119              		@ args = 4, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121 0000 2DE9F042 		push	{r4, r5, r6, r7, r9, lr}
 122 0004 0D46     		mov	r5, r1
 123 0006 0746     		mov	r7, r0
 124 0008 4321     		movs	r1, #67
 125 000a 2846     		mov	r0, r5
 126 000c 9146     		mov	r9, r2
 127 000e 1E46     		mov	r6, r3
 128 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 129 0014 60B9     		cbnz	r0, .L35
 130 0016 069B     		ldr	r3, [sp, #24]
 131 0018 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 132 001a 14B9     		cbnz	r4, .L36
 133              	.L26:
 134 001c 2046     		mov	r0, r4
 135 001e BDE8F082 		pop	{r4, r5, r6, r7, r9, pc}
 136              	.L36:
 137 0022 4846     		mov	r0, r9
 138 0024 1749     		ldr	r1, .L39
 139 0026 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 140 002a 2046     		mov	r0, r4
 141 002c BDE8F082 		pop	{r4, r5, r6, r7, r9, pc}
 142              	.L35:
 143 0030 069A     		ldr	r2, [sp, #24]
 144 0032 0123     		movs	r3, #1
 145 0034 1370     		strb	r3, [r2]
 146 0036 0446     		mov	r4, r0
 147 0038 2846     		mov	r0, r5
 148 003a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 149 003e 124B     		ldr	r3, .L39+4
 150 0040 0146     		mov	r1, r0
 151 0042 0546     		mov	r5, r0
 152 0044 1868     		ldr	r0, [r3]
 153 0046 FFF7FEFF 		bl	_ZNK8Platform13GetEndstopPinEi
 154 004a FF28     		cmp	r0, #255
 155 004c 14D0     		beq	.L37
 156 004e 0022     		movs	r2, #0
 157 0050 3D61     		str	r5, [r7, #16]
 158 0052 3875     		strb	r0, [r7, #20]
 159 0054 BA75     		strb	r2, [r7, #22]
 160 0056 1EB9     		cbnz	r6, .L38
 161              	.L27:
 162 0058 0024     		movs	r4, #0
 163 005a 2046     		mov	r0, r4
 164 005c BDE8F082 		pop	{r4, r5, r6, r7, r9, pc}
 165              	.L38:
 166 0060 3B46     		mov	r3, r7
 167 0062 3246     		mov	r2, r6
 168 0064 0949     		ldr	r1, .L39+8
 169 0066 FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 170 006a 0028     		cmp	r0, #0
 171 006c F4D1     		bne	.L27
ARM GAS  /tmp/ccgqNnQd.s 			page 4


 172 006e 4846     		mov	r0, r9
 173 0070 0749     		ldr	r1, .L39+12
 174 0072 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 175 0076 D1E7     		b	.L26
 176              	.L37:
 177 0078 4846     		mov	r0, r9
 178 007a 0649     		ldr	r1, .L39+16
 179 007c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 180 0080 CCE7     		b	.L26
 181              	.L40:
 182 0082 00BF     		.align	2
 183              	.L39:
 184 0084 30000000 		.word	.LC2
 185 0088 00000000 		.word	reprap
 186 008c 00000000 		.word	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter
 187 0090 14000000 		.word	.LC1
 188 0094 00000000 		.word	.LC0
 189              		.size	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb, .-_ZN15Filam
 190              		.section	.text._ZN15FilamentMonitor10InitStaticEv,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	_ZN15FilamentMonitor10InitStaticEv
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	_ZN15FilamentMonitor10InitStaticEv, %function
 199              	_ZN15FilamentMonitor10InitStaticEv:
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202              		@ link register save eliminated.
 203 0000 0149     		ldr	r1, .L42
 204 0002 0248     		ldr	r0, .L42+4
 205 0004 FFF7FEBF 		b	_ZN5Mutex6CreateEPKc
 206              	.L43:
 207              		.align	2
 208              	.L42:
 209 0008 00000000 		.word	.LC3
 210 000c 00000000 		.word	.LANCHOR0
 211              		.size	_ZN15FilamentMonitor10InitStaticEv, .-_ZN15FilamentMonitor10InitStaticEv
 212              		.section	.text._ZN15FilamentMonitor6CreateEji,"ax",%progbits
 213              		.align	1
 214              		.p2align 2,,3
 215              		.global	_ZN15FilamentMonitor6CreateEji
 216              		.syntax unified
 217              		.thumb
 218              		.thumb_func
 219              		.fpu fpv4-sp-d16
 220              		.type	_ZN15FilamentMonitor6CreateEji, %function
 221              	_ZN15FilamentMonitor6CreateEji:
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224 0000 4B1E     		subs	r3, r1, #1
 225 0002 70B5     		push	{r4, r5, r6, lr}
 226 0004 0C46     		mov	r4, r1
 227 0006 0646     		mov	r6, r0
 228 0008 062B     		cmp	r3, #6
ARM GAS  /tmp/ccgqNnQd.s 			page 5


 229 000a 2FD8     		bhi	.L51
 230 000c DFE803F0 		tbb	[pc, r3]
 231              	.L47:
 232 0010 24       		.byte	(.L46-.L47)/2
 233 0011 24       		.byte	(.L46-.L47)/2
 234 0012 19       		.byte	(.L48-.L47)/2
 235 0013 19       		.byte	(.L48-.L47)/2
 236 0014 0E       		.byte	(.L49-.L47)/2
 237 0015 0E       		.byte	(.L49-.L47)/2
 238 0016 04       		.byte	(.L50-.L47)/2
 239 0017 00       		.p2align 1
 240              	.L50:
 241 0018 6020     		movs	r0, #96
 242 001a FFF7FEFF 		bl	_Znwj
 243 001e 3146     		mov	r1, r6
 244 0020 0722     		movs	r2, #7
 245 0022 0546     		mov	r5, r0
 246 0024 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitorC1Eji
 247              	.L44:
 248 0028 2846     		mov	r0, r5
 249 002a 70BD     		pop	{r4, r5, r6, pc}
 250              	.L49:
 251 002c 4FF4C270 		mov	r0, #388
 252 0030 FFF7FEFF 		bl	_Znwj
 253 0034 2246     		mov	r2, r4
 254 0036 0546     		mov	r5, r0
 255 0038 3146     		mov	r1, r6
 256 003a FFF7FEFF 		bl	_ZN20LaserFilamentMonitorC1Eji
 257 003e 2846     		mov	r0, r5
 258 0040 70BD     		pop	{r4, r5, r6, pc}
 259              	.L48:
 260 0042 4FF4C070 		mov	r0, #384
 261 0046 FFF7FEFF 		bl	_Znwj
 262 004a 2246     		mov	r2, r4
 263 004c 0546     		mov	r5, r0
 264 004e 3146     		mov	r1, r6
 265 0050 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitorC1Eji
 266 0054 2846     		mov	r0, r5
 267 0056 70BD     		pop	{r4, r5, r6, pc}
 268              	.L46:
 269 0058 1C20     		movs	r0, #28
 270 005a FFF7FEFF 		bl	_Znwj
 271 005e 2246     		mov	r2, r4
 272 0060 0546     		mov	r5, r0
 273 0062 3146     		mov	r1, r6
 274 0064 FFF7FEFF 		bl	_ZN21SimpleFilamentMonitorC1Eji
 275 0068 2846     		mov	r0, r5
 276 006a 70BD     		pop	{r4, r5, r6, pc}
 277              	.L51:
 278 006c 0025     		movs	r5, #0
 279 006e DBE7     		b	.L44
 280              		.size	_ZN15FilamentMonitor6CreateEji, .-_ZN15FilamentMonitor6CreateEji
 281              		.section	.text._ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj,"ax",%progbits
 282              		.align	1
 283              		.p2align 2,,3
 284              		.global	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj
 285              		.syntax unified
ARM GAS  /tmp/ccgqNnQd.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.fpu fpv4-sp-d16
 289              		.type	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj, %function
 290              	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj:
 291              		@ args = 0, pretend = 0, frame = 16
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 294 0004 85B0     		sub	sp, sp, #20
 295 0006 04AC     		add	r4, sp, #16
 296 0008 0023     		movs	r3, #0
 297 000a 04F80D3D 		strb	r3, [r4, #-13]!
 298 000e 8846     		mov	r8, r1
 299 0010 2346     		mov	r3, r4
 300 0012 5021     		movs	r1, #80
 301 0014 1546     		mov	r5, r2
 302 0016 01AA     		add	r2, sp, #4
 303 0018 8146     		mov	r9, r0
 304 001a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 305 001e 02A8     		add	r0, sp, #8
 306 0020 4FF0FF32 		mov	r2, #-1
 307 0024 2649     		ldr	r1, .L77
 308 0026 274E     		ldr	r6, .L77+4
 309 0028 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 310 002c 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 311 0030 23B3     		cbz	r3, .L54
 312 0032 56F82500 		ldr	r0, [r6, r5, lsl #2]
 313 0036 0199     		ldr	r1, [sp, #4]
 314 0038 78B1     		cbz	r0, .L55
 315 003a C368     		ldr	r3, [r0, #12]
 316 003c 8B42     		cmp	r3, r1
 317 003e 20D0     		beq	.L56
 318 0040 0368     		ldr	r3, [r0]
 319 0042 5B69     		ldr	r3, [r3, #20]
 320 0044 9847     		blx	r3
 321 0046 56F82500 		ldr	r0, [r6, r5, lsl #2]
 322 004a 10B1     		cbz	r0, .L57
 323 004c 0368     		ldr	r3, [r0]
 324 004e DB69     		ldr	r3, [r3, #28]
 325 0050 9847     		blx	r3
 326              	.L57:
 327 0052 0023     		movs	r3, #0
 328 0054 46F82530 		str	r3, [r6, r5, lsl #2]
 329 0058 0199     		ldr	r1, [sp, #4]
 330              	.L55:
 331 005a 2846     		mov	r0, r5
 332 005c FFF7FEFF 		bl	_ZN15FilamentMonitor6CreateEji
 333 0060 46F82500 		str	r0, [r6, r5, lsl #2]
 334 0064 68B9     		cbnz	r0, .L56
 335 0066 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 336 006a 13B3     		cbz	r3, .L63
 337              	.L76:
 338 006c 0124     		movs	r4, #1
 339              	.L59:
 340 006e 02A8     		add	r0, sp, #8
 341 0070 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 342 0074 2046     		mov	r0, r4
ARM GAS  /tmp/ccgqNnQd.s 			page 7


 343 0076 05B0     		add	sp, sp, #20
 344              		@ sp needed
 345 0078 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 346              	.L54:
 347 007c 56F82500 		ldr	r0, [r6, r5, lsl #2]
 348 0080 B8B1     		cbz	r0, .L63
 349              	.L56:
 350 0082 0768     		ldr	r7, [r0]
 351 0084 2346     		mov	r3, r4
 352 0086 4246     		mov	r2, r8
 353 0088 4946     		mov	r1, r9
 354 008a 3C68     		ldr	r4, [r7]
 355 008c A047     		blx	r4
 356 008e 0028     		cmp	r0, #0
 357 0090 ECD0     		beq	.L76
 358 0092 56F82500 		ldr	r0, [r6, r5, lsl #2]
 359 0096 0368     		ldr	r3, [r0]
 360 0098 5B69     		ldr	r3, [r3, #20]
 361 009a 9847     		blx	r3
 362 009c 56F82500 		ldr	r0, [r6, r5, lsl #2]
 363 00a0 10B1     		cbz	r0, .L60
 364 00a2 0368     		ldr	r3, [r0]
 365 00a4 DB69     		ldr	r3, [r3, #28]
 366 00a6 9847     		blx	r3
 367              	.L60:
 368 00a8 0023     		movs	r3, #0
 369 00aa 46F82530 		str	r3, [r6, r5, lsl #2]
 370 00ae 0224     		movs	r4, #2
 371 00b0 DDE7     		b	.L59
 372              	.L63:
 373 00b2 2A46     		mov	r2, r5
 374 00b4 4046     		mov	r0, r8
 375 00b6 0449     		ldr	r1, .L77+8
 376 00b8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 377 00bc D6E7     		b	.L76
 378              	.L78:
 379 00be 00BF     		.align	2
 380              	.L77:
 381 00c0 00000000 		.word	.LANCHOR0
 382 00c4 00000000 		.word	.LANCHOR1
 383 00c8 00000000 		.word	.LC4
 384              		.size	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj, .-_ZN15FilamentMonitor9Configure
 385              		.section	.text._ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus,"ax",%progbits
 386              		.align	1
 387              		.p2align 2,,3
 388              		.global	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu fpv4-sp-d16
 393              		.type	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus, %function
 394              	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus:
 395              		@ args = 0, pretend = 0, frame = 0
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397              		@ link register save eliminated.
 398 0000 0428     		cmp	r0, #4
 399 0002 9ABF     		itte	ls
ARM GAS  /tmp/ccgqNnQd.s 			page 8


 400 0004 024B     		ldrls	r3, .L82
 401 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
 402 000a 0248     		ldrhi	r0, .L82+4
 403 000c 7047     		bx	lr
 404              	.L83:
 405 000e 00BF     		.align	2
 406              	.L82:
 407 0010 00000000 		.word	.LANCHOR2
 408 0014 00000000 		.word	.LC5
 409              		.size	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus, .-_ZN15FilamentMonitor15GetErr
 410              		.section	.text._ZN15FilamentMonitor4SpinEb,"ax",%progbits
 411              		.align	1
 412              		.p2align 2,,3
 413              		.global	_ZN15FilamentMonitor4SpinEb
 414              		.syntax unified
 415              		.thumb
 416              		.thumb_func
 417              		.fpu fpv4-sp-d16
 418              		.type	_ZN15FilamentMonitor4SpinEb, %function
 419              	_ZN15FilamentMonitor4SpinEb:
 420              		@ args = 0, pretend = 0, frame = 24
 421              		@ frame_needed = 0, uses_anonymous_args = 0
 422 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 423 0004 87B0     		sub	sp, sp, #28
 424 0006 8346     		mov	fp, r0
 425 0008 4FF0FF32 		mov	r2, #-1
 426 000c 04A8     		add	r0, sp, #16
 427 000e 4149     		ldr	r1, .L107
 428 0010 414E     		ldr	r6, .L107+4
 429 0012 DFF814A1 		ldr	r10, .L107+20
 430 0016 DFF81491 		ldr	r9, .L107+24
 431 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 432 001e 0025     		movs	r5, #0
 433 0020 0BE0     		b	.L94
 434              	.L106:
 435 0022 97F85825 		ldrb	r2, [r7, #1368]	@ zero_extendqisi2
 436 0026 2368     		ldr	r3, [r4]
 437 0028 002A     		cmp	r2, #0
 438 002a 39D0     		beq	.L104
 439              	.L89:
 440 002c 9B68     		ldr	r3, [r3, #8]
 441 002e 2046     		mov	r0, r4
 442 0030 5946     		mov	r1, fp
 443 0032 9847     		blx	r3
 444              	.L85:
 445 0034 0135     		adds	r5, r5, #1
 446 0036 092D     		cmp	r5, #9
 447 0038 60D0     		beq	.L105
 448              	.L94:
 449 003a 56F8044F 		ldr	r4, [r6, #4]!
 450 003e 002C     		cmp	r4, #0
 451 0040 F8D0     		beq	.L85
 452 0042 DAF81070 		ldr	r7, [r10, #16]
 453              		.syntax unified
 454              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 455 0046 72B6     		cpsid i
 456              	@ 0 "" 2
ARM GAS  /tmp/ccgqNnQd.s 			page 9


 457              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 458 0048 BFF35F8F 		dmb
 459              	@ 0 "" 2
 460              		.thumb
 461              		.syntax unified
 462 004c 94F81680 		ldrb	r8, [r4, #22]	@ zero_extendqisi2
 463 0050 0023     		movs	r3, #0
 464 0052 89F80030 		strb	r3, [r9]
 465 0056 B8F1000F 		cmp	r8, #0
 466 005a 12D0     		beq	.L86
 467 005c A375     		strb	r3, [r4, #22]
 468 005e 0123     		movs	r3, #1
 469 0060 627D     		ldrb	r2, [r4, #21]	@ zero_extendqisi2
 470 0062 89F80030 		strb	r3, [r9]
 471 0066 6368     		ldr	r3, [r4, #4]
 472 0068 8DF80F20 		strb	r2, [sp, #15]
 473 006c 0093     		str	r3, [sp]
 474              		.syntax unified
 475              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 476 006e BFF35F8F 		dmb
 477              	@ 0 "" 2
 478              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 479 0072 62B6     		cpsie i
 480              	@ 0 "" 2
 481              		.thumb
 482              		.syntax unified
 483              	.L87:
 484 0074 3846     		mov	r0, r7
 485 0076 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv
 486 007a 0028     		cmp	r0, #0
 487 007c D1D1     		bne	.L106
 488 007e 2368     		ldr	r3, [r4]
 489 0080 D4E7     		b	.L89
 490              	.L86:
 491 0082 0123     		movs	r3, #1
 492 0084 89F80030 		strb	r3, [r9]
 493              		.syntax unified
 494              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 495 0088 BFF35F8F 		dmb
 496              	@ 0 "" 2
 497              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 498 008c 62B6     		cpsie i
 499              	@ 0 "" 2
 500              		.thumb
 501              		.syntax unified
 502 008e 0DF10F02 		add	r2, sp, #15
 503 0092 2946     		mov	r1, r5
 504 0094 DAF80800 		ldr	r0, [r10, #8]
 505 0098 FFF7FEFF 		bl	_ZN4Move23GetAccumulatedExtrusionEjRb
 506 009c 0090     		str	r0, [sp]
 507 009e E9E7     		b	.L87
 508              	.L104:
 509 00a0 D7F89802 		ldr	r0, [r7, #664]
 510 00a4 DAF80010 		ldr	r1, [r10]
 511 00a8 DDED007A 		vldr.32	s15, [sp]	@ int
 512 00ac 5B68     		ldr	r3, [r3, #4]
 513 00ae 0193     		str	r3, [sp, #4]
ARM GAS  /tmp/ccgqNnQd.s 			page 10


 514 00b0 2844     		add	r0, r0, r5
 515 00b2 01EB8001 		add	r1, r1, r0, lsl #2
 516 00b6 91ED6A0A 		vldr.32	s0, [r1, #424]
 517 00ba 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 518 00be F8EEE77A 		vcvt.f32.s32	s15, s15
 519 00c2 2046     		mov	r0, r4
 520 00c4 4346     		mov	r3, r8
 521 00c6 87EE800A 		vdiv.f32	s0, s15, s0
 522 00ca 5946     		mov	r1, fp
 523 00cc 019C     		ldr	r4, [sp, #4]
 524 00ce A047     		blx	r4
 525 00d0 BBF1000F 		cmp	fp, #0
 526 00d4 AED0     		beq	.L85
 527 00d6 0028     		cmp	r0, #0
 528 00d8 ACD0     		beq	.L85
 529 00da DAF84830 		ldr	r3, [r10, #72]
 530 00de 9B04     		lsls	r3, r3, #18
 531 00e0 12D5     		bpl	.L92
 532 00e2 0428     		cmp	r0, #4
 533 00e4 96BF     		itet	ls
 534 00e6 0D4B     		ldrls	r3, .L107+8
 535 00e8 0D4A     		ldrhi	r2, .L107+12
 536 00ea 53F82020 		ldrls	r2, [r3, r0, lsl #2]
 537 00ee 0D48     		ldr	r0, .L107+16
 538 00f0 2946     		mov	r1, r5
 539 00f2 0135     		adds	r5, r5, #1
 540 00f4 FFF7FEFF 		bl	debugPrintf
 541 00f8 092D     		cmp	r5, #9
 542 00fa 9ED1     		bne	.L94
 543              	.L105:
 544 00fc 04A8     		add	r0, sp, #16
 545 00fe FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 546 0102 07B0     		add	sp, sp, #28
 547              		@ sp needed
 548 0104 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 549              	.L92:
 550 0108 0246     		mov	r2, r0
 551 010a 2946     		mov	r1, r5
 552 010c 3846     		mov	r0, r7
 553 010e FFF7FEFF 		bl	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus
 554 0112 8FE7     		b	.L85
 555              	.L108:
 556              		.align	2
 557              	.L107:
 558 0114 00000000 		.word	.LANCHOR0
 559 0118 FCFFFFFF 		.word	.LANCHOR1-4
 560 011c 00000000 		.word	.LANCHOR2
 561 0120 00000000 		.word	.LC5
 562 0124 00000000 		.word	.LC6
 563 0128 00000000 		.word	reprap
 564 012c 00000000 		.word	g_interrupt_enabled
 565              		.size	_ZN15FilamentMonitor4SpinEb, .-_ZN15FilamentMonitor4SpinEb
 566              		.section	.text._ZN15FilamentMonitor11DiagnosticsE11MessageType,"ax",%progbits
 567              		.align	1
 568              		.p2align 2,,3
 569              		.global	_ZN15FilamentMonitor11DiagnosticsE11MessageType
 570              		.syntax unified
ARM GAS  /tmp/ccgqNnQd.s 			page 11


 571              		.thumb
 572              		.thumb_func
 573              		.fpu fpv4-sp-d16
 574              		.type	_ZN15FilamentMonitor11DiagnosticsE11MessageType, %function
 575              	_ZN15FilamentMonitor11DiagnosticsE11MessageType:
 576              		@ args = 0, pretend = 0, frame = 0
 577              		@ frame_needed = 0, uses_anonymous_args = 0
 578 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 579 0004 124D     		ldr	r5, .L127
 580 0006 DFF85080 		ldr	r8, .L127+8
 581 000a 124F     		ldr	r7, .L127+4
 582 000c 0646     		mov	r6, r0
 583 000e 0024     		movs	r4, #0
 584 0010 0123     		movs	r3, #1
 585              	.L114:
 586 0012 55F82400 		ldr	r0, [r5, r4, lsl #2]
 587 0016 A8B1     		cbz	r0, .L110
 588 0018 3BB1     		cbz	r3, .L113
 589 001a D8F80000 		ldr	r0, [r8]
 590 001e 3A46     		mov	r2, r7
 591 0020 3146     		mov	r1, r6
 592 0022 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 593 0026 55F82400 		ldr	r0, [r5, r4, lsl #2]
 594              	.L113:
 595 002a 0368     		ldr	r3, [r0]
 596 002c 2246     		mov	r2, r4
 597 002e DB68     		ldr	r3, [r3, #12]
 598 0030 3146     		mov	r1, r6
 599 0032 0134     		adds	r4, r4, #1
 600 0034 9847     		blx	r3
 601 0036 092C     		cmp	r4, #9
 602 0038 07D0     		beq	.L109
 603 003a 55F82400 		ldr	r0, [r5, r4, lsl #2]
 604 003e 0028     		cmp	r0, #0
 605 0040 F3D1     		bne	.L113
 606 0042 0346     		mov	r3, r0
 607              	.L110:
 608 0044 0134     		adds	r4, r4, #1
 609 0046 092C     		cmp	r4, #9
 610 0048 E3D1     		bne	.L114
 611              	.L109:
 612 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 613              	.L128:
 614 004e 00BF     		.align	2
 615              	.L127:
 616 0050 00000000 		.word	.LANCHOR1
 617 0054 00000000 		.word	.LC7
 618 0058 00000000 		.word	reprap
 619              		.size	_ZN15FilamentMonitor11DiagnosticsE11MessageType, .-_ZN15FilamentMonitor11DiagnosticsE11Messa
 620              		.section	.text.startup._GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE,"ax",%progbits
 621              		.align	1
 622              		.p2align 2,,3
 623              		.syntax unified
 624              		.thumb
 625              		.thumb_func
 626              		.fpu fpv4-sp-d16
 627              		.type	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE, %function
ARM GAS  /tmp/ccgqNnQd.s 			page 12


 628              	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE:
 629              		@ args = 0, pretend = 0, frame = 0
 630              		@ frame_needed = 0, uses_anonymous_args = 0
 631              		@ link register save eliminated.
 632 0000 014B     		ldr	r3, .L130
 633 0002 0022     		movs	r2, #0
 634 0004 1A60     		str	r2, [r3]
 635 0006 7047     		bx	lr
 636              	.L131:
 637              		.align	2
 638              	.L130:
 639 0008 00000000 		.word	.LANCHOR0
 640              		.size	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE, .-_GLOBAL__sub_I__ZN15FilamentMo
 641              		.section	.init_array,"aw",%init_array
 642              		.align	2
 643 0000 00000000 		.word	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE(target1)
 644              		.global	_ZTV15FilamentMonitor
 645              		.global	_ZN15FilamentMonitor15filamentSensorsE
 646              		.global	_ZN15FilamentMonitor20filamentSensorsMutexE
 647              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 648              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 649              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 650              	_ZL28cpu_irq_prev_interrupt_state:
 651 0000 00       		.space	1
 652              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 653              		.align	2
 654              		.type	_ZL32cpu_irq_critical_section_counter, %object
 655              		.size	_ZL32cpu_irq_critical_section_counter, 4
 656              	_ZL32cpu_irq_critical_section_counter:
 657 0000 00000000 		.space	4
 658              		.section	.bss._ZN15FilamentMonitor15filamentSensorsE,"aw",%nobits
 659              		.align	2
 660              		.set	.LANCHOR1,. + 0
 661              		.type	_ZN15FilamentMonitor15filamentSensorsE, %object
 662              		.size	_ZN15FilamentMonitor15filamentSensorsE, 36
 663              	_ZN15FilamentMonitor15filamentSensorsE:
 664 0000 00000000 		.space	36
 664      00000000 
 664      00000000 
 664      00000000 
 664      00000000 
 665              		.section	.bss._ZN15FilamentMonitor20filamentSensorsMutexE,"aw",%nobits
 666              		.align	2
 667              		.set	.LANCHOR0,. + 0
 668              		.type	_ZN15FilamentMonitor20filamentSensorsMutexE, %object
 669              		.size	_ZN15FilamentMonitor20filamentSensorsMutexE, 4
 670              	_ZN15FilamentMonitor20filamentSensorsMutexE:
 671 0000 00000000 		.space	4
 672              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 673              		.align	2
 674              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 675              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 676              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 677 0000 00000000 		.space	4
 678              		.section	.rodata.CSWTCH.45,"a",%progbits
 679              		.align	2
 680              		.set	.LANCHOR2,. + 0
ARM GAS  /tmp/ccgqNnQd.s 			page 13


 681              		.type	CSWTCH.45, %object
 682              		.size	CSWTCH.45, 20
 683              	CSWTCH.45:
 684 0000 00000000 		.word	.LC8
 685 0004 0C000000 		.word	.LC9
 686 0008 18000000 		.word	.LC10
 687 000c 2C000000 		.word	.LC11
 688 0010 40000000 		.word	.LC12
 689              		.section	.rodata._ZN15FilamentMonitor10InitStaticEv.str1.4,"aMS",%progbits,1
 690              		.align	2
 691              	.LC3:
 692 0000 46696C61 		.ascii	"FilamentSensors\000"
 692      6D656E74 
 692      53656E73 
 692      6F727300 
 693              		.section	.rodata._ZN15FilamentMonitor11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 694              		.align	2
 695              	.LC7:
 696 0000 3D3D3D20 		.ascii	"=== Filament sensors ===\012\000"
 696      46696C61 
 696      6D656E74 
 696      2073656E 
 696      736F7273 
 697              		.section	.rodata._ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb.st
 698              		.align	2
 699              	.LC0:
 700 0000 62616420 		.ascii	"bad endstop number\000"
 700      656E6473 
 700      746F7020 
 700      6E756D62 
 700      657200
 701 0013 00       		.space	1
 702              	.LC1:
 703 0014 756E7375 		.ascii	"unsuitable endstop number\000"
 703      69746162 
 703      6C652065 
 703      6E647374 
 703      6F70206E 
 704 002e 0000     		.space	2
 705              	.LC2:
 706 0030 6E6F2065 		.ascii	"no endstop number given\000"
 706      6E647374 
 706      6F70206E 
 706      756D6265 
 706      72206769 
 707              		.section	.rodata._ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus.str1.4,"aMS",%progbi
 708              		.align	2
 709              	.LC5:
 710 0000 756E6B6E 		.ascii	"unknown error\000"
 710      6F776E20 
 710      6572726F 
 710      7200
 711              		.section	.rodata._ZN15FilamentMonitor4SpinEb.str1.4,"aMS",%progbits,1
 712              		.align	2
 713              	.LC6:
 714 0000 46696C61 		.ascii	"Filament error: extruder %u reports %s\012\000"
 714      6D656E74 
ARM GAS  /tmp/ccgqNnQd.s 			page 14


 714      20657272 
 714      6F723A20 
 714      65787472 
 715              		.section	.rodata._ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj.str1.4,"aMS",%progbits
 716              		.align	2
 717              	.LC4:
 718 0000 45787472 		.ascii	"Extruder drive %u has no filament sensor\000"
 718      75646572 
 718      20647269 
 718      76652025 
 718      75206861 
 719              		.section	.rodata._ZTV15FilamentMonitor,"a",%progbits
 720              		.align	2
 721              		.type	_ZTV15FilamentMonitor, %object
 722              		.size	_ZTV15FilamentMonitor, 40
 723              	_ZTV15FilamentMonitor:
 724 0000 00000000 		.word	0
 725 0004 00000000 		.word	0
 726 0008 00000000 		.word	__cxa_pure_virtual
 727 000c 00000000 		.word	__cxa_pure_virtual
 728 0010 00000000 		.word	__cxa_pure_virtual
 729 0014 00000000 		.word	__cxa_pure_virtual
 730 0018 00000000 		.word	__cxa_pure_virtual
 731 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 732 0020 00000000 		.word	0
 733 0024 00000000 		.word	0
 734              		.section	.rodata.str1.4,"aMS",%progbits,1
 735              		.align	2
 736              	.LC8:
 737 0000 6E6F2065 		.ascii	"no error\000"
 737      72726F72 
 737      00
 738 0009 000000   		.space	3
 739              	.LC9:
 740 000c 6E6F2066 		.ascii	"no filament\000"
 740      696C616D 
 740      656E7400 
 741              	.LC10:
 742 0018 746F6F20 		.ascii	"too little movement\000"
 742      6C697474 
 742      6C65206D 
 742      6F76656D 
 742      656E7400 
 743              	.LC11:
 744 002c 746F6F20 		.ascii	"too much movement\000"
 744      6D756368 
 744      206D6F76 
 744      656D656E 
 744      7400
 745 003e 0000     		.space	2
 746              	.LC12:
 747 0040 73656E73 		.ascii	"sensor not working\000"
 747      6F72206E 
 747      6F742077 
 747      6F726B69 
 747      6E6700
 748              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
ARM GAS  /tmp/ccgqNnQd.s 			page 15


