ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccnvIs1I.s 			page 1


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
  13              		.file	"wdt.c"
  14              		.text
  15              		.section	.text.wdt_get_timeout_value,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	wdt_get_timeout_value
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	wdt_get_timeout_value, %function
  24              	wdt_get_timeout_value:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 084B     		ldr	r3, .L6
  29 0002 B3FBF1F1 		udiv	r1, r3, r1
  30 0006 8142     		cmp	r1, r0
  31 0008 08D8     		bhi	.L4
  32 000a C1EB0133 		rsb	r3, r1, r1, lsl #12
  33 000e 8342     		cmp	r3, r0
  34 0010 04D3     		bcc	.L4
  35 0012 B0FBF1F0 		udiv	r0, r0, r1
  36 0016 C0F30B00 		ubfx	r0, r0, #0, #12
  37 001a 7047     		bx	lr
  38              	.L4:
  39 001c 4FF6FF70 		movw	r0, #65535
  40 0020 7047     		bx	lr
  41              	.L7:
  42 0022 00BF     		.align	2
  43              	.L6:
  44 0024 0020A107 		.word	128000000
  45              		.size	wdt_get_timeout_value, .-wdt_get_timeout_value
  46              		.section	.text.wdt_init,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	wdt_init
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	wdt_init, %function
  55              	wdt_init:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccnvIs1I.s 			page 2


  58              		@ link register save eliminated.
  59 0000 10B4     		push	{r4}
  60 0002 054C     		ldr	r4, .L10
  61 0004 C2F30B02 		ubfx	r2, r2, #0, #12
  62 0008 04EA0343 		and	r3, r4, r3, lsl #16
  63 000c 1343     		orrs	r3, r3, r2
  64 000e 0B43     		orrs	r3, r3, r1
  65 0010 4360     		str	r3, [r0, #4]
  66 0012 5DF8044B 		ldr	r4, [sp], #4
  67 0016 7047     		bx	lr
  68              	.L11:
  69              		.align	2
  70              	.L10:
  71 0018 0000FF0F 		.word	268369920
  72              		.size	wdt_init, .-wdt_init
  73              		.section	.text.wdt_disable,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	wdt_disable
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu fpv4-sp-d16
  81              		.type	wdt_disable, %function
  82              	wdt_disable:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85              		@ link register save eliminated.
  86 0000 4FF40043 		mov	r3, #32768
  87 0004 4360     		str	r3, [r0, #4]
  88 0006 7047     		bx	lr
  89              		.size	wdt_disable, .-wdt_disable
  90              		.section	.text.wdt_restart,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	wdt_restart
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	wdt_restart, %function
  99              	wdt_restart:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102              		@ link register save eliminated.
 103 0000 024B     		ldr	r3, .L15
 104 0002 9842     		cmp	r0, r3
 105 0004 04BF     		itt	eq
 106 0006 024B     		ldreq	r3, .L15+4
 107 0008 0360     		streq	r3, [r0]
 108 000a 7047     		bx	lr
 109              	.L16:
 110              		.align	2
 111              	.L15:
 112 000c 50180E40 		.word	1074665552
 113 0010 010000A5 		.word	-1526726655
 114              		.size	wdt_restart, .-wdt_restart
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccnvIs1I.s 			page 3


 115              		.section	.text.wdt_get_status,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	wdt_get_status
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv4-sp-d16
 123              		.type	wdt_get_status, %function
 124              	wdt_get_status:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127              		@ link register save eliminated.
 128 0000 8068     		ldr	r0, [r0, #8]
 129 0002 7047     		bx	lr
 130              		.size	wdt_get_status, .-wdt_get_status
 131              		.section	.text.wdt_get_us_timeout_period,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.global	wdt_get_us_timeout_period
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu fpv4-sp-d16
 139              		.type	wdt_get_us_timeout_period, %function
 140              	wdt_get_us_timeout_period:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143              		@ link register save eliminated.
 144 0000 4368     		ldr	r3, [r0, #4]
 145 0002 044A     		ldr	r2, .L19
 146 0004 C3F30B03 		ubfx	r3, r3, #0, #12
 147 0008 DB01     		lsls	r3, r3, #7
 148 000a B3FBF1F1 		udiv	r1, r3, r1
 149 000e 02FB01F0 		mul	r0, r2, r1
 150 0012 7047     		bx	lr
 151              	.L20:
 152              		.align	2
 153              	.L19:
 154 0014 40420F00 		.word	1000000
 155              		.size	wdt_get_us_timeout_period, .-wdt_get_us_timeout_period
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
 167              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
