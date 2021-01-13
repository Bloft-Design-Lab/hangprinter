ARM GAS  /tmp/cc22Gr9F.s 			page 1


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
  11              		.file	"RestorePoint.cpp"
  12              		.section	.text._ZN12RestorePointC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN12RestorePointC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN12RestorePointC2Ev, %function
  21              	_ZN12RestorePointC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0022     		movs	r2, #0
  26 0002 4FF0FF31 		mov	r1, #-1
  27 0006 10B4     		push	{r4}
  28 0008 064C     		ldr	r4, .L3
  29 000a 0260     		str	r2, [r0]	@ float
  30 000c 8461     		str	r4, [r0, #24]	@ float
  31 000e 4260     		str	r2, [r0, #4]	@ float
  32 0010 8260     		str	r2, [r0, #8]	@ float
  33 0012 C260     		str	r2, [r0, #12]	@ float
  34 0014 0261     		str	r2, [r0, #16]	@ float
  35 0016 4261     		str	r2, [r0, #20]	@ float
  36 0018 C261     		str	r2, [r0, #28]	@ float
  37 001a 0262     		str	r2, [r0, #32]	@ float
  38 001c 4162     		str	r1, [r0, #36]
  39 001e 8162     		str	r1, [r0, #40]
  40 0020 10BC     		pop	{r4}
  41 0022 7047     		bx	lr
  42              	.L4:
  43              		.align	2
  44              	.L3:
  45 0024 01004842 		.word	1112014849
  46              		.size	_ZN12RestorePointC2Ev, .-_ZN12RestorePointC2Ev
  47              		.global	_ZN12RestorePointC1Ev
  48              		.thumb_set _ZN12RestorePointC1Ev,_ZN12RestorePointC2Ev
  49              		.section	.text._ZN12RestorePoint4InitEv,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	_ZN12RestorePoint4InitEv
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu softvfp
  57              		.type	_ZN12RestorePoint4InitEv, %function
ARM GAS  /tmp/cc22Gr9F.s 			page 2


  58              	_ZN12RestorePoint4InitEv:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 0023     		movs	r3, #0
  63 0002 4FF0FF32 		mov	r2, #-1
  64 0006 0649     		ldr	r1, .L6
  65 0008 0360     		str	r3, [r0]	@ float
  66 000a 8161     		str	r1, [r0, #24]	@ float
  67 000c 4360     		str	r3, [r0, #4]	@ float
  68 000e 8360     		str	r3, [r0, #8]	@ float
  69 0010 C360     		str	r3, [r0, #12]	@ float
  70 0012 0361     		str	r3, [r0, #16]	@ float
  71 0014 4361     		str	r3, [r0, #20]	@ float
  72 0016 C361     		str	r3, [r0, #28]	@ float
  73 0018 0362     		str	r3, [r0, #32]	@ float
  74 001a 4262     		str	r2, [r0, #36]
  75 001c 8262     		str	r2, [r0, #40]
  76 001e 7047     		bx	lr
  77              	.L7:
  78              		.align	2
  79              	.L6:
  80 0020 01004842 		.word	1112014849
  81              		.size	_ZN12RestorePoint4InitEv, .-_ZN12RestorePoint4InitEv
  82              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  83              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  84              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  85              	_ZL28cpu_irq_prev_interrupt_state:
  86 0000 00       		.space	1
  87              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  88              		.align	2
  89              		.type	_ZL32cpu_irq_critical_section_counter, %object
  90              		.size	_ZL32cpu_irq_critical_section_counter, 4
  91              	_ZL32cpu_irq_critical_section_counter:
  92 0000 00000000 		.space	4
  93              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
