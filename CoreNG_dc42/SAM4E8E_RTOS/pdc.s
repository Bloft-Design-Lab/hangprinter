ARM GAS  /tmp/ccD3VJ5D.s 			page 1


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
  14              		.section	.text.pdc_tx_init,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	pdc_tx_init
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	pdc_tx_init, %function
  23              	pdc_tx_init:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 61B1     		cbz	r1, .L11
  28 0002 4B68     		ldr	r3, [r1, #4]
  29 0004 10B4     		push	{r4}
  30 0006 0C68     		ldr	r4, [r1]
  31 0008 8460     		str	r4, [r0, #8]
  32 000a C360     		str	r3, [r0, #12]
  33 000c 1AB1     		cbz	r2, .L1
  34 000e 92E80A00 		ldm	r2, {r1, r3}
  35 0012 8161     		str	r1, [r0, #24]
  36 0014 C361     		str	r3, [r0, #28]
  37              	.L1:
  38 0016 5DF8044B 		ldr	r4, [sp], #4
  39              	.L16:
  40 001a 7047     		bx	lr
  41              	.L11:
  42 001c 002A     		cmp	r2, #0
  43 001e FCD0     		beq	.L16
  44 0020 92E80A00 		ldm	r2, {r1, r3}
  45 0024 8161     		str	r1, [r0, #24]
  46 0026 C361     		str	r3, [r0, #28]
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
ARM GAS  /tmp/ccD3VJ5D.s 			page 2


  58              	pdc_rx_init:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 61B1     		cbz	r1, .L28
  63 0002 4B68     		ldr	r3, [r1, #4]
  64 0004 10B4     		push	{r4}
  65 0006 0C68     		ldr	r4, [r1]
  66 0008 0460     		str	r4, [r0]
  67 000a 4360     		str	r3, [r0, #4]
  68 000c 1AB1     		cbz	r2, .L18
  69 000e 92E80A00 		ldm	r2, {r1, r3}
  70 0012 0161     		str	r1, [r0, #16]
  71 0014 4361     		str	r3, [r0, #20]
  72              	.L18:
  73 0016 5DF8044B 		ldr	r4, [sp], #4
  74              	.L33:
  75 001a 7047     		bx	lr
  76              	.L28:
  77 001c 002A     		cmp	r2, #0
  78 001e FCD0     		beq	.L33
  79 0020 92E80A00 		ldm	r2, {r1, r3}
  80 0024 0161     		str	r1, [r0, #16]
  81 0026 4361     		str	r3, [r0, #20]
  82 0028 7047     		bx	lr
  83              		.size	pdc_rx_init, .-pdc_rx_init
  84 002a 00BF     		.section	.text.pdc_rx_clear_cnt,"ax",%progbits
  85              		.align	1
  86              		.p2align 2,,3
  87              		.global	pdc_rx_clear_cnt
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu fpv4-sp-d16
  92              		.type	pdc_rx_clear_cnt, %function
  93              	pdc_rx_clear_cnt:
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96              		@ link register save eliminated.
  97 0000 0023     		movs	r3, #0
  98 0002 4361     		str	r3, [r0, #20]
  99 0004 4360     		str	r3, [r0, #4]
 100 0006 7047     		bx	lr
 101              		.size	pdc_rx_clear_cnt, .-pdc_rx_clear_cnt
 102              		.section	.text.pdc_enable_transfer,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	pdc_enable_transfer
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu fpv4-sp-d16
 110              		.type	pdc_enable_transfer, %function
 111              	pdc_enable_transfer:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  /tmp/ccD3VJ5D.s 			page 3


 115 0000 40F20113 		movw	r3, #257
 116 0004 1940     		ands	r1, r1, r3
 117 0006 0162     		str	r1, [r0, #32]
 118 0008 7047     		bx	lr
 119              		.size	pdc_enable_transfer, .-pdc_enable_transfer
 120 000a 00BF     		.section	.text.pdc_disable_transfer,"ax",%progbits
 121              		.align	1
 122              		.p2align 2,,3
 123              		.global	pdc_disable_transfer
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu fpv4-sp-d16
 128              		.type	pdc_disable_transfer, %function
 129              	pdc_disable_transfer:
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132              		@ link register save eliminated.
 133 0000 40F20223 		movw	r3, #514
 134 0004 1940     		ands	r1, r1, r3
 135 0006 0162     		str	r1, [r0, #32]
 136 0008 7047     		bx	lr
 137              		.size	pdc_disable_transfer, .-pdc_disable_transfer
 138 000a 00BF     		.section	.text.pdc_read_status,"ax",%progbits
 139              		.align	1
 140              		.p2align 2,,3
 141              		.global	pdc_read_status
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu fpv4-sp-d16
 146              		.type	pdc_read_status, %function
 147              	pdc_read_status:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151 0000 406A     		ldr	r0, [r0, #36]
 152 0002 7047     		bx	lr
 153              		.size	pdc_read_status, .-pdc_read_status
 154              		.section	.text.pdc_read_rx_ptr,"ax",%progbits
 155              		.align	1
 156              		.p2align 2,,3
 157              		.global	pdc_read_rx_ptr
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv4-sp-d16
 162              		.type	pdc_read_rx_ptr, %function
 163              	pdc_read_rx_ptr:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166              		@ link register save eliminated.
 167 0000 0068     		ldr	r0, [r0]
 168 0002 7047     		bx	lr
 169              		.size	pdc_read_rx_ptr, .-pdc_read_rx_ptr
 170              		.section	.text.pdc_read_rx_counter,"ax",%progbits
 171              		.align	1
ARM GAS  /tmp/ccD3VJ5D.s 			page 4


 172              		.p2align 2,,3
 173              		.global	pdc_read_rx_counter
 174              		.syntax unified
 175              		.thumb
 176              		.thumb_func
 177              		.fpu fpv4-sp-d16
 178              		.type	pdc_read_rx_counter, %function
 179              	pdc_read_rx_counter:
 180              		@ args = 0, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182              		@ link register save eliminated.
 183 0000 4068     		ldr	r0, [r0, #4]
 184 0002 7047     		bx	lr
 185              		.size	pdc_read_rx_counter, .-pdc_read_rx_counter
 186              		.section	.text.pdc_read_tx_ptr,"ax",%progbits
 187              		.align	1
 188              		.p2align 2,,3
 189              		.global	pdc_read_tx_ptr
 190              		.syntax unified
 191              		.thumb
 192              		.thumb_func
 193              		.fpu fpv4-sp-d16
 194              		.type	pdc_read_tx_ptr, %function
 195              	pdc_read_tx_ptr:
 196              		@ args = 0, pretend = 0, frame = 0
 197              		@ frame_needed = 0, uses_anonymous_args = 0
 198              		@ link register save eliminated.
 199 0000 8068     		ldr	r0, [r0, #8]
 200 0002 7047     		bx	lr
 201              		.size	pdc_read_tx_ptr, .-pdc_read_tx_ptr
 202              		.section	.text.pdc_read_tx_counter,"ax",%progbits
 203              		.align	1
 204              		.p2align 2,,3
 205              		.global	pdc_read_tx_counter
 206              		.syntax unified
 207              		.thumb
 208              		.thumb_func
 209              		.fpu fpv4-sp-d16
 210              		.type	pdc_read_tx_counter, %function
 211              	pdc_read_tx_counter:
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 0, uses_anonymous_args = 0
 214              		@ link register save eliminated.
 215 0000 C068     		ldr	r0, [r0, #12]
 216 0002 7047     		bx	lr
 217              		.size	pdc_read_tx_counter, .-pdc_read_tx_counter
 218              		.section	.text.pdc_read_rx_next_ptr,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	pdc_read_rx_next_ptr
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv4-sp-d16
 226              		.type	pdc_read_rx_next_ptr, %function
 227              	pdc_read_rx_next_ptr:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccD3VJ5D.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 0069     		ldr	r0, [r0, #16]
 232 0002 7047     		bx	lr
 233              		.size	pdc_read_rx_next_ptr, .-pdc_read_rx_next_ptr
 234              		.section	.text.pdc_read_rx_next_counter,"ax",%progbits
 235              		.align	1
 236              		.p2align 2,,3
 237              		.global	pdc_read_rx_next_counter
 238              		.syntax unified
 239              		.thumb
 240              		.thumb_func
 241              		.fpu fpv4-sp-d16
 242              		.type	pdc_read_rx_next_counter, %function
 243              	pdc_read_rx_next_counter:
 244              		@ args = 0, pretend = 0, frame = 0
 245              		@ frame_needed = 0, uses_anonymous_args = 0
 246              		@ link register save eliminated.
 247 0000 4069     		ldr	r0, [r0, #20]
 248 0002 7047     		bx	lr
 249              		.size	pdc_read_rx_next_counter, .-pdc_read_rx_next_counter
 250              		.section	.text.pdc_read_tx_next_ptr,"ax",%progbits
 251              		.align	1
 252              		.p2align 2,,3
 253              		.global	pdc_read_tx_next_ptr
 254              		.syntax unified
 255              		.thumb
 256              		.thumb_func
 257              		.fpu fpv4-sp-d16
 258              		.type	pdc_read_tx_next_ptr, %function
 259              	pdc_read_tx_next_ptr:
 260              		@ args = 0, pretend = 0, frame = 0
 261              		@ frame_needed = 0, uses_anonymous_args = 0
 262              		@ link register save eliminated.
 263 0000 8069     		ldr	r0, [r0, #24]
 264 0002 7047     		bx	lr
 265              		.size	pdc_read_tx_next_ptr, .-pdc_read_tx_next_ptr
 266              		.section	.text.pdc_read_tx_next_counter,"ax",%progbits
 267              		.align	1
 268              		.p2align 2,,3
 269              		.global	pdc_read_tx_next_counter
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu fpv4-sp-d16
 274              		.type	pdc_read_tx_next_counter, %function
 275              	pdc_read_tx_next_counter:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278              		@ link register save eliminated.
 279 0000 C069     		ldr	r0, [r0, #28]
 280 0002 7047     		bx	lr
 281              		.size	pdc_read_tx_next_counter, .-pdc_read_tx_next_counter
 282              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 283              		.align	2
 284              		.type	cpu_irq_critical_section_counter, %object
 285              		.size	cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccD3VJ5D.s 			page 6


 286              	cpu_irq_critical_section_counter:
 287 0000 00000000 		.space	4
 288              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 289              		.type	cpu_irq_prev_interrupt_state, %object
 290              		.size	cpu_irq_prev_interrupt_state, 1
 291              	cpu_irq_prev_interrupt_state:
 292 0000 00       		.space	1
 293              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
