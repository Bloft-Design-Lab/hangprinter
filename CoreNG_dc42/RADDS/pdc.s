ARM GAS  /tmp/cc7cqFup.s 			page 1


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
  11              		.file	"pdc.c"
  12              		.section	.text.pdc_tx_init,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	pdc_tx_init
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	pdc_tx_init, %function
  21              	pdc_tx_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 59B1     		cbz	r1, .L11
  26 0002 4B68     		ldr	r3, [r1, #4]
  27 0004 10B4     		push	{r4}
  28 0006 0C68     		ldr	r4, [r1]
  29 0008 8460     		str	r4, [r0, #8]
  30 000a C360     		str	r3, [r0, #12]
  31 000c 1AB1     		cbz	r2, .L1
  32 000e 92E80A00 		ldm	r2, {r1, r3}
  33 0012 8161     		str	r1, [r0, #24]
  34 0014 C361     		str	r3, [r0, #28]
  35              	.L1:
  36 0016 10BC     		pop	{r4}
  37              	.L16:
  38 0018 7047     		bx	lr
  39              	.L11:
  40 001a 002A     		cmp	r2, #0
  41 001c FCD0     		beq	.L16
  42 001e 92E80A00 		ldm	r2, {r1, r3}
  43 0022 8161     		str	r1, [r0, #24]
  44 0024 C361     		str	r3, [r0, #28]
  45 0026 7047     		bx	lr
  46              		.size	pdc_tx_init, .-pdc_tx_init
  47              		.section	.text.pdc_rx_init,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.global	pdc_rx_init
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu softvfp
  55              		.type	pdc_rx_init, %function
  56              	pdc_rx_init:
  57              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc7cqFup.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59              		@ link register save eliminated.
  60 0000 59B1     		cbz	r1, .L28
  61 0002 4B68     		ldr	r3, [r1, #4]
  62 0004 10B4     		push	{r4}
  63 0006 0C68     		ldr	r4, [r1]
  64 0008 0460     		str	r4, [r0]
  65 000a 4360     		str	r3, [r0, #4]
  66 000c 1AB1     		cbz	r2, .L18
  67 000e 92E80A00 		ldm	r2, {r1, r3}
  68 0012 0161     		str	r1, [r0, #16]
  69 0014 4361     		str	r3, [r0, #20]
  70              	.L18:
  71 0016 10BC     		pop	{r4}
  72              	.L33:
  73 0018 7047     		bx	lr
  74              	.L28:
  75 001a 002A     		cmp	r2, #0
  76 001c FCD0     		beq	.L33
  77 001e 92E80A00 		ldm	r2, {r1, r3}
  78 0022 0161     		str	r1, [r0, #16]
  79 0024 4361     		str	r3, [r0, #20]
  80 0026 7047     		bx	lr
  81              		.size	pdc_rx_init, .-pdc_rx_init
  82              		.section	.text.pdc_rx_clear_cnt,"ax",%progbits
  83              		.align	1
  84              		.p2align 2,,3
  85              		.global	pdc_rx_clear_cnt
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu softvfp
  90              		.type	pdc_rx_clear_cnt, %function
  91              	pdc_rx_clear_cnt:
  92              		@ args = 0, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94              		@ link register save eliminated.
  95 0000 0023     		movs	r3, #0
  96 0002 4361     		str	r3, [r0, #20]
  97 0004 4360     		str	r3, [r0, #4]
  98 0006 7047     		bx	lr
  99              		.size	pdc_rx_clear_cnt, .-pdc_rx_clear_cnt
 100              		.section	.text.pdc_enable_transfer,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	pdc_enable_transfer
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu softvfp
 108              		.type	pdc_enable_transfer, %function
 109              	pdc_enable_transfer:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 40F20113 		movw	r3, #257
 114 0004 1940     		ands	r1, r1, r3
ARM GAS  /tmp/cc7cqFup.s 			page 3


 115 0006 0162     		str	r1, [r0, #32]
 116 0008 7047     		bx	lr
 117              		.size	pdc_enable_transfer, .-pdc_enable_transfer
 118 000a 00BF     		.section	.text.pdc_disable_transfer,"ax",%progbits
 119              		.align	1
 120              		.p2align 2,,3
 121              		.global	pdc_disable_transfer
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu softvfp
 126              		.type	pdc_disable_transfer, %function
 127              	pdc_disable_transfer:
 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131 0000 40F20223 		movw	r3, #514
 132 0004 1940     		ands	r1, r1, r3
 133 0006 0162     		str	r1, [r0, #32]
 134 0008 7047     		bx	lr
 135              		.size	pdc_disable_transfer, .-pdc_disable_transfer
 136 000a 00BF     		.section	.text.pdc_read_status,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	pdc_read_status
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu softvfp
 144              		.type	pdc_read_status, %function
 145              	pdc_read_status:
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148              		@ link register save eliminated.
 149 0000 406A     		ldr	r0, [r0, #36]
 150 0002 7047     		bx	lr
 151              		.size	pdc_read_status, .-pdc_read_status
 152              		.section	.text.pdc_read_rx_ptr,"ax",%progbits
 153              		.align	1
 154              		.p2align 2,,3
 155              		.global	pdc_read_rx_ptr
 156              		.syntax unified
 157              		.thumb
 158              		.thumb_func
 159              		.fpu softvfp
 160              		.type	pdc_read_rx_ptr, %function
 161              	pdc_read_rx_ptr:
 162              		@ args = 0, pretend = 0, frame = 0
 163              		@ frame_needed = 0, uses_anonymous_args = 0
 164              		@ link register save eliminated.
 165 0000 0068     		ldr	r0, [r0]
 166 0002 7047     		bx	lr
 167              		.size	pdc_read_rx_ptr, .-pdc_read_rx_ptr
 168              		.section	.text.pdc_read_rx_counter,"ax",%progbits
 169              		.align	1
 170              		.p2align 2,,3
 171              		.global	pdc_read_rx_counter
ARM GAS  /tmp/cc7cqFup.s 			page 4


 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu softvfp
 176              		.type	pdc_read_rx_counter, %function
 177              	pdc_read_rx_counter:
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180              		@ link register save eliminated.
 181 0000 4068     		ldr	r0, [r0, #4]
 182 0002 7047     		bx	lr
 183              		.size	pdc_read_rx_counter, .-pdc_read_rx_counter
 184              		.section	.text.pdc_read_tx_ptr,"ax",%progbits
 185              		.align	1
 186              		.p2align 2,,3
 187              		.global	pdc_read_tx_ptr
 188              		.syntax unified
 189              		.thumb
 190              		.thumb_func
 191              		.fpu softvfp
 192              		.type	pdc_read_tx_ptr, %function
 193              	pdc_read_tx_ptr:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196              		@ link register save eliminated.
 197 0000 8068     		ldr	r0, [r0, #8]
 198 0002 7047     		bx	lr
 199              		.size	pdc_read_tx_ptr, .-pdc_read_tx_ptr
 200              		.section	.text.pdc_read_tx_counter,"ax",%progbits
 201              		.align	1
 202              		.p2align 2,,3
 203              		.global	pdc_read_tx_counter
 204              		.syntax unified
 205              		.thumb
 206              		.thumb_func
 207              		.fpu softvfp
 208              		.type	pdc_read_tx_counter, %function
 209              	pdc_read_tx_counter:
 210              		@ args = 0, pretend = 0, frame = 0
 211              		@ frame_needed = 0, uses_anonymous_args = 0
 212              		@ link register save eliminated.
 213 0000 C068     		ldr	r0, [r0, #12]
 214 0002 7047     		bx	lr
 215              		.size	pdc_read_tx_counter, .-pdc_read_tx_counter
 216              		.section	.text.pdc_read_rx_next_ptr,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	pdc_read_rx_next_ptr
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu softvfp
 224              		.type	pdc_read_rx_next_ptr, %function
 225              	pdc_read_rx_next_ptr:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228              		@ link register save eliminated.
ARM GAS  /tmp/cc7cqFup.s 			page 5


 229 0000 0069     		ldr	r0, [r0, #16]
 230 0002 7047     		bx	lr
 231              		.size	pdc_read_rx_next_ptr, .-pdc_read_rx_next_ptr
 232              		.section	.text.pdc_read_rx_next_counter,"ax",%progbits
 233              		.align	1
 234              		.p2align 2,,3
 235              		.global	pdc_read_rx_next_counter
 236              		.syntax unified
 237              		.thumb
 238              		.thumb_func
 239              		.fpu softvfp
 240              		.type	pdc_read_rx_next_counter, %function
 241              	pdc_read_rx_next_counter:
 242              		@ args = 0, pretend = 0, frame = 0
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244              		@ link register save eliminated.
 245 0000 4069     		ldr	r0, [r0, #20]
 246 0002 7047     		bx	lr
 247              		.size	pdc_read_rx_next_counter, .-pdc_read_rx_next_counter
 248              		.section	.text.pdc_read_tx_next_ptr,"ax",%progbits
 249              		.align	1
 250              		.p2align 2,,3
 251              		.global	pdc_read_tx_next_ptr
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu softvfp
 256              		.type	pdc_read_tx_next_ptr, %function
 257              	pdc_read_tx_next_ptr:
 258              		@ args = 0, pretend = 0, frame = 0
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260              		@ link register save eliminated.
 261 0000 8069     		ldr	r0, [r0, #24]
 262 0002 7047     		bx	lr
 263              		.size	pdc_read_tx_next_ptr, .-pdc_read_tx_next_ptr
 264              		.section	.text.pdc_read_tx_next_counter,"ax",%progbits
 265              		.align	1
 266              		.p2align 2,,3
 267              		.global	pdc_read_tx_next_counter
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu softvfp
 272              		.type	pdc_read_tx_next_counter, %function
 273              	pdc_read_tx_next_counter:
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276              		@ link register save eliminated.
 277 0000 C069     		ldr	r0, [r0, #28]
 278 0002 7047     		bx	lr
 279              		.size	pdc_read_tx_next_counter, .-pdc_read_tx_next_counter
 280              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 281              		.align	2
 282              		.type	cpu_irq_critical_section_counter, %object
 283              		.size	cpu_irq_critical_section_counter, 4
 284              	cpu_irq_critical_section_counter:
 285 0000 00000000 		.space	4
ARM GAS  /tmp/cc7cqFup.s 			page 6


 286              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 287              		.type	cpu_irq_prev_interrupt_state, %object
 288              		.size	cpu_irq_prev_interrupt_state, 1
 289              	cpu_irq_prev_interrupt_state:
 290 0000 00       		.space	1
 291              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
