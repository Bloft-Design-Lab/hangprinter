ARM GAS  C:\Users\pieta\AppData\Local\Temp\cctE23xF.s 			page 1


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
  14              		.text
  15              		.section	.text._Z7isqrt64y,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z7isqrt64y
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z7isqrt64y, %function
  24              	_Z7isqrt64y:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 F0B4     		push	{r4, r5, r6, r7}
  29 0002 0029     		cmp	r1, #0
  30 0004 7FD1     		bne	.L2
  31 0006 B0F1804F 		cmp	r0, #1073741824
  32 000a 0346     		mov	r3, r0
  33 000c 80F0EF81 		bcs	.L57
  34 0010 4FF08062 		mov	r2, #67108864
  35 0014 4FF0A055 		mov	r5, #335544320
  36 0018 4FF40044 		mov	r4, #32768
  37 001c 4FF08050 		mov	r0, #268435456
  38              	.L3:
  39 0020 8342     		cmp	r3, r0
  40 0022 02D3     		bcc	.L4
  41 0024 1B1A     		subs	r3, r3, r0
  42 0026 2A46     		mov	r2, r5
  43 0028 2146     		mov	r1, r4
  44              	.L4:
  45 002a 9342     		cmp	r3, r2
  46 002c 24BF     		itt	cs
  47 002e 41F48041 		orrcs	r1, r1, #16384
  48 0032 9B1A     		subcs	r3, r3, r2
  49 0034 0A03     		lsls	r2, r1, #12
  50 0036 42F08072 		orr	r2, r2, #16777216
  51 003a 9A42     		cmp	r2, r3
  52 003c 9CBF     		itt	ls
  53 003e 41F40051 		orrls	r1, r1, #8192
  54 0042 9B1A     		subls	r3, r3, r2
  55 0044 CA02     		lsls	r2, r1, #11
  56 0046 42F48002 		orr	r2, r2, #4194304
  57 004a 9A42     		cmp	r2, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cctE23xF.s 			page 2


  58 004c 9CBF     		itt	ls
  59 004e 41F48051 		orrls	r1, r1, #4096
  60 0052 9B1A     		subls	r3, r3, r2
  61 0054 8A02     		lsls	r2, r1, #10
  62 0056 42F48012 		orr	r2, r2, #1048576
  63 005a 9A42     		cmp	r2, r3
  64 005c 9CBF     		itt	ls
  65 005e 41F40061 		orrls	r1, r1, #2048
  66 0062 9B1A     		subls	r3, r3, r2
  67 0064 4A02     		lsls	r2, r1, #9
  68 0066 42F48022 		orr	r2, r2, #262144
  69 006a 9A42     		cmp	r2, r3
  70 006c 9CBF     		itt	ls
  71 006e 41F48061 		orrls	r1, r1, #1024
  72 0072 9B1A     		subls	r3, r3, r2
  73 0074 0A02     		lsls	r2, r1, #8
  74 0076 42F48032 		orr	r2, r2, #65536
  75 007a 9A42     		cmp	r2, r3
  76 007c 9CBF     		itt	ls
  77 007e 41F40071 		orrls	r1, r1, #512
  78 0082 9B1A     		subls	r3, r3, r2
  79 0084 CA01     		lsls	r2, r1, #7
  80 0086 42F48042 		orr	r2, r2, #16384
  81 008a 9A42     		cmp	r2, r3
  82 008c 9CBF     		itt	ls
  83 008e 41F48071 		orrls	r1, r1, #256
  84 0092 9B1A     		subls	r3, r3, r2
  85 0094 8A01     		lsls	r2, r1, #6
  86 0096 42F48052 		orr	r2, r2, #4096
  87 009a 9A42     		cmp	r2, r3
  88 009c 9CBF     		itt	ls
  89 009e 41F08001 		orrls	r1, r1, #128
  90 00a2 9B1A     		subls	r3, r3, r2
  91 00a4 4A01     		lsls	r2, r1, #5
  92 00a6 42F48062 		orr	r2, r2, #1024
  93 00aa 9A42     		cmp	r2, r3
  94 00ac 9CBF     		itt	ls
  95 00ae 41F04001 		orrls	r1, r1, #64
  96 00b2 9B1A     		subls	r3, r3, r2
  97 00b4 0A01     		lsls	r2, r1, #4
  98 00b6 42F48072 		orr	r2, r2, #256
  99 00ba 9A42     		cmp	r2, r3
 100 00bc 9CBF     		itt	ls
 101 00be 41F02001 		orrls	r1, r1, #32
 102 00c2 9B1A     		subls	r3, r3, r2
 103 00c4 CA00     		lsls	r2, r1, #3
 104 00c6 42F04002 		orr	r2, r2, #64
 105 00ca 9A42     		cmp	r2, r3
 106 00cc 9CBF     		itt	ls
 107 00ce 41F01001 		orrls	r1, r1, #16
 108 00d2 9B1A     		subls	r3, r3, r2
 109 00d4 8A00     		lsls	r2, r1, #2
 110 00d6 42F01002 		orr	r2, r2, #16
 111 00da 9A42     		cmp	r2, r3
 112 00dc 9CBF     		itt	ls
 113 00de 41F00801 		orrls	r1, r1, #8
 114 00e2 9B1A     		subls	r3, r3, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cctE23xF.s 			page 3


 115 00e4 4A00     		lsls	r2, r1, #1
 116 00e6 42F00402 		orr	r2, r2, #4
 117 00ea 9A42     		cmp	r2, r3
 118 00ec 9CBF     		itt	ls
 119 00ee 41F00401 		orrls	r1, r1, #4
 120 00f2 9B1A     		subls	r3, r3, r2
 121 00f4 41F00102 		orr	r2, r1, #1
 122 00f8 9342     		cmp	r3, r2
 123 00fa 01D3     		bcc	.L50
 124              	.L55:
 125 00fc 41F00201 		orr	r1, r1, #2
 126              	.L50:
 127 0100 4808     		lsrs	r0, r1, #1
 128 0102 F0BC     		pop	{r4, r5, r6, r7}
 129 0104 7047     		bx	lr
 130              	.L2:
 131 0106 11F04042 		ands	r2, r1, #-1073741824
 132 010a 40F08881 		bne	.L52
 133 010e B1F1805F 		cmp	r1, #268435456
 134 0112 80F07981 		bcs	.L58
 135 0116 0B46     		mov	r3, r1
 136 0118 4FF0A066 		mov	r6, #83886080
 137 011c 1146     		mov	r1, r2
 138 011e 0425     		movs	r5, #4
 139 0120 4FF08072 		mov	r2, #16777216
 140 0124 4FF08064 		mov	r4, #67108864
 141              	.L20:
 142 0128 A342     		cmp	r3, r4
 143 012a 02D3     		bcc	.L21
 144 012c 1B1B     		subs	r3, r3, r4
 145 012e 3246     		mov	r2, r6
 146 0130 2946     		mov	r1, r5
 147              	.L21:
 148 0132 9342     		cmp	r3, r2
 149 0134 24BF     		itt	cs
 150 0136 41F00201 		orrcs	r1, r1, #2
 151 013a 9B1A     		subcs	r3, r3, r2
 152 013c CA05     		lsls	r2, r1, #23
 153 013e 42F48002 		orr	r2, r2, #4194304
 154 0142 9342     		cmp	r3, r2
 155 0144 4FEA4101 		lsl	r1, r1, #1
 156 0148 24BF     		itt	cs
 157 014a 41F00201 		orrcs	r1, r1, #2
 158 014e 9B1A     		subcs	r3, r3, r2
 159 0150 4A05     		lsls	r2, r1, #21
 160 0152 42F48012 		orr	r2, r2, #1048576
 161 0156 9342     		cmp	r3, r2
 162 0158 4FEA4101 		lsl	r1, r1, #1
 163 015c 24BF     		itt	cs
 164 015e 41F00201 		orrcs	r1, r1, #2
 165 0162 9B1A     		subcs	r3, r3, r2
 166 0164 CA04     		lsls	r2, r1, #19
 167 0166 42F48022 		orr	r2, r2, #262144
 168 016a 9342     		cmp	r3, r2
 169 016c 4FEA4101 		lsl	r1, r1, #1
 170 0170 24BF     		itt	cs
 171 0172 41F00201 		orrcs	r1, r1, #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cctE23xF.s 			page 4


 172 0176 9B1A     		subcs	r3, r3, r2
 173 0178 4A04     		lsls	r2, r1, #17
 174 017a 42F48032 		orr	r2, r2, #65536
 175 017e 9342     		cmp	r3, r2
 176 0180 4FEA4101 		lsl	r1, r1, #1
 177 0184 24BF     		itt	cs
 178 0186 41F00201 		orrcs	r1, r1, #2
 179 018a 9B1A     		subcs	r3, r3, r2
 180 018c CA03     		lsls	r2, r1, #15
 181 018e 42F48042 		orr	r2, r2, #16384
 182 0192 9342     		cmp	r3, r2
 183 0194 4FEA4101 		lsl	r1, r1, #1
 184 0198 24BF     		itt	cs
 185 019a 41F00201 		orrcs	r1, r1, #2
 186 019e 9B1A     		subcs	r3, r3, r2
 187 01a0 4A03     		lsls	r2, r1, #13
 188 01a2 42F48052 		orr	r2, r2, #4096
 189 01a6 9342     		cmp	r3, r2
 190 01a8 4FEA4101 		lsl	r1, r1, #1
 191 01ac 24BF     		itt	cs
 192 01ae 41F00201 		orrcs	r1, r1, #2
 193 01b2 9B1A     		subcs	r3, r3, r2
 194 01b4 CA02     		lsls	r2, r1, #11
 195 01b6 42F48062 		orr	r2, r2, #1024
 196 01ba 9342     		cmp	r3, r2
 197 01bc 4FEA4101 		lsl	r1, r1, #1
 198 01c0 24BF     		itt	cs
 199 01c2 41F00201 		orrcs	r1, r1, #2
 200 01c6 9B1A     		subcs	r3, r3, r2
 201 01c8 4A02     		lsls	r2, r1, #9
 202 01ca 42F48072 		orr	r2, r2, #256
 203 01ce 9342     		cmp	r3, r2
 204 01d0 4FEA4101 		lsl	r1, r1, #1
 205 01d4 24BF     		itt	cs
 206 01d6 41F00201 		orrcs	r1, r1, #2
 207 01da 9B1A     		subcs	r3, r3, r2
 208 01dc CA01     		lsls	r2, r1, #7
 209 01de 42F04002 		orr	r2, r2, #64
 210 01e2 9342     		cmp	r3, r2
 211 01e4 4FEA4101 		lsl	r1, r1, #1
 212 01e8 24BF     		itt	cs
 213 01ea 41F00201 		orrcs	r1, r1, #2
 214 01ee 9B1A     		subcs	r3, r3, r2
 215 01f0 4A01     		lsls	r2, r1, #5
 216 01f2 42F01002 		orr	r2, r2, #16
 217 01f6 9342     		cmp	r3, r2
 218 01f8 4FEA4101 		lsl	r1, r1, #1
 219 01fc 24BF     		itt	cs
 220 01fe 41F00201 		orrcs	r1, r1, #2
 221 0202 9B1A     		subcs	r3, r3, r2
 222 0204 CA00     		lsls	r2, r1, #3
 223 0206 42F00402 		orr	r2, r2, #4
 224 020a 9342     		cmp	r3, r2
 225 020c 4FEA4101 		lsl	r1, r1, #1
 226 0210 28BF     		it	cs
 227 0212 41F00201 		orrcs	r1, r1, #2
 228 0216 4FEA4101 		lsl	r1, r1, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cctE23xF.s 			page 5


 229 021a 28BF     		it	cs
 230 021c 9B1A     		subcs	r3, r3, r2
 231 021e 41F00102 		orr	r2, r1, #1
 232 0222 9342     		cmp	r3, r2
 233 0224 28BF     		it	cs
 234 0226 41F00201 		orrcs	r1, r1, #2
 235 022a 4FEA4101 		lsl	r1, r1, #1
 236 022e 28BF     		it	cs
 237 0230 9B1A     		subcs	r3, r3, r2
 238 0232 41F00102 		orr	r2, r1, #1
 239 0236 9508     		lsrs	r5, r2, #2
 240 0238 0026     		movs	r6, #0
 241 023a 9407     		lsls	r4, r2, #30
 242 023c AB42     		cmp	r3, r5
 243 023e 46EA0002 		orr	r2, r6, r0
 244 0242 08BF     		it	eq
 245 0244 A242     		cmpeq	r2, r4
 246 0246 04D3     		bcc	.L35
 247 0248 121B     		subs	r2, r2, r4
 248 024a 63EB0503 		sbc	r3, r3, r5
 249 024e 41F00201 		orr	r1, r1, #2
 250              	.L35:
 251 0252 4900     		lsls	r1, r1, #1
 252 0254 41F00100 		orr	r0, r1, #1
 253 0258 0509     		lsrs	r5, r0, #4
 254 025a 0407     		lsls	r4, r0, #28
 255 025c AB42     		cmp	r3, r5
 256 025e 08BF     		it	eq
 257 0260 A242     		cmpeq	r2, r4
 258 0262 04D3     		bcc	.L36
 259 0264 121B     		subs	r2, r2, r4
 260 0266 63EB0503 		sbc	r3, r3, r5
 261 026a 41F00201 		orr	r1, r1, #2
 262              	.L36:
 263 026e 4900     		lsls	r1, r1, #1
 264 0270 41F00100 		orr	r0, r1, #1
 265 0274 8509     		lsrs	r5, r0, #6
 266 0276 8406     		lsls	r4, r0, #26
 267 0278 AB42     		cmp	r3, r5
 268 027a 08BF     		it	eq
 269 027c A242     		cmpeq	r2, r4
 270 027e 04D3     		bcc	.L37
 271 0280 121B     		subs	r2, r2, r4
 272 0282 63EB0503 		sbc	r3, r3, r5
 273 0286 41F00201 		orr	r1, r1, #2
 274              	.L37:
 275 028a 4900     		lsls	r1, r1, #1
 276 028c 41F00100 		orr	r0, r1, #1
 277 0290 050A     		lsrs	r5, r0, #8
 278 0292 0406     		lsls	r4, r0, #24
 279 0294 AB42     		cmp	r3, r5
 280 0296 08BF     		it	eq
 281 0298 A242     		cmpeq	r2, r4
 282 029a 04D3     		bcc	.L38
 283 029c 121B     		subs	r2, r2, r4
 284 029e 63EB0503 		sbc	r3, r3, r5
 285 02a2 41F00201 		orr	r1, r1, #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cctE23xF.s 			page 6


 286              	.L38:
 287 02a6 4900     		lsls	r1, r1, #1
 288 02a8 41F00100 		orr	r0, r1, #1
 289 02ac 850A     		lsrs	r5, r0, #10
 290 02ae 8405     		lsls	r4, r0, #22
 291 02b0 AB42     		cmp	r3, r5
 292 02b2 08BF     		it	eq
 293 02b4 A242     		cmpeq	r2, r4
 294 02b6 04D3     		bcc	.L39
 295 02b8 121B     		subs	r2, r2, r4
 296 02ba 63EB0503 		sbc	r3, r3, r5
 297 02be 41F00201 		orr	r1, r1, #2
 298              	.L39:
 299 02c2 4900     		lsls	r1, r1, #1
 300 02c4 41F00100 		orr	r0, r1, #1
 301 02c8 050B     		lsrs	r5, r0, #12
 302 02ca 0405     		lsls	r4, r0, #20
 303 02cc AB42     		cmp	r3, r5
 304 02ce 08BF     		it	eq
 305 02d0 A242     		cmpeq	r2, r4
 306 02d2 04D3     		bcc	.L40
 307 02d4 121B     		subs	r2, r2, r4
 308 02d6 63EB0503 		sbc	r3, r3, r5
 309 02da 41F00201 		orr	r1, r1, #2
 310              	.L40:
 311 02de 4900     		lsls	r1, r1, #1
 312 02e0 41F00100 		orr	r0, r1, #1
 313 02e4 850B     		lsrs	r5, r0, #14
 314 02e6 8404     		lsls	r4, r0, #18
 315 02e8 AB42     		cmp	r3, r5
 316 02ea 08BF     		it	eq
 317 02ec A242     		cmpeq	r2, r4
 318 02ee 04D3     		bcc	.L41
 319 02f0 121B     		subs	r2, r2, r4
 320 02f2 63EB0503 		sbc	r3, r3, r5
 321 02f6 41F00201 		orr	r1, r1, #2
 322              	.L41:
 323 02fa 4900     		lsls	r1, r1, #1
 324 02fc 41F00100 		orr	r0, r1, #1
 325 0300 050C     		lsrs	r5, r0, #16
 326 0302 0404     		lsls	r4, r0, #16
 327 0304 AB42     		cmp	r3, r5
 328 0306 08BF     		it	eq
 329 0308 A242     		cmpeq	r2, r4
 330 030a 04D3     		bcc	.L42
 331 030c 121B     		subs	r2, r2, r4
 332 030e 63EB0503 		sbc	r3, r3, r5
 333 0312 41F00201 		orr	r1, r1, #2
 334              	.L42:
 335 0316 4900     		lsls	r1, r1, #1
 336 0318 41F00100 		orr	r0, r1, #1
 337 031c 850C     		lsrs	r5, r0, #18
 338 031e 8403     		lsls	r4, r0, #14
 339 0320 AB42     		cmp	r3, r5
 340 0322 08BF     		it	eq
 341 0324 A242     		cmpeq	r2, r4
 342 0326 04D3     		bcc	.L43
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cctE23xF.s 			page 7


 343 0328 121B     		subs	r2, r2, r4
 344 032a 63EB0503 		sbc	r3, r3, r5
 345 032e 41F00201 		orr	r1, r1, #2
 346              	.L43:
 347 0332 4900     		lsls	r1, r1, #1
 348 0334 41F00100 		orr	r0, r1, #1
 349 0338 050D     		lsrs	r5, r0, #20
 350 033a 0403     		lsls	r4, r0, #12
 351 033c AB42     		cmp	r3, r5
 352 033e 08BF     		it	eq
 353 0340 A242     		cmpeq	r2, r4
 354 0342 04D3     		bcc	.L44
 355 0344 121B     		subs	r2, r2, r4
 356 0346 63EB0503 		sbc	r3, r3, r5
 357 034a 41F00201 		orr	r1, r1, #2
 358              	.L44:
 359 034e 4900     		lsls	r1, r1, #1
 360 0350 41F00100 		orr	r0, r1, #1
 361 0354 850D     		lsrs	r5, r0, #22
 362 0356 8402     		lsls	r4, r0, #10
 363 0358 AB42     		cmp	r3, r5
 364 035a 08BF     		it	eq
 365 035c A242     		cmpeq	r2, r4
 366 035e 04D3     		bcc	.L45
 367 0360 121B     		subs	r2, r2, r4
 368 0362 63EB0503 		sbc	r3, r3, r5
 369 0366 41F00201 		orr	r1, r1, #2
 370              	.L45:
 371 036a 4900     		lsls	r1, r1, #1
 372 036c 41F00100 		orr	r0, r1, #1
 373 0370 050E     		lsrs	r5, r0, #24
 374 0372 0402     		lsls	r4, r0, #8
 375 0374 AB42     		cmp	r3, r5
 376 0376 08BF     		it	eq
 377 0378 A242     		cmpeq	r2, r4
 378 037a 04D3     		bcc	.L46
 379 037c 121B     		subs	r2, r2, r4
 380 037e 63EB0503 		sbc	r3, r3, r5
 381 0382 41F00201 		orr	r1, r1, #2
 382              	.L46:
 383 0386 4900     		lsls	r1, r1, #1
 384 0388 41F00100 		orr	r0, r1, #1
 385 038c 850E     		lsrs	r5, r0, #26
 386 038e 8401     		lsls	r4, r0, #6
 387 0390 AB42     		cmp	r3, r5
 388 0392 08BF     		it	eq
 389 0394 A242     		cmpeq	r2, r4
 390 0396 04D3     		bcc	.L47
 391 0398 121B     		subs	r2, r2, r4
 392 039a 63EB0503 		sbc	r3, r3, r5
 393 039e 41F00201 		orr	r1, r1, #2
 394              	.L47:
 395 03a2 4900     		lsls	r1, r1, #1
 396 03a4 41F00100 		orr	r0, r1, #1
 397 03a8 050F     		lsrs	r5, r0, #28
 398 03aa 0401     		lsls	r4, r0, #4
 399 03ac AB42     		cmp	r3, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cctE23xF.s 			page 8


 400 03ae 08BF     		it	eq
 401 03b0 A242     		cmpeq	r2, r4
 402 03b2 04D3     		bcc	.L48
 403 03b4 121B     		subs	r2, r2, r4
 404 03b6 63EB0503 		sbc	r3, r3, r5
 405 03ba 41F00201 		orr	r1, r1, #2
 406              	.L48:
 407 03be 4900     		lsls	r1, r1, #1
 408 03c0 41F00100 		orr	r0, r1, #1
 409 03c4 850F     		lsrs	r5, r0, #30
 410 03c6 8400     		lsls	r4, r0, #2
 411 03c8 AB42     		cmp	r3, r5
 412 03ca 08BF     		it	eq
 413 03cc A242     		cmpeq	r2, r4
 414 03ce 04D3     		bcc	.L49
 415 03d0 121B     		subs	r2, r2, r4
 416 03d2 63EB0503 		sbc	r3, r3, r5
 417 03d6 41F00201 		orr	r1, r1, #2
 418              	.L49:
 419 03da 4900     		lsls	r1, r1, #1
 420 03dc 0025     		movs	r5, #0
 421 03de 41F00104 		orr	r4, r1, #1
 422 03e2 AB42     		cmp	r3, r5
 423 03e4 08BF     		it	eq
 424 03e6 A242     		cmpeq	r2, r4
 425 03e8 FFF48AAE 		bcc	.L50
 426 03ec 86E6     		b	.L55
 427              	.L57:
 428 03ee 00F14043 		add	r3, r0, #-1073741824
 429 03f2 4FF01052 		mov	r2, #603979776
 430 03f6 4FF05055 		mov	r5, #872415232
 431 03fa 4FF4C034 		mov	r4, #98304
 432 03fe 4FF0A040 		mov	r0, #1342177280
 433 0402 4FF48031 		mov	r1, #65536
 434 0406 0BE6     		b	.L3
 435              	.L58:
 436 0408 01F17043 		add	r3, r1, #-268435456
 437 040c 4FF01062 		mov	r2, #150994944
 438 0410 0821     		movs	r1, #8
 439 0412 4FF05066 		mov	r6, #218103808
 440 0416 0C25     		movs	r5, #12
 441 0418 4FF0A054 		mov	r4, #335544320
 442 041c 84E6     		b	.L20
 443              	.L52:
 444 041e 4FF0FF30 		mov	r0, #-1
 445 0422 F0BC     		pop	{r4, r5, r6, r7}
 446 0424 7047     		bx	lr
 447              		.size	_Z7isqrt64y, .-_Z7isqrt64y
 448 0426 00BF     		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
