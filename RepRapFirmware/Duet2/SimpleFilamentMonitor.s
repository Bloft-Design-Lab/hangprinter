ARM GAS  /tmp/ccw2s3ug.s 			page 1


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
  14              		.section	.text._ZN21SimpleFilamentMonitor9InterruptEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN21SimpleFilamentMonitor9InterruptEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN21SimpleFilamentMonitor9InterruptEv, %function
  23              	_ZN21SimpleFilamentMonitor9InterruptEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 08B5     		push	{r3, lr}
  27 0002 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  28 0004 FFF7FEFF 		bl	_Z15detachInterruptm
  29 0008 0020     		movs	r0, #0
  30 000a 08BD     		pop	{r3, pc}
  31              		.size	_ZN21SimpleFilamentMonitor9InterruptEv, .-_ZN21SimpleFilamentMonitor9InterruptEv
  32              		.section	.text._ZN21SimpleFilamentMonitor5CheckEbbbf,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	_ZN21SimpleFilamentMonitor5CheckEbbbf
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	_ZN21SimpleFilamentMonitor5CheckEbbbf, %function
  41              	_ZN21SimpleFilamentMonitor5CheckEbbbf:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44 0000 10B5     		push	{r4, lr}
  45 0002 0446     		mov	r4, r0
  46 0004 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  47 0006 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
  48 000a E37D     		ldrb	r3, [r4, #23]	@ zero_extendqisi2
  49 000c 13B1     		cbz	r3, .L5
  50 000e 80F00100 		eor	r0, r0, #1
  51 0012 C0B2     		uxtb	r0, r0
  52              	.L5:
  53 0014 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
  54 0016 2076     		strb	r0, [r4, #24]
  55 0018 1BB1     		cbz	r3, .L7
  56 001a 80F00100 		eor	r0, r0, #1
  57 001e C0B2     		uxtb	r0, r0
ARM GAS  /tmp/ccw2s3ug.s 			page 2


  58 0020 10BD     		pop	{r4, pc}
  59              	.L7:
  60 0022 1846     		mov	r0, r3
  61 0024 10BD     		pop	{r4, pc}
  62              		.size	_ZN21SimpleFilamentMonitor5CheckEbbbf, .-_ZN21SimpleFilamentMonitor5CheckEbbbf
  63 0026 00BF     		.section	.text._ZN21SimpleFilamentMonitor5ClearEb,"ax",%progbits
  64              		.align	1
  65              		.p2align 2,,3
  66              		.global	_ZN21SimpleFilamentMonitor5ClearEb
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu fpv4-sp-d16
  71              		.type	_ZN21SimpleFilamentMonitor5ClearEb, %function
  72              	_ZN21SimpleFilamentMonitor5ClearEb:
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75 0000 10B5     		push	{r4, lr}
  76 0002 0446     		mov	r4, r0
  77 0004 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  78 0006 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
  79 000a E37D     		ldrb	r3, [r4, #23]	@ zero_extendqisi2
  80 000c 13B1     		cbz	r3, .L13
  81 000e 80F00100 		eor	r0, r0, #1
  82 0012 C0B2     		uxtb	r0, r0
  83              	.L13:
  84 0014 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
  85 0016 2076     		strb	r0, [r4, #24]
  86 0018 1BB1     		cbz	r3, .L15
  87 001a 80F00100 		eor	r0, r0, #1
  88 001e C0B2     		uxtb	r0, r0
  89 0020 10BD     		pop	{r4, pc}
  90              	.L15:
  91 0022 1846     		mov	r0, r3
  92 0024 10BD     		pop	{r4, pc}
  93              		.size	_ZN21SimpleFilamentMonitor5ClearEb, .-_ZN21SimpleFilamentMonitor5ClearEb
  94 0026 00BF     		.section	.text._ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
  95              		.align	1
  96              		.p2align 2,,3
  97              		.global	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej
  98              		.syntax unified
  99              		.thumb
 100              		.thumb_func
 101              		.fpu fpv4-sp-d16
 102              		.type	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej, %function
 103              	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106 0000 70B5     		push	{r4, r5, r6, lr}
 107 0002 084B     		ldr	r3, .L24
 108 0004 057E     		ldrb	r5, [r0, #24]	@ zero_extendqisi2
 109 0006 084C     		ldr	r4, .L24+4
 110 0008 084E     		ldr	r6, .L24+8
 111 000a 82B0     		sub	sp, sp, #8
 112 000c 002D     		cmp	r5, #0
 113 000e 08BF     		it	eq
 114 0010 1C46     		moveq	r4, r3
ARM GAS  /tmp/ccw2s3ug.s 			page 3


 115 0012 3068     		ldr	r0, [r6]	@ unaligned
 116 0014 0094     		str	r4, [sp]
 117 0016 1346     		mov	r3, r2
 118 0018 054A     		ldr	r2, .L24+12
 119 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 120 001e 02B0     		add	sp, sp, #8
 121              		@ sp needed
 122 0020 70BD     		pop	{r4, r5, r6, pc}
 123              	.L25:
 124 0022 00BF     		.align	2
 125              	.L24:
 126 0024 04000000 		.word	.LC1
 127 0028 00000000 		.word	.LC0
 128 002c 00000000 		.word	reprap
 129 0030 10000000 		.word	.LC2
 130              		.size	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN21SimpleFilamentMonitor11Diagno
 131              		.section	.text._ZN21SimpleFilamentMonitorD2Ev,"axG",%progbits,_ZN21SimpleFilamentMonitorD5Ev,comda
 132              		.align	1
 133              		.p2align 2,,3
 134              		.weak	_ZN21SimpleFilamentMonitorD2Ev
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu fpv4-sp-d16
 139              		.type	_ZN21SimpleFilamentMonitorD2Ev, %function
 140              	_ZN21SimpleFilamentMonitorD2Ev:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143 0000 10B5     		push	{r4, lr}
 144 0002 034B     		ldr	r3, .L28
 145 0004 0360     		str	r3, [r0]
 146 0006 0446     		mov	r4, r0
 147 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 148 000c 2046     		mov	r0, r4
 149 000e 10BD     		pop	{r4, pc}
 150              	.L29:
 151              		.align	2
 152              	.L28:
 153 0010 08000000 		.word	.LANCHOR0+8
 154              		.size	_ZN21SimpleFilamentMonitorD2Ev, .-_ZN21SimpleFilamentMonitorD2Ev
 155              		.weak	_ZN21SimpleFilamentMonitorD1Ev
 156              		.thumb_set _ZN21SimpleFilamentMonitorD1Ev,_ZN21SimpleFilamentMonitorD2Ev
 157              		.section	.text._ZN21SimpleFilamentMonitorD0Ev,"axG",%progbits,_ZN21SimpleFilamentMonitorD5Ev,comda
 158              		.align	1
 159              		.p2align 2,,3
 160              		.weak	_ZN21SimpleFilamentMonitorD0Ev
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu fpv4-sp-d16
 165              		.type	_ZN21SimpleFilamentMonitorD0Ev, %function
 166              	_ZN21SimpleFilamentMonitorD0Ev:
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169 0000 10B5     		push	{r4, lr}
 170 0002 054B     		ldr	r3, .L32
 171 0004 0360     		str	r3, [r0]
ARM GAS  /tmp/ccw2s3ug.s 			page 4


 172 0006 0446     		mov	r4, r0
 173 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 174 000c 2046     		mov	r0, r4
 175 000e 1C21     		movs	r1, #28
 176 0010 FFF7FEFF 		bl	_ZdlPvj
 177 0014 2046     		mov	r0, r4
 178 0016 10BD     		pop	{r4, pc}
 179              	.L33:
 180              		.align	2
 181              	.L32:
 182 0018 08000000 		.word	.LANCHOR0+8
 183              		.size	_ZN21SimpleFilamentMonitorD0Ev, .-_ZN21SimpleFilamentMonitorD0Ev
 184              		.section	.text._ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%progbits
 185              		.align	1
 186              		.p2align 2,,3
 187              		.global	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 188              		.syntax unified
 189              		.thumb
 190              		.thumb_func
 191              		.fpu fpv4-sp-d16
 192              		.type	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 193              	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 197 0004 82B0     		sub	sp, sp, #8
 198 0006 1D46     		mov	r5, r3
 199 0008 0093     		str	r3, [sp]
 200 000a 0023     		movs	r3, #0
 201 000c 0646     		mov	r6, r0
 202 000e 0F46     		mov	r7, r1
 203 0010 9046     		mov	r8, r2
 204 0012 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 205 0016 0446     		mov	r4, r0
 206 0018 18B1     		cbz	r0, .L46
 207 001a 2046     		mov	r0, r4
 208 001c 02B0     		add	sp, sp, #8
 209              		@ sp needed
 210 001e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 211              	.L46:
 212 0022 5321     		movs	r1, #83
 213 0024 3846     		mov	r0, r7
 214 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 215 002a 28BB     		cbnz	r0, .L47
 216              	.L36:
 217 002c 2D78     		ldrb	r5, [r5]	@ zero_extendqisi2
 218 002e B5B9     		cbnz	r5, .L48
 219 0030 F47D     		ldrb	r4, [r6, #23]	@ zero_extendqisi2
 220 0032 1748     		ldr	r0, .L49
 221 0034 1749     		ldr	r1, .L49+4
 222 0036 3269     		ldr	r2, [r6, #16]
 223 0038 174B     		ldr	r3, .L49+8
 224 003a 767E     		ldrb	r6, [r6, #25]	@ zero_extendqisi2
 225 003c 002C     		cmp	r4, #0
 226 003e 08BF     		it	eq
 227 0040 0146     		moveq	r1, r0
 228 0042 164C     		ldr	r4, .L49+12
ARM GAS  /tmp/ccw2s3ug.s 			page 5


 229 0044 0091     		str	r1, [sp]
 230 0046 002E     		cmp	r6, #0
 231 0048 08BF     		it	eq
 232 004a 2346     		moveq	r3, r4
 233 004c 4046     		mov	r0, r8
 234 004e 1449     		ldr	r1, .L49+16
 235 0050 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 236 0054 2C46     		mov	r4, r5
 237 0056 2046     		mov	r0, r4
 238 0058 02B0     		add	sp, sp, #8
 239              		@ sp needed
 240 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 241              	.L48:
 242 005e 3368     		ldr	r3, [r6]
 243 0060 9FED100A 		vldr.32	s0, .L49+20
 244 0064 5D68     		ldr	r5, [r3, #4]
 245 0066 0023     		movs	r3, #0
 246 0068 3046     		mov	r0, r6
 247 006a 1A46     		mov	r2, r3
 248 006c 0121     		movs	r1, #1
 249 006e A847     		blx	r5
 250 0070 2046     		mov	r0, r4
 251 0072 02B0     		add	sp, sp, #8
 252              		@ sp needed
 253 0074 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 254              	.L47:
 255 0078 0123     		movs	r3, #1
 256 007a 3846     		mov	r0, r7
 257 007c 2B70     		strb	r3, [r5]
 258 007e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 259 0082 0028     		cmp	r0, #0
 260 0084 D4BF     		ite	le
 261 0086 0020     		movle	r0, #0
 262 0088 0120     		movgt	r0, #1
 263 008a 7076     		strb	r0, [r6, #25]
 264 008c CEE7     		b	.L36
 265              	.L50:
 266 008e 00BF     		.align	2
 267              	.L49:
 268 0090 1C000000 		.word	.LC6
 269 0094 14000000 		.word	.LC5
 270 0098 00000000 		.word	.LC3
 271 009c 08000000 		.word	.LC4
 272 00a0 20000000 		.word	.LC7
 273 00a4 00000000 		.word	0
 274              		.size	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN21SimpleFilamentMoni
 275              		.section	.text._ZN21SimpleFilamentMonitorC2Eji,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.global	_ZN21SimpleFilamentMonitorC2Eji
 279              		.syntax unified
 280              		.thumb
 281              		.thumb_func
 282              		.fpu fpv4-sp-d16
 283              		.type	_ZN21SimpleFilamentMonitorC2Eji, %function
 284              	_ZN21SimpleFilamentMonitorC2Eji:
 285              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccw2s3ug.s 			page 6


 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287              		@ link register save eliminated.
 288 0000 30B4     		push	{r4, r5}
 289 0002 A2F10204 		sub	r4, r2, #2
 290 0006 B4FA84F4 		clz	r4, r4
 291 000a 6409     		lsrs	r4, r4, #5
 292 000c FF25     		movs	r5, #255
 293 000e C475     		strb	r4, [r0, #23]
 294 0010 8160     		str	r1, [r0, #8]
 295 0012 044C     		ldr	r4, .L53
 296 0014 0575     		strb	r5, [r0, #20]
 297 0016 0021     		movs	r1, #0
 298 0018 0460     		str	r4, [r0]
 299 001a C260     		str	r2, [r0, #12]
 300 001c 0176     		strb	r1, [r0, #24]
 301 001e 4176     		strb	r1, [r0, #25]
 302 0020 30BC     		pop	{r4, r5}
 303 0022 7047     		bx	lr
 304              	.L54:
 305              		.align	2
 306              	.L53:
 307 0024 08000000 		.word	.LANCHOR0+8
 308              		.size	_ZN21SimpleFilamentMonitorC2Eji, .-_ZN21SimpleFilamentMonitorC2Eji
 309              		.global	_ZN21SimpleFilamentMonitorC1Eji
 310              		.thumb_set _ZN21SimpleFilamentMonitorC1Eji,_ZN21SimpleFilamentMonitorC2Eji
 311              		.section	.text._ZN21SimpleFilamentMonitor4PollEv,"ax",%progbits
 312              		.align	1
 313              		.p2align 2,,3
 314              		.global	_ZN21SimpleFilamentMonitor4PollEv
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu fpv4-sp-d16
 319              		.type	_ZN21SimpleFilamentMonitor4PollEv, %function
 320              	_ZN21SimpleFilamentMonitor4PollEv:
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323 0000 10B5     		push	{r4, lr}
 324 0002 0446     		mov	r4, r0
 325 0004 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 326 0006 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 327 000a E37D     		ldrb	r3, [r4, #23]	@ zero_extendqisi2
 328 000c 13B1     		cbz	r3, .L56
 329 000e 80F00100 		eor	r0, r0, #1
 330 0012 C0B2     		uxtb	r0, r0
 331              	.L56:
 332 0014 2076     		strb	r0, [r4, #24]
 333 0016 10BD     		pop	{r4, pc}
 334              		.size	_ZN21SimpleFilamentMonitor4PollEv, .-_ZN21SimpleFilamentMonitor4PollEv
 335              		.global	_ZTV21SimpleFilamentMonitor
 336              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 337              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 338              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 339              	_ZL28cpu_irq_prev_interrupt_state:
 340 0000 00       		.space	1
 341              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 342              		.align	2
ARM GAS  /tmp/ccw2s3ug.s 			page 7


 343              		.type	_ZL32cpu_irq_critical_section_counter, %object
 344              		.size	_ZL32cpu_irq_critical_section_counter, 4
 345              	_ZL32cpu_irq_critical_section_counter:
 346 0000 00000000 		.space	4
 347              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 348              		.align	2
 349              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 350              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 351              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 352 0000 00000000 		.space	4
 353              		.section	.rodata._ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%progbits,1
 354              		.align	2
 355              	.LC0:
 356 0000 6F6B00   		.ascii	"ok\000"
 357 0003 00       		.space	1
 358              	.LC1:
 359 0004 6E6F2066 		.ascii	"no filament\000"
 359      696C616D 
 359      656E7400 
 360              	.LC2:
 361 0010 45787472 		.ascii	"Extruder %u sensor: %s\012\000"
 361      75646572 
 361      20257520 
 361      73656E73 
 361      6F723A20 
 362              		.section	.rodata._ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,"aMS",%p
 363              		.align	2
 364              	.LC3:
 365 0000 656E6162 		.ascii	"enabled\000"
 365      6C656400 
 366              	.LC4:
 367 0008 64697361 		.ascii	"disabled\000"
 367      626C6564 
 367      00
 368 0011 000000   		.space	3
 369              	.LC5:
 370 0014 68696768 		.ascii	"high\000"
 370      00
 371 0019 000000   		.space	3
 372              	.LC6:
 373 001c 6C6F7700 		.ascii	"low\000"
 374              	.LC7:
 375 0020 53696D70 		.ascii	"Simple filament sensor on endstop %d, %s, output %s"
 375      6C652066 
 375      696C616D 
 375      656E7420 
 375      73656E73 
 376 0053 20776865 		.ascii	" when no filament\000"
 376      6E206E6F 
 376      2066696C 
 376      616D656E 
 376      7400
 377              		.section	.rodata._ZTV21SimpleFilamentMonitor,"a",%progbits
 378              		.align	2
 379              		.set	.LANCHOR0,. + 0
 380              		.type	_ZTV21SimpleFilamentMonitor, %object
 381              		.size	_ZTV21SimpleFilamentMonitor, 40
ARM GAS  /tmp/ccw2s3ug.s 			page 8


 382              	_ZTV21SimpleFilamentMonitor:
 383 0000 00000000 		.word	0
 384 0004 00000000 		.word	0
 385 0008 00000000 		.word	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 386 000c 00000000 		.word	_ZN21SimpleFilamentMonitor5CheckEbbbf
 387 0010 00000000 		.word	_ZN21SimpleFilamentMonitor5ClearEb
 388 0014 00000000 		.word	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej
 389 0018 00000000 		.word	_ZN21SimpleFilamentMonitor9InterruptEv
 390 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 391 0020 00000000 		.word	_ZN21SimpleFilamentMonitorD1Ev
 392 0024 00000000 		.word	_ZN21SimpleFilamentMonitorD0Ev
 393              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
