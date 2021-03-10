ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccA4oWGj.s 			page 1


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
  13              		.file	"DriverMode.cpp"
  14              		.text
  15              		.section	.text._Z19TranslateDriverModej,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z19TranslateDriverModej
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z19TranslateDriverModej, %function
  24              	_Z19TranslateDriverModej:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0328     		cmp	r0, #3
  29 0002 9ABF     		itte	ls
  30 0004 024B     		ldrls	r3, .L5
  31 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
  32 000a 0248     		ldrhi	r0, .L5+4
  33 000c 7047     		bx	lr
  34              	.L6:
  35 000e 00BF     		.align	2
  36              	.L5:
  37 0010 00000000 		.word	.LANCHOR0
  38 0014 00000000 		.word	.LC0
  39              		.size	_Z19TranslateDriverModej, .-_Z19TranslateDriverModej
  40              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  41              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  42              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  43              	_ZL28cpu_irq_prev_interrupt_state:
  44 0000 00       		.space	1
  45              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  46              		.align	2
  47              		.type	_ZL32cpu_irq_critical_section_counter, %object
  48              		.size	_ZL32cpu_irq_critical_section_counter, 4
  49              	_ZL32cpu_irq_critical_section_counter:
  50 0000 00000000 		.space	4
  51              		.section	.rodata._Z19TranslateDriverModej.str1.4,"aMS",%progbits,1
  52              		.align	2
  53              	.LC0:
  54 0000 756E6B6E 		.ascii	"unknown\000"
  54      6F776E00 
  55              		.section	.rodata._ZL17DriverModeStrings,"a",%progbits
  56              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccA4oWGj.s 			page 2


  57              		.set	.LANCHOR0,. + 0
  58              		.type	_ZL17DriverModeStrings, %object
  59              		.size	_ZL17DriverModeStrings, 20
  60              	_ZL17DriverModeStrings:
  61 0000 00000000 		.word	.LC1
  62 0004 14000000 		.word	.LC2
  63 0008 24000000 		.word	.LC3
  64 000c 30000000 		.word	.LC4
  65 0010 00000000 		.word	.LC0
  66              		.section	.rodata.str1.4,"aMS",%progbits,1
  67              		.align	2
  68              	.LC1:
  69 0000 636F6E73 		.ascii	"constant off-time\000"
  69      74616E74 
  69      206F6666 
  69      2D74696D 
  69      6500
  70 0012 0000     		.space	2
  71              	.LC2:
  72 0014 72616E64 		.ascii	"random off-time\000"
  72      6F6D206F 
  72      66662D74 
  72      696D6500 
  73              	.LC3:
  74 0024 73707265 		.ascii	"spreadCycle\000"
  74      61644379 
  74      636C6500 
  75              	.LC4:
  76 0030 73746561 		.ascii	"stealthChop\000"
  76      6C746843 
  76      686F7000 
  77              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
