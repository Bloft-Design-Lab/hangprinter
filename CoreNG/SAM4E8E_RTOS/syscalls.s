ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccM0CVe.s 			page 1


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
  14              		.text
  15              		.section	.text._sbrk,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_sbrk
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_sbrk, %function
  24              	_sbrk:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 044A     		ldr	r2, .L5
  29 0002 0549     		ldr	r1, .L5+4
  30 0004 1368     		ldr	r3, [r2]
  31 0006 002B     		cmp	r3, #0
  32 0008 08BF     		it	eq
  33 000a 0B46     		moveq	r3, r1
  34 000c 1844     		add	r0, r0, r3
  35 000e 1060     		str	r0, [r2]
  36 0010 1846     		mov	r0, r3
  37 0012 7047     		bx	lr
  38              	.L6:
  39              		.align	2
  40              	.L5:
  41 0014 00000000 		.word	.LANCHOR0
  42 0018 00000000 		.word	_end
  43              		.size	_sbrk, .-_sbrk
  44              		.section	.text.link,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	link
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	link, %function
  53              	link:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 4FF0FF30 		mov	r0, #-1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccM0CVe.s 			page 2


  58 0004 7047     		bx	lr
  59              		.size	link, .-link
  60 0006 00BF     		.section	.text._close,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_close
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	_close, %function
  69              	_close:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72              		@ link register save eliminated.
  73 0000 4FF0FF30 		mov	r0, #-1
  74 0004 7047     		bx	lr
  75              		.size	_close, .-_close
  76 0006 00BF     		.section	.text._fstat,"ax",%progbits
  77              		.align	1
  78              		.p2align 2,,3
  79              		.global	_fstat
  80              		.syntax unified
  81              		.thumb
  82              		.thumb_func
  83              		.fpu fpv4-sp-d16
  84              		.type	_fstat, %function
  85              	_fstat:
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88              		@ link register save eliminated.
  89 0000 4FF40053 		mov	r3, #8192
  90 0004 4B60     		str	r3, [r1, #4]
  91 0006 0020     		movs	r0, #0
  92 0008 7047     		bx	lr
  93              		.size	_fstat, .-_fstat
  94 000a 00BF     		.section	.text._isatty,"ax",%progbits
  95              		.align	1
  96              		.p2align 2,,3
  97              		.global	_isatty
  98              		.syntax unified
  99              		.thumb
 100              		.thumb_func
 101              		.fpu fpv4-sp-d16
 102              		.type	_isatty, %function
 103              	_isatty:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106              		@ link register save eliminated.
 107 0000 0120     		movs	r0, #1
 108 0002 7047     		bx	lr
 109              		.size	_isatty, .-_isatty
 110              		.section	.text._lseek,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	_lseek
 114              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccM0CVe.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	_lseek, %function
 119              	_lseek:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122              		@ link register save eliminated.
 123 0000 0020     		movs	r0, #0
 124 0002 7047     		bx	lr
 125              		.size	_lseek, .-_lseek
 126              		.section	.text._read,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	_read
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv4-sp-d16
 134              		.type	_read, %function
 135              	_read:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138              		@ link register save eliminated.
 139 0000 0020     		movs	r0, #0
 140 0002 7047     		bx	lr
 141              		.size	_read, .-_read
 142              		.section	.text._write,"ax",%progbits
 143              		.align	1
 144              		.p2align 2,,3
 145              		.global	_write
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu fpv4-sp-d16
 150              		.type	_write, %function
 151              	_write:
 152              		@ args = 0, pretend = 0, frame = 0
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154              		@ link register save eliminated.
 155 0000 1046     		mov	r0, r2
 156 0002 7047     		bx	lr
 157              		.size	_write, .-_write
 158              		.section	.text._exit,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	_exit
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu fpv4-sp-d16
 166              		.type	_exit, %function
 167              	_exit:
 168              		@ Volatile: function does not return.
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccM0CVe.s 			page 4


 172              	.L15:
 173 0000 FEE7     		b	.L15
 174              		.size	_exit, .-_exit
 175 0002 00BF     		.section	.text._kill,"ax",%progbits
 176              		.align	1
 177              		.p2align 2,,3
 178              		.global	_kill
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu fpv4-sp-d16
 183              		.type	_kill, %function
 184              	_kill:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              		@ link register save eliminated.
 188 0000 7047     		bx	lr
 189              		.size	_kill, .-_kill
 190 0002 00BF     		.section	.text._getpid,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	_getpid
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	_getpid, %function
 199              	_getpid:
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202              		@ link register save eliminated.
 203 0000 4FF0FF30 		mov	r0, #-1
 204 0004 7047     		bx	lr
 205              		.size	_getpid, .-_getpid
 206              		.global	errno
 207 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 208              		.align	2
 209              		.type	cpu_irq_critical_section_counter, %object
 210              		.size	cpu_irq_critical_section_counter, 4
 211              	cpu_irq_critical_section_counter:
 212 0000 00000000 		.space	4
 213              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 214              		.type	cpu_irq_prev_interrupt_state, %object
 215              		.size	cpu_irq_prev_interrupt_state, 1
 216              	cpu_irq_prev_interrupt_state:
 217 0000 00       		.space	1
 218              		.section	.bss.errno,"aw",%nobits
 219              		.align	2
 220              		.type	errno, %object
 221              		.size	errno, 4
 222              	errno:
 223 0000 00000000 		.space	4
 224              		.section	.bss.heap.8970,"aw",%nobits
 225              		.align	2
 226              		.set	.LANCHOR0,. + 0
 227              		.type	heap.8970, %object
 228              		.size	heap.8970, 4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccM0CVe.s 			page 5


 229              	heap.8970:
 230 0000 00000000 		.space	4
 231              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
