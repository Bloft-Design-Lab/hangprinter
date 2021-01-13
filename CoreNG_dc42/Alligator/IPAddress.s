ARM GAS  /tmp/cclQPlWK.s 			page 1


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
  11              		.file	"IPAddress.cpp"
  12              		.section	.text._ZN9IPAddressC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN9IPAddressC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN9IPAddressC2Ev, %function
  21              	_ZN9IPAddressC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0022     		movs	r2, #0
  26 0002 0260     		str	r2, [r0]
  27 0004 7047     		bx	lr
  28              		.size	_ZN9IPAddressC2Ev, .-_ZN9IPAddressC2Ev
  29              		.global	_ZN9IPAddressC1Ev
  30              		.thumb_set _ZN9IPAddressC1Ev,_ZN9IPAddressC2Ev
  31 0006 00BF     		.section	.text._ZN9IPAddressC2Ehhhh,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	_ZN9IPAddressC2Ehhhh
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu softvfp
  39              		.type	_ZN9IPAddressC2Ehhhh, %function
  40              	_ZN9IPAddressC2Ehhhh:
  41              		@ args = 4, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 30B4     		push	{r4, r5}
  45 0002 9DF80850 		ldrb	r5, [sp, #8]	@ zero_extendqisi2
  46 0006 0170     		strb	r1, [r0]
  47 0008 C570     		strb	r5, [r0, #3]
  48 000a 4270     		strb	r2, [r0, #1]
  49 000c 8370     		strb	r3, [r0, #2]
  50 000e 30BC     		pop	{r4, r5}
  51 0010 7047     		bx	lr
  52              		.size	_ZN9IPAddressC2Ehhhh, .-_ZN9IPAddressC2Ehhhh
  53              		.global	_ZN9IPAddressC1Ehhhh
  54              		.thumb_set _ZN9IPAddressC1Ehhhh,_ZN9IPAddressC2Ehhhh
  55 0012 00BF     		.section	.text._ZN9IPAddressC2Em,"ax",%progbits
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  /tmp/cclQPlWK.s 			page 2


  58              		.global	_ZN9IPAddressC2Em
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu softvfp
  63              		.type	_ZN9IPAddressC2Em, %function
  64              	_ZN9IPAddressC2Em:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67              		@ link register save eliminated.
  68 0000 0160     		str	r1, [r0]
  69 0002 7047     		bx	lr
  70              		.size	_ZN9IPAddressC2Em, .-_ZN9IPAddressC2Em
  71              		.global	_ZN9IPAddressC1Em
  72              		.thumb_set _ZN9IPAddressC1Em,_ZN9IPAddressC2Em
  73              		.section	.text._ZN9IPAddressC2EPKh,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	_ZN9IPAddressC2EPKh
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu softvfp
  81              		.type	_ZN9IPAddressC2EPKh, %function
  82              	_ZN9IPAddressC2EPKh:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85              		@ link register save eliminated.
  86 0000 0B68     		ldr	r3, [r1]	@ unaligned
  87 0002 0360     		str	r3, [r0]	@ unaligned
  88 0004 7047     		bx	lr
  89              		.size	_ZN9IPAddressC2EPKh, .-_ZN9IPAddressC2EPKh
  90              		.global	_ZN9IPAddressC1EPKh
  91              		.thumb_set _ZN9IPAddressC1EPKh,_ZN9IPAddressC2EPKh
  92 0006 00BF     		.section	.text._ZN9IPAddress10fromStringEPKc,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	_ZN9IPAddress10fromStringEPKc
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu softvfp
 100              		.type	_ZN9IPAddress10fromStringEPKc, %function
 101              	_ZN9IPAddress10fromStringEPKc:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104              		@ link register save eliminated.
 105 0000 F0B4     		push	{r4, r5, r6, r7}
 106 0002 0026     		movs	r6, #0
 107 0004 3446     		mov	r4, r6
 108 0006 0139     		subs	r1, r1, #1
 109              	.L7:
 110 0008 11F8015F 		ldrb	r5, [r1, #1]!	@ zero_extendqisi2
 111 000c 04EB8403 		add	r3, r4, r4, lsl #2
 112 0010 A5F13002 		sub	r2, r5, #48
 113 0014 02EB4303 		add	r3, r2, r3, lsl #1
 114 0018 771C     		adds	r7, r6, #1
ARM GAS  /tmp/cclQPlWK.s 			page 3


 115 001a D2B2     		uxtb	r2, r2
 116 001c 7DB1     		cbz	r5, .L8
 117 001e 092A     		cmp	r2, #9
 118 0020 05D8     		bhi	.L9
 119 0022 9CB2     		uxth	r4, r3
 120 0024 FF2C     		cmp	r4, #255
 121 0026 EFD9     		bls	.L7
 122              	.L14:
 123 0028 0020     		movs	r0, #0
 124 002a F0BC     		pop	{r4, r5, r6, r7}
 125 002c 7047     		bx	lr
 126              	.L9:
 127 002e 2E2D     		cmp	r5, #46
 128 0030 FAD1     		bne	.L14
 129 0032 032E     		cmp	r6, #3
 130 0034 F8D0     		beq	.L14
 131 0036 8455     		strb	r4, [r0, r6]
 132 0038 FEB2     		uxtb	r6, r7
 133 003a 0024     		movs	r4, #0
 134 003c E4E7     		b	.L7
 135              	.L8:
 136 003e 032E     		cmp	r6, #3
 137 0040 02D0     		beq	.L18
 138 0042 2846     		mov	r0, r5
 139 0044 F0BC     		pop	{r4, r5, r6, r7}
 140 0046 7047     		bx	lr
 141              	.L18:
 142 0048 C470     		strb	r4, [r0, #3]
 143 004a F0BC     		pop	{r4, r5, r6, r7}
 144 004c 0120     		movs	r0, #1
 145 004e 7047     		bx	lr
 146              		.size	_ZN9IPAddress10fromStringEPKc, .-_ZN9IPAddress10fromStringEPKc
 147              		.section	.text._ZN9IPAddressaSEPKh,"ax",%progbits
 148              		.align	1
 149              		.p2align 2,,3
 150              		.global	_ZN9IPAddressaSEPKh
 151              		.syntax unified
 152              		.thumb
 153              		.thumb_func
 154              		.fpu softvfp
 155              		.type	_ZN9IPAddressaSEPKh, %function
 156              	_ZN9IPAddressaSEPKh:
 157              		@ args = 0, pretend = 0, frame = 0
 158              		@ frame_needed = 0, uses_anonymous_args = 0
 159              		@ link register save eliminated.
 160 0000 0B68     		ldr	r3, [r1]	@ unaligned
 161 0002 0360     		str	r3, [r0]	@ unaligned
 162 0004 7047     		bx	lr
 163              		.size	_ZN9IPAddressaSEPKh, .-_ZN9IPAddressaSEPKh
 164 0006 00BF     		.section	.text._ZN9IPAddressaSEm,"ax",%progbits
 165              		.align	1
 166              		.p2align 2,,3
 167              		.global	_ZN9IPAddressaSEm
 168              		.syntax unified
 169              		.thumb
 170              		.thumb_func
 171              		.fpu softvfp
ARM GAS  /tmp/cclQPlWK.s 			page 4


 172              		.type	_ZN9IPAddressaSEm, %function
 173              	_ZN9IPAddressaSEm:
 174              		@ args = 0, pretend = 0, frame = 0
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176              		@ link register save eliminated.
 177 0000 0160     		str	r1, [r0]
 178 0002 7047     		bx	lr
 179              		.size	_ZN9IPAddressaSEm, .-_ZN9IPAddressaSEm
 180              		.section	.text._ZNK9IPAddresseqEPKh,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	_ZNK9IPAddresseqEPKh
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu softvfp
 188              		.type	_ZNK9IPAddresseqEPKh, %function
 189              	_ZNK9IPAddresseqEPKh:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 08B5     		push	{r3, lr}
 193 0002 0B46     		mov	r3, r1
 194 0004 0422     		movs	r2, #4
 195 0006 0146     		mov	r1, r0
 196 0008 1846     		mov	r0, r3
 197 000a FFF7FEFF 		bl	memcmp
 198 000e B0FA80F0 		clz	r0, r0
 199 0012 4009     		lsrs	r0, r0, #5
 200 0014 08BD     		pop	{r3, pc}
 201              		.size	_ZNK9IPAddresseqEPKh, .-_ZNK9IPAddresseqEPKh
 202 0016 00BF     		.section	.text.startup._GLOBAL__sub_I__ZN9IPAddressC2Ev,"ax",%progbits
 203              		.align	1
 204              		.p2align 2,,3
 205              		.syntax unified
 206              		.thumb
 207              		.thumb_func
 208              		.fpu softvfp
 209              		.type	_GLOBAL__sub_I__ZN9IPAddressC2Ev, %function
 210              	_GLOBAL__sub_I__ZN9IPAddressC2Ev:
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213              		@ link register save eliminated.
 214 0000 7047     		bx	lr
 215              		.size	_GLOBAL__sub_I__ZN9IPAddressC2Ev, .-_GLOBAL__sub_I__ZN9IPAddressC2Ev
 216 0002 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
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
 227              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
