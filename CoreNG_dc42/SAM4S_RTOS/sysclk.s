ARM GAS  /tmp/ccXobDL4.s 			page 1


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
ARM GAS  /tmp/ccXobDL4.s 			page 2


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
  92 0002 3E21     		movs	r1, #62
  93 0004 0020     		movs	r0, #0
  94 0006 FFF7FEFF 		bl	pmc_switch_mainck_to_xtal
  95              	.L13:
  96 000a FFF7FEFF 		bl	pmc_osc_is_ready_mainck
  97 000e 0028     		cmp	r0, #0
  98 0010 FBD0     		beq	.L13
  99 0012 FFF7FEFF 		bl	pmc_disable_pllack
 100 0016 074B     		ldr	r3, .L20
 101 0018 074A     		ldr	r2, .L20+4
 102 001a 9A62     		str	r2, [r3, #40]
 103              	.L14:
 104 001c FFF7FEFF 		bl	pmc_is_locked_pllack
 105 0020 0028     		cmp	r0, #0
 106 0022 FBD0     		beq	.L14
 107 0024 0420     		movs	r0, #4
 108 0026 FFF7FEFF 		bl	pmc_switch_udpck_to_pllack
 109 002a BDE80840 		pop	{r3, lr}
 110 002e FFF7FEBF 		b	pmc_enable_udpck
 111              	.L21:
 112 0032 00BF     		.align	2
 113              	.L20:
 114 0034 00040E40 		.word	1074660352
ARM GAS  /tmp/ccXobDL4.s 			page 3


 115 0038 013F1320 		.word	538132225
 116              		.size	sysclk_enable_usb, .-sysclk_enable_usb
 117              		.section	.text.sysclk_disable_usb,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	sysclk_disable_usb
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu softvfp
 125              		.type	sysclk_disable_usb, %function
 126              	sysclk_disable_usb:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130 0000 FFF7FEBF 		b	pmc_disable_udpck
 131              		.size	sysclk_disable_usb, .-sysclk_disable_usb
 132              		.section	.text.sysclk_init,"ax",%progbits
 133              		.align	1
 134              		.p2align 2,,3
 135              		.global	sysclk_init
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu softvfp
 140              		.type	sysclk_init, %function
 141              	sysclk_init:
 142              		@ args = 0, pretend = 0, frame = 0
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144 0000 0F48     		ldr	r0, .L31
 145 0002 08B5     		push	{r3, lr}
 146 0004 FFF7FEFF 		bl	system_init_flash
 147 0008 3E21     		movs	r1, #62
 148 000a 0020     		movs	r0, #0
 149 000c FFF7FEFF 		bl	pmc_switch_mainck_to_xtal
 150              	.L24:
 151 0010 FFF7FEFF 		bl	pmc_osc_is_ready_mainck
 152 0014 0028     		cmp	r0, #0
 153 0016 FBD0     		beq	.L24
 154 0018 FFF7FEFF 		bl	pmc_disable_pllack
 155 001c 094B     		ldr	r3, .L31+4
 156 001e 0A4A     		ldr	r2, .L31+8
 157 0020 9A62     		str	r2, [r3, #40]
 158              	.L25:
 159 0022 FFF7FEFF 		bl	pmc_is_locked_pllack
 160 0026 0028     		cmp	r0, #0
 161 0028 FBD0     		beq	.L25
 162 002a 1020     		movs	r0, #16
 163 002c FFF7FEFF 		bl	pmc_switch_mck_to_pllack
 164 0030 FFF7FEFF 		bl	SystemCoreClockUpdate
 165 0034 0248     		ldr	r0, .L31
 166 0036 BDE80840 		pop	{r3, lr}
 167 003a FFF7FEBF 		b	system_init_flash
 168              	.L32:
 169 003e 00BF     		.align	2
 170              	.L31:
 171 0040 000E2707 		.word	120000000
ARM GAS  /tmp/ccXobDL4.s 			page 4


 172 0044 00040E40 		.word	1074660352
 173 0048 013F1320 		.word	538132225
 174              		.size	sysclk_init, .-sysclk_init
 175              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 176              		.align	2
 177              		.type	cpu_irq_critical_section_counter, %object
 178              		.size	cpu_irq_critical_section_counter, 4
 179              	cpu_irq_critical_section_counter:
 180 0000 00000000 		.space	4
 181              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 182              		.type	cpu_irq_prev_interrupt_state, %object
 183              		.size	cpu_irq_prev_interrupt_state, 1
 184              	cpu_irq_prev_interrupt_state:
 185 0000 00       		.space	1
 186              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
