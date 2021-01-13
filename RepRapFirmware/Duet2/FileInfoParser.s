ARM GAS  /tmp/cc5yZgeD.s 			page 1


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
  13              		.file	"FileInfoParser.cpp"
  14              		.section	.text._ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6, %function
  22              	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6:
  23              		@ args = 0, pretend = 0, frame = 8
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  26 0004 0023     		movs	r3, #0
  27 0006 171F     		subs	r7, r2, #4
  28 0008 83B0     		sub	sp, sp, #12
  29 000a C0F89C30 		str	r3, [r0, #156]	@ float
  30 000e 40D0     		beq	.L15
  31 0010 4FF00008 		mov	r8, #0
  32 0014 0E46     		mov	r6, r1
  33 0016 8146     		mov	r9, r0
  34 0018 DFF820B1 		ldr	fp, .L38
  35 001c C246     		mov	r10, r8
  36 001e 4146     		mov	r1, r8
  37 0020 4346     		mov	r3, r8
  38 0022 07E0     		b	.L14
  39              	.L34:
  40 0024 A1B1     		cbz	r1, .L4
  41 0026 B4F10A01 		subs	r1, r4, #10
  42 002a 18BF     		it	ne
  43 002c 0121     		movne	r1, #1
  44              	.L3:
  45 002e AF42     		cmp	r7, r5
  46 0030 2B46     		mov	r3, r5
  47 0032 09D9     		bls	.L2
  48              	.L14:
  49 0034 F45C     		ldrb	r4, [r6, r3]	@ zero_extendqisi2
  50 0036 3B2C     		cmp	r4, #59
  51 0038 03F10105 		add	r5, r3, #1
  52 003c F2D1     		bne	.L34
  53 003e AF42     		cmp	r7, r5
  54 0040 4FF00101 		mov	r1, #1
  55 0044 2B46     		mov	r3, r5
  56 0046 F5D8     		bhi	.L14
  57              	.L2:
ARM GAS  /tmp/cc5yZgeD.s 			page 2


  58 0048 4046     		mov	r0, r8
  59 004a 03B0     		add	sp, sp, #12
  60              		@ sp needed
  61 004c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  62              	.L4:
  63 0050 472C     		cmp	r4, #71
  64 0052 ECD1     		bne	.L3
  65 0054 705D     		ldrb	r0, [r6, r5]	@ zero_extendqisi2
  66 0056 BAF1000F 		cmp	r10, #0
  67 005a 0AD1     		bne	.L35
  68 005c 3928     		cmp	r0, #57
  69 005e 1DD0     		beq	.L36
  70 0060 3038     		subs	r0, r0, #48
  71 0062 0128     		cmp	r0, #1
  72 0064 03D8     		bhi	.L24
  73 0066 F118     		adds	r1, r6, r3
  74 0068 8978     		ldrb	r1, [r1, #2]	@ zero_extendqisi2
  75 006a 2029     		cmp	r1, #32
  76 006c 23D0     		beq	.L37
  77              	.L24:
  78 006e 0021     		movs	r1, #0
  79 0070 DDE7     		b	.L3
  80              	.L35:
  81 0072 3928     		cmp	r0, #57
  82 0074 DBD1     		bne	.L3
  83 0076 3344     		add	r3, r3, r6
  84 0078 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
  85 007a 3028     		cmp	r0, #48
  86 007c D7D1     		bne	.L3
  87 007e 93F803A0 		ldrb	r10, [r3, #3]	@ zero_extendqisi2
  88 0082 BAF1200F 		cmp	r10, #32
  89 0086 94BF     		ite	ls
  90 0088 4FF0000A 		movls	r10, #0
  91 008c 4FF0010A 		movhi	r10, #1
  92 0090 CDE7     		b	.L3
  93              	.L15:
  94 0092 B846     		mov	r8, r7
  95 0094 4046     		mov	r0, r8
  96 0096 03B0     		add	sp, sp, #12
  97              		@ sp needed
  98 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  99              	.L36:
 100 009c 3344     		add	r3, r3, r6
 101 009e 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 102 00a0 3129     		cmp	r1, #49
 103 00a2 E4D1     		bne	.L24
 104 00a4 DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 105 00a6 202B     		cmp	r3, #32
 106 00a8 5146     		mov	r1, r10
 107 00aa 8CBF     		ite	hi
 108 00ac 4FF0000A 		movhi	r10, #0
 109 00b0 4FF0010A 		movls	r10, #1
 110 00b4 BBE7     		b	.L3
 111              	.L37:
 112 00b6 D91C     		adds	r1, r3, #3
 113 00b8 B942     		cmp	r1, r7
 114 00ba 03F10405 		add	r5, r3, #4
ARM GAS  /tmp/cc5yZgeD.s 			page 3


 115 00be D6D2     		bcs	.L24
 116 00c0 705C     		ldrb	r0, [r6, r1]	@ zero_extendqisi2
 117 00c2 5A28     		cmp	r0, #90
 118 00c4 3144     		add	r1, r1, r6
 119 00c6 11D0     		beq	.L7
 120 00c8 3B28     		cmp	r0, #59
 121 00ca D0D0     		beq	.L24
 122 00cc 5D1D     		adds	r5, r3, #5
 123 00ce D41E     		subs	r4, r2, #3
 124 00d0 0B46     		mov	r3, r1
 125 00d2 06E0     		b	.L8
 126              	.L13:
 127 00d4 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
 128 00d8 5A29     		cmp	r1, #90
 129 00da 07D0     		beq	.L7
 130 00dc 3B29     		cmp	r1, #59
 131 00de C6D0     		beq	.L24
 132 00e0 0546     		mov	r5, r0
 133              	.L8:
 134 00e2 AC42     		cmp	r4, r5
 135 00e4 05F10100 		add	r0, r5, #1
 136 00e8 F4D1     		bne	.L13
 137 00ea C0E7     		b	.L24
 138              	.L7:
 139 00ec 0021     		movs	r1, #0
 140 00ee 7019     		adds	r0, r6, r5
 141 00f0 0192     		str	r2, [sp, #4]
 142 00f2 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 143 00f6 D9ED277A 		vldr.32	s15, [r9, #156]
 144 00fa 019A     		ldr	r2, [sp, #4]
 145 00fc F5EE407A 		vcmp.f32	s15, #0
 146 0100 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 147 0104 04D0     		beq	.L10
 148 0106 B4EEE70A 		vcmpe.f32	s0, s15
 149 010a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 150 010e AED5     		bpl	.L24
 151              	.L10:
 152 0110 DBF80030 		ldr	r3, [fp]	@ unaligned
 153 0114 03F51D63 		add	r3, r3, #2512
 154 0118 D3ED007A 		vldr.32	s15, [r3]
 155 011c B0EE087A 		vmov.f32	s14, #3.0e+0
 156 0120 67EE877A 		vmul.f32	s15, s15, s14
 157 0124 B4EEE70A 		vcmpe.f32	s0, s15
 158 0128 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 159 012c 9FD8     		bhi	.L24
 160 012e 89ED270A 		vstr.32	s0, [r9, #156]
 161 0132 0021     		movs	r1, #0
 162 0134 4FF00108 		mov	r8, #1
 163 0138 79E7     		b	.L3
 164              	.L39:
 165 013a 00BF     		.align	2
 166              	.L38:
 167 013c 00000000 		.word	reprap
 168              		.size	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6, .-_ZN14FileInfoParser20FindFirstLayer
 169              		.section	.text._ZN14FileInfoParser15FindLayerHeightEPKcj.part.7,"ax",%progbits
 170              		.align	1
 171              		.p2align 2,,3
ARM GAS  /tmp/cc5yZgeD.s 			page 4


 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu fpv4-sp-d16
 176              		.type	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7, %function
 177              	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7:
 178              		@ args = 0, pretend = 0, frame = 8
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 181 0004 1C4F     		ldr	r7, .L59
 182 0006 1D4E     		ldr	r6, .L59+4
 183 0008 1D4D     		ldr	r5, .L59+8
 184 000a 83B0     		sub	sp, sp, #12
 185 000c 8246     		mov	r10, r0
 186 000e 01F10108 		add	r8, r1, #1
 187 0012 07F11009 		add	r9, r7, #16
 188              	.L49:
 189 0016 4446     		mov	r4, r8
 190              	.L41:
 191 0018 2046     		mov	r0, r4
 192 001a 3146     		mov	r1, r6
 193 001c FFF7FEFF 		bl	strstr
 194 0020 0446     		mov	r4, r0
 195 0022 18B3     		cbz	r0, .L42
 196 0024 3046     		mov	r0, r6
 197 0026 FFF7FEFF 		bl	strlen
 198 002a 14F8013C 		ldrb	r3, [r4, #-1]	@ zero_extendqisi2
 199 002e 202B     		cmp	r3, #32
 200 0030 0444     		add	r4, r4, r0
 201 0032 03D0     		beq	.L43
 202 0034 3B2B     		cmp	r3, #59
 203 0036 01D0     		beq	.L43
 204 0038 092B     		cmp	r3, #9
 205 003a EDD1     		bne	.L41
 206              	.L43:
 207 003c A346     		mov	fp, r4
 208              	.L45:
 209 003e 9BF80010 		ldrb	r1, [fp]	@ zero_extendqisi2
 210 0042 2846     		mov	r0, r5
 211 0044 5C46     		mov	r4, fp
 212 0046 0BF1010B 		add	fp, fp, #1
 213 004a FFF7FEFF 		bl	strchr
 214 004e 0028     		cmp	r0, #0
 215 0050 F5D1     		bne	.L45
 216 0052 01A9     		add	r1, sp, #4
 217 0054 2046     		mov	r0, r4
 218 0056 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 219 005a 019B     		ldr	r3, [sp, #4]
 220 005c 9C42     		cmp	r4, r3
 221 005e DBD0     		beq	.L41
 222 0060 8AED260A 		vstr.32	s0, [r10, #152]
 223 0064 0120     		movs	r0, #1
 224              	.L48:
 225 0066 03B0     		add	sp, sp, #12
 226              		@ sp needed
 227 0068 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 228              	.L42:
ARM GAS  /tmp/cc5yZgeD.s 			page 5


 229 006c 4F45     		cmp	r7, r9
 230 006e FAD0     		beq	.L48
 231 0070 57F8046B 		ldr	r6, [r7], #4
 232 0074 CFE7     		b	.L49
 233              	.L60:
 234 0076 00BF     		.align	2
 235              	.L59:
 236 0078 04000000 		.word	.LANCHOR0+4
 237 007c 00000000 		.word	.LC0
 238 0080 10000000 		.word	.LC1
 239              		.size	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7, .-_ZN14FileInfoParser15FindLayerHeightEPKc
 240              		.section	.text._ZN13GCodeFileInfo4InitEv,"ax",%progbits
 241              		.align	1
 242              		.p2align 2,,3
 243              		.global	_ZN13GCodeFileInfo4InitEv
 244              		.syntax unified
 245              		.thumb
 246              		.thumb_func
 247              		.fpu fpv4-sp-d16
 248              		.type	_ZN13GCodeFileInfo4InitEv, %function
 249              	_ZN13GCodeFileInfo4InitEv:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252              		@ link register save eliminated.
 253 0000 10B4     		push	{r4}
 254 0002 0023     		movs	r3, #0
 255 0004 0021     		movs	r1, #0
 256 0006 0124     		movs	r4, #1
 257 0008 80F84C30 		strb	r3, [r0, #76]
 258 000c C0E91033 		strd	r3, r3, [r0, #64]
 259 0010 8364     		str	r3, [r0, #72]
 260 0012 80F84E30 		strb	r3, [r0, #78]
 261 0016 80F84D40 		strb	r4, [r0, #77]
 262 001a 4161     		str	r1, [r0, #20]	@ float
 263 001c 8161     		str	r1, [r0, #24]	@ float
 264 001e 0161     		str	r1, [r0, #16]	@ float
 265 0020 00F11C03 		add	r3, r0, #28
 266 0024 0A46     		mov	r2, r1	@ float
 267 0026 4030     		adds	r0, r0, #64
 268              	.L62:
 269 0028 43F8042B 		str	r2, [r3], #4	@ float
 270 002c 8342     		cmp	r3, r0
 271 002e FBD1     		bne	.L62
 272 0030 5DF8044B 		ldr	r4, [sp], #4
 273 0034 7047     		bx	lr
 274              		.size	_ZN13GCodeFileInfo4InitEv, .-_ZN13GCodeFileInfo4InitEv
 275 0036 00BF     		.section	.text._ZN14FileInfoParserC2Ev,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.global	_ZN14FileInfoParserC2Ev
 279              		.syntax unified
 280              		.thumb
 281              		.thumb_func
 282              		.fpu fpv4-sp-d16
 283              		.type	_ZN14FileInfoParserC2Ev, %function
 284              	_ZN14FileInfoParserC2Ev:
 285              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc5yZgeD.s 			page 6


 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287 0000 10B5     		push	{r4, lr}
 288 0002 0446     		mov	r4, r0
 289 0004 0023     		movs	r3, #0
 290 0006 0022     		movs	r2, #0
 291 0008 0120     		movs	r0, #1
 292 000a 1146     		mov	r1, r2	@ float
 293 000c 2360     		str	r3, [r4]
 294 000e 2371     		strb	r3, [r4, #4]
 295 0010 6371     		strb	r3, [r4, #5]
 296 0012 C4F88030 		str	r3, [r4, #128]
 297 0016 84F8D630 		strb	r3, [r4, #214]
 298 001a C4F81431 		str	r3, [r4, #276]
 299 001e C4F81831 		str	r3, [r4, #280]
 300 0022 C4F81C31 		str	r3, [r4, #284]
 301 0026 C4F82031 		str	r3, [r4, #288]
 302 002a 84F8D430 		strb	r3, [r4, #212]
 303 002e C4E93233 		strd	r3, r3, [r4, #200]
 304 0032 C4F8D030 		str	r3, [r4, #208]
 305 0036 C4F89C20 		str	r2, [r4, #156]	@ float
 306 003a C4F8A020 		str	r2, [r4, #160]	@ float
 307 003e C4F89820 		str	r2, [r4, #152]	@ float
 308 0042 84F8D500 		strb	r0, [r4, #213]
 309 0046 04F1A403 		add	r3, r4, #164
 310 004a 04F1C802 		add	r2, r4, #200
 311              	.L66:
 312 004e 43F8041B 		str	r1, [r3], #4	@ float
 313 0052 9342     		cmp	r3, r2
 314 0054 FBD1     		bne	.L66
 315 0056 2046     		mov	r0, r4
 316 0058 0249     		ldr	r1, .L69
 317 005a FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 318 005e 2046     		mov	r0, r4
 319 0060 10BD     		pop	{r4, pc}
 320              	.L70:
 321 0062 00BF     		.align	2
 322              	.L69:
 323 0064 00000000 		.word	.LC2
 324              		.size	_ZN14FileInfoParserC2Ev, .-_ZN14FileInfoParserC2Ev
 325              		.global	_ZN14FileInfoParserC1Ev
 326              		.thumb_set _ZN14FileInfoParserC1Ev,_ZN14FileInfoParserC2Ev
 327              		.section	.text._ZN14FileInfoParser20FindFirstLayerHeightEPKcj,"ax",%progbits
 328              		.align	1
 329              		.p2align 2,,3
 330              		.global	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj
 331              		.syntax unified
 332              		.thumb
 333              		.thumb_func
 334              		.fpu fpv4-sp-d16
 335              		.type	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj, %function
 336              	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj:
 337              		@ args = 0, pretend = 0, frame = 0
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339              		@ link register save eliminated.
 340 0000 032A     		cmp	r2, #3
 341 0002 01D9     		bls	.L72
 342 0004 FFF7FEBF 		b	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6
ARM GAS  /tmp/cc5yZgeD.s 			page 7


 343              	.L72:
 344 0008 0020     		movs	r0, #0
 345 000a 7047     		bx	lr
 346              		.size	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj, .-_ZN14FileInfoParser20FindFirstLayerHeightE
 347              		.section	.text._ZN14FileInfoParser10FindHeightEPKcj,"ax",%progbits
 348              		.align	1
 349              		.p2align 2,,3
 350              		.global	_ZN14FileInfoParser10FindHeightEPKcj
 351              		.syntax unified
 352              		.thumb
 353              		.thumb_func
 354              		.fpu fpv4-sp-d16
 355              		.type	_ZN14FileInfoParser10FindHeightEPKcj, %function
 356              	_ZN14FileInfoParser10FindHeightEPKcj:
 357              		@ args = 0, pretend = 0, frame = 8
 358              		@ frame_needed = 0, uses_anonymous_args = 0
 359 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 360 0004 4FF0000B 		mov	fp, #0
 361 0008 DFF8C8A1 		ldr	r10, .L163+12
 362 000c 83B0     		sub	sp, sp, #12
 363 000e 1646     		mov	r6, r2
 364 0010 8046     		mov	r8, r0
 365 0012 8946     		mov	r9, r1
 366 0014 541E     		subs	r4, r2, #1
 367 0016 5F46     		mov	r7, fp
 368              	.L74:
 369 0018 052E     		cmp	r6, #5
 370 001a 0CD9     		bls	.L75
 371              	.L156:
 372 001c 99F80020 		ldrb	r2, [r9]	@ zero_extendqisi2
 373 0020 0D2A     		cmp	r2, #13
 374 0022 08D0     		beq	.L75
 375 0024 0A2A     		cmp	r2, #10
 376 0026 06D0     		beq	.L75
 377 0028 2646     		mov	r6, r4
 378 002a 052E     		cmp	r6, #5
 379 002c 09F10109 		add	r9, r9, #1
 380 0030 04F1FF34 		add	r4, r4, #-1
 381 0034 F2D8     		bhi	.L156
 382              	.L75:
 383 0036 4946     		mov	r1, r9
 384 0038 042C     		cmp	r4, #4
 385 003a 0D46     		mov	r5, r1
 386 003c 1ED9     		bls	.L101
 387              	.L160:
 388 003e 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 389 0042 A2F10903 		sub	r3, r2, #9
 390 0046 DBB2     		uxtb	r3, r3
 391 0048 172B     		cmp	r3, #23
 392 004a 2AFA03F0 		lsr	r0, r10, r3
 393 004e 0ED9     		bls	.L157
 394 0050 472A     		cmp	r2, #71
 395 0052 05F10209 		add	r9, r5, #2
 396 0056 A6F10200 		sub	r0, r6, #2
 397 005a 40F0B280 		bne	.L158
 398 005e AA78     		ldrb	r2, [r5, #2]	@ zero_extendqisi2
 399 0060 BBF1000F 		cmp	fp, #0
ARM GAS  /tmp/cc5yZgeD.s 			page 8


 400 0064 38D0     		beq	.L81
 401 0066 392A     		cmp	r2, #57
 402 0068 13D0     		beq	.L159
 403              	.L100:
 404 006a 0646     		mov	r6, r0
 405 006c 0FE0     		b	.L154
 406              	.L157:
 407 006e C307     		lsls	r3, r0, #31
 408 0070 08D5     		bpl	.L79
 409 0072 2646     		mov	r6, r4
 410 0074 013C     		subs	r4, r4, #1
 411 0076 042C     		cmp	r4, #4
 412 0078 0D46     		mov	r5, r1
 413 007a E0D8     		bhi	.L160
 414              	.L101:
 415 007c 3846     		mov	r0, r7
 416 007e 03B0     		add	sp, sp, #12
 417              		@ sp needed
 418 0080 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 419              	.L79:
 420 0084 023E     		subs	r6, r6, #2
 421 0086 05F10209 		add	r9, r5, #2
 422              	.L93:
 423 008a 3B2A     		cmp	r2, #59
 424 008c 12D0     		beq	.L149
 425              	.L154:
 426 008e 741E     		subs	r4, r6, #1
 427 0090 C2E7     		b	.L74
 428              	.L159:
 429 0092 EA78     		ldrb	r2, [r5, #3]	@ zero_extendqisi2
 430 0094 302A     		cmp	r2, #48
 431 0096 E8D1     		bne	.L100
 432 0098 95F804B0 		ldrb	fp, [r5, #4]	@ zero_extendqisi2
 433 009c ABF1300B 		sub	fp, fp, #48
 434 00a0 BBF1090F 		cmp	fp, #9
 435 00a4 0646     		mov	r6, r0
 436 00a6 8CBF     		ite	hi
 437 00a8 4FF0000B 		movhi	fp, #0
 438 00ac 4FF0010B 		movls	fp, #1
 439 00b0 441E     		subs	r4, r0, #1
 440 00b2 B1E7     		b	.L74
 441              	.L149:
 442 00b4 1F2E     		cmp	r6, #31
 443 00b6 EAD9     		bls	.L154
 444 00b8 4349     		ldr	r1, .L163
 445 00ba 4846     		mov	r0, r9
 446 00bc FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 447 00c0 0446     		mov	r4, r0
 448 00c2 0028     		cmp	r0, #0
 449 00c4 E3D0     		beq	.L154
 450 00c6 05F11600 		add	r0, r5, #22
 451 00ca 0021     		movs	r1, #0
 452 00cc FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 453 00d0 2746     		mov	r7, r4
 454 00d2 88ED280A 		vstr.32	s0, [r8, #160]
 455 00d6 D1E7     		b	.L101
 456              	.L81:
ARM GAS  /tmp/cc5yZgeD.s 			page 9


 457 00d8 A2F13001 		sub	r1, r2, #48
 458 00dc 0129     		cmp	r1, #1
 459 00de 12D9     		bls	.L161
 460 00e0 392A     		cmp	r2, #57
 461 00e2 C2D1     		bne	.L100
 462 00e4 EA78     		ldrb	r2, [r5, #3]	@ zero_extendqisi2
 463 00e6 312A     		cmp	r2, #49
 464 00e8 BFD1     		bne	.L100
 465 00ea 95F804B0 		ldrb	fp, [r5, #4]	@ zero_extendqisi2
 466 00ee ABF1300B 		sub	fp, fp, #48
 467 00f2 BBF1090F 		cmp	fp, #9
 468 00f6 0646     		mov	r6, r0
 469 00f8 94BF     		ite	ls
 470 00fa 4FF0000B 		movls	fp, #0
 471 00fe 4FF0010B 		movhi	fp, #1
 472 0102 441E     		subs	r4, r0, #1
 473 0104 88E7     		b	.L74
 474              	.L161:
 475 0106 EA78     		ldrb	r2, [r5, #3]	@ zero_extendqisi2
 476 0108 A2F13001 		sub	r1, r2, #48
 477 010c 0929     		cmp	r1, #9
 478 010e A6F10306 		sub	r6, r6, #3
 479 0112 05F10309 		add	r9, r5, #3
 480 0116 BAD9     		bls	.L154
 481 0118 032E     		cmp	r6, #3
 482 011a 1AD0     		beq	.L155
 483 011c 5A2A     		cmp	r2, #90
 484 011e 08BF     		it	eq
 485 0120 0435     		addeq	r5, r5, #4
 486 0122 18D0     		beq	.L84
 487 0124 3B2A     		cmp	r2, #59
 488 0126 B2D0     		beq	.L154
 489 0128 0A2A     		cmp	r2, #10
 490 012a B0D0     		beq	.L154
 491 012c 0D2A     		cmp	r2, #13
 492 012e AED0     		beq	.L154
 493 0130 0435     		adds	r5, r5, #4
 494 0132 0AE0     		b	.L85
 495              	.L148:
 496 0134 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 497 0136 5A2A     		cmp	r2, #90
 498 0138 09F10105 		add	r5, r9, #1
 499 013c 0BD0     		beq	.L84
 500 013e 3B2A     		cmp	r2, #59
 501 0140 A5D0     		beq	.L154
 502 0142 0A2A     		cmp	r2, #10
 503 0144 A3D0     		beq	.L154
 504 0146 0D2A     		cmp	r2, #13
 505 0148 A1D0     		beq	.L154
 506              	.L85:
 507 014a 013E     		subs	r6, r6, #1
 508 014c 032E     		cmp	r6, #3
 509 014e A946     		mov	r9, r5
 510 0150 F0D1     		bne	.L148
 511              	.L155:
 512 0152 0224     		movs	r4, #2
 513 0154 6FE7     		b	.L75
ARM GAS  /tmp/cc5yZgeD.s 			page 10


 514              	.L84:
 515 0156 5A21     		movs	r1, #90
 516 0158 08E0     		b	.L89
 517              	.L162:
 518 015a 0D29     		cmp	r1, #13
 519 015c 0CD0     		beq	.L87
 520 015e 3B29     		cmp	r1, #59
 521 0160 0AD0     		beq	.L87
 522 0162 022C     		cmp	r4, #2
 523 0164 19D0     		beq	.L88
 524 0166 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 525 0168 2646     		mov	r6, r4
 526 016a 9146     		mov	r9, r2
 527              	.L89:
 528 016c 0A29     		cmp	r1, #10
 529 016e 09F10102 		add	r2, r9, #1
 530 0172 06F1FF34 		add	r4, r6, #-1
 531 0176 F0D1     		bne	.L162
 532              	.L87:
 533 0178 1449     		ldr	r1, .L163+4
 534 017a 4846     		mov	r0, r9
 535 017c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 536 0180 0246     		mov	r2, r0
 537 0182 0028     		cmp	r0, #0
 538 0184 7FF448AF 		bne	.L74
 539 0188 1149     		ldr	r1, .L163+8
 540 018a 0192     		str	r2, [sp, #4]
 541 018c 4846     		mov	r0, r9
 542 018e FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 543 0192 019A     		ldr	r2, [sp, #4]
 544 0194 68B1     		cbz	r0, .L90
 545 0196 9346     		mov	fp, r2
 546 0198 3EE7     		b	.L74
 547              	.L88:
 548 019a 1046     		mov	r0, r2
 549 019c 0B49     		ldr	r1, .L163+4
 550 019e 0192     		str	r2, [sp, #4]
 551 01a0 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 552 01a4 019A     		ldr	r2, [sp, #4]
 553 01a6 2646     		mov	r6, r4
 554 01a8 9146     		mov	r9, r2
 555 01aa 0124     		movs	r4, #1
 556 01ac 0028     		cmp	r0, #0
 557 01ae 7FF442AF 		bne	.L75
 558              	.L90:
 559 01b2 2846     		mov	r0, r5
 560 01b4 0021     		movs	r1, #0
 561 01b6 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 562 01ba 0127     		movs	r7, #1
 563 01bc 88ED280A 		vstr.32	s0, [r8, #160]
 564 01c0 2AE7     		b	.L74
 565              	.L158:
 566 01c2 0646     		mov	r6, r0
 567 01c4 61E7     		b	.L93
 568              	.L164:
 569 01c6 00BF     		.align	2
 570              	.L163:
ARM GAS  /tmp/cc5yZgeD.s 			page 11


 571 01c8 00000000 		.word	.LANCHOR1
 572 01cc 00000000 		.word	.LC3
 573 01d0 04000000 		.word	.LC4
 574 01d4 13008000 		.word	8388627
 575              		.size	_ZN14FileInfoParser10FindHeightEPKcj, .-_ZN14FileInfoParser10FindHeightEPKcj
 576              		.section	.text._ZN14FileInfoParser15FindLayerHeightEPKcj,"ax",%progbits
 577              		.align	1
 578              		.p2align 2,,3
 579              		.global	_ZN14FileInfoParser15FindLayerHeightEPKcj
 580              		.syntax unified
 581              		.thumb
 582              		.thumb_func
 583              		.fpu fpv4-sp-d16
 584              		.type	_ZN14FileInfoParser15FindLayerHeightEPKcj, %function
 585              	_ZN14FileInfoParser15FindLayerHeightEPKcj:
 586              		@ args = 0, pretend = 0, frame = 0
 587              		@ frame_needed = 0, uses_anonymous_args = 0
 588              		@ link register save eliminated.
 589 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 590 0002 0BB1     		cbz	r3, .L166
 591 0004 FFF7FEBF 		b	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7
 592              	.L166:
 593 0008 1846     		mov	r0, r3
 594 000a 7047     		bx	lr
 595              		.size	_ZN14FileInfoParser15FindLayerHeightEPKcj, .-_ZN14FileInfoParser15FindLayerHeightEPKcj
 596              		.section	.text._ZN14FileInfoParser14FindSlicerInfoEPKcj,"ax",%progbits
 597              		.align	1
 598              		.p2align 2,,3
 599              		.global	_ZN14FileInfoParser14FindSlicerInfoEPKcj
 600              		.syntax unified
 601              		.thumb
 602              		.thumb_func
 603              		.fpu fpv4-sp-d16
 604              		.type	_ZN14FileInfoParser14FindSlicerInfoEPKcj, %function
 605              	_ZN14FileInfoParser14FindSlicerInfoEPKcj:
 606              		@ args = 0, pretend = 0, frame = 8
 607              		@ frame_needed = 0, uses_anonymous_args = 0
 608 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 609 0004 1F4E     		ldr	r6, .L184
 610 0006 DFF88890 		ldr	r9, .L184+12
 611 000a 8846     		mov	r8, r1
 612 000c 83B0     		sub	sp, sp, #12
 613 000e 0746     		mov	r7, r0
 614 0010 3146     		mov	r1, r6
 615 0012 4046     		mov	r0, r8
 616 0014 FFF7FEFF 		bl	strstr
 617 0018 0025     		movs	r5, #0
 618 001a 0446     		mov	r4, r0
 619 001c 58B9     		cbnz	r0, .L168
 620              	.L182:
 621 001e 0135     		adds	r5, r5, #1
 622 0020 052D     		cmp	r5, #5
 623 0022 22D0     		beq	.L179
 624 0024 59F82560 		ldr	r6, [r9, r5, lsl #2]
 625 0028 4046     		mov	r0, r8
 626 002a 3146     		mov	r1, r6
 627 002c FFF7FEFF 		bl	strstr
ARM GAS  /tmp/cc5yZgeD.s 			page 12


 628 0030 0446     		mov	r4, r0
 629 0032 0028     		cmp	r0, #0
 630 0034 F3D0     		beq	.L182
 631              	.L168:
 632 0036 022D     		cmp	r5, #2
 633 0038 1AD0     		beq	.L173
 634 003a 032D     		cmp	r5, #3
 635 003c 1BD1     		bne	.L183
 636 003e 1249     		ldr	r1, .L184+4
 637 0040 0C34     		adds	r4, r4, #12
 638              	.L172:
 639 0042 D637     		adds	r7, r7, #214
 640 0044 6846     		mov	r0, sp
 641 0046 3326     		movs	r6, #51
 642 0048 CDE90076 		strd	r7, r6, [sp]
 643 004c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 644 0050 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 645 0052 1F29     		cmp	r1, #31
 646 0054 08D9     		bls	.L176
 647              	.L175:
 648 0056 6846     		mov	r0, sp
 649 0058 CDE90076 		strd	r7, r6, [sp]
 650 005c FFF7FEFF 		bl	_ZNK9StringRef3catEc
 651 0060 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
 652 0064 1F29     		cmp	r1, #31
 653 0066 F6D8     		bhi	.L175
 654              	.L176:
 655 0068 0120     		movs	r0, #1
 656              	.L179:
 657 006a 03B0     		add	sp, sp, #12
 658              		@ sp needed
 659 006c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 660              	.L173:
 661 0070 0234     		adds	r4, r4, #2
 662 0072 0649     		ldr	r1, .L184+8
 663 0074 E5E7     		b	.L172
 664              	.L183:
 665 0076 3046     		mov	r0, r6
 666 0078 FFF7FEFF 		bl	strlen
 667 007c 0349     		ldr	r1, .L184+8
 668 007e 0444     		add	r4, r4, r0
 669 0080 DFE7     		b	.L172
 670              	.L185:
 671 0082 00BF     		.align	2
 672              	.L184:
 673 0084 00000000 		.word	.LC5
 674 0088 14000000 		.word	.LC7
 675 008c 10000000 		.word	.LC6
 676 0090 00000000 		.word	.LANCHOR2
 677              		.size	_ZN14FileInfoParser14FindSlicerInfoEPKcj, .-_ZN14FileInfoParser14FindSlicerInfoEPKcj
 678              		.section	.text._ZN14FileInfoParser16FindFilamentUsedEPKcj,"ax",%progbits
 679              		.align	1
 680              		.p2align 2,,3
 681              		.global	_ZN14FileInfoParser16FindFilamentUsedEPKcj
 682              		.syntax unified
 683              		.thumb
 684              		.thumb_func
ARM GAS  /tmp/cc5yZgeD.s 			page 13


 685              		.fpu fpv4-sp-d16
 686              		.type	_ZN14FileInfoParser16FindFilamentUsedEPKcj, %function
 687              	_ZN14FileInfoParser16FindFilamentUsedEPKcj:
 688              		@ args = 0, pretend = 0, frame = 16
 689              		@ frame_needed = 0, uses_anonymous_args = 0
 690 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 691 0004 2DED028B 		vpush.64	{d8}
 692 0008 924B     		ldr	r3, .L245
 693 000a 1B69     		ldr	r3, [r3, #16]
 694 000c 85B0     		sub	sp, sp, #20
 695 000e D3F8A072 		ldr	r7, [r3, #672]
 696 0012 0091     		str	r1, [sp]
 697 0014 8046     		mov	r8, r0
 698 0016 002F     		cmp	r7, #0
 699 0018 73D0     		beq	.L187
 700 001a DFF85492 		ldr	r9, .L245+28
 701 001e 9FED8E8A 		vldr.32	s16, .L245+4
 702 0022 8B46     		mov	fp, r1
 703 0024 0025     		movs	r5, #0
 704              	.L191:
 705 0026 5846     		mov	r0, fp
 706 0028 4946     		mov	r1, r9
 707 002a FFF7FEFF 		bl	strstr
 708 002e 0028     		cmp	r0, #0
 709 0030 00F09680 		beq	.L188
 710 0034 894C     		ldr	r4, .L245+8
 711 0036 00F10C06 		add	r6, r0, #12
 712              	.L189:
 713 003a 96F800A0 		ldrb	r10, [r6]	@ zero_extendqisi2
 714 003e 2046     		mov	r0, r4
 715 0040 5146     		mov	r1, r10
 716 0042 B346     		mov	fp, r6
 717 0044 0136     		adds	r6, r6, #1
 718 0046 FFF7FEFF 		bl	strchr
 719 004a 0028     		cmp	r0, #0
 720 004c F5D1     		bne	.L189
 721 004e AAF13002 		sub	r2, r10, #48
 722 0052 092A     		cmp	r2, #9
 723 0054 1ED8     		bhi	.L198
 724 0056 05F12906 		add	r6, r5, #41
 725 005a 814C     		ldr	r4, .L245+12
 726 005c 08EB8606 		add	r6, r8, r6, lsl #2
 727              	.L197:
 728 0060 5846     		mov	r0, fp
 729 0062 03A9     		add	r1, sp, #12
 730 0064 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 731 0068 DDF80CB0 		ldr	fp, [sp, #12]
 732 006c A6EC010A 		vstmia.32	r6!, {s0}
 733 0070 9BF80010 		ldrb	r1, [fp]	@ zero_extendqisi2
 734 0074 6D29     		cmp	r1, #109
 735 0076 18D0     		beq	.L239
 736              	.L193:
 737 0078 0135     		adds	r5, r5, #1
 738 007a 01E0     		b	.L196
 739              	.L240:
 740 007c 1BF8011F 		ldrb	r1, [fp, #1]!	@ zero_extendqisi2
 741              	.L196:
ARM GAS  /tmp/cc5yZgeD.s 			page 14


 742 0080 2046     		mov	r0, r4
 743 0082 FFF7FEFF 		bl	strchr
 744 0086 0028     		cmp	r0, #0
 745 0088 F8D1     		bne	.L240
 746 008a 9BF80020 		ldrb	r2, [fp]	@ zero_extendqisi2
 747 008e 303A     		subs	r2, r2, #48
 748 0090 092A     		cmp	r2, #9
 749 0092 E5D9     		bls	.L197
 750              	.L198:
 751 0094 AF42     		cmp	r7, r5
 752 0096 C6D8     		bhi	.L191
 753              	.L192:
 754 0098 002D     		cmp	r5, #0
 755 009a 00F09680 		beq	.L241
 756              	.L186:
 757 009e 2846     		mov	r0, r5
 758 00a0 05B0     		add	sp, sp, #20
 759              		@ sp needed
 760 00a2 BDEC028B 		vldm	sp!, {d8}
 761 00a6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 762              	.L239:
 763 00aa 9BF80120 		ldrb	r2, [fp, #1]	@ zero_extendqisi2
 764 00ae 6D2A     		cmp	r2, #109
 765 00b0 08D0     		beq	.L242
 766 00b2 20EE080A 		vmul.f32	s0, s0, s16
 767 00b6 0BF1010B 		add	fp, fp, #1
 768 00ba 06ED010A 		vstr.32	s0, [r6, #-4]
 769 00be 9BF80010 		ldrb	r1, [fp]	@ zero_extendqisi2
 770 00c2 D9E7     		b	.L193
 771              	.L242:
 772 00c4 9BF80210 		ldrb	r1, [fp, #2]	@ zero_extendqisi2
 773 00c8 0BF1020B 		add	fp, fp, #2
 774 00cc D4E7     		b	.L193
 775              	.L243:
 776 00ce 14F801BF 		ldrb	fp, [r4, #1]!	@ zero_extendqisi2
 777              	.L212:
 778 00d2 5946     		mov	r1, fp
 779 00d4 3046     		mov	r0, r6
 780 00d6 FFF7FEFF 		bl	strchr
 781 00da 0028     		cmp	r0, #0
 782 00dc F7D1     		bne	.L243
 783 00de ABF13003 		sub	r3, fp, #48
 784 00e2 092B     		cmp	r3, #9
 785 00e4 08D8     		bhi	.L215
 786 00e6 0146     		mov	r1, r0
 787 00e8 2046     		mov	r0, r4
 788 00ea FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 789 00ee 08EB8503 		add	r3, r8, r5, lsl #2
 790 00f2 83ED290A 		vstr.32	s0, [r3, #164]
 791 00f6 0135     		adds	r5, r5, #1
 792              	.L215:
 793 00f8 BD42     		cmp	r5, r7
 794 00fa C0F09380 		bcc	.L208
 795              	.L210:
 796 00fe 002D     		cmp	r5, #0
 797 0100 CDD1     		bne	.L186
 798              	.L187:
ARM GAS  /tmp/cc5yZgeD.s 			page 15


 799 0102 0098     		ldr	r0, [sp]
 800 0104 5749     		ldr	r1, .L245+16
 801 0106 FFF7FEFF 		bl	strstr
 802 010a 10B3     		cbz	r0, .L244
 803 010c 1A30     		adds	r0, r0, #26
 804 010e 0021     		movs	r1, #0
 805 0110 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 806 0114 4F4B     		ldr	r3, .L245
 807 0116 DFED546A 		vldr.32	s13, .L245+20
 808 011a 1B68     		ldr	r3, [r3]
 809 011c 9FED4E7A 		vldr.32	s14, .L245+4
 810 0120 03F6CC13 		addw	r3, r3, #2508
 811 0124 D3ED007A 		vldr.32	s15, [r3]
 812 0128 B6EE006A 		vmov.f32	s12, #5.0e-1
 813 012c 67EE867A 		vmul.f32	s15, s15, s12
 814 0130 20EE077A 		vmul.f32	s14, s0, s14
 815 0134 67EEA77A 		vmul.f32	s15, s15, s15
 816 0138 0125     		movs	r5, #1
 817 013a 67EEA67A 		vmul.f32	s15, s15, s13
 818 013e 2846     		mov	r0, r5
 819 0140 C7EE276A 		vdiv.f32	s13, s14, s15
 820 0144 C8ED296A 		vstr.32	s13, [r8, #164]
 821 0148 05B0     		add	sp, sp, #20
 822              		@ sp needed
 823 014a BDEC028B 		vldm	sp!, {d8}
 824 014e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 825              	.L244:
 826 0152 0546     		mov	r5, r0
 827 0154 2846     		mov	r0, r5
 828 0156 05B0     		add	sp, sp, #20
 829              		@ sp needed
 830 0158 BDEC028B 		vldm	sp!, {d8}
 831 015c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 832              	.L188:
 833 0160 AF42     		cmp	r7, r5
 834 0162 99D9     		bls	.L192
 835 0164 DFF80C91 		ldr	r9, .L245+32
 836 0168 404E     		ldr	r6, .L245+24
 837 016a 009C     		ldr	r4, [sp]
 838 016c 01E0     		b	.L204
 839              	.L202:
 840 016e BD42     		cmp	r5, r7
 841 0170 92D2     		bcs	.L192
 842              	.L204:
 843 0172 2046     		mov	r0, r4
 844 0174 4946     		mov	r1, r9
 845 0176 FFF7FEFF 		bl	strstr
 846 017a 0028     		cmp	r0, #0
 847 017c 8CD0     		beq	.L192
 848 017e 00F10A04 		add	r4, r0, #10
 849 0182 2046     		mov	r0, r4
 850 0184 0A22     		movs	r2, #10
 851 0186 03A9     		add	r1, sp, #12
 852 0188 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 853 018c 039B     		ldr	r3, [sp, #12]
 854 018e A342     		cmp	r3, r4
 855 0190 EDD0     		beq	.L202
ARM GAS  /tmp/cc5yZgeD.s 			page 16


 856 0192 B842     		cmp	r0, r7
 857 0194 EBD2     		bcs	.L202
 858 0196 9A46     		mov	r10, r3
 859              	.L203:
 860 0198 9AF800B0 		ldrb	fp, [r10]	@ zero_extendqisi2
 861 019c 3046     		mov	r0, r6
 862 019e 5946     		mov	r1, fp
 863 01a0 FFF7FEFF 		bl	strchr
 864 01a4 5446     		mov	r4, r10
 865 01a6 0AF1010A 		add	r10, r10, #1
 866 01aa 0028     		cmp	r0, #0
 867 01ac F4D1     		bne	.L203
 868 01ae ABF13002 		sub	r2, fp, #48
 869 01b2 092A     		cmp	r2, #9
 870 01b4 DBD8     		bhi	.L202
 871 01b6 0146     		mov	r1, r0
 872 01b8 2046     		mov	r0, r4
 873 01ba FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 874 01be 08EB8503 		add	r3, r8, r5, lsl #2
 875 01c2 83ED290A 		vstr.32	s0, [r3, #164]
 876 01c6 0135     		adds	r5, r5, #1
 877 01c8 D1E7     		b	.L202
 878              	.L241:
 879 01ca DFF8AC90 		ldr	r9, .L245+36
 880 01ce 234E     		ldr	r6, .L245+8
 881 01d0 009A     		ldr	r2, [sp]
 882              	.L200:
 883 01d2 1046     		mov	r0, r2
 884 01d4 4946     		mov	r1, r9
 885 01d6 FFF7FEFF 		bl	strstr
 886 01da E0B1     		cbz	r0, .L205
 887 01dc 00F10E04 		add	r4, r0, #14
 888              	.L206:
 889 01e0 94F800B0 		ldrb	fp, [r4]	@ zero_extendqisi2
 890 01e4 3046     		mov	r0, r6
 891 01e6 5946     		mov	r1, fp
 892 01e8 FFF7FEFF 		bl	strchr
 893 01ec 2246     		mov	r2, r4
 894 01ee 0134     		adds	r4, r4, #1
 895 01f0 0028     		cmp	r0, #0
 896 01f2 F5D1     		bne	.L206
 897 01f4 ABF13003 		sub	r3, fp, #48
 898 01f8 092B     		cmp	r3, #9
 899 01fa 0AD8     		bhi	.L207
 900 01fc 0146     		mov	r1, r0
 901 01fe 1046     		mov	r0, r2
 902 0200 0192     		str	r2, [sp, #4]
 903 0202 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 904 0206 08EB8503 		add	r3, r8, r5, lsl #2
 905 020a 019A     		ldr	r2, [sp, #4]
 906 020c 83ED290A 		vstr.32	s0, [r3, #164]
 907 0210 0135     		adds	r5, r5, #1
 908              	.L207:
 909 0212 BD42     		cmp	r5, r7
 910 0214 DDD3     		bcc	.L200
 911              	.L205:
 912 0216 002D     		cmp	r5, #0
ARM GAS  /tmp/cc5yZgeD.s 			page 17


 913 0218 7FF441AF 		bne	.L186
 914 021c DFF85C90 		ldr	r9, .L245+40
 915 0220 0E4E     		ldr	r6, .L245+8
 916 0222 009C     		ldr	r4, [sp]
 917              	.L208:
 918 0224 2046     		mov	r0, r4
 919 0226 4946     		mov	r1, r9
 920 0228 FFF7FEFF 		bl	strstr
 921 022c 0028     		cmp	r0, #0
 922 022e 3FF466AF 		beq	.L210
 923 0232 90F809B0 		ldrb	fp, [r0, #9]	@ zero_extendqisi2
 924 0236 ABF13002 		sub	r2, fp, #48
 925 023a 092A     		cmp	r2, #9
 926 023c 00F10904 		add	r4, r0, #9
 927 0240 3FF647AF 		bhi	.L212
 928              	.L211:
 929 0244 14F801BF 		ldrb	fp, [r4, #1]!	@ zero_extendqisi2
 930 0248 ABF13002 		sub	r2, fp, #48
 931 024c 092A     		cmp	r2, #9
 932 024e F9D9     		bls	.L211
 933 0250 3FE7     		b	.L212
 934              	.L246:
 935 0252 00BF     		.align	2
 936              	.L245:
 937 0254 00000000 		.word	reprap
 938 0258 00007A44 		.word	1148846080
 939 025c 10000000 		.word	.LC9
 940 0260 18000000 		.word	.LC10
 941 0264 40000000 		.word	.LC14
 942 0268 DB0F4940 		.word	1078530011
 943 026c 28000000 		.word	.LC12
 944 0270 00000000 		.word	.LC8
 945 0274 1C000000 		.word	.LC11
 946 0278 30000000 		.word	.LC13
 947 027c 5C000000 		.word	.LC15
 948              		.size	_ZN14FileInfoParser16FindFilamentUsedEPKcj, .-_ZN14FileInfoParser16FindFilamentUsedEPKcj
 949              		.global	__aeabi_d2f
 950              		.section	.text._ZN14FileInfoParser13FindPrintTimeEPKcj,"ax",%progbits
 951              		.align	1
 952              		.p2align 2,,3
 953              		.global	_ZN14FileInfoParser13FindPrintTimeEPKcj
 954              		.syntax unified
 955              		.thumb
 956              		.thumb_func
 957              		.fpu fpv4-sp-d16
 958              		.type	_ZN14FileInfoParser13FindPrintTimeEPKcj, %function
 959              	_ZN14FileInfoParser13FindPrintTimeEPKcj:
 960              		@ args = 0, pretend = 0, frame = 8
 961              		@ frame_needed = 0, uses_anonymous_args = 0
 962 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 963 0004 2DED028B 		vpush.64	{d8}
 964 0008 494E     		ldr	r6, .L275
 965 000a DFF83C91 		ldr	r9, .L275+24
 966 000e 83B0     		sub	sp, sp, #12
 967 0010 0746     		mov	r7, r0
 968 0012 8846     		mov	r8, r1
 969 0014 0025     		movs	r5, #0
ARM GAS  /tmp/cc5yZgeD.s 			page 18


 970              	.L263:
 971 0016 3146     		mov	r1, r6
 972 0018 4046     		mov	r0, r8
 973 001a FFF7FEFF 		bl	strstr
 974 001e 0435     		adds	r5, r5, #4
 975 0020 0446     		mov	r4, r0
 976 0022 0190     		str	r0, [sp, #4]
 977 0024 20B9     		cbnz	r0, .L273
 978 0026 0C2D     		cmp	r5, #12
 979 0028 3AD0     		beq	.L262
 980 002a 55F80960 		ldr	r6, [r5, r9]
 981 002e F2E7     		b	.L263
 982              	.L273:
 983 0030 3046     		mov	r0, r6
 984 0032 FFF7FEFF 		bl	strlen
 985 0036 3F4E     		ldr	r6, .L275+4
 986 0038 0444     		add	r4, r4, r0
 987              	.L271:
 988 003a 0194     		str	r4, [sp, #4]
 989 003c 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 990 003e 3046     		mov	r0, r6
 991 0040 2546     		mov	r5, r4
 992 0042 0134     		adds	r4, r4, #1
 993 0044 FFF7FEFF 		bl	strchr
 994 0048 0028     		cmp	r0, #0
 995 004a F6D1     		bne	.L271
 996 004c 01A9     		add	r1, sp, #4
 997 004e 2846     		mov	r0, r5
 998 0050 FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 999 0054 51EC100B 		vmov	r0, r1, d0
 1000 0058 FFF7FEFF 		bl	__aeabi_d2f
 1001 005c 08EE100A 		vmov	s16, r0
 1002 0060 0198     		ldr	r0, [sp, #4]
 1003 0062 A842     		cmp	r0, r5
 1004 0064 02D1     		bne	.L272
 1005 0066 21E0     		b	.L264
 1006              	.L253:
 1007 0068 0130     		adds	r0, r0, #1
 1008 006a 0190     		str	r0, [sp, #4]
 1009              	.L272:
 1010 006c 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1011 006e 202B     		cmp	r3, #32
 1012 0070 FAD0     		beq	.L253
 1013 0072 682B     		cmp	r3, #104
 1014 0074 36D0     		beq	.L274
 1015 0076 0198     		ldr	r0, [sp, #4]
 1016 0078 DFED2F8A 		vldr.32	s17, .L275+8
 1017 007c 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1018              	.L257:
 1019 007e 6D2B     		cmp	r3, #109
 1020 0080 17D0     		beq	.L259
 1021 0082 DFED2E7A 		vldr.32	s15, .L275+12
 1022 0086 9FED2C0A 		vldr.32	s0, .L275+8
 1023 008a A8EEA70A 		vfma.f32	s0, s17, s15
 1024 008e 20EE270A 		vmul.f32	s0, s0, s15
 1025              	.L251:
 1026 0092 38EE000A 		vadd.f32	s0, s16, s0
ARM GAS  /tmp/cc5yZgeD.s 			page 19


 1027 0096 FFF7FEFF 		bl	lrintf
 1028 009a 0124     		movs	r4, #1
 1029 009c C7F8C800 		str	r0, [r7, #200]
 1030              	.L262:
 1031 00a0 2046     		mov	r0, r4
 1032 00a2 03B0     		add	sp, sp, #12
 1033              		@ sp needed
 1034 00a4 BDEC028B 		vldm	sp!, {d8}
 1035 00a8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1036              	.L264:
 1037 00ac 9FED220A 		vldr.32	s0, .L275+8
 1038 00b0 EFE7     		b	.L251
 1039              	.L259:
 1040 00b2 2349     		ldr	r1, .L275+16
 1041 00b4 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1042 00b8 88B3     		cbz	r0, .L260
 1043 00ba 0198     		ldr	r0, [sp, #4]
 1044 00bc 0730     		adds	r0, r0, #7
 1045 00be 0190     		str	r0, [sp, #4]
 1046              	.L261:
 1047 00c0 01A9     		add	r1, sp, #4
 1048 00c2 FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 1049 00c6 51EC100B 		vmov	r0, r1, d0
 1050 00ca FFF7FEFF 		bl	__aeabi_d2f
 1051 00ce DFED1B7A 		vldr.32	s15, .L275+12
 1052 00d2 B0EE480A 		vmov.f32	s0, s16
 1053 00d6 A8EEA70A 		vfma.f32	s0, s17, s15
 1054 00da 08EE100A 		vmov	s16, r0
 1055 00de 20EE270A 		vmul.f32	s0, s0, s15
 1056 00e2 D6E7     		b	.L251
 1057              	.L274:
 1058 00e4 1749     		ldr	r1, .L275+20
 1059 00e6 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1060 00ea E0B1     		cbz	r0, .L255
 1061 00ec 0198     		ldr	r0, [sp, #4]
 1062 00ee 0530     		adds	r0, r0, #5
 1063 00f0 0190     		str	r0, [sp, #4]
 1064              	.L256:
 1065 00f2 01A9     		add	r1, sp, #4
 1066 00f4 FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 1067 00f8 51EC100B 		vmov	r0, r1, d0
 1068 00fc FFF7FEFF 		bl	__aeabi_d2f
 1069 0100 0246     		mov	r2, r0	@ float
 1070 0102 0198     		ldr	r0, [sp, #4]
 1071 0104 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1072 0106 202B     		cmp	r3, #32
 1073 0108 04D1     		bne	.L266
 1074              	.L258:
 1075 010a 0130     		adds	r0, r0, #1
 1076 010c 0190     		str	r0, [sp, #4]
 1077 010e 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1078 0110 202B     		cmp	r3, #32
 1079 0112 FAD0     		beq	.L258
 1080              	.L266:
 1081 0114 F0EE488A 		vmov.f32	s17, s16
 1082 0118 08EE102A 		vmov	s16, r2
 1083 011c AFE7     		b	.L257
ARM GAS  /tmp/cc5yZgeD.s 			page 20


 1084              	.L260:
 1085 011e 0198     		ldr	r0, [sp, #4]
 1086 0120 0130     		adds	r0, r0, #1
 1087 0122 0190     		str	r0, [sp, #4]
 1088 0124 CCE7     		b	.L261
 1089              	.L255:
 1090 0126 0198     		ldr	r0, [sp, #4]
 1091 0128 0130     		adds	r0, r0, #1
 1092 012a 0190     		str	r0, [sp, #4]
 1093 012c E1E7     		b	.L256
 1094              	.L276:
 1095 012e 00BF     		.align	2
 1096              	.L275:
 1097 0130 00000000 		.word	.LC16
 1098 0134 1C000000 		.word	.LC17
 1099 0138 00000000 		.word	0
 1100 013c 00007042 		.word	1114636288
 1101 0140 2C000000 		.word	.LC19
 1102 0144 24000000 		.word	.LC18
 1103 0148 00000000 		.word	.LANCHOR3
 1104              		.size	_ZN14FileInfoParser13FindPrintTimeEPKcj, .-_ZN14FileInfoParser13FindPrintTimeEPKcj
 1105              		.section	.text._ZN14FileInfoParser17FindSimulatedTimeEPKcj,"ax",%progbits
 1106              		.align	1
 1107              		.p2align 2,,3
 1108              		.global	_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1109              		.syntax unified
 1110              		.thumb
 1111              		.thumb_func
 1112              		.fpu fpv4-sp-d16
 1113              		.type	_ZN14FileInfoParser17FindSimulatedTimeEPKcj, %function
 1114              	_ZN14FileInfoParser17FindSimulatedTimeEPKcj:
 1115              		@ args = 0, pretend = 0, frame = 8
 1116              		@ frame_needed = 0, uses_anonymous_args = 0
 1117 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1118 0002 0B46     		mov	r3, r1
 1119 0004 83B0     		sub	sp, sp, #12
 1120 0006 0746     		mov	r7, r0
 1121 0008 1049     		ldr	r1, .L285
 1122 000a 1846     		mov	r0, r3
 1123 000c FFF7FEFF 		bl	strstr
 1124 0010 C0B1     		cbz	r0, .L282
 1125 0012 0F4E     		ldr	r6, .L285+4
 1126 0014 00F11704 		add	r4, r0, #23
 1127              	.L284:
 1128 0018 0194     		str	r4, [sp, #4]
 1129 001a 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 1130 001c 3046     		mov	r0, r6
 1131 001e 2546     		mov	r5, r4
 1132 0020 0134     		adds	r4, r4, #1
 1133 0022 FFF7FEFF 		bl	strchr
 1134 0026 0028     		cmp	r0, #0
 1135 0028 F6D1     		bne	.L284
 1136 002a 0A22     		movs	r2, #10
 1137 002c 01A9     		add	r1, sp, #4
 1138 002e 2846     		mov	r0, r5
 1139 0030 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 1140 0034 019B     		ldr	r3, [sp, #4]
ARM GAS  /tmp/cc5yZgeD.s 			page 21


 1141 0036 AB42     		cmp	r3, r5
 1142 0038 04D0     		beq	.L282
 1143 003a C7F8CC00 		str	r0, [r7, #204]
 1144 003e 0120     		movs	r0, #1
 1145 0040 03B0     		add	sp, sp, #12
 1146              		@ sp needed
 1147 0042 F0BD     		pop	{r4, r5, r6, r7, pc}
 1148              	.L282:
 1149 0044 0020     		movs	r0, #0
 1150 0046 03B0     		add	sp, sp, #12
 1151              		@ sp needed
 1152 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 1153              	.L286:
 1154 004a 00BF     		.align	2
 1155              	.L285:
 1156 004c 00000000 		.word	.LC20
 1157 0050 1C000000 		.word	.LC17
 1158              		.size	_ZN14FileInfoParser17FindSimulatedTimeEPKcj, .-_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1159              		.global	__aeabi_f2d
 1160              		.section	.text._ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob,"ax",%progbits
 1161              		.align	1
 1162              		.p2align 2,,3
 1163              		.global	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 1164              		.syntax unified
 1165              		.thumb
 1166              		.thumb_func
 1167              		.fpu fpv4-sp-d16
 1168              		.type	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob, %function
 1169              	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob:
 1170              		@ args = 4, pretend = 0, frame = 32
 1171              		@ frame_needed = 0, uses_anonymous_args = 0
 1172 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1173 0004 2DED028B 		vpush.64	{d8}
 1174 0008 8FB0     		sub	sp, sp, #60
 1175 000a 0446     		mov	r4, r0
 1176 000c 0692     		str	r2, [sp, #24]
 1177 000e 0793     		str	r3, [sp, #28]
 1178 0010 0E46     		mov	r6, r1
 1179 0012 9DF86830 		ldrb	r3, [sp, #104]	@ zero_extendqisi2
 1180 0016 0893     		str	r3, [sp, #32]
 1181 0018 0146     		mov	r1, r0
 1182 001a C822     		movs	r2, #200
 1183 001c 0AA8     		add	r0, sp, #40
 1184 001e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1185 0022 9DF82C50 		ldrb	r5, [sp, #44]	@ zero_extendqisi2
 1186 0026 EDB1     		cbz	r5, .L292
 1187 0028 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 1188 002a 2BBB     		cbnz	r3, .L400
 1189              	.L290:
 1190 002c DFF85C83 		ldr	r8, .L424+8
 1191 0030 069A     		ldr	r2, [sp, #24]
 1192 0032 D8F80030 		ldr	r3, [r8]
 1193 0036 3146     		mov	r1, r6
 1194 0038 D3F8B409 		ldr	r0, [r3, #2484]
 1195 003c FFF7FEFF 		bl	_ZN11MassStorage15DirectoryExistsEPKcS1_
 1196 0040 8146     		mov	r9, r0
 1197 0042 0028     		cmp	r0, #0
ARM GAS  /tmp/cc5yZgeD.s 			page 22


 1198 0044 00F0A481 		beq	.L401
 1199              	.L294:
 1200 0048 079A     		ldr	r2, [sp, #28]
 1201 004a 0023     		movs	r3, #0
 1202 004c 82F84C30 		strb	r3, [r2, #76]
 1203 0050 09E0     		b	.L289
 1204              	.L403:
 1205 0052 FFF7FEFF 		bl	millis
 1206 0056 D4F81031 		ldr	r3, [r4, #272]
 1207 005a C01A     		subs	r0, r0, r3
 1208 005c B0F57A6F 		cmp	r0, #4000
 1209 0060 80F0B382 		bcs	.L402
 1210              	.L292:
 1211 0064 0025     		movs	r5, #0
 1212              	.L289:
 1213 0066 0AA8     		add	r0, sp, #40
 1214 0068 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1215 006c 2846     		mov	r0, r5
 1216 006e 0FB0     		add	sp, sp, #60
 1217              		@ sp needed
 1218 0070 BDEC028B 		vldm	sp!, {d8}
 1219 0074 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1220              	.L400:
 1221 0078 611D     		adds	r1, r4, #5
 1222 007a 0698     		ldr	r0, [sp, #24]
 1223 007c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1224 0080 8046     		mov	r8, r0
 1225 0082 0028     		cmp	r0, #0
 1226 0084 E5D0     		beq	.L403
 1227 0086 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 1228 0088 002B     		cmp	r3, #0
 1229 008a CFD0     		beq	.L290
 1230              	.L293:
 1231 008c FFF7FEFF 		bl	millis
 1232 0090 DFF8F8B2 		ldr	fp, .L424+8
 1233 0094 9FEDBB8A 		vldr.32	s16, .L424
 1234 0098 0990     		str	r0, [sp, #36]
 1235 009a 04F59277 		add	r7, r4, #292
 1236              	.L341:
 1237 009e 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 1238 00a0 D4F88000 		ldr	r0, [r4, #128]
 1239 00a4 022B     		cmp	r3, #2
 1240 00a6 11D0     		beq	.L301
 1241 00a8 032B     		cmp	r3, #3
 1242 00aa 00F0EB80 		beq	.L302
 1243 00ae 012B     		cmp	r3, #1
 1244 00b0 57D0     		beq	.L404
 1245 00b2 0026     		movs	r6, #0
 1246 00b4 84F8D560 		strb	r6, [r4, #213]
 1247 00b8 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1248 00bc 0798     		ldr	r0, [sp, #28]
 1249 00be 8122     		movs	r2, #129
 1250 00c0 04F18801 		add	r1, r4, #136
 1251 00c4 FFF7FEFF 		bl	memcpy
 1252 00c8 2671     		strb	r6, [r4, #4]
 1253 00ca CCE7     		b	.L289
 1254              	.L301:
ARM GAS  /tmp/cc5yZgeD.s 			page 23


 1255 00cc FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1256 00d0 0646     		mov	r6, r0
 1257 00d2 D4F88000 		ldr	r0, [r4, #128]
 1258 00d6 FFF7FEFF 		bl	_ZNK9FileStore11ClusterSizeEv
 1259 00da D4F884A0 		ldr	r10, [r4, #132]
 1260 00de B6FBF0F2 		udiv	r2, r6, r0
 1261 00e2 BAFBF0F3 		udiv	r3, r10, r0
 1262 00e6 9A42     		cmp	r2, r3
 1263 00e8 88BF     		it	hi
 1264 00ea 0026     		movhi	r6, #0
 1265 00ec 06EB4026 		add	r6, r6, r0, lsl #9
 1266 00f0 B245     		cmp	r10, r6
 1267 00f2 D146     		mov	r9, r10
 1268 00f4 28BF     		it	cs
 1269 00f6 B146     		movcs	r9, r6
 1270 00f8 FFF7FEFF 		bl	millis
 1271 00fc 4946     		mov	r1, r9
 1272 00fe 8046     		mov	r8, r0
 1273 0100 D4F88000 		ldr	r0, [r4, #128]
 1274 0104 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1275 0108 0028     		cmp	r0, #0
 1276 010a 00F00583 		beq	.L405
 1277 010e FFF7FEFF 		bl	millis
 1278 0112 D4F81C31 		ldr	r3, [r4, #284]
 1279 0116 A3EB0803 		sub	r3, r3, r8
 1280 011a 0344     		add	r3, r3, r0
 1281 011c B245     		cmp	r10, r6
 1282 011e C4F81C31 		str	r3, [r4, #284]
 1283 0122 01D8     		bhi	.L319
 1284 0124 0323     		movs	r3, #3
 1285 0126 2371     		strb	r3, [r4, #4]
 1286              	.L319:
 1287 0128 FFF7FEFF 		bl	millis
 1288 012c DBF81C30 		ldr	r3, [fp, #28]
 1289 0130 C4F81001 		str	r0, [r4, #272]
 1290 0134 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 1291 0136 1BB9     		cbnz	r3, .L340
 1292 0138 099B     		ldr	r3, [sp, #36]
 1293 013a C01A     		subs	r0, r0, r3
 1294 013c C728     		cmp	r0, #199
 1295 013e AED9     		bls	.L341
 1296              	.L340:
 1297 0140 089B     		ldr	r3, [sp, #32]
 1298 0142 002B     		cmp	r3, #0
 1299 0144 8ED0     		beq	.L292
 1300 0146 8122     		movs	r2, #129
 1301 0148 04F18801 		add	r1, r4, #136
 1302 014c 0798     		ldr	r0, [sp, #28]
 1303 014e FFF7FEFF 		bl	memcpy
 1304 0152 D4F88000 		ldr	r0, [r4, #128]
 1305 0156 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1306 015a 0023     		movs	r3, #0
 1307 015c 089D     		ldr	r5, [sp, #32]
 1308 015e 2371     		strb	r3, [r4, #4]
 1309 0160 81E7     		b	.L289
 1310              	.L404:
 1311 0162 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
ARM GAS  /tmp/cc5yZgeD.s 			page 24


 1312 0166 0646     		mov	r6, r0
 1313 0168 D4F88000 		ldr	r0, [r4, #128]
 1314 016c FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1315 0170 361A     		subs	r6, r6, r0
 1316 0172 B6F5006F 		cmp	r6, #2048
 1317 0176 28BF     		it	cs
 1318 0178 4FF40069 		movcs	r9, #2048
 1319 017c D4F82031 		ldr	r3, [r4, #288]
 1320 0180 2CBF     		ite	cs
 1321 0182 4E46     		movcs	r6, r9
 1322 0184 B146     		movcc	r9, r6
 1323 0186 06EB0308 		add	r8, r6, r3
 1324 018a FFF7FEFF 		bl	millis
 1325 018e D4F82011 		ldr	r1, [r4, #288]
 1326 0192 8246     		mov	r10, r0
 1327 0194 3944     		add	r1, r1, r7
 1328 0196 D4F88000 		ldr	r0, [r4, #128]
 1329 019a 3246     		mov	r2, r6
 1330 019c FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1331 01a0 8145     		cmp	r9, r0
 1332 01a2 40F0A182 		bne	.L406
 1333 01a6 0023     		movs	r3, #0
 1334 01a8 07F80830 		strb	r3, [r7, r8]
 1335 01ac FFF7FEFF 		bl	millis
 1336 01b0 D4F81831 		ldr	r3, [r4, #280]
 1337 01b4 D4F8D020 		ldr	r2, [r4, #208]
 1338 01b8 A3EB0A03 		sub	r3, r3, r10
 1339 01bc 0344     		add	r3, r3, r0
 1340 01be 8146     		mov	r9, r0
 1341 01c0 C4F81831 		str	r3, [r4, #280]
 1342 01c4 002A     		cmp	r2, #0
 1343 01c6 00F04981 		beq	.L407
 1344 01ca AA46     		mov	r10, r5
 1345              	.L306:
 1346 01cc D4ED277A 		vldr.32	s15, [r4, #156]
 1347 01d0 F5EE407A 		vcmp.f32	s15, #0
 1348 01d4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1349 01d8 05D1     		bne	.L307
 1350 01da B8F1030F 		cmp	r8, #3
 1351 01de 00F21182 		bhi	.L408
 1352 01e2 4FF0000A 		mov	r10, #0
 1353              	.L307:
 1354 01e6 D4ED267A 		vldr.32	s15, [r4, #152]
 1355 01ea F5EE407A 		vcmp.f32	s15, #0
 1356 01ee F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1357 01f2 05D1     		bne	.L309
 1358 01f4 94F82431 		ldrb	r3, [r4, #292]	@ zero_extendqisi2
 1359 01f8 002B     		cmp	r3, #0
 1360 01fa 40F0FA81 		bne	.L409
 1361 01fe 9A46     		mov	r10, r3
 1362              	.L309:
 1363 0200 94F8D630 		ldrb	r3, [r4, #214]	@ zero_extendqisi2
 1364 0204 002B     		cmp	r3, #0
 1365 0206 00F04081 		beq	.L410
 1366              	.L311:
 1367 020a D4F8C830 		ldr	r3, [r4, #200]
 1368 020e 002B     		cmp	r3, #0
ARM GAS  /tmp/cc5yZgeD.s 			page 25


 1369 0210 00F03181 		beq	.L411
 1370              	.L312:
 1371 0214 FFF7FEFF 		bl	millis
 1372 0218 D4F81431 		ldr	r3, [r4, #276]
 1373 021c A3EB0903 		sub	r3, r3, r9
 1374 0220 0344     		add	r3, r3, r0
 1375 0222 C4F81431 		str	r3, [r4, #276]
 1376 0226 D4F88000 		ldr	r0, [r4, #128]
 1377 022a FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1378 022e 8046     		mov	r8, r0
 1379 0230 BAF1000F 		cmp	r10, #0
 1380 0234 40F0A380 		bne	.L313
 1381 0238 44F61F63 		movw	r3, #19999
 1382 023c 9845     		cmp	r8, r3
 1383 023e D4F88000 		ldr	r0, [r4, #128]
 1384 0242 40F2F181 		bls	.L412
 1385              	.L314:
 1386 0246 DBF84830 		ldr	r3, [fp, #72]
 1387 024a 9905     		lsls	r1, r3, #22
 1388 024c 00F17481 		bmi	.L413
 1389              	.L318:
 1390 0250 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1391 0254 0646     		mov	r6, r0
 1392 0256 D4F88000 		ldr	r0, [r4, #128]
 1393 025a FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1394 025e 013E     		subs	r6, r6, #1
 1395 0260 0138     		subs	r0, r0, #1
 1396 0262 C6F30A06 		ubfx	r6, r6, #0, #11
 1397 0266 0023     		movs	r3, #0
 1398 0268 861B     		subs	r6, r0, r6
 1399 026a 0222     		movs	r2, #2
 1400 026c C4F88460 		str	r6, [r4, #132]
 1401 0270 C4F81431 		str	r3, [r4, #276]
 1402 0274 C4F81831 		str	r3, [r4, #280]
 1403 0278 C4F81C31 		str	r3, [r4, #284]
 1404 027c C4F82031 		str	r3, [r4, #288]
 1405 0280 2271     		strb	r2, [r4, #4]
 1406 0282 51E7     		b	.L319
 1407              	.L302:
 1408 0284 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1409 0288 D4F88430 		ldr	r3, [r4, #132]
 1410 028c D4F82021 		ldr	r2, [r4, #288]
 1411 0290 A0EB030A 		sub	r10, r0, r3
 1412 0294 BAF5006F 		cmp	r10, #2048
 1413 0298 2ABF     		itet	cs
 1414 029a 4FF40068 		movcs	r8, #2048
 1415 029e D046     		movcc	r8, r10
 1416 02a0 C246     		movcs	r10, r8
 1417 02a2 002A     		cmp	r2, #0
 1418 02a4 40F0D180 		bne	.L414
 1419 02a8 5646     		mov	r6, r10
 1420              	.L323:
 1421 02aa FFF7FEFF 		bl	millis
 1422 02ae 5246     		mov	r2, r10
 1423 02b0 8146     		mov	r9, r0
 1424 02b2 3946     		mov	r1, r7
 1425 02b4 D4F88000 		ldr	r0, [r4, #128]
ARM GAS  /tmp/cc5yZgeD.s 			page 26


 1426 02b8 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1427 02bc 4045     		cmp	r0, r8
 1428 02be 40F02882 		bne	.L415
 1429 02c2 0023     		movs	r3, #0
 1430 02c4 BB55     		strb	r3, [r7, r6]
 1431 02c6 FFF7FEFF 		bl	millis
 1432 02ca D4F81831 		ldr	r3, [r4, #280]
 1433 02ce D4F8D020 		ldr	r2, [r4, #208]
 1434 02d2 A3EB0903 		sub	r3, r3, r9
 1435 02d6 0344     		add	r3, r3, r0
 1436 02d8 8046     		mov	r8, r0
 1437 02da C4F81831 		str	r3, [r4, #280]
 1438 02de 002A     		cmp	r2, #0
 1439 02e0 00F0DD80 		beq	.L416
 1440 02e4 A946     		mov	r9, r5
 1441              	.L325:
 1442 02e6 D4ED267A 		vldr.32	s15, [r4, #152]
 1443 02ea F5EE407A 		vcmp.f32	s15, #0
 1444 02ee F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1445 02f2 06D1     		bne	.L326
 1446 02f4 94F82431 		ldrb	r3, [r4, #292]	@ zero_extendqisi2
 1447 02f8 002B     		cmp	r3, #0
 1448 02fa 40F08D81 		bne	.L417
 1449              	.L327:
 1450 02fe 4FF00009 		mov	r9, #0
 1451              	.L326:
 1452 0302 D4ED287A 		vldr.32	s15, [r4, #160]
 1453 0306 F5EE407A 		vcmp.f32	s15, #0
 1454 030a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1455 030e 00F0F580 		beq	.L418
 1456              	.L328:
 1457 0312 D4F8C830 		ldr	r3, [r4, #200]
 1458 0316 002B     		cmp	r3, #0
 1459 0318 00F0CE80 		beq	.L329
 1460              	.L332:
 1461 031c D4F8CC30 		ldr	r3, [r4, #204]
 1462 0320 002B     		cmp	r3, #0
 1463 0322 00F0F580 		beq	.L419
 1464              	.L331:
 1465 0326 FFF7FEFF 		bl	millis
 1466 032a D4F81431 		ldr	r3, [r4, #276]
 1467 032e A3EB0803 		sub	r3, r3, r8
 1468 0332 0344     		add	r3, r3, r0
 1469 0334 C4F81431 		str	r3, [r4, #276]
 1470 0338 B9F1000F 		cmp	r9, #0
 1471 033c 40F08381 		bne	.L335
 1472              	.L334:
 1473 0340 D4E92003 		ldrd	r0, r3, [r4, #128]
 1474 0344 002B     		cmp	r3, #0
 1475 0346 00F08081 		beq	.L336
 1476 034a FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1477 034e D4F88430 		ldr	r3, [r4, #132]
 1478 0352 0D4A     		ldr	r2, .L424+4
 1479 0354 C01A     		subs	r0, r0, r3
 1480 0356 9042     		cmp	r0, r2
 1481 0358 00F27581 		bhi	.L335
 1482 035c B3F5006F 		cmp	r3, #2048
ARM GAS  /tmp/cc5yZgeD.s 			page 27


 1483 0360 38BF     		it	cc
 1484 0362 4FF40063 		movcc	r3, #2048
 1485 0366 642E     		cmp	r6, #100
 1486 0368 A3F50063 		sub	r3, r3, #2048
 1487 036c 28BF     		it	cs
 1488 036e 6426     		movcs	r6, #100
 1489 0370 0222     		movs	r2, #2
 1490 0372 C4F88430 		str	r3, [r4, #132]
 1491 0376 C4F82061 		str	r6, [r4, #288]
 1492 037a 2271     		strb	r2, [r4, #4]
 1493 037c D4E6     		b	.L319
 1494              	.L313:
 1495 037e D4F88000 		ldr	r0, [r4, #128]
 1496 0382 60E7     		b	.L314
 1497              	.L425:
 1498              		.align	2
 1499              	.L424:
 1500 0384 00007A44 		.word	1148846080
 1501 0388 7F1A0600 		.word	399999
 1502 038c 00000000 		.word	reprap
 1503              	.L401:
 1504 0390 D8F80020 		ldr	r2, [r8]
 1505 0394 069F     		ldr	r7, [sp, #24]
 1506 0396 D2F8B409 		ldr	r0, [r2, #2484]
 1507 039a 4B46     		mov	r3, r9
 1508 039c 3A46     		mov	r2, r7
 1509 039e 3146     		mov	r1, r6
 1510 03a0 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1511 03a4 C4F88000 		str	r0, [r4, #128]
 1512 03a8 0028     		cmp	r0, #0
 1513 03aa 3FF44DAE 		beq	.L294
 1514 03ae 621D     		adds	r2, r4, #5
 1515 03b0 7923     		movs	r3, #121
 1516 03b2 3946     		mov	r1, r7
 1517 03b4 0CA8     		add	r0, sp, #48
 1518 03b6 0C92     		str	r2, [sp, #48]
 1519 03b8 0D93     		str	r3, [sp, #52]
 1520 03ba FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1521 03be C4E93299 		strd	r9, r9, [r4, #200]
 1522 03c2 0023     		movs	r3, #0
 1523 03c4 0122     		movs	r2, #1
 1524 03c6 1946     		mov	r1, r3	@ float
 1525 03c8 C4F89C30 		str	r3, [r4, #156]	@ float
 1526 03cc C4F8A030 		str	r3, [r4, #160]	@ float
 1527 03d0 C4F89830 		str	r3, [r4, #152]	@ float
 1528 03d4 84F8D520 		strb	r2, [r4, #213]
 1529 03d8 C4F82091 		str	r9, [r4, #288]
 1530 03dc 84F8D490 		strb	r9, [r4, #212]
 1531 03e0 C4F8D090 		str	r9, [r4, #208]
 1532 03e4 84F8D690 		strb	r9, [r4, #214]
 1533 03e8 04F1A403 		add	r3, r4, #164
 1534 03ec 04F1C802 		add	r2, r4, #200
 1535              	.L295:
 1536 03f0 43F8041B 		str	r1, [r3], #4	@ float
 1537 03f4 9342     		cmp	r3, r2
 1538 03f6 FBD1     		bne	.L295
 1539 03f8 D4F88000 		ldr	r0, [r4, #128]
ARM GAS  /tmp/cc5yZgeD.s 			page 28


 1540 03fc FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1541 0400 D8F80030 		ldr	r3, [r8]
 1542 0404 C4F88800 		str	r0, [r4, #136]
 1543 0408 D3F8B409 		ldr	r0, [r3, #2484]
 1544 040c 069A     		ldr	r2, [sp, #24]
 1545 040e 3146     		mov	r1, r6
 1546 0410 FFF7FEFF 		bl	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1547 0414 D8F84820 		ldr	r2, [r8, #72]
 1548 0418 0123     		movs	r3, #1
 1549 041a C4E92401 		strd	r0, [r4, #144]
 1550 041e 9005     		lsls	r0, r2, #22
 1551 0420 84F8D430 		strb	r3, [r4, #212]
 1552 0424 00F1D880 		bmi	.L420
 1553              	.L296:
 1554 0428 D4F88000 		ldr	r0, [r4, #128]
 1555 042c FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1556 0430 0028     		cmp	r0, #0
 1557 0432 00F0BC80 		beq	.L299
 1558 0436 C349     		ldr	r1, .L426
 1559 0438 0698     		ldr	r0, [sp, #24]
 1560 043a FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1561 043e 0028     		cmp	r0, #0
 1562 0440 00F0A080 		beq	.L421
 1563              	.L298:
 1564 0444 0123     		movs	r3, #1
 1565 0446 2371     		strb	r3, [r4, #4]
 1566 0448 20E6     		b	.L293
 1567              	.L414:
 1568 044a 3946     		mov	r1, r7
 1569 044c 07EB0A00 		add	r0, r7, r10
 1570 0450 FFF7FEFF 		bl	memcpy
 1571 0454 D4F82061 		ldr	r6, [r4, #288]
 1572 0458 5644     		add	r6, r6, r10
 1573 045a 26E7     		b	.L323
 1574              	.L407:
 1575 045c 4246     		mov	r2, r8
 1576 045e 3946     		mov	r1, r7
 1577 0460 2046     		mov	r0, r4
 1578 0462 FFF7FEFF 		bl	_ZN14FileInfoParser16FindFilamentUsedEPKcj
 1579 0466 10F1000A 		adds	r10, r0, #0
 1580 046a C4F8D000 		str	r0, [r4, #208]
 1581 046e 18BF     		it	ne
 1582 0470 4FF0010A 		movne	r10, #1
 1583 0474 AAE6     		b	.L306
 1584              	.L411:
 1585 0476 4246     		mov	r2, r8
 1586 0478 3946     		mov	r1, r7
 1587 047a 2046     		mov	r0, r4
 1588 047c FFF7FEFF 		bl	_ZN14FileInfoParser13FindPrintTimeEPKcj
 1589 0480 0AEA000A 		and	r10, r10, r0
 1590 0484 5FFA8AFA 		uxtb	r10, r10
 1591 0488 C4E6     		b	.L312
 1592              	.L410:
 1593 048a 4246     		mov	r2, r8
 1594 048c 3946     		mov	r1, r7
 1595 048e 2046     		mov	r0, r4
 1596 0490 FFF7FEFF 		bl	_ZN14FileInfoParser14FindSlicerInfoEPKcj
ARM GAS  /tmp/cc5yZgeD.s 			page 29


 1597 0494 0AEA000A 		and	r10, r10, r0
 1598 0498 5FFA8AFA 		uxtb	r10, r10
 1599 049c B5E6     		b	.L311
 1600              	.L416:
 1601 049e 3246     		mov	r2, r6
 1602 04a0 3946     		mov	r1, r7
 1603 04a2 2046     		mov	r0, r4
 1604 04a4 FFF7FEFF 		bl	_ZN14FileInfoParser16FindFilamentUsedEPKcj
 1605 04a8 10F10009 		adds	r9, r0, #0
 1606 04ac C4F8D000 		str	r0, [r4, #208]
 1607 04b0 18BF     		it	ne
 1608 04b2 4FF00109 		movne	r9, #1
 1609 04b6 16E7     		b	.L325
 1610              	.L329:
 1611 04b8 3246     		mov	r2, r6
 1612 04ba 3946     		mov	r1, r7
 1613 04bc 2046     		mov	r0, r4
 1614 04be FFF7FEFF 		bl	_ZN14FileInfoParser13FindPrintTimeEPKcj
 1615 04c2 0028     		cmp	r0, #0
 1616 04c4 7FF42AAF 		bne	.L332
 1617 04c8 D4F88000 		ldr	r0, [r4, #128]
 1618 04cc FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1619 04d0 D4F88430 		ldr	r3, [r4, #132]
 1620 04d4 C01A     		subs	r0, r0, r3
 1621 04d6 B0F5805F 		cmp	r0, #4096
 1622 04da 3FF61FAF 		bhi	.L332
 1623 04de D4F8CC30 		ldr	r3, [r4, #204]
 1624 04e2 002B     		cmp	r3, #0
 1625 04e4 00F02381 		beq	.L422
 1626              	.L345:
 1627 04e8 FFF7FEFF 		bl	millis
 1628 04ec D4F81431 		ldr	r3, [r4, #276]
 1629 04f0 A3EB0803 		sub	r3, r3, r8
 1630 04f4 0344     		add	r3, r3, r0
 1631 04f6 C4F81431 		str	r3, [r4, #276]
 1632 04fa 21E7     		b	.L334
 1633              	.L418:
 1634 04fc 3246     		mov	r2, r6
 1635 04fe 3946     		mov	r1, r7
 1636 0500 2046     		mov	r0, r4
 1637 0502 FFF7FEFF 		bl	_ZN14FileInfoParser10FindHeightEPKcj
 1638 0506 0028     		cmp	r0, #0
 1639 0508 08BF     		it	eq
 1640 050a 4FF00009 		moveq	r9, #0
 1641 050e 00E7     		b	.L328
 1642              	.L419:
 1643 0510 3246     		mov	r2, r6
 1644 0512 3946     		mov	r1, r7
 1645 0514 2046     		mov	r0, r4
 1646 0516 FFF7FEFF 		bl	_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1647 051a 0028     		cmp	r0, #0
 1648 051c 7FF403AF 		bne	.L331
 1649              	.L346:
 1650 0520 D4F88000 		ldr	r0, [r4, #128]
 1651 0524 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1652 0528 D4F88430 		ldr	r3, [r4, #132]
 1653 052c C01A     		subs	r0, r0, r3
ARM GAS  /tmp/cc5yZgeD.s 			page 30


 1654 052e B0F5805F 		cmp	r0, #4096
 1655 0532 3FF6F8AE 		bhi	.L331
 1656 0536 D7E7     		b	.L345
 1657              	.L413:
 1658 0538 DBF80060 		ldr	r6, [fp]
 1659 053c FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1660 0540 D4ED457A 		vldr.32	s15, [r4, #276]	@ int
 1661 0544 F8EE677A 		vcvt.f32.u32	s15, s15
 1662 0548 8046     		mov	r8, r0
 1663 054a C7EE887A 		vdiv.f32	s15, s15, s16
 1664 054e 17EE900A 		vmov	r0, s15
 1665 0552 FFF7FEFF 		bl	__aeabi_f2d
 1666 0556 D4ED467A 		vldr.32	s15, [r4, #280]	@ int
 1667 055a F8EE677A 		vcvt.f32.u32	s15, s15
 1668 055e CDE90201 		strd	r0, [sp, #8]
 1669 0562 C7EE887A 		vdiv.f32	s15, s15, s16
 1670 0566 17EE900A 		vmov	r0, s15
 1671 056a FFF7FEFF 		bl	__aeabi_f2d
 1672 056e 4346     		mov	r3, r8
 1673 0570 CDE90001 		strd	r0, [sp]
 1674 0574 744A     		ldr	r2, .L426+4
 1675 0576 3046     		mov	r0, r6
 1676 0578 0121     		movs	r1, #1
 1677 057a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1678 057e D4F88000 		ldr	r0, [r4, #128]
 1679 0582 65E6     		b	.L318
 1680              	.L421:
 1681 0584 7149     		ldr	r1, .L426+8
 1682 0586 0698     		ldr	r0, [sp, #24]
 1683 0588 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1684 058c 0028     		cmp	r0, #0
 1685 058e 7FF459AF 		bne	.L298
 1686 0592 6F49     		ldr	r1, .L426+12
 1687 0594 0698     		ldr	r0, [sp, #24]
 1688 0596 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1689 059a 0028     		cmp	r0, #0
 1690 059c 7FF452AF 		bne	.L298
 1691 05a0 6C49     		ldr	r1, .L426+16
 1692 05a2 0698     		ldr	r0, [sp, #24]
 1693 05a4 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1694 05a8 0028     		cmp	r0, #0
 1695 05aa 7FF44BAF 		bne	.L298
 1696              	.L299:
 1697 05ae D4F88000 		ldr	r0, [r4, #128]
 1698 05b2 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1699 05b6 0023     		movs	r3, #0
 1700 05b8 0798     		ldr	r0, [sp, #28]
 1701 05ba 84F8D530 		strb	r3, [r4, #213]
 1702 05be 04F18801 		add	r1, r4, #136
 1703 05c2 8122     		movs	r2, #129
 1704 05c4 FFF7FEFF 		bl	memcpy
 1705 05c8 4DE5     		b	.L289
 1706              	.L402:
 1707 05ca D4F88000 		ldr	r0, [r4, #128]
 1708 05ce FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1709 05d2 84F80480 		strb	r8, [r4, #4]
 1710 05d6 29E5     		b	.L290
ARM GAS  /tmp/cc5yZgeD.s 			page 31


 1711              	.L420:
 1712 05d8 0022     		movs	r2, #0
 1713 05da 1946     		mov	r1, r3
 1714 05dc C4F81421 		str	r2, [r4, #276]
 1715 05e0 C4F81821 		str	r2, [r4, #280]
 1716 05e4 D8F80000 		ldr	r0, [r8]
 1717 05e8 069B     		ldr	r3, [sp, #24]
 1718 05ea 5B4A     		ldr	r2, .L426+20
 1719 05ec FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1720 05f0 1AE7     		b	.L296
 1721              	.L409:
 1722 05f2 3946     		mov	r1, r7
 1723 05f4 2046     		mov	r0, r4
 1724 05f6 FFF7FEFF 		bl	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7
 1725 05fa 0AEA000A 		and	r10, r10, r0
 1726 05fe 5FFA8AFA 		uxtb	r10, r10
 1727 0602 FDE5     		b	.L309
 1728              	.L408:
 1729 0604 4246     		mov	r2, r8
 1730 0606 3946     		mov	r1, r7
 1731 0608 2046     		mov	r0, r4
 1732 060a FFF7FEFF 		bl	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6
 1733 060e 0AEA000A 		and	r10, r10, r0
 1734 0612 5FFA8AFA 		uxtb	r10, r10
 1735 0616 E6E5     		b	.L307
 1736              	.L417:
 1737 0618 3946     		mov	r1, r7
 1738 061a 2046     		mov	r0, r4
 1739 061c FFF7FEFF 		bl	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7
 1740 0620 0028     		cmp	r0, #0
 1741 0622 7FF46EAE 		bne	.L326
 1742 0626 6AE6     		b	.L327
 1743              	.L412:
 1744 0628 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1745 062c 4045     		cmp	r0, r8
 1746 062e 3FF4A6AE 		beq	.L313
 1747 0632 632E     		cmp	r6, #99
 1748 0634 53D8     		bhi	.L423
 1749 0636 3946     		mov	r1, r7
 1750              	.L316:
 1751 0638 C4F82061 		str	r6, [r4, #288]
 1752 063c 3246     		mov	r2, r6
 1753 063e 3846     		mov	r0, r7
 1754 0640 FFF7FEFF 		bl	memcpy
 1755 0644 70E5     		b	.L319
 1756              	.L335:
 1757 0646 D4F88000 		ldr	r0, [r4, #128]
 1758              	.L336:
 1759 064a 444B     		ldr	r3, .L426+24
 1760 064c 9A6C     		ldr	r2, [r3, #72]
 1761 064e 9205     		lsls	r2, r2, #22
 1762 0650 38D5     		bpl	.L339
 1763 0652 1F68     		ldr	r7, [r3]
 1764 0654 9FED428A 		vldr.32	s16, .L426+28
 1765 0658 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1766 065c 0646     		mov	r6, r0
 1767 065e D4F88000 		ldr	r0, [r4, #128]
ARM GAS  /tmp/cc5yZgeD.s 			page 32


 1768 0662 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1769 0666 D4ED477A 		vldr.32	s15, [r4, #284]	@ int
 1770 066a F8EE677A 		vcvt.f32.u32	s15, s15
 1771 066e 06F50066 		add	r6, r6, #2048
 1772 0672 C7EE887A 		vdiv.f32	s15, s15, s16
 1773 0676 361A     		subs	r6, r6, r0
 1774 0678 17EE900A 		vmov	r0, s15
 1775 067c FFF7FEFF 		bl	__aeabi_f2d
 1776 0680 D4ED457A 		vldr.32	s15, [r4, #276]	@ int
 1777 0684 F8EE677A 		vcvt.f32.u32	s15, s15
 1778 0688 CDE90401 		strd	r0, [sp, #16]
 1779 068c C7EE887A 		vdiv.f32	s15, s15, s16
 1780 0690 17EE900A 		vmov	r0, s15
 1781 0694 FFF7FEFF 		bl	__aeabi_f2d
 1782 0698 D4ED467A 		vldr.32	s15, [r4, #280]	@ int
 1783 069c F8EE677A 		vcvt.f32.u32	s15, s15
 1784 06a0 CDE90201 		strd	r0, [sp, #8]
 1785 06a4 C7EE887A 		vdiv.f32	s15, s15, s16
 1786 06a8 17EE900A 		vmov	r0, s15
 1787 06ac FFF7FEFF 		bl	__aeabi_f2d
 1788 06b0 3346     		mov	r3, r6
 1789 06b2 CDE90001 		strd	r0, [sp]
 1790 06b6 2B4A     		ldr	r2, .L426+32
 1791 06b8 3846     		mov	r0, r7
 1792 06ba 0121     		movs	r1, #1
 1793 06bc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1794 06c0 D4F88000 		ldr	r0, [r4, #128]
 1795              	.L339:
 1796 06c4 0026     		movs	r6, #0
 1797 06c6 2671     		strb	r6, [r4, #4]
 1798 06c8 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1799 06cc 84F8D560 		strb	r6, [r4, #213]
 1800 06d0 04F18801 		add	r1, r4, #136
 1801 06d4 0798     		ldr	r0, [sp, #28]
 1802 06d6 8122     		movs	r2, #129
 1803 06d8 FFF7FEFF 		bl	memcpy
 1804 06dc C3E4     		b	.L289
 1805              	.L423:
 1806 06de A6F16401 		sub	r1, r6, #100
 1807 06e2 3944     		add	r1, r1, r7
 1808 06e4 6426     		movs	r6, #100
 1809 06e6 A7E7     		b	.L316
 1810              	.L406:
 1811 06e8 1C4B     		ldr	r3, .L426+24
 1812 06ea 1F4A     		ldr	r2, .L426+36
 1813              	.L398:
 1814 06ec 1868     		ldr	r0, [r3]
 1815 06ee 069B     		ldr	r3, [sp, #24]
 1816 06f0 40F2B511 		movw	r1, #437
 1817 06f4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1818 06f8 0023     		movs	r3, #0
 1819 06fa 2371     		strb	r3, [r4, #4]
 1820              	.L399:
 1821 06fc D4F88000 		ldr	r0, [r4, #128]
 1822 0700 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1823 0704 04F18801 		add	r1, r4, #136
 1824 0708 0798     		ldr	r0, [sp, #28]
ARM GAS  /tmp/cc5yZgeD.s 			page 33


 1825 070a 8122     		movs	r2, #129
 1826 070c FFF7FEFF 		bl	memcpy
 1827 0710 A9E4     		b	.L289
 1828              	.L415:
 1829 0712 124B     		ldr	r3, .L426+24
 1830 0714 154A     		ldr	r2, .L426+40
 1831 0716 E9E7     		b	.L398
 1832              	.L405:
 1833 0718 104B     		ldr	r3, .L426+24
 1834 071a 154A     		ldr	r2, .L426+44
 1835 071c 8146     		mov	r9, r0
 1836 071e 40F2B511 		movw	r1, #437
 1837 0722 1868     		ldr	r0, [r3]
 1838 0724 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1839 0728 84F80490 		strb	r9, [r4, #4]
 1840 072c E6E7     		b	.L399
 1841              	.L422:
 1842 072e 3246     		mov	r2, r6
 1843 0730 3946     		mov	r1, r7
 1844 0732 2046     		mov	r0, r4
 1845 0734 FFF7FEFF 		bl	_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1846 0738 8146     		mov	r9, r0
 1847 073a 0028     		cmp	r0, #0
 1848 073c 7FF4D4AE 		bne	.L345
 1849 0740 EEE6     		b	.L346
 1850              	.L427:
 1851 0742 00BF     		.align	2
 1852              	.L426:
 1853 0744 18000000 		.word	.LC22
 1854 0748 5C000000 		.word	.LC27
 1855 074c 20000000 		.word	.LC23
 1856 0750 24000000 		.word	.LC24
 1857 0754 2C000000 		.word	.LC25
 1858 0758 00000000 		.word	.LC21
 1859 075c 00000000 		.word	reprap
 1860 0760 00007A44 		.word	1148846080
 1861 0764 FC000000 		.word	.LC30
 1862 0768 30000000 		.word	.LC26
 1863 076c CC000000 		.word	.LC29
 1864 0770 A8000000 		.word	.LC28
 1865              		.size	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob, .-_ZN14FileInfoParser11GetFileInfo
 1866              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1867              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1868              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1869              	_ZL28cpu_irq_prev_interrupt_state:
 1870 0000 00       		.space	1
 1871              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1872              		.align	2
 1873              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1874              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1875              	_ZL32cpu_irq_critical_section_counter:
 1876 0000 00000000 		.space	4
 1877              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1878              		.align	2
 1879              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1880              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1881              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
ARM GAS  /tmp/cc5yZgeD.s 			page 34


 1882 0000 00000000 		.space	4
 1883              		.section	.rodata._ZN14FileInfoParser10FindHeightEPKcj.str1.4,"aMS",%progbits,1
 1884              		.align	2
 1885              	.LC3:
 1886 0000 3B4500   		.ascii	";E\000"
 1887 0003 00       		.space	1
 1888              	.LC4:
 1889 0004 3B204500 		.ascii	"; E\000"
 1890              		.section	.rodata._ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob.str1.4,"aMS",%progbits,1
 1891              		.align	2
 1892              	.LC21:
 1893 0000 2D2D2050 		.ascii	"-- Parsing file %s --\012\000"
 1893      61727369 
 1893      6E672066 
 1893      696C6520 
 1893      2573202D 
 1894 0017 00       		.space	1
 1895              	.LC22:
 1896 0018 2E67636F 		.ascii	".gcode\000"
 1896      646500
 1897 001f 00       		.space	1
 1898              	.LC23:
 1899 0020 2E6700   		.ascii	".g\000"
 1900 0023 00       		.space	1
 1901              	.LC24:
 1902 0024 2E67636F 		.ascii	".gco\000"
 1902      00
 1903 0029 000000   		.space	3
 1904              	.LC25:
 1905 002c 2E676300 		.ascii	".gc\000"
 1906              	.LC26:
 1907 0030 4661696C 		.ascii	"Failed to read header of G-Code file \"%s\"\012\000"
 1907      65642074 
 1907      6F207265 
 1907      61642068 
 1907      65616465 
 1908 005b 00       		.space	1
 1909              	.LC27:
 1910 005c 48656164 		.ascii	"Header complete, processed %lu bytes, read time %.3"
 1910      65722063 
 1910      6F6D706C 
 1910      6574652C 
 1910      2070726F 
 1911 008f 66732C20 		.ascii	"fs, parse time %.3fs\012\000"
 1911      70617273 
 1911      65207469 
 1911      6D652025 
 1911      2E336673 
 1912 00a5 000000   		.space	3
 1913              	.LC28:
 1914 00a8 436F756C 		.ascii	"Could not seek from end of file!\012\000"
 1914      64206E6F 
 1914      74207365 
 1914      656B2066 
 1914      726F6D20 
 1915 00ca 0000     		.space	2
 1916              	.LC29:
ARM GAS  /tmp/cc5yZgeD.s 			page 35


 1917 00cc 4661696C 		.ascii	"Failed to read footer from G-Code file \"%s\"\012\000"
 1917      65642074 
 1917      6F207265 
 1917      61642066 
 1917      6F6F7465 
 1918 00f9 000000   		.space	3
 1919              	.LC30:
 1920 00fc 466F6F74 		.ascii	"Footer complete, processed %lu bytes, read time %.3"
 1920      65722063 
 1920      6F6D706C 
 1920      6574652C 
 1920      2070726F 
 1921 012f 66732C20 		.ascii	"fs, parse time %.3fs, seek time %.3fs\012\000"
 1921      70617273 
 1921      65207469 
 1921      6D652025 
 1921      2E336673 
 1922              		.section	.rodata._ZN14FileInfoParser13FindPrintTimeEPKcj.str1.4,"aMS",%progbits,1
 1923              		.align	2
 1924              	.LC16:
 1925 0000 20657374 		.ascii	" estimated printing time\000"
 1925      696D6174 
 1925      65642070 
 1925      72696E74 
 1925      696E6720 
 1926 0019 000000   		.space	3
 1927              	.LC17:
 1928 001c 20093D3A 		.ascii	" \011=:\000"
 1928      00
 1929 0021 000000   		.space	3
 1930              	.LC18:
 1931 0024 686F7572 		.ascii	"hours\000"
 1931      7300
 1932 002a 0000     		.space	2
 1933              	.LC19:
 1934 002c 6D696E75 		.ascii	"minutes\000"
 1934      74657300 
 1935              		.section	.rodata._ZN14FileInfoParser14FindSlicerInfoEPKcj.str1.4,"aMS",%progbits,1
 1936              		.align	2
 1937              	.LC5:
 1938 0000 67656E65 		.ascii	"generated by \000"
 1938      72617465 
 1938      64206279 
 1938      2000
 1939 000e 0000     		.space	2
 1940              	.LC6:
 1941 0010 00       		.ascii	"\000"
 1942 0011 000000   		.space	3
 1943              	.LC7:
 1944 0014 43757261 		.ascii	"Cura at \000"
 1944      20617420 
 1944      00
 1945              		.section	.rodata._ZN14FileInfoParser15FindLayerHeightEPKcj.part.7.str1.4,"aMS",%progbits,1
 1946              		.align	2
 1947              	.LC0:
 1948 0000 6C617965 		.ascii	"layer_height\000"
 1948      725F6865 
ARM GAS  /tmp/cc5yZgeD.s 			page 36


 1948      69676874 
 1948      00
 1949 000d 000000   		.space	3
 1950              	.LC1:
 1951 0010 20093D3A 		.ascii	" \011=:,\000"
 1951      2C00
 1952              		.section	.rodata._ZN14FileInfoParser16FindFilamentUsedEPKcj.str1.4,"aMS",%progbits,1
 1953              		.align	2
 1954              	.LC8:
 1955 0000 696C616D 		.ascii	"ilament used\000"
 1955      656E7420 
 1955      75736564 
 1955      00
 1956 000d 000000   		.space	3
 1957              	.LC9:
 1958 0010 203A3D09 		.ascii	" :=\011\000"
 1958      00
 1959 0015 000000   		.space	3
 1960              	.LC10:
 1961 0018 2C200900 		.ascii	", \011\000"
 1962              	.LC11:
 1963 001c 3B4D6174 		.ascii	";Material#\000"
 1963      65726961 
 1963      6C2300
 1964 0027 00       		.space	1
 1965              	.LC12:
 1966 0028 20557365 		.ascii	" Used:\011\000"
 1966      643A0900 
 1967              	.LC13:
 1968 0030 696C616D 		.ascii	"ilament length\000"
 1968      656E7420 
 1968      6C656E67 
 1968      746800
 1969 003f 00       		.space	1
 1970              	.LC14:
 1971 0040 3B204573 		.ascii	"; Estimated Build Volume: \000"
 1971      74696D61 
 1971      74656420 
 1971      4275696C 
 1971      6420566F 
 1972 005b 00       		.space	1
 1973              	.LC15:
 1974 005c 3B202020 		.ascii	";    Ext \000"
 1974      20457874 
 1974      2000
 1975              		.section	.rodata._ZN14FileInfoParser17FindSimulatedTimeEPKcj.str1.4,"aMS",%progbits,1
 1976              		.align	2
 1977              	.LC20:
 1978 0000 0A3B2053 		.ascii	"\012; Simulated print time\000"
 1978      696D756C 
 1978      61746564 
 1978      20707269 
 1978      6E742074 
 1979              		.section	.rodata._ZN14FileInfoParserC2Ev.str1.4,"aMS",%progbits,1
 1980              		.align	2
 1981              	.LC2:
 1982 0000 46696C65 		.ascii	"FileInfoParser\000"
ARM GAS  /tmp/cc5yZgeD.s 			page 37


 1982      496E666F 
 1982      50617273 
 1982      657200
 1983              		.section	.rodata._ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString,"a",%progbits
 1984              		.align	2
 1985              		.set	.LANCHOR1,. + 0
 1986              		.type	_ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString, %object
 1987              		.size	_ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString, 21
 1988              	_ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString:
 1989 0000 20454E44 		.ascii	" END_LAYER_OBJECT z=\000"
 1989      5F4C4159 
 1989      45525F4F 
 1989      424A4543 
 1989      54207A3D 
 1990              		.section	.rodata._ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings,"a",%progbits
 1991              		.align	2
 1992              		.set	.LANCHOR3,. + 0
 1993              		.type	_ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings, %object
 1994              		.size	_ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings, 12
 1995              	_ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings:
 1996 0000 00000000 		.word	.LC16
 1997 0004 00000000 		.word	.LC31
 1998 0008 08000000 		.word	.LC32
 1999              		.section	.rodata._ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings,"a",%progbits
 2000              		.align	2
 2001              		.set	.LANCHOR2,. + 0
 2002              		.type	_ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings, %object
 2003              		.size	_ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings, 20
 2004              	_ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings:
 2005 0000 00000000 		.word	.LC5
 2006 0004 14000000 		.word	.LC33
 2007 0008 20000000 		.word	.LC34
 2008 000c 2C000000 		.word	.LC35
 2009 0010 3C000000 		.word	.LC36
 2010              		.section	.rodata._ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings,"a",%progbits
 2011              		.align	2
 2012              		.set	.LANCHOR0,. + 0
 2013              		.type	_ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings, %object
 2014              		.size	_ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings, 20
 2015              	_ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings:
 2016 0000 00000000 		.word	.LC0
 2017 0004 50000000 		.word	.LC37
 2018 0008 60000000 		.word	.LC38
 2019 000c 6C000000 		.word	.LC39
 2020 0010 80000000 		.word	.LC40
 2021              		.section	.rodata.str1.4,"aMS",%progbits,1
 2022              		.align	2
 2023              	.LC31:
 2024 0000 3B54494D 		.ascii	";TIME\000"
 2024      4500
 2025 0006 0000     		.space	2
 2026              	.LC32:
 2027 0008 20427569 		.ascii	" Build time\000"
 2027      6C642074 
 2027      696D6500 
 2028              	.LC33:
 2029 0014 3B536C69 		.ascii	";Sliced by \000"
ARM GAS  /tmp/cc5yZgeD.s 			page 38


 2029      63656420 
 2029      62792000 
 2030              	.LC34:
 2031 0020 3B204B49 		.ascii	"; KISSlicer\000"
 2031      53536C69 
 2031      63657200 
 2032              	.LC35:
 2033 002c 3B536C69 		.ascii	";Sliced at: \000"
 2033      63656420 
 2033      61743A20 
 2033      00
 2034 0039 000000   		.space	3
 2035              	.LC36:
 2036 003c 3B47656E 		.ascii	";Generated with \000"
 2036      65726174 
 2036      65642077 
 2036      69746820 
 2036      00
 2037 004d 000000   		.space	3
 2038              	.LC37:
 2039 0050 4C617965 		.ascii	"Layer height\000"
 2039      72206865 
 2039      69676874 
 2039      00
 2040 005d 000000   		.space	3
 2041              	.LC38:
 2042 0060 6C617965 		.ascii	"layerHeight\000"
 2042      72486569 
 2042      67687400 
 2043              	.LC39:
 2044 006c 6C617965 		.ascii	"layer_thickness_mm\000"
 2044      725F7468 
 2044      69636B6E 
 2044      6573735F 
 2044      6D6D00
 2045 007f 00       		.space	1
 2046              	.LC40:
 2047 0080 6C617965 		.ascii	"layerThickness\000"
 2047      72546869 
 2047      636B6E65 
 2047      737300
 2048              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
