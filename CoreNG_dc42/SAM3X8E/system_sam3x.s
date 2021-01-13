ARM GAS  /tmp/ccdd7zpY.s 			page 1


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
  11              		.file	"system_sam3x.c"
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
  25 0000 4FF48062 		mov	r2, #1024
  26 0004 1A48     		ldr	r0, .L23
  27 0006 1B49     		ldr	r1, .L23+4
  28 0008 1B4B     		ldr	r3, .L23+8
  29 000a 0260     		str	r2, [r0]
  30 000c 0A60     		str	r2, [r1]
  31 000e 1A6A     		ldr	r2, [r3, #32]
  32 0010 D201     		lsls	r2, r2, #7
  33 0012 05D4     		bmi	.L5
  34 0014 1A46     		mov	r2, r3
  35 0016 1949     		ldr	r1, .L23+12
  36 0018 1962     		str	r1, [r3, #32]
  37              	.L4:
  38 001a 936E     		ldr	r3, [r2, #104]
  39 001c D807     		lsls	r0, r3, #31
  40 001e FCD5     		bpl	.L4
  41              	.L5:
  42 0020 154B     		ldr	r3, .L23+8
  43 0022 1749     		ldr	r1, .L23+16
  44 0024 1A46     		mov	r2, r3
  45 0026 1962     		str	r1, [r3, #32]
  46              	.L3:
  47 0028 936E     		ldr	r3, [r2, #104]
  48 002a D903     		lsls	r1, r3, #15
  49 002c FCD5     		bpl	.L3
  50 002e 136B     		ldr	r3, [r2, #48]
  51 0030 1148     		ldr	r0, .L23+8
  52 0032 23F00303 		bic	r3, r3, #3
  53 0036 43F00103 		orr	r3, r3, #1
  54 003a 1363     		str	r3, [r2, #48]
  55              	.L6:
  56 003c 836E     		ldr	r3, [r0, #104]
  57 003e 1B07     		lsls	r3, r3, #28
ARM GAS  /tmp/ccdd7zpY.s 			page 2


  58 0040 FCD5     		bpl	.L6
  59 0042 104B     		ldr	r3, .L23+20
  60 0044 0C49     		ldr	r1, .L23+8
  61 0046 8362     		str	r3, [r0, #40]
  62              	.L7:
  63 0048 8B6E     		ldr	r3, [r1, #104]
  64 004a 9807     		lsls	r0, r3, #30
  65 004c FCD5     		bpl	.L7
  66 004e 1123     		movs	r3, #17
  67 0050 094A     		ldr	r2, .L23+8
  68 0052 0B63     		str	r3, [r1, #48]
  69              	.L8:
  70 0054 936E     		ldr	r3, [r2, #104]
  71 0056 1907     		lsls	r1, r3, #28
  72 0058 FCD5     		bpl	.L8
  73 005a 1223     		movs	r3, #18
  74 005c 0649     		ldr	r1, .L23+8
  75 005e 1363     		str	r3, [r2, #48]
  76              	.L9:
  77 0060 8B6E     		ldr	r3, [r1, #104]
  78 0062 1B07     		lsls	r3, r3, #28
  79 0064 FCD5     		bpl	.L9
  80 0066 084B     		ldr	r3, .L23+24
  81 0068 084A     		ldr	r2, .L23+28
  82 006a 1A60     		str	r2, [r3]
  83 006c 7047     		bx	lr
  84              	.L24:
  85 006e 00BF     		.align	2
  86              	.L23:
  87 0070 000A0E40 		.word	1074661888
  88 0074 000C0E40 		.word	1074662400
  89 0078 00060E40 		.word	1074660864
  90 007c 09083700 		.word	3606537
  91 0080 09083701 		.word	20383753
  92 0084 013F0D20 		.word	537739009
  93 0088 00000000 		.word	.LANCHOR0
  94 008c 00BD0105 		.word	84000000
  95              		.size	SystemInit, .-SystemInit
  96              		.section	.text.SystemCoreClockUpdate,"ax",%progbits
  97              		.align	1
  98              		.p2align 2,,3
  99              		.global	SystemCoreClockUpdate
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu softvfp
 104              		.type	SystemCoreClockUpdate, %function
 105              	SystemCoreClockUpdate:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108              		@ link register save eliminated.
 109 0000 334A     		ldr	r2, .L47
 110 0002 136B     		ldr	r3, [r2, #48]
 111 0004 03F00303 		and	r3, r3, #3
 112 0008 012B     		cmp	r3, #1
 113 000a 31D0     		beq	.L27
 114 000c 19D3     		bcc	.L26
ARM GAS  /tmp/ccdd7zpY.s 			page 3


 115 000e 136A     		ldr	r3, [r2, #32]
 116 0010 D901     		lsls	r1, r3, #7
 117 0012 3DD5     		bpl	.L34
 118 0014 2F49     		ldr	r1, .L47+4
 119 0016 304B     		ldr	r3, .L47+8
 120 0018 0B60     		str	r3, [r1]
 121              	.L35:
 122 001a 2D4A     		ldr	r2, .L47
 123 001c 136B     		ldr	r3, [r2, #48]
 124 001e 03F00303 		and	r3, r3, #3
 125 0022 022B     		cmp	r3, #2
 126 0024 41D0     		beq	.L45
 127 0026 2D4B     		ldr	r3, .L47+12
 128 0028 2948     		ldr	r0, .L47
 129 002a 0B60     		str	r3, [r1]
 130 002c 026B     		ldr	r2, [r0, #48]
 131 002e 02F07002 		and	r2, r2, #112
 132 0032 702A     		cmp	r2, #112
 133 0034 16D1     		bne	.L39
 134              	.L46:
 135 0036 2A4A     		ldr	r2, .L47+16
 136 0038 A2FB0323 		umull	r2, r3, r2, r3
 137 003c 5B08     		lsrs	r3, r3, #1
 138 003e 0B60     		str	r3, [r1]
 139 0040 7047     		bx	lr
 140              	.L26:
 141 0042 284B     		ldr	r3, .L47+20
 142 0044 2349     		ldr	r1, .L47+4
 143 0046 5B69     		ldr	r3, [r3, #20]
 144 0048 1A06     		lsls	r2, r3, #24
 145 004a 4CBF     		ite	mi
 146 004c 4FF40042 		movmi	r2, #32768
 147 0050 4FF4FA42 		movpl	r2, #32000
 148 0054 1346     		mov	r3, r2
 149 0056 0A60     		str	r2, [r1]
 150              	.L30:
 151 0058 1D48     		ldr	r0, .L47
 152 005a 026B     		ldr	r2, [r0, #48]
 153 005c 02F07002 		and	r2, r2, #112
 154 0060 702A     		cmp	r2, #112
 155 0062 E8D0     		beq	.L46
 156              	.L39:
 157 0064 026B     		ldr	r2, [r0, #48]
 158 0066 C2F30212 		ubfx	r2, r2, #4, #3
 159 006a D340     		lsrs	r3, r3, r2
 160 006c 0B60     		str	r3, [r1]
 161 006e 7047     		bx	lr
 162              	.L27:
 163 0070 136A     		ldr	r3, [r2, #32]
 164 0072 1849     		ldr	r1, .L47+4
 165 0074 DB01     		lsls	r3, r3, #7
 166 0076 08D4     		bmi	.L33
 167 0078 1B4B     		ldr	r3, .L47+24
 168 007a 0B60     		str	r3, [r1]
 169 007c 126A     		ldr	r2, [r2, #32]
 170 007e 02F07002 		and	r2, r2, #112
 171 0082 102A     		cmp	r2, #16
ARM GAS  /tmp/ccdd7zpY.s 			page 4


 172 0084 20D0     		beq	.L32
 173 0086 202A     		cmp	r2, #32
 174 0088 E6D1     		bne	.L30
 175              	.L33:
 176 008a 134B     		ldr	r3, .L47+8
 177 008c 0B60     		str	r3, [r1]
 178 008e E3E7     		b	.L30
 179              	.L34:
 180 0090 154B     		ldr	r3, .L47+24
 181 0092 1049     		ldr	r1, .L47+4
 182 0094 0B60     		str	r3, [r1]
 183 0096 136A     		ldr	r3, [r2, #32]
 184 0098 03F07003 		and	r3, r3, #112
 185 009c 102B     		cmp	r3, #16
 186 009e 10D0     		beq	.L36
 187 00a0 202B     		cmp	r3, #32
 188 00a2 BAD1     		bne	.L35
 189 00a4 0C4B     		ldr	r3, .L47+8
 190 00a6 0B60     		str	r3, [r1]
 191 00a8 B7E7     		b	.L35
 192              	.L45:
 193 00aa 906A     		ldr	r0, [r2, #40]
 194 00ac 0B68     		ldr	r3, [r1]
 195 00ae C0F30A40 		ubfx	r0, r0, #16, #11
 196 00b2 00FB0333 		mla	r3, r0, r3, r3
 197 00b6 926A     		ldr	r2, [r2, #40]
 198 00b8 D2B2     		uxtb	r2, r2
 199 00ba B3FBF2F3 		udiv	r3, r3, r2
 200 00be 0B60     		str	r3, [r1]
 201 00c0 CAE7     		b	.L30
 202              	.L36:
 203 00c2 0A4B     		ldr	r3, .L47+28
 204 00c4 0B60     		str	r3, [r1]
 205 00c6 A8E7     		b	.L35
 206              	.L32:
 207 00c8 084B     		ldr	r3, .L47+28
 208 00ca 0B60     		str	r3, [r1]
 209 00cc C4E7     		b	.L30
 210              	.L48:
 211 00ce 00BF     		.align	2
 212              	.L47:
 213 00d0 00060E40 		.word	1074660864
 214 00d4 00000000 		.word	.LANCHOR0
 215 00d8 001BB700 		.word	12000000
 216 00dc 001C4E0E 		.word	240000000
 217 00e0 ABAAAAAA 		.word	-1431655765
 218 00e4 101A0E40 		.word	1074666000
 219 00e8 00093D00 		.word	4000000
 220 00ec 00127A00 		.word	8000000
 221              		.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
 222              		.section	.text.system_init_flash,"ax",%progbits
 223              		.align	1
 224              		.p2align 2,,3
 225              		.global	system_init_flash
 226              		.syntax unified
 227              		.thumb
 228              		.thumb_func
ARM GAS  /tmp/ccdd7zpY.s 			page 5


 229              		.fpu softvfp
 230              		.type	system_init_flash, %function
 231              	system_init_flash:
 232              		@ args = 0, pretend = 0, frame = 0
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234              		@ link register save eliminated.
 235 0000 194B     		ldr	r3, .L60
 236 0002 9842     		cmp	r0, r3
 237 0004 1BD9     		bls	.L56
 238 0006 194B     		ldr	r3, .L60+4
 239 0008 9842     		cmp	r0, r3
 240 000a 11D9     		bls	.L57
 241 000c 184B     		ldr	r3, .L60+8
 242 000e 9842     		cmp	r0, r3
 243 0010 22D9     		bls	.L58
 244 0012 184B     		ldr	r3, .L60+12
 245 0014 9842     		cmp	r0, r3
 246 0016 18D9     		bls	.L59
 247 0018 174B     		ldr	r3, .L60+16
 248 001a 1849     		ldr	r1, .L60+20
 249 001c 9842     		cmp	r0, r3
 250 001e 94BF     		ite	ls
 251 0020 4FF48063 		movls	r3, #1024
 252 0024 4FF4A063 		movhi	r3, #1280
 253 0028 154A     		ldr	r2, .L60+24
 254 002a 0B60     		str	r3, [r1]
 255 002c 1360     		str	r3, [r2]
 256 002e 7047     		bx	lr
 257              	.L57:
 258 0030 4FF48073 		mov	r3, #256
 259 0034 1149     		ldr	r1, .L60+20
 260 0036 124A     		ldr	r2, .L60+24
 261 0038 0B60     		str	r3, [r1]
 262 003a 1360     		str	r3, [r2]
 263 003c 7047     		bx	lr
 264              	.L56:
 265 003e 0023     		movs	r3, #0
 266 0040 0E49     		ldr	r1, .L60+20
 267 0042 0F4A     		ldr	r2, .L60+24
 268 0044 0B60     		str	r3, [r1]
 269 0046 1360     		str	r3, [r2]
 270 0048 7047     		bx	lr
 271              	.L59:
 272 004a 4FF44073 		mov	r3, #768
 273 004e 0B49     		ldr	r1, .L60+20
 274 0050 0B4A     		ldr	r2, .L60+24
 275 0052 0B60     		str	r3, [r1]
 276 0054 1360     		str	r3, [r2]
 277 0056 7047     		bx	lr
 278              	.L58:
 279 0058 4FF40073 		mov	r3, #512
 280 005c 0749     		ldr	r1, .L60+20
 281 005e 084A     		ldr	r2, .L60+24
 282 0060 0B60     		str	r3, [r1]
 283 0062 1360     		str	r3, [r2]
 284 0064 7047     		bx	lr
 285              	.L61:
ARM GAS  /tmp/ccdd7zpY.s 			page 6


 286 0066 00BF     		.align	2
 287              	.L60:
 288 0068 BFEA2101 		.word	18999999
 289 006c 7FF0FA02 		.word	49999999
 290 0070 FF8FD003 		.word	63999999
 291 0074 FFB3C404 		.word	79999999
 292 0078 7F4A5D05 		.word	89999999
 293 007c 000A0E40 		.word	1074661888
 294 0080 000C0E40 		.word	1074662400
 295              		.size	system_init_flash, .-system_init_flash
 296              		.global	SystemCoreClock
 297              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 298              		.align	2
 299              		.type	cpu_irq_critical_section_counter, %object
 300              		.size	cpu_irq_critical_section_counter, 4
 301              	cpu_irq_critical_section_counter:
 302 0000 00000000 		.space	4
 303              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 304              		.type	cpu_irq_prev_interrupt_state, %object
 305              		.size	cpu_irq_prev_interrupt_state, 1
 306              	cpu_irq_prev_interrupt_state:
 307 0000 00       		.space	1
 308              		.section	.data.SystemCoreClock,"aw",%progbits
 309              		.align	2
 310              		.set	.LANCHOR0,. + 0
 311              		.type	SystemCoreClock, %object
 312              		.size	SystemCoreClock, 4
 313              	SystemCoreClock:
 314 0000 00093D00 		.word	4000000
 315              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
