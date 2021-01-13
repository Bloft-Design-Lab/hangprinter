ARM GAS  /tmp/cc15iNmd.s 			page 1


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
  14              		.section	.text._ZN7Spindle7SetPinsEttb,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN7Spindle7SetPinsEttb
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN7Spindle7SetPinsEttb, %function
  23              	_ZN7Spindle7SetPinsEttb:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  27 0002 1646     		mov	r6, r2
  28 0004 0222     		movs	r2, #2
  29 0006 0546     		mov	r5, r0
  30 0008 1F46     		mov	r7, r3
  31 000a FFF7FEFF 		bl	_ZN6IoPort3SetEt9PinAccessb
  32 000e 4FF6FF73 		movw	r3, #65535
  33 0012 9E42     		cmp	r6, r3
  34 0014 0446     		mov	r4, r0
  35 0016 05F10600 		add	r0, r5, #6
  36 001a 08D0     		beq	.L6
  37 001c 3B46     		mov	r3, r7
  38 001e 3146     		mov	r1, r6
  39 0020 0222     		movs	r2, #2
  40 0022 FFF7FEFF 		bl	_ZN6IoPort3SetEt9PinAccessb
  41 0026 002C     		cmp	r4, #0
  42 0028 08BF     		it	eq
  43 002a 0020     		moveq	r0, #0
  44 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  45              	.L6:
  46 002e FFF7FEFF 		bl	_ZN6IoPort5ClearEv
  47 0032 2046     		mov	r0, r4
  48 0034 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  49              		.size	_ZN7Spindle7SetPinsEttb, .-_ZN7Spindle7SetPinsEttb
  50 0036 00BF     		.section	.text._ZNK7Spindle7GetPinsERtS0_Rb,"ax",%progbits
  51              		.align	1
  52              		.p2align 2,,3
  53              		.global	_ZNK7Spindle7GetPinsERtS0_Rb
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cc15iNmd.s 			page 2


  58              		.type	_ZNK7Spindle7GetPinsERtS0_Rb, %function
  59              	_ZNK7Spindle7GetPinsERtS0_Rb:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  63 0000 30B4     		push	{r4, r5}
  64 0002 0488     		ldrh	r4, [r0]
  65 0004 C578     		ldrb	r5, [r0, #3]	@ zero_extendqisi2
  66 0006 1D70     		strb	r5, [r3]
  67 0008 0C80     		strh	r4, [r1]	@ movhi
  68 000a C388     		ldrh	r3, [r0, #6]
  69 000c 1380     		strh	r3, [r2]	@ movhi
  70 000e 30BC     		pop	{r4, r5}
  71 0010 7047     		bx	lr
  72              		.size	_ZNK7Spindle7GetPinsERtS0_Rb, .-_ZNK7Spindle7GetPinsERtS0_Rb
  73 0012 00BF     		.section	.text._ZN7Spindle15SetPwmFrequencyEf,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	_ZN7Spindle15SetPwmFrequencyEf
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu fpv4-sp-d16
  81              		.type	_ZN7Spindle15SetPwmFrequencyEf, %function
  82              	_ZN7Spindle15SetPwmFrequencyEf:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85 0000 10B5     		push	{r4, lr}
  86 0002 2DED028B 		vpush.64	{d8}
  87 0006 0446     		mov	r4, r0
  88 0008 B0EE408A 		vmov.f32	s16, s0
  89 000c 0630     		adds	r0, r0, #6
  90 000e FFF7FEFF 		bl	_ZN7PwmPort12SetFrequencyEf
  91 0012 B0EE480A 		vmov.f32	s0, s16
  92 0016 BDEC028B 		vldm	sp!, {d8}
  93 001a 2046     		mov	r0, r4
  94 001c BDE81040 		pop	{r4, lr}
  95 0020 FFF7FEBF 		b	_ZN7PwmPort12SetFrequencyEf
  96              		.size	_ZN7Spindle15SetPwmFrequencyEf, .-_ZN7Spindle15SetPwmFrequencyEf
  97              		.section	.text._ZN7Spindle6SetRpmEf,"ax",%progbits
  98              		.align	1
  99              		.p2align 2,,3
 100              		.global	_ZN7Spindle6SetRpmEf
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	_ZN7Spindle6SetRpmEf, %function
 106              	_ZN7Spindle6SetRpmEf:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109 0000 10B5     		push	{r4, lr}
 110 0002 D0ED067A 		vldr.32	s15, [r0, #24]
 111 0006 2DED028B 		vpush.64	{d8}
 112 000a B0EE408A 		vmov.f32	s16, s0
 113 000e 88EE270A 		vdiv.f32	s0, s16, s15
 114 0012 0446     		mov	r4, r0
ARM GAS  /tmp/cc15iNmd.s 			page 3


 115 0014 0630     		adds	r0, r0, #6
 116 0016 B5EEC08A 		vcmpe.f32	s16, #0
 117 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 118 001e F0EEC08A 		vabs.f32	s17, s0
 119 0022 0FDB     		blt	.L16
 120 0024 9FED0F0A 		vldr.32	s0, .L18
 121 0028 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 122 002c B0EE680A 		vmov.f32	s0, s17
 123 0030 2046     		mov	r0, r4
 124 0032 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 125 0036 84ED058A 		vstr.32	s16, [r4, #20]
 126 003a 84ED048A 		vstr.32	s16, [r4, #16]
 127 003e BDEC028B 		vldm	sp!, {d8}
 128 0042 10BD     		pop	{r4, pc}
 129              	.L16:
 130 0044 B0EE680A 		vmov.f32	s0, s17
 131 0048 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 132 004c 9FED050A 		vldr.32	s0, .L18
 133 0050 2046     		mov	r0, r4
 134 0052 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 135 0056 84ED058A 		vstr.32	s16, [r4, #20]
 136 005a 84ED048A 		vstr.32	s16, [r4, #16]
 137 005e BDEC028B 		vldm	sp!, {d8}
 138 0062 10BD     		pop	{r4, pc}
 139              	.L19:
 140              		.align	2
 141              	.L18:
 142 0064 00000000 		.word	0
 143              		.size	_ZN7Spindle6SetRpmEf, .-_ZN7Spindle6SetRpmEf
 144              		.section	.text._ZN7Spindle7TurnOffEv,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	_ZN7Spindle7TurnOffEv
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	_ZN7Spindle7TurnOffEv, %function
 153              	_ZN7Spindle7TurnOffEv:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156 0000 10B5     		push	{r4, lr}
 157 0002 2DED028B 		vpush.64	{d8}
 158 0006 9FED098A 		vldr.32	s16, .L22
 159 000a 0446     		mov	r4, r0
 160 000c B0EE480A 		vmov.f32	s0, s16
 161 0010 0630     		adds	r0, r0, #6
 162 0012 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 163 0016 B0EE480A 		vmov.f32	s0, s16
 164 001a 2046     		mov	r0, r4
 165 001c FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 166 0020 84ED048A 		vstr.32	s16, [r4, #16]
 167 0024 BDEC028B 		vldm	sp!, {d8}
 168 0028 10BD     		pop	{r4, pc}
 169              	.L23:
 170 002a 00BF     		.align	2
 171              	.L22:
ARM GAS  /tmp/cc15iNmd.s 			page 4


 172 002c 00000000 		.word	0
 173              		.size	_ZN7Spindle7TurnOffEv, .-_ZN7Spindle7TurnOffEv
 174              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 175              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 176              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 177              	_ZL28cpu_irq_prev_interrupt_state:
 178 0000 00       		.space	1
 179              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 180              		.align	2
 181              		.type	_ZL32cpu_irq_critical_section_counter, %object
 182              		.size	_ZL32cpu_irq_critical_section_counter, 4
 183              	_ZL32cpu_irq_critical_section_counter:
 184 0000 00000000 		.space	4
 185              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
