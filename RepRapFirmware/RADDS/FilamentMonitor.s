ARM GAS  /tmp/cc7o5dZg.s 			page 1


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
  11              		.file	"FilamentMonitor.cpp"
  12              		.section	.text._ZN15FilamentMonitor7DisableEv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN15FilamentMonitor7DisableEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN15FilamentMonitor7DisableEv, %function
  21              	_ZN15FilamentMonitor7DisableEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
  25 0002 FF2B     		cmp	r3, #255
  26 0004 07D0     		beq	.L7
  27 0006 10B5     		push	{r4, lr}
  28 0008 0446     		mov	r4, r0
  29 000a 1846     		mov	r0, r3
  30 000c FFF7FEFF 		bl	_Z15detachInterruptm
  31 0010 FF23     		movs	r3, #255
  32 0012 2375     		strb	r3, [r4, #20]
  33 0014 10BD     		pop	{r4, pc}
  34              	.L7:
  35 0016 7047     		bx	lr
  36              		.size	_ZN15FilamentMonitor7DisableEv, .-_ZN15FilamentMonitor7DisableEv
  37              		.section	.text._ZN15FilamentMonitor14InterruptEntryE17CallbackParameter,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu softvfp
  45              		.type	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter, %function
  46              	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49 0000 0368     		ldr	r3, [r0]
  50 0002 10B5     		push	{r4, lr}
  51 0004 1B69     		ldr	r3, [r3, #16]
  52 0006 0446     		mov	r4, r0
  53 0008 9847     		blx	r3
  54 000a 48B1     		cbz	r0, .L11
  55 000c 054B     		ldr	r3, .L17
  56 000e 04F11502 		add	r2, r4, #21
  57 0012 9868     		ldr	r0, [r3, #8]	@ unaligned
ARM GAS  /tmp/cc7o5dZg.s 			page 2


  58 0014 A168     		ldr	r1, [r4, #8]
  59 0016 FFF7FEFF 		bl	_ZN4Move23GetAccumulatedExtrusionEjRb
  60 001a 0123     		movs	r3, #1
  61 001c 6060     		str	r0, [r4, #4]
  62 001e A375     		strb	r3, [r4, #22]
  63              	.L11:
  64 0020 10BD     		pop	{r4, pc}
  65              	.L18:
  66 0022 00BF     		.align	2
  67              	.L17:
  68 0024 00000000 		.word	reprap
  69              		.size	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter, .-_ZN15FilamentMonitor14InterruptE
  70              		.section	.text._ZN15FilamentMonitorD2Ev,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	_ZN15FilamentMonitorD2Ev
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu softvfp
  78              		.type	_ZN15FilamentMonitorD2Ev, %function
  79              	_ZN15FilamentMonitorD2Ev:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 7047     		bx	lr
  84              		.size	_ZN15FilamentMonitorD2Ev, .-_ZN15FilamentMonitorD2Ev
  85              		.global	_ZN15FilamentMonitorD1Ev
  86              		.thumb_set _ZN15FilamentMonitorD1Ev,_ZN15FilamentMonitorD2Ev
  87 0002 00BF     		.section	.text._ZN15FilamentMonitorD0Ev,"ax",%progbits
  88              		.align	1
  89              		.p2align 2,,3
  90              		.global	_ZN15FilamentMonitorD0Ev
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu softvfp
  95              		.type	_ZN15FilamentMonitorD0Ev, %function
  96              	_ZN15FilamentMonitorD0Ev:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99 0000 10B5     		push	{r4, lr}
 100 0002 0446     		mov	r4, r0
 101 0004 1821     		movs	r1, #24
 102 0006 FFF7FEFF 		bl	_ZdlPvj
 103 000a 2046     		mov	r0, r4
 104 000c 10BD     		pop	{r4, pc}
 105              		.size	_ZN15FilamentMonitorD0Ev, .-_ZN15FilamentMonitorD0Ev
 106 000e 00BF     		.section	.text._ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb,"ax"
 107              		.align	1
 108              		.p2align 2,,3
 109              		.global	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu softvfp
 114              		.type	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb, %function
ARM GAS  /tmp/cc7o5dZg.s 			page 3


 115              	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb:
 116              		@ args = 4, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 119 0004 0D46     		mov	r5, r1
 120 0006 0746     		mov	r7, r0
 121 0008 4321     		movs	r1, #67
 122 000a 2846     		mov	r0, r5
 123 000c 9046     		mov	r8, r2
 124 000e 1E46     		mov	r6, r3
 125 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 126 0014 68B9     		cbnz	r0, .L36
 127 0016 069B     		ldr	r3, [sp, #24]
 128 0018 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 129 001a 1CB9     		cbnz	r4, .L37
 130              	.L27:
 131 001c 0024     		movs	r4, #0
 132              	.L32:
 133 001e 2046     		mov	r0, r4
 134 0020 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 135              	.L37:
 136 0024 4046     		mov	r0, r8
 137 0026 1649     		ldr	r1, .L39
 138 0028 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 139 002c 2046     		mov	r0, r4
 140 002e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 141              	.L36:
 142 0032 0123     		movs	r3, #1
 143 0034 069A     		ldr	r2, [sp, #24]
 144 0036 0446     		mov	r4, r0
 145 0038 1370     		strb	r3, [r2]
 146 003a 2846     		mov	r0, r5
 147 003c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 148 0040 104B     		ldr	r3, .L39+4
 149 0042 0146     		mov	r1, r0
 150 0044 0546     		mov	r5, r0
 151 0046 1868     		ldr	r0, [r3]
 152 0048 FFF7FEFF 		bl	_ZNK8Platform13GetEndstopPinEi
 153 004c FF28     		cmp	r0, #255
 154 004e 11D0     		beq	.L38
 155 0050 0022     		movs	r2, #0
 156 0052 3D61     		str	r5, [r7, #16]
 157 0054 3875     		strb	r0, [r7, #20]
 158 0056 BA75     		strb	r2, [r7, #22]
 159 0058 002E     		cmp	r6, #0
 160 005a DFD0     		beq	.L27
 161 005c 3B46     		mov	r3, r7
 162 005e 3246     		mov	r2, r6
 163 0060 0949     		ldr	r1, .L39+8
 164 0062 FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 165 0066 0028     		cmp	r0, #0
 166 0068 D8D1     		bne	.L27
 167 006a 4046     		mov	r0, r8
 168 006c 0749     		ldr	r1, .L39+12
 169 006e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 170 0072 D4E7     		b	.L32
 171              	.L38:
ARM GAS  /tmp/cc7o5dZg.s 			page 4


 172 0074 4046     		mov	r0, r8
 173 0076 0649     		ldr	r1, .L39+16
 174 0078 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 175 007c CFE7     		b	.L32
 176              	.L40:
 177 007e 00BF     		.align	2
 178              	.L39:
 179 0080 14000000 		.word	.LC1
 180 0084 00000000 		.word	reprap
 181 0088 00000000 		.word	_ZN15FilamentMonitor14InterruptEntryE17CallbackParameter
 182 008c 2C000000 		.word	.LC2
 183 0090 00000000 		.word	.LC0
 184              		.size	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb, .-_ZN15Filam
 185              		.section	.text._ZN15FilamentMonitor10InitStaticEv,"ax",%progbits
 186              		.align	1
 187              		.p2align 2,,3
 188              		.global	_ZN15FilamentMonitor10InitStaticEv
 189              		.syntax unified
 190              		.thumb
 191              		.thumb_func
 192              		.fpu softvfp
 193              		.type	_ZN15FilamentMonitor10InitStaticEv, %function
 194              	_ZN15FilamentMonitor10InitStaticEv:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197              		@ link register save eliminated.
 198 0000 0149     		ldr	r1, .L42
 199 0002 0248     		ldr	r0, .L42+4
 200 0004 FFF7FEBF 		b	_ZN5Mutex6CreateEPKc
 201              	.L43:
 202              		.align	2
 203              	.L42:
 204 0008 00000000 		.word	.LC3
 205 000c 00000000 		.word	.LANCHOR0
 206              		.size	_ZN15FilamentMonitor10InitStaticEv, .-_ZN15FilamentMonitor10InitStaticEv
 207              		.section	.text._ZN15FilamentMonitor6CreateEji,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	_ZN15FilamentMonitor6CreateEji
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu softvfp
 215              		.type	_ZN15FilamentMonitor6CreateEji, %function
 216              	_ZN15FilamentMonitor6CreateEji:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219 0000 4B1E     		subs	r3, r1, #1
 220 0002 70B5     		push	{r4, r5, r6, lr}
 221 0004 0D46     		mov	r5, r1
 222 0006 0646     		mov	r6, r0
 223 0008 062B     		cmp	r3, #6
 224 000a 2FD8     		bhi	.L51
 225 000c DFE803F0 		tbb	[pc, r3]
 226              	.L47:
 227 0010 24       		.byte	(.L46-.L47)/2
 228 0011 24       		.byte	(.L46-.L47)/2
ARM GAS  /tmp/cc7o5dZg.s 			page 5


 229 0012 19       		.byte	(.L48-.L47)/2
 230 0013 19       		.byte	(.L48-.L47)/2
 231 0014 0E       		.byte	(.L49-.L47)/2
 232 0015 0E       		.byte	(.L49-.L47)/2
 233 0016 04       		.byte	(.L50-.L47)/2
 234 0017 00       		.p2align 1
 235              	.L50:
 236 0018 6020     		movs	r0, #96
 237 001a FFF7FEFF 		bl	_Znwj
 238 001e 0446     		mov	r4, r0
 239 0020 3146     		mov	r1, r6
 240 0022 0722     		movs	r2, #7
 241 0024 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitorC1Eji
 242 0028 2046     		mov	r0, r4
 243 002a 70BD     		pop	{r4, r5, r6, pc}
 244              	.L49:
 245 002c 4FF4C270 		mov	r0, #388
 246 0030 FFF7FEFF 		bl	_Znwj
 247 0034 0446     		mov	r4, r0
 248 0036 2A46     		mov	r2, r5
 249 0038 3146     		mov	r1, r6
 250 003a FFF7FEFF 		bl	_ZN20LaserFilamentMonitorC1Eji
 251 003e 2046     		mov	r0, r4
 252 0040 70BD     		pop	{r4, r5, r6, pc}
 253              	.L48:
 254 0042 4FF4C070 		mov	r0, #384
 255 0046 FFF7FEFF 		bl	_Znwj
 256 004a 0446     		mov	r4, r0
 257 004c 2A46     		mov	r2, r5
 258 004e 3146     		mov	r1, r6
 259 0050 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitorC1Eji
 260 0054 2046     		mov	r0, r4
 261 0056 70BD     		pop	{r4, r5, r6, pc}
 262              	.L46:
 263 0058 1C20     		movs	r0, #28
 264 005a FFF7FEFF 		bl	_Znwj
 265 005e 0446     		mov	r4, r0
 266 0060 2A46     		mov	r2, r5
 267 0062 3146     		mov	r1, r6
 268 0064 FFF7FEFF 		bl	_ZN21SimpleFilamentMonitorC1Eji
 269 0068 2046     		mov	r0, r4
 270 006a 70BD     		pop	{r4, r5, r6, pc}
 271              	.L51:
 272 006c 0020     		movs	r0, #0
 273 006e 70BD     		pop	{r4, r5, r6, pc}
 274              		.size	_ZN15FilamentMonitor6CreateEji, .-_ZN15FilamentMonitor6CreateEji
 275              		.section	.text._ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.global	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj
 279              		.syntax unified
 280              		.thumb
 281              		.thumb_func
 282              		.fpu softvfp
 283              		.type	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj, %function
 284              	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj:
 285              		@ args = 0, pretend = 0, frame = 16
ARM GAS  /tmp/cc7o5dZg.s 			page 6


 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287 0000 0023     		movs	r3, #0
 288 0002 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 289 0006 1546     		mov	r5, r2
 290 0008 85B0     		sub	sp, sp, #20
 291 000a 04AC     		add	r4, sp, #16
 292 000c 04F80D3D 		strb	r3, [r4, #-13]!
 293 0010 2346     		mov	r3, r4
 294 0012 01AA     		add	r2, sp, #4
 295 0014 8846     		mov	r8, r1
 296 0016 5021     		movs	r1, #80
 297 0018 8146     		mov	r9, r0
 298 001a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 299 001e 02A8     		add	r0, sp, #8
 300 0020 4FF0FF32 		mov	r2, #-1
 301 0024 2549     		ldr	r1, .L76
 302 0026 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 303 002a 254E     		ldr	r6, .L76+4
 304 002c 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 305 0030 56F82500 		ldr	r0, [r6, r5, lsl #2]
 306 0034 13B3     		cbz	r3, .L54
 307 0036 78B1     		cbz	r0, .L55
 308 0038 019A     		ldr	r2, [sp, #4]
 309 003a C368     		ldr	r3, [r0, #12]
 310 003c 9A42     		cmp	r2, r3
 311 003e 1ED0     		beq	.L57
 312 0040 0368     		ldr	r3, [r0]
 313 0042 5B69     		ldr	r3, [r3, #20]
 314 0044 9847     		blx	r3
 315 0046 56F82500 		ldr	r0, [r6, r5, lsl #2]
 316 004a 10B1     		cbz	r0, .L63
 317 004c 0368     		ldr	r3, [r0]
 318 004e DB69     		ldr	r3, [r3, #28]
 319 0050 9847     		blx	r3
 320              	.L63:
 321 0052 0023     		movs	r3, #0
 322 0054 46F82530 		str	r3, [r6, r5, lsl #2]
 323              	.L55:
 324 0058 0199     		ldr	r1, [sp, #4]
 325 005a 2846     		mov	r0, r5
 326 005c FFF7FEFF 		bl	_ZN15FilamentMonitor6CreateEji
 327 0060 46F82500 		str	r0, [r6, r5, lsl #2]
 328 0064 58B9     		cbnz	r0, .L57
 329 0066 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 330 006a 03B3     		cbz	r3, .L65
 331              	.L75:
 332 006c 0124     		movs	r4, #1
 333              	.L59:
 334 006e 02A8     		add	r0, sp, #8
 335 0070 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 336 0074 2046     		mov	r0, r4
 337 0076 05B0     		add	sp, sp, #20
 338              		@ sp needed
 339 0078 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 340              	.L54:
 341 007c B8B1     		cbz	r0, .L65
 342              	.L57:
ARM GAS  /tmp/cc7o5dZg.s 			page 7


 343 007e 0768     		ldr	r7, [r0]
 344 0080 2346     		mov	r3, r4
 345 0082 4246     		mov	r2, r8
 346 0084 4946     		mov	r1, r9
 347 0086 3C68     		ldr	r4, [r7]
 348 0088 A047     		blx	r4
 349 008a 0028     		cmp	r0, #0
 350 008c EED0     		beq	.L75
 351 008e 56F82500 		ldr	r0, [r6, r5, lsl #2]
 352 0092 0368     		ldr	r3, [r0]
 353 0094 5B69     		ldr	r3, [r3, #20]
 354 0096 9847     		blx	r3
 355 0098 56F82500 		ldr	r0, [r6, r5, lsl #2]
 356 009c 10B1     		cbz	r0, .L60
 357 009e 0368     		ldr	r3, [r0]
 358 00a0 DB69     		ldr	r3, [r3, #28]
 359 00a2 9847     		blx	r3
 360              	.L60:
 361 00a4 0023     		movs	r3, #0
 362 00a6 0224     		movs	r4, #2
 363 00a8 46F82530 		str	r3, [r6, r5, lsl #2]
 364 00ac DFE7     		b	.L59
 365              	.L65:
 366 00ae 2A46     		mov	r2, r5
 367 00b0 4046     		mov	r0, r8
 368 00b2 0449     		ldr	r1, .L76+8
 369 00b4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 370 00b8 D8E7     		b	.L75
 371              	.L77:
 372 00ba 00BF     		.align	2
 373              	.L76:
 374 00bc 00000000 		.word	.LANCHOR0
 375 00c0 00000000 		.word	.LANCHOR1
 376 00c4 00000000 		.word	.LC4
 377              		.size	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj, .-_ZN15FilamentMonitor9Configure
 378              		.section	.text._ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus,"ax",%progbits
 379              		.align	1
 380              		.p2align 2,,3
 381              		.global	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus
 382              		.syntax unified
 383              		.thumb
 384              		.thumb_func
 385              		.fpu softvfp
 386              		.type	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus, %function
 387              	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus:
 388              		@ args = 0, pretend = 0, frame = 0
 389              		@ frame_needed = 0, uses_anonymous_args = 0
 390              		@ link register save eliminated.
 391 0000 0428     		cmp	r0, #4
 392 0002 9ABF     		itte	ls
 393 0004 024B     		ldrls	r3, .L81
 394 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
 395 000a 0248     		ldrhi	r0, .L81+4
 396 000c 7047     		bx	lr
 397              	.L82:
 398 000e 00BF     		.align	2
 399              	.L81:
ARM GAS  /tmp/cc7o5dZg.s 			page 8


 400 0010 00000000 		.word	.LANCHOR2
 401 0014 00000000 		.word	.LC5
 402              		.size	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus, .-_ZN15FilamentMonitor15GetErr
 403              		.global	__aeabi_i2f
 404              		.global	__aeabi_fdiv
 405              		.section	.text._ZN15FilamentMonitor4SpinEb,"ax",%progbits
 406              		.align	1
 407              		.p2align 2,,3
 408              		.global	_ZN15FilamentMonitor4SpinEb
 409              		.syntax unified
 410              		.thumb
 411              		.thumb_func
 412              		.fpu softvfp
 413              		.type	_ZN15FilamentMonitor4SpinEb, %function
 414              	_ZN15FilamentMonitor4SpinEb:
 415              		@ args = 0, pretend = 0, frame = 24
 416              		@ frame_needed = 0, uses_anonymous_args = 0
 417 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 418 0004 89B0     		sub	sp, sp, #36
 419 0006 8346     		mov	fp, r0
 420 0008 4FF0FF32 		mov	r2, #-1
 421 000c 06A8     		add	r0, sp, #24
 422 000e 4149     		ldr	r1, .L108
 423 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 424 0014 0025     		movs	r5, #0
 425 0016 404F     		ldr	r7, .L108+4
 426 0018 DFF80CA1 		ldr	r10, .L108+20
 427 001c DFF80C91 		ldr	r9, .L108+24
 428              	.L92:
 429 0020 57F8044B 		ldr	r4, [r7], #4
 430 0024 002C     		cmp	r4, #0
 431 0026 4AD0     		beq	.L84
 432 0028 DAF81060 		ldr	r6, [r10, #16]
 433              		.syntax unified
 434              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 435 002c 72B6     		cpsid i
 436              	@ 0 "" 2
 437              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 438 002e BFF35F8F 		dmb
 439              	@ 0 "" 2
 440              		.thumb
 441              		.syntax unified
 442 0032 0023     		movs	r3, #0
 443 0034 94F81680 		ldrb	r8, [r4, #22]	@ zero_extendqisi2
 444 0038 89F80030 		strb	r3, [r9]
 445 003c B8F1000F 		cmp	r8, #0
 446 0040 4FD0     		beq	.L85
 447 0042 0121     		movs	r1, #1
 448 0044 627D     		ldrb	r2, [r4, #21]	@ zero_extendqisi2
 449 0046 A375     		strb	r3, [r4, #22]
 450 0048 6368     		ldr	r3, [r4, #4]
 451 004a 89F80010 		strb	r1, [r9]
 452 004e 8DF81720 		strb	r2, [sp, #23]
 453 0052 0393     		str	r3, [sp, #12]
 454              		.syntax unified
 455              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 456 0054 BFF35F8F 		dmb
ARM GAS  /tmp/cc7o5dZg.s 			page 9


 457              	@ 0 "" 2
 458              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 459 0058 62B6     		cpsie i
 460              	@ 0 "" 2
 461              		.thumb
 462              		.syntax unified
 463              	.L86:
 464 005a 3046     		mov	r0, r6
 465 005c FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv
 466 0060 0028     		cmp	r0, #0
 467 0062 35D0     		beq	.L87
 468 0064 96F83033 		ldrb	r3, [r6, #816]	@ zero_extendqisi2
 469 0068 93BB     		cbnz	r3, .L87
 470 006a 0398     		ldr	r0, [sp, #12]
 471 006c FFF7FEFF 		bl	__aeabi_i2f
 472 0070 D6F8F821 		ldr	r2, [r6, #504]
 473 0074 DAF80030 		ldr	r3, [r10]
 474 0078 2A44     		add	r2, r2, r5
 475 007a 03EB8203 		add	r3, r3, r2, lsl #2
 476 007e D3F82411 		ldr	r1, [r3, #292]	@ float
 477 0082 FFF7FEFF 		bl	__aeabi_fdiv
 478 0086 2168     		ldr	r1, [r4]
 479 0088 0090     		str	r0, [sp]	@ float
 480 008a 4346     		mov	r3, r8
 481 008c 9DF81720 		ldrb	r2, [sp, #23]	@ zero_extendqisi2
 482 0090 D1F80480 		ldr	r8, [r1, #4]
 483 0094 2046     		mov	r0, r4
 484 0096 5946     		mov	r1, fp
 485 0098 C047     		blx	r8
 486 009a BBF1000F 		cmp	fp, #0
 487 009e 0ED0     		beq	.L84
 488 00a0 68B1     		cbz	r0, .L84
 489 00a2 DAF84430 		ldr	r3, [r10, #68]
 490 00a6 9B04     		lsls	r3, r3, #18
 491 00a8 2AD5     		bpl	.L90
 492 00aa 0428     		cmp	r0, #4
 493 00ac 96BF     		itet	ls
 494 00ae 1B4B     		ldrls	r3, .L108+8
 495 00b0 1B4A     		ldrhi	r2, .L108+12
 496 00b2 53F82020 		ldrls	r2, [r3, r0, lsl #2]
 497 00b6 2946     		mov	r1, r5
 498 00b8 1A48     		ldr	r0, .L108+16
 499 00ba FFF7FEFF 		bl	debugPrintf
 500              	.L84:
 501 00be 0135     		adds	r5, r5, #1
 502 00c0 062D     		cmp	r5, #6
 503 00c2 ADD1     		bne	.L92
 504              	.L107:
 505 00c4 06A8     		add	r0, sp, #24
 506 00c6 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 507 00ca 09B0     		add	sp, sp, #36
 508              		@ sp needed
 509 00cc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 510              	.L87:
 511 00d0 2368     		ldr	r3, [r4]
 512 00d2 2046     		mov	r0, r4
 513 00d4 9B68     		ldr	r3, [r3, #8]
ARM GAS  /tmp/cc7o5dZg.s 			page 10


 514 00d6 5946     		mov	r1, fp
 515 00d8 0135     		adds	r5, r5, #1
 516 00da 9847     		blx	r3
 517 00dc 062D     		cmp	r5, #6
 518 00de 9FD1     		bne	.L92
 519 00e0 F0E7     		b	.L107
 520              	.L85:
 521 00e2 0123     		movs	r3, #1
 522 00e4 89F80030 		strb	r3, [r9]
 523              		.syntax unified
 524              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 525 00e8 BFF35F8F 		dmb
 526              	@ 0 "" 2
 527              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 528 00ec 62B6     		cpsie i
 529              	@ 0 "" 2
 530              		.thumb
 531              		.syntax unified
 532 00ee 0DF11702 		add	r2, sp, #23
 533 00f2 2946     		mov	r1, r5
 534 00f4 DAF80800 		ldr	r0, [r10, #8]
 535 00f8 FFF7FEFF 		bl	_ZN4Move23GetAccumulatedExtrusionEjRb
 536 00fc 0390     		str	r0, [sp, #12]
 537 00fe ACE7     		b	.L86
 538              	.L90:
 539 0100 0246     		mov	r2, r0
 540 0102 2946     		mov	r1, r5
 541 0104 3046     		mov	r0, r6
 542 0106 0135     		adds	r5, r5, #1
 543 0108 FFF7FEFF 		bl	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus
 544 010c 062D     		cmp	r5, #6
 545 010e 87D1     		bne	.L92
 546 0110 D8E7     		b	.L107
 547              	.L109:
 548 0112 00BF     		.align	2
 549              	.L108:
 550 0114 00000000 		.word	.LANCHOR0
 551 0118 00000000 		.word	.LANCHOR1
 552 011c 00000000 		.word	.LANCHOR2
 553 0120 00000000 		.word	.LC5
 554 0124 00000000 		.word	.LC6
 555 0128 00000000 		.word	reprap
 556 012c 00000000 		.word	g_interrupt_enabled
 557              		.size	_ZN15FilamentMonitor4SpinEb, .-_ZN15FilamentMonitor4SpinEb
 558              		.section	.text._ZN15FilamentMonitor11DiagnosticsE11MessageType,"ax",%progbits
 559              		.align	1
 560              		.p2align 2,,3
 561              		.global	_ZN15FilamentMonitor11DiagnosticsE11MessageType
 562              		.syntax unified
 563              		.thumb
 564              		.thumb_func
 565              		.fpu softvfp
 566              		.type	_ZN15FilamentMonitor11DiagnosticsE11MessageType, %function
 567              	_ZN15FilamentMonitor11DiagnosticsE11MessageType:
 568              		@ args = 0, pretend = 0, frame = 0
 569              		@ frame_needed = 0, uses_anonymous_args = 0
 570 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
ARM GAS  /tmp/cc7o5dZg.s 			page 11


 571 0004 0123     		movs	r3, #1
 572 0006 0746     		mov	r7, r0
 573 0008 0025     		movs	r5, #0
 574 000a DFF86080 		ldr	r8, .L135
 575 000e DFF860A0 		ldr	r10, .L135+4
 576 0012 DFF86090 		ldr	r9, .L135+8
 577              	.L117:
 578 0016 58F82500 		ldr	r0, [r8, r5, lsl #2]
 579 001a 10B3     		cbz	r0, .L111
 580 001c 3BB1     		cbz	r3, .L116
 581 001e DAF80000 		ldr	r0, [r10]
 582 0022 4A46     		mov	r2, r9
 583 0024 3946     		mov	r1, r7
 584 0026 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 585 002a 58F82500 		ldr	r0, [r8, r5, lsl #2]
 586              	.L116:
 587 002e 6C1C     		adds	r4, r5, #1
 588 0030 08EB8406 		add	r6, r8, r4, lsl #2
 589 0034 04E0     		b	.L114
 590              	.L134:
 591 0036 56F8040B 		ldr	r0, [r6], #4
 592 003a 50B1     		cbz	r0, .L133
 593 003c 2546     		mov	r5, r4
 594 003e 0134     		adds	r4, r4, #1
 595              	.L114:
 596 0040 0368     		ldr	r3, [r0]
 597 0042 2A46     		mov	r2, r5
 598 0044 DB68     		ldr	r3, [r3, #12]
 599 0046 3946     		mov	r1, r7
 600 0048 9847     		blx	r3
 601 004a 062C     		cmp	r4, #6
 602 004c F3D1     		bne	.L134
 603              	.L110:
 604 004e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 605              	.L133:
 606 0052 0235     		adds	r5, r5, #2
 607 0054 062D     		cmp	r5, #6
 608 0056 FAD0     		beq	.L110
 609 0058 58F82500 		ldr	r0, [r8, r5, lsl #2]
 610 005c 0028     		cmp	r0, #0
 611 005e E6D1     		bne	.L116
 612 0060 0346     		mov	r3, r0
 613              	.L111:
 614 0062 0135     		adds	r5, r5, #1
 615 0064 062D     		cmp	r5, #6
 616 0066 D6D1     		bne	.L117
 617 0068 F1E7     		b	.L110
 618              	.L136:
 619 006a 00BF     		.align	2
 620              	.L135:
 621 006c 00000000 		.word	.LANCHOR1
 622 0070 00000000 		.word	reprap
 623 0074 00000000 		.word	.LC7
 624              		.size	_ZN15FilamentMonitor11DiagnosticsE11MessageType, .-_ZN15FilamentMonitor11DiagnosticsE11Messa
 625              		.section	.text.startup._GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE,"ax",%progbits
 626              		.align	1
 627              		.p2align 2,,3
ARM GAS  /tmp/cc7o5dZg.s 			page 12


 628              		.syntax unified
 629              		.thumb
 630              		.thumb_func
 631              		.fpu softvfp
 632              		.type	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE, %function
 633              	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE:
 634              		@ args = 0, pretend = 0, frame = 0
 635              		@ frame_needed = 0, uses_anonymous_args = 0
 636              		@ link register save eliminated.
 637 0000 0022     		movs	r2, #0
 638 0002 014B     		ldr	r3, .L138
 639 0004 1A60     		str	r2, [r3]
 640 0006 7047     		bx	lr
 641              	.L139:
 642              		.align	2
 643              	.L138:
 644 0008 00000000 		.word	.LANCHOR0
 645              		.size	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE, .-_GLOBAL__sub_I__ZN15FilamentMo
 646              		.section	.init_array,"aw",%init_array
 647              		.align	2
 648 0000 00000000 		.word	_GLOBAL__sub_I__ZN15FilamentMonitor20filamentSensorsMutexE(target1)
 649              		.global	_ZTV15FilamentMonitor
 650              		.global	_ZN15FilamentMonitor15filamentSensorsE
 651              		.global	_ZN15FilamentMonitor20filamentSensorsMutexE
 652              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 653              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 654              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 655              	_ZL28cpu_irq_prev_interrupt_state:
 656 0000 00       		.space	1
 657              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 658              		.align	2
 659              		.type	_ZL32cpu_irq_critical_section_counter, %object
 660              		.size	_ZL32cpu_irq_critical_section_counter, 4
 661              	_ZL32cpu_irq_critical_section_counter:
 662 0000 00000000 		.space	4
 663              		.section	.bss._ZN15FilamentMonitor15filamentSensorsE,"aw",%nobits
 664              		.align	2
 665              		.set	.LANCHOR1,. + 0
 666              		.type	_ZN15FilamentMonitor15filamentSensorsE, %object
 667              		.size	_ZN15FilamentMonitor15filamentSensorsE, 24
 668              	_ZN15FilamentMonitor15filamentSensorsE:
 669 0000 00000000 		.space	24
 669      00000000 
 669      00000000 
 669      00000000 
 669      00000000 
 670              		.section	.bss._ZN15FilamentMonitor20filamentSensorsMutexE,"aw",%nobits
 671              		.align	2
 672              		.set	.LANCHOR0,. + 0
 673              		.type	_ZN15FilamentMonitor20filamentSensorsMutexE, %object
 674              		.size	_ZN15FilamentMonitor20filamentSensorsMutexE, 4
 675              	_ZN15FilamentMonitor20filamentSensorsMutexE:
 676 0000 00000000 		.space	4
 677              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 678              		.align	2
 679              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 680              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
ARM GAS  /tmp/cc7o5dZg.s 			page 13


 681              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 682 0000 00000000 		.space	4
 683              		.section	.rodata.CSWTCH.45,"a",%progbits
 684              		.align	2
 685              		.set	.LANCHOR2,. + 0
 686              		.type	CSWTCH.45, %object
 687              		.size	CSWTCH.45, 20
 688              	CSWTCH.45:
 689 0000 00000000 		.word	.LC8
 690 0004 0C000000 		.word	.LC9
 691 0008 18000000 		.word	.LC10
 692 000c 2C000000 		.word	.LC11
 693 0010 40000000 		.word	.LC12
 694              		.section	.rodata._ZN15FilamentMonitor10InitStaticEv.str1.4,"aMS",%progbits,1
 695              		.align	2
 696              	.LC3:
 697 0000 46696C61 		.ascii	"FilamentSensors\000"
 697      6D656E74 
 697      53656E73 
 697      6F727300 
 698              		.section	.rodata._ZN15FilamentMonitor11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 699              		.align	2
 700              	.LC7:
 701 0000 3D3D3D20 		.ascii	"=== Filament sensors ===\012\000"
 701      46696C61 
 701      6D656E74 
 701      2073656E 
 701      736F7273 
 702              		.section	.rodata._ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb.st
 703              		.align	2
 704              	.LC0:
 705 0000 62616420 		.ascii	"bad endstop number\000"
 705      656E6473 
 705      746F7020 
 705      6E756D62 
 705      657200
 706 0013 00       		.space	1
 707              	.LC1:
 708 0014 6E6F2065 		.ascii	"no endstop number given\000"
 708      6E647374 
 708      6F70206E 
 708      756D6265 
 708      72206769 
 709              	.LC2:
 710 002c 756E7375 		.ascii	"unsuitable endstop number\000"
 710      69746162 
 710      6C652065 
 710      6E647374 
 710      6F70206E 
 711              		.section	.rodata._ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus.str1.4,"aMS",%progbi
 712              		.align	2
 713              	.LC5:
 714 0000 756E6B6E 		.ascii	"unknown error\000"
 714      6F776E20 
 714      6572726F 
 714      7200
 715              		.section	.rodata._ZN15FilamentMonitor4SpinEb.str1.4,"aMS",%progbits,1
ARM GAS  /tmp/cc7o5dZg.s 			page 14


 716              		.align	2
 717              	.LC6:
 718 0000 46696C61 		.ascii	"Filament error: extruder %u reports %s\012\000"
 718      6D656E74 
 718      20657272 
 718      6F723A20 
 718      65787472 
 719              		.section	.rodata._ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj.str1.4,"aMS",%progbits
 720              		.align	2
 721              	.LC4:
 722 0000 45787472 		.ascii	"Extruder drive %u has no filament sensor\000"
 722      75646572 
 722      20647269 
 722      76652025 
 722      75206861 
 723              		.section	.rodata._ZTV15FilamentMonitor,"a",%progbits
 724              		.align	2
 725              		.type	_ZTV15FilamentMonitor, %object
 726              		.size	_ZTV15FilamentMonitor, 40
 727              	_ZTV15FilamentMonitor:
 728 0000 00000000 		.word	0
 729 0004 00000000 		.word	0
 730 0008 00000000 		.word	__cxa_pure_virtual
 731 000c 00000000 		.word	__cxa_pure_virtual
 732 0010 00000000 		.word	__cxa_pure_virtual
 733 0014 00000000 		.word	__cxa_pure_virtual
 734 0018 00000000 		.word	__cxa_pure_virtual
 735 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 736 0020 00000000 		.word	0
 737 0024 00000000 		.word	0
 738              		.section	.rodata.str1.4,"aMS",%progbits,1
 739              		.align	2
 740              	.LC8:
 741 0000 6E6F2065 		.ascii	"no error\000"
 741      72726F72 
 741      00
 742 0009 000000   		.space	3
 743              	.LC9:
 744 000c 6E6F2066 		.ascii	"no filament\000"
 744      696C616D 
 744      656E7400 
 745              	.LC10:
 746 0018 746F6F20 		.ascii	"too little movement\000"
 746      6C697474 
 746      6C65206D 
 746      6F76656D 
 746      656E7400 
 747              	.LC11:
 748 002c 746F6F20 		.ascii	"too much movement\000"
 748      6D756368 
 748      206D6F76 
 748      656D656E 
 748      7400
 749 003e 0000     		.space	2
 750              	.LC12:
 751 0040 73656E73 		.ascii	"sensor not working\000"
 751      6F72206E 
ARM GAS  /tmp/cc7o5dZg.s 			page 15


 751      6F742077 
 751      6F726B69 
 751      6E6700
 752              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
