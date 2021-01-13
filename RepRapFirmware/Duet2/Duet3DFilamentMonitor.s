ARM GAS  /tmp/cctX0lXT.s 			page 1


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
  14              		.section	.text._ZN21Duet3DFilamentMonitor9InterruptEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN21Duet3DFilamentMonitor9InterruptEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN21Duet3DFilamentMonitor9InterruptEv, %function
  23              	_ZN21Duet3DFilamentMonitor9InterruptEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 164A     		ldr	r2, .L11
  27 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  28 0004 D2F89070 		ldr	r7, [r2, #144]
  29 0008 D0F81C51 		ldr	r5, [r0, #284]
  30 000c D0F81831 		ldr	r3, [r0, #280]
  31 0010 6E1C     		adds	r6, r5, #1
  32 0012 06F03F06 		and	r6, r6, #63
  33 0016 9E42     		cmp	r6, r3
  34 0018 0446     		mov	r4, r0
  35 001a 06D1     		bne	.L10
  36              	.L7:
  37 001c 0020     		movs	r0, #0
  38              	.L2:
  39 001e 0635     		adds	r5, r5, #6
  40 0020 44F82570 		str	r7, [r4, r5, lsl #2]
  41 0024 C4F81C61 		str	r6, [r4, #284]
  42              	.L4:
  43 0028 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  44              	.L10:
  45 002a 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  46 002c FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
  47 0030 05F00103 		and	r3, r5, #1
  48 0034 58B1     		cbz	r0, .L3
  49 0036 73B1     		cbz	r3, .L6
  50 0038 94F82031 		ldrb	r3, [r4, #288]	@ zero_extendqisi2
  51 003c 002B     		cmp	r3, #0
  52 003e EDD1     		bne	.L7
  53 0040 D4F81801 		ldr	r0, [r4, #280]
  54 0044 401B     		subs	r0, r0, r5
  55 0046 B0FA80F0 		clz	r0, r0
  56 004a 4009     		lsrs	r0, r0, #5
  57 004c E7E7     		b	.L2
ARM GAS  /tmp/cctX0lXT.s 			page 2


  58              	.L3:
  59 004e 002B     		cmp	r3, #0
  60 0050 EAD1     		bne	.L4
  61 0052 283F     		subs	r7, r7, #40
  62 0054 E3E7     		b	.L2
  63              	.L6:
  64 0056 1846     		mov	r0, r3
  65 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  66              	.L12:
  67 005a 00BF     		.align	2
  68              	.L11:
  69 005c 00000940 		.word	1074331648
  70              		.size	_ZN21Duet3DFilamentMonitor9InterruptEv, .-_ZN21Duet3DFilamentMonitor9InterruptEv
  71              		.section	.text._ZN21Duet3DFilamentMonitorC2Eji,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	_ZN21Duet3DFilamentMonitorC2Eji
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	_ZN21Duet3DFilamentMonitorC2Eji, %function
  80              	_ZN21Duet3DFilamentMonitorC2Eji:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 30B4     		push	{r4, r5}
  85 0002 FF25     		movs	r5, #255
  86 0004 0124     		movs	r4, #1
  87 0006 0575     		strb	r5, [r0, #20]
  88 0008 084D     		ldr	r5, .L15
  89 000a C0F81C41 		str	r4, [r0, #284]
  90 000e D5F89050 		ldr	r5, [r5, #144]
  91 0012 8160     		str	r1, [r0, #8]
  92 0014 C260     		str	r2, [r0, #12]
  93 0016 0649     		ldr	r1, .L15+4
  94 0018 C0F81841 		str	r4, [r0, #280]
  95 001c 0022     		movs	r2, #0
  96 001e 8561     		str	r5, [r0, #24]
  97 0020 0160     		str	r1, [r0]
  98 0022 80F82021 		strb	r2, [r0, #288]
  99 0026 30BC     		pop	{r4, r5}
 100 0028 7047     		bx	lr
 101              	.L16:
 102 002a 00BF     		.align	2
 103              	.L15:
 104 002c 00000940 		.word	1074331648
 105 0030 08000000 		.word	.LANCHOR0+8
 106              		.size	_ZN21Duet3DFilamentMonitorC2Eji, .-_ZN21Duet3DFilamentMonitorC2Eji
 107              		.global	_ZN21Duet3DFilamentMonitorC1Eji
 108              		.thumb_set _ZN21Duet3DFilamentMonitorC1Eji,_ZN21Duet3DFilamentMonitorC2Eji
 109              		.section	.text._ZN21Duet3DFilamentMonitor17InitReceiveBufferEv,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 113              		.syntax unified
 114              		.thumb
ARM GAS  /tmp/cctX0lXT.s 			page 3


 115              		.thumb_func
 116              		.fpu fpv4-sp-d16
 117              		.type	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv, %function
 118              	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv:
 119              		@ args = 0, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121              		@ link register save eliminated.
 122 0000 0123     		movs	r3, #1
 123 0002 064A     		ldr	r2, .L18
 124 0004 C0F81C31 		str	r3, [r0, #284]
 125 0008 D2F89020 		ldr	r2, [r2, #144]
 126 000c C0F81831 		str	r3, [r0, #280]
 127 0010 0023     		movs	r3, #0
 128 0012 8261     		str	r2, [r0, #24]
 129 0014 80F82031 		strb	r3, [r0, #288]
 130 0018 7047     		bx	lr
 131              	.L19:
 132 001a 00BF     		.align	2
 133              	.L18:
 134 001c 00000940 		.word	1074331648
 135              		.size	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv, .-_ZN21Duet3DFilamentMonitor17InitReceiveBu
 136              		.section	.text._ZN21Duet3DFilamentMonitor17PollReceiveBufferERt,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu fpv4-sp-d16
 144              		.type	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt, %function
 145              	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt:
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 149 0004 90F82031 		ldrb	r3, [r0, #288]	@ zero_extendqisi2
 150 0008 8C4C     		ldr	r4, .L60
 151 000a D0F81C71 		ldr	r7, [r0, #284]
 152 000e D4F89020 		ldr	r2, [r4, #144]
 153 0012 012B     		cmp	r3, #1
 154 0014 00F09980 		beq	.L56
 155 0018 5CD3     		bcc	.L23
 156 001a 022B     		cmp	r3, #2
 157 001c 7FD1     		bne	.L21
 158              	.L24:
 159 001e D0F824C1 		ldr	ip, [r0, #292]
 160 0022 DFF818A2 		ldr	r10, .L60
 161 0026 0CEB4C09 		add	r9, ip, ip, lsl #1
 162 002a 0CEB8908 		add	r8, ip, r9, lsl #2
 163 002e 4FEA5808 		lsr	r8, r8, #1
 164              	.L25:
 165 0032 D0F82C41 		ldr	r4, [r0, #300]
 166 0036 A31D     		adds	r3, r4, #6
 167 0038 50F823E0 		ldr	lr, [r0, r3, lsl #2]
 168 003c A2EB0E02 		sub	r2, r2, lr
 169 0040 4245     		cmp	r2, r8
 170 0042 40F2F180 		bls	.L40
 171 0046 0134     		adds	r4, r4, #1
ARM GAS  /tmp/cctX0lXT.s 			page 4


 172 0048 04F03F04 		and	r4, r4, #63
 173 004c 4FEA5906 		lsr	r6, r9, #1
 174 0050 0522     		movs	r2, #5
 175 0052 0023     		movs	r3, #0
 176              	.L34:
 177 0054 D0F81C51 		ldr	r5, [r0, #284]
 178 0058 A542     		cmp	r5, r4
 179 005a 04F1060B 		add	fp, r4, #6
 180 005e 6ED0     		beq	.L31
 181 0060 50F82B50 		ldr	r5, [r0, fp, lsl #2]
 182 0064 A5EB0E05 		sub	r5, r5, lr
 183 0068 04F1010B 		add	fp, r4, #1
 184 006c B542     		cmp	r5, r6
 185 006e 0BF03F0B 		and	fp, fp, #63
 186 0072 64D2     		bcs	.L31
 187 0074 BB45     		cmp	fp, r7
 188 0076 0BF10605 		add	r5, fp, #6
 189 007a C0F82C41 		str	r4, [r0, #300]
 190 007e 61D0     		beq	.L41
 191 0080 50F82550 		ldr	r5, [r0, r5, lsl #2]
 192 0084 A5EB0E05 		sub	r5, r5, lr
 193 0088 B542     		cmp	r5, r6
 194 008a C0F0C280 		bcc	.L57
 195 008e 2546     		mov	r5, r4
 196 0090 5C46     		mov	r4, fp
 197              	.L33:
 198 0092 5B00     		lsls	r3, r3, #1
 199 0094 013A     		subs	r2, r2, #1
 200 0096 DBB2     		uxtb	r3, r3
 201 0098 05F00105 		and	r5, r5, #1
 202 009c 12F0FF02 		ands	r2, r2, #255
 203 00a0 43EA0503 		orr	r3, r3, r5
 204 00a4 6644     		add	r6, r6, ip
 205 00a6 D5D1     		bne	.L34
 206 00a8 5D10     		asrs	r5, r3, #1
 207 00aa 6B40     		eors	r3, r3, r5
 208 00ac DE07     		lsls	r6, r3, #31
 209 00ae 00F19C80 		bmi	.L35
 210 00b2 624A     		ldr	r2, .L60
 211 00b4 D0F81C31 		ldr	r3, [r0, #284]
 212 00b8 C0F81841 		str	r4, [r0, #280]
 213 00bc 0623     		movs	r3, #6
 214 00be D2F89020 		ldr	r2, [r2, #144]
 215 00c2 80F82031 		strb	r3, [r0, #288]
 216 00c6 2AE0     		b	.L21
 217              	.L58:
 218 00c8 D0F81C71 		ldr	r7, [r0, #284]
 219 00cc D4F89030 		ldr	r3, [r4, #144]
 220 00d0 C0F81821 		str	r2, [r0, #280]
 221              	.L23:
 222 00d4 D0F81831 		ldr	r3, [r0, #280]
 223 00d8 5A1C     		adds	r2, r3, #1
 224 00da BB42     		cmp	r3, r7
 225 00dc 02F03F02 		and	r2, r2, #63
 226 00e0 00F0A280 		beq	.L40
 227 00e4 DF07     		lsls	r7, r3, #31
 228 00e6 EFD5     		bpl	.L58
ARM GAS  /tmp/cctX0lXT.s 			page 5


 229 00e8 5A1E     		subs	r2, r3, #1
 230 00ea 02F03F02 		and	r2, r2, #63
 231 00ee 0632     		adds	r2, r2, #6
 232 00f0 9C1D     		adds	r4, r3, #6
 233 00f2 50F82250 		ldr	r5, [r0, r2, lsl #2]
 234 00f6 50F82420 		ldr	r2, [r0, r4, lsl #2]
 235 00fa 41F64754 		movw	r4, #7495
 236 00fe 521B     		subs	r2, r2, r5
 237 0100 A242     		cmp	r2, r4
 238 0102 69D8     		bhi	.L28
 239 0104 4D4A     		ldr	r2, .L60
 240 0106 D0F81C11 		ldr	r1, [r0, #284]
 241 010a D2F89020 		ldr	r2, [r2, #144]
 242 010e 0133     		adds	r3, r3, #1
 243 0110 03F03F02 		and	r2, r3, #63
 244 0114 0323     		movs	r3, #3
 245 0116 C0F81821 		str	r2, [r0, #280]
 246 011a 80F82031 		strb	r3, [r0, #288]
 247              	.L21:
 248 011e 484A     		ldr	r2, .L60+4
 249 0120 926C     		ldr	r2, [r2, #72]	@ unaligned
 250 0122 9204     		lsls	r2, r2, #18
 251 0124 0446     		mov	r4, r0
 252 0126 03D5     		bpl	.L37
 253 0128 1946     		mov	r1, r3
 254 012a 4648     		ldr	r0, .L60+8
 255 012c FFF7FEFF 		bl	debugPrintf
 256              	.L37:
 257 0130 0023     		movs	r3, #0
 258 0132 84F82031 		strb	r3, [r4, #288]
 259 0136 0223     		movs	r3, #2
 260              	.L26:
 261 0138 1846     		mov	r0, r3
 262 013a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 263              	.L31:
 264 013e D0F82C51 		ldr	r5, [r0, #300]
 265 0142 A6E7     		b	.L33
 266              	.L41:
 267 0144 2546     		mov	r5, r4
 268 0146 3C46     		mov	r4, r7
 269 0148 A3E7     		b	.L33
 270              	.L56:
 271 014a D0F81831 		ldr	r3, [r0, #280]
 272              	.L22:
 273 014e FF1A     		subs	r7, r7, r3
 274 0150 9C1D     		adds	r4, r3, #6
 275 0152 07F03F07 		and	r7, r7, #63
 276 0156 012F     		cmp	r7, #1
 277 0158 50F82440 		ldr	r4, [r0, r4, lsl #2]
 278 015c 1FD9     		bls	.L29
 279 015e 0133     		adds	r3, r3, #1
 280 0160 03F03F03 		and	r3, r3, #63
 281 0164 9A1D     		adds	r2, r3, #6
 282 0166 C0F82C31 		str	r3, [r0, #300]
 283 016a 50F82220 		ldr	r2, [r0, r2, lsl #2]
 284 016e C0F81831 		str	r3, [r0, #280]
 285 0172 121B     		subs	r2, r2, r4
ARM GAS  /tmp/cctX0lXT.s 			page 6


 286 0174 A2F53473 		sub	r3, r2, #720
 287 0178 B3F5F97F 		cmp	r3, #498
 288 017c C0F82421 		str	r2, [r0, #292]
 289 0180 21D8     		bhi	.L30
 290 0182 0023     		movs	r3, #0
 291 0184 2D4A     		ldr	r2, .L60
 292 0186 80F83231 		strb	r3, [r0, #306]
 293 018a D0F81C71 		ldr	r7, [r0, #284]
 294 018e D2F89020 		ldr	r2, [r2, #144]
 295 0192 A0F83031 		strh	r3, [r0, #304]	@ movhi
 296 0196 0223     		movs	r3, #2
 297 0198 80F82031 		strb	r3, [r0, #288]
 298 019c 3FE7     		b	.L24
 299              	.L29:
 300 019e 121B     		subs	r2, r2, r4
 301 01a0 40F2C241 		movw	r1, #1218
 302 01a4 8A42     		cmp	r2, r1
 303 01a6 3FD9     		bls	.L40
 304 01a8 244A     		ldr	r2, .L60
 305 01aa D0F81C11 		ldr	r1, [r0, #284]
 306 01ae D2F89020 		ldr	r2, [r2, #144]
 307 01b2 0133     		adds	r3, r3, #1
 308 01b4 03F03F03 		and	r3, r3, #63
 309 01b8 0422     		movs	r2, #4
 310 01ba C0F81831 		str	r3, [r0, #280]
 311 01be 80F82021 		strb	r2, [r0, #288]
 312 01c2 1346     		mov	r3, r2
 313 01c4 ABE7     		b	.L21
 314              	.L30:
 315 01c6 1D4B     		ldr	r3, .L60
 316 01c8 D0F81C21 		ldr	r2, [r0, #284]
 317 01cc D3F89030 		ldr	r3, [r3, #144]
 318 01d0 0423     		movs	r3, #4
 319 01d2 80F82031 		strb	r3, [r0, #288]
 320 01d6 A2E7     		b	.L21
 321              	.L28:
 322 01d8 184A     		ldr	r2, .L60
 323 01da D0F81C71 		ldr	r7, [r0, #284]
 324 01de D2F89020 		ldr	r2, [r2, #144]
 325 01e2 0124     		movs	r4, #1
 326 01e4 80F82041 		strb	r4, [r0, #288]
 327 01e8 B1E7     		b	.L22
 328              	.L35:
 329 01ea 90F83231 		ldrb	r3, [r0, #306]	@ zero_extendqisi2
 330 01ee B0F83061 		ldrh	r6, [r0, #304]
 331 01f2 0133     		adds	r3, r3, #1
 332 01f4 DBB2     		uxtb	r3, r3
 333 01f6 45EA0615 		orr	r5, r5, r6, lsl #4
 334 01fa ADB2     		uxth	r5, r5
 335 01fc 042B     		cmp	r3, #4
 336 01fe A0F83051 		strh	r5, [r0, #304]	@ movhi
 337 0202 80F83231 		strb	r3, [r0, #306]
 338 0206 11D0     		beq	.L59
 339 0208 D0F81C71 		ldr	r7, [r0, #284]
 340 020c DAF89020 		ldr	r2, [r10, #144]
 341 0210 0FE7     		b	.L25
 342              	.L57:
ARM GAS  /tmp/cctX0lXT.s 			page 7


 343 0212 0A4A     		ldr	r2, .L60
 344 0214 D0F81C31 		ldr	r3, [r0, #284]
 345 0218 C0F818B1 		str	fp, [r0, #280]
 346 021c 0523     		movs	r3, #5
 347 021e D2F89020 		ldr	r2, [r2, #144]
 348 0222 80F82031 		strb	r3, [r0, #288]
 349 0226 7AE7     		b	.L21
 350              	.L40:
 351 0228 0023     		movs	r3, #0
 352 022a 85E7     		b	.L26
 353              	.L59:
 354 022c C0F81841 		str	r4, [r0, #280]
 355 0230 0123     		movs	r3, #1
 356 0232 0D80     		strh	r5, [r1]	@ movhi
 357 0234 80F82021 		strb	r2, [r0, #288]
 358 0238 7EE7     		b	.L26
 359              	.L61:
 360 023a 00BF     		.align	2
 361              	.L60:
 362 023c 00000940 		.word	1074331648
 363 0240 00000000 		.word	reprap
 364 0244 00000000 		.word	.LC0
 365              		.size	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt, .-_ZN21Duet3DFilamentMonitor17PollReceiveB
 366              		.section	.text._ZNK21Duet3DFilamentMonitor11IsReceivingEv,"ax",%progbits
 367              		.align	1
 368              		.p2align 2,,3
 369              		.global	_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 370              		.syntax unified
 371              		.thumb
 372              		.thumb_func
 373              		.fpu fpv4-sp-d16
 374              		.type	_ZNK21Duet3DFilamentMonitor11IsReceivingEv, %function
 375              	_ZNK21Duet3DFilamentMonitor11IsReceivingEv:
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378              		@ link register save eliminated.
 379 0000 90F82001 		ldrb	r0, [r0, #288]	@ zero_extendqisi2
 380 0004 0138     		subs	r0, r0, #1
 381 0006 0128     		cmp	r0, #1
 382 0008 8CBF     		ite	hi
 383 000a 0020     		movhi	r0, #0
 384 000c 0120     		movls	r0, #1
 385 000e 7047     		bx	lr
 386              		.size	_ZNK21Duet3DFilamentMonitor11IsReceivingEv, .-_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 387              		.section	.text._ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv,"ax",%progbits
 388              		.align	1
 389              		.p2align 2,,3
 390              		.global	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv
 391              		.syntax unified
 392              		.thumb
 393              		.thumb_func
 394              		.fpu fpv4-sp-d16
 395              		.type	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv, %function
 396              	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv:
 397              		@ args = 0, pretend = 0, frame = 0
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399              		@ link register save eliminated.
ARM GAS  /tmp/cctX0lXT.s 			page 8


 400 0000 90F82001 		ldrb	r0, [r0, #288]	@ zero_extendqisi2
 401 0004 B0FA80F0 		clz	r0, r0
 402 0008 4009     		lsrs	r0, r0, #5
 403 000a 7047     		bx	lr
 404              		.size	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv, .-_ZNK21Duet3DFilamentMonitor20IsWaitin
 405              		.global	_ZTV21Duet3DFilamentMonitor
 406              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 407              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 408              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 409              	_ZL28cpu_irq_prev_interrupt_state:
 410 0000 00       		.space	1
 411              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 412              		.align	2
 413              		.type	_ZL32cpu_irq_critical_section_counter, %object
 414              		.size	_ZL32cpu_irq_critical_section_counter, 4
 415              	_ZL32cpu_irq_critical_section_counter:
 416 0000 00000000 		.space	4
 417              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 418              		.align	2
 419              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 420              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 421              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 422 0000 00000000 		.space	4
 423              		.section	.rodata._ZN21Duet3DFilamentMonitor17PollReceiveBufferERt.str1.4,"aMS",%progbits,1
 424              		.align	2
 425              	.LC0:
 426 0000 46696C20 		.ascii	"Fil err %u\012\000"
 426      65727220 
 426      25750A00 
 427              		.section	.rodata._ZTV21Duet3DFilamentMonitor,"a",%progbits
 428              		.align	2
 429              		.set	.LANCHOR0,. + 0
 430              		.type	_ZTV21Duet3DFilamentMonitor, %object
 431              		.size	_ZTV21Duet3DFilamentMonitor, 40
 432              	_ZTV21Duet3DFilamentMonitor:
 433 0000 00000000 		.word	0
 434 0004 00000000 		.word	0
 435 0008 00000000 		.word	__cxa_pure_virtual
 436 000c 00000000 		.word	__cxa_pure_virtual
 437 0010 00000000 		.word	__cxa_pure_virtual
 438 0014 00000000 		.word	__cxa_pure_virtual
 439 0018 00000000 		.word	_ZN21Duet3DFilamentMonitor9InterruptEv
 440 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 441 0020 00000000 		.word	0
 442 0024 00000000 		.word	0
 443              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
