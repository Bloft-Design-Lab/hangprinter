ARM GAS  /tmp/cc2jmOl3.s 			page 1


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
  11              		.file	"system_sam4s.c"
  12              		.section	.text.SystemInit,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	SystemInit
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	SystemInit, %function
  21              	SystemInit:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 FFF7FEBF 		b	sysclk_init
  26              		.size	SystemInit, .-SystemInit
  27              		.section	.text.SystemCoreClockUpdate,"ax",%progbits
  28              		.align	1
  29              		.p2align 2,,3
  30              		.global	SystemCoreClockUpdate
  31              		.syntax unified
  32              		.thumb
  33              		.thumb_func
  34              		.fpu softvfp
  35              		.type	SystemCoreClockUpdate, %function
  36              	SystemCoreClockUpdate:
  37              		@ args = 0, pretend = 0, frame = 0
  38              		@ frame_needed = 0, uses_anonymous_args = 0
  39              		@ link register save eliminated.
  40 0000 3349     		ldr	r1, .L26
  41 0002 0B6B     		ldr	r3, [r1, #48]
  42 0004 03F00303 		and	r3, r3, #3
  43 0008 012B     		cmp	r3, #1
  44 000a 10B4     		push	{r4}
  45 000c 3FD0     		beq	.L4
  46 000e 27D3     		bcc	.L5
  47 0010 022B     		cmp	r3, #2
  48 0012 0ED0     		beq	.L6
  49 0014 2F4A     		ldr	r2, .L26+4
  50 0016 1368     		ldr	r3, [r2]
  51              	.L7:
  52 0018 2D48     		ldr	r0, .L26
  53 001a 016B     		ldr	r1, [r0, #48]
  54 001c 01F07001 		and	r1, r1, #112
  55 0020 7029     		cmp	r1, #112
  56 0022 2DD0     		beq	.L24
  57              	.L16:
ARM GAS  /tmp/cc2jmOl3.s 			page 2


  58 0024 016B     		ldr	r1, [r0, #48]
  59 0026 10BC     		pop	{r4}
  60 0028 C1F30211 		ubfx	r1, r1, #4, #3
  61 002c CB40     		lsrs	r3, r3, r1
  62 002e 1360     		str	r3, [r2]
  63 0030 7047     		bx	lr
  64              	.L6:
  65 0032 0B6A     		ldr	r3, [r1, #32]
  66 0034 274A     		ldr	r2, .L26+4
  67 0036 DB01     		lsls	r3, r3, #7
  68 0038 39D5     		bpl	.L25
  69              	.L15:
  70 003a 274B     		ldr	r3, .L26+8
  71 003c 1360     		str	r3, [r2]
  72              	.L13:
  73 003e 2448     		ldr	r0, .L26
  74 0040 016B     		ldr	r1, [r0, #48]
  75 0042 01F00301 		and	r1, r1, #3
  76 0046 0229     		cmp	r1, #2
  77 0048 E6D1     		bne	.L7
  78 004a 846A     		ldr	r4, [r0, #40]
  79 004c 816A     		ldr	r1, [r0, #40]
  80 004e C4F30A40 		ubfx	r0, r4, #16, #11
  81 0052 00FB0333 		mla	r3, r0, r3, r3
  82 0056 C9B2     		uxtb	r1, r1
  83 0058 B3FBF1F3 		udiv	r3, r3, r1
  84 005c 1360     		str	r3, [r2]
  85 005e DBE7     		b	.L7
  86              	.L5:
  87 0060 1E4B     		ldr	r3, .L26+12
  88 0062 1C4A     		ldr	r2, .L26+4
  89 0064 5B69     		ldr	r3, [r3, #20]
  90 0066 1A48     		ldr	r0, .L26
  91 0068 1C06     		lsls	r4, r3, #24
  92 006a 4CBF     		ite	mi
  93 006c 4FF40043 		movmi	r3, #32768
  94 0070 4FF4FA43 		movpl	r3, #32000
  95 0074 1360     		str	r3, [r2]
  96 0076 016B     		ldr	r1, [r0, #48]
  97 0078 01F07001 		and	r1, r1, #112
  98 007c 7029     		cmp	r1, #112
  99 007e D1D1     		bne	.L16
 100              	.L24:
 101 0080 1749     		ldr	r1, .L26+16
 102 0082 10BC     		pop	{r4}
 103 0084 A1FB0313 		umull	r1, r3, r1, r3
 104 0088 5B08     		lsrs	r3, r3, #1
 105 008a 1360     		str	r3, [r2]
 106 008c 7047     		bx	lr
 107              	.L4:
 108 008e 0B6A     		ldr	r3, [r1, #32]
 109 0090 104A     		ldr	r2, .L26+4
 110 0092 D801     		lsls	r0, r3, #7
 111 0094 08D4     		bmi	.L11
 112 0096 134B     		ldr	r3, .L26+20
 113 0098 1360     		str	r3, [r2]
 114 009a 096A     		ldr	r1, [r1, #32]
ARM GAS  /tmp/cc2jmOl3.s 			page 3


 115 009c 01F07001 		and	r1, r1, #112
 116 00a0 1029     		cmp	r1, #16
 117 00a2 11D0     		beq	.L10
 118 00a4 2029     		cmp	r1, #32
 119 00a6 B7D1     		bne	.L7
 120              	.L11:
 121 00a8 0B4B     		ldr	r3, .L26+8
 122 00aa 1360     		str	r3, [r2]
 123 00ac B4E7     		b	.L7
 124              	.L25:
 125 00ae 0D4B     		ldr	r3, .L26+20
 126 00b0 1360     		str	r3, [r2]
 127 00b2 096A     		ldr	r1, [r1, #32]
 128 00b4 01F07001 		and	r1, r1, #112
 129 00b8 1029     		cmp	r1, #16
 130 00ba 02D0     		beq	.L14
 131 00bc 2029     		cmp	r1, #32
 132 00be BCD0     		beq	.L15
 133 00c0 BDE7     		b	.L13
 134              	.L14:
 135 00c2 094B     		ldr	r3, .L26+24
 136 00c4 1360     		str	r3, [r2]
 137 00c6 BAE7     		b	.L13
 138              	.L10:
 139 00c8 074B     		ldr	r3, .L26+24
 140 00ca 1360     		str	r3, [r2]
 141 00cc A4E7     		b	.L7
 142              	.L27:
 143 00ce 00BF     		.align	2
 144              	.L26:
 145 00d0 00040E40 		.word	1074660352
 146 00d4 00000000 		.word	.LANCHOR0
 147 00d8 001BB700 		.word	12000000
 148 00dc 10140E40 		.word	1074664464
 149 00e0 ABAAAAAA 		.word	-1431655765
 150 00e4 00093D00 		.word	4000000
 151 00e8 00127A00 		.word	8000000
 152              		.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
 153              		.section	.text.system_init_flash,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	system_init_flash
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu softvfp
 161              		.type	system_init_flash, %function
 162              	system_init_flash:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 124B     		ldr	r3, .L39
 167 0002 9842     		cmp	r0, r3
 168 0004 15D9     		bls	.L35
 169 0006 124B     		ldr	r3, .L39+4
 170 0008 9842     		cmp	r0, r3
 171 000a 0ED9     		bls	.L36
ARM GAS  /tmp/cc2jmOl3.s 			page 4


 172 000c 114B     		ldr	r3, .L39+8
 173 000e 9842     		cmp	r0, r3
 174 0010 18D9     		bls	.L37
 175 0012 114B     		ldr	r3, .L39+12
 176 0014 9842     		cmp	r0, r3
 177 0016 11D9     		bls	.L38
 178 0018 104B     		ldr	r3, .L39+16
 179 001a 9842     		cmp	r0, r3
 180 001c 104B     		ldr	r3, .L39+20
 181 001e 8CBF     		ite	hi
 182 0020 104A     		ldrhi	r2, .L39+24
 183 0022 4FF00422 		movls	r2, #67109888
 184 0026 1A60     		str	r2, [r3]
 185 0028 7047     		bx	lr
 186              	.L36:
 187 002a 0D4B     		ldr	r3, .L39+20
 188 002c 0E4A     		ldr	r2, .L39+28
 189 002e 1A60     		str	r2, [r3]
 190 0030 7047     		bx	lr
 191              	.L35:
 192 0032 0B4B     		ldr	r3, .L39+20
 193 0034 4FF08062 		mov	r2, #67108864
 194 0038 1A60     		str	r2, [r3]
 195 003a 7047     		bx	lr
 196              	.L38:
 197 003c 084B     		ldr	r3, .L39+20
 198 003e 0B4A     		ldr	r2, .L39+32
 199 0040 1A60     		str	r2, [r3]
 200 0042 7047     		bx	lr
 201              	.L37:
 202 0044 064B     		ldr	r3, .L39+20
 203 0046 0A4A     		ldr	r2, .L39+36
 204 0048 1A60     		str	r2, [r3]
 205 004a 7047     		bx	lr
 206              	.L40:
 207              		.align	2
 208              	.L39:
 209 004c FF2C3101 		.word	19999999
 210 0050 FF596202 		.word	39999999
 211 0054 FF869303 		.word	59999999
 212 0058 FFB3C404 		.word	79999999
 213 005c FFE0F505 		.word	99999999
 214 0060 000A0E40 		.word	1074661888
 215 0064 00050004 		.word	67110144
 216 0068 00010004 		.word	67109120
 217 006c 00030004 		.word	67109632
 218 0070 00020004 		.word	67109376
 219              		.size	system_init_flash, .-system_init_flash
 220              		.global	SystemCoreClock
 221              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 222              		.align	2
 223              		.type	cpu_irq_critical_section_counter, %object
 224              		.size	cpu_irq_critical_section_counter, 4
 225              	cpu_irq_critical_section_counter:
 226 0000 00000000 		.space	4
 227              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 228              		.type	cpu_irq_prev_interrupt_state, %object
ARM GAS  /tmp/cc2jmOl3.s 			page 5


 229              		.size	cpu_irq_prev_interrupt_state, 1
 230              	cpu_irq_prev_interrupt_state:
 231 0000 00       		.space	1
 232              		.section	.data.SystemCoreClock,"aw",%progbits
 233              		.align	2
 234              		.set	.LANCHOR0,. + 0
 235              		.type	SystemCoreClock, %object
 236              		.size	SystemCoreClock, 4
 237              	SystemCoreClock:
 238 0000 00093D00 		.word	4000000
 239              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
