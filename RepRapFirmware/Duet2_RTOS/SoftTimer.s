ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccblwkpg.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN9SoftTimerC2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN9SoftTimerC2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN9SoftTimerC2Ev, %function
  24              	_ZN9SoftTimerC2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0022     		movs	r2, #0
  29 0002 0260     		str	r2, [r0]
  30 0004 8260     		str	r2, [r0, #8]
  31 0006 7047     		bx	lr
  32              		.size	_ZN9SoftTimerC2Ev, .-_ZN9SoftTimerC2Ev
  33              		.global	_ZN9SoftTimerC1Ev
  34              		.thumb_set _ZN9SoftTimerC1Ev,_ZN9SoftTimerC2Ev
  35              		.section	.text._ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_, %function
  44              	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  48 0004 0646     		mov	r6, r0
  49 0006 C0E90223 		strd	r2, r3, [r0, #8]
  50 000a 4160     		str	r1, [r0, #4]
  51              		.syntax unified
  52              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  53 000c EFF31089 		MRS r9, primask
  54              	@ 0 "" 2
  55              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  56 0010 72B6     		cpsid i
  57              	@ 0 "" 2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccblwkpg.s 			page 2


  58              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  59 0012 BFF35F8F 		dmb
  60              	@ 0 "" 2
  61              		.thumb
  62              		.syntax unified
  63 0016 DFF89880 		ldr	r8, .L20+8
  64 001a 234B     		ldr	r3, .L20
  65 001c 234C     		ldr	r4, .L20+4
  66 001e 0022     		movs	r2, #0
  67 0020 88F80020 		strb	r2, [r8]
  68 0024 D3F89050 		ldr	r5, [r3, #144]
  69 0028 2068     		ldr	r0, [r4]
  70 002a 4F1B     		subs	r7, r1, r5
  71 002c 08B3     		cbz	r0, .L4
  72 002e 4368     		ldr	r3, [r0, #4]
  73 0030 5B1B     		subs	r3, r3, r5
  74 0032 BB42     		cmp	r3, r7
  75 0034 1DDC     		bgt	.L4
  76 0036 2368     		ldr	r3, [r4]
  77 0038 002B     		cmp	r3, #0
  78 003a 32D0     		beq	.L12
  79 003c 5A68     		ldr	r2, [r3, #4]
  80 003e 521B     		subs	r2, r2, r5
  81 0040 9742     		cmp	r7, r2
  82 0042 04DC     		bgt	.L9
  83 0044 2DE0     		b	.L12
  84              	.L10:
  85 0046 5A68     		ldr	r2, [r3, #4]
  86 0048 521B     		subs	r2, r2, r5
  87 004a BA42     		cmp	r2, r7
  88 004c 17DA     		bge	.L5
  89              	.L9:
  90 004e 1C46     		mov	r4, r3
  91 0050 1B68     		ldr	r3, [r3]
  92 0052 002B     		cmp	r3, #0
  93 0054 F7D1     		bne	.L10
  94 0056 3360     		str	r3, [r6]
  95 0058 2660     		str	r6, [r4]
  96 005a B9F1000F 		cmp	r9, #0
  97 005e 13D1     		bne	.L13
  98              	.L19:
  99 0060 0123     		movs	r3, #1
 100 0062 88F80030 		strb	r3, [r8]
 101              		.syntax unified
 102              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 103 0066 BFF35F8F 		dmb
 104              	@ 0 "" 2
 105              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 106 006a 62B6     		cpsie i
 107              	@ 0 "" 2
 108              		.thumb
 109              		.syntax unified
 110 006c 4846     		mov	r0, r9
 111 006e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 112              	.L4:
 113 0072 0846     		mov	r0, r1
 114 0074 FFF7FEFF 		bl	_ZN9StepTimer26ScheduleSoftTimerInterruptEm
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccblwkpg.s 			page 3


 115 0078 48B9     		cbnz	r0, .L7
 116 007a 2368     		ldr	r3, [r4]
 117 007c 0B4C     		ldr	r4, .L20+4
 118              	.L5:
 119 007e 3360     		str	r3, [r6]
 120 0080 2660     		str	r6, [r4]
 121 0082 B9F1000F 		cmp	r9, #0
 122 0086 EBD0     		beq	.L19
 123              	.L13:
 124 0088 0020     		movs	r0, #0
 125              	.L8:
 126 008a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 127              	.L7:
 128 008e B9F1000F 		cmp	r9, #0
 129 0092 FAD1     		bne	.L8
 130 0094 0123     		movs	r3, #1
 131 0096 88F80030 		strb	r3, [r8]
 132              		.syntax unified
 133              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 134 009a BFF35F8F 		dmb
 135              	@ 0 "" 2
 136              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 137 009e 62B6     		cpsie i
 138              	@ 0 "" 2
 139              		.thumb
 140              		.syntax unified
 141 00a0 F3E7     		b	.L8
 142              	.L12:
 143 00a2 0346     		mov	r3, r0
 144 00a4 EBE7     		b	.L5
 145              	.L21:
 146 00a6 00BF     		.align	2
 147              	.L20:
 148 00a8 00000940 		.word	1074331648
 149 00ac 00000000 		.word	.LANCHOR0
 150 00b0 00000000 		.word	g_interrupt_enabled
 151              		.size	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_, .-_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_
 152              		.section	.text._ZN9SoftTimer14CancelCallbackEv,"ax",%progbits
 153              		.align	1
 154              		.p2align 2,,3
 155              		.global	_ZN9SoftTimer14CancelCallbackEv
 156              		.syntax unified
 157              		.thumb
 158              		.thumb_func
 159              		.fpu fpv4-sp-d16
 160              		.type	_ZN9SoftTimer14CancelCallbackEv, %function
 161              	_ZN9SoftTimer14CancelCallbackEv:
 162              		@ args = 0, pretend = 0, frame = 0
 163              		@ frame_needed = 0, uses_anonymous_args = 0
 164              		@ link register save eliminated.
 165 0000 10B4     		push	{r4}
 166              		.syntax unified
 167              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 168 0002 EFF31084 		MRS r4, primask
 169              	@ 0 "" 2
 170              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 171 0006 72B6     		cpsid i
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccblwkpg.s 			page 4


 172              	@ 0 "" 2
 173              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 174 0008 BFF35F8F 		dmb
 175              	@ 0 "" 2
 176              		.thumb
 177              		.syntax unified
 178 000c 0D49     		ldr	r1, .L35
 179 000e 0E4B     		ldr	r3, .L35+4
 180 0010 0022     		movs	r2, #0
 181 0012 0A70     		strb	r2, [r1]
 182 0014 1A68     		ldr	r2, [r3]
 183 0016 42B1     		cbz	r2, .L23
 184 0018 9042     		cmp	r0, r2
 185 001a 03D1     		bne	.L25
 186 001c 0EE0     		b	.L34
 187              	.L26:
 188 001e 9842     		cmp	r0, r3
 189 0020 0DD0     		beq	.L24
 190 0022 1A46     		mov	r2, r3
 191              	.L25:
 192 0024 1368     		ldr	r3, [r2]
 193 0026 002B     		cmp	r3, #0
 194 0028 F9D1     		bne	.L26
 195              	.L23:
 196 002a 24B9     		cbnz	r4, .L22
 197 002c 0123     		movs	r3, #1
 198 002e 0B70     		strb	r3, [r1]
 199              		.syntax unified
 200              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 201 0030 BFF35F8F 		dmb
 202              	@ 0 "" 2
 203              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 204 0034 62B6     		cpsie i
 205              	@ 0 "" 2
 206              		.thumb
 207              		.syntax unified
 208              	.L22:
 209 0036 5DF8044B 		ldr	r4, [sp], #4
 210 003a 7047     		bx	lr
 211              	.L34:
 212 003c 1A46     		mov	r2, r3
 213              	.L24:
 214 003e 0368     		ldr	r3, [r0]
 215 0040 1360     		str	r3, [r2]
 216 0042 F2E7     		b	.L23
 217              	.L36:
 218              		.align	2
 219              	.L35:
 220 0044 00000000 		.word	g_interrupt_enabled
 221 0048 00000000 		.word	.LANCHOR0
 222              		.size	_ZN9SoftTimer14CancelCallbackEv, .-_ZN9SoftTimer14CancelCallbackEv
 223              		.section	.text._ZN9SoftTimer16GetTimerTicksNowEv,"ax",%progbits
 224              		.align	1
 225              		.p2align 2,,3
 226              		.global	_ZN9SoftTimer16GetTimerTicksNowEv
 227              		.syntax unified
 228              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccblwkpg.s 			page 5


 229              		.thumb_func
 230              		.fpu fpv4-sp-d16
 231              		.type	_ZN9SoftTimer16GetTimerTicksNowEv, %function
 232              	_ZN9SoftTimer16GetTimerTicksNowEv:
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235              		@ link register save eliminated.
 236 0000 014B     		ldr	r3, .L38
 237 0002 D3F89000 		ldr	r0, [r3, #144]
 238 0006 7047     		bx	lr
 239              	.L39:
 240              		.align	2
 241              	.L38:
 242 0008 00000940 		.word	1074331648
 243              		.size	_ZN9SoftTimer16GetTimerTicksNowEv, .-_ZN9SoftTimer16GetTimerTicksNowEv
 244              		.section	.text._ZN9SoftTimer11GetTickRateEv,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	_ZN9SoftTimer11GetTickRateEv
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu fpv4-sp-d16
 252              		.type	_ZN9SoftTimer11GetTickRateEv, %function
 253              	_ZN9SoftTimer11GetTickRateEv:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256              		@ link register save eliminated.
 257 0000 0048     		ldr	r0, .L41
 258 0002 7047     		bx	lr
 259              	.L42:
 260              		.align	2
 261              	.L41:
 262 0004 1C4E0E00 		.word	937500
 263              		.size	_ZN9SoftTimer11GetTickRateEv, .-_ZN9SoftTimer11GetTickRateEv
 264              		.section	.text._ZN9SoftTimer9InterruptEv,"ax",%progbits
 265              		.align	1
 266              		.p2align 2,,3
 267              		.global	_ZN9SoftTimer9InterruptEv
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu fpv4-sp-d16
 272              		.type	_ZN9SoftTimer9InterruptEv, %function
 273              	_ZN9SoftTimer9InterruptEv:
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276 0000 70B5     		push	{r4, r5, r6, lr}
 277 0002 144D     		ldr	r5, .L66
 278 0004 2E46     		mov	r6, r5
 279 0006 07E0     		b	.L45
 280              	.L65:
 281 0008 6068     		ldr	r0, [r4, #4]
 282 000a FFF7FEFF 		bl	_ZN9StepTimer26ScheduleSoftTimerInterruptEm
 283 000e 30B1     		cbz	r0, .L43
 284 0010 A368     		ldr	r3, [r4, #8]
 285 0012 2268     		ldr	r2, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccblwkpg.s 			page 6


 286 0014 2A60     		str	r2, [r5]
 287 0016 1BB9     		cbnz	r3, .L64
 288              	.L45:
 289 0018 2C68     		ldr	r4, [r5]
 290 001a 002C     		cmp	r4, #0
 291 001c F4D1     		bne	.L65
 292              	.L43:
 293 001e 70BD     		pop	{r4, r5, r6, pc}
 294              	.L64:
 295 0020 211D     		adds	r1, r4, #4
 296 0022 E068     		ldr	r0, [r4, #12]
 297 0024 9847     		blx	r3
 298 0026 0028     		cmp	r0, #0
 299 0028 F6D0     		beq	.L45
 300 002a 2B68     		ldr	r3, [r5]
 301 002c 83B1     		cbz	r3, .L52
 302 002e 6068     		ldr	r0, [r4, #4]
 303 0030 5A68     		ldr	r2, [r3, #4]
 304 0032 821A     		subs	r2, r0, r2
 305 0034 002A     		cmp	r2, #0
 306 0036 04DC     		bgt	.L48
 307 0038 0AE0     		b	.L52
 308              	.L49:
 309 003a 5A68     		ldr	r2, [r3, #4]
 310 003c 821A     		subs	r2, r0, r2
 311 003e 002A     		cmp	r2, #0
 312 0040 03DD     		ble	.L47
 313              	.L48:
 314 0042 1946     		mov	r1, r3
 315 0044 1B68     		ldr	r3, [r3]
 316 0046 002B     		cmp	r3, #0
 317 0048 F7D1     		bne	.L49
 318              	.L47:
 319 004a 2360     		str	r3, [r4]
 320 004c 0C60     		str	r4, [r1]
 321 004e E3E7     		b	.L45
 322              	.L52:
 323 0050 3146     		mov	r1, r6
 324 0052 FAE7     		b	.L47
 325              	.L67:
 326              		.align	2
 327              	.L66:
 328 0054 00000000 		.word	.LANCHOR0
 329              		.size	_ZN9SoftTimer9InterruptEv, .-_ZN9SoftTimer9InterruptEv
 330              		.global	_ZN9SoftTimer11pendingListE
 331              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 332              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 333              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 334              	_ZL28cpu_irq_prev_interrupt_state:
 335 0000 00       		.space	1
 336              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 337              		.align	2
 338              		.type	_ZL32cpu_irq_critical_section_counter, %object
 339              		.size	_ZL32cpu_irq_critical_section_counter, 4
 340              	_ZL32cpu_irq_critical_section_counter:
 341 0000 00000000 		.space	4
 342              		.section	.bss._ZN9SoftTimer11pendingListE,"aw",%nobits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccblwkpg.s 			page 7


 343              		.align	2
 344              		.set	.LANCHOR0,. + 0
 345              		.type	_ZN9SoftTimer11pendingListE, %object
 346              		.size	_ZN9SoftTimer11pendingListE, 4
 347              	_ZN9SoftTimer11pendingListE:
 348 0000 00000000 		.space	4
 349              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
