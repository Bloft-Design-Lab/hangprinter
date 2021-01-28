ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPjtXtN.s 			page 1


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
  13              		.file	"RTCDue.cpp"
  14              		.text
  15              		.section	.text._ZN6RTCDue4InitEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN6RTCDue4InitEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN6RTCDue4InitEv, %function
  24              	_ZN6RTCDue4InitEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 074C     		ldr	r4, .L4
  29 0004 0021     		movs	r1, #0
  30 0006 2046     		mov	r0, r4
  31 0008 FFF7FEFF 		bl	rtc_set_hour_mode
  32 000c 054B     		ldr	r3, .L4+4
  33 000e 0422     		movs	r2, #4
  34 0010 4FF0FF31 		mov	r1, #-1
  35 0014 E160     		str	r1, [r4, #12]
  36 0016 C3F88020 		str	r2, [r3, #128]
  37 001a C3F88021 		str	r2, [r3, #384]
  38 001e 10BD     		pop	{r4, pc}
  39              	.L5:
  40              		.align	2
  41              	.L4:
  42 0020 60180E40 		.word	1074665568
  43 0024 00E100E0 		.word	-536813312
  44              		.size	_ZN6RTCDue4InitEv, .-_ZN6RTCDue4InitEv
  45              		.section	.text._ZN6RTCDue13IsDateTimeSetEv,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.global	_ZN6RTCDue13IsDateTimeSetEv
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	_ZN6RTCDue13IsDateTimeSetEv, %function
  54              	_ZN6RTCDue13IsDateTimeSetEv:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57 0000 08B5     		push	{r3, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPjtXtN.s 			page 2


  58 0002 0348     		ldr	r0, .L8
  59 0004 FFF7FEFF 		bl	rtc_get_valid_entry
  60 0008 B0FA80F0 		clz	r0, r0
  61 000c 4009     		lsrs	r0, r0, #5
  62 000e 08BD     		pop	{r3, pc}
  63              	.L9:
  64              		.align	2
  65              	.L8:
  66 0010 60180E40 		.word	1074665568
  67              		.size	_ZN6RTCDue13IsDateTimeSetEv, .-_ZN6RTCDue13IsDateTimeSetEv
  68              		.section	.text._ZN6RTCDue11GetDateTimeEv,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	_ZN6RTCDue11GetDateTimeEv
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu fpv4-sp-d16
  76              		.type	_ZN6RTCDue11GetDateTimeEv, %function
  77              	_ZN6RTCDue11GetDateTimeEv:
  78              		@ args = 0, pretend = 0, frame = 64
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80 0000 30B5     		push	{r4, r5, lr}
  81 0002 144C     		ldr	r4, .L12
  82 0004 93B0     		sub	sp, sp, #76
  83 0006 04AB     		add	r3, sp, #16
  84 0008 2046     		mov	r0, r4
  85 000a 03AA     		add	r2, sp, #12
  86 000c 02A9     		add	r1, sp, #8
  87 000e FFF7FEFF 		bl	rtc_get_time
  88 0012 08AB     		add	r3, sp, #32
  89 0014 2046     		mov	r0, r4
  90 0016 0093     		str	r3, [sp]
  91 0018 06AA     		add	r2, sp, #24
  92 001a 07AB     		add	r3, sp, #28
  93 001c 05A9     		add	r1, sp, #20
  94 001e FFF7FEFF 		bl	rtc_get_date
  95 0022 DDE90532 		ldrd	r3, r2, [sp, #20]
  96 0026 DDE90350 		ldrd	r5, r0, [sp, #12]
  97 002a 029C     		ldr	r4, [sp, #8]
  98 002c 0990     		str	r0, [sp, #36]
  99 002e 501E     		subs	r0, r2, #1
 100 0030 0799     		ldr	r1, [sp, #28]
 101 0032 0D90     		str	r0, [sp, #52]
 102 0034 A3F26C72 		subw	r2, r3, #1900
 103 0038 09A8     		add	r0, sp, #36
 104 003a 0023     		movs	r3, #0
 105 003c 0E92     		str	r2, [sp, #56]
 106 003e CDE90F33 		strd	r3, r3, [sp, #60]
 107 0042 1193     		str	r3, [sp, #68]
 108 0044 CDE90A54 		strd	r5, r4, [sp, #40]
 109 0048 0C91     		str	r1, [sp, #48]
 110 004a FFF7FEFF 		bl	mktime
 111 004e 13B0     		add	sp, sp, #76
 112              		@ sp needed
 113 0050 30BD     		pop	{r4, r5, pc}
 114              	.L13:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPjtXtN.s 			page 3


 115 0052 00BF     		.align	2
 116              	.L12:
 117 0054 60180E40 		.word	1074665568
 118              		.size	_ZN6RTCDue11GetDateTimeEv, .-_ZN6RTCDue11GetDateTimeEv
 119              		.section	.text._ZN6RTCDue7SetDateEx,"ax",%progbits
 120              		.align	1
 121              		.p2align 2,,3
 122              		.global	_ZN6RTCDue7SetDateEx
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu fpv4-sp-d16
 127              		.type	_ZN6RTCDue7SetDateEx, %function
 128              	_ZN6RTCDue7SetDateEx:
 129              		@ args = 0, pretend = 0, frame = 8
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 132 0002 85B0     		sub	sp, sp, #20
 133 0004 04AB     		add	r3, sp, #16
 134 0006 63E90201 		strd	r0, [r3, #-8]!
 135 000a 1846     		mov	r0, r3
 136 000c FFF7FEFF 		bl	gmtime
 137 0010 D0E90454 		ldrd	r5, r4, [r0, #16]
 138 0014 C368     		ldr	r3, [r0, #12]
 139 0016 194F     		ldr	r7, .L18
 140 0018 194E     		ldr	r6, .L18+4
 141 001a 012D     		cmp	r5, #1
 142 001c 04F26C71 		addw	r1, r4, #1900
 143 0020 05F10102 		add	r2, r5, #1
 144 0024 95BF     		itete	ls
 145 0026 04F26B70 		addwls	r0, r4, #1899
 146 002a 0846     		movhi	r0, r1
 147 002c 0D35     		addls	r5, r5, #13
 148 002e 1546     		movhi	r5, r2
 149 0030 1C18     		adds	r4, r3, r0
 150 0032 04EB4504 		add	r4, r4, r5, lsl #1
 151 0036 04EB9004 		add	r4, r4, r0, lsr #2
 152 003a 0135     		adds	r5, r5, #1
 153 003c A7FB0070 		umull	r7, r0, r7, r0
 154 0040 04EBD014 		add	r4, r4, r0, lsr #7
 155 0044 05EB4505 		add	r5, r5, r5, lsl #1
 156 0048 A6FB0565 		umull	r6, r5, r6, r5
 157 004c A4EB5014 		sub	r4, r4, r0, lsr #5
 158 0050 0C4E     		ldr	r6, .L18+8
 159 0052 0D48     		ldr	r0, .L18+12
 160 0054 04EB9504 		add	r4, r4, r5, lsr #2
 161 0058 A6FB0465 		umull	r6, r5, r6, r4
 162 005c 661B     		subs	r6, r4, r5
 163 005e 05EB5605 		add	r5, r5, r6, lsr #1
 164 0062 AD08     		lsrs	r5, r5, #2
 165 0064 C5EBC505 		rsb	r5, r5, r5, lsl #3
 166 0068 641B     		subs	r4, r4, r5
 167 006a 0134     		adds	r4, r4, #1
 168 006c 0094     		str	r4, [sp]
 169 006e FFF7FEFF 		bl	rtc_set_date
 170 0072 B0FA80F0 		clz	r0, r0
 171 0076 4009     		lsrs	r0, r0, #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPjtXtN.s 			page 4


 172 0078 05B0     		add	sp, sp, #20
 173              		@ sp needed
 174 007a F0BD     		pop	{r4, r5, r6, r7, pc}
 175              	.L19:
 176              		.align	2
 177              	.L18:
 178 007c 1F85EB51 		.word	1374389535
 179 0080 CDCCCCCC 		.word	-858993459
 180 0084 25499224 		.word	613566757
 181 0088 60180E40 		.word	1074665568
 182              		.size	_ZN6RTCDue7SetDateEx, .-_ZN6RTCDue7SetDateEx
 183              		.section	.text._ZN6RTCDue7SetTimeEx,"ax",%progbits
 184              		.align	1
 185              		.p2align 2,,3
 186              		.global	_ZN6RTCDue7SetTimeEx
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	_ZN6RTCDue7SetTimeEx, %function
 192              	_ZN6RTCDue7SetTimeEx:
 193              		@ args = 0, pretend = 0, frame = 8
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195 0000 00B5     		push	{lr}
 196 0002 83B0     		sub	sp, sp, #12
 197 0004 02AB     		add	r3, sp, #8
 198 0006 63E90201 		strd	r0, [r3, #-8]!
 199 000a 1846     		mov	r0, r3
 200 000c FFF7FEFF 		bl	gmtime
 201 0010 0146     		mov	r1, r0
 202 0012 D1E90032 		ldrd	r3, r2, [r1]
 203 0016 0548     		ldr	r0, .L22
 204 0018 8968     		ldr	r1, [r1, #8]
 205 001a FFF7FEFF 		bl	rtc_set_time
 206 001e B0FA80F0 		clz	r0, r0
 207 0022 4009     		lsrs	r0, r0, #5
 208 0024 03B0     		add	sp, sp, #12
 209              		@ sp needed
 210 0026 5DF804FB 		ldr	pc, [sp], #4
 211              	.L23:
 212 002a 00BF     		.align	2
 213              	.L22:
 214 002c 60180E40 		.word	1074665568
 215              		.size	_ZN6RTCDue7SetTimeEx, .-_ZN6RTCDue7SetTimeEx
 216              		.section	.text._ZN6RTCDue11SetDateTimeEx,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	_ZN6RTCDue11SetDateTimeEx
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu fpv4-sp-d16
 224              		.type	_ZN6RTCDue11SetDateTimeEx, %function
 225              	_ZN6RTCDue11SetDateTimeEx:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPjtXtN.s 			page 5


 229 0002 0446     		mov	r4, r0
 230 0004 0D46     		mov	r5, r1
 231 0006 FFF7FEFF 		bl	_ZN6RTCDue7SetDateEx
 232 000a 00B9     		cbnz	r0, .L27
 233 000c 38BD     		pop	{r3, r4, r5, pc}
 234              	.L27:
 235 000e 2046     		mov	r0, r4
 236 0010 2946     		mov	r1, r5
 237 0012 BDE83840 		pop	{r3, r4, r5, lr}
 238 0016 FFF7FEBF 		b	_ZN6RTCDue7SetTimeEx
 239              		.size	_ZN6RTCDue11SetDateTimeEx, .-_ZN6RTCDue11SetDateTimeEx
 240 001a 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 241              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 242              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 243              	_ZL28cpu_irq_prev_interrupt_state:
 244 0000 00       		.space	1
 245              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 246              		.align	2
 247              		.type	_ZL32cpu_irq_critical_section_counter, %object
 248              		.size	_ZL32cpu_irq_critical_section_counter, 4
 249              	_ZL32cpu_irq_critical_section_counter:
 250 0000 00000000 		.space	4
 251              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
