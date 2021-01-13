ARM GAS  /tmp/ccg1Lobh.s 			page 1


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
  13              		.file	"exceptions.c"
  14              		.section	.text.Dummy_Handler,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	Dummy_Handler
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	Dummy_Handler, %function
  23              	Dummy_Handler:
  24              		@ Volatile: function does not return.
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28              	.L2:
  29 0000 FEE7     		b	.L2
  30              		.size	Dummy_Handler, .-Dummy_Handler
  31              		.weak	UART1_Handler
  32              		.thumb_set UART1_Handler,Dummy_Handler
  33              		.weak	GMAC_Handler
  34              		.thumb_set GMAC_Handler,Dummy_Handler
  35              		.weak	AES_Handler
  36              		.thumb_set AES_Handler,Dummy_Handler
  37              		.weak	CAN1_Handler
  38              		.thumb_set CAN1_Handler,Dummy_Handler
  39              		.weak	CAN0_Handler
  40              		.thumb_set CAN0_Handler,Dummy_Handler
  41              		.weak	PWM_Handler
  42              		.thumb_set PWM_Handler,Dummy_Handler
  43              		.weak	UDP_Handler
  44              		.thumb_set UDP_Handler,Dummy_Handler
  45              		.weak	ARM_Handler
  46              		.thumb_set ARM_Handler,Dummy_Handler
  47              		.weak	ACC_Handler
  48              		.thumb_set ACC_Handler,Dummy_Handler
  49              		.weak	DACC_Handler
  50              		.thumb_set DACC_Handler,Dummy_Handler
  51              		.weak	AFEC1_Handler
  52              		.thumb_set AFEC1_Handler,Dummy_Handler
  53              		.weak	AFEC0_Handler
  54              		.thumb_set AFEC0_Handler,Dummy_Handler
  55              		.weak	TC8_Handler
  56              		.thumb_set TC8_Handler,Dummy_Handler
  57              		.weak	TC7_Handler
ARM GAS  /tmp/ccg1Lobh.s 			page 2


  58              		.thumb_set TC7_Handler,Dummy_Handler
  59              		.weak	TC6_Handler
  60              		.thumb_set TC6_Handler,Dummy_Handler
  61              		.weak	TC5_Handler
  62              		.thumb_set TC5_Handler,Dummy_Handler
  63              		.weak	TC4_Handler
  64              		.thumb_set TC4_Handler,Dummy_Handler
  65              		.weak	TC3_Handler
  66              		.thumb_set TC3_Handler,Dummy_Handler
  67              		.weak	TC2_Handler
  68              		.thumb_set TC2_Handler,Dummy_Handler
  69              		.weak	TC1_Handler
  70              		.thumb_set TC1_Handler,Dummy_Handler
  71              		.weak	TC0_Handler
  72              		.thumb_set TC0_Handler,Dummy_Handler
  73              		.weak	DMAC_Handler
  74              		.thumb_set DMAC_Handler,Dummy_Handler
  75              		.weak	SPI_Handler
  76              		.thumb_set SPI_Handler,Dummy_Handler
  77              		.weak	TWI1_Handler
  78              		.thumb_set TWI1_Handler,Dummy_Handler
  79              		.weak	TWI0_Handler
  80              		.thumb_set TWI0_Handler,Dummy_Handler
  81              		.weak	HSMCI_Handler
  82              		.thumb_set HSMCI_Handler,Dummy_Handler
  83              		.weak	USART1_Handler
  84              		.thumb_set USART1_Handler,Dummy_Handler
  85              		.weak	USART0_Handler
  86              		.thumb_set USART0_Handler,Dummy_Handler
  87              		.weak	PIOE_Handler
  88              		.thumb_set PIOE_Handler,Dummy_Handler
  89              		.weak	PIOD_Handler
  90              		.thumb_set PIOD_Handler,Dummy_Handler
  91              		.weak	PIOC_Handler
  92              		.thumb_set PIOC_Handler,Dummy_Handler
  93              		.weak	PIOB_Handler
  94              		.thumb_set PIOB_Handler,Dummy_Handler
  95              		.weak	PIOA_Handler
  96              		.thumb_set PIOA_Handler,Dummy_Handler
  97              		.weak	SMC_Handler
  98              		.thumb_set SMC_Handler,Dummy_Handler
  99              		.weak	UART0_Handler
 100              		.thumb_set UART0_Handler,Dummy_Handler
 101              		.weak	EFC_Handler
 102              		.thumb_set EFC_Handler,Dummy_Handler
 103              		.weak	PMC_Handler
 104              		.thumb_set PMC_Handler,Dummy_Handler
 105              		.weak	WDT_Handler
 106              		.thumb_set WDT_Handler,Dummy_Handler
 107              		.weak	RTT_Handler
 108              		.thumb_set RTT_Handler,Dummy_Handler
 109              		.weak	RTC_Handler
 110              		.thumb_set RTC_Handler,Dummy_Handler
 111              		.weak	RSTC_Handler
 112              		.thumb_set RSTC_Handler,Dummy_Handler
 113              		.weak	SUPC_Handler
 114              		.thumb_set SUPC_Handler,Dummy_Handler
ARM GAS  /tmp/ccg1Lobh.s 			page 3


 115              		.weak	DebugMon_Handler
 116              		.thumb_set DebugMon_Handler,Dummy_Handler
 117              		.weak	UsageFault_Handler
 118              		.thumb_set UsageFault_Handler,Dummy_Handler
 119              		.weak	BusFault_Handler
 120              		.thumb_set BusFault_Handler,Dummy_Handler
 121              		.weak	MemManage_Handler
 122              		.thumb_set MemManage_Handler,Dummy_Handler
 123              		.weak	HardFault_Handler
 124              		.thumb_set HardFault_Handler,Dummy_Handler
 125              		.weak	NMI_Handler
 126              		.thumb_set NMI_Handler,Dummy_Handler
 127 0002 00BF     		.section	.text.vApplicationTickHook,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.global	vApplicationTickHook
 131              		.syntax unified
 132              		.thumb
 133              		.thumb_func
 134              		.fpu fpv4-sp-d16
 135              		.type	vApplicationTickHook, %function
 136              	vApplicationTickHook:
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139 0000 08B5     		push	{r3, lr}
 140 0002 FFF7FEFF 		bl	sysTickHook
 141 0006 BDE80840 		pop	{r3, lr}
 142 000a FFF7FEBF 		b	TimeTick_Increment
 143              		.size	vApplicationTickHook, .-vApplicationTickHook
 144 000e 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 145              		.align	2
 146              		.type	cpu_irq_critical_section_counter, %object
 147              		.size	cpu_irq_critical_section_counter, 4
 148              	cpu_irq_critical_section_counter:
 149 0000 00000000 		.space	4
 150              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 151              		.type	cpu_irq_prev_interrupt_state, %object
 152              		.size	cpu_irq_prev_interrupt_state, 1
 153              	cpu_irq_prev_interrupt_state:
 154 0000 00       		.space	1
 155              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
