ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccybXDZ0.s 			page 1


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
  13              		.file	"Tacho.cpp"
  14              		.text
  15              		.section	.text._Z12FanInterrupt17CallbackParameter,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z12FanInterrupt17CallbackParameter
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z12FanInterrupt17CallbackParameter, %function
  24              	_Z12FanInterrupt17CallbackParameter:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0368     		ldr	r3, [r0]
  29 0002 0133     		adds	r3, r3, #1
  30 0004 202B     		cmp	r3, #32
  31 0006 0360     		str	r3, [r0]
  32 0008 00D0     		beq	.L4
  33 000a 7047     		bx	lr
  34              	.L4:
  35 000c 044B     		ldr	r3, .L5
  36 000e D3F89020 		ldr	r2, [r3, #144]
  37 0012 4368     		ldr	r3, [r0, #4]
  38 0014 0021     		movs	r1, #0
  39 0016 D31A     		subs	r3, r2, r3
  40 0018 8360     		str	r3, [r0, #8]
  41 001a 0160     		str	r1, [r0]
  42 001c 4260     		str	r2, [r0, #4]
  43 001e 7047     		bx	lr
  44              	.L6:
  45              		.align	2
  46              	.L5:
  47 0020 00000940 		.word	1074331648
  48              		.size	_Z12FanInterrupt17CallbackParameter, .-_Z12FanInterrupt17CallbackParameter
  49              		.section	.text._ZN5TachoC2Ev,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	_ZN5TachoC2Ev
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	_ZN5TachoC2Ev, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccybXDZ0.s 			page 2


  58              	_ZN5TachoC2Ev:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 0022     		movs	r2, #0
  63 0002 FF21     		movs	r1, #255
  64 0004 4260     		str	r2, [r0, #4]
  65 0006 0173     		strb	r1, [r0, #12]
  66 0008 0260     		str	r2, [r0]
  67 000a 8260     		str	r2, [r0, #8]
  68 000c 7047     		bx	lr
  69              		.size	_ZN5TachoC2Ev, .-_ZN5TachoC2Ev
  70              		.global	_ZN5TachoC1Ev
  71              		.thumb_set _ZN5TachoC1Ev,_ZN5TachoC2Ev
  72 000e 00BF     		.section	.text._ZN5Tacho4InitEh,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	_ZN5Tacho4InitEh
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu fpv4-sp-d16
  80              		.type	_ZN5Tacho4InitEh, %function
  81              	_ZN5Tacho4InitEh:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84 0000 FF29     		cmp	r1, #255
  85 0002 0173     		strb	r1, [r0, #12]
  86 0004 0FD0     		beq	.L8
  87 0006 10B5     		push	{r4, lr}
  88 0008 0446     		mov	r4, r0
  89 000a 40F2DC52 		movw	r2, #1500
  90 000e 0846     		mov	r0, r1
  91 0010 0121     		movs	r1, #1
  92 0012 FFF7FEFF 		bl	pinModeDuet
  93 0016 2346     		mov	r3, r4
  94 0018 207B     		ldrb	r0, [r4, #12]	@ zero_extendqisi2
  95 001a 0349     		ldr	r1, .L13
  96 001c 0422     		movs	r2, #4
  97 001e BDE81040 		pop	{r4, lr}
  98 0022 FFF7FEBF 		b	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
  99              	.L8:
 100 0026 7047     		bx	lr
 101              	.L14:
 102              		.align	2
 103              	.L13:
 104 0028 00000000 		.word	_Z12FanInterrupt17CallbackParameter
 105              		.size	_ZN5Tacho4InitEh, .-_ZN5Tacho4InitEh
 106              		.section	.text._ZNK5Tacho6GetRPMEv,"ax",%progbits
 107              		.align	1
 108              		.p2align 2,,3
 109              		.global	_ZNK5Tacho6GetRPMEv
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu fpv4-sp-d16
 114              		.type	_ZNK5Tacho6GetRPMEv, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccybXDZ0.s 			page 3


 115              	_ZNK5Tacho6GetRPMEv:
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118              		@ link register save eliminated.
 119 0000 8368     		ldr	r3, [r0, #8]
 120 0002 63B1     		cbz	r3, .L18
 121 0004 074B     		ldr	r3, .L19
 122 0006 084A     		ldr	r2, .L19+4
 123 0008 D3F89030 		ldr	r3, [r3, #144]
 124 000c 4168     		ldr	r1, [r0, #4]
 125 000e 5B1A     		subs	r3, r3, r1
 126 0010 9342     		cmp	r3, r2
 127 0012 04D8     		bhi	.L18
 128 0014 8368     		ldr	r3, [r0, #8]
 129 0016 0548     		ldr	r0, .L19+8
 130 0018 B0FBF3F0 		udiv	r0, r0, r3
 131 001c 7047     		bx	lr
 132              	.L18:
 133 001e 0020     		movs	r0, #0
 134 0020 7047     		bx	lr
 135              	.L20:
 136 0022 00BF     		.align	2
 137              	.L19:
 138 0024 00000940 		.word	1074331648
 139 0028 53EA2A00 		.word	2812499
 140 002c 00E9A435 		.word	900000000
 141              		.size	_ZNK5Tacho6GetRPMEv, .-_ZNK5Tacho6GetRPMEv
 142              		.section	.text._ZN5Tacho9InterruptEv,"ax",%progbits
 143              		.align	1
 144              		.p2align 2,,3
 145              		.global	_ZN5Tacho9InterruptEv
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu fpv4-sp-d16
 150              		.type	_ZN5Tacho9InterruptEv, %function
 151              	_ZN5Tacho9InterruptEv:
 152              		@ args = 0, pretend = 0, frame = 0
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154              		@ link register save eliminated.
 155 0000 0368     		ldr	r3, [r0]
 156 0002 0133     		adds	r3, r3, #1
 157 0004 202B     		cmp	r3, #32
 158 0006 0360     		str	r3, [r0]
 159 0008 08D1     		bne	.L21
 160 000a 054B     		ldr	r3, .L23
 161 000c D3F89020 		ldr	r2, [r3, #144]
 162 0010 4368     		ldr	r3, [r0, #4]
 163 0012 0021     		movs	r1, #0
 164 0014 D31A     		subs	r3, r2, r3
 165 0016 8360     		str	r3, [r0, #8]
 166 0018 0160     		str	r1, [r0]
 167 001a 4260     		str	r2, [r0, #4]
 168              	.L21:
 169 001c 7047     		bx	lr
 170              	.L24:
 171 001e 00BF     		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccybXDZ0.s 			page 4


 172              	.L23:
 173 0020 00000940 		.word	1074331648
 174              		.size	_ZN5Tacho9InterruptEv, .-_ZN5Tacho9InterruptEv
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
