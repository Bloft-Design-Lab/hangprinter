ARM GAS  /tmp/cc7PdBnc.s 			page 1


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
  14              		.section	.text.rstc_set_external_reset,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	rstc_set_external_reset
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	rstc_set_external_reset, %function
  23              	rstc_set_external_reset:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 8368     		ldr	r3, [r0, #8]
  28 0002 0902     		lsls	r1, r1, #8
  29 0004 01F47061 		and	r1, r1, #3840
  30 0008 23F07F43 		bic	r3, r3, #-16777216
  31 000c 41F02541 		orr	r1, r1, #-1526726656
  32 0010 23F47063 		bic	r3, r3, #3840
  33 0014 1943     		orrs	r1, r1, r3
  34 0016 8160     		str	r1, [r0, #8]
  35 0018 7047     		bx	lr
  36              		.size	rstc_set_external_reset, .-rstc_set_external_reset
  37 001a 00BF     		.section	.text.rstc_enable_user_reset,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	rstc_enable_user_reset
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu fpv4-sp-d16
  45              		.type	rstc_enable_user_reset, %function
  46              	rstc_enable_user_reset:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49              		@ link register save eliminated.
  50 0000 8368     		ldr	r3, [r0, #8]
  51 0002 23F07F43 		bic	r3, r3, #-16777216
  52 0006 43F02543 		orr	r3, r3, #-1526726656
  53 000a 43F00103 		orr	r3, r3, #1
  54 000e 8360     		str	r3, [r0, #8]
  55 0010 7047     		bx	lr
  56              		.size	rstc_enable_user_reset, .-rstc_enable_user_reset
  57 0012 00BF     		.section	.text.rstc_disable_user_reset,"ax",%progbits
ARM GAS  /tmp/cc7PdBnc.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	rstc_disable_user_reset
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	rstc_disable_user_reset, %function
  66              	rstc_disable_user_reset:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 8368     		ldr	r3, [r0, #8]
  71 0002 23F07F43 		bic	r3, r3, #-16777216
  72 0006 23F00103 		bic	r3, r3, #1
  73 000a 43F02543 		orr	r3, r3, #-1526726656
  74 000e 8360     		str	r3, [r0, #8]
  75 0010 7047     		bx	lr
  76              		.size	rstc_disable_user_reset, .-rstc_disable_user_reset
  77 0012 00BF     		.section	.text.rstc_enable_user_reset_interrupt,"ax",%progbits
  78              		.align	1
  79              		.p2align 2,,3
  80              		.global	rstc_enable_user_reset_interrupt
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	rstc_enable_user_reset_interrupt, %function
  86              	rstc_enable_user_reset_interrupt:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90 0000 8368     		ldr	r3, [r0, #8]
  91 0002 23F07F43 		bic	r3, r3, #-16777216
  92 0006 43F02543 		orr	r3, r3, #-1526726656
  93 000a 43F01003 		orr	r3, r3, #16
  94 000e 8360     		str	r3, [r0, #8]
  95 0010 7047     		bx	lr
  96              		.size	rstc_enable_user_reset_interrupt, .-rstc_enable_user_reset_interrupt
  97 0012 00BF     		.section	.text.rstc_disable_user_reset_interrupt,"ax",%progbits
  98              		.align	1
  99              		.p2align 2,,3
 100              		.global	rstc_disable_user_reset_interrupt
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	rstc_disable_user_reset_interrupt, %function
 106              	rstc_disable_user_reset_interrupt:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109              		@ link register save eliminated.
 110 0000 8368     		ldr	r3, [r0, #8]
 111 0002 23F07F43 		bic	r3, r3, #-16777216
 112 0006 23F01003 		bic	r3, r3, #16
 113 000a 43F02543 		orr	r3, r3, #-1526726656
 114 000e 8360     		str	r3, [r0, #8]
ARM GAS  /tmp/cc7PdBnc.s 			page 3


 115 0010 7047     		bx	lr
 116              		.size	rstc_disable_user_reset_interrupt, .-rstc_disable_user_reset_interrupt
 117 0012 00BF     		.section	.text.rstc_start_software_reset,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	rstc_start_software_reset
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu fpv4-sp-d16
 125              		.type	rstc_start_software_reset, %function
 126              	rstc_start_software_reset:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130 0000 014B     		ldr	r3, .L7
 131 0002 0360     		str	r3, [r0]
 132 0004 7047     		bx	lr
 133              	.L8:
 134 0006 00BF     		.align	2
 135              	.L7:
 136 0008 050000A5 		.word	-1526726651
 137              		.size	rstc_start_software_reset, .-rstc_start_software_reset
 138              		.section	.text.rstc_reset_extern,"ax",%progbits
 139              		.align	1
 140              		.p2align 2,,3
 141              		.global	rstc_reset_extern
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu fpv4-sp-d16
 146              		.type	rstc_reset_extern, %function
 147              	rstc_reset_extern:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151 0000 014B     		ldr	r3, .L10
 152 0002 0360     		str	r3, [r0]
 153 0004 7047     		bx	lr
 154              	.L11:
 155 0006 00BF     		.align	2
 156              	.L10:
 157 0008 080000A5 		.word	-1526726648
 158              		.size	rstc_reset_extern, .-rstc_reset_extern
 159              		.section	.text.rstc_get_status,"ax",%progbits
 160              		.align	1
 161              		.p2align 2,,3
 162              		.global	rstc_get_status
 163              		.syntax unified
 164              		.thumb
 165              		.thumb_func
 166              		.fpu fpv4-sp-d16
 167              		.type	rstc_get_status, %function
 168              	rstc_get_status:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171              		@ link register save eliminated.
ARM GAS  /tmp/cc7PdBnc.s 			page 4


 172 0000 4068     		ldr	r0, [r0, #4]
 173 0002 7047     		bx	lr
 174              		.size	rstc_get_status, .-rstc_get_status
 175              		.section	.text.rstc_get_reset_cause,"ax",%progbits
 176              		.align	1
 177              		.p2align 2,,3
 178              		.global	rstc_get_reset_cause
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu fpv4-sp-d16
 183              		.type	rstc_get_reset_cause, %function
 184              	rstc_get_reset_cause:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              		@ link register save eliminated.
 188 0000 4068     		ldr	r0, [r0, #4]
 189 0002 00F4E060 		and	r0, r0, #1792
 190 0006 7047     		bx	lr
 191              		.size	rstc_get_reset_cause, .-rstc_get_reset_cause
 192              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 193              		.align	2
 194              		.type	cpu_irq_critical_section_counter, %object
 195              		.size	cpu_irq_critical_section_counter, 4
 196              	cpu_irq_critical_section_counter:
 197 0000 00000000 		.space	4
 198              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 199              		.type	cpu_irq_prev_interrupt_state, %object
 200              		.size	cpu_irq_prev_interrupt_state, 1
 201              	cpu_irq_prev_interrupt_state:
 202 0000 00       		.space	1
 203              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
