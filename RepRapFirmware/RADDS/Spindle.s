ARM GAS  /tmp/cc50gAVe.s 			page 1


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
  11              		.file	"Spindle.cpp"
  12              		.section	.text._ZN7Spindle7SetPinsEttb,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN7Spindle7SetPinsEttb
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN7Spindle7SetPinsEttb, %function
  21              	_ZN7Spindle7SetPinsEttb:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  25 0002 1546     		mov	r5, r2
  26 0004 0222     		movs	r2, #2
  27 0006 1F46     		mov	r7, r3
  28 0008 0646     		mov	r6, r0
  29 000a FFF7FEFF 		bl	_ZN6IoPort3SetEt9PinAccessb
  30 000e 4FF6FF73 		movw	r3, #65535
  31 0012 9D42     		cmp	r5, r3
  32 0014 0446     		mov	r4, r0
  33 0016 09D0     		beq	.L7
  34 0018 3B46     		mov	r3, r7
  35 001a 2946     		mov	r1, r5
  36 001c B01D     		adds	r0, r6, #6
  37 001e 0222     		movs	r2, #2
  38 0020 FFF7FEFF 		bl	_ZN6IoPort3SetEt9PinAccessb
  39 0024 002C     		cmp	r4, #0
  40 0026 08BF     		it	eq
  41 0028 0020     		moveq	r0, #0
  42 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  43              	.L7:
  44 002c B01D     		adds	r0, r6, #6
  45 002e FFF7FEFF 		bl	_ZN6IoPort5ClearEv
  46 0032 2046     		mov	r0, r4
  47 0034 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  48              		.size	_ZN7Spindle7SetPinsEttb, .-_ZN7Spindle7SetPinsEttb
  49 0036 00BF     		.section	.text._ZNK7Spindle7GetPinsERtS0_Rb,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	_ZNK7Spindle7GetPinsERtS0_Rb
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu softvfp
  57              		.type	_ZNK7Spindle7GetPinsERtS0_Rb, %function
ARM GAS  /tmp/cc50gAVe.s 			page 2


  58              	_ZNK7Spindle7GetPinsERtS0_Rb:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 30B4     		push	{r4, r5}
  63 0002 0488     		ldrh	r4, [r0]
  64 0004 C578     		ldrb	r5, [r0, #3]	@ zero_extendqisi2
  65 0006 1D70     		strb	r5, [r3]
  66 0008 0C80     		strh	r4, [r1]	@ movhi
  67 000a C388     		ldrh	r3, [r0, #6]
  68 000c 30BC     		pop	{r4, r5}
  69 000e 1380     		strh	r3, [r2]	@ movhi
  70 0010 7047     		bx	lr
  71              		.size	_ZNK7Spindle7GetPinsERtS0_Rb, .-_ZNK7Spindle7GetPinsERtS0_Rb
  72 0012 00BF     		.section	.text._ZN7Spindle15SetPwmFrequencyEf,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	_ZN7Spindle15SetPwmFrequencyEf
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu softvfp
  80              		.type	_ZN7Spindle15SetPwmFrequencyEf, %function
  81              	_ZN7Spindle15SetPwmFrequencyEf:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84 0000 38B5     		push	{r3, r4, r5, lr}
  85 0002 0446     		mov	r4, r0
  86 0004 0D46     		mov	r5, r1
  87 0006 0630     		adds	r0, r0, #6
  88 0008 FFF7FEFF 		bl	_ZN7PwmPort12SetFrequencyEf
  89 000c 2946     		mov	r1, r5
  90 000e 2046     		mov	r0, r4
  91 0010 BDE83840 		pop	{r3, r4, r5, lr}
  92 0014 FFF7FEBF 		b	_ZN7PwmPort12SetFrequencyEf
  93              		.size	_ZN7Spindle15SetPwmFrequencyEf, .-_ZN7Spindle15SetPwmFrequencyEf
  94              		.global	__aeabi_fdiv
  95              		.global	__aeabi_fcmpge
  96              		.section	.text._ZN7Spindle6SetRpmEf,"ax",%progbits
  97              		.align	1
  98              		.p2align 2,,3
  99              		.global	_ZN7Spindle6SetRpmEf
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu softvfp
 104              		.type	_ZN7Spindle6SetRpmEf, %function
 105              	_ZN7Spindle6SetRpmEf:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108 0000 70B5     		push	{r4, r5, r6, lr}
 109 0002 0D46     		mov	r5, r1
 110 0004 0446     		mov	r4, r0
 111 0006 8169     		ldr	r1, [r0, #24]	@ float
 112 0008 2846     		mov	r0, r5
 113 000a FFF7FEFF 		bl	__aeabi_fdiv
 114 000e 0021     		movs	r1, #0
ARM GAS  /tmp/cc50gAVe.s 			page 3


 115 0010 20F00046 		bic	r6, r0, #-2147483648
 116 0014 2846     		mov	r0, r5
 117 0016 FFF7FEFF 		bl	__aeabi_fcmpge
 118 001a 50B1     		cbz	r0, .L17
 119 001c 0021     		movs	r1, #0
 120 001e A01D     		adds	r0, r4, #6
 121 0020 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 122 0024 3146     		mov	r1, r6
 123 0026 2046     		mov	r0, r4
 124 0028 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 125 002c 6561     		str	r5, [r4, #20]	@ float
 126 002e 2561     		str	r5, [r4, #16]	@ float
 127 0030 70BD     		pop	{r4, r5, r6, pc}
 128              	.L17:
 129 0032 3146     		mov	r1, r6
 130 0034 A01D     		adds	r0, r4, #6
 131 0036 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 132 003a 0021     		movs	r1, #0
 133 003c 2046     		mov	r0, r4
 134 003e FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 135 0042 6561     		str	r5, [r4, #20]	@ float
 136 0044 2561     		str	r5, [r4, #16]	@ float
 137 0046 70BD     		pop	{r4, r5, r6, pc}
 138              		.size	_ZN7Spindle6SetRpmEf, .-_ZN7Spindle6SetRpmEf
 139              		.section	.text._ZN7Spindle7TurnOffEv,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.global	_ZN7Spindle7TurnOffEv
 143              		.syntax unified
 144              		.thumb
 145              		.thumb_func
 146              		.fpu softvfp
 147              		.type	_ZN7Spindle7TurnOffEv, %function
 148              	_ZN7Spindle7TurnOffEv:
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151 0000 38B5     		push	{r3, r4, r5, lr}
 152 0002 0025     		movs	r5, #0
 153 0004 0446     		mov	r4, r0
 154 0006 2946     		mov	r1, r5
 155 0008 0630     		adds	r0, r0, #6
 156 000a FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 157 000e 2946     		mov	r1, r5
 158 0010 2046     		mov	r0, r4
 159 0012 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 160 0016 2561     		str	r5, [r4, #16]	@ float
 161 0018 38BD     		pop	{r3, r4, r5, pc}
 162              		.size	_ZN7Spindle7TurnOffEv, .-_ZN7Spindle7TurnOffEv
 163 001a 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 164              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 165              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 166              	_ZL28cpu_irq_prev_interrupt_state:
 167 0000 00       		.space	1
 168              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 169              		.align	2
 170              		.type	_ZL32cpu_irq_critical_section_counter, %object
 171              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/cc50gAVe.s 			page 4


 172              	_ZL32cpu_irq_critical_section_counter:
 173 0000 00000000 		.space	4
 174              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
