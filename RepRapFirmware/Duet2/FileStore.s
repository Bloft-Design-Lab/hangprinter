ARM GAS  /tmp/ccYWkzDv.s 			page 1


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
  14              		.section	.text._ZN9FileStoreC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN9FileStoreC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN9FileStoreC2Ev, %function
  23              	_ZN9FileStoreC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 38B5     		push	{r3, r4, r5, lr}
  27 0002 0446     		mov	r4, r0
  28 0004 0025     		movs	r5, #0
  29 0006 8562     		str	r5, [r0, #40]
  30 0008 3430     		adds	r0, r0, #52
  31 000a FFF7FEFF 		bl	_ZN5CRC32C1Ev
  32 000e E562     		str	r5, [r4, #44]
  33 0010 84F83150 		strb	r5, [r4, #49]
  34 0014 84F83050 		strb	r5, [r4, #48]
  35 0018 2046     		mov	r0, r4
  36 001a 38BD     		pop	{r3, r4, r5, pc}
  37              		.size	_ZN9FileStoreC2Ev, .-_ZN9FileStoreC2Ev
  38              		.global	_ZN9FileStoreC1Ev
  39              		.thumb_set _ZN9FileStoreC1Ev,_ZN9FileStoreC2Ev
  40              		.section	.text._ZN9FileStore4InitEv,"ax",%progbits
  41              		.align	1
  42              		.p2align 2,,3
  43              		.global	_ZN9FileStore4InitEv
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	_ZN9FileStore4InitEv, %function
  49              	_ZN9FileStore4InitEv:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 0023     		movs	r3, #0
  54 0002 C362     		str	r3, [r0, #44]
  55 0004 80F83130 		strb	r3, [r0, #49]
  56 0008 80F83030 		strb	r3, [r0, #48]
  57 000c 7047     		bx	lr
ARM GAS  /tmp/ccYWkzDv.s 			page 2


  58              		.size	_ZN9FileStore4InitEv, .-_ZN9FileStore4InitEv
  59 000e 00BF     		.section	.text._ZNK9FileStore8IsOpenOnEPK5FATFS,"ax",%progbits
  60              		.align	1
  61              		.p2align 2,,3
  62              		.global	_ZNK9FileStore8IsOpenOnEPK5FATFS
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu fpv4-sp-d16
  67              		.type	_ZNK9FileStore8IsOpenOnEPK5FATFS, %function
  68              	_ZNK9FileStore8IsOpenOnEPK5FATFS:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              		@ link register save eliminated.
  72 0000 C36A     		ldr	r3, [r0, #44]
  73 0002 2BB1     		cbz	r3, .L7
  74 0004 0068     		ldr	r0, [r0]
  75 0006 401A     		subs	r0, r0, r1
  76 0008 B0FA80F0 		clz	r0, r0
  77 000c 4009     		lsrs	r0, r0, #5
  78 000e 7047     		bx	lr
  79              	.L7:
  80 0010 1846     		mov	r0, r3
  81 0012 7047     		bx	lr
  82              		.size	_ZNK9FileStore8IsOpenOnEPK5FATFS, .-_ZNK9FileStore8IsOpenOnEPK5FATFS
  83              		.section	.text._ZN9FileStore4OpenEPKcS1_8OpenMode,"ax",%progbits
  84              		.align	1
  85              		.p2align 2,,3
  86              		.global	_ZN9FileStore4OpenEPKcS1_8OpenMode
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu fpv4-sp-d16
  91              		.type	_ZN9FileStore4OpenEPKcS1_8OpenMode, %function
  92              	_ZN9FileStore4OpenEPKcS1_8OpenMode:
  93              		@ args = 0, pretend = 0, frame = 256
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  96 0004 C3B0     		sub	sp, sp, #268
  97 0006 42AE     		add	r6, sp, #264
  98 0008 9946     		mov	r9, r3
  99 000a 4FF0000B 		mov	fp, #0
 100 000e 06F8F8BD 		strb	fp, [r6, #-248]!
 101 0012 09F1FF37 		add	r7, r9, #-1
 102 0016 8046     		mov	r8, r0
 103 0018 7925     		movs	r5, #121
 104 001a 23A8     		add	r0, sp, #140
 105 001c FFB2     		uxtb	r7, r7
 106 001e CDE92365 		strd	r6, r5, [sp, #140]
 107 0022 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 108 0026 012F     		cmp	r7, #1
 109 0028 32D9     		bls	.L37
 110              	.L23:
 111 002a 0122     		movs	r2, #1
 112 002c 3146     		mov	r1, r6
 113 002e 4046     		mov	r0, r8
 114 0030 FFF7FEFF 		bl	f_open
ARM GAS  /tmp/ccYWkzDv.s 			page 3


 115 0034 C8B1     		cbz	r0, .L20
 116 0036 5A4C     		ldr	r4, .L42
 117              	.L18:
 118 0038 A56C     		ldr	r5, [r4, #72]
 119 003a 15F00105 		ands	r5, r5, #1
 120 003e 10D0     		beq	.L33
 121 0040 584B     		ldr	r3, .L42+4
 122 0042 5949     		ldr	r1, .L42+8
 123 0044 2268     		ldr	r2, [r4]
 124 0046 012F     		cmp	r7, #1
 125 0048 8CBF     		ite	hi
 126 004a 1F46     		movhi	r7, r3
 127 004c 0F46     		movls	r7, r1
 128              	.L21:
 129 004e CDE90070 		strd	r7, r0, [sp]
 130 0052 3346     		mov	r3, r6
 131 0054 1046     		mov	r0, r2
 132 0056 40F2B511 		movw	r1, #437
 133 005a 544A     		ldr	r2, .L42+12
 134 005c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 135 0060 0025     		movs	r5, #0
 136              	.L33:
 137 0062 2846     		mov	r0, r5
 138 0064 43B0     		add	sp, sp, #268
 139              		@ sp needed
 140 0066 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 141              	.L20:
 142 006a 08F13400 		add	r0, r8, #52
 143 006e FFF7FEFF 		bl	_ZN5CRC325ResetEv
 144 0072 012F     		cmp	r7, #1
 145 0074 8CBF     		ite	hi
 146 0076 4FF00109 		movhi	r9, #1
 147 007a 4FF00209 		movls	r9, #2
 148              	.L22:
 149 007e 0125     		movs	r5, #1
 150 0080 2846     		mov	r0, r5
 151 0082 88F83190 		strb	r9, [r8, #49]
 152 0086 C8F82C50 		str	r5, [r8, #44]
 153 008a 43B0     		add	sp, sp, #268
 154              		@ sp needed
 155 008c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 156              	.L37:
 157 0090 23AB     		add	r3, sp, #140
 158 0092 02A8     		add	r0, sp, #8
 159 0094 3146     		mov	r1, r6
 160 0096 CDE90235 		strd	r3, r5, [sp, #8]
 161 009a 8DF88CB0 		strb	fp, [sp, #140]
 162 009e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 163 00a2 9DF88C20 		ldrb	r2, [sp, #140]	@ zero_extendqisi2
 164 00a6 A2F13003 		sub	r3, r2, #48
 165 00aa 092B     		cmp	r3, #9
 166 00ac 3FD9     		bls	.L38
 167              	.L10:
 168 00ae 2F2A     		cmp	r2, #47
 169 00b0 08BF     		it	eq
 170 00b2 0BF1010B 		addeq	fp, fp, #1
 171 00b6 0BF1FF34 		add	r4, fp, #-1
ARM GAS  /tmp/ccYWkzDv.s 			page 4


 172 00ba 23AB     		add	r3, sp, #140
 173 00bc DFF8E0A0 		ldr	r10, .L42
 174 00c0 1C44     		add	r4, r4, r3
 175 00c2 01E0     		b	.L16
 176              	.L13:
 177 00c4 0BF1010B 		add	fp, fp, #1
 178              	.L16:
 179 00c8 7821     		movs	r1, #120
 180 00ca 23A8     		add	r0, sp, #140
 181 00cc FFF7FEFF 		bl	_Z7StrnlenPKcj
 182 00d0 8345     		cmp	fp, r0
 183 00d2 15D2     		bcs	.L12
 184 00d4 14F8012F 		ldrb	r2, [r4, #1]!	@ zero_extendqisi2
 185 00d8 2F2A     		cmp	r2, #47
 186 00da F3D1     		bne	.L13
 187 00dc DAF80020 		ldr	r2, [r10]	@ unaligned
 188 00e0 4FF00003 		mov	r3, #0
 189 00e4 2370     		strb	r3, [r4]
 190 00e6 D2F8B409 		ldr	r0, [r2, #2484]
 191 00ea 23AB     		add	r3, sp, #140
 192 00ec 7922     		movs	r2, #121
 193 00ee 02A9     		add	r1, sp, #8
 194 00f0 0293     		str	r3, [sp, #8]
 195 00f2 0392     		str	r2, [sp, #12]
 196 00f4 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 197 00f8 10B3     		cbz	r0, .L39
 198              	.L14:
 199 00fa 2F22     		movs	r2, #47
 200 00fc 2270     		strb	r2, [r4]
 201 00fe E1E7     		b	.L13
 202              	.L12:
 203 0100 B9F1010F 		cmp	r9, #1
 204 0104 35D0     		beq	.L40
 205 0106 0023     		movs	r3, #0
 206 0108 B9F1020F 		cmp	r9, #2
 207 010c C8F82830 		str	r3, [r8, #40]
 208 0110 8BD1     		bne	.L23
 209 0112 1322     		movs	r2, #19
 210 0114 3146     		mov	r1, r6
 211 0116 4046     		mov	r0, r8
 212 0118 FFF7FEFF 		bl	f_open
 213 011c 20B3     		cbz	r0, .L41
 214 011e 204B     		ldr	r3, .L42
 215 0120 9D6C     		ldr	r5, [r3, #72]
 216 0122 15F00105 		ands	r5, r5, #1
 217 0126 9CD0     		beq	.L33
 218 0128 1A68     		ldr	r2, [r3]
 219 012a 1F4F     		ldr	r7, .L42+8
 220 012c 8FE7     		b	.L21
 221              	.L38:
 222 012e 9DF88D30 		ldrb	r3, [sp, #141]	@ zero_extendqisi2
 223 0132 3A2B     		cmp	r3, #58
 224 0134 04BF     		itt	eq
 225 0136 9DF88E20 		ldrbeq	r2, [sp, #142]	@ zero_extendqisi2
 226 013a 4FF0020B 		moveq	fp, #2
 227 013e B6E7     		b	.L10
 228              	.L39:
ARM GAS  /tmp/ccYWkzDv.s 			page 5


 229 0140 DAF80020 		ldr	r2, [r10]
 230 0144 23A9     		add	r1, sp, #140
 231 0146 D2F8B409 		ldr	r0, [r2, #2484]
 232 014a FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 233 014e 0546     		mov	r5, r0
 234 0150 0028     		cmp	r0, #0
 235 0152 D2D1     		bne	.L14
 236 0154 DAF80000 		ldr	r0, [r10]
 237 0158 0096     		str	r6, [sp]
 238 015a 23AB     		add	r3, sp, #140
 239 015c 144A     		ldr	r2, .L42+16
 240 015e 40F2B511 		movw	r1, #437
 241 0162 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 242 0166 7CE7     		b	.L33
 243              	.L41:
 244 0168 08F13400 		add	r0, r8, #52
 245 016c FFF7FEFF 		bl	_ZN5CRC325ResetEv
 246 0170 85E7     		b	.L22
 247              	.L40:
 248 0172 0B4C     		ldr	r4, .L42
 249 0174 2368     		ldr	r3, [r4]
 250 0176 D3F8B409 		ldr	r0, [r3, #2484]
 251 017a FFF7FEFF 		bl	_ZN11MassStorage19AllocateWriteBufferEv
 252 017e 0A22     		movs	r2, #10
 253 0180 C8F82800 		str	r0, [r8, #40]
 254 0184 3146     		mov	r1, r6
 255 0186 4046     		mov	r0, r8
 256 0188 FFF7FEFF 		bl	f_open
 257 018c 0028     		cmp	r0, #0
 258 018e 7FF453AF 		bne	.L18
 259 0192 08F13400 		add	r0, r8, #52
 260 0196 FFF7FEFF 		bl	_ZN5CRC325ResetEv
 261 019a 4FF00209 		mov	r9, #2
 262 019e 6EE7     		b	.L22
 263              	.L43:
 264              		.align	2
 265              	.L42:
 266 01a0 00000000 		.word	reprap
 267 01a4 08000000 		.word	.LC1
 268 01a8 00000000 		.word	.LC0
 269 01ac 4C000000 		.word	.LC3
 270 01b0 10000000 		.word	.LC2
 271              		.size	_ZN9FileStore4OpenEPKcS1_8OpenMode, .-_ZN9FileStore4OpenEPKcS1_8OpenMode
 272              		.section	.text._ZN9FileStore9DuplicateEv,"ax",%progbits
 273              		.align	1
 274              		.p2align 2,,3
 275              		.global	_ZN9FileStore9DuplicateEv
 276              		.syntax unified
 277              		.thumb
 278              		.thumb_func
 279              		.fpu fpv4-sp-d16
 280              		.type	_ZN9FileStore9DuplicateEv, %function
 281              	_ZN9FileStore9DuplicateEv:
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 0, uses_anonymous_args = 0
 284              		@ link register save eliminated.
 285 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
ARM GAS  /tmp/ccYWkzDv.s 			page 6


 286 0004 ABB1     		cbz	r3, .L46
 287 0006 022B     		cmp	r3, #2
 288 0008 00D9     		bls	.L49
 289              	.L44:
 290 000a 7047     		bx	lr
 291              	.L49:
 292              		.syntax unified
 293              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 294 000c EFF31083 		MRS r3, primask
 295              	@ 0 "" 2
 296              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 297 0010 72B6     		cpsid i
 298              	@ 0 "" 2
 299              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 300 0012 BFF35F8F 		dmb
 301              	@ 0 "" 2
 302              		.thumb
 303              		.syntax unified
 304 0016 0A49     		ldr	r1, .L50
 305 0018 0022     		movs	r2, #0
 306 001a 0A70     		strb	r2, [r1]
 307 001c C26A     		ldr	r2, [r0, #44]
 308 001e 0132     		adds	r2, r2, #1
 309 0020 C262     		str	r2, [r0, #44]
 310 0022 002B     		cmp	r3, #0
 311 0024 F1D1     		bne	.L44
 312 0026 0123     		movs	r3, #1
 313 0028 0B70     		strb	r3, [r1]
 314              		.syntax unified
 315              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 316 002a BFF35F8F 		dmb
 317              	@ 0 "" 2
 318              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 319 002e 62B6     		cpsie i
 320              	@ 0 "" 2
 321              		.thumb
 322              		.syntax unified
 323 0030 7047     		bx	lr
 324              	.L46:
 325 0032 7823     		movs	r3, #120
 326 0034 034A     		ldr	r2, .L50+4
 327 0036 0449     		ldr	r1, .L50+8
 328 0038 0448     		ldr	r0, .L50+12
 329 003a FFF7FEBF 		b	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 330              	.L51:
 331 003e 00BF     		.align	2
 332              	.L50:
 333 0040 00000000 		.word	g_interrupt_enabled
 334 0044 00000000 		.word	.LANCHOR0
 335 0048 00000000 		.word	.LC4
 336 004c 00000000 		.word	reprap
 337              		.size	_ZN9FileStore9DuplicateEv, .-_ZN9FileStore9DuplicateEv
 338              		.section	.text._ZN9FileStore4SeekEm,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	_ZN9FileStore4SeekEm
 342              		.syntax unified
ARM GAS  /tmp/ccYWkzDv.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu fpv4-sp-d16
 346              		.type	_ZN9FileStore4SeekEm, %function
 347              	_ZN9FileStore4SeekEm:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350 0000 10B5     		push	{r4, lr}
 351 0002 90F83140 		ldrb	r4, [r0, #49]	@ zero_extendqisi2
 352 0006 4CB1     		cbz	r4, .L54
 353 0008 022C     		cmp	r4, #2
 354 000a 01D9     		bls	.L59
 355 000c 0020     		movs	r0, #0
 356 000e 10BD     		pop	{r4, pc}
 357              	.L59:
 358 0010 FFF7FEFF 		bl	f_lseek
 359 0014 B0FA80F0 		clz	r0, r0
 360 0018 4009     		lsrs	r0, r0, #5
 361 001a 10BD     		pop	{r4, pc}
 362              	.L54:
 363 001c D923     		movs	r3, #217
 364 001e 034A     		ldr	r2, .L60
 365 0020 0349     		ldr	r1, .L60+4
 366 0022 0448     		ldr	r0, .L60+8
 367 0024 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 368 0028 2046     		mov	r0, r4
 369 002a 10BD     		pop	{r4, pc}
 370              	.L61:
 371              		.align	2
 372              	.L60:
 373 002c 00000000 		.word	.LANCHOR1
 374 0030 00000000 		.word	.LC4
 375 0034 00000000 		.word	reprap
 376              		.size	_ZN9FileStore4SeekEm, .-_ZN9FileStore4SeekEm
 377              		.section	.text._ZNK9FileStore8PositionEv,"ax",%progbits
 378              		.align	1
 379              		.p2align 2,,3
 380              		.global	_ZNK9FileStore8PositionEv
 381              		.syntax unified
 382              		.thumb
 383              		.thumb_func
 384              		.fpu fpv4-sp-d16
 385              		.type	_ZNK9FileStore8PositionEv, %function
 386              	_ZNK9FileStore8PositionEv:
 387              		@ args = 0, pretend = 0, frame = 0
 388              		@ frame_needed = 0, uses_anonymous_args = 0
 389              		@ link register save eliminated.
 390 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 391 0004 013B     		subs	r3, r3, #1
 392 0006 012B     		cmp	r3, #1
 393 0008 94BF     		ite	ls
 394 000a 8068     		ldrls	r0, [r0, #8]
 395 000c 0020     		movhi	r0, #0
 396 000e 7047     		bx	lr
 397              		.size	_ZNK9FileStore8PositionEv, .-_ZNK9FileStore8PositionEv
 398              		.section	.text._ZNK9FileStore11ClusterSizeEv,"ax",%progbits
 399              		.align	1
ARM GAS  /tmp/ccYWkzDv.s 			page 8


 400              		.p2align 2,,3
 401              		.global	_ZNK9FileStore11ClusterSizeEv
 402              		.syntax unified
 403              		.thumb
 404              		.thumb_func
 405              		.fpu fpv4-sp-d16
 406              		.type	_ZNK9FileStore11ClusterSizeEv, %function
 407              	_ZNK9FileStore11ClusterSizeEv:
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 0, uses_anonymous_args = 0
 410              		@ link register save eliminated.
 411 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 412 0004 013B     		subs	r3, r3, #1
 413 0006 012B     		cmp	r3, #1
 414 0008 9DBF     		ittte	ls
 415 000a 0368     		ldrls	r3, [r0]
 416 000c 9878     		ldrbls	r0, [r3, #2]	@ zero_extendqisi2
 417 000e 4002     		lslls	r0, r0, #9
 418 0010 0120     		movhi	r0, #1
 419 0012 7047     		bx	lr
 420              		.size	_ZNK9FileStore11ClusterSizeEv, .-_ZNK9FileStore11ClusterSizeEv
 421              		.section	.text._ZNK9FileStore6LengthEv,"ax",%progbits
 422              		.align	1
 423              		.p2align 2,,3
 424              		.global	_ZNK9FileStore6LengthEv
 425              		.syntax unified
 426              		.thumb
 427              		.thumb_func
 428              		.fpu fpv4-sp-d16
 429              		.type	_ZNK9FileStore6LengthEv, %function
 430              	_ZNK9FileStore6LengthEv:
 431              		@ args = 0, pretend = 0, frame = 0
 432              		@ frame_needed = 0, uses_anonymous_args = 0
 433 0000 08B5     		push	{r3, lr}
 434 0002 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 435 0006 012B     		cmp	r3, #1
 436 0008 12D0     		beq	.L70
 437 000a 09D3     		bcc	.L71
 438 000c 022B     		cmp	r3, #2
 439 000e 05D1     		bne	.L79
 440 0010 836A     		ldr	r3, [r0, #40]
 441 0012 C068     		ldr	r0, [r0, #12]
 442 0014 0BB1     		cbz	r3, .L68
 443 0016 5B68     		ldr	r3, [r3, #4]
 444 0018 1844     		add	r0, r0, r3
 445              	.L68:
 446 001a 08BD     		pop	{r3, pc}
 447              	.L79:
 448 001c 0020     		movs	r0, #0
 449 001e 08BD     		pop	{r3, pc}
 450              	.L71:
 451 0020 FC23     		movs	r3, #252
 452 0022 044A     		ldr	r2, .L80
 453 0024 0449     		ldr	r1, .L80+4
 454 0026 0548     		ldr	r0, .L80+8
 455 0028 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 456 002c 0020     		movs	r0, #0
ARM GAS  /tmp/ccYWkzDv.s 			page 9


 457 002e 08BD     		pop	{r3, pc}
 458              	.L70:
 459 0030 C068     		ldr	r0, [r0, #12]
 460 0032 08BD     		pop	{r3, pc}
 461              	.L81:
 462              		.align	2
 463              	.L80:
 464 0034 00000000 		.word	.LANCHOR2
 465 0038 00000000 		.word	.LC4
 466 003c 00000000 		.word	reprap
 467              		.size	_ZNK9FileStore6LengthEv, .-_ZNK9FileStore6LengthEv
 468              		.section	.text._ZN9FileStore4ReadEPcj,"ax",%progbits
 469              		.align	1
 470              		.p2align 2,,3
 471              		.global	_ZN9FileStore4ReadEPcj
 472              		.syntax unified
 473              		.thumb
 474              		.thumb_func
 475              		.fpu fpv4-sp-d16
 476              		.type	_ZN9FileStore4ReadEPcj, %function
 477              	_ZN9FileStore4ReadEPcj:
 478              		@ args = 0, pretend = 0, frame = 8
 479              		@ frame_needed = 0, uses_anonymous_args = 0
 480 0000 00B5     		push	{lr}
 481 0002 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 482 0006 83B0     		sub	sp, sp, #12
 483 0008 7BB1     		cbz	r3, .L84
 484 000a 022B     		cmp	r3, #2
 485 000c 08D8     		bhi	.L88
 486 000e 01AB     		add	r3, sp, #4
 487 0010 FFF7FEFF 		bl	f_read
 488 0014 0346     		mov	r3, r0
 489 0016 A0B9     		cbnz	r0, .L91
 490 0018 0198     		ldr	r0, [sp, #4]
 491 001a 03B0     		add	sp, sp, #12
 492              		@ sp needed
 493 001c 5DF804FB 		ldr	pc, [sp], #4
 494              	.L88:
 495 0020 4FF0FF30 		mov	r0, #-1
 496 0024 03B0     		add	sp, sp, #12
 497              		@ sp needed
 498 0026 5DF804FB 		ldr	pc, [sp], #4
 499              	.L84:
 500 002a 40F21713 		movw	r3, #279
 501 002e 0B4A     		ldr	r2, .L92
 502 0030 0B49     		ldr	r1, .L92+4
 503 0032 0C48     		ldr	r0, .L92+8
 504 0034 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 505 0038 4FF0FF30 		mov	r0, #-1
 506 003c 03B0     		add	sp, sp, #12
 507              		@ sp needed
 508 003e 5DF804FB 		ldr	pc, [sp], #4
 509              	.L91:
 510 0042 0849     		ldr	r1, .L92+8
 511 0044 084A     		ldr	r2, .L92+12
 512 0046 0868     		ldr	r0, [r1]
 513 0048 40F2B511 		movw	r1, #437
ARM GAS  /tmp/ccYWkzDv.s 			page 10


 514 004c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 515 0050 4FF0FF30 		mov	r0, #-1
 516 0054 03B0     		add	sp, sp, #12
 517              		@ sp needed
 518 0056 5DF804FB 		ldr	pc, [sp], #4
 519              	.L93:
 520 005a 00BF     		.align	2
 521              	.L92:
 522 005c 00000000 		.word	.LANCHOR3
 523 0060 00000000 		.word	.LC4
 524 0064 00000000 		.word	reprap
 525 0068 00000000 		.word	.LC5
 526              		.size	_ZN9FileStore4ReadEPcj, .-_ZN9FileStore4ReadEPcj
 527              		.section	.text._ZN9FileStore4ReadERc,"ax",%progbits
 528              		.align	1
 529              		.p2align 2,,3
 530              		.global	_ZN9FileStore4ReadERc
 531              		.syntax unified
 532              		.thumb
 533              		.thumb_func
 534              		.fpu fpv4-sp-d16
 535              		.type	_ZN9FileStore4ReadERc, %function
 536              	_ZN9FileStore4ReadERc:
 537              		@ args = 0, pretend = 0, frame = 0
 538              		@ frame_needed = 0, uses_anonymous_args = 0
 539 0000 08B5     		push	{r3, lr}
 540 0002 0122     		movs	r2, #1
 541 0004 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 542 0008 0030     		adds	r0, r0, #0
 543 000a 18BF     		it	ne
 544 000c 0120     		movne	r0, #1
 545 000e 08BD     		pop	{r3, pc}
 546              		.size	_ZN9FileStore4ReadERc, .-_ZN9FileStore4ReadERc
 547              		.section	.text._ZN9FileStore8ReadLineEPcj,"ax",%progbits
 548              		.align	1
 549              		.p2align 2,,3
 550              		.global	_ZN9FileStore8ReadLineEPcj
 551              		.syntax unified
 552              		.thumb
 553              		.thumb_func
 554              		.fpu fpv4-sp-d16
 555              		.type	_ZN9FileStore8ReadLineEPcj, %function
 556              	_ZN9FileStore8ReadLineEPcj:
 557              		@ args = 0, pretend = 0, frame = 0
 558              		@ frame_needed = 0, uses_anonymous_args = 0
 559 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 560 0004 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 561 0008 013B     		subs	r3, r3, #1
 562 000a 012B     		cmp	r3, #1
 563 000c 94BF     		ite	ls
 564 000e 8768     		ldrls	r7, [r0, #8]
 565 0010 0027     		movhi	r7, #0
 566 0012 0646     		mov	r6, r0
 567 0014 0D46     		mov	r5, r1
 568 0016 9046     		mov	r8, r2
 569 0018 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 570 001c B0F10009 		subs	r9, r0, #0
ARM GAS  /tmp/ccYWkzDv.s 			page 11


 571 0020 1CDB     		blt	.L96
 572 0022 42D0     		beq	.L113
 573 0024 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 574 0026 0D2B     		cmp	r3, #13
 575 0028 41D0     		beq	.L100
 576 002a 0A2B     		cmp	r3, #10
 577 002c 46D0     		beq	.L101
 578 002e 2846     		mov	r0, r5
 579 0030 0022     		movs	r2, #0
 580 0032 06E0     		b	.L102
 581              	.L106:
 582 0034 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 583 0038 0D2B     		cmp	r3, #13
 584 003a 12D0     		beq	.L103
 585 003c 0A2B     		cmp	r3, #10
 586 003e 21D0     		beq	.L119
 587 0040 2246     		mov	r2, r4
 588              	.L102:
 589 0042 541C     		adds	r4, r2, #1
 590 0044 A145     		cmp	r9, r4
 591 0046 2146     		mov	r1, r4
 592 0048 F4D1     		bne	.L106
 593 004a 0232     		adds	r2, r2, #2
 594 004c 9145     		cmp	r9, r2
 595 004e 26DC     		bgt	.L120
 596              	.L99:
 597 0050 A045     		cmp	r8, r4
 598 0052 1BD0     		beq	.L108
 599 0054 2544     		add	r5, r5, r4
 600 0056 A146     		mov	r9, r4
 601              	.L107:
 602 0058 0023     		movs	r3, #0
 603 005a 2B70     		strb	r3, [r5]
 604              	.L96:
 605 005c 4846     		mov	r0, r9
 606 005e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 607              	.L103:
 608 0062 0232     		adds	r2, r2, #2
 609 0064 9145     		cmp	r9, r2
 610 0066 03DD     		ble	.L105
 611              	.L110:
 612 0068 6B18     		adds	r3, r5, r1
 613 006a 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 614 006c 0A2B     		cmp	r3, #10
 615 006e 27D0     		beq	.L121
 616              	.L105:
 617 0070 A145     		cmp	r9, r4
 618 0072 EDDD     		ble	.L99
 619              	.L111:
 620 0074 2544     		add	r5, r5, r4
 621              	.L118:
 622 0076 791C     		adds	r1, r7, #1
 623 0078 2144     		add	r1, r1, r4
 624 007a 3046     		mov	r0, r6
 625 007c A146     		mov	r9, r4
 626 007e FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 627 0082 E9E7     		b	.L107
ARM GAS  /tmp/ccYWkzDv.s 			page 12


 628              	.L119:
 629 0084 0232     		adds	r2, r2, #2
 630 0086 9145     		cmp	r9, r2
 631 0088 F4DC     		bgt	.L111
 632 008a F1E7     		b	.L105
 633              	.L108:
 634 008c 08F1FF39 		add	r9, r8, #-1
 635 0090 09EB0701 		add	r1, r9, r7
 636 0094 3046     		mov	r0, r6
 637 0096 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 638 009a 4D44     		add	r5, r5, r9
 639 009c DCE7     		b	.L107
 640              	.L120:
 641 009e 15F80930 		ldrb	r3, [r5, r9]	@ zero_extendqisi2
 642 00a2 0D2B     		cmp	r3, #13
 643 00a4 4946     		mov	r1, r9
 644 00a6 E3D1     		bne	.L105
 645 00a8 DEE7     		b	.L110
 646              	.L113:
 647 00aa 4C46     		mov	r4, r9
 648 00ac D0E7     		b	.L99
 649              	.L100:
 650 00ae B9F1010F 		cmp	r9, #1
 651 00b2 4FF00004 		mov	r4, #0
 652 00b6 DED0     		beq	.L118
 653 00b8 2146     		mov	r1, r4
 654 00ba D5E7     		b	.L110
 655              	.L101:
 656 00bc 0024     		movs	r4, #0
 657 00be D9E7     		b	.L111
 658              	.L121:
 659 00c0 0237     		adds	r7, r7, #2
 660 00c2 3944     		add	r1, r1, r7
 661 00c4 3046     		mov	r0, r6
 662 00c6 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 663 00ca 2544     		add	r5, r5, r4
 664 00cc A146     		mov	r9, r4
 665 00ce C3E7     		b	.L107
 666              		.size	_ZN9FileStore8ReadLineEPcj, .-_ZN9FileStore8ReadLineEPcj
 667              		.section	.text._ZN9FileStore5StoreEPKcjPj,"ax",%progbits
 668              		.align	1
 669              		.p2align 2,,3
 670              		.global	_ZN9FileStore5StoreEPKcjPj
 671              		.syntax unified
 672              		.thumb
 673              		.thumb_func
 674              		.fpu fpv4-sp-d16
 675              		.type	_ZN9FileStore5StoreEPKcjPj, %function
 676              	_ZN9FileStore5StoreEPKcjPj:
 677              		@ args = 0, pretend = 0, frame = 0
 678              		@ frame_needed = 0, uses_anonymous_args = 0
 679 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 680 0004 0C4C     		ldr	r4, .L125
 681 0006 0546     		mov	r5, r0
 682 0008 9946     		mov	r9, r3
 683 000a 0F46     		mov	r7, r1
 684 000c 9046     		mov	r8, r2
ARM GAS  /tmp/ccYWkzDv.s 			page 13


 685 000e 3430     		adds	r0, r0, #52
 686 0010 D4F89060 		ldr	r6, [r4, #144]
 687 0014 FFF7FEFF 		bl	_ZN5CRC326UpdateEPKcj
 688 0018 4B46     		mov	r3, r9
 689 001a 4246     		mov	r2, r8
 690 001c 3946     		mov	r1, r7
 691 001e 2846     		mov	r0, r5
 692 0020 FFF7FEFF 		bl	f_write
 693 0024 054A     		ldr	r2, .L125+4
 694 0026 D4F89030 		ldr	r3, [r4, #144]
 695 002a 1168     		ldr	r1, [r2]
 696 002c 9B1B     		subs	r3, r3, r6
 697 002e 9942     		cmp	r1, r3
 698 0030 38BF     		it	cc
 699 0032 1360     		strcc	r3, [r2]
 700 0034 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 701              	.L126:
 702              		.align	2
 703              	.L125:
 704 0038 00000940 		.word	1074331648
 705 003c 00000000 		.word	.LANCHOR4
 706              		.size	_ZN9FileStore5StoreEPKcjPj, .-_ZN9FileStore5StoreEPKcjPj
 707              		.section	.text._ZN9FileStore5WriteEPKcj,"ax",%progbits
 708              		.align	1
 709              		.p2align 2,,3
 710              		.global	_ZN9FileStore5WriteEPKcj
 711              		.syntax unified
 712              		.thumb
 713              		.thumb_func
 714              		.fpu fpv4-sp-d16
 715              		.type	_ZN9FileStore5WriteEPKcj, %function
 716              	_ZN9FileStore5WriteEPKcj:
 717              		@ args = 0, pretend = 0, frame = 8
 718              		@ frame_needed = 0, uses_anonymous_args = 0
 719 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 720 0004 90F83140 		ldrb	r4, [r0, #49]	@ zero_extendqisi2
 721 0008 83B0     		sub	sp, sp, #12
 722 000a 002C     		cmp	r4, #0
 723 000c 50D0     		beq	.L129
 724 000e 022C     		cmp	r4, #2
 725 0010 4AD8     		bhi	.L139
 726 0012 D0F82890 		ldr	r9, [r0, #40]
 727 0016 0023     		movs	r3, #0
 728 0018 0646     		mov	r6, r0
 729 001a 1546     		mov	r5, r2
 730 001c 0093     		str	r3, [sp]
 731 001e B9F1000F 		cmp	r9, #0
 732 0022 50D0     		beq	.L149
 733 0024 0F46     		mov	r7, r1
 734 0026 9846     		mov	r8, r3
 735 0028 1946     		mov	r1, r3
 736 002a 05E0     		b	.L131
 737              	.L133:
 738 002c 0099     		ldr	r1, [sp]
 739 002e 2144     		add	r1, r1, r4
 740 0030 0091     		str	r1, [sp]
 741              	.L135:
ARM GAS  /tmp/ccYWkzDv.s 			page 14


 742 0032 8D42     		cmp	r5, r1
 743 0034 51D0     		beq	.L142
 744 0036 8146     		mov	r9, r0
 745              	.L131:
 746 0038 D9F80430 		ldr	r3, [r9, #4]
 747 003c 6C1A     		subs	r4, r5, r1
 748 003e C3F50052 		rsb	r2, r3, #8192
 749 0042 9442     		cmp	r4, r2
 750 0044 28BF     		it	cs
 751 0046 1446     		movcs	r4, r2
 752 0048 09F10800 		add	r0, r9, #8
 753 004c 1844     		add	r0, r0, r3
 754 004e 2246     		mov	r2, r4
 755 0050 3944     		add	r1, r1, r7
 756 0052 FFF7FEFF 		bl	memcpy
 757 0056 D9F80430 		ldr	r3, [r9, #4]
 758 005a B06A     		ldr	r0, [r6, #40]
 759 005c 2344     		add	r3, r3, r4
 760 005e C9F80430 		str	r3, [r9, #4]
 761 0062 4268     		ldr	r2, [r0, #4]
 762 0064 B2F5005F 		cmp	r2, #8192
 763 0068 E0D1     		bne	.L133
 764 006a 00F10801 		add	r1, r0, #8
 765 006e 01AB     		add	r3, sp, #4
 766 0070 3046     		mov	r0, r6
 767 0072 FFF7FEFF 		bl	_ZN9FileStore5StoreEPKcjPj
 768 0076 0199     		ldr	r1, [sp, #4]
 769 0078 0346     		mov	r3, r0
 770 007a B06A     		ldr	r0, [r6, #40]
 771 007c B1F5005F 		cmp	r1, #8192
 772 0080 C0F80480 		str	r8, [r0, #4]
 773 0084 1A46     		mov	r2, r3
 774 0086 22D1     		bne	.L132
 775 0088 0099     		ldr	r1, [sp]
 776 008a 2144     		add	r1, r1, r4
 777 008c 0091     		str	r1, [sp]
 778 008e 002B     		cmp	r3, #0
 779 0090 CFD0     		beq	.L135
 780              	.L136:
 781 0092 1449     		ldr	r1, .L150
 782 0094 144A     		ldr	r2, .L150+4
 783 0096 0868     		ldr	r0, [r1]
 784 0098 40F2B511 		movw	r1, #437
 785 009c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 786 00a0 0020     		movs	r0, #0
 787 00a2 03B0     		add	sp, sp, #12
 788              		@ sp needed
 789 00a4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 790              	.L139:
 791 00a8 0020     		movs	r0, #0
 792 00aa 03B0     		add	sp, sp, #12
 793              		@ sp needed
 794 00ac BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 795              	.L129:
 796 00b0 40F26B13 		movw	r3, #363
 797 00b4 0D4A     		ldr	r2, .L150+8
 798 00b6 0E49     		ldr	r1, .L150+12
ARM GAS  /tmp/ccYWkzDv.s 			page 15


 799 00b8 0A48     		ldr	r0, .L150
 800 00ba FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 801 00be 2046     		mov	r0, r4
 802 00c0 03B0     		add	sp, sp, #12
 803              		@ sp needed
 804 00c2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 805              	.L149:
 806 00c6 6B46     		mov	r3, sp
 807 00c8 FFF7FEFF 		bl	_ZN9FileStore5StoreEPKcjPj
 808 00cc 0246     		mov	r2, r0
 809              	.L132:
 810 00ce 12B9     		cbnz	r2, .L148
 811 00d0 009B     		ldr	r3, [sp]
 812 00d2 9D42     		cmp	r5, r3
 813 00d4 01D0     		beq	.L142
 814              	.L148:
 815 00d6 1346     		mov	r3, r2
 816 00d8 DBE7     		b	.L136
 817              	.L142:
 818 00da 0120     		movs	r0, #1
 819 00dc 03B0     		add	sp, sp, #12
 820              		@ sp needed
 821 00de BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 822              	.L151:
 823 00e2 00BF     		.align	2
 824              	.L150:
 825 00e4 00000000 		.word	reprap
 826 00e8 00000000 		.word	.LC6
 827 00ec 00000000 		.word	.LANCHOR5
 828 00f0 00000000 		.word	.LC4
 829              		.size	_ZN9FileStore5WriteEPKcj, .-_ZN9FileStore5WriteEPKcj
 830              		.section	.text._ZN9FileStore5WriteEc,"ax",%progbits
 831              		.align	1
 832              		.p2align 2,,3
 833              		.global	_ZN9FileStore5WriteEc
 834              		.syntax unified
 835              		.thumb
 836              		.thumb_func
 837              		.fpu fpv4-sp-d16
 838              		.type	_ZN9FileStore5WriteEc, %function
 839              	_ZN9FileStore5WriteEc:
 840              		@ args = 0, pretend = 0, frame = 8
 841              		@ frame_needed = 0, uses_anonymous_args = 0
 842 0000 00B5     		push	{lr}
 843 0002 83B0     		sub	sp, sp, #12
 844 0004 02AB     		add	r3, sp, #8
 845 0006 0122     		movs	r2, #1
 846 0008 03F8011D 		strb	r1, [r3, #-1]!
 847 000c 1946     		mov	r1, r3
 848 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 849 0012 03B0     		add	sp, sp, #12
 850              		@ sp needed
 851 0014 5DF804FB 		ldr	pc, [sp], #4
 852              		.size	_ZN9FileStore5WriteEc, .-_ZN9FileStore5WriteEc
 853              		.section	.text._ZN9FileStore5WriteEPKc,"ax",%progbits
 854              		.align	1
 855              		.p2align 2,,3
ARM GAS  /tmp/ccYWkzDv.s 			page 16


 856              		.global	_ZN9FileStore5WriteEPKc
 857              		.syntax unified
 858              		.thumb
 859              		.thumb_func
 860              		.fpu fpv4-sp-d16
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
 883              		.fpu fpv4-sp-d16
 884              		.type	_ZN9FileStore5FlushEv, %function
 885              	_ZN9FileStore5FlushEv:
 886              		@ args = 0, pretend = 0, frame = 8
 887              		@ frame_needed = 0, uses_anonymous_args = 0
 888 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 889 0004 012B     		cmp	r3, #1
 890 0006 32D0     		beq	.L164
 891 0008 30B5     		push	{r4, r5, lr}
 892 000a 83B0     		sub	sp, sp, #12
 893 000c 25D3     		bcc	.L159
 894 000e 022B     		cmp	r3, #2
 895 0010 20D1     		bne	.L175
 896 0012 816A     		ldr	r1, [r0, #40]
 897 0014 0446     		mov	r4, r0
 898 0016 09B1     		cbz	r1, .L161
 899 0018 4D68     		ldr	r5, [r1, #4]
 900 001a 3DB9     		cbnz	r5, .L176
 901              	.L161:
 902 001c 2046     		mov	r0, r4
 903 001e FFF7FEFF 		bl	f_sync
 904 0022 B0FA80F0 		clz	r0, r0
 905 0026 4009     		lsrs	r0, r0, #5
 906 0028 03B0     		add	sp, sp, #12
 907              		@ sp needed
 908 002a 30BD     		pop	{r4, r5, pc}
 909              	.L176:
 910 002c 0831     		adds	r1, r1, #8
 911 002e 01AB     		add	r3, sp, #4
 912 0030 2A46     		mov	r2, r5
ARM GAS  /tmp/ccYWkzDv.s 			page 17


 913 0032 FFF7FEFF 		bl	_ZN9FileStore5StoreEPKcjPj
 914 0036 A26A     		ldr	r2, [r4, #40]
 915 0038 0021     		movs	r1, #0
 916 003a 0346     		mov	r3, r0
 917 003c 5160     		str	r1, [r2, #4]
 918 003e 10B9     		cbnz	r0, .L162
 919 0040 019A     		ldr	r2, [sp, #4]
 920 0042 9542     		cmp	r5, r2
 921 0044 EAD0     		beq	.L161
 922              	.L162:
 923 0046 0B49     		ldr	r1, .L177
 924 0048 0B4A     		ldr	r2, .L177+4
 925 004a 0868     		ldr	r0, [r1]
 926 004c 40F2B511 		movw	r1, #437
 927 0050 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 928              	.L175:
 929 0054 0020     		movs	r0, #0
 930 0056 03B0     		add	sp, sp, #12
 931              		@ sp needed
 932 0058 30BD     		pop	{r4, r5, pc}
 933              	.L159:
 934 005a 40F2A113 		movw	r3, #417
 935 005e 074A     		ldr	r2, .L177+8
 936 0060 0749     		ldr	r1, .L177+12
 937 0062 0448     		ldr	r0, .L177
 938 0064 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 939 0068 0020     		movs	r0, #0
 940 006a 03B0     		add	sp, sp, #12
 941              		@ sp needed
 942 006c 30BD     		pop	{r4, r5, pc}
 943              	.L164:
 944 006e 1846     		mov	r0, r3
 945 0070 7047     		bx	lr
 946              	.L178:
 947 0072 00BF     		.align	2
 948              	.L177:
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
 961              		.fpu fpv4-sp-d16
 962              		.type	_ZN9FileStore10ForceCloseEv, %function
 963              	_ZN9FileStore10ForceCloseEv:
 964              		@ args = 0, pretend = 0, frame = 0
 965              		@ frame_needed = 0, uses_anonymous_args = 0
 966 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 967 0004 022B     		cmp	r3, #2
 968 0006 70B5     		push	{r4, r5, r6, lr}
 969 0008 0446     		mov	r4, r0
ARM GAS  /tmp/ccYWkzDv.s 			page 18


 970 000a 23D0     		beq	.L196
 971 000c 866A     		ldr	r6, [r0, #40]
 972 000e AEB1     		cbz	r6, .L197
 973 0010 0125     		movs	r5, #1
 974              	.L184:
 975 0012 144B     		ldr	r3, .L198
 976 0014 1B68     		ldr	r3, [r3]
 977 0016 3146     		mov	r1, r6
 978 0018 D3F8B409 		ldr	r0, [r3, #2484]
 979 001c FFF7FEFF 		bl	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer
 980 0020 0023     		movs	r3, #0
 981 0022 A362     		str	r3, [r4, #40]
 982              	.L181:
 983 0024 2046     		mov	r0, r4
 984 0026 FFF7FEFF 		bl	f_close
 985 002a 0023     		movs	r3, #0
 986 002c 84F83030 		strb	r3, [r4, #48]
 987 0030 84F83130 		strb	r3, [r4, #49]
 988 0034 E362     		str	r3, [r4, #44]
 989 0036 45B9     		cbnz	r5, .L183
 990 0038 2846     		mov	r0, r5
 991 003a 70BD     		pop	{r4, r5, r6, pc}
 992              	.L197:
 993 003c FFF7FEFF 		bl	f_close
 994 0040 84F83060 		strb	r6, [r4, #48]
 995 0044 84F83160 		strb	r6, [r4, #49]
 996 0048 E662     		str	r6, [r4, #44]
 997              	.L183:
 998 004a B0FA80F5 		clz	r5, r0
 999 004e 6D09     		lsrs	r5, r5, #5
 1000 0050 2846     		mov	r0, r5
 1001 0052 70BD     		pop	{r4, r5, r6, pc}
 1002              	.L196:
 1003 0054 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 1004 0058 A66A     		ldr	r6, [r4, #40]
 1005 005a 0546     		mov	r5, r0
 1006 005c 002E     		cmp	r6, #0
 1007 005e D8D1     		bne	.L184
 1008 0060 E0E7     		b	.L181
 1009              	.L199:
 1010 0062 00BF     		.align	2
 1011              	.L198:
 1012 0064 00000000 		.word	reprap
 1013              		.size	_ZN9FileStore10ForceCloseEv, .-_ZN9FileStore10ForceCloseEv
 1014              		.section	.text._ZN9FileStore10InvalidateEPK5FATFSb,"ax",%progbits
 1015              		.align	1
 1016              		.p2align 2,,3
 1017              		.global	_ZN9FileStore10InvalidateEPK5FATFSb
 1018              		.syntax unified
 1019              		.thumb
 1020              		.thumb_func
 1021              		.fpu fpv4-sp-d16
 1022              		.type	_ZN9FileStore10InvalidateEPK5FATFSb, %function
 1023              	_ZN9FileStore10InvalidateEPK5FATFSb:
 1024              		@ args = 0, pretend = 0, frame = 0
 1025              		@ frame_needed = 0, uses_anonymous_args = 0
 1026 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  /tmp/ccYWkzDv.s 			page 19


 1027 0002 0368     		ldr	r3, [r0]
 1028 0004 8B42     		cmp	r3, r1
 1029 0006 01D0     		beq	.L209
 1030 0008 0020     		movs	r0, #0
 1031 000a 38BD     		pop	{r3, r4, r5, pc}
 1032              	.L209:
 1033 000c 0446     		mov	r4, r0
 1034 000e 1546     		mov	r5, r2
 1035 0010 72B9     		cbnz	r2, .L210
 1036 0012 816A     		ldr	r1, [r0, #40]
 1037 0014 2260     		str	r2, [r4]
 1038 0016 31B1     		cbz	r1, .L203
 1039 0018 094B     		ldr	r3, .L212
 1040 001a 1B68     		ldr	r3, [r3]
 1041 001c D3F8B409 		ldr	r0, [r3, #2484]
 1042 0020 FFF7FEFF 		bl	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer
 1043 0024 A562     		str	r5, [r4, #40]
 1044              	.L203:
 1045 0026 0323     		movs	r3, #3
 1046 0028 84F83130 		strb	r3, [r4, #49]
 1047 002c 0120     		movs	r0, #1
 1048              	.L211:
 1049 002e 38BD     		pop	{r3, r4, r5, pc}
 1050              	.L210:
 1051 0030 FFF7FEFF 		bl	_ZN9FileStore10ForceCloseEv
 1052 0034 0323     		movs	r3, #3
 1053 0036 84F83130 		strb	r3, [r4, #49]
 1054 003a 0120     		movs	r0, #1
 1055 003c F7E7     		b	.L211
 1056              	.L213:
 1057 003e 00BF     		.align	2
 1058              	.L212:
 1059 0040 00000000 		.word	reprap
 1060              		.size	_ZN9FileStore10InvalidateEPK5FATFSb, .-_ZN9FileStore10InvalidateEPK5FATFSb
 1061              		.section	.text._ZN9FileStore5CloseEv,"ax",%progbits
 1062              		.align	1
 1063              		.p2align 2,,3
 1064              		.global	_ZN9FileStore5CloseEv
 1065              		.syntax unified
 1066              		.thumb
 1067              		.thumb_func
 1068              		.fpu fpv4-sp-d16
 1069              		.type	_ZN9FileStore5CloseEv, %function
 1070              	_ZN9FileStore5CloseEv:
 1071              		@ args = 0, pretend = 0, frame = 0
 1072              		@ frame_needed = 0, uses_anonymous_args = 0
 1073 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1074 0002 90F83160 		ldrb	r6, [r0, #49]	@ zero_extendqisi2
 1075 0006 6EB3     		cbz	r6, .L216
 1076 0008 022E     		cmp	r6, #2
 1077 000a 0446     		mov	r4, r0
 1078 000c 14D9     		bls	.L229
 1079              		.syntax unified
 1080              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1081 000e EFF31081 		MRS r1, primask
 1082              	@ 0 "" 2
 1083              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
ARM GAS  /tmp/ccYWkzDv.s 			page 20


 1084 0012 72B6     		cpsid i
 1085              	@ 0 "" 2
 1086              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1087 0014 BFF35F8F 		dmb
 1088              	@ 0 "" 2
 1089              		.thumb
 1090              		.syntax unified
 1091 0018 2A4A     		ldr	r2, .L233
 1092 001a 0023     		movs	r3, #0
 1093 001c 1370     		strb	r3, [r2]
 1094 001e C06A     		ldr	r0, [r0, #44]
 1095 0020 0128     		cmp	r0, #1
 1096 0022 89BF     		itett	hi
 1097 0024 E36A     		ldrhi	r3, [r4, #44]
 1098 0026 84F83130 		strbls	r3, [r4, #49]
 1099 002a 03F1FF33 		addhi	r3, r3, #-1
 1100 002e E362     		strhi	r3, [r4, #44]
 1101 0030 F9B1     		cbz	r1, .L230
 1102              	.L222:
 1103 0032 0125     		movs	r5, #1
 1104              	.L218:
 1105 0034 2846     		mov	r0, r5
 1106 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1107              	.L229:
 1108              		.syntax unified
 1109              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1110 0038 EFF31087 		MRS r7, primask
 1111              	@ 0 "" 2
 1112              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1113 003c 72B6     		cpsid i
 1114              	@ 0 "" 2
 1115              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1116 003e BFF35F8F 		dmb
 1117              	@ 0 "" 2
 1118              		.thumb
 1119              		.syntax unified
 1120 0042 204E     		ldr	r6, .L233
 1121 0044 0023     		movs	r3, #0
 1122 0046 3370     		strb	r3, [r6]
 1123 0048 C36A     		ldr	r3, [r0, #44]
 1124 004a 012B     		cmp	r3, #1
 1125 004c 20D9     		bls	.L219
 1126 004e C36A     		ldr	r3, [r0, #44]
 1127 0050 013B     		subs	r3, r3, #1
 1128 0052 C362     		str	r3, [r0, #44]
 1129 0054 002F     		cmp	r7, #0
 1130 0056 ECD1     		bne	.L222
 1131 0058 0125     		movs	r5, #1
 1132 005a 3570     		strb	r5, [r6]
 1133              		.syntax unified
 1134              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1135 005c BFF35F8F 		dmb
 1136              	@ 0 "" 2
 1137              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1138 0060 62B6     		cpsie i
 1139              	@ 0 "" 2
 1140              		.thumb
ARM GAS  /tmp/ccYWkzDv.s 			page 21


 1141              		.syntax unified
 1142 0062 E7E7     		b	.L218
 1143              	.L216:
 1144 0064 FFF7FEFF 		bl	_Z11inInterruptv
 1145 0068 0546     		mov	r5, r0
 1146 006a 48B1     		cbz	r0, .L231
 1147 006c 3546     		mov	r5, r6
 1148 006e 2846     		mov	r0, r5
 1149 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1150              	.L230:
 1151 0072 0125     		movs	r5, #1
 1152 0074 1570     		strb	r5, [r2]
 1153              		.syntax unified
 1154              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1155 0076 BFF35F8F 		dmb
 1156              	@ 0 "" 2
 1157              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1158 007a 62B6     		cpsie i
 1159              	@ 0 "" 2
 1160              		.thumb
 1161              		.syntax unified
 1162 007c 2846     		mov	r0, r5
 1163 007e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1164              	.L231:
 1165 0080 9223     		movs	r3, #146
 1166 0082 114A     		ldr	r2, .L233+4
 1167 0084 1149     		ldr	r1, .L233+8
 1168 0086 1248     		ldr	r0, .L233+12
 1169 0088 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1170 008c 2846     		mov	r0, r5
 1171 008e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1172              	.L219:
 1173 0090 FFF7FEFF 		bl	_Z11inInterruptv
 1174 0094 0546     		mov	r5, r0
 1175 0096 50B9     		cbnz	r0, .L232
 1176 0098 27B9     		cbnz	r7, .L223
 1177 009a 0123     		movs	r3, #1
 1178 009c 3370     		strb	r3, [r6]
 1179              		.syntax unified
 1180              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1181 009e BFF35F8F 		dmb
 1182              	@ 0 "" 2
 1183              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1184 00a2 62B6     		cpsie i
 1185              	@ 0 "" 2
 1186              		.thumb
 1187              		.syntax unified
 1188              	.L223:
 1189 00a4 2046     		mov	r0, r4
 1190 00a6 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1191 00aa FFF7FEBF 		b	_ZN9FileStore10ForceCloseEv
 1192              	.L232:
 1193 00ae 0123     		movs	r3, #1
 1194 00b0 84F83030 		strb	r3, [r4, #48]
 1195 00b4 002F     		cmp	r7, #0
 1196 00b6 BCD1     		bne	.L222
 1197 00b8 3370     		strb	r3, [r6]
ARM GAS  /tmp/ccYWkzDv.s 			page 22


 1198              		.syntax unified
 1199              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1200 00ba BFF35F8F 		dmb
 1201              	@ 0 "" 2
 1202              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1203 00be 62B6     		cpsie i
 1204              	@ 0 "" 2
 1205              		.thumb
 1206              		.syntax unified
 1207 00c0 B8E7     		b	.L218
 1208              	.L234:
 1209 00c2 00BF     		.align	2
 1210              	.L233:
 1211 00c4 00000000 		.word	g_interrupt_enabled
 1212 00c8 00000000 		.word	.LANCHOR7
 1213 00cc 00000000 		.word	.LC4
 1214 00d0 00000000 		.word	reprap
 1215              		.size	_ZN9FileStore5CloseEv, .-_ZN9FileStore5CloseEv
 1216              		.section	.text._ZN9FileStore8TruncateEv,"ax",%progbits
 1217              		.align	1
 1218              		.p2align 2,,3
 1219              		.global	_ZN9FileStore8TruncateEv
 1220              		.syntax unified
 1221              		.thumb
 1222              		.thumb_func
 1223              		.fpu fpv4-sp-d16
 1224              		.type	_ZN9FileStore8TruncateEv, %function
 1225              	_ZN9FileStore8TruncateEv:
 1226              		@ args = 0, pretend = 0, frame = 0
 1227              		@ frame_needed = 0, uses_anonymous_args = 0
 1228 0000 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 1229 0004 012B     		cmp	r3, #1
 1230 0006 10B5     		push	{r4, lr}
 1231 0008 08D9     		bls	.L237
 1232 000a 022B     		cmp	r3, #2
 1233 000c 04D1     		bne	.L245
 1234 000e 0446     		mov	r4, r0
 1235 0010 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 1236 0014 58B9     		cbnz	r0, .L246
 1237 0016 10BD     		pop	{r4, pc}
 1238              	.L245:
 1239 0018 0020     		movs	r0, #0
 1240 001a 10BD     		pop	{r4, pc}
 1241              	.L237:
 1242 001c 40F2C713 		movw	r3, #455
 1243 0020 064A     		ldr	r2, .L247
 1244 0022 0749     		ldr	r1, .L247+4
 1245 0024 0748     		ldr	r0, .L247+8
 1246 0026 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1247 002a 0020     		movs	r0, #0
 1248 002c 10BD     		pop	{r4, pc}
 1249              	.L246:
 1250 002e 2046     		mov	r0, r4
 1251 0030 FFF7FEFF 		bl	f_truncate
 1252 0034 B0FA80F0 		clz	r0, r0
 1253 0038 4009     		lsrs	r0, r0, #5
 1254 003a 10BD     		pop	{r4, pc}
ARM GAS  /tmp/ccYWkzDv.s 			page 23


 1255              	.L248:
 1256              		.align	2
 1257              	.L247:
 1258 003c 00000000 		.word	.LANCHOR8
 1259 0040 00000000 		.word	.LC4
 1260 0044 00000000 		.word	reprap
 1261              		.size	_ZN9FileStore8TruncateEv, .-_ZN9FileStore8TruncateEv
 1262              		.section	.text._ZN9FileStore27GetAndClearLongestWriteTimeEv,"ax",%progbits
 1263              		.align	1
 1264              		.p2align 2,,3
 1265              		.global	_ZN9FileStore27GetAndClearLongestWriteTimeEv
 1266              		.syntax unified
 1267              		.thumb
 1268              		.thumb_func
 1269              		.fpu fpv4-sp-d16
 1270              		.type	_ZN9FileStore27GetAndClearLongestWriteTimeEv, %function
 1271              	_ZN9FileStore27GetAndClearLongestWriteTimeEv:
 1272              		@ args = 0, pretend = 0, frame = 0
 1273              		@ frame_needed = 0, uses_anonymous_args = 0
 1274              		@ link register save eliminated.
 1275 0000 054B     		ldr	r3, .L250
 1276 0002 9FED060A 		vldr.32	s0, .L250+4
 1277 0006 D3ED007A 		vldr.32	s15, [r3]	@ int
 1278 000a F8EE677A 		vcvt.f32.u32	s15, s15
 1279 000e 0022     		movs	r2, #0
 1280 0010 1A60     		str	r2, [r3]
 1281 0012 27EE800A 		vmul.f32	s0, s15, s0
 1282 0016 7047     		bx	lr
 1283              	.L251:
 1284              		.align	2
 1285              	.L250:
 1286 0018 00000000 		.word	.LANCHOR4
 1287 001c 65CF8B3A 		.word	982241125
 1288              		.size	_ZN9FileStore27GetAndClearLongestWriteTimeEv, .-_ZN9FileStore27GetAndClearLongestWriteTimeEv
 1289              		.global	_ZN9FileStore16longestWriteTimeE
 1290              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1291              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1292              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1293              	_ZL28cpu_irq_prev_interrupt_state:
 1294 0000 00       		.space	1
 1295              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1296              		.align	2
 1297              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1298              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1299              	_ZL32cpu_irq_critical_section_counter:
 1300 0000 00000000 		.space	4
 1301              		.section	.bss._ZN9FileStore16longestWriteTimeE,"aw",%nobits
 1302              		.align	2
 1303              		.set	.LANCHOR4,. + 0
 1304              		.type	_ZN9FileStore16longestWriteTimeE, %object
 1305              		.size	_ZN9FileStore16longestWriteTimeE, 4
 1306              	_ZN9FileStore16longestWriteTimeE:
 1307 0000 00000000 		.space	4
 1308              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1309              		.align	2
 1310              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1311              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
ARM GAS  /tmp/ccYWkzDv.s 			page 24


 1312              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1313 0000 00000000 		.space	4
 1314              		.section	.rodata._ZN9FileStore4OpenEPKcS1_8OpenMode.str1.4,"aMS",%progbits,1
 1315              		.align	2
 1316              	.LC0:
 1317 0000 77726974 		.ascii	"write\000"
 1317      6500
 1318 0006 0000     		.space	2
 1319              	.LC1:
 1320 0008 72656164 		.ascii	"read\000"
 1320      00
 1321 000d 000000   		.space	3
 1322              	.LC2:
 1323 0010 4661696C 		.ascii	"Failed to create folder %s while trying to open fil"
 1323      65642074 
 1323      6F206372 
 1323      65617465 
 1323      20666F6C 
 1324 0043 65202573 		.ascii	"e %s\012\000"
 1324      0A00
 1325 0049 000000   		.space	3
 1326              	.LC3:
 1327 004c 43616E27 		.ascii	"Can't open %s to %s, error code %d\012\000"
 1327      74206F70 
 1327      656E2025 
 1327      7320746F 
 1327      2025732C 
 1328              		.section	.rodata._ZN9FileStore4ReadEPcj.str1.4,"aMS",%progbits,1
 1329              		.align	2
 1330              	.LC5:
 1331 0000 43616E6E 		.ascii	"Cannot read file, error code %d.\012\000"
 1331      6F742072 
 1331      65616420 
 1331      66696C65 
 1331      2C206572 
 1332              		.section	.rodata._ZN9FileStore5FlushEv.str1.4,"aMS",%progbits,1
 1333              		.align	2
 1334              	.LC7:
 1335 0000 4661696C 		.ascii	"Failed to flush data to file, error code %d. Card m"
 1335      65642074 
 1335      6F20666C 
 1335      75736820 
 1335      64617461 
 1336 0033 61792062 		.ascii	"ay be full.\012\000"
 1336      65206675 
 1336      6C6C2E0A 
 1336      00
 1337              		.section	.rodata._ZN9FileStore5WriteEPKcj.str1.4,"aMS",%progbits,1
 1338              		.align	2
 1339              	.LC6:
 1340 0000 4661696C 		.ascii	"Failed to write to file, error code %d. Card may be"
 1340      65642074 
 1340      6F207772 
 1340      69746520 
 1340      746F2066 
 1341 0033 2066756C 		.ascii	" full.\012\000"
 1341      6C2E0A00 
ARM GAS  /tmp/ccYWkzDv.s 			page 25


 1342              		.section	.rodata._ZN9FileStore9DuplicateEv.str1.4,"aMS",%progbits,1
 1343              		.align	2
 1344              	.LC4:
 1345 0000 2E2E2F73 		.ascii	"../src/Storage/FileStore.cpp\000"
 1345      72632F53 
 1345      746F7261 
 1345      67652F46 
 1345      696C6553 
 1346              		.section	.rodata._ZZN9FileStore4ReadEPcjE8__func__,"a",%progbits
 1347              		.align	2
 1348              		.set	.LANCHOR3,. + 0
 1349              		.type	_ZZN9FileStore4ReadEPcjE8__func__, %object
 1350              		.size	_ZZN9FileStore4ReadEPcjE8__func__, 5
 1351              	_ZZN9FileStore4ReadEPcjE8__func__:
 1352 0000 52656164 		.ascii	"Read\000"
 1352      00
 1353              		.section	.rodata._ZZN9FileStore4SeekEmE8__func__,"a",%progbits
 1354              		.align	2
 1355              		.set	.LANCHOR1,. + 0
 1356              		.type	_ZZN9FileStore4SeekEmE8__func__, %object
 1357              		.size	_ZZN9FileStore4SeekEmE8__func__, 5
 1358              	_ZZN9FileStore4SeekEmE8__func__:
 1359 0000 5365656B 		.ascii	"Seek\000"
 1359      00
 1360              		.section	.rodata._ZZN9FileStore5CloseEvE8__func__,"a",%progbits
 1361              		.align	2
 1362              		.set	.LANCHOR7,. + 0
 1363              		.type	_ZZN9FileStore5CloseEvE8__func__, %object
 1364              		.size	_ZZN9FileStore5CloseEvE8__func__, 6
 1365              	_ZZN9FileStore5CloseEvE8__func__:
 1366 0000 436C6F73 		.ascii	"Close\000"
 1366      6500
 1367              		.section	.rodata._ZZN9FileStore5FlushEvE8__func__,"a",%progbits
 1368              		.align	2
 1369              		.set	.LANCHOR6,. + 0
 1370              		.type	_ZZN9FileStore5FlushEvE8__func__, %object
 1371              		.size	_ZZN9FileStore5FlushEvE8__func__, 6
 1372              	_ZZN9FileStore5FlushEvE8__func__:
 1373 0000 466C7573 		.ascii	"Flush\000"
 1373      6800
 1374              		.section	.rodata._ZZN9FileStore5WriteEPKcjE8__func__,"a",%progbits
 1375              		.align	2
 1376              		.set	.LANCHOR5,. + 0
 1377              		.type	_ZZN9FileStore5WriteEPKcjE8__func__, %object
 1378              		.size	_ZZN9FileStore5WriteEPKcjE8__func__, 6
 1379              	_ZZN9FileStore5WriteEPKcjE8__func__:
 1380 0000 57726974 		.ascii	"Write\000"
 1380      6500
 1381              		.section	.rodata._ZZN9FileStore8TruncateEvE8__func__,"a",%progbits
 1382              		.align	2
 1383              		.set	.LANCHOR8,. + 0
 1384              		.type	_ZZN9FileStore8TruncateEvE8__func__, %object
 1385              		.size	_ZZN9FileStore8TruncateEvE8__func__, 9
 1386              	_ZZN9FileStore8TruncateEvE8__func__:
 1387 0000 5472756E 		.ascii	"Truncate\000"
 1387      63617465 
 1387      00
ARM GAS  /tmp/ccYWkzDv.s 			page 26


 1388              		.section	.rodata._ZZN9FileStore9DuplicateEvE8__func__,"a",%progbits
 1389              		.align	2
 1390              		.set	.LANCHOR0,. + 0
 1391              		.type	_ZZN9FileStore9DuplicateEvE8__func__, %object
 1392              		.size	_ZZN9FileStore9DuplicateEvE8__func__, 10
 1393              	_ZZN9FileStore9DuplicateEvE8__func__:
 1394 0000 4475706C 		.ascii	"Duplicate\000"
 1394      69636174 
 1394      6500
 1395              		.section	.rodata._ZZNK9FileStore6LengthEvE8__func__,"a",%progbits
 1396              		.align	2
 1397              		.set	.LANCHOR2,. + 0
 1398              		.type	_ZZNK9FileStore6LengthEvE8__func__, %object
 1399              		.size	_ZZNK9FileStore6LengthEvE8__func__, 7
 1400              	_ZZNK9FileStore6LengthEvE8__func__:
 1401 0000 4C656E67 		.ascii	"Length\000"
 1401      746800
 1402              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
