ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb1zxTP.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN20SpiTemperatureSensorC2EjPKcjhm,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN20SpiTemperatureSensorC2EjPKcjhm
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN20SpiTemperatureSensorC2EjPKcjhm, %function
  24              	_ZN20SpiTemperatureSensorC2EjPKcjhm:
  25              		@ args = 8, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  28 0002 079D     		ldr	r5, [sp, #28]
  29 0004 9DF81870 		ldrb	r7, [sp, #24]	@ zero_extendqisi2
  30 0008 0446     		mov	r4, r0
  31 000a 1E46     		mov	r6, r3
  32 000c FFF7FEFF 		bl	_ZN17TemperatureSensorC2EjPKc
  33 0010 074B     		ldr	r3, .L4
  34 0012 0848     		ldr	r0, .L4+4
  35 0014 9E5D     		ldrb	r6, [r3, r6]	@ zero_extendqisi2
  36 0016 E774     		strb	r7, [r4, #19]
  37 0018 0022     		movs	r2, #0
  38 001a 0021     		movs	r1, #0
  39 001c 0B23     		movs	r3, #11
  40 001e 2674     		strb	r6, [r4, #16]
  41 0020 2060     		str	r0, [r4]
  42 0022 6561     		str	r5, [r4, #20]
  43 0024 6174     		strb	r1, [r4, #17]
  44 0026 E261     		str	r2, [r4, #28]	@ float
  45 0028 84F82030 		strb	r3, [r4, #32]
  46 002c 2046     		mov	r0, r4
  47 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  48              	.L5:
  49              		.align	2
  50              	.L4:
  51 0030 00000000 		.word	.LANCHOR0
  52 0034 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  53              		.size	_ZN20SpiTemperatureSensorC2EjPKcjhm, .-_ZN20SpiTemperatureSensorC2EjPKcjhm
  54              		.global	_ZN20SpiTemperatureSensorC1EjPKcjhm
  55              		.thumb_set _ZN20SpiTemperatureSensorC1EjPKcjhm,_ZN20SpiTemperatureSensorC2EjPKcjhm
  56              		.section	.text._ZN20SpiTemperatureSensor7InitSpiEv,"ax",%progbits
  57              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb1zxTP.s 			page 2


  58              		.p2align 2,,3
  59              		.global	_ZN20SpiTemperatureSensor7InitSpiEv
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu fpv4-sp-d16
  64              		.type	_ZN20SpiTemperatureSensor7InitSpiEv, %function
  65              	_ZN20SpiTemperatureSensor7InitSpiEv:
  66              		@ args = 0, pretend = 0, frame = 0
  67              		@ frame_needed = 0, uses_anonymous_args = 0
  68 0000 10B5     		push	{r4, lr}
  69 0002 0821     		movs	r1, #8
  70 0004 0446     		mov	r4, r0
  71 0006 1030     		adds	r0, r0, #16
  72 0008 FFF7FEFF 		bl	sspi_master_init
  73 000c FFF7FEFF 		bl	millis
  74 0010 A061     		str	r0, [r4, #24]
  75 0012 10BD     		pop	{r4, pc}
  76              		.size	_ZN20SpiTemperatureSensor7InitSpiEv, .-_ZN20SpiTemperatureSensor7InitSpiEv
  77              		.section	.text._ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm,"ax",%progbits
  78              		.align	1
  79              		.p2align 2,,3
  80              		.global	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm, %function
  86              	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm:
  87              		@ args = 0, pretend = 0, frame = 16
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  90 0004 85B0     		sub	sp, sp, #20
  91 0006 1C46     		mov	r4, r3
  92 0008 0F46     		mov	r7, r1
  93 000a 1546     		mov	r5, r2
  94 000c 8046     		mov	r8, r0
  95 000e FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
  96 0012 3222     		movs	r2, #50
  97 0014 0146     		mov	r1, r0
  98 0016 02A8     		add	r0, sp, #8
  99 0018 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 100 001c 9DF80C30 		ldrb	r3, [sp, #12]	@ zero_extendqisi2
 101 0020 002B     		cmp	r3, #0
 102 0022 4AD0     		beq	.L16
 103 0024 08F11008 		add	r8, r8, #16
 104 0028 DFF8A090 		ldr	r9, .L17+4
 105 002c 264E     		ldr	r6, .L17
 106 002e 4046     		mov	r0, r8
 107 0030 FFF7FEFF 		bl	sspi_master_setup_device
 108 0034 D9F80030 		ldr	r3, [r9]
 109 0038 A6FB0323 		umull	r2, r3, r6, r3
 110 003c 9B0C     		lsrs	r3, r3, #18
 111              		.syntax unified
 112              	@ 88 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
 113              		L_87_delayMicroseconds:
 114 003e 013B     		subs   r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb1zxTP.s 			page 3


 115 0040 FDD1     		bne    L_87_delayMicroseconds
 116              	
 117              	@ 0 "" 2
 118              		.thumb
 119              		.syntax unified
 120 0042 4046     		mov	r0, r8
 121 0044 FFF7FEFF 		bl	sspi_select_device
 122 0048 D9F80030 		ldr	r3, [r9]
 123 004c A6FB0323 		umull	r2, r3, r6, r3
 124 0050 9B0C     		lsrs	r3, r3, #18
 125              		.syntax unified
 126              	@ 88 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
 127              		L_93_delayMicroseconds:
 128 0052 013B     		subs   r3, #1
 129 0054 FDD1     		bne    L_93_delayMicroseconds
 130              	
 131              	@ 0 "" 2
 132              		.thumb
 133              		.syntax unified
 134 0056 2A46     		mov	r2, r5
 135 0058 3846     		mov	r0, r7
 136 005a 6946     		mov	r1, sp
 137 005c FFF7FEFF 		bl	sspi_transceive_packet
 138 0060 D9F80030 		ldr	r3, [r9]
 139 0064 A6FB0323 		umull	r2, r3, r6, r3
 140 0068 0746     		mov	r7, r0
 141 006a 9B0C     		lsrs	r3, r3, #18
 142              		.syntax unified
 143              	@ 88 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
 144              		L_102_delayMicroseconds:
 145 006c 013B     		subs   r3, #1
 146 006e FDD1     		bne    L_102_delayMicroseconds
 147              	
 148              	@ 0 "" 2
 149              		.thumb
 150              		.syntax unified
 151 0070 4046     		mov	r0, r8
 152 0072 FFF7FEFF 		bl	sspi_deselect_device
 153 0076 D9F80030 		ldr	r3, [r9]
 154 007a A6FB0323 		umull	r2, r3, r6, r3
 155 007e 9B0C     		lsrs	r3, r3, #18
 156              		.syntax unified
 157              	@ 88 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
 158              		L_108_delayMicroseconds:
 159 0080 013B     		subs   r3, #1
 160 0082 FDD1     		bne    L_108_delayMicroseconds
 161              	
 162              	@ 0 "" 2
 163              		.thumb
 164              		.syntax unified
 165 0084 02A8     		add	r0, sp, #8
 166 0086 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 167 008a 97B9     		cbnz	r7, .L13
 168 008c 9DF80010 		ldrb	r1, [sp]	@ zero_extendqisi2
 169 0090 2160     		str	r1, [r4]
 170 0092 012D     		cmp	r5, #1
 171 0094 09D9     		bls	.L11
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb1zxTP.s 			page 4


 172 0096 6D44     		add	r5, r5, sp
 173 0098 0DF10103 		add	r3, sp, #1
 174              	.L12:
 175 009c 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 176 00a0 9D42     		cmp	r5, r3
 177 00a2 42EA0121 		orr	r1, r2, r1, lsl #8
 178 00a6 F9D1     		bne	.L12
 179 00a8 2160     		str	r1, [r4]
 180              	.L11:
 181 00aa 0020     		movs	r0, #0
 182 00ac 05B0     		add	sp, sp, #20
 183              		@ sp needed
 184 00ae BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 185              	.L13:
 186 00b2 0520     		movs	r0, #5
 187 00b4 05B0     		add	sp, sp, #20
 188              		@ sp needed
 189 00b6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 190              	.L16:
 191 00ba 02A8     		add	r0, sp, #8
 192 00bc FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 193 00c0 0820     		movs	r0, #8
 194 00c2 05B0     		add	sp, sp, #20
 195              		@ sp needed
 196 00c4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 197              	.L18:
 198              		.align	2
 199              	.L17:
 200 00c8 819F5E16 		.word	375299969
 201 00cc 00000000 		.word	SystemCoreClock
 202              		.size	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm, .-_ZNK20SpiTemperatureSensor16DoSpiTran
 203              		.weak	_ZTV20SpiTemperatureSensor
 204              		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 205              		.align	2
 206              		.type	_ZTV20SpiTemperatureSensor, %object
 207              		.size	_ZTV20SpiTemperatureSensor, 28
 208              	_ZTV20SpiTemperatureSensor:
 209 0000 00000000 		.word	0
 210 0004 00000000 		.word	0
 211 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 212 000c 00000000 		.word	__cxa_pure_virtual
 213 0010 00000000 		.word	__cxa_pure_virtual
 214 0014 00000000 		.word	0
 215 0018 00000000 		.word	0
 216              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 217              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 218              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 219              	_ZL28cpu_irq_prev_interrupt_state:
 220 0000 00       		.space	1
 221              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 222              		.align	2
 223              		.type	_ZL32cpu_irq_critical_section_counter, %object
 224              		.size	_ZL32cpu_irq_critical_section_counter, 4
 225              	_ZL32cpu_irq_critical_section_counter:
 226 0000 00000000 		.space	4
 227              		.section	.rodata._ZL19SpiTempSensorCsPins,"a",%progbits
 228              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb1zxTP.s 			page 5


 229              		.set	.LANCHOR0,. + 0
 230              		.type	_ZL19SpiTempSensorCsPins, %object
 231              		.size	_ZL19SpiTempSensorCsPins, 8
 232              	_ZL19SpiTempSensorCsPins:
 233 0000 1C       		.byte	28
 234 0001 32       		.byte	50
 235 0002 33       		.byte	51
 236 0003 34       		.byte	52
 237 0004 18       		.byte	24
 238 0005 61       		.byte	97
 239 0006 62       		.byte	98
 240 0007 63       		.byte	99
 241              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
