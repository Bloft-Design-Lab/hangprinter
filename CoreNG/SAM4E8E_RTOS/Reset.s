ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccf0FJLT.s 			page 1


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
  14              		.text
  15              		.section	.text.Reset,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	Reset
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	Reset, %function
  24              	Reset:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0148     		ldr	r0, .L3
  29 0002 FFF7FEBF 		b	rstc_start_software_reset
  30              	.L4:
  31 0006 00BF     		.align	2
  32              	.L3:
  33 0008 00180E40 		.word	1074665472
  34              		.size	Reset, .-Reset
  35              		.section	.text.EraseAndReset,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	EraseAndReset
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	EraseAndReset, %function
  44              	EraseAndReset:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47 0000 70B5     		push	{r4, r5, r6, lr}
  48              		.syntax unified
  49              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  50 0002 72B6     		cpsid i
  51              	@ 0 "" 2
  52              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  53 0004 BFF35F8F 		dmb
  54              	@ 0 "" 2
  55              		.thumb
  56              		.syntax unified
  57 0008 0D4B     		ldr	r3, .L10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccf0FJLT.s 			page 2


  58 000a 0E4E     		ldr	r6, .L10+4
  59 000c 0E4D     		ldr	r5, .L10+8
  60 000e 0022     		movs	r2, #0
  61 0010 1A70     		strb	r2, [r3]
  62 0012 4FF48004 		mov	r4, #4194304
  63              	.L6:
  64 0016 3046     		mov	r0, r6
  65 0018 FFF7FEFF 		bl	wdt_restart
  66 001c 0023     		movs	r3, #0
  67 001e 04F2FF11 		addw	r1, r4, #511
  68 0022 2046     		mov	r0, r4
  69 0024 1A46     		mov	r2, r3
  70 0026 04F50074 		add	r4, r4, #512
  71 002a FFF7FEFF 		bl	flash_unlock
  72 002e AC42     		cmp	r4, r5
  73 0030 F1D1     		bne	.L6
  74 0032 0120     		movs	r0, #1
  75 0034 FFF7FEFF 		bl	flash_clear_gpnvm
  76 0038 0448     		ldr	r0, .L10+12
  77 003a FFF7FEFF 		bl	rstc_start_software_reset
  78              	.L7:
  79 003e FEE7     		b	.L7
  80              	.L11:
  81              		.align	2
  82              	.L10:
  83 0040 00000000 		.word	g_interrupt_enabled
  84 0044 50180E40 		.word	1074665552
  85 0048 00024800 		.word	4719104
  86 004c 00180E40 		.word	1074665472
  87              		.size	EraseAndReset, .-EraseAndReset
  88              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  89              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  90              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  91              	_ZL28cpu_irq_prev_interrupt_state:
  92 0000 00       		.space	1
  93              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  94              		.align	2
  95              		.type	_ZL32cpu_irq_critical_section_counter, %object
  96              		.size	_ZL32cpu_irq_critical_section_counter, 4
  97              	_ZL32cpu_irq_critical_section_counter:
  98 0000 00000000 		.space	4
  99              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
