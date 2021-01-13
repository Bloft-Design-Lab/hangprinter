ARM GAS  /tmp/ccK4lfHX.s 			page 1


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
  14              		.section	.text._ZN17GCodeMachineStateC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN17GCodeMachineStateC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN17GCodeMachineStateC2Ev, %function
  23              	_ZN17GCodeMachineStateC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 10B4     		push	{r4}
  28 0002 047E     		ldrb	r4, [r0, #24]	@ zero_extendqisi2
  29 0004 417E     		ldrb	r1, [r0, #25]	@ zero_extendqisi2
  30 0006 0A4A     		ldr	r2, .L4
  31 0008 4260     		str	r2, [r0, #4]	@ float
  32 000a 04F08804 		and	r4, r4, #136
  33 000e 0022     		movs	r2, #0
  34 0010 01F0FC01 		and	r1, r1, #252
  35 0014 62F3C714 		bfi	r4, r2, #7, #1
  36 0018 62F38201 		bfi	r1, r2, #2, #1
  37 001c 0476     		strb	r4, [r0, #24]
  38 001e 0260     		str	r2, [r0]
  39 0020 C0E90222 		strd	r2, r2, [r0, #8]
  40 0024 0261     		str	r2, [r0, #16]
  41 0026 0275     		strb	r2, [r0, #20]
  42 0028 4176     		strb	r1, [r0, #25]
  43 002a 5DF8044B 		ldr	r4, [sp], #4
  44 002e 7047     		bx	lr
  45              	.L5:
  46              		.align	2
  47              	.L4:
  48 0030 01004842 		.word	1112014849
  49              		.size	_ZN17GCodeMachineStateC2Ev, .-_ZN17GCodeMachineStateC2Ev
  50              		.global	_ZN17GCodeMachineStateC1Ev
  51              		.thumb_set _ZN17GCodeMachineStateC1Ev,_ZN17GCodeMachineStateC2Ev
  52              		.section	.text._ZN17GCodeMachineState8AllocateEv,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	_ZN17GCodeMachineState8AllocateEv
  56              		.syntax unified
  57              		.thumb
ARM GAS  /tmp/ccK4lfHX.s 			page 2


  58              		.thumb_func
  59              		.fpu fpv4-sp-d16
  60              		.type	_ZN17GCodeMachineState8AllocateEv, %function
  61              	_ZN17GCodeMachineState8AllocateEv:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64 0000 38B5     		push	{r3, r4, r5, lr}
  65 0002 134B     		ldr	r3, .L10
  66 0004 1868     		ldr	r0, [r3]
  67 0006 30B1     		cbz	r0, .L7
  68 0008 0268     		ldr	r2, [r0]
  69 000a 1A60     		str	r2, [r3]
  70 000c 0023     		movs	r3, #0
  71 000e C0E90333 		strd	r3, r3, [r0, #12]
  72 0012 0375     		strb	r3, [r0, #20]
  73 0014 38BD     		pop	{r3, r4, r5, pc}
  74              	.L7:
  75 0016 1C20     		movs	r0, #28
  76 0018 FFF7FEFF 		bl	_Znwj
  77 001c 417E     		ldrb	r1, [r0, #25]	@ zero_extendqisi2
  78 001e 0D4C     		ldr	r4, .L10+4
  79 0020 027E     		ldrb	r2, [r0, #24]	@ zero_extendqisi2
  80 0022 0D4D     		ldr	r5, .L10+8
  81 0024 4560     		str	r5, [r0, #4]	@ float
  82 0026 0023     		movs	r3, #0
  83 0028 01F0FC01 		and	r1, r1, #252
  84 002c 63F38201 		bfi	r1, r3, #2, #1
  85 0030 4176     		strb	r1, [r0, #25]
  86 0032 2168     		ldr	r1, [r4]
  87 0034 0360     		str	r3, [r0]
  88 0036 02F08802 		and	r2, r2, #136
  89 003a 63F3C712 		bfi	r2, r3, #7, #1
  90 003e 0131     		adds	r1, r1, #1
  91 0040 8360     		str	r3, [r0, #8]
  92 0042 C0E90333 		strd	r3, r3, [r0, #12]
  93 0046 0375     		strb	r3, [r0, #20]
  94 0048 0276     		strb	r2, [r0, #24]
  95 004a 2160     		str	r1, [r4]
  96 004c 38BD     		pop	{r3, r4, r5, pc}
  97              	.L11:
  98 004e 00BF     		.align	2
  99              	.L10:
 100 0050 00000000 		.word	.LANCHOR0
 101 0054 00000000 		.word	.LANCHOR1
 102 0058 01004842 		.word	1112014849
 103              		.size	_ZN17GCodeMachineState8AllocateEv, .-_ZN17GCodeMachineState8AllocateEv
 104              		.section	.text._ZN17GCodeMachineState7ReleaseEPS_,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	_ZN17GCodeMachineState7ReleaseEPS_
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 112              		.type	_ZN17GCodeMachineState7ReleaseEPS_, %function
 113              	_ZN17GCodeMachineState7ReleaseEPS_:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccK4lfHX.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 10B5     		push	{r4, lr}
 117 0002 0446     		mov	r4, r0
 118 0004 8068     		ldr	r0, [r0, #8]
 119 0006 18B1     		cbz	r0, .L13
 120 0008 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 121 000c 0023     		movs	r3, #0
 122 000e A360     		str	r3, [r4, #8]
 123              	.L13:
 124 0010 024B     		ldr	r3, .L18
 125 0012 1A68     		ldr	r2, [r3]
 126 0014 2260     		str	r2, [r4]
 127 0016 1C60     		str	r4, [r3]
 128 0018 10BD     		pop	{r4, pc}
 129              	.L19:
 130 001a 00BF     		.align	2
 131              	.L18:
 132 001c 00000000 		.word	.LANCHOR0
 133              		.size	_ZN17GCodeMachineState7ReleaseEPS_, .-_ZN17GCodeMachineState7ReleaseEPS_
 134              		.section	.text._ZN17GCodeMachineState11GetNumInUseEv,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	_ZN17GCodeMachineState11GetNumInUseEv
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	_ZN17GCodeMachineState11GetNumInUseEv, %function
 143              	_ZN17GCodeMachineState11GetNumInUseEv:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 044B     		ldr	r3, .L27
 148 0002 054A     		ldr	r2, .L27+4
 149 0004 1B68     		ldr	r3, [r3]
 150 0006 1068     		ldr	r0, [r2]
 151 0008 1BB1     		cbz	r3, .L20
 152              	.L22:
 153 000a 1B68     		ldr	r3, [r3]
 154 000c 0138     		subs	r0, r0, #1
 155 000e 002B     		cmp	r3, #0
 156 0010 FBD1     		bne	.L22
 157              	.L20:
 158 0012 7047     		bx	lr
 159              	.L28:
 160              		.align	2
 161              	.L27:
 162 0014 00000000 		.word	.LANCHOR0
 163 0018 00000000 		.word	.LANCHOR1
 164              		.size	_ZN17GCodeMachineState11GetNumInUseEv, .-_ZN17GCodeMachineState11GetNumInUseEv
 165              		.global	_ZN17GCodeMachineState12numAllocatedE
 166              		.global	_ZN17GCodeMachineState8freeListE
 167              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 168              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 169              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 170              	_ZL28cpu_irq_prev_interrupt_state:
 171 0000 00       		.space	1
ARM GAS  /tmp/ccK4lfHX.s 			page 4


 172              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 173              		.align	2
 174              		.type	_ZL32cpu_irq_critical_section_counter, %object
 175              		.size	_ZL32cpu_irq_critical_section_counter, 4
 176              	_ZL32cpu_irq_critical_section_counter:
 177 0000 00000000 		.space	4
 178              		.section	.bss._ZN17GCodeMachineState12numAllocatedE,"aw",%nobits
 179              		.align	2
 180              		.set	.LANCHOR1,. + 0
 181              		.type	_ZN17GCodeMachineState12numAllocatedE, %object
 182              		.size	_ZN17GCodeMachineState12numAllocatedE, 4
 183              	_ZN17GCodeMachineState12numAllocatedE:
 184 0000 00000000 		.space	4
 185              		.section	.bss._ZN17GCodeMachineState8freeListE,"aw",%nobits
 186              		.align	2
 187              		.set	.LANCHOR0,. + 0
 188              		.type	_ZN17GCodeMachineState8freeListE, %object
 189              		.size	_ZN17GCodeMachineState8freeListE, 4
 190              	_ZN17GCodeMachineState8freeListE:
 191 0000 00000000 		.space	4
 192              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
