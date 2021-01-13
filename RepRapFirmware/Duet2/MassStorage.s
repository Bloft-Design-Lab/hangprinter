ARM GAS  /tmp/cczcjP9Q.s 			page 1


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
  14              		.section	.text._ZN11MassStorageC2EP8Platform,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN11MassStorageC2EP8Platform
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN11MassStorageC2EP8Platform, %function
  23              	_ZN11MassStorageC2EP8Platform:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  27 0002 0027     		movs	r7, #0
  28 0004 0646     		mov	r6, r0
  29 0006 C0F83872 		str	r7, [r0, #568]
  30 000a C0F87874 		str	r7, [r0, #1144]
  31 000e C0F88074 		str	r7, [r0, #1152]
  32 0012 C0F88474 		str	r7, [r0, #1156]
  33 0016 06F56464 		add	r4, r6, #3648
  34 001a 00F59160 		add	r0, r0, #1160
  35 001e FFF7FEFF 		bl	_ZN14FileInfoParserC1Ev
  36 0022 04F50C75 		add	r5, r4, #560
  37 0026 C6F83C7E 		str	r7, [r6, #3644]
  38              	.L2:
  39 002a 2046     		mov	r0, r4
  40 002c 3834     		adds	r4, r4, #56
  41 002e FFF7FEFF 		bl	_ZN9FileStoreC1Ev
  42 0032 A542     		cmp	r5, r4
  43 0034 F9D1     		bne	.L2
  44 0036 3046     		mov	r0, r6
  45 0038 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  46              		.size	_ZN11MassStorageC2EP8Platform, .-_ZN11MassStorageC2EP8Platform
  47              		.global	_ZN11MassStorageC1EP8Platform
  48              		.thumb_set _ZN11MassStorageC1EP8Platform,_ZN11MassStorageC2EP8Platform
  49 003a 00BF     		.section	.text._ZN11MassStorage19AllocateWriteBufferEv,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	_ZN11MassStorage19AllocateWriteBufferEv
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	_ZN11MassStorage19AllocateWriteBufferEv, %function
ARM GAS  /tmp/cczcjP9Q.s 			page 2


  58              	_ZN11MassStorage19AllocateWriteBufferEv:
  59              		@ args = 0, pretend = 0, frame = 8
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61 0000 30B5     		push	{r4, r5, lr}
  62 0002 0546     		mov	r5, r0
  63 0004 83B0     		sub	sp, sp, #12
  64 0006 00F59061 		add	r1, r0, #1152
  65 000a 4FF0FF32 		mov	r2, #-1
  66 000e 6846     		mov	r0, sp
  67 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
  68 0014 D5F83C4E 		ldr	r4, [r5, #3644]
  69 0018 24B1     		cbz	r4, .L7
  70 001a 2368     		ldr	r3, [r4]
  71 001c C5F83C3E 		str	r3, [r5, #3644]
  72 0020 0023     		movs	r3, #0
  73 0022 2360     		str	r3, [r4]
  74              	.L7:
  75 0024 6846     		mov	r0, sp
  76 0026 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
  77 002a 2046     		mov	r0, r4
  78 002c 03B0     		add	sp, sp, #12
  79              		@ sp needed
  80 002e 30BD     		pop	{r4, r5, pc}
  81              		.size	_ZN11MassStorage19AllocateWriteBufferEv, .-_ZN11MassStorage19AllocateWriteBufferEv
  82              		.section	.text._ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer,"ax",%progbits
  83              		.align	1
  84              		.p2align 2,,3
  85              		.global	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu fpv4-sp-d16
  90              		.type	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer, %function
  91              	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer:
  92              		@ args = 0, pretend = 0, frame = 8
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94 0000 30B5     		push	{r4, r5, lr}
  95 0002 0446     		mov	r4, r0
  96 0004 83B0     		sub	sp, sp, #12
  97 0006 0D46     		mov	r5, r1
  98 0008 4FF0FF32 		mov	r2, #-1
  99 000c 04F59061 		add	r1, r4, #1152
 100 0010 6846     		mov	r0, sp
 101 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 102 0016 D4F83C3E 		ldr	r3, [r4, #3644]
 103 001a 2B60     		str	r3, [r5]
 104 001c 6846     		mov	r0, sp
 105 001e C4F83C5E 		str	r5, [r4, #3644]
 106 0022 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 107 0026 03B0     		add	sp, sp, #12
 108              		@ sp needed
 109 0028 30BD     		pop	{r4, r5, pc}
 110              		.size	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer, .-_ZN11MassStorage18ReleaseWriteBuf
 111 002a 00BF     		.section	.text._ZN11MassStorage8OpenFileEPKcS1_8OpenMode,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
ARM GAS  /tmp/cczcjP9Q.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv4-sp-d16
 119              		.type	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode, %function
 120              	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode:
 121              		@ args = 0, pretend = 0, frame = 8
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 124 0002 83B0     		sub	sp, sp, #12
 125 0004 0446     		mov	r4, r0
 126 0006 0D46     		mov	r5, r1
 127 0008 1646     		mov	r6, r2
 128 000a 00F59061 		add	r1, r0, #1152
 129 000e 4FF0FF32 		mov	r2, #-1
 130 0012 6846     		mov	r0, sp
 131 0014 1F46     		mov	r7, r3
 132 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 133 001a 2246     		mov	r2, r4
 134 001c 0023     		movs	r3, #0
 135              	.L18:
 136 001e 92F8711E 		ldrb	r1, [r2, #3697]	@ zero_extendqisi2
 137 0022 3832     		adds	r2, r2, #56
 138 0024 81B1     		cbz	r1, .L22
 139 0026 0133     		adds	r3, r3, #1
 140 0028 0A2B     		cmp	r3, #10
 141 002a F8D1     		bne	.L18
 142 002c 6846     		mov	r0, sp
 143 002e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 144 0032 104B     		ldr	r3, .L23
 145 0034 104A     		ldr	r2, .L23+4
 146 0036 1868     		ldr	r0, [r3]	@ unaligned
 147 0038 40F2B511 		movw	r1, #437
 148 003c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 149 0040 0024     		movs	r4, #0
 150 0042 2046     		mov	r0, r4
 151 0044 03B0     		add	sp, sp, #12
 152              		@ sp needed
 153 0046 F0BD     		pop	{r4, r5, r6, r7, pc}
 154              	.L22:
 155 0048 C3EBC303 		rsb	r3, r3, r3, lsl #3
 156 004c 04EBC303 		add	r3, r4, r3, lsl #3
 157 0050 03F56464 		add	r4, r3, #3648
 158 0054 3246     		mov	r2, r6
 159 0056 3B46     		mov	r3, r7
 160 0058 2946     		mov	r1, r5
 161 005a 2046     		mov	r0, r4
 162 005c FFF7FEFF 		bl	_ZN9FileStore4OpenEPKcS1_8OpenMode
 163 0060 0028     		cmp	r0, #0
 164 0062 6846     		mov	r0, sp
 165 0064 08BF     		it	eq
 166 0066 0024     		moveq	r4, #0
 167 0068 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 168 006c 2046     		mov	r0, r4
 169 006e 03B0     		add	sp, sp, #12
 170              		@ sp needed
 171 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  /tmp/cczcjP9Q.s 			page 4


 172              	.L24:
 173 0072 00BF     		.align	2
 174              	.L23:
 175 0074 00000000 		.word	reprap
 176 0078 00000000 		.word	.LC0
 177              		.size	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode, .-_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 178              		.section	.text._ZN11MassStorage13CloseAllFilesEv,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	_ZN11MassStorage13CloseAllFilesEv
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu fpv4-sp-d16
 186              		.type	_ZN11MassStorage13CloseAllFilesEv, %function
 187              	_ZN11MassStorage13CloseAllFilesEv:
 188              		@ args = 0, pretend = 0, frame = 8
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190 0000 30B5     		push	{r4, r5, lr}
 191 0002 0446     		mov	r4, r0
 192 0004 83B0     		sub	sp, sp, #12
 193 0006 00F59061 		add	r1, r0, #1152
 194 000a 04F58355 		add	r5, r4, #4192
 195 000e 6846     		mov	r0, sp
 196 0010 4FF0FF32 		mov	r2, #-1
 197 0014 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 198 0018 1035     		adds	r5, r5, #16
 199 001a 04F56464 		add	r4, r4, #3648
 200 001e 02E0     		b	.L35
 201              	.L27:
 202 0020 2046     		mov	r0, r4
 203 0022 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 204              	.L35:
 205 0026 94F83130 		ldrb	r3, [r4, #49]	@ zero_extendqisi2
 206 002a 002B     		cmp	r3, #0
 207 002c F8D1     		bne	.L27
 208 002e 3834     		adds	r4, r4, #56
 209 0030 A542     		cmp	r5, r4
 210 0032 F8D1     		bne	.L35
 211 0034 6846     		mov	r0, sp
 212 0036 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 213 003a 03B0     		add	sp, sp, #12
 214              		@ sp needed
 215 003c 30BD     		pop	{r4, r5, pc}
 216              		.size	_ZN11MassStorage13CloseAllFilesEv, .-_ZN11MassStorage13CloseAllFilesEv
 217 003e 00BF     		.section	.text._ZN11MassStorage11CombineNameERK9StringRefPKcS4_,"ax",%progbits
 218              		.align	1
 219              		.p2align 2,,3
 220              		.global	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu fpv4-sp-d16
 225              		.type	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_, %function
 226              	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cczcjP9Q.s 			page 5


 229 0000 0368     		ldr	r3, [r0]
 230 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 231 0006 4FF00008 		mov	r8, #0
 232 000a 0546     		mov	r5, r0
 233 000c 1646     		mov	r6, r2
 234 000e 83F80080 		strb	r8, [r3]
 235 0012 0F46     		mov	r7, r1
 236 0014 0029     		cmp	r1, #0
 237 0016 4CD0     		beq	.L72
 238 0018 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 239 001a 2F2C     		cmp	r4, #47
 240 001c 2DD0     		beq	.L39
 241 001e 1046     		mov	r0, r2
 242 0020 FFF7FEFF 		bl	strlen
 243 0024 0128     		cmp	r0, #1
 244 0026 03D9     		bls	.L40
 245 0028 A4F13003 		sub	r3, r4, #48
 246 002c 092B     		cmp	r3, #9
 247 002e 50D9     		bls	.L73
 248              	.L40:
 249 0030 781E     		subs	r0, r7, #1
 250 0032 4FF00008 		mov	r8, #0
 251 0036 0AE0     		b	.L42
 252              	.L75:
 253 0038 0A2A     		cmp	r2, #10
 254 003a 0CD0     		beq	.L41
 255 003c 2C68     		ldr	r4, [r5]
 256 003e 04F80820 		strb	r2, [r4, r8]
 257 0042 6A68     		ldr	r2, [r5, #4]
 258 0044 08F10108 		add	r8, r8, #1
 259 0048 013A     		subs	r2, r2, #1
 260 004a 9045     		cmp	r8, r2
 261 004c 45D2     		bcs	.L74
 262              	.L42:
 263 004e 10F8012F 		ldrb	r2, [r0, #1]!	@ zero_extendqisi2
 264 0052 002A     		cmp	r2, #0
 265 0054 F0D1     		bne	.L75
 266              	.L41:
 267 0056 B8F1000F 		cmp	r8, #0
 268 005a 0AD0     		beq	.L71
 269 005c 4744     		add	r7, r7, r8
 270 005e 17F8012C 		ldrb	r2, [r7, #-1]	@ zero_extendqisi2
 271 0062 2F2A     		cmp	r2, #47
 272 0064 1FBF     		itttt	ne
 273 0066 2A68     		ldrne	r2, [r5]
 274 0068 2F21     		movne	r1, #47
 275 006a 02F80810 		strbne	r1, [r2, r8]
 276 006e 08F10108 		addne	r8, r8, #1
 277              	.L71:
 278 0072 3478     		ldrb	r4, [r6]	@ zero_extendqisi2
 279              	.L38:
 280 0074 BCB1     		cbz	r4, .L45
 281 0076 0A2C     		cmp	r4, #10
 282 0078 15D0     		beq	.L45
 283              	.L39:
 284 007a 6A68     		ldr	r2, [r5, #4]
 285 007c 013A     		subs	r2, r2, #1
ARM GAS  /tmp/cczcjP9Q.s 			page 6


 286 007e 9045     		cmp	r8, r2
 287 0080 38BF     		it	cc
 288 0082 3246     		movcc	r2, r6
 289 0084 06D3     		bcc	.L48
 290 0086 17E0     		b	.L46
 291              	.L49:
 292 0088 0A2C     		cmp	r4, #10
 293 008a 0CD0     		beq	.L45
 294 008c 6968     		ldr	r1, [r5, #4]
 295 008e 0139     		subs	r1, r1, #1
 296 0090 4145     		cmp	r1, r8
 297 0092 11D9     		bls	.L46
 298              	.L48:
 299 0094 2968     		ldr	r1, [r5]
 300 0096 01F80840 		strb	r4, [r1, r8]
 301 009a 12F8014F 		ldrb	r4, [r2, #1]!	@ zero_extendqisi2
 302 009e 08F10108 		add	r8, r8, #1
 303 00a2 002C     		cmp	r4, #0
 304 00a4 F0D1     		bne	.L49
 305              	.L45:
 306 00a6 2A68     		ldr	r2, [r5]
 307 00a8 0021     		movs	r1, #0
 308 00aa 02F80810 		strb	r1, [r2, r8]
 309 00ae BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 310              	.L72:
 311 00b2 8846     		mov	r8, r1
 312 00b4 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 313 00b6 DDE7     		b	.L38
 314              	.L46:
 315 00b8 0E4B     		ldr	r3, .L76
 316 00ba 0F4A     		ldr	r2, .L76+4
 317 00bc 1868     		ldr	r0, [r3]
 318 00be 40F2B511 		movw	r1, #437
 319 00c2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 320 00c6 2846     		mov	r0, r5
 321 00c8 0C49     		ldr	r1, .L76+8
 322 00ca BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 323 00ce FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 324              	.L73:
 325 00d2 7378     		ldrb	r3, [r6, #1]	@ zero_extendqisi2
 326 00d4 3A2B     		cmp	r3, #58
 327 00d6 ABD1     		bne	.L40
 328 00d8 CCE7     		b	.L38
 329              	.L74:
 330 00da 064B     		ldr	r3, .L76
 331 00dc 084A     		ldr	r2, .L76+12
 332 00de 1868     		ldr	r0, [r3]
 333 00e0 40F2B511 		movw	r1, #437
 334 00e4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 335 00e8 2846     		mov	r0, r5
 336 00ea 0449     		ldr	r1, .L76+8
 337 00ec BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 338 00f0 FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 339              	.L77:
 340              		.align	2
 341              	.L76:
 342 00f4 00000000 		.word	reprap
ARM GAS  /tmp/cczcjP9Q.s 			page 7


 343 00f8 28000000 		.word	.LC3
 344 00fc 20000000 		.word	.LC2
 345 0100 00000000 		.word	.LC1
 346              		.size	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_, .-_ZN11MassStorage11CombineNameERK9StringR
 347              		.section	.text._ZN11MassStorage15AbandonFindNextEv,"ax",%progbits
 348              		.align	1
 349              		.p2align 2,,3
 350              		.global	_ZN11MassStorage15AbandonFindNextEv
 351              		.syntax unified
 352              		.thumb
 353              		.thumb_func
 354              		.fpu fpv4-sp-d16
 355              		.type	_ZN11MassStorage15AbandonFindNextEv, %function
 356              	_ZN11MassStorage15AbandonFindNextEv:
 357              		@ args = 0, pretend = 0, frame = 0
 358              		@ frame_needed = 0, uses_anonymous_args = 0
 359 0000 38B5     		push	{r3, r4, r5, lr}
 360 0002 00F28444 		addw	r4, r0, #1156
 361 0006 2046     		mov	r0, r4
 362 0008 FFF7FEFF 		bl	_ZNK5Mutex9GetHolderEv
 363 000c 0546     		mov	r5, r0
 364 000e FFF7FEFF 		bl	_ZN9RTOSIface14GetCurrentTaskEv
 365 0012 8542     		cmp	r5, r0
 366 0014 00D0     		beq	.L81
 367 0016 38BD     		pop	{r3, r4, r5, pc}
 368              	.L81:
 369 0018 2046     		mov	r0, r4
 370 001a BDE83840 		pop	{r3, r4, r5, lr}
 371 001e FFF7FEBF 		b	_ZNK5Mutex7ReleaseEv
 372              		.size	_ZN11MassStorage15AbandonFindNextEv, .-_ZN11MassStorage15AbandonFindNextEv
 373 0022 00BF     		.section	.text._ZN11MassStorage12GetMonthNameEh,"ax",%progbits
 374              		.align	1
 375              		.p2align 2,,3
 376              		.global	_ZN11MassStorage12GetMonthNameEh
 377              		.syntax unified
 378              		.thumb
 379              		.thumb_func
 380              		.fpu fpv4-sp-d16
 381              		.type	_ZN11MassStorage12GetMonthNameEh, %function
 382              	_ZN11MassStorage12GetMonthNameEh:
 383              		@ args = 0, pretend = 0, frame = 0
 384              		@ frame_needed = 0, uses_anonymous_args = 0
 385              		@ link register save eliminated.
 386 0000 0C29     		cmp	r1, #12
 387 0002 9ABF     		itte	ls
 388 0004 024B     		ldrls	r3, .L85
 389 0006 53F82100 		ldrls	r0, [r3, r1, lsl #2]
 390 000a 0248     		ldrhi	r0, .L85+4
 391 000c 7047     		bx	lr
 392              	.L86:
 393 000e 00BF     		.align	2
 394              	.L85:
 395 0010 00000000 		.word	.LANCHOR0
 396 0014 00000000 		.word	.LC4
 397              		.size	_ZN11MassStorage12GetMonthNameEh, .-_ZN11MassStorage12GetMonthNameEh
 398              		.section	.text._ZN11MassStorage6DeleteEPKcS1_b,"ax",%progbits
 399              		.align	1
ARM GAS  /tmp/cczcjP9Q.s 			page 8


 400              		.p2align 2,,3
 401              		.global	_ZN11MassStorage6DeleteEPKcS1_b
 402              		.syntax unified
 403              		.thumb
 404              		.thumb_func
 405              		.fpu fpv4-sp-d16
 406              		.type	_ZN11MassStorage6DeleteEPKcS1_b, %function
 407              	_ZN11MassStorage6DeleteEPKcS1_b:
 408              		@ args = 0, pretend = 0, frame = 176
 409              		@ frame_needed = 0, uses_anonymous_args = 0
 410 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 411 0002 ADB0     		sub	sp, sp, #180
 412 0004 2CAD     		add	r5, sp, #176
 413 0006 0024     		movs	r4, #0
 414 0008 05F87C4D 		strb	r4, [r5, #-124]!
 415 000c 7927     		movs	r7, #121
 416 000e 0446     		mov	r4, r0
 417 0010 03A8     		add	r0, sp, #12
 418 0012 1E46     		mov	r6, r3
 419 0014 CDE90357 		strd	r5, r7, [sp, #12]
 420 0018 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 421 001c 04F59061 		add	r1, r4, #1152
 422 0020 4FF0FF32 		mov	r2, #-1
 423 0024 01A8     		add	r0, sp, #4
 424 0026 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 425 002a 2946     		mov	r1, r5
 426 002c 03A8     		add	r0, sp, #12
 427 002e 0122     		movs	r2, #1
 428 0030 FFF7FEFF 		bl	f_open
 429 0034 60BB     		cbnz	r0, .L88
 430 0036 04F58351 		add	r1, r4, #4192
 431 003a 04F67863 		addw	r3, r4, #3704
 432 003e 1031     		adds	r1, r1, #16
 433 0040 039C     		ldr	r4, [sp, #12]
 434 0042 DDE90A7C 		ldrd	r7, ip, [sp, #40]
 435 0046 02E0     		b	.L91
 436              	.L89:
 437 0048 9942     		cmp	r1, r3
 438 004a 1ED0     		beq	.L96
 439 004c 1346     		mov	r3, r2
 440              	.L91:
 441 004e 53F8382C 		ldr	r2, [r3, #-56]
 442 0052 A242     		cmp	r2, r4
 443 0054 03F13802 		add	r2, r3, #56
 444 0058 F6D1     		bne	.L89
 445 005a 53F81C0C 		ldr	r0, [r3, #-28]
 446 005e B842     		cmp	r0, r7
 447 0060 F2D1     		bne	.L89
 448 0062 53F8180C 		ldr	r0, [r3, #-24]
 449 0066 6045     		cmp	r0, ip
 450 0068 EED1     		bne	.L89
 451 006a 164B     		ldr	r3, .L98
 452 006c 164A     		ldr	r2, .L98+4
 453 006e 1868     		ldr	r0, [r3]
 454 0070 40F2B511 		movw	r1, #437
 455 0074 2B46     		mov	r3, r5
 456 0076 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  /tmp/cczcjP9Q.s 			page 9


 457 007a 03A8     		add	r0, sp, #12
 458 007c FFF7FEFF 		bl	f_close
 459 0080 01A8     		add	r0, sp, #4
 460 0082 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 461 0086 0020     		movs	r0, #0
 462 0088 0CE0     		b	.L90
 463              	.L96:
 464 008a 03A8     		add	r0, sp, #12
 465 008c FFF7FEFF 		bl	f_close
 466              	.L88:
 467 0090 2846     		mov	r0, r5
 468 0092 FFF7FEFF 		bl	f_unlink
 469 0096 0446     		mov	r4, r0
 470 0098 01A8     		add	r0, sp, #4
 471 009a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 472 009e 1CB1     		cbz	r4, .L93
 473 00a0 2EB1     		cbz	r6, .L97
 474 00a2 0020     		movs	r0, #0
 475              	.L90:
 476 00a4 2DB0     		add	sp, sp, #180
 477              		@ sp needed
 478 00a6 F0BD     		pop	{r4, r5, r6, r7, pc}
 479              	.L93:
 480 00a8 0120     		movs	r0, #1
 481 00aa 2DB0     		add	sp, sp, #180
 482              		@ sp needed
 483 00ac F0BD     		pop	{r4, r5, r6, r7, pc}
 484              	.L97:
 485 00ae 054B     		ldr	r3, .L98
 486 00b0 064A     		ldr	r2, .L98+8
 487 00b2 1868     		ldr	r0, [r3]
 488 00b4 40F2B511 		movw	r1, #437
 489 00b8 2B46     		mov	r3, r5
 490 00ba FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 491 00be 3046     		mov	r0, r6
 492 00c0 2DB0     		add	sp, sp, #180
 493              		@ sp needed
 494 00c2 F0BD     		pop	{r4, r5, r6, r7, pc}
 495              	.L99:
 496              		.align	2
 497              	.L98:
 498 00c4 00000000 		.word	reprap
 499 00c8 00000000 		.word	.LC5
 500 00cc 2C000000 		.word	.LC6
 501              		.size	_ZN11MassStorage6DeleteEPKcS1_b, .-_ZN11MassStorage6DeleteEPKcS1_b
 502              		.section	.text._ZN11MassStorage13MakeDirectoryEPKcS1_,"ax",%progbits
 503              		.align	1
 504              		.p2align 2,,3
 505              		.global	_ZN11MassStorage13MakeDirectoryEPKcS1_
 506              		.syntax unified
 507              		.thumb
 508              		.thumb_func
 509              		.fpu fpv4-sp-d16
 510              		.type	_ZN11MassStorage13MakeDirectoryEPKcS1_, %function
 511              	_ZN11MassStorage13MakeDirectoryEPKcS1_:
 512              		@ args = 0, pretend = 0, frame = 136
 513              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cczcjP9Q.s 			page 10


 514 0000 30B5     		push	{r4, r5, lr}
 515 0002 A3B0     		sub	sp, sp, #140
 516 0004 22AC     		add	r4, sp, #136
 517 0006 0025     		movs	r5, #0
 518 0008 04F87C5D 		strb	r5, [r4, #-124]!
 519 000c 7923     		movs	r3, #121
 520 000e 01A8     		add	r0, sp, #4
 521 0010 CDE90143 		strd	r4, r3, [sp, #4]
 522 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 523 0018 2046     		mov	r0, r4
 524 001a FFF7FEFF 		bl	f_mkdir
 525 001e 10B9     		cbnz	r0, .L104
 526 0020 0120     		movs	r0, #1
 527 0022 23B0     		add	sp, sp, #140
 528              		@ sp needed
 529 0024 30BD     		pop	{r4, r5, pc}
 530              	.L104:
 531 0026 054B     		ldr	r3, .L105
 532 0028 054A     		ldr	r2, .L105+4
 533 002a 1868     		ldr	r0, [r3]
 534 002c 40F2B511 		movw	r1, #437
 535 0030 2346     		mov	r3, r4
 536 0032 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 537 0036 2846     		mov	r0, r5
 538 0038 23B0     		add	sp, sp, #140
 539              		@ sp needed
 540 003a 30BD     		pop	{r4, r5, pc}
 541              	.L106:
 542              		.align	2
 543              	.L105:
 544 003c 00000000 		.word	reprap
 545 0040 00000000 		.word	.LC7
 546              		.size	_ZN11MassStorage13MakeDirectoryEPKcS1_, .-_ZN11MassStorage13MakeDirectoryEPKcS1_
 547              		.section	.text._ZN11MassStorage13MakeDirectoryEPKc,"ax",%progbits
 548              		.align	1
 549              		.p2align 2,,3
 550              		.global	_ZN11MassStorage13MakeDirectoryEPKc
 551              		.syntax unified
 552              		.thumb
 553              		.thumb_func
 554              		.fpu fpv4-sp-d16
 555              		.type	_ZN11MassStorage13MakeDirectoryEPKc, %function
 556              	_ZN11MassStorage13MakeDirectoryEPKc:
 557              		@ args = 0, pretend = 0, frame = 0
 558              		@ frame_needed = 0, uses_anonymous_args = 0
 559 0000 10B5     		push	{r4, lr}
 560 0002 0846     		mov	r0, r1
 561 0004 0C46     		mov	r4, r1
 562 0006 FFF7FEFF 		bl	f_mkdir
 563 000a 08B9     		cbnz	r0, .L111
 564 000c 0120     		movs	r0, #1
 565 000e 10BD     		pop	{r4, pc}
 566              	.L111:
 567 0010 044B     		ldr	r3, .L112
 568 0012 054A     		ldr	r2, .L112+4
 569 0014 1868     		ldr	r0, [r3]
 570 0016 40F2B511 		movw	r1, #437
ARM GAS  /tmp/cczcjP9Q.s 			page 11


 571 001a 2346     		mov	r3, r4
 572 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 573 0020 0020     		movs	r0, #0
 574 0022 10BD     		pop	{r4, pc}
 575              	.L113:
 576              		.align	2
 577              	.L112:
 578 0024 00000000 		.word	reprap
 579 0028 00000000 		.word	.LC7
 580              		.size	_ZN11MassStorage13MakeDirectoryEPKc, .-_ZN11MassStorage13MakeDirectoryEPKc
 581              		.section	.text._ZN11MassStorage6RenameEPKcS1_,"ax",%progbits
 582              		.align	1
 583              		.p2align 2,,3
 584              		.global	_ZN11MassStorage6RenameEPKcS1_
 585              		.syntax unified
 586              		.thumb
 587              		.thumb_func
 588              		.fpu fpv4-sp-d16
 589              		.type	_ZN11MassStorage6RenameEPKcS1_, %function
 590              	_ZN11MassStorage6RenameEPKcS1_:
 591              		@ args = 0, pretend = 0, frame = 0
 592              		@ frame_needed = 0, uses_anonymous_args = 0
 593 0000 30B5     		push	{r4, r5, lr}
 594 0002 1446     		mov	r4, r2
 595 0004 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 596 0006 303A     		subs	r2, r2, #48
 597 0008 092A     		cmp	r2, #9
 598 000a 83B0     		sub	sp, sp, #12
 599 000c 0D46     		mov	r5, r1
 600 000e 03D8     		bhi	.L115
 601 0010 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 602 0012 3A2B     		cmp	r3, #58
 603 0014 08BF     		it	eq
 604 0016 0234     		addeq	r4, r4, #2
 605              	.L115:
 606 0018 2146     		mov	r1, r4
 607 001a 2846     		mov	r0, r5
 608 001c FFF7FEFF 		bl	f_rename
 609 0020 10B9     		cbnz	r0, .L119
 610 0022 0120     		movs	r0, #1
 611 0024 03B0     		add	sp, sp, #12
 612              		@ sp needed
 613 0026 30BD     		pop	{r4, r5, pc}
 614              	.L119:
 615 0028 054B     		ldr	r3, .L120
 616 002a 0094     		str	r4, [sp]
 617 002c 1868     		ldr	r0, [r3]
 618 002e 054A     		ldr	r2, .L120+4
 619 0030 2B46     		mov	r3, r5
 620 0032 40F2B511 		movw	r1, #437
 621 0036 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 622 003a 0020     		movs	r0, #0
 623 003c 03B0     		add	sp, sp, #12
 624              		@ sp needed
 625 003e 30BD     		pop	{r4, r5, pc}
 626              	.L121:
 627              		.align	2
ARM GAS  /tmp/cczcjP9Q.s 			page 12


 628              	.L120:
 629 0040 00000000 		.word	reprap
 630 0044 00000000 		.word	.LC8
 631              		.size	_ZN11MassStorage6RenameEPKcS1_, .-_ZN11MassStorage6RenameEPKcS1_
 632              		.section	.text._ZNK11MassStorage10FileExistsEPKc,"ax",%progbits
 633              		.align	1
 634              		.p2align 2,,3
 635              		.global	_ZNK11MassStorage10FileExistsEPKc
 636              		.syntax unified
 637              		.thumb
 638              		.thumb_func
 639              		.fpu fpv4-sp-d16
 640              		.type	_ZNK11MassStorage10FileExistsEPKc, %function
 641              	_ZNK11MassStorage10FileExistsEPKc:
 642              		@ args = 0, pretend = 0, frame = 32
 643              		@ frame_needed = 0, uses_anonymous_args = 0
 644 0000 00B5     		push	{lr}
 645 0002 89B0     		sub	sp, sp, #36
 646 0004 0023     		movs	r3, #0
 647 0006 0846     		mov	r0, r1
 648 0008 6946     		mov	r1, sp
 649 000a 0693     		str	r3, [sp, #24]
 650 000c FFF7FEFF 		bl	f_stat
 651 0010 B0FA80F0 		clz	r0, r0
 652 0014 4009     		lsrs	r0, r0, #5
 653 0016 09B0     		add	sp, sp, #36
 654              		@ sp needed
 655 0018 5DF804FB 		ldr	pc, [sp], #4
 656              		.size	_ZNK11MassStorage10FileExistsEPKc, .-_ZNK11MassStorage10FileExistsEPKc
 657              		.section	.text._ZNK11MassStorage10FileExistsEPKcS1_,"ax",%progbits
 658              		.align	1
 659              		.p2align 2,,3
 660              		.global	_ZNK11MassStorage10FileExistsEPKcS1_
 661              		.syntax unified
 662              		.thumb
 663              		.thumb_func
 664              		.fpu fpv4-sp-d16
 665              		.type	_ZNK11MassStorage10FileExistsEPKcS1_, %function
 666              	_ZNK11MassStorage10FileExistsEPKcS1_:
 667              		@ args = 0, pretend = 0, frame = 160
 668              		@ frame_needed = 0, uses_anonymous_args = 0
 669 0000 30B5     		push	{r4, r5, lr}
 670 0002 A9B0     		sub	sp, sp, #164
 671 0004 28AC     		add	r4, sp, #160
 672 0006 0025     		movs	r5, #0
 673 0008 04F87C5D 		strb	r5, [r4, #-124]!
 674 000c 7923     		movs	r3, #121
 675 000e 01A8     		add	r0, sp, #4
 676 0010 CDE90143 		strd	r4, r3, [sp, #4]
 677 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 678 0018 2046     		mov	r0, r4
 679 001a 01A9     		add	r1, sp, #4
 680 001c 0795     		str	r5, [sp, #28]
 681 001e FFF7FEFF 		bl	f_stat
 682 0022 B0FA80F0 		clz	r0, r0
 683 0026 4009     		lsrs	r0, r0, #5
 684 0028 29B0     		add	sp, sp, #164
ARM GAS  /tmp/cczcjP9Q.s 			page 13


 685              		@ sp needed
 686 002a 30BD     		pop	{r4, r5, pc}
 687              		.size	_ZNK11MassStorage10FileExistsEPKcS1_, .-_ZNK11MassStorage10FileExistsEPKcS1_
 688              		.section	.text._ZNK11MassStorage15DirectoryExistsERK9StringRef,"ax",%progbits
 689              		.align	1
 690              		.p2align 2,,3
 691              		.global	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 692              		.syntax unified
 693              		.thumb
 694              		.thumb_func
 695              		.fpu fpv4-sp-d16
 696              		.type	_ZNK11MassStorage15DirectoryExistsERK9StringRef, %function
 697              	_ZNK11MassStorage15DirectoryExistsERK9StringRef:
 698              		@ args = 0, pretend = 0, frame = 40
 699              		@ frame_needed = 0, uses_anonymous_args = 0
 700 0000 10B5     		push	{r4, lr}
 701 0002 0846     		mov	r0, r1
 702 0004 8AB0     		sub	sp, sp, #40
 703 0006 0C46     		mov	r4, r1
 704 0008 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 705 000c 48B1     		cbz	r0, .L134
 706 000e 0138     		subs	r0, r0, #1
 707 0010 2168     		ldr	r1, [r4]
 708 0012 0A5C     		ldrb	r2, [r1, r0]	@ zero_extendqisi2
 709 0014 2F2A     		cmp	r2, #47
 710 0016 0844     		add	r0, r0, r1
 711 0018 01D0     		beq	.L129
 712 001a 5C2A     		cmp	r2, #92
 713 001c 02D1     		bne	.L128
 714              	.L129:
 715 001e 0023     		movs	r3, #0
 716 0020 0370     		strb	r3, [r0]
 717              	.L134:
 718 0022 2168     		ldr	r1, [r4]
 719              	.L128:
 720 0024 0023     		movs	r3, #0
 721 0026 01A8     		add	r0, sp, #4
 722 0028 0893     		str	r3, [sp, #32]
 723 002a FFF7FEFF 		bl	f_opendir
 724 002e B0FA80F0 		clz	r0, r0
 725 0032 4009     		lsrs	r0, r0, #5
 726 0034 0AB0     		add	sp, sp, #40
 727              		@ sp needed
 728 0036 10BD     		pop	{r4, pc}
 729              		.size	_ZNK11MassStorage15DirectoryExistsERK9StringRef, .-_ZNK11MassStorage15DirectoryExistsERK9Str
 730              		.section	.text._ZNK11MassStorage15DirectoryExistsEPKc,"ax",%progbits
 731              		.align	1
 732              		.p2align 2,,3
 733              		.global	_ZNK11MassStorage15DirectoryExistsEPKc
 734              		.syntax unified
 735              		.thumb
 736              		.thumb_func
 737              		.fpu fpv4-sp-d16
 738              		.type	_ZNK11MassStorage15DirectoryExistsEPKc, %function
 739              	_ZNK11MassStorage15DirectoryExistsEPKc:
 740              		@ args = 0, pretend = 0, frame = 136
 741              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cczcjP9Q.s 			page 14


 742 0000 70B5     		push	{r4, r5, r6, lr}
 743 0002 A2B0     		sub	sp, sp, #136
 744 0004 22AC     		add	r4, sp, #136
 745 0006 0023     		movs	r3, #0
 746 0008 04F87C3D 		strb	r3, [r4, #-124]!
 747 000c 0646     		mov	r6, r0
 748 000e 7925     		movs	r5, #121
 749 0010 01A8     		add	r0, sp, #4
 750 0012 CDE90145 		strd	r4, r5, [sp, #4]
 751 0016 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 752 001a 01A9     		add	r1, sp, #4
 753 001c 3046     		mov	r0, r6
 754 001e CDE90145 		strd	r4, r5, [sp, #4]
 755 0022 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 756 0026 22B0     		add	sp, sp, #136
 757              		@ sp needed
 758 0028 70BD     		pop	{r4, r5, r6, pc}
 759              		.size	_ZNK11MassStorage15DirectoryExistsEPKc, .-_ZNK11MassStorage15DirectoryExistsEPKc
 760 002a 00BF     		.section	.text._ZN11MassStorage15DirectoryExistsEPKcS1_,"ax",%progbits
 761              		.align	1
 762              		.p2align 2,,3
 763              		.global	_ZN11MassStorage15DirectoryExistsEPKcS1_
 764              		.syntax unified
 765              		.thumb
 766              		.thumb_func
 767              		.fpu fpv4-sp-d16
 768              		.type	_ZN11MassStorage15DirectoryExistsEPKcS1_, %function
 769              	_ZN11MassStorage15DirectoryExistsEPKcS1_:
 770              		@ args = 0, pretend = 0, frame = 136
 771              		@ frame_needed = 0, uses_anonymous_args = 0
 772 0000 70B5     		push	{r4, r5, r6, lr}
 773 0002 A2B0     		sub	sp, sp, #136
 774 0004 22AC     		add	r4, sp, #136
 775 0006 0023     		movs	r3, #0
 776 0008 04F87C3D 		strb	r3, [r4, #-124]!
 777 000c 0646     		mov	r6, r0
 778 000e 7925     		movs	r5, #121
 779 0010 01A8     		add	r0, sp, #4
 780 0012 CDE90145 		strd	r4, r5, [sp, #4]
 781 0016 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 782 001a 01A9     		add	r1, sp, #4
 783 001c 3046     		mov	r0, r6
 784 001e CDE90145 		strd	r4, r5, [sp, #4]
 785 0022 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 786 0026 22B0     		add	sp, sp, #136
 787              		@ sp needed
 788 0028 70BD     		pop	{r4, r5, r6, pc}
 789              		.size	_ZN11MassStorage15DirectoryExistsEPKcS1_, .-_ZN11MassStorage15DirectoryExistsEPKcS1_
 790 002a 00BF     		.section	.text._ZN11MassStorage19SetLastModifiedTimeEPKcS1_x,"ax",%progbits
 791              		.align	1
 792              		.p2align 2,,3
 793              		.global	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x
 794              		.syntax unified
 795              		.thumb
 796              		.thumb_func
 797              		.fpu fpv4-sp-d16
 798              		.type	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x, %function
ARM GAS  /tmp/cczcjP9Q.s 			page 15


 799              	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x:
 800              		@ args = 8, pretend = 0, frame = 160
 801              		@ frame_needed = 0, uses_anonymous_args = 0
 802 0000 30B5     		push	{r4, r5, lr}
 803 0002 A9B0     		sub	sp, sp, #164
 804 0004 28AC     		add	r4, sp, #160
 805 0006 0023     		movs	r3, #0
 806 0008 04F87C3D 		strb	r3, [r4, #-124]!
 807 000c 01A8     		add	r0, sp, #4
 808 000e 7923     		movs	r3, #121
 809 0010 CDE90143 		strd	r4, r3, [sp, #4]
 810 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 811 0018 2CA8     		add	r0, sp, #176
 812 001a FFF7FEFF 		bl	gmtime
 813 001e D0E90425 		ldrd	r2, r5, [r0, #16]
 814 0022 0132     		adds	r2, r2, #1
 815 0024 C368     		ldr	r3, [r0, #12]
 816 0026 503D     		subs	r5, r5, #80
 817 0028 5201     		lsls	r2, r2, #5
 818 002a 42EA4522 		orr	r2, r2, r5, lsl #9
 819 002e 1A43     		orrs	r2, r2, r3
 820 0030 ADF80820 		strh	r2, [sp, #8]	@ movhi
 821 0034 D0E90125 		ldrd	r2, r5, [r0, #4]
 822 0038 0368     		ldr	r3, [r0]
 823 003a 5201     		lsls	r2, r2, #5
 824 003c 42EAC522 		orr	r2, r2, r5, lsl #11
 825 0040 42EA5302 		orr	r2, r2, r3, lsr #1
 826 0044 01A9     		add	r1, sp, #4
 827 0046 2046     		mov	r0, r4
 828 0048 ADF80A20 		strh	r2, [sp, #10]	@ movhi
 829 004c FFF7FEFF 		bl	f_utime
 830 0050 0028     		cmp	r0, #0
 831 0052 0CBF     		ite	eq
 832 0054 0125     		moveq	r5, #1
 833 0056 0025     		movne	r5, #0
 834 0058 07D0     		beq	.L140
 835 005a 054B     		ldr	r3, .L145
 836 005c 054A     		ldr	r2, .L145+4
 837 005e 1868     		ldr	r0, [r3]
 838 0060 40F2B511 		movw	r1, #437
 839 0064 2346     		mov	r3, r4
 840 0066 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 841              	.L140:
 842 006a 2846     		mov	r0, r5
 843 006c 29B0     		add	sp, sp, #164
 844              		@ sp needed
 845 006e 30BD     		pop	{r4, r5, pc}
 846              	.L146:
 847              		.align	2
 848              	.L145:
 849 0070 00000000 		.word	reprap
 850 0074 00000000 		.word	.LC9
 851              		.size	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x, .-_ZN11MassStorage19SetLastModifiedTimeEPKcS1
 852              		.section	.text._ZN11MassStorage17CheckDriveMountedEPKc,"ax",%progbits
 853              		.align	1
 854              		.p2align 2,,3
 855              		.global	_ZN11MassStorage17CheckDriveMountedEPKc
ARM GAS  /tmp/cczcjP9Q.s 			page 16


 856              		.syntax unified
 857              		.thumb
 858              		.thumb_func
 859              		.fpu fpv4-sp-d16
 860              		.type	_ZN11MassStorage17CheckDriveMountedEPKc, %function
 861              	_ZN11MassStorage17CheckDriveMountedEPKc:
 862              		@ args = 0, pretend = 0, frame = 0
 863              		@ frame_needed = 0, uses_anonymous_args = 0
 864 0000 38B5     		push	{r3, r4, r5, lr}
 865 0002 0446     		mov	r4, r0
 866 0004 0846     		mov	r0, r1
 867 0006 0D46     		mov	r5, r1
 868 0008 FFF7FEFF 		bl	strlen
 869 000c 0128     		cmp	r0, #1
 870 000e 02D9     		bls	.L152
 871 0010 6B78     		ldrb	r3, [r5, #1]	@ zero_extendqisi2
 872 0012 3A2B     		cmp	r3, #58
 873 0014 07D0     		beq	.L155
 874              	.L152:
 875 0016 0020     		movs	r0, #0
 876              	.L148:
 877 0018 00EBC000 		add	r0, r0, r0, lsl #3
 878 001c 04EB8010 		add	r0, r4, r0, lsl #6
 879 0020 90F83E02 		ldrb	r0, [r0, #574]	@ zero_extendqisi2
 880 0024 38BD     		pop	{r3, r4, r5, pc}
 881              	.L155:
 882 0026 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 883 0028 3038     		subs	r0, r0, #48
 884 002a 0928     		cmp	r0, #9
 885 002c F3D8     		bhi	.L152
 886 002e 0128     		cmp	r0, #1
 887 0030 F2D9     		bls	.L148
 888 0032 0020     		movs	r0, #0
 889 0034 38BD     		pop	{r3, r4, r5, pc}
 890              		.size	_ZN11MassStorage17CheckDriveMountedEPKc, .-_ZN11MassStorage17CheckDriveMountedEPKc
 891 0036 00BF     		.section	.text._ZNK11MassStorage11AnyFileOpenEPK5FATFS,"ax",%progbits
 892              		.align	1
 893              		.p2align 2,,3
 894              		.global	_ZNK11MassStorage11AnyFileOpenEPK5FATFS
 895              		.syntax unified
 896              		.thumb
 897              		.thumb_func
 898              		.fpu fpv4-sp-d16
 899              		.type	_ZNK11MassStorage11AnyFileOpenEPK5FATFS, %function
 900              	_ZNK11MassStorage11AnyFileOpenEPK5FATFS:
 901              		@ args = 0, pretend = 0, frame = 8
 902              		@ frame_needed = 0, uses_anonymous_args = 0
 903 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 904 0002 0446     		mov	r4, r0
 905 0004 83B0     		sub	sp, sp, #12
 906 0006 04F58356 		add	r6, r4, #4192
 907 000a 0F46     		mov	r7, r1
 908 000c 6846     		mov	r0, sp
 909 000e 04F59061 		add	r1, r4, #1152
 910 0012 4FF0FF32 		mov	r2, #-1
 911 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 912 001a 1036     		adds	r6, r6, #16
ARM GAS  /tmp/cczcjP9Q.s 			page 17


 913 001c 04F56464 		add	r4, r4, #3648
 914 0020 01E0     		b	.L158
 915              	.L161:
 916 0022 A642     		cmp	r6, r4
 917 0024 07D0     		beq	.L157
 918              	.L158:
 919 0026 2046     		mov	r0, r4
 920 0028 3946     		mov	r1, r7
 921 002a FFF7FEFF 		bl	_ZNK9FileStore8IsOpenOnEPK5FATFS
 922 002e 3834     		adds	r4, r4, #56
 923 0030 0546     		mov	r5, r0
 924 0032 0028     		cmp	r0, #0
 925 0034 F5D0     		beq	.L161
 926              	.L157:
 927 0036 6846     		mov	r0, sp
 928 0038 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 929 003c 2846     		mov	r0, r5
 930 003e 03B0     		add	sp, sp, #12
 931              		@ sp needed
 932 0040 F0BD     		pop	{r4, r5, r6, r7, pc}
 933              		.size	_ZNK11MassStorage11AnyFileOpenEPK5FATFS, .-_ZNK11MassStorage11AnyFileOpenEPK5FATFS
 934 0042 00BF     		.section	.text._ZN11MassStorage15InvalidateFilesEPK5FATFSb,"ax",%progbits
 935              		.align	1
 936              		.p2align 2,,3
 937              		.global	_ZN11MassStorage15InvalidateFilesEPK5FATFSb
 938              		.syntax unified
 939              		.thumb
 940              		.thumb_func
 941              		.fpu fpv4-sp-d16
 942              		.type	_ZN11MassStorage15InvalidateFilesEPK5FATFSb, %function
 943              	_ZN11MassStorage15InvalidateFilesEPK5FATFSb:
 944              		@ args = 0, pretend = 0, frame = 8
 945              		@ frame_needed = 0, uses_anonymous_args = 0
 946 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 947 0004 82B0     		sub	sp, sp, #8
 948 0006 0446     		mov	r4, r0
 949 0008 8846     		mov	r8, r1
 950 000a 1746     		mov	r7, r2
 951 000c 00F59061 		add	r1, r0, #1152
 952 0010 4FF0FF32 		mov	r2, #-1
 953 0014 6846     		mov	r0, sp
 954 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 955 001a 04F58355 		add	r5, r4, #4192
 956 001e 1035     		adds	r5, r5, #16
 957 0020 04F56464 		add	r4, r4, #3648
 958 0024 0026     		movs	r6, #0
 959              	.L164:
 960 0026 2046     		mov	r0, r4
 961 0028 3A46     		mov	r2, r7
 962 002a 4146     		mov	r1, r8
 963 002c FFF7FEFF 		bl	_ZN9FileStore10InvalidateEPK5FATFSb
 964 0030 3834     		adds	r4, r4, #56
 965 0032 00B1     		cbz	r0, .L163
 966 0034 0136     		adds	r6, r6, #1
 967              	.L163:
 968 0036 A542     		cmp	r5, r4
 969 0038 F5D1     		bne	.L164
ARM GAS  /tmp/cczcjP9Q.s 			page 18


 970 003a 6846     		mov	r0, sp
 971 003c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 972 0040 3046     		mov	r0, r6
 973 0042 02B0     		add	sp, sp, #8
 974              		@ sp needed
 975 0044 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 976              		.size	_ZN11MassStorage15InvalidateFilesEPK5FATFSb, .-_ZN11MassStorage15InvalidateFilesEPK5FATFSb
 977              		.section	.text._ZN11MassStorage16ConvertTimeStampEtt,"ax",%progbits
 978              		.align	1
 979              		.p2align 2,,3
 980              		.global	_ZN11MassStorage16ConvertTimeStampEtt
 981              		.syntax unified
 982              		.thumb
 983              		.thumb_func
 984              		.fpu fpv4-sp-d16
 985              		.type	_ZN11MassStorage16ConvertTimeStampEtt, %function
 986              	_ZN11MassStorage16ConvertTimeStampEtt:
 987              		@ args = 0, pretend = 0, frame = 40
 988              		@ frame_needed = 0, uses_anonymous_args = 0
 989 0000 10B5     		push	{r4, lr}
 990 0002 4412     		asrs	r4, r0, #9
 991 0004 8AB0     		sub	sp, sp, #40
 992 0006 0346     		mov	r3, r0
 993 0008 5034     		adds	r4, r4, #80
 994 000a C0F34312 		ubfx	r2, r0, #5, #4
 995 000e 0020     		movs	r0, #0
 996 0010 0694     		str	r4, [sp, #24]
 997 0012 CDE90700 		strd	r0, r0, [sp, #28]
 998 0016 0990     		str	r0, [sp, #36]
 999 0018 02B1     		cbz	r2, .L171
 1000 001a 013A     		subs	r2, r2, #1
 1001              	.L171:
 1002 001c 03F01F03 		and	r3, r3, #31
 1003 0020 0AA8     		add	r0, sp, #40
 1004 0022 01F01F04 		and	r4, r1, #31
 1005 0026 012B     		cmp	r3, #1
 1006 0028 38BF     		it	cc
 1007 002a 0123     		movcc	r3, #1
 1008 002c 40F8244D 		str	r4, [r0, #-36]!
 1009 0030 CC0A     		lsrs	r4, r1, #11
 1010 0032 C1F34511 		ubfx	r1, r1, #5, #6
 1011 0036 CDE90432 		strd	r3, r2, [sp, #16]
 1012 003a CDE90214 		strd	r1, r4, [sp, #8]
 1013 003e FFF7FEFF 		bl	mktime
 1014 0042 0AB0     		add	sp, sp, #40
 1015              		@ sp needed
 1016 0044 10BD     		pop	{r4, pc}
 1017              		.size	_ZN11MassStorage16ConvertTimeStampEtt, .-_ZN11MassStorage16ConvertTimeStampEtt
 1018 0046 00BF     		.section	.text._ZN11MassStorage9FindFirstEPKcR8FileInfo,"ax",%progbits
 1019              		.align	1
 1020              		.p2align 2,,3
 1021              		.global	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 1022              		.syntax unified
 1023              		.thumb
 1024              		.thumb_func
 1025              		.fpu fpv4-sp-d16
 1026              		.type	_ZN11MassStorage9FindFirstEPKcR8FileInfo, %function
ARM GAS  /tmp/cczcjP9Q.s 			page 19


 1027              	_ZN11MassStorage9FindFirstEPKcR8FileInfo:
 1028              		@ args = 0, pretend = 0, frame = 160
 1029              		@ frame_needed = 0, uses_anonymous_args = 0
 1030 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1031 0004 A9B0     		sub	sp, sp, #164
 1032 0006 28AC     		add	r4, sp, #160
 1033 0008 0023     		movs	r3, #0
 1034 000a 04F87C3D 		strb	r3, [r4, #-124]!
 1035 000e 0646     		mov	r6, r0
 1036 0010 7923     		movs	r3, #121
 1037 0012 01A8     		add	r0, sp, #4
 1038 0014 9046     		mov	r8, r2
 1039 0016 CDE90143 		strd	r4, r3, [sp, #4]
 1040 001a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1041 001e 2046     		mov	r0, r4
 1042 0020 7821     		movs	r1, #120
 1043 0022 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1044 0026 40B1     		cbz	r0, .L176
 1045 0028 28AB     		add	r3, sp, #160
 1046 002a 451E     		subs	r5, r0, #1
 1047 002c 5F19     		adds	r7, r3, r5
 1048 002e 17F87C3C 		ldrb	r3, [r7, #-124]	@ zero_extendqisi2
 1049 0032 2F2B     		cmp	r3, #47
 1050 0034 0ED0     		beq	.L177
 1051 0036 5C2B     		cmp	r3, #92
 1052 0038 0CD0     		beq	.L177
 1053              	.L176:
 1054 003a 06F28447 		addw	r7, r6, #1156
 1055 003e 3846     		mov	r0, r7
 1056 0040 42F21071 		movw	r1, #10000
 1057 0044 FFF7FEFF 		bl	_ZNK5Mutex4TakeEm
 1058 0048 0546     		mov	r5, r0
 1059 004a 68B9     		cbnz	r0, .L197
 1060 004c 2846     		mov	r0, r5
 1061 004e 29B0     		add	sp, sp, #164
 1062              		@ sp needed
 1063 0050 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1064              	.L177:
 1065 0054 7821     		movs	r1, #120
 1066 0056 2046     		mov	r0, r4
 1067 0058 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1068 005c 8542     		cmp	r5, r0
 1069 005e 3CBF     		itt	cc
 1070 0060 0023     		movcc	r3, #0
 1071 0062 07F87C3C 		strbcc	r3, [r7, #-124]
 1072 0066 E8E7     		b	.L176
 1073              	.L197:
 1074 0068 0023     		movs	r3, #0
 1075 006a 06F61869 		addw	r9, r6, #3608
 1076 006e 2146     		mov	r1, r4
 1077 0070 C6F8343E 		str	r3, [r6, #3636]
 1078 0074 4846     		mov	r0, r9
 1079 0076 FFF7FEFF 		bl	f_opendir
 1080 007a 0028     		cmp	r0, #0
 1081 007c 39D1     		bne	.L180
 1082 007e 08F10106 		add	r6, r8, #1
 1083 0082 7823     		movs	r3, #120
ARM GAS  /tmp/cczcjP9Q.s 			page 20


 1084 0084 CDE90763 		strd	r6, r3, [sp, #28]
 1085 0088 1E4C     		ldr	r4, .L198
 1086              	.L182:
 1087 008a 01A9     		add	r1, sp, #4
 1088 008c 4846     		mov	r0, r9
 1089 008e FFF7FEFF 		bl	f_readdir
 1090 0092 2146     		mov	r1, r4
 1091 0094 68BB     		cbnz	r0, .L180
 1092 0096 9DF80D30 		ldrb	r3, [sp, #13]	@ zero_extendqisi2
 1093 009a 0DF10D00 		add	r0, sp, #13
 1094 009e 43B3     		cbz	r3, .L180
 1095 00a0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1096 00a4 1849     		ldr	r1, .L198+4
 1097 00a6 0028     		cmp	r0, #0
 1098 00a8 EFD1     		bne	.L182
 1099 00aa 0DF10D00 		add	r0, sp, #13
 1100 00ae FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1101 00b2 0028     		cmp	r0, #0
 1102 00b4 E9D1     		bne	.L182
 1103 00b6 9DF80C30 		ldrb	r3, [sp, #12]	@ zero_extendqisi2
 1104 00ba 98F80120 		ldrb	r2, [r8, #1]	@ zero_extendqisi2
 1105 00be C3F30013 		ubfx	r3, r3, #4, #1
 1106 00c2 88F80030 		strb	r3, [r8]
 1107 00c6 2AB9     		cbnz	r2, .L184
 1108 00c8 0DF10D01 		add	r1, sp, #13
 1109 00cc 3046     		mov	r0, r6
 1110 00ce 7822     		movs	r2, #120
 1111 00d0 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1112              	.L184:
 1113 00d4 019B     		ldr	r3, [sp, #4]
 1114 00d6 C8F87C30 		str	r3, [r8, #124]
 1115 00da BDF80A10 		ldrh	r1, [sp, #10]
 1116 00de BDF80800 		ldrh	r0, [sp, #8]
 1117 00e2 FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1118 00e6 C8E92001 		strd	r0, [r8, #128]
 1119 00ea 2846     		mov	r0, r5
 1120 00ec 29B0     		add	sp, sp, #164
 1121              		@ sp needed
 1122 00ee BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1123              	.L180:
 1124 00f2 3846     		mov	r0, r7
 1125 00f4 FFF7FEFF 		bl	_ZNK5Mutex7ReleaseEv
 1126 00f8 0025     		movs	r5, #0
 1127 00fa 2846     		mov	r0, r5
 1128 00fc 29B0     		add	sp, sp, #164
 1129              		@ sp needed
 1130 00fe BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1131              	.L199:
 1132 0102 00BF     		.align	2
 1133              	.L198:
 1134 0104 00000000 		.word	.LC10
 1135 0108 04000000 		.word	.LC11
 1136              		.size	_ZN11MassStorage9FindFirstEPKcR8FileInfo, .-_ZN11MassStorage9FindFirstEPKcR8FileInfo
 1137              		.section	.text._ZN11MassStorage8FindNextER8FileInfo,"ax",%progbits
 1138              		.align	1
 1139              		.p2align 2,,3
 1140              		.global	_ZN11MassStorage8FindNextER8FileInfo
ARM GAS  /tmp/cczcjP9Q.s 			page 21


 1141              		.syntax unified
 1142              		.thumb
 1143              		.thumb_func
 1144              		.fpu fpv4-sp-d16
 1145              		.type	_ZN11MassStorage8FindNextER8FileInfo, %function
 1146              	_ZN11MassStorage8FindNextER8FileInfo:
 1147              		@ args = 0, pretend = 0, frame = 32
 1148              		@ frame_needed = 0, uses_anonymous_args = 0
 1149 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1150 0002 00F28445 		addw	r5, r0, #1156
 1151 0006 89B0     		sub	sp, sp, #36
 1152 0008 0446     		mov	r4, r0
 1153 000a 2846     		mov	r0, r5
 1154 000c 0F46     		mov	r7, r1
 1155 000e FFF7FEFF 		bl	_ZNK5Mutex9GetHolderEv
 1156 0012 0646     		mov	r6, r0
 1157 0014 FFF7FEFF 		bl	_ZN9RTOSIface14GetCurrentTaskEv
 1158 0018 8642     		cmp	r6, r0
 1159 001a 4FF00003 		mov	r3, #0
 1160 001e 02D0     		beq	.L210
 1161              	.L201:
 1162 0020 1846     		mov	r0, r3
 1163 0022 09B0     		add	sp, sp, #36
 1164              		@ sp needed
 1165 0024 F0BD     		pop	{r4, r5, r6, r7, pc}
 1166              	.L210:
 1167 0026 C4F8343E 		str	r3, [r4, #3636]
 1168 002a 04F61860 		addw	r0, r4, #3608
 1169 002e 7826     		movs	r6, #120
 1170 0030 7C1C     		adds	r4, r7, #1
 1171 0032 6946     		mov	r1, sp
 1172 0034 CDE90646 		strd	r4, r6, [sp, #24]
 1173 0038 FFF7FEFF 		bl	f_readdir
 1174 003c A8B9     		cbnz	r0, .L202
 1175 003e 9DF80930 		ldrb	r3, [sp, #9]	@ zero_extendqisi2
 1176 0042 93B1     		cbz	r3, .L202
 1177 0044 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 1178 0048 7A78     		ldrb	r2, [r7, #1]	@ zero_extendqisi2
 1179 004a 0099     		ldr	r1, [sp]
 1180 004c F967     		str	r1, [r7, #124]
 1181 004e C3F30013 		ubfx	r3, r3, #4, #1
 1182 0052 3B70     		strb	r3, [r7]
 1183 0054 82B1     		cbz	r2, .L211
 1184              	.L204:
 1185 0056 BDF80610 		ldrh	r1, [sp, #6]
 1186 005a BDF80400 		ldrh	r0, [sp, #4]
 1187 005e FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1188 0062 0123     		movs	r3, #1
 1189 0064 C7E92001 		strd	r0, [r7, #128]
 1190 0068 DAE7     		b	.L201
 1191              	.L202:
 1192 006a 2846     		mov	r0, r5
 1193 006c FFF7FEFF 		bl	_ZNK5Mutex7ReleaseEv
 1194 0070 0023     		movs	r3, #0
 1195 0072 1846     		mov	r0, r3
 1196 0074 09B0     		add	sp, sp, #36
 1197              		@ sp needed
ARM GAS  /tmp/cczcjP9Q.s 			page 22


 1198 0076 F0BD     		pop	{r4, r5, r6, r7, pc}
 1199              	.L211:
 1200 0078 3246     		mov	r2, r6
 1201 007a 2046     		mov	r0, r4
 1202 007c 0DF10901 		add	r1, sp, #9
 1203 0080 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1204 0084 E7E7     		b	.L204
 1205              		.size	_ZN11MassStorage8FindNextER8FileInfo, .-_ZN11MassStorage8FindNextER8FileInfo
 1206 0086 00BF     		.section	.text._ZNK11MassStorage19GetLastModifiedTimeEPKcS1_,"ax",%progbits
 1207              		.align	1
 1208              		.p2align 2,,3
 1209              		.global	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1210              		.syntax unified
 1211              		.thumb
 1212              		.thumb_func
 1213              		.fpu fpv4-sp-d16
 1214              		.type	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_, %function
 1215              	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_:
 1216              		@ args = 0, pretend = 0, frame = 160
 1217              		@ frame_needed = 0, uses_anonymous_args = 0
 1218 0000 30B5     		push	{r4, r5, lr}
 1219 0002 A9B0     		sub	sp, sp, #164
 1220 0004 28AC     		add	r4, sp, #160
 1221 0006 0025     		movs	r5, #0
 1222 0008 04F87C5D 		strb	r5, [r4, #-124]!
 1223 000c 01A8     		add	r0, sp, #4
 1224 000e 7923     		movs	r3, #121
 1225 0010 CDE90143 		strd	r4, r3, [sp, #4]
 1226 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 1227 0018 2046     		mov	r0, r4
 1228 001a 01A9     		add	r1, sp, #4
 1229 001c 0795     		str	r5, [sp, #28]
 1230 001e FFF7FEFF 		bl	f_stat
 1231 0022 18B1     		cbz	r0, .L216
 1232 0024 0020     		movs	r0, #0
 1233 0026 0021     		movs	r1, #0
 1234 0028 29B0     		add	sp, sp, #164
 1235              		@ sp needed
 1236 002a 30BD     		pop	{r4, r5, pc}
 1237              	.L216:
 1238 002c BDF80A10 		ldrh	r1, [sp, #10]
 1239 0030 BDF80800 		ldrh	r0, [sp, #8]
 1240 0034 FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1241 0038 29B0     		add	sp, sp, #164
 1242              		@ sp needed
 1243 003a 30BD     		pop	{r4, r5, pc}
 1244              		.size	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_, .-_ZNK11MassStorage19GetLastModifiedTimeEPKcS
 1245              		.section	.text._ZNK11MassStorage14IsCardDetectedEj,"ax",%progbits
 1246              		.align	1
 1247              		.p2align 2,,3
 1248              		.global	_ZNK11MassStorage14IsCardDetectedEj
 1249              		.syntax unified
 1250              		.thumb
 1251              		.thumb_func
 1252              		.fpu fpv4-sp-d16
 1253              		.type	_ZNK11MassStorage14IsCardDetectedEj, %function
 1254              	_ZNK11MassStorage14IsCardDetectedEj:
ARM GAS  /tmp/cczcjP9Q.s 			page 23


 1255              		@ args = 0, pretend = 0, frame = 0
 1256              		@ frame_needed = 0, uses_anonymous_args = 0
 1257              		@ link register save eliminated.
 1258 0000 01EBC101 		add	r1, r1, r1, lsl #3
 1259 0004 00EB8111 		add	r1, r0, r1, lsl #6
 1260 0008 91F83F02 		ldrb	r0, [r1, #575]	@ zero_extendqisi2
 1261 000c A0F10200 		sub	r0, #2
 1262 0010 B0FA80F0 		clz	r0, r0
 1263 0014 4009     		lsrs	r0, r0, #5
 1264 0016 7047     		bx	lr
 1265              		.size	_ZNK11MassStorage14IsCardDetectedEj, .-_ZNK11MassStorage14IsCardDetectedEj
 1266              		.section	.text._ZN11MassStorage15InternalUnmountEjb,"ax",%progbits
 1267              		.align	1
 1268              		.p2align 2,,3
 1269              		.global	_ZN11MassStorage15InternalUnmountEjb
 1270              		.syntax unified
 1271              		.thumb
 1272              		.thumb_func
 1273              		.fpu fpv4-sp-d16
 1274              		.type	_ZN11MassStorage15InternalUnmountEjb, %function
 1275              	_ZN11MassStorage15InternalUnmountEjb:
 1276              		@ args = 0, pretend = 0, frame = 16
 1277              		@ frame_needed = 0, uses_anonymous_args = 0
 1278 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1279 0002 0D46     		mov	r5, r1
 1280 0004 85B0     		sub	sp, sp, #20
 1281 0006 05EBC504 		add	r4, r5, r5, lsl #3
 1282 000a 0646     		mov	r6, r0
 1283 000c 1746     		mov	r7, r2
 1284 000e 00F59061 		add	r1, r0, #1152
 1285 0012 4FF0FF32 		mov	r2, #-1
 1286 0016 6846     		mov	r0, sp
 1287 0018 A401     		lsls	r4, r4, #6
 1288 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1289 001e 04F50E71 		add	r1, r4, #568
 1290 0022 3144     		add	r1, r1, r6
 1291 0024 3444     		add	r4, r4, r6
 1292 0026 02A8     		add	r0, sp, #8
 1293 0028 4FF0FF32 		mov	r2, #-1
 1294 002c FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1295 0030 3A46     		mov	r2, r7
 1296 0032 2146     		mov	r1, r4
 1297 0034 3046     		mov	r0, r6
 1298 0036 FFF7FEFF 		bl	_ZN11MassStorage15InvalidateFilesEPK5FATFSb
 1299 003a EDB2     		uxtb	r5, r5
 1300 003c 0646     		mov	r6, r0
 1301 003e 0021     		movs	r1, #0
 1302 0040 2846     		mov	r0, r5
 1303 0042 FFF7FEFF 		bl	f_mount
 1304 0046 4FF40C72 		mov	r2, #560
 1305 004a 0021     		movs	r1, #0
 1306 004c 2046     		mov	r0, r4
 1307 004e FFF7FEFF 		bl	memset
 1308 0052 2846     		mov	r0, r5
 1309 0054 FFF7FEFF 		bl	sd_mmc_unmount
 1310 0058 0023     		movs	r3, #0
 1311 005a 84F83E32 		strb	r3, [r4, #574]
ARM GAS  /tmp/cczcjP9Q.s 			page 24


 1312 005e 02A8     		add	r0, sp, #8
 1313 0060 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1314 0064 6846     		mov	r0, sp
 1315 0066 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1316 006a 3046     		mov	r0, r6
 1317 006c 05B0     		add	sp, sp, #20
 1318              		@ sp needed
 1319 006e F0BD     		pop	{r4, r5, r6, r7, pc}
 1320              		.size	_ZN11MassStorage15InternalUnmountEjb, .-_ZN11MassStorage15InternalUnmountEjb
 1321              		.global	__aeabi_f2d
 1322              		.section	.text._ZN11MassStorage5MountEjRK9StringRefb.part.9,"ax",%progbits
 1323              		.align	1
 1324              		.p2align 2,,3
 1325              		.syntax unified
 1326              		.thumb
 1327              		.thumb_func
 1328              		.fpu fpv4-sp-d16
 1329              		.type	_ZN11MassStorage5MountEjRK9StringRefb.part.9, %function
 1330              	_ZN11MassStorage5MountEjRK9StringRefb.part.9:
 1331              		@ args = 0, pretend = 0, frame = 16
 1332              		@ frame_needed = 0, uses_anonymous_args = 0
 1333 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1334 0004 2DED028B 		vpush.64	{d8}
 1335 0008 0E46     		mov	r6, r1
 1336 000a 89B0     		sub	sp, sp, #36
 1337 000c 8146     		mov	r9, r0
 1338 000e 00F59061 		add	r1, r0, #1152
 1339 0012 1746     		mov	r7, r2
 1340 0014 04A8     		add	r0, sp, #16
 1341 0016 4FF0FF32 		mov	r2, #-1
 1342 001a F400     		lsls	r4, r6, #3
 1343 001c 9846     		mov	r8, r3
 1344 001e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1345 0022 A319     		adds	r3, r4, r6
 1346 0024 9B01     		lsls	r3, r3, #6
 1347 0026 03F50E71 		add	r1, r3, #568
 1348 002a 09EB0305 		add	r5, r9, r3
 1349 002e 4944     		add	r1, r1, r9
 1350 0030 06A8     		add	r0, sp, #24
 1351 0032 4FF0FF32 		mov	r2, #-1
 1352 0036 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1353 003a 95F83D32 		ldrb	r3, [r5, #573]	@ zero_extendqisi2
 1354 003e FBB9     		cbnz	r3, .L221
 1355 0040 95F83E32 		ldrb	r3, [r5, #574]	@ zero_extendqisi2
 1356 0044 7BB1     		cbz	r3, .L222
 1357 0046 2946     		mov	r1, r5
 1358 0048 4846     		mov	r0, r9
 1359 004a FFF7FEFF 		bl	_ZNK11MassStorage11AnyFileOpenEPK5FATFS
 1360 004e 28B1     		cbz	r0, .L223
 1361 0050 3846     		mov	r0, r7
 1362 0052 5649     		ldr	r1, .L252
 1363 0054 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1364 0058 0225     		movs	r5, #2
 1365 005a 1DE0     		b	.L224
 1366              	.L223:
 1367 005c 0246     		mov	r2, r0
 1368 005e 3146     		mov	r1, r6
ARM GAS  /tmp/cczcjP9Q.s 			page 25


 1369 0060 4846     		mov	r0, r9
 1370 0062 FFF7FEFF 		bl	_ZN11MassStorage15InternalUnmountEjb
 1371              	.L222:
 1372 0066 FFF7FEFF 		bl	millis
 1373 006a A319     		adds	r3, r4, r6
 1374 006c 09EB8313 		add	r3, r9, r3, lsl #6
 1375 0070 0122     		movs	r2, #1
 1376 0072 C3F83402 		str	r0, [r3, #564]
 1377 0076 83F83D22 		strb	r2, [r3, #573]
 1378 007a 0220     		movs	r0, #2
 1379 007c FFF7FEFF 		bl	coreDelay
 1380              	.L221:
 1381 0080 3444     		add	r4, r4, r6
 1382 0082 09EB8414 		add	r4, r9, r4, lsl #6
 1383 0086 94F83F92 		ldrb	r9, [r4, #575]	@ zero_extendqisi2
 1384 008a B9F1000F 		cmp	r9, #0
 1385 008e 0FD0     		beq	.L247
 1386 0090 B9F1020F 		cmp	r9, #2
 1387 0094 14D0     		beq	.L248
 1388 0096 0025     		movs	r5, #0
 1389              	.L224:
 1390 0098 06A8     		add	r0, sp, #24
 1391 009a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1392 009e 04A8     		add	r0, sp, #16
 1393 00a0 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1394 00a4 2846     		mov	r0, r5
 1395 00a6 09B0     		add	sp, sp, #36
 1396              		@ sp needed
 1397 00a8 BDEC028B 		vldm	sp!, {d8}
 1398 00ac BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1399              	.L247:
 1400 00b0 3846     		mov	r0, r7
 1401 00b2 3F49     		ldr	r1, .L252+4
 1402 00b4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1403 00b8 0225     		movs	r5, #2
 1404 00ba 84F83D92 		strb	r9, [r4, #573]
 1405 00be EBE7     		b	.L224
 1406              	.L248:
 1407 00c0 5FFA86FA 		uxtb	r10, r6
 1408 00c4 5046     		mov	r0, r10
 1409 00c6 FFF7FEFF 		bl	sd_mmc_check
 1410 00ca 8346     		mov	fp, r0
 1411 00cc 0028     		cmp	r0, #0
 1412 00ce 41D1     		bne	.L249
 1413 00d0 84F83D02 		strb	r0, [r4, #573]
 1414 00d4 2946     		mov	r1, r5
 1415 00d6 5046     		mov	r0, r10
 1416 00d8 FFF7FEFF 		bl	f_mount
 1417 00dc 0028     		cmp	r0, #0
 1418 00de 5DD1     		bne	.L250
 1419 00e0 0125     		movs	r5, #1
 1420 00e2 84F83E52 		strb	r5, [r4, #574]
 1421 00e6 B8F1000F 		cmp	r8, #0
 1422 00ea D5D0     		beq	.L224
 1423 00ec 5046     		mov	r0, r10
 1424 00ee FFF7FEFF 		bl	sd_mmc_get_capacity
 1425 00f2 07EE900A 		vmov	s15, r0	@ int
ARM GAS  /tmp/cczcjP9Q.s 			page 26


 1426 00f6 9FED2F6A 		vldr.32	s12, .L252+8
 1427 00fa DFED2F6A 		vldr.32	s13, .L252+12
 1428 00fe 9FED2F7A 		vldr.32	s14, .L252+16
 1429 0102 F8EE677A 		vcvt.f32.u32	s15, s15
 1430 0106 5046     		mov	r0, r10
 1431 0108 67EE867A 		vmul.f32	s15, s15, s12
 1432 010c 87EEA68A 		vdiv.f32	s16, s15, s13
 1433 0110 B4EEC78A 		vcmpe.f32	s16, s14
 1434 0114 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1435 0118 A6BF     		itte	ge
 1436 011a 88EE078A 		vdivge.f32	s16, s16, s14
 1437 011e 284D     		ldrge	r5, .L252+20
 1438 0120 284D     		ldrlt	r5, .L252+24
 1439 0122 FFF7FEFF 		bl	sd_mmc_get_type
 1440 0126 431E     		subs	r3, r0, #1
 1441 0128 DBB2     		uxtb	r3, r3
 1442 012a 092B     		cmp	r3, #9
 1443 012c 96BF     		itet	ls
 1444 012e 264A     		ldrls	r2, .L252+28
 1445 0130 264C     		ldrhi	r4, .L252+32
 1446 0132 52F82340 		ldrls	r4, [r2, r3, lsl #2]
 1447 0136 0295     		str	r5, [sp, #8]
 1448 0138 0125     		movs	r5, #1
 1449 013a 18EE100A 		vmov	r0, s16
 1450 013e FFF7FEFF 		bl	__aeabi_f2d
 1451 0142 3346     		mov	r3, r6
 1452 0144 CDE90001 		strd	r0, [sp]
 1453 0148 2246     		mov	r2, r4
 1454 014a 3846     		mov	r0, r7
 1455 014c 2049     		ldr	r1, .L252+36
 1456 014e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1457 0152 A1E7     		b	.L224
 1458              	.L249:
 1459 0154 FFF7FEFF 		bl	millis
 1460 0158 D4F83432 		ldr	r3, [r4, #564]
 1461 015c C01A     		subs	r0, r0, r3
 1462 015e 41F28733 		movw	r3, #4999
 1463 0162 9842     		cmp	r0, r3
 1464 0164 15D9     		bls	.L251
 1465 0166 ABF1020B 		sub	fp, fp, #2
 1466 016a 5FFA8BFB 		uxtb	fp, fp
 1467 016e 0023     		movs	r3, #0
 1468 0170 BBF1050F 		cmp	fp, #5
 1469 0174 84F83D32 		strb	r3, [r4, #573]
 1470 0178 07D9     		bls	.L231
 1471 017a 164B     		ldr	r3, .L252+40
 1472              	.L232:
 1473 017c 1649     		ldr	r1, .L252+44
 1474 017e 3246     		mov	r2, r6
 1475 0180 3846     		mov	r0, r7
 1476 0182 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1477 0186 0225     		movs	r5, #2
 1478 0188 86E7     		b	.L224
 1479              	.L231:
 1480 018a 144B     		ldr	r3, .L252+48
 1481 018c 53F82B30 		ldr	r3, [r3, fp, lsl #2]
 1482 0190 F4E7     		b	.L232
ARM GAS  /tmp/cczcjP9Q.s 			page 27


 1483              	.L251:
 1484 0192 4846     		mov	r0, r9
 1485 0194 FFF7FEFF 		bl	coreDelay
 1486 0198 0025     		movs	r5, #0
 1487 019a 7DE7     		b	.L224
 1488              	.L250:
 1489 019c 0346     		mov	r3, r0
 1490 019e 3246     		mov	r2, r6
 1491 01a0 3846     		mov	r0, r7
 1492 01a2 0F49     		ldr	r1, .L252+52
 1493 01a4 4D46     		mov	r5, r9
 1494 01a6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1495 01aa 75E7     		b	.L224
 1496              	.L253:
 1497              		.align	2
 1498              	.L252:
 1499 01ac 28000000 		.word	.LC16
 1500 01b0 44000000 		.word	.LC17
 1501 01b4 00008044 		.word	1149239296
 1502 01b8 00247449 		.word	1232348160
 1503 01bc 00007A44 		.word	1148846080
 1504 01c0 14000000 		.word	.LC14
 1505 01c4 10000000 		.word	.LC13
 1506 01c8 00000000 		.word	.LANCHOR2
 1507 01cc 18000000 		.word	.LC15
 1508 01d0 A0000000 		.word	.LC20
 1509 01d4 00000000 		.word	.LC12
 1510 01d8 58000000 		.word	.LC18
 1511 01dc 00000000 		.word	.LANCHOR1
 1512 01e0 7C000000 		.word	.LC19
 1513              		.size	_ZN11MassStorage5MountEjRK9StringRefb.part.9, .-_ZN11MassStorage5MountEjRK9StringRefb.part.9
 1514              		.section	.text._ZN11MassStorage5MountEjRK9StringRefb,"ax",%progbits
 1515              		.align	1
 1516              		.p2align 2,,3
 1517              		.global	_ZN11MassStorage5MountEjRK9StringRefb
 1518              		.syntax unified
 1519              		.thumb
 1520              		.thumb_func
 1521              		.fpu fpv4-sp-d16
 1522              		.type	_ZN11MassStorage5MountEjRK9StringRefb, %function
 1523              	_ZN11MassStorage5MountEjRK9StringRefb:
 1524              		@ args = 0, pretend = 0, frame = 0
 1525              		@ frame_needed = 0, uses_anonymous_args = 0
 1526 0000 0129     		cmp	r1, #1
 1527 0002 01D8     		bhi	.L258
 1528 0004 FFF7FEBF 		b	_ZN11MassStorage5MountEjRK9StringRefb.part.9
 1529              	.L258:
 1530 0008 10B5     		push	{r4, lr}
 1531 000a 1046     		mov	r0, r2
 1532 000c 0249     		ldr	r1, .L261
 1533 000e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1534 0012 0220     		movs	r0, #2
 1535 0014 10BD     		pop	{r4, pc}
 1536              	.L262:
 1537 0016 00BF     		.align	2
 1538              	.L261:
 1539 0018 00000000 		.word	.LC21
ARM GAS  /tmp/cczcjP9Q.s 			page 28


 1540              		.size	_ZN11MassStorage5MountEjRK9StringRefb, .-_ZN11MassStorage5MountEjRK9StringRefb
 1541              		.section	.text._ZN11MassStorage7UnmountEjRK9StringRef,"ax",%progbits
 1542              		.align	1
 1543              		.p2align 2,,3
 1544              		.global	_ZN11MassStorage7UnmountEjRK9StringRef
 1545              		.syntax unified
 1546              		.thumb
 1547              		.thumb_func
 1548              		.fpu fpv4-sp-d16
 1549              		.type	_ZN11MassStorage7UnmountEjRK9StringRef, %function
 1550              	_ZN11MassStorage7UnmountEjRK9StringRef:
 1551              		@ args = 0, pretend = 0, frame = 0
 1552              		@ frame_needed = 0, uses_anonymous_args = 0
 1553 0000 0129     		cmp	r1, #1
 1554 0002 70B5     		push	{r4, r5, r6, lr}
 1555 0004 1546     		mov	r5, r2
 1556 0006 15D8     		bhi	.L268
 1557 0008 0A46     		mov	r2, r1
 1558 000a 0C46     		mov	r4, r1
 1559 000c 0646     		mov	r6, r0
 1560 000e 0C49     		ldr	r1, .L270
 1561 0010 2846     		mov	r0, r5
 1562 0012 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1563 0016 2146     		mov	r1, r4
 1564 0018 3046     		mov	r0, r6
 1565 001a 0122     		movs	r2, #1
 1566 001c FFF7FEFF 		bl	_ZN11MassStorage15InternalUnmountEjb
 1567 0020 08B9     		cbnz	r0, .L269
 1568 0022 0120     		movs	r0, #1
 1569 0024 70BD     		pop	{r4, r5, r6, pc}
 1570              	.L269:
 1571 0026 0246     		mov	r2, r0
 1572 0028 0649     		ldr	r1, .L270+4
 1573 002a 2846     		mov	r0, r5
 1574 002c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1575 0030 0120     		movs	r0, #1
 1576 0032 70BD     		pop	{r4, r5, r6, pc}
 1577              	.L268:
 1578 0034 1046     		mov	r0, r2
 1579 0036 0449     		ldr	r1, .L270+8
 1580 0038 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1581 003c 0220     		movs	r0, #2
 1582 003e 70BD     		pop	{r4, r5, r6, pc}
 1583              	.L271:
 1584              		.align	2
 1585              	.L270:
 1586 0040 00000000 		.word	.LC22
 1587 0044 20000000 		.word	.LC23
 1588 0048 00000000 		.word	.LC21
 1589              		.size	_ZN11MassStorage7UnmountEjRK9StringRef, .-_ZN11MassStorage7UnmountEjRK9StringRef
 1590              		.section	.text._ZNK11MassStorage15GetNumFreeFilesEv,"ax",%progbits
 1591              		.align	1
 1592              		.p2align 2,,3
 1593              		.global	_ZNK11MassStorage15GetNumFreeFilesEv
 1594              		.syntax unified
 1595              		.thumb
 1596              		.thumb_func
ARM GAS  /tmp/cczcjP9Q.s 			page 29


 1597              		.fpu fpv4-sp-d16
 1598              		.type	_ZNK11MassStorage15GetNumFreeFilesEv, %function
 1599              	_ZNK11MassStorage15GetNumFreeFilesEv:
 1600              		@ args = 0, pretend = 0, frame = 8
 1601              		@ frame_needed = 0, uses_anonymous_args = 0
 1602 0000 10B5     		push	{r4, lr}
 1603 0002 82B0     		sub	sp, sp, #8
 1604 0004 0446     		mov	r4, r0
 1605 0006 00F59061 		add	r1, r0, #1152
 1606 000a 4FF0FF32 		mov	r2, #-1
 1607 000e 6846     		mov	r0, sp
 1608 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1609 0014 04F58352 		add	r2, r4, #4192
 1610 0018 04F56460 		add	r0, r4, #3648
 1611 001c 1032     		adds	r2, r2, #16
 1612 001e 0024     		movs	r4, #0
 1613              	.L274:
 1614 0020 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 1615 0024 3830     		adds	r0, r0, #56
 1616 0026 03B9     		cbnz	r3, .L273
 1617 0028 0134     		adds	r4, r4, #1
 1618              	.L273:
 1619 002a 8242     		cmp	r2, r0
 1620 002c F8D1     		bne	.L274
 1621 002e 6846     		mov	r0, sp
 1622 0030 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1623 0034 2046     		mov	r0, r4
 1624 0036 02B0     		add	sp, sp, #8
 1625              		@ sp needed
 1626 0038 10BD     		pop	{r4, pc}
 1627              		.size	_ZNK11MassStorage15GetNumFreeFilesEv, .-_ZNK11MassStorage15GetNumFreeFilesEv
 1628 003a 00BF     		.section	.text._ZN11MassStorage4SpinEv,"ax",%progbits
 1629              		.align	1
 1630              		.p2align 2,,3
 1631              		.global	_ZN11MassStorage4SpinEv
 1632              		.syntax unified
 1633              		.thumb
 1634              		.thumb_func
 1635              		.fpu fpv4-sp-d16
 1636              		.type	_ZN11MassStorage4SpinEv, %function
 1637              	_ZN11MassStorage4SpinEv:
 1638              		@ args = 0, pretend = 0, frame = 8
 1639              		@ frame_needed = 0, uses_anonymous_args = 0
 1640 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1641 0004 DFF8D090 		ldr	r9, .L306
 1642 0008 DFF8D080 		ldr	r8, .L306+4
 1643 000c 85B0     		sub	sp, sp, #20
 1644 000e 0446     		mov	r4, r0
 1645 0010 00F50C75 		add	r5, r0, #560
 1646 0014 0026     		movs	r6, #0
 1647 0016 0227     		movs	r7, #2
 1648              	.L286:
 1649 0018 287B     		ldrb	r0, [r5, #12]	@ zero_extendqisi2
 1650 001a FF28     		cmp	r0, #255
 1651 001c 12D0     		beq	.L279
 1652 001e FFF7FEFF 		bl	digitalRead
 1653 0022 EB7B     		ldrb	r3, [r5, #15]	@ zero_extendqisi2
ARM GAS  /tmp/cczcjP9Q.s 			page 30


 1654 0024 98B3     		cbz	r0, .L280
 1655 0026 6BB1     		cbz	r3, .L279
 1656 0028 022B     		cmp	r3, #2
 1657 002a 3BD9     		bls	.L281
 1658 002c 032B     		cmp	r3, #3
 1659 002e 09D1     		bne	.L279
 1660 0030 FFF7FEFF 		bl	millis
 1661 0034 2B68     		ldr	r3, [r5]
 1662 0036 C01A     		subs	r0, r0, r3
 1663 0038 C828     		cmp	r0, #200
 1664 003a 03D9     		bls	.L279
 1665 003c AB7B     		ldrb	r3, [r5, #14]	@ zero_extendqisi2
 1666 003e 0022     		movs	r2, #0
 1667 0040 EA73     		strb	r2, [r5, #15]
 1668 0042 BBBB     		cbnz	r3, .L304
 1669              	.L279:
 1670 0044 05F51075 		add	r5, r5, #576
 1671 0048 FEB1     		cbz	r6, .L289
 1672 004a 04F59061 		add	r1, r4, #1152
 1673 004e 04F58355 		add	r5, r4, #4192
 1674 0052 02A8     		add	r0, sp, #8
 1675 0054 4FF0FF32 		mov	r2, #-1
 1676 0058 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1677 005c 1035     		adds	r5, r5, #16
 1678 005e 04F56464 		add	r4, r4, #3648
 1679 0062 02E0     		b	.L288
 1680              	.L287:
 1681 0064 3834     		adds	r4, r4, #56
 1682 0066 A542     		cmp	r5, r4
 1683 0068 09D0     		beq	.L305
 1684              	.L288:
 1685 006a 94F83030 		ldrb	r3, [r4, #48]	@ zero_extendqisi2
 1686 006e 002B     		cmp	r3, #0
 1687 0070 F8D0     		beq	.L287
 1688 0072 2046     		mov	r0, r4
 1689 0074 3834     		adds	r4, r4, #56
 1690 0076 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1691 007a A542     		cmp	r5, r4
 1692 007c F5D1     		bne	.L288
 1693              	.L305:
 1694 007e 02A8     		add	r0, sp, #8
 1695 0080 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1696 0084 05B0     		add	sp, sp, #20
 1697              		@ sp needed
 1698 0086 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1699              	.L289:
 1700 008a 0126     		movs	r6, #1
 1701 008c C4E7     		b	.L286
 1702              	.L280:
 1703 008e 012B     		cmp	r3, #1
 1704 0090 0ED0     		beq	.L284
 1705 0092 01D3     		bcc	.L285
 1706 0094 032B     		cmp	r3, #3
 1707 0096 D5D1     		bne	.L279
 1708              	.L285:
 1709 0098 0123     		movs	r3, #1
 1710 009a EB73     		strb	r3, [r5, #15]
ARM GAS  /tmp/cczcjP9Q.s 			page 31


 1711 009c FFF7FEFF 		bl	millis
 1712 00a0 2860     		str	r0, [r5]
 1713 00a2 CFE7     		b	.L279
 1714              	.L281:
 1715 00a4 0323     		movs	r3, #3
 1716 00a6 EB73     		strb	r3, [r5, #15]
 1717 00a8 FFF7FEFF 		bl	millis
 1718 00ac 2860     		str	r0, [r5]
 1719 00ae C9E7     		b	.L279
 1720              	.L284:
 1721 00b0 EF73     		strb	r7, [r5, #15]
 1722 00b2 C7E7     		b	.L279
 1723              	.L304:
 1724 00b4 3146     		mov	r1, r6
 1725 00b6 2046     		mov	r0, r4
 1726 00b8 FFF7FEFF 		bl	_ZN11MassStorage15InternalUnmountEjb
 1727 00bc 0028     		cmp	r0, #0
 1728 00be C1D0     		beq	.L279
 1729 00c0 D9F80030 		ldr	r3, [r9]
 1730 00c4 0090     		str	r0, [sp]
 1731 00c6 4246     		mov	r2, r8
 1732 00c8 1846     		mov	r0, r3
 1733 00ca 40F2B511 		movw	r1, #437
 1734 00ce 3346     		mov	r3, r6
 1735 00d0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1736 00d4 B6E7     		b	.L279
 1737              	.L307:
 1738 00d6 00BF     		.align	2
 1739              	.L306:
 1740 00d8 00000000 		.word	reprap
 1741 00dc 00000000 		.word	.LC24
 1742              		.size	_ZN11MassStorage4SpinEv, .-_ZN11MassStorage4SpinEv
 1743              		.section	.text._ZN11MassStorage4InitEv,"ax",%progbits
 1744              		.align	1
 1745              		.p2align 2,,3
 1746              		.global	_ZN11MassStorage4InitEv
 1747              		.syntax unified
 1748              		.thumb
 1749              		.thumb_func
 1750              		.fpu fpv4-sp-d16
 1751              		.type	_ZN11MassStorage4InitEv, %function
 1752              	_ZN11MassStorage4InitEv:
 1753              		@ args = 0, pretend = 0, frame = 112
 1754              		@ frame_needed = 0, uses_anonymous_args = 0
 1755 0000 70B5     		push	{r4, r5, r6, lr}
 1756 0002 3A49     		ldr	r1, .L317
 1757 0004 0446     		mov	r4, r0
 1758 0006 9CB0     		sub	sp, sp, #112
 1759 0008 00F59060 		add	r0, r0, #1152
 1760 000c FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 1761 0010 3749     		ldr	r1, .L317+4
 1762 0012 04F28440 		addw	r0, r4, #1156
 1763 0016 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 1764 001a 42F20800 		movw	r0, #8200
 1765 001e FFF7FEFF 		bl	_Znwj
 1766 0022 D4F83C2E 		ldr	r2, [r4, #3644]
 1767 0026 C4F83C0E 		str	r0, [r4, #3644]
ARM GAS  /tmp/cczcjP9Q.s 			page 32


 1768 002a 0026     		movs	r6, #0
 1769 002c 0346     		mov	r3, r0
 1770 002e C3E90026 		strd	r2, r6, [r3]
 1771 0032 42F20800 		movw	r0, #8200
 1772 0036 FFF7FEFF 		bl	_Znwj
 1773 003a D4F83C2E 		ldr	r2, [r4, #3644]
 1774 003e C4F83C0E 		str	r0, [r4, #3644]
 1775 0042 0346     		mov	r3, r0
 1776 0044 C3E90026 		strd	r2, r6, [r3]
 1777 0048 3146     		mov	r1, r6
 1778 004a 4FF40C72 		mov	r2, #560
 1779 004e 2046     		mov	r0, r4
 1780 0050 FFF7FEFF 		bl	memset
 1781 0054 3523     		movs	r3, #53
 1782 0056 84F83C32 		strb	r3, [r4, #572]
 1783 005a 84F83E62 		strb	r6, [r4, #574]
 1784 005e 84F83D62 		strb	r6, [r4, #573]
 1785 0062 84F83F62 		strb	r6, [r4, #575]
 1786 0066 04F50E70 		add	r0, r4, #568
 1787 006a 2249     		ldr	r1, .L317+8
 1788 006c FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 1789 0070 3146     		mov	r1, r6
 1790 0072 4FF40C72 		mov	r2, #560
 1791 0076 04F51070 		add	r0, r4, #576
 1792 007a FFF7FEFF 		bl	memset
 1793 007e FF22     		movs	r2, #255
 1794 0080 0223     		movs	r3, #2
 1795 0082 84F87E64 		strb	r6, [r4, #1150]
 1796 0086 84F87D64 		strb	r6, [r4, #1149]
 1797 008a 84F87C24 		strb	r2, [r4, #1148]
 1798 008e 84F87F34 		strb	r3, [r4, #1151]
 1799 0092 04F58F60 		add	r0, r4, #1144
 1800 0096 1849     		ldr	r1, .L317+12
 1801 0098 1CAD     		add	r5, sp, #112
 1802 009a FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 1803 009e 1749     		ldr	r1, .L317+16
 1804 00a0 1748     		ldr	r0, .L317+20
 1805 00a2 FFF7FEFF 		bl	sd_mmc_init
 1806 00a6 05F8686D 		strb	r6, [r5, #-104]!
 1807 00aa 6526     		movs	r6, #101
 1808              	.L309:
 1809 00ac 2046     		mov	r0, r4
 1810 00ae FFF7FEFF 		bl	_ZN11MassStorage4SpinEv
 1811 00b2 0023     		movs	r3, #0
 1812 00b4 1946     		mov	r1, r3
 1813 00b6 6A46     		mov	r2, sp
 1814 00b8 2046     		mov	r0, r4
 1815 00ba CDE90056 		strd	r5, r6, [sp]
 1816 00be FFF7FEFF 		bl	_ZN11MassStorage5MountEjRK9StringRefb.part.9
 1817 00c2 0028     		cmp	r0, #0
 1818 00c4 F2D0     		beq	.L309
 1819 00c6 6421     		movs	r1, #100
 1820 00c8 2846     		mov	r0, r5
 1821 00ca FFF7FEFF 		bl	_Z7StrnlenPKcj
 1822 00ce 50B1     		cbz	r0, .L308
 1823 00d0 40F6B830 		movw	r0, #3000
 1824 00d4 FFF7FEFF 		bl	coreDelay
ARM GAS  /tmp/cczcjP9Q.s 			page 33


 1825 00d8 0A4B     		ldr	r3, .L317+24
 1826 00da 0B4A     		ldr	r2, .L317+28
 1827 00dc 1868     		ldr	r0, [r3]
 1828 00de 0121     		movs	r1, #1
 1829 00e0 2B46     		mov	r3, r5
 1830 00e2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1831              	.L308:
 1832 00e6 1CB0     		add	sp, sp, #112
 1833              		@ sp needed
 1834 00e8 70BD     		pop	{r4, r5, r6, pc}
 1835              	.L318:
 1836 00ea 00BF     		.align	2
 1837              	.L317:
 1838 00ec 00000000 		.word	.LC25
 1839 00f0 0C000000 		.word	.LC26
 1840 00f4 18000000 		.word	.LC27
 1841 00f8 1C000000 		.word	.LC28
 1842 00fc 00000000 		.word	.LANCHOR3
 1843 0100 00000000 		.word	.LANCHOR4
 1844 0104 00000000 		.word	reprap
 1845 0108 20000000 		.word	.LC29
 1846              		.size	_ZN11MassStorage4InitEv, .-_ZN11MassStorage4InitEv
 1847              		.section	.text._ZN6StringILj100EE6printfEPKcz,"axG",%progbits,_ZN6StringILj100EE6printfEPKcz,comda
 1848              		.align	1
 1849              		.p2align 2,,3
 1850              		.weak	_ZN6StringILj100EE6printfEPKcz
 1851              		.syntax unified
 1852              		.thumb
 1853              		.thumb_func
 1854              		.fpu fpv4-sp-d16
 1855              		.type	_ZN6StringILj100EE6printfEPKcz, %function
 1856              	_ZN6StringILj100EE6printfEPKcz:
 1857              		@ args = 4, pretend = 12, frame = 16
 1858              		@ frame_needed = 0, uses_anonymous_args = 1
 1859 0000 0EB4     		push	{r1, r2, r3}
 1860 0002 00B5     		push	{lr}
 1861 0004 84B0     		sub	sp, sp, #16
 1862 0006 05AA     		add	r2, sp, #20
 1863 0008 0290     		str	r0, [sp, #8]
 1864 000a 52F8041B 		ldr	r1, [r2], #4
 1865 000e 0192     		str	r2, [sp, #4]
 1866 0010 6523     		movs	r3, #101
 1867 0012 02A8     		add	r0, sp, #8
 1868 0014 0393     		str	r3, [sp, #12]
 1869 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 1870 001a 04B0     		add	sp, sp, #16
 1871              		@ sp needed
 1872 001c 5DF804EB 		ldr	lr, [sp], #4
 1873 0020 03B0     		add	sp, sp, #12
 1874 0022 7047     		bx	lr
 1875              		.size	_ZN6StringILj100EE6printfEPKcz, .-_ZN6StringILj100EE6printfEPKcz
 1876              		.section	.text._ZN11MassStorage20RecordSimulationTimeEPKcm,"ax",%progbits
 1877              		.align	1
 1878              		.p2align 2,,3
 1879              		.global	_ZN11MassStorage20RecordSimulationTimeEPKcm
 1880              		.syntax unified
 1881              		.thumb
ARM GAS  /tmp/cczcjP9Q.s 			page 34


 1882              		.thumb_func
 1883              		.fpu fpv4-sp-d16
 1884              		.type	_ZN11MassStorage20RecordSimulationTimeEPKcm, %function
 1885              	_ZN11MassStorage20RecordSimulationTimeEPKcm:
 1886              		@ args = 0, pretend = 0, frame = 120
 1887              		@ frame_needed = 0, uses_anonymous_args = 0
 1888 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1889 0004 0223     		movs	r3, #2
 1890 0006 A1B0     		sub	sp, sp, #132
 1891 0008 0D46     		mov	r5, r1
 1892 000a 9146     		mov	r9, r2
 1893 000c 0A46     		mov	r2, r1
 1894 000e 3849     		ldr	r1, .L344
 1895 0010 8046     		mov	r8, r0
 1896 0012 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1897 0016 B0B1     		cbz	r0, .L323
 1898 0018 0026     		movs	r6, #0
 1899 001a 0446     		mov	r4, r0
 1900 001c 8DF81860 		strb	r6, [sp, #24]
 1901 0020 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1902 0024 6428     		cmp	r0, #100
 1903 0026 28BF     		it	cs
 1904 0028 6420     		movcs	r0, #100
 1905 002a 8346     		mov	fp, r0
 1906 002c 2046     		mov	r0, r4
 1907 002e FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1908 0032 A0EB0B07 		sub	r7, r0, fp
 1909 0036 3946     		mov	r1, r7
 1910 0038 2046     		mov	r0, r4
 1911 003a FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1912 003e 68B9     		cbnz	r0, .L343
 1913              	.L326:
 1914 0040 2046     		mov	r0, r4
 1915 0042 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1916              	.L323:
 1917 0046 2B4B     		ldr	r3, .L344+4
 1918 0048 2B4A     		ldr	r2, .L344+8
 1919 004a 1868     		ldr	r0, [r3]
 1920 004c 40F2B511 		movw	r1, #437
 1921 0050 2B46     		mov	r3, r5
 1922 0052 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1923              	.L321:
 1924 0056 21B0     		add	sp, sp, #132
 1925              		@ sp needed
 1926 0058 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1927              	.L343:
 1928 005c 0DF1180A 		add	r10, sp, #24
 1929 0060 5146     		mov	r1, r10
 1930 0062 5A46     		mov	r2, fp
 1931 0064 2046     		mov	r0, r4
 1932 0066 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1933 006a 5845     		cmp	r0, fp
 1934 006c E8D1     		bne	.L326
 1935 006e 0590     		str	r0, [sp, #20]
 1936 0070 2A46     		mov	r2, r5
 1937 0072 1F49     		ldr	r1, .L344
 1938 0074 4046     		mov	r0, r8
ARM GAS  /tmp/cczcjP9Q.s 			page 35


 1939 0076 FFF7FEFF 		bl	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1940 007a 059B     		ldr	r3, [sp, #20]
 1941 007c 20AA     		add	r2, sp, #128
 1942 007e 1344     		add	r3, r3, r2
 1943 0080 CDE90201 		strd	r0, [sp, #8]
 1944 0084 03F8686C 		strb	r6, [r3, #-104]
 1945 0088 1C49     		ldr	r1, .L344+12
 1946 008a 5046     		mov	r0, r10
 1947 008c FFF7FEFF 		bl	strstr
 1948 0090 38B1     		cbz	r0, .L329
 1949 0092 A0EB0A01 		sub	r1, r0, r10
 1950 0096 3944     		add	r1, r1, r7
 1951 0098 2046     		mov	r0, r4
 1952 009a FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1953 009e 0028     		cmp	r0, #0
 1954 00a0 CED0     		beq	.L326
 1955              	.L329:
 1956 00a2 1749     		ldr	r1, .L344+16
 1957 00a4 154A     		ldr	r2, .L344+12
 1958 00a6 4B46     		mov	r3, r9
 1959 00a8 5046     		mov	r0, r10
 1960 00aa FFF7FEFF 		bl	_ZN6StringILj100EE6printfEPKcz
 1961 00ae 5146     		mov	r1, r10
 1962 00b0 2046     		mov	r0, r4
 1963 00b2 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1964 00b6 0028     		cmp	r0, #0
 1965 00b8 C2D0     		beq	.L326
 1966 00ba 2046     		mov	r0, r4
 1967 00bc FFF7FEFF 		bl	_ZN9FileStore8TruncateEv
 1968 00c0 0646     		mov	r6, r0
 1969 00c2 2046     		mov	r0, r4
 1970 00c4 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1971 00c8 0028     		cmp	r0, #0
 1972 00ca BCD0     		beq	.L323
 1973 00cc 002E     		cmp	r6, #0
 1974 00ce BAD0     		beq	.L323
 1975 00d0 DDE90234 		ldrd	r3, [sp, #8]
 1976 00d4 2343     		orrs	r3, r3, r4
 1977 00d6 BED0     		beq	.L321
 1978 00d8 DDE90234 		ldrd	r3, [sp, #8]
 1979 00dc 4046     		mov	r0, r8
 1980 00de CDE90034 		strd	r3, [sp]
 1981 00e2 2A46     		mov	r2, r5
 1982 00e4 0249     		ldr	r1, .L344
 1983 00e6 FFF7FEFF 		bl	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x
 1984 00ea 0028     		cmp	r0, #0
 1985 00ec B3D1     		bne	.L321
 1986 00ee AAE7     		b	.L323
 1987              	.L345:
 1988              		.align	2
 1989              	.L344:
 1990 00f0 00000000 		.word	.LC30
 1991 00f4 00000000 		.word	reprap
 1992 00f8 30000000 		.word	.LC33
 1993 00fc 0C000000 		.word	.LC31
 1994 0100 24000000 		.word	.LC32
 1995              		.size	_ZN11MassStorage20RecordSimulationTimeEPKcm, .-_ZN11MassStorage20RecordSimulationTimeEPKcm
ARM GAS  /tmp/cczcjP9Q.s 			page 36


 1996              		.section	.text._ZN6StringILj50EE6printfEPKcz,"axG",%progbits,_ZN6StringILj50EE6printfEPKcz,comdat
 1997              		.align	1
 1998              		.p2align 2,,3
 1999              		.weak	_ZN6StringILj50EE6printfEPKcz
 2000              		.syntax unified
 2001              		.thumb
 2002              		.thumb_func
 2003              		.fpu fpv4-sp-d16
 2004              		.type	_ZN6StringILj50EE6printfEPKcz, %function
 2005              	_ZN6StringILj50EE6printfEPKcz:
 2006              		@ args = 4, pretend = 12, frame = 16
 2007              		@ frame_needed = 0, uses_anonymous_args = 1
 2008 0000 0EB4     		push	{r1, r2, r3}
 2009 0002 00B5     		push	{lr}
 2010 0004 84B0     		sub	sp, sp, #16
 2011 0006 05AA     		add	r2, sp, #20
 2012 0008 0290     		str	r0, [sp, #8]
 2013 000a 52F8041B 		ldr	r1, [r2], #4
 2014 000e 0192     		str	r2, [sp, #4]
 2015 0010 3323     		movs	r3, #51
 2016 0012 02A8     		add	r0, sp, #8
 2017 0014 0393     		str	r3, [sp, #12]
 2018 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2019 001a 04B0     		add	sp, sp, #16
 2020              		@ sp needed
 2021 001c 5DF804EB 		ldr	lr, [sp], #4
 2022 0020 03B0     		add	sp, sp, #12
 2023 0022 7047     		bx	lr
 2024              		.size	_ZN6StringILj50EE6printfEPKcz, .-_ZN6StringILj50EE6printfEPKcz
 2025              		.section	.text._ZN11MassStorage11GetCardInfoEjRyS0_RmS1_,"ax",%progbits
 2026              		.align	1
 2027              		.p2align 2,,3
 2028              		.global	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_
 2029              		.syntax unified
 2030              		.thumb
 2031              		.thumb_func
 2032              		.fpu fpv4-sp-d16
 2033              		.type	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_, %function
 2034              	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_:
 2035              		@ args = 8, pretend = 0, frame = 64
 2036              		@ frame_needed = 0, uses_anonymous_args = 0
 2037 0000 0129     		cmp	r1, #1
 2038 0002 01D9     		bls	.L357
 2039 0004 0020     		movs	r0, #0
 2040 0006 7047     		bx	lr
 2041              	.L357:
 2042 0008 F0B5     		push	{r4, r5, r6, r7, lr}
 2043 000a 01EBC104 		add	r4, r1, r1, lsl #3
 2044 000e 00EB8410 		add	r0, r0, r4, lsl #6
 2045 0012 91B0     		sub	sp, sp, #68
 2046 0014 90F83E02 		ldrb	r0, [r0, #574]	@ zero_extendqisi2
 2047 0018 10B9     		cbnz	r0, .L358
 2048 001a 0120     		movs	r0, #1
 2049              	.L349:
 2050 001c 11B0     		add	sp, sp, #68
 2051              		@ sp needed
 2052 001e F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  /tmp/cczcjP9Q.s 			page 37


 2053              	.L358:
 2054 0020 CFB2     		uxtb	r7, r1
 2055 0022 3846     		mov	r0, r7
 2056 0024 1546     		mov	r5, r2
 2057 0026 0C46     		mov	r4, r1
 2058 0028 1E46     		mov	r6, r3
 2059 002a FFF7FEFF 		bl	sd_mmc_get_capacity
 2060 002e 820D     		lsrs	r2, r0, #22
 2061 0030 8302     		lsls	r3, r0, #10
 2062 0032 C5E90032 		strd	r3, r2, [r5]
 2063 0036 3846     		mov	r0, r7
 2064 0038 10AD     		add	r5, sp, #64
 2065 003a FFF7FEFF 		bl	sd_mmc_get_interface_speed
 2066 003e 0027     		movs	r7, #0
 2067 0040 05F8347D 		strb	r7, [r5, #-52]!
 2068 0044 169B     		ldr	r3, [sp, #88]
 2069 0046 1149     		ldr	r1, .L359
 2070 0048 1860     		str	r0, [r3]
 2071 004a 2246     		mov	r2, r4
 2072 004c 2846     		mov	r0, r5
 2073 004e FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 2074 0052 2846     		mov	r0, r5
 2075 0054 02AA     		add	r2, sp, #8
 2076 0056 01A9     		add	r1, sp, #4
 2077 0058 FFF7FEFF 		bl	f_getfree
 2078 005c 70B9     		cbnz	r0, .L350
 2079 005e DDE90123 		ldrd	r2, r3, [sp, #4]
 2080 0062 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 2081 0064 5B02     		lsls	r3, r3, #9
 2082 0066 A2FB0345 		umull	r4, r5, r2, r3
 2083 006a D917     		asrs	r1, r3, #31
 2084 006c 02FB0155 		mla	r5, r2, r1, r5
 2085 0070 179A     		ldr	r2, [sp, #92]
 2086 0072 0220     		movs	r0, #2
 2087 0074 1360     		str	r3, [r2]
 2088 0076 C6E90045 		strd	r4, [r6]
 2089 007a CFE7     		b	.L349
 2090              	.L350:
 2091 007c 1799     		ldr	r1, [sp, #92]
 2092 007e 0022     		movs	r2, #0
 2093 0080 0023     		movs	r3, #0
 2094 0082 0F60     		str	r7, [r1]
 2095 0084 0220     		movs	r0, #2
 2096 0086 C6E90023 		strd	r2, [r6]
 2097 008a C7E7     		b	.L349
 2098              	.L360:
 2099              		.align	2
 2100              	.L359:
 2101 008c 00000000 		.word	.LC34
 2102              		.size	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_, .-_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_
 2103              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2104              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2105              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2106              	_ZL28cpu_irq_prev_interrupt_state:
 2107 0000 00       		.space	1
 2108              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2109              		.align	2
ARM GAS  /tmp/cczcjP9Q.s 			page 38


 2110              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2111              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2112              	_ZL32cpu_irq_critical_section_counter:
 2113 0000 00000000 		.space	4
 2114              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 2115              		.align	2
 2116              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 2117              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 2118              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 2119 0000 00000000 		.space	4
 2120              		.section	.rodata.CSWTCH.46,"a",%progbits
 2121              		.align	2
 2122              		.set	.LANCHOR2,. + 0
 2123              		.type	CSWTCH.46, %object
 2124              		.size	CSWTCH.46, 40
 2125              	CSWTCH.46:
 2126 0000 78000000 		.word	.LC41
 2127 0004 7C000000 		.word	.LC42
 2128 0008 18000000 		.word	.LC15
 2129 000c 80000000 		.word	.LC43
 2130 0010 88000000 		.word	.LC44
 2131 0014 18000000 		.word	.LC15
 2132 0018 18000000 		.word	.LC15
 2133 001c 18000000 		.word	.LC15
 2134 0020 94000000 		.word	.LC45
 2135 0024 9C000000 		.word	.LC46
 2136              		.section	.rodata.CSWTCH.48,"a",%progbits
 2137              		.align	2
 2138              		.set	.LANCHOR1,. + 0
 2139              		.type	CSWTCH.48, %object
 2140              		.size	CSWTCH.48, 24
 2141              	CSWTCH.48:
 2142 0000 00000000 		.word	.LC35
 2143 0004 10000000 		.word	.LC36
 2144 0008 24000000 		.word	.LC37
 2145 000c 34000000 		.word	.LC38
 2146 0010 48000000 		.word	.LC39
 2147 0014 60000000 		.word	.LC40
 2148              		.section	.rodata._ZL10monthNames,"a",%progbits
 2149              		.align	2
 2150              		.set	.LANCHOR0,. + 0
 2151              		.type	_ZL10monthNames, %object
 2152              		.size	_ZL10monthNames, 52
 2153              	_ZL10monthNames:
 2154 0000 00000000 		.word	.LC4
 2155 0004 B0000000 		.word	.LC47
 2156 0008 B4000000 		.word	.LC48
 2157 000c B8000000 		.word	.LC49
 2158 0010 BC000000 		.word	.LC50
 2159 0014 C0000000 		.word	.LC51
 2160 0018 C4000000 		.word	.LC52
 2161 001c C8000000 		.word	.LC53
 2162 0020 CC000000 		.word	.LC54
 2163 0024 D0000000 		.word	.LC55
 2164 0028 D4000000 		.word	.LC56
 2165 002c D8000000 		.word	.LC57
 2166 0030 DC000000 		.word	.LC58
ARM GAS  /tmp/cczcjP9Q.s 			page 39


 2167              		.section	.rodata._ZL11SdSpiCSPins,"a",%progbits
 2168              		.align	2
 2169              		.set	.LANCHOR3,. + 0
 2170              		.type	_ZL11SdSpiCSPins, %object
 2171              		.size	_ZL11SdSpiCSPins, 1
 2172              	_ZL11SdSpiCSPins:
 2173 0000 38       		.byte	56
 2174              		.section	.rodata._ZL18SdWriteProtectPins,"a",%progbits
 2175              		.align	2
 2176              		.set	.LANCHOR4,. + 0
 2177              		.type	_ZL18SdWriteProtectPins, %object
 2178              		.size	_ZL18SdWriteProtectPins, 2
 2179              	_ZL18SdWriteProtectPins:
 2180 0000 FF       		.byte	-1
 2181 0001 FF       		.byte	-1
 2182              		.section	.rodata._ZN11MassStorage11CombineNameERK9StringRefPKcS4_.str1.4,"aMS",%progbits,1
 2183              		.align	2
 2184              	.LC1:
 2185 0000 436F6D62 		.ascii	"CombineName() buffer overflow\000"
 2185      696E654E 
 2185      616D6528 
 2185      29206275 
 2185      66666572 
 2186 001e 0000     		.space	2
 2187              	.LC2:
 2188 0020 3F3F3F3F 		.ascii	"?????\000"
 2188      3F00
 2189 0026 0000     		.space	2
 2190              	.LC3:
 2191 0028 66696C65 		.ascii	"file name too long\000"
 2191      206E616D 
 2191      6520746F 
 2191      6F206C6F 
 2191      6E6700
 2192              		.section	.rodata._ZN11MassStorage11GetCardInfoEjRyS0_RmS1_.str1.4,"aMS",%progbits,1
 2193              		.align	2
 2194              	.LC34:
 2195 0000 25753A2F 		.ascii	"%u:/\000"
 2195      00
 2196              		.section	.rodata._ZN11MassStorage12GetMonthNameEh.str1.4,"aMS",%progbits,1
 2197              		.align	2
 2198              	.LC4:
 2199 0000 3F3F3F00 		.ascii	"???\000"
 2200              		.section	.rodata._ZN11MassStorage13MakeDirectoryEPKcS1_.str1.4,"aMS",%progbits,1
 2201              		.align	2
 2202              	.LC7:
 2203 0000 4661696C 		.ascii	"Failed to create directory %s\012\000"
 2203      65642074 
 2203      6F206372 
 2203      65617465 
 2203      20646972 
 2204              		.section	.rodata._ZN11MassStorage19SetLastModifiedTimeEPKcS1_x.str1.4,"aMS",%progbits,1
 2205              		.align	2
 2206              	.LC9:
 2207 0000 4661696C 		.ascii	"Failed to set last modified time for file '%s'\012\000"
 2207      65642074 
 2207      6F207365 
ARM GAS  /tmp/cczcjP9Q.s 			page 40


 2207      74206C61 
 2207      7374206D 
 2208              		.section	.rodata._ZN11MassStorage20RecordSimulationTimeEPKcm.str1.4,"aMS",%progbits,1
 2209              		.align	2
 2210              	.LC30:
 2211 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 2211      636F6465 
 2211      732F00
 2212 000b 00       		.space	1
 2213              	.LC31:
 2214 000c 0A3B2053 		.ascii	"\012; Simulated print time\000"
 2214      696D756C 
 2214      61746564 
 2214      20707269 
 2214      6E742074 
 2215              	.LC32:
 2216 0024 25733A20 		.ascii	"%s: %lu\012\000"
 2216      256C750A 
 2216      00
 2217 002d 000000   		.space	3
 2218              	.LC33:
 2219 0030 4661696C 		.ascii	"Failed to append simulated print time to file %s\012"
 2219      65642074 
 2219      6F206170 
 2219      70656E64 
 2219      2073696D 
 2220 0061 00       		.ascii	"\000"
 2221              		.section	.rodata._ZN11MassStorage4InitEv.str1.4,"aMS",%progbits,1
 2222              		.align	2
 2223              	.LC25:
 2224 0000 46696C65 		.ascii	"FileSystem\000"
 2224      53797374 
 2224      656D00
 2225 000b 00       		.space	1
 2226              	.LC26:
 2227 000c 44697253 		.ascii	"DirSearch\000"
 2227      65617263 
 2227      6800
 2228 0016 0000     		.space	2
 2229              	.LC27:
 2230 0018 53443000 		.ascii	"SD0\000"
 2231              	.LC28:
 2232 001c 53443100 		.ascii	"SD1\000"
 2233              	.LC29:
 2234 0020 25730A00 		.ascii	"%s\012\000"
 2235              		.section	.rodata._ZN11MassStorage4SpinEv.str1.4,"aMS",%progbits,1
 2236              		.align	2
 2237              	.LC24:
 2238 0000 53442063 		.ascii	"SD card %u removed with %u file(s) open on it\012\000"
 2238      61726420 
 2238      25752072 
 2238      656D6F76 
 2238      65642077 
 2239              		.section	.rodata._ZN11MassStorage5MountEjRK9StringRefb.part.9.str1.4,"aMS",%progbits,1
 2240              		.align	2
 2241              	.LC12:
 2242 0000 556E6B6E 		.ascii	"Unknown error\000"
ARM GAS  /tmp/cczcjP9Q.s 			page 41


 2242      6F776E20 
 2242      6572726F 
 2242      7200
 2243 000e 0000     		.space	2
 2244              	.LC13:
 2245 0010 4D6200   		.ascii	"Mb\000"
 2246 0013 00       		.space	1
 2247              	.LC14:
 2248 0014 476200   		.ascii	"Gb\000"
 2249 0017 00       		.space	1
 2250              	.LC15:
 2251 0018 556E6B6E 		.ascii	"Unknown type\000"
 2251      6F776E20 
 2251      74797065 
 2251      00
 2252 0025 000000   		.space	3
 2253              	.LC16:
 2254 0028 53442063 		.ascii	"SD card has open file(s)\000"
 2254      61726420 
 2254      68617320 
 2254      6F70656E 
 2254      2066696C 
 2255 0041 000000   		.space	3
 2256              	.LC17:
 2257 0044 4E6F2053 		.ascii	"No SD card present\000"
 2257      44206361 
 2257      72642070 
 2257      72657365 
 2257      6E7400
 2258 0057 00       		.space	1
 2259              	.LC18:
 2260 0058 43616E6E 		.ascii	"Cannot initialise SD card %u: %s\000"
 2260      6F742069 
 2260      6E697469 
 2260      616C6973 
 2260      65205344 
 2261 0079 000000   		.space	3
 2262              	.LC19:
 2263 007c 43616E6E 		.ascii	"Cannot mount SD card %u: code %d\000"
 2263      6F74206D 
 2263      6F756E74 
 2263      20534420 
 2263      63617264 
 2264 009d 000000   		.space	3
 2265              	.LC20:
 2266 00a0 25732063 		.ascii	"%s card mounted in slot %u, capacity %.2f%s\000"
 2266      61726420 
 2266      6D6F756E 
 2266      74656420 
 2266      696E2073 
 2267              		.section	.rodata._ZN11MassStorage5MountEjRK9StringRefb.str1.4,"aMS",%progbits,1
 2268              		.align	2
 2269              	.LC21:
 2270 0000 53442063 		.ascii	"SD card number out of range\000"
 2270      61726420 
 2270      6E756D62 
 2270      6572206F 
ARM GAS  /tmp/cczcjP9Q.s 			page 42


 2270      7574206F 
 2271              		.section	.rodata._ZN11MassStorage6DeleteEPKcS1_b.str1.4,"aMS",%progbits,1
 2272              		.align	2
 2273              	.LC5:
 2274 0000 43616E6E 		.ascii	"Cannot delete file %s because it is open\012\000"
 2274      6F742064 
 2274      656C6574 
 2274      65206669 
 2274      6C652025 
 2275 002a 0000     		.space	2
 2276              	.LC6:
 2277 002c 4661696C 		.ascii	"Failed to delete file %s\012\000"
 2277      65642074 
 2277      6F206465 
 2277      6C657465 
 2277      2066696C 
 2278              		.section	.rodata._ZN11MassStorage6RenameEPKcS1_.str1.4,"aMS",%progbits,1
 2279              		.align	2
 2280              	.LC8:
 2281 0000 4661696C 		.ascii	"Failed to rename file or directory %s to %s\012\000"
 2281      65642074 
 2281      6F207265 
 2281      6E616D65 
 2281      2066696C 
 2282              		.section	.rodata._ZN11MassStorage7UnmountEjRK9StringRef.str1.4,"aMS",%progbits,1
 2283              		.align	2
 2284              	.LC22:
 2285 0000 53442063 		.ascii	"SD card %u may now be removed\000"
 2285      61726420 
 2285      2575206D 
 2285      6179206E 
 2285      6F772062 
 2286 001e 0000     		.space	2
 2287              	.LC23:
 2288 0020 20282575 		.ascii	" (%u file(s) were closed)\000"
 2288      2066696C 
 2288      65287329 
 2288      20776572 
 2288      6520636C 
 2289              		.section	.rodata._ZN11MassStorage8OpenFileEPKcS1_8OpenMode.str1.4,"aMS",%progbits,1
 2290              		.align	2
 2291              	.LC0:
 2292 0000 4D617820 		.ascii	"Max open file count exceeded.\012\000"
 2292      6F70656E 
 2292      2066696C 
 2292      6520636F 
 2292      756E7420 
 2293              		.section	.rodata._ZN11MassStorage9FindFirstEPKcR8FileInfo.str1.4,"aMS",%progbits,1
 2294              		.align	2
 2295              	.LC10:
 2296 0000 2E00     		.ascii	".\000"
 2297 0002 0000     		.space	2
 2298              	.LC11:
 2299 0004 2E2E00   		.ascii	"..\000"
 2300              		.section	.rodata.str1.4,"aMS",%progbits,1
 2301              		.align	2
 2302              	.LC35:
ARM GAS  /tmp/cczcjP9Q.s 			page 43


 2303 0000 43617264 		.ascii	"Card not found\000"
 2303      206E6F74 
 2303      20666F75 
 2303      6E6400
 2304 000f 00       		.space	1
 2305              	.LC36:
 2306 0010 43617264 		.ascii	"Card is unusable\000"
 2306      20697320 
 2306      756E7573 
 2306      61626C65 
 2306      00
 2307 0021 000000   		.space	3
 2308              	.LC37:
 2309 0024 536C6F74 		.ascii	"Slot unknown\000"
 2309      20756E6B 
 2309      6E6F776E 
 2309      00
 2310 0031 000000   		.space	3
 2311              	.LC38:
 2312 0034 436F6D6D 		.ascii	"Communication error\000"
 2312      756E6963 
 2312      6174696F 
 2312      6E206572 
 2312      726F7200 
 2313              	.LC39:
 2314 0048 496C6C65 		.ascii	"Illegal input parameter\000"
 2314      67616C20 
 2314      696E7075 
 2314      74207061 
 2314      72616D65 
 2315              	.LC40:
 2316 0060 43617264 		.ascii	"Card write protected\000"
 2316      20777269 
 2316      74652070 
 2316      726F7465 
 2316      63746564 
 2317 0075 000000   		.space	3
 2318              	.LC41:
 2319 0078 534400   		.ascii	"SD\000"
 2320 007b 00       		.space	1
 2321              	.LC42:
 2322 007c 4D4D4300 		.ascii	"MMC\000"
 2323              	.LC43:
 2324 0080 5344494F 		.ascii	"SDIO\000"
 2324      00
 2325 0085 000000   		.space	3
 2326              	.LC44:
 2327 0088 53442043 		.ascii	"SD COMBO\000"
 2327      4F4D424F 
 2327      00
 2328 0091 000000   		.space	3
 2329              	.LC45:
 2330 0094 53444843 		.ascii	"SDHC\000"
 2330      00
 2331 0099 000000   		.space	3
 2332              	.LC46:
 2333 009c 4D4D4320 		.ascii	"MMC High Capacity\000"
ARM GAS  /tmp/cczcjP9Q.s 			page 44


 2333      48696768 
 2333      20436170 
 2333      61636974 
 2333      7900
 2334 00ae 0000     		.space	2
 2335              	.LC47:
 2336 00b0 4A616E00 		.ascii	"Jan\000"
 2337              	.LC48:
 2338 00b4 46656200 		.ascii	"Feb\000"
 2339              	.LC49:
 2340 00b8 4D617200 		.ascii	"Mar\000"
 2341              	.LC50:
 2342 00bc 41707200 		.ascii	"Apr\000"
 2343              	.LC51:
 2344 00c0 4D617900 		.ascii	"May\000"
 2345              	.LC52:
 2346 00c4 4A756E00 		.ascii	"Jun\000"
 2347              	.LC53:
 2348 00c8 4A756C00 		.ascii	"Jul\000"
 2349              	.LC54:
 2350 00cc 41756700 		.ascii	"Aug\000"
 2351              	.LC55:
 2352 00d0 53657000 		.ascii	"Sep\000"
 2353              	.LC56:
 2354 00d4 4F637400 		.ascii	"Oct\000"
 2355              	.LC57:
 2356 00d8 4E6F7600 		.ascii	"Nov\000"
 2357              	.LC58:
 2358 00dc 44656300 		.ascii	"Dec\000"
 2359              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
