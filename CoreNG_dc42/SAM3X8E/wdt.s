ARM GAS  /tmp/cc2ZCsyb.s 			page 1


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
  11              		.file	"wdt.c"
  12              		.section	.text.wdt_get_timeout_value,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	wdt_get_timeout_value
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	wdt_get_timeout_value, %function
  21              	wdt_get_timeout_value:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 084B     		ldr	r3, .L7
  26 0002 B3FBF1F1 		udiv	r1, r3, r1
  27 0006 8142     		cmp	r1, r0
  28 0008 02D9     		bls	.L6
  29              	.L4:
  30 000a 4FF6FF70 		movw	r0, #65535
  31 000e 7047     		bx	lr
  32              	.L6:
  33 0010 C1EB0133 		rsb	r3, r1, r1, lsl #12
  34 0014 8342     		cmp	r3, r0
  35 0016 F8D3     		bcc	.L4
  36 0018 B0FBF1F0 		udiv	r0, r0, r1
  37 001c C0F30B00 		ubfx	r0, r0, #0, #12
  38 0020 7047     		bx	lr
  39              	.L8:
  40 0022 00BF     		.align	2
  41              	.L7:
  42 0024 0020A107 		.word	128000000
  43              		.size	wdt_get_timeout_value, .-wdt_get_timeout_value
  44              		.section	.text.wdt_init,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	wdt_init
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu softvfp
  52              		.type	wdt_init, %function
  53              	wdt_init:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 10B4     		push	{r4}
ARM GAS  /tmp/cc2ZCsyb.s 			page 2


  58 0002 054C     		ldr	r4, .L11
  59 0004 C2F30B02 		ubfx	r2, r2, #0, #12
  60 0008 04EA0343 		and	r3, r4, r3, lsl #16
  61 000c 1343     		orrs	r3, r3, r2
  62 000e 0B43     		orrs	r3, r3, r1
  63 0010 4360     		str	r3, [r0, #4]
  64 0012 10BC     		pop	{r4}
  65 0014 7047     		bx	lr
  66              	.L12:
  67 0016 00BF     		.align	2
  68              	.L11:
  69 0018 0000FF0F 		.word	268369920
  70              		.size	wdt_init, .-wdt_init
  71              		.section	.text.wdt_disable,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	wdt_disable
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu softvfp
  79              		.type	wdt_disable, %function
  80              	wdt_disable:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 4FF40043 		mov	r3, #32768
  85 0004 4360     		str	r3, [r0, #4]
  86 0006 7047     		bx	lr
  87              		.size	wdt_disable, .-wdt_disable
  88              		.section	.text.wdt_restart,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	wdt_restart
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu softvfp
  96              		.type	wdt_restart, %function
  97              	wdt_restart:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100              		@ link register save eliminated.
 101 0000 024B     		ldr	r3, .L16
 102 0002 9842     		cmp	r0, r3
 103 0004 04BF     		itt	eq
 104 0006 024B     		ldreq	r3, .L16+4
 105 0008 0360     		streq	r3, [r0]
 106 000a 7047     		bx	lr
 107              	.L17:
 108              		.align	2
 109              	.L16:
 110 000c 501A0E40 		.word	1074666064
 111 0010 010000A5 		.word	-1526726655
 112              		.size	wdt_restart, .-wdt_restart
 113              		.section	.text.wdt_get_status,"ax",%progbits
 114              		.align	1
ARM GAS  /tmp/cc2ZCsyb.s 			page 3


 115              		.p2align 2,,3
 116              		.global	wdt_get_status
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu softvfp
 121              		.type	wdt_get_status, %function
 122              	wdt_get_status:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 126 0000 8068     		ldr	r0, [r0, #8]
 127 0002 7047     		bx	lr
 128              		.size	wdt_get_status, .-wdt_get_status
 129              		.section	.text.wdt_get_us_timeout_period,"ax",%progbits
 130              		.align	1
 131              		.p2align 2,,3
 132              		.global	wdt_get_us_timeout_period
 133              		.syntax unified
 134              		.thumb
 135              		.thumb_func
 136              		.fpu softvfp
 137              		.type	wdt_get_us_timeout_period, %function
 138              	wdt_get_us_timeout_period:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141              		@ link register save eliminated.
 142 0000 4368     		ldr	r3, [r0, #4]
 143 0002 0448     		ldr	r0, .L20
 144 0004 C3F30B03 		ubfx	r3, r3, #0, #12
 145 0008 DB01     		lsls	r3, r3, #7
 146 000a B3FBF1F1 		udiv	r1, r3, r1
 147 000e 00FB01F0 		mul	r0, r0, r1
 148 0012 7047     		bx	lr
 149              	.L21:
 150              		.align	2
 151              	.L20:
 152 0014 40420F00 		.word	1000000
 153              		.size	wdt_get_us_timeout_period, .-wdt_get_us_timeout_period
 154              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 155              		.align	2
 156              		.type	cpu_irq_critical_section_counter, %object
 157              		.size	cpu_irq_critical_section_counter, 4
 158              	cpu_irq_critical_section_counter:
 159 0000 00000000 		.space	4
 160              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 161              		.type	cpu_irq_prev_interrupt_state, %object
 162              		.size	cpu_irq_prev_interrupt_state, 1
 163              	cpu_irq_prev_interrupt_state:
 164 0000 00       		.space	1
 165              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
