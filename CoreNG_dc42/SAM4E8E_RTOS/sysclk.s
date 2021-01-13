ARM GAS  /tmp/ccqcTv25.s 			page 1


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
  13              		.file	"sysclk.c"
  14              		.section	.text.sysclk_set_prescalers,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	sysclk_set_prescalers
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	sysclk_set_prescalers, %function
  23              	sysclk_set_prescalers:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 08B5     		push	{r3, lr}
  27 0002 FFF7FEFF 		bl	pmc_mck_set_prescaler
  28 0006 BDE80840 		pop	{r3, lr}
  29 000a FFF7FEBF 		b	SystemCoreClockUpdate
  30              		.size	sysclk_set_prescalers, .-sysclk_set_prescalers
  31 000e 00BF     		.section	.text.sysclk_set_source,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	sysclk_set_source
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	sysclk_set_source, %function
  40              	sysclk_set_source:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43 0000 08B5     		push	{r3, lr}
  44 0002 0828     		cmp	r0, #8
  45 0004 09D8     		bhi	.L4
  46 0006 DFE800F0 		tbb	[pc, r0]
  47              	.L6:
  48 000a 13       		.byte	(.L5-.L6)/2
  49 000b 13       		.byte	(.L5-.L6)/2
  50 000c 13       		.byte	(.L5-.L6)/2
  51 000d 0C       		.byte	(.L7-.L6)/2
  52 000e 0C       		.byte	(.L7-.L6)/2
  53 000f 0C       		.byte	(.L7-.L6)/2
  54 0010 0C       		.byte	(.L7-.L6)/2
  55 0011 0C       		.byte	(.L7-.L6)/2
  56 0012 05       		.byte	(.L8-.L6)/2
  57 0013 00       		.p2align 1
ARM GAS  /tmp/ccqcTv25.s 			page 2


  58              	.L8:
  59 0014 0220     		movs	r0, #2
  60 0016 FFF7FEFF 		bl	pmc_mck_set_source
  61              	.L4:
  62 001a BDE80840 		pop	{r3, lr}
  63 001e FFF7FEBF 		b	SystemCoreClockUpdate
  64              	.L7:
  65 0022 0120     		movs	r0, #1
  66 0024 FFF7FEFF 		bl	pmc_mck_set_source
  67 0028 BDE80840 		pop	{r3, lr}
  68 002c FFF7FEBF 		b	SystemCoreClockUpdate
  69              	.L5:
  70 0030 0020     		movs	r0, #0
  71 0032 FFF7FEFF 		bl	pmc_mck_set_source
  72 0036 BDE80840 		pop	{r3, lr}
  73 003a FFF7FEBF 		b	SystemCoreClockUpdate
  74              		.size	sysclk_set_source, .-sysclk_set_source
  75 003e 00BF     		.section	.text.sysclk_enable_usb,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	sysclk_enable_usb
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu fpv4-sp-d16
  83              		.type	sysclk_enable_usb, %function
  84              	sysclk_enable_usb:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87 0000 08B5     		push	{r3, lr}
  88 0002 3E21     		movs	r1, #62
  89 0004 0020     		movs	r0, #0
  90 0006 FFF7FEFF 		bl	pmc_switch_mainck_to_xtal
  91              	.L12:
  92 000a FFF7FEFF 		bl	pmc_osc_is_ready_mainck
  93 000e 0028     		cmp	r0, #0
  94 0010 FBD0     		beq	.L12
  95 0012 FFF7FEFF 		bl	pmc_disable_pllack
  96 0016 074B     		ldr	r3, .L19
  97 0018 074A     		ldr	r2, .L19+4
  98 001a 9A62     		str	r2, [r3, #40]
  99              	.L13:
 100 001c FFF7FEFF 		bl	pmc_is_locked_pllack
 101 0020 0028     		cmp	r0, #0
 102 0022 FBD0     		beq	.L13
 103 0024 0420     		movs	r0, #4
 104 0026 FFF7FEFF 		bl	pmc_switch_udpck_to_pllack
 105 002a BDE80840 		pop	{r3, lr}
 106 002e FFF7FEBF 		b	pmc_enable_udpck
 107              	.L20:
 108 0032 00BF     		.align	2
 109              	.L19:
 110 0034 00040E40 		.word	1074660352
 111 0038 013F1320 		.word	538132225
 112              		.size	sysclk_enable_usb, .-sysclk_enable_usb
 113              		.section	.text.sysclk_disable_usb,"ax",%progbits
 114              		.align	1
ARM GAS  /tmp/ccqcTv25.s 			page 3


 115              		.p2align 2,,3
 116              		.global	sysclk_disable_usb
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv4-sp-d16
 121              		.type	sysclk_disable_usb, %function
 122              	sysclk_disable_usb:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 126 0000 FFF7FEBF 		b	pmc_disable_udpck
 127              		.size	sysclk_disable_usb, .-sysclk_disable_usb
 128              		.section	.text.sysclk_init,"ax",%progbits
 129              		.align	1
 130              		.p2align 2,,3
 131              		.global	sysclk_init
 132              		.syntax unified
 133              		.thumb
 134              		.thumb_func
 135              		.fpu fpv4-sp-d16
 136              		.type	sysclk_init, %function
 137              	sysclk_init:
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 0, uses_anonymous_args = 0
 140 0000 0F48     		ldr	r0, .L30
 141 0002 08B5     		push	{r3, lr}
 142 0004 FFF7FEFF 		bl	system_init_flash
 143 0008 3E21     		movs	r1, #62
 144 000a 0020     		movs	r0, #0
 145 000c FFF7FEFF 		bl	pmc_switch_mainck_to_xtal
 146              	.L23:
 147 0010 FFF7FEFF 		bl	pmc_osc_is_ready_mainck
 148 0014 0028     		cmp	r0, #0
 149 0016 FBD0     		beq	.L23
 150 0018 FFF7FEFF 		bl	pmc_disable_pllack
 151 001c 094B     		ldr	r3, .L30+4
 152 001e 0A4A     		ldr	r2, .L30+8
 153 0020 9A62     		str	r2, [r3, #40]
 154              	.L24:
 155 0022 FFF7FEFF 		bl	pmc_is_locked_pllack
 156 0026 0028     		cmp	r0, #0
 157 0028 FBD0     		beq	.L24
 158 002a 1020     		movs	r0, #16
 159 002c FFF7FEFF 		bl	pmc_switch_mck_to_pllack
 160 0030 FFF7FEFF 		bl	SystemCoreClockUpdate
 161 0034 0248     		ldr	r0, .L30
 162 0036 BDE80840 		pop	{r3, lr}
 163 003a FFF7FEBF 		b	system_init_flash
 164              	.L31:
 165 003e 00BF     		.align	2
 166              	.L30:
 167 0040 000E2707 		.word	120000000
 168 0044 00040E40 		.word	1074660352
 169 0048 013F1320 		.word	538132225
 170              		.size	sysclk_init, .-sysclk_init
 171              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  /tmp/ccqcTv25.s 			page 4


 172              		.align	2
 173              		.type	cpu_irq_critical_section_counter, %object
 174              		.size	cpu_irq_critical_section_counter, 4
 175              	cpu_irq_critical_section_counter:
 176 0000 00000000 		.space	4
 177              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 178              		.type	cpu_irq_prev_interrupt_state, %object
 179              		.size	cpu_irq_prev_interrupt_state, 1
 180              	cpu_irq_prev_interrupt_state:
 181 0000 00       		.space	1
 182              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
