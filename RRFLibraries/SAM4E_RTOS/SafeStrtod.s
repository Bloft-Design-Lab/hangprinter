ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczMIigR.s 			page 1


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
  13              		.file	"SafeStrtod.cpp"
  14              		.text
  15              		.global	__aeabi_dmul
  16              		.global	__aeabi_i2d
  17              		.global	__aeabi_dadd
  18              		.global	__aeabi_ui2d
  19              		.global	__aeabi_dcmpeq
  20              		.global	__aeabi_ddiv
  21              		.section	.text._Z10SafeStrtodPKcPS0_,"ax",%progbits
  22              		.align	1
  23              		.p2align 2,,3
  24              		.global	_Z10SafeStrtodPKcPS0_
  25              		.syntax unified
  26              		.thumb
  27              		.thumb_func
  28              		.fpu fpv4-sp-d16
  29              		.type	_Z10SafeStrtodPKcPS0_, %function
  30              	_Z10SafeStrtodPKcPS0_:
  31              		@ args = 0, pretend = 0, frame = 24
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  34 0004 8B46     		mov	fp, r1
  35 0006 87B0     		sub	sp, sp, #28
  36              	.L2:
  37 0008 0578     		ldrb	r5, [r0]	@ zero_extendqisi2
  38 000a 202D     		cmp	r5, #32
  39 000c 0446     		mov	r4, r0
  40 000e 00F10100 		add	r0, r0, #1
  41 0012 F9D0     		beq	.L2
  42 0014 092D     		cmp	r5, #9
  43 0016 F7D0     		beq	.L2
  44 0018 2D2D     		cmp	r5, #45
  45 001a 03D0     		beq	.L4
  46 001c 2B2D     		cmp	r5, #43
  47 001e 01D0     		beq	.L4
  48 0020 2846     		mov	r0, r5
  49 0022 01E0     		b	.L5
  50              	.L4:
  51 0024 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
  52 0026 0134     		adds	r4, r4, #1
  53              	.L5:
  54 0028 A0F1300A 		sub	r10, r0, #48
  55 002c BAF1090F 		cmp	r10, #9
  56 0030 4FF00008 		mov	r8, #0
  57 0034 4FF00009 		mov	r9, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczMIigR.s 			page 2


  58 0038 19D8     		bhi	.L6
  59 003a 774F     		ldr	r7, .L63+16
  60 003c 0026     		movs	r6, #0
  61              	.L7:
  62 003e 3246     		mov	r2, r6
  63 0040 3B46     		mov	r3, r7
  64 0042 4046     		mov	r0, r8
  65 0044 4946     		mov	r1, r9
  66 0046 FFF7FEFF 		bl	__aeabi_dmul
  67 004a 8046     		mov	r8, r0
  68 004c 8946     		mov	r9, r1
  69 004e 5046     		mov	r0, r10
  70 0050 FFF7FEFF 		bl	__aeabi_i2d
  71 0054 4246     		mov	r2, r8
  72 0056 4B46     		mov	r3, r9
  73 0058 FFF7FEFF 		bl	__aeabi_dadd
  74 005c 8046     		mov	r8, r0
  75 005e 14F8010F 		ldrb	r0, [r4, #1]!	@ zero_extendqisi2
  76 0062 A0F1300A 		sub	r10, r0, #48
  77 0066 BAF1090F 		cmp	r10, #9
  78 006a 8946     		mov	r9, r1
  79 006c E7D9     		bls	.L7
  80              	.L6:
  81 006e 2E28     		cmp	r0, #46
  82 0070 5CD0     		beq	.L60
  83 0072 FFF7FEFF 		bl	toupper
  84 0076 4528     		cmp	r0, #69
  85 0078 4BD1     		bne	.L61
  86 007a 0027     		movs	r7, #0
  87 007c BA46     		mov	r10, r7
  88              	.L25:
  89 007e 6178     		ldrb	r1, [r4, #1]	@ zero_extendqisi2
  90 0080 2D29     		cmp	r1, #45
  91 0082 00F0B380 		beq	.L14
  92 0086 2B29     		cmp	r1, #43
  93 0088 00F0B080 		beq	.L14
  94 008c 0134     		adds	r4, r4, #1
  95 008e 0B46     		mov	r3, r1
  96              	.L15:
  97 0090 303B     		subs	r3, r3, #48
  98 0092 092B     		cmp	r3, #9
  99 0094 4FF00006 		mov	r6, #0
 100 0098 09D8     		bhi	.L18
 101              	.L16:
 102 009a 14F8012F 		ldrb	r2, [r4, #1]!	@ zero_extendqisi2
 103 009e 06EB8606 		add	r6, r6, r6, lsl #2
 104 00a2 03EB4606 		add	r6, r3, r6, lsl #1
 105 00a6 A2F13003 		sub	r3, r2, #48
 106 00aa 092B     		cmp	r3, #9
 107 00ac F5D9     		bls	.L16
 108              	.L18:
 109 00ae 2D29     		cmp	r1, #45
 110 00b0 00D1     		bne	.L13
 111 00b2 7642     		negs	r6, r6
 112              	.L13:
 113 00b4 BAF1000F 		cmp	r10, #0
 114 00b8 00F09E80 		beq	.L19
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczMIigR.s 			page 3


 115 00bc 5046     		mov	r0, r10
 116 00be FFF7FEFF 		bl	__aeabi_ui2d
 117 00c2 0022     		movs	r2, #0
 118 00c4 CDE90001 		strd	r0, [sp]
 119 00c8 0023     		movs	r3, #0
 120 00ca 4046     		mov	r0, r8
 121 00cc 4946     		mov	r1, r9
 122 00ce FFF7FEFF 		bl	__aeabi_dcmpeq
 123 00d2 0028     		cmp	r0, #0
 124 00d4 61D0     		beq	.L57
 125 00d6 F01B     		subs	r0, r6, r7
 126 00d8 FFF7FEFF 		bl	__aeabi_i2d
 127 00dc 9FED4A0B 		vldr.64	d0, .L63
 128 00e0 41EC110B 		vmov	d1, r0, r1
 129 00e4 FFF7FEFF 		bl	pow
 130 00e8 DDE90023 		ldrd	r2, [sp]
 131 00ec 51EC100B 		vmov	r0, r1, d0
 132 00f0 FFF7FEFF 		bl	__aeabi_dmul
 133              	.L22:
 134 00f4 BBF1000F 		cmp	fp, #0
 135 00f8 01D0     		beq	.L23
 136 00fa CBF80040 		str	r4, [fp]
 137              	.L23:
 138 00fe 2D2D     		cmp	r5, #45
 139 0100 02D1     		bne	.L1
 140 0102 01F10043 		add	r3, r1, #-2147483648
 141 0106 1946     		mov	r1, r3
 142              	.L1:
 143 0108 41EC100B 		vmov	d0, r0, r1
 144 010c 07B0     		add	sp, sp, #28
 145              		@ sp needed
 146 010e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 147              	.L61:
 148 0112 9FED3F1B 		vldr.64	d1, .L63+8
 149              	.L26:
 150 0116 9FED3C0B 		vldr.64	d0, .L63
 151 011a FFF7FEFF 		bl	pow
 152 011e 4246     		mov	r2, r8
 153 0120 4B46     		mov	r3, r9
 154 0122 51EC100B 		vmov	r0, r1, d0
 155 0126 FFF7FEFF 		bl	__aeabi_dmul
 156 012a E3E7     		b	.L22
 157              	.L60:
 158 012c 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 159 012e A0F13003 		sub	r3, r0, #48
 160 0132 092B     		cmp	r3, #9
 161 0134 04F10104 		add	r4, r4, #1
 162 0138 5BD8     		bhi	.L29
 163 013a 0021     		movs	r1, #0
 164 013c 374E     		ldr	r6, .L63+20
 165 013e 0F46     		mov	r7, r1
 166 0140 8A46     		mov	r10, r1
 167 0142 08E0     		b	.L12
 168              	.L62:
 169 0144 03EB420A 		add	r10, r3, r2, lsl #1
 170 0148 0137     		adds	r7, r7, #1
 171              	.L10:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczMIigR.s 			page 4


 172 014a 14F8010F 		ldrb	r0, [r4, #1]!	@ zero_extendqisi2
 173 014e A0F13003 		sub	r3, r0, #48
 174 0152 092B     		cmp	r3, #9
 175 0154 18D8     		bhi	.L9
 176              	.L12:
 177 0156 DA43     		mvns	r2, r3
 178 0158 A6FB0202 		umull	r0, r2, r6, r2
 179 015c 0029     		cmp	r1, #0
 180 015e F4D1     		bne	.L10
 181 0160 BAEBD20F 		cmp	r10, r2, lsr #3
 182 0164 0AEB8A02 		add	r2, r10, r10, lsl #2
 183 0168 ECD9     		bls	.L62
 184 016a 042B     		cmp	r3, #4
 185 016c 13D9     		bls	.L31
 186 016e BAF1FF3F 		cmp	r10, #-1
 187 0172 10D0     		beq	.L31
 188 0174 14F8010F 		ldrb	r0, [r4, #1]!	@ zero_extendqisi2
 189 0178 A0F13003 		sub	r3, r0, #48
 190 017c 092B     		cmp	r3, #9
 191 017e 0AF1010A 		add	r10, r10, #1
 192 0182 4FF00101 		mov	r1, #1
 193 0186 E6D9     		bls	.L12
 194              	.L9:
 195 0188 FFF7FEFF 		bl	toupper
 196 018c 4528     		cmp	r0, #69
 197 018e 18BF     		it	ne
 198 0190 0026     		movne	r6, #0
 199 0192 8FD1     		bne	.L13
 200 0194 73E7     		b	.L25
 201              	.L31:
 202 0196 0121     		movs	r1, #1
 203 0198 D7E7     		b	.L10
 204              	.L57:
 205 019a 3846     		mov	r0, r7
 206 019c FFF7FEFF 		bl	__aeabi_i2d
 207 01a0 9FED190B 		vldr.64	d0, .L63
 208 01a4 41EC110B 		vmov	d1, r0, r1
 209 01a8 FFF7FEFF 		bl	pow
 210 01ac 53EC102B 		vmov	r2, r3, d0
 211 01b0 3046     		mov	r0, r6
 212 01b2 CDE90423 		strd	r2, [sp, #16]
 213 01b6 FFF7FEFF 		bl	__aeabi_i2d
 214 01ba 9FED130B 		vldr.64	d0, .L63
 215 01be 41EC110B 		vmov	d1, r0, r1
 216 01c2 FFF7FEFF 		bl	pow
 217 01c6 DDE90423 		ldrd	r2, [sp, #16]
 218 01ca DDE90001 		ldrd	r0, [sp]
 219 01ce 8DED020B 		vstr.64	d0, [sp, #8]
 220 01d2 FFF7FEFF 		bl	__aeabi_ddiv
 221 01d6 4246     		mov	r2, r8
 222 01d8 4B46     		mov	r3, r9
 223 01da FFF7FEFF 		bl	__aeabi_dadd
 224 01de 9DED020B 		vldr.64	d0, [sp, #8]
 225 01e2 53EC102B 		vmov	r2, r3, d0
 226 01e6 FFF7FEFF 		bl	__aeabi_dmul
 227 01ea 83E7     		b	.L22
 228              	.L14:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczMIigR.s 			page 5


 229 01ec A378     		ldrb	r3, [r4, #2]	@ zero_extendqisi2
 230 01ee 0234     		adds	r4, r4, #2
 231 01f0 4EE7     		b	.L15
 232              	.L29:
 233 01f2 0027     		movs	r7, #0
 234 01f4 BA46     		mov	r10, r7
 235 01f6 C7E7     		b	.L9
 236              	.L19:
 237 01f8 3046     		mov	r0, r6
 238 01fa FFF7FEFF 		bl	__aeabi_i2d
 239 01fe 41EC110B 		vmov	d1, r0, r1
 240 0202 88E7     		b	.L26
 241              	.L64:
 242 0204 AFF30080 		.align	3
 243              	.L63:
 244 0208 00000000 		.word	0
 245 020c 00002440 		.word	1076101120
 246 0210 00000000 		.word	0
 247 0214 00000000 		.word	0
 248 0218 00002440 		.word	1076101120
 249 021c CDCCCCCC 		.word	-858993459
 250              		.size	_Z10SafeStrtodPKcPS0_, .-_Z10SafeStrtodPKcPS0_
 251              		.global	__aeabi_d2f
 252              		.section	.text._Z10SafeStrtofPKcPS0_,"ax",%progbits
 253              		.align	1
 254              		.p2align 2,,3
 255              		.global	_Z10SafeStrtofPKcPS0_
 256              		.syntax unified
 257              		.thumb
 258              		.thumb_func
 259              		.fpu fpv4-sp-d16
 260              		.type	_Z10SafeStrtofPKcPS0_, %function
 261              	_Z10SafeStrtofPKcPS0_:
 262              		@ args = 0, pretend = 0, frame = 0
 263              		@ frame_needed = 0, uses_anonymous_args = 0
 264 0000 08B5     		push	{r3, lr}
 265 0002 FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 266 0006 51EC100B 		vmov	r0, r1, d0
 267 000a FFF7FEFF 		bl	__aeabi_d2f
 268 000e 00EE100A 		vmov	s0, r0
 269 0012 08BD     		pop	{r3, pc}
 270              		.size	_Z10SafeStrtofPKcPS0_, .-_Z10SafeStrtofPKcPS0_
 271              		.section	.text._Z11SafeStrtoulPKcPS0_i,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	_Z11SafeStrtoulPKcPS0_i
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv4-sp-d16
 279              		.type	_Z11SafeStrtoulPKcPS0_i, %function
 280              	_Z11SafeStrtoulPKcPS0_i:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283              		@ link register save eliminated.
 284 0000 10B4     		push	{r4}
 285              	.L68:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczMIigR.s 			page 6


 286 0002 0446     		mov	r4, r0
 287 0004 10F8013B 		ldrb	r3, [r0], #1	@ zero_extendqisi2
 288 0008 202B     		cmp	r3, #32
 289 000a FAD0     		beq	.L68
 290 000c 092B     		cmp	r3, #9
 291 000e F8D0     		beq	.L68
 292 0010 2D2B     		cmp	r3, #45
 293 0012 05D1     		bne	.L70
 294 0014 01B1     		cbz	r1, .L67
 295 0016 0C60     		str	r4, [r1]
 296              	.L67:
 297 0018 0020     		movs	r0, #0
 298 001a 5DF8044B 		ldr	r4, [sp], #4
 299 001e 7047     		bx	lr
 300              	.L70:
 301 0020 2046     		mov	r0, r4
 302 0022 5DF8044B 		ldr	r4, [sp], #4
 303 0026 FFF7FEBF 		b	strtoul
 304              		.size	_Z11SafeStrtoulPKcPS0_i, .-_Z11SafeStrtoulPKcPS0_i
 305 002a 00BF     		.section	.text._Z11SafeStrtoulPcPS_i,"ax",%progbits
 306              		.align	1
 307              		.p2align 2,,3
 308              		.global	_Z11SafeStrtoulPcPS_i
 309              		.syntax unified
 310              		.thumb
 311              		.thumb_func
 312              		.fpu fpv4-sp-d16
 313              		.type	_Z11SafeStrtoulPcPS_i, %function
 314              	_Z11SafeStrtoulPcPS_i:
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 318 0000 10B4     		push	{r4}
 319              	.L82:
 320 0002 0446     		mov	r4, r0
 321 0004 10F8013B 		ldrb	r3, [r0], #1	@ zero_extendqisi2
 322 0008 202B     		cmp	r3, #32
 323 000a FAD0     		beq	.L82
 324 000c 092B     		cmp	r3, #9
 325 000e F8D0     		beq	.L82
 326 0010 2D2B     		cmp	r3, #45
 327 0012 05D1     		bne	.L84
 328 0014 01B1     		cbz	r1, .L81
 329 0016 0C60     		str	r4, [r1]
 330              	.L81:
 331 0018 0020     		movs	r0, #0
 332 001a 5DF8044B 		ldr	r4, [sp], #4
 333 001e 7047     		bx	lr
 334              	.L84:
 335 0020 2046     		mov	r0, r4
 336 0022 5DF8044B 		ldr	r4, [sp], #4
 337 0026 FFF7FEBF 		b	strtoul
 338              		.size	_Z11SafeStrtoulPcPS_i, .-_Z11SafeStrtoulPcPS_i
 339 002a 00BF     		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
