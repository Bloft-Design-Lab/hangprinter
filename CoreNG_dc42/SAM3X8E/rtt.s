ARM GAS  /tmp/ccpFwC30.s 			page 1


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
  11              		.file	"rtt.c"
  12              		.section	.text.rtt_init,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	rtt_init
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	rtt_init, %function
  21              	rtt_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 41F48021 		orr	r1, r1, #262144
  26 0004 0160     		str	r1, [r0]
  27 0006 0020     		movs	r0, #0
  28 0008 7047     		bx	lr
  29              		.size	rtt_init, .-rtt_init
  30 000a 00BF     		.section	.text.rtt_enable_interrupt,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	rtt_enable_interrupt
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu softvfp
  38              		.type	rtt_enable_interrupt, %function
  39              	rtt_enable_interrupt:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0368     		ldr	r3, [r0]
  44 0002 1943     		orrs	r1, r1, r3
  45 0004 0160     		str	r1, [r0]
  46 0006 7047     		bx	lr
  47              		.size	rtt_enable_interrupt, .-rtt_enable_interrupt
  48              		.section	.text.rtt_disable_interrupt,"ax",%progbits
  49              		.align	1
  50              		.p2align 2,,3
  51              		.global	rtt_disable_interrupt
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu softvfp
  56              		.type	rtt_disable_interrupt, %function
  57              	rtt_disable_interrupt:
ARM GAS  /tmp/ccpFwC30.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 0368     		ldr	r3, [r0]
  62 0002 23EA0101 		bic	r1, r3, r1
  63 0006 0160     		str	r1, [r0]
  64 0008 7047     		bx	lr
  65              		.size	rtt_disable_interrupt, .-rtt_disable_interrupt
  66 000a 00BF     		.section	.text.rtt_read_timer_value,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	rtt_read_timer_value
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu softvfp
  74              		.type	rtt_read_timer_value, %function
  75              	rtt_read_timer_value:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              		@ link register save eliminated.
  79 0000 8268     		ldr	r2, [r0, #8]
  80 0002 8368     		ldr	r3, [r0, #8]
  81 0004 9A42     		cmp	r2, r3
  82 0006 03D0     		beq	.L4
  83              	.L7:
  84 0008 8268     		ldr	r2, [r0, #8]
  85 000a 8368     		ldr	r3, [r0, #8]
  86 000c 9342     		cmp	r3, r2
  87 000e FBD1     		bne	.L7
  88              	.L4:
  89 0010 1846     		mov	r0, r3
  90 0012 7047     		bx	lr
  91              		.size	rtt_read_timer_value, .-rtt_read_timer_value
  92              		.section	.text.rtt_get_status,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	rtt_get_status
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu softvfp
 100              		.type	rtt_get_status, %function
 101              	rtt_get_status:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104              		@ link register save eliminated.
 105 0000 C068     		ldr	r0, [r0, #12]
 106 0002 7047     		bx	lr
 107              		.size	rtt_get_status, .-rtt_get_status
 108              		.section	.text.rtt_write_alarm_time,"ax",%progbits
 109              		.align	1
 110              		.p2align 2,,3
 111              		.global	rtt_write_alarm_time
 112              		.syntax unified
 113              		.thumb
 114              		.thumb_func
ARM GAS  /tmp/ccpFwC30.s 			page 3


 115              		.fpu softvfp
 116              		.type	rtt_write_alarm_time, %function
 117              	rtt_write_alarm_time:
 118              		@ args = 0, pretend = 0, frame = 0
 119              		@ frame_needed = 0, uses_anonymous_args = 0
 120              		@ link register save eliminated.
 121 0000 10B4     		push	{r4}
 122 0002 0C4C     		ldr	r4, .L19
 123 0004 0368     		ldr	r3, [r0]
 124 0006 2268     		ldr	r2, [r4]
 125 0008 03F48033 		and	r3, r3, #65536
 126 000c 22F48032 		bic	r2, r2, #65536
 127 0010 2260     		str	r2, [r4]
 128 0012 59B9     		cbnz	r1, .L12
 129 0014 4FF0FF32 		mov	r2, #-1
 130 0018 4260     		str	r2, [r0, #4]
 131              	.L13:
 132 001a 23B1     		cbz	r3, .L14
 133 001c 054A     		ldr	r2, .L19
 134 001e 1368     		ldr	r3, [r2]
 135 0020 43F48033 		orr	r3, r3, #65536
 136 0024 1360     		str	r3, [r2]
 137              	.L14:
 138 0026 0020     		movs	r0, #0
 139 0028 10BC     		pop	{r4}
 140 002a 7047     		bx	lr
 141              	.L12:
 142 002c 0139     		subs	r1, r1, #1
 143 002e 4160     		str	r1, [r0, #4]
 144 0030 F3E7     		b	.L13
 145              	.L20:
 146 0032 00BF     		.align	2
 147              	.L19:
 148 0034 301A0E40 		.word	1074666032
 149              		.size	rtt_write_alarm_time, .-rtt_write_alarm_time
 150              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 151              		.align	2
 152              		.type	cpu_irq_critical_section_counter, %object
 153              		.size	cpu_irq_critical_section_counter, 4
 154              	cpu_irq_critical_section_counter:
 155 0000 00000000 		.space	4
 156              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 157              		.type	cpu_irq_prev_interrupt_state, %object
 158              		.size	cpu_irq_prev_interrupt_state, 1
 159              	cpu_irq_prev_interrupt_state:
 160 0000 00       		.space	1
 161              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
