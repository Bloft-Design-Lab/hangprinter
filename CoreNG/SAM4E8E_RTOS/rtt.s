ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccfhH8dX.s 			page 1


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
  14              		.text
  15              		.section	.text.rtt_init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	rtt_init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	rtt_init, %function
  24              	rtt_init:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 034B     		ldr	r3, .L3
  29 0002 1B68     		ldr	r3, [r3]
  30 0004 43F48023 		orr	r3, r3, #262144
  31 0008 0B43     		orrs	r3, r3, r1
  32 000a 0360     		str	r3, [r0]
  33 000c 0020     		movs	r0, #0
  34 000e 7047     		bx	lr
  35              	.L4:
  36              		.align	2
  37              	.L3:
  38 0010 00000000 		.word	.LANCHOR0
  39              		.size	rtt_init, .-rtt_init
  40              		.section	.text.rtt_sel_source,"ax",%progbits
  41              		.align	1
  42              		.p2align 2,,3
  43              		.global	rtt_sel_source
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	rtt_sel_source, %function
  49              	rtt_sel_source:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 084A     		ldr	r2, .L9
  54 0002 1368     		ldr	r3, [r2]
  55 0004 31B9     		cbnz	r1, .L8
  56 0006 0168     		ldr	r1, [r0]
  57 0008 23F08073 		bic	r3, r3, #16777216
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccfhH8dX.s 			page 2


  58 000c 1943     		orrs	r1, r1, r3
  59 000e 1360     		str	r3, [r2]
  60 0010 0160     		str	r1, [r0]
  61 0012 7047     		bx	lr
  62              	.L8:
  63 0014 0168     		ldr	r1, [r0]
  64 0016 43F08073 		orr	r3, r3, #16777216
  65 001a 1943     		orrs	r1, r1, r3
  66 001c 1360     		str	r3, [r2]
  67 001e 0160     		str	r1, [r0]
  68 0020 7047     		bx	lr
  69              	.L10:
  70 0022 00BF     		.align	2
  71              	.L9:
  72 0024 00000000 		.word	.LANCHOR0
  73              		.size	rtt_sel_source, .-rtt_sel_source
  74              		.section	.text.rtt_enable,"ax",%progbits
  75              		.align	1
  76              		.p2align 2,,3
  77              		.global	rtt_enable
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu fpv4-sp-d16
  82              		.type	rtt_enable, %function
  83              	rtt_enable:
  84              		@ args = 0, pretend = 0, frame = 0
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86              		@ link register save eliminated.
  87 0000 0449     		ldr	r1, .L12
  88 0002 0268     		ldr	r2, [r0]
  89 0004 0B68     		ldr	r3, [r1]
  90 0006 23F48013 		bic	r3, r3, #1048576
  91 000a 1A43     		orrs	r2, r2, r3
  92 000c 0B60     		str	r3, [r1]
  93 000e 0260     		str	r2, [r0]
  94 0010 7047     		bx	lr
  95              	.L13:
  96 0012 00BF     		.align	2
  97              	.L12:
  98 0014 00000000 		.word	.LANCHOR0
  99              		.size	rtt_enable, .-rtt_enable
 100              		.section	.text.rtt_disable,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	rtt_disable
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu fpv4-sp-d16
 108              		.type	rtt_disable, %function
 109              	rtt_disable:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 0449     		ldr	r1, .L15
 114 0002 0268     		ldr	r2, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccfhH8dX.s 			page 3


 115 0004 0B68     		ldr	r3, [r1]
 116 0006 43F48013 		orr	r3, r3, #1048576
 117 000a 1A43     		orrs	r2, r2, r3
 118 000c 0B60     		str	r3, [r1]
 119 000e 0260     		str	r2, [r0]
 120 0010 7047     		bx	lr
 121              	.L16:
 122 0012 00BF     		.align	2
 123              	.L15:
 124 0014 00000000 		.word	.LANCHOR0
 125              		.size	rtt_disable, .-rtt_disable
 126              		.section	.text.rtt_enable_interrupt,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	rtt_enable_interrupt
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv4-sp-d16
 134              		.type	rtt_enable_interrupt, %function
 135              	rtt_enable_interrupt:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138              		@ link register save eliminated.
 139 0000 034B     		ldr	r3, .L18
 140 0002 0268     		ldr	r2, [r0]
 141 0004 1B68     		ldr	r3, [r3]
 142 0006 1943     		orrs	r1, r1, r3
 143 0008 1143     		orrs	r1, r1, r2
 144 000a 0160     		str	r1, [r0]
 145 000c 7047     		bx	lr
 146              	.L19:
 147 000e 00BF     		.align	2
 148              	.L18:
 149 0010 00000000 		.word	.LANCHOR0
 150              		.size	rtt_enable_interrupt, .-rtt_enable_interrupt
 151              		.section	.text.rtt_disable_interrupt,"ax",%progbits
 152              		.align	1
 153              		.p2align 2,,3
 154              		.global	rtt_disable_interrupt
 155              		.syntax unified
 156              		.thumb
 157              		.thumb_func
 158              		.fpu fpv4-sp-d16
 159              		.type	rtt_disable_interrupt, %function
 160              	rtt_disable_interrupt:
 161              		@ args = 0, pretend = 0, frame = 0
 162              		@ frame_needed = 0, uses_anonymous_args = 0
 163              		@ link register save eliminated.
 164 0000 034A     		ldr	r2, .L21
 165 0002 0368     		ldr	r3, [r0]
 166 0004 1268     		ldr	r2, [r2]
 167 0006 23EA0101 		bic	r1, r3, r1
 168 000a 1143     		orrs	r1, r1, r2
 169 000c 0160     		str	r1, [r0]
 170 000e 7047     		bx	lr
 171              	.L22:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccfhH8dX.s 			page 4


 172              		.align	2
 173              	.L21:
 174 0010 00000000 		.word	.LANCHOR0
 175              		.size	rtt_disable_interrupt, .-rtt_disable_interrupt
 176              		.section	.text.rtt_read_timer_value,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	rtt_read_timer_value
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu fpv4-sp-d16
 184              		.type	rtt_read_timer_value, %function
 185              	rtt_read_timer_value:
 186              		@ args = 0, pretend = 0, frame = 0
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188              		@ link register save eliminated.
 189 0000 8268     		ldr	r2, [r0, #8]
 190 0002 8368     		ldr	r3, [r0, #8]
 191 0004 9A42     		cmp	r2, r3
 192 0006 03D0     		beq	.L23
 193              	.L25:
 194 0008 8268     		ldr	r2, [r0, #8]
 195 000a 8368     		ldr	r3, [r0, #8]
 196 000c 9342     		cmp	r3, r2
 197 000e FBD1     		bne	.L25
 198              	.L23:
 199 0010 1846     		mov	r0, r3
 200 0012 7047     		bx	lr
 201              		.size	rtt_read_timer_value, .-rtt_read_timer_value
 202              		.section	.text.rtt_get_status,"ax",%progbits
 203              		.align	1
 204              		.p2align 2,,3
 205              		.global	rtt_get_status
 206              		.syntax unified
 207              		.thumb
 208              		.thumb_func
 209              		.fpu fpv4-sp-d16
 210              		.type	rtt_get_status, %function
 211              	rtt_get_status:
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 0, uses_anonymous_args = 0
 214              		@ link register save eliminated.
 215 0000 C068     		ldr	r0, [r0, #12]
 216 0002 7047     		bx	lr
 217              		.size	rtt_get_status, .-rtt_get_status
 218              		.section	.text.rtt_write_alarm_time,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	rtt_write_alarm_time
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv4-sp-d16
 226              		.type	rtt_write_alarm_time, %function
 227              	rtt_write_alarm_time:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccfhH8dX.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 30B4     		push	{r4, r5}
 232 0002 0E4D     		ldr	r5, .L36
 233 0004 0E4A     		ldr	r2, .L36+4
 234 0006 0468     		ldr	r4, [r0]
 235 0008 2B68     		ldr	r3, [r5]
 236 000a 1268     		ldr	r2, [r2]
 237 000c 23F48033 		bic	r3, r3, #65536
 238 0010 1343     		orrs	r3, r3, r2
 239 0012 04F48034 		and	r4, r4, #65536
 240 0016 2B60     		str	r3, [r5]
 241 0018 61B9     		cbnz	r1, .L29
 242 001a 4FF0FF33 		mov	r3, #-1
 243 001e 4360     		str	r3, [r0, #4]
 244              	.L30:
 245 0020 2CB1     		cbz	r4, .L31
 246 0022 064B     		ldr	r3, .L36
 247 0024 1968     		ldr	r1, [r3]
 248 0026 0A43     		orrs	r2, r2, r1
 249 0028 42F48032 		orr	r2, r2, #65536
 250 002c 1A60     		str	r2, [r3]
 251              	.L31:
 252 002e 0020     		movs	r0, #0
 253 0030 30BC     		pop	{r4, r5}
 254 0032 7047     		bx	lr
 255              	.L29:
 256 0034 0139     		subs	r1, r1, #1
 257 0036 4160     		str	r1, [r0, #4]
 258 0038 F2E7     		b	.L30
 259              	.L37:
 260 003a 00BF     		.align	2
 261              	.L36:
 262 003c 30180E40 		.word	1074665520
 263 0040 00000000 		.word	.LANCHOR0
 264              		.size	rtt_write_alarm_time, .-rtt_write_alarm_time
 265              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 266              		.align	2
 267              		.type	cpu_irq_critical_section_counter, %object
 268              		.size	cpu_irq_critical_section_counter, 4
 269              	cpu_irq_critical_section_counter:
 270 0000 00000000 		.space	4
 271              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 272              		.type	cpu_irq_prev_interrupt_state, %object
 273              		.size	cpu_irq_prev_interrupt_state, 1
 274              	cpu_irq_prev_interrupt_state:
 275 0000 00       		.space	1
 276              		.section	.bss.g_wobits_in_rtt_mr,"aw",%nobits
 277              		.align	2
 278              		.set	.LANCHOR0,. + 0
 279              		.type	g_wobits_in_rtt_mr, %object
 280              		.size	g_wobits_in_rtt_mr, 4
 281              	g_wobits_in_rtt_mr:
 282 0000 00000000 		.space	4
 283              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
