ARM GAS  /tmp/ccV00NCU.s 			page 1


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
  13              		.file	"SoftTimer.cpp"
  14              		.section	.text._ZN9SoftTimerC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN9SoftTimerC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN9SoftTimerC2Ev, %function
  23              	_ZN9SoftTimerC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0022     		movs	r2, #0
  28 0002 0260     		str	r2, [r0]
  29 0004 8260     		str	r2, [r0, #8]
  30 0006 7047     		bx	lr
  31              		.size	_ZN9SoftTimerC2Ev, .-_ZN9SoftTimerC2Ev
  32              		.global	_ZN9SoftTimerC1Ev
  33              		.thumb_set _ZN9SoftTimerC1Ev,_ZN9SoftTimerC2Ev
  34              		.section	.text._ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_, %function
  43              	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  47 0004 0646     		mov	r6, r0
  48 0006 C0E90223 		strd	r2, r3, [r0, #8]
  49 000a 4160     		str	r1, [r0, #4]
  50              		.syntax unified
  51              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  52 000c EFF31089 		MRS r9, primask
  53              	@ 0 "" 2
  54              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  55 0010 72B6     		cpsid i
  56              	@ 0 "" 2
  57              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
ARM GAS  /tmp/ccV00NCU.s 			page 2


  58 0012 BFF35F8F 		dmb
  59              	@ 0 "" 2
  60              		.thumb
  61              		.syntax unified
  62 0016 DFF89880 		ldr	r8, .L20+8
  63 001a 234B     		ldr	r3, .L20
  64 001c 234C     		ldr	r4, .L20+4
  65 001e 0022     		movs	r2, #0
  66 0020 88F80020 		strb	r2, [r8]
  67 0024 D3F89050 		ldr	r5, [r3, #144]
  68 0028 2068     		ldr	r0, [r4]
  69 002a 4F1B     		subs	r7, r1, r5
  70 002c 08B3     		cbz	r0, .L4
  71 002e 4368     		ldr	r3, [r0, #4]
  72 0030 5B1B     		subs	r3, r3, r5
  73 0032 BB42     		cmp	r3, r7
  74 0034 1DDC     		bgt	.L4
  75 0036 2368     		ldr	r3, [r4]
  76 0038 002B     		cmp	r3, #0
  77 003a 32D0     		beq	.L12
  78 003c 5A68     		ldr	r2, [r3, #4]
  79 003e 521B     		subs	r2, r2, r5
  80 0040 9742     		cmp	r7, r2
  81 0042 04DC     		bgt	.L9
  82 0044 2DE0     		b	.L12
  83              	.L10:
  84 0046 5A68     		ldr	r2, [r3, #4]
  85 0048 521B     		subs	r2, r2, r5
  86 004a BA42     		cmp	r2, r7
  87 004c 17DA     		bge	.L5
  88              	.L9:
  89 004e 1C46     		mov	r4, r3
  90 0050 1B68     		ldr	r3, [r3]
  91 0052 002B     		cmp	r3, #0
  92 0054 F7D1     		bne	.L10
  93 0056 3360     		str	r3, [r6]
  94 0058 2660     		str	r6, [r4]
  95 005a B9F1000F 		cmp	r9, #0
  96 005e 13D1     		bne	.L13
  97              	.L19:
  98 0060 0123     		movs	r3, #1
  99 0062 88F80030 		strb	r3, [r8]
 100              		.syntax unified
 101              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 102 0066 BFF35F8F 		dmb
 103              	@ 0 "" 2
 104              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 105 006a 62B6     		cpsie i
 106              	@ 0 "" 2
 107              		.thumb
 108              		.syntax unified
 109 006c 4846     		mov	r0, r9
 110 006e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 111              	.L4:
 112 0072 0846     		mov	r0, r1
 113 0074 FFF7FEFF 		bl	_ZN8Platform26ScheduleSoftTimerInterruptEm
 114 0078 48B9     		cbnz	r0, .L7
ARM GAS  /tmp/ccV00NCU.s 			page 3


 115 007a 2368     		ldr	r3, [r4]
 116 007c 0B4C     		ldr	r4, .L20+4
 117              	.L5:
 118 007e 3360     		str	r3, [r6]
 119 0080 2660     		str	r6, [r4]
 120 0082 B9F1000F 		cmp	r9, #0
 121 0086 EBD0     		beq	.L19
 122              	.L13:
 123 0088 0020     		movs	r0, #0
 124              	.L8:
 125 008a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 126              	.L7:
 127 008e B9F1000F 		cmp	r9, #0
 128 0092 FAD1     		bne	.L8
 129 0094 0123     		movs	r3, #1
 130 0096 88F80030 		strb	r3, [r8]
 131              		.syntax unified
 132              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 133 009a BFF35F8F 		dmb
 134              	@ 0 "" 2
 135              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 136 009e 62B6     		cpsie i
 137              	@ 0 "" 2
 138              		.thumb
 139              		.syntax unified
 140 00a0 F3E7     		b	.L8
 141              	.L12:
 142 00a2 0346     		mov	r3, r0
 143 00a4 EBE7     		b	.L5
 144              	.L21:
 145 00a6 00BF     		.align	2
 146              	.L20:
 147 00a8 00000940 		.word	1074331648
 148 00ac 00000000 		.word	.LANCHOR0
 149 00b0 00000000 		.word	g_interrupt_enabled
 150              		.size	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_, .-_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_
 151              		.section	.text._ZN9SoftTimer14CancelCallbackEv,"ax",%progbits
 152              		.align	1
 153              		.p2align 2,,3
 154              		.global	_ZN9SoftTimer14CancelCallbackEv
 155              		.syntax unified
 156              		.thumb
 157              		.thumb_func
 158              		.fpu fpv4-sp-d16
 159              		.type	_ZN9SoftTimer14CancelCallbackEv, %function
 160              	_ZN9SoftTimer14CancelCallbackEv:
 161              		@ args = 0, pretend = 0, frame = 0
 162              		@ frame_needed = 0, uses_anonymous_args = 0
 163              		@ link register save eliminated.
 164 0000 10B4     		push	{r4}
 165              		.syntax unified
 166              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 167 0002 EFF31084 		MRS r4, primask
 168              	@ 0 "" 2
 169              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 170 0006 72B6     		cpsid i
 171              	@ 0 "" 2
ARM GAS  /tmp/ccV00NCU.s 			page 4


 172              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 173 0008 BFF35F8F 		dmb
 174              	@ 0 "" 2
 175              		.thumb
 176              		.syntax unified
 177 000c 0D49     		ldr	r1, .L35
 178 000e 0E4B     		ldr	r3, .L35+4
 179 0010 0022     		movs	r2, #0
 180 0012 0A70     		strb	r2, [r1]
 181 0014 1A68     		ldr	r2, [r3]
 182 0016 42B1     		cbz	r2, .L23
 183 0018 9042     		cmp	r0, r2
 184 001a 03D1     		bne	.L25
 185 001c 0EE0     		b	.L34
 186              	.L26:
 187 001e 9842     		cmp	r0, r3
 188 0020 0DD0     		beq	.L24
 189 0022 1A46     		mov	r2, r3
 190              	.L25:
 191 0024 1368     		ldr	r3, [r2]
 192 0026 002B     		cmp	r3, #0
 193 0028 F9D1     		bne	.L26
 194              	.L23:
 195 002a 24B9     		cbnz	r4, .L22
 196 002c 0123     		movs	r3, #1
 197 002e 0B70     		strb	r3, [r1]
 198              		.syntax unified
 199              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 200 0030 BFF35F8F 		dmb
 201              	@ 0 "" 2
 202              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 203 0034 62B6     		cpsie i
 204              	@ 0 "" 2
 205              		.thumb
 206              		.syntax unified
 207              	.L22:
 208 0036 5DF8044B 		ldr	r4, [sp], #4
 209 003a 7047     		bx	lr
 210              	.L34:
 211 003c 1A46     		mov	r2, r3
 212              	.L24:
 213 003e 0368     		ldr	r3, [r0]
 214 0040 1360     		str	r3, [r2]
 215 0042 F2E7     		b	.L23
 216              	.L36:
 217              		.align	2
 218              	.L35:
 219 0044 00000000 		.word	g_interrupt_enabled
 220 0048 00000000 		.word	.LANCHOR0
 221              		.size	_ZN9SoftTimer14CancelCallbackEv, .-_ZN9SoftTimer14CancelCallbackEv
 222              		.section	.text._ZN9SoftTimer16GetTimerTicksNowEv,"ax",%progbits
 223              		.align	1
 224              		.p2align 2,,3
 225              		.global	_ZN9SoftTimer16GetTimerTicksNowEv
 226              		.syntax unified
 227              		.thumb
 228              		.thumb_func
ARM GAS  /tmp/ccV00NCU.s 			page 5


 229              		.fpu fpv4-sp-d16
 230              		.type	_ZN9SoftTimer16GetTimerTicksNowEv, %function
 231              	_ZN9SoftTimer16GetTimerTicksNowEv:
 232              		@ args = 0, pretend = 0, frame = 0
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234              		@ link register save eliminated.
 235 0000 014B     		ldr	r3, .L38
 236 0002 D3F89000 		ldr	r0, [r3, #144]
 237 0006 7047     		bx	lr
 238              	.L39:
 239              		.align	2
 240              	.L38:
 241 0008 00000940 		.word	1074331648
 242              		.size	_ZN9SoftTimer16GetTimerTicksNowEv, .-_ZN9SoftTimer16GetTimerTicksNowEv
 243              		.section	.text._ZN9SoftTimer11GetTickRateEv,"ax",%progbits
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	_ZN9SoftTimer11GetTickRateEv
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu fpv4-sp-d16
 251              		.type	_ZN9SoftTimer11GetTickRateEv, %function
 252              	_ZN9SoftTimer11GetTickRateEv:
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255              		@ link register save eliminated.
 256 0000 0048     		ldr	r0, .L41
 257 0002 7047     		bx	lr
 258              	.L42:
 259              		.align	2
 260              	.L41:
 261 0004 1C4E0E00 		.word	937500
 262              		.size	_ZN9SoftTimer11GetTickRateEv, .-_ZN9SoftTimer11GetTickRateEv
 263              		.section	.text._ZN9SoftTimer9InterruptEv,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	_ZN9SoftTimer9InterruptEv
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu fpv4-sp-d16
 271              		.type	_ZN9SoftTimer9InterruptEv, %function
 272              	_ZN9SoftTimer9InterruptEv:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275 0000 70B5     		push	{r4, r5, r6, lr}
 276 0002 144D     		ldr	r5, .L66
 277 0004 2E46     		mov	r6, r5
 278 0006 07E0     		b	.L45
 279              	.L65:
 280 0008 6068     		ldr	r0, [r4, #4]
 281 000a FFF7FEFF 		bl	_ZN8Platform26ScheduleSoftTimerInterruptEm
 282 000e 30B1     		cbz	r0, .L43
 283 0010 A368     		ldr	r3, [r4, #8]
 284 0012 2268     		ldr	r2, [r4]
 285 0014 2A60     		str	r2, [r5]
ARM GAS  /tmp/ccV00NCU.s 			page 6


 286 0016 1BB9     		cbnz	r3, .L64
 287              	.L45:
 288 0018 2C68     		ldr	r4, [r5]
 289 001a 002C     		cmp	r4, #0
 290 001c F4D1     		bne	.L65
 291              	.L43:
 292 001e 70BD     		pop	{r4, r5, r6, pc}
 293              	.L64:
 294 0020 211D     		adds	r1, r4, #4
 295 0022 E068     		ldr	r0, [r4, #12]
 296 0024 9847     		blx	r3
 297 0026 0028     		cmp	r0, #0
 298 0028 F6D0     		beq	.L45
 299 002a 2B68     		ldr	r3, [r5]
 300 002c 83B1     		cbz	r3, .L52
 301 002e 6068     		ldr	r0, [r4, #4]
 302 0030 5A68     		ldr	r2, [r3, #4]
 303 0032 821A     		subs	r2, r0, r2
 304 0034 002A     		cmp	r2, #0
 305 0036 04DC     		bgt	.L48
 306 0038 0AE0     		b	.L52
 307              	.L49:
 308 003a 5A68     		ldr	r2, [r3, #4]
 309 003c 821A     		subs	r2, r0, r2
 310 003e 002A     		cmp	r2, #0
 311 0040 03DD     		ble	.L47
 312              	.L48:
 313 0042 1946     		mov	r1, r3
 314 0044 1B68     		ldr	r3, [r3]
 315 0046 002B     		cmp	r3, #0
 316 0048 F7D1     		bne	.L49
 317              	.L47:
 318 004a 2360     		str	r3, [r4]
 319 004c 0C60     		str	r4, [r1]
 320 004e E3E7     		b	.L45
 321              	.L52:
 322 0050 3146     		mov	r1, r6
 323 0052 FAE7     		b	.L47
 324              	.L67:
 325              		.align	2
 326              	.L66:
 327 0054 00000000 		.word	.LANCHOR0
 328              		.size	_ZN9SoftTimer9InterruptEv, .-_ZN9SoftTimer9InterruptEv
 329              		.global	_ZN9SoftTimer11pendingListE
 330              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 331              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 332              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 333              	_ZL28cpu_irq_prev_interrupt_state:
 334 0000 00       		.space	1
 335              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 336              		.align	2
 337              		.type	_ZL32cpu_irq_critical_section_counter, %object
 338              		.size	_ZL32cpu_irq_critical_section_counter, 4
 339              	_ZL32cpu_irq_critical_section_counter:
 340 0000 00000000 		.space	4
 341              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 342              		.align	2
ARM GAS  /tmp/ccV00NCU.s 			page 7


 343              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 344              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 345              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 346 0000 00000000 		.space	4
 347              		.section	.bss._ZN9SoftTimer11pendingListE,"aw",%nobits
 348              		.align	2
 349              		.set	.LANCHOR0,. + 0
 350              		.type	_ZN9SoftTimer11pendingListE, %object
 351              		.size	_ZN9SoftTimer11pendingListE, 4
 352              	_ZN9SoftTimer11pendingListE:
 353 0000 00000000 		.space	4
 354              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
