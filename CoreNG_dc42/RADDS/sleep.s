ARM GAS  /tmp/cckcB8ho.s 			page 1


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
  28 000a 00F2B780 		bhi	.L1
  29 000e DFE813F0 		tbh	[pc, r3, lsl #1]
  30              	.L4:
  31 0012 C700     		.2byte	(.L3-.L4)/2
  32 0014 C700     		.2byte	(.L3-.L4)/2
  33 0016 0500     		.2byte	(.L5-.L4)/2
  34 0018 0500     		.2byte	(.L5-.L4)/2
  35 001a B800     		.2byte	(.L6-.L4)/2
  36              		.p2align 1
  37              	.L5:
  38              		.syntax unified
  39              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  40 001c 72B6     		cpsid i
  41              	@ 0 "" 2
  42              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  43 001e BFF35F8F 		dmb
  44              	@ 0 "" 2
  45              		.thumb
  46              		.syntax unified
  47 0022 0021     		movs	r1, #0
  48 0024 0122     		movs	r2, #1
  49 0026 8B4C     		ldr	r4, .L77
  50 0028 DFF84C82 		ldr	r8, .L77+36
  51 002c 8A4B     		ldr	r3, .L77+4
  52 002e 2170     		strb	r1, [r4]
  53 0030 88F80020 		strb	r2, [r8]
  54 0034 1F6A     		ldr	r7, [r3, #32]
  55 0036 894A     		ldr	r2, .L77+8
  56 0038 D3F830B0 		ldr	fp, [r3, #48]
  57 003c 884E     		ldr	r6, .L77+12
ARM GAS  /tmp/cckcB8ho.s 			page 2


  58 003e D2F800A0 		ldr	r10, [r2]
  59 0042 47F45C11 		orr	r1, r7, #3604480
  60 0046 D6F80090 		ldr	r9, [r6]
  61 004a 0BF00305 		and	r5, fp, #3
  62 004e 9E6A     		ldr	r6, [r3, #40]
  63 0050 DA69     		ldr	r2, [r3, #28]
  64 0052 41F00801 		orr	r1, r1, #8
  65 0056 012D     		cmp	r5, #1
  66 0058 0092     		str	r2, [sp]
  67 005a 1962     		str	r1, [r3, #32]
  68 005c 00F2B880 		bhi	.L73
  69 0060 DE46     		mov	lr, fp
  70              	.L8:
  71 0062 1EF0700F 		tst	lr, #112
  72 0066 07D0     		beq	.L13
  73 0068 7B4A     		ldr	r2, .L77+4
  74 006a 2EF07003 		bic	r3, lr, #112
  75 006e 1146     		mov	r1, r2
  76 0070 1363     		str	r3, [r2, #48]
  77              	.L12:
  78 0072 8B6E     		ldr	r3, [r1, #104]
  79 0074 1A07     		lsls	r2, r3, #28
  80 0076 FCD5     		bpl	.L12
  81              	.L13:
  82 0078 0190     		str	r0, [sp, #4]
  83 007a FFF7FEFF 		bl	pmc_disable_pllack
  84 007e FFF7FEFF 		bl	pmc_disable_upll_clock
  85 0082 7549     		ldr	r1, .L77+4
  86 0084 0198     		ldr	r0, [sp, #4]
  87              	.L11:
  88 0086 8B6E     		ldr	r3, [r1, #104]
  89 0088 9B03     		lsls	r3, r3, #14
  90 008a FCD5     		bpl	.L11
  91 008c 0B6A     		ldr	r3, [r1, #32]
  92 008e 724A     		ldr	r2, .L77+4
  93 0090 23F09B73 		bic	r3, r3, #20316160
  94 0094 23F48033 		bic	r3, r3, #65536
  95 0098 43F45C13 		orr	r3, r3, #3604480
  96 009c 0B62     		str	r3, [r1, #32]
  97              	.L14:
  98 009e 936E     		ldr	r3, [r2, #104]
  99 00a0 D903     		lsls	r1, r3, #15
 100 00a2 FCD5     		bpl	.L14
 101 00a4 6D49     		ldr	r1, .L77+8
 102 00a6 6E4B     		ldr	r3, .L77+12
 103 00a8 2AF4706C 		bic	ip, r10, #3840
 104 00ac C1F800C0 		str	ip, [r1]
 105 00b0 0428     		cmp	r0, #4
 106 00b2 29F47061 		bic	r1, r9, #3840
 107 00b6 1960     		str	r1, [r3]
 108 00b8 00F0C280 		beq	.L74
 109              	.L15:
 110 00bc 0123     		movs	r3, #1
 111 00be 2370     		strb	r3, [r4]
 112              		.syntax unified
 113              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 114 00c0 BFF35F8F 		dmb
ARM GAS  /tmp/cckcB8ho.s 			page 3


 115              	@ 0 "" 2
 116              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 117 00c4 62B6     		cpsie i
 118              	@ 0 "" 2
 119              		.thumb
 120              		.syntax unified
 121 00c6 FFF7FEFF 		bl	pmc_enable_waitmode
 122              		.syntax unified
 123              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 124 00ca 72B6     		cpsid i
 125              	@ 0 "" 2
 126              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 127 00cc BFF35F8F 		dmb
 128              	@ 0 "" 2
 129              		.thumb
 130              		.syntax unified
 131 00d0 0023     		movs	r3, #0
 132 00d2 BA07     		lsls	r2, r7, #30
 133 00d4 2370     		strb	r3, [r4]
 134 00d6 40F18A80 		bpl	.L16
 135 00da 5F49     		ldr	r1, .L77+4
 136 00dc 6148     		ldr	r0, .L77+16
 137 00de 0F6A     		ldr	r7, [r1, #32]
 138 00e0 614B     		ldr	r3, .L77+20
 139 00e2 3840     		ands	r0, r0, r7
 140 00e4 0343     		orrs	r3, r3, r0
 141 00e6 0B62     		str	r3, [r1, #32]
 142              	.L71:
 143 00e8 0B6A     		ldr	r3, [r1, #32]
 144 00ea 23F45C13 		bic	r3, r3, #3604480
 145 00ee 23F07803 		bic	r3, r3, #120
 146 00f2 43F45C13 		orr	r3, r3, #3604480
 147 00f6 0B62     		str	r3, [r1, #32]
 148              	.L17:
 149 00f8 5C49     		ldr	r1, .L77+24
 150 00fa 3140     		ands	r1, r1, r6
 151 00fc 21B1     		cbz	r1, .L24
 152 00fe 0221     		movs	r1, #2
 153 0100 554B     		ldr	r3, .L77+4
 154 0102 46F00056 		orr	r6, r6, #536870912
 155 0106 9E62     		str	r6, [r3, #40]
 156              	.L24:
 157 0108 009A     		ldr	r2, [sp]
 158 010a D703     		lsls	r7, r2, #15
 159 010c 03D5     		bpl	.L25
 160 010e 524B     		ldr	r3, .L77+4
 161 0110 41F04001 		orr	r1, r1, #64
 162 0114 DA61     		str	r2, [r3, #28]
 163              	.L25:
 164 0116 022D     		cmp	r5, #2
 165 0118 00F08D80 		beq	.L75
 166 011c 032D     		cmp	r5, #3
 167 011e 03D1     		bne	.L26
 168 0120 4D48     		ldr	r0, .L77+4
 169              	.L28:
 170 0122 836E     		ldr	r3, [r0, #104]
 171 0124 5D06     		lsls	r5, r3, #25
ARM GAS  /tmp/cckcB8ho.s 			page 4


 172 0126 FCD5     		bpl	.L28
 173              	.L26:
 174 0128 4B4E     		ldr	r6, .L77+4
 175 012a 0BF07003 		and	r3, fp, #112
 176 012e 3046     		mov	r0, r6
 177 0130 356B     		ldr	r5, [r6, #48]
 178 0132 25F07005 		bic	r5, r5, #112
 179 0136 2B43     		orrs	r3, r3, r5
 180 0138 3363     		str	r3, [r6, #48]
 181              	.L29:
 182 013a 836E     		ldr	r3, [r0, #104]
 183 013c 1A07     		lsls	r2, r3, #28
 184 013e FCD5     		bpl	.L29
 185 0140 464D     		ldr	r5, .L77+8
 186 0142 474B     		ldr	r3, .L77+12
 187 0144 C5F800A0 		str	r10, [r5]
 188 0148 C3F80090 		str	r9, [r3]
 189 014c A5F58065 		sub	r5, r5, #1024
 190 0150 C0F830B0 		str	fp, [r0, #48]
 191              	.L30:
 192 0154 AB6E     		ldr	r3, [r5, #104]
 193 0156 1B07     		lsls	r3, r3, #28
 194 0158 FCD5     		bpl	.L30
 195 015a 3F4A     		ldr	r2, .L77+4
 196              	.L54:
 197 015c 936E     		ldr	r3, [r2, #104]
 198 015e 0B42     		tst	r3, r1
 199 0160 FCD0     		beq	.L54
 200 0162 0026     		movs	r6, #0
 201 0164 424D     		ldr	r5, .L77+28
 202 0166 88F80060 		strb	r6, [r8]
 203 016a 2B68     		ldr	r3, [r5]
 204 016c 0BB1     		cbz	r3, .L32
 205 016e 9847     		blx	r3
 206 0170 2E60     		str	r6, [r5]
 207              	.L32:
 208 0172 0123     		movs	r3, #1
 209 0174 2370     		strb	r3, [r4]
 210              		.syntax unified
 211              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 212 0176 BFF35F8F 		dmb
 213              	@ 0 "" 2
 214              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 215 017a 62B6     		cpsie i
 216              	@ 0 "" 2
 217              		.thumb
 218              		.syntax unified
 219              	.L1:
 220 017c 03B0     		add	sp, sp, #12
 221              		@ sp needed
 222 017e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 223              	.L6:
 224 0182 0120     		movs	r0, #1
 225 0184 3B4A     		ldr	r2, .L77+32
 226 0186 3349     		ldr	r1, .L77
 227 0188 1369     		ldr	r3, [r2, #16]
 228 018a 43F00403 		orr	r3, r3, #4
ARM GAS  /tmp/cckcB8ho.s 			page 5


 229 018e 1361     		str	r3, [r2, #16]
 230 0190 0870     		strb	r0, [r1]
 231              		.syntax unified
 232              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 233 0192 BFF35F8F 		dmb
 234              	@ 0 "" 2
 235              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 236 0196 62B6     		cpsie i
 237              	@ 0 "" 2
 238              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 239 0198 20BF     		wfe
 240              	@ 0 "" 2
 241              		.thumb
 242              		.syntax unified
 243 019a 03B0     		add	sp, sp, #12
 244              		@ sp needed
 245 019c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 246              	.L3:
 247 01a0 0125     		movs	r5, #1
 248 01a2 2D49     		ldr	r1, .L77+4
 249 01a4 334A     		ldr	r2, .L77+32
 250 01a6 0B6F     		ldr	r3, [r1, #112]
 251 01a8 2A4C     		ldr	r4, .L77
 252 01aa 23F48013 		bic	r3, r3, #1048576
 253 01ae 0B67     		str	r3, [r1, #112]
 254 01b0 1369     		ldr	r3, [r2, #16]
 255 01b2 23F00403 		bic	r3, r3, #4
 256 01b6 1361     		str	r3, [r2, #16]
 257 01b8 2570     		strb	r5, [r4]
 258              		.syntax unified
 259              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 260 01ba BFF35F8F 		dmb
 261              	@ 0 "" 2
 262              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 263 01be 62B6     		cpsie i
 264              	@ 0 "" 2
 265              		.thumb
 266              		.syntax unified
 267 01c0 0228     		cmp	r0, #2
 268 01c2 10D0     		beq	.L76
 269              		.syntax unified
 270              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 271 01c4 BFF34F8F 		dsb
 272              	@ 0 "" 2
 273              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 274 01c8 20BF     		wfe
 275              	@ 0 "" 2
 276              		.thumb
 277              		.syntax unified
 278 01ca 03B0     		add	sp, sp, #12
 279              		@ sp needed
 280 01cc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 281              	.L73:
 282 01d0 1946     		mov	r1, r3
 283 01d2 2BF0030E 		bic	lr, fp, #3
 284 01d6 4EF0010E 		orr	lr, lr, #1
 285 01da C3F830E0 		str	lr, [r3, #48]
ARM GAS  /tmp/cckcB8ho.s 			page 6


 286              	.L9:
 287 01de 8B6E     		ldr	r3, [r1, #104]
 288 01e0 1B07     		lsls	r3, r3, #28
 289 01e2 FCD5     		bpl	.L9
 290 01e4 3DE7     		b	.L8
 291              	.L76:
 292              		.syntax unified
 293              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 294 01e6 BFF34F8F 		dsb
 295              	@ 0 "" 2
 296              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 297 01ea 30BF     		wfi
 298              	@ 0 "" 2
 299              		.thumb
 300              		.syntax unified
 301 01ec C6E7     		b	.L1
 302              	.L16:
 303 01ee FB07     		lsls	r3, r7, #31
 304 01f0 82D5     		bpl	.L17
 305 01f2 1948     		ldr	r0, .L77+4
 306 01f4 036A     		ldr	r3, [r0, #32]
 307 01f6 DF07     		lsls	r7, r3, #31
 308 01f8 0DD4     		bmi	.L22
 309 01fa 0146     		mov	r1, r0
 310 01fc 036A     		ldr	r3, [r0, #32]
 311 01fe 23F45C13 		bic	r3, r3, #3604480
 312 0202 23F00303 		bic	r3, r3, #3
 313 0206 43F45C13 		orr	r3, r3, #3604480
 314 020a 43F00103 		orr	r3, r3, #1
 315 020e 0362     		str	r3, [r0, #32]
 316              	.L21:
 317 0210 8B6E     		ldr	r3, [r1, #104]
 318 0212 DA07     		lsls	r2, r3, #31
 319 0214 FCD5     		bpl	.L21
 320              	.L22:
 321 0216 104B     		ldr	r3, .L77+4
 322 0218 196A     		ldr	r1, [r3, #32]
 323 021a C901     		lsls	r1, r1, #7
 324 021c 09D4     		bmi	.L20
 325 021e 1946     		mov	r1, r3
 326 0220 186A     		ldr	r0, [r3, #32]
 327 0222 40F09B70 		orr	r0, r0, #20316160
 328 0226 40F48030 		orr	r0, r0, #65536
 329 022a 1862     		str	r0, [r3, #32]
 330              	.L23:
 331 022c 8B6E     		ldr	r3, [r1, #104]
 332 022e DB03     		lsls	r3, r3, #15
 333 0230 FCD5     		bpl	.L23
 334              	.L20:
 335 0232 0949     		ldr	r1, .L77+4
 336 0234 58E7     		b	.L71
 337              	.L75:
 338 0236 0848     		ldr	r0, .L77+4
 339              	.L27:
 340 0238 836E     		ldr	r3, [r0, #104]
 341 023a 9E07     		lsls	r6, r3, #30
 342 023c FCD5     		bpl	.L27
ARM GAS  /tmp/cckcB8ho.s 			page 7


 343 023e 73E7     		b	.L26
 344              	.L74:
 345 0240 136A     		ldr	r3, [r2, #32]
 346 0242 23F45C13 		bic	r3, r3, #3604480
 347 0246 23F00103 		bic	r3, r3, #1
 348 024a 43F45C13 		orr	r3, r3, #3604480
 349 024e 1362     		str	r3, [r2, #32]
 350 0250 34E7     		b	.L15
 351              	.L78:
 352 0252 00BF     		.align	2
 353              	.L77:
 354 0254 00000000 		.word	g_interrupt_enabled
 355 0258 00060E40 		.word	1074660864
 356 025c 000A0E40 		.word	1074661888
 357 0260 000C0E40 		.word	1074662400
 358 0264 FCFFC8FE 		.word	-20381700
 359 0268 02003701 		.word	20381698
 360 026c 0000FF07 		.word	134152192
 361 0270 00000000 		.word	.LANCHOR1
 362 0274 00ED00E0 		.word	-536810240
 363 0278 00000000 		.word	.LANCHOR0
 364              		.size	pmc_sleep, .-pmc_sleep
 365              		.section	.text.pmc_is_wakeup_clocks_restored,"ax",%progbits
 366              		.align	1
 367              		.p2align 2,,3
 368              		.global	pmc_is_wakeup_clocks_restored
 369              		.syntax unified
 370              		.thumb
 371              		.thumb_func
 372              		.fpu softvfp
 373              		.type	pmc_is_wakeup_clocks_restored, %function
 374              	pmc_is_wakeup_clocks_restored:
 375              		@ args = 0, pretend = 0, frame = 0
 376              		@ frame_needed = 0, uses_anonymous_args = 0
 377              		@ link register save eliminated.
 378 0000 024B     		ldr	r3, .L80
 379 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 380 0004 80F00100 		eor	r0, r0, #1
 381 0008 7047     		bx	lr
 382              	.L81:
 383 000a 00BF     		.align	2
 384              	.L80:
 385 000c 00000000 		.word	.LANCHOR0
 386              		.size	pmc_is_wakeup_clocks_restored, .-pmc_is_wakeup_clocks_restored
 387              		.section	.text.pmc_wait_wakeup_clocks_restore,"ax",%progbits
 388              		.align	1
 389              		.p2align 2,,3
 390              		.global	pmc_wait_wakeup_clocks_restore
 391              		.syntax unified
 392              		.thumb
 393              		.thumb_func
 394              		.fpu softvfp
 395              		.type	pmc_wait_wakeup_clocks_restore, %function
 396              	pmc_wait_wakeup_clocks_restore:
 397              		@ args = 0, pretend = 0, frame = 0
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399              		@ link register save eliminated.
ARM GAS  /tmp/cckcB8ho.s 			page 8


 400 0000 074B     		ldr	r3, .L89
 401 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 402 0004 13B9     		cbnz	r3, .L88
 403 0006 00B1     		cbz	r0, .L82
 404 0008 0047     		bx	r0	@ indirect register sibling call
 405              	.L82:
 406 000a 7047     		bx	lr
 407              	.L88:
 408              		.syntax unified
 409              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 410 000c 72B6     		cpsid i
 411              	@ 0 "" 2
 412              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 413 000e BFF35F8F 		dmb
 414              	@ 0 "" 2
 415              		.thumb
 416              		.syntax unified
 417 0012 0022     		movs	r2, #0
 418 0014 0349     		ldr	r1, .L89+4
 419 0016 044B     		ldr	r3, .L89+8
 420 0018 0860     		str	r0, [r1]
 421 001a 1A70     		strb	r2, [r3]
 422 001c 7047     		bx	lr
 423              	.L90:
 424 001e 00BF     		.align	2
 425              	.L89:
 426 0020 00000000 		.word	.LANCHOR0
 427 0024 00000000 		.word	.LANCHOR1
 428 0028 00000000 		.word	g_interrupt_enabled
 429              		.size	pmc_wait_wakeup_clocks_restore, .-pmc_wait_wakeup_clocks_restore
 430              		.section	.bss.b_is_sleep_clock_used,"aw",%nobits
 431              		.set	.LANCHOR0,. + 0
 432              		.type	b_is_sleep_clock_used, %object
 433              		.size	b_is_sleep_clock_used, 1
 434              	b_is_sleep_clock_used:
 435 0000 00       		.space	1
 436              		.section	.bss.callback_clocks_restored,"aw",%nobits
 437              		.align	2
 438              		.set	.LANCHOR1,. + 0
 439              		.type	callback_clocks_restored, %object
 440              		.size	callback_clocks_restored, 4
 441              	callback_clocks_restored:
 442 0000 00000000 		.space	4
 443              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 444              		.align	2
 445              		.type	cpu_irq_critical_section_counter, %object
 446              		.size	cpu_irq_critical_section_counter, 4
 447              	cpu_irq_critical_section_counter:
 448 0000 00000000 		.space	4
 449              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 450              		.type	cpu_irq_prev_interrupt_state, %object
 451              		.size	cpu_irq_prev_interrupt_state, 1
 452              	cpu_irq_prev_interrupt_state:
 453 0000 00       		.space	1
 454              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
