ARM GAS  /tmp/ccmPinwJ.s 			page 1


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
  13              		.file	"syscalls.c"
  14              		.section	.text._sbrk,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_sbrk
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_sbrk, %function
  23              	_sbrk:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 044A     		ldr	r2, .L4
  28 0002 0549     		ldr	r1, .L4+4
  29 0004 1368     		ldr	r3, [r2]
  30 0006 002B     		cmp	r3, #0
  31 0008 08BF     		it	eq
  32 000a 0B46     		moveq	r3, r1
  33 000c 1844     		add	r0, r0, r3
  34 000e 1060     		str	r0, [r2]
  35 0010 1846     		mov	r0, r3
  36 0012 7047     		bx	lr
  37              	.L5:
  38              		.align	2
  39              	.L4:
  40 0014 00000000 		.word	.LANCHOR0
  41 0018 00000000 		.word	_end
  42              		.size	_sbrk, .-_sbrk
  43              		.section	.text.link,"ax",%progbits
  44              		.align	1
  45              		.p2align 2,,3
  46              		.global	link
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu fpv4-sp-d16
  51              		.type	link, %function
  52              	link:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55              		@ link register save eliminated.
  56 0000 4FF0FF30 		mov	r0, #-1
  57 0004 7047     		bx	lr
ARM GAS  /tmp/ccmPinwJ.s 			page 2


  58              		.size	link, .-link
  59 0006 00BF     		.section	.text._close,"ax",%progbits
  60              		.align	1
  61              		.p2align 2,,3
  62              		.global	_close
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu fpv4-sp-d16
  67              		.type	_close, %function
  68              	_close:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              		@ link register save eliminated.
  72 0000 4FF0FF30 		mov	r0, #-1
  73 0004 7047     		bx	lr
  74              		.size	_close, .-_close
  75 0006 00BF     		.section	.text._fstat,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	_fstat
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu fpv4-sp-d16
  83              		.type	_fstat, %function
  84              	_fstat:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87              		@ link register save eliminated.
  88 0000 4FF40053 		mov	r3, #8192
  89 0004 4B60     		str	r3, [r1, #4]
  90 0006 0020     		movs	r0, #0
  91 0008 7047     		bx	lr
  92              		.size	_fstat, .-_fstat
  93 000a 00BF     		.section	.text._isatty,"ax",%progbits
  94              		.align	1
  95              		.p2align 2,,3
  96              		.global	_isatty
  97              		.syntax unified
  98              		.thumb
  99              		.thumb_func
 100              		.fpu fpv4-sp-d16
 101              		.type	_isatty, %function
 102              	_isatty:
 103              		@ args = 0, pretend = 0, frame = 0
 104              		@ frame_needed = 0, uses_anonymous_args = 0
 105              		@ link register save eliminated.
 106 0000 0120     		movs	r0, #1
 107 0002 7047     		bx	lr
 108              		.size	_isatty, .-_isatty
 109              		.section	.text._lseek,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	_lseek
 113              		.syntax unified
 114              		.thumb
ARM GAS  /tmp/ccmPinwJ.s 			page 3


 115              		.thumb_func
 116              		.fpu fpv4-sp-d16
 117              		.type	_lseek, %function
 118              	_lseek:
 119              		@ args = 0, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121              		@ link register save eliminated.
 122 0000 0020     		movs	r0, #0
 123 0002 7047     		bx	lr
 124              		.size	_lseek, .-_lseek
 125              		.section	.text._read,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	_read
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 133              		.type	_read, %function
 134              	_read:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137              		@ link register save eliminated.
 138 0000 0020     		movs	r0, #0
 139 0002 7047     		bx	lr
 140              		.size	_read, .-_read
 141              		.section	.text._write,"ax",%progbits
 142              		.align	1
 143              		.p2align 2,,3
 144              		.global	_write
 145              		.syntax unified
 146              		.thumb
 147              		.thumb_func
 148              		.fpu fpv4-sp-d16
 149              		.type	_write, %function
 150              	_write:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153              		@ link register save eliminated.
 154 0000 1046     		mov	r0, r2
 155 0002 7047     		bx	lr
 156              		.size	_write, .-_write
 157              		.section	.text._exit,"ax",%progbits
 158              		.align	1
 159              		.p2align 2,,3
 160              		.global	_exit
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu fpv4-sp-d16
 165              		.type	_exit, %function
 166              	_exit:
 167              		@ Volatile: function does not return.
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171              	.L14:
ARM GAS  /tmp/ccmPinwJ.s 			page 4


 172 0000 FEE7     		b	.L14
 173              		.size	_exit, .-_exit
 174 0002 00BF     		.section	.text._kill,"ax",%progbits
 175              		.align	1
 176              		.p2align 2,,3
 177              		.global	_kill
 178              		.syntax unified
 179              		.thumb
 180              		.thumb_func
 181              		.fpu fpv4-sp-d16
 182              		.type	_kill, %function
 183              	_kill:
 184              		@ args = 0, pretend = 0, frame = 0
 185              		@ frame_needed = 0, uses_anonymous_args = 0
 186              		@ link register save eliminated.
 187 0000 7047     		bx	lr
 188              		.size	_kill, .-_kill
 189 0002 00BF     		.section	.text._getpid,"ax",%progbits
 190              		.align	1
 191              		.p2align 2,,3
 192              		.global	_getpid
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu fpv4-sp-d16
 197              		.type	_getpid, %function
 198              	_getpid:
 199              		@ args = 0, pretend = 0, frame = 0
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201              		@ link register save eliminated.
 202 0000 4FF0FF30 		mov	r0, #-1
 203 0004 7047     		bx	lr
 204              		.size	_getpid, .-_getpid
 205              		.global	errno
 206 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 207              		.align	2
 208              		.type	cpu_irq_critical_section_counter, %object
 209              		.size	cpu_irq_critical_section_counter, 4
 210              	cpu_irq_critical_section_counter:
 211 0000 00000000 		.space	4
 212              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 213              		.type	cpu_irq_prev_interrupt_state, %object
 214              		.size	cpu_irq_prev_interrupt_state, 1
 215              	cpu_irq_prev_interrupt_state:
 216 0000 00       		.space	1
 217              		.section	.bss.errno,"aw",%nobits
 218              		.align	2
 219              		.type	errno, %object
 220              		.size	errno, 4
 221              	errno:
 222 0000 00000000 		.space	4
 223              		.section	.bss.heap.8762,"aw",%nobits
 224              		.align	2
 225              		.set	.LANCHOR0,. + 0
 226              		.type	heap.8762, %object
 227              		.size	heap.8762, 4
 228              	heap.8762:
ARM GAS  /tmp/ccmPinwJ.s 			page 5


 229 0000 00000000 		.space	4
 230              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
