ARM GAS  /tmp/ccfP9R7G.s 			page 1


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
  11              		.file	"AnalogIn.cpp"
  12              		.section	.text._Z12AnalogInInitv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_Z12AnalogInInitv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_Z12AnalogInInitv, %function
  21              	_Z12AnalogInInitv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 2520     		movs	r0, #37
  26 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
  27 0008 0F4C     		ldr	r4, .L3
  28 000a 104B     		ldr	r3, .L3+4
  29 000c 2046     		mov	r0, r4
  30 000e 1968     		ldr	r1, [r3]
  31 0010 0F4A     		ldr	r2, .L3+8
  32 0012 4FF44023 		mov	r3, #786432
  33 0016 FFF7FEFF 		bl	adc_init
  34 001a 2046     		mov	r0, r4
  35 001c 0123     		movs	r3, #1
  36 001e 4FF44012 		mov	r2, #3145728
  37 0022 0321     		movs	r1, #3
  38 0024 FFF7FEFF 		bl	adc_configure_timing
  39 0028 0022     		movs	r2, #0
  40 002a 2046     		mov	r0, r4
  41 002c 1146     		mov	r1, r2
  42 002e FFF7FEFF 		bl	adc_configure_trigger
  43 0032 2046     		mov	r0, r4
  44 0034 4FF0FF31 		mov	r1, #-1
  45 0038 FFF7FEFF 		bl	adc_disable_interrupt
  46 003c 2046     		mov	r0, r4
  47 003e BDE81040 		pop	{r4, lr}
  48 0042 FFF7FEBF 		b	adc_disable_all_channel
  49              	.L4:
  50 0046 00BF     		.align	2
  51              	.L3:
  52 0048 00000C40 		.word	1074528256
  53 004c 00000000 		.word	SystemCoreClock
  54 0050 80841E00 		.word	2000000
  55              		.size	_Z12AnalogInInitv, .-_Z12AnalogInInitv
  56              		.section	.text._Z21AnalogInEnableChannel19AnalogChannelNumberb,"ax",%progbits
  57              		.align	1
ARM GAS  /tmp/ccfP9R7G.s 			page 2


  58              		.p2align 2,,3
  59              		.global	_Z21AnalogInEnableChannel19AnalogChannelNumberb
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu softvfp
  64              		.type	_Z21AnalogInEnableChannel19AnalogChannelNumberb, %function
  65              	_Z21AnalogInEnableChannel19AnalogChannelNumberb:
  66              		@ args = 0, pretend = 0, frame = 0
  67              		@ frame_needed = 0, uses_anonymous_args = 0
  68 0000 0F28     		cmp	r0, #15
  69 0002 21D8     		bhi	.L11
  70 0004 38B5     		push	{r3, r4, r5, lr}
  71 0006 0446     		mov	r4, r0
  72 0008 0123     		movs	r3, #1
  73 000a 69B9     		cbnz	r1, .L15
  74 000c 114D     		ldr	r5, .L17
  75 000e 03FA00F2 		lsl	r2, r3, r0
  76 0012 2B68     		ldr	r3, [r5]
  77 0014 C1B2     		uxtb	r1, r0
  78 0016 23EA0203 		bic	r3, r3, r2
  79 001a 0F48     		ldr	r0, .L17+4
  80 001c 2B60     		str	r3, [r5]
  81 001e FFF7FEFF 		bl	adc_disable_channel
  82 0022 0F2C     		cmp	r4, #15
  83 0024 11D0     		beq	.L16
  84              	.L5:
  85 0026 38BD     		pop	{r3, r4, r5, pc}
  86              	.L15:
  87 0028 0A4A     		ldr	r2, .L17
  88 002a 8340     		lsls	r3, r3, r0
  89 002c 1068     		ldr	r0, [r2]
  90 002e E1B2     		uxtb	r1, r4
  91 0030 0343     		orrs	r3, r3, r0
  92 0032 0948     		ldr	r0, .L17+4
  93 0034 1360     		str	r3, [r2]
  94 0036 FFF7FEFF 		bl	adc_enable_channel
  95 003a 0F2C     		cmp	r4, #15
  96 003c F3D1     		bne	.L5
  97 003e BDE83840 		pop	{r3, r4, r5, lr}
  98 0042 0548     		ldr	r0, .L17+4
  99 0044 FFF7FEBF 		b	adc_enable_ts
 100              	.L11:
 101 0048 7047     		bx	lr
 102              	.L16:
 103 004a 0348     		ldr	r0, .L17+4
 104 004c BDE83840 		pop	{r3, r4, r5, lr}
 105 0050 FFF7FEBF 		b	adc_disable_ts
 106              	.L18:
 107              		.align	2
 108              	.L17:
 109 0054 00000000 		.word	.LANCHOR0
 110 0058 00000C40 		.word	1074528256
 111              		.size	_Z21AnalogInEnableChannel19AnalogChannelNumberb, .-_Z21AnalogInEnableChannel19AnalogChannelN
 112              		.section	.text._Z19AnalogInReadChannel19AnalogChannelNumber,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  /tmp/ccfP9R7G.s 			page 3


 115              		.global	_Z19AnalogInReadChannel19AnalogChannelNumber
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu softvfp
 120              		.type	_Z19AnalogInReadChannel19AnalogChannelNumber, %function
 121              	_Z19AnalogInReadChannel19AnalogChannelNumber:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124              		@ link register save eliminated.
 125 0000 0F28     		cmp	r0, #15
 126 0002 8FBF     		iteee	hi
 127 0004 0020     		movhi	r0, #0
 128 0006 034B     		ldrls	r3, .L22
 129 0008 C0B2     		uxtbls	r0, r0
 130 000a 53F82000 		ldrls	r0, [r3, r0, lsl #2]
 131 000e 80B2     		uxth	r0, r0
 132 0010 7047     		bx	lr
 133              	.L23:
 134 0012 00BF     		.align	2
 135              	.L22:
 136 0014 50000C40 		.word	1074528336
 137              		.size	_Z19AnalogInReadChannel19AnalogChannelNumber, .-_Z19AnalogInReadChannel19AnalogChannelNumber
 138              		.section	.text._Z23AnalogInStartConversionm,"ax",%progbits
 139              		.align	1
 140              		.p2align 2,,3
 141              		.global	_Z23AnalogInStartConversionm
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu softvfp
 146              		.type	_Z23AnalogInStartConversionm, %function
 147              	_Z23AnalogInStartConversionm:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151 0000 044B     		ldr	r3, .L27
 152 0002 054A     		ldr	r2, .L27+4
 153              	.L25:
 154 0004 53F8041B 		ldr	r1, [r3], #4
 155 0008 9342     		cmp	r3, r2
 156 000a FBD1     		bne	.L25
 157 000c 0222     		movs	r2, #2
 158 000e 034B     		ldr	r3, .L27+8
 159 0010 1A60     		str	r2, [r3]
 160 0012 7047     		bx	lr
 161              	.L28:
 162              		.align	2
 163              	.L27:
 164 0014 50000C40 		.word	1074528336
 165 0018 90000C40 		.word	1074528400
 166 001c 00000C40 		.word	1074528256
 167              		.size	_Z23AnalogInStartConversionm, .-_Z23AnalogInStartConversionm
 168              		.section	.text._Z18AnalogInCheckReadym,"ax",%progbits
 169              		.align	1
 170              		.p2align 2,,3
 171              		.global	_Z18AnalogInCheckReadym
ARM GAS  /tmp/ccfP9R7G.s 			page 4


 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu softvfp
 176              		.type	_Z18AnalogInCheckReadym, %function
 177              	_Z18AnalogInCheckReadym:
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180 0000 064B     		ldr	r3, .L31
 181 0002 10B5     		push	{r4, lr}
 182 0004 1C68     		ldr	r4, [r3]
 183 0006 0440     		ands	r4, r4, r0
 184 0008 0548     		ldr	r0, .L31+4
 185 000a FFF7FEFF 		bl	adc_get_status
 186 000e 34EA0003 		bics	r3, r4, r0
 187 0012 0CBF     		ite	eq
 188 0014 0120     		moveq	r0, #1
 189 0016 0020     		movne	r0, #0
 190 0018 10BD     		pop	{r4, pc}
 191              	.L32:
 192 001a 00BF     		.align	2
 193              	.L31:
 194 001c 00000000 		.word	.LANCHOR0
 195 0020 00000C40 		.word	1074528256
 196              		.size	_Z18AnalogInCheckReadym, .-_Z18AnalogInCheckReadym
 197              		.section	.text._Z15PinToAdcChannelm,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	_Z15PinToAdcChannelm
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu softvfp
 205              		.type	_Z15PinToAdcChannelm, %function
 206              	_Z15PinToAdcChannelm:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209              		@ link register save eliminated.
 210 0000 3528     		cmp	r0, #53
 211 0002 98BF     		it	ls
 212 0004 3630     		addls	r0, r0, #54
 213 0006 044B     		ldr	r3, .L35
 214 0008 C0EBC000 		rsb	r0, r0, r0, lsl #3
 215 000c 03EB8000 		add	r0, r3, r0, lsl #2
 216 0010 90F91800 		ldrsb	r0, [r0, #24]
 217 0014 7047     		bx	lr
 218              	.L36:
 219 0016 00BF     		.align	2
 220              	.L35:
 221 0018 00000000 		.word	g_APinDescription
 222              		.size	_Z15PinToAdcChannelm, .-_Z15PinToAdcChannelm
 223              		.section	.text._Z24GetTemperatureAdcChannelv,"ax",%progbits
 224              		.align	1
 225              		.p2align 2,,3
 226              		.global	_Z24GetTemperatureAdcChannelv
 227              		.syntax unified
 228              		.thumb
ARM GAS  /tmp/ccfP9R7G.s 			page 5


 229              		.thumb_func
 230              		.fpu softvfp
 231              		.type	_Z24GetTemperatureAdcChannelv, %function
 232              	_Z24GetTemperatureAdcChannelv:
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235              		@ link register save eliminated.
 236 0000 0F20     		movs	r0, #15
 237 0002 7047     		bx	lr
 238              		.size	_Z24GetTemperatureAdcChannelv, .-_Z24GetTemperatureAdcChannelv
 239              		.section	.bss._ZL14activeChannels,"aw",%nobits
 240              		.align	2
 241              		.set	.LANCHOR0,. + 0
 242              		.type	_ZL14activeChannels, %object
 243              		.size	_ZL14activeChannels, 4
 244              	_ZL14activeChannels:
 245 0000 00000000 		.space	4
 246              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 247              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 248              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 249              	_ZL28cpu_irq_prev_interrupt_state:
 250 0000 00       		.space	1
 251              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 252              		.align	2
 253              		.type	_ZL32cpu_irq_critical_section_counter, %object
 254              		.size	_ZL32cpu_irq_critical_section_counter, 4
 255              	_ZL32cpu_irq_critical_section_counter:
 256 0000 00000000 		.space	4
 257              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
