ARM GAS  /tmp/ccGNqmYc.s 			page 1


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
  13              		.file	"rswdt.c"
  14              		.section	.text.rswdt_get_timeout_value,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	rswdt_get_timeout_value
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	rswdt_get_timeout_value, %function
  23              	rswdt_get_timeout_value:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 084B     		ldr	r3, .L7
  28 0002 B3FBF1F1 		udiv	r1, r3, r1
  29 0006 8142     		cmp	r1, r0
  30 0008 02D9     		bls	.L6
  31              	.L4:
  32 000a 4FF6FF70 		movw	r0, #65535
  33 000e 7047     		bx	lr
  34              	.L6:
  35 0010 C1EB0133 		rsb	r3, r1, r1, lsl #12
  36 0014 8342     		cmp	r3, r0
  37 0016 F8D3     		bcc	.L4
  38 0018 B0FBF1F0 		udiv	r0, r0, r1
  39 001c C0F30B00 		ubfx	r0, r0, #0, #12
  40 0020 7047     		bx	lr
  41              	.L8:
  42 0022 00BF     		.align	2
  43              	.L7:
  44 0024 0020A107 		.word	128000000
  45              		.size	rswdt_get_timeout_value, .-rswdt_get_timeout_value
  46              		.section	.text.rswdt_init,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	rswdt_init
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	rswdt_init, %function
  55              	rswdt_init:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccGNqmYc.s 			page 2


  58              		@ link register save eliminated.
  59 0000 10B4     		push	{r4}
  60 0002 054C     		ldr	r4, .L11
  61 0004 C2F30B02 		ubfx	r2, r2, #0, #12
  62 0008 04EA0343 		and	r3, r4, r3, lsl #16
  63 000c 1343     		orrs	r3, r3, r2
  64 000e 0B43     		orrs	r3, r3, r1
  65 0010 4360     		str	r3, [r0, #4]
  66 0012 5DF8044B 		ldr	r4, [sp], #4
  67 0016 7047     		bx	lr
  68              	.L12:
  69              		.align	2
  70              	.L11:
  71 0018 0000FF0F 		.word	268369920
  72              		.size	rswdt_init, .-rswdt_init
  73              		.section	.text.rswdt_disable,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	rswdt_disable
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu fpv4-sp-d16
  81              		.type	rswdt_disable, %function
  82              	rswdt_disable:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85              		@ link register save eliminated.
  86 0000 4FF40043 		mov	r3, #32768
  87 0004 4360     		str	r3, [r0, #4]
  88 0006 7047     		bx	lr
  89              		.size	rswdt_disable, .-rswdt_disable
  90              		.section	.text.rswdt_restart,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	rswdt_restart
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	rswdt_restart, %function
  99              	rswdt_restart:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102              		@ link register save eliminated.
 103 0000 024B     		ldr	r3, .L16
 104 0002 9842     		cmp	r0, r3
 105 0004 04BF     		itt	eq
 106 0006 024B     		ldreq	r3, .L16+4
 107 0008 0360     		streq	r3, [r0]
 108 000a 7047     		bx	lr
 109              	.L17:
 110              		.align	2
 111              	.L16:
 112 000c 00190E40 		.word	1074665728
 113 0010 010000C4 		.word	-1006632959
 114              		.size	rswdt_restart, .-rswdt_restart
ARM GAS  /tmp/ccGNqmYc.s 			page 3


 115              		.section	.text.rswdt_get_status,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	rswdt_get_status
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv4-sp-d16
 123              		.type	rswdt_get_status, %function
 124              	rswdt_get_status:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127              		@ link register save eliminated.
 128 0000 8068     		ldr	r0, [r0, #8]
 129 0002 7047     		bx	lr
 130              		.size	rswdt_get_status, .-rswdt_get_status
 131              		.section	.text.rswdt_get_us_timeout_period,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.global	rswdt_get_us_timeout_period
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu fpv4-sp-d16
 139              		.type	rswdt_get_us_timeout_period, %function
 140              	rswdt_get_us_timeout_period:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143              		@ link register save eliminated.
 144 0000 4368     		ldr	r3, [r0, #4]
 145 0002 044A     		ldr	r2, .L20
 146 0004 C3F30B03 		ubfx	r3, r3, #0, #12
 147 0008 DB01     		lsls	r3, r3, #7
 148 000a B3FBF1F1 		udiv	r1, r3, r1
 149 000e 02FB01F0 		mul	r0, r2, r1
 150 0012 7047     		bx	lr
 151              	.L21:
 152              		.align	2
 153              	.L20:
 154 0014 40420F00 		.word	1000000
 155              		.size	rswdt_get_us_timeout_period, .-rswdt_get_us_timeout_period
 156              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 157              		.align	2
 158              		.type	cpu_irq_critical_section_counter, %object
 159              		.size	cpu_irq_critical_section_counter, 4
 160              	cpu_irq_critical_section_counter:
 161 0000 00000000 		.space	4
 162              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 163              		.type	cpu_irq_prev_interrupt_state, %object
 164              		.size	cpu_irq_prev_interrupt_state, 1
 165              	cpu_irq_prev_interrupt_state:
 166 0000 00       		.space	1
 167              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
