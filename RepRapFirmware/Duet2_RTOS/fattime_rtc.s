ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrYci7e.s 			page 1


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
  14              		.text
  15              		.section	.text.get_fattime,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	get_fattime
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	get_fattime, %function
  24              	get_fattime:
  25              		@ args = 0, pretend = 0, frame = 48
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 30B5     		push	{r4, r5, lr}
  28 0002 144B     		ldr	r3, .L6
  29 0004 5C68     		ldr	r4, [r3, #4]	@ unaligned
  30 0006 8DB0     		sub	sp, sp, #52
  31 0008 2046     		mov	r0, r4
  32 000a FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
  33 000e E8B1     		cbz	r0, .L3
  34 0010 2046     		mov	r0, r4
  35 0012 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
  36 0016 CDE90001 		strd	r0, [sp]
  37 001a 03A9     		add	r1, sp, #12
  38 001c 6846     		mov	r0, sp
  39 001e FFF7FEFF 		bl	gmtime_r
  40 0022 DDE90530 		ldrd	r3, r0, [sp, #20]
  41 0026 DDE90345 		ldrd	r4, r5, [sp, #12]
  42 002a DDE90721 		ldrd	r2, r1, [sp, #28]
  43 002e DB02     		lsls	r3, r3, #11
  44 0030 43EA0040 		orr	r0, r3, r0, lsl #16
  45 0034 40EA4510 		orr	r0, r0, r5, lsl #5
  46 0038 40EA6400 		orr	r0, r0, r4, asr #1
  47 003c 5039     		subs	r1, r1, #80
  48 003e 40EA4160 		orr	r0, r0, r1, lsl #25
  49 0042 0132     		adds	r2, r2, #1
  50 0044 40EA4250 		orr	r0, r0, r2, lsl #21
  51 0048 0DB0     		add	sp, sp, #52
  52              		@ sp needed
  53 004a 30BD     		pop	{r4, r5, pc}
  54              	.L3:
  55 004c 0248     		ldr	r0, .L6+4
  56 004e 0DB0     		add	sp, sp, #52
  57              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrYci7e.s 			page 2


  58 0050 30BD     		pop	{r4, r5, pc}
  59              	.L7:
  60 0052 00BF     		.align	2
  61              	.L6:
  62 0054 00000000 		.word	reprap
  63 0058 01002100 		.word	2162689
  64              		.size	get_fattime, .-get_fattime
  65              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  66              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  67              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  68              	_ZL28cpu_irq_prev_interrupt_state:
  69 0000 00       		.space	1
  70              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  71              		.align	2
  72              		.type	_ZL32cpu_irq_critical_section_counter, %object
  73              		.size	_ZL32cpu_irq_critical_section_counter, 4
  74              	_ZL32cpu_irq_critical_section_counter:
  75 0000 00000000 		.space	4
  76              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
