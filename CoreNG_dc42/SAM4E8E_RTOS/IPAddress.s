ARM GAS  /tmp/ccLCAaNe.s 			page 1


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
  13              		.file	"IPAddress.cpp"
  14              		.section	.text._ZN9IPAddressC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN9IPAddressC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN9IPAddressC2Ev, %function
  23              	_ZN9IPAddressC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0022     		movs	r2, #0
  28 0002 0260     		str	r2, [r0]
  29 0004 7047     		bx	lr
  30              		.size	_ZN9IPAddressC2Ev, .-_ZN9IPAddressC2Ev
  31              		.global	_ZN9IPAddressC1Ev
  32              		.thumb_set _ZN9IPAddressC1Ev,_ZN9IPAddressC2Ev
  33 0006 00BF     		.section	.text._ZN9IPAddressC2Ehhhh,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	_ZN9IPAddressC2Ehhhh
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu fpv4-sp-d16
  41              		.type	_ZN9IPAddressC2Ehhhh, %function
  42              	_ZN9IPAddressC2Ehhhh:
  43              		@ args = 4, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 30B4     		push	{r4, r5}
  47 0002 9DF80850 		ldrb	r5, [sp, #8]	@ zero_extendqisi2
  48 0006 C570     		strb	r5, [r0, #3]
  49 0008 0170     		strb	r1, [r0]
  50 000a 4270     		strb	r2, [r0, #1]
  51 000c 8370     		strb	r3, [r0, #2]
  52 000e 30BC     		pop	{r4, r5}
  53 0010 7047     		bx	lr
  54              		.size	_ZN9IPAddressC2Ehhhh, .-_ZN9IPAddressC2Ehhhh
  55              		.global	_ZN9IPAddressC1Ehhhh
  56              		.thumb_set _ZN9IPAddressC1Ehhhh,_ZN9IPAddressC2Ehhhh
  57 0012 00BF     		.section	.text._ZN9IPAddressC2Em,"ax",%progbits
ARM GAS  /tmp/ccLCAaNe.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_ZN9IPAddressC2Em
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	_ZN9IPAddressC2Em, %function
  66              	_ZN9IPAddressC2Em:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 0160     		str	r1, [r0]
  71 0002 7047     		bx	lr
  72              		.size	_ZN9IPAddressC2Em, .-_ZN9IPAddressC2Em
  73              		.global	_ZN9IPAddressC1Em
  74              		.thumb_set _ZN9IPAddressC1Em,_ZN9IPAddressC2Em
  75              		.section	.text._ZN9IPAddressC2EPKh,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	_ZN9IPAddressC2EPKh
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu fpv4-sp-d16
  83              		.type	_ZN9IPAddressC2EPKh, %function
  84              	_ZN9IPAddressC2EPKh:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87              		@ link register save eliminated.
  88 0000 0B68     		ldr	r3, [r1]	@ unaligned
  89 0002 0360     		str	r3, [r0]	@ unaligned
  90 0004 7047     		bx	lr
  91              		.size	_ZN9IPAddressC2EPKh, .-_ZN9IPAddressC2EPKh
  92              		.global	_ZN9IPAddressC1EPKh
  93              		.thumb_set _ZN9IPAddressC1EPKh,_ZN9IPAddressC2EPKh
  94 0006 00BF     		.section	.text._ZN9IPAddress10fromStringEPKc,"ax",%progbits
  95              		.align	1
  96              		.p2align 2,,3
  97              		.global	_ZN9IPAddress10fromStringEPKc
  98              		.syntax unified
  99              		.thumb
 100              		.thumb_func
 101              		.fpu fpv4-sp-d16
 102              		.type	_ZN9IPAddress10fromStringEPKc, %function
 103              	_ZN9IPAddress10fromStringEPKc:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106              		@ link register save eliminated.
 107 0000 F0B4     		push	{r4, r5, r6, r7}
 108 0002 0026     		movs	r6, #0
 109 0004 0139     		subs	r1, r1, #1
 110 0006 3446     		mov	r4, r6
 111              	.L7:
 112 0008 11F8015F 		ldrb	r5, [r1, #1]!	@ zero_extendqisi2
 113 000c 04EB8403 		add	r3, r4, r4, lsl #2
 114 0010 A5F13002 		sub	r2, r5, #48
ARM GAS  /tmp/ccLCAaNe.s 			page 3


 115 0014 02EB4303 		add	r3, r2, r3, lsl #1
 116 0018 771C     		adds	r7, r6, #1
 117 001a D2B2     		uxtb	r2, r2
 118 001c 7DB1     		cbz	r5, .L8
 119 001e 092A     		cmp	r2, #9
 120 0020 05D8     		bhi	.L9
 121 0022 9CB2     		uxth	r4, r3
 122 0024 FF2C     		cmp	r4, #255
 123 0026 EFD9     		bls	.L7
 124              	.L14:
 125 0028 0020     		movs	r0, #0
 126 002a F0BC     		pop	{r4, r5, r6, r7}
 127 002c 7047     		bx	lr
 128              	.L9:
 129 002e 2E2D     		cmp	r5, #46
 130 0030 FAD1     		bne	.L14
 131 0032 032E     		cmp	r6, #3
 132 0034 F8D0     		beq	.L14
 133 0036 8455     		strb	r4, [r0, r6]
 134 0038 FEB2     		uxtb	r6, r7
 135 003a 0024     		movs	r4, #0
 136 003c E4E7     		b	.L7
 137              	.L8:
 138 003e 032E     		cmp	r6, #3
 139 0040 02D0     		beq	.L18
 140 0042 2846     		mov	r0, r5
 141 0044 F0BC     		pop	{r4, r5, r6, r7}
 142 0046 7047     		bx	lr
 143              	.L18:
 144 0048 C470     		strb	r4, [r0, #3]
 145 004a F0BC     		pop	{r4, r5, r6, r7}
 146 004c 0120     		movs	r0, #1
 147 004e 7047     		bx	lr
 148              		.size	_ZN9IPAddress10fromStringEPKc, .-_ZN9IPAddress10fromStringEPKc
 149              		.section	.text._ZN9IPAddressaSEPKh,"ax",%progbits
 150              		.align	1
 151              		.p2align 2,,3
 152              		.global	_ZN9IPAddressaSEPKh
 153              		.syntax unified
 154              		.thumb
 155              		.thumb_func
 156              		.fpu fpv4-sp-d16
 157              		.type	_ZN9IPAddressaSEPKh, %function
 158              	_ZN9IPAddressaSEPKh:
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161              		@ link register save eliminated.
 162 0000 0B68     		ldr	r3, [r1]	@ unaligned
 163 0002 0360     		str	r3, [r0]	@ unaligned
 164 0004 7047     		bx	lr
 165              		.size	_ZN9IPAddressaSEPKh, .-_ZN9IPAddressaSEPKh
 166 0006 00BF     		.section	.text._ZN9IPAddressaSEm,"ax",%progbits
 167              		.align	1
 168              		.p2align 2,,3
 169              		.global	_ZN9IPAddressaSEm
 170              		.syntax unified
 171              		.thumb
ARM GAS  /tmp/ccLCAaNe.s 			page 4


 172              		.thumb_func
 173              		.fpu fpv4-sp-d16
 174              		.type	_ZN9IPAddressaSEm, %function
 175              	_ZN9IPAddressaSEm:
 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178              		@ link register save eliminated.
 179 0000 0160     		str	r1, [r0]
 180 0002 7047     		bx	lr
 181              		.size	_ZN9IPAddressaSEm, .-_ZN9IPAddressaSEm
 182              		.section	.text._ZNK9IPAddresseqEPKh,"ax",%progbits
 183              		.align	1
 184              		.p2align 2,,3
 185              		.global	_ZNK9IPAddresseqEPKh
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu fpv4-sp-d16
 190              		.type	_ZNK9IPAddresseqEPKh, %function
 191              	_ZNK9IPAddresseqEPKh:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194 0000 08B5     		push	{r3, lr}
 195 0002 0B46     		mov	r3, r1
 196 0004 0422     		movs	r2, #4
 197 0006 0146     		mov	r1, r0
 198 0008 1846     		mov	r0, r3
 199 000a FFF7FEFF 		bl	memcmp
 200 000e B0FA80F0 		clz	r0, r0
 201 0012 4009     		lsrs	r0, r0, #5
 202 0014 08BD     		pop	{r3, pc}
 203              		.size	_ZNK9IPAddresseqEPKh, .-_ZNK9IPAddresseqEPKh
 204 0016 00BF     		.section	.text.startup._GLOBAL__sub_I__ZN9IPAddressC2Ev,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.syntax unified
 208              		.thumb
 209              		.thumb_func
 210              		.fpu fpv4-sp-d16
 211              		.type	_GLOBAL__sub_I__ZN9IPAddressC2Ev, %function
 212              	_GLOBAL__sub_I__ZN9IPAddressC2Ev:
 213              		@ args = 0, pretend = 0, frame = 0
 214              		@ frame_needed = 0, uses_anonymous_args = 0
 215              		@ link register save eliminated.
 216 0000 7047     		bx	lr
 217              		.size	_GLOBAL__sub_I__ZN9IPAddressC2Ev, .-_GLOBAL__sub_I__ZN9IPAddressC2Ev
 218 0002 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 219              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 220              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 221              	_ZL28cpu_irq_prev_interrupt_state:
 222 0000 00       		.space	1
 223              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 224              		.align	2
 225              		.type	_ZL32cpu_irq_critical_section_counter, %object
 226              		.size	_ZL32cpu_irq_critical_section_counter, 4
 227              	_ZL32cpu_irq_critical_section_counter:
 228 0000 00000000 		.space	4
ARM GAS  /tmp/ccLCAaNe.s 			page 5


 229              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
