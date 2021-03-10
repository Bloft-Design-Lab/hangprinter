ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccMiFNWf.s 			page 1


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
  14              		.text
  15              		.section	.text.sysclk_set_prescalers,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	sysclk_set_prescalers
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	sysclk_set_prescalers, %function
  24              	sysclk_set_prescalers:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 08B5     		push	{r3, lr}
  28 0002 FFF7FEFF 		bl	pmc_mck_set_prescaler
  29 0006 BDE80840 		pop	{r3, lr}
  30 000a FFF7FEBF 		b	SystemCoreClockUpdate
  31              		.size	sysclk_set_prescalers, .-sysclk_set_prescalers
  32 000e 00BF     		.section	.text.sysclk_set_source,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	sysclk_set_source
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	sysclk_set_source, %function
  41              	sysclk_set_source:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44 0000 08B5     		push	{r3, lr}
  45 0002 0828     		cmp	r0, #8
  46 0004 09D8     		bhi	.L5
  47 0006 DFE800F0 		tbb	[pc, r0]
  48              	.L7:
  49 000a 13       		.byte	(.L6-.L7)/2
  50 000b 13       		.byte	(.L6-.L7)/2
  51 000c 13       		.byte	(.L6-.L7)/2
  52 000d 0C       		.byte	(.L8-.L7)/2
  53 000e 0C       		.byte	(.L8-.L7)/2
  54 000f 0C       		.byte	(.L8-.L7)/2
  55 0010 0C       		.byte	(.L8-.L7)/2
  56 0011 0C       		.byte	(.L8-.L7)/2
  57 0012 05       		.byte	(.L9-.L7)/2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccMiFNWf.s 			page 2


  58 0013 00       		.p2align 1
  59              	.L9:
  60 0014 0220     		movs	r0, #2
  61 0016 FFF7FEFF 		bl	pmc_mck_set_source
  62              	.L5:
  63 001a BDE80840 		pop	{r3, lr}
  64 001e FFF7FEBF 		b	SystemCoreClockUpdate
  65              	.L8:
  66 0022 0120     		movs	r0, #1
  67 0024 FFF7FEFF 		bl	pmc_mck_set_source
  68 0028 BDE80840 		pop	{r3, lr}
  69 002c FFF7FEBF 		b	SystemCoreClockUpdate
  70              	.L6:
  71 0030 0020     		movs	r0, #0
  72 0032 FFF7FEFF 		bl	pmc_mck_set_source
  73 0036 BDE80840 		pop	{r3, lr}
  74 003a FFF7FEBF 		b	SystemCoreClockUpdate
  75              		.size	sysclk_set_source, .-sysclk_set_source
  76 003e 00BF     		.section	.text.sysclk_enable_usb,"ax",%progbits
  77              		.align	1
  78              		.p2align 2,,3
  79              		.global	sysclk_enable_usb
  80              		.syntax unified
  81              		.thumb
  82              		.thumb_func
  83              		.fpu fpv4-sp-d16
  84              		.type	sysclk_enable_usb, %function
  85              	sysclk_enable_usb:
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88 0000 08B5     		push	{r3, lr}
  89 0002 3E21     		movs	r1, #62
  90 0004 0020     		movs	r0, #0
  91 0006 FFF7FEFF 		bl	pmc_switch_mainck_to_xtal
  92              	.L12:
  93 000a FFF7FEFF 		bl	pmc_osc_is_ready_mainck
  94 000e 0028     		cmp	r0, #0
  95 0010 FBD0     		beq	.L12
  96 0012 FFF7FEFF 		bl	pmc_disable_pllack
  97 0016 074B     		ldr	r3, .L19
  98 0018 074A     		ldr	r2, .L19+4
  99 001a 9A62     		str	r2, [r3, #40]
 100              	.L13:
 101 001c FFF7FEFF 		bl	pmc_is_locked_pllack
 102 0020 0028     		cmp	r0, #0
 103 0022 FBD0     		beq	.L13
 104 0024 0420     		movs	r0, #4
 105 0026 FFF7FEFF 		bl	pmc_switch_udpck_to_pllack
 106 002a BDE80840 		pop	{r3, lr}
 107 002e FFF7FEBF 		b	pmc_enable_udpck
 108              	.L20:
 109 0032 00BF     		.align	2
 110              	.L19:
 111 0034 00040E40 		.word	1074660352
 112 0038 013F1320 		.word	538132225
 113              		.size	sysclk_enable_usb, .-sysclk_enable_usb
 114              		.section	.text.sysclk_disable_usb,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccMiFNWf.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	sysclk_disable_usb
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 122              		.type	sysclk_disable_usb, %function
 123              	sysclk_disable_usb:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 FFF7FEBF 		b	pmc_disable_udpck
 128              		.size	sysclk_disable_usb, .-sysclk_disable_usb
 129              		.section	.text.sysclk_init,"ax",%progbits
 130              		.align	1
 131              		.p2align 2,,3
 132              		.global	sysclk_init
 133              		.syntax unified
 134              		.thumb
 135              		.thumb_func
 136              		.fpu fpv4-sp-d16
 137              		.type	sysclk_init, %function
 138              	sysclk_init:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141 0000 0F48     		ldr	r0, .L30
 142 0002 08B5     		push	{r3, lr}
 143 0004 FFF7FEFF 		bl	system_init_flash
 144 0008 3E21     		movs	r1, #62
 145 000a 0020     		movs	r0, #0
 146 000c FFF7FEFF 		bl	pmc_switch_mainck_to_xtal
 147              	.L23:
 148 0010 FFF7FEFF 		bl	pmc_osc_is_ready_mainck
 149 0014 0028     		cmp	r0, #0
 150 0016 FBD0     		beq	.L23
 151 0018 FFF7FEFF 		bl	pmc_disable_pllack
 152 001c 094B     		ldr	r3, .L30+4
 153 001e 0A4A     		ldr	r2, .L30+8
 154 0020 9A62     		str	r2, [r3, #40]
 155              	.L24:
 156 0022 FFF7FEFF 		bl	pmc_is_locked_pllack
 157 0026 0028     		cmp	r0, #0
 158 0028 FBD0     		beq	.L24
 159 002a 1020     		movs	r0, #16
 160 002c FFF7FEFF 		bl	pmc_switch_mck_to_pllack
 161 0030 FFF7FEFF 		bl	SystemCoreClockUpdate
 162 0034 0248     		ldr	r0, .L30
 163 0036 BDE80840 		pop	{r3, lr}
 164 003a FFF7FEBF 		b	system_init_flash
 165              	.L31:
 166 003e 00BF     		.align	2
 167              	.L30:
 168 0040 000E2707 		.word	120000000
 169 0044 00040E40 		.word	1074660352
 170 0048 013F1320 		.word	538132225
 171              		.size	sysclk_init, .-sysclk_init
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccMiFNWf.s 			page 4


 172              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 173              		.align	2
 174              		.type	cpu_irq_critical_section_counter, %object
 175              		.size	cpu_irq_critical_section_counter, 4
 176              	cpu_irq_critical_section_counter:
 177 0000 00000000 		.space	4
 178              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 179              		.type	cpu_irq_prev_interrupt_state, %object
 180              		.size	cpu_irq_prev_interrupt_state, 1
 181              	cpu_irq_prev_interrupt_state:
 182 0000 00       		.space	1
 183              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
