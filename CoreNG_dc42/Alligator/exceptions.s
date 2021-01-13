ARM GAS  /tmp/ccfuqdmB.s 			page 1


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
  11              		.file	"exceptions.c"
  12              		.section	.text.__halt,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	__halt, %function
  20              	__halt:
  21              		@ Volatile: function does not return.
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25              	.L2:
  26 0000 FEE7     		b	.L2
  27              		.size	__halt, .-__halt
  28              		.weak	CAN1_Handler
  29              		.thumb_set CAN1_Handler,__halt
  30              		.weak	CAN0_Handler
  31              		.thumb_set CAN0_Handler,__halt
  32              		.weak	EMAC_Handler
  33              		.thumb_set EMAC_Handler,__halt
  34              		.weak	TRNG_Handler
  35              		.thumb_set TRNG_Handler,__halt
  36              		.weak	UOTGHS_Handler
  37              		.thumb_set UOTGHS_Handler,__halt
  38              		.weak	DMAC_Handler
  39              		.thumb_set DMAC_Handler,__halt
  40              		.weak	DACC_Handler
  41              		.thumb_set DACC_Handler,__halt
  42              		.weak	ADC_Handler
  43              		.thumb_set ADC_Handler,__halt
  44              		.weak	PWM_Handler
  45              		.thumb_set PWM_Handler,__halt
  46              		.weak	TC8_Handler
  47              		.thumb_set TC8_Handler,__halt
  48              		.weak	TC7_Handler
  49              		.thumb_set TC7_Handler,__halt
  50              		.weak	TC6_Handler
  51              		.thumb_set TC6_Handler,__halt
  52              		.weak	TC5_Handler
  53              		.thumb_set TC5_Handler,__halt
  54              		.weak	TC4_Handler
  55              		.thumb_set TC4_Handler,__halt
  56              		.weak	TC3_Handler
  57              		.thumb_set TC3_Handler,__halt
ARM GAS  /tmp/ccfuqdmB.s 			page 2


  58              		.weak	TC2_Handler
  59              		.thumb_set TC2_Handler,__halt
  60              		.weak	TC1_Handler
  61              		.thumb_set TC1_Handler,__halt
  62              		.weak	TC0_Handler
  63              		.thumb_set TC0_Handler,__halt
  64              		.weak	SSC_Handler
  65              		.thumb_set SSC_Handler,__halt
  66              		.weak	SPI0_Handler
  67              		.thumb_set SPI0_Handler,__halt
  68              		.weak	TWI1_Handler
  69              		.thumb_set TWI1_Handler,__halt
  70              		.weak	TWI0_Handler
  71              		.thumb_set TWI0_Handler,__halt
  72              		.weak	HSMCI_Handler
  73              		.thumb_set HSMCI_Handler,__halt
  74              		.weak	USART3_Handler
  75              		.thumb_set USART3_Handler,__halt
  76              		.weak	USART2_Handler
  77              		.thumb_set USART2_Handler,__halt
  78              		.weak	USART1_Handler
  79              		.thumb_set USART1_Handler,__halt
  80              		.weak	USART0_Handler
  81              		.thumb_set USART0_Handler,__halt
  82              		.weak	PIOD_Handler
  83              		.thumb_set PIOD_Handler,__halt
  84              		.weak	PIOC_Handler
  85              		.thumb_set PIOC_Handler,__halt
  86              		.weak	PIOB_Handler
  87              		.thumb_set PIOB_Handler,__halt
  88              		.weak	PIOA_Handler
  89              		.thumb_set PIOA_Handler,__halt
  90              		.weak	SMC_Handler
  91              		.thumb_set SMC_Handler,__halt
  92              		.weak	UART_Handler
  93              		.thumb_set UART_Handler,__halt
  94              		.weak	EFC1_Handler
  95              		.thumb_set EFC1_Handler,__halt
  96              		.weak	EFC0_Handler
  97              		.thumb_set EFC0_Handler,__halt
  98              		.weak	PMC_Handler
  99              		.thumb_set PMC_Handler,__halt
 100              		.weak	WDT_Handler
 101              		.thumb_set WDT_Handler,__halt
 102              		.weak	RTT_Handler
 103              		.thumb_set RTT_Handler,__halt
 104              		.weak	RTC_Handler
 105              		.thumb_set RTC_Handler,__halt
 106              		.weak	RSTC_Handler
 107              		.thumb_set RSTC_Handler,__halt
 108              		.weak	SUPC_Handler
 109              		.thumb_set SUPC_Handler,__halt
 110              		.weak	DebugMon_Handler
 111              		.thumb_set DebugMon_Handler,__halt
 112              		.weak	PendSV_Handler
 113              		.thumb_set PendSV_Handler,__halt
 114              		.weak	SVC_Handler
ARM GAS  /tmp/ccfuqdmB.s 			page 3


 115              		.thumb_set SVC_Handler,__halt
 116              		.weak	UsageFault_Handler
 117              		.thumb_set UsageFault_Handler,__halt
 118              		.weak	BusFault_Handler
 119              		.thumb_set BusFault_Handler,__halt
 120              		.weak	MemManage_Handler
 121              		.thumb_set MemManage_Handler,__halt
 122              		.weak	HardFault_Handler
 123              		.thumb_set HardFault_Handler,__halt
 124              		.weak	NMI_Handler
 125              		.thumb_set NMI_Handler,__halt
 126 0002 00BF     		.section	.text.SysTick_Handler,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	SysTick_Handler
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu softvfp
 134              		.type	SysTick_Handler, %function
 135              	SysTick_Handler:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138 0000 08B5     		push	{r3, lr}
 139 0002 FFF7FEFF 		bl	sysTickHook
 140 0006 00B1     		cbz	r0, .L7
 141 0008 08BD     		pop	{r3, pc}
 142              	.L7:
 143 000a 0348     		ldr	r0, .L8
 144 000c FFF7FEFF 		bl	wdt_restart
 145 0010 BDE80840 		pop	{r3, lr}
 146 0014 FFF7FEBF 		b	TimeTick_Increment
 147              	.L9:
 148              		.align	2
 149              	.L8:
 150 0018 501A0E40 		.word	1074666064
 151              		.size	SysTick_Handler, .-SysTick_Handler
 152              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 153              		.align	2
 154              		.type	cpu_irq_critical_section_counter, %object
 155              		.size	cpu_irq_critical_section_counter, 4
 156              	cpu_irq_critical_section_counter:
 157 0000 00000000 		.space	4
 158              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 159              		.type	cpu_irq_prev_interrupt_state, %object
 160              		.size	cpu_irq_prev_interrupt_state, 1
 161              	cpu_irq_prev_interrupt_state:
 162 0000 00       		.space	1
 163              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
