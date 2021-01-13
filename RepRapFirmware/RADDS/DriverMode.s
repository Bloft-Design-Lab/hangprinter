ARM GAS  /tmp/ccOnPQfx.s 			page 1


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
  11              		.file	"DriverMode.cpp"
  12              		.section	.text._Z19TranslateDriverModej,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_Z19TranslateDriverModej
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_Z19TranslateDriverModej, %function
  21              	_Z19TranslateDriverModej:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0328     		cmp	r0, #3
  26 0002 9ABF     		itte	ls
  27 0004 024B     		ldrls	r3, .L5
  28 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
  29 000a 0248     		ldrhi	r0, .L5+4
  30 000c 7047     		bx	lr
  31              	.L6:
  32 000e 00BF     		.align	2
  33              	.L5:
  34 0010 00000000 		.word	.LANCHOR0
  35 0014 00000000 		.word	.LC0
  36              		.size	_Z19TranslateDriverModej, .-_Z19TranslateDriverModej
  37              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  38              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  39              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  40              	_ZL28cpu_irq_prev_interrupt_state:
  41 0000 00       		.space	1
  42              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  43              		.align	2
  44              		.type	_ZL32cpu_irq_critical_section_counter, %object
  45              		.size	_ZL32cpu_irq_critical_section_counter, 4
  46              	_ZL32cpu_irq_critical_section_counter:
  47 0000 00000000 		.space	4
  48              		.section	.rodata._Z19TranslateDriverModej.str1.4,"aMS",%progbits,1
  49              		.align	2
  50              	.LC0:
  51 0000 756E6B6E 		.ascii	"unknown\000"
  51      6F776E00 
  52              		.section	.rodata._ZL17DriverModeStrings,"a",%progbits
  53              		.align	2
  54              		.set	.LANCHOR0,. + 0
  55              		.type	_ZL17DriverModeStrings, %object
  56              		.size	_ZL17DriverModeStrings, 20
ARM GAS  /tmp/ccOnPQfx.s 			page 2


  57              	_ZL17DriverModeStrings:
  58 0000 00000000 		.word	.LC1
  59 0004 14000000 		.word	.LC2
  60 0008 24000000 		.word	.LC3
  61 000c 30000000 		.word	.LC4
  62 0010 00000000 		.word	.LC0
  63              		.section	.rodata.str1.4,"aMS",%progbits,1
  64              		.align	2
  65              	.LC1:
  66 0000 636F6E73 		.ascii	"constant off-time\000"
  66      74616E74 
  66      206F6666 
  66      2D74696D 
  66      6500
  67 0012 0000     		.space	2
  68              	.LC2:
  69 0014 72616E64 		.ascii	"random off-time\000"
  69      6F6D206F 
  69      66662D74 
  69      696D6500 
  70              	.LC3:
  71 0024 73707265 		.ascii	"spreadCycle\000"
  71      61644379 
  71      636C6500 
  72              	.LC4:
  73 0030 73746561 		.ascii	"stealthChop\000"
  73      6C746843 
  73      686F7000 
  74              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
