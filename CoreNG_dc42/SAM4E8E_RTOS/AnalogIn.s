ARM GAS  /tmp/ccj5923m.s 			page 1


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
  13              		.file	"AnalogIn.cpp"
  14              		.section	.text._Z12AnalogInInitv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z12AnalogInInitv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z12AnalogInInitv, %function
  23              	_Z12AnalogInInitv:
  24              		@ args = 0, pretend = 0, frame = 32
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 30B5     		push	{r4, r5, lr}
  27 0002 1748     		ldr	r0, .L10
  28 0004 89B0     		sub	sp, sp, #36
  29 0006 0446     		mov	r4, r0
  30 0008 FFF7FEFF 		bl	afec_enable
  31 000c 1548     		ldr	r0, .L10+4
  32 000e FFF7FEFF 		bl	afec_enable
  33 0012 01A8     		add	r0, sp, #4
  34 0014 FFF7FEFF 		bl	afec_get_config_defaults
  35 0018 00E0     		b	.L3
  36              	.L6:
  37 001a 236A     		ldr	r3, [r4, #32]
  38              	.L3:
  39 001c 1048     		ldr	r0, .L10
  40 001e 01A9     		add	r1, sp, #4
  41 0020 FFF7FEFF 		bl	afec_init
  42 0024 0028     		cmp	r0, #0
  43 0026 F8D1     		bne	.L6
  44 0028 0E4C     		ldr	r4, .L10+4
  45 002a 00E0     		b	.L2
  46              	.L9:
  47 002c 236A     		ldr	r3, [r4, #32]
  48              	.L2:
  49 002e 0D48     		ldr	r0, .L10+4
  50 0030 01A9     		add	r1, sp, #4
  51 0032 FFF7FEFF 		bl	afec_init
  52 0036 0028     		cmp	r0, #0
  53 0038 F8D1     		bne	.L9
  54 003a 094D     		ldr	r5, .L10
  55 003c 0A49     		ldr	r1, .L10+8
  56 003e 2846     		mov	r0, r5
  57 0040 FFF7FEFF 		bl	afec_disable_interrupt
ARM GAS  /tmp/ccj5923m.s 			page 2


  58 0044 0849     		ldr	r1, .L10+8
  59 0046 0748     		ldr	r0, .L10+4
  60 0048 FFF7FEFF 		bl	afec_disable_interrupt
  61 004c 6B68     		ldr	r3, [r5, #4]
  62 004e 23F08F03 		bic	r3, r3, #143
  63 0052 6B60     		str	r3, [r5, #4]
  64 0054 6368     		ldr	r3, [r4, #4]
  65 0056 23F08F03 		bic	r3, r3, #143
  66 005a 6360     		str	r3, [r4, #4]
  67 005c 09B0     		add	sp, sp, #36
  68              		@ sp needed
  69 005e 30BD     		pop	{r4, r5, pc}
  70              	.L11:
  71              		.align	2
  72              	.L10:
  73 0060 00000B40 		.word	1074462720
  74 0064 00400B40 		.word	1074479104
  75 0068 FFFF00DF 		.word	-553582593
  76              		.size	_Z12AnalogInInitv, .-_Z12AnalogInInitv
  77              		.section	.text._Z21AnalogInEnableChannel19AnalogChannelNumberb,"ax",%progbits
  78              		.align	1
  79              		.p2align 2,,3
  80              		.global	_Z21AnalogInEnableChannel19AnalogChannelNumberb
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	_Z21AnalogInEnableChannel19AnalogChannelNumberb, %function
  86              	_Z21AnalogInEnableChannel19AnalogChannelNumberb:
  87              		@ args = 0, pretend = 0, frame = 8
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89 0000 C3B2     		uxtb	r3, r0
  90 0002 1E2B     		cmp	r3, #30
  91 0004 15D8     		bhi	.L19
  92 0006 70B5     		push	{r4, r5, r6, lr}
  93 0008 194A     		ldr	r2, .L23
  94 000a 1A4D     		ldr	r5, .L23+4
  95 000c 82B0     		sub	sp, sp, #8
  96 000e 03F00F04 		and	r4, r3, #15
  97 0012 0F28     		cmp	r0, #15
  98 0014 D8BF     		it	le
  99 0016 1546     		movle	r5, r2
 100 0018 61B9     		cbnz	r1, .L22
 101 001a 1749     		ldr	r1, .L23+8
 102 001c 0123     		movs	r3, #1
 103 001e 0A68     		ldr	r2, [r1]
 104 0020 03FA00F0 		lsl	r0, r3, r0
 105 0024 22EA0000 		bic	r0, r2, r0
 106 0028 A340     		lsls	r3, r3, r4
 107 002a 0860     		str	r0, [r1]
 108 002c AB61     		str	r3, [r5, #24]
 109              	.L12:
 110 002e 02B0     		add	sp, sp, #8
 111              		@ sp needed
 112 0030 70BD     		pop	{r4, r5, r6, pc}
 113              	.L19:
 114 0032 7047     		bx	lr
ARM GAS  /tmp/ccj5923m.s 			page 3


 115              	.L22:
 116 0034 104A     		ldr	r2, .L23+8
 117 0036 0126     		movs	r6, #1
 118 0038 1168     		ldr	r1, [r2]
 119 003a 06FA00F3 		lsl	r3, r6, r0
 120 003e 0B43     		orrs	r3, r3, r1
 121 0040 01A8     		add	r0, sp, #4
 122 0042 1360     		str	r3, [r2]
 123 0044 FFF7FEFF 		bl	afec_ch_get_config_defaults
 124 0048 01AA     		add	r2, sp, #4
 125 004a 2146     		mov	r1, r4
 126 004c 2846     		mov	r0, r5
 127 004e FFF7FEFF 		bl	afec_ch_set_config
 128 0052 A640     		lsls	r6, r6, r4
 129 0054 4FF40063 		mov	r3, #2048
 130 0058 6C66     		str	r4, [r5, #100]
 131 005a EB66     		str	r3, [r5, #108]
 132 005c 6E61     		str	r6, [r5, #20]
 133 005e EB69     		ldr	r3, [r5, #28]
 134 0060 EB65     		str	r3, [r5, #92]
 135 0062 6B68     		ldr	r3, [r5, #4]
 136 0064 1B06     		lsls	r3, r3, #24
 137 0066 E2D4     		bmi	.L12
 138 0068 0823     		movs	r3, #8
 139 006a 2B60     		str	r3, [r5]
 140 006c 02B0     		add	sp, sp, #8
 141              		@ sp needed
 142 006e 70BD     		pop	{r4, r5, r6, pc}
 143              	.L24:
 144              		.align	2
 145              	.L23:
 146 0070 00000B40 		.word	1074462720
 147 0074 00400B40 		.word	1074479104
 148 0078 00000000 		.word	.LANCHOR0
 149              		.size	_Z21AnalogInEnableChannel19AnalogChannelNumberb, .-_Z21AnalogInEnableChannel19AnalogChannelN
 150              		.section	.text._Z19AnalogInReadChannel19AnalogChannelNumber,"ax",%progbits
 151              		.align	1
 152              		.p2align 2,,3
 153              		.global	_Z19AnalogInReadChannel19AnalogChannelNumber
 154              		.syntax unified
 155              		.thumb
 156              		.thumb_func
 157              		.fpu fpv4-sp-d16
 158              		.type	_Z19AnalogInReadChannel19AnalogChannelNumber, %function
 159              	_Z19AnalogInReadChannel19AnalogChannelNumber:
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162              		@ link register save eliminated.
 163 0000 C3B2     		uxtb	r3, r0
 164 0002 1E2B     		cmp	r3, #30
 165 0004 0BD8     		bhi	.L28
 166 0006 074A     		ldr	r2, .L30
 167 0008 0749     		ldr	r1, .L30+4
 168 000a 0F28     		cmp	r0, #15
 169 000c CCBF     		ite	gt
 170 000e 1046     		movgt	r0, r2
 171 0010 0846     		movle	r0, r1
ARM GAS  /tmp/ccj5923m.s 			page 4


 172 0012 03F00F03 		and	r3, r3, #15
 173 0016 4366     		str	r3, [r0, #100]
 174 0018 806E     		ldr	r0, [r0, #104]
 175 001a 80B2     		uxth	r0, r0
 176 001c 7047     		bx	lr
 177              	.L28:
 178 001e 0020     		movs	r0, #0
 179 0020 7047     		bx	lr
 180              	.L31:
 181 0022 00BF     		.align	2
 182              	.L30:
 183 0024 00400B40 		.word	1074479104
 184 0028 00000B40 		.word	1074462720
 185              		.size	_Z19AnalogInReadChannel19AnalogChannelNumber, .-_Z19AnalogInReadChannel19AnalogChannelNumber
 186              		.section	.text._Z23AnalogInStartConversionm,"ax",%progbits
 187              		.align	1
 188              		.p2align 2,,3
 189              		.global	_Z23AnalogInStartConversionm
 190              		.syntax unified
 191              		.thumb
 192              		.thumb_func
 193              		.fpu fpv4-sp-d16
 194              		.type	_Z23AnalogInStartConversionm, %function
 195              	_Z23AnalogInStartConversionm:
 196              		@ args = 0, pretend = 0, frame = 0
 197              		@ frame_needed = 0, uses_anonymous_args = 0
 198              		@ link register save eliminated.
 199 0000 0D4B     		ldr	r3, .L45
 200 0002 1B68     		ldr	r3, [r3]
 201 0004 1840     		ands	r0, r0, r3
 202 0006 83B2     		uxth	r3, r0
 203 0008 43B1     		cbz	r3, .L33
 204 000a 0C4A     		ldr	r2, .L45+4
 205 000c 0023     		movs	r3, #0
 206              	.L34:
 207 000e 5366     		str	r3, [r2, #100]
 208 0010 0133     		adds	r3, r3, #1
 209 0012 102B     		cmp	r3, #16
 210 0014 916E     		ldr	r1, [r2, #104]
 211 0016 FAD1     		bne	.L34
 212 0018 0223     		movs	r3, #2
 213 001a 1360     		str	r3, [r2]
 214              	.L33:
 215 001c 084B     		ldr	r3, .L45+8
 216 001e 0340     		ands	r3, r3, r0
 217 0020 43B1     		cbz	r3, .L32
 218 0022 084A     		ldr	r2, .L45+12
 219 0024 0023     		movs	r3, #0
 220              	.L36:
 221 0026 5366     		str	r3, [r2, #100]
 222 0028 0133     		adds	r3, r3, #1
 223 002a 102B     		cmp	r3, #16
 224 002c 916E     		ldr	r1, [r2, #104]
 225 002e FAD1     		bne	.L36
 226 0030 0223     		movs	r3, #2
 227 0032 1360     		str	r3, [r2]
 228              	.L32:
ARM GAS  /tmp/ccj5923m.s 			page 5


 229 0034 7047     		bx	lr
 230              	.L46:
 231 0036 00BF     		.align	2
 232              	.L45:
 233 0038 00000000 		.word	.LANCHOR0
 234 003c 00000B40 		.word	1074462720
 235 0040 0000FF7F 		.word	2147418112
 236 0044 00400B40 		.word	1074479104
 237              		.size	_Z23AnalogInStartConversionm, .-_Z23AnalogInStartConversionm
 238              		.section	.text._Z18AnalogInCheckReadym,"ax",%progbits
 239              		.align	1
 240              		.p2align 2,,3
 241              		.global	_Z18AnalogInCheckReadym
 242              		.syntax unified
 243              		.thumb
 244              		.thumb_func
 245              		.fpu fpv4-sp-d16
 246              		.type	_Z18AnalogInCheckReadym, %function
 247              	_Z18AnalogInCheckReadym:
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              		@ link register save eliminated.
 251 0000 094B     		ldr	r3, .L51
 252 0002 0A4A     		ldr	r2, .L51+4
 253 0004 1B68     		ldr	r3, [r3]
 254 0006 126B     		ldr	r2, [r2, #48]
 255 0008 1840     		ands	r0, r0, r3
 256 000a 83B2     		uxth	r3, r0
 257 000c 9343     		bics	r3, r3, r2
 258 000e 01D0     		beq	.L50
 259 0010 0020     		movs	r0, #0
 260 0012 7047     		bx	lr
 261              	.L50:
 262 0014 064B     		ldr	r3, .L51+8
 263 0016 1B6B     		ldr	r3, [r3, #48]
 264 0018 C0F30E40 		ubfx	r0, r0, #16, #15
 265 001c 30EA0303 		bics	r3, r0, r3
 266 0020 0CBF     		ite	eq
 267 0022 0120     		moveq	r0, #1
 268 0024 0020     		movne	r0, #0
 269 0026 7047     		bx	lr
 270              	.L52:
 271              		.align	2
 272              	.L51:
 273 0028 00000000 		.word	.LANCHOR0
 274 002c 00000B40 		.word	1074462720
 275 0030 00400B40 		.word	1074479104
 276              		.size	_Z18AnalogInCheckReadym, .-_Z18AnalogInCheckReadym
 277              		.section	.text._Z15PinToAdcChannelm,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	_Z15PinToAdcChannelm
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv4-sp-d16
 285              		.type	_Z15PinToAdcChannelm, %function
ARM GAS  /tmp/ccj5923m.s 			page 6


 286              	_Z15PinToAdcChannelm:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289              		@ link register save eliminated.
 290 0000 6928     		cmp	r0, #105
 291 0002 07D8     		bhi	.L55
 292 0004 054B     		ldr	r3, .L56
 293 0006 C0EBC000 		rsb	r0, r0, r0, lsl #3
 294 000a 03EB8000 		add	r0, r3, r0, lsl #2
 295 000e 90F91800 		ldrsb	r0, [r0, #24]
 296 0012 7047     		bx	lr
 297              	.L55:
 298 0014 4FF0FF30 		mov	r0, #-1
 299 0018 7047     		bx	lr
 300              	.L57:
 301 001a 00BF     		.align	2
 302              	.L56:
 303 001c 00000000 		.word	g_APinDescription
 304              		.size	_Z15PinToAdcChannelm, .-_Z15PinToAdcChannelm
 305              		.section	.text._Z24GetTemperatureAdcChannelv,"ax",%progbits
 306              		.align	1
 307              		.p2align 2,,3
 308              		.global	_Z24GetTemperatureAdcChannelv
 309              		.syntax unified
 310              		.thumb
 311              		.thumb_func
 312              		.fpu fpv4-sp-d16
 313              		.type	_Z24GetTemperatureAdcChannelv, %function
 314              	_Z24GetTemperatureAdcChannelv:
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 318 0000 0F20     		movs	r0, #15
 319 0002 7047     		bx	lr
 320              		.size	_Z24GetTemperatureAdcChannelv, .-_Z24GetTemperatureAdcChannelv
 321              		.section	.bss._ZL14activeChannels,"aw",%nobits
 322              		.align	2
 323              		.set	.LANCHOR0,. + 0
 324              		.type	_ZL14activeChannels, %object
 325              		.size	_ZL14activeChannels, 4
 326              	_ZL14activeChannels:
 327 0000 00000000 		.space	4
 328              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 329              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 330              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 331              	_ZL28cpu_irq_prev_interrupt_state:
 332 0000 00       		.space	1
 333              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 334              		.align	2
 335              		.type	_ZL32cpu_irq_critical_section_counter, %object
 336              		.size	_ZL32cpu_irq_critical_section_counter, 4
 337              	_ZL32cpu_irq_critical_section_counter:
 338 0000 00000000 		.space	4
 339              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
