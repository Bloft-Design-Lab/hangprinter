ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0u1p6g.s 			page 1


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
  13              		.file	"IoPorts.cpp"
  14              		.text
  15              		.section	.text._ZN6IoPortC2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN6IoPortC2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN6IoPortC2Ev, %function
  24              	_ZN6IoPortC2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 4FF6FF72 		movw	r2, #65535
  29 0004 0021     		movs	r1, #0
  30 0006 C170     		strb	r1, [r0, #3]
  31 0008 0280     		strh	r2, [r0]	@ movhi
  32 000a 8270     		strb	r2, [r0, #2]
  33 000c 7047     		bx	lr
  34              		.size	_ZN6IoPortC2Ev, .-_ZN6IoPortC2Ev
  35              		.global	_ZN6IoPortC1Ev
  36              		.thumb_set _ZN6IoPortC1Ev,_ZN6IoPortC2Ev
  37 000e 00BF     		.section	.text._ZN6IoPort5ClearEv,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	_ZN6IoPort5ClearEv
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu fpv4-sp-d16
  45              		.type	_ZN6IoPort5ClearEv, %function
  46              	_ZN6IoPort5ClearEv:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49              		@ link register save eliminated.
  50 0000 4FF6FF73 		movw	r3, #65535
  51 0004 0022     		movs	r2, #0
  52 0006 C270     		strb	r2, [r0, #3]
  53 0008 0380     		strh	r3, [r0]	@ movhi
  54 000a 8370     		strb	r3, [r0, #2]
  55 000c 7047     		bx	lr
  56              		.size	_ZN6IoPort5ClearEv, .-_ZN6IoPort5ClearEv
  57 000e 00BF     		.section	.text._ZN6IoPort3SetEt9PinAccessb,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0u1p6g.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_ZN6IoPort3SetEt9PinAccessb
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	_ZN6IoPort3SetEt9PinAccessb, %function
  66              	_ZN6IoPort3SetEt9PinAccessb:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69 0000 70B5     		push	{r4, r5, r6, lr}
  70 0002 0C4D     		ldr	r5, .L11
  71 0004 0446     		mov	r4, r0
  72 0006 82B0     		sub	sp, sp, #8
  73 0008 6868     		ldr	r0, [r5, #4]	@ unaligned
  74 000a E51C     		adds	r5, r4, #3
  75 000c 1E46     		mov	r6, r3
  76 000e 0095     		str	r5, [sp]
  77 0010 A31C     		adds	r3, r4, #2
  78 0012 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
  79 0016 30B1     		cbz	r0, .L5
  80 0018 1EB1     		cbz	r6, .L6
  81 001a E378     		ldrb	r3, [r4, #3]	@ zero_extendqisi2
  82 001c 83F00103 		eor	r3, r3, #1
  83 0020 E370     		strb	r3, [r4, #3]
  84              	.L6:
  85 0022 02B0     		add	sp, sp, #8
  86              		@ sp needed
  87 0024 70BD     		pop	{r4, r5, r6, pc}
  88              	.L5:
  89 0026 4FF6FF73 		movw	r3, #65535
  90 002a E070     		strb	r0, [r4, #3]
  91 002c 2380     		strh	r3, [r4]	@ movhi
  92 002e A370     		strb	r3, [r4, #2]
  93 0030 02B0     		add	sp, sp, #8
  94              		@ sp needed
  95 0032 70BD     		pop	{r4, r5, r6, pc}
  96              	.L12:
  97              		.align	2
  98              	.L11:
  99 0034 00000000 		.word	reprap
 100              		.size	_ZN6IoPort3SetEt9PinAccessb, .-_ZN6IoPort3SetEt9PinAccessb
 101              		.section	.text._ZN6IoPort10SetPinModeEh7PinMode,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	_ZN6IoPort10SetPinModeEh7PinMode
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	_ZN6IoPort10SetPinModeEh7PinMode, %function
 110              	_ZN6IoPort10SetPinModeEh7PinMode:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 C728     		cmp	r0, #199
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0u1p6g.s 			page 3


 115 0002 02D8     		bhi	.L15
 116 0004 0022     		movs	r2, #0
 117 0006 FFF7FEBF 		b	pinModeDuet
 118              	.L15:
 119 000a FFF7FEBF 		b	_ZN13DuetExpansion10SetPinModeEh7PinMode
 120              		.size	_ZN6IoPort10SetPinModeEh7PinMode, .-_ZN6IoPort10SetPinModeEh7PinMode
 121 000e 00BF     		.section	.text._ZN6IoPort7ReadPinEh,"ax",%progbits
 122              		.align	1
 123              		.p2align 2,,3
 124              		.global	_ZN6IoPort7ReadPinEh
 125              		.syntax unified
 126              		.thumb
 127              		.thumb_func
 128              		.fpu fpv4-sp-d16
 129              		.type	_ZN6IoPort7ReadPinEh, %function
 130              	_ZN6IoPort7ReadPinEh:
 131              		@ args = 0, pretend = 0, frame = 0
 132              		@ frame_needed = 0, uses_anonymous_args = 0
 133              		@ link register save eliminated.
 134 0000 C728     		cmp	r0, #199
 135 0002 01D8     		bhi	.L18
 136 0004 FFF7FEBF 		b	digitalRead
 137              	.L18:
 138 0008 FFF7FEBF 		b	_ZN13DuetExpansion11DigitalReadEh
 139              		.size	_ZN6IoPort7ReadPinEh, .-_ZN6IoPort7ReadPinEh
 140              		.section	.text._ZN6IoPort12WriteDigitalEhb,"ax",%progbits
 141              		.align	1
 142              		.p2align 2,,3
 143              		.global	_ZN6IoPort12WriteDigitalEhb
 144              		.syntax unified
 145              		.thumb
 146              		.thumb_func
 147              		.fpu fpv4-sp-d16
 148              		.type	_ZN6IoPort12WriteDigitalEhb, %function
 149              	_ZN6IoPort12WriteDigitalEhb:
 150              		@ args = 0, pretend = 0, frame = 0
 151              		@ frame_needed = 0, uses_anonymous_args = 0
 152              		@ link register save eliminated.
 153 0000 C728     		cmp	r0, #199
 154 0002 01D8     		bhi	.L21
 155 0004 FFF7FEBF 		b	digitalWrite
 156              	.L21:
 157 0008 FFF7FEBF 		b	_ZN13DuetExpansion12DigitalWriteEhb
 158              		.size	_ZN6IoPort12WriteDigitalEhb, .-_ZN6IoPort12WriteDigitalEhb
 159              		.section	.text._ZN6IoPort11WriteAnalogEhft,"ax",%progbits
 160              		.align	1
 161              		.p2align 2,,3
 162              		.global	_ZN6IoPort11WriteAnalogEhft
 163              		.syntax unified
 164              		.thumb
 165              		.thumb_func
 166              		.fpu fpv4-sp-d16
 167              		.type	_ZN6IoPort11WriteAnalogEhft, %function
 168              	_ZN6IoPort11WriteAnalogEhft:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0u1p6g.s 			page 4


 172 0000 C728     		cmp	r0, #199
 173 0002 01D8     		bhi	.L24
 174 0004 FFF7FEBF 		b	_Z9AnalogOuthft
 175              	.L24:
 176 0008 FFF7FEBF 		b	_ZN13DuetExpansion9AnalogOutEhf
 177              		.size	_ZN6IoPort11WriteAnalogEhft, .-_ZN6IoPort11WriteAnalogEhft
 178              		.section	.text._ZN7PwmPortC2Ev,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	_ZN7PwmPortC2Ev
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu fpv4-sp-d16
 186              		.type	_ZN7PwmPortC2Ev, %function
 187              	_ZN7PwmPortC2Ev:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190              		@ link register save eliminated.
 191 0000 10B4     		push	{r4}
 192 0002 0024     		movs	r4, #0
 193 0004 4FF6FF72 		movw	r2, #65535
 194 0008 4FF4FA71 		mov	r1, #500
 195 000c C470     		strb	r4, [r0, #3]
 196 000e 8180     		strh	r1, [r0, #4]	@ movhi
 197 0010 0280     		strh	r2, [r0]	@ movhi
 198 0012 8270     		strb	r2, [r0, #2]
 199 0014 5DF8044B 		ldr	r4, [sp], #4
 200 0018 7047     		bx	lr
 201              		.size	_ZN7PwmPortC2Ev, .-_ZN7PwmPortC2Ev
 202              		.global	_ZN7PwmPortC1Ev
 203              		.thumb_set _ZN7PwmPortC1Ev,_ZN7PwmPortC2Ev
 204 001a 00BF     		.section	.text._ZN7PwmPort12SetFrequencyEf,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	_ZN7PwmPort12SetFrequencyEf
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu fpv4-sp-d16
 212              		.type	_ZN7PwmPort12SetFrequencyEf, %function
 213              	_ZN7PwmPort12SetFrequencyEf:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 217 0000 B4EE400A 		vcmp.f32	s0, s0
 218 0004 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 219 0008 14D6     		bvs	.L31
 220 000a DFED0E7A 		vldr.32	s15, .L35
 221 000e B4EEE70A 		vcmpe.f32	s0, s15
 222 0012 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 223 0016 09D5     		bpl	.L34
 224 0018 F7EE007A 		vmov.f32	s15, #1.0e+0
 225 001c B4EEE70A 		vcmpe.f32	s0, s15
 226 0020 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 227 0024 06DC     		bgt	.L31
 228 0026 0123     		movs	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0u1p6g.s 			page 5


 229 0028 8380     		strh	r3, [r0, #4]	@ movhi
 230 002a 7047     		bx	lr
 231              	.L34:
 232 002c 4FF6FF73 		movw	r3, #65535
 233 0030 8380     		strh	r3, [r0, #4]	@ movhi
 234 0032 7047     		bx	lr
 235              	.L31:
 236 0034 BCEEC00A 		vcvt.u32.f32	s0, s0
 237 0038 10EE103A 		vmov	r3, s0	@ int
 238 003c 9BB2     		uxth	r3, r3
 239 003e 8380     		strh	r3, [r0, #4]	@ movhi
 240 0040 7047     		bx	lr
 241              	.L36:
 242 0042 00BF     		.align	2
 243              	.L35:
 244 0044 00FF7F47 		.word	1199570688
 245              		.size	_ZN7PwmPort12SetFrequencyEf, .-_ZN7PwmPort12SetFrequencyEf
 246              		.section	.text._ZNK7PwmPort11WriteAnalogEf,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	_ZNK7PwmPort11WriteAnalogEf
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv4-sp-d16
 254              		.type	_ZNK7PwmPort11WriteAnalogEf, %function
 255              	_ZNK7PwmPort11WriteAnalogEf:
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              		@ link register save eliminated.
 259 0000 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 260 0002 FF2B     		cmp	r3, #255
 261 0004 09D0     		beq	.L37
 262 0006 C278     		ldrb	r2, [r0, #3]	@ zero_extendqisi2
 263 0008 1AB1     		cbz	r2, .L39
 264 000a F7EE007A 		vmov.f32	s15, #1.0e+0
 265 000e 37EEC00A 		vsub.f32	s0, s15, s0
 266              	.L39:
 267 0012 8188     		ldrh	r1, [r0, #4]
 268 0014 1846     		mov	r0, r3
 269 0016 FFF7FEBF 		b	_ZN6IoPort11WriteAnalogEhft
 270              	.L37:
 271 001a 7047     		bx	lr
 272              		.size	_ZNK7PwmPort11WriteAnalogEf, .-_ZNK7PwmPort11WriteAnalogEf
 273              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 274              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 275              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 276              	_ZL28cpu_irq_prev_interrupt_state:
 277 0000 00       		.space	1
 278              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 279              		.align	2
 280              		.type	_ZL32cpu_irq_critical_section_counter, %object
 281              		.size	_ZL32cpu_irq_critical_section_counter, 4
 282              	_ZL32cpu_irq_critical_section_counter:
 283 0000 00000000 		.space	4
 284              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
