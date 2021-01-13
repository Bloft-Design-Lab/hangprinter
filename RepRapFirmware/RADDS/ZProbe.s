ARM GAS  /tmp/cca3FRvx.s 			page 1


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
  11              		.file	"ZProbe.cpp"
  12              		.section	.text._ZN6ZProbe4InitEf,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN6ZProbe4InitEf
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN6ZProbe4InitEf, %function
  21              	_ZN6ZProbe4InitEf:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 0F4B     		ldr	r3, .L3
  25 0002 F0B5     		push	{r4, r5, r6, r7, lr}
  26 0004 0022     		movs	r2, #0
  27 0006 4FF4FA7E 		mov	lr, #500
  28 000a 0124     		movs	r4, #1
  29 000c 4FF08046 		mov	r6, #1073741824
  30 0010 0361     		str	r3, [r0, #16]	@ float
  31 0012 0023     		movs	r3, #0
  32 0014 0B4F     		ldr	r7, .L3+4
  33 0016 C160     		str	r1, [r0, #12]	@ float
  34 0018 0B4D     		ldr	r5, .L3+8
  35 001a 0C49     		ldr	r1, .L3+12
  36 001c C0F800E0 		str	lr, [r0]
  37 0020 8761     		str	r7, [r0, #24]	@ float
  38 0022 C661     		str	r6, [r0, #28]	@ float
  39 0024 0562     		str	r5, [r0, #32]	@ float
  40 0026 8162     		str	r1, [r0, #40]	@ float
  41 0028 80F82C40 		strb	r4, [r0, #44]
  42 002c 8360     		str	r3, [r0, #8]	@ float
  43 002e 4360     		str	r3, [r0, #4]	@ float
  44 0030 4361     		str	r3, [r0, #20]	@ float
  45 0032 4362     		str	r3, [r0, #36]	@ float
  46 0034 80F82E20 		strb	r2, [r0, #46]
  47 0038 80F82D20 		strb	r2, [r0, #45]
  48 003c F0BD     		pop	{r4, r5, r6, r7, pc}
  49              	.L4:
  50 003e 00BF     		.align	2
  51              	.L3:
  52 0040 0000A041 		.word	1101004800
  53 0044 0000A040 		.word	1084227584
  54 0048 0000C842 		.word	1120403456
  55 004c 8FC2F53C 		.word	1022739087
  56              		.size	_ZN6ZProbe4InitEf, .-_ZN6ZProbe4InitEf
  57              		.global	__aeabi_fsub
ARM GAS  /tmp/cca3FRvx.s 			page 2


  58              		.global	__aeabi_fmul
  59              		.global	__aeabi_fadd
  60              		.section	.text._ZNK6ZProbe13GetStopHeightEf,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_ZNK6ZProbe13GetStopHeightEf
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu softvfp
  68              		.type	_ZNK6ZProbe13GetStopHeightEf, %function
  69              	_ZNK6ZProbe13GetStopHeightEf:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72 0000 10B5     		push	{r4, lr}
  73 0002 0446     		mov	r4, r0
  74 0004 0846     		mov	r0, r1
  75 0006 2169     		ldr	r1, [r4, #16]	@ float
  76 0008 FFF7FEFF 		bl	__aeabi_fsub
  77 000c 6169     		ldr	r1, [r4, #20]	@ float
  78 000e FFF7FEFF 		bl	__aeabi_fmul
  79 0012 E168     		ldr	r1, [r4, #12]	@ float
  80 0014 FFF7FEFF 		bl	__aeabi_fadd
  81 0018 10BD     		pop	{r4, pc}
  82              		.size	_ZNK6ZProbe13GetStopHeightEf, .-_ZNK6ZProbe13GetStopHeightEf
  83 001a 00BF     		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
  84              		.align	1
  85              		.p2align 2,,3
  86              		.weak	_ZN6StringILj220EE6printfEPKcz
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu softvfp
  91              		.type	_ZN6StringILj220EE6printfEPKcz, %function
  92              	_ZN6StringILj220EE6printfEPKcz:
  93              		@ args = 4, pretend = 12, frame = 16
  94              		@ frame_needed = 0, uses_anonymous_args = 1
  95 0000 0EB4     		push	{r1, r2, r3}
  96 0002 10B5     		push	{r4, lr}
  97 0004 DD24     		movs	r4, #221
  98 0006 85B0     		sub	sp, sp, #20
  99 0008 07AB     		add	r3, sp, #28
 100 000a 53F8041B 		ldr	r1, [r3], #4
 101 000e 0290     		str	r0, [sp, #8]
 102 0010 1A46     		mov	r2, r3
 103 0012 02A8     		add	r0, sp, #8
 104 0014 0193     		str	r3, [sp, #4]
 105 0016 0394     		str	r4, [sp, #12]
 106 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 107 001c 05B0     		add	sp, sp, #20
 108              		@ sp needed
 109 001e BDE81040 		pop	{r4, lr}
 110 0022 03B0     		add	sp, sp, #12
 111 0024 7047     		bx	lr
 112              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 113              		.global	__aeabi_f2d
 114 0026 00BF     		.section	.text._ZNK6ZProbe15WriteParametersEP9FileStorej,"ax",%progbits
ARM GAS  /tmp/cca3FRvx.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	_ZNK6ZProbe15WriteParametersEP9FileStorej
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu softvfp
 122              		.type	_ZNK6ZProbe15WriteParametersEP9FileStorej, %function
 123              	_ZNK6ZProbe15WriteParametersEP9FileStorej:
 124              		@ args = 0, pretend = 0, frame = 224
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126 0000 0023     		movs	r3, #0
 127 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 128 0004 BFB0     		sub	sp, sp, #252
 129 0006 0546     		mov	r5, r0
 130 0008 3EAC     		add	r4, sp, #248
 131 000a C068     		ldr	r0, [r0, #12]	@ float
 132 000c 04F8E03D 		strb	r3, [r4, #-224]!
 133 0010 1746     		mov	r7, r2
 134 0012 0E46     		mov	r6, r1
 135 0014 FFF7FEFF 		bl	__aeabi_f2d
 136 0018 CDE90401 		strd	r0, [sp, #16]
 137 001c A868     		ldr	r0, [r5, #8]	@ float
 138 001e FFF7FEFF 		bl	__aeabi_f2d
 139 0022 CDE90201 		strd	r0, [sp, #8]
 140 0026 6868     		ldr	r0, [r5, #4]	@ float
 141 0028 FFF7FEFF 		bl	__aeabi_f2d
 142 002c 2B68     		ldr	r3, [r5]
 143 002e 3A46     		mov	r2, r7
 144 0030 CDE90001 		strd	r0, [sp]
 145 0034 2046     		mov	r0, r4
 146 0036 0449     		ldr	r1, .L11
 147 0038 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 148 003c 2146     		mov	r1, r4
 149 003e 3046     		mov	r0, r6
 150 0040 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 151 0044 3FB0     		add	sp, sp, #252
 152              		@ sp needed
 153 0046 F0BD     		pop	{r4, r5, r6, r7, pc}
 154              	.L12:
 155              		.align	2
 156              	.L11:
 157 0048 00000000 		.word	.LC0
 158              		.size	_ZNK6ZProbe15WriteParametersEP9FileStorej, .-_ZNK6ZProbe15WriteParametersEP9FileStorej
 159              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 160              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 161              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 162              	_ZL28cpu_irq_prev_interrupt_state:
 163 0000 00       		.space	1
 164              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 165              		.align	2
 166              		.type	_ZL32cpu_irq_critical_section_counter, %object
 167              		.size	_ZL32cpu_irq_critical_section_counter, 4
 168              	_ZL32cpu_irq_critical_section_counter:
 169 0000 00000000 		.space	4
 170              		.section	.rodata._ZNK6ZProbe15WriteParametersEP9FileStorej.str1.4,"aMS",%progbits,1
 171              		.align	2
ARM GAS  /tmp/cca3FRvx.s 			page 4


 172              	.LC0:
 173 0000 47333120 		.ascii	"G31 T%u P%lu X%.1f Y%.1f Z%.2f\012\000"
 173      54257520 
 173      50256C75 
 173      2058252E 
 173      31662059 
 174              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
