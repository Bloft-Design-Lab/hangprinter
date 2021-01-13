ARM GAS  /tmp/ccP7tb9J.s 			page 1


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
  13              		.file	"ZProbeProgrammer.cpp"
  14              		.section	.text._ZN16ZProbeProgrammerC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN16ZProbeProgrammerC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN16ZProbeProgrammerC2Ev, %function
  23              	_ZN16ZProbeProgrammerC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 10B5     		push	{r4, lr}
  27 0002 0446     		mov	r4, r0
  28 0004 FFF7FEFF 		bl	_ZN9SoftTimerC1Ev
  29 0008 2046     		mov	r0, r4
  30 000a 10BD     		pop	{r4, pc}
  31              		.size	_ZN16ZProbeProgrammerC2Ev, .-_ZN16ZProbeProgrammerC2Ev
  32              		.global	_ZN16ZProbeProgrammerC1Ev
  33              		.thumb_set _ZN16ZProbeProgrammerC1Ev,_ZN16ZProbeProgrammerC2Ev
  34              		.section	.text._ZN16ZProbeProgrammer11SendProgramEPKmj,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	_ZN16ZProbeProgrammer11SendProgramEPKmj
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	_ZN16ZProbeProgrammer11SendProgramEPKmj, %function
  43              	_ZN16ZProbeProgrammer11SendProgramEPKmj:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46 0000 70B5     		push	{r4, r5, r6, lr}
  47 0002 1646     		mov	r6, r2
  48 0004 0C46     		mov	r4, r1
  49 0006 0546     		mov	r5, r0
  50 0008 FFF7FEFF 		bl	_ZN9SoftTimer14CancelCallbackEv
  51 000c 56B1     		cbz	r6, .L5
  52 000e 2146     		mov	r1, r4
  53 0010 04EB8603 		add	r3, r4, r6, lsl #2
  54 0014 05F11000 		add	r0, r5, #16
  55              	.L6:
  56 0018 51F8044B 		ldr	r4, [r1], #4
  57 001c 00F8014B 		strb	r4, [r0], #1
ARM GAS  /tmp/ccP7tb9J.s 			page 2


  58 0020 9942     		cmp	r1, r3
  59 0022 F9D1     		bne	.L6
  60              	.L5:
  61 0024 0024     		movs	r4, #0
  62 0026 C5E90664 		strd	r6, r4, [r5, #24]
  63 002a 2C62     		str	r4, [r5, #32]
  64 002c FFF7FEFF 		bl	_ZN9SoftTimer11GetTickRateEv
  65 0030 0B4A     		ldr	r2, .L12
  66 0032 0C4B     		ldr	r3, .L12+4
  67 0034 A2FB0020 		umull	r2, r0, r2, r0
  68 0038 8009     		lsrs	r0, r0, #6
  69 003a 2146     		mov	r1, r4
  70 003c 6862     		str	r0, [r5, #36]
  71 003e 1868     		ldr	r0, [r3]	@ unaligned
  72 0040 FFF7FEFF 		bl	_ZNK8Platform17SetZProbeModStateEb
  73 0044 FFF7FEFF 		bl	_ZN9SoftTimer16GetTimerTicksNowEv
  74 0048 696A     		ldr	r1, [r5, #36]
  75 004a A862     		str	r0, [r5, #40]
  76 004c 00EB4101 		add	r1, r0, r1, lsl #1
  77 0050 2B46     		mov	r3, r5
  78 0052 2846     		mov	r0, r5
  79 0054 044A     		ldr	r2, .L12+8
  80 0056 BDE87040 		pop	{r4, r5, r6, lr}
  81 005a FFF7FEBF 		b	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_
  82              	.L13:
  83 005e 00BF     		.align	2
  84              	.L12:
  85 0060 D34D6210 		.word	274877907
  86 0064 00000000 		.word	reprap
  87 0068 00000000 		.word	_ZN16ZProbeProgrammer14TimerInterruptEPvRm
  88              		.size	_ZN16ZProbeProgrammer11SendProgramEPKmj, .-_ZN16ZProbeProgrammer11SendProgramEPKmj
  89              		.section	.text._ZN16ZProbeProgrammer9InterruptERm,"ax",%progbits
  90              		.align	1
  91              		.p2align 2,,3
  92              		.global	_ZN16ZProbeProgrammer9InterruptERm
  93              		.syntax unified
  94              		.thumb
  95              		.thumb_func
  96              		.fpu fpv4-sp-d16
  97              		.type	_ZN16ZProbeProgrammer9InterruptERm, %function
  98              	_ZN16ZProbeProgrammer9InterruptERm:
  99              		@ args = 0, pretend = 0, frame = 0
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101 0000 38B5     		push	{r3, r4, r5, lr}
 102 0002 036A     		ldr	r3, [r0, #32]
 103 0004 0D46     		mov	r5, r1
 104 0006 591C     		adds	r1, r3, #1
 105 0008 0446     		mov	r4, r0
 106 000a 0162     		str	r1, [r0, #32]
 107 000c 0C2B     		cmp	r3, #12
 108 000e 3CD8     		bhi	.L15
 109 0010 DFE803F0 		tbb	[pc, r3]
 110              	.L17:
 111 0014 07       		.byte	(.L25-.L17)/2
 112 0015 3B       		.byte	(.L15-.L17)/2
 113 0016 14       		.byte	(.L18-.L17)/2
 114 0017 14       		.byte	(.L18-.L17)/2
ARM GAS  /tmp/ccP7tb9J.s 			page 3


 115 0018 14       		.byte	(.L18-.L17)/2
 116 0019 14       		.byte	(.L18-.L17)/2
 117 001a 1D       		.byte	(.L19-.L17)/2
 118 001b 25       		.byte	(.L20-.L17)/2
 119 001c 25       		.byte	(.L20-.L17)/2
 120 001d 25       		.byte	(.L20-.L17)/2
 121 001e 25       		.byte	(.L20-.L17)/2
 122 001f 2E       		.byte	(.L21-.L17)/2
 123 0020 35       		.byte	(.L22-.L17)/2
 124 0021 00       		.p2align 1
 125              	.L25:
 126 0022 0121     		movs	r1, #1
 127              	.L16:
 128 0024 204B     		ldr	r3, .L28
 129 0026 1868     		ldr	r0, [r3]
 130 0028 FFF7FEFF 		bl	_ZNK8Platform17SetZProbeModStateEb
 131 002c D4E90623 		ldrd	r2, r3, [r4, #24]
 132 0030 9342     		cmp	r3, r2
 133 0032 2CD3     		bcc	.L27
 134 0034 0020     		movs	r0, #0
 135 0036 C4E90600 		strd	r0, r0, [r4, #24]
 136 003a 38BD     		pop	{r3, r4, r5, pc}
 137              	.L18:
 138 003c C369     		ldr	r3, [r0, #28]
 139 003e C218     		adds	r2, r0, r3
 140 0040 C1F10A03 		rsb	r3, r1, #10
 141 0044 117C     		ldrb	r1, [r2, #16]	@ zero_extendqisi2
 142 0046 1941     		asrs	r1, r1, r3
 143 0048 01F00101 		and	r1, r1, #1
 144 004c EAE7     		b	.L16
 145              	.L19:
 146 004e C369     		ldr	r3, [r0, #28]
 147 0050 0344     		add	r3, r3, r0
 148 0052 197C     		ldrb	r1, [r3, #16]	@ zero_extendqisi2
 149 0054 81F01001 		eor	r1, r1, #16
 150 0058 C1F30011 		ubfx	r1, r1, #4, #1
 151 005c E2E7     		b	.L16
 152              	.L20:
 153 005e C369     		ldr	r3, [r0, #28]
 154 0060 C218     		adds	r2, r0, r3
 155 0062 C1F10B03 		rsb	r3, r1, #11
 156 0066 117C     		ldrb	r1, [r2, #16]	@ zero_extendqisi2
 157 0068 1941     		asrs	r1, r1, r3
 158 006a 01F00101 		and	r1, r1, #1
 159 006e D9E7     		b	.L16
 160              	.L21:
 161 0070 C369     		ldr	r3, [r0, #28]
 162 0072 0344     		add	r3, r3, r0
 163 0074 197C     		ldrb	r1, [r3, #16]	@ zero_extendqisi2
 164 0076 C943     		mvns	r1, r1
 165 0078 01F00101 		and	r1, r1, #1
 166 007c D2E7     		b	.L16
 167              	.L22:
 168 007e C369     		ldr	r3, [r0, #28]
 169 0080 0021     		movs	r1, #0
 170 0082 0133     		adds	r3, r3, #1
 171 0084 C0E90731 		strd	r3, r1, [r0, #28]
ARM GAS  /tmp/ccP7tb9J.s 			page 4


 172 0088 CCE7     		b	.L16
 173              	.L15:
 174 008a 0021     		movs	r1, #0
 175 008c CAE7     		b	.L16
 176              	.L27:
 177 008e D4E90820 		ldrd	r2, r0, [r4, #32]
 178 0092 A16A     		ldr	r1, [r4, #40]
 179 0094 0232     		adds	r2, r2, #2
 180 0096 C3EBC303 		rsb	r3, r3, r3, lsl #3
 181 009a 02EB4303 		add	r3, r2, r3, lsl #1
 182 009e 00FB0313 		mla	r3, r0, r3, r1
 183 00a2 2B60     		str	r3, [r5]
 184 00a4 0120     		movs	r0, #1
 185 00a6 38BD     		pop	{r3, r4, r5, pc}
 186              	.L29:
 187              		.align	2
 188              	.L28:
 189 00a8 00000000 		.word	reprap
 190              		.size	_ZN16ZProbeProgrammer9InterruptERm, .-_ZN16ZProbeProgrammer9InterruptERm
 191              		.section	.text._ZN16ZProbeProgrammer14TimerInterruptEPvRm,"ax",%progbits
 192              		.align	1
 193              		.p2align 2,,3
 194              		.global	_ZN16ZProbeProgrammer14TimerInterruptEPvRm
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu fpv4-sp-d16
 199              		.type	_ZN16ZProbeProgrammer14TimerInterruptEPvRm, %function
 200              	_ZN16ZProbeProgrammer14TimerInterruptEPvRm:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              		@ link register save eliminated.
 204 0000 FFF7FEBF 		b	_ZN16ZProbeProgrammer9InterruptERm
 205              		.size	_ZN16ZProbeProgrammer14TimerInterruptEPvRm, .-_ZN16ZProbeProgrammer14TimerInterruptEPvRm
 206              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 207              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 208              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 209              	_ZL28cpu_irq_prev_interrupt_state:
 210 0000 00       		.space	1
 211              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 212              		.align	2
 213              		.type	_ZL32cpu_irq_critical_section_counter, %object
 214              		.size	_ZL32cpu_irq_critical_section_counter, 4
 215              	_ZL32cpu_irq_critical_section_counter:
 216 0000 00000000 		.space	4
 217              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 218              		.align	2
 219              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 220              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 221              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 222 0000 00000000 		.space	4
 223              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
