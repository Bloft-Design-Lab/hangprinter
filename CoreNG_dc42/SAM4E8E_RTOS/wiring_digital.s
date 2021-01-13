ARM GAS  /tmp/ccvRoiZZ.s 			page 1


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
  14              		.section	.text.pinModeDuet,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	pinModeDuet
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	pinModeDuet, %function
  23              	pinModeDuet:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 6928     		cmp	r0, #105
  27 0002 14D8     		bhi	.L34
  28 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  29 0008 C400     		lsls	r4, r0, #3
  30 000a 5B4D     		ldr	r5, .L44
  31 000c 231A     		subs	r3, r4, r0
  32 000e 05EB8303 		add	r3, r5, r3, lsl #2
  33 0012 DB68     		ldr	r3, [r3, #12]
  34 0014 4BB1     		cbz	r3, .L1
  35 0016 1646     		mov	r6, r2
  36 0018 0829     		cmp	r1, #8
  37 001a 06D8     		bhi	.L1
  38 001c DFE801F0 		tbb	[pc, r1]
  39              	.L6:
  40 0020 16       		.byte	(.L5-.L6)/2
  41 0021 31       		.byte	(.L7-.L6)/2
  42 0022 47       		.byte	(.L8-.L6)/2
  43 0023 67       		.byte	(.L9-.L6)/2
  44 0024 7A       		.byte	(.L10-.L6)/2
  45 0025 83       		.byte	(.L11-.L6)/2
  46 0026 92       		.byte	(.L12-.L6)/2
  47 0027 9A       		.byte	(.L13-.L6)/2
  48 0028 08       		.byte	(.L14-.L6)/2
  49 0029 00       		.p2align 1
  50              	.L1:
  51 002a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  52              	.L34:
  53 002e 7047     		bx	lr
  54              	.L14:
  55 0030 241A     		subs	r4, r4, r0
  56 0032 05EB8405 		add	r5, r5, r4, lsl #2
  57 0036 6B69     		ldr	r3, [r5, #20]
ARM GAS  /tmp/ccvRoiZZ.s 			page 2


  58 0038 13F0180F 		tst	r3, #24
  59 003c F5D0     		beq	.L1
  60 003e 0021     		movs	r1, #0
  61 0040 B7EE000A 		vmov.f32	s0, #1.0e+0
  62 0044 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  63 0048 FFF7FEBF 		b	_Z9AnalogOuthft
  64              	.L5:
  65 004c 201A     		subs	r0, r4, r0
  66 004e 8400     		lsls	r4, r0, #2
  67 0050 2F19     		adds	r7, r5, r4
  68 0052 B868     		ldr	r0, [r7, #8]
  69 0054 FFF7FEFF 		bl	pmc_enable_periph_clk
  70 0058 7968     		ldr	r1, [r7, #4]
  71 005a 2859     		ldr	r0, [r5, r4]
  72 005c 0022     		movs	r2, #0
  73 005e FFF7FEFF 		bl	pio_pull_up
  74 0062 2859     		ldr	r0, [r5, r4]
  75 0064 7968     		ldr	r1, [r7, #4]
  76 0066 0022     		movs	r2, #0
  77 0068 FFF7FEFF 		bl	pio_pull_down
  78 006c 7A68     		ldr	r2, [r7, #4]
  79 006e 2859     		ldr	r0, [r5, r4]
  80 0070 002E     		cmp	r6, #0
  81 0072 30D1     		bne	.L32
  82              	.L19:
  83 0074 3346     		mov	r3, r6
  84 0076 4FF02051 		mov	r1, #671088640
  85 007a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  86 007e FFF7FEBF 		b	pio_configure
  87              	.L7:
  88 0082 201A     		subs	r0, r4, r0
  89 0084 8400     		lsls	r4, r0, #2
  90 0086 2F19     		adds	r7, r5, r4
  91 0088 B868     		ldr	r0, [r7, #8]
  92 008a FFF7FEFF 		bl	pmc_enable_periph_clk
  93 008e 2859     		ldr	r0, [r5, r4]
  94 0090 7968     		ldr	r1, [r7, #4]
  95 0092 0022     		movs	r2, #0
  96 0094 FFF7FEFF 		bl	pio_pull_down
  97 0098 7A68     		ldr	r2, [r7, #4]
  98 009a 2859     		ldr	r0, [r5, r4]
  99 009c 002E     		cmp	r6, #0
 100 009e 68D1     		bne	.L43
 101 00a0 0123     		movs	r3, #1
 102 00a2 4FF02051 		mov	r1, #671088640
 103 00a6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 104 00aa FFF7FEBF 		b	pio_configure
 105              	.L8:
 106 00ae 201A     		subs	r0, r4, r0
 107 00b0 8400     		lsls	r4, r0, #2
 108 00b2 2F19     		adds	r7, r5, r4
 109 00b4 B868     		ldr	r0, [r7, #8]
 110 00b6 FFF7FEFF 		bl	pmc_enable_periph_clk
 111 00ba 7968     		ldr	r1, [r7, #4]
 112 00bc 2859     		ldr	r0, [r5, r4]
 113 00be 0022     		movs	r2, #0
 114 00c0 FFF7FEFF 		bl	pio_pull_up
ARM GAS  /tmp/ccvRoiZZ.s 			page 3


 115 00c4 2859     		ldr	r0, [r5, r4]
 116 00c6 7968     		ldr	r1, [r7, #4]
 117 00c8 0122     		movs	r2, #1
 118 00ca FFF7FEFF 		bl	pio_pull_down
 119 00ce 7A68     		ldr	r2, [r7, #4]
 120 00d0 2859     		ldr	r0, [r5, r4]
 121 00d2 002E     		cmp	r6, #0
 122 00d4 CED0     		beq	.L19
 123              	.L32:
 124 00d6 0823     		movs	r3, #8
 125              	.L38:
 126 00d8 4FF02051 		mov	r1, #671088640
 127 00dc FFF7FEFF 		bl	pio_configure
 128 00e0 3246     		mov	r2, r6
 129 00e2 7968     		ldr	r1, [r7, #4]
 130 00e4 2859     		ldr	r0, [r5, r4]
 131 00e6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 132 00ea FFF7FEBF 		b	pio_set_debounce_filter
 133              	.L9:
 134 00ee 201A     		subs	r0, r4, r0
 135 00f0 8400     		lsls	r4, r0, #2
 136 00f2 2E19     		adds	r6, r5, r4
 137 00f4 2859     		ldr	r0, [r5, r4]
 138 00f6 3369     		ldr	r3, [r6, #16]
 139 00f8 7268     		ldr	r2, [r6, #4]
 140 00fa 4FF04051 		mov	r1, #805306368
 141              	.L40:
 142 00fe FFF7FEFF 		bl	pio_configure
 143 0102 2B59     		ldr	r3, [r5, r4]
 144 0104 9B69     		ldr	r3, [r3, #24]
 145 0106 0133     		adds	r3, r3, #1
 146 0108 8FD1     		bne	.L1
 147 010a B068     		ldr	r0, [r6, #8]
 148 010c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 149 0110 FFF7FEBF 		b	pmc_disable_periph_clk
 150              	.L10:
 151 0114 201A     		subs	r0, r4, r0
 152 0116 8400     		lsls	r4, r0, #2
 153 0118 2E19     		adds	r6, r5, r4
 154 011a 2859     		ldr	r0, [r5, r4]
 155 011c 3369     		ldr	r3, [r6, #16]
 156 011e 7268     		ldr	r2, [r6, #4]
 157 0120 4FF06051 		mov	r1, #939524096
 158 0124 EBE7     		b	.L40
 159              	.L11:
 160 0126 201A     		subs	r0, r4, r0
 161 0128 8400     		lsls	r4, r0, #2
 162 012a 2E19     		adds	r6, r5, r4
 163 012c 2859     		ldr	r0, [r5, r4]
 164 012e 7168     		ldr	r1, [r6, #4]
 165 0130 0022     		movs	r2, #0
 166 0132 FFF7FEFF 		bl	pio_pull_up
 167 0136 7168     		ldr	r1, [r6, #4]
 168 0138 2859     		ldr	r0, [r5, r4]
 169 013a 0022     		movs	r2, #0
 170 013c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 171 0140 FFF7FEBF 		b	pio_pull_down
ARM GAS  /tmp/ccvRoiZZ.s 			page 4


 172              	.L12:
 173 0144 C0EBC000 		rsb	r0, r0, r0, lsl #3
 174 0148 05EB8000 		add	r0, r5, r0, lsl #2
 175 014c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 176 0150 FFF7FEBF 		b	_Z12ConfigurePinRK14PinDescription
 177              	.L13:
 178 0154 241A     		subs	r4, r4, r0
 179 0156 05EB8405 		add	r5, r5, r4, lsl #2
 180 015a 6B69     		ldr	r3, [r5, #20]
 181 015c 13F0180F 		tst	r3, #24
 182 0160 3FF463AF 		beq	.L1
 183 0164 0021     		movs	r1, #0
 184 0166 9FED050A 		vldr.32	s0, .L44+4
 185 016a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 186 016e FFF7FEBF 		b	_Z9AnalogOuthft
 187              	.L43:
 188 0172 0923     		movs	r3, #9
 189 0174 B0E7     		b	.L38
 190              	.L45:
 191 0176 00BF     		.align	2
 192              	.L44:
 193 0178 00000000 		.word	g_APinDescription
 194 017c 00000000 		.word	0
 195              		.size	pinModeDuet, .-pinModeDuet
 196              		.section	.text.digitalWrite,"ax",%progbits
 197              		.align	1
 198              		.p2align 2,,3
 199              		.global	digitalWrite
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu fpv4-sp-d16
 204              		.type	digitalWrite, %function
 205              	digitalWrite:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208              		@ link register save eliminated.
 209 0000 6928     		cmp	r0, #105
 210 0002 0DD8     		bhi	.L56
 211 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 212 0008 074A     		ldr	r2, .L58
 213 000a 8000     		lsls	r0, r0, #2
 214 000c 1318     		adds	r3, r2, r0
 215 000e 10B4     		push	{r4}
 216 0010 DC68     		ldr	r4, [r3, #12]
 217 0012 1CB1     		cbz	r4, .L46
 218 0014 1258     		ldr	r2, [r2, r0]
 219 0016 5B68     		ldr	r3, [r3, #4]
 220 0018 19B9     		cbnz	r1, .L57
 221 001a 5363     		str	r3, [r2, #52]
 222              	.L46:
 223 001c 5DF8044B 		ldr	r4, [sp], #4
 224              	.L56:
 225 0020 7047     		bx	lr
 226              	.L57:
 227 0022 1363     		str	r3, [r2, #48]
 228 0024 FAE7     		b	.L46
ARM GAS  /tmp/ccvRoiZZ.s 			page 5


 229              	.L59:
 230 0026 00BF     		.align	2
 231              	.L58:
 232 0028 00000000 		.word	g_APinDescription
 233              		.size	digitalWrite, .-digitalWrite
 234              		.section	.text.digitalRead,"ax",%progbits
 235              		.align	1
 236              		.p2align 2,,3
 237              		.global	digitalRead
 238              		.syntax unified
 239              		.thumb
 240              		.thumb_func
 241              		.fpu fpv4-sp-d16
 242              		.type	digitalRead, %function
 243              	digitalRead:
 244              		@ args = 0, pretend = 0, frame = 0
 245              		@ frame_needed = 0, uses_anonymous_args = 0
 246 0000 6928     		cmp	r0, #105
 247 0002 12D8     		bhi	.L62
 248 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 249 0008 0949     		ldr	r1, .L69
 250 000a 08B5     		push	{r3, lr}
 251 000c 8300     		lsls	r3, r0, #2
 252 000e CA18     		adds	r2, r1, r3
 253 0010 D068     		ldr	r0, [r2, #12]
 254 0012 00B9     		cbnz	r0, .L68
 255 0014 08BD     		pop	{r3, pc}
 256              	.L68:
 257 0016 C858     		ldr	r0, [r1, r3]
 258 0018 5268     		ldr	r2, [r2, #4]
 259 001a 4FF02051 		mov	r1, #671088640
 260 001e FFF7FEFF 		bl	pio_get
 261 0022 0030     		adds	r0, r0, #0
 262 0024 18BF     		it	ne
 263 0026 0120     		movne	r0, #1
 264 0028 08BD     		pop	{r3, pc}
 265              	.L62:
 266 002a 0020     		movs	r0, #0
 267 002c 7047     		bx	lr
 268              	.L70:
 269 002e 00BF     		.align	2
 270              	.L69:
 271 0030 00000000 		.word	g_APinDescription
 272              		.size	digitalRead, .-digitalRead
 273              		.section	.text.setPullup,"ax",%progbits
 274              		.align	1
 275              		.p2align 2,,3
 276              		.global	setPullup
 277              		.syntax unified
 278              		.thumb
 279              		.thumb_func
 280              		.fpu fpv4-sp-d16
 281              		.type	setPullup, %function
 282              	setPullup:
 283              		@ args = 0, pretend = 0, frame = 0
 284              		@ frame_needed = 0, uses_anonymous_args = 0
 285              		@ link register save eliminated.
ARM GAS  /tmp/ccvRoiZZ.s 			page 6


 286 0000 6928     		cmp	r0, #105
 287 0002 09D8     		bhi	.L80
 288 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 289 0008 074B     		ldr	r3, .L82
 290 000a 8000     		lsls	r0, r0, #2
 291 000c 10B4     		push	{r4}
 292 000e 1C18     		adds	r4, r3, r0
 293 0010 E268     		ldr	r2, [r4, #12]
 294 0012 12B9     		cbnz	r2, .L81
 295 0014 5DF8044B 		ldr	r4, [sp], #4
 296              	.L80:
 297 0018 7047     		bx	lr
 298              	.L81:
 299 001a 0A46     		mov	r2, r1
 300 001c 1858     		ldr	r0, [r3, r0]
 301 001e 6168     		ldr	r1, [r4, #4]
 302 0020 5DF8044B 		ldr	r4, [sp], #4
 303 0024 FFF7FEBF 		b	pio_pull_up
 304              	.L83:
 305              		.align	2
 306              	.L82:
 307 0028 00000000 		.word	g_APinDescription
 308              		.size	setPullup, .-setPullup
 309              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 310              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 311              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 312              	_ZL28cpu_irq_prev_interrupt_state:
 313 0000 00       		.space	1
 314              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 315              		.align	2
 316              		.type	_ZL32cpu_irq_critical_section_counter, %object
 317              		.size	_ZL32cpu_irq_critical_section_counter, 4
 318              	_ZL32cpu_irq_critical_section_counter:
 319 0000 00000000 		.space	4
 320              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
