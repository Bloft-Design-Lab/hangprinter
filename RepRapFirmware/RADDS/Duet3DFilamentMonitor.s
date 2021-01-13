ARM GAS  /tmp/ccCTF4b2.s 			page 1


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
  11              		.file	"Duet3DFilamentMonitor.cpp"
  12              		.section	.text._ZN21Duet3DFilamentMonitor9InterruptEv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN21Duet3DFilamentMonitor9InterruptEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN21Duet3DFilamentMonitor9InterruptEv, %function
  21              	_ZN21Duet3DFilamentMonitor9InterruptEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 144A     		ldr	r2, .L10
  25 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  26 0004 1769     		ldr	r7, [r2, #16]
  27 0006 D0F81C51 		ldr	r5, [r0, #284]
  28 000a D0F81831 		ldr	r3, [r0, #280]
  29 000e 6E1C     		adds	r6, r5, #1
  30 0010 06F03F06 		and	r6, r6, #63
  31 0014 9E42     		cmp	r6, r3
  32 0016 0446     		mov	r4, r0
  33 0018 10D0     		beq	.L7
  34 001a 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  35 001c FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
  36 0020 98B1     		cbz	r0, .L3
  37 0022 15F00100 		ands	r0, r5, #1
  38 0026 0FD0     		beq	.L4
  39 0028 94F82031 		ldrb	r3, [r4, #288]	@ zero_extendqisi2
  40 002c 33B9     		cbnz	r3, .L7
  41 002e D4F81801 		ldr	r0, [r4, #280]
  42 0032 401B     		subs	r0, r0, r5
  43 0034 B0FA80F0 		clz	r0, r0
  44 0038 4009     		lsrs	r0, r0, #5
  45 003a 00E0     		b	.L2
  46              	.L7:
  47 003c 0020     		movs	r0, #0
  48              	.L2:
  49 003e 0635     		adds	r5, r5, #6
  50 0040 44F82570 		str	r7, [r4, r5, lsl #2]
  51 0044 C4F81C61 		str	r6, [r4, #284]
  52              	.L4:
  53 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  54              	.L3:
  55 004a EB07     		lsls	r3, r5, #31
  56 004c FCD4     		bmi	.L4
  57 004e 283F     		subs	r7, r7, #40
ARM GAS  /tmp/ccCTF4b2.s 			page 2


  58 0050 F5E7     		b	.L2
  59              	.L11:
  60 0052 00BF     		.align	2
  61              	.L10:
  62 0054 00400840 		.word	1074282496
  63              		.size	_ZN21Duet3DFilamentMonitor9InterruptEv, .-_ZN21Duet3DFilamentMonitor9InterruptEv
  64              		.section	.text._ZN21Duet3DFilamentMonitorC2Eji,"ax",%progbits
  65              		.align	1
  66              		.p2align 2,,3
  67              		.global	_ZN21Duet3DFilamentMonitorC2Eji
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu softvfp
  72              		.type	_ZN21Duet3DFilamentMonitorC2Eji, %function
  73              	_ZN21Duet3DFilamentMonitorC2Eji:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76              		@ link register save eliminated.
  77 0000 F0B4     		push	{r4, r5, r6, r7}
  78 0002 0124     		movs	r4, #1
  79 0004 FF27     		movs	r7, #255
  80 0006 0025     		movs	r5, #0
  81 0008 074E     		ldr	r6, .L14
  82 000a 0775     		strb	r7, [r0, #20]
  83 000c C0F81C41 		str	r4, [r0, #284]
  84 0010 3669     		ldr	r6, [r6, #16]
  85 0012 064F     		ldr	r7, .L14+4
  86 0014 C0F81841 		str	r4, [r0, #280]
  87 0018 0760     		str	r7, [r0]
  88 001a 8661     		str	r6, [r0, #24]
  89 001c 80F82051 		strb	r5, [r0, #288]
  90 0020 8160     		str	r1, [r0, #8]
  91 0022 C260     		str	r2, [r0, #12]
  92 0024 F0BC     		pop	{r4, r5, r6, r7}
  93 0026 7047     		bx	lr
  94              	.L15:
  95              		.align	2
  96              	.L14:
  97 0028 00400840 		.word	1074282496
  98 002c 08000000 		.word	.LANCHOR0+8
  99              		.size	_ZN21Duet3DFilamentMonitorC2Eji, .-_ZN21Duet3DFilamentMonitorC2Eji
 100              		.global	_ZN21Duet3DFilamentMonitorC1Eji
 101              		.thumb_set _ZN21Duet3DFilamentMonitorC1Eji,_ZN21Duet3DFilamentMonitorC2Eji
 102              		.section	.text._ZN21Duet3DFilamentMonitor17InitReceiveBufferEv,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu softvfp
 110              		.type	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv, %function
 111              	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  /tmp/ccCTF4b2.s 			page 3


 115 0000 0123     		movs	r3, #1
 116 0002 0022     		movs	r2, #0
 117 0004 0449     		ldr	r1, .L17
 118 0006 C0F81C31 		str	r3, [r0, #284]
 119 000a 0969     		ldr	r1, [r1, #16]
 120 000c C0F81831 		str	r3, [r0, #280]
 121 0010 8161     		str	r1, [r0, #24]
 122 0012 80F82021 		strb	r2, [r0, #288]
 123 0016 7047     		bx	lr
 124              	.L18:
 125              		.align	2
 126              	.L17:
 127 0018 00400840 		.word	1074282496
 128              		.size	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv, .-_ZN21Duet3DFilamentMonitor17InitReceiveBu
 129              		.section	.text._ZN21Duet3DFilamentMonitor17PollReceiveBufferERt,"ax",%progbits
 130              		.align	1
 131              		.p2align 2,,3
 132              		.global	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt
 133              		.syntax unified
 134              		.thumb
 135              		.thumb_func
 136              		.fpu softvfp
 137              		.type	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt, %function
 138              	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 142 0004 90F82031 		ldrb	r3, [r0, #288]	@ zero_extendqisi2
 143 0008 854A     		ldr	r2, .L68
 144 000a 012B     		cmp	r3, #1
 145 000c 8A46     		mov	r10, r1
 146 000e D0F81C11 		ldr	r1, [r0, #284]
 147 0012 1469     		ldr	r4, [r2, #16]
 148 0014 00F0D380 		beq	.L61
 149 0018 11D3     		bcc	.L22
 150 001a 022B     		cmp	r3, #2
 151 001c 69D0     		beq	.L23
 152              	.L20:
 153 001e 814A     		ldr	r2, .L68+4
 154 0020 0446     		mov	r4, r0
 155 0022 526C     		ldr	r2, [r2, #68]	@ unaligned
 156 0024 9204     		lsls	r2, r2, #18
 157 0026 03D5     		bpl	.L37
 158 0028 1946     		mov	r1, r3
 159 002a 7F48     		ldr	r0, .L68+8
 160 002c FFF7FEFF 		bl	debugPrintf
 161              	.L37:
 162 0030 0022     		movs	r2, #0
 163 0032 0223     		movs	r3, #2
 164 0034 84F82021 		strb	r2, [r4, #288]
 165              	.L55:
 166 0038 1846     		mov	r0, r3
 167 003a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 168              	.L22:
 169 003e 1446     		mov	r4, r2
 170              	.L24:
 171 0040 D0F81831 		ldr	r3, [r0, #280]
ARM GAS  /tmp/ccCTF4b2.s 			page 4


 172 0044 5A1C     		adds	r2, r3, #1
 173 0046 8B42     		cmp	r3, r1
 174 0048 02F03F02 		and	r2, r2, #63
 175 004c 00F0D280 		beq	.L43
 176 0050 D907     		lsls	r1, r3, #31
 177 0052 1AD5     		bpl	.L62
 178 0054 5A1E     		subs	r2, r3, #1
 179 0056 02F03F02 		and	r2, r2, #63
 180 005a 0632     		adds	r2, r2, #6
 181 005c 991D     		adds	r1, r3, #6
 182 005e 50F82240 		ldr	r4, [r0, r2, lsl #2]
 183 0062 50F82120 		ldr	r2, [r0, r1, lsl #2]
 184 0066 121B     		subs	r2, r2, r4
 185 0068 B2F5A45F 		cmp	r2, #5248
 186 006c 13D2     		bcs	.L28
 187 006e 0321     		movs	r1, #3
 188              	.L58:
 189 0070 5A1C     		adds	r2, r3, #1
 190 0072 6B4C     		ldr	r4, .L68
 191 0074 02F03F02 		and	r2, r2, #63
 192 0078 D0F81C31 		ldr	r3, [r0, #284]
 193 007c C0F81821 		str	r2, [r0, #280]
 194 0080 80F82011 		strb	r1, [r0, #288]
 195 0084 0B46     		mov	r3, r1
 196 0086 2269     		ldr	r2, [r4, #16]
 197 0088 C9E7     		b	.L20
 198              	.L62:
 199 008a D0F81C11 		ldr	r1, [r0, #284]
 200 008e C0F81821 		str	r2, [r0, #280]
 201 0092 2369     		ldr	r3, [r4, #16]
 202 0094 D4E7     		b	.L24
 203              	.L28:
 204 0096 0122     		movs	r2, #1
 205 0098 D0F81C11 		ldr	r1, [r0, #284]
 206 009c 604C     		ldr	r4, .L68
 207 009e C91A     		subs	r1, r1, r3
 208 00a0 01F03F01 		and	r1, r1, #63
 209 00a4 0129     		cmp	r1, #1
 210 00a6 2469     		ldr	r4, [r4, #16]
 211 00a8 80F82021 		strb	r2, [r0, #288]
 212 00ac 40F28F80 		bls	.L29
 213              	.L67:
 214 00b0 5A1C     		adds	r2, r3, #1
 215 00b2 02F03F02 		and	r2, r2, #63
 216 00b6 0633     		adds	r3, r3, #6
 217 00b8 941D     		adds	r4, r2, #6
 218 00ba 50F82310 		ldr	r1, [r0, r3, lsl #2]
 219 00be 50F82430 		ldr	r3, [r0, r4, lsl #2]
 220 00c2 C0F82C21 		str	r2, [r0, #300]
 221 00c6 5B1A     		subs	r3, r3, r1
 222 00c8 A3F5FC71 		sub	r1, r3, #504
 223 00cc B1F5AE7F 		cmp	r1, #348
 224 00d0 C0F82431 		str	r3, [r0, #292]
 225 00d4 C0F81821 		str	r2, [r0, #280]
 226 00d8 66D8     		bhi	.L30
 227 00da 0023     		movs	r3, #0
 228 00dc 0224     		movs	r4, #2
ARM GAS  /tmp/ccCTF4b2.s 			page 5


 229 00de 504A     		ldr	r2, .L68
 230 00e0 80F83231 		strb	r3, [r0, #306]
 231 00e4 D0F81C11 		ldr	r1, [r0, #284]
 232 00e8 80F82041 		strb	r4, [r0, #288]
 233 00ec 1469     		ldr	r4, [r2, #16]
 234 00ee A0F83031 		strh	r3, [r0, #304]	@ movhi
 235              	.L23:
 236 00f2 D0F824C1 		ldr	ip, [r0, #292]
 237 00f6 DFF828B1 		ldr	fp, .L68
 238 00fa 0CEB4C09 		add	r9, ip, ip, lsl #1
 239 00fe 0CEB8908 		add	r8, ip, r9, lsl #2
 240 0102 4FEA5808 		lsr	r8, r8, #1
 241              	.L25:
 242 0106 D0F82C21 		ldr	r2, [r0, #300]
 243 010a 931D     		adds	r3, r2, #6
 244 010c 50F823E0 		ldr	lr, [r0, r3, lsl #2]
 245 0110 A4EB0E04 		sub	r4, r4, lr
 246 0114 4445     		cmp	r4, r8
 247 0116 6DD9     		bls	.L43
 248 0118 0132     		adds	r2, r2, #1
 249 011a 0527     		movs	r7, #5
 250 011c 0023     		movs	r3, #0
 251 011e 02F03F02 		and	r2, r2, #63
 252 0122 4FEA5906 		lsr	r6, r9, #1
 253 0126 16E0     		b	.L35
 254              	.L32:
 255 0128 8C42     		cmp	r4, r1
 256 012a 04F10605 		add	r5, r4, #6
 257 012e C0F82C21 		str	r2, [r0, #300]
 258 0132 41D0     		beq	.L63
 259 0134 50F82550 		ldr	r5, [r0, r5, lsl #2]
 260 0138 A5EB0E05 		sub	r5, r5, lr
 261 013c B542     		cmp	r5, r6
 262 013e 5DD3     		bcc	.L64
 263 0140 1546     		mov	r5, r2
 264 0142 2246     		mov	r2, r4
 265              	.L33:
 266 0144 5B00     		lsls	r3, r3, #1
 267 0146 DBB2     		uxtb	r3, r3
 268 0148 05F00105 		and	r5, r5, #1
 269 014c 013F     		subs	r7, r7, #1
 270 014e 43EA0503 		orr	r3, r3, r5
 271 0152 6644     		add	r6, r6, ip
 272 0154 10D0     		beq	.L65
 273              	.L35:
 274 0156 D0F81C41 		ldr	r4, [r0, #284]
 275 015a 951D     		adds	r5, r2, #6
 276 015c 9442     		cmp	r4, r2
 277 015e 08D0     		beq	.L31
 278 0160 50F82550 		ldr	r5, [r0, r5, lsl #2]
 279 0164 541C     		adds	r4, r2, #1
 280 0166 A5EB0E05 		sub	r5, r5, lr
 281 016a B542     		cmp	r5, r6
 282 016c 04F03F04 		and	r4, r4, #63
 283 0170 DAD3     		bcc	.L32
 284              	.L31:
 285 0172 D0F82C51 		ldr	r5, [r0, #300]
ARM GAS  /tmp/ccCTF4b2.s 			page 6


 286 0176 E5E7     		b	.L33
 287              	.L65:
 288 0178 5910     		asrs	r1, r3, #1
 289 017a 4B40     		eors	r3, r3, r1
 290 017c DB07     		lsls	r3, r3, #31
 291 017e 2FD5     		bpl	.L39
 292 0180 90F83231 		ldrb	r3, [r0, #306]	@ zero_extendqisi2
 293 0184 B0F83041 		ldrh	r4, [r0, #304]
 294 0188 0133     		adds	r3, r3, #1
 295 018a DBB2     		uxtb	r3, r3
 296 018c 41EA0411 		orr	r1, r1, r4, lsl #4
 297 0190 89B2     		uxth	r1, r1
 298 0192 042B     		cmp	r3, #4
 299 0194 A0F83011 		strh	r1, [r0, #304]	@ movhi
 300 0198 80F83231 		strb	r3, [r0, #306]
 301 019c 38D0     		beq	.L66
 302 019e D0F81C11 		ldr	r1, [r0, #284]
 303 01a2 DBF81040 		ldr	r4, [fp, #16]
 304 01a6 AEE7     		b	.L25
 305              	.L30:
 306 01a8 0423     		movs	r3, #4
 307 01aa 1D4A     		ldr	r2, .L68
 308 01ac D0F81C11 		ldr	r1, [r0, #284]
 309 01b0 80F82031 		strb	r3, [r0, #288]
 310 01b4 1269     		ldr	r2, [r2, #16]
 311 01b6 32E7     		b	.L20
 312              	.L63:
 313 01b8 1546     		mov	r5, r2
 314 01ba 0A46     		mov	r2, r1
 315 01bc C2E7     		b	.L33
 316              	.L61:
 317 01be D0F81831 		ldr	r3, [r0, #280]
 318 01c2 C91A     		subs	r1, r1, r3
 319 01c4 01F03F01 		and	r1, r1, #63
 320 01c8 0129     		cmp	r1, #1
 321 01ca 3FF671AF 		bhi	.L67
 322              	.L29:
 323 01ce 9A1D     		adds	r2, r3, #6
 324 01d0 50F82220 		ldr	r2, [r0, r2, lsl #2]
 325 01d4 A41A     		subs	r4, r4, r2
 326 01d6 B4F5557F 		cmp	r4, #852
 327 01da 0BD9     		bls	.L43
 328 01dc 0421     		movs	r1, #4
 329 01de 47E7     		b	.L58
 330              	.L39:
 331 01e0 0623     		movs	r3, #6
 332 01e2 0F49     		ldr	r1, .L68
 333 01e4 D0F81C41 		ldr	r4, [r0, #284]
 334 01e8 C0F81821 		str	r2, [r0, #280]
 335 01ec 80F82031 		strb	r3, [r0, #288]
 336 01f0 0A69     		ldr	r2, [r1, #16]
 337 01f2 14E7     		b	.L20
 338              	.L43:
 339 01f4 0023     		movs	r3, #0
 340 01f6 1846     		mov	r0, r3
 341 01f8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 342              	.L64:
ARM GAS  /tmp/ccCTF4b2.s 			page 7


 343 01fc 0523     		movs	r3, #5
 344 01fe 084A     		ldr	r2, .L68
 345 0200 D0F81C11 		ldr	r1, [r0, #284]
 346 0204 C0F81841 		str	r4, [r0, #280]
 347 0208 80F82031 		strb	r3, [r0, #288]
 348 020c 1269     		ldr	r2, [r2, #16]
 349 020e 06E7     		b	.L20
 350              	.L66:
 351 0210 C0F81821 		str	r2, [r0, #280]
 352 0214 0123     		movs	r3, #1
 353 0216 AAF80010 		strh	r1, [r10]	@ movhi
 354 021a 80F82071 		strb	r7, [r0, #288]
 355 021e 0BE7     		b	.L55
 356              	.L69:
 357              		.align	2
 358              	.L68:
 359 0220 00400840 		.word	1074282496
 360 0224 00000000 		.word	reprap
 361 0228 00000000 		.word	.LC0
 362              		.size	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt, .-_ZN21Duet3DFilamentMonitor17PollReceiveB
 363              		.section	.text._ZNK21Duet3DFilamentMonitor11IsReceivingEv,"ax",%progbits
 364              		.align	1
 365              		.p2align 2,,3
 366              		.global	_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 367              		.syntax unified
 368              		.thumb
 369              		.thumb_func
 370              		.fpu softvfp
 371              		.type	_ZNK21Duet3DFilamentMonitor11IsReceivingEv, %function
 372              	_ZNK21Duet3DFilamentMonitor11IsReceivingEv:
 373              		@ args = 0, pretend = 0, frame = 0
 374              		@ frame_needed = 0, uses_anonymous_args = 0
 375              		@ link register save eliminated.
 376 0000 90F82001 		ldrb	r0, [r0, #288]	@ zero_extendqisi2
 377 0004 0138     		subs	r0, r0, #1
 378 0006 0128     		cmp	r0, #1
 379 0008 8CBF     		ite	hi
 380 000a 0020     		movhi	r0, #0
 381 000c 0120     		movls	r0, #1
 382 000e 7047     		bx	lr
 383              		.size	_ZNK21Duet3DFilamentMonitor11IsReceivingEv, .-_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 384              		.section	.text._ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv,"ax",%progbits
 385              		.align	1
 386              		.p2align 2,,3
 387              		.global	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv
 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu softvfp
 392              		.type	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv, %function
 393              	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv:
 394              		@ args = 0, pretend = 0, frame = 0
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396              		@ link register save eliminated.
 397 0000 90F82001 		ldrb	r0, [r0, #288]	@ zero_extendqisi2
 398 0004 B0FA80F0 		clz	r0, r0
 399 0008 4009     		lsrs	r0, r0, #5
ARM GAS  /tmp/ccCTF4b2.s 			page 8


 400 000a 7047     		bx	lr
 401              		.size	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv, .-_ZNK21Duet3DFilamentMonitor20IsWaitin
 402              		.global	_ZTV21Duet3DFilamentMonitor
 403              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 404              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 405              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 406              	_ZL28cpu_irq_prev_interrupt_state:
 407 0000 00       		.space	1
 408              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 409              		.align	2
 410              		.type	_ZL32cpu_irq_critical_section_counter, %object
 411              		.size	_ZL32cpu_irq_critical_section_counter, 4
 412              	_ZL32cpu_irq_critical_section_counter:
 413 0000 00000000 		.space	4
 414              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 415              		.align	2
 416              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 417              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 418              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 419 0000 00000000 		.space	4
 420              		.section	.rodata._ZN21Duet3DFilamentMonitor17PollReceiveBufferERt.str1.4,"aMS",%progbits,1
 421              		.align	2
 422              	.LC0:
 423 0000 46696C20 		.ascii	"Fil err %u\012\000"
 423      65727220 
 423      25750A00 
 424              		.section	.rodata._ZTV21Duet3DFilamentMonitor,"a",%progbits
 425              		.align	2
 426              		.set	.LANCHOR0,. + 0
 427              		.type	_ZTV21Duet3DFilamentMonitor, %object
 428              		.size	_ZTV21Duet3DFilamentMonitor, 40
 429              	_ZTV21Duet3DFilamentMonitor:
 430 0000 00000000 		.word	0
 431 0004 00000000 		.word	0
 432 0008 00000000 		.word	__cxa_pure_virtual
 433 000c 00000000 		.word	__cxa_pure_virtual
 434 0010 00000000 		.word	__cxa_pure_virtual
 435 0014 00000000 		.word	__cxa_pure_virtual
 436 0018 00000000 		.word	_ZN21Duet3DFilamentMonitor9InterruptEv
 437 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 438 0020 00000000 		.word	0
 439 0024 00000000 		.word	0
 440              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
