ARM GAS  /tmp/ccvKSv6Y.s 			page 1


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
  13              		.file	"Reset.cpp"
  14              		.section	.text.Reset,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	Reset
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	Reset, %function
  23              	Reset:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0148     		ldr	r0, .L2
  28 0002 FFF7FEBF 		b	rstc_start_software_reset
  29              	.L3:
  30 0006 00BF     		.align	2
  31              	.L2:
  32 0008 00180E40 		.word	1074665472
  33              		.size	Reset, .-Reset
  34              		.section	.text.EraseAndReset,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	EraseAndReset
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	EraseAndReset, %function
  43              	EraseAndReset:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46 0000 70B5     		push	{r4, r5, r6, lr}
  47              		.syntax unified
  48              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  49 0002 72B6     		cpsid i
  50              	@ 0 "" 2
  51              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  52 0004 BFF35F8F 		dmb
  53              	@ 0 "" 2
  54              		.thumb
  55              		.syntax unified
  56 0008 0D4B     		ldr	r3, .L10
  57 000a 0E4E     		ldr	r6, .L10+4
ARM GAS  /tmp/ccvKSv6Y.s 			page 2


  58 000c 0E4D     		ldr	r5, .L10+8
  59 000e 0022     		movs	r2, #0
  60 0010 1A70     		strb	r2, [r3]
  61 0012 4FF48004 		mov	r4, #4194304
  62              	.L5:
  63 0016 3046     		mov	r0, r6
  64 0018 FFF7FEFF 		bl	wdt_restart
  65 001c 0023     		movs	r3, #0
  66 001e 04F2FF11 		addw	r1, r4, #511
  67 0022 2046     		mov	r0, r4
  68 0024 1A46     		mov	r2, r3
  69 0026 04F50074 		add	r4, r4, #512
  70 002a FFF7FEFF 		bl	flash_unlock
  71 002e AC42     		cmp	r4, r5
  72 0030 F1D1     		bne	.L5
  73 0032 0120     		movs	r0, #1
  74 0034 FFF7FEFF 		bl	flash_clear_gpnvm
  75 0038 0448     		ldr	r0, .L10+12
  76 003a FFF7FEFF 		bl	rstc_start_software_reset
  77              	.L6:
  78 003e FEE7     		b	.L6
  79              	.L11:
  80              		.align	2
  81              	.L10:
  82 0040 00000000 		.word	g_interrupt_enabled
  83 0044 50180E40 		.word	1074665552
  84 0048 00024800 		.word	4719104
  85 004c 00180E40 		.word	1074665472
  86              		.size	EraseAndReset, .-EraseAndReset
  87              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  88              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  89              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  90              	_ZL28cpu_irq_prev_interrupt_state:
  91 0000 00       		.space	1
  92              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  93              		.align	2
  94              		.type	_ZL32cpu_irq_critical_section_counter, %object
  95              		.size	_ZL32cpu_irq_critical_section_counter, 4
  96              	_ZL32cpu_irq_critical_section_counter:
  97 0000 00000000 		.space	4
  98              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
