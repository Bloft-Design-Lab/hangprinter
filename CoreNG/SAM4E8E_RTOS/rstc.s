ARM GAS  C:\Users\paja\AppData\Local\Temp\ccgjgqDY.s 			page 1


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
  13              		.file	"rstc.c"
  14              		.text
  15              		.section	.text.rstc_set_external_reset,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	rstc_set_external_reset
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	rstc_set_external_reset, %function
  24              	rstc_set_external_reset:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 8368     		ldr	r3, [r0, #8]
  29 0002 0902     		lsls	r1, r1, #8
  30 0004 01F47061 		and	r1, r1, #3840
  31 0008 23F07F43 		bic	r3, r3, #-16777216
  32 000c 41F02541 		orr	r1, r1, #-1526726656
  33 0010 23F47063 		bic	r3, r3, #3840
  34 0014 1943     		orrs	r1, r1, r3
  35 0016 8160     		str	r1, [r0, #8]
  36 0018 7047     		bx	lr
  37              		.size	rstc_set_external_reset, .-rstc_set_external_reset
  38 001a 00BF     		.section	.text.rstc_enable_user_reset,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	rstc_enable_user_reset
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  46              		.type	rstc_enable_user_reset, %function
  47              	rstc_enable_user_reset:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50              		@ link register save eliminated.
  51 0000 8368     		ldr	r3, [r0, #8]
  52 0002 23F07F43 		bic	r3, r3, #-16777216
  53 0006 43F02543 		orr	r3, r3, #-1526726656
  54 000a 43F00103 		orr	r3, r3, #1
  55 000e 8360     		str	r3, [r0, #8]
  56 0010 7047     		bx	lr
  57              		.size	rstc_enable_user_reset, .-rstc_enable_user_reset
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccgjgqDY.s 			page 2


  58 0012 00BF     		.section	.text.rstc_disable_user_reset,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.global	rstc_disable_user_reset
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu fpv4-sp-d16
  66              		.type	rstc_disable_user_reset, %function
  67              	rstc_disable_user_reset:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70              		@ link register save eliminated.
  71 0000 8368     		ldr	r3, [r0, #8]
  72 0002 23F07F43 		bic	r3, r3, #-16777216
  73 0006 23F00103 		bic	r3, r3, #1
  74 000a 43F02543 		orr	r3, r3, #-1526726656
  75 000e 8360     		str	r3, [r0, #8]
  76 0010 7047     		bx	lr
  77              		.size	rstc_disable_user_reset, .-rstc_disable_user_reset
  78 0012 00BF     		.section	.text.rstc_enable_user_reset_interrupt,"ax",%progbits
  79              		.align	1
  80              		.p2align 2,,3
  81              		.global	rstc_enable_user_reset_interrupt
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu fpv4-sp-d16
  86              		.type	rstc_enable_user_reset_interrupt, %function
  87              	rstc_enable_user_reset_interrupt:
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90              		@ link register save eliminated.
  91 0000 8368     		ldr	r3, [r0, #8]
  92 0002 23F07F43 		bic	r3, r3, #-16777216
  93 0006 43F02543 		orr	r3, r3, #-1526726656
  94 000a 43F01003 		orr	r3, r3, #16
  95 000e 8360     		str	r3, [r0, #8]
  96 0010 7047     		bx	lr
  97              		.size	rstc_enable_user_reset_interrupt, .-rstc_enable_user_reset_interrupt
  98 0012 00BF     		.section	.text.rstc_disable_user_reset_interrupt,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	rstc_disable_user_reset_interrupt
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	rstc_disable_user_reset_interrupt, %function
 107              	rstc_disable_user_reset_interrupt:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 8368     		ldr	r3, [r0, #8]
 112 0002 23F07F43 		bic	r3, r3, #-16777216
 113 0006 23F01003 		bic	r3, r3, #16
 114 000a 43F02543 		orr	r3, r3, #-1526726656
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccgjgqDY.s 			page 3


 115 000e 8360     		str	r3, [r0, #8]
 116 0010 7047     		bx	lr
 117              		.size	rstc_disable_user_reset_interrupt, .-rstc_disable_user_reset_interrupt
 118 0012 00BF     		.section	.text.rstc_start_software_reset,"ax",%progbits
 119              		.align	1
 120              		.p2align 2,,3
 121              		.global	rstc_start_software_reset
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu fpv4-sp-d16
 126              		.type	rstc_start_software_reset, %function
 127              	rstc_start_software_reset:
 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131 0000 014B     		ldr	r3, .L8
 132 0002 0360     		str	r3, [r0]
 133 0004 7047     		bx	lr
 134              	.L9:
 135 0006 00BF     		.align	2
 136              	.L8:
 137 0008 050000A5 		.word	-1526726651
 138              		.size	rstc_start_software_reset, .-rstc_start_software_reset
 139              		.section	.text.rstc_reset_extern,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.global	rstc_reset_extern
 143              		.syntax unified
 144              		.thumb
 145              		.thumb_func
 146              		.fpu fpv4-sp-d16
 147              		.type	rstc_reset_extern, %function
 148              	rstc_reset_extern:
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151              		@ link register save eliminated.
 152 0000 014B     		ldr	r3, .L11
 153 0002 0360     		str	r3, [r0]
 154 0004 7047     		bx	lr
 155              	.L12:
 156 0006 00BF     		.align	2
 157              	.L11:
 158 0008 080000A5 		.word	-1526726648
 159              		.size	rstc_reset_extern, .-rstc_reset_extern
 160              		.section	.text.rstc_get_status,"ax",%progbits
 161              		.align	1
 162              		.p2align 2,,3
 163              		.global	rstc_get_status
 164              		.syntax unified
 165              		.thumb
 166              		.thumb_func
 167              		.fpu fpv4-sp-d16
 168              		.type	rstc_get_status, %function
 169              	rstc_get_status:
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccgjgqDY.s 			page 4


 172              		@ link register save eliminated.
 173 0000 4068     		ldr	r0, [r0, #4]
 174 0002 7047     		bx	lr
 175              		.size	rstc_get_status, .-rstc_get_status
 176              		.section	.text.rstc_get_reset_cause,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	rstc_get_reset_cause
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu fpv4-sp-d16
 184              		.type	rstc_get_reset_cause, %function
 185              	rstc_get_reset_cause:
 186              		@ args = 0, pretend = 0, frame = 0
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188              		@ link register save eliminated.
 189 0000 4068     		ldr	r0, [r0, #4]
 190 0002 00F4E060 		and	r0, r0, #1792
 191 0006 7047     		bx	lr
 192              		.size	rstc_get_reset_cause, .-rstc_get_reset_cause
 193              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 194              		.align	2
 195              		.type	cpu_irq_critical_section_counter, %object
 196              		.size	cpu_irq_critical_section_counter, 4
 197              	cpu_irq_critical_section_counter:
 198 0000 00000000 		.space	4
 199              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 200              		.type	cpu_irq_prev_interrupt_state, %object
 201              		.size	cpu_irq_prev_interrupt_state, 1
 202              	cpu_irq_prev_interrupt_state:
 203 0000 00       		.space	1
 204              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
