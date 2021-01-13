ARM GAS  /tmp/ccFB80Ed.s 			page 1


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
  11              		.file	"ff.c"
  12              		.section	.text.get_fileinfo,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	get_fileinfo, %function
  20              	get_fileinfo:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 0369     		ldr	r3, [r0, #16]
  24 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  25 0006 01F10902 		add	r2, r1, #9
  26 000a 002B     		cmp	r3, #0
  27 000c 4AD0     		beq	.L2
  28 000e 4569     		ldr	r5, [r0, #20]
  29 0010 01F11106 		add	r6, r1, #17
  30 0014 95F80CE0 		ldrb	lr, [r5, #12]	@ zero_extendqisi2
  31 0018 6C1E     		subs	r4, r5, #1
  32 001a 0EF0080C 		and	ip, lr, #8
  33 001e 0DE0     		b	.L5
  34              	.L50:
  35 0020 A3F14107 		sub	r7, r3, #65
  36 0024 BCF1000F 		cmp	ip, #0
  37 0028 04D0     		beq	.L4
  38 002a 192F     		cmp	r7, #25
  39 002c 03F12007 		add	r7, r3, #32
  40 0030 00D8     		bhi	.L4
  41 0032 FBB2     		uxtb	r3, r7
  42              	.L4:
  43 0034 02F8013B 		strb	r3, [r2], #1
  44 0038 B242     		cmp	r2, r6
  45 003a 0AD0     		beq	.L3
  46              	.L5:
  47 003c 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
  48 0040 202B     		cmp	r3, #32
  49 0042 06D0     		beq	.L3
  50 0044 052B     		cmp	r3, #5
  51 0046 EBD1     		bne	.L50
  52 0048 E523     		movs	r3, #229
  53 004a 02F8013B 		strb	r3, [r2], #1
  54 004e B242     		cmp	r2, r6
  55 0050 F4D1     		bne	.L5
  56              	.L3:
  57 0052 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
ARM GAS  /tmp/ccFB80Ed.s 			page 2


  58 0054 202B     		cmp	r3, #32
  59 0056 17D0     		beq	.L6
  60 0058 1746     		mov	r7, r2
  61 005a 2E23     		movs	r3, #46
  62 005c 0EF01004 		and	r4, lr, #16
  63 0060 07F8043B 		strb	r3, [r7], #4
  64 0064 0132     		adds	r2, r2, #1
  65 0066 EE1D     		adds	r6, r5, #7
  66              	.L8:
  67 0068 16F8013F 		ldrb	r3, [r6, #1]!	@ zero_extendqisi2
  68 006c 202B     		cmp	r3, #32
  69 006e A3F1410E 		sub	lr, r3, #65
  70 0072 09D0     		beq	.L6
  71 0074 24B1     		cbz	r4, .L7
  72 0076 BEF1190F 		cmp	lr, #25
  73 007a 9CBF     		itt	ls
  74 007c 2033     		addls	r3, r3, #32
  75 007e DBB2     		uxtbls	r3, r3
  76              	.L7:
  77 0080 02F8013B 		strb	r3, [r2], #1
  78 0084 BA42     		cmp	r2, r7
  79 0086 EFD1     		bne	.L8
  80              	.L6:
  81 0088 EB7A     		ldrb	r3, [r5, #11]	@ zero_extendqisi2
  82 008a 0B72     		strb	r3, [r1, #8]
  83 008c EB69     		ldr	r3, [r5, #28]	@ unaligned
  84 008e 0B60     		str	r3, [r1]
  85 0090 6C7E     		ldrb	r4, [r5, #25]	@ zero_extendqisi2
  86 0092 2B7E     		ldrb	r3, [r5, #24]	@ zero_extendqisi2
  87 0094 43EA0423 		orr	r3, r3, r4, lsl #8
  88 0098 8B80     		strh	r3, [r1, #4]	@ movhi
  89 009a EC7D     		ldrb	r4, [r5, #23]	@ zero_extendqisi2
  90 009c AB7D     		ldrb	r3, [r5, #22]	@ zero_extendqisi2
  91 009e 43EA0423 		orr	r3, r3, r4, lsl #8
  92 00a2 CB80     		strh	r3, [r1, #6]	@ movhi
  93              	.L2:
  94 00a4 0024     		movs	r4, #0
  95 00a6 1470     		strb	r4, [r2]
  96 00a8 8E69     		ldr	r6, [r1, #24]
  97 00aa 36B1     		cbz	r6, .L1
  98 00ac CB69     		ldr	r3, [r1, #28]
  99 00ae 23B1     		cbz	r3, .L1
 100 00b0 0369     		ldr	r3, [r0, #16]
 101 00b2 23B9     		cbnz	r3, .L10
 102              	.L12:
 103 00b4 0024     		movs	r4, #0
 104              	.L11:
 105 00b6 0023     		movs	r3, #0
 106 00b8 3355     		strb	r3, [r6, r4]
 107              	.L1:
 108 00ba BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 109              	.L10:
 110 00be 4FF6FF73 		movw	r3, #65535
 111 00c2 028C     		ldrh	r2, [r0, #32]
 112 00c4 9A42     		cmp	r2, r3
 113 00c6 F5D0     		beq	.L12
 114 00c8 C769     		ldr	r7, [r0, #28]
ARM GAS  /tmp/ccFB80Ed.s 			page 3


 115 00ca 3888     		ldrh	r0, [r7]
 116 00cc 0028     		cmp	r0, #0
 117 00ce F1D0     		beq	.L12
 118 00d0 0D46     		mov	r5, r1
 119 00d2 06F1FF38 		add	r8, r6, #-1
 120 00d6 0BE0     		b	.L13
 121              	.L51:
 122 00d8 EB69     		ldr	r3, [r5, #28]
 123 00da 013B     		subs	r3, r3, #1
 124 00dc A342     		cmp	r3, r4
 125 00de 04F10104 		add	r4, r4, #1
 126 00e2 E7D9     		bls	.L12
 127 00e4 08F8010F 		strb	r0, [r8, #1]!
 128 00e8 37F81400 		ldrh	r0, [r7, r4, lsl #1]
 129 00ec 0028     		cmp	r0, #0
 130 00ee E2D0     		beq	.L11
 131              	.L13:
 132 00f0 0021     		movs	r1, #0
 133 00f2 FFF7FEFF 		bl	ff_convert
 134 00f6 0028     		cmp	r0, #0
 135 00f8 EED1     		bne	.L51
 136 00fa DBE7     		b	.L12
 137              		.size	get_fileinfo, .-get_fileinfo
 138              		.section	.text.move_window,"ax",%progbits
 139              		.align	1
 140              		.p2align 2,,3
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu softvfp
 145              		.type	move_window, %function
 146              	move_window:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 150 0004 C66A     		ldr	r6, [r0, #44]
 151 0006 8E42     		cmp	r6, r1
 152 0008 04D0     		beq	.L57
 153 000a 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 154 000c 0F46     		mov	r7, r1
 155 000e 0446     		mov	r4, r0
 156 0010 73B9     		cbnz	r3, .L55
 157              	.L59:
 158 0012 17B9     		cbnz	r7, .L68
 159              	.L57:
 160 0014 0020     		movs	r0, #0
 161 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 162              	.L68:
 163 001a 0123     		movs	r3, #1
 164 001c 3A46     		mov	r2, r7
 165 001e 04F13001 		add	r1, r4, #48
 166 0022 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 167 0024 FFF7FEFF 		bl	disk_read
 168 0028 20BB     		cbnz	r0, .L61
 169 002a E762     		str	r7, [r4, #44]
 170 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 171              	.L55:
ARM GAS  /tmp/ccFB80Ed.s 			page 4


 172 0030 00F13008 		add	r8, r0, #48
 173 0034 4146     		mov	r1, r8
 174 0036 0123     		movs	r3, #1
 175 0038 3246     		mov	r2, r6
 176 003a 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 177 003c FFF7FEFF 		bl	disk_write
 178 0040 C0B9     		cbnz	r0, .L61
 179 0042 E369     		ldr	r3, [r4, #28]
 180 0044 226A     		ldr	r2, [r4, #32]
 181 0046 2071     		strb	r0, [r4, #4]
 182 0048 1A44     		add	r2, r2, r3
 183 004a 9642     		cmp	r6, r2
 184 004c E1D2     		bcs	.L59
 185 004e E578     		ldrb	r5, [r4, #3]	@ zero_extendqisi2
 186 0050 012D     		cmp	r5, #1
 187 0052 01D8     		bhi	.L60
 188 0054 DDE7     		b	.L59
 189              	.L69:
 190 0056 E369     		ldr	r3, [r4, #28]
 191              	.L60:
 192 0058 1E44     		add	r6, r6, r3
 193 005a 013D     		subs	r5, r5, #1
 194 005c 3246     		mov	r2, r6
 195 005e 0123     		movs	r3, #1
 196 0060 4146     		mov	r1, r8
 197 0062 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 198 0064 EDB2     		uxtb	r5, r5
 199 0066 FFF7FEFF 		bl	disk_write
 200 006a 012D     		cmp	r5, #1
 201 006c F3D1     		bne	.L69
 202 006e 002F     		cmp	r7, #0
 203 0070 D0D0     		beq	.L57
 204 0072 D2E7     		b	.L68
 205              	.L61:
 206 0074 0120     		movs	r0, #1
 207 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 208              		.size	move_window, .-move_window
 209 007a 00BF     		.section	.text.sync,"ax",%progbits
 210              		.align	1
 211              		.p2align 2,,3
 212              		.syntax unified
 213              		.thumb
 214              		.thumb_func
 215              		.fpu softvfp
 216              		.type	sync, %function
 217              	sync:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 221 0004 0021     		movs	r1, #0
 222 0006 0446     		mov	r4, r0
 223 0008 FFF7FEFF 		bl	move_window
 224 000c 0546     		mov	r5, r0
 225 000e 50B9     		cbnz	r0, .L71
 226 0010 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 227 0012 032B     		cmp	r3, #3
 228 0014 09D0     		beq	.L77
ARM GAS  /tmp/ccFB80Ed.s 			page 5


 229              	.L72:
 230 0016 0022     		movs	r2, #0
 231 0018 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 232 001a 1146     		mov	r1, r2
 233 001c FFF7FEFF 		bl	disk_ioctl
 234 0020 0030     		adds	r0, r0, #0
 235 0022 18BF     		it	ne
 236 0024 0120     		movne	r0, #1
 237              	.L71:
 238 0026 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 239              	.L77:
 240 002a 6379     		ldrb	r3, [r4, #5]	@ zero_extendqisi2
 241 002c 002B     		cmp	r3, #0
 242 002e F2D0     		beq	.L72
 243 0030 04F13006 		add	r6, r4, #48
 244 0034 E062     		str	r0, [r4, #44]
 245 0036 4FF40072 		mov	r2, #512
 246 003a 3046     		mov	r0, r6
 247 003c 2946     		mov	r1, r5
 248 003e FFF7FEFF 		bl	memset
 249 0042 4127     		movs	r7, #65
 250 0044 4FF0520C 		mov	ip, #82
 251 0048 4FF0610E 		mov	lr, #97
 252 004c 7220     		movs	r0, #114
 253 004e 4FF05509 		mov	r9, #85
 254 0052 4FF0AA08 		mov	r8, #170
 255 0056 2369     		ldr	r3, [r4, #16]
 256 0058 3146     		mov	r1, r6
 257 005a C3F30722 		ubfx	r2, r3, #8, #8
 258 005e 84F81832 		strb	r3, [r4, #536]
 259 0062 84F81922 		strb	r2, [r4, #537]
 260 0066 1E0C     		lsrs	r6, r3, #16
 261 0068 1A0E     		lsrs	r2, r3, #24
 262 006a E368     		ldr	r3, [r4, #12]
 263 006c 84F81B22 		strb	r2, [r4, #539]
 264 0070 C3F30722 		ubfx	r2, r3, #8, #8
 265 0074 84F81C32 		strb	r3, [r4, #540]
 266 0078 84F81D22 		strb	r2, [r4, #541]
 267 007c 1A0C     		lsrs	r2, r3, #16
 268 007e 1B0E     		lsrs	r3, r3, #24
 269 0080 84F81E22 		strb	r2, [r4, #542]
 270 0084 84F81F32 		strb	r3, [r4, #543]
 271 0088 84F81402 		strb	r0, [r4, #532]
 272 008c 84F81502 		strb	r0, [r4, #533]
 273 0090 84F81A62 		strb	r6, [r4, #538]
 274 0094 84F82E92 		strb	r9, [r4, #558]
 275 0098 84F82F82 		strb	r8, [r4, #559]
 276 009c 84F830C0 		strb	ip, [r4, #48]
 277 00a0 84F831C0 		strb	ip, [r4, #49]
 278 00a4 84F832E0 		strb	lr, [r4, #50]
 279 00a8 84F817E2 		strb	lr, [r4, #535]
 280 00ac 84F83370 		strb	r7, [r4, #51]
 281 00b0 84F81672 		strb	r7, [r4, #534]
 282 00b4 0123     		movs	r3, #1
 283 00b6 6269     		ldr	r2, [r4, #20]
 284 00b8 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 285 00ba FFF7FEFF 		bl	disk_write
ARM GAS  /tmp/ccFB80Ed.s 			page 6


 286 00be 6571     		strb	r5, [r4, #5]
 287 00c0 A9E7     		b	.L72
 288              		.size	sync, .-sync
 289 00c2 00BF     		.section	.text.validate.part.1,"ax",%progbits
 290              		.align	1
 291              		.p2align 2,,3
 292              		.syntax unified
 293              		.thumb
 294              		.thumb_func
 295              		.fpu softvfp
 296              		.type	validate.part.1, %function
 297              	validate.part.1:
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300 0000 08B5     		push	{r3, lr}
 301 0002 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 302 0004 FFF7FEFF 		bl	disk_status
 303 0008 10F0010F 		tst	r0, #1
 304 000c 14BF     		ite	ne
 305 000e 0320     		movne	r0, #3
 306 0010 0020     		moveq	r0, #0
 307 0012 08BD     		pop	{r3, pc}
 308              		.size	validate.part.1, .-validate.part.1
 309              		.section	.text.check_fs,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.syntax unified
 313              		.thumb
 314              		.thumb_func
 315              		.fpu softvfp
 316              		.type	check_fs, %function
 317              	check_fs:
 318              		@ args = 0, pretend = 0, frame = 0
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320 0000 10B5     		push	{r4, lr}
 321 0002 0446     		mov	r4, r0
 322 0004 0A46     		mov	r2, r1
 323 0006 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 324 0008 04F13001 		add	r1, r4, #48
 325 000c 0123     		movs	r3, #1
 326 000e FFF7FEFF 		bl	disk_read
 327 0012 08B1     		cbz	r0, .L88
 328 0014 0320     		movs	r0, #3
 329 0016 10BD     		pop	{r4, pc}
 330              	.L88:
 331 0018 4AF65522 		movw	r2, #43605
 332 001c 94F82F12 		ldrb	r1, [r4, #559]	@ zero_extendqisi2
 333 0020 94F82E32 		ldrb	r3, [r4, #558]	@ zero_extendqisi2
 334 0024 43EA0123 		orr	r3, r3, r1, lsl #8
 335 0028 9342     		cmp	r3, r2
 336 002a 01D0     		beq	.L89
 337 002c 0220     		movs	r0, #2
 338              	.L83:
 339 002e 10BD     		pop	{r4, pc}
 340              	.L89:
 341 0030 D4F86630 		ldr	r3, [r4, #102]	@ unaligned
 342 0034 064A     		ldr	r2, .L90
ARM GAS  /tmp/ccFB80Ed.s 			page 7


 343 0036 23F07F43 		bic	r3, r3, #-16777216
 344 003a 9342     		cmp	r3, r2
 345 003c F7D0     		beq	.L83
 346 003e D4F88200 		ldr	r0, [r4, #130]	@ unaligned
 347 0042 20F07F40 		bic	r0, r0, #-16777216
 348 0046 801A     		subs	r0, r0, r2
 349 0048 18BF     		it	ne
 350 004a 0120     		movne	r0, #1
 351 004c 10BD     		pop	{r4, pc}
 352              	.L91:
 353 004e 00BF     		.align	2
 354              	.L90:
 355 0050 46415400 		.word	5521734
 356              		.size	check_fs, .-check_fs
 357              		.section	.text.chk_mounted,"ax",%progbits
 358              		.align	1
 359              		.p2align 2,,3
 360              		.syntax unified
 361              		.thumb
 362              		.thumb_func
 363              		.fpu softvfp
 364              		.type	chk_mounted, %function
 365              	chk_mounted:
 366              		@ args = 0, pretend = 0, frame = 0
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 369 0002 0368     		ldr	r3, [r0]
 370 0004 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 371 0006 303C     		subs	r4, r4, #48
 372 0008 092C     		cmp	r4, #9
 373 000a 02D8     		bhi	.L116
 374 000c 5D78     		ldrb	r5, [r3, #1]	@ zero_extendqisi2
 375 000e 3A2D     		cmp	r5, #58
 376 0010 13D0     		beq	.L164
 377              	.L116:
 378 0012 0024     		movs	r4, #0
 379              	.L93:
 380 0014 8D4B     		ldr	r3, .L170
 381 0016 53F82460 		ldr	r6, [r3, r4, lsl #2]
 382 001a 0E60     		str	r6, [r1]
 383 001c EEB1     		cbz	r6, .L118
 384 001e 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 385 0020 1546     		mov	r5, r2
 386 0022 83B1     		cbz	r3, .L95
 387 0024 7078     		ldrb	r0, [r6, #1]	@ zero_extendqisi2
 388 0026 FFF7FEFF 		bl	disk_status
 389 002a C707     		lsls	r7, r0, #31
 390 002c 0BD4     		bmi	.L95
 391 002e 3DB3     		cbz	r5, .L119
 392 0030 10F00400 		ands	r0, r0, #4
 393 0034 13D0     		beq	.L148
 394              	.L97:
 395 0036 0A20     		movs	r0, #10
 396 0038 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 397              	.L164:
 398 003a 0233     		adds	r3, r3, #2
 399 003c 012C     		cmp	r4, #1
ARM GAS  /tmp/ccFB80Ed.s 			page 8


 400 003e 0360     		str	r3, [r0]
 401 0040 E8D9     		bls	.L93
 402 0042 0B20     		movs	r0, #11
 403 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 404              	.L95:
 405 0046 0023     		movs	r3, #0
 406 0048 E0B2     		uxtb	r0, r4
 407 004a 7070     		strb	r0, [r6, #1]
 408 004c 3370     		strb	r3, [r6]
 409 004e FFF7FEFF 		bl	disk_initialize
 410 0052 C107     		lsls	r1, r0, #31
 411 0054 04D5     		bpl	.L165
 412 0056 0320     		movs	r0, #3
 413 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 414              	.L118:
 415 005a 0C20     		movs	r0, #12
 416 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 417              	.L148:
 418 005e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 419              	.L165:
 420 0060 0DB1     		cbz	r5, .L96
 421 0062 4207     		lsls	r2, r0, #29
 422 0064 E7D4     		bmi	.L97
 423              	.L96:
 424 0066 0021     		movs	r1, #0
 425 0068 3046     		mov	r0, r6
 426 006a FFF7FEFF 		bl	check_fs
 427 006e 0128     		cmp	r0, #1
 428 0070 08D0     		beq	.L166
 429 0072 0024     		movs	r4, #0
 430              	.L98:
 431 0074 0328     		cmp	r0, #3
 432 0076 00F09B80 		beq	.L123
 433 007a 70B1     		cbz	r0, .L167
 434              	.L100:
 435 007c 0D20     		movs	r0, #13
 436 007e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 437              	.L119:
 438 0080 2846     		mov	r0, r5
 439 0082 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 440              	.L166:
 441 0084 96F8F231 		ldrb	r3, [r6, #498]	@ zero_extendqisi2
 442 0088 002B     		cmp	r3, #0
 443 008a F7D0     		beq	.L100
 444 008c D6F8F641 		ldr	r4, [r6, #502]	@ unaligned
 445 0090 3046     		mov	r0, r6
 446 0092 2146     		mov	r1, r4
 447 0094 FFF7FEFF 		bl	check_fs
 448 0098 ECE7     		b	.L98
 449              	.L167:
 450 009a 96F83C20 		ldrb	r2, [r6, #60]	@ zero_extendqisi2
 451 009e 96F83B30 		ldrb	r3, [r6, #59]	@ zero_extendqisi2
 452 00a2 43EA0223 		orr	r3, r3, r2, lsl #8
 453 00a6 B3F5007F 		cmp	r3, #512
 454 00aa E7D1     		bne	.L100
 455 00ac 96F84720 		ldrb	r2, [r6, #71]	@ zero_extendqisi2
 456 00b0 96F84630 		ldrb	r3, [r6, #70]	@ zero_extendqisi2
ARM GAS  /tmp/ccFB80Ed.s 			page 9


 457 00b4 96F84000 		ldrb	r0, [r6, #64]	@ zero_extendqisi2
 458 00b8 53EA0223 		orrs	r3, r3, r2, lsl #8
 459 00bc 14BF     		ite	ne
 460 00be 1A46     		movne	r2, r3
 461 00c0 726D     		ldreq	r2, [r6, #84]
 462 00c2 431E     		subs	r3, r0, #1
 463 00c4 012B     		cmp	r3, #1
 464 00c6 F261     		str	r2, [r6, #28]
 465 00c8 F070     		strb	r0, [r6, #3]
 466 00ca D7D8     		bhi	.L100
 467 00cc 96F83DE0 		ldrb	lr, [r6, #61]	@ zero_extendqisi2
 468 00d0 86F802E0 		strb	lr, [r6, #2]
 469 00d4 BEF1000F 		cmp	lr, #0
 470 00d8 D0D0     		beq	.L100
 471 00da 0EF1FF33 		add	r3, lr, #-1
 472 00de 13EA0E0F 		tst	r3, lr
 473 00e2 CBD1     		bne	.L100
 474 00e4 96F84230 		ldrb	r3, [r6, #66]	@ zero_extendqisi2
 475 00e8 96F84110 		ldrb	r1, [r6, #65]	@ zero_extendqisi2
 476 00ec 41EA0321 		orr	r1, r1, r3, lsl #8
 477 00f0 0B07     		lsls	r3, r1, #28
 478 00f2 3181     		strh	r1, [r6, #8]	@ movhi
 479 00f4 C2D1     		bne	.L100
 480 00f6 96F84450 		ldrb	r5, [r6, #68]	@ zero_extendqisi2
 481 00fa 96F84330 		ldrb	r3, [r6, #67]	@ zero_extendqisi2
 482 00fe 96F83F70 		ldrb	r7, [r6, #63]	@ zero_extendqisi2
 483 0102 53EA0523 		orrs	r3, r3, r5, lsl #8
 484 0106 96F83E50 		ldrb	r5, [r6, #62]	@ zero_extendqisi2
 485 010a 08BF     		it	eq
 486 010c 336D     		ldreq	r3, [r6, #80]
 487 010e 55EA0725 		orrs	r5, r5, r7, lsl #8
 488 0112 B3D0     		beq	.L100
 489 0114 02FB00F0 		mul	r0, r2, r0
 490 0118 05EB1117 		add	r7, r5, r1, lsr #4
 491 011c 0744     		add	r7, r7, r0
 492 011e BB42     		cmp	r3, r7
 493 0120 ACD3     		bcc	.L100
 494 0122 DB1B     		subs	r3, r3, r7
 495 0124 B3FBFEF3 		udiv	r3, r3, lr
 496 0128 002B     		cmp	r3, #0
 497 012a A7D0     		beq	.L100
 498 012c 40F6F57E 		movw	lr, #4085
 499 0130 7345     		cmp	r3, lr
 500 0132 6DD9     		bls	.L104
 501 0134 4FF6F57E 		movw	lr, #65525
 502 0138 7345     		cmp	r3, lr
 503 013a 50D9     		bls	.L168
 504 013c 0233     		adds	r3, r3, #2
 505 013e 2744     		add	r7, r7, r4
 506 0140 2544     		add	r5, r5, r4
 507 0142 B361     		str	r3, [r6, #24]
 508 0144 B762     		str	r7, [r6, #40]
 509 0146 3562     		str	r5, [r6, #32]
 510 0148 0029     		cmp	r1, #0
 511 014a 97D1     		bne	.L100
 512 014c 9B00     		lsls	r3, r3, #2
 513 014e F06D     		ldr	r0, [r6, #92]
ARM GAS  /tmp/ccFB80Ed.s 			page 10


 514 0150 03F2FF13 		addw	r3, r3, #511
 515 0154 B2EB532F 		cmp	r2, r3, lsr #9
 516 0158 7062     		str	r0, [r6, #36]
 517 015a 8FD3     		bcc	.L100
 518 015c 4FF0FF33 		mov	r3, #-1
 519 0160 96F86100 		ldrb	r0, [r6, #97]	@ zero_extendqisi2
 520 0164 96F86020 		ldrb	r2, [r6, #96]	@ zero_extendqisi2
 521 0168 F160     		str	r1, [r6, #12]
 522 016a 42EA0022 		orr	r2, r2, r0, lsl #8
 523 016e 2244     		add	r2, r2, r4
 524 0170 7171     		strb	r1, [r6, #5]
 525 0172 3361     		str	r3, [r6, #16]
 526 0174 7261     		str	r2, [r6, #20]
 527 0176 0123     		movs	r3, #1
 528 0178 06F13001 		add	r1, r6, #48
 529 017c 7078     		ldrb	r0, [r6, #1]	@ zero_extendqisi2
 530 017e FFF7FEFF 		bl	disk_read
 531 0182 48B9     		cbnz	r0, .L126
 532 0184 4AF65522 		movw	r2, #43605
 533 0188 96F82F12 		ldrb	r1, [r6, #559]	@ zero_extendqisi2
 534 018c 96F82E32 		ldrb	r3, [r6, #558]	@ zero_extendqisi2
 535 0190 43EA0123 		orr	r3, r3, r1, lsl #8
 536 0194 9342     		cmp	r3, r2
 537 0196 0DD0     		beq	.L169
 538              	.L126:
 539 0198 0323     		movs	r3, #3
 540              	.L108:
 541 019a 0020     		movs	r0, #0
 542 019c 2C4A     		ldr	r2, .L170+4
 543 019e 3370     		strb	r3, [r6]
 544 01a0 1388     		ldrh	r3, [r2]
 545 01a2 3071     		strb	r0, [r6, #4]
 546 01a4 0133     		adds	r3, r3, #1
 547 01a6 9BB2     		uxth	r3, r3
 548 01a8 F062     		str	r0, [r6, #44]
 549 01aa 1380     		strh	r3, [r2]	@ movhi
 550 01ac F380     		strh	r3, [r6, #6]	@ movhi
 551 01ae F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 552              	.L123:
 553 01b0 0120     		movs	r0, #1
 554 01b2 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 555              	.L169:
 556 01b4 274B     		ldr	r3, .L170+8
 557 01b6 326B     		ldr	r2, [r6, #48]
 558 01b8 9A42     		cmp	r2, r3
 559 01ba EDD1     		bne	.L126
 560 01bc 03F1FF53 		add	r3, r3, #534773760
 561 01c0 03F50053 		add	r3, r3, #8192
 562 01c4 D6F81422 		ldr	r2, [r6, #532]
 563 01c8 2033     		adds	r3, r3, #32
 564 01ca 9A42     		cmp	r2, r3
 565 01cc E4D1     		bne	.L126
 566 01ce D6F81832 		ldr	r3, [r6, #536]
 567 01d2 D6F81C22 		ldr	r2, [r6, #540]
 568 01d6 3361     		str	r3, [r6, #16]
 569 01d8 F260     		str	r2, [r6, #12]
 570 01da 0323     		movs	r3, #3
ARM GAS  /tmp/ccFB80Ed.s 			page 11


 571 01dc DDE7     		b	.L108
 572              	.L168:
 573 01de 2744     		add	r7, r7, r4
 574 01e0 0233     		adds	r3, r3, #2
 575 01e2 2C44     		add	r4, r4, r5
 576 01e4 B361     		str	r3, [r6, #24]
 577 01e6 B762     		str	r7, [r6, #40]
 578 01e8 3462     		str	r4, [r6, #32]
 579 01ea 0029     		cmp	r1, #0
 580 01ec 3FF446AF 		beq	.L100
 581 01f0 5B00     		lsls	r3, r3, #1
 582 01f2 03F2FF13 		addw	r3, r3, #511
 583 01f6 0444     		add	r4, r4, r0
 584 01f8 B2EB532F 		cmp	r2, r3, lsr #9
 585 01fc 7462     		str	r4, [r6, #36]
 586 01fe FFF43DAF 		bcc	.L100
 587 0202 0023     		movs	r3, #0
 588 0204 4FF0FF32 		mov	r2, #-1
 589 0208 F360     		str	r3, [r6, #12]
 590 020a 3261     		str	r2, [r6, #16]
 591 020c 0223     		movs	r3, #2
 592 020e C4E7     		b	.L108
 593              	.L104:
 594 0210 2744     		add	r7, r7, r4
 595 0212 0233     		adds	r3, r3, #2
 596 0214 2C44     		add	r4, r4, r5
 597 0216 B361     		str	r3, [r6, #24]
 598 0218 B762     		str	r7, [r6, #40]
 599 021a 3462     		str	r4, [r6, #32]
 600 021c 0029     		cmp	r1, #0
 601 021e 3FF42DAF 		beq	.L100
 602 0222 03F00101 		and	r1, r3, #1
 603 0226 01F2FF11 		addw	r1, r1, #511
 604 022a 03EB4303 		add	r3, r3, r3, lsl #1
 605 022e 01EB5303 		add	r3, r1, r3, lsr #1
 606 0232 0444     		add	r4, r4, r0
 607 0234 B2EB532F 		cmp	r2, r3, lsr #9
 608 0238 7462     		str	r4, [r6, #36]
 609 023a FFF41FAF 		bcc	.L100
 610 023e 0023     		movs	r3, #0
 611 0240 4FF0FF32 		mov	r2, #-1
 612 0244 F360     		str	r3, [r6, #12]
 613 0246 3261     		str	r2, [r6, #16]
 614 0248 0123     		movs	r3, #1
 615 024a A6E7     		b	.L108
 616              	.L171:
 617              		.align	2
 618              	.L170:
 619 024c 00000000 		.word	.LANCHOR0
 620 0250 00000000 		.word	.LANCHOR1
 621 0254 52526141 		.word	1096897106
 622              		.size	chk_mounted, .-chk_mounted
 623              		.section	.text.get_fat.part.4,"ax",%progbits
 624              		.align	1
 625              		.p2align 2,,3
 626              		.syntax unified
 627              		.thumb
ARM GAS  /tmp/ccFB80Ed.s 			page 12


 628              		.thumb_func
 629              		.fpu softvfp
 630              		.type	get_fat.part.4, %function
 631              	get_fat.part.4:
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 634 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 635 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 636 0004 0446     		mov	r4, r0
 637 0006 022B     		cmp	r3, #2
 638 0008 0D46     		mov	r5, r1
 639 000a 46D0     		beq	.L174
 640 000c 032B     		cmp	r3, #3
 641 000e 28D0     		beq	.L175
 642 0010 012B     		cmp	r3, #1
 643 0012 02D0     		beq	.L183
 644              	.L181:
 645 0014 4FF0FF30 		mov	r0, #-1
 646 0018 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 647              	.L183:
 648 001a 016A     		ldr	r1, [r0, #32]
 649 001c 05EB5507 		add	r7, r5, r5, lsr #1
 650 0020 01EB5721 		add	r1, r1, r7, lsr #9
 651 0024 FFF7FEFF 		bl	move_window
 652 0028 0028     		cmp	r0, #0
 653 002a F3D1     		bne	.L181
 654 002c 216A     		ldr	r1, [r4, #32]
 655 002e C7F30803 		ubfx	r3, r7, #0, #9
 656 0032 0137     		adds	r7, r7, #1
 657 0034 2344     		add	r3, r3, r4
 658 0036 01EB5721 		add	r1, r1, r7, lsr #9
 659 003a 2046     		mov	r0, r4
 660 003c 93F83060 		ldrb	r6, [r3, #48]	@ zero_extendqisi2
 661 0040 FFF7FEFF 		bl	move_window
 662 0044 0028     		cmp	r0, #0
 663 0046 E5D1     		bne	.L181
 664 0048 C7F30807 		ubfx	r7, r7, #0, #9
 665 004c 3C44     		add	r4, r4, r7
 666 004e 94F83000 		ldrb	r0, [r4, #48]	@ zero_extendqisi2
 667 0052 EB07     		lsls	r3, r5, #31
 668 0054 46EA0020 		orr	r0, r6, r0, lsl #8
 669 0058 4CBF     		ite	mi
 670 005a 0009     		lsrmi	r0, r0, #4
 671 005c C0F30B00 		ubfxpl	r0, r0, #0, #12
 672 0060 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 673              	.L175:
 674 0062 016A     		ldr	r1, [r0, #32]
 675 0064 01EBD511 		add	r1, r1, r5, lsr #7
 676 0068 FFF7FEFF 		bl	move_window
 677 006c 0028     		cmp	r0, #0
 678 006e D1D1     		bne	.L181
 679 0070 AD00     		lsls	r5, r5, #2
 680 0072 05F4FE75 		and	r5, r5, #508
 681 0076 05F13003 		add	r3, r5, #48
 682 007a 2344     		add	r3, r3, r4
 683 007c 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
 684 007e D978     		ldrb	r1, [r3, #3]	@ zero_extendqisi2
ARM GAS  /tmp/ccFB80Ed.s 			page 13


 685 0080 2C44     		add	r4, r4, r5
 686 0082 94F83020 		ldrb	r2, [r4, #48]	@ zero_extendqisi2
 687 0086 0004     		lsls	r0, r0, #16
 688 0088 40EA0160 		orr	r0, r0, r1, lsl #24
 689 008c 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 690 008e 1043     		orrs	r0, r0, r2
 691 0090 40EA0320 		orr	r0, r0, r3, lsl #8
 692 0094 20F07040 		bic	r0, r0, #-268435456
 693 0098 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 694              	.L174:
 695 009a 016A     		ldr	r1, [r0, #32]
 696 009c 01EB1521 		add	r1, r1, r5, lsr #8
 697 00a0 FFF7FEFF 		bl	move_window
 698 00a4 0028     		cmp	r0, #0
 699 00a6 B5D1     		bne	.L181
 700 00a8 6D00     		lsls	r5, r5, #1
 701 00aa 05F4FF75 		and	r5, r5, #510
 702 00ae 2C44     		add	r4, r4, r5
 703 00b0 94F83130 		ldrb	r3, [r4, #49]	@ zero_extendqisi2
 704 00b4 94F83000 		ldrb	r0, [r4, #48]	@ zero_extendqisi2
 705 00b8 40EA0320 		orr	r0, r0, r3, lsl #8
 706 00bc F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 707              		.size	get_fat.part.4, .-get_fat.part.4
 708 00be 00BF     		.section	.text.dir_sdi,"ax",%progbits
 709              		.align	1
 710              		.p2align 2,,3
 711              		.syntax unified
 712              		.thumb
 713              		.thumb_func
 714              		.fpu softvfp
 715              		.type	dir_sdi, %function
 716              	dir_sdi:
 717              		@ args = 0, pretend = 0, frame = 0
 718              		@ frame_needed = 0, uses_anonymous_args = 0
 719 0000 70B5     		push	{r4, r5, r6, lr}
 720 0002 0D46     		mov	r5, r1
 721 0004 8168     		ldr	r1, [r0, #8]
 722 0006 C580     		strh	r5, [r0, #6]	@ movhi
 723 0008 0129     		cmp	r1, #1
 724 000a 04D0     		beq	.L187
 725 000c 0446     		mov	r4, r0
 726 000e 0068     		ldr	r0, [r0]
 727 0010 8369     		ldr	r3, [r0, #24]
 728 0012 9942     		cmp	r1, r3
 729 0014 01D3     		bcc	.L199
 730              	.L187:
 731 0016 0220     		movs	r0, #2
 732 0018 70BD     		pop	{r4, r5, r6, pc}
 733              	.L199:
 734 001a B1B9     		cbnz	r1, .L188
 735 001c 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 736 001e 032A     		cmp	r2, #3
 737 0020 10D0     		beq	.L200
 738              	.L189:
 739 0022 0022     		movs	r2, #0
 740 0024 0389     		ldrh	r3, [r0, #8]
 741 0026 E260     		str	r2, [r4, #12]
ARM GAS  /tmp/ccFB80Ed.s 			page 14


 742 0028 AB42     		cmp	r3, r5
 743 002a F4D9     		bls	.L187
 744 002c 436A     		ldr	r3, [r0, #36]
 745 002e 03EB1513 		add	r3, r3, r5, lsr #4
 746 0032 2361     		str	r3, [r4, #16]
 747              	.L190:
 748 0034 05F00F05 		and	r5, r5, #15
 749 0038 3030     		adds	r0, r0, #48
 750 003a 00EB4510 		add	r0, r0, r5, lsl #5
 751 003e 6061     		str	r0, [r4, #20]
 752 0040 0020     		movs	r0, #0
 753 0042 70BD     		pop	{r4, r5, r6, pc}
 754              	.L200:
 755 0044 416A     		ldr	r1, [r0, #36]
 756 0046 0029     		cmp	r1, #0
 757 0048 EBD0     		beq	.L189
 758              	.L188:
 759 004a 8678     		ldrb	r6, [r0, #2]	@ zero_extendqisi2
 760 004c 3601     		lsls	r6, r6, #4
 761 004e B542     		cmp	r5, r6
 762 0050 0FD2     		bcs	.L192
 763 0052 15E0     		b	.L191
 764              	.L201:
 765 0054 FFF7FEFF 		bl	get_fat.part.4
 766 0058 AD1B     		subs	r5, r5, r6
 767 005a 431C     		adds	r3, r0, #1
 768 005c 0146     		mov	r1, r0
 769 005e ADB2     		uxth	r5, r5
 770 0060 1DD0     		beq	.L194
 771 0062 0128     		cmp	r0, #1
 772 0064 D7D9     		bls	.L187
 773 0066 2068     		ldr	r0, [r4]
 774 0068 8369     		ldr	r3, [r0, #24]
 775 006a 8B42     		cmp	r3, r1
 776 006c D3D9     		bls	.L187
 777 006e AE42     		cmp	r6, r5
 778 0070 06D8     		bhi	.L191
 779              	.L192:
 780 0072 0129     		cmp	r1, #1
 781 0074 CFD9     		bls	.L187
 782 0076 8369     		ldr	r3, [r0, #24]
 783 0078 8B42     		cmp	r3, r1
 784 007a EBD8     		bhi	.L201
 785 007c 0220     		movs	r0, #2
 786 007e 70BD     		pop	{r4, r5, r6, pc}
 787              	.L191:
 788 0080 023B     		subs	r3, r3, #2
 789 0082 8A1E     		subs	r2, r1, #2
 790 0084 9A42     		cmp	r2, r3
 791 0086 28BF     		it	cs
 792 0088 0023     		movcs	r3, #0
 793 008a E160     		str	r1, [r4, #12]
 794 008c 3EBF     		ittt	cc
 795 008e 8378     		ldrbcc	r3, [r0, #2]	@ zero_extendqisi2
 796 0090 816A     		ldrcc	r1, [r0, #40]
 797 0092 02FB0313 		mlacc	r3, r2, r3, r1
 798 0096 03EB1513 		add	r3, r3, r5, lsr #4
ARM GAS  /tmp/ccFB80Ed.s 			page 15


 799 009a 2361     		str	r3, [r4, #16]
 800 009c CAE7     		b	.L190
 801              	.L194:
 802 009e 0120     		movs	r0, #1
 803 00a0 70BD     		pop	{r4, r5, r6, pc}
 804              		.size	dir_sdi, .-dir_sdi
 805 00a2 00BF     		.section	.text.put_fat.part.5,"ax",%progbits
 806              		.align	1
 807              		.p2align 2,,3
 808              		.syntax unified
 809              		.thumb
 810              		.thumb_func
 811              		.fpu softvfp
 812              		.type	put_fat.part.5, %function
 813              	put_fat.part.5:
 814              		@ args = 0, pretend = 0, frame = 0
 815              		@ frame_needed = 0, uses_anonymous_args = 0
 816 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 817 0004 90F80090 		ldrb	r9, [r0]	@ zero_extendqisi2
 818 0008 0446     		mov	r4, r0
 819 000a B9F1020F 		cmp	r9, #2
 820 000e 0D46     		mov	r5, r1
 821 0010 1746     		mov	r7, r2
 822 0012 52D0     		beq	.L204
 823 0014 B9F1030F 		cmp	r9, #3
 824 0018 2DD0     		beq	.L205
 825 001a B9F1010F 		cmp	r9, #1
 826 001e 05D0     		beq	.L221
 827 0020 0226     		movs	r6, #2
 828              	.L203:
 829 0022 0123     		movs	r3, #1
 830 0024 2371     		strb	r3, [r4, #4]
 831 0026 3046     		mov	r0, r6
 832 0028 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 833              	.L221:
 834 002c 016A     		ldr	r1, [r0, #32]
 835 002e 05EB5508 		add	r8, r5, r5, lsr #1
 836 0032 01EB5821 		add	r1, r1, r8, lsr #9
 837 0036 FFF7FEFF 		bl	move_window
 838 003a 0646     		mov	r6, r0
 839 003c 0028     		cmp	r0, #0
 840 003e F0D1     		bne	.L203
 841 0040 C8F30803 		ubfx	r3, r8, #0, #9
 842 0044 EA07     		lsls	r2, r5, #31
 843 0046 2344     		add	r3, r3, r4
 844 0048 4ED5     		bpl	.L207
 845 004a 93F83020 		ldrb	r2, [r3, #48]	@ zero_extendqisi2
 846 004e 08F10108 		add	r8, r8, #1
 847 0052 02F00F02 		and	r2, r2, #15
 848 0056 42EA0712 		orr	r2, r2, r7, lsl #4
 849 005a 83F83020 		strb	r2, [r3, #48]
 850 005e 216A     		ldr	r1, [r4, #32]
 851 0060 84F80490 		strb	r9, [r4, #4]
 852 0064 01EB5821 		add	r1, r1, r8, lsr #9
 853 0068 2046     		mov	r0, r4
 854 006a FFF7FEFF 		bl	move_window
 855 006e 0028     		cmp	r0, #0
ARM GAS  /tmp/ccFB80Ed.s 			page 16


 856 0070 55D0     		beq	.L222
 857              	.L213:
 858 0072 0646     		mov	r6, r0
 859 0074 D5E7     		b	.L203
 860              	.L205:
 861 0076 016A     		ldr	r1, [r0, #32]
 862 0078 01EBD511 		add	r1, r1, r5, lsr #7
 863 007c FFF7FEFF 		bl	move_window
 864 0080 0646     		mov	r6, r0
 865 0082 0028     		cmp	r0, #0
 866 0084 CDD1     		bne	.L203
 867 0086 AD00     		lsls	r5, r5, #2
 868 0088 05F4FE75 		and	r5, r5, #508
 869 008c 05F13003 		add	r3, r5, #48
 870 0090 2344     		add	r3, r3, r4
 871 0092 DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
 872 0094 2544     		add	r5, r5, r4
 873 0096 1206     		lsls	r2, r2, #24
 874 0098 02F07042 		and	r2, r2, #-268435456
 875 009c 1743     		orrs	r7, r7, r2
 876 009e C7F30720 		ubfx	r0, r7, #8, #8
 877 00a2 390C     		lsrs	r1, r7, #16
 878 00a4 3A0E     		lsrs	r2, r7, #24
 879 00a6 85F83070 		strb	r7, [r5, #48]
 880 00aa 5870     		strb	r0, [r3, #1]
 881 00ac 9970     		strb	r1, [r3, #2]
 882 00ae DA70     		strb	r2, [r3, #3]
 883 00b0 0123     		movs	r3, #1
 884 00b2 2371     		strb	r3, [r4, #4]
 885 00b4 3046     		mov	r0, r6
 886 00b6 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 887              	.L204:
 888 00ba 016A     		ldr	r1, [r0, #32]
 889 00bc 01EB1521 		add	r1, r1, r5, lsr #8
 890 00c0 FFF7FEFF 		bl	move_window
 891 00c4 0646     		mov	r6, r0
 892 00c6 0028     		cmp	r0, #0
 893 00c8 ABD1     		bne	.L203
 894 00ca 6D00     		lsls	r5, r5, #1
 895 00cc 05F4FF75 		and	r5, r5, #510
 896 00d0 2544     		add	r5, r5, r4
 897 00d2 C7F30723 		ubfx	r3, r7, #8, #8
 898 00d6 85F83130 		strb	r3, [r5, #49]
 899 00da 0123     		movs	r3, #1
 900 00dc 85F83070 		strb	r7, [r5, #48]
 901 00e0 2371     		strb	r3, [r4, #4]
 902 00e2 3046     		mov	r0, r6
 903 00e4 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 904              	.L207:
 905 00e8 83F83070 		strb	r7, [r3, #48]
 906 00ec 216A     		ldr	r1, [r4, #32]
 907 00ee 08F10108 		add	r8, r8, #1
 908 00f2 84F80490 		strb	r9, [r4, #4]
 909 00f6 01EB5821 		add	r1, r1, r8, lsr #9
 910 00fa 2046     		mov	r0, r4
 911 00fc FFF7FEFF 		bl	move_window
 912 0100 0028     		cmp	r0, #0
ARM GAS  /tmp/ccFB80Ed.s 			page 17


 913 0102 B6D1     		bne	.L213
 914 0104 C8F30808 		ubfx	r8, r8, #0, #9
 915 0108 A044     		add	r8, r8, r4
 916 010a 98F83020 		ldrb	r2, [r8, #48]	@ zero_extendqisi2
 917 010e C7F30327 		ubfx	r7, r7, #8, #4
 918 0112 22F00F02 		bic	r2, r2, #15
 919 0116 1743     		orrs	r7, r7, r2
 920              	.L210:
 921 0118 88F83070 		strb	r7, [r8, #48]
 922 011c 81E7     		b	.L203
 923              	.L222:
 924 011e C8F30808 		ubfx	r8, r8, #0, #9
 925 0122 A044     		add	r8, r8, r4
 926 0124 C7F30717 		ubfx	r7, r7, #4, #8
 927 0128 F6E7     		b	.L210
 928              		.size	put_fat.part.5, .-put_fat.part.5
 929 012a 00BF     		.section	.text.create_chain,"ax",%progbits
 930              		.align	1
 931              		.p2align 2,,3
 932              		.syntax unified
 933              		.thumb
 934              		.thumb_func
 935              		.fpu softvfp
 936              		.type	create_chain, %function
 937              	create_chain:
 938              		@ args = 0, pretend = 0, frame = 0
 939              		@ frame_needed = 0, uses_anonymous_args = 0
 940 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 941 0002 0546     		mov	r5, r0
 942 0004 0F46     		mov	r7, r1
 943 0006 F1B9     		cbnz	r1, .L224
 944 0008 C668     		ldr	r6, [r0, #12]
 945 000a 8369     		ldr	r3, [r0, #24]
 946 000c 56BB     		cbnz	r6, .L225
 947 000e 0126     		movs	r6, #1
 948              	.L226:
 949 0010 3446     		mov	r4, r6
 950 0012 10E0     		b	.L234
 951              	.L252:
 952 0014 012E     		cmp	r6, #1
 953 0016 29D9     		bls	.L233
 954 0018 022B     		cmp	r3, #2
 955 001a 11D9     		bls	.L227
 956 001c 0224     		movs	r4, #2
 957              	.L241:
 958 001e 2146     		mov	r1, r4
 959 0020 2846     		mov	r0, r5
 960 0022 FFF7FEFF 		bl	get_fat.part.4
 961 0026 20B3     		cbz	r0, .L231
 962 0028 411C     		adds	r1, r0, #1
 963 002a 43D0     		beq	.L240
 964 002c 0128     		cmp	r0, #1
 965 002e 07D0     		beq	.L227
 966 0030 A642     		cmp	r6, r4
 967 0032 1BD0     		beq	.L233
 968 0034 AB69     		ldr	r3, [r5, #24]
 969              	.L234:
ARM GAS  /tmp/ccFB80Ed.s 			page 18


 970 0036 0134     		adds	r4, r4, #1
 971 0038 9C42     		cmp	r4, r3
 972 003a EBD2     		bcs	.L252
 973 003c 012C     		cmp	r4, #1
 974 003e EED8     		bhi	.L241
 975              	.L227:
 976 0040 0124     		movs	r4, #1
 977              	.L223:
 978 0042 2046     		mov	r0, r4
 979 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 980              	.L224:
 981 0046 0129     		cmp	r1, #1
 982 0048 FAD9     		bls	.L227
 983 004a 8369     		ldr	r3, [r0, #24]
 984 004c 9942     		cmp	r1, r3
 985 004e F7D2     		bcs	.L227
 986 0050 FFF7FEFF 		bl	get_fat.part.4
 987 0054 0128     		cmp	r0, #1
 988 0056 0446     		mov	r4, r0
 989 0058 F2D9     		bls	.L227
 990 005a AB69     		ldr	r3, [r5, #24]
 991 005c 8342     		cmp	r3, r0
 992 005e F0D8     		bhi	.L223
 993 0060 3E46     		mov	r6, r7
 994 0062 D5E7     		b	.L226
 995              	.L225:
 996 0064 9E42     		cmp	r6, r3
 997 0066 28BF     		it	cs
 998 0068 0126     		movcs	r6, #1
 999 006a D1E7     		b	.L226
 1000              	.L233:
 1001 006c 0024     		movs	r4, #0
 1002 006e 2046     		mov	r0, r4
 1003 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1004              	.L231:
 1005 0072 AB69     		ldr	r3, [r5, #24]
 1006 0074 A342     		cmp	r3, r4
 1007 0076 E3D9     		bls	.L227
 1008 0078 6FF07042 		mvn	r2, #-268435456
 1009 007c 2146     		mov	r1, r4
 1010 007e 2846     		mov	r0, r5
 1011 0080 FFF7FEFF 		bl	put_fat.part.5
 1012 0084 A0B9     		cbnz	r0, .L236
 1013 0086 57B1     		cbz	r7, .L239
 1014 0088 012F     		cmp	r7, #1
 1015 008a D9D9     		bls	.L227
 1016 008c AB69     		ldr	r3, [r5, #24]
 1017 008e 9F42     		cmp	r7, r3
 1018 0090 D6D2     		bcs	.L227
 1019 0092 3946     		mov	r1, r7
 1020 0094 2246     		mov	r2, r4
 1021 0096 2846     		mov	r0, r5
 1022 0098 FFF7FEFF 		bl	put_fat.part.5
 1023 009c 40B9     		cbnz	r0, .L236
 1024              	.L239:
 1025 009e 2B69     		ldr	r3, [r5, #16]
 1026 00a0 EC60     		str	r4, [r5, #12]
ARM GAS  /tmp/ccFB80Ed.s 			page 19


 1027 00a2 5A1C     		adds	r2, r3, #1
 1028 00a4 CDD0     		beq	.L223
 1029 00a6 0122     		movs	r2, #1
 1030 00a8 013B     		subs	r3, r3, #1
 1031 00aa 2B61     		str	r3, [r5, #16]
 1032 00ac 6A71     		strb	r2, [r5, #5]
 1033 00ae C8E7     		b	.L223
 1034              	.L236:
 1035 00b0 0128     		cmp	r0, #1
 1036 00b2 C5D1     		bne	.L227
 1037              	.L240:
 1038 00b4 4FF0FF34 		mov	r4, #-1
 1039 00b8 2046     		mov	r0, r4
 1040 00ba F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1041              		.size	create_chain, .-create_chain
 1042              		.section	.text.dir_next,"ax",%progbits
 1043              		.align	1
 1044              		.p2align 2,,3
 1045              		.syntax unified
 1046              		.thumb
 1047              		.thumb_func
 1048              		.fpu softvfp
 1049              		.type	dir_next, %function
 1050              	dir_next:
 1051              		@ args = 0, pretend = 0, frame = 0
 1052              		@ frame_needed = 0, uses_anonymous_args = 0
 1053 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1054 0004 C488     		ldrh	r4, [r0, #6]
 1055 0006 0134     		adds	r4, r4, #1
 1056 0008 A4B2     		uxth	r4, r4
 1057 000a 14B9     		cbnz	r4, .L254
 1058              	.L256:
 1059 000c 0420     		movs	r0, #4
 1060 000e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1061              	.L254:
 1062 0012 0369     		ldr	r3, [r0, #16]
 1063 0014 002B     		cmp	r3, #0
 1064 0016 F9D0     		beq	.L256
 1065 0018 14F00F07 		ands	r7, r4, #15
 1066 001c 0E46     		mov	r6, r1
 1067 001e 0546     		mov	r5, r0
 1068 0020 08D0     		beq	.L257
 1069 0022 0068     		ldr	r0, [r0]
 1070              	.L258:
 1071 0024 3030     		adds	r0, r0, #48
 1072 0026 00EB4710 		add	r0, r0, r7, lsl #5
 1073 002a 6861     		str	r0, [r5, #20]
 1074 002c EC80     		strh	r4, [r5, #6]	@ movhi
 1075 002e 0020     		movs	r0, #0
 1076 0030 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1077              	.L257:
 1078 0034 C168     		ldr	r1, [r0, #12]
 1079 0036 0133     		adds	r3, r3, #1
 1080 0038 0361     		str	r3, [r0, #16]
 1081 003a 0068     		ldr	r0, [r0]
 1082 003c 61B1     		cbz	r1, .L287
 1083 003e 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
ARM GAS  /tmp/ccFB80Ed.s 			page 20


 1084 0040 013B     		subs	r3, r3, #1
 1085 0042 13EA1413 		ands	r3, r3, r4, lsr #4
 1086 0046 EDD1     		bne	.L258
 1087 0048 0129     		cmp	r1, #1
 1088 004a 02D9     		bls	.L261
 1089 004c 8369     		ldr	r3, [r0, #24]
 1090 004e 9942     		cmp	r1, r3
 1091 0050 06D3     		bcc	.L288
 1092              	.L261:
 1093 0052 0220     		movs	r0, #2
 1094 0054 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1095              	.L287:
 1096 0058 0389     		ldrh	r3, [r0, #8]
 1097 005a A342     		cmp	r3, r4
 1098 005c D6D9     		bls	.L256
 1099 005e E1E7     		b	.L258
 1100              	.L288:
 1101 0060 FFF7FEFF 		bl	get_fat.part.4
 1102 0064 0128     		cmp	r0, #1
 1103 0066 8046     		mov	r8, r0
 1104 0068 F3D9     		bls	.L261
 1105 006a B0F1FF3F 		cmp	r0, #-1
 1106 006e 1CD0     		beq	.L264
 1107 0070 2868     		ldr	r0, [r5]
 1108 0072 8369     		ldr	r3, [r0, #24]
 1109 0074 4345     		cmp	r3, r8
 1110 0076 0ED9     		bls	.L285
 1111 0078 A8F10206 		sub	r6, r8, #2
 1112              	.L263:
 1113 007c 023B     		subs	r3, r3, #2
 1114 007e 9E42     		cmp	r6, r3
 1115 0080 28BF     		it	cs
 1116 0082 0026     		movcs	r6, #0
 1117 0084 C5F80C80 		str	r8, [r5, #12]
 1118 0088 3EBF     		ittt	cc
 1119 008a 8378     		ldrbcc	r3, [r0, #2]	@ zero_extendqisi2
 1120 008c 826A     		ldrcc	r2, [r0, #40]
 1121 008e 06FB0326 		mlacc	r6, r6, r3, r2
 1122 0092 2E61     		str	r6, [r5, #16]
 1123 0094 C6E7     		b	.L258
 1124              	.L285:
 1125 0096 002E     		cmp	r6, #0
 1126 0098 B8D0     		beq	.L256
 1127 009a E968     		ldr	r1, [r5, #12]
 1128 009c FFF7FEFF 		bl	create_chain
 1129 00a0 8046     		mov	r8, r0
 1130 00a2 28B9     		cbnz	r0, .L289
 1131 00a4 0720     		movs	r0, #7
 1132 00a6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1133              	.L264:
 1134 00aa 0120     		movs	r0, #1
 1135 00ac BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1136              	.L289:
 1137 00b0 0128     		cmp	r0, #1
 1138 00b2 CED0     		beq	.L261
 1139 00b4 B0F1FF3F 		cmp	r0, #-1
 1140 00b8 F7D0     		beq	.L264
ARM GAS  /tmp/ccFB80Ed.s 			page 21


 1141 00ba 0021     		movs	r1, #0
 1142 00bc 2868     		ldr	r0, [r5]
 1143 00be FFF7FEFF 		bl	move_window
 1144 00c2 8146     		mov	r9, r0
 1145 00c4 0028     		cmp	r0, #0
 1146 00c6 F0D1     		bne	.L264
 1147 00c8 2868     		ldr	r0, [r5]
 1148 00ca 4946     		mov	r1, r9
 1149 00cc 4FF40072 		mov	r2, #512
 1150 00d0 3030     		adds	r0, r0, #48
 1151 00d2 FFF7FEFF 		bl	memset
 1152 00d6 2B68     		ldr	r3, [r5]
 1153 00d8 A8F10206 		sub	r6, r8, #2
 1154 00dc 9A69     		ldr	r2, [r3, #24]
 1155 00de 4FF0010A 		mov	r10, #1
 1156 00e2 023A     		subs	r2, r2, #2
 1157 00e4 9642     		cmp	r6, r2
 1158 00e6 28BF     		it	cs
 1159 00e8 4A46     		movcs	r2, r9
 1160 00ea 4FF00009 		mov	r9, #0
 1161 00ee 3EBF     		ittt	cc
 1162 00f0 9A78     		ldrbcc	r2, [r3, #2]	@ zero_extendqisi2
 1163 00f2 996A     		ldrcc	r1, [r3, #40]
 1164 00f4 06FB0212 		mlacc	r2, r6, r2, r1
 1165 00f8 DA62     		str	r2, [r3, #44]
 1166              	.L266:
 1167 00fa 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1168 00fc 5FFA89F1 		uxtb	r1, r9
 1169 0100 8A42     		cmp	r2, r1
 1170 0102 1846     		mov	r0, r3
 1171 0104 0ED9     		bls	.L290
 1172 0106 83F804A0 		strb	r10, [r3, #4]
 1173 010a 1846     		mov	r0, r3
 1174 010c 0021     		movs	r1, #0
 1175 010e FFF7FEFF 		bl	move_window
 1176 0112 09F10109 		add	r9, r9, #1
 1177 0116 0028     		cmp	r0, #0
 1178 0118 C7D1     		bne	.L264
 1179 011a 2B68     		ldr	r3, [r5]
 1180 011c DA6A     		ldr	r2, [r3, #44]
 1181 011e 0132     		adds	r2, r2, #1
 1182 0120 DA62     		str	r2, [r3, #44]
 1183 0122 EAE7     		b	.L266
 1184              	.L290:
 1185 0124 DA6A     		ldr	r2, [r3, #44]
 1186 0126 9B69     		ldr	r3, [r3, #24]
 1187 0128 521A     		subs	r2, r2, r1
 1188 012a C262     		str	r2, [r0, #44]
 1189 012c A6E7     		b	.L263
 1190              		.size	dir_next, .-dir_next
 1191 012e 00BF     		.section	.text.dir_read,"ax",%progbits
 1192              		.align	1
 1193              		.p2align 2,,3
 1194              		.syntax unified
 1195              		.thumb
 1196              		.thumb_func
 1197              		.fpu softvfp
ARM GAS  /tmp/ccFB80Ed.s 			page 22


 1198              		.type	dir_read, %function
 1199              	dir_read:
 1200              		@ args = 0, pretend = 0, frame = 0
 1201              		@ frame_needed = 0, uses_anonymous_args = 0
 1202 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1203 0004 FF26     		movs	r6, #255
 1204 0006 0446     		mov	r4, r0
 1205 0008 3546     		mov	r5, r6
 1206 000a 0420     		movs	r0, #4
 1207 000c 08E0     		b	.L292
 1208              	.L332:
 1209 000e 0F2F     		cmp	r7, #15
 1210 0010 1DD0     		beq	.L296
 1211              	.L330:
 1212 0012 FF25     		movs	r5, #255
 1213              	.L294:
 1214 0014 0021     		movs	r1, #0
 1215 0016 2046     		mov	r0, r4
 1216 0018 FFF7FEFF 		bl	dir_next
 1217 001c 0028     		cmp	r0, #0
 1218 001e 4DD1     		bne	.L293
 1219              	.L292:
 1220 0020 2169     		ldr	r1, [r4, #16]
 1221 0022 0029     		cmp	r1, #0
 1222 0024 4ED0     		beq	.L331
 1223 0026 2068     		ldr	r0, [r4]
 1224 0028 FFF7FEFF 		bl	move_window
 1225 002c 0028     		cmp	r0, #0
 1226 002e 45D1     		bne	.L293
 1227 0030 6269     		ldr	r2, [r4, #20]
 1228 0032 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 1229 0034 002B     		cmp	r3, #0
 1230 0036 40D0     		beq	.L311
 1231 0038 E52B     		cmp	r3, #229
 1232 003a EAD0     		beq	.L330
 1233 003c 2E2B     		cmp	r3, #46
 1234 003e E8D0     		beq	.L330
 1235 0040 D17A     		ldrb	r1, [r2, #11]	@ zero_extendqisi2
 1236 0042 01F03F07 		and	r7, r1, #63
 1237 0046 0907     		lsls	r1, r1, #28
 1238 0048 E1D4     		bmi	.L332
 1239 004a 0F2F     		cmp	r7, #15
 1240 004c 4BD1     		bne	.L297
 1241              	.L296:
 1242 004e 5906     		lsls	r1, r3, #25
 1243 0050 30D5     		bpl	.L298
 1244 0052 E188     		ldrh	r1, [r4, #6]
 1245 0054 567B     		ldrb	r6, [r2, #13]	@ zero_extendqisi2
 1246 0056 03F0BF03 		and	r3, r3, #191
 1247 005a 2184     		strh	r1, [r4, #32]	@ movhi
 1248              	.L299:
 1249 005c 92F80DE0 		ldrb	lr, [r2, #13]	@ zero_extendqisi2
 1250 0060 B645     		cmp	lr, r6
 1251 0062 D6D1     		bne	.L330
 1252 0064 0120     		movs	r0, #1
 1253 0066 1678     		ldrb	r6, [r2]	@ zero_extendqisi2
 1254 0068 294D     		ldr	r5, .L335
ARM GAS  /tmp/ccFB80Ed.s 			page 23


 1255 006a 06F03F06 		and	r6, r6, #63
 1256 006e 013E     		subs	r6, r6, #1
 1257 0070 06EB4601 		add	r1, r6, r6, lsl #1
 1258 0074 4FF6FF7A 		movw	r10, #65535
 1259 0078 8446     		mov	ip, r0
 1260 007a D4F81C90 		ldr	r9, [r4, #28]
 1261 007e 06EB8106 		add	r6, r6, r1, lsl #2
 1262 0082 05F10C08 		add	r8, r5, #12
 1263 0086 09E0     		b	.L303
 1264              	.L333:
 1265 0088 FE2E     		cmp	r6, #254
 1266 008a 11D8     		bhi	.L319
 1267 008c 8C46     		mov	ip, r1
 1268 008e 29F81610 		strh	r1, [r9, r6, lsl #1]	@ movhi
 1269 0092 0136     		adds	r6, r6, #1
 1270              	.L301:
 1271 0094 4545     		cmp	r5, r8
 1272 0096 1AD0     		beq	.L302
 1273 0098 15F8010F 		ldrb	r0, [r5, #1]!	@ zero_extendqisi2
 1274              	.L303:
 1275 009c 1118     		adds	r1, r2, r0
 1276 009e 4F78     		ldrb	r7, [r1, #1]	@ zero_extendqisi2
 1277 00a0 115C     		ldrb	r1, [r2, r0]	@ zero_extendqisi2
 1278 00a2 41EA0721 		orr	r1, r1, r7, lsl #8
 1279 00a6 BCF1000F 		cmp	ip, #0
 1280 00aa EDD1     		bne	.L333
 1281 00ac 5145     		cmp	r1, r10
 1282 00ae F1D0     		beq	.L301
 1283              	.L319:
 1284 00b0 7646     		mov	r6, lr
 1285 00b2 AEE7     		b	.L330
 1286              	.L298:
 1287 00b4 9D42     		cmp	r5, r3
 1288 00b6 ACD1     		bne	.L330
 1289 00b8 D0E7     		b	.L299
 1290              	.L311:
 1291 00ba 0420     		movs	r0, #4
 1292              	.L293:
 1293 00bc 0023     		movs	r3, #0
 1294 00be 2361     		str	r3, [r4, #16]
 1295 00c0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1296              	.L331:
 1297 00c4 0028     		cmp	r0, #0
 1298 00c6 F9D1     		bne	.L293
 1299              	.L310:
 1300 00c8 0020     		movs	r0, #0
 1301 00ca BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1302              	.L302:
 1303 00ce 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1304 00d0 5206     		lsls	r2, r2, #25
 1305 00d2 04D5     		bpl	.L304
 1306 00d4 FE2E     		cmp	r6, #254
 1307 00d6 EBD8     		bhi	.L319
 1308 00d8 0022     		movs	r2, #0
 1309 00da 29F81620 		strh	r2, [r9, r6, lsl #1]	@ movhi
 1310              	.L304:
 1311 00de 013B     		subs	r3, r3, #1
ARM GAS  /tmp/ccFB80Ed.s 			page 24


 1312 00e0 DDB2     		uxtb	r5, r3
 1313 00e2 7646     		mov	r6, lr
 1314 00e4 96E7     		b	.L294
 1315              	.L297:
 1316 00e6 75B9     		cbnz	r5, .L305
 1317 00e8 02F10A07 		add	r7, r2, #10
 1318 00ec 01E0     		b	.L307
 1319              	.L334:
 1320 00ee 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 1321              	.L307:
 1322 00f2 E901     		lsls	r1, r5, #7
 1323 00f4 41EA5505 		orr	r5, r1, r5, lsr #1
 1324 00f8 2B44     		add	r3, r3, r5
 1325 00fa 9742     		cmp	r7, r2
 1326 00fc 03F0FF05 		and	r5, r3, #255
 1327 0100 F5D1     		bne	.L334
 1328 0102 AE42     		cmp	r6, r5
 1329 0104 E0D0     		beq	.L310
 1330              	.L305:
 1331 0106 4FF6FF73 		movw	r3, #65535
 1332 010a 2384     		strh	r3, [r4, #32]	@ movhi
 1333 010c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1334              	.L336:
 1335              		.align	2
 1336              	.L335:
 1337 0110 00000000 		.word	.LANCHOR2
 1338              		.size	dir_read, .-dir_read
 1339              		.section	.text.dir_remove,"ax",%progbits
 1340              		.align	1
 1341              		.p2align 2,,3
 1342              		.syntax unified
 1343              		.thumb
 1344              		.thumb_func
 1345              		.fpu softvfp
 1346              		.type	dir_remove, %function
 1347              	dir_remove:
 1348              		@ args = 0, pretend = 0, frame = 0
 1349              		@ frame_needed = 0, uses_anonymous_args = 0
 1350 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1351 0002 4FF6FF73 		movw	r3, #65535
 1352 0006 C588     		ldrh	r5, [r0, #6]
 1353 0008 018C     		ldrh	r1, [r0, #32]
 1354 000a 0446     		mov	r4, r0
 1355 000c 9942     		cmp	r1, r3
 1356 000e 08BF     		it	eq
 1357 0010 2946     		moveq	r1, r5
 1358 0012 FFF7FEFF 		bl	dir_sdi
 1359 0016 B8B9     		cbnz	r0, .L339
 1360 0018 E527     		movs	r7, #229
 1361 001a 0126     		movs	r6, #1
 1362 001c 0BE0     		b	.L341
 1363              	.L346:
 1364 001e 6369     		ldr	r3, [r4, #20]
 1365 0020 1F70     		strb	r7, [r3]
 1366 0022 2368     		ldr	r3, [r4]
 1367 0024 1E71     		strb	r6, [r3, #4]
 1368 0026 E388     		ldrh	r3, [r4, #6]
ARM GAS  /tmp/ccFB80Ed.s 			page 25


 1369 0028 AB42     		cmp	r3, r5
 1370 002a 0DD2     		bcs	.L339
 1371 002c 0146     		mov	r1, r0
 1372 002e 2046     		mov	r0, r4
 1373 0030 FFF7FEFF 		bl	dir_next
 1374 0034 28B9     		cbnz	r0, .L340
 1375              	.L341:
 1376 0036 2169     		ldr	r1, [r4, #16]
 1377 0038 2068     		ldr	r0, [r4]
 1378 003a FFF7FEFF 		bl	move_window
 1379 003e 0028     		cmp	r0, #0
 1380 0040 EDD0     		beq	.L346
 1381              	.L340:
 1382 0042 0428     		cmp	r0, #4
 1383 0044 08BF     		it	eq
 1384 0046 0220     		moveq	r0, #2
 1385              	.L339:
 1386 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1387              		.size	dir_remove, .-dir_remove
 1388 004a 00BF     		.section	.text.dir_find.part.6,"ax",%progbits
 1389              		.align	1
 1390              		.p2align 2,,3
 1391              		.syntax unified
 1392              		.thumb
 1393              		.thumb_func
 1394              		.fpu softvfp
 1395              		.type	dir_find.part.6, %function
 1396              	dir_find.part.6:
 1397              		@ args = 0, pretend = 0, frame = 8
 1398              		@ frame_needed = 0, uses_anonymous_args = 0
 1399 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1400 0004 FF26     		movs	r6, #255
 1401 0006 83B0     		sub	sp, sp, #12
 1402 0008 0546     		mov	r5, r0
 1403 000a 3446     		mov	r4, r6
 1404 000c 08E0     		b	.L364
 1405              	.L392:
 1406 000e 0F29     		cmp	r1, #15
 1407 0010 3ED0     		beq	.L351
 1408              	.L374:
 1409 0012 FF24     		movs	r4, #255
 1410              	.L349:
 1411 0014 0021     		movs	r1, #0
 1412 0016 2846     		mov	r0, r5
 1413 0018 FFF7FEFF 		bl	dir_next
 1414 001c 0746     		mov	r7, r0
 1415 001e 98BB     		cbnz	r0, .L375
 1416              	.L364:
 1417 0020 2969     		ldr	r1, [r5, #16]
 1418 0022 2868     		ldr	r0, [r5]
 1419 0024 FFF7FEFF 		bl	move_window
 1420 0028 0746     		mov	r7, r0
 1421 002a 68BB     		cbnz	r0, .L375
 1422 002c D5F81480 		ldr	r8, [r5, #20]
 1423 0030 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 1424 0034 002A     		cmp	r2, #0
 1425 0036 75D0     		beq	.L365
ARM GAS  /tmp/ccFB80Ed.s 			page 26


 1426 0038 98F80B30 		ldrb	r3, [r8, #11]	@ zero_extendqisi2
 1427 003c E52A     		cmp	r2, #229
 1428 003e 03F03F01 		and	r1, r3, #63
 1429 0042 E6D0     		beq	.L374
 1430 0044 1B07     		lsls	r3, r3, #28
 1431 0046 E2D4     		bmi	.L392
 1432 0048 0F29     		cmp	r1, #15
 1433 004a 21D0     		beq	.L351
 1434 004c 7CB9     		cbnz	r4, .L360
 1435 004e 4146     		mov	r1, r8
 1436 0050 08F10A00 		add	r0, r8, #10
 1437 0054 01E0     		b	.L362
 1438              	.L393:
 1439 0056 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 1440              	.L362:
 1441 005a E301     		lsls	r3, r4, #7
 1442 005c 43EA5403 		orr	r3, r3, r4, lsr #1
 1443 0060 1344     		add	r3, r3, r2
 1444 0062 8142     		cmp	r1, r0
 1445 0064 03F0FF04 		and	r4, r3, #255
 1446 0068 F5D1     		bne	.L393
 1447 006a B442     		cmp	r4, r6
 1448 006c 0CD0     		beq	.L375
 1449              	.L360:
 1450 006e 4FF6FF73 		movw	r3, #65535
 1451 0072 A969     		ldr	r1, [r5, #24]
 1452 0074 2B84     		strh	r3, [r5, #32]	@ movhi
 1453 0076 CB7A     		ldrb	r3, [r1, #11]	@ zero_extendqisi2
 1454 0078 DB07     		lsls	r3, r3, #31
 1455 007a CAD4     		bmi	.L374
 1456 007c 4046     		mov	r0, r8
 1457 007e 0B22     		movs	r2, #11
 1458 0080 FFF7FEFF 		bl	memcmp
 1459 0084 0028     		cmp	r0, #0
 1460 0086 C4D1     		bne	.L374
 1461              	.L375:
 1462 0088 3846     		mov	r0, r7
 1463 008a 03B0     		add	sp, sp, #12
 1464              		@ sp needed
 1465 008c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1466              	.L351:
 1467 0090 EF69     		ldr	r7, [r5, #28]
 1468 0092 002F     		cmp	r7, #0
 1469 0094 BED0     		beq	.L349
 1470 0096 5006     		lsls	r0, r2, #25
 1471 0098 40D5     		bpl	.L353
 1472 009a EB88     		ldrh	r3, [r5, #6]
 1473 009c 98F80D60 		ldrb	r6, [r8, #13]	@ zero_extendqisi2
 1474 00a0 02F0BF04 		and	r4, r2, #191
 1475 00a4 2B84     		strh	r3, [r5, #32]	@ movhi
 1476              	.L354:
 1477 00a6 98F80D30 		ldrb	r3, [r8, #13]	@ zero_extendqisi2
 1478 00aa B342     		cmp	r3, r6
 1479 00ac B1D1     		bne	.L374
 1480 00ae 0121     		movs	r1, #1
 1481 00b0 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 1482 00b4 DFF890B0 		ldr	fp, .L394
ARM GAS  /tmp/ccFB80Ed.s 			page 27


 1483 00b8 22F04002 		bic	r2, r2, #64
 1484 00bc 013A     		subs	r2, r2, #1
 1485 00be 02EB4203 		add	r3, r2, r2, lsl #1
 1486 00c2 4FF6FF7A 		movw	r10, #65535
 1487 00c6 0846     		mov	r0, r1
 1488 00c8 02EB8302 		add	r2, r2, r3, lsl #2
 1489 00cc 0BF10C09 		add	r9, fp, #12
 1490 00d0 05E0     		b	.L358
 1491              	.L355:
 1492 00d2 5345     		cmp	r3, r10
 1493 00d4 9DD1     		bne	.L374
 1494              	.L356:
 1495 00d6 D945     		cmp	r9, fp
 1496 00d8 29D0     		beq	.L357
 1497 00da 1BF8011F 		ldrb	r1, [fp, #1]!	@ zero_extendqisi2
 1498              	.L358:
 1499 00de 08EB0103 		add	r3, r8, r1
 1500 00e2 93F801E0 		ldrb	lr, [r3, #1]	@ zero_extendqisi2
 1501 00e6 18F80130 		ldrb	r3, [r8, r1]	@ zero_extendqisi2
 1502 00ea 43EA0E23 		orr	r3, r3, lr, lsl #8
 1503 00ee 0028     		cmp	r0, #0
 1504 00f0 EFD0     		beq	.L355
 1505 00f2 1846     		mov	r0, r3
 1506 00f4 0092     		str	r2, [sp]
 1507 00f6 FFF7FEFF 		bl	ff_wtoupper
 1508 00fa 009A     		ldr	r2, [sp]
 1509 00fc 0190     		str	r0, [sp, #4]
 1510 00fe 531C     		adds	r3, r2, #1
 1511 0100 FE2A     		cmp	r2, #254
 1512 0102 0093     		str	r3, [sp]
 1513 0104 85D8     		bhi	.L374
 1514 0106 37F81200 		ldrh	r0, [r7, r2, lsl #1]
 1515 010a FFF7FEFF 		bl	ff_wtoupper
 1516 010e 0199     		ldr	r1, [sp, #4]
 1517 0110 8142     		cmp	r1, r0
 1518 0112 7FF47EAF 		bne	.L374
 1519 0116 009B     		ldr	r3, [sp]
 1520 0118 1A46     		mov	r2, r3
 1521 011a DCE7     		b	.L356
 1522              	.L353:
 1523 011c A242     		cmp	r2, r4
 1524 011e 7FF478AF 		bne	.L374
 1525 0122 C0E7     		b	.L354
 1526              	.L365:
 1527 0124 0427     		movs	r7, #4
 1528 0126 3846     		mov	r0, r7
 1529 0128 03B0     		add	sp, sp, #12
 1530              		@ sp needed
 1531 012a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1532              	.L357:
 1533 012e 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1534 0132 5906     		lsls	r1, r3, #25
 1535 0134 05D5     		bpl	.L359
 1536 0136 20B1     		cbz	r0, .L359
 1537 0138 37F81230 		ldrh	r3, [r7, r2, lsl #1]
 1538 013c 002B     		cmp	r3, #0
 1539 013e 7FF468AF 		bne	.L374
ARM GAS  /tmp/ccFB80Ed.s 			page 28


 1540              	.L359:
 1541 0142 631E     		subs	r3, r4, #1
 1542 0144 DCB2     		uxtb	r4, r3
 1543 0146 65E7     		b	.L349
 1544              	.L395:
 1545              		.align	2
 1546              	.L394:
 1547 0148 00000000 		.word	.LANCHOR2
 1548              		.size	dir_find.part.6, .-dir_find.part.6
 1549              		.section	.text.dir_register,"ax",%progbits
 1550              		.align	1
 1551              		.p2align 2,,3
 1552              		.syntax unified
 1553              		.thumb
 1554              		.thumb_func
 1555              		.fpu softvfp
 1556              		.type	dir_register, %function
 1557              	dir_register:
 1558              		@ args = 0, pretend = 0, frame = 32
 1559              		@ frame_needed = 0, uses_anonymous_args = 0
 1560 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1561 0004 D0F81890 		ldr	r9, [r0, #24]
 1562 0008 89B0     		sub	sp, sp, #36
 1563 000a 0446     		mov	r4, r0
 1564 000c C569     		ldr	r5, [r0, #28]
 1565 000e D9F80410 		ldr	r1, [r9, #4]	@ unaligned
 1566 0012 D9F80000 		ldr	r0, [r9]	@ unaligned
 1567 0016 D9F80820 		ldr	r2, [r9, #8]	@ unaligned
 1568 001a 05AB     		add	r3, sp, #20
 1569 001c 07C3     		stmia	r3!, {r0, r1, r2}
 1570 001e 9DF81F80 		ldrb	r8, [sp, #31]	@ zero_extendqisi2
 1571 0022 18F0010F 		tst	r8, #1
 1572 0026 7AD0     		beq	.L397
 1573 0028 0022     		movs	r2, #0
 1574 002a 4FF0010A 		mov	r10, #1
 1575 002e 05AB     		add	r3, sp, #20
 1576 0030 03CB     		ldmia	r3!, {r0, r1}
 1577 0032 1E88     		ldrh	r6, [r3]	@ unaligned
 1578 0034 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 1579 0036 89F80B20 		strb	r2, [r9, #11]
 1580 003a 7E27     		movs	r7, #126
 1581 003c E261     		str	r2, [r4, #28]
 1582 003e 89F80A30 		strb	r3, [r9, #10]
 1583 0042 5346     		mov	r3, r10
 1584 0044 C9F80000 		str	r0, [r9]	@ unaligned
 1585 0048 C9F80410 		str	r1, [r9, #4]	@ unaligned
 1586 004c A9F80860 		strh	r6, [r9, #8]	@ unaligned
 1587              	.L398:
 1588 0050 0722     		movs	r2, #7
 1589 0052 0DF11306 		add	r6, sp, #19
 1590              	.L402:
 1591 0056 03F00F00 		and	r0, r3, #15
 1592 005a 00F13001 		add	r1, r0, #48
 1593 005e 3929     		cmp	r1, #57
 1594 0060 88BF     		it	hi
 1595 0062 00F13701 		addhi	r1, r0, #55
 1596 0066 C3F30F13 		ubfx	r3, r3, #4, #16
ARM GAS  /tmp/ccFB80Ed.s 			page 29


 1597 006a 013A     		subs	r2, r2, #1
 1598 006c 06F80119 		strb	r1, [r6], #-1
 1599 0070 002B     		cmp	r3, #0
 1600 0072 F0D1     		bne	.L402
 1601 0074 08A9     		add	r1, sp, #32
 1602 0076 1144     		add	r1, r1, r2
 1603 0078 01F8147C 		strb	r7, [r1, #-20]
 1604 007c 62B1     		cbz	r2, .L434
 1605 007e 99F80010 		ldrb	r1, [r9]	@ zero_extendqisi2
 1606 0082 2029     		cmp	r1, #32
 1607 0084 09D0     		beq	.L403
 1608 0086 4946     		mov	r1, r9
 1609 0088 03E0     		b	.L404
 1610              	.L467:
 1611 008a 11F8010F 		ldrb	r0, [r1, #1]!	@ zero_extendqisi2
 1612 008e 2028     		cmp	r0, #32
 1613 0090 03D0     		beq	.L403
 1614              	.L404:
 1615 0092 0133     		adds	r3, r3, #1
 1616 0094 9A42     		cmp	r2, r3
 1617 0096 F8D1     		bne	.L467
 1618              	.L434:
 1619 0098 1346     		mov	r3, r2
 1620              	.L403:
 1621 009a 4B44     		add	r3, r3, r9
 1622              	.L406:
 1623 009c 072A     		cmp	r2, #7
 1624 009e 08A9     		add	r1, sp, #32
 1625 00a0 1144     		add	r1, r1, r2
 1626 00a2 8EBF     		itee	hi
 1627 00a4 2021     		movhi	r1, #32
 1628 00a6 11F8141C 		ldrbls	r1, [r1, #-20]	@ zero_extendqisi2
 1629 00aa 0132     		addls	r2, r2, #1
 1630 00ac 03F8011B 		strb	r1, [r3], #1
 1631 00b0 A3EB0901 		sub	r1, r3, r9
 1632 00b4 0729     		cmp	r1, #7
 1633 00b6 F1D9     		bls	.L406
 1634 00b8 0021     		movs	r1, #0
 1635 00ba 2046     		mov	r0, r4
 1636 00bc FFF7FEFF 		bl	dir_sdi
 1637 00c0 38BB     		cbnz	r0, .L407
 1638 00c2 2046     		mov	r0, r4
 1639 00c4 FFF7FEFF 		bl	dir_find.part.6
 1640 00c8 18BB     		cbnz	r0, .L407
 1641 00ca 0AF1010A 		add	r10, r10, #1
 1642 00ce 1FFA8AFA 		uxth	r10, r10
 1643 00d2 BAF1640F 		cmp	r10, #100
 1644 00d6 00F00581 		beq	.L468
 1645 00da 05AB     		add	r3, sp, #20
 1646 00dc 03CB     		ldmia	r3!, {r0, r1}
 1647 00de 1A88     		ldrh	r2, [r3]	@ unaligned
 1648 00e0 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 1649 00e2 BAF1050F 		cmp	r10, #5
 1650 00e6 89F80A30 		strb	r3, [r9, #10]
 1651 00ea C9F80000 		str	r0, [r9]	@ unaligned
 1652 00ee C9F80410 		str	r1, [r9, #4]	@ unaligned
 1653 00f2 A9F80820 		strh	r2, [r9, #8]	@ unaligned
ARM GAS  /tmp/ccFB80Ed.s 			page 30


 1654 00f6 5346     		mov	r3, r10
 1655 00f8 AAD9     		bls	.L398
 1656 00fa 2846     		mov	r0, r5
 1657 00fc 2988     		ldrh	r1, [r5]
 1658              	.L400:
 1659 00fe DA03     		lsls	r2, r3, #15
 1660 0100 42EA5303 		orr	r3, r2, r3, lsr #1
 1661 0104 0B44     		add	r3, r3, r1
 1662 0106 30F8021F 		ldrh	r1, [r0, #2]!
 1663 010a 9BB2     		uxth	r3, r3
 1664 010c 0029     		cmp	r1, #0
 1665 010e F6D1     		bne	.L400
 1666 0110 9EE7     		b	.L398
 1667              	.L407:
 1668 0112 0428     		cmp	r0, #4
 1669 0114 0646     		mov	r6, r0
 1670 0116 2FD1     		bne	.L439
 1671 0118 89F80B80 		strb	r8, [r9, #11]
 1672 011c E561     		str	r5, [r4, #28]
 1673              	.L397:
 1674 011e 18F0020F 		tst	r8, #2
 1675 0122 2DD1     		bne	.L469
 1676              	.L436:
 1677 0124 0127     		movs	r7, #1
 1678              	.L410:
 1679 0126 0021     		movs	r1, #0
 1680 0128 2046     		mov	r0, r4
 1681 012a FFF7FEFF 		bl	dir_sdi
 1682 012e 0646     		mov	r6, r0
 1683 0130 10BB     		cbnz	r0, .L439
 1684 0132 8046     		mov	r8, r0
 1685 0134 0546     		mov	r5, r0
 1686 0136 05E0     		b	.L417
 1687              	.L438:
 1688 0138 0546     		mov	r5, r0
 1689 013a 0121     		movs	r1, #1
 1690 013c 2046     		mov	r0, r4
 1691 013e FFF7FEFF 		bl	dir_next
 1692 0142 C0B9     		cbnz	r0, .L461
 1693              	.L417:
 1694 0144 2169     		ldr	r1, [r4, #16]
 1695 0146 2068     		ldr	r0, [r4]
 1696 0148 FFF7FEFF 		bl	move_window
 1697 014c 6B1C     		adds	r3, r5, #1
 1698 014e 9BB2     		uxth	r3, r3
 1699 0150 88B9     		cbnz	r0, .L461
 1700 0152 6269     		ldr	r2, [r4, #20]
 1701 0154 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1702 0156 E52A     		cmp	r2, #229
 1703 0158 01D0     		beq	.L413
 1704 015a 002A     		cmp	r2, #0
 1705 015c ECD1     		bne	.L438
 1706              	.L413:
 1707 015e 0DB9     		cbnz	r5, .L415
 1708 0160 B4F80680 		ldrh	r8, [r4, #6]
 1709              	.L415:
 1710 0164 9F42     		cmp	r7, r3
ARM GAS  /tmp/ccFB80Ed.s 			page 31


 1711 0166 1ED0     		beq	.L416
 1712 0168 0121     		movs	r1, #1
 1713 016a 2046     		mov	r0, r4
 1714 016c 1D46     		mov	r5, r3
 1715 016e FFF7FEFF 		bl	dir_next
 1716 0172 0028     		cmp	r0, #0
 1717 0174 E6D0     		beq	.L417
 1718              	.L461:
 1719 0176 0646     		mov	r6, r0
 1720              	.L439:
 1721 0178 3046     		mov	r0, r6
 1722 017a 09B0     		add	sp, sp, #36
 1723              		@ sp needed
 1724 017c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1725              	.L469:
 1726 0180 2B88     		ldrh	r3, [r5]
 1727 0182 002B     		cmp	r3, #0
 1728 0184 CED0     		beq	.L436
 1729 0186 0023     		movs	r3, #0
 1730              	.L412:
 1731 0188 0133     		adds	r3, r3, #1
 1732 018a 9BB2     		uxth	r3, r3
 1733 018c 35F81320 		ldrh	r2, [r5, r3, lsl #1]
 1734 0190 002A     		cmp	r2, #0
 1735 0192 F9D1     		bne	.L412
 1736 0194 564F     		ldr	r7, .L471
 1737 0196 1933     		adds	r3, r3, #25
 1738 0198 87FB0327 		smull	r2, r7, r7, r3
 1739 019c DB17     		asrs	r3, r3, #31
 1740 019e C3EBA707 		rsb	r7, r3, r7, asr #2
 1741 01a2 BFB2     		uxth	r7, r7
 1742 01a4 BFE7     		b	.L410
 1743              	.L416:
 1744 01a6 012F     		cmp	r7, #1
 1745 01a8 69D0     		beq	.L426
 1746 01aa 4146     		mov	r1, r8
 1747 01ac 2046     		mov	r0, r4
 1748 01ae FFF7FEFF 		bl	dir_sdi
 1749 01b2 0646     		mov	r6, r0
 1750 01b4 0028     		cmp	r0, #0
 1751 01b6 DFD1     		bne	.L439
 1752 01b8 B246     		mov	r10, r6
 1753 01ba A069     		ldr	r0, [r4, #24]
 1754 01bc 0146     		mov	r1, r0
 1755 01be 0B30     		adds	r0, r0, #11
 1756              	.L418:
 1757 01c0 4FEACA13 		lsl	r3, r10, #7
 1758 01c4 11F8012B 		ldrb	r2, [r1], #1	@ zero_extendqisi2
 1759 01c8 43EA5A03 		orr	r3, r3, r10, lsr #1
 1760 01cc 1344     		add	r3, r3, r2
 1761 01ce 8842     		cmp	r0, r1
 1762 01d0 03F0FF0A 		and	r10, r3, #255
 1763 01d4 F4D1     		bne	.L418
 1764 01d6 DFF81C91 		ldr	r9, .L471+4
 1765 01da CDF804A0 		str	r10, [sp, #4]
 1766 01de 09F10C0B 		add	fp, r9, #12
 1767              	.L425:
ARM GAS  /tmp/ccFB80Ed.s 			page 32


 1768 01e2 2169     		ldr	r1, [r4, #16]
 1769 01e4 2068     		ldr	r0, [r4]
 1770 01e6 FFF7FEFF 		bl	move_window
 1771 01ea 0646     		mov	r6, r0
 1772 01ec 0028     		cmp	r0, #0
 1773 01ee C3D1     		bne	.L439
 1774 01f0 5FFA85F8 		uxtb	r8, r5
 1775 01f4 08F1FF31 		add	r1, r8, #-1
 1776 01f8 01EB4103 		add	r3, r1, r1, lsl #1
 1777 01fc 01EB8301 		add	r1, r1, r3, lsl #2
 1778 0200 01F10046 		add	r6, r1, #-2147483648
 1779 0204 E369     		ldr	r3, [r4, #28]
 1780 0206 013E     		subs	r6, r6, #1
 1781 0208 6269     		ldr	r2, [r4, #20]
 1782 020a 0093     		str	r3, [sp]
 1783 020c 03EB4606 		add	r6, r3, r6, lsl #1
 1784 0210 9DF80430 		ldrb	r3, [sp, #4]	@ zero_extendqisi2
 1785 0214 0127     		movs	r7, #1
 1786 0216 5373     		strb	r3, [r2, #13]
 1787 0218 4FF00F03 		mov	r3, #15
 1788 021c DFF8D4A0 		ldr	r10, .L471+4
 1789 0220 D372     		strb	r3, [r2, #11]
 1790 0222 1073     		strb	r0, [r2, #12]
 1791 0224 9076     		strb	r0, [r2, #26]
 1792 0226 D076     		strb	r0, [r2, #27]
 1793              	.L419:
 1794 0228 36F8023F 		ldrh	r3, [r6, #2]!
 1795 022c 02EB070E 		add	lr, r2, r7
 1796 0230 4FEA132C 		lsr	ip, r3, #8
 1797 0234 D355     		strb	r3, [r2, r7]
 1798 0236 0131     		adds	r1, r1, #1
 1799 0238 8EF801C0 		strb	ip, [lr, #1]
 1800 023c 0130     		adds	r0, r0, #1
 1801 023e 002B     		cmp	r3, #0
 1802 0240 3DD1     		bne	.L421
 1803 0242 0D28     		cmp	r0, #13
 1804 0244 09D0     		beq	.L424
 1805              	.L420:
 1806 0246 FF23     		movs	r3, #255
 1807 0248 0138     		subs	r0, r0, #1
 1808 024a 4844     		add	r0, r0, r9
 1809              	.L429:
 1810 024c 10F8011F 		ldrb	r1, [r0, #1]!	@ zero_extendqisi2
 1811 0250 5618     		adds	r6, r2, r1
 1812 0252 8345     		cmp	fp, r0
 1813 0254 5354     		strb	r3, [r2, r1]
 1814 0256 7370     		strb	r3, [r6, #1]
 1815 0258 F8D1     		bne	.L429
 1816              	.L424:
 1817 025a 48F04008 		orr	r8, r8, #64
 1818              	.L422:
 1819 025e 0120     		movs	r0, #1
 1820 0260 82F80080 		strb	r8, [r2]
 1821 0264 2368     		ldr	r3, [r4]
 1822 0266 0021     		movs	r1, #0
 1823 0268 1871     		strb	r0, [r3, #4]
 1824 026a 2046     		mov	r0, r4
ARM GAS  /tmp/ccFB80Ed.s 			page 33


 1825 026c FFF7FEFF 		bl	dir_next
 1826 0270 0646     		mov	r6, r0
 1827 0272 0028     		cmp	r0, #0
 1828 0274 80D1     		bne	.L439
 1829 0276 013D     		subs	r5, r5, #1
 1830 0278 ADB2     		uxth	r5, r5
 1831 027a 002D     		cmp	r5, #0
 1832 027c B1D1     		bne	.L425
 1833              	.L426:
 1834 027e 2169     		ldr	r1, [r4, #16]
 1835 0280 2068     		ldr	r0, [r4]
 1836 0282 FFF7FEFF 		bl	move_window
 1837 0286 0646     		mov	r6, r0
 1838 0288 0028     		cmp	r0, #0
 1839 028a 7FF475AF 		bne	.L439
 1840 028e 6569     		ldr	r5, [r4, #20]
 1841 0290 2022     		movs	r2, #32
 1842 0292 3146     		mov	r1, r6
 1843 0294 2846     		mov	r0, r5
 1844 0296 FFF7FEFF 		bl	memset
 1845 029a 0122     		movs	r2, #1
 1846 029c A369     		ldr	r3, [r4, #24]
 1847 029e 5968     		ldr	r1, [r3, #4]	@ unaligned
 1848 02a0 1868     		ldr	r0, [r3]	@ unaligned
 1849 02a2 6960     		str	r1, [r5, #4]	@ unaligned
 1850 02a4 2860     		str	r0, [r5]	@ unaligned
 1851 02a6 1989     		ldrh	r1, [r3, #8]	@ unaligned
 1852 02a8 9B7A     		ldrb	r3, [r3, #10]	@ zero_extendqisi2
 1853 02aa 2981     		strh	r1, [r5, #8]	@ unaligned
 1854 02ac AB72     		strb	r3, [r5, #10]
 1855 02ae A369     		ldr	r3, [r4, #24]
 1856 02b0 DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 1857 02b2 03F01803 		and	r3, r3, #24
 1858 02b6 2B73     		strb	r3, [r5, #12]
 1859 02b8 2368     		ldr	r3, [r4]
 1860 02ba 1A71     		strb	r2, [r3, #4]
 1861 02bc 5CE7     		b	.L439
 1862              	.L421:
 1863 02be 0D28     		cmp	r0, #13
 1864 02c0 06D0     		beq	.L470
 1865 02c2 4FF6FF77 		movw	r7, #65535
 1866 02c6 BB42     		cmp	r3, r7
 1867 02c8 BDD0     		beq	.L420
 1868 02ca 1AF8017F 		ldrb	r7, [r10, #1]!	@ zero_extendqisi2
 1869 02ce ABE7     		b	.L419
 1870              	.L470:
 1871 02d0 4FF6FF70 		movw	r0, #65535
 1872 02d4 8342     		cmp	r3, r0
 1873 02d6 C0D0     		beq	.L424
 1874 02d8 009B     		ldr	r3, [sp]
 1875 02da 33F81130 		ldrh	r3, [r3, r1, lsl #1]
 1876 02de 002B     		cmp	r3, #0
 1877 02e0 BBD0     		beq	.L424
 1878 02e2 BCE7     		b	.L422
 1879              	.L468:
 1880 02e4 0726     		movs	r6, #7
 1881 02e6 3046     		mov	r0, r6
ARM GAS  /tmp/ccFB80Ed.s 			page 34


 1882 02e8 09B0     		add	sp, sp, #36
 1883              		@ sp needed
 1884 02ea BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1885              	.L472:
 1886 02ee 00BF     		.align	2
 1887              	.L471:
 1888 02f0 4FECC44E 		.word	1321528399
 1889 02f4 00000000 		.word	.LANCHOR2
 1890              		.size	dir_register, .-dir_register
 1891              		.section	.text.remove_chain.part.7,"ax",%progbits
 1892              		.align	1
 1893              		.p2align 2,,3
 1894              		.syntax unified
 1895              		.thumb
 1896              		.thumb_func
 1897              		.fpu softvfp
 1898              		.type	remove_chain.part.7, %function
 1899              	remove_chain.part.7:
 1900              		@ args = 0, pretend = 0, frame = 0
 1901              		@ frame_needed = 0, uses_anonymous_args = 0
 1902 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1903 0002 0446     		mov	r4, r0
 1904 0004 0D46     		mov	r5, r1
 1905 0006 0127     		movs	r7, #1
 1906              	.L474:
 1907 0008 A369     		ldr	r3, [r4, #24]
 1908 000a 9D42     		cmp	r5, r3
 1909 000c 20D2     		bcs	.L481
 1910              	.L480:
 1911 000e 012D     		cmp	r5, #1
 1912 0010 0CD9     		bls	.L478
 1913 0012 2946     		mov	r1, r5
 1914 0014 2046     		mov	r0, r4
 1915 0016 FFF7FEFF 		bl	get_fat.part.4
 1916 001a 0646     		mov	r6, r0
 1917 001c C0B1     		cbz	r0, .L481
 1918 001e 0128     		cmp	r0, #1
 1919 0020 04D0     		beq	.L478
 1920 0022 411C     		adds	r1, r0, #1
 1921 0024 16D0     		beq	.L482
 1922 0026 A369     		ldr	r3, [r4, #24]
 1923 0028 9D42     		cmp	r5, r3
 1924 002a 01D3     		bcc	.L490
 1925              	.L478:
 1926 002c 0220     		movs	r0, #2
 1927 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1928              	.L490:
 1929 0030 2946     		mov	r1, r5
 1930 0032 0022     		movs	r2, #0
 1931 0034 2046     		mov	r0, r4
 1932 0036 FFF7FEFF 		bl	put_fat.part.5
 1933 003a 60B9     		cbnz	r0, .L476
 1934 003c 2369     		ldr	r3, [r4, #16]
 1935 003e 3546     		mov	r5, r6
 1936 0040 5A1C     		adds	r2, r3, #1
 1937 0042 E1D0     		beq	.L474
 1938 0044 0133     		adds	r3, r3, #1
ARM GAS  /tmp/ccFB80Ed.s 			page 35


 1939 0046 2361     		str	r3, [r4, #16]
 1940 0048 A369     		ldr	r3, [r4, #24]
 1941 004a 6771     		strb	r7, [r4, #5]
 1942 004c 9D42     		cmp	r5, r3
 1943 004e DED3     		bcc	.L480
 1944              	.L481:
 1945 0050 0020     		movs	r0, #0
 1946 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1947              	.L482:
 1948 0054 0120     		movs	r0, #1
 1949              	.L476:
 1950 0056 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1951              		.size	remove_chain.part.7, .-remove_chain.part.7
 1952              		.section	.text.follow_path,"ax",%progbits
 1953              		.align	1
 1954              		.p2align 2,,3
 1955              		.syntax unified
 1956              		.thumb
 1957              		.thumb_func
 1958              		.fpu softvfp
 1959              		.type	follow_path, %function
 1960              	follow_path:
 1961              		@ args = 0, pretend = 0, frame = 8
 1962              		@ frame_needed = 0, uses_anonymous_args = 0
 1963 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1964 0004 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 1965 0006 83B0     		sub	sp, sp, #12
 1966 0008 2F2B     		cmp	r3, #47
 1967 000a 0D46     		mov	r5, r1
 1968 000c 0646     		mov	r6, r0
 1969 000e 00F00481 		beq	.L492
 1970 0012 5C2B     		cmp	r3, #92
 1971 0014 00F00181 		beq	.L492
 1972 0018 0024     		movs	r4, #0
 1973 001a B460     		str	r4, [r6, #8]
 1974 001c 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1975 001e 1F28     		cmp	r0, #31
 1976 0020 02D8     		bhi	.L497
 1977 0022 01E1     		b	.L621
 1978              	.L498:
 1979 0024 15F8010F 		ldrb	r0, [r5, #1]!	@ zero_extendqisi2
 1980              	.L497:
 1981 0028 2F28     		cmp	r0, #47
 1982 002a FBD0     		beq	.L498
 1983 002c 5C28     		cmp	r0, #92
 1984 002e F9D0     		beq	.L498
 1985 0030 80B2     		uxth	r0, r0
 1986 0032 1F28     		cmp	r0, #31
 1987 0034 D6F81C80 		ldr	r8, [r6, #28]
 1988 0038 2CD9     		bls	.L499
 1989 003a 2F28     		cmp	r0, #47
 1990 003c 2AD0     		beq	.L499
 1991 003e 5C28     		cmp	r0, #92
 1992 0040 28D0     		beq	.L499
 1993 0042 A8F10207 		sub	r7, r8, #2
 1994 0046 0121     		movs	r1, #1
 1995 0048 BB46     		mov	fp, r7
ARM GAS  /tmp/ccFB80Ed.s 			page 36


 1996 004a AA46     		mov	r10, r5
 1997 004c 0124     		movs	r4, #1
 1998 004e FFF7FEFF 		bl	ff_convert
 1999 0052 F8B1     		cbz	r0, .L499
 2000              	.L623:
 2001 0054 7F28     		cmp	r0, #127
 2002 0056 09D8     		bhi	.L503
 2003 0058 2228     		cmp	r0, #34
 2004 005a 1BD0     		beq	.L499
 2005 005c 2A23     		movs	r3, #42
 2006 005e 944A     		ldr	r2, .L630
 2007              	.L505:
 2008 0060 9842     		cmp	r0, r3
 2009 0062 17D0     		beq	.L499
 2010 0064 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 2011 0068 002B     		cmp	r3, #0
 2012 006a F9D1     		bne	.L505
 2013              	.L503:
 2014 006c 2BF8020F 		strh	r0, [fp, #2]!	@ movhi
 2015 0070 1AF8010F 		ldrb	r0, [r10, #1]!	@ zero_extendqisi2
 2016 0074 631C     		adds	r3, r4, #1
 2017 0076 1F28     		cmp	r0, #31
 2018 0078 6BD9     		bls	.L622
 2019 007a 2F28     		cmp	r0, #47
 2020 007c 0ED0     		beq	.L501
 2021 007e 5C28     		cmp	r0, #92
 2022 0080 0CD0     		beq	.L501
 2023 0082 B3F5807F 		cmp	r3, #256
 2024 0086 05D0     		beq	.L499
 2025 0088 0121     		movs	r1, #1
 2026 008a 1C46     		mov	r4, r3
 2027 008c FFF7FEFF 		bl	ff_convert
 2028 0090 0028     		cmp	r0, #0
 2029 0092 DFD1     		bne	.L623
 2030              	.L499:
 2031 0094 0620     		movs	r0, #6
 2032              	.L553:
 2033 0096 03B0     		add	sp, sp, #12
 2034              		@ sp needed
 2035 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2036              	.L501:
 2037 009c 4FF0000B 		mov	fp, #0
 2038 00a0 1D44     		add	r5, r5, r3
 2039              	.L545:
 2040 00a2 08EB4402 		add	r2, r8, r4, lsl #1
 2041              	.L511:
 2042 00a6 32F8023D 		ldrh	r3, [r2, #-2]!
 2043 00aa 202B     		cmp	r3, #32
 2044 00ac 01D0     		beq	.L509
 2045 00ae 2E2B     		cmp	r3, #46
 2046 00b0 02D1     		bne	.L510
 2047              	.L509:
 2048 00b2 013C     		subs	r4, r4, #1
 2049 00b4 F7D1     		bne	.L511
 2050 00b6 EDE7     		b	.L499
 2051              	.L510:
 2052 00b8 4FF02032 		mov	r2, #538976288
ARM GAS  /tmp/ccFB80Ed.s 			page 37


 2053 00bc 4FF0000A 		mov	r10, #0
 2054 00c0 B369     		ldr	r3, [r6, #24]
 2055 00c2 28F814A0 		strh	r10, [r8, r4, lsl #1]	@ movhi
 2056 00c6 5A60     		str	r2, [r3, #4]	@ unaligned
 2057 00c8 1A60     		str	r2, [r3]	@ unaligned
 2058 00ca C3F80720 		str	r2, [r3, #7]	@ unaligned
 2059 00ce 08EB4403 		add	r3, r8, r4, lsl #1
 2060 00d2 01E0     		b	.L546
 2061              	.L512:
 2062 00d4 0AF1010A 		add	r10, r10, #1
 2063              	.L546:
 2064 00d8 37F8020F 		ldrh	r0, [r7, #2]!
 2065 00dc 2028     		cmp	r0, #32
 2066 00de F9D0     		beq	.L512
 2067 00e0 2E28     		cmp	r0, #46
 2068 00e2 F7D0     		beq	.L512
 2069 00e4 BAF1000F 		cmp	r10, #0
 2070 00e8 01D0     		beq	.L514
 2071 00ea 4BF0030B 		orr	fp, fp, #3
 2072              	.L514:
 2073 00ee 33F8022D 		ldrh	r2, [r3, #-2]!
 2074 00f2 2E2A     		cmp	r2, #46
 2075 00f4 01D0     		beq	.L517
 2076 00f6 013C     		subs	r4, r4, #1
 2077 00f8 F9D1     		bne	.L514
 2078              	.L517:
 2079 00fa 0022     		movs	r2, #0
 2080 00fc 4FF00809 		mov	r9, #8
 2081 0100 1746     		mov	r7, r2
 2082              	.L515:
 2083 0102 0AF1010A 		add	r10, r10, #1
 2084 0106 98B3     		cbz	r0, .L518
 2085 0108 2028     		cmp	r0, #32
 2086 010a 1DD0     		beq	.L519
 2087 010c 2E28     		cmp	r0, #46
 2088 010e 19D0     		beq	.L624
 2089 0110 4A45     		cmp	r2, r9
 2090 0112 24D2     		bcs	.L523
 2091 0114 A245     		cmp	r10, r4
 2092 0116 76D0     		beq	.L524
 2093 0118 7F28     		cmp	r0, #127
 2094 011a 00F29C80 		bhi	.L625
 2095              	.L529:
 2096 011e 2B28     		cmp	r0, #43
 2097 0120 09D0     		beq	.L531
 2098 0122 2C21     		movs	r1, #44
 2099 0124 634B     		ldr	r3, .L630+4
 2100 0126 04E0     		b	.L533
 2101              	.L535:
 2102 0128 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
 2103 012c 0029     		cmp	r1, #0
 2104 012e 00F08680 		beq	.L626
 2105              	.L533:
 2106 0132 8142     		cmp	r1, r0
 2107 0134 F8D1     		bne	.L535
 2108              	.L531:
 2109 0136 5F20     		movs	r0, #95
ARM GAS  /tmp/ccFB80Ed.s 			page 38


 2110 0138 4BF0030B 		orr	fp, fp, #3
 2111              	.L536:
 2112 013c B169     		ldr	r1, [r6, #24]
 2113 013e 8854     		strb	r0, [r1, r2]
 2114 0140 0132     		adds	r2, r2, #1
 2115 0142 03E0     		b	.L522
 2116              	.L624:
 2117 0144 A245     		cmp	r10, r4
 2118 0146 08D0     		beq	.L521
 2119              	.L519:
 2120 0148 4BF0030B 		orr	fp, fp, #3
 2121              	.L522:
 2122 014c 38F81A00 		ldrh	r0, [r8, r10, lsl #1]
 2123 0150 D7E7     		b	.L515
 2124              	.L622:
 2125 0152 1D44     		add	r5, r5, r3
 2126 0154 4FF0040B 		mov	fp, #4
 2127 0158 A3E7     		b	.L545
 2128              	.L521:
 2129 015a 4A45     		cmp	r2, r9
 2130 015c 53D3     		bcc	.L524
 2131              	.L523:
 2132 015e B9F10B0F 		cmp	r9, #11
 2133 0162 00F09980 		beq	.L550
 2134 0166 A245     		cmp	r10, r4
 2135 0168 50D0     		beq	.L528
 2136 016a 4BF0030B 		orr	fp, fp, #3
 2137 016e 4DD9     		bls	.L528
 2138              	.L518:
 2139 0170 B269     		ldr	r2, [r6, #24]
 2140 0172 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 2141 0174 E529     		cmp	r1, #229
 2142 0176 6AD0     		beq	.L627
 2143              	.L538:
 2144 0178 B9F1080F 		cmp	r9, #8
 2145 017c 04BF     		itt	eq
 2146 017e BF00     		lsleq	r7, r7, #2
 2147 0180 FFB2     		uxtbeq	r7, r7
 2148              	.L527:
 2149 0182 07F00C03 		and	r3, r7, #12
 2150 0186 0C2B     		cmp	r3, #12
 2151 0188 56D0     		beq	.L539
 2152 018a 07F00301 		and	r1, r7, #3
 2153 018e 0329     		cmp	r1, #3
 2154 0190 52D0     		beq	.L539
 2155              	.L540:
 2156 0192 1BF0020F 		tst	fp, #2
 2157 0196 09D1     		bne	.L541
 2158 0198 07F00307 		and	r7, r7, #3
 2159 019c 012F     		cmp	r7, #1
 2160 019e 08BF     		it	eq
 2161 01a0 4BF0100B 		orreq	fp, fp, #16
 2162 01a4 042B     		cmp	r3, #4
 2163 01a6 08BF     		it	eq
 2164 01a8 4BF0080B 		orreq	fp, fp, #8
 2165              	.L541:
 2166 01ac 82F80BB0 		strb	fp, [r2, #11]
ARM GAS  /tmp/ccFB80Ed.s 			page 39


 2167 01b0 0021     		movs	r1, #0
 2168 01b2 3046     		mov	r0, r6
 2169 01b4 FFF7FEFF 		bl	dir_sdi
 2170 01b8 C8B9     		cbnz	r0, .L543
 2171 01ba 3046     		mov	r0, r6
 2172 01bc FFF7FEFF 		bl	dir_find.part.6
 2173 01c0 B369     		ldr	r3, [r6, #24]
 2174 01c2 DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 2175 01c4 A8B9     		cbnz	r0, .L549
 2176 01c6 5907     		lsls	r1, r3, #29
 2177 01c8 3FF565AF 		bmi	.L553
 2178 01cc 7369     		ldr	r3, [r6, #20]
 2179 01ce DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 2180 01d0 D206     		lsls	r2, r2, #27
 2181 01d2 53D5     		bpl	.L552
 2182 01d4 587D     		ldrb	r0, [r3, #21]	@ zero_extendqisi2
 2183 01d6 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 2184 01d8 D97E     		ldrb	r1, [r3, #27]	@ zero_extendqisi2
 2185 01da 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 2186 01dc 42EA0022 		orr	r2, r2, r0, lsl #8
 2187 01e0 43EA0123 		orr	r3, r3, r1, lsl #8
 2188 01e4 43EA0243 		orr	r3, r3, r2, lsl #16
 2189 01e8 B360     		str	r3, [r6, #8]
 2190 01ea 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 2191 01ec 1CE7     		b	.L497
 2192              	.L543:
 2193 01ee B369     		ldr	r3, [r6, #24]
 2194 01f0 DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 2195              	.L549:
 2196 01f2 0428     		cmp	r0, #4
 2197 01f4 7FF44FAF 		bne	.L553
 2198 01f8 13F0040F 		tst	r3, #4
 2199 01fc 08BF     		it	eq
 2200 01fe 0520     		moveq	r0, #5
 2201 0200 03B0     		add	sp, sp, #12
 2202              		@ sp needed
 2203 0202 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2204              	.L524:
 2205 0206 B9F10B0F 		cmp	r9, #11
 2206 020a 45D0     		beq	.L550
 2207              	.L528:
 2208 020c BF00     		lsls	r7, r7, #2
 2209 020e FFB2     		uxtb	r7, r7
 2210 0210 A246     		mov	r10, r4
 2211 0212 4FF00B09 		mov	r9, #11
 2212 0216 0822     		movs	r2, #8
 2213 0218 98E7     		b	.L522
 2214              	.L492:
 2215 021a 0024     		movs	r4, #0
 2216 021c 0135     		adds	r5, r5, #1
 2217 021e B460     		str	r4, [r6, #8]
 2218 0220 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 2219 0222 1F28     		cmp	r0, #31
 2220 0224 3FF600AF 		bhi	.L497
 2221              	.L621:
 2222 0228 2146     		mov	r1, r4
 2223 022a 3046     		mov	r0, r6
ARM GAS  /tmp/ccFB80Ed.s 			page 40


 2224 022c FFF7FEFF 		bl	dir_sdi
 2225 0230 7461     		str	r4, [r6, #20]
 2226 0232 03B0     		add	sp, sp, #12
 2227              		@ sp needed
 2228 0234 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2229              	.L539:
 2230 0238 4BF0020B 		orr	fp, fp, #2
 2231 023c A9E7     		b	.L540
 2232              	.L626:
 2233 023e A0F14101 		sub	r1, r0, #65
 2234 0242 1929     		cmp	r1, #25
 2235 0244 1ED8     		bhi	.L628
 2236 0246 47F00207 		orr	r7, r7, #2
 2237 024a C0B2     		uxtb	r0, r0
 2238 024c 76E7     		b	.L536
 2239              	.L627:
 2240 024e 0521     		movs	r1, #5
 2241 0250 1170     		strb	r1, [r2]
 2242 0252 B269     		ldr	r2, [r6, #24]
 2243 0254 90E7     		b	.L538
 2244              	.L625:
 2245 0256 0021     		movs	r1, #0
 2246 0258 0192     		str	r2, [sp, #4]
 2247 025a FFF7FEFF 		bl	ff_convert
 2248 025e 019A     		ldr	r2, [sp, #4]
 2249 0260 48B1     		cbz	r0, .L629
 2250 0262 154B     		ldr	r3, .L630+8
 2251 0264 4BF0020B 		orr	fp, fp, #2
 2252 0268 1844     		add	r0, r0, r3
 2253 026a 10F8800C 		ldrb	r0, [r0, #-128]	@ zero_extendqisi2
 2254 026e 0028     		cmp	r0, #0
 2255 0270 3FF461AF 		beq	.L531
 2256 0274 53E7     		b	.L529
 2257              	.L629:
 2258 0276 4BF0020B 		orr	fp, fp, #2
 2259 027a 5CE7     		b	.L531
 2260              	.L552:
 2261 027c 0520     		movs	r0, #5
 2262 027e 03B0     		add	sp, sp, #12
 2263              		@ sp needed
 2264 0280 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2265              	.L628:
 2266 0284 A0F16101 		sub	r1, r0, #97
 2267 0288 1929     		cmp	r1, #25
 2268 028a 97BF     		itett	ls
 2269 028c 2038     		subls	r0, r0, #32
 2270 028e C0B2     		uxtbhi	r0, r0
 2271 0290 C0B2     		uxtbls	r0, r0
 2272 0292 47F00107 		orrls	r7, r7, #1
 2273 0296 51E7     		b	.L536
 2274              	.L550:
 2275 0298 B269     		ldr	r2, [r6, #24]
 2276 029a 4BF0030B 		orr	fp, fp, #3
 2277 029e 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 2278 02a0 E52B     		cmp	r3, #229
 2279 02a2 7FF46EAF 		bne	.L527
 2280 02a6 0523     		movs	r3, #5
ARM GAS  /tmp/ccFB80Ed.s 			page 41


 2281 02a8 1370     		strb	r3, [r2]
 2282 02aa B269     		ldr	r2, [r6, #24]
 2283 02ac 69E7     		b	.L527
 2284              	.L631:
 2285 02ae 00BF     		.align	2
 2286              	.L630:
 2287 02b0 01000000 		.word	.LC0+1
 2288 02b4 01000000 		.word	.LC1+1
 2289 02b8 00000000 		.word	.LANCHOR3
 2290              		.size	follow_path, .-follow_path
 2291              		.section	.text.f_mount,"ax",%progbits
 2292              		.align	1
 2293              		.p2align 2,,3
 2294              		.global	f_mount
 2295              		.syntax unified
 2296              		.thumb
 2297              		.thumb_func
 2298              		.fpu softvfp
 2299              		.type	f_mount, %function
 2300              	f_mount:
 2301              		@ args = 0, pretend = 0, frame = 0
 2302              		@ frame_needed = 0, uses_anonymous_args = 0
 2303              		@ link register save eliminated.
 2304 0000 0128     		cmp	r0, #1
 2305 0002 01D9     		bls	.L650
 2306 0004 0B20     		movs	r0, #11
 2307 0006 7047     		bx	lr
 2308              	.L650:
 2309 0008 0A4B     		ldr	r3, .L651
 2310 000a 53F82020 		ldr	r2, [r3, r0, lsl #2]
 2311 000e 52B1     		cbz	r2, .L644
 2312 0010 10B4     		push	{r4}
 2313 0012 0024     		movs	r4, #0
 2314 0014 1470     		strb	r4, [r2]
 2315 0016 09B1     		cbz	r1, .L635
 2316 0018 0022     		movs	r2, #0
 2317 001a 0A70     		strb	r2, [r1]
 2318              	.L635:
 2319 001c 43F82010 		str	r1, [r3, r0, lsl #2]
 2320 0020 10BC     		pop	{r4}
 2321 0022 0020     		movs	r0, #0
 2322 0024 7047     		bx	lr
 2323              	.L644:
 2324 0026 09B1     		cbz	r1, .L646
 2325 0028 0022     		movs	r2, #0
 2326 002a 0A70     		strb	r2, [r1]
 2327              	.L646:
 2328 002c 43F82010 		str	r1, [r3, r0, lsl #2]
 2329 0030 0020     		movs	r0, #0
 2330 0032 7047     		bx	lr
 2331              	.L652:
 2332              		.align	2
 2333              	.L651:
 2334 0034 00000000 		.word	.LANCHOR0
 2335              		.size	f_mount, .-f_mount
 2336              		.section	.text.f_open,"ax",%progbits
 2337              		.align	1
ARM GAS  /tmp/ccFB80Ed.s 			page 42


 2338              		.p2align 2,,3
 2339              		.global	f_open
 2340              		.syntax unified
 2341              		.thumb
 2342              		.thumb_func
 2343              		.fpu softvfp
 2344              		.type	f_open, %function
 2345              	f_open:
 2346              		@ args = 0, pretend = 0, frame = 568
 2347              		@ frame_needed = 0, uses_anonymous_args = 0
 2348 0000 0023     		movs	r3, #0
 2349 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2350 0006 ADF50E7D 		sub	sp, sp, #568
 2351 000a 0360     		str	r3, [r0]
 2352 000c 1646     		mov	r6, r2
 2353 000e 0191     		str	r1, [sp, #4]
 2354 0010 02F01E02 		and	r2, r2, #30
 2355 0014 0446     		mov	r4, r0
 2356 0016 05A9     		add	r1, sp, #20
 2357 0018 01A8     		add	r0, sp, #4
 2358 001a FFF7FEFF 		bl	chk_mounted
 2359 001e 02AA     		add	r2, sp, #8
 2360 0020 0EAB     		add	r3, sp, #56
 2361 0022 0B92     		str	r2, [sp, #44]
 2362 0024 0C93     		str	r3, [sp, #48]
 2363 0026 06F01F07 		and	r7, r6, #31
 2364 002a 40B1     		cbz	r0, .L689
 2365              	.L654:
 2366 002c 16F01C0F 		tst	r6, #28
 2367 0030 01D0     		beq	.L674
 2368 0032 0428     		cmp	r0, #4
 2369 0034 49D0     		beq	.L690
 2370              	.L674:
 2371 0036 0DF50E7D 		add	sp, sp, #568
 2372              		@ sp needed
 2373 003a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2374              	.L689:
 2375 003e 0199     		ldr	r1, [sp, #4]
 2376 0040 05A8     		add	r0, sp, #20
 2377 0042 FFF7FEFF 		bl	follow_path
 2378 0046 0A9D     		ldr	r5, [sp, #40]
 2379 0048 0028     		cmp	r0, #0
 2380 004a EFD1     		bne	.L654
 2381 004c 002D     		cmp	r5, #0
 2382 004e 48D0     		beq	.L691
 2383 0050 16F01C0F 		tst	r6, #28
 2384 0054 07D0     		beq	.L692
 2385 0056 EB7A     		ldrb	r3, [r5, #11]	@ zero_extendqisi2
 2386 0058 13F0110F 		tst	r3, #17
 2387 005c 0FD1     		bne	.L673
 2388 005e 7307     		lsls	r3, r6, #29
 2389 0060 3BD5     		bpl	.L657
 2390 0062 0820     		movs	r0, #8
 2391 0064 E7E7     		b	.L674
 2392              	.L692:
 2393 0066 EB7A     		ldrb	r3, [r5, #11]	@ zero_extendqisi2
 2394 0068 D806     		lsls	r0, r3, #27
ARM GAS  /tmp/ccFB80Ed.s 			page 43


 2395 006a 04D5     		bpl	.L693
 2396 006c 0420     		movs	r0, #4
 2397 006e 0DF50E7D 		add	sp, sp, #568
 2398              		@ sp needed
 2399 0072 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2400              	.L693:
 2401 0076 B107     		lsls	r1, r6, #30
 2402 0078 06D5     		bpl	.L661
 2403 007a DA07     		lsls	r2, r3, #31
 2404 007c 04D5     		bpl	.L661
 2405              	.L673:
 2406 007e 0720     		movs	r0, #7
 2407 0080 0DF50E7D 		add	sp, sp, #568
 2408              		@ sp needed
 2409 0084 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2410              	.L661:
 2411 0088 3307     		lsls	r3, r6, #28
 2412 008a 059A     		ldr	r2, [sp, #20]
 2413 008c 01D5     		bpl	.L659
 2414              	.L665:
 2415 008e 47F02007 		orr	r7, r7, #32
 2416              	.L659:
 2417 0092 0020     		movs	r0, #0
 2418 0094 D36A     		ldr	r3, [r2, #44]
 2419 0096 A771     		strb	r7, [r4, #6]
 2420 0098 2562     		str	r5, [r4, #32]
 2421 009a E361     		str	r3, [r4, #28]
 2422 009c 6F7D     		ldrb	r7, [r5, #21]	@ zero_extendqisi2
 2423 009e 297D     		ldrb	r1, [r5, #20]	@ zero_extendqisi2
 2424 00a0 EE7E     		ldrb	r6, [r5, #27]	@ zero_extendqisi2
 2425 00a2 AB7E     		ldrb	r3, [r5, #26]	@ zero_extendqisi2
 2426 00a4 41EA0721 		orr	r1, r1, r7, lsl #8
 2427 00a8 43EA0623 		orr	r3, r3, r6, lsl #8
 2428 00ac 43EA0143 		orr	r3, r3, r1, lsl #16
 2429 00b0 2361     		str	r3, [r4, #16]
 2430 00b2 E969     		ldr	r1, [r5, #28]	@ unaligned
 2431 00b4 D388     		ldrh	r3, [r2, #6]
 2432 00b6 E160     		str	r1, [r4, #12]
 2433 00b8 2260     		str	r2, [r4]
 2434 00ba A380     		strh	r3, [r4, #4]	@ movhi
 2435 00bc A060     		str	r0, [r4, #8]
 2436 00be A061     		str	r0, [r4, #24]
 2437 00c0 6062     		str	r0, [r4, #36]
 2438 00c2 0DF50E7D 		add	sp, sp, #568
 2439              		@ sp needed
 2440 00c6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2441              	.L690:
 2442 00ca 05A8     		add	r0, sp, #20
 2443 00cc FFF7FEFF 		bl	dir_register
 2444 00d0 47F00807 		orr	r7, r7, #8
 2445 00d4 0A9D     		ldr	r5, [sp, #40]
 2446 00d6 0028     		cmp	r0, #0
 2447 00d8 ADD1     		bne	.L674
 2448              	.L657:
 2449 00da 3E07     		lsls	r6, r7, #28
 2450 00dc 03D4     		bmi	.L658
 2451 00de 059A     		ldr	r2, [sp, #20]
ARM GAS  /tmp/ccFB80Ed.s 			page 44


 2452 00e0 D7E7     		b	.L659
 2453              	.L691:
 2454 00e2 0620     		movs	r0, #6
 2455 00e4 A7E7     		b	.L674
 2456              	.L658:
 2457 00e6 FFF7FEFF 		bl	get_fattime
 2458 00ea 0023     		movs	r3, #0
 2459 00ec 4FF0010E 		mov	lr, #1
 2460 00f0 EE7E     		ldrb	r6, [r5, #27]	@ zero_extendqisi2
 2461 00f2 A97E     		ldrb	r1, [r5, #26]	@ zero_extendqisi2
 2462 00f4 C0F30722 		ubfx	r2, r0, #8, #8
 2463 00f8 EA73     		strb	r2, [r5, #15]
 2464 00fa 020C     		lsrs	r2, r0, #16
 2465 00fc 41EA0621 		orr	r1, r1, r6, lsl #8
 2466 0100 2A74     		strb	r2, [r5, #16]
 2467 0102 2E7D     		ldrb	r6, [r5, #20]	@ zero_extendqisi2
 2468 0104 6A7D     		ldrb	r2, [r5, #21]	@ zero_extendqisi2
 2469 0106 A873     		strb	r0, [r5, #14]
 2470 0108 46EA0226 		orr	r6, r6, r2, lsl #8
 2471 010c 059A     		ldr	r2, [sp, #20]
 2472 010e 000E     		lsrs	r0, r0, #24
 2473 0110 51EA0646 		orrs	r6, r1, r6, lsl #16
 2474 0114 6874     		strb	r0, [r5, #17]
 2475 0116 EB72     		strb	r3, [r5, #11]
 2476 0118 2B77     		strb	r3, [r5, #28]
 2477 011a 6B77     		strb	r3, [r5, #29]
 2478 011c AB77     		strb	r3, [r5, #30]
 2479 011e EB77     		strb	r3, [r5, #31]
 2480 0120 AB76     		strb	r3, [r5, #26]
 2481 0122 EB76     		strb	r3, [r5, #27]
 2482 0124 2B75     		strb	r3, [r5, #20]
 2483 0126 6B75     		strb	r3, [r5, #21]
 2484 0128 82F804E0 		strb	lr, [r2, #4]
 2485 012c AFD0     		beq	.L665
 2486 012e 7645     		cmp	r6, lr
 2487 0130 02D0     		beq	.L671
 2488 0132 9369     		ldr	r3, [r2, #24]
 2489 0134 9E42     		cmp	r6, r3
 2490 0136 01D3     		bcc	.L694
 2491              	.L671:
 2492 0138 0220     		movs	r0, #2
 2493 013a 7CE7     		b	.L674
 2494              	.L694:
 2495 013c 3146     		mov	r1, r6
 2496 013e 1046     		mov	r0, r2
 2497 0140 D2F82C80 		ldr	r8, [r2, #44]
 2498 0144 FFF7FEFF 		bl	remove_chain.part.7
 2499 0148 0028     		cmp	r0, #0
 2500 014a 7FF474AF 		bne	.L674
 2501 014e 0598     		ldr	r0, [sp, #20]
 2502 0150 013E     		subs	r6, r6, #1
 2503 0152 4146     		mov	r1, r8
 2504 0154 C660     		str	r6, [r0, #12]
 2505 0156 FFF7FEFF 		bl	move_window
 2506 015a 0028     		cmp	r0, #0
 2507 015c 7FF46BAF 		bne	.L674
 2508 0160 059A     		ldr	r2, [sp, #20]
ARM GAS  /tmp/ccFB80Ed.s 			page 45


 2509 0162 94E7     		b	.L665
 2510              		.size	f_open, .-f_open
 2511              		.section	.text.f_read,"ax",%progbits
 2512              		.align	1
 2513              		.p2align 2,,3
 2514              		.global	f_read
 2515              		.syntax unified
 2516              		.thumb
 2517              		.thumb_func
 2518              		.fpu softvfp
 2519              		.type	f_read, %function
 2520              	f_read:
 2521              		@ args = 0, pretend = 0, frame = 0
 2522              		@ frame_needed = 0, uses_anonymous_args = 0
 2523 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2524 0004 0025     		movs	r5, #0
 2525 0006 0468     		ldr	r4, [r0]
 2526 0008 1D60     		str	r5, [r3]
 2527 000a 0CB1     		cbz	r4, .L725
 2528 000c 2578     		ldrb	r5, [r4]	@ zero_extendqisi2
 2529 000e 25B9     		cbnz	r5, .L744
 2530              	.L725:
 2531 0010 4FF00909 		mov	r9, #9
 2532              	.L728:
 2533 0014 4846     		mov	r0, r9
 2534 0016 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2535              	.L744:
 2536 001a 8688     		ldrh	r6, [r0, #4]
 2537 001c E588     		ldrh	r5, [r4, #6]
 2538 001e AE42     		cmp	r6, r5
 2539 0020 F6D1     		bne	.L725
 2540 0022 0546     		mov	r5, r0
 2541 0024 2046     		mov	r0, r4
 2542 0026 1646     		mov	r6, r2
 2543 0028 0F46     		mov	r7, r1
 2544 002a 9846     		mov	r8, r3
 2545 002c FFF7FEFF 		bl	validate.part.1
 2546 0030 8146     		mov	r9, r0
 2547 0032 0028     		cmp	r0, #0
 2548 0034 EED1     		bne	.L728
 2549 0036 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2550 0038 1C06     		lsls	r4, r3, #24
 2551 003a 06D4     		bmi	.L726
 2552 003c D807     		lsls	r0, r3, #31
 2553 003e 09D4     		bmi	.L745
 2554 0040 4FF00709 		mov	r9, #7
 2555 0044 4846     		mov	r0, r9
 2556 0046 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2557              	.L726:
 2558 004a 4FF00209 		mov	r9, #2
 2559 004e 4846     		mov	r0, r9
 2560 0050 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2561              	.L745:
 2562 0054 AB68     		ldr	r3, [r5, #8]
 2563 0056 EA68     		ldr	r2, [r5, #12]
 2564 0058 D21A     		subs	r2, r2, r3
 2565 005a 9642     		cmp	r6, r2
ARM GAS  /tmp/ccFB80Ed.s 			page 46


 2566 005c 28BF     		it	cs
 2567 005e 1646     		movcs	r6, r2
 2568 0060 0EBB     		cbnz	r6, .L719
 2569 0062 D7E7     		b	.L728
 2570              	.L746:
 2571 0064 D5F818A0 		ldr	r10, [r5, #24]
 2572              	.L699:
 2573 0068 C4F50074 		rsb	r4, r4, #512
 2574 006c B442     		cmp	r4, r6
 2575 006e 5146     		mov	r1, r10
 2576 0070 28BF     		it	cs
 2577 0072 3446     		movcs	r4, r6
 2578 0074 FFF7FEFF 		bl	move_window
 2579 0078 0028     		cmp	r0, #0
 2580 007a 7AD1     		bne	.L743
 2581 007c AB68     		ldr	r3, [r5, #8]
 2582 007e 2968     		ldr	r1, [r5]
 2583 0080 C3F30803 		ubfx	r3, r3, #0, #9
 2584 0084 3033     		adds	r3, r3, #48
 2585 0086 1944     		add	r1, r1, r3
 2586 0088 2246     		mov	r2, r4
 2587 008a 3846     		mov	r0, r7
 2588 008c FFF7FEFF 		bl	memcpy
 2589              	.L717:
 2590 0090 AB68     		ldr	r3, [r5, #8]
 2591 0092 D8F80020 		ldr	r2, [r8]
 2592 0096 2344     		add	r3, r3, r4
 2593 0098 2244     		add	r2, r2, r4
 2594 009a 361B     		subs	r6, r6, r4
 2595 009c AB60     		str	r3, [r5, #8]
 2596 009e 2744     		add	r7, r7, r4
 2597 00a0 C8F80020 		str	r2, [r8]
 2598 00a4 B6D0     		beq	.L728
 2599              	.L719:
 2600 00a6 C3F30804 		ubfx	r4, r3, #0, #9
 2601 00aa 2868     		ldr	r0, [r5]
 2602 00ac 002C     		cmp	r4, #0
 2603 00ae D9D1     		bne	.L746
 2604 00b0 8478     		ldrb	r4, [r0, #2]	@ zero_extendqisi2
 2605 00b2 5A0A     		lsrs	r2, r3, #9
 2606 00b4 04F1FF3B 		add	fp, r4, #-1
 2607 00b8 0BEA020B 		and	fp, fp, r2
 2608 00bc 1BF0FF0B 		ands	fp, fp, #255
 2609 00c0 3DD1     		bne	.L700
 2610 00c2 002B     		cmp	r3, #0
 2611 00c4 3DD1     		bne	.L701
 2612 00c6 2A69     		ldr	r2, [r5, #16]
 2613              	.L702:
 2614 00c8 012A     		cmp	r2, #1
 2615 00ca 4BD9     		bls	.L721
 2616 00cc 511C     		adds	r1, r2, #1
 2617 00ce 50D0     		beq	.L743
 2618 00d0 2868     		ldr	r0, [r5]
 2619 00d2 6A61     		str	r2, [r5, #20]
 2620              	.L711:
 2621 00d4 8369     		ldr	r3, [r0, #24]
 2622 00d6 023A     		subs	r2, r2, #2
ARM GAS  /tmp/ccFB80Ed.s 			page 47


 2623 00d8 023B     		subs	r3, r3, #2
 2624 00da 9A42     		cmp	r2, r3
 2625 00dc 42D2     		bcs	.L721
 2626 00de 8178     		ldrb	r1, [r0, #2]	@ zero_extendqisi2
 2627 00e0 836A     		ldr	r3, [r0, #40]
 2628 00e2 02FB0132 		mla	r2, r2, r1, r3
 2629 00e6 002A     		cmp	r2, #0
 2630 00e8 3CD0     		beq	.L721
 2631 00ea 740A     		lsrs	r4, r6, #9
 2632 00ec 0BEB020A 		add	r10, fp, r2
 2633 00f0 1FD0     		beq	.L713
 2634 00f2 BB07     		lsls	r3, r7, #30
 2635 00f4 1DD1     		bne	.L713
 2636 00f6 0BEB0403 		add	r3, fp, r4
 2637 00fa 8B42     		cmp	r3, r1
 2638 00fc 88BF     		it	hi
 2639 00fe A1EB0B04 		subhi	r4, r1, fp
 2640 0102 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 2641 0104 E3B2     		uxtb	r3, r4
 2642 0106 5246     		mov	r2, r10
 2643 0108 3946     		mov	r1, r7
 2644 010a FFF7FEFF 		bl	disk_read
 2645 010e 80BB     		cbnz	r0, .L743
 2646 0110 2968     		ldr	r1, [r5]
 2647 0112 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 2648 0114 5BB1     		cbz	r3, .L716
 2649 0116 C86A     		ldr	r0, [r1, #44]
 2650 0118 A0EB0A00 		sub	r0, r0, r10
 2651 011c 8442     		cmp	r4, r0
 2652 011e 06D9     		bls	.L716
 2653 0120 3031     		adds	r1, r1, #48
 2654 0122 07EB4020 		add	r0, r7, r0, lsl #9
 2655 0126 4FF40072 		mov	r2, #512
 2656 012a FFF7FEFF 		bl	memcpy
 2657              	.L716:
 2658 012e 6402     		lsls	r4, r4, #9
 2659 0130 AEE7     		b	.L717
 2660              	.L713:
 2661 0132 AC68     		ldr	r4, [r5, #8]
 2662 0134 C5F818A0 		str	r10, [r5, #24]
 2663 0138 C4F30804 		ubfx	r4, r4, #0, #9
 2664 013c 94E7     		b	.L699
 2665              	.L700:
 2666 013e 6A69     		ldr	r2, [r5, #20]
 2667 0140 C8E7     		b	.L711
 2668              	.L701:
 2669 0142 696A     		ldr	r1, [r5, #36]
 2670 0144 E1B1     		cbz	r1, .L703
 2671 0146 4B68     		ldr	r3, [r1, #4]
 2672 0148 B2FBF4F2 		udiv	r2, r2, r4
 2673 014c 0431     		adds	r1, r1, #4
 2674 014e 23B9     		cbnz	r3, .L739
 2675 0150 08E0     		b	.L721
 2676              	.L747:
 2677 0152 D21A     		subs	r2, r2, r3
 2678 0154 51F8083F 		ldr	r3, [r1, #8]!
 2679 0158 23B1     		cbz	r3, .L721
ARM GAS  /tmp/ccFB80Ed.s 			page 48


 2680              	.L739:
 2681 015a 9342     		cmp	r3, r2
 2682 015c F9D9     		bls	.L747
 2683 015e 4868     		ldr	r0, [r1, #4]
 2684 0160 0244     		add	r2, r2, r0
 2685 0162 B1E7     		b	.L702
 2686              	.L721:
 2687 0164 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2688 0166 4FF00209 		mov	r9, #2
 2689 016a 63F07F03 		orn	r3, r3, #127
 2690 016e AB71     		strb	r3, [r5, #6]
 2691 0170 50E7     		b	.L728
 2692              	.L743:
 2693 0172 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2694 0174 4FF00109 		mov	r9, #1
 2695 0178 63F07F03 		orn	r3, r3, #127
 2696 017c AB71     		strb	r3, [r5, #6]
 2697 017e 49E7     		b	.L728
 2698              	.L703:
 2699 0180 6969     		ldr	r1, [r5, #20]
 2700 0182 0129     		cmp	r1, #1
 2701 0184 EED9     		bls	.L721
 2702 0186 8369     		ldr	r3, [r0, #24]
 2703 0188 9942     		cmp	r1, r3
 2704 018a EBD2     		bcs	.L721
 2705 018c FFF7FEFF 		bl	get_fat.part.4
 2706 0190 0246     		mov	r2, r0
 2707 0192 99E7     		b	.L702
 2708              		.size	f_read, .-f_read
 2709              		.section	.text.f_write,"ax",%progbits
 2710              		.align	1
 2711              		.p2align 2,,3
 2712              		.global	f_write
 2713              		.syntax unified
 2714              		.thumb
 2715              		.thumb_func
 2716              		.fpu softvfp
 2717              		.type	f_write, %function
 2718              	f_write:
 2719              		@ args = 0, pretend = 0, frame = 8
 2720              		@ frame_needed = 0, uses_anonymous_args = 0
 2721 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2722 0004 9846     		mov	r8, r3
 2723 0006 0023     		movs	r3, #0
 2724 0008 0546     		mov	r5, r0
 2725 000a 0068     		ldr	r0, [r0]
 2726 000c 83B0     		sub	sp, sp, #12
 2727 000e C8F80030 		str	r3, [r8]
 2728 0012 08B1     		cbz	r0, .L784
 2729 0014 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 2730 0016 2BB9     		cbnz	r3, .L798
 2731              	.L784:
 2732 0018 4FF00909 		mov	r9, #9
 2733              	.L787:
 2734 001c 4846     		mov	r0, r9
 2735 001e 03B0     		add	sp, sp, #12
 2736              		@ sp needed
ARM GAS  /tmp/ccFB80Ed.s 			page 49


 2737 0020 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2738              	.L798:
 2739 0024 1646     		mov	r6, r2
 2740 0026 C388     		ldrh	r3, [r0, #6]
 2741 0028 AA88     		ldrh	r2, [r5, #4]
 2742 002a 9A42     		cmp	r2, r3
 2743 002c F4D1     		bne	.L784
 2744 002e 0191     		str	r1, [sp, #4]
 2745 0030 FFF7FEFF 		bl	validate.part.1
 2746 0034 8146     		mov	r9, r0
 2747 0036 0028     		cmp	r0, #0
 2748 0038 F0D1     		bne	.L787
 2749 003a AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2750 003c 1C06     		lsls	r4, r3, #24
 2751 003e 09D4     		bmi	.L785
 2752 0040 13F0020F 		tst	r3, #2
 2753 0044 0199     		ldr	r1, [sp, #4]
 2754 0046 0BD1     		bne	.L799
 2755 0048 4FF00709 		mov	r9, #7
 2756 004c 4846     		mov	r0, r9
 2757 004e 03B0     		add	sp, sp, #12
 2758              		@ sp needed
 2759 0050 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2760              	.L785:
 2761 0054 4FF00209 		mov	r9, #2
 2762 0058 4846     		mov	r0, r9
 2763 005a 03B0     		add	sp, sp, #12
 2764              		@ sp needed
 2765 005c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2766              	.L799:
 2767 0060 EA68     		ldr	r2, [r5, #12]
 2768 0062 F242     		cmn	r2, r6
 2769 0064 80F0BE80 		bcs	.L795
 2770 0068 002E     		cmp	r6, #0
 2771 006a 00F0BB80 		beq	.L795
 2772 006e 0F46     		mov	r7, r1
 2773 0070 4FF0010A 		mov	r10, #1
 2774 0074 A968     		ldr	r1, [r5, #8]
 2775 0076 25E0     		b	.L778
 2776              	.L800:
 2777 0078 D5F818B0 		ldr	fp, [r5, #24]
 2778 007c 2868     		ldr	r0, [r5]
 2779              	.L754:
 2780 007e C4F50074 		rsb	r4, r4, #512
 2781 0082 B442     		cmp	r4, r6
 2782 0084 5946     		mov	r1, fp
 2783 0086 28BF     		it	cs
 2784 0088 3446     		movcs	r4, r6
 2785 008a FFF7FEFF 		bl	move_window
 2786 008e 0028     		cmp	r0, #0
 2787 0090 40F09080 		bne	.L797
 2788 0094 AB68     		ldr	r3, [r5, #8]
 2789 0096 2868     		ldr	r0, [r5]
 2790 0098 C3F30803 		ubfx	r3, r3, #0, #9
 2791 009c 3033     		adds	r3, r3, #48
 2792 009e 1844     		add	r0, r0, r3
 2793 00a0 2246     		mov	r2, r4
ARM GAS  /tmp/ccFB80Ed.s 			page 50


 2794 00a2 3946     		mov	r1, r7
 2795 00a4 FFF7FEFF 		bl	memcpy
 2796 00a8 2B68     		ldr	r3, [r5]
 2797 00aa 83F804A0 		strb	r10, [r3, #4]
 2798              	.L774:
 2799 00ae A968     		ldr	r1, [r5, #8]
 2800 00b0 D8F80030 		ldr	r3, [r8]
 2801 00b4 2144     		add	r1, r1, r4
 2802 00b6 2344     		add	r3, r3, r4
 2803 00b8 361B     		subs	r6, r6, r4
 2804 00ba A960     		str	r1, [r5, #8]
 2805 00bc 2744     		add	r7, r7, r4
 2806 00be C8F80030 		str	r3, [r8]
 2807 00c2 65D0     		beq	.L794
 2808              	.L778:
 2809 00c4 C1F30804 		ubfx	r4, r1, #0, #9
 2810 00c8 002C     		cmp	r4, #0
 2811 00ca D5D1     		bne	.L800
 2812 00cc 2868     		ldr	r0, [r5]
 2813 00ce 4A0A     		lsrs	r2, r1, #9
 2814 00d0 90F802C0 		ldrb	ip, [r0, #2]	@ zero_extendqisi2
 2815 00d4 0CF1FF33 		add	r3, ip, #-1
 2816 00d8 1340     		ands	r3, r3, r2
 2817 00da 13F0FF03 		ands	r3, r3, #255
 2818 00de 0BD1     		bne	.L755
 2819 00e0 0029     		cmp	r1, #0
 2820 00e2 3FD1     		bne	.L756
 2821 00e4 2A69     		ldr	r2, [r5, #16]
 2822 00e6 002A     		cmp	r2, #0
 2823 00e8 7ED0     		beq	.L801
 2824              	.L757:
 2825 00ea 012A     		cmp	r2, #1
 2826 00ec 00F09380 		beq	.L780
 2827 00f0 501C     		adds	r0, r2, #1
 2828 00f2 5FD0     		beq	.L797
 2829 00f4 2868     		ldr	r0, [r5]
 2830 00f6 6A61     		str	r2, [r5, #20]
 2831              	.L755:
 2832 00f8 C16A     		ldr	r1, [r0, #44]
 2833 00fa AA69     		ldr	r2, [r5, #24]
 2834 00fc 9142     		cmp	r1, r2
 2835 00fe 60D0     		beq	.L802
 2836              	.L767:
 2837 0100 6969     		ldr	r1, [r5, #20]
 2838 0102 8269     		ldr	r2, [r0, #24]
 2839 0104 A1F1020B 		sub	fp, r1, #2
 2840 0108 023A     		subs	r2, r2, #2
 2841 010a 9345     		cmp	fp, r2
 2842 010c 80F08380 		bcs	.L780
 2843 0110 8278     		ldrb	r2, [r0, #2]	@ zero_extendqisi2
 2844 0112 816A     		ldr	r1, [r0, #40]
 2845 0114 0BFB0211 		mla	r1, fp, r2, r1
 2846 0118 0029     		cmp	r1, #0
 2847 011a 7CD0     		beq	.L780
 2848 011c 740A     		lsrs	r4, r6, #9
 2849 011e 03EB010B 		add	fp, r3, r1
 2850 0122 16D0     		beq	.L770
ARM GAS  /tmp/ccFB80Ed.s 			page 51


 2851 0124 B907     		lsls	r1, r7, #30
 2852 0126 14D1     		bne	.L770
 2853 0128 1919     		adds	r1, r3, r4
 2854 012a 9142     		cmp	r1, r2
 2855 012c 88BF     		it	hi
 2856 012e D41A     		subhi	r4, r2, r3
 2857 0130 E3B2     		uxtb	r3, r4
 2858 0132 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 2859 0134 5A46     		mov	r2, fp
 2860 0136 3946     		mov	r1, r7
 2861 0138 FFF7FEFF 		bl	disk_write
 2862 013c 0346     		mov	r3, r0
 2863 013e 0028     		cmp	r0, #0
 2864 0140 38D1     		bne	.L797
 2865 0142 2868     		ldr	r0, [r5]
 2866 0144 C16A     		ldr	r1, [r0, #44]
 2867 0146 A1EB0B01 		sub	r1, r1, fp
 2868 014a 8C42     		cmp	r4, r1
 2869 014c 57D8     		bhi	.L803
 2870              	.L773:
 2871 014e 6402     		lsls	r4, r4, #9
 2872 0150 ADE7     		b	.L774
 2873              	.L770:
 2874 0152 AC68     		ldr	r4, [r5, #8]
 2875 0154 EB68     		ldr	r3, [r5, #12]
 2876 0156 9C42     		cmp	r4, r3
 2877 0158 23D2     		bcs	.L804
 2878              	.L775:
 2879 015a C5F818B0 		str	fp, [r5, #24]
 2880 015e C4F30804 		ubfx	r4, r4, #0, #9
 2881 0162 8CE7     		b	.L754
 2882              	.L756:
 2883 0164 D5F824E0 		ldr	lr, [r5, #36]
 2884 0168 BEF1000F 		cmp	lr, #0
 2885 016c 5AD0     		beq	.L759
 2886 016e DEF80440 		ldr	r4, [lr, #4]
 2887 0172 B2FBFCF0 		udiv	r0, r2, ip
 2888 0176 0EF10402 		add	r2, lr, #4
 2889 017a 4CB1     		cbz	r4, .L794
 2890 017c A042     		cmp	r0, r4
 2891 017e 02D2     		bcs	.L763
 2892 0180 28E0     		b	.L761
 2893              	.L764:
 2894 0182 8442     		cmp	r4, r0
 2895 0184 26D8     		bhi	.L761
 2896              	.L763:
 2897 0186 001B     		subs	r0, r0, r4
 2898 0188 52F8084F 		ldr	r4, [r2, #8]!
 2899 018c 002C     		cmp	r4, #0
 2900 018e F8D1     		bne	.L764
 2901              	.L794:
 2902 0190 EA68     		ldr	r2, [r5, #12]
 2903 0192 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2904              	.L751:
 2905 0194 9142     		cmp	r1, r2
 2906 0196 43F02003 		orr	r3, r3, #32
 2907 019a 88BF     		it	hi
ARM GAS  /tmp/ccFB80Ed.s 			page 52


 2908 019c E960     		strhi	r1, [r5, #12]
 2909 019e AB71     		strb	r3, [r5, #6]
 2910 01a0 3CE7     		b	.L787
 2911              	.L804:
 2912 01a2 0021     		movs	r1, #0
 2913 01a4 FFF7FEFF 		bl	move_window
 2914 01a8 20B9     		cbnz	r0, .L797
 2915 01aa 2868     		ldr	r0, [r5]
 2916 01ac AC68     		ldr	r4, [r5, #8]
 2917 01ae C0F82CB0 		str	fp, [r0, #44]
 2918 01b2 D2E7     		b	.L775
 2919              	.L797:
 2920 01b4 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2921 01b6 4FF00109 		mov	r9, #1
 2922 01ba 63F07F03 		orn	r3, r3, #127
 2923 01be AB71     		strb	r3, [r5, #6]
 2924 01c0 2CE7     		b	.L787
 2925              	.L802:
 2926 01c2 0021     		movs	r1, #0
 2927 01c4 0193     		str	r3, [sp, #4]
 2928 01c6 FFF7FEFF 		bl	move_window
 2929 01ca 0028     		cmp	r0, #0
 2930 01cc F2D1     		bne	.L797
 2931 01ce 2868     		ldr	r0, [r5]
 2932 01d0 019B     		ldr	r3, [sp, #4]
 2933 01d2 95E7     		b	.L767
 2934              	.L761:
 2935 01d4 5268     		ldr	r2, [r2, #4]
 2936 01d6 0244     		add	r2, r2, r0
 2937 01d8 002A     		cmp	r2, #0
 2938 01da 86D1     		bne	.L757
 2939              	.L805:
 2940 01dc A968     		ldr	r1, [r5, #8]
 2941 01de EA68     		ldr	r2, [r5, #12]
 2942 01e0 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2943 01e2 D7E7     		b	.L751
 2944              	.L795:
 2945 01e4 A968     		ldr	r1, [r5, #8]
 2946 01e6 D5E7     		b	.L751
 2947              	.L801:
 2948 01e8 1946     		mov	r1, r3
 2949 01ea 0193     		str	r3, [sp, #4]
 2950 01ec FFF7FEFF 		bl	create_chain
 2951 01f0 0246     		mov	r2, r0
 2952 01f2 2861     		str	r0, [r5, #16]
 2953 01f4 019B     		ldr	r3, [sp, #4]
 2954 01f6 002A     		cmp	r2, #0
 2955 01f8 7FF477AF 		bne	.L757
 2956 01fc EEE7     		b	.L805
 2957              	.L803:
 2958 01fe 4FF40072 		mov	r2, #512
 2959 0202 07EB4121 		add	r1, r7, r1, lsl #9
 2960 0206 3030     		adds	r0, r0, #48
 2961 0208 0193     		str	r3, [sp, #4]
 2962 020a FFF7FEFF 		bl	memcpy
 2963 020e 2A68     		ldr	r2, [r5]
 2964 0210 019B     		ldr	r3, [sp, #4]
ARM GAS  /tmp/ccFB80Ed.s 			page 53


 2965 0212 1371     		strb	r3, [r2, #4]
 2966 0214 9BE7     		b	.L773
 2967              	.L780:
 2968 0216 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2969 0218 4FF00209 		mov	r9, #2
 2970 021c 63F07F03 		orn	r3, r3, #127
 2971 0220 AB71     		strb	r3, [r5, #6]
 2972 0222 FBE6     		b	.L787
 2973              	.L759:
 2974 0224 6969     		ldr	r1, [r5, #20]
 2975 0226 0193     		str	r3, [sp, #4]
 2976 0228 FFF7FEFF 		bl	create_chain
 2977 022c 0246     		mov	r2, r0
 2978 022e 019B     		ldr	r3, [sp, #4]
 2979 0230 002A     		cmp	r2, #0
 2980 0232 7FF45AAF 		bne	.L757
 2981 0236 D1E7     		b	.L805
 2982              		.size	f_write, .-f_write
 2983              		.section	.text.f_sync,"ax",%progbits
 2984              		.align	1
 2985              		.p2align 2,,3
 2986              		.global	f_sync
 2987              		.syntax unified
 2988              		.thumb
 2989              		.thumb_func
 2990              		.fpu softvfp
 2991              		.type	f_sync, %function
 2992              	f_sync:
 2993              		@ args = 0, pretend = 0, frame = 0
 2994              		@ frame_needed = 0, uses_anonymous_args = 0
 2995 0000 0368     		ldr	r3, [r0]
 2996 0002 0BB1     		cbz	r3, .L810
 2997 0004 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 2998 0006 0AB9     		cbnz	r2, .L818
 2999              	.L810:
 3000 0008 0920     		movs	r0, #9
 3001 000a 7047     		bx	lr
 3002              	.L818:
 3003 000c 8188     		ldrh	r1, [r0, #4]
 3004 000e DA88     		ldrh	r2, [r3, #6]
 3005 0010 9142     		cmp	r1, r2
 3006 0012 F9D1     		bne	.L810
 3007 0014 70B5     		push	{r4, r5, r6, lr}
 3008 0016 0446     		mov	r4, r0
 3009 0018 1846     		mov	r0, r3
 3010 001a FFF7FEFF 		bl	validate.part.1
 3011 001e 10B9     		cbnz	r0, .L807
 3012 0020 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3013 0022 9B06     		lsls	r3, r3, #26
 3014 0024 00D4     		bmi	.L819
 3015              	.L807:
 3016 0026 70BD     		pop	{r4, r5, r6, pc}
 3017              	.L819:
 3018 0028 E169     		ldr	r1, [r4, #28]
 3019 002a 2068     		ldr	r0, [r4]
 3020 002c FFF7FEFF 		bl	move_window
 3021 0030 0028     		cmp	r0, #0
ARM GAS  /tmp/ccFB80Ed.s 			page 54


 3022 0032 F8D1     		bne	.L807
 3023 0034 256A     		ldr	r5, [r4, #32]
 3024 0036 EB7A     		ldrb	r3, [r5, #11]	@ zero_extendqisi2
 3025 0038 43F02003 		orr	r3, r3, #32
 3026 003c EB72     		strb	r3, [r5, #11]
 3027 003e E368     		ldr	r3, [r4, #12]
 3028 0040 2B77     		strb	r3, [r5, #28]
 3029 0042 A389     		ldrh	r3, [r4, #12]
 3030 0044 1B0A     		lsrs	r3, r3, #8
 3031 0046 6B77     		strb	r3, [r5, #29]
 3032 0048 E389     		ldrh	r3, [r4, #14]
 3033 004a AB77     		strb	r3, [r5, #30]
 3034 004c E37B     		ldrb	r3, [r4, #15]	@ zero_extendqisi2
 3035 004e EB77     		strb	r3, [r5, #31]
 3036 0050 2369     		ldr	r3, [r4, #16]
 3037 0052 AB76     		strb	r3, [r5, #26]
 3038 0054 238A     		ldrh	r3, [r4, #16]
 3039 0056 1B0A     		lsrs	r3, r3, #8
 3040 0058 EB76     		strb	r3, [r5, #27]
 3041 005a 638A     		ldrh	r3, [r4, #18]
 3042 005c 2B75     		strb	r3, [r5, #20]
 3043 005e 638A     		ldrh	r3, [r4, #18]
 3044 0060 1B0A     		lsrs	r3, r3, #8
 3045 0062 6B75     		strb	r3, [r5, #21]
 3046 0064 FFF7FEFF 		bl	get_fattime
 3047 0068 0121     		movs	r1, #1
 3048 006a C0F30726 		ubfx	r6, r0, #8, #8
 3049 006e 020C     		lsrs	r2, r0, #16
 3050 0070 030E     		lsrs	r3, r0, #24
 3051 0072 A875     		strb	r0, [r5, #22]
 3052 0074 EE75     		strb	r6, [r5, #23]
 3053 0076 2A76     		strb	r2, [r5, #24]
 3054 0078 6B76     		strb	r3, [r5, #25]
 3055 007a A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3056 007c 2268     		ldr	r2, [r4]
 3057 007e 23F02003 		bic	r3, r3, #32
 3058 0082 A371     		strb	r3, [r4, #6]
 3059 0084 1171     		strb	r1, [r2, #4]
 3060 0086 1046     		mov	r0, r2
 3061 0088 BDE87040 		pop	{r4, r5, r6, lr}
 3062 008c FFF7FEBF 		b	sync
 3063              		.size	f_sync, .-f_sync
 3064              		.section	.text.f_close,"ax",%progbits
 3065              		.align	1
 3066              		.p2align 2,,3
 3067              		.global	f_close
 3068              		.syntax unified
 3069              		.thumb
 3070              		.thumb_func
 3071              		.fpu softvfp
 3072              		.type	f_close, %function
 3073              	f_close:
 3074              		@ args = 0, pretend = 0, frame = 0
 3075              		@ frame_needed = 0, uses_anonymous_args = 0
 3076 0000 10B5     		push	{r4, lr}
 3077 0002 0446     		mov	r4, r0
 3078 0004 FFF7FEFF 		bl	f_sync
ARM GAS  /tmp/ccFB80Ed.s 			page 55


 3079 0008 00B9     		cbnz	r0, .L821
 3080 000a 2060     		str	r0, [r4]
 3081              	.L821:
 3082 000c 10BD     		pop	{r4, pc}
 3083              		.size	f_close, .-f_close
 3084 000e 00BF     		.section	.text.f_lseek,"ax",%progbits
 3085              		.align	1
 3086              		.p2align 2,,3
 3087              		.global	f_lseek
 3088              		.syntax unified
 3089              		.thumb
 3090              		.thumb_func
 3091              		.fpu softvfp
 3092              		.type	f_lseek, %function
 3093              	f_lseek:
 3094              		@ args = 0, pretend = 0, frame = 0
 3095              		@ frame_needed = 0, uses_anonymous_args = 0
 3096 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3097 0004 0446     		mov	r4, r0
 3098 0006 0068     		ldr	r0, [r0]
 3099 0008 08B1     		cbz	r0, .L869
 3100 000a 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3101 000c 1BB9     		cbnz	r3, .L893
 3102              	.L869:
 3103 000e 0926     		movs	r6, #9
 3104              	.L824:
 3105 0010 3046     		mov	r0, r6
 3106 0012 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3107              	.L893:
 3108 0016 A288     		ldrh	r2, [r4, #4]
 3109 0018 C388     		ldrh	r3, [r0, #6]
 3110 001a 9A42     		cmp	r2, r3
 3111 001c F7D1     		bne	.L869
 3112 001e 0D46     		mov	r5, r1
 3113 0020 FFF7FEFF 		bl	validate.part.1
 3114 0024 0646     		mov	r6, r0
 3115 0026 0028     		cmp	r0, #0
 3116 0028 F2D1     		bne	.L824
 3117 002a A179     		ldrb	r1, [r4, #6]	@ zero_extendqisi2
 3118 002c 0B06     		lsls	r3, r1, #24
 3119 002e 40D4     		bmi	.L870
 3120 0030 606A     		ldr	r0, [r4, #36]
 3121 0032 0028     		cmp	r0, #0
 3122 0034 61D0     		beq	.L825
 3123 0036 6F1C     		adds	r7, r5, #1
 3124 0038 3FD0     		beq	.L894
 3125 003a E368     		ldr	r3, [r4, #12]
 3126 003c 9D42     		cmp	r5, r3
 3127 003e 28BF     		it	cs
 3128 0040 1D46     		movcs	r5, r3
 3129 0042 A560     		str	r5, [r4, #8]
 3130 0044 002D     		cmp	r5, #0
 3131 0046 E3D0     		beq	.L824
 3132 0048 D4F800C0 		ldr	ip, [r4]
 3133 004c 6F1E     		subs	r7, r5, #1
 3134 004e 9CF802E0 		ldrb	lr, [ip, #2]	@ zero_extendqisi2
 3135 0052 4368     		ldr	r3, [r0, #4]
ARM GAS  /tmp/ccFB80Ed.s 			page 56


 3136 0054 7F0A     		lsrs	r7, r7, #9
 3137 0056 B7FBFEF2 		udiv	r2, r7, lr
 3138 005a 0430     		adds	r0, r0, #4
 3139 005c 4BB1     		cbz	r3, .L874
 3140 005e 9A42     		cmp	r2, r3
 3141 0060 02D2     		bcs	.L839
 3142 0062 46E0     		b	.L837
 3143              	.L887:
 3144 0064 9342     		cmp	r3, r2
 3145 0066 44D8     		bhi	.L837
 3146              	.L839:
 3147 0068 D21A     		subs	r2, r2, r3
 3148 006a 50F8083F 		ldr	r3, [r0, #8]!
 3149 006e 002B     		cmp	r3, #0
 3150 0070 F8D1     		bne	.L887
 3151              	.L874:
 3152 0072 6FF00100 		mvn	r0, #1
 3153              	.L836:
 3154 0076 DCF81820 		ldr	r2, [ip, #24]
 3155 007a 6361     		str	r3, [r4, #20]
 3156 007c 931E     		subs	r3, r2, #2
 3157 007e 8342     		cmp	r3, r0
 3158 0080 12D9     		bls	.L841
 3159 0082 DCF82830 		ldr	r3, [ip, #40]
 3160 0086 00FB0E30 		mla	r0, r0, lr, r3
 3161 008a 68B1     		cbz	r0, .L841
 3162 008c C5F30805 		ubfx	r5, r5, #0, #9
 3163 0090 002D     		cmp	r5, #0
 3164 0092 BDD0     		beq	.L824
 3165 0094 0EF1FF3E 		add	lr, lr, #-1
 3166 0098 0EEA0707 		and	r7, lr, r7
 3167 009c A369     		ldr	r3, [r4, #24]
 3168 009e 0744     		add	r7, r7, r0
 3169 00a0 9F42     		cmp	r7, r3
 3170 00a2 B5D0     		beq	.L824
 3171 00a4 A761     		str	r7, [r4, #24]
 3172 00a6 B3E7     		b	.L824
 3173              	.L841:
 3174 00a8 61F07F01 		orn	r1, r1, #127
 3175 00ac A171     		strb	r1, [r4, #6]
 3176 00ae 0226     		movs	r6, #2
 3177 00b0 AEE7     		b	.L824
 3178              	.L870:
 3179 00b2 0226     		movs	r6, #2
 3180 00b4 3046     		mov	r0, r6
 3181 00b6 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3182              	.L894:
 3183 00ba 2769     		ldr	r7, [r4, #16]
 3184 00bc 00F1040A 		add	r10, r0, #4
 3185 00c0 D0F80090 		ldr	r9, [r0]
 3186 00c4 4FF00208 		mov	r8, #2
 3187 00c8 002F     		cmp	r7, #0
 3188 00ca 5BD0     		beq	.L827
 3189 00cc 2068     		ldr	r0, [r4]
 3190              	.L834:
 3191 00ce 3D46     		mov	r5, r7
 3192 00d0 4FF0000B 		mov	fp, #0
ARM GAS  /tmp/ccFB80Ed.s 			page 57


 3193              	.L832:
 3194 00d4 012D     		cmp	r5, #1
 3195 00d6 0BF1010B 		add	fp, fp, #1
 3196 00da 02D9     		bls	.L862
 3197 00dc 8369     		ldr	r3, [r0, #24]
 3198 00de 9D42     		cmp	r5, r3
 3199 00e0 56D3     		bcc	.L895
 3200              	.L862:
 3201 00e2 0226     		movs	r6, #2
 3202 00e4 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3203 00e6 3046     		mov	r0, r6
 3204 00e8 63F07F03 		orn	r3, r3, #127
 3205 00ec A371     		strb	r3, [r4, #6]
 3206 00ee BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3207              	.L837:
 3208 00f2 4368     		ldr	r3, [r0, #4]
 3209 00f4 1344     		add	r3, r3, r2
 3210 00f6 981E     		subs	r0, r3, #2
 3211 00f8 BDE7     		b	.L836
 3212              	.L825:
 3213 00fa E368     		ldr	r3, [r4, #12]
 3214 00fc 9D42     		cmp	r5, r3
 3215 00fe 03D9     		bls	.L844
 3216 0100 11F0020F 		tst	r1, #2
 3217 0104 08BF     		it	eq
 3218 0106 1D46     		moveq	r5, r3
 3219              	.L844:
 3220 0108 0022     		movs	r2, #0
 3221 010a A368     		ldr	r3, [r4, #8]
 3222 010c A260     		str	r2, [r4, #8]
 3223 010e 002D     		cmp	r5, #0
 3224 0110 3FF47EAF 		beq	.L824
 3225 0114 2068     		ldr	r0, [r4]
 3226 0116 8778     		ldrb	r7, [r0, #2]	@ zero_extendqisi2
 3227 0118 7F02     		lsls	r7, r7, #9
 3228 011a 002B     		cmp	r3, #0
 3229 011c 4CD0     		beq	.L845
 3230 011e 013B     		subs	r3, r3, #1
 3231 0120 6A1E     		subs	r2, r5, #1
 3232 0122 B3FBF7F1 		udiv	r1, r3, r7
 3233 0126 B2FBF7F2 		udiv	r2, r2, r7
 3234 012a 8A42     		cmp	r2, r1
 3235 012c 44D3     		bcc	.L845
 3236 012e 7A42     		negs	r2, r7
 3237 0130 1340     		ands	r3, r3, r2
 3238 0132 6169     		ldr	r1, [r4, #20]
 3239 0134 A360     		str	r3, [r4, #8]
 3240 0136 ED1A     		subs	r5, r5, r3
 3241              	.L846:
 3242 0138 0029     		cmp	r1, #0
 3243 013a 46D1     		bne	.L850
 3244 013c A368     		ldr	r3, [r4, #8]
 3245              	.L851:
 3246 013e C3F30802 		ubfx	r2, r3, #0, #9
 3247 0142 002A     		cmp	r2, #0
 3248 0144 00F09080 		beq	.L896
 3249 0148 A269     		ldr	r2, [r4, #24]
ARM GAS  /tmp/ccFB80Ed.s 			page 58


 3250 014a 9142     		cmp	r1, r2
 3251 014c E268     		ldr	r2, [r4, #12]
 3252 014e 18BF     		it	ne
 3253 0150 A161     		strne	r1, [r4, #24]
 3254              	.L865:
 3255 0152 9342     		cmp	r3, r2
 3256 0154 7FF65CAF 		bls	.L824
 3257 0158 A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 3258 015a E360     		str	r3, [r4, #12]
 3259 015c 42F02003 		orr	r3, r2, #32
 3260 0160 A371     		strb	r3, [r4, #6]
 3261 0162 55E7     		b	.L824
 3262              	.L831:
 3263 0164 08F10208 		add	r8, r8, #2
 3264 0168 C145     		cmp	r9, r8
 3265 016a 05D3     		bcc	.L833
 3266 016c 5246     		mov	r2, r10
 3267 016e 42F808BB 		str	fp, [r2], #8
 3268 0172 CAF80470 		str	r7, [r10, #4]
 3269 0176 9246     		mov	r10, r2
 3270              	.L833:
 3271 0178 1F46     		mov	r7, r3
 3272 017a 2068     		ldr	r0, [r4]
 3273 017c 8369     		ldr	r3, [r0, #24]
 3274 017e BB42     		cmp	r3, r7
 3275 0180 A5D8     		bhi	.L834
 3276 0182 606A     		ldr	r0, [r4, #36]
 3277              	.L827:
 3278 0184 C845     		cmp	r8, r9
 3279 0186 C0F80080 		str	r8, [r0]
 3280 018a 1AD9     		bls	.L897
 3281 018c 1126     		movs	r6, #17
 3282 018e 3FE7     		b	.L824
 3283              	.L895:
 3284 0190 2946     		mov	r1, r5
 3285 0192 FFF7FEFF 		bl	get_fat.part.4
 3286 0196 0128     		cmp	r0, #1
 3287 0198 0346     		mov	r3, r0
 3288 019a 05F10105 		add	r5, r5, #1
 3289 019e A0D9     		bls	.L862
 3290 01a0 421C     		adds	r2, r0, #1
 3291 01a2 03D0     		beq	.L892
 3292 01a4 8542     		cmp	r5, r0
 3293 01a6 DDD1     		bne	.L831
 3294 01a8 2068     		ldr	r0, [r4]
 3295 01aa 93E7     		b	.L832
 3296              	.L892:
 3297 01ac A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3298 01ae 0126     		movs	r6, #1
 3299 01b0 63F07F03 		orn	r3, r3, #127
 3300 01b4 A371     		strb	r3, [r4, #6]
 3301 01b6 2BE7     		b	.L824
 3302              	.L845:
 3303 01b8 2169     		ldr	r1, [r4, #16]
 3304 01ba 0029     		cmp	r1, #0
 3305 01bc 43D0     		beq	.L898
 3306              	.L847:
ARM GAS  /tmp/ccFB80Ed.s 			page 59


 3307 01be 6161     		str	r1, [r4, #20]
 3308 01c0 BAE7     		b	.L846
 3309              	.L897:
 3310 01c2 0023     		movs	r3, #0
 3311 01c4 CAF80030 		str	r3, [r10]
 3312 01c8 22E7     		b	.L824
 3313              	.L850:
 3314 01ca BD42     		cmp	r5, r7
 3315 01cc 4AD9     		bls	.L890
 3316 01ce 2068     		ldr	r0, [r4]
 3317              	.L861:
 3318 01d0 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3319 01d2 ED1B     		subs	r5, r5, r7
 3320 01d4 9A07     		lsls	r2, r3, #30
 3321 01d6 09D4     		bmi	.L899
 3322 01d8 0129     		cmp	r1, #1
 3323 01da 02D9     		bls	.L856
 3324 01dc 8269     		ldr	r2, [r0, #24]
 3325 01de 9142     		cmp	r1, r2
 3326 01e0 2DD3     		bcc	.L900
 3327              	.L856:
 3328 01e2 63F07F03 		orn	r3, r3, #127
 3329 01e6 A371     		strb	r3, [r4, #6]
 3330 01e8 0226     		movs	r6, #2
 3331 01ea 11E7     		b	.L824
 3332              	.L899:
 3333 01ec FFF7FEFF 		bl	create_chain
 3334 01f0 0146     		mov	r1, r0
 3335 01f2 0028     		cmp	r0, #0
 3336 01f4 35D0     		beq	.L901
 3337              	.L855:
 3338 01f6 4B1C     		adds	r3, r1, #1
 3339 01f8 D8D0     		beq	.L892
 3340 01fa 0129     		cmp	r1, #1
 3341 01fc 2DD9     		bls	.L859
 3342 01fe 2068     		ldr	r0, [r4]
 3343 0200 8369     		ldr	r3, [r0, #24]
 3344 0202 9942     		cmp	r1, r3
 3345 0204 29D2     		bcs	.L859
 3346 0206 A368     		ldr	r3, [r4, #8]
 3347 0208 AF42     		cmp	r7, r5
 3348 020a 3B44     		add	r3, r3, r7
 3349 020c A360     		str	r3, [r4, #8]
 3350 020e 6161     		str	r1, [r4, #20]
 3351 0210 DED3     		bcc	.L861
 3352              	.L853:
 3353 0212 2B44     		add	r3, r3, r5
 3354 0214 C5F30802 		ubfx	r2, r5, #0, #9
 3355 0218 A360     		str	r3, [r4, #8]
 3356 021a 02B3     		cbz	r2, .L875
 3357 021c 2268     		ldr	r2, [r4]
 3358 021e 881E     		subs	r0, r1, #2
 3359 0220 9169     		ldr	r1, [r2, #24]
 3360 0222 0239     		subs	r1, r1, #2
 3361 0224 8842     		cmp	r0, r1
 3362 0226 BFF45CAF 		bcs	.L862
 3363 022a 9178     		ldrb	r1, [r2, #2]	@ zero_extendqisi2
ARM GAS  /tmp/ccFB80Ed.s 			page 60


 3364 022c 926A     		ldr	r2, [r2, #40]
 3365 022e 00FB0121 		mla	r1, r0, r1, r2
 3366 0232 0029     		cmp	r1, #0
 3367 0234 3FF455AF 		beq	.L862
 3368 0238 01EB5521 		add	r1, r1, r5, lsr #9
 3369 023c 7FE7     		b	.L851
 3370              	.L900:
 3371 023e FFF7FEFF 		bl	get_fat.part.4
 3372 0242 0146     		mov	r1, r0
 3373 0244 D7E7     		b	.L855
 3374              	.L898:
 3375 0246 FFF7FEFF 		bl	create_chain
 3376 024a 0128     		cmp	r0, #1
 3377 024c 0146     		mov	r1, r0
 3378 024e 3FF448AF 		beq	.L862
 3379 0252 0130     		adds	r0, r0, #1
 3380 0254 AAD0     		beq	.L892
 3381 0256 2161     		str	r1, [r4, #16]
 3382 0258 B1E7     		b	.L847
 3383              	.L859:
 3384 025a A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3385 025c C1E7     		b	.L856
 3386              	.L875:
 3387 025e 1146     		mov	r1, r2
 3388 0260 6DE7     		b	.L851
 3389              	.L901:
 3390 0262 3D46     		mov	r5, r7
 3391              	.L890:
 3392 0264 A368     		ldr	r3, [r4, #8]
 3393 0266 D4E7     		b	.L853
 3394              	.L896:
 3395 0268 E268     		ldr	r2, [r4, #12]
 3396 026a 72E7     		b	.L865
 3397              		.size	f_lseek, .-f_lseek
 3398              		.section	.text.f_opendir,"ax",%progbits
 3399              		.align	1
 3400              		.p2align 2,,3
 3401              		.global	f_opendir
 3402              		.syntax unified
 3403              		.thumb
 3404              		.thumb_func
 3405              		.fpu softvfp
 3406              		.type	f_opendir, %function
 3407              	f_opendir:
 3408              		@ args = 0, pretend = 0, frame = 536
 3409              		@ frame_needed = 0, uses_anonymous_args = 0
 3410 0000 10B5     		push	{r4, lr}
 3411 0002 0446     		mov	r4, r0
 3412 0004 ADF5067D 		sub	sp, sp, #536
 3413 0008 0191     		str	r1, [sp, #4]
 3414 000a 01A8     		add	r0, sp, #4
 3415 000c 2146     		mov	r1, r4
 3416 000e 0022     		movs	r2, #0
 3417 0010 FFF7FEFF 		bl	chk_mounted
 3418 0014 10B1     		cbz	r0, .L916
 3419              	.L908:
 3420 0016 0DF5067D 		add	sp, sp, #536
ARM GAS  /tmp/ccFB80Ed.s 			page 61


 3421              		@ sp needed
 3422 001a 10BD     		pop	{r4, pc}
 3423              	.L916:
 3424 001c 03AA     		add	r2, sp, #12
 3425 001e 06AB     		add	r3, sp, #24
 3426 0020 0199     		ldr	r1, [sp, #4]
 3427 0022 A261     		str	r2, [r4, #24]
 3428 0024 E361     		str	r3, [r4, #28]
 3429 0026 2046     		mov	r0, r4
 3430 0028 FFF7FEFF 		bl	follow_path
 3431 002c B0B9     		cbnz	r0, .L904
 3432 002e 6369     		ldr	r3, [r4, #20]
 3433 0030 6BB1     		cbz	r3, .L905
 3434 0032 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 3435 0034 D206     		lsls	r2, r2, #27
 3436 0036 13D5     		bpl	.L907
 3437 0038 587D     		ldrb	r0, [r3, #21]	@ zero_extendqisi2
 3438 003a 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 3439 003c D97E     		ldrb	r1, [r3, #27]	@ zero_extendqisi2
 3440 003e 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 3441 0040 42EA0022 		orr	r2, r2, r0, lsl #8
 3442 0044 43EA0123 		orr	r3, r3, r1, lsl #8
 3443 0048 43EA0243 		orr	r3, r3, r2, lsl #16
 3444 004c A360     		str	r3, [r4, #8]
 3445              	.L905:
 3446 004e 2368     		ldr	r3, [r4]
 3447 0050 2046     		mov	r0, r4
 3448 0052 DB88     		ldrh	r3, [r3, #6]
 3449 0054 0021     		movs	r1, #0
 3450 0056 A380     		strh	r3, [r4, #4]	@ movhi
 3451 0058 FFF7FEFF 		bl	dir_sdi
 3452              	.L904:
 3453 005c 0428     		cmp	r0, #4
 3454 005e DAD1     		bne	.L908
 3455              	.L907:
 3456 0060 0520     		movs	r0, #5
 3457 0062 0DF5067D 		add	sp, sp, #536
 3458              		@ sp needed
 3459 0066 10BD     		pop	{r4, pc}
 3460              		.size	f_opendir, .-f_opendir
 3461              		.section	.text.f_readdir,"ax",%progbits
 3462              		.align	1
 3463              		.p2align 2,,3
 3464              		.global	f_readdir
 3465              		.syntax unified
 3466              		.thumb
 3467              		.thumb_func
 3468              		.fpu softvfp
 3469              		.type	f_readdir, %function
 3470              	f_readdir:
 3471              		@ args = 0, pretend = 0, frame = 528
 3472              		@ frame_needed = 0, uses_anonymous_args = 0
 3473 0000 0368     		ldr	r3, [r0]
 3474 0002 63B1     		cbz	r3, .L923
 3475 0004 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 3476 0006 52B1     		cbz	r2, .L923
 3477 0008 70B5     		push	{r4, r5, r6, lr}
ARM GAS  /tmp/ccFB80Ed.s 			page 62


 3478 000a DA88     		ldrh	r2, [r3, #6]
 3479 000c 8488     		ldrh	r4, [r0, #4]
 3480 000e ADF5047D 		sub	sp, sp, #528
 3481 0012 9442     		cmp	r4, r2
 3482 0014 05D0     		beq	.L930
 3483 0016 0920     		movs	r0, #9
 3484              	.L918:
 3485 0018 0DF5047D 		add	sp, sp, #528
 3486              		@ sp needed
 3487 001c 70BD     		pop	{r4, r5, r6, pc}
 3488              	.L923:
 3489 001e 0920     		movs	r0, #9
 3490 0020 7047     		bx	lr
 3491              	.L930:
 3492 0022 0446     		mov	r4, r0
 3493 0024 1846     		mov	r0, r3
 3494 0026 0D46     		mov	r5, r1
 3495 0028 FFF7FEFF 		bl	validate.part.1
 3496 002c 0646     		mov	r6, r0
 3497 002e 0028     		cmp	r0, #0
 3498 0030 F2D1     		bne	.L918
 3499 0032 CDB1     		cbz	r5, .L931
 3500 0034 01AA     		add	r2, sp, #4
 3501 0036 04AB     		add	r3, sp, #16
 3502 0038 A261     		str	r2, [r4, #24]
 3503 003a E361     		str	r3, [r4, #28]
 3504 003c 2046     		mov	r0, r4
 3505 003e FFF7FEFF 		bl	dir_read
 3506 0042 0428     		cmp	r0, #4
 3507 0044 0ED0     		beq	.L932
 3508 0046 0028     		cmp	r0, #0
 3509 0048 E6D1     		bne	.L918
 3510              	.L921:
 3511 004a 2946     		mov	r1, r5
 3512 004c 2046     		mov	r0, r4
 3513 004e FFF7FEFF 		bl	get_fileinfo
 3514 0052 0021     		movs	r1, #0
 3515 0054 2046     		mov	r0, r4
 3516 0056 FFF7FEFF 		bl	dir_next
 3517 005a 0428     		cmp	r0, #4
 3518 005c DCD1     		bne	.L918
 3519 005e 0020     		movs	r0, #0
 3520 0060 2061     		str	r0, [r4, #16]
 3521 0062 D9E7     		b	.L918
 3522              	.L932:
 3523 0064 2661     		str	r6, [r4, #16]
 3524 0066 F0E7     		b	.L921
 3525              	.L931:
 3526 0068 2946     		mov	r1, r5
 3527 006a 2046     		mov	r0, r4
 3528 006c FFF7FEFF 		bl	dir_sdi
 3529 0070 D2E7     		b	.L918
 3530              		.size	f_readdir, .-f_readdir
 3531 0072 00BF     		.section	.text.f_stat,"ax",%progbits
 3532              		.align	1
 3533              		.p2align 2,,3
 3534              		.global	f_stat
ARM GAS  /tmp/ccFB80Ed.s 			page 63


 3535              		.syntax unified
 3536              		.thumb
 3537              		.thumb_func
 3538              		.fpu softvfp
 3539              		.type	f_stat, %function
 3540              	f_stat:
 3541              		@ args = 0, pretend = 0, frame = 568
 3542              		@ frame_needed = 0, uses_anonymous_args = 0
 3543 0000 30B5     		push	{r4, r5, lr}
 3544 0002 ADF50F7D 		sub	sp, sp, #572
 3545 0006 0190     		str	r0, [sp, #4]
 3546 0008 0D46     		mov	r5, r1
 3547 000a 01A8     		add	r0, sp, #4
 3548 000c 05A9     		add	r1, sp, #20
 3549 000e 0022     		movs	r2, #0
 3550 0010 FFF7FEFF 		bl	chk_mounted
 3551 0014 0446     		mov	r4, r0
 3552 0016 18B1     		cbz	r0, .L937
 3553              	.L934:
 3554 0018 2046     		mov	r0, r4
 3555 001a 0DF50F7D 		add	sp, sp, #572
 3556              		@ sp needed
 3557 001e 30BD     		pop	{r4, r5, pc}
 3558              	.L937:
 3559 0020 02AA     		add	r2, sp, #8
 3560 0022 0EAB     		add	r3, sp, #56
 3561 0024 0199     		ldr	r1, [sp, #4]
 3562 0026 05A8     		add	r0, sp, #20
 3563 0028 0B92     		str	r2, [sp, #44]
 3564 002a 0C93     		str	r3, [sp, #48]
 3565 002c FFF7FEFF 		bl	follow_path
 3566 0030 0446     		mov	r4, r0
 3567 0032 0028     		cmp	r0, #0
 3568 0034 F0D1     		bne	.L934
 3569 0036 0A9B     		ldr	r3, [sp, #40]
 3570 0038 3BB1     		cbz	r3, .L935
 3571 003a 05A8     		add	r0, sp, #20
 3572 003c 2946     		mov	r1, r5
 3573 003e FFF7FEFF 		bl	get_fileinfo
 3574 0042 2046     		mov	r0, r4
 3575 0044 0DF50F7D 		add	sp, sp, #572
 3576              		@ sp needed
 3577 0048 30BD     		pop	{r4, r5, pc}
 3578              	.L935:
 3579 004a 0624     		movs	r4, #6
 3580 004c 2046     		mov	r0, r4
 3581 004e 0DF50F7D 		add	sp, sp, #572
 3582              		@ sp needed
 3583 0052 30BD     		pop	{r4, r5, pc}
 3584              		.size	f_stat, .-f_stat
 3585              		.section	.text.f_getfree,"ax",%progbits
 3586              		.align	1
 3587              		.p2align 2,,3
 3588              		.global	f_getfree
 3589              		.syntax unified
 3590              		.thumb
 3591              		.thumb_func
ARM GAS  /tmp/ccFB80Ed.s 			page 64


 3592              		.fpu softvfp
 3593              		.type	f_getfree, %function
 3594              	f_getfree:
 3595              		@ args = 0, pretend = 0, frame = 8
 3596              		@ frame_needed = 0, uses_anonymous_args = 0
 3597 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3598 0004 82B0     		sub	sp, sp, #8
 3599 0006 02AB     		add	r3, sp, #8
 3600 0008 43F8040D 		str	r0, [r3, #-4]!
 3601 000c 1646     		mov	r6, r2
 3602 000e 8846     		mov	r8, r1
 3603 0010 1846     		mov	r0, r3
 3604 0012 1146     		mov	r1, r2
 3605 0014 0022     		movs	r2, #0
 3606 0016 FFF7FEFF 		bl	chk_mounted
 3607 001a 0746     		mov	r7, r0
 3608 001c 38BB     		cbnz	r0, .L960
 3609 001e 3168     		ldr	r1, [r6]
 3610 0020 8C69     		ldr	r4, [r1, #24]
 3611 0022 0B69     		ldr	r3, [r1, #16]
 3612 0024 A21E     		subs	r2, r4, #2
 3613 0026 9342     		cmp	r3, r2
 3614 0028 0846     		mov	r0, r1
 3615 002a 24D9     		bls	.L966
 3616 002c 91F800A0 		ldrb	r10, [r1]	@ zero_extendqisi2
 3617 0030 BAF1010F 		cmp	r10, #1
 3618 0034 3ED0     		beq	.L967
 3619 0036 3B46     		mov	r3, r7
 3620 0038 3A46     		mov	r2, r7
 3621 003a B946     		mov	r9, r7
 3622 003c 0D6A     		ldr	r5, [r1, #32]
 3623              	.L957:
 3624 003e 02B3     		cbz	r2, .L968
 3625 0040 BAF1020F 		cmp	r10, #2
 3626 0044 2BD0     		beq	.L969
 3627              	.L953:
 3628 0046 1868     		ldr	r0, [r3]	@ unaligned
 3629 0048 043A     		subs	r2, r2, #4
 3630 004a 30F07040 		bics	r0, r0, #-268435456
 3631 004e 08BF     		it	eq
 3632 0050 09F10109 		addeq	r9, r9, #1
 3633 0054 0433     		adds	r3, r3, #4
 3634              	.L955:
 3635 0056 013C     		subs	r4, r4, #1
 3636 0058 F1D1     		bne	.L957
 3637              	.L952:
 3638 005a BAF1030F 		cmp	r10, #3
 3639 005e 08BF     		it	eq
 3640 0060 0123     		moveq	r3, #1
 3641 0062 C1F81090 		str	r9, [r1, #16]
 3642 0066 08BF     		it	eq
 3643 0068 4B71     		strbeq	r3, [r1, #5]
 3644              	.L958:
 3645 006a C8F80090 		str	r9, [r8]
 3646              	.L960:
 3647 006e 3846     		mov	r0, r7
 3648 0070 02B0     		add	sp, sp, #8
ARM GAS  /tmp/ccFB80Ed.s 			page 65


 3649              		@ sp needed
 3650 0072 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3651              	.L966:
 3652 0076 3846     		mov	r0, r7
 3653 0078 C8F80030 		str	r3, [r8]
 3654 007c 02B0     		add	sp, sp, #8
 3655              		@ sp needed
 3656 007e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3657              	.L968:
 3658 0082 0846     		mov	r0, r1
 3659 0084 2946     		mov	r1, r5
 3660 0086 0135     		adds	r5, r5, #1
 3661 0088 FFF7FEFF 		bl	move_window
 3662 008c 80BB     		cbnz	r0, .L970
 3663 008e 3168     		ldr	r1, [r6]
 3664 0090 BAF1020F 		cmp	r10, #2
 3665 0094 4FF40072 		mov	r2, #512
 3666 0098 01F13003 		add	r3, r1, #48
 3667 009c D3D1     		bne	.L953
 3668              	.L969:
 3669 009e 93F801E0 		ldrb	lr, [r3, #1]	@ zero_extendqisi2
 3670 00a2 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 3671 00a4 023A     		subs	r2, r2, #2
 3672 00a6 50EA0E20 		orrs	r0, r0, lr, lsl #8
 3673 00aa 08BF     		it	eq
 3674 00ac 09F10109 		addeq	r9, r9, #1
 3675 00b0 0233     		adds	r3, r3, #2
 3676 00b2 D0E7     		b	.L955
 3677              	.L967:
 3678 00b4 0225     		movs	r5, #2
 3679 00b6 B946     		mov	r9, r7
 3680              	.L944:
 3681 00b8 AC42     		cmp	r4, r5
 3682 00ba 16D9     		bls	.L971
 3683 00bc 2946     		mov	r1, r5
 3684 00be FFF7FEFF 		bl	get_fat.part.4
 3685 00c2 431C     		adds	r3, r0, #1
 3686 00c4 05F10105 		add	r5, r5, #1
 3687 00c8 15D0     		beq	.L972
 3688 00ca 0128     		cmp	r0, #1
 3689 00cc 16D0     		beq	.L973
 3690 00ce 08B9     		cbnz	r0, .L948
 3691 00d0 09F10109 		add	r9, r9, #1
 3692              	.L948:
 3693 00d4 3168     		ldr	r1, [r6]
 3694 00d6 8C69     		ldr	r4, [r1, #24]
 3695 00d8 0846     		mov	r0, r1
 3696 00da A542     		cmp	r5, r4
 3697 00dc 02D2     		bcs	.L943
 3698 00de 012D     		cmp	r5, #1
 3699 00e0 EAD8     		bhi	.L944
 3700 00e2 0227     		movs	r7, #2
 3701              	.L943:
 3702 00e4 C1F81090 		str	r9, [r1, #16]
 3703 00e8 BFE7     		b	.L958
 3704              	.L971:
 3705 00ea 0146     		mov	r1, r0
ARM GAS  /tmp/ccFB80Ed.s 			page 66


 3706 00ec 0227     		movs	r7, #2
 3707 00ee F9E7     		b	.L943
 3708              	.L970:
 3709 00f0 3168     		ldr	r1, [r6]
 3710 00f2 0746     		mov	r7, r0
 3711 00f4 B1E7     		b	.L952
 3712              	.L972:
 3713 00f6 3168     		ldr	r1, [r6]
 3714 00f8 0127     		movs	r7, #1
 3715 00fa F3E7     		b	.L943
 3716              	.L973:
 3717 00fc 3168     		ldr	r1, [r6]
 3718 00fe 0227     		movs	r7, #2
 3719 0100 F0E7     		b	.L943
 3720              		.size	f_getfree, .-f_getfree
 3721 0102 00BF     		.section	.text.f_truncate,"ax",%progbits
 3722              		.align	1
 3723              		.p2align 2,,3
 3724              		.global	f_truncate
 3725              		.syntax unified
 3726              		.thumb
 3727              		.thumb_func
 3728              		.fpu softvfp
 3729              		.type	f_truncate, %function
 3730              	f_truncate:
 3731              		@ args = 0, pretend = 0, frame = 0
 3732              		@ frame_needed = 0, uses_anonymous_args = 0
 3733 0000 0368     		ldr	r3, [r0]
 3734 0002 70B5     		push	{r4, r5, r6, lr}
 3735 0004 0BB1     		cbz	r3, .L993
 3736 0006 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 3737 0008 12B9     		cbnz	r2, .L1005
 3738              	.L993:
 3739 000a 0925     		movs	r5, #9
 3740              	.L1000:
 3741 000c 2846     		mov	r0, r5
 3742 000e 70BD     		pop	{r4, r5, r6, pc}
 3743              	.L1005:
 3744 0010 8188     		ldrh	r1, [r0, #4]
 3745 0012 DA88     		ldrh	r2, [r3, #6]
 3746 0014 9142     		cmp	r1, r2
 3747 0016 F8D1     		bne	.L993
 3748 0018 0446     		mov	r4, r0
 3749 001a 1846     		mov	r0, r3
 3750 001c FFF7FEFF 		bl	validate.part.1
 3751 0020 0546     		mov	r5, r0
 3752 0022 0028     		cmp	r0, #0
 3753 0024 F2D1     		bne	.L1000
 3754 0026 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3755 0028 1906     		lsls	r1, r3, #24
 3756 002a 29D4     		bmi	.L994
 3757 002c 9A07     		lsls	r2, r3, #30
 3758 002e 02D4     		bmi	.L1006
 3759 0030 0725     		movs	r5, #7
 3760 0032 2846     		mov	r0, r5
 3761 0034 70BD     		pop	{r4, r5, r6, pc}
 3762              	.L1006:
ARM GAS  /tmp/ccFB80Ed.s 			page 67


 3763 0036 A268     		ldr	r2, [r4, #8]
 3764 0038 E168     		ldr	r1, [r4, #12]
 3765 003a 9142     		cmp	r1, r2
 3766 003c E6D9     		bls	.L1000
 3767 003e 43F02003 		orr	r3, r3, #32
 3768 0042 A371     		strb	r3, [r4, #6]
 3769 0044 E260     		str	r2, [r4, #12]
 3770 0046 92B9     		cbnz	r2, .L977
 3771 0048 2169     		ldr	r1, [r4, #16]
 3772 004a 0129     		cmp	r1, #1
 3773 004c 03D9     		bls	.L997
 3774 004e 2068     		ldr	r0, [r4]
 3775 0050 8369     		ldr	r3, [r0, #24]
 3776 0052 9942     		cmp	r1, r3
 3777 0054 17D3     		bcc	.L1007
 3778              	.L997:
 3779 0056 0220     		movs	r0, #2
 3780              	.L978:
 3781 0058 0023     		movs	r3, #0
 3782 005a 2361     		str	r3, [r4, #16]
 3783              	.L979:
 3784 005c 0028     		cmp	r0, #0
 3785 005e D5D0     		beq	.L1000
 3786              	.L1003:
 3787 0060 0546     		mov	r5, r0
 3788 0062 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3789              	.L980:
 3790 0064 63F07F03 		orn	r3, r3, #127
 3791 0068 A371     		strb	r3, [r4, #6]
 3792 006a 2846     		mov	r0, r5
 3793 006c 70BD     		pop	{r4, r5, r6, pc}
 3794              	.L977:
 3795 006e 6169     		ldr	r1, [r4, #20]
 3796 0070 0129     		cmp	r1, #1
 3797 0072 03D9     		bls	.L999
 3798 0074 2068     		ldr	r0, [r4]
 3799 0076 8269     		ldr	r2, [r0, #24]
 3800 0078 9142     		cmp	r1, r2
 3801 007a 07D3     		bcc	.L1008
 3802              	.L999:
 3803 007c 0225     		movs	r5, #2
 3804 007e F1E7     		b	.L980
 3805              	.L994:
 3806 0080 0225     		movs	r5, #2
 3807 0082 2846     		mov	r0, r5
 3808 0084 70BD     		pop	{r4, r5, r6, pc}
 3809              	.L1007:
 3810 0086 FFF7FEFF 		bl	remove_chain.part.7
 3811 008a E5E7     		b	.L978
 3812              	.L1008:
 3813 008c FFF7FEFF 		bl	get_fat.part.4
 3814 0090 431C     		adds	r3, r0, #1
 3815 0092 0646     		mov	r6, r0
 3816 0094 02D1     		bne	.L981
 3817 0096 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3818 0098 0125     		movs	r5, #1
 3819 009a E3E7     		b	.L980
ARM GAS  /tmp/ccFB80Ed.s 			page 68


 3820              	.L981:
 3821 009c 0128     		cmp	r0, #1
 3822 009e 08D0     		beq	.L986
 3823 00a0 2068     		ldr	r0, [r4]
 3824 00a2 8369     		ldr	r3, [r0, #24]
 3825 00a4 B342     		cmp	r3, r6
 3826 00a6 B1D9     		bls	.L1000
 3827 00a8 6169     		ldr	r1, [r4, #20]
 3828 00aa 0129     		cmp	r1, #1
 3829 00ac 01D9     		bls	.L986
 3830 00ae 8B42     		cmp	r3, r1
 3831 00b0 02D8     		bhi	.L1009
 3832              	.L986:
 3833 00b2 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3834 00b4 0225     		movs	r5, #2
 3835 00b6 D5E7     		b	.L980
 3836              	.L1009:
 3837 00b8 6FF07042 		mvn	r2, #-268435456
 3838 00bc FFF7FEFF 		bl	put_fat.part.5
 3839 00c0 0028     		cmp	r0, #0
 3840 00c2 CDD1     		bne	.L1003
 3841 00c4 012E     		cmp	r6, #1
 3842 00c6 F4D9     		bls	.L986
 3843 00c8 2068     		ldr	r0, [r4]
 3844 00ca 8369     		ldr	r3, [r0, #24]
 3845 00cc 9E42     		cmp	r6, r3
 3846 00ce F0D2     		bcs	.L986
 3847 00d0 3146     		mov	r1, r6
 3848 00d2 FFF7FEFF 		bl	remove_chain.part.7
 3849 00d6 C1E7     		b	.L979
 3850              		.size	f_truncate, .-f_truncate
 3851              		.section	.text.f_unlink,"ax",%progbits
 3852              		.align	1
 3853              		.p2align 2,,3
 3854              		.global	f_unlink
 3855              		.syntax unified
 3856              		.thumb
 3857              		.thumb_func
 3858              		.fpu softvfp
 3859              		.type	f_unlink, %function
 3860              	f_unlink:
 3861              		@ args = 0, pretend = 0, frame = 608
 3862              		@ frame_needed = 0, uses_anonymous_args = 0
 3863 0000 70B5     		push	{r4, r5, r6, lr}
 3864 0002 ADF5187D 		sub	sp, sp, #608
 3865 0006 0190     		str	r0, [sp, #4]
 3866 0008 06A9     		add	r1, sp, #24
 3867 000a 01A8     		add	r0, sp, #4
 3868 000c 0122     		movs	r2, #1
 3869 000e FFF7FEFF 		bl	chk_mounted
 3870 0012 10B1     		cbz	r0, .L1037
 3871              	.L1024:
 3872 0014 0DF5187D 		add	sp, sp, #608
 3873              		@ sp needed
 3874 0018 70BD     		pop	{r4, r5, r6, pc}
 3875              	.L1037:
 3876 001a 03AA     		add	r2, sp, #12
ARM GAS  /tmp/ccFB80Ed.s 			page 69


 3877 001c 18AB     		add	r3, sp, #96
 3878 001e 0199     		ldr	r1, [sp, #4]
 3879 0020 06A8     		add	r0, sp, #24
 3880 0022 0C92     		str	r2, [sp, #48]
 3881 0024 0D93     		str	r3, [sp, #52]
 3882 0026 FFF7FEFF 		bl	follow_path
 3883 002a 0028     		cmp	r0, #0
 3884 002c F2D1     		bne	.L1024
 3885 002e 0B9B     		ldr	r3, [sp, #44]
 3886 0030 002B     		cmp	r3, #0
 3887 0032 40D0     		beq	.L1021
 3888 0034 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 3889 0036 D107     		lsls	r1, r2, #31
 3890 0038 37D4     		bmi	.L1022
 3891 003a D87E     		ldrb	r0, [r3, #27]	@ zero_extendqisi2
 3892 003c 9C7E     		ldrb	r4, [r3, #26]	@ zero_extendqisi2
 3893 003e 5D7D     		ldrb	r5, [r3, #21]	@ zero_extendqisi2
 3894 0040 197D     		ldrb	r1, [r3, #20]	@ zero_extendqisi2
 3895 0042 44EA0024 		orr	r4, r4, r0, lsl #8
 3896 0046 41EA0523 		orr	r3, r1, r5, lsl #8
 3897 004a 44EA0344 		orr	r4, r4, r3, lsl #16
 3898 004e D306     		lsls	r3, r2, #27
 3899 0050 16D5     		bpl	.L1015
 3900 0052 012C     		cmp	r4, #1
 3901 0054 2DD9     		bls	.L1017
 3902 0056 0FAD     		add	r5, sp, #60
 3903 0058 06AE     		add	r6, sp, #24
 3904 005a 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 3905 005c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 3906 005e 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 3907 0060 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 3908 0062 3368     		ldr	r3, [r6]
 3909 0064 0FA8     		add	r0, sp, #60
 3910 0066 0221     		movs	r1, #2
 3911 0068 2B60     		str	r3, [r5]
 3912 006a 1194     		str	r4, [sp, #68]
 3913 006c FFF7FEFF 		bl	dir_sdi
 3914 0070 0028     		cmp	r0, #0
 3915 0072 CFD1     		bne	.L1024
 3916 0074 0FA8     		add	r0, sp, #60
 3917 0076 FFF7FEFF 		bl	dir_read
 3918 007a B0B1     		cbz	r0, .L1022
 3919 007c 0428     		cmp	r0, #4
 3920 007e C9D1     		bne	.L1024
 3921              	.L1015:
 3922 0080 06A8     		add	r0, sp, #24
 3923 0082 FFF7FEFF 		bl	dir_remove
 3924 0086 0028     		cmp	r0, #0
 3925 0088 C4D1     		bne	.L1024
 3926 008a 54B1     		cbz	r4, .L1018
 3927 008c 012C     		cmp	r4, #1
 3928 008e 10D0     		beq	.L1017
 3929 0090 0698     		ldr	r0, [sp, #24]
 3930 0092 8369     		ldr	r3, [r0, #24]
 3931 0094 9C42     		cmp	r4, r3
 3932 0096 0CD2     		bcs	.L1017
 3933 0098 2146     		mov	r1, r4
ARM GAS  /tmp/ccFB80Ed.s 			page 70


 3934 009a FFF7FEFF 		bl	remove_chain.part.7
 3935 009e 0028     		cmp	r0, #0
 3936 00a0 B8D1     		bne	.L1024
 3937              	.L1018:
 3938 00a2 0698     		ldr	r0, [sp, #24]
 3939 00a4 FFF7FEFF 		bl	sync
 3940 00a8 B4E7     		b	.L1024
 3941              	.L1022:
 3942 00aa 0720     		movs	r0, #7
 3943 00ac 0DF5187D 		add	sp, sp, #608
 3944              		@ sp needed
 3945 00b0 70BD     		pop	{r4, r5, r6, pc}
 3946              	.L1017:
 3947 00b2 0220     		movs	r0, #2
 3948 00b4 AEE7     		b	.L1024
 3949              	.L1021:
 3950 00b6 0620     		movs	r0, #6
 3951 00b8 ACE7     		b	.L1024
 3952              		.size	f_unlink, .-f_unlink
 3953 00ba 00BF     		.section	.text.f_mkdir,"ax",%progbits
 3954              		.align	1
 3955              		.p2align 2,,3
 3956              		.global	f_mkdir
 3957              		.syntax unified
 3958              		.thumb
 3959              		.thumb_func
 3960              		.fpu softvfp
 3961              		.type	f_mkdir, %function
 3962              	f_mkdir:
 3963              		@ args = 0, pretend = 0, frame = 592
 3964              		@ frame_needed = 0, uses_anonymous_args = 0
 3965 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3966 0004 ADF5157D 		sub	sp, sp, #596
 3967 0008 0790     		str	r0, [sp, #28]
 3968 000a FFF7FEFF 		bl	get_fattime
 3969 000e 0BA9     		add	r1, sp, #44
 3970 0010 0746     		mov	r7, r0
 3971 0012 0122     		movs	r2, #1
 3972 0014 07A8     		add	r0, sp, #28
 3973 0016 FFF7FEFF 		bl	chk_mounted
 3974 001a 0446     		mov	r4, r0
 3975 001c 20B1     		cbz	r0, .L1066
 3976              	.L1055:
 3977 001e 2046     		mov	r0, r4
 3978 0020 0DF5157D 		add	sp, sp, #596
 3979              		@ sp needed
 3980 0024 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3981              	.L1066:
 3982 0028 08AA     		add	r2, sp, #32
 3983 002a 14AB     		add	r3, sp, #80
 3984 002c 0546     		mov	r5, r0
 3985 002e 0799     		ldr	r1, [sp, #28]
 3986 0030 0BA8     		add	r0, sp, #44
 3987 0032 1192     		str	r2, [sp, #68]
 3988 0034 1293     		str	r3, [sp, #72]
 3989 0036 FFF7FEFF 		bl	follow_path
 3990 003a 0446     		mov	r4, r0
ARM GAS  /tmp/ccFB80Ed.s 			page 71


 3991 003c 58B1     		cbz	r0, .L1050
 3992 003e 0428     		cmp	r0, #4
 3993 0040 EDD1     		bne	.L1055
 3994 0042 2946     		mov	r1, r5
 3995 0044 0B98     		ldr	r0, [sp, #44]
 3996 0046 FFF7FEFF 		bl	create_chain
 3997 004a 8146     		mov	r9, r0
 3998 004c 48B1     		cbz	r0, .L1051
 3999 004e 0128     		cmp	r0, #1
 4000 0050 09D1     		bne	.L1067
 4001 0052 0224     		movs	r4, #2
 4002 0054 E3E7     		b	.L1055
 4003              	.L1050:
 4004 0056 0824     		movs	r4, #8
 4005 0058 2046     		mov	r0, r4
 4006 005a 0DF5157D 		add	sp, sp, #596
 4007              		@ sp needed
 4008 005e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4009              	.L1051:
 4010 0062 0724     		movs	r4, #7
 4011 0064 DBE7     		b	.L1055
 4012              	.L1067:
 4013 0066 B0F1FF3F 		cmp	r0, #-1
 4014 006a 08BF     		it	eq
 4015 006c 0124     		moveq	r4, #1
 4016 006e D6D0     		beq	.L1055
 4017 0070 2946     		mov	r1, r5
 4018 0072 0B98     		ldr	r0, [sp, #44]
 4019 0074 FFF7FEFF 		bl	move_window
 4020 0078 0446     		mov	r4, r0
 4021 007a 0028     		cmp	r0, #0
 4022 007c 40F09A80 		bne	.L1046
 4023 0080 0B9B     		ldr	r3, [sp, #44]
 4024 0082 A9F10201 		sub	r1, r9, #2
 4025 0086 9A69     		ldr	r2, [r3, #24]
 4026 0088 9D78     		ldrb	r5, [r3, #2]	@ zero_extendqisi2
 4027 008a 023A     		subs	r2, r2, #2
 4028 008c 9142     		cmp	r1, r2
 4029 008e 38BF     		it	cc
 4030 0090 9C6A     		ldrcc	r4, [r3, #40]
 4031 0092 03F13006 		add	r6, r3, #48
 4032 0096 38BF     		it	cc
 4033 0098 01FB0544 		mlacc	r4, r1, r5, r4
 4034 009c 4FF40072 		mov	r2, #512
 4035 00a0 0021     		movs	r1, #0
 4036 00a2 3046     		mov	r0, r6
 4037 00a4 0493     		str	r3, [sp, #16]
 4038 00a6 FFF7FEFF 		bl	memset
 4039 00aa 4FF02032 		mov	r2, #538976288
 4040 00ae 1021     		movs	r1, #16
 4041 00b0 FBB2     		uxtb	r3, r7
 4042 00b2 1846     		mov	r0, r3
 4043 00b4 4FF02E0E 		mov	lr, #46
 4044 00b8 0593     		str	r3, [sp, #20]
 4045 00ba C7F30723 		ubfx	r3, r7, #8, #8
 4046 00be 0093     		str	r3, [sp]
 4047 00c0 C7F30743 		ubfx	r3, r7, #16, #8
ARM GAS  /tmp/ccFB80Ed.s 			page 72


 4048 00c4 0193     		str	r3, [sp, #4]
 4049 00c6 049B     		ldr	r3, [sp, #16]
 4050 00c8 5FFA89FC 		uxtb	ip, r9
 4051 00cc 1A63     		str	r2, [r3, #48]	@ unaligned
 4052 00ce 7260     		str	r2, [r6, #4]	@ unaligned
 4053 00d0 C6F80720 		str	r2, [r6, #7]	@ unaligned
 4054 00d4 9DF80020 		ldrb	r2, [sp]	@ zero_extendqisi2
 4055 00d8 CDF808C0 		str	ip, [sp, #8]
 4056 00dc 83F84720 		strb	r2, [r3, #71]
 4057 00e0 9DF80420 		ldrb	r2, [sp, #4]	@ zero_extendqisi2
 4058 00e4 C9F3072C 		ubfx	ip, r9, #8, #8
 4059 00e8 83F84820 		strb	r2, [r3, #72]
 4060 00ec 9DF80820 		ldrb	r2, [sp, #8]	@ zero_extendqisi2
 4061 00f0 CDF80CC0 		str	ip, [sp, #12]
 4062 00f4 83F84A20 		strb	r2, [r3, #74]
 4063 00f8 29FA01FA 		lsr	r10, r9, r1
 4064 00fc 9DF80C20 		ldrb	r2, [sp, #12]	@ zero_extendqisi2
 4065 0100 3F0E     		lsrs	r7, r7, #24
 4066 0102 5FFA8AFB 		uxtb	fp, r10
 4067 0106 4FEA1A2A 		lsr	r10, r10, #8
 4068 010a 83F84B20 		strb	r2, [r3, #75]
 4069 010e 83F844B0 		strb	fp, [r3, #68]
 4070 0112 83F845A0 		strb	r10, [r3, #69]
 4071 0116 83F830E0 		strb	lr, [r3, #48]
 4072 011a 83F83B10 		strb	r1, [r3, #59]
 4073 011e 83F84600 		strb	r0, [r3, #70]
 4074 0122 83F84970 		strb	r7, [r3, #73]
 4075 0126 B068     		ldr	r0, [r6, #8]	@ unaligned
 4076 0128 F168     		ldr	r1, [r6, #12]	@ unaligned
 4077 012a D6F800C0 		ldr	ip, [r6]	@ unaligned
 4078 012e 0697     		str	r7, [sp, #24]
 4079 0130 7768     		ldr	r7, [r6, #4]	@ unaligned
 4080 0132 9865     		str	r0, [r3, #88]	@ unaligned
 4081 0134 5F65     		str	r7, [r3, #84]	@ unaligned
 4082 0136 D965     		str	r1, [r3, #92]	@ unaligned
 4083 0138 C3F850C0 		str	ip, [r3, #80]	@ unaligned
 4084 013c D6F810C0 		ldr	ip, [r6, #16]	@ unaligned
 4085 0140 F169     		ldr	r1, [r6, #28]	@ unaligned
 4086 0142 7769     		ldr	r7, [r6, #20]	@ unaligned
 4087 0144 B069     		ldr	r0, [r6, #24]	@ unaligned
 4088 0146 D966     		str	r1, [r3, #108]	@ unaligned
 4089 0148 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 4090 014a C3F860C0 		str	ip, [r3, #96]	@ unaligned
 4091 014e 0329     		cmp	r1, #3
 4092 0150 5F66     		str	r7, [r3, #100]	@ unaligned
 4093 0152 9866     		str	r0, [r3, #104]	@ unaligned
 4094 0154 83F851E0 		strb	lr, [r3, #81]
 4095 0158 0D9A     		ldr	r2, [sp, #52]
 4096 015a 5FD0     		beq	.L1068
 4097              	.L1064:
 4098 015c 110C     		lsrs	r1, r2, #16
 4099 015e C8B2     		uxtb	r0, r1
 4100 0160 D7B2     		uxtb	r7, r2
 4101 0162 090A     		lsrs	r1, r1, #8
 4102 0164 C2F30722 		ubfx	r2, r2, #8, #8
 4103              	.L1044:
 4104 0168 83F86A70 		strb	r7, [r3, #106]
ARM GAS  /tmp/ccFB80Ed.s 			page 73


 4105 016c 83F86B20 		strb	r2, [r3, #107]
 4106 0170 83F86400 		strb	r0, [r3, #100]
 4107 0174 83F86510 		strb	r1, [r3, #101]
 4108 0178 4DB3     		cbz	r5, .L1045
 4109 017a 4FF00108 		mov	r8, #1
 4110 017e 6F1E     		subs	r7, r5, #1
 4111 0180 FFB2     		uxtb	r7, r7
 4112 0182 04EB0805 		add	r5, r4, r8
 4113 0186 2F44     		add	r7, r7, r5
 4114 0188 1846     		mov	r0, r3
 4115 018a 0AE0     		b	.L1047
 4116              	.L1069:
 4117 018c 0146     		mov	r1, r0
 4118 018e 4FF40072 		mov	r2, #512
 4119 0192 3046     		mov	r0, r6
 4120 0194 FFF7FEFF 		bl	memset
 4121 0198 BD42     		cmp	r5, r7
 4122 019a 18D0     		beq	.L1045
 4123 019c 0B98     		ldr	r0, [sp, #44]
 4124 019e 2C46     		mov	r4, r5
 4125 01a0 0135     		adds	r5, r5, #1
 4126              	.L1047:
 4127 01a2 C462     		str	r4, [r0, #44]
 4128 01a4 80F80480 		strb	r8, [r0, #4]
 4129 01a8 0021     		movs	r1, #0
 4130 01aa FFF7FEFF 		bl	move_window
 4131 01ae 0028     		cmp	r0, #0
 4132 01b0 ECD0     		beq	.L1069
 4133 01b2 0446     		mov	r4, r0
 4134              	.L1046:
 4135 01b4 B9F1010F 		cmp	r9, #1
 4136 01b8 7FF631AF 		bls	.L1055
 4137 01bc 0B98     		ldr	r0, [sp, #44]
 4138 01be 8369     		ldr	r3, [r0, #24]
 4139 01c0 9945     		cmp	r9, r3
 4140 01c2 BFF42CAF 		bcs	.L1055
 4141 01c6 4946     		mov	r1, r9
 4142 01c8 FFF7FEFF 		bl	remove_chain.part.7
 4143 01cc 27E7     		b	.L1055
 4144              	.L1045:
 4145 01ce 0BA8     		add	r0, sp, #44
 4146 01d0 FFF7FEFF 		bl	dir_register
 4147 01d4 0446     		mov	r4, r0
 4148 01d6 0028     		cmp	r0, #0
 4149 01d8 ECD1     		bne	.L1046
 4150 01da 1020     		movs	r0, #16
 4151 01dc 0121     		movs	r1, #1
 4152 01de 109B     		ldr	r3, [sp, #64]
 4153 01e0 0B9A     		ldr	r2, [sp, #44]
 4154 01e2 D872     		strb	r0, [r3, #11]
 4155 01e4 9DF81400 		ldrb	r0, [sp, #20]	@ zero_extendqisi2
 4156 01e8 83F814B0 		strb	fp, [r3, #20]
 4157 01ec 9875     		strb	r0, [r3, #22]
 4158 01ee 9DF80000 		ldrb	r0, [sp]	@ zero_extendqisi2
 4159 01f2 83F815A0 		strb	r10, [r3, #21]
 4160 01f6 D875     		strb	r0, [r3, #23]
 4161 01f8 9DF80400 		ldrb	r0, [sp, #4]	@ zero_extendqisi2
ARM GAS  /tmp/ccFB80Ed.s 			page 74


 4162 01fc 1876     		strb	r0, [r3, #24]
 4163 01fe 9DF81800 		ldrb	r0, [sp, #24]	@ zero_extendqisi2
 4164 0202 5876     		strb	r0, [r3, #25]
 4165 0204 9DF80800 		ldrb	r0, [sp, #8]	@ zero_extendqisi2
 4166 0208 9876     		strb	r0, [r3, #26]
 4167 020a 9DF80C00 		ldrb	r0, [sp, #12]	@ zero_extendqisi2
 4168 020e D876     		strb	r0, [r3, #27]
 4169 0210 1046     		mov	r0, r2
 4170 0212 1171     		strb	r1, [r2, #4]
 4171 0214 FFF7FEFF 		bl	sync
 4172 0218 0446     		mov	r4, r0
 4173 021a 00E7     		b	.L1055
 4174              	.L1068:
 4175 021c 596A     		ldr	r1, [r3, #36]
 4176 021e 8A42     		cmp	r2, r1
 4177 0220 9CD1     		bne	.L1064
 4178 0222 0021     		movs	r1, #0
 4179 0224 0846     		mov	r0, r1
 4180 0226 0A46     		mov	r2, r1
 4181 0228 0F46     		mov	r7, r1
 4182 022a 9DE7     		b	.L1044
 4183              		.size	f_mkdir, .-f_mkdir
 4184              		.section	.text.f_chmod,"ax",%progbits
 4185              		.align	1
 4186              		.p2align 2,,3
 4187              		.global	f_chmod
 4188              		.syntax unified
 4189              		.thumb
 4190              		.thumb_func
 4191              		.fpu softvfp
 4192              		.type	f_chmod, %function
 4193              	f_chmod:
 4194              		@ args = 0, pretend = 0, frame = 568
 4195              		@ frame_needed = 0, uses_anonymous_args = 0
 4196 0000 70B5     		push	{r4, r5, r6, lr}
 4197 0002 ADF50E7D 		sub	sp, sp, #568
 4198 0006 0D46     		mov	r5, r1
 4199 0008 1446     		mov	r4, r2
 4200 000a 0190     		str	r0, [sp, #4]
 4201 000c 05A9     		add	r1, sp, #20
 4202 000e 01A8     		add	r0, sp, #4
 4203 0010 0122     		movs	r2, #1
 4204 0012 FFF7FEFF 		bl	chk_mounted
 4205 0016 10B1     		cbz	r0, .L1074
 4206              	.L1071:
 4207 0018 0DF50E7D 		add	sp, sp, #568
 4208              		@ sp needed
 4209 001c 70BD     		pop	{r4, r5, r6, pc}
 4210              	.L1074:
 4211 001e 02AA     		add	r2, sp, #8
 4212 0020 0EAB     		add	r3, sp, #56
 4213 0022 0199     		ldr	r1, [sp, #4]
 4214 0024 05A8     		add	r0, sp, #20
 4215 0026 0B92     		str	r2, [sp, #44]
 4216 0028 0C93     		str	r3, [sp, #48]
 4217 002a FFF7FEFF 		bl	follow_path
 4218 002e 0028     		cmp	r0, #0
ARM GAS  /tmp/ccFB80Ed.s 			page 75


 4219 0030 F2D1     		bne	.L1071
 4220 0032 0A9B     		ldr	r3, [sp, #40]
 4221 0034 7BB1     		cbz	r3, .L1072
 4222 0036 0126     		movs	r6, #1
 4223 0038 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 4224 003a 0599     		ldr	r1, [sp, #20]
 4225 003c 5540     		eors	r5, r5, r2
 4226 003e 2C40     		ands	r4, r4, r5
 4227 0040 04F02704 		and	r4, r4, #39
 4228 0044 5440     		eors	r4, r4, r2
 4229 0046 DC72     		strb	r4, [r3, #11]
 4230 0048 0846     		mov	r0, r1
 4231 004a 0E71     		strb	r6, [r1, #4]
 4232 004c FFF7FEFF 		bl	sync
 4233 0050 0DF50E7D 		add	sp, sp, #568
 4234              		@ sp needed
 4235 0054 70BD     		pop	{r4, r5, r6, pc}
 4236              	.L1072:
 4237 0056 0620     		movs	r0, #6
 4238 0058 0DF50E7D 		add	sp, sp, #568
 4239              		@ sp needed
 4240 005c 70BD     		pop	{r4, r5, r6, pc}
 4241              		.size	f_chmod, .-f_chmod
 4242 005e 00BF     		.section	.text.f_utime,"ax",%progbits
 4243              		.align	1
 4244              		.p2align 2,,3
 4245              		.global	f_utime
 4246              		.syntax unified
 4247              		.thumb
 4248              		.thumb_func
 4249              		.fpu softvfp
 4250              		.type	f_utime, %function
 4251              	f_utime:
 4252              		@ args = 0, pretend = 0, frame = 568
 4253              		@ frame_needed = 0, uses_anonymous_args = 0
 4254 0000 30B5     		push	{r4, r5, lr}
 4255 0002 ADF50F7D 		sub	sp, sp, #572
 4256 0006 0C46     		mov	r4, r1
 4257 0008 0190     		str	r0, [sp, #4]
 4258 000a 05A9     		add	r1, sp, #20
 4259 000c 01A8     		add	r0, sp, #4
 4260 000e 0122     		movs	r2, #1
 4261 0010 FFF7FEFF 		bl	chk_mounted
 4262 0014 10B1     		cbz	r0, .L1079
 4263              	.L1076:
 4264 0016 0DF50F7D 		add	sp, sp, #572
 4265              		@ sp needed
 4266 001a 30BD     		pop	{r4, r5, pc}
 4267              	.L1079:
 4268 001c 02AA     		add	r2, sp, #8
 4269 001e 0EAB     		add	r3, sp, #56
 4270 0020 0199     		ldr	r1, [sp, #4]
 4271 0022 05A8     		add	r0, sp, #20
 4272 0024 0B92     		str	r2, [sp, #44]
 4273 0026 0C93     		str	r3, [sp, #48]
 4274 0028 FFF7FEFF 		bl	follow_path
 4275 002c 0028     		cmp	r0, #0
ARM GAS  /tmp/ccFB80Ed.s 			page 76


 4276 002e F2D1     		bne	.L1076
 4277 0030 0A9B     		ldr	r3, [sp, #40]
 4278 0032 93B1     		cbz	r3, .L1077
 4279 0034 0125     		movs	r5, #1
 4280 0036 E288     		ldrh	r2, [r4, #6]
 4281 0038 0599     		ldr	r1, [sp, #20]
 4282 003a 9A75     		strb	r2, [r3, #22]
 4283 003c E288     		ldrh	r2, [r4, #6]
 4284 003e 0846     		mov	r0, r1
 4285 0040 120A     		lsrs	r2, r2, #8
 4286 0042 DA75     		strb	r2, [r3, #23]
 4287 0044 A288     		ldrh	r2, [r4, #4]
 4288 0046 1A76     		strb	r2, [r3, #24]
 4289 0048 A288     		ldrh	r2, [r4, #4]
 4290 004a 120A     		lsrs	r2, r2, #8
 4291 004c 5A76     		strb	r2, [r3, #25]
 4292 004e 0D71     		strb	r5, [r1, #4]
 4293 0050 FFF7FEFF 		bl	sync
 4294 0054 0DF50F7D 		add	sp, sp, #572
 4295              		@ sp needed
 4296 0058 30BD     		pop	{r4, r5, pc}
 4297              	.L1077:
 4298 005a 0620     		movs	r0, #6
 4299 005c 0DF50F7D 		add	sp, sp, #572
 4300              		@ sp needed
 4301 0060 30BD     		pop	{r4, r5, pc}
 4302              		.size	f_utime, .-f_utime
 4303 0062 00BF     		.section	.text.f_rename,"ax",%progbits
 4304              		.align	1
 4305              		.p2align 2,,3
 4306              		.global	f_rename
 4307              		.syntax unified
 4308              		.thumb
 4309              		.thumb_func
 4310              		.fpu softvfp
 4311              		.type	f_rename, %function
 4312              	f_rename:
 4313              		@ args = 0, pretend = 0, frame = 632
 4314              		@ frame_needed = 0, uses_anonymous_args = 0
 4315 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4316 0004 ADF51E7D 		sub	sp, sp, #632
 4317 0008 8846     		mov	r8, r1
 4318 000a 0190     		str	r0, [sp, #4]
 4319 000c 0CA9     		add	r1, sp, #48
 4320 000e 01A8     		add	r0, sp, #4
 4321 0010 0122     		movs	r2, #1
 4322 0012 FFF7FEFF 		bl	chk_mounted
 4323 0016 18B1     		cbz	r0, .L1097
 4324              	.L1092:
 4325 0018 0DF51E7D 		add	sp, sp, #632
 4326              		@ sp needed
 4327 001c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4328              	.L1097:
 4329 0020 0C9C     		ldr	r4, [sp, #48]
 4330 0022 03AA     		add	r2, sp, #12
 4331 0024 1EAB     		add	r3, sp, #120
 4332 0026 0199     		ldr	r1, [sp, #4]
ARM GAS  /tmp/ccFB80Ed.s 			page 77


 4333 0028 0CA8     		add	r0, sp, #48
 4334 002a 1594     		str	r4, [sp, #84]
 4335 002c 1292     		str	r2, [sp, #72]
 4336 002e 1393     		str	r3, [sp, #76]
 4337 0030 FFF7FEFF 		bl	follow_path
 4338 0034 0028     		cmp	r0, #0
 4339 0036 EFD1     		bne	.L1092
 4340 0038 119E     		ldr	r6, [sp, #68]
 4341 003a 002E     		cmp	r6, #0
 4342 003c 6DD0     		beq	.L1087
 4343 003e 56F80B0F 		ldr	r0, [r6, #11]!	@ unaligned
 4344 0042 06AF     		add	r7, sp, #24
 4345 0044 7168     		ldr	r1, [r6, #4]	@ unaligned
 4346 0046 B268     		ldr	r2, [r6, #8]	@ unaligned
 4347 0048 F368     		ldr	r3, [r6, #12]	@ unaligned
 4348 004a 0CAD     		add	r5, sp, #48
 4349 004c 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 4350 004e 3069     		ldr	r0, [r6, #16]	@ unaligned
 4351 0050 15AC     		add	r4, sp, #84
 4352 0052 367D     		ldrb	r6, [r6, #20]	@ zero_extendqisi2
 4353 0054 3860     		str	r0, [r7]
 4354 0056 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4355 0058 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4356 005a 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4357 005c 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4358 005e 2B68     		ldr	r3, [r5]
 4359 0060 4146     		mov	r1, r8
 4360 0062 15A8     		add	r0, sp, #84
 4361 0064 3E71     		strb	r6, [r7, #4]
 4362 0066 2360     		str	r3, [r4]
 4363 0068 FFF7FEFF 		bl	follow_path
 4364 006c 0028     		cmp	r0, #0
 4365 006e 59D0     		beq	.L1088
 4366 0070 0428     		cmp	r0, #4
 4367 0072 D1D1     		bne	.L1092
 4368 0074 15A8     		add	r0, sp, #84
 4369 0076 FFF7FEFF 		bl	dir_register
 4370 007a 0028     		cmp	r0, #0
 4371 007c CCD1     		bne	.L1092
 4372 007e 0124     		movs	r4, #1
 4373 0080 1A9B     		ldr	r3, [sp, #104]
 4374 0082 DDF81E00 		ldr	r0, [sp, #30]	@ unaligned
 4375 0086 DDF81A20 		ldr	r2, [sp, #26]	@ unaligned
 4376 008a C3F81100 		str	r0, [r3, #17]	@ unaligned
 4377 008e DDF82600 		ldr	r0, [sp, #38]	@ unaligned
 4378 0092 DDF82250 		ldr	r5, [sp, #34]	@ unaligned
 4379 0096 C3F81900 		str	r0, [r3, #25]	@ unaligned
 4380 009a BDF82A00 		ldrh	r0, [sp, #42]	@ unaligned
 4381 009e C3F80D20 		str	r2, [r3, #13]	@ unaligned
 4382 00a2 9DF81810 		ldrb	r1, [sp, #24]	@ zero_extendqisi2
 4383 00a6 C3F81550 		str	r5, [r3, #21]	@ unaligned
 4384 00aa A3F81D00 		strh	r0, [r3, #29]	@ unaligned
 4385 00ae 9DF82C50 		ldrb	r5, [sp, #44]	@ zero_extendqisi2
 4386 00b2 0C98     		ldr	r0, [sp, #48]
 4387 00b4 41F02001 		orr	r1, r1, #32
 4388 00b8 D972     		strb	r1, [r3, #11]
 4389 00ba DD77     		strb	r5, [r3, #31]
ARM GAS  /tmp/ccFB80Ed.s 			page 78


 4390 00bc 0471     		strb	r4, [r0, #4]
 4391 00be 0E99     		ldr	r1, [sp, #56]
 4392 00c0 179A     		ldr	r2, [sp, #92]
 4393 00c2 9142     		cmp	r1, r2
 4394 00c4 20D0     		beq	.L1085
 4395 00c6 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 4396 00c8 D206     		lsls	r2, r2, #27
 4397 00ca 1DD5     		bpl	.L1085
 4398 00cc DA7E     		ldrb	r2, [r3, #27]	@ zero_extendqisi2
 4399 00ce 5C7D     		ldrb	r4, [r3, #21]	@ zero_extendqisi2
 4400 00d0 197D     		ldrb	r1, [r3, #20]	@ zero_extendqisi2
 4401 00d2 1598     		ldr	r0, [sp, #84]
 4402 00d4 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 4403 00d6 41EA0421 		orr	r1, r1, r4, lsl #8
 4404 00da 43EA0223 		orr	r3, r3, r2, lsl #8
 4405 00de 8269     		ldr	r2, [r0, #24]
 4406 00e0 43EA0143 		orr	r3, r3, r1, lsl #16
 4407 00e4 023B     		subs	r3, r3, #2
 4408 00e6 023A     		subs	r2, r2, #2
 4409 00e8 9342     		cmp	r3, r2
 4410 00ea 1DD2     		bcs	.L1090
 4411 00ec 8178     		ldrb	r1, [r0, #2]	@ zero_extendqisi2
 4412 00ee 826A     		ldr	r2, [r0, #40]
 4413 00f0 03FB0121 		mla	r1, r3, r1, r2
 4414 00f4 C1B1     		cbz	r1, .L1090
 4415 00f6 FFF7FEFF 		bl	move_window
 4416 00fa 0028     		cmp	r0, #0
 4417 00fc 8CD1     		bne	.L1092
 4418 00fe 159B     		ldr	r3, [sp, #84]
 4419 0100 93F85120 		ldrb	r2, [r3, #81]	@ zero_extendqisi2
 4420 0104 2E2A     		cmp	r2, #46
 4421 0106 11D0     		beq	.L1098
 4422              	.L1085:
 4423 0108 0CA8     		add	r0, sp, #48
 4424 010a FFF7FEFF 		bl	dir_remove
 4425 010e 0028     		cmp	r0, #0
 4426 0110 82D1     		bne	.L1092
 4427 0112 0C98     		ldr	r0, [sp, #48]
 4428 0114 FFF7FEFF 		bl	sync
 4429 0118 7EE7     		b	.L1092
 4430              	.L1087:
 4431 011a 0420     		movs	r0, #4
 4432 011c 0DF51E7D 		add	sp, sp, #632
 4433              		@ sp needed
 4434 0120 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4435              	.L1088:
 4436 0124 0820     		movs	r0, #8
 4437 0126 77E7     		b	.L1092
 4438              	.L1090:
 4439 0128 0220     		movs	r0, #2
 4440 012a 75E7     		b	.L1092
 4441              	.L1098:
 4442 012c 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 4443 012e 032A     		cmp	r2, #3
 4444 0130 0FD0     		beq	.L1099
 4445              	.L1083:
 4446 0132 1798     		ldr	r0, [sp, #92]
ARM GAS  /tmp/ccFB80Ed.s 			page 79


 4447              	.L1084:
 4448 0134 0121     		movs	r1, #1
 4449 0136 020C     		lsrs	r2, r0, #16
 4450 0138 150A     		lsrs	r5, r2, #8
 4451 013a C0F30724 		ubfx	r4, r0, #8, #8
 4452 013e 83F86A00 		strb	r0, [r3, #106]
 4453 0142 83F86420 		strb	r2, [r3, #100]
 4454 0146 83F86550 		strb	r5, [r3, #101]
 4455 014a 83F86B40 		strb	r4, [r3, #107]
 4456 014e 1971     		strb	r1, [r3, #4]
 4457 0150 DAE7     		b	.L1085
 4458              	.L1099:
 4459 0152 1799     		ldr	r1, [sp, #92]
 4460 0154 5A6A     		ldr	r2, [r3, #36]
 4461 0156 9142     		cmp	r1, r2
 4462 0158 EBD1     		bne	.L1083
 4463 015a EBE7     		b	.L1084
 4464              		.size	f_rename, .-f_rename
 4465              		.section	.bss.FatFs,"aw",%nobits
 4466              		.align	2
 4467              		.set	.LANCHOR0,. + 0
 4468              		.type	FatFs, %object
 4469              		.size	FatFs, 8
 4470              	FatFs:
 4471 0000 00000000 		.space	8
 4471      00000000 
 4472              		.section	.bss.Fsid,"aw",%nobits
 4473              		.align	1
 4474              		.set	.LANCHOR1,. + 0
 4475              		.type	Fsid, %object
 4476              		.size	Fsid, 2
 4477              	Fsid:
 4478 0000 0000     		.space	2
 4479              		.section	.rodata.LfnOfs,"a",%progbits
 4480              		.align	2
 4481              		.set	.LANCHOR2,. + 0
 4482              		.type	LfnOfs, %object
 4483              		.size	LfnOfs, 13
 4484              	LfnOfs:
 4485 0000 01       		.byte	1
 4486 0001 03       		.byte	3
 4487 0002 05       		.byte	5
 4488 0003 07       		.byte	7
 4489 0004 09       		.byte	9
 4490 0005 0E       		.byte	14
 4491 0006 10       		.byte	16
 4492 0007 12       		.byte	18
 4493 0008 14       		.byte	20
 4494 0009 16       		.byte	22
 4495 000a 18       		.byte	24
 4496 000b 1C       		.byte	28
 4497 000c 1E       		.byte	30
 4498              		.section	.rodata.excvt.4906,"a",%progbits
 4499              		.align	2
 4500              		.set	.LANCHOR3,. + 0
 4501              		.type	excvt.4906, %object
 4502              		.size	excvt.4906, 128
ARM GAS  /tmp/ccFB80Ed.s 			page 80


 4503              	excvt.4906:
 4504 0000 80       		.byte	-128
 4505 0001 9A       		.byte	-102
 4506 0002 90       		.byte	-112
 4507 0003 B6       		.byte	-74
 4508 0004 8E       		.byte	-114
 4509 0005 B7       		.byte	-73
 4510 0006 8F       		.byte	-113
 4511 0007 80       		.byte	-128
 4512 0008 D2       		.byte	-46
 4513 0009 D3       		.byte	-45
 4514 000a D4       		.byte	-44
 4515 000b D8       		.byte	-40
 4516 000c D7       		.byte	-41
 4517 000d DE       		.byte	-34
 4518 000e 8E       		.byte	-114
 4519 000f 8F       		.byte	-113
 4520 0010 90       		.byte	-112
 4521 0011 92       		.byte	-110
 4522 0012 92       		.byte	-110
 4523 0013 E2       		.byte	-30
 4524 0014 99       		.byte	-103
 4525 0015 E3       		.byte	-29
 4526 0016 EA       		.byte	-22
 4527 0017 EB       		.byte	-21
 4528 0018 59       		.byte	89
 4529 0019 99       		.byte	-103
 4530 001a 9A       		.byte	-102
 4531 001b 9D       		.byte	-99
 4532 001c 9C       		.byte	-100
 4533 001d 9D       		.byte	-99
 4534 001e 9E       		.byte	-98
 4535 001f 9F       		.byte	-97
 4536 0020 B5       		.byte	-75
 4537 0021 D6       		.byte	-42
 4538 0022 E0       		.byte	-32
 4539 0023 E9       		.byte	-23
 4540 0024 A5       		.byte	-91
 4541 0025 A5       		.byte	-91
 4542 0026 A6       		.byte	-90
 4543 0027 A7       		.byte	-89
 4544 0028 A8       		.byte	-88
 4545 0029 A9       		.byte	-87
 4546 002a AA       		.byte	-86
 4547 002b AB       		.byte	-85
 4548 002c AC       		.byte	-84
 4549 002d 21       		.byte	33
 4550 002e AE       		.byte	-82
 4551 002f AF       		.byte	-81
 4552 0030 B0       		.byte	-80
 4553 0031 B1       		.byte	-79
 4554 0032 B2       		.byte	-78
 4555 0033 B3       		.byte	-77
 4556 0034 B4       		.byte	-76
 4557 0035 B5       		.byte	-75
 4558 0036 B6       		.byte	-74
 4559 0037 B7       		.byte	-73
ARM GAS  /tmp/ccFB80Ed.s 			page 81


 4560 0038 B8       		.byte	-72
 4561 0039 B9       		.byte	-71
 4562 003a BA       		.byte	-70
 4563 003b BB       		.byte	-69
 4564 003c BC       		.byte	-68
 4565 003d BD       		.byte	-67
 4566 003e BE       		.byte	-66
 4567 003f BF       		.byte	-65
 4568 0040 C0       		.byte	-64
 4569 0041 C1       		.byte	-63
 4570 0042 C2       		.byte	-62
 4571 0043 C3       		.byte	-61
 4572 0044 C4       		.byte	-60
 4573 0045 C5       		.byte	-59
 4574 0046 C7       		.byte	-57
 4575 0047 C7       		.byte	-57
 4576 0048 C8       		.byte	-56
 4577 0049 C9       		.byte	-55
 4578 004a CA       		.byte	-54
 4579 004b CB       		.byte	-53
 4580 004c CC       		.byte	-52
 4581 004d CD       		.byte	-51
 4582 004e CE       		.byte	-50
 4583 004f CF       		.byte	-49
 4584 0050 D0       		.byte	-48
 4585 0051 D1       		.byte	-47
 4586 0052 D2       		.byte	-46
 4587 0053 D3       		.byte	-45
 4588 0054 D4       		.byte	-44
 4589 0055 D5       		.byte	-43
 4590 0056 D6       		.byte	-42
 4591 0057 D7       		.byte	-41
 4592 0058 D8       		.byte	-40
 4593 0059 D9       		.byte	-39
 4594 005a DA       		.byte	-38
 4595 005b DB       		.byte	-37
 4596 005c DC       		.byte	-36
 4597 005d DD       		.byte	-35
 4598 005e DE       		.byte	-34
 4599 005f DF       		.byte	-33
 4600 0060 E0       		.byte	-32
 4601 0061 E1       		.byte	-31
 4602 0062 E2       		.byte	-30
 4603 0063 E3       		.byte	-29
 4604 0064 E5       		.byte	-27
 4605 0065 E5       		.byte	-27
 4606 0066 E6       		.byte	-26
 4607 0067 E7       		.byte	-25
 4608 0068 E7       		.byte	-25
 4609 0069 E9       		.byte	-23
 4610 006a EA       		.byte	-22
 4611 006b EB       		.byte	-21
 4612 006c ED       		.byte	-19
 4613 006d ED       		.byte	-19
 4614 006e EE       		.byte	-18
 4615 006f EF       		.byte	-17
 4616 0070 F0       		.byte	-16
ARM GAS  /tmp/ccFB80Ed.s 			page 82


 4617 0071 F1       		.byte	-15
 4618 0072 F2       		.byte	-14
 4619 0073 F3       		.byte	-13
 4620 0074 F4       		.byte	-12
 4621 0075 F5       		.byte	-11
 4622 0076 F6       		.byte	-10
 4623 0077 F7       		.byte	-9
 4624 0078 F8       		.byte	-8
 4625 0079 F9       		.byte	-7
 4626 007a FA       		.byte	-6
 4627 007b FB       		.byte	-5
 4628 007c FC       		.byte	-4
 4629 007d FD       		.byte	-3
 4630 007e FE       		.byte	-2
 4631 007f FF       		.byte	-1
 4632              		.section	.rodata.follow_path.str1.4,"aMS",%progbits,1
 4633              		.align	2
 4634              	.LC0:
 4635 0000 222A3A3C 		.ascii	"\"*:<>?|\177\000"
 4635      3E3F7C7F 
 4635      00
 4636 0009 000000   		.space	3
 4637              	.LC1:
 4638 000c 2B2C3B3D 		.ascii	"+,;=[]\000"
 4638      5B5D00
 4639              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
