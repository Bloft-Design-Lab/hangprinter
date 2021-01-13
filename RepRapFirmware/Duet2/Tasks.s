ARM GAS  /tmp/ccTRTwul.s 			page 1


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
  13              		.file	"Tasks.cpp"
  14              		.section	.text.AppMain,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	AppMain
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	AppMain, %function
  23              	AppMain:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 38B5     		push	{r3, r4, r5, lr}
  27 0002 0020     		movs	r0, #0
  28 0004 FFF7FEFF 		bl	sbrk
  29 0008 6A46     		mov	r2, sp
  30 000a 00F11003 		add	r3, r0, #16
  31 000e 9A42     		cmp	r2, r3
  32 0010 06D9     		bls	.L2
  33 0012 ADF11002 		sub	r2, sp, #16
  34 0016 A523     		movs	r3, #165
  35              	.L3:
  36 0018 00F8013B 		strb	r3, [r0], #1
  37 001c 9042     		cmp	r0, r2
  38 001e FBD1     		bne	.L3
  39              	.L2:
  40 0020 074A     		ldr	r2, .L8
  41 0022 0849     		ldr	r1, .L8+4
  42 0024 5369     		ldr	r3, [r2, #20]
  43 0026 084D     		ldr	r5, .L8+8
  44 0028 0848     		ldr	r0, .L8+12
  45 002a 43F01003 		orr	r3, r3, #16
  46 002e 5361     		str	r3, [r2, #20]
  47 0030 8D60     		str	r5, [r1, #8]
  48 0032 0446     		mov	r4, r0
  49 0034 FFF7FEFF 		bl	_ZN6RepRap4InitEv
  50              	.L4:
  51 0038 2046     		mov	r0, r4
  52 003a FFF7FEFF 		bl	_ZN6RepRap4SpinEv
  53 003e FBE7     		b	.L4
  54              	.L9:
  55              		.align	2
  56              	.L8:
  57 0040 00ED00E0 		.word	-536810240
ARM GAS  /tmp/ccTRTwul.s 			page 2


  58 0044 00180E40 		.word	1074665472
  59 0048 010000A5 		.word	-1526726655
  60 004c 00000000 		.word	reprap
  61              		.size	AppMain, .-AppMain
  62              		.section	.text._ZN5Tasks15GetNeverUsedRamEv,"ax",%progbits
  63              		.align	1
  64              		.p2align 2,,3
  65              		.global	_ZN5Tasks15GetNeverUsedRamEv
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu fpv4-sp-d16
  70              		.type	_ZN5Tasks15GetNeverUsedRamEv, %function
  71              	_ZN5Tasks15GetNeverUsedRamEv:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74 0000 10B5     		push	{r4, lr}
  75 0002 0020     		movs	r0, #0
  76 0004 FFF7FEFF 		bl	sbrk
  77 0008 6B46     		mov	r3, sp
  78 000a 9842     		cmp	r0, r3
  79 000c 11D2     		bcs	.L16
  80 000e 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
  81 0010 A52B     		cmp	r3, #165
  82 0012 0ED1     		bne	.L16
  83 0014 431C     		adds	r3, r0, #1
  84 0016 6C46     		mov	r4, sp
  85 0018 03E0     		b	.L13
  86              	.L14:
  87 001a 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
  88 001c A529     		cmp	r1, #165
  89 001e 06D1     		bne	.L20
  90 0020 1346     		mov	r3, r2
  91              	.L13:
  92 0022 9C42     		cmp	r4, r3
  93 0024 03F10102 		add	r2, r3, #1
  94 0028 F7D1     		bne	.L14
  95 002a 201A     		subs	r0, r4, r0
  96 002c 10BD     		pop	{r4, pc}
  97              	.L20:
  98 002e 181A     		subs	r0, r3, r0
  99 0030 10BD     		pop	{r4, pc}
 100              	.L16:
 101 0032 0020     		movs	r0, #0
 102 0034 10BD     		pop	{r4, pc}
 103              		.size	_ZN5Tasks15GetNeverUsedRamEv, .-_ZN5Tasks15GetNeverUsedRamEv
 104 0036 00BF     		.section	.text._ZN5Tasks11DiagnosticsE11MessageType,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	_ZN5Tasks11DiagnosticsE11MessageType
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 112              		.type	_ZN5Tasks11DiagnosticsE11MessageType, %function
 113              	_ZN5Tasks11DiagnosticsE11MessageType:
 114              		@ args = 0, pretend = 0, frame = 40
ARM GAS  /tmp/ccTRTwul.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 117 0002 244B     		ldr	r3, .L32
 118 0004 244A     		ldr	r2, .L32+4
 119 0006 1E68     		ldr	r6, [r3]
 120 0008 8DB0     		sub	sp, sp, #52
 121 000a 0746     		mov	r7, r0
 122 000c 0146     		mov	r1, r0
 123 000e 3046     		mov	r0, r6
 124 0010 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 125 0014 3946     		mov	r1, r7
 126 0016 214B     		ldr	r3, .L32+8
 127 0018 214A     		ldr	r2, .L32+12
 128 001a 3046     		mov	r0, r6
 129 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 130 0020 02A8     		add	r0, sp, #8
 131 0022 FFF7FEFF 		bl	mallinfo
 132 0026 DDE90932 		ldrd	r3, r2, [sp, #36]
 133 002a 3046     		mov	r0, r6
 134 002c 0092     		str	r2, [sp]
 135 002e 3946     		mov	r1, r7
 136 0030 1C4A     		ldr	r2, .L32+16
 137 0032 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 138 0036 0020     		movs	r0, #0
 139 0038 FFF7FEFF 		bl	sbrk
 140 003c EC46     		mov	ip, sp
 141 003e 6045     		cmp	r0, ip
 142 0040 24D2     		bcs	.L27
 143 0042 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 144 0044 A52B     		cmp	r3, #165
 145 0046 21D1     		bne	.L27
 146 0048 421C     		adds	r2, r0, #1
 147 004a 6946     		mov	r1, sp
 148 004c 03E0     		b	.L25
 149              	.L26:
 150 004e 1578     		ldrb	r5, [r2]	@ zero_extendqisi2
 151 0050 A52D     		cmp	r5, #165
 152 0052 18D1     		bne	.L31
 153 0054 2246     		mov	r2, r4
 154              	.L25:
 155 0056 9142     		cmp	r1, r2
 156 0058 02F10104 		add	r4, r2, #1
 157 005c F7D1     		bne	.L26
 158 005e 0C1A     		subs	r4, r1, r0
 159              	.L23:
 160 0060 114B     		ldr	r3, .L32+20
 161 0062 124A     		ldr	r2, .L32+24
 162 0064 591A     		subs	r1, r3, r1
 163 0066 0091     		str	r1, [sp]
 164 0068 A3EB0C03 		sub	r3, r3, ip
 165 006c 3946     		mov	r1, r7
 166 006e 3046     		mov	r0, r6
 167 0070 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 168 0074 0E4A     		ldr	r2, .L32+28
 169 0076 2346     		mov	r3, r4
 170 0078 3946     		mov	r1, r7
 171 007a 3046     		mov	r0, r6
ARM GAS  /tmp/ccTRTwul.s 			page 4


 172 007c 0DB0     		add	sp, sp, #52
 173              		@ sp needed
 174 007e BDE8F040 		pop	{r4, r5, r6, r7, lr}
 175 0082 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 176              	.L31:
 177 0086 1146     		mov	r1, r2
 178 0088 141A     		subs	r4, r2, r0
 179 008a E9E7     		b	.L23
 180              	.L27:
 181 008c 0146     		mov	r1, r0
 182 008e 0024     		movs	r4, #0
 183 0090 E6E7     		b	.L23
 184              	.L33:
 185 0092 00BF     		.align	2
 186              	.L32:
 187 0094 00000000 		.word	reprap
 188 0098 00000000 		.word	.LC0
 189 009c 000000E0 		.word	_end-536870912
 190 00a0 10000000 		.word	.LC1
 191 00a4 20000000 		.word	.LC2
 192 00a8 00000000 		.word	_estack
 193 00ac 48000000 		.word	.LC3
 194 00b0 74000000 		.word	.LC4
 195              		.size	_ZN5Tasks11DiagnosticsE11MessageType, .-_ZN5Tasks11DiagnosticsE11MessageType
 196              		.section	.text._ZN5Tasks11GetSpiMutexEv,"ax",%progbits
 197              		.align	1
 198              		.p2align 2,,3
 199              		.global	_ZN5Tasks11GetSpiMutexEv
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu fpv4-sp-d16
 204              		.type	_ZN5Tasks11GetSpiMutexEv, %function
 205              	_ZN5Tasks11GetSpiMutexEv:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208              		@ link register save eliminated.
 209 0000 0020     		movs	r0, #0
 210 0002 7047     		bx	lr
 211              		.size	_ZN5Tasks11GetSpiMutexEv, .-_ZN5Tasks11GetSpiMutexEv
 212              		.section	.text.sysTickHook,"ax",%progbits
 213              		.align	1
 214              		.p2align 2,,3
 215              		.global	sysTickHook
 216              		.syntax unified
 217              		.thumb
 218              		.thumb_func
 219              		.fpu fpv4-sp-d16
 220              		.type	sysTickHook, %function
 221              	sysTickHook:
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224 0000 08B5     		push	{r3, lr}
 225 0002 0248     		ldr	r0, .L37
 226 0004 FFF7FEFF 		bl	_ZN6RepRap4TickEv
 227 0008 0020     		movs	r0, #0
 228 000a 08BD     		pop	{r3, pc}
ARM GAS  /tmp/ccTRTwul.s 			page 5


 229              	.L38:
 230              		.align	2
 231              	.L37:
 232 000c 00000000 		.word	reprap
 233              		.size	sysTickHook, .-sysTickHook
 234              		.section	.text.hardFaultDispatcher,"ax",%progbits
 235              		.align	1
 236              		.p2align 2,,3
 237              		.global	hardFaultDispatcher
 238              		.syntax unified
 239              		.thumb
 240              		.thumb_func
 241              		.fpu fpv4-sp-d16
 242              		.type	hardFaultDispatcher, %function
 243              	hardFaultDispatcher:
 244              		@ args = 0, pretend = 0, frame = 0
 245              		@ frame_needed = 0, uses_anonymous_args = 0
 246              		@ link register save eliminated.
 247 0000 034B     		ldr	r3, .L40
 248 0002 00F11402 		add	r2, r0, #20
 249 0006 3021     		movs	r1, #48
 250 0008 1868     		ldr	r0, [r3]
 251 000a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 252              	.L41:
 253 000e 00BF     		.align	2
 254              	.L40:
 255 0010 00000000 		.word	reprap
 256              		.size	hardFaultDispatcher, .-hardFaultDispatcher
 257              		.section	.text.HardFault_Handler,"ax",%progbits
 258              		.align	1
 259              		.p2align 2,,3
 260              		.global	HardFault_Handler
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu fpv4-sp-d16
 265              		.type	HardFault_Handler, %function
 266              	HardFault_Handler:
 267              		@ Naked Function: prologue and epilogue provided by programmer.
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270              		.syntax unified
 271              	@ 305 "../src/Tasks.cpp" 1
 272 0000 1EF0040F 		 tst lr, #4                                                
 273 0004 0CBF     	 ite eq                                                    
 274 0006 EFF30880 	 mrseq r0, msp                                             
 275 000a EFF30980 	 mrsne r0, psp                                             
 276 000e DFF80420 	 ldr r2, handler_hf_address_const                          
 277 0012 1047     	 bx r2                                                     
 278 0014 00000000 	 handler_hf_address_const: .word hardFaultDispatcher       
 279              	
 280              	@ 0 "" 2
 281              		.thumb
 282              		.syntax unified
 283              		.size	HardFault_Handler, .-HardFault_Handler
 284              		.section	.text.wdtFaultDispatcher,"ax",%progbits
 285              		.align	1
ARM GAS  /tmp/ccTRTwul.s 			page 6


 286              		.p2align 2,,3
 287              		.global	wdtFaultDispatcher
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu fpv4-sp-d16
 292              		.type	wdtFaultDispatcher, %function
 293              	wdtFaultDispatcher:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296              		@ link register save eliminated.
 297 0000 034B     		ldr	r3, .L44
 298 0002 00F11402 		add	r2, r0, #20
 299 0006 5021     		movs	r1, #80
 300 0008 1868     		ldr	r0, [r3]
 301 000a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 302              	.L45:
 303 000e 00BF     		.align	2
 304              	.L44:
 305 0010 00000000 		.word	reprap
 306              		.size	wdtFaultDispatcher, .-wdtFaultDispatcher
 307              		.section	.text.WDT_Handler,"ax",%progbits
 308              		.align	1
 309              		.p2align 2,,3
 310              		.global	WDT_Handler
 311              		.syntax unified
 312              		.thumb
 313              		.thumb_func
 314              		.fpu fpv4-sp-d16
 315              		.type	WDT_Handler, %function
 316              	WDT_Handler:
 317              		@ Naked Function: prologue and epilogue provided by programmer.
 318              		@ args = 0, pretend = 0, frame = 0
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320              		.syntax unified
 321              	@ 325 "../src/Tasks.cpp" 1
 322 0000 1EF0040F 		 tst lr, #4                                                
 323 0004 0CBF     	 ite eq                                                    
 324 0006 EFF30880 	 mrseq r0, msp                                             
 325 000a EFF30980 	 mrsne r0, psp                                             
 326 000e DFF80420 	 ldr r2, handler_wdt_address_const                         
 327 0012 1047     	 bx r2                                                     
 328 0014 00000000 	 handler_wdt_address_const: .word wdtFaultDispatcher       
 329              	
 330              	@ 0 "" 2
 331              		.thumb
 332              		.syntax unified
 333              		.size	WDT_Handler, .-WDT_Handler
 334              		.section	.text.otherFaultDispatcher,"ax",%progbits
 335              		.align	1
 336              		.p2align 2,,3
 337              		.global	otherFaultDispatcher
 338              		.syntax unified
 339              		.thumb
 340              		.thumb_func
 341              		.fpu fpv4-sp-d16
 342              		.type	otherFaultDispatcher, %function
ARM GAS  /tmp/ccTRTwul.s 			page 7


 343              	otherFaultDispatcher:
 344              		@ args = 0, pretend = 0, frame = 0
 345              		@ frame_needed = 0, uses_anonymous_args = 0
 346              		@ link register save eliminated.
 347 0000 034B     		ldr	r3, .L48
 348 0002 00F11402 		add	r2, r0, #20
 349 0006 7021     		movs	r1, #112
 350 0008 1868     		ldr	r0, [r3]
 351 000a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 352              	.L49:
 353 000e 00BF     		.align	2
 354              	.L48:
 355 0010 00000000 		.word	reprap
 356              		.size	otherFaultDispatcher, .-otherFaultDispatcher
 357              		.section	.text.OtherFault_Handler,"ax",%progbits
 358              		.align	1
 359              		.p2align 2,,3
 360              		.global	OtherFault_Handler
 361              		.syntax unified
 362              		.thumb
 363              		.thumb_func
 364              		.fpu fpv4-sp-d16
 365              		.type	OtherFault_Handler, %function
 366              	OtherFault_Handler:
 367              		@ Naked Function: prologue and epilogue provided by programmer.
 368              		@ args = 0, pretend = 0, frame = 0
 369              		@ frame_needed = 0, uses_anonymous_args = 0
 370              		.syntax unified
 371              	@ 347 "../src/Tasks.cpp" 1
 372 0000 1EF0040F 		 tst lr, #4                                                
 373 0004 0CBF     	 ite eq                                                    
 374 0006 EFF30880 	 mrseq r0, msp                                             
 375 000a EFF30980 	 mrsne r0, psp                                             
 376 000e DFF80420 	 ldr r2, handler_oflt_address_const                        
 377 0012 1047     	 bx r2                                                     
 378 0014 00000000 	 handler_oflt_address_const: .word otherFaultDispatcher    
 379              	
 380              	@ 0 "" 2
 381              		.thumb
 382              		.syntax unified
 383              		.size	OtherFault_Handler, .-OtherFault_Handler
 384              		.global	DebugMon_Handler
 385              		.thumb_set DebugMon_Handler,OtherFault_Handler
 386              		.section	.text.NMI_Handler,"ax",%progbits
 387              		.align	1
 388              		.p2align 2,,3
 389              		.global	NMI_Handler
 390              		.syntax unified
 391              		.thumb
 392              		.thumb_func
 393              		.fpu fpv4-sp-d16
 394              		.type	NMI_Handler, %function
 395              	NMI_Handler:
 396              		@ args = 0, pretend = 0, frame = 0
 397              		@ frame_needed = 0, uses_anonymous_args = 0
 398              		@ link register save eliminated.
 399 0000 024B     		ldr	r3, .L52
ARM GAS  /tmp/ccTRTwul.s 			page 8


 400 0002 0022     		movs	r2, #0
 401 0004 1868     		ldr	r0, [r3]
 402 0006 2021     		movs	r1, #32
 403 0008 FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 404              	.L53:
 405              		.align	2
 406              	.L52:
 407 000c 00000000 		.word	reprap
 408              		.size	NMI_Handler, .-NMI_Handler
 409              		.section	.text.UsageFault_Handler,"ax",%progbits
 410              		.align	1
 411              		.p2align 2,,3
 412              		.global	UsageFault_Handler
 413              		.syntax unified
 414              		.thumb
 415              		.thumb_func
 416              		.fpu fpv4-sp-d16
 417              		.type	UsageFault_Handler, %function
 418              	UsageFault_Handler:
 419              		@ args = 0, pretend = 0, frame = 0
 420              		@ frame_needed = 0, uses_anonymous_args = 0
 421              		@ link register save eliminated.
 422 0000 024B     		ldr	r3, .L55
 423 0002 0022     		movs	r2, #0
 424 0004 1868     		ldr	r0, [r3]
 425 0006 6021     		movs	r1, #96
 426 0008 FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 427              	.L56:
 428              		.align	2
 429              	.L55:
 430 000c 00000000 		.word	reprap
 431              		.size	UsageFault_Handler, .-UsageFault_Handler
 432              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 433              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 434              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 435              	_ZL28cpu_irq_prev_interrupt_state:
 436 0000 00       		.space	1
 437              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 438              		.align	2
 439              		.type	_ZL32cpu_irq_critical_section_counter, %object
 440              		.size	_ZL32cpu_irq_critical_section_counter, 4
 441              	_ZL32cpu_irq_critical_section_counter:
 442 0000 00000000 		.space	4
 443              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 444              		.align	2
 445              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 446              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 447              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 448 0000 00000000 		.space	4
 449              		.section	.rodata._ZN5Tasks11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 450              		.align	2
 451              	.LC0:
 452 0000 3D3D3D20 		.ascii	"=== System ===\012\000"
 452      53797374 
 452      656D203D 
 452      3D3D0A00 
 453              	.LC1:
ARM GAS  /tmp/ccTRTwul.s 			page 9


 454 0010 53746174 		.ascii	"Static ram: %d\012\000"
 454      69632072 
 454      616D3A20 
 454      25640A00 
 455              	.LC2:
 456 0020 44796E61 		.ascii	"Dynamic ram: %d of which %d recycled\012\000"
 456      6D696320 
 456      72616D3A 
 456      20256420 
 456      6F662077 
 457 0046 0000     		.space	2
 458              	.LC3:
 459 0048 53746163 		.ascii	"Stack ram used: %lu current, %lu maximum\012\000"
 459      6B207261 
 459      6D207573 
 459      65643A20 
 459      256C7520 
 460 0072 0000     		.space	2
 461              	.LC4:
 462 0074 4E657665 		.ascii	"Never used ram: %lu\012\000"
 462      72207573 
 462      65642072 
 462      616D3A20 
 462      256C750A 
 463              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
