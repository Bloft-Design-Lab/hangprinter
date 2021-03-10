ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 1


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
  13              		.file	"ODrive.cpp"
  14              		.text
  15              		.section	.text._ZN6ODriveC2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN6ODriveC2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN6ODriveC2Ev, %function
  24              	_ZN6ODriveC2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0649     		ldr	r1, .L4
  29 0002 0161     		str	r1, [r0, #16]
  30 0004 10B4     		push	{r4}
  31 0006 0022     		movs	r2, #0
  32 0008 0024     		movs	r4, #0
  33 000a 0121     		movs	r1, #1
  34 000c C0E90541 		strd	r4, r1, [r0, #20]
  35 0010 0260     		str	r2, [r0]	@ float
  36 0012 4260     		str	r2, [r0, #4]	@ float
  37 0014 5DF8044B 		ldr	r4, [sp], #4
  38 0018 7047     		bx	lr
  39              	.L5:
  40 001a 00BF     		.align	2
  41              	.L4:
  42 001c 00000000 		.word	Serial
  43              		.size	_ZN6ODriveC2Ev, .-_ZN6ODriveC2Ev
  44              		.global	_ZN6ODriveC1Ev
  45              		.thumb_set _ZN6ODriveC1Ev,_ZN6ODriveC2Ev
  46              		.section	.text._ZN6ODriveC2EP6Stream,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	_ZN6ODriveC2EP6Stream
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	_ZN6ODriveC2EP6Stream, %function
  55              	_ZN6ODriveC2EP6Stream:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 2


  58              		@ link register save eliminated.
  59 0000 10B4     		push	{r4}
  60 0002 0022     		movs	r2, #0
  61 0004 0024     		movs	r4, #0
  62 0006 0161     		str	r1, [r0, #16]
  63 0008 0121     		movs	r1, #1
  64 000a C0E90541 		strd	r4, r1, [r0, #20]
  65 000e 0260     		str	r2, [r0]	@ float
  66 0010 4260     		str	r2, [r0, #4]	@ float
  67 0012 5DF8044B 		ldr	r4, [sp], #4
  68 0016 7047     		bx	lr
  69              		.size	_ZN6ODriveC2EP6Stream, .-_ZN6ODriveC2EP6Stream
  70              		.global	_ZN6ODriveC1EP6Stream
  71              		.thumb_set _ZN6ODriveC1EP6Stream,_ZN6ODriveC2EP6Stream
  72              		.section	.text._ZN6ODriveC2Ejj,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	_ZN6ODriveC2Ejj
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu fpv4-sp-d16
  80              		.type	_ZN6ODriveC2Ejj, %function
  81              	_ZN6ODriveC2Ejj:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84              		@ link register save eliminated.
  85 0000 30B4     		push	{r4, r5}
  86 0002 0024     		movs	r4, #0
  87 0004 034D     		ldr	r5, .L10
  88 0006 0561     		str	r5, [r0, #16]
  89 0008 0460     		str	r4, [r0]	@ float
  90 000a 4460     		str	r4, [r0, #4]	@ float
  91 000c C0E90512 		strd	r1, r2, [r0, #20]
  92 0010 30BC     		pop	{r4, r5}
  93 0012 7047     		bx	lr
  94              	.L11:
  95              		.align	2
  96              	.L10:
  97 0014 00000000 		.word	Serial
  98              		.size	_ZN6ODriveC2Ejj, .-_ZN6ODriveC2Ejj
  99              		.global	_ZN6ODriveC1Ejj
 100              		.thumb_set _ZN6ODriveC1Ejj,_ZN6ODriveC2Ejj
 101              		.section	.text._ZN6ODriveC2EjjP6Stream,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	_ZN6ODriveC2EjjP6Stream
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	_ZN6ODriveC2EjjP6Stream, %function
 110              	_ZN6ODriveC2EjjP6Stream:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 30B4     		push	{r4, r5}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 3


 115 0002 0025     		movs	r5, #0
 116 0004 0560     		str	r5, [r0]	@ float
 117 0006 4560     		str	r5, [r0, #4]	@ float
 118 0008 C0E90431 		strd	r3, r1, [r0, #16]
 119 000c 8261     		str	r2, [r0, #24]
 120 000e 30BC     		pop	{r4, r5}
 121 0010 7047     		bx	lr
 122              		.size	_ZN6ODriveC2EjjP6Stream, .-_ZN6ODriveC2EjjP6Stream
 123              		.global	_ZN6ODriveC1EjjP6Stream
 124              		.thumb_set _ZN6ODriveC1EjjP6Stream,_ZN6ODriveC2EjjP6Stream
 125 0012 00BF     		.section	.text._ZN6ODrive9SetSerialEP6Stream,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	_ZN6ODrive9SetSerialEP6Stream
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 133              		.type	_ZN6ODrive9SetSerialEP6Stream, %function
 134              	_ZN6ODrive9SetSerialEP6Stream:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137              		@ link register save eliminated.
 138 0000 0161     		str	r1, [r0, #16]
 139 0002 7047     		bx	lr
 140              		.size	_ZN6ODrive9SetSerialEP6Stream, .-_ZN6ODrive9SetSerialEP6Stream
 141              		.global	__aeabi_f2d
 142              		.section	.text._ZNK6ODrive11SetPositionE10ODriveAxisf,"ax",%progbits
 143              		.align	1
 144              		.p2align 2,,3
 145              		.global	_ZNK6ODrive11SetPositionE10ODriveAxisf
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu fpv4-sp-d16
 150              		.type	_ZNK6ODrive11SetPositionE10ODriveAxisf, %function
 151              	_ZNK6ODrive11SetPositionE10ODriveAxisf:
 152              		@ args = 0, pretend = 0, frame = 8
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154 0000 30B5     		push	{r4, r5, lr}
 155 0002 0469     		ldr	r4, [r0, #16]
 156 0004 83B0     		sub	sp, sp, #12
 157 0006 0D46     		mov	r5, r1
 158 0008 2046     		mov	r0, r4
 159 000a 1049     		ldr	r1, .L17
 160 000c 8DED010A 		vstr.32	s0, [sp, #4]	@ int
 161 0010 FFF7FEFF 		bl	_ZN5Print5printEPKc
 162 0014 0A22     		movs	r2, #10
 163 0016 2946     		mov	r1, r5
 164 0018 2046     		mov	r0, r4
 165 001a FFF7FEFF 		bl	_ZN5Print5printEii
 166 001e 2046     		mov	r0, r4
 167 0020 0B49     		ldr	r1, .L17+4
 168 0022 FFF7FEFF 		bl	_ZN5Print5printEPKc
 169 0026 9DED010A 		vldr.32	s0, [sp, #4]	@ int
 170 002a 10EE100A 		vmov	r0, s0
 171 002e FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 4


 172 0032 41EC100B 		vmov	d0, r0, r1
 173 0036 2046     		mov	r0, r4
 174 0038 0421     		movs	r1, #4
 175 003a FFF7FEFF 		bl	_ZN5Print5printEdi
 176 003e 0549     		ldr	r1, .L17+8
 177 0040 2046     		mov	r0, r4
 178 0042 03B0     		add	sp, sp, #12
 179              		@ sp needed
 180 0044 BDE83040 		pop	{r4, r5, lr}
 181 0048 FFF7FEBF 		b	_ZN5Print5printEPKc
 182              	.L18:
 183              		.align	2
 184              	.L17:
 185 004c 00000000 		.word	.LC0
 186 0050 04000000 		.word	.LC1
 187 0054 08000000 		.word	.LC2
 188              		.size	_ZNK6ODrive11SetPositionE10ODriveAxisf, .-_ZNK6ODrive11SetPositionE10ODriveAxisf
 189              		.section	.text._ZNK6ODrive10SetCurrentE10ODriveAxisf,"ax",%progbits
 190              		.align	1
 191              		.p2align 2,,3
 192              		.global	_ZNK6ODrive10SetCurrentE10ODriveAxisf
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu fpv4-sp-d16
 197              		.type	_ZNK6ODrive10SetCurrentE10ODriveAxisf, %function
 198              	_ZNK6ODrive10SetCurrentE10ODriveAxisf:
 199              		@ args = 0, pretend = 0, frame = 8
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201 0000 30B5     		push	{r4, r5, lr}
 202 0002 0469     		ldr	r4, [r0, #16]
 203 0004 83B0     		sub	sp, sp, #12
 204 0006 0D46     		mov	r5, r1
 205 0008 2046     		mov	r0, r4
 206 000a 1049     		ldr	r1, .L21
 207 000c 8DED010A 		vstr.32	s0, [sp, #4]	@ int
 208 0010 FFF7FEFF 		bl	_ZN5Print5printEPKc
 209 0014 0A22     		movs	r2, #10
 210 0016 2946     		mov	r1, r5
 211 0018 2046     		mov	r0, r4
 212 001a FFF7FEFF 		bl	_ZN5Print5printEii
 213 001e 2046     		mov	r0, r4
 214 0020 0B49     		ldr	r1, .L21+4
 215 0022 FFF7FEFF 		bl	_ZN5Print5printEPKc
 216 0026 9DED010A 		vldr.32	s0, [sp, #4]	@ int
 217 002a 10EE100A 		vmov	r0, s0
 218 002e FFF7FEFF 		bl	__aeabi_f2d
 219 0032 41EC100B 		vmov	d0, r0, r1
 220 0036 2046     		mov	r0, r4
 221 0038 0421     		movs	r1, #4
 222 003a FFF7FEFF 		bl	_ZN5Print5printEdi
 223 003e 0549     		ldr	r1, .L21+8
 224 0040 2046     		mov	r0, r4
 225 0042 03B0     		add	sp, sp, #12
 226              		@ sp needed
 227 0044 BDE83040 		pop	{r4, r5, lr}
 228 0048 FFF7FEBF 		b	_ZN5Print5printEPKc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 5


 229              	.L22:
 230              		.align	2
 231              	.L21:
 232 004c 00000000 		.word	.LC3
 233 0050 04000000 		.word	.LC1
 234 0054 08000000 		.word	.LC2
 235              		.size	_ZNK6ODrive10SetCurrentE10ODriveAxisf, .-_ZNK6ODrive10SetCurrentE10ODriveAxisf
 236              		.section	.text._ZNK6ODrive11SetCtrlModeE10ODriveAxisi,"ax",%progbits
 237              		.align	1
 238              		.p2align 2,,3
 239              		.global	_ZNK6ODrive11SetCtrlModeE10ODriveAxisi
 240              		.syntax unified
 241              		.thumb
 242              		.thumb_func
 243              		.fpu fpv4-sp-d16
 244              		.type	_ZNK6ODrive11SetCtrlModeE10ODriveAxisi, %function
 245              	_ZNK6ODrive11SetCtrlModeE10ODriveAxisi:
 246              		@ args = 0, pretend = 0, frame = 0
 247              		@ frame_needed = 0, uses_anonymous_args = 0
 248 0000 70B5     		push	{r4, r5, r6, lr}
 249 0002 0469     		ldr	r4, [r0, #16]
 250 0004 0E46     		mov	r6, r1
 251 0006 2046     		mov	r0, r4
 252 0008 0B49     		ldr	r1, .L25
 253 000a 1546     		mov	r5, r2
 254 000c FFF7FEFF 		bl	_ZN5Print5printEPKc
 255 0010 3146     		mov	r1, r6
 256 0012 0A22     		movs	r2, #10
 257 0014 2046     		mov	r0, r4
 258 0016 FFF7FEFF 		bl	_ZN5Print5printEii
 259 001a 2046     		mov	r0, r4
 260 001c 0749     		ldr	r1, .L25+4
 261 001e FFF7FEFF 		bl	_ZN5Print5printEPKc
 262 0022 2946     		mov	r1, r5
 263 0024 2046     		mov	r0, r4
 264 0026 0A22     		movs	r2, #10
 265 0028 FFF7FEFF 		bl	_ZN5Print5printEii
 266 002c 2046     		mov	r0, r4
 267 002e 0449     		ldr	r1, .L25+8
 268 0030 BDE87040 		pop	{r4, r5, r6, lr}
 269 0034 FFF7FEBF 		b	_ZN5Print5printEPKc
 270              	.L26:
 271              		.align	2
 272              	.L25:
 273 0038 00000000 		.word	.LC4
 274 003c 08000000 		.word	.LC5
 275 0040 08000000 		.word	.LC2
 276              		.size	_ZNK6ODrive11SetCtrlModeE10ODriveAxisi, .-_ZNK6ODrive11SetCtrlModeE10ODriveAxisi
 277              		.section	.text._ZNK6ODrive24EnableCurrentControlModeE10ODriveAxis,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	_ZNK6ODrive24EnableCurrentControlModeE10ODriveAxis
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv4-sp-d16
 285              		.type	_ZNK6ODrive24EnableCurrentControlModeE10ODriveAxis, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 6


 286              	_ZNK6ODrive24EnableCurrentControlModeE10ODriveAxis:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289 0000 38B5     		push	{r3, r4, r5, lr}
 290 0002 0469     		ldr	r4, [r0, #16]
 291 0004 0D46     		mov	r5, r1
 292 0006 2046     		mov	r0, r4
 293 0008 0B49     		ldr	r1, .L29
 294 000a FFF7FEFF 		bl	_ZN5Print5printEPKc
 295 000e 2946     		mov	r1, r5
 296 0010 0A22     		movs	r2, #10
 297 0012 2046     		mov	r0, r4
 298 0014 FFF7FEFF 		bl	_ZN5Print5printEii
 299 0018 2046     		mov	r0, r4
 300 001a 0849     		ldr	r1, .L29+4
 301 001c FFF7FEFF 		bl	_ZN5Print5printEPKc
 302 0020 2046     		mov	r0, r4
 303 0022 0121     		movs	r1, #1
 304 0024 0A22     		movs	r2, #10
 305 0026 FFF7FEFF 		bl	_ZN5Print5printEii
 306 002a 2046     		mov	r0, r4
 307 002c 0449     		ldr	r1, .L29+8
 308 002e BDE83840 		pop	{r3, r4, r5, lr}
 309 0032 FFF7FEBF 		b	_ZN5Print5printEPKc
 310              	.L30:
 311 0036 00BF     		.align	2
 312              	.L29:
 313 0038 00000000 		.word	.LC4
 314 003c 08000000 		.word	.LC5
 315 0040 08000000 		.word	.LC2
 316              		.size	_ZNK6ODrive24EnableCurrentControlModeE10ODriveAxis, .-_ZNK6ODrive24EnableCurrentControlModeE
 317              		.section	.text._ZNK6ODrive25EnablePositionControlModeE10ODriveAxis,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	_ZNK6ODrive25EnablePositionControlModeE10ODriveAxis
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu fpv4-sp-d16
 325              		.type	_ZNK6ODrive25EnablePositionControlModeE10ODriveAxis, %function
 326              	_ZNK6ODrive25EnablePositionControlModeE10ODriveAxis:
 327              		@ args = 0, pretend = 0, frame = 0
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329 0000 38B5     		push	{r3, r4, r5, lr}
 330 0002 0469     		ldr	r4, [r0, #16]
 331 0004 0D46     		mov	r5, r1
 332 0006 2046     		mov	r0, r4
 333 0008 0B49     		ldr	r1, .L33
 334 000a FFF7FEFF 		bl	_ZN5Print5printEPKc
 335 000e 2946     		mov	r1, r5
 336 0010 0A22     		movs	r2, #10
 337 0012 2046     		mov	r0, r4
 338 0014 FFF7FEFF 		bl	_ZN5Print5printEii
 339 0018 2046     		mov	r0, r4
 340 001a 0849     		ldr	r1, .L33+4
 341 001c FFF7FEFF 		bl	_ZN5Print5printEPKc
 342 0020 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 7


 343 0022 0321     		movs	r1, #3
 344 0024 0A22     		movs	r2, #10
 345 0026 FFF7FEFF 		bl	_ZN5Print5printEii
 346 002a 2046     		mov	r0, r4
 347 002c 0449     		ldr	r1, .L33+8
 348 002e BDE83840 		pop	{r3, r4, r5, lr}
 349 0032 FFF7FEBF 		b	_ZN5Print5printEPKc
 350              	.L34:
 351 0036 00BF     		.align	2
 352              	.L33:
 353 0038 00000000 		.word	.LC4
 354 003c 08000000 		.word	.LC5
 355 0040 08000000 		.word	.LC2
 356              		.size	_ZNK6ODrive25EnablePositionControlModeE10ODriveAxis, .-_ZNK6ODrive25EnablePositionControlMod
 357              		.section	.text._ZNK6ODrive14SetPosSetpointE10ODriveAxisf,"ax",%progbits
 358              		.align	1
 359              		.p2align 2,,3
 360              		.global	_ZNK6ODrive14SetPosSetpointE10ODriveAxisf
 361              		.syntax unified
 362              		.thumb
 363              		.thumb_func
 364              		.fpu fpv4-sp-d16
 365              		.type	_ZNK6ODrive14SetPosSetpointE10ODriveAxisf, %function
 366              	_ZNK6ODrive14SetPosSetpointE10ODriveAxisf:
 367              		@ args = 0, pretend = 0, frame = 8
 368              		@ frame_needed = 0, uses_anonymous_args = 0
 369 0000 30B5     		push	{r4, r5, lr}
 370 0002 0469     		ldr	r4, [r0, #16]
 371 0004 83B0     		sub	sp, sp, #12
 372 0006 0D46     		mov	r5, r1
 373 0008 2046     		mov	r0, r4
 374 000a 1049     		ldr	r1, .L37
 375 000c 8DED010A 		vstr.32	s0, [sp, #4]	@ int
 376 0010 FFF7FEFF 		bl	_ZN5Print5printEPKc
 377 0014 0A22     		movs	r2, #10
 378 0016 2946     		mov	r1, r5
 379 0018 2046     		mov	r0, r4
 380 001a FFF7FEFF 		bl	_ZN5Print5printEii
 381 001e 2046     		mov	r0, r4
 382 0020 0B49     		ldr	r1, .L37+4
 383 0022 FFF7FEFF 		bl	_ZN5Print5printEPKc
 384 0026 9DED010A 		vldr.32	s0, [sp, #4]	@ int
 385 002a 10EE100A 		vmov	r0, s0
 386 002e FFF7FEFF 		bl	__aeabi_f2d
 387 0032 41EC100B 		vmov	d0, r0, r1
 388 0036 2046     		mov	r0, r4
 389 0038 0421     		movs	r1, #4
 390 003a FFF7FEFF 		bl	_ZN5Print5printEdi
 391 003e 2046     		mov	r0, r4
 392 0040 0A21     		movs	r1, #10
 393 0042 03B0     		add	sp, sp, #12
 394              		@ sp needed
 395 0044 BDE83040 		pop	{r4, r5, lr}
 396 0048 FFF7FEBF 		b	_ZN5Print5printEc
 397              	.L38:
 398              		.align	2
 399              	.L37:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 8


 400 004c 00000000 		.word	.LC4
 401 0050 00000000 		.word	.LC6
 402              		.size	_ZNK6ODrive14SetPosSetpointE10ODriveAxisf, .-_ZNK6ODrive14SetPosSetpointE10ODriveAxisf
 403              		.section	.text._ZNK6ODrive10readStringEPcj,"ax",%progbits
 404              		.align	1
 405              		.p2align 2,,3
 406              		.global	_ZNK6ODrive10readStringEPcj
 407              		.syntax unified
 408              		.thumb
 409              		.thumb_func
 410              		.fpu fpv4-sp-d16
 411              		.type	_ZNK6ODrive10readStringEPcj, %function
 412              	_ZNK6ODrive10readStringEPcj:
 413              		@ args = 0, pretend = 0, frame = 0
 414              		@ frame_needed = 0, uses_anonymous_args = 0
 415 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 416 0004 9046     		mov	r8, r2
 417 0006 0546     		mov	r5, r0
 418 0008 8946     		mov	r9, r1
 419 000a FFF7FEFF 		bl	millis
 420 000e B8F10108 		subs	r8, r8, #1
 421 0012 1FD0     		beq	.L40
 422 0014 0646     		mov	r6, r0
 423 0016 CA46     		mov	r10, r9
 424 0018 0027     		movs	r7, #0
 425 001a 05E0     		b	.L42
 426              	.L53:
 427 001c FFF7FEFF 		bl	millis
 428 0020 801B     		subs	r0, r0, r6
 429 0022 B0F5FA6F 		cmp	r0, #2000
 430 0026 1CD2     		bcs	.L52
 431              	.L42:
 432 0028 2869     		ldr	r0, [r5, #16]
 433 002a 0368     		ldr	r3, [r0]
 434 002c 1B69     		ldr	r3, [r3, #16]
 435 002e 9847     		blx	r3
 436 0030 0446     		mov	r4, r0
 437 0032 0028     		cmp	r0, #0
 438 0034 F2D0     		beq	.L53
 439 0036 2869     		ldr	r0, [r5, #16]
 440 0038 0368     		ldr	r3, [r0]
 441 003a 5B69     		ldr	r3, [r3, #20]
 442 003c 9847     		blx	r3
 443 003e C0B2     		uxtb	r0, r0
 444 0040 0A28     		cmp	r0, #10
 445 0042 07F10103 		add	r3, r7, #1
 446 0046 12D0     		beq	.L54
 447 0048 9845     		cmp	r8, r3
 448 004a 1F46     		mov	r7, r3
 449 004c 0AF8010B 		strb	r0, [r10], #1
 450 0050 EAD1     		bne	.L42
 451 0052 C144     		add	r9, r9, r8
 452              	.L40:
 453 0054 0023     		movs	r3, #0
 454 0056 4746     		mov	r7, r8
 455 0058 89F80030 		strb	r3, [r9]
 456 005c 3846     		mov	r0, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 9


 457 005e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 458              	.L52:
 459 0062 B944     		add	r9, r9, r7
 460 0064 3846     		mov	r0, r7
 461 0066 89F80140 		strb	r4, [r9, #1]
 462 006a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 463              	.L54:
 464 006e 0022     		movs	r2, #0
 465 0070 09F80320 		strb	r2, [r9, r3]
 466 0074 B846     		mov	r8, r7
 467 0076 D146     		mov	r9, r10
 468 0078 ECE7     		b	.L40
 469              		.size	_ZNK6ODrive10readStringEPcj, .-_ZNK6ODrive10readStringEPcj
 470 007a 00BF     		.section	.text._ZNK6ODrive9readFloatEv,"ax",%progbits
 471              		.align	1
 472              		.p2align 2,,3
 473              		.global	_ZNK6ODrive9readFloatEv
 474              		.syntax unified
 475              		.thumb
 476              		.thumb_func
 477              		.fpu fpv4-sp-d16
 478              		.type	_ZNK6ODrive9readFloatEv, %function
 479              	_ZNK6ODrive9readFloatEv:
 480              		@ args = 0, pretend = 0, frame = 56
 481              		@ frame_needed = 0, uses_anonymous_args = 0
 482 0000 10B5     		push	{r4, lr}
 483 0002 8EB0     		sub	sp, sp, #56
 484 0004 01A9     		add	r1, sp, #4
 485 0006 3222     		movs	r2, #50
 486 0008 0446     		mov	r4, r0
 487 000a FFF7FEFF 		bl	_ZNK6ODrive10readStringEPcj
 488 000e 20B9     		cbnz	r0, .L56
 489 0010 2046     		mov	r0, r4
 490 0012 3222     		movs	r2, #50
 491 0014 01A9     		add	r1, sp, #4
 492 0016 FFF7FEFF 		bl	_ZNK6ODrive10readStringEPcj
 493              	.L56:
 494 001a 01A8     		add	r0, sp, #4
 495 001c 0021     		movs	r1, #0
 496 001e FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 497 0022 0EB0     		add	sp, sp, #56
 498              		@ sp needed
 499 0024 10BD     		pop	{r4, pc}
 500              		.size	_ZNK6ODrive9readFloatEv, .-_ZNK6ODrive9readFloatEv
 501 0026 00BF     		.section	.text._ZNK6ODrive24AskForEncoderPosEstimateE10ODriveAxis,"ax",%progbits
 502              		.align	1
 503              		.p2align 2,,3
 504              		.global	_ZNK6ODrive24AskForEncoderPosEstimateE10ODriveAxis
 505              		.syntax unified
 506              		.thumb
 507              		.thumb_func
 508              		.fpu fpv4-sp-d16
 509              		.type	_ZNK6ODrive24AskForEncoderPosEstimateE10ODriveAxis, %function
 510              	_ZNK6ODrive24AskForEncoderPosEstimateE10ODriveAxis:
 511              		@ args = 0, pretend = 0, frame = 0
 512              		@ frame_needed = 0, uses_anonymous_args = 0
 513 0000 70B5     		push	{r4, r5, r6, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 10


 514 0002 0469     		ldr	r4, [r0, #16]
 515 0004 0546     		mov	r5, r0
 516 0006 0E46     		mov	r6, r1
 517 0008 2046     		mov	r0, r4
 518 000a 0849     		ldr	r1, .L60
 519 000c FFF7FEFF 		bl	_ZN5Print5printEPKc
 520 0010 3146     		mov	r1, r6
 521 0012 2046     		mov	r0, r4
 522 0014 0A22     		movs	r2, #10
 523 0016 FFF7FEFF 		bl	_ZN5Print5printEii
 524 001a 2046     		mov	r0, r4
 525 001c 0449     		ldr	r1, .L60+4
 526 001e FFF7FEFF 		bl	_ZN5Print5printEPKc
 527 0022 2846     		mov	r0, r5
 528 0024 BDE87040 		pop	{r4, r5, r6, lr}
 529 0028 FFF7FEBF 		b	_ZNK6ODrive9readFloatEv
 530              	.L61:
 531              		.align	2
 532              	.L60:
 533 002c 00000000 		.word	.LC7
 534 0030 08000000 		.word	.LC8
 535              		.size	_ZNK6ODrive24AskForEncoderPosEstimateE10ODriveAxis, .-_ZNK6ODrive24AskForEncoderPosEstimateE
 536              		.section	.text._ZN6ODrive24StoreEncoderPosReferenceE10ODriveAxis,"ax",%progbits
 537              		.align	1
 538              		.p2align 2,,3
 539              		.global	_ZN6ODrive24StoreEncoderPosReferenceE10ODriveAxis
 540              		.syntax unified
 541              		.thumb
 542              		.thumb_func
 543              		.fpu fpv4-sp-d16
 544              		.type	_ZN6ODrive24StoreEncoderPosReferenceE10ODriveAxis, %function
 545              	_ZN6ODrive24StoreEncoderPosReferenceE10ODriveAxis:
 546              		@ args = 0, pretend = 0, frame = 0
 547              		@ frame_needed = 0, uses_anonymous_args = 0
 548 0000 38B5     		push	{r3, r4, r5, lr}
 549 0002 0446     		mov	r4, r0
 550 0004 0D46     		mov	r5, r1
 551 0006 FFF7FEFF 		bl	_ZNK6ODrive24AskForEncoderPosEstimateE10ODriveAxis
 552 000a 04EB8504 		add	r4, r4, r5, lsl #2
 553 000e 84ED000A 		vstr.32	s0, [r4]
 554 0012 38BD     		pop	{r3, r4, r5, pc}
 555              		.size	_ZN6ODrive24StoreEncoderPosReferenceE10ODriveAxis, .-_ZN6ODrive24StoreEncoderPosReferenceE10
 556              		.section	.text._ZNK6ODrive7readIntEv,"ax",%progbits
 557              		.align	1
 558              		.p2align 2,,3
 559              		.global	_ZNK6ODrive7readIntEv
 560              		.syntax unified
 561              		.thumb
 562              		.thumb_func
 563              		.fpu fpv4-sp-d16
 564              		.type	_ZNK6ODrive7readIntEv, %function
 565              	_ZNK6ODrive7readIntEv:
 566              		@ args = 0, pretend = 0, frame = 56
 567              		@ frame_needed = 0, uses_anonymous_args = 0
 568 0000 10B5     		push	{r4, lr}
 569 0002 8EB0     		sub	sp, sp, #56
 570 0004 01A9     		add	r1, sp, #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 11


 571 0006 3222     		movs	r2, #50
 572 0008 0446     		mov	r4, r0
 573 000a FFF7FEFF 		bl	_ZNK6ODrive10readStringEPcj
 574 000e 20B9     		cbnz	r0, .L65
 575 0010 2046     		mov	r0, r4
 576 0012 3222     		movs	r2, #50
 577 0014 01A9     		add	r1, sp, #4
 578 0016 FFF7FEFF 		bl	_ZNK6ODrive10readStringEPcj
 579              	.L65:
 580 001a 01A8     		add	r0, sp, #4
 581 001c 0A22     		movs	r2, #10
 582 001e 0021     		movs	r1, #0
 583 0020 FFF7FEFF 		bl	strtol
 584 0024 0EB0     		add	sp, sp, #56
 585              		@ sp needed
 586 0026 10BD     		pop	{r4, pc}
 587              		.size	_ZNK6ODrive7readIntEv, .-_ZNK6ODrive7readIntEv
 588              		.section	.text._ZNK6ODrive5flushEv,"ax",%progbits
 589              		.align	1
 590              		.p2align 2,,3
 591              		.global	_ZNK6ODrive5flushEv
 592              		.syntax unified
 593              		.thumb
 594              		.thumb_func
 595              		.fpu fpv4-sp-d16
 596              		.type	_ZNK6ODrive5flushEv, %function
 597              	_ZNK6ODrive5flushEv:
 598              		@ args = 0, pretend = 0, frame = 0
 599              		@ frame_needed = 0, uses_anonymous_args = 0
 600 0000 70B5     		push	{r4, r5, r6, lr}
 601 0002 0569     		ldr	r5, [r0, #16]
 602 0004 0849     		ldr	r1, .L69
 603 0006 0446     		mov	r4, r0
 604 0008 2846     		mov	r0, r5
 605 000a FFF7FEFF 		bl	_ZN5Print5printEPKc
 606 000e 2846     		mov	r0, r5
 607 0010 0649     		ldr	r1, .L69+4
 608 0012 FFF7FEFF 		bl	_ZN5Print5printEPKc
 609 0016 2046     		mov	r0, r4
 610 0018 FFF7FEFF 		bl	_ZNK6ODrive7readIntEv
 611 001c 2069     		ldr	r0, [r4, #16]
 612 001e 0368     		ldr	r3, [r0]
 613 0020 BDE87040 		pop	{r4, r5, r6, lr}
 614 0024 DB69     		ldr	r3, [r3, #28]
 615 0026 1847     		bx	r3	@ indirect register sibling call
 616              	.L70:
 617              		.align	2
 618              	.L69:
 619 0028 00000000 		.word	.LC9
 620 002c 08000000 		.word	.LC10
 621              		.size	_ZNK6ODrive5flushEv, .-_ZNK6ODrive5flushEv
 622              		.section	.text._ZNK6ODrive31AskForEncoderConfigCountsPerRevE10ODriveAxis,"ax",%progbits
 623              		.align	1
 624              		.p2align 2,,3
 625              		.global	_ZNK6ODrive31AskForEncoderConfigCountsPerRevE10ODriveAxis
 626              		.syntax unified
 627              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 12


 628              		.thumb_func
 629              		.fpu fpv4-sp-d16
 630              		.type	_ZNK6ODrive31AskForEncoderConfigCountsPerRevE10ODriveAxis, %function
 631              	_ZNK6ODrive31AskForEncoderConfigCountsPerRevE10ODriveAxis:
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 634 0000 70B5     		push	{r4, r5, r6, lr}
 635 0002 0469     		ldr	r4, [r0, #16]
 636 0004 0546     		mov	r5, r0
 637 0006 0E46     		mov	r6, r1
 638 0008 2046     		mov	r0, r4
 639 000a 0849     		ldr	r1, .L73
 640 000c FFF7FEFF 		bl	_ZN5Print5printEPKc
 641 0010 3146     		mov	r1, r6
 642 0012 2046     		mov	r0, r4
 643 0014 0A22     		movs	r2, #10
 644 0016 FFF7FEFF 		bl	_ZN5Print5printEii
 645 001a 2046     		mov	r0, r4
 646 001c 0449     		ldr	r1, .L73+4
 647 001e FFF7FEFF 		bl	_ZN5Print5printEPKc
 648 0022 2846     		mov	r0, r5
 649 0024 BDE87040 		pop	{r4, r5, r6, lr}
 650 0028 FFF7FEBF 		b	_ZNK6ODrive7readIntEv
 651              	.L74:
 652              		.align	2
 653              	.L73:
 654 002c 00000000 		.word	.LC7
 655 0030 08000000 		.word	.LC10
 656              		.size	_ZNK6ODrive31AskForEncoderConfigCountsPerRevE10ODriveAxis, .-_ZNK6ODrive31AskForEncoderConfi
 657              		.section	.text._ZN6ODrive17StoreCountsPerRevE10ODriveAxis,"ax",%progbits
 658              		.align	1
 659              		.p2align 2,,3
 660              		.global	_ZN6ODrive17StoreCountsPerRevE10ODriveAxis
 661              		.syntax unified
 662              		.thumb
 663              		.thumb_func
 664              		.fpu fpv4-sp-d16
 665              		.type	_ZN6ODrive17StoreCountsPerRevE10ODriveAxis, %function
 666              	_ZN6ODrive17StoreCountsPerRevE10ODriveAxis:
 667              		@ args = 0, pretend = 0, frame = 0
 668              		@ frame_needed = 0, uses_anonymous_args = 0
 669 0000 38B5     		push	{r3, r4, r5, lr}
 670 0002 0446     		mov	r4, r0
 671 0004 0D46     		mov	r5, r1
 672 0006 FFF7FEFF 		bl	_ZNK6ODrive31AskForEncoderConfigCountsPerRevE10ODriveAxis
 673 000a 07EE900A 		vmov	s15, r0	@ int
 674 000e F8EEE77A 		vcvt.f32.s32	s15, s15
 675 0012 04EB8504 		add	r4, r4, r5, lsl #2
 676 0016 C4ED027A 		vstr.32	s15, [r4, #8]
 677 001a 38BD     		pop	{r3, r4, r5, pc}
 678              		.size	_ZN6ODrive17StoreCountsPerRevE10ODriveAxis, .-_ZN6ODrive17StoreCountsPerRevE10ODriveAxis
 679              		.section	.text._ZNK6ODrive9run_stateE10ODriveAxisib,"ax",%progbits
 680              		.align	1
 681              		.p2align 2,,3
 682              		.global	_ZNK6ODrive9run_stateE10ODriveAxisib
 683              		.syntax unified
 684              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 13


 685              		.thumb_func
 686              		.fpu fpv4-sp-d16
 687              		.type	_ZNK6ODrive9run_stateE10ODriveAxisib, %function
 688              	_ZNK6ODrive9run_stateE10ODriveAxisib:
 689              		@ args = 0, pretend = 0, frame = 0
 690              		@ frame_needed = 0, uses_anonymous_args = 0
 691 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 692 0004 0469     		ldr	r4, [r0, #16]
 693 0006 0F46     		mov	r7, r1
 694 0008 0646     		mov	r6, r0
 695 000a 2049     		ldr	r1, .L86
 696 000c 2046     		mov	r0, r4
 697 000e 9A46     		mov	r10, r3
 698 0010 1546     		mov	r5, r2
 699 0012 FFF7FEFF 		bl	_ZN5Print5printEPKc
 700 0016 0A22     		movs	r2, #10
 701 0018 3946     		mov	r1, r7
 702 001a 2046     		mov	r0, r4
 703 001c FFF7FEFF 		bl	_ZN5Print5printEii
 704 0020 1B49     		ldr	r1, .L86+4
 705 0022 2046     		mov	r0, r4
 706 0024 FFF7FEFF 		bl	_ZN5Print5printEPKc
 707 0028 2946     		mov	r1, r5
 708 002a 2046     		mov	r0, r4
 709 002c 0A22     		movs	r2, #10
 710 002e FFF7FEFF 		bl	_ZN5Print5printEii
 711 0032 2046     		mov	r0, r4
 712 0034 0A21     		movs	r1, #10
 713 0036 FFF7FEFF 		bl	_ZN5Print5printEc
 714 003a BAF1000F 		cmp	r10, #0
 715 003e 20D0     		beq	.L80
 716 0040 DFF85090 		ldr	r9, .L86+8
 717 0044 DFF85080 		ldr	r8, .L86+12
 718 0048 6425     		movs	r5, #100
 719 004a 01E0     		b	.L79
 720              	.L85:
 721 004c 013D     		subs	r5, r5, #1
 722 004e 1BD0     		beq	.L84
 723              	.L79:
 724 0050 6420     		movs	r0, #100
 725 0052 FFF7FEFF 		bl	_Z5delaym
 726 0056 3469     		ldr	r4, [r6, #16]
 727 0058 4946     		mov	r1, r9
 728 005a 2046     		mov	r0, r4
 729 005c FFF7FEFF 		bl	_ZN5Print5printEPKc
 730 0060 0A22     		movs	r2, #10
 731 0062 3946     		mov	r1, r7
 732 0064 2046     		mov	r0, r4
 733 0066 FFF7FEFF 		bl	_ZN5Print5printEii
 734 006a 4146     		mov	r1, r8
 735 006c 2046     		mov	r0, r4
 736 006e FFF7FEFF 		bl	_ZN5Print5printEPKc
 737 0072 3046     		mov	r0, r6
 738 0074 FFF7FEFF 		bl	_ZNK6ODrive7readIntEv
 739 0078 0028     		cmp	r0, #0
 740 007a E7D0     		beq	.L85
 741 007c 5046     		mov	r0, r10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 14


 742              	.L78:
 743 007e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 744              	.L80:
 745 0082 0120     		movs	r0, #1
 746 0084 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 747              	.L84:
 748 0088 2846     		mov	r0, r5
 749 008a F8E7     		b	.L78
 750              	.L87:
 751              		.align	2
 752              	.L86:
 753 008c 00000000 		.word	.LC4
 754 0090 00000000 		.word	.LC11
 755 0094 00000000 		.word	.LC7
 756 0098 14000000 		.word	.LC12
 757              		.size	_ZNK6ODrive9run_stateE10ODriveAxisib, .-_ZNK6ODrive9run_stateE10ODriveAxisib
 758              		.section	.text._ZNK6ODrive16AxisToODriveAxisEj,"ax",%progbits
 759              		.align	1
 760              		.p2align 2,,3
 761              		.global	_ZNK6ODrive16AxisToODriveAxisEj
 762              		.syntax unified
 763              		.thumb
 764              		.thumb_func
 765              		.fpu fpv4-sp-d16
 766              		.type	_ZNK6ODrive16AxisToODriveAxisEj, %function
 767              	_ZNK6ODrive16AxisToODriveAxisEj:
 768              		@ args = 0, pretend = 0, frame = 0
 769              		@ frame_needed = 0, uses_anonymous_args = 0
 770              		@ link register save eliminated.
 771 0000 4369     		ldr	r3, [r0, #20]
 772 0002 8B42     		cmp	r3, r1
 773 0004 06D0     		beq	.L90
 774 0006 8069     		ldr	r0, [r0, #24]
 775 0008 8842     		cmp	r0, r1
 776 000a 0CBF     		ite	eq
 777 000c 0120     		moveq	r0, #1
 778 000e 4FF0FF30 		movne	r0, #-1
 779 0012 7047     		bx	lr
 780              	.L90:
 781 0014 0020     		movs	r0, #0
 782 0016 7047     		bx	lr
 783              		.size	_ZNK6ODrive16AxisToODriveAxisEj, .-_ZNK6ODrive16AxisToODriveAxisEj
 784              		.section	.text._ZN6ODrive18SetRRFToODriveAxisE10ODriveAxisj,"ax",%progbits
 785              		.align	1
 786              		.p2align 2,,3
 787              		.global	_ZN6ODrive18SetRRFToODriveAxisE10ODriveAxisj
 788              		.syntax unified
 789              		.thumb
 790              		.thumb_func
 791              		.fpu fpv4-sp-d16
 792              		.type	_ZN6ODrive18SetRRFToODriveAxisE10ODriveAxisj, %function
 793              	_ZN6ODrive18SetRRFToODriveAxisE10ODriveAxisj:
 794              		@ args = 0, pretend = 0, frame = 0
 795              		@ frame_needed = 0, uses_anonymous_args = 0
 796              		@ link register save eliminated.
 797 0000 4B1C     		adds	r3, r1, #1
 798 0002 1CBF     		itt	ne
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 15


 799 0004 00EB8100 		addne	r0, r0, r1, lsl #2
 800 0008 4261     		strne	r2, [r0, #20]
 801 000a 7047     		bx	lr
 802              		.size	_ZN6ODrive18SetRRFToODriveAxisE10ODriveAxisj, .-_ZN6ODrive18SetRRFToODriveAxisE10ODriveAxisj
 803              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 804              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 805              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 806              	_ZL28cpu_irq_prev_interrupt_state:
 807 0000 00       		.space	1
 808              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 809              		.align	2
 810              		.type	_ZL32cpu_irq_critical_section_counter, %object
 811              		.size	_ZL32cpu_irq_critical_section_counter, 4
 812              	_ZL32cpu_irq_critical_section_counter:
 813 0000 00000000 		.space	4
 814              		.section	.rodata._ZNK6ODrive10SetCurrentE10ODriveAxisf.str1.4,"aMS",%progbits,1
 815              		.align	2
 816              	.LC3:
 817 0000 632000   		.ascii	"c \000"
 818              		.section	.rodata._ZNK6ODrive11SetCtrlModeE10ODriveAxisi.str1.4,"aMS",%progbits,1
 819              		.align	2
 820              	.LC4:
 821 0000 77206178 		.ascii	"w axis\000"
 821      697300
 822 0007 00       		.space	1
 823              	.LC5:
 824 0008 2E636F6E 		.ascii	".controller.config.control_mode \000"
 824      74726F6C 
 824      6C65722E 
 824      636F6E66 
 824      69672E63 
 825              		.section	.rodata._ZNK6ODrive11SetPositionE10ODriveAxisf.str1.4,"aMS",%progbits,1
 826              		.align	2
 827              	.LC0:
 828 0000 702000   		.ascii	"p \000"
 829 0003 00       		.space	1
 830              	.LC1:
 831 0004 2000     		.ascii	" \000"
 832 0006 0000     		.space	2
 833              	.LC2:
 834 0008 0A00     		.ascii	"\012\000"
 835              		.section	.rodata._ZNK6ODrive14SetPosSetpointE10ODriveAxisf.str1.4,"aMS",%progbits,1
 836              		.align	2
 837              	.LC6:
 838 0000 2E636F6E 		.ascii	".controller.pos_setpoint \000"
 838      74726F6C 
 838      6C65722E 
 838      706F735F 
 838      73657470 
 839              		.section	.rodata._ZNK6ODrive24AskForEncoderPosEstimateE10ODriveAxis.str1.4,"aMS",%progbits,1
 840              		.align	2
 841              	.LC7:
 842 0000 72206178 		.ascii	"r axis\000"
 842      697300
 843 0007 00       		.space	1
 844              	.LC8:
 845 0008 2E656E63 		.ascii	".encoder.pos_estimate\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccKXCHR.s 			page 16


 845      6F646572 
 845      2E706F73 
 845      5F657374 
 845      696D6174 
 846              		.section	.rodata._ZNK6ODrive5flushEv.str1.4,"aMS",%progbits,1
 847              		.align	2
 848              	.LC9:
 849 0000 72206178 		.ascii	"r axis0\000"
 849      69733000 
 850              	.LC10:
 851 0008 2E656E63 		.ascii	".encoder.config.cpr\012\000"
 851      6F646572 
 851      2E636F6E 
 851      6669672E 
 851      6370720A 
 852              		.section	.rodata._ZNK6ODrive9run_stateE10ODriveAxisib.str1.4,"aMS",%progbits,1
 853              		.align	2
 854              	.LC11:
 855 0000 2E726571 		.ascii	".requested_state \000"
 855      75657374 
 855      65645F73 
 855      74617465 
 855      2000
 856 0012 0000     		.space	2
 857              	.LC12:
 858 0014 2E637572 		.ascii	".current_state\012\000"
 858      72656E74 
 858      5F737461 
 858      74650A00 
 859              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
