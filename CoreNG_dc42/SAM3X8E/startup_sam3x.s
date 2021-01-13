ARM GAS  /tmp/ccdulDiY.s 			page 1


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
  11              		.file	"startup_sam3x.c"
  12              		.section	.text.Reset_Handler,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	Reset_Handler
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	Reset_Handler, %function
  21              	Reset_Handler:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 2949     		ldr	r1, .L16
  25 0002 2A4A     		ldr	r2, .L16+4
  26 0004 38B5     		push	{r3, r4, r5, lr}
  27 0006 9142     		cmp	r1, r2
  28 0008 0ED0     		beq	.L5
  29 000a 2948     		ldr	r0, .L16+8
  30 000c 8242     		cmp	r2, r0
  31 000e 0BD2     		bcs	.L5
  32 0010 D343     		mvns	r3, r2
  33 0012 0344     		add	r3, r3, r0
  34 0014 23F00303 		bic	r3, r3, #3
  35 0018 0433     		adds	r3, r3, #4
  36 001a 1344     		add	r3, r3, r2
  37              	.L6:
  38 001c 51F8040B 		ldr	r0, [r1], #4
  39 0020 42F8040B 		str	r0, [r2], #4
  40 0024 9A42     		cmp	r2, r3
  41 0026 F9D1     		bne	.L6
  42              	.L5:
  43 0028 224A     		ldr	r2, .L16+12
  44 002a 2349     		ldr	r1, .L16+16
  45 002c 8A42     		cmp	r2, r1
  46 002e 0AD2     		bcs	.L4
  47 0030 D343     		mvns	r3, r2
  48 0032 0020     		movs	r0, #0
  49 0034 0B44     		add	r3, r3, r1
  50 0036 23F00303 		bic	r3, r3, #3
  51 003a 0433     		adds	r3, r3, #4
  52 003c 1344     		add	r3, r3, r2
  53              	.L9:
  54 003e 42F8040B 		str	r0, [r2], #4
  55 0042 9A42     		cmp	r2, r3
  56 0044 FBD1     		bne	.L9
  57              	.L4:
ARM GAS  /tmp/ccdulDiY.s 			page 2


  58 0046 1D4B     		ldr	r3, .L16+20
  59 0048 1D4A     		ldr	r2, .L16+24
  60 004a 23F06041 		bic	r1, r3, #-536870912
  61 004e 03F16043 		add	r3, r3, #-536870912
  62 0052 21F07F01 		bic	r1, r1, #127
  63 0056 B3F5801F 		cmp	r3, #1048576
  64 005a 9160     		str	r1, [r2, #8]
  65 005c 03D2     		bcs	.L8
  66 005e 9368     		ldr	r3, [r2, #8]
  67 0060 43F00053 		orr	r3, r3, #536870912
  68 0064 9360     		str	r3, [r2, #8]
  69              	.L8:
  70 0066 FFF7FEFF 		bl	SystemInit
  71 006a FFF7FEFF 		bl	UrgentInit
  72 006e FFF7FEFF 		bl	__libc_init_array
  73 0072 FFF7FEFF 		bl	init
  74 0076 134B     		ldr	r3, .L16+28
  75 0078 134A     		ldr	r2, .L16+32
  76 007a 1B68     		ldr	r3, [r3]
  77 007c A2FB0323 		umull	r2, r3, r2, r3
  78 0080 9B09     		lsrs	r3, r3, #6
  79 0082 013B     		subs	r3, r3, #1
  80 0084 B3F1807F 		cmp	r3, #16777216
  81 0088 0DD2     		bcs	.L10
  82 008a F025     		movs	r5, #240
  83 008c 0020     		movs	r0, #0
  84 008e 0721     		movs	r1, #7
  85 0090 0E4A     		ldr	r2, .L16+36
  86 0092 0B4C     		ldr	r4, .L16+24
  87 0094 5360     		str	r3, [r2, #4]
  88 0096 84F82350 		strb	r5, [r4, #35]
  89 009a BDE83840 		pop	{r3, r4, r5, lr}
  90 009e 9060     		str	r0, [r2, #8]
  91 00a0 1160     		str	r1, [r2]
  92 00a2 FFF7FEBF 		b	AppMain
  93              	.L10:
  94              	.L13:
  95 00a6 FEE7     		b	.L13
  96              	.L17:
  97              		.align	2
  98              	.L16:
  99 00a8 00000000 		.word	_etext
 100 00ac 00000000 		.word	_srelocate
 101 00b0 00000000 		.word	_erelocate
 102 00b4 00000000 		.word	_szero
 103 00b8 00000000 		.word	_ezero
 104 00bc 00000000 		.word	_sfixed
 105 00c0 00ED00E0 		.word	-536810240
 106 00c4 00000000 		.word	SystemCoreClock
 107 00c8 D34D6210 		.word	274877907
 108 00cc 10E000E0 		.word	-536813552
 109              		.size	Reset_Handler, .-Reset_Handler
 110              		.global	exception_table
 111              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 112              		.align	2
 113              		.type	cpu_irq_critical_section_counter, %object
 114              		.size	cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccdulDiY.s 			page 3


 115              	cpu_irq_critical_section_counter:
 116 0000 00000000 		.space	4
 117              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 118              		.type	cpu_irq_prev_interrupt_state, %object
 119              		.size	cpu_irq_prev_interrupt_state, 1
 120              	cpu_irq_prev_interrupt_state:
 121 0000 00       		.space	1
 122              		.section	.vectors,"aw",%progbits
 123              		.align	2
 124              		.type	exception_table, %object
 125              		.size	exception_table, 244
 126              	exception_table:
 127 0000 00000000 		.word	_estack
 128 0004 00000000 		.word	Reset_Handler
 129 0008 00000000 		.word	NMI_Handler
 130 000c 00000000 		.word	HardFault_Handler
 131 0010 00000000 		.word	MemManage_Handler
 132 0014 00000000 		.word	BusFault_Handler
 133 0018 00000000 		.word	UsageFault_Handler
 134 001c 00000000 		.word	0
 135 0020 00000000 		.word	0
 136 0024 00000000 		.word	0
 137 0028 00000000 		.word	0
 138 002c 00000000 		.word	SVC_Handler
 139 0030 00000000 		.word	DebugMon_Handler
 140 0034 00000000 		.word	0
 141 0038 00000000 		.word	PendSV_Handler
 142 003c 00000000 		.word	SysTick_Handler
 143 0040 00000000 		.word	SUPC_Handler
 144 0044 00000000 		.word	RSTC_Handler
 145 0048 00000000 		.word	RTC_Handler
 146 004c 00000000 		.word	RTT_Handler
 147 0050 00000000 		.word	WDT_Handler
 148 0054 00000000 		.word	PMC_Handler
 149 0058 00000000 		.word	EFC0_Handler
 150 005c 00000000 		.word	EFC1_Handler
 151 0060 00000000 		.word	UART_Handler
 152 0064 00000000 		.word	SMC_Handler
 153 0068 00000000 		.word	0
 154 006c 00000000 		.word	PIOA_Handler
 155 0070 00000000 		.word	PIOB_Handler
 156 0074 00000000 		.word	PIOC_Handler
 157 0078 00000000 		.word	PIOD_Handler
 158 007c 00000000 		.word	0
 159 0080 00000000 		.word	0
 160 0084 00000000 		.word	USART0_Handler
 161 0088 00000000 		.word	USART1_Handler
 162 008c 00000000 		.word	USART2_Handler
 163 0090 00000000 		.word	USART3_Handler
 164 0094 00000000 		.word	HSMCI_Handler
 165 0098 00000000 		.word	TWI0_Handler
 166 009c 00000000 		.word	TWI1_Handler
 167 00a0 00000000 		.word	SPI0_Handler
 168 00a4 00000000 		.word	0
 169 00a8 00000000 		.word	SSC_Handler
 170 00ac 00000000 		.word	TC0_Handler
 171 00b0 00000000 		.word	TC1_Handler
ARM GAS  /tmp/ccdulDiY.s 			page 4


 172 00b4 00000000 		.word	TC2_Handler
 173 00b8 00000000 		.word	TC3_Handler
 174 00bc 00000000 		.word	TC4_Handler
 175 00c0 00000000 		.word	TC5_Handler
 176 00c4 00000000 		.word	TC6_Handler
 177 00c8 00000000 		.word	TC7_Handler
 178 00cc 00000000 		.word	TC8_Handler
 179 00d0 00000000 		.word	PWM_Handler
 180 00d4 00000000 		.word	ADC_Handler
 181 00d8 00000000 		.word	DACC_Handler
 182 00dc 00000000 		.word	DMAC_Handler
 183 00e0 00000000 		.word	UOTGHS_Handler
 184 00e4 00000000 		.word	TRNG_Handler
 185 00e8 00000000 		.word	EMAC_Handler
 186 00ec 00000000 		.word	CAN0_Handler
 187 00f0 00000000 		.word	CAN1_Handler
 188              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
