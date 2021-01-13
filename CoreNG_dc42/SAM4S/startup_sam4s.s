ARM GAS  /tmp/ccOf17x3.s 			page 1


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
  24 0000 2349     		ldr	r1, .L18
  25 0002 244A     		ldr	r2, .L18+4
  26 0004 9142     		cmp	r1, r2
  27 0006 38B5     		push	{r3, r4, r5, lr}
  28 0008 0ED0     		beq	.L5
  29 000a 2348     		ldr	r0, .L18+8
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
  43 0028 1C4A     		ldr	r2, .L18+12
  44 002a 1D49     		ldr	r1, .L18+16
  45 002c 8A42     		cmp	r2, r1
  46 002e 0AD2     		bcs	.L4
  47 0030 D343     		mvns	r3, r2
  48 0032 0B44     		add	r3, r3, r1
  49 0034 23F00303 		bic	r3, r3, #3
  50 0038 0433     		adds	r3, r3, #4
  51 003a 1344     		add	r3, r3, r2
  52 003c 0021     		movs	r1, #0
  53              	.L9:
  54 003e 42F8041B 		str	r1, [r2], #4
  55 0042 9A42     		cmp	r2, r3
  56 0044 FBD1     		bne	.L9
  57              	.L4:
ARM GAS  /tmp/ccOf17x3.s 			page 2


  58 0046 174B     		ldr	r3, .L18+20
  59 0048 174C     		ldr	r4, .L18+24
  60 004a 23F07F03 		bic	r3, r3, #127
  61 004e A360     		str	r3, [r4, #8]
  62 0050 FFF7FEFF 		bl	SystemInit
  63 0054 FFF7FEFF 		bl	UrgentInit
  64 0058 FFF7FEFF 		bl	__libc_init_array
  65 005c FFF7FEFF 		bl	init
  66 0060 124B     		ldr	r3, .L18+28
  67 0062 134A     		ldr	r2, .L18+32
  68 0064 1B68     		ldr	r3, [r3]
  69 0066 A2FB0323 		umull	r2, r3, r2, r3
  70 006a 9B09     		lsrs	r3, r3, #6
  71 006c 013B     		subs	r3, r3, #1
  72 006e B3F1807F 		cmp	r3, #16777216
  73 0072 00D3     		bcc	.L17
  74              	.L13:
  75 0074 FEE7     		b	.L13
  76              	.L17:
  77 0076 0F4A     		ldr	r2, .L18+36
  78 0078 F025     		movs	r5, #240
  79 007a 5360     		str	r3, [r2, #4]
  80 007c 0020     		movs	r0, #0
  81 007e 84F82350 		strb	r5, [r4, #35]
  82 0082 0721     		movs	r1, #7
  83 0084 9060     		str	r0, [r2, #8]
  84 0086 BDE83840 		pop	{r3, r4, r5, lr}
  85 008a 1160     		str	r1, [r2]
  86 008c FFF7FEBF 		b	AppMain
  87              	.L19:
  88              		.align	2
  89              	.L18:
  90 0090 00000000 		.word	_etext
  91 0094 00000000 		.word	_srelocate
  92 0098 00000000 		.word	_erelocate
  93 009c 00000000 		.word	_szero
  94 00a0 00000000 		.word	_ezero
  95 00a4 00000000 		.word	_sfixed
  96 00a8 00ED00E0 		.word	-536810240
  97 00ac 00000000 		.word	SystemCoreClock
  98 00b0 D34D6210 		.word	274877907
  99 00b4 10E000E0 		.word	-536813552
 100              		.size	Reset_Handler, .-Reset_Handler
 101              		.global	exception_table
 102              		.section	.vectors,"a",%progbits
 103              		.align	2
 104              		.type	exception_table, %object
 105              		.size	exception_table, 204
 106              	exception_table:
 107 0000 00000000 		.word	_estack
 108 0004 00000000 		.word	Reset_Handler
 109 0008 00000000 		.word	NMI_Handler
 110 000c 00000000 		.word	HardFault_Handler
 111 0010 00000000 		.word	MemManage_Handler
 112 0014 00000000 		.word	BusFault_Handler
 113 0018 00000000 		.word	UsageFault_Handler
 114 001c 00000000 		.word	0
ARM GAS  /tmp/ccOf17x3.s 			page 3


 115 0020 00000000 		.word	0
 116 0024 00000000 		.word	0
 117 0028 00000000 		.word	0
 118 002c 00000000 		.word	SVC_Handler
 119 0030 00000000 		.word	DebugMon_Handler
 120 0034 00000000 		.word	0
 121 0038 00000000 		.word	PendSV_Handler
 122 003c 00000000 		.word	SysTick_Handler
 123 0040 00000000 		.word	SUPC_Handler
 124 0044 00000000 		.word	RSTC_Handler
 125 0048 00000000 		.word	RTC_Handler
 126 004c 00000000 		.word	RTT_Handler
 127 0050 00000000 		.word	WDT_Handler
 128 0054 00000000 		.word	PMC_Handler
 129 0058 00000000 		.word	EFC0_Handler
 130 005c 00000000 		.word	0
 131 0060 00000000 		.word	UART0_Handler
 132 0064 00000000 		.word	UART1_Handler
 133 0068 00000000 		.word	0
 134 006c 00000000 		.word	PIOA_Handler
 135 0070 00000000 		.word	PIOB_Handler
 136 0074 00000000 		.word	PIOC_Handler
 137 0078 00000000 		.word	USART0_Handler
 138 007c 00000000 		.word	USART1_Handler
 139 0080 00000000 		.word	0
 140 0084 00000000 		.word	0
 141 0088 00000000 		.word	HSMCI_Handler
 142 008c 00000000 		.word	TWI0_Handler
 143 0090 00000000 		.word	TWI1_Handler
 144 0094 00000000 		.word	SPI_Handler
 145 0098 00000000 		.word	SSC_Handler
 146 009c 00000000 		.word	TC0_Handler
 147 00a0 00000000 		.word	TC1_Handler
 148 00a4 00000000 		.word	TC2_Handler
 149 00a8 00000000 		.word	TC3_Handler
 150 00ac 00000000 		.word	TC4_Handler
 151 00b0 00000000 		.word	TC5_Handler
 152 00b4 00000000 		.word	ADC_Handler
 153 00b8 00000000 		.word	DACC_Handler
 154 00bc 00000000 		.word	PWM_Handler
 155 00c0 00000000 		.word	CRCCU_Handler
 156 00c4 00000000 		.word	ACC_Handler
 157 00c8 00000000 		.word	UDP_Handler
 158              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
