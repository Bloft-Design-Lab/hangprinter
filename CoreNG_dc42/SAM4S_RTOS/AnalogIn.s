ARM GAS  /tmp/cckUHId4.s 			page 1


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
  25 0002 1D20     		movs	r0, #29
  26 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
  27 0008 0F4C     		ldr	r4, .L3
  28 000a 104B     		ldr	r3, .L3+4
  29 000c 104A     		ldr	r2, .L3+8
  30 000e 1968     		ldr	r1, [r3]
  31 0010 2046     		mov	r0, r4
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
  52 0048 00800340 		.word	1073971200
  53 004c 00000000 		.word	SystemCoreClock
  54 0050 80841E00 		.word	2000000
  55              		.size	_Z12AnalogInInitv, .-_Z12AnalogInInitv
  56              		.section	.text._Z21AnalogInEnableChannel19AnalogChannelNumberb,"ax",%progbits
  57              		.align	1
ARM GAS  /tmp/cckUHId4.s 			page 2


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
  69 0002 24D8     		bhi	.L11
  70 0004 38B5     		push	{r3, r4, r5, lr}
  71 0006 0446     		mov	r4, r0
  72 0008 69B9     		cbnz	r1, .L15
  73 000a 144D     		ldr	r5, .L17
  74 000c 1448     		ldr	r0, .L17+4
  75 000e 2B68     		ldr	r3, [r5]
  76 0010 0122     		movs	r2, #1
  77 0012 A240     		lsls	r2, r2, r4
  78 0014 23EA0203 		bic	r3, r3, r2
  79 0018 E1B2     		uxtb	r1, r4
  80 001a 2B60     		str	r3, [r5]
  81 001c FFF7FEFF 		bl	adc_disable_channel
  82 0020 0F2C     		cmp	r4, #15
  83 0022 15D0     		beq	.L16
  84              	.L5:
  85 0024 38BD     		pop	{r3, r4, r5, pc}
  86              	.L15:
  87 0026 0D4A     		ldr	r2, .L17
  88 0028 0D48     		ldr	r0, .L17+4
  89 002a 1168     		ldr	r1, [r2]
  90 002c 0123     		movs	r3, #1
  91 002e A340     		lsls	r3, r3, r4
  92 0030 0B43     		orrs	r3, r3, r1
  93 0032 E1B2     		uxtb	r1, r4
  94 0034 1360     		str	r3, [r2]
  95 0036 FFF7FEFF 		bl	adc_enable_channel
  96 003a 0948     		ldr	r0, .L17+4
  97 003c FFF7FEFF 		bl	adc_set_calibmode
  98 0040 0F2C     		cmp	r4, #15
  99 0042 EFD1     		bne	.L5
 100 0044 0648     		ldr	r0, .L17+4
 101 0046 BDE83840 		pop	{r3, r4, r5, lr}
 102 004a FFF7FEBF 		b	adc_enable_ts
 103              	.L11:
 104 004e 7047     		bx	lr
 105              	.L16:
 106 0050 0348     		ldr	r0, .L17+4
 107 0052 BDE83840 		pop	{r3, r4, r5, lr}
 108 0056 FFF7FEBF 		b	adc_disable_ts
 109              	.L18:
 110 005a 00BF     		.align	2
 111              	.L17:
 112 005c 00000000 		.word	.LANCHOR0
 113 0060 00800340 		.word	1073971200
 114              		.size	_Z21AnalogInEnableChannel19AnalogChannelNumberb, .-_Z21AnalogInEnableChannel19AnalogChannelN
ARM GAS  /tmp/cckUHId4.s 			page 3


 115              		.section	.text._Z19AnalogInReadChannel19AnalogChannelNumber,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	_Z19AnalogInReadChannel19AnalogChannelNumber
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu softvfp
 123              		.type	_Z19AnalogInReadChannel19AnalogChannelNumber, %function
 124              	_Z19AnalogInReadChannel19AnalogChannelNumber:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127              		@ link register save eliminated.
 128 0000 0F28     		cmp	r0, #15
 129 0002 9DBF     		ittte	ls
 130 0004 C0B2     		uxtbls	r0, r0
 131 0006 034B     		ldrls	r3, .L22
 132 0008 53F82000 		ldrls	r0, [r3, r0, lsl #2]
 133 000c 0020     		movhi	r0, #0
 134 000e 80B2     		uxth	r0, r0
 135 0010 7047     		bx	lr
 136              	.L23:
 137 0012 00BF     		.align	2
 138              	.L22:
 139 0014 50800340 		.word	1073971280
 140              		.size	_Z19AnalogInReadChannel19AnalogChannelNumber, .-_Z19AnalogInReadChannel19AnalogChannelNumber
 141              		.section	.text._Z23AnalogInStartConversionm,"ax",%progbits
 142              		.align	1
 143              		.p2align 2,,3
 144              		.global	_Z23AnalogInStartConversionm
 145              		.syntax unified
 146              		.thumb
 147              		.thumb_func
 148              		.fpu softvfp
 149              		.type	_Z23AnalogInStartConversionm, %function
 150              	_Z23AnalogInStartConversionm:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153              		@ link register save eliminated.
 154 0000 044B     		ldr	r3, .L27
 155 0002 054A     		ldr	r2, .L27+4
 156              	.L25:
 157 0004 53F8041B 		ldr	r1, [r3], #4
 158 0008 9342     		cmp	r3, r2
 159 000a FBD1     		bne	.L25
 160 000c 034B     		ldr	r3, .L27+8
 161 000e 0222     		movs	r2, #2
 162 0010 1A60     		str	r2, [r3]
 163 0012 7047     		bx	lr
 164              	.L28:
 165              		.align	2
 166              	.L27:
 167 0014 50800340 		.word	1073971280
 168 0018 90800340 		.word	1073971344
 169 001c 00800340 		.word	1073971200
 170              		.size	_Z23AnalogInStartConversionm, .-_Z23AnalogInStartConversionm
 171              		.section	.text._Z18AnalogInCheckReadym,"ax",%progbits
ARM GAS  /tmp/cckUHId4.s 			page 4


 172              		.align	1
 173              		.p2align 2,,3
 174              		.global	_Z18AnalogInCheckReadym
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu softvfp
 179              		.type	_Z18AnalogInCheckReadym, %function
 180              	_Z18AnalogInCheckReadym:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183 0000 064B     		ldr	r3, .L31
 184 0002 10B5     		push	{r4, lr}
 185 0004 1C68     		ldr	r4, [r3]
 186 0006 0440     		ands	r4, r4, r0
 187 0008 0548     		ldr	r0, .L31+4
 188 000a FFF7FEFF 		bl	adc_get_status
 189 000e 34EA0003 		bics	r3, r4, r0
 190 0012 0CBF     		ite	eq
 191 0014 0120     		moveq	r0, #1
 192 0016 0020     		movne	r0, #0
 193 0018 10BD     		pop	{r4, pc}
 194              	.L32:
 195 001a 00BF     		.align	2
 196              	.L31:
 197 001c 00000000 		.word	.LANCHOR0
 198 0020 00800340 		.word	1073971200
 199              		.size	_Z18AnalogInCheckReadym, .-_Z18AnalogInCheckReadym
 200              		.section	.text._Z15PinToAdcChannelm,"ax",%progbits
 201              		.align	1
 202              		.p2align 2,,3
 203              		.global	_Z15PinToAdcChannelm
 204              		.syntax unified
 205              		.thumb
 206              		.thumb_func
 207              		.fpu softvfp
 208              		.type	_Z15PinToAdcChannelm, %function
 209              	_Z15PinToAdcChannelm:
 210              		@ args = 0, pretend = 0, frame = 0
 211              		@ frame_needed = 0, uses_anonymous_args = 0
 212              		@ link register save eliminated.
 213 0000 034B     		ldr	r3, .L34
 214 0002 C0EBC000 		rsb	r0, r0, r0, lsl #3
 215 0006 03EB8003 		add	r3, r3, r0, lsl #2
 216 000a 93F91800 		ldrsb	r0, [r3, #24]
 217 000e 7047     		bx	lr
 218              	.L35:
 219              		.align	2
 220              	.L34:
 221 0010 00000000 		.word	g_APinDescription
 222              		.size	_Z15PinToAdcChannelm, .-_Z15PinToAdcChannelm
 223              		.section	.text._Z24GetTemperatureAdcChannelv,"ax",%progbits
 224              		.align	1
 225              		.p2align 2,,3
 226              		.global	_Z24GetTemperatureAdcChannelv
 227              		.syntax unified
 228              		.thumb
ARM GAS  /tmp/cckUHId4.s 			page 5


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
