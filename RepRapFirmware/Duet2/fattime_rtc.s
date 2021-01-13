ARM GAS  /tmp/ccoVXU0P.s 			page 1


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
  13              		.file	"fattime_rtc.cpp"
  14              		.section	.text.get_fattime,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	get_fattime
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	get_fattime, %function
  23              	get_fattime:
  24              		@ args = 0, pretend = 0, frame = 48
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 30B5     		push	{r4, r5, lr}
  27 0002 144B     		ldr	r3, .L6
  28 0004 1C68     		ldr	r4, [r3]	@ unaligned
  29 0006 8DB0     		sub	sp, sp, #52
  30 0008 2046     		mov	r0, r4
  31 000a FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
  32 000e E8B1     		cbz	r0, .L3
  33 0010 2046     		mov	r0, r4
  34 0012 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
  35 0016 CDE90001 		strd	r0, [sp]
  36 001a 03A9     		add	r1, sp, #12
  37 001c 6846     		mov	r0, sp
  38 001e FFF7FEFF 		bl	gmtime_r
  39 0022 DDE90530 		ldrd	r3, r0, [sp, #20]
  40 0026 DDE90345 		ldrd	r4, r5, [sp, #12]
  41 002a DDE90721 		ldrd	r2, r1, [sp, #28]
  42 002e DB02     		lsls	r3, r3, #11
  43 0030 43EA0040 		orr	r0, r3, r0, lsl #16
  44 0034 40EA4510 		orr	r0, r0, r5, lsl #5
  45 0038 40EA6400 		orr	r0, r0, r4, asr #1
  46 003c 5039     		subs	r1, r1, #80
  47 003e 40EA4160 		orr	r0, r0, r1, lsl #25
  48 0042 0132     		adds	r2, r2, #1
  49 0044 40EA4250 		orr	r0, r0, r2, lsl #21
  50 0048 0DB0     		add	sp, sp, #52
  51              		@ sp needed
  52 004a 30BD     		pop	{r4, r5, pc}
  53              	.L3:
  54 004c 0248     		ldr	r0, .L6+4
  55 004e 0DB0     		add	sp, sp, #52
  56              		@ sp needed
  57 0050 30BD     		pop	{r4, r5, pc}
ARM GAS  /tmp/ccoVXU0P.s 			page 2


  58              	.L7:
  59 0052 00BF     		.align	2
  60              	.L6:
  61 0054 00000000 		.word	reprap
  62 0058 01002100 		.word	2162689
  63              		.size	get_fattime, .-get_fattime
  64              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  65              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  66              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  67              	_ZL28cpu_irq_prev_interrupt_state:
  68 0000 00       		.space	1
  69              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  70              		.align	2
  71              		.type	_ZL32cpu_irq_critical_section_counter, %object
  72              		.size	_ZL32cpu_irq_critical_section_counter, 4
  73              	_ZL32cpu_irq_critical_section_counter:
  74 0000 00000000 		.space	4
  75              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
  76              		.align	2
  77              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
  78              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
  79              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
  80 0000 00000000 		.space	4
  81              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
