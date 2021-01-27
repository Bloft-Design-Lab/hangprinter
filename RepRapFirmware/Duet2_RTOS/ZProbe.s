ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIqCCui.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN6ZProbe4InitEf,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN6ZProbe4InitEf
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN6ZProbe4InitEf, %function
  24              	_ZN6ZProbe4InitEf:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 30B4     		push	{r4, r5}
  29 0002 4FF4FA73 		mov	r3, #500
  30 0006 0E4C     		ldr	r4, .L4
  31 0008 0E49     		ldr	r1, .L4+4
  32 000a 0360     		str	r3, [r0]
  33 000c 4FF08043 		mov	r3, #1073741824
  34 0010 0022     		movs	r2, #0
  35 0012 0D4D     		ldr	r5, .L4+8
  36 0014 0461     		str	r4, [r0, #16]
  37 0016 8161     		str	r1, [r0, #24]
  38 0018 0C4C     		ldr	r4, .L4+12
  39 001a C361     		str	r3, [r0, #28]
  40 001c 0121     		movs	r1, #1
  41 001e 0023     		movs	r3, #0
  42 0020 0562     		str	r5, [r0, #32]
  43 0022 8462     		str	r4, [r0, #40]
  44 0024 80ED030A 		vstr.32	s0, [r0, #12]
  45 0028 8185     		strh	r1, [r0, #44]	@ movhi
  46 002a 8260     		str	r2, [r0, #8]	@ float
  47 002c 4260     		str	r2, [r0, #4]	@ float
  48 002e 4361     		str	r3, [r0, #20]
  49 0030 4362     		str	r3, [r0, #36]
  50 0032 80F82F30 		strb	r3, [r0, #47]
  51 0036 80F82E30 		strb	r3, [r0, #46]
  52 003a 30BC     		pop	{r4, r5}
  53 003c 7047     		bx	lr
  54              	.L5:
  55 003e 00BF     		.align	2
  56              	.L4:
  57 0040 0000A041 		.word	1101004800
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIqCCui.s 			page 2


  58 0044 0000A040 		.word	1084227584
  59 0048 0000C842 		.word	1120403456
  60 004c 8FC2F53C 		.word	1022739087
  61              		.size	_ZN6ZProbe4InitEf, .-_ZN6ZProbe4InitEf
  62              		.section	.text._ZNK6ZProbe13GetStopHeightEf,"ax",%progbits
  63              		.align	1
  64              		.p2align 2,,3
  65              		.global	_ZNK6ZProbe13GetStopHeightEf
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu fpv4-sp-d16
  70              		.type	_ZNK6ZProbe13GetStopHeightEf, %function
  71              	_ZNK6ZProbe13GetStopHeightEf:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74              		@ link register save eliminated.
  75 0000 D0ED047A 		vldr.32	s15, [r0, #16]
  76 0004 D0ED056A 		vldr.32	s13, [r0, #20]
  77 0008 90ED037A 		vldr.32	s14, [r0, #12]
  78 000c 30EE670A 		vsub.f32	s0, s0, s15
  79 0010 A0EE267A 		vfma.f32	s14, s0, s13
  80 0014 B0EE470A 		vmov.f32	s0, s14
  81 0018 7047     		bx	lr
  82              		.size	_ZNK6ZProbe13GetStopHeightEf, .-_ZNK6ZProbe13GetStopHeightEf
  83 001a 00BF     		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
  84              		.align	1
  85              		.p2align 2,,3
  86              		.weak	_ZN6StringILj220EE6printfEPKcz
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu fpv4-sp-d16
  91              		.type	_ZN6StringILj220EE6printfEPKcz, %function
  92              	_ZN6StringILj220EE6printfEPKcz:
  93              		@ args = 4, pretend = 12, frame = 16
  94              		@ frame_needed = 0, uses_anonymous_args = 1
  95 0000 0EB4     		push	{r1, r2, r3}
  96 0002 00B5     		push	{lr}
  97 0004 84B0     		sub	sp, sp, #16
  98 0006 05AA     		add	r2, sp, #20
  99 0008 0290     		str	r0, [sp, #8]
 100 000a 52F8041B 		ldr	r1, [r2], #4
 101 000e 0192     		str	r2, [sp, #4]
 102 0010 DD23     		movs	r3, #221
 103 0012 02A8     		add	r0, sp, #8
 104 0014 0393     		str	r3, [sp, #12]
 105 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 106 001a 04B0     		add	sp, sp, #16
 107              		@ sp needed
 108 001c 5DF804EB 		ldr	lr, [sp], #4
 109 0020 03B0     		add	sp, sp, #12
 110 0022 7047     		bx	lr
 111              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 112              		.global	__aeabi_f2d
 113              		.section	.text._ZNK6ZProbe15WriteParametersEP9FileStorej,"ax",%progbits
 114              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIqCCui.s 			page 3


 115              		.p2align 2,,3
 116              		.global	_ZNK6ZProbe15WriteParametersEP9FileStorej
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv4-sp-d16
 121              		.type	_ZNK6ZProbe15WriteParametersEP9FileStorej, %function
 122              	_ZNK6ZProbe15WriteParametersEP9FileStorej:
 123              		@ args = 0, pretend = 0, frame = 224
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 126 0004 BEB0     		sub	sp, sp, #248
 127 0006 3EAC     		add	r4, sp, #248
 128 0008 0546     		mov	r5, r0
 129 000a 0023     		movs	r3, #0
 130 000c C068     		ldr	r0, [r0, #12]	@ float
 131 000e 04F8E03D 		strb	r3, [r4, #-224]!
 132 0012 1746     		mov	r7, r2
 133 0014 0E46     		mov	r6, r1
 134 0016 FFF7FEFF 		bl	__aeabi_f2d
 135 001a D5F80080 		ldr	r8, [r5]
 136 001e CDE90401 		strd	r0, [sp, #16]
 137 0022 A868     		ldr	r0, [r5, #8]	@ float
 138 0024 FFF7FEFF 		bl	__aeabi_f2d
 139 0028 CDE90201 		strd	r0, [sp, #8]
 140 002c 6868     		ldr	r0, [r5, #4]	@ float
 141 002e FFF7FEFF 		bl	__aeabi_f2d
 142 0032 4346     		mov	r3, r8
 143 0034 CDE90001 		strd	r0, [sp]
 144 0038 3A46     		mov	r2, r7
 145 003a 2046     		mov	r0, r4
 146 003c 0449     		ldr	r1, .L11
 147 003e FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 148 0042 2146     		mov	r1, r4
 149 0044 3046     		mov	r0, r6
 150 0046 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 151 004a 3EB0     		add	sp, sp, #248
 152              		@ sp needed
 153 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 154              	.L12:
 155              		.align	2
 156              	.L11:
 157 0050 00000000 		.word	.LC0
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIqCCui.s 			page 4


 172              	.LC0:
 173 0000 47333120 		.ascii	"G31 T%u P%lu X%.1f Y%.1f Z%.2f\012\000"
 173      54257520 
 173      50256C75 
 173      2058252E 
 173      31662059 
 174              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
