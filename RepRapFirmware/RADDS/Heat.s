ARM GAS  /tmp/ccKkmt7o.s 			page 1


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
  11              		.file	"Heat.cpp"
  12              		.section	.text._ZN4HeatC2ER8Platform,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN4HeatC2ER8Platform
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN4HeatC2ER8Platform, %function
  21              	_ZN4HeatC2ER8Platform:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  25 0002 0023     		movs	r3, #0
  26 0004 0746     		mov	r7, r0
  27 0006 FF22     		movs	r2, #255
  28 0008 1C46     		mov	r4, r3
  29 000a 1748     		ldr	r0, .L8
  30 000c 3960     		str	r1, [r7]
  31 000e 0188     		ldrh	r1, [r0]
  32 0010 87F88030 		strb	r3, [r7, #128]
  33 0014 A7F88310 		strh	r1, [r7, #131]	@ unaligned
  34 0018 87F88130 		strb	r3, [r7, #129]
  35 001c 87F88230 		strb	r3, [r7, #130]
  36 0020 87F88520 		strb	r2, [r7, #133]
  37 0024 87F88620 		strb	r2, [r7, #134]
  38 0028 3D1D     		adds	r5, r7, #4
  39              	.L2:
  40 002a 1020     		movs	r0, #16
  41 002c FFF7FEFF 		bl	_Znwj
  42 0030 0646     		mov	r6, r0
  43 0032 2146     		mov	r1, r4
  44 0034 0134     		adds	r4, r4, #1
  45 0036 FFF7FEFF 		bl	_ZN16HeaterProtectionC1Ej
  46 003a 082C     		cmp	r4, #8
  47 003c 45F8046B 		str	r6, [r5], #4
  48 0040 F3D1     		bne	.L2
  49 0042 0024     		movs	r4, #0
  50 0044 07F12405 		add	r5, r7, #36
  51              	.L3:
  52 0048 8420     		movs	r0, #132
  53 004a FFF7FEFF 		bl	_Znwj
  54 004e 0646     		mov	r6, r0
  55 0050 62B2     		sxtb	r2, r4
  56 0052 3968     		ldr	r1, [r7]
  57 0054 0134     		adds	r4, r4, #1
ARM GAS  /tmp/ccKkmt7o.s 			page 2


  58 0056 FFF7FEFF 		bl	_ZN3PIDC1ER8Platforma
  59 005a 042C     		cmp	r4, #4
  60 005c 45F8046B 		str	r6, [r5], #4
  61 0060 F2D1     		bne	.L3
  62 0062 3846     		mov	r0, r7
  63 0064 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  64              	.L9:
  65 0066 00BF     		.align	2
  66              	.L8:
  67 0068 00000000 		.word	.LANCHOR0
  68              		.size	_ZN4HeatC2ER8Platform, .-_ZN4HeatC2ER8Platform
  69              		.global	_ZN4HeatC1ER8Platform
  70              		.thumb_set _ZN4HeatC1ER8Platform,_ZN4HeatC2ER8Platform
  71              		.section	.text._ZN4Heat17ResetHeaterModelsEv,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	_ZN4Heat17ResetHeaterModelsEv
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu softvfp
  79              		.type	_ZN4Heat17ResetHeaterModelsEv, %function
  80              	_ZN4Heat17ResetHeaterModelsEv:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  84 0004 0546     		mov	r5, r0
  85 0006 0024     		movs	r4, #0
  86 0008 4FF00008 		mov	r8, #0
  87 000c 4FF07E57 		mov	r7, #1065353216
  88 0010 DFF8A4B0 		ldr	fp, .L34+12
  89 0014 DFF8A4A0 		ldr	r10, .L34+16
  90 0018 DFF8A490 		ldr	r9, .L34+20
  91 001c 87B0     		sub	sp, sp, #28
  92 001e 00F12406 		add	r6, r0, #36
  93              	.L18:
  94 0022 56F8040B 		ldr	r0, [r6], #4
  95 0026 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
  96 002a 5BB3     		cbz	r3, .L11
  97 002c 95F98230 		ldrsb	r3, [r5, #130]
  98 0030 61B2     		sxtb	r1, r4
  99 0032 8B42     		cmp	r3, r1
 100 0034 05F1820C 		add	ip, r5, #130
 101 0038 05F1830E 		add	lr, r5, #131
 102 003c 28D0     		beq	.L12
 103 003e 6346     		mov	r3, ip
 104 0040 03E0     		b	.L13
 105              	.L25:
 106 0042 13F9012F 		ldrsb	r2, [r3, #1]!
 107 0046 8A42     		cmp	r2, r1
 108 0048 22D0     		beq	.L12
 109              	.L13:
 110 004a 9C45     		cmp	ip, r3
 111 004c F9D1     		bne	.L25
 112 004e 95F98330 		ldrsb	r3, [r5, #131]
 113 0052 8B42     		cmp	r3, r1
 114 0054 1CD0     		beq	.L12
ARM GAS  /tmp/ccKkmt7o.s 			page 3


 115 0056 7346     		mov	r3, lr
 116 0058 05F1840E 		add	lr, r5, #132
 117 005c 03E0     		b	.L19
 118              	.L26:
 119 005e 13F9012F 		ldrsb	r2, [r3, #1]!
 120 0062 8A42     		cmp	r2, r1
 121 0064 14D0     		beq	.L12
 122              	.L19:
 123 0066 9E45     		cmp	lr, r3
 124 0068 F9D1     		bne	.L26
 125 006a 0023     		movs	r3, #0
 126 006c 0122     		movs	r2, #1
 127 006e 0493     		str	r3, [sp, #16]
 128 0070 0393     		str	r3, [sp, #12]
 129 0072 0292     		str	r2, [sp, #8]
 130 0074 CDF80480 		str	r8, [sp, #4]	@ float
 131 0078 0097     		str	r7, [sp]	@ float
 132 007a 0C4B     		ldr	r3, .L34
 133 007c 0C4A     		ldr	r2, .L34+4
 134 007e 0D49     		ldr	r1, .L34+8
 135 0080 FFF7FEFF 		bl	_ZN3PID8SetModelEfffffbbt
 136              	.L11:
 137 0084 0134     		adds	r4, r4, #1
 138 0086 042C     		cmp	r4, #4
 139 0088 CBD1     		bne	.L18
 140 008a 07B0     		add	sp, sp, #28
 141              		@ sp needed
 142 008c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 143              	.L12:
 144 0090 0023     		movs	r3, #0
 145 0092 CDF80480 		str	r8, [sp, #4]	@ float
 146 0096 0493     		str	r3, [sp, #16]
 147 0098 0393     		str	r3, [sp, #12]
 148 009a 0293     		str	r3, [sp, #8]
 149 009c 0097     		str	r7, [sp]	@ float
 150 009e 5B46     		mov	r3, fp
 151 00a0 5246     		mov	r2, r10
 152 00a2 4946     		mov	r1, r9
 153 00a4 FFF7FEFF 		bl	_ZN3PID8SetModelEfffffbbt
 154 00a8 ECE7     		b	.L11
 155              	.L35:
 156 00aa 00BF     		.align	2
 157              	.L34:
 158 00ac 0000B040 		.word	1085276160
 159 00b0 00000C43 		.word	1124859904
 160 00b4 0000AA43 		.word	1135214592
 161 00b8 00002041 		.word	1092616192
 162 00bc 00002F44 		.word	1143930880
 163 00c0 0000B442 		.word	1119092736
 164              		.size	_ZN4Heat17ResetHeaterModelsEv, .-_ZN4Heat17ResetHeaterModelsEv
 165              		.section	.text._ZN4Heat4InitEv,"ax",%progbits
 166              		.align	1
 167              		.p2align 2,,3
 168              		.global	_ZN4Heat4InitEv
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
ARM GAS  /tmp/ccKkmt7o.s 			page 4


 172              		.fpu softvfp
 173              		.type	_ZN4Heat4InitEv, %function
 174              	_ZN4Heat4InitEv:
 175              		@ args = 0, pretend = 0, frame = 0
 176              		@ frame_needed = 0, uses_anonymous_args = 0
 177 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 178 0004 0546     		mov	r5, r0
 179 0006 4FF0000B 		mov	fp, #0
 180 000a DFF84091 		ldr	r9, .L79+16
 181 000e 83B0     		sub	sp, sp, #12
 182 0010 00F18308 		add	r8, r0, #131
 183 0014 00F18204 		add	r4, r0, #130
 184 0018 071D     		adds	r7, r0, #4
 185 001a 00F18406 		add	r6, r0, #132
 186              	.L45:
 187 001e 95F98230 		ldrsb	r3, [r5, #130]
 188 0022 4FFA8BF1 		sxtb	r1, fp
 189 0026 8B42     		cmp	r3, r1
 190 0028 57F804AB 		ldr	r10, [r7], #4
 191 002c 18BF     		it	ne
 192 002e 2346     		movne	r3, r4
 193 0030 04D1     		bne	.L39
 194 0032 6DE0     		b	.L62
 195              	.L68:
 196 0034 13F9012F 		ldrsb	r2, [r3, #1]!
 197 0038 8A42     		cmp	r2, r1
 198 003a 69D0     		beq	.L62
 199              	.L39:
 200 003c A342     		cmp	r3, r4
 201 003e F9D1     		bne	.L68
 202 0040 95F98330 		ldrsb	r3, [r5, #131]
 203 0044 8B42     		cmp	r3, r1
 204 0046 18BF     		it	ne
 205 0048 4346     		movne	r3, r8
 206 004a 04D1     		bne	.L42
 207 004c 60E0     		b	.L62
 208              	.L43:
 209 004e 13F9012F 		ldrsb	r2, [r3, #1]!
 210 0052 8A42     		cmp	r2, r1
 211 0054 5CD0     		beq	.L62
 212              	.L42:
 213 0056 B342     		cmp	r3, r6
 214 0058 F9D1     		bne	.L43
 215 005a 3849     		ldr	r1, .L79
 216 005c 5046     		mov	r0, r10
 217 005e FFF7FEFF 		bl	_ZN16HeaterProtection4InitEf
 218 0062 BBF1030F 		cmp	fp, #3
 219 0066 5AD9     		bls	.L78
 220              	.L44:
 221 0068 0BF1010B 		add	fp, fp, #1
 222 006c BBF1080F 		cmp	fp, #8
 223 0070 D5D1     		bne	.L45
 224 0072 0027     		movs	r7, #0
 225 0074 DFF8D8B0 		ldr	fp, .L79+20
 226 0078 DFF8D8A0 		ldr	r10, .L79+24
 227 007c DFF8D890 		ldr	r9, .L79+28
 228 0080 05F12406 		add	r6, r5, #36
ARM GAS  /tmp/ccKkmt7o.s 			page 5


 229              	.L54:
 230 0084 0023     		movs	r3, #0
 231 0086 3362     		str	r3, [r6, #32]
 232 0088 95F98230 		ldrsb	r3, [r5, #130]
 233 008c 79B2     		sxtb	r1, r7
 234 008e 8B42     		cmp	r3, r1
 235 0090 18BF     		it	ne
 236 0092 2346     		movne	r3, r4
 237 0094 04D1     		bne	.L48
 238 0096 47E0     		b	.L46
 239              	.L70:
 240 0098 13F9012F 		ldrsb	r2, [r3, #1]!
 241 009c 8A42     		cmp	r2, r1
 242 009e 43D0     		beq	.L46
 243              	.L48:
 244 00a0 A342     		cmp	r3, r4
 245 00a2 F9D1     		bne	.L70
 246 00a4 95F98330 		ldrsb	r3, [r5, #131]
 247 00a8 8B42     		cmp	r3, r1
 248 00aa 3DD0     		beq	.L46
 249 00ac 4346     		mov	r3, r8
 250 00ae 05F18400 		add	r0, r5, #132
 251 00b2 03E0     		b	.L51
 252              	.L71:
 253 00b4 13F9012F 		ldrsb	r2, [r3, #1]!
 254 00b8 8A42     		cmp	r2, r1
 255 00ba 35D0     		beq	.L46
 256              	.L51:
 257 00bc 9842     		cmp	r0, r3
 258 00be F9D1     		bne	.L71
 259 00c0 0022     		movs	r2, #0
 260 00c2 0123     		movs	r3, #1
 261 00c4 3068     		ldr	r0, [r6]
 262 00c6 1E49     		ldr	r1, .L79+4
 263 00c8 0192     		str	r2, [sp, #4]
 264 00ca 0093     		str	r3, [sp]
 265 00cc 1D4A     		ldr	r2, .L79+8
 266 00ce 1E4B     		ldr	r3, .L79+12
 267 00d0 FFF7FEFF 		bl	_ZN3PID4InitEfffbb
 268              	.L58:
 269 00d4 0022     		movs	r2, #0
 270 00d6 0137     		adds	r7, r7, #1
 271 00d8 042F     		cmp	r7, #4
 272 00da 3261     		str	r2, [r6, #16]
 273 00dc 06F10406 		add	r6, r6, #4
 274 00e0 D0D1     		bne	.L54
 275 00e2 05F17C01 		add	r1, r5, #124
 276 00e6 05F15403 		add	r3, r5, #84
 277              	.L55:
 278 00ea 43F8042B 		str	r2, [r3], #4
 279 00ee 9942     		cmp	r1, r3
 280 00f0 FBD1     		bne	.L55
 281 00f2 85F88120 		strb	r2, [r5, #129]
 282 00f6 FFF7FEFF 		bl	millis
 283 00fa 0122     		movs	r2, #1
 284 00fc 2B68     		ldr	r3, [r5]
 285 00fe D3F8BC34 		ldr	r3, [r3, #1212]
ARM GAS  /tmp/ccKkmt7o.s 			page 6


 286 0102 85F88020 		strb	r2, [r5, #128]
 287 0106 C31A     		subs	r3, r0, r3
 288 0108 EB67     		str	r3, [r5, #124]
 289 010a 03B0     		add	sp, sp, #12
 290              		@ sp needed
 291 010c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 292              	.L62:
 293 0110 4946     		mov	r1, r9
 294 0112 5046     		mov	r0, r10
 295 0114 FFF7FEFF 		bl	_ZN16HeaterProtection4InitEf
 296 0118 BBF1030F 		cmp	fp, #3
 297 011c A4D8     		bhi	.L44
 298              	.L78:
 299 011e 5146     		mov	r1, r10
 300 0120 F869     		ldr	r0, [r7, #28]
 301 0122 FFF7FEFF 		bl	_ZN3PID19SetHeaterProtectionEP16HeaterProtection
 302 0126 9FE7     		b	.L44
 303              	.L46:
 304 0128 0023     		movs	r3, #0
 305 012a 3068     		ldr	r0, [r6]
 306 012c 5246     		mov	r2, r10
 307 012e 0193     		str	r3, [sp, #4]
 308 0130 0093     		str	r3, [sp]
 309 0132 4946     		mov	r1, r9
 310 0134 5B46     		mov	r3, fp
 311 0136 FFF7FEFF 		bl	_ZN3PID4InitEfffbb
 312 013a CBE7     		b	.L58
 313              	.L80:
 314              		.align	2
 315              	.L79:
 316 013c 00009143 		.word	1133576192
 317 0140 0000AA43 		.word	1135214592
 318 0144 00000C43 		.word	1124859904
 319 0148 0000B040 		.word	1085276160
 320 014c 0000FA42 		.word	1123680256
 321 0150 00002041 		.word	1092616192
 322 0154 00002F44 		.word	1143930880
 323 0158 0000B442 		.word	1119092736
 324              		.size	_ZN4Heat4InitEv, .-_ZN4Heat4InitEv
 325              		.section	.text._ZN4Heat4ExitEv,"ax",%progbits
 326              		.align	1
 327              		.p2align 2,,3
 328              		.global	_ZN4Heat4ExitEv
 329              		.syntax unified
 330              		.thumb
 331              		.thumb_func
 332              		.fpu softvfp
 333              		.type	_ZN4Heat4ExitEv, %function
 334              	_ZN4Heat4ExitEv:
 335              		@ args = 0, pretend = 0, frame = 0
 336              		@ frame_needed = 0, uses_anonymous_args = 0
 337 0000 70B5     		push	{r4, r5, r6, lr}
 338 0002 0646     		mov	r6, r0
 339 0004 00F13405 		add	r5, r0, #52
 340 0008 00F12404 		add	r4, r0, #36
 341              	.L82:
 342 000c 54F8040B 		ldr	r0, [r4], #4
ARM GAS  /tmp/ccKkmt7o.s 			page 7


 343 0010 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 344 0014 A542     		cmp	r5, r4
 345 0016 F9D1     		bne	.L82
 346 0018 0023     		movs	r3, #0
 347 001a 86F88030 		strb	r3, [r6, #128]
 348 001e 70BD     		pop	{r4, r5, r6, pc}
 349              		.size	_ZN4Heat4ExitEv, .-_ZN4Heat4ExitEv
 350              		.section	.text._ZN4Heat4SpinEv,"ax",%progbits
 351              		.align	1
 352              		.p2align 2,,3
 353              		.global	_ZN4Heat4SpinEv
 354              		.syntax unified
 355              		.thumb
 356              		.thumb_func
 357              		.fpu softvfp
 358              		.type	_ZN4Heat4SpinEv, %function
 359              	_ZN4Heat4SpinEv:
 360              		@ args = 0, pretend = 0, frame = 0
 361              		@ frame_needed = 0, uses_anonymous_args = 0
 362 0000 90F88030 		ldrb	r3, [r0, #128]	@ zero_extendqisi2
 363 0004 03B9     		cbnz	r3, .L99
 364 0006 7047     		bx	lr
 365              	.L99:
 366 0008 70B5     		push	{r4, r5, r6, lr}
 367 000a 0446     		mov	r4, r0
 368 000c FFF7FEFF 		bl	millis
 369 0010 2268     		ldr	r2, [r4]
 370 0012 E36F     		ldr	r3, [r4, #124]
 371 0014 D2F8BC24 		ldr	r2, [r2, #1212]
 372 0018 C31A     		subs	r3, r0, r3
 373 001a 9342     		cmp	r3, r2
 374 001c 1AD3     		bcc	.L85
 375 001e E067     		str	r0, [r4, #124]
 376 0020 04F12405 		add	r5, r4, #36
 377 0024 04F13406 		add	r6, r4, #52
 378              	.L89:
 379 0028 55F8040B 		ldr	r0, [r5], #4
 380 002c FFF7FEFF 		bl	_ZN3PID4SpinEv
 381 0030 AE42     		cmp	r6, r5
 382 0032 F9D1     		bne	.L89
 383 0034 94F98530 		ldrsb	r3, [r4, #133]
 384 0038 5A1C     		adds	r2, r3, #1
 385 003a 0BD0     		beq	.L85
 386 003c 04EB8302 		add	r2, r4, r3, lsl #2
 387 0040 526A     		ldr	r2, [r2, #36]
 388 0042 92F87C20 		ldrb	r2, [r2, #124]	@ zero_extendqisi2
 389 0046 052A     		cmp	r2, #5
 390 0048 04D8     		bhi	.L85
 391 004a FF22     		movs	r2, #255
 392 004c 84F88630 		strb	r3, [r4, #134]
 393 0050 84F88520 		strb	r2, [r4, #133]
 394              	.L85:
 395 0054 70BD     		pop	{r4, r5, r6, pc}
 396              		.size	_ZN4Heat4SpinEv, .-_ZN4Heat4SpinEv
 397              		.global	__aeabi_f2d
 398 0056 00BF     		.section	.text._ZN4Heat11DiagnosticsE11MessageType,"ax",%progbits
 399              		.align	1
ARM GAS  /tmp/ccKkmt7o.s 			page 8


 400              		.p2align 2,,3
 401              		.global	_ZN4Heat11DiagnosticsE11MessageType
 402              		.syntax unified
 403              		.thumb
 404              		.thumb_func
 405              		.fpu softvfp
 406              		.type	_ZN4Heat11DiagnosticsE11MessageType, %function
 407              	_ZN4Heat11DiagnosticsE11MessageType:
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 0, uses_anonymous_args = 0
 410 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 411 0004 0446     		mov	r4, r0
 412 0006 0546     		mov	r5, r0
 413 0008 82B0     		sub	sp, sp, #8
 414 000a 54F8820B 		ldr	r0, [r4], #130
 415 000e 224A     		ldr	r2, .L113
 416 0010 0E46     		mov	r6, r1
 417 0012 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 418 0016 DFF88C80 		ldr	r8, .L113+12
 419 001a 05F18307 		add	r7, r5, #131
 420              	.L101:
 421 001e 14F9013B 		ldrsb	r3, [r4], #1
 422 0022 4246     		mov	r2, r8
 423 0024 3146     		mov	r1, r6
 424 0026 2868     		ldr	r0, [r5]
 425 0028 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 426 002c A742     		cmp	r7, r4
 427 002e F6D1     		bne	.L101
 428 0030 2F46     		mov	r7, r5
 429 0032 1A4A     		ldr	r2, .L113+4
 430 0034 57F8850B 		ldr	r0, [r7], #133
 431 0038 3146     		mov	r1, r6
 432 003a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 433 003e DFF86480 		ldr	r8, .L113+12
 434              	.L102:
 435 0042 14F9013B 		ldrsb	r3, [r4], #1
 436 0046 4246     		mov	r2, r8
 437 0048 3146     		mov	r1, r6
 438 004a 2868     		ldr	r0, [r5]
 439 004c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 440 0050 A742     		cmp	r7, r4
 441 0052 F6D1     		bne	.L102
 442 0054 2F46     		mov	r7, r5
 443 0056 124A     		ldr	r2, .L113+8
 444 0058 57F8240B 		ldr	r0, [r7], #36
 445 005c 3146     		mov	r1, r6
 446 005e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 447 0062 0024     		movs	r4, #0
 448 0064 DFF84080 		ldr	r8, .L113+16
 449              	.L104:
 450 0068 57F8043B 		ldr	r3, [r7], #4
 451 006c 93F87E20 		ldrb	r2, [r3, #126]	@ zero_extendqisi2
 452 0070 2AB9     		cbnz	r2, .L112
 453              	.L103:
 454 0072 0134     		adds	r4, r4, #1
 455 0074 042C     		cmp	r4, #4
 456 0076 F7D1     		bne	.L104
ARM GAS  /tmp/ccKkmt7o.s 			page 9


 457 0078 02B0     		add	sp, sp, #8
 458              		@ sp needed
 459 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 460              	.L112:
 461 007e 586E     		ldr	r0, [r3, #100]	@ float
 462 0080 FFF7FEFF 		bl	__aeabi_f2d
 463 0084 2A68     		ldr	r2, [r5]
 464 0086 2346     		mov	r3, r4
 465 0088 CDE90001 		strd	r0, [sp]
 466 008c 1046     		mov	r0, r2
 467 008e 3146     		mov	r1, r6
 468 0090 4246     		mov	r2, r8
 469 0092 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 470 0096 ECE7     		b	.L103
 471              	.L114:
 472              		.align	2
 473              	.L113:
 474 0098 00000000 		.word	.LC0
 475 009c 20000000 		.word	.LC2
 476 00a0 34000000 		.word	.LC3
 477 00a4 1C000000 		.word	.LC1
 478 00a8 38000000 		.word	.LC4
 479              		.size	_ZN4Heat11DiagnosticsE11MessageType, .-_ZN4Heat11DiagnosticsE11MessageType
 480              		.global	__aeabi_fcmplt
 481              		.global	__aeabi_fsub
 482              		.global	__aeabi_fcmple
 483              		.section	.text._ZNK4Heat22HeaterAtSetTemperatureEab,"ax",%progbits
 484              		.align	1
 485              		.p2align 2,,3
 486              		.global	_ZNK4Heat22HeaterAtSetTemperatureEab
 487              		.syntax unified
 488              		.thumb
 489              		.thumb_func
 490              		.fpu softvfp
 491              		.type	_ZNK4Heat22HeaterAtSetTemperatureEab, %function
 492              	_ZNK4Heat22HeaterAtSetTemperatureEab:
 493              		@ args = 0, pretend = 0, frame = 0
 494              		@ frame_needed = 0, uses_anonymous_args = 0
 495 0000 CBB2     		uxtb	r3, r1
 496 0002 032B     		cmp	r3, #3
 497 0004 06D8     		bhi	.L121
 498 0006 00EB8101 		add	r1, r0, r1, lsl #2
 499 000a 4B6A     		ldr	r3, [r1, #36]
 500 000c 93F87C10 		ldrb	r1, [r3, #124]	@ zero_extendqisi2
 501 0010 0129     		cmp	r1, #1
 502 0012 01D8     		bhi	.L131
 503              	.L121:
 504 0014 0120     		movs	r0, #1
 505 0016 7047     		bx	lr
 506              	.L131:
 507 0018 93F87E10 		ldrb	r1, [r3, #126]	@ zero_extendqisi2
 508 001c 70B5     		push	{r4, r5, r6, lr}
 509 001e 9E69     		ldr	r6, [r3, #24]	@ float
 510 0020 C9B9     		cbnz	r1, .L132
 511 0022 DD68     		ldr	r5, [r3, #12]	@ float
 512 0024 1149     		ldr	r1, .L134
 513 0026 2846     		mov	r0, r5
ARM GAS  /tmp/ccKkmt7o.s 			page 10


 514 0028 1446     		mov	r4, r2
 515 002a FFF7FEFF 		bl	__aeabi_fcmplt
 516 002e D0B9     		cbnz	r0, .L123
 517              	.L133:
 518 0030 2946     		mov	r1, r5
 519 0032 3046     		mov	r0, r6
 520 0034 FFF7FEFF 		bl	__aeabi_fsub
 521 0038 4FF07E51 		mov	r1, #1065353216
 522 003c 20F00040 		bic	r0, r0, #-2147483648
 523 0040 FFF7FEFF 		bl	__aeabi_fcmple
 524 0044 78B9     		cbnz	r0, .L123
 525 0046 3146     		mov	r1, r6
 526 0048 2846     		mov	r0, r5
 527 004a FFF7FEFF 		bl	__aeabi_fcmplt
 528 004e 58B1     		cbz	r0, .L116
 529 0050 84F00100 		eor	r0, r4, #1
 530 0054 70BD     		pop	{r4, r5, r6, pc}
 531              	.L132:
 532 0056 9D68     		ldr	r5, [r3, #8]	@ float
 533 0058 0449     		ldr	r1, .L134
 534 005a 2846     		mov	r0, r5
 535 005c 1446     		mov	r4, r2
 536 005e FFF7FEFF 		bl	__aeabi_fcmplt
 537 0062 0028     		cmp	r0, #0
 538 0064 E4D0     		beq	.L133
 539              	.L123:
 540 0066 0120     		movs	r0, #1
 541              	.L116:
 542 0068 70BD     		pop	{r4, r5, r6, pc}
 543              	.L135:
 544 006a 00BF     		.align	2
 545              	.L134:
 546 006c 00002042 		.word	1109393408
 547              		.size	_ZNK4Heat22HeaterAtSetTemperatureEab, .-_ZNK4Heat22HeaterAtSetTemperatureEab
 548              		.section	.text._ZNK4Heat27AllHeatersAtSetTemperaturesEb,"ax",%progbits
 549              		.align	1
 550              		.p2align 2,,3
 551              		.global	_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 552              		.syntax unified
 553              		.thumb
 554              		.thumb_func
 555              		.fpu softvfp
 556              		.type	_ZNK4Heat27AllHeatersAtSetTemperaturesEb, %function
 557              	_ZNK4Heat27AllHeatersAtSetTemperaturesEb:
 558              		@ args = 0, pretend = 0, frame = 0
 559              		@ frame_needed = 0, uses_anonymous_args = 0
 560 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 561 0004 0746     		mov	r7, r0
 562 0006 8846     		mov	r8, r1
 563 0008 0025     		movs	r5, #0
 564 000a 00F18206 		add	r6, r0, #130
 565              	.L141:
 566 000e 6CB2     		sxtb	r4, r5
 567 0010 2146     		mov	r1, r4
 568 0012 0122     		movs	r2, #1
 569 0014 3846     		mov	r0, r7
 570 0016 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
ARM GAS  /tmp/ccKkmt7o.s 			page 11


 571 001a 88B9     		cbnz	r0, .L137
 572 001c B8F1000F 		cmp	r8, #0
 573 0020 0CD1     		bne	.L138
 574 0022 97F98230 		ldrsb	r3, [r7, #130]
 575 0026 A342     		cmp	r3, r4
 576 0028 0AD0     		beq	.L137
 577 002a 3346     		mov	r3, r6
 578 002c 03E0     		b	.L139
 579              	.L144:
 580 002e 13F9012F 		ldrsb	r2, [r3, #1]!
 581 0032 A242     		cmp	r2, r4
 582 0034 04D0     		beq	.L137
 583              	.L139:
 584 0036 9E42     		cmp	r6, r3
 585 0038 F9D1     		bne	.L144
 586 003a 0020     		movs	r0, #0
 587              	.L138:
 588 003c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 589              	.L137:
 590 0040 0135     		adds	r5, r5, #1
 591 0042 042D     		cmp	r5, #4
 592 0044 E3D1     		bne	.L141
 593 0046 0120     		movs	r0, #1
 594 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 595              		.size	_ZNK4Heat27AllHeatersAtSetTemperaturesEb, .-_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 596              		.section	.text._ZNK4Heat9GetStatusEa,"ax",%progbits
 597              		.align	1
 598              		.p2align 2,,3
 599              		.global	_ZNK4Heat9GetStatusEa
 600              		.syntax unified
 601              		.thumb
 602              		.thumb_func
 603              		.fpu softvfp
 604              		.type	_ZNK4Heat9GetStatusEa, %function
 605              	_ZNK4Heat9GetStatusEa:
 606              		@ args = 0, pretend = 0, frame = 0
 607              		@ frame_needed = 0, uses_anonymous_args = 0
 608              		@ link register save eliminated.
 609 0000 CBB2     		uxtb	r3, r1
 610 0002 032B     		cmp	r3, #3
 611 0004 0DD8     		bhi	.L151
 612 0006 00EB8100 		add	r0, r0, r1, lsl #2
 613 000a 426A     		ldr	r2, [r0, #36]
 614 000c 92F87C30 		ldrb	r3, [r2, #124]	@ zero_extendqisi2
 615 0010 0BB9     		cbnz	r3, .L154
 616 0012 0320     		movs	r0, #3
 617 0014 7047     		bx	lr
 618              	.L154:
 619 0016 012B     		cmp	r3, #1
 620 0018 03D0     		beq	.L151
 621 001a 052B     		cmp	r3, #5
 622 001c 03D9     		bls	.L155
 623 001e 0420     		movs	r0, #4
 624 0020 7047     		bx	lr
 625              	.L151:
 626 0022 0020     		movs	r0, #0
 627 0024 7047     		bx	lr
ARM GAS  /tmp/ccKkmt7o.s 			page 12


 628              	.L155:
 629 0026 92F87E30 		ldrb	r3, [r2, #126]	@ zero_extendqisi2
 630 002a 002B     		cmp	r3, #0
 631 002c 14BF     		ite	ne
 632 002e 0220     		movne	r0, #2
 633 0030 0120     		moveq	r0, #1
 634 0032 7047     		bx	lr
 635              		.size	_ZNK4Heat9GetStatusEa, .-_ZNK4Heat9GetStatusEa
 636              		.section	.text._ZN4Heat12SetBedHeaterEja,"ax",%progbits
 637              		.align	1
 638              		.p2align 2,,3
 639              		.global	_ZN4Heat12SetBedHeaterEja
 640              		.syntax unified
 641              		.thumb
 642              		.thumb_func
 643              		.fpu softvfp
 644              		.type	_ZN4Heat12SetBedHeaterEja, %function
 645              	_ZN4Heat12SetBedHeaterEja:
 646              		@ args = 0, pretend = 0, frame = 0
 647              		@ frame_needed = 0, uses_anonymous_args = 0
 648 0000 38B5     		push	{r3, r4, r5, lr}
 649 0002 4418     		adds	r4, r0, r1
 650 0004 94F98230 		ldrsb	r3, [r4, #130]
 651 0008 1546     		mov	r5, r2
 652 000a 002B     		cmp	r3, #0
 653 000c 04DB     		blt	.L157
 654 000e 00EB8300 		add	r0, r0, r3, lsl #2
 655 0012 406A     		ldr	r0, [r0, #36]
 656 0014 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 657              	.L157:
 658 0018 84F88250 		strb	r5, [r4, #130]
 659 001c 38BD     		pop	{r3, r4, r5, pc}
 660              		.size	_ZN4Heat12SetBedHeaterEja, .-_ZN4Heat12SetBedHeaterEja
 661 001e 00BF     		.section	.text._ZNK4Heat11IsBedHeaterEa,"ax",%progbits
 662              		.align	1
 663              		.p2align 2,,3
 664              		.global	_ZNK4Heat11IsBedHeaterEa
 665              		.syntax unified
 666              		.thumb
 667              		.thumb_func
 668              		.fpu softvfp
 669              		.type	_ZNK4Heat11IsBedHeaterEa, %function
 670              	_ZNK4Heat11IsBedHeaterEa:
 671              		@ args = 0, pretend = 0, frame = 0
 672              		@ frame_needed = 0, uses_anonymous_args = 0
 673              		@ link register save eliminated.
 674 0000 90F98230 		ldrsb	r3, [r0, #130]
 675 0004 8230     		adds	r0, r0, #130
 676 0006 8B42     		cmp	r3, r1
 677 0008 09D0     		beq	.L164
 678 000a 0346     		mov	r3, r0
 679 000c 03E0     		b	.L161
 680              	.L162:
 681 000e 13F9012F 		ldrsb	r2, [r3, #1]!
 682 0012 8A42     		cmp	r2, r1
 683 0014 03D0     		beq	.L164
 684              	.L161:
ARM GAS  /tmp/ccKkmt7o.s 			page 13


 685 0016 8342     		cmp	r3, r0
 686 0018 F9D1     		bne	.L162
 687 001a 0020     		movs	r0, #0
 688 001c 7047     		bx	lr
 689              	.L164:
 690 001e 0120     		movs	r0, #1
 691 0020 7047     		bx	lr
 692              		.size	_ZNK4Heat11IsBedHeaterEa, .-_ZNK4Heat11IsBedHeaterEa
 693 0022 00BF     		.section	.text._ZN4Heat16SetChamberHeaterEja,"ax",%progbits
 694              		.align	1
 695              		.p2align 2,,3
 696              		.global	_ZN4Heat16SetChamberHeaterEja
 697              		.syntax unified
 698              		.thumb
 699              		.thumb_func
 700              		.fpu softvfp
 701              		.type	_ZN4Heat16SetChamberHeaterEja, %function
 702              	_ZN4Heat16SetChamberHeaterEja:
 703              		@ args = 0, pretend = 0, frame = 0
 704              		@ frame_needed = 0, uses_anonymous_args = 0
 705 0000 70B5     		push	{r4, r5, r6, lr}
 706 0002 8318     		adds	r3, r0, r2
 707 0004 93F98330 		ldrsb	r3, [r3, #131]
 708 0008 0446     		mov	r4, r0
 709 000a 002B     		cmp	r3, #0
 710 000c 1546     		mov	r5, r2
 711 000e 0E46     		mov	r6, r1
 712 0010 04DB     		blt	.L166
 713 0012 00EB8303 		add	r3, r0, r3, lsl #2
 714 0016 586A     		ldr	r0, [r3, #36]
 715 0018 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 716              	.L166:
 717 001c 3444     		add	r4, r4, r6
 718 001e 84F88350 		strb	r5, [r4, #131]
 719 0022 70BD     		pop	{r4, r5, r6, pc}
 720              		.size	_ZN4Heat16SetChamberHeaterEja, .-_ZN4Heat16SetChamberHeaterEja
 721              		.section	.text._ZNK4Heat15IsChamberHeaterEa,"ax",%progbits
 722              		.align	1
 723              		.p2align 2,,3
 724              		.global	_ZNK4Heat15IsChamberHeaterEa
 725              		.syntax unified
 726              		.thumb
 727              		.thumb_func
 728              		.fpu softvfp
 729              		.type	_ZNK4Heat15IsChamberHeaterEa, %function
 730              	_ZNK4Heat15IsChamberHeaterEa:
 731              		@ args = 0, pretend = 0, frame = 0
 732              		@ frame_needed = 0, uses_anonymous_args = 0
 733              		@ link register save eliminated.
 734 0000 90F98320 		ldrsb	r2, [r0, #131]
 735 0004 00F18303 		add	r3, r0, #131
 736 0008 8A42     		cmp	r2, r1
 737 000a 09D0     		beq	.L173
 738 000c 8430     		adds	r0, r0, #132
 739 000e 03E0     		b	.L170
 740              	.L171:
 741 0010 13F9012F 		ldrsb	r2, [r3, #1]!
ARM GAS  /tmp/ccKkmt7o.s 			page 14


 742 0014 8A42     		cmp	r2, r1
 743 0016 03D0     		beq	.L173
 744              	.L170:
 745 0018 8342     		cmp	r3, r0
 746 001a F9D1     		bne	.L171
 747 001c 0020     		movs	r0, #0
 748 001e 7047     		bx	lr
 749              	.L173:
 750 0020 0120     		movs	r0, #1
 751 0022 7047     		bx	lr
 752              		.size	_ZNK4Heat15IsChamberHeaterEa, .-_ZNK4Heat15IsChamberHeaterEa
 753              		.section	.text._ZN4Heat20SetActiveTemperatureEaf,"ax",%progbits
 754              		.align	1
 755              		.p2align 2,,3
 756              		.global	_ZN4Heat20SetActiveTemperatureEaf
 757              		.syntax unified
 758              		.thumb
 759              		.thumb_func
 760              		.fpu softvfp
 761              		.type	_ZN4Heat20SetActiveTemperatureEaf, %function
 762              	_ZN4Heat20SetActiveTemperatureEaf:
 763              		@ args = 0, pretend = 0, frame = 0
 764              		@ frame_needed = 0, uses_anonymous_args = 0
 765              		@ link register save eliminated.
 766 0000 CBB2     		uxtb	r3, r1
 767 0002 032B     		cmp	r3, #3
 768 0004 00D9     		bls	.L176
 769 0006 7047     		bx	lr
 770              	.L176:
 771 0008 00EB8100 		add	r0, r0, r1, lsl #2
 772 000c 406A     		ldr	r0, [r0, #36]
 773 000e 1146     		mov	r1, r2
 774 0010 FFF7FEBF 		b	_ZN3PID20SetActiveTemperatureEf
 775              		.size	_ZN4Heat20SetActiveTemperatureEaf, .-_ZN4Heat20SetActiveTemperatureEaf
 776              		.section	.text._ZNK4Heat20GetActiveTemperatureEa,"ax",%progbits
 777              		.align	1
 778              		.p2align 2,,3
 779              		.global	_ZNK4Heat20GetActiveTemperatureEa
 780              		.syntax unified
 781              		.thumb
 782              		.thumb_func
 783              		.fpu softvfp
 784              		.type	_ZNK4Heat20GetActiveTemperatureEa, %function
 785              	_ZNK4Heat20GetActiveTemperatureEa:
 786              		@ args = 0, pretend = 0, frame = 0
 787              		@ frame_needed = 0, uses_anonymous_args = 0
 788              		@ link register save eliminated.
 789 0000 CBB2     		uxtb	r3, r1
 790 0002 032B     		cmp	r3, #3
 791 0004 9DBF     		ittte	ls
 792 0006 00EB8100 		addls	r0, r0, r1, lsl #2
 793 000a 436A     		ldrls	r3, [r0, #36]
 794 000c 9868     		ldrls	r0, [r3, #8]	@ float
 795 000e 0148     		ldrhi	r0, .L180
 796 0010 7047     		bx	lr
 797              	.L181:
 798 0012 00BF     		.align	2
ARM GAS  /tmp/ccKkmt7o.s 			page 15


 799              	.L180:
 800 0014 339388C3 		.word	-1014459597
 801              		.size	_ZNK4Heat20GetActiveTemperatureEa, .-_ZNK4Heat20GetActiveTemperatureEa
 802              		.section	.text._ZN4Heat21SetStandbyTemperatureEaf,"ax",%progbits
 803              		.align	1
 804              		.p2align 2,,3
 805              		.global	_ZN4Heat21SetStandbyTemperatureEaf
 806              		.syntax unified
 807              		.thumb
 808              		.thumb_func
 809              		.fpu softvfp
 810              		.type	_ZN4Heat21SetStandbyTemperatureEaf, %function
 811              	_ZN4Heat21SetStandbyTemperatureEaf:
 812              		@ args = 0, pretend = 0, frame = 0
 813              		@ frame_needed = 0, uses_anonymous_args = 0
 814              		@ link register save eliminated.
 815 0000 CBB2     		uxtb	r3, r1
 816 0002 032B     		cmp	r3, #3
 817 0004 00D9     		bls	.L184
 818 0006 7047     		bx	lr
 819              	.L184:
 820 0008 00EB8100 		add	r0, r0, r1, lsl #2
 821 000c 406A     		ldr	r0, [r0, #36]
 822 000e 1146     		mov	r1, r2
 823 0010 FFF7FEBF 		b	_ZN3PID21SetStandbyTemperatureEf
 824              		.size	_ZN4Heat21SetStandbyTemperatureEaf, .-_ZN4Heat21SetStandbyTemperatureEaf
 825              		.section	.text._ZNK4Heat21GetStandbyTemperatureEa,"ax",%progbits
 826              		.align	1
 827              		.p2align 2,,3
 828              		.global	_ZNK4Heat21GetStandbyTemperatureEa
 829              		.syntax unified
 830              		.thumb
 831              		.thumb_func
 832              		.fpu softvfp
 833              		.type	_ZNK4Heat21GetStandbyTemperatureEa, %function
 834              	_ZNK4Heat21GetStandbyTemperatureEa:
 835              		@ args = 0, pretend = 0, frame = 0
 836              		@ frame_needed = 0, uses_anonymous_args = 0
 837              		@ link register save eliminated.
 838 0000 CBB2     		uxtb	r3, r1
 839 0002 032B     		cmp	r3, #3
 840 0004 9DBF     		ittte	ls
 841 0006 00EB8100 		addls	r0, r0, r1, lsl #2
 842 000a 436A     		ldrls	r3, [r0, #36]
 843 000c D868     		ldrls	r0, [r3, #12]	@ float
 844 000e 0148     		ldrhi	r0, .L188
 845 0010 7047     		bx	lr
 846              	.L189:
 847 0012 00BF     		.align	2
 848              	.L188:
 849 0014 339388C3 		.word	-1014459597
 850              		.size	_ZNK4Heat21GetStandbyTemperatureEa, .-_ZNK4Heat21GetStandbyTemperatureEa
 851              		.global	__aeabi_fcmpgt
 852              		.global	__aeabi_fcmpeq
 853              		.section	.text._ZNK4Heat26GetHighestTemperatureLimitEa,"ax",%progbits
 854              		.align	1
 855              		.p2align 2,,3
ARM GAS  /tmp/ccKkmt7o.s 			page 16


 856              		.global	_ZNK4Heat26GetHighestTemperatureLimitEa
 857              		.syntax unified
 858              		.thumb
 859              		.thumb_func
 860              		.fpu softvfp
 861              		.type	_ZNK4Heat26GetHighestTemperatureLimitEa, %function
 862              	_ZNK4Heat26GetHighestTemperatureLimitEa:
 863              		@ args = 0, pretend = 0, frame = 0
 864              		@ frame_needed = 0, uses_anonymous_args = 0
 865 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 866 0004 CBB2     		uxtb	r3, r1
 867 0006 032B     		cmp	r3, #3
 868 0008 24D8     		bhi	.L196
 869 000a 144D     		ldr	r5, .L203
 870 000c 0E46     		mov	r6, r1
 871 000e 00F12407 		add	r7, r0, #36
 872 0012 A846     		mov	r8, r5
 873 0014 041D     		adds	r4, r0, #4
 874 0016 01E0     		b	.L194
 875              	.L192:
 876 0018 A742     		cmp	r7, r4
 877 001a 18D0     		beq	.L190
 878              	.L194:
 879 001c 54F8043B 		ldr	r3, [r4], #4
 880 0020 93F90920 		ldrsb	r2, [r3, #9]
 881 0024 B242     		cmp	r2, r6
 882 0026 F7D1     		bne	.L192
 883 0028 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 884 002a 002A     		cmp	r2, #0
 885 002c F4D1     		bne	.L192
 886 002e 4146     		mov	r1, r8
 887 0030 2846     		mov	r0, r5
 888 0032 D3F80490 		ldr	r9, [r3, #4]	@ float
 889 0036 FFF7FEFF 		bl	__aeabi_fcmpeq
 890 003a 28B9     		cbnz	r0, .L198
 891 003c 2946     		mov	r1, r5
 892 003e 4846     		mov	r0, r9
 893 0040 FFF7FEFF 		bl	__aeabi_fcmpgt
 894 0044 0028     		cmp	r0, #0
 895 0046 E7D0     		beq	.L192
 896              	.L198:
 897 0048 A742     		cmp	r7, r4
 898 004a 4D46     		mov	r5, r9
 899 004c E6D1     		bne	.L194
 900              	.L190:
 901 004e 2846     		mov	r0, r5
 902 0050 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 903              	.L196:
 904 0054 014D     		ldr	r5, .L203
 905 0056 2846     		mov	r0, r5
 906 0058 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 907              	.L204:
 908              		.align	2
 909              	.L203:
 910 005c 0000FA44 		.word	1157234688
 911              		.size	_ZNK4Heat26GetHighestTemperatureLimitEa, .-_ZNK4Heat26GetHighestTemperatureLimitEa
 912              		.section	.text._ZNK4Heat25GetLowestTemperatureLimitEa,"ax",%progbits
ARM GAS  /tmp/ccKkmt7o.s 			page 17


 913              		.align	1
 914              		.p2align 2,,3
 915              		.global	_ZNK4Heat25GetLowestTemperatureLimitEa
 916              		.syntax unified
 917              		.thumb
 918              		.thumb_func
 919              		.fpu softvfp
 920              		.type	_ZNK4Heat25GetLowestTemperatureLimitEa, %function
 921              	_ZNK4Heat25GetLowestTemperatureLimitEa:
 922              		@ args = 0, pretend = 0, frame = 0
 923              		@ frame_needed = 0, uses_anonymous_args = 0
 924 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 925 0004 CBB2     		uxtb	r3, r1
 926 0006 032B     		cmp	r3, #3
 927 0008 24D8     		bhi	.L211
 928 000a 144D     		ldr	r5, .L219
 929 000c 0E46     		mov	r6, r1
 930 000e 00F12407 		add	r7, r0, #36
 931 0012 A846     		mov	r8, r5
 932 0014 041D     		adds	r4, r0, #4
 933 0016 01E0     		b	.L209
 934              	.L207:
 935 0018 A742     		cmp	r7, r4
 936 001a 18D0     		beq	.L205
 937              	.L209:
 938 001c 54F8043B 		ldr	r3, [r4], #4
 939 0020 93F90920 		ldrsb	r2, [r3, #9]
 940 0024 B242     		cmp	r2, r6
 941 0026 F7D1     		bne	.L207
 942 0028 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 943 002a 012A     		cmp	r2, #1
 944 002c F4D1     		bne	.L207
 945 002e 4146     		mov	r1, r8
 946 0030 2846     		mov	r0, r5
 947 0032 D3F80490 		ldr	r9, [r3, #4]	@ float
 948 0036 FFF7FEFF 		bl	__aeabi_fcmpeq
 949 003a 28B9     		cbnz	r0, .L213
 950 003c 2946     		mov	r1, r5
 951 003e 4846     		mov	r0, r9
 952 0040 FFF7FEFF 		bl	__aeabi_fcmplt
 953 0044 0028     		cmp	r0, #0
 954 0046 E7D0     		beq	.L207
 955              	.L213:
 956 0048 A742     		cmp	r7, r4
 957 004a 4D46     		mov	r5, r9
 958 004c E6D1     		bne	.L209
 959              	.L205:
 960 004e 2846     		mov	r0, r5
 961 0050 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 962              	.L211:
 963 0054 014D     		ldr	r5, .L219
 964 0056 2846     		mov	r0, r5
 965 0058 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 966              	.L220:
 967              		.align	2
 968              	.L219:
 969 005c 339388C3 		.word	-1014459597
ARM GAS  /tmp/ccKkmt7o.s 			page 18


 970              		.size	_ZNK4Heat25GetLowestTemperatureLimitEa, .-_ZNK4Heat25GetLowestTemperatureLimitEa
 971              		.section	.text._ZNK4Heat14GetTemperatureEa,"ax",%progbits
 972              		.align	1
 973              		.p2align 2,,3
 974              		.global	_ZNK4Heat14GetTemperatureEa
 975              		.syntax unified
 976              		.thumb
 977              		.thumb_func
 978              		.fpu softvfp
 979              		.type	_ZNK4Heat14GetTemperatureEa, %function
 980              	_ZNK4Heat14GetTemperatureEa:
 981              		@ args = 0, pretend = 0, frame = 0
 982              		@ frame_needed = 0, uses_anonymous_args = 0
 983              		@ link register save eliminated.
 984 0000 CBB2     		uxtb	r3, r1
 985 0002 032B     		cmp	r3, #3
 986 0004 9DBF     		ittte	ls
 987 0006 00EB8100 		addls	r0, r0, r1, lsl #2
 988 000a 436A     		ldrls	r3, [r0, #36]
 989 000c 9869     		ldrls	r0, [r3, #24]	@ float
 990 000e 0148     		ldrhi	r0, .L224
 991 0010 7047     		bx	lr
 992              	.L225:
 993 0012 00BF     		.align	2
 994              	.L224:
 995 0014 339388C3 		.word	-1014459597
 996              		.size	_ZNK4Heat14GetTemperatureEa, .-_ZNK4Heat14GetTemperatureEa
 997              		.section	.text._ZNK4Heat20GetTargetTemperatureEa,"ax",%progbits
 998              		.align	1
 999              		.p2align 2,,3
 1000              		.global	_ZNK4Heat20GetTargetTemperatureEa
 1001              		.syntax unified
 1002              		.thumb
 1003              		.thumb_func
 1004              		.fpu softvfp
 1005              		.type	_ZNK4Heat20GetTargetTemperatureEa, %function
 1006              	_ZNK4Heat20GetTargetTemperatureEa:
 1007              		@ args = 0, pretend = 0, frame = 0
 1008              		@ frame_needed = 0, uses_anonymous_args = 0
 1009              		@ link register save eliminated.
 1010 0000 CBB2     		uxtb	r3, r1
 1011 0002 032B     		cmp	r3, #3
 1012 0004 07D8     		bhi	.L230
 1013 0006 00EB8100 		add	r0, r0, r1, lsl #2
 1014 000a 426A     		ldr	r2, [r0, #36]
 1015 000c 92F87C30 		ldrb	r3, [r2, #124]	@ zero_extendqisi2
 1016 0010 023B     		subs	r3, r3, #2
 1017 0012 032B     		cmp	r3, #3
 1018 0014 01D9     		bls	.L231
 1019              	.L230:
 1020 0016 0020     		movs	r0, #0
 1021 0018 7047     		bx	lr
 1022              	.L231:
 1023 001a 92F87E30 		ldrb	r3, [r2, #126]	@ zero_extendqisi2
 1024 001e 0BB1     		cbz	r3, .L228
 1025 0020 9068     		ldr	r0, [r2, #8]	@ float
 1026 0022 7047     		bx	lr
ARM GAS  /tmp/ccKkmt7o.s 			page 19


 1027              	.L228:
 1028 0024 D068     		ldr	r0, [r2, #12]	@ float
 1029 0026 7047     		bx	lr
 1030              		.size	_ZNK4Heat20GetTargetTemperatureEa, .-_ZNK4Heat20GetTargetTemperatureEa
 1031              		.section	.text._ZN4Heat8ActivateEa,"ax",%progbits
 1032              		.align	1
 1033              		.p2align 2,,3
 1034              		.global	_ZN4Heat8ActivateEa
 1035              		.syntax unified
 1036              		.thumb
 1037              		.thumb_func
 1038              		.fpu softvfp
 1039              		.type	_ZN4Heat8ActivateEa, %function
 1040              	_ZN4Heat8ActivateEa:
 1041              		@ args = 0, pretend = 0, frame = 0
 1042              		@ frame_needed = 0, uses_anonymous_args = 0
 1043              		@ link register save eliminated.
 1044 0000 CBB2     		uxtb	r3, r1
 1045 0002 032B     		cmp	r3, #3
 1046 0004 00D9     		bls	.L234
 1047 0006 7047     		bx	lr
 1048              	.L234:
 1049 0008 00EB8101 		add	r1, r0, r1, lsl #2
 1050 000c 486A     		ldr	r0, [r1, #36]
 1051 000e FFF7FEBF 		b	_ZN3PID8ActivateEv
 1052              		.size	_ZN4Heat8ActivateEa, .-_ZN4Heat8ActivateEa
 1053 0012 00BF     		.section	.text._ZN4Heat9SwitchOffEa,"ax",%progbits
 1054              		.align	1
 1055              		.p2align 2,,3
 1056              		.global	_ZN4Heat9SwitchOffEa
 1057              		.syntax unified
 1058              		.thumb
 1059              		.thumb_func
 1060              		.fpu softvfp
 1061              		.type	_ZN4Heat9SwitchOffEa, %function
 1062              	_ZN4Heat9SwitchOffEa:
 1063              		@ args = 0, pretend = 0, frame = 0
 1064              		@ frame_needed = 0, uses_anonymous_args = 0
 1065 0000 CBB2     		uxtb	r3, r1
 1066 0002 032B     		cmp	r3, #3
 1067 0004 00D9     		bls	.L241
 1068 0006 7047     		bx	lr
 1069              	.L241:
 1070 0008 10B5     		push	{r4, lr}
 1071 000a 00EB8104 		add	r4, r0, r1, lsl #2
 1072 000e 606A     		ldr	r0, [r4, #36]
 1073 0010 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 1074 0014 0023     		movs	r3, #0
 1075 0016 6363     		str	r3, [r4, #52]
 1076 0018 10BD     		pop	{r4, pc}
 1077              		.size	_ZN4Heat9SwitchOffEa, .-_ZN4Heat9SwitchOffEa
 1078 001a 00BF     		.section	.text._ZN4Heat12SwitchOffAllEb,"ax",%progbits
 1079              		.align	1
 1080              		.p2align 2,,3
 1081              		.global	_ZN4Heat12SwitchOffAllEb
 1082              		.syntax unified
 1083              		.thumb
ARM GAS  /tmp/ccKkmt7o.s 			page 20


 1084              		.thumb_func
 1085              		.fpu softvfp
 1086              		.type	_ZN4Heat12SwitchOffAllEb, %function
 1087              	_ZN4Heat12SwitchOffAllEb:
 1088              		@ args = 0, pretend = 0, frame = 0
 1089              		@ frame_needed = 0, uses_anonymous_args = 0
 1090 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1091 0004 8146     		mov	r9, r0
 1092 0006 0E46     		mov	r6, r1
 1093 0008 0025     		movs	r5, #0
 1094 000a 00F12408 		add	r8, r0, #36
 1095 000e 00F18204 		add	r4, r0, #130
 1096 0012 00F18307 		add	r7, r0, #131
 1097 0016 00F1840A 		add	r10, r0, #132
 1098              	.L249:
 1099 001a C6B9     		cbnz	r6, .L243
 1100 001c 99F98230 		ldrsb	r3, [r9, #130]
 1101 0020 69B2     		sxtb	r1, r5
 1102 0022 8B42     		cmp	r3, r1
 1103 0024 17D0     		beq	.L244
 1104 0026 2346     		mov	r3, r4
 1105 0028 03E0     		b	.L245
 1106              	.L253:
 1107 002a 13F9012F 		ldrsb	r2, [r3, #1]!
 1108 002e 8A42     		cmp	r2, r1
 1109 0030 11D0     		beq	.L244
 1110              	.L245:
 1111 0032 A342     		cmp	r3, r4
 1112 0034 F9D1     		bne	.L253
 1113 0036 99F98330 		ldrsb	r3, [r9, #131]
 1114 003a 8B42     		cmp	r3, r1
 1115 003c 0BD0     		beq	.L244
 1116 003e 3B46     		mov	r3, r7
 1117 0040 03E0     		b	.L250
 1118              	.L254:
 1119 0042 13F9012F 		ldrsb	r2, [r3, #1]!
 1120 0046 8A42     		cmp	r2, r1
 1121 0048 05D0     		beq	.L244
 1122              	.L250:
 1123 004a 5345     		cmp	r3, r10
 1124 004c F9D1     		bne	.L254
 1125              	.L243:
 1126 004e D8F80000 		ldr	r0, [r8]
 1127 0052 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 1128              	.L244:
 1129 0056 0135     		adds	r5, r5, #1
 1130 0058 042D     		cmp	r5, #4
 1131 005a 08F10408 		add	r8, r8, #4
 1132 005e DCD1     		bne	.L249
 1133 0060 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1134              		.size	_ZN4Heat12SwitchOffAllEb, .-_ZN4Heat12SwitchOffAllEb
 1135              		.section	.text._ZN4Heat7StandbyEaPK4Tool,"ax",%progbits
 1136              		.align	1
 1137              		.p2align 2,,3
 1138              		.global	_ZN4Heat7StandbyEaPK4Tool
 1139              		.syntax unified
 1140              		.thumb
ARM GAS  /tmp/ccKkmt7o.s 			page 21


 1141              		.thumb_func
 1142              		.fpu softvfp
 1143              		.type	_ZN4Heat7StandbyEaPK4Tool, %function
 1144              	_ZN4Heat7StandbyEaPK4Tool:
 1145              		@ args = 0, pretend = 0, frame = 0
 1146              		@ frame_needed = 0, uses_anonymous_args = 0
 1147 0000 38B5     		push	{r3, r4, r5, lr}
 1148 0002 CBB2     		uxtb	r3, r1
 1149 0004 032B     		cmp	r3, #3
 1150 0006 06D8     		bhi	.L258
 1151 0008 1546     		mov	r5, r2
 1152 000a 00EB8104 		add	r4, r0, r1, lsl #2
 1153 000e 606A     		ldr	r0, [r4, #36]
 1154 0010 FFF7FEFF 		bl	_ZN3PID7StandbyEv
 1155 0014 6563     		str	r5, [r4, #52]
 1156              	.L258:
 1157 0016 38BD     		pop	{r3, r4, r5, pc}
 1158              		.size	_ZN4Heat7StandbyEaPK4Tool, .-_ZN4Heat7StandbyEaPK4Tool
 1159              		.section	.text._ZN4Heat10ResetFaultEa,"ax",%progbits
 1160              		.align	1
 1161              		.p2align 2,,3
 1162              		.global	_ZN4Heat10ResetFaultEa
 1163              		.syntax unified
 1164              		.thumb
 1165              		.thumb_func
 1166              		.fpu softvfp
 1167              		.type	_ZN4Heat10ResetFaultEa, %function
 1168              	_ZN4Heat10ResetFaultEa:
 1169              		@ args = 0, pretend = 0, frame = 0
 1170              		@ frame_needed = 0, uses_anonymous_args = 0
 1171              		@ link register save eliminated.
 1172 0000 CBB2     		uxtb	r3, r1
 1173 0002 032B     		cmp	r3, #3
 1174 0004 00D9     		bls	.L263
 1175 0006 7047     		bx	lr
 1176              	.L263:
 1177 0008 00EB8101 		add	r1, r0, r1, lsl #2
 1178 000c 486A     		ldr	r0, [r1, #36]
 1179 000e FFF7FEBF 		b	_ZN3PID10ResetFaultEv
 1180              		.size	_ZN4Heat10ResetFaultEa, .-_ZN4Heat10ResetFaultEa
 1181 0012 00BF     		.section	.text._ZNK4Heat13GetAveragePWMEj,"ax",%progbits
 1182              		.align	1
 1183              		.p2align 2,,3
 1184              		.global	_ZNK4Heat13GetAveragePWMEj
 1185              		.syntax unified
 1186              		.thumb
 1187              		.thumb_func
 1188              		.fpu softvfp
 1189              		.type	_ZNK4Heat13GetAveragePWMEj, %function
 1190              	_ZNK4Heat13GetAveragePWMEj:
 1191              		@ args = 0, pretend = 0, frame = 0
 1192              		@ frame_needed = 0, uses_anonymous_args = 0
 1193              		@ link register save eliminated.
 1194 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1195 0004 486A     		ldr	r0, [r1, #36]
 1196 0006 FFF7FEBF 		b	_ZNK3PID13GetAveragePWMEv
 1197              		.size	_ZNK4Heat13GetAveragePWMEj, .-_ZNK4Heat13GetAveragePWMEj
ARM GAS  /tmp/ccKkmt7o.s 			page 22


 1198 000a 00BF     		.section	.text._ZNK4Heat17GetLastSampleTimeEj,"ax",%progbits
 1199              		.align	1
 1200              		.p2align 2,,3
 1201              		.global	_ZNK4Heat17GetLastSampleTimeEj
 1202              		.syntax unified
 1203              		.thumb
 1204              		.thumb_func
 1205              		.fpu softvfp
 1206              		.type	_ZNK4Heat17GetLastSampleTimeEj, %function
 1207              	_ZNK4Heat17GetLastSampleTimeEj:
 1208              		@ args = 0, pretend = 0, frame = 0
 1209              		@ frame_needed = 0, uses_anonymous_args = 0
 1210              		@ link register save eliminated.
 1211 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1212 0004 4B6A     		ldr	r3, [r1, #36]
 1213 0006 586F     		ldr	r0, [r3, #116]
 1214 0008 7047     		bx	lr
 1215              		.size	_ZNK4Heat17GetLastSampleTimeEj, .-_ZNK4Heat17GetLastSampleTimeEj
 1216 000a 00BF     		.section	.text._ZNK4Heat20IsBedOrChamberHeaterEa,"ax",%progbits
 1217              		.align	1
 1218              		.p2align 2,,3
 1219              		.global	_ZNK4Heat20IsBedOrChamberHeaterEa
 1220              		.syntax unified
 1221              		.thumb
 1222              		.thumb_func
 1223              		.fpu softvfp
 1224              		.type	_ZNK4Heat20IsBedOrChamberHeaterEa, %function
 1225              	_ZNK4Heat20IsBedOrChamberHeaterEa:
 1226              		@ args = 0, pretend = 0, frame = 0
 1227              		@ frame_needed = 0, uses_anonymous_args = 0
 1228              		@ link register save eliminated.
 1229 0000 90F98230 		ldrsb	r3, [r0, #130]
 1230 0004 8B42     		cmp	r3, r1
 1231 0006 1FD0     		beq	.L273
 1232 0008 30B4     		push	{r4, r5}
 1233 000a 00F18205 		add	r5, r0, #130
 1234 000e 00F18302 		add	r2, r0, #131
 1235 0012 2B46     		mov	r3, r5
 1236 0014 03E0     		b	.L268
 1237              	.L277:
 1238 0016 13F9014F 		ldrsb	r4, [r3, #1]!
 1239 001a 8C42     		cmp	r4, r1
 1240 001c 11D0     		beq	.L276
 1241              	.L268:
 1242 001e AB42     		cmp	r3, r5
 1243 0020 F9D1     		bne	.L277
 1244 0022 90F98330 		ldrsb	r3, [r0, #131]
 1245 0026 8B42     		cmp	r3, r1
 1246 0028 0BD0     		beq	.L276
 1247 002a 1346     		mov	r3, r2
 1248 002c 8430     		adds	r0, r0, #132
 1249 002e 03E0     		b	.L272
 1250              	.L271:
 1251 0030 13F9012F 		ldrsb	r2, [r3, #1]!
 1252 0034 8A42     		cmp	r2, r1
 1253 0036 04D0     		beq	.L276
 1254              	.L272:
ARM GAS  /tmp/ccKkmt7o.s 			page 23


 1255 0038 9842     		cmp	r0, r3
 1256 003a F9D1     		bne	.L271
 1257 003c 0020     		movs	r0, #0
 1258 003e 30BC     		pop	{r4, r5}
 1259 0040 7047     		bx	lr
 1260              	.L276:
 1261 0042 0120     		movs	r0, #1
 1262 0044 30BC     		pop	{r4, r5}
 1263 0046 7047     		bx	lr
 1264              	.L273:
 1265 0048 0120     		movs	r0, #1
 1266 004a 7047     		bx	lr
 1267              		.size	_ZNK4Heat20IsBedOrChamberHeaterEa, .-_ZNK4Heat20IsBedOrChamberHeaterEa
 1268              		.section	.text._ZN4Heat13StartAutoTuneEjffRK9StringRef,"ax",%progbits
 1269              		.align	1
 1270              		.p2align 2,,3
 1271              		.global	_ZN4Heat13StartAutoTuneEjffRK9StringRef
 1272              		.syntax unified
 1273              		.thumb
 1274              		.thumb_func
 1275              		.fpu softvfp
 1276              		.type	_ZN4Heat13StartAutoTuneEjffRK9StringRef, %function
 1277              	_ZN4Heat13StartAutoTuneEjffRK9StringRef:
 1278              		@ args = 4, pretend = 0, frame = 0
 1279              		@ frame_needed = 0, uses_anonymous_args = 0
 1280              		@ link register save eliminated.
 1281 0000 70B4     		push	{r4, r5, r6}
 1282 0002 90F98540 		ldrsb	r4, [r0, #133]
 1283 0006 039D     		ldr	r5, [sp, #12]
 1284 0008 661C     		adds	r6, r4, #1
 1285 000a 06D0     		beq	.L287
 1286 000c 2346     		mov	r3, r4
 1287 000e 0A46     		mov	r2, r1
 1288 0010 2846     		mov	r0, r5
 1289 0012 70BC     		pop	{r4, r5, r6}
 1290 0014 0749     		ldr	r1, .L288
 1291 0016 FFF7FEBF 		b	_ZNK9StringRef6printfEPKcz
 1292              	.L287:
 1293 001a 1646     		mov	r6, r2
 1294 001c 80F88510 		strb	r1, [r0, #133]
 1295 0020 00EB8100 		add	r0, r0, r1, lsl #2
 1296 0024 1A46     		mov	r2, r3
 1297 0026 3146     		mov	r1, r6
 1298 0028 2B46     		mov	r3, r5
 1299 002a 70BC     		pop	{r4, r5, r6}
 1300 002c 406A     		ldr	r0, [r0, #36]
 1301 002e FFF7FEBF 		b	_ZN3PID13StartAutoTuneEffRK9StringRef
 1302              	.L289:
 1303 0032 00BF     		.align	2
 1304              	.L288:
 1305 0034 00000000 		.word	.LC5
 1306              		.size	_ZN4Heat13StartAutoTuneEjffRK9StringRef, .-_ZN4Heat13StartAutoTuneEjffRK9StringRef
 1307              		.section	.text._ZNK4Heat8IsTuningEj,"ax",%progbits
 1308              		.align	1
 1309              		.p2align 2,,3
 1310              		.global	_ZNK4Heat8IsTuningEj
 1311              		.syntax unified
ARM GAS  /tmp/ccKkmt7o.s 			page 24


 1312              		.thumb
 1313              		.thumb_func
 1314              		.fpu softvfp
 1315              		.type	_ZNK4Heat8IsTuningEj, %function
 1316              	_ZNK4Heat8IsTuningEj:
 1317              		@ args = 0, pretend = 0, frame = 0
 1318              		@ frame_needed = 0, uses_anonymous_args = 0
 1319              		@ link register save eliminated.
 1320 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1321 0004 4B6A     		ldr	r3, [r1, #36]
 1322 0006 93F87C00 		ldrb	r0, [r3, #124]	@ zero_extendqisi2
 1323 000a 0528     		cmp	r0, #5
 1324 000c 94BF     		ite	ls
 1325 000e 0020     		movls	r0, #0
 1326 0010 0120     		movhi	r0, #1
 1327 0012 7047     		bx	lr
 1328              		.size	_ZNK4Heat8IsTuningEj, .-_ZNK4Heat8IsTuningEj
 1329              		.section	.text._ZNK4Heat17GetAutoTuneStatusERK9StringRef,"ax",%progbits
 1330              		.align	1
 1331              		.p2align 2,,3
 1332              		.global	_ZNK4Heat17GetAutoTuneStatusERK9StringRef
 1333              		.syntax unified
 1334              		.thumb
 1335              		.thumb_func
 1336              		.fpu softvfp
 1337              		.type	_ZNK4Heat17GetAutoTuneStatusERK9StringRef, %function
 1338              	_ZNK4Heat17GetAutoTuneStatusERK9StringRef:
 1339              		@ args = 0, pretend = 0, frame = 0
 1340              		@ frame_needed = 0, uses_anonymous_args = 0
 1341              		@ link register save eliminated.
 1342 0000 90F98530 		ldrsb	r3, [r0, #133]
 1343 0004 5A1C     		adds	r2, r3, #1
 1344 0006 04D0     		beq	.L294
 1345              	.L292:
 1346 0008 00EB8300 		add	r0, r0, r3, lsl #2
 1347 000c 406A     		ldr	r0, [r0, #36]
 1348 000e FFF7FEBF 		b	_ZN3PID17GetAutoTuneStatusERK9StringRef
 1349              	.L294:
 1350 0012 90F98630 		ldrsb	r3, [r0, #134]
 1351 0016 5A1C     		adds	r2, r3, #1
 1352 0018 F6D1     		bne	.L292
 1353 001a 0846     		mov	r0, r1
 1354 001c 0149     		ldr	r1, .L295
 1355 001e FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 1356              	.L296:
 1357 0022 00BF     		.align	2
 1358              	.L295:
 1359 0024 00000000 		.word	.LC6
 1360              		.size	_ZNK4Heat17GetAutoTuneStatusERK9StringRef, .-_ZNK4Heat17GetAutoTuneStatusERK9StringRef
 1361              		.section	.text._ZNK4Heat26GetHighestTemperatureLimitEv,"ax",%progbits
 1362              		.align	1
 1363              		.p2align 2,,3
 1364              		.global	_ZNK4Heat26GetHighestTemperatureLimitEv
 1365              		.syntax unified
 1366              		.thumb
 1367              		.thumb_func
 1368              		.fpu softvfp
ARM GAS  /tmp/ccKkmt7o.s 			page 25


 1369              		.type	_ZNK4Heat26GetHighestTemperatureLimitEv, %function
 1370              	_ZNK4Heat26GetHighestTemperatureLimitEv:
 1371              		@ args = 0, pretend = 0, frame = 0
 1372              		@ frame_needed = 0, uses_anonymous_args = 0
 1373 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1374 0002 0B4F     		ldr	r7, .L307
 1375 0004 00F12406 		add	r6, r0, #36
 1376 0008 041D     		adds	r4, r0, #4
 1377              	.L300:
 1378 000a 54F8043B 		ldr	r3, [r4], #4
 1379 000e 93F90820 		ldrsb	r2, [r3, #8]
 1380 0012 002A     		cmp	r2, #0
 1381 0014 08DB     		blt	.L298
 1382 0016 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 1383 0018 32B9     		cbnz	r2, .L298
 1384 001a 5D68     		ldr	r5, [r3, #4]	@ float
 1385 001c 3846     		mov	r0, r7
 1386 001e 2946     		mov	r1, r5
 1387 0020 FFF7FEFF 		bl	__aeabi_fcmplt
 1388 0024 00B1     		cbz	r0, .L298
 1389 0026 2F46     		mov	r7, r5
 1390              	.L298:
 1391 0028 A642     		cmp	r6, r4
 1392 002a EED1     		bne	.L300
 1393 002c 3846     		mov	r0, r7
 1394 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1395              	.L308:
 1396              		.align	2
 1397              	.L307:
 1398 0030 339388C3 		.word	-1014459597
 1399              		.size	_ZNK4Heat26GetHighestTemperatureLimitEv, .-_ZNK4Heat26GetHighestTemperatureLimitEv
 1400              		.section	.text._ZN4Heat20SetM301PidParametersEjRK17M301PidParameters,"ax",%progbits
 1401              		.align	1
 1402              		.p2align 2,,3
 1403              		.global	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters
 1404              		.syntax unified
 1405              		.thumb
 1406              		.thumb_func
 1407              		.fpu softvfp
 1408              		.type	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters, %function
 1409              	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters:
 1410              		@ args = 0, pretend = 0, frame = 0
 1411              		@ frame_needed = 0, uses_anonymous_args = 0
 1412              		@ link register save eliminated.
 1413 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1414 0004 486A     		ldr	r0, [r1, #36]
 1415 0006 1146     		mov	r1, r2
 1416 0008 3030     		adds	r0, r0, #48
 1417 000a FFF7FEBF 		b	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters
 1418              		.size	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters, .-_ZN4Heat20SetM301PidParametersEjRK1
 1419 000e 00BF     		.section	.text._ZNK4Heat20WriteModelParametersEP9FileStore,"ax",%progbits
 1420              		.align	1
 1421              		.p2align 2,,3
 1422              		.global	_ZNK4Heat20WriteModelParametersEP9FileStore
 1423              		.syntax unified
 1424              		.thumb
 1425              		.thumb_func
ARM GAS  /tmp/ccKkmt7o.s 			page 26


 1426              		.fpu softvfp
 1427              		.type	_ZNK4Heat20WriteModelParametersEP9FileStore, %function
 1428              	_ZNK4Heat20WriteModelParametersEP9FileStore:
 1429              		@ args = 0, pretend = 0, frame = 0
 1430              		@ frame_needed = 0, uses_anonymous_args = 0
 1431 0000 70B5     		push	{r4, r5, r6, lr}
 1432 0002 0E46     		mov	r6, r1
 1433 0004 0546     		mov	r5, r0
 1434 0006 0B49     		ldr	r1, .L319
 1435 0008 3046     		mov	r0, r6
 1436 000a FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1437 000e 0024     		movs	r4, #0
 1438 0010 2435     		adds	r5, r5, #36
 1439              	.L312:
 1440 0012 55F8043B 		ldr	r3, [r5], #4
 1441 0016 93F84620 		ldrb	r2, [r3, #70]	@ zero_extendqisi2
 1442 001a 1AB9     		cbnz	r2, .L318
 1443              	.L311:
 1444 001c 0134     		adds	r4, r4, #1
 1445 001e 042C     		cmp	r4, #4
 1446 0020 F7D1     		bne	.L312
 1447 0022 70BD     		pop	{r4, r5, r6, pc}
 1448              	.L318:
 1449 0024 03F13000 		add	r0, r3, #48
 1450 0028 2246     		mov	r2, r4
 1451 002a 3146     		mov	r1, r6
 1452 002c FFF7FEFF 		bl	_ZNK5FopDt15WriteParametersEP9FileStorej
 1453 0030 F4E7     		b	.L311
 1454              	.L320:
 1455 0032 00BF     		.align	2
 1456              	.L319:
 1457 0034 00000000 		.word	.LC7
 1458              		.size	_ZNK4Heat20WriteModelParametersEP9FileStore, .-_ZNK4Heat20WriteModelParametersEP9FileStore
 1459              		.section	.text._ZNK4Heat16GetHeaterChannelEj,"ax",%progbits
 1460              		.align	1
 1461              		.p2align 2,,3
 1462              		.global	_ZNK4Heat16GetHeaterChannelEj
 1463              		.syntax unified
 1464              		.thumb
 1465              		.thumb_func
 1466              		.fpu softvfp
 1467              		.type	_ZNK4Heat16GetHeaterChannelEj, %function
 1468              	_ZNK4Heat16GetHeaterChannelEj:
 1469              		@ args = 0, pretend = 0, frame = 0
 1470              		@ frame_needed = 0, uses_anonymous_args = 0
 1471              		@ link register save eliminated.
 1472 0000 0329     		cmp	r1, #3
 1473 0002 06D8     		bhi	.L322
 1474 0004 1131     		adds	r1, r1, #17
 1475 0006 00EB8101 		add	r1, r0, r1, lsl #2
 1476              	.L323:
 1477 000a 0B68     		ldr	r3, [r1]
 1478 000c 4BB1     		cbz	r3, .L327
 1479 000e 5868     		ldr	r0, [r3, #4]
 1480 0010 7047     		bx	lr
 1481              	.L322:
 1482 0012 A1F16403 		sub	r3, r1, #100
ARM GAS  /tmp/ccKkmt7o.s 			page 27


 1483 0016 092B     		cmp	r3, #9
 1484 0018 03D8     		bhi	.L327
 1485 001a 4F39     		subs	r1, r1, #79
 1486 001c 00EB8101 		add	r1, r0, r1, lsl #2
 1487 0020 F3E7     		b	.L323
 1488              	.L327:
 1489 0022 4FF0FF30 		mov	r0, #-1
 1490 0026 7047     		bx	lr
 1491              		.size	_ZNK4Heat16GetHeaterChannelEj, .-_ZNK4Heat16GetHeaterChannelEj
 1492              		.section	.text._ZN4Heat16SetHeaterChannelEji,"ax",%progbits
 1493              		.align	1
 1494              		.p2align 2,,3
 1495              		.global	_ZN4Heat16SetHeaterChannelEji
 1496              		.syntax unified
 1497              		.thumb
 1498              		.thumb_func
 1499              		.fpu softvfp
 1500              		.type	_ZN4Heat16SetHeaterChannelEji, %function
 1501              	_ZN4Heat16SetHeaterChannelEji:
 1502              		@ args = 0, pretend = 0, frame = 0
 1503              		@ frame_needed = 0, uses_anonymous_args = 0
 1504 0000 0329     		cmp	r1, #3
 1505 0002 38B5     		push	{r3, r4, r5, lr}
 1506 0004 0FD8     		bhi	.L329
 1507 0006 1131     		adds	r1, r1, #17
 1508 0008 00EB8104 		add	r4, r0, r1, lsl #2
 1509              	.L330:
 1510 000c 1046     		mov	r0, r2
 1511 000e FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 1512 0012 0546     		mov	r5, r0
 1513 0014 78B1     		cbz	r0, .L334
 1514 0016 2068     		ldr	r0, [r4]
 1515 0018 10B1     		cbz	r0, .L333
 1516 001a 0368     		ldr	r3, [r0]
 1517 001c 1B69     		ldr	r3, [r3, #16]
 1518 001e 9847     		blx	r3
 1519              	.L333:
 1520 0020 2560     		str	r5, [r4]
 1521 0022 0020     		movs	r0, #0
 1522 0024 38BD     		pop	{r3, r4, r5, pc}
 1523              	.L329:
 1524 0026 A1F16403 		sub	r3, r1, #100
 1525 002a 092B     		cmp	r3, #9
 1526 002c 03D8     		bhi	.L334
 1527 002e 4F39     		subs	r1, r1, #79
 1528 0030 00EB8104 		add	r4, r0, r1, lsl #2
 1529 0034 EAE7     		b	.L330
 1530              	.L334:
 1531 0036 0120     		movs	r0, #1
 1532 0038 38BD     		pop	{r3, r4, r5, pc}
 1533              		.size	_ZN4Heat16SetHeaterChannelEji, .-_ZN4Heat16SetHeaterChannelEji
 1534 003a 00BF     		.section	.text._ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef,"ax",%progbits
 1535              		.align	1
 1536              		.p2align 2,,3
 1537              		.global	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef
 1538              		.syntax unified
 1539              		.thumb
ARM GAS  /tmp/ccKkmt7o.s 			page 28


 1540              		.thumb_func
 1541              		.fpu softvfp
 1542              		.type	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef, %function
 1543              	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef:
 1544              		@ args = 4, pretend = 0, frame = 0
 1545              		@ frame_needed = 0, uses_anonymous_args = 0
 1546 0000 70B5     		push	{r4, r5, r6, lr}
 1547 0002 032A     		cmp	r2, #3
 1548 0004 049D     		ldr	r5, [sp, #16]
 1549 0006 0DD8     		bhi	.L346
 1550 0008 02F11104 		add	r4, r2, #17
 1551 000c 00EB8404 		add	r4, r0, r4, lsl #2
 1552              	.L347:
 1553 0010 2468     		ldr	r4, [r4]
 1554 0012 5CB1     		cbz	r4, .L348
 1555 0014 2068     		ldr	r0, [r4]
 1556 0016 0495     		str	r5, [sp, #16]
 1557 0018 0568     		ldr	r5, [r0]
 1558 001a 2046     		mov	r0, r4
 1559 001c AC46     		mov	ip, r5
 1560 001e BDE87040 		pop	{r4, r5, r6, lr}
 1561 0022 6047     		bx	ip
 1562              	.L346:
 1563 0024 A2F16404 		sub	r4, r2, #100
 1564 0028 092C     		cmp	r4, #9
 1565 002a 05D9     		bls	.L357
 1566              	.L348:
 1567 002c 2846     		mov	r0, r5
 1568 002e 0549     		ldr	r1, .L358
 1569 0030 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1570 0034 0220     		movs	r0, #2
 1571 0036 70BD     		pop	{r4, r5, r6, pc}
 1572              	.L357:
 1573 0038 A2F14F04 		sub	r4, r2, #79
 1574 003c 00EB8404 		add	r4, r0, r4, lsl #2
 1575 0040 E6E7     		b	.L347
 1576              	.L359:
 1577 0042 00BF     		.align	2
 1578              	.L358:
 1579 0044 00000000 		.word	.LC8
 1580              		.size	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef, .-_ZN4Heat21ConfigureHeaterSen
 1581              		.section	.text._ZNK4Heat9GetSensorEj,"ax",%progbits
 1582              		.align	1
 1583              		.p2align 2,,3
 1584              		.global	_ZNK4Heat9GetSensorEj
 1585              		.syntax unified
 1586              		.thumb
 1587              		.thumb_func
 1588              		.fpu softvfp
 1589              		.type	_ZNK4Heat9GetSensorEj, %function
 1590              	_ZNK4Heat9GetSensorEj:
 1591              		@ args = 0, pretend = 0, frame = 0
 1592              		@ frame_needed = 0, uses_anonymous_args = 0
 1593              		@ link register save eliminated.
 1594 0000 0329     		cmp	r1, #3
 1595 0002 08D9     		bls	.L364
 1596 0004 A1F16403 		sub	r3, r1, #100
ARM GAS  /tmp/ccKkmt7o.s 			page 29


 1597 0008 092B     		cmp	r3, #9
 1598 000a 9ABF     		itte	ls
 1599 000c 4F39     		subls	r1, r1, #79
 1600 000e 00EB8100 		addls	r0, r0, r1, lsl #2
 1601 0012 0020     		movhi	r0, #0
 1602 0014 7047     		bx	lr
 1603              	.L364:
 1604 0016 1131     		adds	r1, r1, #17
 1605 0018 00EB8100 		add	r0, r0, r1, lsl #2
 1606 001c 7047     		bx	lr
 1607              		.size	_ZNK4Heat9GetSensorEj, .-_ZNK4Heat9GetSensorEj
 1608 001e 00BF     		.section	.text._ZN4Heat9GetSensorEj,"ax",%progbits
 1609              		.align	1
 1610              		.p2align 2,,3
 1611              		.global	_ZN4Heat9GetSensorEj
 1612              		.syntax unified
 1613              		.thumb
 1614              		.thumb_func
 1615              		.fpu softvfp
 1616              		.type	_ZN4Heat9GetSensorEj, %function
 1617              	_ZN4Heat9GetSensorEj:
 1618              		@ args = 0, pretend = 0, frame = 0
 1619              		@ frame_needed = 0, uses_anonymous_args = 0
 1620              		@ link register save eliminated.
 1621 0000 FFF7FEBF 		b	_ZNK4Heat9GetSensorEj
 1622              		.size	_ZN4Heat9GetSensorEj, .-_ZN4Heat9GetSensorEj
 1623              		.section	.text._ZNK4Heat13GetHeaterNameEj,"ax",%progbits
 1624              		.align	1
 1625              		.p2align 2,,3
 1626              		.global	_ZNK4Heat13GetHeaterNameEj
 1627              		.syntax unified
 1628              		.thumb
 1629              		.thumb_func
 1630              		.fpu softvfp
 1631              		.type	_ZNK4Heat13GetHeaterNameEj, %function
 1632              	_ZNK4Heat13GetHeaterNameEj:
 1633              		@ args = 0, pretend = 0, frame = 0
 1634              		@ frame_needed = 0, uses_anonymous_args = 0
 1635              		@ link register save eliminated.
 1636 0000 0329     		cmp	r1, #3
 1637 0002 07D8     		bhi	.L367
 1638 0004 1131     		adds	r1, r1, #17
 1639 0006 00EB8101 		add	r1, r0, r1, lsl #2
 1640              	.L368:
 1641 000a 0868     		ldr	r0, [r1]
 1642 000c 08B1     		cbz	r0, .L372
 1643 000e C068     		ldr	r0, [r0, #12]
 1644 0010 7047     		bx	lr
 1645              	.L372:
 1646 0012 7047     		bx	lr
 1647              	.L367:
 1648 0014 A1F16403 		sub	r3, r1, #100
 1649 0018 092B     		cmp	r3, #9
 1650 001a 03D8     		bhi	.L371
 1651 001c 4F39     		subs	r1, r1, #79
 1652 001e 00EB8101 		add	r1, r0, r1, lsl #2
 1653 0022 F2E7     		b	.L368
ARM GAS  /tmp/ccKkmt7o.s 			page 30


 1654              	.L371:
 1655 0024 0020     		movs	r0, #0
 1656 0026 7047     		bx	lr
 1657              		.size	_ZNK4Heat13GetHeaterNameEj, .-_ZNK4Heat13GetHeaterNameEj
 1658              		.section	.text._ZNK4Heat22AccessHeaterProtectionEj,"ax",%progbits
 1659              		.align	1
 1660              		.p2align 2,,3
 1661              		.global	_ZNK4Heat22AccessHeaterProtectionEj
 1662              		.syntax unified
 1663              		.thumb
 1664              		.thumb_func
 1665              		.fpu softvfp
 1666              		.type	_ZNK4Heat22AccessHeaterProtectionEj, %function
 1667              	_ZNK4Heat22AccessHeaterProtectionEj:
 1668              		@ args = 0, pretend = 0, frame = 0
 1669              		@ frame_needed = 0, uses_anonymous_args = 0
 1670              		@ link register save eliminated.
 1671 0000 A1F16403 		sub	r3, r1, #100
 1672 0004 032B     		cmp	r3, #3
 1673 0006 98BF     		it	ls
 1674 0008 6039     		subls	r1, r1, #96
 1675 000a 00EB8100 		add	r0, r0, r1, lsl #2
 1676 000e 4068     		ldr	r0, [r0, #4]
 1677 0010 7047     		bx	lr
 1678              		.size	_ZNK4Heat22AccessHeaterProtectionEj, .-_ZNK4Heat22AccessHeaterProtectionEj
 1679 0012 00BF     		.section	.text._ZN4Heat22UpdateHeaterProtectionEv,"ax",%progbits
 1680              		.align	1
 1681              		.p2align 2,,3
 1682              		.global	_ZN4Heat22UpdateHeaterProtectionEv
 1683              		.syntax unified
 1684              		.thumb
 1685              		.thumb_func
 1686              		.fpu softvfp
 1687              		.type	_ZN4Heat22UpdateHeaterProtectionEv, %function
 1688              	_ZN4Heat22UpdateHeaterProtectionEv:
 1689              		@ args = 0, pretend = 0, frame = 0
 1690              		@ frame_needed = 0, uses_anonymous_args = 0
 1691 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1692 0004 00F12405 		add	r5, r0, #36
 1693 0008 A846     		mov	r8, r5
 1694 000a 0024     		movs	r4, #0
 1695 000c 071D     		adds	r7, r0, #4
 1696              	.L381:
 1697 000e 0026     		movs	r6, #0
 1698 0010 3B46     		mov	r3, r7
 1699 0012 3146     		mov	r1, r6
 1700 0014 01E0     		b	.L380
 1701              	.L377:
 1702 0016 9D42     		cmp	r5, r3
 1703 0018 0BD0     		beq	.L385
 1704              	.L380:
 1705 001a 53F8042B 		ldr	r2, [r3], #4
 1706 001e 92F90800 		ldrsb	r0, [r2, #8]
 1707 0022 A042     		cmp	r0, r4
 1708 0024 F7D1     		bne	.L377
 1709 0026 69B1     		cbz	r1, .L386
 1710 0028 7EB1     		cbz	r6, .L387
ARM GAS  /tmp/ccKkmt7o.s 			page 31


 1711 002a 9D42     		cmp	r5, r3
 1712 002c 3260     		str	r2, [r6]
 1713 002e 1646     		mov	r6, r2
 1714 0030 F3D1     		bne	.L380
 1715              	.L385:
 1716 0032 0134     		adds	r4, r4, #1
 1717 0034 58F8040B 		ldr	r0, [r8], #4
 1718 0038 FFF7FEFF 		bl	_ZN3PID19SetHeaterProtectionEP16HeaterProtection
 1719 003c 042C     		cmp	r4, #4
 1720 003e E6D1     		bne	.L381
 1721 0040 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1722              	.L386:
 1723 0044 1160     		str	r1, [r2]
 1724 0046 1146     		mov	r1, r2
 1725 0048 E5E7     		b	.L377
 1726              	.L387:
 1727 004a 0A60     		str	r2, [r1]
 1728 004c 1646     		mov	r6, r2
 1729 004e E2E7     		b	.L377
 1730              		.size	_ZN4Heat22UpdateHeaterProtectionEv, .-_ZN4Heat22UpdateHeaterProtectionEv
 1731              		.section	.text._ZN4Heat11CheckHeaterEj,"ax",%progbits
 1732              		.align	1
 1733              		.p2align 2,,3
 1734              		.global	_ZN4Heat11CheckHeaterEj
 1735              		.syntax unified
 1736              		.thumb
 1737              		.thumb_func
 1738              		.fpu softvfp
 1739              		.type	_ZN4Heat11CheckHeaterEj, %function
 1740              	_ZN4Heat11CheckHeaterEj:
 1741              		@ args = 0, pretend = 0, frame = 0
 1742              		@ frame_needed = 0, uses_anonymous_args = 0
 1743              		@ link register save eliminated.
 1744 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1745 0004 4B6A     		ldr	r3, [r1, #36]
 1746 0006 93F87C00 		ldrb	r0, [r3, #124]	@ zero_extendqisi2
 1747 000a 00B9     		cbnz	r0, .L390
 1748 000c 7047     		bx	lr
 1749              	.L390:
 1750 000e 1846     		mov	r0, r3
 1751 0010 FFF7FEBF 		b	_ZNK3PID15CheckProtectionEv
 1752              		.size	_ZN4Heat11CheckHeaterEj, .-_ZN4Heat11CheckHeaterEj
 1753              		.section	.text._ZN4Heat14GetTemperatureEjR16TemperatureError,"ax",%progbits
 1754              		.align	1
 1755              		.p2align 2,,3
 1756              		.global	_ZN4Heat14GetTemperatureEjR16TemperatureError
 1757              		.syntax unified
 1758              		.thumb
 1759              		.thumb_func
 1760              		.fpu softvfp
 1761              		.type	_ZN4Heat14GetTemperatureEjR16TemperatureError, %function
 1762              	_ZN4Heat14GetTemperatureEjR16TemperatureError:
 1763              		@ args = 0, pretend = 0, frame = 8
 1764              		@ frame_needed = 0, uses_anonymous_args = 0
 1765 0000 0329     		cmp	r1, #3
 1766 0002 10D8     		bhi	.L392
 1767 0004 1131     		adds	r1, r1, #17
ARM GAS  /tmp/ccKkmt7o.s 			page 32


 1768 0006 00EB8101 		add	r1, r0, r1, lsl #2
 1769 000a 0868     		ldr	r0, [r1]
 1770 000c A8B1     		cbz	r0, .L405
 1771              	.L400:
 1772 000e 10B5     		push	{r4, lr}
 1773 0010 0368     		ldr	r3, [r0]
 1774 0012 82B0     		sub	sp, sp, #8
 1775 0014 9B68     		ldr	r3, [r3, #8]
 1776 0016 01A9     		add	r1, sp, #4
 1777 0018 1446     		mov	r4, r2
 1778 001a 9847     		blx	r3
 1779 001c 2070     		strb	r0, [r4]
 1780 001e 80B9     		cbnz	r0, .L399
 1781 0020 0198     		ldr	r0, [sp, #4]	@ float
 1782 0022 02B0     		add	sp, sp, #8
 1783              		@ sp needed
 1784 0024 10BD     		pop	{r4, pc}
 1785              	.L392:
 1786 0026 A1F16403 		sub	r3, r1, #100
 1787 002a 092B     		cmp	r3, #9
 1788 002c 0CD8     		bhi	.L394
 1789 002e 4F39     		subs	r1, r1, #79
 1790 0030 00EB8101 		add	r1, r0, r1, lsl #2
 1791 0034 0868     		ldr	r0, [r1]
 1792 0036 0028     		cmp	r0, #0
 1793 0038 E9D1     		bne	.L400
 1794              	.L405:
 1795 003a 0A23     		movs	r3, #10
 1796 003c 0448     		ldr	r0, .L406
 1797 003e 1370     		strb	r3, [r2]
 1798 0040 7047     		bx	lr
 1799              	.L399:
 1800 0042 0348     		ldr	r0, .L406
 1801 0044 02B0     		add	sp, sp, #8
 1802              		@ sp needed
 1803 0046 10BD     		pop	{r4, pc}
 1804              	.L394:
 1805 0048 0C23     		movs	r3, #12
 1806 004a 0148     		ldr	r0, .L406
 1807 004c 1370     		strb	r3, [r2]
 1808 004e 7047     		bx	lr
 1809              	.L407:
 1810              		.align	2
 1811              	.L406:
 1812 0050 0000FA44 		.word	1157234688
 1813              		.size	_ZN4Heat14GetTemperatureEjR16TemperatureError, .-_ZN4Heat14GetTemperatureEjR16TemperatureErr
 1814              		.section	.text._ZN4Heat14SuspendHeatersEb,"ax",%progbits
 1815              		.align	1
 1816              		.p2align 2,,3
 1817              		.global	_ZN4Heat14SuspendHeatersEb
 1818              		.syntax unified
 1819              		.thumb
 1820              		.thumb_func
 1821              		.fpu softvfp
 1822              		.type	_ZN4Heat14SuspendHeatersEb, %function
 1823              	_ZN4Heat14SuspendHeatersEb:
 1824              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccKkmt7o.s 			page 33


 1825              		@ frame_needed = 0, uses_anonymous_args = 0
 1826 0000 70B5     		push	{r4, r5, r6, lr}
 1827 0002 0E46     		mov	r6, r1
 1828 0004 00F13405 		add	r5, r0, #52
 1829 0008 00F12404 		add	r4, r0, #36
 1830              	.L409:
 1831 000c 54F8040B 		ldr	r0, [r4], #4
 1832 0010 3146     		mov	r1, r6
 1833 0012 FFF7FEFF 		bl	_ZN3PID7SuspendEb
 1834 0016 A542     		cmp	r5, r4
 1835 0018 F8D1     		bne	.L409
 1836 001a 70BD     		pop	{r4, r5, r6, pc}
 1837              		.size	_ZN4Heat14SuspendHeatersEb, .-_ZN4Heat14SuspendHeatersEb
 1838              		.section	.text._ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore,"ax",%progbits
 1839              		.align	1
 1840              		.p2align 2,,3
 1841              		.global	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore
 1842              		.syntax unified
 1843              		.thumb
 1844              		.thumb_func
 1845              		.fpu softvfp
 1846              		.type	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore, %function
 1847              	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore:
 1848              		@ args = 0, pretend = 0, frame = 112
 1849              		@ frame_needed = 0, uses_anonymous_args = 0
 1850 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1851 0004 0546     		mov	r5, r0
 1852 0006 0024     		movs	r4, #0
 1853 0008 6520     		movs	r0, #101
 1854 000a 9FB0     		sub	sp, sp, #124
 1855 000c 95F98230 		ldrsb	r3, [r5, #130]
 1856 0010 1EAA     		add	r2, sp, #120
 1857 0012 02F8684D 		strb	r4, [r2, #-104]!
 1858 0016 A342     		cmp	r3, r4
 1859 0018 8A46     		mov	r10, r1
 1860 001a 0292     		str	r2, [sp, #8]
 1861 001c 0390     		str	r0, [sp, #12]
 1862 001e 05DB     		blt	.L435
 1863 0020 05EB8302 		add	r2, r5, r3, lsl #2
 1864 0024 526A     		ldr	r2, [r2, #36]
 1865 0026 92F87E10 		ldrb	r1, [r2, #126]	@ zero_extendqisi2
 1866 002a 91BB     		cbnz	r1, .L436
 1867              	.L435:
 1868 002c 0DF10808 		add	r8, sp, #8
 1869              	.L413:
 1870 0030 0024     		movs	r4, #0
 1871 0032 27A7     		adr	r7, .L438
 1872 0034 D7E90067 		ldrd	r6, [r7]
 1873 0038 DFF8A090 		ldr	r9, .L438+12
 1874 003c 05F1830B 		add	fp, r5, #131
 1875              	.L418:
 1876 0040 1BF9013B 		ldrsb	r3, [fp], #1
 1877 0044 002B     		cmp	r3, #0
 1878 0046 05EB8302 		add	r2, r5, r3, lsl #2
 1879 004a 13DB     		blt	.L416
 1880 004c 526A     		ldr	r2, [r2, #36]
 1881 004e 92F87E10 		ldrb	r1, [r2, #126]	@ zero_extendqisi2
ARM GAS  /tmp/ccKkmt7o.s 			page 34


 1882 0052 79B1     		cbz	r1, .L416
 1883 0054 92F87C10 		ldrb	r1, [r2, #124]	@ zero_extendqisi2
 1884 0058 DBB2     		uxtb	r3, r3
 1885 005a 0129     		cmp	r1, #1
 1886 005c 0AD0     		beq	.L416
 1887 005e 032B     		cmp	r3, #3
 1888 0060 13D9     		bls	.L421
 1889 0062 3046     		mov	r0, r6
 1890 0064 3946     		mov	r1, r7
 1891              	.L422:
 1892 0066 CDE90001 		strd	r0, [sp]
 1893 006a 2246     		mov	r2, r4
 1894 006c 4946     		mov	r1, r9
 1895 006e 4046     		mov	r0, r8
 1896 0070 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1897              	.L416:
 1898 0074 0134     		adds	r4, r4, #1
 1899 0076 022C     		cmp	r4, #2
 1900 0078 E2D1     		bne	.L418
 1901 007a 4046     		mov	r0, r8
 1902 007c FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 1903 0080 D8B9     		cbnz	r0, .L437
 1904 0082 0120     		movs	r0, #1
 1905 0084 1FB0     		add	sp, sp, #124
 1906              		@ sp needed
 1907 0086 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1908              	.L421:
 1909 008a 9068     		ldr	r0, [r2, #8]	@ float
 1910 008c FFF7FEFF 		bl	__aeabi_f2d
 1911 0090 E9E7     		b	.L422
 1912              	.L436:
 1913 0092 92F87C10 		ldrb	r1, [r2, #124]	@ zero_extendqisi2
 1914 0096 0129     		cmp	r1, #1
 1915 0098 C8D0     		beq	.L435
 1916 009a DBB2     		uxtb	r3, r3
 1917 009c 032B     		cmp	r3, #3
 1918 009e 13D9     		bls	.L420
 1919 00a0 0BA1     		adr	r1, .L438
 1920 00a2 D1E90001 		ldrd	r0, [r1]
 1921              	.L415:
 1922 00a6 0DF10808 		add	r8, sp, #8
 1923 00aa CDE90001 		strd	r0, [sp]
 1924 00ae 0022     		movs	r2, #0
 1925 00b0 4046     		mov	r0, r8
 1926 00b2 0949     		ldr	r1, .L438+8
 1927 00b4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1928 00b8 BAE7     		b	.L413
 1929              	.L437:
 1930 00ba 5046     		mov	r0, r10
 1931 00bc 0299     		ldr	r1, [sp, #8]
 1932 00be FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1933 00c2 1FB0     		add	sp, sp, #124
 1934              		@ sp needed
 1935 00c4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1936              	.L420:
 1937 00c8 9068     		ldr	r0, [r2, #8]	@ float
 1938 00ca FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccKkmt7o.s 			page 35


 1939 00ce EAE7     		b	.L415
 1940              	.L439:
 1941              		.align	3
 1942              	.L438:
 1943 00d0 00000060 		.word	1610612736
 1944 00d4 661271C0 		.word	-1066331546
 1945 00d8 00000000 		.word	.LC9
 1946 00dc 10000000 		.word	.LC10
 1947              		.size	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore, .-_ZNK4Heat30WriteBedAndChamberTempSe
 1948              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1949              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1950              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1951              	_ZL28cpu_irq_prev_interrupt_state:
 1952 0000 00       		.space	1
 1953              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1954              		.align	2
 1955              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1956              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1957              	_ZL32cpu_irq_critical_section_counter:
 1958 0000 00000000 		.space	4
 1959              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1960              		.align	2
 1961              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1962              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1963              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1964 0000 00000000 		.space	4
 1965              		.section	.rodata._ZL21DefaultChamberHeaters,"a",%progbits
 1966              		.align	2
 1967              		.set	.LANCHOR0,. + 0
 1968              		.type	_ZL21DefaultChamberHeaters, %object
 1969              		.size	_ZL21DefaultChamberHeaters, 2
 1970              	_ZL21DefaultChamberHeaters:
 1971 0000 FF       		.byte	-1
 1972 0001 FF       		.byte	-1
 1973              		.section	.rodata._ZN4Heat11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 1974              		.align	2
 1975              	.LC0:
 1976 0000 3D3D3D20 		.ascii	"=== Heat ===\012Bed heaters =\000"
 1976      48656174 
 1976      203D3D3D 
 1976      0A426564 
 1976      20686561 
 1977 001b 00       		.space	1
 1978              	.LC1:
 1979 001c 20256400 		.ascii	" %d\000"
 1980              	.LC2:
 1981 0020 2C206368 		.ascii	", chamberHeaters =\000"
 1981      616D6265 
 1981      72486561 
 1981      74657273 
 1981      203D00
 1982 0033 00       		.space	1
 1983              	.LC3:
 1984 0034 0A00     		.ascii	"\012\000"
 1985 0036 0000     		.space	2
 1986              	.LC4:
 1987 0038 48656174 		.ascii	"Heater %d is on, I-accum = %.1f\012\000"
ARM GAS  /tmp/ccKkmt7o.s 			page 36


 1987      65722025 
 1987      64206973 
 1987      206F6E2C 
 1987      20492D61 
 1988              		.section	.rodata._ZN4Heat13StartAutoTuneEjffRK9StringRef.str1.4,"aMS",%progbits,1
 1989              		.align	2
 1990              	.LC5:
 1991 0000 4572726F 		.ascii	"Error: cannot start auto tuning heater %u because h"
 1991      723A2063 
 1991      616E6E6F 
 1991      74207374 
 1991      61727420 
 1992 0033 65617465 		.ascii	"eater %d is being tuned\000"
 1992      72202564 
 1992      20697320 
 1992      6265696E 
 1992      67207475 
 1993              		.section	.rodata._ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef.str1.4,"aMS",%progbi
 1994              		.align	2
 1995              	.LC8:
 1996 0000 68656174 		.ascii	"heater %d is not configured\000"
 1996      65722025 
 1996      64206973 
 1996      206E6F74 
 1996      20636F6E 
 1997              		.section	.rodata._ZNK4Heat17GetAutoTuneStatusERK9StringRef.str1.4,"aMS",%progbits,1
 1998              		.align	2
 1999              	.LC6:
 2000 0000 4E6F2068 		.ascii	"No heater has been tuned yet\000"
 2000      65617465 
 2000      72206861 
 2000      73206265 
 2000      656E2074 
 2001              		.section	.rodata._ZNK4Heat20WriteModelParametersEP9FileStore.str1.4,"aMS",%progbits,1
 2002              		.align	2
 2003              	.LC7:
 2004 0000 3B204865 		.ascii	"; Heater model parameters\012\000"
 2004      61746572 
 2004      206D6F64 
 2004      656C2070 
 2004      6172616D 
 2005              		.section	.rodata._ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore.str1.4,"aMS",%progbits,1
 2006              		.align	2
 2007              	.LC9:
 2008 0000 4D313430 		.ascii	"M140 P%u S%.1f\012\000"
 2008      20502575 
 2008      2053252E 
 2008      31660A00 
 2009              	.LC10:
 2010 0010 4D313431 		.ascii	"M141 P%u S%.1f\012\000"
 2010      20502575 
 2010      2053252E 
 2010      31660A00 
 2011              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
