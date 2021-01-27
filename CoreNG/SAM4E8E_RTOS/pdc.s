ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckxaUtP.s 			page 1


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
  13              		.file	"pdc.c"
  14              		.text
  15              		.section	.text.pdc_tx_init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	pdc_tx_init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	pdc_tx_init, %function
  24              	pdc_tx_init:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 61B1     		cbz	r1, .L11
  29 0002 10B4     		push	{r4}
  30 0004 D1E90043 		ldrd	r4, r3, [r1]
  31 0008 8460     		str	r4, [r0, #8]
  32 000a C360     		str	r3, [r0, #12]
  33 000c 1AB1     		cbz	r2, .L1
  34 000e D2E90013 		ldrd	r1, r3, [r2]
  35 0012 8161     		str	r1, [r0, #24]
  36 0014 C361     		str	r3, [r0, #28]
  37              	.L1:
  38 0016 5DF8044B 		ldr	r4, [sp], #4
  39 001a 7047     		bx	lr
  40              	.L11:
  41 001c 22B1     		cbz	r2, .L13
  42 001e D2E90013 		ldrd	r1, r3, [r2]
  43 0022 8161     		str	r1, [r0, #24]
  44 0024 C361     		str	r3, [r0, #28]
  45 0026 7047     		bx	lr
  46              	.L13:
  47 0028 7047     		bx	lr
  48              		.size	pdc_tx_init, .-pdc_tx_init
  49 002a 00BF     		.section	.text.pdc_rx_init,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	pdc_rx_init
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	pdc_rx_init, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckxaUtP.s 			page 2


  58              	pdc_rx_init:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 61B1     		cbz	r1, .L27
  63 0002 10B4     		push	{r4}
  64 0004 D1E90043 		ldrd	r4, r3, [r1]
  65 0008 0460     		str	r4, [r0]
  66 000a 4360     		str	r3, [r0, #4]
  67 000c 1AB1     		cbz	r2, .L17
  68 000e D2E90013 		ldrd	r1, r3, [r2]
  69 0012 0161     		str	r1, [r0, #16]
  70 0014 4361     		str	r3, [r0, #20]
  71              	.L17:
  72 0016 5DF8044B 		ldr	r4, [sp], #4
  73 001a 7047     		bx	lr
  74              	.L27:
  75 001c 22B1     		cbz	r2, .L29
  76 001e D2E90013 		ldrd	r1, r3, [r2]
  77 0022 0161     		str	r1, [r0, #16]
  78 0024 4361     		str	r3, [r0, #20]
  79 0026 7047     		bx	lr
  80              	.L29:
  81 0028 7047     		bx	lr
  82              		.size	pdc_rx_init, .-pdc_rx_init
  83 002a 00BF     		.section	.text.pdc_rx_clear_cnt,"ax",%progbits
  84              		.align	1
  85              		.p2align 2,,3
  86              		.global	pdc_rx_clear_cnt
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu fpv4-sp-d16
  91              		.type	pdc_rx_clear_cnt, %function
  92              	pdc_rx_clear_cnt:
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95              		@ link register save eliminated.
  96 0000 0023     		movs	r3, #0
  97 0002 4361     		str	r3, [r0, #20]
  98 0004 4360     		str	r3, [r0, #4]
  99 0006 7047     		bx	lr
 100              		.size	pdc_rx_clear_cnt, .-pdc_rx_clear_cnt
 101              		.section	.text.pdc_enable_transfer,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	pdc_enable_transfer
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	pdc_enable_transfer, %function
 110              	pdc_enable_transfer:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 40F20113 		movw	r3, #257
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckxaUtP.s 			page 3


 115 0004 1940     		ands	r1, r1, r3
 116 0006 0162     		str	r1, [r0, #32]
 117 0008 7047     		bx	lr
 118              		.size	pdc_enable_transfer, .-pdc_enable_transfer
 119 000a 00BF     		.section	.text.pdc_disable_transfer,"ax",%progbits
 120              		.align	1
 121              		.p2align 2,,3
 122              		.global	pdc_disable_transfer
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu fpv4-sp-d16
 127              		.type	pdc_disable_transfer, %function
 128              	pdc_disable_transfer:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131              		@ link register save eliminated.
 132 0000 40F20223 		movw	r3, #514
 133 0004 1940     		ands	r1, r1, r3
 134 0006 0162     		str	r1, [r0, #32]
 135 0008 7047     		bx	lr
 136              		.size	pdc_disable_transfer, .-pdc_disable_transfer
 137 000a 00BF     		.section	.text.pdc_read_status,"ax",%progbits
 138              		.align	1
 139              		.p2align 2,,3
 140              		.global	pdc_read_status
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu fpv4-sp-d16
 145              		.type	pdc_read_status, %function
 146              	pdc_read_status:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              		@ link register save eliminated.
 150 0000 406A     		ldr	r0, [r0, #36]
 151 0002 7047     		bx	lr
 152              		.size	pdc_read_status, .-pdc_read_status
 153              		.section	.text.pdc_read_rx_ptr,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	pdc_read_rx_ptr
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu fpv4-sp-d16
 161              		.type	pdc_read_rx_ptr, %function
 162              	pdc_read_rx_ptr:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 0068     		ldr	r0, [r0]
 167 0002 7047     		bx	lr
 168              		.size	pdc_read_rx_ptr, .-pdc_read_rx_ptr
 169              		.section	.text.pdc_read_rx_counter,"ax",%progbits
 170              		.align	1
 171              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckxaUtP.s 			page 4


 172              		.global	pdc_read_rx_counter
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu fpv4-sp-d16
 177              		.type	pdc_read_rx_counter, %function
 178              	pdc_read_rx_counter:
 179              		@ args = 0, pretend = 0, frame = 0
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 181              		@ link register save eliminated.
 182 0000 4068     		ldr	r0, [r0, #4]
 183 0002 7047     		bx	lr
 184              		.size	pdc_read_rx_counter, .-pdc_read_rx_counter
 185              		.section	.text.pdc_read_tx_ptr,"ax",%progbits
 186              		.align	1
 187              		.p2align 2,,3
 188              		.global	pdc_read_tx_ptr
 189              		.syntax unified
 190              		.thumb
 191              		.thumb_func
 192              		.fpu fpv4-sp-d16
 193              		.type	pdc_read_tx_ptr, %function
 194              	pdc_read_tx_ptr:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197              		@ link register save eliminated.
 198 0000 8068     		ldr	r0, [r0, #8]
 199 0002 7047     		bx	lr
 200              		.size	pdc_read_tx_ptr, .-pdc_read_tx_ptr
 201              		.section	.text.pdc_read_tx_counter,"ax",%progbits
 202              		.align	1
 203              		.p2align 2,,3
 204              		.global	pdc_read_tx_counter
 205              		.syntax unified
 206              		.thumb
 207              		.thumb_func
 208              		.fpu fpv4-sp-d16
 209              		.type	pdc_read_tx_counter, %function
 210              	pdc_read_tx_counter:
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213              		@ link register save eliminated.
 214 0000 C068     		ldr	r0, [r0, #12]
 215 0002 7047     		bx	lr
 216              		.size	pdc_read_tx_counter, .-pdc_read_tx_counter
 217              		.section	.text.pdc_read_rx_next_ptr,"ax",%progbits
 218              		.align	1
 219              		.p2align 2,,3
 220              		.global	pdc_read_rx_next_ptr
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu fpv4-sp-d16
 225              		.type	pdc_read_rx_next_ptr, %function
 226              	pdc_read_rx_next_ptr:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckxaUtP.s 			page 5


 229              		@ link register save eliminated.
 230 0000 0069     		ldr	r0, [r0, #16]
 231 0002 7047     		bx	lr
 232              		.size	pdc_read_rx_next_ptr, .-pdc_read_rx_next_ptr
 233              		.section	.text.pdc_read_rx_next_counter,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	pdc_read_rx_next_counter
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	pdc_read_rx_next_counter, %function
 242              	pdc_read_rx_next_counter:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245              		@ link register save eliminated.
 246 0000 4069     		ldr	r0, [r0, #20]
 247 0002 7047     		bx	lr
 248              		.size	pdc_read_rx_next_counter, .-pdc_read_rx_next_counter
 249              		.section	.text.pdc_read_tx_next_ptr,"ax",%progbits
 250              		.align	1
 251              		.p2align 2,,3
 252              		.global	pdc_read_tx_next_ptr
 253              		.syntax unified
 254              		.thumb
 255              		.thumb_func
 256              		.fpu fpv4-sp-d16
 257              		.type	pdc_read_tx_next_ptr, %function
 258              	pdc_read_tx_next_ptr:
 259              		@ args = 0, pretend = 0, frame = 0
 260              		@ frame_needed = 0, uses_anonymous_args = 0
 261              		@ link register save eliminated.
 262 0000 8069     		ldr	r0, [r0, #24]
 263 0002 7047     		bx	lr
 264              		.size	pdc_read_tx_next_ptr, .-pdc_read_tx_next_ptr
 265              		.section	.text.pdc_read_tx_next_counter,"ax",%progbits
 266              		.align	1
 267              		.p2align 2,,3
 268              		.global	pdc_read_tx_next_counter
 269              		.syntax unified
 270              		.thumb
 271              		.thumb_func
 272              		.fpu fpv4-sp-d16
 273              		.type	pdc_read_tx_next_counter, %function
 274              	pdc_read_tx_next_counter:
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 0, uses_anonymous_args = 0
 277              		@ link register save eliminated.
 278 0000 C069     		ldr	r0, [r0, #28]
 279 0002 7047     		bx	lr
 280              		.size	pdc_read_tx_next_counter, .-pdc_read_tx_next_counter
 281              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 282              		.align	2
 283              		.type	cpu_irq_critical_section_counter, %object
 284              		.size	cpu_irq_critical_section_counter, 4
 285              	cpu_irq_critical_section_counter:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckxaUtP.s 			page 6


 286 0000 00000000 		.space	4
 287              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 288              		.type	cpu_irq_prev_interrupt_state, %object
 289              		.size	cpu_irq_prev_interrupt_state, 1
 290              	cpu_irq_prev_interrupt_state:
 291 0000 00       		.space	1
 292              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
