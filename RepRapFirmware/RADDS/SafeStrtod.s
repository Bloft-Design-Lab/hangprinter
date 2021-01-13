ARM GAS  /tmp/ccerqEjI.s 			page 1


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
  11              		.file	"SafeStrtod.cpp"
  12              		.global	__aeabi_dmul
  13              		.global	__aeabi_i2d
  14              		.global	__aeabi_dadd
  15              		.global	__aeabi_dcmpeq
  16              		.global	__aeabi_ui2d
  17              		.global	__aeabi_ddiv
  18              		.section	.text._Z10SafeStrtodPKcPS0_,"ax",%progbits
  19              		.align	1
  20              		.p2align 2,,3
  21              		.global	_Z10SafeStrtodPKcPS0_
  22              		.syntax unified
  23              		.thumb
  24              		.thumb_func
  25              		.fpu softvfp
  26              		.type	_Z10SafeStrtodPKcPS0_, %function
  27              	_Z10SafeStrtodPKcPS0_:
  28              		@ args = 0, pretend = 0, frame = 8
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  31 0004 0F46     		mov	r7, r1
  32 0006 83B0     		sub	sp, sp, #12
  33              	.L2:
  34 0008 0578     		ldrb	r5, [r0]	@ zero_extendqisi2
  35 000a 0446     		mov	r4, r0
  36 000c 202D     		cmp	r5, #32
  37 000e 00F10100 		add	r0, r0, #1
  38 0012 F9D0     		beq	.L2
  39 0014 092D     		cmp	r5, #9
  40 0016 F7D0     		beq	.L2
  41 0018 2D2D     		cmp	r5, #45
  42 001a 71D0     		beq	.L4
  43 001c 2B2D     		cmp	r5, #43
  44 001e 6FD0     		beq	.L4
  45 0020 2B46     		mov	r3, r5
  46              	.L5:
  47 0022 A3F13006 		sub	r6, r3, #48
  48 0026 092E     		cmp	r6, #9
  49 0028 4FF00008 		mov	r8, #0
  50 002c 4FF00009 		mov	r9, #0
  51 0030 1AD8     		bhi	.L6
  52 0032 4FF0000A 		mov	r10, #0
  53 0036 DFF8C0B1 		ldr	fp, .L63
  54              	.L7:
  55 003a 5246     		mov	r2, r10
  56 003c 5B46     		mov	r3, fp
  57 003e 4046     		mov	r0, r8
ARM GAS  /tmp/ccerqEjI.s 			page 2


  58 0040 4946     		mov	r1, r9
  59 0042 FFF7FEFF 		bl	__aeabi_dmul
  60 0046 8046     		mov	r8, r0
  61 0048 8946     		mov	r9, r1
  62 004a 3046     		mov	r0, r6
  63 004c FFF7FEFF 		bl	__aeabi_i2d
  64 0050 4B46     		mov	r3, r9
  65 0052 4246     		mov	r2, r8
  66 0054 FFF7FEFF 		bl	__aeabi_dadd
  67 0058 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
  68 005c 8046     		mov	r8, r0
  69 005e A3F13006 		sub	r6, r3, #48
  70 0062 092E     		cmp	r6, #9
  71 0064 8946     		mov	r9, r1
  72 0066 E8D9     		bls	.L7
  73              	.L6:
  74 0068 2E2B     		cmp	r3, #46
  75 006a 57D0     		beq	.L59
  76 006c 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
  77 006e FFF7FEFF 		bl	toupper
  78 0072 4528     		cmp	r0, #69
  79 0074 47D1     		bne	.L60
  80 0076 4FF0000B 		mov	fp, #0
  81 007a 5E46     		mov	r6, fp
  82              	.L24:
  83 007c 6278     		ldrb	r2, [r4, #1]	@ zero_extendqisi2
  84 007e 2D2A     		cmp	r2, #45
  85 0080 75D0     		beq	.L14
  86 0082 2B2A     		cmp	r2, #43
  87 0084 7CD0     		beq	.L61
  88 0086 A2F13003 		sub	r3, r2, #48
  89 008a 092B     		cmp	r3, #9
  90 008c 04F10104 		add	r4, r4, #1
  91 0090 51D8     		bhi	.L33
  92              	.L26:
  93 0092 4FF0000A 		mov	r10, #0
  94              	.L17:
  95 0096 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
  96 009a 0AEB8A0A 		add	r10, r10, r10, lsl #2
  97 009e 03EB4A0A 		add	r10, r3, r10, lsl #1
  98 00a2 A1F13003 		sub	r3, r1, #48
  99 00a6 092B     		cmp	r3, #9
 100 00a8 F5D9     		bls	.L17
 101 00aa 2D2A     		cmp	r2, #45
 102 00ac 01D1     		bne	.L13
 103              	.L27:
 104 00ae CAF1000A 		rsb	r10, r10, #0
 105              	.L13:
 106 00b2 002E     		cmp	r6, #0
 107 00b4 00F09A80 		beq	.L18
 108 00b8 0022     		movs	r2, #0
 109 00ba 0023     		movs	r3, #0
 110 00bc 4046     		mov	r0, r8
 111 00be 4946     		mov	r1, r9
 112 00c0 FFF7FEFF 		bl	__aeabi_dcmpeq
 113 00c4 0028     		cmp	r0, #0
 114 00c6 62D0     		beq	.L55
ARM GAS  /tmp/ccerqEjI.s 			page 3


 115 00c8 AAEB0B00 		sub	r0, r10, fp
 116 00cc FFF7FEFF 		bl	__aeabi_i2d
 117 00d0 0246     		mov	r2, r0
 118 00d2 0B46     		mov	r3, r1
 119 00d4 0020     		movs	r0, #0
 120 00d6 4849     		ldr	r1, .L63
 121 00d8 FFF7FEFF 		bl	pow
 122 00dc 8046     		mov	r8, r0
 123 00de 8946     		mov	r9, r1
 124 00e0 3046     		mov	r0, r6
 125 00e2 FFF7FEFF 		bl	__aeabi_ui2d
 126 00e6 4246     		mov	r2, r8
 127 00e8 4B46     		mov	r3, r9
 128 00ea FFF7FEFF 		bl	__aeabi_dmul
 129              	.L21:
 130 00ee 07B1     		cbz	r7, .L22
 131 00f0 3C60     		str	r4, [r7]
 132              	.L22:
 133 00f2 2D2D     		cmp	r5, #45
 134 00f4 01D1     		bne	.L1
 135 00f6 01F10041 		add	r1, r1, #-2147483648
 136              	.L1:
 137 00fa 03B0     		add	sp, sp, #12
 138              		@ sp needed
 139 00fc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 140              	.L4:
 141 0100 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 142 0102 0134     		adds	r4, r4, #1
 143 0104 8DE7     		b	.L5
 144              	.L60:
 145 0106 0022     		movs	r2, #0
 146 0108 0023     		movs	r3, #0
 147              	.L25:
 148 010a 0020     		movs	r0, #0
 149 010c 3A49     		ldr	r1, .L63
 150 010e FFF7FEFF 		bl	pow
 151 0112 4246     		mov	r2, r8
 152 0114 4B46     		mov	r3, r9
 153 0116 FFF7FEFF 		bl	__aeabi_dmul
 154 011a E8E7     		b	.L21
 155              	.L59:
 156 011c 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 157 011e 0134     		adds	r4, r4, #1
 158 0120 A0F13003 		sub	r3, r0, #48
 159 0124 092B     		cmp	r3, #9
 160 0126 09D9     		bls	.L62
 161 0128 4FF0000B 		mov	fp, #0
 162 012c 5E46     		mov	r6, fp
 163              	.L9:
 164 012e FFF7FEFF 		bl	toupper
 165 0132 4528     		cmp	r0, #69
 166 0134 A2D0     		beq	.L24
 167              	.L33:
 168 0136 4FF0000A 		mov	r10, #0
 169 013a BAE7     		b	.L13
 170              	.L62:
 171 013c 0022     		movs	r2, #0
ARM GAS  /tmp/ccerqEjI.s 			page 4


 172 013e 9346     		mov	fp, r2
 173 0140 1646     		mov	r6, r2
 174 0142 DFF8B8E0 		ldr	lr, .L63+4
 175              	.L12:
 176 0146 5AB9     		cbnz	r2, .L10
 177 0148 D943     		mvns	r1, r3
 178 014a AEFB0101 		umull	r0, r1, lr, r1
 179 014e B6EBD10F 		cmp	r6, r1, lsr #3
 180 0152 06EB8601 		add	r1, r6, r6, lsl #2
 181 0156 40D8     		bhi	.L11
 182 0158 03EB4106 		add	r6, r3, r1, lsl #1
 183 015c 0BF1010B 		add	fp, fp, #1
 184              	.L10:
 185 0160 14F8010F 		ldrb	r0, [r4, #1]!	@ zero_extendqisi2
 186 0164 A0F13003 		sub	r3, r0, #48
 187 0168 092B     		cmp	r3, #9
 188 016a ECD9     		bls	.L12
 189 016c DFE7     		b	.L9
 190              	.L14:
 191 016e A178     		ldrb	r1, [r4, #2]	@ zero_extendqisi2
 192 0170 0234     		adds	r4, r4, #2
 193 0172 A1F13003 		sub	r3, r1, #48
 194 0176 092B     		cmp	r3, #9
 195 0178 8BD9     		bls	.L26
 196 017a 4FF0000A 		mov	r10, #0
 197 017e 96E7     		b	.L27
 198              	.L61:
 199 0180 A178     		ldrb	r1, [r4, #2]	@ zero_extendqisi2
 200 0182 0234     		adds	r4, r4, #2
 201 0184 A1F13003 		sub	r3, r1, #48
 202 0188 092B     		cmp	r3, #9
 203 018a D4D8     		bhi	.L33
 204 018c 81E7     		b	.L26
 205              	.L55:
 206 018e 5846     		mov	r0, fp
 207 0190 FFF7FEFF 		bl	__aeabi_i2d
 208 0194 0246     		mov	r2, r0
 209 0196 0B46     		mov	r3, r1
 210 0198 0020     		movs	r0, #0
 211 019a 1749     		ldr	r1, .L63
 212 019c FFF7FEFF 		bl	pow
 213 01a0 CDE90001 		strd	r0, [sp]
 214 01a4 5046     		mov	r0, r10
 215 01a6 FFF7FEFF 		bl	__aeabi_i2d
 216 01aa 0246     		mov	r2, r0
 217 01ac 0B46     		mov	r3, r1
 218 01ae 0020     		movs	r0, #0
 219 01b0 1149     		ldr	r1, .L63
 220 01b2 FFF7FEFF 		bl	pow
 221 01b6 8246     		mov	r10, r0
 222 01b8 8B46     		mov	fp, r1
 223 01ba 3046     		mov	r0, r6
 224 01bc FFF7FEFF 		bl	__aeabi_ui2d
 225 01c0 DDE90023 		ldrd	r2, [sp]
 226 01c4 FFF7FEFF 		bl	__aeabi_ddiv
 227 01c8 4246     		mov	r2, r8
 228 01ca 4B46     		mov	r3, r9
ARM GAS  /tmp/ccerqEjI.s 			page 5


 229 01cc FFF7FEFF 		bl	__aeabi_dadd
 230 01d0 5246     		mov	r2, r10
 231 01d2 5B46     		mov	r3, fp
 232 01d4 FFF7FEFF 		bl	__aeabi_dmul
 233 01d8 89E7     		b	.L21
 234              	.L11:
 235 01da 042B     		cmp	r3, #4
 236 01dc 04D9     		bls	.L32
 237 01de 731C     		adds	r3, r6, #1
 238 01e0 02D0     		beq	.L32
 239 01e2 0136     		adds	r6, r6, #1
 240 01e4 0122     		movs	r2, #1
 241 01e6 BBE7     		b	.L10
 242              	.L32:
 243 01e8 0122     		movs	r2, #1
 244 01ea B9E7     		b	.L10
 245              	.L18:
 246 01ec 5046     		mov	r0, r10
 247 01ee FFF7FEFF 		bl	__aeabi_i2d
 248 01f2 0246     		mov	r2, r0
 249 01f4 0B46     		mov	r3, r1
 250 01f6 88E7     		b	.L25
 251              	.L64:
 252              		.align	2
 253              	.L63:
 254 01f8 00002440 		.word	1076101120
 255 01fc CDCCCCCC 		.word	-858993459
 256              		.size	_Z10SafeStrtodPKcPS0_, .-_Z10SafeStrtodPKcPS0_
 257              		.global	__aeabi_d2f
 258              		.section	.text._Z10SafeStrtofPKcPS0_,"ax",%progbits
 259              		.align	1
 260              		.p2align 2,,3
 261              		.global	_Z10SafeStrtofPKcPS0_
 262              		.syntax unified
 263              		.thumb
 264              		.thumb_func
 265              		.fpu softvfp
 266              		.type	_Z10SafeStrtofPKcPS0_, %function
 267              	_Z10SafeStrtofPKcPS0_:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270 0000 08B5     		push	{r3, lr}
 271 0002 FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 272 0006 FFF7FEFF 		bl	__aeabi_d2f
 273 000a 08BD     		pop	{r3, pc}
 274              		.size	_Z10SafeStrtofPKcPS0_, .-_Z10SafeStrtofPKcPS0_
 275              		.section	.text._Z11SafeStrtoulPcPS_i,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.global	_Z11SafeStrtoulPcPS_i
 279              		.syntax unified
 280              		.thumb
 281              		.thumb_func
 282              		.fpu softvfp
 283              		.type	_Z11SafeStrtoulPcPS_i, %function
 284              	_Z11SafeStrtoulPcPS_i:
 285              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccerqEjI.s 			page 6


 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287              		@ link register save eliminated.
 288 0000 10B4     		push	{r4}
 289              	.L68:
 290 0002 0446     		mov	r4, r0
 291 0004 10F8013B 		ldrb	r3, [r0], #1	@ zero_extendqisi2
 292 0008 202B     		cmp	r3, #32
 293 000a FAD0     		beq	.L68
 294 000c 092B     		cmp	r3, #9
 295 000e F8D0     		beq	.L68
 296 0010 2D2B     		cmp	r3, #45
 297 0012 03D0     		beq	.L81
 298 0014 2046     		mov	r0, r4
 299 0016 10BC     		pop	{r4}
 300 0018 FFF7FEBF 		b	strtoul
 301              	.L81:
 302 001c 01B1     		cbz	r1, .L67
 303 001e 0C60     		str	r4, [r1]
 304              	.L67:
 305 0020 0020     		movs	r0, #0
 306 0022 10BC     		pop	{r4}
 307 0024 7047     		bx	lr
 308              		.size	_Z11SafeStrtoulPcPS_i, .-_Z11SafeStrtoulPcPS_i
 309 0026 00BF     		.section	.text._Z11SafeStrtoulPKcPS0_i,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.global	_Z11SafeStrtoulPKcPS0_i
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu softvfp
 317              		.type	_Z11SafeStrtoulPKcPS0_i, %function
 318              	_Z11SafeStrtoulPKcPS0_i:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321              		@ link register save eliminated.
 322 0000 FFF7FEBF 		b	_Z11SafeStrtoulPcPS_i
 323              		.size	_Z11SafeStrtoulPKcPS0_i, .-_Z11SafeStrtoulPKcPS0_i
 324              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
