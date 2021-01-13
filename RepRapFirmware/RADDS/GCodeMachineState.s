ARM GAS  /tmp/cczK9dH5.s 			page 1


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
  11              		.file	"GCodeMachineState.cpp"
  12              		.section	.text._ZN17GCodeMachineStateC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN17GCodeMachineStateC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN17GCodeMachineStateC2Ev, %function
  21              	_ZN17GCodeMachineStateC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0022     		movs	r2, #0
  26 0002 30B4     		push	{r4, r5}
  27 0004 417E     		ldrb	r1, [r0, #25]	@ zero_extendqisi2
  28 0006 047E     		ldrb	r4, [r0, #24]	@ zero_extendqisi2
  29 0008 094D     		ldr	r5, .L3
  30 000a 04F08804 		and	r4, r4, #136
  31 000e 01F0FC01 		and	r1, r1, #252
  32 0012 62F3C714 		bfi	r4, r2, #7, #1
  33 0016 62F38201 		bfi	r1, r2, #2, #1
  34 001a 4560     		str	r5, [r0, #4]	@ float
  35 001c 0476     		strb	r4, [r0, #24]
  36 001e 0260     		str	r2, [r0]
  37 0020 8260     		str	r2, [r0, #8]
  38 0022 C260     		str	r2, [r0, #12]
  39 0024 0261     		str	r2, [r0, #16]
  40 0026 0275     		strb	r2, [r0, #20]
  41 0028 4176     		strb	r1, [r0, #25]
  42 002a 30BC     		pop	{r4, r5}
  43 002c 7047     		bx	lr
  44              	.L4:
  45 002e 00BF     		.align	2
  46              	.L3:
  47 0030 01004842 		.word	1112014849
  48              		.size	_ZN17GCodeMachineStateC2Ev, .-_ZN17GCodeMachineStateC2Ev
  49              		.global	_ZN17GCodeMachineStateC1Ev
  50              		.thumb_set _ZN17GCodeMachineStateC1Ev,_ZN17GCodeMachineStateC2Ev
  51              		.section	.text._ZN17GCodeMachineState8AllocateEv,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	_ZN17GCodeMachineState8AllocateEv
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  /tmp/cczK9dH5.s 			page 2


  58              		.fpu softvfp
  59              		.type	_ZN17GCodeMachineState8AllocateEv, %function
  60              	_ZN17GCodeMachineState8AllocateEv:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63 0000 1A4A     		ldr	r2, .L10
  64 0002 70B5     		push	{r4, r5, r6, lr}
  65 0004 1468     		ldr	r4, [r2]
  66 0006 3CB1     		cbz	r4, .L6
  67 0008 0023     		movs	r3, #0
  68 000a 2168     		ldr	r1, [r4]
  69 000c E360     		str	r3, [r4, #12]
  70 000e 2361     		str	r3, [r4, #16]
  71 0010 2375     		strb	r3, [r4, #20]
  72 0012 1160     		str	r1, [r2]
  73 0014 2046     		mov	r0, r4
  74 0016 70BD     		pop	{r4, r5, r6, pc}
  75              	.L6:
  76 0018 1C20     		movs	r0, #28
  77 001a FFF7FEFF 		bl	_Znwj
  78 001e 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
  79 0020 427E     		ldrb	r2, [r0, #25]	@ zero_extendqisi2
  80 0022 64F30003 		bfi	r3, r4, #0, #1
  81 0026 64F34103 		bfi	r3, r4, #1, #1
  82 002a 64F38203 		bfi	r3, r4, #2, #1
  83 002e 64F30413 		bfi	r3, r4, #4, #1
  84 0032 64F30002 		bfi	r2, r4, #0, #1
  85 0036 64F34513 		bfi	r3, r4, #5, #1
  86 003a 64F38613 		bfi	r3, r4, #6, #1
  87 003e 64F34102 		bfi	r2, r4, #1, #1
  88 0042 0460     		str	r4, [r0]
  89 0044 8460     		str	r4, [r0, #8]
  90 0046 C460     		str	r4, [r0, #12]
  91 0048 0461     		str	r4, [r0, #16]
  92 004a 0475     		strb	r4, [r0, #20]
  93 004c 64F3C713 		bfi	r3, r4, #7, #1
  94 0050 64F38202 		bfi	r2, r4, #2, #1
  95 0054 0446     		mov	r4, r0
  96 0056 064D     		ldr	r5, .L10+4
  97 0058 064E     		ldr	r6, .L10+8
  98 005a 2968     		ldr	r1, [r5]
  99 005c 4276     		strb	r2, [r0, #25]
 100 005e 0131     		adds	r1, r1, #1
 101 0060 4660     		str	r6, [r0, #4]	@ float
 102 0062 0376     		strb	r3, [r0, #24]
 103 0064 2960     		str	r1, [r5]
 104 0066 2046     		mov	r0, r4
 105 0068 70BD     		pop	{r4, r5, r6, pc}
 106              	.L11:
 107 006a 00BF     		.align	2
 108              	.L10:
 109 006c 00000000 		.word	.LANCHOR0
 110 0070 00000000 		.word	.LANCHOR1
 111 0074 01004842 		.word	1112014849
 112              		.size	_ZN17GCodeMachineState8AllocateEv, .-_ZN17GCodeMachineState8AllocateEv
 113              		.section	.text._ZN17GCodeMachineState7ReleaseEPS_,"ax",%progbits
 114              		.align	1
ARM GAS  /tmp/cczK9dH5.s 			page 3


 115              		.p2align 2,,3
 116              		.global	_ZN17GCodeMachineState7ReleaseEPS_
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu softvfp
 121              		.type	_ZN17GCodeMachineState7ReleaseEPS_, %function
 122              	_ZN17GCodeMachineState7ReleaseEPS_:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125 0000 10B5     		push	{r4, lr}
 126 0002 0446     		mov	r4, r0
 127 0004 8068     		ldr	r0, [r0, #8]
 128 0006 18B1     		cbz	r0, .L13
 129 0008 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 130 000c 0023     		movs	r3, #0
 131 000e A360     		str	r3, [r4, #8]
 132              	.L13:
 133 0010 024B     		ldr	r3, .L18
 134 0012 1A68     		ldr	r2, [r3]
 135 0014 2260     		str	r2, [r4]
 136 0016 1C60     		str	r4, [r3]
 137 0018 10BD     		pop	{r4, pc}
 138              	.L19:
 139 001a 00BF     		.align	2
 140              	.L18:
 141 001c 00000000 		.word	.LANCHOR0
 142              		.size	_ZN17GCodeMachineState7ReleaseEPS_, .-_ZN17GCodeMachineState7ReleaseEPS_
 143              		.section	.text._ZN17GCodeMachineState11GetNumInUseEv,"ax",%progbits
 144              		.align	1
 145              		.p2align 2,,3
 146              		.global	_ZN17GCodeMachineState11GetNumInUseEv
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu softvfp
 151              		.type	_ZN17GCodeMachineState11GetNumInUseEv, %function
 152              	_ZN17GCodeMachineState11GetNumInUseEv:
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155              		@ link register save eliminated.
 156 0000 044B     		ldr	r3, .L27
 157 0002 054A     		ldr	r2, .L27+4
 158 0004 1B68     		ldr	r3, [r3]
 159 0006 1068     		ldr	r0, [r2]
 160 0008 1BB1     		cbz	r3, .L20
 161              	.L22:
 162 000a 1B68     		ldr	r3, [r3]
 163 000c 0138     		subs	r0, r0, #1
 164 000e 002B     		cmp	r3, #0
 165 0010 FBD1     		bne	.L22
 166              	.L20:
 167 0012 7047     		bx	lr
 168              	.L28:
 169              		.align	2
 170              	.L27:
 171 0014 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/cczK9dH5.s 			page 4


 172 0018 00000000 		.word	.LANCHOR1
 173              		.size	_ZN17GCodeMachineState11GetNumInUseEv, .-_ZN17GCodeMachineState11GetNumInUseEv
 174              		.global	_ZN17GCodeMachineState12numAllocatedE
 175              		.global	_ZN17GCodeMachineState8freeListE
 176              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 177              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 178              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 179              	_ZL28cpu_irq_prev_interrupt_state:
 180 0000 00       		.space	1
 181              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 182              		.align	2
 183              		.type	_ZL32cpu_irq_critical_section_counter, %object
 184              		.size	_ZL32cpu_irq_critical_section_counter, 4
 185              	_ZL32cpu_irq_critical_section_counter:
 186 0000 00000000 		.space	4
 187              		.section	.bss._ZN17GCodeMachineState12numAllocatedE,"aw",%nobits
 188              		.align	2
 189              		.set	.LANCHOR1,. + 0
 190              		.type	_ZN17GCodeMachineState12numAllocatedE, %object
 191              		.size	_ZN17GCodeMachineState12numAllocatedE, 4
 192              	_ZN17GCodeMachineState12numAllocatedE:
 193 0000 00000000 		.space	4
 194              		.section	.bss._ZN17GCodeMachineState8freeListE,"aw",%nobits
 195              		.align	2
 196              		.set	.LANCHOR0,. + 0
 197              		.type	_ZN17GCodeMachineState8freeListE, %object
 198              		.size	_ZN17GCodeMachineState8freeListE, 4
 199              	_ZN17GCodeMachineState8freeListE:
 200 0000 00000000 		.space	4
 201              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
