ARM GAS  /tmp/ccaIp2pO.s 			page 1


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
  11              		.file	"ZProbeProgrammer.cpp"
  12              		.section	.text._ZN16ZProbeProgrammerC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN16ZProbeProgrammerC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN16ZProbeProgrammerC2Ev, %function
  21              	_ZN16ZProbeProgrammerC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 0446     		mov	r4, r0
  26 0004 FFF7FEFF 		bl	_ZN9SoftTimerC1Ev
  27 0008 2046     		mov	r0, r4
  28 000a 10BD     		pop	{r4, pc}
  29              		.size	_ZN16ZProbeProgrammerC2Ev, .-_ZN16ZProbeProgrammerC2Ev
  30              		.global	_ZN16ZProbeProgrammerC1Ev
  31              		.thumb_set _ZN16ZProbeProgrammerC1Ev,_ZN16ZProbeProgrammerC2Ev
  32              		.section	.text._ZN16ZProbeProgrammer11SendProgramEPKmj,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	_ZN16ZProbeProgrammer11SendProgramEPKmj
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu softvfp
  40              		.type	_ZN16ZProbeProgrammer11SendProgramEPKmj, %function
  41              	_ZN16ZProbeProgrammer11SendProgramEPKmj:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  45 0004 1746     		mov	r7, r2
  46 0006 0C46     		mov	r4, r1
  47 0008 0646     		mov	r6, r0
  48 000a FFF7FEFF 		bl	_ZN9SoftTimer14CancelCallbackEv
  49 000e 57B1     		cbz	r7, .L5
  50 0010 2146     		mov	r1, r4
  51 0012 06F11000 		add	r0, r6, #16
  52 0016 04EB8705 		add	r5, r4, r7, lsl #2
  53              	.L6:
  54 001a 51F8044B 		ldr	r4, [r1], #4
  55 001e A942     		cmp	r1, r5
  56 0020 00F8014B 		strb	r4, [r0], #1
  57 0024 F9D1     		bne	.L6
ARM GAS  /tmp/ccaIp2pO.s 			page 2


  58              	.L5:
  59 0026 0024     		movs	r4, #0
  60 0028 B761     		str	r7, [r6, #24]
  61 002a F461     		str	r4, [r6, #28]
  62 002c 3462     		str	r4, [r6, #32]
  63 002e FFF7FEFF 		bl	_ZN9SoftTimer11GetTickRateEv
  64 0032 0B4A     		ldr	r2, .L10
  65 0034 0B4B     		ldr	r3, .L10+4
  66 0036 A2FB0020 		umull	r2, r0, r2, r0
  67 003a 8009     		lsrs	r0, r0, #6
  68 003c 2146     		mov	r1, r4
  69 003e 7062     		str	r0, [r6, #36]
  70 0040 1868     		ldr	r0, [r3]	@ unaligned
  71 0042 FFF7FEFF 		bl	_ZNK8Platform17SetZProbeModStateEb
  72 0046 FFF7FEFF 		bl	_ZN9SoftTimer16GetTimerTicksNowEv
  73 004a 716A     		ldr	r1, [r6, #36]
  74 004c B062     		str	r0, [r6, #40]
  75 004e 00EB4101 		add	r1, r0, r1, lsl #1
  76 0052 3346     		mov	r3, r6
  77 0054 3046     		mov	r0, r6
  78 0056 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  79 005a 034A     		ldr	r2, .L10+8
  80 005c FFF7FEBF 		b	_ZN9SoftTimer16ScheduleCallbackEmPFbPvRmES0_
  81              	.L11:
  82              		.align	2
  83              	.L10:
  84 0060 D34D6210 		.word	274877907
  85 0064 00000000 		.word	reprap
  86 0068 00000000 		.word	_ZN16ZProbeProgrammer14TimerInterruptEPvRm
  87              		.size	_ZN16ZProbeProgrammer11SendProgramEPKmj, .-_ZN16ZProbeProgrammer11SendProgramEPKmj
  88              		.section	.text._ZN16ZProbeProgrammer9InterruptERm,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	_ZN16ZProbeProgrammer9InterruptERm
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu softvfp
  96              		.type	_ZN16ZProbeProgrammer9InterruptERm, %function
  97              	_ZN16ZProbeProgrammer9InterruptERm:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100 0000 38B5     		push	{r3, r4, r5, lr}
 101 0002 036A     		ldr	r3, [r0, #32]
 102 0004 0D46     		mov	r5, r1
 103 0006 591C     		adds	r1, r3, #1
 104 0008 0446     		mov	r4, r0
 105 000a 0162     		str	r1, [r0, #32]
 106 000c 0C2B     		cmp	r3, #12
 107 000e 3DD8     		bhi	.L13
 108 0010 DFE803F0 		tbb	[pc, r3]
 109              	.L15:
 110 0014 07       		.byte	(.L23-.L15)/2
 111 0015 3C       		.byte	(.L13-.L15)/2
 112 0016 15       		.byte	(.L16-.L15)/2
 113 0017 15       		.byte	(.L16-.L15)/2
 114 0018 15       		.byte	(.L16-.L15)/2
ARM GAS  /tmp/ccaIp2pO.s 			page 3


 115 0019 15       		.byte	(.L16-.L15)/2
 116 001a 1E       		.byte	(.L17-.L15)/2
 117 001b 26       		.byte	(.L18-.L15)/2
 118 001c 26       		.byte	(.L18-.L15)/2
 119 001d 26       		.byte	(.L18-.L15)/2
 120 001e 26       		.byte	(.L18-.L15)/2
 121 001f 2F       		.byte	(.L19-.L15)/2
 122 0020 36       		.byte	(.L20-.L15)/2
 123 0021 00       		.p2align 1
 124              	.L23:
 125 0022 0121     		movs	r1, #1
 126              	.L14:
 127 0024 214B     		ldr	r3, .L26
 128 0026 1868     		ldr	r0, [r3]
 129 0028 FFF7FEFF 		bl	_ZNK8Platform17SetZProbeModStateEb
 130 002c E369     		ldr	r3, [r4, #28]
 131 002e A269     		ldr	r2, [r4, #24]
 132 0030 9342     		cmp	r3, r2
 133 0032 2DD3     		bcc	.L25
 134 0034 0023     		movs	r3, #0
 135 0036 1846     		mov	r0, r3
 136 0038 A361     		str	r3, [r4, #24]
 137 003a E361     		str	r3, [r4, #28]
 138 003c 38BD     		pop	{r3, r4, r5, pc}
 139              	.L16:
 140 003e C269     		ldr	r2, [r0, #28]
 141 0040 C1F10A03 		rsb	r3, r1, #10
 142 0044 0244     		add	r2, r2, r0
 143 0046 117C     		ldrb	r1, [r2, #16]	@ zero_extendqisi2
 144 0048 1941     		asrs	r1, r1, r3
 145 004a 01F00101 		and	r1, r1, #1
 146 004e E9E7     		b	.L14
 147              	.L17:
 148 0050 C369     		ldr	r3, [r0, #28]
 149 0052 0344     		add	r3, r3, r0
 150 0054 197C     		ldrb	r1, [r3, #16]	@ zero_extendqisi2
 151 0056 81F01001 		eor	r1, r1, #16
 152 005a C1F30011 		ubfx	r1, r1, #4, #1
 153 005e E1E7     		b	.L14
 154              	.L18:
 155 0060 C269     		ldr	r2, [r0, #28]
 156 0062 C1F10B03 		rsb	r3, r1, #11
 157 0066 0244     		add	r2, r2, r0
 158 0068 117C     		ldrb	r1, [r2, #16]	@ zero_extendqisi2
 159 006a 1941     		asrs	r1, r1, r3
 160 006c 01F00101 		and	r1, r1, #1
 161 0070 D8E7     		b	.L14
 162              	.L19:
 163 0072 C369     		ldr	r3, [r0, #28]
 164 0074 0344     		add	r3, r3, r0
 165 0076 197C     		ldrb	r1, [r3, #16]	@ zero_extendqisi2
 166 0078 C943     		mvns	r1, r1
 167 007a 01F00101 		and	r1, r1, #1
 168 007e D1E7     		b	.L14
 169              	.L20:
 170 0080 0021     		movs	r1, #0
 171 0082 C369     		ldr	r3, [r0, #28]
ARM GAS  /tmp/ccaIp2pO.s 			page 4


 172 0084 0162     		str	r1, [r0, #32]
 173 0086 0133     		adds	r3, r3, #1
 174 0088 C361     		str	r3, [r0, #28]
 175 008a CBE7     		b	.L14
 176              	.L13:
 177 008c 0021     		movs	r1, #0
 178 008e C9E7     		b	.L14
 179              	.L25:
 180 0090 226A     		ldr	r2, [r4, #32]
 181 0092 606A     		ldr	r0, [r4, #36]
 182 0094 A16A     		ldr	r1, [r4, #40]
 183 0096 0232     		adds	r2, r2, #2
 184 0098 C3EBC303 		rsb	r3, r3, r3, lsl #3
 185 009c 02EB4303 		add	r3, r2, r3, lsl #1
 186 00a0 00FB0313 		mla	r3, r0, r3, r1
 187 00a4 0120     		movs	r0, #1
 188 00a6 2B60     		str	r3, [r5]
 189 00a8 38BD     		pop	{r3, r4, r5, pc}
 190              	.L27:
 191 00aa 00BF     		.align	2
 192              	.L26:
 193 00ac 00000000 		.word	reprap
 194              		.size	_ZN16ZProbeProgrammer9InterruptERm, .-_ZN16ZProbeProgrammer9InterruptERm
 195              		.section	.text._ZN16ZProbeProgrammer14TimerInterruptEPvRm,"ax",%progbits
 196              		.align	1
 197              		.p2align 2,,3
 198              		.global	_ZN16ZProbeProgrammer14TimerInterruptEPvRm
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu softvfp
 203              		.type	_ZN16ZProbeProgrammer14TimerInterruptEPvRm, %function
 204              	_ZN16ZProbeProgrammer14TimerInterruptEPvRm:
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207              		@ link register save eliminated.
 208 0000 FFF7FEBF 		b	_ZN16ZProbeProgrammer9InterruptERm
 209              		.size	_ZN16ZProbeProgrammer14TimerInterruptEPvRm, .-_ZN16ZProbeProgrammer14TimerInterruptEPvRm
 210              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 211              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 212              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 213              	_ZL28cpu_irq_prev_interrupt_state:
 214 0000 00       		.space	1
 215              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 216              		.align	2
 217              		.type	_ZL32cpu_irq_critical_section_counter, %object
 218              		.size	_ZL32cpu_irq_critical_section_counter, 4
 219              	_ZL32cpu_irq_critical_section_counter:
 220 0000 00000000 		.space	4
 221              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 222              		.align	2
 223              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 224              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 225              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 226 0000 00000000 		.space	4
 227              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
