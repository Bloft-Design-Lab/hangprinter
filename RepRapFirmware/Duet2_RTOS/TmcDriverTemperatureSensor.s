ARM GAS  C:\Users\paja\AppData\Local\Temp\ccNXkQHD.s 			page 1


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
  13              		.file	"TmcDriverTemperatureSensor.cpp"
  14              		.text
  15              		.section	.text._ZN26TmcDriverTemperatureSensor4InitEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN26TmcDriverTemperatureSensor4InitEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN26TmcDriverTemperatureSensor4InitEv, %function
  24              	_ZN26TmcDriverTemperatureSensor4InitEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 7047     		bx	lr
  29              		.size	_ZN26TmcDriverTemperatureSensor4InitEv, .-_ZN26TmcDriverTemperatureSensor4InitEv
  30 0002 00BF     		.section	.text._ZN26TmcDriverTemperatureSensor14GetTemperatureERf,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	_ZN26TmcDriverTemperatureSensor14GetTemperatureERf
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZN26TmcDriverTemperatureSensor14GetTemperatureERf, %function
  39              	_ZN26TmcDriverTemperatureSensor14GetTemperatureERf:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42 0000 10B5     		push	{r4, lr}
  43 0002 064A     		ldr	r2, .L5
  44 0004 4368     		ldr	r3, [r0, #4]
  45 0006 5068     		ldr	r0, [r2, #4]	@ unaligned
  46 0008 6FF47A72 		mvn	r2, #1000
  47 000c 0C46     		mov	r4, r1
  48 000e 9918     		adds	r1, r3, r2
  49 0010 FFF7FEFF 		bl	_ZNK8Platform24GetTmcDriversTemperatureEj
  50 0014 0020     		movs	r0, #0
  51 0016 84ED000A 		vstr.32	s0, [r4]
  52 001a 10BD     		pop	{r4, pc}
  53              	.L6:
  54              		.align	2
  55              	.L5:
  56 001c 00000000 		.word	reprap
  57              		.size	_ZN26TmcDriverTemperatureSensor14GetTemperatureERf, .-_ZN26TmcDriverTemperatureSensor14GetTe
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccNXkQHD.s 			page 2


  58              		.section	.text._ZN26TmcDriverTemperatureSensorD2Ev,"axG",%progbits,_ZN26TmcDriverTemperatureSensor
  59              		.align	1
  60              		.p2align 2,,3
  61              		.weak	_ZN26TmcDriverTemperatureSensorD2Ev
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu fpv4-sp-d16
  66              		.type	_ZN26TmcDriverTemperatureSensorD2Ev, %function
  67              	_ZN26TmcDriverTemperatureSensorD2Ev:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70 0000 10B5     		push	{r4, lr}
  71 0002 034B     		ldr	r3, .L9
  72 0004 0360     		str	r3, [r0]
  73 0006 0446     		mov	r4, r0
  74 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  75 000c 2046     		mov	r0, r4
  76 000e 10BD     		pop	{r4, pc}
  77              	.L10:
  78              		.align	2
  79              	.L9:
  80 0010 08000000 		.word	.LANCHOR0+8
  81              		.size	_ZN26TmcDriverTemperatureSensorD2Ev, .-_ZN26TmcDriverTemperatureSensorD2Ev
  82              		.weak	_ZN26TmcDriverTemperatureSensorD1Ev
  83              		.thumb_set _ZN26TmcDriverTemperatureSensorD1Ev,_ZN26TmcDriverTemperatureSensorD2Ev
  84              		.section	.text._ZN26TmcDriverTemperatureSensorD0Ev,"axG",%progbits,_ZN26TmcDriverTemperatureSensor
  85              		.align	1
  86              		.p2align 2,,3
  87              		.weak	_ZN26TmcDriverTemperatureSensorD0Ev
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu fpv4-sp-d16
  92              		.type	_ZN26TmcDriverTemperatureSensorD0Ev, %function
  93              	_ZN26TmcDriverTemperatureSensorD0Ev:
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96 0000 10B5     		push	{r4, lr}
  97 0002 054B     		ldr	r3, .L13
  98 0004 0360     		str	r3, [r0]
  99 0006 0446     		mov	r4, r0
 100 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 101 000c 2046     		mov	r0, r4
 102 000e 1021     		movs	r1, #16
 103 0010 FFF7FEFF 		bl	_ZdlPvj
 104 0014 2046     		mov	r0, r4
 105 0016 10BD     		pop	{r4, pc}
 106              	.L14:
 107              		.align	2
 108              	.L13:
 109 0018 08000000 		.word	.LANCHOR0+8
 110              		.size	_ZN26TmcDriverTemperatureSensorD0Ev, .-_ZN26TmcDriverTemperatureSensorD0Ev
 111              		.section	.text._ZN26TmcDriverTemperatureSensorC2Ej,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	_ZN26TmcDriverTemperatureSensorC2Ej
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccNXkQHD.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv4-sp-d16
 119              		.type	_ZN26TmcDriverTemperatureSensorC2Ej, %function
 120              	_ZN26TmcDriverTemperatureSensorC2Ej:
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123 0000 10B5     		push	{r4, lr}
 124 0002 044A     		ldr	r2, .L17
 125 0004 0446     		mov	r4, r0
 126 0006 FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
 127 000a 034B     		ldr	r3, .L17+4
 128 000c 2360     		str	r3, [r4]
 129 000e 2046     		mov	r0, r4
 130 0010 10BD     		pop	{r4, pc}
 131              	.L18:
 132 0012 00BF     		.align	2
 133              	.L17:
 134 0014 00000000 		.word	.LC0
 135 0018 08000000 		.word	.LANCHOR0+8
 136              		.size	_ZN26TmcDriverTemperatureSensorC2Ej, .-_ZN26TmcDriverTemperatureSensorC2Ej
 137              		.global	_ZN26TmcDriverTemperatureSensorC1Ej
 138              		.thumb_set _ZN26TmcDriverTemperatureSensorC1Ej,_ZN26TmcDriverTemperatureSensorC2Ej
 139              		.global	_ZTV26TmcDriverTemperatureSensor
 140              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 141              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 142              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 143              	_ZL28cpu_irq_prev_interrupt_state:
 144 0000 00       		.space	1
 145              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 146              		.align	2
 147              		.type	_ZL32cpu_irq_critical_section_counter, %object
 148              		.size	_ZL32cpu_irq_critical_section_counter, 4
 149              	_ZL32cpu_irq_critical_section_counter:
 150 0000 00000000 		.space	4
 151              		.section	.rodata._ZN26TmcDriverTemperatureSensorC2Ej.str1.4,"aMS",%progbits,1
 152              		.align	2
 153              	.LC0:
 154 0000 544D4332 		.ascii	"TMC2660 temperature warnings\000"
 154      36363020 
 154      74656D70 
 154      65726174 
 154      75726520 
 155              		.section	.rodata._ZTV26TmcDriverTemperatureSensor,"a",%progbits
 156              		.align	2
 157              		.set	.LANCHOR0,. + 0
 158              		.type	_ZTV26TmcDriverTemperatureSensor, %object
 159              		.size	_ZTV26TmcDriverTemperatureSensor, 28
 160              	_ZTV26TmcDriverTemperatureSensor:
 161 0000 00000000 		.word	0
 162 0004 00000000 		.word	0
 163 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 164 000c 00000000 		.word	_ZN26TmcDriverTemperatureSensor4InitEv
 165 0010 00000000 		.word	_ZN26TmcDriverTemperatureSensor14GetTemperatureERf
 166 0014 00000000 		.word	_ZN26TmcDriverTemperatureSensorD1Ev
 167 0018 00000000 		.word	_ZN26TmcDriverTemperatureSensorD0Ev
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccNXkQHD.s 			page 4


 168              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
