ARM GAS  /tmp/ccKfsF3K.s 			page 1


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
  11              		.file	"Network.cpp"
  12              		.section	.text._ZN7Network14EnableProtocolEjiibRK9StringRef,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN7Network14EnableProtocolEjiibRK9StringRef
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN7Network14EnableProtocolEjiibRK9StringRef, %function
  21              	_ZN7Network14EnableProtocolEjiibRK9StringRef:
  22              		@ args = 8, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 08B5     		push	{r3, lr}
  25 0002 0349     		ldr	r1, .L3
  26 0004 0398     		ldr	r0, [sp, #12]
  27 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
  28 000a 0220     		movs	r0, #2
  29 000c 08BD     		pop	{r3, pc}
  30              	.L4:
  31 000e 00BF     		.align	2
  32              	.L3:
  33 0010 00000000 		.word	.LC0
  34              		.size	_ZN7Network14EnableProtocolEjiibRK9StringRef, .-_ZN7Network14EnableProtocolEjiibRK9StringRef
  35              		.section	.text._ZN7Network15DisableProtocolEjiRK9StringRef,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	_ZN7Network15DisableProtocolEjiRK9StringRef
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu softvfp
  43              		.type	_ZN7Network15DisableProtocolEjiRK9StringRef, %function
  44              	_ZN7Network15DisableProtocolEjiRK9StringRef:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47 0000 08B5     		push	{r3, lr}
  48 0002 1846     		mov	r0, r3
  49 0004 0249     		ldr	r1, .L7
  50 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
  51 000a 0220     		movs	r0, #2
  52 000c 08BD     		pop	{r3, pc}
  53              	.L8:
  54 000e 00BF     		.align	2
  55              	.L7:
  56 0010 00000000 		.word	.LC0
  57              		.size	_ZN7Network15DisableProtocolEjiRK9StringRef, .-_ZN7Network15DisableProtocolEjiRK9StringRef
ARM GAS  /tmp/ccKfsF3K.s 			page 2


  58              		.section	.text._ZNK7Network15ReportProtocolsEjRK9StringRef,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.global	_ZNK7Network15ReportProtocolsEjRK9StringRef
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu softvfp
  66              		.type	_ZNK7Network15ReportProtocolsEjRK9StringRef, %function
  67              	_ZNK7Network15ReportProtocolsEjRK9StringRef:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70 0000 08B5     		push	{r3, lr}
  71 0002 1046     		mov	r0, r2
  72 0004 0249     		ldr	r1, .L11
  73 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
  74 000a 0220     		movs	r0, #2
  75 000c 08BD     		pop	{r3, pc}
  76              	.L12:
  77 000e 00BF     		.align	2
  78              	.L11:
  79 0010 00000000 		.word	.LC0
  80              		.size	_ZNK7Network15ReportProtocolsEjRK9StringRef, .-_ZNK7Network15ReportProtocolsEjRK9StringRef
  81              		.section	.text._ZN7Network15EnableInterfaceEjiRK9StringRefS2_,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.global	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu softvfp
  89              		.type	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_, %function
  90              	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_:
  91              		@ args = 4, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93 0000 08B5     		push	{r3, lr}
  94 0002 0349     		ldr	r1, .L15
  95 0004 0298     		ldr	r0, [sp, #8]
  96 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
  97 000a 0220     		movs	r0, #2
  98 000c 08BD     		pop	{r3, pc}
  99              	.L16:
 100 000e 00BF     		.align	2
 101              	.L15:
 102 0010 00000000 		.word	.LC0
 103              		.size	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_, .-_ZN7Network15EnableInterfaceEjiRK9StringRe
 104              		.section	.text._ZN7Network15GetNetworkStateEjRK9StringRef,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	_ZN7Network15GetNetworkStateEjRK9StringRef
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu softvfp
 112              		.type	_ZN7Network15GetNetworkStateEjRK9StringRef, %function
 113              	_ZN7Network15GetNetworkStateEjRK9StringRef:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccKfsF3K.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 08B5     		push	{r3, lr}
 117 0002 1046     		mov	r0, r2
 118 0004 0249     		ldr	r1, .L19
 119 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 120 000a 0220     		movs	r0, #2
 121 000c 08BD     		pop	{r3, pc}
 122              	.L20:
 123 000e 00BF     		.align	2
 124              	.L19:
 125 0010 00000000 		.word	.LC0
 126              		.size	_ZN7Network15GetNetworkStateEjRK9StringRef, .-_ZN7Network15GetNetworkStateEjRK9StringRef
 127              		.section	.text._ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.global	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer
 131              		.syntax unified
 132              		.thumb
 133              		.thumb_func
 134              		.fpu softvfp
 135              		.type	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer, %function
 136              	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer:
 137              		@ args = 0, pretend = 0, frame = 8
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139 0000 00B5     		push	{lr}
 140 0002 83B0     		sub	sp, sp, #12
 141 0004 02A8     		add	r0, sp, #8
 142 0006 40F8041D 		str	r1, [r0, #-4]!
 143 000a FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 144 000e 03B0     		add	sp, sp, #12
 145              		@ sp needed
 146 0010 5DF804FB 		ldr	pc, [sp], #4
 147              		.size	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer, .-_ZN7Network20HandleHttpGCodeReplyEP12Ou
 148              		.section	.text._ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer,"ax",%progbits
 149              		.align	1
 150              		.p2align 2,,3
 151              		.global	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu softvfp
 156              		.type	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer, %function
 157              	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer:
 158              		@ args = 0, pretend = 0, frame = 8
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160 0000 00B5     		push	{lr}
 161 0002 83B0     		sub	sp, sp, #12
 162 0004 02A8     		add	r0, sp, #8
 163 0006 40F8041D 		str	r1, [r0, #-4]!
 164 000a FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 165 000e 03B0     		add	sp, sp, #12
 166              		@ sp needed
 167 0010 5DF804FB 		ldr	pc, [sp], #4
 168              		.size	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer, .-_ZN7Network22HandleTelnetGCodeReplyEP
 169              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 170              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 171              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
ARM GAS  /tmp/ccKfsF3K.s 			page 4


 172              	_ZL28cpu_irq_prev_interrupt_state:
 173 0000 00       		.space	1
 174              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 175              		.align	2
 176              		.type	_ZL32cpu_irq_critical_section_counter, %object
 177              		.size	_ZL32cpu_irq_critical_section_counter, 4
 178              	_ZL32cpu_irq_critical_section_counter:
 179 0000 00000000 		.space	4
 180              		.section	.rodata._ZN7Network14EnableProtocolEjiibRK9StringRef.str1.4,"aMS",%progbits,1
 181              		.align	2
 182              	.LC0:
 183 0000 4E657477 		.ascii	"Networking is not supported on this hardware\000"
 183      6F726B69 
 183      6E672069 
 183      73206E6F 
 183      74207375 
 184              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
