ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccjS6fcl.s 			page 1


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
  13              		.file	"w5500.cpp"
  14              		.text
  15              		.section	.text._Z12WIZCHIP_READm,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z12WIZCHIP_READm
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z12WIZCHIP_READm, %function
  24              	_Z12WIZCHIP_READm:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 0446     		mov	r4, r0
  29 0004 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
  30 0008 2046     		mov	r0, r4
  31 000a FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
  32 000e FFF7FEFF 		bl	_ZN6WizSpi8ReadByteEv
  33 0012 0446     		mov	r4, r0
  34 0014 FFF7FEFF 		bl	_ZN6WizSpi9ReleaseSSEv
  35 0018 2046     		mov	r0, r4
  36 001a 10BD     		pop	{r4, pc}
  37              		.size	_Z12WIZCHIP_READm, .-_Z12WIZCHIP_READm
  38              		.section	.text._Z13WIZCHIP_WRITEmh,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	_Z13WIZCHIP_WRITEmh
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  46              		.type	_Z13WIZCHIP_WRITEmh, %function
  47              	_Z13WIZCHIP_WRITEmh:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50 0000 38B5     		push	{r3, r4, r5, lr}
  51 0002 0546     		mov	r5, r0
  52 0004 0C46     		mov	r4, r1
  53 0006 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
  54 000a 45F00400 		orr	r0, r5, #4
  55 000e FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
  56 0012 2046     		mov	r0, r4
  57 0014 FFF7FEFF 		bl	_ZN6WizSpi9WriteByteEh
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccjS6fcl.s 			page 2


  58 0018 BDE83840 		pop	{r3, r4, r5, lr}
  59 001c FFF7FEBF 		b	_ZN6WizSpi9ReleaseSSEv
  60              		.size	_Z13WIZCHIP_WRITEmh, .-_Z13WIZCHIP_WRITEmh
  61              		.section	.text._Z16WIZCHIP_READ_BUFmPht,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	_Z16WIZCHIP_READ_BUFmPht
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_Z16WIZCHIP_READ_BUFmPht, %function
  70              	_Z16WIZCHIP_READ_BUFmPht:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 70B5     		push	{r4, r5, r6, lr}
  74 0002 0646     		mov	r6, r0
  75 0004 0C46     		mov	r4, r1
  76 0006 1546     		mov	r5, r2
  77 0008 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
  78 000c 3046     		mov	r0, r6
  79 000e FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
  80 0012 2946     		mov	r1, r5
  81 0014 2046     		mov	r0, r4
  82 0016 FFF7FEFF 		bl	_ZN6WizSpi9ReadBurstEPhj
  83 001a BDE87040 		pop	{r4, r5, r6, lr}
  84 001e FFF7FEBF 		b	_ZN6WizSpi9ReleaseSSEv
  85              		.size	_Z16WIZCHIP_READ_BUFmPht, .-_Z16WIZCHIP_READ_BUFmPht
  86 0022 00BF     		.section	.text._Z17WIZCHIP_WRITE_BUFmPKht,"ax",%progbits
  87              		.align	1
  88              		.p2align 2,,3
  89              		.global	_Z17WIZCHIP_WRITE_BUFmPKht
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu fpv4-sp-d16
  94              		.type	_Z17WIZCHIP_WRITE_BUFmPKht, %function
  95              	_Z17WIZCHIP_WRITE_BUFmPKht:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98 0000 70B5     		push	{r4, r5, r6, lr}
  99 0002 0646     		mov	r6, r0
 100 0004 0C46     		mov	r4, r1
 101 0006 1546     		mov	r5, r2
 102 0008 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
 103 000c 46F00400 		orr	r0, r6, #4
 104 0010 FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
 105 0014 2946     		mov	r1, r5
 106 0016 2046     		mov	r0, r4
 107 0018 FFF7FEFF 		bl	_ZN6WizSpi9SendBurstEPKhj
 108 001c BDE87040 		pop	{r4, r5, r6, lr}
 109 0020 FFF7FEBF 		b	_ZN6WizSpi9ReleaseSSEv
 110              		.size	_Z17WIZCHIP_WRITE_BUFmPKht, .-_Z17WIZCHIP_WRITE_BUFmPKht
 111              		.section	.text._Z15WIZCHIP_READ_IPmR9IPAddress,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	_Z15WIZCHIP_READ_IPmR9IPAddress
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccjS6fcl.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv4-sp-d16
 119              		.type	_Z15WIZCHIP_READ_IPmR9IPAddress, %function
 120              	_Z15WIZCHIP_READ_IPmR9IPAddress:
 121              		@ args = 0, pretend = 0, frame = 8
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123 0000 10B5     		push	{r4, lr}
 124 0002 0422     		movs	r2, #4
 125 0004 82B0     		sub	sp, sp, #8
 126 0006 0C46     		mov	r4, r1
 127 0008 0DEB0201 		add	r1, sp, r2
 128 000c FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 129 0010 01A9     		add	r1, sp, #4
 130 0012 2046     		mov	r0, r4
 131 0014 FFF7FEFF 		bl	_ZN9IPAddress5SetV4EPKh
 132 0018 02B0     		add	sp, sp, #8
 133              		@ sp needed
 134 001a 10BD     		pop	{r4, pc}
 135              		.size	_Z15WIZCHIP_READ_IPmR9IPAddress, .-_Z15WIZCHIP_READ_IPmR9IPAddress
 136              		.section	.text._Z16WIZCHIP_WRITE_IPmRK9IPAddress,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu fpv4-sp-d16
 144              		.type	_Z16WIZCHIP_WRITE_IPmRK9IPAddress, %function
 145              	_Z16WIZCHIP_WRITE_IPmRK9IPAddress:
 146              		@ args = 0, pretend = 0, frame = 8
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148 0000 10B5     		push	{r4, lr}
 149 0002 0B46     		mov	r3, r1
 150 0004 82B0     		sub	sp, sp, #8
 151 0006 0446     		mov	r4, r0
 152 0008 01A9     		add	r1, sp, #4
 153 000a 1846     		mov	r0, r3
 154 000c FFF7FEFF 		bl	_ZNK9IPAddress8UnpackV4EPh
 155 0010 01A9     		add	r1, sp, #4
 156 0012 2046     		mov	r0, r4
 157 0014 0422     		movs	r2, #4
 158 0016 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 159 001a 02B0     		add	sp, sp, #8
 160              		@ sp needed
 161 001c 10BD     		pop	{r4, pc}
 162              		.size	_Z16WIZCHIP_WRITE_IPmRK9IPAddress, .-_Z16WIZCHIP_WRITE_IPmRK9IPAddress
 163 001e 00BF     		.section	.text._Z12getSn_TX_FSRh,"ax",%progbits
 164              		.align	1
 165              		.p2align 2,,3
 166              		.global	_Z12getSn_TX_FSRh
 167              		.syntax unified
 168              		.thumb
 169              		.thumb_func
 170              		.fpu fpv4-sp-d16
 171              		.type	_Z12getSn_TX_FSRh, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccjS6fcl.s 			page 4


 172              	_Z12getSn_TX_FSRh:
 173              		@ args = 0, pretend = 0, frame = 0
 174              		@ frame_needed = 0, uses_anonymous_args = 0
 175 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 176 0002 4601     		lsls	r6, r0, #5
 177 0004 0836     		adds	r6, r6, #8
 178 0006 06F50057 		add	r7, r6, #8192
 179 000a 0025     		movs	r5, #0
 180 000c 06F50456 		add	r6, r6, #8448
 181 0010 01E0     		b	.L16
 182              	.L15:
 183 0012 A542     		cmp	r5, r4
 184 0014 17D0     		beq	.L22
 185              	.L16:
 186 0016 3846     		mov	r0, r7
 187 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 188 001c 0402     		lsls	r4, r0, #8
 189 001e 3046     		mov	r0, r6
 190 0020 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 191 0024 A4B2     		uxth	r4, r4
 192 0026 0444     		add	r4, r4, r0
 193 0028 A4B2     		uxth	r4, r4
 194 002a 002C     		cmp	r4, #0
 195 002c F1D0     		beq	.L15
 196 002e 3846     		mov	r0, r7
 197 0030 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 198 0034 0502     		lsls	r5, r0, #8
 199 0036 3046     		mov	r0, r6
 200 0038 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 201 003c ADB2     		uxth	r5, r5
 202 003e 0544     		add	r5, r5, r0
 203 0040 ADB2     		uxth	r5, r5
 204 0042 A542     		cmp	r5, r4
 205 0044 E7D1     		bne	.L16
 206              	.L22:
 207 0046 2846     		mov	r0, r5
 208 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 209              		.size	_Z12getSn_TX_FSRh, .-_Z12getSn_TX_FSRh
 210 004a 00BF     		.section	.text._Z12getSn_RX_RSRh,"ax",%progbits
 211              		.align	1
 212              		.p2align 2,,3
 213              		.global	_Z12getSn_RX_RSRh
 214              		.syntax unified
 215              		.thumb
 216              		.thumb_func
 217              		.fpu fpv4-sp-d16
 218              		.type	_Z12getSn_RX_RSRh, %function
 219              	_Z12getSn_RX_RSRh:
 220              		@ args = 0, pretend = 0, frame = 0
 221              		@ frame_needed = 0, uses_anonymous_args = 0
 222 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 223 0002 4601     		lsls	r6, r0, #5
 224 0004 0836     		adds	r6, r6, #8
 225 0006 06F51857 		add	r7, r6, #9728
 226 000a 0025     		movs	r5, #0
 227 000c 06F51C56 		add	r6, r6, #9984
 228 0010 01E0     		b	.L25
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccjS6fcl.s 			page 5


 229              	.L24:
 230 0012 A542     		cmp	r5, r4
 231 0014 17D0     		beq	.L31
 232              	.L25:
 233 0016 3846     		mov	r0, r7
 234 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 235 001c 0402     		lsls	r4, r0, #8
 236 001e 3046     		mov	r0, r6
 237 0020 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 238 0024 A4B2     		uxth	r4, r4
 239 0026 0444     		add	r4, r4, r0
 240 0028 A4B2     		uxth	r4, r4
 241 002a 002C     		cmp	r4, #0
 242 002c F1D0     		beq	.L24
 243 002e 3846     		mov	r0, r7
 244 0030 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 245 0034 0502     		lsls	r5, r0, #8
 246 0036 3046     		mov	r0, r6
 247 0038 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 248 003c ADB2     		uxth	r5, r5
 249 003e 0544     		add	r5, r5, r0
 250 0040 ADB2     		uxth	r5, r5
 251 0042 A542     		cmp	r5, r4
 252 0044 E7D1     		bne	.L25
 253              	.L31:
 254 0046 2846     		mov	r0, r5
 255 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 256              		.size	_Z12getSn_RX_RSRh, .-_Z12getSn_RX_RSRh
 257 004a 00BF     		.section	.text._Z13wiz_send_datahPKht,"ax",%progbits
 258              		.align	1
 259              		.p2align 2,,3
 260              		.global	_Z13wiz_send_datahPKht
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu fpv4-sp-d16
 265              		.type	_Z13wiz_send_datahPKht, %function
 266              	_Z13wiz_send_datahPKht:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269 0000 02B9     		cbnz	r2, .L37
 270 0002 7047     		bx	lr
 271              	.L37:
 272 0004 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 273 0008 8500     		lsls	r5, r0, #2
 274 000a 6E1C     		adds	r6, r5, #1
 275 000c F600     		lsls	r6, r6, #3
 276 000e 06F51058 		add	r8, r6, #9216
 277 0012 4046     		mov	r0, r8
 278 0014 1446     		mov	r4, r2
 279 0016 8946     		mov	r9, r1
 280 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 281 001c 06F51456 		add	r6, r6, #9472
 282 0020 0746     		mov	r7, r0
 283 0022 3046     		mov	r0, r6
 284 0024 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 285 0028 00EB0727 		add	r7, r0, r7, lsl #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccjS6fcl.s 			page 6


 286 002c BFB2     		uxth	r7, r7
 287 002e 2246     		mov	r2, r4
 288 0030 0235     		adds	r5, r5, #2
 289 0032 3802     		lsls	r0, r7, #8
 290 0034 3C44     		add	r4, r4, r7
 291 0036 4946     		mov	r1, r9
 292 0038 00EBC500 		add	r0, r0, r5, lsl #3
 293 003c A4B2     		uxth	r4, r4
 294 003e FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 295 0042 4046     		mov	r0, r8
 296 0044 210A     		lsrs	r1, r4, #8
 297 0046 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 298 004a E1B2     		uxtb	r1, r4
 299 004c 3046     		mov	r0, r6
 300 004e BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 301 0052 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 302              		.size	_Z13wiz_send_datahPKht, .-_Z13wiz_send_datahPKht
 303 0056 00BF     		.section	.text._Z16wiz_send_data_athPKhtt,"ax",%progbits
 304              		.align	1
 305              		.p2align 2,,3
 306              		.global	_Z16wiz_send_data_athPKhtt
 307              		.syntax unified
 308              		.thumb
 309              		.thumb_func
 310              		.fpu fpv4-sp-d16
 311              		.type	_Z16wiz_send_data_athPKhtt, %function
 312              	_Z16wiz_send_data_athPKhtt:
 313              		@ args = 0, pretend = 0, frame = 0
 314              		@ frame_needed = 0, uses_anonymous_args = 0
 315              		@ link register save eliminated.
 316 0000 02B9     		cbnz	r2, .L40
 317 0002 7047     		bx	lr
 318              	.L40:
 319 0004 4001     		lsls	r0, r0, #5
 320 0006 1030     		adds	r0, r0, #16
 321 0008 00EB0320 		add	r0, r0, r3, lsl #8
 322 000c FFF7FEBF 		b	_Z17WIZCHIP_WRITE_BUFmPKht
 323              		.size	_Z16wiz_send_data_athPKhtt, .-_Z16wiz_send_data_athPKhtt
 324              		.section	.text._Z13wiz_recv_datahPht,"ax",%progbits
 325              		.align	1
 326              		.p2align 2,,3
 327              		.global	_Z13wiz_recv_datahPht
 328              		.syntax unified
 329              		.thumb
 330              		.thumb_func
 331              		.fpu fpv4-sp-d16
 332              		.type	_Z13wiz_recv_datahPht, %function
 333              	_Z13wiz_recv_datahPht:
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336 0000 02B9     		cbnz	r2, .L46
 337 0002 7047     		bx	lr
 338              	.L46:
 339 0004 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 340 0008 8500     		lsls	r5, r0, #2
 341 000a 6E1C     		adds	r6, r5, #1
 342 000c F600     		lsls	r6, r6, #3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccjS6fcl.s 			page 7


 343 000e 06F52058 		add	r8, r6, #10240
 344 0012 4046     		mov	r0, r8
 345 0014 1446     		mov	r4, r2
 346 0016 8946     		mov	r9, r1
 347 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 348 001c 06F52456 		add	r6, r6, #10496
 349 0020 0746     		mov	r7, r0
 350 0022 3046     		mov	r0, r6
 351 0024 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 352 0028 00EB0727 		add	r7, r0, r7, lsl #8
 353 002c BFB2     		uxth	r7, r7
 354 002e 2246     		mov	r2, r4
 355 0030 0335     		adds	r5, r5, #3
 356 0032 3802     		lsls	r0, r7, #8
 357 0034 3C44     		add	r4, r4, r7
 358 0036 4946     		mov	r1, r9
 359 0038 00EBC500 		add	r0, r0, r5, lsl #3
 360 003c A4B2     		uxth	r4, r4
 361 003e FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 362 0042 4046     		mov	r0, r8
 363 0044 210A     		lsrs	r1, r4, #8
 364 0046 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 365 004a E1B2     		uxtb	r1, r4
 366 004c 3046     		mov	r0, r6
 367 004e BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 368 0052 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 369              		.size	_Z13wiz_recv_datahPht, .-_Z13wiz_recv_datahPht
 370 0056 00BF     		.section	.text._Z16wiz_recv_data_athPhtt,"ax",%progbits
 371              		.align	1
 372              		.p2align 2,,3
 373              		.global	_Z16wiz_recv_data_athPhtt
 374              		.syntax unified
 375              		.thumb
 376              		.thumb_func
 377              		.fpu fpv4-sp-d16
 378              		.type	_Z16wiz_recv_data_athPhtt, %function
 379              	_Z16wiz_recv_data_athPhtt:
 380              		@ args = 0, pretend = 0, frame = 0
 381              		@ frame_needed = 0, uses_anonymous_args = 0
 382              		@ link register save eliminated.
 383 0000 02B9     		cbnz	r2, .L49
 384 0002 7047     		bx	lr
 385              	.L49:
 386 0004 4001     		lsls	r0, r0, #5
 387 0006 1830     		adds	r0, r0, #24
 388 0008 00EB0320 		add	r0, r0, r3, lsl #8
 389 000c FFF7FEBF 		b	_Z16WIZCHIP_READ_BUFmPht
 390              		.size	_Z16wiz_recv_data_athPhtt, .-_Z16wiz_recv_data_athPhtt
 391              		.section	.text._Z15wiz_recv_ignoreht,"ax",%progbits
 392              		.align	1
 393              		.p2align 2,,3
 394              		.global	_Z15wiz_recv_ignoreht
 395              		.syntax unified
 396              		.thumb
 397              		.thumb_func
 398              		.fpu fpv4-sp-d16
 399              		.type	_Z15wiz_recv_ignoreht, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccjS6fcl.s 			page 8


 400              	_Z15wiz_recv_ignoreht:
 401              		@ args = 0, pretend = 0, frame = 0
 402              		@ frame_needed = 0, uses_anonymous_args = 0
 403 0000 2DE9D841 		push	{r3, r4, r6, r7, r8, lr}
 404 0004 4601     		lsls	r6, r0, #5
 405 0006 0836     		adds	r6, r6, #8
 406 0008 06F52057 		add	r7, r6, #10240
 407 000c 3846     		mov	r0, r7
 408 000e 0C46     		mov	r4, r1
 409 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 410 0014 06F52456 		add	r6, r6, #10496
 411 0018 8046     		mov	r8, r0
 412 001a 3046     		mov	r0, r6
 413 001c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 414 0020 0444     		add	r4, r4, r0
 415 0022 04EB0824 		add	r4, r4, r8, lsl #8
 416 0026 A4B2     		uxth	r4, r4
 417 0028 3846     		mov	r0, r7
 418 002a 210A     		lsrs	r1, r4, #8
 419 002c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 420 0030 E1B2     		uxtb	r1, r4
 421 0032 3046     		mov	r0, r6
 422 0034 BDE8D841 		pop	{r3, r4, r6, r7, r8, lr}
 423 0038 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 424              		.size	_Z15wiz_recv_ignoreht, .-_Z15wiz_recv_ignoreht
 425              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 426              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 427              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 428              	_ZL28cpu_irq_prev_interrupt_state:
 429 0000 00       		.space	1
 430              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 431              		.align	2
 432              		.type	_ZL32cpu_irq_critical_section_counter, %object
 433              		.size	_ZL32cpu_irq_critical_section_counter, 4
 434              	_ZL32cpu_irq_critical_section_counter:
 435 0000 00000000 		.space	4
 436              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
