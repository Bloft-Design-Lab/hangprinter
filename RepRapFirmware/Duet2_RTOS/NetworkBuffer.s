ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccI4OPxe.s 			page 1


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
  13              		.file	"NetworkBuffer.cpp"
  14              		.text
  15              		.section	.text._ZN13NetworkBufferC2EPS_,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN13NetworkBufferC2EPS_
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN13NetworkBufferC2EPS_, %function
  24              	_ZN13NetworkBufferC2EPS_:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0022     		movs	r2, #0
  29 0002 C0E90012 		strd	r1, r2, [r0]
  30 0006 8260     		str	r2, [r0, #8]
  31 0008 7047     		bx	lr
  32              		.size	_ZN13NetworkBufferC2EPS_, .-_ZN13NetworkBufferC2EPS_
  33              		.global	_ZN13NetworkBufferC1EPS_
  34              		.thumb_set _ZN13NetworkBufferC1EPS_,_ZN13NetworkBufferC2EPS_
  35 000a 00BF     		.section	.text._ZN13NetworkBuffer7ReleaseEv,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	_ZN13NetworkBuffer7ReleaseEv
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	_ZN13NetworkBuffer7ReleaseEv, %function
  44              	_ZN13NetworkBuffer7ReleaseEv:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47              		@ link register save eliminated.
  48 0000 034A     		ldr	r2, .L4
  49 0002 0346     		mov	r3, r0
  50 0004 1168     		ldr	r1, [r2]
  51 0006 0068     		ldr	r0, [r0]
  52 0008 1960     		str	r1, [r3]
  53 000a 1360     		str	r3, [r2]
  54 000c 7047     		bx	lr
  55              	.L5:
  56 000e 00BF     		.align	2
  57              	.L4:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccI4OPxe.s 			page 2


  58 0010 00000000 		.word	.LANCHOR0
  59              		.size	_ZN13NetworkBuffer7ReleaseEv, .-_ZN13NetworkBuffer7ReleaseEv
  60              		.section	.text._ZN13NetworkBuffer8ReadCharERc,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_ZN13NetworkBuffer8ReadCharERc
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	_ZN13NetworkBuffer8ReadCharERc, %function
  69              	_ZN13NetworkBuffer8ReadCharERc:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72              		@ link register save eliminated.
  73 0000 D0E90123 		ldrd	r2, r3, [r0, #4]
  74 0004 9342     		cmp	r3, r2
  75 0006 02D3     		bcc	.L9
  76 0008 0020     		movs	r0, #0
  77 000a 0870     		strb	r0, [r1]
  78 000c 7047     		bx	lr
  79              	.L9:
  80 000e 5A1C     		adds	r2, r3, #1
  81 0010 0344     		add	r3, r3, r0
  82 0012 8260     		str	r2, [r0, #8]
  83 0014 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
  84 0016 0B70     		strb	r3, [r1]
  85 0018 0120     		movs	r0, #1
  86 001a 7047     		bx	lr
  87              		.size	_ZN13NetworkBuffer8ReadCharERc, .-_ZN13NetworkBuffer8ReadCharERc
  88              		.section	.text._ZNK13NetworkBuffer14TotalRemainingEv,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	_ZNK13NetworkBuffer14TotalRemainingEv
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu fpv4-sp-d16
  96              		.type	_ZNK13NetworkBuffer14TotalRemainingEv, %function
  97              	_ZNK13NetworkBuffer14TotalRemainingEv:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100              		@ link register save eliminated.
 101 0000 0346     		mov	r3, r0
 102 0002 0020     		movs	r0, #0
 103              	.L11:
 104 0004 D3E90121 		ldrd	r2, r1, [r3, #4]
 105 0008 1B68     		ldr	r3, [r3]
 106 000a 521A     		subs	r2, r2, r1
 107 000c 1044     		add	r0, r0, r2
 108 000e 002B     		cmp	r3, #0
 109 0010 F8D1     		bne	.L11
 110 0012 7047     		bx	lr
 111              		.size	_ZNK13NetworkBuffer14TotalRemainingEv, .-_ZNK13NetworkBuffer14TotalRemainingEv
 112              		.section	.text._ZN13NetworkBuffer10AppendDataEPKhj,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccI4OPxe.s 			page 3


 115              		.global	_ZN13NetworkBuffer10AppendDataEPKhj
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu fpv4-sp-d16
 120              		.type	_ZN13NetworkBuffer10AppendDataEPKhj, %function
 121              	_ZN13NetworkBuffer10AppendDataEPKhj:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 38B5     		push	{r3, r4, r5, lr}
 125 0002 0546     		mov	r5, r0
 126 0004 0C30     		adds	r0, r0, #12
 127 0006 6B68     		ldr	r3, [r5, #4]
 128 0008 C3F50064 		rsb	r4, r3, #2048
 129 000c 9442     		cmp	r4, r2
 130 000e 28BF     		it	cs
 131 0010 1446     		movcs	r4, r2
 132 0012 1844     		add	r0, r0, r3
 133 0014 2246     		mov	r2, r4
 134 0016 FFF7FEFF 		bl	memcpy
 135 001a 6B68     		ldr	r3, [r5, #4]
 136 001c 2344     		add	r3, r3, r4
 137 001e 6B60     		str	r3, [r5, #4]
 138 0020 2046     		mov	r0, r4
 139 0022 38BD     		pop	{r3, r4, r5, pc}
 140              		.size	_ZN13NetworkBuffer10AppendDataEPKhj, .-_ZN13NetworkBuffer10AppendDataEPKhj
 141              		.section	.text._ZN13NetworkBuffer12ReadFromFileEP9FileStore,"ax",%progbits
 142              		.align	1
 143              		.p2align 2,,3
 144              		.global	_ZN13NetworkBuffer12ReadFromFileEP9FileStore
 145              		.syntax unified
 146              		.thumb
 147              		.thumb_func
 148              		.fpu fpv4-sp-d16
 149              		.type	_ZN13NetworkBuffer12ReadFromFileEP9FileStore, %function
 150              	_ZN13NetworkBuffer12ReadFromFileEP9FileStore:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153 0000 10B5     		push	{r4, lr}
 154 0002 0446     		mov	r4, r0
 155 0004 4FF40062 		mov	r2, #2048
 156 0008 0846     		mov	r0, r1
 157 000a 04F10C01 		add	r1, r4, #12
 158 000e FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 159 0012 0023     		movs	r3, #0
 160 0014 20EAE072 		bic	r2, r0, r0, asr #31
 161 0018 C4E90123 		strd	r2, r3, [r4, #4]
 162 001c 10BD     		pop	{r4, pc}
 163              		.size	_ZN13NetworkBuffer12ReadFromFileEP9FileStore, .-_ZN13NetworkBuffer12ReadFromFileEP9FileStore
 164 001e 00BF     		.section	.text._ZN13NetworkBuffer5EmptyEv,"ax",%progbits
 165              		.align	1
 166              		.p2align 2,,3
 167              		.global	_ZN13NetworkBuffer5EmptyEv
 168              		.syntax unified
 169              		.thumb
 170              		.thumb_func
 171              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccI4OPxe.s 			page 4


 172              		.type	_ZN13NetworkBuffer5EmptyEv, %function
 173              	_ZN13NetworkBuffer5EmptyEv:
 174              		@ args = 0, pretend = 0, frame = 0
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176              		@ link register save eliminated.
 177 0000 0368     		ldr	r3, [r0]
 178 0002 0022     		movs	r2, #0
 179 0004 C0E90122 		strd	r2, r2, [r0, #4]
 180 0008 73B1     		cbz	r3, .L25
 181 000a 10B4     		push	{r4}
 182 000c 074C     		ldr	r4, .L28
 183 000e 2168     		ldr	r1, [r4]
 184 0010 00E0     		b	.L19
 185              	.L20:
 186 0012 1346     		mov	r3, r2
 187              	.L19:
 188 0014 1A68     		ldr	r2, [r3]
 189 0016 1960     		str	r1, [r3]
 190 0018 0260     		str	r2, [r0]
 191 001a 1946     		mov	r1, r3
 192 001c 002A     		cmp	r2, #0
 193 001e F8D1     		bne	.L20
 194 0020 2360     		str	r3, [r4]
 195 0022 5DF8044B 		ldr	r4, [sp], #4
 196 0026 7047     		bx	lr
 197              	.L25:
 198 0028 7047     		bx	lr
 199              	.L29:
 200 002a 00BF     		.align	2
 201              	.L28:
 202 002c 00000000 		.word	.LANCHOR0
 203              		.size	_ZN13NetworkBuffer5EmptyEv, .-_ZN13NetworkBuffer5EmptyEv
 204              		.section	.text._ZN13NetworkBuffer12AppendToListEPPS_S0_,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	_ZN13NetworkBuffer12AppendToListEPPS_S0_
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu fpv4-sp-d16
 212              		.type	_ZN13NetworkBuffer12AppendToListEPPS_S0_, %function
 213              	_ZN13NetworkBuffer12AppendToListEPPS_S0_:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 217 0000 0023     		movs	r3, #0
 218 0002 0B60     		str	r3, [r1]
 219 0004 0268     		ldr	r2, [r0]
 220 0006 0AB9     		cbnz	r2, .L32
 221 0008 04E0     		b	.L31
 222              	.L33:
 223 000a 1A46     		mov	r2, r3
 224              	.L32:
 225 000c 1368     		ldr	r3, [r2]
 226 000e 002B     		cmp	r3, #0
 227 0010 FBD1     		bne	.L33
 228 0012 1046     		mov	r0, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccI4OPxe.s 			page 5


 229              	.L31:
 230 0014 0160     		str	r1, [r0]
 231 0016 7047     		bx	lr
 232              		.size	_ZN13NetworkBuffer12AppendToListEPPS_S0_, .-_ZN13NetworkBuffer12AppendToListEPPS_S0_
 233              		.section	.text._ZN13NetworkBuffer8FindLastEPS_,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	_ZN13NetworkBuffer8FindLastEPS_
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	_ZN13NetworkBuffer8FindLastEPS_, %function
 242              	_ZN13NetworkBuffer8FindLastEPS_:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245              		@ link register save eliminated.
 246 0000 08B9     		cbnz	r0, .L39
 247 0002 04E0     		b	.L44
 248              	.L40:
 249 0004 1846     		mov	r0, r3
 250              	.L39:
 251 0006 0368     		ldr	r3, [r0]
 252 0008 002B     		cmp	r3, #0
 253 000a FBD1     		bne	.L40
 254 000c 7047     		bx	lr
 255              	.L44:
 256 000e 7047     		bx	lr
 257              		.size	_ZN13NetworkBuffer8FindLastEPS_, .-_ZN13NetworkBuffer8FindLastEPS_
 258              		.section	.text._ZN13NetworkBuffer8AllocateEv,"ax",%progbits
 259              		.align	1
 260              		.p2align 2,,3
 261              		.global	_ZN13NetworkBuffer8AllocateEv
 262              		.syntax unified
 263              		.thumb
 264              		.thumb_func
 265              		.fpu fpv4-sp-d16
 266              		.type	_ZN13NetworkBuffer8AllocateEv, %function
 267              	_ZN13NetworkBuffer8AllocateEv:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270              		@ link register save eliminated.
 271 0000 044B     		ldr	r3, .L50
 272 0002 1868     		ldr	r0, [r3]
 273 0004 28B1     		cbz	r0, .L45
 274 0006 0268     		ldr	r2, [r0]
 275 0008 1A60     		str	r2, [r3]
 276 000a 0023     		movs	r3, #0
 277 000c C0E90133 		strd	r3, r3, [r0, #4]
 278 0010 0360     		str	r3, [r0]
 279              	.L45:
 280 0012 7047     		bx	lr
 281              	.L51:
 282              		.align	2
 283              	.L50:
 284 0014 00000000 		.word	.LANCHOR0
 285              		.size	_ZN13NetworkBuffer8AllocateEv, .-_ZN13NetworkBuffer8AllocateEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccI4OPxe.s 			page 6


 286              		.section	.text._ZN13NetworkBuffer15AllocateBuffersEj,"ax",%progbits
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	_ZN13NetworkBuffer15AllocateBuffersEj
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu fpv4-sp-d16
 294              		.type	_ZN13NetworkBuffer15AllocateBuffersEj, %function
 295              	_ZN13NetworkBuffer15AllocateBuffersEj:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298 0000 78B1     		cbz	r0, .L60
 299 0002 70B5     		push	{r4, r5, r6, lr}
 300 0004 074E     		ldr	r6, .L63
 301 0006 0446     		mov	r4, r0
 302 0008 0025     		movs	r5, #0
 303              	.L54:
 304 000a 4FF40160 		mov	r0, #2064
 305 000e FFF7FEFF 		bl	_Znwj
 306 0012 3368     		ldr	r3, [r6]
 307 0014 0360     		str	r3, [r0]
 308 0016 013C     		subs	r4, r4, #1
 309 0018 C0E90155 		strd	r5, r5, [r0, #4]
 310 001c 3060     		str	r0, [r6]
 311 001e F4D1     		bne	.L54
 312 0020 70BD     		pop	{r4, r5, r6, pc}
 313              	.L60:
 314 0022 7047     		bx	lr
 315              	.L64:
 316              		.align	2
 317              	.L63:
 318 0024 00000000 		.word	.LANCHOR0
 319              		.size	_ZN13NetworkBuffer15AllocateBuffersEj, .-_ZN13NetworkBuffer15AllocateBuffersEj
 320              		.section	.text._ZN13NetworkBuffer5CountERPS_,"ax",%progbits
 321              		.align	1
 322              		.p2align 2,,3
 323              		.global	_ZN13NetworkBuffer5CountERPS_
 324              		.syntax unified
 325              		.thumb
 326              		.thumb_func
 327              		.fpu fpv4-sp-d16
 328              		.type	_ZN13NetworkBuffer5CountERPS_, %function
 329              	_ZN13NetworkBuffer5CountERPS_:
 330              		@ args = 0, pretend = 0, frame = 0
 331              		@ frame_needed = 0, uses_anonymous_args = 0
 332              		@ link register save eliminated.
 333 0000 0368     		ldr	r3, [r0]
 334 0002 2BB1     		cbz	r3, .L68
 335 0004 0020     		movs	r0, #0
 336              	.L67:
 337 0006 1B68     		ldr	r3, [r3]
 338 0008 0130     		adds	r0, r0, #1
 339 000a 002B     		cmp	r3, #0
 340 000c FBD1     		bne	.L67
 341 000e 7047     		bx	lr
 342              	.L68:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccI4OPxe.s 			page 7


 343 0010 1846     		mov	r0, r3
 344 0012 7047     		bx	lr
 345              		.size	_ZN13NetworkBuffer5CountERPS_, .-_ZN13NetworkBuffer5CountERPS_
 346              		.section	.text.startup._GLOBAL__sub_I__ZN13NetworkBuffer8freelistE,"ax",%progbits
 347              		.align	1
 348              		.p2align 2,,3
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu fpv4-sp-d16
 353              		.type	_GLOBAL__sub_I__ZN13NetworkBuffer8freelistE, %function
 354              	_GLOBAL__sub_I__ZN13NetworkBuffer8freelistE:
 355              		@ args = 0, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357              		@ link register save eliminated.
 358 0000 0149     		ldr	r1, .L71
 359 0002 0248     		ldr	r0, .L71+4
 360 0004 FFF7FEBF 		b	_ZN9IPAddress5SetV4EPKh
 361              	.L72:
 362              		.align	2
 363              	.L71:
 364 0008 00000000 		.word	.LANCHOR1
 365 000c 00000000 		.word	.LANCHOR2
 366              		.size	_GLOBAL__sub_I__ZN13NetworkBuffer8freelistE, .-_GLOBAL__sub_I__ZN13NetworkBuffer8freelistE
 367              		.section	.init_array,"aw",%init_array
 368              		.align	2
 369 0000 00000000 		.word	_GLOBAL__sub_I__ZN13NetworkBuffer8freelistE(target1)
 370              		.global	_ZN13NetworkBuffer8freelistE
 371              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 372              		.align	2
 373              		.set	.LANCHOR2,. + 0
 374              		.type	_ZL14DefaultNetMask, %object
 375              		.size	_ZL14DefaultNetMask, 4
 376              	_ZL14DefaultNetMask:
 377 0000 00000000 		.space	4
 378              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 379              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 380              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 381              	_ZL28cpu_irq_prev_interrupt_state:
 382 0000 00       		.space	1
 383              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 384              		.align	2
 385              		.type	_ZL32cpu_irq_critical_section_counter, %object
 386              		.size	_ZL32cpu_irq_critical_section_counter, 4
 387              	_ZL32cpu_irq_critical_section_counter:
 388 0000 00000000 		.space	4
 389              		.section	.bss._ZN13NetworkBuffer8freelistE,"aw",%nobits
 390              		.align	2
 391              		.set	.LANCHOR0,. + 0
 392              		.type	_ZN13NetworkBuffer8freelistE, %object
 393              		.size	_ZN13NetworkBuffer8freelistE, 4
 394              	_ZN13NetworkBuffer8freelistE:
 395 0000 00000000 		.space	4
 396              		.section	.rodata.._142,"a",%progbits
 397              		.align	2
 398              		.set	.LANCHOR1,. + 0
 399              		.type	._142, %object
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccI4OPxe.s 			page 8


 400              		.size	._142, 4
 401              	._142:
 402 0000 FF       		.byte	-1
 403 0001 FF       		.byte	-1
 404 0002 FF       		.byte	-1
 405 0003 00       		.byte	0
 406              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
