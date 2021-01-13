ARM GAS  /tmp/ccTX0fjO.s 			page 1


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
  14              		.section	.text._ZN20CpuTemperatureSensor4InitEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN20CpuTemperatureSensor4InitEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN20CpuTemperatureSensor4InitEv, %function
  23              	_ZN20CpuTemperatureSensor4InitEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 7047     		bx	lr
  28              		.size	_ZN20CpuTemperatureSensor4InitEv, .-_ZN20CpuTemperatureSensor4InitEv
  29 0002 00BF     		.section	.text._ZN20CpuTemperatureSensor14GetTemperatureERf,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	_ZN20CpuTemperatureSensor14GetTemperatureERf
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZN20CpuTemperatureSensor14GetTemperatureERf, %function
  38              	_ZN20CpuTemperatureSensor14GetTemperatureERf:
  39              		@ args = 0, pretend = 0, frame = 8
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41 0000 00B5     		push	{lr}
  42 0002 064B     		ldr	r3, .L5
  43 0004 83B0     		sub	sp, sp, #12
  44 0006 0A46     		mov	r2, r1
  45 0008 1868     		ldr	r0, [r3]	@ unaligned
  46 000a 6946     		mov	r1, sp
  47 000c 01AB     		add	r3, sp, #4
  48 000e FFF7FEFF 		bl	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
  49 0012 0020     		movs	r0, #0
  50 0014 03B0     		add	sp, sp, #12
  51              		@ sp needed
  52 0016 5DF804FB 		ldr	pc, [sp], #4
  53              	.L6:
  54 001a 00BF     		.align	2
  55              	.L5:
  56 001c 00000000 		.word	reprap
  57              		.size	_ZN20CpuTemperatureSensor14GetTemperatureERf, .-_ZN20CpuTemperatureSensor14GetTemperatureERf
ARM GAS  /tmp/ccTX0fjO.s 			page 2


  58              		.section	.text._ZN20CpuTemperatureSensorD2Ev,"axG",%progbits,_ZN20CpuTemperatureSensorD5Ev,comdat
  59              		.align	1
  60              		.p2align 2,,3
  61              		.weak	_ZN20CpuTemperatureSensorD2Ev
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu fpv4-sp-d16
  66              		.type	_ZN20CpuTemperatureSensorD2Ev, %function
  67              	_ZN20CpuTemperatureSensorD2Ev:
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
  81              		.size	_ZN20CpuTemperatureSensorD2Ev, .-_ZN20CpuTemperatureSensorD2Ev
  82              		.weak	_ZN20CpuTemperatureSensorD1Ev
  83              		.thumb_set _ZN20CpuTemperatureSensorD1Ev,_ZN20CpuTemperatureSensorD2Ev
  84              		.section	.text._ZN20CpuTemperatureSensorD0Ev,"axG",%progbits,_ZN20CpuTemperatureSensorD5Ev,comdat
  85              		.align	1
  86              		.p2align 2,,3
  87              		.weak	_ZN20CpuTemperatureSensorD0Ev
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu fpv4-sp-d16
  92              		.type	_ZN20CpuTemperatureSensorD0Ev, %function
  93              	_ZN20CpuTemperatureSensorD0Ev:
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
 110              		.size	_ZN20CpuTemperatureSensorD0Ev, .-_ZN20CpuTemperatureSensorD0Ev
 111              		.section	.text._ZN20CpuTemperatureSensorC2Ej,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	_ZN20CpuTemperatureSensorC2Ej
ARM GAS  /tmp/ccTX0fjO.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv4-sp-d16
 119              		.type	_ZN20CpuTemperatureSensorC2Ej, %function
 120              	_ZN20CpuTemperatureSensorC2Ej:
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
 136              		.size	_ZN20CpuTemperatureSensorC2Ej, .-_ZN20CpuTemperatureSensorC2Ej
 137              		.global	_ZN20CpuTemperatureSensorC1Ej
 138              		.thumb_set _ZN20CpuTemperatureSensorC1Ej,_ZN20CpuTemperatureSensorC2Ej
 139              		.global	_ZTV20CpuTemperatureSensor
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
 151              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 152              		.align	2
 153              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 154              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 155              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 156 0000 00000000 		.space	4
 157              		.section	.rodata._ZN20CpuTemperatureSensorC2Ej.str1.4,"aMS",%progbits,1
 158              		.align	2
 159              	.LC0:
 160 0000 6D696372 		.ascii	"microcontroller embedded temperature sensor\000"
 160      6F636F6E 
 160      74726F6C 
 160      6C657220 
 160      656D6265 
 161              		.section	.rodata._ZTV20CpuTemperatureSensor,"a",%progbits
 162              		.align	2
 163              		.set	.LANCHOR0,. + 0
 164              		.type	_ZTV20CpuTemperatureSensor, %object
 165              		.size	_ZTV20CpuTemperatureSensor, 28
 166              	_ZTV20CpuTemperatureSensor:
 167 0000 00000000 		.word	0
ARM GAS  /tmp/ccTX0fjO.s 			page 4


 168 0004 00000000 		.word	0
 169 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 170 000c 00000000 		.word	_ZN20CpuTemperatureSensor4InitEv
 171 0010 00000000 		.word	_ZN20CpuTemperatureSensor14GetTemperatureERf
 172 0014 00000000 		.word	_ZN20CpuTemperatureSensorD1Ev
 173 0018 00000000 		.word	_ZN20CpuTemperatureSensorD0Ev
 174              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
