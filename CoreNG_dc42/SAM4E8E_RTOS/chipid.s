ARM GAS  /tmp/ccH2JnTn.s 			page 1


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
  13              		.file	"chipid.c"
  14              		.section	.text.chipid_read,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	chipid_read
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	chipid_read, %function
  23              	chipid_read:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 39B3     		cbz	r1, .L3
  27 0002 F0B5     		push	{r4, r5, r6, r7, lr}
  28 0004 D0F800E0 		ldr	lr, [r0]
  29 0008 0268     		ldr	r2, [r0]
  30 000a 0768     		ldr	r7, [r0]
  31 000c 0368     		ldr	r3, [r0]
  32 000e 0668     		ldr	r6, [r0]
  33 0010 0568     		ldr	r5, [r0]
  34 0012 0468     		ldr	r4, [r0]
  35 0014 0368     		ldr	r3, [r0]
  36 0016 C2F34212 		ubfx	r2, r2, #5, #3
  37 001a 0EF01F0E 		and	lr, lr, #31
  38 001e C7F30327 		ubfx	r7, r7, #8, #4
  39 0022 C6F30346 		ubfx	r6, r6, #16, #4
  40 0026 C5F30755 		ubfx	r5, r5, #20, #8
  41 002a C4F30274 		ubfx	r4, r4, #28, #3
  42 002e DB0F     		lsrs	r3, r3, #31
  43 0030 4A60     		str	r2, [r1, #4]
  44 0032 0022     		movs	r2, #0
  45 0034 C1F800E0 		str	lr, [r1]
  46 0038 8F60     		str	r7, [r1, #8]
  47 003a 0E61     		str	r6, [r1, #16]
  48 003c 4D61     		str	r5, [r1, #20]
  49 003e 8C61     		str	r4, [r1, #24]
  50 0040 CB61     		str	r3, [r1, #28]
  51 0042 CA60     		str	r2, [r1, #12]
  52 0044 1BB1     		cbz	r3, .L4
  53 0046 4368     		ldr	r3, [r0, #4]
  54 0048 0B62     		str	r3, [r1, #32]
  55 004a 1046     		mov	r0, r2
  56 004c F0BD     		pop	{r4, r5, r6, r7, pc}
  57              	.L4:
ARM GAS  /tmp/ccH2JnTn.s 			page 2


  58 004e 1846     		mov	r0, r3
  59 0050 F0BD     		pop	{r4, r5, r6, r7, pc}
  60              	.L3:
  61 0052 4FF0FF30 		mov	r0, #-1
  62 0056 7047     		bx	lr
  63              		.size	chipid_read, .-chipid_read
  64              		.section	.text.chipid_read_version,"ax",%progbits
  65              		.align	1
  66              		.p2align 2,,3
  67              		.global	chipid_read_version
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu fpv4-sp-d16
  72              		.type	chipid_read_version, %function
  73              	chipid_read_version:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76              		@ link register save eliminated.
  77 0000 0068     		ldr	r0, [r0]
  78 0002 00F01F00 		and	r0, r0, #31
  79 0006 7047     		bx	lr
  80              		.size	chipid_read_version, .-chipid_read_version
  81              		.section	.text.chipid_read_processor,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.global	chipid_read_processor
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu fpv4-sp-d16
  89              		.type	chipid_read_processor, %function
  90              	chipid_read_processor:
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94 0000 0068     		ldr	r0, [r0]
  95 0002 00F0E000 		and	r0, r0, #224
  96 0006 7047     		bx	lr
  97              		.size	chipid_read_processor, .-chipid_read_processor
  98              		.section	.text.chipid_read_arch,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	chipid_read_arch
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	chipid_read_arch, %function
 107              	chipid_read_arch:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 0068     		ldr	r0, [r0]
 112 0002 00F07F60 		and	r0, r0, #267386880
 113 0006 7047     		bx	lr
 114              		.size	chipid_read_arch, .-chipid_read_arch
ARM GAS  /tmp/ccH2JnTn.s 			page 3


 115              		.section	.text.chipid_read_sramsize,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	chipid_read_sramsize
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv4-sp-d16
 123              		.type	chipid_read_sramsize, %function
 124              	chipid_read_sramsize:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127              		@ link register save eliminated.
 128 0000 0068     		ldr	r0, [r0]
 129 0002 00F47020 		and	r0, r0, #983040
 130 0006 7047     		bx	lr
 131              		.size	chipid_read_sramsize, .-chipid_read_sramsize
 132              		.section	.text.chipid_read_nvpmsize,"ax",%progbits
 133              		.align	1
 134              		.p2align 2,,3
 135              		.global	chipid_read_nvpmsize
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu fpv4-sp-d16
 140              		.type	chipid_read_nvpmsize, %function
 141              	chipid_read_nvpmsize:
 142              		@ args = 0, pretend = 0, frame = 0
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144              		@ link register save eliminated.
 145 0000 0068     		ldr	r0, [r0]
 146 0002 00F47060 		and	r0, r0, #3840
 147 0006 7047     		bx	lr
 148              		.size	chipid_read_nvpmsize, .-chipid_read_nvpmsize
 149              		.section	.text.chipid_read_nvpm2size,"ax",%progbits
 150              		.align	1
 151              		.p2align 2,,3
 152              		.global	chipid_read_nvpm2size
 153              		.syntax unified
 154              		.thumb
 155              		.thumb_func
 156              		.fpu fpv4-sp-d16
 157              		.type	chipid_read_nvpm2size, %function
 158              	chipid_read_nvpm2size:
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161              		@ link register save eliminated.
 162 0000 0068     		ldr	r0, [r0]
 163 0002 00F00C00 		and	r0, r0, #12
 164 0006 7047     		bx	lr
 165              		.size	chipid_read_nvpm2size, .-chipid_read_nvpm2size
 166              		.section	.text.chipid_read_nvpmtype,"ax",%progbits
 167              		.align	1
 168              		.p2align 2,,3
 169              		.global	chipid_read_nvpmtype
 170              		.syntax unified
 171              		.thumb
ARM GAS  /tmp/ccH2JnTn.s 			page 4


 172              		.thumb_func
 173              		.fpu fpv4-sp-d16
 174              		.type	chipid_read_nvpmtype, %function
 175              	chipid_read_nvpmtype:
 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178              		@ link register save eliminated.
 179 0000 0068     		ldr	r0, [r0]
 180 0002 00F0E040 		and	r0, r0, #1879048192
 181 0006 7047     		bx	lr
 182              		.size	chipid_read_nvpmtype, .-chipid_read_nvpmtype
 183              		.section	.text.chipid_read_extchipid,"ax",%progbits
 184              		.align	1
 185              		.p2align 2,,3
 186              		.global	chipid_read_extchipid
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	chipid_read_extchipid, %function
 192              	chipid_read_extchipid:
 193              		@ args = 0, pretend = 0, frame = 0
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195              		@ link register save eliminated.
 196 0000 0368     		ldr	r3, [r0]
 197 0002 002B     		cmp	r3, #0
 198 0004 B4BF     		ite	lt
 199 0006 4068     		ldrlt	r0, [r0, #4]
 200 0008 0020     		movge	r0, #0
 201 000a 7047     		bx	lr
 202              		.size	chipid_read_extchipid, .-chipid_read_extchipid
 203              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 204              		.align	2
 205              		.type	cpu_irq_critical_section_counter, %object
 206              		.size	cpu_irq_critical_section_counter, 4
 207              	cpu_irq_critical_section_counter:
 208 0000 00000000 		.space	4
 209              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 210              		.type	cpu_irq_prev_interrupt_state, %object
 211              		.size	cpu_irq_prev_interrupt_state, 1
 212              	cpu_irq_prev_interrupt_state:
 213 0000 00       		.space	1
 214              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
