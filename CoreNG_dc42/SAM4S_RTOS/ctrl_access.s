ARM GAS  /tmp/ccSNdK4s.s 			page 1


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
  11              		.file	"ctrl_access.c"
  12              		.section	.text.get_nb_lun,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	get_nb_lun
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	get_nb_lun, %function
  21              	get_nb_lun:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0220     		movs	r0, #2
  26 0002 7047     		bx	lr
  27              		.size	get_nb_lun, .-get_nb_lun
  28              		.section	.text.get_cur_lun,"ax",%progbits
  29              		.align	1
  30              		.p2align 2,,3
  31              		.global	get_cur_lun
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	get_cur_lun, %function
  37              	get_cur_lun:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 0020     		movs	r0, #0
  42 0002 7047     		bx	lr
  43              		.size	get_cur_lun, .-get_cur_lun
  44              		.section	.text.mem_test_unit_ready,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	mem_test_unit_ready
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu softvfp
  52              		.type	mem_test_unit_ready, %function
  53              	mem_test_unit_ready:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 0128     		cmp	r0, #1
ARM GAS  /tmp/ccSNdK4s.s 			page 2


  58 0002 01D9     		bls	.L6
  59 0004 0120     		movs	r0, #1
  60 0006 7047     		bx	lr
  61              	.L6:
  62 0008 4001     		lsls	r0, r0, #5
  63 000a 014B     		ldr	r3, .L7
  64 000c 1B58     		ldr	r3, [r3, r0]
  65 000e 1847     		bx	r3
  66              	.L8:
  67              		.align	2
  68              	.L7:
  69 0010 00000000 		.word	.LANCHOR0
  70              		.size	mem_test_unit_ready, .-mem_test_unit_ready
  71              		.section	.text.mem_read_capacity,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	mem_read_capacity
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu softvfp
  79              		.type	mem_read_capacity, %function
  80              	mem_read_capacity:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 0128     		cmp	r0, #1
  85 0002 01D9     		bls	.L11
  86 0004 0120     		movs	r0, #1
  87 0006 7047     		bx	lr
  88              	.L11:
  89 0008 024B     		ldr	r3, .L12
  90 000a 03EB4013 		add	r3, r3, r0, lsl #5
  91 000e 0846     		mov	r0, r1
  92 0010 5B68     		ldr	r3, [r3, #4]
  93 0012 1847     		bx	r3
  94              	.L13:
  95              		.align	2
  96              	.L12:
  97 0014 00000000 		.word	.LANCHOR0
  98              		.size	mem_read_capacity, .-mem_read_capacity
  99              		.section	.text.mem_sector_size,"ax",%progbits
 100              		.align	1
 101              		.p2align 2,,3
 102              		.global	mem_sector_size
 103              		.syntax unified
 104              		.thumb
 105              		.thumb_func
 106              		.fpu softvfp
 107              		.type	mem_sector_size, %function
 108              	mem_sector_size:
 109              		@ args = 0, pretend = 0, frame = 0
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111              		@ link register save eliminated.
 112 0000 0128     		cmp	r0, #1
 113 0002 8CBF     		ite	hi
 114 0004 0020     		movhi	r0, #0
ARM GAS  /tmp/ccSNdK4s.s 			page 3


 115 0006 0120     		movls	r0, #1
 116 0008 7047     		bx	lr
 117              		.size	mem_sector_size, .-mem_sector_size
 118 000a 00BF     		.section	.text.mem_unload,"ax",%progbits
 119              		.align	1
 120              		.p2align 2,,3
 121              		.global	mem_unload
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu softvfp
 126              		.type	mem_unload, %function
 127              	mem_unload:
 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131 0000 0128     		cmp	r0, #1
 132 0002 01D9     		bls	.L19
 133 0004 0020     		movs	r0, #0
 134 0006 7047     		bx	lr
 135              	.L19:
 136 0008 044B     		ldr	r3, .L20
 137 000a 03EB4010 		add	r0, r3, r0, lsl #5
 138 000e 8368     		ldr	r3, [r0, #8]
 139 0010 0BB1     		cbz	r3, .L17
 140 0012 0846     		mov	r0, r1
 141 0014 1847     		bx	r3
 142              	.L17:
 143 0016 81F00100 		eor	r0, r1, #1
 144 001a 7047     		bx	lr
 145              	.L21:
 146              		.align	2
 147              	.L20:
 148 001c 00000000 		.word	.LANCHOR0
 149              		.size	mem_unload, .-mem_unload
 150              		.section	.text.mem_wr_protect,"ax",%progbits
 151              		.align	1
 152              		.p2align 2,,3
 153              		.global	mem_wr_protect
 154              		.syntax unified
 155              		.thumb
 156              		.thumb_func
 157              		.fpu softvfp
 158              		.type	mem_wr_protect, %function
 159              	mem_wr_protect:
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162              		@ link register save eliminated.
 163 0000 0128     		cmp	r0, #1
 164 0002 01D9     		bls	.L24
 165 0004 0120     		movs	r0, #1
 166 0006 7047     		bx	lr
 167              	.L24:
 168 0008 024B     		ldr	r3, .L25
 169 000a 03EB4010 		add	r0, r3, r0, lsl #5
 170 000e C368     		ldr	r3, [r0, #12]
 171 0010 1847     		bx	r3
ARM GAS  /tmp/ccSNdK4s.s 			page 4


 172              	.L26:
 173 0012 00BF     		.align	2
 174              	.L25:
 175 0014 00000000 		.word	.LANCHOR0
 176              		.size	mem_wr_protect, .-mem_wr_protect
 177              		.section	.text.mem_removal,"ax",%progbits
 178              		.align	1
 179              		.p2align 2,,3
 180              		.global	mem_removal
 181              		.syntax unified
 182              		.thumb
 183              		.thumb_func
 184              		.fpu softvfp
 185              		.type	mem_removal, %function
 186              	mem_removal:
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 189              		@ link register save eliminated.
 190 0000 0128     		cmp	r0, #1
 191 0002 01D9     		bls	.L29
 192 0004 0120     		movs	r0, #1
 193 0006 7047     		bx	lr
 194              	.L29:
 195 0008 024B     		ldr	r3, .L30
 196 000a 03EB4010 		add	r0, r3, r0, lsl #5
 197 000e 0369     		ldr	r3, [r0, #16]
 198 0010 1847     		bx	r3
 199              	.L31:
 200 0012 00BF     		.align	2
 201              	.L30:
 202 0014 00000000 		.word	.LANCHOR0
 203              		.size	mem_removal, .-mem_removal
 204              		.section	.text.mem_name,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	mem_name
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu softvfp
 212              		.type	mem_name, %function
 213              	mem_name:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 217 0000 0128     		cmp	r0, #1
 218 0002 9DBF     		ittte	ls
 219 0004 024B     		ldrls	r3, .L35
 220 0006 03EB4010 		addls	r0, r3, r0, lsl #5
 221 000a C069     		ldrls	r0, [r0, #28]
 222 000c 0020     		movhi	r0, #0
 223 000e 7047     		bx	lr
 224              	.L36:
 225              		.align	2
 226              	.L35:
 227 0010 00000000 		.word	.LANCHOR0
 228              		.size	mem_name, .-mem_name
ARM GAS  /tmp/ccSNdK4s.s 			page 5


 229              		.section	.text.memory_2_ram,"ax",%progbits
 230              		.align	1
 231              		.p2align 2,,3
 232              		.global	memory_2_ram
 233              		.syntax unified
 234              		.thumb
 235              		.thumb_func
 236              		.fpu softvfp
 237              		.type	memory_2_ram, %function
 238              	memory_2_ram:
 239              		@ args = 0, pretend = 0, frame = 0
 240              		@ frame_needed = 0, uses_anonymous_args = 0
 241              		@ link register save eliminated.
 242 0000 0128     		cmp	r0, #1
 243 0002 01D9     		bls	.L42
 244 0004 0120     		movs	r0, #1
 245 0006 7047     		bx	lr
 246              	.L42:
 247 0008 30B4     		push	{r4, r5}
 248 000a 054D     		ldr	r5, .L43
 249 000c 05EB4015 		add	r5, r5, r0, lsl #5
 250 0010 0C46     		mov	r4, r1
 251 0012 2046     		mov	r0, r4
 252 0014 1146     		mov	r1, r2
 253 0016 1A46     		mov	r2, r3
 254 0018 6B69     		ldr	r3, [r5, #20]
 255 001a 30BC     		pop	{r4, r5}
 256 001c 1847     		bx	r3
 257              	.L44:
 258 001e 00BF     		.align	2
 259              	.L43:
 260 0020 00000000 		.word	.LANCHOR0
 261              		.size	memory_2_ram, .-memory_2_ram
 262              		.section	.text.ram_2_memory,"ax",%progbits
 263              		.align	1
 264              		.p2align 2,,3
 265              		.global	ram_2_memory
 266              		.syntax unified
 267              		.thumb
 268              		.thumb_func
 269              		.fpu softvfp
 270              		.type	ram_2_memory, %function
 271              	ram_2_memory:
 272              		@ args = 0, pretend = 0, frame = 0
 273              		@ frame_needed = 0, uses_anonymous_args = 0
 274              		@ link register save eliminated.
 275 0000 0128     		cmp	r0, #1
 276 0002 01D9     		bls	.L50
 277 0004 0120     		movs	r0, #1
 278 0006 7047     		bx	lr
 279              	.L50:
 280 0008 30B4     		push	{r4, r5}
 281 000a 054D     		ldr	r5, .L51
 282 000c 05EB4015 		add	r5, r5, r0, lsl #5
 283 0010 0C46     		mov	r4, r1
 284 0012 2046     		mov	r0, r4
 285 0014 1146     		mov	r1, r2
ARM GAS  /tmp/ccSNdK4s.s 			page 6


 286 0016 1A46     		mov	r2, r3
 287 0018 AB69     		ldr	r3, [r5, #24]
 288 001a 30BC     		pop	{r4, r5}
 289 001c 1847     		bx	r3
 290              	.L52:
 291 001e 00BF     		.align	2
 292              	.L51:
 293 0020 00000000 		.word	.LANCHOR0
 294              		.size	ram_2_memory, .-ram_2_memory
 295              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 296              		.align	2
 297              		.type	cpu_irq_critical_section_counter, %object
 298              		.size	cpu_irq_critical_section_counter, 4
 299              	cpu_irq_critical_section_counter:
 300 0000 00000000 		.space	4
 301              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 302              		.type	cpu_irq_prev_interrupt_state, %object
 303              		.size	cpu_irq_prev_interrupt_state, 1
 304              	cpu_irq_prev_interrupt_state:
 305 0000 00       		.space	1
 306              		.section	.rodata.lun_desc,"a",%progbits
 307              		.align	2
 308              		.set	.LANCHOR0,. + 0
 309              		.type	lun_desc, %object
 310              		.size	lun_desc, 64
 311              	lun_desc:
 312 0000 00000000 		.word	sd_mmc_test_unit_ready_0
 313 0004 00000000 		.word	sd_mmc_read_capacity_0
 314 0008 00000000 		.word	0
 315 000c 00000000 		.word	sd_mmc_wr_protect_0
 316 0010 00000000 		.word	sd_mmc_removal_0
 317 0014 00000000 		.word	sd_mmc_mem_2_ram_0
 318 0018 00000000 		.word	sd_mmc_ram_2_mem_0
 319 001c 00000000 		.word	.LC0
 320 0020 00000000 		.word	sd_mmc_test_unit_ready_1
 321 0024 00000000 		.word	sd_mmc_read_capacity_1
 322 0028 00000000 		.word	0
 323 002c 00000000 		.word	sd_mmc_wr_protect_1
 324 0030 00000000 		.word	sd_mmc_removal_1
 325 0034 00000000 		.word	sd_mmc_mem_2_ram_1
 326 0038 00000000 		.word	sd_mmc_ram_2_mem_1
 327 003c 18000000 		.word	.LC1
 328              		.section	.rodata.str1.4,"aMS",%progbits,1
 329              		.align	2
 330              	.LC0:
 331 0000 2253442F 		.ascii	"\"SD/MMC Card Slot 0\"\000"
 331      4D4D4320 
 331      43617264 
 331      20536C6F 
 331      74203022 
 332 0015 000000   		.space	3
 333              	.LC1:
 334 0018 2253442F 		.ascii	"\"SD/MMC Card Slot 1\"\000"
 334      4D4D4320 
 334      43617264 
 334      20536C6F 
 334      74203122 
ARM GAS  /tmp/ccSNdK4s.s 			page 7


 335              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
