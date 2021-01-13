ARM GAS  /tmp/ccttgJLP.s 			page 1


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
  13              		.file	"sleepmgr.c"
  14              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
  15              		.align	2
  16              		.type	cpu_irq_critical_section_counter, %object
  17              		.size	cpu_irq_critical_section_counter, 4
  18              	cpu_irq_critical_section_counter:
  19 0000 00000000 		.space	4
  20              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
  21              		.type	cpu_irq_prev_interrupt_state, %object
  22              		.size	cpu_irq_prev_interrupt_state, 1
  23              	cpu_irq_prev_interrupt_state:
  24 0000 00       		.space	1
  25              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
