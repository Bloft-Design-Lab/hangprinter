ARM GAS  /tmp/ccl3QAwE.s 			page 1


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
  13              		.file	"socketlib.cpp"
  14              		.section	.text._Z9IsSendingh,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z9IsSendingh
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z9IsSendingh, %function
  23              	_Z9IsSendingh:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 034B     		ldr	r3, .L3
  28 0002 1B88     		ldrh	r3, [r3]
  29 0004 23FA00F0 		lsr	r0, r3, r0
  30 0008 00F00100 		and	r0, r0, #1
  31 000c 7047     		bx	lr
  32              	.L4:
  33 000e 00BF     		.align	2
  34              	.L3:
  35 0010 00000000 		.word	.LANCHOR0
  36              		.size	_Z9IsSendingh, .-_Z9IsSendingh
  37              		.section	.text._Z11ExecCommandhh,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	_Z11ExecCommandhh
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu fpv4-sp-d16
  45              		.type	_Z11ExecCommandhh, %function
  46              	_Z11ExecCommandhh:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49 0000 4001     		lsls	r0, r0, #5
  50 0002 10B5     		push	{r4, lr}
  51 0004 00F58474 		add	r4, r0, #264
  52 0008 2046     		mov	r0, r4
  53 000a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  54              	.L6:
  55 000e 2046     		mov	r0, r4
  56 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
  57 0014 0028     		cmp	r0, #0
ARM GAS  /tmp/ccl3QAwE.s 			page 2


  58 0016 FAD1     		bne	.L6
  59 0018 10BD     		pop	{r4, pc}
  60              		.size	_Z11ExecCommandhh, .-_Z11ExecCommandhh
  61 001a 00BF     		.section	.text._Z5closeh,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	_Z5closeh
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_Z5closeh, %function
  70              	_Z5closeh:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 70B5     		push	{r4, r5, r6, lr}
  74 0002 0646     		mov	r6, r0
  75 0004 0124     		movs	r4, #1
  76 0006 04EB8605 		add	r5, r4, r6, lsl #2
  77 000a 1021     		movs	r1, #16
  78 000c ED00     		lsls	r5, r5, #3
  79 000e FFF7FEFF 		bl	_Z11ExecCommandhh
  80 0012 05F50070 		add	r0, r5, #512
  81 0016 1F21     		movs	r1, #31
  82 0018 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  83 001c 0C48     		ldr	r0, .L13
  84 001e 0D49     		ldr	r1, .L13+4
  85 0020 0D4A     		ldr	r2, .L13+8
  86 0022 0023     		movs	r3, #0
  87 0024 20F81630 		strh	r3, [r0, r6, lsl #1]	@ movhi
  88 0028 0C48     		ldr	r0, .L13+12
  89 002a B440     		lsls	r4, r4, r6
  90 002c 8355     		strb	r3, [r0, r6]
  91 002e E443     		mvns	r4, r4
  92 0030 0B88     		ldrh	r3, [r1]
  93 0032 1088     		ldrh	r0, [r2]
  94 0034 24B2     		sxth	r4, r4
  95 0036 2340     		ands	r3, r3, r4
  96 0038 0440     		ands	r4, r4, r0
  97 003a 05F54075 		add	r5, r5, #768
  98 003e 0B80     		strh	r3, [r1]	@ movhi
  99 0040 1480     		strh	r4, [r2]	@ movhi
 100              	.L10:
 101 0042 2846     		mov	r0, r5
 102 0044 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 103 0048 0028     		cmp	r0, #0
 104 004a FAD1     		bne	.L10
 105 004c 0120     		movs	r0, #1
 106 004e 70BD     		pop	{r4, r5, r6, pc}
 107              	.L14:
 108              		.align	2
 109              	.L13:
 110 0050 00000000 		.word	.LANCHOR2
 111 0054 00000000 		.word	.LANCHOR1
 112 0058 00000000 		.word	.LANCHOR0
 113 005c 00000000 		.word	.LANCHOR3
 114              		.size	_Z5closeh, .-_Z5closeh
ARM GAS  /tmp/ccl3QAwE.s 			page 3


 115              		.section	.text._Z6sockethhth,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	_Z6sockethhth
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv4-sp-d16
 123              		.type	_Z6sockethhth, %function
 124              	_Z6sockethhth:
 125              		@ args = 0, pretend = 0, frame = 8
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 128 0004 0229     		cmp	r1, #2
 129 0006 82B0     		sub	sp, sp, #8
 130 0008 0F46     		mov	r7, r1
 131 000a 0546     		mov	r5, r0
 132 000c 9046     		mov	r8, r2
 133 000e 1E46     		mov	r6, r3
 134 0010 14D0     		beq	.L17
 135 0012 0429     		cmp	r1, #4
 136 0014 12D0     		beq	.L17
 137 0016 0129     		cmp	r1, #1
 138 0018 04D0     		beq	.L47
 139 001a 6FF00400 		mvn	r0, #4
 140 001e 02B0     		add	sp, sp, #8
 141              		@ sp needed
 142 0020 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 143              	.L47:
 144 0024 0422     		movs	r2, #4
 145 0026 4FF47060 		mov	r0, #3840
 146 002a 0DEB0201 		add	r1, sp, r2
 147 002e FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 148 0032 019B     		ldr	r3, [sp, #4]
 149 0034 6FF00200 		mvn	r0, #2
 150 0038 002B     		cmp	r3, #0
 151 003a 51D0     		beq	.L16
 152              	.L17:
 153 003c 7007     		lsls	r0, r6, #29
 154 003e 0AD4     		bmi	.L32
 155 0040 8EB1     		cbz	r6, .L20
 156 0042 012F     		cmp	r7, #1
 157 0044 0CD0     		beq	.L21
 158 0046 022F     		cmp	r7, #2
 159 0048 0DD1     		bne	.L20
 160 004a B106     		lsls	r1, r6, #26
 161 004c 01D4     		bmi	.L24
 162 004e F306     		lsls	r3, r6, #27
 163 0050 09D5     		bpl	.L20
 164              	.L24:
 165 0052 3206     		lsls	r2, r6, #24
 166 0054 07D4     		bmi	.L20
 167              	.L32:
 168 0056 6FF00500 		mvn	r0, #5
 169 005a 02B0     		add	sp, sp, #8
 170              		@ sp needed
 171 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  /tmp/ccl3QAwE.s 			page 4


 172              	.L21:
 173 0060 16F0210F 		tst	r6, #33
 174 0064 F7D0     		beq	.L32
 175              	.L20:
 176 0066 2846     		mov	r0, r5
 177 0068 6C01     		lsls	r4, r5, #5
 178 006a FFF7FEFF 		bl	_Z5closeh
 179 006e 0834     		adds	r4, r4, #8
 180 0070 26F00F01 		bic	r1, r6, #15
 181 0074 2046     		mov	r0, r4
 182 0076 3943     		orrs	r1, r1, r7
 183 0078 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 184 007c B8F1000F 		cmp	r8, #0
 185 0080 31D0     		beq	.L25
 186              	.L46:
 187 0082 4FEA1821 		lsr	r1, r8, #8
 188 0086 5FFA88F8 		uxtb	r8, r8
 189              	.L26:
 190 008a 04F58060 		add	r0, r4, #1024
 191 008e FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 192 0092 04F5A060 		add	r0, r4, #1280
 193 0096 4146     		mov	r1, r8
 194 0098 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 195 009c 0121     		movs	r1, #1
 196 009e 2846     		mov	r0, r5
 197 00a0 FFF7FEFF 		bl	_Z11ExecCommandhh
 198 00a4 1948     		ldr	r0, .L48
 199 00a6 1A49     		ldr	r1, .L48+4
 200 00a8 0388     		ldrh	r3, [r0]
 201 00aa 1A4F     		ldr	r7, .L48+8
 202 00ac 0122     		movs	r2, #1
 203 00ae AA40     		lsls	r2, r2, r5
 204 00b0 D243     		mvns	r2, r2
 205 00b2 12B2     		sxth	r2, r2
 206 00b4 06F00106 		and	r6, r6, #1
 207 00b8 1340     		ands	r3, r3, r2
 208 00ba AE40     		lsls	r6, r6, r5
 209 00bc 1E43     		orrs	r6, r6, r3
 210 00be 0B88     		ldrh	r3, [r1]
 211 00c0 0680     		strh	r6, [r0]	@ movhi
 212 00c2 1548     		ldr	r0, .L48+12
 213 00c4 1A40     		ands	r2, r2, r3
 214 00c6 0023     		movs	r3, #0
 215 00c8 27F81530 		strh	r3, [r7, r5, lsl #1]	@ movhi
 216 00cc 4355     		strb	r3, [r0, r5]
 217 00ce 04F54074 		add	r4, r4, #768
 218 00d2 0A80     		strh	r2, [r1]	@ movhi
 219              	.L28:
 220 00d4 2046     		mov	r0, r4
 221 00d6 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 222 00da 0028     		cmp	r0, #0
 223 00dc FAD0     		beq	.L28
 224 00de 68B2     		sxtb	r0, r5
 225              	.L16:
 226 00e0 02B0     		add	sp, sp, #8
 227              		@ sp needed
 228 00e2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  /tmp/ccl3QAwE.s 			page 5


 229              	.L25:
 230 00e6 0D4A     		ldr	r2, .L48+16
 231 00e8 B2F80080 		ldrh	r8, [r2]
 232 00ec 08F10103 		add	r3, r8, #1
 233 00f0 9BB2     		uxth	r3, r3
 234 00f2 4FF6F071 		movw	r1, #65520
 235 00f6 8B42     		cmp	r3, r1
 236 00f8 01D0     		beq	.L27
 237 00fa 1380     		strh	r3, [r2]	@ movhi
 238 00fc C1E7     		b	.L46
 239              	.L27:
 240 00fe 4FF44043 		mov	r3, #49152
 241 0102 1380     		strh	r3, [r2]	@ movhi
 242 0104 4FF0EF08 		mov	r8, #239
 243 0108 FF21     		movs	r1, #255
 244 010a BEE7     		b	.L26
 245              	.L49:
 246              		.align	2
 247              	.L48:
 248 010c 00000000 		.word	.LANCHOR1
 249 0110 00000000 		.word	.LANCHOR0
 250 0114 00000000 		.word	.LANCHOR2
 251 0118 00000000 		.word	.LANCHOR3
 252 011c 00000000 		.word	.LANCHOR4
 253              		.size	_Z6sockethhth, .-_Z6sockethhth
 254              		.section	.text._Z6listenh,"ax",%progbits
 255              		.align	1
 256              		.p2align 2,,3
 257              		.global	_Z6listenh
 258              		.syntax unified
 259              		.thumb
 260              		.thumb_func
 261              		.fpu fpv4-sp-d16
 262              		.type	_Z6listenh, %function
 263              	_Z6listenh:
 264              		@ args = 0, pretend = 0, frame = 0
 265              		@ frame_needed = 0, uses_anonymous_args = 0
 266 0000 70B5     		push	{r4, r5, r6, lr}
 267 0002 4401     		lsls	r4, r0, #5
 268 0004 0834     		adds	r4, r4, #8
 269 0006 0646     		mov	r6, r0
 270 0008 2046     		mov	r0, r4
 271 000a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 272 000e 00F00F05 		and	r5, r0, #15
 273 0012 012D     		cmp	r5, #1
 274 0014 12D1     		bne	.L52
 275 0016 04F54074 		add	r4, r4, #768
 276 001a 2046     		mov	r0, r4
 277 001c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 278 0020 1328     		cmp	r0, #19
 279 0022 0ED1     		bne	.L53
 280 0024 0221     		movs	r1, #2
 281 0026 3046     		mov	r0, r6
 282 0028 FFF7FEFF 		bl	_Z11ExecCommandhh
 283 002c 2046     		mov	r0, r4
 284 002e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 285 0032 1428     		cmp	r0, #20
ARM GAS  /tmp/ccl3QAwE.s 			page 6


 286 0034 08BF     		it	eq
 287 0036 2846     		moveq	r0, r5
 288 0038 06D1     		bne	.L56
 289 003a 70BD     		pop	{r4, r5, r6, pc}
 290              	.L52:
 291 003c 6FF00400 		mvn	r0, #4
 292 0040 70BD     		pop	{r4, r5, r6, pc}
 293              	.L53:
 294 0042 6FF00200 		mvn	r0, #2
 295 0046 70BD     		pop	{r4, r5, r6, pc}
 296              	.L56:
 297 0048 3046     		mov	r0, r6
 298 004a FFF7FEFF 		bl	_Z5closeh
 299 004e 6FF00300 		mvn	r0, #3
 300 0052 70BD     		pop	{r4, r5, r6, pc}
 301              		.size	_Z6listenh, .-_Z6listenh
 302              		.section	.text._Z7connecthPht,"ax",%progbits
 303              		.align	1
 304              		.p2align 2,,3
 305              		.global	_Z7connecthPht
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu fpv4-sp-d16
 310              		.type	_Z7connecthPht, %function
 311              	_Z7connecthPht:
 312              		@ args = 0, pretend = 0, frame = 0
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 315 0004 4FF00408 		mov	r8, #4
 316 0008 0124     		movs	r4, #1
 317 000a 18FB0044 		smlabb	r4, r8, r0, r4
 318 000e E400     		lsls	r4, r4, #3
 319 0010 0746     		mov	r7, r0
 320 0012 2046     		mov	r0, r4
 321 0014 0E46     		mov	r6, r1
 322 0016 9146     		mov	r9, r2
 323 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 324 001c 00F00F00 		and	r0, r0, #15
 325 0020 0128     		cmp	r0, #1
 326 0022 56D1     		bne	.L61
 327 0024 04F54075 		add	r5, r4, #768
 328 0028 2846     		mov	r0, r5
 329 002a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 330 002e 1328     		cmp	r0, #19
 331 0030 52D1     		bne	.L62
 332 0032 3078     		ldrb	r0, [r6]	@ zero_extendqisi2
 333 0034 7178     		ldrb	r1, [r6, #1]	@ zero_extendqisi2
 334 0036 B278     		ldrb	r2, [r6, #2]	@ zero_extendqisi2
 335 0038 F378     		ldrb	r3, [r6, #3]	@ zero_extendqisi2
 336 003a 01EB0021 		add	r1, r1, r0, lsl #8
 337 003e 02EB0122 		add	r2, r2, r1, lsl #8
 338 0042 013B     		subs	r3, r3, #1
 339 0044 03EB0223 		add	r3, r3, r2, lsl #8
 340 0048 0333     		adds	r3, r3, #3
 341 004a 4BD8     		bhi	.L63
 342 004c B9F1000F 		cmp	r9, #0
ARM GAS  /tmp/ccl3QAwE.s 			page 7


 343 0050 45D0     		beq	.L64
 344 0052 4246     		mov	r2, r8
 345 0054 3146     		mov	r1, r6
 346 0056 04F54060 		add	r0, r4, #3072
 347 005a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 348 005e 4FEA1921 		lsr	r1, r9, #8
 349 0062 04F58050 		add	r0, r4, #4096
 350 0066 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 351 006a 5FFA89F1 		uxtb	r1, r9
 352 006e 04F58850 		add	r0, r4, #4352
 353 0072 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 354 0076 3846     		mov	r0, r7
 355 0078 4146     		mov	r1, r8
 356 007a FFF7FEFF 		bl	_Z11ExecCommandhh
 357 007e 1B4B     		ldr	r3, .L72
 358 0080 1B88     		ldrh	r3, [r3]
 359 0082 43FA07F7 		asr	r7, r3, r7
 360 0086 FB07     		lsls	r3, r7, #31
 361 0088 14D4     		bmi	.L65
 362 008a 04F50074 		add	r4, r4, #512
 363 008e 08E0     		b	.L60
 364              	.L71:
 365 0090 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 366 0094 10F0080F 		tst	r0, #8
 367 0098 2846     		mov	r0, r5
 368 009a 0ED1     		bne	.L69
 369 009c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 370 00a0 98B1     		cbz	r0, .L70
 371              	.L60:
 372 00a2 2846     		mov	r0, r5
 373 00a4 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 374 00a8 1728     		cmp	r0, #23
 375 00aa 2046     		mov	r0, r4
 376 00ac F0D1     		bne	.L71
 377 00ae 0120     		movs	r0, #1
 378 00b0 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 379              	.L65:
 380 00b4 0020     		movs	r0, #0
 381              	.L58:
 382 00b6 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 383              	.L69:
 384 00ba 2046     		mov	r0, r4
 385 00bc 0821     		movs	r1, #8
 386 00be FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 387 00c2 6FF00C00 		mvn	r0, #12
 388 00c6 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 389              	.L70:
 390 00ca 6FF00300 		mvn	r0, #3
 391 00ce BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 392              	.L61:
 393 00d2 6FF00400 		mvn	r0, #4
 394 00d6 EEE7     		b	.L58
 395              	.L62:
 396 00d8 6FF00200 		mvn	r0, #2
 397 00dc EBE7     		b	.L58
 398              	.L64:
 399 00de 6FF00A00 		mvn	r0, #10
ARM GAS  /tmp/ccl3QAwE.s 			page 8


 400 00e2 E8E7     		b	.L58
 401              	.L63:
 402 00e4 6FF00B00 		mvn	r0, #11
 403 00e8 E5E7     		b	.L58
 404              	.L73:
 405 00ea 00BF     		.align	2
 406              	.L72:
 407 00ec 00000000 		.word	.LANCHOR1
 408              		.size	_Z7connecthPht, .-_Z7connecthPht
 409              		.section	.text._Z16disconnectNoWaith,"ax",%progbits
 410              		.align	1
 411              		.p2align 2,,3
 412              		.global	_Z16disconnectNoWaith
 413              		.syntax unified
 414              		.thumb
 415              		.thumb_func
 416              		.fpu fpv4-sp-d16
 417              		.type	_Z16disconnectNoWaith, %function
 418              	_Z16disconnectNoWaith:
 419              		@ args = 0, pretend = 0, frame = 0
 420              		@ frame_needed = 0, uses_anonymous_args = 0
 421              		@ link register save eliminated.
 422 0000 0821     		movs	r1, #8
 423 0002 FFF7FEBF 		b	_Z11ExecCommandhh
 424              		.size	_Z16disconnectNoWaith, .-_Z16disconnectNoWaith
 425 0006 00BF     		.section	.text._Z6sendtohPKhtS0_t,"ax",%progbits
 426              		.align	1
 427              		.p2align 2,,3
 428              		.global	_Z6sendtohPKhtS0_t
 429              		.syntax unified
 430              		.thumb
 431              		.thumb_func
 432              		.fpu fpv4-sp-d16
 433              		.type	_Z6sendtohPKhtS0_t, %function
 434              	_Z6sendtohPKhtS0_t:
 435              		@ args = 4, pretend = 0, frame = 0
 436              		@ frame_needed = 0, uses_anonymous_args = 0
 437 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 438 0004 4401     		lsls	r4, r0, #5
 439 0006 0834     		adds	r4, r4, #8
 440 0008 0646     		mov	r6, r0
 441 000a 2046     		mov	r0, r4
 442 000c 8846     		mov	r8, r1
 443 000e 9146     		mov	r9, r2
 444 0010 1D46     		mov	r5, r3
 445 0012 BDF82070 		ldrh	r7, [sp, #32]
 446 0016 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 447 001a 00F00F00 		and	r0, r0, #15
 448 001e 0228     		cmp	r0, #2
 449 0020 01D0     		beq	.L77
 450 0022 0428     		cmp	r0, #4
 451 0024 52D1     		bne	.L95
 452              	.L77:
 453 0026 B9F1000F 		cmp	r9, #0
 454 002a 58D0     		beq	.L80
 455 002c 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 456 002e 6978     		ldrb	r1, [r5, #1]	@ zero_extendqisi2
ARM GAS  /tmp/ccl3QAwE.s 			page 9


 457 0030 AA78     		ldrb	r2, [r5, #2]	@ zero_extendqisi2
 458 0032 01EB0321 		add	r1, r1, r3, lsl #8
 459 0036 EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 460 0038 02EB0122 		add	r2, r2, r1, lsl #8
 461 003c 03EB0223 		add	r3, r3, r2, lsl #8
 462 0040 002B     		cmp	r3, #0
 463 0042 4FD0     		beq	.L81
 464 0044 002F     		cmp	r7, #0
 465 0046 44D0     		beq	.L82
 466 0048 04F5407A 		add	r10, r4, #768
 467 004c 5046     		mov	r0, r10
 468 004e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 469 0052 4228     		cmp	r0, #66
 470 0054 01D0     		beq	.L78
 471 0056 2228     		cmp	r0, #34
 472 0058 3ED1     		bne	.L83
 473              	.L78:
 474 005a 0422     		movs	r2, #4
 475 005c 2946     		mov	r1, r5
 476 005e 04F54060 		add	r0, r4, #3072
 477 0062 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 478 0066 04F58050 		add	r0, r4, #4096
 479 006a 390A     		lsrs	r1, r7, #8
 480 006c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 481 0070 F9B2     		uxtb	r1, r7
 482 0072 04F58850 		add	r0, r4, #4352
 483 0076 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 484 007a 04F5F850 		add	r0, r4, #7936
 485 007e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 486 0082 8402     		lsls	r4, r0, #10
 487 0084 A4B2     		uxth	r4, r4
 488 0086 4C45     		cmp	r4, r9
 489 0088 3046     		mov	r0, r6
 490 008a 28BF     		it	cs
 491 008c 4C46     		movcs	r4, r9
 492 008e FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 493 0092 0546     		mov	r5, r0
 494 0094 5046     		mov	r0, r10
 495 0096 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 496 009a 30B3     		cbz	r0, .L84
 497 009c A542     		cmp	r5, r4
 498 009e 02D2     		bcs	.L97
 499 00a0 0020     		movs	r0, #0
 500              	.L75:
 501 00a2 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 502              	.L97:
 503 00a6 2246     		mov	r2, r4
 504 00a8 4146     		mov	r1, r8
 505 00aa 3046     		mov	r0, r6
 506 00ac FFF7FEFF 		bl	_Z13wiz_send_datahPKht
 507 00b0 3046     		mov	r0, r6
 508 00b2 2021     		movs	r1, #32
 509 00b4 FFF7FEFF 		bl	_Z11ExecCommandhh
 510 00b8 0D4A     		ldr	r2, .L98
 511 00ba 0123     		movs	r3, #1
 512 00bc 1188     		ldrh	r1, [r2]
 513 00be 03FA06F6 		lsl	r6, r3, r6
ARM GAS  /tmp/ccl3QAwE.s 			page 10


 514 00c2 0E43     		orrs	r6, r6, r1
 515 00c4 2046     		mov	r0, r4
 516 00c6 1680     		strh	r6, [r2]	@ movhi
 517 00c8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 518              	.L95:
 519 00cc 6FF00400 		mvn	r0, #4
 520 00d0 E7E7     		b	.L75
 521              	.L82:
 522 00d2 6FF00A00 		mvn	r0, #10
 523 00d6 E4E7     		b	.L75
 524              	.L83:
 525 00d8 6FF00600 		mvn	r0, #6
 526 00dc E1E7     		b	.L75
 527              	.L80:
 528 00de 6FF00D00 		mvn	r0, #13
 529 00e2 DEE7     		b	.L75
 530              	.L81:
 531 00e4 6FF00B00 		mvn	r0, #11
 532 00e8 DBE7     		b	.L75
 533              	.L84:
 534 00ea 6FF00300 		mvn	r0, #3
 535 00ee D8E7     		b	.L75
 536              	.L99:
 537              		.align	2
 538              	.L98:
 539 00f0 00000000 		.word	.LANCHOR0
 540              		.size	_Z6sendtohPKhtS0_t, .-_Z6sendtohPKhtS0_t
 541              		.section	.text._Z17CheckSendCompleteh,"ax",%progbits
 542              		.align	1
 543              		.p2align 2,,3
 544              		.global	_Z17CheckSendCompleteh
 545              		.syntax unified
 546              		.thumb
 547              		.thumb_func
 548              		.fpu fpv4-sp-d16
 549              		.type	_Z17CheckSendCompleteh, %function
 550              	_Z17CheckSendCompleteh:
 551              		@ args = 0, pretend = 0, frame = 0
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553 0000 70B5     		push	{r4, r5, r6, lr}
 554 0002 0126     		movs	r6, #1
 555 0004 06EB8004 		add	r4, r6, r0, lsl #2
 556 0008 E400     		lsls	r4, r4, #3
 557 000a 04F50074 		add	r4, r4, #512
 558 000e 0546     		mov	r5, r0
 559 0010 2046     		mov	r0, r4
 560 0012 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 561 0016 C306     		lsls	r3, r0, #27
 562 0018 03D4     		bmi	.L105
 563 001a 10F00800 		ands	r0, r0, #8
 564 001e 0DD1     		bne	.L106
 565 0020 70BD     		pop	{r4, r5, r6, pc}
 566              	.L105:
 567 0022 2046     		mov	r0, r4
 568 0024 1021     		movs	r1, #16
 569 0026 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 570 002a 0B4A     		ldr	r2, .L107
ARM GAS  /tmp/ccl3QAwE.s 			page 11


 571 002c 1388     		ldrh	r3, [r2]
 572 002e 06FA05F5 		lsl	r5, r6, r5
 573 0032 23EA0505 		bic	r5, r3, r5
 574 0036 3046     		mov	r0, r6
 575 0038 1580     		strh	r5, [r2]	@ movhi
 576 003a 70BD     		pop	{r4, r5, r6, pc}
 577              	.L106:
 578 003c 2046     		mov	r0, r4
 579 003e 0821     		movs	r1, #8
 580 0040 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 581 0044 044A     		ldr	r2, .L107
 582 0046 1388     		ldrh	r3, [r2]
 583 0048 06FA05F0 		lsl	r0, r6, r5
 584 004c 23EA0000 		bic	r0, r3, r0
 585 0050 1080     		strh	r0, [r2]	@ movhi
 586 0052 6FF00C00 		mvn	r0, #12
 587 0056 70BD     		pop	{r4, r5, r6, pc}
 588              	.L108:
 589              		.align	2
 590              	.L107:
 591 0058 00000000 		.word	.LANCHOR0
 592              		.size	_Z17CheckSendCompleteh, .-_Z17CheckSendCompleteh
 593              		.section	.text._Z8recvfromhPhtS_Pt,"ax",%progbits
 594              		.align	1
 595              		.p2align 2,,3
 596              		.global	_Z8recvfromhPhtS_Pt
 597              		.syntax unified
 598              		.thumb
 599              		.thumb_func
 600              		.fpu fpv4-sp-d16
 601              		.type	_Z8recvfromhPhtS_Pt, %function
 602              	_Z8recvfromhPhtS_Pt:
 603              		@ args = 4, pretend = 0, frame = 16
 604              		@ frame_needed = 0, uses_anonymous_args = 0
 605 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 606 0004 4601     		lsls	r6, r0, #5
 607 0006 85B0     		sub	sp, sp, #20
 608 0008 0836     		adds	r6, r6, #8
 609 000a 0546     		mov	r5, r0
 610 000c 3046     		mov	r0, r6
 611 000e 0193     		str	r3, [sp, #4]
 612 0010 0091     		str	r1, [sp]
 613 0012 9346     		mov	fp, r2
 614 0014 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 615 0018 00F00F03 		and	r3, r0, #15
 616 001c 022B     		cmp	r3, #2
 617 001e 8046     		mov	r8, r0
 618 0020 02D0     		beq	.L111
 619 0022 042B     		cmp	r3, #4
 620 0024 40F0C080 		bne	.L147
 621              	.L111:
 622 0028 BBF1000F 		cmp	fp, #0
 623 002c 00F0BF80 		beq	.L128
 624 0030 DFF890A1 		ldr	r10, .L160+4
 625 0034 3AF81540 		ldrh	r4, [r10, r5, lsl #1]
 626 0038 002C     		cmp	r4, #0
 627 003a 3FD1     		bne	.L112
ARM GAS  /tmp/ccl3QAwE.s 			page 12


 628 003c 2846     		mov	r0, r5
 629 003e FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 630 0042 06F54076 		add	r6, r6, #768
 631 0046 0127     		movs	r7, #1
 632 0048 0446     		mov	r4, r0
 633 004a 3046     		mov	r0, r6
 634 004c DFF87891 		ldr	r9, .L160+8
 635 0050 AF40     		lsls	r7, r7, r5
 636 0052 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 637 0056 0028     		cmp	r0, #0
 638 0058 4DD0     		beq	.L129
 639              	.L158:
 640 005a B9F80030 		ldrh	r3, [r9]
 641 005e 3B42     		tst	r3, r7
 642 0060 3ED0     		beq	.L113
 643 0062 002C     		cmp	r4, #0
 644 0064 00F09C80 		beq	.L156
 645              	.L114:
 646 0068 08F00708 		and	r8, r8, #7
 647 006c B8F1020F 		cmp	r8, #2
 648 0070 66D0     		beq	.L117
 649 0072 B8F1040F 		cmp	r8, #4
 650 0076 40F09580 		bne	.L157
 651 007a 3AF81540 		ldrh	r4, [r10, r5, lsl #1]
 652              	.L121:
 653 007e 002C     		cmp	r4, #0
 654 0080 44D0     		beq	.L150
 655              	.L154:
 656 0082 4F4E     		ldr	r6, .L160
 657              	.L122:
 658 0084 0099     		ldr	r1, [sp]
 659 0086 5C45     		cmp	r4, fp
 660 0088 28BF     		it	cs
 661 008a 5C46     		movcs	r4, fp
 662 008c 2246     		mov	r2, r4
 663 008e 2846     		mov	r0, r5
 664 0090 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 665 0094 2746     		mov	r7, r4
 666              	.L120:
 667 0096 4021     		movs	r1, #64
 668 0098 2846     		mov	r0, r5
 669 009a FFF7FEFF 		bl	_Z11ExecCommandhh
 670 009e 3AF81530 		ldrh	r3, [r10, r5, lsl #1]
 671 00a2 1C1B     		subs	r4, r3, r4
 672 00a4 A4B2     		uxth	r4, r4
 673 00a6 2AF81540 		strh	r4, [r10, r5, lsl #1]	@ movhi
 674 00aa 54B3     		cbz	r4, .L125
 675 00ac 735D     		ldrb	r3, [r6, r5]	@ zero_extendqisi2
 676 00ae 43F00103 		orr	r3, r3, #1
 677 00b2 7355     		strb	r3, [r6, r5]
 678              	.L109:
 679 00b4 3846     		mov	r0, r7
 680 00b6 05B0     		add	sp, sp, #20
 681              		@ sp needed
 682 00b8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 683              	.L112:
 684 00bc 08F00708 		and	r8, r8, #7
ARM GAS  /tmp/ccl3QAwE.s 			page 13


 685 00c0 B8F1020F 		cmp	r8, #2
 686 00c4 DDD0     		beq	.L154
 687 00c6 B8F1040F 		cmp	r8, #4
 688 00ca D8D0     		beq	.L121
 689 00cc 0027     		movs	r7, #0
 690 00ce 3C46     		mov	r4, r7
 691              	.L124:
 692 00d0 2146     		mov	r1, r4
 693 00d2 2846     		mov	r0, r5
 694 00d4 FFF7FEFF 		bl	_Z15wiz_recv_ignoreht
 695 00d8 394E     		ldr	r6, .L160
 696 00da 2AF81540 		strh	r4, [r10, r5, lsl #1]	@ movhi
 697 00de DAE7     		b	.L120
 698              	.L113:
 699 00e0 002C     		cmp	r4, #0
 700 00e2 C1D1     		bne	.L114
 701 00e4 2846     		mov	r0, r5
 702 00e6 FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 703 00ea 0446     		mov	r4, r0
 704 00ec 3046     		mov	r0, r6
 705 00ee FFF7FEFF 		bl	_Z12WIZCHIP_READm
 706 00f2 0028     		cmp	r0, #0
 707 00f4 B1D1     		bne	.L158
 708              	.L129:
 709 00f6 6FF00307 		mvn	r7, #3
 710 00fa 3846     		mov	r0, r7
 711 00fc 05B0     		add	sp, sp, #20
 712              		@ sp needed
 713 00fe BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 714              	.L125:
 715 0102 3846     		mov	r0, r7
 716 0104 7455     		strb	r4, [r6, r5]
 717 0106 05B0     		add	sp, sp, #20
 718              		@ sp needed
 719 0108 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 720              	.L150:
 721 010c 0222     		movs	r2, #2
 722 010e 02A9     		add	r1, sp, #8
 723 0110 2846     		mov	r0, r5
 724 0112 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 725 0116 4021     		movs	r1, #64
 726 0118 2846     		mov	r0, r5
 727 011a FFF7FEFF 		bl	_Z11ExecCommandhh
 728 011e 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 729 0122 9DF80940 		ldrb	r4, [sp, #9]	@ zero_extendqisi2
 730 0126 04EB0324 		add	r4, r4, r3, lsl #8
 731 012a A4B2     		uxth	r4, r4
 732 012c 40F2EA53 		movw	r3, #1514
 733 0130 9C42     		cmp	r4, r3
 734 0132 2AF81540 		strh	r4, [r10, r5, lsl #1]	@ movhi
 735 0136 3DD8     		bhi	.L159
 736 0138 214E     		ldr	r6, .L160
 737 013a 8023     		movs	r3, #128
 738 013c 7355     		strb	r3, [r6, r5]
 739 013e A1E7     		b	.L122
 740              	.L117:
 741 0140 3AF81540 		ldrh	r4, [r10, r5, lsl #1]
ARM GAS  /tmp/ccl3QAwE.s 			page 14


 742 0144 002C     		cmp	r4, #0
 743 0146 9CD1     		bne	.L154
 744 0148 0822     		movs	r2, #8
 745 014a 0DEB0201 		add	r1, sp, r2
 746 014e 2846     		mov	r0, r5
 747 0150 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 748 0154 4021     		movs	r1, #64
 749 0156 2846     		mov	r0, r5
 750 0158 FFF7FEFF 		bl	_Z11ExecCommandhh
 751 015c 9DF80E10 		ldrb	r1, [sp, #14]	@ zero_extendqisi2
 752 0160 9DF80F40 		ldrb	r4, [sp, #15]	@ zero_extendqisi2
 753 0164 9DF80C20 		ldrb	r2, [sp, #12]	@ zero_extendqisi2
 754 0168 9DF80D30 		ldrb	r3, [sp, #13]	@ zero_extendqisi2
 755 016c 144E     		ldr	r6, .L160
 756 016e 04EB0124 		add	r4, r4, r1, lsl #8
 757 0172 0199     		ldr	r1, [sp, #4]
 758 0174 03EB0223 		add	r3, r3, r2, lsl #8
 759 0178 9DF80820 		ldrb	r2, [sp, #8]	@ zero_extendqisi2
 760 017c 0A70     		strb	r2, [r1]
 761 017e 9DF80920 		ldrb	r2, [sp, #9]	@ zero_extendqisi2
 762 0182 4A70     		strb	r2, [r1, #1]
 763 0184 9DF80A20 		ldrb	r2, [sp, #10]	@ zero_extendqisi2
 764 0188 8A70     		strb	r2, [r1, #2]
 765 018a 9DF80B20 		ldrb	r2, [sp, #11]	@ zero_extendqisi2
 766 018e CA70     		strb	r2, [r1, #3]
 767 0190 0E99     		ldr	r1, [sp, #56]
 768 0192 A4B2     		uxth	r4, r4
 769 0194 8022     		movs	r2, #128
 770 0196 0B80     		strh	r3, [r1]	@ movhi
 771 0198 2AF81540 		strh	r4, [r10, r5, lsl #1]	@ movhi
 772 019c 7255     		strb	r2, [r6, r5]
 773 019e 71E7     		b	.L122
 774              	.L156:
 775 01a0 2746     		mov	r7, r4
 776 01a2 87E7     		b	.L109
 777              	.L157:
 778 01a4 2746     		mov	r7, r4
 779 01a6 93E7     		b	.L124
 780              	.L147:
 781 01a8 6FF00407 		mvn	r7, #4
 782 01ac 82E7     		b	.L109
 783              	.L128:
 784 01ae 6FF00D07 		mvn	r7, #13
 785 01b2 7FE7     		b	.L109
 786              	.L159:
 787 01b4 2846     		mov	r0, r5
 788 01b6 FFF7FEFF 		bl	_Z5closeh
 789 01ba 6FF47A77 		mvn	r7, #1000
 790 01be 79E7     		b	.L109
 791              	.L161:
 792              		.align	2
 793              	.L160:
 794 01c0 00000000 		.word	.LANCHOR3
 795 01c4 00000000 		.word	.LANCHOR2
 796 01c8 00000000 		.word	.LANCHOR1
 797              		.size	_Z8recvfromhPhtS_Pt, .-_Z8recvfromhPhtS_Pt
 798              		.section	.text._Z9ctlsocketh12ctlsock_typePv,"ax",%progbits
ARM GAS  /tmp/ccl3QAwE.s 			page 15


 799              		.align	1
 800              		.p2align 2,,3
 801              		.global	_Z9ctlsocketh12ctlsock_typePv
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu fpv4-sp-d16
 806              		.type	_Z9ctlsocketh12ctlsock_typePv, %function
 807              	_Z9ctlsocketh12ctlsock_typePv:
 808              		@ args = 0, pretend = 0, frame = 0
 809              		@ frame_needed = 0, uses_anonymous_args = 0
 810 0000 38B5     		push	{r3, r4, r5, lr}
 811 0002 1546     		mov	r5, r2
 812 0004 0729     		cmp	r1, #7
 813 0006 71D8     		bhi	.L177
 814 0008 DFE801F0 		tbb	[pc, r1]
 815              	.L165:
 816 000c 11       		.byte	(.L164-.L165)/2
 817 000d 53       		.byte	(.L166-.L165)/2
 818 000e 5C       		.byte	(.L167-.L165)/2
 819 000f 20       		.byte	(.L168-.L165)/2
 820 0010 2C       		.byte	(.L169-.L165)/2
 821 0011 39       		.byte	(.L170-.L165)/2
 822 0012 46       		.byte	(.L171-.L165)/2
 823 0013 04       		.byte	(.L172-.L165)/2
 824              		.p2align 1
 825              	.L172:
 826 0014 0124     		movs	r4, #1
 827 0016 04EB8000 		add	r0, r4, r0, lsl #2
 828 001a C000     		lsls	r0, r0, #3
 829 001c 00F53050 		add	r0, r0, #11264
 830 0020 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 831 0024 00F01F00 		and	r0, r0, #31
 832 0028 2870     		strb	r0, [r5]
 833 002a 2046     		mov	r0, r4
 834 002c 38BD     		pop	{r3, r4, r5, pc}
 835              	.L164:
 836 002e 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 837 0030 012B     		cmp	r3, #1
 838 0032 53D0     		beq	.L179
 839 0034 002B     		cmp	r3, #0
 840 0036 59D1     		bne	.L177
 841 0038 2E49     		ldr	r1, .L180
 842 003a 0123     		movs	r3, #1
 843 003c 0A88     		ldrh	r2, [r1]
 844 003e 03FA00F0 		lsl	r0, r3, r0
 845 0042 22EA0000 		bic	r0, r2, r0
 846 0046 0880     		strh	r0, [r1]	@ movhi
 847 0048 1846     		mov	r0, r3
 848 004a 38BD     		pop	{r3, r4, r5, pc}
 849              	.L168:
 850 004c 0124     		movs	r4, #1
 851 004e 04EB8000 		add	r0, r4, r0, lsl #2
 852 0052 C000     		lsls	r0, r0, #3
 853 0054 00F5F050 		add	r0, r0, #7680
 854 0058 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 855 005c 8002     		lsls	r0, r0, #10
ARM GAS  /tmp/ccl3QAwE.s 			page 16


 856 005e 2880     		strh	r0, [r5]	@ movhi
 857 0060 2046     		mov	r0, r4
 858 0062 38BD     		pop	{r3, r4, r5, pc}
 859              	.L169:
 860 0064 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 861 0066 1F29     		cmp	r1, #31
 862 0068 40D8     		bhi	.L177
 863 006a 0124     		movs	r4, #1
 864 006c 04EB8000 		add	r0, r4, r0, lsl #2
 865 0070 C000     		lsls	r0, r0, #3
 866 0072 00F50070 		add	r0, r0, #512
 867 0076 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 868 007a 2046     		mov	r0, r4
 869 007c 38BD     		pop	{r3, r4, r5, pc}
 870              	.L170:
 871 007e 0124     		movs	r4, #1
 872 0080 04EB8000 		add	r0, r4, r0, lsl #2
 873 0084 C000     		lsls	r0, r0, #3
 874 0086 00F50070 		add	r0, r0, #512
 875 008a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 876 008e 00F01F00 		and	r0, r0, #31
 877 0092 2870     		strb	r0, [r5]
 878 0094 2046     		mov	r0, r4
 879 0096 38BD     		pop	{r3, r4, r5, pc}
 880              	.L171:
 881 0098 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 882 009a 1F29     		cmp	r1, #31
 883 009c 26D8     		bhi	.L177
 884 009e 0124     		movs	r4, #1
 885 00a0 04EB8000 		add	r0, r4, r0, lsl #2
 886 00a4 C000     		lsls	r0, r0, #3
 887 00a6 00F53050 		add	r0, r0, #11264
 888 00aa FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 889 00ae 2046     		mov	r0, r4
 890 00b0 38BD     		pop	{r3, r4, r5, pc}
 891              	.L166:
 892 00b2 104B     		ldr	r3, .L180
 893 00b4 1B88     		ldrh	r3, [r3]
 894 00b6 43FA00F0 		asr	r0, r3, r0
 895 00ba 00F00100 		and	r0, r0, #1
 896 00be 1070     		strb	r0, [r2]
 897 00c0 0120     		movs	r0, #1
 898 00c2 38BD     		pop	{r3, r4, r5, pc}
 899              	.L167:
 900 00c4 0124     		movs	r4, #1
 901 00c6 04EB8000 		add	r0, r4, r0, lsl #2
 902 00ca C000     		lsls	r0, r0, #3
 903 00cc 00F5F850 		add	r0, r0, #7936
 904 00d0 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 905 00d4 8002     		lsls	r0, r0, #10
 906 00d6 2880     		strh	r0, [r5]	@ movhi
 907 00d8 2046     		mov	r0, r4
 908 00da 38BD     		pop	{r3, r4, r5, pc}
 909              	.L179:
 910 00dc 0549     		ldr	r1, .L180
 911 00de 0A88     		ldrh	r2, [r1]
 912 00e0 03FA00F0 		lsl	r0, r3, r0
ARM GAS  /tmp/ccl3QAwE.s 			page 17


 913 00e4 0243     		orrs	r2, r2, r0
 914 00e6 0A80     		strh	r2, [r1]	@ movhi
 915 00e8 1846     		mov	r0, r3
 916 00ea 38BD     		pop	{r3, r4, r5, pc}
 917              	.L177:
 918 00ec 6FF00900 		mvn	r0, #9
 919 00f0 38BD     		pop	{r3, r4, r5, pc}
 920              	.L181:
 921 00f2 00BF     		.align	2
 922              	.L180:
 923 00f4 00000000 		.word	.LANCHOR1
 924              		.size	_Z9ctlsocketh12ctlsock_typePv, .-_Z9ctlsocketh12ctlsock_typePv
 925              		.section	.text._Z10setsockopth12sockopt_typePv,"ax",%progbits
 926              		.align	1
 927              		.p2align 2,,3
 928              		.global	_Z10setsockopth12sockopt_typePv
 929              		.syntax unified
 930              		.thumb
 931              		.thumb_func
 932              		.fpu fpv4-sp-d16
 933              		.type	_Z10setsockopth12sockopt_typePv, %function
 934              	_Z10setsockopth12sockopt_typePv:
 935              		@ args = 0, pretend = 0, frame = 8
 936              		@ frame_needed = 0, uses_anonymous_args = 0
 937 0000 70B5     		push	{r4, r5, r6, lr}
 938 0002 0139     		subs	r1, r1, #1
 939 0004 82B0     		sub	sp, sp, #8
 940 0006 0629     		cmp	r1, #6
 941 0008 00F29480 		bhi	.L195
 942 000c DFE801F0 		tbb	[pc, r1]
 943              	.L185:
 944 0010 18       		.byte	(.L184-.L185)/2
 945 0011 24       		.byte	(.L186-.L185)/2
 946 0012 30       		.byte	(.L187-.L185)/2
 947 0013 42       		.byte	(.L188-.L185)/2
 948 0014 50       		.byte	(.L189-.L185)/2
 949 0015 62       		.byte	(.L190-.L185)/2
 950 0016 04       		.byte	(.L191-.L185)/2
 951 0017 00       		.p2align 1
 952              	.L191:
 953 0018 4001     		lsls	r0, r0, #5
 954 001a 00F10804 		add	r4, r0, #8
 955 001e 2046     		mov	r0, r4
 956 0020 0192     		str	r2, [sp, #4]
 957 0022 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 958 0026 00F00F05 		and	r5, r0, #15
 959 002a 012D     		cmp	r5, #1
 960 002c 7CD1     		bne	.L194
 961 002e 019A     		ldr	r2, [sp, #4]
 962 0030 04F53C50 		add	r0, r4, #12032
 963 0034 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 964 0036 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 965 003a 2846     		mov	r0, r5
 966              	.L183:
 967 003c 02B0     		add	sp, sp, #8
 968              		@ sp needed
 969 003e 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  /tmp/ccl3QAwE.s 			page 18


 970              	.L184:
 971 0040 0124     		movs	r4, #1
 972 0042 04EB8003 		add	r3, r4, r0, lsl #2
 973 0046 DB00     		lsls	r3, r3, #3
 974 0048 03F5B050 		add	r0, r3, #5632
 975 004c 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 976 004e FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 977 0052 2046     		mov	r0, r4
 978 0054 02B0     		add	sp, sp, #8
 979              		@ sp needed
 980 0056 70BD     		pop	{r4, r5, r6, pc}
 981              	.L186:
 982 0058 0124     		movs	r4, #1
 983 005a 04EB8003 		add	r3, r4, r0, lsl #2
 984 005e DB00     		lsls	r3, r3, #3
 985 0060 03F5A850 		add	r0, r3, #5376
 986 0064 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 987 0066 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 988 006a 2046     		mov	r0, r4
 989 006c 02B0     		add	sp, sp, #8
 990              		@ sp needed
 991 006e 70BD     		pop	{r4, r5, r6, pc}
 992              	.L187:
 993 0070 0125     		movs	r5, #1
 994 0072 1688     		ldrh	r6, [r2]
 995 0074 05EB8004 		add	r4, r5, r0, lsl #2
 996 0078 E400     		lsls	r4, r4, #3
 997 007a 04F59050 		add	r0, r4, #4608
 998 007e 310A     		lsrs	r1, r6, #8
 999 0080 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1000 0084 04F59850 		add	r0, r4, #4864
 1001 0088 F1B2     		uxtb	r1, r6
 1002 008a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1003 008e 2846     		mov	r0, r5
 1004 0090 02B0     		add	sp, sp, #8
 1005              		@ sp needed
 1006 0092 70BD     		pop	{r4, r5, r6, pc}
 1007              	.L188:
 1008 0094 0425     		movs	r5, #4
 1009 0096 0124     		movs	r4, #1
 1010 0098 15FB0043 		smlabb	r3, r5, r0, r4
 1011 009c DB00     		lsls	r3, r3, #3
 1012 009e 1146     		mov	r1, r2
 1013 00a0 03F54060 		add	r0, r3, #3072
 1014 00a4 2A46     		mov	r2, r5
 1015 00a6 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1016 00aa 2046     		mov	r0, r4
 1017 00ac 02B0     		add	sp, sp, #8
 1018              		@ sp needed
 1019 00ae 70BD     		pop	{r4, r5, r6, pc}
 1020              	.L189:
 1021 00b0 0125     		movs	r5, #1
 1022 00b2 1688     		ldrh	r6, [r2]
 1023 00b4 05EB8004 		add	r4, r5, r0, lsl #2
 1024 00b8 E400     		lsls	r4, r4, #3
 1025 00ba 04F58050 		add	r0, r4, #4096
 1026 00be 310A     		lsrs	r1, r6, #8
ARM GAS  /tmp/ccl3QAwE.s 			page 19


 1027 00c0 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1028 00c4 04F58850 		add	r0, r4, #4352
 1029 00c8 F1B2     		uxtb	r1, r6
 1030 00ca FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1031 00ce 2846     		mov	r0, r5
 1032 00d0 02B0     		add	sp, sp, #8
 1033              		@ sp needed
 1034 00d2 70BD     		pop	{r4, r5, r6, pc}
 1035              	.L190:
 1036 00d4 4401     		lsls	r4, r0, #5
 1037 00d6 0834     		adds	r4, r4, #8
 1038 00d8 2046     		mov	r0, r4
 1039 00da FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1040 00de 00F00F00 		and	r0, r0, #15
 1041 00e2 0128     		cmp	r0, #1
 1042 00e4 20D1     		bne	.L194
 1043 00e6 04F53C50 		add	r0, r4, #12032
 1044 00ea FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1045 00ee F0B9     		cbnz	r0, .L196
 1046 00f0 04F58075 		add	r5, r4, #256
 1047 00f4 2846     		mov	r0, r5
 1048 00f6 2221     		movs	r1, #34
 1049 00f8 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1050 00fc 04F50074 		add	r4, r4, #512
 1051 0100 04E0     		b	.L193
 1052              	.L202:
 1053 0102 2046     		mov	r0, r4
 1054 0104 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1055 0108 0307     		lsls	r3, r0, #28
 1056 010a 06D4     		bmi	.L201
 1057              	.L193:
 1058 010c 2846     		mov	r0, r5
 1059 010e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1060 0112 0028     		cmp	r0, #0
 1061 0114 F5D1     		bne	.L202
 1062 0116 0120     		movs	r0, #1
 1063 0118 90E7     		b	.L183
 1064              	.L201:
 1065 011a 2046     		mov	r0, r4
 1066 011c 0821     		movs	r1, #8
 1067 011e FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1068 0122 6FF00C00 		mvn	r0, #12
 1069 0126 89E7     		b	.L183
 1070              	.L194:
 1071 0128 6FF00400 		mvn	r0, #4
 1072 012c 86E7     		b	.L183
 1073              	.L196:
 1074 012e 6FF00100 		mvn	r0, #1
 1075 0132 83E7     		b	.L183
 1076              	.L195:
 1077 0134 6FF00900 		mvn	r0, #9
 1078 0138 80E7     		b	.L183
 1079              		.size	_Z10setsockopth12sockopt_typePv, .-_Z10setsockopth12sockopt_typePv
 1080 013a 00BF     		.section	.text._Z10getsockopth12sockopt_typePv,"ax",%progbits
 1081              		.align	1
 1082              		.p2align 2,,3
 1083              		.global	_Z10getsockopth12sockopt_typePv
ARM GAS  /tmp/ccl3QAwE.s 			page 20


 1084              		.syntax unified
 1085              		.thumb
 1086              		.thumb_func
 1087              		.fpu fpv4-sp-d16
 1088              		.type	_Z10getsockopth12sockopt_typePv, %function
 1089              	_Z10getsockopth12sockopt_typePv:
 1090              		@ args = 0, pretend = 0, frame = 0
 1091              		@ frame_needed = 0, uses_anonymous_args = 0
 1092 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1093 0002 0446     		mov	r4, r0
 1094 0004 1646     		mov	r6, r2
 1095 0006 0C29     		cmp	r1, #12
 1096 0008 00F28F80 		bhi	.L221
 1097 000c DFE801F0 		tbb	[pc, r1]
 1098              	.L206:
 1099 0010 31       		.byte	(.L205-.L206)/2
 1100 0011 3B       		.byte	(.L207-.L206)/2
 1101 0012 45       		.byte	(.L208-.L206)/2
 1102 0013 4F       		.byte	(.L209-.L206)/2
 1103 0014 5D       		.byte	(.L210-.L206)/2
 1104 0015 68       		.byte	(.L211-.L206)/2
 1105 0016 8D       		.byte	(.L221-.L206)/2
 1106 0017 79       		.byte	(.L212-.L206)/2
 1107 0018 88       		.byte	(.L213-.L206)/2
 1108 0019 07       		.byte	(.L214-.L206)/2
 1109 001a 0E       		.byte	(.L215-.L206)/2
 1110 001b 18       		.byte	(.L216-.L206)/2
 1111 001c 25       		.byte	(.L217-.L206)/2
 1112 001d 00       		.p2align 1
 1113              	.L214:
 1114 001e 2046     		mov	r0, r4
 1115 0020 FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 1116 0024 0125     		movs	r5, #1
 1117 0026 3080     		strh	r0, [r6]	@ movhi
 1118              	.L204:
 1119 0028 2846     		mov	r0, r5
 1120 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1121              	.L215:
 1122 002c 0125     		movs	r5, #1
 1123 002e 05EB8000 		add	r0, r5, r0, lsl #2
 1124 0032 C000     		lsls	r0, r0, #3
 1125 0034 00F54070 		add	r0, r0, #768
 1126 0038 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1127 003c 3070     		strb	r0, [r6]
 1128 003e F3E7     		b	.L204
 1129              	.L216:
 1130 0040 0125     		movs	r5, #1
 1131 0042 05EB8000 		add	r0, r5, r0, lsl #2
 1132 0046 C000     		lsls	r0, r0, #3
 1133 0048 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1134 004c A842     		cmp	r0, r5
 1135 004e E6D0     		beq	.L214
 1136 0050 394B     		ldr	r3, .L223
 1137 0052 33F81430 		ldrh	r3, [r3, r4, lsl #1]
 1138 0056 3380     		strh	r3, [r6]	@ movhi
 1139 0058 E6E7     		b	.L204
 1140              	.L217:
ARM GAS  /tmp/ccl3QAwE.s 			page 21


 1141 005a 4001     		lsls	r0, r0, #5
 1142 005c 0830     		adds	r0, r0, #8
 1143 005e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1144 0062 00F00F05 		and	r5, r0, #15
 1145 0066 012D     		cmp	r5, #1
 1146 0068 62D1     		bne	.L220
 1147 006a 344A     		ldr	r2, .L223+4
 1148 006c 125D     		ldrb	r2, [r2, r4]	@ zero_extendqisi2
 1149 006e 3270     		strb	r2, [r6]
 1150 0070 DAE7     		b	.L204
 1151              	.L205:
 1152 0072 0125     		movs	r5, #1
 1153 0074 05EB8000 		add	r0, r5, r0, lsl #2
 1154 0078 C000     		lsls	r0, r0, #3
 1155 007a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1156 007e 20F00F00 		bic	r0, r0, #15
 1157 0082 3070     		strb	r0, [r6]
 1158 0084 D0E7     		b	.L204
 1159              	.L207:
 1160 0086 0125     		movs	r5, #1
 1161 0088 05EB8000 		add	r0, r5, r0, lsl #2
 1162 008c C000     		lsls	r0, r0, #3
 1163 008e 00F5B050 		add	r0, r0, #5632
 1164 0092 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1165 0096 3070     		strb	r0, [r6]
 1166 0098 C6E7     		b	.L204
 1167              	.L208:
 1168 009a 0125     		movs	r5, #1
 1169 009c 05EB8000 		add	r0, r5, r0, lsl #2
 1170 00a0 C000     		lsls	r0, r0, #3
 1171 00a2 00F5A850 		add	r0, r0, #5376
 1172 00a6 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1173 00aa 3070     		strb	r0, [r6]
 1174 00ac BCE7     		b	.L204
 1175              	.L209:
 1176 00ae 0125     		movs	r5, #1
 1177 00b0 05EB8004 		add	r4, r5, r0, lsl #2
 1178 00b4 E400     		lsls	r4, r4, #3
 1179 00b6 04F59050 		add	r0, r4, #4608
 1180 00ba FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1181 00be 04F59850 		add	r0, r4, #4864
 1182 00c2 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1183 00c6 3070     		strb	r0, [r6]
 1184 00c8 AEE7     		b	.L204
 1185              	.L210:
 1186 00ca 0422     		movs	r2, #4
 1187 00cc 0125     		movs	r5, #1
 1188 00ce 12FB0050 		smlabb	r0, r2, r0, r5
 1189 00d2 C000     		lsls	r0, r0, #3
 1190 00d4 3146     		mov	r1, r6
 1191 00d6 00F54060 		add	r0, r0, #3072
 1192 00da FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 1193 00de A3E7     		b	.L204
 1194              	.L211:
 1195 00e0 0125     		movs	r5, #1
 1196 00e2 05EB8004 		add	r4, r5, r0, lsl #2
 1197 00e6 E400     		lsls	r4, r4, #3
ARM GAS  /tmp/ccl3QAwE.s 			page 22


 1198 00e8 04F58050 		add	r0, r4, #4096
 1199 00ec FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1200 00f0 0746     		mov	r7, r0
 1201 00f2 04F58850 		add	r0, r4, #4352
 1202 00f6 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1203 00fa 00EB0720 		add	r0, r0, r7, lsl #8
 1204 00fe 3080     		strh	r0, [r6]	@ movhi
 1205 0100 92E7     		b	.L204
 1206              	.L212:
 1207 0102 4401     		lsls	r4, r0, #5
 1208 0104 0834     		adds	r4, r4, #8
 1209 0106 2046     		mov	r0, r4
 1210 0108 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1211 010c 00F00F05 		and	r5, r0, #15
 1212 0110 012D     		cmp	r5, #1
 1213 0112 0DD1     		bne	.L220
 1214 0114 04F53C50 		add	r0, r4, #12032
 1215 0118 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1216 011c 3080     		strh	r0, [r6]	@ movhi
 1217 011e 83E7     		b	.L204
 1218              	.L213:
 1219 0120 FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 1220 0124 0125     		movs	r5, #1
 1221 0126 3080     		strh	r0, [r6]	@ movhi
 1222 0128 7EE7     		b	.L204
 1223              	.L221:
 1224 012a 6FF00105 		mvn	r5, #1
 1225 012e 7BE7     		b	.L204
 1226              	.L220:
 1227 0130 6FF00405 		mvn	r5, #4
 1228 0134 78E7     		b	.L204
 1229              	.L224:
 1230 0136 00BF     		.align	2
 1231              	.L223:
 1232 0138 00000000 		.word	.LANCHOR2
 1233 013c 00000000 		.word	.LANCHOR3
 1234              		.size	_Z10getsockopth12sockopt_typePv, .-_Z10getsockopth12sockopt_typePv
 1235              		.global	sock_pack_info
 1236              		.section	.bss._ZL12sock_io_mode,"aw",%nobits
 1237              		.align	1
 1238              		.set	.LANCHOR1,. + 0
 1239              		.type	_ZL12sock_io_mode, %object
 1240              		.size	_ZL12sock_io_mode, 2
 1241              	_ZL12sock_io_mode:
 1242 0000 0000     		.space	2
 1243              		.section	.bss._ZL15sock_is_sending,"aw",%nobits
 1244              		.align	1
 1245              		.set	.LANCHOR0,. + 0
 1246              		.type	_ZL15sock_is_sending, %object
 1247              		.size	_ZL15sock_is_sending, 2
 1248              	_ZL15sock_is_sending:
 1249 0000 0000     		.space	2
 1250              		.section	.bss._ZL18sock_remained_size,"aw",%nobits
 1251              		.align	2
 1252              		.set	.LANCHOR2,. + 0
 1253              		.type	_ZL18sock_remained_size, %object
 1254              		.size	_ZL18sock_remained_size, 16
ARM GAS  /tmp/ccl3QAwE.s 			page 23


 1255              	_ZL18sock_remained_size:
 1256 0000 00000000 		.space	16
 1256      00000000 
 1256      00000000 
 1256      00000000 
 1257              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1258              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1259              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1260              	_ZL28cpu_irq_prev_interrupt_state:
 1261 0000 00       		.space	1
 1262              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1263              		.align	2
 1264              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1265              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1266              	_ZL32cpu_irq_critical_section_counter:
 1267 0000 00000000 		.space	4
 1268              		.section	.bss.sock_pack_info,"aw",%nobits
 1269              		.align	2
 1270              		.set	.LANCHOR3,. + 0
 1271              		.type	sock_pack_info, %object
 1272              		.size	sock_pack_info, 8
 1273              	sock_pack_info:
 1274 0000 00000000 		.space	8
 1274      00000000 
 1275              		.section	.data._ZL13sock_any_port,"aw",%progbits
 1276              		.align	1
 1277              		.set	.LANCHOR4,. + 0
 1278              		.type	_ZL13sock_any_port, %object
 1279              		.size	_ZL13sock_any_port, 2
 1280              	_ZL13sock_any_port:
 1281 0000 00C0     		.short	-16384
 1282              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
