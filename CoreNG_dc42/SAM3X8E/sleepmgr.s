ARM GAS  /tmp/ccq8Ac4d.s 			page 1


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
  11              		.file	"sleepmgr.c"
  12              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
  13              		.align	2
  14              		.type	cpu_irq_critical_section_counter, %object
  15              		.size	cpu_irq_critical_section_counter, 4
  16              	cpu_irq_critical_section_counter:
  17 0000 00000000 		.space	4
  18              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
  19              		.type	cpu_irq_prev_interrupt_state, %object
  20              		.size	cpu_irq_prev_interrupt_state, 1
  21              	cpu_irq_prev_interrupt_state:
  22 0000 00       		.space	1
  23              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
