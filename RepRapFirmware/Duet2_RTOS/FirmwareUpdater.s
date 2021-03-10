ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7tamyd.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef, %function
  24              	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 38B5     		push	{r3, r4, r5, lr}
  28 0002 00F00A03 		and	r3, r0, #10
  29 0006 0A2B     		cmp	r3, #10
  30 0008 0D46     		mov	r5, r1
  31 000a 16D0     		beq	.L8
  32 000c 8307     		lsls	r3, r0, #30
  33 000e 02D4     		bmi	.L4
  34              	.L5:
  35 0010 0124     		movs	r4, #1
  36 0012 2046     		mov	r0, r4
  37 0014 38BD     		pop	{r3, r4, r5, pc}
  38              	.L4:
  39 0016 0C4B     		ldr	r3, .L9
  40 0018 0C4A     		ldr	r2, .L9+4
  41 001a 5B68     		ldr	r3, [r3, #4]	@ unaligned
  42 001c 0C49     		ldr	r1, .L9+8
  43 001e D3F8DC0B 		ldr	r0, [r3, #3036]
  44 0022 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
  45 0026 0446     		mov	r4, r0
  46 0028 0028     		cmp	r0, #0
  47 002a F1D1     		bne	.L5
  48 002c 2846     		mov	r0, r5
  49 002e 074A     		ldr	r2, .L9+4
  50 0030 0849     		ldr	r1, .L9+12
  51 0032 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
  52 0036 2046     		mov	r0, r4
  53 0038 38BD     		pop	{r3, r4, r5, pc}
  54              	.L8:
  55 003a 0846     		mov	r0, r1
  56 003c 0024     		movs	r4, #0
  57 003e 0649     		ldr	r1, .L9+16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7tamyd.s 			page 2


  58 0040 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
  59 0044 2046     		mov	r0, r4
  60 0046 38BD     		pop	{r3, r4, r5, pc}
  61              	.L10:
  62              		.align	2
  63              	.L9:
  64 0048 00000000 		.word	reprap
  65 004c 30000000 		.word	.LC1
  66 0050 44000000 		.word	.LC2
  67 0054 4C000000 		.word	.LC3
  68 0058 00000000 		.word	.LC0
  69              		.size	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef, .-_ZN15FirmwareUpdater
  70              		.section	.text._ZN15FirmwareUpdater7IsReadyEv,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	_ZN15FirmwareUpdater7IsReadyEv
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	_ZN15FirmwareUpdater7IsReadyEv, %function
  79              	_ZN15FirmwareUpdater7IsReadyEv:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82 0000 08B5     		push	{r3, lr}
  83 0002 054B     		ldr	r3, .L14
  84 0004 9868     		ldr	r0, [r3, #8]
  85 0006 FFF7FEFF 		bl	_ZNK7Network15GetWifiUploaderEv
  86 000a 18B1     		cbz	r0, .L12
  87 000c BDE80840 		pop	{r3, lr}
  88 0010 FFF7FEBF 		b	_ZNK20WifiFirmwareUploader7IsReadyEv
  89              	.L12:
  90 0014 0120     		movs	r0, #1
  91 0016 08BD     		pop	{r3, pc}
  92              	.L15:
  93              		.align	2
  94              	.L14:
  95 0018 00000000 		.word	reprap
  96              		.size	_ZN15FirmwareUpdater7IsReadyEv, .-_ZN15FirmwareUpdater7IsReadyEv
  97              		.section	.text._ZN15FirmwareUpdater12UpdateModuleEj,"ax",%progbits
  98              		.align	1
  99              		.p2align 2,,3
 100              		.global	_ZN15FirmwareUpdater12UpdateModuleEj
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	_ZN15FirmwareUpdater12UpdateModuleEj, %function
 106              	_ZN15FirmwareUpdater12UpdateModuleEj:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109 0000 70B5     		push	{r4, r5, r6, lr}
 110 0002 0E4C     		ldr	r4, .L26
 111 0004 0546     		mov	r5, r0
 112 0006 6068     		ldr	r0, [r4, #4]
 113 0008 FFF7FEFF 		bl	_ZNK8Platform10IsDuetWiFiEv
 114 000c 48B1     		cbz	r0, .L16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7tamyd.s 			page 3


 115 000e 012D     		cmp	r5, #1
 116 0010 08D0     		beq	.L19
 117 0012 032D     		cmp	r5, #3
 118 0014 05D1     		bne	.L16
 119 0016 A068     		ldr	r0, [r4, #8]
 120 0018 0121     		movs	r1, #1
 121 001a BDE87040 		pop	{r4, r5, r6, lr}
 122 001e FFF7FEBF 		b	_ZN7Network18ResetWiFiForUploadEb
 123              	.L16:
 124 0022 70BD     		pop	{r4, r5, r6, pc}
 125              	.L19:
 126 0024 A068     		ldr	r0, [r4, #8]
 127 0026 FFF7FEFF 		bl	_ZNK7Network15GetWifiUploaderEv
 128 002a 0028     		cmp	r0, #0
 129 002c F9D0     		beq	.L16
 130 002e 0023     		movs	r3, #0
 131 0030 034A     		ldr	r2, .L26+4
 132 0032 0449     		ldr	r1, .L26+8
 133 0034 BDE87040 		pop	{r4, r5, r6, lr}
 134 0038 FFF7FEBF 		b	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m
 135              	.L27:
 136              		.align	2
 137              	.L26:
 138 003c 00000000 		.word	reprap
 139 0040 44000000 		.word	.LC2
 140 0044 30000000 		.word	.LC1
 141              		.size	_ZN15FirmwareUpdater12UpdateModuleEj, .-_ZN15FirmwareUpdater12UpdateModuleEj
 142              		.section	.text.startup._GLOBAL__sub_I__ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9S
 143              		.align	1
 144              		.p2align 2,,3
 145              		.syntax unified
 146              		.thumb
 147              		.thumb_func
 148              		.fpu fpv4-sp-d16
 149              		.type	_GLOBAL__sub_I__ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef, %functi
 150              	_GLOBAL__sub_I__ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153              		@ link register save eliminated.
 154 0000 0149     		ldr	r1, .L29
 155 0002 0248     		ldr	r0, .L29+4
 156 0004 FFF7FEBF 		b	_ZN9IPAddress5SetV4EPKh
 157              	.L30:
 158              		.align	2
 159              	.L29:
 160 0008 00000000 		.word	.LANCHOR0
 161 000c 00000000 		.word	.LANCHOR1
 162              		.size	_GLOBAL__sub_I__ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef, .-_GLOB
 163              		.section	.init_array,"aw",%init_array
 164              		.align	2
 165 0000 00000000 		.word	_GLOBAL__sub_I__ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef(target1)
 166              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 167              		.align	2
 168              		.set	.LANCHOR1,. + 0
 169              		.type	_ZL14DefaultNetMask, %object
 170              		.size	_ZL14DefaultNetMask, 4
 171              	_ZL14DefaultNetMask:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7tamyd.s 			page 4


 172 0000 00000000 		.space	4
 173              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 174              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 175              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 176              	_ZL28cpu_irq_prev_interrupt_state:
 177 0000 00       		.space	1
 178              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 179              		.align	2
 180              		.type	_ZL32cpu_irq_critical_section_counter, %object
 181              		.size	_ZL32cpu_irq_critical_section_counter, 4
 182              	_ZL32cpu_irq_critical_section_counter:
 183 0000 00000000 		.space	4
 184              		.section	.rodata.._142,"a",%progbits
 185              		.align	2
 186              		.set	.LANCHOR0,. + 0
 187              		.type	._142, %object
 188              		.size	._142, 4
 189              	._142:
 190 0000 FF       		.byte	-1
 191 0001 FF       		.byte	-1
 192 0002 FF       		.byte	-1
 193 0003 00       		.byte	0
 194              		.section	.rodata._ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEhRK9StringRef.str1.4,"aMS"
 195              		.align	2
 196              	.LC0:
 197 0000 496E7661 		.ascii	"Invalid combination of firmware update modules\000"
 197      6C696420 
 197      636F6D62 
 197      696E6174 
 197      696F6E20 
 198 002f 00       		.space	1
 199              	.LC1:
 200 0030 44756574 		.ascii	"DuetWiFiServer.bin\000"
 200      57694669 
 200      53657276 
 200      65722E62 
 200      696E00
 201 0043 00       		.space	1
 202              	.LC2:
 203 0044 303A2F73 		.ascii	"0:/sys/\000"
 203      79732F00 
 204              	.LC3:
 205 004c 46696C65 		.ascii	"File %s not found\000"
 205      20257320 
 205      6E6F7420 
 205      666F756E 
 205      6400
 206              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
