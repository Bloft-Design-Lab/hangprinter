ARM GAS  /tmp/ccooV1IO.s 			page 1


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
  11              		.file	"USARTClass.cpp"
  12              		.section	.text._ZN9UARTClasscvbEv,"axG",%progbits,_ZN9UARTClasscvbEv,comdat
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZN9UARTClasscvbEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN9UARTClasscvbEv, %function
  21              	_ZN9UARTClasscvbEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0120     		movs	r0, #1
  26 0002 7047     		bx	lr
  27              		.size	_ZN9UARTClasscvbEv, .-_ZN9UARTClasscvbEv
  28              		.section	.text._ZN10USARTClassD2Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
  29              		.align	1
  30              		.p2align 2,,3
  31              		.weak	_ZN10USARTClassD2Ev
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	_ZN10USARTClassD2Ev, %function
  37              	_ZN10USARTClassD2Ev:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 7047     		bx	lr
  42              		.size	_ZN10USARTClassD2Ev, .-_ZN10USARTClassD2Ev
  43              		.weak	_ZN10USARTClassD1Ev
  44              		.thumb_set _ZN10USARTClassD1Ev,_ZN10USARTClassD2Ev
  45 0002 00BF     		.section	.text._ZN10USARTClass5beginEm,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.global	_ZN10USARTClass5beginEm
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu softvfp
  53              		.type	_ZN10USARTClass5beginEm, %function
  54              	_ZN10USARTClass5beginEm:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  /tmp/ccooV1IO.s 			page 2


  58 0000 4FF40C62 		mov	r2, #2240
  59 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
  60              		.size	_ZN10USARTClass5beginEm, .-_ZN10USARTClass5beginEm
  61              		.section	.text._ZN10USARTClassD0Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
  62              		.align	1
  63              		.p2align 2,,3
  64              		.weak	_ZN10USARTClassD0Ev
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu softvfp
  69              		.type	_ZN10USARTClassD0Ev, %function
  70              	_ZN10USARTClassD0Ev:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 10B5     		push	{r4, lr}
  74 0002 2821     		movs	r1, #40
  75 0004 0446     		mov	r4, r0
  76 0006 FFF7FEFF 		bl	_ZdlPvj
  77 000a 2046     		mov	r0, r4
  78 000c 10BD     		pop	{r4, pc}
  79              		.size	_ZN10USARTClassD0Ev, .-_ZN10USARTClassD0Ev
  80 000e 00BF     		.section	.text._ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_,"ax",%progbits
  81              		.align	1
  82              		.p2align 2,,3
  83              		.global	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu softvfp
  88              		.type	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_, %function
  89              	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_:
  90              		@ args = 8, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92 0000 30B5     		push	{r4, r5, lr}
  93 0002 83B0     		sub	sp, sp, #12
  94 0004 069D     		ldr	r5, [sp, #24]
  95 0006 079C     		ldr	r4, [sp, #28]
  96 0008 0095     		str	r5, [sp]
  97 000a 0194     		str	r4, [sp, #4]
  98 000c 0D46     		mov	r5, r1
  99 000e 0446     		mov	r4, r0
 100 0010 FFF7FEFF 		bl	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 101 0014 024B     		ldr	r3, .L8
 102 0016 6562     		str	r5, [r4, #36]
 103 0018 2046     		mov	r0, r4
 104 001a 2360     		str	r3, [r4]
 105 001c 03B0     		add	sp, sp, #12
 106              		@ sp needed
 107 001e 30BD     		pop	{r4, r5, pc}
 108              	.L9:
 109              		.align	2
 110              	.L8:
 111 0020 08000000 		.word	.LANCHOR0+8
 112              		.size	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_, .-_ZN10USARTClassC2EP5Usart4IRQnmP10RingBuf
 113              		.global	_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_
 114              		.thumb_set _ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_,_ZN10USARTClassC2EP5Usart4IRQnmP10RingB
ARM GAS  /tmp/ccooV1IO.s 			page 3


 115              		.section	.text._ZN10USARTClass5beginEmN9UARTClass9UARTModesE,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu softvfp
 123              		.type	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE, %function
 124              	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127              		@ link register save eliminated.
 128 0000 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 129              		.size	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE, .-_ZN10USARTClass5beginEmN9UARTClass9UARTMode
 130              		.section	.text._ZN10USARTClass5beginEmNS_10USARTModesE,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.global	_ZN10USARTClass5beginEmNS_10USARTModesE
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu softvfp
 138              		.type	_ZN10USARTClass5beginEmNS_10USARTModesE, %function
 139              	_ZN10USARTClass5beginEmNS_10USARTModesE:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 144              		.size	_ZN10USARTClass5beginEmNS_10USARTModesE, .-_ZN10USARTClass5beginEmNS_10USARTModesE
 145              		.global	_ZTV10USARTClass
 146              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 147              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 148              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 149              	_ZL28cpu_irq_prev_interrupt_state:
 150 0000 00       		.space	1
 151              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 152              		.align	2
 153              		.type	_ZL32cpu_irq_critical_section_counter, %object
 154              		.size	_ZL32cpu_irq_critical_section_counter, 4
 155              	_ZL32cpu_irq_critical_section_counter:
 156 0000 00000000 		.space	4
 157              		.section	.rodata._ZTV10USARTClass,"a",%progbits
 158              		.align	2
 159              		.set	.LANCHOR0,. + 0
 160              		.type	_ZTV10USARTClass, %object
 161              		.size	_ZTV10USARTClass, 60
 162              	_ZTV10USARTClass:
 163 0000 00000000 		.word	0
 164 0004 00000000 		.word	0
 165 0008 00000000 		.word	_ZN10USARTClassD1Ev
 166 000c 00000000 		.word	_ZN10USARTClassD0Ev
 167 0010 00000000 		.word	_ZN9UARTClass5writeEh
 168 0014 00000000 		.word	_ZN9UARTClass5writeEPKhj
 169 0018 00000000 		.word	_ZN9UARTClass9availableEv
 170 001c 00000000 		.word	_ZN9UARTClass4readEv
 171 0020 00000000 		.word	_ZN9UARTClass4peekEv
ARM GAS  /tmp/ccooV1IO.s 			page 4


 172 0024 00000000 		.word	_ZN9UARTClass5flushEv
 173 0028 00000000 		.word	_ZNK9UARTClass8canWriteEv
 174 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 175 0030 00000000 		.word	_ZN10USARTClass5beginEm
 176 0034 00000000 		.word	_ZN9UARTClass3endEv
 177 0038 00000000 		.word	_ZN9UARTClasscvbEv
 178              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
