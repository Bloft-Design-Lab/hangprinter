ARM GAS  /tmp/ccNaIrB7.s 			page 1


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
  11              		.file	"diskio.cpp"
  12              		.section	.text.disk_initialize,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	disk_initialize
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	disk_initialize, %function
  21              	disk_initialize:
  22              		@ args = 0, pretend = 0, frame = 8
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 0228     		cmp	r0, #2
  26 0004 82B0     		sub	sp, sp, #8
  27 0006 03DD     		ble	.L10
  28 0008 0124     		movs	r4, #1
  29 000a 2046     		mov	r0, r4
  30 000c 02B0     		add	sp, sp, #8
  31              		@ sp needed
  32 000e 10BD     		pop	{r4, pc}
  33              	.L10:
  34 0010 0446     		mov	r4, r0
  35 0012 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
  36 0016 4FF0FF32 		mov	r2, #-1
  37 001a 0146     		mov	r1, r0
  38 001c 6846     		mov	r0, sp
  39 001e FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
  40 0022 2046     		mov	r0, r4
  41 0024 FFF7FEFF 		bl	mem_test_unit_ready
  42 0028 0328     		cmp	r0, #3
  43 002a 02D1     		bne	.L3
  44 002c 2046     		mov	r0, r4
  45 002e FFF7FEFF 		bl	mem_test_unit_ready
  46              	.L3:
  47 0032 30B1     		cbz	r0, .L11
  48 0034 0124     		movs	r4, #1
  49              	.L4:
  50 0036 6846     		mov	r0, sp
  51 0038 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
  52 003c 2046     		mov	r0, r4
  53 003e 02B0     		add	sp, sp, #8
  54              		@ sp needed
  55 0040 10BD     		pop	{r4, pc}
  56              	.L11:
  57 0042 2046     		mov	r0, r4
ARM GAS  /tmp/ccNaIrB7.s 			page 2


  58 0044 FFF7FEFF 		bl	mem_wr_protect
  59 0048 0028     		cmp	r0, #0
  60 004a 14BF     		ite	ne
  61 004c 0424     		movne	r4, #4
  62 004e 0024     		moveq	r4, #0
  63 0050 F1E7     		b	.L4
  64              		.size	disk_initialize, .-disk_initialize
  65 0052 00BF     		.section	.text.disk_status,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	disk_status
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu softvfp
  73              		.type	disk_status, %function
  74              	disk_status:
  75              		@ args = 0, pretend = 0, frame = 8
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77 0000 10B5     		push	{r4, lr}
  78 0002 82B0     		sub	sp, sp, #8
  79 0004 0446     		mov	r4, r0
  80 0006 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
  81 000a 4FF0FF32 		mov	r2, #-1
  82 000e 0146     		mov	r1, r0
  83 0010 6846     		mov	r0, sp
  84 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
  85 0016 2046     		mov	r0, r4
  86 0018 FFF7FEFF 		bl	mem_test_unit_ready
  87 001c 48B1     		cbz	r0, .L16
  88 001e 0228     		cmp	r0, #2
  89 0020 0CBF     		ite	eq
  90 0022 0324     		moveq	r4, #3
  91 0024 0124     		movne	r4, #1
  92 0026 6846     		mov	r0, sp
  93 0028 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
  94 002c 2046     		mov	r0, r4
  95 002e 02B0     		add	sp, sp, #8
  96              		@ sp needed
  97 0030 10BD     		pop	{r4, pc}
  98              	.L16:
  99 0032 0446     		mov	r4, r0
 100 0034 6846     		mov	r0, sp
 101 0036 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 102 003a 2046     		mov	r0, r4
 103 003c 02B0     		add	sp, sp, #8
 104              		@ sp needed
 105 003e 10BD     		pop	{r4, pc}
 106              		.size	disk_status, .-disk_status
 107              		.section	.text.disk_read,"ax",%progbits
 108              		.align	1
 109              		.p2align 2,,3
 110              		.global	disk_read
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu softvfp
ARM GAS  /tmp/ccNaIrB7.s 			page 3


 115              		.type	disk_read, %function
 116              	disk_read:
 117              		@ args = 0, pretend = 0, frame = 16
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 120 0004 84B0     		sub	sp, sp, #16
 121 0006 0546     		mov	r5, r0
 122 0008 8846     		mov	r8, r1
 123 000a 1646     		mov	r6, r2
 124 000c 1F46     		mov	r7, r3
 125 000e FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 126 0012 4FF0FF32 		mov	r2, #-1
 127 0016 0146     		mov	r1, r0
 128 0018 02A8     		add	r0, sp, #8
 129 001a FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 130 001e 2846     		mov	r0, r5
 131 0020 FFF7FEFF 		bl	mem_sector_size
 132 0024 38B9     		cbnz	r0, .L23
 133 0026 0124     		movs	r4, #1
 134              	.L19:
 135 0028 02A8     		add	r0, sp, #8
 136 002a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 137 002e 2046     		mov	r0, r4
 138 0030 04B0     		add	sp, sp, #16
 139              		@ sp needed
 140 0032 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 141              	.L23:
 142 0036 0446     		mov	r4, r0
 143 0038 01A9     		add	r1, sp, #4
 144 003a 2846     		mov	r0, r5
 145 003c FFF7FEFF 		bl	mem_read_capacity
 146 0040 019A     		ldr	r2, [sp, #4]
 147 0042 04FB0763 		mla	r3, r4, r7, r6
 148 0046 02FB0444 		mla	r4, r2, r4, r4
 149 004a A342     		cmp	r3, r4
 150 004c 01D9     		bls	.L24
 151 004e 0424     		movs	r4, #4
 152 0050 EAE7     		b	.L19
 153              	.L24:
 154 0052 3B46     		mov	r3, r7
 155 0054 4246     		mov	r2, r8
 156 0056 3146     		mov	r1, r6
 157 0058 2846     		mov	r0, r5
 158 005a FFF7FEFF 		bl	memory_2_ram
 159 005e 041C     		adds	r4, r0, #0
 160 0060 18BF     		it	ne
 161 0062 0124     		movne	r4, #1
 162 0064 E0E7     		b	.L19
 163              		.size	disk_read, .-disk_read
 164 0066 00BF     		.section	.text.disk_write,"ax",%progbits
 165              		.align	1
 166              		.p2align 2,,3
 167              		.global	disk_write
 168              		.syntax unified
 169              		.thumb
 170              		.thumb_func
 171              		.fpu softvfp
ARM GAS  /tmp/ccNaIrB7.s 			page 4


 172              		.type	disk_write, %function
 173              	disk_write:
 174              		@ args = 0, pretend = 0, frame = 16
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 177 0004 84B0     		sub	sp, sp, #16
 178 0006 0546     		mov	r5, r0
 179 0008 8846     		mov	r8, r1
 180 000a 1646     		mov	r6, r2
 181 000c 1F46     		mov	r7, r3
 182 000e FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 183 0012 4FF0FF32 		mov	r2, #-1
 184 0016 0146     		mov	r1, r0
 185 0018 02A8     		add	r0, sp, #8
 186 001a FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 187 001e 2846     		mov	r0, r5
 188 0020 FFF7FEFF 		bl	mem_sector_size
 189 0024 38B9     		cbnz	r0, .L30
 190 0026 0124     		movs	r4, #1
 191              	.L26:
 192 0028 02A8     		add	r0, sp, #8
 193 002a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 194 002e 2046     		mov	r0, r4
 195 0030 04B0     		add	sp, sp, #16
 196              		@ sp needed
 197 0032 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 198              	.L30:
 199 0036 0446     		mov	r4, r0
 200 0038 01A9     		add	r1, sp, #4
 201 003a 2846     		mov	r0, r5
 202 003c FFF7FEFF 		bl	mem_read_capacity
 203 0040 019A     		ldr	r2, [sp, #4]
 204 0042 04FB0763 		mla	r3, r4, r7, r6
 205 0046 02FB0444 		mla	r4, r2, r4, r4
 206 004a A342     		cmp	r3, r4
 207 004c 01D9     		bls	.L31
 208 004e 0424     		movs	r4, #4
 209 0050 EAE7     		b	.L26
 210              	.L31:
 211 0052 3B46     		mov	r3, r7
 212 0054 4246     		mov	r2, r8
 213 0056 3146     		mov	r1, r6
 214 0058 2846     		mov	r0, r5
 215 005a FFF7FEFF 		bl	ram_2_memory
 216 005e 041C     		adds	r4, r0, #0
 217 0060 18BF     		it	ne
 218 0062 0124     		movne	r4, #1
 219 0064 E0E7     		b	.L26
 220              		.size	disk_write, .-disk_write
 221 0066 00BF     		.section	.text.disk_ioctl,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	disk_ioctl
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu softvfp
ARM GAS  /tmp/ccNaIrB7.s 			page 5


 229              		.type	disk_ioctl, %function
 230              	disk_ioctl:
 231              		@ args = 0, pretend = 0, frame = 16
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233 0000 70B5     		push	{r4, r5, r6, lr}
 234 0002 0446     		mov	r4, r0
 235 0004 84B0     		sub	sp, sp, #16
 236 0006 1546     		mov	r5, r2
 237 0008 0329     		cmp	r1, #3
 238 000a 56D8     		bhi	.L42
 239 000c DFE801F0 		tbb	[pc, r1]
 240              	.L35:
 241 0010 38       		.byte	(.L34-.L35)/2
 242 0011 22       		.byte	(.L36-.L35)/2
 243 0012 08       		.byte	(.L37-.L35)/2
 244 0013 02       		.byte	(.L38-.L35)/2
 245              		.p2align 1
 246              	.L38:
 247 0014 0123     		movs	r3, #1
 248 0016 0024     		movs	r4, #0
 249 0018 1360     		str	r3, [r2]
 250              	.L33:
 251 001a 2046     		mov	r0, r4
 252 001c 04B0     		add	sp, sp, #16
 253              		@ sp needed
 254 001e 70BD     		pop	{r4, r5, r6, pc}
 255              	.L37:
 256 0020 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 257 0024 02AE     		add	r6, sp, #8
 258 0026 0146     		mov	r1, r0
 259 0028 4FF0FF32 		mov	r2, #-1
 260 002c 3046     		mov	r0, r6
 261 002e FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 262 0032 2046     		mov	r0, r4
 263 0034 FFF7FEFF 		bl	mem_sector_size
 264 0038 0828     		cmp	r0, #8
 265 003a 06D8     		bhi	.L39
 266 003c 4FF48B74 		mov	r4, #278
 267 0040 C440     		lsrs	r4, r4, r0
 268 0042 E443     		mvns	r4, r4
 269 0044 14F00104 		ands	r4, r4, #1
 270 0048 30D0     		beq	.L40
 271              	.L39:
 272 004a 3046     		mov	r0, r6
 273 004c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 274 0050 0124     		movs	r4, #1
 275 0052 E2E7     		b	.L33
 276              	.L36:
 277 0054 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 278 0058 4FF0FF32 		mov	r2, #-1
 279 005c 0146     		mov	r1, r0
 280 005e 02A8     		add	r0, sp, #8
 281 0060 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 282 0064 2046     		mov	r0, r4
 283 0066 0024     		movs	r4, #0
 284 0068 01A9     		add	r1, sp, #4
 285 006a FFF7FEFF 		bl	mem_read_capacity
ARM GAS  /tmp/ccNaIrB7.s 			page 6


 286 006e 019B     		ldr	r3, [sp, #4]
 287 0070 02A8     		add	r0, sp, #8
 288 0072 0133     		adds	r3, r3, #1
 289 0074 2B60     		str	r3, [r5]
 290 0076 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 291 007a 2046     		mov	r0, r4
 292 007c 04B0     		add	sp, sp, #16
 293              		@ sp needed
 294 007e 70BD     		pop	{r4, r5, r6, pc}
 295              	.L34:
 296 0080 FFF7FEFF 		bl	_ZN5Tasks11GetSpiMutexEv
 297 0084 02AE     		add	r6, sp, #8
 298 0086 0146     		mov	r1, r0
 299 0088 4FF0FF32 		mov	r2, #-1
 300 008c 3046     		mov	r0, r6
 301 008e FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 302 0092 2046     		mov	r0, r4
 303 0094 FFF7FEFF 		bl	mem_test_unit_ready
 304 0098 0028     		cmp	r0, #0
 305 009a 0CBF     		ite	eq
 306 009c 0024     		moveq	r4, #0
 307 009e 0324     		movne	r4, #3
 308 00a0 3046     		mov	r0, r6
 309 00a2 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 310 00a6 2046     		mov	r0, r4
 311 00a8 04B0     		add	sp, sp, #16
 312              		@ sp needed
 313 00aa 70BD     		pop	{r4, r5, r6, pc}
 314              	.L40:
 315 00ac 2C70     		strb	r4, [r5]
 316 00ae 3046     		mov	r0, r6
 317 00b0 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 318 00b4 2046     		mov	r0, r4
 319 00b6 04B0     		add	sp, sp, #16
 320              		@ sp needed
 321 00b8 70BD     		pop	{r4, r5, r6, pc}
 322              	.L42:
 323 00ba 0424     		movs	r4, #4
 324 00bc ADE7     		b	.L33
 325              		.size	disk_ioctl, .-disk_ioctl
 326 00be 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 327              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 328              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 329              	_ZL28cpu_irq_prev_interrupt_state:
 330 0000 00       		.space	1
 331              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 332              		.align	2
 333              		.type	_ZL32cpu_irq_critical_section_counter, %object
 334              		.size	_ZL32cpu_irq_critical_section_counter, 4
 335              	_ZL32cpu_irq_critical_section_counter:
 336 0000 00000000 		.space	4
 337              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 338              		.align	2
 339              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 340              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 341              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 342 0000 00000000 		.space	4
ARM GAS  /tmp/ccNaIrB7.s 			page 7


 343              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
