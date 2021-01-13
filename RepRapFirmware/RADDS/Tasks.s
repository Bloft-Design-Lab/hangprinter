ARM GAS  /tmp/ccuxsu0r.s 			page 1


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
  11              		.file	"Tasks.cpp"
  12              		.section	.text.AppMain,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	AppMain
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	AppMain, %function
  21              	AppMain:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 0020     		movs	r0, #0
  26 0004 FFF7FEFF 		bl	sbrk
  27 0008 6A46     		mov	r2, sp
  28 000a 00F11003 		add	r3, r0, #16
  29 000e 9A42     		cmp	r2, r3
  30 0010 06D9     		bls	.L4
  31 0012 A522     		movs	r2, #165
  32 0014 ADF11003 		sub	r3, sp, #16
  33              	.L5:
  34 0018 00F8012B 		strb	r2, [r0], #1
  35 001c 8342     		cmp	r3, r0
  36 001e FBD1     		bne	.L5
  37              	.L4:
  38 0020 074A     		ldr	r2, .L9
  39 0022 0849     		ldr	r1, .L9+4
  40 0024 5369     		ldr	r3, [r2, #20]
  41 0026 084C     		ldr	r4, .L9+8
  42 0028 43F01003 		orr	r3, r3, #16
  43 002c 5361     		str	r3, [r2, #20]
  44 002e 0748     		ldr	r0, .L9+12
  45 0030 8C60     		str	r4, [r1, #8]
  46 0032 FFF7FEFF 		bl	_ZN6RepRap4InitEv
  47 0036 054C     		ldr	r4, .L9+12
  48              	.L3:
  49 0038 2046     		mov	r0, r4
  50 003a FFF7FEFF 		bl	_ZN6RepRap4SpinEv
  51 003e FBE7     		b	.L3
  52              	.L10:
  53              		.align	2
  54              	.L9:
  55 0040 00ED00E0 		.word	-536810240
  56 0044 001A0E40 		.word	1074665984
  57 0048 010000A5 		.word	-1526726655
ARM GAS  /tmp/ccuxsu0r.s 			page 2


  58 004c 00000000 		.word	reprap
  59              		.size	AppMain, .-AppMain
  60              		.section	.text._ZN5Tasks15GetNeverUsedRamEv,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_ZN5Tasks15GetNeverUsedRamEv
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu softvfp
  68              		.type	_ZN5Tasks15GetNeverUsedRamEv, %function
  69              	_ZN5Tasks15GetNeverUsedRamEv:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72 0000 10B5     		push	{r4, lr}
  73 0002 0020     		movs	r0, #0
  74 0004 FFF7FEFF 		bl	sbrk
  75 0008 6B46     		mov	r3, sp
  76 000a 8342     		cmp	r3, r0
  77 000c 0FD9     		bls	.L17
  78 000e 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
  79 0010 A52B     		cmp	r3, #165
  80 0012 0CD1     		bne	.L17
  81 0014 431C     		adds	r3, r0, #1
  82 0016 6C46     		mov	r4, sp
  83 0018 03E0     		b	.L14
  84              	.L15:
  85 001a 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
  86 001c A529     		cmp	r1, #165
  87 001e 04D1     		bne	.L21
  88 0020 1346     		mov	r3, r2
  89              	.L14:
  90 0022 A342     		cmp	r3, r4
  91 0024 03F10102 		add	r2, r3, #1
  92 0028 F7D1     		bne	.L15
  93              	.L21:
  94 002a 181A     		subs	r0, r3, r0
  95 002c 10BD     		pop	{r4, pc}
  96              	.L17:
  97 002e 0020     		movs	r0, #0
  98 0030 10BD     		pop	{r4, pc}
  99              		.size	_ZN5Tasks15GetNeverUsedRamEv, .-_ZN5Tasks15GetNeverUsedRamEv
 100 0032 00BF     		.section	.text._ZN5Tasks11DiagnosticsE11MessageType,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	_ZN5Tasks11DiagnosticsE11MessageType
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu softvfp
 108              		.type	_ZN5Tasks11DiagnosticsE11MessageType, %function
 109              	_ZN5Tasks11DiagnosticsE11MessageType:
 110              		@ args = 0, pretend = 0, frame = 40
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 113 0002 0746     		mov	r7, r0
 114 0004 224B     		ldr	r3, .L32
ARM GAS  /tmp/ccuxsu0r.s 			page 3


 115 0006 8DB0     		sub	sp, sp, #52
 116 0008 1E68     		ldr	r6, [r3]
 117 000a 0146     		mov	r1, r0
 118 000c 214A     		ldr	r2, .L32+4
 119 000e 3046     		mov	r0, r6
 120 0010 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 121 0014 3946     		mov	r1, r7
 122 0016 204B     		ldr	r3, .L32+8
 123 0018 204A     		ldr	r2, .L32+12
 124 001a 3046     		mov	r0, r6
 125 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 126 0020 02A8     		add	r0, sp, #8
 127 0022 FFF7FEFF 		bl	mallinfo
 128 0026 0A9A     		ldr	r2, [sp, #40]
 129 0028 099B     		ldr	r3, [sp, #36]
 130 002a 3046     		mov	r0, r6
 131 002c 3946     		mov	r1, r7
 132 002e 0092     		str	r2, [sp]
 133 0030 1B4A     		ldr	r2, .L32+16
 134 0032 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 135 0036 0020     		movs	r0, #0
 136 0038 FFF7FEFF 		bl	sbrk
 137 003c EE46     		mov	lr, sp
 138 003e 7045     		cmp	r0, lr
 139 0040 22D2     		bcs	.L30
 140 0042 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 141 0044 A52B     		cmp	r3, #165
 142 0046 1FD1     		bne	.L30
 143 0048 421C     		adds	r2, r0, #1
 144 004a 6D46     		mov	r5, sp
 145 004c 03E0     		b	.L26
 146              	.L27:
 147 004e 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 148 0050 A52C     		cmp	r4, #165
 149 0052 04D1     		bne	.L31
 150 0054 0A46     		mov	r2, r1
 151              	.L26:
 152 0056 AA42     		cmp	r2, r5
 153 0058 02F10101 		add	r1, r2, #1
 154 005c F7D1     		bne	.L27
 155              	.L31:
 156 005e 1146     		mov	r1, r2
 157 0060 141A     		subs	r4, r2, r0
 158              	.L24:
 159 0062 104B     		ldr	r3, .L32+20
 160 0064 3046     		mov	r0, r6
 161 0066 591A     		subs	r1, r3, r1
 162 0068 0091     		str	r1, [sp]
 163 006a A3EB0E03 		sub	r3, r3, lr
 164 006e 3946     		mov	r1, r7
 165 0070 0D4A     		ldr	r2, .L32+24
 166 0072 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 167 0076 2346     		mov	r3, r4
 168 0078 3946     		mov	r1, r7
 169 007a 3046     		mov	r0, r6
 170 007c 0B4A     		ldr	r2, .L32+28
 171 007e 0DB0     		add	sp, sp, #52
ARM GAS  /tmp/ccuxsu0r.s 			page 4


 172              		@ sp needed
 173 0080 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 174 0084 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 175              	.L30:
 176 0088 0146     		mov	r1, r0
 177 008a 0024     		movs	r4, #0
 178 008c E9E7     		b	.L24
 179              	.L33:
 180 008e 00BF     		.align	2
 181              	.L32:
 182 0090 00000000 		.word	reprap
 183 0094 00000000 		.word	.LC0
 184 0098 0000F9DF 		.word	_end-537329664
 185 009c 10000000 		.word	.LC1
 186 00a0 20000000 		.word	.LC2
 187 00a4 00000000 		.word	_estack
 188 00a8 48000000 		.word	.LC3
 189 00ac 74000000 		.word	.LC4
 190              		.size	_ZN5Tasks11DiagnosticsE11MessageType, .-_ZN5Tasks11DiagnosticsE11MessageType
 191              		.section	.text._ZN5Tasks11GetSpiMutexEv,"ax",%progbits
 192              		.align	1
 193              		.p2align 2,,3
 194              		.global	_ZN5Tasks11GetSpiMutexEv
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu softvfp
 199              		.type	_ZN5Tasks11GetSpiMutexEv, %function
 200              	_ZN5Tasks11GetSpiMutexEv:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              		@ link register save eliminated.
 204 0000 0020     		movs	r0, #0
 205 0002 7047     		bx	lr
 206              		.size	_ZN5Tasks11GetSpiMutexEv, .-_ZN5Tasks11GetSpiMutexEv
 207              		.section	.text.sysTickHook,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	sysTickHook
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu softvfp
 215              		.type	sysTickHook, %function
 216              	sysTickHook:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219 0000 08B5     		push	{r3, lr}
 220 0002 0248     		ldr	r0, .L37
 221 0004 FFF7FEFF 		bl	_ZN6RepRap4TickEv
 222 0008 0020     		movs	r0, #0
 223 000a 08BD     		pop	{r3, pc}
 224              	.L38:
 225              		.align	2
 226              	.L37:
 227 000c 00000000 		.word	reprap
 228              		.size	sysTickHook, .-sysTickHook
ARM GAS  /tmp/ccuxsu0r.s 			page 5


 229              		.section	.text.hardFaultDispatcher,"ax",%progbits
 230              		.align	1
 231              		.p2align 2,,3
 232              		.global	hardFaultDispatcher
 233              		.syntax unified
 234              		.thumb
 235              		.thumb_func
 236              		.fpu softvfp
 237              		.type	hardFaultDispatcher, %function
 238              	hardFaultDispatcher:
 239              		@ args = 0, pretend = 0, frame = 0
 240              		@ frame_needed = 0, uses_anonymous_args = 0
 241              		@ link register save eliminated.
 242 0000 034B     		ldr	r3, .L40
 243 0002 00F11402 		add	r2, r0, #20
 244 0006 3021     		movs	r1, #48
 245 0008 1868     		ldr	r0, [r3]
 246 000a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 247              	.L41:
 248 000e 00BF     		.align	2
 249              	.L40:
 250 0010 00000000 		.word	reprap
 251              		.size	hardFaultDispatcher, .-hardFaultDispatcher
 252              		.section	.text.HardFault_Handler,"ax",%progbits
 253              		.align	1
 254              		.p2align 2,,3
 255              		.global	HardFault_Handler
 256              		.syntax unified
 257              		.thumb
 258              		.thumb_func
 259              		.fpu softvfp
 260              		.type	HardFault_Handler, %function
 261              	HardFault_Handler:
 262              		@ Naked Function: prologue and epilogue provided by programmer.
 263              		@ args = 0, pretend = 0, frame = 0
 264              		@ frame_needed = 0, uses_anonymous_args = 0
 265              		.syntax unified
 266              	@ 305 "../src/Tasks.cpp" 1
 267 0000 1EF0040F 		 tst lr, #4                                                
 268 0004 0CBF     	 ite eq                                                    
 269 0006 EFF30880 	 mrseq r0, msp                                             
 270 000a EFF30980 	 mrsne r0, psp                                             
 271 000e DFF80420 	 ldr r2, handler_hf_address_const                          
 272 0012 1047     	 bx r2                                                     
 273 0014 00000000 	 handler_hf_address_const: .word hardFaultDispatcher       
 274              	
 275              	@ 0 "" 2
 276              		.thumb
 277              		.syntax unified
 278              		.size	HardFault_Handler, .-HardFault_Handler
 279              		.section	.text.wdtFaultDispatcher,"ax",%progbits
 280              		.align	1
 281              		.p2align 2,,3
 282              		.global	wdtFaultDispatcher
 283              		.syntax unified
 284              		.thumb
 285              		.thumb_func
ARM GAS  /tmp/ccuxsu0r.s 			page 6


 286              		.fpu softvfp
 287              		.type	wdtFaultDispatcher, %function
 288              	wdtFaultDispatcher:
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291              		@ link register save eliminated.
 292 0000 034B     		ldr	r3, .L44
 293 0002 00F11402 		add	r2, r0, #20
 294 0006 5021     		movs	r1, #80
 295 0008 1868     		ldr	r0, [r3]
 296 000a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 297              	.L45:
 298 000e 00BF     		.align	2
 299              	.L44:
 300 0010 00000000 		.word	reprap
 301              		.size	wdtFaultDispatcher, .-wdtFaultDispatcher
 302              		.section	.text.WDT_Handler,"ax",%progbits
 303              		.align	1
 304              		.p2align 2,,3
 305              		.global	WDT_Handler
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu softvfp
 310              		.type	WDT_Handler, %function
 311              	WDT_Handler:
 312              		@ Naked Function: prologue and epilogue provided by programmer.
 313              		@ args = 0, pretend = 0, frame = 0
 314              		@ frame_needed = 0, uses_anonymous_args = 0
 315              		.syntax unified
 316              	@ 325 "../src/Tasks.cpp" 1
 317 0000 1EF0040F 		 tst lr, #4                                                
 318 0004 0CBF     	 ite eq                                                    
 319 0006 EFF30880 	 mrseq r0, msp                                             
 320 000a EFF30980 	 mrsne r0, psp                                             
 321 000e DFF80420 	 ldr r2, handler_wdt_address_const                         
 322 0012 1047     	 bx r2                                                     
 323 0014 00000000 	 handler_wdt_address_const: .word wdtFaultDispatcher       
 324              	
 325              	@ 0 "" 2
 326              		.thumb
 327              		.syntax unified
 328              		.size	WDT_Handler, .-WDT_Handler
 329              		.section	.text.otherFaultDispatcher,"ax",%progbits
 330              		.align	1
 331              		.p2align 2,,3
 332              		.global	otherFaultDispatcher
 333              		.syntax unified
 334              		.thumb
 335              		.thumb_func
 336              		.fpu softvfp
 337              		.type	otherFaultDispatcher, %function
 338              	otherFaultDispatcher:
 339              		@ args = 0, pretend = 0, frame = 0
 340              		@ frame_needed = 0, uses_anonymous_args = 0
 341              		@ link register save eliminated.
 342 0000 034B     		ldr	r3, .L48
ARM GAS  /tmp/ccuxsu0r.s 			page 7


 343 0002 00F11402 		add	r2, r0, #20
 344 0006 7021     		movs	r1, #112
 345 0008 1868     		ldr	r0, [r3]
 346 000a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 347              	.L49:
 348 000e 00BF     		.align	2
 349              	.L48:
 350 0010 00000000 		.word	reprap
 351              		.size	otherFaultDispatcher, .-otherFaultDispatcher
 352              		.section	.text.OtherFault_Handler,"ax",%progbits
 353              		.align	1
 354              		.p2align 2,,3
 355              		.global	OtherFault_Handler
 356              		.syntax unified
 357              		.thumb
 358              		.thumb_func
 359              		.fpu softvfp
 360              		.type	OtherFault_Handler, %function
 361              	OtherFault_Handler:
 362              		@ Naked Function: prologue and epilogue provided by programmer.
 363              		@ args = 0, pretend = 0, frame = 0
 364              		@ frame_needed = 0, uses_anonymous_args = 0
 365              		.syntax unified
 366              	@ 347 "../src/Tasks.cpp" 1
 367 0000 1EF0040F 		 tst lr, #4                                                
 368 0004 0CBF     	 ite eq                                                    
 369 0006 EFF30880 	 mrseq r0, msp                                             
 370 000a EFF30980 	 mrsne r0, psp                                             
 371 000e DFF80420 	 ldr r2, handler_oflt_address_const                        
 372 0012 1047     	 bx r2                                                     
 373 0014 00000000 	 handler_oflt_address_const: .word otherFaultDispatcher    
 374              	
 375              	@ 0 "" 2
 376              		.thumb
 377              		.syntax unified
 378              		.size	OtherFault_Handler, .-OtherFault_Handler
 379              		.global	DebugMon_Handler
 380              		.thumb_set DebugMon_Handler,OtherFault_Handler
 381              		.section	.text.NMI_Handler,"ax",%progbits
 382              		.align	1
 383              		.p2align 2,,3
 384              		.global	NMI_Handler
 385              		.syntax unified
 386              		.thumb
 387              		.thumb_func
 388              		.fpu softvfp
 389              		.type	NMI_Handler, %function
 390              	NMI_Handler:
 391              		@ args = 0, pretend = 0, frame = 0
 392              		@ frame_needed = 0, uses_anonymous_args = 0
 393              		@ link register save eliminated.
 394 0000 024B     		ldr	r3, .L52
 395 0002 0022     		movs	r2, #0
 396 0004 1868     		ldr	r0, [r3]
 397 0006 2021     		movs	r1, #32
 398 0008 FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 399              	.L53:
ARM GAS  /tmp/ccuxsu0r.s 			page 8


 400              		.align	2
 401              	.L52:
 402 000c 00000000 		.word	reprap
 403              		.size	NMI_Handler, .-NMI_Handler
 404              		.section	.text.UsageFault_Handler,"ax",%progbits
 405              		.align	1
 406              		.p2align 2,,3
 407              		.global	UsageFault_Handler
 408              		.syntax unified
 409              		.thumb
 410              		.thumb_func
 411              		.fpu softvfp
 412              		.type	UsageFault_Handler, %function
 413              	UsageFault_Handler:
 414              		@ args = 0, pretend = 0, frame = 0
 415              		@ frame_needed = 0, uses_anonymous_args = 0
 416              		@ link register save eliminated.
 417 0000 024B     		ldr	r3, .L55
 418 0002 0022     		movs	r2, #0
 419 0004 1868     		ldr	r0, [r3]
 420 0006 6021     		movs	r1, #96
 421 0008 FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 422              	.L56:
 423              		.align	2
 424              	.L55:
 425 000c 00000000 		.word	reprap
 426              		.size	UsageFault_Handler, .-UsageFault_Handler
 427              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 428              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 429              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 430              	_ZL28cpu_irq_prev_interrupt_state:
 431 0000 00       		.space	1
 432              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 433              		.align	2
 434              		.type	_ZL32cpu_irq_critical_section_counter, %object
 435              		.size	_ZL32cpu_irq_critical_section_counter, 4
 436              	_ZL32cpu_irq_critical_section_counter:
 437 0000 00000000 		.space	4
 438              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 439              		.align	2
 440              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 441              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 442              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 443 0000 00000000 		.space	4
 444              		.section	.rodata._ZN5Tasks11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 445              		.align	2
 446              	.LC0:
 447 0000 3D3D3D20 		.ascii	"=== System ===\012\000"
 447      53797374 
 447      656D203D 
 447      3D3D0A00 
 448              	.LC1:
 449 0010 53746174 		.ascii	"Static ram: %d\012\000"
 449      69632072 
 449      616D3A20 
 449      25640A00 
 450              	.LC2:
ARM GAS  /tmp/ccuxsu0r.s 			page 9


 451 0020 44796E61 		.ascii	"Dynamic ram: %d of which %d recycled\012\000"
 451      6D696320 
 451      72616D3A 
 451      20256420 
 451      6F662077 
 452 0046 0000     		.space	2
 453              	.LC3:
 454 0048 53746163 		.ascii	"Stack ram used: %lu current, %lu maximum\012\000"
 454      6B207261 
 454      6D207573 
 454      65643A20 
 454      256C7520 
 455 0072 0000     		.space	2
 456              	.LC4:
 457 0074 4E657665 		.ascii	"Never used ram: %lu\012\000"
 457      72207573 
 457      65642072 
 457      616D3A20 
 457      256C750A 
 458              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
