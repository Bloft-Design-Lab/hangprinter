ARM GAS  /tmp/ccJQdRk3.s 			page 1


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
  11              		.file	"exceptions.c"
  12              		.section	.text.Dummy_Handler,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	Dummy_Handler
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	Dummy_Handler, %function
  21              	Dummy_Handler:
  22              		@ Volatile: function does not return.
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26              	.L2:
  27 0000 FEE7     		b	.L2
  28              		.size	Dummy_Handler, .-Dummy_Handler
  29              		.weak	UDP_Handler
  30              		.thumb_set UDP_Handler,Dummy_Handler
  31              		.weak	ACC_Handler
  32              		.thumb_set ACC_Handler,Dummy_Handler
  33              		.weak	CRCCU_Handler
  34              		.thumb_set CRCCU_Handler,Dummy_Handler
  35              		.weak	PWM_Handler
  36              		.thumb_set PWM_Handler,Dummy_Handler
  37              		.weak	DACC_Handler
  38              		.thumb_set DACC_Handler,Dummy_Handler
  39              		.weak	ADC_Handler
  40              		.thumb_set ADC_Handler,Dummy_Handler
  41              		.weak	TC5_Handler
  42              		.thumb_set TC5_Handler,Dummy_Handler
  43              		.weak	TC4_Handler
  44              		.thumb_set TC4_Handler,Dummy_Handler
  45              		.weak	TC3_Handler
  46              		.thumb_set TC3_Handler,Dummy_Handler
  47              		.weak	TC2_Handler
  48              		.thumb_set TC2_Handler,Dummy_Handler
  49              		.weak	TC1_Handler
  50              		.thumb_set TC1_Handler,Dummy_Handler
  51              		.weak	TC0_Handler
  52              		.thumb_set TC0_Handler,Dummy_Handler
  53              		.weak	DMAC_Handler
  54              		.thumb_set DMAC_Handler,Dummy_Handler
  55              		.weak	SSC_Handler
  56              		.thumb_set SSC_Handler,Dummy_Handler
  57              		.weak	SPI_Handler
ARM GAS  /tmp/ccJQdRk3.s 			page 2


  58              		.thumb_set SPI_Handler,Dummy_Handler
  59              		.weak	TWI1_Handler
  60              		.thumb_set TWI1_Handler,Dummy_Handler
  61              		.weak	TWI0_Handler
  62              		.thumb_set TWI0_Handler,Dummy_Handler
  63              		.weak	HSMCI_Handler
  64              		.thumb_set HSMCI_Handler,Dummy_Handler
  65              		.weak	USART1_Handler
  66              		.thumb_set USART1_Handler,Dummy_Handler
  67              		.weak	USART0_Handler
  68              		.thumb_set USART0_Handler,Dummy_Handler
  69              		.weak	PIOC_Handler
  70              		.thumb_set PIOC_Handler,Dummy_Handler
  71              		.weak	PIOB_Handler
  72              		.thumb_set PIOB_Handler,Dummy_Handler
  73              		.weak	PIOA_Handler
  74              		.thumb_set PIOA_Handler,Dummy_Handler
  75              		.weak	UART1_Handler
  76              		.thumb_set UART1_Handler,Dummy_Handler
  77              		.weak	UART0_Handler
  78              		.thumb_set UART0_Handler,Dummy_Handler
  79              		.weak	EFC0_Handler
  80              		.thumb_set EFC0_Handler,Dummy_Handler
  81              		.weak	PMC_Handler
  82              		.thumb_set PMC_Handler,Dummy_Handler
  83              		.weak	WDT_Handler
  84              		.thumb_set WDT_Handler,Dummy_Handler
  85              		.weak	RTT_Handler
  86              		.thumb_set RTT_Handler,Dummy_Handler
  87              		.weak	RTC_Handler
  88              		.thumb_set RTC_Handler,Dummy_Handler
  89              		.weak	RSTC_Handler
  90              		.thumb_set RSTC_Handler,Dummy_Handler
  91              		.weak	SUPC_Handler
  92              		.thumb_set SUPC_Handler,Dummy_Handler
  93              		.weak	DebugMon_Handler
  94              		.thumb_set DebugMon_Handler,Dummy_Handler
  95              		.weak	PendSV_Handler
  96              		.thumb_set PendSV_Handler,Dummy_Handler
  97              		.weak	SVC_Handler
  98              		.thumb_set SVC_Handler,Dummy_Handler
  99              		.weak	UsageFault_Handler
 100              		.thumb_set UsageFault_Handler,Dummy_Handler
 101              		.weak	BusFault_Handler
 102              		.thumb_set BusFault_Handler,Dummy_Handler
 103              		.weak	MemManage_Handler
 104              		.thumb_set MemManage_Handler,Dummy_Handler
 105              		.weak	HardFault_Handler
 106              		.thumb_set HardFault_Handler,Dummy_Handler
 107              		.weak	NMI_Handler
 108              		.thumb_set NMI_Handler,Dummy_Handler
 109 0002 00BF     		.section	.text.SysTick_Handler,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	SysTick_Handler
 113              		.syntax unified
 114              		.thumb
ARM GAS  /tmp/ccJQdRk3.s 			page 3


 115              		.thumb_func
 116              		.fpu softvfp
 117              		.type	SysTick_Handler, %function
 118              	SysTick_Handler:
 119              		@ args = 0, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121 0000 08B5     		push	{r3, lr}
 122 0002 FFF7FEFF 		bl	sysTickHook
 123 0006 00B1     		cbz	r0, .L7
 124 0008 08BD     		pop	{r3, pc}
 125              	.L7:
 126 000a 0348     		ldr	r0, .L8
 127 000c FFF7FEFF 		bl	wdt_restart
 128 0010 BDE80840 		pop	{r3, lr}
 129 0014 FFF7FEBF 		b	TimeTick_Increment
 130              	.L9:
 131              		.align	2
 132              	.L8:
 133 0018 50140E40 		.word	1074664528
 134              		.size	SysTick_Handler, .-SysTick_Handler
 135              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 136              		.align	2
 137              		.type	cpu_irq_critical_section_counter, %object
 138              		.size	cpu_irq_critical_section_counter, 4
 139              	cpu_irq_critical_section_counter:
 140 0000 00000000 		.space	4
 141              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 142              		.type	cpu_irq_prev_interrupt_state, %object
 143              		.size	cpu_irq_prev_interrupt_state, 1
 144              	cpu_irq_prev_interrupt_state:
 145 0000 00       		.space	1
 146              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
