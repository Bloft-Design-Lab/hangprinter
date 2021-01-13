ARM GAS  C:\Users\paja\AppData\Local\Temp\ccdWgeUK.s 			page 1


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
  13              		.file	"wiring_digital.cpp"
  14              		.text
  15              		.section	.text.pinModeDuet,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	pinModeDuet
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	pinModeDuet, %function
  24              	pinModeDuet:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 6928     		cmp	r0, #105
  28 0002 14D8     		bhi	.L34
  29 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  30 0008 C400     		lsls	r4, r0, #3
  31 000a 5B4D     		ldr	r5, .L43
  32 000c 231A     		subs	r3, r4, r0
  33 000e 05EB8303 		add	r3, r5, r3, lsl #2
  34 0012 DB68     		ldr	r3, [r3, #12]
  35 0014 4BB1     		cbz	r3, .L1
  36 0016 1646     		mov	r6, r2
  37 0018 0829     		cmp	r1, #8
  38 001a 06D8     		bhi	.L1
  39 001c DFE801F0 		tbb	[pc, r1]
  40              	.L6:
  41 0020 16       		.byte	(.L5-.L6)/2
  42 0021 31       		.byte	(.L7-.L6)/2
  43 0022 47       		.byte	(.L8-.L6)/2
  44 0023 67       		.byte	(.L9-.L6)/2
  45 0024 7A       		.byte	(.L10-.L6)/2
  46 0025 83       		.byte	(.L11-.L6)/2
  47 0026 92       		.byte	(.L12-.L6)/2
  48 0027 9A       		.byte	(.L13-.L6)/2
  49 0028 08       		.byte	(.L14-.L6)/2
  50 0029 00       		.p2align 1
  51              	.L1:
  52 002a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  53              	.L34:
  54 002e 7047     		bx	lr
  55              	.L14:
  56 0030 241A     		subs	r4, r4, r0
  57 0032 05EB8405 		add	r5, r5, r4, lsl #2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccdWgeUK.s 			page 2


  58 0036 6B69     		ldr	r3, [r5, #20]
  59 0038 13F0180F 		tst	r3, #24
  60 003c F5D0     		beq	.L1
  61 003e 0021     		movs	r1, #0
  62 0040 B7EE000A 		vmov.f32	s0, #1.0e+0
  63 0044 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  64 0048 FFF7FEBF 		b	_Z9AnalogOuthft
  65              	.L5:
  66 004c 201A     		subs	r0, r4, r0
  67 004e 8400     		lsls	r4, r0, #2
  68 0050 2F19     		adds	r7, r5, r4
  69 0052 B868     		ldr	r0, [r7, #8]
  70 0054 FFF7FEFF 		bl	pmc_enable_periph_clk
  71 0058 7968     		ldr	r1, [r7, #4]
  72 005a 2859     		ldr	r0, [r5, r4]
  73 005c 0022     		movs	r2, #0
  74 005e FFF7FEFF 		bl	pio_pull_up
  75 0062 2859     		ldr	r0, [r5, r4]
  76 0064 7968     		ldr	r1, [r7, #4]
  77 0066 0022     		movs	r2, #0
  78 0068 FFF7FEFF 		bl	pio_pull_down
  79 006c 7A68     		ldr	r2, [r7, #4]
  80 006e 2859     		ldr	r0, [r5, r4]
  81 0070 002E     		cmp	r6, #0
  82 0072 30D1     		bne	.L32
  83              	.L19:
  84 0074 3346     		mov	r3, r6
  85 0076 4FF02051 		mov	r1, #671088640
  86 007a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  87 007e FFF7FEBF 		b	pio_configure
  88              	.L7:
  89 0082 201A     		subs	r0, r4, r0
  90 0084 8400     		lsls	r4, r0, #2
  91 0086 2F19     		adds	r7, r5, r4
  92 0088 B868     		ldr	r0, [r7, #8]
  93 008a FFF7FEFF 		bl	pmc_enable_periph_clk
  94 008e 2859     		ldr	r0, [r5, r4]
  95 0090 7968     		ldr	r1, [r7, #4]
  96 0092 0022     		movs	r2, #0
  97 0094 FFF7FEFF 		bl	pio_pull_down
  98 0098 7A68     		ldr	r2, [r7, #4]
  99 009a 2859     		ldr	r0, [r5, r4]
 100 009c 002E     		cmp	r6, #0
 101 009e 68D1     		bne	.L42
 102 00a0 0123     		movs	r3, #1
 103 00a2 4FF02051 		mov	r1, #671088640
 104 00a6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 105 00aa FFF7FEBF 		b	pio_configure
 106              	.L8:
 107 00ae 201A     		subs	r0, r4, r0
 108 00b0 8400     		lsls	r4, r0, #2
 109 00b2 2F19     		adds	r7, r5, r4
 110 00b4 B868     		ldr	r0, [r7, #8]
 111 00b6 FFF7FEFF 		bl	pmc_enable_periph_clk
 112 00ba 7968     		ldr	r1, [r7, #4]
 113 00bc 2859     		ldr	r0, [r5, r4]
 114 00be 0022     		movs	r2, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccdWgeUK.s 			page 3


 115 00c0 FFF7FEFF 		bl	pio_pull_up
 116 00c4 2859     		ldr	r0, [r5, r4]
 117 00c6 7968     		ldr	r1, [r7, #4]
 118 00c8 0122     		movs	r2, #1
 119 00ca FFF7FEFF 		bl	pio_pull_down
 120 00ce 7A68     		ldr	r2, [r7, #4]
 121 00d0 2859     		ldr	r0, [r5, r4]
 122 00d2 002E     		cmp	r6, #0
 123 00d4 CED0     		beq	.L19
 124              	.L32:
 125 00d6 0823     		movs	r3, #8
 126              	.L38:
 127 00d8 4FF02051 		mov	r1, #671088640
 128 00dc FFF7FEFF 		bl	pio_configure
 129 00e0 3246     		mov	r2, r6
 130 00e2 7968     		ldr	r1, [r7, #4]
 131 00e4 2859     		ldr	r0, [r5, r4]
 132 00e6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 133 00ea FFF7FEBF 		b	pio_set_debounce_filter
 134              	.L9:
 135 00ee 201A     		subs	r0, r4, r0
 136 00f0 8400     		lsls	r4, r0, #2
 137 00f2 2E19     		adds	r6, r5, r4
 138 00f4 2859     		ldr	r0, [r5, r4]
 139 00f6 3369     		ldr	r3, [r6, #16]
 140 00f8 7268     		ldr	r2, [r6, #4]
 141 00fa 4FF04051 		mov	r1, #805306368
 142              	.L40:
 143 00fe FFF7FEFF 		bl	pio_configure
 144 0102 2B59     		ldr	r3, [r5, r4]
 145 0104 9B69     		ldr	r3, [r3, #24]
 146 0106 0133     		adds	r3, r3, #1
 147 0108 8FD1     		bne	.L1
 148 010a B068     		ldr	r0, [r6, #8]
 149 010c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 150 0110 FFF7FEBF 		b	pmc_disable_periph_clk
 151              	.L10:
 152 0114 201A     		subs	r0, r4, r0
 153 0116 8400     		lsls	r4, r0, #2
 154 0118 2E19     		adds	r6, r5, r4
 155 011a 2859     		ldr	r0, [r5, r4]
 156 011c 3369     		ldr	r3, [r6, #16]
 157 011e 7268     		ldr	r2, [r6, #4]
 158 0120 4FF06051 		mov	r1, #939524096
 159 0124 EBE7     		b	.L40
 160              	.L11:
 161 0126 201A     		subs	r0, r4, r0
 162 0128 8400     		lsls	r4, r0, #2
 163 012a 2E19     		adds	r6, r5, r4
 164 012c 2859     		ldr	r0, [r5, r4]
 165 012e 7168     		ldr	r1, [r6, #4]
 166 0130 0022     		movs	r2, #0
 167 0132 FFF7FEFF 		bl	pio_pull_up
 168 0136 7168     		ldr	r1, [r6, #4]
 169 0138 2859     		ldr	r0, [r5, r4]
 170 013a 0022     		movs	r2, #0
 171 013c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccdWgeUK.s 			page 4


 172 0140 FFF7FEBF 		b	pio_pull_down
 173              	.L12:
 174 0144 C0EBC000 		rsb	r0, r0, r0, lsl #3
 175 0148 05EB8000 		add	r0, r5, r0, lsl #2
 176 014c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 177 0150 FFF7FEBF 		b	_Z12ConfigurePinRK14PinDescription
 178              	.L13:
 179 0154 241A     		subs	r4, r4, r0
 180 0156 05EB8405 		add	r5, r5, r4, lsl #2
 181 015a 6B69     		ldr	r3, [r5, #20]
 182 015c 13F0180F 		tst	r3, #24
 183 0160 3FF463AF 		beq	.L1
 184 0164 0021     		movs	r1, #0
 185 0166 9FED050A 		vldr.32	s0, .L43+4
 186 016a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 187 016e FFF7FEBF 		b	_Z9AnalogOuthft
 188              	.L42:
 189 0172 0923     		movs	r3, #9
 190 0174 B0E7     		b	.L38
 191              	.L44:
 192 0176 00BF     		.align	2
 193              	.L43:
 194 0178 00000000 		.word	g_APinDescription
 195 017c 00000000 		.word	0
 196              		.size	pinModeDuet, .-pinModeDuet
 197              		.section	.text.digitalWrite,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	digitalWrite
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu fpv4-sp-d16
 205              		.type	digitalWrite, %function
 206              	digitalWrite:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209              		@ link register save eliminated.
 210 0000 6928     		cmp	r0, #105
 211 0002 0ED8     		bhi	.L52
 212 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 213 0008 084A     		ldr	r2, .L56
 214 000a 8000     		lsls	r0, r0, #2
 215 000c 1318     		adds	r3, r2, r0
 216 000e 10B4     		push	{r4}
 217 0010 DC68     		ldr	r4, [r3, #12]
 218 0012 1CB1     		cbz	r4, .L45
 219 0014 1258     		ldr	r2, [r2, r0]
 220 0016 5B68     		ldr	r3, [r3, #4]
 221 0018 21B9     		cbnz	r1, .L55
 222 001a 5363     		str	r3, [r2, #52]
 223              	.L45:
 224 001c 5DF8044B 		ldr	r4, [sp], #4
 225 0020 7047     		bx	lr
 226              	.L52:
 227 0022 7047     		bx	lr
 228              	.L55:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccdWgeUK.s 			page 5


 229 0024 1363     		str	r3, [r2, #48]
 230 0026 5DF8044B 		ldr	r4, [sp], #4
 231 002a 7047     		bx	lr
 232              	.L57:
 233              		.align	2
 234              	.L56:
 235 002c 00000000 		.word	g_APinDescription
 236              		.size	digitalWrite, .-digitalWrite
 237              		.section	.text.digitalRead,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	digitalRead
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv4-sp-d16
 245              		.type	digitalRead, %function
 246              	digitalRead:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249 0000 6928     		cmp	r0, #105
 250 0002 08D8     		bhi	.L60
 251 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 252 0008 0949     		ldr	r1, .L67
 253 000a 08B5     		push	{r3, lr}
 254 000c 8300     		lsls	r3, r0, #2
 255 000e CA18     		adds	r2, r1, r3
 256 0010 D068     		ldr	r0, [r2, #12]
 257 0012 10B9     		cbnz	r0, .L66
 258 0014 08BD     		pop	{r3, pc}
 259              	.L60:
 260 0016 0020     		movs	r0, #0
 261 0018 7047     		bx	lr
 262              	.L66:
 263 001a C858     		ldr	r0, [r1, r3]
 264 001c 5268     		ldr	r2, [r2, #4]
 265 001e 4FF02051 		mov	r1, #671088640
 266 0022 FFF7FEFF 		bl	pio_get
 267 0026 0030     		adds	r0, r0, #0
 268 0028 18BF     		it	ne
 269 002a 0120     		movne	r0, #1
 270 002c 08BD     		pop	{r3, pc}
 271              	.L68:
 272 002e 00BF     		.align	2
 273              	.L67:
 274 0030 00000000 		.word	g_APinDescription
 275              		.size	digitalRead, .-digitalRead
 276              		.section	.text.setPullup,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	setPullup
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu fpv4-sp-d16
 284              		.type	setPullup, %function
 285              	setPullup:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccdWgeUK.s 			page 6


 286              		@ args = 0, pretend = 0, frame = 0
 287              		@ frame_needed = 0, uses_anonymous_args = 0
 288              		@ link register save eliminated.
 289 0000 6928     		cmp	r0, #105
 290 0002 0AD8     		bhi	.L75
 291 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 292 0008 084B     		ldr	r3, .L79
 293 000a 8000     		lsls	r0, r0, #2
 294 000c 10B4     		push	{r4}
 295 000e 1C18     		adds	r4, r3, r0
 296 0010 E268     		ldr	r2, [r4, #12]
 297 0012 1AB9     		cbnz	r2, .L78
 298 0014 5DF8044B 		ldr	r4, [sp], #4
 299 0018 7047     		bx	lr
 300              	.L75:
 301 001a 7047     		bx	lr
 302              	.L78:
 303 001c 0A46     		mov	r2, r1
 304 001e 1858     		ldr	r0, [r3, r0]
 305 0020 6168     		ldr	r1, [r4, #4]
 306 0022 5DF8044B 		ldr	r4, [sp], #4
 307 0026 FFF7FEBF 		b	pio_pull_up
 308              	.L80:
 309 002a 00BF     		.align	2
 310              	.L79:
 311 002c 00000000 		.word	g_APinDescription
 312              		.size	setPullup, .-setPullup
 313              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 314              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 315              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 316              	_ZL28cpu_irq_prev_interrupt_state:
 317 0000 00       		.space	1
 318              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 319              		.align	2
 320              		.type	_ZL32cpu_irq_critical_section_counter, %object
 321              		.size	_ZL32cpu_irq_critical_section_counter, 4
 322              	_ZL32cpu_irq_critical_section_counter:
 323 0000 00000000 		.space	4
 324              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
