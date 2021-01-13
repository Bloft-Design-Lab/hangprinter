ARM GAS  /tmp/cc9f2Wqq.s 			page 1


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
  13              		.file	"FirmwareUpdater.cpp"
  14              		.section	.text._ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef, %function
  23              	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 38B5     		push	{r3, r4, r5, lr}
  27 0002 00F00A03 		and	r3, r0, #10
  28 0006 0A2B     		cmp	r3, #10
  29 0008 0D46     		mov	r5, r1
  30 000a 16D0     		beq	.L8
  31 000c 8307     		lsls	r3, r0, #30
  32 000e 02D4     		bmi	.L4
  33              	.L5:
  34 0010 0124     		movs	r4, #1
  35 0012 2046     		mov	r0, r4
  36 0014 38BD     		pop	{r3, r4, r5, pc}
  37              	.L4:
  38 0016 0C4B     		ldr	r3, .L9
  39 0018 0C4A     		ldr	r2, .L9+4
  40 001a 1B68     		ldr	r3, [r3]	@ unaligned
  41 001c 0C49     		ldr	r1, .L9+8
  42 001e D3F8B409 		ldr	r0, [r3, #2484]
  43 0022 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
  44 0026 0446     		mov	r4, r0
  45 0028 0028     		cmp	r0, #0
  46 002a F1D1     		bne	.L5
  47 002c 2846     		mov	r0, r5
  48 002e 074A     		ldr	r2, .L9+4
  49 0030 0849     		ldr	r1, .L9+12
  50 0032 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
  51 0036 2046     		mov	r0, r4
  52 0038 38BD     		pop	{r3, r4, r5, pc}
  53              	.L8:
  54 003a 0846     		mov	r0, r1
  55 003c 0024     		movs	r4, #0
  56 003e 0649     		ldr	r1, .L9+16
  57 0040 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
ARM GAS  /tmp/cc9f2Wqq.s 			page 2


  58 0044 2046     		mov	r0, r4
  59 0046 38BD     		pop	{r3, r4, r5, pc}
  60              	.L10:
  61              		.align	2
  62              	.L9:
  63 0048 00000000 		.word	reprap
  64 004c 30000000 		.word	.LC1
  65 0050 44000000 		.word	.LC2
  66 0054 4C000000 		.word	.LC3
  67 0058 00000000 		.word	.LC0
  68              		.size	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef, .-_ZN15FirmwareUpdater
  69              		.section	.text._ZN15FirmwareUpdater7IsReadyEv,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	_ZN15FirmwareUpdater7IsReadyEv
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	_ZN15FirmwareUpdater7IsReadyEv, %function
  78              	_ZN15FirmwareUpdater7IsReadyEv:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81 0000 08B5     		push	{r3, lr}
  82 0002 054B     		ldr	r3, .L14
  83 0004 5868     		ldr	r0, [r3, #4]
  84 0006 FFF7FEFF 		bl	_ZNK7Network15GetWifiUploaderEv
  85 000a 18B1     		cbz	r0, .L12
  86 000c BDE80840 		pop	{r3, lr}
  87 0010 FFF7FEBF 		b	_ZNK20WifiFirmwareUploader7IsReadyEv
  88              	.L12:
  89 0014 0120     		movs	r0, #1
  90 0016 08BD     		pop	{r3, pc}
  91              	.L15:
  92              		.align	2
  93              	.L14:
  94 0018 00000000 		.word	reprap
  95              		.size	_ZN15FirmwareUpdater7IsReadyEv, .-_ZN15FirmwareUpdater7IsReadyEv
  96              		.section	.text._ZN15FirmwareUpdater12UpdateModuleEj,"ax",%progbits
  97              		.align	1
  98              		.p2align 2,,3
  99              		.global	_ZN15FirmwareUpdater12UpdateModuleEj
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu fpv4-sp-d16
 104              		.type	_ZN15FirmwareUpdater12UpdateModuleEj, %function
 105              	_ZN15FirmwareUpdater12UpdateModuleEj:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108 0000 70B5     		push	{r4, r5, r6, lr}
 109 0002 0E4C     		ldr	r4, .L26
 110 0004 0546     		mov	r5, r0
 111 0006 2068     		ldr	r0, [r4]
 112 0008 FFF7FEFF 		bl	_ZNK8Platform10IsDuetWiFiEv
 113 000c 48B1     		cbz	r0, .L16
 114 000e 012D     		cmp	r5, #1
ARM GAS  /tmp/cc9f2Wqq.s 			page 3


 115 0010 08D0     		beq	.L19
 116 0012 032D     		cmp	r5, #3
 117 0014 05D1     		bne	.L16
 118 0016 6068     		ldr	r0, [r4, #4]
 119 0018 0121     		movs	r1, #1
 120 001a BDE87040 		pop	{r4, r5, r6, lr}
 121 001e FFF7FEBF 		b	_ZN7Network18ResetWiFiForUploadEb
 122              	.L16:
 123 0022 70BD     		pop	{r4, r5, r6, pc}
 124              	.L19:
 125 0024 6068     		ldr	r0, [r4, #4]
 126 0026 FFF7FEFF 		bl	_ZNK7Network15GetWifiUploaderEv
 127 002a 0028     		cmp	r0, #0
 128 002c F9D0     		beq	.L16
 129 002e 0023     		movs	r3, #0
 130 0030 034A     		ldr	r2, .L26+4
 131 0032 0449     		ldr	r1, .L26+8
 132 0034 BDE87040 		pop	{r4, r5, r6, lr}
 133 0038 FFF7FEBF 		b	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m
 134              	.L27:
 135              		.align	2
 136              	.L26:
 137 003c 00000000 		.word	reprap
 138 0040 44000000 		.word	.LC2
 139 0044 30000000 		.word	.LC1
 140              		.size	_ZN15FirmwareUpdater12UpdateModuleEj, .-_ZN15FirmwareUpdater12UpdateModuleEj
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
 152              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 153              		.align	2
 154              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 155              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 156              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 157 0000 00000000 		.space	4
 158              		.section	.rodata._ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef.str1.4,"aMS"
 159              		.align	2
 160              	.LC0:
 161 0000 496E7661 		.ascii	"Invalid combination of firmware update modules\000"
 161      6C696420 
 161      636F6D62 
 161      696E6174 
 161      696F6E20 
 162 002f 00       		.space	1
 163              	.LC1:
 164 0030 44756574 		.ascii	"DuetWiFiServer.bin\000"
 164      57694669 
 164      53657276 
 164      65722E62 
ARM GAS  /tmp/cc9f2Wqq.s 			page 4


 164      696E00
 165 0043 00       		.space	1
 166              	.LC2:
 167 0044 303A2F73 		.ascii	"0:/sys/\000"
 167      79732F00 
 168              	.LC3:
 169 004c 46696C65 		.ascii	"File %s not found\000"
 169      20257320 
 169      6E6F7420 
 169      666F756E 
 169      6400
 170              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
