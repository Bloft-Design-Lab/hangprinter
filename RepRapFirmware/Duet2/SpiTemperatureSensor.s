ARM GAS  /tmp/cc25SJuo.s 			page 1


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
  13              		.file	"SpiTemperatureSensor.cpp"
  14              		.section	.text._ZN20SpiTemperatureSensorC2EjPKcjhm,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN20SpiTemperatureSensorC2EjPKcjhm
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN20SpiTemperatureSensorC2EjPKcjhm, %function
  23              	_ZN20SpiTemperatureSensorC2EjPKcjhm:
  24              		@ args = 8, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  27 0002 079D     		ldr	r5, [sp, #28]
  28 0004 9DF81870 		ldrb	r7, [sp, #24]	@ zero_extendqisi2
  29 0008 0446     		mov	r4, r0
  30 000a 1E46     		mov	r6, r3
  31 000c FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
  32 0010 074B     		ldr	r3, .L4
  33 0012 0848     		ldr	r0, .L4+4
  34 0014 9E5D     		ldrb	r6, [r3, r6]	@ zero_extendqisi2
  35 0016 E774     		strb	r7, [r4, #19]
  36 0018 0022     		movs	r2, #0
  37 001a 0021     		movs	r1, #0
  38 001c 0B23     		movs	r3, #11
  39 001e 2674     		strb	r6, [r4, #16]
  40 0020 2060     		str	r0, [r4]
  41 0022 6561     		str	r5, [r4, #20]
  42 0024 6174     		strb	r1, [r4, #17]
  43 0026 E261     		str	r2, [r4, #28]	@ float
  44 0028 84F82030 		strb	r3, [r4, #32]
  45 002c 2046     		mov	r0, r4
  46 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  47              	.L5:
  48              		.align	2
  49              	.L4:
  50 0030 00000000 		.word	.LANCHOR0
  51 0034 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  52              		.size	_ZN20SpiTemperatureSensorC2EjPKcjhm, .-_ZN20SpiTemperatureSensorC2EjPKcjhm
  53              		.global	_ZN20SpiTemperatureSensorC1EjPKcjhm
  54              		.thumb_set _ZN20SpiTemperatureSensorC1EjPKcjhm,_ZN20SpiTemperatureSensorC2EjPKcjhm
  55              		.section	.text._ZN20SpiTemperatureSensor7InitSpiEv,"ax",%progbits
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  /tmp/cc25SJuo.s 			page 2


  58              		.global	_ZN20SpiTemperatureSensor7InitSpiEv
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu fpv4-sp-d16
  63              		.type	_ZN20SpiTemperatureSensor7InitSpiEv, %function
  64              	_ZN20SpiTemperatureSensor7InitSpiEv:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67 0000 10B5     		push	{r4, lr}
  68 0002 0821     		movs	r1, #8
  69 0004 0446     		mov	r4, r0
  70 0006 1030     		adds	r0, r0, #16
  71 0008 FFF7FEFF 		bl	sspi_master_init
  72 000c FFF7FEFF 		bl	millis
  73 0010 A061     		str	r0, [r4, #24]
  74 0012 10BD     		pop	{r4, pc}
  75              		.size	_ZN20SpiTemperatureSensor7InitSpiEv, .-_ZN20SpiTemperatureSensor7InitSpiEv
  76              		.section	.text._ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm,"ax",%progbits
  77              		.align	1
  78              		.p2align 2,,3
  79              		.global	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
  80              		.syntax unified
  81              		.thumb
  82              		.thumb_func
  83              		.fpu fpv4-sp-d16
  84              		.type	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm, %function
  85              	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm:
  86              		@ args = 0, pretend = 0, frame = 16
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  89 0004 84B0     		sub	sp, sp, #16
  90 0006 1E46     		mov	r6, r3
  91 0008 8846     		mov	r8, r1
  92 000a 1746     		mov	r7, r2
  93 000c 0546     		mov	r5, r0
  94 000e FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
  95 0012 3222     		movs	r2, #50
  96 0014 0146     		mov	r1, r0
  97 0016 02A8     		add	r0, sp, #8
  98 0018 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
  99 001c 9DF80C30 		ldrb	r3, [sp, #12]	@ zero_extendqisi2
 100 0020 002B     		cmp	r3, #0
 101 0022 39D0     		beq	.L16
 102 0024 1035     		adds	r5, r5, #16
 103 0026 2846     		mov	r0, r5
 104 0028 2824     		movs	r4, #40
 105 002a FFF7FEFF 		bl	sspi_master_setup_device
 106 002e 2346     		mov	r3, r4
 107              		.syntax unified
 108              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 109              		L_84_delayMicroseconds:
 110 0030 013B     		subs   r3, #1
 111 0032 FDD1     		bne    L_84_delayMicroseconds
 112              	
 113              	@ 0 "" 2
 114              		.thumb
ARM GAS  /tmp/cc25SJuo.s 			page 3


 115              		.syntax unified
 116 0034 2846     		mov	r0, r5
 117 0036 FFF7FEFF 		bl	sspi_select_device
 118 003a 2346     		mov	r3, r4
 119              		.syntax unified
 120              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 121              		L_88_delayMicroseconds:
 122 003c 013B     		subs   r3, #1
 123 003e FDD1     		bne    L_88_delayMicroseconds
 124              	
 125              	@ 0 "" 2
 126              		.thumb
 127              		.syntax unified
 128 0040 4046     		mov	r0, r8
 129 0042 6946     		mov	r1, sp
 130 0044 3A46     		mov	r2, r7
 131 0046 FFF7FEFF 		bl	sspi_transceive_packet
 132 004a 2346     		mov	r3, r4
 133 004c 8046     		mov	r8, r0
 134              		.syntax unified
 135              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 136              		L_95_delayMicroseconds:
 137 004e 013B     		subs   r3, #1
 138 0050 FDD1     		bne    L_95_delayMicroseconds
 139              	
 140              	@ 0 "" 2
 141              		.thumb
 142              		.syntax unified
 143 0052 2846     		mov	r0, r5
 144 0054 FFF7FEFF 		bl	sspi_deselect_device
 145              		.syntax unified
 146              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 147              		L_98_delayMicroseconds:
 148 0058 013C     		subs   r4, #1
 149 005a FDD1     		bne    L_98_delayMicroseconds
 150              	
 151              	@ 0 "" 2
 152              		.thumb
 153              		.syntax unified
 154 005c 02A8     		add	r0, sp, #8
 155 005e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 156 0062 B8F1000F 		cmp	r8, #0
 157 0066 13D1     		bne	.L13
 158 0068 9DF80010 		ldrb	r1, [sp]	@ zero_extendqisi2
 159 006c 3160     		str	r1, [r6]
 160 006e 012F     		cmp	r7, #1
 161 0070 0AD9     		bls	.L11
 162 0072 0DEB0702 		add	r2, sp, r7
 163 0076 0DF10103 		add	r3, sp, #1
 164              	.L12:
 165 007a 13F8010B 		ldrb	r0, [r3], #1	@ zero_extendqisi2
 166 007e 9A42     		cmp	r2, r3
 167 0080 40EA0121 		orr	r1, r0, r1, lsl #8
 168 0084 F9D1     		bne	.L12
 169 0086 3160     		str	r1, [r6]
 170              	.L11:
 171 0088 0020     		movs	r0, #0
ARM GAS  /tmp/cc25SJuo.s 			page 4


 172 008a 04B0     		add	sp, sp, #16
 173              		@ sp needed
 174 008c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 175              	.L13:
 176 0090 0520     		movs	r0, #5
 177 0092 04B0     		add	sp, sp, #16
 178              		@ sp needed
 179 0094 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 180              	.L16:
 181 0098 02A8     		add	r0, sp, #8
 182 009a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 183 009e 0820     		movs	r0, #8
 184 00a0 04B0     		add	sp, sp, #16
 185              		@ sp needed
 186 00a2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 187              		.size	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm, .-_ZNK20SpiTemperatureSensor16DoSpiTran
 188              		.weak	_ZTV20SpiTemperatureSensor
 189 00a6 00BF     		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 190              		.align	2
 191              		.type	_ZTV20SpiTemperatureSensor, %object
 192              		.size	_ZTV20SpiTemperatureSensor, 28
 193              	_ZTV20SpiTemperatureSensor:
 194 0000 00000000 		.word	0
 195 0004 00000000 		.word	0
 196 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 197 000c 00000000 		.word	__cxa_pure_virtual
 198 0010 00000000 		.word	__cxa_pure_virtual
 199 0014 00000000 		.word	0
 200 0018 00000000 		.word	0
 201              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 202              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 203              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 204              	_ZL28cpu_irq_prev_interrupt_state:
 205 0000 00       		.space	1
 206              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 207              		.align	2
 208              		.type	_ZL32cpu_irq_critical_section_counter, %object
 209              		.size	_ZL32cpu_irq_critical_section_counter, 4
 210              	_ZL32cpu_irq_critical_section_counter:
 211 0000 00000000 		.space	4
 212              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 213              		.align	2
 214              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 215              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 216              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 217 0000 00000000 		.space	4
 218              		.section	.rodata._ZL19SpiTempSensorCsPins,"a",%progbits
 219              		.align	2
 220              		.set	.LANCHOR0,. + 0
 221              		.type	_ZL19SpiTempSensorCsPins, %object
 222              		.size	_ZL19SpiTempSensorCsPins, 8
 223              	_ZL19SpiTempSensorCsPins:
 224 0000 1C       		.byte	28
 225 0001 32       		.byte	50
 226 0002 33       		.byte	51
 227 0003 34       		.byte	52
 228 0004 18       		.byte	24
ARM GAS  /tmp/cc25SJuo.s 			page 5


 229 0005 61       		.byte	97
 230 0006 62       		.byte	98
 231 0007 63       		.byte	99
 232              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
