ARM GAS  /tmp/ccgK94WH.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"SharedSpi.cpp"
  12              		.section	.text.sspi_master_init,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	sspi_master_init
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	sspi_master_init, %function
  21              	sspi_master_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  25 0002 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
  26 0004 174D     		ldr	r5, .L7
  27 0006 002B     		cmp	r3, #0
  28 0008 0446     		mov	r4, r0
  29 000a 18BF     		it	ne
  30 000c 0321     		movne	r1, #3
  31 000e 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
  32 0010 08BF     		it	eq
  33 0012 0421     		moveq	r1, #4
  34 0014 0022     		movs	r2, #0
  35 0016 FFF7FEFF 		bl	pinModeDuet
  36 001a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
  37 001c FBB9     		cbnz	r3, .L3
  38 001e 1248     		ldr	r0, .L7+4
  39 0020 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  40 0024 1148     		ldr	r0, .L7+8
  41 0026 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  42 002a 1148     		ldr	r0, .L7+12
  43 002c FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  44 0030 0E20     		movs	r0, #14
  45 0032 FFF7FEFF 		bl	pmc_enable_periph_clk
  46 0036 0F4B     		ldr	r3, .L7+16
  47 0038 0F4A     		ldr	r2, .L7+20
  48 003a 1049     		ldr	r1, .L7+24
  49 003c CE20     		movs	r0, #206
  50 003e 4FF0FF37 		mov	r7, #-1
  51 0042 AC26     		movs	r6, #172
  52 0044 DF60     		str	r7, [r3, #12]
  53 0046 1E60     		str	r6, [r3]
  54 0048 5860     		str	r0, [r3, #4]
  55 004a 1268     		ldr	r2, [r2]
  56 004c A1FB0212 		umull	r1, r2, r1, r2
  57 0050 920C     		lsrs	r2, r2, #18
ARM GAS  /tmp/ccgK94WH.s 			page 2


  58 0052 4FF4D670 		mov	r0, #428
  59 0056 0121     		movs	r1, #1
  60 0058 1A62     		str	r2, [r3, #32]
  61 005a 1860     		str	r0, [r3]
  62 005c 2970     		strb	r1, [r5]
  63              	.L3:
  64 005e C023     		movs	r3, #192
  65 0060 A370     		strb	r3, [r4, #2]
  66 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  67              	.L8:
  68              		.align	2
  69              	.L7:
  70 0064 00000000 		.word	.LANCHOR0
  71 0068 38000000 		.word	g_APinDescription+56
  72 006c A8000000 		.word	g_APinDescription+168
  73 0070 8C000000 		.word	g_APinDescription+140
  74 0074 00400240 		.word	1073889280
  75 0078 00000000 		.word	SystemCoreClock
  76 007c 83DE1B43 		.word	1125899907
  77              		.size	sspi_master_init, .-sspi_master_init
  78              		.section	.text.sspi_master_setup_device,"ax",%progbits
  79              		.align	1
  80              		.p2align 2,,3
  81              		.global	sspi_master_setup_device
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu softvfp
  86              		.type	sspi_master_setup_device, %function
  87              	sspi_master_setup_device:
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90              		@ link register save eliminated.
  91 0000 30B4     		push	{r4, r5}
  92 0002 0E49     		ldr	r1, .L14
  93 0004 0E4A     		ldr	r2, .L14+4
  94 0006 0F4C     		ldr	r4, .L14+8
  95 0008 0F4B     		ldr	r3, .L14+12
  96 000a A025     		movs	r5, #160
  97 000c 0D60     		str	r5, [r1]
  98 000e 4568     		ldr	r5, [r0, #4]
  99 0010 1268     		ldr	r2, [r2]
 100 0012 B2FBF5F2 		udiv	r2, r2, r5
 101 0016 0A62     		str	r2, [r1, #32]
 102 0018 C278     		ldrb	r2, [r0, #3]	@ zero_extendqisi2
 103 001a 12F0020F 		tst	r2, #2
 104 001e 18BF     		it	ne
 105 0020 2346     		movne	r3, r4
 106 0022 D207     		lsls	r2, r2, #31
 107 0024 054A     		ldr	r2, .L14
 108 0026 58BF     		it	pl
 109 0028 43F48073 		orrpl	r3, r3, #256
 110 002c 0C20     		movs	r0, #12
 111 002e 5021     		movs	r1, #80
 112 0030 5360     		str	r3, [r2, #4]
 113 0032 30BC     		pop	{r4, r5}
 114 0034 1060     		str	r0, [r2]
ARM GAS  /tmp/ccgK94WH.s 			page 3


 115 0036 1160     		str	r1, [r2]
 116 0038 7047     		bx	lr
 117              	.L15:
 118 003a 00BF     		.align	2
 119              	.L14:
 120 003c 00400240 		.word	1073889280
 121 0040 00000000 		.word	SystemCoreClock
 122 0044 CE000500 		.word	327886
 123 0048 CE000400 		.word	262350
 124              		.size	sspi_master_setup_device, .-sspi_master_setup_device
 125              		.section	.text.sspi_select_device,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	sspi_select_device
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu softvfp
 133              		.type	sspi_select_device, %function
 134              	sspi_select_device:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137              		@ link register save eliminated.
 138 0000 4178     		ldrb	r1, [r0, #1]	@ zero_extendqisi2
 139 0002 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 140 0004 FFF7FEBF 		b	digitalWrite
 141              		.size	sspi_select_device, .-sspi_select_device
 142              		.section	.text.sspi_deselect_device,"ax",%progbits
 143              		.align	1
 144              		.p2align 2,,3
 145              		.global	sspi_deselect_device
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu softvfp
 150              		.type	sspi_deselect_device, %function
 151              	sspi_deselect_device:
 152              		@ args = 0, pretend = 0, frame = 0
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154 0000 70B5     		push	{r4, r5, r6, lr}
 155 0002 0A4D     		ldr	r5, .L23
 156 0004 0646     		mov	r6, r0
 157 0006 43F69924 		movw	r4, #15001
 158 000a 01E0     		b	.L19
 159              	.L22:
 160 000c 013C     		subs	r4, r4, #1
 161 000e 04D0     		beq	.L18
 162              	.L19:
 163 0010 2846     		mov	r0, r5
 164 0012 FFF7FEFF 		bl	usart_is_tx_empty
 165 0016 0028     		cmp	r0, #0
 166 0018 F8D0     		beq	.L22
 167              	.L18:
 168 001a 7178     		ldrb	r1, [r6, #1]	@ zero_extendqisi2
 169 001c 3078     		ldrb	r0, [r6]	@ zero_extendqisi2
 170 001e 81F00101 		eor	r1, r1, #1
 171 0022 BDE87040 		pop	{r4, r5, r6, lr}
ARM GAS  /tmp/ccgK94WH.s 			page 4


 172 0026 FFF7FEBF 		b	digitalWrite
 173              	.L24:
 174 002a 00BF     		.align	2
 175              	.L23:
 176 002c 00400240 		.word	1073889280
 177              		.size	sspi_deselect_device, .-sspi_deselect_device
 178              		.section	.text.sspi_transceive_packet,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	sspi_transceive_packet
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu softvfp
 186              		.type	sspi_transceive_packet, %function
 187              	sspi_transceive_packet:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 191 0004 0E46     		mov	r6, r1
 192 0006 32B3     		cbz	r2, .L26
 193 0008 DFF88090 		ldr	r9, .L56
 194 000c 0546     		mov	r5, r0
 195 000e 9246     		mov	r10, r2
 196 0010 0027     		movs	r7, #0
 197              	.L34:
 198 0012 3DB3     		cbz	r5, .L39
 199 0014 95F80080 		ldrb	r8, [r5]	@ zero_extendqisi2
 200 0018 0135     		adds	r5, r5, #1
 201              	.L27:
 202 001a 43F69824 		movw	r4, #15000
 203 001e 01E0     		b	.L29
 204              	.L52:
 205 0020 013C     		subs	r4, r4, #1
 206 0022 1CD0     		beq	.L32
 207              	.L29:
 208 0024 1948     		ldr	r0, .L56
 209 0026 FFF7FEFF 		bl	usart_is_tx_ready
 210 002a 0028     		cmp	r0, #0
 211 002c F8D0     		beq	.L52
 212 002e C9F81C80 		str	r8, [r9, #28]
 213 0032 6EB1     		cbz	r6, .L38
 214 0034 43F69824 		movw	r4, #15000
 215 0038 01E0     		b	.L33
 216              	.L53:
 217 003a 013C     		subs	r4, r4, #1
 218 003c 0FD0     		beq	.L32
 219              	.L33:
 220 003e 1348     		ldr	r0, .L56
 221 0040 FFF7FEFF 		bl	usart_is_rx_ready
 222 0044 0028     		cmp	r0, #0
 223 0046 F8D0     		beq	.L53
 224 0048 D9F81830 		ldr	r3, [r9, #24]
 225 004c 3370     		strb	r3, [r6]
 226 004e 0136     		adds	r6, r6, #1
 227              	.L38:
 228 0050 0137     		adds	r7, r7, #1
ARM GAS  /tmp/ccgK94WH.s 			page 5


 229 0052 BA45     		cmp	r10, r7
 230 0054 DDD1     		bne	.L34
 231              	.L26:
 232 0056 46B1     		cbz	r6, .L54
 233 0058 0020     		movs	r0, #0
 234 005a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 235              	.L32:
 236 005e 0120     		movs	r0, #1
 237 0060 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 238              	.L39:
 239 0064 4FF0FF08 		mov	r8, #255
 240 0068 D7E7     		b	.L27
 241              	.L54:
 242 006a 084D     		ldr	r5, .L56
 243 006c 43F69924 		movw	r4, #15001
 244 0070 01E0     		b	.L36
 245              	.L55:
 246 0072 013C     		subs	r4, r4, #1
 247 0074 04D0     		beq	.L35
 248              	.L36:
 249 0076 2846     		mov	r0, r5
 250 0078 FFF7FEFF 		bl	usart_is_tx_empty
 251 007c 0028     		cmp	r0, #0
 252 007e F8D0     		beq	.L55
 253              	.L35:
 254 0080 024B     		ldr	r3, .L56
 255 0082 0020     		movs	r0, #0
 256 0084 9B69     		ldr	r3, [r3, #24]
 257 0086 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 258              	.L57:
 259 008a 00BF     		.align	2
 260              	.L56:
 261 008c 00400240 		.word	1073889280
 262              		.size	sspi_transceive_packet, .-sspi_transceive_packet
 263              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 264              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 265              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 266              	_ZL28cpu_irq_prev_interrupt_state:
 267 0000 00       		.space	1
 268              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 269              		.align	2
 270              		.type	_ZL32cpu_irq_critical_section_counter, %object
 271              		.size	_ZL32cpu_irq_critical_section_counter, 4
 272              	_ZL32cpu_irq_critical_section_counter:
 273 0000 00000000 		.space	4
 274              		.section	.bss._ZZ16sspi_master_initE13commsInitDone,"aw",%nobits
 275              		.set	.LANCHOR0,. + 0
 276              		.type	_ZZ16sspi_master_initE13commsInitDone, %object
 277              		.size	_ZZ16sspi_master_initE13commsInitDone, 1
 278              	_ZZ16sspi_master_initE13commsInitDone:
 279 0000 00       		.space	1
 280              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
