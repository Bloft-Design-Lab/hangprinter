ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6, %function
  23              	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6:
  24              		@ args = 0, pretend = 0, frame = 8
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  27 0004 0023     		movs	r3, #0
  28 0006 171F     		subs	r7, r2, #4
  29 0008 83B0     		sub	sp, sp, #12
  30 000a C0F8FC30 		str	r3, [r0, #252]	@ float
  31 000e 40D0     		beq	.L15
  32 0010 4FF00008 		mov	r8, #0
  33 0014 0E46     		mov	r6, r1
  34 0016 8146     		mov	r9, r0
  35 0018 DFF820B1 		ldr	fp, .L38
  36 001c C246     		mov	r10, r8
  37 001e 4146     		mov	r1, r8
  38 0020 4346     		mov	r3, r8
  39 0022 07E0     		b	.L14
  40              	.L34:
  41 0024 A1B1     		cbz	r1, .L4
  42 0026 B4F10A01 		subs	r1, r4, #10
  43 002a 18BF     		it	ne
  44 002c 0121     		movne	r1, #1
  45              	.L3:
  46 002e AF42     		cmp	r7, r5
  47 0030 2B46     		mov	r3, r5
  48 0032 09D9     		bls	.L2
  49              	.L14:
  50 0034 F45C     		ldrb	r4, [r6, r3]	@ zero_extendqisi2
  51 0036 3B2C     		cmp	r4, #59
  52 0038 03F10105 		add	r5, r3, #1
  53 003c F2D1     		bne	.L34
  54 003e AF42     		cmp	r7, r5
  55 0040 4FF00101 		mov	r1, #1
  56 0044 2B46     		mov	r3, r5
  57 0046 F5D8     		bhi	.L14
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 2


  58              	.L2:
  59 0048 4046     		mov	r0, r8
  60 004a 03B0     		add	sp, sp, #12
  61              		@ sp needed
  62 004c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  63              	.L4:
  64 0050 472C     		cmp	r4, #71
  65 0052 ECD1     		bne	.L3
  66 0054 705D     		ldrb	r0, [r6, r5]	@ zero_extendqisi2
  67 0056 BAF1000F 		cmp	r10, #0
  68 005a 0AD1     		bne	.L35
  69 005c 3928     		cmp	r0, #57
  70 005e 1DD0     		beq	.L36
  71 0060 3038     		subs	r0, r0, #48
  72 0062 0128     		cmp	r0, #1
  73 0064 03D8     		bhi	.L24
  74 0066 F118     		adds	r1, r6, r3
  75 0068 8978     		ldrb	r1, [r1, #2]	@ zero_extendqisi2
  76 006a 2029     		cmp	r1, #32
  77 006c 23D0     		beq	.L37
  78              	.L24:
  79 006e 0021     		movs	r1, #0
  80 0070 DDE7     		b	.L3
  81              	.L35:
  82 0072 3928     		cmp	r0, #57
  83 0074 DBD1     		bne	.L3
  84 0076 3344     		add	r3, r3, r6
  85 0078 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
  86 007a 3028     		cmp	r0, #48
  87 007c D7D1     		bne	.L3
  88 007e 93F803A0 		ldrb	r10, [r3, #3]	@ zero_extendqisi2
  89 0082 BAF1200F 		cmp	r10, #32
  90 0086 94BF     		ite	ls
  91 0088 4FF0000A 		movls	r10, #0
  92 008c 4FF0010A 		movhi	r10, #1
  93 0090 CDE7     		b	.L3
  94              	.L15:
  95 0092 B846     		mov	r8, r7
  96 0094 4046     		mov	r0, r8
  97 0096 03B0     		add	sp, sp, #12
  98              		@ sp needed
  99 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 100              	.L36:
 101 009c 3344     		add	r3, r3, r6
 102 009e 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 103 00a0 3129     		cmp	r1, #49
 104 00a2 E4D1     		bne	.L24
 105 00a4 DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 106 00a6 202B     		cmp	r3, #32
 107 00a8 5146     		mov	r1, r10
 108 00aa 8CBF     		ite	hi
 109 00ac 4FF0000A 		movhi	r10, #0
 110 00b0 4FF0010A 		movls	r10, #1
 111 00b4 BBE7     		b	.L3
 112              	.L37:
 113 00b6 D91C     		adds	r1, r3, #3
 114 00b8 B942     		cmp	r1, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 3


 115 00ba 03F10405 		add	r5, r3, #4
 116 00be D6D2     		bcs	.L24
 117 00c0 705C     		ldrb	r0, [r6, r1]	@ zero_extendqisi2
 118 00c2 5A28     		cmp	r0, #90
 119 00c4 3144     		add	r1, r1, r6
 120 00c6 11D0     		beq	.L7
 121 00c8 3B28     		cmp	r0, #59
 122 00ca D0D0     		beq	.L24
 123 00cc 5D1D     		adds	r5, r3, #5
 124 00ce D41E     		subs	r4, r2, #3
 125 00d0 0B46     		mov	r3, r1
 126 00d2 06E0     		b	.L8
 127              	.L13:
 128 00d4 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
 129 00d8 5A29     		cmp	r1, #90
 130 00da 07D0     		beq	.L7
 131 00dc 3B29     		cmp	r1, #59
 132 00de C6D0     		beq	.L24
 133 00e0 0546     		mov	r5, r0
 134              	.L8:
 135 00e2 AC42     		cmp	r4, r5
 136 00e4 05F10100 		add	r0, r5, #1
 137 00e8 F4D1     		bne	.L13
 138 00ea C0E7     		b	.L24
 139              	.L7:
 140 00ec 0021     		movs	r1, #0
 141 00ee 7019     		adds	r0, r6, r5
 142 00f0 0192     		str	r2, [sp, #4]
 143 00f2 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 144 00f6 D9ED3F7A 		vldr.32	s15, [r9, #252]
 145 00fa 019A     		ldr	r2, [sp, #4]
 146 00fc F5EE407A 		vcmp.f32	s15, #0
 147 0100 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 148 0104 04D0     		beq	.L10
 149 0106 B4EEE70A 		vcmpe.f32	s0, s15
 150 010a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 151 010e AED5     		bpl	.L24
 152              	.L10:
 153 0110 DBF80430 		ldr	r3, [fp, #4]	@ unaligned
 154 0114 03F6F833 		addw	r3, r3, #3064
 155 0118 D3ED007A 		vldr.32	s15, [r3]
 156 011c B0EE087A 		vmov.f32	s14, #3.0e+0
 157 0120 67EE877A 		vmul.f32	s15, s15, s14
 158 0124 B4EEE70A 		vcmpe.f32	s0, s15
 159 0128 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 160 012c 9FD8     		bhi	.L24
 161 012e 89ED3F0A 		vstr.32	s0, [r9, #252]
 162 0132 0021     		movs	r1, #0
 163 0134 4FF00108 		mov	r8, #1
 164 0138 79E7     		b	.L3
 165              	.L39:
 166 013a 00BF     		.align	2
 167              	.L38:
 168 013c 00000000 		.word	reprap
 169              		.size	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6, .-_ZN14FileInfoParser20FindFirstLayer
 170              		.section	.text._ZN14FileInfoParser15FindLayerHeightEPKcj.part.7,"ax",%progbits
 171              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 4


 172              		.p2align 2,,3
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu fpv4-sp-d16
 177              		.type	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7, %function
 178              	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7:
 179              		@ args = 0, pretend = 0, frame = 8
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 181 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 182 0004 1C4F     		ldr	r7, .L59
 183 0006 1D4E     		ldr	r6, .L59+4
 184 0008 1D4D     		ldr	r5, .L59+8
 185 000a 83B0     		sub	sp, sp, #12
 186 000c 8246     		mov	r10, r0
 187 000e 01F10108 		add	r8, r1, #1
 188 0012 07F11009 		add	r9, r7, #16
 189              	.L49:
 190 0016 4446     		mov	r4, r8
 191              	.L41:
 192 0018 2046     		mov	r0, r4
 193 001a 3146     		mov	r1, r6
 194 001c FFF7FEFF 		bl	strstr
 195 0020 0446     		mov	r4, r0
 196 0022 18B3     		cbz	r0, .L42
 197 0024 3046     		mov	r0, r6
 198 0026 FFF7FEFF 		bl	strlen
 199 002a 14F8013C 		ldrb	r3, [r4, #-1]	@ zero_extendqisi2
 200 002e 202B     		cmp	r3, #32
 201 0030 0444     		add	r4, r4, r0
 202 0032 03D0     		beq	.L43
 203 0034 3B2B     		cmp	r3, #59
 204 0036 01D0     		beq	.L43
 205 0038 092B     		cmp	r3, #9
 206 003a EDD1     		bne	.L41
 207              	.L43:
 208 003c A346     		mov	fp, r4
 209              	.L45:
 210 003e 9BF80010 		ldrb	r1, [fp]	@ zero_extendqisi2
 211 0042 2846     		mov	r0, r5
 212 0044 5C46     		mov	r4, fp
 213 0046 0BF1010B 		add	fp, fp, #1
 214 004a FFF7FEFF 		bl	strchr
 215 004e 0028     		cmp	r0, #0
 216 0050 F5D1     		bne	.L45
 217 0052 01A9     		add	r1, sp, #4
 218 0054 2046     		mov	r0, r4
 219 0056 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 220 005a 019B     		ldr	r3, [sp, #4]
 221 005c 9C42     		cmp	r4, r3
 222 005e DBD0     		beq	.L41
 223 0060 8AED3E0A 		vstr.32	s0, [r10, #248]
 224 0064 0120     		movs	r0, #1
 225              	.L48:
 226 0066 03B0     		add	sp, sp, #12
 227              		@ sp needed
 228 0068 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 5


 229              	.L42:
 230 006c 4F45     		cmp	r7, r9
 231 006e FAD0     		beq	.L48
 232 0070 57F8046B 		ldr	r6, [r7], #4
 233 0074 CFE7     		b	.L49
 234              	.L60:
 235 0076 00BF     		.align	2
 236              	.L59:
 237 0078 04000000 		.word	.LANCHOR0+4
 238 007c 00000000 		.word	.LC0
 239 0080 10000000 		.word	.LC1
 240              		.size	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7, .-_ZN14FileInfoParser15FindLayerHeightEPKc
 241              		.section	.text._ZN13GCodeFileInfo4InitEv,"ax",%progbits
 242              		.align	1
 243              		.p2align 2,,3
 244              		.global	_ZN13GCodeFileInfo4InitEv
 245              		.syntax unified
 246              		.thumb
 247              		.thumb_func
 248              		.fpu fpv4-sp-d16
 249              		.type	_ZN13GCodeFileInfo4InitEv, %function
 250              	_ZN13GCodeFileInfo4InitEv:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253              		@ link register save eliminated.
 254 0000 10B4     		push	{r4}
 255 0002 0023     		movs	r3, #0
 256 0004 0021     		movs	r1, #0
 257 0006 0124     		movs	r4, #1
 258 0008 80F84C30 		strb	r3, [r0, #76]
 259 000c C0E91033 		strd	r3, r3, [r0, #64]
 260 0010 8364     		str	r3, [r0, #72]
 261 0012 80F84E30 		strb	r3, [r0, #78]
 262 0016 80F84D40 		strb	r4, [r0, #77]
 263 001a 4161     		str	r1, [r0, #20]	@ float
 264 001c 8161     		str	r1, [r0, #24]	@ float
 265 001e 0161     		str	r1, [r0, #16]	@ float
 266 0020 00F11C03 		add	r3, r0, #28
 267 0024 0A46     		mov	r2, r1	@ float
 268 0026 4030     		adds	r0, r0, #64
 269              	.L62:
 270 0028 43F8042B 		str	r2, [r3], #4	@ float
 271 002c 8342     		cmp	r3, r0
 272 002e FBD1     		bne	.L62
 273 0030 5DF8044B 		ldr	r4, [sp], #4
 274 0034 7047     		bx	lr
 275              		.size	_ZN13GCodeFileInfo4InitEv, .-_ZN13GCodeFileInfo4InitEv
 276 0036 00BF     		.section	.text._ZN14FileInfoParserC2Ev,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	_ZN14FileInfoParserC2Ev
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu fpv4-sp-d16
 284              		.type	_ZN14FileInfoParserC2Ev, %function
 285              	_ZN14FileInfoParserC2Ev:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 6


 286              		@ args = 0, pretend = 0, frame = 0
 287              		@ frame_needed = 0, uses_anonymous_args = 0
 288 0000 10B5     		push	{r4, lr}
 289 0002 0446     		mov	r4, r0
 290 0004 0023     		movs	r3, #0
 291 0006 0022     		movs	r2, #0
 292 0008 0120     		movs	r0, #1
 293 000a 1146     		mov	r1, r2	@ float
 294 000c 2360     		str	r3, [r4]
 295 000e 84F86030 		strb	r3, [r4, #96]
 296 0012 84F86130 		strb	r3, [r4, #97]
 297 0016 C4F8DC30 		str	r3, [r4, #220]
 298 001a 84F83631 		strb	r3, [r4, #310]
 299 001e C4F87431 		str	r3, [r4, #372]
 300 0022 C4F87831 		str	r3, [r4, #376]
 301 0026 C4F87C31 		str	r3, [r4, #380]
 302 002a C4F88031 		str	r3, [r4, #384]
 303 002e 84F83431 		strb	r3, [r4, #308]
 304 0032 C4F82C31 		str	r3, [r4, #300]
 305 0036 C4F82831 		str	r3, [r4, #296]
 306 003a C4F83031 		str	r3, [r4, #304]
 307 003e C4F8FC20 		str	r2, [r4, #252]	@ float
 308 0042 C4F80021 		str	r2, [r4, #256]	@ float
 309 0046 C4F8F820 		str	r2, [r4, #248]	@ float
 310 004a 84F83501 		strb	r0, [r4, #309]
 311 004e 04F58273 		add	r3, r4, #260
 312 0052 04F59472 		add	r2, r4, #296
 313              	.L66:
 314 0056 43F8041B 		str	r1, [r3], #4	@ float
 315 005a 9342     		cmp	r3, r2
 316 005c FBD1     		bne	.L66
 317 005e 2046     		mov	r0, r4
 318 0060 0249     		ldr	r1, .L69
 319 0062 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 320 0066 2046     		mov	r0, r4
 321 0068 10BD     		pop	{r4, pc}
 322              	.L70:
 323 006a 00BF     		.align	2
 324              	.L69:
 325 006c 00000000 		.word	.LC2
 326              		.size	_ZN14FileInfoParserC2Ev, .-_ZN14FileInfoParserC2Ev
 327              		.global	_ZN14FileInfoParserC1Ev
 328              		.thumb_set _ZN14FileInfoParserC1Ev,_ZN14FileInfoParserC2Ev
 329              		.section	.text._ZN14FileInfoParser20FindFirstLayerHeightEPKcj,"ax",%progbits
 330              		.align	1
 331              		.p2align 2,,3
 332              		.global	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj
 333              		.syntax unified
 334              		.thumb
 335              		.thumb_func
 336              		.fpu fpv4-sp-d16
 337              		.type	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj, %function
 338              	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj:
 339              		@ args = 0, pretend = 0, frame = 0
 340              		@ frame_needed = 0, uses_anonymous_args = 0
 341              		@ link register save eliminated.
 342 0000 032A     		cmp	r2, #3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 7


 343 0002 01D9     		bls	.L72
 344 0004 FFF7FEBF 		b	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6
 345              	.L72:
 346 0008 0020     		movs	r0, #0
 347 000a 7047     		bx	lr
 348              		.size	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj, .-_ZN14FileInfoParser20FindFirstLayerHeightE
 349              		.section	.text._ZN14FileInfoParser10FindHeightEPKcj,"ax",%progbits
 350              		.align	1
 351              		.p2align 2,,3
 352              		.global	_ZN14FileInfoParser10FindHeightEPKcj
 353              		.syntax unified
 354              		.thumb
 355              		.thumb_func
 356              		.fpu fpv4-sp-d16
 357              		.type	_ZN14FileInfoParser10FindHeightEPKcj, %function
 358              	_ZN14FileInfoParser10FindHeightEPKcj:
 359              		@ args = 0, pretend = 0, frame = 8
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 362 0004 4FF0000B 		mov	fp, #0
 363 0008 DFF8C8A1 		ldr	r10, .L163+12
 364 000c 83B0     		sub	sp, sp, #12
 365 000e 1646     		mov	r6, r2
 366 0010 8046     		mov	r8, r0
 367 0012 8946     		mov	r9, r1
 368 0014 541E     		subs	r4, r2, #1
 369 0016 5F46     		mov	r7, fp
 370              	.L74:
 371 0018 052E     		cmp	r6, #5
 372 001a 0CD9     		bls	.L75
 373              	.L156:
 374 001c 99F80020 		ldrb	r2, [r9]	@ zero_extendqisi2
 375 0020 0D2A     		cmp	r2, #13
 376 0022 08D0     		beq	.L75
 377 0024 0A2A     		cmp	r2, #10
 378 0026 06D0     		beq	.L75
 379 0028 2646     		mov	r6, r4
 380 002a 052E     		cmp	r6, #5
 381 002c 09F10109 		add	r9, r9, #1
 382 0030 04F1FF34 		add	r4, r4, #-1
 383 0034 F2D8     		bhi	.L156
 384              	.L75:
 385 0036 4946     		mov	r1, r9
 386 0038 042C     		cmp	r4, #4
 387 003a 0D46     		mov	r5, r1
 388 003c 1ED9     		bls	.L101
 389              	.L160:
 390 003e 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 391 0042 A2F10903 		sub	r3, r2, #9
 392 0046 DBB2     		uxtb	r3, r3
 393 0048 172B     		cmp	r3, #23
 394 004a 2AFA03F0 		lsr	r0, r10, r3
 395 004e 0ED9     		bls	.L157
 396 0050 472A     		cmp	r2, #71
 397 0052 05F10209 		add	r9, r5, #2
 398 0056 A6F10200 		sub	r0, r6, #2
 399 005a 40F0B280 		bne	.L158
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 8


 400 005e AA78     		ldrb	r2, [r5, #2]	@ zero_extendqisi2
 401 0060 BBF1000F 		cmp	fp, #0
 402 0064 38D0     		beq	.L81
 403 0066 392A     		cmp	r2, #57
 404 0068 13D0     		beq	.L159
 405              	.L100:
 406 006a 0646     		mov	r6, r0
 407 006c 0FE0     		b	.L154
 408              	.L157:
 409 006e C307     		lsls	r3, r0, #31
 410 0070 08D5     		bpl	.L79
 411 0072 2646     		mov	r6, r4
 412 0074 013C     		subs	r4, r4, #1
 413 0076 042C     		cmp	r4, #4
 414 0078 0D46     		mov	r5, r1
 415 007a E0D8     		bhi	.L160
 416              	.L101:
 417 007c 3846     		mov	r0, r7
 418 007e 03B0     		add	sp, sp, #12
 419              		@ sp needed
 420 0080 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 421              	.L79:
 422 0084 023E     		subs	r6, r6, #2
 423 0086 05F10209 		add	r9, r5, #2
 424              	.L93:
 425 008a 3B2A     		cmp	r2, #59
 426 008c 12D0     		beq	.L149
 427              	.L154:
 428 008e 741E     		subs	r4, r6, #1
 429 0090 C2E7     		b	.L74
 430              	.L159:
 431 0092 EA78     		ldrb	r2, [r5, #3]	@ zero_extendqisi2
 432 0094 302A     		cmp	r2, #48
 433 0096 E8D1     		bne	.L100
 434 0098 95F804B0 		ldrb	fp, [r5, #4]	@ zero_extendqisi2
 435 009c ABF1300B 		sub	fp, fp, #48
 436 00a0 BBF1090F 		cmp	fp, #9
 437 00a4 0646     		mov	r6, r0
 438 00a6 8CBF     		ite	hi
 439 00a8 4FF0000B 		movhi	fp, #0
 440 00ac 4FF0010B 		movls	fp, #1
 441 00b0 441E     		subs	r4, r0, #1
 442 00b2 B1E7     		b	.L74
 443              	.L149:
 444 00b4 1F2E     		cmp	r6, #31
 445 00b6 EAD9     		bls	.L154
 446 00b8 4349     		ldr	r1, .L163
 447 00ba 4846     		mov	r0, r9
 448 00bc FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 449 00c0 0446     		mov	r4, r0
 450 00c2 0028     		cmp	r0, #0
 451 00c4 E3D0     		beq	.L154
 452 00c6 05F11600 		add	r0, r5, #22
 453 00ca 0021     		movs	r1, #0
 454 00cc FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 455 00d0 2746     		mov	r7, r4
 456 00d2 88ED400A 		vstr.32	s0, [r8, #256]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 9


 457 00d6 D1E7     		b	.L101
 458              	.L81:
 459 00d8 A2F13001 		sub	r1, r2, #48
 460 00dc 0129     		cmp	r1, #1
 461 00de 12D9     		bls	.L161
 462 00e0 392A     		cmp	r2, #57
 463 00e2 C2D1     		bne	.L100
 464 00e4 EA78     		ldrb	r2, [r5, #3]	@ zero_extendqisi2
 465 00e6 312A     		cmp	r2, #49
 466 00e8 BFD1     		bne	.L100
 467 00ea 95F804B0 		ldrb	fp, [r5, #4]	@ zero_extendqisi2
 468 00ee ABF1300B 		sub	fp, fp, #48
 469 00f2 BBF1090F 		cmp	fp, #9
 470 00f6 0646     		mov	r6, r0
 471 00f8 94BF     		ite	ls
 472 00fa 4FF0000B 		movls	fp, #0
 473 00fe 4FF0010B 		movhi	fp, #1
 474 0102 441E     		subs	r4, r0, #1
 475 0104 88E7     		b	.L74
 476              	.L161:
 477 0106 EA78     		ldrb	r2, [r5, #3]	@ zero_extendqisi2
 478 0108 A2F13001 		sub	r1, r2, #48
 479 010c 0929     		cmp	r1, #9
 480 010e A6F10306 		sub	r6, r6, #3
 481 0112 05F10309 		add	r9, r5, #3
 482 0116 BAD9     		bls	.L154
 483 0118 032E     		cmp	r6, #3
 484 011a 1AD0     		beq	.L155
 485 011c 5A2A     		cmp	r2, #90
 486 011e 08BF     		it	eq
 487 0120 0435     		addeq	r5, r5, #4
 488 0122 18D0     		beq	.L84
 489 0124 3B2A     		cmp	r2, #59
 490 0126 B2D0     		beq	.L154
 491 0128 0A2A     		cmp	r2, #10
 492 012a B0D0     		beq	.L154
 493 012c 0D2A     		cmp	r2, #13
 494 012e AED0     		beq	.L154
 495 0130 0435     		adds	r5, r5, #4
 496 0132 0AE0     		b	.L85
 497              	.L148:
 498 0134 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 499 0136 5A2A     		cmp	r2, #90
 500 0138 09F10105 		add	r5, r9, #1
 501 013c 0BD0     		beq	.L84
 502 013e 3B2A     		cmp	r2, #59
 503 0140 A5D0     		beq	.L154
 504 0142 0A2A     		cmp	r2, #10
 505 0144 A3D0     		beq	.L154
 506 0146 0D2A     		cmp	r2, #13
 507 0148 A1D0     		beq	.L154
 508              	.L85:
 509 014a 013E     		subs	r6, r6, #1
 510 014c 032E     		cmp	r6, #3
 511 014e A946     		mov	r9, r5
 512 0150 F0D1     		bne	.L148
 513              	.L155:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 10


 514 0152 0224     		movs	r4, #2
 515 0154 6FE7     		b	.L75
 516              	.L84:
 517 0156 5A21     		movs	r1, #90
 518 0158 08E0     		b	.L89
 519              	.L162:
 520 015a 0D29     		cmp	r1, #13
 521 015c 0CD0     		beq	.L87
 522 015e 3B29     		cmp	r1, #59
 523 0160 0AD0     		beq	.L87
 524 0162 022C     		cmp	r4, #2
 525 0164 19D0     		beq	.L88
 526 0166 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 527 0168 2646     		mov	r6, r4
 528 016a 9146     		mov	r9, r2
 529              	.L89:
 530 016c 0A29     		cmp	r1, #10
 531 016e 09F10102 		add	r2, r9, #1
 532 0172 06F1FF34 		add	r4, r6, #-1
 533 0176 F0D1     		bne	.L162
 534              	.L87:
 535 0178 1449     		ldr	r1, .L163+4
 536 017a 4846     		mov	r0, r9
 537 017c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 538 0180 0246     		mov	r2, r0
 539 0182 0028     		cmp	r0, #0
 540 0184 7FF448AF 		bne	.L74
 541 0188 1149     		ldr	r1, .L163+8
 542 018a 0192     		str	r2, [sp, #4]
 543 018c 4846     		mov	r0, r9
 544 018e FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 545 0192 019A     		ldr	r2, [sp, #4]
 546 0194 68B1     		cbz	r0, .L90
 547 0196 9346     		mov	fp, r2
 548 0198 3EE7     		b	.L74
 549              	.L88:
 550 019a 1046     		mov	r0, r2
 551 019c 0B49     		ldr	r1, .L163+4
 552 019e 0192     		str	r2, [sp, #4]
 553 01a0 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 554 01a4 019A     		ldr	r2, [sp, #4]
 555 01a6 2646     		mov	r6, r4
 556 01a8 9146     		mov	r9, r2
 557 01aa 0124     		movs	r4, #1
 558 01ac 0028     		cmp	r0, #0
 559 01ae 7FF442AF 		bne	.L75
 560              	.L90:
 561 01b2 2846     		mov	r0, r5
 562 01b4 0021     		movs	r1, #0
 563 01b6 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 564 01ba 0127     		movs	r7, #1
 565 01bc 88ED400A 		vstr.32	s0, [r8, #256]
 566 01c0 2AE7     		b	.L74
 567              	.L158:
 568 01c2 0646     		mov	r6, r0
 569 01c4 61E7     		b	.L93
 570              	.L164:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 11


 571 01c6 00BF     		.align	2
 572              	.L163:
 573 01c8 00000000 		.word	.LANCHOR1
 574 01cc 00000000 		.word	.LC3
 575 01d0 04000000 		.word	.LC4
 576 01d4 13008000 		.word	8388627
 577              		.size	_ZN14FileInfoParser10FindHeightEPKcj, .-_ZN14FileInfoParser10FindHeightEPKcj
 578              		.section	.text._ZN14FileInfoParser15FindLayerHeightEPKcj,"ax",%progbits
 579              		.align	1
 580              		.p2align 2,,3
 581              		.global	_ZN14FileInfoParser15FindLayerHeightEPKcj
 582              		.syntax unified
 583              		.thumb
 584              		.thumb_func
 585              		.fpu fpv4-sp-d16
 586              		.type	_ZN14FileInfoParser15FindLayerHeightEPKcj, %function
 587              	_ZN14FileInfoParser15FindLayerHeightEPKcj:
 588              		@ args = 0, pretend = 0, frame = 0
 589              		@ frame_needed = 0, uses_anonymous_args = 0
 590              		@ link register save eliminated.
 591 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 592 0002 0BB1     		cbz	r3, .L166
 593 0004 FFF7FEBF 		b	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7
 594              	.L166:
 595 0008 1846     		mov	r0, r3
 596 000a 7047     		bx	lr
 597              		.size	_ZN14FileInfoParser15FindLayerHeightEPKcj, .-_ZN14FileInfoParser15FindLayerHeightEPKcj
 598              		.section	.text._ZN14FileInfoParser14FindSlicerInfoEPKcj,"ax",%progbits
 599              		.align	1
 600              		.p2align 2,,3
 601              		.global	_ZN14FileInfoParser14FindSlicerInfoEPKcj
 602              		.syntax unified
 603              		.thumb
 604              		.thumb_func
 605              		.fpu fpv4-sp-d16
 606              		.type	_ZN14FileInfoParser14FindSlicerInfoEPKcj, %function
 607              	_ZN14FileInfoParser14FindSlicerInfoEPKcj:
 608              		@ args = 0, pretend = 0, frame = 8
 609              		@ frame_needed = 0, uses_anonymous_args = 0
 610 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 611 0004 1F4E     		ldr	r6, .L184
 612 0006 DFF88890 		ldr	r9, .L184+12
 613 000a 8846     		mov	r8, r1
 614 000c 83B0     		sub	sp, sp, #12
 615 000e 0746     		mov	r7, r0
 616 0010 3146     		mov	r1, r6
 617 0012 4046     		mov	r0, r8
 618 0014 FFF7FEFF 		bl	strstr
 619 0018 0025     		movs	r5, #0
 620 001a 0446     		mov	r4, r0
 621 001c 58B9     		cbnz	r0, .L168
 622              	.L182:
 623 001e 0135     		adds	r5, r5, #1
 624 0020 052D     		cmp	r5, #5
 625 0022 23D0     		beq	.L179
 626 0024 59F82560 		ldr	r6, [r9, r5, lsl #2]
 627 0028 4046     		mov	r0, r8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 12


 628 002a 3146     		mov	r1, r6
 629 002c FFF7FEFF 		bl	strstr
 630 0030 0446     		mov	r4, r0
 631 0032 0028     		cmp	r0, #0
 632 0034 F3D0     		beq	.L182
 633              	.L168:
 634 0036 022D     		cmp	r5, #2
 635 0038 1BD0     		beq	.L173
 636 003a 032D     		cmp	r5, #3
 637 003c 1CD1     		bne	.L183
 638 003e 1249     		ldr	r1, .L184+4
 639 0040 0C34     		adds	r4, r4, #12
 640              	.L172:
 641 0042 07F59B77 		add	r7, r7, #310
 642 0046 6846     		mov	r0, sp
 643 0048 3326     		movs	r6, #51
 644 004a CDE90076 		strd	r7, r6, [sp]
 645 004e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 646 0052 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 647 0054 1F29     		cmp	r1, #31
 648 0056 08D9     		bls	.L176
 649              	.L175:
 650 0058 6846     		mov	r0, sp
 651 005a CDE90076 		strd	r7, r6, [sp]
 652 005e FFF7FEFF 		bl	_ZNK9StringRef3catEc
 653 0062 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
 654 0066 1F29     		cmp	r1, #31
 655 0068 F6D8     		bhi	.L175
 656              	.L176:
 657 006a 0120     		movs	r0, #1
 658              	.L179:
 659 006c 03B0     		add	sp, sp, #12
 660              		@ sp needed
 661 006e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 662              	.L173:
 663 0072 0234     		adds	r4, r4, #2
 664 0074 0549     		ldr	r1, .L184+8
 665 0076 E4E7     		b	.L172
 666              	.L183:
 667 0078 3046     		mov	r0, r6
 668 007a FFF7FEFF 		bl	strlen
 669 007e 0349     		ldr	r1, .L184+8
 670 0080 0444     		add	r4, r4, r0
 671 0082 DEE7     		b	.L172
 672              	.L185:
 673              		.align	2
 674              	.L184:
 675 0084 00000000 		.word	.LC5
 676 0088 14000000 		.word	.LC7
 677 008c 10000000 		.word	.LC6
 678 0090 00000000 		.word	.LANCHOR2
 679              		.size	_ZN14FileInfoParser14FindSlicerInfoEPKcj, .-_ZN14FileInfoParser14FindSlicerInfoEPKcj
 680              		.section	.text._ZN14FileInfoParser16FindFilamentUsedEPKcj,"ax",%progbits
 681              		.align	1
 682              		.p2align 2,,3
 683              		.global	_ZN14FileInfoParser16FindFilamentUsedEPKcj
 684              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 13


 685              		.thumb
 686              		.thumb_func
 687              		.fpu fpv4-sp-d16
 688              		.type	_ZN14FileInfoParser16FindFilamentUsedEPKcj, %function
 689              	_ZN14FileInfoParser16FindFilamentUsedEPKcj:
 690              		@ args = 0, pretend = 0, frame = 16
 691              		@ frame_needed = 0, uses_anonymous_args = 0
 692 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 693 0004 2DED028B 		vpush.64	{d8}
 694 0008 924B     		ldr	r3, .L245
 695 000a 5B69     		ldr	r3, [r3, #20]
 696 000c 85B0     		sub	sp, sp, #20
 697 000e D3F86473 		ldr	r7, [r3, #868]
 698 0012 0091     		str	r1, [sp]
 699 0014 8046     		mov	r8, r0
 700 0016 002F     		cmp	r7, #0
 701 0018 73D0     		beq	.L187
 702 001a DFF85492 		ldr	r9, .L245+28
 703 001e 9FED8E8A 		vldr.32	s16, .L245+4
 704 0022 8B46     		mov	fp, r1
 705 0024 0025     		movs	r5, #0
 706              	.L191:
 707 0026 5846     		mov	r0, fp
 708 0028 4946     		mov	r1, r9
 709 002a FFF7FEFF 		bl	strstr
 710 002e 0028     		cmp	r0, #0
 711 0030 00F09680 		beq	.L188
 712 0034 894C     		ldr	r4, .L245+8
 713 0036 00F10C06 		add	r6, r0, #12
 714              	.L189:
 715 003a 96F800A0 		ldrb	r10, [r6]	@ zero_extendqisi2
 716 003e 2046     		mov	r0, r4
 717 0040 5146     		mov	r1, r10
 718 0042 B346     		mov	fp, r6
 719 0044 0136     		adds	r6, r6, #1
 720 0046 FFF7FEFF 		bl	strchr
 721 004a 0028     		cmp	r0, #0
 722 004c F5D1     		bne	.L189
 723 004e AAF13002 		sub	r2, r10, #48
 724 0052 092A     		cmp	r2, #9
 725 0054 1ED8     		bhi	.L198
 726 0056 05F14106 		add	r6, r5, #65
 727 005a 814C     		ldr	r4, .L245+12
 728 005c 08EB8606 		add	r6, r8, r6, lsl #2
 729              	.L197:
 730 0060 5846     		mov	r0, fp
 731 0062 03A9     		add	r1, sp, #12
 732 0064 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 733 0068 DDF80CB0 		ldr	fp, [sp, #12]
 734 006c A6EC010A 		vstmia.32	r6!, {s0}
 735 0070 9BF80010 		ldrb	r1, [fp]	@ zero_extendqisi2
 736 0074 6D29     		cmp	r1, #109
 737 0076 18D0     		beq	.L239
 738              	.L193:
 739 0078 0135     		adds	r5, r5, #1
 740 007a 01E0     		b	.L196
 741              	.L240:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 14


 742 007c 1BF8011F 		ldrb	r1, [fp, #1]!	@ zero_extendqisi2
 743              	.L196:
 744 0080 2046     		mov	r0, r4
 745 0082 FFF7FEFF 		bl	strchr
 746 0086 0028     		cmp	r0, #0
 747 0088 F8D1     		bne	.L240
 748 008a 9BF80020 		ldrb	r2, [fp]	@ zero_extendqisi2
 749 008e 303A     		subs	r2, r2, #48
 750 0090 092A     		cmp	r2, #9
 751 0092 E5D9     		bls	.L197
 752              	.L198:
 753 0094 AF42     		cmp	r7, r5
 754 0096 C6D8     		bhi	.L191
 755              	.L192:
 756 0098 002D     		cmp	r5, #0
 757 009a 00F09680 		beq	.L241
 758              	.L186:
 759 009e 2846     		mov	r0, r5
 760 00a0 05B0     		add	sp, sp, #20
 761              		@ sp needed
 762 00a2 BDEC028B 		vldm	sp!, {d8}
 763 00a6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 764              	.L239:
 765 00aa 9BF80120 		ldrb	r2, [fp, #1]	@ zero_extendqisi2
 766 00ae 6D2A     		cmp	r2, #109
 767 00b0 08D0     		beq	.L242
 768 00b2 20EE080A 		vmul.f32	s0, s0, s16
 769 00b6 0BF1010B 		add	fp, fp, #1
 770 00ba 06ED010A 		vstr.32	s0, [r6, #-4]
 771 00be 9BF80010 		ldrb	r1, [fp]	@ zero_extendqisi2
 772 00c2 D9E7     		b	.L193
 773              	.L242:
 774 00c4 9BF80210 		ldrb	r1, [fp, #2]	@ zero_extendqisi2
 775 00c8 0BF1020B 		add	fp, fp, #2
 776 00cc D4E7     		b	.L193
 777              	.L243:
 778 00ce 14F801BF 		ldrb	fp, [r4, #1]!	@ zero_extendqisi2
 779              	.L212:
 780 00d2 5946     		mov	r1, fp
 781 00d4 3046     		mov	r0, r6
 782 00d6 FFF7FEFF 		bl	strchr
 783 00da 0028     		cmp	r0, #0
 784 00dc F7D1     		bne	.L243
 785 00de ABF13003 		sub	r3, fp, #48
 786 00e2 092B     		cmp	r3, #9
 787 00e4 08D8     		bhi	.L215
 788 00e6 0146     		mov	r1, r0
 789 00e8 2046     		mov	r0, r4
 790 00ea FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 791 00ee 08EB8503 		add	r3, r8, r5, lsl #2
 792 00f2 83ED410A 		vstr.32	s0, [r3, #260]
 793 00f6 0135     		adds	r5, r5, #1
 794              	.L215:
 795 00f8 BD42     		cmp	r5, r7
 796 00fa C0F09380 		bcc	.L208
 797              	.L210:
 798 00fe 002D     		cmp	r5, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 15


 799 0100 CDD1     		bne	.L186
 800              	.L187:
 801 0102 0098     		ldr	r0, [sp]
 802 0104 5749     		ldr	r1, .L245+16
 803 0106 FFF7FEFF 		bl	strstr
 804 010a 10B3     		cbz	r0, .L244
 805 010c 1A30     		adds	r0, r0, #26
 806 010e 0021     		movs	r1, #0
 807 0110 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 808 0114 4F4B     		ldr	r3, .L245
 809 0116 DFED546A 		vldr.32	s13, .L245+20
 810 011a 5B68     		ldr	r3, [r3, #4]
 811 011c 9FED4E7A 		vldr.32	s14, .L245+4
 812 0120 03F6F433 		addw	r3, r3, #3060
 813 0124 D3ED007A 		vldr.32	s15, [r3]
 814 0128 B6EE006A 		vmov.f32	s12, #5.0e-1
 815 012c 67EE867A 		vmul.f32	s15, s15, s12
 816 0130 20EE077A 		vmul.f32	s14, s0, s14
 817 0134 67EEA77A 		vmul.f32	s15, s15, s15
 818 0138 0125     		movs	r5, #1
 819 013a 67EEA67A 		vmul.f32	s15, s15, s13
 820 013e 2846     		mov	r0, r5
 821 0140 C7EE276A 		vdiv.f32	s13, s14, s15
 822 0144 C8ED416A 		vstr.32	s13, [r8, #260]
 823 0148 05B0     		add	sp, sp, #20
 824              		@ sp needed
 825 014a BDEC028B 		vldm	sp!, {d8}
 826 014e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 827              	.L244:
 828 0152 0546     		mov	r5, r0
 829 0154 2846     		mov	r0, r5
 830 0156 05B0     		add	sp, sp, #20
 831              		@ sp needed
 832 0158 BDEC028B 		vldm	sp!, {d8}
 833 015c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 834              	.L188:
 835 0160 AF42     		cmp	r7, r5
 836 0162 99D9     		bls	.L192
 837 0164 DFF80C91 		ldr	r9, .L245+32
 838 0168 404E     		ldr	r6, .L245+24
 839 016a 009C     		ldr	r4, [sp]
 840 016c 01E0     		b	.L204
 841              	.L202:
 842 016e BD42     		cmp	r5, r7
 843 0170 92D2     		bcs	.L192
 844              	.L204:
 845 0172 2046     		mov	r0, r4
 846 0174 4946     		mov	r1, r9
 847 0176 FFF7FEFF 		bl	strstr
 848 017a 0028     		cmp	r0, #0
 849 017c 8CD0     		beq	.L192
 850 017e 00F10A04 		add	r4, r0, #10
 851 0182 2046     		mov	r0, r4
 852 0184 0A22     		movs	r2, #10
 853 0186 03A9     		add	r1, sp, #12
 854 0188 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 855 018c 039B     		ldr	r3, [sp, #12]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 16


 856 018e A342     		cmp	r3, r4
 857 0190 EDD0     		beq	.L202
 858 0192 B842     		cmp	r0, r7
 859 0194 EBD2     		bcs	.L202
 860 0196 9A46     		mov	r10, r3
 861              	.L203:
 862 0198 9AF800B0 		ldrb	fp, [r10]	@ zero_extendqisi2
 863 019c 3046     		mov	r0, r6
 864 019e 5946     		mov	r1, fp
 865 01a0 FFF7FEFF 		bl	strchr
 866 01a4 5446     		mov	r4, r10
 867 01a6 0AF1010A 		add	r10, r10, #1
 868 01aa 0028     		cmp	r0, #0
 869 01ac F4D1     		bne	.L203
 870 01ae ABF13002 		sub	r2, fp, #48
 871 01b2 092A     		cmp	r2, #9
 872 01b4 DBD8     		bhi	.L202
 873 01b6 0146     		mov	r1, r0
 874 01b8 2046     		mov	r0, r4
 875 01ba FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 876 01be 08EB8503 		add	r3, r8, r5, lsl #2
 877 01c2 83ED410A 		vstr.32	s0, [r3, #260]
 878 01c6 0135     		adds	r5, r5, #1
 879 01c8 D1E7     		b	.L202
 880              	.L241:
 881 01ca DFF8AC90 		ldr	r9, .L245+36
 882 01ce 234E     		ldr	r6, .L245+8
 883 01d0 009A     		ldr	r2, [sp]
 884              	.L200:
 885 01d2 1046     		mov	r0, r2
 886 01d4 4946     		mov	r1, r9
 887 01d6 FFF7FEFF 		bl	strstr
 888 01da E0B1     		cbz	r0, .L205
 889 01dc 00F10E04 		add	r4, r0, #14
 890              	.L206:
 891 01e0 94F800B0 		ldrb	fp, [r4]	@ zero_extendqisi2
 892 01e4 3046     		mov	r0, r6
 893 01e6 5946     		mov	r1, fp
 894 01e8 FFF7FEFF 		bl	strchr
 895 01ec 2246     		mov	r2, r4
 896 01ee 0134     		adds	r4, r4, #1
 897 01f0 0028     		cmp	r0, #0
 898 01f2 F5D1     		bne	.L206
 899 01f4 ABF13003 		sub	r3, fp, #48
 900 01f8 092B     		cmp	r3, #9
 901 01fa 0AD8     		bhi	.L207
 902 01fc 0146     		mov	r1, r0
 903 01fe 1046     		mov	r0, r2
 904 0200 0192     		str	r2, [sp, #4]
 905 0202 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 906 0206 08EB8503 		add	r3, r8, r5, lsl #2
 907 020a 019A     		ldr	r2, [sp, #4]
 908 020c 83ED410A 		vstr.32	s0, [r3, #260]
 909 0210 0135     		adds	r5, r5, #1
 910              	.L207:
 911 0212 BD42     		cmp	r5, r7
 912 0214 DDD3     		bcc	.L200
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 17


 913              	.L205:
 914 0216 002D     		cmp	r5, #0
 915 0218 7FF441AF 		bne	.L186
 916 021c DFF85C90 		ldr	r9, .L245+40
 917 0220 0E4E     		ldr	r6, .L245+8
 918 0222 009C     		ldr	r4, [sp]
 919              	.L208:
 920 0224 2046     		mov	r0, r4
 921 0226 4946     		mov	r1, r9
 922 0228 FFF7FEFF 		bl	strstr
 923 022c 0028     		cmp	r0, #0
 924 022e 3FF466AF 		beq	.L210
 925 0232 90F809B0 		ldrb	fp, [r0, #9]	@ zero_extendqisi2
 926 0236 ABF13002 		sub	r2, fp, #48
 927 023a 092A     		cmp	r2, #9
 928 023c 00F10904 		add	r4, r0, #9
 929 0240 3FF647AF 		bhi	.L212
 930              	.L211:
 931 0244 14F801BF 		ldrb	fp, [r4, #1]!	@ zero_extendqisi2
 932 0248 ABF13002 		sub	r2, fp, #48
 933 024c 092A     		cmp	r2, #9
 934 024e F9D9     		bls	.L211
 935 0250 3FE7     		b	.L212
 936              	.L246:
 937 0252 00BF     		.align	2
 938              	.L245:
 939 0254 00000000 		.word	reprap
 940 0258 00007A44 		.word	1148846080
 941 025c 10000000 		.word	.LC9
 942 0260 18000000 		.word	.LC10
 943 0264 40000000 		.word	.LC14
 944 0268 DB0F4940 		.word	1078530011
 945 026c 28000000 		.word	.LC12
 946 0270 00000000 		.word	.LC8
 947 0274 1C000000 		.word	.LC11
 948 0278 30000000 		.word	.LC13
 949 027c 5C000000 		.word	.LC15
 950              		.size	_ZN14FileInfoParser16FindFilamentUsedEPKcj, .-_ZN14FileInfoParser16FindFilamentUsedEPKcj
 951              		.global	__aeabi_d2f
 952              		.section	.text._ZN14FileInfoParser13FindPrintTimeEPKcj,"ax",%progbits
 953              		.align	1
 954              		.p2align 2,,3
 955              		.global	_ZN14FileInfoParser13FindPrintTimeEPKcj
 956              		.syntax unified
 957              		.thumb
 958              		.thumb_func
 959              		.fpu fpv4-sp-d16
 960              		.type	_ZN14FileInfoParser13FindPrintTimeEPKcj, %function
 961              	_ZN14FileInfoParser13FindPrintTimeEPKcj:
 962              		@ args = 0, pretend = 0, frame = 8
 963              		@ frame_needed = 0, uses_anonymous_args = 0
 964 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 965 0004 2DED028B 		vpush.64	{d8}
 966 0008 494E     		ldr	r6, .L275
 967 000a DFF83C91 		ldr	r9, .L275+24
 968 000e 83B0     		sub	sp, sp, #12
 969 0010 0746     		mov	r7, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 18


 970 0012 8846     		mov	r8, r1
 971 0014 0025     		movs	r5, #0
 972              	.L263:
 973 0016 3146     		mov	r1, r6
 974 0018 4046     		mov	r0, r8
 975 001a FFF7FEFF 		bl	strstr
 976 001e 0435     		adds	r5, r5, #4
 977 0020 0446     		mov	r4, r0
 978 0022 0190     		str	r0, [sp, #4]
 979 0024 20B9     		cbnz	r0, .L273
 980 0026 0C2D     		cmp	r5, #12
 981 0028 3AD0     		beq	.L262
 982 002a 55F80960 		ldr	r6, [r5, r9]
 983 002e F2E7     		b	.L263
 984              	.L273:
 985 0030 3046     		mov	r0, r6
 986 0032 FFF7FEFF 		bl	strlen
 987 0036 3F4E     		ldr	r6, .L275+4
 988 0038 0444     		add	r4, r4, r0
 989              	.L271:
 990 003a 0194     		str	r4, [sp, #4]
 991 003c 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 992 003e 3046     		mov	r0, r6
 993 0040 2546     		mov	r5, r4
 994 0042 0134     		adds	r4, r4, #1
 995 0044 FFF7FEFF 		bl	strchr
 996 0048 0028     		cmp	r0, #0
 997 004a F6D1     		bne	.L271
 998 004c 01A9     		add	r1, sp, #4
 999 004e 2846     		mov	r0, r5
 1000 0050 FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 1001 0054 51EC100B 		vmov	r0, r1, d0
 1002 0058 FFF7FEFF 		bl	__aeabi_d2f
 1003 005c 08EE100A 		vmov	s16, r0
 1004 0060 0198     		ldr	r0, [sp, #4]
 1005 0062 A842     		cmp	r0, r5
 1006 0064 02D1     		bne	.L272
 1007 0066 21E0     		b	.L264
 1008              	.L253:
 1009 0068 0130     		adds	r0, r0, #1
 1010 006a 0190     		str	r0, [sp, #4]
 1011              	.L272:
 1012 006c 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1013 006e 202B     		cmp	r3, #32
 1014 0070 FAD0     		beq	.L253
 1015 0072 682B     		cmp	r3, #104
 1016 0074 36D0     		beq	.L274
 1017 0076 0198     		ldr	r0, [sp, #4]
 1018 0078 DFED2F8A 		vldr.32	s17, .L275+8
 1019 007c 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1020              	.L257:
 1021 007e 6D2B     		cmp	r3, #109
 1022 0080 17D0     		beq	.L259
 1023 0082 DFED2E7A 		vldr.32	s15, .L275+12
 1024 0086 9FED2C0A 		vldr.32	s0, .L275+8
 1025 008a A8EEA70A 		vfma.f32	s0, s17, s15
 1026 008e 20EE270A 		vmul.f32	s0, s0, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 19


 1027              	.L251:
 1028 0092 38EE000A 		vadd.f32	s0, s16, s0
 1029 0096 FFF7FEFF 		bl	lrintf
 1030 009a 0124     		movs	r4, #1
 1031 009c C7F82801 		str	r0, [r7, #296]
 1032              	.L262:
 1033 00a0 2046     		mov	r0, r4
 1034 00a2 03B0     		add	sp, sp, #12
 1035              		@ sp needed
 1036 00a4 BDEC028B 		vldm	sp!, {d8}
 1037 00a8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1038              	.L264:
 1039 00ac 9FED220A 		vldr.32	s0, .L275+8
 1040 00b0 EFE7     		b	.L251
 1041              	.L259:
 1042 00b2 2349     		ldr	r1, .L275+16
 1043 00b4 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1044 00b8 88B3     		cbz	r0, .L260
 1045 00ba 0198     		ldr	r0, [sp, #4]
 1046 00bc 0730     		adds	r0, r0, #7
 1047 00be 0190     		str	r0, [sp, #4]
 1048              	.L261:
 1049 00c0 01A9     		add	r1, sp, #4
 1050 00c2 FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 1051 00c6 51EC100B 		vmov	r0, r1, d0
 1052 00ca FFF7FEFF 		bl	__aeabi_d2f
 1053 00ce DFED1B7A 		vldr.32	s15, .L275+12
 1054 00d2 B0EE480A 		vmov.f32	s0, s16
 1055 00d6 A8EEA70A 		vfma.f32	s0, s17, s15
 1056 00da 08EE100A 		vmov	s16, r0
 1057 00de 20EE270A 		vmul.f32	s0, s0, s15
 1058 00e2 D6E7     		b	.L251
 1059              	.L274:
 1060 00e4 1749     		ldr	r1, .L275+20
 1061 00e6 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1062 00ea E0B1     		cbz	r0, .L255
 1063 00ec 0198     		ldr	r0, [sp, #4]
 1064 00ee 0530     		adds	r0, r0, #5
 1065 00f0 0190     		str	r0, [sp, #4]
 1066              	.L256:
 1067 00f2 01A9     		add	r1, sp, #4
 1068 00f4 FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 1069 00f8 51EC100B 		vmov	r0, r1, d0
 1070 00fc FFF7FEFF 		bl	__aeabi_d2f
 1071 0100 0246     		mov	r2, r0	@ float
 1072 0102 0198     		ldr	r0, [sp, #4]
 1073 0104 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1074 0106 202B     		cmp	r3, #32
 1075 0108 04D1     		bne	.L266
 1076              	.L258:
 1077 010a 0130     		adds	r0, r0, #1
 1078 010c 0190     		str	r0, [sp, #4]
 1079 010e 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1080 0110 202B     		cmp	r3, #32
 1081 0112 FAD0     		beq	.L258
 1082              	.L266:
 1083 0114 F0EE488A 		vmov.f32	s17, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 20


 1084 0118 08EE102A 		vmov	s16, r2
 1085 011c AFE7     		b	.L257
 1086              	.L260:
 1087 011e 0198     		ldr	r0, [sp, #4]
 1088 0120 0130     		adds	r0, r0, #1
 1089 0122 0190     		str	r0, [sp, #4]
 1090 0124 CCE7     		b	.L261
 1091              	.L255:
 1092 0126 0198     		ldr	r0, [sp, #4]
 1093 0128 0130     		adds	r0, r0, #1
 1094 012a 0190     		str	r0, [sp, #4]
 1095 012c E1E7     		b	.L256
 1096              	.L276:
 1097 012e 00BF     		.align	2
 1098              	.L275:
 1099 0130 00000000 		.word	.LC16
 1100 0134 1C000000 		.word	.LC17
 1101 0138 00000000 		.word	0
 1102 013c 00007042 		.word	1114636288
 1103 0140 2C000000 		.word	.LC19
 1104 0144 24000000 		.word	.LC18
 1105 0148 00000000 		.word	.LANCHOR3
 1106              		.size	_ZN14FileInfoParser13FindPrintTimeEPKcj, .-_ZN14FileInfoParser13FindPrintTimeEPKcj
 1107              		.section	.text._ZN14FileInfoParser17FindSimulatedTimeEPKcj,"ax",%progbits
 1108              		.align	1
 1109              		.p2align 2,,3
 1110              		.global	_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1111              		.syntax unified
 1112              		.thumb
 1113              		.thumb_func
 1114              		.fpu fpv4-sp-d16
 1115              		.type	_ZN14FileInfoParser17FindSimulatedTimeEPKcj, %function
 1116              	_ZN14FileInfoParser17FindSimulatedTimeEPKcj:
 1117              		@ args = 0, pretend = 0, frame = 8
 1118              		@ frame_needed = 0, uses_anonymous_args = 0
 1119 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1120 0002 0B46     		mov	r3, r1
 1121 0004 83B0     		sub	sp, sp, #12
 1122 0006 0746     		mov	r7, r0
 1123 0008 1049     		ldr	r1, .L285
 1124 000a 1846     		mov	r0, r3
 1125 000c FFF7FEFF 		bl	strstr
 1126 0010 C0B1     		cbz	r0, .L282
 1127 0012 0F4E     		ldr	r6, .L285+4
 1128 0014 00F11704 		add	r4, r0, #23
 1129              	.L284:
 1130 0018 0194     		str	r4, [sp, #4]
 1131 001a 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 1132 001c 3046     		mov	r0, r6
 1133 001e 2546     		mov	r5, r4
 1134 0020 0134     		adds	r4, r4, #1
 1135 0022 FFF7FEFF 		bl	strchr
 1136 0026 0028     		cmp	r0, #0
 1137 0028 F6D1     		bne	.L284
 1138 002a 0A22     		movs	r2, #10
 1139 002c 01A9     		add	r1, sp, #4
 1140 002e 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 21


 1141 0030 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 1142 0034 019B     		ldr	r3, [sp, #4]
 1143 0036 AB42     		cmp	r3, r5
 1144 0038 04D0     		beq	.L282
 1145 003a C7F82C01 		str	r0, [r7, #300]
 1146 003e 0120     		movs	r0, #1
 1147 0040 03B0     		add	sp, sp, #12
 1148              		@ sp needed
 1149 0042 F0BD     		pop	{r4, r5, r6, r7, pc}
 1150              	.L282:
 1151 0044 0020     		movs	r0, #0
 1152 0046 03B0     		add	sp, sp, #12
 1153              		@ sp needed
 1154 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 1155              	.L286:
 1156 004a 00BF     		.align	2
 1157              	.L285:
 1158 004c 00000000 		.word	.LC20
 1159 0050 1C000000 		.word	.LC17
 1160              		.size	_ZN14FileInfoParser17FindSimulatedTimeEPKcj, .-_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1161              		.global	__aeabi_f2d
 1162              		.section	.text._ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob,"ax",%progbits
 1163              		.align	1
 1164              		.p2align 2,,3
 1165              		.global	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 1166              		.syntax unified
 1167              		.thumb
 1168              		.thumb_func
 1169              		.fpu fpv4-sp-d16
 1170              		.type	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob, %function
 1171              	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob:
 1172              		@ args = 4, pretend = 0, frame = 32
 1173              		@ frame_needed = 0, uses_anonymous_args = 0
 1174 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1175 0004 2DED028B 		vpush.64	{d8}
 1176 0008 8FB0     		sub	sp, sp, #60
 1177 000a 0446     		mov	r4, r0
 1178 000c 0692     		str	r2, [sp, #24]
 1179 000e 0793     		str	r3, [sp, #28]
 1180 0010 0E46     		mov	r6, r1
 1181 0012 9DF86830 		ldrb	r3, [sp, #104]	@ zero_extendqisi2
 1182 0016 0893     		str	r3, [sp, #32]
 1183 0018 0146     		mov	r1, r0
 1184 001a C822     		movs	r2, #200
 1185 001c 0AA8     		add	r0, sp, #40
 1186 001e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1187 0022 9DF82C50 		ldrb	r5, [sp, #44]	@ zero_extendqisi2
 1188 0026 F5B1     		cbz	r5, .L292
 1189 0028 94F86030 		ldrb	r3, [r4, #96]	@ zero_extendqisi2
 1190 002c 2BBB     		cbnz	r3, .L400
 1191              	.L290:
 1192 002e DFF87083 		ldr	r8, .L424+8
 1193 0032 069A     		ldr	r2, [sp, #24]
 1194 0034 D8F80430 		ldr	r3, [r8, #4]
 1195 0038 3146     		mov	r1, r6
 1196 003a D3F8DC0B 		ldr	r0, [r3, #3036]
 1197 003e FFF7FEFF 		bl	_ZN11MassStorage15DirectoryExistsEPKcS1_
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 22


 1198 0042 8146     		mov	r9, r0
 1199 0044 0028     		cmp	r0, #0
 1200 0046 00F0AD81 		beq	.L401
 1201              	.L294:
 1202 004a 079A     		ldr	r2, [sp, #28]
 1203 004c 0023     		movs	r3, #0
 1204 004e 82F84C30 		strb	r3, [r2, #76]
 1205 0052 09E0     		b	.L289
 1206              	.L403:
 1207 0054 FFF7FEFF 		bl	millis
 1208 0058 D4F87031 		ldr	r3, [r4, #368]
 1209 005c C01A     		subs	r0, r0, r3
 1210 005e B0F57A6F 		cmp	r0, #4000
 1211 0062 80F0C082 		bcs	.L402
 1212              	.L292:
 1213 0066 0025     		movs	r5, #0
 1214              	.L289:
 1215 0068 0AA8     		add	r0, sp, #40
 1216 006a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1217 006e 2846     		mov	r0, r5
 1218 0070 0FB0     		add	sp, sp, #60
 1219              		@ sp needed
 1220 0072 BDEC028B 		vldm	sp!, {d8}
 1221 0076 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1222              	.L400:
 1223 007a 04F16101 		add	r1, r4, #97
 1224 007e 0698     		ldr	r0, [sp, #24]
 1225 0080 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1226 0084 8046     		mov	r8, r0
 1227 0086 0028     		cmp	r0, #0
 1228 0088 E4D0     		beq	.L403
 1229 008a 94F86030 		ldrb	r3, [r4, #96]	@ zero_extendqisi2
 1230 008e 002B     		cmp	r3, #0
 1231 0090 CDD0     		beq	.L290
 1232              	.L293:
 1233 0092 FFF7FEFF 		bl	millis
 1234 0096 DFF808B3 		ldr	fp, .L424+8
 1235 009a 9FEDBF8A 		vldr.32	s16, .L424
 1236 009e 0990     		str	r0, [sp, #36]
 1237 00a0 04F5C277 		add	r7, r4, #388
 1238              	.L341:
 1239 00a4 94F86030 		ldrb	r3, [r4, #96]	@ zero_extendqisi2
 1240 00a8 D4F8DC00 		ldr	r0, [r4, #220]
 1241 00ac 022B     		cmp	r3, #2
 1242 00ae 12D0     		beq	.L301
 1243 00b0 032B     		cmp	r3, #3
 1244 00b2 00F0EF80 		beq	.L302
 1245 00b6 012B     		cmp	r3, #1
 1246 00b8 5AD0     		beq	.L404
 1247 00ba 0026     		movs	r6, #0
 1248 00bc 84F83561 		strb	r6, [r4, #309]
 1249 00c0 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1250 00c4 0798     		ldr	r0, [sp, #28]
 1251 00c6 8122     		movs	r2, #129
 1252 00c8 04F1E801 		add	r1, r4, #232
 1253 00cc FFF7FEFF 		bl	memcpy
 1254 00d0 84F86060 		strb	r6, [r4, #96]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 23


 1255 00d4 C8E7     		b	.L289
 1256              	.L301:
 1257 00d6 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1258 00da 0646     		mov	r6, r0
 1259 00dc D4F8DC00 		ldr	r0, [r4, #220]
 1260 00e0 FFF7FEFF 		bl	_ZNK9FileStore11ClusterSizeEv
 1261 00e4 D4F8E0A0 		ldr	r10, [r4, #224]
 1262 00e8 B6FBF0F2 		udiv	r2, r6, r0
 1263 00ec BAFBF0F3 		udiv	r3, r10, r0
 1264 00f0 9A42     		cmp	r2, r3
 1265 00f2 88BF     		it	hi
 1266 00f4 0026     		movhi	r6, #0
 1267 00f6 06EB4026 		add	r6, r6, r0, lsl #9
 1268 00fa B245     		cmp	r10, r6
 1269 00fc D146     		mov	r9, r10
 1270 00fe 28BF     		it	cs
 1271 0100 B146     		movcs	r9, r6
 1272 0102 FFF7FEFF 		bl	millis
 1273 0106 4946     		mov	r1, r9
 1274 0108 8046     		mov	r8, r0
 1275 010a D4F8DC00 		ldr	r0, [r4, #220]
 1276 010e FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1277 0112 0028     		cmp	r0, #0
 1278 0114 00F01083 		beq	.L405
 1279 0118 FFF7FEFF 		bl	millis
 1280 011c D4F87C31 		ldr	r3, [r4, #380]
 1281 0120 A3EB0803 		sub	r3, r3, r8
 1282 0124 0344     		add	r3, r3, r0
 1283 0126 B245     		cmp	r10, r6
 1284 0128 C4F87C31 		str	r3, [r4, #380]
 1285 012c 02D8     		bhi	.L319
 1286 012e 0323     		movs	r3, #3
 1287 0130 84F86030 		strb	r3, [r4, #96]
 1288              	.L319:
 1289 0134 FFF7FEFF 		bl	millis
 1290 0138 DBF82030 		ldr	r3, [fp, #32]
 1291 013c C4F87001 		str	r0, [r4, #368]
 1292 0140 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 1293 0142 1BB9     		cbnz	r3, .L340
 1294 0144 099B     		ldr	r3, [sp, #36]
 1295 0146 C01A     		subs	r0, r0, r3
 1296 0148 C728     		cmp	r0, #199
 1297 014a ABD9     		bls	.L341
 1298              	.L340:
 1299 014c 089B     		ldr	r3, [sp, #32]
 1300 014e 002B     		cmp	r3, #0
 1301 0150 89D0     		beq	.L292
 1302 0152 8122     		movs	r2, #129
 1303 0154 04F1E801 		add	r1, r4, #232
 1304 0158 0798     		ldr	r0, [sp, #28]
 1305 015a FFF7FEFF 		bl	memcpy
 1306 015e D4F8DC00 		ldr	r0, [r4, #220]
 1307 0162 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1308 0166 0023     		movs	r3, #0
 1309 0168 089D     		ldr	r5, [sp, #32]
 1310 016a 84F86030 		strb	r3, [r4, #96]
 1311 016e 7BE7     		b	.L289
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 24


 1312              	.L404:
 1313 0170 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1314 0174 0646     		mov	r6, r0
 1315 0176 D4F8DC00 		ldr	r0, [r4, #220]
 1316 017a FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1317 017e 361A     		subs	r6, r6, r0
 1318 0180 B6F5006F 		cmp	r6, #2048
 1319 0184 28BF     		it	cs
 1320 0186 4FF40069 		movcs	r9, #2048
 1321 018a D4F88031 		ldr	r3, [r4, #384]
 1322 018e 2CBF     		ite	cs
 1323 0190 4E46     		movcs	r6, r9
 1324 0192 B146     		movcc	r9, r6
 1325 0194 06EB0308 		add	r8, r6, r3
 1326 0198 FFF7FEFF 		bl	millis
 1327 019c D4F88011 		ldr	r1, [r4, #384]
 1328 01a0 8246     		mov	r10, r0
 1329 01a2 3944     		add	r1, r1, r7
 1330 01a4 D4F8DC00 		ldr	r0, [r4, #220]
 1331 01a8 3246     		mov	r2, r6
 1332 01aa FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1333 01ae 8145     		cmp	r9, r0
 1334 01b0 40F0A982 		bne	.L406
 1335 01b4 0023     		movs	r3, #0
 1336 01b6 07F80830 		strb	r3, [r7, r8]
 1337 01ba FFF7FEFF 		bl	millis
 1338 01be D4F87831 		ldr	r3, [r4, #376]
 1339 01c2 D4F83021 		ldr	r2, [r4, #304]
 1340 01c6 A3EB0A03 		sub	r3, r3, r10
 1341 01ca 0344     		add	r3, r3, r0
 1342 01cc 8146     		mov	r9, r0
 1343 01ce C4F87831 		str	r3, [r4, #376]
 1344 01d2 002A     		cmp	r2, #0
 1345 01d4 00F05081 		beq	.L407
 1346 01d8 AA46     		mov	r10, r5
 1347              	.L306:
 1348 01da D4ED3F7A 		vldr.32	s15, [r4, #252]
 1349 01de F5EE407A 		vcmp.f32	s15, #0
 1350 01e2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1351 01e6 05D1     		bne	.L307
 1352 01e8 B8F1030F 		cmp	r8, #3
 1353 01ec 00F21782 		bhi	.L408
 1354 01f0 4FF0000A 		mov	r10, #0
 1355              	.L307:
 1356 01f4 D4ED3E7A 		vldr.32	s15, [r4, #248]
 1357 01f8 F5EE407A 		vcmp.f32	s15, #0
 1358 01fc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1359 0200 05D1     		bne	.L309
 1360 0202 94F88431 		ldrb	r3, [r4, #388]	@ zero_extendqisi2
 1361 0206 002B     		cmp	r3, #0
 1362 0208 40F00082 		bne	.L409
 1363 020c 9A46     		mov	r10, r3
 1364              	.L309:
 1365 020e 94F83631 		ldrb	r3, [r4, #310]	@ zero_extendqisi2
 1366 0212 002B     		cmp	r3, #0
 1367 0214 00F04781 		beq	.L410
 1368              	.L311:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 25


 1369 0218 D4F82831 		ldr	r3, [r4, #296]
 1370 021c 002B     		cmp	r3, #0
 1371 021e 00F03881 		beq	.L411
 1372              	.L312:
 1373 0222 FFF7FEFF 		bl	millis
 1374 0226 D4F87431 		ldr	r3, [r4, #372]
 1375 022a A3EB0903 		sub	r3, r3, r9
 1376 022e 0344     		add	r3, r3, r0
 1377 0230 C4F87431 		str	r3, [r4, #372]
 1378 0234 D4F8DC00 		ldr	r0, [r4, #220]
 1379 0238 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1380 023c 8046     		mov	r8, r0
 1381 023e BAF1000F 		cmp	r10, #0
 1382 0242 40F0A580 		bne	.L313
 1383 0246 44F61F63 		movw	r3, #19999
 1384 024a 9845     		cmp	r8, r3
 1385 024c D4F8DC00 		ldr	r0, [r4, #220]
 1386 0250 40F2F781 		bls	.L412
 1387              	.L314:
 1388 0254 DBF80831 		ldr	r3, [fp, #264]
 1389 0258 9905     		lsls	r1, r3, #22
 1390 025a 00F17B81 		bmi	.L413
 1391              	.L318:
 1392 025e FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1393 0262 0646     		mov	r6, r0
 1394 0264 D4F8DC00 		ldr	r0, [r4, #220]
 1395 0268 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1396 026c 013E     		subs	r6, r6, #1
 1397 026e 0138     		subs	r0, r0, #1
 1398 0270 C6F30A06 		ubfx	r6, r6, #0, #11
 1399 0274 0023     		movs	r3, #0
 1400 0276 861B     		subs	r6, r0, r6
 1401 0278 0222     		movs	r2, #2
 1402 027a C4F8E060 		str	r6, [r4, #224]
 1403 027e C4F87431 		str	r3, [r4, #372]
 1404 0282 C4F87831 		str	r3, [r4, #376]
 1405 0286 C4F87C31 		str	r3, [r4, #380]
 1406 028a C4F88031 		str	r3, [r4, #384]
 1407 028e 84F86020 		strb	r2, [r4, #96]
 1408 0292 4FE7     		b	.L319
 1409              	.L302:
 1410 0294 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1411 0298 D4F8E030 		ldr	r3, [r4, #224]
 1412 029c D4F88021 		ldr	r2, [r4, #384]
 1413 02a0 A0EB030A 		sub	r10, r0, r3
 1414 02a4 BAF5006F 		cmp	r10, #2048
 1415 02a8 2ABF     		itet	cs
 1416 02aa 4FF40068 		movcs	r8, #2048
 1417 02ae D046     		movcc	r8, r10
 1418 02b0 C246     		movcs	r10, r8
 1419 02b2 002A     		cmp	r2, #0
 1420 02b4 40F0D780 		bne	.L414
 1421 02b8 5646     		mov	r6, r10
 1422              	.L323:
 1423 02ba FFF7FEFF 		bl	millis
 1424 02be 5246     		mov	r2, r10
 1425 02c0 8146     		mov	r9, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 26


 1426 02c2 3946     		mov	r1, r7
 1427 02c4 D4F8DC00 		ldr	r0, [r4, #220]
 1428 02c8 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1429 02cc 4045     		cmp	r0, r8
 1430 02ce 40F03082 		bne	.L415
 1431 02d2 0023     		movs	r3, #0
 1432 02d4 BB55     		strb	r3, [r7, r6]
 1433 02d6 FFF7FEFF 		bl	millis
 1434 02da D4F87831 		ldr	r3, [r4, #376]
 1435 02de D4F83021 		ldr	r2, [r4, #304]
 1436 02e2 A3EB0903 		sub	r3, r3, r9
 1437 02e6 0344     		add	r3, r3, r0
 1438 02e8 8046     		mov	r8, r0
 1439 02ea C4F87831 		str	r3, [r4, #376]
 1440 02ee 002A     		cmp	r2, #0
 1441 02f0 00F0E380 		beq	.L416
 1442 02f4 A946     		mov	r9, r5
 1443              	.L325:
 1444 02f6 D4ED3E7A 		vldr.32	s15, [r4, #248]
 1445 02fa F5EE407A 		vcmp.f32	s15, #0
 1446 02fe F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1447 0302 06D1     		bne	.L326
 1448 0304 94F88431 		ldrb	r3, [r4, #388]	@ zero_extendqisi2
 1449 0308 002B     		cmp	r3, #0
 1450 030a 40F09281 		bne	.L417
 1451              	.L327:
 1452 030e 4FF00009 		mov	r9, #0
 1453              	.L326:
 1454 0312 D4ED407A 		vldr.32	s15, [r4, #256]
 1455 0316 F5EE407A 		vcmp.f32	s15, #0
 1456 031a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1457 031e 00F0FB80 		beq	.L418
 1458              	.L328:
 1459 0322 D4F82831 		ldr	r3, [r4, #296]
 1460 0326 002B     		cmp	r3, #0
 1461 0328 00F0D480 		beq	.L329
 1462              	.L332:
 1463 032c D4F82C31 		ldr	r3, [r4, #300]
 1464 0330 002B     		cmp	r3, #0
 1465 0332 00F0FB80 		beq	.L419
 1466              	.L331:
 1467 0336 FFF7FEFF 		bl	millis
 1468 033a D4F87431 		ldr	r3, [r4, #372]
 1469 033e A3EB0803 		sub	r3, r3, r8
 1470 0342 0344     		add	r3, r3, r0
 1471 0344 C4F87431 		str	r3, [r4, #372]
 1472 0348 B9F1000F 		cmp	r9, #0
 1473 034c 40F08881 		bne	.L335
 1474              	.L334:
 1475 0350 D4E93703 		ldrd	r0, r3, [r4, #220]
 1476 0354 002B     		cmp	r3, #0
 1477 0356 00F08581 		beq	.L336
 1478 035a FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1479 035e D4F8E030 		ldr	r3, [r4, #224]
 1480 0362 0E4A     		ldr	r2, .L424+4
 1481 0364 C01A     		subs	r0, r0, r3
 1482 0366 9042     		cmp	r0, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 27


 1483 0368 00F27A81 		bhi	.L335
 1484 036c B3F5006F 		cmp	r3, #2048
 1485 0370 38BF     		it	cc
 1486 0372 4FF40063 		movcc	r3, #2048
 1487 0376 642E     		cmp	r6, #100
 1488 0378 A3F50063 		sub	r3, r3, #2048
 1489 037c 28BF     		it	cs
 1490 037e 6426     		movcs	r6, #100
 1491 0380 0222     		movs	r2, #2
 1492 0382 C4F8E030 		str	r3, [r4, #224]
 1493 0386 C4F88061 		str	r6, [r4, #384]
 1494 038a 84F86020 		strb	r2, [r4, #96]
 1495 038e D1E6     		b	.L319
 1496              	.L313:
 1497 0390 D4F8DC00 		ldr	r0, [r4, #220]
 1498 0394 5EE7     		b	.L314
 1499              	.L425:
 1500 0396 00BF     		.align	2
 1501              	.L424:
 1502 0398 00007A44 		.word	1148846080
 1503 039c 7F1A0600 		.word	399999
 1504 03a0 00000000 		.word	reprap
 1505              	.L401:
 1506 03a4 D8F80420 		ldr	r2, [r8, #4]
 1507 03a8 069F     		ldr	r7, [sp, #24]
 1508 03aa D2F8DC0B 		ldr	r0, [r2, #3036]
 1509 03ae 4B46     		mov	r3, r9
 1510 03b0 3A46     		mov	r2, r7
 1511 03b2 3146     		mov	r1, r6
 1512 03b4 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1513 03b8 C4F8DC00 		str	r0, [r4, #220]
 1514 03bc 0028     		cmp	r0, #0
 1515 03be 3FF444AE 		beq	.L294
 1516 03c2 04F16102 		add	r2, r4, #97
 1517 03c6 7923     		movs	r3, #121
 1518 03c8 3946     		mov	r1, r7
 1519 03ca 0CA8     		add	r0, sp, #48
 1520 03cc 0C92     		str	r2, [sp, #48]
 1521 03ce 0D93     		str	r3, [sp, #52]
 1522 03d0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1523 03d4 0023     		movs	r3, #0
 1524 03d6 0122     		movs	r2, #1
 1525 03d8 1946     		mov	r1, r3	@ float
 1526 03da C4F8FC30 		str	r3, [r4, #252]	@ float
 1527 03de C4F80031 		str	r3, [r4, #256]	@ float
 1528 03e2 C4F8F830 		str	r3, [r4, #248]	@ float
 1529 03e6 84F83521 		strb	r2, [r4, #309]
 1530 03ea C4F88091 		str	r9, [r4, #384]
 1531 03ee 84F83491 		strb	r9, [r4, #308]
 1532 03f2 C4F82C91 		str	r9, [r4, #300]
 1533 03f6 C4F82891 		str	r9, [r4, #296]
 1534 03fa C4F83091 		str	r9, [r4, #304]
 1535 03fe 84F83691 		strb	r9, [r4, #310]
 1536 0402 04F58273 		add	r3, r4, #260
 1537 0406 04F59472 		add	r2, r4, #296
 1538              	.L295:
 1539 040a 43F8041B 		str	r1, [r3], #4	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 28


 1540 040e 9342     		cmp	r3, r2
 1541 0410 FBD1     		bne	.L295
 1542 0412 D4F8DC00 		ldr	r0, [r4, #220]
 1543 0416 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1544 041a D8F80430 		ldr	r3, [r8, #4]
 1545 041e C4F8E800 		str	r0, [r4, #232]
 1546 0422 D3F8DC0B 		ldr	r0, [r3, #3036]
 1547 0426 069A     		ldr	r2, [sp, #24]
 1548 0428 3146     		mov	r1, r6
 1549 042a FFF7FEFF 		bl	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1550 042e C4E93C01 		strd	r0, [r4, #240]
 1551 0432 D8F80831 		ldr	r3, [r8, #264]
 1552 0436 0121     		movs	r1, #1
 1553 0438 9805     		lsls	r0, r3, #22
 1554 043a 84F83411 		strb	r1, [r4, #308]
 1555 043e 00F1D980 		bmi	.L420
 1556              	.L296:
 1557 0442 D4F8DC00 		ldr	r0, [r4, #220]
 1558 0446 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1559 044a 0028     		cmp	r0, #0
 1560 044c 00F0BD80 		beq	.L299
 1561 0450 C449     		ldr	r1, .L426
 1562 0452 0698     		ldr	r0, [sp, #24]
 1563 0454 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1564 0458 0028     		cmp	r0, #0
 1565 045a 00F0A180 		beq	.L421
 1566              	.L298:
 1567 045e 0123     		movs	r3, #1
 1568 0460 84F86030 		strb	r3, [r4, #96]
 1569 0464 15E6     		b	.L293
 1570              	.L414:
 1571 0466 3946     		mov	r1, r7
 1572 0468 07EB0A00 		add	r0, r7, r10
 1573 046c FFF7FEFF 		bl	memcpy
 1574 0470 D4F88061 		ldr	r6, [r4, #384]
 1575 0474 5644     		add	r6, r6, r10
 1576 0476 20E7     		b	.L323
 1577              	.L407:
 1578 0478 4246     		mov	r2, r8
 1579 047a 3946     		mov	r1, r7
 1580 047c 2046     		mov	r0, r4
 1581 047e FFF7FEFF 		bl	_ZN14FileInfoParser16FindFilamentUsedEPKcj
 1582 0482 10F1000A 		adds	r10, r0, #0
 1583 0486 C4F83001 		str	r0, [r4, #304]
 1584 048a 18BF     		it	ne
 1585 048c 4FF0010A 		movne	r10, #1
 1586 0490 A3E6     		b	.L306
 1587              	.L411:
 1588 0492 4246     		mov	r2, r8
 1589 0494 3946     		mov	r1, r7
 1590 0496 2046     		mov	r0, r4
 1591 0498 FFF7FEFF 		bl	_ZN14FileInfoParser13FindPrintTimeEPKcj
 1592 049c 0AEA000A 		and	r10, r10, r0
 1593 04a0 5FFA8AFA 		uxtb	r10, r10
 1594 04a4 BDE6     		b	.L312
 1595              	.L410:
 1596 04a6 4246     		mov	r2, r8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 29


 1597 04a8 3946     		mov	r1, r7
 1598 04aa 2046     		mov	r0, r4
 1599 04ac FFF7FEFF 		bl	_ZN14FileInfoParser14FindSlicerInfoEPKcj
 1600 04b0 0AEA000A 		and	r10, r10, r0
 1601 04b4 5FFA8AFA 		uxtb	r10, r10
 1602 04b8 AEE6     		b	.L311
 1603              	.L416:
 1604 04ba 3246     		mov	r2, r6
 1605 04bc 3946     		mov	r1, r7
 1606 04be 2046     		mov	r0, r4
 1607 04c0 FFF7FEFF 		bl	_ZN14FileInfoParser16FindFilamentUsedEPKcj
 1608 04c4 10F10009 		adds	r9, r0, #0
 1609 04c8 C4F83001 		str	r0, [r4, #304]
 1610 04cc 18BF     		it	ne
 1611 04ce 4FF00109 		movne	r9, #1
 1612 04d2 10E7     		b	.L325
 1613              	.L329:
 1614 04d4 3246     		mov	r2, r6
 1615 04d6 3946     		mov	r1, r7
 1616 04d8 2046     		mov	r0, r4
 1617 04da FFF7FEFF 		bl	_ZN14FileInfoParser13FindPrintTimeEPKcj
 1618 04de 0028     		cmp	r0, #0
 1619 04e0 7FF424AF 		bne	.L332
 1620 04e4 D4F8DC00 		ldr	r0, [r4, #220]
 1621 04e8 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1622 04ec D4F8E030 		ldr	r3, [r4, #224]
 1623 04f0 C01A     		subs	r0, r0, r3
 1624 04f2 B0F5805F 		cmp	r0, #4096
 1625 04f6 3FF619AF 		bhi	.L332
 1626 04fa D4F82C31 		ldr	r3, [r4, #300]
 1627 04fe 002B     		cmp	r3, #0
 1628 0500 00F02581 		beq	.L422
 1629              	.L345:
 1630 0504 FFF7FEFF 		bl	millis
 1631 0508 D4F87431 		ldr	r3, [r4, #372]
 1632 050c A3EB0803 		sub	r3, r3, r8
 1633 0510 0344     		add	r3, r3, r0
 1634 0512 C4F87431 		str	r3, [r4, #372]
 1635 0516 1BE7     		b	.L334
 1636              	.L418:
 1637 0518 3246     		mov	r2, r6
 1638 051a 3946     		mov	r1, r7
 1639 051c 2046     		mov	r0, r4
 1640 051e FFF7FEFF 		bl	_ZN14FileInfoParser10FindHeightEPKcj
 1641 0522 0028     		cmp	r0, #0
 1642 0524 08BF     		it	eq
 1643 0526 4FF00009 		moveq	r9, #0
 1644 052a FAE6     		b	.L328
 1645              	.L419:
 1646 052c 3246     		mov	r2, r6
 1647 052e 3946     		mov	r1, r7
 1648 0530 2046     		mov	r0, r4
 1649 0532 FFF7FEFF 		bl	_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1650 0536 0028     		cmp	r0, #0
 1651 0538 7FF4FDAE 		bne	.L331
 1652              	.L346:
 1653 053c D4F8DC00 		ldr	r0, [r4, #220]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 30


 1654 0540 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1655 0544 D4F8E030 		ldr	r3, [r4, #224]
 1656 0548 C01A     		subs	r0, r0, r3
 1657 054a B0F5805F 		cmp	r0, #4096
 1658 054e 3FF6F2AE 		bhi	.L331
 1659 0552 D7E7     		b	.L345
 1660              	.L413:
 1661 0554 DBF80460 		ldr	r6, [fp, #4]
 1662 0558 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1663 055c D4ED5D7A 		vldr.32	s15, [r4, #372]	@ int
 1664 0560 F8EE677A 		vcvt.f32.u32	s15, s15
 1665 0564 8046     		mov	r8, r0
 1666 0566 C7EE887A 		vdiv.f32	s15, s15, s16
 1667 056a 17EE900A 		vmov	r0, s15
 1668 056e FFF7FEFF 		bl	__aeabi_f2d
 1669 0572 D4ED5E7A 		vldr.32	s15, [r4, #376]	@ int
 1670 0576 F8EE677A 		vcvt.f32.u32	s15, s15
 1671 057a CDE90201 		strd	r0, [sp, #8]
 1672 057e C7EE887A 		vdiv.f32	s15, s15, s16
 1673 0582 17EE900A 		vmov	r0, s15
 1674 0586 FFF7FEFF 		bl	__aeabi_f2d
 1675 058a 4346     		mov	r3, r8
 1676 058c CDE90001 		strd	r0, [sp]
 1677 0590 754A     		ldr	r2, .L426+4
 1678 0592 3046     		mov	r0, r6
 1679 0594 0121     		movs	r1, #1
 1680 0596 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1681 059a D4F8DC00 		ldr	r0, [r4, #220]
 1682 059e 5EE6     		b	.L318
 1683              	.L421:
 1684 05a0 7249     		ldr	r1, .L426+8
 1685 05a2 0698     		ldr	r0, [sp, #24]
 1686 05a4 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1687 05a8 0028     		cmp	r0, #0
 1688 05aa 7FF458AF 		bne	.L298
 1689 05ae 7049     		ldr	r1, .L426+12
 1690 05b0 0698     		ldr	r0, [sp, #24]
 1691 05b2 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1692 05b6 0028     		cmp	r0, #0
 1693 05b8 7FF451AF 		bne	.L298
 1694 05bc 6D49     		ldr	r1, .L426+16
 1695 05be 0698     		ldr	r0, [sp, #24]
 1696 05c0 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1697 05c4 0028     		cmp	r0, #0
 1698 05c6 7FF44AAF 		bne	.L298
 1699              	.L299:
 1700 05ca D4F8DC00 		ldr	r0, [r4, #220]
 1701 05ce FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1702 05d2 0023     		movs	r3, #0
 1703 05d4 0798     		ldr	r0, [sp, #28]
 1704 05d6 84F83531 		strb	r3, [r4, #309]
 1705 05da 04F1E801 		add	r1, r4, #232
 1706 05de 8122     		movs	r2, #129
 1707 05e0 FFF7FEFF 		bl	memcpy
 1708 05e4 40E5     		b	.L289
 1709              	.L402:
 1710 05e6 D4F8DC00 		ldr	r0, [r4, #220]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 31


 1711 05ea FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1712 05ee 84F86080 		strb	r8, [r4, #96]
 1713 05f2 1CE5     		b	.L290
 1714              	.L420:
 1715 05f4 0023     		movs	r3, #0
 1716 05f6 C4F87431 		str	r3, [r4, #372]
 1717 05fa C4F87831 		str	r3, [r4, #376]
 1718 05fe D8F80400 		ldr	r0, [r8, #4]
 1719 0602 069B     		ldr	r3, [sp, #24]
 1720 0604 5C4A     		ldr	r2, .L426+20
 1721 0606 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1722 060a 1AE7     		b	.L296
 1723              	.L409:
 1724 060c 3946     		mov	r1, r7
 1725 060e 2046     		mov	r0, r4
 1726 0610 FFF7FEFF 		bl	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7
 1727 0614 0AEA000A 		and	r10, r10, r0
 1728 0618 5FFA8AFA 		uxtb	r10, r10
 1729 061c F7E5     		b	.L309
 1730              	.L408:
 1731 061e 4246     		mov	r2, r8
 1732 0620 3946     		mov	r1, r7
 1733 0622 2046     		mov	r0, r4
 1734 0624 FFF7FEFF 		bl	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6
 1735 0628 0AEA000A 		and	r10, r10, r0
 1736 062c 5FFA8AFA 		uxtb	r10, r10
 1737 0630 E0E5     		b	.L307
 1738              	.L417:
 1739 0632 3946     		mov	r1, r7
 1740 0634 2046     		mov	r0, r4
 1741 0636 FFF7FEFF 		bl	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7
 1742 063a 0028     		cmp	r0, #0
 1743 063c 7FF469AE 		bne	.L326
 1744 0640 65E6     		b	.L327
 1745              	.L412:
 1746 0642 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1747 0646 4045     		cmp	r0, r8
 1748 0648 3FF4A2AE 		beq	.L313
 1749 064c 632E     		cmp	r6, #99
 1750 064e 55D8     		bhi	.L423
 1751 0650 3946     		mov	r1, r7
 1752              	.L316:
 1753 0652 C4F88061 		str	r6, [r4, #384]
 1754 0656 3246     		mov	r2, r6
 1755 0658 3846     		mov	r0, r7
 1756 065a FFF7FEFF 		bl	memcpy
 1757 065e 69E5     		b	.L319
 1758              	.L335:
 1759 0660 D4F8DC00 		ldr	r0, [r4, #220]
 1760              	.L336:
 1761 0664 454B     		ldr	r3, .L426+24
 1762 0666 D3F80821 		ldr	r2, [r3, #264]
 1763 066a 9205     		lsls	r2, r2, #22
 1764 066c 38D5     		bpl	.L339
 1765 066e 5F68     		ldr	r7, [r3, #4]
 1766 0670 9FED438A 		vldr.32	s16, .L426+28
 1767 0674 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 32


 1768 0678 0646     		mov	r6, r0
 1769 067a D4F8DC00 		ldr	r0, [r4, #220]
 1770 067e FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1771 0682 D4ED5F7A 		vldr.32	s15, [r4, #380]	@ int
 1772 0686 F8EE677A 		vcvt.f32.u32	s15, s15
 1773 068a 06F50066 		add	r6, r6, #2048
 1774 068e C7EE887A 		vdiv.f32	s15, s15, s16
 1775 0692 361A     		subs	r6, r6, r0
 1776 0694 17EE900A 		vmov	r0, s15
 1777 0698 FFF7FEFF 		bl	__aeabi_f2d
 1778 069c D4ED5D7A 		vldr.32	s15, [r4, #372]	@ int
 1779 06a0 F8EE677A 		vcvt.f32.u32	s15, s15
 1780 06a4 CDE90401 		strd	r0, [sp, #16]
 1781 06a8 C7EE887A 		vdiv.f32	s15, s15, s16
 1782 06ac 17EE900A 		vmov	r0, s15
 1783 06b0 FFF7FEFF 		bl	__aeabi_f2d
 1784 06b4 D4ED5E7A 		vldr.32	s15, [r4, #376]	@ int
 1785 06b8 F8EE677A 		vcvt.f32.u32	s15, s15
 1786 06bc CDE90201 		strd	r0, [sp, #8]
 1787 06c0 C7EE887A 		vdiv.f32	s15, s15, s16
 1788 06c4 17EE900A 		vmov	r0, s15
 1789 06c8 FFF7FEFF 		bl	__aeabi_f2d
 1790 06cc 3346     		mov	r3, r6
 1791 06ce CDE90001 		strd	r0, [sp]
 1792 06d2 2C4A     		ldr	r2, .L426+32
 1793 06d4 3846     		mov	r0, r7
 1794 06d6 0121     		movs	r1, #1
 1795 06d8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1796 06dc D4F8DC00 		ldr	r0, [r4, #220]
 1797              	.L339:
 1798 06e0 0026     		movs	r6, #0
 1799 06e2 84F86060 		strb	r6, [r4, #96]
 1800 06e6 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1801 06ea 84F83561 		strb	r6, [r4, #309]
 1802 06ee 04F1E801 		add	r1, r4, #232
 1803 06f2 0798     		ldr	r0, [sp, #28]
 1804 06f4 8122     		movs	r2, #129
 1805 06f6 FFF7FEFF 		bl	memcpy
 1806 06fa B5E4     		b	.L289
 1807              	.L423:
 1808 06fc A6F16401 		sub	r1, r6, #100
 1809 0700 3944     		add	r1, r1, r7
 1810 0702 6426     		movs	r6, #100
 1811 0704 A5E7     		b	.L316
 1812              	.L406:
 1813 0706 1D4B     		ldr	r3, .L426+24
 1814 0708 1F4A     		ldr	r2, .L426+36
 1815              	.L398:
 1816 070a 5868     		ldr	r0, [r3, #4]
 1817 070c 069B     		ldr	r3, [sp, #24]
 1818 070e 40F2B511 		movw	r1, #437
 1819 0712 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1820 0716 0023     		movs	r3, #0
 1821 0718 84F86030 		strb	r3, [r4, #96]
 1822              	.L399:
 1823 071c D4F8DC00 		ldr	r0, [r4, #220]
 1824 0720 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 33


 1825 0724 04F1E801 		add	r1, r4, #232
 1826 0728 0798     		ldr	r0, [sp, #28]
 1827 072a 8122     		movs	r2, #129
 1828 072c FFF7FEFF 		bl	memcpy
 1829 0730 9AE4     		b	.L289
 1830              	.L415:
 1831 0732 124B     		ldr	r3, .L426+24
 1832 0734 154A     		ldr	r2, .L426+40
 1833 0736 E8E7     		b	.L398
 1834              	.L405:
 1835 0738 104B     		ldr	r3, .L426+24
 1836 073a 154A     		ldr	r2, .L426+44
 1837 073c 8146     		mov	r9, r0
 1838 073e 40F2B511 		movw	r1, #437
 1839 0742 5868     		ldr	r0, [r3, #4]
 1840 0744 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1841 0748 84F86090 		strb	r9, [r4, #96]
 1842 074c E6E7     		b	.L399
 1843              	.L422:
 1844 074e 3246     		mov	r2, r6
 1845 0750 3946     		mov	r1, r7
 1846 0752 2046     		mov	r0, r4
 1847 0754 FFF7FEFF 		bl	_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1848 0758 8146     		mov	r9, r0
 1849 075a 0028     		cmp	r0, #0
 1850 075c 7FF4D2AE 		bne	.L345
 1851 0760 ECE6     		b	.L346
 1852              	.L427:
 1853 0762 00BF     		.align	2
 1854              	.L426:
 1855 0764 18000000 		.word	.LC22
 1856 0768 5C000000 		.word	.LC27
 1857 076c 20000000 		.word	.LC23
 1858 0770 24000000 		.word	.LC24
 1859 0774 2C000000 		.word	.LC25
 1860 0778 00000000 		.word	.LC21
 1861 077c 00000000 		.word	reprap
 1862 0780 00007A44 		.word	1148846080
 1863 0784 FC000000 		.word	.LC30
 1864 0788 30000000 		.word	.LC26
 1865 078c CC000000 		.word	.LC29
 1866 0790 A8000000 		.word	.LC28
 1867              		.size	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob, .-_ZN14FileInfoParser11GetFileInfo
 1868              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1869              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1870              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1871              	_ZL28cpu_irq_prev_interrupt_state:
 1872 0000 00       		.space	1
 1873              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1874              		.align	2
 1875              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1876              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1877              	_ZL32cpu_irq_critical_section_counter:
 1878 0000 00000000 		.space	4
 1879              		.section	.rodata._ZN14FileInfoParser10FindHeightEPKcj.str1.4,"aMS",%progbits,1
 1880              		.align	2
 1881              	.LC3:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 34


 1882 0000 3B4500   		.ascii	";E\000"
 1883 0003 00       		.space	1
 1884              	.LC4:
 1885 0004 3B204500 		.ascii	"; E\000"
 1886              		.section	.rodata._ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob.str1.4,"aMS",%progbits,1
 1887              		.align	2
 1888              	.LC21:
 1889 0000 2D2D2050 		.ascii	"-- Parsing file %s --\012\000"
 1889      61727369 
 1889      6E672066 
 1889      696C6520 
 1889      2573202D 
 1890 0017 00       		.space	1
 1891              	.LC22:
 1892 0018 2E67636F 		.ascii	".gcode\000"
 1892      646500
 1893 001f 00       		.space	1
 1894              	.LC23:
 1895 0020 2E6700   		.ascii	".g\000"
 1896 0023 00       		.space	1
 1897              	.LC24:
 1898 0024 2E67636F 		.ascii	".gco\000"
 1898      00
 1899 0029 000000   		.space	3
 1900              	.LC25:
 1901 002c 2E676300 		.ascii	".gc\000"
 1902              	.LC26:
 1903 0030 4661696C 		.ascii	"Failed to read header of G-Code file \"%s\"\012\000"
 1903      65642074 
 1903      6F207265 
 1903      61642068 
 1903      65616465 
 1904 005b 00       		.space	1
 1905              	.LC27:
 1906 005c 48656164 		.ascii	"Header complete, processed %lu bytes, read time %.3"
 1906      65722063 
 1906      6F6D706C 
 1906      6574652C 
 1906      2070726F 
 1907 008f 66732C20 		.ascii	"fs, parse time %.3fs\012\000"
 1907      70617273 
 1907      65207469 
 1907      6D652025 
 1907      2E336673 
 1908 00a5 000000   		.space	3
 1909              	.LC28:
 1910 00a8 436F756C 		.ascii	"Could not seek from end of file!\012\000"
 1910      64206E6F 
 1910      74207365 
 1910      656B2066 
 1910      726F6D20 
 1911 00ca 0000     		.space	2
 1912              	.LC29:
 1913 00cc 4661696C 		.ascii	"Failed to read footer from G-Code file \"%s\"\012\000"
 1913      65642074 
 1913      6F207265 
 1913      61642066 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 35


 1913      6F6F7465 
 1914 00f9 000000   		.space	3
 1915              	.LC30:
 1916 00fc 466F6F74 		.ascii	"Footer complete, processed %lu bytes, read time %.3"
 1916      65722063 
 1916      6F6D706C 
 1916      6574652C 
 1916      2070726F 
 1917 012f 66732C20 		.ascii	"fs, parse time %.3fs, seek time %.3fs\012\000"
 1917      70617273 
 1917      65207469 
 1917      6D652025 
 1917      2E336673 
 1918              		.section	.rodata._ZN14FileInfoParser13FindPrintTimeEPKcj.str1.4,"aMS",%progbits,1
 1919              		.align	2
 1920              	.LC16:
 1921 0000 20657374 		.ascii	" estimated printing time\000"
 1921      696D6174 
 1921      65642070 
 1921      72696E74 
 1921      696E6720 
 1922 0019 000000   		.space	3
 1923              	.LC17:
 1924 001c 20093D3A 		.ascii	" \011=:\000"
 1924      00
 1925 0021 000000   		.space	3
 1926              	.LC18:
 1927 0024 686F7572 		.ascii	"hours\000"
 1927      7300
 1928 002a 0000     		.space	2
 1929              	.LC19:
 1930 002c 6D696E75 		.ascii	"minutes\000"
 1930      74657300 
 1931              		.section	.rodata._ZN14FileInfoParser14FindSlicerInfoEPKcj.str1.4,"aMS",%progbits,1
 1932              		.align	2
 1933              	.LC5:
 1934 0000 67656E65 		.ascii	"generated by \000"
 1934      72617465 
 1934      64206279 
 1934      2000
 1935 000e 0000     		.space	2
 1936              	.LC6:
 1937 0010 00       		.ascii	"\000"
 1938 0011 000000   		.space	3
 1939              	.LC7:
 1940 0014 43757261 		.ascii	"Cura at \000"
 1940      20617420 
 1940      00
 1941              		.section	.rodata._ZN14FileInfoParser15FindLayerHeightEPKcj.part.7.str1.4,"aMS",%progbits,1
 1942              		.align	2
 1943              	.LC0:
 1944 0000 6C617965 		.ascii	"layer_height\000"
 1944      725F6865 
 1944      69676874 
 1944      00
 1945 000d 000000   		.space	3
 1946              	.LC1:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 36


 1947 0010 20093D3A 		.ascii	" \011=:,\000"
 1947      2C00
 1948              		.section	.rodata._ZN14FileInfoParser16FindFilamentUsedEPKcj.str1.4,"aMS",%progbits,1
 1949              		.align	2
 1950              	.LC8:
 1951 0000 696C616D 		.ascii	"ilament used\000"
 1951      656E7420 
 1951      75736564 
 1951      00
 1952 000d 000000   		.space	3
 1953              	.LC9:
 1954 0010 203A3D09 		.ascii	" :=\011\000"
 1954      00
 1955 0015 000000   		.space	3
 1956              	.LC10:
 1957 0018 2C200900 		.ascii	", \011\000"
 1958              	.LC11:
 1959 001c 3B4D6174 		.ascii	";Material#\000"
 1959      65726961 
 1959      6C2300
 1960 0027 00       		.space	1
 1961              	.LC12:
 1962 0028 20557365 		.ascii	" Used:\011\000"
 1962      643A0900 
 1963              	.LC13:
 1964 0030 696C616D 		.ascii	"ilament length\000"
 1964      656E7420 
 1964      6C656E67 
 1964      746800
 1965 003f 00       		.space	1
 1966              	.LC14:
 1967 0040 3B204573 		.ascii	"; Estimated Build Volume: \000"
 1967      74696D61 
 1967      74656420 
 1967      4275696C 
 1967      6420566F 
 1968 005b 00       		.space	1
 1969              	.LC15:
 1970 005c 3B202020 		.ascii	";    Ext \000"
 1970      20457874 
 1970      2000
 1971              		.section	.rodata._ZN14FileInfoParser17FindSimulatedTimeEPKcj.str1.4,"aMS",%progbits,1
 1972              		.align	2
 1973              	.LC20:
 1974 0000 0A3B2053 		.ascii	"\012; Simulated print time\000"
 1974      696D756C 
 1974      61746564 
 1974      20707269 
 1974      6E742074 
 1975              		.section	.rodata._ZN14FileInfoParserC2Ev.str1.4,"aMS",%progbits,1
 1976              		.align	2
 1977              	.LC2:
 1978 0000 46696C65 		.ascii	"FileInfoParser\000"
 1978      496E666F 
 1978      50617273 
 1978      657200
 1979              		.section	.rodata._ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString,"a",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 37


 1980              		.align	2
 1981              		.set	.LANCHOR1,. + 0
 1982              		.type	_ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString, %object
 1983              		.size	_ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString, 21
 1984              	_ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString:
 1985 0000 20454E44 		.ascii	" END_LAYER_OBJECT z=\000"
 1985      5F4C4159 
 1985      45525F4F 
 1985      424A4543 
 1985      54207A3D 
 1986              		.section	.rodata._ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings,"a",%progbits
 1987              		.align	2
 1988              		.set	.LANCHOR3,. + 0
 1989              		.type	_ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings, %object
 1990              		.size	_ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings, 12
 1991              	_ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings:
 1992 0000 00000000 		.word	.LC16
 1993 0004 00000000 		.word	.LC31
 1994 0008 08000000 		.word	.LC32
 1995              		.section	.rodata._ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings,"a",%progbits
 1996              		.align	2
 1997              		.set	.LANCHOR2,. + 0
 1998              		.type	_ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings, %object
 1999              		.size	_ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings, 20
 2000              	_ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings:
 2001 0000 00000000 		.word	.LC5
 2002 0004 14000000 		.word	.LC33
 2003 0008 20000000 		.word	.LC34
 2004 000c 2C000000 		.word	.LC35
 2005 0010 3C000000 		.word	.LC36
 2006              		.section	.rodata._ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings,"a",%progbits
 2007              		.align	2
 2008              		.set	.LANCHOR0,. + 0
 2009              		.type	_ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings, %object
 2010              		.size	_ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings, 20
 2011              	_ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings:
 2012 0000 00000000 		.word	.LC0
 2013 0004 50000000 		.word	.LC37
 2014 0008 60000000 		.word	.LC38
 2015 000c 6C000000 		.word	.LC39
 2016 0010 80000000 		.word	.LC40
 2017              		.section	.rodata.str1.4,"aMS",%progbits,1
 2018              		.align	2
 2019              	.LC31:
 2020 0000 3B54494D 		.ascii	";TIME\000"
 2020      4500
 2021 0006 0000     		.space	2
 2022              	.LC32:
 2023 0008 20427569 		.ascii	" Build time\000"
 2023      6C642074 
 2023      696D6500 
 2024              	.LC33:
 2025 0014 3B536C69 		.ascii	";Sliced by \000"
 2025      63656420 
 2025      62792000 
 2026              	.LC34:
 2027 0020 3B204B49 		.ascii	"; KISSlicer\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccYkXLWg.s 			page 38


 2027      53536C69 
 2027      63657200 
 2028              	.LC35:
 2029 002c 3B536C69 		.ascii	";Sliced at: \000"
 2029      63656420 
 2029      61743A20 
 2029      00
 2030 0039 000000   		.space	3
 2031              	.LC36:
 2032 003c 3B47656E 		.ascii	";Generated with \000"
 2032      65726174 
 2032      65642077 
 2032      69746820 
 2032      00
 2033 004d 000000   		.space	3
 2034              	.LC37:
 2035 0050 4C617965 		.ascii	"Layer height\000"
 2035      72206865 
 2035      69676874 
 2035      00
 2036 005d 000000   		.space	3
 2037              	.LC38:
 2038 0060 6C617965 		.ascii	"layerHeight\000"
 2038      72486569 
 2038      67687400 
 2039              	.LC39:
 2040 006c 6C617965 		.ascii	"layer_thickness_mm\000"
 2040      725F7468 
 2040      69636B6E 
 2040      6573735F 
 2040      6D6D00
 2041 007f 00       		.space	1
 2042              	.LC40:
 2043 0080 6C617965 		.ascii	"layerThickness\000"
 2043      72546869 
 2043      636B6E65 
 2043      737300
 2044              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
