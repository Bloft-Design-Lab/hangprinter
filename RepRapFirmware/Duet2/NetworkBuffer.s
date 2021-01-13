ARM GAS  /tmp/ccFMM01U.s 			page 1


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
  14              		.section	.text._ZN13NetworkBufferC2EPS_,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN13NetworkBufferC2EPS_
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN13NetworkBufferC2EPS_, %function
  23              	_ZN13NetworkBufferC2EPS_:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0022     		movs	r2, #0
  28 0002 C0E90012 		strd	r1, r2, [r0]
  29 0006 8260     		str	r2, [r0, #8]
  30 0008 7047     		bx	lr
  31              		.size	_ZN13NetworkBufferC2EPS_, .-_ZN13NetworkBufferC2EPS_
  32              		.global	_ZN13NetworkBufferC1EPS_
  33              		.thumb_set _ZN13NetworkBufferC1EPS_,_ZN13NetworkBufferC2EPS_
  34 000a 00BF     		.section	.text._ZN13NetworkBuffer7ReleaseEv,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	_ZN13NetworkBuffer7ReleaseEv
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	_ZN13NetworkBuffer7ReleaseEv, %function
  43              	_ZN13NetworkBuffer7ReleaseEv:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46              		@ link register save eliminated.
  47 0000 034A     		ldr	r2, .L4
  48 0002 0346     		mov	r3, r0
  49 0004 1168     		ldr	r1, [r2]
  50 0006 0068     		ldr	r0, [r0]
  51 0008 1960     		str	r1, [r3]
  52 000a 1360     		str	r3, [r2]
  53 000c 7047     		bx	lr
  54              	.L5:
  55 000e 00BF     		.align	2
  56              	.L4:
  57 0010 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/ccFMM01U.s 			page 2


  58              		.size	_ZN13NetworkBuffer7ReleaseEv, .-_ZN13NetworkBuffer7ReleaseEv
  59              		.section	.text._ZN13NetworkBuffer8ReadCharERc,"ax",%progbits
  60              		.align	1
  61              		.p2align 2,,3
  62              		.global	_ZN13NetworkBuffer8ReadCharERc
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu fpv4-sp-d16
  67              		.type	_ZN13NetworkBuffer8ReadCharERc, %function
  68              	_ZN13NetworkBuffer8ReadCharERc:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              		@ link register save eliminated.
  72 0000 D0E90123 		ldrd	r2, r3, [r0, #4]
  73 0004 9342     		cmp	r3, r2
  74 0006 02D3     		bcc	.L9
  75 0008 0020     		movs	r0, #0
  76 000a 0870     		strb	r0, [r1]
  77 000c 7047     		bx	lr
  78              	.L9:
  79 000e 5A1C     		adds	r2, r3, #1
  80 0010 0344     		add	r3, r3, r0
  81 0012 8260     		str	r2, [r0, #8]
  82 0014 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
  83 0016 0B70     		strb	r3, [r1]
  84 0018 0120     		movs	r0, #1
  85 001a 7047     		bx	lr
  86              		.size	_ZN13NetworkBuffer8ReadCharERc, .-_ZN13NetworkBuffer8ReadCharERc
  87              		.section	.text._ZNK13NetworkBuffer14TotalRemainingEv,"ax",%progbits
  88              		.align	1
  89              		.p2align 2,,3
  90              		.global	_ZNK13NetworkBuffer14TotalRemainingEv
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu fpv4-sp-d16
  95              		.type	_ZNK13NetworkBuffer14TotalRemainingEv, %function
  96              	_ZNK13NetworkBuffer14TotalRemainingEv:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99              		@ link register save eliminated.
 100 0000 0346     		mov	r3, r0
 101 0002 0020     		movs	r0, #0
 102              	.L11:
 103 0004 D3E90121 		ldrd	r2, r1, [r3, #4]
 104 0008 1B68     		ldr	r3, [r3]
 105 000a 521A     		subs	r2, r2, r1
 106 000c 1044     		add	r0, r0, r2
 107 000e 002B     		cmp	r3, #0
 108 0010 F8D1     		bne	.L11
 109 0012 7047     		bx	lr
 110              		.size	_ZNK13NetworkBuffer14TotalRemainingEv, .-_ZNK13NetworkBuffer14TotalRemainingEv
 111              		.section	.text._ZN13NetworkBuffer10AppendDataEPKhj,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	_ZN13NetworkBuffer10AppendDataEPKhj
ARM GAS  /tmp/ccFMM01U.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv4-sp-d16
 119              		.type	_ZN13NetworkBuffer10AppendDataEPKhj, %function
 120              	_ZN13NetworkBuffer10AppendDataEPKhj:
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123 0000 38B5     		push	{r3, r4, r5, lr}
 124 0002 0546     		mov	r5, r0
 125 0004 0C30     		adds	r0, r0, #12
 126 0006 6B68     		ldr	r3, [r5, #4]
 127 0008 C3F50064 		rsb	r4, r3, #2048
 128 000c 9442     		cmp	r4, r2
 129 000e 28BF     		it	cs
 130 0010 1446     		movcs	r4, r2
 131 0012 1844     		add	r0, r0, r3
 132 0014 2246     		mov	r2, r4
 133 0016 FFF7FEFF 		bl	memcpy
 134 001a 6B68     		ldr	r3, [r5, #4]
 135 001c 2344     		add	r3, r3, r4
 136 001e 6B60     		str	r3, [r5, #4]
 137 0020 2046     		mov	r0, r4
 138 0022 38BD     		pop	{r3, r4, r5, pc}
 139              		.size	_ZN13NetworkBuffer10AppendDataEPKhj, .-_ZN13NetworkBuffer10AppendDataEPKhj
 140              		.section	.text._ZN13NetworkBuffer12ReadFromFileEP9FileStore,"ax",%progbits
 141              		.align	1
 142              		.p2align 2,,3
 143              		.global	_ZN13NetworkBuffer12ReadFromFileEP9FileStore
 144              		.syntax unified
 145              		.thumb
 146              		.thumb_func
 147              		.fpu fpv4-sp-d16
 148              		.type	_ZN13NetworkBuffer12ReadFromFileEP9FileStore, %function
 149              	_ZN13NetworkBuffer12ReadFromFileEP9FileStore:
 150              		@ args = 0, pretend = 0, frame = 0
 151              		@ frame_needed = 0, uses_anonymous_args = 0
 152 0000 10B5     		push	{r4, lr}
 153 0002 0446     		mov	r4, r0
 154 0004 4FF40062 		mov	r2, #2048
 155 0008 0846     		mov	r0, r1
 156 000a 04F10C01 		add	r1, r4, #12
 157 000e FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 158 0012 0023     		movs	r3, #0
 159 0014 20EAE072 		bic	r2, r0, r0, asr #31
 160 0018 C4E90123 		strd	r2, r3, [r4, #4]
 161 001c 10BD     		pop	{r4, pc}
 162              		.size	_ZN13NetworkBuffer12ReadFromFileEP9FileStore, .-_ZN13NetworkBuffer12ReadFromFileEP9FileStore
 163 001e 00BF     		.section	.text._ZN13NetworkBuffer5EmptyEv,"ax",%progbits
 164              		.align	1
 165              		.p2align 2,,3
 166              		.global	_ZN13NetworkBuffer5EmptyEv
 167              		.syntax unified
 168              		.thumb
 169              		.thumb_func
 170              		.fpu fpv4-sp-d16
 171              		.type	_ZN13NetworkBuffer5EmptyEv, %function
ARM GAS  /tmp/ccFMM01U.s 			page 4


 172              	_ZN13NetworkBuffer5EmptyEv:
 173              		@ args = 0, pretend = 0, frame = 0
 174              		@ frame_needed = 0, uses_anonymous_args = 0
 175              		@ link register save eliminated.
 176 0000 0368     		ldr	r3, [r0]
 177 0002 0022     		movs	r2, #0
 178 0004 C0E90122 		strd	r2, r2, [r0, #4]
 179 0008 73B1     		cbz	r3, .L25
 180 000a 10B4     		push	{r4}
 181 000c 074C     		ldr	r4, .L28
 182 000e 2168     		ldr	r1, [r4]
 183 0010 00E0     		b	.L19
 184              	.L20:
 185 0012 1346     		mov	r3, r2
 186              	.L19:
 187 0014 1A68     		ldr	r2, [r3]
 188 0016 1960     		str	r1, [r3]
 189 0018 0260     		str	r2, [r0]
 190 001a 1946     		mov	r1, r3
 191 001c 002A     		cmp	r2, #0
 192 001e F8D1     		bne	.L20
 193 0020 2360     		str	r3, [r4]
 194 0022 5DF8044B 		ldr	r4, [sp], #4
 195 0026 7047     		bx	lr
 196              	.L25:
 197 0028 7047     		bx	lr
 198              	.L29:
 199 002a 00BF     		.align	2
 200              	.L28:
 201 002c 00000000 		.word	.LANCHOR0
 202              		.size	_ZN13NetworkBuffer5EmptyEv, .-_ZN13NetworkBuffer5EmptyEv
 203              		.section	.text._ZN13NetworkBuffer12AppendToListEPPS_S0_,"ax",%progbits
 204              		.align	1
 205              		.p2align 2,,3
 206              		.global	_ZN13NetworkBuffer12AppendToListEPPS_S0_
 207              		.syntax unified
 208              		.thumb
 209              		.thumb_func
 210              		.fpu fpv4-sp-d16
 211              		.type	_ZN13NetworkBuffer12AppendToListEPPS_S0_, %function
 212              	_ZN13NetworkBuffer12AppendToListEPPS_S0_:
 213              		@ args = 0, pretend = 0, frame = 0
 214              		@ frame_needed = 0, uses_anonymous_args = 0
 215              		@ link register save eliminated.
 216 0000 0023     		movs	r3, #0
 217 0002 0B60     		str	r3, [r1]
 218 0004 0268     		ldr	r2, [r0]
 219 0006 0AB9     		cbnz	r2, .L32
 220 0008 04E0     		b	.L31
 221              	.L33:
 222 000a 1A46     		mov	r2, r3
 223              	.L32:
 224 000c 1368     		ldr	r3, [r2]
 225 000e 002B     		cmp	r3, #0
 226 0010 FBD1     		bne	.L33
 227 0012 1046     		mov	r0, r2
 228              	.L31:
ARM GAS  /tmp/ccFMM01U.s 			page 5


 229 0014 0160     		str	r1, [r0]
 230 0016 7047     		bx	lr
 231              		.size	_ZN13NetworkBuffer12AppendToListEPPS_S0_, .-_ZN13NetworkBuffer12AppendToListEPPS_S0_
 232              		.section	.text._ZN13NetworkBuffer8FindLastEPS_,"ax",%progbits
 233              		.align	1
 234              		.p2align 2,,3
 235              		.global	_ZN13NetworkBuffer8FindLastEPS_
 236              		.syntax unified
 237              		.thumb
 238              		.thumb_func
 239              		.fpu fpv4-sp-d16
 240              		.type	_ZN13NetworkBuffer8FindLastEPS_, %function
 241              	_ZN13NetworkBuffer8FindLastEPS_:
 242              		@ args = 0, pretend = 0, frame = 0
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244              		@ link register save eliminated.
 245 0000 08B9     		cbnz	r0, .L39
 246 0002 04E0     		b	.L44
 247              	.L40:
 248 0004 1846     		mov	r0, r3
 249              	.L39:
 250 0006 0368     		ldr	r3, [r0]
 251 0008 002B     		cmp	r3, #0
 252 000a FBD1     		bne	.L40
 253 000c 7047     		bx	lr
 254              	.L44:
 255 000e 7047     		bx	lr
 256              		.size	_ZN13NetworkBuffer8FindLastEPS_, .-_ZN13NetworkBuffer8FindLastEPS_
 257              		.section	.text._ZN13NetworkBuffer8AllocateEv,"ax",%progbits
 258              		.align	1
 259              		.p2align 2,,3
 260              		.global	_ZN13NetworkBuffer8AllocateEv
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu fpv4-sp-d16
 265              		.type	_ZN13NetworkBuffer8AllocateEv, %function
 266              	_ZN13NetworkBuffer8AllocateEv:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269              		@ link register save eliminated.
 270 0000 044B     		ldr	r3, .L50
 271 0002 1868     		ldr	r0, [r3]
 272 0004 28B1     		cbz	r0, .L45
 273 0006 0268     		ldr	r2, [r0]
 274 0008 1A60     		str	r2, [r3]
 275 000a 0023     		movs	r3, #0
 276 000c C0E90133 		strd	r3, r3, [r0, #4]
 277 0010 0360     		str	r3, [r0]
 278              	.L45:
 279 0012 7047     		bx	lr
 280              	.L51:
 281              		.align	2
 282              	.L50:
 283 0014 00000000 		.word	.LANCHOR0
 284              		.size	_ZN13NetworkBuffer8AllocateEv, .-_ZN13NetworkBuffer8AllocateEv
 285              		.section	.text._ZN13NetworkBuffer15AllocateBuffersEj,"ax",%progbits
ARM GAS  /tmp/ccFMM01U.s 			page 6


 286              		.align	1
 287              		.p2align 2,,3
 288              		.global	_ZN13NetworkBuffer15AllocateBuffersEj
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu fpv4-sp-d16
 293              		.type	_ZN13NetworkBuffer15AllocateBuffersEj, %function
 294              	_ZN13NetworkBuffer15AllocateBuffersEj:
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297 0000 78B1     		cbz	r0, .L60
 298 0002 70B5     		push	{r4, r5, r6, lr}
 299 0004 074E     		ldr	r6, .L63
 300 0006 0446     		mov	r4, r0
 301 0008 0025     		movs	r5, #0
 302              	.L54:
 303 000a 4FF40160 		mov	r0, #2064
 304 000e FFF7FEFF 		bl	_Znwj
 305 0012 3368     		ldr	r3, [r6]
 306 0014 0360     		str	r3, [r0]
 307 0016 013C     		subs	r4, r4, #1
 308 0018 C0E90155 		strd	r5, r5, [r0, #4]
 309 001c 3060     		str	r0, [r6]
 310 001e F4D1     		bne	.L54
 311 0020 70BD     		pop	{r4, r5, r6, pc}
 312              	.L60:
 313 0022 7047     		bx	lr
 314              	.L64:
 315              		.align	2
 316              	.L63:
 317 0024 00000000 		.word	.LANCHOR0
 318              		.size	_ZN13NetworkBuffer15AllocateBuffersEj, .-_ZN13NetworkBuffer15AllocateBuffersEj
 319              		.section	.text._ZN13NetworkBuffer5CountERPS_,"ax",%progbits
 320              		.align	1
 321              		.p2align 2,,3
 322              		.global	_ZN13NetworkBuffer5CountERPS_
 323              		.syntax unified
 324              		.thumb
 325              		.thumb_func
 326              		.fpu fpv4-sp-d16
 327              		.type	_ZN13NetworkBuffer5CountERPS_, %function
 328              	_ZN13NetworkBuffer5CountERPS_:
 329              		@ args = 0, pretend = 0, frame = 0
 330              		@ frame_needed = 0, uses_anonymous_args = 0
 331              		@ link register save eliminated.
 332 0000 0368     		ldr	r3, [r0]
 333 0002 2BB1     		cbz	r3, .L68
 334 0004 0020     		movs	r0, #0
 335              	.L67:
 336 0006 1B68     		ldr	r3, [r3]
 337 0008 0130     		adds	r0, r0, #1
 338 000a 002B     		cmp	r3, #0
 339 000c FBD1     		bne	.L67
 340 000e 7047     		bx	lr
 341              	.L68:
 342 0010 1846     		mov	r0, r3
ARM GAS  /tmp/ccFMM01U.s 			page 7


 343 0012 7047     		bx	lr
 344              		.size	_ZN13NetworkBuffer5CountERPS_, .-_ZN13NetworkBuffer5CountERPS_
 345              		.global	_ZN13NetworkBuffer8freelistE
 346              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 347              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 348              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 349              	_ZL28cpu_irq_prev_interrupt_state:
 350 0000 00       		.space	1
 351              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 352              		.align	2
 353              		.type	_ZL32cpu_irq_critical_section_counter, %object
 354              		.size	_ZL32cpu_irq_critical_section_counter, 4
 355              	_ZL32cpu_irq_critical_section_counter:
 356 0000 00000000 		.space	4
 357              		.section	.bss._ZN13NetworkBuffer8freelistE,"aw",%nobits
 358              		.align	2
 359              		.set	.LANCHOR0,. + 0
 360              		.type	_ZN13NetworkBuffer8freelistE, %object
 361              		.size	_ZN13NetworkBuffer8freelistE, 4
 362              	_ZN13NetworkBuffer8freelistE:
 363 0000 00000000 		.space	4
 364              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
