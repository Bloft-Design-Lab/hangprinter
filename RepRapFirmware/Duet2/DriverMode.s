ARM GAS  /tmp/ccxuWl9z.s 			page 1


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
  14              		.section	.text._Z19TranslateDriverModej,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z19TranslateDriverModej
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z19TranslateDriverModej, %function
  23              	_Z19TranslateDriverModej:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0328     		cmp	r0, #3
  28 0002 9ABF     		itte	ls
  29 0004 024B     		ldrls	r3, .L5
  30 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
  31 000a 0248     		ldrhi	r0, .L5+4
  32 000c 7047     		bx	lr
  33              	.L6:
  34 000e 00BF     		.align	2
  35              	.L5:
  36 0010 00000000 		.word	.LANCHOR0
  37 0014 00000000 		.word	.LC0
  38              		.size	_Z19TranslateDriverModej, .-_Z19TranslateDriverModej
  39              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  40              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  41              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  42              	_ZL28cpu_irq_prev_interrupt_state:
  43 0000 00       		.space	1
  44              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  45              		.align	2
  46              		.type	_ZL32cpu_irq_critical_section_counter, %object
  47              		.size	_ZL32cpu_irq_critical_section_counter, 4
  48              	_ZL32cpu_irq_critical_section_counter:
  49 0000 00000000 		.space	4
  50              		.section	.rodata._Z19TranslateDriverModej.str1.4,"aMS",%progbits,1
  51              		.align	2
  52              	.LC0:
  53 0000 756E6B6E 		.ascii	"unknown\000"
  53      6F776E00 
  54              		.section	.rodata._ZL17DriverModeStrings,"a",%progbits
  55              		.align	2
  56              		.set	.LANCHOR0,. + 0
ARM GAS  /tmp/ccxuWl9z.s 			page 2


  57              		.type	_ZL17DriverModeStrings, %object
  58              		.size	_ZL17DriverModeStrings, 20
  59              	_ZL17DriverModeStrings:
  60 0000 00000000 		.word	.LC1
  61 0004 14000000 		.word	.LC2
  62 0008 24000000 		.word	.LC3
  63 000c 30000000 		.word	.LC4
  64 0010 00000000 		.word	.LC0
  65              		.section	.rodata.str1.4,"aMS",%progbits,1
  66              		.align	2
  67              	.LC1:
  68 0000 636F6E73 		.ascii	"constant off-time\000"
  68      74616E74 
  68      206F6666 
  68      2D74696D 
  68      6500
  69 0012 0000     		.space	2
  70              	.LC2:
  71 0014 72616E64 		.ascii	"random off-time\000"
  71      6F6D206F 
  71      66662D74 
  71      696D6500 
  72              	.LC3:
  73 0024 73707265 		.ascii	"spreadCycle\000"
  73      61644379 
  73      636C6500 
  74              	.LC4:
  75 0030 73746561 		.ascii	"stealthChop\000"
  75      6C746843 
  75      686F7000 
  76              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
