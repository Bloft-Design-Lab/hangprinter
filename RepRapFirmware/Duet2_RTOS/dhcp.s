ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 1


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
  14              		.text
  15              		.section	.text._Z17default_ip_assignv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z17default_ip_assignv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z17default_ip_assignv, %function
  24              	_Z17default_ip_assignv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 08B5     		push	{r3, lr}
  28 0002 0849     		ldr	r1, .L4
  29 0004 4FF47060 		mov	r0, #3840
  30 0008 FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
  31 000c 0649     		ldr	r1, .L4+4
  32 000e 4FF4A060 		mov	r0, #1280
  33 0012 FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
  34 0016 0549     		ldr	r1, .L4+8
  35 0018 4FF48070 		mov	r0, #256
  36 001c BDE80840 		pop	{r3, lr}
  37 0020 FFF7FEBF 		b	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
  38              	.L5:
  39              		.align	2
  40              	.L4:
  41 0024 00000000 		.word	.LANCHOR0
  42 0028 00000000 		.word	.LANCHOR1
  43 002c 00000000 		.word	.LANCHOR2
  44              		.size	_Z17default_ip_assignv, .-_Z17default_ip_assignv
  45              		.section	.text._Z17default_ip_updatev,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.global	_Z17default_ip_updatev
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	_Z17default_ip_updatev, %function
  54              	_Z17default_ip_updatev:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57 0000 08B5     		push	{r3, lr}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 2


  58 0002 8021     		movs	r1, #128
  59 0004 0020     		movs	r0, #0
  60 0006 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  61 000a 0020     		movs	r0, #0
  62 000c FFF7FEFF 		bl	_Z12WIZCHIP_READm
  63 0010 FFF7FEFF 		bl	_Z17default_ip_assignv
  64 0014 0622     		movs	r2, #6
  65 0016 0349     		ldr	r1, .L8
  66 0018 4FF41060 		mov	r0, #2304
  67 001c BDE80840 		pop	{r3, lr}
  68 0020 FFF7FEBF 		b	_Z17WIZCHIP_WRITE_BUFmPKht
  69              	.L9:
  70              		.align	2
  71              	.L8:
  72 0024 00000000 		.word	.LANCHOR3
  73              		.size	_Z17default_ip_updatev, .-_Z17default_ip_updatev
  74              		.section	.text._Z19default_ip_conflictv,"ax",%progbits
  75              		.align	1
  76              		.p2align 2,,3
  77              		.global	_Z19default_ip_conflictv
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu fpv4-sp-d16
  82              		.type	_Z19default_ip_conflictv, %function
  83              	_Z19default_ip_conflictv:
  84              		@ args = 0, pretend = 0, frame = 0
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86 0000 08B5     		push	{r3, lr}
  87 0002 8021     		movs	r1, #128
  88 0004 0020     		movs	r0, #0
  89 0006 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  90 000a 0020     		movs	r0, #0
  91 000c FFF7FEFF 		bl	_Z12WIZCHIP_READm
  92 0010 0622     		movs	r2, #6
  93 0012 0349     		ldr	r1, .L12
  94 0014 4FF41060 		mov	r0, #2304
  95 0018 BDE80840 		pop	{r3, lr}
  96 001c FFF7FEBF 		b	_Z17WIZCHIP_WRITE_BUFmPKht
  97              	.L13:
  98              		.align	2
  99              	.L12:
 100 0020 00000000 		.word	.LANCHOR3
 101              		.size	_Z19default_ip_conflictv, .-_Z19default_ip_conflictv
 102              		.section	.text._Z15reg_dhcp_cbfuncPFvvES0_S0_,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	_Z15reg_dhcp_cbfuncPFvvES0_S0_
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu fpv4-sp-d16
 110              		.type	_Z15reg_dhcp_cbfuncPFvvES0_S0_, %function
 111              	_Z15reg_dhcp_cbfuncPFvvES0_S0_:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 3


 115 0000 F0B4     		push	{r4, r5, r6, r7}
 116 0002 084D     		ldr	r5, .L28
 117 0004 084E     		ldr	r6, .L28+4
 118 0006 094C     		ldr	r4, .L28+8
 119 0008 094B     		ldr	r3, .L28+12
 120 000a 0A4F     		ldr	r7, .L28+16
 121 000c 2E60     		str	r6, [r5]
 122 000e 0A4E     		ldr	r6, .L28+20
 123 0010 2760     		str	r7, [r4]
 124 0012 1E60     		str	r6, [r3]
 125 0014 00B1     		cbz	r0, .L15
 126 0016 2860     		str	r0, [r5]
 127              	.L15:
 128 0018 01B1     		cbz	r1, .L16
 129 001a 2160     		str	r1, [r4]
 130              	.L16:
 131 001c 02B1     		cbz	r2, .L14
 132 001e 1A60     		str	r2, [r3]
 133              	.L14:
 134 0020 F0BC     		pop	{r4, r5, r6, r7}
 135 0022 7047     		bx	lr
 136              	.L29:
 137              		.align	2
 138              	.L28:
 139 0024 00000000 		.word	.LANCHOR4
 140 0028 00000000 		.word	_Z17default_ip_assignv
 141 002c 00000000 		.word	.LANCHOR5
 142 0030 00000000 		.word	.LANCHOR6
 143 0034 00000000 		.word	_Z17default_ip_updatev
 144 0038 00000000 		.word	_Z19default_ip_conflictv
 145              		.size	_Z15reg_dhcp_cbfuncPFvvES0_S0_, .-_Z15reg_dhcp_cbfuncPFvvES0_S0_
 146              		.section	.text._Z11makeDHCPMSGv,"ax",%progbits
 147              		.align	1
 148              		.p2align 2,,3
 149              		.global	_Z11makeDHCPMSGv
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv4-sp-d16
 154              		.type	_Z11makeDHCPMSGv, %function
 155              	_Z11makeDHCPMSGv:
 156              		@ args = 0, pretend = 0, frame = 8
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158 0000 70B5     		push	{r4, r5, r6, lr}
 159 0002 82B0     		sub	sp, sp, #8
 160 0004 0622     		movs	r2, #6
 161 0006 6946     		mov	r1, sp
 162 0008 4FF41060 		mov	r0, #2304
 163 000c FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 164 0010 1F4B     		ldr	r3, .L38
 165 0012 2048     		ldr	r0, .L38+4
 166 0014 1968     		ldr	r1, [r3]
 167 0016 204A     		ldr	r2, .L38+8
 168 0018 204D     		ldr	r5, .L38+12
 169 001a 5679     		ldrb	r6, [r2, #5]	@ zero_extendqisi2
 170 001c C171     		strb	r1, [r0, #7]
 171 001e 0C0E     		lsrs	r4, r1, #24
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 4


 172 0020 0346     		mov	r3, r0
 173 0022 0471     		strb	r4, [r0, #4]
 174 0024 0C0C     		lsrs	r4, r1, #16
 175 0026 0560     		str	r5, [r0]
 176 0028 090A     		lsrs	r1, r1, #8
 177 002a 4FF40005 		mov	r5, #8388608
 178 002e 4471     		strb	r4, [r0, #5]
 179 0030 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 180 0032 03F8216F 		strb	r6, [r3, #33]!
 181 0036 8171     		strb	r1, [r0, #6]
 182 0038 5678     		ldrb	r6, [r2, #1]	@ zero_extendqisi2
 183 003a 1179     		ldrb	r1, [r2, #4]	@ zero_extendqisi2
 184 003c 8560     		str	r5, [r0, #8]
 185 003e 0477     		strb	r4, [r0, #28]
 186 0040 9578     		ldrb	r5, [r2, #2]	@ zero_extendqisi2
 187 0042 D478     		ldrb	r4, [r2, #3]	@ zero_extendqisi2
 188 0044 80F82010 		strb	r1, [r0, #32]
 189 0048 0022     		movs	r2, #0
 190 004a C0E90322 		strd	r2, r2, [r0, #12]
 191 004e C0E90522 		strd	r2, r2, [r0, #20]
 192 0052 4677     		strb	r6, [r0, #29]
 193 0054 8577     		strb	r5, [r0, #30]
 194 0056 C477     		strb	r4, [r0, #31]
 195 0058 00F12B01 		add	r1, r0, #43
 196              	.L31:
 197 005c 03F8012F 		strb	r2, [r3, #1]!
 198 0060 8B42     		cmp	r3, r1
 199 0062 FBD1     		bne	.L31
 200 0064 0E4B     		ldr	r3, .L38+16
 201 0066 0021     		movs	r1, #0
 202 0068 03F14002 		add	r2, r3, #64
 203              	.L32:
 204 006c 03F8011F 		strb	r1, [r3, #1]!
 205 0070 9342     		cmp	r3, r2
 206 0072 FBD1     		bne	.L32
 207 0074 0B4B     		ldr	r3, .L38+20
 208 0076 0021     		movs	r1, #0
 209 0078 03F18002 		add	r2, r3, #128
 210              	.L33:
 211 007c 03F8011F 		strb	r1, [r3, #1]!
 212 0080 9A42     		cmp	r2, r3
 213 0082 FBD1     		bne	.L33
 214 0084 084B     		ldr	r3, .L38+24
 215 0086 C0F8EC30 		str	r3, [r0, #236]
 216 008a 02B0     		add	sp, sp, #8
 217              		@ sp needed
 218 008c 70BD     		pop	{r4, r5, r6, pc}
 219              	.L39:
 220 008e 00BF     		.align	2
 221              	.L38:
 222 0090 00000000 		.word	.LANCHOR8
 223 0094 00000000 		.word	.LANCHOR7
 224 0098 00000000 		.word	.LANCHOR3
 225 009c 01010600 		.word	393473
 226 00a0 2B000000 		.word	.LANCHOR7+43
 227 00a4 6B000000 		.word	.LANCHOR7+107
 228 00a8 63825363 		.word	1666417251
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 5


 229              		.size	_Z11makeDHCPMSGv, .-_Z11makeDHCPMSGv
 230              		.section	.text._Z18send_DHCP_DISCOVERv,"ax",%progbits
 231              		.align	1
 232              		.p2align 2,,3
 233              		.global	_Z18send_DHCP_DISCOVERv
 234              		.syntax unified
 235              		.thumb
 236              		.thumb_func
 237              		.fpu fpv4-sp-d16
 238              		.type	_Z18send_DHCP_DISCOVERv, %function
 239              	_Z18send_DHCP_DISCOVERv:
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 243 0004 83B0     		sub	sp, sp, #12
 244 0006 FFF7FEFF 		bl	_Z11makeDHCPMSGv
 245 000a 4F4A     		ldr	r2, .L48
 246 000c 4F4B     		ldr	r3, .L48+4
 247 000e 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 248 0010 4F48     		ldr	r0, .L48+8
 249 0012 504D     		ldr	r5, .L48+12
 250 0014 83F8F640 		strb	r4, [r3, #246]
 251 0018 40F20714 		movw	r4, #263
 252 001c C3F8F050 		str	r5, [r3, #240]
 253 0020 A3F8F440 		strh	r4, [r3, #244]	@ movhi
 254 0024 5578     		ldrb	r5, [r2, #1]	@ zero_extendqisi2
 255 0026 9478     		ldrb	r4, [r2, #2]	@ zero_extendqisi2
 256 0028 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 257 002a D678     		ldrb	r6, [r2, #3]	@ zero_extendqisi2
 258 002c 83F8F750 		strb	r5, [r3, #247]
 259 0030 83F8F840 		strb	r4, [r3, #248]
 260 0034 1579     		ldrb	r5, [r2, #4]	@ zero_extendqisi2
 261 0036 5479     		ldrb	r4, [r2, #5]	@ zero_extendqisi2
 262 0038 83F8F960 		strb	r6, [r3, #249]
 263 003c 0C22     		movs	r2, #12
 264 003e 83F8FA50 		strb	r5, [r3, #250]
 265 0042 83F8FB40 		strb	r4, [r3, #251]
 266 0046 A3F8FC20 		strh	r2, [r3, #252]	@ movhi
 267 004a 0029     		cmp	r1, #0
 268 004c 6BD0     		beq	.L44
 269 004e 03F1FD04 		add	r4, r3, #253
 270 0052 0022     		movs	r2, #0
 271 0054 00E0     		b	.L42
 272              	.L45:
 273 0056 6246     		mov	r2, ip
 274              	.L42:
 275 0058 04F8011F 		strb	r1, [r4, #1]!
 276 005c 10F8011F 		ldrb	r1, [r0, #1]!	@ zero_extendqisi2
 277 0060 02F1130A 		add	r10, r2, #19
 278 0064 02F1010C 		add	ip, r2, #1
 279 0068 0029     		cmp	r1, #0
 280 006a F4D1     		bne	.L45
 281 006c 02F11208 		add	r8, r2, #18
 282 0070 A8EB0C08 		sub	r8, r8, ip
 283 0074 02F11409 		add	r9, r2, #20
 284 0078 02F1150E 		add	lr, r2, #21
 285 007c 02F11607 		add	r7, r2, #22
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 6


 286 0080 02F11706 		add	r6, r2, #23
 287 0084 02F11805 		add	r5, r2, #24
 288 0088 02F11904 		add	r4, r2, #25
 289 008c 02F11A00 		add	r0, r2, #26
 290 0090 02F11B01 		add	r1, r2, #27
 291 0094 5FFA8CFC 		uxtb	ip, ip
 292 0098 1C32     		adds	r2, r2, #28
 293              	.L41:
 294 009a 9844     		add	r8, r8, r3
 295 009c 9A44     		add	r10, r10, r3
 296 009e 9944     		add	r9, r9, r3
 297 00a0 9E44     		add	lr, lr, r3
 298 00a2 1F44     		add	r7, r7, r3
 299 00a4 4FF0370B 		mov	fp, #55
 300 00a8 88F8ECC0 		strb	ip, [r8, #236]
 301 00ac 1D44     		add	r5, r5, r3
 302 00ae 8AF8ECB0 		strb	fp, [r10, #236]
 303 00b2 1E44     		add	r6, r6, r3
 304 00b4 1C44     		add	r4, r4, r3
 305 00b6 1844     		add	r0, r0, r3
 306 00b8 1944     		add	r1, r1, r3
 307 00ba 4FF0060C 		mov	ip, #6
 308 00be 4FF00108 		mov	r8, #1
 309 00c2 4FF0030B 		mov	fp, #3
 310 00c6 89F8ECC0 		strb	ip, [r9, #236]
 311 00ca 4FF00F0A 		mov	r10, #15
 312 00ce 8EF8EC80 		strb	r8, [lr, #236]
 313 00d2 4FF03A09 		mov	r9, #58
 314 00d6 87F8ECB0 		strb	fp, [r7, #236]
 315 00da 4FF03B08 		mov	r8, #59
 316 00de 4FF0FF0E 		mov	lr, #255
 317 00e2 02F1EC07 		add	r7, r2, #236
 318 00e6 86F8ECC0 		strb	ip, [r6, #236]
 319 00ea 3B44     		add	r3, r3, r7
 320 00ec 85F8ECA0 		strb	r10, [r5, #236]
 321 00f0 84F8EC90 		strb	r9, [r4, #236]
 322 00f4 0025     		movs	r5, #0
 323 00f6 80F8EC80 		strb	r8, [r0, #236]
 324 00fa 81F8ECE0 		strb	lr, [r1, #236]
 325              	.L43:
 326 00fe 0132     		adds	r2, r2, #1
 327 0100 B2F59C7F 		cmp	r2, #312
 328 0104 03F8015B 		strb	r5, [r3], #1
 329 0108 F9D1     		bne	.L43
 330 010a 134B     		ldr	r3, .L48+16
 331 010c 0F49     		ldr	r1, .L48+4
 332 010e 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 333 0110 4323     		movs	r3, #67
 334 0112 0093     		str	r3, [sp]
 335 0114 4FF40972 		mov	r2, #548
 336 0118 4FF0FF33 		mov	r3, #-1
 337 011c FFF7FEFF 		bl	_Z6sendtohPKht9IPAddresst
 338 0120 03B0     		add	sp, sp, #12
 339              		@ sp needed
 340 0122 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 341              	.L44:
 342 0126 8C46     		mov	ip, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 7


 343 0128 1B22     		movs	r2, #27
 344 012a 1A21     		movs	r1, #26
 345 012c 1920     		movs	r0, #25
 346 012e 1824     		movs	r4, #24
 347 0130 1725     		movs	r5, #23
 348 0132 1626     		movs	r6, #22
 349 0134 1527     		movs	r7, #21
 350 0136 4FF0140E 		mov	lr, #20
 351 013a 4FF01309 		mov	r9, #19
 352 013e 4FF01108 		mov	r8, #17
 353 0142 4FF0120A 		mov	r10, #18
 354 0146 A8E7     		b	.L41
 355              	.L49:
 356              		.align	2
 357              	.L48:
 358 0148 00000000 		.word	.LANCHOR3
 359 014c 00000000 		.word	.LANCHOR7
 360 0150 00000000 		.word	.LANCHOR9
 361 0154 3501013D 		.word	1023476021
 362 0158 00000000 		.word	.LANCHOR10
 363              		.size	_Z18send_DHCP_DISCOVERv, .-_Z18send_DHCP_DISCOVERv
 364              		.section	.text._Z17send_DHCP_REQUESTv,"ax",%progbits
 365              		.align	1
 366              		.p2align 2,,3
 367              		.global	_Z17send_DHCP_REQUESTv
 368              		.syntax unified
 369              		.thumb
 370              		.thumb_func
 371              		.fpu fpv4-sp-d16
 372              		.type	_Z17send_DHCP_REQUESTv, %function
 373              	_Z17send_DHCP_REQUESTv:
 374              		@ args = 0, pretend = 0, frame = 0
 375              		@ frame_needed = 0, uses_anonymous_args = 0
 376 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 377 0002 83B0     		sub	sp, sp, #12
 378 0004 FFF7FEFF 		bl	_Z11makeDHCPMSGv
 379 0008 624B     		ldr	r3, .L64
 380 000a 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 381 000c 0339     		subs	r1, r1, #3
 382 000e C9B2     		uxtb	r1, r1
 383 0010 0129     		cmp	r1, #1
 384 0012 40F2A680 		bls	.L63
 385 0016 604A     		ldr	r2, .L64+4
 386 0018 4FF0FF33 		mov	r3, #-1
 387              	.L52:
 388 001c 5F48     		ldr	r0, .L64+8
 389 001e 604C     		ldr	r4, .L64+12
 390 0020 0578     		ldrb	r5, [r0]	@ zero_extendqisi2
 391 0022 82F8F650 		strb	r5, [r2, #246]
 392 0026 4578     		ldrb	r5, [r0, #1]	@ zero_extendqisi2
 393 0028 82F8F750 		strb	r5, [r2, #247]
 394 002c 8578     		ldrb	r5, [r0, #2]	@ zero_extendqisi2
 395 002e 82F8F850 		strb	r5, [r2, #248]
 396 0032 C578     		ldrb	r5, [r0, #3]	@ zero_extendqisi2
 397 0034 0679     		ldrb	r6, [r0, #4]	@ zero_extendqisi2
 398 0036 82F8F950 		strb	r5, [r2, #249]
 399 003a 0129     		cmp	r1, #1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 8


 400 003c 4579     		ldrb	r5, [r0, #5]	@ zero_extendqisi2
 401 003e 82F8FA60 		strb	r6, [r2, #250]
 402 0042 40F20710 		movw	r0, #263
 403 0046 82F8FB50 		strb	r5, [r2, #251]
 404 004a C2F8F040 		str	r4, [r2, #240]
 405 004e A2F8F400 		strh	r0, [r2, #244]	@ movhi
 406 0052 40F29580 		bls	.L58
 407 0056 5349     		ldr	r1, .L64+16
 408 0058 5348     		ldr	r0, .L64+20
 409 005a 0968     		ldr	r1, [r1]
 410 005c 0068     		ldr	r0, [r0]
 411 005e 82F8FE10 		strb	r1, [r2, #254]
 412 0062 0D0A     		lsrs	r5, r1, #8
 413 0064 0C0C     		lsrs	r4, r1, #16
 414 0066 090E     		lsrs	r1, r1, #24
 415 0068 060C     		lsrs	r6, r0, #16
 416 006a 070A     		lsrs	r7, r0, #8
 417 006c 82F8FF50 		strb	r5, [r2, #255]
 418 0070 82F80041 		strb	r4, [r2, #256]
 419 0074 050E     		lsrs	r5, r0, #24
 420 0076 82F80111 		strb	r1, [r2, #257]
 421 007a 40F23244 		movw	r4, #1074
 422 007e 40F23641 		movw	r1, #1078
 423 0082 82F80401 		strb	r0, [r2, #260]
 424 0086 82F80661 		strb	r6, [r2, #262]
 425 008a A2F80211 		strh	r1, [r2, #258]	@ movhi
 426 008e 82F80571 		strb	r7, [r2, #261]
 427 0092 82F80751 		strb	r5, [r2, #263]
 428 0096 A2F8FC40 		strh	r4, [r2, #252]	@ movhi
 429 009a 1F26     		movs	r6, #31
 430 009c 4FF01E0C 		mov	ip, #30
 431 00a0 1D21     		movs	r1, #29
 432 00a2 1C20     		movs	r0, #28
 433              	.L53:
 434 00a4 1044     		add	r0, r0, r2
 435 00a6 414C     		ldr	r4, .L64+24
 436 00a8 0C25     		movs	r5, #12
 437 00aa 80F8EC50 		strb	r5, [r0, #236]
 438 00ae 1144     		add	r1, r1, r2
 439 00b0 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 440 00b2 0025     		movs	r5, #0
 441 00b4 81F8EC50 		strb	r5, [r1, #236]
 442 00b8 0028     		cmp	r0, #0
 443 00ba 67D0     		beq	.L59
 444 00bc 0CF1EC05 		add	r5, ip, #236
 445 00c0 1544     		add	r5, r5, r2
 446 00c2 6646     		mov	r6, ip
 447 00c4 00E0     		b	.L55
 448              	.L60:
 449 00c6 0E46     		mov	r6, r1
 450              	.L55:
 451 00c8 05F8010B 		strb	r0, [r5], #1
 452 00cc 14F8010F 		ldrb	r0, [r4, #1]!	@ zero_extendqisi2
 453 00d0 711C     		adds	r1, r6, #1
 454 00d2 A1EB0C07 		sub	r7, r1, ip
 455 00d6 0028     		cmp	r0, #0
 456 00d8 F5D1     		bne	.L60
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 9


 457 00da 0236     		adds	r6, r6, #2
 458 00dc F8B2     		uxtb	r0, r7
 459              	.L54:
 460 00de 4C1E     		subs	r4, r1, #1
 461 00e0 E71B     		subs	r7, r4, r7
 462 00e2 02EB010C 		add	ip, r2, r1
 463 00e6 1744     		add	r7, r7, r2
 464 00e8 1644     		add	r6, r6, r2
 465 00ea 3724     		movs	r4, #55
 466 00ec 87F8EC00 		strb	r0, [r7, #236]
 467 00f0 0827     		movs	r7, #8
 468 00f2 8CF8EC40 		strb	r4, [ip, #236]
 469 00f6 0324     		movs	r4, #3
 470 00f8 86F8EC70 		strb	r7, [r6, #236]
 471 00fc 0125     		movs	r5, #1
 472 00fe 8CF8EF40 		strb	r4, [ip, #239]
 473 0102 3B24     		movs	r4, #59
 474 0104 0627     		movs	r7, #6
 475 0106 0F26     		movs	r6, #15
 476 0108 8CF8EE50 		strb	r5, [ip, #238]
 477 010c 8CF8F340 		strb	r4, [ip, #243]
 478 0110 3A25     		movs	r5, #58
 479 0112 01F10B04 		add	r4, r1, #11
 480 0116 8CF8F070 		strb	r7, [ip, #240]
 481 011a 8CF8F160 		strb	r6, [ip, #241]
 482 011e 1F27     		movs	r7, #31
 483 0120 2126     		movs	r6, #33
 484 0122 8CF8F250 		strb	r5, [ip, #242]
 485 0126 B4F59C7F 		cmp	r4, #312
 486 012a 4FF0FF05 		mov	r5, #255
 487 012e 8CF8F470 		strb	r7, [ip, #244]
 488 0132 8CF8F560 		strb	r6, [ip, #245]
 489 0136 8CF8F650 		strb	r5, [ip, #246]
 490 013a 07D2     		bcs	.L56
 491 013c F731     		adds	r1, r1, #247
 492 013e 1C48     		ldr	r0, .L64+28
 493 0140 0A44     		add	r2, r2, r1
 494 0142 0021     		movs	r1, #0
 495              	.L57:
 496 0144 02F8011B 		strb	r1, [r2], #1
 497 0148 8242     		cmp	r2, r0
 498 014a FBD1     		bne	.L57
 499              	.L56:
 500 014c 194A     		ldr	r2, .L64+32
 501 014e 1249     		ldr	r1, .L64+4
 502 0150 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 503 0152 4322     		movs	r2, #67
 504 0154 0092     		str	r2, [sp]
 505 0156 4FF40972 		mov	r2, #548
 506 015a FFF7FEFF 		bl	_Z6sendtohPKht9IPAddresst
 507 015e 03B0     		add	sp, sp, #12
 508              		@ sp needed
 509 0160 F0BD     		pop	{r4, r5, r6, r7, pc}
 510              	.L63:
 511 0162 104B     		ldr	r3, .L64+16
 512 0164 0C4A     		ldr	r2, .L64+4
 513 0166 1B68     		ldr	r3, [r3]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 10


 514 0168 0F48     		ldr	r0, .L64+20
 515 016a 1373     		strb	r3, [r2, #12]
 516 016c 1C0A     		lsrs	r4, r3, #8
 517 016e 0025     		movs	r5, #0
 518 0170 5473     		strb	r4, [r2, #13]
 519 0172 1C0C     		lsrs	r4, r3, #16
 520 0174 1B0E     		lsrs	r3, r3, #24
 521 0176 D373     		strb	r3, [r2, #15]
 522 0178 5581     		strh	r5, [r2, #10]	@ movhi
 523 017a 9473     		strb	r4, [r2, #14]
 524 017c 0368     		ldr	r3, [r0]
 525 017e 4DE7     		b	.L52
 526              	.L58:
 527 0180 1326     		movs	r6, #19
 528 0182 4FF0120C 		mov	ip, #18
 529 0186 1121     		movs	r1, #17
 530 0188 1020     		movs	r0, #16
 531 018a 8BE7     		b	.L53
 532              	.L59:
 533 018c 6146     		mov	r1, ip
 534 018e 0746     		mov	r7, r0
 535 0190 A5E7     		b	.L54
 536              	.L65:
 537 0192 00BF     		.align	2
 538              	.L64:
 539 0194 00000000 		.word	.LANCHOR11
 540 0198 00000000 		.word	.LANCHOR7
 541 019c 00000000 		.word	.LANCHOR3
 542 01a0 3501033D 		.word	1023607093
 543 01a4 00000000 		.word	.LANCHOR0
 544 01a8 00000000 		.word	.LANCHOR12
 545 01ac 00000000 		.word	.LANCHOR9
 546 01b0 24020000 		.word	.LANCHOR7+548
 547 01b4 00000000 		.word	.LANCHOR10
 548              		.size	_Z17send_DHCP_REQUESTv, .-_Z17send_DHCP_REQUESTv
 549              		.section	.text._Z17send_DHCP_DECLINEv,"ax",%progbits
 550              		.align	1
 551              		.p2align 2,,3
 552              		.global	_Z17send_DHCP_DECLINEv
 553              		.syntax unified
 554              		.thumb
 555              		.thumb_func
 556              		.fpu fpv4-sp-d16
 557              		.type	_Z17send_DHCP_DECLINEv, %function
 558              	_Z17send_DHCP_DECLINEv:
 559              		@ args = 0, pretend = 0, frame = 0
 560              		@ frame_needed = 0, uses_anonymous_args = 0
 561 0000 70B5     		push	{r4, r5, r6, lr}
 562 0002 82B0     		sub	sp, sp, #8
 563 0004 FFF7FEFF 		bl	_Z11makeDHCPMSGv
 564 0008 2B4B     		ldr	r3, .L70
 565 000a 2C4A     		ldr	r2, .L70+4
 566 000c 1B68     		ldr	r3, [r3]
 567 000e 2C49     		ldr	r1, .L70+8
 568 0010 1068     		ldr	r0, [r2]
 569 0012 2C4A     		ldr	r2, .L70+12
 570 0014 2C4C     		ldr	r4, .L70+16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 11


 571 0016 C2F8F040 		str	r4, [r2, #240]
 572 001a 1D0A     		lsrs	r5, r3, #8
 573 001c 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 574 001e 82F8FF50 		strb	r5, [r2, #255]
 575 0022 40F20715 		movw	r5, #263
 576 0026 A2F8F450 		strh	r5, [r2, #244]	@ movhi
 577 002a 82F8F640 		strb	r4, [r2, #246]
 578 002e 4D78     		ldrb	r5, [r1, #1]	@ zero_extendqisi2
 579 0030 8C78     		ldrb	r4, [r1, #2]	@ zero_extendqisi2
 580 0032 82F8F750 		strb	r5, [r2, #247]
 581 0036 82F8F840 		strb	r4, [r2, #248]
 582 003a CD78     		ldrb	r5, [r1, #3]	@ zero_extendqisi2
 583 003c 0C79     		ldrb	r4, [r1, #4]	@ zero_extendqisi2
 584 003e 4979     		ldrb	r1, [r1, #5]	@ zero_extendqisi2
 585 0040 82F8FE30 		strb	r3, [r2, #254]
 586 0044 82F8F950 		strb	r5, [r2, #249]
 587 0048 82F8FA40 		strb	r4, [r2, #250]
 588 004c 40F23245 		movw	r5, #1074
 589 0050 1C0C     		lsrs	r4, r3, #16
 590 0052 82F8FB10 		strb	r1, [r2, #251]
 591 0056 1B0E     		lsrs	r3, r3, #24
 592 0058 40F23641 		movw	r1, #1078
 593 005c A2F8FC50 		strh	r5, [r2, #252]	@ movhi
 594 0060 82F80041 		strb	r4, [r2, #256]
 595 0064 82F80131 		strb	r3, [r2, #257]
 596 0068 A2F80211 		strh	r1, [r2, #258]	@ movhi
 597 006c FF23     		movs	r3, #255
 598 006e 060A     		lsrs	r6, r0, #8
 599 0070 050C     		lsrs	r5, r0, #16
 600 0072 040E     		lsrs	r4, r0, #24
 601 0074 0021     		movs	r1, #0
 602 0076 82F80831 		strb	r3, [r2, #264]
 603 007a 82F80401 		strb	r0, [r2, #260]
 604 007e 82F80561 		strb	r6, [r2, #261]
 605 0082 82F80651 		strb	r5, [r2, #262]
 606 0086 82F80741 		strb	r4, [r2, #263]
 607 008a 5181     		strh	r1, [r2, #10]	@ movhi
 608 008c 02F58473 		add	r3, r2, #264
 609 0090 02F22322 		addw	r2, r2, #547
 610              	.L67:
 611 0094 03F8011F 		strb	r1, [r3, #1]!
 612 0098 9342     		cmp	r3, r2
 613 009a FBD1     		bne	.L67
 614 009c 0B4B     		ldr	r3, .L70+20
 615 009e 0949     		ldr	r1, .L70+12
 616 00a0 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 617 00a2 4323     		movs	r3, #67
 618 00a4 0093     		str	r3, [sp]
 619 00a6 4FF40972 		mov	r2, #548
 620 00aa 4FF0FF33 		mov	r3, #-1
 621 00ae FFF7FEFF 		bl	_Z6sendtohPKht9IPAddresst
 622 00b2 02B0     		add	sp, sp, #8
 623              		@ sp needed
 624 00b4 70BD     		pop	{r4, r5, r6, pc}
 625              	.L71:
 626 00b6 00BF     		.align	2
 627              	.L70:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 12


 628 00b8 00000000 		.word	.LANCHOR0
 629 00bc 00000000 		.word	.LANCHOR12
 630 00c0 00000000 		.word	.LANCHOR3
 631 00c4 00000000 		.word	.LANCHOR7
 632 00c8 3501043D 		.word	1023672629
 633 00cc 00000000 		.word	.LANCHOR10
 634              		.size	_Z17send_DHCP_DECLINEv, .-_Z17send_DHCP_DECLINEv
 635              		.section	.text._Z12parseDHCPMSGv,"ax",%progbits
 636              		.align	1
 637              		.p2align 2,,3
 638              		.global	_Z12parseDHCPMSGv
 639              		.syntax unified
 640              		.thumb
 641              		.thumb_func
 642              		.fpu fpv4-sp-d16
 643              		.type	_Z12parseDHCPMSGv, %function
 644              	_Z12parseDHCPMSGv:
 645              		@ args = 0, pretend = 0, frame = 16
 646              		@ frame_needed = 0, uses_anonymous_args = 0
 647 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 648 0004 454C     		ldr	r4, .L103
 649 0006 87B0     		sub	sp, sp, #28
 650 0008 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 651 000a FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 652 000e A8B1     		cbz	r0, .L73
 653 0010 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 654 0012 434D     		ldr	r5, .L103+4
 655 0014 B0F5097F 		cmp	r0, #548
 656 0018 0246     		mov	r2, r0
 657 001a 0DF10E03 		add	r3, sp, #14
 658 001e 28BF     		it	cs
 659 0020 4FF40972 		movcs	r2, #548
 660 0024 0846     		mov	r0, r1
 661 0026 0093     		str	r3, [sp]
 662 0028 92B2     		uxth	r2, r2
 663 002a 04AB     		add	r3, sp, #16
 664 002c 2946     		mov	r1, r5
 665 002e FFF7FEFF 		bl	_Z8recvfromhPhtS_Pt
 666 0032 BDF80E30 		ldrh	r3, [sp, #14]
 667 0036 432B     		cmp	r3, #67
 668 0038 03D0     		beq	.L100
 669              	.L97:
 670 003a 0020     		movs	r0, #0
 671              	.L73:
 672 003c 07B0     		add	sp, sp, #28
 673              		@ sp needed
 674 003e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 675              	.L100:
 676 0042 83B2     		uxth	r3, r0
 677 0044 F02B     		cmp	r3, #240
 678 0046 F8D9     		bls	.L97
 679 0048 364B     		ldr	r3, .L103+8
 680 004a 297F     		ldrb	r1, [r5, #28]	@ zero_extendqisi2
 681 004c 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 682 004e 9142     		cmp	r1, r2
 683 0050 F3D1     		bne	.L97
 684 0052 697F     		ldrb	r1, [r5, #29]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 13


 685 0054 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 686 0056 9142     		cmp	r1, r2
 687 0058 EFD1     		bne	.L97
 688 005a A97F     		ldrb	r1, [r5, #30]	@ zero_extendqisi2
 689 005c 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 690 005e 9142     		cmp	r1, r2
 691 0060 EBD1     		bne	.L97
 692 0062 E97F     		ldrb	r1, [r5, #31]	@ zero_extendqisi2
 693 0064 DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
 694 0066 9142     		cmp	r1, r2
 695 0068 E7D1     		bne	.L97
 696 006a 95F82010 		ldrb	r1, [r5, #32]	@ zero_extendqisi2
 697 006e 1A79     		ldrb	r2, [r3, #4]	@ zero_extendqisi2
 698 0070 9142     		cmp	r1, r2
 699 0072 E2D1     		bne	.L97
 700 0074 5B79     		ldrb	r3, [r3, #5]	@ zero_extendqisi2
 701 0076 95F82120 		ldrb	r2, [r5, #33]	@ zero_extendqisi2
 702 007a 9A42     		cmp	r2, r3
 703 007c DDD1     		bne	.L97
 704 007e DFF8B880 		ldr	r8, .L103+28
 705 0082 294F     		ldr	r7, .L103+12
 706 0084 294E     		ldr	r6, .L103+16
 707 0086 15FA80F9 		uxtah	r9, r5, r0
 708 008a 0024     		movs	r4, #0
 709 008c F035     		adds	r5, r5, #240
 710              	.L75:
 711 008e 4D45     		cmp	r5, r9
 712 0090 0AD2     		bcs	.L99
 713 0092 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 714 0094 062B     		cmp	r3, #6
 715 0096 24D0     		beq	.L78
 716 0098 08D9     		bls	.L101
 717 009a 352B     		cmp	r3, #53
 718 009c 28D0     		beq	.L83
 719 009e 11D9     		bls	.L102
 720 00a0 362B     		cmp	r3, #54
 721 00a2 2CD0     		beq	.L86
 722 00a4 FF2B     		cmp	r3, #255
 723 00a6 26D1     		bne	.L77
 724              	.L99:
 725 00a8 60B2     		sxtb	r0, r4
 726 00aa C7E7     		b	.L73
 727              	.L101:
 728 00ac 012B     		cmp	r3, #1
 729 00ae 2ED0     		beq	.L80
 730 00b0 2BD3     		bcc	.L81
 731 00b2 032B     		cmp	r3, #3
 732 00b4 1FD1     		bne	.L77
 733 00b6 A91C     		adds	r1, r5, #2
 734 00b8 6D78     		ldrb	r5, [r5, #1]	@ zero_extendqisi2
 735 00ba 1D48     		ldr	r0, .L103+20
 736 00bc 0D44     		add	r5, r5, r1
 737 00be FFF7FEFF 		bl	_ZN9IPAddress5SetV4EPKh
 738 00c2 E4E7     		b	.L75
 739              	.L102:
 740 00c4 332B     		cmp	r3, #51
 741 00c6 16D1     		bne	.L77
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 14


 742 00c8 AB78     		ldrb	r3, [r5, #2]	@ zero_extendqisi2
 743 00ca E978     		ldrb	r1, [r5, #3]	@ zero_extendqisi2
 744 00cc 2A79     		ldrb	r2, [r5, #4]	@ zero_extendqisi2
 745 00ce 01EB0321 		add	r1, r1, r3, lsl #8
 746 00d2 6B79     		ldrb	r3, [r5, #5]	@ zero_extendqisi2
 747 00d4 02EB0122 		add	r2, r2, r1, lsl #8
 748 00d8 03EB0223 		add	r3, r3, r2, lsl #8
 749 00dc 3360     		str	r3, [r6]
 750 00de 0635     		adds	r5, r5, #6
 751 00e0 D5E7     		b	.L75
 752              	.L78:
 753 00e2 A91C     		adds	r1, r5, #2
 754 00e4 6D78     		ldrb	r5, [r5, #1]	@ zero_extendqisi2
 755 00e6 4046     		mov	r0, r8
 756 00e8 0D44     		add	r5, r5, r1
 757 00ea FFF7FEFF 		bl	_ZN9IPAddress5SetV4EPKh
 758 00ee CEE7     		b	.L75
 759              	.L83:
 760 00f0 AC78     		ldrb	r4, [r5, #2]	@ zero_extendqisi2
 761 00f2 0335     		adds	r5, r5, #3
 762 00f4 CBE7     		b	.L75
 763              	.L77:
 764 00f6 6B78     		ldrb	r3, [r5, #1]	@ zero_extendqisi2
 765 00f8 0235     		adds	r5, r5, #2
 766 00fa 1D44     		add	r5, r5, r3
 767 00fc C7E7     		b	.L75
 768              	.L86:
 769 00fe A91C     		adds	r1, r5, #2
 770 0100 3846     		mov	r0, r7
 771 0102 0635     		adds	r5, r5, #6
 772 0104 FFF7FEFF 		bl	_ZN9IPAddress5SetV4EPKh
 773 0108 C1E7     		b	.L75
 774              	.L81:
 775 010a 0135     		adds	r5, r5, #1
 776 010c BFE7     		b	.L75
 777              	.L80:
 778 010e A91C     		adds	r1, r5, #2
 779 0110 0848     		ldr	r0, .L103+24
 780 0112 0635     		adds	r5, r5, #6
 781 0114 FFF7FEFF 		bl	_ZN9IPAddress5SetV4EPKh
 782 0118 B9E7     		b	.L75
 783              	.L104:
 784 011a 00BF     		.align	2
 785              	.L103:
 786 011c 00000000 		.word	.LANCHOR10
 787 0120 00000000 		.word	.LANCHOR7
 788 0124 00000000 		.word	.LANCHOR3
 789 0128 00000000 		.word	.LANCHOR12
 790 012c 00000000 		.word	.LANCHOR14
 791 0130 00000000 		.word	.LANCHOR2
 792 0134 00000000 		.word	.LANCHOR1
 793 0138 00000000 		.word	.LANCHOR13
 794              		.size	_Z12parseDHCPMSGv, .-_Z12parseDHCPMSGv
 795              		.section	.text._Z9DHCP_stopv,"ax",%progbits
 796              		.align	1
 797              		.p2align 2,,3
 798              		.global	_Z9DHCP_stopv
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 15


 799              		.syntax unified
 800              		.thumb
 801              		.thumb_func
 802              		.fpu fpv4-sp-d16
 803              		.type	_Z9DHCP_stopv, %function
 804              	_Z9DHCP_stopv:
 805              		@ args = 0, pretend = 0, frame = 0
 806              		@ frame_needed = 0, uses_anonymous_args = 0
 807 0000 08B5     		push	{r3, lr}
 808 0002 044B     		ldr	r3, .L107
 809 0004 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 810 0006 FFF7FEFF 		bl	_Z5closeh
 811 000a 034B     		ldr	r3, .L107+4
 812 000c 0622     		movs	r2, #6
 813 000e 1A70     		strb	r2, [r3]
 814 0010 08BD     		pop	{r3, pc}
 815              	.L108:
 816 0012 00BF     		.align	2
 817              	.L107:
 818 0014 00000000 		.word	.LANCHOR10
 819 0018 00000000 		.word	.LANCHOR11
 820              		.size	_Z9DHCP_stopv, .-_Z9DHCP_stopv
 821              		.section	.text._Z18check_DHCP_timeoutv,"ax",%progbits
 822              		.align	1
 823              		.p2align 2,,3
 824              		.global	_Z18check_DHCP_timeoutv
 825              		.syntax unified
 826              		.thumb
 827              		.thumb_func
 828              		.fpu fpv4-sp-d16
 829              		.type	_Z18check_DHCP_timeoutv, %function
 830              	_Z18check_DHCP_timeoutv:
 831              		@ args = 0, pretend = 0, frame = 0
 832              		@ frame_needed = 0, uses_anonymous_args = 0
 833 0000 70B5     		push	{r4, r5, r6, lr}
 834 0002 214C     		ldr	r4, .L129
 835 0004 94F90030 		ldrsb	r3, [r4]
 836 0008 012B     		cmp	r3, #1
 837 000a 19DD     		ble	.L128
 838 000c 1F4D     		ldr	r5, .L129+4
 839 000e 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 840 0010 013B     		subs	r3, r3, #1
 841 0012 062B     		cmp	r3, #6
 842 0014 31D8     		bhi	.L120
 843 0016 DFE803F0 		tbb	[pc, r3]
 844              	.L117:
 845 001a 10       		.byte	(.L116-.L117)/2
 846 001b 04       		.byte	(.L118-.L117)/2
 847 001c 30       		.byte	(.L120-.L117)/2
 848 001d 04       		.byte	(.L118-.L117)/2
 849 001e 30       		.byte	(.L120-.L117)/2
 850 001f 30       		.byte	(.L120-.L117)/2
 851 0020 04       		.byte	(.L118-.L117)/2
 852 0021 00       		.p2align 1
 853              	.L118:
 854 0022 FFF7FEFF 		bl	_Z18send_DHCP_DISCOVERv
 855 0026 0120     		movs	r0, #1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 16


 856 0028 2870     		strb	r0, [r5]
 857              	.L115:
 858 002a 194D     		ldr	r5, .L129+8
 859 002c 194A     		ldr	r2, .L129+12
 860 002e 0023     		movs	r3, #0
 861 0030 0A21     		movs	r1, #10
 862 0032 2B60     		str	r3, [r5]
 863 0034 2370     		strb	r3, [r4]
 864 0036 1160     		str	r1, [r2]
 865 0038 70BD     		pop	{r4, r5, r6, pc}
 866              	.L116:
 867 003a 0020     		movs	r0, #0
 868 003c 2870     		strb	r0, [r5]
 869 003e F4E7     		b	.L115
 870              	.L128:
 871 0040 134D     		ldr	r5, .L129+8
 872 0042 144E     		ldr	r6, .L129+12
 873 0044 2A68     		ldr	r2, [r5]
 874 0046 3168     		ldr	r1, [r6]
 875 0048 9142     		cmp	r1, r2
 876 004a 14D2     		bcs	.L119
 877 004c 0F4A     		ldr	r2, .L129+4
 878 004e 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 879 0050 022A     		cmp	r2, #2
 880 0052 14D0     		beq	.L113
 881 0054 042A     		cmp	r2, #4
 882 0056 12D0     		beq	.L113
 883 0058 012A     		cmp	r2, #1
 884 005a 03D1     		bne	.L112
 885 005c FFF7FEFF 		bl	_Z18send_DHCP_DISCOVERv
 886 0060 94F90030 		ldrsb	r3, [r4]
 887              	.L112:
 888 0064 0022     		movs	r2, #0
 889 0066 2A60     		str	r2, [r5]
 890 0068 2A68     		ldr	r2, [r5]
 891 006a 0133     		adds	r3, r3, #1
 892 006c 0A32     		adds	r2, r2, #10
 893 006e 2370     		strb	r3, [r4]
 894 0070 3260     		str	r2, [r6]
 895 0072 0120     		movs	r0, #1
 896 0074 70BD     		pop	{r4, r5, r6, pc}
 897              	.L119:
 898 0076 0120     		movs	r0, #1
 899 0078 70BD     		pop	{r4, r5, r6, pc}
 900              	.L120:
 901 007a 0120     		movs	r0, #1
 902 007c D5E7     		b	.L115
 903              	.L113:
 904 007e FFF7FEFF 		bl	_Z17send_DHCP_REQUESTv
 905 0082 94F90030 		ldrsb	r3, [r4]
 906 0086 EDE7     		b	.L112
 907              	.L130:
 908              		.align	2
 909              	.L129:
 910 0088 00000000 		.word	.LANCHOR15
 911 008c 00000000 		.word	.LANCHOR11
 912 0090 00000000 		.word	.LANCHOR16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 17


 913 0094 00000000 		.word	.LANCHOR17
 914              		.size	_Z18check_DHCP_timeoutv, .-_Z18check_DHCP_timeoutv
 915              		.section	.text._Z19check_DHCP_leasedIPv,"ax",%progbits
 916              		.align	1
 917              		.p2align 2,,3
 918              		.global	_Z19check_DHCP_leasedIPv
 919              		.syntax unified
 920              		.thumb
 921              		.thumb_func
 922              		.fpu fpv4-sp-d16
 923              		.type	_Z19check_DHCP_leasedIPv, %function
 924              	_Z19check_DHCP_leasedIPv:
 925              		@ args = 0, pretend = 0, frame = 0
 926              		@ frame_needed = 0, uses_anonymous_args = 0
 927 0000 10B5     		push	{r4, lr}
 928 0002 4FF4D850 		mov	r0, #6912
 929 0006 82B0     		sub	sp, sp, #8
 930 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 931 000c 0321     		movs	r1, #3
 932 000e 0446     		mov	r4, r0
 933 0010 4FF4D850 		mov	r0, #6912
 934 0014 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 935 0018 094A     		ldr	r2, .L133
 936 001a 0A4B     		ldr	r3, .L133+4
 937 001c 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 938 001e 1B68     		ldr	r3, [r3]
 939 0020 0949     		ldr	r1, .L133+8
 940 0022 41F28832 		movw	r2, #5000
 941 0026 0092     		str	r2, [sp]
 942 0028 1122     		movs	r2, #17
 943 002a FFF7FEFF 		bl	_Z6sendtohPKht9IPAddresst
 944 002e 2146     		mov	r1, r4
 945 0030 4FF4D850 		mov	r0, #6912
 946 0034 02B0     		add	sp, sp, #8
 947              		@ sp needed
 948 0036 BDE81040 		pop	{r4, lr}
 949 003a FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 950              	.L134:
 951 003e 00BF     		.align	2
 952              	.L133:
 953 0040 00000000 		.word	.LANCHOR10
 954 0044 00000000 		.word	.LANCHOR0
 955 0048 00000000 		.word	.LC0
 956              		.size	_Z19check_DHCP_leasedIPv, .-_Z19check_DHCP_leasedIPv
 957              		.section	.text._Z8DHCP_runv,"ax",%progbits
 958              		.align	1
 959              		.p2align 2,,3
 960              		.global	_Z8DHCP_runv
 961              		.syntax unified
 962              		.thumb
 963              		.thumb_func
 964              		.fpu fpv4-sp-d16
 965              		.type	_Z8DHCP_runv, %function
 966              	_Z8DHCP_runv:
 967              		@ args = 0, pretend = 0, frame = 8
 968              		@ frame_needed = 0, uses_anonymous_args = 0
 969 0000 30B5     		push	{r4, r5, lr}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 18


 970 0002 7A4C     		ldr	r4, .L170
 971 0004 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 972 0006 062B     		cmp	r3, #6
 973 0008 83B0     		sub	sp, sp, #12
 974 000a 37D0     		beq	.L156
 975 000c 784D     		ldr	r5, .L170+4
 976 000e 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 977 0010 4001     		lsls	r0, r0, #5
 978 0012 00F54270 		add	r0, r0, #776
 979 0016 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 980 001a 2228     		cmp	r0, #34
 981 001c 16D1     		bne	.L166
 982 001e 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 983 0020 FFF7FEFF 		bl	_Z9IsSendingh
 984 0024 28B1     		cbz	r0, .L147
 985              	.L138:
 986 0026 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 987 0028 FFF7FEFF 		bl	_Z17CheckSendCompleteh
 988 002c 714B     		ldr	r3, .L170+8
 989 002e 1860     		str	r0, [r3]
 990 0030 08B3     		cbz	r0, .L165
 991              	.L147:
 992 0032 FFF7FEFF 		bl	_Z12parseDHCPMSGv
 993 0036 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 994 0038 C5B2     		uxtb	r5, r0
 995 003a 082B     		cmp	r3, #8
 996 003c 1BD8     		bhi	.L165
 997 003e DFE803F0 		tbb	[pc, r3]
 998              	.L140:
 999 0042 2E       		.byte	(.L139-.L140)/2
 1000 0043 11       		.byte	(.L141-.L140)/2
 1001 0044 36       		.byte	(.L142-.L140)/2
 1002 0045 45       		.byte	(.L143-.L140)/2
 1003 0046 50       		.byte	(.L144-.L140)/2
 1004 0047 1A       		.byte	(.L165-.L140)/2
 1005 0048 1A       		.byte	(.L165-.L140)/2
 1006 0049 60       		.byte	(.L145-.L140)/2
 1007 004a 20       		.byte	(.L146-.L140)/2
 1008 004b 00       		.p2align 1
 1009              	.L166:
 1010 004c 0023     		movs	r3, #0
 1011 004e 4422     		movs	r2, #68
 1012 0050 0221     		movs	r1, #2
 1013 0052 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1014 0054 FFF7FEFF 		bl	_Z6sockethhth
 1015 0058 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1016 005a FFF7FEFF 		bl	_Z9IsSendingh
 1017 005e 0028     		cmp	r0, #0
 1018 0060 E1D1     		bne	.L138
 1019 0062 E6E7     		b	.L147
 1020              	.L141:
 1021 0064 022D     		cmp	r5, #2
 1022 0066 5FD1     		bne	.L148
 1023 0068 6349     		ldr	r1, .L170+12
 1024 006a 6448     		ldr	r0, .L170+16
 1025 006c FFF7FEFF 		bl	_ZN9IPAddress5SetV4EPKh
 1026 0070 FFF7FEFF 		bl	_Z17send_DHCP_REQUESTv
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 19


 1027 0074 2570     		strb	r5, [r4]
 1028              	.L165:
 1029 0076 0120     		movs	r0, #1
 1030              	.L136:
 1031 0078 03B0     		add	sp, sp, #12
 1032              		@ sp needed
 1033 007a 30BD     		pop	{r4, r5, pc}
 1034              	.L156:
 1035 007c 0520     		movs	r0, #5
 1036 007e 03B0     		add	sp, sp, #12
 1037              		@ sp needed
 1038 0080 30BD     		pop	{r4, r5, pc}
 1039              	.L146:
 1040 0082 5F4B     		ldr	r3, .L170+20
 1041 0084 1A68     		ldr	r2, [r3]
 1042 0086 032A     		cmp	r2, #3
 1043 0088 F5D9     		bls	.L165
 1044 008a 5E48     		ldr	r0, .L170+24
 1045 008c 5E49     		ldr	r1, .L170+28
 1046 008e 0022     		movs	r2, #0
 1047 0090 0A25     		movs	r5, #10
 1048 0092 0560     		str	r5, [r0]
 1049 0094 0A70     		strb	r2, [r1]
 1050 0096 1A60     		str	r2, [r3]
 1051 0098 2270     		strb	r2, [r4]
 1052 009a 0120     		movs	r0, #1
 1053 009c ECE7     		b	.L136
 1054              	.L139:
 1055 009e 574B     		ldr	r3, .L170+16
 1056 00a0 0022     		movs	r2, #0
 1057 00a2 1A60     		str	r2, [r3]
 1058 00a4 FFF7FEFF 		bl	_Z18send_DHCP_DISCOVERv
 1059 00a8 0120     		movs	r0, #1
 1060 00aa 2070     		strb	r0, [r4]
 1061 00ac E4E7     		b	.L136
 1062              	.L142:
 1063 00ae 052D     		cmp	r5, #5
 1064 00b0 79D0     		beq	.L167
 1065 00b2 062D     		cmp	r5, #6
 1066 00b4 38D1     		bne	.L148
 1067 00b6 5248     		ldr	r0, .L170+20
 1068 00b8 534D     		ldr	r5, .L170+28
 1069 00ba 524A     		ldr	r2, .L170+24
 1070 00bc 0023     		movs	r3, #0
 1071 00be 0A21     		movs	r1, #10
 1072 00c0 0360     		str	r3, [r0]
 1073 00c2 0120     		movs	r0, #1
 1074 00c4 2B70     		strb	r3, [r5]
 1075 00c6 1160     		str	r1, [r2]
 1076 00c8 2070     		strb	r0, [r4]
 1077 00ca D5E7     		b	.L136
 1078              	.L143:
 1079 00cc 4F4B     		ldr	r3, .L170+32
 1080 00ce 1B68     		ldr	r3, [r3]
 1081 00d0 5A1C     		adds	r2, r3, #1
 1082 00d2 04D0     		beq	.L159
 1083 00d4 4A4D     		ldr	r5, .L170+20
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 20


 1084 00d6 2A68     		ldr	r2, [r5]
 1085 00d8 B2EB530F 		cmp	r2, r3, lsr #1
 1086 00dc 3ED8     		bhi	.L168
 1087              	.L159:
 1088 00de 0420     		movs	r0, #4
 1089 00e0 CAE7     		b	.L136
 1090              	.L144:
 1091 00e2 052D     		cmp	r5, #5
 1092 00e4 23D0     		beq	.L169
 1093 00e6 062D     		cmp	r5, #6
 1094 00e8 1ED1     		bne	.L148
 1095 00ea 454A     		ldr	r2, .L170+20
 1096 00ec 464D     		ldr	r5, .L170+28
 1097 00ee 4549     		ldr	r1, .L170+24
 1098 00f0 0023     		movs	r3, #0
 1099 00f2 0A20     		movs	r0, #10
 1100 00f4 1360     		str	r3, [r2]
 1101 00f6 0122     		movs	r2, #1
 1102 00f8 0860     		str	r0, [r1]
 1103 00fa 2B70     		strb	r3, [r5]
 1104 00fc 2270     		strb	r2, [r4]
 1105 00fe 0420     		movs	r0, #4
 1106 0100 BAE7     		b	.L136
 1107              	.L145:
 1108 0102 3C4B     		ldr	r3, .L170+8
 1109 0104 1B68     		ldr	r3, [r3]
 1110 0106 0D33     		adds	r3, r3, #13
 1111 0108 3CD1     		bne	.L152
 1112 010a 414B     		ldr	r3, .L170+36
 1113 010c 3E4D     		ldr	r5, .L170+28
 1114 010e 1B68     		ldr	r3, [r3]
 1115 0110 9847     		blx	r3
 1116 0112 3B4A     		ldr	r2, .L170+20
 1117 0114 3B49     		ldr	r1, .L170+24
 1118 0116 0023     		movs	r3, #0
 1119 0118 0A20     		movs	r0, #10
 1120 011a 1360     		str	r3, [r2]
 1121 011c 0322     		movs	r2, #3
 1122 011e 0860     		str	r0, [r1]
 1123 0120 2B70     		strb	r3, [r5]
 1124 0122 2270     		strb	r2, [r4]
 1125 0124 0220     		movs	r0, #2
 1126 0126 A7E7     		b	.L136
 1127              	.L148:
 1128 0128 FFF7FEFF 		bl	_Z18check_DHCP_timeoutv
 1129 012c A4E7     		b	.L136
 1130              	.L169:
 1131 012e 394A     		ldr	r2, .L170+40
 1132 0130 324B     		ldr	r3, .L170+16
 1133 0132 1268     		ldr	r2, [r2]
 1134 0134 1B68     		ldr	r3, [r3]
 1135 0136 344D     		ldr	r5, .L170+28
 1136 0138 0021     		movs	r1, #0
 1137 013a 9A42     		cmp	r2, r3
 1138 013c 2970     		strb	r1, [r5]
 1139 013e 53D0     		beq	.L160
 1140 0140 354B     		ldr	r3, .L170+44
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 21


 1141 0142 1B68     		ldr	r3, [r3]
 1142 0144 9847     		blx	r3
 1143 0146 0320     		movs	r0, #3
 1144              	.L155:
 1145 0148 2D49     		ldr	r1, .L170+20
 1146 014a 2E4A     		ldr	r2, .L170+24
 1147 014c 0023     		movs	r3, #0
 1148 014e 0B60     		str	r3, [r1]
 1149 0150 2B70     		strb	r3, [r5]
 1150 0152 0A21     		movs	r1, #10
 1151 0154 0323     		movs	r3, #3
 1152 0156 1160     		str	r1, [r2]
 1153 0158 2370     		strb	r3, [r4]
 1154 015a 8DE7     		b	.L136
 1155              	.L168:
 1156 015c 2F4A     		ldr	r2, .L170+48
 1157 015e 2748     		ldr	r0, .L170+16
 1158 0160 1368     		ldr	r3, [r2]
 1159 0162 2C49     		ldr	r1, .L170+40
 1160 0164 0068     		ldr	r0, [r0]
 1161 0166 0860     		str	r0, [r1]
 1162 0168 0133     		adds	r3, r3, #1
 1163 016a 1360     		str	r3, [r2]
 1164 016c FFF7FEFF 		bl	_Z17send_DHCP_REQUESTv
 1165 0170 2449     		ldr	r1, .L170+24
 1166 0172 254A     		ldr	r2, .L170+28
 1167 0174 0A20     		movs	r0, #10
 1168 0176 0023     		movs	r3, #0
 1169 0178 0860     		str	r0, [r1]
 1170 017a 0420     		movs	r0, #4
 1171 017c 1370     		strb	r3, [r2]
 1172 017e 2B60     		str	r3, [r5]
 1173 0180 2070     		strb	r0, [r4]
 1174 0182 79E7     		b	.L136
 1175              	.L152:
 1176 0184 FFF7FEFF 		bl	_Z17send_DHCP_DECLINEv
 1177 0188 254B     		ldr	r3, .L170+52
 1178 018a 1F4D     		ldr	r5, .L170+28
 1179 018c 1B68     		ldr	r3, [r3]
 1180 018e 9847     		blx	r3
 1181 0190 1B4A     		ldr	r2, .L170+20
 1182 0192 1C49     		ldr	r1, .L170+24
 1183 0194 0023     		movs	r3, #0
 1184 0196 0A20     		movs	r0, #10
 1185 0198 1360     		str	r3, [r2]
 1186 019a 0822     		movs	r2, #8
 1187 019c 0860     		str	r0, [r1]
 1188 019e 2B70     		strb	r3, [r5]
 1189 01a0 2270     		strb	r2, [r4]
 1190 01a2 0120     		movs	r0, #1
 1191 01a4 68E7     		b	.L136
 1192              	.L167:
 1193 01a6 02A9     		add	r1, sp, #8
 1194 01a8 0025     		movs	r5, #0
 1195 01aa 41F8045D 		str	r5, [r1, #-4]!
 1196 01ae 4FF47060 		mov	r0, #3840
 1197 01b2 FFF7FEFF 		bl	_Z15WIZCHIP_READ_IPmR9IPAddress
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 22


 1198 01b6 114A     		ldr	r2, .L170+16
 1199 01b8 019B     		ldr	r3, [sp, #4]
 1200 01ba 1268     		ldr	r2, [r2]
 1201 01bc 9A42     		cmp	r2, r3
 1202 01be 0DD1     		bne	.L150
 1203 01c0 134B     		ldr	r3, .L170+36
 1204 01c2 1B68     		ldr	r3, [r3]
 1205 01c4 9847     		blx	r3
 1206 01c6 0E4B     		ldr	r3, .L170+20
 1207 01c8 0E49     		ldr	r1, .L170+24
 1208 01ca 0F4A     		ldr	r2, .L170+28
 1209 01cc 1D60     		str	r5, [r3]
 1210 01ce 0A20     		movs	r0, #10
 1211 01d0 0323     		movs	r3, #3
 1212 01d2 0860     		str	r0, [r1]
 1213 01d4 1570     		strb	r5, [r2]
 1214 01d6 2370     		strb	r3, [r4]
 1215 01d8 0220     		movs	r0, #2
 1216 01da 4DE7     		b	.L136
 1217              	.L150:
 1218 01dc FFF7FEFF 		bl	_Z19check_DHCP_leasedIPv
 1219 01e0 0723     		movs	r3, #7
 1220 01e2 2370     		strb	r3, [r4]
 1221 01e4 0120     		movs	r0, #1
 1222 01e6 47E7     		b	.L136
 1223              	.L160:
 1224 01e8 0420     		movs	r0, #4
 1225 01ea ADE7     		b	.L155
 1226              	.L171:
 1227              		.align	2
 1228              	.L170:
 1229 01ec 00000000 		.word	.LANCHOR11
 1230 01f0 00000000 		.word	.LANCHOR10
 1231 01f4 00000000 		.word	.LANCHOR18
 1232 01f8 10000000 		.word	.LANCHOR7+16
 1233 01fc 00000000 		.word	.LANCHOR0
 1234 0200 00000000 		.word	.LANCHOR16
 1235 0204 00000000 		.word	.LANCHOR17
 1236 0208 00000000 		.word	.LANCHOR15
 1237 020c 00000000 		.word	.LANCHOR14
 1238 0210 00000000 		.word	.LANCHOR4
 1239 0214 00000000 		.word	.LANCHOR19
 1240 0218 00000000 		.word	.LANCHOR5
 1241 021c 00000000 		.word	.LANCHOR8
 1242 0220 00000000 		.word	.LANCHOR6
 1243              		.size	_Z8DHCP_runv, .-_Z8DHCP_runv
 1244              		.section	.text._Z9DHCP_inithmPKc,"ax",%progbits
 1245              		.align	1
 1246              		.p2align 2,,3
 1247              		.global	_Z9DHCP_inithmPKc
 1248              		.syntax unified
 1249              		.thumb
 1250              		.thumb_func
 1251              		.fpu fpv4-sp-d16
 1252              		.type	_Z9DHCP_inithmPKc, %function
 1253              	_Z9DHCP_inithmPKc:
 1254              		@ args = 0, pretend = 0, frame = 8
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 23


 1255              		@ frame_needed = 0, uses_anonymous_args = 0
 1256 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1257 0004 2B4F     		ldr	r7, .L175
 1258 0006 2C4E     		ldr	r6, .L175+4
 1259 0008 83B0     		sub	sp, sp, #12
 1260 000a 0546     		mov	r5, r0
 1261 000c 0C46     		mov	r4, r1
 1262 000e 3846     		mov	r0, r7
 1263 0010 1146     		mov	r1, r2
 1264 0012 1022     		movs	r2, #16
 1265 0014 FFF7FEFF 		bl	strncpy
 1266 0018 0023     		movs	r3, #0
 1267 001a 3146     		mov	r1, r6
 1268 001c 0622     		movs	r2, #6
 1269 001e 4FF41060 		mov	r0, #2304
 1270 0022 FB73     		strb	r3, [r7, #15]
 1271 0024 0193     		str	r3, [sp, #4]
 1272 0026 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 1273 002a 7178     		ldrb	r1, [r6, #1]	@ zero_extendqisi2
 1274 002c 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 1275 002e B278     		ldrb	r2, [r6, #2]	@ zero_extendqisi2
 1276 0030 F078     		ldrb	r0, [r6, #3]	@ zero_extendqisi2
 1277 0032 0B43     		orrs	r3, r3, r1
 1278 0034 1343     		orrs	r3, r3, r2
 1279 0036 3179     		ldrb	r1, [r6, #4]	@ zero_extendqisi2
 1280 0038 7279     		ldrb	r2, [r6, #5]	@ zero_extendqisi2
 1281 003a 0343     		orrs	r3, r3, r0
 1282 003c 0B43     		orrs	r3, r3, r1
 1283 003e 1343     		orrs	r3, r3, r2
 1284 0040 08D1     		bne	.L173
 1285 0042 1E48     		ldr	r0, .L175+8
 1286 0044 3060     		str	r0, [r6]
 1287 0046 B380     		strh	r3, [r6, #4]	@ movhi
 1288 0048 3146     		mov	r1, r6
 1289 004a 0622     		movs	r2, #6
 1290 004c 4FF41060 		mov	r0, #2304
 1291 0050 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1292              	.L173:
 1293 0054 1A48     		ldr	r0, .L175+12
 1294 0056 1B49     		ldr	r1, .L175+16
 1295 0058 1B4A     		ldr	r2, .L175+20
 1296 005a 1C4B     		ldr	r3, .L175+24
 1297 005c DFF87C90 		ldr	r9, .L175+40
 1298 0060 1B4E     		ldr	r6, .L175+28
 1299 0062 1C4F     		ldr	r7, .L175+32
 1300 0064 0570     		strb	r5, [r0]
 1301 0066 4FF0FF30 		mov	r0, #-1
 1302 006a 0025     		movs	r5, #0
 1303 006c 4FF00A08 		mov	r8, #10
 1304 0070 0860     		str	r0, [r1]
 1305 0072 1460     		str	r4, [r2]
 1306 0074 01A9     		add	r1, sp, #4
 1307 0076 0122     		movs	r2, #1
 1308 0078 4FF47060 		mov	r0, #3840
 1309 007c 1A60     		str	r2, [r3]
 1310 007e C9F80050 		str	r5, [r9]
 1311 0082 3570     		strb	r5, [r6]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 24


 1312 0084 C7F80080 		str	r8, [r7]
 1313 0088 FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
 1314 008c 01A9     		add	r1, sp, #4
 1315 008e 4FF47060 		mov	r0, #3840
 1316 0092 FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
 1317 0096 01A9     		add	r1, sp, #4
 1318 0098 4FF48070 		mov	r0, #256
 1319 009c FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
 1320 00a0 0D4B     		ldr	r3, .L175+36
 1321 00a2 C9F80050 		str	r5, [r9]
 1322 00a6 C7F80080 		str	r8, [r7]
 1323 00aa 3570     		strb	r5, [r6]
 1324 00ac 1D70     		strb	r5, [r3]
 1325 00ae 03B0     		add	sp, sp, #12
 1326              		@ sp needed
 1327 00b0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1328              	.L176:
 1329              		.align	2
 1330              	.L175:
 1331 00b4 00000000 		.word	.LANCHOR9
 1332 00b8 00000000 		.word	.LANCHOR3
 1333 00bc 0008DC00 		.word	14419968
 1334 00c0 00000000 		.word	.LANCHOR10
 1335 00c4 00000000 		.word	.LANCHOR14
 1336 00c8 00000000 		.word	.LANCHOR8
 1337 00cc 00000000 		.word	.LANCHOR18
 1338 00d0 00000000 		.word	.LANCHOR15
 1339 00d4 00000000 		.word	.LANCHOR17
 1340 00d8 00000000 		.word	.LANCHOR11
 1341 00dc 00000000 		.word	.LANCHOR16
 1342              		.size	_Z9DHCP_inithmPKc, .-_Z9DHCP_inithmPKc
 1343              		.section	.text._Z18reset_DHCP_timeoutv,"ax",%progbits
 1344              		.align	1
 1345              		.p2align 2,,3
 1346              		.global	_Z18reset_DHCP_timeoutv
 1347              		.syntax unified
 1348              		.thumb
 1349              		.thumb_func
 1350              		.fpu fpv4-sp-d16
 1351              		.type	_Z18reset_DHCP_timeoutv, %function
 1352              	_Z18reset_DHCP_timeoutv:
 1353              		@ args = 0, pretend = 0, frame = 0
 1354              		@ frame_needed = 0, uses_anonymous_args = 0
 1355              		@ link register save eliminated.
 1356 0000 0548     		ldr	r0, .L179
 1357 0002 064A     		ldr	r2, .L179+4
 1358 0004 10B4     		push	{r4}
 1359 0006 0023     		movs	r3, #0
 1360 0008 054C     		ldr	r4, .L179+8
 1361 000a 0370     		strb	r3, [r0]
 1362 000c 0A21     		movs	r1, #10
 1363 000e 2360     		str	r3, [r4]
 1364 0010 1160     		str	r1, [r2]
 1365 0012 5DF8044B 		ldr	r4, [sp], #4
 1366 0016 7047     		bx	lr
 1367              	.L180:
 1368              		.align	2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 25


 1369              	.L179:
 1370 0018 00000000 		.word	.LANCHOR15
 1371 001c 00000000 		.word	.LANCHOR17
 1372 0020 00000000 		.word	.LANCHOR16
 1373              		.size	_Z18reset_DHCP_timeoutv, .-_Z18reset_DHCP_timeoutv
 1374              		.section	.text._Z17DHCP_time_handlerv,"ax",%progbits
 1375              		.align	1
 1376              		.p2align 2,,3
 1377              		.global	_Z17DHCP_time_handlerv
 1378              		.syntax unified
 1379              		.thumb
 1380              		.thumb_func
 1381              		.fpu fpv4-sp-d16
 1382              		.type	_Z17DHCP_time_handlerv, %function
 1383              	_Z17DHCP_time_handlerv:
 1384              		@ args = 0, pretend = 0, frame = 0
 1385              		@ frame_needed = 0, uses_anonymous_args = 0
 1386              		@ link register save eliminated.
 1387 0000 024A     		ldr	r2, .L182
 1388 0002 1368     		ldr	r3, [r2]
 1389 0004 0133     		adds	r3, r3, #1
 1390 0006 1360     		str	r3, [r2]
 1391 0008 7047     		bx	lr
 1392              	.L183:
 1393 000a 00BF     		.align	2
 1394              	.L182:
 1395 000c 00000000 		.word	.LANCHOR16
 1396              		.size	_Z17DHCP_time_handlerv, .-_Z17DHCP_time_handlerv
 1397              		.section	.text._Z13getIPfromDHCPv,"ax",%progbits
 1398              		.align	1
 1399              		.p2align 2,,3
 1400              		.global	_Z13getIPfromDHCPv
 1401              		.syntax unified
 1402              		.thumb
 1403              		.thumb_func
 1404              		.fpu fpv4-sp-d16
 1405              		.type	_Z13getIPfromDHCPv, %function
 1406              	_Z13getIPfromDHCPv:
 1407              		@ args = 0, pretend = 0, frame = 0
 1408              		@ frame_needed = 0, uses_anonymous_args = 0
 1409              		@ link register save eliminated.
 1410 0000 014B     		ldr	r3, .L185
 1411 0002 1868     		ldr	r0, [r3]
 1412 0004 7047     		bx	lr
 1413              	.L186:
 1414 0006 00BF     		.align	2
 1415              	.L185:
 1416 0008 00000000 		.word	.LANCHOR0
 1417              		.size	_Z13getIPfromDHCPv, .-_Z13getIPfromDHCPv
 1418              		.section	.text._Z13getGWfromDHCPv,"ax",%progbits
 1419              		.align	1
 1420              		.p2align 2,,3
 1421              		.global	_Z13getGWfromDHCPv
 1422              		.syntax unified
 1423              		.thumb
 1424              		.thumb_func
 1425              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 26


 1426              		.type	_Z13getGWfromDHCPv, %function
 1427              	_Z13getGWfromDHCPv:
 1428              		@ args = 0, pretend = 0, frame = 0
 1429              		@ frame_needed = 0, uses_anonymous_args = 0
 1430              		@ link register save eliminated.
 1431 0000 014B     		ldr	r3, .L188
 1432 0002 1868     		ldr	r0, [r3]
 1433 0004 7047     		bx	lr
 1434              	.L189:
 1435 0006 00BF     		.align	2
 1436              	.L188:
 1437 0008 00000000 		.word	.LANCHOR2
 1438              		.size	_Z13getGWfromDHCPv, .-_Z13getGWfromDHCPv
 1439              		.section	.text._Z13getSNfromDHCPv,"ax",%progbits
 1440              		.align	1
 1441              		.p2align 2,,3
 1442              		.global	_Z13getSNfromDHCPv
 1443              		.syntax unified
 1444              		.thumb
 1445              		.thumb_func
 1446              		.fpu fpv4-sp-d16
 1447              		.type	_Z13getSNfromDHCPv, %function
 1448              	_Z13getSNfromDHCPv:
 1449              		@ args = 0, pretend = 0, frame = 0
 1450              		@ frame_needed = 0, uses_anonymous_args = 0
 1451              		@ link register save eliminated.
 1452 0000 014B     		ldr	r3, .L191
 1453 0002 1868     		ldr	r0, [r3]
 1454 0004 7047     		bx	lr
 1455              	.L192:
 1456 0006 00BF     		.align	2
 1457              	.L191:
 1458 0008 00000000 		.word	.LANCHOR1
 1459              		.size	_Z13getSNfromDHCPv, .-_Z13getSNfromDHCPv
 1460              		.section	.text._Z14getDNSfromDHCPv,"ax",%progbits
 1461              		.align	1
 1462              		.p2align 2,,3
 1463              		.global	_Z14getDNSfromDHCPv
 1464              		.syntax unified
 1465              		.thumb
 1466              		.thumb_func
 1467              		.fpu fpv4-sp-d16
 1468              		.type	_Z14getDNSfromDHCPv, %function
 1469              	_Z14getDNSfromDHCPv:
 1470              		@ args = 0, pretend = 0, frame = 0
 1471              		@ frame_needed = 0, uses_anonymous_args = 0
 1472              		@ link register save eliminated.
 1473 0000 014B     		ldr	r3, .L194
 1474 0002 1868     		ldr	r0, [r3]
 1475 0004 7047     		bx	lr
 1476              	.L195:
 1477 0006 00BF     		.align	2
 1478              	.L194:
 1479 0008 00000000 		.word	.LANCHOR13
 1480              		.size	_Z14getDNSfromDHCPv, .-_Z14getDNSfromDHCPv
 1481              		.section	.text._Z16getDHCPLeasetimev,"ax",%progbits
 1482              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 27


 1483              		.p2align 2,,3
 1484              		.global	_Z16getDHCPLeasetimev
 1485              		.syntax unified
 1486              		.thumb
 1487              		.thumb_func
 1488              		.fpu fpv4-sp-d16
 1489              		.type	_Z16getDHCPLeasetimev, %function
 1490              	_Z16getDHCPLeasetimev:
 1491              		@ args = 0, pretend = 0, frame = 0
 1492              		@ frame_needed = 0, uses_anonymous_args = 0
 1493              		@ link register save eliminated.
 1494 0000 014B     		ldr	r3, .L197
 1495 0002 1868     		ldr	r0, [r3]
 1496 0004 7047     		bx	lr
 1497              	.L198:
 1498 0006 00BF     		.align	2
 1499              	.L197:
 1500 0008 00000000 		.word	.LANCHOR14
 1501              		.size	_Z16getDHCPLeasetimev, .-_Z16getDHCPLeasetimev
 1502              		.global	dhcp_ip_conflict
 1503              		.global	dhcp_ip_update
 1504              		.global	dhcp_ip_assign
 1505              		.global	DHCP_CHADDR
 1506              		.global	HOST_NAME
 1507              		.global	dhcpLastSendStatus
 1508              		.global	DHCP_XID
 1509              		.global	dhcp_tick_next
 1510              		.global	dhcp_tick_1s
 1511              		.global	dhcp_lease_time
 1512              		.global	dhcp_retry_count
 1513              		.global	dhcp_state
 1514              		.global	DHCP_allocated_dns
 1515              		.global	DHCP_allocated_sn
 1516              		.global	DHCP_allocated_gw
 1517              		.global	DHCP_allocated_ip
 1518              		.global	OLD_allocated_ip
 1519              		.global	DHCP_SIP
 1520              		.global	DHCP_SOCKET
 1521              		.section	.bss.DHCP_CHADDR,"aw",%nobits
 1522              		.align	2
 1523              		.set	.LANCHOR3,. + 0
 1524              		.type	DHCP_CHADDR, %object
 1525              		.size	DHCP_CHADDR, 6
 1526              	DHCP_CHADDR:
 1527 0000 00000000 		.space	6
 1527      0000
 1528              		.section	.bss.DHCP_SIP,"aw",%nobits
 1529              		.align	2
 1530              		.set	.LANCHOR12,. + 0
 1531              		.type	DHCP_SIP, %object
 1532              		.size	DHCP_SIP, 4
 1533              	DHCP_SIP:
 1534 0000 00000000 		.space	4
 1535              		.section	.bss.DHCP_SOCKET,"aw",%nobits
 1536              		.set	.LANCHOR10,. + 0
 1537              		.type	DHCP_SOCKET, %object
 1538              		.size	DHCP_SOCKET, 1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 28


 1539              	DHCP_SOCKET:
 1540 0000 00       		.space	1
 1541              		.section	.bss.DHCP_XID,"aw",%nobits
 1542              		.align	2
 1543              		.set	.LANCHOR8,. + 0
 1544              		.type	DHCP_XID, %object
 1545              		.size	DHCP_XID, 4
 1546              	DHCP_XID:
 1547 0000 00000000 		.space	4
 1548              		.section	.bss.DHCP_allocated_dns,"aw",%nobits
 1549              		.align	2
 1550              		.set	.LANCHOR13,. + 0
 1551              		.type	DHCP_allocated_dns, %object
 1552              		.size	DHCP_allocated_dns, 4
 1553              	DHCP_allocated_dns:
 1554 0000 00000000 		.space	4
 1555              		.section	.bss.DHCP_allocated_gw,"aw",%nobits
 1556              		.align	2
 1557              		.set	.LANCHOR2,. + 0
 1558              		.type	DHCP_allocated_gw, %object
 1559              		.size	DHCP_allocated_gw, 4
 1560              	DHCP_allocated_gw:
 1561 0000 00000000 		.space	4
 1562              		.section	.bss.DHCP_allocated_ip,"aw",%nobits
 1563              		.align	2
 1564              		.set	.LANCHOR0,. + 0
 1565              		.type	DHCP_allocated_ip, %object
 1566              		.size	DHCP_allocated_ip, 4
 1567              	DHCP_allocated_ip:
 1568 0000 00000000 		.space	4
 1569              		.section	.bss.DHCP_allocated_sn,"aw",%nobits
 1570              		.align	2
 1571              		.set	.LANCHOR1,. + 0
 1572              		.type	DHCP_allocated_sn, %object
 1573              		.size	DHCP_allocated_sn, 4
 1574              	DHCP_allocated_sn:
 1575 0000 00000000 		.space	4
 1576              		.section	.bss.OLD_allocated_ip,"aw",%nobits
 1577              		.align	2
 1578              		.set	.LANCHOR19,. + 0
 1579              		.type	OLD_allocated_ip, %object
 1580              		.size	OLD_allocated_ip, 4
 1581              	OLD_allocated_ip:
 1582 0000 00000000 		.space	4
 1583              		.section	.bss._ZL17dhcpMessageBuffer,"aw",%nobits
 1584              		.align	2
 1585              		.set	.LANCHOR7,. + 0
 1586              		.type	_ZL17dhcpMessageBuffer, %object
 1587              		.size	_ZL17dhcpMessageBuffer, 548
 1588              	_ZL17dhcpMessageBuffer:
 1589 0000 00000000 		.space	548
 1589      00000000 
 1589      00000000 
 1589      00000000 
 1589      00000000 
 1590              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1591              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 29


 1592              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1593              	_ZL28cpu_irq_prev_interrupt_state:
 1594 0000 00       		.space	1
 1595              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1596              		.align	2
 1597              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1598              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1599              	_ZL32cpu_irq_critical_section_counter:
 1600 0000 00000000 		.space	4
 1601              		.section	.bss.dhcpLastSendStatus,"aw",%nobits
 1602              		.align	2
 1603              		.set	.LANCHOR18,. + 0
 1604              		.type	dhcpLastSendStatus, %object
 1605              		.size	dhcpLastSendStatus, 4
 1606              	dhcpLastSendStatus:
 1607 0000 00000000 		.space	4
 1608              		.section	.bss.dhcp_lease_time,"aw",%nobits
 1609              		.align	2
 1610              		.set	.LANCHOR14,. + 0
 1611              		.type	dhcp_lease_time, %object
 1612              		.size	dhcp_lease_time, 4
 1613              	dhcp_lease_time:
 1614 0000 00000000 		.space	4
 1615              		.section	.bss.dhcp_retry_count,"aw",%nobits
 1616              		.set	.LANCHOR15,. + 0
 1617              		.type	dhcp_retry_count, %object
 1618              		.size	dhcp_retry_count, 1
 1619              	dhcp_retry_count:
 1620 0000 00       		.space	1
 1621              		.section	.bss.dhcp_state,"aw",%nobits
 1622              		.set	.LANCHOR11,. + 0
 1623              		.type	dhcp_state, %object
 1624              		.size	dhcp_state, 1
 1625              	dhcp_state:
 1626 0000 00       		.space	1
 1627              		.section	.bss.dhcp_tick_1s,"aw",%nobits
 1628              		.align	2
 1629              		.set	.LANCHOR16,. + 0
 1630              		.type	dhcp_tick_1s, %object
 1631              		.size	dhcp_tick_1s, 4
 1632              	dhcp_tick_1s:
 1633 0000 00000000 		.space	4
 1634              		.section	.bss.dhcp_tick_next,"aw",%nobits
 1635              		.align	2
 1636              		.set	.LANCHOR17,. + 0
 1637              		.type	dhcp_tick_next, %object
 1638              		.size	dhcp_tick_next, 4
 1639              	dhcp_tick_next:
 1640 0000 00000000 		.space	4
 1641              		.section	.data.HOST_NAME,"aw",%progbits
 1642              		.align	2
 1643              		.set	.LANCHOR9,. + 0
 1644              		.type	HOST_NAME, %object
 1645              		.size	HOST_NAME, 16
 1646              	HOST_NAME:
 1647 0000 44756574 		.ascii	"DuetEthernet\000"
 1647      45746865 
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccHIde1i.s 			page 30


 1647      726E6574 
 1647      00
 1648 000d 000000   		.space	3
 1649              		.section	.data.dhcp_ip_assign,"aw",%progbits
 1650              		.align	2
 1651              		.set	.LANCHOR4,. + 0
 1652              		.type	dhcp_ip_assign, %object
 1653              		.size	dhcp_ip_assign, 4
 1654              	dhcp_ip_assign:
 1655 0000 00000000 		.word	_Z17default_ip_assignv
 1656              		.section	.data.dhcp_ip_conflict,"aw",%progbits
 1657              		.align	2
 1658              		.set	.LANCHOR6,. + 0
 1659              		.type	dhcp_ip_conflict, %object
 1660              		.size	dhcp_ip_conflict, 4
 1661              	dhcp_ip_conflict:
 1662 0000 00000000 		.word	_Z19default_ip_conflictv
 1663              		.section	.data.dhcp_ip_update,"aw",%progbits
 1664              		.align	2
 1665              		.set	.LANCHOR5,. + 0
 1666              		.type	dhcp_ip_update, %object
 1667              		.size	dhcp_ip_update, 4
 1668              	dhcp_ip_update:
 1669 0000 00000000 		.word	_Z17default_ip_updatev
 1670              		.section	.rodata._Z19check_DHCP_leasedIPv.str1.4,"aMS",%progbits,1
 1671              		.align	2
 1672              	.LC0:
 1673 0000 43484543 		.ascii	"CHECK_IP_CONFLICT\000"
 1673      4B5F4950 
 1673      5F434F4E 
 1673      464C4943 
 1673      5400
 1674              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
