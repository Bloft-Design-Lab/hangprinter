ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccDxjCJP.s 			page 1


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
  13              		.file	"CpuTemperatureSensor.cpp"
  14              		.text
  15              		.section	.text._ZN20CpuTemperatureSensor4InitEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN20CpuTemperatureSensor4InitEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN20CpuTemperatureSensor4InitEv, %function
  24              	_ZN20CpuTemperatureSensor4InitEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 7047     		bx	lr
  29              		.size	_ZN20CpuTemperatureSensor4InitEv, .-_ZN20CpuTemperatureSensor4InitEv
  30 0002 00BF     		.section	.text._ZN20CpuTemperatureSensor14GetTemperatureERf,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	_ZN20CpuTemperatureSensor14GetTemperatureERf
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZN20CpuTemperatureSensor14GetTemperatureERf, %function
  39              	_ZN20CpuTemperatureSensor14GetTemperatureERf:
  40              		@ args = 0, pretend = 0, frame = 8
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42 0000 00B5     		push	{lr}
  43 0002 064B     		ldr	r3, .L5
  44 0004 83B0     		sub	sp, sp, #12
  45 0006 0A46     		mov	r2, r1
  46 0008 5868     		ldr	r0, [r3, #4]	@ unaligned
  47 000a 6946     		mov	r1, sp
  48 000c 01AB     		add	r3, sp, #4
  49 000e FFF7FEFF 		bl	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
  50 0012 0020     		movs	r0, #0
  51 0014 03B0     		add	sp, sp, #12
  52              		@ sp needed
  53 0016 5DF804FB 		ldr	pc, [sp], #4
  54              	.L6:
  55 001a 00BF     		.align	2
  56              	.L5:
  57 001c 00000000 		.word	reprap
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccDxjCJP.s 			page 2


  58              		.size	_ZN20CpuTemperatureSensor14GetTemperatureERf, .-_ZN20CpuTemperatureSensor14GetTemperatureERf
  59              		.section	.text._ZN20CpuTemperatureSensorD2Ev,"axG",%progbits,_ZN20CpuTemperatureSensorD5Ev,comdat
  60              		.align	1
  61              		.p2align 2,,3
  62              		.weak	_ZN20CpuTemperatureSensorD2Ev
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu fpv4-sp-d16
  67              		.type	_ZN20CpuTemperatureSensorD2Ev, %function
  68              	_ZN20CpuTemperatureSensorD2Ev:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71 0000 10B5     		push	{r4, lr}
  72 0002 034B     		ldr	r3, .L9
  73 0004 0360     		str	r3, [r0]
  74 0006 0446     		mov	r4, r0
  75 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  76 000c 2046     		mov	r0, r4
  77 000e 10BD     		pop	{r4, pc}
  78              	.L10:
  79              		.align	2
  80              	.L9:
  81 0010 08000000 		.word	.LANCHOR0+8
  82              		.size	_ZN20CpuTemperatureSensorD2Ev, .-_ZN20CpuTemperatureSensorD2Ev
  83              		.weak	_ZN20CpuTemperatureSensorD1Ev
  84              		.thumb_set _ZN20CpuTemperatureSensorD1Ev,_ZN20CpuTemperatureSensorD2Ev
  85              		.section	.text._ZN20CpuTemperatureSensorD0Ev,"axG",%progbits,_ZN20CpuTemperatureSensorD5Ev,comdat
  86              		.align	1
  87              		.p2align 2,,3
  88              		.weak	_ZN20CpuTemperatureSensorD0Ev
  89              		.syntax unified
  90              		.thumb
  91              		.thumb_func
  92              		.fpu fpv4-sp-d16
  93              		.type	_ZN20CpuTemperatureSensorD0Ev, %function
  94              	_ZN20CpuTemperatureSensorD0Ev:
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97 0000 10B5     		push	{r4, lr}
  98 0002 054B     		ldr	r3, .L13
  99 0004 0360     		str	r3, [r0]
 100 0006 0446     		mov	r4, r0
 101 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 102 000c 2046     		mov	r0, r4
 103 000e 1021     		movs	r1, #16
 104 0010 FFF7FEFF 		bl	_ZdlPvj
 105 0014 2046     		mov	r0, r4
 106 0016 10BD     		pop	{r4, pc}
 107              	.L14:
 108              		.align	2
 109              	.L13:
 110 0018 08000000 		.word	.LANCHOR0+8
 111              		.size	_ZN20CpuTemperatureSensorD0Ev, .-_ZN20CpuTemperatureSensorD0Ev
 112              		.section	.text._ZN20CpuTemperatureSensorC2Ej,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccDxjCJP.s 			page 3


 115              		.global	_ZN20CpuTemperatureSensorC2Ej
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu fpv4-sp-d16
 120              		.type	_ZN20CpuTemperatureSensorC2Ej, %function
 121              	_ZN20CpuTemperatureSensorC2Ej:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 10B5     		push	{r4, lr}
 125 0002 044A     		ldr	r2, .L17
 126 0004 0446     		mov	r4, r0
 127 0006 FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
 128 000a 034B     		ldr	r3, .L17+4
 129 000c 2360     		str	r3, [r4]
 130 000e 2046     		mov	r0, r4
 131 0010 10BD     		pop	{r4, pc}
 132              	.L18:
 133 0012 00BF     		.align	2
 134              	.L17:
 135 0014 00000000 		.word	.LC0
 136 0018 08000000 		.word	.LANCHOR0+8
 137              		.size	_ZN20CpuTemperatureSensorC2Ej, .-_ZN20CpuTemperatureSensorC2Ej
 138              		.global	_ZN20CpuTemperatureSensorC1Ej
 139              		.thumb_set _ZN20CpuTemperatureSensorC1Ej,_ZN20CpuTemperatureSensorC2Ej
 140              		.global	_ZTV20CpuTemperatureSensor
 141              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 142              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 143              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 144              	_ZL28cpu_irq_prev_interrupt_state:
 145 0000 00       		.space	1
 146              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 147              		.align	2
 148              		.type	_ZL32cpu_irq_critical_section_counter, %object
 149              		.size	_ZL32cpu_irq_critical_section_counter, 4
 150              	_ZL32cpu_irq_critical_section_counter:
 151 0000 00000000 		.space	4
 152              		.section	.rodata._ZN20CpuTemperatureSensorC2Ej.str1.4,"aMS",%progbits,1
 153              		.align	2
 154              	.LC0:
 155 0000 6D696372 		.ascii	"microcontroller embedded temperature sensor\000"
 155      6F636F6E 
 155      74726F6C 
 155      6C657220 
 155      656D6265 
 156              		.section	.rodata._ZTV20CpuTemperatureSensor,"a",%progbits
 157              		.align	2
 158              		.set	.LANCHOR0,. + 0
 159              		.type	_ZTV20CpuTemperatureSensor, %object
 160              		.size	_ZTV20CpuTemperatureSensor, 28
 161              	_ZTV20CpuTemperatureSensor:
 162 0000 00000000 		.word	0
 163 0004 00000000 		.word	0
 164 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 165 000c 00000000 		.word	_ZN20CpuTemperatureSensor4InitEv
 166 0010 00000000 		.word	_ZN20CpuTemperatureSensor14GetTemperatureERf
 167 0014 00000000 		.word	_ZN20CpuTemperatureSensorD1Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccDxjCJP.s 			page 4


 168 0018 00000000 		.word	_ZN20CpuTemperatureSensorD0Ev
 169              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
