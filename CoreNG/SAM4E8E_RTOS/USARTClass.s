ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuyTBlg.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN9UARTClasscvbEv,"axG",%progbits,_ZN9UARTClasscvbEv,comdat
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZN9UARTClasscvbEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN9UARTClasscvbEv, %function
  24              	_ZN9UARTClasscvbEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0120     		movs	r0, #1
  29 0002 7047     		bx	lr
  30              		.size	_ZN9UARTClasscvbEv, .-_ZN9UARTClasscvbEv
  31              		.section	.text._ZN10USARTClassD2Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
  32              		.align	1
  33              		.p2align 2,,3
  34              		.weak	_ZN10USARTClassD2Ev
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	_ZN10USARTClassD2Ev, %function
  40              	_ZN10USARTClassD2Ev:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 7047     		bx	lr
  45              		.size	_ZN10USARTClassD2Ev, .-_ZN10USARTClassD2Ev
  46              		.weak	_ZN10USARTClassD1Ev
  47              		.thumb_set _ZN10USARTClassD1Ev,_ZN10USARTClassD2Ev
  48 0002 00BF     		.section	.text._ZN10USARTClass5beginEm,"ax",%progbits
  49              		.align	1
  50              		.p2align 2,,3
  51              		.global	_ZN10USARTClass5beginEm
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu fpv4-sp-d16
  56              		.type	_ZN10USARTClass5beginEm, %function
  57              	_ZN10USARTClass5beginEm:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuyTBlg.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 4FF40C62 		mov	r2, #2240
  62 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
  63              		.size	_ZN10USARTClass5beginEm, .-_ZN10USARTClass5beginEm
  64              		.section	.text._ZN10USARTClassD0Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
  65              		.align	1
  66              		.p2align 2,,3
  67              		.weak	_ZN10USARTClassD0Ev
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu fpv4-sp-d16
  72              		.type	_ZN10USARTClassD0Ev, %function
  73              	_ZN10USARTClassD0Ev:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76 0000 10B5     		push	{r4, lr}
  77 0002 3021     		movs	r1, #48
  78 0004 0446     		mov	r4, r0
  79 0006 FFF7FEFF 		bl	_ZdlPvj
  80 000a 2046     		mov	r0, r4
  81 000c 10BD     		pop	{r4, pc}
  82              		.size	_ZN10USARTClassD0Ev, .-_ZN10USARTClassD0Ev
  83 000e 00BF     		.section	.text._ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_,"ax",%progbits
  84              		.align	1
  85              		.p2align 2,,3
  86              		.global	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu fpv4-sp-d16
  91              		.type	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_, %function
  92              	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_:
  93              		@ args = 8, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95 0000 30B5     		push	{r4, r5, lr}
  96 0002 83B0     		sub	sp, sp, #12
  97 0004 DDE90654 		ldrd	r5, r4, [sp, #24]
  98 0008 CDE90054 		strd	r5, r4, [sp]
  99 000c 0446     		mov	r4, r0
 100 000e 0D46     		mov	r5, r1
 101 0010 FFF7FEFF 		bl	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 102 0014 024B     		ldr	r3, .L9
 103 0016 E562     		str	r5, [r4, #44]
 104 0018 2046     		mov	r0, r4
 105 001a 2360     		str	r3, [r4]
 106 001c 03B0     		add	sp, sp, #12
 107              		@ sp needed
 108 001e 30BD     		pop	{r4, r5, pc}
 109              	.L10:
 110              		.align	2
 111              	.L9:
 112 0020 08000000 		.word	.LANCHOR0+8
 113              		.size	_ZN10USARTClassC2EP5Usart4IRQnmP10RingBufferS4_, .-_ZN10USARTClassC2EP5Usart4IRQnmP10RingBuf
 114              		.global	_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuyTBlg.s 			page 3


 115              		.thumb_set _ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_,_ZN10USARTClassC2EP5Usart4IRQnmP10RingB
 116              		.section	.text._ZN10USARTClass5beginEmN9UARTClass9UARTModesE,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu fpv4-sp-d16
 124              		.type	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE, %function
 125              	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE:
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128              		@ link register save eliminated.
 129 0000 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 130              		.size	_ZN10USARTClass5beginEmN9UARTClass9UARTModesE, .-_ZN10USARTClass5beginEmN9UARTClass9UARTMode
 131              		.section	.text._ZN10USARTClass5beginEmNS_10USARTModesE,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.global	_ZN10USARTClass5beginEmNS_10USARTModesE
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu fpv4-sp-d16
 139              		.type	_ZN10USARTClass5beginEmNS_10USARTModesE, %function
 140              	_ZN10USARTClass5beginEmNS_10USARTModesE:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143              		@ link register save eliminated.
 144 0000 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 145              		.size	_ZN10USARTClass5beginEmNS_10USARTModesE, .-_ZN10USARTClass5beginEmNS_10USARTModesE
 146              		.global	_ZTV10USARTClass
 147              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 148              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 149              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 150              	_ZL28cpu_irq_prev_interrupt_state:
 151 0000 00       		.space	1
 152              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 153              		.align	2
 154              		.type	_ZL32cpu_irq_critical_section_counter, %object
 155              		.size	_ZL32cpu_irq_critical_section_counter, 4
 156              	_ZL32cpu_irq_critical_section_counter:
 157 0000 00000000 		.space	4
 158              		.section	.rodata._ZTV10USARTClass,"a",%progbits
 159              		.align	2
 160              		.set	.LANCHOR0,. + 0
 161              		.type	_ZTV10USARTClass, %object
 162              		.size	_ZTV10USARTClass, 60
 163              	_ZTV10USARTClass:
 164 0000 00000000 		.word	0
 165 0004 00000000 		.word	0
 166 0008 00000000 		.word	_ZN10USARTClassD1Ev
 167 000c 00000000 		.word	_ZN10USARTClassD0Ev
 168 0010 00000000 		.word	_ZN9UARTClass5writeEh
 169 0014 00000000 		.word	_ZN9UARTClass5writeEPKhj
 170 0018 00000000 		.word	_ZN9UARTClass9availableEv
 171 001c 00000000 		.word	_ZN9UARTClass4readEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuyTBlg.s 			page 4


 172 0020 00000000 		.word	_ZN9UARTClass4peekEv
 173 0024 00000000 		.word	_ZN9UARTClass5flushEv
 174 0028 00000000 		.word	_ZNK9UARTClass8canWriteEv
 175 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 176 0030 00000000 		.word	_ZN10USARTClass5beginEm
 177 0034 00000000 		.word	_ZN9UARTClass3endEv
 178 0038 00000000 		.word	_ZN9UARTClasscvbEv
 179              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
