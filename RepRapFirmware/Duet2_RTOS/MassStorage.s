ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 1


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
  13              		.file	"MassStorage.cpp"
  14              		.text
  15              		.section	.text._ZN11MassStorageC2EP8Platform,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN11MassStorageC2EP8Platform
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN11MassStorageC2EP8Platform, %function
  24              	_ZN11MassStorageC2EP8Platform:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 70B5     		push	{r4, r5, r6, lr}
  28 0002 0025     		movs	r5, #0
  29 0004 0646     		mov	r6, r0
  30 0006 C0F83C52 		str	r5, [r0, #572]
  31 000a C0F8DC54 		str	r5, [r0, #1244]
  32 000e C0F84055 		str	r5, [r0, #1344]
  33 0012 C0F8A055 		str	r5, [r0, #1440]
  34 0016 00F5C060 		add	r0, r0, #1536
  35 001a FFF7FEFF 		bl	_ZN14FileInfoParserC1Ev
  36 001e 41F21403 		movw	r3, #4116
  37 0022 06F58054 		add	r4, r6, #4096
  38 0026 F550     		str	r5, [r6, r3]
  39 0028 04F51275 		add	r5, r4, #584
  40 002c 1834     		adds	r4, r4, #24
  41              	.L2:
  42 002e 2046     		mov	r0, r4
  43 0030 3834     		adds	r4, r4, #56
  44 0032 FFF7FEFF 		bl	_ZN9FileStoreC1Ev
  45 0036 A542     		cmp	r5, r4
  46 0038 F9D1     		bne	.L2
  47 003a 3046     		mov	r0, r6
  48 003c 70BD     		pop	{r4, r5, r6, pc}
  49              		.size	_ZN11MassStorageC2EP8Platform, .-_ZN11MassStorageC2EP8Platform
  50              		.global	_ZN11MassStorageC1EP8Platform
  51              		.thumb_set _ZN11MassStorageC1EP8Platform,_ZN11MassStorageC2EP8Platform
  52 003e 00BF     		.section	.text._ZN11MassStorage4InitEv,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	_ZN11MassStorage4InitEv
  56              		.syntax unified
  57              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 2


  58              		.thumb_func
  59              		.fpu fpv4-sp-d16
  60              		.type	_ZN11MassStorage4InitEv, %function
  61              	_ZN11MassStorage4InitEv:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  65 0002 2849     		ldr	r1, .L8
  66 0004 0446     		mov	r4, r0
  67 0006 00F5A860 		add	r0, r0, #1344
  68 000a FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
  69 000e 2649     		ldr	r1, .L8+4
  70 0010 04F5B460 		add	r0, r4, #1440
  71 0014 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
  72 0018 42F20800 		movw	r0, #8200
  73 001c FFF7FEFF 		bl	_Znwj
  74 0020 41F21406 		movw	r6, #4116
  75 0024 0025     		movs	r5, #0
  76 0026 A259     		ldr	r2, [r4, r6]
  77 0028 A051     		str	r0, [r4, r6]
  78 002a 0346     		mov	r3, r0
  79 002c C3E90025 		strd	r2, r5, [r3]
  80 0030 42F20800 		movw	r0, #8200
  81 0034 FFF7FEFF 		bl	_Znwj
  82 0038 A259     		ldr	r2, [r4, r6]
  83 003a A051     		str	r0, [r4, r6]
  84 003c 0346     		mov	r3, r0
  85 003e 4FF40D77 		mov	r7, #564
  86 0042 C3E90025 		strd	r2, r5, [r3]
  87 0046 2946     		mov	r1, r5
  88 0048 3A46     		mov	r2, r7
  89 004a 2046     		mov	r0, r4
  90 004c FFF7FEFF 		bl	memset
  91 0050 3523     		movs	r3, #53
  92 0052 84F89C32 		strb	r3, [r4, #668]
  93 0056 04F50F70 		add	r0, r4, #572
  94 005a 84F89E52 		strb	r5, [r4, #670]
  95 005e 84F89D52 		strb	r5, [r4, #669]
  96 0062 84F89F52 		strb	r5, [r4, #671]
  97 0066 1149     		ldr	r1, .L8+8
  98 0068 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
  99 006c 3A46     		mov	r2, r7
 100 006e 2946     		mov	r1, r5
 101 0070 04F52870 		add	r0, r4, #672
 102 0074 FFF7FEFF 		bl	memset
 103 0078 0223     		movs	r3, #2
 104 007a FF22     		movs	r2, #255
 105 007c 04F2DC40 		addw	r0, r4, #1244
 106 0080 84F83E55 		strb	r5, [r4, #1342]
 107 0084 84F83D55 		strb	r5, [r4, #1341]
 108 0088 84F83C25 		strb	r2, [r4, #1340]
 109 008c 84F83F35 		strb	r3, [r4, #1343]
 110 0090 0749     		ldr	r1, .L8+12
 111 0092 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 112 0096 0749     		ldr	r1, .L8+16
 113 0098 0748     		ldr	r0, .L8+20
 114 009a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 3


 115 009e FFF7FEBF 		b	sd_mmc_init
 116              	.L9:
 117 00a2 00BF     		.align	2
 118              	.L8:
 119 00a4 00000000 		.word	.LC0
 120 00a8 0C000000 		.word	.LC1
 121 00ac 18000000 		.word	.LC2
 122 00b0 1C000000 		.word	.LC3
 123 00b4 00000000 		.word	.LANCHOR0
 124 00b8 00000000 		.word	.LANCHOR1
 125              		.size	_ZN11MassStorage4InitEv, .-_ZN11MassStorage4InitEv
 126              		.section	.text._ZN11MassStorage19AllocateWriteBufferEv,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	_ZN11MassStorage19AllocateWriteBufferEv
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv4-sp-d16
 134              		.type	_ZN11MassStorage19AllocateWriteBufferEv, %function
 135              	_ZN11MassStorage19AllocateWriteBufferEv:
 136              		@ args = 0, pretend = 0, frame = 8
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138 0000 30B5     		push	{r4, r5, lr}
 139 0002 83B0     		sub	sp, sp, #12
 140 0004 0546     		mov	r5, r0
 141 0006 00F5A861 		add	r1, r0, #1344
 142 000a 4FF0FF32 		mov	r2, #-1
 143 000e 6846     		mov	r0, sp
 144 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 145 0014 41F21403 		movw	r3, #4116
 146 0018 EC58     		ldr	r4, [r5, r3]
 147 001a 1CB1     		cbz	r4, .L11
 148 001c 2268     		ldr	r2, [r4]
 149 001e EA50     		str	r2, [r5, r3]
 150 0020 0023     		movs	r3, #0
 151 0022 2360     		str	r3, [r4]
 152              	.L11:
 153 0024 6846     		mov	r0, sp
 154 0026 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 155 002a 2046     		mov	r0, r4
 156 002c 03B0     		add	sp, sp, #12
 157              		@ sp needed
 158 002e 30BD     		pop	{r4, r5, pc}
 159              		.size	_ZN11MassStorage19AllocateWriteBufferEv, .-_ZN11MassStorage19AllocateWriteBufferEv
 160              		.section	.text._ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer,"ax",%progbits
 161              		.align	1
 162              		.p2align 2,,3
 163              		.global	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer
 164              		.syntax unified
 165              		.thumb
 166              		.thumb_func
 167              		.fpu fpv4-sp-d16
 168              		.type	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer, %function
 169              	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer:
 170              		@ args = 0, pretend = 0, frame = 8
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 4


 172 0000 30B5     		push	{r4, r5, lr}
 173 0002 0446     		mov	r4, r0
 174 0004 83B0     		sub	sp, sp, #12
 175 0006 0D46     		mov	r5, r1
 176 0008 6846     		mov	r0, sp
 177 000a 04F5A861 		add	r1, r4, #1344
 178 000e 4FF0FF32 		mov	r2, #-1
 179 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 180 0016 41F21403 		movw	r3, #4116
 181 001a 6846     		mov	r0, sp
 182 001c E258     		ldr	r2, [r4, r3]
 183 001e 2A60     		str	r2, [r5]
 184 0020 E550     		str	r5, [r4, r3]
 185 0022 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 186 0026 03B0     		add	sp, sp, #12
 187              		@ sp needed
 188 0028 30BD     		pop	{r4, r5, pc}
 189              		.size	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer, .-_ZN11MassStorage18ReleaseWriteBuf
 190 002a 00BF     		.section	.text._ZN11MassStorage8OpenFileEPKcS1_8OpenMode,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode, %function
 199              	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode:
 200              		@ args = 0, pretend = 0, frame = 8
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 203 0002 83B0     		sub	sp, sp, #12
 204 0004 0446     		mov	r4, r0
 205 0006 0D46     		mov	r5, r1
 206 0008 1646     		mov	r6, r2
 207 000a 00F5A861 		add	r1, r0, #1344
 208 000e 4FF0FF32 		mov	r2, #-1
 209 0012 6846     		mov	r0, sp
 210 0014 1F46     		mov	r7, r3
 211 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 212 001a 04F58253 		add	r3, r4, #4160
 213 001e 0933     		adds	r3, r3, #9
 214 0020 0022     		movs	r2, #0
 215              	.L22:
 216 0022 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 217 0024 3833     		adds	r3, r3, #56
 218 0026 81B1     		cbz	r1, .L26
 219 0028 0132     		adds	r2, r2, #1
 220 002a 0A2A     		cmp	r2, #10
 221 002c F9D1     		bne	.L22
 222 002e 6846     		mov	r0, sp
 223 0030 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 224 0034 104B     		ldr	r3, .L27
 225 0036 114A     		ldr	r2, .L27+4
 226 0038 5868     		ldr	r0, [r3, #4]	@ unaligned
 227 003a 40F2B511 		movw	r1, #437
 228 003e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 5


 229 0042 0024     		movs	r4, #0
 230 0044 2046     		mov	r0, r4
 231 0046 03B0     		add	sp, sp, #12
 232              		@ sp needed
 233 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 234              	.L26:
 235 004a C2EBC202 		rsb	r2, r2, r2, lsl #3
 236 004e 04EBC202 		add	r2, r4, r2, lsl #3
 237 0052 02F58054 		add	r4, r2, #4096
 238 0056 1834     		adds	r4, r4, #24
 239 0058 3B46     		mov	r3, r7
 240 005a 3246     		mov	r2, r6
 241 005c 2946     		mov	r1, r5
 242 005e 2046     		mov	r0, r4
 243 0060 FFF7FEFF 		bl	_ZN9FileStore4OpenEPKcS1_8OpenMode
 244 0064 0028     		cmp	r0, #0
 245 0066 6846     		mov	r0, sp
 246 0068 08BF     		it	eq
 247 006a 0024     		moveq	r4, #0
 248 006c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 249 0070 2046     		mov	r0, r4
 250 0072 03B0     		add	sp, sp, #12
 251              		@ sp needed
 252 0074 F0BD     		pop	{r4, r5, r6, r7, pc}
 253              	.L28:
 254 0076 00BF     		.align	2
 255              	.L27:
 256 0078 00000000 		.word	reprap
 257 007c 00000000 		.word	.LC4
 258              		.size	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode, .-_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 259              		.section	.text._ZN11MassStorage13CloseAllFilesEv,"ax",%progbits
 260              		.align	1
 261              		.p2align 2,,3
 262              		.global	_ZN11MassStorage13CloseAllFilesEv
 263              		.syntax unified
 264              		.thumb
 265              		.thumb_func
 266              		.fpu fpv4-sp-d16
 267              		.type	_ZN11MassStorage13CloseAllFilesEv, %function
 268              	_ZN11MassStorage13CloseAllFilesEv:
 269              		@ args = 0, pretend = 0, frame = 8
 270              		@ frame_needed = 0, uses_anonymous_args = 0
 271 0000 30B5     		push	{r4, r5, lr}
 272 0002 0546     		mov	r5, r0
 273 0004 83B0     		sub	sp, sp, #12
 274 0006 00F5A861 		add	r1, r0, #1344
 275 000a 05F58054 		add	r4, r5, #4096
 276 000e 6846     		mov	r0, sp
 277 0010 4FF0FF32 		mov	r2, #-1
 278 0014 05F59255 		add	r5, r5, #4672
 279 0018 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 280 001c 1834     		adds	r4, r4, #24
 281 001e 0835     		adds	r5, r5, #8
 282 0020 02E0     		b	.L39
 283              	.L31:
 284 0022 2046     		mov	r0, r4
 285 0024 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 6


 286              	.L39:
 287 0028 94F83130 		ldrb	r3, [r4, #49]	@ zero_extendqisi2
 288 002c 002B     		cmp	r3, #0
 289 002e F8D1     		bne	.L31
 290 0030 3834     		adds	r4, r4, #56
 291 0032 A542     		cmp	r5, r4
 292 0034 F8D1     		bne	.L39
 293 0036 6846     		mov	r0, sp
 294 0038 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 295 003c 03B0     		add	sp, sp, #12
 296              		@ sp needed
 297 003e 30BD     		pop	{r4, r5, pc}
 298              		.size	_ZN11MassStorage13CloseAllFilesEv, .-_ZN11MassStorage13CloseAllFilesEv
 299              		.section	.text._ZN11MassStorage11CombineNameERK9StringRefPKcS4_,"ax",%progbits
 300              		.align	1
 301              		.p2align 2,,3
 302              		.global	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 303              		.syntax unified
 304              		.thumb
 305              		.thumb_func
 306              		.fpu fpv4-sp-d16
 307              		.type	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_, %function
 308              	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_:
 309              		@ args = 0, pretend = 0, frame = 0
 310              		@ frame_needed = 0, uses_anonymous_args = 0
 311 0000 0368     		ldr	r3, [r0]
 312 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 313 0006 4FF00008 		mov	r8, #0
 314 000a 0546     		mov	r5, r0
 315 000c 1646     		mov	r6, r2
 316 000e 83F80080 		strb	r8, [r3]
 317 0012 0F46     		mov	r7, r1
 318 0014 0029     		cmp	r1, #0
 319 0016 4CD0     		beq	.L76
 320 0018 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 321 001a 2F2C     		cmp	r4, #47
 322 001c 2DD0     		beq	.L43
 323 001e 1046     		mov	r0, r2
 324 0020 FFF7FEFF 		bl	strlen
 325 0024 0128     		cmp	r0, #1
 326 0026 03D9     		bls	.L44
 327 0028 A4F13003 		sub	r3, r4, #48
 328 002c 092B     		cmp	r3, #9
 329 002e 50D9     		bls	.L77
 330              	.L44:
 331 0030 781E     		subs	r0, r7, #1
 332 0032 4FF00008 		mov	r8, #0
 333 0036 0AE0     		b	.L46
 334              	.L79:
 335 0038 0A2A     		cmp	r2, #10
 336 003a 0CD0     		beq	.L45
 337 003c 2C68     		ldr	r4, [r5]
 338 003e 04F80820 		strb	r2, [r4, r8]
 339 0042 6A68     		ldr	r2, [r5, #4]
 340 0044 08F10108 		add	r8, r8, #1
 341 0048 013A     		subs	r2, r2, #1
 342 004a 9045     		cmp	r8, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 7


 343 004c 45D2     		bcs	.L78
 344              	.L46:
 345 004e 10F8012F 		ldrb	r2, [r0, #1]!	@ zero_extendqisi2
 346 0052 002A     		cmp	r2, #0
 347 0054 F0D1     		bne	.L79
 348              	.L45:
 349 0056 B8F1000F 		cmp	r8, #0
 350 005a 0AD0     		beq	.L75
 351 005c 4744     		add	r7, r7, r8
 352 005e 17F8012C 		ldrb	r2, [r7, #-1]	@ zero_extendqisi2
 353 0062 2F2A     		cmp	r2, #47
 354 0064 1FBF     		itttt	ne
 355 0066 2A68     		ldrne	r2, [r5]
 356 0068 2F21     		movne	r1, #47
 357 006a 02F80810 		strbne	r1, [r2, r8]
 358 006e 08F10108 		addne	r8, r8, #1
 359              	.L75:
 360 0072 3478     		ldrb	r4, [r6]	@ zero_extendqisi2
 361              	.L42:
 362 0074 BCB1     		cbz	r4, .L49
 363 0076 0A2C     		cmp	r4, #10
 364 0078 15D0     		beq	.L49
 365              	.L43:
 366 007a 6A68     		ldr	r2, [r5, #4]
 367 007c 013A     		subs	r2, r2, #1
 368 007e 9045     		cmp	r8, r2
 369 0080 38BF     		it	cc
 370 0082 3246     		movcc	r2, r6
 371 0084 06D3     		bcc	.L52
 372 0086 17E0     		b	.L50
 373              	.L53:
 374 0088 0A2C     		cmp	r4, #10
 375 008a 0CD0     		beq	.L49
 376 008c 6968     		ldr	r1, [r5, #4]
 377 008e 0139     		subs	r1, r1, #1
 378 0090 4145     		cmp	r1, r8
 379 0092 11D9     		bls	.L50
 380              	.L52:
 381 0094 2968     		ldr	r1, [r5]
 382 0096 01F80840 		strb	r4, [r1, r8]
 383 009a 12F8014F 		ldrb	r4, [r2, #1]!	@ zero_extendqisi2
 384 009e 08F10108 		add	r8, r8, #1
 385 00a2 002C     		cmp	r4, #0
 386 00a4 F0D1     		bne	.L53
 387              	.L49:
 388 00a6 2A68     		ldr	r2, [r5]
 389 00a8 0021     		movs	r1, #0
 390 00aa 02F80810 		strb	r1, [r2, r8]
 391 00ae BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 392              	.L76:
 393 00b2 8846     		mov	r8, r1
 394 00b4 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 395 00b6 DDE7     		b	.L42
 396              	.L50:
 397 00b8 0E4B     		ldr	r3, .L80
 398 00ba 0F4A     		ldr	r2, .L80+4
 399 00bc 5868     		ldr	r0, [r3, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 8


 400 00be 40F2B511 		movw	r1, #437
 401 00c2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 402 00c6 2846     		mov	r0, r5
 403 00c8 0C49     		ldr	r1, .L80+8
 404 00ca BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 405 00ce FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 406              	.L77:
 407 00d2 7378     		ldrb	r3, [r6, #1]	@ zero_extendqisi2
 408 00d4 3A2B     		cmp	r3, #58
 409 00d6 ABD1     		bne	.L44
 410 00d8 CCE7     		b	.L42
 411              	.L78:
 412 00da 064B     		ldr	r3, .L80
 413 00dc 084A     		ldr	r2, .L80+12
 414 00de 5868     		ldr	r0, [r3, #4]
 415 00e0 40F2B511 		movw	r1, #437
 416 00e4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 417 00e8 2846     		mov	r0, r5
 418 00ea 0449     		ldr	r1, .L80+8
 419 00ec BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 420 00f0 FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 421              	.L81:
 422              		.align	2
 423              	.L80:
 424 00f4 00000000 		.word	reprap
 425 00f8 28000000 		.word	.LC7
 426 00fc 20000000 		.word	.LC6
 427 0100 00000000 		.word	.LC5
 428              		.size	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_, .-_ZN11MassStorage11CombineNameERK9StringR
 429              		.section	.text._ZN11MassStorage15AbandonFindNextEv,"ax",%progbits
 430              		.align	1
 431              		.p2align 2,,3
 432              		.global	_ZN11MassStorage15AbandonFindNextEv
 433              		.syntax unified
 434              		.thumb
 435              		.thumb_func
 436              		.fpu fpv4-sp-d16
 437              		.type	_ZN11MassStorage15AbandonFindNextEv, %function
 438              	_ZN11MassStorage15AbandonFindNextEv:
 439              		@ args = 0, pretend = 0, frame = 0
 440              		@ frame_needed = 0, uses_anonymous_args = 0
 441 0000 38B5     		push	{r3, r4, r5, lr}
 442 0002 00F5B464 		add	r4, r0, #1440
 443 0006 2046     		mov	r0, r4
 444 0008 FFF7FEFF 		bl	_ZNK5Mutex9GetHolderEv
 445 000c 0546     		mov	r5, r0
 446 000e FFF7FEFF 		bl	_ZN9RTOSIface14GetCurrentTaskEv
 447 0012 8542     		cmp	r5, r0
 448 0014 00D0     		beq	.L85
 449 0016 38BD     		pop	{r3, r4, r5, pc}
 450              	.L85:
 451 0018 2046     		mov	r0, r4
 452 001a BDE83840 		pop	{r3, r4, r5, lr}
 453 001e FFF7FEBF 		b	_ZNK5Mutex7ReleaseEv
 454              		.size	_ZN11MassStorage15AbandonFindNextEv, .-_ZN11MassStorage15AbandonFindNextEv
 455              		.section	.text._ZN11MassStorage12GetMonthNameEh,"ax",%progbits
 456              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 9


 457              		.p2align 2,,3
 458              		.global	_ZN11MassStorage12GetMonthNameEh
 459              		.syntax unified
 460              		.thumb
 461              		.thumb_func
 462              		.fpu fpv4-sp-d16
 463              		.type	_ZN11MassStorage12GetMonthNameEh, %function
 464              	_ZN11MassStorage12GetMonthNameEh:
 465              		@ args = 0, pretend = 0, frame = 0
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467              		@ link register save eliminated.
 468 0000 0C29     		cmp	r1, #12
 469 0002 9ABF     		itte	ls
 470 0004 024B     		ldrls	r3, .L89
 471 0006 53F82100 		ldrls	r0, [r3, r1, lsl #2]
 472 000a 0248     		ldrhi	r0, .L89+4
 473 000c 7047     		bx	lr
 474              	.L90:
 475 000e 00BF     		.align	2
 476              	.L89:
 477 0010 00000000 		.word	.LANCHOR2
 478 0014 00000000 		.word	.LC8
 479              		.size	_ZN11MassStorage12GetMonthNameEh, .-_ZN11MassStorage12GetMonthNameEh
 480              		.section	.text._ZN11MassStorage6DeleteEPKcS1_b,"ax",%progbits
 481              		.align	1
 482              		.p2align 2,,3
 483              		.global	_ZN11MassStorage6DeleteEPKcS1_b
 484              		.syntax unified
 485              		.thumb
 486              		.thumb_func
 487              		.fpu fpv4-sp-d16
 488              		.type	_ZN11MassStorage6DeleteEPKcS1_b, %function
 489              	_ZN11MassStorage6DeleteEPKcS1_b:
 490              		@ args = 0, pretend = 0, frame = 176
 491              		@ frame_needed = 0, uses_anonymous_args = 0
 492 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 493 0002 ADB0     		sub	sp, sp, #180
 494 0004 2CAD     		add	r5, sp, #176
 495 0006 0024     		movs	r4, #0
 496 0008 05F87C4D 		strb	r4, [r5, #-124]!
 497 000c 7927     		movs	r7, #121
 498 000e 0446     		mov	r4, r0
 499 0010 03A8     		add	r0, sp, #12
 500 0012 1E46     		mov	r6, r3
 501 0014 CDE90357 		strd	r5, r7, [sp, #12]
 502 0018 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 503 001c 04F5A861 		add	r1, r4, #1344
 504 0020 4FF0FF32 		mov	r2, #-1
 505 0024 01A8     		add	r0, sp, #4
 506 0026 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 507 002a 2946     		mov	r1, r5
 508 002c 03A8     		add	r0, sp, #12
 509 002e 0122     		movs	r2, #1
 510 0030 FFF7FEFF 		bl	f_open
 511 0034 68BB     		cbnz	r0, .L92
 512 0036 04F59251 		add	r1, r4, #4672
 513 003a 04F58253 		add	r3, r4, #4160
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 10


 514 003e 0831     		adds	r1, r1, #8
 515 0040 1033     		adds	r3, r3, #16
 516 0042 039C     		ldr	r4, [sp, #12]
 517 0044 DDE90A7C 		ldrd	r7, ip, [sp, #40]
 518 0048 02E0     		b	.L95
 519              	.L93:
 520 004a 9942     		cmp	r1, r3
 521 004c 1ED0     		beq	.L100
 522 004e 1346     		mov	r3, r2
 523              	.L95:
 524 0050 53F8382C 		ldr	r2, [r3, #-56]
 525 0054 A242     		cmp	r2, r4
 526 0056 03F13802 		add	r2, r3, #56
 527 005a F6D1     		bne	.L93
 528 005c 53F81C0C 		ldr	r0, [r3, #-28]
 529 0060 B842     		cmp	r0, r7
 530 0062 F2D1     		bne	.L93
 531 0064 53F8180C 		ldr	r0, [r3, #-24]
 532 0068 6045     		cmp	r0, ip
 533 006a EED1     		bne	.L93
 534 006c 164B     		ldr	r3, .L102
 535 006e 174A     		ldr	r2, .L102+4
 536 0070 5868     		ldr	r0, [r3, #4]
 537 0072 40F2B511 		movw	r1, #437
 538 0076 2B46     		mov	r3, r5
 539 0078 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 540 007c 03A8     		add	r0, sp, #12
 541 007e FFF7FEFF 		bl	f_close
 542 0082 01A8     		add	r0, sp, #4
 543 0084 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 544 0088 0020     		movs	r0, #0
 545 008a 0CE0     		b	.L94
 546              	.L100:
 547 008c 03A8     		add	r0, sp, #12
 548 008e FFF7FEFF 		bl	f_close
 549              	.L92:
 550 0092 2846     		mov	r0, r5
 551 0094 FFF7FEFF 		bl	f_unlink
 552 0098 0446     		mov	r4, r0
 553 009a 01A8     		add	r0, sp, #4
 554 009c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 555 00a0 1CB1     		cbz	r4, .L97
 556 00a2 2EB1     		cbz	r6, .L101
 557 00a4 0020     		movs	r0, #0
 558              	.L94:
 559 00a6 2DB0     		add	sp, sp, #180
 560              		@ sp needed
 561 00a8 F0BD     		pop	{r4, r5, r6, r7, pc}
 562              	.L97:
 563 00aa 0120     		movs	r0, #1
 564 00ac 2DB0     		add	sp, sp, #180
 565              		@ sp needed
 566 00ae F0BD     		pop	{r4, r5, r6, r7, pc}
 567              	.L101:
 568 00b0 054B     		ldr	r3, .L102
 569 00b2 074A     		ldr	r2, .L102+8
 570 00b4 5868     		ldr	r0, [r3, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 11


 571 00b6 40F2B511 		movw	r1, #437
 572 00ba 2B46     		mov	r3, r5
 573 00bc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 574 00c0 3046     		mov	r0, r6
 575 00c2 2DB0     		add	sp, sp, #180
 576              		@ sp needed
 577 00c4 F0BD     		pop	{r4, r5, r6, r7, pc}
 578              	.L103:
 579 00c6 00BF     		.align	2
 580              	.L102:
 581 00c8 00000000 		.word	reprap
 582 00cc 00000000 		.word	.LC9
 583 00d0 2C000000 		.word	.LC10
 584              		.size	_ZN11MassStorage6DeleteEPKcS1_b, .-_ZN11MassStorage6DeleteEPKcS1_b
 585              		.section	.text._ZN11MassStorage13MakeDirectoryEPKcS1_,"ax",%progbits
 586              		.align	1
 587              		.p2align 2,,3
 588              		.global	_ZN11MassStorage13MakeDirectoryEPKcS1_
 589              		.syntax unified
 590              		.thumb
 591              		.thumb_func
 592              		.fpu fpv4-sp-d16
 593              		.type	_ZN11MassStorage13MakeDirectoryEPKcS1_, %function
 594              	_ZN11MassStorage13MakeDirectoryEPKcS1_:
 595              		@ args = 0, pretend = 0, frame = 136
 596              		@ frame_needed = 0, uses_anonymous_args = 0
 597 0000 30B5     		push	{r4, r5, lr}
 598 0002 A3B0     		sub	sp, sp, #140
 599 0004 22AC     		add	r4, sp, #136
 600 0006 0025     		movs	r5, #0
 601 0008 04F87C5D 		strb	r5, [r4, #-124]!
 602 000c 7923     		movs	r3, #121
 603 000e 01A8     		add	r0, sp, #4
 604 0010 CDE90143 		strd	r4, r3, [sp, #4]
 605 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 606 0018 2046     		mov	r0, r4
 607 001a FFF7FEFF 		bl	f_mkdir
 608 001e 10B9     		cbnz	r0, .L108
 609 0020 0120     		movs	r0, #1
 610 0022 23B0     		add	sp, sp, #140
 611              		@ sp needed
 612 0024 30BD     		pop	{r4, r5, pc}
 613              	.L108:
 614 0026 054B     		ldr	r3, .L109
 615 0028 054A     		ldr	r2, .L109+4
 616 002a 5868     		ldr	r0, [r3, #4]
 617 002c 40F2B511 		movw	r1, #437
 618 0030 2346     		mov	r3, r4
 619 0032 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 620 0036 2846     		mov	r0, r5
 621 0038 23B0     		add	sp, sp, #140
 622              		@ sp needed
 623 003a 30BD     		pop	{r4, r5, pc}
 624              	.L110:
 625              		.align	2
 626              	.L109:
 627 003c 00000000 		.word	reprap
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 12


 628 0040 00000000 		.word	.LC11
 629              		.size	_ZN11MassStorage13MakeDirectoryEPKcS1_, .-_ZN11MassStorage13MakeDirectoryEPKcS1_
 630              		.section	.text._ZN11MassStorage13MakeDirectoryEPKc,"ax",%progbits
 631              		.align	1
 632              		.p2align 2,,3
 633              		.global	_ZN11MassStorage13MakeDirectoryEPKc
 634              		.syntax unified
 635              		.thumb
 636              		.thumb_func
 637              		.fpu fpv4-sp-d16
 638              		.type	_ZN11MassStorage13MakeDirectoryEPKc, %function
 639              	_ZN11MassStorage13MakeDirectoryEPKc:
 640              		@ args = 0, pretend = 0, frame = 0
 641              		@ frame_needed = 0, uses_anonymous_args = 0
 642 0000 10B5     		push	{r4, lr}
 643 0002 0846     		mov	r0, r1
 644 0004 0C46     		mov	r4, r1
 645 0006 FFF7FEFF 		bl	f_mkdir
 646 000a 08B9     		cbnz	r0, .L115
 647 000c 0120     		movs	r0, #1
 648 000e 10BD     		pop	{r4, pc}
 649              	.L115:
 650 0010 044B     		ldr	r3, .L116
 651 0012 054A     		ldr	r2, .L116+4
 652 0014 5868     		ldr	r0, [r3, #4]
 653 0016 40F2B511 		movw	r1, #437
 654 001a 2346     		mov	r3, r4
 655 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 656 0020 0020     		movs	r0, #0
 657 0022 10BD     		pop	{r4, pc}
 658              	.L117:
 659              		.align	2
 660              	.L116:
 661 0024 00000000 		.word	reprap
 662 0028 00000000 		.word	.LC11
 663              		.size	_ZN11MassStorage13MakeDirectoryEPKc, .-_ZN11MassStorage13MakeDirectoryEPKc
 664              		.section	.text._ZN11MassStorage6RenameEPKcS1_,"ax",%progbits
 665              		.align	1
 666              		.p2align 2,,3
 667              		.global	_ZN11MassStorage6RenameEPKcS1_
 668              		.syntax unified
 669              		.thumb
 670              		.thumb_func
 671              		.fpu fpv4-sp-d16
 672              		.type	_ZN11MassStorage6RenameEPKcS1_, %function
 673              	_ZN11MassStorage6RenameEPKcS1_:
 674              		@ args = 0, pretend = 0, frame = 0
 675              		@ frame_needed = 0, uses_anonymous_args = 0
 676 0000 30B5     		push	{r4, r5, lr}
 677 0002 1446     		mov	r4, r2
 678 0004 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 679 0006 303A     		subs	r2, r2, #48
 680 0008 092A     		cmp	r2, #9
 681 000a 83B0     		sub	sp, sp, #12
 682 000c 0D46     		mov	r5, r1
 683 000e 03D8     		bhi	.L119
 684 0010 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 13


 685 0012 3A2B     		cmp	r3, #58
 686 0014 08BF     		it	eq
 687 0016 0234     		addeq	r4, r4, #2
 688              	.L119:
 689 0018 2146     		mov	r1, r4
 690 001a 2846     		mov	r0, r5
 691 001c FFF7FEFF 		bl	f_rename
 692 0020 10B9     		cbnz	r0, .L123
 693 0022 0120     		movs	r0, #1
 694 0024 03B0     		add	sp, sp, #12
 695              		@ sp needed
 696 0026 30BD     		pop	{r4, r5, pc}
 697              	.L123:
 698 0028 054B     		ldr	r3, .L124
 699 002a 0094     		str	r4, [sp]
 700 002c 5868     		ldr	r0, [r3, #4]
 701 002e 054A     		ldr	r2, .L124+4
 702 0030 2B46     		mov	r3, r5
 703 0032 40F2B511 		movw	r1, #437
 704 0036 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 705 003a 0020     		movs	r0, #0
 706 003c 03B0     		add	sp, sp, #12
 707              		@ sp needed
 708 003e 30BD     		pop	{r4, r5, pc}
 709              	.L125:
 710              		.align	2
 711              	.L124:
 712 0040 00000000 		.word	reprap
 713 0044 00000000 		.word	.LC12
 714              		.size	_ZN11MassStorage6RenameEPKcS1_, .-_ZN11MassStorage6RenameEPKcS1_
 715              		.section	.text._ZNK11MassStorage10FileExistsEPKc,"ax",%progbits
 716              		.align	1
 717              		.p2align 2,,3
 718              		.global	_ZNK11MassStorage10FileExistsEPKc
 719              		.syntax unified
 720              		.thumb
 721              		.thumb_func
 722              		.fpu fpv4-sp-d16
 723              		.type	_ZNK11MassStorage10FileExistsEPKc, %function
 724              	_ZNK11MassStorage10FileExistsEPKc:
 725              		@ args = 0, pretend = 0, frame = 32
 726              		@ frame_needed = 0, uses_anonymous_args = 0
 727 0000 00B5     		push	{lr}
 728 0002 89B0     		sub	sp, sp, #36
 729 0004 0023     		movs	r3, #0
 730 0006 0846     		mov	r0, r1
 731 0008 6946     		mov	r1, sp
 732 000a 0693     		str	r3, [sp, #24]
 733 000c FFF7FEFF 		bl	f_stat
 734 0010 B0FA80F0 		clz	r0, r0
 735 0014 4009     		lsrs	r0, r0, #5
 736 0016 09B0     		add	sp, sp, #36
 737              		@ sp needed
 738 0018 5DF804FB 		ldr	pc, [sp], #4
 739              		.size	_ZNK11MassStorage10FileExistsEPKc, .-_ZNK11MassStorage10FileExistsEPKc
 740              		.section	.text._ZNK11MassStorage10FileExistsEPKcS1_,"ax",%progbits
 741              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 14


 742              		.p2align 2,,3
 743              		.global	_ZNK11MassStorage10FileExistsEPKcS1_
 744              		.syntax unified
 745              		.thumb
 746              		.thumb_func
 747              		.fpu fpv4-sp-d16
 748              		.type	_ZNK11MassStorage10FileExistsEPKcS1_, %function
 749              	_ZNK11MassStorage10FileExistsEPKcS1_:
 750              		@ args = 0, pretend = 0, frame = 160
 751              		@ frame_needed = 0, uses_anonymous_args = 0
 752 0000 30B5     		push	{r4, r5, lr}
 753 0002 A9B0     		sub	sp, sp, #164
 754 0004 28AC     		add	r4, sp, #160
 755 0006 0025     		movs	r5, #0
 756 0008 04F87C5D 		strb	r5, [r4, #-124]!
 757 000c 7923     		movs	r3, #121
 758 000e 01A8     		add	r0, sp, #4
 759 0010 CDE90143 		strd	r4, r3, [sp, #4]
 760 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 761 0018 2046     		mov	r0, r4
 762 001a 01A9     		add	r1, sp, #4
 763 001c 0795     		str	r5, [sp, #28]
 764 001e FFF7FEFF 		bl	f_stat
 765 0022 B0FA80F0 		clz	r0, r0
 766 0026 4009     		lsrs	r0, r0, #5
 767 0028 29B0     		add	sp, sp, #164
 768              		@ sp needed
 769 002a 30BD     		pop	{r4, r5, pc}
 770              		.size	_ZNK11MassStorage10FileExistsEPKcS1_, .-_ZNK11MassStorage10FileExistsEPKcS1_
 771              		.section	.text._ZNK11MassStorage15DirectoryExistsERK9StringRef,"ax",%progbits
 772              		.align	1
 773              		.p2align 2,,3
 774              		.global	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 775              		.syntax unified
 776              		.thumb
 777              		.thumb_func
 778              		.fpu fpv4-sp-d16
 779              		.type	_ZNK11MassStorage15DirectoryExistsERK9StringRef, %function
 780              	_ZNK11MassStorage15DirectoryExistsERK9StringRef:
 781              		@ args = 0, pretend = 0, frame = 40
 782              		@ frame_needed = 0, uses_anonymous_args = 0
 783 0000 10B5     		push	{r4, lr}
 784 0002 0846     		mov	r0, r1
 785 0004 8AB0     		sub	sp, sp, #40
 786 0006 0C46     		mov	r4, r1
 787 0008 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 788 000c 48B1     		cbz	r0, .L138
 789 000e 0138     		subs	r0, r0, #1
 790 0010 2168     		ldr	r1, [r4]
 791 0012 0A5C     		ldrb	r2, [r1, r0]	@ zero_extendqisi2
 792 0014 2F2A     		cmp	r2, #47
 793 0016 0844     		add	r0, r0, r1
 794 0018 01D0     		beq	.L133
 795 001a 5C2A     		cmp	r2, #92
 796 001c 02D1     		bne	.L132
 797              	.L133:
 798 001e 0023     		movs	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 15


 799 0020 0370     		strb	r3, [r0]
 800              	.L138:
 801 0022 2168     		ldr	r1, [r4]
 802              	.L132:
 803 0024 0023     		movs	r3, #0
 804 0026 01A8     		add	r0, sp, #4
 805 0028 0893     		str	r3, [sp, #32]
 806 002a FFF7FEFF 		bl	f_opendir
 807 002e B0FA80F0 		clz	r0, r0
 808 0032 4009     		lsrs	r0, r0, #5
 809 0034 0AB0     		add	sp, sp, #40
 810              		@ sp needed
 811 0036 10BD     		pop	{r4, pc}
 812              		.size	_ZNK11MassStorage15DirectoryExistsERK9StringRef, .-_ZNK11MassStorage15DirectoryExistsERK9Str
 813              		.section	.text._ZNK11MassStorage15DirectoryExistsEPKc,"ax",%progbits
 814              		.align	1
 815              		.p2align 2,,3
 816              		.global	_ZNK11MassStorage15DirectoryExistsEPKc
 817              		.syntax unified
 818              		.thumb
 819              		.thumb_func
 820              		.fpu fpv4-sp-d16
 821              		.type	_ZNK11MassStorage15DirectoryExistsEPKc, %function
 822              	_ZNK11MassStorage15DirectoryExistsEPKc:
 823              		@ args = 0, pretend = 0, frame = 136
 824              		@ frame_needed = 0, uses_anonymous_args = 0
 825 0000 70B5     		push	{r4, r5, r6, lr}
 826 0002 A2B0     		sub	sp, sp, #136
 827 0004 22AC     		add	r4, sp, #136
 828 0006 0023     		movs	r3, #0
 829 0008 04F87C3D 		strb	r3, [r4, #-124]!
 830 000c 0646     		mov	r6, r0
 831 000e 7925     		movs	r5, #121
 832 0010 01A8     		add	r0, sp, #4
 833 0012 CDE90145 		strd	r4, r5, [sp, #4]
 834 0016 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 835 001a 01A9     		add	r1, sp, #4
 836 001c 3046     		mov	r0, r6
 837 001e CDE90145 		strd	r4, r5, [sp, #4]
 838 0022 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 839 0026 22B0     		add	sp, sp, #136
 840              		@ sp needed
 841 0028 70BD     		pop	{r4, r5, r6, pc}
 842              		.size	_ZNK11MassStorage15DirectoryExistsEPKc, .-_ZNK11MassStorage15DirectoryExistsEPKc
 843 002a 00BF     		.section	.text._ZN11MassStorage15DirectoryExistsEPKcS1_,"ax",%progbits
 844              		.align	1
 845              		.p2align 2,,3
 846              		.global	_ZN11MassStorage15DirectoryExistsEPKcS1_
 847              		.syntax unified
 848              		.thumb
 849              		.thumb_func
 850              		.fpu fpv4-sp-d16
 851              		.type	_ZN11MassStorage15DirectoryExistsEPKcS1_, %function
 852              	_ZN11MassStorage15DirectoryExistsEPKcS1_:
 853              		@ args = 0, pretend = 0, frame = 136
 854              		@ frame_needed = 0, uses_anonymous_args = 0
 855 0000 70B5     		push	{r4, r5, r6, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 16


 856 0002 A2B0     		sub	sp, sp, #136
 857 0004 22AC     		add	r4, sp, #136
 858 0006 0023     		movs	r3, #0
 859 0008 04F87C3D 		strb	r3, [r4, #-124]!
 860 000c 0646     		mov	r6, r0
 861 000e 7925     		movs	r5, #121
 862 0010 01A8     		add	r0, sp, #4
 863 0012 CDE90145 		strd	r4, r5, [sp, #4]
 864 0016 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 865 001a 01A9     		add	r1, sp, #4
 866 001c 3046     		mov	r0, r6
 867 001e CDE90145 		strd	r4, r5, [sp, #4]
 868 0022 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 869 0026 22B0     		add	sp, sp, #136
 870              		@ sp needed
 871 0028 70BD     		pop	{r4, r5, r6, pc}
 872              		.size	_ZN11MassStorage15DirectoryExistsEPKcS1_, .-_ZN11MassStorage15DirectoryExistsEPKcS1_
 873 002a 00BF     		.section	.text._ZN11MassStorage19SetLastModifiedTimeEPKcS1_x,"ax",%progbits
 874              		.align	1
 875              		.p2align 2,,3
 876              		.global	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x
 877              		.syntax unified
 878              		.thumb
 879              		.thumb_func
 880              		.fpu fpv4-sp-d16
 881              		.type	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x, %function
 882              	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x:
 883              		@ args = 8, pretend = 0, frame = 160
 884              		@ frame_needed = 0, uses_anonymous_args = 0
 885 0000 30B5     		push	{r4, r5, lr}
 886 0002 A9B0     		sub	sp, sp, #164
 887 0004 28AC     		add	r4, sp, #160
 888 0006 0023     		movs	r3, #0
 889 0008 04F87C3D 		strb	r3, [r4, #-124]!
 890 000c 01A8     		add	r0, sp, #4
 891 000e 7923     		movs	r3, #121
 892 0010 CDE90143 		strd	r4, r3, [sp, #4]
 893 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 894 0018 2CA8     		add	r0, sp, #176
 895 001a FFF7FEFF 		bl	gmtime
 896 001e D0E90425 		ldrd	r2, r5, [r0, #16]
 897 0022 0132     		adds	r2, r2, #1
 898 0024 C368     		ldr	r3, [r0, #12]
 899 0026 503D     		subs	r5, r5, #80
 900 0028 5201     		lsls	r2, r2, #5
 901 002a 42EA4522 		orr	r2, r2, r5, lsl #9
 902 002e 1A43     		orrs	r2, r2, r3
 903 0030 ADF80820 		strh	r2, [sp, #8]	@ movhi
 904 0034 D0E90125 		ldrd	r2, r5, [r0, #4]
 905 0038 0368     		ldr	r3, [r0]
 906 003a 5201     		lsls	r2, r2, #5
 907 003c 42EAC522 		orr	r2, r2, r5, lsl #11
 908 0040 42EA5302 		orr	r2, r2, r3, lsr #1
 909 0044 01A9     		add	r1, sp, #4
 910 0046 2046     		mov	r0, r4
 911 0048 ADF80A20 		strh	r2, [sp, #10]	@ movhi
 912 004c FFF7FEFF 		bl	f_utime
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 17


 913 0050 0028     		cmp	r0, #0
 914 0052 0CBF     		ite	eq
 915 0054 0125     		moveq	r5, #1
 916 0056 0025     		movne	r5, #0
 917 0058 07D0     		beq	.L144
 918 005a 054B     		ldr	r3, .L149
 919 005c 054A     		ldr	r2, .L149+4
 920 005e 5868     		ldr	r0, [r3, #4]
 921 0060 40F2B511 		movw	r1, #437
 922 0064 2346     		mov	r3, r4
 923 0066 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 924              	.L144:
 925 006a 2846     		mov	r0, r5
 926 006c 29B0     		add	sp, sp, #164
 927              		@ sp needed
 928 006e 30BD     		pop	{r4, r5, pc}
 929              	.L150:
 930              		.align	2
 931              	.L149:
 932 0070 00000000 		.word	reprap
 933 0074 00000000 		.word	.LC13
 934              		.size	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x, .-_ZN11MassStorage19SetLastModifiedTimeEPKcS1
 935              		.section	.text._ZN11MassStorage17CheckDriveMountedEPKc,"ax",%progbits
 936              		.align	1
 937              		.p2align 2,,3
 938              		.global	_ZN11MassStorage17CheckDriveMountedEPKc
 939              		.syntax unified
 940              		.thumb
 941              		.thumb_func
 942              		.fpu fpv4-sp-d16
 943              		.type	_ZN11MassStorage17CheckDriveMountedEPKc, %function
 944              	_ZN11MassStorage17CheckDriveMountedEPKc:
 945              		@ args = 0, pretend = 0, frame = 0
 946              		@ frame_needed = 0, uses_anonymous_args = 0
 947 0000 38B5     		push	{r3, r4, r5, lr}
 948 0002 0546     		mov	r5, r0
 949 0004 0846     		mov	r0, r1
 950 0006 0C46     		mov	r4, r1
 951 0008 FFF7FEFF 		bl	strlen
 952 000c 0128     		cmp	r0, #1
 953 000e 02D9     		bls	.L156
 954 0010 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 955 0012 3A2B     		cmp	r3, #58
 956 0014 07D0     		beq	.L159
 957              	.L156:
 958 0016 0023     		movs	r3, #0
 959              	.L152:
 960 0018 4FF42872 		mov	r2, #672
 961 001c 02FB0353 		mla	r3, r2, r3, r5
 962 0020 93F89E02 		ldrb	r0, [r3, #670]	@ zero_extendqisi2
 963 0024 38BD     		pop	{r3, r4, r5, pc}
 964              	.L159:
 965 0026 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 966 0028 303B     		subs	r3, r3, #48
 967 002a 092B     		cmp	r3, #9
 968 002c F3D8     		bhi	.L156
 969 002e 012B     		cmp	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 18


 970 0030 F2D9     		bls	.L152
 971 0032 0020     		movs	r0, #0
 972 0034 38BD     		pop	{r3, r4, r5, pc}
 973              		.size	_ZN11MassStorage17CheckDriveMountedEPKc, .-_ZN11MassStorage17CheckDriveMountedEPKc
 974 0036 00BF     		.section	.text._ZNK11MassStorage11AnyFileOpenEPK5FATFS,"ax",%progbits
 975              		.align	1
 976              		.p2align 2,,3
 977              		.global	_ZNK11MassStorage11AnyFileOpenEPK5FATFS
 978              		.syntax unified
 979              		.thumb
 980              		.thumb_func
 981              		.fpu fpv4-sp-d16
 982              		.type	_ZNK11MassStorage11AnyFileOpenEPK5FATFS, %function
 983              	_ZNK11MassStorage11AnyFileOpenEPK5FATFS:
 984              		@ args = 0, pretend = 0, frame = 8
 985              		@ frame_needed = 0, uses_anonymous_args = 0
 986 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 987 0002 0446     		mov	r4, r0
 988 0004 83B0     		sub	sp, sp, #12
 989 0006 04F59256 		add	r6, r4, #4672
 990 000a 0F46     		mov	r7, r1
 991 000c 6846     		mov	r0, sp
 992 000e 04F5A861 		add	r1, r4, #1344
 993 0012 4FF0FF32 		mov	r2, #-1
 994 0016 04F58054 		add	r4, r4, #4096
 995 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 996 001e 0836     		adds	r6, r6, #8
 997 0020 1834     		adds	r4, r4, #24
 998 0022 01E0     		b	.L162
 999              	.L165:
 1000 0024 A642     		cmp	r6, r4
 1001 0026 07D0     		beq	.L161
 1002              	.L162:
 1003 0028 2046     		mov	r0, r4
 1004 002a 3946     		mov	r1, r7
 1005 002c FFF7FEFF 		bl	_ZNK9FileStore8IsOpenOnEPK5FATFS
 1006 0030 3834     		adds	r4, r4, #56
 1007 0032 0546     		mov	r5, r0
 1008 0034 0028     		cmp	r0, #0
 1009 0036 F5D0     		beq	.L165
 1010              	.L161:
 1011 0038 6846     		mov	r0, sp
 1012 003a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1013 003e 2846     		mov	r0, r5
 1014 0040 03B0     		add	sp, sp, #12
 1015              		@ sp needed
 1016 0042 F0BD     		pop	{r4, r5, r6, r7, pc}
 1017              		.size	_ZNK11MassStorage11AnyFileOpenEPK5FATFS, .-_ZNK11MassStorage11AnyFileOpenEPK5FATFS
 1018              		.section	.text._ZN11MassStorage15InvalidateFilesEPK5FATFSb,"ax",%progbits
 1019              		.align	1
 1020              		.p2align 2,,3
 1021              		.global	_ZN11MassStorage15InvalidateFilesEPK5FATFSb
 1022              		.syntax unified
 1023              		.thumb
 1024              		.thumb_func
 1025              		.fpu fpv4-sp-d16
 1026              		.type	_ZN11MassStorage15InvalidateFilesEPK5FATFSb, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 19


 1027              	_ZN11MassStorage15InvalidateFilesEPK5FATFSb:
 1028              		@ args = 0, pretend = 0, frame = 8
 1029              		@ frame_needed = 0, uses_anonymous_args = 0
 1030 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1031 0004 82B0     		sub	sp, sp, #8
 1032 0006 0446     		mov	r4, r0
 1033 0008 8846     		mov	r8, r1
 1034 000a 1746     		mov	r7, r2
 1035 000c 00F5A861 		add	r1, r0, #1344
 1036 0010 4FF0FF32 		mov	r2, #-1
 1037 0014 6846     		mov	r0, sp
 1038 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1039 001a 04F59255 		add	r5, r4, #4672
 1040 001e 04F58054 		add	r4, r4, #4096
 1041 0022 0835     		adds	r5, r5, #8
 1042 0024 1834     		adds	r4, r4, #24
 1043 0026 0026     		movs	r6, #0
 1044              	.L168:
 1045 0028 2046     		mov	r0, r4
 1046 002a 3A46     		mov	r2, r7
 1047 002c 4146     		mov	r1, r8
 1048 002e FFF7FEFF 		bl	_ZN9FileStore10InvalidateEPK5FATFSb
 1049 0032 3834     		adds	r4, r4, #56
 1050 0034 00B1     		cbz	r0, .L167
 1051 0036 0136     		adds	r6, r6, #1
 1052              	.L167:
 1053 0038 A542     		cmp	r5, r4
 1054 003a F5D1     		bne	.L168
 1055 003c 6846     		mov	r0, sp
 1056 003e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1057 0042 3046     		mov	r0, r6
 1058 0044 02B0     		add	sp, sp, #8
 1059              		@ sp needed
 1060 0046 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1061              		.size	_ZN11MassStorage15InvalidateFilesEPK5FATFSb, .-_ZN11MassStorage15InvalidateFilesEPK5FATFSb
 1062 004a 00BF     		.section	.text._ZN11MassStorage16ConvertTimeStampEtt,"ax",%progbits
 1063              		.align	1
 1064              		.p2align 2,,3
 1065              		.global	_ZN11MassStorage16ConvertTimeStampEtt
 1066              		.syntax unified
 1067              		.thumb
 1068              		.thumb_func
 1069              		.fpu fpv4-sp-d16
 1070              		.type	_ZN11MassStorage16ConvertTimeStampEtt, %function
 1071              	_ZN11MassStorage16ConvertTimeStampEtt:
 1072              		@ args = 0, pretend = 0, frame = 40
 1073              		@ frame_needed = 0, uses_anonymous_args = 0
 1074 0000 10B5     		push	{r4, lr}
 1075 0002 4412     		asrs	r4, r0, #9
 1076 0004 8AB0     		sub	sp, sp, #40
 1077 0006 0346     		mov	r3, r0
 1078 0008 5034     		adds	r4, r4, #80
 1079 000a C0F34312 		ubfx	r2, r0, #5, #4
 1080 000e 0020     		movs	r0, #0
 1081 0010 0694     		str	r4, [sp, #24]
 1082 0012 CDE90700 		strd	r0, r0, [sp, #28]
 1083 0016 0990     		str	r0, [sp, #36]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 20


 1084 0018 02B1     		cbz	r2, .L175
 1085 001a 013A     		subs	r2, r2, #1
 1086              	.L175:
 1087 001c 03F01F03 		and	r3, r3, #31
 1088 0020 0AA8     		add	r0, sp, #40
 1089 0022 01F01F04 		and	r4, r1, #31
 1090 0026 012B     		cmp	r3, #1
 1091 0028 38BF     		it	cc
 1092 002a 0123     		movcc	r3, #1
 1093 002c 40F8244D 		str	r4, [r0, #-36]!
 1094 0030 CC0A     		lsrs	r4, r1, #11
 1095 0032 C1F34511 		ubfx	r1, r1, #5, #6
 1096 0036 CDE90432 		strd	r3, r2, [sp, #16]
 1097 003a CDE90214 		strd	r1, r4, [sp, #8]
 1098 003e FFF7FEFF 		bl	mktime
 1099 0042 0AB0     		add	sp, sp, #40
 1100              		@ sp needed
 1101 0044 10BD     		pop	{r4, pc}
 1102              		.size	_ZN11MassStorage16ConvertTimeStampEtt, .-_ZN11MassStorage16ConvertTimeStampEtt
 1103 0046 00BF     		.section	.text._ZN11MassStorage8FindNextER8FileInfo,"ax",%progbits
 1104              		.align	1
 1105              		.p2align 2,,3
 1106              		.global	_ZN11MassStorage8FindNextER8FileInfo
 1107              		.syntax unified
 1108              		.thumb
 1109              		.thumb_func
 1110              		.fpu fpv4-sp-d16
 1111              		.type	_ZN11MassStorage8FindNextER8FileInfo, %function
 1112              	_ZN11MassStorage8FindNextER8FileInfo:
 1113              		@ args = 0, pretend = 0, frame = 32
 1114              		@ frame_needed = 0, uses_anonymous_args = 0
 1115 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1116 0002 00F5B465 		add	r5, r0, #1440
 1117 0006 89B0     		sub	sp, sp, #36
 1118 0008 0446     		mov	r4, r0
 1119 000a 2846     		mov	r0, r5
 1120 000c 0F46     		mov	r7, r1
 1121 000e FFF7FEFF 		bl	_ZNK5Mutex9GetHolderEv
 1122 0012 0646     		mov	r6, r0
 1123 0014 FFF7FEFF 		bl	_ZN9RTOSIface14GetCurrentTaskEv
 1124 0018 8642     		cmp	r6, r0
 1125 001a 03D0     		beq	.L188
 1126 001c 0023     		movs	r3, #0
 1127              	.L179:
 1128 001e 1846     		mov	r0, r3
 1129 0020 09B0     		add	sp, sp, #36
 1130              		@ sp needed
 1131 0022 F0BD     		pop	{r4, r5, r6, r7, pc}
 1132              	.L188:
 1133 0024 41F20C03 		movw	r3, #4108
 1134 0028 0022     		movs	r2, #0
 1135 002a E250     		str	r2, [r4, r3]
 1136 002c 04F57F60 		add	r0, r4, #4080
 1137 0030 7826     		movs	r6, #120
 1138 0032 7C1C     		adds	r4, r7, #1
 1139 0034 6946     		mov	r1, sp
 1140 0036 CDE90646 		strd	r4, r6, [sp, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 21


 1141 003a FFF7FEFF 		bl	f_readdir
 1142 003e A8B9     		cbnz	r0, .L180
 1143 0040 9DF80930 		ldrb	r3, [sp, #9]	@ zero_extendqisi2
 1144 0044 93B1     		cbz	r3, .L180
 1145 0046 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 1146 004a 7A78     		ldrb	r2, [r7, #1]	@ zero_extendqisi2
 1147 004c 0099     		ldr	r1, [sp]
 1148 004e F967     		str	r1, [r7, #124]
 1149 0050 C3F30013 		ubfx	r3, r3, #4, #1
 1150 0054 3B70     		strb	r3, [r7]
 1151 0056 82B1     		cbz	r2, .L189
 1152              	.L182:
 1153 0058 BDF80610 		ldrh	r1, [sp, #6]
 1154 005c BDF80400 		ldrh	r0, [sp, #4]
 1155 0060 FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1156 0064 0123     		movs	r3, #1
 1157 0066 C7E92001 		strd	r0, [r7, #128]
 1158 006a D8E7     		b	.L179
 1159              	.L180:
 1160 006c 2846     		mov	r0, r5
 1161 006e FFF7FEFF 		bl	_ZNK5Mutex7ReleaseEv
 1162 0072 0023     		movs	r3, #0
 1163 0074 1846     		mov	r0, r3
 1164 0076 09B0     		add	sp, sp, #36
 1165              		@ sp needed
 1166 0078 F0BD     		pop	{r4, r5, r6, r7, pc}
 1167              	.L189:
 1168 007a 3246     		mov	r2, r6
 1169 007c 2046     		mov	r0, r4
 1170 007e 0DF10901 		add	r1, sp, #9
 1171 0082 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1172 0086 E7E7     		b	.L182
 1173              		.size	_ZN11MassStorage8FindNextER8FileInfo, .-_ZN11MassStorage8FindNextER8FileInfo
 1174              		.section	.text._ZN11MassStorage9FindFirstEPKcR8FileInfo,"ax",%progbits
 1175              		.align	1
 1176              		.p2align 2,,3
 1177              		.global	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 1178              		.syntax unified
 1179              		.thumb
 1180              		.thumb_func
 1181              		.fpu fpv4-sp-d16
 1182              		.type	_ZN11MassStorage9FindFirstEPKcR8FileInfo, %function
 1183              	_ZN11MassStorage9FindFirstEPKcR8FileInfo:
 1184              		@ args = 0, pretend = 0, frame = 160
 1185              		@ frame_needed = 0, uses_anonymous_args = 0
 1186 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1187 0004 A9B0     		sub	sp, sp, #164
 1188 0006 28AC     		add	r4, sp, #160
 1189 0008 0023     		movs	r3, #0
 1190 000a 04F87C3D 		strb	r3, [r4, #-124]!
 1191 000e 0646     		mov	r6, r0
 1192 0010 7923     		movs	r3, #121
 1193 0012 01A8     		add	r0, sp, #4
 1194 0014 9046     		mov	r8, r2
 1195 0016 CDE90143 		strd	r4, r3, [sp, #4]
 1196 001a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1197 001e 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 22


 1198 0020 7821     		movs	r1, #120
 1199 0022 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1200 0026 40B1     		cbz	r0, .L191
 1201 0028 28AB     		add	r3, sp, #160
 1202 002a 0138     		subs	r0, r0, #1
 1203 002c 1A18     		adds	r2, r3, r0
 1204 002e 12F87C3C 		ldrb	r3, [r2, #-124]	@ zero_extendqisi2
 1205 0032 2F2B     		cmp	r3, #47
 1206 0034 0ED0     		beq	.L192
 1207 0036 5C2B     		cmp	r3, #92
 1208 0038 0CD0     		beq	.L192
 1209              	.L191:
 1210 003a 06F5B467 		add	r7, r6, #1440
 1211 003e 3846     		mov	r0, r7
 1212 0040 42F21071 		movw	r1, #10000
 1213 0044 FFF7FEFF 		bl	_ZNK5Mutex4TakeEm
 1214 0048 0546     		mov	r5, r0
 1215 004a 48B9     		cbnz	r0, .L214
 1216 004c 2846     		mov	r0, r5
 1217 004e 29B0     		add	sp, sp, #164
 1218              		@ sp needed
 1219 0050 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1220              	.L192:
 1221 0054 7728     		cmp	r0, #119
 1222 0056 9CBF     		itt	ls
 1223 0058 0023     		movls	r3, #0
 1224 005a 02F87C3C 		strbls	r3, [r2, #-124]
 1225 005e ECE7     		b	.L191
 1226              	.L214:
 1227 0060 41F20C03 		movw	r3, #4108
 1228 0064 0022     		movs	r2, #0
 1229 0066 06F57F69 		add	r9, r6, #4080
 1230 006a 2146     		mov	r1, r4
 1231 006c F250     		str	r2, [r6, r3]
 1232 006e 4846     		mov	r0, r9
 1233 0070 FFF7FEFF 		bl	f_opendir
 1234 0074 0028     		cmp	r0, #0
 1235 0076 39D1     		bne	.L194
 1236 0078 08F10106 		add	r6, r8, #1
 1237 007c 7823     		movs	r3, #120
 1238 007e CDE90763 		strd	r6, r3, [sp, #28]
 1239 0082 1E4C     		ldr	r4, .L215
 1240              	.L196:
 1241 0084 01A9     		add	r1, sp, #4
 1242 0086 4846     		mov	r0, r9
 1243 0088 FFF7FEFF 		bl	f_readdir
 1244 008c 2146     		mov	r1, r4
 1245 008e 68BB     		cbnz	r0, .L194
 1246 0090 9DF80D30 		ldrb	r3, [sp, #13]	@ zero_extendqisi2
 1247 0094 0DF10D00 		add	r0, sp, #13
 1248 0098 43B3     		cbz	r3, .L194
 1249 009a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1250 009e 1849     		ldr	r1, .L215+4
 1251 00a0 0028     		cmp	r0, #0
 1252 00a2 EFD1     		bne	.L196
 1253 00a4 0DF10D00 		add	r0, sp, #13
 1254 00a8 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 23


 1255 00ac 0028     		cmp	r0, #0
 1256 00ae E9D1     		bne	.L196
 1257 00b0 9DF80C30 		ldrb	r3, [sp, #12]	@ zero_extendqisi2
 1258 00b4 98F80120 		ldrb	r2, [r8, #1]	@ zero_extendqisi2
 1259 00b8 C3F30013 		ubfx	r3, r3, #4, #1
 1260 00bc 88F80030 		strb	r3, [r8]
 1261 00c0 2AB9     		cbnz	r2, .L198
 1262 00c2 0DF10D01 		add	r1, sp, #13
 1263 00c6 3046     		mov	r0, r6
 1264 00c8 7822     		movs	r2, #120
 1265 00ca FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1266              	.L198:
 1267 00ce 019B     		ldr	r3, [sp, #4]
 1268 00d0 C8F87C30 		str	r3, [r8, #124]
 1269 00d4 BDF80A10 		ldrh	r1, [sp, #10]
 1270 00d8 BDF80800 		ldrh	r0, [sp, #8]
 1271 00dc FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1272 00e0 C8E92001 		strd	r0, [r8, #128]
 1273 00e4 2846     		mov	r0, r5
 1274 00e6 29B0     		add	sp, sp, #164
 1275              		@ sp needed
 1276 00e8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1277              	.L194:
 1278 00ec 3846     		mov	r0, r7
 1279 00ee FFF7FEFF 		bl	_ZNK5Mutex7ReleaseEv
 1280 00f2 0025     		movs	r5, #0
 1281 00f4 2846     		mov	r0, r5
 1282 00f6 29B0     		add	sp, sp, #164
 1283              		@ sp needed
 1284 00f8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1285              	.L216:
 1286              		.align	2
 1287              	.L215:
 1288 00fc 00000000 		.word	.LC14
 1289 0100 04000000 		.word	.LC15
 1290              		.size	_ZN11MassStorage9FindFirstEPKcR8FileInfo, .-_ZN11MassStorage9FindFirstEPKcR8FileInfo
 1291              		.section	.text._ZNK11MassStorage19GetLastModifiedTimeEPKcS1_,"ax",%progbits
 1292              		.align	1
 1293              		.p2align 2,,3
 1294              		.global	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1295              		.syntax unified
 1296              		.thumb
 1297              		.thumb_func
 1298              		.fpu fpv4-sp-d16
 1299              		.type	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_, %function
 1300              	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_:
 1301              		@ args = 0, pretend = 0, frame = 160
 1302              		@ frame_needed = 0, uses_anonymous_args = 0
 1303 0000 30B5     		push	{r4, r5, lr}
 1304 0002 A9B0     		sub	sp, sp, #164
 1305 0004 28AC     		add	r4, sp, #160
 1306 0006 0025     		movs	r5, #0
 1307 0008 04F87C5D 		strb	r5, [r4, #-124]!
 1308 000c 01A8     		add	r0, sp, #4
 1309 000e 7923     		movs	r3, #121
 1310 0010 CDE90143 		strd	r4, r3, [sp, #4]
 1311 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 24


 1312 0018 2046     		mov	r0, r4
 1313 001a 01A9     		add	r1, sp, #4
 1314 001c 0795     		str	r5, [sp, #28]
 1315 001e FFF7FEFF 		bl	f_stat
 1316 0022 18B1     		cbz	r0, .L221
 1317 0024 0020     		movs	r0, #0
 1318 0026 0021     		movs	r1, #0
 1319 0028 29B0     		add	sp, sp, #164
 1320              		@ sp needed
 1321 002a 30BD     		pop	{r4, r5, pc}
 1322              	.L221:
 1323 002c BDF80A10 		ldrh	r1, [sp, #10]
 1324 0030 BDF80800 		ldrh	r0, [sp, #8]
 1325 0034 FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1326 0038 29B0     		add	sp, sp, #164
 1327              		@ sp needed
 1328 003a 30BD     		pop	{r4, r5, pc}
 1329              		.size	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_, .-_ZNK11MassStorage19GetLastModifiedTimeEPKcS
 1330              		.section	.text._ZNK11MassStorage14IsCardDetectedEj,"ax",%progbits
 1331              		.align	1
 1332              		.p2align 2,,3
 1333              		.global	_ZNK11MassStorage14IsCardDetectedEj
 1334              		.syntax unified
 1335              		.thumb
 1336              		.thumb_func
 1337              		.fpu fpv4-sp-d16
 1338              		.type	_ZNK11MassStorage14IsCardDetectedEj, %function
 1339              	_ZNK11MassStorage14IsCardDetectedEj:
 1340              		@ args = 0, pretend = 0, frame = 0
 1341              		@ frame_needed = 0, uses_anonymous_args = 0
 1342              		@ link register save eliminated.
 1343 0000 4FF42873 		mov	r3, #672
 1344 0004 03FB0101 		mla	r1, r3, r1, r0
 1345 0008 91F89F02 		ldrb	r0, [r1, #671]	@ zero_extendqisi2
 1346 000c A0F10200 		sub	r0, #2
 1347 0010 B0FA80F0 		clz	r0, r0
 1348 0014 4009     		lsrs	r0, r0, #5
 1349 0016 7047     		bx	lr
 1350              		.size	_ZNK11MassStorage14IsCardDetectedEj, .-_ZNK11MassStorage14IsCardDetectedEj
 1351              		.section	.text._ZN11MassStorage15InternalUnmountEjb,"ax",%progbits
 1352              		.align	1
 1353              		.p2align 2,,3
 1354              		.global	_ZN11MassStorage15InternalUnmountEjb
 1355              		.syntax unified
 1356              		.thumb
 1357              		.thumb_func
 1358              		.fpu fpv4-sp-d16
 1359              		.type	_ZN11MassStorage15InternalUnmountEjb, %function
 1360              	_ZN11MassStorage15InternalUnmountEjb:
 1361              		@ args = 0, pretend = 0, frame = 16
 1362              		@ frame_needed = 0, uses_anonymous_args = 0
 1363 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1364 0002 0D46     		mov	r5, r1
 1365 0004 85B0     		sub	sp, sp, #20
 1366 0006 4FF42874 		mov	r4, #672
 1367 000a 0646     		mov	r6, r0
 1368 000c 1746     		mov	r7, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 25


 1369 000e 00F5A861 		add	r1, r0, #1344
 1370 0012 04FB05F4 		mul	r4, r4, r5
 1371 0016 6846     		mov	r0, sp
 1372 0018 4FF0FF32 		mov	r2, #-1
 1373 001c FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1374 0020 04F50F71 		add	r1, r4, #572
 1375 0024 3144     		add	r1, r1, r6
 1376 0026 3444     		add	r4, r4, r6
 1377 0028 02A8     		add	r0, sp, #8
 1378 002a 4FF0FF32 		mov	r2, #-1
 1379 002e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1380 0032 3A46     		mov	r2, r7
 1381 0034 2146     		mov	r1, r4
 1382 0036 3046     		mov	r0, r6
 1383 0038 FFF7FEFF 		bl	_ZN11MassStorage15InvalidateFilesEPK5FATFSb
 1384 003c EDB2     		uxtb	r5, r5
 1385 003e 0646     		mov	r6, r0
 1386 0040 0021     		movs	r1, #0
 1387 0042 2846     		mov	r0, r5
 1388 0044 FFF7FEFF 		bl	f_mount
 1389 0048 4FF40D72 		mov	r2, #564
 1390 004c 0021     		movs	r1, #0
 1391 004e 2046     		mov	r0, r4
 1392 0050 FFF7FEFF 		bl	memset
 1393 0054 2846     		mov	r0, r5
 1394 0056 FFF7FEFF 		bl	sd_mmc_unmount
 1395 005a 0023     		movs	r3, #0
 1396 005c 84F89E32 		strb	r3, [r4, #670]
 1397 0060 02A8     		add	r0, sp, #8
 1398 0062 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1399 0066 6846     		mov	r0, sp
 1400 0068 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1401 006c 3046     		mov	r0, r6
 1402 006e 05B0     		add	sp, sp, #20
 1403              		@ sp needed
 1404 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 1405              		.size	_ZN11MassStorage15InternalUnmountEjb, .-_ZN11MassStorage15InternalUnmountEjb
 1406              		.global	__aeabi_f2d
 1407 0072 00BF     		.section	.text._ZN11MassStorage5MountEjRK9StringRefb,"ax",%progbits
 1408              		.align	1
 1409              		.p2align 2,,3
 1410              		.global	_ZN11MassStorage5MountEjRK9StringRefb
 1411              		.syntax unified
 1412              		.thumb
 1413              		.thumb_func
 1414              		.fpu fpv4-sp-d16
 1415              		.type	_ZN11MassStorage5MountEjRK9StringRefb, %function
 1416              	_ZN11MassStorage5MountEjRK9StringRefb:
 1417              		@ args = 0, pretend = 0, frame = 16
 1418              		@ frame_needed = 0, uses_anonymous_args = 0
 1419 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1420 0004 2DED028B 		vpush.64	{d8}
 1421 0008 0129     		cmp	r1, #1
 1422 000a 89B0     		sub	sp, sp, #36
 1423 000c 1746     		mov	r7, r2
 1424 000e 64D8     		bhi	.L254
 1425 0010 0546     		mov	r5, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 26


 1426 0012 0E46     		mov	r6, r1
 1427 0014 4FF0FF32 		mov	r2, #-1
 1428 0018 05F5A861 		add	r1, r5, #1344
 1429 001c 04A8     		add	r0, sp, #16
 1430 001e 9846     		mov	r8, r3
 1431 0020 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1432 0024 4FF42873 		mov	r3, #672
 1433 0028 03FB06F3 		mul	r3, r3, r6
 1434 002c 03F50F71 		add	r1, r3, #572
 1435 0030 EC18     		adds	r4, r5, r3
 1436 0032 2944     		add	r1, r1, r5
 1437 0034 06A8     		add	r0, sp, #24
 1438 0036 4FF0FF32 		mov	r2, #-1
 1439 003a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1440 003e 94F89D32 		ldrb	r3, [r4, #669]	@ zero_extendqisi2
 1441 0042 C3B1     		cbz	r3, .L255
 1442 0044 4FF42873 		mov	r3, #672
 1443 0048 03FB0655 		mla	r5, r3, r6, r5
 1444 004c 95F89F92 		ldrb	r9, [r5, #671]	@ zero_extendqisi2
 1445 0050 B9F1000F 		cmp	r9, #0
 1446 0054 39D0     		beq	.L256
 1447              	.L232:
 1448 0056 B9F1020F 		cmp	r9, #2
 1449 005a 49D0     		beq	.L257
 1450 005c 0024     		movs	r4, #0
 1451              	.L231:
 1452 005e 06A8     		add	r0, sp, #24
 1453 0060 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1454 0064 04A8     		add	r0, sp, #16
 1455 0066 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1456 006a 2046     		mov	r0, r4
 1457 006c 09B0     		add	sp, sp, #36
 1458              		@ sp needed
 1459 006e BDEC028B 		vldm	sp!, {d8}
 1460 0072 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1461              	.L255:
 1462 0076 94F89E32 		ldrb	r3, [r4, #670]	@ zero_extendqisi2
 1463 007a 7BB1     		cbz	r3, .L229
 1464 007c 2146     		mov	r1, r4
 1465 007e 2846     		mov	r0, r5
 1466 0080 FFF7FEFF 		bl	_ZNK11MassStorage11AnyFileOpenEPK5FATFS
 1467 0084 28B1     		cbz	r0, .L230
 1468 0086 3846     		mov	r0, r7
 1469 0088 5849     		ldr	r1, .L261
 1470 008a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1471 008e 0224     		movs	r4, #2
 1472 0090 E5E7     		b	.L231
 1473              	.L230:
 1474 0092 0246     		mov	r2, r0
 1475 0094 3146     		mov	r1, r6
 1476 0096 2846     		mov	r0, r5
 1477 0098 FFF7FEFF 		bl	_ZN11MassStorage15InternalUnmountEjb
 1478              	.L229:
 1479 009c FFF7FEFF 		bl	millis
 1480 00a0 4FF42873 		mov	r3, #672
 1481 00a4 03FB0653 		mla	r3, r3, r6, r5
 1482 00a8 0122     		movs	r2, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 27


 1483 00aa C3F83802 		str	r0, [r3, #568]
 1484 00ae 83F89D22 		strb	r2, [r3, #669]
 1485 00b2 0220     		movs	r0, #2
 1486 00b4 FFF7FEFF 		bl	_Z5delaym
 1487 00b8 4FF42873 		mov	r3, #672
 1488 00bc 03FB0655 		mla	r5, r3, r6, r5
 1489 00c0 95F89F92 		ldrb	r9, [r5, #671]	@ zero_extendqisi2
 1490 00c4 B9F1000F 		cmp	r9, #0
 1491 00c8 C5D1     		bne	.L232
 1492              	.L256:
 1493 00ca 3846     		mov	r0, r7
 1494 00cc 4849     		ldr	r1, .L261+4
 1495 00ce FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1496 00d2 0224     		movs	r4, #2
 1497 00d4 85F89D92 		strb	r9, [r5, #669]
 1498 00d8 C1E7     		b	.L231
 1499              	.L254:
 1500 00da 1046     		mov	r0, r2
 1501 00dc 4549     		ldr	r1, .L261+8
 1502 00de FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1503 00e2 0224     		movs	r4, #2
 1504 00e4 2046     		mov	r0, r4
 1505 00e6 09B0     		add	sp, sp, #36
 1506              		@ sp needed
 1507 00e8 BDEC028B 		vldm	sp!, {d8}
 1508 00ec BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1509              	.L257:
 1510 00f0 5FFA86FA 		uxtb	r10, r6
 1511 00f4 5046     		mov	r0, r10
 1512 00f6 FFF7FEFF 		bl	sd_mmc_check
 1513 00fa 8346     		mov	fp, r0
 1514 00fc 0028     		cmp	r0, #0
 1515 00fe 41D1     		bne	.L258
 1516 0100 85F89D02 		strb	r0, [r5, #669]
 1517 0104 2146     		mov	r1, r4
 1518 0106 5046     		mov	r0, r10
 1519 0108 FFF7FEFF 		bl	f_mount
 1520 010c 0028     		cmp	r0, #0
 1521 010e 65D1     		bne	.L259
 1522 0110 0124     		movs	r4, #1
 1523 0112 85F89E42 		strb	r4, [r5, #670]
 1524 0116 B8F1000F 		cmp	r8, #0
 1525 011a A0D0     		beq	.L231
 1526 011c 5046     		mov	r0, r10
 1527 011e FFF7FEFF 		bl	sd_mmc_get_capacity
 1528 0122 07EE900A 		vmov	s15, r0	@ int
 1529 0126 9FED346A 		vldr.32	s12, .L261+12
 1530 012a DFED346A 		vldr.32	s13, .L261+16
 1531 012e 9FED347A 		vldr.32	s14, .L261+20
 1532 0132 F8EE677A 		vcvt.f32.u32	s15, s15
 1533 0136 5046     		mov	r0, r10
 1534 0138 67EE867A 		vmul.f32	s15, s15, s12
 1535 013c 87EEA68A 		vdiv.f32	s16, s15, s13
 1536 0140 B4EEC78A 		vcmpe.f32	s16, s14
 1537 0144 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1538 0148 A6BF     		itte	ge
 1539 014a 88EE078A 		vdivge.f32	s16, s16, s14
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 28


 1540 014e 2D4D     		ldrge	r5, .L261+24
 1541 0150 2D4D     		ldrlt	r5, .L261+28
 1542 0152 FFF7FEFF 		bl	sd_mmc_get_type
 1543 0156 431E     		subs	r3, r0, #1
 1544 0158 DBB2     		uxtb	r3, r3
 1545 015a 092B     		cmp	r3, #9
 1546 015c 96BF     		itet	ls
 1547 015e 2B4A     		ldrls	r2, .L261+32
 1548 0160 2B4C     		ldrhi	r4, .L261+36
 1549 0162 52F82340 		ldrls	r4, [r2, r3, lsl #2]
 1550 0166 0295     		str	r5, [sp, #8]
 1551 0168 18EE100A 		vmov	r0, s16
 1552 016c FFF7FEFF 		bl	__aeabi_f2d
 1553 0170 2246     		mov	r2, r4
 1554 0172 CDE90001 		strd	r0, [sp]
 1555 0176 3346     		mov	r3, r6
 1556 0178 3846     		mov	r0, r7
 1557 017a 2649     		ldr	r1, .L261+40
 1558 017c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1559 0180 0124     		movs	r4, #1
 1560 0182 6CE7     		b	.L231
 1561              	.L258:
 1562 0184 FFF7FEFF 		bl	millis
 1563 0188 D5F83832 		ldr	r3, [r5, #568]
 1564 018c C01A     		subs	r0, r0, r3
 1565 018e 41F28733 		movw	r3, #4999
 1566 0192 9842     		cmp	r0, r3
 1567 0194 15D9     		bls	.L260
 1568 0196 ABF1020B 		sub	fp, fp, #2
 1569 019a 5FFA8BFB 		uxtb	fp, fp
 1570 019e 0023     		movs	r3, #0
 1571 01a0 BBF1050F 		cmp	fp, #5
 1572 01a4 85F89D32 		strb	r3, [r5, #669]
 1573 01a8 07D9     		bls	.L238
 1574 01aa 1B4B     		ldr	r3, .L261+44
 1575              	.L239:
 1576 01ac 1B49     		ldr	r1, .L261+48
 1577 01ae 3246     		mov	r2, r6
 1578 01b0 3846     		mov	r0, r7
 1579 01b2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1580 01b6 0224     		movs	r4, #2
 1581 01b8 51E7     		b	.L231
 1582              	.L238:
 1583 01ba 194B     		ldr	r3, .L261+52
 1584 01bc 53F82B30 		ldr	r3, [r3, fp, lsl #2]
 1585 01c0 F4E7     		b	.L239
 1586              	.L260:
 1587 01c2 4846     		mov	r0, r9
 1588 01c4 FFF7FEFF 		bl	_Z5delaym
 1589 01c8 4FF4F971 		mov	r1, #498
 1590 01cc 1548     		ldr	r0, .L261+56
 1591 01ce FFF7FEFF 		bl	debugPrintf
 1592 01d2 3220     		movs	r0, #50
 1593 01d4 FFF7FEFF 		bl	_Z5delaym
 1594 01d8 0024     		movs	r4, #0
 1595 01da 40E7     		b	.L231
 1596              	.L259:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 29


 1597 01dc 0346     		mov	r3, r0
 1598 01de 3246     		mov	r2, r6
 1599 01e0 3846     		mov	r0, r7
 1600 01e2 1149     		ldr	r1, .L261+60
 1601 01e4 4C46     		mov	r4, r9
 1602 01e6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1603 01ea 38E7     		b	.L231
 1604              	.L262:
 1605              		.align	2
 1606              	.L261:
 1607 01ec 44000000 		.word	.LC21
 1608 01f0 60000000 		.word	.LC22
 1609 01f4 28000000 		.word	.LC20
 1610 01f8 00008044 		.word	1149239296
 1611 01fc 00247449 		.word	1232348160
 1612 0200 00007A44 		.word	1148846080
 1613 0204 10000000 		.word	.LC17
 1614 0208 14000000 		.word	.LC18
 1615 020c 00000000 		.word	.LANCHOR4
 1616 0210 18000000 		.word	.LC19
 1617 0214 E8000000 		.word	.LC26
 1618 0218 00000000 		.word	.LC16
 1619 021c A0000000 		.word	.LC24
 1620 0220 00000000 		.word	.LANCHOR3
 1621 0224 74000000 		.word	.LC23
 1622 0228 C4000000 		.word	.LC25
 1623              		.size	_ZN11MassStorage5MountEjRK9StringRefb, .-_ZN11MassStorage5MountEjRK9StringRefb
 1624              		.section	.text._ZN11MassStorage7UnmountEjRK9StringRef,"ax",%progbits
 1625              		.align	1
 1626              		.p2align 2,,3
 1627              		.global	_ZN11MassStorage7UnmountEjRK9StringRef
 1628              		.syntax unified
 1629              		.thumb
 1630              		.thumb_func
 1631              		.fpu fpv4-sp-d16
 1632              		.type	_ZN11MassStorage7UnmountEjRK9StringRef, %function
 1633              	_ZN11MassStorage7UnmountEjRK9StringRef:
 1634              		@ args = 0, pretend = 0, frame = 0
 1635              		@ frame_needed = 0, uses_anonymous_args = 0
 1636 0000 0129     		cmp	r1, #1
 1637 0002 70B5     		push	{r4, r5, r6, lr}
 1638 0004 1546     		mov	r5, r2
 1639 0006 15D8     		bhi	.L268
 1640 0008 0A46     		mov	r2, r1
 1641 000a 0C46     		mov	r4, r1
 1642 000c 0646     		mov	r6, r0
 1643 000e 0C49     		ldr	r1, .L270
 1644 0010 2846     		mov	r0, r5
 1645 0012 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1646 0016 2146     		mov	r1, r4
 1647 0018 3046     		mov	r0, r6
 1648 001a 0122     		movs	r2, #1
 1649 001c FFF7FEFF 		bl	_ZN11MassStorage15InternalUnmountEjb
 1650 0020 08B9     		cbnz	r0, .L269
 1651 0022 0120     		movs	r0, #1
 1652 0024 70BD     		pop	{r4, r5, r6, pc}
 1653              	.L269:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 30


 1654 0026 0246     		mov	r2, r0
 1655 0028 0649     		ldr	r1, .L270+4
 1656 002a 2846     		mov	r0, r5
 1657 002c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1658 0030 0120     		movs	r0, #1
 1659 0032 70BD     		pop	{r4, r5, r6, pc}
 1660              	.L268:
 1661 0034 1046     		mov	r0, r2
 1662 0036 0449     		ldr	r1, .L270+8
 1663 0038 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1664 003c 0220     		movs	r0, #2
 1665 003e 70BD     		pop	{r4, r5, r6, pc}
 1666              	.L271:
 1667              		.align	2
 1668              	.L270:
 1669 0040 00000000 		.word	.LC27
 1670 0044 20000000 		.word	.LC28
 1671 0048 28000000 		.word	.LC20
 1672              		.size	_ZN11MassStorage7UnmountEjRK9StringRef, .-_ZN11MassStorage7UnmountEjRK9StringRef
 1673              		.section	.text._ZNK11MassStorage15GetNumFreeFilesEv,"ax",%progbits
 1674              		.align	1
 1675              		.p2align 2,,3
 1676              		.global	_ZNK11MassStorage15GetNumFreeFilesEv
 1677              		.syntax unified
 1678              		.thumb
 1679              		.thumb_func
 1680              		.fpu fpv4-sp-d16
 1681              		.type	_ZNK11MassStorage15GetNumFreeFilesEv, %function
 1682              	_ZNK11MassStorage15GetNumFreeFilesEv:
 1683              		@ args = 0, pretend = 0, frame = 8
 1684              		@ frame_needed = 0, uses_anonymous_args = 0
 1685 0000 10B5     		push	{r4, lr}
 1686 0002 82B0     		sub	sp, sp, #8
 1687 0004 0446     		mov	r4, r0
 1688 0006 00F5A861 		add	r1, r0, #1344
 1689 000a 4FF0FF32 		mov	r2, #-1
 1690 000e 6846     		mov	r0, sp
 1691 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1692 0014 04F58053 		add	r3, r4, #4096
 1693 0018 04F59250 		add	r0, r4, #4672
 1694 001c 1833     		adds	r3, r3, #24
 1695 001e 0830     		adds	r0, r0, #8
 1696 0020 0024     		movs	r4, #0
 1697              	.L274:
 1698 0022 93F83120 		ldrb	r2, [r3, #49]	@ zero_extendqisi2
 1699 0026 3833     		adds	r3, r3, #56
 1700 0028 02B9     		cbnz	r2, .L273
 1701 002a 0134     		adds	r4, r4, #1
 1702              	.L273:
 1703 002c 9842     		cmp	r0, r3
 1704 002e F8D1     		bne	.L274
 1705 0030 6846     		mov	r0, sp
 1706 0032 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1707 0036 2046     		mov	r0, r4
 1708 0038 02B0     		add	sp, sp, #8
 1709              		@ sp needed
 1710 003a 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 31


 1711              		.size	_ZNK11MassStorage15GetNumFreeFilesEv, .-_ZNK11MassStorage15GetNumFreeFilesEv
 1712              		.section	.text._ZN11MassStorage4SpinEv,"ax",%progbits
 1713              		.align	1
 1714              		.p2align 2,,3
 1715              		.global	_ZN11MassStorage4SpinEv
 1716              		.syntax unified
 1717              		.thumb
 1718              		.thumb_func
 1719              		.fpu fpv4-sp-d16
 1720              		.type	_ZN11MassStorage4SpinEv, %function
 1721              	_ZN11MassStorage4SpinEv:
 1722              		@ args = 0, pretend = 0, frame = 8
 1723              		@ frame_needed = 0, uses_anonymous_args = 0
 1724 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1725 0004 DFF8E090 		ldr	r9, .L306
 1726 0008 DFF8E080 		ldr	r8, .L306+4
 1727 000c 85B0     		sub	sp, sp, #20
 1728 000e 0446     		mov	r4, r0
 1729 0010 00F50D75 		add	r5, r0, #564
 1730 0014 0026     		movs	r6, #0
 1731 0016 0227     		movs	r7, #2
 1732              	.L286:
 1733 0018 95F86800 		ldrb	r0, [r5, #104]	@ zero_extendqisi2
 1734 001c FF28     		cmp	r0, #255
 1735 001e 16D0     		beq	.L279
 1736 0020 FFF7FEFF 		bl	digitalRead
 1737 0024 95F86B30 		ldrb	r3, [r5, #107]	@ zero_extendqisi2
 1738 0028 B8B3     		cbz	r0, .L280
 1739 002a 83B1     		cbz	r3, .L279
 1740 002c 022B     		cmp	r3, #2
 1741 002e 40D9     		bls	.L281
 1742 0030 032B     		cmp	r3, #3
 1743 0032 0CD1     		bne	.L279
 1744 0034 FFF7FEFF 		bl	millis
 1745 0038 2B68     		ldr	r3, [r5]
 1746 003a C01A     		subs	r0, r0, r3
 1747 003c C828     		cmp	r0, #200
 1748 003e 06D9     		bls	.L279
 1749 0040 95F86A30 		ldrb	r3, [r5, #106]	@ zero_extendqisi2
 1750 0044 0022     		movs	r2, #0
 1751 0046 85F86B20 		strb	r2, [r5, #107]
 1752 004a 002B     		cmp	r3, #0
 1753 004c 3BD1     		bne	.L304
 1754              	.L279:
 1755 004e 05F52875 		add	r5, r5, #672
 1756 0052 06B3     		cbz	r6, .L289
 1757 0054 04F5A861 		add	r1, r4, #1344
 1758 0058 04F59255 		add	r5, r4, #4672
 1759 005c 02A8     		add	r0, sp, #8
 1760 005e 4FF0FF32 		mov	r2, #-1
 1761 0062 04F58054 		add	r4, r4, #4096
 1762 0066 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1763 006a 0835     		adds	r5, r5, #8
 1764 006c 1834     		adds	r4, r4, #24
 1765 006e 02E0     		b	.L288
 1766              	.L287:
 1767 0070 3834     		adds	r4, r4, #56
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 32


 1768 0072 A542     		cmp	r5, r4
 1769 0074 09D0     		beq	.L305
 1770              	.L288:
 1771 0076 94F83030 		ldrb	r3, [r4, #48]	@ zero_extendqisi2
 1772 007a 002B     		cmp	r3, #0
 1773 007c F8D0     		beq	.L287
 1774 007e 2046     		mov	r0, r4
 1775 0080 3834     		adds	r4, r4, #56
 1776 0082 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1777 0086 A542     		cmp	r5, r4
 1778 0088 F5D1     		bne	.L288
 1779              	.L305:
 1780 008a 02A8     		add	r0, sp, #8
 1781 008c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1782 0090 05B0     		add	sp, sp, #20
 1783              		@ sp needed
 1784 0092 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1785              	.L289:
 1786 0096 0126     		movs	r6, #1
 1787 0098 BEE7     		b	.L286
 1788              	.L280:
 1789 009a 012B     		cmp	r3, #1
 1790 009c 10D0     		beq	.L284
 1791 009e 01D3     		bcc	.L285
 1792 00a0 032B     		cmp	r3, #3
 1793 00a2 D4D1     		bne	.L279
 1794              	.L285:
 1795 00a4 0123     		movs	r3, #1
 1796 00a6 85F86B30 		strb	r3, [r5, #107]
 1797 00aa FFF7FEFF 		bl	millis
 1798 00ae 2860     		str	r0, [r5]
 1799 00b0 CDE7     		b	.L279
 1800              	.L281:
 1801 00b2 0323     		movs	r3, #3
 1802 00b4 85F86B30 		strb	r3, [r5, #107]
 1803 00b8 FFF7FEFF 		bl	millis
 1804 00bc 2860     		str	r0, [r5]
 1805 00be C6E7     		b	.L279
 1806              	.L284:
 1807 00c0 85F86B70 		strb	r7, [r5, #107]
 1808 00c4 C3E7     		b	.L279
 1809              	.L304:
 1810 00c6 3146     		mov	r1, r6
 1811 00c8 2046     		mov	r0, r4
 1812 00ca FFF7FEFF 		bl	_ZN11MassStorage15InternalUnmountEjb
 1813 00ce 0028     		cmp	r0, #0
 1814 00d0 BDD0     		beq	.L279
 1815 00d2 D9F80430 		ldr	r3, [r9, #4]
 1816 00d6 0090     		str	r0, [sp]
 1817 00d8 4246     		mov	r2, r8
 1818 00da 1846     		mov	r0, r3
 1819 00dc 40F2B511 		movw	r1, #437
 1820 00e0 3346     		mov	r3, r6
 1821 00e2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1822 00e6 B2E7     		b	.L279
 1823              	.L307:
 1824              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 33


 1825              	.L306:
 1826 00e8 00000000 		.word	reprap
 1827 00ec 00000000 		.word	.LC29
 1828              		.size	_ZN11MassStorage4SpinEv, .-_ZN11MassStorage4SpinEv
 1829              		.section	.text.ff_cre_syncobj,"ax",%progbits
 1830              		.align	1
 1831              		.p2align 2,,3
 1832              		.global	ff_cre_syncobj
 1833              		.syntax unified
 1834              		.thumb
 1835              		.thumb_func
 1836              		.fpu fpv4-sp-d16
 1837              		.type	ff_cre_syncobj, %function
 1838              	ff_cre_syncobj:
 1839              		@ args = 0, pretend = 0, frame = 0
 1840              		@ frame_needed = 0, uses_anonymous_args = 0
 1841              		@ link register save eliminated.
 1842 0000 064B     		ldr	r3, .L309
 1843 0002 5A68     		ldr	r2, [r3, #4]
 1844 0004 4FF42873 		mov	r3, #672
 1845 0008 D2F8DC2B 		ldr	r2, [r2, #3036]
 1846 000c 03FB00F0 		mul	r0, r3, r0
 1847 0010 00F50F70 		add	r0, r0, #572
 1848 0014 1044     		add	r0, r0, r2
 1849 0016 0860     		str	r0, [r1]
 1850 0018 0120     		movs	r0, #1
 1851 001a 7047     		bx	lr
 1852              	.L310:
 1853              		.align	2
 1854              	.L309:
 1855 001c 00000000 		.word	reprap
 1856              		.size	ff_cre_syncobj, .-ff_cre_syncobj
 1857              		.section	.text.ff_req_grant,"ax",%progbits
 1858              		.align	1
 1859              		.p2align 2,,3
 1860              		.global	ff_req_grant
 1861              		.syntax unified
 1862              		.thumb
 1863              		.thumb_func
 1864              		.fpu fpv4-sp-d16
 1865              		.type	ff_req_grant, %function
 1866              	ff_req_grant:
 1867              		@ args = 0, pretend = 0, frame = 0
 1868              		@ frame_needed = 0, uses_anonymous_args = 0
 1869 0000 08B5     		push	{r3, lr}
 1870 0002 4FF0FF31 		mov	r1, #-1
 1871 0006 FFF7FEFF 		bl	_ZNK5Mutex4TakeEm
 1872 000a 0120     		movs	r0, #1
 1873 000c 08BD     		pop	{r3, pc}
 1874              		.size	ff_req_grant, .-ff_req_grant
 1875 000e 00BF     		.section	.text.ff_rel_grant,"ax",%progbits
 1876              		.align	1
 1877              		.p2align 2,,3
 1878              		.global	ff_rel_grant
 1879              		.syntax unified
 1880              		.thumb
 1881              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 34


 1882              		.fpu fpv4-sp-d16
 1883              		.type	ff_rel_grant, %function
 1884              	ff_rel_grant:
 1885              		@ args = 0, pretend = 0, frame = 0
 1886              		@ frame_needed = 0, uses_anonymous_args = 0
 1887              		@ link register save eliminated.
 1888 0000 FFF7FEBF 		b	_ZNK5Mutex7ReleaseEv
 1889              		.size	ff_rel_grant, .-ff_rel_grant
 1890              		.section	.text.ff_del_syncobj,"ax",%progbits
 1891              		.align	1
 1892              		.p2align 2,,3
 1893              		.global	ff_del_syncobj
 1894              		.syntax unified
 1895              		.thumb
 1896              		.thumb_func
 1897              		.fpu fpv4-sp-d16
 1898              		.type	ff_del_syncobj, %function
 1899              	ff_del_syncobj:
 1900              		@ args = 0, pretend = 0, frame = 0
 1901              		@ frame_needed = 0, uses_anonymous_args = 0
 1902              		@ link register save eliminated.
 1903 0000 0120     		movs	r0, #1
 1904 0002 7047     		bx	lr
 1905              		.size	ff_del_syncobj, .-ff_del_syncobj
 1906              		.section	.text._ZN6StringILj100EE6printfEPKcz,"axG",%progbits,_ZN6StringILj100EE6printfEPKcz,comda
 1907              		.align	1
 1908              		.p2align 2,,3
 1909              		.weak	_ZN6StringILj100EE6printfEPKcz
 1910              		.syntax unified
 1911              		.thumb
 1912              		.thumb_func
 1913              		.fpu fpv4-sp-d16
 1914              		.type	_ZN6StringILj100EE6printfEPKcz, %function
 1915              	_ZN6StringILj100EE6printfEPKcz:
 1916              		@ args = 4, pretend = 12, frame = 16
 1917              		@ frame_needed = 0, uses_anonymous_args = 1
 1918 0000 0EB4     		push	{r1, r2, r3}
 1919 0002 00B5     		push	{lr}
 1920 0004 84B0     		sub	sp, sp, #16
 1921 0006 05AA     		add	r2, sp, #20
 1922 0008 0290     		str	r0, [sp, #8]
 1923 000a 52F8041B 		ldr	r1, [r2], #4
 1924 000e 0192     		str	r2, [sp, #4]
 1925 0010 6523     		movs	r3, #101
 1926 0012 02A8     		add	r0, sp, #8
 1927 0014 0393     		str	r3, [sp, #12]
 1928 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 1929 001a 04B0     		add	sp, sp, #16
 1930              		@ sp needed
 1931 001c 5DF804EB 		ldr	lr, [sp], #4
 1932 0020 03B0     		add	sp, sp, #12
 1933 0022 7047     		bx	lr
 1934              		.size	_ZN6StringILj100EE6printfEPKcz, .-_ZN6StringILj100EE6printfEPKcz
 1935              		.section	.text._ZN11MassStorage20RecordSimulationTimeEPKcm,"ax",%progbits
 1936              		.align	1
 1937              		.p2align 2,,3
 1938              		.global	_ZN11MassStorage20RecordSimulationTimeEPKcm
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 35


 1939              		.syntax unified
 1940              		.thumb
 1941              		.thumb_func
 1942              		.fpu fpv4-sp-d16
 1943              		.type	_ZN11MassStorage20RecordSimulationTimeEPKcm, %function
 1944              	_ZN11MassStorage20RecordSimulationTimeEPKcm:
 1945              		@ args = 0, pretend = 0, frame = 120
 1946              		@ frame_needed = 0, uses_anonymous_args = 0
 1947 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1948 0004 0223     		movs	r3, #2
 1949 0006 A1B0     		sub	sp, sp, #132
 1950 0008 0D46     		mov	r5, r1
 1951 000a 9146     		mov	r9, r2
 1952 000c 0A46     		mov	r2, r1
 1953 000e 3849     		ldr	r1, .L340
 1954 0010 8046     		mov	r8, r0
 1955 0012 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1956 0016 B0B1     		cbz	r0, .L319
 1957 0018 0026     		movs	r6, #0
 1958 001a 0446     		mov	r4, r0
 1959 001c 8DF81860 		strb	r6, [sp, #24]
 1960 0020 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1961 0024 6428     		cmp	r0, #100
 1962 0026 28BF     		it	cs
 1963 0028 6420     		movcs	r0, #100
 1964 002a 8346     		mov	fp, r0
 1965 002c 2046     		mov	r0, r4
 1966 002e FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1967 0032 A0EB0B07 		sub	r7, r0, fp
 1968 0036 3946     		mov	r1, r7
 1969 0038 2046     		mov	r0, r4
 1970 003a FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1971 003e 68B9     		cbnz	r0, .L339
 1972              	.L322:
 1973 0040 2046     		mov	r0, r4
 1974 0042 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1975              	.L319:
 1976 0046 2B4B     		ldr	r3, .L340+4
 1977 0048 2B4A     		ldr	r2, .L340+8
 1978 004a 5868     		ldr	r0, [r3, #4]
 1979 004c 40F2B511 		movw	r1, #437
 1980 0050 2B46     		mov	r3, r5
 1981 0052 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1982              	.L317:
 1983 0056 21B0     		add	sp, sp, #132
 1984              		@ sp needed
 1985 0058 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1986              	.L339:
 1987 005c 0DF1180A 		add	r10, sp, #24
 1988 0060 5146     		mov	r1, r10
 1989 0062 5A46     		mov	r2, fp
 1990 0064 2046     		mov	r0, r4
 1991 0066 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1992 006a 5845     		cmp	r0, fp
 1993 006c E8D1     		bne	.L322
 1994 006e 0590     		str	r0, [sp, #20]
 1995 0070 2A46     		mov	r2, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 36


 1996 0072 1F49     		ldr	r1, .L340
 1997 0074 4046     		mov	r0, r8
 1998 0076 FFF7FEFF 		bl	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1999 007a 059B     		ldr	r3, [sp, #20]
 2000 007c 20AA     		add	r2, sp, #128
 2001 007e 1344     		add	r3, r3, r2
 2002 0080 CDE90201 		strd	r0, [sp, #8]
 2003 0084 03F8686C 		strb	r6, [r3, #-104]
 2004 0088 1C49     		ldr	r1, .L340+12
 2005 008a 5046     		mov	r0, r10
 2006 008c FFF7FEFF 		bl	strstr
 2007 0090 38B1     		cbz	r0, .L325
 2008 0092 A0EB0A01 		sub	r1, r0, r10
 2009 0096 3944     		add	r1, r1, r7
 2010 0098 2046     		mov	r0, r4
 2011 009a FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 2012 009e 0028     		cmp	r0, #0
 2013 00a0 CED0     		beq	.L322
 2014              	.L325:
 2015 00a2 1749     		ldr	r1, .L340+16
 2016 00a4 154A     		ldr	r2, .L340+12
 2017 00a6 4B46     		mov	r3, r9
 2018 00a8 5046     		mov	r0, r10
 2019 00aa FFF7FEFF 		bl	_ZN6StringILj100EE6printfEPKcz
 2020 00ae 5146     		mov	r1, r10
 2021 00b0 2046     		mov	r0, r4
 2022 00b2 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2023 00b6 0028     		cmp	r0, #0
 2024 00b8 C2D0     		beq	.L322
 2025 00ba 2046     		mov	r0, r4
 2026 00bc FFF7FEFF 		bl	_ZN9FileStore8TruncateEv
 2027 00c0 0646     		mov	r6, r0
 2028 00c2 2046     		mov	r0, r4
 2029 00c4 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2030 00c8 0028     		cmp	r0, #0
 2031 00ca BCD0     		beq	.L319
 2032 00cc 002E     		cmp	r6, #0
 2033 00ce BAD0     		beq	.L319
 2034 00d0 DDE90234 		ldrd	r3, [sp, #8]
 2035 00d4 2343     		orrs	r3, r3, r4
 2036 00d6 BED0     		beq	.L317
 2037 00d8 DDE90234 		ldrd	r3, [sp, #8]
 2038 00dc 4046     		mov	r0, r8
 2039 00de CDE90034 		strd	r3, [sp]
 2040 00e2 2A46     		mov	r2, r5
 2041 00e4 0249     		ldr	r1, .L340
 2042 00e6 FFF7FEFF 		bl	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x
 2043 00ea 0028     		cmp	r0, #0
 2044 00ec B3D1     		bne	.L317
 2045 00ee AAE7     		b	.L319
 2046              	.L341:
 2047              		.align	2
 2048              	.L340:
 2049 00f0 00000000 		.word	.LC30
 2050 00f4 00000000 		.word	reprap
 2051 00f8 30000000 		.word	.LC33
 2052 00fc 0C000000 		.word	.LC31
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 37


 2053 0100 24000000 		.word	.LC32
 2054              		.size	_ZN11MassStorage20RecordSimulationTimeEPKcm, .-_ZN11MassStorage20RecordSimulationTimeEPKcm
 2055              		.section	.text._ZN6StringILj50EE6printfEPKcz,"axG",%progbits,_ZN6StringILj50EE6printfEPKcz,comdat
 2056              		.align	1
 2057              		.p2align 2,,3
 2058              		.weak	_ZN6StringILj50EE6printfEPKcz
 2059              		.syntax unified
 2060              		.thumb
 2061              		.thumb_func
 2062              		.fpu fpv4-sp-d16
 2063              		.type	_ZN6StringILj50EE6printfEPKcz, %function
 2064              	_ZN6StringILj50EE6printfEPKcz:
 2065              		@ args = 4, pretend = 12, frame = 16
 2066              		@ frame_needed = 0, uses_anonymous_args = 1
 2067 0000 0EB4     		push	{r1, r2, r3}
 2068 0002 00B5     		push	{lr}
 2069 0004 84B0     		sub	sp, sp, #16
 2070 0006 05AA     		add	r2, sp, #20
 2071 0008 0290     		str	r0, [sp, #8]
 2072 000a 52F8041B 		ldr	r1, [r2], #4
 2073 000e 0192     		str	r2, [sp, #4]
 2074 0010 3323     		movs	r3, #51
 2075 0012 02A8     		add	r0, sp, #8
 2076 0014 0393     		str	r3, [sp, #12]
 2077 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2078 001a 04B0     		add	sp, sp, #16
 2079              		@ sp needed
 2080 001c 5DF804EB 		ldr	lr, [sp], #4
 2081 0020 03B0     		add	sp, sp, #12
 2082 0022 7047     		bx	lr
 2083              		.size	_ZN6StringILj50EE6printfEPKcz, .-_ZN6StringILj50EE6printfEPKcz
 2084              		.section	.text._ZN11MassStorage11GetCardInfoEjRyS0_RmS1_,"ax",%progbits
 2085              		.align	1
 2086              		.p2align 2,,3
 2087              		.global	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_
 2088              		.syntax unified
 2089              		.thumb
 2090              		.thumb_func
 2091              		.fpu fpv4-sp-d16
 2092              		.type	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_, %function
 2093              	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_:
 2094              		@ args = 8, pretend = 0, frame = 64
 2095              		@ frame_needed = 0, uses_anonymous_args = 0
 2096 0000 0129     		cmp	r1, #1
 2097 0002 01D9     		bls	.L353
 2098 0004 0020     		movs	r0, #0
 2099 0006 7047     		bx	lr
 2100              	.L353:
 2101 0008 F0B5     		push	{r4, r5, r6, r7, lr}
 2102 000a 4FF42874 		mov	r4, #672
 2103 000e 04FB0100 		mla	r0, r4, r1, r0
 2104 0012 91B0     		sub	sp, sp, #68
 2105 0014 90F89E02 		ldrb	r0, [r0, #670]	@ zero_extendqisi2
 2106 0018 10B9     		cbnz	r0, .L354
 2107 001a 0120     		movs	r0, #1
 2108              	.L345:
 2109 001c 11B0     		add	sp, sp, #68
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 38


 2110              		@ sp needed
 2111 001e F0BD     		pop	{r4, r5, r6, r7, pc}
 2112              	.L354:
 2113 0020 CFB2     		uxtb	r7, r1
 2114 0022 3846     		mov	r0, r7
 2115 0024 1546     		mov	r5, r2
 2116 0026 0C46     		mov	r4, r1
 2117 0028 1E46     		mov	r6, r3
 2118 002a FFF7FEFF 		bl	sd_mmc_get_capacity
 2119 002e 820D     		lsrs	r2, r0, #22
 2120 0030 8302     		lsls	r3, r0, #10
 2121 0032 C5E90032 		strd	r3, r2, [r5]
 2122 0036 3846     		mov	r0, r7
 2123 0038 10AD     		add	r5, sp, #64
 2124 003a FFF7FEFF 		bl	sd_mmc_get_interface_speed
 2125 003e 0027     		movs	r7, #0
 2126 0040 05F8347D 		strb	r7, [r5, #-52]!
 2127 0044 169B     		ldr	r3, [sp, #88]
 2128 0046 1149     		ldr	r1, .L355
 2129 0048 1860     		str	r0, [r3]
 2130 004a 2246     		mov	r2, r4
 2131 004c 2846     		mov	r0, r5
 2132 004e FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 2133 0052 2846     		mov	r0, r5
 2134 0054 02AA     		add	r2, sp, #8
 2135 0056 01A9     		add	r1, sp, #4
 2136 0058 FFF7FEFF 		bl	f_getfree
 2137 005c 70B9     		cbnz	r0, .L346
 2138 005e DDE90123 		ldrd	r2, r3, [sp, #4]
 2139 0062 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 2140 0064 5B02     		lsls	r3, r3, #9
 2141 0066 A2FB0345 		umull	r4, r5, r2, r3
 2142 006a D917     		asrs	r1, r3, #31
 2143 006c 02FB0155 		mla	r5, r2, r1, r5
 2144 0070 179A     		ldr	r2, [sp, #92]
 2145 0072 0220     		movs	r0, #2
 2146 0074 1360     		str	r3, [r2]
 2147 0076 C6E90045 		strd	r4, [r6]
 2148 007a CFE7     		b	.L345
 2149              	.L346:
 2150 007c 1799     		ldr	r1, [sp, #92]
 2151 007e 0022     		movs	r2, #0
 2152 0080 0023     		movs	r3, #0
 2153 0082 0F60     		str	r7, [r1]
 2154 0084 0220     		movs	r0, #2
 2155 0086 C6E90023 		strd	r2, [r6]
 2156 008a C7E7     		b	.L345
 2157              	.L356:
 2158              		.align	2
 2159              	.L355:
 2160 008c 00000000 		.word	.LC34
 2161              		.size	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_, .-_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_
 2162              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2163              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2164              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2165              	_ZL28cpu_irq_prev_interrupt_state:
 2166 0000 00       		.space	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 39


 2167              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2168              		.align	2
 2169              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2170              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2171              	_ZL32cpu_irq_critical_section_counter:
 2172 0000 00000000 		.space	4
 2173              		.section	.rodata.CSWTCH.43,"a",%progbits
 2174              		.align	2
 2175              		.set	.LANCHOR4,. + 0
 2176              		.type	CSWTCH.43, %object
 2177              		.size	CSWTCH.43, 40
 2178              	CSWTCH.43:
 2179 0000 78000000 		.word	.LC41
 2180 0004 7C000000 		.word	.LC42
 2181 0008 18000000 		.word	.LC19
 2182 000c 80000000 		.word	.LC43
 2183 0010 88000000 		.word	.LC44
 2184 0014 18000000 		.word	.LC19
 2185 0018 18000000 		.word	.LC19
 2186 001c 18000000 		.word	.LC19
 2187 0020 94000000 		.word	.LC45
 2188 0024 9C000000 		.word	.LC46
 2189              		.section	.rodata.CSWTCH.45,"a",%progbits
 2190              		.align	2
 2191              		.set	.LANCHOR3,. + 0
 2192              		.type	CSWTCH.45, %object
 2193              		.size	CSWTCH.45, 24
 2194              	CSWTCH.45:
 2195 0000 00000000 		.word	.LC35
 2196 0004 10000000 		.word	.LC36
 2197 0008 24000000 		.word	.LC37
 2198 000c 34000000 		.word	.LC38
 2199 0010 48000000 		.word	.LC39
 2200 0014 60000000 		.word	.LC40
 2201              		.section	.rodata._ZL10monthNames,"a",%progbits
 2202              		.align	2
 2203              		.set	.LANCHOR2,. + 0
 2204              		.type	_ZL10monthNames, %object
 2205              		.size	_ZL10monthNames, 52
 2206              	_ZL10monthNames:
 2207 0000 00000000 		.word	.LC8
 2208 0004 B0000000 		.word	.LC47
 2209 0008 B4000000 		.word	.LC48
 2210 000c B8000000 		.word	.LC49
 2211 0010 BC000000 		.word	.LC50
 2212 0014 C0000000 		.word	.LC51
 2213 0018 C4000000 		.word	.LC52
 2214 001c C8000000 		.word	.LC53
 2215 0020 CC000000 		.word	.LC54
 2216 0024 D0000000 		.word	.LC55
 2217 0028 D4000000 		.word	.LC56
 2218 002c D8000000 		.word	.LC57
 2219 0030 DC000000 		.word	.LC58
 2220              		.section	.rodata._ZL11SdSpiCSPins,"a",%progbits
 2221              		.align	2
 2222              		.set	.LANCHOR0,. + 0
 2223              		.type	_ZL11SdSpiCSPins, %object
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 40


 2224              		.size	_ZL11SdSpiCSPins, 1
 2225              	_ZL11SdSpiCSPins:
 2226 0000 38       		.byte	56
 2227              		.section	.rodata._ZL18SdWriteProtectPins,"a",%progbits
 2228              		.align	2
 2229              		.set	.LANCHOR1,. + 0
 2230              		.type	_ZL18SdWriteProtectPins, %object
 2231              		.size	_ZL18SdWriteProtectPins, 2
 2232              	_ZL18SdWriteProtectPins:
 2233 0000 FF       		.byte	-1
 2234 0001 FF       		.byte	-1
 2235              		.section	.rodata._ZN11MassStorage11CombineNameERK9StringRefPKcS4_.str1.4,"aMS",%progbits,1
 2236              		.align	2
 2237              	.LC5:
 2238 0000 436F6D62 		.ascii	"CombineName() buffer overflow\000"
 2238      696E654E 
 2238      616D6528 
 2238      29206275 
 2238      66666572 
 2239 001e 0000     		.space	2
 2240              	.LC6:
 2241 0020 3F3F3F3F 		.ascii	"?????\000"
 2241      3F00
 2242 0026 0000     		.space	2
 2243              	.LC7:
 2244 0028 66696C65 		.ascii	"file name too long\000"
 2244      206E616D 
 2244      6520746F 
 2244      6F206C6F 
 2244      6E6700
 2245              		.section	.rodata._ZN11MassStorage11GetCardInfoEjRyS0_RmS1_.str1.4,"aMS",%progbits,1
 2246              		.align	2
 2247              	.LC34:
 2248 0000 25753A2F 		.ascii	"%u:/\000"
 2248      00
 2249              		.section	.rodata._ZN11MassStorage12GetMonthNameEh.str1.4,"aMS",%progbits,1
 2250              		.align	2
 2251              	.LC8:
 2252 0000 3F3F3F00 		.ascii	"???\000"
 2253              		.section	.rodata._ZN11MassStorage13MakeDirectoryEPKcS1_.str1.4,"aMS",%progbits,1
 2254              		.align	2
 2255              	.LC11:
 2256 0000 4661696C 		.ascii	"Failed to create directory %s\012\000"
 2256      65642074 
 2256      6F206372 
 2256      65617465 
 2256      20646972 
 2257              		.section	.rodata._ZN11MassStorage19SetLastModifiedTimeEPKcS1_x.str1.4,"aMS",%progbits,1
 2258              		.align	2
 2259              	.LC13:
 2260 0000 4661696C 		.ascii	"Failed to set last modified time for file '%s'\012\000"
 2260      65642074 
 2260      6F207365 
 2260      74206C61 
 2260      7374206D 
 2261              		.section	.rodata._ZN11MassStorage20RecordSimulationTimeEPKcm.str1.4,"aMS",%progbits,1
 2262              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 41


 2263              	.LC30:
 2264 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 2264      636F6465 
 2264      732F00
 2265 000b 00       		.space	1
 2266              	.LC31:
 2267 000c 0A3B2053 		.ascii	"\012; Simulated print time\000"
 2267      696D756C 
 2267      61746564 
 2267      20707269 
 2267      6E742074 
 2268              	.LC32:
 2269 0024 25733A20 		.ascii	"%s: %lu\012\000"
 2269      256C750A 
 2269      00
 2270 002d 000000   		.space	3
 2271              	.LC33:
 2272 0030 4661696C 		.ascii	"Failed to append simulated print time to file %s\012"
 2272      65642074 
 2272      6F206170 
 2272      70656E64 
 2272      2073696D 
 2273 0061 00       		.ascii	"\000"
 2274              		.section	.rodata._ZN11MassStorage4InitEv.str1.4,"aMS",%progbits,1
 2275              		.align	2
 2276              	.LC0:
 2277 0000 46696C65 		.ascii	"FileSystem\000"
 2277      53797374 
 2277      656D00
 2278 000b 00       		.space	1
 2279              	.LC1:
 2280 000c 44697253 		.ascii	"DirSearch\000"
 2280      65617263 
 2280      6800
 2281 0016 0000     		.space	2
 2282              	.LC2:
 2283 0018 53443000 		.ascii	"SD0\000"
 2284              	.LC3:
 2285 001c 53443100 		.ascii	"SD1\000"
 2286              		.section	.rodata._ZN11MassStorage4SpinEv.str1.4,"aMS",%progbits,1
 2287              		.align	2
 2288              	.LC29:
 2289 0000 53442063 		.ascii	"SD card %u removed with %u file(s) open on it\012\000"
 2289      61726420 
 2289      25752072 
 2289      656D6F76 
 2289      65642077 
 2290              		.section	.rodata._ZN11MassStorage5MountEjRK9StringRefb.str1.4,"aMS",%progbits,1
 2291              		.align	2
 2292              	.LC16:
 2293 0000 556E6B6E 		.ascii	"Unknown error\000"
 2293      6F776E20 
 2293      6572726F 
 2293      7200
 2294 000e 0000     		.space	2
 2295              	.LC17:
 2296 0010 476200   		.ascii	"Gb\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 42


 2297 0013 00       		.space	1
 2298              	.LC18:
 2299 0014 4D6200   		.ascii	"Mb\000"
 2300 0017 00       		.space	1
 2301              	.LC19:
 2302 0018 556E6B6E 		.ascii	"Unknown type\000"
 2302      6F776E20 
 2302      74797065 
 2302      00
 2303 0025 000000   		.space	3
 2304              	.LC20:
 2305 0028 53442063 		.ascii	"SD card number out of range\000"
 2305      61726420 
 2305      6E756D62 
 2305      6572206F 
 2305      7574206F 
 2306              	.LC21:
 2307 0044 53442063 		.ascii	"SD card has open file(s)\000"
 2307      61726420 
 2307      68617320 
 2307      6F70656E 
 2307      2066696C 
 2308 005d 000000   		.space	3
 2309              	.LC22:
 2310 0060 4E6F2053 		.ascii	"No SD card present\000"
 2310      44206361 
 2310      72642070 
 2310      72657365 
 2310      6E7400
 2311 0073 00       		.space	1
 2312              	.LC23:
 2313 0074 4174202E 		.ascii	"At ../src/Storage/MassStorage.cpp line %d\012\000"
 2313      2E2F7372 
 2313      632F5374 
 2313      6F726167 
 2313      652F4D61 
 2314 009f 00       		.space	1
 2315              	.LC24:
 2316 00a0 43616E6E 		.ascii	"Cannot initialise SD card %u: %s\000"
 2316      6F742069 
 2316      6E697469 
 2316      616C6973 
 2316      65205344 
 2317 00c1 000000   		.space	3
 2318              	.LC25:
 2319 00c4 43616E6E 		.ascii	"Cannot mount SD card %u: code %d\000"
 2319      6F74206D 
 2319      6F756E74 
 2319      20534420 
 2319      63617264 
 2320 00e5 000000   		.space	3
 2321              	.LC26:
 2322 00e8 25732063 		.ascii	"%s card mounted in slot %u, capacity %.2f%s\000"
 2322      61726420 
 2322      6D6F756E 
 2322      74656420 
 2322      696E2073 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 43


 2323              		.section	.rodata._ZN11MassStorage6DeleteEPKcS1_b.str1.4,"aMS",%progbits,1
 2324              		.align	2
 2325              	.LC9:
 2326 0000 43616E6E 		.ascii	"Cannot delete file %s because it is open\012\000"
 2326      6F742064 
 2326      656C6574 
 2326      65206669 
 2326      6C652025 
 2327 002a 0000     		.space	2
 2328              	.LC10:
 2329 002c 4661696C 		.ascii	"Failed to delete file %s\012\000"
 2329      65642074 
 2329      6F206465 
 2329      6C657465 
 2329      2066696C 
 2330              		.section	.rodata._ZN11MassStorage6RenameEPKcS1_.str1.4,"aMS",%progbits,1
 2331              		.align	2
 2332              	.LC12:
 2333 0000 4661696C 		.ascii	"Failed to rename file or directory %s to %s\012\000"
 2333      65642074 
 2333      6F207265 
 2333      6E616D65 
 2333      2066696C 
 2334              		.section	.rodata._ZN11MassStorage7UnmountEjRK9StringRef.str1.4,"aMS",%progbits,1
 2335              		.align	2
 2336              	.LC27:
 2337 0000 53442063 		.ascii	"SD card %u may now be removed\000"
 2337      61726420 
 2337      2575206D 
 2337      6179206E 
 2337      6F772062 
 2338 001e 0000     		.space	2
 2339              	.LC28:
 2340 0020 20282575 		.ascii	" (%u file(s) were closed)\000"
 2340      2066696C 
 2340      65287329 
 2340      20776572 
 2340      6520636C 
 2341              		.section	.rodata._ZN11MassStorage8OpenFileEPKcS1_8OpenMode.str1.4,"aMS",%progbits,1
 2342              		.align	2
 2343              	.LC4:
 2344 0000 4D617820 		.ascii	"Max open file count exceeded.\012\000"
 2344      6F70656E 
 2344      2066696C 
 2344      6520636F 
 2344      756E7420 
 2345              		.section	.rodata._ZN11MassStorage9FindFirstEPKcR8FileInfo.str1.4,"aMS",%progbits,1
 2346              		.align	2
 2347              	.LC14:
 2348 0000 2E00     		.ascii	".\000"
 2349 0002 0000     		.space	2
 2350              	.LC15:
 2351 0004 2E2E00   		.ascii	"..\000"
 2352              		.section	.rodata.str1.4,"aMS",%progbits,1
 2353              		.align	2
 2354              	.LC35:
 2355 0000 43617264 		.ascii	"Card not found\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 44


 2355      206E6F74 
 2355      20666F75 
 2355      6E6400
 2356 000f 00       		.space	1
 2357              	.LC36:
 2358 0010 43617264 		.ascii	"Card is unusable\000"
 2358      20697320 
 2358      756E7573 
 2358      61626C65 
 2358      00
 2359 0021 000000   		.space	3
 2360              	.LC37:
 2361 0024 536C6F74 		.ascii	"Slot unknown\000"
 2361      20756E6B 
 2361      6E6F776E 
 2361      00
 2362 0031 000000   		.space	3
 2363              	.LC38:
 2364 0034 436F6D6D 		.ascii	"Communication error\000"
 2364      756E6963 
 2364      6174696F 
 2364      6E206572 
 2364      726F7200 
 2365              	.LC39:
 2366 0048 496C6C65 		.ascii	"Illegal input parameter\000"
 2366      67616C20 
 2366      696E7075 
 2366      74207061 
 2366      72616D65 
 2367              	.LC40:
 2368 0060 43617264 		.ascii	"Card write protected\000"
 2368      20777269 
 2368      74652070 
 2368      726F7465 
 2368      63746564 
 2369 0075 000000   		.space	3
 2370              	.LC41:
 2371 0078 534400   		.ascii	"SD\000"
 2372 007b 00       		.space	1
 2373              	.LC42:
 2374 007c 4D4D4300 		.ascii	"MMC\000"
 2375              	.LC43:
 2376 0080 5344494F 		.ascii	"SDIO\000"
 2376      00
 2377 0085 000000   		.space	3
 2378              	.LC44:
 2379 0088 53442043 		.ascii	"SD COMBO\000"
 2379      4F4D424F 
 2379      00
 2380 0091 000000   		.space	3
 2381              	.LC45:
 2382 0094 53444843 		.ascii	"SDHC\000"
 2382      00
 2383 0099 000000   		.space	3
 2384              	.LC46:
 2385 009c 4D4D4320 		.ascii	"MMC High Capacity\000"
 2385      48696768 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccx2j7Kv.s 			page 45


 2385      20436170 
 2385      61636974 
 2385      7900
 2386 00ae 0000     		.space	2
 2387              	.LC47:
 2388 00b0 4A616E00 		.ascii	"Jan\000"
 2389              	.LC48:
 2390 00b4 46656200 		.ascii	"Feb\000"
 2391              	.LC49:
 2392 00b8 4D617200 		.ascii	"Mar\000"
 2393              	.LC50:
 2394 00bc 41707200 		.ascii	"Apr\000"
 2395              	.LC51:
 2396 00c0 4D617900 		.ascii	"May\000"
 2397              	.LC52:
 2398 00c4 4A756E00 		.ascii	"Jun\000"
 2399              	.LC53:
 2400 00c8 4A756C00 		.ascii	"Jul\000"
 2401              	.LC54:
 2402 00cc 41756700 		.ascii	"Aug\000"
 2403              	.LC55:
 2404 00d0 53657000 		.ascii	"Sep\000"
 2405              	.LC56:
 2406 00d4 4F637400 		.ascii	"Oct\000"
 2407              	.LC57:
 2408 00d8 4E6F7600 		.ascii	"Nov\000"
 2409              	.LC58:
 2410 00dc 44656300 		.ascii	"Dec\000"
 2411              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
