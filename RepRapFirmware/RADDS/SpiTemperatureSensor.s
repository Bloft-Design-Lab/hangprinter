ARM GAS  /tmp/ccsL2lHH.s 			page 1


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
  11              		.file	"SpiTemperatureSensor.cpp"
  12              		.section	.text._ZN20SpiTemperatureSensorC2EjPKcjhm,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN20SpiTemperatureSensorC2EjPKcjhm
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN20SpiTemperatureSensorC2EjPKcjhm, %function
  21              	_ZN20SpiTemperatureSensorC2EjPKcjhm:
  22              		@ args = 8, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  25 0002 1E46     		mov	r6, r3
  26 0004 0446     		mov	r4, r0
  27 0006 9DF81870 		ldrb	r7, [sp, #24]	@ zero_extendqisi2
  28 000a 079D     		ldr	r5, [sp, #28]
  29 000c FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
  30 0010 074B     		ldr	r3, .L3
  31 0012 0021     		movs	r1, #0
  32 0014 9E5D     		ldrb	r6, [r3, r6]	@ zero_extendqisi2
  33 0016 0B22     		movs	r2, #11
  34 0018 0023     		movs	r3, #0
  35 001a 0648     		ldr	r0, .L3+4
  36 001c E774     		strb	r7, [r4, #19]
  37 001e 2674     		strb	r6, [r4, #16]
  38 0020 2060     		str	r0, [r4]
  39 0022 6561     		str	r5, [r4, #20]
  40 0024 6174     		strb	r1, [r4, #17]
  41 0026 E361     		str	r3, [r4, #28]	@ float
  42 0028 84F82020 		strb	r2, [r4, #32]
  43 002c 2046     		mov	r0, r4
  44 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  45              	.L4:
  46              		.align	2
  47              	.L3:
  48 0030 00000000 		.word	.LANCHOR0
  49 0034 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  50              		.size	_ZN20SpiTemperatureSensorC2EjPKcjhm, .-_ZN20SpiTemperatureSensorC2EjPKcjhm
  51              		.global	_ZN20SpiTemperatureSensorC1EjPKcjhm
  52              		.thumb_set _ZN20SpiTemperatureSensorC1EjPKcjhm,_ZN20SpiTemperatureSensorC2EjPKcjhm
  53              		.section	.text._ZN20SpiTemperatureSensor7InitSpiEv,"ax",%progbits
  54              		.align	1
  55              		.p2align 2,,3
  56              		.global	_ZN20SpiTemperatureSensor7InitSpiEv
  57              		.syntax unified
ARM GAS  /tmp/ccsL2lHH.s 			page 2


  58              		.thumb
  59              		.thumb_func
  60              		.fpu softvfp
  61              		.type	_ZN20SpiTemperatureSensor7InitSpiEv, %function
  62              	_ZN20SpiTemperatureSensor7InitSpiEv:
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65 0000 10B5     		push	{r4, lr}
  66 0002 0821     		movs	r1, #8
  67 0004 0446     		mov	r4, r0
  68 0006 1030     		adds	r0, r0, #16
  69 0008 FFF7FEFF 		bl	sspi_master_init
  70 000c FFF7FEFF 		bl	millis
  71 0010 A061     		str	r0, [r4, #24]
  72 0012 10BD     		pop	{r4, pc}
  73              		.size	_ZN20SpiTemperatureSensor7InitSpiEv, .-_ZN20SpiTemperatureSensor7InitSpiEv
  74              		.section	.text._ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm,"ax",%progbits
  75              		.align	1
  76              		.p2align 2,,3
  77              		.global	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu softvfp
  82              		.type	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm, %function
  83              	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm:
  84              		@ args = 0, pretend = 0, frame = 16
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  87 0004 84B0     		sub	sp, sp, #16
  88 0006 1E46     		mov	r6, r3
  89 0008 8846     		mov	r8, r1
  90 000a 1746     		mov	r7, r2
  91 000c 0446     		mov	r4, r0
  92 000e FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
  93 0012 3222     		movs	r2, #50
  94 0014 0146     		mov	r1, r0
  95 0016 02A8     		add	r0, sp, #8
  96 0018 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
  97 001c 9DF80C30 		ldrb	r3, [sp, #12]	@ zero_extendqisi2
  98 0020 33B9     		cbnz	r3, .L8
  99 0022 02A8     		add	r0, sp, #8
 100 0024 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 101 0028 0820     		movs	r0, #8
 102 002a 04B0     		add	sp, sp, #16
 103              		@ sp needed
 104 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 105              	.L8:
 106 0030 1C25     		movs	r5, #28
 107 0032 1034     		adds	r4, r4, #16
 108 0034 2046     		mov	r0, r4
 109 0036 FFF7FEFF 		bl	sspi_master_setup_device
 110 003a 2B46     		mov	r3, r5
 111              		.syntax unified
 112              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 113              		L_94_delayMicroseconds:
 114 003c 013B     		subs   r3, #1
ARM GAS  /tmp/ccsL2lHH.s 			page 3


 115 003e FDD1     		bne    L_94_delayMicroseconds
 116              	
 117              	@ 0 "" 2
 118              		.thumb
 119              		.syntax unified
 120 0040 2046     		mov	r0, r4
 121 0042 FFF7FEFF 		bl	sspi_select_device
 122 0046 2B46     		mov	r3, r5
 123              		.syntax unified
 124              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 125              		L_98_delayMicroseconds:
 126 0048 013B     		subs   r3, #1
 127 004a FDD1     		bne    L_98_delayMicroseconds
 128              	
 129              	@ 0 "" 2
 130              		.thumb
 131              		.syntax unified
 132 004c 4046     		mov	r0, r8
 133 004e 6946     		mov	r1, sp
 134 0050 3A46     		mov	r2, r7
 135 0052 FFF7FEFF 		bl	sspi_transceive_packet
 136 0056 2B46     		mov	r3, r5
 137 0058 8046     		mov	r8, r0
 138              		.syntax unified
 139              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 140              		L_105_delayMicroseconds:
 141 005a 013B     		subs   r3, #1
 142 005c FDD1     		bne    L_105_delayMicroseconds
 143              	
 144              	@ 0 "" 2
 145              		.thumb
 146              		.syntax unified
 147 005e 2046     		mov	r0, r4
 148 0060 FFF7FEFF 		bl	sspi_deselect_device
 149              		.syntax unified
 150              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 151              		L_108_delayMicroseconds:
 152 0064 013D     		subs   r5, #1
 153 0066 FDD1     		bne    L_108_delayMicroseconds
 154              	
 155              	@ 0 "" 2
 156              		.thumb
 157              		.syntax unified
 158 0068 02A8     		add	r0, sp, #8
 159 006a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 160 006e B8F1000F 		cmp	r8, #0
 161 0072 03D0     		beq	.L17
 162 0074 0520     		movs	r0, #5
 163 0076 04B0     		add	sp, sp, #16
 164              		@ sp needed
 165 0078 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 166              	.L17:
 167 007c 9DF80010 		ldrb	r1, [sp]	@ zero_extendqisi2
 168 0080 012F     		cmp	r7, #1
 169 0082 3160     		str	r1, [r6]
 170 0084 0AD9     		bls	.L12
 171 0086 0DEB0702 		add	r2, sp, r7
ARM GAS  /tmp/ccsL2lHH.s 			page 4


 172 008a 0DF10103 		add	r3, sp, #1
 173              	.L11:
 174 008e 13F8010B 		ldrb	r0, [r3], #1	@ zero_extendqisi2
 175 0092 9342     		cmp	r3, r2
 176 0094 40EA0121 		orr	r1, r0, r1, lsl #8
 177 0098 F9D1     		bne	.L11
 178 009a 3160     		str	r1, [r6]
 179              	.L12:
 180 009c 0020     		movs	r0, #0
 181 009e 04B0     		add	sp, sp, #16
 182              		@ sp needed
 183 00a0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 184              		.size	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm, .-_ZNK20SpiTemperatureSensor16DoSpiTran
 185              		.weak	_ZTV20SpiTemperatureSensor
 186              		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 187              		.align	2
 188              		.type	_ZTV20SpiTemperatureSensor, %object
 189              		.size	_ZTV20SpiTemperatureSensor, 28
 190              	_ZTV20SpiTemperatureSensor:
 191 0000 00000000 		.word	0
 192 0004 00000000 		.word	0
 193 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 194 000c 00000000 		.word	__cxa_pure_virtual
 195 0010 00000000 		.word	__cxa_pure_virtual
 196 0014 00000000 		.word	0
 197 0018 00000000 		.word	0
 198              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 199              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 200              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 201              	_ZL28cpu_irq_prev_interrupt_state:
 202 0000 00       		.space	1
 203              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 204              		.align	2
 205              		.type	_ZL32cpu_irq_critical_section_counter, %object
 206              		.size	_ZL32cpu_irq_critical_section_counter, 4
 207              	_ZL32cpu_irq_critical_section_counter:
 208 0000 00000000 		.space	4
 209              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 210              		.align	2
 211              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 212              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 213              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 214 0000 00000000 		.space	4
 215              		.section	.rodata._ZL19SpiTempSensorCsPins,"a",%progbits
 216              		.align	2
 217              		.set	.LANCHOR0,. + 0
 218              		.type	_ZL19SpiTempSensorCsPins, %object
 219              		.size	_ZL19SpiTempSensorCsPins, 2
 220              	_ZL19SpiTempSensorCsPins:
 221 0000 26       		.byte	38
 222 0001 24       		.byte	36
 223              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
