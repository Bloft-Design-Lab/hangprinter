ARM GAS  /tmp/ccR1De1j.s 			page 1


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
  11              		.file	"startup_sam4s.c"
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
  24 0000 08B5     		push	{r3, lr}
  25 0002 194A     		ldr	r2, .L12
  26 0004 194B     		ldr	r3, .L12+4
  27 0006 9A42     		cmp	r2, r3
  28 0008 0ED0     		beq	.L5
  29 000a 1949     		ldr	r1, .L12+8
  30 000c 8B42     		cmp	r3, r1
  31 000e 0BD2     		bcs	.L5
  32 0010 D843     		mvns	r0, r3
  33 0012 0844     		add	r0, r0, r1
  34 0014 20F00300 		bic	r0, r0, #3
  35 0018 0430     		adds	r0, r0, #4
  36 001a 1844     		add	r0, r0, r3
  37              	.L6:
  38 001c 52F8041B 		ldr	r1, [r2], #4
  39 0020 43F8041B 		str	r1, [r3], #4
  40 0024 8342     		cmp	r3, r0
  41 0026 F9D1     		bne	.L6
  42              	.L5:
  43 0028 124B     		ldr	r3, .L12+12
  44 002a 1349     		ldr	r1, .L12+16
  45 002c 8B42     		cmp	r3, r1
  46 002e 0AD2     		bcs	.L4
  47 0030 DA43     		mvns	r2, r3
  48 0032 0A44     		add	r2, r2, r1
  49 0034 22F00302 		bic	r2, r2, #3
  50 0038 0432     		adds	r2, r2, #4
  51 003a 1A44     		add	r2, r2, r3
  52 003c 0021     		movs	r1, #0
  53              	.L7:
  54 003e 43F8041B 		str	r1, [r3], #4
  55 0042 9342     		cmp	r3, r2
  56 0044 FBD1     		bne	.L7
  57              	.L4:
ARM GAS  /tmp/ccR1De1j.s 			page 2


  58 0046 0D4B     		ldr	r3, .L12+20
  59 0048 0D4A     		ldr	r2, .L12+24
  60 004a 23F07F03 		bic	r3, r3, #127
  61 004e 9360     		str	r3, [r2, #8]
  62 0050 FFF7FEFF 		bl	SystemInit
  63 0054 FFF7FEFF 		bl	UrgentInit
  64 0058 FFF7FEFF 		bl	__libc_init_array
  65 005c FFF7FEFF 		bl	init
  66 0060 BDE80840 		pop	{r3, lr}
  67 0064 FFF7FEBF 		b	AppMain
  68              	.L13:
  69              		.align	2
  70              	.L12:
  71 0068 00000000 		.word	_etext
  72 006c 00000000 		.word	_srelocate
  73 0070 00000000 		.word	_erelocate
  74 0074 00000000 		.word	_szero
  75 0078 00000000 		.word	_ezero
  76 007c 00000000 		.word	_sfixed
  77 0080 00ED00E0 		.word	-536810240
  78              		.size	Reset_Handler, .-Reset_Handler
  79              		.global	exception_table
  80              		.section	.vectors,"a",%progbits
  81              		.align	2
  82              		.type	exception_table, %object
  83              		.size	exception_table, 204
  84              	exception_table:
  85 0000 00000000 		.word	_estack
  86 0004 00000000 		.word	Reset_Handler
  87 0008 00000000 		.word	NMI_Handler
  88 000c 00000000 		.word	HardFault_Handler
  89 0010 00000000 		.word	MemManage_Handler
  90 0014 00000000 		.word	BusFault_Handler
  91 0018 00000000 		.word	UsageFault_Handler
  92 001c 00000000 		.word	0
  93 0020 00000000 		.word	0
  94 0024 00000000 		.word	0
  95 0028 00000000 		.word	0
  96 002c 00000000 		.word	SVC_Handler
  97 0030 00000000 		.word	DebugMon_Handler
  98 0034 00000000 		.word	0
  99 0038 00000000 		.word	PendSV_Handler
 100 003c 00000000 		.word	SysTick_Handler
 101 0040 00000000 		.word	SUPC_Handler
 102 0044 00000000 		.word	RSTC_Handler
 103 0048 00000000 		.word	RTC_Handler
 104 004c 00000000 		.word	RTT_Handler
 105 0050 00000000 		.word	WDT_Handler
 106 0054 00000000 		.word	PMC_Handler
 107 0058 00000000 		.word	EFC0_Handler
 108 005c 00000000 		.word	0
 109 0060 00000000 		.word	UART0_Handler
 110 0064 00000000 		.word	UART1_Handler
 111 0068 00000000 		.word	0
 112 006c 00000000 		.word	PIOA_Handler
 113 0070 00000000 		.word	PIOB_Handler
 114 0074 00000000 		.word	PIOC_Handler
ARM GAS  /tmp/ccR1De1j.s 			page 3


 115 0078 00000000 		.word	USART0_Handler
 116 007c 00000000 		.word	USART1_Handler
 117 0080 00000000 		.word	0
 118 0084 00000000 		.word	0
 119 0088 00000000 		.word	HSMCI_Handler
 120 008c 00000000 		.word	TWI0_Handler
 121 0090 00000000 		.word	TWI1_Handler
 122 0094 00000000 		.word	SPI_Handler
 123 0098 00000000 		.word	SSC_Handler
 124 009c 00000000 		.word	TC0_Handler
 125 00a0 00000000 		.word	TC1_Handler
 126 00a4 00000000 		.word	TC2_Handler
 127 00a8 00000000 		.word	TC3_Handler
 128 00ac 00000000 		.word	TC4_Handler
 129 00b0 00000000 		.word	TC5_Handler
 130 00b4 00000000 		.word	ADC_Handler
 131 00b8 00000000 		.word	DACC_Handler
 132 00bc 00000000 		.word	PWM_Handler
 133 00c0 00000000 		.word	CRCCU_Handler
 134 00c4 00000000 		.word	ACC_Handler
 135 00c8 00000000 		.word	UDP_Handler
 136              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
