ARM GAS  /tmp/ccNUQ0o1.s 			page 1


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
  13              		.file	"Isqrt.cpp"
  14              		.section	.text._Z7isqrt64y,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z7isqrt64y
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z7isqrt64y, %function
  23              	_Z7isqrt64y:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0029     		cmp	r1, #0
  28 0002 40F08180 		bne	.L2
  29 0006 B0F1804F 		cmp	r0, #1073741824
  30 000a 0346     		mov	r3, r0
  31 000c 25BF     		ittet	cs
  32 000e 4FF0A042 		movcs	r2, #1342177280
  33 0012 00F14043 		addcs	r3, r0, #-1073741824
  34 0016 4FF08052 		movcc	r2, #268435456
  35 001a 4FF48031 		movcs	r1, #65536
  36 001e 9342     		cmp	r3, r2
  37 0020 24BF     		itt	cs
  38 0022 41F40041 		orrcs	r1, r1, #32768
  39 0026 9B1A     		subcs	r3, r3, r2
  40 0028 4A03     		lsls	r2, r1, #13
  41 002a 42F08062 		orr	r2, r2, #67108864
  42 002e 9A42     		cmp	r2, r3
  43 0030 9CBF     		itt	ls
  44 0032 41F48041 		orrls	r1, r1, #16384
  45 0036 9B1A     		subls	r3, r3, r2
  46 0038 0A03     		lsls	r2, r1, #12
  47 003a 42F08072 		orr	r2, r2, #16777216
  48 003e 9A42     		cmp	r2, r3
  49 0040 9CBF     		itt	ls
  50 0042 41F40051 		orrls	r1, r1, #8192
  51 0046 9B1A     		subls	r3, r3, r2
  52 0048 CA02     		lsls	r2, r1, #11
  53 004a 42F48002 		orr	r2, r2, #4194304
  54 004e 9A42     		cmp	r2, r3
  55 0050 9CBF     		itt	ls
  56 0052 41F48051 		orrls	r1, r1, #4096
  57 0056 9B1A     		subls	r3, r3, r2
ARM GAS  /tmp/ccNUQ0o1.s 			page 2


  58 0058 8A02     		lsls	r2, r1, #10
  59 005a 42F48012 		orr	r2, r2, #1048576
  60 005e 9A42     		cmp	r2, r3
  61 0060 9CBF     		itt	ls
  62 0062 41F40061 		orrls	r1, r1, #2048
  63 0066 9B1A     		subls	r3, r3, r2
  64 0068 4A02     		lsls	r2, r1, #9
  65 006a 42F48022 		orr	r2, r2, #262144
  66 006e 9A42     		cmp	r2, r3
  67 0070 9CBF     		itt	ls
  68 0072 41F48061 		orrls	r1, r1, #1024
  69 0076 9B1A     		subls	r3, r3, r2
  70 0078 0A02     		lsls	r2, r1, #8
  71 007a 42F48032 		orr	r2, r2, #65536
  72 007e 9A42     		cmp	r2, r3
  73 0080 9CBF     		itt	ls
  74 0082 41F40071 		orrls	r1, r1, #512
  75 0086 9B1A     		subls	r3, r3, r2
  76 0088 CA01     		lsls	r2, r1, #7
  77 008a 42F48042 		orr	r2, r2, #16384
  78 008e 9A42     		cmp	r2, r3
  79 0090 9CBF     		itt	ls
  80 0092 41F48071 		orrls	r1, r1, #256
  81 0096 9B1A     		subls	r3, r3, r2
  82 0098 8A01     		lsls	r2, r1, #6
  83 009a 42F48052 		orr	r2, r2, #4096
  84 009e 9A42     		cmp	r2, r3
  85 00a0 9CBF     		itt	ls
  86 00a2 41F08001 		orrls	r1, r1, #128
  87 00a6 9B1A     		subls	r3, r3, r2
  88 00a8 4A01     		lsls	r2, r1, #5
  89 00aa 42F48062 		orr	r2, r2, #1024
  90 00ae 9A42     		cmp	r2, r3
  91 00b0 9CBF     		itt	ls
  92 00b2 41F04001 		orrls	r1, r1, #64
  93 00b6 9B1A     		subls	r3, r3, r2
  94 00b8 0A01     		lsls	r2, r1, #4
  95 00ba 42F48072 		orr	r2, r2, #256
  96 00be 9A42     		cmp	r2, r3
  97 00c0 9CBF     		itt	ls
  98 00c2 41F02001 		orrls	r1, r1, #32
  99 00c6 9B1A     		subls	r3, r3, r2
 100 00c8 CA00     		lsls	r2, r1, #3
 101 00ca 42F04002 		orr	r2, r2, #64
 102 00ce 9A42     		cmp	r2, r3
 103 00d0 9CBF     		itt	ls
 104 00d2 41F01001 		orrls	r1, r1, #16
 105 00d6 9B1A     		subls	r3, r3, r2
 106 00d8 8A00     		lsls	r2, r1, #2
 107 00da 42F01002 		orr	r2, r2, #16
 108 00de 9A42     		cmp	r2, r3
 109 00e0 9CBF     		itt	ls
 110 00e2 41F00801 		orrls	r1, r1, #8
 111 00e6 9B1A     		subls	r3, r3, r2
 112 00e8 4A00     		lsls	r2, r1, #1
 113 00ea 42F00402 		orr	r2, r2, #4
 114 00ee 9A42     		cmp	r2, r3
ARM GAS  /tmp/ccNUQ0o1.s 			page 3


 115 00f0 9CBF     		itt	ls
 116 00f2 41F00401 		orrls	r1, r1, #4
 117 00f6 9B1A     		subls	r3, r3, r2
 118 00f8 41F00102 		orr	r2, r1, #1
 119 00fc 9342     		cmp	r3, r2
 120 00fe 28BF     		it	cs
 121 0100 41F00201 		orrcs	r1, r1, #2
 122 0104 4808     		lsrs	r0, r1, #1
 123 0106 7047     		bx	lr
 124              	.L2:
 125 0108 11F04042 		ands	r2, r1, #-1073741824
 126 010c 40F07A81 		bne	.L52
 127 0110 B1F1805F 		cmp	r1, #268435456
 128 0114 F0B4     		push	{r4, r5, r6, r7}
 129 0116 80F06F81 		bcs	.L59
 130 011a 0B46     		mov	r3, r1
 131 011c 1146     		mov	r1, r2
 132 011e 4FF08062 		mov	r2, #67108864
 133              	.L20:
 134 0122 9342     		cmp	r3, r2
 135 0124 24BF     		itt	cs
 136 0126 41F00201 		orrcs	r1, r1, #2
 137 012a 9B1A     		subcs	r3, r3, r2
 138 012c 4A06     		lsls	r2, r1, #25
 139 012e 42F08072 		orr	r2, r2, #16777216
 140 0132 9342     		cmp	r3, r2
 141 0134 4FEA4101 		lsl	r1, r1, #1
 142 0138 24BF     		itt	cs
 143 013a 41F00201 		orrcs	r1, r1, #2
 144 013e 9B1A     		subcs	r3, r3, r2
 145 0140 CA05     		lsls	r2, r1, #23
 146 0142 42F48002 		orr	r2, r2, #4194304
 147 0146 9342     		cmp	r3, r2
 148 0148 4FEA4101 		lsl	r1, r1, #1
 149 014c 24BF     		itt	cs
 150 014e 41F00201 		orrcs	r1, r1, #2
 151 0152 9B1A     		subcs	r3, r3, r2
 152 0154 4A05     		lsls	r2, r1, #21
 153 0156 42F48012 		orr	r2, r2, #1048576
 154 015a 9342     		cmp	r3, r2
 155 015c 4FEA4101 		lsl	r1, r1, #1
 156 0160 24BF     		itt	cs
 157 0162 41F00201 		orrcs	r1, r1, #2
 158 0166 9B1A     		subcs	r3, r3, r2
 159 0168 CA04     		lsls	r2, r1, #19
 160 016a 42F48022 		orr	r2, r2, #262144
 161 016e 9342     		cmp	r3, r2
 162 0170 4FEA4101 		lsl	r1, r1, #1
 163 0174 24BF     		itt	cs
 164 0176 41F00201 		orrcs	r1, r1, #2
 165 017a 9B1A     		subcs	r3, r3, r2
 166 017c 4A04     		lsls	r2, r1, #17
 167 017e 42F48032 		orr	r2, r2, #65536
 168 0182 9342     		cmp	r3, r2
 169 0184 4FEA4101 		lsl	r1, r1, #1
 170 0188 24BF     		itt	cs
 171 018a 41F00201 		orrcs	r1, r1, #2
ARM GAS  /tmp/ccNUQ0o1.s 			page 4


 172 018e 9B1A     		subcs	r3, r3, r2
 173 0190 CA03     		lsls	r2, r1, #15
 174 0192 42F48042 		orr	r2, r2, #16384
 175 0196 9342     		cmp	r3, r2
 176 0198 4FEA4101 		lsl	r1, r1, #1
 177 019c 24BF     		itt	cs
 178 019e 41F00201 		orrcs	r1, r1, #2
 179 01a2 9B1A     		subcs	r3, r3, r2
 180 01a4 4A03     		lsls	r2, r1, #13
 181 01a6 42F48052 		orr	r2, r2, #4096
 182 01aa 9342     		cmp	r3, r2
 183 01ac 4FEA4101 		lsl	r1, r1, #1
 184 01b0 24BF     		itt	cs
 185 01b2 41F00201 		orrcs	r1, r1, #2
 186 01b6 9B1A     		subcs	r3, r3, r2
 187 01b8 CA02     		lsls	r2, r1, #11
 188 01ba 42F48062 		orr	r2, r2, #1024
 189 01be 9342     		cmp	r3, r2
 190 01c0 4FEA4101 		lsl	r1, r1, #1
 191 01c4 24BF     		itt	cs
 192 01c6 41F00201 		orrcs	r1, r1, #2
 193 01ca 9B1A     		subcs	r3, r3, r2
 194 01cc 4A02     		lsls	r2, r1, #9
 195 01ce 42F48072 		orr	r2, r2, #256
 196 01d2 9342     		cmp	r3, r2
 197 01d4 4FEA4101 		lsl	r1, r1, #1
 198 01d8 24BF     		itt	cs
 199 01da 41F00201 		orrcs	r1, r1, #2
 200 01de 9B1A     		subcs	r3, r3, r2
 201 01e0 CA01     		lsls	r2, r1, #7
 202 01e2 42F04002 		orr	r2, r2, #64
 203 01e6 9342     		cmp	r3, r2
 204 01e8 4FEA4101 		lsl	r1, r1, #1
 205 01ec 24BF     		itt	cs
 206 01ee 41F00201 		orrcs	r1, r1, #2
 207 01f2 9B1A     		subcs	r3, r3, r2
 208 01f4 4A01     		lsls	r2, r1, #5
 209 01f6 42F01002 		orr	r2, r2, #16
 210 01fa 9342     		cmp	r3, r2
 211 01fc 4FEA4101 		lsl	r1, r1, #1
 212 0200 24BF     		itt	cs
 213 0202 41F00201 		orrcs	r1, r1, #2
 214 0206 9B1A     		subcs	r3, r3, r2
 215 0208 CA00     		lsls	r2, r1, #3
 216 020a 42F00402 		orr	r2, r2, #4
 217 020e 9342     		cmp	r3, r2
 218 0210 4FEA4101 		lsl	r1, r1, #1
 219 0214 28BF     		it	cs
 220 0216 41F00201 		orrcs	r1, r1, #2
 221 021a 4FEA4101 		lsl	r1, r1, #1
 222 021e 28BF     		it	cs
 223 0220 9B1A     		subcs	r3, r3, r2
 224 0222 41F00102 		orr	r2, r1, #1
 225 0226 9342     		cmp	r3, r2
 226 0228 28BF     		it	cs
 227 022a 41F00201 		orrcs	r1, r1, #2
 228 022e 4FEA4101 		lsl	r1, r1, #1
ARM GAS  /tmp/ccNUQ0o1.s 			page 5


 229 0232 28BF     		it	cs
 230 0234 9B1A     		subcs	r3, r3, r2
 231 0236 41F00102 		orr	r2, r1, #1
 232 023a 9508     		lsrs	r5, r2, #2
 233 023c 0026     		movs	r6, #0
 234 023e 9407     		lsls	r4, r2, #30
 235 0240 AB42     		cmp	r3, r5
 236 0242 46EA0002 		orr	r2, r6, r0
 237 0246 08BF     		it	eq
 238 0248 A242     		cmpeq	r2, r4
 239 024a 04D3     		bcc	.L35
 240 024c 121B     		subs	r2, r2, r4
 241 024e 63EB0503 		sbc	r3, r3, r5
 242 0252 41F00201 		orr	r1, r1, #2
 243              	.L35:
 244 0256 4900     		lsls	r1, r1, #1
 245 0258 41F00100 		orr	r0, r1, #1
 246 025c 0509     		lsrs	r5, r0, #4
 247 025e 0407     		lsls	r4, r0, #28
 248 0260 AB42     		cmp	r3, r5
 249 0262 08BF     		it	eq
 250 0264 A242     		cmpeq	r2, r4
 251 0266 04D3     		bcc	.L36
 252 0268 121B     		subs	r2, r2, r4
 253 026a 63EB0503 		sbc	r3, r3, r5
 254 026e 41F00201 		orr	r1, r1, #2
 255              	.L36:
 256 0272 4900     		lsls	r1, r1, #1
 257 0274 41F00100 		orr	r0, r1, #1
 258 0278 8509     		lsrs	r5, r0, #6
 259 027a 8406     		lsls	r4, r0, #26
 260 027c AB42     		cmp	r3, r5
 261 027e 08BF     		it	eq
 262 0280 A242     		cmpeq	r2, r4
 263 0282 04D3     		bcc	.L37
 264 0284 121B     		subs	r2, r2, r4
 265 0286 63EB0503 		sbc	r3, r3, r5
 266 028a 41F00201 		orr	r1, r1, #2
 267              	.L37:
 268 028e 4900     		lsls	r1, r1, #1
 269 0290 41F00100 		orr	r0, r1, #1
 270 0294 050A     		lsrs	r5, r0, #8
 271 0296 0406     		lsls	r4, r0, #24
 272 0298 AB42     		cmp	r3, r5
 273 029a 08BF     		it	eq
 274 029c A242     		cmpeq	r2, r4
 275 029e 04D3     		bcc	.L38
 276 02a0 121B     		subs	r2, r2, r4
 277 02a2 63EB0503 		sbc	r3, r3, r5
 278 02a6 41F00201 		orr	r1, r1, #2
 279              	.L38:
 280 02aa 4900     		lsls	r1, r1, #1
 281 02ac 41F00100 		orr	r0, r1, #1
 282 02b0 850A     		lsrs	r5, r0, #10
 283 02b2 8405     		lsls	r4, r0, #22
 284 02b4 AB42     		cmp	r3, r5
 285 02b6 08BF     		it	eq
ARM GAS  /tmp/ccNUQ0o1.s 			page 6


 286 02b8 A242     		cmpeq	r2, r4
 287 02ba 04D3     		bcc	.L39
 288 02bc 121B     		subs	r2, r2, r4
 289 02be 63EB0503 		sbc	r3, r3, r5
 290 02c2 41F00201 		orr	r1, r1, #2
 291              	.L39:
 292 02c6 4900     		lsls	r1, r1, #1
 293 02c8 41F00100 		orr	r0, r1, #1
 294 02cc 050B     		lsrs	r5, r0, #12
 295 02ce 0405     		lsls	r4, r0, #20
 296 02d0 AB42     		cmp	r3, r5
 297 02d2 08BF     		it	eq
 298 02d4 A242     		cmpeq	r2, r4
 299 02d6 04D3     		bcc	.L40
 300 02d8 121B     		subs	r2, r2, r4
 301 02da 63EB0503 		sbc	r3, r3, r5
 302 02de 41F00201 		orr	r1, r1, #2
 303              	.L40:
 304 02e2 4900     		lsls	r1, r1, #1
 305 02e4 41F00100 		orr	r0, r1, #1
 306 02e8 850B     		lsrs	r5, r0, #14
 307 02ea 8404     		lsls	r4, r0, #18
 308 02ec AB42     		cmp	r3, r5
 309 02ee 08BF     		it	eq
 310 02f0 A242     		cmpeq	r2, r4
 311 02f2 04D3     		bcc	.L41
 312 02f4 121B     		subs	r2, r2, r4
 313 02f6 63EB0503 		sbc	r3, r3, r5
 314 02fa 41F00201 		orr	r1, r1, #2
 315              	.L41:
 316 02fe 4900     		lsls	r1, r1, #1
 317 0300 41F00100 		orr	r0, r1, #1
 318 0304 050C     		lsrs	r5, r0, #16
 319 0306 0404     		lsls	r4, r0, #16
 320 0308 AB42     		cmp	r3, r5
 321 030a 08BF     		it	eq
 322 030c A242     		cmpeq	r2, r4
 323 030e 04D3     		bcc	.L42
 324 0310 121B     		subs	r2, r2, r4
 325 0312 63EB0503 		sbc	r3, r3, r5
 326 0316 41F00201 		orr	r1, r1, #2
 327              	.L42:
 328 031a 4900     		lsls	r1, r1, #1
 329 031c 41F00100 		orr	r0, r1, #1
 330 0320 850C     		lsrs	r5, r0, #18
 331 0322 8403     		lsls	r4, r0, #14
 332 0324 AB42     		cmp	r3, r5
 333 0326 08BF     		it	eq
 334 0328 A242     		cmpeq	r2, r4
 335 032a 04D3     		bcc	.L43
 336 032c 121B     		subs	r2, r2, r4
 337 032e 63EB0503 		sbc	r3, r3, r5
 338 0332 41F00201 		orr	r1, r1, #2
 339              	.L43:
 340 0336 4900     		lsls	r1, r1, #1
 341 0338 41F00100 		orr	r0, r1, #1
 342 033c 050D     		lsrs	r5, r0, #20
ARM GAS  /tmp/ccNUQ0o1.s 			page 7


 343 033e 0403     		lsls	r4, r0, #12
 344 0340 AB42     		cmp	r3, r5
 345 0342 08BF     		it	eq
 346 0344 A242     		cmpeq	r2, r4
 347 0346 04D3     		bcc	.L44
 348 0348 121B     		subs	r2, r2, r4
 349 034a 63EB0503 		sbc	r3, r3, r5
 350 034e 41F00201 		orr	r1, r1, #2
 351              	.L44:
 352 0352 4900     		lsls	r1, r1, #1
 353 0354 41F00100 		orr	r0, r1, #1
 354 0358 850D     		lsrs	r5, r0, #22
 355 035a 8402     		lsls	r4, r0, #10
 356 035c AB42     		cmp	r3, r5
 357 035e 08BF     		it	eq
 358 0360 A242     		cmpeq	r2, r4
 359 0362 04D3     		bcc	.L45
 360 0364 121B     		subs	r2, r2, r4
 361 0366 63EB0503 		sbc	r3, r3, r5
 362 036a 41F00201 		orr	r1, r1, #2
 363              	.L45:
 364 036e 4900     		lsls	r1, r1, #1
 365 0370 41F00100 		orr	r0, r1, #1
 366 0374 050E     		lsrs	r5, r0, #24
 367 0376 0402     		lsls	r4, r0, #8
 368 0378 AB42     		cmp	r3, r5
 369 037a 08BF     		it	eq
 370 037c A242     		cmpeq	r2, r4
 371 037e 04D3     		bcc	.L46
 372 0380 121B     		subs	r2, r2, r4
 373 0382 63EB0503 		sbc	r3, r3, r5
 374 0386 41F00201 		orr	r1, r1, #2
 375              	.L46:
 376 038a 4900     		lsls	r1, r1, #1
 377 038c 41F00100 		orr	r0, r1, #1
 378 0390 850E     		lsrs	r5, r0, #26
 379 0392 8401     		lsls	r4, r0, #6
 380 0394 AB42     		cmp	r3, r5
 381 0396 08BF     		it	eq
 382 0398 A242     		cmpeq	r2, r4
 383 039a 04D3     		bcc	.L47
 384 039c 121B     		subs	r2, r2, r4
 385 039e 63EB0503 		sbc	r3, r3, r5
 386 03a2 41F00201 		orr	r1, r1, #2
 387              	.L47:
 388 03a6 4900     		lsls	r1, r1, #1
 389 03a8 41F00100 		orr	r0, r1, #1
 390 03ac 050F     		lsrs	r5, r0, #28
 391 03ae 0401     		lsls	r4, r0, #4
 392 03b0 AB42     		cmp	r3, r5
 393 03b2 08BF     		it	eq
 394 03b4 A242     		cmpeq	r2, r4
 395 03b6 04D3     		bcc	.L48
 396 03b8 121B     		subs	r2, r2, r4
 397 03ba 63EB0503 		sbc	r3, r3, r5
 398 03be 41F00201 		orr	r1, r1, #2
 399              	.L48:
ARM GAS  /tmp/ccNUQ0o1.s 			page 8


 400 03c2 4900     		lsls	r1, r1, #1
 401 03c4 41F00100 		orr	r0, r1, #1
 402 03c8 850F     		lsrs	r5, r0, #30
 403 03ca 8400     		lsls	r4, r0, #2
 404 03cc AB42     		cmp	r3, r5
 405 03ce 08BF     		it	eq
 406 03d0 A242     		cmpeq	r2, r4
 407 03d2 04D3     		bcc	.L49
 408 03d4 121B     		subs	r2, r2, r4
 409 03d6 63EB0503 		sbc	r3, r3, r5
 410 03da 41F00201 		orr	r1, r1, #2
 411              	.L49:
 412 03de 4900     		lsls	r1, r1, #1
 413 03e0 0025     		movs	r5, #0
 414 03e2 41F00104 		orr	r4, r1, #1
 415 03e6 AB42     		cmp	r3, r5
 416 03e8 08BF     		it	eq
 417 03ea A242     		cmpeq	r2, r4
 418 03ec 28BF     		it	cs
 419 03ee 41F00201 		orrcs	r1, r1, #2
 420 03f2 4808     		lsrs	r0, r1, #1
 421 03f4 F0BC     		pop	{r4, r5, r6, r7}
 422 03f6 7047     		bx	lr
 423              	.L59:
 424 03f8 01F17043 		add	r3, r1, #-268435456
 425 03fc 4FF0A052 		mov	r2, #335544320
 426 0400 0421     		movs	r1, #4
 427 0402 8EE6     		b	.L20
 428              	.L52:
 429 0404 4FF0FF30 		mov	r0, #-1
 430 0408 7047     		bx	lr
 431              		.size	_Z7isqrt64y, .-_Z7isqrt64y
 432 040a 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 433              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 434              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 435              	_ZL28cpu_irq_prev_interrupt_state:
 436 0000 00       		.space	1
 437              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 438              		.align	2
 439              		.type	_ZL32cpu_irq_critical_section_counter, %object
 440              		.size	_ZL32cpu_irq_critical_section_counter, 4
 441              	_ZL32cpu_irq_critical_section_counter:
 442 0000 00000000 		.space	4
 443              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
