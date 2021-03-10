ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccz8pCmH.s 			page 1


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
  14              		.text
  15              		.section	.text._Z12AnalogInInitv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z12AnalogInInitv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z12AnalogInInitv, %function
  24              	_Z12AnalogInInitv:
  25              		@ args = 0, pretend = 0, frame = 32
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 30B5     		push	{r4, r5, lr}
  28 0002 1748     		ldr	r0, .L10
  29 0004 89B0     		sub	sp, sp, #36
  30 0006 0446     		mov	r4, r0
  31 0008 FFF7FEFF 		bl	afec_enable
  32 000c 1548     		ldr	r0, .L10+4
  33 000e FFF7FEFF 		bl	afec_enable
  34 0012 01A8     		add	r0, sp, #4
  35 0014 FFF7FEFF 		bl	afec_get_config_defaults
  36 0018 00E0     		b	.L3
  37              	.L6:
  38 001a 236A     		ldr	r3, [r4, #32]
  39              	.L3:
  40 001c 1048     		ldr	r0, .L10
  41 001e 01A9     		add	r1, sp, #4
  42 0020 FFF7FEFF 		bl	afec_init
  43 0024 0028     		cmp	r0, #0
  44 0026 F8D1     		bne	.L6
  45 0028 0E4C     		ldr	r4, .L10+4
  46 002a 00E0     		b	.L2
  47              	.L9:
  48 002c 236A     		ldr	r3, [r4, #32]
  49              	.L2:
  50 002e 0D48     		ldr	r0, .L10+4
  51 0030 01A9     		add	r1, sp, #4
  52 0032 FFF7FEFF 		bl	afec_init
  53 0036 0028     		cmp	r0, #0
  54 0038 F8D1     		bne	.L9
  55 003a 094D     		ldr	r5, .L10
  56 003c 0A49     		ldr	r1, .L10+8
  57 003e 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccz8pCmH.s 			page 2


  58 0040 FFF7FEFF 		bl	afec_disable_interrupt
  59 0044 0849     		ldr	r1, .L10+8
  60 0046 0748     		ldr	r0, .L10+4
  61 0048 FFF7FEFF 		bl	afec_disable_interrupt
  62 004c 6B68     		ldr	r3, [r5, #4]
  63 004e 23F08F03 		bic	r3, r3, #143
  64 0052 6B60     		str	r3, [r5, #4]
  65 0054 6368     		ldr	r3, [r4, #4]
  66 0056 23F08F03 		bic	r3, r3, #143
  67 005a 6360     		str	r3, [r4, #4]
  68 005c 09B0     		add	sp, sp, #36
  69              		@ sp needed
  70 005e 30BD     		pop	{r4, r5, pc}
  71              	.L11:
  72              		.align	2
  73              	.L10:
  74 0060 00000B40 		.word	1074462720
  75 0064 00400B40 		.word	1074479104
  76 0068 FFFF00DF 		.word	-553582593
  77              		.size	_Z12AnalogInInitv, .-_Z12AnalogInInitv
  78              		.section	.text._Z21AnalogInEnableChannel19AnalogChannelNumberb,"ax",%progbits
  79              		.align	1
  80              		.p2align 2,,3
  81              		.global	_Z21AnalogInEnableChannel19AnalogChannelNumberb
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu fpv4-sp-d16
  86              		.type	_Z21AnalogInEnableChannel19AnalogChannelNumberb, %function
  87              	_Z21AnalogInEnableChannel19AnalogChannelNumberb:
  88              		@ args = 0, pretend = 0, frame = 8
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90 0000 C3B2     		uxtb	r3, r0
  91 0002 1E2B     		cmp	r3, #30
  92 0004 15D8     		bhi	.L19
  93 0006 F0B5     		push	{r4, r5, r6, r7, lr}
  94 0008 164A     		ldr	r2, .L23
  95 000a 174C     		ldr	r4, .L23+4
  96 000c 174F     		ldr	r7, .L23+8
  97 000e 03F00F05 		and	r5, r3, #15
  98 0012 0123     		movs	r3, #1
  99 0014 03FA05F6 		lsl	r6, r3, r5
 100 0018 0F28     		cmp	r0, #15
 101 001a C8BF     		it	gt
 102 001c 1446     		movgt	r4, r2
 103 001e 83B0     		sub	sp, sp, #12
 104 0020 8340     		lsls	r3, r3, r0
 105 0022 3A68     		ldr	r2, [r7]
 106 0024 31B9     		cbnz	r1, .L22
 107 0026 22EA0303 		bic	r3, r2, r3
 108 002a 3B60     		str	r3, [r7]
 109 002c A661     		str	r6, [r4, #24]
 110              	.L12:
 111 002e 03B0     		add	sp, sp, #12
 112              		@ sp needed
 113 0030 F0BD     		pop	{r4, r5, r6, r7, pc}
 114              	.L19:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccz8pCmH.s 			page 3


 115 0032 7047     		bx	lr
 116              	.L22:
 117 0034 1343     		orrs	r3, r3, r2
 118 0036 01A8     		add	r0, sp, #4
 119 0038 3B60     		str	r3, [r7]
 120 003a FFF7FEFF 		bl	afec_ch_get_config_defaults
 121 003e 01AA     		add	r2, sp, #4
 122 0040 2946     		mov	r1, r5
 123 0042 2046     		mov	r0, r4
 124 0044 FFF7FEFF 		bl	afec_ch_set_config
 125 0048 4FF40063 		mov	r3, #2048
 126 004c 6566     		str	r5, [r4, #100]
 127 004e E366     		str	r3, [r4, #108]
 128 0050 6661     		str	r6, [r4, #20]
 129 0052 E369     		ldr	r3, [r4, #28]
 130 0054 E365     		str	r3, [r4, #92]
 131 0056 6368     		ldr	r3, [r4, #4]
 132 0058 1B06     		lsls	r3, r3, #24
 133 005a E8D4     		bmi	.L12
 134 005c 0823     		movs	r3, #8
 135 005e 2360     		str	r3, [r4]
 136 0060 E5E7     		b	.L12
 137              	.L24:
 138 0062 00BF     		.align	2
 139              	.L23:
 140 0064 00400B40 		.word	1074479104
 141 0068 00000B40 		.word	1074462720
 142 006c 00000000 		.word	.LANCHOR0
 143              		.size	_Z21AnalogInEnableChannel19AnalogChannelNumberb, .-_Z21AnalogInEnableChannel19AnalogChannelN
 144              		.section	.text._Z19AnalogInReadChannel19AnalogChannelNumber,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	_Z19AnalogInReadChannel19AnalogChannelNumber
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	_Z19AnalogInReadChannel19AnalogChannelNumber, %function
 153              	_Z19AnalogInReadChannel19AnalogChannelNumber:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156              		@ link register save eliminated.
 157 0000 C3B2     		uxtb	r3, r0
 158 0002 1E2B     		cmp	r3, #30
 159 0004 0BD8     		bhi	.L28
 160 0006 074A     		ldr	r2, .L30
 161 0008 0749     		ldr	r1, .L30+4
 162 000a 0F28     		cmp	r0, #15
 163 000c CCBF     		ite	gt
 164 000e 1046     		movgt	r0, r2
 165 0010 0846     		movle	r0, r1
 166 0012 03F00F03 		and	r3, r3, #15
 167 0016 4366     		str	r3, [r0, #100]
 168 0018 806E     		ldr	r0, [r0, #104]
 169 001a 80B2     		uxth	r0, r0
 170 001c 7047     		bx	lr
 171              	.L28:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccz8pCmH.s 			page 4


 172 001e 0020     		movs	r0, #0
 173 0020 7047     		bx	lr
 174              	.L31:
 175 0022 00BF     		.align	2
 176              	.L30:
 177 0024 00400B40 		.word	1074479104
 178 0028 00000B40 		.word	1074462720
 179              		.size	_Z19AnalogInReadChannel19AnalogChannelNumber, .-_Z19AnalogInReadChannel19AnalogChannelNumber
 180              		.section	.text._Z23AnalogInStartConversionm,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	_Z23AnalogInStartConversionm
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu fpv4-sp-d16
 188              		.type	_Z23AnalogInStartConversionm, %function
 189              	_Z23AnalogInStartConversionm:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192              		@ link register save eliminated.
 193 0000 0D4B     		ldr	r3, .L45
 194 0002 1B68     		ldr	r3, [r3]
 195 0004 1840     		ands	r0, r0, r3
 196 0006 83B2     		uxth	r3, r0
 197 0008 43B1     		cbz	r3, .L33
 198 000a 0C4A     		ldr	r2, .L45+4
 199 000c 0023     		movs	r3, #0
 200              	.L34:
 201 000e 5366     		str	r3, [r2, #100]
 202 0010 0133     		adds	r3, r3, #1
 203 0012 102B     		cmp	r3, #16
 204 0014 916E     		ldr	r1, [r2, #104]
 205 0016 FAD1     		bne	.L34
 206 0018 0223     		movs	r3, #2
 207 001a 1360     		str	r3, [r2]
 208              	.L33:
 209 001c 084B     		ldr	r3, .L45+8
 210 001e 0340     		ands	r3, r3, r0
 211 0020 43B1     		cbz	r3, .L32
 212 0022 084A     		ldr	r2, .L45+12
 213 0024 0023     		movs	r3, #0
 214              	.L36:
 215 0026 5366     		str	r3, [r2, #100]
 216 0028 0133     		adds	r3, r3, #1
 217 002a 102B     		cmp	r3, #16
 218 002c 916E     		ldr	r1, [r2, #104]
 219 002e FAD1     		bne	.L36
 220 0030 0223     		movs	r3, #2
 221 0032 1360     		str	r3, [r2]
 222              	.L32:
 223 0034 7047     		bx	lr
 224              	.L46:
 225 0036 00BF     		.align	2
 226              	.L45:
 227 0038 00000000 		.word	.LANCHOR0
 228 003c 00000B40 		.word	1074462720
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccz8pCmH.s 			page 5


 229 0040 0000FF7F 		.word	2147418112
 230 0044 00400B40 		.word	1074479104
 231              		.size	_Z23AnalogInStartConversionm, .-_Z23AnalogInStartConversionm
 232              		.section	.text._Z18AnalogInCheckReadym,"ax",%progbits
 233              		.align	1
 234              		.p2align 2,,3
 235              		.global	_Z18AnalogInCheckReadym
 236              		.syntax unified
 237              		.thumb
 238              		.thumb_func
 239              		.fpu fpv4-sp-d16
 240              		.type	_Z18AnalogInCheckReadym, %function
 241              	_Z18AnalogInCheckReadym:
 242              		@ args = 0, pretend = 0, frame = 0
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244              		@ link register save eliminated.
 245 0000 094B     		ldr	r3, .L51
 246 0002 0A4A     		ldr	r2, .L51+4
 247 0004 1B68     		ldr	r3, [r3]
 248 0006 126B     		ldr	r2, [r2, #48]
 249 0008 1840     		ands	r0, r0, r3
 250 000a 83B2     		uxth	r3, r0
 251 000c 9343     		bics	r3, r3, r2
 252 000e 01D0     		beq	.L50
 253 0010 0020     		movs	r0, #0
 254 0012 7047     		bx	lr
 255              	.L50:
 256 0014 064B     		ldr	r3, .L51+8
 257 0016 1B6B     		ldr	r3, [r3, #48]
 258 0018 C0F30E40 		ubfx	r0, r0, #16, #15
 259 001c 30EA0303 		bics	r3, r0, r3
 260 0020 0CBF     		ite	eq
 261 0022 0120     		moveq	r0, #1
 262 0024 0020     		movne	r0, #0
 263 0026 7047     		bx	lr
 264              	.L52:
 265              		.align	2
 266              	.L51:
 267 0028 00000000 		.word	.LANCHOR0
 268 002c 00000B40 		.word	1074462720
 269 0030 00400B40 		.word	1074479104
 270              		.size	_Z18AnalogInCheckReadym, .-_Z18AnalogInCheckReadym
 271              		.section	.text._Z15PinToAdcChannelm,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	_Z15PinToAdcChannelm
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv4-sp-d16
 279              		.type	_Z15PinToAdcChannelm, %function
 280              	_Z15PinToAdcChannelm:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283              		@ link register save eliminated.
 284 0000 6928     		cmp	r0, #105
 285 0002 07D8     		bhi	.L55
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccz8pCmH.s 			page 6


 286 0004 054B     		ldr	r3, .L56
 287 0006 C0EBC000 		rsb	r0, r0, r0, lsl #3
 288 000a 03EB8000 		add	r0, r3, r0, lsl #2
 289 000e 90F91800 		ldrsb	r0, [r0, #24]
 290 0012 7047     		bx	lr
 291              	.L55:
 292 0014 4FF0FF30 		mov	r0, #-1
 293 0018 7047     		bx	lr
 294              	.L57:
 295 001a 00BF     		.align	2
 296              	.L56:
 297 001c 00000000 		.word	g_APinDescription
 298              		.size	_Z15PinToAdcChannelm, .-_Z15PinToAdcChannelm
 299              		.section	.text._Z24GetTemperatureAdcChannelv,"ax",%progbits
 300              		.align	1
 301              		.p2align 2,,3
 302              		.global	_Z24GetTemperatureAdcChannelv
 303              		.syntax unified
 304              		.thumb
 305              		.thumb_func
 306              		.fpu fpv4-sp-d16
 307              		.type	_Z24GetTemperatureAdcChannelv, %function
 308              	_Z24GetTemperatureAdcChannelv:
 309              		@ args = 0, pretend = 0, frame = 0
 310              		@ frame_needed = 0, uses_anonymous_args = 0
 311              		@ link register save eliminated.
 312 0000 0F20     		movs	r0, #15
 313 0002 7047     		bx	lr
 314              		.size	_Z24GetTemperatureAdcChannelv, .-_Z24GetTemperatureAdcChannelv
 315              		.section	.bss._ZL14activeChannels,"aw",%nobits
 316              		.align	2
 317              		.set	.LANCHOR0,. + 0
 318              		.type	_ZL14activeChannels, %object
 319              		.size	_ZL14activeChannels, 4
 320              	_ZL14activeChannels:
 321 0000 00000000 		.space	4
 322              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 323              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 324              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 325              	_ZL28cpu_irq_prev_interrupt_state:
 326 0000 00       		.space	1
 327              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 328              		.align	2
 329              		.type	_ZL32cpu_irq_critical_section_counter, %object
 330              		.size	_ZL32cpu_irq_critical_section_counter, 4
 331              	_ZL32cpu_irq_critical_section_counter:
 332 0000 00000000 		.space	4
 333              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
