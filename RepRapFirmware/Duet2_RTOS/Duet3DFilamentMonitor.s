ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXcJvkr.s 			page 1


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
  13              		.file	"Duet3DFilamentMonitor.cpp"
  14              		.text
  15              		.section	.text._ZN21Duet3DFilamentMonitor9InterruptEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN21Duet3DFilamentMonitor9InterruptEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN21Duet3DFilamentMonitor9InterruptEv, %function
  24              	_ZN21Duet3DFilamentMonitor9InterruptEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 164A     		ldr	r2, .L11
  28 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  29 0004 D2F89070 		ldr	r7, [r2, #144]
  30 0008 D0F81C51 		ldr	r5, [r0, #284]
  31 000c D0F81831 		ldr	r3, [r0, #280]
  32 0010 6E1C     		adds	r6, r5, #1
  33 0012 06F03F06 		and	r6, r6, #63
  34 0016 9E42     		cmp	r6, r3
  35 0018 0446     		mov	r4, r0
  36 001a 06D1     		bne	.L10
  37              	.L7:
  38 001c 0020     		movs	r0, #0
  39              	.L2:
  40 001e 0635     		adds	r5, r5, #6
  41 0020 44F82570 		str	r7, [r4, r5, lsl #2]
  42 0024 C4F81C61 		str	r6, [r4, #284]
  43              	.L4:
  44 0028 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  45              	.L10:
  46 002a 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  47 002c FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
  48 0030 05F00103 		and	r3, r5, #1
  49 0034 58B1     		cbz	r0, .L3
  50 0036 73B1     		cbz	r3, .L6
  51 0038 94F82031 		ldrb	r3, [r4, #288]	@ zero_extendqisi2
  52 003c 002B     		cmp	r3, #0
  53 003e EDD1     		bne	.L7
  54 0040 D4F81801 		ldr	r0, [r4, #280]
  55 0044 401B     		subs	r0, r0, r5
  56 0046 B0FA80F0 		clz	r0, r0
  57 004a 4009     		lsrs	r0, r0, #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXcJvkr.s 			page 2


  58 004c E7E7     		b	.L2
  59              	.L3:
  60 004e 002B     		cmp	r3, #0
  61 0050 EAD1     		bne	.L4
  62 0052 283F     		subs	r7, r7, #40
  63 0054 E3E7     		b	.L2
  64              	.L6:
  65 0056 1846     		mov	r0, r3
  66 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  67              	.L12:
  68 005a 00BF     		.align	2
  69              	.L11:
  70 005c 00000940 		.word	1074331648
  71              		.size	_ZN21Duet3DFilamentMonitor9InterruptEv, .-_ZN21Duet3DFilamentMonitor9InterruptEv
  72              		.section	.text._ZN21Duet3DFilamentMonitorC2Eji,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	_ZN21Duet3DFilamentMonitorC2Eji
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu fpv4-sp-d16
  80              		.type	_ZN21Duet3DFilamentMonitorC2Eji, %function
  81              	_ZN21Duet3DFilamentMonitorC2Eji:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84              		@ link register save eliminated.
  85 0000 30B4     		push	{r4, r5}
  86 0002 FF25     		movs	r5, #255
  87 0004 0124     		movs	r4, #1
  88 0006 0575     		strb	r5, [r0, #20]
  89 0008 084D     		ldr	r5, .L15
  90 000a C0F81C41 		str	r4, [r0, #284]
  91 000e D5F89050 		ldr	r5, [r5, #144]
  92 0012 8160     		str	r1, [r0, #8]
  93 0014 C260     		str	r2, [r0, #12]
  94 0016 0649     		ldr	r1, .L15+4
  95 0018 C0F81841 		str	r4, [r0, #280]
  96 001c 0022     		movs	r2, #0
  97 001e 8561     		str	r5, [r0, #24]
  98 0020 0160     		str	r1, [r0]
  99 0022 80F82021 		strb	r2, [r0, #288]
 100 0026 30BC     		pop	{r4, r5}
 101 0028 7047     		bx	lr
 102              	.L16:
 103 002a 00BF     		.align	2
 104              	.L15:
 105 002c 00000940 		.word	1074331648
 106 0030 08000000 		.word	.LANCHOR0+8
 107              		.size	_ZN21Duet3DFilamentMonitorC2Eji, .-_ZN21Duet3DFilamentMonitorC2Eji
 108              		.global	_ZN21Duet3DFilamentMonitorC1Eji
 109              		.thumb_set _ZN21Duet3DFilamentMonitorC1Eji,_ZN21Duet3DFilamentMonitorC2Eji
 110              		.section	.text._ZN21Duet3DFilamentMonitor17InitReceiveBufferEv,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 114              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXcJvkr.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv, %function
 119              	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122              		@ link register save eliminated.
 123 0000 0123     		movs	r3, #1
 124 0002 064A     		ldr	r2, .L18
 125 0004 C0F81C31 		str	r3, [r0, #284]
 126 0008 D2F89020 		ldr	r2, [r2, #144]
 127 000c C0F81831 		str	r3, [r0, #280]
 128 0010 0023     		movs	r3, #0
 129 0012 8261     		str	r2, [r0, #24]
 130 0014 80F82031 		strb	r3, [r0, #288]
 131 0018 7047     		bx	lr
 132              	.L19:
 133 001a 00BF     		.align	2
 134              	.L18:
 135 001c 00000940 		.word	1074331648
 136              		.size	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv, .-_ZN21Duet3DFilamentMonitor17InitReceiveBu
 137              		.section	.text._ZN21Duet3DFilamentMonitor17PollReceiveBufferERt,"ax",%progbits
 138              		.align	1
 139              		.p2align 2,,3
 140              		.global	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu fpv4-sp-d16
 145              		.type	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt, %function
 146              	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 150 0004 90F82031 		ldrb	r3, [r0, #288]	@ zero_extendqisi2
 151 0008 8C4C     		ldr	r4, .L60
 152 000a D0F81C71 		ldr	r7, [r0, #284]
 153 000e D4F89020 		ldr	r2, [r4, #144]
 154 0012 012B     		cmp	r3, #1
 155 0014 00F09A80 		beq	.L56
 156 0018 5CD3     		bcc	.L23
 157 001a 022B     		cmp	r3, #2
 158 001c 7FD1     		bne	.L21
 159              	.L24:
 160 001e D0F824C1 		ldr	ip, [r0, #292]
 161 0022 DFF818A2 		ldr	r10, .L60
 162 0026 0CEB4C09 		add	r9, ip, ip, lsl #1
 163 002a 0CEB8908 		add	r8, ip, r9, lsl #2
 164 002e 4FEA5808 		lsr	r8, r8, #1
 165              	.L25:
 166 0032 D0F82C41 		ldr	r4, [r0, #300]
 167 0036 A31D     		adds	r3, r4, #6
 168 0038 50F823E0 		ldr	lr, [r0, r3, lsl #2]
 169 003c A2EB0E02 		sub	r2, r2, lr
 170 0040 4245     		cmp	r2, r8
 171 0042 40F2F280 		bls	.L40
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXcJvkr.s 			page 4


 172 0046 0134     		adds	r4, r4, #1
 173 0048 04F03F04 		and	r4, r4, #63
 174 004c 4FEA5906 		lsr	r6, r9, #1
 175 0050 0522     		movs	r2, #5
 176 0052 0023     		movs	r3, #0
 177              	.L34:
 178 0054 D0F81C51 		ldr	r5, [r0, #284]
 179 0058 A542     		cmp	r5, r4
 180 005a 04F1060B 		add	fp, r4, #6
 181 005e 6FD0     		beq	.L31
 182 0060 50F82B50 		ldr	r5, [r0, fp, lsl #2]
 183 0064 A5EB0E05 		sub	r5, r5, lr
 184 0068 04F1010B 		add	fp, r4, #1
 185 006c B542     		cmp	r5, r6
 186 006e 0BF03F0B 		and	fp, fp, #63
 187 0072 65D2     		bcs	.L31
 188 0074 BB45     		cmp	fp, r7
 189 0076 0BF10605 		add	r5, fp, #6
 190 007a C0F82C41 		str	r4, [r0, #300]
 191 007e 62D0     		beq	.L41
 192 0080 50F82550 		ldr	r5, [r0, r5, lsl #2]
 193 0084 A5EB0E05 		sub	r5, r5, lr
 194 0088 B542     		cmp	r5, r6
 195 008a C0F0C380 		bcc	.L57
 196 008e 2546     		mov	r5, r4
 197 0090 5C46     		mov	r4, fp
 198              	.L33:
 199 0092 5B00     		lsls	r3, r3, #1
 200 0094 013A     		subs	r2, r2, #1
 201 0096 DBB2     		uxtb	r3, r3
 202 0098 05F00105 		and	r5, r5, #1
 203 009c 12F0FF02 		ands	r2, r2, #255
 204 00a0 43EA0503 		orr	r3, r3, r5
 205 00a4 6644     		add	r6, r6, ip
 206 00a6 D5D1     		bne	.L34
 207 00a8 5D10     		asrs	r5, r3, #1
 208 00aa 6B40     		eors	r3, r3, r5
 209 00ac DE07     		lsls	r6, r3, #31
 210 00ae 00F19D80 		bmi	.L35
 211 00b2 624A     		ldr	r2, .L60
 212 00b4 D0F81C31 		ldr	r3, [r0, #284]
 213 00b8 C0F81841 		str	r4, [r0, #280]
 214 00bc 0623     		movs	r3, #6
 215 00be D2F89020 		ldr	r2, [r2, #144]
 216 00c2 80F82031 		strb	r3, [r0, #288]
 217 00c6 2AE0     		b	.L21
 218              	.L58:
 219 00c8 D0F81C71 		ldr	r7, [r0, #284]
 220 00cc D4F89030 		ldr	r3, [r4, #144]
 221 00d0 C0F81821 		str	r2, [r0, #280]
 222              	.L23:
 223 00d4 D0F81831 		ldr	r3, [r0, #280]
 224 00d8 5A1C     		adds	r2, r3, #1
 225 00da BB42     		cmp	r3, r7
 226 00dc 02F03F02 		and	r2, r2, #63
 227 00e0 00F0A380 		beq	.L40
 228 00e4 DF07     		lsls	r7, r3, #31
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXcJvkr.s 			page 5


 229 00e6 EFD5     		bpl	.L58
 230 00e8 5A1E     		subs	r2, r3, #1
 231 00ea 02F03F02 		and	r2, r2, #63
 232 00ee 0632     		adds	r2, r2, #6
 233 00f0 9C1D     		adds	r4, r3, #6
 234 00f2 50F82250 		ldr	r5, [r0, r2, lsl #2]
 235 00f6 50F82420 		ldr	r2, [r0, r4, lsl #2]
 236 00fa 41F64754 		movw	r4, #7495
 237 00fe 521B     		subs	r2, r2, r5
 238 0100 A242     		cmp	r2, r4
 239 0102 6AD8     		bhi	.L28
 240 0104 4D4A     		ldr	r2, .L60
 241 0106 D0F81C11 		ldr	r1, [r0, #284]
 242 010a D2F89020 		ldr	r2, [r2, #144]
 243 010e 0133     		adds	r3, r3, #1
 244 0110 03F03F02 		and	r2, r3, #63
 245 0114 0323     		movs	r3, #3
 246 0116 C0F81821 		str	r2, [r0, #280]
 247 011a 80F82031 		strb	r3, [r0, #288]
 248              	.L21:
 249 011e 484A     		ldr	r2, .L60+4
 250 0120 D2F80821 		ldr	r2, [r2, #264]	@ unaligned
 251 0124 9204     		lsls	r2, r2, #18
 252 0126 0446     		mov	r4, r0
 253 0128 03D5     		bpl	.L37
 254 012a 1946     		mov	r1, r3
 255 012c 4548     		ldr	r0, .L60+8
 256 012e FFF7FEFF 		bl	debugPrintf
 257              	.L37:
 258 0132 0023     		movs	r3, #0
 259 0134 84F82031 		strb	r3, [r4, #288]
 260 0138 0223     		movs	r3, #2
 261              	.L26:
 262 013a 1846     		mov	r0, r3
 263 013c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 264              	.L31:
 265 0140 D0F82C51 		ldr	r5, [r0, #300]
 266 0144 A5E7     		b	.L33
 267              	.L41:
 268 0146 2546     		mov	r5, r4
 269 0148 3C46     		mov	r4, r7
 270 014a A2E7     		b	.L33
 271              	.L56:
 272 014c D0F81831 		ldr	r3, [r0, #280]
 273              	.L22:
 274 0150 FF1A     		subs	r7, r7, r3
 275 0152 9C1D     		adds	r4, r3, #6
 276 0154 07F03F07 		and	r7, r7, #63
 277 0158 012F     		cmp	r7, #1
 278 015a 50F82440 		ldr	r4, [r0, r4, lsl #2]
 279 015e 1FD9     		bls	.L29
 280 0160 0133     		adds	r3, r3, #1
 281 0162 03F03F03 		and	r3, r3, #63
 282 0166 9A1D     		adds	r2, r3, #6
 283 0168 C0F82C31 		str	r3, [r0, #300]
 284 016c 50F82220 		ldr	r2, [r0, r2, lsl #2]
 285 0170 C0F81831 		str	r3, [r0, #280]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXcJvkr.s 			page 6


 286 0174 121B     		subs	r2, r2, r4
 287 0176 A2F53473 		sub	r3, r2, #720
 288 017a B3F5F97F 		cmp	r3, #498
 289 017e C0F82421 		str	r2, [r0, #292]
 290 0182 21D8     		bhi	.L30
 291 0184 0023     		movs	r3, #0
 292 0186 2D4A     		ldr	r2, .L60
 293 0188 80F83231 		strb	r3, [r0, #306]
 294 018c D0F81C71 		ldr	r7, [r0, #284]
 295 0190 D2F89020 		ldr	r2, [r2, #144]
 296 0194 A0F83031 		strh	r3, [r0, #304]	@ movhi
 297 0198 0223     		movs	r3, #2
 298 019a 80F82031 		strb	r3, [r0, #288]
 299 019e 3EE7     		b	.L24
 300              	.L29:
 301 01a0 121B     		subs	r2, r2, r4
 302 01a2 40F2C241 		movw	r1, #1218
 303 01a6 8A42     		cmp	r2, r1
 304 01a8 3FD9     		bls	.L40
 305 01aa 244A     		ldr	r2, .L60
 306 01ac D0F81C11 		ldr	r1, [r0, #284]
 307 01b0 D2F89020 		ldr	r2, [r2, #144]
 308 01b4 0133     		adds	r3, r3, #1
 309 01b6 03F03F03 		and	r3, r3, #63
 310 01ba 0422     		movs	r2, #4
 311 01bc C0F81831 		str	r3, [r0, #280]
 312 01c0 80F82021 		strb	r2, [r0, #288]
 313 01c4 1346     		mov	r3, r2
 314 01c6 AAE7     		b	.L21
 315              	.L30:
 316 01c8 1C4B     		ldr	r3, .L60
 317 01ca D0F81C21 		ldr	r2, [r0, #284]
 318 01ce D3F89030 		ldr	r3, [r3, #144]
 319 01d2 0423     		movs	r3, #4
 320 01d4 80F82031 		strb	r3, [r0, #288]
 321 01d8 A1E7     		b	.L21
 322              	.L28:
 323 01da 184A     		ldr	r2, .L60
 324 01dc D0F81C71 		ldr	r7, [r0, #284]
 325 01e0 D2F89020 		ldr	r2, [r2, #144]
 326 01e4 0124     		movs	r4, #1
 327 01e6 80F82041 		strb	r4, [r0, #288]
 328 01ea B1E7     		b	.L22
 329              	.L35:
 330 01ec 90F83231 		ldrb	r3, [r0, #306]	@ zero_extendqisi2
 331 01f0 B0F83061 		ldrh	r6, [r0, #304]
 332 01f4 0133     		adds	r3, r3, #1
 333 01f6 DBB2     		uxtb	r3, r3
 334 01f8 45EA0615 		orr	r5, r5, r6, lsl #4
 335 01fc ADB2     		uxth	r5, r5
 336 01fe 042B     		cmp	r3, #4
 337 0200 A0F83051 		strh	r5, [r0, #304]	@ movhi
 338 0204 80F83231 		strb	r3, [r0, #306]
 339 0208 11D0     		beq	.L59
 340 020a D0F81C71 		ldr	r7, [r0, #284]
 341 020e DAF89020 		ldr	r2, [r10, #144]
 342 0212 0EE7     		b	.L25
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXcJvkr.s 			page 7


 343              	.L57:
 344 0214 094A     		ldr	r2, .L60
 345 0216 D0F81C31 		ldr	r3, [r0, #284]
 346 021a C0F818B1 		str	fp, [r0, #280]
 347 021e 0523     		movs	r3, #5
 348 0220 D2F89020 		ldr	r2, [r2, #144]
 349 0224 80F82031 		strb	r3, [r0, #288]
 350 0228 79E7     		b	.L21
 351              	.L40:
 352 022a 0023     		movs	r3, #0
 353 022c 85E7     		b	.L26
 354              	.L59:
 355 022e C0F81841 		str	r4, [r0, #280]
 356 0232 0123     		movs	r3, #1
 357 0234 0D80     		strh	r5, [r1]	@ movhi
 358 0236 80F82021 		strb	r2, [r0, #288]
 359 023a 7EE7     		b	.L26
 360              	.L61:
 361              		.align	2
 362              	.L60:
 363 023c 00000940 		.word	1074331648
 364 0240 00000000 		.word	reprap
 365 0244 00000000 		.word	.LC0
 366              		.size	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt, .-_ZN21Duet3DFilamentMonitor17PollReceiveB
 367              		.section	.text._ZNK21Duet3DFilamentMonitor11IsReceivingEv,"ax",%progbits
 368              		.align	1
 369              		.p2align 2,,3
 370              		.global	_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu fpv4-sp-d16
 375              		.type	_ZNK21Duet3DFilamentMonitor11IsReceivingEv, %function
 376              	_ZNK21Duet3DFilamentMonitor11IsReceivingEv:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379              		@ link register save eliminated.
 380 0000 90F82001 		ldrb	r0, [r0, #288]	@ zero_extendqisi2
 381 0004 0138     		subs	r0, r0, #1
 382 0006 0128     		cmp	r0, #1
 383 0008 8CBF     		ite	hi
 384 000a 0020     		movhi	r0, #0
 385 000c 0120     		movls	r0, #1
 386 000e 7047     		bx	lr
 387              		.size	_ZNK21Duet3DFilamentMonitor11IsReceivingEv, .-_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 388              		.section	.text._ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv,"ax",%progbits
 389              		.align	1
 390              		.p2align 2,,3
 391              		.global	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv
 392              		.syntax unified
 393              		.thumb
 394              		.thumb_func
 395              		.fpu fpv4-sp-d16
 396              		.type	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv, %function
 397              	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv:
 398              		@ args = 0, pretend = 0, frame = 0
 399              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXcJvkr.s 			page 8


 400              		@ link register save eliminated.
 401 0000 90F82001 		ldrb	r0, [r0, #288]	@ zero_extendqisi2
 402 0004 B0FA80F0 		clz	r0, r0
 403 0008 4009     		lsrs	r0, r0, #5
 404 000a 7047     		bx	lr
 405              		.size	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv, .-_ZNK21Duet3DFilamentMonitor20IsWaitin
 406              		.global	_ZTV21Duet3DFilamentMonitor
 407              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 408              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 409              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 410              	_ZL28cpu_irq_prev_interrupt_state:
 411 0000 00       		.space	1
 412              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 413              		.align	2
 414              		.type	_ZL32cpu_irq_critical_section_counter, %object
 415              		.size	_ZL32cpu_irq_critical_section_counter, 4
 416              	_ZL32cpu_irq_critical_section_counter:
 417 0000 00000000 		.space	4
 418              		.section	.rodata._ZN21Duet3DFilamentMonitor17PollReceiveBufferERt.str1.4,"aMS",%progbits,1
 419              		.align	2
 420              	.LC0:
 421 0000 46696C20 		.ascii	"Fil err %u\012\000"
 421      65727220 
 421      25750A00 
 422              		.section	.rodata._ZTV21Duet3DFilamentMonitor,"a",%progbits
 423              		.align	2
 424              		.set	.LANCHOR0,. + 0
 425              		.type	_ZTV21Duet3DFilamentMonitor, %object
 426              		.size	_ZTV21Duet3DFilamentMonitor, 40
 427              	_ZTV21Duet3DFilamentMonitor:
 428 0000 00000000 		.word	0
 429 0004 00000000 		.word	0
 430 0008 00000000 		.word	__cxa_pure_virtual
 431 000c 00000000 		.word	__cxa_pure_virtual
 432 0010 00000000 		.word	__cxa_pure_virtual
 433 0014 00000000 		.word	__cxa_pure_virtual
 434 0018 00000000 		.word	_ZN21Duet3DFilamentMonitor9InterruptEv
 435 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 436 0020 00000000 		.word	0
 437 0024 00000000 		.word	0
 438              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
