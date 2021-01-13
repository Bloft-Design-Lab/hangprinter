ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwjIIoB.s 			page 1


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
  14              		.text
  15              		.section	.text.Dummy_Handler,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	Dummy_Handler
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	Dummy_Handler, %function
  24              	Dummy_Handler:
  25              		@ Volatile: function does not return.
  26              		@ args = 0, pretend = 0, frame = 0
  27              		@ frame_needed = 0, uses_anonymous_args = 0
  28              		@ link register save eliminated.
  29              	.L2:
  30 0000 FEE7     		b	.L2
  31              		.size	Dummy_Handler, .-Dummy_Handler
  32              		.weak	UART1_Handler
  33              		.thumb_set UART1_Handler,Dummy_Handler
  34              		.weak	GMAC_Handler
  35              		.thumb_set GMAC_Handler,Dummy_Handler
  36              		.weak	AES_Handler
  37              		.thumb_set AES_Handler,Dummy_Handler
  38              		.weak	CAN1_Handler
  39              		.thumb_set CAN1_Handler,Dummy_Handler
  40              		.weak	CAN0_Handler
  41              		.thumb_set CAN0_Handler,Dummy_Handler
  42              		.weak	PWM_Handler
  43              		.thumb_set PWM_Handler,Dummy_Handler
  44              		.weak	UDP_Handler
  45              		.thumb_set UDP_Handler,Dummy_Handler
  46              		.weak	ARM_Handler
  47              		.thumb_set ARM_Handler,Dummy_Handler
  48              		.weak	ACC_Handler
  49              		.thumb_set ACC_Handler,Dummy_Handler
  50              		.weak	DACC_Handler
  51              		.thumb_set DACC_Handler,Dummy_Handler
  52              		.weak	AFEC1_Handler
  53              		.thumb_set AFEC1_Handler,Dummy_Handler
  54              		.weak	AFEC0_Handler
  55              		.thumb_set AFEC0_Handler,Dummy_Handler
  56              		.weak	TC8_Handler
  57              		.thumb_set TC8_Handler,Dummy_Handler
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwjIIoB.s 			page 2


  58              		.weak	TC7_Handler
  59              		.thumb_set TC7_Handler,Dummy_Handler
  60              		.weak	TC6_Handler
  61              		.thumb_set TC6_Handler,Dummy_Handler
  62              		.weak	TC5_Handler
  63              		.thumb_set TC5_Handler,Dummy_Handler
  64              		.weak	TC4_Handler
  65              		.thumb_set TC4_Handler,Dummy_Handler
  66              		.weak	TC3_Handler
  67              		.thumb_set TC3_Handler,Dummy_Handler
  68              		.weak	TC2_Handler
  69              		.thumb_set TC2_Handler,Dummy_Handler
  70              		.weak	TC1_Handler
  71              		.thumb_set TC1_Handler,Dummy_Handler
  72              		.weak	TC0_Handler
  73              		.thumb_set TC0_Handler,Dummy_Handler
  74              		.weak	DMAC_Handler
  75              		.thumb_set DMAC_Handler,Dummy_Handler
  76              		.weak	SPI_Handler
  77              		.thumb_set SPI_Handler,Dummy_Handler
  78              		.weak	TWI1_Handler
  79              		.thumb_set TWI1_Handler,Dummy_Handler
  80              		.weak	TWI0_Handler
  81              		.thumb_set TWI0_Handler,Dummy_Handler
  82              		.weak	HSMCI_Handler
  83              		.thumb_set HSMCI_Handler,Dummy_Handler
  84              		.weak	USART1_Handler
  85              		.thumb_set USART1_Handler,Dummy_Handler
  86              		.weak	USART0_Handler
  87              		.thumb_set USART0_Handler,Dummy_Handler
  88              		.weak	PIOE_Handler
  89              		.thumb_set PIOE_Handler,Dummy_Handler
  90              		.weak	PIOD_Handler
  91              		.thumb_set PIOD_Handler,Dummy_Handler
  92              		.weak	PIOC_Handler
  93              		.thumb_set PIOC_Handler,Dummy_Handler
  94              		.weak	PIOB_Handler
  95              		.thumb_set PIOB_Handler,Dummy_Handler
  96              		.weak	PIOA_Handler
  97              		.thumb_set PIOA_Handler,Dummy_Handler
  98              		.weak	SMC_Handler
  99              		.thumb_set SMC_Handler,Dummy_Handler
 100              		.weak	UART0_Handler
 101              		.thumb_set UART0_Handler,Dummy_Handler
 102              		.weak	EFC_Handler
 103              		.thumb_set EFC_Handler,Dummy_Handler
 104              		.weak	PMC_Handler
 105              		.thumb_set PMC_Handler,Dummy_Handler
 106              		.weak	WDT_Handler
 107              		.thumb_set WDT_Handler,Dummy_Handler
 108              		.weak	RTT_Handler
 109              		.thumb_set RTT_Handler,Dummy_Handler
 110              		.weak	RTC_Handler
 111              		.thumb_set RTC_Handler,Dummy_Handler
 112              		.weak	RSTC_Handler
 113              		.thumb_set RSTC_Handler,Dummy_Handler
 114              		.weak	SUPC_Handler
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwjIIoB.s 			page 3


 115              		.thumb_set SUPC_Handler,Dummy_Handler
 116              		.weak	DebugMon_Handler
 117              		.thumb_set DebugMon_Handler,Dummy_Handler
 118              		.weak	UsageFault_Handler
 119              		.thumb_set UsageFault_Handler,Dummy_Handler
 120              		.weak	BusFault_Handler
 121              		.thumb_set BusFault_Handler,Dummy_Handler
 122              		.weak	MemManage_Handler
 123              		.thumb_set MemManage_Handler,Dummy_Handler
 124              		.weak	HardFault_Handler
 125              		.thumb_set HardFault_Handler,Dummy_Handler
 126              		.weak	NMI_Handler
 127              		.thumb_set NMI_Handler,Dummy_Handler
 128 0002 00BF     		.section	.text.vApplicationTickHook,"ax",%progbits
 129              		.align	1
 130              		.p2align 2,,3
 131              		.global	vApplicationTickHook
 132              		.syntax unified
 133              		.thumb
 134              		.thumb_func
 135              		.fpu fpv4-sp-d16
 136              		.type	vApplicationTickHook, %function
 137              	vApplicationTickHook:
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 0, uses_anonymous_args = 0
 140 0000 08B5     		push	{r3, lr}
 141 0002 FFF7FEFF 		bl	sysTickHook
 142 0006 BDE80840 		pop	{r3, lr}
 143 000a FFF7FEBF 		b	TimeTick_Increment
 144              		.size	vApplicationTickHook, .-vApplicationTickHook
 145 000e 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 146              		.align	2
 147              		.type	cpu_irq_critical_section_counter, %object
 148              		.size	cpu_irq_critical_section_counter, 4
 149              	cpu_irq_critical_section_counter:
 150 0000 00000000 		.space	4
 151              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 152              		.type	cpu_irq_prev_interrupt_state, %object
 153              		.size	cpu_irq_prev_interrupt_state, 1
 154              	cpu_irq_prev_interrupt_state:
 155 0000 00       		.space	1
 156              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
