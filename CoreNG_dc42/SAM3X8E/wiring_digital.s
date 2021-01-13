ARM GAS  /tmp/ccGfedrX.s 			page 1


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
  24 0000 6D28     		cmp	r0, #109
  25 0002 14D8     		bhi	.L30
  26 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  27 0008 C400     		lsls	r4, r0, #3
  28 000a 484D     		ldr	r5, .L42
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
  39 0021 2C       		.byte	(.L7-.L6)/2
  40 0022 05       		.byte	(.L1-.L6)/2
  41 0023 3D       		.byte	(.L8-.L6)/2
  42 0024 50       		.byte	(.L9-.L6)/2
  43 0025 59       		.byte	(.L10-.L6)/2
  44 0026 63       		.byte	(.L11-.L6)/2
  45 0027 6A       		.byte	(.L12-.L6)/2
  46 0028 08       		.byte	(.L13-.L6)/2
  47 0029 00       		.p2align 1
  48              	.L1:
  49 002a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  50              	.L30:
  51 002e 7047     		bx	lr
  52              	.L13:
  53 0030 241A     		subs	r4, r4, r0
  54 0032 05EB8405 		add	r5, r5, r4, lsl #2
  55 0036 6B69     		ldr	r3, [r5, #20]
  56 0038 13F0180F 		tst	r3, #24
  57 003c F5D0     		beq	.L1
ARM GAS  /tmp/ccGfedrX.s 			page 2


  58 003e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  59 0042 0022     		movs	r2, #0
  60 0044 4FF07E51 		mov	r1, #1065353216
  61 0048 FFF7FEBF 		b	_Z9AnalogOuthft
  62              	.L5:
  63 004c 201A     		subs	r0, r4, r0
  64 004e 8400     		lsls	r4, r0, #2
  65 0050 2F19     		adds	r7, r5, r4
  66 0052 B868     		ldr	r0, [r7, #8]
  67 0054 FFF7FEFF 		bl	pmc_enable_periph_clk
  68 0058 2859     		ldr	r0, [r5, r4]
  69 005a 0022     		movs	r2, #0
  70 005c 7968     		ldr	r1, [r7, #4]
  71 005e FFF7FEFF 		bl	pio_pull_up
  72 0062 7A68     		ldr	r2, [r7, #4]
  73 0064 2859     		ldr	r0, [r5, r4]
  74 0066 002E     		cmp	r6, #0
  75 0068 51D1     		bne	.L40
  76 006a 3346     		mov	r3, r6
  77 006c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  78 0070 4FF02051 		mov	r1, #671088640
  79 0074 FFF7FEBF 		b	pio_configure
  80              	.L7:
  81 0078 201A     		subs	r0, r4, r0
  82 007a 8400     		lsls	r4, r0, #2
  83 007c 2F19     		adds	r7, r5, r4
  84 007e B868     		ldr	r0, [r7, #8]
  85 0080 FFF7FEFF 		bl	pmc_enable_periph_clk
  86 0084 7A68     		ldr	r2, [r7, #4]
  87 0086 2859     		ldr	r0, [r5, r4]
  88 0088 002E     		cmp	r6, #0
  89 008a 4CD1     		bne	.L41
  90 008c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  91 0090 0123     		movs	r3, #1
  92 0092 4FF02051 		mov	r1, #671088640
  93 0096 FFF7FEBF 		b	pio_configure
  94              	.L8:
  95 009a 4FF04051 		mov	r1, #805306368
  96 009e 201A     		subs	r0, r4, r0
  97 00a0 8400     		lsls	r4, r0, #2
  98 00a2 2E19     		adds	r6, r5, r4
  99 00a4 3369     		ldr	r3, [r6, #16]
 100 00a6 7268     		ldr	r2, [r6, #4]
 101 00a8 2859     		ldr	r0, [r5, r4]
 102              	.L36:
 103 00aa FFF7FEFF 		bl	pio_configure
 104 00ae 2B59     		ldr	r3, [r5, r4]
 105 00b0 9B69     		ldr	r3, [r3, #24]
 106 00b2 0133     		adds	r3, r3, #1
 107 00b4 B9D1     		bne	.L1
 108 00b6 B068     		ldr	r0, [r6, #8]
 109 00b8 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 110 00bc FFF7FEBF 		b	pmc_disable_periph_clk
 111              	.L9:
 112 00c0 201A     		subs	r0, r4, r0
 113 00c2 8400     		lsls	r4, r0, #2
 114 00c4 2E19     		adds	r6, r5, r4
ARM GAS  /tmp/ccGfedrX.s 			page 3


 115 00c6 3369     		ldr	r3, [r6, #16]
 116 00c8 7268     		ldr	r2, [r6, #4]
 117 00ca 2859     		ldr	r0, [r5, r4]
 118 00cc 4FF06051 		mov	r1, #939524096
 119 00d0 EBE7     		b	.L36
 120              	.L10:
 121 00d2 201A     		subs	r0, r4, r0
 122 00d4 8000     		lsls	r0, r0, #2
 123 00d6 2B18     		adds	r3, r5, r0
 124 00d8 5968     		ldr	r1, [r3, #4]
 125 00da 2858     		ldr	r0, [r5, r0]
 126 00dc 0022     		movs	r2, #0
 127 00de BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 128 00e2 FFF7FEBF 		b	pio_pull_up
 129              	.L11:
 130 00e6 201A     		subs	r0, r4, r0
 131 00e8 05EB8000 		add	r0, r5, r0, lsl #2
 132 00ec BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 133 00f0 FFF7FEBF 		b	_Z12ConfigurePinRK14PinDescription
 134              	.L12:
 135 00f4 241A     		subs	r4, r4, r0
 136 00f6 05EB8405 		add	r5, r5, r4, lsl #2
 137 00fa 6B69     		ldr	r3, [r5, #20]
 138 00fc 13F0180F 		tst	r3, #24
 139 0100 93D0     		beq	.L1
 140 0102 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 141 0106 0022     		movs	r2, #0
 142 0108 0021     		movs	r1, #0
 143 010a FFF7FEBF 		b	_Z9AnalogOuthft
 144              	.L40:
 145 010e 0823     		movs	r3, #8
 146              	.L34:
 147 0110 4FF02051 		mov	r1, #671088640
 148 0114 FFF7FEFF 		bl	pio_configure
 149 0118 3246     		mov	r2, r6
 150 011a 7968     		ldr	r1, [r7, #4]
 151 011c 2859     		ldr	r0, [r5, r4]
 152 011e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 153 0122 FFF7FEBF 		b	pio_set_debounce_filter
 154              	.L41:
 155 0126 0923     		movs	r3, #9
 156 0128 F2E7     		b	.L34
 157              	.L43:
 158 012a 00BF     		.align	2
 159              	.L42:
 160 012c 00000000 		.word	g_APinDescription
 161              		.size	pinModeDuet, .-pinModeDuet
 162              		.section	.text.digitalWrite,"ax",%progbits
 163              		.align	1
 164              		.p2align 2,,3
 165              		.global	digitalWrite
 166              		.syntax unified
 167              		.thumb
 168              		.thumb_func
 169              		.fpu softvfp
 170              		.type	digitalWrite, %function
 171              	digitalWrite:
ARM GAS  /tmp/ccGfedrX.s 			page 4


 172              		@ args = 0, pretend = 0, frame = 0
 173              		@ frame_needed = 0, uses_anonymous_args = 0
 174              		@ link register save eliminated.
 175 0000 6D28     		cmp	r0, #109
 176 0002 0CD8     		bhi	.L54
 177 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 178 0008 064A     		ldr	r2, .L56
 179 000a 8000     		lsls	r0, r0, #2
 180 000c 1318     		adds	r3, r2, r0
 181 000e 10B4     		push	{r4}
 182 0010 DC68     		ldr	r4, [r3, #12]
 183 0012 1CB1     		cbz	r4, .L44
 184 0014 1258     		ldr	r2, [r2, r0]
 185 0016 5B68     		ldr	r3, [r3, #4]
 186 0018 11B9     		cbnz	r1, .L55
 187 001a 5363     		str	r3, [r2, #52]
 188              	.L44:
 189 001c 10BC     		pop	{r4}
 190              	.L54:
 191 001e 7047     		bx	lr
 192              	.L55:
 193 0020 1363     		str	r3, [r2, #48]
 194 0022 FBE7     		b	.L44
 195              	.L57:
 196              		.align	2
 197              	.L56:
 198 0024 00000000 		.word	g_APinDescription
 199              		.size	digitalWrite, .-digitalWrite
 200              		.section	.text.digitalRead,"ax",%progbits
 201              		.align	1
 202              		.p2align 2,,3
 203              		.global	digitalRead
 204              		.syntax unified
 205              		.thumb
 206              		.thumb_func
 207              		.fpu softvfp
 208              		.type	digitalRead, %function
 209              	digitalRead:
 210              		@ args = 0, pretend = 0, frame = 0
 211              		@ frame_needed = 0, uses_anonymous_args = 0
 212 0000 6D28     		cmp	r0, #109
 213 0002 12D8     		bhi	.L60
 214 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 215 0008 0949     		ldr	r1, .L67
 216 000a 08B5     		push	{r3, lr}
 217 000c 8300     		lsls	r3, r0, #2
 218 000e CA18     		adds	r2, r1, r3
 219 0010 D068     		ldr	r0, [r2, #12]
 220 0012 00B9     		cbnz	r0, .L66
 221 0014 08BD     		pop	{r3, pc}
 222              	.L66:
 223 0016 C858     		ldr	r0, [r1, r3]
 224 0018 5268     		ldr	r2, [r2, #4]
 225 001a 4FF02051 		mov	r1, #671088640
 226 001e FFF7FEFF 		bl	pio_get
 227 0022 0030     		adds	r0, r0, #0
 228 0024 18BF     		it	ne
ARM GAS  /tmp/ccGfedrX.s 			page 5


 229 0026 0120     		movne	r0, #1
 230 0028 08BD     		pop	{r3, pc}
 231              	.L60:
 232 002a 0020     		movs	r0, #0
 233 002c 7047     		bx	lr
 234              	.L68:
 235 002e 00BF     		.align	2
 236              	.L67:
 237 0030 00000000 		.word	g_APinDescription
 238              		.size	digitalRead, .-digitalRead
 239              		.section	.text.setPullup,"ax",%progbits
 240              		.align	1
 241              		.p2align 2,,3
 242              		.global	setPullup
 243              		.syntax unified
 244              		.thumb
 245              		.thumb_func
 246              		.fpu softvfp
 247              		.type	setPullup, %function
 248              	setPullup:
 249              		@ args = 0, pretend = 0, frame = 0
 250              		@ frame_needed = 0, uses_anonymous_args = 0
 251              		@ link register save eliminated.
 252 0000 6D28     		cmp	r0, #109
 253 0002 08D8     		bhi	.L78
 254 0004 C0EBC000 		rsb	r0, r0, r0, lsl #3
 255 0008 064B     		ldr	r3, .L80
 256 000a 8000     		lsls	r0, r0, #2
 257 000c 10B4     		push	{r4}
 258 000e 1C18     		adds	r4, r3, r0
 259 0010 E268     		ldr	r2, [r4, #12]
 260 0012 0AB9     		cbnz	r2, .L79
 261 0014 10BC     		pop	{r4}
 262              	.L78:
 263 0016 7047     		bx	lr
 264              	.L79:
 265 0018 0A46     		mov	r2, r1
 266 001a 1858     		ldr	r0, [r3, r0]
 267 001c 6168     		ldr	r1, [r4, #4]
 268 001e 10BC     		pop	{r4}
 269 0020 FFF7FEBF 		b	pio_pull_up
 270              	.L81:
 271              		.align	2
 272              	.L80:
 273 0024 00000000 		.word	g_APinDescription
 274              		.size	setPullup, .-setPullup
 275              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 276              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 277              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 278              	_ZL28cpu_irq_prev_interrupt_state:
 279 0000 00       		.space	1
 280              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 281              		.align	2
 282              		.type	_ZL32cpu_irq_critical_section_counter, %object
 283              		.size	_ZL32cpu_irq_critical_section_counter, 4
 284              	_ZL32cpu_irq_critical_section_counter:
 285 0000 00000000 		.space	4
ARM GAS  /tmp/ccGfedrX.s 			page 6


 286              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
