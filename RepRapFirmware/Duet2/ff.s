ARM GAS  /tmp/cc9D3RON.s 			page 1


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
  14              		.section	.text.get_fileinfo,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	get_fileinfo, %function
  22              	get_fileinfo:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  26 0002 0369     		ldr	r3, [r0, #16]
  27 0004 01F10902 		add	r2, r1, #9
  28 0008 002B     		cmp	r3, #0
  29 000a 45D0     		beq	.L2
  30 000c 4669     		ldr	r6, [r0, #20]
  31 000e 377B     		ldrb	r7, [r6, #12]	@ zero_extendqisi2
  32 0010 751E     		subs	r5, r6, #1
  33 0012 07F0080E 		and	lr, r7, #8
  34 0016 01F11104 		add	r4, r1, #17
  35              	.L5:
  36 001a 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
  37 001e 202B     		cmp	r3, #32
  38 0020 63D0     		beq	.L12
  39 0022 052B     		cmp	r3, #5
  40 0024 5FD0     		beq	.L13
  41 0026 A3F1410C 		sub	ip, r3, #65
  42 002a BEF1000F 		cmp	lr, #0
  43 002e 06D0     		beq	.L4
  44 0030 BCF1190F 		cmp	ip, #25
  45 0034 03F1200C 		add	ip, r3, #32
  46 0038 01D8     		bhi	.L4
  47 003a 5FFA8CF3 		uxtb	r3, ip
  48              	.L4:
  49 003e 02F8013B 		strb	r3, [r2], #1
  50 0042 9442     		cmp	r4, r2
  51 0044 E9D1     		bne	.L5
  52 0046 337A     		ldrb	r3, [r6, #8]	@ zero_extendqisi2
  53 0048 202B     		cmp	r3, #32
  54 004a 2246     		mov	r2, r4
  55 004c 16D0     		beq	.L6
  56              	.L47:
  57 004e 2E23     		movs	r3, #46
ARM GAS  /tmp/cc9D3RON.s 			page 2


  58 0050 02F8043B 		strb	r3, [r2], #4
  59 0054 07F01007 		and	r7, r7, #16
  60 0058 0134     		adds	r4, r4, #1
  61 005a F51D     		adds	r5, r6, #7
  62              	.L8:
  63 005c 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
  64 0060 202B     		cmp	r3, #32
  65 0062 A3F1410C 		sub	ip, r3, #65
  66 0066 46D0     		beq	.L15
  67 0068 27B1     		cbz	r7, .L7
  68 006a BCF1190F 		cmp	ip, #25
  69 006e 9CBF     		itt	ls
  70 0070 2033     		addls	r3, r3, #32
  71 0072 DBB2     		uxtbls	r3, r3
  72              	.L7:
  73 0074 04F8013B 		strb	r3, [r4], #1
  74 0078 A242     		cmp	r2, r4
  75 007a EFD1     		bne	.L8
  76              	.L6:
  77 007c F37A     		ldrb	r3, [r6, #11]	@ zero_extendqisi2
  78 007e 0B72     		strb	r3, [r1, #8]
  79 0080 F369     		ldr	r3, [r6, #28]	@ unaligned
  80 0082 0B60     		str	r3, [r1]
  81 0084 747E     		ldrb	r4, [r6, #25]	@ zero_extendqisi2
  82 0086 337E     		ldrb	r3, [r6, #24]	@ zero_extendqisi2
  83 0088 43EA0423 		orr	r3, r3, r4, lsl #8
  84 008c 8B80     		strh	r3, [r1, #4]	@ movhi
  85 008e F47D     		ldrb	r4, [r6, #23]	@ zero_extendqisi2
  86 0090 B37D     		ldrb	r3, [r6, #22]	@ zero_extendqisi2
  87 0092 43EA0423 		orr	r3, r3, r4, lsl #8
  88 0096 CB80     		strh	r3, [r1, #6]	@ movhi
  89              	.L2:
  90 0098 0025     		movs	r5, #0
  91 009a 1570     		strb	r5, [r2]
  92 009c 8E69     		ldr	r6, [r1, #24]
  93 009e 0EB3     		cbz	r6, .L1
  94 00a0 CB69     		ldr	r3, [r1, #28]
  95 00a2 FBB1     		cbz	r3, .L1
  96 00a4 0369     		ldr	r3, [r0, #16]
  97 00a6 DBB1     		cbz	r3, .L10
  98 00a8 028C     		ldrh	r2, [r0, #32]
  99 00aa 4FF6FF73 		movw	r3, #65535
 100 00ae 9A42     		cmp	r2, r3
 101 00b0 16D0     		beq	.L10
 102 00b2 C769     		ldr	r7, [r0, #28]
 103 00b4 3888     		ldrh	r0, [r7]
 104 00b6 98B1     		cbz	r0, .L10
 105 00b8 0C46     		mov	r4, r1
 106 00ba 0CE0     		b	.L11
 107              	.L46:
 108 00bc E369     		ldr	r3, [r4, #28]
 109 00be 013B     		subs	r3, r3, #1
 110 00c0 AB42     		cmp	r3, r5
 111 00c2 05F10105 		add	r5, r5, #1
 112 00c6 06EB0503 		add	r3, r6, r5
 113 00ca 09D9     		bls	.L10
 114 00cc 03F8010C 		strb	r0, [r3, #-1]
ARM GAS  /tmp/cc9D3RON.s 			page 3


 115 00d0 37F81500 		ldrh	r0, [r7, r5, lsl #1]
 116 00d4 88B1     		cbz	r0, .L45
 117              	.L11:
 118 00d6 0021     		movs	r1, #0
 119 00d8 FFF7FEFF 		bl	ff_convert
 120 00dc 0028     		cmp	r0, #0
 121 00de EDD1     		bne	.L46
 122              	.L10:
 123 00e0 0023     		movs	r3, #0
 124 00e2 3370     		strb	r3, [r6]
 125              	.L1:
 126 00e4 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 127              	.L13:
 128 00e6 E523     		movs	r3, #229
 129 00e8 A9E7     		b	.L4
 130              	.L12:
 131 00ea 337A     		ldrb	r3, [r6, #8]	@ zero_extendqisi2
 132 00ec 1446     		mov	r4, r2
 133 00ee 202B     		cmp	r3, #32
 134 00f0 2246     		mov	r2, r4
 135 00f2 ACD1     		bne	.L47
 136 00f4 C2E7     		b	.L6
 137              	.L15:
 138 00f6 2246     		mov	r2, r4
 139 00f8 C0E7     		b	.L6
 140              	.L45:
 141 00fa 1E46     		mov	r6, r3
 142 00fc F0E7     		b	.L10
 143              		.size	get_fileinfo, .-get_fileinfo
 144 00fe 00BF     		.section	.text.validate.part.1,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu fpv4-sp-d16
 151              		.type	validate.part.1, %function
 152              	validate.part.1:
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155 0000 08B5     		push	{r3, lr}
 156 0002 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 157 0004 FFF7FEFF 		bl	disk_status
 158 0008 10F0010F 		tst	r0, #1
 159 000c 14BF     		ite	ne
 160 000e 0320     		movne	r0, #3
 161 0010 0020     		moveq	r0, #0
 162 0012 08BD     		pop	{r3, pc}
 163              		.size	validate.part.1, .-validate.part.1
 164              		.section	.text.check_fs,"ax",%progbits
 165              		.align	1
 166              		.p2align 2,,3
 167              		.syntax unified
 168              		.thumb
 169              		.thumb_func
 170              		.fpu fpv4-sp-d16
 171              		.type	check_fs, %function
ARM GAS  /tmp/cc9D3RON.s 			page 4


 172              	check_fs:
 173              		@ args = 0, pretend = 0, frame = 0
 174              		@ frame_needed = 0, uses_anonymous_args = 0
 175 0000 10B5     		push	{r4, lr}
 176 0002 0446     		mov	r4, r0
 177 0004 0A46     		mov	r2, r1
 178 0006 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 179 0008 04F13001 		add	r1, r4, #48
 180 000c 0123     		movs	r3, #1
 181 000e FFF7FEFF 		bl	disk_read
 182 0012 D0B9     		cbnz	r0, .L54
 183 0014 94F82F12 		ldrb	r1, [r4, #559]	@ zero_extendqisi2
 184 0018 94F82E32 		ldrb	r3, [r4, #558]	@ zero_extendqisi2
 185 001c 4AF65522 		movw	r2, #43605
 186 0020 43EA0123 		orr	r3, r3, r1, lsl #8
 187 0024 9342     		cmp	r3, r2
 188 0026 0ED1     		bne	.L55
 189 0028 D4F86630 		ldr	r3, [r4, #102]	@ unaligned
 190 002c 084A     		ldr	r2, .L58
 191 002e 23F07F43 		bic	r3, r3, #-16777216
 192 0032 9342     		cmp	r3, r2
 193 0034 06D0     		beq	.L53
 194 0036 D4F88200 		ldr	r0, [r4, #130]	@ unaligned
 195 003a 20F07F40 		bic	r0, r0, #-16777216
 196 003e 801A     		subs	r0, r0, r2
 197 0040 18BF     		it	ne
 198 0042 0120     		movne	r0, #1
 199              	.L53:
 200 0044 10BD     		pop	{r4, pc}
 201              	.L55:
 202 0046 0220     		movs	r0, #2
 203 0048 10BD     		pop	{r4, pc}
 204              	.L54:
 205 004a 0320     		movs	r0, #3
 206 004c 10BD     		pop	{r4, pc}
 207              	.L59:
 208 004e 00BF     		.align	2
 209              	.L58:
 210 0050 46415400 		.word	5521734
 211              		.size	check_fs, .-check_fs
 212              		.section	.text.chk_mounted,"ax",%progbits
 213              		.align	1
 214              		.p2align 2,,3
 215              		.syntax unified
 216              		.thumb
 217              		.thumb_func
 218              		.fpu fpv4-sp-d16
 219              		.type	chk_mounted, %function
 220              	chk_mounted:
 221              		@ args = 0, pretend = 0, frame = 0
 222              		@ frame_needed = 0, uses_anonymous_args = 0
 223 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 224 0004 0368     		ldr	r3, [r0]
 225 0006 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 226 0008 303C     		subs	r4, r4, #48
 227 000a 092C     		cmp	r4, #9
 228 000c 03D8     		bhi	.L84
ARM GAS  /tmp/cc9D3RON.s 			page 5


 229 000e 5D78     		ldrb	r5, [r3, #1]	@ zero_extendqisi2
 230 0010 3A2D     		cmp	r5, #58
 231 0012 00F0CB80 		beq	.L120
 232              	.L84:
 233 0016 0024     		movs	r4, #0
 234              	.L61:
 235 0018 8D4B     		ldr	r3, .L124
 236 001a 53F82460 		ldr	r6, [r3, r4, lsl #2]
 237 001e 0E60     		str	r6, [r1]
 238 0020 002E     		cmp	r6, #0
 239 0022 00F0D680 		beq	.L86
 240 0026 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 241 0028 1546     		mov	r5, r2
 242 002a 6BB1     		cbz	r3, .L63
 243 002c 7078     		ldrb	r0, [r6, #1]	@ zero_extendqisi2
 244 002e FFF7FEFF 		bl	disk_status
 245 0032 C307     		lsls	r3, r0, #31
 246 0034 08D4     		bmi	.L63
 247 0036 002D     		cmp	r5, #0
 248 0038 00F0CE80 		beq	.L87
 249 003c 10F00400 		ands	r0, r0, #4
 250 0040 40F0BE80 		bne	.L65
 251              	.L114:
 252 0044 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 253              	.L63:
 254 0048 E0B2     		uxtb	r0, r4
 255 004a 0023     		movs	r3, #0
 256 004c 7070     		strb	r0, [r6, #1]
 257 004e 3370     		strb	r3, [r6]
 258 0050 FFF7FEFF 		bl	disk_initialize
 259 0054 C707     		lsls	r7, r0, #31
 260 0056 00F1A680 		bmi	.L89
 261 005a 15B1     		cbz	r5, .L64
 262 005c 4407     		lsls	r4, r0, #29
 263 005e 00F1AF80 		bmi	.L65
 264              	.L64:
 265 0062 0021     		movs	r1, #0
 266 0064 3046     		mov	r0, r6
 267 0066 FFF7FEFF 		bl	check_fs
 268 006a 0128     		cmp	r0, #1
 269 006c 00F0AB80 		beq	.L121
 270 0070 0024     		movs	r4, #0
 271              	.L66:
 272 0072 0328     		cmp	r0, #3
 273 0074 00F0A180 		beq	.L91
 274 0078 0028     		cmp	r0, #0
 275 007a 40F0A780 		bne	.L68
 276 007e 96F83C20 		ldrb	r2, [r6, #60]	@ zero_extendqisi2
 277 0082 96F83B30 		ldrb	r3, [r6, #59]	@ zero_extendqisi2
 278 0086 43EA0223 		orr	r3, r3, r2, lsl #8
 279 008a B3F5007F 		cmp	r3, #512
 280 008e 40F09D80 		bne	.L68
 281 0092 96F84720 		ldrb	r2, [r6, #71]	@ zero_extendqisi2
 282 0096 96F84630 		ldrb	r3, [r6, #70]	@ zero_extendqisi2
 283 009a 53EA0223 		orrs	r3, r3, r2, lsl #8
 284 009e 96F84020 		ldrb	r2, [r6, #64]	@ zero_extendqisi2
 285 00a2 08BF     		it	eq
ARM GAS  /tmp/cc9D3RON.s 			page 6


 286 00a4 736D     		ldreq	r3, [r6, #84]
 287 00a6 F361     		str	r3, [r6, #28]
 288 00a8 511E     		subs	r1, r2, #1
 289 00aa 0129     		cmp	r1, #1
 290 00ac F270     		strb	r2, [r6, #3]
 291 00ae 00F28D80 		bhi	.L68
 292 00b2 96F83D10 		ldrb	r1, [r6, #61]	@ zero_extendqisi2
 293 00b6 B170     		strb	r1, [r6, #2]
 294 00b8 0029     		cmp	r1, #0
 295 00ba 00F08780 		beq	.L68
 296 00be 481E     		subs	r0, r1, #1
 297 00c0 0842     		tst	r0, r1
 298 00c2 40F08380 		bne	.L68
 299 00c6 96F84200 		ldrb	r0, [r6, #66]	@ zero_extendqisi2
 300 00ca 96F84150 		ldrb	r5, [r6, #65]	@ zero_extendqisi2
 301 00ce 45EA0025 		orr	r5, r5, r0, lsl #8
 302 00d2 2807     		lsls	r0, r5, #28
 303 00d4 3581     		strh	r5, [r6, #8]	@ movhi
 304 00d6 79D1     		bne	.L68
 305 00d8 96F84470 		ldrb	r7, [r6, #68]	@ zero_extendqisi2
 306 00dc 96F84300 		ldrb	r0, [r6, #67]	@ zero_extendqisi2
 307 00e0 96F83FC0 		ldrb	ip, [r6, #63]	@ zero_extendqisi2
 308 00e4 50EA0720 		orrs	r0, r0, r7, lsl #8
 309 00e8 96F83E70 		ldrb	r7, [r6, #62]	@ zero_extendqisi2
 310 00ec 08BF     		it	eq
 311 00ee 306D     		ldreq	r0, [r6, #80]
 312 00f0 57EA0C2C 		orrs	ip, r7, ip, lsl #8
 313 00f4 6AD0     		beq	.L68
 314 00f6 03FB02F2 		mul	r2, r3, r2
 315 00fa 0CEB1517 		add	r7, ip, r5, lsr #4
 316 00fe 1744     		add	r7, r7, r2
 317 0100 B842     		cmp	r0, r7
 318 0102 63D3     		bcc	.L68
 319 0104 C01B     		subs	r0, r0, r7
 320 0106 B0FBF1F1 		udiv	r1, r0, r1
 321 010a 0029     		cmp	r1, #0
 322 010c 5ED0     		beq	.L68
 323 010e 40F6F57E 		movw	lr, #4085
 324 0112 4FF6F578 		movw	r8, #65525
 325 0116 0CEB0400 		add	r0, ip, r4
 326 011a 2744     		add	r7, r7, r4
 327 011c 7145     		cmp	r1, lr
 328 011e 8CBF     		ite	hi
 329 0120 4FF0020E 		movhi	lr, #2
 330 0124 4FF0010E 		movls	lr, #1
 331 0128 01F1020C 		add	ip, r1, #2
 332 012c 4145     		cmp	r1, r8
 333 012e C6F818C0 		str	ip, [r6, #24]
 334 0132 B762     		str	r7, [r6, #40]
 335 0134 3062     		str	r0, [r6, #32]
 336 0136 58D9     		bls	.L74
 337 0138 002D     		cmp	r5, #0
 338 013a 47D1     		bne	.L68
 339 013c 4FEA8C02 		lsl	r2, ip, #2
 340 0140 02F2FF12 		addw	r2, r2, #511
 341 0144 F16D     		ldr	r1, [r6, #92]
 342 0146 7162     		str	r1, [r6, #36]
ARM GAS  /tmp/cc9D3RON.s 			page 7


 343 0148 B3EB522F 		cmp	r3, r2, lsr #9
 344 014c 3ED3     		bcc	.L68
 345 014e 96F86130 		ldrb	r3, [r6, #97]	@ zero_extendqisi2
 346 0152 96F86020 		ldrb	r2, [r6, #96]	@ zero_extendqisi2
 347 0156 F560     		str	r5, [r6, #12]
 348 0158 42EA0322 		orr	r2, r2, r3, lsl #8
 349 015c 2244     		add	r2, r2, r4
 350 015e 4FF0FF33 		mov	r3, #-1
 351 0162 C6E90432 		strd	r3, r2, [r6, #16]
 352 0166 7571     		strb	r5, [r6, #5]
 353 0168 0123     		movs	r3, #1
 354 016a 06F13001 		add	r1, r6, #48
 355 016e 7078     		ldrb	r0, [r6, #1]	@ zero_extendqisi2
 356 0170 FFF7FEFF 		bl	disk_read
 357 0174 48B9     		cbnz	r0, .L95
 358 0176 96F82F12 		ldrb	r1, [r6, #559]	@ zero_extendqisi2
 359 017a 96F82E32 		ldrb	r3, [r6, #558]	@ zero_extendqisi2
 360 017e 4AF65522 		movw	r2, #43605
 361 0182 43EA0123 		orr	r3, r3, r1, lsl #8
 362 0186 9342     		cmp	r3, r2
 363 0188 4CD0     		beq	.L122
 364              	.L95:
 365 018a 4FF0030E 		mov	lr, #3
 366              	.L80:
 367 018e 314A     		ldr	r2, .L124+4
 368 0190 86F800E0 		strb	lr, [r6]
 369 0194 1388     		ldrh	r3, [r2]
 370 0196 0133     		adds	r3, r3, #1
 371 0198 9BB2     		uxth	r3, r3
 372 019a 0020     		movs	r0, #0
 373 019c 1380     		strh	r3, [r2]	@ movhi
 374 019e F380     		strh	r3, [r6, #6]	@ movhi
 375 01a0 F062     		str	r0, [r6, #44]
 376 01a2 3071     		strb	r0, [r6, #4]
 377 01a4 4EE7     		b	.L114
 378              	.L89:
 379 01a6 0320     		movs	r0, #3
 380 01a8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 381              	.L120:
 382 01ac 0233     		adds	r3, r3, #2
 383 01ae 012C     		cmp	r4, #1
 384 01b0 0360     		str	r3, [r0]
 385 01b2 7FF631AF 		bls	.L61
 386 01b6 0B20     		movs	r0, #11
 387 01b8 44E7     		b	.L114
 388              	.L91:
 389 01ba 0120     		movs	r0, #1
 390 01bc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 391              	.L65:
 392 01c0 0A20     		movs	r0, #10
 393 01c2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 394              	.L121:
 395 01c6 96F8F231 		ldrb	r3, [r6, #498]	@ zero_extendqisi2
 396 01ca 3BB9     		cbnz	r3, .L67
 397              	.L68:
 398 01cc 0D20     		movs	r0, #13
 399 01ce BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  /tmp/cc9D3RON.s 			page 8


 400              	.L86:
 401 01d2 0C20     		movs	r0, #12
 402 01d4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 403              	.L87:
 404 01d8 2846     		mov	r0, r5
 405 01da 33E7     		b	.L114
 406              	.L67:
 407 01dc D6F8F641 		ldr	r4, [r6, #502]	@ unaligned
 408 01e0 3046     		mov	r0, r6
 409 01e2 2146     		mov	r1, r4
 410 01e4 FFF7FEFF 		bl	check_fs
 411 01e8 43E7     		b	.L66
 412              	.L74:
 413 01ea 002D     		cmp	r5, #0
 414 01ec EED0     		beq	.L68
 415 01ee 1044     		add	r0, r0, r2
 416 01f0 BEF1020F 		cmp	lr, #2
 417 01f4 7062     		str	r0, [r6, #36]
 418 01f6 12D0     		beq	.L123
 419 01f8 0CEB4C01 		add	r1, ip, ip, lsl #1
 420 01fc 0CF00102 		and	r2, ip, #1
 421 0200 02EB5102 		add	r2, r2, r1, lsr #1
 422 0204 4FF0010E 		mov	lr, #1
 423              	.L79:
 424 0208 02F2FF12 		addw	r2, r2, #511
 425 020c B3EB522F 		cmp	r3, r2, lsr #9
 426 0210 DCD3     		bcc	.L68
 427 0212 0023     		movs	r3, #0
 428 0214 4FF0FF32 		mov	r2, #-1
 429 0218 C6E90332 		strd	r3, r2, [r6, #12]
 430 021c B7E7     		b	.L80
 431              	.L123:
 432 021e 4FEA4C02 		lsl	r2, ip, #1
 433 0222 F1E7     		b	.L79
 434              	.L122:
 435 0224 0C4B     		ldr	r3, .L124+8
 436 0226 326B     		ldr	r2, [r6, #48]
 437 0228 9A42     		cmp	r2, r3
 438 022a AED1     		bne	.L95
 439 022c 03F1FF53 		add	r3, r3, #534773760
 440 0230 03F50053 		add	r3, r3, #8192
 441 0234 D6F81422 		ldr	r2, [r6, #532]
 442 0238 2033     		adds	r3, r3, #32
 443 023a 9A42     		cmp	r2, r3
 444 023c A5D1     		bne	.L95
 445 023e D6F81C22 		ldr	r2, [r6, #540]
 446 0242 D6F81832 		ldr	r3, [r6, #536]
 447 0246 4FF0030E 		mov	lr, #3
 448 024a C6E90323 		strd	r2, r3, [r6, #12]
 449 024e 9EE7     		b	.L80
 450              	.L125:
 451              		.align	2
 452              	.L124:
 453 0250 00000000 		.word	.LANCHOR0
 454 0254 00000000 		.word	.LANCHOR1
 455 0258 52526141 		.word	1096897106
 456              		.size	chk_mounted, .-chk_mounted
ARM GAS  /tmp/cc9D3RON.s 			page 9


 457              		.section	.text.move_window,"ax",%progbits
 458              		.align	1
 459              		.p2align 2,,3
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu fpv4-sp-d16
 464              		.type	move_window, %function
 465              	move_window:
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 469 0004 C66A     		ldr	r6, [r0, #44]
 470 0006 8E42     		cmp	r6, r1
 471 0008 04D0     		beq	.L132
 472 000a 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 473 000c 0D46     		mov	r5, r1
 474 000e 0446     		mov	r4, r0
 475 0010 1BB9     		cbnz	r3, .L145
 476              	.L129:
 477 0012 1DBB     		cbnz	r5, .L146
 478              	.L132:
 479 0014 0020     		movs	r0, #0
 480 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 481              	.L145:
 482 001a 00F13008 		add	r8, r0, #48
 483 001e 4146     		mov	r1, r8
 484 0020 0123     		movs	r3, #1
 485 0022 3246     		mov	r2, r6
 486 0024 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 487 0026 FFF7FEFF 		bl	disk_write
 488 002a 10BB     		cbnz	r0, .L133
 489 002c D4E90732 		ldrd	r3, r2, [r4, #28]
 490 0030 1A44     		add	r2, r2, r3
 491 0032 B242     		cmp	r2, r6
 492 0034 2071     		strb	r0, [r4, #4]
 493 0036 ECD9     		bls	.L129
 494 0038 E778     		ldrb	r7, [r4, #3]	@ zero_extendqisi2
 495 003a 012F     		cmp	r7, #1
 496 003c 01D8     		bhi	.L131
 497 003e E8E7     		b	.L129
 498              	.L147:
 499 0040 E369     		ldr	r3, [r4, #28]
 500              	.L131:
 501 0042 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 502 0044 1E44     		add	r6, r6, r3
 503 0046 013F     		subs	r7, r7, #1
 504 0048 3246     		mov	r2, r6
 505 004a 0123     		movs	r3, #1
 506 004c 4146     		mov	r1, r8
 507 004e FFB2     		uxtb	r7, r7
 508 0050 FFF7FEFF 		bl	disk_write
 509 0054 012F     		cmp	r7, #1
 510 0056 F3D1     		bne	.L147
 511 0058 002D     		cmp	r5, #0
 512 005a DBD0     		beq	.L132
 513              	.L146:
ARM GAS  /tmp/cc9D3RON.s 			page 10


 514 005c 0123     		movs	r3, #1
 515 005e 2A46     		mov	r2, r5
 516 0060 04F13001 		add	r1, r4, #48
 517 0064 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 518 0066 FFF7FEFF 		bl	disk_read
 519 006a 10B9     		cbnz	r0, .L133
 520 006c E562     		str	r5, [r4, #44]
 521 006e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 522              	.L133:
 523 0072 0120     		movs	r0, #1
 524 0074 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 525              		.size	move_window, .-move_window
 526              		.section	.text.get_fat.part.5,"ax",%progbits
 527              		.align	1
 528              		.p2align 2,,3
 529              		.syntax unified
 530              		.thumb
 531              		.thumb_func
 532              		.fpu fpv4-sp-d16
 533              		.type	get_fat.part.5, %function
 534              	get_fat.part.5:
 535              		@ args = 0, pretend = 0, frame = 0
 536              		@ frame_needed = 0, uses_anonymous_args = 0
 537 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 538 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 539 0004 022B     		cmp	r3, #2
 540 0006 0746     		mov	r7, r0
 541 0008 0C46     		mov	r4, r1
 542 000a 46D0     		beq	.L150
 543 000c 032B     		cmp	r3, #3
 544 000e 28D0     		beq	.L151
 545 0010 012B     		cmp	r3, #1
 546 0012 02D0     		beq	.L159
 547              	.L157:
 548 0014 4FF0FF30 		mov	r0, #-1
 549 0018 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 550              	.L159:
 551 001a 016A     		ldr	r1, [r0, #32]
 552 001c 04EB5406 		add	r6, r4, r4, lsr #1
 553 0020 01EB5621 		add	r1, r1, r6, lsr #9
 554 0024 FFF7FEFF 		bl	move_window
 555 0028 0028     		cmp	r0, #0
 556 002a F3D1     		bne	.L157
 557 002c C6F30803 		ubfx	r3, r6, #0, #9
 558 0030 396A     		ldr	r1, [r7, #32]
 559 0032 3B44     		add	r3, r3, r7
 560 0034 0136     		adds	r6, r6, #1
 561 0036 01EB5621 		add	r1, r1, r6, lsr #9
 562 003a 3846     		mov	r0, r7
 563 003c 93F83050 		ldrb	r5, [r3, #48]	@ zero_extendqisi2
 564 0040 FFF7FEFF 		bl	move_window
 565 0044 0028     		cmp	r0, #0
 566 0046 E5D1     		bne	.L157
 567 0048 C6F30806 		ubfx	r6, r6, #0, #9
 568 004c 3E44     		add	r6, r6, r7
 569 004e E307     		lsls	r3, r4, #31
 570 0050 96F83000 		ldrb	r0, [r6, #48]	@ zero_extendqisi2
ARM GAS  /tmp/cc9D3RON.s 			page 11


 571 0054 45EA0020 		orr	r0, r5, r0, lsl #8
 572 0058 4CBF     		ite	mi
 573 005a 0009     		lsrmi	r0, r0, #4
 574 005c C0F30B00 		ubfxpl	r0, r0, #0, #12
 575 0060 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 576              	.L151:
 577 0062 016A     		ldr	r1, [r0, #32]
 578 0064 01EBD411 		add	r1, r1, r4, lsr #7
 579 0068 FFF7FEFF 		bl	move_window
 580 006c 0028     		cmp	r0, #0
 581 006e D1D1     		bne	.L157
 582 0070 A400     		lsls	r4, r4, #2
 583 0072 04F4FE74 		and	r4, r4, #508
 584 0076 04F13003 		add	r3, r4, #48
 585 007a 3B44     		add	r3, r3, r7
 586 007c 3C44     		add	r4, r4, r7
 587 007e 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
 588 0080 D978     		ldrb	r1, [r3, #3]	@ zero_extendqisi2
 589 0082 94F83020 		ldrb	r2, [r4, #48]	@ zero_extendqisi2
 590 0086 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 591 0088 0004     		lsls	r0, r0, #16
 592 008a 40EA0160 		orr	r0, r0, r1, lsl #24
 593 008e 1043     		orrs	r0, r0, r2
 594 0090 40EA0320 		orr	r0, r0, r3, lsl #8
 595 0094 20F07040 		bic	r0, r0, #-268435456
 596 0098 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 597              	.L150:
 598 009a 016A     		ldr	r1, [r0, #32]
 599 009c 01EB1421 		add	r1, r1, r4, lsr #8
 600 00a0 FFF7FEFF 		bl	move_window
 601 00a4 0028     		cmp	r0, #0
 602 00a6 B5D1     		bne	.L157
 603 00a8 6400     		lsls	r4, r4, #1
 604 00aa 04F4FF74 		and	r4, r4, #510
 605 00ae 3C44     		add	r4, r4, r7
 606 00b0 94F83130 		ldrb	r3, [r4, #49]	@ zero_extendqisi2
 607 00b4 94F83000 		ldrb	r0, [r4, #48]	@ zero_extendqisi2
 608 00b8 40EA0320 		orr	r0, r0, r3, lsl #8
 609 00bc F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 610              		.size	get_fat.part.5, .-get_fat.part.5
 611 00be 00BF     		.section	.text.dir_sdi,"ax",%progbits
 612              		.align	1
 613              		.p2align 2,,3
 614              		.syntax unified
 615              		.thumb
 616              		.thumb_func
 617              		.fpu fpv4-sp-d16
 618              		.type	dir_sdi, %function
 619              	dir_sdi:
 620              		@ args = 0, pretend = 0, frame = 0
 621              		@ frame_needed = 0, uses_anonymous_args = 0
 622 0000 70B5     		push	{r4, r5, r6, lr}
 623 0002 0546     		mov	r5, r0
 624 0004 8068     		ldr	r0, [r0, #8]
 625 0006 E980     		strh	r1, [r5, #6]	@ movhi
 626 0008 0128     		cmp	r0, #1
 627 000a 1ED0     		beq	.L163
ARM GAS  /tmp/cc9D3RON.s 			page 12


 628 000c 2B68     		ldr	r3, [r5]
 629 000e 9A69     		ldr	r2, [r3, #24]
 630 0010 8242     		cmp	r2, r0
 631 0012 1AD9     		bls	.L163
 632 0014 0C46     		mov	r4, r1
 633 0016 D0B1     		cbz	r0, .L174
 634              	.L164:
 635 0018 9E78     		ldrb	r6, [r3, #2]	@ zero_extendqisi2
 636 001a 3601     		lsls	r6, r6, #4
 637 001c B442     		cmp	r4, r6
 638 001e 2ED3     		bcc	.L167
 639 0020 0128     		cmp	r0, #1
 640 0022 12D9     		bls	.L163
 641 0024 8242     		cmp	r2, r0
 642 0026 10D9     		bls	.L163
 643 0028 01E0     		b	.L168
 644              	.L175:
 645 002a A642     		cmp	r6, r4
 646 002c 27D8     		bhi	.L167
 647              	.L168:
 648 002e 0146     		mov	r1, r0
 649 0030 1846     		mov	r0, r3
 650 0032 FFF7FEFF 		bl	get_fat.part.5
 651 0036 A41B     		subs	r4, r4, r6
 652 0038 431C     		adds	r3, r0, #1
 653 003a A4B2     		uxth	r4, r4
 654 003c 2DD0     		beq	.L170
 655 003e 0128     		cmp	r0, #1
 656 0040 03D9     		bls	.L163
 657 0042 2B68     		ldr	r3, [r5]
 658 0044 9A69     		ldr	r2, [r3, #24]
 659 0046 8242     		cmp	r2, r0
 660 0048 EFD8     		bhi	.L175
 661              	.L163:
 662 004a 0220     		movs	r0, #2
 663 004c 70BD     		pop	{r4, r5, r6, pc}
 664              	.L174:
 665 004e 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 666 0050 0329     		cmp	r1, #3
 667 0052 10D0     		beq	.L176
 668              	.L165:
 669 0054 1A89     		ldrh	r2, [r3, #8]
 670 0056 0021     		movs	r1, #0
 671 0058 A242     		cmp	r2, r4
 672 005a E960     		str	r1, [r5, #12]
 673 005c F5D9     		bls	.L163
 674 005e 5A6A     		ldr	r2, [r3, #36]
 675 0060 02EB1412 		add	r2, r2, r4, lsr #4
 676 0064 2A61     		str	r2, [r5, #16]
 677              	.L166:
 678 0066 04F00F04 		and	r4, r4, #15
 679 006a 3033     		adds	r3, r3, #48
 680 006c 03EB4413 		add	r3, r3, r4, lsl #5
 681 0070 6B61     		str	r3, [r5, #20]
 682 0072 0020     		movs	r0, #0
 683 0074 70BD     		pop	{r4, r5, r6, pc}
 684              	.L176:
ARM GAS  /tmp/cc9D3RON.s 			page 13


 685 0076 586A     		ldr	r0, [r3, #36]
 686 0078 0028     		cmp	r0, #0
 687 007a CDD1     		bne	.L164
 688 007c EAE7     		b	.L165
 689              	.L167:
 690 007e 023A     		subs	r2, r2, #2
 691 0080 811E     		subs	r1, r0, #2
 692 0082 9142     		cmp	r1, r2
 693 0084 E860     		str	r0, [r5, #12]
 694 0086 3BBF     		ittet	cc
 695 0088 9A78     		ldrbcc	r2, [r3, #2]	@ zero_extendqisi2
 696 008a 986A     		ldrcc	r0, [r3, #40]
 697 008c 0022     		movcs	r2, #0
 698 008e 01FB0202 		mlacc	r2, r1, r2, r0
 699 0092 02EB1412 		add	r2, r2, r4, lsr #4
 700 0096 2A61     		str	r2, [r5, #16]
 701 0098 E5E7     		b	.L166
 702              	.L170:
 703 009a 0120     		movs	r0, #1
 704 009c 70BD     		pop	{r4, r5, r6, pc}
 705              		.size	dir_sdi, .-dir_sdi
 706 009e 00BF     		.section	.text.put_fat.part.6,"ax",%progbits
 707              		.align	1
 708              		.p2align 2,,3
 709              		.syntax unified
 710              		.thumb
 711              		.thumb_func
 712              		.fpu fpv4-sp-d16
 713              		.type	put_fat.part.6, %function
 714              	put_fat.part.6:
 715              		@ args = 0, pretend = 0, frame = 0
 716              		@ frame_needed = 0, uses_anonymous_args = 0
 717 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 718 0004 90F80090 		ldrb	r9, [r0]	@ zero_extendqisi2
 719 0008 B9F1020F 		cmp	r9, #2
 720 000c 0446     		mov	r4, r0
 721 000e 0D46     		mov	r5, r1
 722 0010 1746     		mov	r7, r2
 723 0012 53D0     		beq	.L179
 724 0014 B9F1030F 		cmp	r9, #3
 725 0018 2DD0     		beq	.L180
 726 001a B9F1010F 		cmp	r9, #1
 727 001e 05D0     		beq	.L194
 728 0020 0226     		movs	r6, #2
 729              	.L178:
 730 0022 0123     		movs	r3, #1
 731 0024 2371     		strb	r3, [r4, #4]
 732 0026 3046     		mov	r0, r6
 733 0028 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 734              	.L194:
 735 002c 016A     		ldr	r1, [r0, #32]
 736 002e 05EB5508 		add	r8, r5, r5, lsr #1
 737 0032 01EB5821 		add	r1, r1, r8, lsr #9
 738 0036 FFF7FEFF 		bl	move_window
 739 003a 0646     		mov	r6, r0
 740 003c 0028     		cmp	r0, #0
 741 003e F0D1     		bne	.L178
ARM GAS  /tmp/cc9D3RON.s 			page 14


 742 0040 216A     		ldr	r1, [r4, #32]
 743 0042 08F1010A 		add	r10, r8, #1
 744 0046 EB07     		lsls	r3, r5, #31
 745 0048 C8F30808 		ubfx	r8, r8, #0, #9
 746 004c 01EB5A21 		add	r1, r1, r10, lsr #9
 747 0050 A044     		add	r8, r8, r4
 748 0052 4AD5     		bpl	.L182
 749 0054 98F83030 		ldrb	r3, [r8, #48]	@ zero_extendqisi2
 750 0058 03F00F03 		and	r3, r3, #15
 751 005c 43EA0713 		orr	r3, r3, r7, lsl #4
 752 0060 88F83030 		strb	r3, [r8, #48]
 753 0064 2046     		mov	r0, r4
 754 0066 84F80490 		strb	r9, [r4, #4]
 755 006a FFF7FEFF 		bl	move_window
 756 006e 0028     		cmp	r0, #0
 757 0070 51D0     		beq	.L195
 758              	.L188:
 759 0072 0646     		mov	r6, r0
 760 0074 D5E7     		b	.L178
 761              	.L180:
 762 0076 016A     		ldr	r1, [r0, #32]
 763 0078 01EBD511 		add	r1, r1, r5, lsr #7
 764 007c FFF7FEFF 		bl	move_window
 765 0080 0646     		mov	r6, r0
 766 0082 0028     		cmp	r0, #0
 767 0084 CDD1     		bne	.L178
 768 0086 AD00     		lsls	r5, r5, #2
 769 0088 05F4FE75 		and	r5, r5, #508
 770 008c 05F13001 		add	r1, r5, #48
 771 0090 2144     		add	r1, r1, r4
 772 0092 2544     		add	r5, r5, r4
 773 0094 CB78     		ldrb	r3, [r1, #3]	@ zero_extendqisi2
 774 0096 1B06     		lsls	r3, r3, #24
 775 0098 03F07043 		and	r3, r3, #-268435456
 776 009c 43EA0702 		orr	r2, r3, r7
 777 00a0 130C     		lsrs	r3, r2, #16
 778 00a2 85F83020 		strb	r2, [r5, #48]
 779 00a6 C2F30720 		ubfx	r0, r2, #8, #8
 780 00aa 8B70     		strb	r3, [r1, #2]
 781 00ac 120E     		lsrs	r2, r2, #24
 782 00ae 0123     		movs	r3, #1
 783 00b0 4870     		strb	r0, [r1, #1]
 784 00b2 CA70     		strb	r2, [r1, #3]
 785 00b4 2371     		strb	r3, [r4, #4]
 786 00b6 3046     		mov	r0, r6
 787 00b8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 788              	.L179:
 789 00bc 016A     		ldr	r1, [r0, #32]
 790 00be 01EB1521 		add	r1, r1, r5, lsr #8
 791 00c2 FFF7FEFF 		bl	move_window
 792 00c6 0646     		mov	r6, r0
 793 00c8 0028     		cmp	r0, #0
 794 00ca AAD1     		bne	.L178
 795 00cc 6D00     		lsls	r5, r5, #1
 796 00ce 05F4FF75 		and	r5, r5, #510
 797 00d2 2544     		add	r5, r5, r4
 798 00d4 C7F30723 		ubfx	r3, r7, #8, #8
ARM GAS  /tmp/cc9D3RON.s 			page 15


 799 00d8 85F83130 		strb	r3, [r5, #49]
 800 00dc 0123     		movs	r3, #1
 801 00de 85F83070 		strb	r7, [r5, #48]
 802 00e2 2371     		strb	r3, [r4, #4]
 803 00e4 3046     		mov	r0, r6
 804 00e6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 805              	.L182:
 806 00ea 88F83070 		strb	r7, [r8, #48]
 807 00ee 2046     		mov	r0, r4
 808 00f0 84F80490 		strb	r9, [r4, #4]
 809 00f4 FFF7FEFF 		bl	move_window
 810 00f8 0028     		cmp	r0, #0
 811 00fa BAD1     		bne	.L188
 812 00fc CAF3080A 		ubfx	r10, r10, #0, #9
 813 0100 A244     		add	r10, r10, r4
 814 0102 C7F30322 		ubfx	r2, r7, #8, #4
 815 0106 9AF83070 		ldrb	r7, [r10, #48]	@ zero_extendqisi2
 816 010a 27F00F07 		bic	r7, r7, #15
 817 010e 3A43     		orrs	r2, r2, r7
 818              	.L185:
 819 0110 8AF83020 		strb	r2, [r10, #48]
 820 0114 85E7     		b	.L178
 821              	.L195:
 822 0116 CAF3080A 		ubfx	r10, r10, #0, #9
 823 011a A244     		add	r10, r10, r4
 824 011c C7F30712 		ubfx	r2, r7, #4, #8
 825 0120 F6E7     		b	.L185
 826              		.size	put_fat.part.6, .-put_fat.part.6
 827 0122 00BF     		.section	.text.create_chain,"ax",%progbits
 828              		.align	1
 829              		.p2align 2,,3
 830              		.syntax unified
 831              		.thumb
 832              		.thumb_func
 833              		.fpu fpv4-sp-d16
 834              		.type	create_chain, %function
 835              	create_chain:
 836              		@ args = 0, pretend = 0, frame = 0
 837              		@ frame_needed = 0, uses_anonymous_args = 0
 838 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 839 0002 0546     		mov	r5, r0
 840 0004 0F46     		mov	r7, r1
 841 0006 F1B9     		cbnz	r1, .L197
 842 0008 C668     		ldr	r6, [r0, #12]
 843 000a 8369     		ldr	r3, [r0, #24]
 844 000c 56BB     		cbnz	r6, .L224
 845 000e 0126     		movs	r6, #1
 846              	.L198:
 847 0010 3446     		mov	r4, r6
 848 0012 0FE0     		b	.L207
 849              	.L225:
 850 0014 012E     		cmp	r6, #1
 851 0016 29D9     		bls	.L206
 852 0018 022B     		cmp	r3, #2
 853 001a 11D9     		bls	.L199
 854 001c 0224     		movs	r4, #2
 855              	.L203:
ARM GAS  /tmp/cc9D3RON.s 			page 16


 856 001e 2146     		mov	r1, r4
 857 0020 FFF7FEFF 		bl	get_fat.part.5
 858 0024 28B3     		cbz	r0, .L204
 859 0026 411C     		adds	r1, r0, #1
 860 0028 2FD0     		beq	.L212
 861 002a 0128     		cmp	r0, #1
 862 002c 08D0     		beq	.L199
 863 002e A642     		cmp	r6, r4
 864 0030 1CD0     		beq	.L206
 865 0032 AB69     		ldr	r3, [r5, #24]
 866              	.L207:
 867 0034 0134     		adds	r4, r4, #1
 868 0036 9C42     		cmp	r4, r3
 869 0038 2846     		mov	r0, r5
 870 003a EBD2     		bcs	.L225
 871 003c 012C     		cmp	r4, #1
 872 003e EED8     		bhi	.L203
 873              	.L199:
 874 0040 0124     		movs	r4, #1
 875              	.L196:
 876 0042 2046     		mov	r0, r4
 877 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 878              	.L197:
 879 0046 0129     		cmp	r1, #1
 880 0048 FAD9     		bls	.L199
 881 004a 8369     		ldr	r3, [r0, #24]
 882 004c 9942     		cmp	r1, r3
 883 004e F7D2     		bcs	.L199
 884 0050 FFF7FEFF 		bl	get_fat.part.5
 885 0054 0128     		cmp	r0, #1
 886 0056 0446     		mov	r4, r0
 887 0058 F2D9     		bls	.L199
 888 005a AB69     		ldr	r3, [r5, #24]
 889 005c 8342     		cmp	r3, r0
 890 005e F0D8     		bhi	.L196
 891 0060 3E46     		mov	r6, r7
 892 0062 D5E7     		b	.L198
 893              	.L224:
 894 0064 9E42     		cmp	r6, r3
 895 0066 28BF     		it	cs
 896 0068 0126     		movcs	r6, #1
 897 006a D1E7     		b	.L198
 898              	.L206:
 899 006c 0024     		movs	r4, #0
 900 006e 2046     		mov	r0, r4
 901 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 902              	.L204:
 903 0072 AB69     		ldr	r3, [r5, #24]
 904 0074 A342     		cmp	r3, r4
 905 0076 E3D9     		bls	.L199
 906 0078 6FF07042 		mvn	r2, #-268435456
 907 007c 2146     		mov	r1, r4
 908 007e 2846     		mov	r0, r5
 909 0080 FFF7FEFF 		bl	put_fat.part.6
 910 0084 28B1     		cbz	r0, .L226
 911              	.L208:
 912 0086 0128     		cmp	r0, #1
ARM GAS  /tmp/cc9D3RON.s 			page 17


 913 0088 DAD1     		bne	.L199
 914              	.L212:
 915 008a 4FF0FF34 		mov	r4, #-1
 916 008e 2046     		mov	r0, r4
 917 0090 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 918              	.L226:
 919 0092 5FB1     		cbz	r7, .L211
 920 0094 012F     		cmp	r7, #1
 921 0096 D3D9     		bls	.L199
 922 0098 AB69     		ldr	r3, [r5, #24]
 923 009a 9F42     		cmp	r7, r3
 924 009c D0D2     		bcs	.L199
 925 009e 3946     		mov	r1, r7
 926 00a0 2246     		mov	r2, r4
 927 00a2 2846     		mov	r0, r5
 928 00a4 FFF7FEFF 		bl	put_fat.part.6
 929 00a8 0028     		cmp	r0, #0
 930 00aa ECD1     		bne	.L208
 931              	.L211:
 932 00ac 2B69     		ldr	r3, [r5, #16]
 933 00ae EC60     		str	r4, [r5, #12]
 934 00b0 5A1C     		adds	r2, r3, #1
 935 00b2 C6D0     		beq	.L196
 936 00b4 013B     		subs	r3, r3, #1
 937 00b6 0122     		movs	r2, #1
 938 00b8 2B61     		str	r3, [r5, #16]
 939 00ba 6A71     		strb	r2, [r5, #5]
 940 00bc C1E7     		b	.L196
 941              		.size	create_chain, .-create_chain
 942 00be 00BF     		.section	.text.dir_next,"ax",%progbits
 943              		.align	1
 944              		.p2align 2,,3
 945              		.syntax unified
 946              		.thumb
 947              		.thumb_func
 948              		.fpu fpv4-sp-d16
 949              		.type	dir_next, %function
 950              	dir_next:
 951              		@ args = 0, pretend = 0, frame = 0
 952              		@ frame_needed = 0, uses_anonymous_args = 0
 953 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 954 0004 C488     		ldrh	r4, [r0, #6]
 955 0006 0134     		adds	r4, r4, #1
 956 0008 A4B2     		uxth	r4, r4
 957 000a 002C     		cmp	r4, #0
 958 000c 3AD0     		beq	.L230
 959 000e 0369     		ldr	r3, [r0, #16]
 960 0010 002B     		cmp	r3, #0
 961 0012 37D0     		beq	.L230
 962 0014 14F00F07 		ands	r7, r4, #15
 963 0018 0546     		mov	r5, r0
 964 001a 0E46     		mov	r6, r1
 965 001c 0068     		ldr	r0, [r0]
 966 001e 26D1     		bne	.L231
 967 0020 E968     		ldr	r1, [r5, #12]
 968 0022 0133     		adds	r3, r3, #1
 969 0024 2B61     		str	r3, [r5, #16]
ARM GAS  /tmp/cc9D3RON.s 			page 18


 970 0026 51B3     		cbz	r1, .L264
 971 0028 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 972 002a 013B     		subs	r3, r3, #1
 973 002c 13EA1413 		ands	r3, r3, r4, lsr #4
 974 0030 1DD1     		bne	.L231
 975 0032 0129     		cmp	r1, #1
 976 0034 29D9     		bls	.L234
 977 0036 8369     		ldr	r3, [r0, #24]
 978 0038 9942     		cmp	r1, r3
 979 003a 26D2     		bcs	.L234
 980 003c FFF7FEFF 		bl	get_fat.part.5
 981 0040 0128     		cmp	r0, #1
 982 0042 8046     		mov	r8, r0
 983 0044 21D9     		bls	.L234
 984 0046 B0F1FF3F 		cmp	r0, #-1
 985 004a 63D0     		beq	.L237
 986 004c 2868     		ldr	r0, [r5]
 987 004e 8369     		ldr	r3, [r0, #24]
 988 0050 4345     		cmp	r3, r8
 989 0052 1CD9     		bls	.L262
 990 0054 A8F10206 		sub	r6, r8, #2
 991              	.L236:
 992 0058 023B     		subs	r3, r3, #2
 993 005a 9E42     		cmp	r6, r3
 994 005c C5F80C80 		str	r8, [r5, #12]
 995 0060 3BBF     		ittet	cc
 996 0062 8378     		ldrbcc	r3, [r0, #2]	@ zero_extendqisi2
 997 0064 826A     		ldrcc	r2, [r0, #40]
 998 0066 0023     		movcs	r3, #0
 999 0068 06FB0323 		mlacc	r3, r6, r3, r2
 1000 006c 2B61     		str	r3, [r5, #16]
 1001              	.L231:
 1002 006e 3030     		adds	r0, r0, #48
 1003 0070 00EB4710 		add	r0, r0, r7, lsl #5
 1004 0074 6861     		str	r0, [r5, #20]
 1005 0076 EC80     		strh	r4, [r5, #6]	@ movhi
 1006 0078 0020     		movs	r0, #0
 1007 007a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1008              	.L264:
 1009 007e 0389     		ldrh	r3, [r0, #8]
 1010 0080 A342     		cmp	r3, r4
 1011 0082 F4D8     		bhi	.L231
 1012              	.L230:
 1013 0084 0420     		movs	r0, #4
 1014              	.L229:
 1015 0086 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1016              	.L234:
 1017 008a 0220     		movs	r0, #2
 1018 008c FBE7     		b	.L229
 1019              	.L262:
 1020 008e 002E     		cmp	r6, #0
 1021 0090 F8D0     		beq	.L230
 1022 0092 E968     		ldr	r1, [r5, #12]
 1023 0094 FFF7FEFF 		bl	create_chain
 1024 0098 8046     		mov	r8, r0
 1025 009a 0028     		cmp	r0, #0
 1026 009c 3CD0     		beq	.L242
ARM GAS  /tmp/cc9D3RON.s 			page 19


 1027 009e 0128     		cmp	r0, #1
 1028 00a0 F3D0     		beq	.L234
 1029 00a2 B0F1FF3F 		cmp	r0, #-1
 1030 00a6 35D0     		beq	.L237
 1031 00a8 0021     		movs	r1, #0
 1032 00aa 2868     		ldr	r0, [r5]
 1033 00ac FFF7FEFF 		bl	move_window
 1034 00b0 8246     		mov	r10, r0
 1035 00b2 78BB     		cbnz	r0, .L237
 1036 00b4 2868     		ldr	r0, [r5]
 1037 00b6 4FF40072 		mov	r2, #512
 1038 00ba 3030     		adds	r0, r0, #48
 1039 00bc 5146     		mov	r1, r10
 1040 00be FFF7FEFF 		bl	memset
 1041 00c2 2A68     		ldr	r2, [r5]
 1042 00c4 9369     		ldr	r3, [r2, #24]
 1043 00c6 92F80290 		ldrb	r9, [r2, #2]	@ zero_extendqisi2
 1044 00ca 023B     		subs	r3, r3, #2
 1045 00cc A8F10206 		sub	r6, r8, #2
 1046 00d0 9E42     		cmp	r6, r3
 1047 00d2 36BF     		itet	cc
 1048 00d4 936A     		ldrcc	r3, [r2, #40]
 1049 00d6 5346     		movcs	r3, r10
 1050 00d8 06FB0933 		mlacc	r3, r6, r9, r3
 1051 00dc D362     		str	r3, [r2, #44]
 1052 00de B9F1000F 		cmp	r9, #0
 1053 00e2 1BD0     		beq	.L239
 1054 00e4 4FF00009 		mov	r9, #0
 1055 00e8 4FF0010A 		mov	r10, #1
 1056 00ec 06E0     		b	.L240
 1057              	.L265:
 1058 00ee 2A68     		ldr	r2, [r5]
 1059 00f0 D36A     		ldr	r3, [r2, #44]
 1060 00f2 9178     		ldrb	r1, [r2, #2]	@ zero_extendqisi2
 1061 00f4 0133     		adds	r3, r3, #1
 1062 00f6 4945     		cmp	r1, r9
 1063 00f8 D362     		str	r3, [r2, #44]
 1064 00fa 0FD9     		bls	.L239
 1065              	.L240:
 1066 00fc 82F804A0 		strb	r10, [r2, #4]
 1067 0100 1046     		mov	r0, r2
 1068 0102 0021     		movs	r1, #0
 1069 0104 FFF7FEFF 		bl	move_window
 1070 0108 09F10109 		add	r9, r9, #1
 1071 010c 5FFA89F9 		uxtb	r9, r9
 1072 0110 0028     		cmp	r0, #0
 1073 0112 ECD0     		beq	.L265
 1074              	.L237:
 1075 0114 0120     		movs	r0, #1
 1076 0116 B6E7     		b	.L229
 1077              	.L242:
 1078 0118 0720     		movs	r0, #7
 1079 011a B4E7     		b	.L229
 1080              	.L239:
 1081 011c D36A     		ldr	r3, [r2, #44]
 1082 011e A3EB0901 		sub	r1, r3, r9
 1083 0122 1046     		mov	r0, r2
ARM GAS  /tmp/cc9D3RON.s 			page 20


 1084 0124 9369     		ldr	r3, [r2, #24]
 1085 0126 D162     		str	r1, [r2, #44]
 1086 0128 96E7     		b	.L236
 1087              		.size	dir_next, .-dir_next
 1088 012a 00BF     		.section	.text.dir_read,"ax",%progbits
 1089              		.align	1
 1090              		.p2align 2,,3
 1091              		.syntax unified
 1092              		.thumb
 1093              		.thumb_func
 1094              		.fpu fpv4-sp-d16
 1095              		.type	dir_read, %function
 1096              	dir_read:
 1097              		@ args = 0, pretend = 0, frame = 0
 1098              		@ frame_needed = 0, uses_anonymous_args = 0
 1099 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1100 0004 FF26     		movs	r6, #255
 1101 0006 0446     		mov	r4, r0
 1102 0008 3546     		mov	r5, r6
 1103 000a 0420     		movs	r0, #4
 1104 000c 08E0     		b	.L267
 1105              	.L305:
 1106 000e 0F2F     		cmp	r7, #15
 1107 0010 1DD0     		beq	.L271
 1108              	.L294:
 1109 0012 FF25     		movs	r5, #255
 1110              	.L269:
 1111 0014 0021     		movs	r1, #0
 1112 0016 2046     		mov	r0, r4
 1113 0018 FFF7FEFF 		bl	dir_next
 1114 001c 0028     		cmp	r0, #0
 1115 001e 58D1     		bne	.L268
 1116              	.L267:
 1117 0020 2169     		ldr	r1, [r4, #16]
 1118 0022 0029     		cmp	r1, #0
 1119 0024 59D0     		beq	.L304
 1120 0026 2068     		ldr	r0, [r4]
 1121 0028 FFF7FEFF 		bl	move_window
 1122 002c 0028     		cmp	r0, #0
 1123 002e 50D1     		bne	.L268
 1124 0030 6269     		ldr	r2, [r4, #20]
 1125 0032 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 1126 0034 002B     		cmp	r3, #0
 1127 0036 4BD0     		beq	.L286
 1128 0038 E52B     		cmp	r3, #229
 1129 003a EAD0     		beq	.L294
 1130 003c 2E2B     		cmp	r3, #46
 1131 003e E8D0     		beq	.L294
 1132 0040 D17A     		ldrb	r1, [r2, #11]	@ zero_extendqisi2
 1133 0042 01F03F07 		and	r7, r1, #63
 1134 0046 0907     		lsls	r1, r1, #28
 1135 0048 E1D4     		bmi	.L305
 1136 004a 0F2F     		cmp	r7, #15
 1137 004c 4AD1     		bne	.L272
 1138              	.L271:
 1139 004e 5906     		lsls	r1, r3, #25
 1140 0050 3BD5     		bpl	.L273
ARM GAS  /tmp/cc9D3RON.s 			page 21


 1141 0052 E188     		ldrh	r1, [r4, #6]
 1142 0054 567B     		ldrb	r6, [r2, #13]	@ zero_extendqisi2
 1143 0056 2184     		strh	r1, [r4, #32]	@ movhi
 1144 0058 03F0BF03 		and	r3, r3, #191
 1145              	.L274:
 1146 005c 517B     		ldrb	r1, [r2, #13]	@ zero_extendqisi2
 1147 005e B142     		cmp	r1, r6
 1148 0060 D7D1     		bne	.L294
 1149 0062 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 1150 0064 294D     		ldr	r5, .L309
 1151 0066 D4F81C90 		ldr	r9, [r4, #28]
 1152 006a 00F03F00 		and	r0, r0, #63
 1153 006e 0138     		subs	r0, r0, #1
 1154 0070 00EB4007 		add	r7, r0, r0, lsl #1
 1155 0074 0121     		movs	r1, #1
 1156 0076 00EB8700 		add	r0, r0, r7, lsl #2
 1157 007a 05F10C0E 		add	lr, r5, #12
 1158 007e 8C46     		mov	ip, r1
 1159 0080 4FF6FF78 		movw	r8, #65535
 1160 0084 0AE0     		b	.L278
 1161              	.L306:
 1162 0086 FE28     		cmp	r0, #254
 1163 0088 C3D8     		bhi	.L294
 1164 008a 7545     		cmp	r5, lr
 1165 008c 29F81010 		strh	r1, [r9, r0, lsl #1]	@ movhi
 1166 0090 8C46     		mov	ip, r1
 1167 0092 00F10100 		add	r0, r0, #1
 1168 0096 0DD0     		beq	.L277
 1169              	.L307:
 1170 0098 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 1171              	.L278:
 1172 009c 5718     		adds	r7, r2, r1
 1173 009e 515C     		ldrb	r1, [r2, r1]	@ zero_extendqisi2
 1174 00a0 7F78     		ldrb	r7, [r7, #1]	@ zero_extendqisi2
 1175 00a2 41EA0721 		orr	r1, r1, r7, lsl #8
 1176 00a6 BCF1000F 		cmp	ip, #0
 1177 00aa ECD1     		bne	.L306
 1178 00ac 4145     		cmp	r1, r8
 1179 00ae B0D1     		bne	.L294
 1180 00b0 7545     		cmp	r5, lr
 1181 00b2 F1D1     		bne	.L307
 1182              	.L277:
 1183 00b4 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1184 00b6 5206     		lsls	r2, r2, #25
 1185 00b8 04D5     		bpl	.L279
 1186 00ba FE28     		cmp	r0, #254
 1187 00bc A9D8     		bhi	.L294
 1188 00be 0022     		movs	r2, #0
 1189 00c0 29F81020 		strh	r2, [r9, r0, lsl #1]	@ movhi
 1190              	.L279:
 1191 00c4 013B     		subs	r3, r3, #1
 1192 00c6 DDB2     		uxtb	r5, r3
 1193 00c8 A4E7     		b	.L269
 1194              	.L273:
 1195 00ca 9D42     		cmp	r5, r3
 1196 00cc A1D1     		bne	.L294
 1197 00ce C5E7     		b	.L274
ARM GAS  /tmp/cc9D3RON.s 			page 22


 1198              	.L286:
 1199 00d0 0420     		movs	r0, #4
 1200              	.L268:
 1201 00d2 0023     		movs	r3, #0
 1202 00d4 2361     		str	r3, [r4, #16]
 1203              	.L283:
 1204 00d6 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1205              	.L304:
 1206 00da 0028     		cmp	r0, #0
 1207 00dc F9D1     		bne	.L268
 1208              	.L285:
 1209 00de 0020     		movs	r0, #0
 1210 00e0 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1211              	.L272:
 1212 00e4 75B9     		cbnz	r5, .L280
 1213 00e6 02F10A07 		add	r7, r2, #10
 1214 00ea 01E0     		b	.L282
 1215              	.L308:
 1216 00ec 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 1217              	.L282:
 1218 00f0 E901     		lsls	r1, r5, #7
 1219 00f2 41EA5505 		orr	r5, r1, r5, lsr #1
 1220 00f6 53FA85F3 		uxtab	r3, r3, r5
 1221 00fa 9742     		cmp	r7, r2
 1222 00fc DDB2     		uxtb	r5, r3
 1223 00fe F5D1     		bne	.L308
 1224 0100 AE42     		cmp	r6, r5
 1225 0102 ECD0     		beq	.L285
 1226              	.L280:
 1227 0104 4FF6FF73 		movw	r3, #65535
 1228 0108 2384     		strh	r3, [r4, #32]	@ movhi
 1229 010a E4E7     		b	.L283
 1230              	.L310:
 1231              		.align	2
 1232              	.L309:
 1233 010c 00000000 		.word	.LANCHOR2
 1234              		.size	dir_read, .-dir_read
 1235              		.section	.text.dir_remove,"ax",%progbits
 1236              		.align	1
 1237              		.p2align 2,,3
 1238              		.syntax unified
 1239              		.thumb
 1240              		.thumb_func
 1241              		.fpu fpv4-sp-d16
 1242              		.type	dir_remove, %function
 1243              	dir_remove:
 1244              		@ args = 0, pretend = 0, frame = 0
 1245              		@ frame_needed = 0, uses_anonymous_args = 0
 1246 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1247 0002 018C     		ldrh	r1, [r0, #32]
 1248 0004 C588     		ldrh	r5, [r0, #6]
 1249 0006 4FF6FF73 		movw	r3, #65535
 1250 000a 9942     		cmp	r1, r3
 1251 000c 08BF     		it	eq
 1252 000e 2946     		moveq	r1, r5
 1253 0010 0446     		mov	r4, r0
 1254 0012 FFF7FEFF 		bl	dir_sdi
ARM GAS  /tmp/cc9D3RON.s 			page 23


 1255 0016 0346     		mov	r3, r0
 1256 0018 C8B9     		cbnz	r0, .L313
 1257 001a E527     		movs	r7, #229
 1258 001c 0126     		movs	r6, #1
 1259 001e 0BE0     		b	.L315
 1260              	.L320:
 1261 0020 6269     		ldr	r2, [r4, #20]
 1262 0022 1770     		strb	r7, [r2]
 1263 0024 2268     		ldr	r2, [r4]
 1264 0026 1671     		strb	r6, [r2, #4]
 1265 0028 E288     		ldrh	r2, [r4, #6]
 1266 002a AA42     		cmp	r2, r5
 1267 002c 2046     		mov	r0, r4
 1268 002e 0ED2     		bcs	.L313
 1269 0030 FFF7FEFF 		bl	dir_next
 1270 0034 0346     		mov	r3, r0
 1271 0036 38B9     		cbnz	r0, .L314
 1272              	.L315:
 1273 0038 2169     		ldr	r1, [r4, #16]
 1274 003a 2068     		ldr	r0, [r4]
 1275 003c FFF7FEFF 		bl	move_window
 1276 0040 0346     		mov	r3, r0
 1277 0042 0146     		mov	r1, r0
 1278 0044 0028     		cmp	r0, #0
 1279 0046 EBD0     		beq	.L320
 1280              	.L314:
 1281 0048 042B     		cmp	r3, #4
 1282 004a 08BF     		it	eq
 1283 004c 0223     		moveq	r3, #2
 1284              	.L313:
 1285 004e 1846     		mov	r0, r3
 1286 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1287              		.size	dir_remove, .-dir_remove
 1288 0052 00BF     		.section	.text.remove_chain.part.7,"ax",%progbits
 1289              		.align	1
 1290              		.p2align 2,,3
 1291              		.syntax unified
 1292              		.thumb
 1293              		.thumb_func
 1294              		.fpu fpv4-sp-d16
 1295              		.type	remove_chain.part.7, %function
 1296              	remove_chain.part.7:
 1297              		@ args = 0, pretend = 0, frame = 0
 1298              		@ frame_needed = 0, uses_anonymous_args = 0
 1299 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1300 0002 0446     		mov	r4, r0
 1301 0004 0D46     		mov	r5, r1
 1302 0006 A369     		ldr	r3, [r4, #24]
 1303 0008 9D42     		cmp	r5, r3
 1304 000a 4FF00107 		mov	r7, #1
 1305 000e 2946     		mov	r1, r5
 1306 0010 2046     		mov	r0, r4
 1307 0012 1ED2     		bcs	.L329
 1308              	.L328:
 1309 0014 012D     		cmp	r5, #1
 1310 0016 1ED9     		bls	.L326
 1311 0018 FFF7FEFF 		bl	get_fat.part.5
ARM GAS  /tmp/cc9D3RON.s 			page 24


 1312 001c 2946     		mov	r1, r5
 1313 001e 0646     		mov	r6, r0
 1314 0020 0022     		movs	r2, #0
 1315 0022 B0B1     		cbz	r0, .L329
 1316 0024 012E     		cmp	r6, #1
 1317 0026 2046     		mov	r0, r4
 1318 0028 15D0     		beq	.L326
 1319 002a 731C     		adds	r3, r6, #1
 1320 002c 15D0     		beq	.L330
 1321 002e A369     		ldr	r3, [r4, #24]
 1322 0030 9D42     		cmp	r5, r3
 1323 0032 10D2     		bcs	.L326
 1324 0034 FFF7FEFF 		bl	put_fat.part.6
 1325 0038 60B9     		cbnz	r0, .L324
 1326 003a 2369     		ldr	r3, [r4, #16]
 1327 003c 5A1C     		adds	r2, r3, #1
 1328 003e 02D0     		beq	.L327
 1329 0040 0133     		adds	r3, r3, #1
 1330 0042 2361     		str	r3, [r4, #16]
 1331 0044 6771     		strb	r7, [r4, #5]
 1332              	.L327:
 1333 0046 A369     		ldr	r3, [r4, #24]
 1334 0048 3546     		mov	r5, r6
 1335 004a 9D42     		cmp	r5, r3
 1336 004c 2946     		mov	r1, r5
 1337 004e 2046     		mov	r0, r4
 1338 0050 E0D3     		bcc	.L328
 1339              	.L329:
 1340 0052 0020     		movs	r0, #0
 1341              	.L324:
 1342 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1343              	.L326:
 1344 0056 0220     		movs	r0, #2
 1345 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1346              	.L330:
 1347 005a 0120     		movs	r0, #1
 1348 005c FAE7     		b	.L324
 1349              		.size	remove_chain.part.7, .-remove_chain.part.7
 1350 005e 00BF     		.section	.text.dir_find.part.8,"ax",%progbits
 1351              		.align	1
 1352              		.p2align 2,,3
 1353              		.syntax unified
 1354              		.thumb
 1355              		.thumb_func
 1356              		.fpu fpv4-sp-d16
 1357              		.type	dir_find.part.8, %function
 1358              	dir_find.part.8:
 1359              		@ args = 0, pretend = 0, frame = 8
 1360              		@ frame_needed = 0, uses_anonymous_args = 0
 1361 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1362 0004 FF27     		movs	r7, #255
 1363 0006 83B0     		sub	sp, sp, #12
 1364 0008 0546     		mov	r5, r0
 1365 000a 3C46     		mov	r4, r7
 1366 000c 08E0     		b	.L355
 1367              	.L382:
 1368 000e 0F29     		cmp	r1, #15
ARM GAS  /tmp/cc9D3RON.s 			page 25


 1369 0010 2FD0     		beq	.L342
 1370              	.L365:
 1371 0012 FF24     		movs	r4, #255
 1372              	.L340:
 1373 0014 0021     		movs	r1, #0
 1374 0016 2846     		mov	r0, r5
 1375 0018 FFF7FEFF 		bl	dir_next
 1376 001c 0646     		mov	r6, r0
 1377 001e 20BB     		cbnz	r0, .L339
 1378              	.L355:
 1379 0020 2969     		ldr	r1, [r5, #16]
 1380 0022 2868     		ldr	r0, [r5]
 1381 0024 FFF7FEFF 		bl	move_window
 1382 0028 0646     		mov	r6, r0
 1383 002a F0B9     		cbnz	r0, .L339
 1384 002c D5F81480 		ldr	r8, [r5, #20]
 1385 0030 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 1386 0034 002A     		cmp	r2, #0
 1387 0036 76D0     		beq	.L356
 1388 0038 98F80B30 		ldrb	r3, [r8, #11]	@ zero_extendqisi2
 1389 003c E52A     		cmp	r2, #229
 1390 003e 03F03F01 		and	r1, r3, #63
 1391 0042 E6D0     		beq	.L365
 1392 0044 1807     		lsls	r0, r3, #28
 1393 0046 E2D4     		bmi	.L382
 1394 0048 0F29     		cmp	r1, #15
 1395 004a 12D0     		beq	.L342
 1396 004c 002C     		cmp	r4, #0
 1397 004e 55D0     		beq	.L383
 1398              	.L351:
 1399 0050 4FF6FF73 		movw	r3, #65535
 1400 0054 A969     		ldr	r1, [r5, #24]
 1401 0056 2B84     		strh	r3, [r5, #32]	@ movhi
 1402 0058 CB7A     		ldrb	r3, [r1, #11]	@ zero_extendqisi2
 1403 005a DB07     		lsls	r3, r3, #31
 1404 005c D9D4     		bmi	.L365
 1405 005e 4046     		mov	r0, r8
 1406 0060 0B22     		movs	r2, #11
 1407 0062 FFF7FEFF 		bl	memcmp
 1408 0066 0028     		cmp	r0, #0
 1409 0068 D3D1     		bne	.L365
 1410              	.L339:
 1411 006a 3046     		mov	r0, r6
 1412 006c 03B0     		add	sp, sp, #12
 1413              		@ sp needed
 1414 006e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1415              	.L342:
 1416 0072 EE69     		ldr	r6, [r5, #28]
 1417 0074 002E     		cmp	r6, #0
 1418 0076 CDD0     		beq	.L340
 1419 0078 5106     		lsls	r1, r2, #25
 1420 007a 50D5     		bpl	.L344
 1421 007c EB88     		ldrh	r3, [r5, #6]
 1422 007e 98F80D70 		ldrb	r7, [r8, #13]	@ zero_extendqisi2
 1423 0082 2B84     		strh	r3, [r5, #32]	@ movhi
 1424 0084 02F0BF04 		and	r4, r2, #191
 1425              	.L345:
ARM GAS  /tmp/cc9D3RON.s 			page 26


 1426 0088 98F80D30 		ldrb	r3, [r8, #13]	@ zero_extendqisi2
 1427 008c BB42     		cmp	r3, r7
 1428 008e C0D1     		bne	.L365
 1429 0090 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
 1430 0094 DFF8B4A0 		ldr	r10, .L385
 1431 0098 21F04001 		bic	r1, r1, #64
 1432 009c 0139     		subs	r1, r1, #1
 1433 009e 01EB4100 		add	r0, r1, r1, lsl #1
 1434 00a2 0123     		movs	r3, #1
 1435 00a4 01EB800B 		add	fp, r1, r0, lsl #2
 1436 00a8 0AF10C09 		add	r9, r10, #12
 1437 00ac 1846     		mov	r0, r3
 1438 00ae 07E0     		b	.L349
 1439              	.L346:
 1440 00b0 4FF6FF72 		movw	r2, #65535
 1441 00b4 9342     		cmp	r3, r2
 1442 00b6 ACD1     		bne	.L365
 1443              	.L347:
 1444 00b8 D145     		cmp	r9, r10
 1445 00ba 39D0     		beq	.L348
 1446 00bc 1AF8013F 		ldrb	r3, [r10, #1]!	@ zero_extendqisi2
 1447              	.L349:
 1448 00c0 08EB030C 		add	ip, r8, r3
 1449 00c4 18F80330 		ldrb	r3, [r8, r3]	@ zero_extendqisi2
 1450 00c8 9CF801C0 		ldrb	ip, [ip, #1]	@ zero_extendqisi2
 1451 00cc 43EA0C23 		orr	r3, r3, ip, lsl #8
 1452 00d0 0028     		cmp	r0, #0
 1453 00d2 EDD0     		beq	.L346
 1454 00d4 1846     		mov	r0, r3
 1455 00d6 FFF7FEFF 		bl	ff_wtoupper
 1456 00da 0BF10103 		add	r3, fp, #1
 1457 00de BBF1FE0F 		cmp	fp, #254
 1458 00e2 0090     		str	r0, [sp]
 1459 00e4 0193     		str	r3, [sp, #4]
 1460 00e6 94D8     		bhi	.L365
 1461 00e8 36F81B00 		ldrh	r0, [r6, fp, lsl #1]
 1462 00ec FFF7FEFF 		bl	ff_wtoupper
 1463 00f0 009B     		ldr	r3, [sp]
 1464 00f2 8342     		cmp	r3, r0
 1465 00f4 8DD1     		bne	.L365
 1466 00f6 DDF804B0 		ldr	fp, [sp, #4]
 1467 00fa DDE7     		b	.L347
 1468              	.L383:
 1469 00fc 4146     		mov	r1, r8
 1470 00fe 08F10A00 		add	r0, r8, #10
 1471 0102 01E0     		b	.L353
 1472              	.L384:
 1473 0104 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 1474              	.L353:
 1475 0108 E301     		lsls	r3, r4, #7
 1476 010a 43EA5403 		orr	r3, r3, r4, lsr #1
 1477 010e 52FA83F3 		uxtab	r3, r2, r3
 1478 0112 8142     		cmp	r1, r0
 1479 0114 DCB2     		uxtb	r4, r3
 1480 0116 F5D1     		bne	.L384
 1481 0118 BC42     		cmp	r4, r7
 1482 011a 99D1     		bne	.L351
ARM GAS  /tmp/cc9D3RON.s 			page 27


 1483 011c A5E7     		b	.L339
 1484              	.L344:
 1485 011e A242     		cmp	r2, r4
 1486 0120 7FF477AF 		bne	.L365
 1487 0124 B0E7     		b	.L345
 1488              	.L356:
 1489 0126 0426     		movs	r6, #4
 1490 0128 3046     		mov	r0, r6
 1491 012a 03B0     		add	sp, sp, #12
 1492              		@ sp needed
 1493 012c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1494              	.L348:
 1495 0130 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1496 0134 5A06     		lsls	r2, r3, #25
 1497 0136 05D5     		bpl	.L350
 1498 0138 20B1     		cbz	r0, .L350
 1499 013a 36F81B30 		ldrh	r3, [r6, fp, lsl #1]
 1500 013e 002B     		cmp	r3, #0
 1501 0140 7FF467AF 		bne	.L365
 1502              	.L350:
 1503 0144 631E     		subs	r3, r4, #1
 1504 0146 DCB2     		uxtb	r4, r3
 1505 0148 64E7     		b	.L340
 1506              	.L386:
 1507 014a 00BF     		.align	2
 1508              	.L385:
 1509 014c 00000000 		.word	.LANCHOR2
 1510              		.size	dir_find.part.8, .-dir_find.part.8
 1511              		.section	.text.dir_register,"ax",%progbits
 1512              		.align	1
 1513              		.p2align 2,,3
 1514              		.syntax unified
 1515              		.thumb
 1516              		.thumb_func
 1517              		.fpu fpv4-sp-d16
 1518              		.type	dir_register, %function
 1519              	dir_register:
 1520              		@ args = 0, pretend = 0, frame = 24
 1521              		@ frame_needed = 0, uses_anonymous_args = 0
 1522 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1523 0004 D0E90685 		ldrd	r8, r5, [r0, #24]
 1524 0008 87B0     		sub	sp, sp, #28
 1525 000a D8F80820 		ldr	r2, [r8, #8]	@ unaligned
 1526 000e D8F80410 		ldr	r1, [r8, #4]	@ unaligned
 1527 0012 0446     		mov	r4, r0
 1528 0014 D8F80000 		ldr	r0, [r8]	@ unaligned
 1529 0018 03AB     		add	r3, sp, #12
 1530 001a 07C3     		stmia	r3!, {r0, r1, r2}
 1531 001c 9DF81770 		ldrb	r7, [sp, #23]	@ zero_extendqisi2
 1532 0020 FA07     		lsls	r2, r7, #31
 1533 0022 40F18280 		bpl	.L388
 1534 0026 03AB     		add	r3, sp, #12
 1535 0028 03CB     		ldmia	r3!, {r0, r1}
 1536 002a 0022     		movs	r2, #0
 1537 002c 1E88     		ldrh	r6, [r3]	@ unaligned
 1538 002e 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 1539 0030 88F80B20 		strb	r2, [r8, #11]
ARM GAS  /tmp/cc9D3RON.s 			page 28


 1540 0034 4FF00109 		mov	r9, #1
 1541 0038 E261     		str	r2, [r4, #28]
 1542 003a A8F80860 		strh	r6, [r8, #8]	@ unaligned
 1543 003e 88F80A30 		strb	r3, [r8, #10]
 1544 0042 C8F80000 		str	r0, [r8]	@ unaligned
 1545 0046 C8F80410 		str	r1, [r8, #4]	@ unaligned
 1546 004a 4B46     		mov	r3, r9
 1547 004c 7E26     		movs	r6, #126
 1548              	.L389:
 1549 004e 0DF10B0C 		add	ip, sp, #11
 1550 0052 0722     		movs	r2, #7
 1551              	.L393:
 1552 0054 03F00F00 		and	r0, r3, #15
 1553 0058 00F13001 		add	r1, r0, #48
 1554 005c 3929     		cmp	r1, #57
 1555 005e 88BF     		it	hi
 1556 0060 00F13701 		addhi	r1, r0, #55
 1557 0064 C3F30F13 		ubfx	r3, r3, #4, #16
 1558 0068 013A     		subs	r2, r2, #1
 1559 006a 0CF80119 		strb	r1, [ip], #-1
 1560 006e 002B     		cmp	r3, #0
 1561 0070 F0D1     		bne	.L393
 1562 0072 06A9     		add	r1, sp, #24
 1563 0074 1144     		add	r1, r1, r2
 1564 0076 01F8146C 		strb	r6, [r1, #-20]
 1565 007a 002A     		cmp	r2, #0
 1566 007c 00F09780 		beq	.L422
 1567 0080 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
 1568 0084 2029     		cmp	r1, #32
 1569 0086 08D0     		beq	.L394
 1570 0088 4146     		mov	r1, r8
 1571 008a 03E0     		b	.L395
 1572              	.L449:
 1573 008c 11F8010F 		ldrb	r0, [r1, #1]!	@ zero_extendqisi2
 1574 0090 2028     		cmp	r0, #32
 1575 0092 02D0     		beq	.L394
 1576              	.L395:
 1577 0094 0133     		adds	r3, r3, #1
 1578 0096 9A42     		cmp	r2, r3
 1579 0098 F8D1     		bne	.L449
 1580              	.L394:
 1581 009a 591E     		subs	r1, r3, #1
 1582 009c 4144     		add	r1, r1, r8
 1583              	.L397:
 1584 009e 06A8     		add	r0, sp, #24
 1585 00a0 1044     		add	r0, r0, r2
 1586 00a2 072A     		cmp	r2, #7
 1587 00a4 03F10103 		add	r3, r3, #1
 1588 00a8 96BF     		itet	ls
 1589 00aa 10F8140C 		ldrbls	r0, [r0, #-20]	@ zero_extendqisi2
 1590 00ae 2020     		movhi	r0, #32
 1591 00b0 0132     		addls	r2, r2, #1
 1592 00b2 072B     		cmp	r3, #7
 1593 00b4 01F8010F 		strb	r0, [r1, #1]!
 1594 00b8 F1D9     		bls	.L397
 1595 00ba 0021     		movs	r1, #0
 1596 00bc 2046     		mov	r0, r4
ARM GAS  /tmp/cc9D3RON.s 			page 29


 1597 00be FFF7FEFF 		bl	dir_sdi
 1598 00c2 8246     		mov	r10, r0
 1599 00c4 58BB     		cbnz	r0, .L398
 1600 00c6 2046     		mov	r0, r4
 1601 00c8 FFF7FEFF 		bl	dir_find.part.8
 1602 00cc 8246     		mov	r10, r0
 1603 00ce 30BB     		cbnz	r0, .L398
 1604 00d0 09F10109 		add	r9, r9, #1
 1605 00d4 1FFA89F9 		uxth	r9, r9
 1606 00d8 B9F1640F 		cmp	r9, #100
 1607 00dc 00F0D880 		beq	.L450
 1608 00e0 03AB     		add	r3, sp, #12
 1609 00e2 03CB     		ldmia	r3!, {r0, r1}
 1610 00e4 B9F1050F 		cmp	r9, #5
 1611 00e8 1A88     		ldrh	r2, [r3]	@ unaligned
 1612 00ea 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 1613 00ec C8F80000 		str	r0, [r8]	@ unaligned
 1614 00f0 C8F80410 		str	r1, [r8, #4]	@ unaligned
 1615 00f4 A8F80820 		strh	r2, [r8, #8]	@ unaligned
 1616 00f8 88F80A30 		strb	r3, [r8, #10]
 1617 00fc 0DD9     		bls	.L421
 1618 00fe 2988     		ldrh	r1, [r5]
 1619 0100 4B46     		mov	r3, r9
 1620 0102 2846     		mov	r0, r5
 1621              	.L391:
 1622 0104 DA03     		lsls	r2, r3, #15
 1623 0106 42EA5303 		orr	r3, r2, r3, lsr #1
 1624 010a 11FA83F3 		uxtah	r3, r1, r3
 1625 010e 30F8021F 		ldrh	r1, [r0, #2]!
 1626 0112 9BB2     		uxth	r3, r3
 1627 0114 0029     		cmp	r1, #0
 1628 0116 F5D1     		bne	.L391
 1629 0118 99E7     		b	.L389
 1630              	.L421:
 1631 011a 4B46     		mov	r3, r9
 1632 011c 97E7     		b	.L389
 1633              	.L398:
 1634 011e BAF1040F 		cmp	r10, #4
 1635 0122 2ED1     		bne	.L429
 1636 0124 88F80B70 		strb	r7, [r8, #11]
 1637 0128 E561     		str	r5, [r4, #28]
 1638              	.L388:
 1639 012a BB07     		lsls	r3, r7, #30
 1640 012c 2DD4     		bmi	.L451
 1641              	.L425:
 1642 012e 0126     		movs	r6, #1
 1643              	.L401:
 1644 0130 0021     		movs	r1, #0
 1645 0132 2046     		mov	r0, r4
 1646 0134 FFF7FEFF 		bl	dir_sdi
 1647 0138 8246     		mov	r10, r0
 1648 013a 10BB     		cbnz	r0, .L429
 1649 013c 0746     		mov	r7, r0
 1650 013e 0546     		mov	r5, r0
 1651 0140 07E0     		b	.L408
 1652              	.L452:
 1653 0142 92B1     		cbz	r2, .L404
ARM GAS  /tmp/cc9D3RON.s 			page 30


 1654 0144 0546     		mov	r5, r0
 1655 0146 0121     		movs	r1, #1
 1656 0148 2046     		mov	r0, r4
 1657 014a FFF7FEFF 		bl	dir_next
 1658 014e 8246     		mov	r10, r0
 1659 0150 B8B9     		cbnz	r0, .L429
 1660              	.L408:
 1661 0152 2169     		ldr	r1, [r4, #16]
 1662 0154 2068     		ldr	r0, [r4]
 1663 0156 FFF7FEFF 		bl	move_window
 1664 015a 6B1C     		adds	r3, r5, #1
 1665 015c 8246     		mov	r10, r0
 1666 015e 9BB2     		uxth	r3, r3
 1667 0160 78B9     		cbnz	r0, .L429
 1668 0162 6269     		ldr	r2, [r4, #20]
 1669 0164 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1670 0166 E52A     		cmp	r2, #229
 1671 0168 EBD1     		bne	.L452
 1672              	.L404:
 1673 016a 05B9     		cbnz	r5, .L406
 1674 016c E788     		ldrh	r7, [r4, #6]
 1675              	.L406:
 1676 016e 9E42     		cmp	r6, r3
 1677 0170 1FD0     		beq	.L407
 1678 0172 0121     		movs	r1, #1
 1679 0174 2046     		mov	r0, r4
 1680 0176 1D46     		mov	r5, r3
 1681 0178 FFF7FEFF 		bl	dir_next
 1682 017c 8246     		mov	r10, r0
 1683 017e 0028     		cmp	r0, #0
 1684 0180 E7D0     		beq	.L408
 1685              	.L429:
 1686 0182 5046     		mov	r0, r10
 1687 0184 07B0     		add	sp, sp, #28
 1688              		@ sp needed
 1689 0186 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1690              	.L451:
 1691 018a 2B88     		ldrh	r3, [r5]
 1692 018c 002B     		cmp	r3, #0
 1693 018e CED0     		beq	.L425
 1694 0190 0023     		movs	r3, #0
 1695              	.L403:
 1696 0192 0133     		adds	r3, r3, #1
 1697 0194 9BB2     		uxth	r3, r3
 1698 0196 35F81320 		ldrh	r2, [r5, r3, lsl #1]
 1699 019a 002A     		cmp	r2, #0
 1700 019c F9D1     		bne	.L403
 1701 019e 4E4A     		ldr	r2, .L454
 1702 01a0 03F11906 		add	r6, r3, #25
 1703 01a4 A2FB0636 		umull	r3, r6, r2, r6
 1704 01a8 C6F38F06 		ubfx	r6, r6, #2, #16
 1705 01ac C0E7     		b	.L401
 1706              	.L422:
 1707 01ae 1346     		mov	r3, r2
 1708 01b0 73E7     		b	.L394
 1709              	.L407:
 1710 01b2 012E     		cmp	r6, #1
ARM GAS  /tmp/cc9D3RON.s 			page 31


 1711 01b4 1FD1     		bne	.L453
 1712              	.L420:
 1713 01b6 2169     		ldr	r1, [r4, #16]
 1714 01b8 2068     		ldr	r0, [r4]
 1715 01ba FFF7FEFF 		bl	move_window
 1716 01be 8246     		mov	r10, r0
 1717 01c0 0028     		cmp	r0, #0
 1718 01c2 DED1     		bne	.L429
 1719 01c4 6369     		ldr	r3, [r4, #20]
 1720 01c6 2022     		movs	r2, #32
 1721 01c8 1846     		mov	r0, r3
 1722 01ca 5146     		mov	r1, r10
 1723 01cc FFF7FEFF 		bl	memset
 1724 01d0 A269     		ldr	r2, [r4, #24]
 1725 01d2 0346     		mov	r3, r0
 1726 01d4 1168     		ldr	r1, [r2]	@ unaligned
 1727 01d6 5068     		ldr	r0, [r2, #4]	@ unaligned
 1728 01d8 5860     		str	r0, [r3, #4]	@ unaligned
 1729 01da 1960     		str	r1, [r3]	@ unaligned
 1730 01dc 1189     		ldrh	r1, [r2, #8]	@ unaligned
 1731 01de 927A     		ldrb	r2, [r2, #10]	@ zero_extendqisi2
 1732 01e0 9A72     		strb	r2, [r3, #10]
 1733 01e2 1981     		strh	r1, [r3, #8]	@ unaligned
 1734 01e4 A269     		ldr	r2, [r4, #24]
 1735 01e6 D27A     		ldrb	r2, [r2, #11]	@ zero_extendqisi2
 1736 01e8 02F01802 		and	r2, r2, #24
 1737 01ec 1A73     		strb	r2, [r3, #12]
 1738 01ee 2368     		ldr	r3, [r4]
 1739 01f0 0122     		movs	r2, #1
 1740 01f2 1A71     		strb	r2, [r3, #4]
 1741 01f4 C5E7     		b	.L429
 1742              	.L453:
 1743 01f6 3946     		mov	r1, r7
 1744 01f8 2046     		mov	r0, r4
 1745 01fa FFF7FEFF 		bl	dir_sdi
 1746 01fe 8246     		mov	r10, r0
 1747 0200 0028     		cmp	r0, #0
 1748 0202 BED1     		bne	.L429
 1749 0204 A269     		ldr	r2, [r4, #24]
 1750 0206 8046     		mov	r8, r0
 1751 0208 02F10B00 		add	r0, r2, #11
 1752              	.L409:
 1753 020c 12F8011B 		ldrb	r1, [r2], #1	@ zero_extendqisi2
 1754 0210 4FEAC813 		lsl	r3, r8, #7
 1755 0214 43EA5808 		orr	r8, r3, r8, lsr #1
 1756 0218 51FA88F8 		uxtab	r8, r1, r8
 1757 021c 8242     		cmp	r2, r0
 1758 021e 5FFA88F8 		uxtb	r8, r8
 1759 0222 F3D1     		bne	.L409
 1760 0224 2D4F     		ldr	r7, .L454+4
 1761              	.L417:
 1762 0226 2169     		ldr	r1, [r4, #16]
 1763 0228 2068     		ldr	r0, [r4]
 1764 022a FFF7FEFF 		bl	move_window
 1765 022e 8246     		mov	r10, r0
 1766 0230 0028     		cmp	r0, #0
 1767 0232 A6D1     		bne	.L429
ARM GAS  /tmp/cc9D3RON.s 			page 32


 1768 0234 5FFA85FA 		uxtb	r10, r5
 1769 0238 6669     		ldr	r6, [r4, #20]
 1770 023a D4F81CE0 		ldr	lr, [r4, #28]
 1771 023e 86F80D80 		strb	r8, [r6, #13]
 1772 0242 0AF1FF32 		add	r2, r10, #-1
 1773 0246 0F21     		movs	r1, #15
 1774 0248 02EB420C 		add	ip, r2, r2, lsl #1
 1775 024c F172     		strb	r1, [r6, #11]
 1776 024e 0346     		mov	r3, r0
 1777 0250 02EB8C02 		add	r2, r2, ip, lsl #2
 1778 0254 3073     		strb	r0, [r6, #12]
 1779 0256 B076     		strb	r0, [r6, #26]
 1780 0258 F076     		strb	r0, [r6, #27]
 1781 025a 0146     		mov	r1, r0
 1782 025c 4FF0010B 		mov	fp, #1
 1783 0260 4FF6FF79 		movw	r9, #65535
 1784              	.L415:
 1785 0264 4B45     		cmp	r3, r9
 1786 0266 1ABF     		itte	ne
 1787 0268 3EF81230 		ldrhne	r3, [lr, r2, lsl #1]
 1788 026c 02F1010C 		addne	ip, r2, #1
 1789 0270 9446     		moveq	ip, r2
 1790              	.L413:
 1791 0272 06EB0B00 		add	r0, r6, fp
 1792 0276 1A0A     		lsrs	r2, r3, #8
 1793 0278 06F80B30 		strb	r3, [r6, fp]
 1794 027c 0131     		adds	r1, r1, #1
 1795 027e 4270     		strb	r2, [r0, #1]
 1796 0280 4BB9     		cbnz	r3, .L411
 1797 0282 0C29     		cmp	r1, #12
 1798 0284 14D8     		bhi	.L412
 1799 0286 11F807B0 		ldrb	fp, [r1, r7]	@ zero_extendqisi2
 1800 028a 4FF6FF73 		movw	r3, #65535
 1801 028e F0E7     		b	.L413
 1802              	.L450:
 1803 0290 4FF0070A 		mov	r10, #7
 1804 0294 75E7     		b	.L429
 1805              	.L411:
 1806 0296 0C29     		cmp	r1, #12
 1807 0298 03D8     		bhi	.L414
 1808 029a 6246     		mov	r2, ip
 1809 029c 17F801B0 		ldrb	fp, [r7, r1]	@ zero_extendqisi2
 1810 02a0 E0E7     		b	.L415
 1811              	.L414:
 1812 02a2 4FF6FF72 		movw	r2, #65535
 1813 02a6 9342     		cmp	r3, r2
 1814 02a8 02D0     		beq	.L412
 1815 02aa 3EF81C30 		ldrh	r3, [lr, ip, lsl #1]
 1816 02ae 0BB9     		cbnz	r3, .L416
 1817              	.L412:
 1818 02b0 4AF0400A 		orr	r10, r10, #64
 1819              	.L416:
 1820 02b4 86F800A0 		strb	r10, [r6]
 1821 02b8 2368     		ldr	r3, [r4]
 1822 02ba 0122     		movs	r2, #1
 1823 02bc 1A71     		strb	r2, [r3, #4]
 1824 02be 0021     		movs	r1, #0
ARM GAS  /tmp/cc9D3RON.s 			page 33


 1825 02c0 2046     		mov	r0, r4
 1826 02c2 FFF7FEFF 		bl	dir_next
 1827 02c6 8246     		mov	r10, r0
 1828 02c8 0028     		cmp	r0, #0
 1829 02ca 7FF45AAF 		bne	.L429
 1830 02ce 013D     		subs	r5, r5, #1
 1831 02d0 ADB2     		uxth	r5, r5
 1832 02d2 002D     		cmp	r5, #0
 1833 02d4 A7D1     		bne	.L417
 1834 02d6 6EE7     		b	.L420
 1835              	.L455:
 1836              		.align	2
 1837              	.L454:
 1838 02d8 4FECC44E 		.word	1321528399
 1839 02dc 00000000 		.word	.LANCHOR2
 1840              		.size	dir_register, .-dir_register
 1841              		.section	.text.sync,"ax",%progbits
 1842              		.align	1
 1843              		.p2align 2,,3
 1844              		.syntax unified
 1845              		.thumb
 1846              		.thumb_func
 1847              		.fpu fpv4-sp-d16
 1848              		.type	sync, %function
 1849              	sync:
 1850              		@ args = 0, pretend = 0, frame = 0
 1851              		@ frame_needed = 0, uses_anonymous_args = 0
 1852 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1853 0002 0021     		movs	r1, #0
 1854 0004 0446     		mov	r4, r0
 1855 0006 FFF7FEFF 		bl	move_window
 1856 000a 58B9     		cbnz	r0, .L457
 1857 000c 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1858 000e 6678     		ldrb	r6, [r4, #1]	@ zero_extendqisi2
 1859 0010 032B     		cmp	r3, #3
 1860 0012 08D0     		beq	.L463
 1861              	.L458:
 1862 0014 0022     		movs	r2, #0
 1863 0016 3046     		mov	r0, r6
 1864 0018 1146     		mov	r1, r2
 1865 001a FFF7FEFF 		bl	disk_ioctl
 1866 001e 0030     		adds	r0, r0, #0
 1867 0020 18BF     		it	ne
 1868 0022 0120     		movne	r0, #1
 1869              	.L457:
 1870 0024 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1871              	.L463:
 1872 0026 6379     		ldrb	r3, [r4, #5]	@ zero_extendqisi2
 1873 0028 002B     		cmp	r3, #0
 1874 002a F3D0     		beq	.L458
 1875 002c 0546     		mov	r5, r0
 1876 002e 04F13007 		add	r7, r4, #48
 1877 0032 E062     		str	r0, [r4, #44]
 1878 0034 4FF40072 		mov	r2, #512
 1879 0038 2946     		mov	r1, r5
 1880 003a 3846     		mov	r0, r7
 1881 003c FFF7FEFF 		bl	memset
ARM GAS  /tmp/cc9D3RON.s 			page 34


 1882 0040 D4E90332 		ldrd	r3, r2, [r4, #12]
 1883 0044 3046     		mov	r0, r6
 1884 0046 C2F3072E 		ubfx	lr, r2, #8, #8
 1885 004a 160C     		lsrs	r6, r2, #16
 1886 004c 84F81822 		strb	r2, [r4, #536]
 1887 0050 120E     		lsrs	r2, r2, #24
 1888 0052 84F81A62 		strb	r6, [r4, #538]
 1889 0056 84F81B22 		strb	r2, [r4, #539]
 1890 005a C3F30726 		ubfx	r6, r3, #8, #8
 1891 005e 1A0C     		lsrs	r2, r3, #16
 1892 0060 DFF83CC0 		ldr	ip, .L464+4
 1893 0064 84F81C32 		strb	r3, [r4, #540]
 1894 0068 84F81D62 		strb	r6, [r4, #541]
 1895 006c 1B0E     		lsrs	r3, r3, #24
 1896 006e 4AF65526 		movw	r6, #43605
 1897 0072 84F81E22 		strb	r2, [r4, #542]
 1898 0076 094A     		ldr	r2, .L464
 1899 0078 84F81F32 		strb	r3, [r4, #543]
 1900 007c A4F82E62 		strh	r6, [r4, #558]	@ movhi
 1901 0080 C4F81422 		str	r2, [r4, #532]
 1902 0084 3946     		mov	r1, r7
 1903 0086 84F819E2 		strb	lr, [r4, #537]
 1904 008a C4F830C0 		str	ip, [r4, #48]
 1905 008e 0123     		movs	r3, #1
 1906 0090 6269     		ldr	r2, [r4, #20]
 1907 0092 FFF7FEFF 		bl	disk_write
 1908 0096 6678     		ldrb	r6, [r4, #1]	@ zero_extendqisi2
 1909 0098 6571     		strb	r5, [r4, #5]
 1910 009a BBE7     		b	.L458
 1911              	.L465:
 1912              		.align	2
 1913              	.L464:
 1914 009c 72724161 		.word	1631679090
 1915 00a0 52526141 		.word	1096897106
 1916              		.size	sync, .-sync
 1917              		.section	.text.follow_path,"ax",%progbits
 1918              		.align	1
 1919              		.p2align 2,,3
 1920              		.syntax unified
 1921              		.thumb
 1922              		.thumb_func
 1923              		.fpu fpv4-sp-d16
 1924              		.type	follow_path, %function
 1925              	follow_path:
 1926              		@ args = 0, pretend = 0, frame = 8
 1927              		@ frame_needed = 0, uses_anonymous_args = 0
 1928 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1929 0004 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 1930 0006 2F2B     		cmp	r3, #47
 1931 0008 83B0     		sub	sp, sp, #12
 1932 000a 0D46     		mov	r5, r1
 1933 000c 0746     		mov	r7, r0
 1934 000e 44D0     		beq	.L467
 1935 0010 5C2B     		cmp	r3, #92
 1936 0012 42D0     		beq	.L467
 1937 0014 0024     		movs	r4, #0
 1938 0016 BC60     		str	r4, [r7, #8]
ARM GAS  /tmp/cc9D3RON.s 			page 35


 1939 0018 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1940 001a 1F28     		cmp	r0, #31
 1941 001c 43D9     		bls	.L599
 1942              	.L607:
 1943 001e DFF87082 		ldr	r8, .L611+4
 1944 0022 01E0     		b	.L471
 1945              	.L472:
 1946 0024 15F8010F 		ldrb	r0, [r5, #1]!	@ zero_extendqisi2
 1947              	.L471:
 1948 0028 2F28     		cmp	r0, #47
 1949 002a FBD0     		beq	.L472
 1950 002c 5C28     		cmp	r0, #92
 1951 002e F9D0     		beq	.L472
 1952 0030 80B2     		uxth	r0, r0
 1953 0032 1F28     		cmp	r0, #31
 1954 0034 D7F81C90 		ldr	r9, [r7, #28]
 1955 0038 2BD9     		bls	.L473
 1956 003a 2F28     		cmp	r0, #47
 1957 003c 29D0     		beq	.L473
 1958 003e 5C28     		cmp	r0, #92
 1959 0040 27D0     		beq	.L473
 1960 0042 A9F10206 		sub	r6, r9, #2
 1961 0046 B346     		mov	fp, r6
 1962 0048 AA46     		mov	r10, r5
 1963 004a 0124     		movs	r4, #1
 1964 004c 10E0     		b	.L474
 1965              	.L476:
 1966 004e 2BF8020F 		strh	r0, [fp, #2]!	@ movhi
 1967 0052 1AF8010F 		ldrb	r0, [r10, #1]!	@ zero_extendqisi2
 1968 0056 1F28     		cmp	r0, #31
 1969 0058 04F10103 		add	r3, r4, #1
 1970 005c 40F2DF80 		bls	.L606
 1971 0060 2F28     		cmp	r0, #47
 1972 0062 28D0     		beq	.L475
 1973 0064 5C28     		cmp	r0, #92
 1974 0066 26D0     		beq	.L475
 1975 0068 B3F5807F 		cmp	r3, #256
 1976 006c 11D0     		beq	.L473
 1977 006e 1C46     		mov	r4, r3
 1978              	.L474:
 1979 0070 0121     		movs	r1, #1
 1980 0072 FFF7FEFF 		bl	ff_convert
 1981 0076 60B1     		cbz	r0, .L473
 1982 0078 7F28     		cmp	r0, #127
 1983 007a E8D8     		bhi	.L476
 1984 007c 2228     		cmp	r0, #34
 1985 007e 08D0     		beq	.L473
 1986 0080 824A     		ldr	r2, .L611
 1987 0082 2A23     		movs	r3, #42
 1988 0084 03E0     		b	.L477
 1989              	.L478:
 1990 0086 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 1991 008a 002B     		cmp	r3, #0
 1992 008c DFD0     		beq	.L476
 1993              	.L477:
 1994 008e 9842     		cmp	r0, r3
 1995 0090 F9D1     		bne	.L478
ARM GAS  /tmp/cc9D3RON.s 			page 36


 1996              	.L473:
 1997 0092 0620     		movs	r0, #6
 1998              	.L525:
 1999 0094 03B0     		add	sp, sp, #12
 2000              		@ sp needed
 2001 0096 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2002              	.L467:
 2003 009a 0135     		adds	r5, r5, #1
 2004 009c 0024     		movs	r4, #0
 2005 009e BC60     		str	r4, [r7, #8]
 2006 00a0 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 2007 00a2 1F28     		cmp	r0, #31
 2008 00a4 BBD8     		bhi	.L607
 2009              	.L599:
 2010 00a6 2146     		mov	r1, r4
 2011 00a8 3846     		mov	r0, r7
 2012 00aa FFF7FEFF 		bl	dir_sdi
 2013 00ae 7C61     		str	r4, [r7, #20]
 2014 00b0 03B0     		add	sp, sp, #12
 2015              		@ sp needed
 2016 00b2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2017              	.L475:
 2018 00b6 1D44     		add	r5, r5, r3
 2019 00b8 4FF0000B 		mov	fp, #0
 2020              	.L515:
 2021 00bc 09EB4402 		add	r2, r9, r4, lsl #1
 2022              	.L483:
 2023 00c0 32F8023D 		ldrh	r3, [r2, #-2]!
 2024 00c4 202B     		cmp	r3, #32
 2025 00c6 01D0     		beq	.L481
 2026 00c8 2E2B     		cmp	r3, #46
 2027 00ca 02D1     		bne	.L482
 2028              	.L481:
 2029 00cc 013C     		subs	r4, r4, #1
 2030 00ce F7D1     		bne	.L483
 2031 00d0 DFE7     		b	.L473
 2032              	.L482:
 2033 00d2 BB69     		ldr	r3, [r7, #24]
 2034 00d4 4FF02032 		mov	r2, #538976288
 2035 00d8 4FF0000A 		mov	r10, #0
 2036 00dc 29F814A0 		strh	r10, [r9, r4, lsl #1]	@ movhi
 2037 00e0 5A60     		str	r2, [r3, #4]	@ unaligned
 2038 00e2 1A60     		str	r2, [r3]	@ unaligned
 2039 00e4 C3F80720 		str	r2, [r3, #7]	@ unaligned
 2040 00e8 09EB4403 		add	r3, r9, r4, lsl #1
 2041 00ec 01E0     		b	.L516
 2042              	.L484:
 2043 00ee 0AF1010A 		add	r10, r10, #1
 2044              	.L516:
 2045 00f2 36F8020F 		ldrh	r0, [r6, #2]!
 2046 00f6 2028     		cmp	r0, #32
 2047 00f8 F9D0     		beq	.L484
 2048 00fa 2E28     		cmp	r0, #46
 2049 00fc F7D0     		beq	.L484
 2050 00fe BAF1000F 		cmp	r10, #0
 2051 0102 01D0     		beq	.L486
 2052 0104 4BF0030B 		orr	fp, fp, #3
ARM GAS  /tmp/cc9D3RON.s 			page 37


 2053              	.L486:
 2054 0108 33F8022D 		ldrh	r2, [r3, #-2]!
 2055 010c 2E2A     		cmp	r2, #46
 2056 010e 01D0     		beq	.L487
 2057 0110 013C     		subs	r4, r4, #1
 2058 0112 F9D1     		bne	.L486
 2059              	.L487:
 2060 0114 0023     		movs	r3, #0
 2061 0116 1E46     		mov	r6, r3
 2062 0118 0822     		movs	r2, #8
 2063              	.L488:
 2064 011a 0AF1010A 		add	r10, r10, #1
 2065 011e 30B3     		cbz	r0, .L490
 2066 0120 2028     		cmp	r0, #32
 2067 0122 6DD0     		beq	.L491
 2068 0124 2E28     		cmp	r0, #46
 2069 0126 70D0     		beq	.L608
 2070 0128 9342     		cmp	r3, r2
 2071 012a 19D2     		bcs	.L495
 2072 012c 5445     		cmp	r4, r10
 2073 012e 6ED0     		beq	.L517
 2074 0130 7F28     		cmp	r0, #127
 2075 0132 7BD8     		bhi	.L609
 2076              	.L501:
 2077 0134 2B28     		cmp	r0, #43
 2078 0136 00F08980 		beq	.L502
 2079 013a DFF858C1 		ldr	ip, .L611+8
 2080 013e 2C21     		movs	r1, #44
 2081              	.L503:
 2082 0140 8142     		cmp	r1, r0
 2083 0142 00F08380 		beq	.L502
 2084 0146 1CF8011F 		ldrb	r1, [ip, #1]!	@ zero_extendqisi2
 2085 014a 0029     		cmp	r1, #0
 2086 014c F8D1     		bne	.L503
 2087 014e A0F14101 		sub	r1, r0, #65
 2088 0152 1929     		cmp	r1, #25
 2089 0154 00F28F80 		bhi	.L610
 2090 0158 46F00206 		orr	r6, r6, #2
 2091 015c C0B2     		uxtb	r0, r0
 2092 015e 78E0     		b	.L506
 2093              	.L495:
 2094 0160 0B2A     		cmp	r2, #11
 2095 0162 7ED0     		beq	.L518
 2096 0164 5445     		cmp	r4, r10
 2097 0166 54D0     		beq	.L500
 2098 0168 4BF0030B 		orr	fp, fp, #3
 2099 016c 51D2     		bcs	.L500
 2100              	.L490:
 2101 016e BB69     		ldr	r3, [r7, #24]
 2102 0170 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 2103 0172 E529     		cmp	r1, #229
 2104 0174 02D1     		bne	.L508
 2105 0176 0521     		movs	r1, #5
 2106 0178 1970     		strb	r1, [r3]
 2107 017a BB69     		ldr	r3, [r7, #24]
 2108              	.L508:
 2109 017c 082A     		cmp	r2, #8
ARM GAS  /tmp/cc9D3RON.s 			page 38


 2110 017e 04BF     		itt	eq
 2111 0180 B600     		lsleq	r6, r6, #2
 2112 0182 F6B2     		uxtbeq	r6, r6
 2113              	.L499:
 2114 0184 06F00C02 		and	r2, r6, #12
 2115 0188 0C2A     		cmp	r2, #12
 2116 018a 4CD0     		beq	.L509
 2117 018c 06F00306 		and	r6, r6, #3
 2118 0190 032E     		cmp	r6, #3
 2119 0192 48D0     		beq	.L509
 2120 0194 1BF0020F 		tst	fp, #2
 2121 0198 07D1     		bne	.L511
 2122 019a 012E     		cmp	r6, #1
 2123 019c 08BF     		it	eq
 2124 019e 4BF0100B 		orreq	fp, fp, #16
 2125 01a2 042A     		cmp	r2, #4
 2126 01a4 08BF     		it	eq
 2127 01a6 4BF0080B 		orreq	fp, fp, #8
 2128              	.L511:
 2129 01aa 83F80BB0 		strb	fp, [r3, #11]
 2130 01ae 0021     		movs	r1, #0
 2131 01b0 3846     		mov	r0, r7
 2132 01b2 FFF7FEFF 		bl	dir_sdi
 2133 01b6 C8B9     		cbnz	r0, .L513
 2134 01b8 3846     		mov	r0, r7
 2135 01ba FFF7FEFF 		bl	dir_find.part.8
 2136 01be BB69     		ldr	r3, [r7, #24]
 2137 01c0 DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 2138 01c2 A8B9     		cbnz	r0, .L521
 2139 01c4 5907     		lsls	r1, r3, #29
 2140 01c6 3FF565AF 		bmi	.L525
 2141 01ca 7B69     		ldr	r3, [r7, #20]
 2142 01cc DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 2143 01ce D206     		lsls	r2, r2, #27
 2144 01d0 43D5     		bpl	.L524
 2145 01d2 587D     		ldrb	r0, [r3, #21]	@ zero_extendqisi2
 2146 01d4 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 2147 01d6 D97E     		ldrb	r1, [r3, #27]	@ zero_extendqisi2
 2148 01d8 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 2149 01da 42EA0022 		orr	r2, r2, r0, lsl #8
 2150 01de 43EA0123 		orr	r3, r3, r1, lsl #8
 2151 01e2 43EA0243 		orr	r3, r3, r2, lsl #16
 2152 01e6 BB60     		str	r3, [r7, #8]
 2153 01e8 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 2154 01ea 1DE7     		b	.L471
 2155              	.L513:
 2156 01ec BB69     		ldr	r3, [r7, #24]
 2157 01ee DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 2158              	.L521:
 2159 01f0 0428     		cmp	r0, #4
 2160 01f2 7FF44FAF 		bne	.L525
 2161 01f6 13F0040F 		tst	r3, #4
 2162 01fa 08BF     		it	eq
 2163 01fc 0520     		moveq	r0, #5
 2164 01fe 49E7     		b	.L525
 2165              	.L491:
 2166 0200 4BF0030B 		orr	fp, fp, #3
ARM GAS  /tmp/cc9D3RON.s 			page 39


 2167              	.L494:
 2168 0204 39F81A00 		ldrh	r0, [r9, r10, lsl #1]
 2169 0208 87E7     		b	.L488
 2170              	.L608:
 2171 020a 5445     		cmp	r4, r10
 2172 020c F8D1     		bne	.L491
 2173              	.L517:
 2174 020e 0B2A     		cmp	r2, #11
 2175 0210 27D0     		beq	.L518
 2176              	.L500:
 2177 0212 B600     		lsls	r6, r6, #2
 2178 0214 F6B2     		uxtb	r6, r6
 2179 0216 A246     		mov	r10, r4
 2180 0218 0B22     		movs	r2, #11
 2181 021a 0823     		movs	r3, #8
 2182 021c F2E7     		b	.L494
 2183              	.L606:
 2184 021e 1D44     		add	r5, r5, r3
 2185 0220 4FF0040B 		mov	fp, #4
 2186 0224 4AE7     		b	.L515
 2187              	.L509:
 2188 0226 4BF0020B 		orr	fp, fp, #2
 2189 022a BEE7     		b	.L511
 2190              	.L609:
 2191 022c 0021     		movs	r1, #0
 2192 022e CDE90032 		strd	r3, r2, [sp]
 2193 0232 FFF7FEFF 		bl	ff_convert
 2194 0236 4BF0020B 		orr	fp, fp, #2
 2195 023a DDE90032 		ldrd	r3, r2, [sp]
 2196 023e 28B1     		cbz	r0, .L502
 2197 0240 4044     		add	r0, r0, r8
 2198 0242 10F8800C 		ldrb	r0, [r0, #-128]	@ zero_extendqisi2
 2199 0246 0028     		cmp	r0, #0
 2200 0248 7FF474AF 		bne	.L501
 2201              	.L502:
 2202 024c 4BF0030B 		orr	fp, fp, #3
 2203 0250 5F20     		movs	r0, #95
 2204              	.L506:
 2205 0252 B969     		ldr	r1, [r7, #24]
 2206 0254 C854     		strb	r0, [r1, r3]
 2207 0256 0133     		adds	r3, r3, #1
 2208 0258 D4E7     		b	.L494
 2209              	.L524:
 2210 025a 0520     		movs	r0, #5
 2211 025c 03B0     		add	sp, sp, #12
 2212              		@ sp needed
 2213 025e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2214              	.L518:
 2215 0262 BB69     		ldr	r3, [r7, #24]
 2216 0264 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 2217 0266 E52A     		cmp	r2, #229
 2218 0268 4BF0030B 		orr	fp, fp, #3
 2219 026c 8AD1     		bne	.L499
 2220 026e 0522     		movs	r2, #5
 2221 0270 1A70     		strb	r2, [r3]
 2222 0272 BB69     		ldr	r3, [r7, #24]
 2223 0274 86E7     		b	.L499
ARM GAS  /tmp/cc9D3RON.s 			page 40


 2224              	.L610:
 2225 0276 A0F16101 		sub	r1, r0, #97
 2226 027a 1929     		cmp	r1, #25
 2227 027c 97BF     		itett	ls
 2228 027e 2038     		subls	r0, r0, #32
 2229 0280 C0B2     		uxtbhi	r0, r0
 2230 0282 C0B2     		uxtbls	r0, r0
 2231 0284 46F00106 		orrls	r6, r6, #1
 2232 0288 E3E7     		b	.L506
 2233              	.L612:
 2234 028a 00BF     		.align	2
 2235              	.L611:
 2236 028c 01000000 		.word	.LC0+1
 2237 0290 00000000 		.word	.LANCHOR3
 2238 0294 01000000 		.word	.LC1+1
 2239              		.size	follow_path, .-follow_path
 2240              		.section	.text.f_mount,"ax",%progbits
 2241              		.align	1
 2242              		.p2align 2,,3
 2243              		.global	f_mount
 2244              		.syntax unified
 2245              		.thumb
 2246              		.thumb_func
 2247              		.fpu fpv4-sp-d16
 2248              		.type	f_mount, %function
 2249              	f_mount:
 2250              		@ args = 0, pretend = 0, frame = 0
 2251              		@ frame_needed = 0, uses_anonymous_args = 0
 2252              		@ link register save eliminated.
 2253 0000 0128     		cmp	r0, #1
 2254 0002 0FD8     		bhi	.L617
 2255 0004 0C4B     		ldr	r3, .L631
 2256 0006 53F82020 		ldr	r2, [r3, r0, lsl #2]
 2257 000a 6AB1     		cbz	r2, .L625
 2258 000c 10B4     		push	{r4}
 2259 000e 0024     		movs	r4, #0
 2260 0010 1470     		strb	r4, [r2]
 2261 0012 09B1     		cbz	r1, .L616
 2262 0014 0022     		movs	r2, #0
 2263 0016 0A70     		strb	r2, [r1]
 2264              	.L616:
 2265 0018 43F82010 		str	r1, [r3, r0, lsl #2]
 2266 001c 5DF8044B 		ldr	r4, [sp], #4
 2267 0020 0020     		movs	r0, #0
 2268 0022 7047     		bx	lr
 2269              	.L617:
 2270 0024 0B20     		movs	r0, #11
 2271 0026 7047     		bx	lr
 2272              	.L625:
 2273 0028 09B1     		cbz	r1, .L627
 2274 002a 0022     		movs	r2, #0
 2275 002c 0A70     		strb	r2, [r1]
 2276              	.L627:
 2277 002e 43F82010 		str	r1, [r3, r0, lsl #2]
 2278 0032 0020     		movs	r0, #0
 2279 0034 7047     		bx	lr
 2280              	.L632:
ARM GAS  /tmp/cc9D3RON.s 			page 41


 2281 0036 00BF     		.align	2
 2282              	.L631:
 2283 0038 00000000 		.word	.LANCHOR0
 2284              		.size	f_mount, .-f_mount
 2285              		.section	.text.f_open,"ax",%progbits
 2286              		.align	1
 2287              		.p2align 2,,3
 2288              		.global	f_open
 2289              		.syntax unified
 2290              		.thumb
 2291              		.thumb_func
 2292              		.fpu fpv4-sp-d16
 2293              		.type	f_open, %function
 2294              	f_open:
 2295              		@ args = 0, pretend = 0, frame = 568
 2296              		@ frame_needed = 0, uses_anonymous_args = 0
 2297 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2298 0004 ADF50E7D 		sub	sp, sp, #568
 2299 0008 0023     		movs	r3, #0
 2300 000a 1646     		mov	r6, r2
 2301 000c 0360     		str	r3, [r0]
 2302 000e 0191     		str	r1, [sp, #4]
 2303 0010 02F01E02 		and	r2, r2, #30
 2304 0014 0446     		mov	r4, r0
 2305 0016 05A9     		add	r1, sp, #20
 2306 0018 01A8     		add	r0, sp, #4
 2307 001a FFF7FEFF 		bl	chk_mounted
 2308 001e 02AA     		add	r2, sp, #8
 2309 0020 0EAB     		add	r3, sp, #56
 2310 0022 CDE90B23 		strd	r2, r3, [sp, #44]
 2311 0026 06F01F07 		and	r7, r6, #31
 2312 002a 06F01C08 		and	r8, r6, #28
 2313 002e 40B1     		cbz	r0, .L668
 2314              	.L634:
 2315 0030 B8F1000F 		cmp	r8, #0
 2316 0034 01D0     		beq	.L654
 2317 0036 0428     		cmp	r0, #4
 2318 0038 40D0     		beq	.L669
 2319              	.L654:
 2320 003a 0DF50E7D 		add	sp, sp, #568
 2321              		@ sp needed
 2322 003e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2323              	.L668:
 2324 0042 0199     		ldr	r1, [sp, #4]
 2325 0044 05A8     		add	r0, sp, #20
 2326 0046 FFF7FEFF 		bl	follow_path
 2327 004a 0A9D     		ldr	r5, [sp, #40]
 2328 004c 0028     		cmp	r0, #0
 2329 004e EFD1     		bne	.L634
 2330 0050 002D     		cmp	r5, #0
 2331 0052 77D0     		beq	.L647
 2332 0054 EB7A     		ldrb	r3, [r5, #11]	@ zero_extendqisi2
 2333 0056 B8F1000F 		cmp	r8, #0
 2334 005a 06D0     		beq	.L670
 2335 005c 13F0110F 		tst	r3, #17
 2336 0060 79D1     		bne	.L652
 2337 0062 7007     		lsls	r0, r6, #29
ARM GAS  /tmp/cc9D3RON.s 			page 42


 2338 0064 73D5     		bpl	.L671
 2339 0066 0820     		movs	r0, #8
 2340 0068 E7E7     		b	.L654
 2341              	.L670:
 2342 006a DA06     		lsls	r2, r3, #27
 2343 006c 24D4     		bmi	.L672
 2344 006e B207     		lsls	r2, r6, #30
 2345 0070 01D5     		bpl	.L642
 2346 0072 D807     		lsls	r0, r3, #31
 2347 0074 6FD4     		bmi	.L652
 2348              	.L642:
 2349 0076 3107     		lsls	r1, r6, #28
 2350 0078 059A     		ldr	r2, [sp, #20]
 2351 007a 01D5     		bpl	.L640
 2352              	.L646:
 2353 007c 47F02007 		orr	r7, r7, #32
 2354              	.L640:
 2355 0080 D36A     		ldr	r3, [r2, #44]
 2356 0082 A771     		strb	r7, [r4, #6]
 2357 0084 C4E90735 		strd	r3, r5, [r4, #28]
 2358 0088 E87E     		ldrb	r0, [r5, #27]	@ zero_extendqisi2
 2359 008a 6E7D     		ldrb	r6, [r5, #21]	@ zero_extendqisi2
 2360 008c 297D     		ldrb	r1, [r5, #20]	@ zero_extendqisi2
 2361 008e AB7E     		ldrb	r3, [r5, #26]	@ zero_extendqisi2
 2362 0090 41EA0621 		orr	r1, r1, r6, lsl #8
 2363 0094 43EA0023 		orr	r3, r3, r0, lsl #8
 2364 0098 43EA0143 		orr	r3, r3, r1, lsl #16
 2365 009c 2361     		str	r3, [r4, #16]
 2366 009e E969     		ldr	r1, [r5, #28]	@ unaligned
 2367 00a0 D388     		ldrh	r3, [r2, #6]
 2368 00a2 A380     		strh	r3, [r4, #4]	@ movhi
 2369 00a4 0020     		movs	r0, #0
 2370 00a6 E160     		str	r1, [r4, #12]
 2371 00a8 2260     		str	r2, [r4]
 2372 00aa A060     		str	r0, [r4, #8]
 2373 00ac A061     		str	r0, [r4, #24]
 2374 00ae 6062     		str	r0, [r4, #36]
 2375 00b0 0DF50E7D 		add	sp, sp, #568
 2376              		@ sp needed
 2377 00b4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2378              	.L672:
 2379 00b8 0420     		movs	r0, #4
 2380 00ba BEE7     		b	.L654
 2381              	.L669:
 2382 00bc 05A8     		add	r0, sp, #20
 2383 00be FFF7FEFF 		bl	dir_register
 2384 00c2 0028     		cmp	r0, #0
 2385 00c4 B9D1     		bne	.L654
 2386 00c6 0A9D     		ldr	r5, [sp, #40]
 2387 00c8 47F00807 		orr	r7, r7, #8
 2388              	.L639:
 2389 00cc FFF7FEFF 		bl	get_fattime
 2390 00d0 EA7E     		ldrb	r2, [r5, #27]	@ zero_extendqisi2
 2391 00d2 95F815C0 		ldrb	ip, [r5, #21]	@ zero_extendqisi2
 2392 00d6 2E7D     		ldrb	r6, [r5, #20]	@ zero_extendqisi2
 2393 00d8 A97E     		ldrb	r1, [r5, #26]	@ zero_extendqisi2
 2394 00da A873     		strb	r0, [r5, #14]
ARM GAS  /tmp/cc9D3RON.s 			page 43


 2395 00dc C0F30723 		ubfx	r3, r0, #8, #8
 2396 00e0 41EA0221 		orr	r1, r1, r2, lsl #8
 2397 00e4 EB73     		strb	r3, [r5, #15]
 2398 00e6 46EA0C26 		orr	r6, r6, ip, lsl #8
 2399 00ea 030C     		lsrs	r3, r0, #16
 2400 00ec 059A     		ldr	r2, [sp, #20]
 2401 00ee 2B74     		strb	r3, [r5, #16]
 2402 00f0 000E     		lsrs	r0, r0, #24
 2403 00f2 0023     		movs	r3, #0
 2404 00f4 6874     		strb	r0, [r5, #17]
 2405 00f6 51EA0646 		orrs	r6, r1, r6, lsl #16
 2406 00fa 4FF00100 		mov	r0, #1
 2407 00fe EB72     		strb	r3, [r5, #11]
 2408 0100 2B77     		strb	r3, [r5, #28]
 2409 0102 6B77     		strb	r3, [r5, #29]
 2410 0104 AB77     		strb	r3, [r5, #30]
 2411 0106 EB77     		strb	r3, [r5, #31]
 2412 0108 AB76     		strb	r3, [r5, #26]
 2413 010a EB76     		strb	r3, [r5, #27]
 2414 010c 2B75     		strb	r3, [r5, #20]
 2415 010e 6B75     		strb	r3, [r5, #21]
 2416 0110 1071     		strb	r0, [r2, #4]
 2417 0112 B3D0     		beq	.L646
 2418 0114 8642     		cmp	r6, r0
 2419 0116 20D0     		beq	.L650
 2420 0118 9369     		ldr	r3, [r2, #24]
 2421 011a 9E42     		cmp	r6, r3
 2422 011c 1DD2     		bcs	.L650
 2423 011e 3146     		mov	r1, r6
 2424 0120 1046     		mov	r0, r2
 2425 0122 D2F82C80 		ldr	r8, [r2, #44]
 2426 0126 FFF7FEFF 		bl	remove_chain.part.7
 2427 012a 0028     		cmp	r0, #0
 2428 012c 85D1     		bne	.L654
 2429 012e 0598     		ldr	r0, [sp, #20]
 2430 0130 013E     		subs	r6, r6, #1
 2431 0132 4146     		mov	r1, r8
 2432 0134 C660     		str	r6, [r0, #12]
 2433 0136 FFF7FEFF 		bl	move_window
 2434 013a 0028     		cmp	r0, #0
 2435 013c 7FF47DAF 		bne	.L654
 2436 0140 059A     		ldr	r2, [sp, #20]
 2437 0142 9BE7     		b	.L646
 2438              	.L647:
 2439 0144 0620     		movs	r0, #6
 2440 0146 0DF50E7D 		add	sp, sp, #568
 2441              		@ sp needed
 2442 014a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2443              	.L671:
 2444 014e 3107     		lsls	r1, r6, #28
 2445 0150 BCD4     		bmi	.L639
 2446 0152 059A     		ldr	r2, [sp, #20]
 2447 0154 94E7     		b	.L640
 2448              	.L652:
 2449 0156 0720     		movs	r0, #7
 2450 0158 6FE7     		b	.L654
 2451              	.L650:
ARM GAS  /tmp/cc9D3RON.s 			page 44


 2452 015a 0220     		movs	r0, #2
 2453 015c 6DE7     		b	.L654
 2454              		.size	f_open, .-f_open
 2455 015e 00BF     		.section	.text.f_read,"ax",%progbits
 2456              		.align	1
 2457              		.p2align 2,,3
 2458              		.global	f_read
 2459              		.syntax unified
 2460              		.thumb
 2461              		.thumb_func
 2462              		.fpu fpv4-sp-d16
 2463              		.type	f_read, %function
 2464              	f_read:
 2465              		@ args = 0, pretend = 0, frame = 0
 2466              		@ frame_needed = 0, uses_anonymous_args = 0
 2467 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2468 0004 1F46     		mov	r7, r3
 2469 0006 0446     		mov	r4, r0
 2470 0008 0068     		ldr	r0, [r0]
 2471 000a 0023     		movs	r3, #0
 2472 000c 3B60     		str	r3, [r7]
 2473 000e 30B1     		cbz	r0, .L700
 2474 0010 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 2475 0012 23B1     		cbz	r3, .L700
 2476 0014 8946     		mov	r9, r1
 2477 0016 C388     		ldrh	r3, [r0, #6]
 2478 0018 A188     		ldrh	r1, [r4, #4]
 2479 001a 9942     		cmp	r1, r3
 2480 001c 04D0     		beq	.L717
 2481              	.L700:
 2482 001e 4FF00908 		mov	r8, #9
 2483              	.L674:
 2484 0022 4046     		mov	r0, r8
 2485 0024 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2486              	.L717:
 2487 0028 1546     		mov	r5, r2
 2488 002a FFF7FEFF 		bl	validate.part.1
 2489 002e 8046     		mov	r8, r0
 2490 0030 0028     		cmp	r0, #0
 2491 0032 F6D1     		bne	.L674
 2492 0034 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2493 0036 1906     		lsls	r1, r3, #24
 2494 0038 00F1A680 		bmi	.L701
 2495 003c DA07     		lsls	r2, r3, #31
 2496 003e 40F1A080 		bpl	.L702
 2497 0042 D4E90232 		ldrd	r3, r2, [r4, #8]
 2498 0046 A2EB030A 		sub	r10, r2, r3
 2499 004a AA45     		cmp	r10, r5
 2500 004c 28BF     		it	cs
 2501 004e AA46     		movcs	r10, r5
 2502 0050 BAF1000F 		cmp	r10, #0
 2503 0054 1FD1     		bne	.L675
 2504 0056 E4E7     		b	.L674
 2505              	.L718:
 2506 0058 A669     		ldr	r6, [r4, #24]
 2507              	.L677:
 2508 005a C5F50075 		rsb	r5, r5, #512
ARM GAS  /tmp/cc9D3RON.s 			page 45


 2509 005e 5545     		cmp	r5, r10
 2510 0060 3146     		mov	r1, r6
 2511 0062 28BF     		it	cs
 2512 0064 5546     		movcs	r5, r10
 2513 0066 FFF7FEFF 		bl	move_window
 2514 006a 0028     		cmp	r0, #0
 2515 006c 42D1     		bne	.L716
 2516 006e A368     		ldr	r3, [r4, #8]
 2517 0070 2168     		ldr	r1, [r4]
 2518 0072 C3F30803 		ubfx	r3, r3, #0, #9
 2519 0076 3033     		adds	r3, r3, #48
 2520 0078 1944     		add	r1, r1, r3
 2521 007a 2A46     		mov	r2, r5
 2522 007c 4846     		mov	r0, r9
 2523 007e FFF7FEFF 		bl	memcpy
 2524              	.L695:
 2525 0082 A368     		ldr	r3, [r4, #8]
 2526 0084 3A68     		ldr	r2, [r7]
 2527 0086 2B44     		add	r3, r3, r5
 2528 0088 2A44     		add	r2, r2, r5
 2529 008a BAEB050A 		subs	r10, r10, r5
 2530 008e A360     		str	r3, [r4, #8]
 2531 0090 A944     		add	r9, r9, r5
 2532 0092 3A60     		str	r2, [r7]
 2533 0094 C5D0     		beq	.L674
 2534              	.L675:
 2535 0096 C3F30805 		ubfx	r5, r3, #0, #9
 2536 009a 2068     		ldr	r0, [r4]
 2537 009c 002D     		cmp	r5, #0
 2538 009e DBD1     		bne	.L718
 2539 00a0 8178     		ldrb	r1, [r0, #2]	@ zero_extendqisi2
 2540 00a2 5E0A     		lsrs	r6, r3, #9
 2541 00a4 01F1FF3B 		add	fp, r1, #-1
 2542 00a8 0BEA060B 		and	fp, fp, r6
 2543 00ac 1BF0FF0B 		ands	fp, fp, #255
 2544 00b0 2CD0     		beq	.L678
 2545 00b2 6669     		ldr	r6, [r4, #20]
 2546              	.L679:
 2547 00b4 8369     		ldr	r3, [r0, #24]
 2548 00b6 023E     		subs	r6, r6, #2
 2549 00b8 023B     		subs	r3, r3, #2
 2550 00ba 9E42     		cmp	r6, r3
 2551 00bc 40D2     		bcs	.L689
 2552 00be 8278     		ldrb	r2, [r0, #2]	@ zero_extendqisi2
 2553 00c0 836A     		ldr	r3, [r0, #40]
 2554 00c2 02FB0636 		mla	r6, r2, r6, r3
 2555 00c6 002E     		cmp	r6, #0
 2556 00c8 3AD0     		beq	.L689
 2557 00ca 5FEA5A25 		lsrs	r5, r10, #9
 2558 00ce 5E44     		add	r6, r6, fp
 2559 00d0 17D0     		beq	.L691
 2560 00d2 19F0030F 		tst	r9, #3
 2561 00d6 14D1     		bne	.L691
 2562 00d8 0BEB0503 		add	r3, fp, r5
 2563 00dc 9342     		cmp	r3, r2
 2564 00de 88BF     		it	hi
 2565 00e0 A2EB0B05 		subhi	r5, r2, fp
ARM GAS  /tmp/cc9D3RON.s 			page 46


 2566 00e4 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 2567 00e6 EBB2     		uxtb	r3, r5
 2568 00e8 3246     		mov	r2, r6
 2569 00ea 4946     		mov	r1, r9
 2570 00ec FFF7FEFF 		bl	disk_read
 2571 00f0 0028     		cmp	r0, #0
 2572 00f2 36D0     		beq	.L693
 2573              	.L716:
 2574 00f4 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2575 00f6 63F07F03 		orn	r3, r3, #127
 2576 00fa A371     		strb	r3, [r4, #6]
 2577 00fc 4FF00108 		mov	r8, #1
 2578 0100 8FE7     		b	.L674
 2579              	.L691:
 2580 0102 A568     		ldr	r5, [r4, #8]
 2581 0104 A661     		str	r6, [r4, #24]
 2582 0106 C5F30805 		ubfx	r5, r5, #0, #9
 2583 010a A6E7     		b	.L677
 2584              	.L678:
 2585 010c 3BB9     		cbnz	r3, .L680
 2586 010e 2669     		ldr	r6, [r4, #16]
 2587              	.L681:
 2588 0110 012E     		cmp	r6, #1
 2589 0112 15D9     		bls	.L689
 2590 0114 731C     		adds	r3, r6, #1
 2591 0116 EDD0     		beq	.L716
 2592 0118 2068     		ldr	r0, [r4]
 2593 011a 6661     		str	r6, [r4, #20]
 2594 011c CAE7     		b	.L679
 2595              	.L680:
 2596 011e 626A     		ldr	r2, [r4, #36]
 2597 0120 AAB1     		cbz	r2, .L682
 2598 0122 B6FBF1F6 		udiv	r6, r6, r1
 2599 0126 5368     		ldr	r3, [r2, #4]
 2600 0128 0432     		adds	r2, r2, #4
 2601 012a 4BB1     		cbz	r3, .L689
 2602 012c 9E42     		cmp	r6, r3
 2603 012e 02D2     		bcs	.L685
 2604 0130 2DE0     		b	.L684
 2605              	.L714:
 2606 0132 B342     		cmp	r3, r6
 2607 0134 2BD8     		bhi	.L684
 2608              	.L685:
 2609 0136 F61A     		subs	r6, r6, r3
 2610 0138 52F8083F 		ldr	r3, [r2, #8]!
 2611 013c 002B     		cmp	r3, #0
 2612 013e F8D1     		bne	.L714
 2613              	.L689:
 2614 0140 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2615 0142 63F07F03 		orn	r3, r3, #127
 2616 0146 A371     		strb	r3, [r4, #6]
 2617 0148 4FF00208 		mov	r8, #2
 2618 014c 69E7     		b	.L674
 2619              	.L682:
 2620 014e 6169     		ldr	r1, [r4, #20]
 2621 0150 0129     		cmp	r1, #1
 2622 0152 F5D9     		bls	.L689
ARM GAS  /tmp/cc9D3RON.s 			page 47


 2623 0154 8369     		ldr	r3, [r0, #24]
 2624 0156 9942     		cmp	r1, r3
 2625 0158 F2D2     		bcs	.L689
 2626 015a FFF7FEFF 		bl	get_fat.part.5
 2627 015e 0646     		mov	r6, r0
 2628 0160 D6E7     		b	.L681
 2629              	.L693:
 2630 0162 2168     		ldr	r1, [r4]
 2631 0164 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 2632 0166 53B1     		cbz	r3, .L694
 2633 0168 C86A     		ldr	r0, [r1, #44]
 2634 016a 801B     		subs	r0, r0, r6
 2635 016c A842     		cmp	r0, r5
 2636 016e 06D2     		bcs	.L694
 2637 0170 3031     		adds	r1, r1, #48
 2638 0172 09EB4020 		add	r0, r9, r0, lsl #9
 2639 0176 4FF40072 		mov	r2, #512
 2640 017a FFF7FEFF 		bl	memcpy
 2641              	.L694:
 2642 017e 6D02     		lsls	r5, r5, #9
 2643 0180 7FE7     		b	.L695
 2644              	.L702:
 2645 0182 4FF00708 		mov	r8, #7
 2646 0186 4CE7     		b	.L674
 2647              	.L701:
 2648 0188 4FF00208 		mov	r8, #2
 2649 018c 49E7     		b	.L674
 2650              	.L684:
 2651 018e 5368     		ldr	r3, [r2, #4]
 2652 0190 1E44     		add	r6, r6, r3
 2653 0192 BDE7     		b	.L681
 2654              		.size	f_read, .-f_read
 2655              		.section	.text.f_write,"ax",%progbits
 2656              		.align	1
 2657              		.p2align 2,,3
 2658              		.global	f_write
 2659              		.syntax unified
 2660              		.thumb
 2661              		.thumb_func
 2662              		.fpu fpv4-sp-d16
 2663              		.type	f_write, %function
 2664              	f_write:
 2665              		@ args = 0, pretend = 0, frame = 8
 2666              		@ frame_needed = 0, uses_anonymous_args = 0
 2667 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2668 0004 1F46     		mov	r7, r3
 2669 0006 0446     		mov	r4, r0
 2670 0008 0068     		ldr	r0, [r0]
 2671 000a 0023     		movs	r3, #0
 2672 000c 83B0     		sub	sp, sp, #12
 2673 000e 3B60     		str	r3, [r7]
 2674 0010 30B1     		cbz	r0, .L751
 2675 0012 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 2676 0014 23B1     		cbz	r3, .L751
 2677 0016 1646     		mov	r6, r2
 2678 0018 C388     		ldrh	r3, [r0, #6]
 2679 001a A288     		ldrh	r2, [r4, #4]
ARM GAS  /tmp/cc9D3RON.s 			page 48


 2680 001c 9A42     		cmp	r2, r3
 2681 001e 05D0     		beq	.L764
 2682              	.L751:
 2683 0020 4FF00908 		mov	r8, #9
 2684              	.L720:
 2685 0024 4046     		mov	r0, r8
 2686 0026 03B0     		add	sp, sp, #12
 2687              		@ sp needed
 2688 0028 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2689              	.L764:
 2690 002c 8946     		mov	r9, r1
 2691 002e FFF7FEFF 		bl	validate.part.1
 2692 0032 8046     		mov	r8, r0
 2693 0034 0028     		cmp	r0, #0
 2694 0036 F5D1     		bne	.L720
 2695 0038 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2696 003a 1D06     		lsls	r5, r3, #24
 2697 003c 00F1BB80 		bmi	.L752
 2698 0040 9807     		lsls	r0, r3, #30
 2699 0042 40F1B580 		bpl	.L753
 2700 0046 D4E90221 		ldrd	r2, r1, [r4, #8]
 2701 004a F142     		cmn	r1, r6
 2702 004c 78D2     		bcs	.L721
 2703 004e 002E     		cmp	r6, #0
 2704 0050 76D0     		beq	.L721
 2705 0052 4FF0010A 		mov	r10, #1
 2706 0056 21E0     		b	.L747
 2707              	.L765:
 2708 0058 D4F818B0 		ldr	fp, [r4, #24]
 2709              	.L723:
 2710 005c C5F50075 		rsb	r5, r5, #512
 2711 0060 B542     		cmp	r5, r6
 2712 0062 5946     		mov	r1, fp
 2713 0064 28BF     		it	cs
 2714 0066 3546     		movcs	r5, r6
 2715 0068 FFF7FEFF 		bl	move_window
 2716 006c 0028     		cmp	r0, #0
 2717 006e 55D1     		bne	.L763
 2718 0070 A368     		ldr	r3, [r4, #8]
 2719 0072 2068     		ldr	r0, [r4]
 2720 0074 C3F30803 		ubfx	r3, r3, #0, #9
 2721 0078 3033     		adds	r3, r3, #48
 2722 007a 1844     		add	r0, r0, r3
 2723 007c 2A46     		mov	r2, r5
 2724 007e 4946     		mov	r1, r9
 2725 0080 FFF7FEFF 		bl	memcpy
 2726 0084 2368     		ldr	r3, [r4]
 2727 0086 83F804A0 		strb	r10, [r3, #4]
 2728              	.L743:
 2729 008a A268     		ldr	r2, [r4, #8]
 2730 008c 3B68     		ldr	r3, [r7]
 2731 008e 2A44     		add	r2, r2, r5
 2732 0090 2B44     		add	r3, r3, r5
 2733 0092 761B     		subs	r6, r6, r5
 2734 0094 A260     		str	r2, [r4, #8]
 2735 0096 A944     		add	r9, r9, r5
 2736 0098 3B60     		str	r3, [r7]
ARM GAS  /tmp/cc9D3RON.s 			page 49


 2737 009a 73D0     		beq	.L762
 2738              	.L747:
 2739 009c C2F30805 		ubfx	r5, r2, #0, #9
 2740 00a0 2068     		ldr	r0, [r4]
 2741 00a2 002D     		cmp	r5, #0
 2742 00a4 D8D1     		bne	.L765
 2743 00a6 90F802C0 		ldrb	ip, [r0, #2]	@ zero_extendqisi2
 2744 00aa 510A     		lsrs	r1, r2, #9
 2745 00ac 0CF1FF33 		add	r3, ip, #-1
 2746 00b0 0B40     		ands	r3, r3, r1
 2747 00b2 13F0FF03 		ands	r3, r3, #255
 2748 00b6 0CD1     		bne	.L724
 2749 00b8 002A     		cmp	r2, #0
 2750 00ba 51D1     		bne	.L725
 2751 00bc 2269     		ldr	r2, [r4, #16]
 2752 00be 002A     		cmp	r2, #0
 2753 00c0 00F08780 		beq	.L766
 2754              	.L726:
 2755 00c4 012A     		cmp	r2, #1
 2756 00c6 00F08C80 		beq	.L737
 2757 00ca 511C     		adds	r1, r2, #1
 2758 00cc 26D0     		beq	.L763
 2759 00ce 2068     		ldr	r0, [r4]
 2760 00d0 6261     		str	r2, [r4, #20]
 2761              	.L724:
 2762 00d2 C16A     		ldr	r1, [r0, #44]
 2763 00d4 A269     		ldr	r2, [r4, #24]
 2764 00d6 9142     		cmp	r1, r2
 2765 00d8 61D0     		beq	.L767
 2766              	.L735:
 2767 00da 6169     		ldr	r1, [r4, #20]
 2768 00dc 8269     		ldr	r2, [r0, #24]
 2769 00de A1F1020B 		sub	fp, r1, #2
 2770 00e2 023A     		subs	r2, r2, #2
 2771 00e4 9345     		cmp	fp, r2
 2772 00e6 7CD2     		bcs	.L737
 2773 00e8 8278     		ldrb	r2, [r0, #2]	@ zero_extendqisi2
 2774 00ea 816A     		ldr	r1, [r0, #40]
 2775 00ec 02FB0B11 		mla	r1, r2, fp, r1
 2776 00f0 0029     		cmp	r1, #0
 2777 00f2 76D0     		beq	.L737
 2778 00f4 750A     		lsrs	r5, r6, #9
 2779 00f6 03EB010B 		add	fp, r3, r1
 2780 00fa 28D0     		beq	.L739
 2781 00fc 19F0030F 		tst	r9, #3
 2782 0100 25D1     		bne	.L739
 2783 0102 5919     		adds	r1, r3, r5
 2784 0104 9142     		cmp	r1, r2
 2785 0106 88BF     		it	hi
 2786 0108 D51A     		subhi	r5, r2, r3
 2787 010a EBB2     		uxtb	r3, r5
 2788 010c 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 2789 010e 5A46     		mov	r2, fp
 2790 0110 4946     		mov	r1, r9
 2791 0112 FFF7FEFF 		bl	disk_write
 2792 0116 0346     		mov	r3, r0
 2793 0118 0028     		cmp	r0, #0
ARM GAS  /tmp/cc9D3RON.s 			page 50


 2794 011a 52D0     		beq	.L741
 2795              	.L763:
 2796 011c A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2797 011e 63F07F03 		orn	r3, r3, #127
 2798 0122 A371     		strb	r3, [r4, #6]
 2799 0124 4FF00108 		mov	r8, #1
 2800 0128 7CE7     		b	.L720
 2801              	.L728:
 2802 012a 6169     		ldr	r1, [r4, #20]
 2803 012c 0193     		str	r3, [sp, #4]
 2804 012e FFF7FEFF 		bl	create_chain
 2805 0132 019B     		ldr	r3, [sp, #4]
 2806 0134 0246     		mov	r2, r0
 2807              	.L727:
 2808 0136 002A     		cmp	r2, #0
 2809 0138 C4D1     		bne	.L726
 2810 013a D4E90221 		ldrd	r2, r1, [r4, #8]
 2811 013e A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2812              	.L721:
 2813 0140 9142     		cmp	r1, r2
 2814 0142 43F02003 		orr	r3, r3, #32
 2815 0146 38BF     		it	cc
 2816 0148 E260     		strcc	r2, [r4, #12]
 2817 014a A371     		strb	r3, [r4, #6]
 2818 014c 6AE7     		b	.L720
 2819              	.L739:
 2820 014e D4E90253 		ldrd	r5, r3, [r4, #8]
 2821 0152 9D42     		cmp	r5, r3
 2822 0154 19D2     		bcs	.L768
 2823              	.L744:
 2824 0156 C4F818B0 		str	fp, [r4, #24]
 2825 015a C5F30805 		ubfx	r5, r5, #0, #9
 2826 015e 7DE7     		b	.L723
 2827              	.L725:
 2828 0160 656A     		ldr	r5, [r4, #36]
 2829 0162 002D     		cmp	r5, #0
 2830 0164 E1D0     		beq	.L728
 2831 0166 B1FBFCF0 		udiv	r0, r1, ip
 2832 016a 6968     		ldr	r1, [r5, #4]
 2833 016c 0435     		adds	r5, r5, #4
 2834 016e 49B1     		cbz	r1, .L762
 2835 0170 8842     		cmp	r0, r1
 2836 0172 02D2     		bcs	.L731
 2837 0174 22E0     		b	.L730
 2838              	.L732:
 2839 0176 8142     		cmp	r1, r0
 2840 0178 20D8     		bhi	.L730
 2841              	.L731:
 2842 017a 401A     		subs	r0, r0, r1
 2843 017c 55F8081F 		ldr	r1, [r5, #8]!
 2844 0180 0029     		cmp	r1, #0
 2845 0182 F8D1     		bne	.L732
 2846              	.L762:
 2847 0184 E168     		ldr	r1, [r4, #12]
 2848 0186 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2849 0188 DAE7     		b	.L721
 2850              	.L768:
ARM GAS  /tmp/cc9D3RON.s 			page 51


 2851 018a 0021     		movs	r1, #0
 2852 018c FFF7FEFF 		bl	move_window
 2853 0190 0028     		cmp	r0, #0
 2854 0192 C3D1     		bne	.L763
 2855 0194 2068     		ldr	r0, [r4]
 2856 0196 A568     		ldr	r5, [r4, #8]
 2857 0198 C0F82CB0 		str	fp, [r0, #44]
 2858 019c DBE7     		b	.L744
 2859              	.L767:
 2860 019e 0021     		movs	r1, #0
 2861 01a0 0193     		str	r3, [sp, #4]
 2862 01a2 FFF7FEFF 		bl	move_window
 2863 01a6 0028     		cmp	r0, #0
 2864 01a8 B8D1     		bne	.L763
 2865 01aa 2068     		ldr	r0, [r4]
 2866 01ac 019B     		ldr	r3, [sp, #4]
 2867 01ae 94E7     		b	.L735
 2868              	.L753:
 2869 01b0 4FF00708 		mov	r8, #7
 2870 01b4 36E7     		b	.L720
 2871              	.L752:
 2872 01b6 4FF00208 		mov	r8, #2
 2873 01ba 33E7     		b	.L720
 2874              	.L730:
 2875 01bc 6A68     		ldr	r2, [r5, #4]
 2876 01be 0244     		add	r2, r2, r0
 2877 01c0 B9E7     		b	.L727
 2878              	.L741:
 2879 01c2 2068     		ldr	r0, [r4]
 2880 01c4 C16A     		ldr	r1, [r0, #44]
 2881 01c6 A1EB0B01 		sub	r1, r1, fp
 2882 01ca A942     		cmp	r1, r5
 2883 01cc 10D3     		bcc	.L769
 2884              	.L742:
 2885 01ce 6D02     		lsls	r5, r5, #9
 2886 01d0 5BE7     		b	.L743
 2887              	.L766:
 2888 01d2 1946     		mov	r1, r3
 2889 01d4 0193     		str	r3, [sp, #4]
 2890 01d6 FFF7FEFF 		bl	create_chain
 2891 01da 019B     		ldr	r3, [sp, #4]
 2892 01dc 2061     		str	r0, [r4, #16]
 2893 01de 0246     		mov	r2, r0
 2894 01e0 A9E7     		b	.L727
 2895              	.L737:
 2896 01e2 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2897 01e4 63F07F03 		orn	r3, r3, #127
 2898 01e8 A371     		strb	r3, [r4, #6]
 2899 01ea 4FF00208 		mov	r8, #2
 2900 01ee 19E7     		b	.L720
 2901              	.L769:
 2902 01f0 4FF40072 		mov	r2, #512
 2903 01f4 09EB4121 		add	r1, r9, r1, lsl #9
 2904 01f8 3030     		adds	r0, r0, #48
 2905 01fa 0193     		str	r3, [sp, #4]
 2906 01fc FFF7FEFF 		bl	memcpy
 2907 0200 2268     		ldr	r2, [r4]
ARM GAS  /tmp/cc9D3RON.s 			page 52


 2908 0202 019B     		ldr	r3, [sp, #4]
 2909 0204 1371     		strb	r3, [r2, #4]
 2910 0206 E2E7     		b	.L742
 2911              		.size	f_write, .-f_write
 2912              		.section	.text.f_sync,"ax",%progbits
 2913              		.align	1
 2914              		.p2align 2,,3
 2915              		.global	f_sync
 2916              		.syntax unified
 2917              		.thumb
 2918              		.thumb_func
 2919              		.fpu fpv4-sp-d16
 2920              		.type	f_sync, %function
 2921              	f_sync:
 2922              		@ args = 0, pretend = 0, frame = 0
 2923              		@ frame_needed = 0, uses_anonymous_args = 0
 2924 0000 38B5     		push	{r3, r4, r5, lr}
 2925 0002 0368     		ldr	r3, [r0]
 2926 0004 2BB1     		cbz	r3, .L774
 2927 0006 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 2928 0008 1AB1     		cbz	r2, .L774
 2929 000a 8188     		ldrh	r1, [r0, #4]
 2930 000c DA88     		ldrh	r2, [r3, #6]
 2931 000e 9142     		cmp	r1, r2
 2932 0010 01D0     		beq	.L779
 2933              	.L774:
 2934 0012 0920     		movs	r0, #9
 2935              	.L771:
 2936 0014 38BD     		pop	{r3, r4, r5, pc}
 2937              	.L779:
 2938 0016 0446     		mov	r4, r0
 2939 0018 1846     		mov	r0, r3
 2940 001a FFF7FEFF 		bl	validate.part.1
 2941 001e 0028     		cmp	r0, #0
 2942 0020 F8D1     		bne	.L771
 2943 0022 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2944 0024 9B06     		lsls	r3, r3, #26
 2945 0026 F5D5     		bpl	.L771
 2946 0028 E169     		ldr	r1, [r4, #28]
 2947 002a 2068     		ldr	r0, [r4]
 2948 002c FFF7FEFF 		bl	move_window
 2949 0030 0028     		cmp	r0, #0
 2950 0032 EFD1     		bne	.L771
 2951 0034 256A     		ldr	r5, [r4, #32]
 2952 0036 EB7A     		ldrb	r3, [r5, #11]	@ zero_extendqisi2
 2953 0038 43F02003 		orr	r3, r3, #32
 2954 003c EB72     		strb	r3, [r5, #11]
 2955 003e E368     		ldr	r3, [r4, #12]
 2956 0040 2B77     		strb	r3, [r5, #28]
 2957 0042 A389     		ldrh	r3, [r4, #12]
 2958 0044 1B0A     		lsrs	r3, r3, #8
 2959 0046 6B77     		strb	r3, [r5, #29]
 2960 0048 E389     		ldrh	r3, [r4, #14]
 2961 004a AB77     		strb	r3, [r5, #30]
 2962 004c E37B     		ldrb	r3, [r4, #15]	@ zero_extendqisi2
 2963 004e EB77     		strb	r3, [r5, #31]
 2964 0050 2369     		ldr	r3, [r4, #16]
ARM GAS  /tmp/cc9D3RON.s 			page 53


 2965 0052 AB76     		strb	r3, [r5, #26]
 2966 0054 238A     		ldrh	r3, [r4, #16]
 2967 0056 1B0A     		lsrs	r3, r3, #8
 2968 0058 EB76     		strb	r3, [r5, #27]
 2969 005a 638A     		ldrh	r3, [r4, #18]
 2970 005c 2B75     		strb	r3, [r5, #20]
 2971 005e 638A     		ldrh	r3, [r4, #18]
 2972 0060 1B0A     		lsrs	r3, r3, #8
 2973 0062 6B75     		strb	r3, [r5, #21]
 2974 0064 FFF7FEFF 		bl	get_fattime
 2975 0068 C0F30721 		ubfx	r1, r0, #8, #8
 2976 006c 020C     		lsrs	r2, r0, #16
 2977 006e 030E     		lsrs	r3, r0, #24
 2978 0070 A875     		strb	r0, [r5, #22]
 2979 0072 E975     		strb	r1, [r5, #23]
 2980 0074 2A76     		strb	r2, [r5, #24]
 2981 0076 6B76     		strb	r3, [r5, #25]
 2982 0078 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2983 007a 2268     		ldr	r2, [r4]
 2984 007c 23F02003 		bic	r3, r3, #32
 2985 0080 0121     		movs	r1, #1
 2986 0082 A371     		strb	r3, [r4, #6]
 2987 0084 1171     		strb	r1, [r2, #4]
 2988 0086 1046     		mov	r0, r2
 2989 0088 BDE83840 		pop	{r3, r4, r5, lr}
 2990 008c FFF7FEBF 		b	sync
 2991              		.size	f_sync, .-f_sync
 2992              		.section	.text.f_close,"ax",%progbits
 2993              		.align	1
 2994              		.p2align 2,,3
 2995              		.global	f_close
 2996              		.syntax unified
 2997              		.thumb
 2998              		.thumb_func
 2999              		.fpu fpv4-sp-d16
 3000              		.type	f_close, %function
 3001              	f_close:
 3002              		@ args = 0, pretend = 0, frame = 0
 3003              		@ frame_needed = 0, uses_anonymous_args = 0
 3004 0000 10B5     		push	{r4, lr}
 3005 0002 0446     		mov	r4, r0
 3006 0004 FFF7FEFF 		bl	f_sync
 3007 0008 00B9     		cbnz	r0, .L781
 3008 000a 2060     		str	r0, [r4]
 3009              	.L781:
 3010 000c 10BD     		pop	{r4, pc}
 3011              		.size	f_close, .-f_close
 3012 000e 00BF     		.section	.text.f_lseek,"ax",%progbits
 3013              		.align	1
 3014              		.p2align 2,,3
 3015              		.global	f_lseek
 3016              		.syntax unified
 3017              		.thumb
 3018              		.thumb_func
 3019              		.fpu fpv4-sp-d16
 3020              		.type	f_lseek, %function
 3021              	f_lseek:
ARM GAS  /tmp/cc9D3RON.s 			page 54


 3022              		@ args = 0, pretend = 0, frame = 0
 3023              		@ frame_needed = 0, uses_anonymous_args = 0
 3024 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3025 0004 0446     		mov	r4, r0
 3026 0006 0068     		ldr	r0, [r0]
 3027 0008 28B1     		cbz	r0, .L827
 3028 000a 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3029 000c 1BB1     		cbz	r3, .L827
 3030 000e A288     		ldrh	r2, [r4, #4]
 3031 0010 C388     		ldrh	r3, [r0, #6]
 3032 0012 9A42     		cmp	r2, r3
 3033 0014 03D0     		beq	.L853
 3034              	.L827:
 3035 0016 0925     		movs	r5, #9
 3036              	.L784:
 3037 0018 2846     		mov	r0, r5
 3038 001a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3039              	.L853:
 3040 001e 0E46     		mov	r6, r1
 3041 0020 FFF7FEFF 		bl	validate.part.1
 3042 0024 0546     		mov	r5, r0
 3043 0026 0028     		cmp	r0, #0
 3044 0028 F6D1     		bne	.L784
 3045 002a A079     		ldrb	r0, [r4, #6]	@ zero_extendqisi2
 3046 002c 0706     		lsls	r7, r0, #24
 3047 002e 67D4     		bmi	.L852
 3048 0030 626A     		ldr	r2, [r4, #36]
 3049 0032 002A     		cmp	r2, #0
 3050 0034 66D0     		beq	.L785
 3051 0036 711C     		adds	r1, r6, #1
 3052 0038 39D0     		beq	.L854
 3053 003a E368     		ldr	r3, [r4, #12]
 3054 003c 9E42     		cmp	r6, r3
 3055 003e 28BF     		it	cs
 3056 0040 1E46     		movcs	r6, r3
 3057 0042 A660     		str	r6, [r4, #8]
 3058 0044 002E     		cmp	r6, #0
 3059 0046 E7D0     		beq	.L784
 3060 0048 D4F800E0 		ldr	lr, [r4]
 3061 004c 5368     		ldr	r3, [r2, #4]
 3062 004e 9EF80270 		ldrb	r7, [lr, #2]	@ zero_extendqisi2
 3063 0052 06F1FF3C 		add	ip, r6, #-1
 3064 0056 4FEA5C2C 		lsr	ip, ip, #9
 3065 005a 0432     		adds	r2, r2, #4
 3066 005c BCFBF7F1 		udiv	r1, ip, r7
 3067 0060 53B1     		cbz	r3, .L832
 3068 0062 9942     		cmp	r1, r3
 3069 0064 03D2     		bcs	.L797
 3070 0066 85E0     		b	.L796
 3071              	.L846:
 3072 0068 8B42     		cmp	r3, r1
 3073 006a 00F28380 		bhi	.L796
 3074              	.L797:
 3075 006e C91A     		subs	r1, r1, r3
 3076 0070 52F8083F 		ldr	r3, [r2, #8]!
 3077 0074 002B     		cmp	r3, #0
 3078 0076 F7D1     		bne	.L846
ARM GAS  /tmp/cc9D3RON.s 			page 55


 3079              	.L832:
 3080 0078 6FF00102 		mvn	r2, #1
 3081              	.L795:
 3082 007c DEF81810 		ldr	r1, [lr, #24]
 3083 0080 6361     		str	r3, [r4, #20]
 3084 0082 8B1E     		subs	r3, r1, #2
 3085 0084 9342     		cmp	r3, r2
 3086 0086 70D9     		bls	.L799
 3087 0088 DEF82830 		ldr	r3, [lr, #40]
 3088 008c 02FB0732 		mla	r2, r2, r7, r3
 3089 0090 002A     		cmp	r2, #0
 3090 0092 6AD0     		beq	.L799
 3091 0094 C6F30806 		ubfx	r6, r6, #0, #9
 3092 0098 002E     		cmp	r6, #0
 3093 009a BDD0     		beq	.L784
 3094 009c 7B1E     		subs	r3, r7, #1
 3095 009e 03EA0C03 		and	r3, r3, ip
 3096 00a2 A169     		ldr	r1, [r4, #24]
 3097 00a4 1344     		add	r3, r3, r2
 3098 00a6 9942     		cmp	r1, r3
 3099 00a8 B6D0     		beq	.L784
 3100 00aa A361     		str	r3, [r4, #24]
 3101 00ac B4E7     		b	.L784
 3102              	.L854:
 3103 00ae 2769     		ldr	r7, [r4, #16]
 3104 00b0 D2F80090 		ldr	r9, [r2]
 3105 00b4 02F1040A 		add	r10, r2, #4
 3106 00b8 002F     		cmp	r7, #0
 3107 00ba 5FD0     		beq	.L829
 3108 00bc 2368     		ldr	r3, [r4]
 3109 00be 4FF00208 		mov	r8, #2
 3110              	.L793:
 3111 00c2 3E46     		mov	r6, r7
 3112 00c4 4FF0000B 		mov	fp, #0
 3113 00c8 10E0     		b	.L791
 3114              	.L788:
 3115 00ca 9B69     		ldr	r3, [r3, #24]
 3116 00cc 9E42     		cmp	r6, r3
 3117 00ce 13D2     		bcs	.L820
 3118 00d0 FFF7FEFF 		bl	get_fat.part.5
 3119 00d4 0128     		cmp	r0, #1
 3120 00d6 06F10102 		add	r2, r6, #1
 3121 00da 0646     		mov	r6, r0
 3122 00dc 0CD9     		bls	.L820
 3123 00de 431C     		adds	r3, r0, #1
 3124 00e0 00F09780 		beq	.L850
 3125 00e4 8242     		cmp	r2, r0
 3126 00e6 2368     		ldr	r3, [r4]
 3127 00e8 40F0A580 		bne	.L855
 3128              	.L791:
 3129 00ec 012E     		cmp	r6, #1
 3130 00ee 3146     		mov	r1, r6
 3131 00f0 1846     		mov	r0, r3
 3132 00f2 0BF1010B 		add	fp, fp, #1
 3133 00f6 E8D8     		bhi	.L788
 3134              	.L820:
 3135 00f8 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
ARM GAS  /tmp/cc9D3RON.s 			page 56


 3136              	.L851:
 3137 00fa 63F07F03 		orn	r3, r3, #127
 3138 00fe A371     		strb	r3, [r4, #6]
 3139              	.L852:
 3140 0100 0225     		movs	r5, #2
 3141 0102 89E7     		b	.L784
 3142              	.L785:
 3143 0104 E368     		ldr	r3, [r4, #12]
 3144 0106 B342     		cmp	r3, r6
 3145 0108 03D2     		bcs	.L802
 3146 010a 10F0020F 		tst	r0, #2
 3147 010e 08BF     		it	eq
 3148 0110 1E46     		moveq	r6, r3
 3149              	.L802:
 3150 0112 0022     		movs	r2, #0
 3151 0114 A368     		ldr	r3, [r4, #8]
 3152 0116 A260     		str	r2, [r4, #8]
 3153 0118 002E     		cmp	r6, #0
 3154 011a 3FF47DAF 		beq	.L784
 3155 011e 2068     		ldr	r0, [r4]
 3156 0120 8778     		ldrb	r7, [r0, #2]	@ zero_extendqisi2
 3157 0122 7F02     		lsls	r7, r7, #9
 3158 0124 A3B3     		cbz	r3, .L803
 3159 0126 013B     		subs	r3, r3, #1
 3160 0128 721E     		subs	r2, r6, #1
 3161 012a B3FBF7F1 		udiv	r1, r3, r7
 3162 012e B2FBF7F2 		udiv	r2, r2, r7
 3163 0132 8A42     		cmp	r2, r1
 3164 0134 2CD3     		bcc	.L803
 3165 0136 7A42     		negs	r2, r7
 3166 0138 1340     		ands	r3, r3, r2
 3167 013a 6169     		ldr	r1, [r4, #20]
 3168 013c A360     		str	r3, [r4, #8]
 3169 013e F61A     		subs	r6, r6, r3
 3170              	.L804:
 3171 0140 59BB     		cbnz	r1, .L808
 3172 0142 A368     		ldr	r3, [r4, #8]
 3173              	.L809:
 3174 0144 C3F30802 		ubfx	r2, r3, #0, #9
 3175 0148 002A     		cmp	r2, #0
 3176 014a 00F08980 		beq	.L856
 3177 014e A269     		ldr	r2, [r4, #24]
 3178 0150 8A42     		cmp	r2, r1
 3179 0152 E268     		ldr	r2, [r4, #12]
 3180 0154 18BF     		it	ne
 3181 0156 A161     		strne	r1, [r4, #24]
 3182              	.L823:
 3183 0158 9342     		cmp	r3, r2
 3184 015a 7FF65DAF 		bls	.L784
 3185 015e A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 3186 0160 E360     		str	r3, [r4, #12]
 3187 0162 42F02003 		orr	r3, r2, #32
 3188 0166 A371     		strb	r3, [r4, #6]
 3189 0168 56E7     		b	.L784
 3190              	.L799:
 3191 016a 60F07F00 		orn	r0, r0, #127
 3192 016e A071     		strb	r0, [r4, #6]
ARM GAS  /tmp/cc9D3RON.s 			page 57


 3193 0170 0225     		movs	r5, #2
 3194 0172 51E7     		b	.L784
 3195              	.L796:
 3196 0174 5368     		ldr	r3, [r2, #4]
 3197 0176 0B44     		add	r3, r3, r1
 3198 0178 9A1E     		subs	r2, r3, #2
 3199 017a 7FE7     		b	.L795
 3200              	.L829:
 3201 017c 4FF00208 		mov	r8, #2
 3202              	.L787:
 3203 0180 C845     		cmp	r8, r9
 3204 0182 C2F80080 		str	r8, [r2]
 3205 0186 4AD8     		bhi	.L830
 3206 0188 0023     		movs	r3, #0
 3207 018a CAF80030 		str	r3, [r10]
 3208 018e 43E7     		b	.L784
 3209              	.L803:
 3210 0190 2169     		ldr	r1, [r4, #16]
 3211 0192 0029     		cmp	r1, #0
 3212 0194 45D0     		beq	.L857
 3213              	.L805:
 3214 0196 6161     		str	r1, [r4, #20]
 3215 0198 D2E7     		b	.L804
 3216              	.L808:
 3217 019a BE42     		cmp	r6, r7
 3218 019c 5ED9     		bls	.L810
 3219 019e 2068     		ldr	r0, [r4]
 3220 01a0 15E0     		b	.L819
 3221              	.L811:
 3222 01a2 0129     		cmp	r1, #1
 3223 01a4 A9D9     		bls	.L851
 3224 01a6 8269     		ldr	r2, [r0, #24]
 3225 01a8 9142     		cmp	r1, r2
 3226 01aa A6D2     		bcs	.L851
 3227 01ac FFF7FEFF 		bl	get_fat.part.5
 3228 01b0 0146     		mov	r1, r0
 3229              	.L812:
 3230 01b2 4B1C     		adds	r3, r1, #1
 3231 01b4 2DD0     		beq	.L850
 3232 01b6 0129     		cmp	r1, #1
 3233 01b8 9ED9     		bls	.L820
 3234 01ba 2068     		ldr	r0, [r4]
 3235 01bc 8369     		ldr	r3, [r0, #24]
 3236 01be 8B42     		cmp	r3, r1
 3237 01c0 9AD9     		bls	.L820
 3238 01c2 A368     		ldr	r3, [r4, #8]
 3239 01c4 6161     		str	r1, [r4, #20]
 3240 01c6 3B44     		add	r3, r3, r7
 3241 01c8 B742     		cmp	r7, r6
 3242 01ca A360     		str	r3, [r4, #8]
 3243 01cc 0BD2     		bcs	.L813
 3244              	.L819:
 3245 01ce A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3246 01d0 9A07     		lsls	r2, r3, #30
 3247 01d2 A6EB0706 		sub	r6, r6, r7
 3248 01d6 E4D5     		bpl	.L811
 3249 01d8 FFF7FEFF 		bl	create_chain
ARM GAS  /tmp/cc9D3RON.s 			page 58


 3250 01dc 0146     		mov	r1, r0
 3251 01de 0028     		cmp	r0, #0
 3252 01e0 E7D1     		bne	.L812
 3253 01e2 A368     		ldr	r3, [r4, #8]
 3254 01e4 3E46     		mov	r6, r7
 3255              	.L813:
 3256 01e6 3344     		add	r3, r3, r6
 3257 01e8 C6F30802 		ubfx	r2, r6, #0, #9
 3258 01ec A360     		str	r3, [r4, #8]
 3259 01ee 9AB3     		cbz	r2, .L833
 3260 01f0 2268     		ldr	r2, [r4]
 3261 01f2 9069     		ldr	r0, [r2, #24]
 3262 01f4 8F1E     		subs	r7, r1, #2
 3263 01f6 0238     		subs	r0, r0, #2
 3264 01f8 8742     		cmp	r7, r0
 3265 01fa BFF47DAF 		bcs	.L820
 3266 01fe 9178     		ldrb	r1, [r2, #2]	@ zero_extendqisi2
 3267 0200 926A     		ldr	r2, [r2, #40]
 3268 0202 07FB0121 		mla	r1, r7, r1, r2
 3269 0206 0029     		cmp	r1, #0
 3270 0208 3FF476AF 		beq	.L820
 3271 020c 01EB5621 		add	r1, r1, r6, lsr #9
 3272 0210 98E7     		b	.L809
 3273              	.L850:
 3274 0212 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3275 0214 63F07F03 		orn	r3, r3, #127
 3276 0218 A371     		strb	r3, [r4, #6]
 3277 021a 0125     		movs	r5, #1
 3278 021c FCE6     		b	.L784
 3279              	.L830:
 3280 021e 1125     		movs	r5, #17
 3281 0220 FAE6     		b	.L784
 3282              	.L857:
 3283 0222 FFF7FEFF 		bl	create_chain
 3284 0226 0128     		cmp	r0, #1
 3285 0228 0146     		mov	r1, r0
 3286 022a 3FF465AF 		beq	.L820
 3287 022e 0130     		adds	r0, r0, #1
 3288 0230 EFD0     		beq	.L850
 3289 0232 2161     		str	r1, [r4, #16]
 3290 0234 AFE7     		b	.L805
 3291              	.L855:
 3292 0236 08F10208 		add	r8, r8, #2
 3293 023a C145     		cmp	r9, r8
 3294 023c 05D3     		bcc	.L792
 3295 023e 5246     		mov	r2, r10
 3296 0240 42F808BB 		str	fp, [r2], #8
 3297 0244 CAF80470 		str	r7, [r10, #4]
 3298 0248 9246     		mov	r10, r2
 3299              	.L792:
 3300 024a 9A69     		ldr	r2, [r3, #24]
 3301 024c 8242     		cmp	r2, r0
 3302 024e 0746     		mov	r7, r0
 3303 0250 3FF637AF 		bhi	.L793
 3304 0254 626A     		ldr	r2, [r4, #36]
 3305 0256 93E7     		b	.L787
 3306              	.L833:
ARM GAS  /tmp/cc9D3RON.s 			page 59


 3307 0258 1146     		mov	r1, r2
 3308 025a 73E7     		b	.L809
 3309              	.L810:
 3310 025c A368     		ldr	r3, [r4, #8]
 3311 025e C2E7     		b	.L813
 3312              	.L856:
 3313 0260 E268     		ldr	r2, [r4, #12]
 3314 0262 79E7     		b	.L823
 3315              		.size	f_lseek, .-f_lseek
 3316              		.section	.text.f_opendir,"ax",%progbits
 3317              		.align	1
 3318              		.p2align 2,,3
 3319              		.global	f_opendir
 3320              		.syntax unified
 3321              		.thumb
 3322              		.thumb_func
 3323              		.fpu fpv4-sp-d16
 3324              		.type	f_opendir, %function
 3325              	f_opendir:
 3326              		@ args = 0, pretend = 0, frame = 536
 3327              		@ frame_needed = 0, uses_anonymous_args = 0
 3328 0000 10B5     		push	{r4, lr}
 3329 0002 ADF5067D 		sub	sp, sp, #536
 3330 0006 0446     		mov	r4, r0
 3331 0008 0191     		str	r1, [sp, #4]
 3332 000a 01A8     		add	r0, sp, #4
 3333 000c 2146     		mov	r1, r4
 3334 000e 0022     		movs	r2, #0
 3335 0010 FFF7FEFF 		bl	chk_mounted
 3336 0014 10B1     		cbz	r0, .L871
 3337              	.L859:
 3338 0016 0DF5067D 		add	sp, sp, #536
 3339              		@ sp needed
 3340 001a 10BD     		pop	{r4, pc}
 3341              	.L871:
 3342 001c 03AA     		add	r2, sp, #12
 3343 001e 06AB     		add	r3, sp, #24
 3344 0020 0199     		ldr	r1, [sp, #4]
 3345 0022 C4E90623 		strd	r2, r3, [r4, #24]
 3346 0026 2046     		mov	r0, r4
 3347 0028 FFF7FEFF 		bl	follow_path
 3348 002c B0B9     		cbnz	r0, .L860
 3349 002e 6369     		ldr	r3, [r4, #20]
 3350 0030 6BB1     		cbz	r3, .L861
 3351 0032 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 3352 0034 D206     		lsls	r2, r2, #27
 3353 0036 13D5     		bpl	.L863
 3354 0038 587D     		ldrb	r0, [r3, #21]	@ zero_extendqisi2
 3355 003a 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 3356 003c D97E     		ldrb	r1, [r3, #27]	@ zero_extendqisi2
 3357 003e 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 3358 0040 42EA0022 		orr	r2, r2, r0, lsl #8
 3359 0044 43EA0123 		orr	r3, r3, r1, lsl #8
 3360 0048 43EA0243 		orr	r3, r3, r2, lsl #16
 3361 004c A360     		str	r3, [r4, #8]
 3362              	.L861:
 3363 004e 2368     		ldr	r3, [r4]
ARM GAS  /tmp/cc9D3RON.s 			page 60


 3364 0050 DB88     		ldrh	r3, [r3, #6]
 3365 0052 A380     		strh	r3, [r4, #4]	@ movhi
 3366 0054 2046     		mov	r0, r4
 3367 0056 0021     		movs	r1, #0
 3368 0058 FFF7FEFF 		bl	dir_sdi
 3369              	.L860:
 3370 005c 0428     		cmp	r0, #4
 3371 005e DAD1     		bne	.L859
 3372              	.L863:
 3373 0060 0520     		movs	r0, #5
 3374 0062 0DF5067D 		add	sp, sp, #536
 3375              		@ sp needed
 3376 0066 10BD     		pop	{r4, pc}
 3377              		.size	f_opendir, .-f_opendir
 3378              		.section	.text.f_readdir,"ax",%progbits
 3379              		.align	1
 3380              		.p2align 2,,3
 3381              		.global	f_readdir
 3382              		.syntax unified
 3383              		.thumb
 3384              		.thumb_func
 3385              		.fpu fpv4-sp-d16
 3386              		.type	f_readdir, %function
 3387              	f_readdir:
 3388              		@ args = 0, pretend = 0, frame = 528
 3389              		@ frame_needed = 0, uses_anonymous_args = 0
 3390 0000 70B5     		push	{r4, r5, r6, lr}
 3391 0002 0368     		ldr	r3, [r0]
 3392 0004 ADF5047D 		sub	sp, sp, #528
 3393 0008 2BB1     		cbz	r3, .L879
 3394 000a 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 3395 000c 1AB1     		cbz	r2, .L879
 3396 000e 8488     		ldrh	r4, [r0, #4]
 3397 0010 DA88     		ldrh	r2, [r3, #6]
 3398 0012 9442     		cmp	r4, r2
 3399 0014 04D0     		beq	.L883
 3400              	.L879:
 3401 0016 0925     		movs	r5, #9
 3402              	.L873:
 3403 0018 2846     		mov	r0, r5
 3404 001a 0DF5047D 		add	sp, sp, #528
 3405              		@ sp needed
 3406 001e 70BD     		pop	{r4, r5, r6, pc}
 3407              	.L883:
 3408 0020 0446     		mov	r4, r0
 3409 0022 1846     		mov	r0, r3
 3410 0024 0E46     		mov	r6, r1
 3411 0026 FFF7FEFF 		bl	validate.part.1
 3412 002a 0546     		mov	r5, r0
 3413 002c 0028     		cmp	r0, #0
 3414 002e F3D1     		bne	.L873
 3415 0030 C6B1     		cbz	r6, .L884
 3416 0032 01AA     		add	r2, sp, #4
 3417 0034 04AB     		add	r3, sp, #16
 3418 0036 C4E90623 		strd	r2, r3, [r4, #24]
 3419 003a 2046     		mov	r0, r4
 3420 003c FFF7FEFF 		bl	dir_read
ARM GAS  /tmp/cc9D3RON.s 			page 61


 3421 0040 0428     		cmp	r0, #4
 3422 0042 15D0     		beq	.L885
 3423 0044 48B9     		cbnz	r0, .L881
 3424              	.L876:
 3425 0046 3146     		mov	r1, r6
 3426 0048 2046     		mov	r0, r4
 3427 004a FFF7FEFF 		bl	get_fileinfo
 3428 004e 0021     		movs	r1, #0
 3429 0050 2046     		mov	r0, r4
 3430 0052 FFF7FEFF 		bl	dir_next
 3431 0056 0428     		cmp	r0, #4
 3432 0058 01D0     		beq	.L886
 3433              	.L881:
 3434 005a 0546     		mov	r5, r0
 3435 005c DCE7     		b	.L873
 3436              	.L886:
 3437 005e 0023     		movs	r3, #0
 3438 0060 2361     		str	r3, [r4, #16]
 3439 0062 D9E7     		b	.L873
 3440              	.L884:
 3441 0064 0146     		mov	r1, r0
 3442 0066 2046     		mov	r0, r4
 3443 0068 FFF7FEFF 		bl	dir_sdi
 3444 006c 0546     		mov	r5, r0
 3445 006e D3E7     		b	.L873
 3446              	.L885:
 3447 0070 2561     		str	r5, [r4, #16]
 3448 0072 E8E7     		b	.L876
 3449              		.size	f_readdir, .-f_readdir
 3450              		.section	.text.f_stat,"ax",%progbits
 3451              		.align	1
 3452              		.p2align 2,,3
 3453              		.global	f_stat
 3454              		.syntax unified
 3455              		.thumb
 3456              		.thumb_func
 3457              		.fpu fpv4-sp-d16
 3458              		.type	f_stat, %function
 3459              	f_stat:
 3460              		@ args = 0, pretend = 0, frame = 568
 3461              		@ frame_needed = 0, uses_anonymous_args = 0
 3462 0000 30B5     		push	{r4, r5, lr}
 3463 0002 ADF50F7D 		sub	sp, sp, #572
 3464 0006 0D46     		mov	r5, r1
 3465 0008 0190     		str	r0, [sp, #4]
 3466 000a 05A9     		add	r1, sp, #20
 3467 000c 01A8     		add	r0, sp, #4
 3468 000e 0022     		movs	r2, #0
 3469 0010 FFF7FEFF 		bl	chk_mounted
 3470 0014 0446     		mov	r4, r0
 3471 0016 18B1     		cbz	r0, .L891
 3472              	.L888:
 3473 0018 2046     		mov	r0, r4
 3474 001a 0DF50F7D 		add	sp, sp, #572
 3475              		@ sp needed
 3476 001e 30BD     		pop	{r4, r5, pc}
 3477              	.L891:
ARM GAS  /tmp/cc9D3RON.s 			page 62


 3478 0020 02AA     		add	r2, sp, #8
 3479 0022 0EAB     		add	r3, sp, #56
 3480 0024 0199     		ldr	r1, [sp, #4]
 3481 0026 05A8     		add	r0, sp, #20
 3482 0028 CDE90B23 		strd	r2, r3, [sp, #44]
 3483 002c FFF7FEFF 		bl	follow_path
 3484 0030 0446     		mov	r4, r0
 3485 0032 0028     		cmp	r0, #0
 3486 0034 F0D1     		bne	.L888
 3487 0036 0A9B     		ldr	r3, [sp, #40]
 3488 0038 3BB1     		cbz	r3, .L889
 3489 003a 05A8     		add	r0, sp, #20
 3490 003c 2946     		mov	r1, r5
 3491 003e FFF7FEFF 		bl	get_fileinfo
 3492 0042 2046     		mov	r0, r4
 3493 0044 0DF50F7D 		add	sp, sp, #572
 3494              		@ sp needed
 3495 0048 30BD     		pop	{r4, r5, pc}
 3496              	.L889:
 3497 004a 0624     		movs	r4, #6
 3498 004c E4E7     		b	.L888
 3499              		.size	f_stat, .-f_stat
 3500 004e 00BF     		.section	.text.f_getfree,"ax",%progbits
 3501              		.align	1
 3502              		.p2align 2,,3
 3503              		.global	f_getfree
 3504              		.syntax unified
 3505              		.thumb
 3506              		.thumb_func
 3507              		.fpu fpv4-sp-d16
 3508              		.type	f_getfree, %function
 3509              	f_getfree:
 3510              		@ args = 0, pretend = 0, frame = 8
 3511              		@ frame_needed = 0, uses_anonymous_args = 0
 3512 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3513 0004 82B0     		sub	sp, sp, #8
 3514 0006 02AB     		add	r3, sp, #8
 3515 0008 1646     		mov	r6, r2
 3516 000a 43F8040D 		str	r0, [r3, #-4]!
 3517 000e 0F46     		mov	r7, r1
 3518 0010 1846     		mov	r0, r3
 3519 0012 1146     		mov	r1, r2
 3520 0014 0022     		movs	r2, #0
 3521 0016 FFF7FEFF 		bl	chk_mounted
 3522 001a 0546     		mov	r5, r0
 3523 001c 70BB     		cbnz	r0, .L914
 3524 001e 3268     		ldr	r2, [r6]
 3525 0020 9469     		ldr	r4, [r2, #24]
 3526 0022 1169     		ldr	r1, [r2, #16]
 3527 0024 A01E     		subs	r0, r4, #2
 3528 0026 8142     		cmp	r1, r0
 3529 0028 1346     		mov	r3, r2
 3530 002a 2BD9     		bls	.L918
 3531 002c 92F80090 		ldrb	r9, [r2]	@ zero_extendqisi2
 3532 0030 B9F1010F 		cmp	r9, #1
 3533 0034 2BD0     		beq	.L919
 3534 0036 D2F820A0 		ldr	r10, [r2, #32]
ARM GAS  /tmp/cc9D3RON.s 			page 63


 3535 003a 2B46     		mov	r3, r5
 3536 003c 2946     		mov	r1, r5
 3537 003e A846     		mov	r8, r5
 3538              	.L909:
 3539 0040 0029     		cmp	r1, #0
 3540 0042 4AD0     		beq	.L920
 3541              	.L903:
 3542 0044 5878     		ldrb	r0, [r3, #1]	@ zero_extendqisi2
 3543 0046 93F800E0 		ldrb	lr, [r3]	@ zero_extendqisi2
 3544 004a B9F1020F 		cmp	r9, #2
 3545 004e 4FEA0020 		lsl	r0, r0, #8
 3546 0052 3AD0     		beq	.L921
 3547 0054 1868     		ldr	r0, [r3]	@ unaligned
 3548 0056 30F07040 		bics	r0, r0, #-268435456
 3549 005a 08BF     		it	eq
 3550 005c 08F10108 		addeq	r8, r8, #1
 3551 0060 0433     		adds	r3, r3, #4
 3552 0062 0439     		subs	r1, r1, #4
 3553              	.L907:
 3554 0064 013C     		subs	r4, r4, #1
 3555 0066 EBD1     		bne	.L909
 3556              	.L910:
 3557 0068 B9F1030F 		cmp	r9, #3
 3558 006c 08BF     		it	eq
 3559 006e 0123     		moveq	r3, #1
 3560 0070 C2F81080 		str	r8, [r2, #16]
 3561 0074 08BF     		it	eq
 3562 0076 5371     		strbeq	r3, [r2, #5]
 3563              	.L911:
 3564 0078 C7F80080 		str	r8, [r7]
 3565              	.L914:
 3566 007c 2846     		mov	r0, r5
 3567 007e 02B0     		add	sp, sp, #8
 3568              		@ sp needed
 3569 0080 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3570              	.L918:
 3571 0084 2846     		mov	r0, r5
 3572 0086 3960     		str	r1, [r7]
 3573 0088 02B0     		add	sp, sp, #8
 3574              		@ sp needed
 3575 008a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3576              	.L919:
 3577 008e 4FF00209 		mov	r9, #2
 3578 0092 A846     		mov	r8, r5
 3579              	.L895:
 3580 0094 4C45     		cmp	r4, r9
 3581 0096 4946     		mov	r1, r9
 3582 0098 1846     		mov	r0, r3
 3583 009a 09F10109 		add	r9, r9, #1
 3584 009e 29D9     		bls	.L922
 3585 00a0 FFF7FEFF 		bl	get_fat.part.5
 3586 00a4 431C     		adds	r3, r0, #1
 3587 00a6 2AD0     		beq	.L923
 3588 00a8 0128     		cmp	r0, #1
 3589 00aa 2BD0     		beq	.L924
 3590 00ac 08B9     		cbnz	r0, .L901
 3591 00ae 08F10108 		add	r8, r8, #1
ARM GAS  /tmp/cc9D3RON.s 			page 64


 3592              	.L901:
 3593 00b2 3268     		ldr	r2, [r6]
 3594 00b4 9469     		ldr	r4, [r2, #24]
 3595 00b6 4C45     		cmp	r4, r9
 3596 00b8 1346     		mov	r3, r2
 3597 00ba 03D9     		bls	.L897
 3598 00bc B9F1010F 		cmp	r9, #1
 3599 00c0 E8D8     		bhi	.L895
 3600 00c2 0225     		movs	r5, #2
 3601              	.L897:
 3602 00c4 C2F81080 		str	r8, [r2, #16]
 3603 00c8 D6E7     		b	.L911
 3604              	.L921:
 3605 00ca 50EA0E00 		orrs	r0, r0, lr
 3606 00ce 08BF     		it	eq
 3607 00d0 08F10108 		addeq	r8, r8, #1
 3608 00d4 0233     		adds	r3, r3, #2
 3609 00d6 0239     		subs	r1, r1, #2
 3610 00d8 C4E7     		b	.L907
 3611              	.L920:
 3612 00da 1046     		mov	r0, r2
 3613 00dc 5146     		mov	r1, r10
 3614 00de FFF7FEFF 		bl	move_window
 3615 00e2 0AF1010A 		add	r10, r10, #1
 3616 00e6 3268     		ldr	r2, [r6]
 3617 00e8 38B9     		cbnz	r0, .L904
 3618 00ea 02F13003 		add	r3, r2, #48
 3619 00ee 4FF40071 		mov	r1, #512
 3620 00f2 A7E7     		b	.L903
 3621              	.L922:
 3622 00f4 1A46     		mov	r2, r3
 3623 00f6 0225     		movs	r5, #2
 3624 00f8 E4E7     		b	.L897
 3625              	.L904:
 3626 00fa 0546     		mov	r5, r0
 3627 00fc B4E7     		b	.L910
 3628              	.L923:
 3629 00fe 3268     		ldr	r2, [r6]
 3630 0100 0125     		movs	r5, #1
 3631 0102 DFE7     		b	.L897
 3632              	.L924:
 3633 0104 3268     		ldr	r2, [r6]
 3634 0106 0225     		movs	r5, #2
 3635 0108 DCE7     		b	.L897
 3636              		.size	f_getfree, .-f_getfree
 3637 010a 00BF     		.section	.text.f_truncate,"ax",%progbits
 3638              		.align	1
 3639              		.p2align 2,,3
 3640              		.global	f_truncate
 3641              		.syntax unified
 3642              		.thumb
 3643              		.thumb_func
 3644              		.fpu fpv4-sp-d16
 3645              		.type	f_truncate, %function
 3646              	f_truncate:
 3647              		@ args = 0, pretend = 0, frame = 0
 3648              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc9D3RON.s 			page 65


 3649 0000 0368     		ldr	r3, [r0]
 3650 0002 70B5     		push	{r4, r5, r6, lr}
 3651 0004 0BB1     		cbz	r3, .L942
 3652 0006 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 3653 0008 12B9     		cbnz	r2, .L952
 3654              	.L942:
 3655 000a 0925     		movs	r5, #9
 3656              	.L926:
 3657 000c 2846     		mov	r0, r5
 3658 000e 70BD     		pop	{r4, r5, r6, pc}
 3659              	.L952:
 3660 0010 8188     		ldrh	r1, [r0, #4]
 3661 0012 DA88     		ldrh	r2, [r3, #6]
 3662 0014 9142     		cmp	r1, r2
 3663 0016 F8D1     		bne	.L942
 3664 0018 0446     		mov	r4, r0
 3665 001a 1846     		mov	r0, r3
 3666 001c FFF7FEFF 		bl	validate.part.1
 3667 0020 0546     		mov	r5, r0
 3668 0022 0028     		cmp	r0, #0
 3669 0024 F2D1     		bne	.L926
 3670 0026 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3671 0028 1906     		lsls	r1, r3, #24
 3672 002a 45D4     		bmi	.L943
 3673 002c 9A07     		lsls	r2, r3, #30
 3674 002e 41D5     		bpl	.L944
 3675 0030 D4E90221 		ldrd	r2, r1, [r4, #8]
 3676 0034 9142     		cmp	r1, r2
 3677 0036 E9D9     		bls	.L926
 3678 0038 43F02003 		orr	r3, r3, #32
 3679 003c A371     		strb	r3, [r4, #6]
 3680 003e E260     		str	r2, [r4, #12]
 3681 0040 2068     		ldr	r0, [r4]
 3682 0042 6AB9     		cbnz	r2, .L928
 3683 0044 2169     		ldr	r1, [r4, #16]
 3684 0046 0129     		cmp	r1, #1
 3685 0048 12D9     		bls	.L953
 3686 004a 8269     		ldr	r2, [r0, #24]
 3687 004c 9142     		cmp	r1, r2
 3688 004e 25D3     		bcc	.L931
 3689 0050 0022     		movs	r2, #0
 3690 0052 2261     		str	r2, [r4, #16]
 3691 0054 0225     		movs	r5, #2
 3692              	.L930:
 3693 0056 63F07F03 		orn	r3, r3, #127
 3694 005a A371     		strb	r3, [r4, #6]
 3695 005c 2846     		mov	r0, r5
 3696 005e 70BD     		pop	{r4, r5, r6, pc}
 3697              	.L928:
 3698 0060 6169     		ldr	r1, [r4, #20]
 3699 0062 0129     		cmp	r1, #1
 3700 0064 02D9     		bls	.L946
 3701 0066 8269     		ldr	r2, [r0, #24]
 3702 0068 9142     		cmp	r1, r2
 3703 006a 04D3     		bcc	.L954
 3704              	.L946:
 3705 006c 0225     		movs	r5, #2
ARM GAS  /tmp/cc9D3RON.s 			page 66


 3706 006e F2E7     		b	.L930
 3707              	.L953:
 3708 0070 2561     		str	r5, [r4, #16]
 3709 0072 0225     		movs	r5, #2
 3710 0074 EFE7     		b	.L930
 3711              	.L954:
 3712 0076 FFF7FEFF 		bl	get_fat.part.5
 3713 007a 431C     		adds	r3, r0, #1
 3714 007c 0646     		mov	r6, r0
 3715 007e 16D0     		beq	.L955
 3716 0080 0128     		cmp	r0, #1
 3717 0082 08D0     		beq	.L939
 3718 0084 2068     		ldr	r0, [r4]
 3719 0086 8369     		ldr	r3, [r0, #24]
 3720 0088 B342     		cmp	r3, r6
 3721 008a BFD9     		bls	.L926
 3722 008c 6169     		ldr	r1, [r4, #20]
 3723 008e 0129     		cmp	r1, #1
 3724 0090 01D9     		bls	.L939
 3725 0092 8B42     		cmp	r3, r1
 3726 0094 12D8     		bhi	.L956
 3727              	.L939:
 3728 0096 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3729 0098 0225     		movs	r5, #2
 3730 009a DCE7     		b	.L930
 3731              	.L931:
 3732 009c FFF7FEFF 		bl	remove_chain.part.7
 3733 00a0 0023     		movs	r3, #0
 3734 00a2 2361     		str	r3, [r4, #16]
 3735              	.L932:
 3736 00a4 0028     		cmp	r0, #0
 3737 00a6 B1D0     		beq	.L926
 3738              	.L951:
 3739 00a8 0546     		mov	r5, r0
 3740 00aa A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3741 00ac D3E7     		b	.L930
 3742              	.L955:
 3743 00ae A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3744 00b0 0125     		movs	r5, #1
 3745 00b2 D0E7     		b	.L930
 3746              	.L944:
 3747 00b4 0725     		movs	r5, #7
 3748 00b6 A9E7     		b	.L926
 3749              	.L943:
 3750 00b8 0225     		movs	r5, #2
 3751 00ba A7E7     		b	.L926
 3752              	.L956:
 3753 00bc 6FF07042 		mvn	r2, #-268435456
 3754 00c0 FFF7FEFF 		bl	put_fat.part.6
 3755 00c4 0028     		cmp	r0, #0
 3756 00c6 EFD1     		bne	.L951
 3757 00c8 012E     		cmp	r6, #1
 3758 00ca E4D9     		bls	.L939
 3759 00cc 2068     		ldr	r0, [r4]
 3760 00ce 8369     		ldr	r3, [r0, #24]
 3761 00d0 9E42     		cmp	r6, r3
 3762 00d2 E0D2     		bcs	.L939
ARM GAS  /tmp/cc9D3RON.s 			page 67


 3763 00d4 3146     		mov	r1, r6
 3764 00d6 FFF7FEFF 		bl	remove_chain.part.7
 3765 00da E3E7     		b	.L932
 3766              		.size	f_truncate, .-f_truncate
 3767              		.section	.text.f_unlink,"ax",%progbits
 3768              		.align	1
 3769              		.p2align 2,,3
 3770              		.global	f_unlink
 3771              		.syntax unified
 3772              		.thumb
 3773              		.thumb_func
 3774              		.fpu fpv4-sp-d16
 3775              		.type	f_unlink, %function
 3776              	f_unlink:
 3777              		@ args = 0, pretend = 0, frame = 608
 3778              		@ frame_needed = 0, uses_anonymous_args = 0
 3779 0000 70B5     		push	{r4, r5, r6, lr}
 3780 0002 ADF5187D 		sub	sp, sp, #608
 3781 0006 06A9     		add	r1, sp, #24
 3782 0008 0190     		str	r0, [sp, #4]
 3783 000a 0122     		movs	r2, #1
 3784 000c 01A8     		add	r0, sp, #4
 3785 000e FFF7FEFF 		bl	chk_mounted
 3786 0012 10B1     		cbz	r0, .L978
 3787              	.L958:
 3788 0014 0DF5187D 		add	sp, sp, #608
 3789              		@ sp needed
 3790 0018 70BD     		pop	{r4, r5, r6, pc}
 3791              	.L978:
 3792 001a 03AA     		add	r2, sp, #12
 3793 001c 18AB     		add	r3, sp, #96
 3794 001e 0199     		ldr	r1, [sp, #4]
 3795 0020 06A8     		add	r0, sp, #24
 3796 0022 CDE90C23 		strd	r2, r3, [sp, #48]
 3797 0026 FFF7FEFF 		bl	follow_path
 3798 002a 0028     		cmp	r0, #0
 3799 002c F2D1     		bne	.L958
 3800 002e 0B9B     		ldr	r3, [sp, #44]
 3801 0030 002B     		cmp	r3, #0
 3802 0032 3DD0     		beq	.L965
 3803 0034 D97A     		ldrb	r1, [r3, #11]	@ zero_extendqisi2
 3804 0036 CA07     		lsls	r2, r1, #31
 3805 0038 01D5     		bpl	.L979
 3806              	.L967:
 3807 003a 0720     		movs	r0, #7
 3808 003c EAE7     		b	.L958
 3809              	.L979:
 3810 003e D87E     		ldrb	r0, [r3, #27]	@ zero_extendqisi2
 3811 0040 9C7E     		ldrb	r4, [r3, #26]	@ zero_extendqisi2
 3812 0042 5D7D     		ldrb	r5, [r3, #21]	@ zero_extendqisi2
 3813 0044 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 3814 0046 44EA0024 		orr	r4, r4, r0, lsl #8
 3815 004a 42EA0523 		orr	r3, r2, r5, lsl #8
 3816 004e 44EA0344 		orr	r4, r4, r3, lsl #16
 3817 0052 CB06     		lsls	r3, r1, #27
 3818 0054 17D5     		bpl	.L962
 3819 0056 012C     		cmp	r4, #1
ARM GAS  /tmp/cc9D3RON.s 			page 68


 3820 0058 2CD9     		bls	.L964
 3821 005a 06AE     		add	r6, sp, #24
 3822 005c 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 3823 005e 0FAD     		add	r5, sp, #60
 3824 0060 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 3825 0062 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 3826 0064 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 3827 0066 3368     		ldr	r3, [r6]
 3828 0068 2B60     		str	r3, [r5]
 3829 006a 0FA8     		add	r0, sp, #60
 3830 006c 0221     		movs	r1, #2
 3831 006e 1194     		str	r4, [sp, #68]
 3832 0070 FFF7FEFF 		bl	dir_sdi
 3833 0074 0028     		cmp	r0, #0
 3834 0076 CDD1     		bne	.L958
 3835 0078 0FA8     		add	r0, sp, #60
 3836 007a FFF7FEFF 		bl	dir_read
 3837 007e 0028     		cmp	r0, #0
 3838 0080 DBD0     		beq	.L967
 3839 0082 0428     		cmp	r0, #4
 3840 0084 C6D1     		bne	.L958
 3841              	.L962:
 3842 0086 06A8     		add	r0, sp, #24
 3843 0088 FFF7FEFF 		bl	dir_remove
 3844 008c 0028     		cmp	r0, #0
 3845 008e C1D1     		bne	.L958
 3846 0090 0698     		ldr	r0, [sp, #24]
 3847 0092 54B1     		cbz	r4, .L963
 3848 0094 012C     		cmp	r4, #1
 3849 0096 0DD0     		beq	.L964
 3850 0098 8369     		ldr	r3, [r0, #24]
 3851 009a 9C42     		cmp	r4, r3
 3852 009c 0AD2     		bcs	.L964
 3853 009e 2146     		mov	r1, r4
 3854 00a0 FFF7FEFF 		bl	remove_chain.part.7
 3855 00a4 0028     		cmp	r0, #0
 3856 00a6 B5D1     		bne	.L958
 3857 00a8 0698     		ldr	r0, [sp, #24]
 3858              	.L963:
 3859 00aa FFF7FEFF 		bl	sync
 3860 00ae B1E7     		b	.L958
 3861              	.L965:
 3862 00b0 0620     		movs	r0, #6
 3863 00b2 AFE7     		b	.L958
 3864              	.L964:
 3865 00b4 0220     		movs	r0, #2
 3866 00b6 ADE7     		b	.L958
 3867              		.size	f_unlink, .-f_unlink
 3868              		.section	.text.f_mkdir,"ax",%progbits
 3869              		.align	1
 3870              		.p2align 2,,3
 3871              		.global	f_mkdir
 3872              		.syntax unified
 3873              		.thumb
 3874              		.thumb_func
 3875              		.fpu fpv4-sp-d16
 3876              		.type	f_mkdir, %function
ARM GAS  /tmp/cc9D3RON.s 			page 69


 3877              	f_mkdir:
 3878              		@ args = 0, pretend = 0, frame = 592
 3879              		@ frame_needed = 0, uses_anonymous_args = 0
 3880 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3881 0004 ADF5157D 		sub	sp, sp, #596
 3882 0008 0790     		str	r0, [sp, #28]
 3883 000a FFF7FEFF 		bl	get_fattime
 3884 000e 0BA9     		add	r1, sp, #44
 3885 0010 0746     		mov	r7, r0
 3886 0012 0122     		movs	r2, #1
 3887 0014 07A8     		add	r0, sp, #28
 3888 0016 FFF7FEFF 		bl	chk_mounted
 3889 001a 0446     		mov	r4, r0
 3890 001c 20B1     		cbz	r0, .L1007
 3891              	.L997:
 3892 001e 2046     		mov	r0, r4
 3893 0020 0DF5157D 		add	sp, sp, #596
 3894              		@ sp needed
 3895 0024 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3896              	.L1007:
 3897 0028 08AA     		add	r2, sp, #32
 3898 002a 14AB     		add	r3, sp, #80
 3899 002c 0546     		mov	r5, r0
 3900 002e 0799     		ldr	r1, [sp, #28]
 3901 0030 1192     		str	r2, [sp, #68]
 3902 0032 0BA8     		add	r0, sp, #44
 3903 0034 1293     		str	r3, [sp, #72]
 3904 0036 FFF7FEFF 		bl	follow_path
 3905 003a 0446     		mov	r4, r0
 3906 003c 0028     		cmp	r0, #0
 3907 003e 00F0BA80 		beq	.L991
 3908 0042 0428     		cmp	r0, #4
 3909 0044 EBD1     		bne	.L997
 3910 0046 2946     		mov	r1, r5
 3911 0048 0B98     		ldr	r0, [sp, #44]
 3912 004a FFF7FEFF 		bl	create_chain
 3913 004e 8046     		mov	r8, r0
 3914 0050 0028     		cmp	r0, #0
 3915 0052 00F0B680 		beq	.L992
 3916 0056 0128     		cmp	r0, #1
 3917 0058 00F0E580 		beq	.L993
 3918 005c B8F1FF3F 		cmp	r8, #-1
 3919 0060 0B98     		ldr	r0, [sp, #44]
 3920 0062 00F0E280 		beq	.L994
 3921 0066 2946     		mov	r1, r5
 3922 0068 FFF7FEFF 		bl	move_window
 3923 006c 0446     		mov	r4, r0
 3924 006e 0028     		cmp	r0, #0
 3925 0070 40F09880 		bne	.L983
 3926 0074 0B9D     		ldr	r5, [sp, #44]
 3927 0076 AB69     		ldr	r3, [r5, #24]
 3928 0078 95F802A0 		ldrb	r10, [r5, #2]	@ zero_extendqisi2
 3929 007c 023B     		subs	r3, r3, #2
 3930 007e A8F10202 		sub	r2, r8, #2
 3931 0082 9A42     		cmp	r2, r3
 3932 0084 38BF     		it	cc
 3933 0086 AB6A     		ldrcc	r3, [r5, #40]
ARM GAS  /tmp/cc9D3RON.s 			page 70


 3934 0088 05F13006 		add	r6, r5, #48
 3935 008c 34BF     		ite	cc
 3936 008e 02FB0A3B 		mlacc	fp, r2, r10, r3
 3937 0092 8346     		movcs	fp, r0
 3938 0094 4FF40072 		mov	r2, #512
 3939 0098 0021     		movs	r1, #0
 3940 009a 3046     		mov	r0, r6
 3941 009c FFF7FEFF 		bl	memset
 3942 00a0 4FEA1849 		lsr	r9, r8, #16
 3943 00a4 C7F30722 		ubfx	r2, r7, #8, #8
 3944 00a8 4FF02031 		mov	r1, #538976288
 3945 00ac 5FFA89F3 		uxtb	r3, r9
 3946 00b0 0092     		str	r2, [sp]
 3947 00b2 C7F30742 		ubfx	r2, r7, #16, #8
 3948 00b6 2963     		str	r1, [r5, #48]	@ unaligned
 3949 00b8 0192     		str	r2, [sp, #4]
 3950 00ba 7160     		str	r1, [r6, #4]	@ unaligned
 3951 00bc 0693     		str	r3, [sp, #24]
 3952 00be C6F80710 		str	r1, [r6, #7]	@ unaligned
 3953 00c2 5FFA88FE 		uxtb	lr, r8
 3954 00c6 85F84430 		strb	r3, [r5, #68]
 3955 00ca 9DF80030 		ldrb	r3, [sp]	@ zero_extendqisi2
 3956 00ce 85F84730 		strb	r3, [r5, #71]
 3957 00d2 CDF808E0 		str	lr, [sp, #8]
 3958 00d6 9DF80430 		ldrb	r3, [sp, #4]	@ zero_extendqisi2
 3959 00da 85F84830 		strb	r3, [r5, #72]
 3960 00de C8F3072E 		ubfx	lr, r8, #8, #8
 3961 00e2 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 3962 00e6 CDF80CE0 		str	lr, [sp, #12]
 3963 00ea 85F84A30 		strb	r3, [r5, #74]
 3964 00ee FCB2     		uxtb	r4, r7
 3965 00f0 4FF02E0C 		mov	ip, #46
 3966 00f4 3F0E     		lsrs	r7, r7, #24
 3967 00f6 1020     		movs	r0, #16
 3968 00f8 9DF80C30 		ldrb	r3, [sp, #12]	@ zero_extendqisi2
 3969 00fc 85F830C0 		strb	ip, [r5, #48]
 3970 0100 4FEA1929 		lsr	r9, r9, #8
 3971 0104 85F84590 		strb	r9, [r5, #69]
 3972 0108 85F83B00 		strb	r0, [r5, #59]
 3973 010c 85F84640 		strb	r4, [r5, #70]
 3974 0110 85F84970 		strb	r7, [r5, #73]
 3975 0114 85F84B30 		strb	r3, [r5, #75]
 3976 0118 7068     		ldr	r0, [r6, #4]	@ unaligned
 3977 011a B168     		ldr	r1, [r6, #8]	@ unaligned
 3978 011c 0494     		str	r4, [sp, #16]
 3979 011e 0597     		str	r7, [sp, #20]
 3980 0120 3468     		ldr	r4, [r6]	@ unaligned
 3981 0122 F768     		ldr	r7, [r6, #12]	@ unaligned
 3982 0124 EF65     		str	r7, [r5, #92]	@ unaligned
 3983 0126 6865     		str	r0, [r5, #84]	@ unaligned
 3984 0128 A965     		str	r1, [r5, #88]	@ unaligned
 3985 012a 2C65     		str	r4, [r5, #80]	@ unaligned
 3986 012c 3469     		ldr	r4, [r6, #16]	@ unaligned
 3987 012e B169     		ldr	r1, [r6, #24]	@ unaligned
 3988 0130 7069     		ldr	r0, [r6, #20]	@ unaligned
 3989 0132 F769     		ldr	r7, [r6, #28]	@ unaligned
 3990 0134 A966     		str	r1, [r5, #104]	@ unaligned
ARM GAS  /tmp/cc9D3RON.s 			page 71


 3991 0136 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 3992 0138 EF66     		str	r7, [r5, #108]	@ unaligned
 3993 013a 0329     		cmp	r1, #3
 3994 013c 2C66     		str	r4, [r5, #96]	@ unaligned
 3995 013e 6866     		str	r0, [r5, #100]	@ unaligned
 3996 0140 85F851C0 		strb	ip, [r5, #81]
 3997 0144 0D9A     		ldr	r2, [sp, #52]
 3998 0146 66D0     		beq	.L985
 3999              	.L1006:
 4000 0148 110C     		lsrs	r1, r2, #16
 4001 014a C8B2     		uxtb	r0, r1
 4002 014c D4B2     		uxtb	r4, r2
 4003 014e 090A     		lsrs	r1, r1, #8
 4004 0150 C2F30722 		ubfx	r2, r2, #8, #8
 4005              	.L986:
 4006 0154 85F86A40 		strb	r4, [r5, #106]
 4007 0158 85F86B20 		strb	r2, [r5, #107]
 4008 015c 85F86400 		strb	r0, [r5, #100]
 4009 0160 85F86510 		strb	r1, [r5, #101]
 4010 0164 BAF1000F 		cmp	r10, #0
 4011 0168 2DD0     		beq	.L987
 4012 016a 0AF1FF37 		add	r7, r10, #-1
 4013 016e FFB2     		uxtb	r7, r7
 4014 0170 0137     		adds	r7, r7, #1
 4015 0172 5F44     		add	r7, r7, fp
 4016 0174 4FF0010A 		mov	r10, #1
 4017 0178 5C46     		mov	r4, fp
 4018 017a 2846     		mov	r0, r5
 4019 017c 05E0     		b	.L988
 4020              	.L1008:
 4021 017e 3046     		mov	r0, r6
 4022 0180 FFF7FEFF 		bl	memset
 4023 0184 A742     		cmp	r7, r4
 4024 0186 1ED0     		beq	.L987
 4025 0188 0B98     		ldr	r0, [sp, #44]
 4026              	.L988:
 4027 018a C462     		str	r4, [r0, #44]
 4028 018c 0021     		movs	r1, #0
 4029 018e 80F804A0 		strb	r10, [r0, #4]
 4030 0192 FFF7FEFF 		bl	move_window
 4031 0196 0134     		adds	r4, r4, #1
 4032 0198 4FF40072 		mov	r2, #512
 4033 019c 0146     		mov	r1, r0
 4034 019e 0028     		cmp	r0, #0
 4035 01a0 EDD0     		beq	.L1008
 4036 01a2 0446     		mov	r4, r0
 4037              	.L983:
 4038 01a4 0B98     		ldr	r0, [sp, #44]
 4039 01a6 8369     		ldr	r3, [r0, #24]
 4040 01a8 9845     		cmp	r8, r3
 4041 01aa BFF438AF 		bcs	.L997
 4042 01ae 4146     		mov	r1, r8
 4043 01b0 FFF7FEFF 		bl	remove_chain.part.7
 4044 01b4 33E7     		b	.L997
 4045              	.L991:
 4046 01b6 0824     		movs	r4, #8
 4047 01b8 2046     		mov	r0, r4
ARM GAS  /tmp/cc9D3RON.s 			page 72


 4048 01ba 0DF5157D 		add	sp, sp, #596
 4049              		@ sp needed
 4050 01be BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4051              	.L992:
 4052 01c2 0724     		movs	r4, #7
 4053 01c4 2BE7     		b	.L997
 4054              	.L987:
 4055 01c6 0BA8     		add	r0, sp, #44
 4056 01c8 FFF7FEFF 		bl	dir_register
 4057 01cc 0446     		mov	r4, r0
 4058 01ce 0028     		cmp	r0, #0
 4059 01d0 E8D1     		bne	.L983
 4060 01d2 109B     		ldr	r3, [sp, #64]
 4061 01d4 9DF80040 		ldrb	r4, [sp]	@ zero_extendqisi2
 4062 01d8 DC75     		strb	r4, [r3, #23]
 4063 01da 9DF80440 		ldrb	r4, [sp, #4]	@ zero_extendqisi2
 4064 01de 1C76     		strb	r4, [r3, #24]
 4065 01e0 9DF81440 		ldrb	r4, [sp, #20]	@ zero_extendqisi2
 4066 01e4 5C76     		strb	r4, [r3, #25]
 4067 01e6 9DF80840 		ldrb	r4, [sp, #8]	@ zero_extendqisi2
 4068 01ea 0B9A     		ldr	r2, [sp, #44]
 4069 01ec 9DF81010 		ldrb	r1, [sp, #16]	@ zero_extendqisi2
 4070 01f0 9C76     		strb	r4, [r3, #26]
 4071 01f2 9DF80C40 		ldrb	r4, [sp, #12]	@ zero_extendqisi2
 4072 01f6 9975     		strb	r1, [r3, #22]
 4073 01f8 DC76     		strb	r4, [r3, #27]
 4074 01fa 1020     		movs	r0, #16
 4075 01fc 9DF81840 		ldrb	r4, [sp, #24]	@ zero_extendqisi2
 4076 0200 1C75     		strb	r4, [r3, #20]
 4077 0202 0121     		movs	r1, #1
 4078 0204 D872     		strb	r0, [r3, #11]
 4079 0206 83F81590 		strb	r9, [r3, #21]
 4080 020a 1046     		mov	r0, r2
 4081 020c 1171     		strb	r1, [r2, #4]
 4082 020e FFF7FEFF 		bl	sync
 4083 0212 0446     		mov	r4, r0
 4084 0214 03E7     		b	.L997
 4085              	.L985:
 4086 0216 696A     		ldr	r1, [r5, #36]
 4087 0218 9142     		cmp	r1, r2
 4088 021a 95D1     		bne	.L1006
 4089 021c 0021     		movs	r1, #0
 4090 021e 0846     		mov	r0, r1
 4091 0220 0A46     		mov	r2, r1
 4092 0222 0C46     		mov	r4, r1
 4093 0224 96E7     		b	.L986
 4094              	.L993:
 4095 0226 0224     		movs	r4, #2
 4096 0228 F9E6     		b	.L997
 4097              	.L994:
 4098 022a 0124     		movs	r4, #1
 4099 022c F7E6     		b	.L997
 4100              		.size	f_mkdir, .-f_mkdir
 4101 022e 00BF     		.section	.text.f_chmod,"ax",%progbits
 4102              		.align	1
 4103              		.p2align 2,,3
 4104              		.global	f_chmod
ARM GAS  /tmp/cc9D3RON.s 			page 73


 4105              		.syntax unified
 4106              		.thumb
 4107              		.thumb_func
 4108              		.fpu fpv4-sp-d16
 4109              		.type	f_chmod, %function
 4110              	f_chmod:
 4111              		@ args = 0, pretend = 0, frame = 568
 4112              		@ frame_needed = 0, uses_anonymous_args = 0
 4113 0000 30B5     		push	{r4, r5, lr}
 4114 0002 ADF50F7D 		sub	sp, sp, #572
 4115 0006 0D46     		mov	r5, r1
 4116 0008 1446     		mov	r4, r2
 4117 000a 0190     		str	r0, [sp, #4]
 4118 000c 05A9     		add	r1, sp, #20
 4119 000e 01A8     		add	r0, sp, #4
 4120 0010 0122     		movs	r2, #1
 4121 0012 FFF7FEFF 		bl	chk_mounted
 4122 0016 10B1     		cbz	r0, .L1013
 4123              	.L1010:
 4124 0018 0DF50F7D 		add	sp, sp, #572
 4125              		@ sp needed
 4126 001c 30BD     		pop	{r4, r5, pc}
 4127              	.L1013:
 4128 001e 02AA     		add	r2, sp, #8
 4129 0020 0EAB     		add	r3, sp, #56
 4130 0022 0199     		ldr	r1, [sp, #4]
 4131 0024 0B92     		str	r2, [sp, #44]
 4132 0026 05A8     		add	r0, sp, #20
 4133 0028 0C93     		str	r3, [sp, #48]
 4134 002a FFF7FEFF 		bl	follow_path
 4135 002e 0028     		cmp	r0, #0
 4136 0030 F2D1     		bne	.L1010
 4137 0032 0A9A     		ldr	r2, [sp, #40]
 4138 0034 7AB1     		cbz	r2, .L1011
 4139 0036 D37A     		ldrb	r3, [r2, #11]	@ zero_extendqisi2
 4140 0038 0599     		ldr	r1, [sp, #20]
 4141 003a 5D40     		eors	r5, r5, r3
 4142 003c 2C40     		ands	r4, r4, r5
 4143 003e 04F02704 		and	r4, r4, #39
 4144 0042 5C40     		eors	r4, r4, r3
 4145 0044 0123     		movs	r3, #1
 4146 0046 D472     		strb	r4, [r2, #11]
 4147 0048 0846     		mov	r0, r1
 4148 004a 0B71     		strb	r3, [r1, #4]
 4149 004c FFF7FEFF 		bl	sync
 4150 0050 0DF50F7D 		add	sp, sp, #572
 4151              		@ sp needed
 4152 0054 30BD     		pop	{r4, r5, pc}
 4153              	.L1011:
 4154 0056 0620     		movs	r0, #6
 4155 0058 DEE7     		b	.L1010
 4156              		.size	f_chmod, .-f_chmod
 4157 005a 00BF     		.section	.text.f_utime,"ax",%progbits
 4158              		.align	1
 4159              		.p2align 2,,3
 4160              		.global	f_utime
 4161              		.syntax unified
ARM GAS  /tmp/cc9D3RON.s 			page 74


 4162              		.thumb
 4163              		.thumb_func
 4164              		.fpu fpv4-sp-d16
 4165              		.type	f_utime, %function
 4166              	f_utime:
 4167              		@ args = 0, pretend = 0, frame = 568
 4168              		@ frame_needed = 0, uses_anonymous_args = 0
 4169 0000 10B5     		push	{r4, lr}
 4170 0002 ADF50E7D 		sub	sp, sp, #568
 4171 0006 0C46     		mov	r4, r1
 4172 0008 0190     		str	r0, [sp, #4]
 4173 000a 05A9     		add	r1, sp, #20
 4174 000c 01A8     		add	r0, sp, #4
 4175 000e 0122     		movs	r2, #1
 4176 0010 FFF7FEFF 		bl	chk_mounted
 4177 0014 10B1     		cbz	r0, .L1018
 4178              	.L1015:
 4179 0016 0DF50E7D 		add	sp, sp, #568
 4180              		@ sp needed
 4181 001a 10BD     		pop	{r4, pc}
 4182              	.L1018:
 4183 001c 02AA     		add	r2, sp, #8
 4184 001e 0EAB     		add	r3, sp, #56
 4185 0020 0199     		ldr	r1, [sp, #4]
 4186 0022 05A8     		add	r0, sp, #20
 4187 0024 CDE90B23 		strd	r2, r3, [sp, #44]
 4188 0028 FFF7FEFF 		bl	follow_path
 4189 002c 0028     		cmp	r0, #0
 4190 002e F2D1     		bne	.L1015
 4191 0030 0A9B     		ldr	r3, [sp, #40]
 4192 0032 93B1     		cbz	r3, .L1016
 4193 0034 E288     		ldrh	r2, [r4, #6]
 4194 0036 9A75     		strb	r2, [r3, #22]
 4195 0038 E288     		ldrh	r2, [r4, #6]
 4196 003a 0599     		ldr	r1, [sp, #20]
 4197 003c 120A     		lsrs	r2, r2, #8
 4198 003e DA75     		strb	r2, [r3, #23]
 4199 0040 A288     		ldrh	r2, [r4, #4]
 4200 0042 1A76     		strb	r2, [r3, #24]
 4201 0044 A288     		ldrh	r2, [r4, #4]
 4202 0046 0124     		movs	r4, #1
 4203 0048 120A     		lsrs	r2, r2, #8
 4204 004a 5A76     		strb	r2, [r3, #25]
 4205 004c 0846     		mov	r0, r1
 4206 004e 0C71     		strb	r4, [r1, #4]
 4207 0050 FFF7FEFF 		bl	sync
 4208 0054 0DF50E7D 		add	sp, sp, #568
 4209              		@ sp needed
 4210 0058 10BD     		pop	{r4, pc}
 4211              	.L1016:
 4212 005a 0620     		movs	r0, #6
 4213 005c DBE7     		b	.L1015
 4214              		.size	f_utime, .-f_utime
 4215 005e 00BF     		.section	.text.f_rename,"ax",%progbits
 4216              		.align	1
 4217              		.p2align 2,,3
 4218              		.global	f_rename
ARM GAS  /tmp/cc9D3RON.s 			page 75


 4219              		.syntax unified
 4220              		.thumb
 4221              		.thumb_func
 4222              		.fpu fpv4-sp-d16
 4223              		.type	f_rename, %function
 4224              	f_rename:
 4225              		@ args = 0, pretend = 0, frame = 632
 4226              		@ frame_needed = 0, uses_anonymous_args = 0
 4227 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4228 0002 ADF51F7D 		sub	sp, sp, #636
 4229 0006 0F46     		mov	r7, r1
 4230 0008 0190     		str	r0, [sp, #4]
 4231 000a 0CA9     		add	r1, sp, #48
 4232 000c 01A8     		add	r0, sp, #4
 4233 000e 0122     		movs	r2, #1
 4234 0010 FFF7FEFF 		bl	chk_mounted
 4235 0014 10B1     		cbz	r0, .L1034
 4236              	.L1020:
 4237 0016 0DF51F7D 		add	sp, sp, #636
 4238              		@ sp needed
 4239 001a F0BD     		pop	{r4, r5, r6, r7, pc}
 4240              	.L1034:
 4241 001c 0C9B     		ldr	r3, [sp, #48]
 4242 001e 1593     		str	r3, [sp, #84]
 4243 0020 03AA     		add	r2, sp, #12
 4244 0022 1EAB     		add	r3, sp, #120
 4245 0024 0199     		ldr	r1, [sp, #4]
 4246 0026 1292     		str	r2, [sp, #72]
 4247 0028 0CA8     		add	r0, sp, #48
 4248 002a 1393     		str	r3, [sp, #76]
 4249 002c FFF7FEFF 		bl	follow_path
 4250 0030 0028     		cmp	r0, #0
 4251 0032 F0D1     		bne	.L1020
 4252 0034 119C     		ldr	r4, [sp, #68]
 4253 0036 002C     		cmp	r4, #0
 4254 0038 51D0     		beq	.L1025
 4255 003a 54F80B0F 		ldr	r0, [r4, #11]!	@ unaligned
 4256 003e 6168     		ldr	r1, [r4, #4]	@ unaligned
 4257 0040 A268     		ldr	r2, [r4, #8]	@ unaligned
 4258 0042 E368     		ldr	r3, [r4, #12]	@ unaligned
 4259 0044 94F814C0 		ldrb	ip, [r4, #20]	@ zero_extendqisi2
 4260 0048 06AE     		add	r6, sp, #24
 4261 004a 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 4262 004c 0CAD     		add	r5, sp, #48
 4263 004e 2069     		ldr	r0, [r4, #16]	@ unaligned
 4264 0050 3060     		str	r0, [r6]
 4265 0052 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4266 0054 15AC     		add	r4, sp, #84
 4267 0056 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4268 0058 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4269 005a 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4270 005c 2B68     		ldr	r3, [r5]
 4271 005e 2360     		str	r3, [r4]
 4272 0060 3946     		mov	r1, r7
 4273 0062 15A8     		add	r0, sp, #84
 4274 0064 86F804C0 		strb	ip, [r6, #4]
 4275 0068 FFF7FEFF 		bl	follow_path
ARM GAS  /tmp/cc9D3RON.s 			page 76


 4276 006c 0028     		cmp	r0, #0
 4277 006e 38D0     		beq	.L1026
 4278 0070 0428     		cmp	r0, #4
 4279 0072 D0D1     		bne	.L1020
 4280 0074 15A8     		add	r0, sp, #84
 4281 0076 FFF7FEFF 		bl	dir_register
 4282 007a 0028     		cmp	r0, #0
 4283 007c CBD1     		bne	.L1020
 4284 007e 1A9A     		ldr	r2, [sp, #104]
 4285 0080 DDF81E40 		ldr	r4, [sp, #30]	@ unaligned
 4286 0084 C2F81140 		str	r4, [r2, #17]	@ unaligned
 4287 0088 DDF81A30 		ldr	r3, [sp, #26]	@ unaligned
 4288 008c DDF82240 		ldr	r4, [sp, #34]	@ unaligned
 4289 0090 C2F80D30 		str	r3, [r2, #13]	@ unaligned
 4290 0094 C2F81540 		str	r4, [r2, #21]	@ unaligned
 4291 0098 9DF81810 		ldrb	r1, [sp, #24]	@ zero_extendqisi2
 4292 009c DDF82640 		ldr	r4, [sp, #38]	@ unaligned
 4293 00a0 C2F81940 		str	r4, [r2, #25]	@ unaligned
 4294 00a4 0C98     		ldr	r0, [sp, #48]
 4295 00a6 BDF82A40 		ldrh	r4, [sp, #42]	@ unaligned
 4296 00aa A2F81D40 		strh	r4, [r2, #29]	@ unaligned
 4297 00ae 41F02001 		orr	r1, r1, #32
 4298 00b2 9DF82C50 		ldrb	r5, [sp, #44]	@ zero_extendqisi2
 4299 00b6 D172     		strb	r1, [r2, #11]
 4300 00b8 0124     		movs	r4, #1
 4301 00ba D577     		strb	r5, [r2, #31]
 4302 00bc 0471     		strb	r4, [r0, #4]
 4303 00be 0E99     		ldr	r1, [sp, #56]
 4304 00c0 179B     		ldr	r3, [sp, #92]
 4305 00c2 9942     		cmp	r1, r3
 4306 00c4 02D0     		beq	.L1022
 4307 00c6 D37A     		ldrb	r3, [r2, #11]	@ zero_extendqisi2
 4308 00c8 DB06     		lsls	r3, r3, #27
 4309 00ca 0CD4     		bmi	.L1035
 4310              	.L1022:
 4311 00cc 0CA8     		add	r0, sp, #48
 4312 00ce FFF7FEFF 		bl	dir_remove
 4313 00d2 0028     		cmp	r0, #0
 4314 00d4 9FD1     		bne	.L1020
 4315 00d6 0C98     		ldr	r0, [sp, #48]
 4316 00d8 FFF7FEFF 		bl	sync
 4317 00dc 9BE7     		b	.L1020
 4318              	.L1025:
 4319 00de 0420     		movs	r0, #4
 4320 00e0 99E7     		b	.L1020
 4321              	.L1026:
 4322 00e2 0820     		movs	r0, #8
 4323 00e4 97E7     		b	.L1020
 4324              	.L1035:
 4325 00e6 557D     		ldrb	r5, [r2, #21]	@ zero_extendqisi2
 4326 00e8 117D     		ldrb	r1, [r2, #20]	@ zero_extendqisi2
 4327 00ea D47E     		ldrb	r4, [r2, #27]	@ zero_extendqisi2
 4328 00ec 937E     		ldrb	r3, [r2, #26]	@ zero_extendqisi2
 4329 00ee 1598     		ldr	r0, [sp, #84]
 4330 00f0 41EA0521 		orr	r1, r1, r5, lsl #8
 4331 00f4 43EA0423 		orr	r3, r3, r4, lsl #8
 4332 00f8 8269     		ldr	r2, [r0, #24]
ARM GAS  /tmp/cc9D3RON.s 			page 77


 4333 00fa 43EA0143 		orr	r3, r3, r1, lsl #16
 4334 00fe 023B     		subs	r3, r3, #2
 4335 0100 023A     		subs	r2, r2, #2
 4336 0102 9342     		cmp	r3, r2
 4337 0104 25D2     		bcs	.L1028
 4338 0106 8178     		ldrb	r1, [r0, #2]	@ zero_extendqisi2
 4339 0108 826A     		ldr	r2, [r0, #40]
 4340 010a 03FB0121 		mla	r1, r3, r1, r2
 4341 010e 01B3     		cbz	r1, .L1028
 4342 0110 FFF7FEFF 		bl	move_window
 4343 0114 0028     		cmp	r0, #0
 4344 0116 7FF47EAF 		bne	.L1020
 4345 011a 159B     		ldr	r3, [sp, #84]
 4346 011c 93F85120 		ldrb	r2, [r3, #81]	@ zero_extendqisi2
 4347 0120 2E2A     		cmp	r2, #46
 4348 0122 D3D1     		bne	.L1022
 4349 0124 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 4350 0126 179A     		ldr	r2, [sp, #92]
 4351 0128 0329     		cmp	r1, #3
 4352 012a 03D1     		bne	.L1024
 4353 012c 596A     		ldr	r1, [r3, #36]
 4354 012e 9142     		cmp	r1, r2
 4355 0130 08BF     		it	eq
 4356 0132 0022     		moveq	r2, #0
 4357              	.L1024:
 4358 0134 110C     		lsrs	r1, r2, #16
 4359 0136 C2F30720 		ubfx	r0, r2, #8, #8
 4360 013a 0C0A     		lsrs	r4, r1, #8
 4361 013c 83F86A20 		strb	r2, [r3, #106]
 4362 0140 0122     		movs	r2, #1
 4363 0142 83F86410 		strb	r1, [r3, #100]
 4364 0146 83F86540 		strb	r4, [r3, #101]
 4365 014a 83F86B00 		strb	r0, [r3, #107]
 4366 014e 1A71     		strb	r2, [r3, #4]
 4367 0150 BCE7     		b	.L1022
 4368              	.L1028:
 4369 0152 0220     		movs	r0, #2
 4370 0154 5FE7     		b	.L1020
 4371              		.size	f_rename, .-f_rename
 4372 0156 00BF     		.section	.bss.FatFs,"aw",%nobits
 4373              		.align	2
 4374              		.set	.LANCHOR0,. + 0
 4375              		.type	FatFs, %object
 4376              		.size	FatFs, 8
 4377              	FatFs:
 4378 0000 00000000 		.space	8
 4378      00000000 
 4379              		.section	.bss.Fsid,"aw",%nobits
 4380              		.align	1
 4381              		.set	.LANCHOR1,. + 0
 4382              		.type	Fsid, %object
 4383              		.size	Fsid, 2
 4384              	Fsid:
 4385 0000 0000     		.space	2
 4386              		.section	.rodata.LfnOfs,"a",%progbits
 4387              		.align	2
 4388              		.set	.LANCHOR2,. + 0
ARM GAS  /tmp/cc9D3RON.s 			page 78


 4389              		.type	LfnOfs, %object
 4390              		.size	LfnOfs, 13
 4391              	LfnOfs:
 4392 0000 01       		.byte	1
 4393 0001 03       		.byte	3
 4394 0002 05       		.byte	5
 4395 0003 07       		.byte	7
 4396 0004 09       		.byte	9
 4397 0005 0E       		.byte	14
 4398 0006 10       		.byte	16
 4399 0007 12       		.byte	18
 4400 0008 14       		.byte	20
 4401 0009 16       		.byte	22
 4402 000a 18       		.byte	24
 4403 000b 1C       		.byte	28
 4404 000c 1E       		.byte	30
 4405              		.section	.rodata.excvt.6226,"a",%progbits
 4406              		.align	2
 4407              		.set	.LANCHOR3,. + 0
 4408              		.type	excvt.6226, %object
 4409              		.size	excvt.6226, 128
 4410              	excvt.6226:
 4411 0000 80       		.byte	-128
 4412 0001 9A       		.byte	-102
 4413 0002 90       		.byte	-112
 4414 0003 B6       		.byte	-74
 4415 0004 8E       		.byte	-114
 4416 0005 B7       		.byte	-73
 4417 0006 8F       		.byte	-113
 4418 0007 80       		.byte	-128
 4419 0008 D2       		.byte	-46
 4420 0009 D3       		.byte	-45
 4421 000a D4       		.byte	-44
 4422 000b D8       		.byte	-40
 4423 000c D7       		.byte	-41
 4424 000d DE       		.byte	-34
 4425 000e 8E       		.byte	-114
 4426 000f 8F       		.byte	-113
 4427 0010 90       		.byte	-112
 4428 0011 92       		.byte	-110
 4429 0012 92       		.byte	-110
 4430 0013 E2       		.byte	-30
 4431 0014 99       		.byte	-103
 4432 0015 E3       		.byte	-29
 4433 0016 EA       		.byte	-22
 4434 0017 EB       		.byte	-21
 4435 0018 59       		.byte	89
 4436 0019 99       		.byte	-103
 4437 001a 9A       		.byte	-102
 4438 001b 9D       		.byte	-99
 4439 001c 9C       		.byte	-100
 4440 001d 9D       		.byte	-99
 4441 001e 9E       		.byte	-98
 4442 001f 9F       		.byte	-97
 4443 0020 B5       		.byte	-75
 4444 0021 D6       		.byte	-42
 4445 0022 E0       		.byte	-32
ARM GAS  /tmp/cc9D3RON.s 			page 79


 4446 0023 E9       		.byte	-23
 4447 0024 A5       		.byte	-91
 4448 0025 A5       		.byte	-91
 4449 0026 A6       		.byte	-90
 4450 0027 A7       		.byte	-89
 4451 0028 A8       		.byte	-88
 4452 0029 A9       		.byte	-87
 4453 002a AA       		.byte	-86
 4454 002b AB       		.byte	-85
 4455 002c AC       		.byte	-84
 4456 002d 21       		.byte	33
 4457 002e AE       		.byte	-82
 4458 002f AF       		.byte	-81
 4459 0030 B0       		.byte	-80
 4460 0031 B1       		.byte	-79
 4461 0032 B2       		.byte	-78
 4462 0033 B3       		.byte	-77
 4463 0034 B4       		.byte	-76
 4464 0035 B5       		.byte	-75
 4465 0036 B6       		.byte	-74
 4466 0037 B7       		.byte	-73
 4467 0038 B8       		.byte	-72
 4468 0039 B9       		.byte	-71
 4469 003a BA       		.byte	-70
 4470 003b BB       		.byte	-69
 4471 003c BC       		.byte	-68
 4472 003d BD       		.byte	-67
 4473 003e BE       		.byte	-66
 4474 003f BF       		.byte	-65
 4475 0040 C0       		.byte	-64
 4476 0041 C1       		.byte	-63
 4477 0042 C2       		.byte	-62
 4478 0043 C3       		.byte	-61
 4479 0044 C4       		.byte	-60
 4480 0045 C5       		.byte	-59
 4481 0046 C7       		.byte	-57
 4482 0047 C7       		.byte	-57
 4483 0048 C8       		.byte	-56
 4484 0049 C9       		.byte	-55
 4485 004a CA       		.byte	-54
 4486 004b CB       		.byte	-53
 4487 004c CC       		.byte	-52
 4488 004d CD       		.byte	-51
 4489 004e CE       		.byte	-50
 4490 004f CF       		.byte	-49
 4491 0050 D0       		.byte	-48
 4492 0051 D1       		.byte	-47
 4493 0052 D2       		.byte	-46
 4494 0053 D3       		.byte	-45
 4495 0054 D4       		.byte	-44
 4496 0055 D5       		.byte	-43
 4497 0056 D6       		.byte	-42
 4498 0057 D7       		.byte	-41
 4499 0058 D8       		.byte	-40
 4500 0059 D9       		.byte	-39
 4501 005a DA       		.byte	-38
 4502 005b DB       		.byte	-37
ARM GAS  /tmp/cc9D3RON.s 			page 80


 4503 005c DC       		.byte	-36
 4504 005d DD       		.byte	-35
 4505 005e DE       		.byte	-34
 4506 005f DF       		.byte	-33
 4507 0060 E0       		.byte	-32
 4508 0061 E1       		.byte	-31
 4509 0062 E2       		.byte	-30
 4510 0063 E3       		.byte	-29
 4511 0064 E5       		.byte	-27
 4512 0065 E5       		.byte	-27
 4513 0066 E6       		.byte	-26
 4514 0067 E7       		.byte	-25
 4515 0068 E7       		.byte	-25
 4516 0069 E9       		.byte	-23
 4517 006a EA       		.byte	-22
 4518 006b EB       		.byte	-21
 4519 006c ED       		.byte	-19
 4520 006d ED       		.byte	-19
 4521 006e EE       		.byte	-18
 4522 006f EF       		.byte	-17
 4523 0070 F0       		.byte	-16
 4524 0071 F1       		.byte	-15
 4525 0072 F2       		.byte	-14
 4526 0073 F3       		.byte	-13
 4527 0074 F4       		.byte	-12
 4528 0075 F5       		.byte	-11
 4529 0076 F6       		.byte	-10
 4530 0077 F7       		.byte	-9
 4531 0078 F8       		.byte	-8
 4532 0079 F9       		.byte	-7
 4533 007a FA       		.byte	-6
 4534 007b FB       		.byte	-5
 4535 007c FC       		.byte	-4
 4536 007d FD       		.byte	-3
 4537 007e FE       		.byte	-2
 4538 007f FF       		.byte	-1
 4539              		.section	.rodata.follow_path.str1.4,"aMS",%progbits,1
 4540              		.align	2
 4541              	.LC0:
 4542 0000 222A3A3C 		.ascii	"\"*:<>?|\177\000"
 4542      3E3F7C7F 
 4542      00
 4543 0009 000000   		.space	3
 4544              	.LC1:
 4545 000c 2B2C3B3D 		.ascii	"+,;=[]\000"
 4545      5B5D00
 4546              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
