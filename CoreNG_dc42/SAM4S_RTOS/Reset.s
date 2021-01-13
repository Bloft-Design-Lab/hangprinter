ARM GAS  /tmp/ccvZvvmv.s 			page 1


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
  11              		.file	"Reset.cpp"
  12              		.section	.text.Reset,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	Reset
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	Reset, %function
  21              	Reset:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0148     		ldr	r0, .L2
  26 0002 FFF7FEBF 		b	rstc_start_software_reset
  27              	.L3:
  28 0006 00BF     		.align	2
  29              	.L2:
  30 0008 00140E40 		.word	1074664448
  31              		.size	Reset, .-Reset
  32              		.section	.text.EraseAndReset,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	EraseAndReset
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu softvfp
  40              		.type	EraseAndReset, %function
  41              	EraseAndReset:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44 0000 70B5     		push	{r4, r5, r6, lr}
  45              		.syntax unified
  46              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  47 0002 72B6     		cpsid i
  48              	@ 0 "" 2
  49              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  50 0004 BFF35F8F 		dmb
  51              	@ 0 "" 2
  52              		.thumb
  53              		.syntax unified
  54 0008 0D4B     		ldr	r3, .L10
  55 000a 0E4E     		ldr	r6, .L10+4
  56 000c 0E4D     		ldr	r5, .L10+8
  57 000e 0022     		movs	r2, #0
ARM GAS  /tmp/ccvZvvmv.s 			page 2


  58 0010 1A70     		strb	r2, [r3]
  59 0012 4FF48004 		mov	r4, #4194304
  60              	.L5:
  61 0016 3046     		mov	r0, r6
  62 0018 FFF7FEFF 		bl	wdt_restart
  63 001c 0023     		movs	r3, #0
  64 001e 04F2FF11 		addw	r1, r4, #511
  65 0022 2046     		mov	r0, r4
  66 0024 1A46     		mov	r2, r3
  67 0026 04F50074 		add	r4, r4, #512
  68 002a FFF7FEFF 		bl	flash_unlock
  69 002e AC42     		cmp	r4, r5
  70 0030 F1D1     		bne	.L5
  71 0032 0120     		movs	r0, #1
  72 0034 FFF7FEFF 		bl	flash_clear_gpnvm
  73 0038 0448     		ldr	r0, .L10+12
  74 003a FFF7FEFF 		bl	rstc_start_software_reset
  75              	.L6:
  76 003e FEE7     		b	.L6
  77              	.L11:
  78              		.align	2
  79              	.L10:
  80 0040 00000000 		.word	g_interrupt_enabled
  81 0044 50140E40 		.word	1074664528
  82 0048 00024800 		.word	4719104
  83 004c 00140E40 		.word	1074664448
  84              		.size	EraseAndReset, .-EraseAndReset
  85              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  86              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  87              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  88              	_ZL28cpu_irq_prev_interrupt_state:
  89 0000 00       		.space	1
  90              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  91              		.align	2
  92              		.type	_ZL32cpu_irq_critical_section_counter, %object
  93              		.size	_ZL32cpu_irq_critical_section_counter, 4
  94              	_ZL32cpu_irq_critical_section_counter:
  95 0000 00000000 		.space	4
  96              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
