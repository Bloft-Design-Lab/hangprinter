ARM GAS  /tmp/cc8tp0dh.s 			page 1


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
  14              		.section	.text.Reset_Handler,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	Reset_Handler
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	Reset_Handler, %function
  23              	Reset_Handler:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 08B5     		push	{r3, lr}
  27 0002 254A     		ldr	r2, .L14
  28 0004 254B     		ldr	r3, .L14+4
  29 0006 9A42     		cmp	r2, r3
  30 0008 0ED0     		beq	.L5
  31 000a 2549     		ldr	r1, .L14+8
  32 000c 8B42     		cmp	r3, r1
  33 000e 0BD2     		bcs	.L5
  34 0010 D843     		mvns	r0, r3
  35 0012 0844     		add	r0, r0, r1
  36 0014 20F00300 		bic	r0, r0, #3
  37 0018 0430     		adds	r0, r0, #4
  38 001a 1844     		add	r0, r0, r3
  39              	.L6:
  40 001c 52F8041B 		ldr	r1, [r2], #4
  41 0020 43F8041B 		str	r1, [r3], #4
  42 0024 8342     		cmp	r3, r0
  43 0026 F9D1     		bne	.L6
  44              	.L5:
  45 0028 1E4B     		ldr	r3, .L14+12
  46 002a 1F49     		ldr	r1, .L14+16
  47 002c 8B42     		cmp	r3, r1
  48 002e 0AD2     		bcs	.L4
  49 0030 DA43     		mvns	r2, r3
  50 0032 0A44     		add	r2, r2, r1
  51 0034 22F00302 		bic	r2, r2, #3
  52 0038 0432     		adds	r2, r2, #4
  53 003a 1A44     		add	r2, r2, r3
  54 003c 0021     		movs	r1, #0
  55              	.L9:
  56 003e 43F8041B 		str	r1, [r3], #4
  57 0042 9342     		cmp	r3, r2
ARM GAS  /tmp/cc8tp0dh.s 			page 2


  58 0044 FBD1     		bne	.L9
  59              	.L4:
  60 0046 194B     		ldr	r3, .L14+20
  61 0048 194A     		ldr	r2, .L14+24
  62 004a 23F07F03 		bic	r3, r3, #127
  63 004e 9360     		str	r3, [r2, #8]
  64              		.syntax unified
  65              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  66 0050 EFF31083 		MRS r3, primask
  67              	@ 0 "" 2
  68              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  69 0054 72B6     		cpsid i
  70              	@ 0 "" 2
  71              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  72 0056 BFF35F8F 		dmb
  73              	@ 0 "" 2
  74              		.thumb
  75              		.syntax unified
  76 005a 1648     		ldr	r0, .L14+28
  77 005c 1649     		ldr	r1, .L14+32
  78 005e 0022     		movs	r2, #0
  79 0060 0270     		strb	r2, [r0]
  80 0062 0A68     		ldr	r2, [r1]
  81 0064 42F47002 		orr	r2, r2, #15728640
  82 0068 0A60     		str	r2, [r1]
  83              		.syntax unified
  84              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  85 006a BFF34F8F 		dsb
  86              	@ 0 "" 2
  87              	@ 434 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  88 006e BFF36F8F 		isb
  89              	@ 0 "" 2
  90              		.thumb
  91              		.syntax unified
  92 0072 23B9     		cbnz	r3, .L8
  93 0074 0123     		movs	r3, #1
  94 0076 0370     		strb	r3, [r0]
  95              		.syntax unified
  96              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  97 0078 BFF35F8F 		dmb
  98              	@ 0 "" 2
  99              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 100 007c 62B6     		cpsie i
 101              	@ 0 "" 2
 102              		.thumb
 103              		.syntax unified
 104              	.L8:
 105 007e FFF7FEFF 		bl	SystemInit
 106 0082 FFF7FEFF 		bl	UrgentInit
 107 0086 FFF7FEFF 		bl	__libc_init_array
 108 008a FFF7FEFF 		bl	init
 109 008e BDE80840 		pop	{r3, lr}
 110 0092 FFF7FEBF 		b	AppMain
 111              	.L15:
 112 0096 00BF     		.align	2
 113              	.L14:
 114 0098 00000000 		.word	_etext
ARM GAS  /tmp/cc8tp0dh.s 			page 3


 115 009c 00000000 		.word	_srelocate
 116 00a0 00000000 		.word	_erelocate
 117 00a4 00000000 		.word	_szero
 118 00a8 00000000 		.word	_ezero
 119 00ac 00000000 		.word	_sfixed
 120 00b0 00ED00E0 		.word	-536810240
 121 00b4 00000000 		.word	g_interrupt_enabled
 122 00b8 88ED00E0 		.word	-536810104
 123              		.size	Reset_Handler, .-Reset_Handler
 124              		.global	exception_table
 125              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 126              		.align	2
 127              		.type	cpu_irq_critical_section_counter, %object
 128              		.size	cpu_irq_critical_section_counter, 4
 129              	cpu_irq_critical_section_counter:
 130 0000 00000000 		.space	4
 131              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 132              		.type	cpu_irq_prev_interrupt_state, %object
 133              		.size	cpu_irq_prev_interrupt_state, 1
 134              	cpu_irq_prev_interrupt_state:
 135 0000 00       		.space	1
 136              		.section	.vectors,"a",%progbits
 137              		.align	2
 138              		.type	exception_table, %object
 139              		.size	exception_table, 248
 140              	exception_table:
 141 0000 00000000 		.word	_estack
 142 0004 00000000 		.word	Reset_Handler
 143 0008 00000000 		.word	NMI_Handler
 144 000c 00000000 		.word	HardFault_Handler
 145 0010 00000000 		.word	MemManage_Handler
 146 0014 00000000 		.word	BusFault_Handler
 147 0018 00000000 		.word	UsageFault_Handler
 148 001c 00000000 		.word	0
 149 0020 00000000 		.word	0
 150 0024 00000000 		.word	0
 151 0028 00000000 		.word	0
 152 002c 00000000 		.word	SVC_Handler
 153 0030 00000000 		.word	DebugMon_Handler
 154 0034 00000000 		.word	0
 155 0038 00000000 		.word	PendSV_Handler
 156 003c 00000000 		.word	SysTick_Handler
 157 0040 00000000 		.word	SUPC_Handler
 158 0044 00000000 		.word	RSTC_Handler
 159 0048 00000000 		.word	RTC_Handler
 160 004c 00000000 		.word	RTT_Handler
 161 0050 00000000 		.word	WDT_Handler
 162 0054 00000000 		.word	PMC_Handler
 163 0058 00000000 		.word	EFC_Handler
 164 005c 00000000 		.word	UART0_Handler
 165 0060 00000000 		.word	Dummy_Handler
 166 0064 00000000 		.word	PIOA_Handler
 167 0068 00000000 		.word	PIOB_Handler
 168 006c 00000000 		.word	PIOC_Handler
 169 0070 00000000 		.word	PIOD_Handler
 170 0074 00000000 		.word	PIOE_Handler
 171 0078 00000000 		.word	USART0_Handler
ARM GAS  /tmp/cc8tp0dh.s 			page 4


 172 007c 00000000 		.word	USART1_Handler
 173 0080 00000000 		.word	HSMCI_Handler
 174 0084 00000000 		.word	TWI0_Handler
 175 0088 00000000 		.word	TWI1_Handler
 176 008c 00000000 		.word	SPI_Handler
 177 0090 00000000 		.word	DMAC_Handler
 178 0094 00000000 		.word	TC0_Handler
 179 0098 00000000 		.word	TC1_Handler
 180 009c 00000000 		.word	TC2_Handler
 181 00a0 00000000 		.word	TC3_Handler
 182 00a4 00000000 		.word	TC4_Handler
 183 00a8 00000000 		.word	TC5_Handler
 184 00ac 00000000 		.word	TC6_Handler
 185 00b0 00000000 		.word	TC7_Handler
 186 00b4 00000000 		.word	TC8_Handler
 187 00b8 00000000 		.word	AFEC0_Handler
 188 00bc 00000000 		.word	AFEC1_Handler
 189 00c0 00000000 		.word	DACC_Handler
 190 00c4 00000000 		.word	ACC_Handler
 191 00c8 00000000 		.word	ARM_Handler
 192 00cc 00000000 		.word	UDP_Handler
 193 00d0 00000000 		.word	PWM_Handler
 194 00d4 00000000 		.word	CAN0_Handler
 195 00d8 00000000 		.word	CAN1_Handler
 196 00dc 00000000 		.word	AES_Handler
 197 00e0 00000000 		.word	Dummy_Handler
 198 00e4 00000000 		.word	Dummy_Handler
 199 00e8 00000000 		.word	Dummy_Handler
 200 00ec 00000000 		.word	Dummy_Handler
 201 00f0 00000000 		.word	GMAC_Handler
 202 00f4 00000000 		.word	UART1_Handler
 203              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
