ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 1


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
  13              		.file	"FileStore.cpp"
  14              		.text
  15              		.section	.text._ZN9FileStoreC2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN9FileStoreC2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN9FileStoreC2Ev, %function
  24              	_ZN9FileStoreC2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 38B5     		push	{r3, r4, r5, lr}
  28 0002 0446     		mov	r4, r0
  29 0004 0025     		movs	r5, #0
  30 0006 8562     		str	r5, [r0, #40]
  31 0008 3430     		adds	r0, r0, #52
  32 000a FFF7FEFF 		bl	_ZN5CRC32C1Ev
  33 000e E562     		str	r5, [r4, #44]
  34 0010 84F83150 		strb	r5, [r4, #49]
  35 0014 84F83050 		strb	r5, [r4, #48]
  36 0018 2046     		mov	r0, r4
  37 001a 38BD     		pop	{r3, r4, r5, pc}
  38              		.size	_ZN9FileStoreC2Ev, .-_ZN9FileStoreC2Ev
  39              		.global	_ZN9FileStoreC1Ev
  40              		.thumb_set _ZN9FileStoreC1Ev,_ZN9FileStoreC2Ev
  41              		.section	.text._ZN9FileStore4InitEv,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	_ZN9FileStore4InitEv
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv4-sp-d16
  49              		.type	_ZN9FileStore4InitEv, %function
  50              	_ZN9FileStore4InitEv:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              		@ link register save eliminated.
  54 0000 0023     		movs	r3, #0
  55 0002 C362     		str	r3, [r0, #44]
  56 0004 80F83130 		strb	r3, [r0, #49]
  57 0008 80F83030 		strb	r3, [r0, #48]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 2


  58 000c 7047     		bx	lr
  59              		.size	_ZN9FileStore4InitEv, .-_ZN9FileStore4InitEv
  60 000e 00BF     		.section	.text._ZNK9FileStore8IsOpenOnEPK5FATFS,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_ZNK9FileStore8IsOpenOnEPK5FATFS
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	_ZNK9FileStore8IsOpenOnEPK5FATFS, %function
  69              	_ZNK9FileStore8IsOpenOnEPK5FATFS:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72              		@ link register save eliminated.
  73 0000 C36A     		ldr	r3, [r0, #44]
  74 0002 2BB1     		cbz	r3, .L7
  75 0004 0068     		ldr	r0, [r0]
  76 0006 401A     		subs	r0, r0, r1
  77 0008 B0FA80F0 		clz	r0, r0
  78 000c 4009     		lsrs	r0, r0, #5
  79 000e 7047     		bx	lr
  80              	.L7:
  81 0010 1846     		mov	r0, r3
  82 0012 7047     		bx	lr
  83              		.size	_ZNK9FileStore8IsOpenOnEPK5FATFS, .-_ZNK9FileStore8IsOpenOnEPK5FATFS
  84              		.section	.text._ZN9FileStore4OpenEPKcS1_8OpenMode,"ax",%progbits
  85              		.align	1
  86              		.p2align 2,,3
  87              		.global	_ZN9FileStore4OpenEPKcS1_8OpenMode
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu fpv4-sp-d16
  92              		.type	_ZN9FileStore4OpenEPKcS1_8OpenMode, %function
  93              	_ZN9FileStore4OpenEPKcS1_8OpenMode:
  94              		@ args = 0, pretend = 0, frame = 256
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  97 0004 C3B0     		sub	sp, sp, #268
  98 0006 42AE     		add	r6, sp, #264
  99 0008 9946     		mov	r9, r3
 100 000a 4FF0000B 		mov	fp, #0
 101 000e 06F8F8BD 		strb	fp, [r6, #-248]!
 102 0012 23AC     		add	r4, sp, #140
 103 0014 09F1FF37 		add	r7, r9, #-1
 104 0018 8046     		mov	r8, r0
 105 001a 7925     		movs	r5, #121
 106 001c 2046     		mov	r0, r4
 107 001e FFB2     		uxtb	r7, r7
 108 0020 CDE92365 		strd	r6, r5, [sp, #140]
 109 0024 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 110 0028 012F     		cmp	r7, #1
 111 002a 33D9     		bls	.L37
 112              	.L23:
 113 002c 0122     		movs	r2, #1
 114 002e 3146     		mov	r1, r6
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 3


 115 0030 4046     		mov	r0, r8
 116 0032 FFF7FEFF 		bl	f_open
 117 0036 D0B1     		cbz	r0, .L20
 118 0038 594C     		ldr	r4, .L42
 119              	.L18:
 120 003a D4F80851 		ldr	r5, [r4, #264]
 121 003e 15F00105 		ands	r5, r5, #1
 122 0042 10D0     		beq	.L33
 123 0044 574B     		ldr	r3, .L42+4
 124 0046 5849     		ldr	r1, .L42+8
 125 0048 6268     		ldr	r2, [r4, #4]
 126 004a 012F     		cmp	r7, #1
 127 004c 8CBF     		ite	hi
 128 004e 1F46     		movhi	r7, r3
 129 0050 0F46     		movls	r7, r1
 130              	.L21:
 131 0052 CDE90070 		strd	r7, r0, [sp]
 132 0056 3346     		mov	r3, r6
 133 0058 1046     		mov	r0, r2
 134 005a 40F2B521 		movw	r1, #693
 135 005e 534A     		ldr	r2, .L42+12
 136 0060 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 137 0064 0025     		movs	r5, #0
 138              	.L33:
 139 0066 2846     		mov	r0, r5
 140 0068 43B0     		add	sp, sp, #268
 141              		@ sp needed
 142 006a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 143              	.L20:
 144 006e 08F13400 		add	r0, r8, #52
 145 0072 FFF7FEFF 		bl	_ZN5CRC325ResetEv
 146 0076 012F     		cmp	r7, #1
 147 0078 8CBF     		ite	hi
 148 007a 4FF00109 		movhi	r9, #1
 149 007e 4FF00209 		movls	r9, #2
 150              	.L22:
 151 0082 0125     		movs	r5, #1
 152 0084 2846     		mov	r0, r5
 153 0086 88F83190 		strb	r9, [r8, #49]
 154 008a C8F82C50 		str	r5, [r8, #44]
 155 008e 43B0     		add	sp, sp, #268
 156              		@ sp needed
 157 0090 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 158              	.L37:
 159 0094 02A8     		add	r0, sp, #8
 160 0096 3146     		mov	r1, r6
 161 0098 8DF88CB0 		strb	fp, [sp, #140]
 162 009c CDE90245 		strd	r4, r5, [sp, #8]
 163 00a0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 164 00a4 9DF88C20 		ldrb	r2, [sp, #140]	@ zero_extendqisi2
 165 00a8 A2F13003 		sub	r3, r2, #48
 166 00ac 092B     		cmp	r3, #9
 167 00ae 3DD9     		bls	.L38
 168              	.L10:
 169 00b0 2F2A     		cmp	r2, #47
 170 00b2 08BF     		it	eq
 171 00b4 0BF1010B 		addeq	fp, fp, #1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 4


 172 00b8 DFF8E4A0 		ldr	r10, .L42
 173 00bc 01E0     		b	.L16
 174              	.L13:
 175 00be 0BF1010B 		add	fp, fp, #1
 176              	.L16:
 177 00c2 7821     		movs	r1, #120
 178 00c4 2046     		mov	r0, r4
 179 00c6 FFF7FEFF 		bl	_Z7StrnlenPKcj
 180 00ca 8345     		cmp	fp, r0
 181 00cc 16D2     		bcs	.L12
 182 00ce 14F80B20 		ldrb	r2, [r4, fp]	@ zero_extendqisi2
 183 00d2 2F2A     		cmp	r2, #47
 184 00d4 F3D1     		bne	.L13
 185 00d6 4FF00003 		mov	r3, #0
 186 00da DAF80420 		ldr	r2, [r10, #4]	@ unaligned
 187 00de 04F80B30 		strb	r3, [r4, fp]
 188 00e2 02A9     		add	r1, sp, #8
 189 00e4 D2F8DC0B 		ldr	r0, [r2, #3036]
 190 00e8 0294     		str	r4, [sp, #8]
 191 00ea 7922     		movs	r2, #121
 192 00ec 0392     		str	r2, [sp, #12]
 193 00ee FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 194 00f2 20B3     		cbz	r0, .L39
 195              	.L14:
 196 00f4 2F22     		movs	r2, #47
 197 00f6 04F80B20 		strb	r2, [r4, fp]
 198 00fa E0E7     		b	.L13
 199              	.L12:
 200 00fc B9F1010F 		cmp	r9, #1
 201 0100 36D0     		beq	.L40
 202 0102 0023     		movs	r3, #0
 203 0104 B9F1020F 		cmp	r9, #2
 204 0108 C8F82830 		str	r3, [r8, #40]
 205 010c 8ED1     		bne	.L23
 206 010e 1322     		movs	r2, #19
 207 0110 3146     		mov	r1, r6
 208 0112 4046     		mov	r0, r8
 209 0114 FFF7FEFF 		bl	f_open
 210 0118 28B3     		cbz	r0, .L41
 211 011a 214B     		ldr	r3, .L42
 212 011c D3F80851 		ldr	r5, [r3, #264]
 213 0120 15F00105 		ands	r5, r5, #1
 214 0124 9FD0     		beq	.L33
 215 0126 5A68     		ldr	r2, [r3, #4]
 216 0128 1F4F     		ldr	r7, .L42+8
 217 012a 92E7     		b	.L21
 218              	.L38:
 219 012c 9DF88D30 		ldrb	r3, [sp, #141]	@ zero_extendqisi2
 220 0130 3A2B     		cmp	r3, #58
 221 0132 04BF     		itt	eq
 222 0134 9DF88E20 		ldrbeq	r2, [sp, #142]	@ zero_extendqisi2
 223 0138 4FF0020B 		moveq	fp, #2
 224 013c B8E7     		b	.L10
 225              	.L39:
 226 013e DAF80420 		ldr	r2, [r10, #4]
 227 0142 2146     		mov	r1, r4
 228 0144 D2F8DC0B 		ldr	r0, [r2, #3036]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 5


 229 0148 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 230 014c 0546     		mov	r5, r0
 231 014e 0028     		cmp	r0, #0
 232 0150 D0D1     		bne	.L14
 233 0152 DAF80400 		ldr	r0, [r10, #4]
 234 0156 0096     		str	r6, [sp]
 235 0158 2346     		mov	r3, r4
 236 015a 154A     		ldr	r2, .L42+16
 237 015c 40F2B511 		movw	r1, #437
 238 0160 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 239 0164 7FE7     		b	.L33
 240              	.L41:
 241 0166 08F13400 		add	r0, r8, #52
 242 016a FFF7FEFF 		bl	_ZN5CRC325ResetEv
 243 016e 88E7     		b	.L22
 244              	.L40:
 245 0170 0B4C     		ldr	r4, .L42
 246 0172 6368     		ldr	r3, [r4, #4]
 247 0174 D3F8DC0B 		ldr	r0, [r3, #3036]
 248 0178 FFF7FEFF 		bl	_ZN11MassStorage19AllocateWriteBufferEv
 249 017c 0A22     		movs	r2, #10
 250 017e C8F82800 		str	r0, [r8, #40]
 251 0182 3146     		mov	r1, r6
 252 0184 4046     		mov	r0, r8
 253 0186 FFF7FEFF 		bl	f_open
 254 018a 0028     		cmp	r0, #0
 255 018c 7FF455AF 		bne	.L18
 256 0190 08F13400 		add	r0, r8, #52
 257 0194 FFF7FEFF 		bl	_ZN5CRC325ResetEv
 258 0198 4FF00209 		mov	r9, #2
 259 019c 71E7     		b	.L22
 260              	.L43:
 261 019e 00BF     		.align	2
 262              	.L42:
 263 01a0 00000000 		.word	reprap
 264 01a4 08000000 		.word	.LC1
 265 01a8 00000000 		.word	.LC0
 266 01ac 4C000000 		.word	.LC3
 267 01b0 10000000 		.word	.LC2
 268              		.size	_ZN9FileStore4OpenEPKcS1_8OpenMode, .-_ZN9FileStore4OpenEPKcS1_8OpenMode
 269              		.section	.text._ZN9FileStore9DuplicateEv,"ax",%progbits
 270              		.align	1
 271              		.p2align 2,,3
 272              		.global	_ZN9FileStore9DuplicateEv
 273              		.syntax unified
 274              		.thumb
 275              		.thumb_func
 276              		.fpu fpv4-sp-d16
 277              		.type	_ZN9FileStore9DuplicateEv, %function
 278              	_ZN9FileStore9DuplicateEv:
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 282 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 283 0004 ABB1     		cbz	r3, .L46
 284 0006 022B     		cmp	r3, #2
 285 0008 00D9     		bls	.L49
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 6


 286              	.L44:
 287 000a 7047     		bx	lr
 288              	.L49:
 289              		.syntax unified
 290              	@ 470 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 291 000c EFF31081 		MRS r1, primask
 292              	@ 0 "" 2
 293              	@ 330 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 294 0010 72B6     		cpsid i
 295              	@ 0 "" 2
 296              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 297 0012 BFF35F8F 		dmb
 298              	@ 0 "" 2
 299              		.thumb
 300              		.syntax unified
 301 0016 0A4A     		ldr	r2, .L50
 302 0018 0023     		movs	r3, #0
 303 001a 1370     		strb	r3, [r2]
 304 001c C36A     		ldr	r3, [r0, #44]
 305 001e 0133     		adds	r3, r3, #1
 306 0020 C362     		str	r3, [r0, #44]
 307 0022 0029     		cmp	r1, #0
 308 0024 F1D1     		bne	.L44
 309 0026 0123     		movs	r3, #1
 310 0028 1370     		strb	r3, [r2]
 311              		.syntax unified
 312              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 313 002a BFF35F8F 		dmb
 314              	@ 0 "" 2
 315              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 316 002e 62B6     		cpsie i
 317              	@ 0 "" 2
 318              		.thumb
 319              		.syntax unified
 320 0030 7047     		bx	lr
 321              	.L46:
 322 0032 7A23     		movs	r3, #122
 323 0034 034A     		ldr	r2, .L50+4
 324 0036 0449     		ldr	r1, .L50+8
 325 0038 0448     		ldr	r0, .L50+12
 326 003a FFF7FEBF 		b	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 327              	.L51:
 328 003e 00BF     		.align	2
 329              	.L50:
 330 0040 00000000 		.word	g_interrupt_enabled
 331 0044 00000000 		.word	.LANCHOR0
 332 0048 00000000 		.word	.LC4
 333 004c 00000000 		.word	reprap
 334              		.size	_ZN9FileStore9DuplicateEv, .-_ZN9FileStore9DuplicateEv
 335              		.section	.text._ZN9FileStore4SeekEm,"ax",%progbits
 336              		.align	1
 337              		.p2align 2,,3
 338              		.global	_ZN9FileStore4SeekEm
 339              		.syntax unified
 340              		.thumb
 341              		.thumb_func
 342              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 7


 343              		.type	_ZN9FileStore4SeekEm, %function
 344              	_ZN9FileStore4SeekEm:
 345              		@ args = 0, pretend = 0, frame = 0
 346              		@ frame_needed = 0, uses_anonymous_args = 0
 347 0000 10B5     		push	{r4, lr}
 348 0002 90F83140 		ldrb	r4, [r0, #49]	@ zero_extendqisi2
 349 0006 4CB1     		cbz	r4, .L54
 350 0008 022C     		cmp	r4, #2
 351 000a 01D9     		bls	.L59
 352 000c 0020     		movs	r0, #0
 353 000e 10BD     		pop	{r4, pc}
 354              	.L59:
 355 0010 FFF7FEFF 		bl	f_lseek
 356 0014 B0FA80F0 		clz	r0, r0
 357 0018 4009     		lsrs	r0, r0, #5
 358 001a 10BD     		pop	{r4, pc}
 359              	.L54:
 360 001c DB23     		movs	r3, #219
 361 001e 034A     		ldr	r2, .L60
 362 0020 0349     		ldr	r1, .L60+4
 363 0022 0448     		ldr	r0, .L60+8
 364 0024 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 365 0028 2046     		mov	r0, r4
 366 002a 10BD     		pop	{r4, pc}
 367              	.L61:
 368              		.align	2
 369              	.L60:
 370 002c 00000000 		.word	.LANCHOR1
 371 0030 00000000 		.word	.LC4
 372 0034 00000000 		.word	reprap
 373              		.size	_ZN9FileStore4SeekEm, .-_ZN9FileStore4SeekEm
 374              		.section	.text._ZNK9FileStore8PositionEv,"ax",%progbits
 375              		.align	1
 376              		.p2align 2,,3
 377              		.global	_ZNK9FileStore8PositionEv
 378              		.syntax unified
 379              		.thumb
 380              		.thumb_func
 381              		.fpu fpv4-sp-d16
 382              		.type	_ZNK9FileStore8PositionEv, %function
 383              	_ZNK9FileStore8PositionEv:
 384              		@ args = 0, pretend = 0, frame = 0
 385              		@ frame_needed = 0, uses_anonymous_args = 0
 386              		@ link register save eliminated.
 387 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 388 0004 013B     		subs	r3, r3, #1
 389 0006 012B     		cmp	r3, #1
 390 0008 94BF     		ite	ls
 391 000a 8068     		ldrls	r0, [r0, #8]
 392 000c 0020     		movhi	r0, #0
 393 000e 7047     		bx	lr
 394              		.size	_ZNK9FileStore8PositionEv, .-_ZNK9FileStore8PositionEv
 395              		.section	.text._ZNK9FileStore11ClusterSizeEv,"ax",%progbits
 396              		.align	1
 397              		.p2align 2,,3
 398              		.global	_ZNK9FileStore11ClusterSizeEv
 399              		.syntax unified
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 8


 400              		.thumb
 401              		.thumb_func
 402              		.fpu fpv4-sp-d16
 403              		.type	_ZNK9FileStore11ClusterSizeEv, %function
 404              	_ZNK9FileStore11ClusterSizeEv:
 405              		@ args = 0, pretend = 0, frame = 0
 406              		@ frame_needed = 0, uses_anonymous_args = 0
 407              		@ link register save eliminated.
 408 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 409 0004 013B     		subs	r3, r3, #1
 410 0006 012B     		cmp	r3, #1
 411 0008 9DBF     		ittte	ls
 412 000a 0368     		ldrls	r3, [r0]
 413 000c 9878     		ldrbls	r0, [r3, #2]	@ zero_extendqisi2
 414 000e 4002     		lslls	r0, r0, #9
 415 0010 0120     		movhi	r0, #1
 416 0012 7047     		bx	lr
 417              		.size	_ZNK9FileStore11ClusterSizeEv, .-_ZNK9FileStore11ClusterSizeEv
 418              		.section	.text._ZNK9FileStore6LengthEv,"ax",%progbits
 419              		.align	1
 420              		.p2align 2,,3
 421              		.global	_ZNK9FileStore6LengthEv
 422              		.syntax unified
 423              		.thumb
 424              		.thumb_func
 425              		.fpu fpv4-sp-d16
 426              		.type	_ZNK9FileStore6LengthEv, %function
 427              	_ZNK9FileStore6LengthEv:
 428              		@ args = 0, pretend = 0, frame = 0
 429              		@ frame_needed = 0, uses_anonymous_args = 0
 430 0000 08B5     		push	{r3, lr}
 431 0002 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 432 0006 012B     		cmp	r3, #1
 433 0008 12D0     		beq	.L70
 434 000a 09D3     		bcc	.L71
 435 000c 022B     		cmp	r3, #2
 436 000e 05D1     		bne	.L79
 437 0010 836A     		ldr	r3, [r0, #40]
 438 0012 C068     		ldr	r0, [r0, #12]
 439 0014 0BB1     		cbz	r3, .L68
 440 0016 5B68     		ldr	r3, [r3, #4]
 441 0018 1844     		add	r0, r0, r3
 442              	.L68:
 443 001a 08BD     		pop	{r3, pc}
 444              	.L79:
 445 001c 0020     		movs	r0, #0
 446 001e 08BD     		pop	{r3, pc}
 447              	.L71:
 448 0020 FE23     		movs	r3, #254
 449 0022 044A     		ldr	r2, .L80
 450 0024 0449     		ldr	r1, .L80+4
 451 0026 0548     		ldr	r0, .L80+8
 452 0028 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 453 002c 0020     		movs	r0, #0
 454 002e 08BD     		pop	{r3, pc}
 455              	.L70:
 456 0030 C068     		ldr	r0, [r0, #12]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 9


 457 0032 08BD     		pop	{r3, pc}
 458              	.L81:
 459              		.align	2
 460              	.L80:
 461 0034 00000000 		.word	.LANCHOR2
 462 0038 00000000 		.word	.LC4
 463 003c 00000000 		.word	reprap
 464              		.size	_ZNK9FileStore6LengthEv, .-_ZNK9FileStore6LengthEv
 465              		.section	.text._ZN9FileStore4ReadEPcj,"ax",%progbits
 466              		.align	1
 467              		.p2align 2,,3
 468              		.global	_ZN9FileStore4ReadEPcj
 469              		.syntax unified
 470              		.thumb
 471              		.thumb_func
 472              		.fpu fpv4-sp-d16
 473              		.type	_ZN9FileStore4ReadEPcj, %function
 474              	_ZN9FileStore4ReadEPcj:
 475              		@ args = 0, pretend = 0, frame = 8
 476              		@ frame_needed = 0, uses_anonymous_args = 0
 477 0000 00B5     		push	{lr}
 478 0002 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 479 0006 83B0     		sub	sp, sp, #12
 480 0008 7BB1     		cbz	r3, .L84
 481 000a 022B     		cmp	r3, #2
 482 000c 08D8     		bhi	.L88
 483 000e 01AB     		add	r3, sp, #4
 484 0010 FFF7FEFF 		bl	f_read
 485 0014 0346     		mov	r3, r0
 486 0016 A0B9     		cbnz	r0, .L91
 487 0018 0198     		ldr	r0, [sp, #4]
 488 001a 03B0     		add	sp, sp, #12
 489              		@ sp needed
 490 001c 5DF804FB 		ldr	pc, [sp], #4
 491              	.L88:
 492 0020 4FF0FF30 		mov	r0, #-1
 493 0024 03B0     		add	sp, sp, #12
 494              		@ sp needed
 495 0026 5DF804FB 		ldr	pc, [sp], #4
 496              	.L84:
 497 002a 40F21913 		movw	r3, #281
 498 002e 0B4A     		ldr	r2, .L92
 499 0030 0B49     		ldr	r1, .L92+4
 500 0032 0C48     		ldr	r0, .L92+8
 501 0034 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 502 0038 4FF0FF30 		mov	r0, #-1
 503 003c 03B0     		add	sp, sp, #12
 504              		@ sp needed
 505 003e 5DF804FB 		ldr	pc, [sp], #4
 506              	.L91:
 507 0042 0849     		ldr	r1, .L92+8
 508 0044 084A     		ldr	r2, .L92+12
 509 0046 4868     		ldr	r0, [r1, #4]
 510 0048 40F2B511 		movw	r1, #437
 511 004c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 512 0050 4FF0FF30 		mov	r0, #-1
 513 0054 03B0     		add	sp, sp, #12
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 10


 514              		@ sp needed
 515 0056 5DF804FB 		ldr	pc, [sp], #4
 516              	.L93:
 517 005a 00BF     		.align	2
 518              	.L92:
 519 005c 00000000 		.word	.LANCHOR3
 520 0060 00000000 		.word	.LC4
 521 0064 00000000 		.word	reprap
 522 0068 00000000 		.word	.LC5
 523              		.size	_ZN9FileStore4ReadEPcj, .-_ZN9FileStore4ReadEPcj
 524              		.section	.text._ZN9FileStore4ReadERc,"ax",%progbits
 525              		.align	1
 526              		.p2align 2,,3
 527              		.global	_ZN9FileStore4ReadERc
 528              		.syntax unified
 529              		.thumb
 530              		.thumb_func
 531              		.fpu fpv4-sp-d16
 532              		.type	_ZN9FileStore4ReadERc, %function
 533              	_ZN9FileStore4ReadERc:
 534              		@ args = 0, pretend = 0, frame = 0
 535              		@ frame_needed = 0, uses_anonymous_args = 0
 536 0000 08B5     		push	{r3, lr}
 537 0002 0122     		movs	r2, #1
 538 0004 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 539 0008 0030     		adds	r0, r0, #0
 540 000a 18BF     		it	ne
 541 000c 0120     		movne	r0, #1
 542 000e 08BD     		pop	{r3, pc}
 543              		.size	_ZN9FileStore4ReadERc, .-_ZN9FileStore4ReadERc
 544              		.section	.text._ZN9FileStore8ReadLineEPcj,"ax",%progbits
 545              		.align	1
 546              		.p2align 2,,3
 547              		.global	_ZN9FileStore8ReadLineEPcj
 548              		.syntax unified
 549              		.thumb
 550              		.thumb_func
 551              		.fpu fpv4-sp-d16
 552              		.type	_ZN9FileStore8ReadLineEPcj, %function
 553              	_ZN9FileStore8ReadLineEPcj:
 554              		@ args = 0, pretend = 0, frame = 0
 555              		@ frame_needed = 0, uses_anonymous_args = 0
 556 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 557 0004 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 558 0008 013B     		subs	r3, r3, #1
 559 000a 012B     		cmp	r3, #1
 560 000c 94BF     		ite	ls
 561 000e 8768     		ldrls	r7, [r0, #8]
 562 0010 0027     		movhi	r7, #0
 563 0012 0646     		mov	r6, r0
 564 0014 0D46     		mov	r5, r1
 565 0016 9046     		mov	r8, r2
 566 0018 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 567 001c B0F10009 		subs	r9, r0, #0
 568 0020 1CDB     		blt	.L96
 569 0022 42D0     		beq	.L113
 570 0024 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 11


 571 0026 0D2B     		cmp	r3, #13
 572 0028 41D0     		beq	.L100
 573 002a 0A2B     		cmp	r3, #10
 574 002c 46D0     		beq	.L101
 575 002e 2846     		mov	r0, r5
 576 0030 0022     		movs	r2, #0
 577 0032 06E0     		b	.L102
 578              	.L106:
 579 0034 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 580 0038 0D2B     		cmp	r3, #13
 581 003a 12D0     		beq	.L103
 582 003c 0A2B     		cmp	r3, #10
 583 003e 21D0     		beq	.L119
 584 0040 2246     		mov	r2, r4
 585              	.L102:
 586 0042 541C     		adds	r4, r2, #1
 587 0044 A145     		cmp	r9, r4
 588 0046 2146     		mov	r1, r4
 589 0048 F4D1     		bne	.L106
 590 004a 0232     		adds	r2, r2, #2
 591 004c 9145     		cmp	r9, r2
 592 004e 26DC     		bgt	.L120
 593              	.L99:
 594 0050 A045     		cmp	r8, r4
 595 0052 1BD0     		beq	.L108
 596 0054 2544     		add	r5, r5, r4
 597 0056 A146     		mov	r9, r4
 598              	.L107:
 599 0058 0023     		movs	r3, #0
 600 005a 2B70     		strb	r3, [r5]
 601              	.L96:
 602 005c 4846     		mov	r0, r9
 603 005e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 604              	.L103:
 605 0062 0232     		adds	r2, r2, #2
 606 0064 9145     		cmp	r9, r2
 607 0066 03DD     		ble	.L105
 608              	.L110:
 609 0068 6B18     		adds	r3, r5, r1
 610 006a 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 611 006c 0A2B     		cmp	r3, #10
 612 006e 27D0     		beq	.L121
 613              	.L105:
 614 0070 A145     		cmp	r9, r4
 615 0072 EDDD     		ble	.L99
 616              	.L111:
 617 0074 2544     		add	r5, r5, r4
 618              	.L118:
 619 0076 791C     		adds	r1, r7, #1
 620 0078 2144     		add	r1, r1, r4
 621 007a 3046     		mov	r0, r6
 622 007c A146     		mov	r9, r4
 623 007e FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 624 0082 E9E7     		b	.L107
 625              	.L119:
 626 0084 0232     		adds	r2, r2, #2
 627 0086 9145     		cmp	r9, r2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 12


 628 0088 F4DC     		bgt	.L111
 629 008a F1E7     		b	.L105
 630              	.L108:
 631 008c 08F1FF39 		add	r9, r8, #-1
 632 0090 09EB0701 		add	r1, r9, r7
 633 0094 3046     		mov	r0, r6
 634 0096 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 635 009a 4D44     		add	r5, r5, r9
 636 009c DCE7     		b	.L107
 637              	.L120:
 638 009e 15F80930 		ldrb	r3, [r5, r9]	@ zero_extendqisi2
 639 00a2 0D2B     		cmp	r3, #13
 640 00a4 4946     		mov	r1, r9
 641 00a6 E3D1     		bne	.L105
 642 00a8 DEE7     		b	.L110
 643              	.L113:
 644 00aa 4C46     		mov	r4, r9
 645 00ac D0E7     		b	.L99
 646              	.L100:
 647 00ae B9F1010F 		cmp	r9, #1
 648 00b2 4FF00004 		mov	r4, #0
 649 00b6 DED0     		beq	.L118
 650 00b8 2146     		mov	r1, r4
 651 00ba D5E7     		b	.L110
 652              	.L101:
 653 00bc 0024     		movs	r4, #0
 654 00be D9E7     		b	.L111
 655              	.L121:
 656 00c0 0237     		adds	r7, r7, #2
 657 00c2 3944     		add	r1, r1, r7
 658 00c4 3046     		mov	r0, r6
 659 00c6 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 660 00ca 2544     		add	r5, r5, r4
 661 00cc A146     		mov	r9, r4
 662 00ce C3E7     		b	.L107
 663              		.size	_ZN9FileStore8ReadLineEPcj, .-_ZN9FileStore8ReadLineEPcj
 664              		.section	.text._ZN9FileStore5StoreEPKcjPj,"ax",%progbits
 665              		.align	1
 666              		.p2align 2,,3
 667              		.global	_ZN9FileStore5StoreEPKcjPj
 668              		.syntax unified
 669              		.thumb
 670              		.thumb_func
 671              		.fpu fpv4-sp-d16
 672              		.type	_ZN9FileStore5StoreEPKcjPj, %function
 673              	_ZN9FileStore5StoreEPKcjPj:
 674              		@ args = 0, pretend = 0, frame = 0
 675              		@ frame_needed = 0, uses_anonymous_args = 0
 676 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 677 0004 0C4C     		ldr	r4, .L125
 678 0006 0546     		mov	r5, r0
 679 0008 9946     		mov	r9, r3
 680 000a 0F46     		mov	r7, r1
 681 000c 9046     		mov	r8, r2
 682 000e 3430     		adds	r0, r0, #52
 683 0010 D4F89060 		ldr	r6, [r4, #144]
 684 0014 FFF7FEFF 		bl	_ZN5CRC326UpdateEPKcj
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 13


 685 0018 4B46     		mov	r3, r9
 686 001a 4246     		mov	r2, r8
 687 001c 3946     		mov	r1, r7
 688 001e 2846     		mov	r0, r5
 689 0020 FFF7FEFF 		bl	f_write
 690 0024 054A     		ldr	r2, .L125+4
 691 0026 D4F89030 		ldr	r3, [r4, #144]
 692 002a 1168     		ldr	r1, [r2]
 693 002c 9B1B     		subs	r3, r3, r6
 694 002e 9942     		cmp	r1, r3
 695 0030 38BF     		it	cc
 696 0032 1360     		strcc	r3, [r2]
 697 0034 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 698              	.L126:
 699              		.align	2
 700              	.L125:
 701 0038 00000940 		.word	1074331648
 702 003c 00000000 		.word	.LANCHOR4
 703              		.size	_ZN9FileStore5StoreEPKcjPj, .-_ZN9FileStore5StoreEPKcjPj
 704              		.section	.text._ZN9FileStore5WriteEPKcj,"ax",%progbits
 705              		.align	1
 706              		.p2align 2,,3
 707              		.global	_ZN9FileStore5WriteEPKcj
 708              		.syntax unified
 709              		.thumb
 710              		.thumb_func
 711              		.fpu fpv4-sp-d16
 712              		.type	_ZN9FileStore5WriteEPKcj, %function
 713              	_ZN9FileStore5WriteEPKcj:
 714              		@ args = 0, pretend = 0, frame = 8
 715              		@ frame_needed = 0, uses_anonymous_args = 0
 716 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 717 0004 90F83140 		ldrb	r4, [r0, #49]	@ zero_extendqisi2
 718 0008 83B0     		sub	sp, sp, #12
 719 000a 002C     		cmp	r4, #0
 720 000c 50D0     		beq	.L129
 721 000e 022C     		cmp	r4, #2
 722 0010 4AD8     		bhi	.L139
 723 0012 D0F82890 		ldr	r9, [r0, #40]
 724 0016 0023     		movs	r3, #0
 725 0018 0646     		mov	r6, r0
 726 001a 1546     		mov	r5, r2
 727 001c 0093     		str	r3, [sp]
 728 001e B9F1000F 		cmp	r9, #0
 729 0022 50D0     		beq	.L149
 730 0024 0F46     		mov	r7, r1
 731 0026 9846     		mov	r8, r3
 732 0028 1946     		mov	r1, r3
 733 002a 05E0     		b	.L131
 734              	.L133:
 735 002c 0099     		ldr	r1, [sp]
 736 002e 2144     		add	r1, r1, r4
 737 0030 0091     		str	r1, [sp]
 738              	.L135:
 739 0032 8D42     		cmp	r5, r1
 740 0034 51D0     		beq	.L142
 741 0036 8146     		mov	r9, r0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 14


 742              	.L131:
 743 0038 D9F80430 		ldr	r3, [r9, #4]
 744 003c 6C1A     		subs	r4, r5, r1
 745 003e C3F50052 		rsb	r2, r3, #8192
 746 0042 9442     		cmp	r4, r2
 747 0044 28BF     		it	cs
 748 0046 1446     		movcs	r4, r2
 749 0048 09F10800 		add	r0, r9, #8
 750 004c 1844     		add	r0, r0, r3
 751 004e 2246     		mov	r2, r4
 752 0050 3944     		add	r1, r1, r7
 753 0052 FFF7FEFF 		bl	memcpy
 754 0056 D9F80430 		ldr	r3, [r9, #4]
 755 005a B06A     		ldr	r0, [r6, #40]
 756 005c 2344     		add	r3, r3, r4
 757 005e C9F80430 		str	r3, [r9, #4]
 758 0062 4268     		ldr	r2, [r0, #4]
 759 0064 B2F5005F 		cmp	r2, #8192
 760 0068 E0D1     		bne	.L133
 761 006a 00F10801 		add	r1, r0, #8
 762 006e 01AB     		add	r3, sp, #4
 763 0070 3046     		mov	r0, r6
 764 0072 FFF7FEFF 		bl	_ZN9FileStore5StoreEPKcjPj
 765 0076 0199     		ldr	r1, [sp, #4]
 766 0078 0346     		mov	r3, r0
 767 007a B06A     		ldr	r0, [r6, #40]
 768 007c B1F5005F 		cmp	r1, #8192
 769 0080 C0F80480 		str	r8, [r0, #4]
 770 0084 1A46     		mov	r2, r3
 771 0086 22D1     		bne	.L132
 772 0088 0099     		ldr	r1, [sp]
 773 008a 2144     		add	r1, r1, r4
 774 008c 0091     		str	r1, [sp]
 775 008e 002B     		cmp	r3, #0
 776 0090 CFD0     		beq	.L135
 777              	.L136:
 778 0092 1449     		ldr	r1, .L150
 779 0094 144A     		ldr	r2, .L150+4
 780 0096 4868     		ldr	r0, [r1, #4]
 781 0098 40F2B511 		movw	r1, #437
 782 009c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 783 00a0 0020     		movs	r0, #0
 784 00a2 03B0     		add	sp, sp, #12
 785              		@ sp needed
 786 00a4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 787              	.L139:
 788 00a8 0020     		movs	r0, #0
 789 00aa 03B0     		add	sp, sp, #12
 790              		@ sp needed
 791 00ac BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 792              	.L129:
 793 00b0 40F26D13 		movw	r3, #365
 794 00b4 0D4A     		ldr	r2, .L150+8
 795 00b6 0E49     		ldr	r1, .L150+12
 796 00b8 0A48     		ldr	r0, .L150
 797 00ba FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 798 00be 2046     		mov	r0, r4
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 15


 799 00c0 03B0     		add	sp, sp, #12
 800              		@ sp needed
 801 00c2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 802              	.L149:
 803 00c6 6B46     		mov	r3, sp
 804 00c8 FFF7FEFF 		bl	_ZN9FileStore5StoreEPKcjPj
 805 00cc 0246     		mov	r2, r0
 806              	.L132:
 807 00ce 12B9     		cbnz	r2, .L148
 808 00d0 009B     		ldr	r3, [sp]
 809 00d2 9D42     		cmp	r5, r3
 810 00d4 01D0     		beq	.L142
 811              	.L148:
 812 00d6 1346     		mov	r3, r2
 813 00d8 DBE7     		b	.L136
 814              	.L142:
 815 00da 0120     		movs	r0, #1
 816 00dc 03B0     		add	sp, sp, #12
 817              		@ sp needed
 818 00de BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 819              	.L151:
 820 00e2 00BF     		.align	2
 821              	.L150:
 822 00e4 00000000 		.word	reprap
 823 00e8 00000000 		.word	.LC6
 824 00ec 00000000 		.word	.LANCHOR5
 825 00f0 00000000 		.word	.LC4
 826              		.size	_ZN9FileStore5WriteEPKcj, .-_ZN9FileStore5WriteEPKcj
 827              		.section	.text._ZN9FileStore5WriteEc,"ax",%progbits
 828              		.align	1
 829              		.p2align 2,,3
 830              		.global	_ZN9FileStore5WriteEc
 831              		.syntax unified
 832              		.thumb
 833              		.thumb_func
 834              		.fpu fpv4-sp-d16
 835              		.type	_ZN9FileStore5WriteEc, %function
 836              	_ZN9FileStore5WriteEc:
 837              		@ args = 0, pretend = 0, frame = 8
 838              		@ frame_needed = 0, uses_anonymous_args = 0
 839 0000 00B5     		push	{lr}
 840 0002 83B0     		sub	sp, sp, #12
 841 0004 02AB     		add	r3, sp, #8
 842 0006 0122     		movs	r2, #1
 843 0008 03F8011D 		strb	r1, [r3, #-1]!
 844 000c 1946     		mov	r1, r3
 845 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 846 0012 03B0     		add	sp, sp, #12
 847              		@ sp needed
 848 0014 5DF804FB 		ldr	pc, [sp], #4
 849              		.size	_ZN9FileStore5WriteEc, .-_ZN9FileStore5WriteEc
 850              		.section	.text._ZN9FileStore5WriteEPKc,"ax",%progbits
 851              		.align	1
 852              		.p2align 2,,3
 853              		.global	_ZN9FileStore5WriteEPKc
 854              		.syntax unified
 855              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 16


 856              		.thumb_func
 857              		.fpu fpv4-sp-d16
 858              		.type	_ZN9FileStore5WriteEPKc, %function
 859              	_ZN9FileStore5WriteEPKc:
 860              		@ args = 0, pretend = 0, frame = 0
 861              		@ frame_needed = 0, uses_anonymous_args = 0
 862 0000 38B5     		push	{r3, r4, r5, lr}
 863 0002 0546     		mov	r5, r0
 864 0004 0846     		mov	r0, r1
 865 0006 0C46     		mov	r4, r1
 866 0008 FFF7FEFF 		bl	strlen
 867 000c 2146     		mov	r1, r4
 868 000e 0246     		mov	r2, r0
 869 0010 2846     		mov	r0, r5
 870 0012 BDE83840 		pop	{r3, r4, r5, lr}
 871 0016 FFF7FEBF 		b	_ZN9FileStore5WriteEPKcj
 872              		.size	_ZN9FileStore5WriteEPKc, .-_ZN9FileStore5WriteEPKc
 873 001a 00BF     		.section	.text._ZN9FileStore5FlushEv,"ax",%progbits
 874              		.align	1
 875              		.p2align 2,,3
 876              		.global	_ZN9FileStore5FlushEv
 877              		.syntax unified
 878              		.thumb
 879              		.thumb_func
 880              		.fpu fpv4-sp-d16
 881              		.type	_ZN9FileStore5FlushEv, %function
 882              	_ZN9FileStore5FlushEv:
 883              		@ args = 0, pretend = 0, frame = 8
 884              		@ frame_needed = 0, uses_anonymous_args = 0
 885 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 886 0004 012B     		cmp	r3, #1
 887 0006 32D0     		beq	.L164
 888 0008 30B5     		push	{r4, r5, lr}
 889 000a 83B0     		sub	sp, sp, #12
 890 000c 25D3     		bcc	.L159
 891 000e 022B     		cmp	r3, #2
 892 0010 20D1     		bne	.L175
 893 0012 816A     		ldr	r1, [r0, #40]
 894 0014 0446     		mov	r4, r0
 895 0016 09B1     		cbz	r1, .L161
 896 0018 4D68     		ldr	r5, [r1, #4]
 897 001a 3DB9     		cbnz	r5, .L176
 898              	.L161:
 899 001c 2046     		mov	r0, r4
 900 001e FFF7FEFF 		bl	f_sync
 901 0022 B0FA80F0 		clz	r0, r0
 902 0026 4009     		lsrs	r0, r0, #5
 903 0028 03B0     		add	sp, sp, #12
 904              		@ sp needed
 905 002a 30BD     		pop	{r4, r5, pc}
 906              	.L176:
 907 002c 0831     		adds	r1, r1, #8
 908 002e 01AB     		add	r3, sp, #4
 909 0030 2A46     		mov	r2, r5
 910 0032 FFF7FEFF 		bl	_ZN9FileStore5StoreEPKcjPj
 911 0036 A26A     		ldr	r2, [r4, #40]
 912 0038 0021     		movs	r1, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 17


 913 003a 0346     		mov	r3, r0
 914 003c 5160     		str	r1, [r2, #4]
 915 003e 10B9     		cbnz	r0, .L162
 916 0040 019A     		ldr	r2, [sp, #4]
 917 0042 9542     		cmp	r5, r2
 918 0044 EAD0     		beq	.L161
 919              	.L162:
 920 0046 0B49     		ldr	r1, .L177
 921 0048 0B4A     		ldr	r2, .L177+4
 922 004a 4868     		ldr	r0, [r1, #4]
 923 004c 40F2B511 		movw	r1, #437
 924 0050 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 925              	.L175:
 926 0054 0020     		movs	r0, #0
 927 0056 03B0     		add	sp, sp, #12
 928              		@ sp needed
 929 0058 30BD     		pop	{r4, r5, pc}
 930              	.L159:
 931 005a 40F2A313 		movw	r3, #419
 932 005e 074A     		ldr	r2, .L177+8
 933 0060 0749     		ldr	r1, .L177+12
 934 0062 0448     		ldr	r0, .L177
 935 0064 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 936 0068 0020     		movs	r0, #0
 937 006a 03B0     		add	sp, sp, #12
 938              		@ sp needed
 939 006c 30BD     		pop	{r4, r5, pc}
 940              	.L164:
 941 006e 1846     		mov	r0, r3
 942 0070 7047     		bx	lr
 943              	.L178:
 944 0072 00BF     		.align	2
 945              	.L177:
 946 0074 00000000 		.word	reprap
 947 0078 00000000 		.word	.LC7
 948 007c 00000000 		.word	.LANCHOR6
 949 0080 00000000 		.word	.LC4
 950              		.size	_ZN9FileStore5FlushEv, .-_ZN9FileStore5FlushEv
 951              		.section	.text._ZN9FileStore10ForceCloseEv,"ax",%progbits
 952              		.align	1
 953              		.p2align 2,,3
 954              		.global	_ZN9FileStore10ForceCloseEv
 955              		.syntax unified
 956              		.thumb
 957              		.thumb_func
 958              		.fpu fpv4-sp-d16
 959              		.type	_ZN9FileStore10ForceCloseEv, %function
 960              	_ZN9FileStore10ForceCloseEv:
 961              		@ args = 0, pretend = 0, frame = 0
 962              		@ frame_needed = 0, uses_anonymous_args = 0
 963 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 964 0004 022B     		cmp	r3, #2
 965 0006 70B5     		push	{r4, r5, r6, lr}
 966 0008 0446     		mov	r4, r0
 967 000a 23D0     		beq	.L196
 968 000c 866A     		ldr	r6, [r0, #40]
 969 000e AEB1     		cbz	r6, .L197
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 18


 970 0010 0125     		movs	r5, #1
 971              	.L184:
 972 0012 144B     		ldr	r3, .L198
 973 0014 5B68     		ldr	r3, [r3, #4]
 974 0016 3146     		mov	r1, r6
 975 0018 D3F8DC0B 		ldr	r0, [r3, #3036]
 976 001c FFF7FEFF 		bl	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer
 977 0020 0023     		movs	r3, #0
 978 0022 A362     		str	r3, [r4, #40]
 979              	.L181:
 980 0024 2046     		mov	r0, r4
 981 0026 FFF7FEFF 		bl	f_close
 982 002a 0023     		movs	r3, #0
 983 002c 84F83030 		strb	r3, [r4, #48]
 984 0030 84F83130 		strb	r3, [r4, #49]
 985 0034 E362     		str	r3, [r4, #44]
 986 0036 45B9     		cbnz	r5, .L183
 987 0038 2846     		mov	r0, r5
 988 003a 70BD     		pop	{r4, r5, r6, pc}
 989              	.L197:
 990 003c FFF7FEFF 		bl	f_close
 991 0040 84F83060 		strb	r6, [r4, #48]
 992 0044 84F83160 		strb	r6, [r4, #49]
 993 0048 E662     		str	r6, [r4, #44]
 994              	.L183:
 995 004a B0FA80F5 		clz	r5, r0
 996 004e 6D09     		lsrs	r5, r5, #5
 997 0050 2846     		mov	r0, r5
 998 0052 70BD     		pop	{r4, r5, r6, pc}
 999              	.L196:
 1000 0054 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 1001 0058 A66A     		ldr	r6, [r4, #40]
 1002 005a 0546     		mov	r5, r0
 1003 005c 002E     		cmp	r6, #0
 1004 005e D8D1     		bne	.L184
 1005 0060 E0E7     		b	.L181
 1006              	.L199:
 1007 0062 00BF     		.align	2
 1008              	.L198:
 1009 0064 00000000 		.word	reprap
 1010              		.size	_ZN9FileStore10ForceCloseEv, .-_ZN9FileStore10ForceCloseEv
 1011              		.section	.text._ZN9FileStore10InvalidateEPK5FATFSb,"ax",%progbits
 1012              		.align	1
 1013              		.p2align 2,,3
 1014              		.global	_ZN9FileStore10InvalidateEPK5FATFSb
 1015              		.syntax unified
 1016              		.thumb
 1017              		.thumb_func
 1018              		.fpu fpv4-sp-d16
 1019              		.type	_ZN9FileStore10InvalidateEPK5FATFSb, %function
 1020              	_ZN9FileStore10InvalidateEPK5FATFSb:
 1021              		@ args = 0, pretend = 0, frame = 0
 1022              		@ frame_needed = 0, uses_anonymous_args = 0
 1023 0000 38B5     		push	{r3, r4, r5, lr}
 1024 0002 0368     		ldr	r3, [r0]
 1025 0004 8B42     		cmp	r3, r1
 1026 0006 01D0     		beq	.L209
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 19


 1027 0008 0020     		movs	r0, #0
 1028 000a 38BD     		pop	{r3, r4, r5, pc}
 1029              	.L209:
 1030 000c 0446     		mov	r4, r0
 1031 000e 1546     		mov	r5, r2
 1032 0010 72B9     		cbnz	r2, .L210
 1033 0012 816A     		ldr	r1, [r0, #40]
 1034 0014 2260     		str	r2, [r4]
 1035 0016 31B1     		cbz	r1, .L203
 1036 0018 094B     		ldr	r3, .L212
 1037 001a 5B68     		ldr	r3, [r3, #4]
 1038 001c D3F8DC0B 		ldr	r0, [r3, #3036]
 1039 0020 FFF7FEFF 		bl	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer
 1040 0024 A562     		str	r5, [r4, #40]
 1041              	.L203:
 1042 0026 0323     		movs	r3, #3
 1043 0028 84F83130 		strb	r3, [r4, #49]
 1044 002c 0120     		movs	r0, #1
 1045              	.L211:
 1046 002e 38BD     		pop	{r3, r4, r5, pc}
 1047              	.L210:
 1048 0030 FFF7FEFF 		bl	_ZN9FileStore10ForceCloseEv
 1049 0034 0323     		movs	r3, #3
 1050 0036 84F83130 		strb	r3, [r4, #49]
 1051 003a 0120     		movs	r0, #1
 1052 003c F7E7     		b	.L211
 1053              	.L213:
 1054 003e 00BF     		.align	2
 1055              	.L212:
 1056 0040 00000000 		.word	reprap
 1057              		.size	_ZN9FileStore10InvalidateEPK5FATFSb, .-_ZN9FileStore10InvalidateEPK5FATFSb
 1058              		.section	.text._ZN9FileStore5CloseEv,"ax",%progbits
 1059              		.align	1
 1060              		.p2align 2,,3
 1061              		.global	_ZN9FileStore5CloseEv
 1062              		.syntax unified
 1063              		.thumb
 1064              		.thumb_func
 1065              		.fpu fpv4-sp-d16
 1066              		.type	_ZN9FileStore5CloseEv, %function
 1067              	_ZN9FileStore5CloseEv:
 1068              		@ args = 0, pretend = 0, frame = 0
 1069              		@ frame_needed = 0, uses_anonymous_args = 0
 1070 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1071 0002 90F83160 		ldrb	r6, [r0, #49]	@ zero_extendqisi2
 1072 0006 6EB3     		cbz	r6, .L216
 1073 0008 022E     		cmp	r6, #2
 1074 000a 0446     		mov	r4, r0
 1075 000c 14D9     		bls	.L229
 1076              		.syntax unified
 1077              	@ 470 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1078 000e EFF31081 		MRS r1, primask
 1079              	@ 0 "" 2
 1080              	@ 330 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1081 0012 72B6     		cpsid i
 1082              	@ 0 "" 2
 1083              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 20


 1084 0014 BFF35F8F 		dmb
 1085              	@ 0 "" 2
 1086              		.thumb
 1087              		.syntax unified
 1088 0018 2A4A     		ldr	r2, .L233
 1089 001a 0023     		movs	r3, #0
 1090 001c 1370     		strb	r3, [r2]
 1091 001e C06A     		ldr	r0, [r0, #44]
 1092 0020 0128     		cmp	r0, #1
 1093 0022 89BF     		itett	hi
 1094 0024 E36A     		ldrhi	r3, [r4, #44]
 1095 0026 84F83130 		strbls	r3, [r4, #49]
 1096 002a 03F1FF33 		addhi	r3, r3, #-1
 1097 002e E362     		strhi	r3, [r4, #44]
 1098 0030 F9B1     		cbz	r1, .L230
 1099              	.L222:
 1100 0032 0125     		movs	r5, #1
 1101              	.L218:
 1102 0034 2846     		mov	r0, r5
 1103 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1104              	.L229:
 1105              		.syntax unified
 1106              	@ 470 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1107 0038 EFF31087 		MRS r7, primask
 1108              	@ 0 "" 2
 1109              	@ 330 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1110 003c 72B6     		cpsid i
 1111              	@ 0 "" 2
 1112              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1113 003e BFF35F8F 		dmb
 1114              	@ 0 "" 2
 1115              		.thumb
 1116              		.syntax unified
 1117 0042 204E     		ldr	r6, .L233
 1118 0044 0023     		movs	r3, #0
 1119 0046 3370     		strb	r3, [r6]
 1120 0048 C36A     		ldr	r3, [r0, #44]
 1121 004a 012B     		cmp	r3, #1
 1122 004c 20D9     		bls	.L219
 1123 004e C36A     		ldr	r3, [r0, #44]
 1124 0050 013B     		subs	r3, r3, #1
 1125 0052 C362     		str	r3, [r0, #44]
 1126 0054 002F     		cmp	r7, #0
 1127 0056 ECD1     		bne	.L222
 1128 0058 0125     		movs	r5, #1
 1129 005a 3570     		strb	r5, [r6]
 1130              		.syntax unified
 1131              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1132 005c BFF35F8F 		dmb
 1133              	@ 0 "" 2
 1134              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1135 0060 62B6     		cpsie i
 1136              	@ 0 "" 2
 1137              		.thumb
 1138              		.syntax unified
 1139 0062 E7E7     		b	.L218
 1140              	.L216:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 21


 1141 0064 FFF7FEFF 		bl	_Z11inInterruptv
 1142 0068 0546     		mov	r5, r0
 1143 006a 48B1     		cbz	r0, .L231
 1144 006c 3546     		mov	r5, r6
 1145 006e 2846     		mov	r0, r5
 1146 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1147              	.L230:
 1148 0072 0125     		movs	r5, #1
 1149 0074 1570     		strb	r5, [r2]
 1150              		.syntax unified
 1151              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1152 0076 BFF35F8F 		dmb
 1153              	@ 0 "" 2
 1154              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1155 007a 62B6     		cpsie i
 1156              	@ 0 "" 2
 1157              		.thumb
 1158              		.syntax unified
 1159 007c 2846     		mov	r0, r5
 1160 007e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1161              	.L231:
 1162 0080 9423     		movs	r3, #148
 1163 0082 114A     		ldr	r2, .L233+4
 1164 0084 1149     		ldr	r1, .L233+8
 1165 0086 1248     		ldr	r0, .L233+12
 1166 0088 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1167 008c 2846     		mov	r0, r5
 1168 008e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1169              	.L219:
 1170 0090 FFF7FEFF 		bl	_Z11inInterruptv
 1171 0094 0546     		mov	r5, r0
 1172 0096 50B9     		cbnz	r0, .L232
 1173 0098 27B9     		cbnz	r7, .L223
 1174 009a 0123     		movs	r3, #1
 1175 009c 3370     		strb	r3, [r6]
 1176              		.syntax unified
 1177              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1178 009e BFF35F8F 		dmb
 1179              	@ 0 "" 2
 1180              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1181 00a2 62B6     		cpsie i
 1182              	@ 0 "" 2
 1183              		.thumb
 1184              		.syntax unified
 1185              	.L223:
 1186 00a4 2046     		mov	r0, r4
 1187 00a6 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1188 00aa FFF7FEBF 		b	_ZN9FileStore10ForceCloseEv
 1189              	.L232:
 1190 00ae 0123     		movs	r3, #1
 1191 00b0 84F83030 		strb	r3, [r4, #48]
 1192 00b4 002F     		cmp	r7, #0
 1193 00b6 BCD1     		bne	.L222
 1194 00b8 3370     		strb	r3, [r6]
 1195              		.syntax unified
 1196              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1197 00ba BFF35F8F 		dmb
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 22


 1198              	@ 0 "" 2
 1199              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1200 00be 62B6     		cpsie i
 1201              	@ 0 "" 2
 1202              		.thumb
 1203              		.syntax unified
 1204 00c0 B8E7     		b	.L218
 1205              	.L234:
 1206 00c2 00BF     		.align	2
 1207              	.L233:
 1208 00c4 00000000 		.word	g_interrupt_enabled
 1209 00c8 00000000 		.word	.LANCHOR7
 1210 00cc 00000000 		.word	.LC4
 1211 00d0 00000000 		.word	reprap
 1212              		.size	_ZN9FileStore5CloseEv, .-_ZN9FileStore5CloseEv
 1213              		.section	.text._ZN9FileStore8TruncateEv,"ax",%progbits
 1214              		.align	1
 1215              		.p2align 2,,3
 1216              		.global	_ZN9FileStore8TruncateEv
 1217              		.syntax unified
 1218              		.thumb
 1219              		.thumb_func
 1220              		.fpu fpv4-sp-d16
 1221              		.type	_ZN9FileStore8TruncateEv, %function
 1222              	_ZN9FileStore8TruncateEv:
 1223              		@ args = 0, pretend = 0, frame = 0
 1224              		@ frame_needed = 0, uses_anonymous_args = 0
 1225 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 1226 0004 012B     		cmp	r3, #1
 1227 0006 10B5     		push	{r4, lr}
 1228 0008 08D9     		bls	.L237
 1229 000a 022B     		cmp	r3, #2
 1230 000c 04D1     		bne	.L245
 1231 000e 0446     		mov	r4, r0
 1232 0010 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 1233 0014 58B9     		cbnz	r0, .L246
 1234 0016 10BD     		pop	{r4, pc}
 1235              	.L245:
 1236 0018 0020     		movs	r0, #0
 1237 001a 10BD     		pop	{r4, pc}
 1238              	.L237:
 1239 001c 40F2C913 		movw	r3, #457
 1240 0020 064A     		ldr	r2, .L247
 1241 0022 0749     		ldr	r1, .L247+4
 1242 0024 0748     		ldr	r0, .L247+8
 1243 0026 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1244 002a 0020     		movs	r0, #0
 1245 002c 10BD     		pop	{r4, pc}
 1246              	.L246:
 1247 002e 2046     		mov	r0, r4
 1248 0030 FFF7FEFF 		bl	f_truncate
 1249 0034 B0FA80F0 		clz	r0, r0
 1250 0038 4009     		lsrs	r0, r0, #5
 1251 003a 10BD     		pop	{r4, pc}
 1252              	.L248:
 1253              		.align	2
 1254              	.L247:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 23


 1255 003c 00000000 		.word	.LANCHOR8
 1256 0040 00000000 		.word	.LC4
 1257 0044 00000000 		.word	reprap
 1258              		.size	_ZN9FileStore8TruncateEv, .-_ZN9FileStore8TruncateEv
 1259              		.section	.text._ZN9FileStore27GetAndClearLongestWriteTimeEv,"ax",%progbits
 1260              		.align	1
 1261              		.p2align 2,,3
 1262              		.global	_ZN9FileStore27GetAndClearLongestWriteTimeEv
 1263              		.syntax unified
 1264              		.thumb
 1265              		.thumb_func
 1266              		.fpu fpv4-sp-d16
 1267              		.type	_ZN9FileStore27GetAndClearLongestWriteTimeEv, %function
 1268              	_ZN9FileStore27GetAndClearLongestWriteTimeEv:
 1269              		@ args = 0, pretend = 0, frame = 0
 1270              		@ frame_needed = 0, uses_anonymous_args = 0
 1271              		@ link register save eliminated.
 1272 0000 054B     		ldr	r3, .L250
 1273 0002 9FED060A 		vldr.32	s0, .L250+4
 1274 0006 D3ED007A 		vldr.32	s15, [r3]	@ int
 1275 000a F8EE677A 		vcvt.f32.u32	s15, s15
 1276 000e 0022     		movs	r2, #0
 1277 0010 1A60     		str	r2, [r3]
 1278 0012 27EE800A 		vmul.f32	s0, s15, s0
 1279 0016 7047     		bx	lr
 1280              	.L251:
 1281              		.align	2
 1282              	.L250:
 1283 0018 00000000 		.word	.LANCHOR4
 1284 001c 65CF8B3A 		.word	982241125
 1285              		.size	_ZN9FileStore27GetAndClearLongestWriteTimeEv, .-_ZN9FileStore27GetAndClearLongestWriteTimeEv
 1286              		.section	.text._ZN9FileStore24GetAndClearMaxRetryCountEv,"ax",%progbits
 1287              		.align	1
 1288              		.p2align 2,,3
 1289              		.global	_ZN9FileStore24GetAndClearMaxRetryCountEv
 1290              		.syntax unified
 1291              		.thumb
 1292              		.thumb_func
 1293              		.fpu fpv4-sp-d16
 1294              		.type	_ZN9FileStore24GetAndClearMaxRetryCountEv, %function
 1295              	_ZN9FileStore24GetAndClearMaxRetryCountEv:
 1296              		@ args = 0, pretend = 0, frame = 0
 1297              		@ frame_needed = 0, uses_anonymous_args = 0
 1298              		@ link register save eliminated.
 1299 0000 FFF7FEBF 		b	_Z30DiskioGetAndClearMaxRetryCountv
 1300              		.size	_ZN9FileStore24GetAndClearMaxRetryCountEv, .-_ZN9FileStore24GetAndClearMaxRetryCountEv
 1301              		.global	_ZN9FileStore16longestWriteTimeE
 1302              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1303              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1304              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1305              	_ZL28cpu_irq_prev_interrupt_state:
 1306 0000 00       		.space	1
 1307              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1308              		.align	2
 1309              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1310              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1311              	_ZL32cpu_irq_critical_section_counter:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 24


 1312 0000 00000000 		.space	4
 1313              		.section	.bss._ZN9FileStore16longestWriteTimeE,"aw",%nobits
 1314              		.align	2
 1315              		.set	.LANCHOR4,. + 0
 1316              		.type	_ZN9FileStore16longestWriteTimeE, %object
 1317              		.size	_ZN9FileStore16longestWriteTimeE, 4
 1318              	_ZN9FileStore16longestWriteTimeE:
 1319 0000 00000000 		.space	4
 1320              		.section	.rodata._ZN9FileStore4OpenEPKcS1_8OpenMode.str1.4,"aMS",%progbits,1
 1321              		.align	2
 1322              	.LC0:
 1323 0000 77726974 		.ascii	"write\000"
 1323      6500
 1324 0006 0000     		.space	2
 1325              	.LC1:
 1326 0008 72656164 		.ascii	"read\000"
 1326      00
 1327 000d 000000   		.space	3
 1328              	.LC2:
 1329 0010 4661696C 		.ascii	"Failed to create folder %s while trying to open fil"
 1329      65642074 
 1329      6F206372 
 1329      65617465 
 1329      20666F6C 
 1330 0043 65202573 		.ascii	"e %s\012\000"
 1330      0A00
 1331 0049 000000   		.space	3
 1332              	.LC3:
 1333 004c 4661696C 		.ascii	"Failed to open %s to %s, error code %d\012\000"
 1333      65642074 
 1333      6F206F70 
 1333      656E2025 
 1333      7320746F 
 1334              		.section	.rodata._ZN9FileStore4ReadEPcj.str1.4,"aMS",%progbits,1
 1335              		.align	2
 1336              	.LC5:
 1337 0000 43616E6E 		.ascii	"Cannot read file, error code %d.\012\000"
 1337      6F742072 
 1337      65616420 
 1337      66696C65 
 1337      2C206572 
 1338              		.section	.rodata._ZN9FileStore5FlushEv.str1.4,"aMS",%progbits,1
 1339              		.align	2
 1340              	.LC7:
 1341 0000 4661696C 		.ascii	"Failed to flush data to file, error code %d. Card m"
 1341      65642074 
 1341      6F20666C 
 1341      75736820 
 1341      64617461 
 1342 0033 61792062 		.ascii	"ay be full.\012\000"
 1342      65206675 
 1342      6C6C2E0A 
 1342      00
 1343              		.section	.rodata._ZN9FileStore5WriteEPKcj.str1.4,"aMS",%progbits,1
 1344              		.align	2
 1345              	.LC6:
 1346 0000 4661696C 		.ascii	"Failed to write to file, error code %d. Card may be"
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 25


 1346      65642074 
 1346      6F207772 
 1346      69746520 
 1346      746F2066 
 1347 0033 2066756C 		.ascii	" full.\012\000"
 1347      6C2E0A00 
 1348              		.section	.rodata._ZN9FileStore9DuplicateEv.str1.4,"aMS",%progbits,1
 1349              		.align	2
 1350              	.LC4:
 1351 0000 2E2E2F73 		.ascii	"../src/Storage/FileStore.cpp\000"
 1351      72632F53 
 1351      746F7261 
 1351      67652F46 
 1351      696C6553 
 1352              		.section	.rodata._ZZN9FileStore4ReadEPcjE8__func__,"a",%progbits
 1353              		.align	2
 1354              		.set	.LANCHOR3,. + 0
 1355              		.type	_ZZN9FileStore4ReadEPcjE8__func__, %object
 1356              		.size	_ZZN9FileStore4ReadEPcjE8__func__, 5
 1357              	_ZZN9FileStore4ReadEPcjE8__func__:
 1358 0000 52656164 		.ascii	"Read\000"
 1358      00
 1359              		.section	.rodata._ZZN9FileStore4SeekEmE8__func__,"a",%progbits
 1360              		.align	2
 1361              		.set	.LANCHOR1,. + 0
 1362              		.type	_ZZN9FileStore4SeekEmE8__func__, %object
 1363              		.size	_ZZN9FileStore4SeekEmE8__func__, 5
 1364              	_ZZN9FileStore4SeekEmE8__func__:
 1365 0000 5365656B 		.ascii	"Seek\000"
 1365      00
 1366              		.section	.rodata._ZZN9FileStore5CloseEvE8__func__,"a",%progbits
 1367              		.align	2
 1368              		.set	.LANCHOR7,. + 0
 1369              		.type	_ZZN9FileStore5CloseEvE8__func__, %object
 1370              		.size	_ZZN9FileStore5CloseEvE8__func__, 6
 1371              	_ZZN9FileStore5CloseEvE8__func__:
 1372 0000 436C6F73 		.ascii	"Close\000"
 1372      6500
 1373              		.section	.rodata._ZZN9FileStore5FlushEvE8__func__,"a",%progbits
 1374              		.align	2
 1375              		.set	.LANCHOR6,. + 0
 1376              		.type	_ZZN9FileStore5FlushEvE8__func__, %object
 1377              		.size	_ZZN9FileStore5FlushEvE8__func__, 6
 1378              	_ZZN9FileStore5FlushEvE8__func__:
 1379 0000 466C7573 		.ascii	"Flush\000"
 1379      6800
 1380              		.section	.rodata._ZZN9FileStore5WriteEPKcjE8__func__,"a",%progbits
 1381              		.align	2
 1382              		.set	.LANCHOR5,. + 0
 1383              		.type	_ZZN9FileStore5WriteEPKcjE8__func__, %object
 1384              		.size	_ZZN9FileStore5WriteEPKcjE8__func__, 6
 1385              	_ZZN9FileStore5WriteEPKcjE8__func__:
 1386 0000 57726974 		.ascii	"Write\000"
 1386      6500
 1387              		.section	.rodata._ZZN9FileStore8TruncateEvE8__func__,"a",%progbits
 1388              		.align	2
 1389              		.set	.LANCHOR8,. + 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccDQnPGc.s 			page 26


 1390              		.type	_ZZN9FileStore8TruncateEvE8__func__, %object
 1391              		.size	_ZZN9FileStore8TruncateEvE8__func__, 9
 1392              	_ZZN9FileStore8TruncateEvE8__func__:
 1393 0000 5472756E 		.ascii	"Truncate\000"
 1393      63617465 
 1393      00
 1394              		.section	.rodata._ZZN9FileStore9DuplicateEvE8__func__,"a",%progbits
 1395              		.align	2
 1396              		.set	.LANCHOR0,. + 0
 1397              		.type	_ZZN9FileStore9DuplicateEvE8__func__, %object
 1398              		.size	_ZZN9FileStore9DuplicateEvE8__func__, 10
 1399              	_ZZN9FileStore9DuplicateEvE8__func__:
 1400 0000 4475706C 		.ascii	"Duplicate\000"
 1400      69636174 
 1400      6500
 1401              		.section	.rodata._ZZNK9FileStore6LengthEvE8__func__,"a",%progbits
 1402              		.align	2
 1403              		.set	.LANCHOR2,. + 0
 1404              		.type	_ZZNK9FileStore6LengthEvE8__func__, %object
 1405              		.size	_ZZNK9FileStore6LengthEvE8__func__, 7
 1406              	_ZZNK9FileStore6LengthEvE8__func__:
 1407 0000 4C656E67 		.ascii	"Length\000"
 1407      746800
 1408              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
