ARM GAS  /tmp/ccy1i9p2.s 			page 1


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
  11              		.file	"syscalls.c"
  12              		.section	.text._sbrk,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_sbrk
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_sbrk, %function
  21              	_sbrk:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 044A     		ldr	r2, .L4
  26 0002 0549     		ldr	r1, .L4+4
  27 0004 1368     		ldr	r3, [r2]
  28 0006 002B     		cmp	r3, #0
  29 0008 08BF     		it	eq
  30 000a 0B46     		moveq	r3, r1
  31 000c 1844     		add	r0, r0, r3
  32 000e 1060     		str	r0, [r2]
  33 0010 1846     		mov	r0, r3
  34 0012 7047     		bx	lr
  35              	.L5:
  36              		.align	2
  37              	.L4:
  38 0014 00000000 		.word	.LANCHOR0
  39 0018 00000000 		.word	_end
  40              		.size	_sbrk, .-_sbrk
  41              		.section	.text.link,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	link
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu softvfp
  49              		.type	link, %function
  50              	link:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              		@ link register save eliminated.
  54 0000 4FF0FF30 		mov	r0, #-1
  55 0004 7047     		bx	lr
  56              		.size	link, .-link
  57 0006 00BF     		.section	.text._close,"ax",%progbits
ARM GAS  /tmp/ccy1i9p2.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_close
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu softvfp
  65              		.type	_close, %function
  66              	_close:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 4FF0FF30 		mov	r0, #-1
  71 0004 7047     		bx	lr
  72              		.size	_close, .-_close
  73 0006 00BF     		.section	.text._fstat,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	_fstat
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu softvfp
  81              		.type	_fstat, %function
  82              	_fstat:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85              		@ link register save eliminated.
  86 0000 4FF40053 		mov	r3, #8192
  87 0004 0020     		movs	r0, #0
  88 0006 4B60     		str	r3, [r1, #4]
  89 0008 7047     		bx	lr
  90              		.size	_fstat, .-_fstat
  91 000a 00BF     		.section	.text._isatty,"ax",%progbits
  92              		.align	1
  93              		.p2align 2,,3
  94              		.global	_isatty
  95              		.syntax unified
  96              		.thumb
  97              		.thumb_func
  98              		.fpu softvfp
  99              		.type	_isatty, %function
 100              	_isatty:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103              		@ link register save eliminated.
 104 0000 0120     		movs	r0, #1
 105 0002 7047     		bx	lr
 106              		.size	_isatty, .-_isatty
 107              		.section	.text._lseek,"ax",%progbits
 108              		.align	1
 109              		.p2align 2,,3
 110              		.global	_lseek
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu softvfp
ARM GAS  /tmp/ccy1i9p2.s 			page 3


 115              		.type	_lseek, %function
 116              	_lseek:
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119              		@ link register save eliminated.
 120 0000 0020     		movs	r0, #0
 121 0002 7047     		bx	lr
 122              		.size	_lseek, .-_lseek
 123              		.section	.text._read,"ax",%progbits
 124              		.align	1
 125              		.p2align 2,,3
 126              		.global	_read
 127              		.syntax unified
 128              		.thumb
 129              		.thumb_func
 130              		.fpu softvfp
 131              		.type	_read, %function
 132              	_read:
 133              		@ args = 0, pretend = 0, frame = 0
 134              		@ frame_needed = 0, uses_anonymous_args = 0
 135              		@ link register save eliminated.
 136 0000 0020     		movs	r0, #0
 137 0002 7047     		bx	lr
 138              		.size	_read, .-_read
 139              		.section	.text._write,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.global	_write
 143              		.syntax unified
 144              		.thumb
 145              		.thumb_func
 146              		.fpu softvfp
 147              		.type	_write, %function
 148              	_write:
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151              		@ link register save eliminated.
 152 0000 1046     		mov	r0, r2
 153 0002 7047     		bx	lr
 154              		.size	_write, .-_write
 155              		.section	.text._exit,"ax",%progbits
 156              		.align	1
 157              		.p2align 2,,3
 158              		.global	_exit
 159              		.syntax unified
 160              		.thumb
 161              		.thumb_func
 162              		.fpu softvfp
 163              		.type	_exit, %function
 164              	_exit:
 165              		@ Volatile: function does not return.
 166              		@ args = 0, pretend = 0, frame = 0
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168              		@ link register save eliminated.
 169              	.L14:
 170 0000 FEE7     		b	.L14
 171              		.size	_exit, .-_exit
ARM GAS  /tmp/ccy1i9p2.s 			page 4


 172 0002 00BF     		.section	.text._kill,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	_kill
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu softvfp
 180              		.type	_kill, %function
 181              	_kill:
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              		@ link register save eliminated.
 185 0000 7047     		bx	lr
 186              		.size	_kill, .-_kill
 187 0002 00BF     		.section	.text._getpid,"ax",%progbits
 188              		.align	1
 189              		.p2align 2,,3
 190              		.global	_getpid
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu softvfp
 195              		.type	_getpid, %function
 196              	_getpid:
 197              		@ args = 0, pretend = 0, frame = 0
 198              		@ frame_needed = 0, uses_anonymous_args = 0
 199              		@ link register save eliminated.
 200 0000 4FF0FF30 		mov	r0, #-1
 201 0004 7047     		bx	lr
 202              		.size	_getpid, .-_getpid
 203              		.global	errno
 204 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 205              		.align	2
 206              		.type	cpu_irq_critical_section_counter, %object
 207              		.size	cpu_irq_critical_section_counter, 4
 208              	cpu_irq_critical_section_counter:
 209 0000 00000000 		.space	4
 210              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 211              		.type	cpu_irq_prev_interrupt_state, %object
 212              		.size	cpu_irq_prev_interrupt_state, 1
 213              	cpu_irq_prev_interrupt_state:
 214 0000 00       		.space	1
 215              		.section	.bss.errno,"aw",%nobits
 216              		.align	2
 217              		.type	errno, %object
 218              		.size	errno, 4
 219              	errno:
 220 0000 00000000 		.space	4
 221              		.section	.bss.heap.7264,"aw",%nobits
 222              		.align	2
 223              		.set	.LANCHOR0,. + 0
 224              		.type	heap.7264, %object
 225              		.size	heap.7264, 4
 226              	heap.7264:
 227 0000 00000000 		.space	4
 228              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
ARM GAS  /tmp/ccy1i9p2.s 			page 5


