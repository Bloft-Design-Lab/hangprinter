ARM GAS  /tmp/ccb7oT7Z.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"DueFlashStorage.cpp"
  12              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  13              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  14              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  15              	_ZL28cpu_irq_prev_interrupt_state:
  16 0000 00       		.space	1
  17              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  18              		.align	2
  19              		.type	_ZL32cpu_irq_critical_section_counter, %object
  20              		.size	_ZL32cpu_irq_critical_section_counter, 4
  21              	_ZL32cpu_irq_critical_section_counter:
  22 0000 00000000 		.space	4
  23              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
