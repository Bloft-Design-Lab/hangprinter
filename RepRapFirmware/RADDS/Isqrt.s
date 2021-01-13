ARM GAS  /tmp/ccBnX8Iu.s 			page 1


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
  11              		.file	"Isqrt.cpp"
  12              		.section	.text._Z7isqrt64y,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_Z7isqrt64y
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_Z7isqrt64y, %function
  21              	_Z7isqrt64y:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0029     		cmp	r1, #0
  26 0002 40F08180 		bne	.L2
  27 0006 B0F1804F 		cmp	r0, #1073741824
  28 000a 0346     		mov	r3, r0
  29 000c 29BF     		itett	cs
  30 000e 4FF0A042 		movcs	r2, #1342177280
  31 0012 4FF08052 		movcc	r2, #268435456
  32 0016 4FF48031 		movcs	r1, #65536
  33 001a 00F14043 		addcs	r3, r0, #-1073741824
  34 001e 9342     		cmp	r3, r2
  35 0020 24BF     		itt	cs
  36 0022 41F40041 		orrcs	r1, r1, #32768
  37 0026 9B1A     		subcs	r3, r3, r2
  38 0028 4A03     		lsls	r2, r1, #13
  39 002a 42F08062 		orr	r2, r2, #67108864
  40 002e 9342     		cmp	r3, r2
  41 0030 24BF     		itt	cs
  42 0032 41F48041 		orrcs	r1, r1, #16384
  43 0036 9B1A     		subcs	r3, r3, r2
  44 0038 0A03     		lsls	r2, r1, #12
  45 003a 42F08072 		orr	r2, r2, #16777216
  46 003e 9342     		cmp	r3, r2
  47 0040 24BF     		itt	cs
  48 0042 41F40051 		orrcs	r1, r1, #8192
  49 0046 9B1A     		subcs	r3, r3, r2
  50 0048 CA02     		lsls	r2, r1, #11
  51 004a 42F48002 		orr	r2, r2, #4194304
  52 004e 9342     		cmp	r3, r2
  53 0050 24BF     		itt	cs
  54 0052 41F48051 		orrcs	r1, r1, #4096
  55 0056 9B1A     		subcs	r3, r3, r2
  56 0058 8A02     		lsls	r2, r1, #10
  57 005a 42F48012 		orr	r2, r2, #1048576
ARM GAS  /tmp/ccBnX8Iu.s 			page 2


  58 005e 9342     		cmp	r3, r2
  59 0060 24BF     		itt	cs
  60 0062 41F40061 		orrcs	r1, r1, #2048
  61 0066 9B1A     		subcs	r3, r3, r2
  62 0068 4A02     		lsls	r2, r1, #9
  63 006a 42F48022 		orr	r2, r2, #262144
  64 006e 9342     		cmp	r3, r2
  65 0070 24BF     		itt	cs
  66 0072 41F48061 		orrcs	r1, r1, #1024
  67 0076 9B1A     		subcs	r3, r3, r2
  68 0078 0A02     		lsls	r2, r1, #8
  69 007a 42F48032 		orr	r2, r2, #65536
  70 007e 9342     		cmp	r3, r2
  71 0080 24BF     		itt	cs
  72 0082 41F40071 		orrcs	r1, r1, #512
  73 0086 9B1A     		subcs	r3, r3, r2
  74 0088 CA01     		lsls	r2, r1, #7
  75 008a 42F48042 		orr	r2, r2, #16384
  76 008e 9342     		cmp	r3, r2
  77 0090 24BF     		itt	cs
  78 0092 41F48071 		orrcs	r1, r1, #256
  79 0096 9B1A     		subcs	r3, r3, r2
  80 0098 8A01     		lsls	r2, r1, #6
  81 009a 42F48052 		orr	r2, r2, #4096
  82 009e 9342     		cmp	r3, r2
  83 00a0 24BF     		itt	cs
  84 00a2 41F08001 		orrcs	r1, r1, #128
  85 00a6 9B1A     		subcs	r3, r3, r2
  86 00a8 4A01     		lsls	r2, r1, #5
  87 00aa 42F48062 		orr	r2, r2, #1024
  88 00ae 9342     		cmp	r3, r2
  89 00b0 24BF     		itt	cs
  90 00b2 41F04001 		orrcs	r1, r1, #64
  91 00b6 9B1A     		subcs	r3, r3, r2
  92 00b8 0A01     		lsls	r2, r1, #4
  93 00ba 42F48072 		orr	r2, r2, #256
  94 00be 9342     		cmp	r3, r2
  95 00c0 24BF     		itt	cs
  96 00c2 41F02001 		orrcs	r1, r1, #32
  97 00c6 9B1A     		subcs	r3, r3, r2
  98 00c8 CA00     		lsls	r2, r1, #3
  99 00ca 42F04002 		orr	r2, r2, #64
 100 00ce 9342     		cmp	r3, r2
 101 00d0 24BF     		itt	cs
 102 00d2 41F01001 		orrcs	r1, r1, #16
 103 00d6 9B1A     		subcs	r3, r3, r2
 104 00d8 8A00     		lsls	r2, r1, #2
 105 00da 42F01002 		orr	r2, r2, #16
 106 00de 9342     		cmp	r3, r2
 107 00e0 24BF     		itt	cs
 108 00e2 41F00801 		orrcs	r1, r1, #8
 109 00e6 9B1A     		subcs	r3, r3, r2
 110 00e8 4A00     		lsls	r2, r1, #1
 111 00ea 42F00402 		orr	r2, r2, #4
 112 00ee 9342     		cmp	r3, r2
 113 00f0 24BF     		itt	cs
 114 00f2 41F00401 		orrcs	r1, r1, #4
ARM GAS  /tmp/ccBnX8Iu.s 			page 3


 115 00f6 9B1A     		subcs	r3, r3, r2
 116 00f8 41F00102 		orr	r2, r1, #1
 117 00fc 9342     		cmp	r3, r2
 118 00fe 28BF     		it	cs
 119 0100 41F00201 		orrcs	r1, r1, #2
 120 0104 4808     		lsrs	r0, r1, #1
 121 0106 7047     		bx	lr
 122              	.L2:
 123 0108 11F04042 		ands	r2, r1, #-1073741824
 124 010c 02D0     		beq	.L59
 125 010e 4FF0FF30 		mov	r0, #-1
 126 0112 7047     		bx	lr
 127              	.L59:
 128 0114 B1F1805F 		cmp	r1, #268435456
 129 0118 F0B4     		push	{r4, r5, r6, r7}
 130 011a C0F07181 		bcc	.L53
 131 011e 01F17043 		add	r3, r1, #-268435456
 132 0122 4FF0A052 		mov	r2, #335544320
 133 0126 0421     		movs	r1, #4
 134              	.L20:
 135 0128 9342     		cmp	r3, r2
 136 012a 24BF     		itt	cs
 137 012c 41F00201 		orrcs	r1, r1, #2
 138 0130 9B1A     		subcs	r3, r3, r2
 139 0132 4A06     		lsls	r2, r1, #25
 140 0134 42F08072 		orr	r2, r2, #16777216
 141 0138 9342     		cmp	r3, r2
 142 013a 4FEA4101 		lsl	r1, r1, #1
 143 013e 24BF     		itt	cs
 144 0140 41F00201 		orrcs	r1, r1, #2
 145 0144 9B1A     		subcs	r3, r3, r2
 146 0146 CA05     		lsls	r2, r1, #23
 147 0148 42F48002 		orr	r2, r2, #4194304
 148 014c 9342     		cmp	r3, r2
 149 014e 4FEA4101 		lsl	r1, r1, #1
 150 0152 24BF     		itt	cs
 151 0154 41F00201 		orrcs	r1, r1, #2
 152 0158 9B1A     		subcs	r3, r3, r2
 153 015a 4A05     		lsls	r2, r1, #21
 154 015c 42F48012 		orr	r2, r2, #1048576
 155 0160 9342     		cmp	r3, r2
 156 0162 4FEA4101 		lsl	r1, r1, #1
 157 0166 24BF     		itt	cs
 158 0168 41F00201 		orrcs	r1, r1, #2
 159 016c 9B1A     		subcs	r3, r3, r2
 160 016e CA04     		lsls	r2, r1, #19
 161 0170 42F48022 		orr	r2, r2, #262144
 162 0174 9342     		cmp	r3, r2
 163 0176 4FEA4101 		lsl	r1, r1, #1
 164 017a 24BF     		itt	cs
 165 017c 41F00201 		orrcs	r1, r1, #2
 166 0180 9B1A     		subcs	r3, r3, r2
 167 0182 4A04     		lsls	r2, r1, #17
 168 0184 42F48032 		orr	r2, r2, #65536
 169 0188 9342     		cmp	r3, r2
 170 018a 4FEA4101 		lsl	r1, r1, #1
 171 018e 24BF     		itt	cs
ARM GAS  /tmp/ccBnX8Iu.s 			page 4


 172 0190 41F00201 		orrcs	r1, r1, #2
 173 0194 9B1A     		subcs	r3, r3, r2
 174 0196 CA03     		lsls	r2, r1, #15
 175 0198 42F48042 		orr	r2, r2, #16384
 176 019c 0026     		movs	r6, #0
 177 019e 9342     		cmp	r3, r2
 178 01a0 4FEA4101 		lsl	r1, r1, #1
 179 01a4 24BF     		itt	cs
 180 01a6 41F00201 		orrcs	r1, r1, #2
 181 01aa 9B1A     		subcs	r3, r3, r2
 182 01ac 4A03     		lsls	r2, r1, #13
 183 01ae 42F48052 		orr	r2, r2, #4096
 184 01b2 9342     		cmp	r3, r2
 185 01b4 4FEA4101 		lsl	r1, r1, #1
 186 01b8 24BF     		itt	cs
 187 01ba 41F00201 		orrcs	r1, r1, #2
 188 01be 9B1A     		subcs	r3, r3, r2
 189 01c0 CA02     		lsls	r2, r1, #11
 190 01c2 42F48062 		orr	r2, r2, #1024
 191 01c6 9342     		cmp	r3, r2
 192 01c8 4FEA4101 		lsl	r1, r1, #1
 193 01cc 24BF     		itt	cs
 194 01ce 41F00201 		orrcs	r1, r1, #2
 195 01d2 9B1A     		subcs	r3, r3, r2
 196 01d4 4A02     		lsls	r2, r1, #9
 197 01d6 42F48072 		orr	r2, r2, #256
 198 01da 9342     		cmp	r3, r2
 199 01dc 4FEA4101 		lsl	r1, r1, #1
 200 01e0 24BF     		itt	cs
 201 01e2 41F00201 		orrcs	r1, r1, #2
 202 01e6 9B1A     		subcs	r3, r3, r2
 203 01e8 CA01     		lsls	r2, r1, #7
 204 01ea 42F04002 		orr	r2, r2, #64
 205 01ee 9342     		cmp	r3, r2
 206 01f0 4FEA4101 		lsl	r1, r1, #1
 207 01f4 24BF     		itt	cs
 208 01f6 41F00201 		orrcs	r1, r1, #2
 209 01fa 9B1A     		subcs	r3, r3, r2
 210 01fc 4A01     		lsls	r2, r1, #5
 211 01fe 42F01002 		orr	r2, r2, #16
 212 0202 9342     		cmp	r3, r2
 213 0204 4FEA4101 		lsl	r1, r1, #1
 214 0208 24BF     		itt	cs
 215 020a 41F00201 		orrcs	r1, r1, #2
 216 020e 9B1A     		subcs	r3, r3, r2
 217 0210 CA00     		lsls	r2, r1, #3
 218 0212 42F00402 		orr	r2, r2, #4
 219 0216 9342     		cmp	r3, r2
 220 0218 4FEA4101 		lsl	r1, r1, #1
 221 021c 28BF     		it	cs
 222 021e 41F00201 		orrcs	r1, r1, #2
 223 0222 4FEA4101 		lsl	r1, r1, #1
 224 0226 28BF     		it	cs
 225 0228 9B1A     		subcs	r3, r3, r2
 226 022a 41F00102 		orr	r2, r1, #1
 227 022e 9342     		cmp	r3, r2
 228 0230 28BF     		it	cs
ARM GAS  /tmp/ccBnX8Iu.s 			page 5


 229 0232 41F00201 		orrcs	r1, r1, #2
 230 0236 4FEA4101 		lsl	r1, r1, #1
 231 023a 46EA0006 		orr	r6, r6, r0
 232 023e 41F00100 		orr	r0, r1, #1
 233 0242 28BF     		it	cs
 234 0244 9B1A     		subcs	r3, r3, r2
 235 0246 8508     		lsrs	r5, r0, #2
 236 0248 8407     		lsls	r4, r0, #30
 237 024a AB42     		cmp	r3, r5
 238 024c 08BF     		it	eq
 239 024e A642     		cmpeq	r6, r4
 240 0250 1F46     		mov	r7, r3
 241 0252 04D3     		bcc	.L35
 242 0254 361B     		subs	r6, r6, r4
 243 0256 63EB0507 		sbc	r7, r3, r5
 244 025a 41F00201 		orr	r1, r1, #2
 245              	.L35:
 246 025e 4900     		lsls	r1, r1, #1
 247 0260 41F00100 		orr	r0, r1, #1
 248 0264 0509     		lsrs	r5, r0, #4
 249 0266 0407     		lsls	r4, r0, #28
 250 0268 AF42     		cmp	r7, r5
 251 026a 08BF     		it	eq
 252 026c A642     		cmpeq	r6, r4
 253 026e 04D3     		bcc	.L36
 254 0270 361B     		subs	r6, r6, r4
 255 0272 67EB0507 		sbc	r7, r7, r5
 256 0276 41F00201 		orr	r1, r1, #2
 257              	.L36:
 258 027a 4900     		lsls	r1, r1, #1
 259 027c 41F00100 		orr	r0, r1, #1
 260 0280 8509     		lsrs	r5, r0, #6
 261 0282 8406     		lsls	r4, r0, #26
 262 0284 AF42     		cmp	r7, r5
 263 0286 08BF     		it	eq
 264 0288 A642     		cmpeq	r6, r4
 265 028a 04D3     		bcc	.L37
 266 028c 361B     		subs	r6, r6, r4
 267 028e 67EB0507 		sbc	r7, r7, r5
 268 0292 41F00201 		orr	r1, r1, #2
 269              	.L37:
 270 0296 4900     		lsls	r1, r1, #1
 271 0298 41F00100 		orr	r0, r1, #1
 272 029c 050A     		lsrs	r5, r0, #8
 273 029e 0406     		lsls	r4, r0, #24
 274 02a0 AF42     		cmp	r7, r5
 275 02a2 08BF     		it	eq
 276 02a4 A642     		cmpeq	r6, r4
 277 02a6 04D3     		bcc	.L38
 278 02a8 361B     		subs	r6, r6, r4
 279 02aa 67EB0507 		sbc	r7, r7, r5
 280 02ae 41F00201 		orr	r1, r1, #2
 281              	.L38:
 282 02b2 4900     		lsls	r1, r1, #1
 283 02b4 41F00100 		orr	r0, r1, #1
 284 02b8 850A     		lsrs	r5, r0, #10
 285 02ba 8405     		lsls	r4, r0, #22
ARM GAS  /tmp/ccBnX8Iu.s 			page 6


 286 02bc AF42     		cmp	r7, r5
 287 02be 08BF     		it	eq
 288 02c0 A642     		cmpeq	r6, r4
 289 02c2 04D3     		bcc	.L39
 290 02c4 361B     		subs	r6, r6, r4
 291 02c6 67EB0507 		sbc	r7, r7, r5
 292 02ca 41F00201 		orr	r1, r1, #2
 293              	.L39:
 294 02ce 4900     		lsls	r1, r1, #1
 295 02d0 41F00100 		orr	r0, r1, #1
 296 02d4 050B     		lsrs	r5, r0, #12
 297 02d6 0405     		lsls	r4, r0, #20
 298 02d8 AF42     		cmp	r7, r5
 299 02da 08BF     		it	eq
 300 02dc A642     		cmpeq	r6, r4
 301 02de 04D3     		bcc	.L40
 302 02e0 361B     		subs	r6, r6, r4
 303 02e2 67EB0507 		sbc	r7, r7, r5
 304 02e6 41F00201 		orr	r1, r1, #2
 305              	.L40:
 306 02ea 4900     		lsls	r1, r1, #1
 307 02ec 41F00100 		orr	r0, r1, #1
 308 02f0 850B     		lsrs	r5, r0, #14
 309 02f2 8404     		lsls	r4, r0, #18
 310 02f4 AF42     		cmp	r7, r5
 311 02f6 08BF     		it	eq
 312 02f8 A642     		cmpeq	r6, r4
 313 02fa 04D3     		bcc	.L41
 314 02fc 361B     		subs	r6, r6, r4
 315 02fe 67EB0507 		sbc	r7, r7, r5
 316 0302 41F00201 		orr	r1, r1, #2
 317              	.L41:
 318 0306 4900     		lsls	r1, r1, #1
 319 0308 41F00100 		orr	r0, r1, #1
 320 030c 050C     		lsrs	r5, r0, #16
 321 030e 0404     		lsls	r4, r0, #16
 322 0310 AF42     		cmp	r7, r5
 323 0312 08BF     		it	eq
 324 0314 A642     		cmpeq	r6, r4
 325 0316 04D3     		bcc	.L42
 326 0318 361B     		subs	r6, r6, r4
 327 031a 67EB0507 		sbc	r7, r7, r5
 328 031e 41F00201 		orr	r1, r1, #2
 329              	.L42:
 330 0322 4900     		lsls	r1, r1, #1
 331 0324 41F00100 		orr	r0, r1, #1
 332 0328 850C     		lsrs	r5, r0, #18
 333 032a 8403     		lsls	r4, r0, #14
 334 032c AF42     		cmp	r7, r5
 335 032e 08BF     		it	eq
 336 0330 A642     		cmpeq	r6, r4
 337 0332 04D3     		bcc	.L43
 338 0334 361B     		subs	r6, r6, r4
 339 0336 67EB0507 		sbc	r7, r7, r5
 340 033a 41F00201 		orr	r1, r1, #2
 341              	.L43:
 342 033e 4900     		lsls	r1, r1, #1
ARM GAS  /tmp/ccBnX8Iu.s 			page 7


 343 0340 41F00100 		orr	r0, r1, #1
 344 0344 050D     		lsrs	r5, r0, #20
 345 0346 0403     		lsls	r4, r0, #12
 346 0348 AF42     		cmp	r7, r5
 347 034a 08BF     		it	eq
 348 034c A642     		cmpeq	r6, r4
 349 034e 04D3     		bcc	.L44
 350 0350 361B     		subs	r6, r6, r4
 351 0352 67EB0507 		sbc	r7, r7, r5
 352 0356 41F00201 		orr	r1, r1, #2
 353              	.L44:
 354 035a 4900     		lsls	r1, r1, #1
 355 035c 41F00100 		orr	r0, r1, #1
 356 0360 850D     		lsrs	r5, r0, #22
 357 0362 8402     		lsls	r4, r0, #10
 358 0364 AF42     		cmp	r7, r5
 359 0366 08BF     		it	eq
 360 0368 A642     		cmpeq	r6, r4
 361 036a 04D3     		bcc	.L45
 362 036c 361B     		subs	r6, r6, r4
 363 036e 67EB0507 		sbc	r7, r7, r5
 364 0372 41F00201 		orr	r1, r1, #2
 365              	.L45:
 366 0376 4900     		lsls	r1, r1, #1
 367 0378 41F00100 		orr	r0, r1, #1
 368 037c 050E     		lsrs	r5, r0, #24
 369 037e 0402     		lsls	r4, r0, #8
 370 0380 AF42     		cmp	r7, r5
 371 0382 08BF     		it	eq
 372 0384 A642     		cmpeq	r6, r4
 373 0386 04D3     		bcc	.L46
 374 0388 361B     		subs	r6, r6, r4
 375 038a 67EB0507 		sbc	r7, r7, r5
 376 038e 41F00201 		orr	r1, r1, #2
 377              	.L46:
 378 0392 4900     		lsls	r1, r1, #1
 379 0394 41F00100 		orr	r0, r1, #1
 380 0398 850E     		lsrs	r5, r0, #26
 381 039a 8401     		lsls	r4, r0, #6
 382 039c AF42     		cmp	r7, r5
 383 039e 08BF     		it	eq
 384 03a0 A642     		cmpeq	r6, r4
 385 03a2 04D3     		bcc	.L47
 386 03a4 361B     		subs	r6, r6, r4
 387 03a6 67EB0507 		sbc	r7, r7, r5
 388 03aa 41F00201 		orr	r1, r1, #2
 389              	.L47:
 390 03ae 4900     		lsls	r1, r1, #1
 391 03b0 41F00100 		orr	r0, r1, #1
 392 03b4 050F     		lsrs	r5, r0, #28
 393 03b6 0401     		lsls	r4, r0, #4
 394 03b8 AF42     		cmp	r7, r5
 395 03ba 08BF     		it	eq
 396 03bc A642     		cmpeq	r6, r4
 397 03be 04D3     		bcc	.L48
 398 03c0 361B     		subs	r6, r6, r4
 399 03c2 67EB0507 		sbc	r7, r7, r5
ARM GAS  /tmp/ccBnX8Iu.s 			page 8


 400 03c6 41F00201 		orr	r1, r1, #2
 401              	.L48:
 402 03ca 4900     		lsls	r1, r1, #1
 403 03cc 41F00100 		orr	r0, r1, #1
 404 03d0 850F     		lsrs	r5, r0, #30
 405 03d2 8400     		lsls	r4, r0, #2
 406 03d4 AF42     		cmp	r7, r5
 407 03d6 08BF     		it	eq
 408 03d8 A642     		cmpeq	r6, r4
 409 03da 04D3     		bcc	.L49
 410 03dc 361B     		subs	r6, r6, r4
 411 03de 67EB0507 		sbc	r7, r7, r5
 412 03e2 41F00201 		orr	r1, r1, #2
 413              	.L49:
 414 03e6 0025     		movs	r5, #0
 415 03e8 4900     		lsls	r1, r1, #1
 416 03ea 41F00104 		orr	r4, r1, #1
 417 03ee AF42     		cmp	r7, r5
 418 03f0 08BF     		it	eq
 419 03f2 A642     		cmpeq	r6, r4
 420 03f4 28BF     		it	cs
 421 03f6 41F00201 		orrcs	r1, r1, #2
 422 03fa 4808     		lsrs	r0, r1, #1
 423 03fc F0BC     		pop	{r4, r5, r6, r7}
 424 03fe 7047     		bx	lr
 425              	.L53:
 426 0400 0B46     		mov	r3, r1
 427 0402 1146     		mov	r1, r2
 428 0404 4FF08062 		mov	r2, #67108864
 429 0408 8EE6     		b	.L20
 430              		.size	_Z7isqrt64y, .-_Z7isqrt64y
 431 040a 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 432              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 433              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 434              	_ZL28cpu_irq_prev_interrupt_state:
 435 0000 00       		.space	1
 436              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 437              		.align	2
 438              		.type	_ZL32cpu_irq_critical_section_counter, %object
 439              		.size	_ZL32cpu_irq_critical_section_counter, 4
 440              	_ZL32cpu_irq_critical_section_counter:
 441 0000 00000000 		.space	4
 442              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
