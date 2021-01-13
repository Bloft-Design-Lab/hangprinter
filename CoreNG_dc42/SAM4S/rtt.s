ARM GAS  /tmp/ccDBbFka.s 			page 1


   1              		.cpu cortex-m4
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
  25 0000 034B     		ldr	r3, .L2
  26 0002 1B68     		ldr	r3, [r3]
  27 0004 43F48023 		orr	r3, r3, #262144
  28 0008 0B43     		orrs	r3, r3, r1
  29 000a 0360     		str	r3, [r0]
  30 000c 0020     		movs	r0, #0
  31 000e 7047     		bx	lr
  32              	.L3:
  33              		.align	2
  34              	.L2:
  35 0010 00000000 		.word	.LANCHOR0
  36              		.size	rtt_init, .-rtt_init
  37              		.section	.text.rtt_sel_source,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	rtt_sel_source
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu softvfp
  45              		.type	rtt_sel_source, %function
  46              	rtt_sel_source:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49              		@ link register save eliminated.
  50 0000 41B9     		cbnz	r1, .L8
  51 0002 0949     		ldr	r1, .L9
  52 0004 0268     		ldr	r2, [r0]
  53 0006 0B68     		ldr	r3, [r1]
  54 0008 23F08073 		bic	r3, r3, #16777216
  55 000c 1A43     		orrs	r2, r2, r3
  56 000e 0B60     		str	r3, [r1]
  57 0010 0260     		str	r2, [r0]
ARM GAS  /tmp/ccDBbFka.s 			page 2


  58 0012 7047     		bx	lr
  59              	.L8:
  60 0014 0449     		ldr	r1, .L9
  61 0016 0268     		ldr	r2, [r0]
  62 0018 0B68     		ldr	r3, [r1]
  63 001a 43F08073 		orr	r3, r3, #16777216
  64 001e 1A43     		orrs	r2, r2, r3
  65 0020 0B60     		str	r3, [r1]
  66 0022 0260     		str	r2, [r0]
  67 0024 7047     		bx	lr
  68              	.L10:
  69 0026 00BF     		.align	2
  70              	.L9:
  71 0028 00000000 		.word	.LANCHOR0
  72              		.size	rtt_sel_source, .-rtt_sel_source
  73              		.section	.text.rtt_enable,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	rtt_enable
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu softvfp
  81              		.type	rtt_enable, %function
  82              	rtt_enable:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85              		@ link register save eliminated.
  86 0000 0449     		ldr	r1, .L12
  87 0002 0268     		ldr	r2, [r0]
  88 0004 0B68     		ldr	r3, [r1]
  89 0006 23F48013 		bic	r3, r3, #1048576
  90 000a 1A43     		orrs	r2, r2, r3
  91 000c 0B60     		str	r3, [r1]
  92 000e 0260     		str	r2, [r0]
  93 0010 7047     		bx	lr
  94              	.L13:
  95 0012 00BF     		.align	2
  96              	.L12:
  97 0014 00000000 		.word	.LANCHOR0
  98              		.size	rtt_enable, .-rtt_enable
  99              		.section	.text.rtt_disable,"ax",%progbits
 100              		.align	1
 101              		.p2align 2,,3
 102              		.global	rtt_disable
 103              		.syntax unified
 104              		.thumb
 105              		.thumb_func
 106              		.fpu softvfp
 107              		.type	rtt_disable, %function
 108              	rtt_disable:
 109              		@ args = 0, pretend = 0, frame = 0
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111              		@ link register save eliminated.
 112 0000 0449     		ldr	r1, .L15
 113 0002 0268     		ldr	r2, [r0]
 114 0004 0B68     		ldr	r3, [r1]
ARM GAS  /tmp/ccDBbFka.s 			page 3


 115 0006 43F48013 		orr	r3, r3, #1048576
 116 000a 1A43     		orrs	r2, r2, r3
 117 000c 0B60     		str	r3, [r1]
 118 000e 0260     		str	r2, [r0]
 119 0010 7047     		bx	lr
 120              	.L16:
 121 0012 00BF     		.align	2
 122              	.L15:
 123 0014 00000000 		.word	.LANCHOR0
 124              		.size	rtt_disable, .-rtt_disable
 125              		.section	.text.rtt_enable_interrupt,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	rtt_enable_interrupt
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu softvfp
 133              		.type	rtt_enable_interrupt, %function
 134              	rtt_enable_interrupt:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137              		@ link register save eliminated.
 138 0000 034B     		ldr	r3, .L18
 139 0002 0268     		ldr	r2, [r0]
 140 0004 1B68     		ldr	r3, [r3]
 141 0006 1943     		orrs	r1, r1, r3
 142 0008 1143     		orrs	r1, r1, r2
 143 000a 0160     		str	r1, [r0]
 144 000c 7047     		bx	lr
 145              	.L19:
 146 000e 00BF     		.align	2
 147              	.L18:
 148 0010 00000000 		.word	.LANCHOR0
 149              		.size	rtt_enable_interrupt, .-rtt_enable_interrupt
 150              		.section	.text.rtt_disable_interrupt,"ax",%progbits
 151              		.align	1
 152              		.p2align 2,,3
 153              		.global	rtt_disable_interrupt
 154              		.syntax unified
 155              		.thumb
 156              		.thumb_func
 157              		.fpu softvfp
 158              		.type	rtt_disable_interrupt, %function
 159              	rtt_disable_interrupt:
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162              		@ link register save eliminated.
 163 0000 034A     		ldr	r2, .L21
 164 0002 0368     		ldr	r3, [r0]
 165 0004 1268     		ldr	r2, [r2]
 166 0006 23EA0101 		bic	r1, r3, r1
 167 000a 1143     		orrs	r1, r1, r2
 168 000c 0160     		str	r1, [r0]
 169 000e 7047     		bx	lr
 170              	.L22:
 171              		.align	2
ARM GAS  /tmp/ccDBbFka.s 			page 4


 172              	.L21:
 173 0010 00000000 		.word	.LANCHOR0
 174              		.size	rtt_disable_interrupt, .-rtt_disable_interrupt
 175              		.section	.text.rtt_read_timer_value,"ax",%progbits
 176              		.align	1
 177              		.p2align 2,,3
 178              		.global	rtt_read_timer_value
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu softvfp
 183              		.type	rtt_read_timer_value, %function
 184              	rtt_read_timer_value:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              		@ link register save eliminated.
 188 0000 8268     		ldr	r2, [r0, #8]
 189 0002 8368     		ldr	r3, [r0, #8]
 190 0004 9A42     		cmp	r2, r3
 191 0006 03D0     		beq	.L23
 192              	.L26:
 193 0008 8268     		ldr	r2, [r0, #8]
 194 000a 8368     		ldr	r3, [r0, #8]
 195 000c 9342     		cmp	r3, r2
 196 000e FBD1     		bne	.L26
 197              	.L23:
 198 0010 1846     		mov	r0, r3
 199 0012 7047     		bx	lr
 200              		.size	rtt_read_timer_value, .-rtt_read_timer_value
 201              		.section	.text.rtt_get_status,"ax",%progbits
 202              		.align	1
 203              		.p2align 2,,3
 204              		.global	rtt_get_status
 205              		.syntax unified
 206              		.thumb
 207              		.thumb_func
 208              		.fpu softvfp
 209              		.type	rtt_get_status, %function
 210              	rtt_get_status:
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213              		@ link register save eliminated.
 214 0000 C068     		ldr	r0, [r0, #12]
 215 0002 7047     		bx	lr
 216              		.size	rtt_get_status, .-rtt_get_status
 217              		.section	.text.rtt_write_alarm_time,"ax",%progbits
 218              		.align	1
 219              		.p2align 2,,3
 220              		.global	rtt_write_alarm_time
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu softvfp
 225              		.type	rtt_write_alarm_time, %function
 226              	rtt_write_alarm_time:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccDBbFka.s 			page 5


 229              		@ link register save eliminated.
 230 0000 30B4     		push	{r4, r5}
 231 0002 0E4D     		ldr	r5, .L37
 232 0004 0E4A     		ldr	r2, .L37+4
 233 0006 0468     		ldr	r4, [r0]
 234 0008 2B68     		ldr	r3, [r5]
 235 000a 1268     		ldr	r2, [r2]
 236 000c 23F48033 		bic	r3, r3, #65536
 237 0010 1343     		orrs	r3, r3, r2
 238 0012 04F48034 		and	r4, r4, #65536
 239 0016 2B60     		str	r3, [r5]
 240 0018 61B9     		cbnz	r1, .L30
 241 001a 4FF0FF33 		mov	r3, #-1
 242 001e 4360     		str	r3, [r0, #4]
 243              	.L31:
 244 0020 2CB1     		cbz	r4, .L32
 245 0022 064B     		ldr	r3, .L37
 246 0024 1968     		ldr	r1, [r3]
 247 0026 0A43     		orrs	r2, r2, r1
 248 0028 42F48032 		orr	r2, r2, #65536
 249 002c 1A60     		str	r2, [r3]
 250              	.L32:
 251 002e 0020     		movs	r0, #0
 252 0030 30BC     		pop	{r4, r5}
 253 0032 7047     		bx	lr
 254              	.L30:
 255 0034 0139     		subs	r1, r1, #1
 256 0036 4160     		str	r1, [r0, #4]
 257 0038 F2E7     		b	.L31
 258              	.L38:
 259 003a 00BF     		.align	2
 260              	.L37:
 261 003c 30140E40 		.word	1074664496
 262 0040 00000000 		.word	.LANCHOR0
 263              		.size	rtt_write_alarm_time, .-rtt_write_alarm_time
 264              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 265              		.align	2
 266              		.type	cpu_irq_critical_section_counter, %object
 267              		.size	cpu_irq_critical_section_counter, 4
 268              	cpu_irq_critical_section_counter:
 269 0000 00000000 		.space	4
 270              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 271              		.type	cpu_irq_prev_interrupt_state, %object
 272              		.size	cpu_irq_prev_interrupt_state, 1
 273              	cpu_irq_prev_interrupt_state:
 274 0000 00       		.space	1
 275              		.section	.bss.g_wobits_in_rtt_mr,"aw",%nobits
 276              		.align	2
 277              		.set	.LANCHOR0,. + 0
 278              		.type	g_wobits_in_rtt_mr, %object
 279              		.size	g_wobits_in_rtt_mr, 4
 280              	g_wobits_in_rtt_mr:
 281 0000 00000000 		.space	4
 282              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
