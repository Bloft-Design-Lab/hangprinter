ARM GAS  /tmp/ccPDM2RK.s 			page 1


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
  13              		.file	"diskio.cpp"
  14              		.section	.text.disk_initialize,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	disk_initialize
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	disk_initialize, %function
  23              	disk_initialize:
  24              		@ args = 0, pretend = 0, frame = 8
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 10B5     		push	{r4, lr}
  27 0002 0228     		cmp	r0, #2
  28 0004 82B0     		sub	sp, sp, #8
  29 0006 18D8     		bhi	.L7
  30 0008 0446     		mov	r4, r0
  31 000a D0B9     		cbnz	r0, .L12
  32 000c 0146     		mov	r1, r0
  33              	.L3:
  34 000e 4FF0FF32 		mov	r2, #-1
  35 0012 6846     		mov	r0, sp
  36 0014 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
  37 0018 2046     		mov	r0, r4
  38 001a FFF7FEFF 		bl	mem_test_unit_ready
  39 001e 0328     		cmp	r0, #3
  40 0020 13D1     		bne	.L4
  41 0022 2046     		mov	r0, r4
  42 0024 FFF7FEFF 		bl	mem_test_unit_ready
  43 0028 0328     		cmp	r0, #3
  44 002a 0ED1     		bne	.L4
  45              	.L6:
  46 002c 0124     		movs	r4, #1
  47              	.L5:
  48 002e 6846     		mov	r0, sp
  49 0030 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
  50 0034 2046     		mov	r0, r4
  51 0036 02B0     		add	sp, sp, #8
  52              		@ sp needed
  53 0038 10BD     		pop	{r4, pc}
  54              	.L7:
  55 003a 0124     		movs	r4, #1
  56 003c 2046     		mov	r0, r4
  57 003e 02B0     		add	sp, sp, #8
ARM GAS  /tmp/ccPDM2RK.s 			page 2


  58              		@ sp needed
  59 0040 10BD     		pop	{r4, pc}
  60              	.L12:
  61 0042 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
  62 0046 0146     		mov	r1, r0
  63 0048 E1E7     		b	.L3
  64              	.L4:
  65 004a 0028     		cmp	r0, #0
  66 004c EED1     		bne	.L6
  67 004e 2046     		mov	r0, r4
  68 0050 FFF7FEFF 		bl	mem_wr_protect
  69 0054 0028     		cmp	r0, #0
  70 0056 14BF     		ite	ne
  71 0058 0424     		movne	r4, #4
  72 005a 0024     		moveq	r4, #0
  73 005c E7E7     		b	.L5
  74              		.size	disk_initialize, .-disk_initialize
  75 005e 00BF     		.section	.text.disk_status,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	disk_status
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu fpv4-sp-d16
  83              		.type	disk_status, %function
  84              	disk_status:
  85              		@ args = 0, pretend = 0, frame = 8
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87 0000 10B5     		push	{r4, lr}
  88 0002 0446     		mov	r4, r0
  89 0004 82B0     		sub	sp, sp, #8
  90 0006 D0B9     		cbnz	r0, .L21
  91 0008 0146     		mov	r1, r0
  92              	.L14:
  93 000a 6846     		mov	r0, sp
  94 000c 4FF0FF32 		mov	r2, #-1
  95 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
  96 0014 2046     		mov	r0, r4
  97 0016 FFF7FEFF 		bl	mem_test_unit_ready
  98 001a 48B1     		cbz	r0, .L19
  99 001c 0228     		cmp	r0, #2
 100 001e 6846     		mov	r0, sp
 101 0020 0CBF     		ite	eq
 102 0022 0324     		moveq	r4, #3
 103 0024 0124     		movne	r4, #1
 104 0026 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 105 002a 2046     		mov	r0, r4
 106 002c 02B0     		add	sp, sp, #8
 107              		@ sp needed
 108 002e 10BD     		pop	{r4, pc}
 109              	.L19:
 110 0030 0446     		mov	r4, r0
 111 0032 6846     		mov	r0, sp
 112 0034 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 113 0038 2046     		mov	r0, r4
 114 003a 02B0     		add	sp, sp, #8
ARM GAS  /tmp/ccPDM2RK.s 			page 3


 115              		@ sp needed
 116 003c 10BD     		pop	{r4, pc}
 117              	.L21:
 118 003e FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 119 0042 0146     		mov	r1, r0
 120 0044 E1E7     		b	.L14
 121              		.size	disk_status, .-disk_status
 122 0046 00BF     		.section	.text.disk_read,"ax",%progbits
 123              		.align	1
 124              		.p2align 2,,3
 125              		.global	disk_read
 126              		.syntax unified
 127              		.thumb
 128              		.thumb_func
 129              		.fpu fpv4-sp-d16
 130              		.type	disk_read, %function
 131              	disk_read:
 132              		@ args = 0, pretend = 0, frame = 16
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 135 0004 8846     		mov	r8, r1
 136 0006 84B0     		sub	sp, sp, #16
 137 0008 1646     		mov	r6, r2
 138 000a 1F46     		mov	r7, r3
 139 000c 0446     		mov	r4, r0
 140 000e 40BB     		cbnz	r0, .L29
 141 0010 0146     		mov	r1, r0
 142              	.L23:
 143 0012 4FF0FF32 		mov	r2, #-1
 144 0016 02A8     		add	r0, sp, #8
 145 0018 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 146 001c 2046     		mov	r0, r4
 147 001e FFF7FEFF 		bl	mem_sector_size
 148 0022 0546     		mov	r5, r0
 149 0024 38B9     		cbnz	r0, .L30
 150 0026 0124     		movs	r4, #1
 151              	.L24:
 152 0028 02A8     		add	r0, sp, #8
 153 002a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 154 002e 2046     		mov	r0, r4
 155 0030 04B0     		add	sp, sp, #16
 156              		@ sp needed
 157 0032 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 158              	.L30:
 159 0036 01A9     		add	r1, sp, #4
 160 0038 2046     		mov	r0, r4
 161 003a FFF7FEFF 		bl	mem_read_capacity
 162 003e 019A     		ldr	r2, [sp, #4]
 163 0040 17FB05F3 		smulbb	r3, r7, r5
 164 0044 3344     		add	r3, r3, r6
 165 0046 02FB0555 		mla	r5, r2, r5, r5
 166 004a AB42     		cmp	r3, r5
 167 004c 0DD8     		bhi	.L27
 168 004e 2046     		mov	r0, r4
 169 0050 3B46     		mov	r3, r7
 170 0052 4246     		mov	r2, r8
 171 0054 3146     		mov	r1, r6
ARM GAS  /tmp/ccPDM2RK.s 			page 4


 172 0056 FFF7FEFF 		bl	memory_2_ram
 173 005a 041C     		adds	r4, r0, #0
 174 005c 18BF     		it	ne
 175 005e 0124     		movne	r4, #1
 176 0060 E2E7     		b	.L24
 177              	.L29:
 178 0062 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 179 0066 0146     		mov	r1, r0
 180 0068 D3E7     		b	.L23
 181              	.L27:
 182 006a 0424     		movs	r4, #4
 183 006c DCE7     		b	.L24
 184              		.size	disk_read, .-disk_read
 185 006e 00BF     		.section	.text.disk_write,"ax",%progbits
 186              		.align	1
 187              		.p2align 2,,3
 188              		.global	disk_write
 189              		.syntax unified
 190              		.thumb
 191              		.thumb_func
 192              		.fpu fpv4-sp-d16
 193              		.type	disk_write, %function
 194              	disk_write:
 195              		@ args = 0, pretend = 0, frame = 16
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 198 0004 8846     		mov	r8, r1
 199 0006 84B0     		sub	sp, sp, #16
 200 0008 1646     		mov	r6, r2
 201 000a 1F46     		mov	r7, r3
 202 000c 0446     		mov	r4, r0
 203 000e 40BB     		cbnz	r0, .L38
 204 0010 0146     		mov	r1, r0
 205              	.L32:
 206 0012 4FF0FF32 		mov	r2, #-1
 207 0016 02A8     		add	r0, sp, #8
 208 0018 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 209 001c 2046     		mov	r0, r4
 210 001e FFF7FEFF 		bl	mem_sector_size
 211 0022 0546     		mov	r5, r0
 212 0024 38B9     		cbnz	r0, .L39
 213 0026 0124     		movs	r4, #1
 214              	.L33:
 215 0028 02A8     		add	r0, sp, #8
 216 002a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 217 002e 2046     		mov	r0, r4
 218 0030 04B0     		add	sp, sp, #16
 219              		@ sp needed
 220 0032 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 221              	.L39:
 222 0036 01A9     		add	r1, sp, #4
 223 0038 2046     		mov	r0, r4
 224 003a FFF7FEFF 		bl	mem_read_capacity
 225 003e 019A     		ldr	r2, [sp, #4]
 226 0040 17FB05F3 		smulbb	r3, r7, r5
 227 0044 3344     		add	r3, r3, r6
 228 0046 02FB0555 		mla	r5, r2, r5, r5
ARM GAS  /tmp/ccPDM2RK.s 			page 5


 229 004a AB42     		cmp	r3, r5
 230 004c 0DD8     		bhi	.L36
 231 004e 2046     		mov	r0, r4
 232 0050 3B46     		mov	r3, r7
 233 0052 4246     		mov	r2, r8
 234 0054 3146     		mov	r1, r6
 235 0056 FFF7FEFF 		bl	ram_2_memory
 236 005a 041C     		adds	r4, r0, #0
 237 005c 18BF     		it	ne
 238 005e 0124     		movne	r4, #1
 239 0060 E2E7     		b	.L33
 240              	.L38:
 241 0062 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 242 0066 0146     		mov	r1, r0
 243 0068 D3E7     		b	.L32
 244              	.L36:
 245 006a 0424     		movs	r4, #4
 246 006c DCE7     		b	.L33
 247              		.size	disk_write, .-disk_write
 248 006e 00BF     		.section	.text.disk_ioctl,"ax",%progbits
 249              		.align	1
 250              		.p2align 2,,3
 251              		.global	disk_ioctl
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu fpv4-sp-d16
 256              		.type	disk_ioctl, %function
 257              	disk_ioctl:
 258              		@ args = 0, pretend = 0, frame = 16
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260 0000 70B5     		push	{r4, r5, r6, lr}
 261 0002 0446     		mov	r4, r0
 262 0004 84B0     		sub	sp, sp, #16
 263 0006 1546     		mov	r5, r2
 264 0008 0329     		cmp	r1, #3
 265 000a 60D8     		bhi	.L53
 266 000c DFE801F0 		tbb	[pc, r1]
 267              	.L43:
 268 0010 30       		.byte	(.L42-.L43)/2
 269 0011 1B       		.byte	(.L44-.L43)/2
 270 0012 08       		.byte	(.L45-.L43)/2
 271 0013 02       		.byte	(.L46-.L43)/2
 272              		.p2align 1
 273              	.L46:
 274 0014 0123     		movs	r3, #1
 275 0016 1360     		str	r3, [r2]
 276 0018 0024     		movs	r4, #0
 277              	.L41:
 278 001a 2046     		mov	r0, r4
 279 001c 04B0     		add	sp, sp, #16
 280              		@ sp needed
 281 001e 70BD     		pop	{r4, r5, r6, pc}
 282              	.L45:
 283 0020 0028     		cmp	r0, #0
 284 0022 3ED1     		bne	.L59
 285 0024 0146     		mov	r1, r0
ARM GAS  /tmp/ccPDM2RK.s 			page 6


 286              	.L48:
 287 0026 02AE     		add	r6, sp, #8
 288 0028 4FF0FF32 		mov	r2, #-1
 289 002c 3046     		mov	r0, r6
 290 002e FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 291 0032 2046     		mov	r0, r4
 292 0034 FFF7FEFF 		bl	mem_sector_size
 293 0038 0828     		cmp	r0, #8
 294 003a 3AD9     		bls	.L60
 295              	.L49:
 296 003c 3046     		mov	r0, r6
 297 003e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 298 0042 0124     		movs	r4, #1
 299 0044 E9E7     		b	.L41
 300              	.L44:
 301 0046 40BB     		cbnz	r0, .L61
 302 0048 0146     		mov	r1, r0
 303              	.L47:
 304 004a 4FF0FF32 		mov	r2, #-1
 305 004e 02A8     		add	r0, sp, #8
 306 0050 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 307 0054 01A9     		add	r1, sp, #4
 308 0056 2046     		mov	r0, r4
 309 0058 FFF7FEFF 		bl	mem_read_capacity
 310 005c 019B     		ldr	r3, [sp, #4]
 311 005e 0133     		adds	r3, r3, #1
 312 0060 02A8     		add	r0, sp, #8
 313 0062 2B60     		str	r3, [r5]
 314 0064 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 315 0068 0024     		movs	r4, #0
 316 006a 2046     		mov	r0, r4
 317 006c 04B0     		add	sp, sp, #16
 318              		@ sp needed
 319 006e 70BD     		pop	{r4, r5, r6, pc}
 320              	.L42:
 321 0070 D8B9     		cbnz	r0, .L62
 322 0072 0146     		mov	r1, r0
 323              	.L51:
 324 0074 02AE     		add	r6, sp, #8
 325 0076 4FF0FF32 		mov	r2, #-1
 326 007a 3046     		mov	r0, r6
 327 007c FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 328 0080 2046     		mov	r0, r4
 329 0082 FFF7FEFF 		bl	mem_test_unit_ready
 330 0086 0028     		cmp	r0, #0
 331 0088 3046     		mov	r0, r6
 332 008a 0CBF     		ite	eq
 333 008c 0024     		moveq	r4, #0
 334 008e 0324     		movne	r4, #3
 335 0090 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 336 0094 2046     		mov	r0, r4
 337 0096 04B0     		add	sp, sp, #16
 338              		@ sp needed
 339 0098 70BD     		pop	{r4, r5, r6, pc}
 340              	.L61:
 341 009a FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 342 009e 0146     		mov	r1, r0
ARM GAS  /tmp/ccPDM2RK.s 			page 7


 343 00a0 D3E7     		b	.L47
 344              	.L59:
 345 00a2 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 346 00a6 0146     		mov	r1, r0
 347 00a8 BDE7     		b	.L48
 348              	.L62:
 349 00aa FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 350 00ae 0146     		mov	r1, r0
 351 00b0 E0E7     		b	.L51
 352              	.L60:
 353 00b2 4FF48B74 		mov	r4, #278
 354 00b6 C440     		lsrs	r4, r4, r0
 355 00b8 E443     		mvns	r4, r4
 356 00ba 14F00104 		ands	r4, r4, #1
 357 00be BDD1     		bne	.L49
 358 00c0 2C70     		strb	r4, [r5]
 359 00c2 3046     		mov	r0, r6
 360 00c4 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 361 00c8 2046     		mov	r0, r4
 362 00ca 04B0     		add	sp, sp, #16
 363              		@ sp needed
 364 00cc 70BD     		pop	{r4, r5, r6, pc}
 365              	.L53:
 366 00ce 0424     		movs	r4, #4
 367 00d0 A3E7     		b	.L41
 368              		.size	disk_ioctl, .-disk_ioctl
 369 00d2 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 370              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 371              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 372              	_ZL28cpu_irq_prev_interrupt_state:
 373 0000 00       		.space	1
 374              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 375              		.align	2
 376              		.type	_ZL32cpu_irq_critical_section_counter, %object
 377              		.size	_ZL32cpu_irq_critical_section_counter, 4
 378              	_ZL32cpu_irq_critical_section_counter:
 379 0000 00000000 		.space	4
 380              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 381              		.align	2
 382              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 383              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 384              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 385 0000 00000000 		.space	4
 386              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
