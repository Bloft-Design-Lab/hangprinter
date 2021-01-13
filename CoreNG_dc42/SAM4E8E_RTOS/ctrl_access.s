ARM GAS  /tmp/ccHC1qky.s 			page 1


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
  13              		.file	"ctrl_access.c"
  14              		.section	.text.get_nb_lun,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	get_nb_lun
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	get_nb_lun, %function
  23              	get_nb_lun:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0220     		movs	r0, #2
  28 0002 7047     		bx	lr
  29              		.size	get_nb_lun, .-get_nb_lun
  30              		.section	.text.get_cur_lun,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	get_cur_lun
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	get_cur_lun, %function
  39              	get_cur_lun:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0020     		movs	r0, #0
  44 0002 7047     		bx	lr
  45              		.size	get_cur_lun, .-get_cur_lun
  46              		.section	.text.mem_test_unit_ready,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	mem_test_unit_ready
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	mem_test_unit_ready, %function
  55              	mem_test_unit_ready:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccHC1qky.s 			page 2


  58              		@ link register save eliminated.
  59 0000 0128     		cmp	r0, #1
  60 0002 01D9     		bls	.L6
  61 0004 0120     		movs	r0, #1
  62 0006 7047     		bx	lr
  63              	.L6:
  64 0008 4001     		lsls	r0, r0, #5
  65 000a 014B     		ldr	r3, .L7
  66 000c 1B58     		ldr	r3, [r3, r0]
  67 000e 1847     		bx	r3
  68              	.L8:
  69              		.align	2
  70              	.L7:
  71 0010 00000000 		.word	.LANCHOR0
  72              		.size	mem_test_unit_ready, .-mem_test_unit_ready
  73              		.section	.text.mem_read_capacity,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	mem_read_capacity
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu fpv4-sp-d16
  81              		.type	mem_read_capacity, %function
  82              	mem_read_capacity:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85              		@ link register save eliminated.
  86 0000 0128     		cmp	r0, #1
  87 0002 01D9     		bls	.L11
  88 0004 0120     		movs	r0, #1
  89 0006 7047     		bx	lr
  90              	.L11:
  91 0008 024B     		ldr	r3, .L12
  92 000a 03EB4013 		add	r3, r3, r0, lsl #5
  93 000e 0846     		mov	r0, r1
  94 0010 5B68     		ldr	r3, [r3, #4]
  95 0012 1847     		bx	r3
  96              	.L13:
  97              		.align	2
  98              	.L12:
  99 0014 00000000 		.word	.LANCHOR0
 100              		.size	mem_read_capacity, .-mem_read_capacity
 101              		.section	.text.mem_sector_size,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	mem_sector_size
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	mem_sector_size, %function
 110              	mem_sector_size:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 0128     		cmp	r0, #1
ARM GAS  /tmp/ccHC1qky.s 			page 3


 115 0002 8CBF     		ite	hi
 116 0004 0020     		movhi	r0, #0
 117 0006 0120     		movls	r0, #1
 118 0008 7047     		bx	lr
 119              		.size	mem_sector_size, .-mem_sector_size
 120 000a 00BF     		.section	.text.mem_unload,"ax",%progbits
 121              		.align	1
 122              		.p2align 2,,3
 123              		.global	mem_unload
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu fpv4-sp-d16
 128              		.type	mem_unload, %function
 129              	mem_unload:
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132              		@ link register save eliminated.
 133 0000 0128     		cmp	r0, #1
 134 0002 01D9     		bls	.L19
 135 0004 0020     		movs	r0, #0
 136 0006 7047     		bx	lr
 137              	.L19:
 138 0008 044B     		ldr	r3, .L20
 139 000a 03EB4010 		add	r0, r3, r0, lsl #5
 140 000e 8368     		ldr	r3, [r0, #8]
 141 0010 0BB1     		cbz	r3, .L17
 142 0012 0846     		mov	r0, r1
 143 0014 1847     		bx	r3
 144              	.L17:
 145 0016 81F00100 		eor	r0, r1, #1
 146 001a 7047     		bx	lr
 147              	.L21:
 148              		.align	2
 149              	.L20:
 150 001c 00000000 		.word	.LANCHOR0
 151              		.size	mem_unload, .-mem_unload
 152              		.section	.text.mem_wr_protect,"ax",%progbits
 153              		.align	1
 154              		.p2align 2,,3
 155              		.global	mem_wr_protect
 156              		.syntax unified
 157              		.thumb
 158              		.thumb_func
 159              		.fpu fpv4-sp-d16
 160              		.type	mem_wr_protect, %function
 161              	mem_wr_protect:
 162              		@ args = 0, pretend = 0, frame = 0
 163              		@ frame_needed = 0, uses_anonymous_args = 0
 164              		@ link register save eliminated.
 165 0000 0128     		cmp	r0, #1
 166 0002 01D9     		bls	.L24
 167 0004 0120     		movs	r0, #1
 168 0006 7047     		bx	lr
 169              	.L24:
 170 0008 024B     		ldr	r3, .L25
 171 000a 03EB4010 		add	r0, r3, r0, lsl #5
ARM GAS  /tmp/ccHC1qky.s 			page 4


 172 000e C368     		ldr	r3, [r0, #12]
 173 0010 1847     		bx	r3
 174              	.L26:
 175 0012 00BF     		.align	2
 176              	.L25:
 177 0014 00000000 		.word	.LANCHOR0
 178              		.size	mem_wr_protect, .-mem_wr_protect
 179              		.section	.text.mem_removal,"ax",%progbits
 180              		.align	1
 181              		.p2align 2,,3
 182              		.global	mem_removal
 183              		.syntax unified
 184              		.thumb
 185              		.thumb_func
 186              		.fpu fpv4-sp-d16
 187              		.type	mem_removal, %function
 188              	mem_removal:
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              		@ link register save eliminated.
 192 0000 0128     		cmp	r0, #1
 193 0002 01D9     		bls	.L29
 194 0004 0120     		movs	r0, #1
 195 0006 7047     		bx	lr
 196              	.L29:
 197 0008 024B     		ldr	r3, .L30
 198 000a 03EB4010 		add	r0, r3, r0, lsl #5
 199 000e 0369     		ldr	r3, [r0, #16]
 200 0010 1847     		bx	r3
 201              	.L31:
 202 0012 00BF     		.align	2
 203              	.L30:
 204 0014 00000000 		.word	.LANCHOR0
 205              		.size	mem_removal, .-mem_removal
 206              		.section	.text.mem_name,"ax",%progbits
 207              		.align	1
 208              		.p2align 2,,3
 209              		.global	mem_name
 210              		.syntax unified
 211              		.thumb
 212              		.thumb_func
 213              		.fpu fpv4-sp-d16
 214              		.type	mem_name, %function
 215              	mem_name:
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218              		@ link register save eliminated.
 219 0000 0128     		cmp	r0, #1
 220 0002 9DBF     		ittte	ls
 221 0004 024B     		ldrls	r3, .L35
 222 0006 03EB4010 		addls	r0, r3, r0, lsl #5
 223 000a C069     		ldrls	r0, [r0, #28]
 224 000c 0020     		movhi	r0, #0
 225 000e 7047     		bx	lr
 226              	.L36:
 227              		.align	2
 228              	.L35:
ARM GAS  /tmp/ccHC1qky.s 			page 5


 229 0010 00000000 		.word	.LANCHOR0
 230              		.size	mem_name, .-mem_name
 231              		.section	.text.memory_2_ram,"ax",%progbits
 232              		.align	1
 233              		.p2align 2,,3
 234              		.global	memory_2_ram
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu fpv4-sp-d16
 239              		.type	memory_2_ram, %function
 240              	memory_2_ram:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243              		@ link register save eliminated.
 244 0000 0128     		cmp	r0, #1
 245 0002 01D9     		bls	.L42
 246 0004 0120     		movs	r0, #1
 247 0006 7047     		bx	lr
 248              	.L42:
 249 0008 30B4     		push	{r4, r5}
 250 000a 054D     		ldr	r5, .L43
 251 000c 05EB4015 		add	r5, r5, r0, lsl #5
 252 0010 0C46     		mov	r4, r1
 253 0012 2046     		mov	r0, r4
 254 0014 1146     		mov	r1, r2
 255 0016 1A46     		mov	r2, r3
 256 0018 6B69     		ldr	r3, [r5, #20]
 257 001a 30BC     		pop	{r4, r5}
 258 001c 1847     		bx	r3
 259              	.L44:
 260 001e 00BF     		.align	2
 261              	.L43:
 262 0020 00000000 		.word	.LANCHOR0
 263              		.size	memory_2_ram, .-memory_2_ram
 264              		.section	.text.ram_2_memory,"ax",%progbits
 265              		.align	1
 266              		.p2align 2,,3
 267              		.global	ram_2_memory
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu fpv4-sp-d16
 272              		.type	ram_2_memory, %function
 273              	ram_2_memory:
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276              		@ link register save eliminated.
 277 0000 0128     		cmp	r0, #1
 278 0002 01D9     		bls	.L50
 279 0004 0120     		movs	r0, #1
 280 0006 7047     		bx	lr
 281              	.L50:
 282 0008 30B4     		push	{r4, r5}
 283 000a 054D     		ldr	r5, .L51
 284 000c 05EB4015 		add	r5, r5, r0, lsl #5
 285 0010 0C46     		mov	r4, r1
ARM GAS  /tmp/ccHC1qky.s 			page 6


 286 0012 2046     		mov	r0, r4
 287 0014 1146     		mov	r1, r2
 288 0016 1A46     		mov	r2, r3
 289 0018 AB69     		ldr	r3, [r5, #24]
 290 001a 30BC     		pop	{r4, r5}
 291 001c 1847     		bx	r3
 292              	.L52:
 293 001e 00BF     		.align	2
 294              	.L51:
 295 0020 00000000 		.word	.LANCHOR0
 296              		.size	ram_2_memory, .-ram_2_memory
 297              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 298              		.align	2
 299              		.type	cpu_irq_critical_section_counter, %object
 300              		.size	cpu_irq_critical_section_counter, 4
 301              	cpu_irq_critical_section_counter:
 302 0000 00000000 		.space	4
 303              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 304              		.type	cpu_irq_prev_interrupt_state, %object
 305              		.size	cpu_irq_prev_interrupt_state, 1
 306              	cpu_irq_prev_interrupt_state:
 307 0000 00       		.space	1
 308              		.section	.rodata.lun_desc,"a",%progbits
 309              		.align	2
 310              		.set	.LANCHOR0,. + 0
 311              		.type	lun_desc, %object
 312              		.size	lun_desc, 64
 313              	lun_desc:
 314 0000 00000000 		.word	sd_mmc_test_unit_ready_0
 315 0004 00000000 		.word	sd_mmc_read_capacity_0
 316 0008 00000000 		.word	0
 317 000c 00000000 		.word	sd_mmc_wr_protect_0
 318 0010 00000000 		.word	sd_mmc_removal_0
 319 0014 00000000 		.word	sd_mmc_mem_2_ram_0
 320 0018 00000000 		.word	sd_mmc_ram_2_mem_0
 321 001c 00000000 		.word	.LC0
 322 0020 00000000 		.word	sd_mmc_test_unit_ready_1
 323 0024 00000000 		.word	sd_mmc_read_capacity_1
 324 0028 00000000 		.word	0
 325 002c 00000000 		.word	sd_mmc_wr_protect_1
 326 0030 00000000 		.word	sd_mmc_removal_1
 327 0034 00000000 		.word	sd_mmc_mem_2_ram_1
 328 0038 00000000 		.word	sd_mmc_ram_2_mem_1
 329 003c 18000000 		.word	.LC1
 330              		.section	.rodata.str1.4,"aMS",%progbits,1
 331              		.align	2
 332              	.LC0:
 333 0000 2253442F 		.ascii	"\"SD/MMC Card Slot 0\"\000"
 333      4D4D4320 
 333      43617264 
 333      20536C6F 
 333      74203022 
 334 0015 000000   		.space	3
 335              	.LC1:
 336 0018 2253442F 		.ascii	"\"SD/MMC Card Slot 1\"\000"
 336      4D4D4320 
 336      43617264 
ARM GAS  /tmp/ccHC1qky.s 			page 7


 336      20536C6F 
 336      74203122 
 337              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
