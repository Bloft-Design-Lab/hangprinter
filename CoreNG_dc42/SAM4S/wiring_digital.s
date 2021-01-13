ARM GAS  /tmp/cc7RWBwi.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"wiring_digital.cpp"
  12              		.section	.text.pinModeDuet,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	pinModeDuet
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	pinModeDuet, %function
  21              	pinModeDuet:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 4328     		cmp	r0, #67
  25 0002 14D8     		bhi	.L34
  26 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  27 0008 C400     		lsls	r4, r0, #3
  28 000a 5A4D     		ldr	r5, .L44
  29 000c 231A     		subs	r3, r4, r0
  30 000e 05EB8303 		add	r3, r5, r3, lsl #2
  31 0012 DB68     		ldr	r3, [r3, #12]
  32 0014 4BB1     		cbz	r3, .L1
  33 0016 1646     		mov	r6, r2
  34 0018 0829     		cmp	r1, #8
  35 001a 06D8     		bhi	.L1
  36 001c DFE801F0 		tbb	[pc, r1]
  37              	.L6:
  38 0020 16       		.byte	(.L5-.L6)/2
  39 0021 31       		.byte	(.L7-.L6)/2
  40 0022 47       		.byte	(.L8-.L6)/2
  41 0023 67       		.byte	(.L9-.L6)/2
  42 0024 7A       		.byte	(.L10-.L6)/2
  43 0025 83       		.byte	(.L11-.L6)/2
  44 0026 92       		.byte	(.L12-.L6)/2
  45 0027 9A       		.byte	(.L13-.L6)/2
  46 0028 08       		.byte	(.L14-.L6)/2
  47 0029 00       		.p2align 1
  48              	.L1:
  49 002a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  50              	.L34:
  51 002e 7047     		bx	lr
  52              	.L14:
  53 0030 241A     		subs	r4, r4, r0
  54 0032 05EB8405 		add	r5, r5, r4, lsl #2
  55 0036 6B69     		ldr	r3, [r5, #20]
  56 0038 13F0180F 		tst	r3, #24
  57 003c F5D0     		beq	.L1
ARM GAS  /tmp/cc7RWBwi.s 			page 2


  58 003e 0022     		movs	r2, #0
  59 0040 4FF07E51 		mov	r1, #1065353216
  60 0044 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  61 0048 FFF7FEBF 		b	_Z9AnalogOuthft
  62              	.L5:
  63 004c 201A     		subs	r0, r4, r0
  64 004e 8400     		lsls	r4, r0, #2
  65 0050 2F19     		adds	r7, r5, r4
  66 0052 B868     		ldr	r0, [r7, #8]
  67 0054 FFF7FEFF 		bl	pmc_enable_periph_clk
  68 0058 7968     		ldr	r1, [r7, #4]
  69 005a 2859     		ldr	r0, [r5, r4]
  70 005c 0022     		movs	r2, #0
  71 005e FFF7FEFF 		bl	pio_pull_up
  72 0062 2859     		ldr	r0, [r5, r4]
  73 0064 7968     		ldr	r1, [r7, #4]
  74 0066 0022     		movs	r2, #0
  75 0068 FFF7FEFF 		bl	pio_pull_down
  76 006c 7A68     		ldr	r2, [r7, #4]
  77 006e 2859     		ldr	r0, [r5, r4]
  78 0070 002E     		cmp	r6, #0
  79 0072 30D1     		bne	.L32
  80              	.L19:
  81 0074 3346     		mov	r3, r6
  82 0076 4FF02051 		mov	r1, #671088640
  83 007a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  84 007e FFF7FEBF 		b	pio_configure
  85              	.L7:
  86 0082 201A     		subs	r0, r4, r0
  87 0084 8400     		lsls	r4, r0, #2
  88 0086 2F19     		adds	r7, r5, r4
  89 0088 B868     		ldr	r0, [r7, #8]
  90 008a FFF7FEFF 		bl	pmc_enable_periph_clk
  91 008e 2859     		ldr	r0, [r5, r4]
  92 0090 7968     		ldr	r1, [r7, #4]
  93 0092 0022     		movs	r2, #0
  94 0094 FFF7FEFF 		bl	pio_pull_down
  95 0098 7A68     		ldr	r2, [r7, #4]
  96 009a 2859     		ldr	r0, [r5, r4]
  97 009c 002E     		cmp	r6, #0
  98 009e 67D1     		bne	.L43
  99 00a0 0123     		movs	r3, #1
 100 00a2 4FF02051 		mov	r1, #671088640
 101 00a6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 102 00aa FFF7FEBF 		b	pio_configure
 103              	.L8:
 104 00ae 201A     		subs	r0, r4, r0
 105 00b0 8400     		lsls	r4, r0, #2
 106 00b2 2F19     		adds	r7, r5, r4
 107 00b4 B868     		ldr	r0, [r7, #8]
 108 00b6 FFF7FEFF 		bl	pmc_enable_periph_clk
 109 00ba 7968     		ldr	r1, [r7, #4]
 110 00bc 2859     		ldr	r0, [r5, r4]
 111 00be 0022     		movs	r2, #0
 112 00c0 FFF7FEFF 		bl	pio_pull_up
 113 00c4 2859     		ldr	r0, [r5, r4]
 114 00c6 7968     		ldr	r1, [r7, #4]
ARM GAS  /tmp/cc7RWBwi.s 			page 3


 115 00c8 0122     		movs	r2, #1
 116 00ca FFF7FEFF 		bl	pio_pull_down
 117 00ce 7A68     		ldr	r2, [r7, #4]
 118 00d0 2859     		ldr	r0, [r5, r4]
 119 00d2 002E     		cmp	r6, #0
 120 00d4 CED0     		beq	.L19
 121              	.L32:
 122 00d6 0823     		movs	r3, #8
 123              	.L38:
 124 00d8 4FF02051 		mov	r1, #671088640
 125 00dc FFF7FEFF 		bl	pio_configure
 126 00e0 3246     		mov	r2, r6
 127 00e2 7968     		ldr	r1, [r7, #4]
 128 00e4 2859     		ldr	r0, [r5, r4]
 129 00e6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 130 00ea FFF7FEBF 		b	pio_set_debounce_filter
 131              	.L9:
 132 00ee 201A     		subs	r0, r4, r0
 133 00f0 8400     		lsls	r4, r0, #2
 134 00f2 2E19     		adds	r6, r5, r4
 135 00f4 2859     		ldr	r0, [r5, r4]
 136 00f6 3369     		ldr	r3, [r6, #16]
 137 00f8 7268     		ldr	r2, [r6, #4]
 138 00fa 4FF04051 		mov	r1, #805306368
 139              	.L40:
 140 00fe FFF7FEFF 		bl	pio_configure
 141 0102 2B59     		ldr	r3, [r5, r4]
 142 0104 9B69     		ldr	r3, [r3, #24]
 143 0106 0133     		adds	r3, r3, #1
 144 0108 8FD1     		bne	.L1
 145 010a B068     		ldr	r0, [r6, #8]
 146 010c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 147 0110 FFF7FEBF 		b	pmc_disable_periph_clk
 148              	.L10:
 149 0114 201A     		subs	r0, r4, r0
 150 0116 8400     		lsls	r4, r0, #2
 151 0118 2E19     		adds	r6, r5, r4
 152 011a 2859     		ldr	r0, [r5, r4]
 153 011c 3369     		ldr	r3, [r6, #16]
 154 011e 7268     		ldr	r2, [r6, #4]
 155 0120 4FF06051 		mov	r1, #939524096
 156 0124 EBE7     		b	.L40
 157              	.L11:
 158 0126 201A     		subs	r0, r4, r0
 159 0128 8400     		lsls	r4, r0, #2
 160 012a 2E19     		adds	r6, r5, r4
 161 012c 2859     		ldr	r0, [r5, r4]
 162 012e 7168     		ldr	r1, [r6, #4]
 163 0130 0022     		movs	r2, #0
 164 0132 FFF7FEFF 		bl	pio_pull_up
 165 0136 7168     		ldr	r1, [r6, #4]
 166 0138 2859     		ldr	r0, [r5, r4]
 167 013a 0022     		movs	r2, #0
 168 013c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 169 0140 FFF7FEBF 		b	pio_pull_down
 170              	.L12:
 171 0144 C0EBC000 		rsb	r0, r0, r0, lsl #3
ARM GAS  /tmp/cc7RWBwi.s 			page 4


 172 0148 05EB8000 		add	r0, r5, r0, lsl #2
 173 014c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 174 0150 FFF7FEBF 		b	_Z12ConfigurePinRK14PinDescription
 175              	.L13:
 176 0154 241A     		subs	r4, r4, r0
 177 0156 05EB8405 		add	r5, r5, r4, lsl #2
 178 015a 6B69     		ldr	r3, [r5, #20]
 179 015c 13F0180F 		tst	r3, #24
 180 0160 3FF463AF 		beq	.L1
 181 0164 0022     		movs	r2, #0
 182 0166 0021     		movs	r1, #0
 183 0168 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 184 016c FFF7FEBF 		b	_Z9AnalogOuthft
 185              	.L43:
 186 0170 0923     		movs	r3, #9
 187 0172 B1E7     		b	.L38
 188              	.L45:
 189              		.align	2
 190              	.L44:
 191 0174 00000000 		.word	g_APinDescription
 192              		.size	pinModeDuet, .-pinModeDuet
 193              		.section	.text.digitalWrite,"ax",%progbits
 194              		.align	1
 195              		.p2align 2,,3
 196              		.global	digitalWrite
 197              		.syntax unified
 198              		.thumb
 199              		.thumb_func
 200              		.fpu softvfp
 201              		.type	digitalWrite, %function
 202              	digitalWrite:
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205              		@ link register save eliminated.
 206 0000 4328     		cmp	r0, #67
 207 0002 0CD8     		bhi	.L56
 208 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 209 0008 064A     		ldr	r2, .L58
 210 000a 8000     		lsls	r0, r0, #2
 211 000c 1318     		adds	r3, r2, r0
 212 000e 10B4     		push	{r4}
 213 0010 DC68     		ldr	r4, [r3, #12]
 214 0012 1CB1     		cbz	r4, .L46
 215 0014 1258     		ldr	r2, [r2, r0]
 216 0016 5B68     		ldr	r3, [r3, #4]
 217 0018 11B9     		cbnz	r1, .L57
 218 001a 5363     		str	r3, [r2, #52]
 219              	.L46:
 220 001c 10BC     		pop	{r4}
 221              	.L56:
 222 001e 7047     		bx	lr
 223              	.L57:
 224 0020 1363     		str	r3, [r2, #48]
 225 0022 FBE7     		b	.L46
 226              	.L59:
 227              		.align	2
 228              	.L58:
ARM GAS  /tmp/cc7RWBwi.s 			page 5


 229 0024 00000000 		.word	g_APinDescription
 230              		.size	digitalWrite, .-digitalWrite
 231              		.section	.text.digitalRead,"ax",%progbits
 232              		.align	1
 233              		.p2align 2,,3
 234              		.global	digitalRead
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu softvfp
 239              		.type	digitalRead, %function
 240              	digitalRead:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243 0000 4328     		cmp	r0, #67
 244 0002 12D8     		bhi	.L62
 245 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 246 0008 0949     		ldr	r1, .L69
 247 000a 08B5     		push	{r3, lr}
 248 000c 8300     		lsls	r3, r0, #2
 249 000e CA18     		adds	r2, r1, r3
 250 0010 D068     		ldr	r0, [r2, #12]
 251 0012 00B9     		cbnz	r0, .L68
 252 0014 08BD     		pop	{r3, pc}
 253              	.L68:
 254 0016 C858     		ldr	r0, [r1, r3]
 255 0018 5268     		ldr	r2, [r2, #4]
 256 001a 4FF02051 		mov	r1, #671088640
 257 001e FFF7FEFF 		bl	pio_get
 258 0022 0030     		adds	r0, r0, #0
 259 0024 18BF     		it	ne
 260 0026 0120     		movne	r0, #1
 261 0028 08BD     		pop	{r3, pc}
 262              	.L62:
 263 002a 0020     		movs	r0, #0
 264 002c 7047     		bx	lr
 265              	.L70:
 266 002e 00BF     		.align	2
 267              	.L69:
 268 0030 00000000 		.word	g_APinDescription
 269              		.size	digitalRead, .-digitalRead
 270              		.section	.text.setPullup,"ax",%progbits
 271              		.align	1
 272              		.p2align 2,,3
 273              		.global	setPullup
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu softvfp
 278              		.type	setPullup, %function
 279              	setPullup:
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282              		@ link register save eliminated.
 283 0000 4328     		cmp	r0, #67
 284 0002 08D8     		bhi	.L80
 285 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
ARM GAS  /tmp/cc7RWBwi.s 			page 6


 286 0008 064B     		ldr	r3, .L82
 287 000a 8000     		lsls	r0, r0, #2
 288 000c 10B4     		push	{r4}
 289 000e 1C18     		adds	r4, r3, r0
 290 0010 E268     		ldr	r2, [r4, #12]
 291 0012 0AB9     		cbnz	r2, .L81
 292 0014 10BC     		pop	{r4}
 293              	.L80:
 294 0016 7047     		bx	lr
 295              	.L81:
 296 0018 0A46     		mov	r2, r1
 297 001a 1858     		ldr	r0, [r3, r0]
 298 001c 6168     		ldr	r1, [r4, #4]
 299 001e 10BC     		pop	{r4}
 300 0020 FFF7FEBF 		b	pio_pull_up
 301              	.L83:
 302              		.align	2
 303              	.L82:
 304 0024 00000000 		.word	g_APinDescription
 305              		.size	setPullup, .-setPullup
 306              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 307              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 308              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 309              	_ZL28cpu_irq_prev_interrupt_state:
 310 0000 00       		.space	1
 311              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 312              		.align	2
 313              		.type	_ZL32cpu_irq_critical_section_counter, %object
 314              		.size	_ZL32cpu_irq_critical_section_counter, 4
 315              	_ZL32cpu_irq_critical_section_counter:
 316 0000 00000000 		.space	4
 317              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
