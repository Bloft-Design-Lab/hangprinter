ARM GAS  /tmp/ccGGJLKg.s 			page 1


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
  14              		.global	__aeabi_dmul
  15              		.global	__aeabi_i2d
  16              		.global	__aeabi_dadd
  17              		.global	__aeabi_ui2d
  18              		.global	__aeabi_dcmpeq
  19              		.global	__aeabi_ddiv
  20              		.section	.text._Z10SafeStrtodPKcPS0_,"ax",%progbits
  21              		.align	1
  22              		.p2align 2,,3
  23              		.global	_Z10SafeStrtodPKcPS0_
  24              		.syntax unified
  25              		.thumb
  26              		.thumb_func
  27              		.fpu fpv4-sp-d16
  28              		.type	_Z10SafeStrtodPKcPS0_, %function
  29              	_Z10SafeStrtodPKcPS0_:
  30              		@ args = 0, pretend = 0, frame = 24
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  33 0004 8B46     		mov	fp, r1
  34 0006 87B0     		sub	sp, sp, #28
  35              	.L2:
  36 0008 0578     		ldrb	r5, [r0]	@ zero_extendqisi2
  37 000a 202D     		cmp	r5, #32
  38 000c 0446     		mov	r4, r0
  39 000e 00F10100 		add	r0, r0, #1
  40 0012 F9D0     		beq	.L2
  41 0014 092D     		cmp	r5, #9
  42 0016 F7D0     		beq	.L2
  43 0018 2D2D     		cmp	r5, #45
  44 001a 03D0     		beq	.L4
  45 001c 2B2D     		cmp	r5, #43
  46 001e 01D0     		beq	.L4
  47 0020 2B46     		mov	r3, r5
  48 0022 01E0     		b	.L5
  49              	.L4:
  50 0024 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
  51 0026 0134     		adds	r4, r4, #1
  52              	.L5:
  53 0028 A3F1300A 		sub	r10, r3, #48
  54 002c BAF1090F 		cmp	r10, #9
  55 0030 4FF00008 		mov	r8, #0
  56 0034 4FF00009 		mov	r9, #0
  57 0038 19D8     		bhi	.L6
ARM GAS  /tmp/ccGGJLKg.s 			page 2


  58 003a 774F     		ldr	r7, .L63+16
  59 003c 0026     		movs	r6, #0
  60              	.L7:
  61 003e 3246     		mov	r2, r6
  62 0040 3B46     		mov	r3, r7
  63 0042 4046     		mov	r0, r8
  64 0044 4946     		mov	r1, r9
  65 0046 FFF7FEFF 		bl	__aeabi_dmul
  66 004a 8046     		mov	r8, r0
  67 004c 8946     		mov	r9, r1
  68 004e 5046     		mov	r0, r10
  69 0050 FFF7FEFF 		bl	__aeabi_i2d
  70 0054 4B46     		mov	r3, r9
  71 0056 4246     		mov	r2, r8
  72 0058 FFF7FEFF 		bl	__aeabi_dadd
  73 005c 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
  74 0060 A3F1300A 		sub	r10, r3, #48
  75 0064 BAF1090F 		cmp	r10, #9
  76 0068 8046     		mov	r8, r0
  77 006a 8946     		mov	r9, r1
  78 006c E7D9     		bls	.L7
  79              	.L6:
  80 006e 2E2B     		cmp	r3, #46
  81 0070 5DD0     		beq	.L60
  82 0072 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
  83 0074 FFF7FEFF 		bl	toupper
  84 0078 4528     		cmp	r0, #69
  85 007a 4BD1     		bne	.L61
  86 007c 0027     		movs	r7, #0
  87 007e BA46     		mov	r10, r7
  88              	.L25:
  89 0080 6178     		ldrb	r1, [r4, #1]	@ zero_extendqisi2
  90 0082 2D29     		cmp	r1, #45
  91 0084 00F0B380 		beq	.L14
  92 0088 2B29     		cmp	r1, #43
  93 008a 00F0B080 		beq	.L14
  94 008e 0134     		adds	r4, r4, #1
  95 0090 0B46     		mov	r3, r1
  96              	.L15:
  97 0092 303B     		subs	r3, r3, #48
  98 0094 092B     		cmp	r3, #9
  99 0096 4FF00006 		mov	r6, #0
 100 009a 09D8     		bhi	.L18
 101              	.L16:
 102 009c 14F8012F 		ldrb	r2, [r4, #1]!	@ zero_extendqisi2
 103 00a0 06EB8606 		add	r6, r6, r6, lsl #2
 104 00a4 03EB4606 		add	r6, r3, r6, lsl #1
 105 00a8 A2F13003 		sub	r3, r2, #48
 106 00ac 092B     		cmp	r3, #9
 107 00ae F5D9     		bls	.L16
 108              	.L18:
 109 00b0 2D29     		cmp	r1, #45
 110 00b2 00D1     		bne	.L13
 111 00b4 7642     		negs	r6, r6
 112              	.L13:
 113 00b6 BAF1000F 		cmp	r10, #0
 114 00ba 00F09E80 		beq	.L19
ARM GAS  /tmp/ccGGJLKg.s 			page 3


 115 00be 5046     		mov	r0, r10
 116 00c0 FFF7FEFF 		bl	__aeabi_ui2d
 117 00c4 0022     		movs	r2, #0
 118 00c6 CDE90001 		strd	r0, [sp]
 119 00ca 0023     		movs	r3, #0
 120 00cc 4046     		mov	r0, r8
 121 00ce 4946     		mov	r1, r9
 122 00d0 FFF7FEFF 		bl	__aeabi_dcmpeq
 123 00d4 0028     		cmp	r0, #0
 124 00d6 61D0     		beq	.L57
 125 00d8 F01B     		subs	r0, r6, r7
 126 00da FFF7FEFF 		bl	__aeabi_i2d
 127 00de 9FED4A0B 		vldr.64	d0, .L63
 128 00e2 41EC110B 		vmov	d1, r0, r1
 129 00e6 FFF7FEFF 		bl	pow
 130 00ea DDE90023 		ldrd	r2, [sp]
 131 00ee 51EC100B 		vmov	r0, r1, d0
 132 00f2 FFF7FEFF 		bl	__aeabi_dmul
 133              	.L22:
 134 00f6 BBF1000F 		cmp	fp, #0
 135 00fa 01D0     		beq	.L23
 136 00fc CBF80040 		str	r4, [fp]
 137              	.L23:
 138 0100 2D2D     		cmp	r5, #45
 139 0102 02D1     		bne	.L1
 140 0104 01F10043 		add	r3, r1, #-2147483648
 141 0108 1946     		mov	r1, r3
 142              	.L1:
 143 010a 41EC100B 		vmov	d0, r0, r1
 144 010e 07B0     		add	sp, sp, #28
 145              		@ sp needed
 146 0110 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 147              	.L61:
 148 0114 9FED3E1B 		vldr.64	d1, .L63+8
 149              	.L26:
 150 0118 9FED3B0B 		vldr.64	d0, .L63
 151 011c FFF7FEFF 		bl	pow
 152 0120 4246     		mov	r2, r8
 153 0122 4B46     		mov	r3, r9
 154 0124 51EC100B 		vmov	r0, r1, d0
 155 0128 FFF7FEFF 		bl	__aeabi_dmul
 156 012c E3E7     		b	.L22
 157              	.L60:
 158 012e 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 159 0130 A0F13003 		sub	r3, r0, #48
 160 0134 092B     		cmp	r3, #9
 161 0136 04F10104 		add	r4, r4, #1
 162 013a 5BD8     		bhi	.L29
 163 013c 0021     		movs	r1, #0
 164 013e 374E     		ldr	r6, .L63+20
 165 0140 0F46     		mov	r7, r1
 166 0142 8A46     		mov	r10, r1
 167 0144 08E0     		b	.L12
 168              	.L62:
 169 0146 03EB420A 		add	r10, r3, r2, lsl #1
 170 014a 0137     		adds	r7, r7, #1
 171              	.L10:
ARM GAS  /tmp/ccGGJLKg.s 			page 4


 172 014c 14F8010F 		ldrb	r0, [r4, #1]!	@ zero_extendqisi2
 173 0150 A0F13003 		sub	r3, r0, #48
 174 0154 092B     		cmp	r3, #9
 175 0156 18D8     		bhi	.L9
 176              	.L12:
 177 0158 DA43     		mvns	r2, r3
 178 015a A6FB0202 		umull	r0, r2, r6, r2
 179 015e 0029     		cmp	r1, #0
 180 0160 F4D1     		bne	.L10
 181 0162 BAEBD20F 		cmp	r10, r2, lsr #3
 182 0166 0AEB8A02 		add	r2, r10, r10, lsl #2
 183 016a ECD9     		bls	.L62
 184 016c 042B     		cmp	r3, #4
 185 016e 13D9     		bls	.L31
 186 0170 BAF1FF3F 		cmp	r10, #-1
 187 0174 10D0     		beq	.L31
 188 0176 14F8010F 		ldrb	r0, [r4, #1]!	@ zero_extendqisi2
 189 017a A0F13003 		sub	r3, r0, #48
 190 017e 092B     		cmp	r3, #9
 191 0180 0AF1010A 		add	r10, r10, #1
 192 0184 4FF00101 		mov	r1, #1
 193 0188 E6D9     		bls	.L12
 194              	.L9:
 195 018a FFF7FEFF 		bl	toupper
 196 018e 4528     		cmp	r0, #69
 197 0190 18BF     		it	ne
 198 0192 0026     		movne	r6, #0
 199 0194 8FD1     		bne	.L13
 200 0196 73E7     		b	.L25
 201              	.L31:
 202 0198 0121     		movs	r1, #1
 203 019a D7E7     		b	.L10
 204              	.L57:
 205 019c 3846     		mov	r0, r7
 206 019e FFF7FEFF 		bl	__aeabi_i2d
 207 01a2 9FED190B 		vldr.64	d0, .L63
 208 01a6 41EC110B 		vmov	d1, r0, r1
 209 01aa FFF7FEFF 		bl	pow
 210 01ae 53EC102B 		vmov	r2, r3, d0
 211 01b2 3046     		mov	r0, r6
 212 01b4 CDE90423 		strd	r2, [sp, #16]
 213 01b8 FFF7FEFF 		bl	__aeabi_i2d
 214 01bc 9FED120B 		vldr.64	d0, .L63
 215 01c0 41EC110B 		vmov	d1, r0, r1
 216 01c4 FFF7FEFF 		bl	pow
 217 01c8 DDE90423 		ldrd	r2, [sp, #16]
 218 01cc DDE90001 		ldrd	r0, [sp]
 219 01d0 8DED020B 		vstr.64	d0, [sp, #8]
 220 01d4 FFF7FEFF 		bl	__aeabi_ddiv
 221 01d8 4246     		mov	r2, r8
 222 01da 4B46     		mov	r3, r9
 223 01dc FFF7FEFF 		bl	__aeabi_dadd
 224 01e0 9DED020B 		vldr.64	d0, [sp, #8]
 225 01e4 53EC102B 		vmov	r2, r3, d0
 226 01e8 FFF7FEFF 		bl	__aeabi_dmul
 227 01ec 83E7     		b	.L22
 228              	.L14:
ARM GAS  /tmp/ccGGJLKg.s 			page 5


 229 01ee A378     		ldrb	r3, [r4, #2]	@ zero_extendqisi2
 230 01f0 0234     		adds	r4, r4, #2
 231 01f2 4EE7     		b	.L15
 232              	.L29:
 233 01f4 0027     		movs	r7, #0
 234 01f6 BA46     		mov	r10, r7
 235 01f8 C7E7     		b	.L9
 236              	.L19:
 237 01fa 3046     		mov	r0, r6
 238 01fc FFF7FEFF 		bl	__aeabi_i2d
 239 0200 41EC110B 		vmov	d1, r0, r1
 240 0204 88E7     		b	.L26
 241              	.L64:
 242 0206 00BF     		.align	3
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
ARM GAS  /tmp/ccGGJLKg.s 			page 6


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
 318 0000 FFF7FEBF 		b	_Z11SafeStrtoulPKcPS0_i
 319              		.size	_Z11SafeStrtoulPcPS_i, .-_Z11SafeStrtoulPcPS_i
 320              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
