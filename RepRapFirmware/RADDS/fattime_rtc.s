ARM GAS  /tmp/cc8fiX2b.s 			page 1


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
  11              		.file	"fattime_rtc.cpp"
  12              		.section	.text.get_fattime,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	get_fattime
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	get_fattime, %function
  21              	get_fattime:
  22              		@ args = 0, pretend = 0, frame = 40
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 134B     		ldr	r3, .L7
  26 0004 8AB0     		sub	sp, sp, #40
  27 0006 1C68     		ldr	r4, [r3]	@ unaligned
  28 0008 2046     		mov	r0, r4
  29 000a FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
  30 000e 10B9     		cbnz	r0, .L6
  31 0010 1048     		ldr	r0, .L7+4
  32 0012 0AB0     		add	sp, sp, #40
  33              		@ sp needed
  34 0014 10BD     		pop	{r4, pc}
  35              	.L6:
  36 0016 2046     		mov	r0, r4
  37 0018 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
  38 001c 01A9     		add	r1, sp, #4
  39 001e 0090     		str	r0, [sp]
  40 0020 6846     		mov	r0, sp
  41 0022 FFF7FEFF 		bl	gmtime_r
  42 0026 039B     		ldr	r3, [sp, #12]
  43 0028 049A     		ldr	r2, [sp, #16]
  44 002a D802     		lsls	r0, r3, #11
  45 002c 029B     		ldr	r3, [sp, #8]
  46 002e 40EA0240 		orr	r0, r0, r2, lsl #16
  47 0032 0199     		ldr	r1, [sp, #4]
  48 0034 069A     		ldr	r2, [sp, #24]
  49 0036 40EA4310 		orr	r0, r0, r3, lsl #5
  50 003a 059B     		ldr	r3, [sp, #20]
  51 003c 40EA6100 		orr	r0, r0, r1, asr #1
  52 0040 503A     		subs	r2, r2, #80
  53 0042 40EA4260 		orr	r0, r0, r2, lsl #25
  54 0046 0133     		adds	r3, r3, #1
  55 0048 40EA4350 		orr	r0, r0, r3, lsl #21
  56 004c 0AB0     		add	sp, sp, #40
  57              		@ sp needed
ARM GAS  /tmp/cc8fiX2b.s 			page 2


  58 004e 10BD     		pop	{r4, pc}
  59              	.L8:
  60              		.align	2
  61              	.L7:
  62 0050 00000000 		.word	reprap
  63 0054 01002100 		.word	2162689
  64              		.size	get_fattime, .-get_fattime
  65              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  66              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  67              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  68              	_ZL28cpu_irq_prev_interrupt_state:
  69 0000 00       		.space	1
  70              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  71              		.align	2
  72              		.type	_ZL32cpu_irq_critical_section_counter, %object
  73              		.size	_ZL32cpu_irq_critical_section_counter, 4
  74              	_ZL32cpu_irq_critical_section_counter:
  75 0000 00000000 		.space	4
  76              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
  77              		.align	2
  78              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
  79              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
  80              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
  81 0000 00000000 		.space	4
  82              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
