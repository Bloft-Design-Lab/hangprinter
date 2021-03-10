ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdIyxba.s 			page 1


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
  13              		.file	"diskio.cpp"
  14              		.text
  15              		.section	.text._Z30DiskioGetAndClearMaxRetryCountv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z30DiskioGetAndClearMaxRetryCountv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z30DiskioGetAndClearMaxRetryCountv, %function
  24              	_Z30DiskioGetAndClearMaxRetryCountv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 024B     		ldr	r3, .L3
  29 0002 0022     		movs	r2, #0
  30 0004 1868     		ldr	r0, [r3]
  31 0006 1A60     		str	r2, [r3]
  32 0008 7047     		bx	lr
  33              	.L4:
  34 000a 00BF     		.align	2
  35              	.L3:
  36 000c 00000000 		.word	.LANCHOR0
  37              		.size	_Z30DiskioGetAndClearMaxRetryCountv, .-_Z30DiskioGetAndClearMaxRetryCountv
  38              		.section	.text.disk_initialize,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	disk_initialize
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  46              		.type	disk_initialize, %function
  47              	disk_initialize:
  48              		@ args = 0, pretend = 0, frame = 8
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50 0000 10B5     		push	{r4, lr}
  51 0002 0228     		cmp	r0, #2
  52 0004 82B0     		sub	sp, sp, #8
  53 0006 18D8     		bhi	.L11
  54 0008 0446     		mov	r4, r0
  55 000a D0B9     		cbnz	r0, .L15
  56 000c 0146     		mov	r1, r0
  57              	.L7:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdIyxba.s 			page 2


  58 000e 4FF0FF32 		mov	r2, #-1
  59 0012 6846     		mov	r0, sp
  60 0014 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
  61 0018 2046     		mov	r0, r4
  62 001a FFF7FEFF 		bl	mem_test_unit_ready
  63 001e 0328     		cmp	r0, #3
  64 0020 13D1     		bne	.L8
  65 0022 2046     		mov	r0, r4
  66 0024 FFF7FEFF 		bl	mem_test_unit_ready
  67 0028 0328     		cmp	r0, #3
  68 002a 0ED1     		bne	.L8
  69              	.L10:
  70 002c 0124     		movs	r4, #1
  71              	.L9:
  72 002e 6846     		mov	r0, sp
  73 0030 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
  74 0034 2046     		mov	r0, r4
  75 0036 02B0     		add	sp, sp, #8
  76              		@ sp needed
  77 0038 10BD     		pop	{r4, pc}
  78              	.L11:
  79 003a 0124     		movs	r4, #1
  80 003c 2046     		mov	r0, r4
  81 003e 02B0     		add	sp, sp, #8
  82              		@ sp needed
  83 0040 10BD     		pop	{r4, pc}
  84              	.L15:
  85 0042 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
  86 0046 0146     		mov	r1, r0
  87 0048 E1E7     		b	.L7
  88              	.L8:
  89 004a 0028     		cmp	r0, #0
  90 004c EED1     		bne	.L10
  91 004e 2046     		mov	r0, r4
  92 0050 FFF7FEFF 		bl	mem_wr_protect
  93 0054 0028     		cmp	r0, #0
  94 0056 14BF     		ite	ne
  95 0058 0424     		movne	r4, #4
  96 005a 0024     		moveq	r4, #0
  97 005c E7E7     		b	.L9
  98              		.size	disk_initialize, .-disk_initialize
  99 005e 00BF     		.section	.text.disk_status,"ax",%progbits
 100              		.align	1
 101              		.p2align 2,,3
 102              		.global	disk_status
 103              		.syntax unified
 104              		.thumb
 105              		.thumb_func
 106              		.fpu fpv4-sp-d16
 107              		.type	disk_status, %function
 108              	disk_status:
 109              		@ args = 0, pretend = 0, frame = 8
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111 0000 10B5     		push	{r4, lr}
 112 0002 0446     		mov	r4, r0
 113 0004 82B0     		sub	sp, sp, #8
 114 0006 D0B9     		cbnz	r0, .L24
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdIyxba.s 			page 3


 115 0008 0146     		mov	r1, r0
 116              	.L17:
 117 000a 6846     		mov	r0, sp
 118 000c 4FF0FF32 		mov	r2, #-1
 119 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 120 0014 2046     		mov	r0, r4
 121 0016 FFF7FEFF 		bl	mem_test_unit_ready
 122 001a 48B1     		cbz	r0, .L22
 123 001c 0228     		cmp	r0, #2
 124 001e 6846     		mov	r0, sp
 125 0020 0CBF     		ite	eq
 126 0022 0324     		moveq	r4, #3
 127 0024 0124     		movne	r4, #1
 128 0026 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 129 002a 2046     		mov	r0, r4
 130 002c 02B0     		add	sp, sp, #8
 131              		@ sp needed
 132 002e 10BD     		pop	{r4, pc}
 133              	.L22:
 134 0030 0446     		mov	r4, r0
 135 0032 6846     		mov	r0, sp
 136 0034 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 137 0038 2046     		mov	r0, r4
 138 003a 02B0     		add	sp, sp, #8
 139              		@ sp needed
 140 003c 10BD     		pop	{r4, pc}
 141              	.L24:
 142 003e FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 143 0042 0146     		mov	r1, r0
 144 0044 E1E7     		b	.L17
 145              		.size	disk_status, .-disk_status
 146 0046 00BF     		.section	.text.disk_read,"ax",%progbits
 147              		.align	1
 148              		.p2align 2,,3
 149              		.global	disk_read
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv4-sp-d16
 154              		.type	disk_read, %function
 155              	disk_read:
 156              		@ args = 0, pretend = 0, frame = 16
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 159 0004 8846     		mov	r8, r1
 160 0006 84B0     		sub	sp, sp, #16
 161 0008 1646     		mov	r6, r2
 162 000a 1F46     		mov	r7, r3
 163 000c 0446     		mov	r4, r0
 164 000e 0028     		cmp	r0, #0
 165 0010 3CD1     		bne	.L39
 166 0012 0146     		mov	r1, r0
 167              	.L26:
 168 0014 4FF0FF32 		mov	r2, #-1
 169 0018 02A8     		add	r0, sp, #8
 170 001a FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 171 001e 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdIyxba.s 			page 4


 172 0020 FFF7FEFF 		bl	mem_sector_size
 173 0024 0546     		mov	r5, r0
 174 0026 38B9     		cbnz	r0, .L27
 175              	.L30:
 176 0028 0124     		movs	r4, #1
 177              	.L28:
 178 002a 02A8     		add	r0, sp, #8
 179 002c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 180 0030 2046     		mov	r0, r4
 181 0032 04B0     		add	sp, sp, #16
 182              		@ sp needed
 183 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 184              	.L27:
 185 0038 01A9     		add	r1, sp, #4
 186 003a 2046     		mov	r0, r4
 187 003c FFF7FEFF 		bl	mem_read_capacity
 188 0040 019A     		ldr	r2, [sp, #4]
 189 0042 17FB05F3 		smulbb	r3, r7, r5
 190 0046 3344     		add	r3, r3, r6
 191 0048 02FB0555 		mla	r5, r2, r5, r5
 192 004c AB42     		cmp	r3, r5
 193 004e 21D8     		bhi	.L33
 194 0050 3B46     		mov	r3, r7
 195 0052 4246     		mov	r2, r8
 196 0054 3146     		mov	r1, r6
 197 0056 2046     		mov	r0, r4
 198 0058 0025     		movs	r5, #0
 199 005a FFF7FEFF 		bl	memory_2_ram
 200 005e 70B1     		cbz	r0, .L29
 201              	.L40:
 202 0060 0135     		adds	r5, r5, #1
 203 0062 032D     		cmp	r5, #3
 204 0064 4FF01E00 		mov	r0, #30
 205 0068 DED0     		beq	.L30
 206 006a FFF7FEFF 		bl	_Z5delaym
 207 006e 3B46     		mov	r3, r7
 208 0070 4246     		mov	r2, r8
 209 0072 3146     		mov	r1, r6
 210 0074 2046     		mov	r0, r4
 211 0076 FFF7FEFF 		bl	memory_2_ram
 212 007a 0028     		cmp	r0, #0
 213 007c F0D1     		bne	.L40
 214              	.L29:
 215 007e 074B     		ldr	r3, .L41
 216 0080 1A68     		ldr	r2, [r3]
 217 0082 AA42     		cmp	r2, r5
 218 0084 08D2     		bcs	.L34
 219 0086 1D60     		str	r5, [r3]
 220 0088 0446     		mov	r4, r0
 221 008a CEE7     		b	.L28
 222              	.L39:
 223 008c FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 224 0090 0146     		mov	r1, r0
 225 0092 BFE7     		b	.L26
 226              	.L33:
 227 0094 0424     		movs	r4, #4
 228 0096 C8E7     		b	.L28
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdIyxba.s 			page 5


 229              	.L34:
 230 0098 0446     		mov	r4, r0
 231 009a C6E7     		b	.L28
 232              	.L42:
 233              		.align	2
 234              	.L41:
 235 009c 00000000 		.word	.LANCHOR0
 236              		.size	disk_read, .-disk_read
 237              		.section	.text.disk_write,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	disk_write
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv4-sp-d16
 245              		.type	disk_write, %function
 246              	disk_write:
 247              		@ args = 0, pretend = 0, frame = 16
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 250 0004 8846     		mov	r8, r1
 251 0006 84B0     		sub	sp, sp, #16
 252 0008 1646     		mov	r6, r2
 253 000a 1F46     		mov	r7, r3
 254 000c 0446     		mov	r4, r0
 255 000e 0028     		cmp	r0, #0
 256 0010 3CD1     		bne	.L57
 257 0012 0146     		mov	r1, r0
 258              	.L44:
 259 0014 4FF0FF32 		mov	r2, #-1
 260 0018 02A8     		add	r0, sp, #8
 261 001a FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 262 001e 2046     		mov	r0, r4
 263 0020 FFF7FEFF 		bl	mem_sector_size
 264 0024 0546     		mov	r5, r0
 265 0026 38B9     		cbnz	r0, .L45
 266              	.L48:
 267 0028 0124     		movs	r4, #1
 268              	.L46:
 269 002a 02A8     		add	r0, sp, #8
 270 002c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 271 0030 2046     		mov	r0, r4
 272 0032 04B0     		add	sp, sp, #16
 273              		@ sp needed
 274 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 275              	.L45:
 276 0038 01A9     		add	r1, sp, #4
 277 003a 2046     		mov	r0, r4
 278 003c FFF7FEFF 		bl	mem_read_capacity
 279 0040 019A     		ldr	r2, [sp, #4]
 280 0042 17FB05F3 		smulbb	r3, r7, r5
 281 0046 3344     		add	r3, r3, r6
 282 0048 02FB0555 		mla	r5, r2, r5, r5
 283 004c AB42     		cmp	r3, r5
 284 004e 21D8     		bhi	.L51
 285 0050 3B46     		mov	r3, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdIyxba.s 			page 6


 286 0052 4246     		mov	r2, r8
 287 0054 3146     		mov	r1, r6
 288 0056 2046     		mov	r0, r4
 289 0058 0025     		movs	r5, #0
 290 005a FFF7FEFF 		bl	ram_2_memory
 291 005e 70B1     		cbz	r0, .L47
 292              	.L58:
 293 0060 0135     		adds	r5, r5, #1
 294 0062 032D     		cmp	r5, #3
 295 0064 4FF01E00 		mov	r0, #30
 296 0068 DED0     		beq	.L48
 297 006a FFF7FEFF 		bl	_Z5delaym
 298 006e 3B46     		mov	r3, r7
 299 0070 4246     		mov	r2, r8
 300 0072 3146     		mov	r1, r6
 301 0074 2046     		mov	r0, r4
 302 0076 FFF7FEFF 		bl	ram_2_memory
 303 007a 0028     		cmp	r0, #0
 304 007c F0D1     		bne	.L58
 305              	.L47:
 306 007e 074B     		ldr	r3, .L59
 307 0080 1A68     		ldr	r2, [r3]
 308 0082 AA42     		cmp	r2, r5
 309 0084 08D2     		bcs	.L52
 310 0086 1D60     		str	r5, [r3]
 311 0088 0446     		mov	r4, r0
 312 008a CEE7     		b	.L46
 313              	.L57:
 314 008c FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 315 0090 0146     		mov	r1, r0
 316 0092 BFE7     		b	.L44
 317              	.L51:
 318 0094 0424     		movs	r4, #4
 319 0096 C8E7     		b	.L46
 320              	.L52:
 321 0098 0446     		mov	r4, r0
 322 009a C6E7     		b	.L46
 323              	.L60:
 324              		.align	2
 325              	.L59:
 326 009c 00000000 		.word	.LANCHOR0
 327              		.size	disk_write, .-disk_write
 328              		.section	.text.disk_ioctl,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	disk_ioctl
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv4-sp-d16
 336              		.type	disk_ioctl, %function
 337              	disk_ioctl:
 338              		@ args = 0, pretend = 0, frame = 16
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340 0000 70B5     		push	{r4, r5, r6, lr}
 341 0002 0446     		mov	r4, r0
 342 0004 84B0     		sub	sp, sp, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdIyxba.s 			page 7


 343 0006 1546     		mov	r5, r2
 344 0008 0329     		cmp	r1, #3
 345 000a 60D8     		bhi	.L74
 346 000c DFE801F0 		tbb	[pc, r1]
 347              	.L64:
 348 0010 30       		.byte	(.L63-.L64)/2
 349 0011 1B       		.byte	(.L65-.L64)/2
 350 0012 08       		.byte	(.L66-.L64)/2
 351 0013 02       		.byte	(.L67-.L64)/2
 352              		.p2align 1
 353              	.L67:
 354 0014 0123     		movs	r3, #1
 355 0016 1360     		str	r3, [r2]
 356 0018 0024     		movs	r4, #0
 357              	.L62:
 358 001a 2046     		mov	r0, r4
 359 001c 04B0     		add	sp, sp, #16
 360              		@ sp needed
 361 001e 70BD     		pop	{r4, r5, r6, pc}
 362              	.L66:
 363 0020 0028     		cmp	r0, #0
 364 0022 3ED1     		bne	.L80
 365 0024 0146     		mov	r1, r0
 366              	.L69:
 367 0026 02AE     		add	r6, sp, #8
 368 0028 4FF0FF32 		mov	r2, #-1
 369 002c 3046     		mov	r0, r6
 370 002e FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 371 0032 2046     		mov	r0, r4
 372 0034 FFF7FEFF 		bl	mem_sector_size
 373 0038 0828     		cmp	r0, #8
 374 003a 3AD9     		bls	.L81
 375              	.L70:
 376 003c 3046     		mov	r0, r6
 377 003e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 378 0042 0124     		movs	r4, #1
 379 0044 E9E7     		b	.L62
 380              	.L65:
 381 0046 40BB     		cbnz	r0, .L82
 382 0048 0146     		mov	r1, r0
 383              	.L68:
 384 004a 4FF0FF32 		mov	r2, #-1
 385 004e 02A8     		add	r0, sp, #8
 386 0050 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 387 0054 01A9     		add	r1, sp, #4
 388 0056 2046     		mov	r0, r4
 389 0058 FFF7FEFF 		bl	mem_read_capacity
 390 005c 019B     		ldr	r3, [sp, #4]
 391 005e 0133     		adds	r3, r3, #1
 392 0060 02A8     		add	r0, sp, #8
 393 0062 2B60     		str	r3, [r5]
 394 0064 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 395 0068 0024     		movs	r4, #0
 396 006a 2046     		mov	r0, r4
 397 006c 04B0     		add	sp, sp, #16
 398              		@ sp needed
 399 006e 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdIyxba.s 			page 8


 400              	.L63:
 401 0070 D8B9     		cbnz	r0, .L83
 402 0072 0146     		mov	r1, r0
 403              	.L72:
 404 0074 02AE     		add	r6, sp, #8
 405 0076 4FF0FF32 		mov	r2, #-1
 406 007a 3046     		mov	r0, r6
 407 007c FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 408 0080 2046     		mov	r0, r4
 409 0082 FFF7FEFF 		bl	mem_test_unit_ready
 410 0086 0028     		cmp	r0, #0
 411 0088 3046     		mov	r0, r6
 412 008a 0CBF     		ite	eq
 413 008c 0024     		moveq	r4, #0
 414 008e 0324     		movne	r4, #3
 415 0090 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 416 0094 2046     		mov	r0, r4
 417 0096 04B0     		add	sp, sp, #16
 418              		@ sp needed
 419 0098 70BD     		pop	{r4, r5, r6, pc}
 420              	.L82:
 421 009a FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 422 009e 0146     		mov	r1, r0
 423 00a0 D3E7     		b	.L68
 424              	.L80:
 425 00a2 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 426 00a6 0146     		mov	r1, r0
 427 00a8 BDE7     		b	.L69
 428              	.L83:
 429 00aa FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 430 00ae 0146     		mov	r1, r0
 431 00b0 E0E7     		b	.L72
 432              	.L81:
 433 00b2 4FF48B74 		mov	r4, #278
 434 00b6 C440     		lsrs	r4, r4, r0
 435 00b8 E443     		mvns	r4, r4
 436 00ba 14F00104 		ands	r4, r4, #1
 437 00be BDD1     		bne	.L70
 438 00c0 2C70     		strb	r4, [r5]
 439 00c2 3046     		mov	r0, r6
 440 00c4 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 441 00c8 2046     		mov	r0, r4
 442 00ca 04B0     		add	sp, sp, #16
 443              		@ sp needed
 444 00cc 70BD     		pop	{r4, r5, r6, pc}
 445              	.L74:
 446 00ce 0424     		movs	r4, #4
 447 00d0 A3E7     		b	.L62
 448              		.size	disk_ioctl, .-disk_ioctl
 449 00d2 00BF     		.section	.bss._ZL20highestSdRetriesDone,"aw",%nobits
 450              		.align	2
 451              		.set	.LANCHOR0,. + 0
 452              		.type	_ZL20highestSdRetriesDone, %object
 453              		.size	_ZL20highestSdRetriesDone, 4
 454              	_ZL20highestSdRetriesDone:
 455 0000 00000000 		.space	4
 456              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdIyxba.s 			page 9


 457              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 458              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 459              	_ZL28cpu_irq_prev_interrupt_state:
 460 0000 00       		.space	1
 461              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 462              		.align	2
 463              		.type	_ZL32cpu_irq_critical_section_counter, %object
 464              		.size	_ZL32cpu_irq_critical_section_counter, 4
 465              	_ZL32cpu_irq_critical_section_counter:
 466 0000 00000000 		.space	4
 467              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
