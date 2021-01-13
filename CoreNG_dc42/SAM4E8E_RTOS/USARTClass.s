ARM GAS  /tmp/cc01sYEf.s 			page 1


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
  13              		.file	"USARTClass.cpp"
  14              		.section	.text._ZN9UARTClasscvbEv,"axG",%progbits,_ZN9UARTClasscvbEv,comdat
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZN9UARTClasscvbEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN9UARTClasscvbEv, %function
  23              	_ZN9UARTClasscvbEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0120     		movs	r0, #1
  28 0002 7047     		bx	lr
  29              		.size	_ZN9UARTClasscvbEv, .-_ZN9UARTClasscvbEv
  30              		.section	.text._ZN10USARTClassD2Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
  31              		.align	1
  32              		.p2align 2,,3
  33              		.weak	_ZN10USARTClassD2Ev
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZN10USARTClassD2Ev, %function
  39              	_ZN10USARTClassD2Ev:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 7047     		bx	lr
  44              		.size	_ZN10USARTClassD2Ev, .-_ZN10USARTClassD2Ev
  45              		.weak	_ZN10USARTClassD1Ev
  46              		.thumb_set _ZN10USARTClassD1Ev,_ZN10USARTClassD2Ev
  47 0002 00BF     		.section	.text._ZN10USARTClass5beginEm,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.global	_ZN10USARTClass5beginEm
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu fpv4-sp-d16
  55              		.type	_ZN10USARTClass5beginEm, %function
  56              	_ZN10USARTClass5beginEm:
  57              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc01sYEf.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59              		@ link register save eliminated.
  60 0000 4FF40C62 		mov	r2, #2240
  61 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
  62              		.size	_ZN10USARTClass5beginEm, .-_ZN10USARTClass5beginEm
  63              		.section	.text._ZN10USARTClassD0Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
  64              		.align	1
  65              		.p2align 2,,3
  66              		.weak	_ZN10USARTClassD0Ev
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu fpv4-sp-d16
  71              		.type	_ZN10USARTClassD0Ev, %function
  72              	_ZN10USARTClassD0Ev:
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75 0000 10B5     		push	{r4, lr}
  76 0002 3021     		movs	r1, #48
  77 0004 0446     		mov	r4, r0
  78 0006 FFF7FEFF 		bl	_ZdlPvj
  79 000a 2046     		mov	r0, r4
  80 000c 10BD     		pop	{r4, pc}
  81              		.size	_ZN10USARTClassD0Ev, .-_ZN10USARTClassD0Ev
  82 000e 00BF     		.section	.text._ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_,"ax",%progbits
  83              		.align	1
  84              		.p2align 2,,3
  85              		.global	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu fpv4-sp-d16
  90              		.type	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_, %function
  91              	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_:
  92              		@ args = 8, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94 0000 30B5     		push	{r4, r5, lr}
  95 0002 83B0     		sub	sp, sp, #12
  96 0004 069D     		ldr	r5, [sp, #24]
  97 0006 079C     		ldr	r4, [sp, #28]
  98 0008 0095     		str	r5, [sp]
  99 000a 0194     		str	r4, [sp, #4]
 100 000c 0D46     		mov	r5, r1
 101 000e 0446     		mov	r4, r0
 102 0010 FFF7FEFF 		bl	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 103 0014 024B     		ldr	r3, .L8
 104 0016 E562     		str	r5, [r4, #44]
 105 0018 2046     		mov	r0, r4
 106 001a 2360     		str	r3, [r4]
 107 001c 03B0     		add	sp, sp, #12
 108              		@ sp needed
 109 001e 30BD     		pop	{r4, r5, pc}
 110              	.L9:
 111              		.align	2
 112              	.L8:
 113 0020 08000000 		.word	.LANCHOR0+8
 114              		.size	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_, .-_ZN10USARTClassC2EP5Usart4IRQnmP10RingBuf
ARM GAS  /tmp/cc01sYEf.s 			page 3


 115              		.global	_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_
 116              		.thumb_set _ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_,_ZN10USARTClassC2EP5Usart4IRQnmP10RingB
 117              		.section	.text._ZN10USARTClass5beginEmN9UARTClass9UARTModesE,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu fpv4-sp-d16
 125              		.type	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE, %function
 126              	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130 0000 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 131              		.size	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE, .-_ZN10USARTClass5beginEmN9UARTClass9UARTMode
 132              		.section	.text._ZN10USARTClass5beginEmNS_10USARTModesE,"ax",%progbits
 133              		.align	1
 134              		.p2align 2,,3
 135              		.global	_ZN10USARTClass5beginEmNS_10USARTModesE
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu fpv4-sp-d16
 140              		.type	_ZN10USARTClass5beginEmNS_10USARTModesE, %function
 141              	_ZN10USARTClass5beginEmNS_10USARTModesE:
 142              		@ args = 0, pretend = 0, frame = 0
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144              		@ link register save eliminated.
 145 0000 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 146              		.size	_ZN10USARTClass5beginEmNS_10USARTModesE, .-_ZN10USARTClass5beginEmNS_10USARTModesE
 147              		.global	_ZTV10USARTClass
 148              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 149              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 150              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 151              	_ZL28cpu_irq_prev_interrupt_state:
 152 0000 00       		.space	1
 153              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 154              		.align	2
 155              		.type	_ZL32cpu_irq_critical_section_counter, %object
 156              		.size	_ZL32cpu_irq_critical_section_counter, 4
 157              	_ZL32cpu_irq_critical_section_counter:
 158 0000 00000000 		.space	4
 159              		.section	.rodata._ZTV10USARTClass,"a",%progbits
 160              		.align	2
 161              		.set	.LANCHOR0,. + 0
 162              		.type	_ZTV10USARTClass, %object
 163              		.size	_ZTV10USARTClass, 60
 164              	_ZTV10USARTClass:
 165 0000 00000000 		.word	0
 166 0004 00000000 		.word	0
 167 0008 00000000 		.word	_ZN10USARTClassD1Ev
 168 000c 00000000 		.word	_ZN10USARTClassD0Ev
 169 0010 00000000 		.word	_ZN9UARTClass5writeEh
 170 0014 00000000 		.word	_ZN9UARTClass5writeEPKhj
 171 0018 00000000 		.word	_ZN9UARTClass9availableEv
ARM GAS  /tmp/cc01sYEf.s 			page 4


 172 001c 00000000 		.word	_ZN9UARTClass4readEv
 173 0020 00000000 		.word	_ZN9UARTClass4peekEv
 174 0024 00000000 		.word	_ZN9UARTClass5flushEv
 175 0028 00000000 		.word	_ZNK9UARTClass8canWriteEv
 176 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 177 0030 00000000 		.word	_ZN10USARTClass5beginEm
 178 0034 00000000 		.word	_ZN9UARTClass3endEv
 179 0038 00000000 		.word	_ZN9UARTClasscvbEv
 180              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
