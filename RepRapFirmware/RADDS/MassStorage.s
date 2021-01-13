ARM GAS  /tmp/ccseNMKE.s 			page 1


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
  11              		.file	"MassStorage.cpp"
  12              		.section	.text._ZN11MassStorageC2EP8Platform,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN11MassStorageC2EP8Platform
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN11MassStorageC2EP8Platform, %function
  21              	_ZN11MassStorageC2EP8Platform:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 70B5     		push	{r4, r5, r6, lr}
  25 0002 0646     		mov	r6, r0
  26 0004 0025     		movs	r5, #0
  27 0006 00F59160 		add	r0, r0, #1160
  28 000a C6F83852 		str	r5, [r6, #568]
  29 000e C6F87854 		str	r5, [r6, #1144]
  30 0012 C6F88054 		str	r5, [r6, #1152]
  31 0016 C6F88454 		str	r5, [r6, #1156]
  32 001a FFF7FEFF 		bl	_ZN14FileInfoParserC1Ev
  33 001e 06F52164 		add	r4, r6, #2576
  34 0022 C6F80C5A 		str	r5, [r6, #2572]
  35 0026 06F54465 		add	r5, r6, #3136
  36              	.L2:
  37 002a 2046     		mov	r0, r4
  38 002c 3834     		adds	r4, r4, #56
  39 002e FFF7FEFF 		bl	_ZN9FileStoreC1Ev
  40 0032 A542     		cmp	r5, r4
  41 0034 F9D1     		bne	.L2
  42 0036 3046     		mov	r0, r6
  43 0038 70BD     		pop	{r4, r5, r6, pc}
  44              		.size	_ZN11MassStorageC2EP8Platform, .-_ZN11MassStorageC2EP8Platform
  45              		.global	_ZN11MassStorageC1EP8Platform
  46              		.thumb_set _ZN11MassStorageC1EP8Platform,_ZN11MassStorageC2EP8Platform
  47 003a 00BF     		.section	.text._ZN11MassStorage19AllocateWriteBufferEv,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.global	_ZN11MassStorage19AllocateWriteBufferEv
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu softvfp
  55              		.type	_ZN11MassStorage19AllocateWriteBufferEv, %function
  56              	_ZN11MassStorage19AllocateWriteBufferEv:
  57              		@ args = 0, pretend = 0, frame = 8
ARM GAS  /tmp/ccseNMKE.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59 0000 30B5     		push	{r4, r5, lr}
  60 0002 0546     		mov	r5, r0
  61 0004 83B0     		sub	sp, sp, #12
  62 0006 00F59061 		add	r1, r0, #1152
  63 000a 4FF0FF32 		mov	r2, #-1
  64 000e 6846     		mov	r0, sp
  65 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
  66 0014 D5F80C4A 		ldr	r4, [r5, #2572]
  67 0018 24B1     		cbz	r4, .L7
  68 001a 0023     		movs	r3, #0
  69 001c 2268     		ldr	r2, [r4]
  70 001e C5F80C2A 		str	r2, [r5, #2572]
  71 0022 2360     		str	r3, [r4]
  72              	.L7:
  73 0024 6846     		mov	r0, sp
  74 0026 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
  75 002a 2046     		mov	r0, r4
  76 002c 03B0     		add	sp, sp, #12
  77              		@ sp needed
  78 002e 30BD     		pop	{r4, r5, pc}
  79              		.size	_ZN11MassStorage19AllocateWriteBufferEv, .-_ZN11MassStorage19AllocateWriteBufferEv
  80              		.section	.text._ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer,"ax",%progbits
  81              		.align	1
  82              		.p2align 2,,3
  83              		.global	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu softvfp
  88              		.type	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer, %function
  89              	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer:
  90              		@ args = 0, pretend = 0, frame = 8
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92 0000 30B5     		push	{r4, r5, lr}
  93 0002 0446     		mov	r4, r0
  94 0004 0D46     		mov	r5, r1
  95 0006 83B0     		sub	sp, sp, #12
  96 0008 00F59061 		add	r1, r0, #1152
  97 000c 4FF0FF32 		mov	r2, #-1
  98 0010 6846     		mov	r0, sp
  99 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 100 0016 D4F80C3A 		ldr	r3, [r4, #2572]
 101 001a 6846     		mov	r0, sp
 102 001c 2B60     		str	r3, [r5]
 103 001e C4F80C5A 		str	r5, [r4, #2572]
 104 0022 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 105 0026 03B0     		add	sp, sp, #12
 106              		@ sp needed
 107 0028 30BD     		pop	{r4, r5, pc}
 108              		.size	_ZN11MassStorage18ReleaseWriteBufferEP15FileWriteBuffer, .-_ZN11MassStorage18ReleaseWriteBuf
 109 002a 00BF     		.section	.text._ZN11MassStorage8OpenFileEPKcS1_8OpenMode,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 113              		.syntax unified
 114              		.thumb
ARM GAS  /tmp/ccseNMKE.s 			page 3


 115              		.thumb_func
 116              		.fpu softvfp
 117              		.type	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode, %function
 118              	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode:
 119              		@ args = 0, pretend = 0, frame = 8
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 122 0002 0446     		mov	r4, r0
 123 0004 83B0     		sub	sp, sp, #12
 124 0006 0D46     		mov	r5, r1
 125 0008 1646     		mov	r6, r2
 126 000a 00F59061 		add	r1, r0, #1152
 127 000e 4FF0FF32 		mov	r2, #-1
 128 0012 6846     		mov	r0, sp
 129 0014 1F46     		mov	r7, r3
 130 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 131 001a 2246     		mov	r2, r4
 132 001c 0023     		movs	r3, #0
 133              	.L18:
 134 001e 92F8411A 		ldrb	r1, [r2, #2625]	@ zero_extendqisi2
 135 0022 3832     		adds	r2, r2, #56
 136 0024 81B1     		cbz	r1, .L22
 137 0026 0133     		adds	r3, r3, #1
 138 0028 0A2B     		cmp	r3, #10
 139 002a F8D1     		bne	.L18
 140 002c 0024     		movs	r4, #0
 141 002e 6846     		mov	r0, sp
 142 0030 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 143 0034 0F4B     		ldr	r3, .L23
 144 0036 104A     		ldr	r2, .L23+4
 145 0038 1868     		ldr	r0, [r3]	@ unaligned
 146 003a 40F2B511 		movw	r1, #437
 147 003e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 148 0042 2046     		mov	r0, r4
 149 0044 03B0     		add	sp, sp, #12
 150              		@ sp needed
 151 0046 F0BD     		pop	{r4, r5, r6, r7, pc}
 152              	.L22:
 153 0048 C3EBC303 		rsb	r3, r3, r3, lsl #3
 154 004c 04EBC303 		add	r3, r4, r3, lsl #3
 155 0050 03F52164 		add	r4, r3, #2576
 156 0054 3246     		mov	r2, r6
 157 0056 3B46     		mov	r3, r7
 158 0058 2946     		mov	r1, r5
 159 005a 2046     		mov	r0, r4
 160 005c FFF7FEFF 		bl	_ZN9FileStore4OpenEPKcS1_8OpenMode
 161 0060 0028     		cmp	r0, #0
 162 0062 08BF     		it	eq
 163 0064 0024     		moveq	r4, #0
 164 0066 6846     		mov	r0, sp
 165 0068 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 166 006c 2046     		mov	r0, r4
 167 006e 03B0     		add	sp, sp, #12
 168              		@ sp needed
 169 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 170              	.L24:
 171 0072 00BF     		.align	2
ARM GAS  /tmp/ccseNMKE.s 			page 4


 172              	.L23:
 173 0074 00000000 		.word	reprap
 174 0078 00000000 		.word	.LC0
 175              		.size	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode, .-_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 176              		.section	.text._ZN11MassStorage13CloseAllFilesEv,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	_ZN11MassStorage13CloseAllFilesEv
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu softvfp
 184              		.type	_ZN11MassStorage13CloseAllFilesEv, %function
 185              	_ZN11MassStorage13CloseAllFilesEv:
 186              		@ args = 0, pretend = 0, frame = 8
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188 0000 30B5     		push	{r4, r5, lr}
 189 0002 83B0     		sub	sp, sp, #12
 190 0004 0446     		mov	r4, r0
 191 0006 00F59061 		add	r1, r0, #1152
 192 000a 4FF0FF32 		mov	r2, #-1
 193 000e 6846     		mov	r0, sp
 194 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 195 0014 04F54465 		add	r5, r4, #3136
 196 0018 04F52164 		add	r4, r4, #2576
 197              	.L28:
 198 001c 94F83130 		ldrb	r3, [r4, #49]	@ zero_extendqisi2
 199 0020 33B1     		cbz	r3, .L29
 200              	.L32:
 201 0022 2046     		mov	r0, r4
 202 0024 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 203 0028 94F83130 		ldrb	r3, [r4, #49]	@ zero_extendqisi2
 204 002c 002B     		cmp	r3, #0
 205 002e F8D1     		bne	.L32
 206              	.L29:
 207 0030 3834     		adds	r4, r4, #56
 208 0032 A542     		cmp	r5, r4
 209 0034 F2D1     		bne	.L28
 210 0036 6846     		mov	r0, sp
 211 0038 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 212 003c 03B0     		add	sp, sp, #12
 213              		@ sp needed
 214 003e 30BD     		pop	{r4, r5, pc}
 215              		.size	_ZN11MassStorage13CloseAllFilesEv, .-_ZN11MassStorage13CloseAllFilesEv
 216              		.section	.text._ZN11MassStorage11CombineNameERK9StringRefPKcS4_,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu softvfp
 224              		.type	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_, %function
 225              	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
ARM GAS  /tmp/ccseNMKE.s 			page 5


 229 0004 4FF00008 		mov	r8, #0
 230 0008 0368     		ldr	r3, [r0]
 231 000a 0546     		mov	r5, r0
 232 000c 1646     		mov	r6, r2
 233 000e 83F80080 		strb	r8, [r3]
 234 0012 0F46     		mov	r7, r1
 235 0014 0029     		cmp	r1, #0
 236 0016 65D0     		beq	.L70
 237 0018 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 238 001a 2F2C     		cmp	r4, #47
 239 001c 51D0     		beq	.L51
 240 001e 1046     		mov	r0, r2
 241 0020 FFF7FEFF 		bl	strlen
 242 0024 0128     		cmp	r0, #1
 243 0026 06D9     		bls	.L42
 244 0028 A4F13003 		sub	r3, r4, #48
 245 002c 092B     		cmp	r3, #9
 246 002e 02D8     		bhi	.L42
 247 0030 7378     		ldrb	r3, [r6, #1]	@ zero_extendqisi2
 248 0032 3A2B     		cmp	r3, #58
 249 0034 47D0     		beq	.L71
 250              	.L42:
 251 0036 7A1E     		subs	r2, r7, #1
 252 0038 0023     		movs	r3, #0
 253 003a 08E0     		b	.L41
 254              	.L73:
 255 003c 0A28     		cmp	r0, #10
 256 003e 0AD0     		beq	.L43
 257 0040 2C68     		ldr	r4, [r5]
 258 0042 E054     		strb	r0, [r4, r3]
 259 0044 6868     		ldr	r0, [r5, #4]
 260 0046 0133     		adds	r3, r3, #1
 261 0048 0138     		subs	r0, r0, #1
 262 004a 8342     		cmp	r3, r0
 263 004c 3DD2     		bcs	.L72
 264              	.L41:
 265 004e 12F8010F 		ldrb	r0, [r2, #1]!	@ zero_extendqisi2
 266 0052 0028     		cmp	r0, #0
 267 0054 F2D1     		bne	.L73
 268              	.L43:
 269 0056 2BB3     		cbz	r3, .L69
 270 0058 1F44     		add	r7, r7, r3
 271 005a 17F8012C 		ldrb	r2, [r7, #-1]	@ zero_extendqisi2
 272 005e 2F2A     		cmp	r2, #47
 273 0060 20D0     		beq	.L69
 274 0062 2F21     		movs	r1, #47
 275 0064 2A68     		ldr	r2, [r5]
 276 0066 D154     		strb	r1, [r2, r3]
 277 0068 3478     		ldrb	r4, [r6]	@ zero_extendqisi2
 278 006a 0133     		adds	r3, r3, #1
 279              	.L38:
 280 006c ACB1     		cbz	r4, .L46
 281 006e 0A2C     		cmp	r4, #10
 282 0070 13D0     		beq	.L46
 283              	.L39:
 284 0072 6A68     		ldr	r2, [r5, #4]
 285 0074 013A     		subs	r2, r2, #1
ARM GAS  /tmp/ccseNMKE.s 			page 6


 286 0076 9A42     		cmp	r2, r3
 287 0078 88BF     		it	hi
 288 007a 3246     		movhi	r2, r6
 289 007c 06D8     		bhi	.L49
 290 007e 13E0     		b	.L48
 291              	.L50:
 292 0080 0A2C     		cmp	r4, #10
 293 0082 0AD0     		beq	.L46
 294 0084 6968     		ldr	r1, [r5, #4]
 295 0086 0139     		subs	r1, r1, #1
 296 0088 9942     		cmp	r1, r3
 297 008a 0DD9     		bls	.L48
 298              	.L49:
 299 008c 2968     		ldr	r1, [r5]
 300 008e CC54     		strb	r4, [r1, r3]
 301 0090 12F8014F 		ldrb	r4, [r2, #1]!	@ zero_extendqisi2
 302 0094 0133     		adds	r3, r3, #1
 303 0096 002C     		cmp	r4, #0
 304 0098 F2D1     		bne	.L50
 305              	.L46:
 306 009a 0021     		movs	r1, #0
 307 009c 2A68     		ldr	r2, [r5]
 308 009e D154     		strb	r1, [r2, r3]
 309 00a0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 310              	.L69:
 311 00a4 3478     		ldrb	r4, [r6]	@ zero_extendqisi2
 312 00a6 E1E7     		b	.L38
 313              	.L48:
 314 00a8 104B     		ldr	r3, .L74
 315 00aa 40F2B511 		movw	r1, #437
 316 00ae 1868     		ldr	r0, [r3]
 317 00b0 0F4A     		ldr	r2, .L74+4
 318 00b2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 319 00b6 2846     		mov	r0, r5
 320 00b8 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 321 00bc 0D49     		ldr	r1, .L74+8
 322 00be FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 323              	.L51:
 324 00c2 4346     		mov	r3, r8
 325 00c4 D5E7     		b	.L39
 326              	.L71:
 327 00c6 4346     		mov	r3, r8
 328 00c8 D0E7     		b	.L38
 329              	.L72:
 330 00ca 084B     		ldr	r3, .L74
 331 00cc 40F2B511 		movw	r1, #437
 332 00d0 1868     		ldr	r0, [r3]
 333 00d2 094A     		ldr	r2, .L74+12
 334 00d4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 335 00d8 2846     		mov	r0, r5
 336 00da BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 337 00de 0549     		ldr	r1, .L74+8
 338 00e0 FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 339              	.L70:
 340 00e4 0B46     		mov	r3, r1
 341 00e6 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 342 00e8 C0E7     		b	.L38
ARM GAS  /tmp/ccseNMKE.s 			page 7


 343              	.L75:
 344 00ea 00BF     		.align	2
 345              	.L74:
 346 00ec 00000000 		.word	reprap
 347 00f0 28000000 		.word	.LC3
 348 00f4 20000000 		.word	.LC2
 349 00f8 00000000 		.word	.LC1
 350              		.size	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_, .-_ZN11MassStorage11CombineNameERK9StringR
 351              		.section	.text._ZN11MassStorage15AbandonFindNextEv,"ax",%progbits
 352              		.align	1
 353              		.p2align 2,,3
 354              		.global	_ZN11MassStorage15AbandonFindNextEv
 355              		.syntax unified
 356              		.thumb
 357              		.thumb_func
 358              		.fpu softvfp
 359              		.type	_ZN11MassStorage15AbandonFindNextEv, %function
 360              	_ZN11MassStorage15AbandonFindNextEv:
 361              		@ args = 0, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363 0000 38B5     		push	{r3, r4, r5, lr}
 364 0002 00F28444 		addw	r4, r0, #1156
 365 0006 2046     		mov	r0, r4
 366 0008 FFF7FEFF 		bl	_ZNK5Mutex9GetHolderEv
 367 000c 0546     		mov	r5, r0
 368 000e FFF7FEFF 		bl	_ZN9RTOSIface14GetCurrentTaskEv
 369 0012 8542     		cmp	r5, r0
 370 0014 00D0     		beq	.L79
 371 0016 38BD     		pop	{r3, r4, r5, pc}
 372              	.L79:
 373 0018 2046     		mov	r0, r4
 374 001a BDE83840 		pop	{r3, r4, r5, lr}
 375 001e FFF7FEBF 		b	_ZNK5Mutex7ReleaseEv
 376              		.size	_ZN11MassStorage15AbandonFindNextEv, .-_ZN11MassStorage15AbandonFindNextEv
 377 0022 00BF     		.section	.text._ZN11MassStorage12GetMonthNameEh,"ax",%progbits
 378              		.align	1
 379              		.p2align 2,,3
 380              		.global	_ZN11MassStorage12GetMonthNameEh
 381              		.syntax unified
 382              		.thumb
 383              		.thumb_func
 384              		.fpu softvfp
 385              		.type	_ZN11MassStorage12GetMonthNameEh, %function
 386              	_ZN11MassStorage12GetMonthNameEh:
 387              		@ args = 0, pretend = 0, frame = 0
 388              		@ frame_needed = 0, uses_anonymous_args = 0
 389              		@ link register save eliminated.
 390 0000 0C29     		cmp	r1, #12
 391 0002 DABF     		itte	le
 392 0004 024B     		ldrle	r3, .L83
 393 0006 53F82100 		ldrle	r0, [r3, r1, lsl #2]
 394 000a 0248     		ldrgt	r0, .L83+4
 395 000c 7047     		bx	lr
 396              	.L84:
 397 000e 00BF     		.align	2
 398              	.L83:
 399 0010 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/ccseNMKE.s 			page 8


 400 0014 00000000 		.word	.LC4
 401              		.size	_ZN11MassStorage12GetMonthNameEh, .-_ZN11MassStorage12GetMonthNameEh
 402              		.section	.text._ZN11MassStorage6DeleteEPKcS1_b,"ax",%progbits
 403              		.align	1
 404              		.p2align 2,,3
 405              		.global	_ZN11MassStorage6DeleteEPKcS1_b
 406              		.syntax unified
 407              		.thumb
 408              		.thumb_func
 409              		.fpu softvfp
 410              		.type	_ZN11MassStorage6DeleteEPKcS1_b, %function
 411              	_ZN11MassStorage6DeleteEPKcS1_b:
 412              		@ args = 0, pretend = 0, frame = 152
 413              		@ frame_needed = 0, uses_anonymous_args = 0
 414 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 415 0002 0027     		movs	r7, #0
 416 0004 0446     		mov	r4, r0
 417 0006 6525     		movs	r5, #101
 418 0008 A7B0     		sub	sp, sp, #156
 419 000a 26AE     		add	r6, sp, #152
 420 000c 06F8687D 		strb	r7, [r6, #-104]!
 421 0010 02A8     		add	r0, sp, #8
 422 0012 1F46     		mov	r7, r3
 423 0014 0296     		str	r6, [sp, #8]
 424 0016 0395     		str	r5, [sp, #12]
 425 0018 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 426 001c 04F59061 		add	r1, r4, #1152
 427 0020 4FF0FF32 		mov	r2, #-1
 428 0024 6846     		mov	r0, sp
 429 0026 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 430 002a 3146     		mov	r1, r6
 431 002c 02A8     		add	r0, sp, #8
 432 002e 0122     		movs	r2, #1
 433 0030 FFF7FEFF 		bl	f_open
 434 0034 30BB     		cbnz	r0, .L86
 435 0036 0299     		ldr	r1, [sp, #8]
 436 0038 0998     		ldr	r0, [sp, #36]
 437 003a 0A9A     		ldr	r2, [sp, #40]
 438 003c 04F54465 		add	r5, r4, #3136
 439 0040 04F52163 		add	r3, r4, #2576
 440 0044 02E0     		b	.L89
 441              	.L87:
 442 0046 3833     		adds	r3, r3, #56
 443 0048 9D42     		cmp	r5, r3
 444 004a 18D0     		beq	.L94
 445              	.L89:
 446 004c 1C68     		ldr	r4, [r3]
 447 004e A142     		cmp	r1, r4
 448 0050 F9D1     		bne	.L87
 449 0052 DC69     		ldr	r4, [r3, #28]
 450 0054 8442     		cmp	r4, r0
 451 0056 F6D1     		bne	.L87
 452 0058 1C6A     		ldr	r4, [r3, #32]
 453 005a 9442     		cmp	r4, r2
 454 005c F3D1     		bne	.L87
 455 005e 164A     		ldr	r2, .L96
 456 0060 3346     		mov	r3, r6
ARM GAS  /tmp/ccseNMKE.s 			page 9


 457 0062 1068     		ldr	r0, [r2]
 458 0064 40F2B511 		movw	r1, #437
 459 0068 144A     		ldr	r2, .L96+4
 460 006a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 461 006e 02A8     		add	r0, sp, #8
 462 0070 FFF7FEFF 		bl	f_close
 463 0074 6846     		mov	r0, sp
 464 0076 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 465 007a 0020     		movs	r0, #0
 466 007c 0CE0     		b	.L88
 467              	.L94:
 468 007e 02A8     		add	r0, sp, #8
 469 0080 FFF7FEFF 		bl	f_close
 470              	.L86:
 471 0084 3046     		mov	r0, r6
 472 0086 FFF7FEFF 		bl	f_unlink
 473 008a 0446     		mov	r4, r0
 474 008c 6846     		mov	r0, sp
 475 008e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 476 0092 74B1     		cbz	r4, .L90
 477 0094 17B1     		cbz	r7, .L95
 478 0096 0020     		movs	r0, #0
 479              	.L88:
 480 0098 27B0     		add	sp, sp, #156
 481              		@ sp needed
 482 009a F0BD     		pop	{r4, r5, r6, r7, pc}
 483              	.L95:
 484 009c 064A     		ldr	r2, .L96
 485 009e 3346     		mov	r3, r6
 486 00a0 1068     		ldr	r0, [r2]
 487 00a2 40F2B511 		movw	r1, #437
 488 00a6 064A     		ldr	r2, .L96+8
 489 00a8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 490 00ac 3846     		mov	r0, r7
 491 00ae 27B0     		add	sp, sp, #156
 492              		@ sp needed
 493 00b0 F0BD     		pop	{r4, r5, r6, r7, pc}
 494              	.L90:
 495 00b2 0120     		movs	r0, #1
 496 00b4 27B0     		add	sp, sp, #156
 497              		@ sp needed
 498 00b6 F0BD     		pop	{r4, r5, r6, r7, pc}
 499              	.L97:
 500              		.align	2
 501              	.L96:
 502 00b8 00000000 		.word	reprap
 503 00bc 00000000 		.word	.LC5
 504 00c0 2C000000 		.word	.LC6
 505              		.size	_ZN11MassStorage6DeleteEPKcS1_b, .-_ZN11MassStorage6DeleteEPKcS1_b
 506              		.section	.text._ZN11MassStorage13MakeDirectoryEPKcS1_,"ax",%progbits
 507              		.align	1
 508              		.p2align 2,,3
 509              		.global	_ZN11MassStorage13MakeDirectoryEPKcS1_
 510              		.syntax unified
 511              		.thumb
 512              		.thumb_func
 513              		.fpu softvfp
ARM GAS  /tmp/ccseNMKE.s 			page 10


 514              		.type	_ZN11MassStorage13MakeDirectoryEPKcS1_, %function
 515              	_ZN11MassStorage13MakeDirectoryEPKcS1_:
 516              		@ args = 0, pretend = 0, frame = 112
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518 0000 30B5     		push	{r4, r5, lr}
 519 0002 0025     		movs	r5, #0
 520 0004 6523     		movs	r3, #101
 521 0006 9DB0     		sub	sp, sp, #116
 522 0008 1CAC     		add	r4, sp, #112
 523 000a 04F8685D 		strb	r5, [r4, #-104]!
 524 000e 6846     		mov	r0, sp
 525 0010 0094     		str	r4, [sp]
 526 0012 0193     		str	r3, [sp, #4]
 527 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 528 0018 2046     		mov	r0, r4
 529 001a FFF7FEFF 		bl	f_mkdir
 530 001e 10B9     		cbnz	r0, .L102
 531 0020 0120     		movs	r0, #1
 532 0022 1DB0     		add	sp, sp, #116
 533              		@ sp needed
 534 0024 30BD     		pop	{r4, r5, pc}
 535              	.L102:
 536 0026 054A     		ldr	r2, .L103
 537 0028 2346     		mov	r3, r4
 538 002a 1068     		ldr	r0, [r2]
 539 002c 40F2B511 		movw	r1, #437
 540 0030 034A     		ldr	r2, .L103+4
 541 0032 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 542 0036 2846     		mov	r0, r5
 543 0038 1DB0     		add	sp, sp, #116
 544              		@ sp needed
 545 003a 30BD     		pop	{r4, r5, pc}
 546              	.L104:
 547              		.align	2
 548              	.L103:
 549 003c 00000000 		.word	reprap
 550 0040 00000000 		.word	.LC7
 551              		.size	_ZN11MassStorage13MakeDirectoryEPKcS1_, .-_ZN11MassStorage13MakeDirectoryEPKcS1_
 552              		.section	.text._ZN11MassStorage13MakeDirectoryEPKc,"ax",%progbits
 553              		.align	1
 554              		.p2align 2,,3
 555              		.global	_ZN11MassStorage13MakeDirectoryEPKc
 556              		.syntax unified
 557              		.thumb
 558              		.thumb_func
 559              		.fpu softvfp
 560              		.type	_ZN11MassStorage13MakeDirectoryEPKc, %function
 561              	_ZN11MassStorage13MakeDirectoryEPKc:
 562              		@ args = 0, pretend = 0, frame = 0
 563              		@ frame_needed = 0, uses_anonymous_args = 0
 564 0000 10B5     		push	{r4, lr}
 565 0002 0846     		mov	r0, r1
 566 0004 0C46     		mov	r4, r1
 567 0006 FFF7FEFF 		bl	f_mkdir
 568 000a 08B9     		cbnz	r0, .L109
 569 000c 0120     		movs	r0, #1
 570 000e 10BD     		pop	{r4, pc}
ARM GAS  /tmp/ccseNMKE.s 			page 11


 571              	.L109:
 572 0010 044A     		ldr	r2, .L110
 573 0012 2346     		mov	r3, r4
 574 0014 1068     		ldr	r0, [r2]
 575 0016 40F2B511 		movw	r1, #437
 576 001a 034A     		ldr	r2, .L110+4
 577 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 578 0020 0020     		movs	r0, #0
 579 0022 10BD     		pop	{r4, pc}
 580              	.L111:
 581              		.align	2
 582              	.L110:
 583 0024 00000000 		.word	reprap
 584 0028 00000000 		.word	.LC7
 585              		.size	_ZN11MassStorage13MakeDirectoryEPKc, .-_ZN11MassStorage13MakeDirectoryEPKc
 586              		.section	.text._ZN11MassStorage6RenameEPKcS1_,"ax",%progbits
 587              		.align	1
 588              		.p2align 2,,3
 589              		.global	_ZN11MassStorage6RenameEPKcS1_
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu softvfp
 594              		.type	_ZN11MassStorage6RenameEPKcS1_, %function
 595              	_ZN11MassStorage6RenameEPKcS1_:
 596              		@ args = 0, pretend = 0, frame = 0
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598 0000 30B5     		push	{r4, r5, lr}
 599 0002 1446     		mov	r4, r2
 600 0004 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 601 0006 83B0     		sub	sp, sp, #12
 602 0008 303A     		subs	r2, r2, #48
 603 000a 092A     		cmp	r2, #9
 604 000c 0D46     		mov	r5, r1
 605 000e 03D8     		bhi	.L113
 606 0010 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 607 0012 3A2B     		cmp	r3, #58
 608 0014 08BF     		it	eq
 609 0016 0234     		addeq	r4, r4, #2
 610              	.L113:
 611 0018 2146     		mov	r1, r4
 612 001a 2846     		mov	r0, r5
 613 001c FFF7FEFF 		bl	f_rename
 614 0020 10B9     		cbnz	r0, .L117
 615 0022 0120     		movs	r0, #1
 616 0024 03B0     		add	sp, sp, #12
 617              		@ sp needed
 618 0026 30BD     		pop	{r4, r5, pc}
 619              	.L117:
 620 0028 054B     		ldr	r3, .L118
 621 002a 0094     		str	r4, [sp]
 622 002c 1868     		ldr	r0, [r3]
 623 002e 054A     		ldr	r2, .L118+4
 624 0030 2B46     		mov	r3, r5
 625 0032 40F2B511 		movw	r1, #437
 626 0036 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 627 003a 0020     		movs	r0, #0
ARM GAS  /tmp/ccseNMKE.s 			page 12


 628 003c 03B0     		add	sp, sp, #12
 629              		@ sp needed
 630 003e 30BD     		pop	{r4, r5, pc}
 631              	.L119:
 632              		.align	2
 633              	.L118:
 634 0040 00000000 		.word	reprap
 635 0044 00000000 		.word	.LC8
 636              		.size	_ZN11MassStorage6RenameEPKcS1_, .-_ZN11MassStorage6RenameEPKcS1_
 637              		.section	.text._ZNK11MassStorage10FileExistsEPKc,"ax",%progbits
 638              		.align	1
 639              		.p2align 2,,3
 640              		.global	_ZNK11MassStorage10FileExistsEPKc
 641              		.syntax unified
 642              		.thumb
 643              		.thumb_func
 644              		.fpu softvfp
 645              		.type	_ZNK11MassStorage10FileExistsEPKc, %function
 646              	_ZNK11MassStorage10FileExistsEPKc:
 647              		@ args = 0, pretend = 0, frame = 32
 648              		@ frame_needed = 0, uses_anonymous_args = 0
 649 0000 0023     		movs	r3, #0
 650 0002 00B5     		push	{lr}
 651 0004 89B0     		sub	sp, sp, #36
 652 0006 0846     		mov	r0, r1
 653 0008 6946     		mov	r1, sp
 654 000a 0693     		str	r3, [sp, #24]
 655 000c FFF7FEFF 		bl	f_stat
 656 0010 B0FA80F0 		clz	r0, r0
 657 0014 4009     		lsrs	r0, r0, #5
 658 0016 09B0     		add	sp, sp, #36
 659              		@ sp needed
 660 0018 5DF804FB 		ldr	pc, [sp], #4
 661              		.size	_ZNK11MassStorage10FileExistsEPKc, .-_ZNK11MassStorage10FileExistsEPKc
 662              		.section	.text._ZNK11MassStorage10FileExistsEPKcS1_,"ax",%progbits
 663              		.align	1
 664              		.p2align 2,,3
 665              		.global	_ZNK11MassStorage10FileExistsEPKcS1_
 666              		.syntax unified
 667              		.thumb
 668              		.thumb_func
 669              		.fpu softvfp
 670              		.type	_ZNK11MassStorage10FileExistsEPKcS1_, %function
 671              	_ZNK11MassStorage10FileExistsEPKcS1_:
 672              		@ args = 0, pretend = 0, frame = 136
 673              		@ frame_needed = 0, uses_anonymous_args = 0
 674 0000 30B5     		push	{r4, r5, lr}
 675 0002 0025     		movs	r5, #0
 676 0004 6523     		movs	r3, #101
 677 0006 A3B0     		sub	sp, sp, #140
 678 0008 22AC     		add	r4, sp, #136
 679 000a 04F8685D 		strb	r5, [r4, #-104]!
 680 000e 6846     		mov	r0, sp
 681 0010 0193     		str	r3, [sp, #4]
 682 0012 0094     		str	r4, [sp]
 683 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 684 0018 2046     		mov	r0, r4
ARM GAS  /tmp/ccseNMKE.s 			page 13


 685 001a 6946     		mov	r1, sp
 686 001c 0695     		str	r5, [sp, #24]
 687 001e FFF7FEFF 		bl	f_stat
 688 0022 B0FA80F0 		clz	r0, r0
 689 0026 4009     		lsrs	r0, r0, #5
 690 0028 23B0     		add	sp, sp, #140
 691              		@ sp needed
 692 002a 30BD     		pop	{r4, r5, pc}
 693              		.size	_ZNK11MassStorage10FileExistsEPKcS1_, .-_ZNK11MassStorage10FileExistsEPKcS1_
 694              		.section	.text._ZNK11MassStorage15DirectoryExistsERK9StringRef,"ax",%progbits
 695              		.align	1
 696              		.p2align 2,,3
 697              		.global	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 698              		.syntax unified
 699              		.thumb
 700              		.thumb_func
 701              		.fpu softvfp
 702              		.type	_ZNK11MassStorage15DirectoryExistsERK9StringRef, %function
 703              	_ZNK11MassStorage15DirectoryExistsERK9StringRef:
 704              		@ args = 0, pretend = 0, frame = 40
 705              		@ frame_needed = 0, uses_anonymous_args = 0
 706 0000 10B5     		push	{r4, lr}
 707 0002 0846     		mov	r0, r1
 708 0004 8AB0     		sub	sp, sp, #40
 709 0006 0C46     		mov	r4, r1
 710 0008 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 711 000c 2168     		ldr	r1, [r4]
 712 000e 48B1     		cbz	r0, .L126
 713 0010 0138     		subs	r0, r0, #1
 714 0012 0A5C     		ldrb	r2, [r1, r0]	@ zero_extendqisi2
 715 0014 0844     		add	r0, r0, r1
 716 0016 2F2A     		cmp	r2, #47
 717 0018 01D0     		beq	.L127
 718 001a 5C2A     		cmp	r2, #92
 719 001c 02D1     		bne	.L126
 720              	.L127:
 721 001e 0023     		movs	r3, #0
 722 0020 0370     		strb	r3, [r0]
 723 0022 2168     		ldr	r1, [r4]
 724              	.L126:
 725 0024 0022     		movs	r2, #0
 726 0026 01A8     		add	r0, sp, #4
 727 0028 0892     		str	r2, [sp, #32]
 728 002a FFF7FEFF 		bl	f_opendir
 729 002e B0FA80F0 		clz	r0, r0
 730 0032 4009     		lsrs	r0, r0, #5
 731 0034 0AB0     		add	sp, sp, #40
 732              		@ sp needed
 733 0036 10BD     		pop	{r4, pc}
 734              		.size	_ZNK11MassStorage15DirectoryExistsERK9StringRef, .-_ZNK11MassStorage15DirectoryExistsERK9Str
 735              		.section	.text._ZNK11MassStorage15DirectoryExistsEPKc,"ax",%progbits
 736              		.align	1
 737              		.p2align 2,,3
 738              		.global	_ZNK11MassStorage15DirectoryExistsEPKc
 739              		.syntax unified
 740              		.thumb
 741              		.thumb_func
ARM GAS  /tmp/ccseNMKE.s 			page 14


 742              		.fpu softvfp
 743              		.type	_ZNK11MassStorage15DirectoryExistsEPKc, %function
 744              	_ZNK11MassStorage15DirectoryExistsEPKc:
 745              		@ args = 0, pretend = 0, frame = 112
 746              		@ frame_needed = 0, uses_anonymous_args = 0
 747 0000 0023     		movs	r3, #0
 748 0002 70B5     		push	{r4, r5, r6, lr}
 749 0004 0646     		mov	r6, r0
 750 0006 6525     		movs	r5, #101
 751 0008 9CB0     		sub	sp, sp, #112
 752 000a 1CAC     		add	r4, sp, #112
 753 000c 04F8683D 		strb	r3, [r4, #-104]!
 754 0010 6846     		mov	r0, sp
 755 0012 8DE83000 		stm	sp, {r4, r5}
 756 0016 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 757 001a 6946     		mov	r1, sp
 758 001c 3046     		mov	r0, r6
 759 001e 8DE83000 		stm	sp, {r4, r5}
 760 0022 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 761 0026 1CB0     		add	sp, sp, #112
 762              		@ sp needed
 763 0028 70BD     		pop	{r4, r5, r6, pc}
 764              		.size	_ZNK11MassStorage15DirectoryExistsEPKc, .-_ZNK11MassStorage15DirectoryExistsEPKc
 765 002a 00BF     		.section	.text._ZN11MassStorage15DirectoryExistsEPKcS1_,"ax",%progbits
 766              		.align	1
 767              		.p2align 2,,3
 768              		.global	_ZN11MassStorage15DirectoryExistsEPKcS1_
 769              		.syntax unified
 770              		.thumb
 771              		.thumb_func
 772              		.fpu softvfp
 773              		.type	_ZN11MassStorage15DirectoryExistsEPKcS1_, %function
 774              	_ZN11MassStorage15DirectoryExistsEPKcS1_:
 775              		@ args = 0, pretend = 0, frame = 112
 776              		@ frame_needed = 0, uses_anonymous_args = 0
 777 0000 0023     		movs	r3, #0
 778 0002 70B5     		push	{r4, r5, r6, lr}
 779 0004 0646     		mov	r6, r0
 780 0006 6525     		movs	r5, #101
 781 0008 9CB0     		sub	sp, sp, #112
 782 000a 1CAC     		add	r4, sp, #112
 783 000c 04F8683D 		strb	r3, [r4, #-104]!
 784 0010 6846     		mov	r0, sp
 785 0012 8DE83000 		stm	sp, {r4, r5}
 786 0016 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 787 001a 6946     		mov	r1, sp
 788 001c 3046     		mov	r0, r6
 789 001e 8DE83000 		stm	sp, {r4, r5}
 790 0022 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 791 0026 1CB0     		add	sp, sp, #112
 792              		@ sp needed
 793 0028 70BD     		pop	{r4, r5, r6, pc}
 794              		.size	_ZN11MassStorage15DirectoryExistsEPKcS1_, .-_ZN11MassStorage15DirectoryExistsEPKcS1_
 795 002a 00BF     		.section	.text._ZN11MassStorage19SetLastModifiedTimeEPKcS1_l,"ax",%progbits
 796              		.align	1
 797              		.p2align 2,,3
 798              		.global	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l
ARM GAS  /tmp/ccseNMKE.s 			page 15


 799              		.syntax unified
 800              		.thumb
 801              		.thumb_func
 802              		.fpu softvfp
 803              		.type	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l, %function
 804              	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l:
 805              		@ args = 0, pretend = 0, frame = 144
 806              		@ frame_needed = 0, uses_anonymous_args = 0
 807 0000 0020     		movs	r0, #0
 808 0002 70B5     		push	{r4, r5, r6, lr}
 809 0004 6525     		movs	r5, #101
 810 0006 A4B0     		sub	sp, sp, #144
 811 0008 24AC     		add	r4, sp, #144
 812 000a 04F8680D 		strb	r0, [r4, #-104]!
 813 000e 02A8     		add	r0, sp, #8
 814 0010 0193     		str	r3, [sp, #4]
 815 0012 0395     		str	r5, [sp, #12]
 816 0014 0294     		str	r4, [sp, #8]
 817 0016 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 818 001a 01A8     		add	r0, sp, #4
 819 001c FFF7FEFF 		bl	gmtime
 820 0020 0369     		ldr	r3, [r0, #16]
 821 0022 4169     		ldr	r1, [r0, #20]
 822 0024 4268     		ldr	r2, [r0, #4]
 823 0026 8668     		ldr	r6, [r0, #8]
 824 0028 0133     		adds	r3, r3, #1
 825 002a C568     		ldr	r5, [r0, #12]
 826 002c 5039     		subs	r1, r1, #80
 827 002e 0068     		ldr	r0, [r0]
 828 0030 5B01     		lsls	r3, r3, #5
 829 0032 5201     		lsls	r2, r2, #5
 830 0034 43EA4123 		orr	r3, r3, r1, lsl #9
 831 0038 42EAC622 		orr	r2, r2, r6, lsl #11
 832 003c 2B43     		orrs	r3, r3, r5
 833 003e 42EA5002 		orr	r2, r2, r0, lsr #1
 834 0042 02A9     		add	r1, sp, #8
 835 0044 2046     		mov	r0, r4
 836 0046 ADF80C30 		strh	r3, [sp, #12]	@ movhi
 837 004a ADF80E20 		strh	r2, [sp, #14]	@ movhi
 838 004e FFF7FEFF 		bl	f_utime
 839 0052 0028     		cmp	r0, #0
 840 0054 0CBF     		ite	eq
 841 0056 0125     		moveq	r5, #1
 842 0058 0025     		movne	r5, #0
 843 005a 07D0     		beq	.L141
 844 005c 054A     		ldr	r2, .L146
 845 005e 2346     		mov	r3, r4
 846 0060 1068     		ldr	r0, [r2]
 847 0062 40F2B511 		movw	r1, #437
 848 0066 044A     		ldr	r2, .L146+4
 849 0068 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 850              	.L141:
 851 006c 2846     		mov	r0, r5
 852 006e 24B0     		add	sp, sp, #144
 853              		@ sp needed
 854 0070 70BD     		pop	{r4, r5, r6, pc}
 855              	.L147:
ARM GAS  /tmp/ccseNMKE.s 			page 16


 856 0072 00BF     		.align	2
 857              	.L146:
 858 0074 00000000 		.word	reprap
 859 0078 00000000 		.word	.LC9
 860              		.size	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l, .-_ZN11MassStorage19SetLastModifiedTimeEPKcS1
 861              		.section	.text._ZN11MassStorage17CheckDriveMountedEPKc,"ax",%progbits
 862              		.align	1
 863              		.p2align 2,,3
 864              		.global	_ZN11MassStorage17CheckDriveMountedEPKc
 865              		.syntax unified
 866              		.thumb
 867              		.thumb_func
 868              		.fpu softvfp
 869              		.type	_ZN11MassStorage17CheckDriveMountedEPKc, %function
 870              	_ZN11MassStorage17CheckDriveMountedEPKc:
 871              		@ args = 0, pretend = 0, frame = 0
 872              		@ frame_needed = 0, uses_anonymous_args = 0
 873 0000 38B5     		push	{r3, r4, r5, lr}
 874 0002 0546     		mov	r5, r0
 875 0004 0846     		mov	r0, r1
 876 0006 0C46     		mov	r4, r1
 877 0008 FFF7FEFF 		bl	strlen
 878 000c 0128     		cmp	r0, #1
 879 000e 02D9     		bls	.L153
 880 0010 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 881 0012 3A2B     		cmp	r3, #58
 882 0014 07D0     		beq	.L156
 883              	.L153:
 884 0016 0020     		movs	r0, #0
 885              	.L149:
 886 0018 00EBC000 		add	r0, r0, r0, lsl #3
 887 001c 05EB8010 		add	r0, r5, r0, lsl #6
 888 0020 90F83E02 		ldrb	r0, [r0, #574]	@ zero_extendqisi2
 889 0024 38BD     		pop	{r3, r4, r5, pc}
 890              	.L156:
 891 0026 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 892 0028 3038     		subs	r0, r0, #48
 893 002a 0928     		cmp	r0, #9
 894 002c F3D8     		bhi	.L153
 895 002e 0128     		cmp	r0, #1
 896 0030 F2D9     		bls	.L149
 897 0032 0020     		movs	r0, #0
 898 0034 38BD     		pop	{r3, r4, r5, pc}
 899              		.size	_ZN11MassStorage17CheckDriveMountedEPKc, .-_ZN11MassStorage17CheckDriveMountedEPKc
 900 0036 00BF     		.section	.text._ZNK11MassStorage11AnyFileOpenEPK5FATFS,"ax",%progbits
 901              		.align	1
 902              		.p2align 2,,3
 903              		.global	_ZNK11MassStorage11AnyFileOpenEPK5FATFS
 904              		.syntax unified
 905              		.thumb
 906              		.thumb_func
 907              		.fpu softvfp
 908              		.type	_ZNK11MassStorage11AnyFileOpenEPK5FATFS, %function
 909              	_ZNK11MassStorage11AnyFileOpenEPK5FATFS:
 910              		@ args = 0, pretend = 0, frame = 8
 911              		@ frame_needed = 0, uses_anonymous_args = 0
 912 0000 F0B5     		push	{r4, r5, r6, r7, lr}
ARM GAS  /tmp/ccseNMKE.s 			page 17


 913 0002 0446     		mov	r4, r0
 914 0004 83B0     		sub	sp, sp, #12
 915 0006 0E46     		mov	r6, r1
 916 0008 6846     		mov	r0, sp
 917 000a 04F59061 		add	r1, r4, #1152
 918 000e 4FF0FF32 		mov	r2, #-1
 919 0012 04F54467 		add	r7, r4, #3136
 920 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 921 001a 04F52164 		add	r4, r4, #2576
 922 001e 01E0     		b	.L159
 923              	.L162:
 924 0020 A742     		cmp	r7, r4
 925 0022 07D0     		beq	.L158
 926              	.L159:
 927 0024 2046     		mov	r0, r4
 928 0026 3146     		mov	r1, r6
 929 0028 FFF7FEFF 		bl	_ZNK9FileStore8IsOpenOnEPK5FATFS
 930 002c 3834     		adds	r4, r4, #56
 931 002e 0546     		mov	r5, r0
 932 0030 0028     		cmp	r0, #0
 933 0032 F5D0     		beq	.L162
 934              	.L158:
 935 0034 6846     		mov	r0, sp
 936 0036 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 937 003a 2846     		mov	r0, r5
 938 003c 03B0     		add	sp, sp, #12
 939              		@ sp needed
 940 003e F0BD     		pop	{r4, r5, r6, r7, pc}
 941              		.size	_ZNK11MassStorage11AnyFileOpenEPK5FATFS, .-_ZNK11MassStorage11AnyFileOpenEPK5FATFS
 942              		.section	.text._ZN11MassStorage15InvalidateFilesEPK5FATFSb,"ax",%progbits
 943              		.align	1
 944              		.p2align 2,,3
 945              		.global	_ZN11MassStorage15InvalidateFilesEPK5FATFSb
 946              		.syntax unified
 947              		.thumb
 948              		.thumb_func
 949              		.fpu softvfp
 950              		.type	_ZN11MassStorage15InvalidateFilesEPK5FATFSb, %function
 951              	_ZN11MassStorage15InvalidateFilesEPK5FATFSb:
 952              		@ args = 0, pretend = 0, frame = 8
 953              		@ frame_needed = 0, uses_anonymous_args = 0
 954 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 955 0004 82B0     		sub	sp, sp, #8
 956 0006 0446     		mov	r4, r0
 957 0008 8846     		mov	r8, r1
 958 000a 1746     		mov	r7, r2
 959 000c 00F59061 		add	r1, r0, #1152
 960 0010 4FF0FF32 		mov	r2, #-1
 961 0014 6846     		mov	r0, sp
 962 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 963 001a 0025     		movs	r5, #0
 964 001c 04F54466 		add	r6, r4, #3136
 965 0020 04F52164 		add	r4, r4, #2576
 966              	.L165:
 967 0024 2046     		mov	r0, r4
 968 0026 3A46     		mov	r2, r7
 969 0028 4146     		mov	r1, r8
ARM GAS  /tmp/ccseNMKE.s 			page 18


 970 002a FFF7FEFF 		bl	_ZN9FileStore10InvalidateEPK5FATFSb
 971 002e 3834     		adds	r4, r4, #56
 972 0030 00B1     		cbz	r0, .L164
 973 0032 0135     		adds	r5, r5, #1
 974              	.L164:
 975 0034 A642     		cmp	r6, r4
 976 0036 F5D1     		bne	.L165
 977 0038 6846     		mov	r0, sp
 978 003a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 979 003e 2846     		mov	r0, r5
 980 0040 02B0     		add	sp, sp, #8
 981              		@ sp needed
 982 0042 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 983              		.size	_ZN11MassStorage15InvalidateFilesEPK5FATFSb, .-_ZN11MassStorage15InvalidateFilesEPK5FATFSb
 984 0046 00BF     		.section	.text._ZN11MassStorage16ConvertTimeStampEtt,"ax",%progbits
 985              		.align	1
 986              		.p2align 2,,3
 987              		.global	_ZN11MassStorage16ConvertTimeStampEtt
 988              		.syntax unified
 989              		.thumb
 990              		.thumb_func
 991              		.fpu softvfp
 992              		.type	_ZN11MassStorage16ConvertTimeStampEtt, %function
 993              	_ZN11MassStorage16ConvertTimeStampEtt:
 994              		@ args = 0, pretend = 0, frame = 40
 995              		@ frame_needed = 0, uses_anonymous_args = 0
 996 0000 30B5     		push	{r4, r5, lr}
 997 0002 0446     		mov	r4, r0
 998 0004 8BB0     		sub	sp, sp, #44
 999 0006 2422     		movs	r2, #36
 1000 0008 0D46     		mov	r5, r1
 1001 000a 01A8     		add	r0, sp, #4
 1002 000c 0021     		movs	r1, #0
 1003 000e FFF7FEFF 		bl	memset
 1004 0012 6212     		asrs	r2, r4, #9
 1005 0014 5032     		adds	r2, r2, #80
 1006 0016 C4F34313 		ubfx	r3, r4, #5, #4
 1007 001a 0692     		str	r2, [sp, #24]
 1008 001c 03B1     		cbz	r3, .L172
 1009 001e 013B     		subs	r3, r3, #1
 1010              	.L172:
 1011 0020 04F01F04 		and	r4, r4, #31
 1012 0024 012C     		cmp	r4, #1
 1013 0026 38BF     		it	cc
 1014 0028 0124     		movcc	r4, #1
 1015 002a E90A     		lsrs	r1, r5, #11
 1016 002c C5F34512 		ubfx	r2, r5, #5, #6
 1017 0030 01A8     		add	r0, sp, #4
 1018 0032 05F01F05 		and	r5, r5, #31
 1019 0036 0494     		str	r4, [sp, #16]
 1020 0038 0593     		str	r3, [sp, #20]
 1021 003a 0391     		str	r1, [sp, #12]
 1022 003c 0292     		str	r2, [sp, #8]
 1023 003e 0195     		str	r5, [sp, #4]
 1024 0040 FFF7FEFF 		bl	mktime
 1025 0044 0BB0     		add	sp, sp, #44
 1026              		@ sp needed
ARM GAS  /tmp/ccseNMKE.s 			page 19


 1027 0046 30BD     		pop	{r4, r5, pc}
 1028              		.size	_ZN11MassStorage16ConvertTimeStampEtt, .-_ZN11MassStorage16ConvertTimeStampEtt
 1029              		.section	.text._ZN11MassStorage9FindFirstEPKcR8FileInfo,"ax",%progbits
 1030              		.align	1
 1031              		.p2align 2,,3
 1032              		.global	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 1033              		.syntax unified
 1034              		.thumb
 1035              		.thumb_func
 1036              		.fpu softvfp
 1037              		.type	_ZN11MassStorage9FindFirstEPKcR8FileInfo, %function
 1038              	_ZN11MassStorage9FindFirstEPKcR8FileInfo:
 1039              		@ args = 0, pretend = 0, frame = 136
 1040              		@ frame_needed = 0, uses_anonymous_args = 0
 1041 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1042 0004 0025     		movs	r5, #0
 1043 0006 6523     		movs	r3, #101
 1044 0008 A3B0     		sub	sp, sp, #140
 1045 000a 22AC     		add	r4, sp, #136
 1046 000c 04F8685D 		strb	r5, [r4, #-104]!
 1047 0010 8046     		mov	r8, r0
 1048 0012 6846     		mov	r0, sp
 1049 0014 1746     		mov	r7, r2
 1050 0016 0094     		str	r4, [sp]
 1051 0018 0193     		str	r3, [sp, #4]
 1052 001a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1053 001e 2046     		mov	r0, r4
 1054 0020 6421     		movs	r1, #100
 1055 0022 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1056 0026 40B1     		cbz	r0, .L177
 1057 0028 22AB     		add	r3, sp, #136
 1058 002a 451E     		subs	r5, r0, #1
 1059 002c 5E19     		adds	r6, r3, r5
 1060 002e 16F8683C 		ldrb	r3, [r6, #-104]	@ zero_extendqisi2
 1061 0032 2F2B     		cmp	r3, #47
 1062 0034 0ED0     		beq	.L178
 1063 0036 5C2B     		cmp	r3, #92
 1064 0038 0CD0     		beq	.L178
 1065              	.L177:
 1066 003a 08F28449 		addw	r9, r8, #1156
 1067 003e 4846     		mov	r0, r9
 1068 0040 42F21071 		movw	r1, #10000
 1069 0044 FFF7FEFF 		bl	_ZNK5Mutex4TakeEm
 1070 0048 0646     		mov	r6, r0
 1071 004a 68B9     		cbnz	r0, .L208
 1072              	.L189:
 1073 004c 3046     		mov	r0, r6
 1074 004e 23B0     		add	sp, sp, #140
 1075              		@ sp needed
 1076 0050 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1077              	.L178:
 1078 0054 6421     		movs	r1, #100
 1079 0056 2046     		mov	r0, r4
 1080 0058 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1081 005c 8542     		cmp	r5, r0
 1082 005e ECD2     		bcs	.L177
 1083 0060 0023     		movs	r3, #0
ARM GAS  /tmp/ccseNMKE.s 			page 20


 1084 0062 06F8683C 		strb	r3, [r6, #-104]
 1085 0066 E8E7     		b	.L177
 1086              	.L208:
 1087 0068 0023     		movs	r3, #0
 1088 006a 08F6E815 		addw	r5, r8, #2536
 1089 006e 2146     		mov	r1, r4
 1090 0070 C8F8043A 		str	r3, [r8, #2564]
 1091 0074 2846     		mov	r0, r5
 1092 0076 FFF7FEFF 		bl	f_opendir
 1093 007a 68BB     		cbnz	r0, .L181
 1094 007c 6423     		movs	r3, #100
 1095 007e 07F10108 		add	r8, r7, #1
 1096 0082 1D4C     		ldr	r4, .L210
 1097 0084 0793     		str	r3, [sp, #28]
 1098 0086 CDF81880 		str	r8, [sp, #24]
 1099              	.L183:
 1100 008a 6946     		mov	r1, sp
 1101 008c 2846     		mov	r0, r5
 1102 008e FFF7FEFF 		bl	f_readdir
 1103 0092 08BB     		cbnz	r0, .L181
 1104 0094 9DF80930 		ldrb	r3, [sp, #9]	@ zero_extendqisi2
 1105 0098 F3B1     		cbz	r3, .L181
 1106 009a 2146     		mov	r1, r4
 1107 009c 0DF10900 		add	r0, sp, #9
 1108 00a0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1109 00a4 0028     		cmp	r0, #0
 1110 00a6 F0D1     		bne	.L183
 1111 00a8 1449     		ldr	r1, .L210+4
 1112 00aa 0DF10900 		add	r0, sp, #9
 1113 00ae FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1114 00b2 0028     		cmp	r0, #0
 1115 00b4 E9D1     		bne	.L183
 1116 00b6 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 1117 00ba 7A78     		ldrb	r2, [r7, #1]	@ zero_extendqisi2
 1118 00bc C3F30013 		ubfx	r3, r3, #4, #1
 1119 00c0 3B70     		strb	r3, [r7]
 1120 00c2 8AB1     		cbz	r2, .L209
 1121              	.L188:
 1122 00c4 009B     		ldr	r3, [sp]
 1123 00c6 BDF80610 		ldrh	r1, [sp, #6]
 1124 00ca BB66     		str	r3, [r7, #104]
 1125 00cc BDF80400 		ldrh	r0, [sp, #4]
 1126 00d0 FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1127 00d4 F866     		str	r0, [r7, #108]
 1128 00d6 B9E7     		b	.L189
 1129              	.L181:
 1130 00d8 0026     		movs	r6, #0
 1131 00da 4846     		mov	r0, r9
 1132 00dc FFF7FEFF 		bl	_ZNK5Mutex7ReleaseEv
 1133 00e0 3046     		mov	r0, r6
 1134 00e2 23B0     		add	sp, sp, #140
 1135              		@ sp needed
 1136 00e4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1137              	.L209:
 1138 00e8 0DF10901 		add	r1, sp, #9
 1139 00ec 4046     		mov	r0, r8
 1140 00ee 6422     		movs	r2, #100
ARM GAS  /tmp/ccseNMKE.s 			page 21


 1141 00f0 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1142 00f4 E6E7     		b	.L188
 1143              	.L211:
 1144 00f6 00BF     		.align	2
 1145              	.L210:
 1146 00f8 00000000 		.word	.LC10
 1147 00fc 04000000 		.word	.LC11
 1148              		.size	_ZN11MassStorage9FindFirstEPKcR8FileInfo, .-_ZN11MassStorage9FindFirstEPKcR8FileInfo
 1149              		.section	.text._ZN11MassStorage8FindNextER8FileInfo,"ax",%progbits
 1150              		.align	1
 1151              		.p2align 2,,3
 1152              		.global	_ZN11MassStorage8FindNextER8FileInfo
 1153              		.syntax unified
 1154              		.thumb
 1155              		.thumb_func
 1156              		.fpu softvfp
 1157              		.type	_ZN11MassStorage8FindNextER8FileInfo, %function
 1158              	_ZN11MassStorage8FindNextER8FileInfo:
 1159              		@ args = 0, pretend = 0, frame = 32
 1160              		@ frame_needed = 0, uses_anonymous_args = 0
 1161 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1162 0002 00F28445 		addw	r5, r0, #1156
 1163 0006 89B0     		sub	sp, sp, #36
 1164 0008 0446     		mov	r4, r0
 1165 000a 2846     		mov	r0, r5
 1166 000c 0F46     		mov	r7, r1
 1167 000e FFF7FEFF 		bl	_ZNK5Mutex9GetHolderEv
 1168 0012 0646     		mov	r6, r0
 1169 0014 FFF7FEFF 		bl	_ZN9RTOSIface14GetCurrentTaskEv
 1170 0018 8642     		cmp	r6, r0
 1171 001a 4FF00003 		mov	r3, #0
 1172 001e 02D0     		beq	.L227
 1173              	.L223:
 1174 0020 1846     		mov	r0, r3
 1175 0022 09B0     		add	sp, sp, #36
 1176              		@ sp needed
 1177 0024 F0BD     		pop	{r4, r5, r6, r7, pc}
 1178              	.L227:
 1179 0026 6426     		movs	r6, #100
 1180 0028 C4F8043A 		str	r3, [r4, #2564]
 1181 002c 04F6E810 		addw	r0, r4, #2536
 1182 0030 6946     		mov	r1, sp
 1183 0032 7C1C     		adds	r4, r7, #1
 1184 0034 0796     		str	r6, [sp, #28]
 1185 0036 0694     		str	r4, [sp, #24]
 1186 0038 FFF7FEFF 		bl	f_readdir
 1187 003c A0B9     		cbnz	r0, .L214
 1188 003e 9DF80930 		ldrb	r3, [sp, #9]	@ zero_extendqisi2
 1189 0042 8BB1     		cbz	r3, .L214
 1190 0044 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 1191 0048 0099     		ldr	r1, [sp]
 1192 004a 7A78     		ldrb	r2, [r7, #1]	@ zero_extendqisi2
 1193 004c C3F30013 		ubfx	r3, r3, #4, #1
 1194 0050 3B70     		strb	r3, [r7]
 1195 0052 B966     		str	r1, [r7, #104]
 1196 0054 6AB1     		cbz	r2, .L228
 1197              	.L217:
ARM GAS  /tmp/ccseNMKE.s 			page 22


 1198 0056 BDF80610 		ldrh	r1, [sp, #6]
 1199 005a BDF80400 		ldrh	r0, [sp, #4]
 1200 005e FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1201 0062 0123     		movs	r3, #1
 1202 0064 F866     		str	r0, [r7, #108]
 1203 0066 DBE7     		b	.L223
 1204              	.L214:
 1205 0068 2846     		mov	r0, r5
 1206 006a FFF7FEFF 		bl	_ZNK5Mutex7ReleaseEv
 1207 006e 0023     		movs	r3, #0
 1208 0070 D6E7     		b	.L223
 1209              	.L228:
 1210 0072 3246     		mov	r2, r6
 1211 0074 2046     		mov	r0, r4
 1212 0076 0DF10901 		add	r1, sp, #9
 1213 007a FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1214 007e EAE7     		b	.L217
 1215              		.size	_ZN11MassStorage8FindNextER8FileInfo, .-_ZN11MassStorage8FindNextER8FileInfo
 1216              		.section	.text._ZNK11MassStorage19GetLastModifiedTimeEPKcS1_,"ax",%progbits
 1217              		.align	1
 1218              		.p2align 2,,3
 1219              		.global	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1220              		.syntax unified
 1221              		.thumb
 1222              		.thumb_func
 1223              		.fpu softvfp
 1224              		.type	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_, %function
 1225              	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_:
 1226              		@ args = 0, pretend = 0, frame = 136
 1227              		@ frame_needed = 0, uses_anonymous_args = 0
 1228 0000 30B5     		push	{r4, r5, lr}
 1229 0002 0024     		movs	r4, #0
 1230 0004 6523     		movs	r3, #101
 1231 0006 A3B0     		sub	sp, sp, #140
 1232 0008 22AD     		add	r5, sp, #136
 1233 000a 05F8684D 		strb	r4, [r5, #-104]!
 1234 000e 6846     		mov	r0, sp
 1235 0010 0095     		str	r5, [sp]
 1236 0012 0193     		str	r3, [sp, #4]
 1237 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 1238 0018 2846     		mov	r0, r5
 1239 001a 6946     		mov	r1, sp
 1240 001c 0694     		str	r4, [sp, #24]
 1241 001e FFF7FEFF 		bl	f_stat
 1242 0022 10B1     		cbz	r0, .L233
 1243 0024 2046     		mov	r0, r4
 1244 0026 23B0     		add	sp, sp, #140
 1245              		@ sp needed
 1246 0028 30BD     		pop	{r4, r5, pc}
 1247              	.L233:
 1248 002a BDF80610 		ldrh	r1, [sp, #6]
 1249 002e BDF80400 		ldrh	r0, [sp, #4]
 1250 0032 FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1251 0036 23B0     		add	sp, sp, #140
 1252              		@ sp needed
 1253 0038 30BD     		pop	{r4, r5, pc}
 1254              		.size	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_, .-_ZNK11MassStorage19GetLastModifiedTimeEPKcS
ARM GAS  /tmp/ccseNMKE.s 			page 23


 1255 003a 00BF     		.section	.text._ZNK11MassStorage14IsCardDetectedEj,"ax",%progbits
 1256              		.align	1
 1257              		.p2align 2,,3
 1258              		.global	_ZNK11MassStorage14IsCardDetectedEj
 1259              		.syntax unified
 1260              		.thumb
 1261              		.thumb_func
 1262              		.fpu softvfp
 1263              		.type	_ZNK11MassStorage14IsCardDetectedEj, %function
 1264              	_ZNK11MassStorage14IsCardDetectedEj:
 1265              		@ args = 0, pretend = 0, frame = 0
 1266              		@ frame_needed = 0, uses_anonymous_args = 0
 1267              		@ link register save eliminated.
 1268 0000 01EBC101 		add	r1, r1, r1, lsl #3
 1269 0004 00EB8111 		add	r1, r0, r1, lsl #6
 1270 0008 91F83F02 		ldrb	r0, [r1, #575]	@ zero_extendqisi2
 1271 000c A0F10200 		sub	r0, #2
 1272 0010 B0FA80F0 		clz	r0, r0
 1273 0014 4009     		lsrs	r0, r0, #5
 1274 0016 7047     		bx	lr
 1275              		.size	_ZNK11MassStorage14IsCardDetectedEj, .-_ZNK11MassStorage14IsCardDetectedEj
 1276              		.section	.text._ZN11MassStorage15InternalUnmountEjb,"ax",%progbits
 1277              		.align	1
 1278              		.p2align 2,,3
 1279              		.global	_ZN11MassStorage15InternalUnmountEjb
 1280              		.syntax unified
 1281              		.thumb
 1282              		.thumb_func
 1283              		.fpu softvfp
 1284              		.type	_ZN11MassStorage15InternalUnmountEjb, %function
 1285              	_ZN11MassStorage15InternalUnmountEjb:
 1286              		@ args = 0, pretend = 0, frame = 16
 1287              		@ frame_needed = 0, uses_anonymous_args = 0
 1288 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1289 0002 0D46     		mov	r5, r1
 1290 0004 0646     		mov	r6, r0
 1291 0006 1746     		mov	r7, r2
 1292 0008 85B0     		sub	sp, sp, #20
 1293 000a 05EBC504 		add	r4, r5, r5, lsl #3
 1294 000e 00F59061 		add	r1, r0, #1152
 1295 0012 4FF0FF32 		mov	r2, #-1
 1296 0016 6846     		mov	r0, sp
 1297 0018 A401     		lsls	r4, r4, #6
 1298 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1299 001e 04F50E71 		add	r1, r4, #568
 1300 0022 3144     		add	r1, r1, r6
 1301 0024 3444     		add	r4, r4, r6
 1302 0026 02A8     		add	r0, sp, #8
 1303 0028 4FF0FF32 		mov	r2, #-1
 1304 002c FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1305 0030 3A46     		mov	r2, r7
 1306 0032 2146     		mov	r1, r4
 1307 0034 3046     		mov	r0, r6
 1308 0036 FFF7FEFF 		bl	_ZN11MassStorage15InvalidateFilesEPK5FATFSb
 1309 003a EDB2     		uxtb	r5, r5
 1310 003c 0646     		mov	r6, r0
 1311 003e 0021     		movs	r1, #0
ARM GAS  /tmp/ccseNMKE.s 			page 24


 1312 0040 2846     		mov	r0, r5
 1313 0042 FFF7FEFF 		bl	f_mount
 1314 0046 4FF40C72 		mov	r2, #560
 1315 004a 0021     		movs	r1, #0
 1316 004c 2046     		mov	r0, r4
 1317 004e FFF7FEFF 		bl	memset
 1318 0052 2846     		mov	r0, r5
 1319 0054 FFF7FEFF 		bl	sd_mmc_unmount
 1320 0058 0023     		movs	r3, #0
 1321 005a 02A8     		add	r0, sp, #8
 1322 005c 84F83E32 		strb	r3, [r4, #574]
 1323 0060 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1324 0064 6846     		mov	r0, sp
 1325 0066 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1326 006a 3046     		mov	r0, r6
 1327 006c 05B0     		add	sp, sp, #20
 1328              		@ sp needed
 1329 006e F0BD     		pop	{r4, r5, r6, r7, pc}
 1330              		.size	_ZN11MassStorage15InternalUnmountEjb, .-_ZN11MassStorage15InternalUnmountEjb
 1331              		.global	__aeabi_ui2f
 1332              		.global	__aeabi_fmul
 1333              		.global	__aeabi_fdiv
 1334              		.global	__aeabi_fcmpge
 1335              		.global	__aeabi_f2d
 1336              		.section	.text._ZN11MassStorage5MountEjRK9StringRefb.part.9,"ax",%progbits
 1337              		.align	1
 1338              		.p2align 2,,3
 1339              		.syntax unified
 1340              		.thumb
 1341              		.thumb_func
 1342              		.fpu softvfp
 1343              		.type	_ZN11MassStorage5MountEjRK9StringRefb.part.9, %function
 1344              	_ZN11MassStorage5MountEjRK9StringRefb.part.9:
 1345              		@ args = 0, pretend = 0, frame = 16
 1346              		@ frame_needed = 0, uses_anonymous_args = 0
 1347 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1348 0004 0E46     		mov	r6, r1
 1349 0006 8146     		mov	r9, r0
 1350 0008 89B0     		sub	sp, sp, #36
 1351 000a 00F59061 		add	r1, r0, #1152
 1352 000e 1746     		mov	r7, r2
 1353 0010 04A8     		add	r0, sp, #16
 1354 0012 4FF0FF32 		mov	r2, #-1
 1355 0016 F400     		lsls	r4, r6, #3
 1356 0018 9846     		mov	r8, r3
 1357 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1358 001e A319     		adds	r3, r4, r6
 1359 0020 9B01     		lsls	r3, r3, #6
 1360 0022 03F50E71 		add	r1, r3, #568
 1361 0026 09EB0305 		add	r5, r9, r3
 1362 002a 4944     		add	r1, r1, r9
 1363 002c 06A8     		add	r0, sp, #24
 1364 002e 4FF0FF32 		mov	r2, #-1
 1365 0032 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1366 0036 95F83D32 		ldrb	r3, [r5, #573]	@ zero_extendqisi2
 1367 003a FBB9     		cbnz	r3, .L238
 1368 003c 95F83E32 		ldrb	r3, [r5, #574]	@ zero_extendqisi2
ARM GAS  /tmp/ccseNMKE.s 			page 25


 1369 0040 7BB1     		cbz	r3, .L239
 1370 0042 2946     		mov	r1, r5
 1371 0044 4846     		mov	r0, r9
 1372 0046 FFF7FEFF 		bl	_ZNK11MassStorage11AnyFileOpenEPK5FATFS
 1373 004a 28B1     		cbz	r0, .L240
 1374 004c 3846     		mov	r0, r7
 1375 004e 5649     		ldr	r1, .L274
 1376 0050 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1377 0054 0225     		movs	r5, #2
 1378 0056 1DE0     		b	.L241
 1379              	.L240:
 1380 0058 0246     		mov	r2, r0
 1381 005a 3146     		mov	r1, r6
 1382 005c 4846     		mov	r0, r9
 1383 005e FFF7FEFF 		bl	_ZN11MassStorage15InternalUnmountEjb
 1384              	.L239:
 1385 0062 FFF7FEFF 		bl	millis
 1386 0066 0122     		movs	r2, #1
 1387 0068 A319     		adds	r3, r4, r6
 1388 006a 09EB8313 		add	r3, r9, r3, lsl #6
 1389 006e C3F83402 		str	r0, [r3, #564]
 1390 0072 83F83D22 		strb	r2, [r3, #573]
 1391 0076 0220     		movs	r0, #2
 1392 0078 FFF7FEFF 		bl	coreDelay
 1393              	.L238:
 1394 007c 3444     		add	r4, r4, r6
 1395 007e 09EB8414 		add	r4, r9, r4, lsl #6
 1396 0082 94F83F92 		ldrb	r9, [r4, #575]	@ zero_extendqisi2
 1397 0086 B9F1000F 		cmp	r9, #0
 1398 008a 0DD0     		beq	.L269
 1399 008c B9F1020F 		cmp	r9, #2
 1400 0090 12D0     		beq	.L270
 1401              	.L266:
 1402 0092 0025     		movs	r5, #0
 1403              	.L241:
 1404 0094 06A8     		add	r0, sp, #24
 1405 0096 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1406 009a 04A8     		add	r0, sp, #16
 1407 009c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1408 00a0 2846     		mov	r0, r5
 1409 00a2 09B0     		add	sp, sp, #36
 1410              		@ sp needed
 1411 00a4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1412              	.L269:
 1413 00a8 3846     		mov	r0, r7
 1414 00aa 4049     		ldr	r1, .L274+4
 1415 00ac FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1416 00b0 0225     		movs	r5, #2
 1417 00b2 84F83D92 		strb	r9, [r4, #573]
 1418 00b6 EDE7     		b	.L241
 1419              	.L270:
 1420 00b8 5FFA86FA 		uxtb	r10, r6
 1421 00bc 5046     		mov	r0, r10
 1422 00be FFF7FEFF 		bl	sd_mmc_check
 1423 00c2 8346     		mov	fp, r0
 1424 00c4 0028     		cmp	r0, #0
 1425 00c6 49D1     		bne	.L271
ARM GAS  /tmp/ccseNMKE.s 			page 26


 1426 00c8 84F83D02 		strb	r0, [r4, #573]
 1427 00cc 2946     		mov	r1, r5
 1428 00ce 5046     		mov	r0, r10
 1429 00d0 FFF7FEFF 		bl	f_mount
 1430 00d4 0028     		cmp	r0, #0
 1431 00d6 39D1     		bne	.L272
 1432 00d8 0125     		movs	r5, #1
 1433 00da 84F83E52 		strb	r5, [r4, #574]
 1434 00de B8F1000F 		cmp	r8, #0
 1435 00e2 D7D0     		beq	.L241
 1436 00e4 5046     		mov	r0, r10
 1437 00e6 FFF7FEFF 		bl	sd_mmc_get_capacity
 1438 00ea FFF7FEFF 		bl	__aeabi_ui2f
 1439 00ee 4FF08941 		mov	r1, #1149239296
 1440 00f2 FFF7FEFF 		bl	__aeabi_fmul
 1441 00f6 2E49     		ldr	r1, .L274+8
 1442 00f8 FFF7FEFF 		bl	__aeabi_fdiv
 1443 00fc 2D49     		ldr	r1, .L274+12
 1444 00fe 0446     		mov	r4, r0
 1445 0100 FFF7FEFF 		bl	__aeabi_fcmpge
 1446 0104 0028     		cmp	r0, #0
 1447 0106 4CD0     		beq	.L262
 1448 0108 2046     		mov	r0, r4
 1449 010a 2A49     		ldr	r1, .L274+12
 1450 010c FFF7FEFF 		bl	__aeabi_fdiv
 1451 0110 0446     		mov	r4, r0
 1452 0112 DFF8C080 		ldr	r8, .L274+44
 1453              	.L246:
 1454 0116 5046     		mov	r0, r10
 1455 0118 FFF7FEFF 		bl	sd_mmc_get_type
 1456 011c 431E     		subs	r3, r0, #1
 1457 011e DBB2     		uxtb	r3, r3
 1458 0120 092B     		cmp	r3, #9
 1459 0122 98BF     		it	ls
 1460 0124 244A     		ldrls	r2, .L274+16
 1461 0126 2046     		mov	r0, r4
 1462 0128 94BF     		ite	ls
 1463 012a 52F82350 		ldrls	r5, [r2, r3, lsl #2]
 1464 012e 234D     		ldrhi	r5, .L274+20
 1465 0130 CDF80880 		str	r8, [sp, #8]
 1466 0134 FFF7FEFF 		bl	__aeabi_f2d
 1467 0138 2A46     		mov	r2, r5
 1468 013a CDE90001 		strd	r0, [sp]
 1469 013e 3346     		mov	r3, r6
 1470 0140 3846     		mov	r0, r7
 1471 0142 1F49     		ldr	r1, .L274+24
 1472 0144 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1473 0148 0125     		movs	r5, #1
 1474 014a A3E7     		b	.L241
 1475              	.L272:
 1476 014c 0346     		mov	r3, r0
 1477 014e 3246     		mov	r2, r6
 1478 0150 3846     		mov	r0, r7
 1479 0152 1C49     		ldr	r1, .L274+28
 1480 0154 4D46     		mov	r5, r9
 1481 0156 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1482 015a 9BE7     		b	.L241
ARM GAS  /tmp/ccseNMKE.s 			page 27


 1483              	.L271:
 1484 015c FFF7FEFF 		bl	millis
 1485 0160 41F28732 		movw	r2, #4999
 1486 0164 D4F83432 		ldr	r3, [r4, #564]
 1487 0168 C01A     		subs	r0, r0, r3
 1488 016a 9042     		cmp	r0, r2
 1489 016c 03D8     		bhi	.L273
 1490 016e 4846     		mov	r0, r9
 1491 0170 FFF7FEFF 		bl	coreDelay
 1492 0174 8DE7     		b	.L266
 1493              	.L273:
 1494 0176 0023     		movs	r3, #0
 1495 0178 ABF1020B 		sub	fp, fp, #2
 1496 017c 5FFA8BFB 		uxtb	fp, fp
 1497 0180 BBF1050F 		cmp	fp, #5
 1498 0184 84F83D32 		strb	r3, [r4, #573]
 1499 0188 07D9     		bls	.L251
 1500 018a 0F4B     		ldr	r3, .L274+32
 1501              	.L252:
 1502 018c 3246     		mov	r2, r6
 1503 018e 3846     		mov	r0, r7
 1504 0190 0E49     		ldr	r1, .L274+36
 1505 0192 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1506 0196 0225     		movs	r5, #2
 1507 0198 7CE7     		b	.L241
 1508              	.L251:
 1509 019a 0D4B     		ldr	r3, .L274+40
 1510 019c 53F82B30 		ldr	r3, [r3, fp, lsl #2]
 1511 01a0 F4E7     		b	.L252
 1512              	.L262:
 1513 01a2 DFF83480 		ldr	r8, .L274+48
 1514 01a6 B6E7     		b	.L246
 1515              	.L275:
 1516              		.align	2
 1517              	.L274:
 1518 01a8 28000000 		.word	.LC16
 1519 01ac 44000000 		.word	.LC17
 1520 01b0 00247449 		.word	1232348160
 1521 01b4 00007A44 		.word	1148846080
 1522 01b8 00000000 		.word	.LANCHOR2
 1523 01bc 18000000 		.word	.LC15
 1524 01c0 A0000000 		.word	.LC20
 1525 01c4 7C000000 		.word	.LC19
 1526 01c8 00000000 		.word	.LC12
 1527 01cc 58000000 		.word	.LC18
 1528 01d0 00000000 		.word	.LANCHOR1
 1529 01d4 14000000 		.word	.LC14
 1530 01d8 10000000 		.word	.LC13
 1531              		.size	_ZN11MassStorage5MountEjRK9StringRefb.part.9, .-_ZN11MassStorage5MountEjRK9StringRefb.part.9
 1532              		.section	.text._ZN11MassStorage5MountEjRK9StringRefb,"ax",%progbits
 1533              		.align	1
 1534              		.p2align 2,,3
 1535              		.global	_ZN11MassStorage5MountEjRK9StringRefb
 1536              		.syntax unified
 1537              		.thumb
 1538              		.thumb_func
 1539              		.fpu softvfp
ARM GAS  /tmp/ccseNMKE.s 			page 28


 1540              		.type	_ZN11MassStorage5MountEjRK9StringRefb, %function
 1541              	_ZN11MassStorage5MountEjRK9StringRefb:
 1542              		@ args = 0, pretend = 0, frame = 0
 1543              		@ frame_needed = 0, uses_anonymous_args = 0
 1544 0000 0129     		cmp	r1, #1
 1545 0002 06D9     		bls	.L283
 1546 0004 10B5     		push	{r4, lr}
 1547 0006 1046     		mov	r0, r2
 1548 0008 0349     		ldr	r1, .L284
 1549 000a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1550 000e 0220     		movs	r0, #2
 1551 0010 10BD     		pop	{r4, pc}
 1552              	.L283:
 1553 0012 FFF7FEBF 		b	_ZN11MassStorage5MountEjRK9StringRefb.part.9
 1554              	.L285:
 1555 0016 00BF     		.align	2
 1556              	.L284:
 1557 0018 00000000 		.word	.LC21
 1558              		.size	_ZN11MassStorage5MountEjRK9StringRefb, .-_ZN11MassStorage5MountEjRK9StringRefb
 1559              		.section	.text._ZN11MassStorage7UnmountEjRK9StringRef,"ax",%progbits
 1560              		.align	1
 1561              		.p2align 2,,3
 1562              		.global	_ZN11MassStorage7UnmountEjRK9StringRef
 1563              		.syntax unified
 1564              		.thumb
 1565              		.thumb_func
 1566              		.fpu softvfp
 1567              		.type	_ZN11MassStorage7UnmountEjRK9StringRef, %function
 1568              	_ZN11MassStorage7UnmountEjRK9StringRef:
 1569              		@ args = 0, pretend = 0, frame = 0
 1570              		@ frame_needed = 0, uses_anonymous_args = 0
 1571 0000 0129     		cmp	r1, #1
 1572 0002 70B5     		push	{r4, r5, r6, lr}
 1573 0004 1546     		mov	r5, r2
 1574 0006 05D9     		bls	.L287
 1575 0008 1046     		mov	r0, r2
 1576 000a 0D49     		ldr	r1, .L292
 1577 000c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1578 0010 0220     		movs	r0, #2
 1579 0012 70BD     		pop	{r4, r5, r6, pc}
 1580              	.L287:
 1581 0014 0C46     		mov	r4, r1
 1582 0016 0646     		mov	r6, r0
 1583 0018 0A46     		mov	r2, r1
 1584 001a 2846     		mov	r0, r5
 1585 001c 0949     		ldr	r1, .L292+4
 1586 001e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1587 0022 2146     		mov	r1, r4
 1588 0024 3046     		mov	r0, r6
 1589 0026 0122     		movs	r2, #1
 1590 0028 FFF7FEFF 		bl	_ZN11MassStorage15InternalUnmountEjb
 1591 002c 08B9     		cbnz	r0, .L291
 1592 002e 0120     		movs	r0, #1
 1593 0030 70BD     		pop	{r4, r5, r6, pc}
 1594              	.L291:
 1595 0032 0246     		mov	r2, r0
 1596 0034 0449     		ldr	r1, .L292+8
ARM GAS  /tmp/ccseNMKE.s 			page 29


 1597 0036 2846     		mov	r0, r5
 1598 0038 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1599 003c 0120     		movs	r0, #1
 1600 003e 70BD     		pop	{r4, r5, r6, pc}
 1601              	.L293:
 1602              		.align	2
 1603              	.L292:
 1604 0040 00000000 		.word	.LC21
 1605 0044 00000000 		.word	.LC22
 1606 0048 20000000 		.word	.LC23
 1607              		.size	_ZN11MassStorage7UnmountEjRK9StringRef, .-_ZN11MassStorage7UnmountEjRK9StringRef
 1608              		.section	.text._ZNK11MassStorage15GetNumFreeFilesEv,"ax",%progbits
 1609              		.align	1
 1610              		.p2align 2,,3
 1611              		.global	_ZNK11MassStorage15GetNumFreeFilesEv
 1612              		.syntax unified
 1613              		.thumb
 1614              		.thumb_func
 1615              		.fpu softvfp
 1616              		.type	_ZNK11MassStorage15GetNumFreeFilesEv, %function
 1617              	_ZNK11MassStorage15GetNumFreeFilesEv:
 1618              		@ args = 0, pretend = 0, frame = 8
 1619              		@ frame_needed = 0, uses_anonymous_args = 0
 1620 0000 30B5     		push	{r4, r5, lr}
 1621 0002 0446     		mov	r4, r0
 1622 0004 0025     		movs	r5, #0
 1623 0006 83B0     		sub	sp, sp, #12
 1624 0008 00F59061 		add	r1, r0, #1152
 1625 000c 4FF0FF32 		mov	r2, #-1
 1626 0010 6846     		mov	r0, sp
 1627 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1628 0016 04F54462 		add	r2, r4, #3136
 1629 001a 04F52160 		add	r0, r4, #2576
 1630              	.L296:
 1631 001e 90F83130 		ldrb	r3, [r0, #49]	@ zero_extendqisi2
 1632 0022 3830     		adds	r0, r0, #56
 1633 0024 03B9     		cbnz	r3, .L295
 1634 0026 0135     		adds	r5, r5, #1
 1635              	.L295:
 1636 0028 8242     		cmp	r2, r0
 1637 002a F8D1     		bne	.L296
 1638 002c 6846     		mov	r0, sp
 1639 002e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1640 0032 2846     		mov	r0, r5
 1641 0034 03B0     		add	sp, sp, #12
 1642              		@ sp needed
 1643 0036 30BD     		pop	{r4, r5, pc}
 1644              		.size	_ZNK11MassStorage15GetNumFreeFilesEv, .-_ZNK11MassStorage15GetNumFreeFilesEv
 1645              		.section	.text._ZN11MassStorage4SpinEv,"ax",%progbits
 1646              		.align	1
 1647              		.p2align 2,,3
 1648              		.global	_ZN11MassStorage4SpinEv
 1649              		.syntax unified
 1650              		.thumb
 1651              		.thumb_func
 1652              		.fpu softvfp
 1653              		.type	_ZN11MassStorage4SpinEv, %function
ARM GAS  /tmp/ccseNMKE.s 			page 30


 1654              	_ZN11MassStorage4SpinEv:
 1655              		@ args = 0, pretend = 0, frame = 8
 1656              		@ frame_needed = 0, uses_anonymous_args = 0
 1657 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1658 0004 0446     		mov	r4, r0
 1659 0006 0026     		movs	r6, #0
 1660 0008 0546     		mov	r5, r0
 1661 000a 0227     		movs	r7, #2
 1662 000c DFF8D890 		ldr	r9, .L328
 1663 0010 DFF8D880 		ldr	r8, .L328+4
 1664 0014 85B0     		sub	sp, sp, #20
 1665              	.L308:
 1666 0016 95F83C02 		ldrb	r0, [r5, #572]	@ zero_extendqisi2
 1667 001a FF28     		cmp	r0, #255
 1668 001c 17D0     		beq	.L301
 1669 001e FFF7FEFF 		bl	digitalRead
 1670 0022 95F83F32 		ldrb	r3, [r5, #575]	@ zero_extendqisi2
 1671 0026 B0B3     		cbz	r0, .L302
 1672 0028 8BB1     		cbz	r3, .L301
 1673 002a 022B     		cmp	r3, #2
 1674 002c 43D9     		bls	.L303
 1675 002e 032B     		cmp	r3, #3
 1676 0030 0DD1     		bne	.L301
 1677 0032 FFF7FEFF 		bl	millis
 1678 0036 D5F83032 		ldr	r3, [r5, #560]
 1679 003a C31A     		subs	r3, r0, r3
 1680 003c C82B     		cmp	r3, #200
 1681 003e 06D9     		bls	.L301
 1682 0040 0022     		movs	r2, #0
 1683 0042 95F83E32 		ldrb	r3, [r5, #574]	@ zero_extendqisi2
 1684 0046 85F83F22 		strb	r2, [r5, #575]
 1685 004a 002B     		cmp	r3, #0
 1686 004c 3BD1     		bne	.L326
 1687              	.L301:
 1688 004e 0136     		adds	r6, r6, #1
 1689 0050 022E     		cmp	r6, #2
 1690 0052 05F51075 		add	r5, r5, #576
 1691 0056 DED1     		bne	.L308
 1692 0058 04F59061 		add	r1, r4, #1152
 1693 005c 02A8     		add	r0, sp, #8
 1694 005e 4FF0FF32 		mov	r2, #-1
 1695 0062 04F54465 		add	r5, r4, #3136
 1696 0066 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1697 006a 04F52164 		add	r4, r4, #2576
 1698 006e 02E0     		b	.L310
 1699              	.L309:
 1700 0070 3834     		adds	r4, r4, #56
 1701 0072 A542     		cmp	r5, r4
 1702 0074 09D0     		beq	.L327
 1703              	.L310:
 1704 0076 94F83030 		ldrb	r3, [r4, #48]	@ zero_extendqisi2
 1705 007a 002B     		cmp	r3, #0
 1706 007c F8D0     		beq	.L309
 1707 007e 2046     		mov	r0, r4
 1708 0080 3834     		adds	r4, r4, #56
 1709 0082 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1710 0086 A542     		cmp	r5, r4
ARM GAS  /tmp/ccseNMKE.s 			page 31


 1711 0088 F5D1     		bne	.L310
 1712              	.L327:
 1713 008a 02A8     		add	r0, sp, #8
 1714 008c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1715 0090 05B0     		add	sp, sp, #20
 1716              		@ sp needed
 1717 0092 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1718              	.L302:
 1719 0096 012B     		cmp	r3, #1
 1720 0098 0AD0     		beq	.L306
 1721 009a 01D3     		bcc	.L307
 1722 009c 032B     		cmp	r3, #3
 1723 009e D6D1     		bne	.L301
 1724              	.L307:
 1725 00a0 0123     		movs	r3, #1
 1726 00a2 85F83F32 		strb	r3, [r5, #575]
 1727 00a6 FFF7FEFF 		bl	millis
 1728 00aa C5F83002 		str	r0, [r5, #560]
 1729 00ae CEE7     		b	.L301
 1730              	.L306:
 1731 00b0 85F83F72 		strb	r7, [r5, #575]
 1732 00b4 CBE7     		b	.L301
 1733              	.L303:
 1734 00b6 0323     		movs	r3, #3
 1735 00b8 85F83F32 		strb	r3, [r5, #575]
 1736 00bc FFF7FEFF 		bl	millis
 1737 00c0 C5F83002 		str	r0, [r5, #560]
 1738 00c4 C3E7     		b	.L301
 1739              	.L326:
 1740 00c6 3146     		mov	r1, r6
 1741 00c8 2046     		mov	r0, r4
 1742 00ca FFF7FEFF 		bl	_ZN11MassStorage15InternalUnmountEjb
 1743 00ce 0028     		cmp	r0, #0
 1744 00d0 BDD0     		beq	.L301
 1745 00d2 D9F80030 		ldr	r3, [r9]
 1746 00d6 0090     		str	r0, [sp]
 1747 00d8 4246     		mov	r2, r8
 1748 00da 1846     		mov	r0, r3
 1749 00dc 40F2B511 		movw	r1, #437
 1750 00e0 3346     		mov	r3, r6
 1751 00e2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1752 00e6 B2E7     		b	.L301
 1753              	.L329:
 1754              		.align	2
 1755              	.L328:
 1756 00e8 00000000 		.word	reprap
 1757 00ec 00000000 		.word	.LC24
 1758              		.size	_ZN11MassStorage4SpinEv, .-_ZN11MassStorage4SpinEv
 1759              		.section	.text._ZN11MassStorage4InitEv,"ax",%progbits
 1760              		.align	1
 1761              		.p2align 2,,3
 1762              		.global	_ZN11MassStorage4InitEv
 1763              		.syntax unified
 1764              		.thumb
 1765              		.thumb_func
 1766              		.fpu softvfp
 1767              		.type	_ZN11MassStorage4InitEv, %function
ARM GAS  /tmp/ccseNMKE.s 			page 32


 1768              	_ZN11MassStorage4InitEv:
 1769              		@ args = 0, pretend = 0, frame = 112
 1770              		@ frame_needed = 0, uses_anonymous_args = 0
 1771 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1772 0002 0446     		mov	r4, r0
 1773 0004 9DB0     		sub	sp, sp, #116
 1774 0006 3249     		ldr	r1, .L339
 1775 0008 00F59060 		add	r0, r0, #1152
 1776 000c FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 1777 0010 3049     		ldr	r1, .L339+4
 1778 0012 04F28440 		addw	r0, r4, #1156
 1779 0016 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 1780 001a 41F20800 		movw	r0, #4104
 1781 001e FFF7FEFF 		bl	_Znwj
 1782 0022 0027     		movs	r7, #0
 1783 0024 0346     		mov	r3, r0
 1784 0026 0E25     		movs	r5, #14
 1785 0028 D4F80C6A 		ldr	r6, [r4, #2572]
 1786 002c 4FF40C72 		mov	r2, #560
 1787 0030 83E8C000 		stm	r3, {r6, r7}
 1788 0034 6526     		movs	r6, #101
 1789 0036 3946     		mov	r1, r7
 1790 0038 C4F80C0A 		str	r0, [r4, #2572]
 1791 003c 2046     		mov	r0, r4
 1792 003e FFF7FEFF 		bl	memset
 1793 0042 84F83C52 		strb	r5, [r4, #572]
 1794 0046 04F50E70 		add	r0, r4, #568
 1795 004a 2349     		ldr	r1, .L339+8
 1796 004c 84F83E72 		strb	r7, [r4, #574]
 1797 0050 84F83D72 		strb	r7, [r4, #573]
 1798 0054 84F83F72 		strb	r7, [r4, #575]
 1799 0058 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 1800 005c 4FF40C72 		mov	r2, #560
 1801 0060 3946     		mov	r1, r7
 1802 0062 04F51070 		add	r0, r4, #576
 1803 0066 FFF7FEFF 		bl	memset
 1804 006a 84F87C54 		strb	r5, [r4, #1148]
 1805 006e 04F58F60 		add	r0, r4, #1144
 1806 0072 1A49     		ldr	r1, .L339+12
 1807 0074 84F87E74 		strb	r7, [r4, #1150]
 1808 0078 84F87D74 		strb	r7, [r4, #1149]
 1809 007c 84F87F74 		strb	r7, [r4, #1151]
 1810 0080 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 1811 0084 1CAD     		add	r5, sp, #112
 1812 0086 1649     		ldr	r1, .L339+16
 1813 0088 1648     		ldr	r0, .L339+20
 1814 008a FFF7FEFF 		bl	sd_mmc_init
 1815 008e 05F8687D 		strb	r7, [r5, #-104]!
 1816              	.L331:
 1817 0092 2046     		mov	r0, r4
 1818 0094 FFF7FEFF 		bl	_ZN11MassStorage4SpinEv
 1819 0098 0023     		movs	r3, #0
 1820 009a 6A46     		mov	r2, sp
 1821 009c 1946     		mov	r1, r3
 1822 009e 2046     		mov	r0, r4
 1823 00a0 8DE86000 		stm	sp, {r5, r6}
 1824 00a4 FFF7FEFF 		bl	_ZN11MassStorage5MountEjRK9StringRefb.part.9
ARM GAS  /tmp/ccseNMKE.s 			page 33


 1825 00a8 0028     		cmp	r0, #0
 1826 00aa F2D0     		beq	.L331
 1827 00ac 6421     		movs	r1, #100
 1828 00ae 2846     		mov	r0, r5
 1829 00b0 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1830 00b4 50B1     		cbz	r0, .L330
 1831 00b6 40F6B830 		movw	r0, #3000
 1832 00ba FFF7FEFF 		bl	coreDelay
 1833 00be 0A4A     		ldr	r2, .L339+24
 1834 00c0 2B46     		mov	r3, r5
 1835 00c2 1068     		ldr	r0, [r2]
 1836 00c4 0121     		movs	r1, #1
 1837 00c6 094A     		ldr	r2, .L339+28
 1838 00c8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1839              	.L330:
 1840 00cc 1DB0     		add	sp, sp, #116
 1841              		@ sp needed
 1842 00ce F0BD     		pop	{r4, r5, r6, r7, pc}
 1843              	.L340:
 1844              		.align	2
 1845              	.L339:
 1846 00d0 00000000 		.word	.LC25
 1847 00d4 0C000000 		.word	.LC26
 1848 00d8 18000000 		.word	.LC27
 1849 00dc 1C000000 		.word	.LC28
 1850 00e0 00000000 		.word	.LANCHOR3
 1851 00e4 00000000 		.word	.LANCHOR4
 1852 00e8 00000000 		.word	reprap
 1853 00ec 20000000 		.word	.LC29
 1854              		.size	_ZN11MassStorage4InitEv, .-_ZN11MassStorage4InitEv
 1855              		.section	.text._ZN6StringILj100EE6printfEPKcz,"axG",%progbits,_ZN6StringILj100EE6printfEPKcz,comda
 1856              		.align	1
 1857              		.p2align 2,,3
 1858              		.weak	_ZN6StringILj100EE6printfEPKcz
 1859              		.syntax unified
 1860              		.thumb
 1861              		.thumb_func
 1862              		.fpu softvfp
 1863              		.type	_ZN6StringILj100EE6printfEPKcz, %function
 1864              	_ZN6StringILj100EE6printfEPKcz:
 1865              		@ args = 4, pretend = 12, frame = 16
 1866              		@ frame_needed = 0, uses_anonymous_args = 1
 1867 0000 0EB4     		push	{r1, r2, r3}
 1868 0002 10B5     		push	{r4, lr}
 1869 0004 6524     		movs	r4, #101
 1870 0006 85B0     		sub	sp, sp, #20
 1871 0008 07AB     		add	r3, sp, #28
 1872 000a 53F8041B 		ldr	r1, [r3], #4
 1873 000e 0290     		str	r0, [sp, #8]
 1874 0010 1A46     		mov	r2, r3
 1875 0012 02A8     		add	r0, sp, #8
 1876 0014 0193     		str	r3, [sp, #4]
 1877 0016 0394     		str	r4, [sp, #12]
 1878 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 1879 001c 05B0     		add	sp, sp, #20
 1880              		@ sp needed
 1881 001e BDE81040 		pop	{r4, lr}
ARM GAS  /tmp/ccseNMKE.s 			page 34


 1882 0022 03B0     		add	sp, sp, #12
 1883 0024 7047     		bx	lr
 1884              		.size	_ZN6StringILj100EE6printfEPKcz, .-_ZN6StringILj100EE6printfEPKcz
 1885 0026 00BF     		.section	.text._ZN11MassStorage20RecordSimulationTimeEPKcm,"ax",%progbits
 1886              		.align	1
 1887              		.p2align 2,,3
 1888              		.global	_ZN11MassStorage20RecordSimulationTimeEPKcm
 1889              		.syntax unified
 1890              		.thumb
 1891              		.thumb_func
 1892              		.fpu softvfp
 1893              		.type	_ZN11MassStorage20RecordSimulationTimeEPKcm, %function
 1894              	_ZN11MassStorage20RecordSimulationTimeEPKcm:
 1895              		@ args = 0, pretend = 0, frame = 112
 1896              		@ frame_needed = 0, uses_anonymous_args = 0
 1897 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1898 0004 0223     		movs	r3, #2
 1899 0006 9DB0     		sub	sp, sp, #116
 1900 0008 0D46     		mov	r5, r1
 1901 000a 9246     		mov	r10, r2
 1902 000c 0A46     		mov	r2, r1
 1903 000e 3649     		ldr	r1, .L375
 1904 0010 8146     		mov	r9, r0
 1905 0012 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1906 0016 B0B1     		cbz	r0, .L354
 1907 0018 0027     		movs	r7, #0
 1908 001a 0446     		mov	r4, r0
 1909 001c 8DF80870 		strb	r7, [sp, #8]
 1910 0020 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1911 0024 6428     		cmp	r0, #100
 1912 0026 28BF     		it	cs
 1913 0028 6420     		movcs	r0, #100
 1914 002a 0646     		mov	r6, r0
 1915 002c 2046     		mov	r0, r4
 1916 002e FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1917 0032 A0EB0608 		sub	r8, r0, r6
 1918 0036 4146     		mov	r1, r8
 1919 0038 2046     		mov	r0, r4
 1920 003a FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1921 003e 68B9     		cbnz	r0, .L374
 1922              	.L347:
 1923 0040 2046     		mov	r0, r4
 1924 0042 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1925              	.L354:
 1926 0046 294A     		ldr	r2, .L375+4
 1927 0048 2B46     		mov	r3, r5
 1928 004a 1068     		ldr	r0, [r2]
 1929 004c 40F2B511 		movw	r1, #437
 1930 0050 274A     		ldr	r2, .L375+8
 1931 0052 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1932              	.L343:
 1933 0056 1DB0     		add	sp, sp, #116
 1934              		@ sp needed
 1935 0058 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1936              	.L374:
 1937 005c 0DF1080B 		add	fp, sp, #8
 1938 0060 5946     		mov	r1, fp
ARM GAS  /tmp/ccseNMKE.s 			page 35


 1939 0062 3246     		mov	r2, r6
 1940 0064 2046     		mov	r0, r4
 1941 0066 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1942 006a B042     		cmp	r0, r6
 1943 006c E8D1     		bne	.L347
 1944 006e 0190     		str	r0, [sp, #4]
 1945 0070 2A46     		mov	r2, r5
 1946 0072 1D49     		ldr	r1, .L375
 1947 0074 4846     		mov	r0, r9
 1948 0076 FFF7FEFF 		bl	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1949 007a 019B     		ldr	r3, [sp, #4]
 1950 007c 1CAA     		add	r2, sp, #112
 1951 007e 1344     		add	r3, r3, r2
 1952 0080 0646     		mov	r6, r0
 1953 0082 1C49     		ldr	r1, .L375+12
 1954 0084 5846     		mov	r0, fp
 1955 0086 03F8687C 		strb	r7, [r3, #-104]
 1956 008a FFF7FEFF 		bl	strstr
 1957 008e 38B1     		cbz	r0, .L350
 1958 0090 A0EB0B01 		sub	r1, r0, fp
 1959 0094 4144     		add	r1, r1, r8
 1960 0096 2046     		mov	r0, r4
 1961 0098 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1962 009c 0028     		cmp	r0, #0
 1963 009e CFD0     		beq	.L347
 1964              	.L350:
 1965 00a0 1549     		ldr	r1, .L375+16
 1966 00a2 5346     		mov	r3, r10
 1967 00a4 134A     		ldr	r2, .L375+12
 1968 00a6 5846     		mov	r0, fp
 1969 00a8 FFF7FEFF 		bl	_ZN6StringILj100EE6printfEPKcz
 1970 00ac 5946     		mov	r1, fp
 1971 00ae 2046     		mov	r0, r4
 1972 00b0 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1973 00b4 0028     		cmp	r0, #0
 1974 00b6 C3D0     		beq	.L347
 1975 00b8 2046     		mov	r0, r4
 1976 00ba FFF7FEFF 		bl	_ZN9FileStore8TruncateEv
 1977 00be 0746     		mov	r7, r0
 1978 00c0 2046     		mov	r0, r4
 1979 00c2 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1980 00c6 0028     		cmp	r0, #0
 1981 00c8 BDD0     		beq	.L354
 1982 00ca 002F     		cmp	r7, #0
 1983 00cc BBD0     		beq	.L354
 1984 00ce 002E     		cmp	r6, #0
 1985 00d0 C1D0     		beq	.L343
 1986 00d2 3346     		mov	r3, r6
 1987 00d4 4846     		mov	r0, r9
 1988 00d6 2A46     		mov	r2, r5
 1989 00d8 0349     		ldr	r1, .L375
 1990 00da FFF7FEFF 		bl	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l
 1991 00de 0028     		cmp	r0, #0
 1992 00e0 B1D0     		beq	.L354
 1993 00e2 1DB0     		add	sp, sp, #116
 1994              		@ sp needed
 1995 00e4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  /tmp/ccseNMKE.s 			page 36


 1996              	.L376:
 1997              		.align	2
 1998              	.L375:
 1999 00e8 00000000 		.word	.LC30
 2000 00ec 00000000 		.word	reprap
 2001 00f0 0C000000 		.word	.LC31
 2002 00f4 40000000 		.word	.LC32
 2003 00f8 58000000 		.word	.LC33
 2004              		.size	_ZN11MassStorage20RecordSimulationTimeEPKcm, .-_ZN11MassStorage20RecordSimulationTimeEPKcm
 2005              		.section	.text._ZN6StringILj50EE6printfEPKcz,"axG",%progbits,_ZN6StringILj50EE6printfEPKcz,comdat
 2006              		.align	1
 2007              		.p2align 2,,3
 2008              		.weak	_ZN6StringILj50EE6printfEPKcz
 2009              		.syntax unified
 2010              		.thumb
 2011              		.thumb_func
 2012              		.fpu softvfp
 2013              		.type	_ZN6StringILj50EE6printfEPKcz, %function
 2014              	_ZN6StringILj50EE6printfEPKcz:
 2015              		@ args = 4, pretend = 12, frame = 16
 2016              		@ frame_needed = 0, uses_anonymous_args = 1
 2017 0000 0EB4     		push	{r1, r2, r3}
 2018 0002 10B5     		push	{r4, lr}
 2019 0004 3324     		movs	r4, #51
 2020 0006 85B0     		sub	sp, sp, #20
 2021 0008 07AB     		add	r3, sp, #28
 2022 000a 53F8041B 		ldr	r1, [r3], #4
 2023 000e 0290     		str	r0, [sp, #8]
 2024 0010 1A46     		mov	r2, r3
 2025 0012 02A8     		add	r0, sp, #8
 2026 0014 0193     		str	r3, [sp, #4]
 2027 0016 0394     		str	r4, [sp, #12]
 2028 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2029 001c 05B0     		add	sp, sp, #20
 2030              		@ sp needed
 2031 001e BDE81040 		pop	{r4, lr}
 2032 0022 03B0     		add	sp, sp, #12
 2033 0024 7047     		bx	lr
 2034              		.size	_ZN6StringILj50EE6printfEPKcz, .-_ZN6StringILj50EE6printfEPKcz
 2035 0026 00BF     		.section	.text._ZN11MassStorage11GetCardInfoEjRyS0_RmS1_,"ax",%progbits
 2036              		.align	1
 2037              		.p2align 2,,3
 2038              		.global	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_
 2039              		.syntax unified
 2040              		.thumb
 2041              		.thumb_func
 2042              		.fpu softvfp
 2043              		.type	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_, %function
 2044              	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_:
 2045              		@ args = 8, pretend = 0, frame = 64
 2046              		@ frame_needed = 0, uses_anonymous_args = 0
 2047 0000 0129     		cmp	r1, #1
 2048 0002 01D9     		bls	.L388
 2049 0004 0020     		movs	r0, #0
 2050 0006 7047     		bx	lr
 2051              	.L388:
 2052 0008 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
ARM GAS  /tmp/ccseNMKE.s 			page 37


 2053 000c 01EBC104 		add	r4, r1, r1, lsl #3
 2054 0010 00EB8410 		add	r0, r0, r4, lsl #6
 2055 0014 90F83E02 		ldrb	r0, [r0, #574]	@ zero_extendqisi2
 2056 0018 91B0     		sub	sp, sp, #68
 2057 001a 18B9     		cbnz	r0, .L389
 2058 001c 0120     		movs	r0, #1
 2059              	.L380:
 2060 001e 11B0     		add	sp, sp, #68
 2061              		@ sp needed
 2062 0020 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2063              	.L389:
 2064 0024 CFB2     		uxtb	r7, r1
 2065 0026 3846     		mov	r0, r7
 2066 0028 1546     		mov	r5, r2
 2067 002a 0C46     		mov	r4, r1
 2068 002c 1E46     		mov	r6, r3
 2069 002e FFF7FEFF 		bl	sd_mmc_get_capacity
 2070 0032 820D     		lsrs	r2, r0, #22
 2071 0034 8302     		lsls	r3, r0, #10
 2072 0036 6A60     		str	r2, [r5, #4]
 2073 0038 2B60     		str	r3, [r5]
 2074 003a 3846     		mov	r0, r7
 2075 003c 0027     		movs	r7, #0
 2076 003e FFF7FEFF 		bl	sd_mmc_get_interface_speed
 2077 0042 10AD     		add	r5, sp, #64
 2078 0044 189B     		ldr	r3, [sp, #96]
 2079 0046 05F8347D 		strb	r7, [r5, #-52]!
 2080 004a 1860     		str	r0, [r3]
 2081 004c 2246     		mov	r2, r4
 2082 004e 1149     		ldr	r1, .L390
 2083 0050 2846     		mov	r0, r5
 2084 0052 FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 2085 0056 2846     		mov	r0, r5
 2086 0058 02AA     		add	r2, sp, #8
 2087 005a 01A9     		add	r1, sp, #4
 2088 005c FFF7FEFF 		bl	f_getfree
 2089 0060 78B9     		cbnz	r0, .L381
 2090 0062 029B     		ldr	r3, [sp, #8]
 2091 0064 019A     		ldr	r2, [sp, #4]
 2092 0066 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 2093 0068 0220     		movs	r0, #2
 2094 006a 5B02     		lsls	r3, r3, #9
 2095 006c A2FB0345 		umull	r4, r5, r2, r3
 2096 0070 4FEAE379 		asr	r9, r3, #31
 2097 0074 02FB0955 		mla	r5, r2, r9, r5
 2098 0078 199A     		ldr	r2, [sp, #100]
 2099 007a 1360     		str	r3, [r2]
 2100 007c C6E90045 		strd	r4, [r6]
 2101 0080 CDE7     		b	.L380
 2102              	.L381:
 2103 0082 0022     		movs	r2, #0
 2104 0084 0023     		movs	r3, #0
 2105 0086 1999     		ldr	r1, [sp, #100]
 2106 0088 0220     		movs	r0, #2
 2107 008a 0F60     		str	r7, [r1]
 2108 008c C6E90023 		strd	r2, [r6]
 2109 0090 C5E7     		b	.L380
ARM GAS  /tmp/ccseNMKE.s 			page 38


 2110              	.L391:
 2111 0092 00BF     		.align	2
 2112              	.L390:
 2113 0094 00000000 		.word	.LC34
 2114              		.size	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_, .-_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_
 2115              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2116              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2117              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2118              	_ZL28cpu_irq_prev_interrupt_state:
 2119 0000 00       		.space	1
 2120              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2121              		.align	2
 2122              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2123              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2124              	_ZL32cpu_irq_critical_section_counter:
 2125 0000 00000000 		.space	4
 2126              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 2127              		.align	2
 2128              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 2129              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 2130              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 2131 0000 00000000 		.space	4
 2132              		.section	.rodata.CSWTCH.46,"a",%progbits
 2133              		.align	2
 2134              		.set	.LANCHOR2,. + 0
 2135              		.type	CSWTCH.46, %object
 2136              		.size	CSWTCH.46, 40
 2137              	CSWTCH.46:
 2138 0000 78000000 		.word	.LC41
 2139 0004 7C000000 		.word	.LC42
 2140 0008 18000000 		.word	.LC15
 2141 000c 80000000 		.word	.LC43
 2142 0010 88000000 		.word	.LC44
 2143 0014 18000000 		.word	.LC15
 2144 0018 18000000 		.word	.LC15
 2145 001c 18000000 		.word	.LC15
 2146 0020 94000000 		.word	.LC45
 2147 0024 9C000000 		.word	.LC46
 2148              		.section	.rodata.CSWTCH.48,"a",%progbits
 2149              		.align	2
 2150              		.set	.LANCHOR1,. + 0
 2151              		.type	CSWTCH.48, %object
 2152              		.size	CSWTCH.48, 24
 2153              	CSWTCH.48:
 2154 0000 00000000 		.word	.LC35
 2155 0004 10000000 		.word	.LC36
 2156 0008 24000000 		.word	.LC37
 2157 000c 34000000 		.word	.LC38
 2158 0010 48000000 		.word	.LC39
 2159 0014 60000000 		.word	.LC40
 2160              		.section	.rodata._ZL10monthNames,"a",%progbits
 2161              		.align	2
 2162              		.set	.LANCHOR0,. + 0
 2163              		.type	_ZL10monthNames, %object
 2164              		.size	_ZL10monthNames, 52
 2165              	_ZL10monthNames:
 2166 0000 00000000 		.word	.LC4
ARM GAS  /tmp/ccseNMKE.s 			page 39


 2167 0004 B0000000 		.word	.LC47
 2168 0008 B4000000 		.word	.LC48
 2169 000c B8000000 		.word	.LC49
 2170 0010 BC000000 		.word	.LC50
 2171 0014 C0000000 		.word	.LC51
 2172 0018 C4000000 		.word	.LC52
 2173 001c C8000000 		.word	.LC53
 2174 0020 CC000000 		.word	.LC54
 2175 0024 D0000000 		.word	.LC55
 2176 0028 D4000000 		.word	.LC56
 2177 002c D8000000 		.word	.LC57
 2178 0030 DC000000 		.word	.LC58
 2179              		.section	.rodata._ZL11SdSpiCSPins,"a",%progbits
 2180              		.align	2
 2181              		.set	.LANCHOR3,. + 0
 2182              		.type	_ZL11SdSpiCSPins, %object
 2183              		.size	_ZL11SdSpiCSPins, 2
 2184              	_ZL11SdSpiCSPins:
 2185 0000 57       		.byte	87
 2186 0001 4D       		.byte	77
 2187              		.section	.rodata._ZL18SdWriteProtectPins,"a",%progbits
 2188              		.align	2
 2189              		.set	.LANCHOR4,. + 0
 2190              		.type	_ZL18SdWriteProtectPins, %object
 2191              		.size	_ZL18SdWriteProtectPins, 2
 2192              	_ZL18SdWriteProtectPins:
 2193 0000 FF       		.byte	-1
 2194 0001 FF       		.byte	-1
 2195              		.section	.rodata._ZN11MassStorage11CombineNameERK9StringRefPKcS4_.str1.4,"aMS",%progbits,1
 2196              		.align	2
 2197              	.LC1:
 2198 0000 436F6D62 		.ascii	"CombineName() buffer overflow\000"
 2198      696E654E 
 2198      616D6528 
 2198      29206275 
 2198      66666572 
 2199 001e 0000     		.space	2
 2200              	.LC2:
 2201 0020 3F3F3F3F 		.ascii	"?????\000"
 2201      3F00
 2202 0026 0000     		.space	2
 2203              	.LC3:
 2204 0028 66696C65 		.ascii	"file name too long\000"
 2204      206E616D 
 2204      6520746F 
 2204      6F206C6F 
 2204      6E6700
 2205              		.section	.rodata._ZN11MassStorage11GetCardInfoEjRyS0_RmS1_.str1.4,"aMS",%progbits,1
 2206              		.align	2
 2207              	.LC34:
 2208 0000 25753A2F 		.ascii	"%u:/\000"
 2208      00
 2209              		.section	.rodata._ZN11MassStorage12GetMonthNameEh.str1.4,"aMS",%progbits,1
 2210              		.align	2
 2211              	.LC4:
 2212 0000 3F3F3F00 		.ascii	"???\000"
 2213              		.section	.rodata._ZN11MassStorage13MakeDirectoryEPKcS1_.str1.4,"aMS",%progbits,1
ARM GAS  /tmp/ccseNMKE.s 			page 40


 2214              		.align	2
 2215              	.LC7:
 2216 0000 4661696C 		.ascii	"Failed to create directory %s\012\000"
 2216      65642074 
 2216      6F206372 
 2216      65617465 
 2216      20646972 
 2217              		.section	.rodata._ZN11MassStorage19SetLastModifiedTimeEPKcS1_l.str1.4,"aMS",%progbits,1
 2218              		.align	2
 2219              	.LC9:
 2220 0000 4661696C 		.ascii	"Failed to set last modified time for file '%s'\012\000"
 2220      65642074 
 2220      6F207365 
 2220      74206C61 
 2220      7374206D 
 2221              		.section	.rodata._ZN11MassStorage20RecordSimulationTimeEPKcm.str1.4,"aMS",%progbits,1
 2222              		.align	2
 2223              	.LC30:
 2224 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 2224      636F6465 
 2224      732F00
 2225 000b 00       		.space	1
 2226              	.LC31:
 2227 000c 4661696C 		.ascii	"Failed to append simulated print time to file %s\012"
 2227      65642074 
 2227      6F206170 
 2227      70656E64 
 2227      2073696D 
 2228 003d 00       		.ascii	"\000"
 2229 003e 0000     		.space	2
 2230              	.LC32:
 2231 0040 0A3B2053 		.ascii	"\012; Simulated print time\000"
 2231      696D756C 
 2231      61746564 
 2231      20707269 
 2231      6E742074 
 2232              	.LC33:
 2233 0058 25733A20 		.ascii	"%s: %lu\012\000"
 2233      256C750A 
 2233      00
 2234              		.section	.rodata._ZN11MassStorage4InitEv.str1.4,"aMS",%progbits,1
 2235              		.align	2
 2236              	.LC25:
 2237 0000 46696C65 		.ascii	"FileSystem\000"
 2237      53797374 
 2237      656D00
 2238 000b 00       		.space	1
 2239              	.LC26:
 2240 000c 44697253 		.ascii	"DirSearch\000"
 2240      65617263 
 2240      6800
 2241 0016 0000     		.space	2
 2242              	.LC27:
 2243 0018 53443000 		.ascii	"SD0\000"
 2244              	.LC28:
 2245 001c 53443100 		.ascii	"SD1\000"
 2246              	.LC29:
ARM GAS  /tmp/ccseNMKE.s 			page 41


 2247 0020 25730A00 		.ascii	"%s\012\000"
 2248              		.section	.rodata._ZN11MassStorage4SpinEv.str1.4,"aMS",%progbits,1
 2249              		.align	2
 2250              	.LC24:
 2251 0000 53442063 		.ascii	"SD card %u removed with %u file(s) open on it\012\000"
 2251      61726420 
 2251      25752072 
 2251      656D6F76 
 2251      65642077 
 2252              		.section	.rodata._ZN11MassStorage5MountEjRK9StringRefb.part.9.str1.4,"aMS",%progbits,1
 2253              		.align	2
 2254              	.LC12:
 2255 0000 556E6B6E 		.ascii	"Unknown error\000"
 2255      6F776E20 
 2255      6572726F 
 2255      7200
 2256 000e 0000     		.space	2
 2257              	.LC13:
 2258 0010 4D6200   		.ascii	"Mb\000"
 2259 0013 00       		.space	1
 2260              	.LC14:
 2261 0014 476200   		.ascii	"Gb\000"
 2262 0017 00       		.space	1
 2263              	.LC15:
 2264 0018 556E6B6E 		.ascii	"Unknown type\000"
 2264      6F776E20 
 2264      74797065 
 2264      00
 2265 0025 000000   		.space	3
 2266              	.LC16:
 2267 0028 53442063 		.ascii	"SD card has open file(s)\000"
 2267      61726420 
 2267      68617320 
 2267      6F70656E 
 2267      2066696C 
 2268 0041 000000   		.space	3
 2269              	.LC17:
 2270 0044 4E6F2053 		.ascii	"No SD card present\000"
 2270      44206361 
 2270      72642070 
 2270      72657365 
 2270      6E7400
 2271 0057 00       		.space	1
 2272              	.LC18:
 2273 0058 43616E6E 		.ascii	"Cannot initialise SD card %u: %s\000"
 2273      6F742069 
 2273      6E697469 
 2273      616C6973 
 2273      65205344 
 2274 0079 000000   		.space	3
 2275              	.LC19:
 2276 007c 43616E6E 		.ascii	"Cannot mount SD card %u: code %d\000"
 2276      6F74206D 
 2276      6F756E74 
 2276      20534420 
 2276      63617264 
 2277 009d 000000   		.space	3
ARM GAS  /tmp/ccseNMKE.s 			page 42


 2278              	.LC20:
 2279 00a0 25732063 		.ascii	"%s card mounted in slot %u, capacity %.2f%s\000"
 2279      61726420 
 2279      6D6F756E 
 2279      74656420 
 2279      696E2073 
 2280              		.section	.rodata._ZN11MassStorage5MountEjRK9StringRefb.str1.4,"aMS",%progbits,1
 2281              		.align	2
 2282              	.LC21:
 2283 0000 53442063 		.ascii	"SD card number out of range\000"
 2283      61726420 
 2283      6E756D62 
 2283      6572206F 
 2283      7574206F 
 2284              		.section	.rodata._ZN11MassStorage6DeleteEPKcS1_b.str1.4,"aMS",%progbits,1
 2285              		.align	2
 2286              	.LC5:
 2287 0000 43616E6E 		.ascii	"Cannot delete file %s because it is open\012\000"
 2287      6F742064 
 2287      656C6574 
 2287      65206669 
 2287      6C652025 
 2288 002a 0000     		.space	2
 2289              	.LC6:
 2290 002c 4661696C 		.ascii	"Failed to delete file %s\012\000"
 2290      65642074 
 2290      6F206465 
 2290      6C657465 
 2290      2066696C 
 2291              		.section	.rodata._ZN11MassStorage6RenameEPKcS1_.str1.4,"aMS",%progbits,1
 2292              		.align	2
 2293              	.LC8:
 2294 0000 4661696C 		.ascii	"Failed to rename file or directory %s to %s\012\000"
 2294      65642074 
 2294      6F207265 
 2294      6E616D65 
 2294      2066696C 
 2295              		.section	.rodata._ZN11MassStorage7UnmountEjRK9StringRef.str1.4,"aMS",%progbits,1
 2296              		.align	2
 2297              	.LC22:
 2298 0000 53442063 		.ascii	"SD card %u may now be removed\000"
 2298      61726420 
 2298      2575206D 
 2298      6179206E 
 2298      6F772062 
 2299 001e 0000     		.space	2
 2300              	.LC23:
 2301 0020 20282575 		.ascii	" (%u file(s) were closed)\000"
 2301      2066696C 
 2301      65287329 
 2301      20776572 
 2301      6520636C 
 2302              		.section	.rodata._ZN11MassStorage8OpenFileEPKcS1_8OpenMode.str1.4,"aMS",%progbits,1
 2303              		.align	2
 2304              	.LC0:
 2305 0000 4D617820 		.ascii	"Max open file count exceeded.\012\000"
 2305      6F70656E 
ARM GAS  /tmp/ccseNMKE.s 			page 43


 2305      2066696C 
 2305      6520636F 
 2305      756E7420 
 2306              		.section	.rodata._ZN11MassStorage9FindFirstEPKcR8FileInfo.str1.4,"aMS",%progbits,1
 2307              		.align	2
 2308              	.LC10:
 2309 0000 2E00     		.ascii	".\000"
 2310 0002 0000     		.space	2
 2311              	.LC11:
 2312 0004 2E2E00   		.ascii	"..\000"
 2313              		.section	.rodata.str1.4,"aMS",%progbits,1
 2314              		.align	2
 2315              	.LC35:
 2316 0000 43617264 		.ascii	"Card not found\000"
 2316      206E6F74 
 2316      20666F75 
 2316      6E6400
 2317 000f 00       		.space	1
 2318              	.LC36:
 2319 0010 43617264 		.ascii	"Card is unusable\000"
 2319      20697320 
 2319      756E7573 
 2319      61626C65 
 2319      00
 2320 0021 000000   		.space	3
 2321              	.LC37:
 2322 0024 536C6F74 		.ascii	"Slot unknown\000"
 2322      20756E6B 
 2322      6E6F776E 
 2322      00
 2323 0031 000000   		.space	3
 2324              	.LC38:
 2325 0034 436F6D6D 		.ascii	"Communication error\000"
 2325      756E6963 
 2325      6174696F 
 2325      6E206572 
 2325      726F7200 
 2326              	.LC39:
 2327 0048 496C6C65 		.ascii	"Illegal input parameter\000"
 2327      67616C20 
 2327      696E7075 
 2327      74207061 
 2327      72616D65 
 2328              	.LC40:
 2329 0060 43617264 		.ascii	"Card write protected\000"
 2329      20777269 
 2329      74652070 
 2329      726F7465 
 2329      63746564 
 2330 0075 000000   		.space	3
 2331              	.LC41:
 2332 0078 534400   		.ascii	"SD\000"
 2333 007b 00       		.space	1
 2334              	.LC42:
 2335 007c 4D4D4300 		.ascii	"MMC\000"
 2336              	.LC43:
 2337 0080 5344494F 		.ascii	"SDIO\000"
ARM GAS  /tmp/ccseNMKE.s 			page 44


 2337      00
 2338 0085 000000   		.space	3
 2339              	.LC44:
 2340 0088 53442043 		.ascii	"SD COMBO\000"
 2340      4F4D424F 
 2340      00
 2341 0091 000000   		.space	3
 2342              	.LC45:
 2343 0094 53444843 		.ascii	"SDHC\000"
 2343      00
 2344 0099 000000   		.space	3
 2345              	.LC46:
 2346 009c 4D4D4320 		.ascii	"MMC High Capacity\000"
 2346      48696768 
 2346      20436170 
 2346      61636974 
 2346      7900
 2347 00ae 0000     		.space	2
 2348              	.LC47:
 2349 00b0 4A616E00 		.ascii	"Jan\000"
 2350              	.LC48:
 2351 00b4 46656200 		.ascii	"Feb\000"
 2352              	.LC49:
 2353 00b8 4D617200 		.ascii	"Mar\000"
 2354              	.LC50:
 2355 00bc 41707200 		.ascii	"Apr\000"
 2356              	.LC51:
 2357 00c0 4D617900 		.ascii	"May\000"
 2358              	.LC52:
 2359 00c4 4A756E00 		.ascii	"Jun\000"
 2360              	.LC53:
 2361 00c8 4A756C00 		.ascii	"Jul\000"
 2362              	.LC54:
 2363 00cc 41756700 		.ascii	"Aug\000"
 2364              	.LC55:
 2365 00d0 53657000 		.ascii	"Sep\000"
 2366              	.LC56:
 2367 00d4 4F637400 		.ascii	"Oct\000"
 2368              	.LC57:
 2369 00d8 4E6F7600 		.ascii	"Nov\000"
 2370              	.LC58:
 2371 00dc 44656300 		.ascii	"Dec\000"
 2372              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
