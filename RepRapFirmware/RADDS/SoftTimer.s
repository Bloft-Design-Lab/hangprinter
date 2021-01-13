ARM GAS  /tmp/ccEGmpI6.s 			page 1


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
  11              		.file	"SoftTimer.cpp"
  12              		.section	.text._ZN9SoftTimerC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN9SoftTimerC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN9SoftTimerC2Ev, %function
  21              	_ZN9SoftTimerC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0022     		movs	r2, #0
  26 0002 0260     		str	r2, [r0]
  27 0004 8260     		str	r2, [r0, #8]
  28 0006 7047     		bx	lr
  29              		.size	_ZN9SoftTimerC2Ev, .-_ZN9SoftTimerC2Ev
  30              		.global	_ZN9SoftTimerC1Ev
  31              		.thumb_set _ZN9SoftTimerC1Ev,_ZN9SoftTimerC2Ev
  32              		.section	.text._ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu softvfp
  40              		.type	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_, %function
  41              	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  45 0004 0746     		mov	r7, r0
  46 0006 8260     		str	r2, [r0, #8]
  47 0008 C360     		str	r3, [r0, #12]
  48 000a 4160     		str	r1, [r0, #4]
  49              		.syntax unified
  50              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  51 000c EFF31089 		MRS r9, primask
  52              	@ 0 "" 2
  53              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  54 0010 72B6     		cpsid i
  55              	@ 0 "" 2
  56              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  57 0012 BFF35F8F 		dmb
ARM GAS  /tmp/ccEGmpI6.s 			page 2


  58              	@ 0 "" 2
  59              		.thumb
  60              		.syntax unified
  61 0016 0022     		movs	r2, #0
  62 0018 DFF88080 		ldr	r8, .L21+8
  63 001c 1D4B     		ldr	r3, .L21
  64 001e 1E4C     		ldr	r4, .L21+4
  65 0020 88F80020 		strb	r2, [r8]
  66 0024 1D69     		ldr	r5, [r3, #16]
  67 0026 2368     		ldr	r3, [r4]
  68 0028 4E1B     		subs	r6, r1, r5
  69 002a 9BB1     		cbz	r3, .L3
  70 002c 5A68     		ldr	r2, [r3, #4]
  71 002e 521B     		subs	r2, r2, r5
  72 0030 9642     		cmp	r6, r2
  73 0032 0FDB     		blt	.L3
  74 0034 06DD     		ble	.L4
  75              	.L18:
  76 0036 1C46     		mov	r4, r3
  77 0038 1B68     		ldr	r3, [r3]
  78 003a 1BB1     		cbz	r3, .L4
  79 003c 5A68     		ldr	r2, [r3, #4]
  80 003e 521B     		subs	r2, r2, r5
  81 0040 9642     		cmp	r6, r2
  82 0042 F8DC     		bgt	.L18
  83              	.L4:
  84 0044 3B60     		str	r3, [r7]
  85 0046 2760     		str	r7, [r4]
  86 0048 B9F1000F 		cmp	r9, #0
  87 004c 11D0     		beq	.L19
  88              	.L11:
  89 004e 0020     		movs	r0, #0
  90              	.L7:
  91 0050 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  92              	.L3:
  93 0054 0846     		mov	r0, r1
  94 0056 FFF7FEFF 		bl	_ZN8Platform26ScheduleSoftTimerInterruptEm
  95 005a 98B1     		cbz	r0, .L20
  96 005c B9F1000F 		cmp	r9, #0
  97 0060 F6D1     		bne	.L7
  98 0062 0123     		movs	r3, #1
  99 0064 88F80030 		strb	r3, [r8]
 100              		.syntax unified
 101              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 102 0068 BFF35F8F 		dmb
 103              	@ 0 "" 2
 104              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 105 006c 62B6     		cpsie i
 106              	@ 0 "" 2
 107              		.thumb
 108              		.syntax unified
 109 006e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 110              	.L19:
 111 0072 0123     		movs	r3, #1
 112 0074 88F80030 		strb	r3, [r8]
 113              		.syntax unified
 114              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
ARM GAS  /tmp/ccEGmpI6.s 			page 3


 115 0078 BFF35F8F 		dmb
 116              	@ 0 "" 2
 117              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 118 007c 62B6     		cpsie i
 119              	@ 0 "" 2
 120              		.thumb
 121              		.syntax unified
 122 007e 4846     		mov	r0, r9
 123 0080 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 124              	.L20:
 125 0084 2368     		ldr	r3, [r4]
 126 0086 044C     		ldr	r4, .L21+4
 127 0088 3B60     		str	r3, [r7]
 128 008a 2760     		str	r7, [r4]
 129 008c B9F1000F 		cmp	r9, #0
 130 0090 DDD1     		bne	.L11
 131 0092 EEE7     		b	.L19
 132              	.L22:
 133              		.align	2
 134              	.L21:
 135 0094 00400840 		.word	1074282496
 136 0098 00000000 		.word	.LANCHOR0
 137 009c 00000000 		.word	g_interrupt_enabled
 138              		.size	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_, .-_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_
 139              		.section	.text._ZN9SoftTimer14CancelCallbackEv,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.global	_ZN9SoftTimer14CancelCallbackEv
 143              		.syntax unified
 144              		.thumb
 145              		.thumb_func
 146              		.fpu softvfp
 147              		.type	_ZN9SoftTimer14CancelCallbackEv, %function
 148              	_ZN9SoftTimer14CancelCallbackEv:
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151              		@ link register save eliminated.
 152 0000 10B4     		push	{r4}
 153              		.syntax unified
 154              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 155 0002 EFF31084 		MRS r4, primask
 156              	@ 0 "" 2
 157              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 158 0006 72B6     		cpsid i
 159              	@ 0 "" 2
 160              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 161 0008 BFF35F8F 		dmb
 162              	@ 0 "" 2
 163              		.thumb
 164              		.syntax unified
 165 000c 0022     		movs	r2, #0
 166 000e 0D49     		ldr	r1, .L38
 167 0010 0D4B     		ldr	r3, .L38+4
 168 0012 0A70     		strb	r2, [r1]
 169 0014 1A68     		ldr	r2, [r3]
 170 0016 42B1     		cbz	r2, .L24
 171 0018 9042     		cmp	r0, r2
ARM GAS  /tmp/ccEGmpI6.s 			page 4


 172 001a 03D1     		bne	.L27
 173 001c 0DE0     		b	.L37
 174              	.L28:
 175 001e 9842     		cmp	r0, r3
 176 0020 0CD0     		beq	.L25
 177 0022 1A46     		mov	r2, r3
 178              	.L27:
 179 0024 1368     		ldr	r3, [r2]
 180 0026 002B     		cmp	r3, #0
 181 0028 F9D1     		bne	.L28
 182              	.L24:
 183 002a 24B9     		cbnz	r4, .L23
 184 002c 0123     		movs	r3, #1
 185 002e 0B70     		strb	r3, [r1]
 186              		.syntax unified
 187              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 188 0030 BFF35F8F 		dmb
 189              	@ 0 "" 2
 190              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 191 0034 62B6     		cpsie i
 192              	@ 0 "" 2
 193              		.thumb
 194              		.syntax unified
 195              	.L23:
 196 0036 10BC     		pop	{r4}
 197 0038 7047     		bx	lr
 198              	.L37:
 199 003a 1A46     		mov	r2, r3
 200              	.L25:
 201 003c 0368     		ldr	r3, [r0]
 202 003e 1360     		str	r3, [r2]
 203 0040 F3E7     		b	.L24
 204              	.L39:
 205 0042 00BF     		.align	2
 206              	.L38:
 207 0044 00000000 		.word	g_interrupt_enabled
 208 0048 00000000 		.word	.LANCHOR0
 209              		.size	_ZN9SoftTimer14CancelCallbackEv, .-_ZN9SoftTimer14CancelCallbackEv
 210              		.section	.text._ZN9SoftTimer16GetTimerTicksNowEv,"ax",%progbits
 211              		.align	1
 212              		.p2align 2,,3
 213              		.global	_ZN9SoftTimer16GetTimerTicksNowEv
 214              		.syntax unified
 215              		.thumb
 216              		.thumb_func
 217              		.fpu softvfp
 218              		.type	_ZN9SoftTimer16GetTimerTicksNowEv, %function
 219              	_ZN9SoftTimer16GetTimerTicksNowEv:
 220              		@ args = 0, pretend = 0, frame = 0
 221              		@ frame_needed = 0, uses_anonymous_args = 0
 222              		@ link register save eliminated.
 223 0000 014B     		ldr	r3, .L41
 224 0002 1869     		ldr	r0, [r3, #16]
 225 0004 7047     		bx	lr
 226              	.L42:
 227 0006 00BF     		.align	2
 228              	.L41:
ARM GAS  /tmp/ccEGmpI6.s 			page 5


 229 0008 00400840 		.word	1074282496
 230              		.size	_ZN9SoftTimer16GetTimerTicksNowEv, .-_ZN9SoftTimer16GetTimerTicksNowEv
 231              		.section	.text._ZN9SoftTimer11GetTickRateEv,"ax",%progbits
 232              		.align	1
 233              		.p2align 2,,3
 234              		.global	_ZN9SoftTimer11GetTickRateEv
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu softvfp
 239              		.type	_ZN9SoftTimer11GetTickRateEv, %function
 240              	_ZN9SoftTimer11GetTickRateEv:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243              		@ link register save eliminated.
 244 0000 0048     		ldr	r0, .L44
 245 0002 7047     		bx	lr
 246              	.L45:
 247              		.align	2
 248              	.L44:
 249 0004 7A030A00 		.word	656250
 250              		.size	_ZN9SoftTimer11GetTickRateEv, .-_ZN9SoftTimer11GetTickRateEv
 251              		.section	.text._ZN9SoftTimer9InterruptEv,"ax",%progbits
 252              		.align	1
 253              		.p2align 2,,3
 254              		.global	_ZN9SoftTimer9InterruptEv
 255              		.syntax unified
 256              		.thumb
 257              		.thumb_func
 258              		.fpu softvfp
 259              		.type	_ZN9SoftTimer9InterruptEv, %function
 260              	_ZN9SoftTimer9InterruptEv:
 261              		@ args = 0, pretend = 0, frame = 0
 262              		@ frame_needed = 0, uses_anonymous_args = 0
 263 0000 70B5     		push	{r4, r5, r6, lr}
 264 0002 154D     		ldr	r5, .L69
 265 0004 2E46     		mov	r6, r5
 266              	.L48:
 267 0006 2C68     		ldr	r4, [r5]
 268 0008 14B3     		cbz	r4, .L46
 269              	.L68:
 270 000a 6068     		ldr	r0, [r4, #4]
 271 000c FFF7FEFF 		bl	_ZN8Platform26ScheduleSoftTimerInterruptEm
 272 0010 F0B1     		cbz	r0, .L46
 273 0012 2268     		ldr	r2, [r4]
 274 0014 A368     		ldr	r3, [r4, #8]
 275 0016 2A60     		str	r2, [r5]
 276 0018 002B     		cmp	r3, #0
 277 001a F4D0     		beq	.L48
 278 001c 211D     		adds	r1, r4, #4
 279 001e E068     		ldr	r0, [r4, #12]
 280 0020 9847     		blx	r3
 281 0022 0028     		cmp	r0, #0
 282 0024 EFD0     		beq	.L48
 283 0026 2B68     		ldr	r3, [r5]
 284 0028 9BB1     		cbz	r3, .L56
 285 002a 6168     		ldr	r1, [r4, #4]
ARM GAS  /tmp/ccEGmpI6.s 			page 6


 286 002c 5A68     		ldr	r2, [r3, #4]
 287 002e 8A1A     		subs	r2, r1, r2
 288 0030 002A     		cmp	r2, #0
 289 0032 04DC     		bgt	.L52
 290 0034 0DE0     		b	.L56
 291              	.L53:
 292 0036 5A68     		ldr	r2, [r3, #4]
 293 0038 8A1A     		subs	r2, r1, r2
 294 003a 002A     		cmp	r2, #0
 295 003c 03DD     		ble	.L50
 296              	.L52:
 297 003e 1846     		mov	r0, r3
 298 0040 1B68     		ldr	r3, [r3]
 299 0042 002B     		cmp	r3, #0
 300 0044 F7D1     		bne	.L53
 301              	.L50:
 302 0046 2360     		str	r3, [r4]
 303 0048 0460     		str	r4, [r0]
 304 004a 2C68     		ldr	r4, [r5]
 305 004c 002C     		cmp	r4, #0
 306 004e DCD1     		bne	.L68
 307              	.L46:
 308 0050 70BD     		pop	{r4, r5, r6, pc}
 309              	.L56:
 310 0052 3046     		mov	r0, r6
 311 0054 F7E7     		b	.L50
 312              	.L70:
 313 0056 00BF     		.align	2
 314              	.L69:
 315 0058 00000000 		.word	.LANCHOR0
 316              		.size	_ZN9SoftTimer9InterruptEv, .-_ZN9SoftTimer9InterruptEv
 317              		.global	_ZN9SoftTimer11pendingListE
 318              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 319              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 320              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 321              	_ZL28cpu_irq_prev_interrupt_state:
 322 0000 00       		.space	1
 323              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 324              		.align	2
 325              		.type	_ZL32cpu_irq_critical_section_counter, %object
 326              		.size	_ZL32cpu_irq_critical_section_counter, 4
 327              	_ZL32cpu_irq_critical_section_counter:
 328 0000 00000000 		.space	4
 329              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 330              		.align	2
 331              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 332              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 333              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 334 0000 00000000 		.space	4
 335              		.section	.bss._ZN9SoftTimer11pendingListE,"aw",%nobits
 336              		.align	2
 337              		.set	.LANCHOR0,. + 0
 338              		.type	_ZN9SoftTimer11pendingListE, %object
 339              		.size	_ZN9SoftTimer11pendingListE, 4
 340              	_ZN9SoftTimer11pendingListE:
 341 0000 00000000 		.space	4
 342              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
ARM GAS  /tmp/ccEGmpI6.s 			page 7


