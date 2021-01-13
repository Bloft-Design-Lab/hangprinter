ARM GAS  /tmp/ccomqgAQ.s 			page 1


   1              		.cpu cortex-m7
   2              		.eabi_attribute 28, 1
   3              		.eabi_attribute 20, 1
   4              		.eabi_attribute 21, 1
   5              		.eabi_attribute 23, 3
   6              		.eabi_attribute 24, 1
   7              		.eabi_attribute 25, 1
   8              		.eabi_attribute 26, 1
   9              		.eabi_attribute 30, 2
  10              		.eabi_attribute 34, 1
  11              		.eabi_attribute 18, 4
  12              		.file	"sd_mmc_mem.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.sd_mmc_test_unit_ready,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	sd_mmc_test_unit_ready
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	sd_mmc_test_unit_ready, %function
  25              	sd_mmc_test_unit_ready:
  26              	.LFB227:
  27              		.file 1 "../libraries/Storage/sd_mmc_mem.c"
   1:../libraries/Storage/sd_mmc_mem.c **** /**
   2:../libraries/Storage/sd_mmc_mem.c ****  * \file
   3:../libraries/Storage/sd_mmc_mem.c ****  *
   4:../libraries/Storage/sd_mmc_mem.c ****  * \brief CTRL_ACCESS interface for common SD/MMC stack
   5:../libraries/Storage/sd_mmc_mem.c ****  *
   6:../libraries/Storage/sd_mmc_mem.c ****  * Copyright (c) 2012-2015 Atmel Corporation. All rights reserved.
   7:../libraries/Storage/sd_mmc_mem.c ****  *
   8:../libraries/Storage/sd_mmc_mem.c ****  * \asf_license_start
   9:../libraries/Storage/sd_mmc_mem.c ****  *
  10:../libraries/Storage/sd_mmc_mem.c ****  * \page License
  11:../libraries/Storage/sd_mmc_mem.c ****  *
  12:../libraries/Storage/sd_mmc_mem.c ****  * Redistribution and use in source and binary forms, with or without
  13:../libraries/Storage/sd_mmc_mem.c ****  * modification, are permitted provided that the following conditions are met:
  14:../libraries/Storage/sd_mmc_mem.c ****  *
  15:../libraries/Storage/sd_mmc_mem.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../libraries/Storage/sd_mmc_mem.c ****  *    this list of conditions and the following disclaimer.
  17:../libraries/Storage/sd_mmc_mem.c ****  *
  18:../libraries/Storage/sd_mmc_mem.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../libraries/Storage/sd_mmc_mem.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../libraries/Storage/sd_mmc_mem.c ****  *    and/or other materials provided with the distribution.
  21:../libraries/Storage/sd_mmc_mem.c ****  *
  22:../libraries/Storage/sd_mmc_mem.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../libraries/Storage/sd_mmc_mem.c ****  *    from this software without specific prior written permission.
  24:../libraries/Storage/sd_mmc_mem.c ****  *
  25:../libraries/Storage/sd_mmc_mem.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../libraries/Storage/sd_mmc_mem.c ****  *    Atmel microcontroller product.
  27:../libraries/Storage/sd_mmc_mem.c ****  *
  28:../libraries/Storage/sd_mmc_mem.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../libraries/Storage/sd_mmc_mem.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../libraries/Storage/sd_mmc_mem.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccomqgAQ.s 			page 2


  31:../libraries/Storage/sd_mmc_mem.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../libraries/Storage/sd_mmc_mem.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../libraries/Storage/sd_mmc_mem.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../libraries/Storage/sd_mmc_mem.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../libraries/Storage/sd_mmc_mem.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../libraries/Storage/sd_mmc_mem.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../libraries/Storage/sd_mmc_mem.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../libraries/Storage/sd_mmc_mem.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../libraries/Storage/sd_mmc_mem.c ****  *
  40:../libraries/Storage/sd_mmc_mem.c ****  * \asf_license_stop
  41:../libraries/Storage/sd_mmc_mem.c ****  *
  42:../libraries/Storage/sd_mmc_mem.c ****  */
  43:../libraries/Storage/sd_mmc_mem.c **** /*
  44:../libraries/Storage/sd_mmc_mem.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../libraries/Storage/sd_mmc_mem.c ****  */
  46:../libraries/Storage/sd_mmc_mem.c **** 
  47:../libraries/Storage/sd_mmc_mem.c **** #include "conf_access.h"
  48:../libraries/Storage/sd_mmc_mem.c **** 
  49:../libraries/Storage/sd_mmc_mem.c **** #if (SD_MMC_0_MEM == ENABLE) || (SD_MMC_1_MEM == ENABLE)
  50:../libraries/Storage/sd_mmc_mem.c **** 
  51:../libraries/Storage/sd_mmc_mem.c **** #include "Core.h"
  52:../libraries/Storage/sd_mmc_mem.c **** #include "sd_mmc.h"
  53:../libraries/Storage/sd_mmc_mem.c **** #include "sd_mmc_mem.h"
  54:../libraries/Storage/sd_mmc_mem.c **** 
  55:../libraries/Storage/sd_mmc_mem.c **** /**
  56:../libraries/Storage/sd_mmc_mem.c ****  * \ingroup sd_mmc_stack_mem
  57:../libraries/Storage/sd_mmc_mem.c ****  * \defgroup sd_mmc_stack_mem_internal Implementation of SD/MMC Memory
  58:../libraries/Storage/sd_mmc_mem.c ****  * @{
  59:../libraries/Storage/sd_mmc_mem.c ****  */
  60:../libraries/Storage/sd_mmc_mem.c **** 
  61:../libraries/Storage/sd_mmc_mem.c **** /**
  62:../libraries/Storage/sd_mmc_mem.c ****  * \name Control Interface
  63:../libraries/Storage/sd_mmc_mem.c ****  * @{
  64:../libraries/Storage/sd_mmc_mem.c ****  */
  65:../libraries/Storage/sd_mmc_mem.c **** 
  66:../libraries/Storage/sd_mmc_mem.c **** static bool sd_mmc_ejected[2] = {false, false};
  67:../libraries/Storage/sd_mmc_mem.c **** 
  68:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_test_unit_ready(uint8_t slot)
  69:../libraries/Storage/sd_mmc_mem.c **** {
  28              		.loc 1 69 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              	.LVL0:
  33 0000 38B5     		push	{r3, r4, r5, lr}
  34              		.cfi_def_cfa_offset 16
  35              		.cfi_offset 3, -16
  36              		.cfi_offset 4, -12
  37              		.cfi_offset 5, -8
  38              		.cfi_offset 14, -4
  39              		.loc 1 69 0
  40 0002 0546     		mov	r5, r0
  70:../libraries/Storage/sd_mmc_mem.c **** 	switch (sd_mmc_check(slot))
  41              		.loc 1 70 0
  42 0004 FFF7FEFF 		bl	sd_mmc_check
  43              	.LVL1:
  44 0008 0128     		cmp	r0, #1
ARM GAS  /tmp/ccomqgAQ.s 			page 3


  45 000a 0DD0     		beq	.L7
  46 000c 07D3     		bcc	.L4
  47 000e 0228     		cmp	r0, #2
  48 0010 03D1     		bne	.L11
  71:../libraries/Storage/sd_mmc_mem.c **** 	{
  72:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_OK:
  73:../libraries/Storage/sd_mmc_mem.c **** 		if (sd_mmc_ejected[slot]) {
  74:../libraries/Storage/sd_mmc_mem.c **** 			return CTRL_NO_PRESENT;
  75:../libraries/Storage/sd_mmc_mem.c **** 		}
  76:../libraries/Storage/sd_mmc_mem.c **** 		if (sd_mmc_get_type(slot) & (CARD_TYPE_SD | CARD_TYPE_MMC)) {
  77:../libraries/Storage/sd_mmc_mem.c **** 			return CTRL_GOOD;
  78:../libraries/Storage/sd_mmc_mem.c **** 		}
  79:../libraries/Storage/sd_mmc_mem.c **** 		// It is not a memory card
  80:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_NO_PRESENT;
  81:../libraries/Storage/sd_mmc_mem.c **** 
  82:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_INIT_ONGOING:
  83:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_BUSY;
  84:../libraries/Storage/sd_mmc_mem.c **** 
  85:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_ERR_NO_CARD:
  86:../libraries/Storage/sd_mmc_mem.c **** 		sd_mmc_ejected[slot] = false;
  49              		.loc 1 86 0
  50 0012 0A4B     		ldr	r3, .L13
  51 0014 0022     		movs	r2, #0
  52 0016 5A55     		strb	r2, [r3, r5]
  87:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_NO_PRESENT;
  53              		.loc 1 87 0
  54 0018 38BD     		pop	{r3, r4, r5, pc}
  55              	.L11:
  88:../libraries/Storage/sd_mmc_mem.c **** 
  89:../libraries/Storage/sd_mmc_mem.c **** 	default:
  90:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
  56              		.loc 1 90 0
  57 001a 0120     		movs	r0, #1
  58 001c 38BD     		pop	{r3, r4, r5, pc}
  59              	.L4:
  73:../libraries/Storage/sd_mmc_mem.c **** 			return CTRL_NO_PRESENT;
  60              		.loc 1 73 0
  61 001e 074B     		ldr	r3, .L13
  62 0020 5C5D     		ldrb	r4, [r3, r5]	@ zero_extendqisi2
  63 0022 1CB1     		cbz	r4, .L12
  64              	.L6:
  65              	.LBB16:
  66              	.LBB17:
  80:../libraries/Storage/sd_mmc_mem.c **** 
  67              		.loc 1 80 0
  68 0024 0220     		movs	r0, #2
  69 0026 38BD     		pop	{r3, r4, r5, pc}
  70              	.L7:
  71              	.LBE17:
  72              	.LBE16:
  83:../libraries/Storage/sd_mmc_mem.c **** 
  73              		.loc 1 83 0
  74 0028 0320     		movs	r0, #3
  75 002a 38BD     		pop	{r3, r4, r5, pc}
  76              	.L12:
  77              	.LVL2:
  78              	.LBB19:
ARM GAS  /tmp/ccomqgAQ.s 			page 4


  79              	.LBB18:
  76:../libraries/Storage/sd_mmc_mem.c **** 			return CTRL_GOOD;
  80              		.loc 1 76 0
  81 002c 2846     		mov	r0, r5
  82 002e FFF7FEFF 		bl	sd_mmc_get_type
  83              	.LVL3:
  84 0032 8307     		lsls	r3, r0, #30
  85 0034 F6D0     		beq	.L6
  77:../libraries/Storage/sd_mmc_mem.c **** 		}
  86              		.loc 1 77 0
  87 0036 2046     		mov	r0, r4
  88              	.LBE18:
  89              	.LBE19:
  91:../libraries/Storage/sd_mmc_mem.c **** 	}
  92:../libraries/Storage/sd_mmc_mem.c **** }
  90              		.loc 1 92 0
  91 0038 38BD     		pop	{r3, r4, r5, pc}
  92              	.LVL4:
  93              	.L14:
  94 003a 00BF     		.align	2
  95              	.L13:
  96 003c 00000000 		.word	.LANCHOR0
  97              		.cfi_endproc
  98              	.LFE227:
  99              		.size	sd_mmc_test_unit_ready, .-sd_mmc_test_unit_ready
 100              		.section	.text.sd_mmc_test_unit_ready_0,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	sd_mmc_test_unit_ready_0
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu fpv5-d16
 108              		.type	sd_mmc_test_unit_ready_0, %function
 109              	sd_mmc_test_unit_ready_0:
 110              	.LFB228:
  93:../libraries/Storage/sd_mmc_mem.c **** 
  94:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_test_unit_ready_0(void)
  95:../libraries/Storage/sd_mmc_mem.c **** {
 111              		.loc 1 95 0
 112              		.cfi_startproc
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
 115              		@ link register save eliminated.
  96:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_test_unit_ready(0);
 116              		.loc 1 96 0
 117 0000 0020     		movs	r0, #0
 118 0002 FFF7FEBF 		b	sd_mmc_test_unit_ready
 119              	.LVL5:
 120              		.cfi_endproc
 121              	.LFE228:
 122              		.size	sd_mmc_test_unit_ready_0, .-sd_mmc_test_unit_ready_0
 123 0006 00BF     		.section	.text.sd_mmc_test_unit_ready_1,"ax",%progbits
 124              		.align	1
 125              		.p2align 2,,3
 126              		.global	sd_mmc_test_unit_ready_1
 127              		.syntax unified
ARM GAS  /tmp/ccomqgAQ.s 			page 5


 128              		.thumb
 129              		.thumb_func
 130              		.fpu fpv5-d16
 131              		.type	sd_mmc_test_unit_ready_1, %function
 132              	sd_mmc_test_unit_ready_1:
 133              	.LFB229:
  97:../libraries/Storage/sd_mmc_mem.c **** }
  98:../libraries/Storage/sd_mmc_mem.c **** 
  99:../libraries/Storage/sd_mmc_mem.c **** 
 100:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_test_unit_ready_1(void)
 101:../libraries/Storage/sd_mmc_mem.c **** {
 134              		.loc 1 101 0
 135              		.cfi_startproc
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138              		@ link register save eliminated.
 102:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_test_unit_ready(1);
 139              		.loc 1 102 0
 140 0000 0120     		movs	r0, #1
 141 0002 FFF7FEBF 		b	sd_mmc_test_unit_ready
 142              	.LVL6:
 143              		.cfi_endproc
 144              	.LFE229:
 145              		.size	sd_mmc_test_unit_ready_1, .-sd_mmc_test_unit_ready_1
 146 0006 00BF     		.section	.text.sd_mmc_read_capacity,"ax",%progbits
 147              		.align	1
 148              		.p2align 2,,3
 149              		.global	sd_mmc_read_capacity
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv5-d16
 154              		.type	sd_mmc_read_capacity, %function
 155              	sd_mmc_read_capacity:
 156              	.LFB230:
 103:../libraries/Storage/sd_mmc_mem.c **** }
 104:../libraries/Storage/sd_mmc_mem.c **** 
 105:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_read_capacity(uint8_t slot, uint32_t *nb_sector)
 106:../libraries/Storage/sd_mmc_mem.c **** {
 157              		.loc 1 106 0
 158              		.cfi_startproc
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161              	.LVL7:
 162 0000 38B5     		push	{r3, r4, r5, lr}
 163              		.cfi_def_cfa_offset 16
 164              		.cfi_offset 3, -16
 165              		.cfi_offset 4, -12
 166              		.cfi_offset 5, -8
 167              		.cfi_offset 14, -4
 168              		.loc 1 106 0
 169 0002 0C46     		mov	r4, r1
 170 0004 0546     		mov	r5, r0
 107:../libraries/Storage/sd_mmc_mem.c **** 	// Return last sector address (-1)
 108:../libraries/Storage/sd_mmc_mem.c **** 	*nb_sector = (sd_mmc_get_capacity(slot) * 2) - 1;
 171              		.loc 1 108 0
 172 0006 FFF7FEFF 		bl	sd_mmc_get_capacity
ARM GAS  /tmp/ccomqgAQ.s 			page 6


 173              	.LVL8:
 174 000a 4300     		lsls	r3, r0, #1
 109:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_test_unit_ready(slot);
 175              		.loc 1 109 0
 176 000c 2846     		mov	r0, r5
 108:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_test_unit_ready(slot);
 177              		.loc 1 108 0
 178 000e 013B     		subs	r3, r3, #1
 179 0010 2360     		str	r3, [r4]
 110:../libraries/Storage/sd_mmc_mem.c **** }
 180              		.loc 1 110 0
 181 0012 BDE83840 		pop	{r3, r4, r5, lr}
 182              		.cfi_restore 14
 183              		.cfi_restore 5
 184              		.cfi_restore 4
 185              		.cfi_restore 3
 186              		.cfi_def_cfa_offset 0
 187              	.LVL9:
 109:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_test_unit_ready(slot);
 188              		.loc 1 109 0
 189 0016 FFF7FEBF 		b	sd_mmc_test_unit_ready
 190              	.LVL10:
 191              		.cfi_endproc
 192              	.LFE230:
 193              		.size	sd_mmc_read_capacity, .-sd_mmc_read_capacity
 194 001a 00BF     		.section	.text.sd_mmc_read_capacity_0,"ax",%progbits
 195              		.align	1
 196              		.p2align 2,,3
 197              		.global	sd_mmc_read_capacity_0
 198              		.syntax unified
 199              		.thumb
 200              		.thumb_func
 201              		.fpu fpv5-d16
 202              		.type	sd_mmc_read_capacity_0, %function
 203              	sd_mmc_read_capacity_0:
 204              	.LFB231:
 111:../libraries/Storage/sd_mmc_mem.c **** 
 112:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_read_capacity_0(uint32_t *nb_sector)
 113:../libraries/Storage/sd_mmc_mem.c **** {
 205              		.loc 1 113 0
 206              		.cfi_startproc
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209              		@ link register save eliminated.
 210              	.LVL11:
 114:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_read_capacity(0, nb_sector);
 211              		.loc 1 114 0
 212 0000 0146     		mov	r1, r0
 213 0002 0020     		movs	r0, #0
 214              	.LVL12:
 215 0004 FFF7FEBF 		b	sd_mmc_read_capacity
 216              	.LVL13:
 217              		.cfi_endproc
 218              	.LFE231:
 219              		.size	sd_mmc_read_capacity_0, .-sd_mmc_read_capacity_0
 220              		.section	.text.sd_mmc_read_capacity_1,"ax",%progbits
 221              		.align	1
ARM GAS  /tmp/ccomqgAQ.s 			page 7


 222              		.p2align 2,,3
 223              		.global	sd_mmc_read_capacity_1
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv5-d16
 228              		.type	sd_mmc_read_capacity_1, %function
 229              	sd_mmc_read_capacity_1:
 230              	.LFB232:
 115:../libraries/Storage/sd_mmc_mem.c **** }
 116:../libraries/Storage/sd_mmc_mem.c **** 
 117:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_read_capacity_1(uint32_t *nb_sector)
 118:../libraries/Storage/sd_mmc_mem.c **** {
 231              		.loc 1 118 0
 232              		.cfi_startproc
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235              		@ link register save eliminated.
 236              	.LVL14:
 119:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_read_capacity(1, nb_sector);
 237              		.loc 1 119 0
 238 0000 0146     		mov	r1, r0
 239 0002 0120     		movs	r0, #1
 240              	.LVL15:
 241 0004 FFF7FEBF 		b	sd_mmc_read_capacity
 242              	.LVL16:
 243              		.cfi_endproc
 244              	.LFE232:
 245              		.size	sd_mmc_read_capacity_1, .-sd_mmc_read_capacity_1
 246              		.section	.text.sd_mmc_unload,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	sd_mmc_unload
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv5-d16
 254              		.type	sd_mmc_unload, %function
 255              	sd_mmc_unload:
 256              	.LFB233:
 120:../libraries/Storage/sd_mmc_mem.c **** }
 121:../libraries/Storage/sd_mmc_mem.c **** 
 122:../libraries/Storage/sd_mmc_mem.c **** bool sd_mmc_unload(uint8_t slot, bool unload)
 123:../libraries/Storage/sd_mmc_mem.c **** {
 257              		.loc 1 123 0
 258              		.cfi_startproc
 259              		@ args = 0, pretend = 0, frame = 0
 260              		@ frame_needed = 0, uses_anonymous_args = 0
 261              		@ link register save eliminated.
 262              	.LVL17:
 124:../libraries/Storage/sd_mmc_mem.c **** 	sd_mmc_ejected[slot] = unload;
 263              		.loc 1 124 0
 264 0000 014B     		ldr	r3, .L22
 265 0002 1954     		strb	r1, [r3, r0]
 125:../libraries/Storage/sd_mmc_mem.c **** 	return true;
 126:../libraries/Storage/sd_mmc_mem.c **** }
 266              		.loc 1 126 0
ARM GAS  /tmp/ccomqgAQ.s 			page 8


 267 0004 0120     		movs	r0, #1
 268              	.LVL18:
 269 0006 7047     		bx	lr
 270              	.L23:
 271              		.align	2
 272              	.L22:
 273 0008 00000000 		.word	.LANCHOR0
 274              		.cfi_endproc
 275              	.LFE233:
 276              		.size	sd_mmc_unload, .-sd_mmc_unload
 277              		.section	.text.sd_mmc_unload_0,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	sd_mmc_unload_0
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv5-d16
 285              		.type	sd_mmc_unload_0, %function
 286              	sd_mmc_unload_0:
 287              	.LFB234:
 127:../libraries/Storage/sd_mmc_mem.c **** 
 128:../libraries/Storage/sd_mmc_mem.c **** bool sd_mmc_unload_0(bool unload)
 129:../libraries/Storage/sd_mmc_mem.c **** {
 288              		.loc 1 129 0
 289              		.cfi_startproc
 290              		@ args = 0, pretend = 0, frame = 0
 291              		@ frame_needed = 0, uses_anonymous_args = 0
 292              		@ link register save eliminated.
 293              	.LVL19:
 294              	.LBB20:
 295              	.LBB21:
 124:../libraries/Storage/sd_mmc_mem.c **** 	return true;
 296              		.loc 1 124 0
 297 0000 014B     		ldr	r3, .L25
 298 0002 1870     		strb	r0, [r3]
 299              	.LVL20:
 300              	.LBE21:
 301              	.LBE20:
 130:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_unload(0, unload);
 131:../libraries/Storage/sd_mmc_mem.c **** }
 302              		.loc 1 131 0
 303 0004 0120     		movs	r0, #1
 304              	.LVL21:
 305 0006 7047     		bx	lr
 306              	.L26:
 307              		.align	2
 308              	.L25:
 309 0008 00000000 		.word	.LANCHOR0
 310              		.cfi_endproc
 311              	.LFE234:
 312              		.size	sd_mmc_unload_0, .-sd_mmc_unload_0
 313              		.section	.text.sd_mmc_unload_1,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.global	sd_mmc_unload_1
 317              		.syntax unified
ARM GAS  /tmp/ccomqgAQ.s 			page 9


 318              		.thumb
 319              		.thumb_func
 320              		.fpu fpv5-d16
 321              		.type	sd_mmc_unload_1, %function
 322              	sd_mmc_unload_1:
 323              	.LFB235:
 132:../libraries/Storage/sd_mmc_mem.c **** 
 133:../libraries/Storage/sd_mmc_mem.c **** bool sd_mmc_unload_1(bool unload)
 134:../libraries/Storage/sd_mmc_mem.c **** {
 324              		.loc 1 134 0
 325              		.cfi_startproc
 326              		@ args = 0, pretend = 0, frame = 0
 327              		@ frame_needed = 0, uses_anonymous_args = 0
 328              		@ link register save eliminated.
 329              	.LVL22:
 330              	.LBB22:
 331              	.LBB23:
 124:../libraries/Storage/sd_mmc_mem.c **** 	return true;
 332              		.loc 1 124 0
 333 0000 014B     		ldr	r3, .L28
 334 0002 5870     		strb	r0, [r3, #1]
 335              	.LVL23:
 336              	.LBE23:
 337              	.LBE22:
 135:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_unload(1, unload);
 136:../libraries/Storage/sd_mmc_mem.c **** }
 338              		.loc 1 136 0
 339 0004 0120     		movs	r0, #1
 340              	.LVL24:
 341 0006 7047     		bx	lr
 342              	.L29:
 343              		.align	2
 344              	.L28:
 345 0008 00000000 		.word	.LANCHOR0
 346              		.cfi_endproc
 347              	.LFE235:
 348              		.size	sd_mmc_unload_1, .-sd_mmc_unload_1
 349              		.section	.text.sd_mmc_wr_protect,"ax",%progbits
 350              		.align	1
 351              		.p2align 2,,3
 352              		.global	sd_mmc_wr_protect
 353              		.syntax unified
 354              		.thumb
 355              		.thumb_func
 356              		.fpu fpv5-d16
 357              		.type	sd_mmc_wr_protect, %function
 358              	sd_mmc_wr_protect:
 359              	.LFB236:
 137:../libraries/Storage/sd_mmc_mem.c **** 
 138:../libraries/Storage/sd_mmc_mem.c **** bool sd_mmc_wr_protect(uint8_t slot)
 139:../libraries/Storage/sd_mmc_mem.c **** {
 360              		.loc 1 139 0
 361              		.cfi_startproc
 362              		@ args = 0, pretend = 0, frame = 0
 363              		@ frame_needed = 0, uses_anonymous_args = 0
 364              		@ link register save eliminated.
 365              	.LVL25:
ARM GAS  /tmp/ccomqgAQ.s 			page 10


 140:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_is_write_protected(slot);
 366              		.loc 1 140 0
 367 0000 FFF7FEBF 		b	sd_mmc_is_write_protected
 368              	.LVL26:
 369              		.cfi_endproc
 370              	.LFE236:
 371              		.size	sd_mmc_wr_protect, .-sd_mmc_wr_protect
 372              		.section	.text.sd_mmc_wr_protect_0,"ax",%progbits
 373              		.align	1
 374              		.p2align 2,,3
 375              		.global	sd_mmc_wr_protect_0
 376              		.syntax unified
 377              		.thumb
 378              		.thumb_func
 379              		.fpu fpv5-d16
 380              		.type	sd_mmc_wr_protect_0, %function
 381              	sd_mmc_wr_protect_0:
 382              	.LFB237:
 141:../libraries/Storage/sd_mmc_mem.c **** }
 142:../libraries/Storage/sd_mmc_mem.c **** 
 143:../libraries/Storage/sd_mmc_mem.c **** bool sd_mmc_wr_protect_0(void)
 144:../libraries/Storage/sd_mmc_mem.c **** {
 383              		.loc 1 144 0
 384              		.cfi_startproc
 385              		@ args = 0, pretend = 0, frame = 0
 386              		@ frame_needed = 0, uses_anonymous_args = 0
 387              		@ link register save eliminated.
 388              	.LVL27:
 389              	.LBB24:
 390              	.LBB25:
 140:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_is_write_protected(slot);
 391              		.loc 1 140 0
 392 0000 0020     		movs	r0, #0
 393 0002 FFF7FEBF 		b	sd_mmc_is_write_protected
 394              	.LVL28:
 395              	.LBE25:
 396              	.LBE24:
 397              		.cfi_endproc
 398              	.LFE237:
 399              		.size	sd_mmc_wr_protect_0, .-sd_mmc_wr_protect_0
 400 0006 00BF     		.section	.text.sd_mmc_wr_protect_1,"ax",%progbits
 401              		.align	1
 402              		.p2align 2,,3
 403              		.global	sd_mmc_wr_protect_1
 404              		.syntax unified
 405              		.thumb
 406              		.thumb_func
 407              		.fpu fpv5-d16
 408              		.type	sd_mmc_wr_protect_1, %function
 409              	sd_mmc_wr_protect_1:
 410              	.LFB238:
 145:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_wr_protect(0);
 146:../libraries/Storage/sd_mmc_mem.c **** }
 147:../libraries/Storage/sd_mmc_mem.c **** 
 148:../libraries/Storage/sd_mmc_mem.c **** bool sd_mmc_wr_protect_1(void)
 149:../libraries/Storage/sd_mmc_mem.c **** {
 411              		.loc 1 149 0
ARM GAS  /tmp/ccomqgAQ.s 			page 11


 412              		.cfi_startproc
 413              		@ args = 0, pretend = 0, frame = 0
 414              		@ frame_needed = 0, uses_anonymous_args = 0
 415              		@ link register save eliminated.
 416              	.LVL29:
 417              	.LBB26:
 418              	.LBB27:
 140:../libraries/Storage/sd_mmc_mem.c **** }
 419              		.loc 1 140 0
 420 0000 0120     		movs	r0, #1
 421 0002 FFF7FEBF 		b	sd_mmc_is_write_protected
 422              	.LVL30:
 423              	.LBE27:
 424              	.LBE26:
 425              		.cfi_endproc
 426              	.LFE238:
 427              		.size	sd_mmc_wr_protect_1, .-sd_mmc_wr_protect_1
 428 0006 00BF     		.section	.text.sd_mmc_removal,"ax",%progbits
 429              		.align	1
 430              		.p2align 2,,3
 431              		.global	sd_mmc_removal
 432              		.syntax unified
 433              		.thumb
 434              		.thumb_func
 435              		.fpu fpv5-d16
 436              		.type	sd_mmc_removal, %function
 437              	sd_mmc_removal:
 438              	.LFB239:
 150:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_wr_protect(1);
 151:../libraries/Storage/sd_mmc_mem.c **** }
 152:../libraries/Storage/sd_mmc_mem.c **** 
 153:../libraries/Storage/sd_mmc_mem.c **** bool sd_mmc_removal(uint8_t slot)
 154:../libraries/Storage/sd_mmc_mem.c **** {
 439              		.loc 1 154 0
 440              		.cfi_startproc
 441              		@ args = 0, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443              		@ link register save eliminated.
 444              	.LVL31:
 155:../libraries/Storage/sd_mmc_mem.c **** 	UNUSED(slot);
 156:../libraries/Storage/sd_mmc_mem.c **** 	return true;
 157:../libraries/Storage/sd_mmc_mem.c **** }
 445              		.loc 1 157 0
 446 0000 0120     		movs	r0, #1
 447              	.LVL32:
 448 0002 7047     		bx	lr
 449              		.cfi_endproc
 450              	.LFE239:
 451              		.size	sd_mmc_removal, .-sd_mmc_removal
 452              		.section	.text.sd_mmc_removal_0,"ax",%progbits
 453              		.align	1
 454              		.p2align 2,,3
 455              		.global	sd_mmc_removal_0
 456              		.syntax unified
 457              		.thumb
 458              		.thumb_func
 459              		.fpu fpv5-d16
ARM GAS  /tmp/ccomqgAQ.s 			page 12


 460              		.type	sd_mmc_removal_0, %function
 461              	sd_mmc_removal_0:
 462              	.LFB252:
 463              		.cfi_startproc
 464              		@ args = 0, pretend = 0, frame = 0
 465              		@ frame_needed = 0, uses_anonymous_args = 0
 466              		@ link register save eliminated.
 467 0000 0120     		movs	r0, #1
 468 0002 7047     		bx	lr
 469              		.cfi_endproc
 470              	.LFE252:
 471              		.size	sd_mmc_removal_0, .-sd_mmc_removal_0
 472              		.section	.text.sd_mmc_removal_1,"ax",%progbits
 473              		.align	1
 474              		.p2align 2,,3
 475              		.global	sd_mmc_removal_1
 476              		.syntax unified
 477              		.thumb
 478              		.thumb_func
 479              		.fpu fpv5-d16
 480              		.type	sd_mmc_removal_1, %function
 481              	sd_mmc_removal_1:
 482              	.LFB241:
 158:../libraries/Storage/sd_mmc_mem.c **** 
 159:../libraries/Storage/sd_mmc_mem.c **** bool sd_mmc_removal_0(void)
 160:../libraries/Storage/sd_mmc_mem.c **** {
 161:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_removal(0);
 162:../libraries/Storage/sd_mmc_mem.c **** }
 163:../libraries/Storage/sd_mmc_mem.c **** 
 164:../libraries/Storage/sd_mmc_mem.c **** bool sd_mmc_removal_1(void)
 165:../libraries/Storage/sd_mmc_mem.c **** {
 483              		.loc 1 165 0
 484              		.cfi_startproc
 485              		@ args = 0, pretend = 0, frame = 0
 486              		@ frame_needed = 0, uses_anonymous_args = 0
 487              		@ link register save eliminated.
 166:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_removal(1);
 167:../libraries/Storage/sd_mmc_mem.c **** }
 488              		.loc 1 167 0
 489 0000 0120     		movs	r0, #1
 490 0002 7047     		bx	lr
 491              		.cfi_endproc
 492              	.LFE241:
 493              		.size	sd_mmc_removal_1, .-sd_mmc_removal_1
 494              		.section	.text.sd_mmc_mem_2_ram,"ax",%progbits
 495              		.align	1
 496              		.p2align 2,,3
 497              		.global	sd_mmc_mem_2_ram
 498              		.syntax unified
 499              		.thumb
 500              		.thumb_func
 501              		.fpu fpv5-d16
 502              		.type	sd_mmc_mem_2_ram, %function
 503              	sd_mmc_mem_2_ram:
 504              	.LFB242:
 168:../libraries/Storage/sd_mmc_mem.c **** //! @}
 169:../libraries/Storage/sd_mmc_mem.c **** 
ARM GAS  /tmp/ccomqgAQ.s 			page 13


 170:../libraries/Storage/sd_mmc_mem.c **** #if ACCESS_USB == true
 171:../libraries/Storage/sd_mmc_mem.c **** /**
 172:../libraries/Storage/sd_mmc_mem.c ****  * \name MEM <-> USB Interface
 173:../libraries/Storage/sd_mmc_mem.c ****  * @{
 174:../libraries/Storage/sd_mmc_mem.c ****  */
 175:../libraries/Storage/sd_mmc_mem.c **** 
 176:../libraries/Storage/sd_mmc_mem.c **** #include "udi_msc.h"
 177:../libraries/Storage/sd_mmc_mem.c **** 
 178:../libraries/Storage/sd_mmc_mem.c **** COMPILER_WORD_ALIGNED
 179:../libraries/Storage/sd_mmc_mem.c **** uint8_t sector_buf_0[SD_MMC_BLOCK_SIZE];
 180:../libraries/Storage/sd_mmc_mem.c **** 
 181:../libraries/Storage/sd_mmc_mem.c **** COMPILER_WORD_ALIGNED
 182:../libraries/Storage/sd_mmc_mem.c **** uint8_t sector_buf_1[SD_MMC_BLOCK_SIZE];
 183:../libraries/Storage/sd_mmc_mem.c **** 
 184:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_usb_read_10(uint8_t slot, uint32_t addr, uint16_t nb_sector)
 185:../libraries/Storage/sd_mmc_mem.c **** {
 186:../libraries/Storage/sd_mmc_mem.c **** 	bool b_first_step = true;
 187:../libraries/Storage/sd_mmc_mem.c **** 	uint16_t nb_step;
 188:../libraries/Storage/sd_mmc_mem.c **** 
 189:../libraries/Storage/sd_mmc_mem.c **** 	switch (sd_mmc_init_read_blocks(slot, addr, nb_sector)) {
 190:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_OK:
 191:../libraries/Storage/sd_mmc_mem.c **** 		break;
 192:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_ERR_NO_CARD:
 193:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_NO_PRESENT;
 194:../libraries/Storage/sd_mmc_mem.c **** 	default:
 195:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
 196:../libraries/Storage/sd_mmc_mem.c **** 	}
 197:../libraries/Storage/sd_mmc_mem.c **** 	// Pipeline the 2 transfer in order to speed-up the performances
 198:../libraries/Storage/sd_mmc_mem.c **** 	nb_step = nb_sector + 1;
 199:../libraries/Storage/sd_mmc_mem.c **** 	while (nb_step--) {
 200:../libraries/Storage/sd_mmc_mem.c **** 		if (nb_step) { // Skip last step
 201:../libraries/Storage/sd_mmc_mem.c **** 			// MCI -> RAM
 202:../libraries/Storage/sd_mmc_mem.c **** 			if (SD_MMC_OK != sd_mmc_start_read_blocks(((nb_step % 2) == 0) ?
 203:../libraries/Storage/sd_mmc_mem.c **** 					sector_buf_0 : sector_buf_1, 1)) {
 204:../libraries/Storage/sd_mmc_mem.c **** 				return CTRL_FAIL;
 205:../libraries/Storage/sd_mmc_mem.c **** 			}
 206:../libraries/Storage/sd_mmc_mem.c **** 		}
 207:../libraries/Storage/sd_mmc_mem.c **** 		if (!b_first_step) { // Skip first step
 208:../libraries/Storage/sd_mmc_mem.c **** 			// RAM -> USB
 209:../libraries/Storage/sd_mmc_mem.c **** 			if (!udi_msc_trans_block(true,
 210:../libraries/Storage/sd_mmc_mem.c **** 					((nb_step % 2) == 0) ?
 211:../libraries/Storage/sd_mmc_mem.c **** 					sector_buf_1 : sector_buf_0,
 212:../libraries/Storage/sd_mmc_mem.c **** 					SD_MMC_BLOCK_SIZE,
 213:../libraries/Storage/sd_mmc_mem.c **** 					NULL)) {
 214:../libraries/Storage/sd_mmc_mem.c **** 				if (!b_first_step) {
 215:../libraries/Storage/sd_mmc_mem.c **** 					sd_mmc_wait_end_of_read_blocks(true);
 216:../libraries/Storage/sd_mmc_mem.c **** 				}
 217:../libraries/Storage/sd_mmc_mem.c **** 				return CTRL_FAIL;
 218:../libraries/Storage/sd_mmc_mem.c **** 			}
 219:../libraries/Storage/sd_mmc_mem.c **** 		} else {
 220:../libraries/Storage/sd_mmc_mem.c **** 			b_first_step = false;
 221:../libraries/Storage/sd_mmc_mem.c **** 		}
 222:../libraries/Storage/sd_mmc_mem.c **** 		if (nb_step) { // Skip last step
 223:../libraries/Storage/sd_mmc_mem.c **** 			if (SD_MMC_OK != sd_mmc_wait_end_of_read_blocks(false)) {
 224:../libraries/Storage/sd_mmc_mem.c **** 				return CTRL_FAIL;
 225:../libraries/Storage/sd_mmc_mem.c **** 			}
 226:../libraries/Storage/sd_mmc_mem.c **** 		}
ARM GAS  /tmp/ccomqgAQ.s 			page 14


 227:../libraries/Storage/sd_mmc_mem.c **** 		b_first_step = false;
 228:../libraries/Storage/sd_mmc_mem.c **** 	}
 229:../libraries/Storage/sd_mmc_mem.c **** 	return CTRL_GOOD;
 230:../libraries/Storage/sd_mmc_mem.c **** }
 231:../libraries/Storage/sd_mmc_mem.c **** 
 232:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_usb_read_10_0(uint32_t addr, uint16_t nb_sector)
 233:../libraries/Storage/sd_mmc_mem.c **** {
 234:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_usb_read_10(0, addr, nb_sector);
 235:../libraries/Storage/sd_mmc_mem.c **** }
 236:../libraries/Storage/sd_mmc_mem.c **** 
 237:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_usb_read_10_1(uint32_t addr, uint16_t nb_sector)
 238:../libraries/Storage/sd_mmc_mem.c **** {
 239:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_usb_read_10(1, addr, nb_sector);
 240:../libraries/Storage/sd_mmc_mem.c **** }
 241:../libraries/Storage/sd_mmc_mem.c **** 
 242:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_usb_write_10(uint8_t slot, uint32_t addr, uint16_t nb_sector)
 243:../libraries/Storage/sd_mmc_mem.c **** {
 244:../libraries/Storage/sd_mmc_mem.c **** 	bool b_first_step = true;
 245:../libraries/Storage/sd_mmc_mem.c **** 	uint16_t nb_step;
 246:../libraries/Storage/sd_mmc_mem.c **** 
 247:../libraries/Storage/sd_mmc_mem.c **** 	switch (sd_mmc_init_write_blocks(slot, addr, nb_sector)) {
 248:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_OK:
 249:../libraries/Storage/sd_mmc_mem.c **** 		break;
 250:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_ERR_NO_CARD:
 251:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_NO_PRESENT;
 252:../libraries/Storage/sd_mmc_mem.c **** 	default:
 253:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
 254:../libraries/Storage/sd_mmc_mem.c **** 	}
 255:../libraries/Storage/sd_mmc_mem.c **** 	// Pipeline the 2 transfer in order to speed-up the performances
 256:../libraries/Storage/sd_mmc_mem.c **** 	nb_step = nb_sector + 1;
 257:../libraries/Storage/sd_mmc_mem.c **** 	while (nb_step--) {
 258:../libraries/Storage/sd_mmc_mem.c **** 		if (!b_first_step) { // Skip first step
 259:../libraries/Storage/sd_mmc_mem.c **** 			// RAM -> MCI
 260:../libraries/Storage/sd_mmc_mem.c **** 			if (SD_MMC_OK != sd_mmc_start_write_blocks(((nb_step % 2) == 0) ?
 261:../libraries/Storage/sd_mmc_mem.c **** 					sector_buf_0 : sector_buf_1, 1)) {
 262:../libraries/Storage/sd_mmc_mem.c **** 				return CTRL_FAIL;
 263:../libraries/Storage/sd_mmc_mem.c **** 			}
 264:../libraries/Storage/sd_mmc_mem.c **** 		}
 265:../libraries/Storage/sd_mmc_mem.c **** 		if (nb_step) { // Skip last step
 266:../libraries/Storage/sd_mmc_mem.c **** 			// USB -> RAM
 267:../libraries/Storage/sd_mmc_mem.c **** 			if (!udi_msc_trans_block(false,
 268:../libraries/Storage/sd_mmc_mem.c **** 					((nb_step % 2) == 0) ?
 269:../libraries/Storage/sd_mmc_mem.c **** 					sector_buf_1 : sector_buf_0,
 270:../libraries/Storage/sd_mmc_mem.c **** 					SD_MMC_BLOCK_SIZE,
 271:../libraries/Storage/sd_mmc_mem.c **** 					NULL)) {
 272:../libraries/Storage/sd_mmc_mem.c **** 				if (!b_first_step) {
 273:../libraries/Storage/sd_mmc_mem.c **** 					sd_mmc_wait_end_of_write_blocks(true);
 274:../libraries/Storage/sd_mmc_mem.c **** 				}
 275:../libraries/Storage/sd_mmc_mem.c **** 				return CTRL_FAIL;
 276:../libraries/Storage/sd_mmc_mem.c **** 			}
 277:../libraries/Storage/sd_mmc_mem.c **** 		}
 278:../libraries/Storage/sd_mmc_mem.c **** 		if (!b_first_step) { // Skip first step
 279:../libraries/Storage/sd_mmc_mem.c **** 			if (SD_MMC_OK != sd_mmc_wait_end_of_write_blocks(false)) {
 280:../libraries/Storage/sd_mmc_mem.c **** 				return CTRL_FAIL;
 281:../libraries/Storage/sd_mmc_mem.c **** 			}
 282:../libraries/Storage/sd_mmc_mem.c **** 		} else {
 283:../libraries/Storage/sd_mmc_mem.c **** 			b_first_step = false;
ARM GAS  /tmp/ccomqgAQ.s 			page 15


 284:../libraries/Storage/sd_mmc_mem.c **** 		}
 285:../libraries/Storage/sd_mmc_mem.c **** 	}
 286:../libraries/Storage/sd_mmc_mem.c **** 	return CTRL_GOOD;
 287:../libraries/Storage/sd_mmc_mem.c **** }
 288:../libraries/Storage/sd_mmc_mem.c **** 
 289:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_usb_write_10_0(uint32_t addr, uint16_t nb_sector)
 290:../libraries/Storage/sd_mmc_mem.c **** {
 291:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_usb_write_10(0, addr, nb_sector);
 292:../libraries/Storage/sd_mmc_mem.c **** }
 293:../libraries/Storage/sd_mmc_mem.c **** 
 294:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_usb_write_10_1(uint32_t addr, uint16_t nb_sector)
 295:../libraries/Storage/sd_mmc_mem.c **** {
 296:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_usb_write_10(1, addr, nb_sector);
 297:../libraries/Storage/sd_mmc_mem.c **** }
 298:../libraries/Storage/sd_mmc_mem.c **** //! @}
 299:../libraries/Storage/sd_mmc_mem.c **** #endif // ACCESS_USB == true
 300:../libraries/Storage/sd_mmc_mem.c **** 
 301:../libraries/Storage/sd_mmc_mem.c **** 
 302:../libraries/Storage/sd_mmc_mem.c **** #if ACCESS_MEM_TO_RAM == true
 303:../libraries/Storage/sd_mmc_mem.c **** /**
 304:../libraries/Storage/sd_mmc_mem.c ****  * \name MEM <-> RAM Interface
 305:../libraries/Storage/sd_mmc_mem.c ****  * @{
 306:../libraries/Storage/sd_mmc_mem.c ****  */
 307:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_mem_2_ram(uint8_t slot, uint32_t addr, void *ram, uint32_t numBlocks)
 308:../libraries/Storage/sd_mmc_mem.c **** {
 505              		.loc 1 308 0
 506              		.cfi_startproc
 507              		@ args = 0, pretend = 0, frame = 0
 508              		@ frame_needed = 0, uses_anonymous_args = 0
 509              	.LVL33:
 510 0000 38B5     		push	{r3, r4, r5, lr}
 511              		.cfi_def_cfa_offset 16
 512              		.cfi_offset 3, -16
 513              		.cfi_offset 4, -12
 514              		.cfi_offset 5, -8
 515              		.cfi_offset 14, -4
 309:../libraries/Storage/sd_mmc_mem.c **** 	switch (sd_mmc_init_read_blocks(slot, addr, numBlocks)) {
 516              		.loc 1 309 0
 517 0002 9CB2     		uxth	r4, r3
 308:../libraries/Storage/sd_mmc_mem.c **** 	switch (sd_mmc_init_read_blocks(slot, addr, numBlocks)) {
 518              		.loc 1 308 0
 519 0004 1546     		mov	r5, r2
 520              		.loc 1 309 0
 521 0006 2246     		mov	r2, r4
 522              	.LVL34:
 523 0008 FFF7FEFF 		bl	sd_mmc_init_read_blocks
 524              	.LVL35:
 525 000c 20B1     		cbz	r0, .L38
 526 000e 0228     		cmp	r0, #2
 310:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_OK:
 311:../libraries/Storage/sd_mmc_mem.c **** 		break;
 312:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_ERR_NO_CARD:
 313:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_NO_PRESENT;
 314:../libraries/Storage/sd_mmc_mem.c **** 	default:
 315:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
 527              		.loc 1 315 0
 528 0010 0CBF     		ite	eq
ARM GAS  /tmp/ccomqgAQ.s 			page 16


 529 0012 0220     		moveq	r0, #2
 530 0014 0120     		movne	r0, #1
 531 0016 38BD     		pop	{r3, r4, r5, pc}
 532              	.LVL36:
 533              	.L38:
 316:../libraries/Storage/sd_mmc_mem.c **** 	}
 317:../libraries/Storage/sd_mmc_mem.c **** 	if (SD_MMC_OK != sd_mmc_start_read_blocks(ram, numBlocks)) {
 534              		.loc 1 317 0
 535 0018 2146     		mov	r1, r4
 536 001a 2846     		mov	r0, r5
 537 001c FFF7FEFF 		bl	sd_mmc_start_read_blocks
 538              	.LVL37:
 539 0020 08B1     		cbz	r0, .L43
 318:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
 540              		.loc 1 318 0
 541 0022 0120     		movs	r0, #1
 319:../libraries/Storage/sd_mmc_mem.c **** 	}
 320:../libraries/Storage/sd_mmc_mem.c **** 	if (SD_MMC_OK != sd_mmc_wait_end_of_read_blocks(false)) {
 321:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
 322:../libraries/Storage/sd_mmc_mem.c **** 	}
 323:../libraries/Storage/sd_mmc_mem.c **** 	return CTRL_GOOD;
 324:../libraries/Storage/sd_mmc_mem.c **** }
 542              		.loc 1 324 0
 543 0024 38BD     		pop	{r3, r4, r5, pc}
 544              	.LVL38:
 545              	.L43:
 546              	.LBB30:
 547              	.LBB31:
 320:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
 548              		.loc 1 320 0
 549 0026 FFF7FEFF 		bl	sd_mmc_wait_end_of_read_blocks
 550              	.LVL39:
 551              	.LBE31:
 552              	.LBE30:
 313:../libraries/Storage/sd_mmc_mem.c **** 	default:
 553              		.loc 1 313 0
 554 002a 0030     		adds	r0, r0, #0
 555 002c 18BF     		it	ne
 556 002e 0120     		movne	r0, #1
 557 0030 38BD     		pop	{r3, r4, r5, pc}
 558              		.cfi_endproc
 559              	.LFE242:
 560              		.size	sd_mmc_mem_2_ram, .-sd_mmc_mem_2_ram
 561 0032 00BF     		.section	.text.sd_mmc_mem_2_ram_0,"ax",%progbits
 562              		.align	1
 563              		.p2align 2,,3
 564              		.global	sd_mmc_mem_2_ram_0
 565              		.syntax unified
 566              		.thumb
 567              		.thumb_func
 568              		.fpu fpv5-d16
 569              		.type	sd_mmc_mem_2_ram_0, %function
 570              	sd_mmc_mem_2_ram_0:
 571              	.LFB243:
 325:../libraries/Storage/sd_mmc_mem.c **** 
 326:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_mem_2_ram_0(uint32_t addr, void *ram, uint32_t numBlocks)
 327:../libraries/Storage/sd_mmc_mem.c **** {
ARM GAS  /tmp/ccomqgAQ.s 			page 17


 572              		.loc 1 327 0
 573              		.cfi_startproc
 574              		@ args = 0, pretend = 0, frame = 0
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576              		@ link register save eliminated.
 577              	.LVL40:
 328:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_mem_2_ram(0, addr, ram, numBlocks);
 578              		.loc 1 328 0
 579 0000 1346     		mov	r3, r2
 580 0002 0A46     		mov	r2, r1
 581              	.LVL41:
 582 0004 0146     		mov	r1, r0
 583              	.LVL42:
 584 0006 0020     		movs	r0, #0
 585              	.LVL43:
 586 0008 FFF7FEBF 		b	sd_mmc_mem_2_ram
 587              	.LVL44:
 588              		.cfi_endproc
 589              	.LFE243:
 590              		.size	sd_mmc_mem_2_ram_0, .-sd_mmc_mem_2_ram_0
 591              		.section	.text.sd_mmc_mem_2_ram_1,"ax",%progbits
 592              		.align	1
 593              		.p2align 2,,3
 594              		.global	sd_mmc_mem_2_ram_1
 595              		.syntax unified
 596              		.thumb
 597              		.thumb_func
 598              		.fpu fpv5-d16
 599              		.type	sd_mmc_mem_2_ram_1, %function
 600              	sd_mmc_mem_2_ram_1:
 601              	.LFB244:
 329:../libraries/Storage/sd_mmc_mem.c **** }
 330:../libraries/Storage/sd_mmc_mem.c **** 
 331:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_mem_2_ram_1(uint32_t addr, void *ram, uint32_t numBlocks)
 332:../libraries/Storage/sd_mmc_mem.c **** {
 602              		.loc 1 332 0
 603              		.cfi_startproc
 604              		@ args = 0, pretend = 0, frame = 0
 605              		@ frame_needed = 0, uses_anonymous_args = 0
 606              		@ link register save eliminated.
 607              	.LVL45:
 333:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_mem_2_ram(1, addr, ram, numBlocks);
 608              		.loc 1 333 0
 609 0000 1346     		mov	r3, r2
 610 0002 0A46     		mov	r2, r1
 611              	.LVL46:
 612 0004 0146     		mov	r1, r0
 613              	.LVL47:
 614 0006 0120     		movs	r0, #1
 615              	.LVL48:
 616 0008 FFF7FEBF 		b	sd_mmc_mem_2_ram
 617              	.LVL49:
 618              		.cfi_endproc
 619              	.LFE244:
 620              		.size	sd_mmc_mem_2_ram_1, .-sd_mmc_mem_2_ram_1
 621              		.section	.text.sd_mmc_ram_2_mem,"ax",%progbits
 622              		.align	1
ARM GAS  /tmp/ccomqgAQ.s 			page 18


 623              		.p2align 2,,3
 624              		.global	sd_mmc_ram_2_mem
 625              		.syntax unified
 626              		.thumb
 627              		.thumb_func
 628              		.fpu fpv5-d16
 629              		.type	sd_mmc_ram_2_mem, %function
 630              	sd_mmc_ram_2_mem:
 631              	.LFB245:
 334:../libraries/Storage/sd_mmc_mem.c **** }
 335:../libraries/Storage/sd_mmc_mem.c **** 
 336:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_ram_2_mem(uint8_t slot, uint32_t addr, const void *ram, uint32_t numBlocks)
 337:../libraries/Storage/sd_mmc_mem.c **** {
 632              		.loc 1 337 0
 633              		.cfi_startproc
 634              		@ args = 0, pretend = 0, frame = 0
 635              		@ frame_needed = 0, uses_anonymous_args = 0
 636              	.LVL50:
 637 0000 38B5     		push	{r3, r4, r5, lr}
 638              		.cfi_def_cfa_offset 16
 639              		.cfi_offset 3, -16
 640              		.cfi_offset 4, -12
 641              		.cfi_offset 5, -8
 642              		.cfi_offset 14, -4
 338:../libraries/Storage/sd_mmc_mem.c **** 	switch (sd_mmc_init_write_blocks(slot, addr, numBlocks)) {
 643              		.loc 1 338 0
 644 0002 9CB2     		uxth	r4, r3
 337:../libraries/Storage/sd_mmc_mem.c **** 	switch (sd_mmc_init_write_blocks(slot, addr, numBlocks)) {
 645              		.loc 1 337 0
 646 0004 1546     		mov	r5, r2
 647              		.loc 1 338 0
 648 0006 2246     		mov	r2, r4
 649              	.LVL51:
 650 0008 FFF7FEFF 		bl	sd_mmc_init_write_blocks
 651              	.LVL52:
 652 000c 20B1     		cbz	r0, .L48
 653 000e 0228     		cmp	r0, #2
 339:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_OK:
 340:../libraries/Storage/sd_mmc_mem.c **** 		break;
 341:../libraries/Storage/sd_mmc_mem.c **** 	case SD_MMC_ERR_NO_CARD:
 342:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_NO_PRESENT;
 343:../libraries/Storage/sd_mmc_mem.c **** 	default:
 344:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
 654              		.loc 1 344 0
 655 0010 0CBF     		ite	eq
 656 0012 0220     		moveq	r0, #2
 657 0014 0120     		movne	r0, #1
 658 0016 38BD     		pop	{r3, r4, r5, pc}
 659              	.LVL53:
 660              	.L48:
 345:../libraries/Storage/sd_mmc_mem.c **** 	}
 346:../libraries/Storage/sd_mmc_mem.c **** 	if (SD_MMC_OK != sd_mmc_start_write_blocks(ram, numBlocks)) {
 661              		.loc 1 346 0
 662 0018 2146     		mov	r1, r4
 663 001a 2846     		mov	r0, r5
 664 001c FFF7FEFF 		bl	sd_mmc_start_write_blocks
 665              	.LVL54:
ARM GAS  /tmp/ccomqgAQ.s 			page 19


 666 0020 08B1     		cbz	r0, .L53
 347:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
 667              		.loc 1 347 0
 668 0022 0120     		movs	r0, #1
 348:../libraries/Storage/sd_mmc_mem.c **** 	}
 349:../libraries/Storage/sd_mmc_mem.c **** 	if (SD_MMC_OK != sd_mmc_wait_end_of_write_blocks(false)) {
 350:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
 351:../libraries/Storage/sd_mmc_mem.c **** 	}
 352:../libraries/Storage/sd_mmc_mem.c **** 	return CTRL_GOOD;
 353:../libraries/Storage/sd_mmc_mem.c **** }
 669              		.loc 1 353 0
 670 0024 38BD     		pop	{r3, r4, r5, pc}
 671              	.LVL55:
 672              	.L53:
 673              	.LBB34:
 674              	.LBB35:
 349:../libraries/Storage/sd_mmc_mem.c **** 		return CTRL_FAIL;
 675              		.loc 1 349 0
 676 0026 FFF7FEFF 		bl	sd_mmc_wait_end_of_write_blocks
 677              	.LVL56:
 678              	.LBE35:
 679              	.LBE34:
 342:../libraries/Storage/sd_mmc_mem.c **** 	default:
 680              		.loc 1 342 0
 681 002a 0030     		adds	r0, r0, #0
 682 002c 18BF     		it	ne
 683 002e 0120     		movne	r0, #1
 684 0030 38BD     		pop	{r3, r4, r5, pc}
 685              		.cfi_endproc
 686              	.LFE245:
 687              		.size	sd_mmc_ram_2_mem, .-sd_mmc_ram_2_mem
 688 0032 00BF     		.section	.text.sd_mmc_ram_2_mem_0,"ax",%progbits
 689              		.align	1
 690              		.p2align 2,,3
 691              		.global	sd_mmc_ram_2_mem_0
 692              		.syntax unified
 693              		.thumb
 694              		.thumb_func
 695              		.fpu fpv5-d16
 696              		.type	sd_mmc_ram_2_mem_0, %function
 697              	sd_mmc_ram_2_mem_0:
 698              	.LFB246:
 354:../libraries/Storage/sd_mmc_mem.c **** 
 355:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_ram_2_mem_0(uint32_t addr, const void *ram, uint32_t numBlocks)
 356:../libraries/Storage/sd_mmc_mem.c **** {
 699              		.loc 1 356 0
 700              		.cfi_startproc
 701              		@ args = 0, pretend = 0, frame = 0
 702              		@ frame_needed = 0, uses_anonymous_args = 0
 703              		@ link register save eliminated.
 704              	.LVL57:
 357:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_ram_2_mem(0, addr, ram, numBlocks);
 705              		.loc 1 357 0
 706 0000 1346     		mov	r3, r2
 707 0002 0A46     		mov	r2, r1
 708              	.LVL58:
 709 0004 0146     		mov	r1, r0
ARM GAS  /tmp/ccomqgAQ.s 			page 20


 710              	.LVL59:
 711 0006 0020     		movs	r0, #0
 712              	.LVL60:
 713 0008 FFF7FEBF 		b	sd_mmc_ram_2_mem
 714              	.LVL61:
 715              		.cfi_endproc
 716              	.LFE246:
 717              		.size	sd_mmc_ram_2_mem_0, .-sd_mmc_ram_2_mem_0
 718              		.section	.text.sd_mmc_ram_2_mem_1,"ax",%progbits
 719              		.align	1
 720              		.p2align 2,,3
 721              		.global	sd_mmc_ram_2_mem_1
 722              		.syntax unified
 723              		.thumb
 724              		.thumb_func
 725              		.fpu fpv5-d16
 726              		.type	sd_mmc_ram_2_mem_1, %function
 727              	sd_mmc_ram_2_mem_1:
 728              	.LFB247:
 358:../libraries/Storage/sd_mmc_mem.c **** }
 359:../libraries/Storage/sd_mmc_mem.c **** 
 360:../libraries/Storage/sd_mmc_mem.c **** Ctrl_status sd_mmc_ram_2_mem_1(uint32_t addr, const void *ram, uint32_t numBlocks)
 361:../libraries/Storage/sd_mmc_mem.c **** {
 729              		.loc 1 361 0
 730              		.cfi_startproc
 731              		@ args = 0, pretend = 0, frame = 0
 732              		@ frame_needed = 0, uses_anonymous_args = 0
 733              		@ link register save eliminated.
 734              	.LVL62:
 362:../libraries/Storage/sd_mmc_mem.c **** 	return sd_mmc_ram_2_mem(1, addr, ram, numBlocks);
 735              		.loc 1 362 0
 736 0000 1346     		mov	r3, r2
 737 0002 0A46     		mov	r2, r1
 738              	.LVL63:
 739 0004 0146     		mov	r1, r0
 740              	.LVL64:
 741 0006 0120     		movs	r0, #1
 742              	.LVL65:
 743 0008 FFF7FEBF 		b	sd_mmc_ram_2_mem
 744              	.LVL66:
 745              		.cfi_endproc
 746              	.LFE247:
 747              		.size	sd_mmc_ram_2_mem_1, .-sd_mmc_ram_2_mem_1
 748              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 749              		.align	2
 750              		.type	cpu_irq_critical_section_counter, %object
 751              		.size	cpu_irq_critical_section_counter, 4
 752              	cpu_irq_critical_section_counter:
 753 0000 00000000 		.space	4
 754              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 755              		.type	cpu_irq_prev_interrupt_state, %object
 756              		.size	cpu_irq_prev_interrupt_state, 1
 757              	cpu_irq_prev_interrupt_state:
 758 0000 00       		.space	1
 759              		.section	.bss.sd_mmc_ejected,"aw",%nobits
 760              		.align	2
 761              		.set	.LANCHOR0,. + 0
ARM GAS  /tmp/ccomqgAQ.s 			page 21


 762              		.type	sd_mmc_ejected, %object
 763              		.size	sd_mmc_ejected, 2
 764              	sd_mmc_ejected:
 765 0000 0000     		.space	2
 766              		.text
 767              	.Letext0:
 768              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 769              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 770              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 771              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 772              		.file 6 "/usr/include/newlib/sys/lock.h"
 773              		.file 7 "/usr/include/newlib/sys/_types.h"
 774              		.file 8 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 775              		.file 9 "/usr/include/newlib/sys/reent.h"
 776              		.file 10 "/usr/include/newlib/stdlib.h"
 777              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 778              		.file 12 "/usr/include/newlib/math.h"
 779              		.file 13 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/Core.h"
 780              		.file 14 "/usr/include/newlib/time.h"
 781              		.file 15 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 782              		.file 16 "../libraries/Storage/ctrl_access.h"
 783              		.file 17 "../libraries/Storage/sd_mmc.h"
 784              		.section	.debug_info,"",%progbits
 785              	.Ldebug_info0:
 786 0000 4D120000 		.4byte	0x124d
 787 0004 0400     		.2byte	0x4
 788 0006 00000000 		.4byte	.Ldebug_abbrev0
 789 000a 04       		.byte	0x4
 790 000b 01       		.uleb128 0x1
 791 000c 72050000 		.4byte	.LASF198
 792 0010 0C       		.byte	0xc
 793 0011 0D080000 		.4byte	.LASF199
 794 0015 A3040000 		.4byte	.LASF200
 795 0019 18000000 		.4byte	.Ldebug_ranges0+0x18
 796 001d 00000000 		.4byte	0
 797 0021 00000000 		.4byte	.Ldebug_line0
 798 0025 02       		.uleb128 0x2
 799 0026 04       		.byte	0x4
 800 0027 05       		.byte	0x5
 801 0028 696E7400 		.ascii	"int\000"
 802 002c 03       		.uleb128 0x3
 803 002d 04       		.byte	0x4
 804 002e 07       		.byte	0x7
 805 002f 56080000 		.4byte	.LASF0
 806 0033 03       		.uleb128 0x3
 807 0034 01       		.byte	0x1
 808 0035 06       		.byte	0x6
 809 0036 5B010000 		.4byte	.LASF1
 810 003a 04       		.uleb128 0x4
 811 003b 65000000 		.4byte	.LASF5
 812 003f 02       		.byte	0x2
 813 0040 1D       		.byte	0x1d
 814 0041 45000000 		.4byte	0x45
 815 0045 03       		.uleb128 0x3
 816 0046 01       		.byte	0x1
 817 0047 08       		.byte	0x8
 818 0048 AC080000 		.4byte	.LASF2
ARM GAS  /tmp/ccomqgAQ.s 			page 22


 819 004c 03       		.uleb128 0x3
 820 004d 02       		.byte	0x2
 821 004e 05       		.byte	0x5
 822 004f 08000000 		.4byte	.LASF3
 823 0053 03       		.uleb128 0x3
 824 0054 02       		.byte	0x2
 825 0055 07       		.byte	0x7
 826 0056 0F040000 		.4byte	.LASF4
 827 005a 04       		.uleb128 0x4
 828 005b 6F080000 		.4byte	.LASF6
 829 005f 02       		.byte	0x2
 830 0060 3F       		.byte	0x3f
 831 0061 65000000 		.4byte	0x65
 832 0065 03       		.uleb128 0x3
 833 0066 04       		.byte	0x4
 834 0067 05       		.byte	0x5
 835 0068 CC010000 		.4byte	.LASF7
 836 006c 04       		.uleb128 0x4
 837 006d AA020000 		.4byte	.LASF8
 838 0071 02       		.byte	0x2
 839 0072 41       		.byte	0x41
 840 0073 77000000 		.4byte	0x77
 841 0077 03       		.uleb128 0x3
 842 0078 04       		.byte	0x4
 843 0079 07       		.byte	0x7
 844 007a 99030000 		.4byte	.LASF9
 845 007e 03       		.uleb128 0x3
 846 007f 08       		.byte	0x8
 847 0080 05       		.byte	0x5
 848 0081 31020000 		.4byte	.LASF10
 849 0085 03       		.uleb128 0x3
 850 0086 08       		.byte	0x8
 851 0087 07       		.byte	0x7
 852 0088 A2000000 		.4byte	.LASF11
 853 008c 04       		.uleb128 0x4
 854 008d 8D090000 		.4byte	.LASF12
 855 0091 03       		.byte	0x3
 856 0092 18       		.byte	0x18
 857 0093 3A000000 		.4byte	0x3a
 858 0097 05       		.uleb128 0x5
 859 0098 8C000000 		.4byte	0x8c
 860 009c 04       		.uleb128 0x4
 861 009d A9060000 		.4byte	.LASF13
 862 00a1 03       		.byte	0x3
 863 00a2 2C       		.byte	0x2c
 864 00a3 5A000000 		.4byte	0x5a
 865 00a7 06       		.uleb128 0x6
 866 00a8 9C000000 		.4byte	0x9c
 867 00ac 04       		.uleb128 0x4
 868 00ad C9070000 		.4byte	.LASF14
 869 00b1 03       		.byte	0x3
 870 00b2 30       		.byte	0x30
 871 00b3 6C000000 		.4byte	0x6c
 872 00b7 06       		.uleb128 0x6
 873 00b8 AC000000 		.4byte	0xac
 874 00bc 05       		.uleb128 0x5
 875 00bd AC000000 		.4byte	0xac
ARM GAS  /tmp/ccomqgAQ.s 			page 23


 876 00c1 07       		.uleb128 0x7
 877 00c2 04       		.byte	0x4
 878 00c3 03       		.uleb128 0x3
 879 00c4 04       		.byte	0x4
 880 00c5 07       		.byte	0x7
 881 00c6 54050000 		.4byte	.LASF15
 882 00ca 08       		.uleb128 0x8
 883 00cb D5010000 		.4byte	.LASF16
 884 00cf 04       		.byte	0x4
 885 00d0 6508     		.2byte	0x865
 886 00d2 A7000000 		.4byte	0xa7
 887 00d6 09       		.uleb128 0x9
 888 00d7 4D030000 		.4byte	.LASF17
 889 00db 05       		.byte	0x5
 890 00dc 3A       		.byte	0x3a
 891 00dd AC000000 		.4byte	0xac
 892 00e1 04       		.uleb128 0x4
 893 00e2 8B060000 		.4byte	.LASF18
 894 00e6 06       		.byte	0x6
 895 00e7 07       		.byte	0x7
 896 00e8 25000000 		.4byte	0x25
 897 00ec 04       		.uleb128 0x4
 898 00ed 53060000 		.4byte	.LASF19
 899 00f1 07       		.byte	0x7
 900 00f2 2C       		.byte	0x2c
 901 00f3 65000000 		.4byte	0x65
 902 00f7 04       		.uleb128 0x4
 903 00f8 12000000 		.4byte	.LASF20
 904 00fc 07       		.byte	0x7
 905 00fd 72       		.byte	0x72
 906 00fe 65000000 		.4byte	0x65
 907 0102 0A       		.uleb128 0xa
 908 0103 77040000 		.4byte	.LASF21
 909 0107 08       		.byte	0x8
 910 0108 6501     		.2byte	0x165
 911 010a 2C000000 		.4byte	0x2c
 912 010e 0B       		.uleb128 0xb
 913 010f 04       		.byte	0x4
 914 0110 07       		.byte	0x7
 915 0111 A6       		.byte	0xa6
 916 0112 2D010000 		.4byte	0x12d
 917 0116 0C       		.uleb128 0xc
 918 0117 65040000 		.4byte	.LASF22
 919 011b 07       		.byte	0x7
 920 011c A8       		.byte	0xa8
 921 011d 02010000 		.4byte	0x102
 922 0121 0C       		.uleb128 0xc
 923 0122 46030000 		.4byte	.LASF23
 924 0126 07       		.byte	0x7
 925 0127 A9       		.byte	0xa9
 926 0128 2D010000 		.4byte	0x12d
 927 012c 00       		.byte	0
 928 012d 0D       		.uleb128 0xd
 929 012e 45000000 		.4byte	0x45
 930 0132 3D010000 		.4byte	0x13d
 931 0136 0E       		.uleb128 0xe
 932 0137 C3000000 		.4byte	0xc3
ARM GAS  /tmp/ccomqgAQ.s 			page 24


 933 013b 03       		.byte	0x3
 934 013c 00       		.byte	0
 935 013d 0F       		.uleb128 0xf
 936 013e 08       		.byte	0x8
 937 013f 07       		.byte	0x7
 938 0140 A3       		.byte	0xa3
 939 0141 5E010000 		.4byte	0x15e
 940 0145 10       		.uleb128 0x10
 941 0146 C1070000 		.4byte	.LASF24
 942 014a 07       		.byte	0x7
 943 014b A5       		.byte	0xa5
 944 014c 25000000 		.4byte	0x25
 945 0150 00       		.byte	0
 946 0151 10       		.uleb128 0x10
 947 0152 85090000 		.4byte	.LASF25
 948 0156 07       		.byte	0x7
 949 0157 AA       		.byte	0xaa
 950 0158 0E010000 		.4byte	0x10e
 951 015c 04       		.byte	0x4
 952 015d 00       		.byte	0
 953 015e 04       		.uleb128 0x4
 954 015f 37070000 		.4byte	.LASF26
 955 0163 07       		.byte	0x7
 956 0164 AB       		.byte	0xab
 957 0165 3D010000 		.4byte	0x13d
 958 0169 04       		.uleb128 0x4
 959 016a 13060000 		.4byte	.LASF27
 960 016e 07       		.byte	0x7
 961 016f AF       		.byte	0xaf
 962 0170 E1000000 		.4byte	0xe1
 963 0174 04       		.uleb128 0x4
 964 0175 CF080000 		.4byte	.LASF28
 965 0179 09       		.byte	0x9
 966 017a 16       		.byte	0x16
 967 017b 77000000 		.4byte	0x77
 968 017f 11       		.uleb128 0x11
 969 0180 EE020000 		.4byte	.LASF33
 970 0184 18       		.byte	0x18
 971 0185 09       		.byte	0x9
 972 0186 2D       		.byte	0x2d
 973 0187 D2010000 		.4byte	0x1d2
 974 018b 10       		.uleb128 0x10
 975 018c 79080000 		.4byte	.LASF29
 976 0190 09       		.byte	0x9
 977 0191 2F       		.byte	0x2f
 978 0192 D2010000 		.4byte	0x1d2
 979 0196 00       		.byte	0
 980 0197 12       		.uleb128 0x12
 981 0198 5F6B00   		.ascii	"_k\000"
 982 019b 09       		.byte	0x9
 983 019c 30       		.byte	0x30
 984 019d 25000000 		.4byte	0x25
 985 01a1 04       		.byte	0x4
 986 01a2 10       		.uleb128 0x10
 987 01a3 AC070000 		.4byte	.LASF30
 988 01a7 09       		.byte	0x9
 989 01a8 30       		.byte	0x30
ARM GAS  /tmp/ccomqgAQ.s 			page 25


 990 01a9 25000000 		.4byte	0x25
 991 01ad 08       		.byte	0x8
 992 01ae 10       		.uleb128 0x10
 993 01af B5020000 		.4byte	.LASF31
 994 01b3 09       		.byte	0x9
 995 01b4 30       		.byte	0x30
 996 01b5 25000000 		.4byte	0x25
 997 01b9 0C       		.byte	0xc
 998 01ba 10       		.uleb128 0x10
 999 01bb 1B090000 		.4byte	.LASF32
 1000 01bf 09       		.byte	0x9
 1001 01c0 30       		.byte	0x30
 1002 01c1 25000000 		.4byte	0x25
 1003 01c5 10       		.byte	0x10
 1004 01c6 12       		.uleb128 0x12
 1005 01c7 5F7800   		.ascii	"_x\000"
 1006 01ca 09       		.byte	0x9
 1007 01cb 31       		.byte	0x31
 1008 01cc D8010000 		.4byte	0x1d8
 1009 01d0 14       		.byte	0x14
 1010 01d1 00       		.byte	0
 1011 01d2 13       		.uleb128 0x13
 1012 01d3 04       		.byte	0x4
 1013 01d4 7F010000 		.4byte	0x17f
 1014 01d8 0D       		.uleb128 0xd
 1015 01d9 74010000 		.4byte	0x174
 1016 01dd E8010000 		.4byte	0x1e8
 1017 01e1 0E       		.uleb128 0xe
 1018 01e2 C3000000 		.4byte	0xc3
 1019 01e6 00       		.byte	0
 1020 01e7 00       		.byte	0
 1021 01e8 11       		.uleb128 0x11
 1022 01e9 60020000 		.4byte	.LASF34
 1023 01ed 24       		.byte	0x24
 1024 01ee 09       		.byte	0x9
 1025 01ef 35       		.byte	0x35
 1026 01f0 61020000 		.4byte	0x261
 1027 01f4 10       		.uleb128 0x10
 1028 01f5 4B010000 		.4byte	.LASF35
 1029 01f9 09       		.byte	0x9
 1030 01fa 37       		.byte	0x37
 1031 01fb 25000000 		.4byte	0x25
 1032 01ff 00       		.byte	0
 1033 0200 10       		.uleb128 0x10
 1034 0201 3B0A0000 		.4byte	.LASF36
 1035 0205 09       		.byte	0x9
 1036 0206 38       		.byte	0x38
 1037 0207 25000000 		.4byte	0x25
 1038 020b 04       		.byte	0x4
 1039 020c 10       		.uleb128 0x10
 1040 020d D2070000 		.4byte	.LASF37
 1041 0211 09       		.byte	0x9
 1042 0212 39       		.byte	0x39
 1043 0213 25000000 		.4byte	0x25
 1044 0217 08       		.byte	0x8
 1045 0218 10       		.uleb128 0x10
 1046 0219 5C0A0000 		.4byte	.LASF38
ARM GAS  /tmp/ccomqgAQ.s 			page 26


 1047 021d 09       		.byte	0x9
 1048 021e 3A       		.byte	0x3a
 1049 021f 25000000 		.4byte	0x25
 1050 0223 0C       		.byte	0xc
 1051 0224 10       		.uleb128 0x10
 1052 0225 1C060000 		.4byte	.LASF39
 1053 0229 09       		.byte	0x9
 1054 022a 3B       		.byte	0x3b
 1055 022b 25000000 		.4byte	0x25
 1056 022f 10       		.byte	0x10
 1057 0230 10       		.uleb128 0x10
 1058 0231 EE040000 		.4byte	.LASF40
 1059 0235 09       		.byte	0x9
 1060 0236 3C       		.byte	0x3c
 1061 0237 25000000 		.4byte	0x25
 1062 023b 14       		.byte	0x14
 1063 023c 10       		.uleb128 0x10
 1064 023d 54090000 		.4byte	.LASF41
 1065 0241 09       		.byte	0x9
 1066 0242 3D       		.byte	0x3d
 1067 0243 25000000 		.4byte	0x25
 1068 0247 18       		.byte	0x18
 1069 0248 10       		.uleb128 0x10
 1070 0249 0D070000 		.4byte	.LASF42
 1071 024d 09       		.byte	0x9
 1072 024e 3E       		.byte	0x3e
 1073 024f 25000000 		.4byte	0x25
 1074 0253 1C       		.byte	0x1c
 1075 0254 10       		.uleb128 0x10
 1076 0255 210A0000 		.4byte	.LASF43
 1077 0259 09       		.byte	0x9
 1078 025a 3F       		.byte	0x3f
 1079 025b 25000000 		.4byte	0x25
 1080 025f 20       		.byte	0x20
 1081 0260 00       		.byte	0
 1082 0261 14       		.uleb128 0x14
 1083 0262 9D010000 		.4byte	.LASF44
 1084 0266 0801     		.2byte	0x108
 1085 0268 09       		.byte	0x9
 1086 0269 48       		.byte	0x48
 1087 026a A1020000 		.4byte	0x2a1
 1088 026e 10       		.uleb128 0x10
 1089 026f 9D020000 		.4byte	.LASF45
 1090 0273 09       		.byte	0x9
 1091 0274 49       		.byte	0x49
 1092 0275 A1020000 		.4byte	0x2a1
 1093 0279 00       		.byte	0
 1094 027a 10       		.uleb128 0x10
 1095 027b B1060000 		.4byte	.LASF46
 1096 027f 09       		.byte	0x9
 1097 0280 4A       		.byte	0x4a
 1098 0281 A1020000 		.4byte	0x2a1
 1099 0285 80       		.byte	0x80
 1100 0286 15       		.uleb128 0x15
 1101 0287 8C080000 		.4byte	.LASF47
 1102 028b 09       		.byte	0x9
 1103 028c 4C       		.byte	0x4c
ARM GAS  /tmp/ccomqgAQ.s 			page 27


 1104 028d 74010000 		.4byte	0x174
 1105 0291 0001     		.2byte	0x100
 1106 0293 15       		.uleb128 0x15
 1107 0294 00000000 		.4byte	.LASF48
 1108 0298 09       		.byte	0x9
 1109 0299 4F       		.byte	0x4f
 1110 029a 74010000 		.4byte	0x174
 1111 029e 0401     		.2byte	0x104
 1112 02a0 00       		.byte	0
 1113 02a1 0D       		.uleb128 0xd
 1114 02a2 C1000000 		.4byte	0xc1
 1115 02a6 B1020000 		.4byte	0x2b1
 1116 02aa 0E       		.uleb128 0xe
 1117 02ab C3000000 		.4byte	0xc3
 1118 02af 1F       		.byte	0x1f
 1119 02b0 00       		.byte	0
 1120 02b1 14       		.uleb128 0x14
 1121 02b2 36060000 		.4byte	.LASF49
 1122 02b6 9001     		.2byte	0x190
 1123 02b8 09       		.byte	0x9
 1124 02b9 5B       		.byte	0x5b
 1125 02ba EF020000 		.4byte	0x2ef
 1126 02be 10       		.uleb128 0x10
 1127 02bf 79080000 		.4byte	.LASF29
 1128 02c3 09       		.byte	0x9
 1129 02c4 5C       		.byte	0x5c
 1130 02c5 EF020000 		.4byte	0x2ef
 1131 02c9 00       		.byte	0
 1132 02ca 10       		.uleb128 0x10
 1133 02cb 8D070000 		.4byte	.LASF50
 1134 02cf 09       		.byte	0x9
 1135 02d0 5D       		.byte	0x5d
 1136 02d1 25000000 		.4byte	0x25
 1137 02d5 04       		.byte	0x4
 1138 02d6 10       		.uleb128 0x10
 1139 02d7 A5020000 		.4byte	.LASF51
 1140 02db 09       		.byte	0x9
 1141 02dc 5F       		.byte	0x5f
 1142 02dd F5020000 		.4byte	0x2f5
 1143 02e1 08       		.byte	0x8
 1144 02e2 10       		.uleb128 0x10
 1145 02e3 9D010000 		.4byte	.LASF44
 1146 02e7 09       		.byte	0x9
 1147 02e8 60       		.byte	0x60
 1148 02e9 61020000 		.4byte	0x261
 1149 02ed 88       		.byte	0x88
 1150 02ee 00       		.byte	0
 1151 02ef 13       		.uleb128 0x13
 1152 02f0 04       		.byte	0x4
 1153 02f1 B1020000 		.4byte	0x2b1
 1154 02f5 0D       		.uleb128 0xd
 1155 02f6 05030000 		.4byte	0x305
 1156 02fa 05030000 		.4byte	0x305
 1157 02fe 0E       		.uleb128 0xe
 1158 02ff C3000000 		.4byte	0xc3
 1159 0303 1F       		.byte	0x1f
 1160 0304 00       		.byte	0
ARM GAS  /tmp/ccomqgAQ.s 			page 28


 1161 0305 13       		.uleb128 0x13
 1162 0306 04       		.byte	0x4
 1163 0307 0B030000 		.4byte	0x30b
 1164 030b 16       		.uleb128 0x16
 1165 030c 11       		.uleb128 0x11
 1166 030d 17070000 		.4byte	.LASF52
 1167 0311 08       		.byte	0x8
 1168 0312 09       		.byte	0x9
 1169 0313 73       		.byte	0x73
 1170 0314 31030000 		.4byte	0x331
 1171 0318 10       		.uleb128 0x10
 1172 0319 7A010000 		.4byte	.LASF53
 1173 031d 09       		.byte	0x9
 1174 031e 74       		.byte	0x74
 1175 031f 31030000 		.4byte	0x331
 1176 0323 00       		.byte	0
 1177 0324 10       		.uleb128 0x10
 1178 0325 50080000 		.4byte	.LASF54
 1179 0329 09       		.byte	0x9
 1180 032a 75       		.byte	0x75
 1181 032b 25000000 		.4byte	0x25
 1182 032f 04       		.byte	0x4
 1183 0330 00       		.byte	0
 1184 0331 13       		.uleb128 0x13
 1185 0332 04       		.byte	0x4
 1186 0333 45000000 		.4byte	0x45
 1187 0337 11       		.uleb128 0x11
 1188 0338 4F070000 		.4byte	.LASF55
 1189 033c 68       		.byte	0x68
 1190 033d 09       		.byte	0x9
 1191 033e B3       		.byte	0xb3
 1192 033f 61040000 		.4byte	0x461
 1193 0343 12       		.uleb128 0x12
 1194 0344 5F7000   		.ascii	"_p\000"
 1195 0347 09       		.byte	0x9
 1196 0348 B4       		.byte	0xb4
 1197 0349 31030000 		.4byte	0x331
 1198 034d 00       		.byte	0
 1199 034e 12       		.uleb128 0x12
 1200 034f 5F7200   		.ascii	"_r\000"
 1201 0352 09       		.byte	0x9
 1202 0353 B5       		.byte	0xb5
 1203 0354 25000000 		.4byte	0x25
 1204 0358 04       		.byte	0x4
 1205 0359 12       		.uleb128 0x12
 1206 035a 5F7700   		.ascii	"_w\000"
 1207 035d 09       		.byte	0x9
 1208 035e B6       		.byte	0xb6
 1209 035f 25000000 		.4byte	0x25
 1210 0363 08       		.byte	0x8
 1211 0364 10       		.uleb128 0x10
 1212 0365 F7010000 		.4byte	.LASF56
 1213 0369 09       		.byte	0x9
 1214 036a B7       		.byte	0xb7
 1215 036b 4C000000 		.4byte	0x4c
 1216 036f 0C       		.byte	0xc
 1217 0370 10       		.uleb128 0x10
ARM GAS  /tmp/ccomqgAQ.s 			page 29


 1218 0371 B5030000 		.4byte	.LASF57
 1219 0375 09       		.byte	0x9
 1220 0376 B8       		.byte	0xb8
 1221 0377 4C000000 		.4byte	0x4c
 1222 037b 0E       		.byte	0xe
 1223 037c 12       		.uleb128 0x12
 1224 037d 5F626600 		.ascii	"_bf\000"
 1225 0381 09       		.byte	0x9
 1226 0382 B9       		.byte	0xb9
 1227 0383 0C030000 		.4byte	0x30c
 1228 0387 10       		.byte	0x10
 1229 0388 10       		.uleb128 0x10
 1230 0389 C8000000 		.4byte	.LASF58
 1231 038d 09       		.byte	0x9
 1232 038e BA       		.byte	0xba
 1233 038f 25000000 		.4byte	0x25
 1234 0393 18       		.byte	0x18
 1235 0394 10       		.uleb128 0x10
 1236 0395 BC010000 		.4byte	.LASF59
 1237 0399 09       		.byte	0x9
 1238 039a C1       		.byte	0xc1
 1239 039b C1000000 		.4byte	0xc1
 1240 039f 1C       		.byte	0x1c
 1241 03a0 10       		.uleb128 0x10
 1242 03a1 9D060000 		.4byte	.LASF60
 1243 03a5 09       		.byte	0x9
 1244 03a6 C3       		.byte	0xc3
 1245 03a7 CE050000 		.4byte	0x5ce
 1246 03ab 20       		.byte	0x20
 1247 03ac 10       		.uleb128 0x10
 1248 03ad E7040000 		.4byte	.LASF61
 1249 03b1 09       		.byte	0x9
 1250 03b2 C5       		.byte	0xc5
 1251 03b3 F8050000 		.4byte	0x5f8
 1252 03b7 24       		.byte	0x24
 1253 03b8 10       		.uleb128 0x10
 1254 03b9 DC070000 		.4byte	.LASF62
 1255 03bd 09       		.byte	0x9
 1256 03be C8       		.byte	0xc8
 1257 03bf 1C060000 		.4byte	0x61c
 1258 03c3 28       		.byte	0x28
 1259 03c4 10       		.uleb128 0x10
 1260 03c5 54010000 		.4byte	.LASF63
 1261 03c9 09       		.byte	0x9
 1262 03ca C9       		.byte	0xc9
 1263 03cb 36060000 		.4byte	0x636
 1264 03cf 2C       		.byte	0x2c
 1265 03d0 12       		.uleb128 0x12
 1266 03d1 5F756200 		.ascii	"_ub\000"
 1267 03d5 09       		.byte	0x9
 1268 03d6 CC       		.byte	0xcc
 1269 03d7 0C030000 		.4byte	0x30c
 1270 03db 30       		.byte	0x30
 1271 03dc 12       		.uleb128 0x12
 1272 03dd 5F757000 		.ascii	"_up\000"
 1273 03e1 09       		.byte	0x9
 1274 03e2 CD       		.byte	0xcd
ARM GAS  /tmp/ccomqgAQ.s 			page 30


 1275 03e3 31030000 		.4byte	0x331
 1276 03e7 38       		.byte	0x38
 1277 03e8 12       		.uleb128 0x12
 1278 03e9 5F757200 		.ascii	"_ur\000"
 1279 03ed 09       		.byte	0x9
 1280 03ee CE       		.byte	0xce
 1281 03ef 25000000 		.4byte	0x25
 1282 03f3 3C       		.byte	0x3c
 1283 03f4 10       		.uleb128 0x10
 1284 03f5 74010000 		.4byte	.LASF64
 1285 03f9 09       		.byte	0x9
 1286 03fa D1       		.byte	0xd1
 1287 03fb 3C060000 		.4byte	0x63c
 1288 03ff 40       		.byte	0x40
 1289 0400 10       		.uleb128 0x10
 1290 0401 010A0000 		.4byte	.LASF65
 1291 0405 09       		.byte	0x9
 1292 0406 D2       		.byte	0xd2
 1293 0407 4C060000 		.4byte	0x64c
 1294 040b 43       		.byte	0x43
 1295 040c 12       		.uleb128 0x12
 1296 040d 5F6C6200 		.ascii	"_lb\000"
 1297 0411 09       		.byte	0x9
 1298 0412 D5       		.byte	0xd5
 1299 0413 0C030000 		.4byte	0x30c
 1300 0417 44       		.byte	0x44
 1301 0418 10       		.uleb128 0x10
 1302 0419 47080000 		.4byte	.LASF66
 1303 041d 09       		.byte	0x9
 1304 041e D8       		.byte	0xd8
 1305 041f 25000000 		.4byte	0x25
 1306 0423 4C       		.byte	0x4c
 1307 0424 10       		.uleb128 0x10
 1308 0425 5D050000 		.4byte	.LASF67
 1309 0429 09       		.byte	0x9
 1310 042a D9       		.byte	0xd9
 1311 042b EC000000 		.4byte	0xec
 1312 042f 50       		.byte	0x50
 1313 0430 10       		.uleb128 0x10
 1314 0431 7C000000 		.4byte	.LASF68
 1315 0435 09       		.byte	0x9
 1316 0436 DC       		.byte	0xdc
 1317 0437 7F040000 		.4byte	0x47f
 1318 043b 54       		.byte	0x54
 1319 043c 10       		.uleb128 0x10
 1320 043d 9D040000 		.4byte	.LASF69
 1321 0441 09       		.byte	0x9
 1322 0442 E0       		.byte	0xe0
 1323 0443 69010000 		.4byte	0x169
 1324 0447 58       		.byte	0x58
 1325 0448 10       		.uleb128 0x10
 1326 0449 3D030000 		.4byte	.LASF70
 1327 044d 09       		.byte	0x9
 1328 044e E2       		.byte	0xe2
 1329 044f 5E010000 		.4byte	0x15e
 1330 0453 5C       		.byte	0x5c
 1331 0454 10       		.uleb128 0x10
ARM GAS  /tmp/ccomqgAQ.s 			page 31


 1332 0455 1E070000 		.4byte	.LASF71
 1333 0459 09       		.byte	0x9
 1334 045a E3       		.byte	0xe3
 1335 045b 25000000 		.4byte	0x25
 1336 045f 64       		.byte	0x64
 1337 0460 00       		.byte	0
 1338 0461 17       		.uleb128 0x17
 1339 0462 25000000 		.4byte	0x25
 1340 0466 7F040000 		.4byte	0x47f
 1341 046a 18       		.uleb128 0x18
 1342 046b 7F040000 		.4byte	0x47f
 1343 046f 18       		.uleb128 0x18
 1344 0470 C1000000 		.4byte	0xc1
 1345 0474 18       		.uleb128 0x18
 1346 0475 BC050000 		.4byte	0x5bc
 1347 0479 18       		.uleb128 0x18
 1348 047a 25000000 		.4byte	0x25
 1349 047e 00       		.byte	0
 1350 047f 13       		.uleb128 0x13
 1351 0480 04       		.byte	0x4
 1352 0481 8A040000 		.4byte	0x48a
 1353 0485 05       		.uleb128 0x5
 1354 0486 7F040000 		.4byte	0x47f
 1355 048a 19       		.uleb128 0x19
 1356 048b B4070000 		.4byte	.LASF72
 1357 048f 2804     		.2byte	0x428
 1358 0491 09       		.byte	0x9
 1359 0492 3802     		.2byte	0x238
 1360 0494 BC050000 		.4byte	0x5bc
 1361 0498 1A       		.uleb128 0x1a
 1362 0499 3B080000 		.4byte	.LASF73
 1363 049d 09       		.byte	0x9
 1364 049e 3A02     		.2byte	0x23a
 1365 04a0 25000000 		.4byte	0x25
 1366 04a4 00       		.byte	0
 1367 04a5 1A       		.uleb128 0x1a
 1368 04a6 7E090000 		.4byte	.LASF74
 1369 04aa 09       		.byte	0x9
 1370 04ab 3F02     		.2byte	0x23f
 1371 04ad A3060000 		.4byte	0x6a3
 1372 04b1 04       		.byte	0x4
 1373 04b2 1A       		.uleb128 0x1a
 1374 04b3 4C090000 		.4byte	.LASF75
 1375 04b7 09       		.byte	0x9
 1376 04b8 3F02     		.2byte	0x23f
 1377 04ba A3060000 		.4byte	0x6a3
 1378 04be 08       		.byte	0x8
 1379 04bf 1A       		.uleb128 0x1a
 1380 04c0 E6020000 		.4byte	.LASF76
 1381 04c4 09       		.byte	0x9
 1382 04c5 3F02     		.2byte	0x23f
 1383 04c7 A3060000 		.4byte	0x6a3
 1384 04cb 0C       		.byte	0xc
 1385 04cc 1A       		.uleb128 0x1a
 1386 04cd 88070000 		.4byte	.LASF77
 1387 04d1 09       		.byte	0x9
 1388 04d2 4102     		.2byte	0x241
ARM GAS  /tmp/ccomqgAQ.s 			page 32


 1389 04d4 25000000 		.4byte	0x25
 1390 04d8 10       		.byte	0x10
 1391 04d9 1A       		.uleb128 0x1a
 1392 04da 49000000 		.4byte	.LASF78
 1393 04de 09       		.byte	0x9
 1394 04df 4202     		.2byte	0x242
 1395 04e1 85080000 		.4byte	0x885
 1396 04e5 14       		.byte	0x14
 1397 04e6 1A       		.uleb128 0x1a
 1398 04e7 0F0A0000 		.4byte	.LASF79
 1399 04eb 09       		.byte	0x9
 1400 04ec 4402     		.2byte	0x244
 1401 04ee 25000000 		.4byte	0x25
 1402 04f2 30       		.byte	0x30
 1403 04f3 1A       		.uleb128 0x1a
 1404 04f4 92070000 		.4byte	.LASF80
 1405 04f8 09       		.byte	0x9
 1406 04f9 4502     		.2byte	0x245
 1407 04fb F2050000 		.4byte	0x5f2
 1408 04ff 34       		.byte	0x34
 1409 0500 1A       		.uleb128 0x1a
 1410 0501 48060000 		.4byte	.LASF81
 1411 0505 09       		.byte	0x9
 1412 0506 4702     		.2byte	0x247
 1413 0508 25000000 		.4byte	0x25
 1414 050c 38       		.byte	0x38
 1415 050d 1A       		.uleb128 0x1a
 1416 050e A2070000 		.4byte	.LASF82
 1417 0512 09       		.byte	0x9
 1418 0513 4902     		.2byte	0x249
 1419 0515 A0080000 		.4byte	0x8a0
 1420 0519 3C       		.byte	0x3c
 1421 051a 1A       		.uleb128 0x1a
 1422 051b 5D040000 		.4byte	.LASF83
 1423 051f 09       		.byte	0x9
 1424 0520 4C02     		.2byte	0x24c
 1425 0522 D2010000 		.4byte	0x1d2
 1426 0526 40       		.byte	0x40
 1427 0527 1A       		.uleb128 0x1a
 1428 0528 27020000 		.4byte	.LASF84
 1429 052c 09       		.byte	0x9
 1430 052d 4D02     		.2byte	0x24d
 1431 052f 25000000 		.4byte	0x25
 1432 0533 44       		.byte	0x44
 1433 0534 1A       		.uleb128 0x1a
 1434 0535 570A0000 		.4byte	.LASF85
 1435 0539 09       		.byte	0x9
 1436 053a 4E02     		.2byte	0x24e
 1437 053c D2010000 		.4byte	0x1d2
 1438 0540 48       		.byte	0x48
 1439 0541 1A       		.uleb128 0x1a
 1440 0542 26070000 		.4byte	.LASF86
 1441 0546 09       		.byte	0x9
 1442 0547 4F02     		.2byte	0x24f
 1443 0549 A6080000 		.4byte	0x8a6
 1444 054d 4C       		.byte	0x4c
 1445 054e 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccomqgAQ.s 			page 33


 1446 054f 77030000 		.4byte	.LASF87
 1447 0553 09       		.byte	0x9
 1448 0554 5202     		.2byte	0x252
 1449 0556 25000000 		.4byte	0x25
 1450 055a 50       		.byte	0x50
 1451 055b 1A       		.uleb128 0x1a
 1452 055c 58020000 		.4byte	.LASF88
 1453 0560 09       		.byte	0x9
 1454 0561 5302     		.2byte	0x253
 1455 0563 BC050000 		.4byte	0x5bc
 1456 0567 54       		.byte	0x54
 1457 0568 1A       		.uleb128 0x1a
 1458 0569 BD060000 		.4byte	.LASF89
 1459 056d 09       		.byte	0x9
 1460 056e 7602     		.2byte	0x276
 1461 0570 63080000 		.4byte	0x863
 1462 0574 58       		.byte	0x58
 1463 0575 1B       		.uleb128 0x1b
 1464 0576 36060000 		.4byte	.LASF49
 1465 057a 09       		.byte	0x9
 1466 057b 7A02     		.2byte	0x27a
 1467 057d EF020000 		.4byte	0x2ef
 1468 0581 4801     		.2byte	0x148
 1469 0583 1B       		.uleb128 0x1b
 1470 0584 22040000 		.4byte	.LASF90
 1471 0588 09       		.byte	0x9
 1472 0589 7B02     		.2byte	0x27b
 1473 058b B1020000 		.4byte	0x2b1
 1474 058f 4C01     		.2byte	0x14c
 1475 0591 1B       		.uleb128 0x1b
 1476 0592 BB090000 		.4byte	.LASF91
 1477 0596 09       		.byte	0x9
 1478 0597 7F02     		.2byte	0x27f
 1479 0599 B7080000 		.4byte	0x8b7
 1480 059d DC02     		.2byte	0x2dc
 1481 059f 1B       		.uleb128 0x1b
 1482 05a0 C4010000 		.4byte	.LASF92
 1483 05a4 09       		.byte	0x9
 1484 05a5 8402     		.2byte	0x284
 1485 05a7 68060000 		.4byte	0x668
 1486 05ab E002     		.2byte	0x2e0
 1487 05ad 1B       		.uleb128 0x1b
 1488 05ae 98010000 		.4byte	.LASF93
 1489 05b2 09       		.byte	0x9
 1490 05b3 8502     		.2byte	0x285
 1491 05b5 C3080000 		.4byte	0x8c3
 1492 05b9 EC02     		.2byte	0x2ec
 1493 05bb 00       		.byte	0
 1494 05bc 13       		.uleb128 0x13
 1495 05bd 04       		.byte	0x4
 1496 05be C2050000 		.4byte	0x5c2
 1497 05c2 03       		.uleb128 0x3
 1498 05c3 01       		.byte	0x1
 1499 05c4 08       		.byte	0x8
 1500 05c5 42080000 		.4byte	.LASF94
 1501 05c9 05       		.uleb128 0x5
 1502 05ca C2050000 		.4byte	0x5c2
ARM GAS  /tmp/ccomqgAQ.s 			page 34


 1503 05ce 13       		.uleb128 0x13
 1504 05cf 04       		.byte	0x4
 1505 05d0 61040000 		.4byte	0x461
 1506 05d4 17       		.uleb128 0x17
 1507 05d5 25000000 		.4byte	0x25
 1508 05d9 F2050000 		.4byte	0x5f2
 1509 05dd 18       		.uleb128 0x18
 1510 05de 7F040000 		.4byte	0x47f
 1511 05e2 18       		.uleb128 0x18
 1512 05e3 C1000000 		.4byte	0xc1
 1513 05e7 18       		.uleb128 0x18
 1514 05e8 F2050000 		.4byte	0x5f2
 1515 05ec 18       		.uleb128 0x18
 1516 05ed 25000000 		.4byte	0x25
 1517 05f1 00       		.byte	0
 1518 05f2 13       		.uleb128 0x13
 1519 05f3 04       		.byte	0x4
 1520 05f4 C9050000 		.4byte	0x5c9
 1521 05f8 13       		.uleb128 0x13
 1522 05f9 04       		.byte	0x4
 1523 05fa D4050000 		.4byte	0x5d4
 1524 05fe 17       		.uleb128 0x17
 1525 05ff F7000000 		.4byte	0xf7
 1526 0603 1C060000 		.4byte	0x61c
 1527 0607 18       		.uleb128 0x18
 1528 0608 7F040000 		.4byte	0x47f
 1529 060c 18       		.uleb128 0x18
 1530 060d C1000000 		.4byte	0xc1
 1531 0611 18       		.uleb128 0x18
 1532 0612 F7000000 		.4byte	0xf7
 1533 0616 18       		.uleb128 0x18
 1534 0617 25000000 		.4byte	0x25
 1535 061b 00       		.byte	0
 1536 061c 13       		.uleb128 0x13
 1537 061d 04       		.byte	0x4
 1538 061e FE050000 		.4byte	0x5fe
 1539 0622 17       		.uleb128 0x17
 1540 0623 25000000 		.4byte	0x25
 1541 0627 36060000 		.4byte	0x636
 1542 062b 18       		.uleb128 0x18
 1543 062c 7F040000 		.4byte	0x47f
 1544 0630 18       		.uleb128 0x18
 1545 0631 C1000000 		.4byte	0xc1
 1546 0635 00       		.byte	0
 1547 0636 13       		.uleb128 0x13
 1548 0637 04       		.byte	0x4
 1549 0638 22060000 		.4byte	0x622
 1550 063c 0D       		.uleb128 0xd
 1551 063d 45000000 		.4byte	0x45
 1552 0641 4C060000 		.4byte	0x64c
 1553 0645 0E       		.uleb128 0xe
 1554 0646 C3000000 		.4byte	0xc3
 1555 064a 02       		.byte	0x2
 1556 064b 00       		.byte	0
 1557 064c 0D       		.uleb128 0xd
 1558 064d 45000000 		.4byte	0x45
 1559 0651 5C060000 		.4byte	0x65c
ARM GAS  /tmp/ccomqgAQ.s 			page 35


 1560 0655 0E       		.uleb128 0xe
 1561 0656 C3000000 		.4byte	0xc3
 1562 065a 00       		.byte	0
 1563 065b 00       		.byte	0
 1564 065c 0A       		.uleb128 0xa
 1565 065d 30070000 		.4byte	.LASF95
 1566 0661 09       		.byte	0x9
 1567 0662 1D01     		.2byte	0x11d
 1568 0664 37030000 		.4byte	0x337
 1569 0668 1C       		.uleb128 0x1c
 1570 0669 5E090000 		.4byte	.LASF96
 1571 066d 0C       		.byte	0xc
 1572 066e 09       		.byte	0x9
 1573 066f 2101     		.2byte	0x121
 1574 0671 9D060000 		.4byte	0x69d
 1575 0675 1A       		.uleb128 0x1a
 1576 0676 79080000 		.4byte	.LASF29
 1577 067a 09       		.byte	0x9
 1578 067b 2301     		.2byte	0x123
 1579 067d 9D060000 		.4byte	0x69d
 1580 0681 00       		.byte	0
 1581 0682 1A       		.uleb128 0x1a
 1582 0683 F5000000 		.4byte	.LASF97
 1583 0687 09       		.byte	0x9
 1584 0688 2401     		.2byte	0x124
 1585 068a 25000000 		.4byte	0x25
 1586 068e 04       		.byte	0x4
 1587 068f 1A       		.uleb128 0x1a
 1588 0690 82070000 		.4byte	.LASF98
 1589 0694 09       		.byte	0x9
 1590 0695 2501     		.2byte	0x125
 1591 0697 A3060000 		.4byte	0x6a3
 1592 069b 08       		.byte	0x8
 1593 069c 00       		.byte	0
 1594 069d 13       		.uleb128 0x13
 1595 069e 04       		.byte	0x4
 1596 069f 68060000 		.4byte	0x668
 1597 06a3 13       		.uleb128 0x13
 1598 06a4 04       		.byte	0x4
 1599 06a5 5C060000 		.4byte	0x65c
 1600 06a9 1C       		.uleb128 0x1c
 1601 06aa 41000000 		.4byte	.LASF99
 1602 06ae 0E       		.byte	0xe
 1603 06af 09       		.byte	0x9
 1604 06b0 3D01     		.2byte	0x13d
 1605 06b2 DE060000 		.4byte	0x6de
 1606 06b6 1A       		.uleb128 0x1a
 1607 06b7 BB070000 		.4byte	.LASF100
 1608 06bb 09       		.byte	0x9
 1609 06bc 3E01     		.2byte	0x13e
 1610 06be DE060000 		.4byte	0x6de
 1611 06c2 00       		.byte	0
 1612 06c3 1A       		.uleb128 0x1a
 1613 06c4 D2040000 		.4byte	.LASF101
 1614 06c8 09       		.byte	0x9
 1615 06c9 3F01     		.2byte	0x13f
 1616 06cb DE060000 		.4byte	0x6de
ARM GAS  /tmp/ccomqgAQ.s 			page 36


 1617 06cf 06       		.byte	0x6
 1618 06d0 1A       		.uleb128 0x1a
 1619 06d1 BA080000 		.4byte	.LASF102
 1620 06d5 09       		.byte	0x9
 1621 06d6 4001     		.2byte	0x140
 1622 06d8 53000000 		.4byte	0x53
 1623 06dc 0C       		.byte	0xc
 1624 06dd 00       		.byte	0
 1625 06de 0D       		.uleb128 0xd
 1626 06df 53000000 		.4byte	0x53
 1627 06e3 EE060000 		.4byte	0x6ee
 1628 06e7 0E       		.uleb128 0xe
 1629 06e8 C3000000 		.4byte	0xc3
 1630 06ec 02       		.byte	0x2
 1631 06ed 00       		.byte	0
 1632 06ee 1D       		.uleb128 0x1d
 1633 06ef D0       		.byte	0xd0
 1634 06f0 09       		.byte	0x9
 1635 06f1 5702     		.2byte	0x257
 1636 06f3 EF070000 		.4byte	0x7ef
 1637 06f7 1A       		.uleb128 0x1a
 1638 06f8 F8040000 		.4byte	.LASF103
 1639 06fc 09       		.byte	0x9
 1640 06fd 5902     		.2byte	0x259
 1641 06ff 2C000000 		.4byte	0x2c
 1642 0703 00       		.byte	0
 1643 0704 1A       		.uleb128 0x1a
 1644 0705 7F080000 		.4byte	.LASF104
 1645 0709 09       		.byte	0x9
 1646 070a 5A02     		.2byte	0x25a
 1647 070c BC050000 		.4byte	0x5bc
 1648 0710 04       		.byte	0x4
 1649 0711 1A       		.uleb128 0x1a
 1650 0712 37040000 		.4byte	.LASF105
 1651 0716 09       		.byte	0x9
 1652 0717 5B02     		.2byte	0x25b
 1653 0719 EF070000 		.4byte	0x7ef
 1654 071d 08       		.byte	0x8
 1655 071e 1A       		.uleb128 0x1a
 1656 071f 2C0A0000 		.4byte	.LASF106
 1657 0723 09       		.byte	0x9
 1658 0724 5C02     		.2byte	0x25c
 1659 0726 E8010000 		.4byte	0x1e8
 1660 072a 24       		.byte	0x24
 1661 072b 1A       		.uleb128 0x1a
 1662 072c 32000000 		.4byte	.LASF107
 1663 0730 09       		.byte	0x9
 1664 0731 5D02     		.2byte	0x25d
 1665 0733 25000000 		.4byte	0x25
 1666 0737 48       		.byte	0x48
 1667 0738 1A       		.uleb128 0x1a
 1668 0739 57070000 		.4byte	.LASF108
 1669 073d 09       		.byte	0x9
 1670 073e 5E02     		.2byte	0x25e
 1671 0740 85000000 		.4byte	0x85
 1672 0744 50       		.byte	0x50
 1673 0745 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccomqgAQ.s 			page 37


 1674 0746 440A0000 		.4byte	.LASF109
 1675 074a 09       		.byte	0x9
 1676 074b 5F02     		.2byte	0x25f
 1677 074d A9060000 		.4byte	0x6a9
 1678 0751 58       		.byte	0x58
 1679 0752 1A       		.uleb128 0x1a
 1680 0753 00070000 		.4byte	.LASF110
 1681 0757 09       		.byte	0x9
 1682 0758 6002     		.2byte	0x260
 1683 075a 5E010000 		.4byte	0x15e
 1684 075e 68       		.byte	0x68
 1685 075f 1A       		.uleb128 0x1a
 1686 0760 490A0000 		.4byte	.LASF111
 1687 0764 09       		.byte	0x9
 1688 0765 6102     		.2byte	0x261
 1689 0767 5E010000 		.4byte	0x15e
 1690 076b 70       		.byte	0x70
 1691 076c 1A       		.uleb128 0x1a
 1692 076d 3D010000 		.4byte	.LASF112
 1693 0771 09       		.byte	0x9
 1694 0772 6202     		.2byte	0x262
 1695 0774 5E010000 		.4byte	0x15e
 1696 0778 78       		.byte	0x78
 1697 0779 1A       		.uleb128 0x1a
 1698 077a F9070000 		.4byte	.LASF113
 1699 077e 09       		.byte	0x9
 1700 077f 6302     		.2byte	0x263
 1701 0781 FF070000 		.4byte	0x7ff
 1702 0785 80       		.byte	0x80
 1703 0786 1A       		.uleb128 0x1a
 1704 0787 2B040000 		.4byte	.LASF114
 1705 078b 09       		.byte	0x9
 1706 078c 6402     		.2byte	0x264
 1707 078e 0F080000 		.4byte	0x80f
 1708 0792 88       		.byte	0x88
 1709 0793 1A       		.uleb128 0x1a
 1710 0794 6F000000 		.4byte	.LASF115
 1711 0798 09       		.byte	0x9
 1712 0799 6502     		.2byte	0x265
 1713 079b 25000000 		.4byte	0x25
 1714 079f A0       		.byte	0xa0
 1715 07a0 1A       		.uleb128 0x1a
 1716 07a1 8F020000 		.4byte	.LASF116
 1717 07a5 09       		.byte	0x9
 1718 07a6 6602     		.2byte	0x266
 1719 07a8 5E010000 		.4byte	0x15e
 1720 07ac A4       		.byte	0xa4
 1721 07ad 1A       		.uleb128 0x1a
 1722 07ae 26010000 		.4byte	.LASF117
 1723 07b2 09       		.byte	0x9
 1724 07b3 6702     		.2byte	0x267
 1725 07b5 5E010000 		.4byte	0x15e
 1726 07b9 AC       		.byte	0xac
 1727 07ba 1A       		.uleb128 0x1a
 1728 07bb 7E020000 		.4byte	.LASF118
 1729 07bf 09       		.byte	0x9
 1730 07c0 6802     		.2byte	0x268
ARM GAS  /tmp/ccomqgAQ.s 			page 38


 1731 07c2 5E010000 		.4byte	0x15e
 1732 07c6 B4       		.byte	0xb4
 1733 07c7 1A       		.uleb128 0x1a
 1734 07c8 82000000 		.4byte	.LASF119
 1735 07cc 09       		.byte	0x9
 1736 07cd 6902     		.2byte	0x269
 1737 07cf 5E010000 		.4byte	0x15e
 1738 07d3 BC       		.byte	0xbc
 1739 07d4 1A       		.uleb128 0x1a
 1740 07d5 91000000 		.4byte	.LASF120
 1741 07d9 09       		.byte	0x9
 1742 07da 6A02     		.2byte	0x26a
 1743 07dc 5E010000 		.4byte	0x15e
 1744 07e0 C4       		.byte	0xc4
 1745 07e1 1A       		.uleb128 0x1a
 1746 07e2 F7060000 		.4byte	.LASF121
 1747 07e6 09       		.byte	0x9
 1748 07e7 6B02     		.2byte	0x26b
 1749 07e9 25000000 		.4byte	0x25
 1750 07ed CC       		.byte	0xcc
 1751 07ee 00       		.byte	0
 1752 07ef 0D       		.uleb128 0xd
 1753 07f0 C2050000 		.4byte	0x5c2
 1754 07f4 FF070000 		.4byte	0x7ff
 1755 07f8 0E       		.uleb128 0xe
 1756 07f9 C3000000 		.4byte	0xc3
 1757 07fd 19       		.byte	0x19
 1758 07fe 00       		.byte	0
 1759 07ff 0D       		.uleb128 0xd
 1760 0800 C2050000 		.4byte	0x5c2
 1761 0804 0F080000 		.4byte	0x80f
 1762 0808 0E       		.uleb128 0xe
 1763 0809 C3000000 		.4byte	0xc3
 1764 080d 07       		.byte	0x7
 1765 080e 00       		.byte	0
 1766 080f 0D       		.uleb128 0xd
 1767 0810 C2050000 		.4byte	0x5c2
 1768 0814 1F080000 		.4byte	0x81f
 1769 0818 0E       		.uleb128 0xe
 1770 0819 C3000000 		.4byte	0xc3
 1771 081d 17       		.byte	0x17
 1772 081e 00       		.byte	0
 1773 081f 1D       		.uleb128 0x1d
 1774 0820 F0       		.byte	0xf0
 1775 0821 09       		.byte	0x9
 1776 0822 7002     		.2byte	0x270
 1777 0824 43080000 		.4byte	0x843
 1778 0828 1A       		.uleb128 0x1a
 1779 0829 6B040000 		.4byte	.LASF122
 1780 082d 09       		.byte	0x9
 1781 082e 7302     		.2byte	0x273
 1782 0830 43080000 		.4byte	0x843
 1783 0834 00       		.byte	0
 1784 0835 1A       		.uleb128 0x1a
 1785 0836 05030000 		.4byte	.LASF123
 1786 083a 09       		.byte	0x9
 1787 083b 7402     		.2byte	0x274
ARM GAS  /tmp/ccomqgAQ.s 			page 39


 1788 083d 53080000 		.4byte	0x853
 1789 0841 78       		.byte	0x78
 1790 0842 00       		.byte	0
 1791 0843 0D       		.uleb128 0xd
 1792 0844 31030000 		.4byte	0x331
 1793 0848 53080000 		.4byte	0x853
 1794 084c 0E       		.uleb128 0xe
 1795 084d C3000000 		.4byte	0xc3
 1796 0851 1D       		.byte	0x1d
 1797 0852 00       		.byte	0
 1798 0853 0D       		.uleb128 0xd
 1799 0854 2C000000 		.4byte	0x2c
 1800 0858 63080000 		.4byte	0x863
 1801 085c 0E       		.uleb128 0xe
 1802 085d C3000000 		.4byte	0xc3
 1803 0861 1D       		.byte	0x1d
 1804 0862 00       		.byte	0
 1805 0863 1E       		.uleb128 0x1e
 1806 0864 F0       		.byte	0xf0
 1807 0865 09       		.byte	0x9
 1808 0866 5502     		.2byte	0x255
 1809 0868 85080000 		.4byte	0x885
 1810 086c 1F       		.uleb128 0x1f
 1811 086d B4070000 		.4byte	.LASF72
 1812 0871 09       		.byte	0x9
 1813 0872 6C02     		.2byte	0x26c
 1814 0874 EE060000 		.4byte	0x6ee
 1815 0878 1F       		.uleb128 0x1f
 1816 0879 070A0000 		.4byte	.LASF124
 1817 087d 09       		.byte	0x9
 1818 087e 7502     		.2byte	0x275
 1819 0880 1F080000 		.4byte	0x81f
 1820 0884 00       		.byte	0
 1821 0885 0D       		.uleb128 0xd
 1822 0886 C2050000 		.4byte	0x5c2
 1823 088a 95080000 		.4byte	0x895
 1824 088e 0E       		.uleb128 0xe
 1825 088f C3000000 		.4byte	0xc3
 1826 0893 18       		.byte	0x18
 1827 0894 00       		.byte	0
 1828 0895 20       		.uleb128 0x20
 1829 0896 A0080000 		.4byte	0x8a0
 1830 089a 18       		.uleb128 0x18
 1831 089b 7F040000 		.4byte	0x47f
 1832 089f 00       		.byte	0
 1833 08a0 13       		.uleb128 0x13
 1834 08a1 04       		.byte	0x4
 1835 08a2 95080000 		.4byte	0x895
 1836 08a6 13       		.uleb128 0x13
 1837 08a7 04       		.byte	0x4
 1838 08a8 D2010000 		.4byte	0x1d2
 1839 08ac 20       		.uleb128 0x20
 1840 08ad B7080000 		.4byte	0x8b7
 1841 08b1 18       		.uleb128 0x18
 1842 08b2 25000000 		.4byte	0x25
 1843 08b6 00       		.byte	0
 1844 08b7 13       		.uleb128 0x13
ARM GAS  /tmp/ccomqgAQ.s 			page 40


 1845 08b8 04       		.byte	0x4
 1846 08b9 BD080000 		.4byte	0x8bd
 1847 08bd 13       		.uleb128 0x13
 1848 08be 04       		.byte	0x4
 1849 08bf AC080000 		.4byte	0x8ac
 1850 08c3 0D       		.uleb128 0xd
 1851 08c4 5C060000 		.4byte	0x65c
 1852 08c8 D3080000 		.4byte	0x8d3
 1853 08cc 0E       		.uleb128 0xe
 1854 08cd C3000000 		.4byte	0xc3
 1855 08d1 02       		.byte	0x2
 1856 08d2 00       		.byte	0
 1857 08d3 08       		.uleb128 0x8
 1858 08d4 DA020000 		.4byte	.LASF125
 1859 08d8 09       		.byte	0x9
 1860 08d9 FD02     		.2byte	0x2fd
 1861 08db 7F040000 		.4byte	0x47f
 1862 08df 08       		.uleb128 0x8
 1863 08e0 08090000 		.4byte	.LASF126
 1864 08e4 09       		.byte	0x9
 1865 08e5 FE02     		.2byte	0x2fe
 1866 08e7 85040000 		.4byte	0x485
 1867 08eb 13       		.uleb128 0x13
 1868 08ec 04       		.byte	0x4
 1869 08ed F1080000 		.4byte	0x8f1
 1870 08f1 21       		.uleb128 0x21
 1871 08f2 09       		.uleb128 0x9
 1872 08f3 3E060000 		.4byte	.LASF127
 1873 08f7 0A       		.byte	0xa
 1874 08f8 5F       		.byte	0x5f
 1875 08f9 BC050000 		.4byte	0x5bc
 1876 08fd 09       		.uleb128 0x9
 1877 08fe 77060000 		.4byte	.LASF128
 1878 0902 0B       		.byte	0xb
 1879 0903 8F       		.byte	0x8f
 1880 0904 0F090000 		.4byte	0x90f
 1881 0908 03       		.uleb128 0x3
 1882 0909 01       		.byte	0x1
 1883 090a 02       		.byte	0x2
 1884 090b A3060000 		.4byte	.LASF129
 1885 090f 06       		.uleb128 0x6
 1886 0910 08090000 		.4byte	0x908
 1887 0914 22       		.uleb128 0x22
 1888 0915 E0090000 		.4byte	.LASF130
 1889 0919 0B       		.byte	0xb
 1890 091a 94       		.byte	0x94
 1891 091b B7000000 		.4byte	0xb7
 1892 091f 05       		.uleb128 0x5
 1893 0920 03       		.byte	0x3
 1894 0921 00000000 		.4byte	cpu_irq_critical_section_counter
 1895 0925 22       		.uleb128 0x22
 1896 0926 37050000 		.4byte	.LASF131
 1897 092a 0B       		.byte	0xb
 1898 092b 95       		.byte	0x95
 1899 092c 0F090000 		.4byte	0x90f
 1900 0930 05       		.uleb128 0x5
 1901 0931 03       		.byte	0x3
ARM GAS  /tmp/ccomqgAQ.s 			page 41


 1902 0932 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1903 0936 03       		.uleb128 0x3
 1904 0937 04       		.byte	0x4
 1905 0938 04       		.byte	0x4
 1906 0939 5A060000 		.4byte	.LASF132
 1907 093d 03       		.uleb128 0x3
 1908 093e 08       		.byte	0x8
 1909 093f 04       		.byte	0x4
 1910 0940 51020000 		.4byte	.LASF133
 1911 0944 03       		.uleb128 0x3
 1912 0945 08       		.byte	0x8
 1913 0946 04       		.byte	0x4
 1914 0947 2F080000 		.4byte	.LASF134
 1915 094b 23       		.uleb128 0x23
 1916 094c F7080000 		.4byte	.LASF201
 1917 0950 01       		.byte	0x1
 1918 0951 33000000 		.4byte	0x33
 1919 0955 0C       		.byte	0xc
 1920 0956 9902     		.2byte	0x299
 1921 0958 75090000 		.4byte	0x975
 1922 095c 24       		.uleb128 0x24
 1923 095d 20090000 		.4byte	.LASF135
 1924 0961 7F       		.sleb128 -1
 1925 0962 25       		.uleb128 0x25
 1926 0963 19020000 		.4byte	.LASF136
 1927 0967 00       		.byte	0
 1928 0968 25       		.uleb128 0x25
 1929 0969 17010000 		.4byte	.LASF137
 1930 096d 01       		.byte	0x1
 1931 096e 25       		.uleb128 0x25
 1932 096f B9000000 		.4byte	.LASF138
 1933 0973 02       		.byte	0x2
 1934 0974 00       		.byte	0
 1935 0975 08       		.uleb128 0x8
 1936 0976 67030000 		.4byte	.LASF139
 1937 097a 0C       		.byte	0xc
 1938 097b A402     		.2byte	0x2a4
 1939 097d 4B090000 		.4byte	0x94b
 1940 0981 26       		.uleb128 0x26
 1941 0982 50696E00 		.ascii	"Pin\000"
 1942 0986 0D       		.byte	0xd
 1943 0987 38       		.byte	0x38
 1944 0988 8C000000 		.4byte	0x8c
 1945 098c 05       		.uleb128 0x5
 1946 098d 81090000 		.4byte	0x981
 1947 0991 27       		.uleb128 0x27
 1948 0992 660A0000 		.4byte	.LASF140
 1949 0996 0D       		.byte	0xd
 1950 0997 39       		.byte	0x39
 1951 0998 8C090000 		.4byte	0x98c
 1952 099c 7F       		.sleb128 -1
 1953 099d 09       		.uleb128 0x9
 1954 099e FC000000 		.4byte	.LASF141
 1955 09a2 0E       		.byte	0xe
 1956 09a3 8B       		.byte	0x8b
 1957 09a4 65000000 		.4byte	0x65
 1958 09a8 09       		.uleb128 0x9
ARM GAS  /tmp/ccomqgAQ.s 			page 42


 1959 09a9 54000000 		.4byte	.LASF142
 1960 09ad 0E       		.byte	0xe
 1961 09ae 8C       		.byte	0x8c
 1962 09af 25000000 		.4byte	0x25
 1963 09b3 0D       		.uleb128 0xd
 1964 09b4 BC050000 		.4byte	0x5bc
 1965 09b8 C3090000 		.4byte	0x9c3
 1966 09bc 0E       		.uleb128 0xe
 1967 09bd C3000000 		.4byte	0xc3
 1968 09c1 01       		.byte	0x1
 1969 09c2 00       		.byte	0
 1970 09c3 09       		.uleb128 0x9
 1971 09c4 35010000 		.4byte	.LASF143
 1972 09c8 0E       		.byte	0xe
 1973 09c9 8F       		.byte	0x8f
 1974 09ca B3090000 		.4byte	0x9b3
 1975 09ce 28       		.uleb128 0x28
 1976 09cf CF030000 		.4byte	.LASF144
 1977 09d3 0F       		.byte	0xf
 1978 09d4 5C       		.byte	0x5c
 1979 09d5 97000000 		.4byte	0x97
 1980 09d9 38       		.byte	0x38
 1981 09da 28       		.uleb128 0x28
 1982 09db E8060000 		.4byte	.LASF145
 1983 09df 0F       		.byte	0xf
 1984 09e0 5D       		.byte	0x5d
 1985 09e1 97000000 		.4byte	0x97
 1986 09e5 05       		.byte	0x5
 1987 09e6 28       		.uleb128 0x28
 1988 09e7 F6020000 		.4byte	.LASF146
 1989 09eb 0F       		.byte	0xf
 1990 09ec 5E       		.byte	0x5e
 1991 09ed 97000000 		.4byte	0x97
 1992 09f1 06       		.byte	0x6
 1993 09f2 28       		.uleb128 0x28
 1994 09f3 DB030000 		.4byte	.LASF147
 1995 09f7 0F       		.byte	0xf
 1996 09f8 60       		.byte	0x60
 1997 09f9 97000000 		.4byte	0x97
 1998 09fd 39       		.byte	0x39
 1999 09fe 28       		.uleb128 0x28
 2000 09ff BB020000 		.4byte	.LASF148
 2001 0a03 0F       		.byte	0xf
 2002 0a04 61       		.byte	0x61
 2003 0a05 97000000 		.4byte	0x97
 2004 0a09 03       		.byte	0x3
 2005 0a0a 28       		.uleb128 0x28
 2006 0a0b 2E030000 		.4byte	.LASF149
 2007 0a0f 0F       		.byte	0xf
 2008 0a10 62       		.byte	0x62
 2009 0a11 97000000 		.4byte	0x97
 2010 0a15 04       		.byte	0x4
 2011 0a16 28       		.uleb128 0x28
 2012 0a17 D7080000 		.4byte	.LASF150
 2013 0a1b 0F       		.byte	0xf
 2014 0a1c 69       		.byte	0x69
 2015 0a1d 97000000 		.4byte	0x97
ARM GAS  /tmp/ccomqgAQ.s 			page 43


 2016 0a21 33       		.byte	0x33
 2017 0a22 28       		.uleb128 0x28
 2018 0a23 BF080000 		.4byte	.LASF151
 2019 0a27 0F       		.byte	0xf
 2020 0a28 6A       		.byte	0x6a
 2021 0a29 97000000 		.4byte	0x97
 2022 0a2d 34       		.byte	0x34
 2023 0a2e 28       		.uleb128 0x28
 2024 0a2f 80010000 		.4byte	.LASF152
 2025 0a33 0F       		.byte	0xf
 2026 0a34 6D       		.byte	0x6d
 2027 0a35 97000000 		.4byte	0x97
 2028 0a39 35       		.byte	0x35
 2029 0a3a 28       		.uleb128 0x28
 2030 0a3b 2E090000 		.4byte	.LASF153
 2031 0a3f 0F       		.byte	0xf
 2032 0a40 6E       		.byte	0x6e
 2033 0a41 97000000 		.4byte	0x97
 2034 0a45 36       		.byte	0x36
 2035 0a46 28       		.uleb128 0x28
 2036 0a47 8E040000 		.4byte	.LASF154
 2037 0a4b 0F       		.byte	0xf
 2038 0a4c 6F       		.byte	0x6f
 2039 0a4d 97000000 		.4byte	0x97
 2040 0a51 37       		.byte	0x37
 2041 0a52 28       		.uleb128 0x28
 2042 0a53 67010000 		.4byte	.LASF155
 2043 0a57 0F       		.byte	0xf
 2044 0a58 71       		.byte	0x71
 2045 0a59 BC000000 		.4byte	0xbc
 2046 0a5d 32       		.byte	0x32
 2047 0a5e 29       		.uleb128 0x29
 2048 0a5f 42070000 		.4byte	.LASF156
 2049 0a63 0F       		.byte	0xf
 2050 0a64 73       		.byte	0x73
 2051 0a65 BC000000 		.4byte	0xbc
 2052 0a69 58466100 		.4byte	0x614658
 2053 0a6d 2A       		.uleb128 0x2a
 2054 0a6e FE010000 		.4byte	.LASF157
 2055 0a72 0F       		.byte	0xf
 2056 0a73 74       		.byte	0x74
 2057 0a74 BC000000 		.4byte	0xbc
 2058 0a78 4661     		.2byte	0x6146
 2059 0a7a 2B       		.uleb128 0x2b
 2060 0a7b 01       		.byte	0x1
 2061 0a7c 45000000 		.4byte	0x45
 2062 0a80 10       		.byte	0x10
 2063 0a81 55       		.byte	0x55
 2064 0a82 9F0A0000 		.4byte	0xa9f
 2065 0a86 25       		.uleb128 0x25
 2066 0a87 42090000 		.4byte	.LASF158
 2067 0a8b 00       		.byte	0
 2068 0a8c 25       		.uleb128 0x25
 2069 0a8d 03080000 		.4byte	.LASF159
 2070 0a91 01       		.byte	0x1
 2071 0a92 25       		.uleb128 0x25
 2072 0a93 7E040000 		.4byte	.LASF160
ARM GAS  /tmp/ccomqgAQ.s 			page 44


 2073 0a97 02       		.byte	0x2
 2074 0a98 25       		.uleb128 0x25
 2075 0a99 D6090000 		.4byte	.LASF161
 2076 0a9d 03       		.byte	0x3
 2077 0a9e 00       		.byte	0
 2078 0a9f 04       		.uleb128 0x4
 2079 0aa0 63080000 		.4byte	.LASF162
 2080 0aa4 10       		.byte	0x10
 2081 0aa5 5A       		.byte	0x5a
 2082 0aa6 7A0A0000 		.4byte	0xa7a
 2083 0aaa 0D       		.uleb128 0xd
 2084 0aab 08090000 		.4byte	0x908
 2085 0aaf BA0A0000 		.4byte	0xaba
 2086 0ab3 0E       		.uleb128 0xe
 2087 0ab4 C3000000 		.4byte	0xc3
 2088 0ab8 01       		.byte	0x1
 2089 0ab9 00       		.byte	0
 2090 0aba 22       		.uleb128 0x22
 2091 0abb E8080000 		.4byte	.LASF163
 2092 0abf 01       		.byte	0x1
 2093 0ac0 42       		.byte	0x42
 2094 0ac1 AA0A0000 		.4byte	0xaaa
 2095 0ac5 05       		.uleb128 0x5
 2096 0ac6 03       		.byte	0x3
 2097 0ac7 00000000 		.4byte	sd_mmc_ejected
 2098 0acb 2C       		.uleb128 0x2c
 2099 0acc A8090000 		.4byte	.LASF166
 2100 0ad0 01       		.byte	0x1
 2101 0ad1 6801     		.2byte	0x168
 2102 0ad3 9F0A0000 		.4byte	0xa9f
 2103 0ad7 00000000 		.4byte	.LFB247
 2104 0adb 0C000000 		.4byte	.LFE247-.LFB247
 2105 0adf 01       		.uleb128 0x1
 2106 0ae0 9C       		.byte	0x9c
 2107 0ae1 3A0B0000 		.4byte	0xb3a
 2108 0ae5 2D       		.uleb128 0x2d
 2109 0ae6 D1000000 		.4byte	.LASF164
 2110 0aea 01       		.byte	0x1
 2111 0aeb 6801     		.2byte	0x168
 2112 0aed AC000000 		.4byte	0xac
 2113 0af1 00000000 		.4byte	.LLST32
 2114 0af5 2E       		.uleb128 0x2e
 2115 0af6 72616D00 		.ascii	"ram\000"
 2116 0afa 01       		.byte	0x1
 2117 0afb 6801     		.2byte	0x168
 2118 0afd EB080000 		.4byte	0x8eb
 2119 0b01 2C000000 		.4byte	.LLST33
 2120 0b05 2D       		.uleb128 0x2d
 2121 0b06 5D030000 		.4byte	.LASF165
 2122 0b0a 01       		.byte	0x1
 2123 0b0b 6801     		.2byte	0x168
 2124 0b0d AC000000 		.4byte	0xac
 2125 0b11 58000000 		.4byte	.LLST34
 2126 0b15 2F       		.uleb128 0x2f
 2127 0b16 0C000000 		.4byte	.LVL66
 2128 0b1a A90B0000 		.4byte	0xba9
 2129 0b1e 30       		.uleb128 0x30
ARM GAS  /tmp/ccomqgAQ.s 			page 45


 2130 0b1f 01       		.uleb128 0x1
 2131 0b20 50       		.byte	0x50
 2132 0b21 01       		.uleb128 0x1
 2133 0b22 31       		.byte	0x31
 2134 0b23 30       		.uleb128 0x30
 2135 0b24 01       		.uleb128 0x1
 2136 0b25 51       		.byte	0x51
 2137 0b26 03       		.uleb128 0x3
 2138 0b27 F3       		.byte	0xf3
 2139 0b28 01       		.uleb128 0x1
 2140 0b29 50       		.byte	0x50
 2141 0b2a 30       		.uleb128 0x30
 2142 0b2b 01       		.uleb128 0x1
 2143 0b2c 52       		.byte	0x52
 2144 0b2d 03       		.uleb128 0x3
 2145 0b2e F3       		.byte	0xf3
 2146 0b2f 01       		.uleb128 0x1
 2147 0b30 51       		.byte	0x51
 2148 0b31 30       		.uleb128 0x30
 2149 0b32 01       		.uleb128 0x1
 2150 0b33 53       		.byte	0x53
 2151 0b34 03       		.uleb128 0x3
 2152 0b35 F3       		.byte	0xf3
 2153 0b36 01       		.uleb128 0x1
 2154 0b37 52       		.byte	0x52
 2155 0b38 00       		.byte	0
 2156 0b39 00       		.byte	0
 2157 0b3a 2C       		.uleb128 0x2c
 2158 0b3b 95090000 		.4byte	.LASF167
 2159 0b3f 01       		.byte	0x1
 2160 0b40 6301     		.2byte	0x163
 2161 0b42 9F0A0000 		.4byte	0xa9f
 2162 0b46 00000000 		.4byte	.LFB246
 2163 0b4a 0C000000 		.4byte	.LFE246-.LFB246
 2164 0b4e 01       		.uleb128 0x1
 2165 0b4f 9C       		.byte	0x9c
 2166 0b50 A90B0000 		.4byte	0xba9
 2167 0b54 2D       		.uleb128 0x2d
 2168 0b55 D1000000 		.4byte	.LASF164
 2169 0b59 01       		.byte	0x1
 2170 0b5a 6301     		.2byte	0x163
 2171 0b5c AC000000 		.4byte	0xac
 2172 0b60 84000000 		.4byte	.LLST29
 2173 0b64 2E       		.uleb128 0x2e
 2174 0b65 72616D00 		.ascii	"ram\000"
 2175 0b69 01       		.byte	0x1
 2176 0b6a 6301     		.2byte	0x163
 2177 0b6c EB080000 		.4byte	0x8eb
 2178 0b70 B0000000 		.4byte	.LLST30
 2179 0b74 2D       		.uleb128 0x2d
 2180 0b75 5D030000 		.4byte	.LASF165
 2181 0b79 01       		.byte	0x1
 2182 0b7a 6301     		.2byte	0x163
 2183 0b7c AC000000 		.4byte	0xac
 2184 0b80 DC000000 		.4byte	.LLST31
 2185 0b84 2F       		.uleb128 0x2f
 2186 0b85 0C000000 		.4byte	.LVL61
ARM GAS  /tmp/ccomqgAQ.s 			page 46


 2187 0b89 A90B0000 		.4byte	0xba9
 2188 0b8d 30       		.uleb128 0x30
 2189 0b8e 01       		.uleb128 0x1
 2190 0b8f 50       		.byte	0x50
 2191 0b90 01       		.uleb128 0x1
 2192 0b91 30       		.byte	0x30
 2193 0b92 30       		.uleb128 0x30
 2194 0b93 01       		.uleb128 0x1
 2195 0b94 51       		.byte	0x51
 2196 0b95 03       		.uleb128 0x3
 2197 0b96 F3       		.byte	0xf3
 2198 0b97 01       		.uleb128 0x1
 2199 0b98 50       		.byte	0x50
 2200 0b99 30       		.uleb128 0x30
 2201 0b9a 01       		.uleb128 0x1
 2202 0b9b 52       		.byte	0x52
 2203 0b9c 03       		.uleb128 0x3
 2204 0b9d F3       		.byte	0xf3
 2205 0b9e 01       		.uleb128 0x1
 2206 0b9f 51       		.byte	0x51
 2207 0ba0 30       		.uleb128 0x30
 2208 0ba1 01       		.uleb128 0x1
 2209 0ba2 53       		.byte	0x53
 2210 0ba3 03       		.uleb128 0x3
 2211 0ba4 F3       		.byte	0xf3
 2212 0ba5 01       		.uleb128 0x1
 2213 0ba6 52       		.byte	0x52
 2214 0ba7 00       		.byte	0
 2215 0ba8 00       		.byte	0
 2216 0ba9 31       		.uleb128 0x31
 2217 0baa C5090000 		.4byte	.LASF171
 2218 0bae 01       		.byte	0x1
 2219 0baf 5001     		.2byte	0x150
 2220 0bb1 9F0A0000 		.4byte	0xa9f
 2221 0bb5 01       		.byte	0x1
 2222 0bb6 EB0B0000 		.4byte	0xbeb
 2223 0bba 32       		.uleb128 0x32
 2224 0bbb 72040000 		.4byte	.LASF168
 2225 0bbf 01       		.byte	0x1
 2226 0bc0 5001     		.2byte	0x150
 2227 0bc2 8C000000 		.4byte	0x8c
 2228 0bc6 32       		.uleb128 0x32
 2229 0bc7 D1000000 		.4byte	.LASF164
 2230 0bcb 01       		.byte	0x1
 2231 0bcc 5001     		.2byte	0x150
 2232 0bce AC000000 		.4byte	0xac
 2233 0bd2 33       		.uleb128 0x33
 2234 0bd3 72616D00 		.ascii	"ram\000"
 2235 0bd7 01       		.byte	0x1
 2236 0bd8 5001     		.2byte	0x150
 2237 0bda EB080000 		.4byte	0x8eb
 2238 0bde 32       		.uleb128 0x32
 2239 0bdf 5D030000 		.4byte	.LASF165
 2240 0be3 01       		.byte	0x1
 2241 0be4 5001     		.2byte	0x150
 2242 0be6 AC000000 		.4byte	0xac
 2243 0bea 00       		.byte	0
ARM GAS  /tmp/ccomqgAQ.s 			page 47


 2244 0beb 2C       		.uleb128 0x2c
 2245 0bec D5060000 		.4byte	.LASF169
 2246 0bf0 01       		.byte	0x1
 2247 0bf1 4B01     		.2byte	0x14b
 2248 0bf3 9F0A0000 		.4byte	0xa9f
 2249 0bf7 00000000 		.4byte	.LFB244
 2250 0bfb 0C000000 		.4byte	.LFE244-.LFB244
 2251 0bff 01       		.uleb128 0x1
 2252 0c00 9C       		.byte	0x9c
 2253 0c01 5A0C0000 		.4byte	0xc5a
 2254 0c05 2D       		.uleb128 0x2d
 2255 0c06 D1000000 		.4byte	.LASF164
 2256 0c0a 01       		.byte	0x1
 2257 0c0b 4B01     		.2byte	0x14b
 2258 0c0d AC000000 		.4byte	0xac
 2259 0c11 08010000 		.4byte	.LLST22
 2260 0c15 2E       		.uleb128 0x2e
 2261 0c16 72616D00 		.ascii	"ram\000"
 2262 0c1a 01       		.byte	0x1
 2263 0c1b 4B01     		.2byte	0x14b
 2264 0c1d C1000000 		.4byte	0xc1
 2265 0c21 34010000 		.4byte	.LLST23
 2266 0c25 2D       		.uleb128 0x2d
 2267 0c26 5D030000 		.4byte	.LASF165
 2268 0c2a 01       		.byte	0x1
 2269 0c2b 4B01     		.2byte	0x14b
 2270 0c2d AC000000 		.4byte	0xac
 2271 0c31 60010000 		.4byte	.LLST24
 2272 0c35 2F       		.uleb128 0x2f
 2273 0c36 0C000000 		.4byte	.LVL49
 2274 0c3a C90C0000 		.4byte	0xcc9
 2275 0c3e 30       		.uleb128 0x30
 2276 0c3f 01       		.uleb128 0x1
 2277 0c40 50       		.byte	0x50
 2278 0c41 01       		.uleb128 0x1
 2279 0c42 31       		.byte	0x31
 2280 0c43 30       		.uleb128 0x30
 2281 0c44 01       		.uleb128 0x1
 2282 0c45 51       		.byte	0x51
 2283 0c46 03       		.uleb128 0x3
 2284 0c47 F3       		.byte	0xf3
 2285 0c48 01       		.uleb128 0x1
 2286 0c49 50       		.byte	0x50
 2287 0c4a 30       		.uleb128 0x30
 2288 0c4b 01       		.uleb128 0x1
 2289 0c4c 52       		.byte	0x52
 2290 0c4d 03       		.uleb128 0x3
 2291 0c4e F3       		.byte	0xf3
 2292 0c4f 01       		.uleb128 0x1
 2293 0c50 51       		.byte	0x51
 2294 0c51 30       		.uleb128 0x30
 2295 0c52 01       		.uleb128 0x1
 2296 0c53 53       		.byte	0x53
 2297 0c54 03       		.uleb128 0x3
 2298 0c55 F3       		.byte	0xf3
 2299 0c56 01       		.uleb128 0x1
 2300 0c57 52       		.byte	0x52
ARM GAS  /tmp/ccomqgAQ.s 			page 48


 2301 0c58 00       		.byte	0
 2302 0c59 00       		.byte	0
 2303 0c5a 2C       		.uleb128 0x2c
 2304 0c5b C2060000 		.4byte	.LASF170
 2305 0c5f 01       		.byte	0x1
 2306 0c60 4601     		.2byte	0x146
 2307 0c62 9F0A0000 		.4byte	0xa9f
 2308 0c66 00000000 		.4byte	.LFB243
 2309 0c6a 0C000000 		.4byte	.LFE243-.LFB243
 2310 0c6e 01       		.uleb128 0x1
 2311 0c6f 9C       		.byte	0x9c
 2312 0c70 C90C0000 		.4byte	0xcc9
 2313 0c74 2D       		.uleb128 0x2d
 2314 0c75 D1000000 		.4byte	.LASF164
 2315 0c79 01       		.byte	0x1
 2316 0c7a 4601     		.2byte	0x146
 2317 0c7c AC000000 		.4byte	0xac
 2318 0c80 8C010000 		.4byte	.LLST19
 2319 0c84 2E       		.uleb128 0x2e
 2320 0c85 72616D00 		.ascii	"ram\000"
 2321 0c89 01       		.byte	0x1
 2322 0c8a 4601     		.2byte	0x146
 2323 0c8c C1000000 		.4byte	0xc1
 2324 0c90 B8010000 		.4byte	.LLST20
 2325 0c94 2D       		.uleb128 0x2d
 2326 0c95 5D030000 		.4byte	.LASF165
 2327 0c99 01       		.byte	0x1
 2328 0c9a 4601     		.2byte	0x146
 2329 0c9c AC000000 		.4byte	0xac
 2330 0ca0 E4010000 		.4byte	.LLST21
 2331 0ca4 2F       		.uleb128 0x2f
 2332 0ca5 0C000000 		.4byte	.LVL44
 2333 0ca9 C90C0000 		.4byte	0xcc9
 2334 0cad 30       		.uleb128 0x30
 2335 0cae 01       		.uleb128 0x1
 2336 0caf 50       		.byte	0x50
 2337 0cb0 01       		.uleb128 0x1
 2338 0cb1 30       		.byte	0x30
 2339 0cb2 30       		.uleb128 0x30
 2340 0cb3 01       		.uleb128 0x1
 2341 0cb4 51       		.byte	0x51
 2342 0cb5 03       		.uleb128 0x3
 2343 0cb6 F3       		.byte	0xf3
 2344 0cb7 01       		.uleb128 0x1
 2345 0cb8 50       		.byte	0x50
 2346 0cb9 30       		.uleb128 0x30
 2347 0cba 01       		.uleb128 0x1
 2348 0cbb 52       		.byte	0x52
 2349 0cbc 03       		.uleb128 0x3
 2350 0cbd F3       		.byte	0xf3
 2351 0cbe 01       		.uleb128 0x1
 2352 0cbf 51       		.byte	0x51
 2353 0cc0 30       		.uleb128 0x30
 2354 0cc1 01       		.uleb128 0x1
 2355 0cc2 53       		.byte	0x53
 2356 0cc3 03       		.uleb128 0x3
 2357 0cc4 F3       		.byte	0xf3
ARM GAS  /tmp/ccomqgAQ.s 			page 49


 2358 0cc5 01       		.uleb128 0x1
 2359 0cc6 52       		.byte	0x52
 2360 0cc7 00       		.byte	0
 2361 0cc8 00       		.byte	0
 2362 0cc9 31       		.uleb128 0x31
 2363 0cca AB010000 		.4byte	.LASF172
 2364 0cce 01       		.byte	0x1
 2365 0ccf 3301     		.2byte	0x133
 2366 0cd1 9F0A0000 		.4byte	0xa9f
 2367 0cd5 01       		.byte	0x1
 2368 0cd6 0B0D0000 		.4byte	0xd0b
 2369 0cda 32       		.uleb128 0x32
 2370 0cdb 72040000 		.4byte	.LASF168
 2371 0cdf 01       		.byte	0x1
 2372 0ce0 3301     		.2byte	0x133
 2373 0ce2 8C000000 		.4byte	0x8c
 2374 0ce6 32       		.uleb128 0x32
 2375 0ce7 D1000000 		.4byte	.LASF164
 2376 0ceb 01       		.byte	0x1
 2377 0cec 3301     		.2byte	0x133
 2378 0cee AC000000 		.4byte	0xac
 2379 0cf2 33       		.uleb128 0x33
 2380 0cf3 72616D00 		.ascii	"ram\000"
 2381 0cf7 01       		.byte	0x1
 2382 0cf8 3301     		.2byte	0x133
 2383 0cfa C1000000 		.4byte	0xc1
 2384 0cfe 32       		.uleb128 0x32
 2385 0cff 5D030000 		.4byte	.LASF165
 2386 0d03 01       		.byte	0x1
 2387 0d04 3301     		.2byte	0x133
 2388 0d06 AC000000 		.4byte	0xac
 2389 0d0a 00       		.byte	0
 2390 0d0b 34       		.uleb128 0x34
 2391 0d0c 25060000 		.4byte	.LASF202
 2392 0d10 01       		.byte	0x1
 2393 0d11 A4       		.byte	0xa4
 2394 0d12 08090000 		.4byte	0x908
 2395 0d16 01       		.byte	0x1
 2396 0d17 35       		.uleb128 0x35
 2397 0d18 06010000 		.4byte	.LASF203
 2398 0d1c 01       		.byte	0x1
 2399 0d1d 9F       		.byte	0x9f
 2400 0d1e 08090000 		.4byte	0x908
 2401 0d22 36       		.uleb128 0x36
 2402 0d23 D8040000 		.4byte	.LASF173
 2403 0d27 01       		.byte	0x1
 2404 0d28 99       		.byte	0x99
 2405 0d29 08090000 		.4byte	0x908
 2406 0d2d 01       		.byte	0x1
 2407 0d2e 3E0D0000 		.4byte	0xd3e
 2408 0d32 37       		.uleb128 0x37
 2409 0d33 72040000 		.4byte	.LASF168
 2410 0d37 01       		.byte	0x1
 2411 0d38 99       		.byte	0x99
 2412 0d39 8C000000 		.4byte	0x8c
 2413 0d3d 00       		.byte	0
 2414 0d3e 38       		.uleb128 0x38
ARM GAS  /tmp/ccomqgAQ.s 			page 50


 2415 0d3f FB030000 		.4byte	.LASF174
 2416 0d43 01       		.byte	0x1
 2417 0d44 94       		.byte	0x94
 2418 0d45 08090000 		.4byte	0x908
 2419 0d49 00000000 		.4byte	.LFB238
 2420 0d4d 06000000 		.4byte	.LFE238-.LFB238
 2421 0d51 01       		.uleb128 0x1
 2422 0d52 9C       		.byte	0x9c
 2423 0d53 7D0D0000 		.4byte	0xd7d
 2424 0d57 39       		.uleb128 0x39
 2425 0d58 BC0D0000 		.4byte	0xdbc
 2426 0d5c 00000000 		.4byte	.LBB26
 2427 0d60 06000000 		.4byte	.LBE26-.LBB26
 2428 0d64 01       		.byte	0x1
 2429 0d65 96       		.byte	0x96
 2430 0d66 3A       		.uleb128 0x3a
 2431 0d67 CC0D0000 		.4byte	0xdcc
 2432 0d6b 01       		.byte	0x1
 2433 0d6c 2F       		.uleb128 0x2f
 2434 0d6d 06000000 		.4byte	.LVL30
 2435 0d71 E2110000 		.4byte	0x11e2
 2436 0d75 30       		.uleb128 0x30
 2437 0d76 01       		.uleb128 0x1
 2438 0d77 50       		.byte	0x50
 2439 0d78 01       		.uleb128 0x1
 2440 0d79 31       		.byte	0x31
 2441 0d7a 00       		.byte	0
 2442 0d7b 00       		.byte	0
 2443 0d7c 00       		.byte	0
 2444 0d7d 38       		.uleb128 0x38
 2445 0d7e E7030000 		.4byte	.LASF175
 2446 0d82 01       		.byte	0x1
 2447 0d83 8F       		.byte	0x8f
 2448 0d84 08090000 		.4byte	0x908
 2449 0d88 00000000 		.4byte	.LFB237
 2450 0d8c 06000000 		.4byte	.LFE237-.LFB237
 2451 0d90 01       		.uleb128 0x1
 2452 0d91 9C       		.byte	0x9c
 2453 0d92 BC0D0000 		.4byte	0xdbc
 2454 0d96 39       		.uleb128 0x39
 2455 0d97 BC0D0000 		.4byte	0xdbc
 2456 0d9b 00000000 		.4byte	.LBB24
 2457 0d9f 06000000 		.4byte	.LBE24-.LBB24
 2458 0da3 01       		.byte	0x1
 2459 0da4 91       		.byte	0x91
 2460 0da5 3A       		.uleb128 0x3a
 2461 0da6 CC0D0000 		.4byte	0xdcc
 2462 0daa 00       		.byte	0
 2463 0dab 2F       		.uleb128 0x2f
 2464 0dac 06000000 		.4byte	.LVL28
 2465 0db0 E2110000 		.4byte	0x11e2
 2466 0db4 30       		.uleb128 0x30
 2467 0db5 01       		.uleb128 0x1
 2468 0db6 50       		.byte	0x50
 2469 0db7 01       		.uleb128 0x1
 2470 0db8 30       		.byte	0x30
 2471 0db9 00       		.byte	0
ARM GAS  /tmp/ccomqgAQ.s 			page 51


 2472 0dba 00       		.byte	0
 2473 0dbb 00       		.byte	0
 2474 0dbc 36       		.uleb128 0x36
 2475 0dbd 3F020000 		.4byte	.LASF176
 2476 0dc1 01       		.byte	0x1
 2477 0dc2 8A       		.byte	0x8a
 2478 0dc3 08090000 		.4byte	0x908
 2479 0dc7 01       		.byte	0x1
 2480 0dc8 D80D0000 		.4byte	0xdd8
 2481 0dcc 37       		.uleb128 0x37
 2482 0dcd 72040000 		.4byte	.LASF168
 2483 0dd1 01       		.byte	0x1
 2484 0dd2 8A       		.byte	0x8a
 2485 0dd3 8C000000 		.4byte	0x8c
 2486 0dd7 00       		.byte	0
 2487 0dd8 38       		.uleb128 0x38
 2488 0dd9 1E030000 		.4byte	.LASF177
 2489 0ddd 01       		.byte	0x1
 2490 0dde 85       		.byte	0x85
 2491 0ddf 08090000 		.4byte	0x908
 2492 0de3 00000000 		.4byte	.LFB235
 2493 0de7 0C000000 		.4byte	.LFE235-.LFB235
 2494 0deb 01       		.uleb128 0x1
 2495 0dec 9C       		.byte	0x9c
 2496 0ded 230E0000 		.4byte	0xe23
 2497 0df1 3B       		.uleb128 0x3b
 2498 0df2 5E000000 		.4byte	.LASF178
 2499 0df6 01       		.byte	0x1
 2500 0df7 85       		.byte	0x85
 2501 0df8 08090000 		.4byte	0x908
 2502 0dfc 10020000 		.4byte	.LLST10
 2503 0e00 39       		.uleb128 0x39
 2504 0e01 6E0E0000 		.4byte	0xe6e
 2505 0e05 00000000 		.4byte	.LBB22
 2506 0e09 04000000 		.4byte	.LBE22-.LBB22
 2507 0e0d 01       		.byte	0x1
 2508 0e0e 87       		.byte	0x87
 2509 0e0f 3C       		.uleb128 0x3c
 2510 0e10 890E0000 		.4byte	0xe89
 2511 0e14 32020000 		.4byte	.LLST11
 2512 0e18 3C       		.uleb128 0x3c
 2513 0e19 7E0E0000 		.4byte	0xe7e
 2514 0e1d 45020000 		.4byte	.LLST12
 2515 0e21 00       		.byte	0
 2516 0e22 00       		.byte	0
 2517 0e23 38       		.uleb128 0x38
 2518 0e24 0E030000 		.4byte	.LASF179
 2519 0e28 01       		.byte	0x1
 2520 0e29 80       		.byte	0x80
 2521 0e2a 08090000 		.4byte	0x908
 2522 0e2e 00000000 		.4byte	.LFB234
 2523 0e32 0C000000 		.4byte	.LFE234-.LFB234
 2524 0e36 01       		.uleb128 0x1
 2525 0e37 9C       		.byte	0x9c
 2526 0e38 6E0E0000 		.4byte	0xe6e
 2527 0e3c 3B       		.uleb128 0x3b
 2528 0e3d 5E000000 		.4byte	.LASF178
ARM GAS  /tmp/ccomqgAQ.s 			page 52


 2529 0e41 01       		.byte	0x1
 2530 0e42 80       		.byte	0x80
 2531 0e43 08090000 		.4byte	0x908
 2532 0e47 59020000 		.4byte	.LLST7
 2533 0e4b 39       		.uleb128 0x39
 2534 0e4c 6E0E0000 		.4byte	0xe6e
 2535 0e50 00000000 		.4byte	.LBB20
 2536 0e54 04000000 		.4byte	.LBE20-.LBB20
 2537 0e58 01       		.byte	0x1
 2538 0e59 82       		.byte	0x82
 2539 0e5a 3C       		.uleb128 0x3c
 2540 0e5b 890E0000 		.4byte	0xe89
 2541 0e5f 7B020000 		.4byte	.LLST8
 2542 0e63 3C       		.uleb128 0x3c
 2543 0e64 7E0E0000 		.4byte	0xe7e
 2544 0e68 8E020000 		.4byte	.LLST9
 2545 0e6c 00       		.byte	0
 2546 0e6d 00       		.byte	0
 2547 0e6e 36       		.uleb128 0x36
 2548 0e6f 0B020000 		.4byte	.LASF180
 2549 0e73 01       		.byte	0x1
 2550 0e74 7A       		.byte	0x7a
 2551 0e75 08090000 		.4byte	0x908
 2552 0e79 01       		.byte	0x1
 2553 0e7a 950E0000 		.4byte	0xe95
 2554 0e7e 37       		.uleb128 0x37
 2555 0e7f 72040000 		.4byte	.LASF168
 2556 0e83 01       		.byte	0x1
 2557 0e84 7A       		.byte	0x7a
 2558 0e85 8C000000 		.4byte	0x8c
 2559 0e89 37       		.uleb128 0x37
 2560 0e8a 5E000000 		.4byte	.LASF178
 2561 0e8e 01       		.byte	0x1
 2562 0e8f 7A       		.byte	0x7a
 2563 0e90 08090000 		.4byte	0x908
 2564 0e94 00       		.byte	0
 2565 0e95 38       		.uleb128 0x38
 2566 0e96 E2070000 		.4byte	.LASF181
 2567 0e9a 01       		.byte	0x1
 2568 0e9b 75       		.byte	0x75
 2569 0e9c 9F0A0000 		.4byte	0xa9f
 2570 0ea0 00000000 		.4byte	.LFB232
 2571 0ea4 08000000 		.4byte	.LFE232-.LFB232
 2572 0ea8 01       		.uleb128 0x1
 2573 0ea9 9C       		.byte	0x9c
 2574 0eaa D40E0000 		.4byte	0xed4
 2575 0eae 3B       		.uleb128 0x3b
 2576 0eaf AB030000 		.4byte	.LASF182
 2577 0eb3 01       		.byte	0x1
 2578 0eb4 75       		.byte	0x75
 2579 0eb5 D40E0000 		.4byte	0xed4
 2580 0eb9 A2020000 		.4byte	.LLST5
 2581 0ebd 2F       		.uleb128 0x2f
 2582 0ebe 08000000 		.4byte	.LVL16
 2583 0ec2 190F0000 		.4byte	0xf19
 2584 0ec6 30       		.uleb128 0x30
 2585 0ec7 01       		.uleb128 0x1
ARM GAS  /tmp/ccomqgAQ.s 			page 53


 2586 0ec8 50       		.byte	0x50
 2587 0ec9 01       		.uleb128 0x1
 2588 0eca 31       		.byte	0x31
 2589 0ecb 30       		.uleb128 0x30
 2590 0ecc 01       		.uleb128 0x1
 2591 0ecd 51       		.byte	0x51
 2592 0ece 03       		.uleb128 0x3
 2593 0ecf F3       		.byte	0xf3
 2594 0ed0 01       		.uleb128 0x1
 2595 0ed1 50       		.byte	0x50
 2596 0ed2 00       		.byte	0
 2597 0ed3 00       		.byte	0
 2598 0ed4 13       		.uleb128 0x13
 2599 0ed5 04       		.byte	0x4
 2600 0ed6 AC000000 		.4byte	0xac
 2601 0eda 38       		.uleb128 0x38
 2602 0edb 95080000 		.4byte	.LASF183
 2603 0edf 01       		.byte	0x1
 2604 0ee0 70       		.byte	0x70
 2605 0ee1 9F0A0000 		.4byte	0xa9f
 2606 0ee5 00000000 		.4byte	.LFB231
 2607 0ee9 08000000 		.4byte	.LFE231-.LFB231
 2608 0eed 01       		.uleb128 0x1
 2609 0eee 9C       		.byte	0x9c
 2610 0eef 190F0000 		.4byte	0xf19
 2611 0ef3 3B       		.uleb128 0x3b
 2612 0ef4 AB030000 		.4byte	.LASF182
 2613 0ef8 01       		.byte	0x1
 2614 0ef9 70       		.byte	0x70
 2615 0efa D40E0000 		.4byte	0xed4
 2616 0efe CE020000 		.4byte	.LLST4
 2617 0f02 2F       		.uleb128 0x2f
 2618 0f03 08000000 		.4byte	.LVL13
 2619 0f07 190F0000 		.4byte	0xf19
 2620 0f0b 30       		.uleb128 0x30
 2621 0f0c 01       		.uleb128 0x1
 2622 0f0d 50       		.byte	0x50
 2623 0f0e 01       		.uleb128 0x1
 2624 0f0f 30       		.byte	0x30
 2625 0f10 30       		.uleb128 0x30
 2626 0f11 01       		.uleb128 0x1
 2627 0f12 51       		.byte	0x51
 2628 0f13 03       		.uleb128 0x3
 2629 0f14 F3       		.byte	0xf3
 2630 0f15 01       		.uleb128 0x1
 2631 0f16 50       		.byte	0x50
 2632 0f17 00       		.byte	0
 2633 0f18 00       		.byte	0
 2634 0f19 38       		.uleb128 0x38
 2635 0f1a E2010000 		.4byte	.LASF184
 2636 0f1e 01       		.byte	0x1
 2637 0f1f 69       		.byte	0x69
 2638 0f20 9F0A0000 		.4byte	0xa9f
 2639 0f24 00000000 		.4byte	.LFB230
 2640 0f28 1A000000 		.4byte	.LFE230-.LFB230
 2641 0f2c 01       		.uleb128 0x1
 2642 0f2d 9C       		.byte	0x9c
ARM GAS  /tmp/ccomqgAQ.s 			page 54


 2643 0f2e 6E0F0000 		.4byte	0xf6e
 2644 0f32 3B       		.uleb128 0x3b
 2645 0f33 72040000 		.4byte	.LASF168
 2646 0f37 01       		.byte	0x1
 2647 0f38 69       		.byte	0x69
 2648 0f39 8C000000 		.4byte	0x8c
 2649 0f3d FA020000 		.4byte	.LLST2
 2650 0f41 3B       		.uleb128 0x3b
 2651 0f42 AB030000 		.4byte	.LASF182
 2652 0f46 01       		.byte	0x1
 2653 0f47 69       		.byte	0x69
 2654 0f48 D40E0000 		.4byte	0xed4
 2655 0f4c 1B030000 		.4byte	.LLST3
 2656 0f50 3D       		.uleb128 0x3d
 2657 0f51 0A000000 		.4byte	.LVL8
 2658 0f55 ED110000 		.4byte	0x11ed
 2659 0f59 640F0000 		.4byte	0xf64
 2660 0f5d 30       		.uleb128 0x30
 2661 0f5e 01       		.uleb128 0x1
 2662 0f5f 50       		.byte	0x50
 2663 0f60 02       		.uleb128 0x2
 2664 0f61 75       		.byte	0x75
 2665 0f62 00       		.sleb128 0
 2666 0f63 00       		.byte	0
 2667 0f64 3E       		.uleb128 0x3e
 2668 0f65 1A000000 		.4byte	.LVL10
 2669 0f69 C00F0000 		.4byte	0xfc0
 2670 0f6d 00       		.byte	0
 2671 0f6e 38       		.uleb128 0x38
 2672 0f6f 1E050000 		.4byte	.LASF185
 2673 0f73 01       		.byte	0x1
 2674 0f74 64       		.byte	0x64
 2675 0f75 9F0A0000 		.4byte	0xa9f
 2676 0f79 00000000 		.4byte	.LFB229
 2677 0f7d 06000000 		.4byte	.LFE229-.LFB229
 2678 0f81 01       		.uleb128 0x1
 2679 0f82 9C       		.byte	0x9c
 2680 0f83 970F0000 		.4byte	0xf97
 2681 0f87 2F       		.uleb128 0x2f
 2682 0f88 06000000 		.4byte	.LVL6
 2683 0f8c C00F0000 		.4byte	0xfc0
 2684 0f90 30       		.uleb128 0x30
 2685 0f91 01       		.uleb128 0x1
 2686 0f92 50       		.byte	0x50
 2687 0f93 01       		.uleb128 0x1
 2688 0f94 31       		.byte	0x31
 2689 0f95 00       		.byte	0
 2690 0f96 00       		.byte	0
 2691 0f97 38       		.uleb128 0x38
 2692 0f98 05050000 		.4byte	.LASF186
 2693 0f9c 01       		.byte	0x1
 2694 0f9d 5E       		.byte	0x5e
 2695 0f9e 9F0A0000 		.4byte	0xa9f
 2696 0fa2 00000000 		.4byte	.LFB228
 2697 0fa6 06000000 		.4byte	.LFE228-.LFB228
 2698 0faa 01       		.uleb128 0x1
 2699 0fab 9C       		.byte	0x9c
ARM GAS  /tmp/ccomqgAQ.s 			page 55


 2700 0fac C00F0000 		.4byte	0xfc0
 2701 0fb0 2F       		.uleb128 0x2f
 2702 0fb1 06000000 		.4byte	.LVL5
 2703 0fb5 C00F0000 		.4byte	0xfc0
 2704 0fb9 30       		.uleb128 0x30
 2705 0fba 01       		.uleb128 0x1
 2706 0fbb 50       		.byte	0x50
 2707 0fbc 01       		.uleb128 0x1
 2708 0fbd 30       		.byte	0x30
 2709 0fbe 00       		.byte	0
 2710 0fbf 00       		.byte	0
 2711 0fc0 36       		.uleb128 0x36
 2712 0fc1 60060000 		.4byte	.LASF187
 2713 0fc5 01       		.byte	0x1
 2714 0fc6 44       		.byte	0x44
 2715 0fc7 9F0A0000 		.4byte	0xa9f
 2716 0fcb 01       		.byte	0x1
 2717 0fcc DC0F0000 		.4byte	0xfdc
 2718 0fd0 37       		.uleb128 0x37
 2719 0fd1 72040000 		.4byte	.LASF168
 2720 0fd5 01       		.byte	0x1
 2721 0fd6 44       		.byte	0x44
 2722 0fd7 8C000000 		.4byte	0x8c
 2723 0fdb 00       		.byte	0
 2724 0fdc 3F       		.uleb128 0x3f
 2725 0fdd C00F0000 		.4byte	0xfc0
 2726 0fe1 00000000 		.4byte	.LFB227
 2727 0fe5 40000000 		.4byte	.LFE227-.LFB227
 2728 0fe9 01       		.uleb128 0x1
 2729 0fea 9C       		.byte	0x9c
 2730 0feb 2C100000 		.4byte	0x102c
 2731 0fef 3C       		.uleb128 0x3c
 2732 0ff0 D00F0000 		.4byte	0xfd0
 2733 0ff4 47030000 		.4byte	.LLST0
 2734 0ff8 40       		.uleb128 0x40
 2735 0ff9 00000000 		.4byte	.Ldebug_ranges0+0
 2736 0ffd 1B100000 		.4byte	0x101b
 2737 1001 3C       		.uleb128 0x3c
 2738 1002 D00F0000 		.4byte	0xfd0
 2739 1006 68030000 		.4byte	.LLST1
 2740 100a 41       		.uleb128 0x41
 2741 100b 32000000 		.4byte	.LVL3
 2742 100f F8110000 		.4byte	0x11f8
 2743 1013 30       		.uleb128 0x30
 2744 1014 01       		.uleb128 0x1
 2745 1015 50       		.byte	0x50
 2746 1016 02       		.uleb128 0x2
 2747 1017 75       		.byte	0x75
 2748 1018 00       		.sleb128 0
 2749 1019 00       		.byte	0
 2750 101a 00       		.byte	0
 2751 101b 41       		.uleb128 0x41
 2752 101c 08000000 		.4byte	.LVL1
 2753 1020 03120000 		.4byte	0x1203
 2754 1024 30       		.uleb128 0x30
 2755 1025 01       		.uleb128 0x1
 2756 1026 50       		.byte	0x50
ARM GAS  /tmp/ccomqgAQ.s 			page 56


 2757 1027 02       		.uleb128 0x2
 2758 1028 75       		.byte	0x75
 2759 1029 00       		.sleb128 0
 2760 102a 00       		.byte	0
 2761 102b 00       		.byte	0
 2762 102c 3F       		.uleb128 0x3f
 2763 102d 6E0E0000 		.4byte	0xe6e
 2764 1031 00000000 		.4byte	.LFB233
 2765 1035 0C000000 		.4byte	.LFE233-.LFB233
 2766 1039 01       		.uleb128 0x1
 2767 103a 9C       		.byte	0x9c
 2768 103b 50100000 		.4byte	0x1050
 2769 103f 3C       		.uleb128 0x3c
 2770 1040 7E0E0000 		.4byte	0xe7e
 2771 1044 7B030000 		.4byte	.LLST6
 2772 1048 42       		.uleb128 0x42
 2773 1049 890E0000 		.4byte	0xe89
 2774 104d 01       		.uleb128 0x1
 2775 104e 51       		.byte	0x51
 2776 104f 00       		.byte	0
 2777 1050 3F       		.uleb128 0x3f
 2778 1051 BC0D0000 		.4byte	0xdbc
 2779 1055 00000000 		.4byte	.LFB236
 2780 1059 04000000 		.4byte	.LFE236-.LFB236
 2781 105d 01       		.uleb128 0x1
 2782 105e 9C       		.byte	0x9c
 2783 105f 76100000 		.4byte	0x1076
 2784 1063 3C       		.uleb128 0x3c
 2785 1064 CC0D0000 		.4byte	0xdcc
 2786 1068 9C030000 		.4byte	.LLST13
 2787 106c 3E       		.uleb128 0x3e
 2788 106d 04000000 		.4byte	.LVL26
 2789 1071 E2110000 		.4byte	0x11e2
 2790 1075 00       		.byte	0
 2791 1076 3F       		.uleb128 0x3f
 2792 1077 220D0000 		.4byte	0xd22
 2793 107b 00000000 		.4byte	.LFB239
 2794 107f 04000000 		.4byte	.LFE239-.LFB239
 2795 1083 01       		.uleb128 0x1
 2796 1084 9C       		.byte	0x9c
 2797 1085 93100000 		.4byte	0x1093
 2798 1089 3C       		.uleb128 0x3c
 2799 108a 320D0000 		.4byte	0xd32
 2800 108e BD030000 		.4byte	.LLST14
 2801 1092 00       		.byte	0
 2802 1093 43       		.uleb128 0x43
 2803 1094 0B0D0000 		.4byte	0xd0b
 2804 1098 00000000 		.4byte	.LFB241
 2805 109c 04000000 		.4byte	.LFE241-.LFB241
 2806 10a0 01       		.uleb128 0x1
 2807 10a1 9C       		.byte	0x9c
 2808 10a2 3F       		.uleb128 0x3f
 2809 10a3 C90C0000 		.4byte	0xcc9
 2810 10a7 00000000 		.4byte	.LFB242
 2811 10ab 32000000 		.4byte	.LFE242-.LFB242
 2812 10af 01       		.uleb128 0x1
 2813 10b0 9C       		.byte	0x9c
ARM GAS  /tmp/ccomqgAQ.s 			page 57


 2814 10b1 42110000 		.4byte	0x1142
 2815 10b5 3C       		.uleb128 0x3c
 2816 10b6 DA0C0000 		.4byte	0xcda
 2817 10ba DE030000 		.4byte	.LLST15
 2818 10be 3C       		.uleb128 0x3c
 2819 10bf E60C0000 		.4byte	0xce6
 2820 10c3 FF030000 		.4byte	.LLST16
 2821 10c7 3C       		.uleb128 0x3c
 2822 10c8 F20C0000 		.4byte	0xcf2
 2823 10cc 20040000 		.4byte	.LLST17
 2824 10d0 3C       		.uleb128 0x3c
 2825 10d1 FE0C0000 		.4byte	0xcfe
 2826 10d5 3E040000 		.4byte	.LLST18
 2827 10d9 44       		.uleb128 0x44
 2828 10da 26000000 		.4byte	.LBB30
 2829 10de 04000000 		.4byte	.LBE30-.LBB30
 2830 10e2 10110000 		.4byte	0x1110
 2831 10e6 45       		.uleb128 0x45
 2832 10e7 DA0C0000 		.4byte	0xcda
 2833 10eb 42       		.uleb128 0x42
 2834 10ec E60C0000 		.4byte	0xce6
 2835 10f0 04       		.uleb128 0x4
 2836 10f1 F3       		.byte	0xf3
 2837 10f2 01       		.uleb128 0x1
 2838 10f3 51       		.byte	0x51
 2839 10f4 9F       		.byte	0x9f
 2840 10f5 42       		.uleb128 0x42
 2841 10f6 F20C0000 		.4byte	0xcf2
 2842 10fa 01       		.uleb128 0x1
 2843 10fb 55       		.byte	0x55
 2844 10fc 42       		.uleb128 0x42
 2845 10fd FE0C0000 		.4byte	0xcfe
 2846 1101 04       		.uleb128 0x4
 2847 1102 F3       		.byte	0xf3
 2848 1103 01       		.uleb128 0x1
 2849 1104 53       		.byte	0x53
 2850 1105 9F       		.byte	0x9f
 2851 1106 46       		.uleb128 0x46
 2852 1107 2A000000 		.4byte	.LVL39
 2853 110b 0E120000 		.4byte	0x120e
 2854 110f 00       		.byte	0
 2855 1110 3D       		.uleb128 0x3d
 2856 1111 0C000000 		.4byte	.LVL35
 2857 1115 19120000 		.4byte	0x1219
 2858 1119 2B110000 		.4byte	0x112b
 2859 111d 30       		.uleb128 0x30
 2860 111e 01       		.uleb128 0x1
 2861 111f 51       		.byte	0x51
 2862 1120 03       		.uleb128 0x3
 2863 1121 F3       		.byte	0xf3
 2864 1122 01       		.uleb128 0x1
 2865 1123 51       		.byte	0x51
 2866 1124 30       		.uleb128 0x30
 2867 1125 01       		.uleb128 0x1
 2868 1126 52       		.byte	0x52
 2869 1127 02       		.uleb128 0x2
 2870 1128 74       		.byte	0x74
ARM GAS  /tmp/ccomqgAQ.s 			page 58


 2871 1129 00       		.sleb128 0
 2872 112a 00       		.byte	0
 2873 112b 41       		.uleb128 0x41
 2874 112c 20000000 		.4byte	.LVL37
 2875 1130 24120000 		.4byte	0x1224
 2876 1134 30       		.uleb128 0x30
 2877 1135 01       		.uleb128 0x1
 2878 1136 50       		.byte	0x50
 2879 1137 02       		.uleb128 0x2
 2880 1138 75       		.byte	0x75
 2881 1139 00       		.sleb128 0
 2882 113a 30       		.uleb128 0x30
 2883 113b 01       		.uleb128 0x1
 2884 113c 51       		.byte	0x51
 2885 113d 02       		.uleb128 0x2
 2886 113e 74       		.byte	0x74
 2887 113f 00       		.sleb128 0
 2888 1140 00       		.byte	0
 2889 1141 00       		.byte	0
 2890 1142 3F       		.uleb128 0x3f
 2891 1143 A90B0000 		.4byte	0xba9
 2892 1147 00000000 		.4byte	.LFB245
 2893 114b 32000000 		.4byte	.LFE245-.LFB245
 2894 114f 01       		.uleb128 0x1
 2895 1150 9C       		.byte	0x9c
 2896 1151 E2110000 		.4byte	0x11e2
 2897 1155 3C       		.uleb128 0x3c
 2898 1156 BA0B0000 		.4byte	0xbba
 2899 115a 5F040000 		.4byte	.LLST25
 2900 115e 3C       		.uleb128 0x3c
 2901 115f C60B0000 		.4byte	0xbc6
 2902 1163 80040000 		.4byte	.LLST26
 2903 1167 3C       		.uleb128 0x3c
 2904 1168 D20B0000 		.4byte	0xbd2
 2905 116c A1040000 		.4byte	.LLST27
 2906 1170 3C       		.uleb128 0x3c
 2907 1171 DE0B0000 		.4byte	0xbde
 2908 1175 BF040000 		.4byte	.LLST28
 2909 1179 44       		.uleb128 0x44
 2910 117a 26000000 		.4byte	.LBB34
 2911 117e 04000000 		.4byte	.LBE34-.LBB34
 2912 1182 B0110000 		.4byte	0x11b0
 2913 1186 45       		.uleb128 0x45
 2914 1187 BA0B0000 		.4byte	0xbba
 2915 118b 42       		.uleb128 0x42
 2916 118c C60B0000 		.4byte	0xbc6
 2917 1190 04       		.uleb128 0x4
 2918 1191 F3       		.byte	0xf3
 2919 1192 01       		.uleb128 0x1
 2920 1193 51       		.byte	0x51
 2921 1194 9F       		.byte	0x9f
 2922 1195 42       		.uleb128 0x42
 2923 1196 D20B0000 		.4byte	0xbd2
 2924 119a 01       		.uleb128 0x1
 2925 119b 55       		.byte	0x55
 2926 119c 42       		.uleb128 0x42
 2927 119d DE0B0000 		.4byte	0xbde
ARM GAS  /tmp/ccomqgAQ.s 			page 59


 2928 11a1 04       		.uleb128 0x4
 2929 11a2 F3       		.byte	0xf3
 2930 11a3 01       		.uleb128 0x1
 2931 11a4 53       		.byte	0x53
 2932 11a5 9F       		.byte	0x9f
 2933 11a6 46       		.uleb128 0x46
 2934 11a7 2A000000 		.4byte	.LVL56
 2935 11ab 2F120000 		.4byte	0x122f
 2936 11af 00       		.byte	0
 2937 11b0 3D       		.uleb128 0x3d
 2938 11b1 0C000000 		.4byte	.LVL52
 2939 11b5 3A120000 		.4byte	0x123a
 2940 11b9 CB110000 		.4byte	0x11cb
 2941 11bd 30       		.uleb128 0x30
 2942 11be 01       		.uleb128 0x1
 2943 11bf 51       		.byte	0x51
 2944 11c0 03       		.uleb128 0x3
 2945 11c1 F3       		.byte	0xf3
 2946 11c2 01       		.uleb128 0x1
 2947 11c3 51       		.byte	0x51
 2948 11c4 30       		.uleb128 0x30
 2949 11c5 01       		.uleb128 0x1
 2950 11c6 52       		.byte	0x52
 2951 11c7 02       		.uleb128 0x2
 2952 11c8 74       		.byte	0x74
 2953 11c9 00       		.sleb128 0
 2954 11ca 00       		.byte	0
 2955 11cb 41       		.uleb128 0x41
 2956 11cc 20000000 		.4byte	.LVL54
 2957 11d0 45120000 		.4byte	0x1245
 2958 11d4 30       		.uleb128 0x30
 2959 11d5 01       		.uleb128 0x1
 2960 11d6 50       		.byte	0x50
 2961 11d7 02       		.uleb128 0x2
 2962 11d8 75       		.byte	0x75
 2963 11d9 00       		.sleb128 0
 2964 11da 30       		.uleb128 0x30
 2965 11db 01       		.uleb128 0x1
 2966 11dc 51       		.byte	0x51
 2967 11dd 02       		.uleb128 0x2
 2968 11de 74       		.byte	0x74
 2969 11df 00       		.sleb128 0
 2970 11e0 00       		.byte	0
 2971 11e1 00       		.byte	0
 2972 11e2 47       		.uleb128 0x47
 2973 11e3 64090000 		.4byte	.LASF188
 2974 11e7 64090000 		.4byte	.LASF188
 2975 11eb 11       		.byte	0x11
 2976 11ec AA       		.byte	0xaa
 2977 11ed 47       		.uleb128 0x47
 2978 11ee BB030000 		.4byte	.LASF189
 2979 11f2 BB030000 		.4byte	.LASF189
 2980 11f6 11       		.byte	0x11
 2981 11f7 A2       		.byte	0xa2
 2982 11f8 47       		.uleb128 0x47
 2983 11f9 CA020000 		.4byte	.LASF190
 2984 11fd CA020000 		.4byte	.LASF190
ARM GAS  /tmp/ccomqgAQ.s 			page 60


 2985 1201 11       		.byte	0x11
 2986 1202 92       		.byte	0x92
 2987 1203 47       		.uleb128 0x47
 2988 1204 65050000 		.4byte	.LASF191
 2989 1208 65050000 		.4byte	.LASF191
 2990 120c 11       		.byte	0x11
 2991 120d 8A       		.byte	0x8a
 2992 120e 47       		.uleb128 0x47
 2993 120f D6000000 		.4byte	.LASF192
 2994 1213 D6000000 		.4byte	.LASF192
 2995 1217 11       		.byte	0x11
 2996 1218 D8       		.byte	0xd8
 2997 1219 47       		.uleb128 0x47
 2998 121a 1A000000 		.4byte	.LASF193
 2999 121e 1A000000 		.4byte	.LASF193
 3000 1222 11       		.byte	0x11
 3001 1223 C0       		.byte	0xc0
 3002 1224 47       		.uleb128 0x47
 3003 1225 44040000 		.4byte	.LASF194
 3004 1229 44040000 		.4byte	.LASF194
 3005 122d 11       		.byte	0x11
 3006 122e CC       		.byte	0xcc
 3007 122f 47       		.uleb128 0x47
 3008 1230 62070000 		.4byte	.LASF195
 3009 1234 62070000 		.4byte	.LASF195
 3010 1238 11       		.byte	0x11
 3011 1239 FC       		.byte	0xfc
 3012 123a 47       		.uleb128 0x47
 3013 123b 65020000 		.4byte	.LASF196
 3014 123f 65020000 		.4byte	.LASF196
 3015 1243 11       		.byte	0x11
 3016 1244 E4       		.byte	0xe4
 3017 1245 47       		.uleb128 0x47
 3018 1246 7F030000 		.4byte	.LASF197
 3019 124a 7F030000 		.4byte	.LASF197
 3020 124e 11       		.byte	0x11
 3021 124f F0       		.byte	0xf0
 3022 1250 00       		.byte	0
 3023              		.section	.debug_abbrev,"",%progbits
 3024              	.Ldebug_abbrev0:
 3025 0000 01       		.uleb128 0x1
 3026 0001 11       		.uleb128 0x11
 3027 0002 01       		.byte	0x1
 3028 0003 25       		.uleb128 0x25
 3029 0004 0E       		.uleb128 0xe
 3030 0005 13       		.uleb128 0x13
 3031 0006 0B       		.uleb128 0xb
 3032 0007 03       		.uleb128 0x3
 3033 0008 0E       		.uleb128 0xe
 3034 0009 1B       		.uleb128 0x1b
 3035 000a 0E       		.uleb128 0xe
 3036 000b 55       		.uleb128 0x55
 3037 000c 17       		.uleb128 0x17
 3038 000d 11       		.uleb128 0x11
 3039 000e 01       		.uleb128 0x1
 3040 000f 10       		.uleb128 0x10
 3041 0010 17       		.uleb128 0x17
ARM GAS  /tmp/ccomqgAQ.s 			page 61


 3042 0011 00       		.byte	0
 3043 0012 00       		.byte	0
 3044 0013 02       		.uleb128 0x2
 3045 0014 24       		.uleb128 0x24
 3046 0015 00       		.byte	0
 3047 0016 0B       		.uleb128 0xb
 3048 0017 0B       		.uleb128 0xb
 3049 0018 3E       		.uleb128 0x3e
 3050 0019 0B       		.uleb128 0xb
 3051 001a 03       		.uleb128 0x3
 3052 001b 08       		.uleb128 0x8
 3053 001c 00       		.byte	0
 3054 001d 00       		.byte	0
 3055 001e 03       		.uleb128 0x3
 3056 001f 24       		.uleb128 0x24
 3057 0020 00       		.byte	0
 3058 0021 0B       		.uleb128 0xb
 3059 0022 0B       		.uleb128 0xb
 3060 0023 3E       		.uleb128 0x3e
 3061 0024 0B       		.uleb128 0xb
 3062 0025 03       		.uleb128 0x3
 3063 0026 0E       		.uleb128 0xe
 3064 0027 00       		.byte	0
 3065 0028 00       		.byte	0
 3066 0029 04       		.uleb128 0x4
 3067 002a 16       		.uleb128 0x16
 3068 002b 00       		.byte	0
 3069 002c 03       		.uleb128 0x3
 3070 002d 0E       		.uleb128 0xe
 3071 002e 3A       		.uleb128 0x3a
 3072 002f 0B       		.uleb128 0xb
 3073 0030 3B       		.uleb128 0x3b
 3074 0031 0B       		.uleb128 0xb
 3075 0032 49       		.uleb128 0x49
 3076 0033 13       		.uleb128 0x13
 3077 0034 00       		.byte	0
 3078 0035 00       		.byte	0
 3079 0036 05       		.uleb128 0x5
 3080 0037 26       		.uleb128 0x26
 3081 0038 00       		.byte	0
 3082 0039 49       		.uleb128 0x49
 3083 003a 13       		.uleb128 0x13
 3084 003b 00       		.byte	0
 3085 003c 00       		.byte	0
 3086 003d 06       		.uleb128 0x6
 3087 003e 35       		.uleb128 0x35
 3088 003f 00       		.byte	0
 3089 0040 49       		.uleb128 0x49
 3090 0041 13       		.uleb128 0x13
 3091 0042 00       		.byte	0
 3092 0043 00       		.byte	0
 3093 0044 07       		.uleb128 0x7
 3094 0045 0F       		.uleb128 0xf
 3095 0046 00       		.byte	0
 3096 0047 0B       		.uleb128 0xb
 3097 0048 0B       		.uleb128 0xb
 3098 0049 00       		.byte	0
ARM GAS  /tmp/ccomqgAQ.s 			page 62


 3099 004a 00       		.byte	0
 3100 004b 08       		.uleb128 0x8
 3101 004c 34       		.uleb128 0x34
 3102 004d 00       		.byte	0
 3103 004e 03       		.uleb128 0x3
 3104 004f 0E       		.uleb128 0xe
 3105 0050 3A       		.uleb128 0x3a
 3106 0051 0B       		.uleb128 0xb
 3107 0052 3B       		.uleb128 0x3b
 3108 0053 05       		.uleb128 0x5
 3109 0054 49       		.uleb128 0x49
 3110 0055 13       		.uleb128 0x13
 3111 0056 3F       		.uleb128 0x3f
 3112 0057 19       		.uleb128 0x19
 3113 0058 3C       		.uleb128 0x3c
 3114 0059 19       		.uleb128 0x19
 3115 005a 00       		.byte	0
 3116 005b 00       		.byte	0
 3117 005c 09       		.uleb128 0x9
 3118 005d 34       		.uleb128 0x34
 3119 005e 00       		.byte	0
 3120 005f 03       		.uleb128 0x3
 3121 0060 0E       		.uleb128 0xe
 3122 0061 3A       		.uleb128 0x3a
 3123 0062 0B       		.uleb128 0xb
 3124 0063 3B       		.uleb128 0x3b
 3125 0064 0B       		.uleb128 0xb
 3126 0065 49       		.uleb128 0x49
 3127 0066 13       		.uleb128 0x13
 3128 0067 3F       		.uleb128 0x3f
 3129 0068 19       		.uleb128 0x19
 3130 0069 3C       		.uleb128 0x3c
 3131 006a 19       		.uleb128 0x19
 3132 006b 00       		.byte	0
 3133 006c 00       		.byte	0
 3134 006d 0A       		.uleb128 0xa
 3135 006e 16       		.uleb128 0x16
 3136 006f 00       		.byte	0
 3137 0070 03       		.uleb128 0x3
 3138 0071 0E       		.uleb128 0xe
 3139 0072 3A       		.uleb128 0x3a
 3140 0073 0B       		.uleb128 0xb
 3141 0074 3B       		.uleb128 0x3b
 3142 0075 05       		.uleb128 0x5
 3143 0076 49       		.uleb128 0x49
 3144 0077 13       		.uleb128 0x13
 3145 0078 00       		.byte	0
 3146 0079 00       		.byte	0
 3147 007a 0B       		.uleb128 0xb
 3148 007b 17       		.uleb128 0x17
 3149 007c 01       		.byte	0x1
 3150 007d 0B       		.uleb128 0xb
 3151 007e 0B       		.uleb128 0xb
 3152 007f 3A       		.uleb128 0x3a
 3153 0080 0B       		.uleb128 0xb
 3154 0081 3B       		.uleb128 0x3b
 3155 0082 0B       		.uleb128 0xb
ARM GAS  /tmp/ccomqgAQ.s 			page 63


 3156 0083 01       		.uleb128 0x1
 3157 0084 13       		.uleb128 0x13
 3158 0085 00       		.byte	0
 3159 0086 00       		.byte	0
 3160 0087 0C       		.uleb128 0xc
 3161 0088 0D       		.uleb128 0xd
 3162 0089 00       		.byte	0
 3163 008a 03       		.uleb128 0x3
 3164 008b 0E       		.uleb128 0xe
 3165 008c 3A       		.uleb128 0x3a
 3166 008d 0B       		.uleb128 0xb
 3167 008e 3B       		.uleb128 0x3b
 3168 008f 0B       		.uleb128 0xb
 3169 0090 49       		.uleb128 0x49
 3170 0091 13       		.uleb128 0x13
 3171 0092 00       		.byte	0
 3172 0093 00       		.byte	0
 3173 0094 0D       		.uleb128 0xd
 3174 0095 01       		.uleb128 0x1
 3175 0096 01       		.byte	0x1
 3176 0097 49       		.uleb128 0x49
 3177 0098 13       		.uleb128 0x13
 3178 0099 01       		.uleb128 0x1
 3179 009a 13       		.uleb128 0x13
 3180 009b 00       		.byte	0
 3181 009c 00       		.byte	0
 3182 009d 0E       		.uleb128 0xe
 3183 009e 21       		.uleb128 0x21
 3184 009f 00       		.byte	0
 3185 00a0 49       		.uleb128 0x49
 3186 00a1 13       		.uleb128 0x13
 3187 00a2 2F       		.uleb128 0x2f
 3188 00a3 0B       		.uleb128 0xb
 3189 00a4 00       		.byte	0
 3190 00a5 00       		.byte	0
 3191 00a6 0F       		.uleb128 0xf
 3192 00a7 13       		.uleb128 0x13
 3193 00a8 01       		.byte	0x1
 3194 00a9 0B       		.uleb128 0xb
 3195 00aa 0B       		.uleb128 0xb
 3196 00ab 3A       		.uleb128 0x3a
 3197 00ac 0B       		.uleb128 0xb
 3198 00ad 3B       		.uleb128 0x3b
 3199 00ae 0B       		.uleb128 0xb
 3200 00af 01       		.uleb128 0x1
 3201 00b0 13       		.uleb128 0x13
 3202 00b1 00       		.byte	0
 3203 00b2 00       		.byte	0
 3204 00b3 10       		.uleb128 0x10
 3205 00b4 0D       		.uleb128 0xd
 3206 00b5 00       		.byte	0
 3207 00b6 03       		.uleb128 0x3
 3208 00b7 0E       		.uleb128 0xe
 3209 00b8 3A       		.uleb128 0x3a
 3210 00b9 0B       		.uleb128 0xb
 3211 00ba 3B       		.uleb128 0x3b
 3212 00bb 0B       		.uleb128 0xb
ARM GAS  /tmp/ccomqgAQ.s 			page 64


 3213 00bc 49       		.uleb128 0x49
 3214 00bd 13       		.uleb128 0x13
 3215 00be 38       		.uleb128 0x38
 3216 00bf 0B       		.uleb128 0xb
 3217 00c0 00       		.byte	0
 3218 00c1 00       		.byte	0
 3219 00c2 11       		.uleb128 0x11
 3220 00c3 13       		.uleb128 0x13
 3221 00c4 01       		.byte	0x1
 3222 00c5 03       		.uleb128 0x3
 3223 00c6 0E       		.uleb128 0xe
 3224 00c7 0B       		.uleb128 0xb
 3225 00c8 0B       		.uleb128 0xb
 3226 00c9 3A       		.uleb128 0x3a
 3227 00ca 0B       		.uleb128 0xb
 3228 00cb 3B       		.uleb128 0x3b
 3229 00cc 0B       		.uleb128 0xb
 3230 00cd 01       		.uleb128 0x1
 3231 00ce 13       		.uleb128 0x13
 3232 00cf 00       		.byte	0
 3233 00d0 00       		.byte	0
 3234 00d1 12       		.uleb128 0x12
 3235 00d2 0D       		.uleb128 0xd
 3236 00d3 00       		.byte	0
 3237 00d4 03       		.uleb128 0x3
 3238 00d5 08       		.uleb128 0x8
 3239 00d6 3A       		.uleb128 0x3a
 3240 00d7 0B       		.uleb128 0xb
 3241 00d8 3B       		.uleb128 0x3b
 3242 00d9 0B       		.uleb128 0xb
 3243 00da 49       		.uleb128 0x49
 3244 00db 13       		.uleb128 0x13
 3245 00dc 38       		.uleb128 0x38
 3246 00dd 0B       		.uleb128 0xb
 3247 00de 00       		.byte	0
 3248 00df 00       		.byte	0
 3249 00e0 13       		.uleb128 0x13
 3250 00e1 0F       		.uleb128 0xf
 3251 00e2 00       		.byte	0
 3252 00e3 0B       		.uleb128 0xb
 3253 00e4 0B       		.uleb128 0xb
 3254 00e5 49       		.uleb128 0x49
 3255 00e6 13       		.uleb128 0x13
 3256 00e7 00       		.byte	0
 3257 00e8 00       		.byte	0
 3258 00e9 14       		.uleb128 0x14
 3259 00ea 13       		.uleb128 0x13
 3260 00eb 01       		.byte	0x1
 3261 00ec 03       		.uleb128 0x3
 3262 00ed 0E       		.uleb128 0xe
 3263 00ee 0B       		.uleb128 0xb
 3264 00ef 05       		.uleb128 0x5
 3265 00f0 3A       		.uleb128 0x3a
 3266 00f1 0B       		.uleb128 0xb
 3267 00f2 3B       		.uleb128 0x3b
 3268 00f3 0B       		.uleb128 0xb
 3269 00f4 01       		.uleb128 0x1
ARM GAS  /tmp/ccomqgAQ.s 			page 65


 3270 00f5 13       		.uleb128 0x13
 3271 00f6 00       		.byte	0
 3272 00f7 00       		.byte	0
 3273 00f8 15       		.uleb128 0x15
 3274 00f9 0D       		.uleb128 0xd
 3275 00fa 00       		.byte	0
 3276 00fb 03       		.uleb128 0x3
 3277 00fc 0E       		.uleb128 0xe
 3278 00fd 3A       		.uleb128 0x3a
 3279 00fe 0B       		.uleb128 0xb
 3280 00ff 3B       		.uleb128 0x3b
 3281 0100 0B       		.uleb128 0xb
 3282 0101 49       		.uleb128 0x49
 3283 0102 13       		.uleb128 0x13
 3284 0103 38       		.uleb128 0x38
 3285 0104 05       		.uleb128 0x5
 3286 0105 00       		.byte	0
 3287 0106 00       		.byte	0
 3288 0107 16       		.uleb128 0x16
 3289 0108 15       		.uleb128 0x15
 3290 0109 00       		.byte	0
 3291 010a 27       		.uleb128 0x27
 3292 010b 19       		.uleb128 0x19
 3293 010c 00       		.byte	0
 3294 010d 00       		.byte	0
 3295 010e 17       		.uleb128 0x17
 3296 010f 15       		.uleb128 0x15
 3297 0110 01       		.byte	0x1
 3298 0111 27       		.uleb128 0x27
 3299 0112 19       		.uleb128 0x19
 3300 0113 49       		.uleb128 0x49
 3301 0114 13       		.uleb128 0x13
 3302 0115 01       		.uleb128 0x1
 3303 0116 13       		.uleb128 0x13
 3304 0117 00       		.byte	0
 3305 0118 00       		.byte	0
 3306 0119 18       		.uleb128 0x18
 3307 011a 05       		.uleb128 0x5
 3308 011b 00       		.byte	0
 3309 011c 49       		.uleb128 0x49
 3310 011d 13       		.uleb128 0x13
 3311 011e 00       		.byte	0
 3312 011f 00       		.byte	0
 3313 0120 19       		.uleb128 0x19
 3314 0121 13       		.uleb128 0x13
 3315 0122 01       		.byte	0x1
 3316 0123 03       		.uleb128 0x3
 3317 0124 0E       		.uleb128 0xe
 3318 0125 0B       		.uleb128 0xb
 3319 0126 05       		.uleb128 0x5
 3320 0127 3A       		.uleb128 0x3a
 3321 0128 0B       		.uleb128 0xb
 3322 0129 3B       		.uleb128 0x3b
 3323 012a 05       		.uleb128 0x5
 3324 012b 01       		.uleb128 0x1
 3325 012c 13       		.uleb128 0x13
 3326 012d 00       		.byte	0
ARM GAS  /tmp/ccomqgAQ.s 			page 66


 3327 012e 00       		.byte	0
 3328 012f 1A       		.uleb128 0x1a
 3329 0130 0D       		.uleb128 0xd
 3330 0131 00       		.byte	0
 3331 0132 03       		.uleb128 0x3
 3332 0133 0E       		.uleb128 0xe
 3333 0134 3A       		.uleb128 0x3a
 3334 0135 0B       		.uleb128 0xb
 3335 0136 3B       		.uleb128 0x3b
 3336 0137 05       		.uleb128 0x5
 3337 0138 49       		.uleb128 0x49
 3338 0139 13       		.uleb128 0x13
 3339 013a 38       		.uleb128 0x38
 3340 013b 0B       		.uleb128 0xb
 3341 013c 00       		.byte	0
 3342 013d 00       		.byte	0
 3343 013e 1B       		.uleb128 0x1b
 3344 013f 0D       		.uleb128 0xd
 3345 0140 00       		.byte	0
 3346 0141 03       		.uleb128 0x3
 3347 0142 0E       		.uleb128 0xe
 3348 0143 3A       		.uleb128 0x3a
 3349 0144 0B       		.uleb128 0xb
 3350 0145 3B       		.uleb128 0x3b
 3351 0146 05       		.uleb128 0x5
 3352 0147 49       		.uleb128 0x49
 3353 0148 13       		.uleb128 0x13
 3354 0149 38       		.uleb128 0x38
 3355 014a 05       		.uleb128 0x5
 3356 014b 00       		.byte	0
 3357 014c 00       		.byte	0
 3358 014d 1C       		.uleb128 0x1c
 3359 014e 13       		.uleb128 0x13
 3360 014f 01       		.byte	0x1
 3361 0150 03       		.uleb128 0x3
 3362 0151 0E       		.uleb128 0xe
 3363 0152 0B       		.uleb128 0xb
 3364 0153 0B       		.uleb128 0xb
 3365 0154 3A       		.uleb128 0x3a
 3366 0155 0B       		.uleb128 0xb
 3367 0156 3B       		.uleb128 0x3b
 3368 0157 05       		.uleb128 0x5
 3369 0158 01       		.uleb128 0x1
 3370 0159 13       		.uleb128 0x13
 3371 015a 00       		.byte	0
 3372 015b 00       		.byte	0
 3373 015c 1D       		.uleb128 0x1d
 3374 015d 13       		.uleb128 0x13
 3375 015e 01       		.byte	0x1
 3376 015f 0B       		.uleb128 0xb
 3377 0160 0B       		.uleb128 0xb
 3378 0161 3A       		.uleb128 0x3a
 3379 0162 0B       		.uleb128 0xb
 3380 0163 3B       		.uleb128 0x3b
 3381 0164 05       		.uleb128 0x5
 3382 0165 01       		.uleb128 0x1
 3383 0166 13       		.uleb128 0x13
ARM GAS  /tmp/ccomqgAQ.s 			page 67


 3384 0167 00       		.byte	0
 3385 0168 00       		.byte	0
 3386 0169 1E       		.uleb128 0x1e
 3387 016a 17       		.uleb128 0x17
 3388 016b 01       		.byte	0x1
 3389 016c 0B       		.uleb128 0xb
 3390 016d 0B       		.uleb128 0xb
 3391 016e 3A       		.uleb128 0x3a
 3392 016f 0B       		.uleb128 0xb
 3393 0170 3B       		.uleb128 0x3b
 3394 0171 05       		.uleb128 0x5
 3395 0172 01       		.uleb128 0x1
 3396 0173 13       		.uleb128 0x13
 3397 0174 00       		.byte	0
 3398 0175 00       		.byte	0
 3399 0176 1F       		.uleb128 0x1f
 3400 0177 0D       		.uleb128 0xd
 3401 0178 00       		.byte	0
 3402 0179 03       		.uleb128 0x3
 3403 017a 0E       		.uleb128 0xe
 3404 017b 3A       		.uleb128 0x3a
 3405 017c 0B       		.uleb128 0xb
 3406 017d 3B       		.uleb128 0x3b
 3407 017e 05       		.uleb128 0x5
 3408 017f 49       		.uleb128 0x49
 3409 0180 13       		.uleb128 0x13
 3410 0181 00       		.byte	0
 3411 0182 00       		.byte	0
 3412 0183 20       		.uleb128 0x20
 3413 0184 15       		.uleb128 0x15
 3414 0185 01       		.byte	0x1
 3415 0186 27       		.uleb128 0x27
 3416 0187 19       		.uleb128 0x19
 3417 0188 01       		.uleb128 0x1
 3418 0189 13       		.uleb128 0x13
 3419 018a 00       		.byte	0
 3420 018b 00       		.byte	0
 3421 018c 21       		.uleb128 0x21
 3422 018d 26       		.uleb128 0x26
 3423 018e 00       		.byte	0
 3424 018f 00       		.byte	0
 3425 0190 00       		.byte	0
 3426 0191 22       		.uleb128 0x22
 3427 0192 34       		.uleb128 0x34
 3428 0193 00       		.byte	0
 3429 0194 03       		.uleb128 0x3
 3430 0195 0E       		.uleb128 0xe
 3431 0196 3A       		.uleb128 0x3a
 3432 0197 0B       		.uleb128 0xb
 3433 0198 3B       		.uleb128 0x3b
 3434 0199 0B       		.uleb128 0xb
 3435 019a 49       		.uleb128 0x49
 3436 019b 13       		.uleb128 0x13
 3437 019c 02       		.uleb128 0x2
 3438 019d 18       		.uleb128 0x18
 3439 019e 00       		.byte	0
 3440 019f 00       		.byte	0
ARM GAS  /tmp/ccomqgAQ.s 			page 68


 3441 01a0 23       		.uleb128 0x23
 3442 01a1 04       		.uleb128 0x4
 3443 01a2 01       		.byte	0x1
 3444 01a3 03       		.uleb128 0x3
 3445 01a4 0E       		.uleb128 0xe
 3446 01a5 0B       		.uleb128 0xb
 3447 01a6 0B       		.uleb128 0xb
 3448 01a7 49       		.uleb128 0x49
 3449 01a8 13       		.uleb128 0x13
 3450 01a9 3A       		.uleb128 0x3a
 3451 01aa 0B       		.uleb128 0xb
 3452 01ab 3B       		.uleb128 0x3b
 3453 01ac 05       		.uleb128 0x5
 3454 01ad 01       		.uleb128 0x1
 3455 01ae 13       		.uleb128 0x13
 3456 01af 00       		.byte	0
 3457 01b0 00       		.byte	0
 3458 01b1 24       		.uleb128 0x24
 3459 01b2 28       		.uleb128 0x28
 3460 01b3 00       		.byte	0
 3461 01b4 03       		.uleb128 0x3
 3462 01b5 0E       		.uleb128 0xe
 3463 01b6 1C       		.uleb128 0x1c
 3464 01b7 0D       		.uleb128 0xd
 3465 01b8 00       		.byte	0
 3466 01b9 00       		.byte	0
 3467 01ba 25       		.uleb128 0x25
 3468 01bb 28       		.uleb128 0x28
 3469 01bc 00       		.byte	0
 3470 01bd 03       		.uleb128 0x3
 3471 01be 0E       		.uleb128 0xe
 3472 01bf 1C       		.uleb128 0x1c
 3473 01c0 0B       		.uleb128 0xb
 3474 01c1 00       		.byte	0
 3475 01c2 00       		.byte	0
 3476 01c3 26       		.uleb128 0x26
 3477 01c4 16       		.uleb128 0x16
 3478 01c5 00       		.byte	0
 3479 01c6 03       		.uleb128 0x3
 3480 01c7 08       		.uleb128 0x8
 3481 01c8 3A       		.uleb128 0x3a
 3482 01c9 0B       		.uleb128 0xb
 3483 01ca 3B       		.uleb128 0x3b
 3484 01cb 0B       		.uleb128 0xb
 3485 01cc 49       		.uleb128 0x49
 3486 01cd 13       		.uleb128 0x13
 3487 01ce 00       		.byte	0
 3488 01cf 00       		.byte	0
 3489 01d0 27       		.uleb128 0x27
 3490 01d1 34       		.uleb128 0x34
 3491 01d2 00       		.byte	0
 3492 01d3 03       		.uleb128 0x3
 3493 01d4 0E       		.uleb128 0xe
 3494 01d5 3A       		.uleb128 0x3a
 3495 01d6 0B       		.uleb128 0xb
 3496 01d7 3B       		.uleb128 0x3b
 3497 01d8 0B       		.uleb128 0xb
ARM GAS  /tmp/ccomqgAQ.s 			page 69


 3498 01d9 49       		.uleb128 0x49
 3499 01da 13       		.uleb128 0x13
 3500 01db 1C       		.uleb128 0x1c
 3501 01dc 0D       		.uleb128 0xd
 3502 01dd 00       		.byte	0
 3503 01de 00       		.byte	0
 3504 01df 28       		.uleb128 0x28
 3505 01e0 34       		.uleb128 0x34
 3506 01e1 00       		.byte	0
 3507 01e2 03       		.uleb128 0x3
 3508 01e3 0E       		.uleb128 0xe
 3509 01e4 3A       		.uleb128 0x3a
 3510 01e5 0B       		.uleb128 0xb
 3511 01e6 3B       		.uleb128 0x3b
 3512 01e7 0B       		.uleb128 0xb
 3513 01e8 49       		.uleb128 0x49
 3514 01e9 13       		.uleb128 0x13
 3515 01ea 1C       		.uleb128 0x1c
 3516 01eb 0B       		.uleb128 0xb
 3517 01ec 00       		.byte	0
 3518 01ed 00       		.byte	0
 3519 01ee 29       		.uleb128 0x29
 3520 01ef 34       		.uleb128 0x34
 3521 01f0 00       		.byte	0
 3522 01f1 03       		.uleb128 0x3
 3523 01f2 0E       		.uleb128 0xe
 3524 01f3 3A       		.uleb128 0x3a
 3525 01f4 0B       		.uleb128 0xb
 3526 01f5 3B       		.uleb128 0x3b
 3527 01f6 0B       		.uleb128 0xb
 3528 01f7 49       		.uleb128 0x49
 3529 01f8 13       		.uleb128 0x13
 3530 01f9 1C       		.uleb128 0x1c
 3531 01fa 06       		.uleb128 0x6
 3532 01fb 00       		.byte	0
 3533 01fc 00       		.byte	0
 3534 01fd 2A       		.uleb128 0x2a
 3535 01fe 34       		.uleb128 0x34
 3536 01ff 00       		.byte	0
 3537 0200 03       		.uleb128 0x3
 3538 0201 0E       		.uleb128 0xe
 3539 0202 3A       		.uleb128 0x3a
 3540 0203 0B       		.uleb128 0xb
 3541 0204 3B       		.uleb128 0x3b
 3542 0205 0B       		.uleb128 0xb
 3543 0206 49       		.uleb128 0x49
 3544 0207 13       		.uleb128 0x13
 3545 0208 1C       		.uleb128 0x1c
 3546 0209 05       		.uleb128 0x5
 3547 020a 00       		.byte	0
 3548 020b 00       		.byte	0
 3549 020c 2B       		.uleb128 0x2b
 3550 020d 04       		.uleb128 0x4
 3551 020e 01       		.byte	0x1
 3552 020f 0B       		.uleb128 0xb
 3553 0210 0B       		.uleb128 0xb
 3554 0211 49       		.uleb128 0x49
ARM GAS  /tmp/ccomqgAQ.s 			page 70


 3555 0212 13       		.uleb128 0x13
 3556 0213 3A       		.uleb128 0x3a
 3557 0214 0B       		.uleb128 0xb
 3558 0215 3B       		.uleb128 0x3b
 3559 0216 0B       		.uleb128 0xb
 3560 0217 01       		.uleb128 0x1
 3561 0218 13       		.uleb128 0x13
 3562 0219 00       		.byte	0
 3563 021a 00       		.byte	0
 3564 021b 2C       		.uleb128 0x2c
 3565 021c 2E       		.uleb128 0x2e
 3566 021d 01       		.byte	0x1
 3567 021e 3F       		.uleb128 0x3f
 3568 021f 19       		.uleb128 0x19
 3569 0220 03       		.uleb128 0x3
 3570 0221 0E       		.uleb128 0xe
 3571 0222 3A       		.uleb128 0x3a
 3572 0223 0B       		.uleb128 0xb
 3573 0224 3B       		.uleb128 0x3b
 3574 0225 05       		.uleb128 0x5
 3575 0226 27       		.uleb128 0x27
 3576 0227 19       		.uleb128 0x19
 3577 0228 49       		.uleb128 0x49
 3578 0229 13       		.uleb128 0x13
 3579 022a 11       		.uleb128 0x11
 3580 022b 01       		.uleb128 0x1
 3581 022c 12       		.uleb128 0x12
 3582 022d 06       		.uleb128 0x6
 3583 022e 40       		.uleb128 0x40
 3584 022f 18       		.uleb128 0x18
 3585 0230 9742     		.uleb128 0x2117
 3586 0232 19       		.uleb128 0x19
 3587 0233 01       		.uleb128 0x1
 3588 0234 13       		.uleb128 0x13
 3589 0235 00       		.byte	0
 3590 0236 00       		.byte	0
 3591 0237 2D       		.uleb128 0x2d
 3592 0238 05       		.uleb128 0x5
 3593 0239 00       		.byte	0
 3594 023a 03       		.uleb128 0x3
 3595 023b 0E       		.uleb128 0xe
 3596 023c 3A       		.uleb128 0x3a
 3597 023d 0B       		.uleb128 0xb
 3598 023e 3B       		.uleb128 0x3b
 3599 023f 05       		.uleb128 0x5
 3600 0240 49       		.uleb128 0x49
 3601 0241 13       		.uleb128 0x13
 3602 0242 02       		.uleb128 0x2
 3603 0243 17       		.uleb128 0x17
 3604 0244 00       		.byte	0
 3605 0245 00       		.byte	0
 3606 0246 2E       		.uleb128 0x2e
 3607 0247 05       		.uleb128 0x5
 3608 0248 00       		.byte	0
 3609 0249 03       		.uleb128 0x3
 3610 024a 08       		.uleb128 0x8
 3611 024b 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccomqgAQ.s 			page 71


 3612 024c 0B       		.uleb128 0xb
 3613 024d 3B       		.uleb128 0x3b
 3614 024e 05       		.uleb128 0x5
 3615 024f 49       		.uleb128 0x49
 3616 0250 13       		.uleb128 0x13
 3617 0251 02       		.uleb128 0x2
 3618 0252 17       		.uleb128 0x17
 3619 0253 00       		.byte	0
 3620 0254 00       		.byte	0
 3621 0255 2F       		.uleb128 0x2f
 3622 0256 898201   		.uleb128 0x4109
 3623 0259 01       		.byte	0x1
 3624 025a 11       		.uleb128 0x11
 3625 025b 01       		.uleb128 0x1
 3626 025c 9542     		.uleb128 0x2115
 3627 025e 19       		.uleb128 0x19
 3628 025f 31       		.uleb128 0x31
 3629 0260 13       		.uleb128 0x13
 3630 0261 00       		.byte	0
 3631 0262 00       		.byte	0
 3632 0263 30       		.uleb128 0x30
 3633 0264 8A8201   		.uleb128 0x410a
 3634 0267 00       		.byte	0
 3635 0268 02       		.uleb128 0x2
 3636 0269 18       		.uleb128 0x18
 3637 026a 9142     		.uleb128 0x2111
 3638 026c 18       		.uleb128 0x18
 3639 026d 00       		.byte	0
 3640 026e 00       		.byte	0
 3641 026f 31       		.uleb128 0x31
 3642 0270 2E       		.uleb128 0x2e
 3643 0271 01       		.byte	0x1
 3644 0272 3F       		.uleb128 0x3f
 3645 0273 19       		.uleb128 0x19
 3646 0274 03       		.uleb128 0x3
 3647 0275 0E       		.uleb128 0xe
 3648 0276 3A       		.uleb128 0x3a
 3649 0277 0B       		.uleb128 0xb
 3650 0278 3B       		.uleb128 0x3b
 3651 0279 05       		.uleb128 0x5
 3652 027a 27       		.uleb128 0x27
 3653 027b 19       		.uleb128 0x19
 3654 027c 49       		.uleb128 0x49
 3655 027d 13       		.uleb128 0x13
 3656 027e 20       		.uleb128 0x20
 3657 027f 0B       		.uleb128 0xb
 3658 0280 01       		.uleb128 0x1
 3659 0281 13       		.uleb128 0x13
 3660 0282 00       		.byte	0
 3661 0283 00       		.byte	0
 3662 0284 32       		.uleb128 0x32
 3663 0285 05       		.uleb128 0x5
 3664 0286 00       		.byte	0
 3665 0287 03       		.uleb128 0x3
 3666 0288 0E       		.uleb128 0xe
 3667 0289 3A       		.uleb128 0x3a
 3668 028a 0B       		.uleb128 0xb
ARM GAS  /tmp/ccomqgAQ.s 			page 72


 3669 028b 3B       		.uleb128 0x3b
 3670 028c 05       		.uleb128 0x5
 3671 028d 49       		.uleb128 0x49
 3672 028e 13       		.uleb128 0x13
 3673 028f 00       		.byte	0
 3674 0290 00       		.byte	0
 3675 0291 33       		.uleb128 0x33
 3676 0292 05       		.uleb128 0x5
 3677 0293 00       		.byte	0
 3678 0294 03       		.uleb128 0x3
 3679 0295 08       		.uleb128 0x8
 3680 0296 3A       		.uleb128 0x3a
 3681 0297 0B       		.uleb128 0xb
 3682 0298 3B       		.uleb128 0x3b
 3683 0299 05       		.uleb128 0x5
 3684 029a 49       		.uleb128 0x49
 3685 029b 13       		.uleb128 0x13
 3686 029c 00       		.byte	0
 3687 029d 00       		.byte	0
 3688 029e 34       		.uleb128 0x34
 3689 029f 2E       		.uleb128 0x2e
 3690 02a0 00       		.byte	0
 3691 02a1 3F       		.uleb128 0x3f
 3692 02a2 19       		.uleb128 0x19
 3693 02a3 03       		.uleb128 0x3
 3694 02a4 0E       		.uleb128 0xe
 3695 02a5 3A       		.uleb128 0x3a
 3696 02a6 0B       		.uleb128 0xb
 3697 02a7 3B       		.uleb128 0x3b
 3698 02a8 0B       		.uleb128 0xb
 3699 02a9 27       		.uleb128 0x27
 3700 02aa 19       		.uleb128 0x19
 3701 02ab 49       		.uleb128 0x49
 3702 02ac 13       		.uleb128 0x13
 3703 02ad 20       		.uleb128 0x20
 3704 02ae 0B       		.uleb128 0xb
 3705 02af 00       		.byte	0
 3706 02b0 00       		.byte	0
 3707 02b1 35       		.uleb128 0x35
 3708 02b2 2E       		.uleb128 0x2e
 3709 02b3 00       		.byte	0
 3710 02b4 3F       		.uleb128 0x3f
 3711 02b5 19       		.uleb128 0x19
 3712 02b6 03       		.uleb128 0x3
 3713 02b7 0E       		.uleb128 0xe
 3714 02b8 3A       		.uleb128 0x3a
 3715 02b9 0B       		.uleb128 0xb
 3716 02ba 3B       		.uleb128 0x3b
 3717 02bb 0B       		.uleb128 0xb
 3718 02bc 27       		.uleb128 0x27
 3719 02bd 19       		.uleb128 0x19
 3720 02be 49       		.uleb128 0x49
 3721 02bf 13       		.uleb128 0x13
 3722 02c0 00       		.byte	0
 3723 02c1 00       		.byte	0
 3724 02c2 36       		.uleb128 0x36
 3725 02c3 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccomqgAQ.s 			page 73


 3726 02c4 01       		.byte	0x1
 3727 02c5 3F       		.uleb128 0x3f
 3728 02c6 19       		.uleb128 0x19
 3729 02c7 03       		.uleb128 0x3
 3730 02c8 0E       		.uleb128 0xe
 3731 02c9 3A       		.uleb128 0x3a
 3732 02ca 0B       		.uleb128 0xb
 3733 02cb 3B       		.uleb128 0x3b
 3734 02cc 0B       		.uleb128 0xb
 3735 02cd 27       		.uleb128 0x27
 3736 02ce 19       		.uleb128 0x19
 3737 02cf 49       		.uleb128 0x49
 3738 02d0 13       		.uleb128 0x13
 3739 02d1 20       		.uleb128 0x20
 3740 02d2 0B       		.uleb128 0xb
 3741 02d3 01       		.uleb128 0x1
 3742 02d4 13       		.uleb128 0x13
 3743 02d5 00       		.byte	0
 3744 02d6 00       		.byte	0
 3745 02d7 37       		.uleb128 0x37
 3746 02d8 05       		.uleb128 0x5
 3747 02d9 00       		.byte	0
 3748 02da 03       		.uleb128 0x3
 3749 02db 0E       		.uleb128 0xe
 3750 02dc 3A       		.uleb128 0x3a
 3751 02dd 0B       		.uleb128 0xb
 3752 02de 3B       		.uleb128 0x3b
 3753 02df 0B       		.uleb128 0xb
 3754 02e0 49       		.uleb128 0x49
 3755 02e1 13       		.uleb128 0x13
 3756 02e2 00       		.byte	0
 3757 02e3 00       		.byte	0
 3758 02e4 38       		.uleb128 0x38
 3759 02e5 2E       		.uleb128 0x2e
 3760 02e6 01       		.byte	0x1
 3761 02e7 3F       		.uleb128 0x3f
 3762 02e8 19       		.uleb128 0x19
 3763 02e9 03       		.uleb128 0x3
 3764 02ea 0E       		.uleb128 0xe
 3765 02eb 3A       		.uleb128 0x3a
 3766 02ec 0B       		.uleb128 0xb
 3767 02ed 3B       		.uleb128 0x3b
 3768 02ee 0B       		.uleb128 0xb
 3769 02ef 27       		.uleb128 0x27
 3770 02f0 19       		.uleb128 0x19
 3771 02f1 49       		.uleb128 0x49
 3772 02f2 13       		.uleb128 0x13
 3773 02f3 11       		.uleb128 0x11
 3774 02f4 01       		.uleb128 0x1
 3775 02f5 12       		.uleb128 0x12
 3776 02f6 06       		.uleb128 0x6
 3777 02f7 40       		.uleb128 0x40
 3778 02f8 18       		.uleb128 0x18
 3779 02f9 9742     		.uleb128 0x2117
 3780 02fb 19       		.uleb128 0x19
 3781 02fc 01       		.uleb128 0x1
 3782 02fd 13       		.uleb128 0x13
ARM GAS  /tmp/ccomqgAQ.s 			page 74


 3783 02fe 00       		.byte	0
 3784 02ff 00       		.byte	0
 3785 0300 39       		.uleb128 0x39
 3786 0301 1D       		.uleb128 0x1d
 3787 0302 01       		.byte	0x1
 3788 0303 31       		.uleb128 0x31
 3789 0304 13       		.uleb128 0x13
 3790 0305 11       		.uleb128 0x11
 3791 0306 01       		.uleb128 0x1
 3792 0307 12       		.uleb128 0x12
 3793 0308 06       		.uleb128 0x6
 3794 0309 58       		.uleb128 0x58
 3795 030a 0B       		.uleb128 0xb
 3796 030b 59       		.uleb128 0x59
 3797 030c 0B       		.uleb128 0xb
 3798 030d 00       		.byte	0
 3799 030e 00       		.byte	0
 3800 030f 3A       		.uleb128 0x3a
 3801 0310 05       		.uleb128 0x5
 3802 0311 00       		.byte	0
 3803 0312 31       		.uleb128 0x31
 3804 0313 13       		.uleb128 0x13
 3805 0314 1C       		.uleb128 0x1c
 3806 0315 0B       		.uleb128 0xb
 3807 0316 00       		.byte	0
 3808 0317 00       		.byte	0
 3809 0318 3B       		.uleb128 0x3b
 3810 0319 05       		.uleb128 0x5
 3811 031a 00       		.byte	0
 3812 031b 03       		.uleb128 0x3
 3813 031c 0E       		.uleb128 0xe
 3814 031d 3A       		.uleb128 0x3a
 3815 031e 0B       		.uleb128 0xb
 3816 031f 3B       		.uleb128 0x3b
 3817 0320 0B       		.uleb128 0xb
 3818 0321 49       		.uleb128 0x49
 3819 0322 13       		.uleb128 0x13
 3820 0323 02       		.uleb128 0x2
 3821 0324 17       		.uleb128 0x17
 3822 0325 00       		.byte	0
 3823 0326 00       		.byte	0
 3824 0327 3C       		.uleb128 0x3c
 3825 0328 05       		.uleb128 0x5
 3826 0329 00       		.byte	0
 3827 032a 31       		.uleb128 0x31
 3828 032b 13       		.uleb128 0x13
 3829 032c 02       		.uleb128 0x2
 3830 032d 17       		.uleb128 0x17
 3831 032e 00       		.byte	0
 3832 032f 00       		.byte	0
 3833 0330 3D       		.uleb128 0x3d
 3834 0331 898201   		.uleb128 0x4109
 3835 0334 01       		.byte	0x1
 3836 0335 11       		.uleb128 0x11
 3837 0336 01       		.uleb128 0x1
 3838 0337 31       		.uleb128 0x31
 3839 0338 13       		.uleb128 0x13
ARM GAS  /tmp/ccomqgAQ.s 			page 75


 3840 0339 01       		.uleb128 0x1
 3841 033a 13       		.uleb128 0x13
 3842 033b 00       		.byte	0
 3843 033c 00       		.byte	0
 3844 033d 3E       		.uleb128 0x3e
 3845 033e 898201   		.uleb128 0x4109
 3846 0341 00       		.byte	0
 3847 0342 11       		.uleb128 0x11
 3848 0343 01       		.uleb128 0x1
 3849 0344 9542     		.uleb128 0x2115
 3850 0346 19       		.uleb128 0x19
 3851 0347 31       		.uleb128 0x31
 3852 0348 13       		.uleb128 0x13
 3853 0349 00       		.byte	0
 3854 034a 00       		.byte	0
 3855 034b 3F       		.uleb128 0x3f
 3856 034c 2E       		.uleb128 0x2e
 3857 034d 01       		.byte	0x1
 3858 034e 31       		.uleb128 0x31
 3859 034f 13       		.uleb128 0x13
 3860 0350 11       		.uleb128 0x11
 3861 0351 01       		.uleb128 0x1
 3862 0352 12       		.uleb128 0x12
 3863 0353 06       		.uleb128 0x6
 3864 0354 40       		.uleb128 0x40
 3865 0355 18       		.uleb128 0x18
 3866 0356 9742     		.uleb128 0x2117
 3867 0358 19       		.uleb128 0x19
 3868 0359 01       		.uleb128 0x1
 3869 035a 13       		.uleb128 0x13
 3870 035b 00       		.byte	0
 3871 035c 00       		.byte	0
 3872 035d 40       		.uleb128 0x40
 3873 035e 0B       		.uleb128 0xb
 3874 035f 01       		.byte	0x1
 3875 0360 55       		.uleb128 0x55
 3876 0361 17       		.uleb128 0x17
 3877 0362 01       		.uleb128 0x1
 3878 0363 13       		.uleb128 0x13
 3879 0364 00       		.byte	0
 3880 0365 00       		.byte	0
 3881 0366 41       		.uleb128 0x41
 3882 0367 898201   		.uleb128 0x4109
 3883 036a 01       		.byte	0x1
 3884 036b 11       		.uleb128 0x11
 3885 036c 01       		.uleb128 0x1
 3886 036d 31       		.uleb128 0x31
 3887 036e 13       		.uleb128 0x13
 3888 036f 00       		.byte	0
 3889 0370 00       		.byte	0
 3890 0371 42       		.uleb128 0x42
 3891 0372 05       		.uleb128 0x5
 3892 0373 00       		.byte	0
 3893 0374 31       		.uleb128 0x31
 3894 0375 13       		.uleb128 0x13
 3895 0376 02       		.uleb128 0x2
 3896 0377 18       		.uleb128 0x18
ARM GAS  /tmp/ccomqgAQ.s 			page 76


 3897 0378 00       		.byte	0
 3898 0379 00       		.byte	0
 3899 037a 43       		.uleb128 0x43
 3900 037b 2E       		.uleb128 0x2e
 3901 037c 00       		.byte	0
 3902 037d 31       		.uleb128 0x31
 3903 037e 13       		.uleb128 0x13
 3904 037f 11       		.uleb128 0x11
 3905 0380 01       		.uleb128 0x1
 3906 0381 12       		.uleb128 0x12
 3907 0382 06       		.uleb128 0x6
 3908 0383 40       		.uleb128 0x40
 3909 0384 18       		.uleb128 0x18
 3910 0385 9742     		.uleb128 0x2117
 3911 0387 19       		.uleb128 0x19
 3912 0388 00       		.byte	0
 3913 0389 00       		.byte	0
 3914 038a 44       		.uleb128 0x44
 3915 038b 0B       		.uleb128 0xb
 3916 038c 01       		.byte	0x1
 3917 038d 11       		.uleb128 0x11
 3918 038e 01       		.uleb128 0x1
 3919 038f 12       		.uleb128 0x12
 3920 0390 06       		.uleb128 0x6
 3921 0391 01       		.uleb128 0x1
 3922 0392 13       		.uleb128 0x13
 3923 0393 00       		.byte	0
 3924 0394 00       		.byte	0
 3925 0395 45       		.uleb128 0x45
 3926 0396 05       		.uleb128 0x5
 3927 0397 00       		.byte	0
 3928 0398 31       		.uleb128 0x31
 3929 0399 13       		.uleb128 0x13
 3930 039a 00       		.byte	0
 3931 039b 00       		.byte	0
 3932 039c 46       		.uleb128 0x46
 3933 039d 898201   		.uleb128 0x4109
 3934 03a0 00       		.byte	0
 3935 03a1 11       		.uleb128 0x11
 3936 03a2 01       		.uleb128 0x1
 3937 03a3 31       		.uleb128 0x31
 3938 03a4 13       		.uleb128 0x13
 3939 03a5 00       		.byte	0
 3940 03a6 00       		.byte	0
 3941 03a7 47       		.uleb128 0x47
 3942 03a8 2E       		.uleb128 0x2e
 3943 03a9 00       		.byte	0
 3944 03aa 3F       		.uleb128 0x3f
 3945 03ab 19       		.uleb128 0x19
 3946 03ac 3C       		.uleb128 0x3c
 3947 03ad 19       		.uleb128 0x19
 3948 03ae 6E       		.uleb128 0x6e
 3949 03af 0E       		.uleb128 0xe
 3950 03b0 03       		.uleb128 0x3
 3951 03b1 0E       		.uleb128 0xe
 3952 03b2 3A       		.uleb128 0x3a
 3953 03b3 0B       		.uleb128 0xb
ARM GAS  /tmp/ccomqgAQ.s 			page 77


 3954 03b4 3B       		.uleb128 0x3b
 3955 03b5 0B       		.uleb128 0xb
 3956 03b6 00       		.byte	0
 3957 03b7 00       		.byte	0
 3958 03b8 00       		.byte	0
 3959              		.section	.debug_loc,"",%progbits
 3960              	.Ldebug_loc0:
 3961              	.LLST32:
 3962 0000 00000000 		.4byte	.LVL62
 3963 0004 08000000 		.4byte	.LVL65
 3964 0008 0100     		.2byte	0x1
 3965 000a 50       		.byte	0x50
 3966 000b 08000000 		.4byte	.LVL65
 3967 000f 0B000000 		.4byte	.LVL66-1
 3968 0013 0100     		.2byte	0x1
 3969 0015 51       		.byte	0x51
 3970 0016 0B000000 		.4byte	.LVL66-1
 3971 001a 0C000000 		.4byte	.LFE247
 3972 001e 0400     		.2byte	0x4
 3973 0020 F3       		.byte	0xf3
 3974 0021 01       		.uleb128 0x1
 3975 0022 50       		.byte	0x50
 3976 0023 9F       		.byte	0x9f
 3977 0024 00000000 		.4byte	0
 3978 0028 00000000 		.4byte	0
 3979              	.LLST33:
 3980 002c 00000000 		.4byte	.LVL62
 3981 0030 06000000 		.4byte	.LVL64
 3982 0034 0100     		.2byte	0x1
 3983 0036 51       		.byte	0x51
 3984 0037 06000000 		.4byte	.LVL64
 3985 003b 0B000000 		.4byte	.LVL66-1
 3986 003f 0100     		.2byte	0x1
 3987 0041 52       		.byte	0x52
 3988 0042 0B000000 		.4byte	.LVL66-1
 3989 0046 0C000000 		.4byte	.LFE247
 3990 004a 0400     		.2byte	0x4
 3991 004c F3       		.byte	0xf3
 3992 004d 01       		.uleb128 0x1
 3993 004e 51       		.byte	0x51
 3994 004f 9F       		.byte	0x9f
 3995 0050 00000000 		.4byte	0
 3996 0054 00000000 		.4byte	0
 3997              	.LLST34:
 3998 0058 00000000 		.4byte	.LVL62
 3999 005c 04000000 		.4byte	.LVL63
 4000 0060 0100     		.2byte	0x1
 4001 0062 52       		.byte	0x52
 4002 0063 04000000 		.4byte	.LVL63
 4003 0067 0B000000 		.4byte	.LVL66-1
 4004 006b 0100     		.2byte	0x1
 4005 006d 53       		.byte	0x53
 4006 006e 0B000000 		.4byte	.LVL66-1
 4007 0072 0C000000 		.4byte	.LFE247
 4008 0076 0400     		.2byte	0x4
 4009 0078 F3       		.byte	0xf3
 4010 0079 01       		.uleb128 0x1
ARM GAS  /tmp/ccomqgAQ.s 			page 78


 4011 007a 52       		.byte	0x52
 4012 007b 9F       		.byte	0x9f
 4013 007c 00000000 		.4byte	0
 4014 0080 00000000 		.4byte	0
 4015              	.LLST29:
 4016 0084 00000000 		.4byte	.LVL57
 4017 0088 08000000 		.4byte	.LVL60
 4018 008c 0100     		.2byte	0x1
 4019 008e 50       		.byte	0x50
 4020 008f 08000000 		.4byte	.LVL60
 4021 0093 0B000000 		.4byte	.LVL61-1
 4022 0097 0100     		.2byte	0x1
 4023 0099 51       		.byte	0x51
 4024 009a 0B000000 		.4byte	.LVL61-1
 4025 009e 0C000000 		.4byte	.LFE246
 4026 00a2 0400     		.2byte	0x4
 4027 00a4 F3       		.byte	0xf3
 4028 00a5 01       		.uleb128 0x1
 4029 00a6 50       		.byte	0x50
 4030 00a7 9F       		.byte	0x9f
 4031 00a8 00000000 		.4byte	0
 4032 00ac 00000000 		.4byte	0
 4033              	.LLST30:
 4034 00b0 00000000 		.4byte	.LVL57
 4035 00b4 06000000 		.4byte	.LVL59
 4036 00b8 0100     		.2byte	0x1
 4037 00ba 51       		.byte	0x51
 4038 00bb 06000000 		.4byte	.LVL59
 4039 00bf 0B000000 		.4byte	.LVL61-1
 4040 00c3 0100     		.2byte	0x1
 4041 00c5 52       		.byte	0x52
 4042 00c6 0B000000 		.4byte	.LVL61-1
 4043 00ca 0C000000 		.4byte	.LFE246
 4044 00ce 0400     		.2byte	0x4
 4045 00d0 F3       		.byte	0xf3
 4046 00d1 01       		.uleb128 0x1
 4047 00d2 51       		.byte	0x51
 4048 00d3 9F       		.byte	0x9f
 4049 00d4 00000000 		.4byte	0
 4050 00d8 00000000 		.4byte	0
 4051              	.LLST31:
 4052 00dc 00000000 		.4byte	.LVL57
 4053 00e0 04000000 		.4byte	.LVL58
 4054 00e4 0100     		.2byte	0x1
 4055 00e6 52       		.byte	0x52
 4056 00e7 04000000 		.4byte	.LVL58
 4057 00eb 0B000000 		.4byte	.LVL61-1
 4058 00ef 0100     		.2byte	0x1
 4059 00f1 53       		.byte	0x53
 4060 00f2 0B000000 		.4byte	.LVL61-1
 4061 00f6 0C000000 		.4byte	.LFE246
 4062 00fa 0400     		.2byte	0x4
 4063 00fc F3       		.byte	0xf3
 4064 00fd 01       		.uleb128 0x1
 4065 00fe 52       		.byte	0x52
 4066 00ff 9F       		.byte	0x9f
 4067 0100 00000000 		.4byte	0
ARM GAS  /tmp/ccomqgAQ.s 			page 79


 4068 0104 00000000 		.4byte	0
 4069              	.LLST22:
 4070 0108 00000000 		.4byte	.LVL45
 4071 010c 08000000 		.4byte	.LVL48
 4072 0110 0100     		.2byte	0x1
 4073 0112 50       		.byte	0x50
 4074 0113 08000000 		.4byte	.LVL48
 4075 0117 0B000000 		.4byte	.LVL49-1
 4076 011b 0100     		.2byte	0x1
 4077 011d 51       		.byte	0x51
 4078 011e 0B000000 		.4byte	.LVL49-1
 4079 0122 0C000000 		.4byte	.LFE244
 4080 0126 0400     		.2byte	0x4
 4081 0128 F3       		.byte	0xf3
 4082 0129 01       		.uleb128 0x1
 4083 012a 50       		.byte	0x50
 4084 012b 9F       		.byte	0x9f
 4085 012c 00000000 		.4byte	0
 4086 0130 00000000 		.4byte	0
 4087              	.LLST23:
 4088 0134 00000000 		.4byte	.LVL45
 4089 0138 06000000 		.4byte	.LVL47
 4090 013c 0100     		.2byte	0x1
 4091 013e 51       		.byte	0x51
 4092 013f 06000000 		.4byte	.LVL47
 4093 0143 0B000000 		.4byte	.LVL49-1
 4094 0147 0100     		.2byte	0x1
 4095 0149 52       		.byte	0x52
 4096 014a 0B000000 		.4byte	.LVL49-1
 4097 014e 0C000000 		.4byte	.LFE244
 4098 0152 0400     		.2byte	0x4
 4099 0154 F3       		.byte	0xf3
 4100 0155 01       		.uleb128 0x1
 4101 0156 51       		.byte	0x51
 4102 0157 9F       		.byte	0x9f
 4103 0158 00000000 		.4byte	0
 4104 015c 00000000 		.4byte	0
 4105              	.LLST24:
 4106 0160 00000000 		.4byte	.LVL45
 4107 0164 04000000 		.4byte	.LVL46
 4108 0168 0100     		.2byte	0x1
 4109 016a 52       		.byte	0x52
 4110 016b 04000000 		.4byte	.LVL46
 4111 016f 0B000000 		.4byte	.LVL49-1
 4112 0173 0100     		.2byte	0x1
 4113 0175 53       		.byte	0x53
 4114 0176 0B000000 		.4byte	.LVL49-1
 4115 017a 0C000000 		.4byte	.LFE244
 4116 017e 0400     		.2byte	0x4
 4117 0180 F3       		.byte	0xf3
 4118 0181 01       		.uleb128 0x1
 4119 0182 52       		.byte	0x52
 4120 0183 9F       		.byte	0x9f
 4121 0184 00000000 		.4byte	0
 4122 0188 00000000 		.4byte	0
 4123              	.LLST19:
 4124 018c 00000000 		.4byte	.LVL40
ARM GAS  /tmp/ccomqgAQ.s 			page 80


 4125 0190 08000000 		.4byte	.LVL43
 4126 0194 0100     		.2byte	0x1
 4127 0196 50       		.byte	0x50
 4128 0197 08000000 		.4byte	.LVL43
 4129 019b 0B000000 		.4byte	.LVL44-1
 4130 019f 0100     		.2byte	0x1
 4131 01a1 51       		.byte	0x51
 4132 01a2 0B000000 		.4byte	.LVL44-1
 4133 01a6 0C000000 		.4byte	.LFE243
 4134 01aa 0400     		.2byte	0x4
 4135 01ac F3       		.byte	0xf3
 4136 01ad 01       		.uleb128 0x1
 4137 01ae 50       		.byte	0x50
 4138 01af 9F       		.byte	0x9f
 4139 01b0 00000000 		.4byte	0
 4140 01b4 00000000 		.4byte	0
 4141              	.LLST20:
 4142 01b8 00000000 		.4byte	.LVL40
 4143 01bc 06000000 		.4byte	.LVL42
 4144 01c0 0100     		.2byte	0x1
 4145 01c2 51       		.byte	0x51
 4146 01c3 06000000 		.4byte	.LVL42
 4147 01c7 0B000000 		.4byte	.LVL44-1
 4148 01cb 0100     		.2byte	0x1
 4149 01cd 52       		.byte	0x52
 4150 01ce 0B000000 		.4byte	.LVL44-1
 4151 01d2 0C000000 		.4byte	.LFE243
 4152 01d6 0400     		.2byte	0x4
 4153 01d8 F3       		.byte	0xf3
 4154 01d9 01       		.uleb128 0x1
 4155 01da 51       		.byte	0x51
 4156 01db 9F       		.byte	0x9f
 4157 01dc 00000000 		.4byte	0
 4158 01e0 00000000 		.4byte	0
 4159              	.LLST21:
 4160 01e4 00000000 		.4byte	.LVL40
 4161 01e8 04000000 		.4byte	.LVL41
 4162 01ec 0100     		.2byte	0x1
 4163 01ee 52       		.byte	0x52
 4164 01ef 04000000 		.4byte	.LVL41
 4165 01f3 0B000000 		.4byte	.LVL44-1
 4166 01f7 0100     		.2byte	0x1
 4167 01f9 53       		.byte	0x53
 4168 01fa 0B000000 		.4byte	.LVL44-1
 4169 01fe 0C000000 		.4byte	.LFE243
 4170 0202 0400     		.2byte	0x4
 4171 0204 F3       		.byte	0xf3
 4172 0205 01       		.uleb128 0x1
 4173 0206 52       		.byte	0x52
 4174 0207 9F       		.byte	0x9f
 4175 0208 00000000 		.4byte	0
 4176 020c 00000000 		.4byte	0
 4177              	.LLST10:
 4178 0210 00000000 		.4byte	.LVL22
 4179 0214 06000000 		.4byte	.LVL24
 4180 0218 0100     		.2byte	0x1
 4181 021a 50       		.byte	0x50
ARM GAS  /tmp/ccomqgAQ.s 			page 81


 4182 021b 06000000 		.4byte	.LVL24
 4183 021f 0C000000 		.4byte	.LFE235
 4184 0223 0500     		.2byte	0x5
 4185 0225 03       		.byte	0x3
 4186 0226 01000000 		.4byte	sd_mmc_ejected+1
 4187 022a 00000000 		.4byte	0
 4188 022e 00000000 		.4byte	0
 4189              	.LLST11:
 4190 0232 00000000 		.4byte	.LVL22
 4191 0236 04000000 		.4byte	.LVL23
 4192 023a 0100     		.2byte	0x1
 4193 023c 50       		.byte	0x50
 4194 023d 00000000 		.4byte	0
 4195 0241 00000000 		.4byte	0
 4196              	.LLST12:
 4197 0245 00000000 		.4byte	.LVL22
 4198 0249 04000000 		.4byte	.LVL23
 4199 024d 0200     		.2byte	0x2
 4200 024f 31       		.byte	0x31
 4201 0250 9F       		.byte	0x9f
 4202 0251 00000000 		.4byte	0
 4203 0255 00000000 		.4byte	0
 4204              	.LLST7:
 4205 0259 00000000 		.4byte	.LVL19
 4206 025d 06000000 		.4byte	.LVL21
 4207 0261 0100     		.2byte	0x1
 4208 0263 50       		.byte	0x50
 4209 0264 06000000 		.4byte	.LVL21
 4210 0268 0C000000 		.4byte	.LFE234
 4211 026c 0500     		.2byte	0x5
 4212 026e 03       		.byte	0x3
 4213 026f 00000000 		.4byte	sd_mmc_ejected
 4214 0273 00000000 		.4byte	0
 4215 0277 00000000 		.4byte	0
 4216              	.LLST8:
 4217 027b 00000000 		.4byte	.LVL19
 4218 027f 04000000 		.4byte	.LVL20
 4219 0283 0100     		.2byte	0x1
 4220 0285 50       		.byte	0x50
 4221 0286 00000000 		.4byte	0
 4222 028a 00000000 		.4byte	0
 4223              	.LLST9:
 4224 028e 00000000 		.4byte	.LVL19
 4225 0292 04000000 		.4byte	.LVL20
 4226 0296 0200     		.2byte	0x2
 4227 0298 30       		.byte	0x30
 4228 0299 9F       		.byte	0x9f
 4229 029a 00000000 		.4byte	0
 4230 029e 00000000 		.4byte	0
 4231              	.LLST5:
 4232 02a2 00000000 		.4byte	.LVL14
 4233 02a6 04000000 		.4byte	.LVL15
 4234 02aa 0100     		.2byte	0x1
 4235 02ac 50       		.byte	0x50
 4236 02ad 04000000 		.4byte	.LVL15
 4237 02b1 07000000 		.4byte	.LVL16-1
 4238 02b5 0100     		.2byte	0x1
ARM GAS  /tmp/ccomqgAQ.s 			page 82


 4239 02b7 51       		.byte	0x51
 4240 02b8 07000000 		.4byte	.LVL16-1
 4241 02bc 08000000 		.4byte	.LFE232
 4242 02c0 0400     		.2byte	0x4
 4243 02c2 F3       		.byte	0xf3
 4244 02c3 01       		.uleb128 0x1
 4245 02c4 50       		.byte	0x50
 4246 02c5 9F       		.byte	0x9f
 4247 02c6 00000000 		.4byte	0
 4248 02ca 00000000 		.4byte	0
 4249              	.LLST4:
 4250 02ce 00000000 		.4byte	.LVL11
 4251 02d2 04000000 		.4byte	.LVL12
 4252 02d6 0100     		.2byte	0x1
 4253 02d8 50       		.byte	0x50
 4254 02d9 04000000 		.4byte	.LVL12
 4255 02dd 07000000 		.4byte	.LVL13-1
 4256 02e1 0100     		.2byte	0x1
 4257 02e3 51       		.byte	0x51
 4258 02e4 07000000 		.4byte	.LVL13-1
 4259 02e8 08000000 		.4byte	.LFE231
 4260 02ec 0400     		.2byte	0x4
 4261 02ee F3       		.byte	0xf3
 4262 02ef 01       		.uleb128 0x1
 4263 02f0 50       		.byte	0x50
 4264 02f1 9F       		.byte	0x9f
 4265 02f2 00000000 		.4byte	0
 4266 02f6 00000000 		.4byte	0
 4267              	.LLST2:
 4268 02fa 00000000 		.4byte	.LVL7
 4269 02fe 09000000 		.4byte	.LVL8-1
 4270 0302 0100     		.2byte	0x1
 4271 0304 50       		.byte	0x50
 4272 0305 09000000 		.4byte	.LVL8-1
 4273 0309 1A000000 		.4byte	.LFE230
 4274 030d 0400     		.2byte	0x4
 4275 030f F3       		.byte	0xf3
 4276 0310 01       		.uleb128 0x1
 4277 0311 50       		.byte	0x50
 4278 0312 9F       		.byte	0x9f
 4279 0313 00000000 		.4byte	0
 4280 0317 00000000 		.4byte	0
 4281              	.LLST3:
 4282 031b 00000000 		.4byte	.LVL7
 4283 031f 09000000 		.4byte	.LVL8-1
 4284 0323 0100     		.2byte	0x1
 4285 0325 51       		.byte	0x51
 4286 0326 09000000 		.4byte	.LVL8-1
 4287 032a 16000000 		.4byte	.LVL9
 4288 032e 0100     		.2byte	0x1
 4289 0330 54       		.byte	0x54
 4290 0331 16000000 		.4byte	.LVL9
 4291 0335 1A000000 		.4byte	.LFE230
 4292 0339 0400     		.2byte	0x4
 4293 033b F3       		.byte	0xf3
 4294 033c 01       		.uleb128 0x1
 4295 033d 51       		.byte	0x51
ARM GAS  /tmp/ccomqgAQ.s 			page 83


 4296 033e 9F       		.byte	0x9f
 4297 033f 00000000 		.4byte	0
 4298 0343 00000000 		.4byte	0
 4299              	.LLST0:
 4300 0347 00000000 		.4byte	.LVL0
 4301 034b 07000000 		.4byte	.LVL1-1
 4302 034f 0100     		.2byte	0x1
 4303 0351 50       		.byte	0x50
 4304 0352 07000000 		.4byte	.LVL1-1
 4305 0356 40000000 		.4byte	.LFE227
 4306 035a 0400     		.2byte	0x4
 4307 035c F3       		.byte	0xf3
 4308 035d 01       		.uleb128 0x1
 4309 035e 50       		.byte	0x50
 4310 035f 9F       		.byte	0x9f
 4311 0360 00000000 		.4byte	0
 4312 0364 00000000 		.4byte	0
 4313              	.LLST1:
 4314 0368 2C000000 		.4byte	.LVL2
 4315 036c 3A000000 		.4byte	.LVL4
 4316 0370 0100     		.2byte	0x1
 4317 0372 55       		.byte	0x55
 4318 0373 00000000 		.4byte	0
 4319 0377 00000000 		.4byte	0
 4320              	.LLST6:
 4321 037b 00000000 		.4byte	.LVL17
 4322 037f 06000000 		.4byte	.LVL18
 4323 0383 0100     		.2byte	0x1
 4324 0385 50       		.byte	0x50
 4325 0386 06000000 		.4byte	.LVL18
 4326 038a 0C000000 		.4byte	.LFE233
 4327 038e 0400     		.2byte	0x4
 4328 0390 F3       		.byte	0xf3
 4329 0391 01       		.uleb128 0x1
 4330 0392 50       		.byte	0x50
 4331 0393 9F       		.byte	0x9f
 4332 0394 00000000 		.4byte	0
 4333 0398 00000000 		.4byte	0
 4334              	.LLST13:
 4335 039c 00000000 		.4byte	.LVL25
 4336 03a0 03000000 		.4byte	.LVL26-1
 4337 03a4 0100     		.2byte	0x1
 4338 03a6 50       		.byte	0x50
 4339 03a7 03000000 		.4byte	.LVL26-1
 4340 03ab 04000000 		.4byte	.LFE236
 4341 03af 0400     		.2byte	0x4
 4342 03b1 F3       		.byte	0xf3
 4343 03b2 01       		.uleb128 0x1
 4344 03b3 50       		.byte	0x50
 4345 03b4 9F       		.byte	0x9f
 4346 03b5 00000000 		.4byte	0
 4347 03b9 00000000 		.4byte	0
 4348              	.LLST14:
 4349 03bd 00000000 		.4byte	.LVL31
 4350 03c1 02000000 		.4byte	.LVL32
 4351 03c5 0100     		.2byte	0x1
 4352 03c7 50       		.byte	0x50
ARM GAS  /tmp/ccomqgAQ.s 			page 84


 4353 03c8 02000000 		.4byte	.LVL32
 4354 03cc 04000000 		.4byte	.LFE239
 4355 03d0 0400     		.2byte	0x4
 4356 03d2 F3       		.byte	0xf3
 4357 03d3 01       		.uleb128 0x1
 4358 03d4 50       		.byte	0x50
 4359 03d5 9F       		.byte	0x9f
 4360 03d6 00000000 		.4byte	0
 4361 03da 00000000 		.4byte	0
 4362              	.LLST15:
 4363 03de 00000000 		.4byte	.LVL33
 4364 03e2 0B000000 		.4byte	.LVL35-1
 4365 03e6 0100     		.2byte	0x1
 4366 03e8 50       		.byte	0x50
 4367 03e9 0B000000 		.4byte	.LVL35-1
 4368 03ed 32000000 		.4byte	.LFE242
 4369 03f1 0400     		.2byte	0x4
 4370 03f3 F3       		.byte	0xf3
 4371 03f4 01       		.uleb128 0x1
 4372 03f5 50       		.byte	0x50
 4373 03f6 9F       		.byte	0x9f
 4374 03f7 00000000 		.4byte	0
 4375 03fb 00000000 		.4byte	0
 4376              	.LLST16:
 4377 03ff 00000000 		.4byte	.LVL33
 4378 0403 0B000000 		.4byte	.LVL35-1
 4379 0407 0100     		.2byte	0x1
 4380 0409 51       		.byte	0x51
 4381 040a 0B000000 		.4byte	.LVL35-1
 4382 040e 32000000 		.4byte	.LFE242
 4383 0412 0400     		.2byte	0x4
 4384 0414 F3       		.byte	0xf3
 4385 0415 01       		.uleb128 0x1
 4386 0416 51       		.byte	0x51
 4387 0417 9F       		.byte	0x9f
 4388 0418 00000000 		.4byte	0
 4389 041c 00000000 		.4byte	0
 4390              	.LLST17:
 4391 0420 00000000 		.4byte	.LVL33
 4392 0424 08000000 		.4byte	.LVL34
 4393 0428 0100     		.2byte	0x1
 4394 042a 52       		.byte	0x52
 4395 042b 08000000 		.4byte	.LVL34
 4396 042f 32000000 		.4byte	.LFE242
 4397 0433 0100     		.2byte	0x1
 4398 0435 55       		.byte	0x55
 4399 0436 00000000 		.4byte	0
 4400 043a 00000000 		.4byte	0
 4401              	.LLST18:
 4402 043e 00000000 		.4byte	.LVL33
 4403 0442 0B000000 		.4byte	.LVL35-1
 4404 0446 0100     		.2byte	0x1
 4405 0448 53       		.byte	0x53
 4406 0449 0B000000 		.4byte	.LVL35-1
 4407 044d 32000000 		.4byte	.LFE242
 4408 0451 0400     		.2byte	0x4
 4409 0453 F3       		.byte	0xf3
ARM GAS  /tmp/ccomqgAQ.s 			page 85


 4410 0454 01       		.uleb128 0x1
 4411 0455 53       		.byte	0x53
 4412 0456 9F       		.byte	0x9f
 4413 0457 00000000 		.4byte	0
 4414 045b 00000000 		.4byte	0
 4415              	.LLST25:
 4416 045f 00000000 		.4byte	.LVL50
 4417 0463 0B000000 		.4byte	.LVL52-1
 4418 0467 0100     		.2byte	0x1
 4419 0469 50       		.byte	0x50
 4420 046a 0B000000 		.4byte	.LVL52-1
 4421 046e 32000000 		.4byte	.LFE245
 4422 0472 0400     		.2byte	0x4
 4423 0474 F3       		.byte	0xf3
 4424 0475 01       		.uleb128 0x1
 4425 0476 50       		.byte	0x50
 4426 0477 9F       		.byte	0x9f
 4427 0478 00000000 		.4byte	0
 4428 047c 00000000 		.4byte	0
 4429              	.LLST26:
 4430 0480 00000000 		.4byte	.LVL50
 4431 0484 0B000000 		.4byte	.LVL52-1
 4432 0488 0100     		.2byte	0x1
 4433 048a 51       		.byte	0x51
 4434 048b 0B000000 		.4byte	.LVL52-1
 4435 048f 32000000 		.4byte	.LFE245
 4436 0493 0400     		.2byte	0x4
 4437 0495 F3       		.byte	0xf3
 4438 0496 01       		.uleb128 0x1
 4439 0497 51       		.byte	0x51
 4440 0498 9F       		.byte	0x9f
 4441 0499 00000000 		.4byte	0
 4442 049d 00000000 		.4byte	0
 4443              	.LLST27:
 4444 04a1 00000000 		.4byte	.LVL50
 4445 04a5 08000000 		.4byte	.LVL51
 4446 04a9 0100     		.2byte	0x1
 4447 04ab 52       		.byte	0x52
 4448 04ac 08000000 		.4byte	.LVL51
 4449 04b0 32000000 		.4byte	.LFE245
 4450 04b4 0100     		.2byte	0x1
 4451 04b6 55       		.byte	0x55
 4452 04b7 00000000 		.4byte	0
 4453 04bb 00000000 		.4byte	0
 4454              	.LLST28:
 4455 04bf 00000000 		.4byte	.LVL50
 4456 04c3 0B000000 		.4byte	.LVL52-1
 4457 04c7 0100     		.2byte	0x1
 4458 04c9 53       		.byte	0x53
 4459 04ca 0B000000 		.4byte	.LVL52-1
 4460 04ce 32000000 		.4byte	.LFE245
 4461 04d2 0400     		.2byte	0x4
 4462 04d4 F3       		.byte	0xf3
 4463 04d5 01       		.uleb128 0x1
 4464 04d6 53       		.byte	0x53
 4465 04d7 9F       		.byte	0x9f
 4466 04d8 00000000 		.4byte	0
ARM GAS  /tmp/ccomqgAQ.s 			page 86


 4467 04dc 00000000 		.4byte	0
 4468              		.section	.debug_aranges,"",%progbits
 4469 0000 B4000000 		.4byte	0xb4
 4470 0004 0200     		.2byte	0x2
 4471 0006 00000000 		.4byte	.Ldebug_info0
 4472 000a 04       		.byte	0x4
 4473 000b 00       		.byte	0
 4474 000c 0000     		.2byte	0
 4475 000e 0000     		.2byte	0
 4476 0010 00000000 		.4byte	.LFB227
 4477 0014 40000000 		.4byte	.LFE227-.LFB227
 4478 0018 00000000 		.4byte	.LFB228
 4479 001c 06000000 		.4byte	.LFE228-.LFB228
 4480 0020 00000000 		.4byte	.LFB229
 4481 0024 06000000 		.4byte	.LFE229-.LFB229
 4482 0028 00000000 		.4byte	.LFB230
 4483 002c 1A000000 		.4byte	.LFE230-.LFB230
 4484 0030 00000000 		.4byte	.LFB231
 4485 0034 08000000 		.4byte	.LFE231-.LFB231
 4486 0038 00000000 		.4byte	.LFB232
 4487 003c 08000000 		.4byte	.LFE232-.LFB232
 4488 0040 00000000 		.4byte	.LFB233
 4489 0044 0C000000 		.4byte	.LFE233-.LFB233
 4490 0048 00000000 		.4byte	.LFB234
 4491 004c 0C000000 		.4byte	.LFE234-.LFB234
 4492 0050 00000000 		.4byte	.LFB235
 4493 0054 0C000000 		.4byte	.LFE235-.LFB235
 4494 0058 00000000 		.4byte	.LFB236
 4495 005c 04000000 		.4byte	.LFE236-.LFB236
 4496 0060 00000000 		.4byte	.LFB237
 4497 0064 06000000 		.4byte	.LFE237-.LFB237
 4498 0068 00000000 		.4byte	.LFB238
 4499 006c 06000000 		.4byte	.LFE238-.LFB238
 4500 0070 00000000 		.4byte	.LFB239
 4501 0074 04000000 		.4byte	.LFE239-.LFB239
 4502 0078 00000000 		.4byte	.LFB241
 4503 007c 04000000 		.4byte	.LFE241-.LFB241
 4504 0080 00000000 		.4byte	.LFB242
 4505 0084 32000000 		.4byte	.LFE242-.LFB242
 4506 0088 00000000 		.4byte	.LFB243
 4507 008c 0C000000 		.4byte	.LFE243-.LFB243
 4508 0090 00000000 		.4byte	.LFB244
 4509 0094 0C000000 		.4byte	.LFE244-.LFB244
 4510 0098 00000000 		.4byte	.LFB245
 4511 009c 32000000 		.4byte	.LFE245-.LFB245
 4512 00a0 00000000 		.4byte	.LFB246
 4513 00a4 0C000000 		.4byte	.LFE246-.LFB246
 4514 00a8 00000000 		.4byte	.LFB247
 4515 00ac 0C000000 		.4byte	.LFE247-.LFB247
 4516 00b0 00000000 		.4byte	0
 4517 00b4 00000000 		.4byte	0
 4518              		.section	.debug_ranges,"",%progbits
 4519              	.Ldebug_ranges0:
 4520 0000 24000000 		.4byte	.LBB16
 4521 0004 28000000 		.4byte	.LBE16
 4522 0008 2C000000 		.4byte	.LBB19
 4523 000c 38000000 		.4byte	.LBE19
ARM GAS  /tmp/ccomqgAQ.s 			page 87


 4524 0010 00000000 		.4byte	0
 4525 0014 00000000 		.4byte	0
 4526 0018 00000000 		.4byte	.LFB227
 4527 001c 40000000 		.4byte	.LFE227
 4528 0020 00000000 		.4byte	.LFB228
 4529 0024 06000000 		.4byte	.LFE228
 4530 0028 00000000 		.4byte	.LFB229
 4531 002c 06000000 		.4byte	.LFE229
 4532 0030 00000000 		.4byte	.LFB230
 4533 0034 1A000000 		.4byte	.LFE230
 4534 0038 00000000 		.4byte	.LFB231
 4535 003c 08000000 		.4byte	.LFE231
 4536 0040 00000000 		.4byte	.LFB232
 4537 0044 08000000 		.4byte	.LFE232
 4538 0048 00000000 		.4byte	.LFB233
 4539 004c 0C000000 		.4byte	.LFE233
 4540 0050 00000000 		.4byte	.LFB234
 4541 0054 0C000000 		.4byte	.LFE234
 4542 0058 00000000 		.4byte	.LFB235
 4543 005c 0C000000 		.4byte	.LFE235
 4544 0060 00000000 		.4byte	.LFB236
 4545 0064 04000000 		.4byte	.LFE236
 4546 0068 00000000 		.4byte	.LFB237
 4547 006c 06000000 		.4byte	.LFE237
 4548 0070 00000000 		.4byte	.LFB238
 4549 0074 06000000 		.4byte	.LFE238
 4550 0078 00000000 		.4byte	.LFB239
 4551 007c 04000000 		.4byte	.LFE239
 4552 0080 00000000 		.4byte	.LFB241
 4553 0084 04000000 		.4byte	.LFE241
 4554 0088 00000000 		.4byte	.LFB242
 4555 008c 32000000 		.4byte	.LFE242
 4556 0090 00000000 		.4byte	.LFB243
 4557 0094 0C000000 		.4byte	.LFE243
 4558 0098 00000000 		.4byte	.LFB244
 4559 009c 0C000000 		.4byte	.LFE244
 4560 00a0 00000000 		.4byte	.LFB245
 4561 00a4 32000000 		.4byte	.LFE245
 4562 00a8 00000000 		.4byte	.LFB246
 4563 00ac 0C000000 		.4byte	.LFE246
 4564 00b0 00000000 		.4byte	.LFB247
 4565 00b4 0C000000 		.4byte	.LFE247
 4566 00b8 00000000 		.4byte	0
 4567 00bc 00000000 		.4byte	0
 4568              		.section	.debug_line,"",%progbits
 4569              	.Ldebug_line0:
 4570 0000 08040000 		.section	.debug_str,"MS",%progbits,1
 4570      02007A02 
 4570      00000201 
 4570      FB0E0D00 
 4570      01010101 
 4571              	.LASF48:
 4572 0000 5F69735F 		.ascii	"_is_cxa\000"
 4572      63786100 
 4573              	.LASF3:
 4574 0008 73686F72 		.ascii	"short int\000"
 4574      7420696E 
ARM GAS  /tmp/ccomqgAQ.s 			page 88


 4574      7400
 4575              	.LASF20:
 4576 0012 5F66706F 		.ascii	"_fpos_t\000"
 4576      735F7400 
 4577              	.LASF193:
 4578 001a 73645F6D 		.ascii	"sd_mmc_init_read_blocks\000"
 4578      6D635F69 
 4578      6E69745F 
 4578      72656164 
 4578      5F626C6F 
 4579              	.LASF107:
 4580 0032 5F67616D 		.ascii	"_gamma_signgam\000"
 4580      6D615F73 
 4580      69676E67 
 4580      616D00
 4581              	.LASF99:
 4582 0041 5F72616E 		.ascii	"_rand48\000"
 4582      64343800 
 4583              	.LASF78:
 4584 0049 5F656D65 		.ascii	"_emergency\000"
 4584      7267656E 
 4584      637900
 4585              	.LASF142:
 4586 0054 5F646179 		.ascii	"_daylight\000"
 4586      6C696768 
 4586      7400
 4587              	.LASF178:
 4588 005e 756E6C6F 		.ascii	"unload\000"
 4588      616400
 4589              	.LASF5:
 4590 0065 5F5F7569 		.ascii	"__uint8_t\000"
 4590      6E74385F 
 4590      7400
 4591              	.LASF115:
 4592 006f 5F676574 		.ascii	"_getdate_err\000"
 4592      64617465 
 4592      5F657272 
 4592      00
 4593              	.LASF68:
 4594 007c 5F646174 		.ascii	"_data\000"
 4594      6100
 4595              	.LASF119:
 4596 0082 5F776372 		.ascii	"_wcrtomb_state\000"
 4596      746F6D62 
 4596      5F737461 
 4596      746500
 4597              	.LASF120:
 4598 0091 5F776373 		.ascii	"_wcsrtombs_state\000"
 4598      72746F6D 
 4598      62735F73 
 4598      74617465 
 4598      00
 4599              	.LASF11:
 4600 00a2 6C6F6E67 		.ascii	"long long unsigned int\000"
 4600      206C6F6E 
 4600      6720756E 
 4600      7369676E 
ARM GAS  /tmp/ccomqgAQ.s 			page 89


 4600      65642069 
 4601              	.LASF138:
 4602 00b9 5F5F6664 		.ascii	"__fdlibm_posix\000"
 4602      6C69626D 
 4602      5F706F73 
 4602      697800
 4603              	.LASF58:
 4604 00c8 5F6C6266 		.ascii	"_lbfsize\000"
 4604      73697A65 
 4604      00
 4605              	.LASF164:
 4606 00d1 61646472 		.ascii	"addr\000"
 4606      00
 4607              	.LASF192:
 4608 00d6 73645F6D 		.ascii	"sd_mmc_wait_end_of_read_blocks\000"
 4608      6D635F77 
 4608      6169745F 
 4608      656E645F 
 4608      6F665F72 
 4609              	.LASF97:
 4610 00f5 5F6E696F 		.ascii	"_niobs\000"
 4610      627300
 4611              	.LASF141:
 4612 00fc 5F74696D 		.ascii	"_timezone\000"
 4612      657A6F6E 
 4612      6500
 4613              	.LASF203:
 4614 0106 73645F6D 		.ascii	"sd_mmc_removal_0\000"
 4614      6D635F72 
 4614      656D6F76 
 4614      616C5F30 
 4614      00
 4615              	.LASF137:
 4616 0117 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 4616      6C69626D 
 4616      5F786F70 
 4616      656E00
 4617              	.LASF117:
 4618 0126 5F6D6272 		.ascii	"_mbrtowc_state\000"
 4618      746F7763 
 4618      5F737461 
 4618      746500
 4619              	.LASF143:
 4620 0135 5F747A6E 		.ascii	"_tzname\000"
 4620      616D6500 
 4621              	.LASF112:
 4622 013d 5F776374 		.ascii	"_wctomb_state\000"
 4622      6F6D625F 
 4622      73746174 
 4622      6500
 4623              	.LASF35:
 4624 014b 5F5F746D 		.ascii	"__tm_sec\000"
 4624      5F736563 
 4624      00
 4625              	.LASF63:
 4626 0154 5F636C6F 		.ascii	"_close\000"
 4626      736500
ARM GAS  /tmp/ccomqgAQ.s 			page 90


 4627              	.LASF1:
 4628 015b 7369676E 		.ascii	"signed char\000"
 4628      65642063 
 4628      68617200 
 4629              	.LASF155:
 4630 0167 4D617850 		.ascii	"MaxPinNumber\000"
 4630      696E4E75 
 4630      6D626572 
 4630      00
 4631              	.LASF64:
 4632 0174 5F756275 		.ascii	"_ubuf\000"
 4632      6600
 4633              	.LASF53:
 4634 017a 5F626173 		.ascii	"_base\000"
 4634      6500
 4635              	.LASF152:
 4636 0180 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 4636      5F474D41 
 4636      435F5048 
 4636      595F494E 
 4636      54455252 
 4637              	.LASF93:
 4638 0198 5F5F7366 		.ascii	"__sf\000"
 4638      00
 4639              	.LASF44:
 4640 019d 5F6F6E5F 		.ascii	"_on_exit_args\000"
 4640      65786974 
 4640      5F617267 
 4640      7300
 4641              	.LASF172:
 4642 01ab 73645F6D 		.ascii	"sd_mmc_mem_2_ram\000"
 4642      6D635F6D 
 4642      656D5F32 
 4642      5F72616D 
 4642      00
 4643              	.LASF59:
 4644 01bc 5F636F6F 		.ascii	"_cookie\000"
 4644      6B696500 
 4645              	.LASF92:
 4646 01c4 5F5F7367 		.ascii	"__sglue\000"
 4646      6C756500 
 4647              	.LASF7:
 4648 01cc 6C6F6E67 		.ascii	"long int\000"
 4648      20696E74 
 4648      00
 4649              	.LASF16:
 4650 01d5 49544D5F 		.ascii	"ITM_RxBuffer\000"
 4650      52784275 
 4650      66666572 
 4650      00
 4651              	.LASF184:
 4652 01e2 73645F6D 		.ascii	"sd_mmc_read_capacity\000"
 4652      6D635F72 
 4652      6561645F 
 4652      63617061 
 4652      63697479 
 4653              	.LASF56:
ARM GAS  /tmp/ccomqgAQ.s 			page 91


 4654 01f7 5F666C61 		.ascii	"_flags\000"
 4654      677300
 4655              	.LASF157:
 4656 01fe 50776D53 		.ascii	"PwmSlowClock\000"
 4656      6C6F7743 
 4656      6C6F636B 
 4656      00
 4657              	.LASF180:
 4658 020b 73645F6D 		.ascii	"sd_mmc_unload\000"
 4658      6D635F75 
 4658      6E6C6F61 
 4658      6400
 4659              	.LASF136:
 4660 0219 5F5F6664 		.ascii	"__fdlibm_svid\000"
 4660      6C69626D 
 4660      5F737669 
 4660      6400
 4661              	.LASF84:
 4662 0227 5F726573 		.ascii	"_result_k\000"
 4662      756C745F 
 4662      6B00
 4663              	.LASF10:
 4664 0231 6C6F6E67 		.ascii	"long long int\000"
 4664      206C6F6E 
 4664      6720696E 
 4664      7400
 4665              	.LASF176:
 4666 023f 73645F6D 		.ascii	"sd_mmc_wr_protect\000"
 4666      6D635F77 
 4666      725F7072 
 4666      6F746563 
 4666      7400
 4667              	.LASF133:
 4668 0251 646F7562 		.ascii	"double\000"
 4668      6C6500
 4669              	.LASF88:
 4670 0258 5F637674 		.ascii	"_cvtbuf\000"
 4670      62756600 
 4671              	.LASF34:
 4672 0260 5F5F746D 		.ascii	"__tm\000"
 4672      00
 4673              	.LASF196:
 4674 0265 73645F6D 		.ascii	"sd_mmc_init_write_blocks\000"
 4674      6D635F69 
 4674      6E69745F 
 4674      77726974 
 4674      655F626C 
 4675              	.LASF118:
 4676 027e 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 4676      72746F77 
 4676      63735F73 
 4676      74617465 
 4676      00
 4677              	.LASF116:
 4678 028f 5F6D6272 		.ascii	"_mbrlen_state\000"
 4678      6C656E5F 
 4678      73746174 
ARM GAS  /tmp/ccomqgAQ.s 			page 92


 4678      6500
 4679              	.LASF45:
 4680 029d 5F666E61 		.ascii	"_fnargs\000"
 4680      72677300 
 4681              	.LASF51:
 4682 02a5 5F666E73 		.ascii	"_fns\000"
 4682      00
 4683              	.LASF8:
 4684 02aa 5F5F7569 		.ascii	"__uint32_t\000"
 4684      6E743332 
 4684      5F7400
 4685              	.LASF31:
 4686 02b5 5F736967 		.ascii	"_sign\000"
 4686      6E00
 4687              	.LASF148:
 4688 02bb 4150494E 		.ascii	"APIN_UART1_RXD\000"
 4688      5F554152 
 4688      54315F52 
 4688      584400
 4689              	.LASF190:
 4690 02ca 73645F6D 		.ascii	"sd_mmc_get_type\000"
 4690      6D635F67 
 4690      65745F74 
 4690      79706500 
 4691              	.LASF125:
 4692 02da 5F696D70 		.ascii	"_impure_ptr\000"
 4692      7572655F 
 4692      70747200 
 4693              	.LASF76:
 4694 02e6 5F737464 		.ascii	"_stderr\000"
 4694      65727200 
 4695              	.LASF33:
 4696 02ee 5F426967 		.ascii	"_Bigint\000"
 4696      696E7400 
 4697              	.LASF146:
 4698 02f6 4150494E 		.ascii	"APIN_UART0_TXD\000"
 4698      5F554152 
 4698      54305F54 
 4698      584400
 4699              	.LASF123:
 4700 0305 5F6E6D61 		.ascii	"_nmalloc\000"
 4700      6C6C6F63 
 4700      00
 4701              	.LASF179:
 4702 030e 73645F6D 		.ascii	"sd_mmc_unload_0\000"
 4702      6D635F75 
 4702      6E6C6F61 
 4702      645F3000 
 4703              	.LASF177:
 4704 031e 73645F6D 		.ascii	"sd_mmc_unload_1\000"
 4704      6D635F75 
 4704      6E6C6F61 
 4704      645F3100 
 4705              	.LASF149:
 4706 032e 4150494E 		.ascii	"APIN_UART1_TXD\000"
 4706      5F554152 
 4706      54315F54 
ARM GAS  /tmp/ccomqgAQ.s 			page 93


 4706      584400
 4707              	.LASF70:
 4708 033d 5F6D6273 		.ascii	"_mbstate\000"
 4708      74617465 
 4708      00
 4709              	.LASF23:
 4710 0346 5F5F7763 		.ascii	"__wchb\000"
 4710      686200
 4711              	.LASF17:
 4712 034d 53797374 		.ascii	"SystemCoreClock\000"
 4712      656D436F 
 4712      7265436C 
 4712      6F636B00 
 4713              	.LASF165:
 4714 035d 6E756D42 		.ascii	"numBlocks\000"
 4714      6C6F636B 
 4714      7300
 4715              	.LASF139:
 4716 0367 5F5F6664 		.ascii	"__fdlib_version\000"
 4716      6C69625F 
 4716      76657273 
 4716      696F6E00 
 4717              	.LASF87:
 4718 0377 5F637674 		.ascii	"_cvtlen\000"
 4718      6C656E00 
 4719              	.LASF197:
 4720 037f 73645F6D 		.ascii	"sd_mmc_start_write_blocks\000"
 4720      6D635F73 
 4720      74617274 
 4720      5F777269 
 4720      74655F62 
 4721              	.LASF9:
 4722 0399 6C6F6E67 		.ascii	"long unsigned int\000"
 4722      20756E73 
 4722      69676E65 
 4722      6420696E 
 4722      7400
 4723              	.LASF182:
 4724 03ab 6E625F73 		.ascii	"nb_sector\000"
 4724      6563746F 
 4724      7200
 4725              	.LASF57:
 4726 03b5 5F66696C 		.ascii	"_file\000"
 4726      6500
 4727              	.LASF189:
 4728 03bb 73645F6D 		.ascii	"sd_mmc_get_capacity\000"
 4728      6D635F67 
 4728      65745F63 
 4728      61706163 
 4728      69747900 
 4729              	.LASF144:
 4730 03cf 4150494E 		.ascii	"APINS_UART0\000"
 4730      535F5541 
 4730      52543000 
 4731              	.LASF147:
 4732 03db 4150494E 		.ascii	"APINS_UART1\000"
 4732      535F5541 
ARM GAS  /tmp/ccomqgAQ.s 			page 94


 4732      52543100 
 4733              	.LASF175:
 4734 03e7 73645F6D 		.ascii	"sd_mmc_wr_protect_0\000"
 4734      6D635F77 
 4734      725F7072 
 4734      6F746563 
 4734      745F3000 
 4735              	.LASF174:
 4736 03fb 73645F6D 		.ascii	"sd_mmc_wr_protect_1\000"
 4736      6D635F77 
 4736      725F7072 
 4736      6F746563 
 4736      745F3100 
 4737              	.LASF4:
 4738 040f 73686F72 		.ascii	"short unsigned int\000"
 4738      7420756E 
 4738      7369676E 
 4738      65642069 
 4738      6E7400
 4739              	.LASF90:
 4740 0422 5F617465 		.ascii	"_atexit0\000"
 4740      78697430 
 4740      00
 4741              	.LASF114:
 4742 042b 5F736967 		.ascii	"_signal_buf\000"
 4742      6E616C5F 
 4742      62756600 
 4743              	.LASF105:
 4744 0437 5F617363 		.ascii	"_asctime_buf\000"
 4744      74696D65 
 4744      5F627566 
 4744      00
 4745              	.LASF194:
 4746 0444 73645F6D 		.ascii	"sd_mmc_start_read_blocks\000"
 4746      6D635F73 
 4746      74617274 
 4746      5F726561 
 4746      645F626C 
 4747              	.LASF83:
 4748 045d 5F726573 		.ascii	"_result\000"
 4748      756C7400 
 4749              	.LASF22:
 4750 0465 5F5F7763 		.ascii	"__wch\000"
 4750      6800
 4751              	.LASF122:
 4752 046b 5F6E6578 		.ascii	"_nextf\000"
 4752      746600
 4753              	.LASF168:
 4754 0472 736C6F74 		.ascii	"slot\000"
 4754      00
 4755              	.LASF21:
 4756 0477 77696E74 		.ascii	"wint_t\000"
 4756      5F7400
 4757              	.LASF160:
 4758 047e 4354524C 		.ascii	"CTRL_NO_PRESENT\000"
 4758      5F4E4F5F 
 4758      50524553 
ARM GAS  /tmp/ccomqgAQ.s 			page 95


 4758      454E5400 
 4759              	.LASF154:
 4760 048e 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 4760      535F474D 
 4760      41435F50 
 4760      485900
 4761              	.LASF69:
 4762 049d 5F6C6F63 		.ascii	"_lock\000"
 4762      6B00
 4763              	.LASF200:
 4764 04a3 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 4764      652F746F 
 4764      72626A6F 
 4764      726E2F65 
 4764      636C6970 
 4765              	.LASF101:
 4766 04d2 5F6D756C 		.ascii	"_mult\000"
 4766      7400
 4767              	.LASF173:
 4768 04d8 73645F6D 		.ascii	"sd_mmc_removal\000"
 4768      6D635F72 
 4768      656D6F76 
 4768      616C00
 4769              	.LASF61:
 4770 04e7 5F777269 		.ascii	"_write\000"
 4770      746500
 4771              	.LASF40:
 4772 04ee 5F5F746D 		.ascii	"__tm_year\000"
 4772      5F796561 
 4772      7200
 4773              	.LASF103:
 4774 04f8 5F756E75 		.ascii	"_unused_rand\000"
 4774      7365645F 
 4774      72616E64 
 4774      00
 4775              	.LASF186:
 4776 0505 73645F6D 		.ascii	"sd_mmc_test_unit_ready_0\000"
 4776      6D635F74 
 4776      6573745F 
 4776      756E6974 
 4776      5F726561 
 4777              	.LASF185:
 4778 051e 73645F6D 		.ascii	"sd_mmc_test_unit_ready_1\000"
 4778      6D635F74 
 4778      6573745F 
 4778      756E6974 
 4778      5F726561 
 4779              	.LASF131:
 4780 0537 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 4780      6972715F 
 4780      70726576 
 4780      5F696E74 
 4780      65727275 
 4781              	.LASF15:
 4782 0554 73697A65 		.ascii	"sizetype\000"
 4782      74797065 
 4782      00
ARM GAS  /tmp/ccomqgAQ.s 			page 96


 4783              	.LASF67:
 4784 055d 5F6F6666 		.ascii	"_offset\000"
 4784      73657400 
 4785              	.LASF191:
 4786 0565 73645F6D 		.ascii	"sd_mmc_check\000"
 4786      6D635F63 
 4786      6865636B 
 4786      00
 4787              	.LASF198:
 4788 0572 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 4788      43393920 
 4788      362E332E 
 4788      31203230 
 4788      31373036 
 4789 05a5 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 4789      76352D64 
 4789      3136202D 
 4789      6D666C6F 
 4789      61742D61 
 4790 05d8 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 4790      6E2D7365 
 4790      6374696F 
 4790      6E73202D 
 4790      66646174 
 4791 060b 6F6E7374 		.ascii	"onstant\000"
 4791      616E7400 
 4792              	.LASF27:
 4793 0613 5F666C6F 		.ascii	"_flock_t\000"
 4793      636B5F74 
 4793      00
 4794              	.LASF39:
 4795 061c 5F5F746D 		.ascii	"__tm_mon\000"
 4795      5F6D6F6E 
 4795      00
 4796              	.LASF202:
 4797 0625 73645F6D 		.ascii	"sd_mmc_removal_1\000"
 4797      6D635F72 
 4797      656D6F76 
 4797      616C5F31 
 4797      00
 4798              	.LASF49:
 4799 0636 5F617465 		.ascii	"_atexit\000"
 4799      78697400 
 4800              	.LASF127:
 4801 063e 7375626F 		.ascii	"suboptarg\000"
 4801      70746172 
 4801      6700
 4802              	.LASF81:
 4803 0648 5F5F7364 		.ascii	"__sdidinit\000"
 4803      6964696E 
 4803      697400
 4804              	.LASF19:
 4805 0653 5F6F6666 		.ascii	"_off_t\000"
 4805      5F7400
 4806              	.LASF132:
 4807 065a 666C6F61 		.ascii	"float\000"
 4807      7400
ARM GAS  /tmp/ccomqgAQ.s 			page 97


 4808              	.LASF187:
 4809 0660 73645F6D 		.ascii	"sd_mmc_test_unit_ready\000"
 4809      6D635F74 
 4809      6573745F 
 4809      756E6974 
 4809      5F726561 
 4810              	.LASF128:
 4811 0677 675F696E 		.ascii	"g_interrupt_enabled\000"
 4811      74657272 
 4811      7570745F 
 4811      656E6162 
 4811      6C656400 
 4812              	.LASF18:
 4813 068b 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 4813      4B5F5245 
 4813      43555253 
 4813      4956455F 
 4813      5400
 4814              	.LASF60:
 4815 069d 5F726561 		.ascii	"_read\000"
 4815      6400
 4816              	.LASF129:
 4817 06a3 5F426F6F 		.ascii	"_Bool\000"
 4817      6C00
 4818              	.LASF13:
 4819 06a9 696E7433 		.ascii	"int32_t\000"
 4819      325F7400 
 4820              	.LASF46:
 4821 06b1 5F64736F 		.ascii	"_dso_handle\000"
 4821      5F68616E 
 4821      646C6500 
 4822              	.LASF89:
 4823 06bd 5F6E6577 		.ascii	"_new\000"
 4823      00
 4824              	.LASF170:
 4825 06c2 73645F6D 		.ascii	"sd_mmc_mem_2_ram_0\000"
 4825      6D635F6D 
 4825      656D5F32 
 4825      5F72616D 
 4825      5F3000
 4826              	.LASF169:
 4827 06d5 73645F6D 		.ascii	"sd_mmc_mem_2_ram_1\000"
 4827      6D635F6D 
 4827      656D5F32 
 4827      5F72616D 
 4827      5F3100
 4828              	.LASF145:
 4829 06e8 4150494E 		.ascii	"APIN_UART0_RXD\000"
 4829      5F554152 
 4829      54305F52 
 4829      584400
 4830              	.LASF121:
 4831 06f7 5F685F65 		.ascii	"_h_errno\000"
 4831      72726E6F 
 4831      00
 4832              	.LASF110:
 4833 0700 5F6D626C 		.ascii	"_mblen_state\000"
ARM GAS  /tmp/ccomqgAQ.s 			page 98


 4833      656E5F73 
 4833      74617465 
 4833      00
 4834              	.LASF42:
 4835 070d 5F5F746D 		.ascii	"__tm_yday\000"
 4835      5F796461 
 4835      7900
 4836              	.LASF52:
 4837 0717 5F5F7362 		.ascii	"__sbuf\000"
 4837      756600
 4838              	.LASF71:
 4839 071e 5F666C61 		.ascii	"_flags2\000"
 4839      67733200 
 4840              	.LASF86:
 4841 0726 5F667265 		.ascii	"_freelist\000"
 4841      656C6973 
 4841      7400
 4842              	.LASF95:
 4843 0730 5F5F4649 		.ascii	"__FILE\000"
 4843      4C4500
 4844              	.LASF26:
 4845 0737 5F6D6273 		.ascii	"_mbstate_t\000"
 4845      74617465 
 4845      5F7400
 4846              	.LASF156:
 4847 0742 50776D46 		.ascii	"PwmFastClock\000"
 4847      61737443 
 4847      6C6F636B 
 4847      00
 4848              	.LASF55:
 4849 074f 5F5F7346 		.ascii	"__sFILE\000"
 4849      494C4500 
 4850              	.LASF108:
 4851 0757 5F72616E 		.ascii	"_rand_next\000"
 4851      645F6E65 
 4851      787400
 4852              	.LASF195:
 4853 0762 73645F6D 		.ascii	"sd_mmc_wait_end_of_write_blocks\000"
 4853      6D635F77 
 4853      6169745F 
 4853      656E645F 
 4853      6F665F77 
 4854              	.LASF98:
 4855 0782 5F696F62 		.ascii	"_iobs\000"
 4855      7300
 4856              	.LASF77:
 4857 0788 5F696E63 		.ascii	"_inc\000"
 4857      00
 4858              	.LASF50:
 4859 078d 5F696E64 		.ascii	"_ind\000"
 4859      00
 4860              	.LASF80:
 4861 0792 5F637572 		.ascii	"_current_locale\000"
 4861      72656E74 
 4861      5F6C6F63 
 4861      616C6500 
 4862              	.LASF82:
ARM GAS  /tmp/ccomqgAQ.s 			page 99


 4863 07a2 5F5F636C 		.ascii	"__cleanup\000"
 4863      65616E75 
 4863      7000
 4864              	.LASF30:
 4865 07ac 5F6D6178 		.ascii	"_maxwds\000"
 4865      77647300 
 4866              	.LASF72:
 4867 07b4 5F726565 		.ascii	"_reent\000"
 4867      6E7400
 4868              	.LASF100:
 4869 07bb 5F736565 		.ascii	"_seed\000"
 4869      6400
 4870              	.LASF24:
 4871 07c1 5F5F636F 		.ascii	"__count\000"
 4871      756E7400 
 4872              	.LASF14:
 4873 07c9 75696E74 		.ascii	"uint32_t\000"
 4873      33325F74 
 4873      00
 4874              	.LASF37:
 4875 07d2 5F5F746D 		.ascii	"__tm_hour\000"
 4875      5F686F75 
 4875      7200
 4876              	.LASF62:
 4877 07dc 5F736565 		.ascii	"_seek\000"
 4877      6B00
 4878              	.LASF181:
 4879 07e2 73645F6D 		.ascii	"sd_mmc_read_capacity_1\000"
 4879      6D635F72 
 4879      6561645F 
 4879      63617061 
 4879      63697479 
 4880              	.LASF113:
 4881 07f9 5F6C3634 		.ascii	"_l64a_buf\000"
 4881      615F6275 
 4881      6600
 4882              	.LASF159:
 4883 0803 4354524C 		.ascii	"CTRL_FAIL\000"
 4883      5F464149 
 4883      4C00
 4884              	.LASF199:
 4885 080d 2E2E2F6C 		.ascii	"../libraries/Storage/sd_mmc_mem.c\000"
 4885      69627261 
 4885      72696573 
 4885      2F53746F 
 4885      72616765 
 4886              	.LASF134:
 4887 082f 6C6F6E67 		.ascii	"long double\000"
 4887      20646F75 
 4887      626C6500 
 4888              	.LASF73:
 4889 083b 5F657272 		.ascii	"_errno\000"
 4889      6E6F00
 4890              	.LASF94:
 4891 0842 63686172 		.ascii	"char\000"
 4891      00
 4892              	.LASF66:
ARM GAS  /tmp/ccomqgAQ.s 			page 100


 4893 0847 5F626C6B 		.ascii	"_blksize\000"
 4893      73697A65 
 4893      00
 4894              	.LASF54:
 4895 0850 5F73697A 		.ascii	"_size\000"
 4895      6500
 4896              	.LASF0:
 4897 0856 756E7369 		.ascii	"unsigned int\000"
 4897      676E6564 
 4897      20696E74 
 4897      00
 4898              	.LASF162:
 4899 0863 4374726C 		.ascii	"Ctrl_status\000"
 4899      5F737461 
 4899      74757300 
 4900              	.LASF6:
 4901 086f 5F5F696E 		.ascii	"__int32_t\000"
 4901      7433325F 
 4901      7400
 4902              	.LASF29:
 4903 0879 5F6E6578 		.ascii	"_next\000"
 4903      7400
 4904              	.LASF104:
 4905 087f 5F737472 		.ascii	"_strtok_last\000"
 4905      746F6B5F 
 4905      6C617374 
 4905      00
 4906              	.LASF47:
 4907 088c 5F666E74 		.ascii	"_fntypes\000"
 4907      79706573 
 4907      00
 4908              	.LASF183:
 4909 0895 73645F6D 		.ascii	"sd_mmc_read_capacity_0\000"
 4909      6D635F72 
 4909      6561645F 
 4909      63617061 
 4909      63697479 
 4910              	.LASF2:
 4911 08ac 756E7369 		.ascii	"unsigned char\000"
 4911      676E6564 
 4911      20636861 
 4911      7200
 4912              	.LASF102:
 4913 08ba 5F616464 		.ascii	"_add\000"
 4913      00
 4914              	.LASF151:
 4915 08bf 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 4915      5F48534D 
 4915      43495F44 
 4915      41544100 
 4916              	.LASF28:
 4917 08cf 5F5F554C 		.ascii	"__ULong\000"
 4917      6F6E6700 
 4918              	.LASF150:
 4919 08d7 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 4919      5F48534D 
 4919      43495F43 
ARM GAS  /tmp/ccomqgAQ.s 			page 101


 4919      4C4F434B 
 4919      00
 4920              	.LASF163:
 4921 08e8 73645F6D 		.ascii	"sd_mmc_ejected\000"
 4921      6D635F65 
 4921      6A656374 
 4921      656400
 4922              	.LASF201:
 4923 08f7 5F5F6664 		.ascii	"__fdlibm_version\000"
 4923      6C69626D 
 4923      5F766572 
 4923      73696F6E 
 4923      00
 4924              	.LASF126:
 4925 0908 5F676C6F 		.ascii	"_global_impure_ptr\000"
 4925      62616C5F 
 4925      696D7075 
 4925      72655F70 
 4925      747200
 4926              	.LASF32:
 4927 091b 5F776473 		.ascii	"_wds\000"
 4927      00
 4928              	.LASF135:
 4929 0920 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 4929      6C69626D 
 4929      5F696565 
 4929      6500
 4930              	.LASF153:
 4931 092e 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 4931      5F474D41 
 4931      435F5048 
 4931      595F5245 
 4931      53455400 
 4932              	.LASF158:
 4933 0942 4354524C 		.ascii	"CTRL_GOOD\000"
 4933      5F474F4F 
 4933      4400
 4934              	.LASF75:
 4935 094c 5F737464 		.ascii	"_stdout\000"
 4935      6F757400 
 4936              	.LASF41:
 4937 0954 5F5F746D 		.ascii	"__tm_wday\000"
 4937      5F776461 
 4937      7900
 4938              	.LASF96:
 4939 095e 5F676C75 		.ascii	"_glue\000"
 4939      6500
 4940              	.LASF188:
 4941 0964 73645F6D 		.ascii	"sd_mmc_is_write_protected\000"
 4941      6D635F69 
 4941      735F7772 
 4941      6974655F 
 4941      70726F74 
 4942              	.LASF74:
 4943 097e 5F737464 		.ascii	"_stdin\000"
 4943      696E00
 4944              	.LASF25:
ARM GAS  /tmp/ccomqgAQ.s 			page 102


 4945 0985 5F5F7661 		.ascii	"__value\000"
 4945      6C756500 
 4946              	.LASF12:
 4947 098d 75696E74 		.ascii	"uint8_t\000"
 4947      385F7400 
 4948              	.LASF167:
 4949 0995 73645F6D 		.ascii	"sd_mmc_ram_2_mem_0\000"
 4949      6D635F72 
 4949      616D5F32 
 4949      5F6D656D 
 4949      5F3000
 4950              	.LASF166:
 4951 09a8 73645F6D 		.ascii	"sd_mmc_ram_2_mem_1\000"
 4951      6D635F72 
 4951      616D5F32 
 4951      5F6D656D 
 4951      5F3100
 4952              	.LASF91:
 4953 09bb 5F736967 		.ascii	"_sig_func\000"
 4953      5F66756E 
 4953      6300
 4954              	.LASF171:
 4955 09c5 73645F6D 		.ascii	"sd_mmc_ram_2_mem\000"
 4955      6D635F72 
 4955      616D5F32 
 4955      5F6D656D 
 4955      00
 4956              	.LASF161:
 4957 09d6 4354524C 		.ascii	"CTRL_BUSY\000"
 4957      5F425553 
 4957      5900
 4958              	.LASF130:
 4959 09e0 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 4959      6972715F 
 4959      63726974 
 4959      6963616C 
 4959      5F736563 
 4960              	.LASF65:
 4961 0a01 5F6E6275 		.ascii	"_nbuf\000"
 4961      6600
 4962              	.LASF124:
 4963 0a07 5F756E75 		.ascii	"_unused\000"
 4963      73656400 
 4964              	.LASF79:
 4965 0a0f 5F637572 		.ascii	"_current_category\000"
 4965      72656E74 
 4965      5F636174 
 4965      65676F72 
 4965      7900
 4966              	.LASF43:
 4967 0a21 5F5F746D 		.ascii	"__tm_isdst\000"
 4967      5F697364 
 4967      737400
 4968              	.LASF106:
 4969 0a2c 5F6C6F63 		.ascii	"_localtime_buf\000"
 4969      616C7469 
 4969      6D655F62 
ARM GAS  /tmp/ccomqgAQ.s 			page 103


 4969      756600
 4970              	.LASF36:
 4971 0a3b 5F5F746D 		.ascii	"__tm_min\000"
 4971      5F6D696E 
 4971      00
 4972              	.LASF109:
 4973 0a44 5F723438 		.ascii	"_r48\000"
 4973      00
 4974              	.LASF111:
 4975 0a49 5F6D6274 		.ascii	"_mbtowc_state\000"
 4975      6F77635F 
 4975      73746174 
 4975      6500
 4976              	.LASF85:
 4977 0a57 5F703573 		.ascii	"_p5s\000"
 4977      00
 4978              	.LASF38:
 4979 0a5c 5F5F746D 		.ascii	"__tm_mday\000"
 4979      5F6D6461 
 4979      7900
 4980              	.LASF140:
 4981 0a66 4E6F5069 		.ascii	"NoPin\000"
 4981      6E00
 4982              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
