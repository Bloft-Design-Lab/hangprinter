ARM GAS  /tmp/ccXx8vt7.s 			page 1


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
  11              		.file	"SimpleFilamentMonitor.cpp"
  12              		.section	.text._ZN21SimpleFilamentMonitor9InterruptEv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN21SimpleFilamentMonitor9InterruptEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN21SimpleFilamentMonitor9InterruptEv, %function
  21              	_ZN21SimpleFilamentMonitor9InterruptEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 08B5     		push	{r3, lr}
  25 0002 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  26 0004 FFF7FEFF 		bl	_Z15detachInterruptm
  27 0008 0020     		movs	r0, #0
  28 000a 08BD     		pop	{r3, pc}
  29              		.size	_ZN21SimpleFilamentMonitor9InterruptEv, .-_ZN21SimpleFilamentMonitor9InterruptEv
  30              		.section	.text._ZN21SimpleFilamentMonitor5CheckEbbbf,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	_ZN21SimpleFilamentMonitor5CheckEbbbf
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu softvfp
  38              		.type	_ZN21SimpleFilamentMonitor5CheckEbbbf, %function
  39              	_ZN21SimpleFilamentMonitor5CheckEbbbf:
  40              		@ args = 4, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42 0000 10B5     		push	{r4, lr}
  43 0002 0446     		mov	r4, r0
  44 0004 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  45 0006 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
  46 000a E37D     		ldrb	r3, [r4, #23]	@ zero_extendqisi2
  47 000c 4BB1     		cbz	r3, .L6
  48 000e 80F00103 		eor	r3, r0, #1
  49 0012 DBB2     		uxtb	r3, r3
  50              	.L4:
  51 0014 607E     		ldrb	r0, [r4, #25]	@ zero_extendqisi2
  52 0016 2376     		strb	r3, [r4, #24]
  53 0018 10B1     		cbz	r0, .L5
  54 001a 83F00103 		eor	r3, r3, #1
  55 001e D8B2     		uxtb	r0, r3
  56              	.L5:
  57 0020 10BD     		pop	{r4, pc}
ARM GAS  /tmp/ccXx8vt7.s 			page 2


  58              	.L6:
  59 0022 0346     		mov	r3, r0
  60 0024 F6E7     		b	.L4
  61              		.size	_ZN21SimpleFilamentMonitor5CheckEbbbf, .-_ZN21SimpleFilamentMonitor5CheckEbbbf
  62 0026 00BF     		.section	.text._ZN21SimpleFilamentMonitor5ClearEb,"ax",%progbits
  63              		.align	1
  64              		.p2align 2,,3
  65              		.global	_ZN21SimpleFilamentMonitor5ClearEb
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu softvfp
  70              		.type	_ZN21SimpleFilamentMonitor5ClearEb, %function
  71              	_ZN21SimpleFilamentMonitor5ClearEb:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74 0000 10B5     		push	{r4, lr}
  75 0002 0446     		mov	r4, r0
  76 0004 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  77 0006 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
  78 000a E37D     		ldrb	r3, [r4, #23]	@ zero_extendqisi2
  79 000c 4BB1     		cbz	r3, .L15
  80 000e 80F00103 		eor	r3, r0, #1
  81 0012 DBB2     		uxtb	r3, r3
  82              	.L13:
  83 0014 607E     		ldrb	r0, [r4, #25]	@ zero_extendqisi2
  84 0016 2376     		strb	r3, [r4, #24]
  85 0018 10B1     		cbz	r0, .L14
  86 001a 83F00103 		eor	r3, r3, #1
  87 001e D8B2     		uxtb	r0, r3
  88              	.L14:
  89 0020 10BD     		pop	{r4, pc}
  90              	.L15:
  91 0022 0346     		mov	r3, r0
  92 0024 F6E7     		b	.L13
  93              		.size	_ZN21SimpleFilamentMonitor5ClearEb, .-_ZN21SimpleFilamentMonitor5ClearEb
  94 0026 00BF     		.section	.text._ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
  95              		.align	1
  96              		.p2align 2,,3
  97              		.global	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej
  98              		.syntax unified
  99              		.thumb
 100              		.thumb_func
 101              		.fpu softvfp
 102              		.type	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej, %function
 103              	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106 0000 30B5     		push	{r4, r5, lr}
 107 0002 057E     		ldrb	r5, [r0, #24]	@ zero_extendqisi2
 108 0004 074C     		ldr	r4, .L24
 109 0006 0848     		ldr	r0, .L24+4
 110 0008 084B     		ldr	r3, .L24+8
 111 000a 002D     		cmp	r5, #0
 112 000c 08BF     		it	eq
 113 000e 0446     		moveq	r4, r0
 114 0010 83B0     		sub	sp, sp, #12
ARM GAS  /tmp/ccXx8vt7.s 			page 3


 115 0012 1868     		ldr	r0, [r3]	@ unaligned
 116 0014 1346     		mov	r3, r2
 117 0016 0094     		str	r4, [sp]
 118 0018 054A     		ldr	r2, .L24+12
 119 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 120 001e 03B0     		add	sp, sp, #12
 121              		@ sp needed
 122 0020 30BD     		pop	{r4, r5, pc}
 123              	.L25:
 124 0022 00BF     		.align	2
 125              	.L24:
 126 0024 00000000 		.word	.LC0
 127 0028 04000000 		.word	.LC1
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
 138              		.fpu softvfp
 139              		.type	_ZN21SimpleFilamentMonitorD2Ev, %function
 140              	_ZN21SimpleFilamentMonitorD2Ev:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143 0000 10B5     		push	{r4, lr}
 144 0002 0446     		mov	r4, r0
 145 0004 024B     		ldr	r3, .L28
 146 0006 0360     		str	r3, [r0]
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
 164              		.fpu softvfp
 165              		.type	_ZN21SimpleFilamentMonitorD0Ev, %function
 166              	_ZN21SimpleFilamentMonitorD0Ev:
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169 0000 10B5     		push	{r4, lr}
 170 0002 0446     		mov	r4, r0
 171 0004 044B     		ldr	r3, .L32
ARM GAS  /tmp/ccXx8vt7.s 			page 4


 172 0006 0360     		str	r3, [r0]
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
 191              		.fpu softvfp
 192              		.type	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 193              	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 197 0004 1D46     		mov	r5, r3
 198 0006 82B0     		sub	sp, sp, #8
 199 0008 0023     		movs	r3, #0
 200 000a 0095     		str	r5, [sp]
 201 000c 0646     		mov	r6, r0
 202 000e 0F46     		mov	r7, r1
 203 0010 9046     		mov	r8, r2
 204 0012 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 205 0016 0446     		mov	r4, r0
 206 0018 18B1     		cbz	r0, .L46
 207              	.L35:
 208 001a 2046     		mov	r0, r4
 209 001c 02B0     		add	sp, sp, #8
 210              		@ sp needed
 211 001e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 212              	.L46:
 213 0022 5321     		movs	r1, #83
 214 0024 3846     		mov	r0, r7
 215 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 216 002a C0B9     		cbnz	r0, .L47
 217              	.L36:
 218 002c 2D78     		ldrb	r5, [r5]	@ zero_extendqisi2
 219 002e 0DBB     		cbnz	r5, .L48
 220 0030 F07D     		ldrb	r0, [r6, #23]	@ zero_extendqisi2
 221 0032 154B     		ldr	r3, .L49
 222 0034 1549     		ldr	r1, .L49+4
 223 0036 3269     		ldr	r2, [r6, #16]
 224 0038 0028     		cmp	r0, #0
 225 003a 08BF     		it	eq
 226 003c 1946     		moveq	r1, r3
 227 003e 767E     		ldrb	r6, [r6, #25]	@ zero_extendqisi2
 228 0040 134C     		ldr	r4, .L49+8
ARM GAS  /tmp/ccXx8vt7.s 			page 5


 229 0042 144B     		ldr	r3, .L49+12
 230 0044 0091     		str	r1, [sp]
 231 0046 002E     		cmp	r6, #0
 232 0048 08BF     		it	eq
 233 004a 2346     		moveq	r3, r4
 234 004c 2C46     		mov	r4, r5
 235 004e 4046     		mov	r0, r8
 236 0050 1149     		ldr	r1, .L49+16
 237 0052 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 238 0056 2046     		mov	r0, r4
 239 0058 02B0     		add	sp, sp, #8
 240              		@ sp needed
 241 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 242              	.L47:
 243 005e 0123     		movs	r3, #1
 244 0060 3846     		mov	r0, r7
 245 0062 2B70     		strb	r3, [r5]
 246 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 247 0068 0028     		cmp	r0, #0
 248 006a D4BF     		ite	le
 249 006c 0020     		movle	r0, #0
 250 006e 0120     		movgt	r0, #1
 251 0070 7076     		strb	r0, [r6, #25]
 252 0072 DBE7     		b	.L36
 253              	.L48:
 254 0074 0021     		movs	r1, #0
 255 0076 0023     		movs	r3, #0
 256 0078 3268     		ldr	r2, [r6]
 257 007a 0091     		str	r1, [sp]	@ float
 258 007c 5568     		ldr	r5, [r2, #4]
 259 007e 3046     		mov	r0, r6
 260 0080 1A46     		mov	r2, r3
 261 0082 0121     		movs	r1, #1
 262 0084 A847     		blx	r5
 263 0086 C8E7     		b	.L35
 264              	.L50:
 265              		.align	2
 266              	.L49:
 267 0088 1C000000 		.word	.LC6
 268 008c 14000000 		.word	.LC5
 269 0090 08000000 		.word	.LC4
 270 0094 00000000 		.word	.LC3
 271 0098 20000000 		.word	.LC7
 272              		.size	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN21SimpleFilamentMoni
 273              		.section	.text._ZN21SimpleFilamentMonitorC2Eji,"ax",%progbits
 274              		.align	1
 275              		.p2align 2,,3
 276              		.global	_ZN21SimpleFilamentMonitorC2Eji
 277              		.syntax unified
 278              		.thumb
 279              		.thumb_func
 280              		.fpu softvfp
 281              		.type	_ZN21SimpleFilamentMonitorC2Eji, %function
 282              	_ZN21SimpleFilamentMonitorC2Eji:
 283              		@ args = 0, pretend = 0, frame = 0
 284              		@ frame_needed = 0, uses_anonymous_args = 0
 285              		@ link register save eliminated.
ARM GAS  /tmp/ccXx8vt7.s 			page 6


 286 0000 F0B4     		push	{r4, r5, r6, r7}
 287 0002 A2F10207 		sub	r7, r2, #2
 288 0006 B7FA87F7 		clz	r7, r7
 289 000a 0024     		movs	r4, #0
 290 000c FF26     		movs	r6, #255
 291 000e 054D     		ldr	r5, .L53
 292 0010 7F09     		lsrs	r7, r7, #5
 293 0012 C775     		strb	r7, [r0, #23]
 294 0014 0675     		strb	r6, [r0, #20]
 295 0016 0560     		str	r5, [r0]
 296 0018 0476     		strb	r4, [r0, #24]
 297 001a 4476     		strb	r4, [r0, #25]
 298 001c 8160     		str	r1, [r0, #8]
 299 001e C260     		str	r2, [r0, #12]
 300 0020 F0BC     		pop	{r4, r5, r6, r7}
 301 0022 7047     		bx	lr
 302              	.L54:
 303              		.align	2
 304              	.L53:
 305 0024 08000000 		.word	.LANCHOR0+8
 306              		.size	_ZN21SimpleFilamentMonitorC2Eji, .-_ZN21SimpleFilamentMonitorC2Eji
 307              		.global	_ZN21SimpleFilamentMonitorC1Eji
 308              		.thumb_set _ZN21SimpleFilamentMonitorC1Eji,_ZN21SimpleFilamentMonitorC2Eji
 309              		.section	.text._ZN21SimpleFilamentMonitor4PollEv,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.global	_ZN21SimpleFilamentMonitor4PollEv
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu softvfp
 317              		.type	_ZN21SimpleFilamentMonitor4PollEv, %function
 318              	_ZN21SimpleFilamentMonitor4PollEv:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321 0000 10B5     		push	{r4, lr}
 322 0002 0446     		mov	r4, r0
 323 0004 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 324 0006 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 325 000a E37D     		ldrb	r3, [r4, #23]	@ zero_extendqisi2
 326 000c 13B1     		cbz	r3, .L56
 327 000e 80F00100 		eor	r0, r0, #1
 328 0012 C0B2     		uxtb	r0, r0
 329              	.L56:
 330 0014 2076     		strb	r0, [r4, #24]
 331 0016 10BD     		pop	{r4, pc}
 332              		.size	_ZN21SimpleFilamentMonitor4PollEv, .-_ZN21SimpleFilamentMonitor4PollEv
 333              		.global	_ZTV21SimpleFilamentMonitor
 334              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 335              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 336              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 337              	_ZL28cpu_irq_prev_interrupt_state:
 338 0000 00       		.space	1
 339              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 340              		.align	2
 341              		.type	_ZL32cpu_irq_critical_section_counter, %object
 342              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccXx8vt7.s 			page 7


 343              	_ZL32cpu_irq_critical_section_counter:
 344 0000 00000000 		.space	4
 345              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 346              		.align	2
 347              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 348              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 349              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 350 0000 00000000 		.space	4
 351              		.section	.rodata._ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%progbits,1
 352              		.align	2
 353              	.LC0:
 354 0000 6F6B00   		.ascii	"ok\000"
 355 0003 00       		.space	1
 356              	.LC1:
 357 0004 6E6F2066 		.ascii	"no filament\000"
 357      696C616D 
 357      656E7400 
 358              	.LC2:
 359 0010 45787472 		.ascii	"Extruder %u sensor: %s\012\000"
 359      75646572 
 359      20257520 
 359      73656E73 
 359      6F723A20 
 360              		.section	.rodata._ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,"aMS",%p
 361              		.align	2
 362              	.LC3:
 363 0000 656E6162 		.ascii	"enabled\000"
 363      6C656400 
 364              	.LC4:
 365 0008 64697361 		.ascii	"disabled\000"
 365      626C6564 
 365      00
 366 0011 000000   		.space	3
 367              	.LC5:
 368 0014 68696768 		.ascii	"high\000"
 368      00
 369 0019 000000   		.space	3
 370              	.LC6:
 371 001c 6C6F7700 		.ascii	"low\000"
 372              	.LC7:
 373 0020 53696D70 		.ascii	"Simple filament sensor on endstop %d, %s, output %s"
 373      6C652066 
 373      696C616D 
 373      656E7420 
 373      73656E73 
 374 0053 20776865 		.ascii	" when no filament\000"
 374      6E206E6F 
 374      2066696C 
 374      616D656E 
 374      7400
 375              		.section	.rodata._ZTV21SimpleFilamentMonitor,"a",%progbits
 376              		.align	2
 377              		.set	.LANCHOR0,. + 0
 378              		.type	_ZTV21SimpleFilamentMonitor, %object
 379              		.size	_ZTV21SimpleFilamentMonitor, 40
 380              	_ZTV21SimpleFilamentMonitor:
 381 0000 00000000 		.word	0
ARM GAS  /tmp/ccXx8vt7.s 			page 8


 382 0004 00000000 		.word	0
 383 0008 00000000 		.word	_ZN21SimpleFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 384 000c 00000000 		.word	_ZN21SimpleFilamentMonitor5CheckEbbbf
 385 0010 00000000 		.word	_ZN21SimpleFilamentMonitor5ClearEb
 386 0014 00000000 		.word	_ZN21SimpleFilamentMonitor11DiagnosticsE11MessageTypej
 387 0018 00000000 		.word	_ZN21SimpleFilamentMonitor9InterruptEv
 388 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 389 0020 00000000 		.word	_ZN21SimpleFilamentMonitorD1Ev
 390 0024 00000000 		.word	_ZN21SimpleFilamentMonitorD0Ev
 391              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
