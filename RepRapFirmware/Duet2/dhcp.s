ARM GAS  /tmp/ccFvoMMa.s 			page 1


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
  13              		.file	"dhcp.cpp"
  14              		.section	.text._Z17default_ip_assignv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z17default_ip_assignv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z17default_ip_assignv, %function
  23              	_Z17default_ip_assignv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 08B5     		push	{r3, lr}
  27 0002 0422     		movs	r2, #4
  28 0004 0949     		ldr	r1, .L4
  29 0006 4FF47060 		mov	r0, #3840
  30 000a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  31 000e 0422     		movs	r2, #4
  32 0010 0749     		ldr	r1, .L4+4
  33 0012 4FF4A060 		mov	r0, #1280
  34 0016 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  35 001a 0422     		movs	r2, #4
  36 001c 0549     		ldr	r1, .L4+8
  37 001e 4FF48070 		mov	r0, #256
  38 0022 BDE80840 		pop	{r3, lr}
  39 0026 FFF7FEBF 		b	_Z17WIZCHIP_WRITE_BUFmPKht
  40              	.L5:
  41 002a 00BF     		.align	2
  42              	.L4:
  43 002c 00000000 		.word	.LANCHOR0
  44 0030 00000000 		.word	.LANCHOR1
  45 0034 00000000 		.word	.LANCHOR2
  46              		.size	_Z17default_ip_assignv, .-_Z17default_ip_assignv
  47              		.section	.text._Z17default_ip_updatev,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.global	_Z17default_ip_updatev
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu fpv4-sp-d16
  55              		.type	_Z17default_ip_updatev, %function
  56              	_Z17default_ip_updatev:
  57              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccFvoMMa.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59 0000 08B5     		push	{r3, lr}
  60 0002 8021     		movs	r1, #128
  61 0004 0020     		movs	r0, #0
  62 0006 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  63 000a 0020     		movs	r0, #0
  64 000c FFF7FEFF 		bl	_Z12WIZCHIP_READm
  65 0010 FFF7FEFF 		bl	_Z17default_ip_assignv
  66 0014 0622     		movs	r2, #6
  67 0016 0349     		ldr	r1, .L8
  68 0018 4FF41060 		mov	r0, #2304
  69 001c BDE80840 		pop	{r3, lr}
  70 0020 FFF7FEBF 		b	_Z17WIZCHIP_WRITE_BUFmPKht
  71              	.L9:
  72              		.align	2
  73              	.L8:
  74 0024 00000000 		.word	.LANCHOR3
  75              		.size	_Z17default_ip_updatev, .-_Z17default_ip_updatev
  76              		.section	.text._Z19default_ip_conflictv,"ax",%progbits
  77              		.align	1
  78              		.p2align 2,,3
  79              		.global	_Z19default_ip_conflictv
  80              		.syntax unified
  81              		.thumb
  82              		.thumb_func
  83              		.fpu fpv4-sp-d16
  84              		.type	_Z19default_ip_conflictv, %function
  85              	_Z19default_ip_conflictv:
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88 0000 08B5     		push	{r3, lr}
  89 0002 8021     		movs	r1, #128
  90 0004 0020     		movs	r0, #0
  91 0006 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  92 000a 0020     		movs	r0, #0
  93 000c FFF7FEFF 		bl	_Z12WIZCHIP_READm
  94 0010 0622     		movs	r2, #6
  95 0012 0349     		ldr	r1, .L12
  96 0014 4FF41060 		mov	r0, #2304
  97 0018 BDE80840 		pop	{r3, lr}
  98 001c FFF7FEBF 		b	_Z17WIZCHIP_WRITE_BUFmPKht
  99              	.L13:
 100              		.align	2
 101              	.L12:
 102 0020 00000000 		.word	.LANCHOR3
 103              		.size	_Z19default_ip_conflictv, .-_Z19default_ip_conflictv
 104              		.section	.text._Z15reg_dhcp_cbfuncPFvvES0_S0_,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	_Z15reg_dhcp_cbfuncPFvvES0_S0_
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 112              		.type	_Z15reg_dhcp_cbfuncPFvvES0_S0_, %function
 113              	_Z15reg_dhcp_cbfuncPFvvES0_S0_:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccFvoMMa.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116              		@ link register save eliminated.
 117 0000 F0B4     		push	{r4, r5, r6, r7}
 118 0002 084D     		ldr	r5, .L28
 119 0004 084E     		ldr	r6, .L28+4
 120 0006 094C     		ldr	r4, .L28+8
 121 0008 094B     		ldr	r3, .L28+12
 122 000a 0A4F     		ldr	r7, .L28+16
 123 000c 2E60     		str	r6, [r5]
 124 000e 0A4E     		ldr	r6, .L28+20
 125 0010 2760     		str	r7, [r4]
 126 0012 1E60     		str	r6, [r3]
 127 0014 00B1     		cbz	r0, .L15
 128 0016 2860     		str	r0, [r5]
 129              	.L15:
 130 0018 01B1     		cbz	r1, .L16
 131 001a 2160     		str	r1, [r4]
 132              	.L16:
 133 001c 02B1     		cbz	r2, .L14
 134 001e 1A60     		str	r2, [r3]
 135              	.L14:
 136 0020 F0BC     		pop	{r4, r5, r6, r7}
 137 0022 7047     		bx	lr
 138              	.L29:
 139              		.align	2
 140              	.L28:
 141 0024 00000000 		.word	.LANCHOR4
 142 0028 00000000 		.word	_Z17default_ip_assignv
 143 002c 00000000 		.word	.LANCHOR5
 144 0030 00000000 		.word	.LANCHOR6
 145 0034 00000000 		.word	_Z17default_ip_updatev
 146 0038 00000000 		.word	_Z19default_ip_conflictv
 147              		.size	_Z15reg_dhcp_cbfuncPFvvES0_S0_, .-_Z15reg_dhcp_cbfuncPFvvES0_S0_
 148              		.section	.text._Z11makeDHCPMSGv,"ax",%progbits
 149              		.align	1
 150              		.p2align 2,,3
 151              		.global	_Z11makeDHCPMSGv
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu fpv4-sp-d16
 156              		.type	_Z11makeDHCPMSGv, %function
 157              	_Z11makeDHCPMSGv:
 158              		@ args = 0, pretend = 0, frame = 8
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160 0000 70B5     		push	{r4, r5, r6, lr}
 161 0002 82B0     		sub	sp, sp, #8
 162 0004 0622     		movs	r2, #6
 163 0006 6946     		mov	r1, sp
 164 0008 4FF41060 		mov	r0, #2304
 165 000c FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 166 0010 1F4B     		ldr	r3, .L38
 167 0012 2048     		ldr	r0, .L38+4
 168 0014 1968     		ldr	r1, [r3]
 169 0016 204A     		ldr	r2, .L38+8
 170 0018 204D     		ldr	r5, .L38+12
 171 001a 5679     		ldrb	r6, [r2, #5]	@ zero_extendqisi2
ARM GAS  /tmp/ccFvoMMa.s 			page 4


 172 001c C171     		strb	r1, [r0, #7]
 173 001e 0C0E     		lsrs	r4, r1, #24
 174 0020 0346     		mov	r3, r0
 175 0022 0471     		strb	r4, [r0, #4]
 176 0024 0C0C     		lsrs	r4, r1, #16
 177 0026 0560     		str	r5, [r0]
 178 0028 090A     		lsrs	r1, r1, #8
 179 002a 4FF40005 		mov	r5, #8388608
 180 002e 4471     		strb	r4, [r0, #5]
 181 0030 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 182 0032 03F8216F 		strb	r6, [r3, #33]!
 183 0036 8171     		strb	r1, [r0, #6]
 184 0038 5678     		ldrb	r6, [r2, #1]	@ zero_extendqisi2
 185 003a 1179     		ldrb	r1, [r2, #4]	@ zero_extendqisi2
 186 003c 8560     		str	r5, [r0, #8]
 187 003e 0477     		strb	r4, [r0, #28]
 188 0040 9578     		ldrb	r5, [r2, #2]	@ zero_extendqisi2
 189 0042 D478     		ldrb	r4, [r2, #3]	@ zero_extendqisi2
 190 0044 80F82010 		strb	r1, [r0, #32]
 191 0048 0022     		movs	r2, #0
 192 004a C0E90322 		strd	r2, r2, [r0, #12]
 193 004e C0E90522 		strd	r2, r2, [r0, #20]
 194 0052 4677     		strb	r6, [r0, #29]
 195 0054 8577     		strb	r5, [r0, #30]
 196 0056 C477     		strb	r4, [r0, #31]
 197 0058 00F12B01 		add	r1, r0, #43
 198              	.L31:
 199 005c 03F8012F 		strb	r2, [r3, #1]!
 200 0060 8B42     		cmp	r3, r1
 201 0062 FBD1     		bne	.L31
 202 0064 0E4B     		ldr	r3, .L38+16
 203 0066 0021     		movs	r1, #0
 204 0068 03F14002 		add	r2, r3, #64
 205              	.L32:
 206 006c 03F8011F 		strb	r1, [r3, #1]!
 207 0070 9342     		cmp	r3, r2
 208 0072 FBD1     		bne	.L32
 209 0074 0B4B     		ldr	r3, .L38+20
 210 0076 0021     		movs	r1, #0
 211 0078 03F18002 		add	r2, r3, #128
 212              	.L33:
 213 007c 03F8011F 		strb	r1, [r3, #1]!
 214 0080 9A42     		cmp	r2, r3
 215 0082 FBD1     		bne	.L33
 216 0084 084B     		ldr	r3, .L38+24
 217 0086 C0F8EC30 		str	r3, [r0, #236]
 218 008a 02B0     		add	sp, sp, #8
 219              		@ sp needed
 220 008c 70BD     		pop	{r4, r5, r6, pc}
 221              	.L39:
 222 008e 00BF     		.align	2
 223              	.L38:
 224 0090 00000000 		.word	.LANCHOR8
 225 0094 00000000 		.word	.LANCHOR7
 226 0098 00000000 		.word	.LANCHOR3
 227 009c 01010600 		.word	393473
 228 00a0 2B000000 		.word	.LANCHOR7+43
ARM GAS  /tmp/ccFvoMMa.s 			page 5


 229 00a4 6B000000 		.word	.LANCHOR7+107
 230 00a8 63825363 		.word	1666417251
 231              		.size	_Z11makeDHCPMSGv, .-_Z11makeDHCPMSGv
 232              		.section	.text._Z18send_DHCP_DISCOVERv,"ax",%progbits
 233              		.align	1
 234              		.p2align 2,,3
 235              		.global	_Z18send_DHCP_DISCOVERv
 236              		.syntax unified
 237              		.thumb
 238              		.thumb_func
 239              		.fpu fpv4-sp-d16
 240              		.type	_Z18send_DHCP_DISCOVERv, %function
 241              	_Z18send_DHCP_DISCOVERv:
 242              		@ args = 0, pretend = 0, frame = 8
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 245 0004 85B0     		sub	sp, sp, #20
 246 0006 FFF7FEFF 		bl	_Z11makeDHCPMSGv
 247 000a 514A     		ldr	r2, .L48
 248 000c 514B     		ldr	r3, .L48+4
 249 000e 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 250 0010 5148     		ldr	r0, .L48+8
 251 0012 524D     		ldr	r5, .L48+12
 252 0014 83F8F640 		strb	r4, [r3, #246]
 253 0018 40F20714 		movw	r4, #263
 254 001c C3F8F050 		str	r5, [r3, #240]
 255 0020 A3F8F440 		strh	r4, [r3, #244]	@ movhi
 256 0024 5578     		ldrb	r5, [r2, #1]	@ zero_extendqisi2
 257 0026 9478     		ldrb	r4, [r2, #2]	@ zero_extendqisi2
 258 0028 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 259 002a D678     		ldrb	r6, [r2, #3]	@ zero_extendqisi2
 260 002c 83F8F750 		strb	r5, [r3, #247]
 261 0030 83F8F840 		strb	r4, [r3, #248]
 262 0034 1579     		ldrb	r5, [r2, #4]	@ zero_extendqisi2
 263 0036 5479     		ldrb	r4, [r2, #5]	@ zero_extendqisi2
 264 0038 83F8F960 		strb	r6, [r3, #249]
 265 003c 0C22     		movs	r2, #12
 266 003e 83F8FA50 		strb	r5, [r3, #250]
 267 0042 83F8FB40 		strb	r4, [r3, #251]
 268 0046 A3F8FC20 		strh	r2, [r3, #252]	@ movhi
 269 004a 0029     		cmp	r1, #0
 270 004c 6ED0     		beq	.L44
 271 004e 03F1FD04 		add	r4, r3, #253
 272 0052 0022     		movs	r2, #0
 273 0054 00E0     		b	.L42
 274              	.L45:
 275 0056 6246     		mov	r2, ip
 276              	.L42:
 277 0058 04F8011F 		strb	r1, [r4, #1]!
 278 005c 10F8011F 		ldrb	r1, [r0, #1]!	@ zero_extendqisi2
 279 0060 02F1130A 		add	r10, r2, #19
 280 0064 02F1010C 		add	ip, r2, #1
 281 0068 0029     		cmp	r1, #0
 282 006a F4D1     		bne	.L45
 283 006c 02F11208 		add	r8, r2, #18
 284 0070 A8EB0C08 		sub	r8, r8, ip
 285 0074 02F11409 		add	r9, r2, #20
ARM GAS  /tmp/ccFvoMMa.s 			page 6


 286 0078 02F1150E 		add	lr, r2, #21
 287 007c 02F11607 		add	r7, r2, #22
 288 0080 02F11706 		add	r6, r2, #23
 289 0084 02F11805 		add	r5, r2, #24
 290 0088 02F11904 		add	r4, r2, #25
 291 008c 02F11A00 		add	r0, r2, #26
 292 0090 02F11B01 		add	r1, r2, #27
 293 0094 5FFA8CFC 		uxtb	ip, ip
 294 0098 1C32     		adds	r2, r2, #28
 295              	.L41:
 296 009a 9844     		add	r8, r8, r3
 297 009c 9A44     		add	r10, r10, r3
 298 009e 9944     		add	r9, r9, r3
 299 00a0 9E44     		add	lr, lr, r3
 300 00a2 1F44     		add	r7, r7, r3
 301 00a4 4FF0370B 		mov	fp, #55
 302 00a8 88F8ECC0 		strb	ip, [r8, #236]
 303 00ac 1D44     		add	r5, r5, r3
 304 00ae 8AF8ECB0 		strb	fp, [r10, #236]
 305 00b2 1E44     		add	r6, r6, r3
 306 00b4 1C44     		add	r4, r4, r3
 307 00b6 1844     		add	r0, r0, r3
 308 00b8 1944     		add	r1, r1, r3
 309 00ba 4FF0060C 		mov	ip, #6
 310 00be 4FF00108 		mov	r8, #1
 311 00c2 4FF0030B 		mov	fp, #3
 312 00c6 89F8ECC0 		strb	ip, [r9, #236]
 313 00ca 4FF00F0A 		mov	r10, #15
 314 00ce 8EF8EC80 		strb	r8, [lr, #236]
 315 00d2 4FF03A09 		mov	r9, #58
 316 00d6 87F8ECB0 		strb	fp, [r7, #236]
 317 00da 4FF03B08 		mov	r8, #59
 318 00de 4FF0FF0E 		mov	lr, #255
 319 00e2 02F1EC07 		add	r7, r2, #236
 320 00e6 86F8ECC0 		strb	ip, [r6, #236]
 321 00ea 3B44     		add	r3, r3, r7
 322 00ec 85F8ECA0 		strb	r10, [r5, #236]
 323 00f0 84F8EC90 		strb	r9, [r4, #236]
 324 00f4 0025     		movs	r5, #0
 325 00f6 80F8EC80 		strb	r8, [r0, #236]
 326 00fa 81F8ECE0 		strb	lr, [r1, #236]
 327              	.L43:
 328 00fe 0132     		adds	r2, r2, #1
 329 0100 B2F59C7F 		cmp	r2, #312
 330 0104 03F8015B 		strb	r5, [r3], #1
 331 0108 F9D1     		bne	.L43
 332 010a 154A     		ldr	r2, .L48+16
 333 010c 1149     		ldr	r1, .L48+4
 334 010e 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 335 0110 04AB     		add	r3, sp, #16
 336 0112 4FF0FF32 		mov	r2, #-1
 337 0116 43F8042D 		str	r2, [r3, #-4]!
 338 011a 4322     		movs	r2, #67
 339 011c 0092     		str	r2, [sp]
 340 011e 4FF40972 		mov	r2, #548
 341 0122 FFF7FEFF 		bl	_Z6sendtohPKhtS0_t
 342 0126 05B0     		add	sp, sp, #20
ARM GAS  /tmp/ccFvoMMa.s 			page 7


 343              		@ sp needed
 344 0128 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 345              	.L44:
 346 012c 8C46     		mov	ip, r1
 347 012e 1B22     		movs	r2, #27
 348 0130 1A21     		movs	r1, #26
 349 0132 1920     		movs	r0, #25
 350 0134 1824     		movs	r4, #24
 351 0136 1725     		movs	r5, #23
 352 0138 1626     		movs	r6, #22
 353 013a 1527     		movs	r7, #21
 354 013c 4FF0140E 		mov	lr, #20
 355 0140 4FF01309 		mov	r9, #19
 356 0144 4FF01108 		mov	r8, #17
 357 0148 4FF0120A 		mov	r10, #18
 358 014c A5E7     		b	.L41
 359              	.L49:
 360 014e 00BF     		.align	2
 361              	.L48:
 362 0150 00000000 		.word	.LANCHOR3
 363 0154 00000000 		.word	.LANCHOR7
 364 0158 00000000 		.word	.LANCHOR9
 365 015c 3501013D 		.word	1023476021
 366 0160 00000000 		.word	.LANCHOR10
 367              		.size	_Z18send_DHCP_DISCOVERv, .-_Z18send_DHCP_DISCOVERv
 368              		.section	.text._Z17send_DHCP_REQUESTv,"ax",%progbits
 369              		.align	1
 370              		.p2align 2,,3
 371              		.global	_Z17send_DHCP_REQUESTv
 372              		.syntax unified
 373              		.thumb
 374              		.thumb_func
 375              		.fpu fpv4-sp-d16
 376              		.type	_Z17send_DHCP_REQUESTv, %function
 377              	_Z17send_DHCP_REQUESTv:
 378              		@ args = 0, pretend = 0, frame = 8
 379              		@ frame_needed = 0, uses_anonymous_args = 0
 380 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 381 0002 85B0     		sub	sp, sp, #20
 382 0004 FFF7FEFF 		bl	_Z11makeDHCPMSGv
 383 0008 664B     		ldr	r3, .L64
 384 000a 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 385 000c 033A     		subs	r2, r2, #3
 386 000e D2B2     		uxtb	r2, r2
 387 0010 012A     		cmp	r2, #1
 388 0012 40F2A580 		bls	.L63
 389 0016 4FF0FF31 		mov	r1, #-1
 390 001a 634B     		ldr	r3, .L64+4
 391 001c 0391     		str	r1, [sp, #12]
 392              	.L52:
 393 001e 6349     		ldr	r1, .L64+8
 394 0020 6348     		ldr	r0, .L64+12
 395 0022 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 396 0024 4D78     		ldrb	r5, [r1, #1]	@ zero_extendqisi2
 397 0026 83F8F640 		strb	r4, [r3, #246]
 398 002a 8C78     		ldrb	r4, [r1, #2]	@ zero_extendqisi2
 399 002c CE78     		ldrb	r6, [r1, #3]	@ zero_extendqisi2
ARM GAS  /tmp/ccFvoMMa.s 			page 8


 400 002e 83F8F750 		strb	r5, [r3, #247]
 401 0032 83F8F840 		strb	r4, [r3, #248]
 402 0036 0D79     		ldrb	r5, [r1, #4]	@ zero_extendqisi2
 403 0038 4C79     		ldrb	r4, [r1, #5]	@ zero_extendqisi2
 404 003a 83F8F960 		strb	r6, [r3, #249]
 405 003e 40F20711 		movw	r1, #263
 406 0042 012A     		cmp	r2, #1
 407 0044 83F8FA50 		strb	r5, [r3, #250]
 408 0048 83F8FB40 		strb	r4, [r3, #251]
 409 004c C3F8F000 		str	r0, [r3, #240]
 410 0050 A3F8F410 		strh	r1, [r3, #244]	@ movhi
 411 0054 40F29E80 		bls	.L58
 412 0058 5649     		ldr	r1, .L64+16
 413 005a 574A     		ldr	r2, .L64+20
 414 005c 0D78     		ldrb	r5, [r1]	@ zero_extendqisi2
 415 005e 4C78     		ldrb	r4, [r1, #1]	@ zero_extendqisi2
 416 0060 8878     		ldrb	r0, [r1, #2]	@ zero_extendqisi2
 417 0062 C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 418 0064 1678     		ldrb	r6, [r2]	@ zero_extendqisi2
 419 0066 83F8FE50 		strb	r5, [r3, #254]
 420 006a 83F8FF40 		strb	r4, [r3, #255]
 421 006e 5578     		ldrb	r5, [r2, #1]	@ zero_extendqisi2
 422 0070 9478     		ldrb	r4, [r2, #2]	@ zero_extendqisi2
 423 0072 83F80001 		strb	r0, [r3, #256]
 424 0076 83F80111 		strb	r1, [r3, #257]
 425 007a D078     		ldrb	r0, [r2, #3]	@ zero_extendqisi2
 426 007c 83F80551 		strb	r5, [r3, #261]
 427 0080 40F23241 		movw	r1, #1074
 428 0084 40F23642 		movw	r2, #1078
 429 0088 A3F8FC10 		strh	r1, [r3, #252]	@ movhi
 430 008c A3F80221 		strh	r2, [r3, #258]	@ movhi
 431 0090 83F80461 		strb	r6, [r3, #260]
 432 0094 83F80641 		strb	r4, [r3, #262]
 433 0098 83F80701 		strb	r0, [r3, #263]
 434 009c 1F25     		movs	r5, #31
 435 009e 1E27     		movs	r7, #30
 436 00a0 1D22     		movs	r2, #29
 437 00a2 1C21     		movs	r1, #28
 438              	.L53:
 439 00a4 1944     		add	r1, r1, r3
 440 00a6 4548     		ldr	r0, .L64+24
 441 00a8 0C24     		movs	r4, #12
 442 00aa 81F8EC40 		strb	r4, [r1, #236]
 443 00ae 1A44     		add	r2, r2, r3
 444 00b0 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 445 00b2 0024     		movs	r4, #0
 446 00b4 82F8EC40 		strb	r4, [r2, #236]
 447 00b8 0029     		cmp	r1, #0
 448 00ba 70D0     		beq	.L59
 449 00bc 07F1EC04 		add	r4, r7, #236
 450 00c0 1C44     		add	r4, r4, r3
 451 00c2 3D46     		mov	r5, r7
 452 00c4 00E0     		b	.L55
 453              	.L60:
 454 00c6 1546     		mov	r5, r2
 455              	.L55:
 456 00c8 04F8011B 		strb	r1, [r4], #1
ARM GAS  /tmp/ccFvoMMa.s 			page 9


 457 00cc 10F8011F 		ldrb	r1, [r0, #1]!	@ zero_extendqisi2
 458 00d0 6A1C     		adds	r2, r5, #1
 459 00d2 D61B     		subs	r6, r2, r7
 460 00d4 0029     		cmp	r1, #0
 461 00d6 F6D1     		bne	.L60
 462 00d8 0235     		adds	r5, r5, #2
 463 00da F1B2     		uxtb	r1, r6
 464              	.L54:
 465 00dc 501E     		subs	r0, r2, #1
 466 00de 861B     		subs	r6, r0, r6
 467 00e0 9F18     		adds	r7, r3, r2
 468 00e2 1E44     		add	r6, r6, r3
 469 00e4 1D44     		add	r5, r5, r3
 470 00e6 3720     		movs	r0, #55
 471 00e8 86F8EC10 		strb	r1, [r6, #236]
 472 00ec 0826     		movs	r6, #8
 473 00ee 87F8EC00 		strb	r0, [r7, #236]
 474 00f2 0320     		movs	r0, #3
 475 00f4 85F8EC60 		strb	r6, [r5, #236]
 476 00f8 0124     		movs	r4, #1
 477 00fa 87F8EF00 		strb	r0, [r7, #239]
 478 00fe 3B20     		movs	r0, #59
 479 0100 0626     		movs	r6, #6
 480 0102 0F25     		movs	r5, #15
 481 0104 87F8EE40 		strb	r4, [r7, #238]
 482 0108 87F8F300 		strb	r0, [r7, #243]
 483 010c 3A24     		movs	r4, #58
 484 010e 02F10B00 		add	r0, r2, #11
 485 0112 87F8F060 		strb	r6, [r7, #240]
 486 0116 87F8F150 		strb	r5, [r7, #241]
 487 011a 1F26     		movs	r6, #31
 488 011c 2125     		movs	r5, #33
 489 011e 87F8F240 		strb	r4, [r7, #242]
 490 0122 B0F59C7F 		cmp	r0, #312
 491 0126 4FF0FF04 		mov	r4, #255
 492 012a 87F8F460 		strb	r6, [r7, #244]
 493 012e 87F8F550 		strb	r5, [r7, #245]
 494 0132 87F8F640 		strb	r4, [r7, #246]
 495 0136 07D2     		bcs	.L56
 496 0138 F732     		adds	r2, r2, #247
 497 013a 2149     		ldr	r1, .L64+28
 498 013c 1344     		add	r3, r3, r2
 499 013e 0022     		movs	r2, #0
 500              	.L57:
 501 0140 03F8012B 		strb	r2, [r3], #1
 502 0144 8B42     		cmp	r3, r1
 503 0146 FBD1     		bne	.L57
 504              	.L56:
 505 0148 1E4B     		ldr	r3, .L64+32
 506 014a 1749     		ldr	r1, .L64+4
 507 014c 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 508 014e 4323     		movs	r3, #67
 509 0150 0093     		str	r3, [sp]
 510 0152 4FF40972 		mov	r2, #548
 511 0156 03AB     		add	r3, sp, #12
 512 0158 FFF7FEFF 		bl	_Z6sendtohPKhtS0_t
 513 015c 05B0     		add	sp, sp, #20
ARM GAS  /tmp/ccFvoMMa.s 			page 10


 514              		@ sp needed
 515 015e F0BD     		pop	{r4, r5, r6, r7, pc}
 516              	.L63:
 517 0160 1448     		ldr	r0, .L64+16
 518 0162 114B     		ldr	r3, .L64+4
 519 0164 0478     		ldrb	r4, [r0]	@ zero_extendqisi2
 520 0166 1449     		ldr	r1, .L64+20
 521 0168 1C73     		strb	r4, [r3, #12]
 522 016a 0024     		movs	r4, #0
 523 016c 4578     		ldrb	r5, [r0, #1]	@ zero_extendqisi2
 524 016e 5C81     		strh	r4, [r3, #10]	@ movhi
 525 0170 8478     		ldrb	r4, [r0, #2]	@ zero_extendqisi2
 526 0172 C078     		ldrb	r0, [r0, #3]	@ zero_extendqisi2
 527 0174 5D73     		strb	r5, [r3, #13]
 528 0176 9C73     		strb	r4, [r3, #14]
 529 0178 0D78     		ldrb	r5, [r1]	@ zero_extendqisi2
 530 017a 4C78     		ldrb	r4, [r1, #1]	@ zero_extendqisi2
 531 017c D873     		strb	r0, [r3, #15]
 532 017e 8878     		ldrb	r0, [r1, #2]	@ zero_extendqisi2
 533 0180 C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 534 0182 8DF80C50 		strb	r5, [sp, #12]
 535 0186 8DF80D40 		strb	r4, [sp, #13]
 536 018a 8DF80E00 		strb	r0, [sp, #14]
 537 018e 8DF80F10 		strb	r1, [sp, #15]
 538 0192 44E7     		b	.L52
 539              	.L58:
 540 0194 1325     		movs	r5, #19
 541 0196 1227     		movs	r7, #18
 542 0198 1122     		movs	r2, #17
 543 019a 1021     		movs	r1, #16
 544 019c 82E7     		b	.L53
 545              	.L59:
 546 019e 3A46     		mov	r2, r7
 547 01a0 0E46     		mov	r6, r1
 548 01a2 9BE7     		b	.L54
 549              	.L65:
 550              		.align	2
 551              	.L64:
 552 01a4 00000000 		.word	.LANCHOR11
 553 01a8 00000000 		.word	.LANCHOR7
 554 01ac 00000000 		.word	.LANCHOR3
 555 01b0 3501033D 		.word	1023607093
 556 01b4 00000000 		.word	.LANCHOR0
 557 01b8 00000000 		.word	.LANCHOR12
 558 01bc 00000000 		.word	.LANCHOR9
 559 01c0 24020000 		.word	.LANCHOR7+548
 560 01c4 00000000 		.word	.LANCHOR10
 561              		.size	_Z17send_DHCP_REQUESTv, .-_Z17send_DHCP_REQUESTv
 562              		.section	.text._Z17send_DHCP_DECLINEv,"ax",%progbits
 563              		.align	1
 564              		.p2align 2,,3
 565              		.global	_Z17send_DHCP_DECLINEv
 566              		.syntax unified
 567              		.thumb
 568              		.thumb_func
 569              		.fpu fpv4-sp-d16
 570              		.type	_Z17send_DHCP_DECLINEv, %function
ARM GAS  /tmp/ccFvoMMa.s 			page 11


 571              	_Z17send_DHCP_DECLINEv:
 572              		@ args = 0, pretend = 0, frame = 8
 573              		@ frame_needed = 0, uses_anonymous_args = 0
 574 0000 70B5     		push	{r4, r5, r6, lr}
 575 0002 84B0     		sub	sp, sp, #16
 576 0004 FFF7FEFF 		bl	_Z11makeDHCPMSGv
 577 0008 2C4B     		ldr	r3, .L70
 578 000a 2D4A     		ldr	r2, .L70+4
 579 000c 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 580 000e 82F8F640 		strb	r4, [r2, #246]
 581 0012 2C4D     		ldr	r5, .L70+8
 582 0014 2C48     		ldr	r0, .L70+12
 583 0016 2D49     		ldr	r1, .L70+16
 584 0018 C2F8F050 		str	r5, [r2, #240]
 585 001c 40F20714 		movw	r4, #263
 586 0020 5D78     		ldrb	r5, [r3, #1]	@ zero_extendqisi2
 587 0022 A2F8F440 		strh	r4, [r2, #244]	@ movhi
 588 0026 9C78     		ldrb	r4, [r3, #2]	@ zero_extendqisi2
 589 0028 DE78     		ldrb	r6, [r3, #3]	@ zero_extendqisi2
 590 002a 82F8F750 		strb	r5, [r2, #247]
 591 002e 82F8F840 		strb	r4, [r2, #248]
 592 0032 1D79     		ldrb	r5, [r3, #4]	@ zero_extendqisi2
 593 0034 5C79     		ldrb	r4, [r3, #5]	@ zero_extendqisi2
 594 0036 82F8F960 		strb	r6, [r2, #249]
 595 003a 40F23243 		movw	r3, #1074
 596 003e 0678     		ldrb	r6, [r0]	@ zero_extendqisi2
 597 0040 82F8FA50 		strb	r5, [r2, #250]
 598 0044 82F8FB40 		strb	r4, [r2, #251]
 599 0048 4578     		ldrb	r5, [r0, #1]	@ zero_extendqisi2
 600 004a 8478     		ldrb	r4, [r0, #2]	@ zero_extendqisi2
 601 004c A2F8FC30 		strh	r3, [r2, #252]	@ movhi
 602 0050 C378     		ldrb	r3, [r0, #3]	@ zero_extendqisi2
 603 0052 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
 604 0054 82F8FE60 		strb	r6, [r2, #254]
 605 0058 82F8FF50 		strb	r5, [r2, #255]
 606 005c 82F80041 		strb	r4, [r2, #256]
 607 0060 4D78     		ldrb	r5, [r1, #1]	@ zero_extendqisi2
 608 0062 82F80131 		strb	r3, [r2, #257]
 609 0066 8C78     		ldrb	r4, [r1, #2]	@ zero_extendqisi2
 610 0068 CB78     		ldrb	r3, [r1, #3]	@ zero_extendqisi2
 611 006a 82F80401 		strb	r0, [r2, #260]
 612 006e 40F23646 		movw	r6, #1078
 613 0072 0021     		movs	r1, #0
 614 0074 FF20     		movs	r0, #255
 615 0076 A2F80261 		strh	r6, [r2, #258]	@ movhi
 616 007a 82F80551 		strb	r5, [r2, #261]
 617 007e 82F80641 		strb	r4, [r2, #262]
 618 0082 5181     		strh	r1, [r2, #10]	@ movhi
 619 0084 82F80731 		strb	r3, [r2, #263]
 620 0088 02F58473 		add	r3, r2, #264
 621 008c 82F80801 		strb	r0, [r2, #264]
 622 0090 02F22322 		addw	r2, r2, #547
 623              	.L67:
 624 0094 03F8011F 		strb	r1, [r3, #1]!
 625 0098 9342     		cmp	r3, r2
 626 009a FBD1     		bne	.L67
 627 009c 0C4A     		ldr	r2, .L70+20
ARM GAS  /tmp/ccFvoMMa.s 			page 12


 628 009e 0849     		ldr	r1, .L70+4
 629 00a0 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 630 00a2 04AB     		add	r3, sp, #16
 631 00a4 4FF0FF32 		mov	r2, #-1
 632 00a8 43F8042D 		str	r2, [r3, #-4]!
 633 00ac 4322     		movs	r2, #67
 634 00ae 0092     		str	r2, [sp]
 635 00b0 4FF40972 		mov	r2, #548
 636 00b4 FFF7FEFF 		bl	_Z6sendtohPKhtS0_t
 637 00b8 04B0     		add	sp, sp, #16
 638              		@ sp needed
 639 00ba 70BD     		pop	{r4, r5, r6, pc}
 640              	.L71:
 641              		.align	2
 642              	.L70:
 643 00bc 00000000 		.word	.LANCHOR3
 644 00c0 00000000 		.word	.LANCHOR7
 645 00c4 3501043D 		.word	1023672629
 646 00c8 00000000 		.word	.LANCHOR0
 647 00cc 00000000 		.word	.LANCHOR12
 648 00d0 00000000 		.word	.LANCHOR10
 649              		.size	_Z17send_DHCP_DECLINEv, .-_Z17send_DHCP_DECLINEv
 650              		.section	.text._Z12parseDHCPMSGv,"ax",%progbits
 651              		.align	1
 652              		.p2align 2,,3
 653              		.global	_Z12parseDHCPMSGv
 654              		.syntax unified
 655              		.thumb
 656              		.thumb_func
 657              		.fpu fpv4-sp-d16
 658              		.type	_Z12parseDHCPMSGv, %function
 659              	_Z12parseDHCPMSGv:
 660              		@ args = 0, pretend = 0, frame = 112
 661              		@ frame_needed = 0, uses_anonymous_args = 0
 662 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 663 0004 A34C     		ldr	r4, .L228
 664 0006 9FB0     		sub	sp, sp, #124
 665 0008 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 666 000a FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 667 000e A8B1     		cbz	r0, .L206
 668 0010 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 669 0012 A14C     		ldr	r4, .L228+4
 670 0014 B0F5097F 		cmp	r0, #548
 671 0018 0246     		mov	r2, r0
 672 001a 0DF16E03 		add	r3, sp, #110
 673 001e 28BF     		it	cs
 674 0020 4FF40972 		movcs	r2, #548
 675 0024 0846     		mov	r0, r1
 676 0026 0093     		str	r3, [sp]
 677 0028 92B2     		uxth	r2, r2
 678 002a 1CAB     		add	r3, sp, #112
 679 002c 2146     		mov	r1, r4
 680 002e FFF7FEFF 		bl	_Z8recvfromhPhtS_Pt
 681 0032 BDF86E30 		ldrh	r3, [sp, #110]
 682 0036 432B     		cmp	r3, #67
 683 0038 03D0     		beq	.L223
 684              	.L127:
ARM GAS  /tmp/ccFvoMMa.s 			page 13


 685 003a 0020     		movs	r0, #0
 686              	.L206:
 687 003c 1FB0     		add	sp, sp, #124
 688              		@ sp needed
 689 003e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 690              	.L223:
 691 0042 83B2     		uxth	r3, r0
 692 0044 F02B     		cmp	r3, #240
 693 0046 F8D9     		bls	.L127
 694 0048 944B     		ldr	r3, .L228+8
 695 004a 217F     		ldrb	r1, [r4, #28]	@ zero_extendqisi2
 696 004c 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 697 004e 9142     		cmp	r1, r2
 698 0050 F3D1     		bne	.L127
 699 0052 617F     		ldrb	r1, [r4, #29]	@ zero_extendqisi2
 700 0054 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 701 0056 9142     		cmp	r1, r2
 702 0058 EFD1     		bne	.L127
 703 005a A17F     		ldrb	r1, [r4, #30]	@ zero_extendqisi2
 704 005c 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 705 005e 9142     		cmp	r1, r2
 706 0060 EBD1     		bne	.L127
 707 0062 E17F     		ldrb	r1, [r4, #31]	@ zero_extendqisi2
 708 0064 DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
 709 0066 9142     		cmp	r1, r2
 710 0068 E7D1     		bne	.L127
 711 006a 94F82010 		ldrb	r1, [r4, #32]	@ zero_extendqisi2
 712 006e 1A79     		ldrb	r2, [r3, #4]	@ zero_extendqisi2
 713 0070 9142     		cmp	r1, r2
 714 0072 E2D1     		bne	.L127
 715 0074 5B79     		ldrb	r3, [r3, #5]	@ zero_extendqisi2
 716 0076 94F82120 		ldrb	r2, [r4, #33]	@ zero_extendqisi2
 717 007a 9A42     		cmp	r2, r3
 718 007c DDD1     		bne	.L127
 719 007e 884D     		ldr	r5, .L228+12
 720 0080 884E     		ldr	r6, .L228+16
 721 0082 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 722 0084 1293     		str	r3, [sp, #72]
 723 0086 6B78     		ldrb	r3, [r5, #1]	@ zero_extendqisi2
 724 0088 1493     		str	r3, [sp, #80]
 725 008a AB78     		ldrb	r3, [r5, #2]	@ zero_extendqisi2
 726 008c 1693     		str	r3, [sp, #88]
 727 008e EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 728 0090 1893     		str	r3, [sp, #96]
 729 0092 854B     		ldr	r3, .L228+20
 730 0094 854F     		ldr	r7, .L228+24
 731 0096 D3F800B0 		ldr	fp, [r3]
 732 009a 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 733 009c 0B93     		str	r3, [sp, #44]
 734 009e 7378     		ldrb	r3, [r6, #1]	@ zero_extendqisi2
 735 00a0 0D93     		str	r3, [sp, #52]
 736 00a2 B378     		ldrb	r3, [r6, #2]	@ zero_extendqisi2
 737 00a4 0F93     		str	r3, [sp, #60]
 738 00a6 F378     		ldrb	r3, [r6, #3]	@ zero_extendqisi2
 739 00a8 1193     		str	r3, [sp, #68]
 740 00aa 814B     		ldr	r3, .L228+28
 741 00ac 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
ARM GAS  /tmp/ccFvoMMa.s 			page 14


 742 00ae 0692     		str	r2, [sp, #24]
 743 00b0 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 744 00b2 0892     		str	r2, [sp, #32]
 745 00b4 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 746 00b6 DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 747 00b8 0A93     		str	r3, [sp, #40]
 748 00ba 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 749 00bc 0293     		str	r3, [sp, #8]
 750 00be 7B78     		ldrb	r3, [r7, #1]	@ zero_extendqisi2
 751 00c0 0393     		str	r3, [sp, #12]
 752 00c2 BB78     		ldrb	r3, [r7, #2]	@ zero_extendqisi2
 753 00c4 0493     		str	r3, [sp, #16]
 754 00c6 0021     		movs	r1, #0
 755 00c8 FB78     		ldrb	r3, [r7, #3]	@ zero_extendqisi2
 756 00ca 0992     		str	r2, [sp, #36]
 757 00cc 8C46     		mov	ip, r1
 758 00ce 0593     		str	r3, [sp, #20]
 759 00d0 14FA80F2 		uxtah	r2, r4, r0
 760 00d4 04F1F003 		add	r3, r4, #240
 761 00d8 1791     		str	r1, [sp, #92]
 762 00da 1591     		str	r1, [sp, #84]
 763 00dc 1391     		str	r1, [sp, #76]
 764 00de 8846     		mov	r8, r1
 765 00e0 1091     		str	r1, [sp, #64]
 766 00e2 0E91     		str	r1, [sp, #56]
 767 00e4 0C91     		str	r1, [sp, #48]
 768 00e6 8E46     		mov	lr, r1
 769 00e8 8946     		mov	r9, r1
 770 00ea 0791     		str	r1, [sp, #28]
 771 00ec 8A46     		mov	r10, r1
 772 00ee 1991     		str	r1, [sp, #100]
 773              	.L75:
 774 00f0 9342     		cmp	r3, r2
 775 00f2 0BD2     		bcs	.L101
 776 00f4 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 777 00f6 0628     		cmp	r0, #6
 778 00f8 00F08A80 		beq	.L92
 779 00fc 49D9     		bls	.L224
 780 00fe 3528     		cmp	r0, #53
 781 0100 70D0     		beq	.L97
 782 0102 5CD9     		bls	.L225
 783 0104 3628     		cmp	r0, #54
 784 0106 75D0     		beq	.L100
 785 0108 FF28     		cmp	r0, #255
 786 010a 6FD1     		bne	.L91
 787              	.L101:
 788 010c 199C     		ldr	r4, [sp, #100]
 789 010e 002C     		cmp	r4, #0
 790 0110 40F0B380 		bne	.L226
 791              	.L103:
 792 0114 079B     		ldr	r3, [sp, #28]
 793 0116 1BB1     		cbz	r3, .L104
 794 0118 654B     		ldr	r3, .L228+28
 795 011a 9DF81820 		ldrb	r2, [sp, #24]	@ zero_extendqisi2
 796 011e 1A70     		strb	r2, [r3]
 797              	.L104:
 798 0120 B9F1000F 		cmp	r9, #0
ARM GAS  /tmp/ccFvoMMa.s 			page 15


 799 0124 40F09580 		bne	.L227
 800 0128 BEF1000F 		cmp	lr, #0
 801 012c 40F09880 		bne	.L118
 802              	.L107:
 803 0130 0C9B     		ldr	r3, [sp, #48]
 804 0132 13B1     		cbz	r3, .L108
 805 0134 9DF82C30 		ldrb	r3, [sp, #44]	@ zero_extendqisi2
 806 0138 3370     		strb	r3, [r6]
 807              	.L108:
 808 013a 0E9B     		ldr	r3, [sp, #56]
 809 013c 13B1     		cbz	r3, .L109
 810 013e 9DF83430 		ldrb	r3, [sp, #52]	@ zero_extendqisi2
 811 0142 7370     		strb	r3, [r6, #1]
 812              	.L109:
 813 0144 109B     		ldr	r3, [sp, #64]
 814 0146 13B1     		cbz	r3, .L110
 815 0148 9DF83C30 		ldrb	r3, [sp, #60]	@ zero_extendqisi2
 816 014c B370     		strb	r3, [r6, #2]
 817              	.L110:
 818 014e B8F1000F 		cmp	r8, #0
 819 0152 02D0     		beq	.L111
 820 0154 9DF84430 		ldrb	r3, [sp, #68]	@ zero_extendqisi2
 821 0158 F370     		strb	r3, [r6, #3]
 822              	.L111:
 823 015a BCF1000F 		cmp	ip, #0
 824 015e 02D0     		beq	.L112
 825 0160 514B     		ldr	r3, .L228+20
 826 0162 C3F800B0 		str	fp, [r3]
 827              	.L112:
 828 0166 139B     		ldr	r3, [sp, #76]
 829 0168 13B1     		cbz	r3, .L113
 830 016a 9DF84830 		ldrb	r3, [sp, #72]	@ zero_extendqisi2
 831 016e 2B70     		strb	r3, [r5]
 832              	.L113:
 833 0170 159B     		ldr	r3, [sp, #84]
 834 0172 13B1     		cbz	r3, .L114
 835 0174 9DF85030 		ldrb	r3, [sp, #80]	@ zero_extendqisi2
 836 0178 6B70     		strb	r3, [r5, #1]
 837              	.L114:
 838 017a 179B     		ldr	r3, [sp, #92]
 839 017c 13B1     		cbz	r3, .L115
 840 017e 9DF85830 		ldrb	r3, [sp, #88]	@ zero_extendqisi2
 841 0182 AB70     		strb	r3, [r5, #2]
 842              	.L115:
 843 0184 11B1     		cbz	r1, .L116
 844 0186 9DF86030 		ldrb	r3, [sp, #96]	@ zero_extendqisi2
 845 018a EB70     		strb	r3, [r5, #3]
 846              	.L116:
 847 018c 4FFA8AF0 		sxtb	r0, r10
 848 0190 54E7     		b	.L206
 849              	.L224:
 850 0192 0128     		cmp	r0, #1
 851 0194 52D0     		beq	.L94
 852 0196 4FD3     		bcc	.L95
 853 0198 0328     		cmp	r0, #3
 854 019a 27D1     		bne	.L91
 855 019c 9C78     		ldrb	r4, [r3, #2]	@ zero_extendqisi2
ARM GAS  /tmp/ccFvoMMa.s 			page 16


 856 019e 5878     		ldrb	r0, [r3, #1]	@ zero_extendqisi2
 857 01a0 0694     		str	r4, [sp, #24]
 858 01a2 DC78     		ldrb	r4, [r3, #3]	@ zero_extendqisi2
 859 01a4 0894     		str	r4, [sp, #32]
 860 01a6 1C79     		ldrb	r4, [r3, #4]	@ zero_extendqisi2
 861 01a8 0994     		str	r4, [sp, #36]
 862 01aa 4FF0010E 		mov	lr, #1
 863 01ae 5C79     		ldrb	r4, [r3, #5]	@ zero_extendqisi2
 864 01b0 0A94     		str	r4, [sp, #40]
 865 01b2 0344     		add	r3, r3, r0
 866 01b4 0233     		adds	r3, r3, #2
 867 01b6 F146     		mov	r9, lr
 868 01b8 CDF81CE0 		str	lr, [sp, #28]
 869 01bc 98E7     		b	.L75
 870              	.L225:
 871 01be 3328     		cmp	r0, #51
 872 01c0 14D1     		bne	.L91
 873 01c2 93F802B0 		ldrb	fp, [r3, #2]	@ zero_extendqisi2
 874 01c6 93F803C0 		ldrb	ip, [r3, #3]	@ zero_extendqisi2
 875 01ca 1879     		ldrb	r0, [r3, #4]	@ zero_extendqisi2
 876 01cc 0CEB0B2C 		add	ip, ip, fp, lsl #8
 877 01d0 93F805B0 		ldrb	fp, [r3, #5]	@ zero_extendqisi2
 878 01d4 00EB0C20 		add	r0, r0, ip, lsl #8
 879 01d8 0BEB002B 		add	fp, fp, r0, lsl #8
 880 01dc 0633     		adds	r3, r3, #6
 881 01de 4FF0010C 		mov	ip, #1
 882 01e2 85E7     		b	.L75
 883              	.L97:
 884 01e4 93F802A0 		ldrb	r10, [r3, #2]	@ zero_extendqisi2
 885 01e8 0333     		adds	r3, r3, #3
 886 01ea 81E7     		b	.L75
 887              	.L91:
 888 01ec 5878     		ldrb	r0, [r3, #1]	@ zero_extendqisi2
 889 01ee 0233     		adds	r3, r3, #2
 890 01f0 0344     		add	r3, r3, r0
 891 01f2 7DE7     		b	.L75
 892              	.L100:
 893 01f4 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
 894 01f6 1290     		str	r0, [sp, #72]
 895 01f8 D878     		ldrb	r0, [r3, #3]	@ zero_extendqisi2
 896 01fa 1490     		str	r0, [sp, #80]
 897 01fc 1879     		ldrb	r0, [r3, #4]	@ zero_extendqisi2
 898 01fe 1690     		str	r0, [sp, #88]
 899 0200 0121     		movs	r1, #1
 900 0202 5879     		ldrb	r0, [r3, #5]	@ zero_extendqisi2
 901 0204 1791     		str	r1, [sp, #92]
 902 0206 1591     		str	r1, [sp, #84]
 903 0208 1391     		str	r1, [sp, #76]
 904 020a 1890     		str	r0, [sp, #96]
 905 020c 0633     		adds	r3, r3, #6
 906 020e 6FE7     		b	.L75
 907              	.L92:
 908 0210 9C78     		ldrb	r4, [r3, #2]	@ zero_extendqisi2
 909 0212 5878     		ldrb	r0, [r3, #1]	@ zero_extendqisi2
 910 0214 0B94     		str	r4, [sp, #44]
 911 0216 DC78     		ldrb	r4, [r3, #3]	@ zero_extendqisi2
 912 0218 0D94     		str	r4, [sp, #52]
ARM GAS  /tmp/ccFvoMMa.s 			page 17


 913 021a 1C79     		ldrb	r4, [r3, #4]	@ zero_extendqisi2
 914 021c 0F94     		str	r4, [sp, #60]
 915 021e 4FF00108 		mov	r8, #1
 916 0222 5C79     		ldrb	r4, [r3, #5]	@ zero_extendqisi2
 917 0224 1194     		str	r4, [sp, #68]
 918 0226 0344     		add	r3, r3, r0
 919 0228 0233     		adds	r3, r3, #2
 920 022a CDF84080 		str	r8, [sp, #64]
 921 022e CDF83880 		str	r8, [sp, #56]
 922 0232 CDF83080 		str	r8, [sp, #48]
 923 0236 5BE7     		b	.L75
 924              	.L95:
 925 0238 0133     		adds	r3, r3, #1
 926 023a 59E7     		b	.L75
 927              	.L94:
 928 023c 1990     		str	r0, [sp, #100]
 929 023e 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
 930 0240 0290     		str	r0, [sp, #8]
 931 0242 D878     		ldrb	r0, [r3, #3]	@ zero_extendqisi2
 932 0244 0390     		str	r0, [sp, #12]
 933 0246 1879     		ldrb	r0, [r3, #4]	@ zero_extendqisi2
 934 0248 0490     		str	r0, [sp, #16]
 935 024a 5879     		ldrb	r0, [r3, #5]	@ zero_extendqisi2
 936 024c 0590     		str	r0, [sp, #20]
 937 024e 0633     		adds	r3, r3, #6
 938 0250 4EE7     		b	.L75
 939              	.L227:
 940 0252 174B     		ldr	r3, .L228+28
 941 0254 9DF82020 		ldrb	r2, [sp, #32]	@ zero_extendqisi2
 942 0258 5A70     		strb	r2, [r3, #1]
 943 025a BEF1000F 		cmp	lr, #0
 944 025e 07D0     		beq	.L106
 945              	.L118:
 946 0260 134B     		ldr	r3, .L228+28
 947 0262 9DF82420 		ldrb	r2, [sp, #36]	@ zero_extendqisi2
 948 0266 9A70     		strb	r2, [r3, #2]
 949 0268 B9F1000F 		cmp	r9, #0
 950 026c 3FF460AF 		beq	.L107
 951              	.L106:
 952 0270 0F4B     		ldr	r3, .L228+28
 953 0272 9DF82820 		ldrb	r2, [sp, #40]	@ zero_extendqisi2
 954 0276 DA70     		strb	r2, [r3, #3]
 955 0278 5AE7     		b	.L107
 956              	.L226:
 957 027a 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 958 027e 3B70     		strb	r3, [r7]
 959 0280 9DF80C30 		ldrb	r3, [sp, #12]	@ zero_extendqisi2
 960 0284 7B70     		strb	r3, [r7, #1]
 961 0286 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 962 028a BB70     		strb	r3, [r7, #2]
 963 028c 9DF81430 		ldrb	r3, [sp, #20]	@ zero_extendqisi2
 964 0290 FB70     		strb	r3, [r7, #3]
 965 0292 3FE7     		b	.L103
 966              	.L229:
 967              		.align	2
 968              	.L228:
 969 0294 00000000 		.word	.LANCHOR10
ARM GAS  /tmp/ccFvoMMa.s 			page 18


 970 0298 00000000 		.word	.LANCHOR7
 971 029c 00000000 		.word	.LANCHOR3
 972 02a0 00000000 		.word	.LANCHOR12
 973 02a4 00000000 		.word	.LANCHOR14
 974 02a8 00000000 		.word	.LANCHOR13
 975 02ac 00000000 		.word	.LANCHOR1
 976 02b0 00000000 		.word	.LANCHOR2
 977              		.size	_Z12parseDHCPMSGv, .-_Z12parseDHCPMSGv
 978              		.section	.text._Z9DHCP_stopv,"ax",%progbits
 979              		.align	1
 980              		.p2align 2,,3
 981              		.global	_Z9DHCP_stopv
 982              		.syntax unified
 983              		.thumb
 984              		.thumb_func
 985              		.fpu fpv4-sp-d16
 986              		.type	_Z9DHCP_stopv, %function
 987              	_Z9DHCP_stopv:
 988              		@ args = 0, pretend = 0, frame = 0
 989              		@ frame_needed = 0, uses_anonymous_args = 0
 990 0000 08B5     		push	{r3, lr}
 991 0002 044B     		ldr	r3, .L232
 992 0004 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 993 0006 FFF7FEFF 		bl	_Z5closeh
 994 000a 034B     		ldr	r3, .L232+4
 995 000c 0622     		movs	r2, #6
 996 000e 1A70     		strb	r2, [r3]
 997 0010 08BD     		pop	{r3, pc}
 998              	.L233:
 999 0012 00BF     		.align	2
 1000              	.L232:
 1001 0014 00000000 		.word	.LANCHOR10
 1002 0018 00000000 		.word	.LANCHOR11
 1003              		.size	_Z9DHCP_stopv, .-_Z9DHCP_stopv
 1004              		.section	.text._Z18check_DHCP_timeoutv,"ax",%progbits
 1005              		.align	1
 1006              		.p2align 2,,3
 1007              		.global	_Z18check_DHCP_timeoutv
 1008              		.syntax unified
 1009              		.thumb
 1010              		.thumb_func
 1011              		.fpu fpv4-sp-d16
 1012              		.type	_Z18check_DHCP_timeoutv, %function
 1013              	_Z18check_DHCP_timeoutv:
 1014              		@ args = 0, pretend = 0, frame = 0
 1015              		@ frame_needed = 0, uses_anonymous_args = 0
 1016 0000 70B5     		push	{r4, r5, r6, lr}
 1017 0002 214C     		ldr	r4, .L254
 1018 0004 94F90030 		ldrsb	r3, [r4]
 1019 0008 012B     		cmp	r3, #1
 1020 000a 19DD     		ble	.L253
 1021 000c 1F4D     		ldr	r5, .L254+4
 1022 000e 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1023 0010 013B     		subs	r3, r3, #1
 1024 0012 062B     		cmp	r3, #6
 1025 0014 31D8     		bhi	.L245
 1026 0016 DFE803F0 		tbb	[pc, r3]
ARM GAS  /tmp/ccFvoMMa.s 			page 19


 1027              	.L242:
 1028 001a 10       		.byte	(.L241-.L242)/2
 1029 001b 04       		.byte	(.L243-.L242)/2
 1030 001c 30       		.byte	(.L245-.L242)/2
 1031 001d 04       		.byte	(.L243-.L242)/2
 1032 001e 30       		.byte	(.L245-.L242)/2
 1033 001f 30       		.byte	(.L245-.L242)/2
 1034 0020 04       		.byte	(.L243-.L242)/2
 1035 0021 00       		.p2align 1
 1036              	.L243:
 1037 0022 FFF7FEFF 		bl	_Z18send_DHCP_DISCOVERv
 1038 0026 0120     		movs	r0, #1
 1039 0028 2870     		strb	r0, [r5]
 1040              	.L240:
 1041 002a 194D     		ldr	r5, .L254+8
 1042 002c 194A     		ldr	r2, .L254+12
 1043 002e 0023     		movs	r3, #0
 1044 0030 0A21     		movs	r1, #10
 1045 0032 2B60     		str	r3, [r5]
 1046 0034 2370     		strb	r3, [r4]
 1047 0036 1160     		str	r1, [r2]
 1048 0038 70BD     		pop	{r4, r5, r6, pc}
 1049              	.L241:
 1050 003a 0020     		movs	r0, #0
 1051 003c 2870     		strb	r0, [r5]
 1052 003e F4E7     		b	.L240
 1053              	.L253:
 1054 0040 134D     		ldr	r5, .L254+8
 1055 0042 144E     		ldr	r6, .L254+12
 1056 0044 2A68     		ldr	r2, [r5]
 1057 0046 3168     		ldr	r1, [r6]
 1058 0048 9142     		cmp	r1, r2
 1059 004a 14D2     		bcs	.L244
 1060 004c 0F4A     		ldr	r2, .L254+4
 1061 004e 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1062 0050 022A     		cmp	r2, #2
 1063 0052 14D0     		beq	.L238
 1064 0054 042A     		cmp	r2, #4
 1065 0056 12D0     		beq	.L238
 1066 0058 012A     		cmp	r2, #1
 1067 005a 03D1     		bne	.L237
 1068 005c FFF7FEFF 		bl	_Z18send_DHCP_DISCOVERv
 1069 0060 94F90030 		ldrsb	r3, [r4]
 1070              	.L237:
 1071 0064 0022     		movs	r2, #0
 1072 0066 2A60     		str	r2, [r5]
 1073 0068 2A68     		ldr	r2, [r5]
 1074 006a 0133     		adds	r3, r3, #1
 1075 006c 0A32     		adds	r2, r2, #10
 1076 006e 2370     		strb	r3, [r4]
 1077 0070 3260     		str	r2, [r6]
 1078 0072 0120     		movs	r0, #1
 1079 0074 70BD     		pop	{r4, r5, r6, pc}
 1080              	.L244:
 1081 0076 0120     		movs	r0, #1
 1082 0078 70BD     		pop	{r4, r5, r6, pc}
 1083              	.L245:
ARM GAS  /tmp/ccFvoMMa.s 			page 20


 1084 007a 0120     		movs	r0, #1
 1085 007c D5E7     		b	.L240
 1086              	.L238:
 1087 007e FFF7FEFF 		bl	_Z17send_DHCP_REQUESTv
 1088 0082 94F90030 		ldrsb	r3, [r4]
 1089 0086 EDE7     		b	.L237
 1090              	.L255:
 1091              		.align	2
 1092              	.L254:
 1093 0088 00000000 		.word	.LANCHOR15
 1094 008c 00000000 		.word	.LANCHOR11
 1095 0090 00000000 		.word	.LANCHOR16
 1096 0094 00000000 		.word	.LANCHOR17
 1097              		.size	_Z18check_DHCP_timeoutv, .-_Z18check_DHCP_timeoutv
 1098              		.section	.text._Z19check_DHCP_leasedIPv,"ax",%progbits
 1099              		.align	1
 1100              		.p2align 2,,3
 1101              		.global	_Z19check_DHCP_leasedIPv
 1102              		.syntax unified
 1103              		.thumb
 1104              		.thumb_func
 1105              		.fpu fpv4-sp-d16
 1106              		.type	_Z19check_DHCP_leasedIPv, %function
 1107              	_Z19check_DHCP_leasedIPv:
 1108              		@ args = 0, pretend = 0, frame = 0
 1109              		@ frame_needed = 0, uses_anonymous_args = 0
 1110 0000 10B5     		push	{r4, lr}
 1111 0002 4FF4D850 		mov	r0, #6912
 1112 0006 82B0     		sub	sp, sp, #8
 1113 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1114 000c 0321     		movs	r1, #3
 1115 000e 0446     		mov	r4, r0
 1116 0010 4FF4D850 		mov	r0, #6912
 1117 0014 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1118 0018 084A     		ldr	r2, .L258
 1119 001a 094B     		ldr	r3, .L258+4
 1120 001c 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 1121 001e 0949     		ldr	r1, .L258+8
 1122 0020 41F28832 		movw	r2, #5000
 1123 0024 0092     		str	r2, [sp]
 1124 0026 1122     		movs	r2, #17
 1125 0028 FFF7FEFF 		bl	_Z6sendtohPKhtS0_t
 1126 002c 2146     		mov	r1, r4
 1127 002e 4FF4D850 		mov	r0, #6912
 1128 0032 02B0     		add	sp, sp, #8
 1129              		@ sp needed
 1130 0034 BDE81040 		pop	{r4, lr}
 1131 0038 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 1132              	.L259:
 1133              		.align	2
 1134              	.L258:
 1135 003c 00000000 		.word	.LANCHOR10
 1136 0040 00000000 		.word	.LANCHOR0
 1137 0044 00000000 		.word	.LC0
 1138              		.size	_Z19check_DHCP_leasedIPv, .-_Z19check_DHCP_leasedIPv
 1139              		.section	.text._Z8DHCP_runv,"ax",%progbits
 1140              		.align	1
ARM GAS  /tmp/ccFvoMMa.s 			page 21


 1141              		.p2align 2,,3
 1142              		.global	_Z8DHCP_runv
 1143              		.syntax unified
 1144              		.thumb
 1145              		.thumb_func
 1146              		.fpu fpv4-sp-d16
 1147              		.type	_Z8DHCP_runv, %function
 1148              	_Z8DHCP_runv:
 1149              		@ args = 0, pretend = 0, frame = 8
 1150              		@ frame_needed = 0, uses_anonymous_args = 0
 1151 0000 70B5     		push	{r4, r5, r6, lr}
 1152 0002 7F4C     		ldr	r4, .L298
 1153 0004 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1154 0006 062B     		cmp	r3, #6
 1155 0008 82B0     		sub	sp, sp, #8
 1156 000a 3DD0     		beq	.L282
 1157 000c 7D4D     		ldr	r5, .L298+4
 1158 000e 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1159 0010 4001     		lsls	r0, r0, #5
 1160 0012 00F54270 		add	r0, r0, #776
 1161 0016 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1162 001a 2228     		cmp	r0, #34
 1163 001c 16D1     		bne	.L293
 1164 001e 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1165 0020 FFF7FEFF 		bl	_Z9IsSendingh
 1166 0024 28B1     		cbz	r0, .L272
 1167              	.L263:
 1168 0026 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1169 0028 FFF7FEFF 		bl	_Z17CheckSendCompleteh
 1170 002c 764B     		ldr	r3, .L298+8
 1171 002e 1860     		str	r0, [r3]
 1172 0030 38B3     		cbz	r0, .L291
 1173              	.L272:
 1174 0032 FFF7FEFF 		bl	_Z12parseDHCPMSGv
 1175 0036 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1176 0038 C5B2     		uxtb	r5, r0
 1177 003a 082B     		cmp	r3, #8
 1178 003c 21D8     		bhi	.L291
 1179 003e DFE803F0 		tbb	[pc, r3]
 1180              	.L265:
 1181 0042 34       		.byte	(.L264-.L265)/2
 1182 0043 11       		.byte	(.L266-.L265)/2
 1183 0044 3C       		.byte	(.L267-.L265)/2
 1184 0045 4B       		.byte	(.L268-.L265)/2
 1185 0046 56       		.byte	(.L269-.L265)/2
 1186 0047 20       		.byte	(.L291-.L265)/2
 1187 0048 20       		.byte	(.L291-.L265)/2
 1188 0049 66       		.byte	(.L270-.L265)/2
 1189 004a 26       		.byte	(.L271-.L265)/2
 1190 004b 00       		.p2align 1
 1191              	.L293:
 1192 004c 0023     		movs	r3, #0
 1193 004e 4422     		movs	r2, #68
 1194 0050 0221     		movs	r1, #2
 1195 0052 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1196 0054 FFF7FEFF 		bl	_Z6sockethhth
 1197 0058 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
ARM GAS  /tmp/ccFvoMMa.s 			page 22


 1198 005a FFF7FEFF 		bl	_Z9IsSendingh
 1199 005e 0028     		cmp	r0, #0
 1200 0060 E1D1     		bne	.L263
 1201 0062 E6E7     		b	.L272
 1202              	.L266:
 1203 0064 022D     		cmp	r5, #2
 1204 0066 65D1     		bne	.L273
 1205 0068 684A     		ldr	r2, .L298+12
 1206 006a 694B     		ldr	r3, .L298+16
 1207 006c 117C     		ldrb	r1, [r2, #16]	@ zero_extendqisi2
 1208 006e 507C     		ldrb	r0, [r2, #17]	@ zero_extendqisi2
 1209 0070 1970     		strb	r1, [r3]
 1210 0072 917C     		ldrb	r1, [r2, #18]	@ zero_extendqisi2
 1211 0074 D27C     		ldrb	r2, [r2, #19]	@ zero_extendqisi2
 1212 0076 5870     		strb	r0, [r3, #1]
 1213 0078 9970     		strb	r1, [r3, #2]
 1214 007a DA70     		strb	r2, [r3, #3]
 1215 007c FFF7FEFF 		bl	_Z17send_DHCP_REQUESTv
 1216 0080 2570     		strb	r5, [r4]
 1217              	.L291:
 1218 0082 0120     		movs	r0, #1
 1219              	.L261:
 1220 0084 02B0     		add	sp, sp, #8
 1221              		@ sp needed
 1222 0086 70BD     		pop	{r4, r5, r6, pc}
 1223              	.L282:
 1224 0088 0520     		movs	r0, #5
 1225 008a 02B0     		add	sp, sp, #8
 1226              		@ sp needed
 1227 008c 70BD     		pop	{r4, r5, r6, pc}
 1228              	.L271:
 1229 008e 614B     		ldr	r3, .L298+20
 1230 0090 1A68     		ldr	r2, [r3]
 1231 0092 032A     		cmp	r2, #3
 1232 0094 F5D9     		bls	.L291
 1233 0096 6048     		ldr	r0, .L298+24
 1234 0098 6049     		ldr	r1, .L298+28
 1235 009a 0022     		movs	r2, #0
 1236 009c 0A25     		movs	r5, #10
 1237 009e 0560     		str	r5, [r0]
 1238 00a0 0A70     		strb	r2, [r1]
 1239 00a2 1A60     		str	r2, [r3]
 1240 00a4 2270     		strb	r2, [r4]
 1241 00a6 0120     		movs	r0, #1
 1242 00a8 ECE7     		b	.L261
 1243              	.L264:
 1244 00aa 594B     		ldr	r3, .L298+16
 1245 00ac 0022     		movs	r2, #0
 1246 00ae 1A60     		str	r2, [r3]
 1247 00b0 FFF7FEFF 		bl	_Z18send_DHCP_DISCOVERv
 1248 00b4 0120     		movs	r0, #1
 1249 00b6 2070     		strb	r0, [r4]
 1250 00b8 E4E7     		b	.L261
 1251              	.L267:
 1252 00ba 052D     		cmp	r5, #5
 1253 00bc 7FD0     		beq	.L294
 1254 00be 062D     		cmp	r5, #6
ARM GAS  /tmp/ccFvoMMa.s 			page 23


 1255 00c0 38D1     		bne	.L273
 1256 00c2 5448     		ldr	r0, .L298+20
 1257 00c4 554D     		ldr	r5, .L298+28
 1258 00c6 544A     		ldr	r2, .L298+24
 1259 00c8 0023     		movs	r3, #0
 1260 00ca 0A21     		movs	r1, #10
 1261 00cc 0360     		str	r3, [r0]
 1262 00ce 0120     		movs	r0, #1
 1263 00d0 2B70     		strb	r3, [r5]
 1264 00d2 1160     		str	r1, [r2]
 1265 00d4 2070     		strb	r0, [r4]
 1266 00d6 D5E7     		b	.L261
 1267              	.L268:
 1268 00d8 514B     		ldr	r3, .L298+32
 1269 00da 1B68     		ldr	r3, [r3]
 1270 00dc 5A1C     		adds	r2, r3, #1
 1271 00de 04D0     		beq	.L285
 1272 00e0 4C4D     		ldr	r5, .L298+20
 1273 00e2 2A68     		ldr	r2, [r5]
 1274 00e4 B2EB530F 		cmp	r2, r3, lsr #1
 1275 00e8 3ED8     		bhi	.L295
 1276              	.L285:
 1277 00ea 0420     		movs	r0, #4
 1278 00ec CAE7     		b	.L261
 1279              	.L269:
 1280 00ee 052D     		cmp	r5, #5
 1281 00f0 23D0     		beq	.L296
 1282 00f2 062D     		cmp	r5, #6
 1283 00f4 1ED1     		bne	.L273
 1284 00f6 474A     		ldr	r2, .L298+20
 1285 00f8 484D     		ldr	r5, .L298+28
 1286 00fa 4749     		ldr	r1, .L298+24
 1287 00fc 0023     		movs	r3, #0
 1288 00fe 0A20     		movs	r0, #10
 1289 0100 1360     		str	r3, [r2]
 1290 0102 0122     		movs	r2, #1
 1291 0104 0860     		str	r0, [r1]
 1292 0106 2B70     		strb	r3, [r5]
 1293 0108 2270     		strb	r2, [r4]
 1294 010a 0420     		movs	r0, #4
 1295 010c BAE7     		b	.L261
 1296              	.L270:
 1297 010e 3E4B     		ldr	r3, .L298+8
 1298 0110 1B68     		ldr	r3, [r3]
 1299 0112 0D33     		adds	r3, r3, #13
 1300 0114 42D1     		bne	.L277
 1301              	.L292:
 1302 0116 434B     		ldr	r3, .L298+36
 1303 0118 404D     		ldr	r5, .L298+28
 1304 011a 1B68     		ldr	r3, [r3]
 1305 011c 9847     		blx	r3
 1306 011e 3D4A     		ldr	r2, .L298+20
 1307 0120 3D49     		ldr	r1, .L298+24
 1308 0122 0023     		movs	r3, #0
 1309 0124 0A20     		movs	r0, #10
 1310 0126 1360     		str	r3, [r2]
 1311 0128 0322     		movs	r2, #3
ARM GAS  /tmp/ccFvoMMa.s 			page 24


 1312 012a 0860     		str	r0, [r1]
 1313 012c 2B70     		strb	r3, [r5]
 1314 012e 2270     		strb	r2, [r4]
 1315 0130 0220     		movs	r0, #2
 1316 0132 A7E7     		b	.L261
 1317              	.L273:
 1318 0134 FFF7FEFF 		bl	_Z18check_DHCP_timeoutv
 1319 0138 A4E7     		b	.L261
 1320              	.L296:
 1321 013a 3B4A     		ldr	r2, .L298+40
 1322 013c 344B     		ldr	r3, .L298+16
 1323 013e 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 1324 0140 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 1325 0142 364D     		ldr	r5, .L298+28
 1326 0144 0026     		movs	r6, #0
 1327 0146 8842     		cmp	r0, r1
 1328 0148 2E70     		strb	r6, [r5]
 1329 014a 4AD0     		beq	.L297
 1330              	.L280:
 1331 014c 374B     		ldr	r3, .L298+44
 1332 014e 1B68     		ldr	r3, [r3]
 1333 0150 9847     		blx	r3
 1334 0152 0320     		movs	r0, #3
 1335              	.L281:
 1336 0154 2F49     		ldr	r1, .L298+20
 1337 0156 304A     		ldr	r2, .L298+24
 1338 0158 0023     		movs	r3, #0
 1339 015a 0B60     		str	r3, [r1]
 1340 015c 2B70     		strb	r3, [r5]
 1341 015e 0A21     		movs	r1, #10
 1342 0160 0323     		movs	r3, #3
 1343 0162 1160     		str	r1, [r2]
 1344 0164 2370     		strb	r3, [r4]
 1345 0166 8DE7     		b	.L261
 1346              	.L295:
 1347 0168 3148     		ldr	r0, .L298+48
 1348 016a 294A     		ldr	r2, .L298+16
 1349 016c 0168     		ldr	r1, [r0]
 1350 016e 2E4B     		ldr	r3, .L298+40
 1351 0170 1678     		ldrb	r6, [r2]	@ zero_extendqisi2
 1352 0172 1E70     		strb	r6, [r3]
 1353 0174 0131     		adds	r1, r1, #1
 1354 0176 0160     		str	r1, [r0]
 1355 0178 5078     		ldrb	r0, [r2, #1]	@ zero_extendqisi2
 1356 017a 9178     		ldrb	r1, [r2, #2]	@ zero_extendqisi2
 1357 017c D278     		ldrb	r2, [r2, #3]	@ zero_extendqisi2
 1358 017e 5870     		strb	r0, [r3, #1]
 1359 0180 9970     		strb	r1, [r3, #2]
 1360 0182 DA70     		strb	r2, [r3, #3]
 1361 0184 FFF7FEFF 		bl	_Z17send_DHCP_REQUESTv
 1362 0188 2349     		ldr	r1, .L298+24
 1363 018a 244A     		ldr	r2, .L298+28
 1364 018c 0A20     		movs	r0, #10
 1365 018e 0023     		movs	r3, #0
 1366 0190 0860     		str	r0, [r1]
 1367 0192 0420     		movs	r0, #4
 1368 0194 1370     		strb	r3, [r2]
ARM GAS  /tmp/ccFvoMMa.s 			page 25


 1369 0196 2B60     		str	r3, [r5]
 1370 0198 2070     		strb	r0, [r4]
 1371 019a 73E7     		b	.L261
 1372              	.L277:
 1373 019c FFF7FEFF 		bl	_Z17send_DHCP_DECLINEv
 1374 01a0 244B     		ldr	r3, .L298+52
 1375 01a2 1E4D     		ldr	r5, .L298+28
 1376 01a4 1B68     		ldr	r3, [r3]
 1377 01a6 9847     		blx	r3
 1378 01a8 1A4A     		ldr	r2, .L298+20
 1379 01aa 1B49     		ldr	r1, .L298+24
 1380 01ac 0023     		movs	r3, #0
 1381 01ae 0A20     		movs	r0, #10
 1382 01b0 1360     		str	r3, [r2]
 1383 01b2 0822     		movs	r2, #8
 1384 01b4 0860     		str	r0, [r1]
 1385 01b6 2B70     		strb	r3, [r5]
 1386 01b8 2270     		strb	r2, [r4]
 1387 01ba 0120     		movs	r0, #1
 1388 01bc 62E7     		b	.L261
 1389              	.L294:
 1390 01be 0422     		movs	r2, #4
 1391 01c0 0DEB0201 		add	r1, sp, r2
 1392 01c4 4FF47060 		mov	r0, #3840
 1393 01c8 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 1394 01cc 104A     		ldr	r2, .L298+16
 1395 01ce 019B     		ldr	r3, [sp, #4]
 1396 01d0 1268     		ldr	r2, [r2]
 1397 01d2 9A42     		cmp	r2, r3
 1398 01d4 9FD0     		beq	.L292
 1399 01d6 FFF7FEFF 		bl	_Z19check_DHCP_leasedIPv
 1400 01da 0723     		movs	r3, #7
 1401 01dc 2370     		strb	r3, [r4]
 1402 01de 0120     		movs	r0, #1
 1403 01e0 50E7     		b	.L261
 1404              	.L297:
 1405 01e2 5078     		ldrb	r0, [r2, #1]	@ zero_extendqisi2
 1406 01e4 5978     		ldrb	r1, [r3, #1]	@ zero_extendqisi2
 1407 01e6 8842     		cmp	r0, r1
 1408 01e8 B0D1     		bne	.L280
 1409 01ea 9078     		ldrb	r0, [r2, #2]	@ zero_extendqisi2
 1410 01ec 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 1411 01ee 8842     		cmp	r0, r1
 1412 01f0 ACD1     		bne	.L280
 1413 01f2 D278     		ldrb	r2, [r2, #3]	@ zero_extendqisi2
 1414 01f4 DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 1415 01f6 9A42     		cmp	r2, r3
 1416 01f8 A8D1     		bne	.L280
 1417 01fa 0420     		movs	r0, #4
 1418 01fc AAE7     		b	.L281
 1419              	.L299:
 1420 01fe 00BF     		.align	2
 1421              	.L298:
 1422 0200 00000000 		.word	.LANCHOR11
 1423 0204 00000000 		.word	.LANCHOR10
 1424 0208 00000000 		.word	.LANCHOR18
 1425 020c 00000000 		.word	.LANCHOR7
ARM GAS  /tmp/ccFvoMMa.s 			page 26


 1426 0210 00000000 		.word	.LANCHOR0
 1427 0214 00000000 		.word	.LANCHOR16
 1428 0218 00000000 		.word	.LANCHOR17
 1429 021c 00000000 		.word	.LANCHOR15
 1430 0220 00000000 		.word	.LANCHOR13
 1431 0224 00000000 		.word	.LANCHOR4
 1432 0228 00000000 		.word	.LANCHOR19
 1433 022c 00000000 		.word	.LANCHOR5
 1434 0230 00000000 		.word	.LANCHOR8
 1435 0234 00000000 		.word	.LANCHOR6
 1436              		.size	_Z8DHCP_runv, .-_Z8DHCP_runv
 1437              		.section	.text._Z9DHCP_inithmPKc,"ax",%progbits
 1438              		.align	1
 1439              		.p2align 2,,3
 1440              		.global	_Z9DHCP_inithmPKc
 1441              		.syntax unified
 1442              		.thumb
 1443              		.thumb_func
 1444              		.fpu fpv4-sp-d16
 1445              		.type	_Z9DHCP_inithmPKc, %function
 1446              	_Z9DHCP_inithmPKc:
 1447              		@ args = 0, pretend = 0, frame = 8
 1448              		@ frame_needed = 0, uses_anonymous_args = 0
 1449 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1450 0004 2D4F     		ldr	r7, .L303
 1451 0006 2E4E     		ldr	r6, .L303+4
 1452 0008 83B0     		sub	sp, sp, #12
 1453 000a 0546     		mov	r5, r0
 1454 000c 0C46     		mov	r4, r1
 1455 000e 3846     		mov	r0, r7
 1456 0010 1146     		mov	r1, r2
 1457 0012 1022     		movs	r2, #16
 1458 0014 FFF7FEFF 		bl	strncpy
 1459 0018 0023     		movs	r3, #0
 1460 001a 3146     		mov	r1, r6
 1461 001c 0622     		movs	r2, #6
 1462 001e 4FF41060 		mov	r0, #2304
 1463 0022 FB73     		strb	r3, [r7, #15]
 1464 0024 0193     		str	r3, [sp, #4]
 1465 0026 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 1466 002a 7178     		ldrb	r1, [r6, #1]	@ zero_extendqisi2
 1467 002c 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 1468 002e B278     		ldrb	r2, [r6, #2]	@ zero_extendqisi2
 1469 0030 F078     		ldrb	r0, [r6, #3]	@ zero_extendqisi2
 1470 0032 0B43     		orrs	r3, r3, r1
 1471 0034 1343     		orrs	r3, r3, r2
 1472 0036 3179     		ldrb	r1, [r6, #4]	@ zero_extendqisi2
 1473 0038 7279     		ldrb	r2, [r6, #5]	@ zero_extendqisi2
 1474 003a 0343     		orrs	r3, r3, r0
 1475 003c 0B43     		orrs	r3, r3, r1
 1476 003e 1343     		orrs	r3, r3, r2
 1477 0040 08D1     		bne	.L301
 1478 0042 2048     		ldr	r0, .L303+8
 1479 0044 3060     		str	r0, [r6]
 1480 0046 B380     		strh	r3, [r6, #4]	@ movhi
 1481 0048 3146     		mov	r1, r6
 1482 004a 0622     		movs	r2, #6
ARM GAS  /tmp/ccFvoMMa.s 			page 27


 1483 004c 4FF41060 		mov	r0, #2304
 1484 0050 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1485              	.L301:
 1486 0054 1C48     		ldr	r0, .L303+12
 1487 0056 1D49     		ldr	r1, .L303+16
 1488 0058 1D4B     		ldr	r3, .L303+20
 1489 005a 0570     		strb	r5, [r0]
 1490 005c 1D4A     		ldr	r2, .L303+24
 1491 005e DFF88490 		ldr	r9, .L303+40
 1492 0062 1D4E     		ldr	r6, .L303+28
 1493 0064 1D4F     		ldr	r7, .L303+32
 1494 0066 1460     		str	r4, [r2]
 1495 0068 4FF0FF30 		mov	r0, #-1
 1496 006c 0860     		str	r0, [r1]
 1497 006e 0120     		movs	r0, #1
 1498 0070 0025     		movs	r5, #0
 1499 0072 1860     		str	r0, [r3]
 1500 0074 4FF00A08 		mov	r8, #10
 1501 0078 01A9     		add	r1, sp, #4
 1502 007a 0422     		movs	r2, #4
 1503 007c 4FF47060 		mov	r0, #3840
 1504 0080 C9F80050 		str	r5, [r9]
 1505 0084 3570     		strb	r5, [r6]
 1506 0086 C7F80080 		str	r8, [r7]
 1507 008a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1508 008e 01A9     		add	r1, sp, #4
 1509 0090 0422     		movs	r2, #4
 1510 0092 4FF47060 		mov	r0, #3840
 1511 0096 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1512 009a 01A9     		add	r1, sp, #4
 1513 009c 0422     		movs	r2, #4
 1514 009e 4FF48070 		mov	r0, #256
 1515 00a2 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1516 00a6 0E4B     		ldr	r3, .L303+36
 1517 00a8 C9F80050 		str	r5, [r9]
 1518 00ac C7F80080 		str	r8, [r7]
 1519 00b0 3570     		strb	r5, [r6]
 1520 00b2 1D70     		strb	r5, [r3]
 1521 00b4 03B0     		add	sp, sp, #12
 1522              		@ sp needed
 1523 00b6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1524              	.L304:
 1525 00ba 00BF     		.align	2
 1526              	.L303:
 1527 00bc 00000000 		.word	.LANCHOR9
 1528 00c0 00000000 		.word	.LANCHOR3
 1529 00c4 0008DC00 		.word	14419968
 1530 00c8 00000000 		.word	.LANCHOR10
 1531 00cc 00000000 		.word	.LANCHOR13
 1532 00d0 00000000 		.word	.LANCHOR18
 1533 00d4 00000000 		.word	.LANCHOR8
 1534 00d8 00000000 		.word	.LANCHOR15
 1535 00dc 00000000 		.word	.LANCHOR17
 1536 00e0 00000000 		.word	.LANCHOR11
 1537 00e4 00000000 		.word	.LANCHOR16
 1538              		.size	_Z9DHCP_inithmPKc, .-_Z9DHCP_inithmPKc
 1539              		.section	.text._Z18reset_DHCP_timeoutv,"ax",%progbits
ARM GAS  /tmp/ccFvoMMa.s 			page 28


 1540              		.align	1
 1541              		.p2align 2,,3
 1542              		.global	_Z18reset_DHCP_timeoutv
 1543              		.syntax unified
 1544              		.thumb
 1545              		.thumb_func
 1546              		.fpu fpv4-sp-d16
 1547              		.type	_Z18reset_DHCP_timeoutv, %function
 1548              	_Z18reset_DHCP_timeoutv:
 1549              		@ args = 0, pretend = 0, frame = 0
 1550              		@ frame_needed = 0, uses_anonymous_args = 0
 1551              		@ link register save eliminated.
 1552 0000 0548     		ldr	r0, .L307
 1553 0002 064A     		ldr	r2, .L307+4
 1554 0004 10B4     		push	{r4}
 1555 0006 0023     		movs	r3, #0
 1556 0008 054C     		ldr	r4, .L307+8
 1557 000a 0370     		strb	r3, [r0]
 1558 000c 0A21     		movs	r1, #10
 1559 000e 2360     		str	r3, [r4]
 1560 0010 1160     		str	r1, [r2]
 1561 0012 5DF8044B 		ldr	r4, [sp], #4
 1562 0016 7047     		bx	lr
 1563              	.L308:
 1564              		.align	2
 1565              	.L307:
 1566 0018 00000000 		.word	.LANCHOR15
 1567 001c 00000000 		.word	.LANCHOR17
 1568 0020 00000000 		.word	.LANCHOR16
 1569              		.size	_Z18reset_DHCP_timeoutv, .-_Z18reset_DHCP_timeoutv
 1570              		.section	.text._Z17DHCP_time_handlerv,"ax",%progbits
 1571              		.align	1
 1572              		.p2align 2,,3
 1573              		.global	_Z17DHCP_time_handlerv
 1574              		.syntax unified
 1575              		.thumb
 1576              		.thumb_func
 1577              		.fpu fpv4-sp-d16
 1578              		.type	_Z17DHCP_time_handlerv, %function
 1579              	_Z17DHCP_time_handlerv:
 1580              		@ args = 0, pretend = 0, frame = 0
 1581              		@ frame_needed = 0, uses_anonymous_args = 0
 1582              		@ link register save eliminated.
 1583 0000 024A     		ldr	r2, .L310
 1584 0002 1368     		ldr	r3, [r2]
 1585 0004 0133     		adds	r3, r3, #1
 1586 0006 1360     		str	r3, [r2]
 1587 0008 7047     		bx	lr
 1588              	.L311:
 1589 000a 00BF     		.align	2
 1590              	.L310:
 1591 000c 00000000 		.word	.LANCHOR16
 1592              		.size	_Z17DHCP_time_handlerv, .-_Z17DHCP_time_handlerv
 1593              		.section	.text._Z13getIPfromDHCPPh,"ax",%progbits
 1594              		.align	1
 1595              		.p2align 2,,3
 1596              		.global	_Z13getIPfromDHCPPh
ARM GAS  /tmp/ccFvoMMa.s 			page 29


 1597              		.syntax unified
 1598              		.thumb
 1599              		.thumb_func
 1600              		.fpu fpv4-sp-d16
 1601              		.type	_Z13getIPfromDHCPPh, %function
 1602              	_Z13getIPfromDHCPPh:
 1603              		@ args = 0, pretend = 0, frame = 0
 1604              		@ frame_needed = 0, uses_anonymous_args = 0
 1605              		@ link register save eliminated.
 1606 0000 044B     		ldr	r3, .L313
 1607 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1608 0004 0270     		strb	r2, [r0]
 1609 0006 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 1610 0008 4270     		strb	r2, [r0, #1]
 1611 000a 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1612 000c 8270     		strb	r2, [r0, #2]
 1613 000e DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 1614 0010 C370     		strb	r3, [r0, #3]
 1615 0012 7047     		bx	lr
 1616              	.L314:
 1617              		.align	2
 1618              	.L313:
 1619 0014 00000000 		.word	.LANCHOR0
 1620              		.size	_Z13getIPfromDHCPPh, .-_Z13getIPfromDHCPPh
 1621              		.section	.text._Z13getGWfromDHCPPh,"ax",%progbits
 1622              		.align	1
 1623              		.p2align 2,,3
 1624              		.global	_Z13getGWfromDHCPPh
 1625              		.syntax unified
 1626              		.thumb
 1627              		.thumb_func
 1628              		.fpu fpv4-sp-d16
 1629              		.type	_Z13getGWfromDHCPPh, %function
 1630              	_Z13getGWfromDHCPPh:
 1631              		@ args = 0, pretend = 0, frame = 0
 1632              		@ frame_needed = 0, uses_anonymous_args = 0
 1633              		@ link register save eliminated.
 1634 0000 044B     		ldr	r3, .L316
 1635 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1636 0004 0270     		strb	r2, [r0]
 1637 0006 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 1638 0008 4270     		strb	r2, [r0, #1]
 1639 000a 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1640 000c 8270     		strb	r2, [r0, #2]
 1641 000e DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 1642 0010 C370     		strb	r3, [r0, #3]
 1643 0012 7047     		bx	lr
 1644              	.L317:
 1645              		.align	2
 1646              	.L316:
 1647 0014 00000000 		.word	.LANCHOR2
 1648              		.size	_Z13getGWfromDHCPPh, .-_Z13getGWfromDHCPPh
 1649              		.section	.text._Z13getSNfromDHCPPh,"ax",%progbits
 1650              		.align	1
 1651              		.p2align 2,,3
 1652              		.global	_Z13getSNfromDHCPPh
 1653              		.syntax unified
ARM GAS  /tmp/ccFvoMMa.s 			page 30


 1654              		.thumb
 1655              		.thumb_func
 1656              		.fpu fpv4-sp-d16
 1657              		.type	_Z13getSNfromDHCPPh, %function
 1658              	_Z13getSNfromDHCPPh:
 1659              		@ args = 0, pretend = 0, frame = 0
 1660              		@ frame_needed = 0, uses_anonymous_args = 0
 1661              		@ link register save eliminated.
 1662 0000 044B     		ldr	r3, .L319
 1663 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1664 0004 0270     		strb	r2, [r0]
 1665 0006 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 1666 0008 4270     		strb	r2, [r0, #1]
 1667 000a 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1668 000c 8270     		strb	r2, [r0, #2]
 1669 000e DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 1670 0010 C370     		strb	r3, [r0, #3]
 1671 0012 7047     		bx	lr
 1672              	.L320:
 1673              		.align	2
 1674              	.L319:
 1675 0014 00000000 		.word	.LANCHOR1
 1676              		.size	_Z13getSNfromDHCPPh, .-_Z13getSNfromDHCPPh
 1677              		.section	.text._Z14getDNSfromDHCPPh,"ax",%progbits
 1678              		.align	1
 1679              		.p2align 2,,3
 1680              		.global	_Z14getDNSfromDHCPPh
 1681              		.syntax unified
 1682              		.thumb
 1683              		.thumb_func
 1684              		.fpu fpv4-sp-d16
 1685              		.type	_Z14getDNSfromDHCPPh, %function
 1686              	_Z14getDNSfromDHCPPh:
 1687              		@ args = 0, pretend = 0, frame = 0
 1688              		@ frame_needed = 0, uses_anonymous_args = 0
 1689              		@ link register save eliminated.
 1690 0000 044B     		ldr	r3, .L322
 1691 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1692 0004 0270     		strb	r2, [r0]
 1693 0006 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 1694 0008 4270     		strb	r2, [r0, #1]
 1695 000a 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1696 000c 8270     		strb	r2, [r0, #2]
 1697 000e DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 1698 0010 C370     		strb	r3, [r0, #3]
 1699 0012 7047     		bx	lr
 1700              	.L323:
 1701              		.align	2
 1702              	.L322:
 1703 0014 00000000 		.word	.LANCHOR14
 1704              		.size	_Z14getDNSfromDHCPPh, .-_Z14getDNSfromDHCPPh
 1705              		.section	.text._Z16getDHCPLeasetimev,"ax",%progbits
 1706              		.align	1
 1707              		.p2align 2,,3
 1708              		.global	_Z16getDHCPLeasetimev
 1709              		.syntax unified
 1710              		.thumb
ARM GAS  /tmp/ccFvoMMa.s 			page 31


 1711              		.thumb_func
 1712              		.fpu fpv4-sp-d16
 1713              		.type	_Z16getDHCPLeasetimev, %function
 1714              	_Z16getDHCPLeasetimev:
 1715              		@ args = 0, pretend = 0, frame = 0
 1716              		@ frame_needed = 0, uses_anonymous_args = 0
 1717              		@ link register save eliminated.
 1718 0000 014B     		ldr	r3, .L325
 1719 0002 1868     		ldr	r0, [r3]
 1720 0004 7047     		bx	lr
 1721              	.L326:
 1722 0006 00BF     		.align	2
 1723              	.L325:
 1724 0008 00000000 		.word	.LANCHOR13
 1725              		.size	_Z16getDHCPLeasetimev, .-_Z16getDHCPLeasetimev
 1726              		.global	dhcp_ip_conflict
 1727              		.global	dhcp_ip_update
 1728              		.global	dhcp_ip_assign
 1729              		.global	DHCP_CHADDR
 1730              		.global	HOST_NAME
 1731              		.global	dhcpLastSendStatus
 1732              		.global	DHCP_XID
 1733              		.global	dhcp_tick_next
 1734              		.global	dhcp_tick_1s
 1735              		.global	dhcp_lease_time
 1736              		.global	dhcp_retry_count
 1737              		.global	dhcp_state
 1738              		.global	DHCP_allocated_dns
 1739              		.global	DHCP_allocated_sn
 1740              		.global	DHCP_allocated_gw
 1741              		.global	DHCP_allocated_ip
 1742              		.global	OLD_allocated_ip
 1743              		.global	DHCP_SIP
 1744              		.global	DHCP_SOCKET
 1745              		.section	.bss.DHCP_CHADDR,"aw",%nobits
 1746              		.align	2
 1747              		.set	.LANCHOR3,. + 0
 1748              		.type	DHCP_CHADDR, %object
 1749              		.size	DHCP_CHADDR, 6
 1750              	DHCP_CHADDR:
 1751 0000 00000000 		.space	6
 1751      0000
 1752              		.section	.bss.DHCP_SIP,"aw",%nobits
 1753              		.align	2
 1754              		.set	.LANCHOR12,. + 0
 1755              		.type	DHCP_SIP, %object
 1756              		.size	DHCP_SIP, 4
 1757              	DHCP_SIP:
 1758 0000 00000000 		.space	4
 1759              		.section	.bss.DHCP_SOCKET,"aw",%nobits
 1760              		.set	.LANCHOR10,. + 0
 1761              		.type	DHCP_SOCKET, %object
 1762              		.size	DHCP_SOCKET, 1
 1763              	DHCP_SOCKET:
 1764 0000 00       		.space	1
 1765              		.section	.bss.DHCP_XID,"aw",%nobits
 1766              		.align	2
ARM GAS  /tmp/ccFvoMMa.s 			page 32


 1767              		.set	.LANCHOR8,. + 0
 1768              		.type	DHCP_XID, %object
 1769              		.size	DHCP_XID, 4
 1770              	DHCP_XID:
 1771 0000 00000000 		.space	4
 1772              		.section	.bss.DHCP_allocated_dns,"aw",%nobits
 1773              		.align	2
 1774              		.set	.LANCHOR14,. + 0
 1775              		.type	DHCP_allocated_dns, %object
 1776              		.size	DHCP_allocated_dns, 4
 1777              	DHCP_allocated_dns:
 1778 0000 00000000 		.space	4
 1779              		.section	.bss.DHCP_allocated_gw,"aw",%nobits
 1780              		.align	2
 1781              		.set	.LANCHOR2,. + 0
 1782              		.type	DHCP_allocated_gw, %object
 1783              		.size	DHCP_allocated_gw, 4
 1784              	DHCP_allocated_gw:
 1785 0000 00000000 		.space	4
 1786              		.section	.bss.DHCP_allocated_ip,"aw",%nobits
 1787              		.align	2
 1788              		.set	.LANCHOR0,. + 0
 1789              		.type	DHCP_allocated_ip, %object
 1790              		.size	DHCP_allocated_ip, 4
 1791              	DHCP_allocated_ip:
 1792 0000 00000000 		.space	4
 1793              		.section	.bss.DHCP_allocated_sn,"aw",%nobits
 1794              		.align	2
 1795              		.set	.LANCHOR1,. + 0
 1796              		.type	DHCP_allocated_sn, %object
 1797              		.size	DHCP_allocated_sn, 4
 1798              	DHCP_allocated_sn:
 1799 0000 00000000 		.space	4
 1800              		.section	.bss.OLD_allocated_ip,"aw",%nobits
 1801              		.align	2
 1802              		.set	.LANCHOR19,. + 0
 1803              		.type	OLD_allocated_ip, %object
 1804              		.size	OLD_allocated_ip, 4
 1805              	OLD_allocated_ip:
 1806 0000 00000000 		.space	4
 1807              		.section	.bss._ZL17dhcpMessageBuffer,"aw",%nobits
 1808              		.align	2
 1809              		.set	.LANCHOR7,. + 0
 1810              		.type	_ZL17dhcpMessageBuffer, %object
 1811              		.size	_ZL17dhcpMessageBuffer, 548
 1812              	_ZL17dhcpMessageBuffer:
 1813 0000 00000000 		.space	548
 1813      00000000 
 1813      00000000 
 1813      00000000 
 1813      00000000 
 1814              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1815              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1816              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1817              	_ZL28cpu_irq_prev_interrupt_state:
 1818 0000 00       		.space	1
 1819              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  /tmp/ccFvoMMa.s 			page 33


 1820              		.align	2
 1821              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1822              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1823              	_ZL32cpu_irq_critical_section_counter:
 1824 0000 00000000 		.space	4
 1825              		.section	.bss.dhcpLastSendStatus,"aw",%nobits
 1826              		.align	2
 1827              		.set	.LANCHOR18,. + 0
 1828              		.type	dhcpLastSendStatus, %object
 1829              		.size	dhcpLastSendStatus, 4
 1830              	dhcpLastSendStatus:
 1831 0000 00000000 		.space	4
 1832              		.section	.bss.dhcp_lease_time,"aw",%nobits
 1833              		.align	2
 1834              		.set	.LANCHOR13,. + 0
 1835              		.type	dhcp_lease_time, %object
 1836              		.size	dhcp_lease_time, 4
 1837              	dhcp_lease_time:
 1838 0000 00000000 		.space	4
 1839              		.section	.bss.dhcp_retry_count,"aw",%nobits
 1840              		.set	.LANCHOR15,. + 0
 1841              		.type	dhcp_retry_count, %object
 1842              		.size	dhcp_retry_count, 1
 1843              	dhcp_retry_count:
 1844 0000 00       		.space	1
 1845              		.section	.bss.dhcp_state,"aw",%nobits
 1846              		.set	.LANCHOR11,. + 0
 1847              		.type	dhcp_state, %object
 1848              		.size	dhcp_state, 1
 1849              	dhcp_state:
 1850 0000 00       		.space	1
 1851              		.section	.bss.dhcp_tick_1s,"aw",%nobits
 1852              		.align	2
 1853              		.set	.LANCHOR16,. + 0
 1854              		.type	dhcp_tick_1s, %object
 1855              		.size	dhcp_tick_1s, 4
 1856              	dhcp_tick_1s:
 1857 0000 00000000 		.space	4
 1858              		.section	.bss.dhcp_tick_next,"aw",%nobits
 1859              		.align	2
 1860              		.set	.LANCHOR17,. + 0
 1861              		.type	dhcp_tick_next, %object
 1862              		.size	dhcp_tick_next, 4
 1863              	dhcp_tick_next:
 1864 0000 00000000 		.space	4
 1865              		.section	.data.HOST_NAME,"aw",%progbits
 1866              		.align	2
 1867              		.set	.LANCHOR9,. + 0
 1868              		.type	HOST_NAME, %object
 1869              		.size	HOST_NAME, 16
 1870              	HOST_NAME:
 1871 0000 44756574 		.ascii	"DuetEthernet\000"
 1871      45746865 
 1871      726E6574 
 1871      00
 1872 000d 000000   		.space	3
 1873              		.section	.data.dhcp_ip_assign,"aw",%progbits
ARM GAS  /tmp/ccFvoMMa.s 			page 34


 1874              		.align	2
 1875              		.set	.LANCHOR4,. + 0
 1876              		.type	dhcp_ip_assign, %object
 1877              		.size	dhcp_ip_assign, 4
 1878              	dhcp_ip_assign:
 1879 0000 00000000 		.word	_Z17default_ip_assignv
 1880              		.section	.data.dhcp_ip_conflict,"aw",%progbits
 1881              		.align	2
 1882              		.set	.LANCHOR6,. + 0
 1883              		.type	dhcp_ip_conflict, %object
 1884              		.size	dhcp_ip_conflict, 4
 1885              	dhcp_ip_conflict:
 1886 0000 00000000 		.word	_Z19default_ip_conflictv
 1887              		.section	.data.dhcp_ip_update,"aw",%progbits
 1888              		.align	2
 1889              		.set	.LANCHOR5,. + 0
 1890              		.type	dhcp_ip_update, %object
 1891              		.size	dhcp_ip_update, 4
 1892              	dhcp_ip_update:
 1893 0000 00000000 		.word	_Z17default_ip_updatev
 1894              		.section	.rodata._Z19check_DHCP_leasedIPv.str1.4,"aMS",%progbits,1
 1895              		.align	2
 1896              	.LC0:
 1897 0000 43484543 		.ascii	"CHECK_IP_CONFLICT\000"
 1897      4B5F4950 
 1897      5F434F4E 
 1897      464C4943 
 1897      5400
 1898              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
