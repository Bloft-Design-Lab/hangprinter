ARM GAS  /tmp/ccbybMZ2.s 			page 1


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
  13              		.file	"DhtSensor.cpp"
  14              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  15              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  16              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  17              	_ZL28cpu_irq_prev_interrupt_state:
  18 0000 00       		.space	1
  19              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  20              		.align	2
  21              		.type	_ZL32cpu_irq_critical_section_counter, %object
  22              		.size	_ZL32cpu_irq_critical_section_counter, 4
  23              	_ZL32cpu_irq_critical_section_counter:
  24 0000 00000000 		.space	4
  25              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
  26              		.align	2
  27              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
  28              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
  29              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
  30 0000 00000000 		.space	4
  31              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
