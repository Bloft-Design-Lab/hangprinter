ARM GAS  /tmp/ccbSdURL.s 			page 1


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
  11              		.file	"SafeVsnprintf.cpp"
  12              		.section	.text._ZL6printsR10SStringBufPKc,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	_ZL6printsR10SStringBufPKc, %function
  20              	_ZL6printsR10SStringBufPKc:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  24 0002 8369     		ldr	r3, [r0, #24]
  25 0004 0446     		mov	r4, r0
  26 0006 002B     		cmp	r3, #0
  27 0008 0D46     		mov	r5, r1
  28 000a 477F     		ldrb	r7, [r0, #29]	@ zero_extendqisi2
  29 000c 01DD     		ble	.L3
  30 000e FA06     		lsls	r2, r7, #27
  31 0010 49D4     		bmi	.L85
  32              	.L3:
  33 0012 2846     		mov	r0, r5
  34 0014 FFF7FEFF 		bl	strlen
  35              	.L4:
  36 0018 3E07     		lsls	r6, r7, #28
  37 001a 20D5     		bpl	.L5
  38 001c A269     		ldr	r2, [r4, #24]
  39 001e 002A     		cmp	r2, #0
  40 0020 1DDD     		ble	.L5
  41 0022 9042     		cmp	r0, r2
  42 0024 3DDA     		bge	.L86
  43 0026 6369     		ldr	r3, [r4, #20]
  44 0028 161A     		subs	r6, r2, r0
  45 002a 9A42     		cmp	r2, r3
  46 002c A8BF     		it	ge
  47 002e 0023     		movge	r3, #0
  48 0030 7CDB     		blt	.L87
  49              	.L14:
  50 0032 2268     		ldr	r2, [r4]
  51 0034 A168     		ldr	r1, [r4, #8]
  52 0036 9142     		cmp	r1, r2
  53 0038 88BF     		it	hi
  54 003a 3027     		movhi	r7, #48
  55 003c 0CD9     		bls	.L31
  56              	.L21:
  57 003e 511C     		adds	r1, r2, #1
ARM GAS  /tmp/ccbSdURL.s 			page 2


  58 0040 2160     		str	r1, [r4]
  59 0042 1770     		strb	r7, [r2]
  60 0044 E268     		ldr	r2, [r4, #12]
  61 0046 013E     		subs	r6, r6, #1
  62 0048 02F10102 		add	r2, r2, #1
  63 004c E260     		str	r2, [r4, #12]
  64 004e 52D0     		beq	.L13
  65 0050 2268     		ldr	r2, [r4]
  66 0052 A168     		ldr	r1, [r4, #8]
  67 0054 8A42     		cmp	r2, r1
  68 0056 F2D3     		bcc	.L21
  69              	.L31:
  70 0058 0020     		movs	r0, #0
  71 005a 1070     		strb	r0, [r2]
  72 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  73              	.L5:
  74 005e 6369     		ldr	r3, [r4, #20]
  75 0060 002B     		cmp	r3, #0
  76 0062 29DD     		ble	.L80
  77              	.L37:
  78 0064 9842     		cmp	r0, r3
  79 0066 27DA     		bge	.L80
  80 0068 17F00206 		ands	r6, r7, #2
  81 006c A3EB0003 		sub	r3, r3, r0
  82 0070 62D1     		bne	.L88
  83              	.L10:
  84 0072 FA07     		lsls	r2, r7, #31
  85 0074 1DD4     		bmi	.L39
  86 0076 2268     		ldr	r2, [r4]
  87 0078 A168     		ldr	r1, [r4, #8]
  88 007a 9142     		cmp	r1, r2
  89 007c 88BF     		it	hi
  90 007e 2027     		movhi	r7, #32
  91 0080 EAD9     		bls	.L31
  92              	.L15:
  93 0082 511C     		adds	r1, r2, #1
  94 0084 2160     		str	r1, [r4]
  95 0086 1770     		strb	r7, [r2]
  96 0088 E268     		ldr	r2, [r4, #12]
  97 008a 013B     		subs	r3, r3, #1
  98 008c 02F10102 		add	r2, r2, #1
  99 0090 E260     		str	r2, [r4, #12]
 100 0092 2ED0     		beq	.L89
 101 0094 2268     		ldr	r2, [r4]
 102 0096 A168     		ldr	r1, [r4, #8]
 103 0098 8A42     		cmp	r2, r1
 104 009a F2D3     		bcc	.L15
 105 009c 0020     		movs	r0, #0
 106 009e 1070     		strb	r0, [r2]
 107 00a0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 108              	.L86:
 109 00a2 6369     		ldr	r3, [r4, #20]
 110 00a4 DEE7     		b	.L37
 111              	.L85:
 112 00a6 1946     		mov	r1, r3
 113 00a8 2846     		mov	r0, r5
 114 00aa FFF7FEFF 		bl	_Z7StrnlenPKcj
ARM GAS  /tmp/ccbSdURL.s 			page 3


 115 00ae 677F     		ldrb	r7, [r4, #29]	@ zero_extendqisi2
 116 00b0 B2E7     		b	.L4
 117              	.L39:
 118 00b2 1E44     		add	r6, r6, r3
 119 00b4 0023     		movs	r3, #0
 120 00b6 BCE7     		b	.L14
 121              	.L80:
 122 00b8 0028     		cmp	r0, #0
 123 00ba 35DD     		ble	.L33
 124 00bc 0023     		movs	r3, #0
 125              	.L8:
 126 00be 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 127 00c0 2268     		ldr	r2, [r4]
 128 00c2 0135     		adds	r5, r5, #1
 129 00c4 0029     		cmp	r1, #0
 130 00c6 C7D0     		beq	.L31
 131 00c8 A668     		ldr	r6, [r4, #8]
 132 00ca 9642     		cmp	r6, r2
 133 00cc C4D9     		bls	.L31
 134              	.L28:
 135 00ce 561C     		adds	r6, r2, #1
 136 00d0 2660     		str	r6, [r4]
 137 00d2 1170     		strb	r1, [r2]
 138 00d4 E268     		ldr	r2, [r4, #12]
 139 00d6 0138     		subs	r0, r0, #1
 140 00d8 02F10102 		add	r2, r2, #1
 141 00dc E260     		str	r2, [r4, #12]
 142 00de 0CD0     		beq	.L7
 143 00e0 15F8011B 		ldrb	r1, [r5], #1	@ zero_extendqisi2
 144 00e4 2268     		ldr	r2, [r4]
 145 00e6 0029     		cmp	r1, #0
 146 00e8 B6D0     		beq	.L31
 147 00ea A668     		ldr	r6, [r4, #8]
 148 00ec B242     		cmp	r2, r6
 149 00ee EED3     		bcc	.L28
 150 00f0 B2E7     		b	.L31
 151              	.L89:
 152 00f2 002E     		cmp	r6, #0
 153 00f4 9DD1     		bne	.L14
 154              	.L13:
 155 00f6 0028     		cmp	r0, #0
 156 00f8 E1DC     		bgt	.L8
 157              	.L7:
 158 00fa ABB1     		cbz	r3, .L33
 159              	.L26:
 160 00fc 2268     		ldr	r2, [r4]
 161 00fe A168     		ldr	r1, [r4, #8]
 162 0100 9142     		cmp	r1, r2
 163 0102 88BF     		it	hi
 164 0104 2020     		movhi	r0, #32
 165 0106 A7D9     		bls	.L31
 166              	.L32:
 167 0108 511C     		adds	r1, r2, #1
 168 010a 2160     		str	r1, [r4]
 169 010c 1070     		strb	r0, [r2]
 170 010e E268     		ldr	r2, [r4, #12]
 171 0110 013B     		subs	r3, r3, #1
ARM GAS  /tmp/ccbSdURL.s 			page 4


 172 0112 02F10102 		add	r2, r2, #1
 173 0116 E260     		str	r2, [r4, #12]
 174 0118 06D0     		beq	.L33
 175 011a 2268     		ldr	r2, [r4]
 176 011c A168     		ldr	r1, [r4, #8]
 177 011e 8A42     		cmp	r2, r1
 178 0120 F2D3     		bcc	.L32
 179 0122 0020     		movs	r0, #0
 180 0124 1070     		strb	r0, [r2]
 181 0126 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 182              	.L33:
 183 0128 0120     		movs	r0, #1
 184 012a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 185              	.L87:
 186 012c B907     		lsls	r1, r7, #30
 187 012e A3EB0203 		sub	r3, r3, r2
 188 0132 3FF57EAF 		bmi	.L14
 189 0136 9CE7     		b	.L10
 190              	.L88:
 191 0138 0028     		cmp	r0, #0
 192 013a C0DC     		bgt	.L8
 193 013c DEE7     		b	.L26
 194              		.size	_ZL6printsR10SStringBufPKc, .-_ZL6printsR10SStringBufPKc
 195 013e 00BF     		.section	.text._ZL6printiR10SStringBufi,"ax",%progbits
 196              		.align	1
 197              		.p2align 2,,3
 198              		.syntax unified
 199              		.thumb
 200              		.thumb_func
 201              		.fpu softvfp
 202              		.type	_ZL6printiR10SStringBufi, %function
 203              	_ZL6printiR10SStringBufi:
 204              		@ args = 0, pretend = 0, frame = 16
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206 0000 70B5     		push	{r4, r5, r6, lr}
 207 0002 437F     		ldrb	r3, [r0, #29]	@ zero_extendqisi2
 208 0004 84B0     		sub	sp, sp, #16
 209 0006 43F00803 		orr	r3, r3, #8
 210 000a 4377     		strb	r3, [r0, #29]
 211 000c 0029     		cmp	r1, #0
 212 000e 50D0     		beq	.L138
 213 0010 457F     		ldrb	r5, [r0, #29]	@ zero_extendqisi2
 214 0012 0446     		mov	r4, r0
 215 0014 6A07     		lsls	r2, r5, #29
 216 0016 0369     		ldr	r3, [r0, #16]
 217 0018 0FD4     		bmi	.L139
 218              	.L93:
 219 001a 0022     		movs	r2, #0
 220 001c 0A2B     		cmp	r3, #10
 221 001e 8DF80F20 		strb	r2, [sp, #15]
 222 0022 27D0     		beq	.L109
 223 0024 102B     		cmp	r3, #16
 224 0026 15D0     		beq	.L110
 225 0028 082B     		cmp	r3, #8
 226 002a 23D0     		beq	.L109
 227 002c 0DF10F01 		add	r1, sp, #15
 228              	.L103:
ARM GAS  /tmp/ccbSdURL.s 			page 5


 229 0030 2046     		mov	r0, r4
 230 0032 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 231              	.L133:
 232 0036 04B0     		add	sp, sp, #16
 233              		@ sp needed
 234 0038 70BD     		pop	{r4, r5, r6, pc}
 235              	.L139:
 236 003a 0A2B     		cmp	r3, #10
 237 003c EDD1     		bne	.L93
 238 003e 0029     		cmp	r1, #0
 239 0040 EBDA     		bge	.L93
 240 0042 0022     		movs	r2, #0
 241 0044 4942     		negs	r1, r1
 242 0046 8DF80F20 		strb	r2, [sp, #15]
 243 004a 0DF10F02 		add	r2, sp, #15
 244 004e 01B3     		cbz	r1, .L94
 245 0050 0126     		movs	r6, #1
 246 0052 10E0     		b	.L101
 247              	.L110:
 248 0054 0DF10F02 		add	r2, sp, #15
 249              	.L100:
 250 0058 01F00F03 		and	r3, r1, #15
 251 005c 092B     		cmp	r3, #9
 252 005e 02D9     		bls	.L98
 253 0060 207F     		ldrb	r0, [r4, #28]	@ zero_extendqisi2
 254 0062 3A38     		subs	r0, r0, #58
 255 0064 0344     		add	r3, r3, r0
 256              	.L98:
 257 0066 3033     		adds	r3, r3, #48
 258 0068 0909     		lsrs	r1, r1, #4
 259 006a 02F8013D 		strb	r3, [r2, #-1]!
 260 006e F3D1     		bne	.L100
 261              	.L107:
 262 0070 1146     		mov	r1, r2
 263 0072 DDE7     		b	.L103
 264              	.L109:
 265 0074 0026     		movs	r6, #0
 266              	.L101:
 267 0076 0DF10F02 		add	r2, sp, #15
 268              	.L102:
 269 007a B1FBF3F0 		udiv	r0, r1, r3
 270 007e 03FB1011 		mls	r1, r3, r0, r1
 271 0082 3031     		adds	r1, r1, #48
 272 0084 02F8011D 		strb	r1, [r2, #-1]!
 273 0088 0146     		mov	r1, r0
 274 008a 0028     		cmp	r0, #0
 275 008c F5D1     		bne	.L102
 276 008e 002E     		cmp	r6, #0
 277 0090 EED0     		beq	.L107
 278              	.L94:
 279 0092 6369     		ldr	r3, [r4, #20]
 280 0094 43B1     		cbz	r3, .L104
 281 0096 EB07     		lsls	r3, r5, #31
 282 0098 06D5     		bpl	.L104
 283 009a 2368     		ldr	r3, [r4]
 284 009c A168     		ldr	r1, [r4, #8]
 285 009e 8B42     		cmp	r3, r1
ARM GAS  /tmp/ccbSdURL.s 			page 6


 286 00a0 0CD3     		bcc	.L140
 287 00a2 0020     		movs	r0, #0
 288 00a4 1870     		strb	r0, [r3]
 289 00a6 C6E7     		b	.L133
 290              	.L104:
 291 00a8 2D23     		movs	r3, #45
 292 00aa 511E     		subs	r1, r2, #1
 293 00ac 02F8013C 		strb	r3, [r2, #-1]
 294 00b0 BEE7     		b	.L103
 295              	.L138:
 296 00b2 0849     		ldr	r1, .L141
 297 00b4 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 298 00b8 04B0     		add	sp, sp, #16
 299              		@ sp needed
 300 00ba 70BD     		pop	{r4, r5, r6, pc}
 301              	.L140:
 302 00bc 2D21     		movs	r1, #45
 303 00be 581C     		adds	r0, r3, #1
 304 00c0 2060     		str	r0, [r4]
 305 00c2 1970     		strb	r1, [r3]
 306 00c4 E168     		ldr	r1, [r4, #12]
 307 00c6 6369     		ldr	r3, [r4, #20]
 308 00c8 481C     		adds	r0, r1, #1
 309 00ca 013B     		subs	r3, r3, #1
 310 00cc 1146     		mov	r1, r2
 311 00ce E060     		str	r0, [r4, #12]
 312 00d0 6361     		str	r3, [r4, #20]
 313 00d2 ADE7     		b	.L103
 314              	.L142:
 315              		.align	2
 316              	.L141:
 317 00d4 00000000 		.word	.LC0
 318              		.size	_ZL6printiR10SStringBufi, .-_ZL6printiR10SStringBufi
 319              		.section	.text._ZL7printllR10SStringBufx,"ax",%progbits
 320              		.align	1
 321              		.p2align 2,,3
 322              		.syntax unified
 323              		.thumb
 324              		.thumb_func
 325              		.fpu softvfp
 326              		.type	_ZL7printllR10SStringBufx, %function
 327              	_ZL7printllR10SStringBufx:
 328              		@ args = 0, pretend = 0, frame = 40
 329              		@ frame_needed = 0, uses_anonymous_args = 0
 330 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 331 0004 1F46     		mov	r7, r3
 332 0006 1646     		mov	r6, r2
 333 0008 437F     		ldrb	r3, [r0, #29]	@ zero_extendqisi2
 334 000a 8DB0     		sub	sp, sp, #52
 335 000c 43F00803 		orr	r3, r3, #8
 336 0010 4377     		strb	r3, [r0, #29]
 337 0012 56EA0703 		orrs	r3, r6, r7
 338 0016 4BD0     		beq	.L169
 339 0018 0446     		mov	r4, r0
 340 001a 437F     		ldrb	r3, [r0, #29]	@ zero_extendqisi2
 341 001c 3946     		mov	r1, r7
 342 001e 13F0040F 		tst	r3, #4
ARM GAS  /tmp/ccbSdURL.s 			page 7


 343 0022 1046     		mov	r0, r2
 344 0024 2369     		ldr	r3, [r4, #16]
 345 0026 2BD1     		bne	.L170
 346              	.L146:
 347 0028 0026     		movs	r6, #0
 348 002a 8DF82D60 		strb	r6, [sp, #45]
 349              	.L153:
 350 002e 0DF12D05 		add	r5, sp, #45
 351 0032 00E0     		b	.L149
 352              	.L171:
 353 0034 2369     		ldr	r3, [r4, #16]
 354              	.L149:
 355 0036 9846     		mov	r8, r3
 356 0038 4FEAE379 		asr	r9, r3, #31
 357 003c 0246     		mov	r2, r0
 358 003e 0B46     		mov	r3, r1
 359 0040 02A8     		add	r0, sp, #8
 360 0042 CDE90089 		strd	r8, [sp]
 361 0046 FFF7FEFF 		bl	lldiv
 362 004a DDE90201 		ldrd	r0, [sp, #8]
 363 004e 049B     		ldr	r3, [sp, #16]
 364 0050 092B     		cmp	r3, #9
 365 0052 02D9     		bls	.L148
 366 0054 227F     		ldrb	r2, [r4, #28]	@ zero_extendqisi2
 367 0056 3A3B     		subs	r3, r3, #58
 368 0058 1344     		add	r3, r3, r2
 369              	.L148:
 370 005a 3033     		adds	r3, r3, #48
 371 005c 05F8013D 		strb	r3, [r5, #-1]!
 372 0060 50EA0103 		orrs	r3, r0, r1
 373 0064 E6D1     		bne	.L171
 374 0066 4EB3     		cbz	r6, .L155
 375 0068 6369     		ldr	r3, [r4, #20]
 376 006a BBB9     		cbnz	r3, .L172
 377              	.L151:
 378 006c 2D23     		movs	r3, #45
 379 006e 691E     		subs	r1, r5, #1
 380 0070 05F8013C 		strb	r3, [r5, #-1]
 381              	.L150:
 382 0074 2046     		mov	r0, r4
 383 0076 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 384              	.L165:
 385 007a 0DB0     		add	sp, sp, #52
 386              		@ sp needed
 387 007c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 388              	.L170:
 389 0080 0A2B     		cmp	r3, #10
 390 0082 D1D1     		bne	.L146
 391 0084 002A     		cmp	r2, #0
 392 0086 77F10002 		sbcs	r2, r7, #0
 393 008a CDDA     		bge	.L146
 394 008c 0022     		movs	r2, #0
 395 008e 7042     		rsbs	r0, r6, #0
 396 0090 67EB4701 		sbc	r1, r7, r7, lsl #1
 397 0094 0126     		movs	r6, #1
 398 0096 8DF82D20 		strb	r2, [sp, #45]
 399 009a C8E7     		b	.L153
ARM GAS  /tmp/ccbSdURL.s 			page 8


 400              	.L172:
 401 009c 637F     		ldrb	r3, [r4, #29]	@ zero_extendqisi2
 402 009e DB07     		lsls	r3, r3, #31
 403 00a0 E4D5     		bpl	.L151
 404 00a2 2368     		ldr	r3, [r4]
 405 00a4 A268     		ldr	r2, [r4, #8]
 406 00a6 9342     		cmp	r3, r2
 407 00a8 0AD3     		bcc	.L173
 408 00aa 0020     		movs	r0, #0
 409 00ac 1870     		strb	r0, [r3]
 410 00ae E4E7     		b	.L165
 411              	.L169:
 412 00b0 0949     		ldr	r1, .L174
 413 00b2 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 414 00b6 0DB0     		add	sp, sp, #52
 415              		@ sp needed
 416 00b8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 417              	.L155:
 418 00bc 2946     		mov	r1, r5
 419 00be D9E7     		b	.L150
 420              	.L173:
 421 00c0 2D22     		movs	r2, #45
 422 00c2 591C     		adds	r1, r3, #1
 423 00c4 2160     		str	r1, [r4]
 424 00c6 1A70     		strb	r2, [r3]
 425 00c8 E268     		ldr	r2, [r4, #12]
 426 00ca 6369     		ldr	r3, [r4, #20]
 427 00cc 0132     		adds	r2, r2, #1
 428 00ce 013B     		subs	r3, r3, #1
 429 00d0 2946     		mov	r1, r5
 430 00d2 E260     		str	r2, [r4, #12]
 431 00d4 6361     		str	r3, [r4, #20]
 432 00d6 CDE7     		b	.L150
 433              	.L175:
 434              		.align	2
 435              	.L174:
 436 00d8 00000000 		.word	.LC0
 437              		.size	_ZL7printllR10SStringBufx, .-_ZL7printllR10SStringBufx
 438              		.section	.text._ZN10SStringBufC2EPcj,"ax",%progbits
 439              		.align	1
 440              		.p2align 2,,3
 441              		.global	_ZN10SStringBufC2EPcj
 442              		.syntax unified
 443              		.thumb
 444              		.thumb_func
 445              		.fpu softvfp
 446              		.type	_ZN10SStringBufC2EPcj, %function
 447              	_ZN10SStringBufC2EPcj:
 448              		@ args = 0, pretend = 0, frame = 0
 449              		@ frame_needed = 0, uses_anonymous_args = 0
 450              		@ link register save eliminated.
 451 0000 30B4     		push	{r4, r5}
 452 0002 0024     		movs	r4, #0
 453 0004 013A     		subs	r2, r2, #1
 454 0006 0A44     		add	r2, r2, r1
 455 0008 C460     		str	r4, [r0, #12]
 456 000a 0461     		str	r4, [r0, #16]	@ unaligned
ARM GAS  /tmp/ccbSdURL.s 			page 9


 457 000c 4461     		str	r4, [r0, #20]	@ unaligned
 458 000e 8461     		str	r4, [r0, #24]	@ unaligned
 459 0010 C461     		str	r4, [r0, #28]	@ unaligned
 460 0012 8260     		str	r2, [r0, #8]
 461 0014 0160     		str	r1, [r0]
 462 0016 4160     		str	r1, [r0, #4]
 463 0018 30BC     		pop	{r4, r5}
 464 001a 7047     		bx	lr
 465              		.size	_ZN10SStringBufC2EPcj, .-_ZN10SStringBufC2EPcj
 466              		.global	_ZN10SStringBufC1EPcj
 467              		.thumb_set _ZN10SStringBufC1EPcj,_ZN10SStringBufC2EPcj
 468              		.section	.text._ZN10SStringBuf4InitEv,"ax",%progbits
 469              		.align	1
 470              		.p2align 2,,3
 471              		.global	_ZN10SStringBuf4InitEv
 472              		.syntax unified
 473              		.thumb
 474              		.thumb_func
 475              		.fpu softvfp
 476              		.type	_ZN10SStringBuf4InitEv, %function
 477              	_ZN10SStringBuf4InitEv:
 478              		@ args = 0, pretend = 0, frame = 0
 479              		@ frame_needed = 0, uses_anonymous_args = 0
 480              		@ link register save eliminated.
 481 0000 0023     		movs	r3, #0
 482 0002 0361     		str	r3, [r0, #16]	@ unaligned
 483 0004 4361     		str	r3, [r0, #20]	@ unaligned
 484 0006 8361     		str	r3, [r0, #24]	@ unaligned
 485 0008 C361     		str	r3, [r0, #28]	@ unaligned
 486 000a 7047     		bx	lr
 487              		.size	_ZN10SStringBuf4InitEv, .-_ZN10SStringBuf4InitEv
 488              		.global	__aeabi_dcmpun
 489              		.global	__aeabi_dcmpgt
 490              		.global	__aeabi_ddiv
 491              		.global	__aeabi_dcmpeq
 492              		.global	__aeabi_dcmplt
 493              		.global	__aeabi_dmul
 494              		.global	__aeabi_i2d
 495              		.global	__aeabi_dcmple
 496              		.section	.text._Z13SafeVsnprintfPcjPKcSt9__va_list,"ax",%progbits
 497              		.align	1
 498              		.p2align 2,,3
 499              		.global	_Z13SafeVsnprintfPcjPKcSt9__va_list
 500              		.syntax unified
 501              		.thumb
 502              		.thumb_func
 503              		.fpu softvfp
 504              		.type	_Z13SafeVsnprintfPcjPKcSt9__va_list, %function
 505              	_Z13SafeVsnprintfPcjPKcSt9__va_list:
 506              		@ args = 0, pretend = 0, frame = 112
 507              		@ frame_needed = 0, uses_anonymous_args = 0
 508 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 509 0004 0024     		movs	r4, #0
 510 0006 9346     		mov	fp, r2
 511 0008 0139     		subs	r1, r1, #1
 512 000a 9FB0     		sub	sp, sp, #124
 513 000c 0144     		add	r1, r1, r0
ARM GAS  /tmp/ccbSdURL.s 			page 10


 514 000e 0F91     		str	r1, [sp, #60]
 515 0010 0D90     		str	r0, [sp, #52]
 516 0012 0E90     		str	r0, [sp, #56]
 517 0014 0393     		str	r3, [sp, #12]
 518 0016 1094     		str	r4, [sp, #64]
 519 0018 1194     		str	r4, [sp, #68]
 520 001a 1294     		str	r4, [sp, #72]
 521 001c 1394     		str	r4, [sp, #76]
 522 001e 1494     		str	r4, [sp, #80]
 523              	.L180:
 524 0020 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 525 0024 252B     		cmp	r3, #37
 526 0026 13D0     		beq	.L181
 527              	.L311:
 528 0028 0D9A     		ldr	r2, [sp, #52]
 529 002a 002B     		cmp	r3, #0
 530 002c 00F0B680 		beq	.L183
 531 0030 0F99     		ldr	r1, [sp, #60]
 532 0032 8A42     		cmp	r2, r1
 533 0034 80F0B280 		bcs	.L183
 534 0038 511C     		adds	r1, r2, #1
 535 003a 0D91     		str	r1, [sp, #52]
 536 003c 1370     		strb	r3, [r2]
 537 003e 109B     		ldr	r3, [sp, #64]
 538 0040 0BF1010B 		add	fp, fp, #1
 539 0044 0133     		adds	r3, r3, #1
 540 0046 1093     		str	r3, [sp, #64]
 541 0048 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 542 004c 252B     		cmp	r3, #37
 543 004e EBD1     		bne	.L311
 544              	.L181:
 545 0050 9BF80140 		ldrb	r4, [fp, #1]	@ zero_extendqisi2
 546 0054 0BF10202 		add	r2, fp, #2
 547 0058 002C     		cmp	r4, #0
 548 005a 00F09880 		beq	.L187
 549 005e 252C     		cmp	r4, #37
 550 0060 0CD1     		bne	.L188
 551 0062 0D9B     		ldr	r3, [sp, #52]
 552 0064 0F99     		ldr	r1, [sp, #60]
 553 0066 8B42     		cmp	r3, r1
 554 0068 80F07E82 		bcs	.L208
 555 006c 591C     		adds	r1, r3, #1
 556 006e 0D91     		str	r1, [sp, #52]
 557 0070 1C70     		strb	r4, [r3]
 558 0072 109B     		ldr	r3, [sp, #64]
 559 0074 9346     		mov	fp, r2
 560 0076 0133     		adds	r3, r3, #1
 561 0078 1093     		str	r3, [sp, #64]
 562 007a D1E7     		b	.L180
 563              	.L188:
 564 007c 0023     		movs	r3, #0
 565 007e 2D2C     		cmp	r4, #45
 566 0080 1193     		str	r3, [sp, #68]
 567 0082 1293     		str	r3, [sp, #72]
 568 0084 1393     		str	r3, [sp, #76]
 569 0086 1493     		str	r3, [sp, #80]
 570 0088 00F07681 		beq	.L312
ARM GAS  /tmp/ccbSdURL.s 			page 11


 571              	.L190:
 572 008c 302C     		cmp	r4, #48
 573 008e 09D1     		bne	.L191
 574              	.L192:
 575 0090 12F8014B 		ldrb	r4, [r2], #1	@ zero_extendqisi2
 576 0094 302C     		cmp	r4, #48
 577 0096 FBD0     		beq	.L192
 578 0098 9DF85130 		ldrb	r3, [sp, #81]	@ zero_extendqisi2
 579 009c 43F00103 		orr	r3, r3, #1
 580 00a0 8DF85130 		strb	r3, [sp, #81]
 581              	.L191:
 582 00a4 2A2C     		cmp	r4, #42
 583 00a6 00F0F381 		beq	.L193
 584 00aa A4F13001 		sub	r1, r4, #48
 585 00ae CBB2     		uxtb	r3, r1
 586 00b0 092B     		cmp	r3, #9
 587 00b2 0CD8     		bhi	.L194
 588 00b4 0023     		movs	r3, #0
 589              	.L196:
 590 00b6 12F8014B 		ldrb	r4, [r2], #1	@ zero_extendqisi2
 591 00ba 03EB8303 		add	r3, r3, r3, lsl #2
 592 00be 01EB4303 		add	r3, r1, r3, lsl #1
 593 00c2 A4F13001 		sub	r1, r4, #48
 594 00c6 C8B2     		uxtb	r0, r1
 595 00c8 0928     		cmp	r0, #9
 596 00ca F4D9     		bls	.L196
 597 00cc 1293     		str	r3, [sp, #72]
 598              	.L194:
 599 00ce 2E2C     		cmp	r4, #46
 600 00d0 6AD1     		bne	.L313
 601 00d2 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 602 00d4 02F1010B 		add	fp, r2, #1
 603 00d8 2A2C     		cmp	r4, #42
 604 00da 00F06882 		beq	.L197
 605 00de A4F13001 		sub	r1, r4, #48
 606 00e2 CBB2     		uxtb	r3, r1
 607 00e4 092B     		cmp	r3, #9
 608 00e6 60D8     		bhi	.L198
 609 00e8 0023     		movs	r3, #0
 610              	.L201:
 611 00ea 1BF8014B 		ldrb	r4, [fp], #1	@ zero_extendqisi2
 612 00ee 03EB8303 		add	r3, r3, r3, lsl #2
 613 00f2 01EB4303 		add	r3, r1, r3, lsl #1
 614 00f6 A4F13001 		sub	r1, r4, #48
 615 00fa CAB2     		uxtb	r2, r1
 616 00fc 092A     		cmp	r2, #9
 617 00fe F4D9     		bls	.L201
 618 0100 1393     		str	r3, [sp, #76]
 619              	.L200:
 620 0102 002B     		cmp	r3, #0
 621 0104 51D0     		beq	.L198
 622 0106 732C     		cmp	r4, #115
 623 0108 54D0     		beq	.L314
 624              	.L203:
 625 010a 632C     		cmp	r4, #99
 626 010c 00F01C82 		beq	.L315
 627 0110 6C2C     		cmp	r4, #108
ARM GAS  /tmp/ccbSdURL.s 			page 12


 628 0112 00F03C81 		beq	.L316
 629              	.L209:
 630 0116 04F0DF03 		and	r3, r4, #223
 631 011a 0493     		str	r3, [sp, #16]
 632 011c 453B     		subs	r3, r3, #69
 633 011e 012B     		cmp	r3, #1
 634 0120 5BD9     		bls	.L317
 635 0122 0A23     		movs	r3, #10
 636 0124 6122     		movs	r2, #97
 637 0126 1193     		str	r3, [sp, #68]
 638 0128 A4F16403 		sub	r3, r4, #100
 639 012c DBB2     		uxtb	r3, r3
 640 012e 112B     		cmp	r3, #17
 641 0130 8DF85020 		strb	r2, [sp, #80]
 642 0134 40F20C81 		bls	.L250
 643 0138 1023     		movs	r3, #16
 644 013a 782C     		cmp	r4, #120
 645 013c 1193     		str	r3, [sp, #68]
 646 013e 40F00F81 		bne	.L252
 647              	.L251:
 648 0142 9DF85130 		ldrb	r3, [sp, #81]	@ zero_extendqisi2
 649 0146 5B06     		lsls	r3, r3, #25
 650 0148 13D4     		bmi	.L306
 651              	.L257:
 652 014a 039A     		ldr	r2, [sp, #12]
 653 014c 0DA8     		add	r0, sp, #52
 654 014e 1168     		ldr	r1, [r2]
 655 0150 141D     		adds	r4, r2, #4
 656 0152 FFF7FEFF 		bl	_ZL6printiR10SStringBufi
 657 0156 D0B1     		cbz	r0, .L187
 658              	.L269:
 659 0158 0394     		str	r4, [sp, #12]
 660 015a 61E7     		b	.L180
 661              	.L322:
 662 015c 753C     		subs	r4, r4, #117
 663 015e 18BF     		it	ne
 664 0160 0124     		movne	r4, #1
 665 0162 9DF85130 		ldrb	r3, [sp, #81]	@ zero_extendqisi2
 666 0166 64F38203 		bfi	r3, r4, #2, #1
 667 016a 5A06     		lsls	r2, r3, #25
 668 016c 8DF85130 		strb	r3, [sp, #81]
 669 0170 EBD5     		bpl	.L257
 670              	.L306:
 671 0172 0399     		ldr	r1, [sp, #12]
 672 0174 0DA8     		add	r0, sp, #52
 673 0176 0731     		adds	r1, r1, #7
 674 0178 21F00701 		bic	r1, r1, #7
 675 017c D1E90023 		ldrd	r2, [r1]
 676 0180 0831     		adds	r1, r1, #8
 677 0182 0391     		str	r1, [sp, #12]
 678 0184 FFF7FEFF 		bl	_ZL7printllR10SStringBufx
 679 0188 0028     		cmp	r0, #0
 680 018a 7FF449AF 		bne	.L180
 681              	.L187:
 682 018e 0022     		movs	r2, #0
 683 0190 0D9B     		ldr	r3, [sp, #52]
 684 0192 1A70     		strb	r2, [r3]
ARM GAS  /tmp/ccbSdURL.s 			page 13


 685 0194 1098     		ldr	r0, [sp, #64]
 686 0196 1FB0     		add	sp, sp, #124
 687              		@ sp needed
 688 0198 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 689              	.L183:
 690 019c 0023     		movs	r3, #0
 691 019e 1370     		strb	r3, [r2]
 692 01a0 1098     		ldr	r0, [sp, #64]
 693 01a2 1FB0     		add	sp, sp, #124
 694              		@ sp needed
 695 01a4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 696              	.L313:
 697 01a8 9346     		mov	fp, r2
 698              	.L198:
 699 01aa 4FF0FF33 		mov	r3, #-1
 700 01ae 732C     		cmp	r4, #115
 701 01b0 1393     		str	r3, [sp, #76]
 702 01b2 AAD1     		bne	.L203
 703              	.L314:
 704 01b4 039C     		ldr	r4, [sp, #12]
 705 01b6 9DF85130 		ldrb	r3, [sp, #81]	@ zero_extendqisi2
 706 01ba 2168     		ldr	r1, [r4]
 707 01bc BE4A     		ldr	r2, .L331+24
 708 01be 43F01003 		orr	r3, r3, #16
 709 01c2 0029     		cmp	r1, #0
 710 01c4 08BF     		it	eq
 711 01c6 1146     		moveq	r1, r2
 712 01c8 0DA8     		add	r0, sp, #52
 713 01ca 8DF85130 		strb	r3, [sp, #81]
 714 01ce 0434     		adds	r4, r4, #4
 715 01d0 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 716 01d4 0028     		cmp	r0, #0
 717 01d6 BFD1     		bne	.L269
 718 01d8 D9E7     		b	.L187
 719              	.L317:
 720 01da 039D     		ldr	r5, [sp, #12]
 721 01dc 0735     		adds	r5, r5, #7
 722 01de 25F00705 		bic	r5, r5, #7
 723 01e2 2B68     		ldr	r3, [r5]
 724 01e4 6E68     		ldr	r6, [r5, #4]
 725 01e6 0593     		str	r3, [sp, #20]
 726 01e8 1A46     		mov	r2, r3
 727 01ea 1846     		mov	r0, r3
 728 01ec 0835     		adds	r5, r5, #8
 729 01ee 3346     		mov	r3, r6
 730 01f0 3146     		mov	r1, r6
 731 01f2 0796     		str	r6, [sp, #28]
 732 01f4 0395     		str	r5, [sp, #12]
 733 01f6 FFF7FEFF 		bl	__aeabi_dcmpun
 734 01fa 0028     		cmp	r0, #0
 735 01fc 40F0BE81 		bne	.L318
 736 0200 079B     		ldr	r3, [sp, #28]
 737 0202 059F     		ldr	r7, [sp, #20]
 738 0204 23F00045 		bic	r5, r3, #-2147483648
 739 0208 3846     		mov	r0, r7
 740 020a 2946     		mov	r1, r5
 741 020c 4FF0FF32 		mov	r2, #-1
ARM GAS  /tmp/ccbSdURL.s 			page 14


 742 0210 AA4B     		ldr	r3, .L331+28
 743 0212 3E46     		mov	r6, r7
 744 0214 FFF7FEFF 		bl	__aeabi_dcmpun
 745 0218 48B9     		cbnz	r0, .L258
 746 021a 3846     		mov	r0, r7
 747 021c 2946     		mov	r1, r5
 748 021e 4FF0FF32 		mov	r2, #-1
 749 0222 A64B     		ldr	r3, .L331+28
 750 0224 FFF7FEFF 		bl	__aeabi_dcmple
 751 0228 0028     		cmp	r0, #0
 752 022a 00F0AF81 		beq	.L319
 753              	.L258:
 754 022e 0598     		ldr	r0, [sp, #20]
 755 0230 2946     		mov	r1, r5
 756 0232 0022     		movs	r2, #0
 757 0234 A24B     		ldr	r3, .L331+32
 758 0236 FFF7FEFF 		bl	__aeabi_dcmpgt
 759 023a 0028     		cmp	r0, #0
 760 023c 00F0BA80 		beq	.L215
 761 0240 049B     		ldr	r3, [sp, #16]
 762 0242 462B     		cmp	r3, #70
 763 0244 00F0B180 		beq	.L320
 764 0248 4523     		movs	r3, #69
 765 024a 0493     		str	r3, [sp, #16]
 766              	.L217:
 767 024c 0598     		ldr	r0, [sp, #20]
 768 024e 2946     		mov	r1, r5
 769 0250 93A3     		adr	r3, .L331
 770 0252 D3E90023 		ldrd	r2, [r3]
 771 0256 FFF7FEFF 		bl	__aeabi_dcmpgt
 772 025a 0028     		cmp	r0, #0
 773 025c 00F0BF81 		beq	.L321
 774 0260 0023     		movs	r3, #0
 775 0262 1F46     		mov	r7, r3
 776              	.L222:
 777 0264 8EA3     		adr	r3, .L331
 778 0266 D3E90023 		ldrd	r2, [r3]
 779 026a 3046     		mov	r0, r6
 780 026c 2946     		mov	r1, r5
 781 026e FFF7FEFF 		bl	__aeabi_ddiv
 782 0272 8BA3     		adr	r3, .L331
 783 0274 D3E90023 		ldrd	r2, [r3]
 784 0278 0D46     		mov	r5, r1
 785 027a 0646     		mov	r6, r0
 786 027c 0537     		adds	r7, r7, #5
 787 027e FFF7FEFF 		bl	__aeabi_dcmpgt
 788 0282 0028     		cmp	r0, #0
 789 0284 EED1     		bne	.L222
 790 0286 0697     		str	r7, [sp, #24]
 791              	.L223:
 792 0288 3046     		mov	r0, r6
 793 028a 2946     		mov	r1, r5
 794 028c 0022     		movs	r2, #0
 795 028e 8D4B     		ldr	r3, .L331+36
 796 0290 FFF7FEFF 		bl	__aeabi_dcmpgt
 797 0294 80B1     		cbz	r0, .L221
 798 0296 069F     		ldr	r7, [sp, #24]
ARM GAS  /tmp/ccbSdURL.s 			page 15


 799              	.L224:
 800 0298 3046     		mov	r0, r6
 801 029a 2946     		mov	r1, r5
 802 029c 0022     		movs	r2, #0
 803 029e 894B     		ldr	r3, .L331+36
 804 02a0 FFF7FEFF 		bl	__aeabi_ddiv
 805 02a4 0022     		movs	r2, #0
 806 02a6 874B     		ldr	r3, .L331+36
 807 02a8 0D46     		mov	r5, r1
 808 02aa 0646     		mov	r6, r0
 809 02ac 0137     		adds	r7, r7, #1
 810 02ae FFF7FEFF 		bl	__aeabi_dcmpgt
 811 02b2 0028     		cmp	r0, #0
 812 02b4 F0D1     		bne	.L224
 813 02b6 0697     		str	r7, [sp, #24]
 814              	.L221:
 815 02b8 3046     		mov	r0, r6
 816 02ba 2946     		mov	r1, r5
 817 02bc 0022     		movs	r2, #0
 818 02be 0023     		movs	r3, #0
 819 02c0 FFF7FEFF 		bl	__aeabi_dcmpeq
 820 02c4 0028     		cmp	r0, #0
 821 02c6 7BD1     		bne	.L218
 822 02c8 77A3     		adr	r3, .L331+8
 823 02ca D3E90023 		ldrd	r2, [r3]
 824 02ce 3046     		mov	r0, r6
 825 02d0 2946     		mov	r1, r5
 826 02d2 FFF7FEFF 		bl	__aeabi_dcmplt
 827 02d6 A8B1     		cbz	r0, .L229
 828 02d8 0FF2CC19 		adr	r9, .L331+8
 829 02dc D9E90089 		ldrd	r8, [r9]
 830 02e0 069F     		ldr	r7, [sp, #24]
 831              	.L228:
 832 02e2 6FA3     		adr	r3, .L331
 833 02e4 D3E90023 		ldrd	r2, [r3]
 834 02e8 3046     		mov	r0, r6
 835 02ea 2946     		mov	r1, r5
 836 02ec FFF7FEFF 		bl	__aeabi_dmul
 837 02f0 4246     		mov	r2, r8
 838 02f2 4B46     		mov	r3, r9
 839 02f4 0D46     		mov	r5, r1
 840 02f6 0646     		mov	r6, r0
 841 02f8 053F     		subs	r7, r7, #5
 842 02fa FFF7FEFF 		bl	__aeabi_dcmplt
 843 02fe 0028     		cmp	r0, #0
 844 0300 EFD1     		bne	.L228
 845 0302 0697     		str	r7, [sp, #24]
 846              	.L229:
 847 0304 3046     		mov	r0, r6
 848 0306 2946     		mov	r1, r5
 849 0308 0022     		movs	r2, #0
 850 030a 6F4B     		ldr	r3, .L331+40
 851 030c FFF7FEFF 		bl	__aeabi_dcmplt
 852 0310 0028     		cmp	r0, #0
 853 0312 55D0     		beq	.L218
 854 0314 4FF00008 		mov	r8, #0
 855 0318 DFF8AC91 		ldr	r9, .L331+40
ARM GAS  /tmp/ccbSdURL.s 			page 16


 856 031c 069F     		ldr	r7, [sp, #24]
 857              	.L230:
 858 031e 3046     		mov	r0, r6
 859 0320 2946     		mov	r1, r5
 860 0322 0022     		movs	r2, #0
 861 0324 674B     		ldr	r3, .L331+36
 862 0326 FFF7FEFF 		bl	__aeabi_dmul
 863 032a 4246     		mov	r2, r8
 864 032c 4B46     		mov	r3, r9
 865 032e 0D46     		mov	r5, r1
 866 0330 0646     		mov	r6, r0
 867 0332 013F     		subs	r7, r7, #1
 868 0334 FFF7FEFF 		bl	__aeabi_dcmplt
 869 0338 0028     		cmp	r0, #0
 870 033a F0D1     		bne	.L230
 871 033c DDF84C80 		ldr	r8, [sp, #76]
 872 0340 0697     		str	r7, [sp, #24]
 873 0342 B8F1000F 		cmp	r8, #0
 874 0346 40DA     		bge	.L231
 875              	.L324:
 876 0348 0623     		movs	r3, #6
 877 034a 1393     		str	r3, [sp, #76]
 878 034c 9846     		mov	r8, r3
 879 034e 3EE0     		b	.L232
 880              	.L250:
 881 0350 5E4A     		ldr	r2, .L331+44
 882 0352 22FA03F3 		lsr	r3, r2, r3
 883 0356 D907     		lsls	r1, r3, #31
 884 0358 3FF500AF 		bmi	.L322
 885 035c 1023     		movs	r3, #16
 886 035e 1193     		str	r3, [sp, #68]
 887              	.L252:
 888 0360 582C     		cmp	r4, #88
 889 0362 00F02D81 		beq	.L255
 890 0366 702C     		cmp	r4, #112
 891 0368 3FF4EBAE 		beq	.L251
 892 036c 6F2C     		cmp	r4, #111
 893 036e 7FF457AE 		bne	.L180
 894 0372 0823     		movs	r3, #8
 895 0374 1193     		str	r3, [sp, #68]
 896 0376 E4E6     		b	.L251
 897              	.L312:
 898 0378 9DF85130 		ldrb	r3, [sp, #81]	@ zero_extendqisi2
 899 037c 9BF80240 		ldrb	r4, [fp, #2]	@ zero_extendqisi2
 900 0380 43F00203 		orr	r3, r3, #2
 901 0384 8DF85130 		strb	r3, [sp, #81]
 902 0388 0BF10302 		add	r2, fp, #3
 903 038c 7EE6     		b	.L190
 904              	.L316:
 905 038e 9BF80040 		ldrb	r4, [fp]	@ zero_extendqisi2
 906 0392 9DF85130 		ldrb	r3, [sp, #81]	@ zero_extendqisi2
 907 0396 6C2C     		cmp	r4, #108
 908 0398 00F00081 		beq	.L323
 909 039c 43F02003 		orr	r3, r3, #32
 910 03a0 0BF1010B 		add	fp, fp, #1
 911 03a4 8DF85130 		strb	r3, [sp, #81]
 912 03a8 B5E6     		b	.L209
ARM GAS  /tmp/ccbSdURL.s 			page 17


 913              	.L320:
 914 03aa 013C     		subs	r4, r4, #1
 915 03ac E4B2     		uxtb	r4, r4
 916 03ae 04F0DF03 		and	r3, r4, #223
 917 03b2 0493     		str	r3, [sp, #16]
 918              	.L215:
 919 03b4 049B     		ldr	r3, [sp, #16]
 920 03b6 452B     		cmp	r3, #69
 921 03b8 3FF448AF 		beq	.L217
 922 03bc 0023     		movs	r3, #0
 923 03be 0693     		str	r3, [sp, #24]
 924              	.L218:
 925 03c0 DDF84C80 		ldr	r8, [sp, #76]
 926 03c4 B8F1000F 		cmp	r8, #0
 927 03c8 BEDB     		blt	.L324
 928              	.L231:
 929 03ca 00F00A81 		beq	.L265
 930              	.L232:
 931 03ce 38A3     		adr	r3, .L331+16
 932 03d0 D3E90023 		ldrd	r2, [r3]
 933 03d4 3046     		mov	r0, r6
 934 03d6 2946     		mov	r1, r5
 935 03d8 FFF7FEFF 		bl	__aeabi_dcmplt
 936 03dc 0028     		cmp	r0, #0
 937 03de 00F00481 		beq	.L325
 938 03e2 4FF00A0A 		mov	r10, #10
 939 03e6 0027     		movs	r7, #0
 940 03e8 07E0     		b	.L235
 941              	.L236:
 942 03ea 3046     		mov	r0, r6
 943 03ec 30A3     		adr	r3, .L331+16
 944 03ee D3E90023 		ldrd	r2, [r3]
 945 03f2 2946     		mov	r1, r5
 946 03f4 FFF7FEFF 		bl	__aeabi_dcmplt
 947 03f8 70B1     		cbz	r0, .L233
 948              	.L235:
 949 03fa 3046     		mov	r0, r6
 950 03fc 2946     		mov	r1, r5
 951 03fe 0022     		movs	r2, #0
 952 0400 304B     		ldr	r3, .L331+36
 953 0402 FFF7FEFF 		bl	__aeabi_dmul
 954 0406 0137     		adds	r7, r7, #1
 955 0408 0AEB8A0A 		add	r10, r10, r10, lsl #2
 956 040c 4745     		cmp	r7, r8
 957 040e 0D46     		mov	r5, r1
 958 0410 0646     		mov	r6, r0
 959 0412 4FEA4A0A 		lsl	r10, r10, #1
 960 0416 E8DB     		blt	.L236
 961              	.L233:
 962 0418 0023     		movs	r3, #0
 963 041a 3046     		mov	r0, r6
 964 041c 2946     		mov	r1, r5
 965 041e 8DF87630 		strb	r3, [sp, #118]
 966 0422 FFF7FEFF 		bl	llrint
 967 0426 049B     		ldr	r3, [sp, #16]
 968 0428 8046     		mov	r8, r0
 969 042a 452B     		cmp	r3, #69
ARM GAS  /tmp/ccbSdURL.s 			page 18


 970 042c 8946     		mov	r9, r1
 971 042e 4FD0     		beq	.L326
 972 0430 0DF17606 		add	r6, sp, #118
 973              	.L237:
 974 0434 013F     		subs	r7, r7, #1
 975 0436 0A24     		movs	r4, #10
 976 0438 0025     		movs	r5, #0
 977 043a 01E0     		b	.L242
 978              	.L244:
 979 043c 5646     		mov	r6, r10
 980 043e 013F     		subs	r7, r7, #1
 981              	.L242:
 982 0440 7B1C     		adds	r3, r7, #1
 983 0442 06F1FF3A 		add	r10, r6, #-1
 984 0446 00F0D480 		beq	.L327
 985 044a 4B46     		mov	r3, r9
 986 044c 4246     		mov	r2, r8
 987 044e CDE90045 		strd	r4, [sp]
 988 0452 08A8     		add	r0, sp, #32
 989 0454 FFF7FEFF 		bl	lldiv
 990 0458 DDE90889 		ldrd	r8, [sp, #32]
 991 045c 9DF82830 		ldrb	r3, [sp, #40]	@ zero_extendqisi2
 992 0460 3033     		adds	r3, r3, #48
 993 0462 06F8013C 		strb	r3, [r6, #-1]
 994 0466 58EA0903 		orrs	r3, r8, r9
 995 046a E7D1     		bne	.L244
 996 046c 002F     		cmp	r7, #0
 997 046e E5DA     		bge	.L244
 998              	.L245:
 999 0470 0598     		ldr	r0, [sp, #20]
 1000 0472 0799     		ldr	r1, [sp, #28]
 1001 0474 0022     		movs	r2, #0
 1002 0476 0023     		movs	r3, #0
 1003 0478 FFF7FEFF 		bl	__aeabi_dcmplt
 1004 047c 0028     		cmp	r0, #0
 1005 047e 50D1     		bne	.L328
 1006              	.L246:
 1007 0480 5146     		mov	r1, r10
 1008 0482 0DA8     		add	r0, sp, #52
 1009 0484 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1010 0488 0028     		cmp	r0, #0
 1011 048a 7FF4C9AD 		bne	.L180
 1012 048e 7EE6     		b	.L187
 1013              	.L193:
 1014 0490 0399     		ldr	r1, [sp, #12]
 1015 0492 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 1016 0494 0B68     		ldr	r3, [r1]
 1017 0496 0431     		adds	r1, r1, #4
 1018 0498 0391     		str	r1, [sp, #12]
 1019 049a 1293     		str	r3, [sp, #72]
 1020 049c 0132     		adds	r2, r2, #1
 1021 049e 16E6     		b	.L194
 1022              	.L332:
 1023              		.align	3
 1024              	.L331:
 1025 04a0 00000000 		.word	0
 1026 04a4 006AF840 		.word	1090021888
ARM GAS  /tmp/ccbSdURL.s 			page 19


 1027 04a8 00000080 		.word	2147483648
 1028 04ac B5F8E43E 		.word	1055193269
 1029 04b0 9A999999 		.word	2576980378
 1030 04b4 9999A943 		.word	1135188377
 1031 04b8 00000000 		.word	.LC1
 1032 04bc FFFFEF7F 		.word	2146435071
 1033 04c0 0000E043 		.word	1138753536
 1034 04c4 00002440 		.word	1076101120
 1035 04c8 0000F03F 		.word	1072693248
 1036 04cc 21000200 		.word	131105
 1037              	.L326:
 1038 04d0 5046     		mov	r0, r10
 1039 04d2 FFF7FEFF 		bl	__aeabi_i2d
 1040 04d6 3246     		mov	r2, r6
 1041 04d8 2B46     		mov	r3, r5
 1042 04da FFF7FEFF 		bl	__aeabi_dcmple
 1043 04de 0028     		cmp	r0, #0
 1044 04e0 48D1     		bne	.L329
 1045              	.L238:
 1046 04e2 069B     		ldr	r3, [sp, #24]
 1047 04e4 5049     		ldr	r1, .L333
 1048 04e6 002B     		cmp	r3, #0
 1049 04e8 B8BF     		it	lt
 1050 04ea 5B42     		rsblt	r3, r3, #0
 1051 04ec 0DF17606 		add	r6, sp, #118
 1052              	.L240:
 1053 04f0 81FB0320 		smull	r2, r0, r1, r3
 1054 04f4 DA17     		asrs	r2, r3, #31
 1055 04f6 C2EBA002 		rsb	r2, r2, r0, asr #2
 1056 04fa 02EB8200 		add	r0, r2, r2, lsl #2
 1057 04fe A3EB4003 		sub	r3, r3, r0, lsl #1
 1058 0502 3033     		adds	r3, r3, #48
 1059 0504 06F8013D 		strb	r3, [r6, #-1]!
 1060 0508 1346     		mov	r3, r2
 1061 050a 002A     		cmp	r2, #0
 1062 050c F0D1     		bne	.L240
 1063 050e 069B     		ldr	r3, [sp, #24]
 1064 0510 06F8024C 		strb	r4, [r6, #-2]
 1065 0514 002B     		cmp	r3, #0
 1066 0516 ACBF     		ite	ge
 1067 0518 2B23     		movge	r3, #43
 1068 051a 2D23     		movlt	r3, #45
 1069 051c 023E     		subs	r6, r6, #2
 1070 051e 7370     		strb	r3, [r6, #1]
 1071 0520 88E7     		b	.L237
 1072              	.L328:
 1073 0522 129B     		ldr	r3, [sp, #72]
 1074 0524 53B1     		cbz	r3, .L248
 1075 0526 9DF85130 		ldrb	r3, [sp, #81]	@ zero_extendqisi2
 1076 052a D807     		lsls	r0, r3, #31
 1077 052c 06D5     		bpl	.L248
 1078 052e 0D9B     		ldr	r3, [sp, #52]
 1079 0530 0F9A     		ldr	r2, [sp, #60]
 1080 0532 9342     		cmp	r3, r2
 1081 0534 48D3     		bcc	.L330
 1082 0536 0022     		movs	r2, #0
 1083 0538 1A70     		strb	r2, [r3]
ARM GAS  /tmp/ccbSdURL.s 			page 20


 1084 053a 28E6     		b	.L187
 1085              	.L248:
 1086 053c 2D23     		movs	r3, #45
 1087 053e A6F1020A 		sub	r10, r6, #2
 1088 0542 06F8023C 		strb	r3, [r6, #-2]
 1089 0546 9BE7     		b	.L246
 1090              	.L315:
 1091 0548 0399     		ldr	r1, [sp, #12]
 1092 054a 0D9B     		ldr	r3, [sp, #52]
 1093 054c 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 1094 054e 0431     		adds	r1, r1, #4
 1095 0550 52B1     		cbz	r2, .L208
 1096 0552 0F98     		ldr	r0, [sp, #60]
 1097 0554 8342     		cmp	r3, r0
 1098 0556 07D2     		bcs	.L208
 1099 0558 581C     		adds	r0, r3, #1
 1100 055a 0D90     		str	r0, [sp, #52]
 1101 055c 1A70     		strb	r2, [r3]
 1102 055e 109B     		ldr	r3, [sp, #64]
 1103 0560 0391     		str	r1, [sp, #12]
 1104 0562 0133     		adds	r3, r3, #1
 1105 0564 1093     		str	r3, [sp, #64]
 1106 0566 5BE5     		b	.L180
 1107              	.L208:
 1108 0568 0022     		movs	r2, #0
 1109 056a 1A70     		strb	r2, [r3]
 1110 056c 1098     		ldr	r0, [sp, #64]
 1111 056e 1FB0     		add	sp, sp, #124
 1112              		@ sp needed
 1113 0570 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1114              	.L329:
 1115 0574 069B     		ldr	r3, [sp, #24]
 1116 0576 0133     		adds	r3, r3, #1
 1117 0578 0693     		str	r3, [sp, #24]
 1118 057a B2E7     		b	.L238
 1119              	.L318:
 1120 057c 2B49     		ldr	r1, .L333+4
 1121 057e 0DA8     		add	r0, sp, #52
 1122 0580 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1123 0584 0028     		cmp	r0, #0
 1124 0586 7FF44BAD 		bne	.L180
 1125 058a 00E6     		b	.L187
 1126              	.L319:
 1127 058c 2849     		ldr	r1, .L333+8
 1128 058e 0DA8     		add	r0, sp, #52
 1129 0590 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1130 0594 0028     		cmp	r0, #0
 1131 0596 7FF443AD 		bne	.L180
 1132 059a F8E5     		b	.L187
 1133              	.L323:
 1134 059c 43F04003 		orr	r3, r3, #64
 1135 05a0 9BF80140 		ldrb	r4, [fp, #1]	@ zero_extendqisi2
 1136 05a4 8DF85130 		strb	r3, [sp, #81]
 1137 05a8 0BF1020B 		add	fp, fp, #2
 1138 05ac B3E5     		b	.L209
 1139              	.L197:
 1140 05ae 0399     		ldr	r1, [sp, #12]
ARM GAS  /tmp/ccbSdURL.s 			page 21


 1141 05b0 02F1020B 		add	fp, r2, #2
 1142 05b4 0B68     		ldr	r3, [r1]
 1143 05b6 0431     		adds	r1, r1, #4
 1144 05b8 1393     		str	r3, [sp, #76]
 1145 05ba 0391     		str	r1, [sp, #12]
 1146 05bc 5478     		ldrb	r4, [r2, #1]	@ zero_extendqisi2
 1147 05be A0E5     		b	.L200
 1148              	.L255:
 1149 05c0 4123     		movs	r3, #65
 1150 05c2 8DF85030 		strb	r3, [sp, #80]
 1151 05c6 BCE5     		b	.L251
 1152              	.L330:
 1153 05c8 2D22     		movs	r2, #45
 1154 05ca 591C     		adds	r1, r3, #1
 1155 05cc 0D91     		str	r1, [sp, #52]
 1156 05ce 1A70     		strb	r2, [r3]
 1157 05d0 109A     		ldr	r2, [sp, #64]
 1158 05d2 129B     		ldr	r3, [sp, #72]
 1159 05d4 0132     		adds	r2, r2, #1
 1160 05d6 013B     		subs	r3, r3, #1
 1161 05d8 1092     		str	r2, [sp, #64]
 1162 05da 1293     		str	r3, [sp, #72]
 1163 05dc 50E7     		b	.L246
 1164              	.L321:
 1165 05de 0690     		str	r0, [sp, #24]
 1166 05e0 52E6     		b	.L223
 1167              	.L265:
 1168 05e2 4746     		mov	r7, r8
 1169 05e4 4FF00A0A 		mov	r10, #10
 1170 05e8 16E7     		b	.L233
 1171              	.L325:
 1172 05ea 0746     		mov	r7, r0
 1173 05ec 4FF00A0A 		mov	r10, #10
 1174 05f0 12E7     		b	.L233
 1175              	.L327:
 1176 05f2 4FF02E03 		mov	r3, #46
 1177 05f6 4246     		mov	r2, r8
 1178 05f8 06F8013C 		strb	r3, [r6, #-1]
 1179 05fc 08A8     		add	r0, sp, #32
 1180 05fe 4B46     		mov	r3, r9
 1181 0600 CDE90045 		strd	r4, [sp]
 1182 0604 FFF7FEFF 		bl	lldiv
 1183 0608 DDE90889 		ldrd	r8, [sp, #32]
 1184 060c 9DF82830 		ldrb	r3, [sp, #40]	@ zero_extendqisi2
 1185 0610 A6F1020A 		sub	r10, r6, #2
 1186 0614 3033     		adds	r3, r3, #48
 1187 0616 06F8023C 		strb	r3, [r6, #-2]
 1188 061a 58EA0903 		orrs	r3, r8, r9
 1189 061e 7FF40DAF 		bne	.L244
 1190 0622 013E     		subs	r6, r6, #1
 1191 0624 24E7     		b	.L245
 1192              	.L334:
 1193 0626 00BF     		.align	2
 1194              	.L333:
 1195 0628 67666666 		.word	1717986919
 1196 062c 0C000000 		.word	.LC3
 1197 0630 08000000 		.word	.LC2
ARM GAS  /tmp/ccbSdURL.s 			page 22


 1198              		.size	_Z13SafeVsnprintfPcjPKcSt9__va_list, .-_Z13SafeVsnprintfPcjPKcSt9__va_list
 1199              		.section	.text._Z12SafeSnprintfPcjPKcz,"ax",%progbits
 1200              		.align	1
 1201              		.p2align 2,,3
 1202              		.global	_Z12SafeSnprintfPcjPKcz
 1203              		.syntax unified
 1204              		.thumb
 1205              		.thumb_func
 1206              		.fpu softvfp
 1207              		.type	_Z12SafeSnprintfPcjPKcz, %function
 1208              	_Z12SafeSnprintfPcjPKcz:
 1209              		@ args = 4, pretend = 8, frame = 8
 1210              		@ frame_needed = 0, uses_anonymous_args = 1
 1211 0000 0CB4     		push	{r2, r3}
 1212 0002 10B5     		push	{r4, lr}
 1213 0004 82B0     		sub	sp, sp, #8
 1214 0006 04AC     		add	r4, sp, #16
 1215 0008 54F8042B 		ldr	r2, [r4], #4
 1216 000c 2346     		mov	r3, r4
 1217 000e 0194     		str	r4, [sp, #4]
 1218 0010 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 1219 0014 02B0     		add	sp, sp, #8
 1220              		@ sp needed
 1221 0016 BDE81040 		pop	{r4, lr}
 1222 001a 02B0     		add	sp, sp, #8
 1223 001c 7047     		bx	lr
 1224              		.size	_Z12SafeSnprintfPcjPKcz, .-_Z12SafeSnprintfPcjPKcz
 1225 001e 00BF     		.section	.rodata._Z13SafeVsnprintfPcjPKcSt9__va_list.str1.4,"aMS",%progbits,1
 1226              		.align	2
 1227              	.LC1:
 1228 0000 286E756C 		.ascii	"(null)\000"
 1228      6C2900
 1229 0007 00       		.space	1
 1230              	.LC2:
 1231 0008 696E6600 		.ascii	"inf\000"
 1232              	.LC3:
 1233 000c 6E616E00 		.ascii	"nan\000"
 1234              		.section	.rodata._ZL6printiR10SStringBufi.str1.4,"aMS",%progbits,1
 1235              		.align	2
 1236              	.LC0:
 1237 0000 3000     		.ascii	"0\000"
 1238              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
