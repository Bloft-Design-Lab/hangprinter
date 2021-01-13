ARM GAS  /tmp/ccQDHeB9.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"sleep.c"
  12              		.section	.text.pmc_sleep,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	pmc_sleep
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	pmc_sleep, %function
  21              	pmc_sleep:
  22              		@ args = 0, pretend = 0, frame = 8
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  25 0004 431E     		subs	r3, r0, #1
  26 0006 83B0     		sub	sp, sp, #12
  27 0008 042B     		cmp	r3, #4
  28 000a 00F2B080 		bhi	.L1
  29 000e DFE813F0 		tbh	[pc, r3, lsl #1]
  30              	.L4:
  31 0012 C300     		.2byte	(.L3-.L4)/2
  32 0014 C300     		.2byte	(.L3-.L4)/2
  33 0016 0500     		.2byte	(.L5-.L4)/2
  34 0018 0500     		.2byte	(.L5-.L4)/2
  35 001a B100     		.2byte	(.L6-.L4)/2
  36              		.p2align 1
  37              	.L5:
  38 001c 0328     		cmp	r0, #3
  39 001e 0446     		mov	r4, r0
  40 0020 0CBF     		ite	eq
  41 0022 0020     		moveq	r0, #0
  42 0024 4FF40010 		movne	r0, #2097152
  43 0028 FFF7FEFF 		bl	pmc_set_flash_in_wait_mode
  44              		.syntax unified
  45              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  46 002c 72B6     		cpsid i
  47              	@ 0 "" 2
  48              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  49 002e BFF35F8F 		dmb
  50              	@ 0 "" 2
  51              		.thumb
  52              		.syntax unified
  53 0032 7F4D     		ldr	r5, .L77
  54 0034 DFF82092 		ldr	r9, .L77+40
  55 0038 7E4B     		ldr	r3, .L77+4
  56 003a 7F49     		ldr	r1, .L77+8
  57 003c 0122     		movs	r2, #1
ARM GAS  /tmp/ccQDHeB9.s 			page 2


  58 003e 0020     		movs	r0, #0
  59 0040 2870     		strb	r0, [r5]
  60 0042 89F80020 		strb	r2, [r9]
  61 0046 D3F82080 		ldr	r8, [r3, #32]
  62 004a D3F830B0 		ldr	fp, [r3, #48]
  63 004e D1F800A0 		ldr	r10, [r1]
  64 0052 9F6A     		ldr	r7, [r3, #40]
  65 0054 DA6A     		ldr	r2, [r3, #44]
  66 0056 0192     		str	r2, [sp, #4]
  67 0058 48F45C11 		orr	r1, r8, #3604480
  68 005c 0BF00306 		and	r6, fp, #3
  69 0060 41F00801 		orr	r1, r1, #8
  70 0064 012E     		cmp	r6, #1
  71 0066 1962     		str	r1, [r3, #32]
  72 0068 00F2A780 		bhi	.L74
  73 006c 5846     		mov	r0, fp
  74              	.L9:
  75 006e 10F0700F 		tst	r0, #112
  76 0072 06D0     		beq	.L14
  77 0074 6F49     		ldr	r1, .L77+4
  78 0076 20F07000 		bic	r0, r0, #112
  79 007a 0863     		str	r0, [r1, #48]
  80              	.L13:
  81 007c 8B6E     		ldr	r3, [r1, #104]
  82 007e 1807     		lsls	r0, r3, #28
  83 0080 FCD5     		bpl	.L13
  84              	.L14:
  85 0082 FFF7FEFF 		bl	pmc_disable_pllack
  86 0086 FFF7FEFF 		bl	pmc_disable_pllbck
  87 008a 6A49     		ldr	r1, .L77+4
  88              	.L12:
  89 008c 8B6E     		ldr	r3, [r1, #104]
  90 008e 9A03     		lsls	r2, r3, #14
  91 0090 FCD5     		bpl	.L12
  92 0092 0B6A     		ldr	r3, [r1, #32]
  93 0094 6748     		ldr	r0, .L77+4
  94 0096 23F09B73 		bic	r3, r3, #20316160
  95 009a 23F48033 		bic	r3, r3, #65536
  96 009e 43F45C13 		orr	r3, r3, #3604480
  97 00a2 0B62     		str	r3, [r1, #32]
  98              	.L15:
  99 00a4 836E     		ldr	r3, [r0, #104]
 100 00a6 DB03     		lsls	r3, r3, #15
 101 00a8 FCD5     		bpl	.L15
 102 00aa 634B     		ldr	r3, .L77+8
 103 00ac 2AF47061 		bic	r1, r10, #3840
 104 00b0 042C     		cmp	r4, #4
 105 00b2 1960     		str	r1, [r3]
 106 00b4 00F0B280 		beq	.L75
 107              	.L16:
 108 00b8 0123     		movs	r3, #1
 109 00ba 2B70     		strb	r3, [r5]
 110              		.syntax unified
 111              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 112 00bc BFF35F8F 		dmb
 113              	@ 0 "" 2
 114              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
ARM GAS  /tmp/ccQDHeB9.s 			page 3


 115 00c0 62B6     		cpsie i
 116              	@ 0 "" 2
 117              		.thumb
 118              		.syntax unified
 119 00c2 FFF7FEFF 		bl	pmc_enable_waitmode
 120              		.syntax unified
 121              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 122 00c6 72B6     		cpsid i
 123              	@ 0 "" 2
 124              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 125 00c8 BFF35F8F 		dmb
 126              	@ 0 "" 2
 127              		.thumb
 128              		.syntax unified
 129 00cc 0023     		movs	r3, #0
 130 00ce 18F0020F 		tst	r8, #2
 131 00d2 2B70     		strb	r3, [r5]
 132 00d4 7AD0     		beq	.L17
 133 00d6 5749     		ldr	r1, .L77+4
 134 00d8 5848     		ldr	r0, .L77+12
 135 00da 0C6A     		ldr	r4, [r1, #32]
 136 00dc 584B     		ldr	r3, .L77+16
 137 00de 2040     		ands	r0, r0, r4
 138 00e0 0343     		orrs	r3, r3, r0
 139 00e2 0B62     		str	r3, [r1, #32]
 140              	.L72:
 141 00e4 0B6A     		ldr	r3, [r1, #32]
 142 00e6 23F45C13 		bic	r3, r3, #3604480
 143 00ea 23F07803 		bic	r3, r3, #120
 144 00ee 43F45C13 		orr	r3, r3, #3604480
 145 00f2 0B62     		str	r3, [r1, #32]
 146              	.L18:
 147 00f4 5349     		ldr	r1, .L77+20
 148 00f6 3940     		ands	r1, r1, r7
 149 00f8 21B1     		cbz	r1, .L25
 150 00fa 4E4B     		ldr	r3, .L77+4
 151 00fc 47F00057 		orr	r7, r7, #536870912
 152 0100 9F62     		str	r7, [r3, #40]
 153 0102 0221     		movs	r1, #2
 154              	.L25:
 155 0104 4F4B     		ldr	r3, .L77+20
 156 0106 019A     		ldr	r2, [sp, #4]
 157 0108 1340     		ands	r3, r3, r2
 158 010a 1BB1     		cbz	r3, .L26
 159 010c 494B     		ldr	r3, .L77+4
 160 010e 41F00401 		orr	r1, r1, #4
 161 0112 DA62     		str	r2, [r3, #44]
 162              	.L26:
 163 0114 022E     		cmp	r6, #2
 164 0116 7CD0     		beq	.L76
 165 0118 032E     		cmp	r6, #3
 166 011a 03D1     		bne	.L27
 167 011c 4548     		ldr	r0, .L77+4
 168              	.L29:
 169 011e 836E     		ldr	r3, [r0, #104]
 170 0120 5C07     		lsls	r4, r3, #29
 171 0122 FCD5     		bpl	.L29
ARM GAS  /tmp/ccQDHeB9.s 			page 4


 172              	.L27:
 173 0124 4348     		ldr	r0, .L77+4
 174 0126 046B     		ldr	r4, [r0, #48]
 175 0128 0BF07003 		and	r3, fp, #112
 176 012c 24F07004 		bic	r4, r4, #112
 177 0130 2343     		orrs	r3, r3, r4
 178 0132 0363     		str	r3, [r0, #48]
 179              	.L30:
 180 0134 836E     		ldr	r3, [r0, #104]
 181 0136 1A07     		lsls	r2, r3, #28
 182 0138 FCD5     		bpl	.L30
 183 013a 3F4B     		ldr	r3, .L77+8
 184 013c 3D4C     		ldr	r4, .L77+4
 185 013e C3F800A0 		str	r10, [r3]
 186 0142 C0F830B0 		str	fp, [r0, #48]
 187              	.L31:
 188 0146 A36E     		ldr	r3, [r4, #104]
 189 0148 1B07     		lsls	r3, r3, #28
 190 014a FCD5     		bpl	.L31
 191 014c 394A     		ldr	r2, .L77+4
 192              	.L55:
 193 014e 936E     		ldr	r3, [r2, #104]
 194 0150 0B42     		tst	r3, r1
 195 0152 FCD0     		beq	.L55
 196 0154 3C4C     		ldr	r4, .L77+24
 197 0156 2368     		ldr	r3, [r4]
 198 0158 0026     		movs	r6, #0
 199 015a 89F80060 		strb	r6, [r9]
 200 015e 0BB1     		cbz	r3, .L33
 201 0160 9847     		blx	r3
 202 0162 2660     		str	r6, [r4]
 203              	.L33:
 204 0164 0123     		movs	r3, #1
 205 0166 2B70     		strb	r3, [r5]
 206              		.syntax unified
 207              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 208 0168 BFF35F8F 		dmb
 209              	@ 0 "" 2
 210              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 211 016c 62B6     		cpsie i
 212              	@ 0 "" 2
 213              		.thumb
 214              		.syntax unified
 215              	.L1:
 216 016e 03B0     		add	sp, sp, #12
 217              		@ sp needed
 218 0170 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 219              	.L6:
 220 0174 354A     		ldr	r2, .L77+28
 221 0176 364C     		ldr	r4, .L77+32
 222 0178 1369     		ldr	r3, [r2, #16]
 223 017a 2D49     		ldr	r1, .L77
 224 017c 354D     		ldr	r5, .L77+36
 225 017e 43F00403 		orr	r3, r3, #4
 226 0182 0120     		movs	r0, #1
 227 0184 1361     		str	r3, [r2, #16]
 228 0186 2560     		str	r5, [r4]
ARM GAS  /tmp/ccQDHeB9.s 			page 5


 229 0188 0870     		strb	r0, [r1]
 230              		.syntax unified
 231              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 232 018a BFF35F8F 		dmb
 233              	@ 0 "" 2
 234              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 235 018e 62B6     		cpsie i
 236              	@ 0 "" 2
 237              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 238 0190 30BF     		wfi
 239              	@ 0 "" 2
 240              		.thumb
 241              		.syntax unified
 242 0192 03B0     		add	sp, sp, #12
 243              		@ sp needed
 244 0194 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 245              	.L3:
 246 0198 2C4A     		ldr	r2, .L77+28
 247 019a 2549     		ldr	r1, .L77
 248 019c 1369     		ldr	r3, [r2, #16]
 249 019e 0120     		movs	r0, #1
 250 01a0 23F00403 		bic	r3, r3, #4
 251 01a4 1361     		str	r3, [r2, #16]
 252 01a6 0870     		strb	r0, [r1]
 253              		.syntax unified
 254              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 255 01a8 BFF35F8F 		dmb
 256              	@ 0 "" 2
 257              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 258 01ac 62B6     		cpsie i
 259              	@ 0 "" 2
 260              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 261 01ae BFF34F8F 		dsb
 262              	@ 0 "" 2
 263              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 264 01b2 30BF     		wfi
 265              	@ 0 "" 2
 266              		.thumb
 267              		.syntax unified
 268 01b4 03B0     		add	sp, sp, #12
 269              		@ sp needed
 270 01b6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 271              	.L74:
 272 01ba 2BF00300 		bic	r0, fp, #3
 273 01be 40F00100 		orr	r0, r0, #1
 274 01c2 1863     		str	r0, [r3, #48]
 275              	.L10:
 276 01c4 996E     		ldr	r1, [r3, #104]
 277 01c6 0A07     		lsls	r2, r1, #28
 278 01c8 FCD5     		bpl	.L10
 279 01ca 50E7     		b	.L9
 280              	.L17:
 281 01cc 18F0010F 		tst	r8, #1
 282 01d0 90D0     		beq	.L18
 283 01d2 1849     		ldr	r1, .L77+4
 284 01d4 0B6A     		ldr	r3, [r1, #32]
 285 01d6 DC07     		lsls	r4, r3, #31
ARM GAS  /tmp/ccQDHeB9.s 			page 6


 286 01d8 0CD4     		bmi	.L23
 287 01da 0B6A     		ldr	r3, [r1, #32]
 288 01dc 23F45C13 		bic	r3, r3, #3604480
 289 01e0 23F00303 		bic	r3, r3, #3
 290 01e4 43F45C13 		orr	r3, r3, #3604480
 291 01e8 43F00103 		orr	r3, r3, #1
 292 01ec 0B62     		str	r3, [r1, #32]
 293              	.L22:
 294 01ee 8B6E     		ldr	r3, [r1, #104]
 295 01f0 DA07     		lsls	r2, r3, #31
 296 01f2 FCD5     		bpl	.L22
 297              	.L23:
 298 01f4 0F49     		ldr	r1, .L77+4
 299 01f6 0B6A     		ldr	r3, [r1, #32]
 300 01f8 D801     		lsls	r0, r3, #7
 301 01fa 08D4     		bmi	.L21
 302 01fc 0B6A     		ldr	r3, [r1, #32]
 303 01fe 43F09B73 		orr	r3, r3, #20316160
 304 0202 43F48033 		orr	r3, r3, #65536
 305 0206 0B62     		str	r3, [r1, #32]
 306              	.L24:
 307 0208 8B6E     		ldr	r3, [r1, #104]
 308 020a DB03     		lsls	r3, r3, #15
 309 020c FCD5     		bpl	.L24
 310              	.L21:
 311 020e 0949     		ldr	r1, .L77+4
 312 0210 68E7     		b	.L72
 313              	.L76:
 314 0212 0848     		ldr	r0, .L77+4
 315              	.L28:
 316 0214 836E     		ldr	r3, [r0, #104]
 317 0216 9E07     		lsls	r6, r3, #30
 318 0218 FCD5     		bpl	.L28
 319 021a 83E7     		b	.L27
 320              	.L75:
 321 021c 036A     		ldr	r3, [r0, #32]
 322 021e 23F45C13 		bic	r3, r3, #3604480
 323 0222 23F00103 		bic	r3, r3, #1
 324 0226 43F45C13 		orr	r3, r3, #3604480
 325 022a 0362     		str	r3, [r0, #32]
 326 022c 44E7     		b	.L16
 327              	.L78:
 328 022e 00BF     		.align	2
 329              	.L77:
 330 0230 00000000 		.word	g_interrupt_enabled
 331 0234 00040E40 		.word	1074660352
 332 0238 000A0E40 		.word	1074661888
 333 023c FCFFC8FE 		.word	-20381700
 334 0240 02003701 		.word	20381698
 335 0244 0000FF07 		.word	134152192
 336 0248 00000000 		.word	.LANCHOR1
 337 024c 00ED00E0 		.word	-536810240
 338 0250 10140E40 		.word	1074664464
 339 0254 040000A5 		.word	-1526726652
 340 0258 00000000 		.word	.LANCHOR0
 341              		.size	pmc_sleep, .-pmc_sleep
 342              		.section	.text.pmc_is_wakeup_clocks_restored,"ax",%progbits
ARM GAS  /tmp/ccQDHeB9.s 			page 7


 343              		.align	1
 344              		.p2align 2,,3
 345              		.global	pmc_is_wakeup_clocks_restored
 346              		.syntax unified
 347              		.thumb
 348              		.thumb_func
 349              		.fpu softvfp
 350              		.type	pmc_is_wakeup_clocks_restored, %function
 351              	pmc_is_wakeup_clocks_restored:
 352              		@ args = 0, pretend = 0, frame = 0
 353              		@ frame_needed = 0, uses_anonymous_args = 0
 354              		@ link register save eliminated.
 355 0000 024B     		ldr	r3, .L80
 356 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 357 0004 80F00100 		eor	r0, r0, #1
 358 0008 7047     		bx	lr
 359              	.L81:
 360 000a 00BF     		.align	2
 361              	.L80:
 362 000c 00000000 		.word	.LANCHOR0
 363              		.size	pmc_is_wakeup_clocks_restored, .-pmc_is_wakeup_clocks_restored
 364              		.section	.text.pmc_wait_wakeup_clocks_restore,"ax",%progbits
 365              		.align	1
 366              		.p2align 2,,3
 367              		.global	pmc_wait_wakeup_clocks_restore
 368              		.syntax unified
 369              		.thumb
 370              		.thumb_func
 371              		.fpu softvfp
 372              		.type	pmc_wait_wakeup_clocks_restore, %function
 373              	pmc_wait_wakeup_clocks_restore:
 374              		@ args = 0, pretend = 0, frame = 0
 375              		@ frame_needed = 0, uses_anonymous_args = 0
 376              		@ link register save eliminated.
 377 0000 074B     		ldr	r3, .L89
 378 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 379 0004 13B9     		cbnz	r3, .L88
 380 0006 00B1     		cbz	r0, .L82
 381 0008 0047     		bx	r0	@ indirect register sibling call
 382              	.L82:
 383 000a 7047     		bx	lr
 384              	.L88:
 385              		.syntax unified
 386              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 387 000c 72B6     		cpsid i
 388              	@ 0 "" 2
 389              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 390 000e BFF35F8F 		dmb
 391              	@ 0 "" 2
 392              		.thumb
 393              		.syntax unified
 394 0012 044A     		ldr	r2, .L89+4
 395 0014 044B     		ldr	r3, .L89+8
 396 0016 1060     		str	r0, [r2]
 397 0018 0022     		movs	r2, #0
 398 001a 1A70     		strb	r2, [r3]
 399 001c 7047     		bx	lr
ARM GAS  /tmp/ccQDHeB9.s 			page 8


 400              	.L90:
 401 001e 00BF     		.align	2
 402              	.L89:
 403 0020 00000000 		.word	.LANCHOR0
 404 0024 00000000 		.word	.LANCHOR1
 405 0028 00000000 		.word	g_interrupt_enabled
 406              		.size	pmc_wait_wakeup_clocks_restore, .-pmc_wait_wakeup_clocks_restore
 407              		.section	.bss.b_is_sleep_clock_used,"aw",%nobits
 408              		.set	.LANCHOR0,. + 0
 409              		.type	b_is_sleep_clock_used, %object
 410              		.size	b_is_sleep_clock_used, 1
 411              	b_is_sleep_clock_used:
 412 0000 00       		.space	1
 413              		.section	.bss.callback_clocks_restored,"aw",%nobits
 414              		.align	2
 415              		.set	.LANCHOR1,. + 0
 416              		.type	callback_clocks_restored, %object
 417              		.size	callback_clocks_restored, 4
 418              	callback_clocks_restored:
 419 0000 00000000 		.space	4
 420              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 421              		.align	2
 422              		.type	cpu_irq_critical_section_counter, %object
 423              		.size	cpu_irq_critical_section_counter, 4
 424              	cpu_irq_critical_section_counter:
 425 0000 00000000 		.space	4
 426              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 427              		.type	cpu_irq_prev_interrupt_state, %object
 428              		.size	cpu_irq_prev_interrupt_state, 1
 429              	cpu_irq_prev_interrupt_state:
 430 0000 00       		.space	1
 431              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
