ARM GAS  /tmp/ccWKLn7l.s 			page 1


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
  13              		.file	"sleep.c"
  14              		.section	.text.pmc_sleep,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	pmc_sleep
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	pmc_sleep, %function
  23              	pmc_sleep:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
  27 0004 431E     		subs	r3, r0, #1
  28 0006 042B     		cmp	r3, #4
  29 0008 13D8     		bhi	.L1
  30 000a DFE803F0 		tbb	[pc, r3]
  31              	.L4:
  32 000e B6       		.byte	(.L3-.L4)/2
  33 000f B6       		.byte	(.L3-.L4)/2
  34 0010 14       		.byte	(.L5-.L4)/2
  35 0011 14       		.byte	(.L5-.L4)/2
  36 0012 03       		.byte	(.L6-.L4)/2
  37 0013 00       		.p2align 1
  38              	.L6:
  39 0014 784A     		ldr	r2, .L66
  40 0016 794C     		ldr	r4, .L66+4
  41 0018 1369     		ldr	r3, [r2, #16]
  42 001a 7949     		ldr	r1, .L66+8
  43 001c 794D     		ldr	r5, .L66+12
  44 001e 43F00403 		orr	r3, r3, #4
  45 0022 0120     		movs	r0, #1
  46 0024 1361     		str	r3, [r2, #16]
  47 0026 2560     		str	r5, [r4]
  48 0028 0870     		strb	r0, [r1]
  49              		.syntax unified
  50              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  51 002a BFF35F8F 		dmb
  52              	@ 0 "" 2
  53              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  54 002e 62B6     		cpsie i
  55              	@ 0 "" 2
  56              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  57 0030 30BF     		wfi
ARM GAS  /tmp/ccWKLn7l.s 			page 2


  58              	@ 0 "" 2
  59              		.thumb
  60              		.syntax unified
  61              	.L1:
  62 0032 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
  63              	.L5:
  64 0036 0328     		cmp	r0, #3
  65 0038 0446     		mov	r4, r0
  66 003a 0CBF     		ite	eq
  67 003c 0020     		moveq	r0, #0
  68 003e 4FF40010 		movne	r0, #2097152
  69 0042 FFF7FEFF 		bl	pmc_set_flash_in_wait_mode
  70              		.syntax unified
  71              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  72 0046 72B6     		cpsid i
  73              	@ 0 "" 2
  74              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  75 0048 BFF35F8F 		dmb
  76              	@ 0 "" 2
  77              		.thumb
  78              		.syntax unified
  79 004c 6C4D     		ldr	r5, .L66+8
  80 004e 6E4F     		ldr	r7, .L66+16
  81 0050 6E4A     		ldr	r2, .L66+20
  82 0052 6F4B     		ldr	r3, .L66+24
  83 0054 0121     		movs	r1, #1
  84 0056 0020     		movs	r0, #0
  85 0058 2870     		strb	r0, [r5]
  86 005a 3970     		strb	r1, [r7]
  87 005c D2F82080 		ldr	r8, [r2, #32]
  88 0060 D2F830B0 		ldr	fp, [r2, #48]
  89 0064 D3F80090 		ldr	r9, [r3]
  90 0068 966A     		ldr	r6, [r2, #40]
  91 006a 48F45C13 		orr	r3, r8, #3604480
  92 006e 0BF0030A 		and	r10, fp, #3
  93 0072 43F00803 		orr	r3, r3, #8
  94 0076 8A45     		cmp	r10, r1
  95 0078 1362     		str	r3, [r2, #32]
  96 007a 40F28E80 		bls	.L32
  97 007e 2BF00301 		bic	r1, fp, #3
  98 0082 41F00101 		orr	r1, r1, #1
  99 0086 1163     		str	r1, [r2, #48]
 100              	.L10:
 101 0088 936E     		ldr	r3, [r2, #104]
 102 008a 1B07     		lsls	r3, r3, #28
 103 008c FCD5     		bpl	.L10
 104              	.L9:
 105 008e 11F0700F 		tst	r1, #112
 106 0092 06D0     		beq	.L14
 107 0094 5D4A     		ldr	r2, .L66+20
 108 0096 21F07001 		bic	r1, r1, #112
 109 009a 1163     		str	r1, [r2, #48]
 110              	.L13:
 111 009c 936E     		ldr	r3, [r2, #104]
 112 009e 1807     		lsls	r0, r3, #28
 113 00a0 FCD5     		bpl	.L13
 114              	.L14:
ARM GAS  /tmp/ccWKLn7l.s 			page 3


 115 00a2 FFF7FEFF 		bl	pmc_disable_pllack
 116 00a6 594A     		ldr	r2, .L66+20
 117              	.L12:
 118 00a8 936E     		ldr	r3, [r2, #104]
 119 00aa 9903     		lsls	r1, r3, #14
 120 00ac FCD5     		bpl	.L12
 121 00ae 136A     		ldr	r3, [r2, #32]
 122 00b0 5649     		ldr	r1, .L66+20
 123 00b2 23F09B73 		bic	r3, r3, #20316160
 124 00b6 23F48033 		bic	r3, r3, #65536
 125 00ba 43F45C13 		orr	r3, r3, #3604480
 126 00be 1362     		str	r3, [r2, #32]
 127              	.L15:
 128 00c0 8B6E     		ldr	r3, [r1, #104]
 129 00c2 DB03     		lsls	r3, r3, #15
 130 00c4 FCD5     		bpl	.L15
 131 00c6 524B     		ldr	r3, .L66+24
 132 00c8 29F47062 		bic	r2, r9, #3840
 133 00cc 042C     		cmp	r4, #4
 134 00ce 1A60     		str	r2, [r3]
 135 00d0 00F08880 		beq	.L65
 136              	.L16:
 137 00d4 0123     		movs	r3, #1
 138 00d6 2B70     		strb	r3, [r5]
 139              		.syntax unified
 140              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 141 00d8 BFF35F8F 		dmb
 142              	@ 0 "" 2
 143              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 144 00dc 62B6     		cpsie i
 145              	@ 0 "" 2
 146              		.thumb
 147              		.syntax unified
 148 00de FFF7FEFF 		bl	pmc_enable_waitmode
 149              		.syntax unified
 150              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 151 00e2 72B6     		cpsid i
 152              	@ 0 "" 2
 153              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 154 00e4 BFF35F8F 		dmb
 155              	@ 0 "" 2
 156              		.thumb
 157              		.syntax unified
 158 00e8 0023     		movs	r3, #0
 159 00ea 18F0020F 		tst	r8, #2
 160 00ee 2B70     		strb	r3, [r5]
 161 00f0 55D0     		beq	.L17
 162 00f2 464A     		ldr	r2, .L66+20
 163 00f4 4749     		ldr	r1, .L66+28
 164 00f6 106A     		ldr	r0, [r2, #32]
 165 00f8 474B     		ldr	r3, .L66+32
 166 00fa 0140     		ands	r1, r1, r0
 167 00fc 0B43     		orrs	r3, r3, r1
 168 00fe 1362     		str	r3, [r2, #32]
 169              	.L63:
 170 0100 136A     		ldr	r3, [r2, #32]
 171 0102 23F45C13 		bic	r3, r3, #3604480
ARM GAS  /tmp/ccWKLn7l.s 			page 4


 172 0106 23F07803 		bic	r3, r3, #120
 173 010a 43F45C13 		orr	r3, r3, #3604480
 174 010e 1362     		str	r3, [r2, #32]
 175              	.L18:
 176 0110 4249     		ldr	r1, .L66+36
 177 0112 3140     		ands	r1, r1, r6
 178 0114 21B1     		cbz	r1, .L25
 179 0116 3D4B     		ldr	r3, .L66+20
 180 0118 46F00056 		orr	r6, r6, #536870912
 181 011c 9E62     		str	r6, [r3, #40]
 182 011e 0221     		movs	r1, #2
 183              	.L25:
 184 0120 BAF1020F 		cmp	r10, #2
 185 0124 03D1     		bne	.L26
 186 0126 394A     		ldr	r2, .L66+20
 187              	.L27:
 188 0128 936E     		ldr	r3, [r2, #104]
 189 012a 9C07     		lsls	r4, r3, #30
 190 012c FCD5     		bpl	.L27
 191              	.L26:
 192 012e 374A     		ldr	r2, .L66+20
 193 0130 106B     		ldr	r0, [r2, #48]
 194 0132 0BF07003 		and	r3, fp, #112
 195 0136 20F07000 		bic	r0, r0, #112
 196 013a 0343     		orrs	r3, r3, r0
 197 013c 1363     		str	r3, [r2, #48]
 198              	.L28:
 199 013e 936E     		ldr	r3, [r2, #104]
 200 0140 1807     		lsls	r0, r3, #28
 201 0142 FCD5     		bpl	.L28
 202 0144 324B     		ldr	r3, .L66+24
 203 0146 3148     		ldr	r0, .L66+20
 204 0148 C3F80090 		str	r9, [r3]
 205 014c C2F830B0 		str	fp, [r2, #48]
 206              	.L29:
 207 0150 836E     		ldr	r3, [r0, #104]
 208 0152 1B07     		lsls	r3, r3, #28
 209 0154 FCD5     		bpl	.L29
 210 0156 2D4A     		ldr	r2, .L66+20
 211              	.L49:
 212 0158 936E     		ldr	r3, [r2, #104]
 213 015a 0B42     		tst	r3, r1
 214 015c FCD0     		beq	.L49
 215 015e 304C     		ldr	r4, .L66+40
 216 0160 2368     		ldr	r3, [r4]
 217 0162 0026     		movs	r6, #0
 218 0164 3E70     		strb	r6, [r7]
 219 0166 0BB1     		cbz	r3, .L31
 220 0168 9847     		blx	r3
 221 016a 2660     		str	r6, [r4]
 222              	.L31:
 223 016c 0123     		movs	r3, #1
 224 016e 2B70     		strb	r3, [r5]
 225              		.syntax unified
 226              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 227 0170 BFF35F8F 		dmb
 228              	@ 0 "" 2
ARM GAS  /tmp/ccWKLn7l.s 			page 5


 229              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 230 0174 62B6     		cpsie i
 231              	@ 0 "" 2
 232              		.thumb
 233              		.syntax unified
 234 0176 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 235              	.L3:
 236 017a 1F4A     		ldr	r2, .L66
 237 017c 2049     		ldr	r1, .L66+8
 238 017e 1369     		ldr	r3, [r2, #16]
 239 0180 0120     		movs	r0, #1
 240 0182 23F00403 		bic	r3, r3, #4
 241 0186 1361     		str	r3, [r2, #16]
 242 0188 0870     		strb	r0, [r1]
 243              		.syntax unified
 244              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 245 018a BFF35F8F 		dmb
 246              	@ 0 "" 2
 247              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 248 018e 62B6     		cpsie i
 249              	@ 0 "" 2
 250              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 251 0190 BFF34F8F 		dsb
 252              	@ 0 "" 2
 253              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 254 0194 30BF     		wfi
 255              	@ 0 "" 2
 256              		.thumb
 257              		.syntax unified
 258 0196 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 259              	.L32:
 260 019a 5946     		mov	r1, fp
 261 019c 77E7     		b	.L9
 262              	.L17:
 263 019e 18F0010F 		tst	r8, #1
 264 01a2 B5D0     		beq	.L18
 265 01a4 194A     		ldr	r2, .L66+20
 266 01a6 136A     		ldr	r3, [r2, #32]
 267 01a8 DC07     		lsls	r4, r3, #31
 268 01aa 0CD4     		bmi	.L23
 269 01ac 136A     		ldr	r3, [r2, #32]
 270 01ae 23F45C13 		bic	r3, r3, #3604480
 271 01b2 23F00303 		bic	r3, r3, #3
 272 01b6 43F45C13 		orr	r3, r3, #3604480
 273 01ba 43F00103 		orr	r3, r3, #1
 274 01be 1362     		str	r3, [r2, #32]
 275              	.L22:
 276 01c0 936E     		ldr	r3, [r2, #104]
 277 01c2 D907     		lsls	r1, r3, #31
 278 01c4 FCD5     		bpl	.L22
 279              	.L23:
 280 01c6 114A     		ldr	r2, .L66+20
 281 01c8 136A     		ldr	r3, [r2, #32]
 282 01ca D801     		lsls	r0, r3, #7
 283 01cc 08D4     		bmi	.L21
 284 01ce 136A     		ldr	r3, [r2, #32]
 285 01d0 43F09B73 		orr	r3, r3, #20316160
ARM GAS  /tmp/ccWKLn7l.s 			page 6


 286 01d4 43F48033 		orr	r3, r3, #65536
 287 01d8 1362     		str	r3, [r2, #32]
 288              	.L24:
 289 01da 936E     		ldr	r3, [r2, #104]
 290 01dc DB03     		lsls	r3, r3, #15
 291 01de FCD5     		bpl	.L24
 292              	.L21:
 293 01e0 0A4A     		ldr	r2, .L66+20
 294 01e2 8DE7     		b	.L63
 295              	.L65:
 296 01e4 0B6A     		ldr	r3, [r1, #32]
 297 01e6 23F45C13 		bic	r3, r3, #3604480
 298 01ea 23F00103 		bic	r3, r3, #1
 299 01ee 43F45C13 		orr	r3, r3, #3604480
 300 01f2 0B62     		str	r3, [r1, #32]
 301 01f4 6EE7     		b	.L16
 302              	.L67:
 303 01f6 00BF     		.align	2
 304              	.L66:
 305 01f8 00ED00E0 		.word	-536810240
 306 01fc 10180E40 		.word	1074665488
 307 0200 00000000 		.word	g_interrupt_enabled
 308 0204 040000A5 		.word	-1526726652
 309 0208 00000000 		.word	.LANCHOR0
 310 020c 00040E40 		.word	1074660352
 311 0210 000A0E40 		.word	1074661888
 312 0214 FCFFC8FE 		.word	-20381700
 313 0218 02003701 		.word	20381698
 314 021c 0000FF07 		.word	134152192
 315 0220 00000000 		.word	.LANCHOR1
 316              		.size	pmc_sleep, .-pmc_sleep
 317              		.section	.text.pmc_is_wakeup_clocks_restored,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	pmc_is_wakeup_clocks_restored
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu fpv4-sp-d16
 325              		.type	pmc_is_wakeup_clocks_restored, %function
 326              	pmc_is_wakeup_clocks_restored:
 327              		@ args = 0, pretend = 0, frame = 0
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329              		@ link register save eliminated.
 330 0000 024B     		ldr	r3, .L69
 331 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 332 0004 80F00100 		eor	r0, r0, #1
 333 0008 7047     		bx	lr
 334              	.L70:
 335 000a 00BF     		.align	2
 336              	.L69:
 337 000c 00000000 		.word	.LANCHOR0
 338              		.size	pmc_is_wakeup_clocks_restored, .-pmc_is_wakeup_clocks_restored
 339              		.section	.text.pmc_wait_wakeup_clocks_restore,"ax",%progbits
 340              		.align	1
 341              		.p2align 2,,3
 342              		.global	pmc_wait_wakeup_clocks_restore
ARM GAS  /tmp/ccWKLn7l.s 			page 7


 343              		.syntax unified
 344              		.thumb
 345              		.thumb_func
 346              		.fpu fpv4-sp-d16
 347              		.type	pmc_wait_wakeup_clocks_restore, %function
 348              	pmc_wait_wakeup_clocks_restore:
 349              		@ args = 0, pretend = 0, frame = 0
 350              		@ frame_needed = 0, uses_anonymous_args = 0
 351              		@ link register save eliminated.
 352 0000 074B     		ldr	r3, .L78
 353 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 354 0004 13B9     		cbnz	r3, .L77
 355 0006 00B1     		cbz	r0, .L71
 356 0008 0047     		bx	r0	@ indirect register sibling call
 357              	.L71:
 358 000a 7047     		bx	lr
 359              	.L77:
 360              		.syntax unified
 361              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 362 000c 72B6     		cpsid i
 363              	@ 0 "" 2
 364              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 365 000e BFF35F8F 		dmb
 366              	@ 0 "" 2
 367              		.thumb
 368              		.syntax unified
 369 0012 044A     		ldr	r2, .L78+4
 370 0014 044B     		ldr	r3, .L78+8
 371 0016 1060     		str	r0, [r2]
 372 0018 0022     		movs	r2, #0
 373 001a 1A70     		strb	r2, [r3]
 374 001c 7047     		bx	lr
 375              	.L79:
 376 001e 00BF     		.align	2
 377              	.L78:
 378 0020 00000000 		.word	.LANCHOR0
 379 0024 00000000 		.word	.LANCHOR1
 380 0028 00000000 		.word	g_interrupt_enabled
 381              		.size	pmc_wait_wakeup_clocks_restore, .-pmc_wait_wakeup_clocks_restore
 382              		.section	.bss.b_is_sleep_clock_used,"aw",%nobits
 383              		.set	.LANCHOR0,. + 0
 384              		.type	b_is_sleep_clock_used, %object
 385              		.size	b_is_sleep_clock_used, 1
 386              	b_is_sleep_clock_used:
 387 0000 00       		.space	1
 388              		.section	.bss.callback_clocks_restored,"aw",%nobits
 389              		.align	2
 390              		.set	.LANCHOR1,. + 0
 391              		.type	callback_clocks_restored, %object
 392              		.size	callback_clocks_restored, 4
 393              	callback_clocks_restored:
 394 0000 00000000 		.space	4
 395              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 396              		.align	2
 397              		.type	cpu_irq_critical_section_counter, %object
 398              		.size	cpu_irq_critical_section_counter, 4
 399              	cpu_irq_critical_section_counter:
ARM GAS  /tmp/ccWKLn7l.s 			page 8


 400 0000 00000000 		.space	4
 401              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 402              		.type	cpu_irq_prev_interrupt_state, %object
 403              		.size	cpu_irq_prev_interrupt_state, 1
 404              	cpu_irq_prev_interrupt_state:
 405 0000 00       		.space	1
 406              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
