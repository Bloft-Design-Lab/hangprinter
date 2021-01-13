ARM GAS  /tmp/cc59oe5c.s 			page 1


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
  11              		.file	"FileStore.cpp"
  12              		.section	.text._ZN9FileStoreC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN9FileStoreC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN9FileStoreC2Ev, %function
  21              	_ZN9FileStoreC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 38B5     		push	{r3, r4, r5, lr}
  25 0002 0446     		mov	r4, r0
  26 0004 0025     		movs	r5, #0
  27 0006 3430     		adds	r0, r0, #52
  28 0008 A562     		str	r5, [r4, #40]
  29 000a FFF7FEFF 		bl	_ZN5CRC32C1Ev
  30 000e E562     		str	r5, [r4, #44]
  31 0010 84F83150 		strb	r5, [r4, #49]
  32 0014 84F83050 		strb	r5, [r4, #48]
  33 0018 2046     		mov	r0, r4
  34 001a 38BD     		pop	{r3, r4, r5, pc}
  35              		.size	_ZN9FileStoreC2Ev, .-_ZN9FileStoreC2Ev
  36              		.global	_ZN9FileStoreC1Ev
  37              		.thumb_set _ZN9FileStoreC1Ev,_ZN9FileStoreC2Ev
  38              		.section	.text._ZN9FileStore4InitEv,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	_ZN9FileStore4InitEv
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu softvfp
  46              		.type	_ZN9FileStore4InitEv, %function
  47              	_ZN9FileStore4InitEv:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50              		@ link register save eliminated.
  51 0000 0023     		movs	r3, #0
  52 0002 C362     		str	r3, [r0, #44]
  53 0004 80F83130 		strb	r3, [r0, #49]
  54 0008 80F83030 		strb	r3, [r0, #48]
  55 000c 7047     		bx	lr
  56              		.size	_ZN9FileStore4InitEv, .-_ZN9FileStore4InitEv
  57 000e 00BF     		.section	.text._ZNK9FileStore8IsOpenOnEPK5FATFS,"ax",%progbits
ARM GAS  /tmp/cc59oe5c.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_ZNK9FileStore8IsOpenOnEPK5FATFS
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu softvfp
  65              		.type	_ZNK9FileStore8IsOpenOnEPK5FATFS, %function
  66              	_ZNK9FileStore8IsOpenOnEPK5FATFS:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 C36A     		ldr	r3, [r0, #44]
  71 0002 2BB1     		cbz	r3, .L6
  72 0004 0068     		ldr	r0, [r0]
  73 0006 401A     		subs	r0, r0, r1
  74 0008 B0FA80F0 		clz	r0, r0
  75 000c 4009     		lsrs	r0, r0, #5
  76 000e 7047     		bx	lr
  77              	.L6:
  78 0010 1846     		mov	r0, r3
  79 0012 7047     		bx	lr
  80              		.size	_ZNK9FileStore8IsOpenOnEPK5FATFS, .-_ZNK9FileStore8IsOpenOnEPK5FATFS
  81              		.section	.text._ZN9FileStore4OpenEPKcS1_8OpenMode,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.global	_ZN9FileStore4OpenEPKcS1_8OpenMode
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu softvfp
  89              		.type	_ZN9FileStore4OpenEPKcS1_8OpenMode, %function
  90              	_ZN9FileStore4OpenEPKcS1_8OpenMode:
  91              		@ args = 0, pretend = 0, frame = 216
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  94 0004 9946     		mov	r9, r3
  95 0006 0024     		movs	r4, #0
  96 0008 6525     		movs	r5, #101
  97 000a B9B0     		sub	sp, sp, #228
  98 000c 38AE     		add	r6, sp, #224
  99 000e 09F1FF37 		add	r7, r9, #-1
 100 0012 06F8D04D 		strb	r4, [r6, #-208]!
 101 0016 8046     		mov	r8, r0
 102 0018 FFB2     		uxtb	r7, r7
 103 001a 1EA8     		add	r0, sp, #120
 104 001c 1E96     		str	r6, [sp, #120]
 105 001e 1F95     		str	r5, [sp, #124]
 106 0020 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 107 0024 012F     		cmp	r7, #1
 108 0026 32D9     		bls	.L42
 109              	.L24:
 110 0028 0122     		movs	r2, #1
 111 002a 3146     		mov	r1, r6
 112 002c 4046     		mov	r0, r8
 113 002e FFF7FEFF 		bl	f_open
 114 0032 C8B1     		cbz	r0, .L20
ARM GAS  /tmp/cc59oe5c.s 			page 3


 115 0034 594C     		ldr	r4, .L46
 116              	.L18:
 117 0036 656C     		ldr	r5, [r4, #68]
 118 0038 15F00105 		ands	r5, r5, #1
 119 003c 10D0     		beq	.L36
 120 003e 584B     		ldr	r3, .L46+4
 121 0040 5849     		ldr	r1, .L46+8
 122 0042 2268     		ldr	r2, [r4]
 123 0044 012F     		cmp	r7, #1
 124 0046 8CBF     		ite	hi
 125 0048 1F46     		movhi	r7, r3
 126 004a 0F46     		movls	r7, r1
 127              	.L22:
 128 004c 0190     		str	r0, [sp, #4]
 129 004e 0097     		str	r7, [sp]
 130 0050 1046     		mov	r0, r2
 131 0052 3346     		mov	r3, r6
 132 0054 544A     		ldr	r2, .L46+12
 133 0056 40F2B511 		movw	r1, #437
 134 005a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 135 005e 0025     		movs	r5, #0
 136              	.L36:
 137 0060 2846     		mov	r0, r5
 138 0062 39B0     		add	sp, sp, #228
 139              		@ sp needed
 140 0064 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 141              	.L20:
 142 0068 08F13400 		add	r0, r8, #52
 143 006c FFF7FEFF 		bl	_ZN5CRC325ResetEv
 144 0070 012F     		cmp	r7, #1
 145 0072 8CBF     		ite	hi
 146 0074 4FF00109 		movhi	r9, #1
 147 0078 4FF00209 		movls	r9, #2
 148              	.L23:
 149 007c 0125     		movs	r5, #1
 150 007e 2846     		mov	r0, r5
 151 0080 88F83190 		strb	r9, [r8, #49]
 152 0084 C8F82C50 		str	r5, [r8, #44]
 153 0088 39B0     		add	sp, sp, #228
 154              		@ sp needed
 155 008a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 156              	.L42:
 157 008e 1EAB     		add	r3, sp, #120
 158 0090 02A8     		add	r0, sp, #8
 159 0092 3146     		mov	r1, r6
 160 0094 0293     		str	r3, [sp, #8]
 161 0096 8DF87840 		strb	r4, [sp, #120]
 162 009a 0395     		str	r5, [sp, #12]
 163 009c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 164 00a0 9DF87830 		ldrb	r3, [sp, #120]	@ zero_extendqisi2
 165 00a4 A3F13002 		sub	r2, r3, #48
 166 00a8 092A     		cmp	r2, #9
 167 00aa 06D8     		bhi	.L10
 168 00ac 9DF87920 		ldrb	r2, [sp, #121]	@ zero_extendqisi2
 169 00b0 3A2A     		cmp	r2, #58
 170 00b2 04BF     		itt	eq
 171 00b4 0224     		moveq	r4, #2
ARM GAS  /tmp/cc59oe5c.s 			page 4


 172 00b6 9DF87A30 		ldrbeq	r3, [sp, #122]	@ zero_extendqisi2
 173              	.L10:
 174 00ba 2F2B     		cmp	r3, #47
 175 00bc 08BF     		it	eq
 176 00be 0134     		addeq	r4, r4, #1
 177 00c0 1EAB     		add	r3, sp, #120
 178 00c2 DFF8D8A0 		ldr	r10, .L46
 179 00c6 03EB040B 		add	fp, r3, r4
 180 00ca 02E0     		b	.L16
 181              	.L13:
 182 00cc 0134     		adds	r4, r4, #1
 183 00ce 0BF1010B 		add	fp, fp, #1
 184              	.L16:
 185 00d2 6421     		movs	r1, #100
 186 00d4 1EA8     		add	r0, sp, #120
 187 00d6 FFF7FEFF 		bl	_Z7StrnlenPKcj
 188 00da 8442     		cmp	r4, r0
 189 00dc 17D2     		bcs	.L12
 190 00de 9BF80020 		ldrb	r2, [fp]	@ zero_extendqisi2
 191 00e2 2F2A     		cmp	r2, #47
 192 00e4 F2D1     		bne	.L13
 193 00e6 4FF00003 		mov	r3, #0
 194 00ea 6522     		movs	r2, #101
 195 00ec DAF80010 		ldr	r1, [r10]	@ unaligned
 196 00f0 8BF80030 		strb	r3, [fp]
 197 00f4 D1F86805 		ldr	r0, [r1, #1384]
 198 00f8 1EAB     		add	r3, sp, #120
 199 00fa 02A9     		add	r1, sp, #8
 200 00fc 0293     		str	r3, [sp, #8]
 201 00fe 0392     		str	r2, [sp, #12]
 202 0100 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 203 0104 D0B1     		cbz	r0, .L43
 204              	.L14:
 205 0106 2F22     		movs	r2, #47
 206 0108 8BF80020 		strb	r2, [fp]
 207 010c DEE7     		b	.L13
 208              	.L12:
 209 010e B9F1010F 		cmp	r9, #1
 210 0112 2CD0     		beq	.L44
 211 0114 0023     		movs	r3, #0
 212 0116 B9F1020F 		cmp	r9, #2
 213 011a C8F82830 		str	r3, [r8, #40]
 214 011e 83D1     		bne	.L24
 215 0120 1322     		movs	r2, #19
 216 0122 3146     		mov	r1, r6
 217 0124 4046     		mov	r0, r8
 218 0126 FFF7FEFF 		bl	f_open
 219 012a D8B1     		cbz	r0, .L45
 220 012c 1B4B     		ldr	r3, .L46
 221 012e 5D6C     		ldr	r5, [r3, #68]
 222 0130 15F00105 		ands	r5, r5, #1
 223 0134 94D0     		beq	.L36
 224 0136 1A68     		ldr	r2, [r3]
 225 0138 1A4F     		ldr	r7, .L46+8
 226 013a 87E7     		b	.L22
 227              	.L43:
 228 013c DAF80020 		ldr	r2, [r10]
ARM GAS  /tmp/cc59oe5c.s 			page 5


 229 0140 1EA9     		add	r1, sp, #120
 230 0142 D2F86805 		ldr	r0, [r2, #1384]
 231 0146 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 232 014a 0546     		mov	r5, r0
 233 014c 0028     		cmp	r0, #0
 234 014e DAD1     		bne	.L14
 235 0150 DAF80000 		ldr	r0, [r10]
 236 0154 0096     		str	r6, [sp]
 237 0156 1EAB     		add	r3, sp, #120
 238 0158 144A     		ldr	r2, .L46+16
 239 015a 40F2B511 		movw	r1, #437
 240 015e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 241 0162 7DE7     		b	.L36
 242              	.L45:
 243 0164 08F13400 		add	r0, r8, #52
 244 0168 FFF7FEFF 		bl	_ZN5CRC325ResetEv
 245 016c 86E7     		b	.L23
 246              	.L44:
 247 016e 0B4C     		ldr	r4, .L46
 248 0170 2368     		ldr	r3, [r4]
 249 0172 D3F86805 		ldr	r0, [r3, #1384]
 250 0176 FFF7FEFF 		bl	_ZN11MassStorage19AllocateWriteBufferEv
 251 017a 0A22     		movs	r2, #10
 252 017c C8F82800 		str	r0, [r8, #40]
 253 0180 3146     		mov	r1, r6
 254 0182 4046     		mov	r0, r8
 255 0184 FFF7FEFF 		bl	f_open
 256 0188 0028     		cmp	r0, #0
 257 018a 7FF454AF 		bne	.L18
 258 018e 08F13400 		add	r0, r8, #52
 259 0192 FFF7FEFF 		bl	_ZN5CRC325ResetEv
 260 0196 4FF00209 		mov	r9, #2
 261 019a 6FE7     		b	.L23
 262              	.L47:
 263              		.align	2
 264              	.L46:
 265 019c 00000000 		.word	reprap
 266 01a0 08000000 		.word	.LC1
 267 01a4 00000000 		.word	.LC0
 268 01a8 10000000 		.word	.LC2
 269 01ac 34000000 		.word	.LC3
 270              		.size	_ZN9FileStore4OpenEPKcS1_8OpenMode, .-_ZN9FileStore4OpenEPKcS1_8OpenMode
 271              		.section	.text._ZN9FileStore9DuplicateEv,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	_ZN9FileStore9DuplicateEv
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu softvfp
 279              		.type	_ZN9FileStore9DuplicateEv, %function
 280              	_ZN9FileStore9DuplicateEv:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283              		@ link register save eliminated.
 284 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 285 0004 ABB1     		cbz	r3, .L50
ARM GAS  /tmp/cc59oe5c.s 			page 6


 286 0006 022B     		cmp	r3, #2
 287 0008 00D9     		bls	.L54
 288              	.L48:
 289 000a 7047     		bx	lr
 290              	.L54:
 291              		.syntax unified
 292              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 293 000c EFF31083 		MRS r3, primask
 294              	@ 0 "" 2
 295              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 296 0010 72B6     		cpsid i
 297              	@ 0 "" 2
 298              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 299 0012 BFF35F8F 		dmb
 300              	@ 0 "" 2
 301              		.thumb
 302              		.syntax unified
 303 0016 0022     		movs	r2, #0
 304 0018 0949     		ldr	r1, .L55
 305 001a 0A70     		strb	r2, [r1]
 306 001c C26A     		ldr	r2, [r0, #44]
 307 001e 0132     		adds	r2, r2, #1
 308 0020 C262     		str	r2, [r0, #44]
 309 0022 002B     		cmp	r3, #0
 310 0024 F1D1     		bne	.L48
 311 0026 0123     		movs	r3, #1
 312 0028 0B70     		strb	r3, [r1]
 313              		.syntax unified
 314              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 315 002a BFF35F8F 		dmb
 316              	@ 0 "" 2
 317              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 318 002e 62B6     		cpsie i
 319              	@ 0 "" 2
 320              		.thumb
 321              		.syntax unified
 322 0030 7047     		bx	lr
 323              	.L50:
 324 0032 7823     		movs	r3, #120
 325 0034 034A     		ldr	r2, .L55+4
 326 0036 0449     		ldr	r1, .L55+8
 327 0038 0448     		ldr	r0, .L55+12
 328 003a FFF7FEBF 		b	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 329              	.L56:
 330 003e 00BF     		.align	2
 331              	.L55:
 332 0040 00000000 		.word	g_interrupt_enabled
 333 0044 00000000 		.word	.LANCHOR0
 334 0048 00000000 		.word	.LC4
 335 004c 00000000 		.word	reprap
 336              		.size	_ZN9FileStore9DuplicateEv, .-_ZN9FileStore9DuplicateEv
 337              		.section	.text._ZN9FileStore4SeekEm,"ax",%progbits
 338              		.align	1
 339              		.p2align 2,,3
 340              		.global	_ZN9FileStore4SeekEm
 341              		.syntax unified
 342              		.thumb
ARM GAS  /tmp/cc59oe5c.s 			page 7


 343              		.thumb_func
 344              		.fpu softvfp
 345              		.type	_ZN9FileStore4SeekEm, %function
 346              	_ZN9FileStore4SeekEm:
 347              		@ args = 0, pretend = 0, frame = 0
 348              		@ frame_needed = 0, uses_anonymous_args = 0
 349 0000 10B5     		push	{r4, lr}
 350 0002 90F83140 		ldrb	r4, [r0, #49]	@ zero_extendqisi2
 351 0006 4CB1     		cbz	r4, .L59
 352 0008 022C     		cmp	r4, #2
 353 000a 01D9     		bls	.L65
 354 000c 0020     		movs	r0, #0
 355 000e 10BD     		pop	{r4, pc}
 356              	.L65:
 357 0010 FFF7FEFF 		bl	f_lseek
 358 0014 B0FA80F0 		clz	r0, r0
 359 0018 4009     		lsrs	r0, r0, #5
 360 001a 10BD     		pop	{r4, pc}
 361              	.L59:
 362 001c D923     		movs	r3, #217
 363 001e 034A     		ldr	r2, .L66
 364 0020 0349     		ldr	r1, .L66+4
 365 0022 0448     		ldr	r0, .L66+8
 366 0024 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 367 0028 2046     		mov	r0, r4
 368 002a 10BD     		pop	{r4, pc}
 369              	.L67:
 370              		.align	2
 371              	.L66:
 372 002c 00000000 		.word	.LANCHOR1
 373 0030 00000000 		.word	.LC4
 374 0034 00000000 		.word	reprap
 375              		.size	_ZN9FileStore4SeekEm, .-_ZN9FileStore4SeekEm
 376              		.section	.text._ZNK9FileStore8PositionEv,"ax",%progbits
 377              		.align	1
 378              		.p2align 2,,3
 379              		.global	_ZNK9FileStore8PositionEv
 380              		.syntax unified
 381              		.thumb
 382              		.thumb_func
 383              		.fpu softvfp
 384              		.type	_ZNK9FileStore8PositionEv, %function
 385              	_ZNK9FileStore8PositionEv:
 386              		@ args = 0, pretend = 0, frame = 0
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388              		@ link register save eliminated.
 389 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 390 0004 013B     		subs	r3, r3, #1
 391 0006 012B     		cmp	r3, #1
 392 0008 94BF     		ite	ls
 393 000a 8068     		ldrls	r0, [r0, #8]
 394 000c 0020     		movhi	r0, #0
 395 000e 7047     		bx	lr
 396              		.size	_ZNK9FileStore8PositionEv, .-_ZNK9FileStore8PositionEv
 397              		.section	.text._ZNK9FileStore11ClusterSizeEv,"ax",%progbits
 398              		.align	1
 399              		.p2align 2,,3
ARM GAS  /tmp/cc59oe5c.s 			page 8


 400              		.global	_ZNK9FileStore11ClusterSizeEv
 401              		.syntax unified
 402              		.thumb
 403              		.thumb_func
 404              		.fpu softvfp
 405              		.type	_ZNK9FileStore11ClusterSizeEv, %function
 406              	_ZNK9FileStore11ClusterSizeEv:
 407              		@ args = 0, pretend = 0, frame = 0
 408              		@ frame_needed = 0, uses_anonymous_args = 0
 409              		@ link register save eliminated.
 410 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 411 0004 013B     		subs	r3, r3, #1
 412 0006 012B     		cmp	r3, #1
 413 0008 9DBF     		ittte	ls
 414 000a 0368     		ldrls	r3, [r0]
 415 000c 9878     		ldrbls	r0, [r3, #2]	@ zero_extendqisi2
 416 000e 4002     		lslls	r0, r0, #9
 417 0010 0120     		movhi	r0, #1
 418 0012 7047     		bx	lr
 419              		.size	_ZNK9FileStore11ClusterSizeEv, .-_ZNK9FileStore11ClusterSizeEv
 420              		.section	.text._ZNK9FileStore6LengthEv,"ax",%progbits
 421              		.align	1
 422              		.p2align 2,,3
 423              		.global	_ZNK9FileStore6LengthEv
 424              		.syntax unified
 425              		.thumb
 426              		.thumb_func
 427              		.fpu softvfp
 428              		.type	_ZNK9FileStore6LengthEv, %function
 429              	_ZNK9FileStore6LengthEv:
 430              		@ args = 0, pretend = 0, frame = 0
 431              		@ frame_needed = 0, uses_anonymous_args = 0
 432 0000 08B5     		push	{r3, lr}
 433 0002 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 434 0006 012B     		cmp	r3, #1
 435 0008 12D0     		beq	.L76
 436 000a 09D3     		bcc	.L77
 437 000c 022B     		cmp	r3, #2
 438 000e 05D1     		bne	.L84
 439 0010 836A     		ldr	r3, [r0, #40]
 440 0012 C068     		ldr	r0, [r0, #12]
 441 0014 73B1     		cbz	r3, .L79
 442 0016 5B68     		ldr	r3, [r3, #4]
 443 0018 1844     		add	r0, r0, r3
 444 001a 08BD     		pop	{r3, pc}
 445              	.L84:
 446 001c 0020     		movs	r0, #0
 447 001e 08BD     		pop	{r3, pc}
 448              	.L77:
 449 0020 FC23     		movs	r3, #252
 450 0022 054A     		ldr	r2, .L85
 451 0024 0549     		ldr	r1, .L85+4
 452 0026 0648     		ldr	r0, .L85+8
 453 0028 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 454 002c 0020     		movs	r0, #0
 455 002e 08BD     		pop	{r3, pc}
 456              	.L76:
ARM GAS  /tmp/cc59oe5c.s 			page 9


 457 0030 C068     		ldr	r0, [r0, #12]
 458 0032 08BD     		pop	{r3, pc}
 459              	.L79:
 460 0034 08BD     		pop	{r3, pc}
 461              	.L86:
 462 0036 00BF     		.align	2
 463              	.L85:
 464 0038 00000000 		.word	.LANCHOR2
 465 003c 00000000 		.word	.LC4
 466 0040 00000000 		.word	reprap
 467              		.size	_ZNK9FileStore6LengthEv, .-_ZNK9FileStore6LengthEv
 468              		.section	.text._ZN9FileStore4ReadEPcj,"ax",%progbits
 469              		.align	1
 470              		.p2align 2,,3
 471              		.global	_ZN9FileStore4ReadEPcj
 472              		.syntax unified
 473              		.thumb
 474              		.thumb_func
 475              		.fpu softvfp
 476              		.type	_ZN9FileStore4ReadEPcj, %function
 477              	_ZN9FileStore4ReadEPcj:
 478              		@ args = 0, pretend = 0, frame = 8
 479              		@ frame_needed = 0, uses_anonymous_args = 0
 480 0000 00B5     		push	{lr}
 481 0002 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 482 0006 83B0     		sub	sp, sp, #12
 483 0008 73B1     		cbz	r3, .L89
 484 000a 022B     		cmp	r3, #2
 485 000c 07D8     		bhi	.L93
 486 000e 01AB     		add	r3, sp, #4
 487 0010 FFF7FEFF 		bl	f_read
 488 0014 A0B9     		cbnz	r0, .L97
 489 0016 0198     		ldr	r0, [sp, #4]
 490              	.L87:
 491 0018 03B0     		add	sp, sp, #12
 492              		@ sp needed
 493 001a 5DF804FB 		ldr	pc, [sp], #4
 494              	.L93:
 495 001e 4FF0FF30 		mov	r0, #-1
 496 0022 03B0     		add	sp, sp, #12
 497              		@ sp needed
 498 0024 5DF804FB 		ldr	pc, [sp], #4
 499              	.L89:
 500 0028 40F21713 		movw	r3, #279
 501 002c 0A4A     		ldr	r2, .L98
 502 002e 0B49     		ldr	r1, .L98+4
 503 0030 0B48     		ldr	r0, .L98+8
 504 0032 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 505 0036 4FF0FF30 		mov	r0, #-1
 506 003a 03B0     		add	sp, sp, #12
 507              		@ sp needed
 508 003c 5DF804FB 		ldr	pc, [sp], #4
 509              	.L97:
 510 0040 074A     		ldr	r2, .L98+8
 511 0042 0346     		mov	r3, r0
 512 0044 40F2B511 		movw	r1, #437
 513 0048 1068     		ldr	r0, [r2]
ARM GAS  /tmp/cc59oe5c.s 			page 10


 514 004a 064A     		ldr	r2, .L98+12
 515 004c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 516 0050 4FF0FF30 		mov	r0, #-1
 517 0054 E0E7     		b	.L87
 518              	.L99:
 519 0056 00BF     		.align	2
 520              	.L98:
 521 0058 00000000 		.word	.LANCHOR3
 522 005c 00000000 		.word	.LC4
 523 0060 00000000 		.word	reprap
 524 0064 00000000 		.word	.LC5
 525              		.size	_ZN9FileStore4ReadEPcj, .-_ZN9FileStore4ReadEPcj
 526              		.section	.text._ZN9FileStore4ReadERc,"ax",%progbits
 527              		.align	1
 528              		.p2align 2,,3
 529              		.global	_ZN9FileStore4ReadERc
 530              		.syntax unified
 531              		.thumb
 532              		.thumb_func
 533              		.fpu softvfp
 534              		.type	_ZN9FileStore4ReadERc, %function
 535              	_ZN9FileStore4ReadERc:
 536              		@ args = 0, pretend = 0, frame = 0
 537              		@ frame_needed = 0, uses_anonymous_args = 0
 538 0000 08B5     		push	{r3, lr}
 539 0002 0122     		movs	r2, #1
 540 0004 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 541 0008 0030     		adds	r0, r0, #0
 542 000a 18BF     		it	ne
 543 000c 0120     		movne	r0, #1
 544 000e 08BD     		pop	{r3, pc}
 545              		.size	_ZN9FileStore4ReadERc, .-_ZN9FileStore4ReadERc
 546              		.section	.text._ZN9FileStore8ReadLineEPcj,"ax",%progbits
 547              		.align	1
 548              		.p2align 2,,3
 549              		.global	_ZN9FileStore8ReadLineEPcj
 550              		.syntax unified
 551              		.thumb
 552              		.thumb_func
 553              		.fpu softvfp
 554              		.type	_ZN9FileStore8ReadLineEPcj, %function
 555              	_ZN9FileStore8ReadLineEPcj:
 556              		@ args = 0, pretend = 0, frame = 0
 557              		@ frame_needed = 0, uses_anonymous_args = 0
 558 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 559 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 560 0008 013B     		subs	r3, r3, #1
 561 000a 012B     		cmp	r3, #1
 562 000c 94BF     		ite	ls
 563 000e 8768     		ldrls	r7, [r0, #8]
 564 0010 0027     		movhi	r7, #0
 565 0012 0646     		mov	r6, r0
 566 0014 0D46     		mov	r5, r1
 567 0016 9046     		mov	r8, r2
 568 0018 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 569 001c 0028     		cmp	r0, #0
 570 001e 42DB     		blt	.L120
ARM GAS  /tmp/cc59oe5c.s 			page 11


 571 0020 4AD0     		beq	.L121
 572 0022 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 573 0024 0D2B     		cmp	r3, #13
 574 0026 4BD0     		beq	.L106
 575 0028 0A2B     		cmp	r3, #10
 576 002a 47D0     		beq	.L129
 577 002c AE46     		mov	lr, r5
 578 002e 0022     		movs	r2, #0
 579 0030 07E0     		b	.L110
 580              	.L113:
 581 0032 1EF8013F 		ldrb	r3, [lr, #1]!	@ zero_extendqisi2
 582 0036 2146     		mov	r1, r4
 583 0038 0D2B     		cmp	r3, #13
 584 003a 10D0     		beq	.L109
 585 003c 0A2B     		cmp	r3, #10
 586 003e 1BD0     		beq	.L130
 587 0040 2246     		mov	r2, r4
 588              	.L110:
 589 0042 541C     		adds	r4, r2, #1
 590 0044 A042     		cmp	r0, r4
 591 0046 F4D1     		bne	.L113
 592 0048 0232     		adds	r2, r2, #2
 593 004a 9042     		cmp	r0, r2
 594 004c 2FDC     		bgt	.L131
 595              	.L105:
 596 004e A045     		cmp	r8, r4
 597 0050 23D0     		beq	.L132
 598              	.L127:
 599 0052 2346     		mov	r3, r4
 600              	.L114:
 601 0054 0022     		movs	r2, #0
 602 0056 EA54     		strb	r2, [r5, r3]
 603 0058 2046     		mov	r0, r4
 604 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 605              	.L109:
 606 005e 0232     		adds	r2, r2, #2
 607 0060 9042     		cmp	r0, r2
 608 0062 0FDC     		bgt	.L117
 609              	.L112:
 610 0064 A042     		cmp	r0, r4
 611 0066 F2DD     		ble	.L105
 612              	.L118:
 613 0068 A046     		mov	r8, r4
 614              	.L116:
 615 006a 791C     		adds	r1, r7, #1
 616 006c 4144     		add	r1, r1, r8
 617 006e 3046     		mov	r0, r6
 618 0070 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 619 0074 4346     		mov	r3, r8
 620 0076 EDE7     		b	.L114
 621              	.L130:
 622 0078 0232     		adds	r2, r2, #2
 623 007a 9042     		cmp	r0, r2
 624 007c F4DC     		bgt	.L118
 625 007e F1E7     		b	.L112
 626              	.L123:
 627 0080 0024     		movs	r4, #0
ARM GAS  /tmp/cc59oe5c.s 			page 12


 628 0082 2146     		mov	r1, r4
 629              	.L117:
 630 0084 6B18     		adds	r3, r5, r1
 631 0086 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 632 0088 0A2B     		cmp	r3, #10
 633 008a EBD1     		bne	.L112
 634 008c 0237     		adds	r7, r7, #2
 635 008e 3944     		add	r1, r1, r7
 636 0090 3046     		mov	r0, r6
 637 0092 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 638 0096 2346     		mov	r3, r4
 639 0098 DCE7     		b	.L114
 640              	.L132:
 641 009a 013C     		subs	r4, r4, #1
 642 009c E119     		adds	r1, r4, r7
 643 009e 3046     		mov	r0, r6
 644 00a0 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 645 00a4 D5E7     		b	.L127
 646              	.L120:
 647 00a6 0446     		mov	r4, r0
 648 00a8 2046     		mov	r0, r4
 649 00aa BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 650              	.L131:
 651 00ae 2B5C     		ldrb	r3, [r5, r0]	@ zero_extendqisi2
 652 00b0 0146     		mov	r1, r0
 653 00b2 0D2B     		cmp	r3, #13
 654 00b4 D6D1     		bne	.L112
 655 00b6 E5E7     		b	.L117
 656              	.L121:
 657 00b8 0446     		mov	r4, r0
 658 00ba C8E7     		b	.L105
 659              	.L129:
 660 00bc 0024     		movs	r4, #0
 661 00be D3E7     		b	.L118
 662              	.L106:
 663 00c0 0128     		cmp	r0, #1
 664 00c2 DDD1     		bne	.L123
 665 00c4 4FF00008 		mov	r8, #0
 666 00c8 4446     		mov	r4, r8
 667 00ca CEE7     		b	.L116
 668              		.size	_ZN9FileStore8ReadLineEPcj, .-_ZN9FileStore8ReadLineEPcj
 669              		.section	.text._ZN9FileStore5StoreEPKcjPj,"ax",%progbits
 670              		.align	1
 671              		.p2align 2,,3
 672              		.global	_ZN9FileStore5StoreEPKcjPj
 673              		.syntax unified
 674              		.thumb
 675              		.thumb_func
 676              		.fpu softvfp
 677              		.type	_ZN9FileStore5StoreEPKcjPj, %function
 678              	_ZN9FileStore5StoreEPKcjPj:
 679              		@ args = 0, pretend = 0, frame = 0
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 682 0004 0546     		mov	r5, r0
 683 0006 9946     		mov	r9, r3
 684 0008 0F46     		mov	r7, r1
ARM GAS  /tmp/cc59oe5c.s 			page 13


 685 000a 9046     		mov	r8, r2
 686 000c 094C     		ldr	r4, .L136
 687 000e 3430     		adds	r0, r0, #52
 688 0010 2669     		ldr	r6, [r4, #16]
 689 0012 FFF7FEFF 		bl	_ZN5CRC326UpdateEPKcj
 690 0016 4B46     		mov	r3, r9
 691 0018 4246     		mov	r2, r8
 692 001a 3946     		mov	r1, r7
 693 001c 2846     		mov	r0, r5
 694 001e FFF7FEFF 		bl	f_write
 695 0022 054A     		ldr	r2, .L136+4
 696 0024 2369     		ldr	r3, [r4, #16]
 697 0026 1168     		ldr	r1, [r2]
 698 0028 9B1B     		subs	r3, r3, r6
 699 002a 8B42     		cmp	r3, r1
 700 002c 88BF     		it	hi
 701 002e 1360     		strhi	r3, [r2]
 702 0030 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 703              	.L137:
 704              		.align	2
 705              	.L136:
 706 0034 00400840 		.word	1074282496
 707 0038 00000000 		.word	.LANCHOR4
 708              		.size	_ZN9FileStore5StoreEPKcjPj, .-_ZN9FileStore5StoreEPKcjPj
 709              		.section	.text._ZN9FileStore5WriteEPKcj,"ax",%progbits
 710              		.align	1
 711              		.p2align 2,,3
 712              		.global	_ZN9FileStore5WriteEPKcj
 713              		.syntax unified
 714              		.thumb
 715              		.thumb_func
 716              		.fpu softvfp
 717              		.type	_ZN9FileStore5WriteEPKcj, %function
 718              	_ZN9FileStore5WriteEPKcj:
 719              		@ args = 0, pretend = 0, frame = 8
 720              		@ frame_needed = 0, uses_anonymous_args = 0
 721 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 722 0004 90F83140 		ldrb	r4, [r0, #49]	@ zero_extendqisi2
 723 0008 83B0     		sub	sp, sp, #12
 724 000a 002C     		cmp	r4, #0
 725 000c 50D0     		beq	.L140
 726 000e 022C     		cmp	r4, #2
 727 0010 4AD8     		bhi	.L151
 728 0012 0023     		movs	r3, #0
 729 0014 D0F82890 		ldr	r9, [r0, #40]
 730 0018 0646     		mov	r6, r0
 731 001a 1546     		mov	r5, r2
 732 001c 0093     		str	r3, [sp]
 733 001e B9F1000F 		cmp	r9, #0
 734 0022 50D0     		beq	.L142
 735 0024 0F46     		mov	r7, r1
 736 0026 9846     		mov	r8, r3
 737 0028 1946     		mov	r1, r3
 738 002a 05E0     		b	.L143
 739              	.L145:
 740 002c 0099     		ldr	r1, [sp]
 741 002e 2144     		add	r1, r1, r4
ARM GAS  /tmp/cc59oe5c.s 			page 14


 742 0030 0091     		str	r1, [sp]
 743              	.L147:
 744 0032 8D42     		cmp	r5, r1
 745 0034 50D0     		beq	.L153
 746 0036 8146     		mov	r9, r0
 747              	.L143:
 748 0038 D9F80430 		ldr	r3, [r9, #4]
 749 003c 6C1A     		subs	r4, r5, r1
 750 003e C3F58052 		rsb	r2, r3, #4096
 751 0042 9442     		cmp	r4, r2
 752 0044 28BF     		it	cs
 753 0046 1446     		movcs	r4, r2
 754 0048 09F10800 		add	r0, r9, #8
 755 004c 1844     		add	r0, r0, r3
 756 004e 2246     		mov	r2, r4
 757 0050 3944     		add	r1, r1, r7
 758 0052 FFF7FEFF 		bl	memcpy
 759 0056 D9F80430 		ldr	r3, [r9, #4]
 760 005a B06A     		ldr	r0, [r6, #40]
 761 005c 2344     		add	r3, r3, r4
 762 005e C9F80430 		str	r3, [r9, #4]
 763 0062 4268     		ldr	r2, [r0, #4]
 764 0064 B2F5805F 		cmp	r2, #4096
 765 0068 E0D1     		bne	.L145
 766 006a 00F10801 		add	r1, r0, #8
 767 006e 01AB     		add	r3, sp, #4
 768 0070 3046     		mov	r0, r6
 769 0072 FFF7FEFF 		bl	_ZN9FileStore5StoreEPKcjPj
 770 0076 0246     		mov	r2, r0
 771 0078 0199     		ldr	r1, [sp, #4]
 772 007a B06A     		ldr	r0, [r6, #40]
 773 007c B1F5805F 		cmp	r1, #4096
 774 0080 1346     		mov	r3, r2
 775 0082 C0F80480 		str	r8, [r0, #4]
 776 0086 22D1     		bne	.L144
 777 0088 0099     		ldr	r1, [sp]
 778 008a 2144     		add	r1, r1, r4
 779 008c 0091     		str	r1, [sp]
 780 008e 002A     		cmp	r2, #0
 781 0090 CFD0     		beq	.L147
 782              	.L148:
 783 0092 134A     		ldr	r2, .L160
 784 0094 40F2B511 		movw	r1, #437
 785 0098 1068     		ldr	r0, [r2]
 786 009a 124A     		ldr	r2, .L160+4
 787 009c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 788 00a0 0020     		movs	r0, #0
 789 00a2 03B0     		add	sp, sp, #12
 790              		@ sp needed
 791 00a4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 792              	.L151:
 793 00a8 0020     		movs	r0, #0
 794 00aa 03B0     		add	sp, sp, #12
 795              		@ sp needed
 796 00ac BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 797              	.L140:
 798 00b0 40F26B13 		movw	r3, #363
ARM GAS  /tmp/cc59oe5c.s 			page 15


 799 00b4 0C4A     		ldr	r2, .L160+8
 800 00b6 0D49     		ldr	r1, .L160+12
 801 00b8 0948     		ldr	r0, .L160
 802 00ba FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 803 00be 2046     		mov	r0, r4
 804 00c0 03B0     		add	sp, sp, #12
 805              		@ sp needed
 806 00c2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 807              	.L142:
 808 00c6 6B46     		mov	r3, sp
 809 00c8 FFF7FEFF 		bl	_ZN9FileStore5StoreEPKcjPj
 810 00cc 0346     		mov	r3, r0
 811              	.L144:
 812 00ce 002B     		cmp	r3, #0
 813 00d0 DFD1     		bne	.L148
 814 00d2 009A     		ldr	r2, [sp]
 815 00d4 9542     		cmp	r5, r2
 816 00d6 DCD1     		bne	.L148
 817              	.L153:
 818 00d8 0120     		movs	r0, #1
 819 00da 03B0     		add	sp, sp, #12
 820              		@ sp needed
 821 00dc BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 822              	.L161:
 823              		.align	2
 824              	.L160:
 825 00e0 00000000 		.word	reprap
 826 00e4 00000000 		.word	.LC6
 827 00e8 00000000 		.word	.LANCHOR5
 828 00ec 00000000 		.word	.LC4
 829              		.size	_ZN9FileStore5WriteEPKcj, .-_ZN9FileStore5WriteEPKcj
 830              		.section	.text._ZN9FileStore5WriteEc,"ax",%progbits
 831              		.align	1
 832              		.p2align 2,,3
 833              		.global	_ZN9FileStore5WriteEc
 834              		.syntax unified
 835              		.thumb
 836              		.thumb_func
 837              		.fpu softvfp
 838              		.type	_ZN9FileStore5WriteEc, %function
 839              	_ZN9FileStore5WriteEc:
 840              		@ args = 0, pretend = 0, frame = 8
 841              		@ frame_needed = 0, uses_anonymous_args = 0
 842 0000 00B5     		push	{lr}
 843 0002 83B0     		sub	sp, sp, #12
 844 0004 02AB     		add	r3, sp, #8
 845 0006 03F8011D 		strb	r1, [r3, #-1]!
 846 000a 1946     		mov	r1, r3
 847 000c 0122     		movs	r2, #1
 848 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 849 0012 03B0     		add	sp, sp, #12
 850              		@ sp needed
 851 0014 5DF804FB 		ldr	pc, [sp], #4
 852              		.size	_ZN9FileStore5WriteEc, .-_ZN9FileStore5WriteEc
 853              		.section	.text._ZN9FileStore5WriteEPKc,"ax",%progbits
 854              		.align	1
 855              		.p2align 2,,3
ARM GAS  /tmp/cc59oe5c.s 			page 16


 856              		.global	_ZN9FileStore5WriteEPKc
 857              		.syntax unified
 858              		.thumb
 859              		.thumb_func
 860              		.fpu softvfp
 861              		.type	_ZN9FileStore5WriteEPKc, %function
 862              	_ZN9FileStore5WriteEPKc:
 863              		@ args = 0, pretend = 0, frame = 0
 864              		@ frame_needed = 0, uses_anonymous_args = 0
 865 0000 38B5     		push	{r3, r4, r5, lr}
 866 0002 0546     		mov	r5, r0
 867 0004 0846     		mov	r0, r1
 868 0006 0C46     		mov	r4, r1
 869 0008 FFF7FEFF 		bl	strlen
 870 000c 2146     		mov	r1, r4
 871 000e 0246     		mov	r2, r0
 872 0010 2846     		mov	r0, r5
 873 0012 BDE83840 		pop	{r3, r4, r5, lr}
 874 0016 FFF7FEBF 		b	_ZN9FileStore5WriteEPKcj
 875              		.size	_ZN9FileStore5WriteEPKc, .-_ZN9FileStore5WriteEPKc
 876 001a 00BF     		.section	.text._ZN9FileStore5FlushEv,"ax",%progbits
 877              		.align	1
 878              		.p2align 2,,3
 879              		.global	_ZN9FileStore5FlushEv
 880              		.syntax unified
 881              		.thumb
 882              		.thumb_func
 883              		.fpu softvfp
 884              		.type	_ZN9FileStore5FlushEv, %function
 885              	_ZN9FileStore5FlushEv:
 886              		@ args = 0, pretend = 0, frame = 8
 887              		@ frame_needed = 0, uses_anonymous_args = 0
 888 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 889 0004 012B     		cmp	r3, #1
 890 0006 32D0     		beq	.L174
 891 0008 30B5     		push	{r4, r5, lr}
 892 000a 83B0     		sub	sp, sp, #12
 893 000c 25D3     		bcc	.L169
 894 000e 022B     		cmp	r3, #2
 895 0010 20D1     		bne	.L185
 896 0012 816A     		ldr	r1, [r0, #40]
 897 0014 0446     		mov	r4, r0
 898 0016 09B1     		cbz	r1, .L171
 899 0018 4D68     		ldr	r5, [r1, #4]
 900 001a 3DB9     		cbnz	r5, .L186
 901              	.L171:
 902 001c 2046     		mov	r0, r4
 903 001e FFF7FEFF 		bl	f_sync
 904 0022 B0FA80F0 		clz	r0, r0
 905 0026 4009     		lsrs	r0, r0, #5
 906 0028 03B0     		add	sp, sp, #12
 907              		@ sp needed
 908 002a 30BD     		pop	{r4, r5, pc}
 909              	.L186:
 910 002c 01AB     		add	r3, sp, #4
 911 002e 2A46     		mov	r2, r5
 912 0030 0831     		adds	r1, r1, #8
ARM GAS  /tmp/cc59oe5c.s 			page 17


 913 0032 FFF7FEFF 		bl	_ZN9FileStore5StoreEPKcjPj
 914 0036 0022     		movs	r2, #0
 915 0038 A36A     		ldr	r3, [r4, #40]
 916 003a 5A60     		str	r2, [r3, #4]
 917 003c 10B9     		cbnz	r0, .L172
 918 003e 019B     		ldr	r3, [sp, #4]
 919 0040 9D42     		cmp	r5, r3
 920 0042 EBD0     		beq	.L171
 921              	.L172:
 922 0044 0B4A     		ldr	r2, .L187
 923 0046 0346     		mov	r3, r0
 924 0048 40F2B511 		movw	r1, #437
 925 004c 1068     		ldr	r0, [r2]
 926 004e 0A4A     		ldr	r2, .L187+4
 927 0050 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 928              	.L185:
 929 0054 0020     		movs	r0, #0
 930 0056 03B0     		add	sp, sp, #12
 931              		@ sp needed
 932 0058 30BD     		pop	{r4, r5, pc}
 933              	.L169:
 934 005a 40F2A113 		movw	r3, #417
 935 005e 074A     		ldr	r2, .L187+8
 936 0060 0749     		ldr	r1, .L187+12
 937 0062 0448     		ldr	r0, .L187
 938 0064 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 939 0068 0020     		movs	r0, #0
 940 006a 03B0     		add	sp, sp, #12
 941              		@ sp needed
 942 006c 30BD     		pop	{r4, r5, pc}
 943              	.L174:
 944 006e 1846     		mov	r0, r3
 945 0070 7047     		bx	lr
 946              	.L188:
 947 0072 00BF     		.align	2
 948              	.L187:
 949 0074 00000000 		.word	reprap
 950 0078 00000000 		.word	.LC7
 951 007c 00000000 		.word	.LANCHOR6
 952 0080 00000000 		.word	.LC4
 953              		.size	_ZN9FileStore5FlushEv, .-_ZN9FileStore5FlushEv
 954              		.section	.text._ZN9FileStore10ForceCloseEv,"ax",%progbits
 955              		.align	1
 956              		.p2align 2,,3
 957              		.global	_ZN9FileStore10ForceCloseEv
 958              		.syntax unified
 959              		.thumb
 960              		.thumb_func
 961              		.fpu softvfp
 962              		.type	_ZN9FileStore10ForceCloseEv, %function
 963              	_ZN9FileStore10ForceCloseEv:
 964              		@ args = 0, pretend = 0, frame = 0
 965              		@ frame_needed = 0, uses_anonymous_args = 0
 966 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 967 0004 70B5     		push	{r4, r5, r6, lr}
 968 0006 022B     		cmp	r3, #2
 969 0008 0446     		mov	r4, r0
ARM GAS  /tmp/cc59oe5c.s 			page 18


 970 000a 23D0     		beq	.L207
 971 000c 866A     		ldr	r6, [r0, #40]
 972 000e AEB1     		cbz	r6, .L208
 973 0010 0125     		movs	r5, #1
 974              	.L194:
 975 0012 144B     		ldr	r3, .L209
 976 0014 3146     		mov	r1, r6
 977 0016 1B68     		ldr	r3, [r3]
 978 0018 D3F86805 		ldr	r0, [r3, #1384]
 979 001c FFF7FEFF 		bl	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer
 980 0020 0023     		movs	r3, #0
 981 0022 A362     		str	r3, [r4, #40]
 982              	.L191:
 983 0024 2046     		mov	r0, r4
 984 0026 FFF7FEFF 		bl	f_close
 985 002a 0023     		movs	r3, #0
 986 002c 84F83030 		strb	r3, [r4, #48]
 987 0030 84F83130 		strb	r3, [r4, #49]
 988 0034 E362     		str	r3, [r4, #44]
 989 0036 45B9     		cbnz	r5, .L193
 990 0038 2846     		mov	r0, r5
 991 003a 70BD     		pop	{r4, r5, r6, pc}
 992              	.L208:
 993 003c FFF7FEFF 		bl	f_close
 994 0040 84F83060 		strb	r6, [r4, #48]
 995 0044 84F83160 		strb	r6, [r4, #49]
 996 0048 E662     		str	r6, [r4, #44]
 997              	.L193:
 998 004a B0FA80F5 		clz	r5, r0
 999 004e 6D09     		lsrs	r5, r5, #5
 1000 0050 2846     		mov	r0, r5
 1001 0052 70BD     		pop	{r4, r5, r6, pc}
 1002              	.L207:
 1003 0054 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 1004 0058 A66A     		ldr	r6, [r4, #40]
 1005 005a 0546     		mov	r5, r0
 1006 005c 002E     		cmp	r6, #0
 1007 005e D8D1     		bne	.L194
 1008 0060 E0E7     		b	.L191
 1009              	.L210:
 1010 0062 00BF     		.align	2
 1011              	.L209:
 1012 0064 00000000 		.word	reprap
 1013              		.size	_ZN9FileStore10ForceCloseEv, .-_ZN9FileStore10ForceCloseEv
 1014              		.section	.text._ZN9FileStore10InvalidateEPK5FATFSb,"ax",%progbits
 1015              		.align	1
 1016              		.p2align 2,,3
 1017              		.global	_ZN9FileStore10InvalidateEPK5FATFSb
 1018              		.syntax unified
 1019              		.thumb
 1020              		.thumb_func
 1021              		.fpu softvfp
 1022              		.type	_ZN9FileStore10InvalidateEPK5FATFSb, %function
 1023              	_ZN9FileStore10InvalidateEPK5FATFSb:
 1024              		@ args = 0, pretend = 0, frame = 0
 1025              		@ frame_needed = 0, uses_anonymous_args = 0
 1026 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  /tmp/cc59oe5c.s 			page 19


 1027 0002 0368     		ldr	r3, [r0]
 1028 0004 8B42     		cmp	r3, r1
 1029 0006 01D0     		beq	.L220
 1030 0008 0020     		movs	r0, #0
 1031 000a 38BD     		pop	{r3, r4, r5, pc}
 1032              	.L220:
 1033 000c 0446     		mov	r4, r0
 1034 000e 1546     		mov	r5, r2
 1035 0010 72B9     		cbnz	r2, .L221
 1036 0012 816A     		ldr	r1, [r0, #40]
 1037 0014 2260     		str	r2, [r4]
 1038 0016 31B1     		cbz	r1, .L214
 1039 0018 074B     		ldr	r3, .L222
 1040 001a 1B68     		ldr	r3, [r3]
 1041 001c D3F86805 		ldr	r0, [r3, #1384]
 1042 0020 FFF7FEFF 		bl	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer
 1043 0024 A562     		str	r5, [r4, #40]
 1044              	.L214:
 1045 0026 0323     		movs	r3, #3
 1046 0028 0120     		movs	r0, #1
 1047 002a 84F83130 		strb	r3, [r4, #49]
 1048 002e 38BD     		pop	{r3, r4, r5, pc}
 1049              	.L221:
 1050 0030 FFF7FEFF 		bl	_ZN9FileStore10ForceCloseEv
 1051 0034 F7E7     		b	.L214
 1052              	.L223:
 1053 0036 00BF     		.align	2
 1054              	.L222:
 1055 0038 00000000 		.word	reprap
 1056              		.size	_ZN9FileStore10InvalidateEPK5FATFSb, .-_ZN9FileStore10InvalidateEPK5FATFSb
 1057              		.section	.text._ZN9FileStore5CloseEv,"ax",%progbits
 1058              		.align	1
 1059              		.p2align 2,,3
 1060              		.global	_ZN9FileStore5CloseEv
 1061              		.syntax unified
 1062              		.thumb
 1063              		.thumb_func
 1064              		.fpu softvfp
 1065              		.type	_ZN9FileStore5CloseEv, %function
 1066              	_ZN9FileStore5CloseEv:
 1067              		@ args = 0, pretend = 0, frame = 0
 1068              		@ frame_needed = 0, uses_anonymous_args = 0
 1069 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1070 0002 90F83160 		ldrb	r6, [r0, #49]	@ zero_extendqisi2
 1071 0006 002E     		cmp	r6, #0
 1072 0008 2ED0     		beq	.L226
 1073 000a 022E     		cmp	r6, #2
 1074 000c 0446     		mov	r4, r0
 1075 000e 11D8     		bhi	.L225
 1076              		.syntax unified
 1077              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1078 0010 EFF31087 		MRS r7, primask
 1079              	@ 0 "" 2
 1080              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1081 0014 72B6     		cpsid i
 1082              	@ 0 "" 2
 1083              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
ARM GAS  /tmp/cc59oe5c.s 			page 20


 1084 0016 BFF35F8F 		dmb
 1085              	@ 0 "" 2
 1086              		.thumb
 1087              		.syntax unified
 1088 001a 0023     		movs	r3, #0
 1089 001c 294E     		ldr	r6, .L241
 1090 001e 3370     		strb	r3, [r6]
 1091 0020 C36A     		ldr	r3, [r0, #44]
 1092 0022 012B     		cmp	r3, #1
 1093 0024 34D9     		bls	.L229
 1094 0026 C36A     		ldr	r3, [r0, #44]
 1095 0028 013B     		subs	r3, r3, #1
 1096 002a C362     		str	r3, [r0, #44]
 1097 002c 57B3     		cbz	r7, .L230
 1098              	.L232:
 1099 002e 0125     		movs	r5, #1
 1100              	.L228:
 1101 0030 2846     		mov	r0, r5
 1102 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1103              	.L225:
 1104              		.syntax unified
 1105              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1106 0034 EFF31081 		MRS r1, primask
 1107              	@ 0 "" 2
 1108              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1109 0038 72B6     		cpsid i
 1110              	@ 0 "" 2
 1111              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1112 003a BFF35F8F 		dmb
 1113              	@ 0 "" 2
 1114              		.thumb
 1115              		.syntax unified
 1116 003e 0023     		movs	r3, #0
 1117 0040 204A     		ldr	r2, .L241
 1118 0042 1370     		strb	r3, [r2]
 1119 0044 C06A     		ldr	r0, [r0, #44]
 1120 0046 0128     		cmp	r0, #1
 1121 0048 89BF     		itett	hi
 1122 004a E36A     		ldrhi	r3, [r4, #44]
 1123 004c 84F83130 		strbls	r3, [r4, #49]
 1124 0050 03F1FF33 		addhi	r3, r3, #-1
 1125 0054 E362     		strhi	r3, [r4, #44]
 1126 0056 0029     		cmp	r1, #0
 1127 0058 E9D1     		bne	.L232
 1128 005a 0125     		movs	r5, #1
 1129 005c 1570     		strb	r5, [r2]
 1130              		.syntax unified
 1131              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1132 005e BFF35F8F 		dmb
 1133              	@ 0 "" 2
 1134              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1135 0062 62B6     		cpsie i
 1136              	@ 0 "" 2
 1137              		.thumb
 1138              		.syntax unified
 1139 0064 2846     		mov	r0, r5
 1140 0066 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  /tmp/cc59oe5c.s 			page 21


 1141              	.L226:
 1142 0068 FFF7FEFF 		bl	_Z11inInterruptv
 1143 006c 0546     		mov	r5, r0
 1144 006e 10B1     		cbz	r0, .L240
 1145 0070 3546     		mov	r5, r6
 1146 0072 2846     		mov	r0, r5
 1147 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1148              	.L240:
 1149 0076 9223     		movs	r3, #146
 1150 0078 134A     		ldr	r2, .L241+4
 1151 007a 1449     		ldr	r1, .L241+8
 1152 007c 1448     		ldr	r0, .L241+12
 1153 007e FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1154 0082 D5E7     		b	.L228
 1155              	.L230:
 1156 0084 0125     		movs	r5, #1
 1157 0086 3570     		strb	r5, [r6]
 1158              		.syntax unified
 1159              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1160 0088 BFF35F8F 		dmb
 1161              	@ 0 "" 2
 1162              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1163 008c 62B6     		cpsie i
 1164              	@ 0 "" 2
 1165              		.thumb
 1166              		.syntax unified
 1167 008e CFE7     		b	.L228
 1168              	.L229:
 1169 0090 FFF7FEFF 		bl	_Z11inInterruptv
 1170 0094 0546     		mov	r5, r0
 1171 0096 48B1     		cbz	r0, .L231
 1172 0098 0123     		movs	r3, #1
 1173 009a 84F83030 		strb	r3, [r4, #48]
 1174 009e 002F     		cmp	r7, #0
 1175 00a0 C5D1     		bne	.L232
 1176 00a2 3370     		strb	r3, [r6]
 1177              		.syntax unified
 1178              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1179 00a4 BFF35F8F 		dmb
 1180              	@ 0 "" 2
 1181              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1182 00a8 62B6     		cpsie i
 1183              	@ 0 "" 2
 1184              		.thumb
 1185              		.syntax unified
 1186 00aa C1E7     		b	.L228
 1187              	.L231:
 1188 00ac 27B9     		cbnz	r7, .L233
 1189 00ae 0123     		movs	r3, #1
 1190 00b0 3370     		strb	r3, [r6]
 1191              		.syntax unified
 1192              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1193 00b2 BFF35F8F 		dmb
 1194              	@ 0 "" 2
 1195              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1196 00b6 62B6     		cpsie i
 1197              	@ 0 "" 2
ARM GAS  /tmp/cc59oe5c.s 			page 22


 1198              		.thumb
 1199              		.syntax unified
 1200              	.L233:
 1201 00b8 2046     		mov	r0, r4
 1202 00ba BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1203 00be FFF7FEBF 		b	_ZN9FileStore10ForceCloseEv
 1204              	.L242:
 1205 00c2 00BF     		.align	2
 1206              	.L241:
 1207 00c4 00000000 		.word	g_interrupt_enabled
 1208 00c8 00000000 		.word	.LANCHOR7
 1209 00cc 00000000 		.word	.LC4
 1210 00d0 00000000 		.word	reprap
 1211              		.size	_ZN9FileStore5CloseEv, .-_ZN9FileStore5CloseEv
 1212              		.section	.text._ZN9FileStore8TruncateEv,"ax",%progbits
 1213              		.align	1
 1214              		.p2align 2,,3
 1215              		.global	_ZN9FileStore8TruncateEv
 1216              		.syntax unified
 1217              		.thumb
 1218              		.thumb_func
 1219              		.fpu softvfp
 1220              		.type	_ZN9FileStore8TruncateEv, %function
 1221              	_ZN9FileStore8TruncateEv:
 1222              		@ args = 0, pretend = 0, frame = 0
 1223              		@ frame_needed = 0, uses_anonymous_args = 0
 1224 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 1225 0004 10B5     		push	{r4, lr}
 1226 0006 012B     		cmp	r3, #1
 1227 0008 0FD9     		bls	.L245
 1228 000a 022B     		cmp	r3, #2
 1229 000c 01D0     		beq	.L246
 1230 000e 0020     		movs	r0, #0
 1231              	.L244:
 1232 0010 10BD     		pop	{r4, pc}
 1233              	.L246:
 1234 0012 0446     		mov	r4, r0
 1235 0014 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 1236 0018 0028     		cmp	r0, #0
 1237 001a F9D0     		beq	.L244
 1238 001c 2046     		mov	r0, r4
 1239 001e FFF7FEFF 		bl	f_truncate
 1240 0022 B0FA80F0 		clz	r0, r0
 1241 0026 4009     		lsrs	r0, r0, #5
 1242 0028 10BD     		pop	{r4, pc}
 1243              	.L245:
 1244 002a 40F2C713 		movw	r3, #455
 1245 002e 034A     		ldr	r2, .L254
 1246 0030 0349     		ldr	r1, .L254+4
 1247 0032 0448     		ldr	r0, .L254+8
 1248 0034 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1249 0038 0020     		movs	r0, #0
 1250 003a 10BD     		pop	{r4, pc}
 1251              	.L255:
 1252              		.align	2
 1253              	.L254:
 1254 003c 00000000 		.word	.LANCHOR8
ARM GAS  /tmp/cc59oe5c.s 			page 23


 1255 0040 00000000 		.word	.LC4
 1256 0044 00000000 		.word	reprap
 1257              		.size	_ZN9FileStore8TruncateEv, .-_ZN9FileStore8TruncateEv
 1258              		.global	__aeabi_ui2f
 1259              		.global	__aeabi_fmul
 1260              		.section	.text._ZN9FileStore27GetAndClearLongestWriteTimeEv,"ax",%progbits
 1261              		.align	1
 1262              		.p2align 2,,3
 1263              		.global	_ZN9FileStore27GetAndClearLongestWriteTimeEv
 1264              		.syntax unified
 1265              		.thumb
 1266              		.thumb_func
 1267              		.fpu softvfp
 1268              		.type	_ZN9FileStore27GetAndClearLongestWriteTimeEv, %function
 1269              	_ZN9FileStore27GetAndClearLongestWriteTimeEv:
 1270              		@ args = 0, pretend = 0, frame = 0
 1271              		@ frame_needed = 0, uses_anonymous_args = 0
 1272 0000 10B5     		push	{r4, lr}
 1273 0002 054C     		ldr	r4, .L258
 1274 0004 2068     		ldr	r0, [r4]
 1275 0006 FFF7FEFF 		bl	__aeabi_ui2f
 1276 000a 0449     		ldr	r1, .L258+4
 1277 000c FFF7FEFF 		bl	__aeabi_fmul
 1278 0010 0023     		movs	r3, #0
 1279 0012 2360     		str	r3, [r4]
 1280 0014 10BD     		pop	{r4, pc}
 1281              	.L259:
 1282 0016 00BF     		.align	2
 1283              	.L258:
 1284 0018 00000000 		.word	.LANCHOR4
 1285 001c 90BAC73A 		.word	986167952
 1286              		.size	_ZN9FileStore27GetAndClearLongestWriteTimeEv, .-_ZN9FileStore27GetAndClearLongestWriteTimeEv
 1287              		.global	_ZN9FileStore16longestWriteTimeE
 1288              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1289              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1290              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1291              	_ZL28cpu_irq_prev_interrupt_state:
 1292 0000 00       		.space	1
 1293              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1294              		.align	2
 1295              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1296              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1297              	_ZL32cpu_irq_critical_section_counter:
 1298 0000 00000000 		.space	4
 1299              		.section	.bss._ZN9FileStore16longestWriteTimeE,"aw",%nobits
 1300              		.align	2
 1301              		.set	.LANCHOR4,. + 0
 1302              		.type	_ZN9FileStore16longestWriteTimeE, %object
 1303              		.size	_ZN9FileStore16longestWriteTimeE, 4
 1304              	_ZN9FileStore16longestWriteTimeE:
 1305 0000 00000000 		.space	4
 1306              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1307              		.align	2
 1308              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1309              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1310              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1311 0000 00000000 		.space	4
ARM GAS  /tmp/cc59oe5c.s 			page 24


 1312              		.section	.rodata._ZN9FileStore4OpenEPKcS1_8OpenMode.str1.4,"aMS",%progbits,1
 1313              		.align	2
 1314              	.LC0:
 1315 0000 77726974 		.ascii	"write\000"
 1315      6500
 1316 0006 0000     		.space	2
 1317              	.LC1:
 1318 0008 72656164 		.ascii	"read\000"
 1318      00
 1319 000d 000000   		.space	3
 1320              	.LC2:
 1321 0010 43616E27 		.ascii	"Can't open %s to %s, error code %d\012\000"
 1321      74206F70 
 1321      656E2025 
 1321      7320746F 
 1321      2025732C 
 1322              	.LC3:
 1323 0034 4661696C 		.ascii	"Failed to create folder %s while trying to open fil"
 1323      65642074 
 1323      6F206372 
 1323      65617465 
 1323      20666F6C 
 1324 0067 65202573 		.ascii	"e %s\012\000"
 1324      0A00
 1325              		.section	.rodata._ZN9FileStore4ReadEPcj.str1.4,"aMS",%progbits,1
 1326              		.align	2
 1327              	.LC5:
 1328 0000 43616E6E 		.ascii	"Cannot read file, error code %d.\012\000"
 1328      6F742072 
 1328      65616420 
 1328      66696C65 
 1328      2C206572 
 1329              		.section	.rodata._ZN9FileStore5FlushEv.str1.4,"aMS",%progbits,1
 1330              		.align	2
 1331              	.LC7:
 1332 0000 4661696C 		.ascii	"Failed to flush data to file, error code %d. Card m"
 1332      65642074 
 1332      6F20666C 
 1332      75736820 
 1332      64617461 
 1333 0033 61792062 		.ascii	"ay be full.\012\000"
 1333      65206675 
 1333      6C6C2E0A 
 1333      00
 1334              		.section	.rodata._ZN9FileStore5WriteEPKcj.str1.4,"aMS",%progbits,1
 1335              		.align	2
 1336              	.LC6:
 1337 0000 4661696C 		.ascii	"Failed to write to file, error code %d. Card may be"
 1337      65642074 
 1337      6F207772 
 1337      69746520 
 1337      746F2066 
 1338 0033 2066756C 		.ascii	" full.\012\000"
 1338      6C2E0A00 
 1339              		.section	.rodata._ZN9FileStore9DuplicateEv.str1.4,"aMS",%progbits,1
 1340              		.align	2
 1341              	.LC4:
ARM GAS  /tmp/cc59oe5c.s 			page 25


 1342 0000 2E2E2F73 		.ascii	"../src/Storage/FileStore.cpp\000"
 1342      72632F53 
 1342      746F7261 
 1342      67652F46 
 1342      696C6553 
 1343              		.section	.rodata._ZZN9FileStore4ReadEPcjE8__func__,"a",%progbits
 1344              		.align	2
 1345              		.set	.LANCHOR3,. + 0
 1346              		.type	_ZZN9FileStore4ReadEPcjE8__func__, %object
 1347              		.size	_ZZN9FileStore4ReadEPcjE8__func__, 5
 1348              	_ZZN9FileStore4ReadEPcjE8__func__:
 1349 0000 52656164 		.ascii	"Read\000"
 1349      00
 1350              		.section	.rodata._ZZN9FileStore4SeekEmE8__func__,"a",%progbits
 1351              		.align	2
 1352              		.set	.LANCHOR1,. + 0
 1353              		.type	_ZZN9FileStore4SeekEmE8__func__, %object
 1354              		.size	_ZZN9FileStore4SeekEmE8__func__, 5
 1355              	_ZZN9FileStore4SeekEmE8__func__:
 1356 0000 5365656B 		.ascii	"Seek\000"
 1356      00
 1357              		.section	.rodata._ZZN9FileStore5CloseEvE8__func__,"a",%progbits
 1358              		.align	2
 1359              		.set	.LANCHOR7,. + 0
 1360              		.type	_ZZN9FileStore5CloseEvE8__func__, %object
 1361              		.size	_ZZN9FileStore5CloseEvE8__func__, 6
 1362              	_ZZN9FileStore5CloseEvE8__func__:
 1363 0000 436C6F73 		.ascii	"Close\000"
 1363      6500
 1364              		.section	.rodata._ZZN9FileStore5FlushEvE8__func__,"a",%progbits
 1365              		.align	2
 1366              		.set	.LANCHOR6,. + 0
 1367              		.type	_ZZN9FileStore5FlushEvE8__func__, %object
 1368              		.size	_ZZN9FileStore5FlushEvE8__func__, 6
 1369              	_ZZN9FileStore5FlushEvE8__func__:
 1370 0000 466C7573 		.ascii	"Flush\000"
 1370      6800
 1371              		.section	.rodata._ZZN9FileStore5WriteEPKcjE8__func__,"a",%progbits
 1372              		.align	2
 1373              		.set	.LANCHOR5,. + 0
 1374              		.type	_ZZN9FileStore5WriteEPKcjE8__func__, %object
 1375              		.size	_ZZN9FileStore5WriteEPKcjE8__func__, 6
 1376              	_ZZN9FileStore5WriteEPKcjE8__func__:
 1377 0000 57726974 		.ascii	"Write\000"
 1377      6500
 1378              		.section	.rodata._ZZN9FileStore8TruncateEvE8__func__,"a",%progbits
 1379              		.align	2
 1380              		.set	.LANCHOR8,. + 0
 1381              		.type	_ZZN9FileStore8TruncateEvE8__func__, %object
 1382              		.size	_ZZN9FileStore8TruncateEvE8__func__, 9
 1383              	_ZZN9FileStore8TruncateEvE8__func__:
 1384 0000 5472756E 		.ascii	"Truncate\000"
 1384      63617465 
 1384      00
 1385              		.section	.rodata._ZZN9FileStore9DuplicateEvE8__func__,"a",%progbits
 1386              		.align	2
 1387              		.set	.LANCHOR0,. + 0
ARM GAS  /tmp/cc59oe5c.s 			page 26


 1388              		.type	_ZZN9FileStore9DuplicateEvE8__func__, %object
 1389              		.size	_ZZN9FileStore9DuplicateEvE8__func__, 10
 1390              	_ZZN9FileStore9DuplicateEvE8__func__:
 1391 0000 4475706C 		.ascii	"Duplicate\000"
 1391      69636174 
 1391      6500
 1392              		.section	.rodata._ZZNK9FileStore6LengthEvE8__func__,"a",%progbits
 1393              		.align	2
 1394              		.set	.LANCHOR2,. + 0
 1395              		.type	_ZZNK9FileStore6LengthEvE8__func__, %object
 1396              		.size	_ZZNK9FileStore6LengthEvE8__func__, 7
 1397              	_ZZNK9FileStore6LengthEvE8__func__:
 1398 0000 4C656E67 		.ascii	"Length\000"
 1398      746800
 1399              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
