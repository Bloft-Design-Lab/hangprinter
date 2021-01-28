ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoid86w.s 			page 1


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
  13              		.file	"SimpleFilamentMonitor.cpp"
  14              		.text
  15              		.section	.text._ZN21SimpleFilamentMonitor9InterruptEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN21SimpleFilamentMonitor9InterruptEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN21SimpleFilamentMonitor9InterruptEv, %function
  24              	_ZN21SimpleFilamentMonitor9InterruptEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 08B5     		push	{r3, lr}
  28 0002 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  29 0004 FFF7FEFF 		bl	_Z15detachInterruptm
  30 0008 0020     		movs	r0, #0
  31 000a 08BD     		pop	{r3, pc}
  32              		.size	_ZN21SimpleFilamentMonitor9InterruptEv, .-_ZN21SimpleFilamentMonitor9InterruptEv
  33              		.section	.text._ZN21SimpleFilamentMonitor5CheckEbbbf,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	_ZN21SimpleFilamentMonitor5CheckEbbbf
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu fpv4-sp-d16
  41              		.type	_ZN21SimpleFilamentMonitor5CheckEbbbf, %function
  42              	_ZN21SimpleFilamentMonitor5CheckEbbbf:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45 0000 10B5     		push	{r4, lr}
  46 0002 0446     		mov	r4, r0
  47 0004 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  48 0006 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
  49 000a E37D     		ldrb	r3, [r4, #23]	@ zero_extendqisi2
  50 000c 13B1     		cbz	r3, .L5
  51 000e 80F00100 		eor	r0, r0, #1
  52 0012 C0B2     		uxtb	r0, r0
  53              	.L5:
  54 0014 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
  55 0016 2076     		strb	r0, [r4, #24]
  56 0018 1BB1     		cbz	r3, .L7
  57 001a 80F00100 		eor	r0, r0, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoid86w.s 			page 2


  58 001e C0B2     		uxtb	r0, r0
  59 0020 10BD     		pop	{r4, pc}
  60              	.L7:
  61 0022 1846     		mov	r0, r3
  62 0024 10BD     		pop	{r4, pc}
  63              		.size	_ZN21SimpleFilamentMonitor5CheckEbbbf, .-_ZN21SimpleFilamentMonitor5CheckEbbbf
  64 0026 00BF     		.section	.text._ZN21SimpleFilamentMonitor5ClearEb,"ax",%progbits
  65              		.align	1
  66              		.p2align 2,,3
  67              		.global	_ZN21SimpleFilamentMonitor5ClearEb
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu fpv4-sp-d16
  72              		.type	_ZN21SimpleFilamentMonitor5ClearEb, %function
  73              	_ZN21SimpleFilamentMonitor5ClearEb:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76 0000 10B5     		push	{r4, lr}
  77 0002 0446     		mov	r4, r0
  78 0004 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  79 0006 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
  80 000a E37D     		ldrb	r3, [r4, #23]	@ zero_extendqisi2
  81 000c 13B1     		cbz	r3, .L13
  82 000e 80F00100 		eor	r0, r0, #1
  83 0012 C0B2     		uxtb	r0, r0
  84              	.L13:
  85 0014 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
  86 0016 2076     		strb	r0, [r4, #24]
  87 0018 1BB1     		cbz	r3, .L15
  88 001a 80F00100 		eor	r0, r0, #1
  89 001e C0B2     		uxtb	r0, r0
  90 0020 10BD     		pop	{r4, pc}
  91              	.L15:
  92 0022 1846     		mov	r0, r3
  93 0024 10BD     		pop	{r4, pc}
  94              		.size	_ZN21SimpleFilamentMonitor5ClearEb, .-_ZN21SimpleFilamentMonitor5ClearEb
  95 0026 00BF     		.section	.text._ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
  96              		.align	1
  97              		.p2align 2,,3
  98              		.global	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu fpv4-sp-d16
 103              		.type	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej, %function
 104              	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej:
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107 0000 70B5     		push	{r4, r5, r6, lr}
 108 0002 084B     		ldr	r3, .L24
 109 0004 057E     		ldrb	r5, [r0, #24]	@ zero_extendqisi2
 110 0006 084C     		ldr	r4, .L24+4
 111 0008 084E     		ldr	r6, .L24+8
 112 000a 82B0     		sub	sp, sp, #8
 113 000c 002D     		cmp	r5, #0
 114 000e 08BF     		it	eq
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoid86w.s 			page 3


 115 0010 1C46     		moveq	r4, r3
 116 0012 7068     		ldr	r0, [r6, #4]	@ unaligned
 117 0014 0094     		str	r4, [sp]
 118 0016 1346     		mov	r3, r2
 119 0018 054A     		ldr	r2, .L24+12
 120 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 121 001e 02B0     		add	sp, sp, #8
 122              		@ sp needed
 123 0020 70BD     		pop	{r4, r5, r6, pc}
 124              	.L25:
 125 0022 00BF     		.align	2
 126              	.L24:
 127 0024 04000000 		.word	.LC1
 128 0028 00000000 		.word	.LC0
 129 002c 00000000 		.word	reprap
 130 0030 10000000 		.word	.LC2
 131              		.size	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN21SimpleFilamentMonitor11Diagno
 132              		.section	.text._ZN21SimpleFilamentMonitorD2Ev,"axG",%progbits,_ZN21SimpleFilamentMonitorD5Ev,comda
 133              		.align	1
 134              		.p2align 2,,3
 135              		.weak	_ZN21SimpleFilamentMonitorD2Ev
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu fpv4-sp-d16
 140              		.type	_ZN21SimpleFilamentMonitorD2Ev, %function
 141              	_ZN21SimpleFilamentMonitorD2Ev:
 142              		@ args = 0, pretend = 0, frame = 0
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144 0000 10B5     		push	{r4, lr}
 145 0002 034B     		ldr	r3, .L28
 146 0004 0360     		str	r3, [r0]
 147 0006 0446     		mov	r4, r0
 148 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 149 000c 2046     		mov	r0, r4
 150 000e 10BD     		pop	{r4, pc}
 151              	.L29:
 152              		.align	2
 153              	.L28:
 154 0010 08000000 		.word	.LANCHOR0+8
 155              		.size	_ZN21SimpleFilamentMonitorD2Ev, .-_ZN21SimpleFilamentMonitorD2Ev
 156              		.weak	_ZN21SimpleFilamentMonitorD1Ev
 157              		.thumb_set _ZN21SimpleFilamentMonitorD1Ev,_ZN21SimpleFilamentMonitorD2Ev
 158              		.section	.text._ZN21SimpleFilamentMonitorD0Ev,"axG",%progbits,_ZN21SimpleFilamentMonitorD5Ev,comda
 159              		.align	1
 160              		.p2align 2,,3
 161              		.weak	_ZN21SimpleFilamentMonitorD0Ev
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu fpv4-sp-d16
 166              		.type	_ZN21SimpleFilamentMonitorD0Ev, %function
 167              	_ZN21SimpleFilamentMonitorD0Ev:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170 0000 10B5     		push	{r4, lr}
 171 0002 054B     		ldr	r3, .L32
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoid86w.s 			page 4


 172 0004 0360     		str	r3, [r0]
 173 0006 0446     		mov	r4, r0
 174 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 175 000c 2046     		mov	r0, r4
 176 000e 1C21     		movs	r1, #28
 177 0010 FFF7FEFF 		bl	_ZdlPvj
 178 0014 2046     		mov	r0, r4
 179 0016 10BD     		pop	{r4, pc}
 180              	.L33:
 181              		.align	2
 182              	.L32:
 183 0018 08000000 		.word	.LANCHOR0+8
 184              		.size	_ZN21SimpleFilamentMonitorD0Ev, .-_ZN21SimpleFilamentMonitorD0Ev
 185              		.section	.text._ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%progbits
 186              		.align	1
 187              		.p2align 2,,3
 188              		.global	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 189              		.syntax unified
 190              		.thumb
 191              		.thumb_func
 192              		.fpu fpv4-sp-d16
 193              		.type	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 194              	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 198 0004 82B0     		sub	sp, sp, #8
 199 0006 1D46     		mov	r5, r3
 200 0008 0093     		str	r3, [sp]
 201 000a 0023     		movs	r3, #0
 202 000c 0646     		mov	r6, r0
 203 000e 0F46     		mov	r7, r1
 204 0010 9046     		mov	r8, r2
 205 0012 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 206 0016 0446     		mov	r4, r0
 207 0018 18B1     		cbz	r0, .L46
 208 001a 2046     		mov	r0, r4
 209 001c 02B0     		add	sp, sp, #8
 210              		@ sp needed
 211 001e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 212              	.L46:
 213 0022 5321     		movs	r1, #83
 214 0024 3846     		mov	r0, r7
 215 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 216 002a 28BB     		cbnz	r0, .L47
 217              	.L36:
 218 002c 2D78     		ldrb	r5, [r5]	@ zero_extendqisi2
 219 002e B5B9     		cbnz	r5, .L48
 220 0030 F47D     		ldrb	r4, [r6, #23]	@ zero_extendqisi2
 221 0032 1748     		ldr	r0, .L49
 222 0034 1749     		ldr	r1, .L49+4
 223 0036 3269     		ldr	r2, [r6, #16]
 224 0038 174B     		ldr	r3, .L49+8
 225 003a 767E     		ldrb	r6, [r6, #25]	@ zero_extendqisi2
 226 003c 002C     		cmp	r4, #0
 227 003e 08BF     		it	eq
 228 0040 0146     		moveq	r1, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoid86w.s 			page 5


 229 0042 164C     		ldr	r4, .L49+12
 230 0044 0091     		str	r1, [sp]
 231 0046 002E     		cmp	r6, #0
 232 0048 08BF     		it	eq
 233 004a 2346     		moveq	r3, r4
 234 004c 4046     		mov	r0, r8
 235 004e 1449     		ldr	r1, .L49+16
 236 0050 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 237 0054 2C46     		mov	r4, r5
 238 0056 2046     		mov	r0, r4
 239 0058 02B0     		add	sp, sp, #8
 240              		@ sp needed
 241 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 242              	.L48:
 243 005e 3368     		ldr	r3, [r6]
 244 0060 9FED100A 		vldr.32	s0, .L49+20
 245 0064 5D68     		ldr	r5, [r3, #4]
 246 0066 0023     		movs	r3, #0
 247 0068 3046     		mov	r0, r6
 248 006a 1A46     		mov	r2, r3
 249 006c 0121     		movs	r1, #1
 250 006e A847     		blx	r5
 251 0070 2046     		mov	r0, r4
 252 0072 02B0     		add	sp, sp, #8
 253              		@ sp needed
 254 0074 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 255              	.L47:
 256 0078 0123     		movs	r3, #1
 257 007a 3846     		mov	r0, r7
 258 007c 2B70     		strb	r3, [r5]
 259 007e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 260 0082 0028     		cmp	r0, #0
 261 0084 D4BF     		ite	le
 262 0086 0020     		movle	r0, #0
 263 0088 0120     		movgt	r0, #1
 264 008a 7076     		strb	r0, [r6, #25]
 265 008c CEE7     		b	.L36
 266              	.L50:
 267 008e 00BF     		.align	2
 268              	.L49:
 269 0090 1C000000 		.word	.LC6
 270 0094 14000000 		.word	.LC5
 271 0098 00000000 		.word	.LC3
 272 009c 08000000 		.word	.LC4
 273 00a0 20000000 		.word	.LC7
 274 00a4 00000000 		.word	0
 275              		.size	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN21SimpleFilamentMoni
 276              		.section	.text._ZN21SimpleFilamentMonitorC2Eji,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	_ZN21SimpleFilamentMonitorC2Eji
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu fpv4-sp-d16
 284              		.type	_ZN21SimpleFilamentMonitorC2Eji, %function
 285              	_ZN21SimpleFilamentMonitorC2Eji:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoid86w.s 			page 6


 286              		@ args = 0, pretend = 0, frame = 0
 287              		@ frame_needed = 0, uses_anonymous_args = 0
 288              		@ link register save eliminated.
 289 0000 30B4     		push	{r4, r5}
 290 0002 A2F10204 		sub	r4, r2, #2
 291 0006 B4FA84F4 		clz	r4, r4
 292 000a 6409     		lsrs	r4, r4, #5
 293 000c FF25     		movs	r5, #255
 294 000e C475     		strb	r4, [r0, #23]
 295 0010 8160     		str	r1, [r0, #8]
 296 0012 044C     		ldr	r4, .L53
 297 0014 0575     		strb	r5, [r0, #20]
 298 0016 0021     		movs	r1, #0
 299 0018 0460     		str	r4, [r0]
 300 001a C260     		str	r2, [r0, #12]
 301 001c 0176     		strb	r1, [r0, #24]
 302 001e 4176     		strb	r1, [r0, #25]
 303 0020 30BC     		pop	{r4, r5}
 304 0022 7047     		bx	lr
 305              	.L54:
 306              		.align	2
 307              	.L53:
 308 0024 08000000 		.word	.LANCHOR0+8
 309              		.size	_ZN21SimpleFilamentMonitorC2Eji, .-_ZN21SimpleFilamentMonitorC2Eji
 310              		.global	_ZN21SimpleFilamentMonitorC1Eji
 311              		.thumb_set _ZN21SimpleFilamentMonitorC1Eji,_ZN21SimpleFilamentMonitorC2Eji
 312              		.section	.text._ZN21SimpleFilamentMonitor4PollEv,"ax",%progbits
 313              		.align	1
 314              		.p2align 2,,3
 315              		.global	_ZN21SimpleFilamentMonitor4PollEv
 316              		.syntax unified
 317              		.thumb
 318              		.thumb_func
 319              		.fpu fpv4-sp-d16
 320              		.type	_ZN21SimpleFilamentMonitor4PollEv, %function
 321              	_ZN21SimpleFilamentMonitor4PollEv:
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324 0000 10B5     		push	{r4, lr}
 325 0002 0446     		mov	r4, r0
 326 0004 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 327 0006 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 328 000a E37D     		ldrb	r3, [r4, #23]	@ zero_extendqisi2
 329 000c 13B1     		cbz	r3, .L56
 330 000e 80F00100 		eor	r0, r0, #1
 331 0012 C0B2     		uxtb	r0, r0
 332              	.L56:
 333 0014 2076     		strb	r0, [r4, #24]
 334 0016 10BD     		pop	{r4, pc}
 335              		.size	_ZN21SimpleFilamentMonitor4PollEv, .-_ZN21SimpleFilamentMonitor4PollEv
 336              		.global	_ZTV21SimpleFilamentMonitor
 337              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 338              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 339              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 340              	_ZL28cpu_irq_prev_interrupt_state:
 341 0000 00       		.space	1
 342              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoid86w.s 			page 7


 343              		.align	2
 344              		.type	_ZL32cpu_irq_critical_section_counter, %object
 345              		.size	_ZL32cpu_irq_critical_section_counter, 4
 346              	_ZL32cpu_irq_critical_section_counter:
 347 0000 00000000 		.space	4
 348              		.section	.rodata._ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%progbits,1
 349              		.align	2
 350              	.LC0:
 351 0000 6F6B00   		.ascii	"ok\000"
 352 0003 00       		.space	1
 353              	.LC1:
 354 0004 6E6F2066 		.ascii	"no filament\000"
 354      696C616D 
 354      656E7400 
 355              	.LC2:
 356 0010 45787472 		.ascii	"Extruder %u sensor: %s\012\000"
 356      75646572 
 356      20257520 
 356      73656E73 
 356      6F723A20 
 357              		.section	.rodata._ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,"aMS",%p
 358              		.align	2
 359              	.LC3:
 360 0000 656E6162 		.ascii	"enabled\000"
 360      6C656400 
 361              	.LC4:
 362 0008 64697361 		.ascii	"disabled\000"
 362      626C6564 
 362      00
 363 0011 000000   		.space	3
 364              	.LC5:
 365 0014 68696768 		.ascii	"high\000"
 365      00
 366 0019 000000   		.space	3
 367              	.LC6:
 368 001c 6C6F7700 		.ascii	"low\000"
 369              	.LC7:
 370 0020 53696D70 		.ascii	"Simple filament sensor on endstop %d, %s, output %s"
 370      6C652066 
 370      696C616D 
 370      656E7420 
 370      73656E73 
 371 0053 20776865 		.ascii	" when no filament\000"
 371      6E206E6F 
 371      2066696C 
 371      616D656E 
 371      7400
 372              		.section	.rodata._ZTV21SimpleFilamentMonitor,"a",%progbits
 373              		.align	2
 374              		.set	.LANCHOR0,. + 0
 375              		.type	_ZTV21SimpleFilamentMonitor, %object
 376              		.size	_ZTV21SimpleFilamentMonitor, 40
 377              	_ZTV21SimpleFilamentMonitor:
 378 0000 00000000 		.word	0
 379 0004 00000000 		.word	0
 380 0008 00000000 		.word	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 381 000c 00000000 		.word	_ZN21SimpleFilamentMonitor5CheckEbbbf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoid86w.s 			page 8


 382 0010 00000000 		.word	_ZN21SimpleFilamentMonitor5ClearEb
 383 0014 00000000 		.word	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej
 384 0018 00000000 		.word	_ZN21SimpleFilamentMonitor9InterruptEv
 385 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 386 0020 00000000 		.word	_ZN21SimpleFilamentMonitorD1Ev
 387 0024 00000000 		.word	_ZN21SimpleFilamentMonitorD0Ev
 388              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
