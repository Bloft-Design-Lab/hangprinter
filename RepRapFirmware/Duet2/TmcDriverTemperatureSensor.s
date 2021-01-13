ARM GAS  /tmp/ccRb7Jv3.s 			page 1


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
  14              		.section	.text._ZN26TmcDriverTemperatureSensor4InitEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN26TmcDriverTemperatureSensor4InitEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN26TmcDriverTemperatureSensor4InitEv, %function
  23              	_ZN26TmcDriverTemperatureSensor4InitEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 7047     		bx	lr
  28              		.size	_ZN26TmcDriverTemperatureSensor4InitEv, .-_ZN26TmcDriverTemperatureSensor4InitEv
  29 0002 00BF     		.section	.text._ZN26TmcDriverTemperatureSensor14GetTemperatureERf,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	_ZN26TmcDriverTemperatureSensor14GetTemperatureERf
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZN26TmcDriverTemperatureSensor14GetTemperatureERf, %function
  38              	_ZN26TmcDriverTemperatureSensor14GetTemperatureERf:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41 0000 10B5     		push	{r4, lr}
  42 0002 064A     		ldr	r2, .L5
  43 0004 4368     		ldr	r3, [r0, #4]
  44 0006 1068     		ldr	r0, [r2]	@ unaligned
  45 0008 6FF47A72 		mvn	r2, #1000
  46 000c 0C46     		mov	r4, r1
  47 000e 9918     		adds	r1, r3, r2
  48 0010 FFF7FEFF 		bl	_ZNK8Platform24GetTmcDriversTemperatureEj
  49 0014 0020     		movs	r0, #0
  50 0016 84ED000A 		vstr.32	s0, [r4]
  51 001a 10BD     		pop	{r4, pc}
  52              	.L6:
  53              		.align	2
  54              	.L5:
  55 001c 00000000 		.word	reprap
  56              		.size	_ZN26TmcDriverTemperatureSensor14GetTemperatureERf, .-_ZN26TmcDriverTemperatureSensor14GetTe
  57              		.section	.text._ZN26TmcDriverTemperatureSensorD2Ev,"axG",%progbits,_ZN26TmcDriverTemperatureSensor
ARM GAS  /tmp/ccRb7Jv3.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.weak	_ZN26TmcDriverTemperatureSensorD2Ev
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	_ZN26TmcDriverTemperatureSensorD2Ev, %function
  66              	_ZN26TmcDriverTemperatureSensorD2Ev:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69 0000 10B5     		push	{r4, lr}
  70 0002 034B     		ldr	r3, .L9
  71 0004 0360     		str	r3, [r0]
  72 0006 0446     		mov	r4, r0
  73 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  74 000c 2046     		mov	r0, r4
  75 000e 10BD     		pop	{r4, pc}
  76              	.L10:
  77              		.align	2
  78              	.L9:
  79 0010 08000000 		.word	.LANCHOR0+8
  80              		.size	_ZN26TmcDriverTemperatureSensorD2Ev, .-_ZN26TmcDriverTemperatureSensorD2Ev
  81              		.weak	_ZN26TmcDriverTemperatureSensorD1Ev
  82              		.thumb_set _ZN26TmcDriverTemperatureSensorD1Ev,_ZN26TmcDriverTemperatureSensorD2Ev
  83              		.section	.text._ZN26TmcDriverTemperatureSensorD0Ev,"axG",%progbits,_ZN26TmcDriverTemperatureSensor
  84              		.align	1
  85              		.p2align 2,,3
  86              		.weak	_ZN26TmcDriverTemperatureSensorD0Ev
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu fpv4-sp-d16
  91              		.type	_ZN26TmcDriverTemperatureSensorD0Ev, %function
  92              	_ZN26TmcDriverTemperatureSensorD0Ev:
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95 0000 10B5     		push	{r4, lr}
  96 0002 054B     		ldr	r3, .L13
  97 0004 0360     		str	r3, [r0]
  98 0006 0446     		mov	r4, r0
  99 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 100 000c 2046     		mov	r0, r4
 101 000e 1021     		movs	r1, #16
 102 0010 FFF7FEFF 		bl	_ZdlPvj
 103 0014 2046     		mov	r0, r4
 104 0016 10BD     		pop	{r4, pc}
 105              	.L14:
 106              		.align	2
 107              	.L13:
 108 0018 08000000 		.word	.LANCHOR0+8
 109              		.size	_ZN26TmcDriverTemperatureSensorD0Ev, .-_ZN26TmcDriverTemperatureSensorD0Ev
 110              		.section	.text._ZN26TmcDriverTemperatureSensorC2Ej,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	_ZN26TmcDriverTemperatureSensorC2Ej
 114              		.syntax unified
ARM GAS  /tmp/ccRb7Jv3.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	_ZN26TmcDriverTemperatureSensorC2Ej, %function
 119              	_ZN26TmcDriverTemperatureSensorC2Ej:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122 0000 10B5     		push	{r4, lr}
 123 0002 044A     		ldr	r2, .L17
 124 0004 0446     		mov	r4, r0
 125 0006 FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
 126 000a 034B     		ldr	r3, .L17+4
 127 000c 2360     		str	r3, [r4]
 128 000e 2046     		mov	r0, r4
 129 0010 10BD     		pop	{r4, pc}
 130              	.L18:
 131 0012 00BF     		.align	2
 132              	.L17:
 133 0014 00000000 		.word	.LC0
 134 0018 08000000 		.word	.LANCHOR0+8
 135              		.size	_ZN26TmcDriverTemperatureSensorC2Ej, .-_ZN26TmcDriverTemperatureSensorC2Ej
 136              		.global	_ZN26TmcDriverTemperatureSensorC1Ej
 137              		.thumb_set _ZN26TmcDriverTemperatureSensorC1Ej,_ZN26TmcDriverTemperatureSensorC2Ej
 138              		.global	_ZTV26TmcDriverTemperatureSensor
 139              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 140              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 141              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 142              	_ZL28cpu_irq_prev_interrupt_state:
 143 0000 00       		.space	1
 144              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 145              		.align	2
 146              		.type	_ZL32cpu_irq_critical_section_counter, %object
 147              		.size	_ZL32cpu_irq_critical_section_counter, 4
 148              	_ZL32cpu_irq_critical_section_counter:
 149 0000 00000000 		.space	4
 150              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 151              		.align	2
 152              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 153              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 154              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 155 0000 00000000 		.space	4
 156              		.section	.rodata._ZN26TmcDriverTemperatureSensorC2Ej.str1.4,"aMS",%progbits,1
 157              		.align	2
 158              	.LC0:
 159 0000 544D4332 		.ascii	"TMC2660 temperature warnings\000"
 159      36363020 
 159      74656D70 
 159      65726174 
 159      75726520 
 160              		.section	.rodata._ZTV26TmcDriverTemperatureSensor,"a",%progbits
 161              		.align	2
 162              		.set	.LANCHOR0,. + 0
 163              		.type	_ZTV26TmcDriverTemperatureSensor, %object
 164              		.size	_ZTV26TmcDriverTemperatureSensor, 28
 165              	_ZTV26TmcDriverTemperatureSensor:
 166 0000 00000000 		.word	0
 167 0004 00000000 		.word	0
ARM GAS  /tmp/ccRb7Jv3.s 			page 4


 168 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 169 000c 00000000 		.word	_ZN26TmcDriverTemperatureSensor4InitEv
 170 0010 00000000 		.word	_ZN26TmcDriverTemperatureSensor14GetTemperatureERf
 171 0014 00000000 		.word	_ZN26TmcDriverTemperatureSensorD1Ev
 172 0018 00000000 		.word	_ZN26TmcDriverTemperatureSensorD0Ev
 173              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
