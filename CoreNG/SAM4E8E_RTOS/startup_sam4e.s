ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceB2d81.s 			page 1


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
  13              		.file	"startup_sam4e.c"
  14              		.text
  15              		.section	.text.Reset_Handler,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	Reset_Handler
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	Reset_Handler, %function
  24              	Reset_Handler:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 08B5     		push	{r3, lr}
  28 0002 254A     		ldr	r2, .L11
  29 0004 254B     		ldr	r3, .L11+4
  30 0006 9A42     		cmp	r2, r3
  31 0008 0ED0     		beq	.L2
  32 000a 2549     		ldr	r1, .L11+8
  33 000c 8B42     		cmp	r3, r1
  34 000e 0BD2     		bcs	.L2
  35 0010 181D     		adds	r0, r3, #4
  36 0012 0331     		adds	r1, r1, #3
  37 0014 091A     		subs	r1, r1, r0
  38 0016 21F00301 		bic	r1, r1, #3
  39 001a 0144     		add	r1, r1, r0
  40              	.L3:
  41 001c 52F8040B 		ldr	r0, [r2], #4
  42 0020 43F8040B 		str	r0, [r3], #4
  43 0024 8B42     		cmp	r3, r1
  44 0026 F9D1     		bne	.L3
  45              	.L2:
  46 0028 1E4B     		ldr	r3, .L11+12
  47 002a 1F4A     		ldr	r2, .L11+16
  48 002c 9342     		cmp	r3, r2
  49 002e 0AD2     		bcs	.L4
  50 0030 191D     		adds	r1, r3, #4
  51 0032 0332     		adds	r2, r2, #3
  52 0034 521A     		subs	r2, r2, r1
  53 0036 22F00302 		bic	r2, r2, #3
  54 003a 0A44     		add	r2, r2, r1
  55 003c 0021     		movs	r1, #0
  56              	.L5:
  57 003e 43F8041B 		str	r1, [r3], #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceB2d81.s 			page 2


  58 0042 9342     		cmp	r3, r2
  59 0044 FBD1     		bne	.L5
  60              	.L4:
  61 0046 194B     		ldr	r3, .L11+20
  62 0048 194A     		ldr	r2, .L11+24
  63 004a 23F07F03 		bic	r3, r3, #127
  64 004e 9360     		str	r3, [r2, #8]
  65              		.syntax unified
  66              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  67 0050 EFF31080 		MRS r0, primask
  68              	@ 0 "" 2
  69              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  70 0054 72B6     		cpsid i
  71              	@ 0 "" 2
  72              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  73 0056 BFF35F8F 		dmb
  74              	@ 0 "" 2
  75              		.thumb
  76              		.syntax unified
  77 005a 1649     		ldr	r1, .L11+28
  78 005c 0023     		movs	r3, #0
  79 005e 0B70     		strb	r3, [r1]
  80 0060 D2F88830 		ldr	r3, [r2, #136]
  81 0064 43F47003 		orr	r3, r3, #15728640
  82 0068 C2F88830 		str	r3, [r2, #136]
  83              		.syntax unified
  84              	@ 445 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  85 006c BFF34F8F 		dsb
  86              	@ 0 "" 2
  87              	@ 434 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  88 0070 BFF36F8F 		isb
  89              	@ 0 "" 2
  90              		.thumb
  91              		.syntax unified
  92 0074 20B9     		cbnz	r0, .L6
  93 0076 0123     		movs	r3, #1
  94 0078 0B70     		strb	r3, [r1]
  95              		.syntax unified
  96              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  97 007a BFF35F8F 		dmb
  98              	@ 0 "" 2
  99              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 100 007e 62B6     		cpsie i
 101              	@ 0 "" 2
 102              		.thumb
 103              		.syntax unified
 104              	.L6:
 105 0080 FFF7FEFF 		bl	SystemInit
 106 0084 FFF7FEFF 		bl	UrgentInit
 107 0088 FFF7FEFF 		bl	__libc_init_array
 108 008c FFF7FEFF 		bl	init
 109 0090 BDE80840 		pop	{r3, lr}
 110 0094 FFF7FEBF 		b	AppMain
 111              	.L12:
 112              		.align	2
 113              	.L11:
 114 0098 00000000 		.word	_etext
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceB2d81.s 			page 3


 115 009c 00000000 		.word	_srelocate
 116 00a0 00000000 		.word	_erelocate
 117 00a4 00000000 		.word	_szero
 118 00a8 00000000 		.word	_ezero
 119 00ac 00000000 		.word	_sfixed
 120 00b0 00ED00E0 		.word	-536810240
 121 00b4 00000000 		.word	g_interrupt_enabled
 122              		.size	Reset_Handler, .-Reset_Handler
 123              		.global	exception_table
 124              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 125              		.align	2
 126              		.type	cpu_irq_critical_section_counter, %object
 127              		.size	cpu_irq_critical_section_counter, 4
 128              	cpu_irq_critical_section_counter:
 129 0000 00000000 		.space	4
 130              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 131              		.type	cpu_irq_prev_interrupt_state, %object
 132              		.size	cpu_irq_prev_interrupt_state, 1
 133              	cpu_irq_prev_interrupt_state:
 134 0000 00       		.space	1
 135              		.section	.vectors,"a",%progbits
 136              		.align	2
 137              		.type	exception_table, %object
 138              		.size	exception_table, 248
 139              	exception_table:
 140 0000 00000000 		.word	_estack
 141 0004 00000000 		.word	Reset_Handler
 142 0008 00000000 		.word	NMI_Handler
 143 000c 00000000 		.word	HardFault_Handler
 144 0010 00000000 		.word	MemManage_Handler
 145 0014 00000000 		.word	BusFault_Handler
 146 0018 00000000 		.word	UsageFault_Handler
 147 001c 00000000 		.word	0
 148 0020 00000000 		.word	0
 149 0024 00000000 		.word	0
 150 0028 00000000 		.word	0
 151 002c 00000000 		.word	SVC_Handler
 152 0030 00000000 		.word	DebugMon_Handler
 153 0034 00000000 		.word	0
 154 0038 00000000 		.word	PendSV_Handler
 155 003c 00000000 		.word	SysTick_Handler
 156 0040 00000000 		.word	SUPC_Handler
 157 0044 00000000 		.word	RSTC_Handler
 158 0048 00000000 		.word	RTC_Handler
 159 004c 00000000 		.word	RTT_Handler
 160 0050 00000000 		.word	WDT_Handler
 161 0054 00000000 		.word	PMC_Handler
 162 0058 00000000 		.word	EFC_Handler
 163 005c 00000000 		.word	UART0_Handler
 164 0060 00000000 		.word	Dummy_Handler
 165 0064 00000000 		.word	PIOA_Handler
 166 0068 00000000 		.word	PIOB_Handler
 167 006c 00000000 		.word	PIOC_Handler
 168 0070 00000000 		.word	PIOD_Handler
 169 0074 00000000 		.word	PIOE_Handler
 170 0078 00000000 		.word	USART0_Handler
 171 007c 00000000 		.word	USART1_Handler
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceB2d81.s 			page 4


 172 0080 00000000 		.word	HSMCI_Handler
 173 0084 00000000 		.word	TWI0_Handler
 174 0088 00000000 		.word	TWI1_Handler
 175 008c 00000000 		.word	SPI_Handler
 176 0090 00000000 		.word	DMAC_Handler
 177 0094 00000000 		.word	TC0_Handler
 178 0098 00000000 		.word	TC1_Handler
 179 009c 00000000 		.word	TC2_Handler
 180 00a0 00000000 		.word	TC3_Handler
 181 00a4 00000000 		.word	TC4_Handler
 182 00a8 00000000 		.word	TC5_Handler
 183 00ac 00000000 		.word	TC6_Handler
 184 00b0 00000000 		.word	TC7_Handler
 185 00b4 00000000 		.word	TC8_Handler
 186 00b8 00000000 		.word	AFEC0_Handler
 187 00bc 00000000 		.word	AFEC1_Handler
 188 00c0 00000000 		.word	DACC_Handler
 189 00c4 00000000 		.word	ACC_Handler
 190 00c8 00000000 		.word	ARM_Handler
 191 00cc 00000000 		.word	UDP_Handler
 192 00d0 00000000 		.word	PWM_Handler
 193 00d4 00000000 		.word	CAN0_Handler
 194 00d8 00000000 		.word	CAN1_Handler
 195 00dc 00000000 		.word	AES_Handler
 196 00e0 00000000 		.word	Dummy_Handler
 197 00e4 00000000 		.word	Dummy_Handler
 198 00e8 00000000 		.word	Dummy_Handler
 199 00ec 00000000 		.word	Dummy_Handler
 200 00f0 00000000 		.word	GMAC_Handler
 201 00f4 00000000 		.word	UART1_Handler
 202              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
