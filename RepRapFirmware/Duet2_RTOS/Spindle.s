ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccRDvjGE.s 			page 1


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
  13              		.file	"Spindle.cpp"
  14              		.text
  15              		.section	.text._ZN7Spindle7SetPinsEttb,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN7Spindle7SetPinsEttb
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN7Spindle7SetPinsEttb, %function
  24              	_ZN7Spindle7SetPinsEttb:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  28 0002 1646     		mov	r6, r2
  29 0004 0222     		movs	r2, #2
  30 0006 0546     		mov	r5, r0
  31 0008 1F46     		mov	r7, r3
  32 000a FFF7FEFF 		bl	_ZN6IoPort3SetEt9PinAccessb
  33 000e 4FF6FF73 		movw	r3, #65535
  34 0012 9E42     		cmp	r6, r3
  35 0014 0446     		mov	r4, r0
  36 0016 05F10600 		add	r0, r5, #6
  37 001a 08D0     		beq	.L6
  38 001c 3B46     		mov	r3, r7
  39 001e 3146     		mov	r1, r6
  40 0020 0222     		movs	r2, #2
  41 0022 FFF7FEFF 		bl	_ZN6IoPort3SetEt9PinAccessb
  42 0026 002C     		cmp	r4, #0
  43 0028 08BF     		it	eq
  44 002a 0020     		moveq	r0, #0
  45 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  46              	.L6:
  47 002e FFF7FEFF 		bl	_ZN6IoPort5ClearEv
  48 0032 2046     		mov	r0, r4
  49 0034 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  50              		.size	_ZN7Spindle7SetPinsEttb, .-_ZN7Spindle7SetPinsEttb
  51 0036 00BF     		.section	.text._ZNK7Spindle7GetPinsERtS0_Rb,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	_ZNK7Spindle7GetPinsERtS0_Rb
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccRDvjGE.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_ZNK7Spindle7GetPinsERtS0_Rb, %function
  60              	_ZNK7Spindle7GetPinsERtS0_Rb:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 30B4     		push	{r4, r5}
  65 0002 0488     		ldrh	r4, [r0]
  66 0004 C578     		ldrb	r5, [r0, #3]	@ zero_extendqisi2
  67 0006 1D70     		strb	r5, [r3]
  68 0008 0C80     		strh	r4, [r1]	@ movhi
  69 000a C388     		ldrh	r3, [r0, #6]
  70 000c 1380     		strh	r3, [r2]	@ movhi
  71 000e 30BC     		pop	{r4, r5}
  72 0010 7047     		bx	lr
  73              		.size	_ZNK7Spindle7GetPinsERtS0_Rb, .-_ZNK7Spindle7GetPinsERtS0_Rb
  74 0012 00BF     		.section	.text._ZN7Spindle15SetPwmFrequencyEf,"ax",%progbits
  75              		.align	1
  76              		.p2align 2,,3
  77              		.global	_ZN7Spindle15SetPwmFrequencyEf
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu fpv4-sp-d16
  82              		.type	_ZN7Spindle15SetPwmFrequencyEf, %function
  83              	_ZN7Spindle15SetPwmFrequencyEf:
  84              		@ args = 0, pretend = 0, frame = 0
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86 0000 10B5     		push	{r4, lr}
  87 0002 2DED028B 		vpush.64	{d8}
  88 0006 0446     		mov	r4, r0
  89 0008 B0EE408A 		vmov.f32	s16, s0
  90 000c 0630     		adds	r0, r0, #6
  91 000e FFF7FEFF 		bl	_ZN7PwmPort12SetFrequencyEf
  92 0012 B0EE480A 		vmov.f32	s0, s16
  93 0016 BDEC028B 		vldm	sp!, {d8}
  94 001a 2046     		mov	r0, r4
  95 001c BDE81040 		pop	{r4, lr}
  96 0020 FFF7FEBF 		b	_ZN7PwmPort12SetFrequencyEf
  97              		.size	_ZN7Spindle15SetPwmFrequencyEf, .-_ZN7Spindle15SetPwmFrequencyEf
  98              		.section	.text._ZN7Spindle6SetRpmEf,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	_ZN7Spindle6SetRpmEf
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	_ZN7Spindle6SetRpmEf, %function
 107              	_ZN7Spindle6SetRpmEf:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110 0000 10B5     		push	{r4, lr}
 111 0002 D0ED067A 		vldr.32	s15, [r0, #24]
 112 0006 2DED028B 		vpush.64	{d8}
 113 000a B0EE408A 		vmov.f32	s16, s0
 114 000e 88EE270A 		vdiv.f32	s0, s16, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccRDvjGE.s 			page 3


 115 0012 0446     		mov	r4, r0
 116 0014 0630     		adds	r0, r0, #6
 117 0016 B5EEC08A 		vcmpe.f32	s16, #0
 118 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 119 001e F0EEC08A 		vabs.f32	s17, s0
 120 0022 0FDB     		blt	.L16
 121 0024 9FED0F0A 		vldr.32	s0, .L18
 122 0028 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 123 002c B0EE680A 		vmov.f32	s0, s17
 124 0030 2046     		mov	r0, r4
 125 0032 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 126 0036 84ED058A 		vstr.32	s16, [r4, #20]
 127 003a 84ED048A 		vstr.32	s16, [r4, #16]
 128 003e BDEC028B 		vldm	sp!, {d8}
 129 0042 10BD     		pop	{r4, pc}
 130              	.L16:
 131 0044 B0EE680A 		vmov.f32	s0, s17
 132 0048 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 133 004c 9FED050A 		vldr.32	s0, .L18
 134 0050 2046     		mov	r0, r4
 135 0052 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 136 0056 84ED058A 		vstr.32	s16, [r4, #20]
 137 005a 84ED048A 		vstr.32	s16, [r4, #16]
 138 005e BDEC028B 		vldm	sp!, {d8}
 139 0062 10BD     		pop	{r4, pc}
 140              	.L19:
 141              		.align	2
 142              	.L18:
 143 0064 00000000 		.word	0
 144              		.size	_ZN7Spindle6SetRpmEf, .-_ZN7Spindle6SetRpmEf
 145              		.section	.text._ZN7Spindle7TurnOffEv,"ax",%progbits
 146              		.align	1
 147              		.p2align 2,,3
 148              		.global	_ZN7Spindle7TurnOffEv
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu fpv4-sp-d16
 153              		.type	_ZN7Spindle7TurnOffEv, %function
 154              	_ZN7Spindle7TurnOffEv:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157 0000 10B5     		push	{r4, lr}
 158 0002 2DED028B 		vpush.64	{d8}
 159 0006 9FED098A 		vldr.32	s16, .L22
 160 000a 0446     		mov	r4, r0
 161 000c B0EE480A 		vmov.f32	s0, s16
 162 0010 0630     		adds	r0, r0, #6
 163 0012 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 164 0016 B0EE480A 		vmov.f32	s0, s16
 165 001a 2046     		mov	r0, r4
 166 001c FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 167 0020 84ED048A 		vstr.32	s16, [r4, #16]
 168 0024 BDEC028B 		vldm	sp!, {d8}
 169 0028 10BD     		pop	{r4, pc}
 170              	.L23:
 171 002a 00BF     		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccRDvjGE.s 			page 4


 172              	.L22:
 173 002c 00000000 		.word	0
 174              		.size	_ZN7Spindle7TurnOffEv, .-_ZN7Spindle7TurnOffEv
 175              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 176              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 177              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 178              	_ZL28cpu_irq_prev_interrupt_state:
 179 0000 00       		.space	1
 180              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 181              		.align	2
 182              		.type	_ZL32cpu_irq_critical_section_counter, %object
 183              		.size	_ZL32cpu_irq_critical_section_counter, 4
 184              	_ZL32cpu_irq_critical_section_counter:
 185 0000 00000000 		.space	4
 186              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
