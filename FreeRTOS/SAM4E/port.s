ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 1


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
  13              		.file	"port.c"
  14              		.text
  15              		.section	.text.prvPortStartFirstTask,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	prvPortStartFirstTask, %function
  23              	prvPortStartFirstTask:
  24              		@ Naked Function: prologue and epilogue provided by programmer.
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		.syntax unified
  28              	@ 268 "../src/portable/GCC/ARM_CM4F/port.c" 1
  29 0000 0848     		 ldr r0, =0xE000ED08 	
  30 0002 0068     	 ldr r0, [r0] 			
  31 0004 0068     	 ldr r0, [r0] 			
  32 0006 80F30888 	 msr msp, r0			
  33 000a 4FF00000 	 mov r0, #0			
  34 000e 80F31488 	 msr control, r0		
  35 0012 62B6     	 cpsie i				
  36 0014 61B6     	 cpsie f				
  37 0016 BFF34F8F 	 dsb					
  38 001a BFF36F8F 	 isb					
  39 001e 00DF     	 svc 0					
  40 0020 00BF     	 nop					
  41              	
  42              	@ 0 "" 2
  43              		.thumb
  44              		.syntax unified
  45              		.size	prvPortStartFirstTask, .-prvPortStartFirstTask
  46 0022 0000     		.section	.text.vPortEnableVFP,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	vPortEnableVFP, %function
  54              	vPortEnableVFP:
  55              		@ Naked Function: prologue and epilogue provided by programmer.
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 2


  58              		.syntax unified
  59              	@ 704 "../src/portable/GCC/ARM_CM4F/port.c" 1
  60 0000 DFF80C00 			ldr.w r0, =0xE000ED88		
  61 0004 0168     		ldr r1, [r0]				
  62              									
  63 0006 41F47001 		orr r1, r1, #( 0xf << 20 )	
  64 000a 0160     		str r1, [r0]				
  65 000c 7047     		bx r14						
  66              	@ 0 "" 2
  67              		.thumb
  68              		.syntax unified
  69              		.size	vPortEnableVFP, .-vPortEnableVFP
  70 000e 0000     		.section	.text.prvTaskExitError,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	prvTaskExitError, %function
  78              	prvTaskExitError:
  79              		@ args = 0, pretend = 0, frame = 8
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81 0000 00B5     		push	{lr}
  82 0002 0C4B     		ldr	r3, .L13
  83 0004 1B68     		ldr	r3, [r3]
  84 0006 83B0     		sub	sp, sp, #12
  85 0008 0022     		movs	r2, #0
  86 000a 0133     		adds	r3, r3, #1
  87 000c 0192     		str	r2, [sp, #4]
  88 000e 03D0     		beq	.L5
  89 0010 0949     		ldr	r1, .L13+4
  90 0012 E420     		movs	r0, #228
  91 0014 FFF7FEFF 		bl	vAssertCalled
  92              	.L5:
  93              		.syntax unified
  94              	@ 196 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
  95 0018 4FF05003 			mov r3, #80												
  96 001c 83F31188 		msr basepri, r3											
  97 0020 BFF36F8F 		isb														
  98 0024 BFF34F8F 		dsb														
  99              	
 100              	@ 0 "" 2
 101              		.thumb
 102              		.syntax unified
 103              	.L6:
 104 0028 019B     		ldr	r3, [sp, #4]
 105 002a 002B     		cmp	r3, #0
 106 002c FCD0     		beq	.L6
 107 002e 03B0     		add	sp, sp, #12
 108              		@ sp needed
 109 0030 5DF804FB 		ldr	pc, [sp], #4
 110              	.L14:
 111              		.align	2
 112              	.L13:
 113 0034 00000000 		.word	.LANCHOR0
 114 0038 00000000 		.word	.LC0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 3


 115              		.size	prvTaskExitError, .-prvTaskExitError
 116              		.section	.text.pxPortInitialiseStack,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	pxPortInitialiseStack
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu fpv4-sp-d16
 124              		.type	pxPortInitialiseStack, %function
 125              	pxPortInitialiseStack:
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128              		@ link register save eliminated.
 129 0000 30B4     		push	{r4, r5}
 130 0002 21F00101 		bic	r1, r1, #1
 131 0006 4FF08075 		mov	r5, #16777216
 132 000a 074C     		ldr	r4, .L17
 133 000c 40F80C4C 		str	r4, [r0, #-12]
 134 0010 6FF00203 		mvn	r3, #2
 135 0014 40F8202C 		str	r2, [r0, #-32]
 136 0018 40E90215 		strd	r1, r5, [r0, #-8]
 137 001c 40F8243C 		str	r3, [r0, #-36]
 138 0020 30BC     		pop	{r4, r5}
 139 0022 4438     		subs	r0, r0, #68
 140 0024 7047     		bx	lr
 141              	.L18:
 142 0026 00BF     		.align	2
 143              	.L17:
 144 0028 00000000 		.word	prvTaskExitError
 145              		.size	pxPortInitialiseStack, .-pxPortInitialiseStack
 146              		.section	.text.SVC_Handler,"ax",%progbits
 147              		.align	1
 148              		.p2align 2,,3
 149              		.global	SVC_Handler
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv4-sp-d16
 154              		.type	SVC_Handler, %function
 155              	SVC_Handler:
 156              		@ Naked Function: prologue and epilogue provided by programmer.
 157              		@ args = 0, pretend = 0, frame = 0
 158              		@ frame_needed = 0, uses_anonymous_args = 0
 159              		.syntax unified
 160              	@ 245 "../src/portable/GCC/ARM_CM4F/port.c" 1
 161 0000 074B     			ldr	r3, pxCurrentTCBConst2		
 162 0002 1968     		ldr r1, [r3]					
 163 0004 0868     		ldr r0, [r1]					
 164 0006 B0E8F04F 		ldmia r0!, {r4-r11, r14}		
 165 000a 80F30988 		msr psp, r0						
 166 000e BFF36F8F 		isb								
 167 0012 4FF00000 		mov r0, #0 						
 168 0016 80F31188 		msr	basepri, r0					
 169 001a 7047     		bx r14							
 170              										
 171 001c AFF30080 		.align 4						
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 4


 172 0020 00000000 	pxCurrentTCBConst2: .word pxCurrentTCB				
 173              	
 174              	@ 0 "" 2
 175              		.thumb
 176              		.syntax unified
 177              		.size	SVC_Handler, .-SVC_Handler
 178              		.section	.text.vPortEndScheduler,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	vPortEndScheduler
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu fpv4-sp-d16
 186              		.type	vPortEndScheduler, %function
 187              	vPortEndScheduler:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190              		@ link register save eliminated.
 191 0000 054B     		ldr	r3, .L22
 192 0002 1B68     		ldr	r3, [r3]
 193 0004 B3F57A7F 		cmp	r3, #1000
 194 0008 04D0     		beq	.L20
 195 000a 0449     		ldr	r1, .L22+4
 196 000c 4FF4C870 		mov	r0, #400
 197 0010 FFF7FEBF 		b	vAssertCalled
 198              	.L20:
 199 0014 7047     		bx	lr
 200              	.L23:
 201 0016 00BF     		.align	2
 202              	.L22:
 203 0018 00000000 		.word	.LANCHOR0
 204 001c 00000000 		.word	.LC0
 205              		.size	vPortEndScheduler, .-vPortEndScheduler
 206              		.section	.text.vPortEnterCritical,"ax",%progbits
 207              		.align	1
 208              		.p2align 2,,3
 209              		.global	vPortEnterCritical
 210              		.syntax unified
 211              		.thumb
 212              		.thumb_func
 213              		.fpu fpv4-sp-d16
 214              		.type	vPortEnterCritical, %function
 215              	vPortEnterCritical:
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218              		@ link register save eliminated.
 219              		.syntax unified
 220              	@ 196 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 221 0000 4FF05003 			mov r3, #80												
 222 0004 83F31188 		msr basepri, r3											
 223 0008 BFF36F8F 		isb														
 224 000c BFF34F8F 		dsb														
 225              	
 226              	@ 0 "" 2
 227              		.thumb
 228              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 5


 229 0010 084A     		ldr	r2, .L30
 230 0012 1368     		ldr	r3, [r2]
 231 0014 0133     		adds	r3, r3, #1
 232 0016 012B     		cmp	r3, #1
 233 0018 1360     		str	r3, [r2]
 234 001a 00D0     		beq	.L29
 235              	.L24:
 236 001c 7047     		bx	lr
 237              	.L29:
 238 001e 064B     		ldr	r3, .L30+4
 239 0020 1B68     		ldr	r3, [r3]
 240 0022 13F0FF0F 		tst	r3, #255
 241 0026 F9D0     		beq	.L24
 242 0028 0449     		ldr	r1, .L30+8
 243 002a 4FF4D070 		mov	r0, #416
 244 002e FFF7FEBF 		b	vAssertCalled
 245              	.L31:
 246 0032 00BF     		.align	2
 247              	.L30:
 248 0034 00000000 		.word	.LANCHOR0
 249 0038 04ED00E0 		.word	-536810236
 250 003c 00000000 		.word	.LC0
 251              		.size	vPortEnterCritical, .-vPortEnterCritical
 252              		.section	.text.vPortExitCritical,"ax",%progbits
 253              		.align	1
 254              		.p2align 2,,3
 255              		.global	vPortExitCritical
 256              		.syntax unified
 257              		.thumb
 258              		.thumb_func
 259              		.fpu fpv4-sp-d16
 260              		.type	vPortExitCritical, %function
 261              	vPortExitCritical:
 262              		@ args = 0, pretend = 0, frame = 0
 263              		@ frame_needed = 0, uses_anonymous_args = 0
 264 0000 10B5     		push	{r4, lr}
 265 0002 084C     		ldr	r4, .L37
 266 0004 2368     		ldr	r3, [r4]
 267 0006 2BB1     		cbz	r3, .L36
 268              	.L33:
 269 0008 013B     		subs	r3, r3, #1
 270 000a 2360     		str	r3, [r4]
 271 000c 0BB9     		cbnz	r3, .L32
 272              		.syntax unified
 273              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 274 000e 83F31188 			msr basepri, r3	
 275              	@ 0 "" 2
 276              		.thumb
 277              		.syntax unified
 278              	.L32:
 279 0012 10BD     		pop	{r4, pc}
 280              	.L36:
 281 0014 0449     		ldr	r1, .L37+4
 282 0016 40F2A710 		movw	r0, #423
 283 001a FFF7FEFF 		bl	vAssertCalled
 284 001e 2368     		ldr	r3, [r4]
 285 0020 F2E7     		b	.L33
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 6


 286              	.L38:
 287 0022 00BF     		.align	2
 288              	.L37:
 289 0024 00000000 		.word	.LANCHOR0
 290 0028 00000000 		.word	.LC0
 291              		.size	vPortExitCritical, .-vPortExitCritical
 292              		.section	.text.PendSV_Handler,"ax",%progbits
 293              		.align	1
 294              		.p2align 2,,3
 295              		.global	PendSV_Handler
 296              		.syntax unified
 297              		.thumb
 298              		.thumb_func
 299              		.fpu fpv4-sp-d16
 300              		.type	PendSV_Handler, %function
 301              	PendSV_Handler:
 302              		@ Naked Function: prologue and epilogue provided by programmer.
 303              		@ args = 0, pretend = 0, frame = 0
 304              		@ frame_needed = 0, uses_anonymous_args = 0
 305              		.syntax unified
 306              	@ 436 "../src/portable/GCC/ARM_CM4F/port.c" 1
 307 0000 EFF30980 			mrs r0, psp							
 308 0004 BFF36F8F 		isb									
 309              											
 310 0008 154B     		ldr	r3, pxCurrentTCBConst			
 311 000a 1A68     		ldr	r2, [r3]						
 312              											
 313 000c 1EF0100F 		tst r14, #0x10						
 314 0010 08BF     		it eq								
 315 0012 20ED108A 		vstmdbeq r0!, {s16-s31}				
 316              											
 317 0016 20E9F04F 		stmdb r0!, {r4-r11, r14}			
 318 001a 1060     		str r0, [r2]						
 319              											
 320 001c 2DE90900 		stmdb sp!, {r0, r3}					
 321 0020 4FF05000 		mov r0, #80 							
 322 0024 80F31188 		msr basepri, r0						
 323 0028 BFF34F8F 		dsb									
 324 002c BFF36F8F 		isb									
 325 0030 FFF7FEFF 		bl vTaskSwitchContext				
 326 0034 4FF00000 		mov r0, #0							
 327 0038 80F31188 		msr basepri, r0						
 328 003c 09BC     		ldmia sp!, {r0, r3}					
 329              											
 330 003e 1968     		ldr r1, [r3]						
 331 0040 0868     		ldr r0, [r1]						
 332              											
 333 0042 B0E8F04F 		ldmia r0!, {r4-r11, r14}			
 334              											
 335 0046 1EF0100F 		tst r14, #0x10						
 336 004a 08BF     		it eq								
 337 004c B0EC108A 		vldmiaeq r0!, {s16-s31}				
 338              											
 339 0050 80F30988 		msr psp, r0							
 340 0054 BFF36F8F 		isb									
 341              											
 342              											
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 7


 343 0058 7047     		bx r14								
 344              											
 345 005a 00BFAFF3 		.align 4							
 345      0080
 346 0060 00000000 	pxCurrentTCBConst: .word pxCurrentTCB	
 347              	
 348              	@ 0 "" 2
 349              		.thumb
 350              		.syntax unified
 351              		.size	PendSV_Handler, .-PendSV_Handler
 352              		.section	.text.SysTick_Handler,"ax",%progbits
 353              		.align	1
 354              		.p2align 2,,3
 355              		.global	SysTick_Handler
 356              		.syntax unified
 357              		.thumb
 358              		.thumb_func
 359              		.fpu fpv4-sp-d16
 360              		.type	SysTick_Handler, %function
 361              	SysTick_Handler:
 362              		@ args = 0, pretend = 0, frame = 0
 363              		@ frame_needed = 0, uses_anonymous_args = 0
 364 0000 08B5     		push	{r3, lr}
 365              		.syntax unified
 366              	@ 196 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 367 0002 4FF05003 			mov r3, #80												
 368 0006 83F31188 		msr basepri, r3											
 369 000a BFF36F8F 		isb														
 370 000e BFF34F8F 		dsb														
 371              	
 372              	@ 0 "" 2
 373              		.thumb
 374              		.syntax unified
 375 0012 FFF7FEFF 		bl	xTaskIncrementTick
 376 0016 18B1     		cbz	r0, .L41
 377 0018 034B     		ldr	r3, .L46
 378 001a 4FF08052 		mov	r2, #268435456
 379 001e 1A60     		str	r2, [r3]
 380              	.L41:
 381 0020 0023     		movs	r3, #0
 382              		.syntax unified
 383              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 384 0022 83F31188 			msr basepri, r3	
 385              	@ 0 "" 2
 386              		.thumb
 387              		.syntax unified
 388 0026 08BD     		pop	{r3, pc}
 389              	.L47:
 390              		.align	2
 391              	.L46:
 392 0028 04ED00E0 		.word	-536810236
 393              		.size	SysTick_Handler, .-SysTick_Handler
 394              		.section	.text.vPortSetupTimerInterrupt,"ax",%progbits
 395              		.align	1
 396              		.p2align 2,,3
 397              		.weak	vPortSetupTimerInterrupt
 398              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 8


 399              		.thumb
 400              		.thumb_func
 401              		.fpu fpv4-sp-d16
 402              		.type	vPortSetupTimerInterrupt, %function
 403              	vPortSetupTimerInterrupt:
 404              		@ args = 0, pretend = 0, frame = 0
 405              		@ frame_needed = 0, uses_anonymous_args = 0
 406              		@ link register save eliminated.
 407 0000 30B4     		push	{r4, r5}
 408 0002 094A     		ldr	r2, .L50
 409 0004 094D     		ldr	r5, .L50+4
 410 0006 0A4B     		ldr	r3, .L50+8
 411 0008 0A4C     		ldr	r4, .L50+12
 412 000a 0B48     		ldr	r0, .L50+16
 413 000c 0021     		movs	r1, #0
 414 000e 1160     		str	r1, [r2]
 415 0010 2960     		str	r1, [r5]
 416 0012 1B68     		ldr	r3, [r3]
 417 0014 A4FB0313 		umull	r1, r3, r4, r3
 418 0018 9B09     		lsrs	r3, r3, #6
 419 001a 013B     		subs	r3, r3, #1
 420 001c 0721     		movs	r1, #7
 421 001e 0360     		str	r3, [r0]
 422 0020 30BC     		pop	{r4, r5}
 423 0022 1160     		str	r1, [r2]
 424 0024 7047     		bx	lr
 425              	.L51:
 426 0026 00BF     		.align	2
 427              	.L50:
 428 0028 10E000E0 		.word	-536813552
 429 002c 18E000E0 		.word	-536813544
 430 0030 00000000 		.word	SystemCoreClock
 431 0034 D34D6210 		.word	274877907
 432 0038 14E000E0 		.word	-536813548
 433              		.size	vPortSetupTimerInterrupt, .-vPortSetupTimerInterrupt
 434              		.section	.text.xPortStartScheduler,"ax",%progbits
 435              		.align	1
 436              		.p2align 2,,3
 437              		.global	xPortStartScheduler
 438              		.syntax unified
 439              		.thumb
 440              		.thumb_func
 441              		.fpu fpv4-sp-d16
 442              		.type	xPortStartScheduler, %function
 443              	xPortStartScheduler:
 444              		@ args = 0, pretend = 0, frame = 8
 445              		@ frame_needed = 0, uses_anonymous_args = 0
 446 0000 10B5     		push	{r4, lr}
 447 0002 384A     		ldr	r2, .L63
 448 0004 384B     		ldr	r3, .L63+4
 449 0006 1268     		ldr	r2, [r2]
 450 0008 9A42     		cmp	r2, r3
 451 000a 82B0     		sub	sp, sp, #8
 452 000c 5AD0     		beq	.L61
 453 000e 354A     		ldr	r2, .L63
 454 0010 364B     		ldr	r3, .L63+8
 455 0012 1268     		ldr	r2, [r2]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 9


 456 0014 9A42     		cmp	r2, r3
 457 0016 5FD0     		beq	.L62
 458              	.L54:
 459 0018 354B     		ldr	r3, .L63+12
 460 001a 3648     		ldr	r0, .L63+16
 461 001c 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 462 001e 364C     		ldr	r4, .L63+20
 463 0020 D2B2     		uxtb	r2, r2
 464 0022 FF21     		movs	r1, #255
 465 0024 0192     		str	r2, [sp, #4]
 466 0026 1970     		strb	r1, [r3]
 467 0028 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 468 002a DBB2     		uxtb	r3, r3
 469 002c 8DF80330 		strb	r3, [sp, #3]
 470 0030 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 471 0034 9DF80320 		ldrb	r2, [sp, #3]	@ zero_extendqisi2
 472 0038 03F05003 		and	r3, r3, #80
 473 003c 0721     		movs	r1, #7
 474 003e 1206     		lsls	r2, r2, #24
 475 0040 0370     		strb	r3, [r0]
 476 0042 2160     		str	r1, [r4]
 477 0044 37D5     		bpl	.L57
 478 0046 0622     		movs	r2, #6
 479 0048 00E0     		b	.L55
 480              	.L59:
 481 004a 0A46     		mov	r2, r1
 482              	.L55:
 483 004c 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 484 0050 5B00     		lsls	r3, r3, #1
 485 0052 DBB2     		uxtb	r3, r3
 486 0054 8DF80330 		strb	r3, [sp, #3]
 487 0058 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 488 005c 1B06     		lsls	r3, r3, #24
 489 005e 02F1FF31 		add	r1, r2, #-1
 490 0062 F2D4     		bmi	.L59
 491 0064 032A     		cmp	r2, #3
 492 0066 2260     		str	r2, [r4]
 493 0068 25D1     		bne	.L57
 494              	.L56:
 495 006a 0199     		ldr	r1, [sp, #4]
 496 006c 2048     		ldr	r0, .L63+12
 497 006e 234B     		ldr	r3, .L63+24
 498 0070 1202     		lsls	r2, r2, #8
 499 0072 C9B2     		uxtb	r1, r1
 500 0074 02F4E062 		and	r2, r2, #1792
 501 0078 2260     		str	r2, [r4]
 502 007a 0170     		strb	r1, [r0]
 503 007c 1A68     		ldr	r2, [r3]
 504 007e 42F47002 		orr	r2, r2, #15728640
 505 0082 1A60     		str	r2, [r3]
 506 0084 1A68     		ldr	r2, [r3]
 507 0086 42F07042 		orr	r2, r2, #-268435456
 508 008a 1A60     		str	r2, [r3]
 509 008c FFF7FEFF 		bl	vPortSetupTimerInterrupt
 510 0090 1B4B     		ldr	r3, .L63+28
 511 0092 0024     		movs	r4, #0
 512 0094 1C60     		str	r4, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 10


 513 0096 FFF7FEFF 		bl	vPortEnableVFP
 514 009a 1A4A     		ldr	r2, .L63+32
 515 009c 1368     		ldr	r3, [r2]
 516 009e 43F04043 		orr	r3, r3, #-1073741824
 517 00a2 1360     		str	r3, [r2]
 518 00a4 FFF7FEFF 		bl	prvPortStartFirstTask
 519 00a8 FFF7FEFF 		bl	vTaskSwitchContext
 520 00ac FFF7FEFF 		bl	prvTaskExitError
 521 00b0 2046     		mov	r0, r4
 522 00b2 02B0     		add	sp, sp, #8
 523              		@ sp needed
 524 00b4 10BD     		pop	{r4, pc}
 525              	.L57:
 526 00b6 1449     		ldr	r1, .L63+36
 527 00b8 40F25B10 		movw	r0, #347
 528 00bc FFF7FEFF 		bl	vAssertCalled
 529 00c0 2268     		ldr	r2, [r4]
 530 00c2 D2E7     		b	.L56
 531              	.L61:
 532 00c4 1049     		ldr	r1, .L63+36
 533 00c6 40F22910 		movw	r0, #297
 534 00ca FFF7FEFF 		bl	vAssertCalled
 535 00ce 054A     		ldr	r2, .L63
 536 00d0 064B     		ldr	r3, .L63+8
 537 00d2 1268     		ldr	r2, [r2]
 538 00d4 9A42     		cmp	r2, r3
 539 00d6 9FD1     		bne	.L54
 540              	.L62:
 541 00d8 0B49     		ldr	r1, .L63+36
 542 00da 4FF49570 		mov	r0, #298
 543 00de FFF7FEFF 		bl	vAssertCalled
 544 00e2 99E7     		b	.L54
 545              	.L64:
 546              		.align	2
 547              	.L63:
 548 00e4 00ED00E0 		.word	-536810240
 549 00e8 71C20F41 		.word	1091551857
 550 00ec 70C20F41 		.word	1091551856
 551 00f0 00E400E0 		.word	-536812544
 552 00f4 00000000 		.word	.LANCHOR1
 553 00f8 00000000 		.word	.LANCHOR2
 554 00fc 20ED00E0 		.word	-536810208
 555 0100 00000000 		.word	.LANCHOR0
 556 0104 34EF00E0 		.word	-536809676
 557 0108 00000000 		.word	.LC0
 558              		.size	xPortStartScheduler, .-xPortStartScheduler
 559              		.section	.text.vPortValidateInterruptPriority,"ax",%progbits
 560              		.align	1
 561              		.p2align 2,,3
 562              		.global	vPortValidateInterruptPriority
 563              		.syntax unified
 564              		.thumb
 565              		.thumb_func
 566              		.fpu fpv4-sp-d16
 567              		.type	vPortValidateInterruptPriority, %function
 568              	vPortValidateInterruptPriority:
 569              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 11


 570              		@ frame_needed = 0, uses_anonymous_args = 0
 571 0000 08B5     		push	{r3, lr}
 572              		.syntax unified
 573              	@ 724 "../src/portable/GCC/ARM_CM4F/port.c" 1
 574 0002 EFF30583 		mrs r3, ipsr
 575              	@ 0 "" 2
 576              		.thumb
 577              		.syntax unified
 578 0006 0F2B     		cmp	r3, #15
 579 0008 05D9     		bls	.L66
 580 000a 0E49     		ldr	r1, .L71
 581 000c 0E4A     		ldr	r2, .L71+4
 582 000e 5B5C     		ldrb	r3, [r3, r1]	@ zero_extendqisi2
 583 0010 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 584 0012 9A42     		cmp	r2, r3
 585 0014 0FD8     		bhi	.L69
 586              	.L66:
 587 0016 0D4B     		ldr	r3, .L71+8
 588 0018 0D4A     		ldr	r2, .L71+12
 589 001a 1B68     		ldr	r3, [r3]
 590 001c 1268     		ldr	r2, [r2]
 591 001e 03F4E063 		and	r3, r3, #1792
 592 0022 9342     		cmp	r3, r2
 593 0024 00D8     		bhi	.L70
 594 0026 08BD     		pop	{r3, pc}
 595              	.L70:
 596 0028 0A49     		ldr	r1, .L71+16
 597 002a 40F20330 		movw	r0, #771
 598 002e BDE80840 		pop	{r3, lr}
 599 0032 FFF7FEBF 		b	vAssertCalled
 600              	.L69:
 601 0036 0749     		ldr	r1, .L71+16
 602 0038 40F2F320 		movw	r0, #755
 603 003c FFF7FEFF 		bl	vAssertCalled
 604 0040 E9E7     		b	.L66
 605              	.L72:
 606 0042 00BF     		.align	2
 607              	.L71:
 608 0044 F0E300E0 		.word	-536812560
 609 0048 00000000 		.word	.LANCHOR1
 610 004c 0CED00E0 		.word	-536810228
 611 0050 00000000 		.word	.LANCHOR2
 612 0054 00000000 		.word	.LC0
 613              		.size	vPortValidateInterruptPriority, .-vPortValidateInterruptPriority
 614              		.section	.bss.ucMaxSysCallPriority,"aw",%nobits
 615              		.set	.LANCHOR1,. + 0
 616              		.type	ucMaxSysCallPriority, %object
 617              		.size	ucMaxSysCallPriority, 1
 618              	ucMaxSysCallPriority:
 619 0000 00       		.space	1
 620              		.section	.bss.ulMaxPRIGROUPValue,"aw",%nobits
 621              		.align	2
 622              		.set	.LANCHOR2,. + 0
 623              		.type	ulMaxPRIGROUPValue, %object
 624              		.size	ulMaxPRIGROUPValue, 4
 625              	ulMaxPRIGROUPValue:
 626 0000 00000000 		.space	4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczBIUGN.s 			page 12


 627              		.section	.data.uxCriticalNesting,"aw",%progbits
 628              		.align	2
 629              		.set	.LANCHOR0,. + 0
 630              		.type	uxCriticalNesting, %object
 631              		.size	uxCriticalNesting, 4
 632              	uxCriticalNesting:
 633 0000 AAAAAAAA 		.word	-1431655766
 634              		.section	.rodata.prvTaskExitError.str1.4,"aMS",%progbits,1
 635              		.align	2
 636              	.LC0:
 637 0000 2E2E2F73 		.ascii	"../src/portable/GCC/ARM_CM4F/port.c\000"
 637      72632F70 
 637      6F727461 
 637      626C652F 
 637      4743432F 
 638              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
