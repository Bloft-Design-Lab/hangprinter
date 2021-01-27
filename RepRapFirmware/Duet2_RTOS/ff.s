ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 1


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
  13              		.file	"ff.c"
  14              		.text
  15              		.section	.text.get_fileinfo,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	get_fileinfo, %function
  23              	get_fileinfo:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  27 0002 0369     		ldr	r3, [r0, #16]
  28 0004 01F10902 		add	r2, r1, #9
  29 0008 002B     		cmp	r3, #0
  30 000a 45D0     		beq	.L2
  31 000c 4669     		ldr	r6, [r0, #20]
  32 000e 377B     		ldrb	r7, [r6, #12]	@ zero_extendqisi2
  33 0010 751E     		subs	r5, r6, #1
  34 0012 07F0080E 		and	lr, r7, #8
  35 0016 01F11104 		add	r4, r1, #17
  36              	.L5:
  37 001a 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
  38 001e 202B     		cmp	r3, #32
  39 0020 63D0     		beq	.L12
  40 0022 052B     		cmp	r3, #5
  41 0024 5FD0     		beq	.L13
  42 0026 A3F1410C 		sub	ip, r3, #65
  43 002a BEF1000F 		cmp	lr, #0
  44 002e 06D0     		beq	.L4
  45 0030 BCF1190F 		cmp	ip, #25
  46 0034 03F1200C 		add	ip, r3, #32
  47 0038 01D8     		bhi	.L4
  48 003a 5FFA8CF3 		uxtb	r3, ip
  49              	.L4:
  50 003e 02F8013B 		strb	r3, [r2], #1
  51 0042 9442     		cmp	r4, r2
  52 0044 E9D1     		bne	.L5
  53 0046 337A     		ldrb	r3, [r6, #8]	@ zero_extendqisi2
  54 0048 202B     		cmp	r3, #32
  55 004a 2246     		mov	r2, r4
  56 004c 16D0     		beq	.L6
  57              	.L47:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 2


  58 004e 2E23     		movs	r3, #46
  59 0050 02F8043B 		strb	r3, [r2], #4
  60 0054 07F01007 		and	r7, r7, #16
  61 0058 0134     		adds	r4, r4, #1
  62 005a F51D     		adds	r5, r6, #7
  63              	.L8:
  64 005c 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
  65 0060 202B     		cmp	r3, #32
  66 0062 A3F1410C 		sub	ip, r3, #65
  67 0066 46D0     		beq	.L15
  68 0068 27B1     		cbz	r7, .L7
  69 006a BCF1190F 		cmp	ip, #25
  70 006e 9CBF     		itt	ls
  71 0070 2033     		addls	r3, r3, #32
  72 0072 DBB2     		uxtbls	r3, r3
  73              	.L7:
  74 0074 04F8013B 		strb	r3, [r4], #1
  75 0078 A242     		cmp	r2, r4
  76 007a EFD1     		bne	.L8
  77              	.L6:
  78 007c F37A     		ldrb	r3, [r6, #11]	@ zero_extendqisi2
  79 007e 0B72     		strb	r3, [r1, #8]
  80 0080 F369     		ldr	r3, [r6, #28]	@ unaligned
  81 0082 0B60     		str	r3, [r1]
  82 0084 747E     		ldrb	r4, [r6, #25]	@ zero_extendqisi2
  83 0086 337E     		ldrb	r3, [r6, #24]	@ zero_extendqisi2
  84 0088 43EA0423 		orr	r3, r3, r4, lsl #8
  85 008c 8B80     		strh	r3, [r1, #4]	@ movhi
  86 008e F47D     		ldrb	r4, [r6, #23]	@ zero_extendqisi2
  87 0090 B37D     		ldrb	r3, [r6, #22]	@ zero_extendqisi2
  88 0092 43EA0423 		orr	r3, r3, r4, lsl #8
  89 0096 CB80     		strh	r3, [r1, #6]	@ movhi
  90              	.L2:
  91 0098 0025     		movs	r5, #0
  92 009a 1570     		strb	r5, [r2]
  93 009c 8E69     		ldr	r6, [r1, #24]
  94 009e 0EB3     		cbz	r6, .L1
  95 00a0 CB69     		ldr	r3, [r1, #28]
  96 00a2 FBB1     		cbz	r3, .L1
  97 00a4 0369     		ldr	r3, [r0, #16]
  98 00a6 DBB1     		cbz	r3, .L10
  99 00a8 028C     		ldrh	r2, [r0, #32]
 100 00aa 4FF6FF73 		movw	r3, #65535
 101 00ae 9A42     		cmp	r2, r3
 102 00b0 16D0     		beq	.L10
 103 00b2 C769     		ldr	r7, [r0, #28]
 104 00b4 3888     		ldrh	r0, [r7]
 105 00b6 98B1     		cbz	r0, .L10
 106 00b8 0C46     		mov	r4, r1
 107 00ba 0CE0     		b	.L11
 108              	.L46:
 109 00bc E369     		ldr	r3, [r4, #28]
 110 00be 013B     		subs	r3, r3, #1
 111 00c0 AB42     		cmp	r3, r5
 112 00c2 05F10105 		add	r5, r5, #1
 113 00c6 06EB0503 		add	r3, r6, r5
 114 00ca 09D9     		bls	.L10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 3


 115 00cc 03F8010C 		strb	r0, [r3, #-1]
 116 00d0 37F81500 		ldrh	r0, [r7, r5, lsl #1]
 117 00d4 88B1     		cbz	r0, .L45
 118              	.L11:
 119 00d6 0021     		movs	r1, #0
 120 00d8 FFF7FEFF 		bl	ff_convert
 121 00dc 0028     		cmp	r0, #0
 122 00de EDD1     		bne	.L46
 123              	.L10:
 124 00e0 0023     		movs	r3, #0
 125 00e2 3370     		strb	r3, [r6]
 126              	.L1:
 127 00e4 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 128              	.L13:
 129 00e6 E523     		movs	r3, #229
 130 00e8 A9E7     		b	.L4
 131              	.L12:
 132 00ea 337A     		ldrb	r3, [r6, #8]	@ zero_extendqisi2
 133 00ec 1446     		mov	r4, r2
 134 00ee 202B     		cmp	r3, #32
 135 00f0 2246     		mov	r2, r4
 136 00f2 ACD1     		bne	.L47
 137 00f4 C2E7     		b	.L6
 138              	.L15:
 139 00f6 2246     		mov	r2, r4
 140 00f8 C0E7     		b	.L6
 141              	.L45:
 142 00fa 1E46     		mov	r6, r3
 143 00fc F0E7     		b	.L10
 144              		.size	get_fileinfo, .-get_fileinfo
 145 00fe 00BF     		.section	.text.check_fs,"ax",%progbits
 146              		.align	1
 147              		.p2align 2,,3
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	check_fs, %function
 153              	check_fs:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156 0000 10B5     		push	{r4, lr}
 157 0002 0446     		mov	r4, r0
 158 0004 0A46     		mov	r2, r1
 159 0006 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 160 0008 04F13401 		add	r1, r4, #52
 161 000c 0123     		movs	r3, #1
 162 000e FFF7FEFF 		bl	disk_read
 163 0012 D0B9     		cbnz	r0, .L50
 164 0014 94F83312 		ldrb	r1, [r4, #563]	@ zero_extendqisi2
 165 0018 94F83232 		ldrb	r3, [r4, #562]	@ zero_extendqisi2
 166 001c 4AF65522 		movw	r2, #43605
 167 0020 43EA0123 		orr	r3, r3, r1, lsl #8
 168 0024 9342     		cmp	r3, r2
 169 0026 0ED1     		bne	.L51
 170 0028 D4F86A30 		ldr	r3, [r4, #106]	@ unaligned
 171 002c 084A     		ldr	r2, .L54
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 4


 172 002e 23F07F43 		bic	r3, r3, #-16777216
 173 0032 9342     		cmp	r3, r2
 174 0034 06D0     		beq	.L49
 175 0036 D4F88600 		ldr	r0, [r4, #134]	@ unaligned
 176 003a 20F07F40 		bic	r0, r0, #-16777216
 177 003e 801A     		subs	r0, r0, r2
 178 0040 18BF     		it	ne
 179 0042 0120     		movne	r0, #1
 180              	.L49:
 181 0044 10BD     		pop	{r4, pc}
 182              	.L51:
 183 0046 0220     		movs	r0, #2
 184 0048 10BD     		pop	{r4, pc}
 185              	.L50:
 186 004a 0320     		movs	r0, #3
 187 004c 10BD     		pop	{r4, pc}
 188              	.L55:
 189 004e 00BF     		.align	2
 190              	.L54:
 191 0050 46415400 		.word	5521734
 192              		.size	check_fs, .-check_fs
 193              		.section	.text.chk_mounted,"ax",%progbits
 194              		.align	1
 195              		.p2align 2,,3
 196              		.syntax unified
 197              		.thumb
 198              		.thumb_func
 199              		.fpu fpv4-sp-d16
 200              		.type	chk_mounted, %function
 201              	chk_mounted:
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 0, uses_anonymous_args = 0
 204 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 205 0004 0368     		ldr	r3, [r0]
 206 0006 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 207 0008 303C     		subs	r4, r4, #48
 208 000a 092C     		cmp	r4, #9
 209 000c 03D8     		bhi	.L80
 210 000e 5D78     		ldrb	r5, [r3, #1]	@ zero_extendqisi2
 211 0010 3A2D     		cmp	r5, #58
 212 0012 00F0CE80 		beq	.L117
 213              	.L80:
 214 0016 0024     		movs	r4, #0
 215              	.L57:
 216 0018 8D4B     		ldr	r3, .L121
 217 001a 53F82450 		ldr	r5, [r3, r4, lsl #2]
 218 001e 0D60     		str	r5, [r1]
 219 0020 002D     		cmp	r5, #0
 220 0022 00F0C380 		beq	.L82
 221 0026 E868     		ldr	r0, [r5, #12]
 222 0028 1646     		mov	r6, r2
 223 002a FFF7FEFF 		bl	ff_req_grant
 224 002e 70B1     		cbz	r0, .L83
 225 0030 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 226 0032 7BB1     		cbz	r3, .L59
 227 0034 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 228 0036 FFF7FEFF 		bl	disk_status
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 5


 229 003a C307     		lsls	r3, r0, #31
 230 003c 0AD4     		bmi	.L59
 231 003e 002E     		cmp	r6, #0
 232 0040 00F0C980 		beq	.L84
 233 0044 10F00400 		ands	r0, r0, #4
 234 0048 02D0     		beq	.L111
 235              	.L61:
 236 004a 0A20     		movs	r0, #10
 237 004c 00E0     		b	.L111
 238              	.L83:
 239 004e 0F20     		movs	r0, #15
 240              	.L111:
 241 0050 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 242              	.L59:
 243 0054 E0B2     		uxtb	r0, r4
 244 0056 0023     		movs	r3, #0
 245 0058 6870     		strb	r0, [r5, #1]
 246 005a 2B70     		strb	r3, [r5]
 247 005c FFF7FEFF 		bl	disk_initialize
 248 0060 C707     		lsls	r7, r0, #31
 249 0062 00F1B380 		bmi	.L86
 250 0066 0EB1     		cbz	r6, .L60
 251 0068 4407     		lsls	r4, r0, #29
 252 006a EED4     		bmi	.L61
 253              	.L60:
 254 006c 0021     		movs	r1, #0
 255 006e 2846     		mov	r0, r5
 256 0070 FFF7FEFF 		bl	check_fs
 257 0074 0128     		cmp	r0, #1
 258 0076 00F0A380 		beq	.L118
 259 007a 0024     		movs	r4, #0
 260              	.L62:
 261 007c 0328     		cmp	r0, #3
 262 007e 00F0A880 		beq	.L88
 263 0082 0028     		cmp	r0, #0
 264 0084 40F09F80 		bne	.L64
 265 0088 95F84020 		ldrb	r2, [r5, #64]	@ zero_extendqisi2
 266 008c 95F83F30 		ldrb	r3, [r5, #63]	@ zero_extendqisi2
 267 0090 43EA0223 		orr	r3, r3, r2, lsl #8
 268 0094 B3F5007F 		cmp	r3, #512
 269 0098 40F09580 		bne	.L64
 270 009c 95F84B20 		ldrb	r2, [r5, #75]	@ zero_extendqisi2
 271 00a0 95F84A30 		ldrb	r3, [r5, #74]	@ zero_extendqisi2
 272 00a4 53EA0223 		orrs	r3, r3, r2, lsl #8
 273 00a8 95F84420 		ldrb	r2, [r5, #68]	@ zero_extendqisi2
 274 00ac 08BF     		it	eq
 275 00ae AB6D     		ldreq	r3, [r5, #88]
 276 00b0 2B62     		str	r3, [r5, #32]
 277 00b2 511E     		subs	r1, r2, #1
 278 00b4 0129     		cmp	r1, #1
 279 00b6 EA70     		strb	r2, [r5, #3]
 280 00b8 00F28580 		bhi	.L64
 281 00bc 95F84110 		ldrb	r1, [r5, #65]	@ zero_extendqisi2
 282 00c0 A970     		strb	r1, [r5, #2]
 283 00c2 0029     		cmp	r1, #0
 284 00c4 7FD0     		beq	.L64
 285 00c6 481E     		subs	r0, r1, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 6


 286 00c8 0842     		tst	r0, r1
 287 00ca 7CD1     		bne	.L64
 288 00cc 95F84600 		ldrb	r0, [r5, #70]	@ zero_extendqisi2
 289 00d0 95F84560 		ldrb	r6, [r5, #69]	@ zero_extendqisi2
 290 00d4 46EA0026 		orr	r6, r6, r0, lsl #8
 291 00d8 3007     		lsls	r0, r6, #28
 292 00da 2E81     		strh	r6, [r5, #8]	@ movhi
 293 00dc 73D1     		bne	.L64
 294 00de 95F84870 		ldrb	r7, [r5, #72]	@ zero_extendqisi2
 295 00e2 95F84700 		ldrb	r0, [r5, #71]	@ zero_extendqisi2
 296 00e6 95F843C0 		ldrb	ip, [r5, #67]	@ zero_extendqisi2
 297 00ea 50EA0720 		orrs	r0, r0, r7, lsl #8
 298 00ee 95F84270 		ldrb	r7, [r5, #66]	@ zero_extendqisi2
 299 00f2 08BF     		it	eq
 300 00f4 686D     		ldreq	r0, [r5, #84]
 301 00f6 57EA0C2C 		orrs	ip, r7, ip, lsl #8
 302 00fa 64D0     		beq	.L64
 303 00fc 03FB02F2 		mul	r2, r3, r2
 304 0100 0CEB1617 		add	r7, ip, r6, lsr #4
 305 0104 1744     		add	r7, r7, r2
 306 0106 B842     		cmp	r0, r7
 307 0108 5DD3     		bcc	.L64
 308 010a C01B     		subs	r0, r0, r7
 309 010c B0FBF1F1 		udiv	r1, r0, r1
 310 0110 0029     		cmp	r1, #0
 311 0112 58D0     		beq	.L64
 312 0114 40F6F57E 		movw	lr, #4085
 313 0118 4FF6F578 		movw	r8, #65525
 314 011c 0CEB0400 		add	r0, ip, r4
 315 0120 2744     		add	r7, r7, r4
 316 0122 7145     		cmp	r1, lr
 317 0124 8CBF     		ite	hi
 318 0126 4FF0020E 		movhi	lr, #2
 319 012a 4FF0010E 		movls	lr, #1
 320 012e 01F1020C 		add	ip, r1, #2
 321 0132 4145     		cmp	r1, r8
 322 0134 C5F81CC0 		str	ip, [r5, #28]
 323 0138 EF62     		str	r7, [r5, #44]
 324 013a 6862     		str	r0, [r5, #36]
 325 013c 54D9     		bls	.L70
 326 013e 002E     		cmp	r6, #0
 327 0140 41D1     		bne	.L64
 328 0142 4FEA8C02 		lsl	r2, ip, #2
 329 0146 02F2FF12 		addw	r2, r2, #511
 330 014a 296E     		ldr	r1, [r5, #96]
 331 014c A962     		str	r1, [r5, #40]
 332 014e B3EB522F 		cmp	r3, r2, lsr #9
 333 0152 38D3     		bcc	.L64
 334 0154 95F86530 		ldrb	r3, [r5, #101]	@ zero_extendqisi2
 335 0158 95F86420 		ldrb	r2, [r5, #100]	@ zero_extendqisi2
 336 015c 2E61     		str	r6, [r5, #16]
 337 015e 42EA0322 		orr	r2, r2, r3, lsl #8
 338 0162 2244     		add	r2, r2, r4
 339 0164 4FF0FF33 		mov	r3, #-1
 340 0168 C5E90532 		strd	r3, r2, [r5, #20]
 341 016c 6E71     		strb	r6, [r5, #5]
 342 016e 0123     		movs	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 7


 343 0170 05F13401 		add	r1, r5, #52
 344 0174 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 345 0176 FFF7FEFF 		bl	disk_read
 346 017a 48B9     		cbnz	r0, .L92
 347 017c 95F83312 		ldrb	r1, [r5, #563]	@ zero_extendqisi2
 348 0180 95F83232 		ldrb	r3, [r5, #562]	@ zero_extendqisi2
 349 0184 4AF65522 		movw	r2, #43605
 350 0188 43EA0123 		orr	r3, r3, r1, lsl #8
 351 018c 9342     		cmp	r3, r2
 352 018e 48D0     		beq	.L119
 353              	.L92:
 354 0190 4FF0030E 		mov	lr, #3
 355              	.L76:
 356 0194 2F4A     		ldr	r2, .L121+4
 357 0196 85F800E0 		strb	lr, [r5]
 358 019a 1388     		ldrh	r3, [r2]
 359 019c 0133     		adds	r3, r3, #1
 360 019e 9BB2     		uxth	r3, r3
 361 01a0 0020     		movs	r0, #0
 362 01a2 1380     		strh	r3, [r2]	@ movhi
 363 01a4 EB80     		strh	r3, [r5, #6]	@ movhi
 364 01a6 2863     		str	r0, [r5, #48]
 365 01a8 2871     		strb	r0, [r5, #4]
 366 01aa 51E7     		b	.L111
 367              	.L82:
 368 01ac 0C20     		movs	r0, #12
 369 01ae BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 370              	.L117:
 371 01b2 0233     		adds	r3, r3, #2
 372 01b4 012C     		cmp	r4, #1
 373 01b6 0360     		str	r3, [r0]
 374 01b8 7FF62EAF 		bls	.L57
 375 01bc 0B20     		movs	r0, #11
 376 01be 47E7     		b	.L111
 377              	.L118:
 378 01c0 95F8F631 		ldrb	r3, [r5, #502]	@ zero_extendqisi2
 379 01c4 4BB9     		cbnz	r3, .L63
 380              	.L64:
 381 01c6 0D20     		movs	r0, #13
 382 01c8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 383              	.L86:
 384 01cc 0320     		movs	r0, #3
 385 01ce BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 386              	.L88:
 387 01d2 0120     		movs	r0, #1
 388 01d4 3CE7     		b	.L111
 389              	.L84:
 390 01d6 3046     		mov	r0, r6
 391 01d8 3AE7     		b	.L111
 392              	.L63:
 393 01da D5F8FA41 		ldr	r4, [r5, #506]	@ unaligned
 394 01de 2846     		mov	r0, r5
 395 01e0 2146     		mov	r1, r4
 396 01e2 FFF7FEFF 		bl	check_fs
 397 01e6 49E7     		b	.L62
 398              	.L70:
 399 01e8 002E     		cmp	r6, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 8


 400 01ea ECD0     		beq	.L64
 401 01ec 1044     		add	r0, r0, r2
 402 01ee BEF1020F 		cmp	lr, #2
 403 01f2 A862     		str	r0, [r5, #40]
 404 01f4 12D0     		beq	.L120
 405 01f6 0CEB4C02 		add	r2, ip, ip, lsl #1
 406 01fa 0CF0010C 		and	ip, ip, #1
 407 01fe 0CEB520C 		add	ip, ip, r2, lsr #1
 408 0202 4FF0010E 		mov	lr, #1
 409              	.L75:
 410 0206 0CF2FF1C 		addw	ip, ip, #511
 411 020a B3EB5C2F 		cmp	r3, ip, lsr #9
 412 020e DAD3     		bcc	.L64
 413 0210 0023     		movs	r3, #0
 414 0212 4FF0FF32 		mov	r2, #-1
 415 0216 C5E90432 		strd	r3, r2, [r5, #16]
 416 021a BBE7     		b	.L76
 417              	.L120:
 418 021c 4FEA4C0C 		lsl	ip, ip, #1
 419 0220 F1E7     		b	.L75
 420              	.L119:
 421 0222 0D4B     		ldr	r3, .L121+8
 422 0224 6A6B     		ldr	r2, [r5, #52]
 423 0226 9A42     		cmp	r2, r3
 424 0228 B2D1     		bne	.L92
 425 022a 03F1FF53 		add	r3, r3, #534773760
 426 022e 03F50053 		add	r3, r3, #8192
 427 0232 D5F81822 		ldr	r2, [r5, #536]
 428 0236 2033     		adds	r3, r3, #32
 429 0238 9A42     		cmp	r2, r3
 430 023a A9D1     		bne	.L92
 431 023c D5F82022 		ldr	r2, [r5, #544]
 432 0240 D5F81C32 		ldr	r3, [r5, #540]
 433 0244 4FF0030E 		mov	lr, #3
 434 0248 C5E90423 		strd	r2, r3, [r5, #16]
 435 024c A2E7     		b	.L76
 436              	.L122:
 437 024e 00BF     		.align	2
 438              	.L121:
 439 0250 00000000 		.word	.LANCHOR0
 440 0254 00000000 		.word	.LANCHOR1
 441 0258 52526141 		.word	1096897106
 442              		.size	chk_mounted, .-chk_mounted
 443              		.section	.text.validate,"ax",%progbits
 444              		.align	1
 445              		.p2align 2,,3
 446              		.syntax unified
 447              		.thumb
 448              		.thumb_func
 449              		.fpu fpv4-sp-d16
 450              		.type	validate, %function
 451              	validate:
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 0, uses_anonymous_args = 0
 454 0000 20B1     		cbz	r0, .L127
 455 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 456 0004 13B1     		cbz	r3, .L127
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 9


 457 0006 C388     		ldrh	r3, [r0, #6]
 458 0008 8B42     		cmp	r3, r1
 459 000a 01D0     		beq	.L134
 460              	.L127:
 461 000c 0920     		movs	r0, #9
 462 000e 7047     		bx	lr
 463              	.L134:
 464 0010 10B5     		push	{r4, lr}
 465 0012 0446     		mov	r4, r0
 466 0014 C068     		ldr	r0, [r0, #12]
 467 0016 FFF7FEFF 		bl	ff_req_grant
 468 001a 40B1     		cbz	r0, .L128
 469 001c 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 470 001e FFF7FEFF 		bl	disk_status
 471 0022 10F0010F 		tst	r0, #1
 472 0026 14BF     		ite	ne
 473 0028 0320     		movne	r0, #3
 474 002a 0020     		moveq	r0, #0
 475 002c 10BD     		pop	{r4, pc}
 476              	.L128:
 477 002e 0F20     		movs	r0, #15
 478 0030 10BD     		pop	{r4, pc}
 479              		.size	validate, .-validate
 480 0032 00BF     		.section	.text.move_window,"ax",%progbits
 481              		.align	1
 482              		.p2align 2,,3
 483              		.syntax unified
 484              		.thumb
 485              		.thumb_func
 486              		.fpu fpv4-sp-d16
 487              		.type	move_window, %function
 488              	move_window:
 489              		@ args = 0, pretend = 0, frame = 0
 490              		@ frame_needed = 0, uses_anonymous_args = 0
 491 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 492 0004 066B     		ldr	r6, [r0, #48]
 493 0006 8E42     		cmp	r6, r1
 494 0008 04D0     		beq	.L141
 495 000a 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 496 000c 0D46     		mov	r5, r1
 497 000e 0446     		mov	r4, r0
 498 0010 1BB9     		cbnz	r3, .L154
 499              	.L138:
 500 0012 1DBB     		cbnz	r5, .L155
 501              	.L141:
 502 0014 0020     		movs	r0, #0
 503 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 504              	.L154:
 505 001a 00F13408 		add	r8, r0, #52
 506 001e 4146     		mov	r1, r8
 507 0020 0123     		movs	r3, #1
 508 0022 3246     		mov	r2, r6
 509 0024 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 510 0026 FFF7FEFF 		bl	disk_write
 511 002a 10BB     		cbnz	r0, .L142
 512 002c D4E90832 		ldrd	r3, r2, [r4, #32]
 513 0030 1A44     		add	r2, r2, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 10


 514 0032 B242     		cmp	r2, r6
 515 0034 2071     		strb	r0, [r4, #4]
 516 0036 ECD9     		bls	.L138
 517 0038 E778     		ldrb	r7, [r4, #3]	@ zero_extendqisi2
 518 003a 012F     		cmp	r7, #1
 519 003c 01D8     		bhi	.L140
 520 003e E8E7     		b	.L138
 521              	.L156:
 522 0040 236A     		ldr	r3, [r4, #32]
 523              	.L140:
 524 0042 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 525 0044 1E44     		add	r6, r6, r3
 526 0046 013F     		subs	r7, r7, #1
 527 0048 3246     		mov	r2, r6
 528 004a 0123     		movs	r3, #1
 529 004c 4146     		mov	r1, r8
 530 004e FFB2     		uxtb	r7, r7
 531 0050 FFF7FEFF 		bl	disk_write
 532 0054 012F     		cmp	r7, #1
 533 0056 F3D1     		bne	.L156
 534 0058 002D     		cmp	r5, #0
 535 005a DBD0     		beq	.L141
 536              	.L155:
 537 005c 0123     		movs	r3, #1
 538 005e 2A46     		mov	r2, r5
 539 0060 04F13401 		add	r1, r4, #52
 540 0064 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 541 0066 FFF7FEFF 		bl	disk_read
 542 006a 10B9     		cbnz	r0, .L142
 543 006c 2563     		str	r5, [r4, #48]
 544 006e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 545              	.L142:
 546 0072 0120     		movs	r0, #1
 547 0074 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 548              		.size	move_window, .-move_window
 549              		.section	.text.get_fat.part.6,"ax",%progbits
 550              		.align	1
 551              		.p2align 2,,3
 552              		.syntax unified
 553              		.thumb
 554              		.thumb_func
 555              		.fpu fpv4-sp-d16
 556              		.type	get_fat.part.6, %function
 557              	get_fat.part.6:
 558              		@ args = 0, pretend = 0, frame = 0
 559              		@ frame_needed = 0, uses_anonymous_args = 0
 560 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 561 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 562 0004 022B     		cmp	r3, #2
 563 0006 0746     		mov	r7, r0
 564 0008 0C46     		mov	r4, r1
 565 000a 46D0     		beq	.L159
 566 000c 032B     		cmp	r3, #3
 567 000e 28D0     		beq	.L160
 568 0010 012B     		cmp	r3, #1
 569 0012 02D0     		beq	.L168
 570              	.L166:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 11


 571 0014 4FF0FF30 		mov	r0, #-1
 572 0018 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 573              	.L168:
 574 001a 416A     		ldr	r1, [r0, #36]
 575 001c 04EB5406 		add	r6, r4, r4, lsr #1
 576 0020 01EB5621 		add	r1, r1, r6, lsr #9
 577 0024 FFF7FEFF 		bl	move_window
 578 0028 0028     		cmp	r0, #0
 579 002a F3D1     		bne	.L166
 580 002c C6F30803 		ubfx	r3, r6, #0, #9
 581 0030 796A     		ldr	r1, [r7, #36]
 582 0032 3B44     		add	r3, r3, r7
 583 0034 0136     		adds	r6, r6, #1
 584 0036 01EB5621 		add	r1, r1, r6, lsr #9
 585 003a 3846     		mov	r0, r7
 586 003c 93F83450 		ldrb	r5, [r3, #52]	@ zero_extendqisi2
 587 0040 FFF7FEFF 		bl	move_window
 588 0044 0028     		cmp	r0, #0
 589 0046 E5D1     		bne	.L166
 590 0048 C6F30806 		ubfx	r6, r6, #0, #9
 591 004c 3E44     		add	r6, r6, r7
 592 004e E307     		lsls	r3, r4, #31
 593 0050 96F83400 		ldrb	r0, [r6, #52]	@ zero_extendqisi2
 594 0054 45EA0020 		orr	r0, r5, r0, lsl #8
 595 0058 4CBF     		ite	mi
 596 005a 0009     		lsrmi	r0, r0, #4
 597 005c C0F30B00 		ubfxpl	r0, r0, #0, #12
 598 0060 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 599              	.L160:
 600 0062 416A     		ldr	r1, [r0, #36]
 601 0064 01EBD411 		add	r1, r1, r4, lsr #7
 602 0068 FFF7FEFF 		bl	move_window
 603 006c 0028     		cmp	r0, #0
 604 006e D1D1     		bne	.L166
 605 0070 A400     		lsls	r4, r4, #2
 606 0072 04F4FE74 		and	r4, r4, #508
 607 0076 04F13403 		add	r3, r4, #52
 608 007a 3B44     		add	r3, r3, r7
 609 007c 3C44     		add	r4, r4, r7
 610 007e 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
 611 0080 D978     		ldrb	r1, [r3, #3]	@ zero_extendqisi2
 612 0082 94F83420 		ldrb	r2, [r4, #52]	@ zero_extendqisi2
 613 0086 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 614 0088 0004     		lsls	r0, r0, #16
 615 008a 40EA0160 		orr	r0, r0, r1, lsl #24
 616 008e 1043     		orrs	r0, r0, r2
 617 0090 40EA0320 		orr	r0, r0, r3, lsl #8
 618 0094 20F07040 		bic	r0, r0, #-268435456
 619 0098 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 620              	.L159:
 621 009a 416A     		ldr	r1, [r0, #36]
 622 009c 01EB1421 		add	r1, r1, r4, lsr #8
 623 00a0 FFF7FEFF 		bl	move_window
 624 00a4 0028     		cmp	r0, #0
 625 00a6 B5D1     		bne	.L166
 626 00a8 6400     		lsls	r4, r4, #1
 627 00aa 04F4FF74 		and	r4, r4, #510
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 12


 628 00ae 3C44     		add	r4, r4, r7
 629 00b0 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 630 00b4 94F83400 		ldrb	r0, [r4, #52]	@ zero_extendqisi2
 631 00b8 40EA0320 		orr	r0, r0, r3, lsl #8
 632 00bc F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 633              		.size	get_fat.part.6, .-get_fat.part.6
 634 00be 00BF     		.section	.text.dir_sdi,"ax",%progbits
 635              		.align	1
 636              		.p2align 2,,3
 637              		.syntax unified
 638              		.thumb
 639              		.thumb_func
 640              		.fpu fpv4-sp-d16
 641              		.type	dir_sdi, %function
 642              	dir_sdi:
 643              		@ args = 0, pretend = 0, frame = 0
 644              		@ frame_needed = 0, uses_anonymous_args = 0
 645 0000 70B5     		push	{r4, r5, r6, lr}
 646 0002 0546     		mov	r5, r0
 647 0004 8068     		ldr	r0, [r0, #8]
 648 0006 E980     		strh	r1, [r5, #6]	@ movhi
 649 0008 0128     		cmp	r0, #1
 650 000a 1ED0     		beq	.L172
 651 000c 2B68     		ldr	r3, [r5]
 652 000e DA69     		ldr	r2, [r3, #28]
 653 0010 8242     		cmp	r2, r0
 654 0012 1AD9     		bls	.L172
 655 0014 0C46     		mov	r4, r1
 656 0016 D0B1     		cbz	r0, .L183
 657              	.L173:
 658 0018 9E78     		ldrb	r6, [r3, #2]	@ zero_extendqisi2
 659 001a 3601     		lsls	r6, r6, #4
 660 001c B442     		cmp	r4, r6
 661 001e 2ED3     		bcc	.L176
 662 0020 0128     		cmp	r0, #1
 663 0022 12D9     		bls	.L172
 664 0024 8242     		cmp	r2, r0
 665 0026 10D9     		bls	.L172
 666 0028 01E0     		b	.L177
 667              	.L184:
 668 002a A642     		cmp	r6, r4
 669 002c 27D8     		bhi	.L176
 670              	.L177:
 671 002e 0146     		mov	r1, r0
 672 0030 1846     		mov	r0, r3
 673 0032 FFF7FEFF 		bl	get_fat.part.6
 674 0036 A41B     		subs	r4, r4, r6
 675 0038 431C     		adds	r3, r0, #1
 676 003a A4B2     		uxth	r4, r4
 677 003c 2DD0     		beq	.L179
 678 003e 0128     		cmp	r0, #1
 679 0040 03D9     		bls	.L172
 680 0042 2B68     		ldr	r3, [r5]
 681 0044 DA69     		ldr	r2, [r3, #28]
 682 0046 8242     		cmp	r2, r0
 683 0048 EFD8     		bhi	.L184
 684              	.L172:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 13


 685 004a 0220     		movs	r0, #2
 686 004c 70BD     		pop	{r4, r5, r6, pc}
 687              	.L183:
 688 004e 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 689 0050 0329     		cmp	r1, #3
 690 0052 10D0     		beq	.L185
 691              	.L174:
 692 0054 1A89     		ldrh	r2, [r3, #8]
 693 0056 0021     		movs	r1, #0
 694 0058 A242     		cmp	r2, r4
 695 005a E960     		str	r1, [r5, #12]
 696 005c F5D9     		bls	.L172
 697 005e 9A6A     		ldr	r2, [r3, #40]
 698 0060 02EB1412 		add	r2, r2, r4, lsr #4
 699 0064 2A61     		str	r2, [r5, #16]
 700              	.L175:
 701 0066 04F00F04 		and	r4, r4, #15
 702 006a 3433     		adds	r3, r3, #52
 703 006c 03EB4413 		add	r3, r3, r4, lsl #5
 704 0070 6B61     		str	r3, [r5, #20]
 705 0072 0020     		movs	r0, #0
 706 0074 70BD     		pop	{r4, r5, r6, pc}
 707              	.L185:
 708 0076 986A     		ldr	r0, [r3, #40]
 709 0078 0028     		cmp	r0, #0
 710 007a CDD1     		bne	.L173
 711 007c EAE7     		b	.L174
 712              	.L176:
 713 007e 023A     		subs	r2, r2, #2
 714 0080 811E     		subs	r1, r0, #2
 715 0082 9142     		cmp	r1, r2
 716 0084 E860     		str	r0, [r5, #12]
 717 0086 3BBF     		ittet	cc
 718 0088 9A78     		ldrbcc	r2, [r3, #2]	@ zero_extendqisi2
 719 008a D86A     		ldrcc	r0, [r3, #44]
 720 008c 0022     		movcs	r2, #0
 721 008e 01FB0202 		mlacc	r2, r1, r2, r0
 722 0092 02EB1412 		add	r2, r2, r4, lsr #4
 723 0096 2A61     		str	r2, [r5, #16]
 724 0098 E5E7     		b	.L175
 725              	.L179:
 726 009a 0120     		movs	r0, #1
 727 009c 70BD     		pop	{r4, r5, r6, pc}
 728              		.size	dir_sdi, .-dir_sdi
 729 009e 00BF     		.section	.text.put_fat.part.7,"ax",%progbits
 730              		.align	1
 731              		.p2align 2,,3
 732              		.syntax unified
 733              		.thumb
 734              		.thumb_func
 735              		.fpu fpv4-sp-d16
 736              		.type	put_fat.part.7, %function
 737              	put_fat.part.7:
 738              		@ args = 0, pretend = 0, frame = 0
 739              		@ frame_needed = 0, uses_anonymous_args = 0
 740 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 741 0004 90F80090 		ldrb	r9, [r0]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 14


 742 0008 B9F1020F 		cmp	r9, #2
 743 000c 0446     		mov	r4, r0
 744 000e 0D46     		mov	r5, r1
 745 0010 1746     		mov	r7, r2
 746 0012 53D0     		beq	.L188
 747 0014 B9F1030F 		cmp	r9, #3
 748 0018 2DD0     		beq	.L189
 749 001a B9F1010F 		cmp	r9, #1
 750 001e 05D0     		beq	.L203
 751 0020 0226     		movs	r6, #2
 752              	.L187:
 753 0022 0123     		movs	r3, #1
 754 0024 2371     		strb	r3, [r4, #4]
 755 0026 3046     		mov	r0, r6
 756 0028 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 757              	.L203:
 758 002c 416A     		ldr	r1, [r0, #36]
 759 002e 05EB5508 		add	r8, r5, r5, lsr #1
 760 0032 01EB5821 		add	r1, r1, r8, lsr #9
 761 0036 FFF7FEFF 		bl	move_window
 762 003a 0646     		mov	r6, r0
 763 003c 0028     		cmp	r0, #0
 764 003e F0D1     		bne	.L187
 765 0040 616A     		ldr	r1, [r4, #36]
 766 0042 08F1010A 		add	r10, r8, #1
 767 0046 EB07     		lsls	r3, r5, #31
 768 0048 C8F30808 		ubfx	r8, r8, #0, #9
 769 004c 01EB5A21 		add	r1, r1, r10, lsr #9
 770 0050 A044     		add	r8, r8, r4
 771 0052 4AD5     		bpl	.L191
 772 0054 98F83430 		ldrb	r3, [r8, #52]	@ zero_extendqisi2
 773 0058 03F00F03 		and	r3, r3, #15
 774 005c 43EA0713 		orr	r3, r3, r7, lsl #4
 775 0060 88F83430 		strb	r3, [r8, #52]
 776 0064 2046     		mov	r0, r4
 777 0066 84F80490 		strb	r9, [r4, #4]
 778 006a FFF7FEFF 		bl	move_window
 779 006e 0028     		cmp	r0, #0
 780 0070 51D0     		beq	.L204
 781              	.L197:
 782 0072 0646     		mov	r6, r0
 783 0074 D5E7     		b	.L187
 784              	.L189:
 785 0076 416A     		ldr	r1, [r0, #36]
 786 0078 01EBD511 		add	r1, r1, r5, lsr #7
 787 007c FFF7FEFF 		bl	move_window
 788 0080 0646     		mov	r6, r0
 789 0082 0028     		cmp	r0, #0
 790 0084 CDD1     		bne	.L187
 791 0086 AD00     		lsls	r5, r5, #2
 792 0088 05F4FE75 		and	r5, r5, #508
 793 008c 05F13401 		add	r1, r5, #52
 794 0090 2144     		add	r1, r1, r4
 795 0092 2544     		add	r5, r5, r4
 796 0094 CB78     		ldrb	r3, [r1, #3]	@ zero_extendqisi2
 797 0096 1B06     		lsls	r3, r3, #24
 798 0098 03F07043 		and	r3, r3, #-268435456
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 15


 799 009c 43EA0702 		orr	r2, r3, r7
 800 00a0 130C     		lsrs	r3, r2, #16
 801 00a2 85F83420 		strb	r2, [r5, #52]
 802 00a6 C2F30720 		ubfx	r0, r2, #8, #8
 803 00aa 8B70     		strb	r3, [r1, #2]
 804 00ac 120E     		lsrs	r2, r2, #24
 805 00ae 0123     		movs	r3, #1
 806 00b0 4870     		strb	r0, [r1, #1]
 807 00b2 CA70     		strb	r2, [r1, #3]
 808 00b4 2371     		strb	r3, [r4, #4]
 809 00b6 3046     		mov	r0, r6
 810 00b8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 811              	.L188:
 812 00bc 416A     		ldr	r1, [r0, #36]
 813 00be 01EB1521 		add	r1, r1, r5, lsr #8
 814 00c2 FFF7FEFF 		bl	move_window
 815 00c6 0646     		mov	r6, r0
 816 00c8 0028     		cmp	r0, #0
 817 00ca AAD1     		bne	.L187
 818 00cc 6D00     		lsls	r5, r5, #1
 819 00ce 05F4FF75 		and	r5, r5, #510
 820 00d2 2544     		add	r5, r5, r4
 821 00d4 C7F30723 		ubfx	r3, r7, #8, #8
 822 00d8 85F83530 		strb	r3, [r5, #53]
 823 00dc 0123     		movs	r3, #1
 824 00de 85F83470 		strb	r7, [r5, #52]
 825 00e2 2371     		strb	r3, [r4, #4]
 826 00e4 3046     		mov	r0, r6
 827 00e6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 828              	.L191:
 829 00ea 88F83470 		strb	r7, [r8, #52]
 830 00ee 2046     		mov	r0, r4
 831 00f0 84F80490 		strb	r9, [r4, #4]
 832 00f4 FFF7FEFF 		bl	move_window
 833 00f8 0028     		cmp	r0, #0
 834 00fa BAD1     		bne	.L197
 835 00fc CAF3080A 		ubfx	r10, r10, #0, #9
 836 0100 A244     		add	r10, r10, r4
 837 0102 C7F30322 		ubfx	r2, r7, #8, #4
 838 0106 9AF83470 		ldrb	r7, [r10, #52]	@ zero_extendqisi2
 839 010a 27F00F07 		bic	r7, r7, #15
 840 010e 3A43     		orrs	r2, r2, r7
 841              	.L194:
 842 0110 8AF83420 		strb	r2, [r10, #52]
 843 0114 85E7     		b	.L187
 844              	.L204:
 845 0116 CAF3080A 		ubfx	r10, r10, #0, #9
 846 011a A244     		add	r10, r10, r4
 847 011c C7F30712 		ubfx	r2, r7, #4, #8
 848 0120 F6E7     		b	.L194
 849              		.size	put_fat.part.7, .-put_fat.part.7
 850 0122 00BF     		.section	.text.create_chain,"ax",%progbits
 851              		.align	1
 852              		.p2align 2,,3
 853              		.syntax unified
 854              		.thumb
 855              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 16


 856              		.fpu fpv4-sp-d16
 857              		.type	create_chain, %function
 858              	create_chain:
 859              		@ args = 0, pretend = 0, frame = 0
 860              		@ frame_needed = 0, uses_anonymous_args = 0
 861 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 862 0002 0546     		mov	r5, r0
 863 0004 0F46     		mov	r7, r1
 864 0006 F1B9     		cbnz	r1, .L206
 865 0008 0669     		ldr	r6, [r0, #16]
 866 000a C369     		ldr	r3, [r0, #28]
 867 000c 56BB     		cbnz	r6, .L233
 868 000e 0126     		movs	r6, #1
 869              	.L207:
 870 0010 3446     		mov	r4, r6
 871 0012 0FE0     		b	.L216
 872              	.L234:
 873 0014 012E     		cmp	r6, #1
 874 0016 29D9     		bls	.L215
 875 0018 022B     		cmp	r3, #2
 876 001a 11D9     		bls	.L208
 877 001c 0224     		movs	r4, #2
 878              	.L212:
 879 001e 2146     		mov	r1, r4
 880 0020 FFF7FEFF 		bl	get_fat.part.6
 881 0024 28B3     		cbz	r0, .L213
 882 0026 411C     		adds	r1, r0, #1
 883 0028 2FD0     		beq	.L221
 884 002a 0128     		cmp	r0, #1
 885 002c 08D0     		beq	.L208
 886 002e A642     		cmp	r6, r4
 887 0030 1CD0     		beq	.L215
 888 0032 EB69     		ldr	r3, [r5, #28]
 889              	.L216:
 890 0034 0134     		adds	r4, r4, #1
 891 0036 9C42     		cmp	r4, r3
 892 0038 2846     		mov	r0, r5
 893 003a EBD2     		bcs	.L234
 894 003c 012C     		cmp	r4, #1
 895 003e EED8     		bhi	.L212
 896              	.L208:
 897 0040 0124     		movs	r4, #1
 898              	.L205:
 899 0042 2046     		mov	r0, r4
 900 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 901              	.L206:
 902 0046 0129     		cmp	r1, #1
 903 0048 FAD9     		bls	.L208
 904 004a C369     		ldr	r3, [r0, #28]
 905 004c 9942     		cmp	r1, r3
 906 004e F7D2     		bcs	.L208
 907 0050 FFF7FEFF 		bl	get_fat.part.6
 908 0054 0128     		cmp	r0, #1
 909 0056 0446     		mov	r4, r0
 910 0058 F2D9     		bls	.L208
 911 005a EB69     		ldr	r3, [r5, #28]
 912 005c 8342     		cmp	r3, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 17


 913 005e F0D8     		bhi	.L205
 914 0060 3E46     		mov	r6, r7
 915 0062 D5E7     		b	.L207
 916              	.L233:
 917 0064 9E42     		cmp	r6, r3
 918 0066 28BF     		it	cs
 919 0068 0126     		movcs	r6, #1
 920 006a D1E7     		b	.L207
 921              	.L215:
 922 006c 0024     		movs	r4, #0
 923 006e 2046     		mov	r0, r4
 924 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 925              	.L213:
 926 0072 EB69     		ldr	r3, [r5, #28]
 927 0074 A342     		cmp	r3, r4
 928 0076 E3D9     		bls	.L208
 929 0078 6FF07042 		mvn	r2, #-268435456
 930 007c 2146     		mov	r1, r4
 931 007e 2846     		mov	r0, r5
 932 0080 FFF7FEFF 		bl	put_fat.part.7
 933 0084 28B1     		cbz	r0, .L235
 934              	.L217:
 935 0086 0128     		cmp	r0, #1
 936 0088 DAD1     		bne	.L208
 937              	.L221:
 938 008a 4FF0FF34 		mov	r4, #-1
 939 008e 2046     		mov	r0, r4
 940 0090 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 941              	.L235:
 942 0092 5FB1     		cbz	r7, .L220
 943 0094 012F     		cmp	r7, #1
 944 0096 D3D9     		bls	.L208
 945 0098 EB69     		ldr	r3, [r5, #28]
 946 009a 9F42     		cmp	r7, r3
 947 009c D0D2     		bcs	.L208
 948 009e 3946     		mov	r1, r7
 949 00a0 2246     		mov	r2, r4
 950 00a2 2846     		mov	r0, r5
 951 00a4 FFF7FEFF 		bl	put_fat.part.7
 952 00a8 0028     		cmp	r0, #0
 953 00aa ECD1     		bne	.L217
 954              	.L220:
 955 00ac 6B69     		ldr	r3, [r5, #20]
 956 00ae 2C61     		str	r4, [r5, #16]
 957 00b0 5A1C     		adds	r2, r3, #1
 958 00b2 C6D0     		beq	.L205
 959 00b4 013B     		subs	r3, r3, #1
 960 00b6 0122     		movs	r2, #1
 961 00b8 6B61     		str	r3, [r5, #20]
 962 00ba 6A71     		strb	r2, [r5, #5]
 963 00bc C1E7     		b	.L205
 964              		.size	create_chain, .-create_chain
 965 00be 00BF     		.section	.text.dir_next,"ax",%progbits
 966              		.align	1
 967              		.p2align 2,,3
 968              		.syntax unified
 969              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 18


 970              		.thumb_func
 971              		.fpu fpv4-sp-d16
 972              		.type	dir_next, %function
 973              	dir_next:
 974              		@ args = 0, pretend = 0, frame = 0
 975              		@ frame_needed = 0, uses_anonymous_args = 0
 976 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 977 0004 C488     		ldrh	r4, [r0, #6]
 978 0006 0134     		adds	r4, r4, #1
 979 0008 A4B2     		uxth	r4, r4
 980 000a 002C     		cmp	r4, #0
 981 000c 3AD0     		beq	.L239
 982 000e 0369     		ldr	r3, [r0, #16]
 983 0010 002B     		cmp	r3, #0
 984 0012 37D0     		beq	.L239
 985 0014 14F00F07 		ands	r7, r4, #15
 986 0018 0546     		mov	r5, r0
 987 001a 0E46     		mov	r6, r1
 988 001c 0068     		ldr	r0, [r0]
 989 001e 26D1     		bne	.L240
 990 0020 E968     		ldr	r1, [r5, #12]
 991 0022 0133     		adds	r3, r3, #1
 992 0024 2B61     		str	r3, [r5, #16]
 993 0026 51B3     		cbz	r1, .L273
 994 0028 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 995 002a 013B     		subs	r3, r3, #1
 996 002c 13EA1413 		ands	r3, r3, r4, lsr #4
 997 0030 1DD1     		bne	.L240
 998 0032 0129     		cmp	r1, #1
 999 0034 29D9     		bls	.L243
 1000 0036 C369     		ldr	r3, [r0, #28]
 1001 0038 9942     		cmp	r1, r3
 1002 003a 26D2     		bcs	.L243
 1003 003c FFF7FEFF 		bl	get_fat.part.6
 1004 0040 0128     		cmp	r0, #1
 1005 0042 8046     		mov	r8, r0
 1006 0044 21D9     		bls	.L243
 1007 0046 B0F1FF3F 		cmp	r0, #-1
 1008 004a 63D0     		beq	.L246
 1009 004c 2868     		ldr	r0, [r5]
 1010 004e C369     		ldr	r3, [r0, #28]
 1011 0050 4345     		cmp	r3, r8
 1012 0052 1CD9     		bls	.L271
 1013 0054 A8F10206 		sub	r6, r8, #2
 1014              	.L245:
 1015 0058 023B     		subs	r3, r3, #2
 1016 005a 9E42     		cmp	r6, r3
 1017 005c C5F80C80 		str	r8, [r5, #12]
 1018 0060 3BBF     		ittet	cc
 1019 0062 8378     		ldrbcc	r3, [r0, #2]	@ zero_extendqisi2
 1020 0064 C26A     		ldrcc	r2, [r0, #44]
 1021 0066 0023     		movcs	r3, #0
 1022 0068 06FB0323 		mlacc	r3, r6, r3, r2
 1023 006c 2B61     		str	r3, [r5, #16]
 1024              	.L240:
 1025 006e 3430     		adds	r0, r0, #52
 1026 0070 00EB4710 		add	r0, r0, r7, lsl #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 19


 1027 0074 6861     		str	r0, [r5, #20]
 1028 0076 EC80     		strh	r4, [r5, #6]	@ movhi
 1029 0078 0020     		movs	r0, #0
 1030 007a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1031              	.L273:
 1032 007e 0389     		ldrh	r3, [r0, #8]
 1033 0080 A342     		cmp	r3, r4
 1034 0082 F4D8     		bhi	.L240
 1035              	.L239:
 1036 0084 0420     		movs	r0, #4
 1037              	.L238:
 1038 0086 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1039              	.L243:
 1040 008a 0220     		movs	r0, #2
 1041 008c FBE7     		b	.L238
 1042              	.L271:
 1043 008e 002E     		cmp	r6, #0
 1044 0090 F8D0     		beq	.L239
 1045 0092 E968     		ldr	r1, [r5, #12]
 1046 0094 FFF7FEFF 		bl	create_chain
 1047 0098 8046     		mov	r8, r0
 1048 009a 0028     		cmp	r0, #0
 1049 009c 3CD0     		beq	.L251
 1050 009e 0128     		cmp	r0, #1
 1051 00a0 F3D0     		beq	.L243
 1052 00a2 B0F1FF3F 		cmp	r0, #-1
 1053 00a6 35D0     		beq	.L246
 1054 00a8 0021     		movs	r1, #0
 1055 00aa 2868     		ldr	r0, [r5]
 1056 00ac FFF7FEFF 		bl	move_window
 1057 00b0 8246     		mov	r10, r0
 1058 00b2 78BB     		cbnz	r0, .L246
 1059 00b4 2868     		ldr	r0, [r5]
 1060 00b6 4FF40072 		mov	r2, #512
 1061 00ba 3430     		adds	r0, r0, #52
 1062 00bc 5146     		mov	r1, r10
 1063 00be FFF7FEFF 		bl	memset
 1064 00c2 2A68     		ldr	r2, [r5]
 1065 00c4 D369     		ldr	r3, [r2, #28]
 1066 00c6 92F80290 		ldrb	r9, [r2, #2]	@ zero_extendqisi2
 1067 00ca 023B     		subs	r3, r3, #2
 1068 00cc A8F10206 		sub	r6, r8, #2
 1069 00d0 9E42     		cmp	r6, r3
 1070 00d2 36BF     		itet	cc
 1071 00d4 D36A     		ldrcc	r3, [r2, #44]
 1072 00d6 5346     		movcs	r3, r10
 1073 00d8 06FB0933 		mlacc	r3, r6, r9, r3
 1074 00dc 1363     		str	r3, [r2, #48]
 1075 00de B9F1000F 		cmp	r9, #0
 1076 00e2 1BD0     		beq	.L248
 1077 00e4 4FF00009 		mov	r9, #0
 1078 00e8 4FF0010A 		mov	r10, #1
 1079 00ec 06E0     		b	.L249
 1080              	.L274:
 1081 00ee 2A68     		ldr	r2, [r5]
 1082 00f0 136B     		ldr	r3, [r2, #48]
 1083 00f2 9178     		ldrb	r1, [r2, #2]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 20


 1084 00f4 0133     		adds	r3, r3, #1
 1085 00f6 4945     		cmp	r1, r9
 1086 00f8 1363     		str	r3, [r2, #48]
 1087 00fa 0FD9     		bls	.L248
 1088              	.L249:
 1089 00fc 82F804A0 		strb	r10, [r2, #4]
 1090 0100 1046     		mov	r0, r2
 1091 0102 0021     		movs	r1, #0
 1092 0104 FFF7FEFF 		bl	move_window
 1093 0108 09F10109 		add	r9, r9, #1
 1094 010c 5FFA89F9 		uxtb	r9, r9
 1095 0110 0028     		cmp	r0, #0
 1096 0112 ECD0     		beq	.L274
 1097              	.L246:
 1098 0114 0120     		movs	r0, #1
 1099 0116 B6E7     		b	.L238
 1100              	.L251:
 1101 0118 0720     		movs	r0, #7
 1102 011a B4E7     		b	.L238
 1103              	.L248:
 1104 011c 136B     		ldr	r3, [r2, #48]
 1105 011e A3EB0901 		sub	r1, r3, r9
 1106 0122 1046     		mov	r0, r2
 1107 0124 D369     		ldr	r3, [r2, #28]
 1108 0126 1163     		str	r1, [r2, #48]
 1109 0128 96E7     		b	.L245
 1110              		.size	dir_next, .-dir_next
 1111 012a 00BF     		.section	.text.dir_read,"ax",%progbits
 1112              		.align	1
 1113              		.p2align 2,,3
 1114              		.syntax unified
 1115              		.thumb
 1116              		.thumb_func
 1117              		.fpu fpv4-sp-d16
 1118              		.type	dir_read, %function
 1119              	dir_read:
 1120              		@ args = 0, pretend = 0, frame = 0
 1121              		@ frame_needed = 0, uses_anonymous_args = 0
 1122 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1123 0004 FF26     		movs	r6, #255
 1124 0006 0446     		mov	r4, r0
 1125 0008 3546     		mov	r5, r6
 1126 000a 0420     		movs	r0, #4
 1127 000c 08E0     		b	.L276
 1128              	.L314:
 1129 000e 0F2F     		cmp	r7, #15
 1130 0010 1DD0     		beq	.L280
 1131              	.L303:
 1132 0012 FF25     		movs	r5, #255
 1133              	.L278:
 1134 0014 0021     		movs	r1, #0
 1135 0016 2046     		mov	r0, r4
 1136 0018 FFF7FEFF 		bl	dir_next
 1137 001c 0028     		cmp	r0, #0
 1138 001e 58D1     		bne	.L277
 1139              	.L276:
 1140 0020 2169     		ldr	r1, [r4, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 21


 1141 0022 0029     		cmp	r1, #0
 1142 0024 59D0     		beq	.L313
 1143 0026 2068     		ldr	r0, [r4]
 1144 0028 FFF7FEFF 		bl	move_window
 1145 002c 0028     		cmp	r0, #0
 1146 002e 50D1     		bne	.L277
 1147 0030 6269     		ldr	r2, [r4, #20]
 1148 0032 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 1149 0034 002B     		cmp	r3, #0
 1150 0036 4BD0     		beq	.L295
 1151 0038 E52B     		cmp	r3, #229
 1152 003a EAD0     		beq	.L303
 1153 003c 2E2B     		cmp	r3, #46
 1154 003e E8D0     		beq	.L303
 1155 0040 D17A     		ldrb	r1, [r2, #11]	@ zero_extendqisi2
 1156 0042 01F03F07 		and	r7, r1, #63
 1157 0046 0907     		lsls	r1, r1, #28
 1158 0048 E1D4     		bmi	.L314
 1159 004a 0F2F     		cmp	r7, #15
 1160 004c 4AD1     		bne	.L281
 1161              	.L280:
 1162 004e 5906     		lsls	r1, r3, #25
 1163 0050 3BD5     		bpl	.L282
 1164 0052 E188     		ldrh	r1, [r4, #6]
 1165 0054 567B     		ldrb	r6, [r2, #13]	@ zero_extendqisi2
 1166 0056 2184     		strh	r1, [r4, #32]	@ movhi
 1167 0058 03F0BF03 		and	r3, r3, #191
 1168              	.L283:
 1169 005c 517B     		ldrb	r1, [r2, #13]	@ zero_extendqisi2
 1170 005e B142     		cmp	r1, r6
 1171 0060 D7D1     		bne	.L303
 1172 0062 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 1173 0064 294D     		ldr	r5, .L318
 1174 0066 D4F81C90 		ldr	r9, [r4, #28]
 1175 006a 00F03F00 		and	r0, r0, #63
 1176 006e 0138     		subs	r0, r0, #1
 1177 0070 00EB4007 		add	r7, r0, r0, lsl #1
 1178 0074 0121     		movs	r1, #1
 1179 0076 00EB8700 		add	r0, r0, r7, lsl #2
 1180 007a 05F10C0E 		add	lr, r5, #12
 1181 007e 8C46     		mov	ip, r1
 1182 0080 4FF6FF78 		movw	r8, #65535
 1183 0084 0AE0     		b	.L287
 1184              	.L315:
 1185 0086 FE28     		cmp	r0, #254
 1186 0088 C3D8     		bhi	.L303
 1187 008a 7545     		cmp	r5, lr
 1188 008c 29F81010 		strh	r1, [r9, r0, lsl #1]	@ movhi
 1189 0090 8C46     		mov	ip, r1
 1190 0092 00F10100 		add	r0, r0, #1
 1191 0096 0DD0     		beq	.L286
 1192              	.L316:
 1193 0098 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 1194              	.L287:
 1195 009c 5718     		adds	r7, r2, r1
 1196 009e 515C     		ldrb	r1, [r2, r1]	@ zero_extendqisi2
 1197 00a0 7F78     		ldrb	r7, [r7, #1]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 22


 1198 00a2 41EA0721 		orr	r1, r1, r7, lsl #8
 1199 00a6 BCF1000F 		cmp	ip, #0
 1200 00aa ECD1     		bne	.L315
 1201 00ac 4145     		cmp	r1, r8
 1202 00ae B0D1     		bne	.L303
 1203 00b0 7545     		cmp	r5, lr
 1204 00b2 F1D1     		bne	.L316
 1205              	.L286:
 1206 00b4 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1207 00b6 5206     		lsls	r2, r2, #25
 1208 00b8 04D5     		bpl	.L288
 1209 00ba FE28     		cmp	r0, #254
 1210 00bc A9D8     		bhi	.L303
 1211 00be 0022     		movs	r2, #0
 1212 00c0 29F81020 		strh	r2, [r9, r0, lsl #1]	@ movhi
 1213              	.L288:
 1214 00c4 013B     		subs	r3, r3, #1
 1215 00c6 DDB2     		uxtb	r5, r3
 1216 00c8 A4E7     		b	.L278
 1217              	.L282:
 1218 00ca 9D42     		cmp	r5, r3
 1219 00cc A1D1     		bne	.L303
 1220 00ce C5E7     		b	.L283
 1221              	.L295:
 1222 00d0 0420     		movs	r0, #4
 1223              	.L277:
 1224 00d2 0023     		movs	r3, #0
 1225 00d4 2361     		str	r3, [r4, #16]
 1226              	.L292:
 1227 00d6 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1228              	.L313:
 1229 00da 0028     		cmp	r0, #0
 1230 00dc F9D1     		bne	.L277
 1231              	.L294:
 1232 00de 0020     		movs	r0, #0
 1233 00e0 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1234              	.L281:
 1235 00e4 75B9     		cbnz	r5, .L289
 1236 00e6 02F10A07 		add	r7, r2, #10
 1237 00ea 01E0     		b	.L291
 1238              	.L317:
 1239 00ec 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 1240              	.L291:
 1241 00f0 E901     		lsls	r1, r5, #7
 1242 00f2 41EA5505 		orr	r5, r1, r5, lsr #1
 1243 00f6 53FA85F3 		uxtab	r3, r3, r5
 1244 00fa 9742     		cmp	r7, r2
 1245 00fc DDB2     		uxtb	r5, r3
 1246 00fe F5D1     		bne	.L317
 1247 0100 AE42     		cmp	r6, r5
 1248 0102 ECD0     		beq	.L294
 1249              	.L289:
 1250 0104 4FF6FF73 		movw	r3, #65535
 1251 0108 2384     		strh	r3, [r4, #32]	@ movhi
 1252 010a E4E7     		b	.L292
 1253              	.L319:
 1254              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 23


 1255              	.L318:
 1256 010c 00000000 		.word	.LANCHOR2
 1257              		.size	dir_read, .-dir_read
 1258              		.section	.text.dir_remove,"ax",%progbits
 1259              		.align	1
 1260              		.p2align 2,,3
 1261              		.syntax unified
 1262              		.thumb
 1263              		.thumb_func
 1264              		.fpu fpv4-sp-d16
 1265              		.type	dir_remove, %function
 1266              	dir_remove:
 1267              		@ args = 0, pretend = 0, frame = 0
 1268              		@ frame_needed = 0, uses_anonymous_args = 0
 1269 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1270 0002 018C     		ldrh	r1, [r0, #32]
 1271 0004 C588     		ldrh	r5, [r0, #6]
 1272 0006 4FF6FF73 		movw	r3, #65535
 1273 000a 9942     		cmp	r1, r3
 1274 000c 08BF     		it	eq
 1275 000e 2946     		moveq	r1, r5
 1276 0010 0446     		mov	r4, r0
 1277 0012 FFF7FEFF 		bl	dir_sdi
 1278 0016 0346     		mov	r3, r0
 1279 0018 C8B9     		cbnz	r0, .L322
 1280 001a E527     		movs	r7, #229
 1281 001c 0126     		movs	r6, #1
 1282 001e 0BE0     		b	.L324
 1283              	.L329:
 1284 0020 6269     		ldr	r2, [r4, #20]
 1285 0022 1770     		strb	r7, [r2]
 1286 0024 2268     		ldr	r2, [r4]
 1287 0026 1671     		strb	r6, [r2, #4]
 1288 0028 E288     		ldrh	r2, [r4, #6]
 1289 002a AA42     		cmp	r2, r5
 1290 002c 2046     		mov	r0, r4
 1291 002e 0ED2     		bcs	.L322
 1292 0030 FFF7FEFF 		bl	dir_next
 1293 0034 0346     		mov	r3, r0
 1294 0036 38B9     		cbnz	r0, .L323
 1295              	.L324:
 1296 0038 2169     		ldr	r1, [r4, #16]
 1297 003a 2068     		ldr	r0, [r4]
 1298 003c FFF7FEFF 		bl	move_window
 1299 0040 0346     		mov	r3, r0
 1300 0042 0146     		mov	r1, r0
 1301 0044 0028     		cmp	r0, #0
 1302 0046 EBD0     		beq	.L329
 1303              	.L323:
 1304 0048 042B     		cmp	r3, #4
 1305 004a 08BF     		it	eq
 1306 004c 0223     		moveq	r3, #2
 1307              	.L322:
 1308 004e 1846     		mov	r0, r3
 1309 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1310              		.size	dir_remove, .-dir_remove
 1311 0052 00BF     		.section	.text.remove_chain.part.8,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 24


 1312              		.align	1
 1313              		.p2align 2,,3
 1314              		.syntax unified
 1315              		.thumb
 1316              		.thumb_func
 1317              		.fpu fpv4-sp-d16
 1318              		.type	remove_chain.part.8, %function
 1319              	remove_chain.part.8:
 1320              		@ args = 0, pretend = 0, frame = 0
 1321              		@ frame_needed = 0, uses_anonymous_args = 0
 1322 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1323 0002 0446     		mov	r4, r0
 1324 0004 0D46     		mov	r5, r1
 1325 0006 E369     		ldr	r3, [r4, #28]
 1326 0008 9D42     		cmp	r5, r3
 1327 000a 4FF00107 		mov	r7, #1
 1328 000e 2946     		mov	r1, r5
 1329 0010 2046     		mov	r0, r4
 1330 0012 1ED2     		bcs	.L338
 1331              	.L337:
 1332 0014 012D     		cmp	r5, #1
 1333 0016 1ED9     		bls	.L335
 1334 0018 FFF7FEFF 		bl	get_fat.part.6
 1335 001c 2946     		mov	r1, r5
 1336 001e 0646     		mov	r6, r0
 1337 0020 0022     		movs	r2, #0
 1338 0022 B0B1     		cbz	r0, .L338
 1339 0024 012E     		cmp	r6, #1
 1340 0026 2046     		mov	r0, r4
 1341 0028 15D0     		beq	.L335
 1342 002a 731C     		adds	r3, r6, #1
 1343 002c 15D0     		beq	.L339
 1344 002e E369     		ldr	r3, [r4, #28]
 1345 0030 9D42     		cmp	r5, r3
 1346 0032 10D2     		bcs	.L335
 1347 0034 FFF7FEFF 		bl	put_fat.part.7
 1348 0038 60B9     		cbnz	r0, .L333
 1349 003a 6369     		ldr	r3, [r4, #20]
 1350 003c 5A1C     		adds	r2, r3, #1
 1351 003e 02D0     		beq	.L336
 1352 0040 0133     		adds	r3, r3, #1
 1353 0042 6361     		str	r3, [r4, #20]
 1354 0044 6771     		strb	r7, [r4, #5]
 1355              	.L336:
 1356 0046 E369     		ldr	r3, [r4, #28]
 1357 0048 3546     		mov	r5, r6
 1358 004a 9D42     		cmp	r5, r3
 1359 004c 2946     		mov	r1, r5
 1360 004e 2046     		mov	r0, r4
 1361 0050 E0D3     		bcc	.L337
 1362              	.L338:
 1363 0052 0020     		movs	r0, #0
 1364              	.L333:
 1365 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1366              	.L335:
 1367 0056 0220     		movs	r0, #2
 1368 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 25


 1369              	.L339:
 1370 005a 0120     		movs	r0, #1
 1371 005c FAE7     		b	.L333
 1372              		.size	remove_chain.part.8, .-remove_chain.part.8
 1373 005e 00BF     		.section	.text.dir_find.part.9,"ax",%progbits
 1374              		.align	1
 1375              		.p2align 2,,3
 1376              		.syntax unified
 1377              		.thumb
 1378              		.thumb_func
 1379              		.fpu fpv4-sp-d16
 1380              		.type	dir_find.part.9, %function
 1381              	dir_find.part.9:
 1382              		@ args = 0, pretend = 0, frame = 8
 1383              		@ frame_needed = 0, uses_anonymous_args = 0
 1384 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1385 0004 FF27     		movs	r7, #255
 1386 0006 83B0     		sub	sp, sp, #12
 1387 0008 0546     		mov	r5, r0
 1388 000a 3C46     		mov	r4, r7
 1389 000c 08E0     		b	.L364
 1390              	.L391:
 1391 000e 0F29     		cmp	r1, #15
 1392 0010 2FD0     		beq	.L351
 1393              	.L374:
 1394 0012 FF24     		movs	r4, #255
 1395              	.L349:
 1396 0014 0021     		movs	r1, #0
 1397 0016 2846     		mov	r0, r5
 1398 0018 FFF7FEFF 		bl	dir_next
 1399 001c 0646     		mov	r6, r0
 1400 001e 20BB     		cbnz	r0, .L348
 1401              	.L364:
 1402 0020 2969     		ldr	r1, [r5, #16]
 1403 0022 2868     		ldr	r0, [r5]
 1404 0024 FFF7FEFF 		bl	move_window
 1405 0028 0646     		mov	r6, r0
 1406 002a F0B9     		cbnz	r0, .L348
 1407 002c D5F81480 		ldr	r8, [r5, #20]
 1408 0030 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 1409 0034 002A     		cmp	r2, #0
 1410 0036 76D0     		beq	.L365
 1411 0038 98F80B30 		ldrb	r3, [r8, #11]	@ zero_extendqisi2
 1412 003c E52A     		cmp	r2, #229
 1413 003e 03F03F01 		and	r1, r3, #63
 1414 0042 E6D0     		beq	.L374
 1415 0044 1807     		lsls	r0, r3, #28
 1416 0046 E2D4     		bmi	.L391
 1417 0048 0F29     		cmp	r1, #15
 1418 004a 12D0     		beq	.L351
 1419 004c 002C     		cmp	r4, #0
 1420 004e 55D0     		beq	.L392
 1421              	.L360:
 1422 0050 4FF6FF73 		movw	r3, #65535
 1423 0054 A969     		ldr	r1, [r5, #24]
 1424 0056 2B84     		strh	r3, [r5, #32]	@ movhi
 1425 0058 CB7A     		ldrb	r3, [r1, #11]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 26


 1426 005a DB07     		lsls	r3, r3, #31
 1427 005c D9D4     		bmi	.L374
 1428 005e 4046     		mov	r0, r8
 1429 0060 0B22     		movs	r2, #11
 1430 0062 FFF7FEFF 		bl	memcmp
 1431 0066 0028     		cmp	r0, #0
 1432 0068 D3D1     		bne	.L374
 1433              	.L348:
 1434 006a 3046     		mov	r0, r6
 1435 006c 03B0     		add	sp, sp, #12
 1436              		@ sp needed
 1437 006e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1438              	.L351:
 1439 0072 EE69     		ldr	r6, [r5, #28]
 1440 0074 002E     		cmp	r6, #0
 1441 0076 CDD0     		beq	.L349
 1442 0078 5106     		lsls	r1, r2, #25
 1443 007a 50D5     		bpl	.L353
 1444 007c EB88     		ldrh	r3, [r5, #6]
 1445 007e 98F80D70 		ldrb	r7, [r8, #13]	@ zero_extendqisi2
 1446 0082 2B84     		strh	r3, [r5, #32]	@ movhi
 1447 0084 02F0BF04 		and	r4, r2, #191
 1448              	.L354:
 1449 0088 98F80D30 		ldrb	r3, [r8, #13]	@ zero_extendqisi2
 1450 008c BB42     		cmp	r3, r7
 1451 008e C0D1     		bne	.L374
 1452 0090 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
 1453 0094 DFF8B4A0 		ldr	r10, .L394
 1454 0098 21F04001 		bic	r1, r1, #64
 1455 009c 0139     		subs	r1, r1, #1
 1456 009e 01EB4100 		add	r0, r1, r1, lsl #1
 1457 00a2 0123     		movs	r3, #1
 1458 00a4 01EB800B 		add	fp, r1, r0, lsl #2
 1459 00a8 0AF10C09 		add	r9, r10, #12
 1460 00ac 1846     		mov	r0, r3
 1461 00ae 07E0     		b	.L358
 1462              	.L355:
 1463 00b0 4FF6FF72 		movw	r2, #65535
 1464 00b4 9342     		cmp	r3, r2
 1465 00b6 ACD1     		bne	.L374
 1466              	.L356:
 1467 00b8 D145     		cmp	r9, r10
 1468 00ba 39D0     		beq	.L357
 1469 00bc 1AF8013F 		ldrb	r3, [r10, #1]!	@ zero_extendqisi2
 1470              	.L358:
 1471 00c0 08EB030C 		add	ip, r8, r3
 1472 00c4 18F80330 		ldrb	r3, [r8, r3]	@ zero_extendqisi2
 1473 00c8 9CF801C0 		ldrb	ip, [ip, #1]	@ zero_extendqisi2
 1474 00cc 43EA0C23 		orr	r3, r3, ip, lsl #8
 1475 00d0 0028     		cmp	r0, #0
 1476 00d2 EDD0     		beq	.L355
 1477 00d4 1846     		mov	r0, r3
 1478 00d6 FFF7FEFF 		bl	ff_wtoupper
 1479 00da 0BF10103 		add	r3, fp, #1
 1480 00de BBF1FE0F 		cmp	fp, #254
 1481 00e2 0090     		str	r0, [sp]
 1482 00e4 0193     		str	r3, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 27


 1483 00e6 94D8     		bhi	.L374
 1484 00e8 36F81B00 		ldrh	r0, [r6, fp, lsl #1]
 1485 00ec FFF7FEFF 		bl	ff_wtoupper
 1486 00f0 009B     		ldr	r3, [sp]
 1487 00f2 8342     		cmp	r3, r0
 1488 00f4 8DD1     		bne	.L374
 1489 00f6 DDF804B0 		ldr	fp, [sp, #4]
 1490 00fa DDE7     		b	.L356
 1491              	.L392:
 1492 00fc 4146     		mov	r1, r8
 1493 00fe 08F10A00 		add	r0, r8, #10
 1494 0102 01E0     		b	.L362
 1495              	.L393:
 1496 0104 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 1497              	.L362:
 1498 0108 E301     		lsls	r3, r4, #7
 1499 010a 43EA5403 		orr	r3, r3, r4, lsr #1
 1500 010e 52FA83F3 		uxtab	r3, r2, r3
 1501 0112 8142     		cmp	r1, r0
 1502 0114 DCB2     		uxtb	r4, r3
 1503 0116 F5D1     		bne	.L393
 1504 0118 BC42     		cmp	r4, r7
 1505 011a 99D1     		bne	.L360
 1506 011c A5E7     		b	.L348
 1507              	.L353:
 1508 011e A242     		cmp	r2, r4
 1509 0120 7FF477AF 		bne	.L374
 1510 0124 B0E7     		b	.L354
 1511              	.L365:
 1512 0126 0426     		movs	r6, #4
 1513 0128 3046     		mov	r0, r6
 1514 012a 03B0     		add	sp, sp, #12
 1515              		@ sp needed
 1516 012c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1517              	.L357:
 1518 0130 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1519 0134 5A06     		lsls	r2, r3, #25
 1520 0136 05D5     		bpl	.L359
 1521 0138 20B1     		cbz	r0, .L359
 1522 013a 36F81B30 		ldrh	r3, [r6, fp, lsl #1]
 1523 013e 002B     		cmp	r3, #0
 1524 0140 7FF467AF 		bne	.L374
 1525              	.L359:
 1526 0144 631E     		subs	r3, r4, #1
 1527 0146 DCB2     		uxtb	r4, r3
 1528 0148 64E7     		b	.L349
 1529              	.L395:
 1530 014a 00BF     		.align	2
 1531              	.L394:
 1532 014c 00000000 		.word	.LANCHOR2
 1533              		.size	dir_find.part.9, .-dir_find.part.9
 1534              		.section	.text.dir_register,"ax",%progbits
 1535              		.align	1
 1536              		.p2align 2,,3
 1537              		.syntax unified
 1538              		.thumb
 1539              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 28


 1540              		.fpu fpv4-sp-d16
 1541              		.type	dir_register, %function
 1542              	dir_register:
 1543              		@ args = 0, pretend = 0, frame = 24
 1544              		@ frame_needed = 0, uses_anonymous_args = 0
 1545 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1546 0004 D0E90685 		ldrd	r8, r5, [r0, #24]
 1547 0008 87B0     		sub	sp, sp, #28
 1548 000a D8F80820 		ldr	r2, [r8, #8]	@ unaligned
 1549 000e D8F80410 		ldr	r1, [r8, #4]	@ unaligned
 1550 0012 0446     		mov	r4, r0
 1551 0014 D8F80000 		ldr	r0, [r8]	@ unaligned
 1552 0018 03AB     		add	r3, sp, #12
 1553 001a 07C3     		stmia	r3!, {r0, r1, r2}
 1554 001c 9DF81770 		ldrb	r7, [sp, #23]	@ zero_extendqisi2
 1555 0020 FA07     		lsls	r2, r7, #31
 1556 0022 40F18280 		bpl	.L397
 1557 0026 03AB     		add	r3, sp, #12
 1558 0028 03CB     		ldmia	r3!, {r0, r1}
 1559 002a 0022     		movs	r2, #0
 1560 002c 1E88     		ldrh	r6, [r3]	@ unaligned
 1561 002e 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 1562 0030 88F80B20 		strb	r2, [r8, #11]
 1563 0034 4FF00109 		mov	r9, #1
 1564 0038 E261     		str	r2, [r4, #28]
 1565 003a A8F80860 		strh	r6, [r8, #8]	@ unaligned
 1566 003e 88F80A30 		strb	r3, [r8, #10]
 1567 0042 C8F80000 		str	r0, [r8]	@ unaligned
 1568 0046 C8F80410 		str	r1, [r8, #4]	@ unaligned
 1569 004a 4B46     		mov	r3, r9
 1570 004c 7E26     		movs	r6, #126
 1571              	.L398:
 1572 004e 0DF10B0C 		add	ip, sp, #11
 1573 0052 0722     		movs	r2, #7
 1574              	.L402:
 1575 0054 03F00F00 		and	r0, r3, #15
 1576 0058 00F13001 		add	r1, r0, #48
 1577 005c 3929     		cmp	r1, #57
 1578 005e 88BF     		it	hi
 1579 0060 00F13701 		addhi	r1, r0, #55
 1580 0064 C3F30F13 		ubfx	r3, r3, #4, #16
 1581 0068 013A     		subs	r2, r2, #1
 1582 006a 0CF80119 		strb	r1, [ip], #-1
 1583 006e 002B     		cmp	r3, #0
 1584 0070 F0D1     		bne	.L402
 1585 0072 06A9     		add	r1, sp, #24
 1586 0074 1144     		add	r1, r1, r2
 1587 0076 01F8146C 		strb	r6, [r1, #-20]
 1588 007a 002A     		cmp	r2, #0
 1589 007c 00F09780 		beq	.L431
 1590 0080 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
 1591 0084 2029     		cmp	r1, #32
 1592 0086 08D0     		beq	.L403
 1593 0088 4146     		mov	r1, r8
 1594 008a 03E0     		b	.L404
 1595              	.L458:
 1596 008c 11F8010F 		ldrb	r0, [r1, #1]!	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 29


 1597 0090 2028     		cmp	r0, #32
 1598 0092 02D0     		beq	.L403
 1599              	.L404:
 1600 0094 0133     		adds	r3, r3, #1
 1601 0096 9A42     		cmp	r2, r3
 1602 0098 F8D1     		bne	.L458
 1603              	.L403:
 1604 009a 591E     		subs	r1, r3, #1
 1605 009c 4144     		add	r1, r1, r8
 1606              	.L406:
 1607 009e 06A8     		add	r0, sp, #24
 1608 00a0 1044     		add	r0, r0, r2
 1609 00a2 072A     		cmp	r2, #7
 1610 00a4 03F10103 		add	r3, r3, #1
 1611 00a8 96BF     		itet	ls
 1612 00aa 10F8140C 		ldrbls	r0, [r0, #-20]	@ zero_extendqisi2
 1613 00ae 2020     		movhi	r0, #32
 1614 00b0 0132     		addls	r2, r2, #1
 1615 00b2 072B     		cmp	r3, #7
 1616 00b4 01F8010F 		strb	r0, [r1, #1]!
 1617 00b8 F1D9     		bls	.L406
 1618 00ba 0021     		movs	r1, #0
 1619 00bc 2046     		mov	r0, r4
 1620 00be FFF7FEFF 		bl	dir_sdi
 1621 00c2 8246     		mov	r10, r0
 1622 00c4 58BB     		cbnz	r0, .L407
 1623 00c6 2046     		mov	r0, r4
 1624 00c8 FFF7FEFF 		bl	dir_find.part.9
 1625 00cc 8246     		mov	r10, r0
 1626 00ce 30BB     		cbnz	r0, .L407
 1627 00d0 09F10109 		add	r9, r9, #1
 1628 00d4 1FFA89F9 		uxth	r9, r9
 1629 00d8 B9F1640F 		cmp	r9, #100
 1630 00dc 00F0D880 		beq	.L459
 1631 00e0 03AB     		add	r3, sp, #12
 1632 00e2 03CB     		ldmia	r3!, {r0, r1}
 1633 00e4 B9F1050F 		cmp	r9, #5
 1634 00e8 1A88     		ldrh	r2, [r3]	@ unaligned
 1635 00ea 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 1636 00ec C8F80000 		str	r0, [r8]	@ unaligned
 1637 00f0 C8F80410 		str	r1, [r8, #4]	@ unaligned
 1638 00f4 A8F80820 		strh	r2, [r8, #8]	@ unaligned
 1639 00f8 88F80A30 		strb	r3, [r8, #10]
 1640 00fc 0DD9     		bls	.L430
 1641 00fe 2988     		ldrh	r1, [r5]
 1642 0100 4B46     		mov	r3, r9
 1643 0102 2846     		mov	r0, r5
 1644              	.L400:
 1645 0104 DA03     		lsls	r2, r3, #15
 1646 0106 42EA5303 		orr	r3, r2, r3, lsr #1
 1647 010a 11FA83F3 		uxtah	r3, r1, r3
 1648 010e 30F8021F 		ldrh	r1, [r0, #2]!
 1649 0112 9BB2     		uxth	r3, r3
 1650 0114 0029     		cmp	r1, #0
 1651 0116 F5D1     		bne	.L400
 1652 0118 99E7     		b	.L398
 1653              	.L430:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 30


 1654 011a 4B46     		mov	r3, r9
 1655 011c 97E7     		b	.L398
 1656              	.L407:
 1657 011e BAF1040F 		cmp	r10, #4
 1658 0122 2ED1     		bne	.L438
 1659 0124 88F80B70 		strb	r7, [r8, #11]
 1660 0128 E561     		str	r5, [r4, #28]
 1661              	.L397:
 1662 012a BB07     		lsls	r3, r7, #30
 1663 012c 2DD4     		bmi	.L460
 1664              	.L434:
 1665 012e 0126     		movs	r6, #1
 1666              	.L410:
 1667 0130 0021     		movs	r1, #0
 1668 0132 2046     		mov	r0, r4
 1669 0134 FFF7FEFF 		bl	dir_sdi
 1670 0138 8246     		mov	r10, r0
 1671 013a 10BB     		cbnz	r0, .L438
 1672 013c 0746     		mov	r7, r0
 1673 013e 0546     		mov	r5, r0
 1674 0140 07E0     		b	.L417
 1675              	.L461:
 1676 0142 92B1     		cbz	r2, .L413
 1677 0144 0546     		mov	r5, r0
 1678 0146 0121     		movs	r1, #1
 1679 0148 2046     		mov	r0, r4
 1680 014a FFF7FEFF 		bl	dir_next
 1681 014e 8246     		mov	r10, r0
 1682 0150 B8B9     		cbnz	r0, .L438
 1683              	.L417:
 1684 0152 2169     		ldr	r1, [r4, #16]
 1685 0154 2068     		ldr	r0, [r4]
 1686 0156 FFF7FEFF 		bl	move_window
 1687 015a 6B1C     		adds	r3, r5, #1
 1688 015c 8246     		mov	r10, r0
 1689 015e 9BB2     		uxth	r3, r3
 1690 0160 78B9     		cbnz	r0, .L438
 1691 0162 6269     		ldr	r2, [r4, #20]
 1692 0164 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1693 0166 E52A     		cmp	r2, #229
 1694 0168 EBD1     		bne	.L461
 1695              	.L413:
 1696 016a 05B9     		cbnz	r5, .L415
 1697 016c E788     		ldrh	r7, [r4, #6]
 1698              	.L415:
 1699 016e 9E42     		cmp	r6, r3
 1700 0170 1FD0     		beq	.L416
 1701 0172 0121     		movs	r1, #1
 1702 0174 2046     		mov	r0, r4
 1703 0176 1D46     		mov	r5, r3
 1704 0178 FFF7FEFF 		bl	dir_next
 1705 017c 8246     		mov	r10, r0
 1706 017e 0028     		cmp	r0, #0
 1707 0180 E7D0     		beq	.L417
 1708              	.L438:
 1709 0182 5046     		mov	r0, r10
 1710 0184 07B0     		add	sp, sp, #28
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 31


 1711              		@ sp needed
 1712 0186 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1713              	.L460:
 1714 018a 2B88     		ldrh	r3, [r5]
 1715 018c 002B     		cmp	r3, #0
 1716 018e CED0     		beq	.L434
 1717 0190 0023     		movs	r3, #0
 1718              	.L412:
 1719 0192 0133     		adds	r3, r3, #1
 1720 0194 9BB2     		uxth	r3, r3
 1721 0196 35F81320 		ldrh	r2, [r5, r3, lsl #1]
 1722 019a 002A     		cmp	r2, #0
 1723 019c F9D1     		bne	.L412
 1724 019e 4E4A     		ldr	r2, .L463
 1725 01a0 03F11906 		add	r6, r3, #25
 1726 01a4 A2FB0636 		umull	r3, r6, r2, r6
 1727 01a8 C6F38F06 		ubfx	r6, r6, #2, #16
 1728 01ac C0E7     		b	.L410
 1729              	.L431:
 1730 01ae 1346     		mov	r3, r2
 1731 01b0 73E7     		b	.L403
 1732              	.L416:
 1733 01b2 012E     		cmp	r6, #1
 1734 01b4 1FD1     		bne	.L462
 1735              	.L429:
 1736 01b6 2169     		ldr	r1, [r4, #16]
 1737 01b8 2068     		ldr	r0, [r4]
 1738 01ba FFF7FEFF 		bl	move_window
 1739 01be 8246     		mov	r10, r0
 1740 01c0 0028     		cmp	r0, #0
 1741 01c2 DED1     		bne	.L438
 1742 01c4 6369     		ldr	r3, [r4, #20]
 1743 01c6 2022     		movs	r2, #32
 1744 01c8 1846     		mov	r0, r3
 1745 01ca 5146     		mov	r1, r10
 1746 01cc FFF7FEFF 		bl	memset
 1747 01d0 A269     		ldr	r2, [r4, #24]
 1748 01d2 0346     		mov	r3, r0
 1749 01d4 1168     		ldr	r1, [r2]	@ unaligned
 1750 01d6 5068     		ldr	r0, [r2, #4]	@ unaligned
 1751 01d8 5860     		str	r0, [r3, #4]	@ unaligned
 1752 01da 1960     		str	r1, [r3]	@ unaligned
 1753 01dc 1189     		ldrh	r1, [r2, #8]	@ unaligned
 1754 01de 927A     		ldrb	r2, [r2, #10]	@ zero_extendqisi2
 1755 01e0 9A72     		strb	r2, [r3, #10]
 1756 01e2 1981     		strh	r1, [r3, #8]	@ unaligned
 1757 01e4 A269     		ldr	r2, [r4, #24]
 1758 01e6 D27A     		ldrb	r2, [r2, #11]	@ zero_extendqisi2
 1759 01e8 02F01802 		and	r2, r2, #24
 1760 01ec 1A73     		strb	r2, [r3, #12]
 1761 01ee 2368     		ldr	r3, [r4]
 1762 01f0 0122     		movs	r2, #1
 1763 01f2 1A71     		strb	r2, [r3, #4]
 1764 01f4 C5E7     		b	.L438
 1765              	.L462:
 1766 01f6 3946     		mov	r1, r7
 1767 01f8 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 32


 1768 01fa FFF7FEFF 		bl	dir_sdi
 1769 01fe 8246     		mov	r10, r0
 1770 0200 0028     		cmp	r0, #0
 1771 0202 BED1     		bne	.L438
 1772 0204 A269     		ldr	r2, [r4, #24]
 1773 0206 8046     		mov	r8, r0
 1774 0208 02F10B00 		add	r0, r2, #11
 1775              	.L418:
 1776 020c 12F8011B 		ldrb	r1, [r2], #1	@ zero_extendqisi2
 1777 0210 4FEAC813 		lsl	r3, r8, #7
 1778 0214 43EA5808 		orr	r8, r3, r8, lsr #1
 1779 0218 51FA88F8 		uxtab	r8, r1, r8
 1780 021c 8242     		cmp	r2, r0
 1781 021e 5FFA88F8 		uxtb	r8, r8
 1782 0222 F3D1     		bne	.L418
 1783 0224 2D4F     		ldr	r7, .L463+4
 1784              	.L426:
 1785 0226 2169     		ldr	r1, [r4, #16]
 1786 0228 2068     		ldr	r0, [r4]
 1787 022a FFF7FEFF 		bl	move_window
 1788 022e 8246     		mov	r10, r0
 1789 0230 0028     		cmp	r0, #0
 1790 0232 A6D1     		bne	.L438
 1791 0234 5FFA85FA 		uxtb	r10, r5
 1792 0238 6669     		ldr	r6, [r4, #20]
 1793 023a D4F81CE0 		ldr	lr, [r4, #28]
 1794 023e 86F80D80 		strb	r8, [r6, #13]
 1795 0242 0AF1FF32 		add	r2, r10, #-1
 1796 0246 0F21     		movs	r1, #15
 1797 0248 02EB420C 		add	ip, r2, r2, lsl #1
 1798 024c F172     		strb	r1, [r6, #11]
 1799 024e 0346     		mov	r3, r0
 1800 0250 02EB8C02 		add	r2, r2, ip, lsl #2
 1801 0254 3073     		strb	r0, [r6, #12]
 1802 0256 B076     		strb	r0, [r6, #26]
 1803 0258 F076     		strb	r0, [r6, #27]
 1804 025a 0146     		mov	r1, r0
 1805 025c 4FF0010B 		mov	fp, #1
 1806 0260 4FF6FF79 		movw	r9, #65535
 1807              	.L424:
 1808 0264 4B45     		cmp	r3, r9
 1809 0266 1ABF     		itte	ne
 1810 0268 3EF81230 		ldrhne	r3, [lr, r2, lsl #1]
 1811 026c 02F1010C 		addne	ip, r2, #1
 1812 0270 9446     		moveq	ip, r2
 1813              	.L422:
 1814 0272 06EB0B00 		add	r0, r6, fp
 1815 0276 1A0A     		lsrs	r2, r3, #8
 1816 0278 06F80B30 		strb	r3, [r6, fp]
 1817 027c 0131     		adds	r1, r1, #1
 1818 027e 4270     		strb	r2, [r0, #1]
 1819 0280 4BB9     		cbnz	r3, .L420
 1820 0282 0C29     		cmp	r1, #12
 1821 0284 14D8     		bhi	.L421
 1822 0286 11F807B0 		ldrb	fp, [r1, r7]	@ zero_extendqisi2
 1823 028a 4FF6FF73 		movw	r3, #65535
 1824 028e F0E7     		b	.L422
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 33


 1825              	.L459:
 1826 0290 4FF0070A 		mov	r10, #7
 1827 0294 75E7     		b	.L438
 1828              	.L420:
 1829 0296 0C29     		cmp	r1, #12
 1830 0298 03D8     		bhi	.L423
 1831 029a 6246     		mov	r2, ip
 1832 029c 17F801B0 		ldrb	fp, [r7, r1]	@ zero_extendqisi2
 1833 02a0 E0E7     		b	.L424
 1834              	.L423:
 1835 02a2 4FF6FF72 		movw	r2, #65535
 1836 02a6 9342     		cmp	r3, r2
 1837 02a8 02D0     		beq	.L421
 1838 02aa 3EF81C30 		ldrh	r3, [lr, ip, lsl #1]
 1839 02ae 0BB9     		cbnz	r3, .L425
 1840              	.L421:
 1841 02b0 4AF0400A 		orr	r10, r10, #64
 1842              	.L425:
 1843 02b4 86F800A0 		strb	r10, [r6]
 1844 02b8 2368     		ldr	r3, [r4]
 1845 02ba 0122     		movs	r2, #1
 1846 02bc 1A71     		strb	r2, [r3, #4]
 1847 02be 0021     		movs	r1, #0
 1848 02c0 2046     		mov	r0, r4
 1849 02c2 FFF7FEFF 		bl	dir_next
 1850 02c6 8246     		mov	r10, r0
 1851 02c8 0028     		cmp	r0, #0
 1852 02ca 7FF45AAF 		bne	.L438
 1853 02ce 013D     		subs	r5, r5, #1
 1854 02d0 ADB2     		uxth	r5, r5
 1855 02d2 002D     		cmp	r5, #0
 1856 02d4 A7D1     		bne	.L426
 1857 02d6 6EE7     		b	.L429
 1858              	.L464:
 1859              		.align	2
 1860              	.L463:
 1861 02d8 4FECC44E 		.word	1321528399
 1862 02dc 00000000 		.word	.LANCHOR2
 1863              		.size	dir_register, .-dir_register
 1864              		.section	.text.unlock_fs.isra.10.part.11,"ax",%progbits
 1865              		.align	1
 1866              		.p2align 2,,3
 1867              		.syntax unified
 1868              		.thumb
 1869              		.thumb_func
 1870              		.fpu fpv4-sp-d16
 1871              		.type	unlock_fs.isra.10.part.11, %function
 1872              	unlock_fs.isra.10.part.11:
 1873              		@ args = 0, pretend = 0, frame = 0
 1874              		@ frame_needed = 0, uses_anonymous_args = 0
 1875              		@ link register save eliminated.
 1876 0000 0F29     		cmp	r1, #15
 1877 0002 02D0     		beq	.L465
 1878 0004 0068     		ldr	r0, [r0]
 1879 0006 FFF7FEBF 		b	ff_rel_grant
 1880              	.L465:
 1881 000a 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 34


 1882              		.size	unlock_fs.isra.10.part.11, .-unlock_fs.isra.10.part.11
 1883              		.section	.text.sync,"ax",%progbits
 1884              		.align	1
 1885              		.p2align 2,,3
 1886              		.syntax unified
 1887              		.thumb
 1888              		.thumb_func
 1889              		.fpu fpv4-sp-d16
 1890              		.type	sync, %function
 1891              	sync:
 1892              		@ args = 0, pretend = 0, frame = 0
 1893              		@ frame_needed = 0, uses_anonymous_args = 0
 1894 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1895 0002 0021     		movs	r1, #0
 1896 0004 0446     		mov	r4, r0
 1897 0006 FFF7FEFF 		bl	move_window
 1898 000a 58B9     		cbnz	r0, .L468
 1899 000c 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1900 000e 6678     		ldrb	r6, [r4, #1]	@ zero_extendqisi2
 1901 0010 032B     		cmp	r3, #3
 1902 0012 08D0     		beq	.L474
 1903              	.L469:
 1904 0014 0022     		movs	r2, #0
 1905 0016 3046     		mov	r0, r6
 1906 0018 1146     		mov	r1, r2
 1907 001a FFF7FEFF 		bl	disk_ioctl
 1908 001e 0030     		adds	r0, r0, #0
 1909 0020 18BF     		it	ne
 1910 0022 0120     		movne	r0, #1
 1911              	.L468:
 1912 0024 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1913              	.L474:
 1914 0026 6379     		ldrb	r3, [r4, #5]	@ zero_extendqisi2
 1915 0028 002B     		cmp	r3, #0
 1916 002a F3D0     		beq	.L469
 1917 002c 0546     		mov	r5, r0
 1918 002e 04F13407 		add	r7, r4, #52
 1919 0032 2063     		str	r0, [r4, #48]
 1920 0034 4FF40072 		mov	r2, #512
 1921 0038 2946     		mov	r1, r5
 1922 003a 3846     		mov	r0, r7
 1923 003c FFF7FEFF 		bl	memset
 1924 0040 D4E90432 		ldrd	r3, r2, [r4, #16]
 1925 0044 3046     		mov	r0, r6
 1926 0046 C2F3072E 		ubfx	lr, r2, #8, #8
 1927 004a 160C     		lsrs	r6, r2, #16
 1928 004c 84F81C22 		strb	r2, [r4, #540]
 1929 0050 120E     		lsrs	r2, r2, #24
 1930 0052 84F81E62 		strb	r6, [r4, #542]
 1931 0056 84F81F22 		strb	r2, [r4, #543]
 1932 005a C3F30726 		ubfx	r6, r3, #8, #8
 1933 005e 1A0C     		lsrs	r2, r3, #16
 1934 0060 DFF83CC0 		ldr	ip, .L475+4
 1935 0064 84F82032 		strb	r3, [r4, #544]
 1936 0068 84F82162 		strb	r6, [r4, #545]
 1937 006c 1B0E     		lsrs	r3, r3, #24
 1938 006e 4AF65526 		movw	r6, #43605
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 35


 1939 0072 84F82222 		strb	r2, [r4, #546]
 1940 0076 094A     		ldr	r2, .L475
 1941 0078 84F82332 		strb	r3, [r4, #547]
 1942 007c A4F83262 		strh	r6, [r4, #562]	@ movhi
 1943 0080 C4F81822 		str	r2, [r4, #536]
 1944 0084 3946     		mov	r1, r7
 1945 0086 84F81DE2 		strb	lr, [r4, #541]
 1946 008a C4F834C0 		str	ip, [r4, #52]
 1947 008e 0123     		movs	r3, #1
 1948 0090 A269     		ldr	r2, [r4, #24]
 1949 0092 FFF7FEFF 		bl	disk_write
 1950 0096 6678     		ldrb	r6, [r4, #1]	@ zero_extendqisi2
 1951 0098 6571     		strb	r5, [r4, #5]
 1952 009a BBE7     		b	.L469
 1953              	.L476:
 1954              		.align	2
 1955              	.L475:
 1956 009c 72724161 		.word	1631679090
 1957 00a0 52526141 		.word	1096897106
 1958              		.size	sync, .-sync
 1959              		.section	.text.follow_path,"ax",%progbits
 1960              		.align	1
 1961              		.p2align 2,,3
 1962              		.syntax unified
 1963              		.thumb
 1964              		.thumb_func
 1965              		.fpu fpv4-sp-d16
 1966              		.type	follow_path, %function
 1967              	follow_path:
 1968              		@ args = 0, pretend = 0, frame = 8
 1969              		@ frame_needed = 0, uses_anonymous_args = 0
 1970 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1971 0004 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 1972 0006 2F2B     		cmp	r3, #47
 1973 0008 83B0     		sub	sp, sp, #12
 1974 000a 0D46     		mov	r5, r1
 1975 000c 0746     		mov	r7, r0
 1976 000e 44D0     		beq	.L478
 1977 0010 5C2B     		cmp	r3, #92
 1978 0012 42D0     		beq	.L478
 1979 0014 0024     		movs	r4, #0
 1980 0016 BC60     		str	r4, [r7, #8]
 1981 0018 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1982 001a 1F28     		cmp	r0, #31
 1983 001c 43D9     		bls	.L610
 1984              	.L618:
 1985 001e DFF87082 		ldr	r8, .L622+4
 1986 0022 01E0     		b	.L482
 1987              	.L483:
 1988 0024 15F8010F 		ldrb	r0, [r5, #1]!	@ zero_extendqisi2
 1989              	.L482:
 1990 0028 2F28     		cmp	r0, #47
 1991 002a FBD0     		beq	.L483
 1992 002c 5C28     		cmp	r0, #92
 1993 002e F9D0     		beq	.L483
 1994 0030 80B2     		uxth	r0, r0
 1995 0032 1F28     		cmp	r0, #31
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 36


 1996 0034 D7F81C90 		ldr	r9, [r7, #28]
 1997 0038 2BD9     		bls	.L484
 1998 003a 2F28     		cmp	r0, #47
 1999 003c 29D0     		beq	.L484
 2000 003e 5C28     		cmp	r0, #92
 2001 0040 27D0     		beq	.L484
 2002 0042 A9F10206 		sub	r6, r9, #2
 2003 0046 B346     		mov	fp, r6
 2004 0048 AA46     		mov	r10, r5
 2005 004a 0124     		movs	r4, #1
 2006 004c 10E0     		b	.L485
 2007              	.L487:
 2008 004e 2BF8020F 		strh	r0, [fp, #2]!	@ movhi
 2009 0052 1AF8010F 		ldrb	r0, [r10, #1]!	@ zero_extendqisi2
 2010 0056 1F28     		cmp	r0, #31
 2011 0058 04F10103 		add	r3, r4, #1
 2012 005c 40F2DF80 		bls	.L617
 2013 0060 2F28     		cmp	r0, #47
 2014 0062 28D0     		beq	.L486
 2015 0064 5C28     		cmp	r0, #92
 2016 0066 26D0     		beq	.L486
 2017 0068 B3F5807F 		cmp	r3, #256
 2018 006c 11D0     		beq	.L484
 2019 006e 1C46     		mov	r4, r3
 2020              	.L485:
 2021 0070 0121     		movs	r1, #1
 2022 0072 FFF7FEFF 		bl	ff_convert
 2023 0076 60B1     		cbz	r0, .L484
 2024 0078 7F28     		cmp	r0, #127
 2025 007a E8D8     		bhi	.L487
 2026 007c 2228     		cmp	r0, #34
 2027 007e 08D0     		beq	.L484
 2028 0080 824A     		ldr	r2, .L622
 2029 0082 2A23     		movs	r3, #42
 2030 0084 03E0     		b	.L488
 2031              	.L489:
 2032 0086 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 2033 008a 002B     		cmp	r3, #0
 2034 008c DFD0     		beq	.L487
 2035              	.L488:
 2036 008e 9842     		cmp	r0, r3
 2037 0090 F9D1     		bne	.L489
 2038              	.L484:
 2039 0092 0620     		movs	r0, #6
 2040              	.L536:
 2041 0094 03B0     		add	sp, sp, #12
 2042              		@ sp needed
 2043 0096 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2044              	.L478:
 2045 009a 0135     		adds	r5, r5, #1
 2046 009c 0024     		movs	r4, #0
 2047 009e BC60     		str	r4, [r7, #8]
 2048 00a0 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 2049 00a2 1F28     		cmp	r0, #31
 2050 00a4 BBD8     		bhi	.L618
 2051              	.L610:
 2052 00a6 2146     		mov	r1, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 37


 2053 00a8 3846     		mov	r0, r7
 2054 00aa FFF7FEFF 		bl	dir_sdi
 2055 00ae 7C61     		str	r4, [r7, #20]
 2056 00b0 03B0     		add	sp, sp, #12
 2057              		@ sp needed
 2058 00b2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2059              	.L486:
 2060 00b6 1D44     		add	r5, r5, r3
 2061 00b8 4FF0000B 		mov	fp, #0
 2062              	.L526:
 2063 00bc 09EB4402 		add	r2, r9, r4, lsl #1
 2064              	.L494:
 2065 00c0 32F8023D 		ldrh	r3, [r2, #-2]!
 2066 00c4 202B     		cmp	r3, #32
 2067 00c6 01D0     		beq	.L492
 2068 00c8 2E2B     		cmp	r3, #46
 2069 00ca 02D1     		bne	.L493
 2070              	.L492:
 2071 00cc 013C     		subs	r4, r4, #1
 2072 00ce F7D1     		bne	.L494
 2073 00d0 DFE7     		b	.L484
 2074              	.L493:
 2075 00d2 BB69     		ldr	r3, [r7, #24]
 2076 00d4 4FF02032 		mov	r2, #538976288
 2077 00d8 4FF0000A 		mov	r10, #0
 2078 00dc 29F814A0 		strh	r10, [r9, r4, lsl #1]	@ movhi
 2079 00e0 5A60     		str	r2, [r3, #4]	@ unaligned
 2080 00e2 1A60     		str	r2, [r3]	@ unaligned
 2081 00e4 C3F80720 		str	r2, [r3, #7]	@ unaligned
 2082 00e8 09EB4403 		add	r3, r9, r4, lsl #1
 2083 00ec 01E0     		b	.L527
 2084              	.L495:
 2085 00ee 0AF1010A 		add	r10, r10, #1
 2086              	.L527:
 2087 00f2 36F8020F 		ldrh	r0, [r6, #2]!
 2088 00f6 2028     		cmp	r0, #32
 2089 00f8 F9D0     		beq	.L495
 2090 00fa 2E28     		cmp	r0, #46
 2091 00fc F7D0     		beq	.L495
 2092 00fe BAF1000F 		cmp	r10, #0
 2093 0102 01D0     		beq	.L497
 2094 0104 4BF0030B 		orr	fp, fp, #3
 2095              	.L497:
 2096 0108 33F8022D 		ldrh	r2, [r3, #-2]!
 2097 010c 2E2A     		cmp	r2, #46
 2098 010e 01D0     		beq	.L498
 2099 0110 013C     		subs	r4, r4, #1
 2100 0112 F9D1     		bne	.L497
 2101              	.L498:
 2102 0114 0023     		movs	r3, #0
 2103 0116 1E46     		mov	r6, r3
 2104 0118 0822     		movs	r2, #8
 2105              	.L499:
 2106 011a 0AF1010A 		add	r10, r10, #1
 2107 011e 30B3     		cbz	r0, .L501
 2108 0120 2028     		cmp	r0, #32
 2109 0122 6DD0     		beq	.L502
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 38


 2110 0124 2E28     		cmp	r0, #46
 2111 0126 70D0     		beq	.L619
 2112 0128 9342     		cmp	r3, r2
 2113 012a 19D2     		bcs	.L506
 2114 012c 5445     		cmp	r4, r10
 2115 012e 6ED0     		beq	.L528
 2116 0130 7F28     		cmp	r0, #127
 2117 0132 7BD8     		bhi	.L620
 2118              	.L512:
 2119 0134 2B28     		cmp	r0, #43
 2120 0136 00F08980 		beq	.L513
 2121 013a DFF858C1 		ldr	ip, .L622+8
 2122 013e 2C21     		movs	r1, #44
 2123              	.L514:
 2124 0140 8142     		cmp	r1, r0
 2125 0142 00F08380 		beq	.L513
 2126 0146 1CF8011F 		ldrb	r1, [ip, #1]!	@ zero_extendqisi2
 2127 014a 0029     		cmp	r1, #0
 2128 014c F8D1     		bne	.L514
 2129 014e A0F14101 		sub	r1, r0, #65
 2130 0152 1929     		cmp	r1, #25
 2131 0154 00F28F80 		bhi	.L621
 2132 0158 46F00206 		orr	r6, r6, #2
 2133 015c C0B2     		uxtb	r0, r0
 2134 015e 78E0     		b	.L517
 2135              	.L506:
 2136 0160 0B2A     		cmp	r2, #11
 2137 0162 7ED0     		beq	.L529
 2138 0164 5445     		cmp	r4, r10
 2139 0166 54D0     		beq	.L511
 2140 0168 4BF0030B 		orr	fp, fp, #3
 2141 016c 51D2     		bcs	.L511
 2142              	.L501:
 2143 016e BB69     		ldr	r3, [r7, #24]
 2144 0170 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 2145 0172 E529     		cmp	r1, #229
 2146 0174 02D1     		bne	.L519
 2147 0176 0521     		movs	r1, #5
 2148 0178 1970     		strb	r1, [r3]
 2149 017a BB69     		ldr	r3, [r7, #24]
 2150              	.L519:
 2151 017c 082A     		cmp	r2, #8
 2152 017e 04BF     		itt	eq
 2153 0180 B600     		lsleq	r6, r6, #2
 2154 0182 F6B2     		uxtbeq	r6, r6
 2155              	.L510:
 2156 0184 06F00C02 		and	r2, r6, #12
 2157 0188 0C2A     		cmp	r2, #12
 2158 018a 4CD0     		beq	.L520
 2159 018c 06F00306 		and	r6, r6, #3
 2160 0190 032E     		cmp	r6, #3
 2161 0192 48D0     		beq	.L520
 2162 0194 1BF0020F 		tst	fp, #2
 2163 0198 07D1     		bne	.L522
 2164 019a 012E     		cmp	r6, #1
 2165 019c 08BF     		it	eq
 2166 019e 4BF0100B 		orreq	fp, fp, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 39


 2167 01a2 042A     		cmp	r2, #4
 2168 01a4 08BF     		it	eq
 2169 01a6 4BF0080B 		orreq	fp, fp, #8
 2170              	.L522:
 2171 01aa 83F80BB0 		strb	fp, [r3, #11]
 2172 01ae 0021     		movs	r1, #0
 2173 01b0 3846     		mov	r0, r7
 2174 01b2 FFF7FEFF 		bl	dir_sdi
 2175 01b6 C8B9     		cbnz	r0, .L524
 2176 01b8 3846     		mov	r0, r7
 2177 01ba FFF7FEFF 		bl	dir_find.part.9
 2178 01be BB69     		ldr	r3, [r7, #24]
 2179 01c0 DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 2180 01c2 A8B9     		cbnz	r0, .L532
 2181 01c4 5907     		lsls	r1, r3, #29
 2182 01c6 3FF565AF 		bmi	.L536
 2183 01ca 7B69     		ldr	r3, [r7, #20]
 2184 01cc DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 2185 01ce D206     		lsls	r2, r2, #27
 2186 01d0 43D5     		bpl	.L535
 2187 01d2 587D     		ldrb	r0, [r3, #21]	@ zero_extendqisi2
 2188 01d4 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 2189 01d6 D97E     		ldrb	r1, [r3, #27]	@ zero_extendqisi2
 2190 01d8 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 2191 01da 42EA0022 		orr	r2, r2, r0, lsl #8
 2192 01de 43EA0123 		orr	r3, r3, r1, lsl #8
 2193 01e2 43EA0243 		orr	r3, r3, r2, lsl #16
 2194 01e6 BB60     		str	r3, [r7, #8]
 2195 01e8 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 2196 01ea 1DE7     		b	.L482
 2197              	.L524:
 2198 01ec BB69     		ldr	r3, [r7, #24]
 2199 01ee DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 2200              	.L532:
 2201 01f0 0428     		cmp	r0, #4
 2202 01f2 7FF44FAF 		bne	.L536
 2203 01f6 13F0040F 		tst	r3, #4
 2204 01fa 08BF     		it	eq
 2205 01fc 0520     		moveq	r0, #5
 2206 01fe 49E7     		b	.L536
 2207              	.L502:
 2208 0200 4BF0030B 		orr	fp, fp, #3
 2209              	.L505:
 2210 0204 39F81A00 		ldrh	r0, [r9, r10, lsl #1]
 2211 0208 87E7     		b	.L499
 2212              	.L619:
 2213 020a 5445     		cmp	r4, r10
 2214 020c F8D1     		bne	.L502
 2215              	.L528:
 2216 020e 0B2A     		cmp	r2, #11
 2217 0210 27D0     		beq	.L529
 2218              	.L511:
 2219 0212 B600     		lsls	r6, r6, #2
 2220 0214 F6B2     		uxtb	r6, r6
 2221 0216 A246     		mov	r10, r4
 2222 0218 0B22     		movs	r2, #11
 2223 021a 0823     		movs	r3, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 40


 2224 021c F2E7     		b	.L505
 2225              	.L617:
 2226 021e 1D44     		add	r5, r5, r3
 2227 0220 4FF0040B 		mov	fp, #4
 2228 0224 4AE7     		b	.L526
 2229              	.L520:
 2230 0226 4BF0020B 		orr	fp, fp, #2
 2231 022a BEE7     		b	.L522
 2232              	.L620:
 2233 022c 0021     		movs	r1, #0
 2234 022e CDE90032 		strd	r3, r2, [sp]
 2235 0232 FFF7FEFF 		bl	ff_convert
 2236 0236 4BF0020B 		orr	fp, fp, #2
 2237 023a DDE90032 		ldrd	r3, r2, [sp]
 2238 023e 28B1     		cbz	r0, .L513
 2239 0240 4044     		add	r0, r0, r8
 2240 0242 10F8800C 		ldrb	r0, [r0, #-128]	@ zero_extendqisi2
 2241 0246 0028     		cmp	r0, #0
 2242 0248 7FF474AF 		bne	.L512
 2243              	.L513:
 2244 024c 4BF0030B 		orr	fp, fp, #3
 2245 0250 5F20     		movs	r0, #95
 2246              	.L517:
 2247 0252 B969     		ldr	r1, [r7, #24]
 2248 0254 C854     		strb	r0, [r1, r3]
 2249 0256 0133     		adds	r3, r3, #1
 2250 0258 D4E7     		b	.L505
 2251              	.L535:
 2252 025a 0520     		movs	r0, #5
 2253 025c 03B0     		add	sp, sp, #12
 2254              		@ sp needed
 2255 025e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2256              	.L529:
 2257 0262 BB69     		ldr	r3, [r7, #24]
 2258 0264 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 2259 0266 E52A     		cmp	r2, #229
 2260 0268 4BF0030B 		orr	fp, fp, #3
 2261 026c 8AD1     		bne	.L510
 2262 026e 0522     		movs	r2, #5
 2263 0270 1A70     		strb	r2, [r3]
 2264 0272 BB69     		ldr	r3, [r7, #24]
 2265 0274 86E7     		b	.L510
 2266              	.L621:
 2267 0276 A0F16101 		sub	r1, r0, #97
 2268 027a 1929     		cmp	r1, #25
 2269 027c 97BF     		itett	ls
 2270 027e 2038     		subls	r0, r0, #32
 2271 0280 C0B2     		uxtbhi	r0, r0
 2272 0282 C0B2     		uxtbls	r0, r0
 2273 0284 46F00106 		orrls	r6, r6, #1
 2274 0288 E3E7     		b	.L517
 2275              	.L623:
 2276 028a 00BF     		.align	2
 2277              	.L622:
 2278 028c 01000000 		.word	.LC0+1
 2279 0290 00000000 		.word	.LANCHOR3
 2280 0294 01000000 		.word	.LC1+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 41


 2281              		.size	follow_path, .-follow_path
 2282              		.section	.text.f_mount,"ax",%progbits
 2283              		.align	1
 2284              		.p2align 2,,3
 2285              		.global	f_mount
 2286              		.syntax unified
 2287              		.thumb
 2288              		.thumb_func
 2289              		.fpu fpv4-sp-d16
 2290              		.type	f_mount, %function
 2291              	f_mount:
 2292              		@ args = 0, pretend = 0, frame = 0
 2293              		@ frame_needed = 0, uses_anonymous_args = 0
 2294 0000 0128     		cmp	r0, #1
 2295 0002 19D8     		bhi	.L631
 2296 0004 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2297 0006 0E4F     		ldr	r7, .L642
 2298 0008 57F82060 		ldr	r6, [r7, r0, lsl #2]
 2299 000c 0D46     		mov	r5, r1
 2300 000e 0446     		mov	r4, r0
 2301 0010 2EB1     		cbz	r6, .L626
 2302 0012 F068     		ldr	r0, [r6, #12]
 2303 0014 FFF7FEFF 		bl	ff_del_syncobj
 2304 0018 80B1     		cbz	r0, .L629
 2305 001a 0023     		movs	r3, #0
 2306 001c 3370     		strb	r3, [r6]
 2307              	.L626:
 2308 001e 3DB1     		cbz	r5, .L630
 2309 0020 2946     		mov	r1, r5
 2310 0022 0023     		movs	r3, #0
 2311 0024 01F80C3B 		strb	r3, [r1], #12
 2312 0028 2046     		mov	r0, r4
 2313 002a FFF7FEFF 		bl	ff_cre_syncobj
 2314 002e 28B1     		cbz	r0, .L629
 2315              	.L630:
 2316 0030 47F82450 		str	r5, [r7, r4, lsl #2]
 2317 0034 0020     		movs	r0, #0
 2318 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2319              	.L631:
 2320 0038 0B20     		movs	r0, #11
 2321 003a 7047     		bx	lr
 2322              	.L629:
 2323 003c 0220     		movs	r0, #2
 2324 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2325              	.L643:
 2326              		.align	2
 2327              	.L642:
 2328 0040 00000000 		.word	.LANCHOR0
 2329              		.size	f_mount, .-f_mount
 2330              		.section	.text.f_open,"ax",%progbits
 2331              		.align	1
 2332              		.p2align 2,,3
 2333              		.global	f_open
 2334              		.syntax unified
 2335              		.thumb
 2336              		.thumb_func
 2337              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 42


 2338              		.type	f_open, %function
 2339              	f_open:
 2340              		@ args = 0, pretend = 0, frame = 568
 2341              		@ frame_needed = 0, uses_anonymous_args = 0
 2342 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2343 0004 ADF50F7D 		sub	sp, sp, #572
 2344 0008 0023     		movs	r3, #0
 2345 000a 1746     		mov	r7, r2
 2346 000c 0360     		str	r3, [r0]
 2347 000e 0191     		str	r1, [sp, #4]
 2348 0010 02F01E02 		and	r2, r2, #30
 2349 0014 0546     		mov	r5, r0
 2350 0016 05A9     		add	r1, sp, #20
 2351 0018 01A8     		add	r0, sp, #4
 2352 001a FFF7FEFF 		bl	chk_mounted
 2353 001e 02AA     		add	r2, sp, #8
 2354 0020 0EAB     		add	r3, sp, #56
 2355 0022 CDE90B23 		strd	r2, r3, [sp, #44]
 2356 0026 07F01F08 		and	r8, r7, #31
 2357 002a 07F01C09 		and	r9, r7, #28
 2358 002e 68B1     		cbz	r0, .L687
 2359 0030 0446     		mov	r4, r0
 2360              	.L645:
 2361 0032 B9F1000F 		cmp	r9, #0
 2362 0036 51D1     		bne	.L650
 2363              	.L651:
 2364 0038 A4F10B03 		sub	r3, r4, #11
 2365 003c DBB2     		uxtb	r3, r3
 2366 003e 012B     		cmp	r3, #1
 2367 0040 20D9     		bls	.L668
 2368 0042 092C     		cmp	r4, #9
 2369 0044 1ED0     		beq	.L668
 2370 0046 0598     		ldr	r0, [sp, #20]
 2371 0048 0C30     		adds	r0, r0, #12
 2372 004a 18E0     		b	.L649
 2373              	.L687:
 2374 004c 0199     		ldr	r1, [sp, #4]
 2375 004e 05A8     		add	r0, sp, #20
 2376 0050 FFF7FEFF 		bl	follow_path
 2377 0054 0A9E     		ldr	r6, [sp, #40]
 2378 0056 0446     		mov	r4, r0
 2379 0058 0028     		cmp	r0, #0
 2380 005a EAD1     		bne	.L645
 2381 005c 002E     		cmp	r6, #0
 2382 005e 00F08A80 		beq	.L646
 2383 0062 F37A     		ldrb	r3, [r6, #11]	@ zero_extendqisi2
 2384 0064 B9F1000F 		cmp	r9, #0
 2385 0068 11D0     		beq	.L688
 2386 006a 13F0110F 		tst	r3, #17
 2387 006e 40F08C80 		bne	.L689
 2388 0072 7C07     		lsls	r4, r7, #29
 2389 0074 40F18380 		bpl	.L690
 2390 0078 0598     		ldr	r0, [sp, #20]
 2391 007a 0824     		movs	r4, #8
 2392 007c 0C30     		adds	r0, r0, #12
 2393              	.L649:
 2394 007e 2146     		mov	r1, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 43


 2395 0080 FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 2396              	.L668:
 2397 0084 2046     		mov	r0, r4
 2398 0086 0DF50F7D 		add	sp, sp, #572
 2399              		@ sp needed
 2400 008a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2401              	.L688:
 2402 008e 059A     		ldr	r2, [sp, #20]
 2403 0090 D906     		lsls	r1, r3, #27
 2404 0092 02F10C00 		add	r0, r2, #12
 2405 0096 6CD4     		bmi	.L691
 2406 0098 B907     		lsls	r1, r7, #30
 2407 009a 01D5     		bpl	.L660
 2408 009c DB07     		lsls	r3, r3, #31
 2409 009e 78D4     		bmi	.L666
 2410              	.L660:
 2411 00a0 3C07     		lsls	r4, r7, #28
 2412 00a2 01D5     		bpl	.L656
 2413              	.L665:
 2414 00a4 48F02008 		orr	r8, r8, #32
 2415              	.L656:
 2416 00a8 136B     		ldr	r3, [r2, #48]
 2417 00aa 85F80680 		strb	r8, [r5, #6]
 2418 00ae C5E90736 		strd	r3, r6, [r5, #28]
 2419 00b2 F47E     		ldrb	r4, [r6, #27]	@ zero_extendqisi2
 2420 00b4 777D     		ldrb	r7, [r6, #21]	@ zero_extendqisi2
 2421 00b6 317D     		ldrb	r1, [r6, #20]	@ zero_extendqisi2
 2422 00b8 B37E     		ldrb	r3, [r6, #26]	@ zero_extendqisi2
 2423 00ba 41EA0721 		orr	r1, r1, r7, lsl #8
 2424 00be 43EA0423 		orr	r3, r3, r4, lsl #8
 2425 00c2 43EA0143 		orr	r3, r3, r1, lsl #16
 2426 00c6 2B61     		str	r3, [r5, #16]
 2427 00c8 F169     		ldr	r1, [r6, #28]	@ unaligned
 2428 00ca D388     		ldrh	r3, [r2, #6]
 2429 00cc AB80     		strh	r3, [r5, #4]	@ movhi
 2430 00ce 0024     		movs	r4, #0
 2431 00d0 E960     		str	r1, [r5, #12]
 2432 00d2 2A60     		str	r2, [r5]
 2433 00d4 AC60     		str	r4, [r5, #8]
 2434 00d6 AC61     		str	r4, [r5, #24]
 2435 00d8 6C62     		str	r4, [r5, #36]
 2436 00da D0E7     		b	.L649
 2437              	.L650:
 2438 00dc 042C     		cmp	r4, #4
 2439 00de ABD1     		bne	.L651
 2440 00e0 05A8     		add	r0, sp, #20
 2441 00e2 FFF7FEFF 		bl	dir_register
 2442 00e6 0446     		mov	r4, r0
 2443 00e8 0028     		cmp	r0, #0
 2444 00ea A5D1     		bne	.L651
 2445 00ec 0A9E     		ldr	r6, [sp, #40]
 2446 00ee 48F00808 		orr	r8, r8, #8
 2447              	.L654:
 2448 00f2 FFF7FEFF 		bl	get_fattime
 2449 00f6 F27E     		ldrb	r2, [r6, #27]	@ zero_extendqisi2
 2450 00f8 747D     		ldrb	r4, [r6, #21]	@ zero_extendqisi2
 2451 00fa 377D     		ldrb	r7, [r6, #20]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 44


 2452 00fc B17E     		ldrb	r1, [r6, #26]	@ zero_extendqisi2
 2453 00fe B073     		strb	r0, [r6, #14]
 2454 0100 C0F30723 		ubfx	r3, r0, #8, #8
 2455 0104 41EA0221 		orr	r1, r1, r2, lsl #8
 2456 0108 F373     		strb	r3, [r6, #15]
 2457 010a 47EA0427 		orr	r7, r7, r4, lsl #8
 2458 010e 030C     		lsrs	r3, r0, #16
 2459 0110 059A     		ldr	r2, [sp, #20]
 2460 0112 3374     		strb	r3, [r6, #16]
 2461 0114 000E     		lsrs	r0, r0, #24
 2462 0116 0023     		movs	r3, #0
 2463 0118 7074     		strb	r0, [r6, #17]
 2464 011a 51EA0747 		orrs	r7, r1, r7, lsl #16
 2465 011e 4FF00100 		mov	r0, #1
 2466 0122 F372     		strb	r3, [r6, #11]
 2467 0124 3377     		strb	r3, [r6, #28]
 2468 0126 7377     		strb	r3, [r6, #29]
 2469 0128 B377     		strb	r3, [r6, #30]
 2470 012a F377     		strb	r3, [r6, #31]
 2471 012c B376     		strb	r3, [r6, #26]
 2472 012e F376     		strb	r3, [r6, #27]
 2473 0130 3375     		strb	r3, [r6, #20]
 2474 0132 7375     		strb	r3, [r6, #21]
 2475 0134 1071     		strb	r0, [r2, #4]
 2476 0136 19D0     		beq	.L657
 2477 0138 8742     		cmp	r7, r0
 2478 013a 2CD0     		beq	.L686
 2479 013c D369     		ldr	r3, [r2, #28]
 2480 013e 9F42     		cmp	r7, r3
 2481 0140 29D2     		bcs	.L686
 2482 0142 3946     		mov	r1, r7
 2483 0144 1046     		mov	r0, r2
 2484 0146 D2F83090 		ldr	r9, [r2, #48]
 2485 014a FFF7FEFF 		bl	remove_chain.part.8
 2486 014e 0446     		mov	r4, r0
 2487 0150 0028     		cmp	r0, #0
 2488 0152 7FF471AF 		bne	.L651
 2489 0156 0598     		ldr	r0, [sp, #20]
 2490 0158 013F     		subs	r7, r7, #1
 2491 015a 4946     		mov	r1, r9
 2492 015c 0761     		str	r7, [r0, #16]
 2493 015e FFF7FEFF 		bl	move_window
 2494 0162 0446     		mov	r4, r0
 2495 0164 0028     		cmp	r0, #0
 2496 0166 7FF467AF 		bne	.L651
 2497 016a 059A     		ldr	r2, [sp, #20]
 2498              	.L657:
 2499 016c 02F10C00 		add	r0, r2, #12
 2500 0170 98E7     		b	.L665
 2501              	.L691:
 2502 0172 0424     		movs	r4, #4
 2503 0174 83E7     		b	.L649
 2504              	.L646:
 2505 0176 0598     		ldr	r0, [sp, #20]
 2506 0178 0624     		movs	r4, #6
 2507 017a 0C30     		adds	r0, r0, #12
 2508 017c 7FE7     		b	.L649
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 45


 2509              	.L690:
 2510 017e 3807     		lsls	r0, r7, #28
 2511 0180 B7D4     		bmi	.L654
 2512 0182 059A     		ldr	r2, [sp, #20]
 2513 0184 02F10C00 		add	r0, r2, #12
 2514 0188 8EE7     		b	.L656
 2515              	.L689:
 2516 018a 0598     		ldr	r0, [sp, #20]
 2517 018c 0724     		movs	r4, #7
 2518 018e 0C30     		adds	r0, r0, #12
 2519 0190 75E7     		b	.L649
 2520              	.L666:
 2521 0192 0724     		movs	r4, #7
 2522 0194 73E7     		b	.L649
 2523              	.L686:
 2524 0196 02F10C00 		add	r0, r2, #12
 2525 019a 0224     		movs	r4, #2
 2526 019c 6FE7     		b	.L649
 2527              		.size	f_open, .-f_open
 2528 019e 00BF     		.section	.text.f_read,"ax",%progbits
 2529              		.align	1
 2530              		.p2align 2,,3
 2531              		.global	f_read
 2532              		.syntax unified
 2533              		.thumb
 2534              		.thumb_func
 2535              		.fpu fpv4-sp-d16
 2536              		.type	f_read, %function
 2537              	f_read:
 2538              		@ args = 0, pretend = 0, frame = 0
 2539              		@ frame_needed = 0, uses_anonymous_args = 0
 2540 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2541 0004 9946     		mov	r9, r3
 2542 0006 0023     		movs	r3, #0
 2543 0008 0646     		mov	r6, r0
 2544 000a 8846     		mov	r8, r1
 2545 000c C9F80030 		str	r3, [r9]
 2546 0010 8188     		ldrh	r1, [r0, #4]
 2547 0012 0068     		ldr	r0, [r0]
 2548 0014 1446     		mov	r4, r2
 2549 0016 FFF7FEFF 		bl	validate
 2550 001a 8246     		mov	r10, r0
 2551 001c 50B1     		cbz	r0, .L693
 2552 001e A0F10B03 		sub	r3, r0, #11
 2553 0022 DBB2     		uxtb	r3, r3
 2554 0024 012B     		cmp	r3, #1
 2555 0026 02D9     		bls	.L694
 2556 0028 0928     		cmp	r0, #9
 2557 002a 40F0A180 		bne	.L743
 2558              	.L694:
 2559 002e 5046     		mov	r0, r10
 2560 0030 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2561              	.L693:
 2562 0034 B379     		ldrb	r3, [r6, #6]	@ zero_extendqisi2
 2563 0036 3068     		ldr	r0, [r6]
 2564 0038 1906     		lsls	r1, r3, #24
 2565 003a 00F19180 		bmi	.L741
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 46


 2566 003e DA07     		lsls	r2, r3, #31
 2567 0040 40F1AC80 		bpl	.L744
 2568 0044 D6E90232 		ldrd	r3, r2, [r6, #8]
 2569 0048 D71A     		subs	r7, r2, r3
 2570 004a A742     		cmp	r7, r4
 2571 004c 28BF     		it	cs
 2572 004e 2746     		movcs	r7, r4
 2573 0050 17BB     		cbnz	r7, .L719
 2574 0052 A9E0     		b	.L697
 2575              	.L745:
 2576 0054 B569     		ldr	r5, [r6, #24]
 2577              	.L699:
 2578 0056 C4F50074 		rsb	r4, r4, #512
 2579 005a BC42     		cmp	r4, r7
 2580 005c 2946     		mov	r1, r5
 2581 005e 28BF     		it	cs
 2582 0060 3C46     		movcs	r4, r7
 2583 0062 FFF7FEFF 		bl	move_window
 2584 0066 0028     		cmp	r0, #0
 2585 0068 4BD1     		bne	.L742
 2586 006a B368     		ldr	r3, [r6, #8]
 2587 006c 3168     		ldr	r1, [r6]
 2588 006e C3F30803 		ubfx	r3, r3, #0, #9
 2589 0072 3433     		adds	r3, r3, #52
 2590 0074 1944     		add	r1, r1, r3
 2591 0076 2246     		mov	r2, r4
 2592 0078 4046     		mov	r0, r8
 2593 007a FFF7FEFF 		bl	memcpy
 2594 007e 3068     		ldr	r0, [r6]
 2595              	.L717:
 2596 0080 B368     		ldr	r3, [r6, #8]
 2597 0082 D9F80020 		ldr	r2, [r9]
 2598 0086 2344     		add	r3, r3, r4
 2599 0088 2244     		add	r2, r2, r4
 2600 008a 3F1B     		subs	r7, r7, r4
 2601 008c B360     		str	r3, [r6, #8]
 2602 008e A044     		add	r8, r8, r4
 2603 0090 C9F80020 		str	r2, [r9]
 2604 0094 00F08880 		beq	.L697
 2605              	.L719:
 2606 0098 C3F30804 		ubfx	r4, r3, #0, #9
 2607 009c 002C     		cmp	r4, #0
 2608 009e D9D1     		bne	.L745
 2609 00a0 8178     		ldrb	r1, [r0, #2]	@ zero_extendqisi2
 2610 00a2 5D0A     		lsrs	r5, r3, #9
 2611 00a4 01F1FF3B 		add	fp, r1, #-1
 2612 00a8 0BEA050B 		and	fp, fp, r5
 2613 00ac 1BF0FF0B 		ands	fp, fp, #255
 2614 00b0 39D0     		beq	.L700
 2615 00b2 7569     		ldr	r5, [r6, #20]
 2616              	.L701:
 2617 00b4 C369     		ldr	r3, [r0, #28]
 2618 00b6 023D     		subs	r5, r5, #2
 2619 00b8 023B     		subs	r3, r3, #2
 2620 00ba 9D42     		cmp	r5, r3
 2621 00bc 4CD2     		bcs	.L705
 2622 00be 8278     		ldrb	r2, [r0, #2]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 47


 2623 00c0 C36A     		ldr	r3, [r0, #44]
 2624 00c2 02FB0535 		mla	r5, r2, r5, r3
 2625 00c6 002D     		cmp	r5, #0
 2626 00c8 46D0     		beq	.L705
 2627 00ca 7C0A     		lsrs	r4, r7, #9
 2628 00cc 5D44     		add	r5, r5, fp
 2629 00ce 25D0     		beq	.L713
 2630 00d0 18F0030F 		tst	r8, #3
 2631 00d4 22D1     		bne	.L713
 2632 00d6 0BEB0403 		add	r3, fp, r4
 2633 00da 9342     		cmp	r3, r2
 2634 00dc 88BF     		it	hi
 2635 00de A2EB0B04 		subhi	r4, r2, fp
 2636 00e2 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 2637 00e4 E3B2     		uxtb	r3, r4
 2638 00e6 2A46     		mov	r2, r5
 2639 00e8 4146     		mov	r1, r8
 2640 00ea FFF7FEFF 		bl	disk_read
 2641 00ee 40B9     		cbnz	r0, .L742
 2642 00f0 3068     		ldr	r0, [r6]
 2643 00f2 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 2644 00f4 1BB1     		cbz	r3, .L716
 2645 00f6 036B     		ldr	r3, [r0, #48]
 2646 00f8 5D1B     		subs	r5, r3, r5
 2647 00fa A542     		cmp	r5, r4
 2648 00fc 58D3     		bcc	.L746
 2649              	.L716:
 2650 00fe 6402     		lsls	r4, r4, #9
 2651 0100 BEE7     		b	.L717
 2652              	.L742:
 2653 0102 B379     		ldrb	r3, [r6, #6]	@ zero_extendqisi2
 2654 0104 3268     		ldr	r2, [r6]
 2655 0106 63F07F03 		orn	r3, r3, #127
 2656 010a B371     		strb	r3, [r6, #6]
 2657 010c D068     		ldr	r0, [r2, #12]
 2658 010e 4FF0010A 		mov	r10, #1
 2659 0112 FFF7FEFF 		bl	ff_rel_grant
 2660 0116 5046     		mov	r0, r10
 2661 0118 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2662              	.L713:
 2663 011c B468     		ldr	r4, [r6, #8]
 2664 011e B561     		str	r5, [r6, #24]
 2665 0120 C4F30804 		ubfx	r4, r4, #0, #9
 2666 0124 97E7     		b	.L699
 2667              	.L700:
 2668 0126 33B9     		cbnz	r3, .L702
 2669 0128 3569     		ldr	r5, [r6, #16]
 2670              	.L703:
 2671 012a 012D     		cmp	r5, #1
 2672 012c 14D9     		bls	.L705
 2673 012e 6B1C     		adds	r3, r5, #1
 2674 0130 48D0     		beq	.L747
 2675 0132 7561     		str	r5, [r6, #20]
 2676 0134 BEE7     		b	.L701
 2677              	.L702:
 2678 0136 726A     		ldr	r2, [r6, #36]
 2679 0138 12B3     		cbz	r2, .L704
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 48


 2680 013a B5FBF1F5 		udiv	r5, r5, r1
 2681 013e 5368     		ldr	r3, [r2, #4]
 2682 0140 0432     		adds	r2, r2, #4
 2683 0142 4BB1     		cbz	r3, .L705
 2684 0144 9D42     		cmp	r5, r3
 2685 0146 02D2     		bcs	.L707
 2686 0148 25E0     		b	.L706
 2687              	.L739:
 2688 014a AB42     		cmp	r3, r5
 2689 014c 23D8     		bhi	.L706
 2690              	.L707:
 2691 014e ED1A     		subs	r5, r5, r3
 2692 0150 52F8083F 		ldr	r3, [r2, #8]!
 2693 0154 002B     		cmp	r3, #0
 2694 0156 F8D1     		bne	.L739
 2695              	.L705:
 2696 0158 B379     		ldrb	r3, [r6, #6]	@ zero_extendqisi2
 2697 015a 63F07F03 		orn	r3, r3, #127
 2698 015e B371     		strb	r3, [r6, #6]
 2699              	.L741:
 2700 0160 C068     		ldr	r0, [r0, #12]
 2701 0162 4FF0020A 		mov	r10, #2
 2702 0166 FFF7FEFF 		bl	ff_rel_grant
 2703 016a 5046     		mov	r0, r10
 2704 016c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2705              	.L743:
 2706 0170 3068     		ldr	r0, [r6]
 2707 0172 5146     		mov	r1, r10
 2708 0174 0C30     		adds	r0, r0, #12
 2709 0176 FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 2710 017a 5046     		mov	r0, r10
 2711 017c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2712              	.L704:
 2713 0180 7169     		ldr	r1, [r6, #20]
 2714 0182 0129     		cmp	r1, #1
 2715 0184 E8D9     		bls	.L705
 2716 0186 C369     		ldr	r3, [r0, #28]
 2717 0188 9942     		cmp	r1, r3
 2718 018a E5D2     		bcs	.L705
 2719 018c FFF7FEFF 		bl	get_fat.part.6
 2720 0190 0546     		mov	r5, r0
 2721 0192 3068     		ldr	r0, [r6]
 2722 0194 C9E7     		b	.L703
 2723              	.L706:
 2724 0196 5368     		ldr	r3, [r2, #4]
 2725 0198 1D44     		add	r5, r5, r3
 2726 019a C6E7     		b	.L703
 2727              	.L744:
 2728 019c C068     		ldr	r0, [r0, #12]
 2729 019e FFF7FEFF 		bl	ff_rel_grant
 2730 01a2 4FF0070A 		mov	r10, #7
 2731 01a6 42E7     		b	.L694
 2732              	.L697:
 2733 01a8 C068     		ldr	r0, [r0, #12]
 2734 01aa FFF7FEFF 		bl	ff_rel_grant
 2735 01ae 3EE7     		b	.L694
 2736              	.L746:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 49


 2737 01b0 00F13401 		add	r1, r0, #52
 2738 01b4 4FF40072 		mov	r2, #512
 2739 01b8 08EB4520 		add	r0, r8, r5, lsl #9
 2740 01bc FFF7FEFF 		bl	memcpy
 2741 01c0 3068     		ldr	r0, [r6]
 2742 01c2 9CE7     		b	.L716
 2743              	.L747:
 2744 01c4 B379     		ldrb	r3, [r6, #6]	@ zero_extendqisi2
 2745 01c6 63F07F03 		orn	r3, r3, #127
 2746 01ca B371     		strb	r3, [r6, #6]
 2747 01cc C068     		ldr	r0, [r0, #12]
 2748 01ce FFF7FEFF 		bl	ff_rel_grant
 2749 01d2 4FF0010A 		mov	r10, #1
 2750 01d6 2AE7     		b	.L694
 2751              		.size	f_read, .-f_read
 2752              		.section	.text.f_write,"ax",%progbits
 2753              		.align	1
 2754              		.p2align 2,,3
 2755              		.global	f_write
 2756              		.syntax unified
 2757              		.thumb
 2758              		.thumb_func
 2759              		.fpu fpv4-sp-d16
 2760              		.type	f_write, %function
 2761              	f_write:
 2762              		@ args = 0, pretend = 0, frame = 8
 2763              		@ frame_needed = 0, uses_anonymous_args = 0
 2764 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2765 0004 9846     		mov	r8, r3
 2766 0006 0023     		movs	r3, #0
 2767 0008 83B0     		sub	sp, sp, #12
 2768 000a 0546     		mov	r5, r0
 2769 000c 0F46     		mov	r7, r1
 2770 000e C8F80030 		str	r3, [r8]
 2771 0012 8188     		ldrh	r1, [r0, #4]
 2772 0014 0068     		ldr	r0, [r0]
 2773 0016 1646     		mov	r6, r2
 2774 0018 FFF7FEFF 		bl	validate
 2775 001c 8146     		mov	r9, r0
 2776 001e 58B1     		cbz	r0, .L749
 2777 0020 A0F10B03 		sub	r3, r0, #11
 2778 0024 DBB2     		uxtb	r3, r3
 2779 0026 012B     		cmp	r3, #1
 2780 0028 02D9     		bls	.L750
 2781 002a 0928     		cmp	r0, #9
 2782 002c 40F09680 		bne	.L796
 2783              	.L750:
 2784 0030 4846     		mov	r0, r9
 2785 0032 03B0     		add	sp, sp, #12
 2786              		@ sp needed
 2787 0034 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2788              	.L749:
 2789 0038 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2790 003a 2868     		ldr	r0, [r5]
 2791 003c 1906     		lsls	r1, r3, #24
 2792 003e 00F19A80 		bmi	.L793
 2793 0042 9A07     		lsls	r2, r3, #30
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 50


 2794 0044 40F1F180 		bpl	.L797
 2795 0048 D5E90221 		ldrd	r2, r1, [r5, #8]
 2796 004c F142     		cmn	r1, r6
 2797 004e 7BD2     		bcs	.L753
 2798 0050 002E     		cmp	r6, #0
 2799 0052 79D0     		beq	.L753
 2800 0054 4FF0010A 		mov	r10, #1
 2801 0058 25E0     		b	.L779
 2802              	.L798:
 2803 005a D5F818B0 		ldr	fp, [r5, #24]
 2804              	.L755:
 2805 005e C4F50074 		rsb	r4, r4, #512
 2806 0062 B442     		cmp	r4, r6
 2807 0064 5946     		mov	r1, fp
 2808 0066 28BF     		it	cs
 2809 0068 3446     		movcs	r4, r6
 2810 006a FFF7FEFF 		bl	move_window
 2811 006e 0028     		cmp	r0, #0
 2812 0070 40F0BE80 		bne	.L794
 2813 0074 AB68     		ldr	r3, [r5, #8]
 2814 0076 2868     		ldr	r0, [r5]
 2815 0078 C3F30803 		ubfx	r3, r3, #0, #9
 2816 007c 3433     		adds	r3, r3, #52
 2817 007e 1844     		add	r0, r0, r3
 2818 0080 2246     		mov	r2, r4
 2819 0082 3946     		mov	r1, r7
 2820 0084 FFF7FEFF 		bl	memcpy
 2821 0088 2868     		ldr	r0, [r5]
 2822 008a 80F804A0 		strb	r10, [r0, #4]
 2823              	.L775:
 2824 008e AA68     		ldr	r2, [r5, #8]
 2825 0090 D8F80030 		ldr	r3, [r8]
 2826 0094 2244     		add	r2, r2, r4
 2827 0096 2344     		add	r3, r3, r4
 2828 0098 361B     		subs	r6, r6, r4
 2829 009a AA60     		str	r2, [r5, #8]
 2830 009c 2744     		add	r7, r7, r4
 2831 009e C8F80030 		str	r3, [r8]
 2832 00a2 00F0B380 		beq	.L792
 2833              	.L779:
 2834 00a6 C2F30804 		ubfx	r4, r2, #0, #9
 2835 00aa 002C     		cmp	r4, #0
 2836 00ac D5D1     		bne	.L798
 2837 00ae 8478     		ldrb	r4, [r0, #2]	@ zero_extendqisi2
 2838 00b0 510A     		lsrs	r1, r2, #9
 2839 00b2 631E     		subs	r3, r4, #1
 2840 00b4 0B40     		ands	r3, r3, r1
 2841 00b6 13F0FF03 		ands	r3, r3, #255
 2842 00ba 0BD1     		bne	.L756
 2843 00bc 002A     		cmp	r2, #0
 2844 00be 6CD1     		bne	.L757
 2845 00c0 2969     		ldr	r1, [r5, #16]
 2846 00c2 0029     		cmp	r1, #0
 2847 00c4 00F0A580 		beq	.L799
 2848              	.L758:
 2849 00c8 0129     		cmp	r1, #1
 2850 00ca 50D0     		beq	.L795
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 51


 2851 00cc 4C1C     		adds	r4, r1, #1
 2852 00ce 00F0BE80 		beq	.L800
 2853 00d2 6961     		str	r1, [r5, #20]
 2854              	.L756:
 2855 00d4 016B     		ldr	r1, [r0, #48]
 2856 00d6 AA69     		ldr	r2, [r5, #24]
 2857 00d8 9142     		cmp	r1, r2
 2858 00da 00F08180 		beq	.L801
 2859              	.L767:
 2860 00de 6969     		ldr	r1, [r5, #20]
 2861 00e0 C269     		ldr	r2, [r0, #28]
 2862 00e2 A1F1020B 		sub	fp, r1, #2
 2863 00e6 023A     		subs	r2, r2, #2
 2864 00e8 9345     		cmp	fp, r2
 2865 00ea 40D2     		bcs	.L795
 2866 00ec 8278     		ldrb	r2, [r0, #2]	@ zero_extendqisi2
 2867 00ee C16A     		ldr	r1, [r0, #44]
 2868 00f0 02FB0B11 		mla	r1, r2, fp, r1
 2869 00f4 0029     		cmp	r1, #0
 2870 00f6 3AD0     		beq	.L795
 2871 00f8 740A     		lsrs	r4, r6, #9
 2872 00fa 03EB010B 		add	fp, r3, r1
 2873 00fe 43D0     		beq	.L771
 2874 0100 B907     		lsls	r1, r7, #30
 2875 0102 41D1     		bne	.L771
 2876 0104 1919     		adds	r1, r3, r4
 2877 0106 9142     		cmp	r1, r2
 2878 0108 88BF     		it	hi
 2879 010a D41A     		subhi	r4, r2, r3
 2880 010c E3B2     		uxtb	r3, r4
 2881 010e 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 2882 0110 5A46     		mov	r2, fp
 2883 0112 3946     		mov	r1, r7
 2884 0114 FFF7FEFF 		bl	disk_write
 2885 0118 0346     		mov	r3, r0
 2886 011a 0028     		cmp	r0, #0
 2887 011c 68D1     		bne	.L794
 2888 011e 2868     		ldr	r0, [r5]
 2889 0120 016B     		ldr	r1, [r0, #48]
 2890 0122 A1EB0B01 		sub	r1, r1, fp
 2891 0126 A142     		cmp	r1, r4
 2892 0128 C0F08580 		bcc	.L802
 2893              	.L774:
 2894 012c 6402     		lsls	r4, r4, #9
 2895 012e AEE7     		b	.L775
 2896              	.L760:
 2897 0130 6969     		ldr	r1, [r5, #20]
 2898 0132 0193     		str	r3, [sp, #4]
 2899 0134 FFF7FEFF 		bl	create_chain
 2900 0138 0146     		mov	r1, r0
 2901 013a 019B     		ldr	r3, [sp, #4]
 2902 013c 2868     		ldr	r0, [r5]
 2903 013e 0029     		cmp	r1, #0
 2904 0140 C2D1     		bne	.L758
 2905              	.L805:
 2906 0142 D5E90221 		ldrd	r2, r1, [r5, #8]
 2907 0146 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 52


 2908              	.L753:
 2909 0148 43F02003 		orr	r3, r3, #32
 2910 014c 9142     		cmp	r1, r2
 2911 014e AB71     		strb	r3, [r5, #6]
 2912 0150 38BF     		it	cc
 2913 0152 EA60     		strcc	r2, [r5, #12]
 2914 0154 C068     		ldr	r0, [r0, #12]
 2915 0156 FFF7FEFF 		bl	ff_rel_grant
 2916 015a 69E7     		b	.L750
 2917              	.L796:
 2918 015c 2868     		ldr	r0, [r5]
 2919 015e 4946     		mov	r1, r9
 2920 0160 0C30     		adds	r0, r0, #12
 2921 0162 FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 2922 0166 4846     		mov	r0, r9
 2923 0168 03B0     		add	sp, sp, #12
 2924              		@ sp needed
 2925 016a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2926              	.L795:
 2927 016e AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2928 0170 63F07F03 		orn	r3, r3, #127
 2929 0174 AB71     		strb	r3, [r5, #6]
 2930              	.L793:
 2931 0176 C068     		ldr	r0, [r0, #12]
 2932 0178 FFF7FEFF 		bl	ff_rel_grant
 2933 017c 4FF00209 		mov	r9, #2
 2934 0180 4846     		mov	r0, r9
 2935 0182 03B0     		add	sp, sp, #12
 2936              		@ sp needed
 2937 0184 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2938              	.L771:
 2939 0188 D5E90243 		ldrd	r4, r3, [r5, #8]
 2940 018c 9C42     		cmp	r4, r3
 2941 018e 1ED2     		bcs	.L803
 2942              	.L776:
 2943 0190 C5F818B0 		str	fp, [r5, #24]
 2944 0194 C4F30804 		ubfx	r4, r4, #0, #9
 2945 0198 61E7     		b	.L755
 2946              	.L757:
 2947 019a D5F824C0 		ldr	ip, [r5, #36]
 2948 019e BCF1000F 		cmp	ip, #0
 2949 01a2 C5D0     		beq	.L760
 2950 01a4 B1FBF4F1 		udiv	r1, r1, r4
 2951 01a8 DCF80440 		ldr	r4, [ip, #4]
 2952 01ac 0CF1040C 		add	ip, ip, #4
 2953 01b0 24B9     		cbnz	r4, .L764
 2954 01b2 2BE0     		b	.L792
 2955              	.L804:
 2956 01b4 091B     		subs	r1, r1, r4
 2957 01b6 5CF8084F 		ldr	r4, [ip, #8]!
 2958 01ba 3CB3     		cbz	r4, .L792
 2959              	.L764:
 2960 01bc 8C42     		cmp	r4, r1
 2961 01be F9D9     		bls	.L804
 2962 01c0 DCF80420 		ldr	r2, [ip, #4]
 2963 01c4 1144     		add	r1, r1, r2
 2964 01c6 0029     		cmp	r1, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 53


 2965 01c8 7FF47EAF 		bne	.L758
 2966 01cc B9E7     		b	.L805
 2967              	.L803:
 2968 01ce 0021     		movs	r1, #0
 2969 01d0 FFF7FEFF 		bl	move_window
 2970 01d4 60B9     		cbnz	r0, .L794
 2971 01d6 2868     		ldr	r0, [r5]
 2972 01d8 AC68     		ldr	r4, [r5, #8]
 2973 01da C0F830B0 		str	fp, [r0, #48]
 2974 01de D7E7     		b	.L776
 2975              	.L801:
 2976 01e0 0021     		movs	r1, #0
 2977 01e2 0193     		str	r3, [sp, #4]
 2978 01e4 FFF7FEFF 		bl	move_window
 2979 01e8 10B9     		cbnz	r0, .L794
 2980 01ea 2868     		ldr	r0, [r5]
 2981 01ec 019B     		ldr	r3, [sp, #4]
 2982 01ee 76E7     		b	.L767
 2983              	.L794:
 2984 01f0 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2985 01f2 2A68     		ldr	r2, [r5]
 2986 01f4 63F07F03 		orn	r3, r3, #127
 2987 01f8 AB71     		strb	r3, [r5, #6]
 2988 01fa D068     		ldr	r0, [r2, #12]
 2989 01fc FFF7FEFF 		bl	ff_rel_grant
 2990 0200 4FF00109 		mov	r9, #1
 2991 0204 4846     		mov	r0, r9
 2992 0206 03B0     		add	sp, sp, #12
 2993              		@ sp needed
 2994 0208 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2995              	.L792:
 2996 020c E968     		ldr	r1, [r5, #12]
 2997 020e AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2998 0210 9AE7     		b	.L753
 2999              	.L799:
 3000 0212 1946     		mov	r1, r3
 3001 0214 0193     		str	r3, [sp, #4]
 3002 0216 FFF7FEFF 		bl	create_chain
 3003 021a 0146     		mov	r1, r0
 3004 021c 2861     		str	r0, [r5, #16]
 3005 021e 019B     		ldr	r3, [sp, #4]
 3006 0220 2868     		ldr	r0, [r5]
 3007 0222 0029     		cmp	r1, #0
 3008 0224 7FF450AF 		bne	.L758
 3009 0228 8BE7     		b	.L805
 3010              	.L797:
 3011 022a C068     		ldr	r0, [r0, #12]
 3012 022c FFF7FEFF 		bl	ff_rel_grant
 3013 0230 4FF00709 		mov	r9, #7
 3014 0234 FCE6     		b	.L750
 3015              	.L802:
 3016 0236 07EB4121 		add	r1, r7, r1, lsl #9
 3017 023a 3430     		adds	r0, r0, #52
 3018 023c 4FF40072 		mov	r2, #512
 3019 0240 0193     		str	r3, [sp, #4]
 3020 0242 FFF7FEFF 		bl	memcpy
 3021 0246 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 54


 3022 0248 019B     		ldr	r3, [sp, #4]
 3023 024a 0371     		strb	r3, [r0, #4]
 3024 024c 6EE7     		b	.L774
 3025              	.L800:
 3026 024e AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 3027 0250 63F07F03 		orn	r3, r3, #127
 3028 0254 AB71     		strb	r3, [r5, #6]
 3029 0256 C068     		ldr	r0, [r0, #12]
 3030 0258 FFF7FEFF 		bl	ff_rel_grant
 3031 025c 4FF00109 		mov	r9, #1
 3032 0260 E6E6     		b	.L750
 3033              		.size	f_write, .-f_write
 3034 0262 00BF     		.section	.text.f_sync,"ax",%progbits
 3035              		.align	1
 3036              		.p2align 2,,3
 3037              		.global	f_sync
 3038              		.syntax unified
 3039              		.thumb
 3040              		.thumb_func
 3041              		.fpu fpv4-sp-d16
 3042              		.type	f_sync, %function
 3043              	f_sync:
 3044              		@ args = 0, pretend = 0, frame = 0
 3045              		@ frame_needed = 0, uses_anonymous_args = 0
 3046 0000 38B5     		push	{r3, r4, r5, lr}
 3047 0002 8188     		ldrh	r1, [r0, #4]
 3048 0004 0546     		mov	r5, r0
 3049 0006 0068     		ldr	r0, [r0]
 3050 0008 FFF7FEFF 		bl	validate
 3051 000c 0446     		mov	r4, r0
 3052 000e 0028     		cmp	r0, #0
 3053 0010 3BD1     		bne	.L807
 3054 0012 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 3055 0014 2868     		ldr	r0, [r5]
 3056 0016 9B06     		lsls	r3, r3, #26
 3057 0018 05D4     		bmi	.L808
 3058              	.L815:
 3059 001a 0C30     		adds	r0, r0, #12
 3060 001c 2146     		mov	r1, r4
 3061 001e FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 3062              	.L810:
 3063 0022 2046     		mov	r0, r4
 3064 0024 38BD     		pop	{r3, r4, r5, pc}
 3065              	.L808:
 3066 0026 E969     		ldr	r1, [r5, #28]
 3067 0028 FFF7FEFF 		bl	move_window
 3068 002c 0446     		mov	r4, r0
 3069 002e 60BB     		cbnz	r0, .L807
 3070 0030 2C6A     		ldr	r4, [r5, #32]
 3071 0032 E37A     		ldrb	r3, [r4, #11]	@ zero_extendqisi2
 3072 0034 43F02003 		orr	r3, r3, #32
 3073 0038 E372     		strb	r3, [r4, #11]
 3074 003a EB68     		ldr	r3, [r5, #12]
 3075 003c 2377     		strb	r3, [r4, #28]
 3076 003e AB89     		ldrh	r3, [r5, #12]
 3077 0040 1B0A     		lsrs	r3, r3, #8
 3078 0042 6377     		strb	r3, [r4, #29]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 55


 3079 0044 EB89     		ldrh	r3, [r5, #14]
 3080 0046 A377     		strb	r3, [r4, #30]
 3081 0048 EB7B     		ldrb	r3, [r5, #15]	@ zero_extendqisi2
 3082 004a E377     		strb	r3, [r4, #31]
 3083 004c 2B69     		ldr	r3, [r5, #16]
 3084 004e A376     		strb	r3, [r4, #26]
 3085 0050 2B8A     		ldrh	r3, [r5, #16]
 3086 0052 1B0A     		lsrs	r3, r3, #8
 3087 0054 E376     		strb	r3, [r4, #27]
 3088 0056 6B8A     		ldrh	r3, [r5, #18]
 3089 0058 2375     		strb	r3, [r4, #20]
 3090 005a 6B8A     		ldrh	r3, [r5, #18]
 3091 005c 1B0A     		lsrs	r3, r3, #8
 3092 005e 6375     		strb	r3, [r4, #21]
 3093 0060 FFF7FEFF 		bl	get_fattime
 3094 0064 C0F30721 		ubfx	r1, r0, #8, #8
 3095 0068 020C     		lsrs	r2, r0, #16
 3096 006a 030E     		lsrs	r3, r0, #24
 3097 006c A075     		strb	r0, [r4, #22]
 3098 006e E175     		strb	r1, [r4, #23]
 3099 0070 2276     		strb	r2, [r4, #24]
 3100 0072 6376     		strb	r3, [r4, #25]
 3101 0074 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 3102 0076 2A68     		ldr	r2, [r5]
 3103 0078 23F02003 		bic	r3, r3, #32
 3104 007c 0121     		movs	r1, #1
 3105 007e AB71     		strb	r3, [r5, #6]
 3106 0080 1046     		mov	r0, r2
 3107 0082 1171     		strb	r1, [r2, #4]
 3108 0084 FFF7FEFF 		bl	sync
 3109 0088 0446     		mov	r4, r0
 3110              	.L807:
 3111 008a A4F10B03 		sub	r3, r4, #11
 3112 008e DBB2     		uxtb	r3, r3
 3113 0090 012B     		cmp	r3, #1
 3114 0092 C6D9     		bls	.L810
 3115 0094 092C     		cmp	r4, #9
 3116 0096 C4D0     		beq	.L810
 3117 0098 2868     		ldr	r0, [r5]
 3118 009a BEE7     		b	.L815
 3119              		.size	f_sync, .-f_sync
 3120              		.section	.text.f_close,"ax",%progbits
 3121              		.align	1
 3122              		.p2align 2,,3
 3123              		.global	f_close
 3124              		.syntax unified
 3125              		.thumb
 3126              		.thumb_func
 3127              		.fpu fpv4-sp-d16
 3128              		.type	f_close, %function
 3129              	f_close:
 3130              		@ args = 0, pretend = 0, frame = 0
 3131              		@ frame_needed = 0, uses_anonymous_args = 0
 3132 0000 10B5     		push	{r4, lr}
 3133 0002 0446     		mov	r4, r0
 3134 0004 FFF7FEFF 		bl	f_sync
 3135 0008 00B9     		cbnz	r0, .L817
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 56


 3136 000a 2060     		str	r0, [r4]
 3137              	.L817:
 3138 000c 10BD     		pop	{r4, pc}
 3139              		.size	f_close, .-f_close
 3140 000e 00BF     		.section	.text.f_lseek,"ax",%progbits
 3141              		.align	1
 3142              		.p2align 2,,3
 3143              		.global	f_lseek
 3144              		.syntax unified
 3145              		.thumb
 3146              		.thumb_func
 3147              		.fpu fpv4-sp-d16
 3148              		.type	f_lseek, %function
 3149              	f_lseek:
 3150              		@ args = 0, pretend = 0, frame = 0
 3151              		@ frame_needed = 0, uses_anonymous_args = 0
 3152 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3153 0004 0446     		mov	r4, r0
 3154 0006 0E46     		mov	r6, r1
 3155 0008 0068     		ldr	r0, [r0]
 3156 000a A188     		ldrh	r1, [r4, #4]
 3157 000c FFF7FEFF 		bl	validate
 3158 0010 0546     		mov	r5, r0
 3159 0012 48B1     		cbz	r0, .L820
 3160 0014 A0F10B03 		sub	r3, r0, #11
 3161 0018 DBB2     		uxtb	r3, r3
 3162 001a 012B     		cmp	r3, #1
 3163 001c 01D9     		bls	.L821
 3164 001e 0928     		cmp	r0, #9
 3165 0020 64D1     		bne	.L891
 3166              	.L821:
 3167 0022 2846     		mov	r0, r5
 3168 0024 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3169              	.L820:
 3170 0028 A779     		ldrb	r7, [r4, #6]	@ zero_extendqisi2
 3171 002a 3A06     		lsls	r2, r7, #24
 3172 002c 66D4     		bmi	.L892
 3173 002e 626A     		ldr	r2, [r4, #36]
 3174 0030 0AB3     		cbz	r2, .L823
 3175 0032 731C     		adds	r3, r6, #1
 3176 0034 6FD0     		beq	.L893
 3177 0036 E368     		ldr	r3, [r4, #12]
 3178 0038 2068     		ldr	r0, [r4]
 3179 003a 9E42     		cmp	r6, r3
 3180 003c 28BF     		it	cs
 3181 003e 1E46     		movcs	r6, r3
 3182 0040 A660     		str	r6, [r4, #8]
 3183 0042 002E     		cmp	r6, #0
 3184 0044 4BD0     		beq	.L833
 3185 0046 5368     		ldr	r3, [r2, #4]
 3186 0048 90F802C0 		ldrb	ip, [r0, #2]	@ zero_extendqisi2
 3187 004c 06F1FF3E 		add	lr, r6, #-1
 3188 0050 4FEA5E2E 		lsr	lr, lr, #9
 3189 0054 0432     		adds	r2, r2, #4
 3190 0056 BEFBFCF1 		udiv	r1, lr, ip
 3191 005a 33B9     		cbnz	r3, .L885
 3192 005c 8BE0     		b	.L866
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 57


 3193              	.L894:
 3194 005e C91A     		subs	r1, r1, r3
 3195 0060 52F8083F 		ldr	r3, [r2, #8]!
 3196 0064 002B     		cmp	r3, #0
 3197 0066 00F08680 		beq	.L866
 3198              	.L885:
 3199 006a 8B42     		cmp	r3, r1
 3200 006c F7D9     		bls	.L894
 3201 006e 5368     		ldr	r3, [r2, #4]
 3202 0070 0B44     		add	r3, r3, r1
 3203 0072 9A1E     		subs	r2, r3, #2
 3204 0074 81E0     		b	.L834
 3205              	.L823:
 3206 0076 E368     		ldr	r3, [r4, #12]
 3207 0078 B342     		cmp	r3, r6
 3208 007a 03D2     		bcs	.L840
 3209 007c 17F0020F 		tst	r7, #2
 3210 0080 08BF     		it	eq
 3211 0082 1E46     		moveq	r6, r3
 3212              	.L840:
 3213 0084 0023     		movs	r3, #0
 3214 0086 A268     		ldr	r2, [r4, #8]
 3215 0088 A360     		str	r3, [r4, #8]
 3216 008a 2368     		ldr	r3, [r4]
 3217 008c 002E     		cmp	r6, #0
 3218 008e 3BD0     		beq	.L841
 3219 0090 9F78     		ldrb	r7, [r3, #2]	@ zero_extendqisi2
 3220 0092 7F02     		lsls	r7, r7, #9
 3221 0094 002A     		cmp	r2, #0
 3222 0096 39D0     		beq	.L842
 3223 0098 013A     		subs	r2, r2, #1
 3224 009a 711E     		subs	r1, r6, #1
 3225 009c B2FBF7F0 		udiv	r0, r2, r7
 3226 00a0 B1FBF7F1 		udiv	r1, r1, r7
 3227 00a4 8142     		cmp	r1, r0
 3228 00a6 31D3     		bcc	.L842
 3229 00a8 7942     		negs	r1, r7
 3230 00aa 0A40     		ands	r2, r2, r1
 3231 00ac 6169     		ldr	r1, [r4, #20]
 3232 00ae A260     		str	r2, [r4, #8]
 3233 00b0 B61A     		subs	r6, r6, r2
 3234              	.L843:
 3235 00b2 0029     		cmp	r1, #0
 3236 00b4 40F09880 		bne	.L847
 3237 00b8 A268     		ldr	r2, [r4, #8]
 3238              	.L848:
 3239 00ba C2F30800 		ubfx	r0, r2, #0, #9
 3240 00be 0028     		cmp	r0, #0
 3241 00c0 00F00381 		beq	.L895
 3242 00c4 A069     		ldr	r0, [r4, #24]
 3243 00c6 8842     		cmp	r0, r1
 3244 00c8 E068     		ldr	r0, [r4, #12]
 3245 00ca 18BF     		it	ne
 3246 00cc A161     		strne	r1, [r4, #24]
 3247              	.L861:
 3248 00ce 9042     		cmp	r0, r2
 3249 00d0 1AD2     		bcs	.L841
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 58


 3250 00d2 A179     		ldrb	r1, [r4, #6]	@ zero_extendqisi2
 3251 00d4 E260     		str	r2, [r4, #12]
 3252 00d6 41F02002 		orr	r2, r1, #32
 3253 00da 1846     		mov	r0, r3
 3254 00dc A271     		strb	r2, [r4, #6]
 3255              	.L833:
 3256 00de 0C30     		adds	r0, r0, #12
 3257 00e0 2946     		mov	r1, r5
 3258 00e2 FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 3259 00e6 2846     		mov	r0, r5
 3260 00e8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3261              	.L891:
 3262 00ec 2068     		ldr	r0, [r4]
 3263 00ee 2946     		mov	r1, r5
 3264 00f0 0C30     		adds	r0, r0, #12
 3265 00f2 FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 3266 00f6 2846     		mov	r0, r5
 3267 00f8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3268              	.L892:
 3269 00fc 2368     		ldr	r3, [r4]
 3270 00fe D868     		ldr	r0, [r3, #12]
 3271 0100 FFF7FEFF 		bl	ff_rel_grant
 3272 0104 0225     		movs	r5, #2
 3273 0106 8CE7     		b	.L821
 3274              	.L841:
 3275 0108 1846     		mov	r0, r3
 3276 010a E8E7     		b	.L833
 3277              	.L842:
 3278 010c 2169     		ldr	r1, [r4, #16]
 3279 010e 0029     		cmp	r1, #0
 3280 0110 57D0     		beq	.L896
 3281              	.L844:
 3282 0112 6161     		str	r1, [r4, #20]
 3283 0114 CDE7     		b	.L843
 3284              	.L893:
 3285 0116 2669     		ldr	r6, [r4, #16]
 3286 0118 D2F80080 		ldr	r8, [r2]
 3287 011c 02F10409 		add	r9, r2, #4
 3288 0120 002E     		cmp	r6, #0
 3289 0122 41D0     		beq	.L864
 3290 0124 2268     		ldr	r2, [r4]
 3291 0126 0227     		movs	r7, #2
 3292              	.L831:
 3293 0128 B246     		mov	r10, r6
 3294 012a 4FF0000B 		mov	fp, #0
 3295 012e 12E0     		b	.L829
 3296              	.L899:
 3297 0130 D369     		ldr	r3, [r2, #28]
 3298 0132 9A45     		cmp	r10, r3
 3299 0134 16D2     		bcs	.L826
 3300 0136 FFF7FEFF 		bl	get_fat.part.6
 3301 013a 0128     		cmp	r0, #1
 3302 013c 0AF10101 		add	r1, r10, #1
 3303 0140 2268     		ldr	r2, [r4]
 3304 0142 8246     		mov	r10, r0
 3305 0144 0ED9     		bls	.L826
 3306 0146 B0F1FF3F 		cmp	r0, #-1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 59


 3307 014a 1346     		mov	r3, r2
 3308 014c 00F08B80 		beq	.L897
 3309 0150 8142     		cmp	r1, r0
 3310 0152 40F09180 		bne	.L898
 3311              	.L829:
 3312 0156 BAF1010F 		cmp	r10, #1
 3313 015a 5146     		mov	r1, r10
 3314 015c 1046     		mov	r0, r2
 3315 015e 0BF1010B 		add	fp, fp, #1
 3316 0162 E5D8     		bhi	.L899
 3317              	.L826:
 3318 0164 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3319              	.L889:
 3320 0166 63F07F03 		orn	r3, r3, #127
 3321 016a A371     		strb	r3, [r4, #6]
 3322 016c D068     		ldr	r0, [r2, #12]
 3323 016e FFF7FEFF 		bl	ff_rel_grant
 3324 0172 0225     		movs	r5, #2
 3325 0174 55E7     		b	.L821
 3326              	.L866:
 3327 0176 6FF00102 		mvn	r2, #1
 3328              	.L834:
 3329 017a C169     		ldr	r1, [r0, #28]
 3330 017c 6361     		str	r3, [r4, #20]
 3331 017e 8B1E     		subs	r3, r1, #2
 3332 0180 9342     		cmp	r3, r2
 3333 0182 29D9     		bls	.L838
 3334 0184 C36A     		ldr	r3, [r0, #44]
 3335 0186 02FB0C32 		mla	r2, r2, ip, r3
 3336 018a 2AB3     		cbz	r2, .L838
 3337 018c C6F30806 		ubfx	r6, r6, #0, #9
 3338 0190 002E     		cmp	r6, #0
 3339 0192 A4D0     		beq	.L833
 3340 0194 0CF1FF33 		add	r3, ip, #-1
 3341 0198 03EA0E03 		and	r3, r3, lr
 3342 019c A169     		ldr	r1, [r4, #24]
 3343 019e 1344     		add	r3, r3, r2
 3344 01a0 9942     		cmp	r1, r3
 3345 01a2 9CD0     		beq	.L833
 3346 01a4 A361     		str	r3, [r4, #24]
 3347 01a6 9AE7     		b	.L833
 3348              	.L864:
 3349 01a8 2368     		ldr	r3, [r4]
 3350 01aa 0227     		movs	r7, #2
 3351              	.L825:
 3352 01ac 4745     		cmp	r7, r8
 3353 01ae 1760     		str	r7, [r2]
 3354 01b0 04D8     		bhi	.L900
 3355 01b2 0022     		movs	r2, #0
 3356 01b4 1846     		mov	r0, r3
 3357 01b6 C9F80020 		str	r2, [r9]
 3358 01ba 90E7     		b	.L833
 3359              	.L900:
 3360 01bc 1846     		mov	r0, r3
 3361 01be 1125     		movs	r5, #17
 3362 01c0 8DE7     		b	.L833
 3363              	.L896:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 60


 3364 01c2 1846     		mov	r0, r3
 3365 01c4 FFF7FEFF 		bl	create_chain
 3366 01c8 0128     		cmp	r0, #1
 3367 01ca 0146     		mov	r1, r0
 3368 01cc 78D0     		beq	.L901
 3369 01ce 431C     		adds	r3, r0, #1
 3370 01d0 73D0     		beq	.L902
 3371 01d2 2368     		ldr	r3, [r4]
 3372 01d4 2061     		str	r0, [r4, #16]
 3373 01d6 9CE7     		b	.L844
 3374              	.L838:
 3375 01d8 67F07F07 		orn	r7, r7, #127
 3376 01dc A771     		strb	r7, [r4, #6]
 3377 01de C068     		ldr	r0, [r0, #12]
 3378 01e0 FFF7FEFF 		bl	ff_rel_grant
 3379 01e4 0225     		movs	r5, #2
 3380 01e6 1CE7     		b	.L821
 3381              	.L847:
 3382 01e8 BE42     		cmp	r6, r7
 3383 01ea 6CD9     		bls	.L849
 3384              	.L857:
 3385 01ec A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 3386 01ee 9007     		lsls	r0, r2, #30
 3387 01f0 A6EB0706 		sub	r6, r6, r7
 3388 01f4 0CD4     		bmi	.L903
 3389 01f6 0129     		cmp	r1, #1
 3390 01f8 02D9     		bls	.L853
 3391 01fa D869     		ldr	r0, [r3, #28]
 3392 01fc 8142     		cmp	r1, r0
 3393 01fe 2DD3     		bcc	.L904
 3394              	.L853:
 3395 0200 62F07F02 		orn	r2, r2, #127
 3396 0204 A271     		strb	r2, [r4, #6]
 3397 0206 D868     		ldr	r0, [r3, #12]
 3398 0208 FFF7FEFF 		bl	ff_rel_grant
 3399 020c 0225     		movs	r5, #2
 3400 020e 08E7     		b	.L821
 3401              	.L903:
 3402 0210 1846     		mov	r0, r3
 3403 0212 FFF7FEFF 		bl	create_chain
 3404 0216 0146     		mov	r1, r0
 3405 0218 0028     		cmp	r0, #0
 3406 021a 4AD0     		beq	.L905
 3407              	.L851:
 3408 021c 4A1C     		adds	r2, r1, #1
 3409 021e 2368     		ldr	r3, [r4]
 3410 0220 3ED0     		beq	.L906
 3411 0222 0129     		cmp	r1, #1
 3412 0224 38D9     		bls	.L888
 3413 0226 DA69     		ldr	r2, [r3, #28]
 3414 0228 8A42     		cmp	r2, r1
 3415 022a 35D9     		bls	.L888
 3416 022c A268     		ldr	r2, [r4, #8]
 3417 022e 6161     		str	r1, [r4, #20]
 3418 0230 3A44     		add	r2, r2, r7
 3419 0232 B742     		cmp	r7, r6
 3420 0234 A260     		str	r2, [r4, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 61


 3421 0236 D9D3     		bcc	.L857
 3422              	.L852:
 3423 0238 3244     		add	r2, r2, r6
 3424 023a C6F30800 		ubfx	r0, r6, #0, #9
 3425 023e A260     		str	r2, [r4, #8]
 3426 0240 60B3     		cbz	r0, .L867
 3427 0242 D869     		ldr	r0, [r3, #28]
 3428 0244 8F1E     		subs	r7, r1, #2
 3429 0246 0238     		subs	r0, r0, #2
 3430 0248 8742     		cmp	r7, r0
 3431 024a 25D2     		bcs	.L888
 3432 024c 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 3433 024e D86A     		ldr	r0, [r3, #44]
 3434 0250 07FB0101 		mla	r1, r7, r1, r0
 3435 0254 01B3     		cbz	r1, .L888
 3436 0256 01EB5621 		add	r1, r1, r6, lsr #9
 3437 025a 2EE7     		b	.L848
 3438              	.L904:
 3439 025c 1846     		mov	r0, r3
 3440 025e FFF7FEFF 		bl	get_fat.part.6
 3441 0262 0146     		mov	r1, r0
 3442 0264 DAE7     		b	.L851
 3443              	.L897:
 3444 0266 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3445              	.L890:
 3446 0268 63F07F03 		orn	r3, r3, #127
 3447 026c A371     		strb	r3, [r4, #6]
 3448 026e D068     		ldr	r0, [r2, #12]
 3449 0270 FFF7FEFF 		bl	ff_rel_grant
 3450 0274 0125     		movs	r5, #1
 3451 0276 D4E6     		b	.L821
 3452              	.L898:
 3453 0278 0237     		adds	r7, r7, #2
 3454 027a B845     		cmp	r8, r7
 3455 027c 05D3     		bcc	.L830
 3456 027e 4946     		mov	r1, r9
 3457 0280 41F808BB 		str	fp, [r1], #8
 3458 0284 C9F80460 		str	r6, [r9, #4]
 3459 0288 8946     		mov	r9, r1
 3460              	.L830:
 3461 028a D969     		ldr	r1, [r3, #28]
 3462 028c 8142     		cmp	r1, r0
 3463 028e 0646     		mov	r6, r0
 3464 0290 3FF64AAF 		bhi	.L831
 3465 0294 626A     		ldr	r2, [r4, #36]
 3466 0296 89E7     		b	.L825
 3467              	.L888:
 3468 0298 A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 3469 029a B1E7     		b	.L853
 3470              	.L867:
 3471 029c 0146     		mov	r1, r0
 3472 029e 0CE7     		b	.L848
 3473              	.L906:
 3474 02a0 A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 3475 02a2 62F07F02 		orn	r2, r2, #127
 3476 02a6 A271     		strb	r2, [r4, #6]
 3477 02a8 D868     		ldr	r0, [r3, #12]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 62


 3478 02aa FFF7FEFF 		bl	ff_rel_grant
 3479 02ae 0125     		movs	r5, #1
 3480 02b0 B7E6     		b	.L821
 3481              	.L905:
 3482 02b2 3E46     		mov	r6, r7
 3483 02b4 A268     		ldr	r2, [r4, #8]
 3484 02b6 2368     		ldr	r3, [r4]
 3485 02b8 BEE7     		b	.L852
 3486              	.L902:
 3487 02ba A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3488 02bc 2268     		ldr	r2, [r4]
 3489 02be D3E7     		b	.L890
 3490              	.L901:
 3491 02c0 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3492 02c2 2268     		ldr	r2, [r4]
 3493 02c4 4FE7     		b	.L889
 3494              	.L849:
 3495 02c6 A268     		ldr	r2, [r4, #8]
 3496 02c8 B6E7     		b	.L852
 3497              	.L895:
 3498 02ca E068     		ldr	r0, [r4, #12]
 3499 02cc FFE6     		b	.L861
 3500              		.size	f_lseek, .-f_lseek
 3501 02ce 00BF     		.section	.text.f_opendir,"ax",%progbits
 3502              		.align	1
 3503              		.p2align 2,,3
 3504              		.global	f_opendir
 3505              		.syntax unified
 3506              		.thumb
 3507              		.thumb_func
 3508              		.fpu fpv4-sp-d16
 3509              		.type	f_opendir, %function
 3510              	f_opendir:
 3511              		@ args = 0, pretend = 0, frame = 536
 3512              		@ frame_needed = 0, uses_anonymous_args = 0
 3513 0000 30B5     		push	{r4, r5, lr}
 3514 0002 ADF5077D 		sub	sp, sp, #540
 3515 0006 0546     		mov	r5, r0
 3516 0008 0191     		str	r1, [sp, #4]
 3517 000a 01A8     		add	r0, sp, #4
 3518 000c 2946     		mov	r1, r5
 3519 000e 0022     		movs	r2, #0
 3520 0010 FFF7FEFF 		bl	chk_mounted
 3521 0014 68B1     		cbz	r0, .L924
 3522 0016 0446     		mov	r4, r0
 3523 0018 2868     		ldr	r0, [r5]
 3524 001a 0C30     		adds	r0, r0, #12
 3525              	.L914:
 3526 001c A4F10B03 		sub	r3, r4, #11
 3527 0020 DBB2     		uxtb	r3, r3
 3528 0022 012B     		cmp	r3, #1
 3529 0024 01D9     		bls	.L916
 3530 0026 092C     		cmp	r4, #9
 3531 0028 2BD1     		bne	.L913
 3532              	.L916:
 3533 002a 2046     		mov	r0, r4
 3534 002c 0DF5077D 		add	sp, sp, #540
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 63


 3535              		@ sp needed
 3536 0030 30BD     		pop	{r4, r5, pc}
 3537              	.L924:
 3538 0032 03AA     		add	r2, sp, #12
 3539 0034 06AB     		add	r3, sp, #24
 3540 0036 0199     		ldr	r1, [sp, #4]
 3541 0038 C5E90623 		strd	r2, r3, [r5, #24]
 3542 003c 2846     		mov	r0, r5
 3543 003e FFF7FEFF 		bl	follow_path
 3544 0042 0446     		mov	r4, r0
 3545 0044 B8B9     		cbnz	r0, .L909
 3546 0046 6B69     		ldr	r3, [r5, #20]
 3547 0048 2868     		ldr	r0, [r5]
 3548 004a 6BB1     		cbz	r3, .L910
 3549 004c DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 3550 004e D206     		lsls	r2, r2, #27
 3551 0050 1ED5     		bpl	.L911
 3552 0052 5C7D     		ldrb	r4, [r3, #21]	@ zero_extendqisi2
 3553 0054 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 3554 0056 D97E     		ldrb	r1, [r3, #27]	@ zero_extendqisi2
 3555 0058 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 3556 005a 42EA0422 		orr	r2, r2, r4, lsl #8
 3557 005e 43EA0123 		orr	r3, r3, r1, lsl #8
 3558 0062 43EA0243 		orr	r3, r3, r2, lsl #16
 3559 0066 AB60     		str	r3, [r5, #8]
 3560              	.L910:
 3561 0068 C388     		ldrh	r3, [r0, #6]
 3562 006a AB80     		strh	r3, [r5, #4]	@ movhi
 3563 006c 0021     		movs	r1, #0
 3564 006e 2846     		mov	r0, r5
 3565 0070 FFF7FEFF 		bl	dir_sdi
 3566 0074 0446     		mov	r4, r0
 3567              	.L909:
 3568 0076 2868     		ldr	r0, [r5]
 3569 0078 042C     		cmp	r4, #4
 3570 007a 00F10C00 		add	r0, r0, #12
 3571 007e CDD1     		bne	.L914
 3572 0080 0524     		movs	r4, #5
 3573              	.L913:
 3574 0082 2146     		mov	r1, r4
 3575 0084 FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 3576 0088 2046     		mov	r0, r4
 3577 008a 0DF5077D 		add	sp, sp, #540
 3578              		@ sp needed
 3579 008e 30BD     		pop	{r4, r5, pc}
 3580              	.L911:
 3581 0090 0C30     		adds	r0, r0, #12
 3582 0092 0524     		movs	r4, #5
 3583 0094 F5E7     		b	.L913
 3584              		.size	f_opendir, .-f_opendir
 3585 0096 00BF     		.section	.text.f_readdir,"ax",%progbits
 3586              		.align	1
 3587              		.p2align 2,,3
 3588              		.global	f_readdir
 3589              		.syntax unified
 3590              		.thumb
 3591              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 64


 3592              		.fpu fpv4-sp-d16
 3593              		.type	f_readdir, %function
 3594              	f_readdir:
 3595              		@ args = 0, pretend = 0, frame = 528
 3596              		@ frame_needed = 0, uses_anonymous_args = 0
 3597 0000 70B5     		push	{r4, r5, r6, lr}
 3598 0002 0546     		mov	r5, r0
 3599 0004 ADF5047D 		sub	sp, sp, #528
 3600 0008 0E46     		mov	r6, r1
 3601 000a 0068     		ldr	r0, [r0]
 3602 000c A988     		ldrh	r1, [r5, #4]
 3603 000e FFF7FEFF 		bl	validate
 3604 0012 0446     		mov	r4, r0
 3605 0014 A8B9     		cbnz	r0, .L926
 3606 0016 46B3     		cbz	r6, .L938
 3607 0018 01AA     		add	r2, sp, #4
 3608 001a 04AB     		add	r3, sp, #16
 3609 001c C5E90623 		strd	r2, r3, [r5, #24]
 3610 0020 2846     		mov	r0, r5
 3611 0022 FFF7FEFF 		bl	dir_read
 3612 0026 0428     		cmp	r0, #4
 3613 0028 2AD0     		beq	.L939
 3614 002a 48B9     		cbnz	r0, .L933
 3615              	.L929:
 3616 002c 3146     		mov	r1, r6
 3617 002e 2846     		mov	r0, r5
 3618 0030 FFF7FEFF 		bl	get_fileinfo
 3619 0034 0021     		movs	r1, #0
 3620 0036 2846     		mov	r0, r5
 3621 0038 FFF7FEFF 		bl	dir_next
 3622 003c 0428     		cmp	r0, #4
 3623 003e 1AD0     		beq	.L940
 3624              	.L933:
 3625 0040 0446     		mov	r4, r0
 3626              	.L926:
 3627 0042 A4F10B03 		sub	r3, r4, #11
 3628 0046 DBB2     		uxtb	r3, r3
 3629 0048 012B     		cmp	r3, #1
 3630 004a 01D9     		bls	.L931
 3631 004c 092C     		cmp	r4, #9
 3632 004e 03D1     		bne	.L941
 3633              	.L931:
 3634 0050 2046     		mov	r0, r4
 3635 0052 0DF5047D 		add	sp, sp, #528
 3636              		@ sp needed
 3637 0056 70BD     		pop	{r4, r5, r6, pc}
 3638              	.L941:
 3639 0058 2868     		ldr	r0, [r5]
 3640 005a 0C30     		adds	r0, r0, #12
 3641              	.L930:
 3642 005c 2146     		mov	r1, r4
 3643 005e FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 3644 0062 2046     		mov	r0, r4
 3645 0064 0DF5047D 		add	sp, sp, #528
 3646              		@ sp needed
 3647 0068 70BD     		pop	{r4, r5, r6, pc}
 3648              	.L938:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 65


 3649 006a 0146     		mov	r1, r0
 3650 006c 2846     		mov	r0, r5
 3651 006e FFF7FEFF 		bl	dir_sdi
 3652 0072 0446     		mov	r4, r0
 3653 0074 E5E7     		b	.L926
 3654              	.L940:
 3655 0076 2868     		ldr	r0, [r5]
 3656 0078 0023     		movs	r3, #0
 3657 007a 0C30     		adds	r0, r0, #12
 3658 007c 2B61     		str	r3, [r5, #16]
 3659 007e EDE7     		b	.L930
 3660              	.L939:
 3661 0080 2C61     		str	r4, [r5, #16]
 3662 0082 D3E7     		b	.L929
 3663              		.size	f_readdir, .-f_readdir
 3664              		.section	.text.f_stat,"ax",%progbits
 3665              		.align	1
 3666              		.p2align 2,,3
 3667              		.global	f_stat
 3668              		.syntax unified
 3669              		.thumb
 3670              		.thumb_func
 3671              		.fpu fpv4-sp-d16
 3672              		.type	f_stat, %function
 3673              	f_stat:
 3674              		@ args = 0, pretend = 0, frame = 568
 3675              		@ frame_needed = 0, uses_anonymous_args = 0
 3676 0000 30B5     		push	{r4, r5, lr}
 3677 0002 ADF50F7D 		sub	sp, sp, #572
 3678 0006 0D46     		mov	r5, r1
 3679 0008 0190     		str	r0, [sp, #4]
 3680 000a 05A9     		add	r1, sp, #20
 3681 000c 01A8     		add	r0, sp, #4
 3682 000e 0022     		movs	r2, #0
 3683 0010 FFF7FEFF 		bl	chk_mounted
 3684 0014 A0B1     		cbz	r0, .L952
 3685 0016 0446     		mov	r4, r0
 3686              	.L943:
 3687 0018 A4F10B03 		sub	r3, r4, #11
 3688 001c DBB2     		uxtb	r3, r3
 3689 001e 012B     		cmp	r3, #1
 3690 0020 01D9     		bls	.L946
 3691 0022 092C     		cmp	r4, #9
 3692 0024 03D1     		bne	.L953
 3693              	.L946:
 3694 0026 2046     		mov	r0, r4
 3695 0028 0DF50F7D 		add	sp, sp, #572
 3696              		@ sp needed
 3697 002c 30BD     		pop	{r4, r5, pc}
 3698              	.L953:
 3699 002e 0598     		ldr	r0, [sp, #20]
 3700 0030 0C30     		adds	r0, r0, #12
 3701              	.L945:
 3702 0032 2146     		mov	r1, r4
 3703 0034 FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 3704 0038 2046     		mov	r0, r4
 3705 003a 0DF50F7D 		add	sp, sp, #572
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 66


 3706              		@ sp needed
 3707 003e 30BD     		pop	{r4, r5, pc}
 3708              	.L952:
 3709 0040 02AA     		add	r2, sp, #8
 3710 0042 0EAB     		add	r3, sp, #56
 3711 0044 0199     		ldr	r1, [sp, #4]
 3712 0046 05A8     		add	r0, sp, #20
 3713 0048 CDE90B23 		strd	r2, r3, [sp, #44]
 3714 004c FFF7FEFF 		bl	follow_path
 3715 0050 0446     		mov	r4, r0
 3716 0052 0028     		cmp	r0, #0
 3717 0054 E0D1     		bne	.L943
 3718 0056 0A9B     		ldr	r3, [sp, #40]
 3719 0058 33B1     		cbz	r3, .L944
 3720 005a 05A8     		add	r0, sp, #20
 3721 005c 2946     		mov	r1, r5
 3722 005e FFF7FEFF 		bl	get_fileinfo
 3723 0062 0598     		ldr	r0, [sp, #20]
 3724 0064 0C30     		adds	r0, r0, #12
 3725 0066 E4E7     		b	.L945
 3726              	.L944:
 3727 0068 0598     		ldr	r0, [sp, #20]
 3728 006a 0624     		movs	r4, #6
 3729 006c 0C30     		adds	r0, r0, #12
 3730 006e E0E7     		b	.L945
 3731              		.size	f_stat, .-f_stat
 3732              		.section	.text.f_getfree,"ax",%progbits
 3733              		.align	1
 3734              		.p2align 2,,3
 3735              		.global	f_getfree
 3736              		.syntax unified
 3737              		.thumb
 3738              		.thumb_func
 3739              		.fpu fpv4-sp-d16
 3740              		.type	f_getfree, %function
 3741              	f_getfree:
 3742              		@ args = 0, pretend = 0, frame = 8
 3743              		@ frame_needed = 0, uses_anonymous_args = 0
 3744 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3745 0004 82B0     		sub	sp, sp, #8
 3746 0006 02AB     		add	r3, sp, #8
 3747 0008 1646     		mov	r6, r2
 3748 000a 43F8040D 		str	r0, [r3, #-4]!
 3749 000e 0F46     		mov	r7, r1
 3750 0010 1846     		mov	r0, r3
 3751 0012 1146     		mov	r1, r2
 3752 0014 0022     		movs	r2, #0
 3753 0016 FFF7FEFF 		bl	chk_mounted
 3754 001a 0546     		mov	r5, r0
 3755 001c 58B1     		cbz	r0, .L955
 3756 001e A0F10B03 		sub	r3, r0, #11
 3757 0022 3068     		ldr	r0, [r6]
 3758 0024 DBB2     		uxtb	r3, r3
 3759              	.L956:
 3760 0026 012B     		cmp	r3, #1
 3761 0028 01D9     		bls	.L980
 3762 002a 092D     		cmp	r5, #9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 67


 3763 002c 62D1     		bne	.L963
 3764              	.L980:
 3765 002e 2846     		mov	r0, r5
 3766 0030 02B0     		add	sp, sp, #8
 3767              		@ sp needed
 3768 0032 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3769              	.L955:
 3770 0036 3068     		ldr	r0, [r6]
 3771 0038 C469     		ldr	r4, [r0, #28]
 3772 003a 4369     		ldr	r3, [r0, #20]
 3773 003c A11E     		subs	r1, r4, #2
 3774 003e 8B42     		cmp	r3, r1
 3775 0040 0246     		mov	r2, r0
 3776 0042 08D8     		bhi	.L957
 3777 0044 3B60     		str	r3, [r7]
 3778 0046 0C30     		adds	r0, r0, #12
 3779              	.L958:
 3780 0048 2946     		mov	r1, r5
 3781 004a FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 3782 004e 2846     		mov	r0, r5
 3783 0050 02B0     		add	sp, sp, #8
 3784              		@ sp needed
 3785 0052 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3786              	.L957:
 3787 0056 90F80090 		ldrb	r9, [r0]	@ zero_extendqisi2
 3788 005a B9F1010F 		cmp	r9, #1
 3789 005e 24D0     		beq	.L988
 3790 0060 D0F824A0 		ldr	r10, [r0, #36]
 3791 0064 2B46     		mov	r3, r5
 3792 0066 2A46     		mov	r2, r5
 3793 0068 A846     		mov	r8, r5
 3794              	.L974:
 3795 006a 002A     		cmp	r2, #0
 3796 006c 4CD0     		beq	.L989
 3797              	.L968:
 3798 006e 5978     		ldrb	r1, [r3, #1]	@ zero_extendqisi2
 3799 0070 93F800E0 		ldrb	lr, [r3]	@ zero_extendqisi2
 3800 0074 B9F1020F 		cmp	r9, #2
 3801 0078 4FEA0121 		lsl	r1, r1, #8
 3802 007c 3CD0     		beq	.L990
 3803 007e 1968     		ldr	r1, [r3]	@ unaligned
 3804 0080 31F07041 		bics	r1, r1, #-268435456
 3805 0084 08BF     		it	eq
 3806 0086 08F10108 		addeq	r8, r8, #1
 3807 008a 0433     		adds	r3, r3, #4
 3808 008c 043A     		subs	r2, r2, #4
 3809              	.L972:
 3810 008e 013C     		subs	r4, r4, #1
 3811 0090 EBD1     		bne	.L974
 3812 0092 F523     		movs	r3, #245
 3813              	.L975:
 3814 0094 B9F1030F 		cmp	r9, #3
 3815 0098 08BF     		it	eq
 3816 009a 0122     		moveq	r2, #1
 3817 009c C0F81480 		str	r8, [r0, #20]
 3818 00a0 08BF     		it	eq
 3819 00a2 4271     		strbeq	r2, [r0, #5]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 68


 3820              	.L976:
 3821 00a4 C7F80080 		str	r8, [r7]
 3822 00a8 BDE7     		b	.L956
 3823              	.L988:
 3824 00aa 4FF00209 		mov	r9, #2
 3825 00ae A846     		mov	r8, r5
 3826              	.L959:
 3827 00b0 A145     		cmp	r9, r4
 3828 00b2 4946     		mov	r1, r9
 3829 00b4 1046     		mov	r0, r2
 3830 00b6 09F10109 		add	r9, r9, #1
 3831 00ba 33D2     		bcs	.L987
 3832 00bc FFF7FEFF 		bl	get_fat.part.6
 3833 00c0 431C     		adds	r3, r0, #1
 3834 00c2 11D0     		beq	.L991
 3835 00c4 0128     		cmp	r0, #1
 3836 00c6 2CD0     		beq	.L992
 3837 00c8 08B9     		cbnz	r0, .L966
 3838 00ca 08F10108 		add	r8, r8, #1
 3839              	.L966:
 3840 00ce 3268     		ldr	r2, [r6]
 3841 00d0 D469     		ldr	r4, [r2, #28]
 3842 00d2 4C45     		cmp	r4, r9
 3843 00d4 1046     		mov	r0, r2
 3844 00d6 30D9     		bls	.L993
 3845 00d8 B9F1010F 		cmp	r9, #1
 3846 00dc E8D8     		bhi	.L959
 3847 00de F723     		movs	r3, #247
 3848 00e0 0225     		movs	r5, #2
 3849              	.L961:
 3850 00e2 C2F81480 		str	r8, [r2, #20]
 3851 00e6 DDE7     		b	.L976
 3852              	.L991:
 3853 00e8 3068     		ldr	r0, [r6]
 3854 00ea 0125     		movs	r5, #1
 3855 00ec C0F81480 		str	r8, [r0, #20]
 3856 00f0 C7F80080 		str	r8, [r7]
 3857              	.L963:
 3858 00f4 0C30     		adds	r0, r0, #12
 3859 00f6 A7E7     		b	.L958
 3860              	.L990:
 3861 00f8 51EA0E01 		orrs	r1, r1, lr
 3862 00fc 08BF     		it	eq
 3863 00fe 08F10108 		addeq	r8, r8, #1
 3864 0102 0233     		adds	r3, r3, #2
 3865 0104 023A     		subs	r2, r2, #2
 3866 0106 C2E7     		b	.L972
 3867              	.L989:
 3868 0108 5146     		mov	r1, r10
 3869 010a FFF7FEFF 		bl	move_window
 3870 010e 0246     		mov	r2, r0
 3871 0110 0AF1010A 		add	r10, r10, #1
 3872 0114 3068     		ldr	r0, [r6]
 3873 0116 5AB9     		cbnz	r2, .L969
 3874 0118 00F13403 		add	r3, r0, #52
 3875 011c 4FF40072 		mov	r2, #512
 3876 0120 A5E7     		b	.L968
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 69


 3877              	.L992:
 3878 0122 3068     		ldr	r0, [r6]
 3879              	.L987:
 3880 0124 C0F81480 		str	r8, [r0, #20]
 3881 0128 0225     		movs	r5, #2
 3882 012a C7F80080 		str	r8, [r7]
 3883 012e E1E7     		b	.L963
 3884              	.L969:
 3885 0130 A2F10B03 		sub	r3, r2, #11
 3886 0134 DBB2     		uxtb	r3, r3
 3887 0136 1546     		mov	r5, r2
 3888 0138 ACE7     		b	.L975
 3889              	.L993:
 3890 013a F523     		movs	r3, #245
 3891 013c D1E7     		b	.L961
 3892              		.size	f_getfree, .-f_getfree
 3893 013e 00BF     		.section	.text.f_truncate,"ax",%progbits
 3894              		.align	1
 3895              		.p2align 2,,3
 3896              		.global	f_truncate
 3897              		.syntax unified
 3898              		.thumb
 3899              		.thumb_func
 3900              		.fpu fpv4-sp-d16
 3901              		.type	f_truncate, %function
 3902              	f_truncate:
 3903              		@ args = 0, pretend = 0, frame = 0
 3904              		@ frame_needed = 0, uses_anonymous_args = 0
 3905 0000 70B5     		push	{r4, r5, r6, lr}
 3906 0002 8188     		ldrh	r1, [r0, #4]
 3907 0004 0446     		mov	r4, r0
 3908 0006 0068     		ldr	r0, [r0]
 3909 0008 FFF7FEFF 		bl	validate
 3910 000c 0546     		mov	r5, r0
 3911 000e 48B1     		cbz	r0, .L995
 3912 0010 A0F10B03 		sub	r3, r0, #11
 3913 0014 2268     		ldr	r2, [r4]
 3914 0016 DBB2     		uxtb	r3, r3
 3915              	.L996:
 3916 0018 012B     		cmp	r3, #1
 3917 001a 01D9     		bls	.L1019
 3918 001c 092D     		cmp	r5, #9
 3919 001e 1BD1     		bne	.L1003
 3920              	.L1019:
 3921 0020 2846     		mov	r0, r5
 3922 0022 70BD     		pop	{r4, r5, r6, pc}
 3923              	.L995:
 3924 0024 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3925 0026 2268     		ldr	r2, [r4]
 3926 0028 1806     		lsls	r0, r3, #24
 3927 002a 1CD4     		bmi	.L1032
 3928 002c 9907     		lsls	r1, r3, #30
 3929 002e 1ED5     		bpl	.L1033
 3930 0030 D4E90261 		ldrd	r6, r1, [r4, #8]
 3931 0034 B142     		cmp	r1, r6
 3932 0036 0FD9     		bls	.L1003
 3933 0038 43F02001 		orr	r1, r3, #32
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 70


 3934 003c E660     		str	r6, [r4, #12]
 3935 003e A171     		strb	r1, [r4, #6]
 3936 0040 CEB9     		cbnz	r6, .L1001
 3937 0042 2169     		ldr	r1, [r4, #16]
 3938 0044 0129     		cmp	r1, #1
 3939 0046 02D9     		bls	.L1029
 3940 0048 D069     		ldr	r0, [r2, #28]
 3941 004a 8142     		cmp	r1, r0
 3942 004c 35D3     		bcc	.L1004
 3943              	.L1029:
 3944 004e 63F05F03 		orn	r3, r3, #95
 3945 0052 2561     		str	r5, [r4, #16]
 3946 0054 A371     		strb	r3, [r4, #6]
 3947 0056 0225     		movs	r5, #2
 3948              	.L1003:
 3949 0058 02F10C00 		add	r0, r2, #12
 3950              	.L998:
 3951 005c 2946     		mov	r1, r5
 3952 005e FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 3953 0062 2846     		mov	r0, r5
 3954 0064 70BD     		pop	{r4, r5, r6, pc}
 3955              	.L1032:
 3956 0066 02F10C00 		add	r0, r2, #12
 3957 006a 0225     		movs	r5, #2
 3958 006c F6E7     		b	.L998
 3959              	.L1033:
 3960 006e 02F10C00 		add	r0, r2, #12
 3961 0072 0725     		movs	r5, #7
 3962 0074 F2E7     		b	.L998
 3963              	.L1001:
 3964 0076 6169     		ldr	r1, [r4, #20]
 3965 0078 0129     		cmp	r1, #1
 3966 007a 02D9     		bls	.L1028
 3967 007c D069     		ldr	r0, [r2, #28]
 3968 007e 8142     		cmp	r1, r0
 3969 0080 04D3     		bcc	.L1007
 3970              	.L1028:
 3971 0082 63F05F03 		orn	r3, r3, #95
 3972 0086 A371     		strb	r3, [r4, #6]
 3973 0088 0225     		movs	r5, #2
 3974 008a E5E7     		b	.L1003
 3975              	.L1007:
 3976 008c 1046     		mov	r0, r2
 3977 008e FFF7FEFF 		bl	get_fat.part.6
 3978 0092 431C     		adds	r3, r0, #1
 3979 0094 0646     		mov	r6, r0
 3980 0096 22D0     		beq	.L1034
 3981 0098 0128     		cmp	r0, #1
 3982 009a 2268     		ldr	r2, [r4]
 3983 009c 07D0     		beq	.L1030
 3984 009e D369     		ldr	r3, [r2, #28]
 3985 00a0 9842     		cmp	r0, r3
 3986 00a2 D9D2     		bcs	.L1003
 3987 00a4 6169     		ldr	r1, [r4, #20]
 3988 00a6 0129     		cmp	r1, #1
 3989 00a8 01D9     		bls	.L1030
 3990 00aa 9942     		cmp	r1, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 71


 3991 00ac 1ED3     		bcc	.L1011
 3992              	.L1030:
 3993 00ae A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3994 00b0 63F07F03 		orn	r3, r3, #127
 3995 00b4 A371     		strb	r3, [r4, #6]
 3996 00b6 0225     		movs	r5, #2
 3997 00b8 CEE7     		b	.L1003
 3998              	.L1004:
 3999 00ba 1046     		mov	r0, r2
 4000 00bc FFF7FEFF 		bl	remove_chain.part.8
 4001 00c0 2661     		str	r6, [r4, #16]
 4002 00c2 0546     		mov	r5, r0
 4003              	.L1005:
 4004 00c4 2268     		ldr	r2, [r4]
 4005 00c6 02F10C00 		add	r0, r2, #12
 4006 00ca 002D     		cmp	r5, #0
 4007 00cc C6D0     		beq	.L998
 4008 00ce A5F10B03 		sub	r3, r5, #11
 4009 00d2 A179     		ldrb	r1, [r4, #6]	@ zero_extendqisi2
 4010 00d4 DBB2     		uxtb	r3, r3
 4011              	.L1013:
 4012 00d6 61F07F01 		orn	r1, r1, #127
 4013 00da A171     		strb	r1, [r4, #6]
 4014 00dc 9CE7     		b	.L996
 4015              	.L1034:
 4016 00de A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 4017 00e0 2268     		ldr	r2, [r4]
 4018 00e2 63F07F03 		orn	r3, r3, #127
 4019 00e6 A371     		strb	r3, [r4, #6]
 4020 00e8 0125     		movs	r5, #1
 4021 00ea B5E7     		b	.L1003
 4022              	.L1011:
 4023 00ec 1046     		mov	r0, r2
 4024 00ee 6FF07042 		mvn	r2, #-268435456
 4025 00f2 FFF7FEFF 		bl	put_fat.part.7
 4026 00f6 0546     		mov	r5, r0
 4027 00f8 28B1     		cbz	r0, .L1012
 4028 00fa A0F10B03 		sub	r3, r0, #11
 4029 00fe DBB2     		uxtb	r3, r3
 4030 0100 A179     		ldrb	r1, [r4, #6]	@ zero_extendqisi2
 4031 0102 2268     		ldr	r2, [r4]
 4032 0104 E7E7     		b	.L1013
 4033              	.L1012:
 4034 0106 012E     		cmp	r6, #1
 4035 0108 2068     		ldr	r0, [r4]
 4036 010a 02D9     		bls	.L1031
 4037 010c C369     		ldr	r3, [r0, #28]
 4038 010e 9E42     		cmp	r6, r3
 4039 0110 06D3     		bcc	.L1015
 4040              	.L1031:
 4041 0112 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 4042 0114 63F07F03 		orn	r3, r3, #127
 4043 0118 0C30     		adds	r0, r0, #12
 4044 011a A371     		strb	r3, [r4, #6]
 4045 011c 0225     		movs	r5, #2
 4046 011e 9DE7     		b	.L998
 4047              	.L1015:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 72


 4048 0120 3146     		mov	r1, r6
 4049 0122 FFF7FEFF 		bl	remove_chain.part.8
 4050 0126 0546     		mov	r5, r0
 4051 0128 CCE7     		b	.L1005
 4052              		.size	f_truncate, .-f_truncate
 4053 012a 00BF     		.section	.text.f_unlink,"ax",%progbits
 4054              		.align	1
 4055              		.p2align 2,,3
 4056              		.global	f_unlink
 4057              		.syntax unified
 4058              		.thumb
 4059              		.thumb_func
 4060              		.fpu fpv4-sp-d16
 4061              		.type	f_unlink, %function
 4062              	f_unlink:
 4063              		@ args = 0, pretend = 0, frame = 608
 4064              		@ frame_needed = 0, uses_anonymous_args = 0
 4065 0000 70B5     		push	{r4, r5, r6, lr}
 4066 0002 ADF5187D 		sub	sp, sp, #608
 4067 0006 06A9     		add	r1, sp, #24
 4068 0008 0190     		str	r0, [sp, #4]
 4069 000a 0122     		movs	r2, #1
 4070 000c 01A8     		add	r0, sp, #4
 4071 000e FFF7FEFF 		bl	chk_mounted
 4072 0012 0446     		mov	r4, r0
 4073 0014 50B1     		cbz	r0, .L1061
 4074              	.L1036:
 4075 0016 A4F10B03 		sub	r3, r4, #11
 4076 001a DBB2     		uxtb	r3, r3
 4077 001c 012B     		cmp	r3, #1
 4078 001e 01D9     		bls	.L1047
 4079 0020 092C     		cmp	r4, #9
 4080 0022 15D1     		bne	.L1037
 4081              	.L1047:
 4082 0024 2046     		mov	r0, r4
 4083 0026 0DF5187D 		add	sp, sp, #608
 4084              		@ sp needed
 4085 002a 70BD     		pop	{r4, r5, r6, pc}
 4086              	.L1061:
 4087 002c 03AA     		add	r2, sp, #12
 4088 002e 18AB     		add	r3, sp, #96
 4089 0030 0199     		ldr	r1, [sp, #4]
 4090 0032 06A8     		add	r0, sp, #24
 4091 0034 CDE90C23 		strd	r2, r3, [sp, #48]
 4092 0038 FFF7FEFF 		bl	follow_path
 4093 003c 0446     		mov	r4, r0
 4094 003e 0028     		cmp	r0, #0
 4095 0040 E9D1     		bne	.L1036
 4096 0042 0B9B     		ldr	r3, [sp, #44]
 4097 0044 002B     		cmp	r3, #0
 4098 0046 41D0     		beq	.L1048
 4099 0048 D97A     		ldrb	r1, [r3, #11]	@ zero_extendqisi2
 4100 004a CA07     		lsls	r2, r1, #31
 4101 004c 09D5     		bpl	.L1062
 4102 004e 0724     		movs	r4, #7
 4103              	.L1037:
 4104 0050 0698     		ldr	r0, [sp, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 73


 4105 0052 0C30     		adds	r0, r0, #12
 4106              	.L1041:
 4107 0054 2146     		mov	r1, r4
 4108 0056 FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 4109 005a 2046     		mov	r0, r4
 4110 005c 0DF5187D 		add	sp, sp, #608
 4111              		@ sp needed
 4112 0060 70BD     		pop	{r4, r5, r6, pc}
 4113              	.L1062:
 4114 0062 D87E     		ldrb	r0, [r3, #27]	@ zero_extendqisi2
 4115 0064 9D7E     		ldrb	r5, [r3, #26]	@ zero_extendqisi2
 4116 0066 5C7D     		ldrb	r4, [r3, #21]	@ zero_extendqisi2
 4117 0068 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 4118 006a 45EA0025 		orr	r5, r5, r0, lsl #8
 4119 006e 42EA0423 		orr	r3, r2, r4, lsl #8
 4120 0072 45EA0345 		orr	r5, r5, r3, lsl #16
 4121 0076 CB06     		lsls	r3, r1, #27
 4122 0078 1CD5     		bpl	.L1043
 4123 007a 012D     		cmp	r5, #1
 4124 007c 35D9     		bls	.L1063
 4125 007e 06AE     		add	r6, sp, #24
 4126 0080 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4127 0082 0FAC     		add	r4, sp, #60
 4128 0084 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4129 0086 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4130 0088 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4131 008a 3368     		ldr	r3, [r6]
 4132 008c 2360     		str	r3, [r4]
 4133 008e 0FA8     		add	r0, sp, #60
 4134 0090 0221     		movs	r1, #2
 4135 0092 1195     		str	r5, [sp, #68]
 4136 0094 FFF7FEFF 		bl	dir_sdi
 4137 0098 0446     		mov	r4, r0
 4138 009a 0028     		cmp	r0, #0
 4139 009c BBD1     		bne	.L1036
 4140 009e 0FA8     		add	r0, sp, #60
 4141 00a0 FFF7FEFF 		bl	dir_read
 4142 00a4 0446     		mov	r4, r0
 4143 00a6 18B9     		cbnz	r0, .L1042
 4144 00a8 0698     		ldr	r0, [sp, #24]
 4145 00aa 0724     		movs	r4, #7
 4146 00ac 0C30     		adds	r0, r0, #12
 4147 00ae D1E7     		b	.L1041
 4148              	.L1042:
 4149 00b0 0428     		cmp	r0, #4
 4150 00b2 B0D1     		bne	.L1036
 4151              	.L1043:
 4152 00b4 06A8     		add	r0, sp, #24
 4153 00b6 FFF7FEFF 		bl	dir_remove
 4154 00ba 0446     		mov	r4, r0
 4155 00bc 0028     		cmp	r0, #0
 4156 00be AAD1     		bne	.L1036
 4157 00c0 0698     		ldr	r0, [sp, #24]
 4158 00c2 2DB9     		cbnz	r5, .L1064
 4159              	.L1044:
 4160 00c4 FFF7FEFF 		bl	sync
 4161 00c8 0446     		mov	r4, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 74


 4162 00ca A4E7     		b	.L1036
 4163              	.L1048:
 4164 00cc 0624     		movs	r4, #6
 4165 00ce BFE7     		b	.L1037
 4166              	.L1064:
 4167 00d0 012D     		cmp	r5, #1
 4168 00d2 0ED0     		beq	.L1060
 4169 00d4 C369     		ldr	r3, [r0, #28]
 4170 00d6 9D42     		cmp	r5, r3
 4171 00d8 0BD2     		bcs	.L1060
 4172 00da 2946     		mov	r1, r5
 4173 00dc FFF7FEFF 		bl	remove_chain.part.8
 4174 00e0 0446     		mov	r4, r0
 4175 00e2 0028     		cmp	r0, #0
 4176 00e4 97D1     		bne	.L1036
 4177 00e6 0698     		ldr	r0, [sp, #24]
 4178 00e8 ECE7     		b	.L1044
 4179              	.L1063:
 4180 00ea 0698     		ldr	r0, [sp, #24]
 4181 00ec 0224     		movs	r4, #2
 4182 00ee 0C30     		adds	r0, r0, #12
 4183 00f0 B0E7     		b	.L1041
 4184              	.L1060:
 4185 00f2 0C30     		adds	r0, r0, #12
 4186 00f4 0224     		movs	r4, #2
 4187 00f6 ADE7     		b	.L1041
 4188              		.size	f_unlink, .-f_unlink
 4189              		.section	.text.f_mkdir,"ax",%progbits
 4190              		.align	1
 4191              		.p2align 2,,3
 4192              		.global	f_mkdir
 4193              		.syntax unified
 4194              		.thumb
 4195              		.thumb_func
 4196              		.fpu fpv4-sp-d16
 4197              		.type	f_mkdir, %function
 4198              	f_mkdir:
 4199              		@ args = 0, pretend = 0, frame = 592
 4200              		@ frame_needed = 0, uses_anonymous_args = 0
 4201 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4202 0004 ADF5157D 		sub	sp, sp, #596
 4203 0008 0790     		str	r0, [sp, #28]
 4204 000a FFF7FEFF 		bl	get_fattime
 4205 000e 0BA9     		add	r1, sp, #44
 4206 0010 0746     		mov	r7, r0
 4207 0012 0122     		movs	r2, #1
 4208 0014 07A8     		add	r0, sp, #28
 4209 0016 FFF7FEFF 		bl	chk_mounted
 4210 001a B8B1     		cbz	r0, .L1066
 4211 001c A0F10B05 		sub	r5, r0, #11
 4212 0020 0446     		mov	r4, r0
 4213 0022 0B98     		ldr	r0, [sp, #44]
 4214 0024 EDB2     		uxtb	r5, r5
 4215              	.L1067:
 4216 0026 012D     		cmp	r5, #1
 4217 0028 01D9     		bls	.L1087
 4218 002a 092C     		cmp	r4, #9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 75


 4219 002c 05D1     		bne	.L1072
 4220              	.L1087:
 4221 002e 2046     		mov	r0, r4
 4222 0030 0DF5157D 		add	sp, sp, #596
 4223              		@ sp needed
 4224 0034 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4225              	.L1071:
 4226 0038 0724     		movs	r4, #7
 4227              	.L1072:
 4228 003a 0C30     		adds	r0, r0, #12
 4229              	.L1069:
 4230 003c 2146     		mov	r1, r4
 4231 003e FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 4232 0042 2046     		mov	r0, r4
 4233 0044 0DF5157D 		add	sp, sp, #596
 4234              		@ sp needed
 4235 0048 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4236              	.L1066:
 4237 004c 08AA     		add	r2, sp, #32
 4238 004e 14AB     		add	r3, sp, #80
 4239 0050 0546     		mov	r5, r0
 4240 0052 0799     		ldr	r1, [sp, #28]
 4241 0054 1192     		str	r2, [sp, #68]
 4242 0056 0BA8     		add	r0, sp, #44
 4243 0058 1293     		str	r3, [sp, #72]
 4244 005a FFF7FEFF 		bl	follow_path
 4245 005e 0446     		mov	r4, r0
 4246 0060 0B98     		ldr	r0, [sp, #44]
 4247 0062 2CB1     		cbz	r4, .L1101
 4248 0064 042C     		cmp	r4, #4
 4249 0066 06D0     		beq	.L1070
 4250              	.L1100:
 4251 0068 A4F10B05 		sub	r5, r4, #11
 4252 006c EDB2     		uxtb	r5, r5
 4253 006e DAE7     		b	.L1067
 4254              	.L1101:
 4255 0070 0824     		movs	r4, #8
 4256 0072 0C30     		adds	r0, r0, #12
 4257 0074 E2E7     		b	.L1069
 4258              	.L1070:
 4259 0076 2946     		mov	r1, r5
 4260 0078 FFF7FEFF 		bl	create_chain
 4261 007c 8046     		mov	r8, r0
 4262 007e 0B98     		ldr	r0, [sp, #44]
 4263 0080 B8F1000F 		cmp	r8, #0
 4264 0084 D8D0     		beq	.L1071
 4265 0086 B8F1010F 		cmp	r8, #1
 4266 008a 00F0CD80 		beq	.L1084
 4267 008e B8F1FF3F 		cmp	r8, #-1
 4268 0092 00F0D380 		beq	.L1073
 4269 0096 2946     		mov	r1, r5
 4270 0098 FFF7FEFF 		bl	move_window
 4271 009c 0446     		mov	r4, r0
 4272 009e 0028     		cmp	r0, #0
 4273 00a0 40F09380 		bne	.L1074
 4274 00a4 0B9D     		ldr	r5, [sp, #44]
 4275 00a6 EB69     		ldr	r3, [r5, #28]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 76


 4276 00a8 95F802A0 		ldrb	r10, [r5, #2]	@ zero_extendqisi2
 4277 00ac 023B     		subs	r3, r3, #2
 4278 00ae A8F10202 		sub	r2, r8, #2
 4279 00b2 9A42     		cmp	r2, r3
 4280 00b4 38BF     		it	cc
 4281 00b6 EB6A     		ldrcc	r3, [r5, #44]
 4282 00b8 05F13406 		add	r6, r5, #52
 4283 00bc 34BF     		ite	cc
 4284 00be 02FB0A3B 		mlacc	fp, r2, r10, r3
 4285 00c2 8346     		movcs	fp, r0
 4286 00c4 4FF40072 		mov	r2, #512
 4287 00c8 0021     		movs	r1, #0
 4288 00ca 3046     		mov	r0, r6
 4289 00cc FFF7FEFF 		bl	memset
 4290 00d0 4FEA1849 		lsr	r9, r8, #16
 4291 00d4 C7F30722 		ubfx	r2, r7, #8, #8
 4292 00d8 4FF02031 		mov	r1, #538976288
 4293 00dc 5FFA89F3 		uxtb	r3, r9
 4294 00e0 0092     		str	r2, [sp]
 4295 00e2 C7F30742 		ubfx	r2, r7, #16, #8
 4296 00e6 6963     		str	r1, [r5, #52]	@ unaligned
 4297 00e8 0192     		str	r2, [sp, #4]
 4298 00ea 7160     		str	r1, [r6, #4]	@ unaligned
 4299 00ec 0693     		str	r3, [sp, #24]
 4300 00ee C6F80710 		str	r1, [r6, #7]	@ unaligned
 4301 00f2 5FFA88FE 		uxtb	lr, r8
 4302 00f6 85F84830 		strb	r3, [r5, #72]
 4303 00fa 009B     		ldr	r3, [sp]
 4304 00fc 85F84B30 		strb	r3, [r5, #75]
 4305 0100 CDF808E0 		str	lr, [sp, #8]
 4306 0104 019B     		ldr	r3, [sp, #4]
 4307 0106 85F84C30 		strb	r3, [r5, #76]
 4308 010a FCB2     		uxtb	r4, r7
 4309 010c 4FF02E0C 		mov	ip, #46
 4310 0110 3F0E     		lsrs	r7, r7, #24
 4311 0112 1020     		movs	r0, #16
 4312 0114 C8F3072E 		ubfx	lr, r8, #8, #8
 4313 0118 029B     		ldr	r3, [sp, #8]
 4314 011a 85F834C0 		strb	ip, [r5, #52]
 4315 011e 4FEA1929 		lsr	r9, r9, #8
 4316 0122 85F84990 		strb	r9, [r5, #73]
 4317 0126 85F83F00 		strb	r0, [r5, #63]
 4318 012a 85F84A40 		strb	r4, [r5, #74]
 4319 012e 85F84D70 		strb	r7, [r5, #77]
 4320 0132 85F84E30 		strb	r3, [r5, #78]
 4321 0136 85F84FE0 		strb	lr, [r5, #79]
 4322 013a B168     		ldr	r1, [r6, #8]	@ unaligned
 4323 013c 7068     		ldr	r0, [r6, #4]	@ unaligned
 4324 013e 0494     		str	r4, [sp, #16]
 4325 0140 0597     		str	r7, [sp, #20]
 4326 0142 3468     		ldr	r4, [r6]	@ unaligned
 4327 0144 F768     		ldr	r7, [r6, #12]	@ unaligned
 4328 0146 2F66     		str	r7, [r5, #96]	@ unaligned
 4329 0148 E965     		str	r1, [r5, #92]	@ unaligned
 4330 014a 6C65     		str	r4, [r5, #84]	@ unaligned
 4331 014c A865     		str	r0, [r5, #88]	@ unaligned
 4332 014e 3469     		ldr	r4, [r6, #16]	@ unaligned
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 77


 4333 0150 CDF80CE0 		str	lr, [sp, #12]
 4334 0154 7069     		ldr	r0, [r6, #20]	@ unaligned
 4335 0156 B169     		ldr	r1, [r6, #24]	@ unaligned
 4336 0158 F769     		ldr	r7, [r6, #28]	@ unaligned
 4337 015a E966     		str	r1, [r5, #108]	@ unaligned
 4338 015c 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 4339 015e 2F67     		str	r7, [r5, #112]	@ unaligned
 4340 0160 0329     		cmp	r1, #3
 4341 0162 6C66     		str	r4, [r5, #100]	@ unaligned
 4342 0164 A866     		str	r0, [r5, #104]	@ unaligned
 4343 0166 85F855C0 		strb	ip, [r5, #85]
 4344 016a 0D9A     		ldr	r2, [sp, #52]
 4345 016c 5ED0     		beq	.L1076
 4346              	.L1099:
 4347 016e 110C     		lsrs	r1, r2, #16
 4348 0170 C8B2     		uxtb	r0, r1
 4349 0172 D4B2     		uxtb	r4, r2
 4350 0174 090A     		lsrs	r1, r1, #8
 4351 0176 C2F30722 		ubfx	r2, r2, #8, #8
 4352              	.L1077:
 4353 017a 85F86E40 		strb	r4, [r5, #110]
 4354 017e 85F86F20 		strb	r2, [r5, #111]
 4355 0182 85F86800 		strb	r0, [r5, #104]
 4356 0186 85F86910 		strb	r1, [r5, #105]
 4357 018a BAF1000F 		cmp	r10, #0
 4358 018e 29D0     		beq	.L1078
 4359 0190 0AF1FF37 		add	r7, r10, #-1
 4360 0194 FFB2     		uxtb	r7, r7
 4361 0196 0137     		adds	r7, r7, #1
 4362 0198 5F44     		add	r7, r7, fp
 4363 019a 4FF0010A 		mov	r10, #1
 4364 019e 5C46     		mov	r4, fp
 4365 01a0 2846     		mov	r0, r5
 4366 01a2 05E0     		b	.L1079
 4367              	.L1102:
 4368 01a4 3046     		mov	r0, r6
 4369 01a6 FFF7FEFF 		bl	memset
 4370 01aa A742     		cmp	r7, r4
 4371 01ac 1AD0     		beq	.L1078
 4372 01ae 0B98     		ldr	r0, [sp, #44]
 4373              	.L1079:
 4374 01b0 0463     		str	r4, [r0, #48]
 4375 01b2 0021     		movs	r1, #0
 4376 01b4 80F804A0 		strb	r10, [r0, #4]
 4377 01b8 FFF7FEFF 		bl	move_window
 4378 01bc 0134     		adds	r4, r4, #1
 4379 01be 4FF40072 		mov	r2, #512
 4380 01c2 0146     		mov	r1, r0
 4381 01c4 0028     		cmp	r0, #0
 4382 01c6 EDD0     		beq	.L1102
 4383 01c8 0446     		mov	r4, r0
 4384              	.L1074:
 4385 01ca 0B98     		ldr	r0, [sp, #44]
 4386 01cc C369     		ldr	r3, [r0, #28]
 4387 01ce A4F10B05 		sub	r5, r4, #11
 4388 01d2 9845     		cmp	r8, r3
 4389 01d4 EDB2     		uxtb	r5, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 78


 4390 01d6 BFF426AF 		bcs	.L1067
 4391 01da 4146     		mov	r1, r8
 4392 01dc FFF7FEFF 		bl	remove_chain.part.8
 4393 01e0 0B98     		ldr	r0, [sp, #44]
 4394 01e2 20E7     		b	.L1067
 4395              	.L1078:
 4396 01e4 0BA8     		add	r0, sp, #44
 4397 01e6 FFF7FEFF 		bl	dir_register
 4398 01ea 0446     		mov	r4, r0
 4399 01ec 0028     		cmp	r0, #0
 4400 01ee ECD1     		bne	.L1074
 4401 01f0 109B     		ldr	r3, [sp, #64]
 4402 01f2 019C     		ldr	r4, [sp, #4]
 4403 01f4 1C76     		strb	r4, [r3, #24]
 4404 01f6 059C     		ldr	r4, [sp, #20]
 4405 01f8 0499     		ldr	r1, [sp, #16]
 4406 01fa 5C76     		strb	r4, [r3, #25]
 4407 01fc 029C     		ldr	r4, [sp, #8]
 4408 01fe 0B9A     		ldr	r2, [sp, #44]
 4409 0200 9975     		strb	r1, [r3, #22]
 4410 0202 9C76     		strb	r4, [r3, #26]
 4411 0204 0099     		ldr	r1, [sp]
 4412 0206 039C     		ldr	r4, [sp, #12]
 4413 0208 D975     		strb	r1, [r3, #23]
 4414 020a DC76     		strb	r4, [r3, #27]
 4415 020c 1020     		movs	r0, #16
 4416 020e 069C     		ldr	r4, [sp, #24]
 4417 0210 1C75     		strb	r4, [r3, #20]
 4418 0212 0121     		movs	r1, #1
 4419 0214 D872     		strb	r0, [r3, #11]
 4420 0216 83F81590 		strb	r9, [r3, #21]
 4421 021a 1046     		mov	r0, r2
 4422 021c 1171     		strb	r1, [r2, #4]
 4423 021e FFF7FEFF 		bl	sync
 4424 0222 0446     		mov	r4, r0
 4425 0224 0B98     		ldr	r0, [sp, #44]
 4426 0226 1FE7     		b	.L1100
 4427              	.L1084:
 4428 0228 0224     		movs	r4, #2
 4429 022a 06E7     		b	.L1072
 4430              	.L1076:
 4431 022c A96A     		ldr	r1, [r5, #40]
 4432 022e 9142     		cmp	r1, r2
 4433 0230 9DD1     		bne	.L1099
 4434 0232 0021     		movs	r1, #0
 4435 0234 0846     		mov	r0, r1
 4436 0236 0A46     		mov	r2, r1
 4437 0238 0C46     		mov	r4, r1
 4438 023a 9EE7     		b	.L1077
 4439              	.L1073:
 4440 023c 0124     		movs	r4, #1
 4441 023e FCE6     		b	.L1072
 4442              		.size	f_mkdir, .-f_mkdir
 4443              		.section	.text.f_chmod,"ax",%progbits
 4444              		.align	1
 4445              		.p2align 2,,3
 4446              		.global	f_chmod
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 79


 4447              		.syntax unified
 4448              		.thumb
 4449              		.thumb_func
 4450              		.fpu fpv4-sp-d16
 4451              		.type	f_chmod, %function
 4452              	f_chmod:
 4453              		@ args = 0, pretend = 0, frame = 568
 4454              		@ frame_needed = 0, uses_anonymous_args = 0
 4455 0000 70B5     		push	{r4, r5, r6, lr}
 4456 0002 ADF50E7D 		sub	sp, sp, #568
 4457 0006 0E46     		mov	r6, r1
 4458 0008 0190     		str	r0, [sp, #4]
 4459 000a 1546     		mov	r5, r2
 4460 000c 05A9     		add	r1, sp, #20
 4461 000e 01A8     		add	r0, sp, #4
 4462 0010 0122     		movs	r2, #1
 4463 0012 FFF7FEFF 		bl	chk_mounted
 4464 0016 0446     		mov	r4, r0
 4465 0018 78B1     		cbz	r0, .L1112
 4466              	.L1104:
 4467 001a A4F10B03 		sub	r3, r4, #11
 4468 001e DBB2     		uxtb	r3, r3
 4469 0020 012B     		cmp	r3, #1
 4470 0022 06D9     		bls	.L1107
 4471 0024 092C     		cmp	r4, #9
 4472 0026 04D0     		beq	.L1107
 4473 0028 0598     		ldr	r0, [sp, #20]
 4474 002a 0C30     		adds	r0, r0, #12
 4475              	.L1106:
 4476 002c 2146     		mov	r1, r4
 4477 002e FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 4478              	.L1107:
 4479 0032 2046     		mov	r0, r4
 4480 0034 0DF50E7D 		add	sp, sp, #568
 4481              		@ sp needed
 4482 0038 70BD     		pop	{r4, r5, r6, pc}
 4483              	.L1112:
 4484 003a 02AA     		add	r2, sp, #8
 4485 003c 0EAB     		add	r3, sp, #56
 4486 003e 0199     		ldr	r1, [sp, #4]
 4487 0040 0B92     		str	r2, [sp, #44]
 4488 0042 05A8     		add	r0, sp, #20
 4489 0044 0C93     		str	r3, [sp, #48]
 4490 0046 FFF7FEFF 		bl	follow_path
 4491 004a 0446     		mov	r4, r0
 4492 004c 0028     		cmp	r0, #0
 4493 004e E4D1     		bne	.L1104
 4494 0050 0A99     		ldr	r1, [sp, #40]
 4495 0052 059B     		ldr	r3, [sp, #20]
 4496 0054 69B1     		cbz	r1, .L1113
 4497 0056 CA7A     		ldrb	r2, [r1, #11]	@ zero_extendqisi2
 4498 0058 5640     		eors	r6, r6, r2
 4499 005a 3540     		ands	r5, r5, r6
 4500 005c 05F02705 		and	r5, r5, #39
 4501 0060 5540     		eors	r5, r5, r2
 4502 0062 0122     		movs	r2, #1
 4503 0064 CD72     		strb	r5, [r1, #11]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 80


 4504 0066 1846     		mov	r0, r3
 4505 0068 1A71     		strb	r2, [r3, #4]
 4506 006a FFF7FEFF 		bl	sync
 4507 006e 0446     		mov	r4, r0
 4508 0070 D3E7     		b	.L1104
 4509              	.L1113:
 4510 0072 03F10C00 		add	r0, r3, #12
 4511 0076 0624     		movs	r4, #6
 4512 0078 D8E7     		b	.L1106
 4513              		.size	f_chmod, .-f_chmod
 4514 007a 00BF     		.section	.text.f_utime,"ax",%progbits
 4515              		.align	1
 4516              		.p2align 2,,3
 4517              		.global	f_utime
 4518              		.syntax unified
 4519              		.thumb
 4520              		.thumb_func
 4521              		.fpu fpv4-sp-d16
 4522              		.type	f_utime, %function
 4523              	f_utime:
 4524              		@ args = 0, pretend = 0, frame = 568
 4525              		@ frame_needed = 0, uses_anonymous_args = 0
 4526 0000 30B5     		push	{r4, r5, lr}
 4527 0002 ADF50F7D 		sub	sp, sp, #572
 4528 0006 0D46     		mov	r5, r1
 4529 0008 0190     		str	r0, [sp, #4]
 4530 000a 05A9     		add	r1, sp, #20
 4531 000c 01A8     		add	r0, sp, #4
 4532 000e 0122     		movs	r2, #1
 4533 0010 FFF7FEFF 		bl	chk_mounted
 4534 0014 0446     		mov	r4, r0
 4535 0016 78B1     		cbz	r0, .L1123
 4536              	.L1115:
 4537 0018 A4F10B03 		sub	r3, r4, #11
 4538 001c DBB2     		uxtb	r3, r3
 4539 001e 012B     		cmp	r3, #1
 4540 0020 06D9     		bls	.L1118
 4541 0022 092C     		cmp	r4, #9
 4542 0024 04D0     		beq	.L1118
 4543 0026 0598     		ldr	r0, [sp, #20]
 4544 0028 0C30     		adds	r0, r0, #12
 4545              	.L1117:
 4546 002a 2146     		mov	r1, r4
 4547 002c FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 4548              	.L1118:
 4549 0030 2046     		mov	r0, r4
 4550 0032 0DF50F7D 		add	sp, sp, #572
 4551              		@ sp needed
 4552 0036 30BD     		pop	{r4, r5, pc}
 4553              	.L1123:
 4554 0038 02AA     		add	r2, sp, #8
 4555 003a 0EAB     		add	r3, sp, #56
 4556 003c 0199     		ldr	r1, [sp, #4]
 4557 003e 05A8     		add	r0, sp, #20
 4558 0040 CDE90B23 		strd	r2, r3, [sp, #44]
 4559 0044 FFF7FEFF 		bl	follow_path
 4560 0048 0446     		mov	r4, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 81


 4561 004a 0028     		cmp	r0, #0
 4562 004c E4D1     		bne	.L1115
 4563 004e 0A9A     		ldr	r2, [sp, #40]
 4564 0050 059B     		ldr	r3, [sp, #20]
 4565 0052 82B1     		cbz	r2, .L1124
 4566 0054 E988     		ldrh	r1, [r5, #6]
 4567 0056 9175     		strb	r1, [r2, #22]
 4568 0058 E988     		ldrh	r1, [r5, #6]
 4569 005a 090A     		lsrs	r1, r1, #8
 4570 005c D175     		strb	r1, [r2, #23]
 4571 005e A988     		ldrh	r1, [r5, #4]
 4572 0060 1176     		strb	r1, [r2, #24]
 4573 0062 A988     		ldrh	r1, [r5, #4]
 4574 0064 0124     		movs	r4, #1
 4575 0066 090A     		lsrs	r1, r1, #8
 4576 0068 5176     		strb	r1, [r2, #25]
 4577 006a 1846     		mov	r0, r3
 4578 006c 1C71     		strb	r4, [r3, #4]
 4579 006e FFF7FEFF 		bl	sync
 4580 0072 0446     		mov	r4, r0
 4581 0074 D0E7     		b	.L1115
 4582              	.L1124:
 4583 0076 03F10C00 		add	r0, r3, #12
 4584 007a 0624     		movs	r4, #6
 4585 007c D5E7     		b	.L1117
 4586              		.size	f_utime, .-f_utime
 4587 007e 00BF     		.section	.text.f_rename,"ax",%progbits
 4588              		.align	1
 4589              		.p2align 2,,3
 4590              		.global	f_rename
 4591              		.syntax unified
 4592              		.thumb
 4593              		.thumb_func
 4594              		.fpu fpv4-sp-d16
 4595              		.type	f_rename, %function
 4596              	f_rename:
 4597              		@ args = 0, pretend = 0, frame = 632
 4598              		@ frame_needed = 0, uses_anonymous_args = 0
 4599 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4600 0002 ADF51F7D 		sub	sp, sp, #636
 4601 0006 0E46     		mov	r6, r1
 4602 0008 0190     		str	r0, [sp, #4]
 4603 000a 0CA9     		add	r1, sp, #48
 4604 000c 01A8     		add	r0, sp, #4
 4605 000e 0122     		movs	r2, #1
 4606 0010 FFF7FEFF 		bl	chk_mounted
 4607 0014 0446     		mov	r4, r0
 4608 0016 98B1     		cbz	r0, .L1146
 4609              	.L1126:
 4610 0018 A4F10B03 		sub	r3, r4, #11
 4611 001c DBB2     		uxtb	r3, r3
 4612 001e 012B     		cmp	r3, #1
 4613 0020 01D9     		bls	.L1136
 4614 0022 092C     		cmp	r4, #9
 4615 0024 03D1     		bne	.L1147
 4616              	.L1136:
 4617 0026 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 82


 4618 0028 0DF51F7D 		add	sp, sp, #636
 4619              		@ sp needed
 4620 002c F0BD     		pop	{r4, r5, r6, r7, pc}
 4621              	.L1147:
 4622 002e 0C98     		ldr	r0, [sp, #48]
 4623 0030 0C30     		adds	r0, r0, #12
 4624              	.L1128:
 4625 0032 2146     		mov	r1, r4
 4626 0034 FFF7FEFF 		bl	unlock_fs.isra.10.part.11
 4627 0038 2046     		mov	r0, r4
 4628 003a 0DF51F7D 		add	sp, sp, #636
 4629              		@ sp needed
 4630 003e F0BD     		pop	{r4, r5, r6, r7, pc}
 4631              	.L1146:
 4632 0040 0C9B     		ldr	r3, [sp, #48]
 4633 0042 1593     		str	r3, [sp, #84]
 4634 0044 03AA     		add	r2, sp, #12
 4635 0046 1EAB     		add	r3, sp, #120
 4636 0048 0199     		ldr	r1, [sp, #4]
 4637 004a 1292     		str	r2, [sp, #72]
 4638 004c 0CA8     		add	r0, sp, #48
 4639 004e 1393     		str	r3, [sp, #76]
 4640 0050 FFF7FEFF 		bl	follow_path
 4641 0054 0446     		mov	r4, r0
 4642 0056 0028     		cmp	r0, #0
 4643 0058 DED1     		bne	.L1126
 4644 005a 119C     		ldr	r4, [sp, #68]
 4645 005c 002C     		cmp	r4, #0
 4646 005e 55D0     		beq	.L1148
 4647 0060 54F80B0F 		ldr	r0, [r4, #11]!	@ unaligned
 4648 0064 6168     		ldr	r1, [r4, #4]	@ unaligned
 4649 0066 A268     		ldr	r2, [r4, #8]	@ unaligned
 4650 0068 E368     		ldr	r3, [r4, #12]	@ unaligned
 4651 006a 94F814C0 		ldrb	ip, [r4, #20]	@ zero_extendqisi2
 4652 006e 06AF     		add	r7, sp, #24
 4653 0070 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 4654 0072 0CAD     		add	r5, sp, #48
 4655 0074 2069     		ldr	r0, [r4, #16]	@ unaligned
 4656 0076 3860     		str	r0, [r7]
 4657 0078 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4658 007a 15AC     		add	r4, sp, #84
 4659 007c 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4660 007e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4661 0080 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4662 0082 2B68     		ldr	r3, [r5]
 4663 0084 2360     		str	r3, [r4]
 4664 0086 87F804C0 		strb	ip, [r7, #4]
 4665 008a 3146     		mov	r1, r6
 4666 008c 15A8     		add	r0, sp, #84
 4667 008e FFF7FEFF 		bl	follow_path
 4668 0092 0446     		mov	r4, r0
 4669 0094 0028     		cmp	r0, #0
 4670 0096 3DD0     		beq	.L1149
 4671 0098 0428     		cmp	r0, #4
 4672 009a BDD1     		bne	.L1126
 4673 009c 15A8     		add	r0, sp, #84
 4674 009e FFF7FEFF 		bl	dir_register
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 83


 4675 00a2 0446     		mov	r4, r0
 4676 00a4 0028     		cmp	r0, #0
 4677 00a6 B7D1     		bne	.L1126
 4678 00a8 1A9A     		ldr	r2, [sp, #104]
 4679 00aa DDF81E40 		ldr	r4, [sp, #30]	@ unaligned
 4680 00ae C2F81140 		str	r4, [r2, #17]	@ unaligned
 4681 00b2 DDF81A30 		ldr	r3, [sp, #26]	@ unaligned
 4682 00b6 DDF82240 		ldr	r4, [sp, #34]	@ unaligned
 4683 00ba C2F80D30 		str	r3, [r2, #13]	@ unaligned
 4684 00be C2F81540 		str	r4, [r2, #21]	@ unaligned
 4685 00c2 9DF81810 		ldrb	r1, [sp, #24]	@ zero_extendqisi2
 4686 00c6 DDF82640 		ldr	r4, [sp, #38]	@ unaligned
 4687 00ca C2F81940 		str	r4, [r2, #25]	@ unaligned
 4688 00ce 0C98     		ldr	r0, [sp, #48]
 4689 00d0 BDF82A40 		ldrh	r4, [sp, #42]	@ unaligned
 4690 00d4 A2F81D40 		strh	r4, [r2, #29]	@ unaligned
 4691 00d8 41F02001 		orr	r1, r1, #32
 4692 00dc 9DF82C50 		ldrb	r5, [sp, #44]	@ zero_extendqisi2
 4693 00e0 D172     		strb	r1, [r2, #11]
 4694 00e2 0124     		movs	r4, #1
 4695 00e4 D577     		strb	r5, [r2, #31]
 4696 00e6 0471     		strb	r4, [r0, #4]
 4697 00e8 0E99     		ldr	r1, [sp, #56]
 4698 00ea 179B     		ldr	r3, [sp, #92]
 4699 00ec 9942     		cmp	r1, r3
 4700 00ee 02D0     		beq	.L1131
 4701 00f0 D37A     		ldrb	r3, [r2, #11]	@ zero_extendqisi2
 4702 00f2 DB06     		lsls	r3, r3, #27
 4703 00f4 12D4     		bmi	.L1150
 4704              	.L1131:
 4705 00f6 0CA8     		add	r0, sp, #48
 4706 00f8 FFF7FEFF 		bl	dir_remove
 4707 00fc 0446     		mov	r4, r0
 4708 00fe 0028     		cmp	r0, #0
 4709 0100 8AD1     		bne	.L1126
 4710 0102 0C98     		ldr	r0, [sp, #48]
 4711 0104 FFF7FEFF 		bl	sync
 4712 0108 0446     		mov	r4, r0
 4713 010a 85E7     		b	.L1126
 4714              	.L1148:
 4715 010c 0C98     		ldr	r0, [sp, #48]
 4716 010e 0424     		movs	r4, #4
 4717 0110 0C30     		adds	r0, r0, #12
 4718 0112 8EE7     		b	.L1128
 4719              	.L1149:
 4720 0114 0C98     		ldr	r0, [sp, #48]
 4721 0116 0824     		movs	r4, #8
 4722 0118 0C30     		adds	r0, r0, #12
 4723 011a 8AE7     		b	.L1128
 4724              	.L1150:
 4725 011c D17E     		ldrb	r1, [r2, #27]	@ zero_extendqisi2
 4726 011e 557D     		ldrb	r5, [r2, #21]	@ zero_extendqisi2
 4727 0120 147D     		ldrb	r4, [r2, #20]	@ zero_extendqisi2
 4728 0122 937E     		ldrb	r3, [r2, #26]	@ zero_extendqisi2
 4729 0124 159A     		ldr	r2, [sp, #84]
 4730 0126 43EA0123 		orr	r3, r3, r1, lsl #8
 4731 012a 44EA0524 		orr	r4, r4, r5, lsl #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 84


 4732 012e D169     		ldr	r1, [r2, #28]
 4733 0130 43EA0443 		orr	r3, r3, r4, lsl #16
 4734 0134 023B     		subs	r3, r3, #2
 4735 0136 0239     		subs	r1, r1, #2
 4736 0138 8B42     		cmp	r3, r1
 4737 013a 23D2     		bcs	.L1145
 4738 013c 9178     		ldrb	r1, [r2, #2]	@ zero_extendqisi2
 4739 013e D46A     		ldr	r4, [r2, #44]
 4740 0140 03FB0141 		mla	r1, r3, r1, r4
 4741 0144 F1B1     		cbz	r1, .L1145
 4742 0146 1046     		mov	r0, r2
 4743 0148 FFF7FEFF 		bl	move_window
 4744 014c 0446     		mov	r4, r0
 4745 014e 0028     		cmp	r0, #0
 4746 0150 7FF462AF 		bne	.L1126
 4747 0154 159B     		ldr	r3, [sp, #84]
 4748 0156 93F85520 		ldrb	r2, [r3, #85]	@ zero_extendqisi2
 4749 015a 2E2A     		cmp	r2, #46
 4750 015c CBD1     		bne	.L1131
 4751 015e 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 4752 0160 179A     		ldr	r2, [sp, #92]
 4753 0162 0329     		cmp	r1, #3
 4754 0164 11D0     		beq	.L1151
 4755              	.L1135:
 4756 0166 110C     		lsrs	r1, r2, #16
 4757 0168 C2F30720 		ubfx	r0, r2, #8, #8
 4758 016c 0C0A     		lsrs	r4, r1, #8
 4759 016e 83F86E20 		strb	r2, [r3, #110]
 4760 0172 0122     		movs	r2, #1
 4761 0174 83F86810 		strb	r1, [r3, #104]
 4762 0178 83F86940 		strb	r4, [r3, #105]
 4763 017c 83F86F00 		strb	r0, [r3, #111]
 4764 0180 1A71     		strb	r2, [r3, #4]
 4765 0182 B8E7     		b	.L1131
 4766              	.L1145:
 4767 0184 0C30     		adds	r0, r0, #12
 4768 0186 0224     		movs	r4, #2
 4769 0188 53E7     		b	.L1128
 4770              	.L1151:
 4771 018a 996A     		ldr	r1, [r3, #40]
 4772 018c 9142     		cmp	r1, r2
 4773 018e 08BF     		it	eq
 4774 0190 0022     		moveq	r2, #0
 4775 0192 E8E7     		b	.L1135
 4776              		.size	f_rename, .-f_rename
 4777              		.section	.bss.FatFs,"aw",%nobits
 4778              		.align	2
 4779              		.set	.LANCHOR0,. + 0
 4780              		.type	FatFs, %object
 4781              		.size	FatFs, 8
 4782              	FatFs:
 4783 0000 00000000 		.space	8
 4783      00000000 
 4784              		.section	.bss.Fsid,"aw",%nobits
 4785              		.align	1
 4786              		.set	.LANCHOR1,. + 0
 4787              		.type	Fsid, %object
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 85


 4788              		.size	Fsid, 2
 4789              	Fsid:
 4790 0000 0000     		.space	2
 4791              		.section	.rodata.LfnOfs,"a",%progbits
 4792              		.align	2
 4793              		.set	.LANCHOR2,. + 0
 4794              		.type	LfnOfs, %object
 4795              		.size	LfnOfs, 13
 4796              	LfnOfs:
 4797 0000 01       		.byte	1
 4798 0001 03       		.byte	3
 4799 0002 05       		.byte	5
 4800 0003 07       		.byte	7
 4801 0004 09       		.byte	9
 4802 0005 0E       		.byte	14
 4803 0006 10       		.byte	16
 4804 0007 12       		.byte	18
 4805 0008 14       		.byte	20
 4806 0009 16       		.byte	22
 4807 000a 18       		.byte	24
 4808 000b 1C       		.byte	28
 4809 000c 1E       		.byte	30
 4810              		.section	.rodata.excvt.6244,"a",%progbits
 4811              		.align	2
 4812              		.set	.LANCHOR3,. + 0
 4813              		.type	excvt.6244, %object
 4814              		.size	excvt.6244, 128
 4815              	excvt.6244:
 4816 0000 80       		.byte	-128
 4817 0001 9A       		.byte	-102
 4818 0002 90       		.byte	-112
 4819 0003 B6       		.byte	-74
 4820 0004 8E       		.byte	-114
 4821 0005 B7       		.byte	-73
 4822 0006 8F       		.byte	-113
 4823 0007 80       		.byte	-128
 4824 0008 D2       		.byte	-46
 4825 0009 D3       		.byte	-45
 4826 000a D4       		.byte	-44
 4827 000b D8       		.byte	-40
 4828 000c D7       		.byte	-41
 4829 000d DE       		.byte	-34
 4830 000e 8E       		.byte	-114
 4831 000f 8F       		.byte	-113
 4832 0010 90       		.byte	-112
 4833 0011 92       		.byte	-110
 4834 0012 92       		.byte	-110
 4835 0013 E2       		.byte	-30
 4836 0014 99       		.byte	-103
 4837 0015 E3       		.byte	-29
 4838 0016 EA       		.byte	-22
 4839 0017 EB       		.byte	-21
 4840 0018 59       		.byte	89
 4841 0019 99       		.byte	-103
 4842 001a 9A       		.byte	-102
 4843 001b 9D       		.byte	-99
 4844 001c 9C       		.byte	-100
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 86


 4845 001d 9D       		.byte	-99
 4846 001e 9E       		.byte	-98
 4847 001f 9F       		.byte	-97
 4848 0020 B5       		.byte	-75
 4849 0021 D6       		.byte	-42
 4850 0022 E0       		.byte	-32
 4851 0023 E9       		.byte	-23
 4852 0024 A5       		.byte	-91
 4853 0025 A5       		.byte	-91
 4854 0026 A6       		.byte	-90
 4855 0027 A7       		.byte	-89
 4856 0028 A8       		.byte	-88
 4857 0029 A9       		.byte	-87
 4858 002a AA       		.byte	-86
 4859 002b AB       		.byte	-85
 4860 002c AC       		.byte	-84
 4861 002d 21       		.byte	33
 4862 002e AE       		.byte	-82
 4863 002f AF       		.byte	-81
 4864 0030 B0       		.byte	-80
 4865 0031 B1       		.byte	-79
 4866 0032 B2       		.byte	-78
 4867 0033 B3       		.byte	-77
 4868 0034 B4       		.byte	-76
 4869 0035 B5       		.byte	-75
 4870 0036 B6       		.byte	-74
 4871 0037 B7       		.byte	-73
 4872 0038 B8       		.byte	-72
 4873 0039 B9       		.byte	-71
 4874 003a BA       		.byte	-70
 4875 003b BB       		.byte	-69
 4876 003c BC       		.byte	-68
 4877 003d BD       		.byte	-67
 4878 003e BE       		.byte	-66
 4879 003f BF       		.byte	-65
 4880 0040 C0       		.byte	-64
 4881 0041 C1       		.byte	-63
 4882 0042 C2       		.byte	-62
 4883 0043 C3       		.byte	-61
 4884 0044 C4       		.byte	-60
 4885 0045 C5       		.byte	-59
 4886 0046 C7       		.byte	-57
 4887 0047 C7       		.byte	-57
 4888 0048 C8       		.byte	-56
 4889 0049 C9       		.byte	-55
 4890 004a CA       		.byte	-54
 4891 004b CB       		.byte	-53
 4892 004c CC       		.byte	-52
 4893 004d CD       		.byte	-51
 4894 004e CE       		.byte	-50
 4895 004f CF       		.byte	-49
 4896 0050 D0       		.byte	-48
 4897 0051 D1       		.byte	-47
 4898 0052 D2       		.byte	-46
 4899 0053 D3       		.byte	-45
 4900 0054 D4       		.byte	-44
 4901 0055 D5       		.byte	-43
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccs2hxjn.s 			page 87


 4902 0056 D6       		.byte	-42
 4903 0057 D7       		.byte	-41
 4904 0058 D8       		.byte	-40
 4905 0059 D9       		.byte	-39
 4906 005a DA       		.byte	-38
 4907 005b DB       		.byte	-37
 4908 005c DC       		.byte	-36
 4909 005d DD       		.byte	-35
 4910 005e DE       		.byte	-34
 4911 005f DF       		.byte	-33
 4912 0060 E0       		.byte	-32
 4913 0061 E1       		.byte	-31
 4914 0062 E2       		.byte	-30
 4915 0063 E3       		.byte	-29
 4916 0064 E5       		.byte	-27
 4917 0065 E5       		.byte	-27
 4918 0066 E6       		.byte	-26
 4919 0067 E7       		.byte	-25
 4920 0068 E7       		.byte	-25
 4921 0069 E9       		.byte	-23
 4922 006a EA       		.byte	-22
 4923 006b EB       		.byte	-21
 4924 006c ED       		.byte	-19
 4925 006d ED       		.byte	-19
 4926 006e EE       		.byte	-18
 4927 006f EF       		.byte	-17
 4928 0070 F0       		.byte	-16
 4929 0071 F1       		.byte	-15
 4930 0072 F2       		.byte	-14
 4931 0073 F3       		.byte	-13
 4932 0074 F4       		.byte	-12
 4933 0075 F5       		.byte	-11
 4934 0076 F6       		.byte	-10
 4935 0077 F7       		.byte	-9
 4936 0078 F8       		.byte	-8
 4937 0079 F9       		.byte	-7
 4938 007a FA       		.byte	-6
 4939 007b FB       		.byte	-5
 4940 007c FC       		.byte	-4
 4941 007d FD       		.byte	-3
 4942 007e FE       		.byte	-2
 4943 007f FF       		.byte	-1
 4944              		.section	.rodata.follow_path.str1.4,"aMS",%progbits,1
 4945              		.align	2
 4946              	.LC0:
 4947 0000 222A3A3C 		.ascii	"\"*:<>?|\177\000"
 4947      3E3F7C7F 
 4947      00
 4948 0009 000000   		.space	3
 4949              	.LC1:
 4950 000c 2B2C3B3D 		.ascii	"+,;=[]\000"
 4950      5B5D00
 4951              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
