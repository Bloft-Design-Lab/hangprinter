ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWvzASq.s 			page 1


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
  13              		.file	"GCodeMachineState.cpp"
  14              		.text
  15              		.section	.text._ZN17GCodeMachineStateC2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN17GCodeMachineStateC2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN17GCodeMachineStateC2Ev, %function
  24              	_ZN17GCodeMachineStateC2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 10B4     		push	{r4}
  29 0002 047E     		ldrb	r4, [r0, #24]	@ zero_extendqisi2
  30 0004 417E     		ldrb	r1, [r0, #25]	@ zero_extendqisi2
  31 0006 0A4A     		ldr	r2, .L4
  32 0008 4260     		str	r2, [r0, #4]	@ float
  33 000a 04F08804 		and	r4, r4, #136
  34 000e 0022     		movs	r2, #0
  35 0010 01F0FC01 		and	r1, r1, #252
  36 0014 62F3C714 		bfi	r4, r2, #7, #1
  37 0018 62F38201 		bfi	r1, r2, #2, #1
  38 001c 0476     		strb	r4, [r0, #24]
  39 001e 0260     		str	r2, [r0]
  40 0020 C0E90222 		strd	r2, r2, [r0, #8]
  41 0024 0261     		str	r2, [r0, #16]
  42 0026 0275     		strb	r2, [r0, #20]
  43 0028 4176     		strb	r1, [r0, #25]
  44 002a 5DF8044B 		ldr	r4, [sp], #4
  45 002e 7047     		bx	lr
  46              	.L5:
  47              		.align	2
  48              	.L4:
  49 0030 01004842 		.word	1112014849
  50              		.size	_ZN17GCodeMachineStateC2Ev, .-_ZN17GCodeMachineStateC2Ev
  51              		.global	_ZN17GCodeMachineStateC1Ev
  52              		.thumb_set _ZN17GCodeMachineStateC1Ev,_ZN17GCodeMachineStateC2Ev
  53              		.section	.text._ZN17GCodeMachineState8AllocateEv,"ax",%progbits
  54              		.align	1
  55              		.p2align 2,,3
  56              		.global	_ZN17GCodeMachineState8AllocateEv
  57              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWvzASq.s 			page 2


  58              		.thumb
  59              		.thumb_func
  60              		.fpu fpv4-sp-d16
  61              		.type	_ZN17GCodeMachineState8AllocateEv, %function
  62              	_ZN17GCodeMachineState8AllocateEv:
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65 0000 38B5     		push	{r3, r4, r5, lr}
  66 0002 134B     		ldr	r3, .L10
  67 0004 1868     		ldr	r0, [r3]
  68 0006 30B1     		cbz	r0, .L7
  69 0008 0268     		ldr	r2, [r0]
  70 000a 1A60     		str	r2, [r3]
  71 000c 0023     		movs	r3, #0
  72 000e C0E90333 		strd	r3, r3, [r0, #12]
  73 0012 0375     		strb	r3, [r0, #20]
  74 0014 38BD     		pop	{r3, r4, r5, pc}
  75              	.L7:
  76 0016 1C20     		movs	r0, #28
  77 0018 FFF7FEFF 		bl	_Znwj
  78 001c 417E     		ldrb	r1, [r0, #25]	@ zero_extendqisi2
  79 001e 0D4C     		ldr	r4, .L10+4
  80 0020 027E     		ldrb	r2, [r0, #24]	@ zero_extendqisi2
  81 0022 0D4D     		ldr	r5, .L10+8
  82 0024 4560     		str	r5, [r0, #4]	@ float
  83 0026 0023     		movs	r3, #0
  84 0028 01F0FC01 		and	r1, r1, #252
  85 002c 63F38201 		bfi	r1, r3, #2, #1
  86 0030 4176     		strb	r1, [r0, #25]
  87 0032 2168     		ldr	r1, [r4]
  88 0034 0360     		str	r3, [r0]
  89 0036 02F08802 		and	r2, r2, #136
  90 003a 63F3C712 		bfi	r2, r3, #7, #1
  91 003e 0131     		adds	r1, r1, #1
  92 0040 8360     		str	r3, [r0, #8]
  93 0042 C0E90333 		strd	r3, r3, [r0, #12]
  94 0046 0375     		strb	r3, [r0, #20]
  95 0048 0276     		strb	r2, [r0, #24]
  96 004a 2160     		str	r1, [r4]
  97 004c 38BD     		pop	{r3, r4, r5, pc}
  98              	.L11:
  99 004e 00BF     		.align	2
 100              	.L10:
 101 0050 00000000 		.word	.LANCHOR0
 102 0054 00000000 		.word	.LANCHOR1
 103 0058 01004842 		.word	1112014849
 104              		.size	_ZN17GCodeMachineState8AllocateEv, .-_ZN17GCodeMachineState8AllocateEv
 105              		.section	.text._ZN17GCodeMachineState7ReleaseEPS_,"ax",%progbits
 106              		.align	1
 107              		.p2align 2,,3
 108              		.global	_ZN17GCodeMachineState7ReleaseEPS_
 109              		.syntax unified
 110              		.thumb
 111              		.thumb_func
 112              		.fpu fpv4-sp-d16
 113              		.type	_ZN17GCodeMachineState7ReleaseEPS_, %function
 114              	_ZN17GCodeMachineState7ReleaseEPS_:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWvzASq.s 			page 3


 115              		@ args = 0, pretend = 0, frame = 0
 116              		@ frame_needed = 0, uses_anonymous_args = 0
 117 0000 10B5     		push	{r4, lr}
 118 0002 0446     		mov	r4, r0
 119 0004 8068     		ldr	r0, [r0, #8]
 120 0006 18B1     		cbz	r0, .L13
 121 0008 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 122 000c 0023     		movs	r3, #0
 123 000e A360     		str	r3, [r4, #8]
 124              	.L13:
 125 0010 024B     		ldr	r3, .L18
 126 0012 1A68     		ldr	r2, [r3]
 127 0014 2260     		str	r2, [r4]
 128 0016 1C60     		str	r4, [r3]
 129 0018 10BD     		pop	{r4, pc}
 130              	.L19:
 131 001a 00BF     		.align	2
 132              	.L18:
 133 001c 00000000 		.word	.LANCHOR0
 134              		.size	_ZN17GCodeMachineState7ReleaseEPS_, .-_ZN17GCodeMachineState7ReleaseEPS_
 135              		.section	.text._ZN17GCodeMachineState11GetNumInUseEv,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
 138              		.global	_ZN17GCodeMachineState11GetNumInUseEv
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv4-sp-d16
 143              		.type	_ZN17GCodeMachineState11GetNumInUseEv, %function
 144              	_ZN17GCodeMachineState11GetNumInUseEv:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147              		@ link register save eliminated.
 148 0000 044B     		ldr	r3, .L27
 149 0002 054A     		ldr	r2, .L27+4
 150 0004 1B68     		ldr	r3, [r3]
 151 0006 1068     		ldr	r0, [r2]
 152 0008 1BB1     		cbz	r3, .L20
 153              	.L22:
 154 000a 1B68     		ldr	r3, [r3]
 155 000c 0138     		subs	r0, r0, #1
 156 000e 002B     		cmp	r3, #0
 157 0010 FBD1     		bne	.L22
 158              	.L20:
 159 0012 7047     		bx	lr
 160              	.L28:
 161              		.align	2
 162              	.L27:
 163 0014 00000000 		.word	.LANCHOR0
 164 0018 00000000 		.word	.LANCHOR1
 165              		.size	_ZN17GCodeMachineState11GetNumInUseEv, .-_ZN17GCodeMachineState11GetNumInUseEv
 166              		.global	_ZN17GCodeMachineState12numAllocatedE
 167              		.global	_ZN17GCodeMachineState8freeListE
 168              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 169              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 170              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 171              	_ZL28cpu_irq_prev_interrupt_state:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWvzASq.s 			page 4


 172 0000 00       		.space	1
 173              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 174              		.align	2
 175              		.type	_ZL32cpu_irq_critical_section_counter, %object
 176              		.size	_ZL32cpu_irq_critical_section_counter, 4
 177              	_ZL32cpu_irq_critical_section_counter:
 178 0000 00000000 		.space	4
 179              		.section	.bss._ZN17GCodeMachineState12numAllocatedE,"aw",%nobits
 180              		.align	2
 181              		.set	.LANCHOR1,. + 0
 182              		.type	_ZN17GCodeMachineState12numAllocatedE, %object
 183              		.size	_ZN17GCodeMachineState12numAllocatedE, 4
 184              	_ZN17GCodeMachineState12numAllocatedE:
 185 0000 00000000 		.space	4
 186              		.section	.bss._ZN17GCodeMachineState8freeListE,"aw",%nobits
 187              		.align	2
 188              		.set	.LANCHOR0,. + 0
 189              		.type	_ZN17GCodeMachineState8freeListE, %object
 190              		.size	_ZN17GCodeMachineState8freeListE, 4
 191              	_ZN17GCodeMachineState8freeListE:
 192 0000 00000000 		.space	4
 193              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
