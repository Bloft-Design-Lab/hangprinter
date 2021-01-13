ARM GAS  /tmp/cc6nrkGU.s 			page 1


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
  13              		.file	"rtt.c"
  14              		.section	.text.rtt_init,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	rtt_init
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	rtt_init, %function
  23              	rtt_init:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 034B     		ldr	r3, .L2
  28 0002 1B68     		ldr	r3, [r3]
  29 0004 43F48023 		orr	r3, r3, #262144
  30 0008 0B43     		orrs	r3, r3, r1
  31 000a 0360     		str	r3, [r0]
  32 000c 0020     		movs	r0, #0
  33 000e 7047     		bx	lr
  34              	.L3:
  35              		.align	2
  36              	.L2:
  37 0010 00000000 		.word	.LANCHOR0
  38              		.size	rtt_init, .-rtt_init
  39              		.section	.text.rtt_sel_source,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	rtt_sel_source
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv4-sp-d16
  47              		.type	rtt_sel_source, %function
  48              	rtt_sel_source:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51              		@ link register save eliminated.
  52 0000 41B9     		cbnz	r1, .L8
  53 0002 0949     		ldr	r1, .L9
  54 0004 0268     		ldr	r2, [r0]
  55 0006 0B68     		ldr	r3, [r1]
  56 0008 23F08073 		bic	r3, r3, #16777216
  57 000c 1A43     		orrs	r2, r2, r3
ARM GAS  /tmp/cc6nrkGU.s 			page 2


  58 000e 0B60     		str	r3, [r1]
  59 0010 0260     		str	r2, [r0]
  60 0012 7047     		bx	lr
  61              	.L8:
  62 0014 0449     		ldr	r1, .L9
  63 0016 0268     		ldr	r2, [r0]
  64 0018 0B68     		ldr	r3, [r1]
  65 001a 43F08073 		orr	r3, r3, #16777216
  66 001e 1A43     		orrs	r2, r2, r3
  67 0020 0B60     		str	r3, [r1]
  68 0022 0260     		str	r2, [r0]
  69 0024 7047     		bx	lr
  70              	.L10:
  71 0026 00BF     		.align	2
  72              	.L9:
  73 0028 00000000 		.word	.LANCHOR0
  74              		.size	rtt_sel_source, .-rtt_sel_source
  75              		.section	.text.rtt_enable,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	rtt_enable
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu fpv4-sp-d16
  83              		.type	rtt_enable, %function
  84              	rtt_enable:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87              		@ link register save eliminated.
  88 0000 0449     		ldr	r1, .L12
  89 0002 0268     		ldr	r2, [r0]
  90 0004 0B68     		ldr	r3, [r1]
  91 0006 23F48013 		bic	r3, r3, #1048576
  92 000a 1A43     		orrs	r2, r2, r3
  93 000c 0B60     		str	r3, [r1]
  94 000e 0260     		str	r2, [r0]
  95 0010 7047     		bx	lr
  96              	.L13:
  97 0012 00BF     		.align	2
  98              	.L12:
  99 0014 00000000 		.word	.LANCHOR0
 100              		.size	rtt_enable, .-rtt_enable
 101              		.section	.text.rtt_disable,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	rtt_disable
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	rtt_disable, %function
 110              	rtt_disable:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 0449     		ldr	r1, .L15
ARM GAS  /tmp/cc6nrkGU.s 			page 3


 115 0002 0268     		ldr	r2, [r0]
 116 0004 0B68     		ldr	r3, [r1]
 117 0006 43F48013 		orr	r3, r3, #1048576
 118 000a 1A43     		orrs	r2, r2, r3
 119 000c 0B60     		str	r3, [r1]
 120 000e 0260     		str	r2, [r0]
 121 0010 7047     		bx	lr
 122              	.L16:
 123 0012 00BF     		.align	2
 124              	.L15:
 125 0014 00000000 		.word	.LANCHOR0
 126              		.size	rtt_disable, .-rtt_disable
 127              		.section	.text.rtt_enable_interrupt,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.global	rtt_enable_interrupt
 131              		.syntax unified
 132              		.thumb
 133              		.thumb_func
 134              		.fpu fpv4-sp-d16
 135              		.type	rtt_enable_interrupt, %function
 136              	rtt_enable_interrupt:
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139              		@ link register save eliminated.
 140 0000 034B     		ldr	r3, .L18
 141 0002 0268     		ldr	r2, [r0]
 142 0004 1B68     		ldr	r3, [r3]
 143 0006 1943     		orrs	r1, r1, r3
 144 0008 1143     		orrs	r1, r1, r2
 145 000a 0160     		str	r1, [r0]
 146 000c 7047     		bx	lr
 147              	.L19:
 148 000e 00BF     		.align	2
 149              	.L18:
 150 0010 00000000 		.word	.LANCHOR0
 151              		.size	rtt_enable_interrupt, .-rtt_enable_interrupt
 152              		.section	.text.rtt_disable_interrupt,"ax",%progbits
 153              		.align	1
 154              		.p2align 2,,3
 155              		.global	rtt_disable_interrupt
 156              		.syntax unified
 157              		.thumb
 158              		.thumb_func
 159              		.fpu fpv4-sp-d16
 160              		.type	rtt_disable_interrupt, %function
 161              	rtt_disable_interrupt:
 162              		@ args = 0, pretend = 0, frame = 0
 163              		@ frame_needed = 0, uses_anonymous_args = 0
 164              		@ link register save eliminated.
 165 0000 034A     		ldr	r2, .L21
 166 0002 0368     		ldr	r3, [r0]
 167 0004 1268     		ldr	r2, [r2]
 168 0006 23EA0101 		bic	r1, r3, r1
 169 000a 1143     		orrs	r1, r1, r2
 170 000c 0160     		str	r1, [r0]
 171 000e 7047     		bx	lr
ARM GAS  /tmp/cc6nrkGU.s 			page 4


 172              	.L22:
 173              		.align	2
 174              	.L21:
 175 0010 00000000 		.word	.LANCHOR0
 176              		.size	rtt_disable_interrupt, .-rtt_disable_interrupt
 177              		.section	.text.rtt_read_timer_value,"ax",%progbits
 178              		.align	1
 179              		.p2align 2,,3
 180              		.global	rtt_read_timer_value
 181              		.syntax unified
 182              		.thumb
 183              		.thumb_func
 184              		.fpu fpv4-sp-d16
 185              		.type	rtt_read_timer_value, %function
 186              	rtt_read_timer_value:
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 189              		@ link register save eliminated.
 190 0000 8268     		ldr	r2, [r0, #8]
 191 0002 8368     		ldr	r3, [r0, #8]
 192 0004 9A42     		cmp	r2, r3
 193 0006 03D0     		beq	.L23
 194              	.L26:
 195 0008 8268     		ldr	r2, [r0, #8]
 196 000a 8368     		ldr	r3, [r0, #8]
 197 000c 9342     		cmp	r3, r2
 198 000e FBD1     		bne	.L26
 199              	.L23:
 200 0010 1846     		mov	r0, r3
 201 0012 7047     		bx	lr
 202              		.size	rtt_read_timer_value, .-rtt_read_timer_value
 203              		.section	.text.rtt_get_status,"ax",%progbits
 204              		.align	1
 205              		.p2align 2,,3
 206              		.global	rtt_get_status
 207              		.syntax unified
 208              		.thumb
 209              		.thumb_func
 210              		.fpu fpv4-sp-d16
 211              		.type	rtt_get_status, %function
 212              	rtt_get_status:
 213              		@ args = 0, pretend = 0, frame = 0
 214              		@ frame_needed = 0, uses_anonymous_args = 0
 215              		@ link register save eliminated.
 216 0000 C068     		ldr	r0, [r0, #12]
 217 0002 7047     		bx	lr
 218              		.size	rtt_get_status, .-rtt_get_status
 219              		.section	.text.rtt_write_alarm_time,"ax",%progbits
 220              		.align	1
 221              		.p2align 2,,3
 222              		.global	rtt_write_alarm_time
 223              		.syntax unified
 224              		.thumb
 225              		.thumb_func
 226              		.fpu fpv4-sp-d16
 227              		.type	rtt_write_alarm_time, %function
 228              	rtt_write_alarm_time:
ARM GAS  /tmp/cc6nrkGU.s 			page 5


 229              		@ args = 0, pretend = 0, frame = 0
 230              		@ frame_needed = 0, uses_anonymous_args = 0
 231              		@ link register save eliminated.
 232 0000 30B4     		push	{r4, r5}
 233 0002 0E4D     		ldr	r5, .L37
 234 0004 0E4A     		ldr	r2, .L37+4
 235 0006 0468     		ldr	r4, [r0]
 236 0008 2B68     		ldr	r3, [r5]
 237 000a 1268     		ldr	r2, [r2]
 238 000c 23F48033 		bic	r3, r3, #65536
 239 0010 1343     		orrs	r3, r3, r2
 240 0012 04F48034 		and	r4, r4, #65536
 241 0016 2B60     		str	r3, [r5]
 242 0018 61B9     		cbnz	r1, .L30
 243 001a 4FF0FF33 		mov	r3, #-1
 244 001e 4360     		str	r3, [r0, #4]
 245              	.L31:
 246 0020 2CB1     		cbz	r4, .L32
 247 0022 064B     		ldr	r3, .L37
 248 0024 1968     		ldr	r1, [r3]
 249 0026 0A43     		orrs	r2, r2, r1
 250 0028 42F48032 		orr	r2, r2, #65536
 251 002c 1A60     		str	r2, [r3]
 252              	.L32:
 253 002e 0020     		movs	r0, #0
 254 0030 30BC     		pop	{r4, r5}
 255 0032 7047     		bx	lr
 256              	.L30:
 257 0034 0139     		subs	r1, r1, #1
 258 0036 4160     		str	r1, [r0, #4]
 259 0038 F2E7     		b	.L31
 260              	.L38:
 261 003a 00BF     		.align	2
 262              	.L37:
 263 003c 30180E40 		.word	1074665520
 264 0040 00000000 		.word	.LANCHOR0
 265              		.size	rtt_write_alarm_time, .-rtt_write_alarm_time
 266              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 267              		.align	2
 268              		.type	cpu_irq_critical_section_counter, %object
 269              		.size	cpu_irq_critical_section_counter, 4
 270              	cpu_irq_critical_section_counter:
 271 0000 00000000 		.space	4
 272              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 273              		.type	cpu_irq_prev_interrupt_state, %object
 274              		.size	cpu_irq_prev_interrupt_state, 1
 275              	cpu_irq_prev_interrupt_state:
 276 0000 00       		.space	1
 277              		.section	.bss.g_wobits_in_rtt_mr,"aw",%nobits
 278              		.align	2
 279              		.set	.LANCHOR0,. + 0
 280              		.type	g_wobits_in_rtt_mr, %object
 281              		.size	g_wobits_in_rtt_mr, 4
 282              	g_wobits_in_rtt_mr:
 283 0000 00000000 		.space	4
 284              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
