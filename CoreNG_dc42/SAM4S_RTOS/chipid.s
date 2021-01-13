ARM GAS  /tmp/ccFDpH9L.s 			page 1


   1              		.cpu cortex-m4
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
  24 0000 39B3     		cbz	r1, .L3
  25 0002 F0B5     		push	{r4, r5, r6, r7, lr}
  26 0004 D0F800E0 		ldr	lr, [r0]
  27 0008 0268     		ldr	r2, [r0]
  28 000a 0768     		ldr	r7, [r0]
  29 000c 0368     		ldr	r3, [r0]
  30 000e 0668     		ldr	r6, [r0]
  31 0010 0568     		ldr	r5, [r0]
  32 0012 0468     		ldr	r4, [r0]
  33 0014 0368     		ldr	r3, [r0]
  34 0016 C2F34212 		ubfx	r2, r2, #5, #3
  35 001a 0EF01F0E 		and	lr, lr, #31
  36 001e C7F30327 		ubfx	r7, r7, #8, #4
  37 0022 C6F30346 		ubfx	r6, r6, #16, #4
  38 0026 C5F30755 		ubfx	r5, r5, #20, #8
  39 002a C4F30274 		ubfx	r4, r4, #28, #3
  40 002e DB0F     		lsrs	r3, r3, #31
  41 0030 4A60     		str	r2, [r1, #4]
  42 0032 0022     		movs	r2, #0
  43 0034 C1F800E0 		str	lr, [r1]
  44 0038 8F60     		str	r7, [r1, #8]
  45 003a 0E61     		str	r6, [r1, #16]
  46 003c 4D61     		str	r5, [r1, #20]
  47 003e 8C61     		str	r4, [r1, #24]
  48 0040 CB61     		str	r3, [r1, #28]
  49 0042 CA60     		str	r2, [r1, #12]
  50 0044 1BB1     		cbz	r3, .L4
  51 0046 4368     		ldr	r3, [r0, #4]
  52 0048 0B62     		str	r3, [r1, #32]
  53 004a 1046     		mov	r0, r2
  54 004c F0BD     		pop	{r4, r5, r6, r7, pc}
  55              	.L4:
  56 004e 1846     		mov	r0, r3
  57 0050 F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccFDpH9L.s 			page 2


  58              	.L3:
  59 0052 4FF0FF30 		mov	r0, #-1
  60 0056 7047     		bx	lr
  61              		.size	chipid_read, .-chipid_read
  62              		.section	.text.chipid_read_version,"ax",%progbits
  63              		.align	1
  64              		.p2align 2,,3
  65              		.global	chipid_read_version
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu softvfp
  70              		.type	chipid_read_version, %function
  71              	chipid_read_version:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74              		@ link register save eliminated.
  75 0000 0068     		ldr	r0, [r0]
  76 0002 00F01F00 		and	r0, r0, #31
  77 0006 7047     		bx	lr
  78              		.size	chipid_read_version, .-chipid_read_version
  79              		.section	.text.chipid_read_processor,"ax",%progbits
  80              		.align	1
  81              		.p2align 2,,3
  82              		.global	chipid_read_processor
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu softvfp
  87              		.type	chipid_read_processor, %function
  88              	chipid_read_processor:
  89              		@ args = 0, pretend = 0, frame = 0
  90              		@ frame_needed = 0, uses_anonymous_args = 0
  91              		@ link register save eliminated.
  92 0000 0068     		ldr	r0, [r0]
  93 0002 00F0E000 		and	r0, r0, #224
  94 0006 7047     		bx	lr
  95              		.size	chipid_read_processor, .-chipid_read_processor
  96              		.section	.text.chipid_read_arch,"ax",%progbits
  97              		.align	1
  98              		.p2align 2,,3
  99              		.global	chipid_read_arch
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu softvfp
 104              		.type	chipid_read_arch, %function
 105              	chipid_read_arch:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108              		@ link register save eliminated.
 109 0000 0068     		ldr	r0, [r0]
 110 0002 00F07F60 		and	r0, r0, #267386880
 111 0006 7047     		bx	lr
 112              		.size	chipid_read_arch, .-chipid_read_arch
 113              		.section	.text.chipid_read_sramsize,"ax",%progbits
 114              		.align	1
ARM GAS  /tmp/ccFDpH9L.s 			page 3


 115              		.p2align 2,,3
 116              		.global	chipid_read_sramsize
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu softvfp
 121              		.type	chipid_read_sramsize, %function
 122              	chipid_read_sramsize:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 126 0000 0068     		ldr	r0, [r0]
 127 0002 00F47020 		and	r0, r0, #983040
 128 0006 7047     		bx	lr
 129              		.size	chipid_read_sramsize, .-chipid_read_sramsize
 130              		.section	.text.chipid_read_nvpmsize,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.global	chipid_read_nvpmsize
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu softvfp
 138              		.type	chipid_read_nvpmsize, %function
 139              	chipid_read_nvpmsize:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 0068     		ldr	r0, [r0]
 144 0002 00F47060 		and	r0, r0, #3840
 145 0006 7047     		bx	lr
 146              		.size	chipid_read_nvpmsize, .-chipid_read_nvpmsize
 147              		.section	.text.chipid_read_nvpm2size,"ax",%progbits
 148              		.align	1
 149              		.p2align 2,,3
 150              		.global	chipid_read_nvpm2size
 151              		.syntax unified
 152              		.thumb
 153              		.thumb_func
 154              		.fpu softvfp
 155              		.type	chipid_read_nvpm2size, %function
 156              	chipid_read_nvpm2size:
 157              		@ args = 0, pretend = 0, frame = 0
 158              		@ frame_needed = 0, uses_anonymous_args = 0
 159              		@ link register save eliminated.
 160 0000 0068     		ldr	r0, [r0]
 161 0002 00F00C00 		and	r0, r0, #12
 162 0006 7047     		bx	lr
 163              		.size	chipid_read_nvpm2size, .-chipid_read_nvpm2size
 164              		.section	.text.chipid_read_nvpmtype,"ax",%progbits
 165              		.align	1
 166              		.p2align 2,,3
 167              		.global	chipid_read_nvpmtype
 168              		.syntax unified
 169              		.thumb
 170              		.thumb_func
 171              		.fpu softvfp
ARM GAS  /tmp/ccFDpH9L.s 			page 4


 172              		.type	chipid_read_nvpmtype, %function
 173              	chipid_read_nvpmtype:
 174              		@ args = 0, pretend = 0, frame = 0
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176              		@ link register save eliminated.
 177 0000 0068     		ldr	r0, [r0]
 178 0002 00F0E040 		and	r0, r0, #1879048192
 179 0006 7047     		bx	lr
 180              		.size	chipid_read_nvpmtype, .-chipid_read_nvpmtype
 181              		.section	.text.chipid_read_extchipid,"ax",%progbits
 182              		.align	1
 183              		.p2align 2,,3
 184              		.global	chipid_read_extchipid
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu softvfp
 189              		.type	chipid_read_extchipid, %function
 190              	chipid_read_extchipid:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193              		@ link register save eliminated.
 194 0000 0368     		ldr	r3, [r0]
 195 0002 002B     		cmp	r3, #0
 196 0004 B4BF     		ite	lt
 197 0006 4068     		ldrlt	r0, [r0, #4]
 198 0008 0020     		movge	r0, #0
 199 000a 7047     		bx	lr
 200              		.size	chipid_read_extchipid, .-chipid_read_extchipid
 201              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 202              		.align	2
 203              		.type	cpu_irq_critical_section_counter, %object
 204              		.size	cpu_irq_critical_section_counter, 4
 205              	cpu_irq_critical_section_counter:
 206 0000 00000000 		.space	4
 207              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 208              		.type	cpu_irq_prev_interrupt_state, %object
 209              		.size	cpu_irq_prev_interrupt_state, 1
 210              	cpu_irq_prev_interrupt_state:
 211 0000 00       		.space	1
 212              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
