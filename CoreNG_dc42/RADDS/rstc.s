ARM GAS  /tmp/cc5kxmga.s 			page 1


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
  11              		.file	"rstc.c"
  12              		.section	.text.rstc_set_external_reset,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	rstc_set_external_reset
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	rstc_set_external_reset, %function
  21              	rstc_set_external_reset:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 8368     		ldr	r3, [r0, #8]
  26 0002 0902     		lsls	r1, r1, #8
  27 0004 01F47061 		and	r1, r1, #3840
  28 0008 23F07F43 		bic	r3, r3, #-16777216
  29 000c 41F02541 		orr	r1, r1, #-1526726656
  30 0010 23F47063 		bic	r3, r3, #3840
  31 0014 1943     		orrs	r1, r1, r3
  32 0016 8160     		str	r1, [r0, #8]
  33 0018 7047     		bx	lr
  34              		.size	rstc_set_external_reset, .-rstc_set_external_reset
  35 001a 00BF     		.section	.text.rstc_enable_user_reset,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	rstc_enable_user_reset
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu softvfp
  43              		.type	rstc_enable_user_reset, %function
  44              	rstc_enable_user_reset:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47              		@ link register save eliminated.
  48 0000 8368     		ldr	r3, [r0, #8]
  49 0002 23F07F43 		bic	r3, r3, #-16777216
  50 0006 43F02543 		orr	r3, r3, #-1526726656
  51 000a 43F00103 		orr	r3, r3, #1
  52 000e 8360     		str	r3, [r0, #8]
  53 0010 7047     		bx	lr
  54              		.size	rstc_enable_user_reset, .-rstc_enable_user_reset
  55 0012 00BF     		.section	.text.rstc_disable_user_reset,"ax",%progbits
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  /tmp/cc5kxmga.s 			page 2


  58              		.global	rstc_disable_user_reset
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu softvfp
  63              		.type	rstc_disable_user_reset, %function
  64              	rstc_disable_user_reset:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67              		@ link register save eliminated.
  68 0000 8368     		ldr	r3, [r0, #8]
  69 0002 23F07F43 		bic	r3, r3, #-16777216
  70 0006 23F00103 		bic	r3, r3, #1
  71 000a 43F02543 		orr	r3, r3, #-1526726656
  72 000e 8360     		str	r3, [r0, #8]
  73 0010 7047     		bx	lr
  74              		.size	rstc_disable_user_reset, .-rstc_disable_user_reset
  75 0012 00BF     		.section	.text.rstc_enable_user_reset_interrupt,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	rstc_enable_user_reset_interrupt
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu softvfp
  83              		.type	rstc_enable_user_reset_interrupt, %function
  84              	rstc_enable_user_reset_interrupt:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87              		@ link register save eliminated.
  88 0000 8368     		ldr	r3, [r0, #8]
  89 0002 23F07F43 		bic	r3, r3, #-16777216
  90 0006 43F02543 		orr	r3, r3, #-1526726656
  91 000a 43F01003 		orr	r3, r3, #16
  92 000e 8360     		str	r3, [r0, #8]
  93 0010 7047     		bx	lr
  94              		.size	rstc_enable_user_reset_interrupt, .-rstc_enable_user_reset_interrupt
  95 0012 00BF     		.section	.text.rstc_disable_user_reset_interrupt,"ax",%progbits
  96              		.align	1
  97              		.p2align 2,,3
  98              		.global	rstc_disable_user_reset_interrupt
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu softvfp
 103              		.type	rstc_disable_user_reset_interrupt, %function
 104              	rstc_disable_user_reset_interrupt:
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107              		@ link register save eliminated.
 108 0000 8368     		ldr	r3, [r0, #8]
 109 0002 23F07F43 		bic	r3, r3, #-16777216
 110 0006 23F01003 		bic	r3, r3, #16
 111 000a 43F02543 		orr	r3, r3, #-1526726656
 112 000e 8360     		str	r3, [r0, #8]
 113 0010 7047     		bx	lr
 114              		.size	rstc_disable_user_reset_interrupt, .-rstc_disable_user_reset_interrupt
ARM GAS  /tmp/cc5kxmga.s 			page 3


 115 0012 00BF     		.section	.text.rstc_start_software_reset,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	rstc_start_software_reset
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu softvfp
 123              		.type	rstc_start_software_reset, %function
 124              	rstc_start_software_reset:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127              		@ link register save eliminated.
 128 0000 014B     		ldr	r3, .L7
 129 0002 0360     		str	r3, [r0]
 130 0004 7047     		bx	lr
 131              	.L8:
 132 0006 00BF     		.align	2
 133              	.L7:
 134 0008 050000A5 		.word	-1526726651
 135              		.size	rstc_start_software_reset, .-rstc_start_software_reset
 136              		.section	.text.rstc_reset_extern,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	rstc_reset_extern
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu softvfp
 144              		.type	rstc_reset_extern, %function
 145              	rstc_reset_extern:
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148              		@ link register save eliminated.
 149 0000 014B     		ldr	r3, .L10
 150 0002 0360     		str	r3, [r0]
 151 0004 7047     		bx	lr
 152              	.L11:
 153 0006 00BF     		.align	2
 154              	.L10:
 155 0008 080000A5 		.word	-1526726648
 156              		.size	rstc_reset_extern, .-rstc_reset_extern
 157              		.section	.text.rstc_get_status,"ax",%progbits
 158              		.align	1
 159              		.p2align 2,,3
 160              		.global	rstc_get_status
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu softvfp
 165              		.type	rstc_get_status, %function
 166              	rstc_get_status:
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169              		@ link register save eliminated.
 170 0000 4068     		ldr	r0, [r0, #4]
 171 0002 7047     		bx	lr
ARM GAS  /tmp/cc5kxmga.s 			page 4


 172              		.size	rstc_get_status, .-rstc_get_status
 173              		.section	.text.rstc_get_reset_cause,"ax",%progbits
 174              		.align	1
 175              		.p2align 2,,3
 176              		.global	rstc_get_reset_cause
 177              		.syntax unified
 178              		.thumb
 179              		.thumb_func
 180              		.fpu softvfp
 181              		.type	rstc_get_reset_cause, %function
 182              	rstc_get_reset_cause:
 183              		@ args = 0, pretend = 0, frame = 0
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185              		@ link register save eliminated.
 186 0000 4068     		ldr	r0, [r0, #4]
 187 0002 00F4E060 		and	r0, r0, #1792
 188 0006 7047     		bx	lr
 189              		.size	rstc_get_reset_cause, .-rstc_get_reset_cause
 190              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 191              		.align	2
 192              		.type	cpu_irq_critical_section_counter, %object
 193              		.size	cpu_irq_critical_section_counter, 4
 194              	cpu_irq_critical_section_counter:
 195 0000 00000000 		.space	4
 196              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 197              		.type	cpu_irq_prev_interrupt_state, %object
 198              		.size	cpu_irq_prev_interrupt_state, 1
 199              	cpu_irq_prev_interrupt_state:
 200 0000 00       		.space	1
 201              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
