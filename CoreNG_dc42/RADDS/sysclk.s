ARM GAS  /tmp/ccwG1xYt.s 			page 1


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
  11              		.file	"sysclk.c"
  12              		.section	.text.sysclk_set_prescalers,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	sysclk_set_prescalers
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	sysclk_set_prescalers, %function
  21              	sysclk_set_prescalers:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 08B5     		push	{r3, lr}
  25 0002 FFF7FEFF 		bl	pmc_mck_set_prescaler
  26 0006 BDE80840 		pop	{r3, lr}
  27 000a FFF7FEBF 		b	SystemCoreClockUpdate
  28              		.size	sysclk_set_prescalers, .-sysclk_set_prescalers
  29 000e 00BF     		.section	.text.sysclk_set_source,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	sysclk_set_source
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu softvfp
  37              		.type	sysclk_set_source, %function
  38              	sysclk_set_source:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41 0000 08B5     		push	{r3, lr}
  42 0002 0928     		cmp	r0, #9
  43 0004 09D8     		bhi	.L4
  44 0006 DFE800F0 		tbb	[pc, r0]
  45              	.L6:
  46 000a 1A       		.byte	(.L5-.L6)/2
  47 000b 1A       		.byte	(.L5-.L6)/2
  48 000c 1A       		.byte	(.L5-.L6)/2
  49 000d 13       		.byte	(.L7-.L6)/2
  50 000e 13       		.byte	(.L7-.L6)/2
  51 000f 13       		.byte	(.L7-.L6)/2
  52 0010 13       		.byte	(.L7-.L6)/2
  53 0011 13       		.byte	(.L7-.L6)/2
  54 0012 0C       		.byte	(.L8-.L6)/2
  55 0013 05       		.byte	(.L9-.L6)/2
  56              		.p2align 1
  57              	.L9:
ARM GAS  /tmp/ccwG1xYt.s 			page 2


  58 0014 0320     		movs	r0, #3
  59 0016 FFF7FEFF 		bl	pmc_mck_set_source
  60              	.L4:
  61 001a BDE80840 		pop	{r3, lr}
  62 001e FFF7FEBF 		b	SystemCoreClockUpdate
  63              	.L8:
  64 0022 0220     		movs	r0, #2
  65 0024 FFF7FEFF 		bl	pmc_mck_set_source
  66 0028 BDE80840 		pop	{r3, lr}
  67 002c FFF7FEBF 		b	SystemCoreClockUpdate
  68              	.L7:
  69 0030 0120     		movs	r0, #1
  70 0032 FFF7FEFF 		bl	pmc_mck_set_source
  71 0036 BDE80840 		pop	{r3, lr}
  72 003a FFF7FEBF 		b	SystemCoreClockUpdate
  73              	.L5:
  74 003e 0020     		movs	r0, #0
  75 0040 FFF7FEFF 		bl	pmc_mck_set_source
  76 0044 BDE80840 		pop	{r3, lr}
  77 0048 FFF7FEBF 		b	SystemCoreClockUpdate
  78              		.size	sysclk_set_source, .-sysclk_set_source
  79              		.section	.text.sysclk_enable_usb,"ax",%progbits
  80              		.align	1
  81              		.p2align 2,,3
  82              		.global	sysclk_enable_usb
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu softvfp
  87              		.type	sysclk_enable_usb, %function
  88              	sysclk_enable_usb:
  89              		@ args = 0, pretend = 0, frame = 0
  90              		@ frame_needed = 0, uses_anonymous_args = 0
  91 0000 08B5     		push	{r3, lr}
  92 0002 FFF7FEFF 		bl	pmc_enable_upll_clock
  93 0006 0020     		movs	r0, #0
  94 0008 FFF7FEFF 		bl	pmc_switch_udpck_to_upllck
  95 000c BDE80840 		pop	{r3, lr}
  96 0010 FFF7FEBF 		b	pmc_enable_udpck
  97              		.size	sysclk_enable_usb, .-sysclk_enable_usb
  98              		.section	.text.sysclk_disable_usb,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	sysclk_disable_usb
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu softvfp
 106              		.type	sysclk_disable_usb, %function
 107              	sysclk_disable_usb:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 FFF7FEBF 		b	pmc_disable_udpck
 112              		.size	sysclk_disable_usb, .-sysclk_disable_usb
 113              		.section	.text.sysclk_init,"ax",%progbits
 114              		.align	1
ARM GAS  /tmp/ccwG1xYt.s 			page 3


 115              		.p2align 2,,3
 116              		.global	sysclk_init
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu softvfp
 121              		.type	sysclk_init, %function
 122              	sysclk_init:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125 0000 0F48     		ldr	r0, .L23
 126 0002 08B5     		push	{r3, lr}
 127 0004 FFF7FEFF 		bl	system_init_flash
 128 0008 3E21     		movs	r1, #62
 129 000a 0020     		movs	r0, #0
 130 000c FFF7FEFF 		bl	pmc_switch_mainck_to_xtal
 131              	.L16:
 132 0010 FFF7FEFF 		bl	pmc_osc_is_ready_mainck
 133 0014 0028     		cmp	r0, #0
 134 0016 FBD0     		beq	.L16
 135 0018 FFF7FEFF 		bl	pmc_disable_pllack
 136 001c 094B     		ldr	r3, .L23+4
 137 001e 0A4A     		ldr	r2, .L23+8
 138 0020 9A62     		str	r2, [r3, #40]
 139              	.L17:
 140 0022 FFF7FEFF 		bl	pmc_is_locked_pllack
 141 0026 0028     		cmp	r0, #0
 142 0028 FBD0     		beq	.L17
 143 002a 1020     		movs	r0, #16
 144 002c FFF7FEFF 		bl	pmc_switch_mck_to_pllack
 145 0030 FFF7FEFF 		bl	SystemCoreClockUpdate
 146 0034 BDE80840 		pop	{r3, lr}
 147 0038 0148     		ldr	r0, .L23
 148 003a FFF7FEBF 		b	system_init_flash
 149              	.L24:
 150 003e 00BF     		.align	2
 151              	.L23:
 152 0040 00BD0105 		.word	84000000
 153 0044 00060E40 		.word	1074660864
 154 0048 013F0D20 		.word	537739009
 155              		.size	sysclk_init, .-sysclk_init
 156              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 157              		.align	2
 158              		.type	cpu_irq_critical_section_counter, %object
 159              		.size	cpu_irq_critical_section_counter, 4
 160              	cpu_irq_critical_section_counter:
 161 0000 00000000 		.space	4
 162              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 163              		.type	cpu_irq_prev_interrupt_state, %object
 164              		.size	cpu_irq_prev_interrupt_state, 1
 165              	cpu_irq_prev_interrupt_state:
 166 0000 00       		.space	1
 167              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
