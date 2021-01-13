ARM GAS  /tmp/cc8P0OlE.s 			page 1


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
  11              		.file	"chipid.c"
  12              		.section	.text.chipid_read,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	chipid_read
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	chipid_read, %function
  21              	chipid_read:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 69B3     		cbz	r1, .L3
  26 0002 2DE9F001 		push	{r4, r5, r6, r7, r8}
  27 0006 0024     		movs	r4, #0
  28 0008 D0F80080 		ldr	r8, [r0]
  29 000c 0268     		ldr	r2, [r0]
  30 000e 0368     		ldr	r3, [r0]
  31 0010 C2F3421C 		ubfx	ip, r2, #5, #3
  32 0014 0568     		ldr	r5, [r0]
  33 0016 0768     		ldr	r7, [r0]
  34 0018 0668     		ldr	r6, [r0]
  35 001a 0568     		ldr	r5, [r0]
  36 001c 0268     		ldr	r2, [r0]
  37 001e 08F01F08 		and	r8, r8, #31
  38 0022 C3F30323 		ubfx	r3, r3, #8, #4
  39 0026 C7F30347 		ubfx	r7, r7, #16, #4
  40 002a C6F30756 		ubfx	r6, r6, #20, #8
  41 002e C5F30275 		ubfx	r5, r5, #28, #3
  42 0032 D20F     		lsrs	r2, r2, #31
  43 0034 C1F80080 		str	r8, [r1]
  44 0038 C1F804C0 		str	ip, [r1, #4]
  45 003c 8B60     		str	r3, [r1, #8]
  46 003e 0F61     		str	r7, [r1, #16]
  47 0040 4E61     		str	r6, [r1, #20]
  48 0042 8D61     		str	r5, [r1, #24]
  49 0044 CA61     		str	r2, [r1, #28]
  50 0046 CC60     		str	r4, [r1, #12]
  51 0048 2AB1     		cbz	r2, .L4
  52 004a 4368     		ldr	r3, [r0, #4]
  53 004c 2046     		mov	r0, r4
  54 004e BDE8F001 		pop	{r4, r5, r6, r7, r8}
  55 0052 0B62     		str	r3, [r1, #32]
  56 0054 7047     		bx	lr
  57              	.L4:
ARM GAS  /tmp/cc8P0OlE.s 			page 2


  58 0056 1046     		mov	r0, r2
  59 0058 BDE8F001 		pop	{r4, r5, r6, r7, r8}
  60 005c 7047     		bx	lr
  61              	.L3:
  62 005e 4FF0FF30 		mov	r0, #-1
  63 0062 7047     		bx	lr
  64              		.size	chipid_read, .-chipid_read
  65              		.section	.text.chipid_read_version,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	chipid_read_version
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu softvfp
  73              		.type	chipid_read_version, %function
  74              	chipid_read_version:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77              		@ link register save eliminated.
  78 0000 0068     		ldr	r0, [r0]
  79 0002 00F01F00 		and	r0, r0, #31
  80 0006 7047     		bx	lr
  81              		.size	chipid_read_version, .-chipid_read_version
  82              		.section	.text.chipid_read_processor,"ax",%progbits
  83              		.align	1
  84              		.p2align 2,,3
  85              		.global	chipid_read_processor
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu softvfp
  90              		.type	chipid_read_processor, %function
  91              	chipid_read_processor:
  92              		@ args = 0, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94              		@ link register save eliminated.
  95 0000 0068     		ldr	r0, [r0]
  96 0002 00F0E000 		and	r0, r0, #224
  97 0006 7047     		bx	lr
  98              		.size	chipid_read_processor, .-chipid_read_processor
  99              		.section	.text.chipid_read_arch,"ax",%progbits
 100              		.align	1
 101              		.p2align 2,,3
 102              		.global	chipid_read_arch
 103              		.syntax unified
 104              		.thumb
 105              		.thumb_func
 106              		.fpu softvfp
 107              		.type	chipid_read_arch, %function
 108              	chipid_read_arch:
 109              		@ args = 0, pretend = 0, frame = 0
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111              		@ link register save eliminated.
 112 0000 0068     		ldr	r0, [r0]
 113 0002 00F07F60 		and	r0, r0, #267386880
 114 0006 7047     		bx	lr
ARM GAS  /tmp/cc8P0OlE.s 			page 3


 115              		.size	chipid_read_arch, .-chipid_read_arch
 116              		.section	.text.chipid_read_sramsize,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	chipid_read_sramsize
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu softvfp
 124              		.type	chipid_read_sramsize, %function
 125              	chipid_read_sramsize:
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128              		@ link register save eliminated.
 129 0000 0068     		ldr	r0, [r0]
 130 0002 00F47020 		and	r0, r0, #983040
 131 0006 7047     		bx	lr
 132              		.size	chipid_read_sramsize, .-chipid_read_sramsize
 133              		.section	.text.chipid_read_nvpmsize,"ax",%progbits
 134              		.align	1
 135              		.p2align 2,,3
 136              		.global	chipid_read_nvpmsize
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu softvfp
 141              		.type	chipid_read_nvpmsize, %function
 142              	chipid_read_nvpmsize:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145              		@ link register save eliminated.
 146 0000 0068     		ldr	r0, [r0]
 147 0002 00F47060 		and	r0, r0, #3840
 148 0006 7047     		bx	lr
 149              		.size	chipid_read_nvpmsize, .-chipid_read_nvpmsize
 150              		.section	.text.chipid_read_nvpm2size,"ax",%progbits
 151              		.align	1
 152              		.p2align 2,,3
 153              		.global	chipid_read_nvpm2size
 154              		.syntax unified
 155              		.thumb
 156              		.thumb_func
 157              		.fpu softvfp
 158              		.type	chipid_read_nvpm2size, %function
 159              	chipid_read_nvpm2size:
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162              		@ link register save eliminated.
 163 0000 0068     		ldr	r0, [r0]
 164 0002 00F00C00 		and	r0, r0, #12
 165 0006 7047     		bx	lr
 166              		.size	chipid_read_nvpm2size, .-chipid_read_nvpm2size
 167              		.section	.text.chipid_read_nvpmtype,"ax",%progbits
 168              		.align	1
 169              		.p2align 2,,3
 170              		.global	chipid_read_nvpmtype
 171              		.syntax unified
ARM GAS  /tmp/cc8P0OlE.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.fpu softvfp
 175              		.type	chipid_read_nvpmtype, %function
 176              	chipid_read_nvpmtype:
 177              		@ args = 0, pretend = 0, frame = 0
 178              		@ frame_needed = 0, uses_anonymous_args = 0
 179              		@ link register save eliminated.
 180 0000 0068     		ldr	r0, [r0]
 181 0002 00F0E040 		and	r0, r0, #1879048192
 182 0006 7047     		bx	lr
 183              		.size	chipid_read_nvpmtype, .-chipid_read_nvpmtype
 184              		.section	.text.chipid_read_extchipid,"ax",%progbits
 185              		.align	1
 186              		.p2align 2,,3
 187              		.global	chipid_read_extchipid
 188              		.syntax unified
 189              		.thumb
 190              		.thumb_func
 191              		.fpu softvfp
 192              		.type	chipid_read_extchipid, %function
 193              	chipid_read_extchipid:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196              		@ link register save eliminated.
 197 0000 0368     		ldr	r3, [r0]
 198 0002 002B     		cmp	r3, #0
 199 0004 B4BF     		ite	lt
 200 0006 4068     		ldrlt	r0, [r0, #4]
 201 0008 0020     		movge	r0, #0
 202 000a 7047     		bx	lr
 203              		.size	chipid_read_extchipid, .-chipid_read_extchipid
 204              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 205              		.align	2
 206              		.type	cpu_irq_critical_section_counter, %object
 207              		.size	cpu_irq_critical_section_counter, 4
 208              	cpu_irq_critical_section_counter:
 209 0000 00000000 		.space	4
 210              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 211              		.type	cpu_irq_prev_interrupt_state, %object
 212              		.size	cpu_irq_prev_interrupt_state, 1
 213              	cpu_irq_prev_interrupt_state:
 214 0000 00       		.space	1
 215              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
