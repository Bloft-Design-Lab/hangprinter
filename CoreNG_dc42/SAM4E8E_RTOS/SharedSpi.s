ARM GAS  /tmp/ccPhyW96.s 			page 1


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
  13              		.file	"SharedSpi.cpp"
  14              		.section	.text.sspi_master_init,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	sspi_master_init
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	sspi_master_init, %function
  23              	sspi_master_init:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  27 0002 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
  28 0004 174D     		ldr	r5, .L7
  29 0006 002B     		cmp	r3, #0
  30 0008 0446     		mov	r4, r0
  31 000a 18BF     		it	ne
  32 000c 0321     		movne	r1, #3
  33 000e 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
  34 0010 08BF     		it	eq
  35 0012 0421     		moveq	r1, #4
  36 0014 0022     		movs	r2, #0
  37 0016 FFF7FEFF 		bl	pinModeDuet
  38 001a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
  39 001c FBB9     		cbnz	r3, .L3
  40 001e 1248     		ldr	r0, .L7+4
  41 0020 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  42 0024 1148     		ldr	r0, .L7+8
  43 0026 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  44 002a 1148     		ldr	r0, .L7+12
  45 002c FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  46 0030 0E20     		movs	r0, #14
  47 0032 FFF7FEFF 		bl	pmc_enable_periph_clk
  48 0036 0F4B     		ldr	r3, .L7+16
  49 0038 0F4A     		ldr	r2, .L7+20
  50 003a 1049     		ldr	r1, .L7+24
  51 003c CE20     		movs	r0, #206
  52 003e 4FF0FF37 		mov	r7, #-1
  53 0042 AC26     		movs	r6, #172
  54 0044 DF60     		str	r7, [r3, #12]
  55 0046 1E60     		str	r6, [r3]
  56 0048 5860     		str	r0, [r3, #4]
  57 004a 1268     		ldr	r2, [r2]
ARM GAS  /tmp/ccPhyW96.s 			page 2


  58 004c A1FB0212 		umull	r1, r2, r1, r2
  59 0050 920C     		lsrs	r2, r2, #18
  60 0052 4FF4D670 		mov	r0, #428
  61 0056 0121     		movs	r1, #1
  62 0058 1A62     		str	r2, [r3, #32]
  63 005a 1860     		str	r0, [r3]
  64 005c 2970     		strb	r1, [r5]
  65              	.L3:
  66 005e C023     		movs	r3, #192
  67 0060 A370     		strb	r3, [r4, #2]
  68 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  69              	.L8:
  70              		.align	2
  71              	.L7:
  72 0064 00000000 		.word	.LANCHOR0
  73 0068 48030000 		.word	g_APinDescription+840
  74 006c F4020000 		.word	g_APinDescription+756
  75 0070 D8020000 		.word	g_APinDescription+728
  76 0074 00000A40 		.word	1074397184
  77 0078 00000000 		.word	SystemCoreClock
  78 007c 83DE1B43 		.word	1125899907
  79              		.size	sspi_master_init, .-sspi_master_init
  80              		.section	.text.sspi_master_setup_device,"ax",%progbits
  81              		.align	1
  82              		.p2align 2,,3
  83              		.global	sspi_master_setup_device
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv4-sp-d16
  88              		.type	sspi_master_setup_device, %function
  89              	sspi_master_setup_device:
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 30B4     		push	{r4, r5}
  94 0002 0E49     		ldr	r1, .L14
  95 0004 0E4A     		ldr	r2, .L14+4
  96 0006 0F4C     		ldr	r4, .L14+8
  97 0008 0F4B     		ldr	r3, .L14+12
  98 000a A025     		movs	r5, #160
  99 000c 0D60     		str	r5, [r1]
 100 000e 4568     		ldr	r5, [r0, #4]
 101 0010 1268     		ldr	r2, [r2]
 102 0012 B2FBF5F2 		udiv	r2, r2, r5
 103 0016 0A62     		str	r2, [r1, #32]
 104 0018 C278     		ldrb	r2, [r0, #3]	@ zero_extendqisi2
 105 001a 12F0020F 		tst	r2, #2
 106 001e 18BF     		it	ne
 107 0020 2346     		movne	r3, r4
 108 0022 D207     		lsls	r2, r2, #31
 109 0024 054A     		ldr	r2, .L14
 110 0026 58BF     		it	pl
 111 0028 43F48073 		orrpl	r3, r3, #256
 112 002c 0C20     		movs	r0, #12
 113 002e 5021     		movs	r1, #80
 114 0030 5360     		str	r3, [r2, #4]
ARM GAS  /tmp/ccPhyW96.s 			page 3


 115 0032 30BC     		pop	{r4, r5}
 116 0034 1060     		str	r0, [r2]
 117 0036 1160     		str	r1, [r2]
 118 0038 7047     		bx	lr
 119              	.L15:
 120 003a 00BF     		.align	2
 121              	.L14:
 122 003c 00000A40 		.word	1074397184
 123 0040 00000000 		.word	SystemCoreClock
 124 0044 CE000500 		.word	327886
 125 0048 CE000400 		.word	262350
 126              		.size	sspi_master_setup_device, .-sspi_master_setup_device
 127              		.section	.text.sspi_select_device,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.global	sspi_select_device
 131              		.syntax unified
 132              		.thumb
 133              		.thumb_func
 134              		.fpu fpv4-sp-d16
 135              		.type	sspi_select_device, %function
 136              	sspi_select_device:
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139              		@ link register save eliminated.
 140 0000 4178     		ldrb	r1, [r0, #1]	@ zero_extendqisi2
 141 0002 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 142 0004 FFF7FEBF 		b	digitalWrite
 143              		.size	sspi_select_device, .-sspi_select_device
 144              		.section	.text.sspi_deselect_device,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	sspi_deselect_device
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	sspi_deselect_device, %function
 153              	sspi_deselect_device:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156 0000 70B5     		push	{r4, r5, r6, lr}
 157 0002 0A4D     		ldr	r5, .L23
 158 0004 0646     		mov	r6, r0
 159 0006 43F69924 		movw	r4, #15001
 160 000a 01E0     		b	.L19
 161              	.L22:
 162 000c 013C     		subs	r4, r4, #1
 163 000e 04D0     		beq	.L18
 164              	.L19:
 165 0010 2846     		mov	r0, r5
 166 0012 FFF7FEFF 		bl	usart_is_tx_empty
 167 0016 0028     		cmp	r0, #0
 168 0018 F8D0     		beq	.L22
 169              	.L18:
 170 001a 7178     		ldrb	r1, [r6, #1]	@ zero_extendqisi2
 171 001c 3078     		ldrb	r0, [r6]	@ zero_extendqisi2
ARM GAS  /tmp/ccPhyW96.s 			page 4


 172 001e 81F00101 		eor	r1, r1, #1
 173 0022 BDE87040 		pop	{r4, r5, r6, lr}
 174 0026 FFF7FEBF 		b	digitalWrite
 175              	.L24:
 176 002a 00BF     		.align	2
 177              	.L23:
 178 002c 00000A40 		.word	1074397184
 179              		.size	sspi_deselect_device, .-sspi_deselect_device
 180              		.section	.text.sspi_transceive_packet,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	sspi_transceive_packet
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu fpv4-sp-d16
 188              		.type	sspi_transceive_packet, %function
 189              	sspi_transceive_packet:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 193 0004 0E46     		mov	r6, r1
 194 0006 32B3     		cbz	r2, .L26
 195 0008 DFF88090 		ldr	r9, .L56
 196 000c 0546     		mov	r5, r0
 197 000e 9246     		mov	r10, r2
 198 0010 0027     		movs	r7, #0
 199              	.L34:
 200 0012 3DB3     		cbz	r5, .L39
 201 0014 95F80080 		ldrb	r8, [r5]	@ zero_extendqisi2
 202 0018 0135     		adds	r5, r5, #1
 203              	.L27:
 204 001a 43F69824 		movw	r4, #15000
 205 001e 01E0     		b	.L29
 206              	.L52:
 207 0020 013C     		subs	r4, r4, #1
 208 0022 1CD0     		beq	.L32
 209              	.L29:
 210 0024 1948     		ldr	r0, .L56
 211 0026 FFF7FEFF 		bl	usart_is_tx_ready
 212 002a 0028     		cmp	r0, #0
 213 002c F8D0     		beq	.L52
 214 002e C9F81C80 		str	r8, [r9, #28]
 215 0032 6EB1     		cbz	r6, .L38
 216 0034 43F69824 		movw	r4, #15000
 217 0038 01E0     		b	.L33
 218              	.L53:
 219 003a 013C     		subs	r4, r4, #1
 220 003c 0FD0     		beq	.L32
 221              	.L33:
 222 003e 1348     		ldr	r0, .L56
 223 0040 FFF7FEFF 		bl	usart_is_rx_ready
 224 0044 0028     		cmp	r0, #0
 225 0046 F8D0     		beq	.L53
 226 0048 D9F81830 		ldr	r3, [r9, #24]
 227 004c 3370     		strb	r3, [r6]
 228 004e 0136     		adds	r6, r6, #1
ARM GAS  /tmp/ccPhyW96.s 			page 5


 229              	.L38:
 230 0050 0137     		adds	r7, r7, #1
 231 0052 BA45     		cmp	r10, r7
 232 0054 DDD1     		bne	.L34
 233              	.L26:
 234 0056 46B1     		cbz	r6, .L54
 235 0058 0020     		movs	r0, #0
 236 005a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 237              	.L32:
 238 005e 0120     		movs	r0, #1
 239 0060 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 240              	.L39:
 241 0064 4FF0FF08 		mov	r8, #255
 242 0068 D7E7     		b	.L27
 243              	.L54:
 244 006a 084D     		ldr	r5, .L56
 245 006c 43F69924 		movw	r4, #15001
 246 0070 01E0     		b	.L36
 247              	.L55:
 248 0072 013C     		subs	r4, r4, #1
 249 0074 04D0     		beq	.L35
 250              	.L36:
 251 0076 2846     		mov	r0, r5
 252 0078 FFF7FEFF 		bl	usart_is_tx_empty
 253 007c 0028     		cmp	r0, #0
 254 007e F8D0     		beq	.L55
 255              	.L35:
 256 0080 024B     		ldr	r3, .L56
 257 0082 0020     		movs	r0, #0
 258 0084 9B69     		ldr	r3, [r3, #24]
 259 0086 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 260              	.L57:
 261 008a 00BF     		.align	2
 262              	.L56:
 263 008c 00000A40 		.word	1074397184
 264              		.size	sspi_transceive_packet, .-sspi_transceive_packet
 265              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 266              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 267              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 268              	_ZL28cpu_irq_prev_interrupt_state:
 269 0000 00       		.space	1
 270              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 271              		.align	2
 272              		.type	_ZL32cpu_irq_critical_section_counter, %object
 273              		.size	_ZL32cpu_irq_critical_section_counter, 4
 274              	_ZL32cpu_irq_critical_section_counter:
 275 0000 00000000 		.space	4
 276              		.section	.bss._ZZ16sspi_master_initE13commsInitDone,"aw",%nobits
 277              		.set	.LANCHOR0,. + 0
 278              		.type	_ZZ16sspi_master_initE13commsInitDone, %object
 279              		.size	_ZZ16sspi_master_initE13commsInitDone, 1
 280              	_ZZ16sspi_master_initE13commsInitDone:
 281 0000 00       		.space	1
 282              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
