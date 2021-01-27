ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSYwxCC.s 			page 1


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
  14              		.text
  15              		.section	.text.pmc_sleep,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	pmc_sleep
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	pmc_sleep, %function
  24              	pmc_sleep:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
  28 0004 431E     		subs	r3, r0, #1
  29 0006 042B     		cmp	r3, #4
  30 0008 00F2A580 		bhi	.L1
  31 000c DFE803F0 		tbb	[pc, r3]
  32              	.L4:
  33 0010 B6       		.byte	(.L3-.L4)/2
  34 0011 B6       		.byte	(.L3-.L4)/2
  35 0012 03       		.byte	(.L5-.L4)/2
  36 0013 03       		.byte	(.L5-.L4)/2
  37 0014 A5       		.byte	(.L6-.L4)/2
  38 0015 00       		.p2align 1
  39              	.L5:
  40 0016 0328     		cmp	r0, #3
  41 0018 0446     		mov	r4, r0
  42 001a 0CBF     		ite	eq
  43 001c 0020     		moveq	r0, #0
  44 001e 4FF40010 		movne	r0, #2097152
  45 0022 FFF7FEFF 		bl	pmc_set_flash_in_wait_mode
  46              		.syntax unified
  47              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  48 0026 72B6     		cpsid i
  49              	@ 0 "" 2
  50              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  51 0028 BFF35F8F 		dmb
  52              	@ 0 "" 2
  53              		.thumb
  54              		.syntax unified
  55 002c 714D     		ldr	r5, .L65
  56 002e 724F     		ldr	r7, .L65+4
  57 0030 724B     		ldr	r3, .L65+8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSYwxCC.s 			page 2


  58 0032 734A     		ldr	r2, .L65+12
  59 0034 0121     		movs	r1, #1
  60 0036 0020     		movs	r0, #0
  61 0038 2870     		strb	r0, [r5]
  62 003a 3970     		strb	r1, [r7]
  63 003c D3F82080 		ldr	r8, [r3, #32]
  64 0040 D3F830B0 		ldr	fp, [r3, #48]
  65 0044 D2F80090 		ldr	r9, [r2]
  66 0048 9E6A     		ldr	r6, [r3, #40]
  67 004a 48F45C12 		orr	r2, r8, #3604480
  68 004e 0BF0030A 		and	r10, fp, #3
  69 0052 42F00802 		orr	r2, r2, #8
  70 0056 8A45     		cmp	r10, r1
  71 0058 1A62     		str	r2, [r3, #32]
  72 005a 00F29F80 		bhi	.L64
  73 005e 5946     		mov	r1, fp
  74              	.L9:
  75 0060 11F0700F 		tst	r1, #112
  76 0064 06D0     		beq	.L11
  77 0066 654A     		ldr	r2, .L65+8
  78 0068 21F07001 		bic	r1, r1, #112
  79 006c 1163     		str	r1, [r2, #48]
  80              	.L12:
  81 006e 936E     		ldr	r3, [r2, #104]
  82 0070 1807     		lsls	r0, r3, #28
  83 0072 FCD5     		bpl	.L12
  84              	.L11:
  85 0074 FFF7FEFF 		bl	pmc_disable_pllack
  86 0078 604A     		ldr	r2, .L65+8
  87              	.L13:
  88 007a 936E     		ldr	r3, [r2, #104]
  89 007c 9903     		lsls	r1, r3, #14
  90 007e FCD5     		bpl	.L13
  91 0080 136A     		ldr	r3, [r2, #32]
  92 0082 5E49     		ldr	r1, .L65+8
  93 0084 23F09B73 		bic	r3, r3, #20316160
  94 0088 23F48033 		bic	r3, r3, #65536
  95 008c 43F45C13 		orr	r3, r3, #3604480
  96 0090 1362     		str	r3, [r2, #32]
  97              	.L14:
  98 0092 8B6E     		ldr	r3, [r1, #104]
  99 0094 DB03     		lsls	r3, r3, #15
 100 0096 FCD5     		bpl	.L14
 101 0098 594B     		ldr	r3, .L65+12
 102 009a 29F47062 		bic	r2, r9, #3840
 103 009e 042C     		cmp	r4, #4
 104 00a0 1A60     		str	r2, [r3]
 105 00a2 07D1     		bne	.L15
 106 00a4 0B6A     		ldr	r3, [r1, #32]
 107 00a6 23F45C13 		bic	r3, r3, #3604480
 108 00aa 23F00103 		bic	r3, r3, #1
 109 00ae 43F45C13 		orr	r3, r3, #3604480
 110 00b2 0B62     		str	r3, [r1, #32]
 111              	.L15:
 112 00b4 0123     		movs	r3, #1
 113 00b6 2B70     		strb	r3, [r5]
 114              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSYwxCC.s 			page 3


 115              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 116 00b8 BFF35F8F 		dmb
 117              	@ 0 "" 2
 118              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 119 00bc 62B6     		cpsie i
 120              	@ 0 "" 2
 121              		.thumb
 122              		.syntax unified
 123 00be FFF7FEFF 		bl	pmc_enable_waitmode
 124              		.syntax unified
 125              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 126 00c2 72B6     		cpsid i
 127              	@ 0 "" 2
 128              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 129 00c4 BFF35F8F 		dmb
 130              	@ 0 "" 2
 131              		.thumb
 132              		.syntax unified
 133 00c8 0023     		movs	r3, #0
 134 00ca 18F0020F 		tst	r8, #2
 135 00ce 2B70     		strb	r3, [r5]
 136 00d0 6DD0     		beq	.L16
 137 00d2 4A4A     		ldr	r2, .L65+8
 138 00d4 4B49     		ldr	r1, .L65+16
 139 00d6 106A     		ldr	r0, [r2, #32]
 140 00d8 4B4B     		ldr	r3, .L65+20
 141 00da 0140     		ands	r1, r1, r0
 142 00dc 0B43     		orrs	r3, r3, r1
 143 00de 1362     		str	r3, [r2, #32]
 144              	.L62:
 145 00e0 136A     		ldr	r3, [r2, #32]
 146 00e2 23F45C13 		bic	r3, r3, #3604480
 147 00e6 23F07803 		bic	r3, r3, #120
 148 00ea 43F45C13 		orr	r3, r3, #3604480
 149 00ee 1362     		str	r3, [r2, #32]
 150              	.L17:
 151 00f0 4649     		ldr	r1, .L65+24
 152 00f2 3140     		ands	r1, r1, r6
 153 00f4 21B1     		cbz	r1, .L22
 154 00f6 414B     		ldr	r3, .L65+8
 155 00f8 46F00056 		orr	r6, r6, #536870912
 156 00fc 9E62     		str	r6, [r3, #40]
 157 00fe 0221     		movs	r1, #2
 158              	.L22:
 159 0100 BAF1020F 		cmp	r10, #2
 160 0104 03D1     		bne	.L23
 161 0106 3D4A     		ldr	r2, .L65+8
 162              	.L24:
 163 0108 936E     		ldr	r3, [r2, #104]
 164 010a 9C07     		lsls	r4, r3, #30
 165 010c FCD5     		bpl	.L24
 166              	.L23:
 167 010e 3B4A     		ldr	r2, .L65+8
 168 0110 106B     		ldr	r0, [r2, #48]
 169 0112 0BF07003 		and	r3, fp, #112
 170 0116 20F07000 		bic	r0, r0, #112
 171 011a 0343     		orrs	r3, r3, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSYwxCC.s 			page 4


 172 011c 1363     		str	r3, [r2, #48]
 173              	.L25:
 174 011e 936E     		ldr	r3, [r2, #104]
 175 0120 1807     		lsls	r0, r3, #28
 176 0122 FCD5     		bpl	.L25
 177 0124 364B     		ldr	r3, .L65+12
 178 0126 3548     		ldr	r0, .L65+8
 179 0128 C3F80090 		str	r9, [r3]
 180 012c C2F830B0 		str	fp, [r2, #48]
 181              	.L26:
 182 0130 836E     		ldr	r3, [r0, #104]
 183 0132 1B07     		lsls	r3, r3, #28
 184 0134 FCD5     		bpl	.L26
 185 0136 314A     		ldr	r2, .L65+8
 186              	.L27:
 187 0138 936E     		ldr	r3, [r2, #104]
 188 013a 0B42     		tst	r3, r1
 189 013c FCD0     		beq	.L27
 190 013e 344C     		ldr	r4, .L65+28
 191 0140 2368     		ldr	r3, [r4]
 192 0142 0026     		movs	r6, #0
 193 0144 3E70     		strb	r6, [r7]
 194 0146 0BB1     		cbz	r3, .L28
 195 0148 9847     		blx	r3
 196 014a 2660     		str	r6, [r4]
 197              	.L28:
 198 014c 0123     		movs	r3, #1
 199 014e 2B70     		strb	r3, [r5]
 200              		.syntax unified
 201              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 202 0150 BFF35F8F 		dmb
 203              	@ 0 "" 2
 204              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 205 0154 62B6     		cpsie i
 206              	@ 0 "" 2
 207              		.thumb
 208              		.syntax unified
 209              	.L1:
 210 0156 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 211              	.L6:
 212 015a 2E4A     		ldr	r2, .L65+32
 213 015c 2E4C     		ldr	r4, .L65+36
 214 015e 1369     		ldr	r3, [r2, #16]
 215 0160 2449     		ldr	r1, .L65
 216 0162 2E4D     		ldr	r5, .L65+40
 217 0164 43F00403 		orr	r3, r3, #4
 218 0168 0120     		movs	r0, #1
 219 016a 1361     		str	r3, [r2, #16]
 220 016c 2560     		str	r5, [r4]
 221 016e 0870     		strb	r0, [r1]
 222              		.syntax unified
 223              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 224 0170 BFF35F8F 		dmb
 225              	@ 0 "" 2
 226              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 227 0174 62B6     		cpsie i
 228              	@ 0 "" 2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSYwxCC.s 			page 5


 229              	@ 401 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 230 0176 30BF     		wfi
 231              	@ 0 "" 2
 232              		.thumb
 233              		.syntax unified
 234 0178 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 235              	.L3:
 236 017c 254A     		ldr	r2, .L65+32
 237 017e 1D49     		ldr	r1, .L65
 238 0180 1369     		ldr	r3, [r2, #16]
 239 0182 0120     		movs	r0, #1
 240 0184 23F00403 		bic	r3, r3, #4
 241 0188 1361     		str	r3, [r2, #16]
 242 018a 0870     		strb	r0, [r1]
 243              		.syntax unified
 244              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 245 018c BFF35F8F 		dmb
 246              	@ 0 "" 2
 247              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 248 0190 62B6     		cpsie i
 249              	@ 0 "" 2
 250              	@ 445 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 251 0192 BFF34F8F 		dsb
 252              	@ 0 "" 2
 253              	@ 401 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 254 0196 30BF     		wfi
 255              	@ 0 "" 2
 256              		.thumb
 257              		.syntax unified
 258 0198 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 259              	.L64:
 260 019c 2BF00301 		bic	r1, fp, #3
 261 01a0 41F00101 		orr	r1, r1, #1
 262 01a4 1963     		str	r1, [r3, #48]
 263              	.L10:
 264 01a6 9A6E     		ldr	r2, [r3, #104]
 265 01a8 1207     		lsls	r2, r2, #28
 266 01aa FCD5     		bpl	.L10
 267 01ac 58E7     		b	.L9
 268              	.L16:
 269 01ae 18F0010F 		tst	r8, #1
 270 01b2 9DD0     		beq	.L17
 271 01b4 114B     		ldr	r3, .L65+8
 272 01b6 1A6A     		ldr	r2, [r3, #32]
 273 01b8 D407     		lsls	r4, r2, #31
 274 01ba 0CD4     		bmi	.L18
 275 01bc 1A6A     		ldr	r2, [r3, #32]
 276 01be 22F45C12 		bic	r2, r2, #3604480
 277 01c2 22F00302 		bic	r2, r2, #3
 278 01c6 42F45C12 		orr	r2, r2, #3604480
 279 01ca 42F00102 		orr	r2, r2, #1
 280 01ce 1A62     		str	r2, [r3, #32]
 281              	.L19:
 282 01d0 9A6E     		ldr	r2, [r3, #104]
 283 01d2 D007     		lsls	r0, r2, #31
 284 01d4 FCD5     		bpl	.L19
 285              	.L18:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSYwxCC.s 			page 6


 286 01d6 094B     		ldr	r3, .L65+8
 287 01d8 1A6A     		ldr	r2, [r3, #32]
 288 01da D101     		lsls	r1, r2, #7
 289 01dc 08D4     		bmi	.L20
 290 01de 1A6A     		ldr	r2, [r3, #32]
 291 01e0 42F09B72 		orr	r2, r2, #20316160
 292 01e4 42F48032 		orr	r2, r2, #65536
 293 01e8 1A62     		str	r2, [r3, #32]
 294              	.L21:
 295 01ea 9A6E     		ldr	r2, [r3, #104]
 296 01ec D203     		lsls	r2, r2, #15
 297 01ee FCD5     		bpl	.L21
 298              	.L20:
 299 01f0 024A     		ldr	r2, .L65+8
 300 01f2 75E7     		b	.L62
 301              	.L66:
 302              		.align	2
 303              	.L65:
 304 01f4 00000000 		.word	g_interrupt_enabled
 305 01f8 00000000 		.word	.LANCHOR0
 306 01fc 00040E40 		.word	1074660352
 307 0200 000A0E40 		.word	1074661888
 308 0204 FCFFC8FE 		.word	-20381700
 309 0208 02003701 		.word	20381698
 310 020c 0000FF07 		.word	134152192
 311 0210 00000000 		.word	.LANCHOR1
 312 0214 00ED00E0 		.word	-536810240
 313 0218 10180E40 		.word	1074665488
 314 021c 040000A5 		.word	-1526726652
 315              		.size	pmc_sleep, .-pmc_sleep
 316              		.section	.text.pmc_is_wakeup_clocks_restored,"ax",%progbits
 317              		.align	1
 318              		.p2align 2,,3
 319              		.global	pmc_is_wakeup_clocks_restored
 320              		.syntax unified
 321              		.thumb
 322              		.thumb_func
 323              		.fpu fpv4-sp-d16
 324              		.type	pmc_is_wakeup_clocks_restored, %function
 325              	pmc_is_wakeup_clocks_restored:
 326              		@ args = 0, pretend = 0, frame = 0
 327              		@ frame_needed = 0, uses_anonymous_args = 0
 328              		@ link register save eliminated.
 329 0000 024B     		ldr	r3, .L68
 330 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 331 0004 80F00100 		eor	r0, r0, #1
 332 0008 7047     		bx	lr
 333              	.L69:
 334 000a 00BF     		.align	2
 335              	.L68:
 336 000c 00000000 		.word	.LANCHOR0
 337              		.size	pmc_is_wakeup_clocks_restored, .-pmc_is_wakeup_clocks_restored
 338              		.section	.text.pmc_wait_wakeup_clocks_restore,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	pmc_wait_wakeup_clocks_restore
 342              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSYwxCC.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu fpv4-sp-d16
 346              		.type	pmc_wait_wakeup_clocks_restore, %function
 347              	pmc_wait_wakeup_clocks_restore:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350              		@ link register save eliminated.
 351 0000 074B     		ldr	r3, .L77
 352 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 353 0004 13B9     		cbnz	r3, .L76
 354 0006 00B1     		cbz	r0, .L70
 355 0008 0047     		bx	r0	@ indirect register sibling call
 356              	.L70:
 357 000a 7047     		bx	lr
 358              	.L76:
 359              		.syntax unified
 360              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 361 000c 72B6     		cpsid i
 362              	@ 0 "" 2
 363              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 364 000e BFF35F8F 		dmb
 365              	@ 0 "" 2
 366              		.thumb
 367              		.syntax unified
 368 0012 044A     		ldr	r2, .L77+4
 369 0014 044B     		ldr	r3, .L77+8
 370 0016 1060     		str	r0, [r2]
 371 0018 0022     		movs	r2, #0
 372 001a 1A70     		strb	r2, [r3]
 373 001c 7047     		bx	lr
 374              	.L78:
 375 001e 00BF     		.align	2
 376              	.L77:
 377 0020 00000000 		.word	.LANCHOR0
 378 0024 00000000 		.word	.LANCHOR1
 379 0028 00000000 		.word	g_interrupt_enabled
 380              		.size	pmc_wait_wakeup_clocks_restore, .-pmc_wait_wakeup_clocks_restore
 381              		.section	.bss.b_is_sleep_clock_used,"aw",%nobits
 382              		.set	.LANCHOR0,. + 0
 383              		.type	b_is_sleep_clock_used, %object
 384              		.size	b_is_sleep_clock_used, 1
 385              	b_is_sleep_clock_used:
 386 0000 00       		.space	1
 387              		.section	.bss.callback_clocks_restored,"aw",%nobits
 388              		.align	2
 389              		.set	.LANCHOR1,. + 0
 390              		.type	callback_clocks_restored, %object
 391              		.size	callback_clocks_restored, 4
 392              	callback_clocks_restored:
 393 0000 00000000 		.space	4
 394              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 395              		.align	2
 396              		.type	cpu_irq_critical_section_counter, %object
 397              		.size	cpu_irq_critical_section_counter, 4
 398              	cpu_irq_critical_section_counter:
 399 0000 00000000 		.space	4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSYwxCC.s 			page 8


 400              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 401              		.type	cpu_irq_prev_interrupt_state, %object
 402              		.size	cpu_irq_prev_interrupt_state, 1
 403              	cpu_irq_prev_interrupt_state:
 404 0000 00       		.space	1
 405              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
