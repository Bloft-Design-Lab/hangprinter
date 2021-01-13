ARM GAS  /tmp/cc6glbEk.s 			page 1


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
  14              		.section	.text._Z12WIZCHIP_READm,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z12WIZCHIP_READm
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z12WIZCHIP_READm, %function
  23              	_Z12WIZCHIP_READm:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 10B5     		push	{r4, lr}
  27 0002 0446     		mov	r4, r0
  28 0004 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
  29 0008 2046     		mov	r0, r4
  30 000a FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
  31 000e FFF7FEFF 		bl	_ZN6WizSpi8ReadByteEv
  32 0012 0446     		mov	r4, r0
  33 0014 FFF7FEFF 		bl	_ZN6WizSpi9ReleaseSSEv
  34 0018 2046     		mov	r0, r4
  35 001a 10BD     		pop	{r4, pc}
  36              		.size	_Z12WIZCHIP_READm, .-_Z12WIZCHIP_READm
  37              		.section	.text._Z13WIZCHIP_WRITEmh,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	_Z13WIZCHIP_WRITEmh
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu fpv4-sp-d16
  45              		.type	_Z13WIZCHIP_WRITEmh, %function
  46              	_Z13WIZCHIP_WRITEmh:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49 0000 38B5     		push	{r3, r4, r5, lr}
  50 0002 0546     		mov	r5, r0
  51 0004 0C46     		mov	r4, r1
  52 0006 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
  53 000a 45F00400 		orr	r0, r5, #4
  54 000e FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
  55 0012 2046     		mov	r0, r4
  56 0014 FFF7FEFF 		bl	_ZN6WizSpi9WriteByteEh
  57 0018 BDE83840 		pop	{r3, r4, r5, lr}
ARM GAS  /tmp/cc6glbEk.s 			page 2


  58 001c FFF7FEBF 		b	_ZN6WizSpi9ReleaseSSEv
  59              		.size	_Z13WIZCHIP_WRITEmh, .-_Z13WIZCHIP_WRITEmh
  60              		.section	.text._Z16WIZCHIP_READ_BUFmPht,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_Z16WIZCHIP_READ_BUFmPht
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	_Z16WIZCHIP_READ_BUFmPht, %function
  69              	_Z16WIZCHIP_READ_BUFmPht:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72 0000 70B5     		push	{r4, r5, r6, lr}
  73 0002 0646     		mov	r6, r0
  74 0004 0C46     		mov	r4, r1
  75 0006 1546     		mov	r5, r2
  76 0008 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
  77 000c 3046     		mov	r0, r6
  78 000e FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
  79 0012 2946     		mov	r1, r5
  80 0014 2046     		mov	r0, r4
  81 0016 FFF7FEFF 		bl	_ZN6WizSpi9ReadBurstEPhj
  82 001a BDE87040 		pop	{r4, r5, r6, lr}
  83 001e FFF7FEBF 		b	_ZN6WizSpi9ReleaseSSEv
  84              		.size	_Z16WIZCHIP_READ_BUFmPht, .-_Z16WIZCHIP_READ_BUFmPht
  85 0022 00BF     		.section	.text._Z17WIZCHIP_WRITE_BUFmPKht,"ax",%progbits
  86              		.align	1
  87              		.p2align 2,,3
  88              		.global	_Z17WIZCHIP_WRITE_BUFmPKht
  89              		.syntax unified
  90              		.thumb
  91              		.thumb_func
  92              		.fpu fpv4-sp-d16
  93              		.type	_Z17WIZCHIP_WRITE_BUFmPKht, %function
  94              	_Z17WIZCHIP_WRITE_BUFmPKht:
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97 0000 70B5     		push	{r4, r5, r6, lr}
  98 0002 0646     		mov	r6, r0
  99 0004 0C46     		mov	r4, r1
 100 0006 1546     		mov	r5, r2
 101 0008 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
 102 000c 46F00400 		orr	r0, r6, #4
 103 0010 FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
 104 0014 2946     		mov	r1, r5
 105 0016 2046     		mov	r0, r4
 106 0018 FFF7FEFF 		bl	_ZN6WizSpi9SendBurstEPKhj
 107 001c BDE87040 		pop	{r4, r5, r6, lr}
 108 0020 FFF7FEBF 		b	_ZN6WizSpi9ReleaseSSEv
 109              		.size	_Z17WIZCHIP_WRITE_BUFmPKht, .-_Z17WIZCHIP_WRITE_BUFmPKht
 110              		.section	.text._Z12getSn_TX_FSRh,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	_Z12getSn_TX_FSRh
 114              		.syntax unified
ARM GAS  /tmp/cc6glbEk.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	_Z12getSn_TX_FSRh, %function
 119              	_Z12getSn_TX_FSRh:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 123 0002 4601     		lsls	r6, r0, #5
 124 0004 0836     		adds	r6, r6, #8
 125 0006 06F50057 		add	r7, r6, #8192
 126 000a 0025     		movs	r5, #0
 127 000c 06F50456 		add	r6, r6, #8448
 128 0010 01E0     		b	.L12
 129              	.L11:
 130 0012 A542     		cmp	r5, r4
 131 0014 17D0     		beq	.L18
 132              	.L12:
 133 0016 3846     		mov	r0, r7
 134 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 135 001c 0402     		lsls	r4, r0, #8
 136 001e 3046     		mov	r0, r6
 137 0020 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 138 0024 A4B2     		uxth	r4, r4
 139 0026 0444     		add	r4, r4, r0
 140 0028 A4B2     		uxth	r4, r4
 141 002a 002C     		cmp	r4, #0
 142 002c F1D0     		beq	.L11
 143 002e 3846     		mov	r0, r7
 144 0030 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 145 0034 0502     		lsls	r5, r0, #8
 146 0036 3046     		mov	r0, r6
 147 0038 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 148 003c ADB2     		uxth	r5, r5
 149 003e 0544     		add	r5, r5, r0
 150 0040 ADB2     		uxth	r5, r5
 151 0042 A542     		cmp	r5, r4
 152 0044 E7D1     		bne	.L12
 153              	.L18:
 154 0046 2846     		mov	r0, r5
 155 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 156              		.size	_Z12getSn_TX_FSRh, .-_Z12getSn_TX_FSRh
 157 004a 00BF     		.section	.text._Z12getSn_RX_RSRh,"ax",%progbits
 158              		.align	1
 159              		.p2align 2,,3
 160              		.global	_Z12getSn_RX_RSRh
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu fpv4-sp-d16
 165              		.type	_Z12getSn_RX_RSRh, %function
 166              	_Z12getSn_RX_RSRh:
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 170 0002 4601     		lsls	r6, r0, #5
 171 0004 0836     		adds	r6, r6, #8
ARM GAS  /tmp/cc6glbEk.s 			page 4


 172 0006 06F51857 		add	r7, r6, #9728
 173 000a 0025     		movs	r5, #0
 174 000c 06F51C56 		add	r6, r6, #9984
 175 0010 01E0     		b	.L21
 176              	.L20:
 177 0012 A542     		cmp	r5, r4
 178 0014 17D0     		beq	.L27
 179              	.L21:
 180 0016 3846     		mov	r0, r7
 181 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 182 001c 0402     		lsls	r4, r0, #8
 183 001e 3046     		mov	r0, r6
 184 0020 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 185 0024 A4B2     		uxth	r4, r4
 186 0026 0444     		add	r4, r4, r0
 187 0028 A4B2     		uxth	r4, r4
 188 002a 002C     		cmp	r4, #0
 189 002c F1D0     		beq	.L20
 190 002e 3846     		mov	r0, r7
 191 0030 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 192 0034 0502     		lsls	r5, r0, #8
 193 0036 3046     		mov	r0, r6
 194 0038 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 195 003c ADB2     		uxth	r5, r5
 196 003e 0544     		add	r5, r5, r0
 197 0040 ADB2     		uxth	r5, r5
 198 0042 A542     		cmp	r5, r4
 199 0044 E7D1     		bne	.L21
 200              	.L27:
 201 0046 2846     		mov	r0, r5
 202 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 203              		.size	_Z12getSn_RX_RSRh, .-_Z12getSn_RX_RSRh
 204 004a 00BF     		.section	.text._Z13wiz_send_datahPKht,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	_Z13wiz_send_datahPKht
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu fpv4-sp-d16
 212              		.type	_Z13wiz_send_datahPKht, %function
 213              	_Z13wiz_send_datahPKht:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216 0000 02B9     		cbnz	r2, .L33
 217 0002 7047     		bx	lr
 218              	.L33:
 219 0004 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 220 0008 8500     		lsls	r5, r0, #2
 221 000a 6E1C     		adds	r6, r5, #1
 222 000c F600     		lsls	r6, r6, #3
 223 000e 06F51058 		add	r8, r6, #9216
 224 0012 4046     		mov	r0, r8
 225 0014 1446     		mov	r4, r2
 226 0016 8946     		mov	r9, r1
 227 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 228 001c 06F51456 		add	r6, r6, #9472
ARM GAS  /tmp/cc6glbEk.s 			page 5


 229 0020 0746     		mov	r7, r0
 230 0022 3046     		mov	r0, r6
 231 0024 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 232 0028 00EB0727 		add	r7, r0, r7, lsl #8
 233 002c BFB2     		uxth	r7, r7
 234 002e 2246     		mov	r2, r4
 235 0030 0235     		adds	r5, r5, #2
 236 0032 3802     		lsls	r0, r7, #8
 237 0034 3C44     		add	r4, r4, r7
 238 0036 4946     		mov	r1, r9
 239 0038 00EBC500 		add	r0, r0, r5, lsl #3
 240 003c A4B2     		uxth	r4, r4
 241 003e FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 242 0042 4046     		mov	r0, r8
 243 0044 210A     		lsrs	r1, r4, #8
 244 0046 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 245 004a E1B2     		uxtb	r1, r4
 246 004c 3046     		mov	r0, r6
 247 004e BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 248 0052 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 249              		.size	_Z13wiz_send_datahPKht, .-_Z13wiz_send_datahPKht
 250 0056 00BF     		.section	.text._Z16wiz_send_data_athPKhtt,"ax",%progbits
 251              		.align	1
 252              		.p2align 2,,3
 253              		.global	_Z16wiz_send_data_athPKhtt
 254              		.syntax unified
 255              		.thumb
 256              		.thumb_func
 257              		.fpu fpv4-sp-d16
 258              		.type	_Z16wiz_send_data_athPKhtt, %function
 259              	_Z16wiz_send_data_athPKhtt:
 260              		@ args = 0, pretend = 0, frame = 0
 261              		@ frame_needed = 0, uses_anonymous_args = 0
 262              		@ link register save eliminated.
 263 0000 02B9     		cbnz	r2, .L36
 264 0002 7047     		bx	lr
 265              	.L36:
 266 0004 4001     		lsls	r0, r0, #5
 267 0006 1030     		adds	r0, r0, #16
 268 0008 00EB0320 		add	r0, r0, r3, lsl #8
 269 000c FFF7FEBF 		b	_Z17WIZCHIP_WRITE_BUFmPKht
 270              		.size	_Z16wiz_send_data_athPKhtt, .-_Z16wiz_send_data_athPKhtt
 271              		.section	.text._Z13wiz_recv_datahPht,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	_Z13wiz_recv_datahPht
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv4-sp-d16
 279              		.type	_Z13wiz_recv_datahPht, %function
 280              	_Z13wiz_recv_datahPht:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283 0000 02B9     		cbnz	r2, .L42
 284 0002 7047     		bx	lr
 285              	.L42:
ARM GAS  /tmp/cc6glbEk.s 			page 6


 286 0004 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 287 0008 8500     		lsls	r5, r0, #2
 288 000a 6E1C     		adds	r6, r5, #1
 289 000c F600     		lsls	r6, r6, #3
 290 000e 06F52058 		add	r8, r6, #10240
 291 0012 4046     		mov	r0, r8
 292 0014 1446     		mov	r4, r2
 293 0016 8946     		mov	r9, r1
 294 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 295 001c 06F52456 		add	r6, r6, #10496
 296 0020 0746     		mov	r7, r0
 297 0022 3046     		mov	r0, r6
 298 0024 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 299 0028 00EB0727 		add	r7, r0, r7, lsl #8
 300 002c BFB2     		uxth	r7, r7
 301 002e 2246     		mov	r2, r4
 302 0030 0335     		adds	r5, r5, #3
 303 0032 3802     		lsls	r0, r7, #8
 304 0034 3C44     		add	r4, r4, r7
 305 0036 4946     		mov	r1, r9
 306 0038 00EBC500 		add	r0, r0, r5, lsl #3
 307 003c A4B2     		uxth	r4, r4
 308 003e FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 309 0042 4046     		mov	r0, r8
 310 0044 210A     		lsrs	r1, r4, #8
 311 0046 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 312 004a E1B2     		uxtb	r1, r4
 313 004c 3046     		mov	r0, r6
 314 004e BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 315 0052 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 316              		.size	_Z13wiz_recv_datahPht, .-_Z13wiz_recv_datahPht
 317 0056 00BF     		.section	.text._Z16wiz_recv_data_athPhtt,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	_Z16wiz_recv_data_athPhtt
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu fpv4-sp-d16
 325              		.type	_Z16wiz_recv_data_athPhtt, %function
 326              	_Z16wiz_recv_data_athPhtt:
 327              		@ args = 0, pretend = 0, frame = 0
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329              		@ link register save eliminated.
 330 0000 02B9     		cbnz	r2, .L45
 331 0002 7047     		bx	lr
 332              	.L45:
 333 0004 4001     		lsls	r0, r0, #5
 334 0006 1830     		adds	r0, r0, #24
 335 0008 00EB0320 		add	r0, r0, r3, lsl #8
 336 000c FFF7FEBF 		b	_Z16WIZCHIP_READ_BUFmPht
 337              		.size	_Z16wiz_recv_data_athPhtt, .-_Z16wiz_recv_data_athPhtt
 338              		.section	.text._Z15wiz_recv_ignoreht,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	_Z15wiz_recv_ignoreht
 342              		.syntax unified
ARM GAS  /tmp/cc6glbEk.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu fpv4-sp-d16
 346              		.type	_Z15wiz_recv_ignoreht, %function
 347              	_Z15wiz_recv_ignoreht:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350 0000 2DE9D841 		push	{r3, r4, r6, r7, r8, lr}
 351 0004 4601     		lsls	r6, r0, #5
 352 0006 0836     		adds	r6, r6, #8
 353 0008 06F52057 		add	r7, r6, #10240
 354 000c 3846     		mov	r0, r7
 355 000e 0C46     		mov	r4, r1
 356 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 357 0014 06F52456 		add	r6, r6, #10496
 358 0018 8046     		mov	r8, r0
 359 001a 3046     		mov	r0, r6
 360 001c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 361 0020 0444     		add	r4, r4, r0
 362 0022 04EB0824 		add	r4, r4, r8, lsl #8
 363 0026 A4B2     		uxth	r4, r4
 364 0028 3846     		mov	r0, r7
 365 002a 210A     		lsrs	r1, r4, #8
 366 002c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 367 0030 E1B2     		uxtb	r1, r4
 368 0032 3046     		mov	r0, r6
 369 0034 BDE8D841 		pop	{r3, r4, r6, r7, r8, lr}
 370 0038 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 371              		.size	_Z15wiz_recv_ignoreht, .-_Z15wiz_recv_ignoreht
 372              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 373              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 374              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 375              	_ZL28cpu_irq_prev_interrupt_state:
 376 0000 00       		.space	1
 377              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 378              		.align	2
 379              		.type	_ZL32cpu_irq_critical_section_counter, %object
 380              		.size	_ZL32cpu_irq_critical_section_counter, 4
 381              	_ZL32cpu_irq_critical_section_counter:
 382 0000 00000000 		.space	4
 383              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
