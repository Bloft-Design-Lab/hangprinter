ARM GAS  /tmp/ccQP4r0m.s 			page 1


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
  13              		.file	"ZProbe.cpp"
  14              		.section	.text._ZN6ZProbe4InitEf,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN6ZProbe4InitEf
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN6ZProbe4InitEf, %function
  23              	_ZN6ZProbe4InitEf:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 30B4     		push	{r4, r5}
  28 0002 4FF4FA71 		mov	r1, #500
  29 0006 0E4A     		ldr	r2, .L4
  30 0008 0160     		str	r1, [r0]
  31 000a 0261     		str	r2, [r0, #16]	@ float
  32 000c 0D49     		ldr	r1, .L4+4
  33 000e 0E4D     		ldr	r5, .L4+8
  34 0010 0E4C     		ldr	r4, .L4+12
  35 0012 8161     		str	r1, [r0, #24]	@ float
  36 0014 4FF08042 		mov	r2, #1073741824
  37 0018 0023     		movs	r3, #0
  38 001a 0121     		movs	r1, #1
  39 001c C261     		str	r2, [r0, #28]	@ float
  40 001e 0022     		movs	r2, #0
  41 0020 0562     		str	r5, [r0, #32]	@ float
  42 0022 8462     		str	r4, [r0, #40]	@ float
  43 0024 80ED030A 		vstr.32	s0, [r0, #12]
  44 0028 80F82C10 		strb	r1, [r0, #44]
  45 002c 8360     		str	r3, [r0, #8]	@ float
  46 002e 4360     		str	r3, [r0, #4]	@ float
  47 0030 4361     		str	r3, [r0, #20]	@ float
  48 0032 4362     		str	r3, [r0, #36]	@ float
  49 0034 80F82E20 		strb	r2, [r0, #46]
  50 0038 80F82D20 		strb	r2, [r0, #45]
  51 003c 30BC     		pop	{r4, r5}
  52 003e 7047     		bx	lr
  53              	.L5:
  54              		.align	2
  55              	.L4:
  56 0040 0000A041 		.word	1101004800
  57 0044 0000A040 		.word	1084227584
ARM GAS  /tmp/ccQP4r0m.s 			page 2


  58 0048 0000C842 		.word	1120403456
  59 004c 8FC2F53C 		.word	1022739087
  60              		.size	_ZN6ZProbe4InitEf, .-_ZN6ZProbe4InitEf
  61              		.section	.text._ZNK6ZProbe13GetStopHeightEf,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	_ZNK6ZProbe13GetStopHeightEf
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZNK6ZProbe13GetStopHeightEf, %function
  70              	_ZNK6ZProbe13GetStopHeightEf:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73              		@ link register save eliminated.
  74 0000 D0ED047A 		vldr.32	s15, [r0, #16]
  75 0004 D0ED056A 		vldr.32	s13, [r0, #20]
  76 0008 90ED037A 		vldr.32	s14, [r0, #12]
  77 000c 30EE670A 		vsub.f32	s0, s0, s15
  78 0010 A0EE267A 		vfma.f32	s14, s0, s13
  79 0014 B0EE470A 		vmov.f32	s0, s14
  80 0018 7047     		bx	lr
  81              		.size	_ZNK6ZProbe13GetStopHeightEf, .-_ZNK6ZProbe13GetStopHeightEf
  82 001a 00BF     		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
  83              		.align	1
  84              		.p2align 2,,3
  85              		.weak	_ZN6StringILj220EE6printfEPKcz
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu fpv4-sp-d16
  90              		.type	_ZN6StringILj220EE6printfEPKcz, %function
  91              	_ZN6StringILj220EE6printfEPKcz:
  92              		@ args = 4, pretend = 12, frame = 16
  93              		@ frame_needed = 0, uses_anonymous_args = 1
  94 0000 0EB4     		push	{r1, r2, r3}
  95 0002 00B5     		push	{lr}
  96 0004 84B0     		sub	sp, sp, #16
  97 0006 05AA     		add	r2, sp, #20
  98 0008 0290     		str	r0, [sp, #8]
  99 000a 52F8041B 		ldr	r1, [r2], #4
 100 000e 0192     		str	r2, [sp, #4]
 101 0010 DD23     		movs	r3, #221
 102 0012 02A8     		add	r0, sp, #8
 103 0014 0393     		str	r3, [sp, #12]
 104 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 105 001a 04B0     		add	sp, sp, #16
 106              		@ sp needed
 107 001c 5DF804EB 		ldr	lr, [sp], #4
 108 0020 03B0     		add	sp, sp, #12
 109 0022 7047     		bx	lr
 110              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 111              		.global	__aeabi_f2d
 112              		.section	.text._ZNK6ZProbe15WriteParametersEP9FileStorej,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  /tmp/ccQP4r0m.s 			page 3


 115              		.global	_ZNK6ZProbe15WriteParametersEP9FileStorej
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu fpv4-sp-d16
 120              		.type	_ZNK6ZProbe15WriteParametersEP9FileStorej, %function
 121              	_ZNK6ZProbe15WriteParametersEP9FileStorej:
 122              		@ args = 0, pretend = 0, frame = 224
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 125 0004 BEB0     		sub	sp, sp, #248
 126 0006 3EAC     		add	r4, sp, #248
 127 0008 0546     		mov	r5, r0
 128 000a 0023     		movs	r3, #0
 129 000c C068     		ldr	r0, [r0, #12]	@ float
 130 000e 04F8E03D 		strb	r3, [r4, #-224]!
 131 0012 1746     		mov	r7, r2
 132 0014 0E46     		mov	r6, r1
 133 0016 FFF7FEFF 		bl	__aeabi_f2d
 134 001a D5F80080 		ldr	r8, [r5]
 135 001e CDE90401 		strd	r0, [sp, #16]
 136 0022 A868     		ldr	r0, [r5, #8]	@ float
 137 0024 FFF7FEFF 		bl	__aeabi_f2d
 138 0028 CDE90201 		strd	r0, [sp, #8]
 139 002c 6868     		ldr	r0, [r5, #4]	@ float
 140 002e FFF7FEFF 		bl	__aeabi_f2d
 141 0032 4346     		mov	r3, r8
 142 0034 CDE90001 		strd	r0, [sp]
 143 0038 3A46     		mov	r2, r7
 144 003a 2046     		mov	r0, r4
 145 003c 0449     		ldr	r1, .L11
 146 003e FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 147 0042 2146     		mov	r1, r4
 148 0044 3046     		mov	r0, r6
 149 0046 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 150 004a 3EB0     		add	sp, sp, #248
 151              		@ sp needed
 152 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 153              	.L12:
 154              		.align	2
 155              	.L11:
 156 0050 00000000 		.word	.LC0
 157              		.size	_ZNK6ZProbe15WriteParametersEP9FileStorej, .-_ZNK6ZProbe15WriteParametersEP9FileStorej
 158              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 159              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 160              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 161              	_ZL28cpu_irq_prev_interrupt_state:
 162 0000 00       		.space	1
 163              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 164              		.align	2
 165              		.type	_ZL32cpu_irq_critical_section_counter, %object
 166              		.size	_ZL32cpu_irq_critical_section_counter, 4
 167              	_ZL32cpu_irq_critical_section_counter:
 168 0000 00000000 		.space	4
 169              		.section	.rodata._ZNK6ZProbe15WriteParametersEP9FileStorej.str1.4,"aMS",%progbits,1
 170              		.align	2
 171              	.LC0:
ARM GAS  /tmp/ccQP4r0m.s 			page 4


 172 0000 47333120 		.ascii	"G31 T%u P%lu X%.1f Y%.1f Z%.2f\012\000"
 172      54257520 
 172      50256C75 
 172      2058252E 
 172      31662059 
 173              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
