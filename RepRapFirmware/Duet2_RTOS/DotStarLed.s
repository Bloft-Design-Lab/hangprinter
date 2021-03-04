ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSQT2X6.s 			page 1


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
  13              		.file	"DotStarLed.cpp"
  14              		.text
  15              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  16              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  17              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  18              	_ZL28cpu_irq_prev_interrupt_state:
  19 0000 00       		.space	1
  20              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  21              		.align	2
  22              		.type	_ZL32cpu_irq_critical_section_counter, %object
  23              		.size	_ZL32cpu_irq_critical_section_counter, 4
  24              	_ZL32cpu_irq_critical_section_counter:
  25 0000 00000000 		.space	4
  26              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
