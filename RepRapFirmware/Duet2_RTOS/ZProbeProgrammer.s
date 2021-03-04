ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccMtXNSg.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN16ZProbeProgrammerC2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN16ZProbeProgrammerC2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN16ZProbeProgrammerC2Ev, %function
  24              	_ZN16ZProbeProgrammerC2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 0446     		mov	r4, r0
  29 0004 FFF7FEFF 		bl	_ZN9SoftTimerC1Ev
  30 0008 2046     		mov	r0, r4
  31 000a 10BD     		pop	{r4, pc}
  32              		.size	_ZN16ZProbeProgrammerC2Ev, .-_ZN16ZProbeProgrammerC2Ev
  33              		.global	_ZN16ZProbeProgrammerC1Ev
  34              		.thumb_set _ZN16ZProbeProgrammerC1Ev,_ZN16ZProbeProgrammerC2Ev
  35              		.section	.text._ZN16ZProbeProgrammer11SendProgramEPKmj,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	_ZN16ZProbeProgrammer11SendProgramEPKmj
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	_ZN16ZProbeProgrammer11SendProgramEPKmj, %function
  44              	_ZN16ZProbeProgrammer11SendProgramEPKmj:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47 0000 70B5     		push	{r4, r5, r6, lr}
  48 0002 1646     		mov	r6, r2
  49 0004 0C46     		mov	r4, r1
  50 0006 0546     		mov	r5, r0
  51 0008 FFF7FEFF 		bl	_ZN9SoftTimer14CancelCallbackEv
  52 000c 56B1     		cbz	r6, .L5
  53 000e 2146     		mov	r1, r4
  54 0010 04EB8603 		add	r3, r4, r6, lsl #2
  55 0014 05F11000 		add	r0, r5, #16
  56              	.L6:
  57 0018 51F8044B 		ldr	r4, [r1], #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccMtXNSg.s 			page 2


  58 001c 00F8014B 		strb	r4, [r0], #1
  59 0020 9942     		cmp	r1, r3
  60 0022 F9D1     		bne	.L6
  61              	.L5:
  62 0024 0024     		movs	r4, #0
  63 0026 C5E90664 		strd	r6, r4, [r5, #24]
  64 002a 2C62     		str	r4, [r5, #32]
  65 002c FFF7FEFF 		bl	_ZN9SoftTimer11GetTickRateEv
  66 0030 0B4A     		ldr	r2, .L12
  67 0032 0C4B     		ldr	r3, .L12+4
  68 0034 A2FB0020 		umull	r2, r0, r2, r0
  69 0038 8009     		lsrs	r0, r0, #6
  70 003a 2146     		mov	r1, r4
  71 003c 6862     		str	r0, [r5, #36]
  72 003e 5868     		ldr	r0, [r3, #4]	@ unaligned
  73 0040 FFF7FEFF 		bl	_ZNK8Platform17SetZProbeModStateEb
  74 0044 FFF7FEFF 		bl	_ZN9SoftTimer16GetTimerTicksNowEv
  75 0048 696A     		ldr	r1, [r5, #36]
  76 004a A862     		str	r0, [r5, #40]
  77 004c 00EB4101 		add	r1, r0, r1, lsl #1
  78 0050 2B46     		mov	r3, r5
  79 0052 2846     		mov	r0, r5
  80 0054 044A     		ldr	r2, .L12+8
  81 0056 BDE87040 		pop	{r4, r5, r6, lr}
  82 005a FFF7FEBF 		b	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_
  83              	.L13:
  84 005e 00BF     		.align	2
  85              	.L12:
  86 0060 D34D6210 		.word	274877907
  87 0064 00000000 		.word	reprap
  88 0068 00000000 		.word	_ZN16ZProbeProgrammer14TimerInterruptEPvRm
  89              		.size	_ZN16ZProbeProgrammer11SendProgramEPKmj, .-_ZN16ZProbeProgrammer11SendProgramEPKmj
  90              		.section	.text._ZN16ZProbeProgrammer9InterruptERm,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	_ZN16ZProbeProgrammer9InterruptERm
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	_ZN16ZProbeProgrammer9InterruptERm, %function
  99              	_ZN16ZProbeProgrammer9InterruptERm:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102 0000 38B5     		push	{r3, r4, r5, lr}
 103 0002 036A     		ldr	r3, [r0, #32]
 104 0004 0D46     		mov	r5, r1
 105 0006 591C     		adds	r1, r3, #1
 106 0008 0446     		mov	r4, r0
 107 000a 0162     		str	r1, [r0, #32]
 108 000c 0C2B     		cmp	r3, #12
 109 000e 3CD8     		bhi	.L15
 110 0010 DFE803F0 		tbb	[pc, r3]
 111              	.L17:
 112 0014 07       		.byte	(.L25-.L17)/2
 113 0015 3B       		.byte	(.L15-.L17)/2
 114 0016 14       		.byte	(.L18-.L17)/2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccMtXNSg.s 			page 3


 115 0017 14       		.byte	(.L18-.L17)/2
 116 0018 14       		.byte	(.L18-.L17)/2
 117 0019 14       		.byte	(.L18-.L17)/2
 118 001a 1D       		.byte	(.L19-.L17)/2
 119 001b 25       		.byte	(.L20-.L17)/2
 120 001c 25       		.byte	(.L20-.L17)/2
 121 001d 25       		.byte	(.L20-.L17)/2
 122 001e 25       		.byte	(.L20-.L17)/2
 123 001f 2E       		.byte	(.L21-.L17)/2
 124 0020 35       		.byte	(.L22-.L17)/2
 125 0021 00       		.p2align 1
 126              	.L25:
 127 0022 0121     		movs	r1, #1
 128              	.L16:
 129 0024 204B     		ldr	r3, .L28
 130 0026 5868     		ldr	r0, [r3, #4]
 131 0028 FFF7FEFF 		bl	_ZNK8Platform17SetZProbeModStateEb
 132 002c D4E90623 		ldrd	r2, r3, [r4, #24]
 133 0030 9342     		cmp	r3, r2
 134 0032 2CD3     		bcc	.L27
 135 0034 0020     		movs	r0, #0
 136 0036 C4E90600 		strd	r0, r0, [r4, #24]
 137 003a 38BD     		pop	{r3, r4, r5, pc}
 138              	.L18:
 139 003c C369     		ldr	r3, [r0, #28]
 140 003e C218     		adds	r2, r0, r3
 141 0040 C1F10A03 		rsb	r3, r1, #10
 142 0044 117C     		ldrb	r1, [r2, #16]	@ zero_extendqisi2
 143 0046 1941     		asrs	r1, r1, r3
 144 0048 01F00101 		and	r1, r1, #1
 145 004c EAE7     		b	.L16
 146              	.L19:
 147 004e C369     		ldr	r3, [r0, #28]
 148 0050 0344     		add	r3, r3, r0
 149 0052 197C     		ldrb	r1, [r3, #16]	@ zero_extendqisi2
 150 0054 81F01001 		eor	r1, r1, #16
 151 0058 C1F30011 		ubfx	r1, r1, #4, #1
 152 005c E2E7     		b	.L16
 153              	.L20:
 154 005e C369     		ldr	r3, [r0, #28]
 155 0060 C218     		adds	r2, r0, r3
 156 0062 C1F10B03 		rsb	r3, r1, #11
 157 0066 117C     		ldrb	r1, [r2, #16]	@ zero_extendqisi2
 158 0068 1941     		asrs	r1, r1, r3
 159 006a 01F00101 		and	r1, r1, #1
 160 006e D9E7     		b	.L16
 161              	.L21:
 162 0070 C369     		ldr	r3, [r0, #28]
 163 0072 0344     		add	r3, r3, r0
 164 0074 197C     		ldrb	r1, [r3, #16]	@ zero_extendqisi2
 165 0076 C943     		mvns	r1, r1
 166 0078 01F00101 		and	r1, r1, #1
 167 007c D2E7     		b	.L16
 168              	.L22:
 169 007e C369     		ldr	r3, [r0, #28]
 170 0080 0021     		movs	r1, #0
 171 0082 0133     		adds	r3, r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccMtXNSg.s 			page 4


 172 0084 C0E90731 		strd	r3, r1, [r0, #28]
 173 0088 CCE7     		b	.L16
 174              	.L15:
 175 008a 0021     		movs	r1, #0
 176 008c CAE7     		b	.L16
 177              	.L27:
 178 008e D4E90820 		ldrd	r2, r0, [r4, #32]
 179 0092 A16A     		ldr	r1, [r4, #40]
 180 0094 0232     		adds	r2, r2, #2
 181 0096 C3EBC303 		rsb	r3, r3, r3, lsl #3
 182 009a 02EB4303 		add	r3, r2, r3, lsl #1
 183 009e 00FB0313 		mla	r3, r0, r3, r1
 184 00a2 2B60     		str	r3, [r5]
 185 00a4 0120     		movs	r0, #1
 186 00a6 38BD     		pop	{r3, r4, r5, pc}
 187              	.L29:
 188              		.align	2
 189              	.L28:
 190 00a8 00000000 		.word	reprap
 191              		.size	_ZN16ZProbeProgrammer9InterruptERm, .-_ZN16ZProbeProgrammer9InterruptERm
 192              		.section	.text._ZN16ZProbeProgrammer14TimerInterruptEPvRm,"ax",%progbits
 193              		.align	1
 194              		.p2align 2,,3
 195              		.global	_ZN16ZProbeProgrammer14TimerInterruptEPvRm
 196              		.syntax unified
 197              		.thumb
 198              		.thumb_func
 199              		.fpu fpv4-sp-d16
 200              		.type	_ZN16ZProbeProgrammer14TimerInterruptEPvRm, %function
 201              	_ZN16ZProbeProgrammer14TimerInterruptEPvRm:
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 0, uses_anonymous_args = 0
 204              		@ link register save eliminated.
 205 0000 FFF7FEBF 		b	_ZN16ZProbeProgrammer9InterruptERm
 206              		.size	_ZN16ZProbeProgrammer14TimerInterruptEPvRm, .-_ZN16ZProbeProgrammer14TimerInterruptEPvRm
 207              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 208              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 209              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 210              	_ZL28cpu_irq_prev_interrupt_state:
 211 0000 00       		.space	1
 212              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 213              		.align	2
 214              		.type	_ZL32cpu_irq_critical_section_counter, %object
 215              		.size	_ZL32cpu_irq_critical_section_counter, 4
 216              	_ZL32cpu_irq_critical_section_counter:
 217 0000 00000000 		.space	4
 218              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
