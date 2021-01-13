ARM GAS  /tmp/ccFtFbC6.s 			page 1


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
  12              		.file	"chipid.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.chipid_read,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	chipid_read
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	chipid_read, %function
  25              	chipid_read:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/chipid/chipid.c"
   1:../asf/sam/drivers/chipid/chipid.c **** /**
   2:../asf/sam/drivers/chipid/chipid.c ****  * \file
   3:../asf/sam/drivers/chipid/chipid.c ****  *
   4:../asf/sam/drivers/chipid/chipid.c ****  * \brief Chip Identifier (CHIPID) driver for SAM.
   5:../asf/sam/drivers/chipid/chipid.c ****  *
   6:../asf/sam/drivers/chipid/chipid.c ****  * Copyright (c) 2011-2015 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/chipid/chipid.c ****  *
   8:../asf/sam/drivers/chipid/chipid.c ****  * \asf_license_start
   9:../asf/sam/drivers/chipid/chipid.c ****  *
  10:../asf/sam/drivers/chipid/chipid.c ****  * \page License
  11:../asf/sam/drivers/chipid/chipid.c ****  *
  12:../asf/sam/drivers/chipid/chipid.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/chipid/chipid.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/chipid/chipid.c ****  *
  15:../asf/sam/drivers/chipid/chipid.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/chipid/chipid.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/chipid/chipid.c ****  *
  18:../asf/sam/drivers/chipid/chipid.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/chipid/chipid.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/chipid/chipid.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/chipid/chipid.c ****  *
  22:../asf/sam/drivers/chipid/chipid.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/chipid/chipid.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/chipid/chipid.c ****  *
  25:../asf/sam/drivers/chipid/chipid.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/chipid/chipid.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/chipid/chipid.c ****  *
  28:../asf/sam/drivers/chipid/chipid.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/chipid/chipid.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/chipid/chipid.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccFtFbC6.s 			page 2


  31:../asf/sam/drivers/chipid/chipid.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/chipid/chipid.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/chipid/chipid.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/chipid/chipid.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/chipid/chipid.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/chipid/chipid.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/chipid/chipid.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/chipid/chipid.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/chipid/chipid.c ****  *
  40:../asf/sam/drivers/chipid/chipid.c ****  * \asf_license_stop
  41:../asf/sam/drivers/chipid/chipid.c ****  *
  42:../asf/sam/drivers/chipid/chipid.c ****  */
  43:../asf/sam/drivers/chipid/chipid.c **** /*
  44:../asf/sam/drivers/chipid/chipid.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/chipid/chipid.c ****  */
  46:../asf/sam/drivers/chipid/chipid.c **** 
  47:../asf/sam/drivers/chipid/chipid.c **** #include "chipid.h"
  48:../asf/sam/drivers/chipid/chipid.c **** 
  49:../asf/sam/drivers/chipid/chipid.c **** /// @cond 0
  50:../asf/sam/drivers/chipid/chipid.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/chipid/chipid.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/chipid/chipid.c **** extern "C" {
  53:../asf/sam/drivers/chipid/chipid.c **** #endif
  54:../asf/sam/drivers/chipid/chipid.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/chipid/chipid.c **** /// @endcond
  56:../asf/sam/drivers/chipid/chipid.c **** 
  57:../asf/sam/drivers/chipid/chipid.c **** /**
  58:../asf/sam/drivers/chipid/chipid.c ****  * \defgroup sam_drivers_chipid_group Chip Identifier (CHIPID)
  59:../asf/sam/drivers/chipid/chipid.c ****  *
  60:../asf/sam/drivers/chipid/chipid.c ****  * \par Purpose
  61:../asf/sam/drivers/chipid/chipid.c ****  *
  62:../asf/sam/drivers/chipid/chipid.c ****  * Driver for the Chip Identifier. This driver provides access to the main 
  63:../asf/sam/drivers/chipid/chipid.c ****  * features of the CHIPID.
  64:../asf/sam/drivers/chipid/chipid.c ****  *
  65:../asf/sam/drivers/chipid/chipid.c ****  * \par Usage
  66:../asf/sam/drivers/chipid/chipid.c ****  *
  67:../asf/sam/drivers/chipid/chipid.c ****  * -# Read whole Chip ID information to a struct using \ref chipid_read().
  68:../asf/sam/drivers/chipid/chipid.c ****  *    The read data is defined using \ref chipid_data_t.
  69:../asf/sam/drivers/chipid/chipid.c ****  * -# Read Chip ID fields using following functions:
  70:../asf/sam/drivers/chipid/chipid.c ****  *    - Device version: \ref chipid_read_version();
  71:../asf/sam/drivers/chipid/chipid.c ****  *    - Embedded processor: \ref chipid_read_processor();
  72:../asf/sam/drivers/chipid/chipid.c ****  *    - Non volatile program memory size: \ref chipid_read_sramsize();
  73:../asf/sam/drivers/chipid/chipid.c ****  *    - Second non volatile program memory size: \ref chipid_read_nvpm2size();
  74:../asf/sam/drivers/chipid/chipid.c ****  *    - Internal SRAM size: \ref chipid_read_sramsize();
  75:../asf/sam/drivers/chipid/chipid.c ****  *    - Architecture Identifier: \ref chipid_read_arch();
  76:../asf/sam/drivers/chipid/chipid.c ****  *    - Non volatile program memory type: \ref chipid_read_nvpmtype();
  77:../asf/sam/drivers/chipid/chipid.c ****  *    - Extension flag: \ref chipid_read_extchipid().
  78:../asf/sam/drivers/chipid/chipid.c ****  *
  79:../asf/sam/drivers/chipid/chipid.c ****  * \section dependencies Dependencies
  80:../asf/sam/drivers/chipid/chipid.c ****  * This driver does not depend on other modules.
  81:../asf/sam/drivers/chipid/chipid.c ****  *
  82:../asf/sam/drivers/chipid/chipid.c ****  * @{
  83:../asf/sam/drivers/chipid/chipid.c ****  */
  84:../asf/sam/drivers/chipid/chipid.c **** 
  85:../asf/sam/drivers/chipid/chipid.c **** /**
  86:../asf/sam/drivers/chipid/chipid.c ****  * \brief Get chip identifier information.
  87:../asf/sam/drivers/chipid/chipid.c ****  *
ARM GAS  /tmp/ccFtFbC6.s 			page 3


  88:../asf/sam/drivers/chipid/chipid.c ****  * \param p_chipid Pointer to a CHIPID instance.
  89:../asf/sam/drivers/chipid/chipid.c ****  * \param p_chipid_data Pointer to a data structure to store chip information.
  90:../asf/sam/drivers/chipid/chipid.c ****  *
  91:../asf/sam/drivers/chipid/chipid.c ****  * \return 0 on success.
  92:../asf/sam/drivers/chipid/chipid.c ****  */
  93:../asf/sam/drivers/chipid/chipid.c **** uint32_t chipid_read(Chipid *p_chipid, chipid_data_t *p_chipid_data)
  94:../asf/sam/drivers/chipid/chipid.c **** {
  28              		.loc 1 94 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  95:../asf/sam/drivers/chipid/chipid.c **** 	if (NULL == p_chipid_data) {
  34              		.loc 1 95 0
  35 0000 61B3     		cbz	r1, .L3
  94:../asf/sam/drivers/chipid/chipid.c **** 	if (NULL == p_chipid_data) {
  36              		.loc 1 94 0
  37 0002 2DE9F001 		push	{r4, r5, r6, r7, r8}
  38              		.cfi_def_cfa_offset 20
  39              		.cfi_offset 4, -20
  40              		.cfi_offset 5, -16
  41              		.cfi_offset 6, -12
  42              		.cfi_offset 7, -8
  43              		.cfi_offset 8, -4
  96:../asf/sam/drivers/chipid/chipid.c **** 		return 0xFFFFFFFF;
  97:../asf/sam/drivers/chipid/chipid.c **** 	}
  98:../asf/sam/drivers/chipid/chipid.c **** 	
  99:../asf/sam/drivers/chipid/chipid.c **** 	p_chipid_data->ul_version =
 100:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_VERSION_Msk) >>
  44              		.loc 1 100 0
  45 0006 0568     		ldr	r5, [r0]
 101:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_VERSION_Pos;
 102:../asf/sam/drivers/chipid/chipid.c **** 	p_chipid_data->ul_eproc =
 103:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_EPROC_Msk) >>
 104:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_EPROC_Pos;
 105:../asf/sam/drivers/chipid/chipid.c **** 	p_chipid_data->ul_nvpsiz =
 106:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_NVPSIZ_Msk) >>
 107:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_NVPSIZ_Pos;
 108:../asf/sam/drivers/chipid/chipid.c **** 	p_chipid_data->ul_nvpsiz2 =
  46              		.loc 1 108 0
  47 0008 0024     		movs	r4, #0
 103:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_EPROC_Pos;
  48              		.loc 1 103 0
  49 000a 0268     		ldr	r2, [r0]
 100:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_VERSION_Pos;
  50              		.loc 1 100 0
  51 000c 05F01F08 		and	r8, r5, #31
 106:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_NVPSIZ_Pos;
  52              		.loc 1 106 0
  53 0010 0368     		ldr	r3, [r0]
 103:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_EPROC_Pos;
  54              		.loc 1 103 0
  55 0012 C2F3421C 		ubfx	ip, r2, #5, #3
 109:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_NVPSIZ2_Pos) >>
  56              		.loc 1 109 0
  57 0016 0568     		ldr	r5, [r0]
ARM GAS  /tmp/ccFtFbC6.s 			page 4


 110:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_NVPSIZ2_Pos;
 111:../asf/sam/drivers/chipid/chipid.c **** 	p_chipid_data->ul_sramsiz =
 112:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_SRAMSIZ_Msk) >>
  58              		.loc 1 112 0
  59 0018 0768     		ldr	r7, [r0]
 106:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_NVPSIZ_Pos;
  60              		.loc 1 106 0
  61 001a C3F30323 		ubfx	r3, r3, #8, #4
 113:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_SRAMSIZ_Pos;
 114:../asf/sam/drivers/chipid/chipid.c **** 	p_chipid_data->ul_arch =
 115:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_ARCH_Msk) >>
  62              		.loc 1 115 0
  63 001e 0668     		ldr	r6, [r0]
 116:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_ARCH_Pos;
 117:../asf/sam/drivers/chipid/chipid.c **** 	p_chipid_data->ul_nvptyp =
 118:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_NVPTYP_Msk) >>
  64              		.loc 1 118 0
  65 0020 0568     		ldr	r5, [r0]
 112:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_SRAMSIZ_Pos;
  66              		.loc 1 112 0
  67 0022 C7F30347 		ubfx	r7, r7, #16, #4
 119:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_NVPTYP_Pos;
 120:../asf/sam/drivers/chipid/chipid.c **** 	p_chipid_data->ul_extflag =
 121:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_EXT) >> 31;
  68              		.loc 1 121 0
  69 0026 0268     		ldr	r2, [r0]
 115:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_ARCH_Pos;
  70              		.loc 1 115 0
  71 0028 C6F30756 		ubfx	r6, r6, #20, #8
 118:../asf/sam/drivers/chipid/chipid.c **** 			CHIPID_CIDR_NVPTYP_Pos;
  72              		.loc 1 118 0
  73 002c C5F30275 		ubfx	r5, r5, #28, #3
  99:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_VERSION_Msk) >>
  74              		.loc 1 99 0
  75 0030 C1F80080 		str	r8, [r1]
  76              		.loc 1 121 0
  77 0034 D20F     		lsrs	r2, r2, #31
 102:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_EPROC_Msk) >>
  78              		.loc 1 102 0
  79 0036 C1F804C0 		str	ip, [r1, #4]
 105:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_NVPSIZ_Msk) >>
  80              		.loc 1 105 0
  81 003a 8B60     		str	r3, [r1, #8]
 111:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_SRAMSIZ_Msk) >>
  82              		.loc 1 111 0
  83 003c 0F61     		str	r7, [r1, #16]
 114:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_ARCH_Msk) >>
  84              		.loc 1 114 0
  85 003e 4E61     		str	r6, [r1, #20]
 117:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_NVPTYP_Msk) >>
  86              		.loc 1 117 0
  87 0040 8D61     		str	r5, [r1, #24]
 120:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_EXT) >> 31;
  88              		.loc 1 120 0
  89 0042 CA61     		str	r2, [r1, #28]
 108:../asf/sam/drivers/chipid/chipid.c **** 		(p_chipid->CHIPID_CIDR & CHIPID_CIDR_NVPSIZ2_Pos) >>
  90              		.loc 1 108 0
ARM GAS  /tmp/ccFtFbC6.s 			page 5


  91 0044 CC60     		str	r4, [r1, #12]
 122:../asf/sam/drivers/chipid/chipid.c **** 		
 123:../asf/sam/drivers/chipid/chipid.c **** 	if (p_chipid_data->ul_extflag) {
  92              		.loc 1 123 0
  93 0046 2AB1     		cbz	r2, .L4
 124:../asf/sam/drivers/chipid/chipid.c **** 		p_chipid_data->ul_extid =
 125:../asf/sam/drivers/chipid/chipid.c **** 			p_chipid->CHIPID_EXID & CHIPID_EXID_EXID_Msk;
  94              		.loc 1 125 0
  95 0048 4368     		ldr	r3, [r0, #4]
 126:../asf/sam/drivers/chipid/chipid.c **** 	}
 127:../asf/sam/drivers/chipid/chipid.c **** 	return 0;
  96              		.loc 1 127 0
  97 004a 2046     		mov	r0, r4
  98              	.LVL1:
 124:../asf/sam/drivers/chipid/chipid.c **** 		p_chipid_data->ul_extid =
  99              		.loc 1 124 0
 100 004c 0B62     		str	r3, [r1, #32]
 128:../asf/sam/drivers/chipid/chipid.c **** }
 101              		.loc 1 128 0
 102 004e BDE8F001 		pop	{r4, r5, r6, r7, r8}
 103              		.cfi_remember_state
 104              		.cfi_restore 8
 105              		.cfi_restore 7
 106              		.cfi_restore 6
 107              		.cfi_restore 5
 108              		.cfi_restore 4
 109              		.cfi_def_cfa_offset 0
 110 0052 7047     		bx	lr
 111              	.LVL2:
 112              	.L4:
 113              		.cfi_restore_state
 127:../asf/sam/drivers/chipid/chipid.c **** }
 114              		.loc 1 127 0
 115 0054 1046     		mov	r0, r2
 116              	.LVL3:
 117              		.loc 1 128 0
 118 0056 BDE8F001 		pop	{r4, r5, r6, r7, r8}
 119              		.cfi_restore 4
 120              		.cfi_restore 5
 121              		.cfi_restore 6
 122              		.cfi_restore 7
 123              		.cfi_restore 8
 124              		.cfi_def_cfa_offset 0
 125 005a 7047     		bx	lr
 126              	.LVL4:
 127              	.L3:
  96:../asf/sam/drivers/chipid/chipid.c **** 	}
 128              		.loc 1 96 0
 129 005c 4FF0FF30 		mov	r0, #-1
 130              	.LVL5:
 131 0060 7047     		bx	lr
 132              		.cfi_endproc
 133              	.LFE142:
 134              		.size	chipid_read, .-chipid_read
 135 0062 00BF     		.section	.text.chipid_read_version,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
ARM GAS  /tmp/ccFtFbC6.s 			page 6


 138              		.global	chipid_read_version
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv5-d16
 143              		.type	chipid_read_version, %function
 144              	chipid_read_version:
 145              	.LFB143:
 129:../asf/sam/drivers/chipid/chipid.c **** 
 130:../asf/sam/drivers/chipid/chipid.c **** /**
 131:../asf/sam/drivers/chipid/chipid.c ****  * \brief Get the revision number of the silicon.
 132:../asf/sam/drivers/chipid/chipid.c ****  *
 133:../asf/sam/drivers/chipid/chipid.c ****  * \param p_chipid Pointer to a CHIPID instance.
 134:../asf/sam/drivers/chipid/chipid.c ****  *
 135:../asf/sam/drivers/chipid/chipid.c ****  * \return Revision number of the silicon.
 136:../asf/sam/drivers/chipid/chipid.c ****  */
 137:../asf/sam/drivers/chipid/chipid.c **** uint32_t chipid_read_version(Chipid *p_chipid)
 138:../asf/sam/drivers/chipid/chipid.c **** {
 146              		.loc 1 138 0
 147              		.cfi_startproc
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151              	.LVL6:
 139:../asf/sam/drivers/chipid/chipid.c **** 	return p_chipid->CHIPID_CIDR & CHIPID_CIDR_VERSION_Msk;
 152              		.loc 1 139 0
 153 0000 0068     		ldr	r0, [r0]
 154              	.LVL7:
 140:../asf/sam/drivers/chipid/chipid.c **** }
 155              		.loc 1 140 0
 156 0002 00F01F00 		and	r0, r0, #31
 157 0006 7047     		bx	lr
 158              		.cfi_endproc
 159              	.LFE143:
 160              		.size	chipid_read_version, .-chipid_read_version
 161              		.section	.text.chipid_read_processor,"ax",%progbits
 162              		.align	1
 163              		.p2align 2,,3
 164              		.global	chipid_read_processor
 165              		.syntax unified
 166              		.thumb
 167              		.thumb_func
 168              		.fpu fpv5-d16
 169              		.type	chipid_read_processor, %function
 170              	chipid_read_processor:
 171              	.LFB144:
 141:../asf/sam/drivers/chipid/chipid.c **** 
 142:../asf/sam/drivers/chipid/chipid.c **** /**
 143:../asf/sam/drivers/chipid/chipid.c ****  * \brief Get the version of the embedded ARM processor.
 144:../asf/sam/drivers/chipid/chipid.c ****  *
 145:../asf/sam/drivers/chipid/chipid.c ****  * \param p_chipid Pointer to a CHIPID instance.
 146:../asf/sam/drivers/chipid/chipid.c ****  *
 147:../asf/sam/drivers/chipid/chipid.c ****  * \return Version of the embedded ARM processor.
 148:../asf/sam/drivers/chipid/chipid.c ****  */
 149:../asf/sam/drivers/chipid/chipid.c **** uint32_t chipid_read_processor(Chipid *p_chipid)
 150:../asf/sam/drivers/chipid/chipid.c **** {
 172              		.loc 1 150 0
ARM GAS  /tmp/ccFtFbC6.s 			page 7


 173              		.cfi_startproc
 174              		@ args = 0, pretend = 0, frame = 0
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176              		@ link register save eliminated.
 177              	.LVL8:
 151:../asf/sam/drivers/chipid/chipid.c **** 	return p_chipid->CHIPID_CIDR & CHIPID_CIDR_EPROC_Msk;
 178              		.loc 1 151 0
 179 0000 0068     		ldr	r0, [r0]
 180              	.LVL9:
 152:../asf/sam/drivers/chipid/chipid.c **** }
 181              		.loc 1 152 0
 182 0002 00F0E000 		and	r0, r0, #224
 183 0006 7047     		bx	lr
 184              		.cfi_endproc
 185              	.LFE144:
 186              		.size	chipid_read_processor, .-chipid_read_processor
 187              		.section	.text.chipid_read_arch,"ax",%progbits
 188              		.align	1
 189              		.p2align 2,,3
 190              		.global	chipid_read_arch
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu fpv5-d16
 195              		.type	chipid_read_arch, %function
 196              	chipid_read_arch:
 197              	.LFB145:
 153:../asf/sam/drivers/chipid/chipid.c **** 
 154:../asf/sam/drivers/chipid/chipid.c **** /**
 155:../asf/sam/drivers/chipid/chipid.c ****  * \brief Get the identifier of the architecture.
 156:../asf/sam/drivers/chipid/chipid.c ****  *
 157:../asf/sam/drivers/chipid/chipid.c ****  * \param p_chipid Pointer to a CHIPID instance.
 158:../asf/sam/drivers/chipid/chipid.c ****  *
 159:../asf/sam/drivers/chipid/chipid.c ****  * \return Identifier of the architecture.
 160:../asf/sam/drivers/chipid/chipid.c ****  */
 161:../asf/sam/drivers/chipid/chipid.c **** uint32_t chipid_read_arch(Chipid *p_chipid)
 162:../asf/sam/drivers/chipid/chipid.c **** {
 198              		.loc 1 162 0
 199              		.cfi_startproc
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202              		@ link register save eliminated.
 203              	.LVL10:
 163:../asf/sam/drivers/chipid/chipid.c **** 	return p_chipid->CHIPID_CIDR & CHIPID_CIDR_ARCH_Msk;
 204              		.loc 1 163 0
 205 0000 0068     		ldr	r0, [r0]
 206              	.LVL11:
 164:../asf/sam/drivers/chipid/chipid.c **** }
 207              		.loc 1 164 0
 208 0002 00F07F60 		and	r0, r0, #267386880
 209 0006 7047     		bx	lr
 210              		.cfi_endproc
 211              	.LFE145:
 212              		.size	chipid_read_arch, .-chipid_read_arch
 213              		.section	.text.chipid_read_sramsize,"ax",%progbits
 214              		.align	1
 215              		.p2align 2,,3
ARM GAS  /tmp/ccFtFbC6.s 			page 8


 216              		.global	chipid_read_sramsize
 217              		.syntax unified
 218              		.thumb
 219              		.thumb_func
 220              		.fpu fpv5-d16
 221              		.type	chipid_read_sramsize, %function
 222              	chipid_read_sramsize:
 223              	.LFB146:
 165:../asf/sam/drivers/chipid/chipid.c **** 
 166:../asf/sam/drivers/chipid/chipid.c **** /**
 167:../asf/sam/drivers/chipid/chipid.c ****  * \brief Get the size of the embedded SRAM.
 168:../asf/sam/drivers/chipid/chipid.c ****  *
 169:../asf/sam/drivers/chipid/chipid.c ****  * \param p_chipid Pointer to a CHIPID instance.
 170:../asf/sam/drivers/chipid/chipid.c ****  *
 171:../asf/sam/drivers/chipid/chipid.c ****  * \return SRAM size value.
 172:../asf/sam/drivers/chipid/chipid.c ****  */
 173:../asf/sam/drivers/chipid/chipid.c **** uint32_t chipid_read_sramsize(Chipid *p_chipid)
 174:../asf/sam/drivers/chipid/chipid.c **** {
 224              		.loc 1 174 0
 225              		.cfi_startproc
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228              		@ link register save eliminated.
 229              	.LVL12:
 175:../asf/sam/drivers/chipid/chipid.c **** 	return p_chipid->CHIPID_CIDR & CHIPID_CIDR_SRAMSIZ_Msk;
 230              		.loc 1 175 0
 231 0000 0068     		ldr	r0, [r0]
 232              	.LVL13:
 176:../asf/sam/drivers/chipid/chipid.c **** }
 233              		.loc 1 176 0
 234 0002 00F47020 		and	r0, r0, #983040
 235 0006 7047     		bx	lr
 236              		.cfi_endproc
 237              	.LFE146:
 238              		.size	chipid_read_sramsize, .-chipid_read_sramsize
 239              		.section	.text.chipid_read_nvpmsize,"ax",%progbits
 240              		.align	1
 241              		.p2align 2,,3
 242              		.global	chipid_read_nvpmsize
 243              		.syntax unified
 244              		.thumb
 245              		.thumb_func
 246              		.fpu fpv5-d16
 247              		.type	chipid_read_nvpmsize, %function
 248              	chipid_read_nvpmsize:
 249              	.LFB147:
 177:../asf/sam/drivers/chipid/chipid.c **** 
 178:../asf/sam/drivers/chipid/chipid.c **** /**
 179:../asf/sam/drivers/chipid/chipid.c ****  * \brief Get the size of the first non-volatile program memory.
 180:../asf/sam/drivers/chipid/chipid.c ****  *
 181:../asf/sam/drivers/chipid/chipid.c ****  * \param p_chipid Pointer to a CHIPID instance.
 182:../asf/sam/drivers/chipid/chipid.c ****  *
 183:../asf/sam/drivers/chipid/chipid.c ****  * \return Memory size value.
 184:../asf/sam/drivers/chipid/chipid.c ****  */
 185:../asf/sam/drivers/chipid/chipid.c **** uint32_t chipid_read_nvpmsize(Chipid *p_chipid)
 186:../asf/sam/drivers/chipid/chipid.c **** {
 250              		.loc 1 186 0
ARM GAS  /tmp/ccFtFbC6.s 			page 9


 251              		.cfi_startproc
 252              		@ args = 0, pretend = 0, frame = 0
 253              		@ frame_needed = 0, uses_anonymous_args = 0
 254              		@ link register save eliminated.
 255              	.LVL14:
 187:../asf/sam/drivers/chipid/chipid.c **** 	return p_chipid->CHIPID_CIDR & CHIPID_CIDR_NVPSIZ_Msk;
 256              		.loc 1 187 0
 257 0000 0068     		ldr	r0, [r0]
 258              	.LVL15:
 188:../asf/sam/drivers/chipid/chipid.c **** }
 259              		.loc 1 188 0
 260 0002 00F47060 		and	r0, r0, #3840
 261 0006 7047     		bx	lr
 262              		.cfi_endproc
 263              	.LFE147:
 264              		.size	chipid_read_nvpmsize, .-chipid_read_nvpmsize
 265              		.section	.text.chipid_read_nvpm2size,"ax",%progbits
 266              		.align	1
 267              		.p2align 2,,3
 268              		.global	chipid_read_nvpm2size
 269              		.syntax unified
 270              		.thumb
 271              		.thumb_func
 272              		.fpu fpv5-d16
 273              		.type	chipid_read_nvpm2size, %function
 274              	chipid_read_nvpm2size:
 275              	.LFB148:
 189:../asf/sam/drivers/chipid/chipid.c **** 
 190:../asf/sam/drivers/chipid/chipid.c **** /**
 191:../asf/sam/drivers/chipid/chipid.c ****  * \brief Get the size of the second non-volatile program memory.
 192:../asf/sam/drivers/chipid/chipid.c ****  *
 193:../asf/sam/drivers/chipid/chipid.c ****  * \param p_chipid Pointer to a CHIPID instance.
 194:../asf/sam/drivers/chipid/chipid.c ****  *
 195:../asf/sam/drivers/chipid/chipid.c ****  * \return Memory size value.
 196:../asf/sam/drivers/chipid/chipid.c ****  */
 197:../asf/sam/drivers/chipid/chipid.c **** uint32_t chipid_read_nvpm2size(Chipid *p_chipid)
 198:../asf/sam/drivers/chipid/chipid.c **** {
 276              		.loc 1 198 0
 277              		.cfi_startproc
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280              		@ link register save eliminated.
 281              	.LVL16:
 199:../asf/sam/drivers/chipid/chipid.c **** 	return p_chipid->CHIPID_CIDR & CHIPID_CIDR_NVPSIZ2_Pos;
 282              		.loc 1 199 0
 283 0000 0068     		ldr	r0, [r0]
 284              	.LVL17:
 200:../asf/sam/drivers/chipid/chipid.c **** }
 285              		.loc 1 200 0
 286 0002 00F00C00 		and	r0, r0, #12
 287 0006 7047     		bx	lr
 288              		.cfi_endproc
 289              	.LFE148:
 290              		.size	chipid_read_nvpm2size, .-chipid_read_nvpm2size
 291              		.section	.text.chipid_read_nvpmtype,"ax",%progbits
 292              		.align	1
 293              		.p2align 2,,3
ARM GAS  /tmp/ccFtFbC6.s 			page 10


 294              		.global	chipid_read_nvpmtype
 295              		.syntax unified
 296              		.thumb
 297              		.thumb_func
 298              		.fpu fpv5-d16
 299              		.type	chipid_read_nvpmtype, %function
 300              	chipid_read_nvpmtype:
 301              	.LFB149:
 201:../asf/sam/drivers/chipid/chipid.c **** 
 202:../asf/sam/drivers/chipid/chipid.c **** /**
 203:../asf/sam/drivers/chipid/chipid.c ****  * \brief Get the type of non-volatile program memory.
 204:../asf/sam/drivers/chipid/chipid.c ****  *
 205:../asf/sam/drivers/chipid/chipid.c ****  * \param p_chipid Pointer to a CHIPID instance.
 206:../asf/sam/drivers/chipid/chipid.c ****  *
 207:../asf/sam/drivers/chipid/chipid.c ****  * \return Memory type.
 208:../asf/sam/drivers/chipid/chipid.c ****  */
 209:../asf/sam/drivers/chipid/chipid.c **** uint32_t chipid_read_nvpmtype(Chipid *p_chipid)
 210:../asf/sam/drivers/chipid/chipid.c **** {
 302              		.loc 1 210 0
 303              		.cfi_startproc
 304              		@ args = 0, pretend = 0, frame = 0
 305              		@ frame_needed = 0, uses_anonymous_args = 0
 306              		@ link register save eliminated.
 307              	.LVL18:
 211:../asf/sam/drivers/chipid/chipid.c **** 	return p_chipid->CHIPID_CIDR & CHIPID_CIDR_NVPTYP_Msk;
 308              		.loc 1 211 0
 309 0000 0068     		ldr	r0, [r0]
 310              	.LVL19:
 212:../asf/sam/drivers/chipid/chipid.c **** }
 311              		.loc 1 212 0
 312 0002 00F0E040 		and	r0, r0, #1879048192
 313 0006 7047     		bx	lr
 314              		.cfi_endproc
 315              	.LFE149:
 316              		.size	chipid_read_nvpmtype, .-chipid_read_nvpmtype
 317              		.section	.text.chipid_read_extchipid,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	chipid_read_extchipid
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu fpv5-d16
 325              		.type	chipid_read_extchipid, %function
 326              	chipid_read_extchipid:
 327              	.LFB150:
 213:../asf/sam/drivers/chipid/chipid.c **** 
 214:../asf/sam/drivers/chipid/chipid.c **** /**
 215:../asf/sam/drivers/chipid/chipid.c ****  * \brief Get the chip extension identifier.
 216:../asf/sam/drivers/chipid/chipid.c ****  *
 217:../asf/sam/drivers/chipid/chipid.c ****  * \param p_chipid Pointer to a CHIPID instance.
 218:../asf/sam/drivers/chipid/chipid.c ****  *
 219:../asf/sam/drivers/chipid/chipid.c ****  * \return Chip extension identifier if available, else 0.
 220:../asf/sam/drivers/chipid/chipid.c ****  */
 221:../asf/sam/drivers/chipid/chipid.c **** uint32_t chipid_read_extchipid(Chipid *p_chipid)
 222:../asf/sam/drivers/chipid/chipid.c **** {
 328              		.loc 1 222 0
ARM GAS  /tmp/ccFtFbC6.s 			page 11


 329              		.cfi_startproc
 330              		@ args = 0, pretend = 0, frame = 0
 331              		@ frame_needed = 0, uses_anonymous_args = 0
 332              		@ link register save eliminated.
 333              	.LVL20:
 223:../asf/sam/drivers/chipid/chipid.c **** 	if ((p_chipid->CHIPID_CIDR) & CHIPID_CIDR_EXT)
 334              		.loc 1 223 0
 335 0000 0368     		ldr	r3, [r0]
 336 0002 002B     		cmp	r3, #0
 337 0004 01DB     		blt	.L20
 224:../asf/sam/drivers/chipid/chipid.c **** 		return p_chipid->CHIPID_EXID & CHIPID_EXID_EXID_Msk;
 225:../asf/sam/drivers/chipid/chipid.c **** 	else
 226:../asf/sam/drivers/chipid/chipid.c **** 		return 0;
 338              		.loc 1 226 0
 339 0006 0020     		movs	r0, #0
 340              	.LVL21:
 227:../asf/sam/drivers/chipid/chipid.c **** }
 341              		.loc 1 227 0
 342 0008 7047     		bx	lr
 343              	.LVL22:
 344              	.L20:
 224:../asf/sam/drivers/chipid/chipid.c **** 		return p_chipid->CHIPID_EXID & CHIPID_EXID_EXID_Msk;
 345              		.loc 1 224 0
 346 000a 4068     		ldr	r0, [r0, #4]
 347              	.LVL23:
 348 000c 7047     		bx	lr
 349              		.cfi_endproc
 350              	.LFE150:
 351              		.size	chipid_read_extchipid, .-chipid_read_extchipid
 352 000e 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 353              		.align	2
 354              		.type	cpu_irq_critical_section_counter, %object
 355              		.size	cpu_irq_critical_section_counter, 4
 356              	cpu_irq_critical_section_counter:
 357 0000 00000000 		.space	4
 358              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 359              		.type	cpu_irq_prev_interrupt_state, %object
 360              		.size	cpu_irq_prev_interrupt_state, 1
 361              	cpu_irq_prev_interrupt_state:
 362 0000 00       		.space	1
 363              		.text
 364              	.Letext0:
 365              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 366              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 367              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 368              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 369              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/chip
 370              		.file 7 "/usr/include/newlib/sys/lock.h"
 371              		.file 8 "/usr/include/newlib/sys/_types.h"
 372              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 373              		.file 10 "/usr/include/newlib/sys/reent.h"
 374              		.file 11 "/usr/include/newlib/stdlib.h"
 375              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 376              		.file 13 "../asf/sam/drivers/chipid/chipid.h"
 377              		.section	.debug_info,"",%progbits
 378              	.Ldebug_info0:
 379 0000 590B0000 		.4byte	0xb59
ARM GAS  /tmp/ccFtFbC6.s 			page 12


 380 0004 0400     		.2byte	0x4
 381 0006 00000000 		.4byte	.Ldebug_abbrev0
 382 000a 04       		.byte	0x4
 383 000b 01       		.uleb128 0x1
 384 000c 1D030000 		.4byte	.LASF157
 385 0010 0C       		.byte	0xc
 386 0011 DE060000 		.4byte	.LASF158
 387 0015 AF020000 		.4byte	.LASF159
 388 0019 00000000 		.4byte	.Ldebug_ranges0+0
 389 001d 00000000 		.4byte	0
 390 0021 00000000 		.4byte	.Ldebug_line0
 391 0025 02       		.uleb128 0x2
 392 0026 04       		.byte	0x4
 393 0027 05       		.byte	0x5
 394 0028 696E7400 		.ascii	"int\000"
 395 002c 03       		.uleb128 0x3
 396 002d 04       		.byte	0x4
 397 002e 07       		.byte	0x7
 398 002f AB050000 		.4byte	.LASF0
 399 0033 03       		.uleb128 0x3
 400 0034 01       		.byte	0x1
 401 0035 06       		.byte	0x6
 402 0036 CE000000 		.4byte	.LASF1
 403 003a 03       		.uleb128 0x3
 404 003b 01       		.byte	0x1
 405 003c 08       		.byte	0x8
 406 003d 86040000 		.4byte	.LASF2
 407 0041 03       		.uleb128 0x3
 408 0042 02       		.byte	0x2
 409 0043 05       		.byte	0x5
 410 0044 0C000000 		.4byte	.LASF3
 411 0048 03       		.uleb128 0x3
 412 0049 02       		.byte	0x2
 413 004a 07       		.byte	0x7
 414 004b DE050000 		.4byte	.LASF4
 415 004f 04       		.uleb128 0x4
 416 0050 B8050000 		.4byte	.LASF6
 417 0054 02       		.byte	0x2
 418 0055 3F       		.byte	0x3f
 419 0056 5A000000 		.4byte	0x5a
 420 005a 03       		.uleb128 0x3
 421 005b 04       		.byte	0x4
 422 005c 05       		.byte	0x5
 423 005d 30010000 		.4byte	.LASF5
 424 0061 04       		.uleb128 0x4
 425 0062 B3010000 		.4byte	.LASF7
 426 0066 02       		.byte	0x2
 427 0067 41       		.byte	0x41
 428 0068 6C000000 		.4byte	0x6c
 429 006c 03       		.uleb128 0x3
 430 006d 04       		.byte	0x4
 431 006e 07       		.byte	0x7
 432 006f 2C020000 		.4byte	.LASF8
 433 0073 03       		.uleb128 0x3
 434 0074 08       		.byte	0x8
 435 0075 05       		.byte	0x5
 436 0076 59010000 		.4byte	.LASF9
ARM GAS  /tmp/ccFtFbC6.s 			page 13


 437 007a 03       		.uleb128 0x3
 438 007b 08       		.byte	0x8
 439 007c 07       		.byte	0x7
 440 007d E0000000 		.4byte	.LASF10
 441 0081 04       		.uleb128 0x4
 442 0082 7E040000 		.4byte	.LASF11
 443 0086 03       		.byte	0x3
 444 0087 2C       		.byte	0x2c
 445 0088 4F000000 		.4byte	0x4f
 446 008c 05       		.uleb128 0x5
 447 008d 81000000 		.4byte	0x81
 448 0091 04       		.uleb128 0x4
 449 0092 67060000 		.4byte	.LASF12
 450 0096 03       		.byte	0x3
 451 0097 30       		.byte	0x30
 452 0098 61000000 		.4byte	0x61
 453 009c 05       		.uleb128 0x5
 454 009d 91000000 		.4byte	0x91
 455 00a1 06       		.uleb128 0x6
 456 00a2 9C000000 		.4byte	0x9c
 457 00a6 07       		.uleb128 0x7
 458 00a7 04       		.byte	0x4
 459 00a8 03       		.uleb128 0x3
 460 00a9 04       		.byte	0x4
 461 00aa 07       		.byte	0x7
 462 00ab 14030000 		.4byte	.LASF13
 463 00af 08       		.uleb128 0x8
 464 00b0 8D000000 		.4byte	.LASF14
 465 00b4 04       		.byte	0x4
 466 00b5 6508     		.2byte	0x865
 467 00b7 8C000000 		.4byte	0x8c
 468 00bb 09       		.uleb128 0x9
 469 00bc 0C020000 		.4byte	.LASF15
 470 00c0 05       		.byte	0x5
 471 00c1 3A       		.byte	0x3a
 472 00c2 91000000 		.4byte	0x91
 473 00c6 0A       		.uleb128 0xa
 474 00c7 08       		.byte	0x8
 475 00c8 06       		.byte	0x6
 476 00c9 38       		.byte	0x38
 477 00ca E7000000 		.4byte	0xe7
 478 00ce 0B       		.uleb128 0xb
 479 00cf F5020000 		.4byte	.LASF16
 480 00d3 06       		.byte	0x6
 481 00d4 39       		.byte	0x39
 482 00d5 A1000000 		.4byte	0xa1
 483 00d9 00       		.byte	0
 484 00da 0B       		.uleb128 0xb
 485 00db 14010000 		.4byte	.LASF17
 486 00df 06       		.byte	0x6
 487 00e0 3A       		.byte	0x3a
 488 00e1 A1000000 		.4byte	0xa1
 489 00e5 04       		.byte	0x4
 490 00e6 00       		.byte	0
 491 00e7 04       		.uleb128 0x4
 492 00e8 25040000 		.4byte	.LASF18
 493 00ec 06       		.byte	0x6
ARM GAS  /tmp/ccFtFbC6.s 			page 14


 494 00ed 3B       		.byte	0x3b
 495 00ee C6000000 		.4byte	0xc6
 496 00f2 04       		.uleb128 0x4
 497 00f3 5C040000 		.4byte	.LASF19
 498 00f7 07       		.byte	0x7
 499 00f8 07       		.byte	0x7
 500 00f9 25000000 		.4byte	0x25
 501 00fd 04       		.uleb128 0x4
 502 00fe C0000000 		.4byte	.LASF20
 503 0102 08       		.byte	0x8
 504 0103 2C       		.byte	0x2c
 505 0104 5A000000 		.4byte	0x5a
 506 0108 04       		.uleb128 0x4
 507 0109 7A050000 		.4byte	.LASF21
 508 010d 08       		.byte	0x8
 509 010e 72       		.byte	0x72
 510 010f 5A000000 		.4byte	0x5a
 511 0113 0C       		.uleb128 0xc
 512 0114 1E040000 		.4byte	.LASF22
 513 0118 09       		.byte	0x9
 514 0119 6501     		.2byte	0x165
 515 011b 2C000000 		.4byte	0x2c
 516 011f 0D       		.uleb128 0xd
 517 0120 04       		.byte	0x4
 518 0121 08       		.byte	0x8
 519 0122 A6       		.byte	0xa6
 520 0123 3E010000 		.4byte	0x13e
 521 0127 0E       		.uleb128 0xe
 522 0128 97020000 		.4byte	.LASF23
 523 012c 08       		.byte	0x8
 524 012d A8       		.byte	0xa8
 525 012e 13010000 		.4byte	0x113
 526 0132 0E       		.uleb128 0xe
 527 0133 05020000 		.4byte	.LASF24
 528 0137 08       		.byte	0x8
 529 0138 A9       		.byte	0xa9
 530 0139 3E010000 		.4byte	0x13e
 531 013d 00       		.byte	0
 532 013e 0F       		.uleb128 0xf
 533 013f 3A000000 		.4byte	0x3a
 534 0143 4E010000 		.4byte	0x14e
 535 0147 10       		.uleb128 0x10
 536 0148 A8000000 		.4byte	0xa8
 537 014c 03       		.byte	0x3
 538 014d 00       		.byte	0
 539 014e 0A       		.uleb128 0xa
 540 014f 08       		.byte	0x8
 541 0150 08       		.byte	0x8
 542 0151 A3       		.byte	0xa3
 543 0152 6F010000 		.4byte	0x16f
 544 0156 0B       		.uleb128 0xb
 545 0157 4E050000 		.4byte	.LASF25
 546 015b 08       		.byte	0x8
 547 015c A5       		.byte	0xa5
 548 015d 25000000 		.4byte	0x25
 549 0161 00       		.byte	0
 550 0162 0B       		.uleb128 0xb
ARM GAS  /tmp/ccFtFbC6.s 			page 15


 551 0163 56050000 		.4byte	.LASF26
 552 0167 08       		.byte	0x8
 553 0168 AA       		.byte	0xaa
 554 0169 1F010000 		.4byte	0x11f
 555 016d 04       		.byte	0x4
 556 016e 00       		.byte	0
 557 016f 04       		.uleb128 0x4
 558 0170 51040000 		.4byte	.LASF27
 559 0174 08       		.byte	0x8
 560 0175 AB       		.byte	0xab
 561 0176 4E010000 		.4byte	0x14e
 562 017a 04       		.uleb128 0x4
 563 017b AE040000 		.4byte	.LASF28
 564 017f 08       		.byte	0x8
 565 0180 AF       		.byte	0xaf
 566 0181 F2000000 		.4byte	0xf2
 567 0185 04       		.uleb128 0x4
 568 0186 0A060000 		.4byte	.LASF29
 569 018a 0A       		.byte	0xa
 570 018b 16       		.byte	0x16
 571 018c 6C000000 		.4byte	0x6c
 572 0190 11       		.uleb128 0x11
 573 0191 D8010000 		.4byte	.LASF34
 574 0195 18       		.byte	0x18
 575 0196 0A       		.byte	0xa
 576 0197 2D       		.byte	0x2d
 577 0198 E3010000 		.4byte	0x1e3
 578 019c 0B       		.uleb128 0xb
 579 019d C2050000 		.4byte	.LASF30
 580 01a1 0A       		.byte	0xa
 581 01a2 2F       		.byte	0x2f
 582 01a3 E3010000 		.4byte	0x1e3
 583 01a7 00       		.byte	0
 584 01a8 12       		.uleb128 0x12
 585 01a9 5F6B00   		.ascii	"_k\000"
 586 01ac 0A       		.byte	0xa
 587 01ad 30       		.byte	0x30
 588 01ae 25000000 		.4byte	0x25
 589 01b2 04       		.byte	0x4
 590 01b3 0B       		.uleb128 0xb
 591 01b4 39050000 		.4byte	.LASF31
 592 01b8 0A       		.byte	0xa
 593 01b9 30       		.byte	0x30
 594 01ba 25000000 		.4byte	0x25
 595 01be 08       		.byte	0x8
 596 01bf 0B       		.uleb128 0xb
 597 01c0 BE010000 		.4byte	.LASF32
 598 01c4 0A       		.byte	0xa
 599 01c5 30       		.byte	0x30
 600 01c6 25000000 		.4byte	0x25
 601 01ca 0C       		.byte	0xc
 602 01cb 0B       		.uleb128 0xb
 603 01cc 7D060000 		.4byte	.LASF33
 604 01d0 0A       		.byte	0xa
 605 01d1 30       		.byte	0x30
 606 01d2 25000000 		.4byte	0x25
 607 01d6 10       		.byte	0x10
ARM GAS  /tmp/ccFtFbC6.s 			page 16


 608 01d7 12       		.uleb128 0x12
 609 01d8 5F7800   		.ascii	"_x\000"
 610 01db 0A       		.byte	0xa
 611 01dc 31       		.byte	0x31
 612 01dd E9010000 		.4byte	0x1e9
 613 01e1 14       		.byte	0x14
 614 01e2 00       		.byte	0
 615 01e3 13       		.uleb128 0x13
 616 01e4 04       		.byte	0x4
 617 01e5 90010000 		.4byte	0x190
 618 01e9 0F       		.uleb128 0xf
 619 01ea 85010000 		.4byte	0x185
 620 01ee F9010000 		.4byte	0x1f9
 621 01f2 10       		.uleb128 0x10
 622 01f3 A8000000 		.4byte	0xa8
 623 01f7 00       		.byte	0
 624 01f8 00       		.byte	0
 625 01f9 11       		.uleb128 0x11
 626 01fa 00020000 		.4byte	.LASF35
 627 01fe 24       		.byte	0x24
 628 01ff 0A       		.byte	0xa
 629 0200 35       		.byte	0x35
 630 0201 72020000 		.4byte	0x272
 631 0205 0B       		.uleb128 0xb
 632 0206 B7000000 		.4byte	.LASF36
 633 020a 0A       		.byte	0xa
 634 020b 37       		.byte	0x37
 635 020c 25000000 		.4byte	0x25
 636 0210 00       		.byte	0
 637 0211 0B       		.uleb128 0xb
 638 0212 26070000 		.4byte	.LASF37
 639 0216 0A       		.byte	0xa
 640 0217 38       		.byte	0x38
 641 0218 25000000 		.4byte	0x25
 642 021c 04       		.byte	0x4
 643 021d 0B       		.uleb128 0xb
 644 021e F7000000 		.4byte	.LASF38
 645 0222 0A       		.byte	0xa
 646 0223 39       		.byte	0x39
 647 0224 25000000 		.4byte	0x25
 648 0228 08       		.byte	0x8
 649 0229 0B       		.uleb128 0xb
 650 022a 6E040000 		.4byte	.LASF39
 651 022e 0A       		.byte	0xa
 652 022f 3A       		.byte	0x3a
 653 0230 25000000 		.4byte	0x25
 654 0234 0C       		.byte	0xc
 655 0235 0B       		.uleb128 0xb
 656 0236 D4030000 		.4byte	.LASF40
 657 023a 0A       		.byte	0xa
 658 023b 3B       		.byte	0x3b
 659 023c 25000000 		.4byte	0x25
 660 0240 10       		.byte	0x10
 661 0241 0B       		.uleb128 0xb
 662 0242 EB020000 		.4byte	.LASF41
 663 0246 0A       		.byte	0xa
 664 0247 3C       		.byte	0x3c
ARM GAS  /tmp/ccFtFbC6.s 			page 17


 665 0248 25000000 		.4byte	0x25
 666 024c 14       		.byte	0x14
 667 024d 0B       		.uleb128 0xb
 668 024e 64050000 		.4byte	.LASF42
 669 0252 0A       		.byte	0xa
 670 0253 3D       		.byte	0x3d
 671 0254 25000000 		.4byte	0x25
 672 0258 18       		.byte	0x18
 673 0259 0B       		.uleb128 0xb
 674 025a B7040000 		.4byte	.LASF43
 675 025e 0A       		.byte	0xa
 676 025f 3E       		.byte	0x3e
 677 0260 25000000 		.4byte	0x25
 678 0264 1C       		.byte	0x1c
 679 0265 0B       		.uleb128 0xb
 680 0266 01070000 		.4byte	.LASF44
 681 026a 0A       		.byte	0xa
 682 026b 3F       		.byte	0x3f
 683 026c 25000000 		.4byte	0x25
 684 0270 20       		.byte	0x20
 685 0271 00       		.byte	0
 686 0272 14       		.uleb128 0x14
 687 0273 06010000 		.4byte	.LASF45
 688 0277 0801     		.2byte	0x108
 689 0279 0A       		.byte	0xa
 690 027a 48       		.byte	0x48
 691 027b B2020000 		.4byte	0x2b2
 692 027f 0B       		.uleb128 0xb
 693 0280 16000000 		.4byte	.LASF46
 694 0284 0A       		.byte	0xa
 695 0285 49       		.byte	0x49
 696 0286 B2020000 		.4byte	0x2b2
 697 028a 00       		.byte	0
 698 028b 0B       		.uleb128 0xb
 699 028c 00000000 		.4byte	.LASF47
 700 0290 0A       		.byte	0xa
 701 0291 4A       		.byte	0x4a
 702 0292 B2020000 		.4byte	0x2b2
 703 0296 80       		.byte	0x80
 704 0297 15       		.uleb128 0x15
 705 0298 D5050000 		.4byte	.LASF48
 706 029c 0A       		.byte	0xa
 707 029d 4C       		.byte	0x4c
 708 029e 85010000 		.4byte	0x185
 709 02a2 0001     		.2byte	0x100
 710 02a4 15       		.uleb128 0x15
 711 02a5 40010000 		.4byte	.LASF49
 712 02a9 0A       		.byte	0xa
 713 02aa 4F       		.byte	0x4f
 714 02ab 85010000 		.4byte	0x185
 715 02af 0401     		.2byte	0x104
 716 02b1 00       		.byte	0
 717 02b2 0F       		.uleb128 0xf
 718 02b3 A6000000 		.4byte	0xa6
 719 02b7 C2020000 		.4byte	0x2c2
 720 02bb 10       		.uleb128 0x10
 721 02bc A8000000 		.4byte	0xa8
ARM GAS  /tmp/ccFtFbC6.s 			page 18


 722 02c0 1F       		.byte	0x1f
 723 02c1 00       		.byte	0
 724 02c2 14       		.uleb128 0x14
 725 02c3 DD030000 		.4byte	.LASF50
 726 02c7 9001     		.2byte	0x190
 727 02c9 0A       		.byte	0xa
 728 02ca 5B       		.byte	0x5b
 729 02cb 00030000 		.4byte	0x300
 730 02cf 0B       		.uleb128 0xb
 731 02d0 C2050000 		.4byte	.LASF30
 732 02d4 0A       		.byte	0xa
 733 02d5 5C       		.byte	0x5c
 734 02d6 00030000 		.4byte	0x300
 735 02da 00       		.byte	0
 736 02db 0B       		.uleb128 0xb
 737 02dc 1A050000 		.4byte	.LASF51
 738 02e0 0A       		.byte	0xa
 739 02e1 5D       		.byte	0x5d
 740 02e2 25000000 		.4byte	0x25
 741 02e6 04       		.byte	0x4
 742 02e7 0B       		.uleb128 0xb
 743 02e8 AE010000 		.4byte	.LASF52
 744 02ec 0A       		.byte	0xa
 745 02ed 5F       		.byte	0x5f
 746 02ee 06030000 		.4byte	0x306
 747 02f2 08       		.byte	0x8
 748 02f3 0B       		.uleb128 0xb
 749 02f4 06010000 		.4byte	.LASF45
 750 02f8 0A       		.byte	0xa
 751 02f9 60       		.byte	0x60
 752 02fa 72020000 		.4byte	0x272
 753 02fe 88       		.byte	0x88
 754 02ff 00       		.byte	0
 755 0300 13       		.uleb128 0x13
 756 0301 04       		.byte	0x4
 757 0302 C2020000 		.4byte	0x2c2
 758 0306 0F       		.uleb128 0xf
 759 0307 16030000 		.4byte	0x316
 760 030b 16030000 		.4byte	0x316
 761 030f 10       		.uleb128 0x10
 762 0310 A8000000 		.4byte	0xa8
 763 0314 1F       		.byte	0x1f
 764 0315 00       		.byte	0
 765 0316 13       		.uleb128 0x13
 766 0317 04       		.byte	0x4
 767 0318 1C030000 		.4byte	0x31c
 768 031c 16       		.uleb128 0x16
 769 031d 11       		.uleb128 0x11
 770 031e C1040000 		.4byte	.LASF53
 771 0322 08       		.byte	0x8
 772 0323 0A       		.byte	0xa
 773 0324 73       		.byte	0x73
 774 0325 42030000 		.4byte	0x342
 775 0329 0B       		.uleb128 0xb
 776 032a 5E020000 		.4byte	.LASF54
 777 032e 0A       		.byte	0xa
 778 032f 74       		.byte	0x74
ARM GAS  /tmp/ccFtFbC6.s 			page 19


 779 0330 42030000 		.4byte	0x342
 780 0334 00       		.byte	0
 781 0335 0B       		.uleb128 0xb
 782 0336 A5050000 		.4byte	.LASF55
 783 033a 0A       		.byte	0xa
 784 033b 75       		.byte	0x75
 785 033c 25000000 		.4byte	0x25
 786 0340 04       		.byte	0x4
 787 0341 00       		.byte	0
 788 0342 13       		.uleb128 0x13
 789 0343 04       		.byte	0x4
 790 0344 3A000000 		.4byte	0x3a
 791 0348 11       		.uleb128 0x11
 792 0349 F7040000 		.4byte	.LASF56
 793 034d 68       		.byte	0x68
 794 034e 0A       		.byte	0xa
 795 034f B3       		.byte	0xb3
 796 0350 72040000 		.4byte	0x472
 797 0354 12       		.uleb128 0x12
 798 0355 5F7000   		.ascii	"_p\000"
 799 0358 0A       		.byte	0xa
 800 0359 B4       		.byte	0xb4
 801 035a 42030000 		.4byte	0x342
 802 035e 00       		.byte	0
 803 035f 12       		.uleb128 0x12
 804 0360 5F7200   		.ascii	"_r\000"
 805 0363 0A       		.byte	0xa
 806 0364 B5       		.byte	0xb5
 807 0365 25000000 		.4byte	0x25
 808 0369 04       		.byte	0x4
 809 036a 12       		.uleb128 0x12
 810 036b 5F7700   		.ascii	"_w\000"
 811 036e 0A       		.byte	0xa
 812 036f B6       		.byte	0xb6
 813 0370 25000000 		.4byte	0x25
 814 0374 08       		.byte	0x8
 815 0375 0B       		.uleb128 0xb
 816 0376 39010000 		.4byte	.LASF57
 817 037a 0A       		.byte	0xa
 818 037b B7       		.byte	0xb7
 819 037c 41000000 		.4byte	0x41
 820 0380 0C       		.byte	0xc
 821 0381 0B       		.uleb128 0xb
 822 0382 3E020000 		.4byte	.LASF58
 823 0386 0A       		.byte	0xa
 824 0387 B8       		.byte	0xb8
 825 0388 41000000 		.4byte	0x41
 826 038c 0E       		.byte	0xe
 827 038d 12       		.uleb128 0x12
 828 038e 5F626600 		.ascii	"_bf\000"
 829 0392 0A       		.byte	0xa
 830 0393 B9       		.byte	0xb9
 831 0394 1D030000 		.4byte	0x31d
 832 0398 10       		.byte	0x10
 833 0399 0B       		.uleb128 0xb
 834 039a 84000000 		.4byte	.LASF59
 835 039e 0A       		.byte	0xa
ARM GAS  /tmp/ccFtFbC6.s 			page 20


 836 039f BA       		.byte	0xba
 837 03a0 25000000 		.4byte	0x25
 838 03a4 18       		.byte	0x18
 839 03a5 0B       		.uleb128 0xb
 840 03a6 20010000 		.4byte	.LASF60
 841 03aa 0A       		.byte	0xa
 842 03ab C1       		.byte	0xc1
 843 03ac A6000000 		.4byte	0xa6
 844 03b0 1C       		.byte	0x1c
 845 03b1 0B       		.uleb128 0xb
 846 03b2 FA010000 		.4byte	.LASF61
 847 03b6 0A       		.byte	0xa
 848 03b7 C3       		.byte	0xc3
 849 03b8 DF050000 		.4byte	0x5df
 850 03bc 20       		.byte	0x20
 851 03bd 0B       		.uleb128 0xb
 852 03be E4020000 		.4byte	.LASF62
 853 03c2 0A       		.byte	0xa
 854 03c3 C5       		.byte	0xc5
 855 03c4 09060000 		.4byte	0x609
 856 03c8 24       		.byte	0x24
 857 03c9 0B       		.uleb128 0xb
 858 03ca 5E050000 		.4byte	.LASF63
 859 03ce 0A       		.byte	0xa
 860 03cf C8       		.byte	0xc8
 861 03d0 2D060000 		.4byte	0x62d
 862 03d4 28       		.byte	0x28
 863 03d5 0B       		.uleb128 0xb
 864 03d6 C7000000 		.4byte	.LASF64
 865 03da 0A       		.byte	0xa
 866 03db C9       		.byte	0xc9
 867 03dc 47060000 		.4byte	0x647
 868 03e0 2C       		.byte	0x2c
 869 03e1 12       		.uleb128 0x12
 870 03e2 5F756200 		.ascii	"_ub\000"
 871 03e6 0A       		.byte	0xa
 872 03e7 CC       		.byte	0xcc
 873 03e8 1D030000 		.4byte	0x31d
 874 03ec 30       		.byte	0x30
 875 03ed 12       		.uleb128 0x12
 876 03ee 5F757000 		.ascii	"_up\000"
 877 03f2 0A       		.byte	0xa
 878 03f3 CD       		.byte	0xcd
 879 03f4 42030000 		.4byte	0x342
 880 03f8 38       		.byte	0x38
 881 03f9 12       		.uleb128 0x12
 882 03fa 5F757200 		.ascii	"_ur\000"
 883 03fe 0A       		.byte	0xa
 884 03ff CE       		.byte	0xce
 885 0400 25000000 		.4byte	0x25
 886 0404 3C       		.byte	0x3c
 887 0405 0B       		.uleb128 0xb
 888 0406 DA000000 		.4byte	.LASF65
 889 040a 0A       		.byte	0xa
 890 040b D1       		.byte	0xd1
 891 040c 4D060000 		.4byte	0x64d
 892 0410 40       		.byte	0x40
ARM GAS  /tmp/ccFtFbC6.s 			page 21


 893 0411 0B       		.uleb128 0xb
 894 0412 D0060000 		.4byte	.LASF66
 895 0416 0A       		.byte	0xa
 896 0417 D2       		.byte	0xd2
 897 0418 5D060000 		.4byte	0x65d
 898 041c 43       		.byte	0x43
 899 041d 12       		.uleb128 0x12
 900 041e 5F6C6200 		.ascii	"_lb\000"
 901 0422 0A       		.byte	0xa
 902 0423 D5       		.byte	0xd5
 903 0424 1D030000 		.4byte	0x31d
 904 0428 44       		.byte	0x44
 905 0429 0B       		.uleb128 0xb
 906 042a 9C050000 		.4byte	.LASF67
 907 042e 0A       		.byte	0xa
 908 042f D8       		.byte	0xd8
 909 0430 25000000 		.4byte	0x25
 910 0434 4C       		.byte	0x4c
 911 0435 0B       		.uleb128 0xb
 912 0436 76010000 		.4byte	.LASF68
 913 043a 0A       		.byte	0xa
 914 043b D9       		.byte	0xd9
 915 043c FD000000 		.4byte	0xfd
 916 0440 50       		.byte	0x50
 917 0441 0B       		.uleb128 0xb
 918 0442 58020000 		.4byte	.LASF69
 919 0446 0A       		.byte	0xa
 920 0447 DC       		.byte	0xdc
 921 0448 90040000 		.4byte	0x490
 922 044c 54       		.byte	0x54
 923 044d 0B       		.uleb128 0xb
 924 044e A9020000 		.4byte	.LASF70
 925 0452 0A       		.byte	0xa
 926 0453 E0       		.byte	0xe0
 927 0454 7A010000 		.4byte	0x17a
 928 0458 58       		.byte	0x58
 929 0459 0B       		.uleb128 0xb
 930 045a FF040000 		.4byte	.LASF71
 931 045e 0A       		.byte	0xa
 932 045f E2       		.byte	0xe2
 933 0460 6F010000 		.4byte	0x16f
 934 0464 5C       		.byte	0x5c
 935 0465 0B       		.uleb128 0xb
 936 0466 C8040000 		.4byte	.LASF72
 937 046a 0A       		.byte	0xa
 938 046b E3       		.byte	0xe3
 939 046c 25000000 		.4byte	0x25
 940 0470 64       		.byte	0x64
 941 0471 00       		.byte	0
 942 0472 17       		.uleb128 0x17
 943 0473 25000000 		.4byte	0x25
 944 0477 90040000 		.4byte	0x490
 945 047b 18       		.uleb128 0x18
 946 047c 90040000 		.4byte	0x490
 947 0480 18       		.uleb128 0x18
 948 0481 A6000000 		.4byte	0xa6
 949 0485 18       		.uleb128 0x18
ARM GAS  /tmp/ccFtFbC6.s 			page 22


 950 0486 CD050000 		.4byte	0x5cd
 951 048a 18       		.uleb128 0x18
 952 048b 25000000 		.4byte	0x25
 953 048f 00       		.byte	0
 954 0490 13       		.uleb128 0x13
 955 0491 04       		.byte	0x4
 956 0492 9B040000 		.4byte	0x49b
 957 0496 06       		.uleb128 0x6
 958 0497 90040000 		.4byte	0x490
 959 049b 19       		.uleb128 0x19
 960 049c 41050000 		.4byte	.LASF73
 961 04a0 2804     		.2byte	0x428
 962 04a2 0A       		.byte	0xa
 963 04a3 3802     		.2byte	0x238
 964 04a5 CD050000 		.4byte	0x5cd
 965 04a9 1A       		.uleb128 0x1a
 966 04aa 90050000 		.4byte	.LASF74
 967 04ae 0A       		.byte	0xa
 968 04af 3A02     		.2byte	0x23a
 969 04b1 25000000 		.4byte	0x25
 970 04b5 00       		.byte	0
 971 04b6 1A       		.uleb128 0x1a
 972 04b7 48010000 		.4byte	.LASF75
 973 04bb 0A       		.byte	0xa
 974 04bc 3F02     		.2byte	0x23f
 975 04be B4060000 		.4byte	0x6b4
 976 04c2 04       		.byte	0x4
 977 04c3 1A       		.uleb128 0x1a
 978 04c4 1C020000 		.4byte	.LASF76
 979 04c8 0A       		.byte	0xa
 980 04c9 3F02     		.2byte	0x23f
 981 04cb B4060000 		.4byte	0x6b4
 982 04cf 08       		.byte	0x8
 983 04d0 1A       		.uleb128 0x1a
 984 04d1 D0010000 		.4byte	.LASF77
 985 04d5 0A       		.byte	0xa
 986 04d6 3F02     		.2byte	0x23f
 987 04d8 B4060000 		.4byte	0x6b4
 988 04dc 0C       		.byte	0xc
 989 04dd 1A       		.uleb128 0x1a
 990 04de 15050000 		.4byte	.LASF78
 991 04e2 0A       		.byte	0xa
 992 04e3 4102     		.2byte	0x241
 993 04e5 25000000 		.4byte	0x25
 994 04e9 10       		.byte	0x10
 995 04ea 1A       		.uleb128 0x1a
 996 04eb 26000000 		.4byte	.LASF79
 997 04ef 0A       		.byte	0xa
 998 04f0 4202     		.2byte	0x242
 999 04f2 96080000 		.4byte	0x896
 1000 04f6 14       		.byte	0x14
 1001 04f7 1A       		.uleb128 0x1a
 1002 04f8 55060000 		.4byte	.LASF80
 1003 04fc 0A       		.byte	0xa
 1004 04fd 4402     		.2byte	0x244
 1005 04ff 25000000 		.4byte	0x25
 1006 0503 30       		.byte	0x30
ARM GAS  /tmp/ccFtFbC6.s 			page 23


 1007 0504 1A       		.uleb128 0x1a
 1008 0505 1F050000 		.4byte	.LASF81
 1009 0509 0A       		.byte	0xa
 1010 050a 4502     		.2byte	0x245
 1011 050c 03060000 		.4byte	0x603
 1012 0510 34       		.byte	0x34
 1013 0511 1A       		.uleb128 0x1a
 1014 0512 04040000 		.4byte	.LASF82
 1015 0516 0A       		.byte	0xa
 1016 0517 4702     		.2byte	0x247
 1017 0519 25000000 		.4byte	0x25
 1018 051d 38       		.byte	0x38
 1019 051e 1A       		.uleb128 0x1a
 1020 051f 2F050000 		.4byte	.LASF83
 1021 0523 0A       		.byte	0xa
 1022 0524 4902     		.2byte	0x249
 1023 0526 B1080000 		.4byte	0x8b1
 1024 052a 3C       		.byte	0x3c
 1025 052b 1A       		.uleb128 0x1a
 1026 052c 8F020000 		.4byte	.LASF84
 1027 0530 0A       		.byte	0xa
 1028 0531 4C02     		.2byte	0x24c
 1029 0533 E3010000 		.4byte	0x1e3
 1030 0537 40       		.byte	0x40
 1031 0538 1A       		.uleb128 0x1a
 1032 0539 4F010000 		.4byte	.LASF85
 1033 053d 0A       		.byte	0xa
 1034 053e 4D02     		.2byte	0x24d
 1035 0540 25000000 		.4byte	0x25
 1036 0544 44       		.byte	0x44
 1037 0545 1A       		.uleb128 0x1a
 1038 0546 42070000 		.4byte	.LASF86
 1039 054a 0A       		.byte	0xa
 1040 054b 4E02     		.2byte	0x24e
 1041 054d E3010000 		.4byte	0x1e3
 1042 0551 48       		.byte	0x48
 1043 0552 1A       		.uleb128 0x1a
 1044 0553 D0040000 		.4byte	.LASF87
 1045 0557 0A       		.byte	0xa
 1046 0558 4F02     		.2byte	0x24f
 1047 055a B7080000 		.4byte	0x8b7
 1048 055e 4C       		.byte	0x4c
 1049 055f 1A       		.uleb128 0x1a
 1050 0560 24020000 		.4byte	.LASF88
 1051 0564 0A       		.byte	0xa
 1052 0565 5202     		.2byte	0x252
 1053 0567 25000000 		.4byte	0x25
 1054 056b 50       		.byte	0x50
 1055 056c 1A       		.uleb128 0x1a
 1056 056d 6E010000 		.4byte	.LASF89
 1057 0571 0A       		.byte	0xa
 1058 0572 5302     		.2byte	0x253
 1059 0574 CD050000 		.4byte	0x5cd
 1060 0578 54       		.byte	0x54
 1061 0579 1A       		.uleb128 0x1a
 1062 057a A4020000 		.4byte	.LASF90
 1063 057e 0A       		.byte	0xa
ARM GAS  /tmp/ccFtFbC6.s 			page 24


 1064 057f 7602     		.2byte	0x276
 1065 0581 74080000 		.4byte	0x874
 1066 0585 58       		.byte	0x58
 1067 0586 1B       		.uleb128 0x1b
 1068 0587 DD030000 		.4byte	.LASF50
 1069 058b 0A       		.byte	0xa
 1070 058c 7A02     		.2byte	0x27a
 1071 058e 00030000 		.4byte	0x300
 1072 0592 4801     		.2byte	0x148
 1073 0594 1B       		.uleb128 0x1b
 1074 0595 3E000000 		.4byte	.LASF91
 1075 0599 0A       		.byte	0xa
 1076 059a 7B02     		.2byte	0x27b
 1077 059c C2020000 		.4byte	0x2c2
 1078 05a0 4C01     		.2byte	0x14c
 1079 05a2 1B       		.uleb128 0x1b
 1080 05a3 A5060000 		.4byte	.LASF92
 1081 05a7 0A       		.byte	0xa
 1082 05a8 7F02     		.2byte	0x27f
 1083 05aa C8080000 		.4byte	0x8c8
 1084 05ae DC02     		.2byte	0x2dc
 1085 05b0 1B       		.uleb128 0x1b
 1086 05b1 28010000 		.4byte	.LASF93
 1087 05b5 0A       		.byte	0xa
 1088 05b6 8402     		.2byte	0x284
 1089 05b8 79060000 		.4byte	0x679
 1090 05bc E002     		.2byte	0x2e0
 1091 05be 1B       		.uleb128 0x1b
 1092 05bf 01010000 		.4byte	.LASF94
 1093 05c3 0A       		.byte	0xa
 1094 05c4 8502     		.2byte	0x285
 1095 05c6 D4080000 		.4byte	0x8d4
 1096 05ca EC02     		.2byte	0x2ec
 1097 05cc 00       		.byte	0
 1098 05cd 13       		.uleb128 0x13
 1099 05ce 04       		.byte	0x4
 1100 05cf D3050000 		.4byte	0x5d3
 1101 05d3 03       		.uleb128 0x3
 1102 05d4 01       		.byte	0x1
 1103 05d5 08       		.byte	0x8
 1104 05d6 97050000 		.4byte	.LASF95
 1105 05da 06       		.uleb128 0x6
 1106 05db D3050000 		.4byte	0x5d3
 1107 05df 13       		.uleb128 0x13
 1108 05e0 04       		.byte	0x4
 1109 05e1 72040000 		.4byte	0x472
 1110 05e5 17       		.uleb128 0x17
 1111 05e6 25000000 		.4byte	0x25
 1112 05ea 03060000 		.4byte	0x603
 1113 05ee 18       		.uleb128 0x18
 1114 05ef 90040000 		.4byte	0x490
 1115 05f3 18       		.uleb128 0x18
 1116 05f4 A6000000 		.4byte	0xa6
 1117 05f8 18       		.uleb128 0x18
 1118 05f9 03060000 		.4byte	0x603
 1119 05fd 18       		.uleb128 0x18
 1120 05fe 25000000 		.4byte	0x25
ARM GAS  /tmp/ccFtFbC6.s 			page 25


 1121 0602 00       		.byte	0
 1122 0603 13       		.uleb128 0x13
 1123 0604 04       		.byte	0x4
 1124 0605 DA050000 		.4byte	0x5da
 1125 0609 13       		.uleb128 0x13
 1126 060a 04       		.byte	0x4
 1127 060b E5050000 		.4byte	0x5e5
 1128 060f 17       		.uleb128 0x17
 1129 0610 08010000 		.4byte	0x108
 1130 0614 2D060000 		.4byte	0x62d
 1131 0618 18       		.uleb128 0x18
 1132 0619 90040000 		.4byte	0x490
 1133 061d 18       		.uleb128 0x18
 1134 061e A6000000 		.4byte	0xa6
 1135 0622 18       		.uleb128 0x18
 1136 0623 08010000 		.4byte	0x108
 1137 0627 18       		.uleb128 0x18
 1138 0628 25000000 		.4byte	0x25
 1139 062c 00       		.byte	0
 1140 062d 13       		.uleb128 0x13
 1141 062e 04       		.byte	0x4
 1142 062f 0F060000 		.4byte	0x60f
 1143 0633 17       		.uleb128 0x17
 1144 0634 25000000 		.4byte	0x25
 1145 0638 47060000 		.4byte	0x647
 1146 063c 18       		.uleb128 0x18
 1147 063d 90040000 		.4byte	0x490
 1148 0641 18       		.uleb128 0x18
 1149 0642 A6000000 		.4byte	0xa6
 1150 0646 00       		.byte	0
 1151 0647 13       		.uleb128 0x13
 1152 0648 04       		.byte	0x4
 1153 0649 33060000 		.4byte	0x633
 1154 064d 0F       		.uleb128 0xf
 1155 064e 3A000000 		.4byte	0x3a
 1156 0652 5D060000 		.4byte	0x65d
 1157 0656 10       		.uleb128 0x10
 1158 0657 A8000000 		.4byte	0xa8
 1159 065b 02       		.byte	0x2
 1160 065c 00       		.byte	0
 1161 065d 0F       		.uleb128 0xf
 1162 065e 3A000000 		.4byte	0x3a
 1163 0662 6D060000 		.4byte	0x66d
 1164 0666 10       		.uleb128 0x10
 1165 0667 A8000000 		.4byte	0xa8
 1166 066b 00       		.byte	0
 1167 066c 00       		.byte	0
 1168 066d 0C       		.uleb128 0xc
 1169 066e DA040000 		.4byte	.LASF96
 1170 0672 0A       		.byte	0xa
 1171 0673 1D01     		.2byte	0x11d
 1172 0675 48030000 		.4byte	0x348
 1173 0679 1C       		.uleb128 0x1c
 1174 067a 82060000 		.4byte	.LASF97
 1175 067e 0C       		.byte	0xc
 1176 067f 0A       		.byte	0xa
 1177 0680 2101     		.2byte	0x121
ARM GAS  /tmp/ccFtFbC6.s 			page 26


 1178 0682 AE060000 		.4byte	0x6ae
 1179 0686 1A       		.uleb128 0x1a
 1180 0687 C2050000 		.4byte	.LASF30
 1181 068b 0A       		.byte	0xa
 1182 068c 2301     		.2byte	0x123
 1183 068e AE060000 		.4byte	0x6ae
 1184 0692 00       		.byte	0
 1185 0693 1A       		.uleb128 0x1a
 1186 0694 64020000 		.4byte	.LASF98
 1187 0698 0A       		.byte	0xa
 1188 0699 2401     		.2byte	0x124
 1189 069b 25000000 		.4byte	0x25
 1190 069f 04       		.byte	0x4
 1191 06a0 1A       		.uleb128 0x1a
 1192 06a1 94040000 		.4byte	.LASF99
 1193 06a5 0A       		.byte	0xa
 1194 06a6 2501     		.2byte	0x125
 1195 06a8 B4060000 		.4byte	0x6b4
 1196 06ac 08       		.byte	0x8
 1197 06ad 00       		.byte	0
 1198 06ae 13       		.uleb128 0x13
 1199 06af 04       		.byte	0x4
 1200 06b0 79060000 		.4byte	0x679
 1201 06b4 13       		.uleb128 0x13
 1202 06b5 04       		.byte	0x4
 1203 06b6 6D060000 		.4byte	0x66d
 1204 06ba 1C       		.uleb128 0x1c
 1205 06bb 1E000000 		.4byte	.LASF100
 1206 06bf 0E       		.byte	0xe
 1207 06c0 0A       		.byte	0xa
 1208 06c1 3D01     		.2byte	0x13d
 1209 06c3 EF060000 		.4byte	0x6ef
 1210 06c7 1A       		.uleb128 0x1a
 1211 06c8 48050000 		.4byte	.LASF101
 1212 06cc 0A       		.byte	0xa
 1213 06cd 3E01     		.2byte	0x13e
 1214 06cf EF060000 		.4byte	0x6ef
 1215 06d3 00       		.byte	0
 1216 06d4 1A       		.uleb128 0x1a
 1217 06d5 DE020000 		.4byte	.LASF102
 1218 06d9 0A       		.byte	0xa
 1219 06da 3F01     		.2byte	0x13f
 1220 06dc EF060000 		.4byte	0x6ef
 1221 06e0 06       		.byte	0x6
 1222 06e1 1A       		.uleb128 0x1a
 1223 06e2 1B060000 		.4byte	.LASF103
 1224 06e6 0A       		.byte	0xa
 1225 06e7 4001     		.2byte	0x140
 1226 06e9 48000000 		.4byte	0x48
 1227 06ed 0C       		.byte	0xc
 1228 06ee 00       		.byte	0
 1229 06ef 0F       		.uleb128 0xf
 1230 06f0 48000000 		.4byte	0x48
 1231 06f4 FF060000 		.4byte	0x6ff
 1232 06f8 10       		.uleb128 0x10
 1233 06f9 A8000000 		.4byte	0xa8
 1234 06fd 02       		.byte	0x2
ARM GAS  /tmp/ccFtFbC6.s 			page 27


 1235 06fe 00       		.byte	0
 1236 06ff 1D       		.uleb128 0x1d
 1237 0700 D0       		.byte	0xd0
 1238 0701 0A       		.byte	0xa
 1239 0702 5702     		.2byte	0x257
 1240 0704 00080000 		.4byte	0x800
 1241 0708 1A       		.uleb128 0x1a
 1242 0709 70060000 		.4byte	.LASF104
 1243 070d 0A       		.byte	0xa
 1244 070e 5902     		.2byte	0x259
 1245 0710 2C000000 		.4byte	0x2c
 1246 0714 00       		.byte	0
 1247 0715 1A       		.uleb128 0x1a
 1248 0716 C8050000 		.4byte	.LASF105
 1249 071a 0A       		.byte	0xa
 1250 071b 5A02     		.2byte	0x25a
 1251 071d CD050000 		.4byte	0x5cd
 1252 0721 04       		.byte	0x4
 1253 0722 1A       		.uleb128 0x1a
 1254 0723 82020000 		.4byte	.LASF106
 1255 0727 0A       		.byte	0xa
 1256 0728 5B02     		.2byte	0x25b
 1257 072a 00080000 		.4byte	0x800
 1258 072e 08       		.byte	0x8
 1259 072f 1A       		.uleb128 0x1a
 1260 0730 0C070000 		.4byte	.LASF107
 1261 0734 0A       		.byte	0xa
 1262 0735 5C02     		.2byte	0x25c
 1263 0737 F9010000 		.4byte	0x1f9
 1264 073b 24       		.byte	0x24
 1265 073c 1A       		.uleb128 0x1a
 1266 073d 0F040000 		.4byte	.LASF108
 1267 0741 0A       		.byte	0xa
 1268 0742 5D02     		.2byte	0x25d
 1269 0744 25000000 		.4byte	0x25
 1270 0748 48       		.byte	0x48
 1271 0749 1A       		.uleb128 0x1a
 1272 074a 6B020000 		.4byte	.LASF109
 1273 074e 0A       		.byte	0xa
 1274 074f 5E02     		.2byte	0x25e
 1275 0751 7A000000 		.4byte	0x7a
 1276 0755 50       		.byte	0x50
 1277 0756 1A       		.uleb128 0x1a
 1278 0757 2F070000 		.4byte	.LASF110
 1279 075b 0A       		.byte	0xa
 1280 075c 5F02     		.2byte	0x25f
 1281 075e BA060000 		.4byte	0x6ba
 1282 0762 58       		.byte	0x58
 1283 0763 1A       		.uleb128 0x1a
 1284 0764 08050000 		.4byte	.LASF111
 1285 0768 0A       		.byte	0xa
 1286 0769 6002     		.2byte	0x260
 1287 076b 6F010000 		.4byte	0x16f
 1288 076f 68       		.byte	0x68
 1289 0770 1A       		.uleb128 0x1a
 1290 0771 34070000 		.4byte	.LASF112
 1291 0775 0A       		.byte	0xa
ARM GAS  /tmp/ccFtFbC6.s 			page 28


 1292 0776 6102     		.2byte	0x261
 1293 0778 6F010000 		.4byte	0x16f
 1294 077c 70       		.byte	0x70
 1295 077d 1A       		.uleb128 0x1a
 1296 077e A9000000 		.4byte	.LASF113
 1297 0782 0A       		.byte	0xa
 1298 0783 6202     		.2byte	0x262
 1299 0785 6F010000 		.4byte	0x16f
 1300 0789 78       		.byte	0x78
 1301 078a 1A       		.uleb128 0x1a
 1302 078b 9B060000 		.4byte	.LASF114
 1303 078f 0A       		.byte	0xa
 1304 0790 6302     		.2byte	0x263
 1305 0792 10080000 		.4byte	0x810
 1306 0796 80       		.byte	0x80
 1307 0797 1A       		.uleb128 0x1a
 1308 0798 76020000 		.4byte	.LASF115
 1309 079c 0A       		.byte	0xa
 1310 079d 6402     		.2byte	0x264
 1311 079f 20080000 		.4byte	0x820
 1312 07a3 88       		.byte	0x88
 1313 07a4 1A       		.uleb128 0x1a
 1314 07a5 31000000 		.4byte	.LASF116
 1315 07a9 0A       		.byte	0xa
 1316 07aa 6502     		.2byte	0x265
 1317 07ac 25000000 		.4byte	0x25
 1318 07b0 A0       		.byte	0xa0
 1319 07b1 1A       		.uleb128 0x1a
 1320 07b2 97010000 		.4byte	.LASF117
 1321 07b6 0A       		.byte	0xa
 1322 07b7 6602     		.2byte	0x266
 1323 07b9 6F010000 		.4byte	0x16f
 1324 07bd A4       		.byte	0xa4
 1325 07be 1A       		.uleb128 0x1a
 1326 07bf 9A000000 		.4byte	.LASF118
 1327 07c3 0A       		.byte	0xa
 1328 07c4 6702     		.2byte	0x267
 1329 07c6 6F010000 		.4byte	0x16f
 1330 07ca AC       		.byte	0xac
 1331 07cb 1A       		.uleb128 0x1a
 1332 07cc 86010000 		.4byte	.LASF119
 1333 07d0 0A       		.byte	0xa
 1334 07d1 6802     		.2byte	0x268
 1335 07d3 6F010000 		.4byte	0x16f
 1336 07d7 B4       		.byte	0xb4
 1337 07d8 1A       		.uleb128 0x1a
 1338 07d9 47000000 		.4byte	.LASF120
 1339 07dd 0A       		.byte	0xa
 1340 07de 6902     		.2byte	0x269
 1341 07e0 6F010000 		.4byte	0x16f
 1342 07e4 BC       		.byte	0xbc
 1343 07e5 1A       		.uleb128 0x1a
 1344 07e6 56000000 		.4byte	.LASF121
 1345 07ea 0A       		.byte	0xa
 1346 07eb 6A02     		.2byte	0x26a
 1347 07ed 6F010000 		.4byte	0x16f
 1348 07f1 C4       		.byte	0xc4
ARM GAS  /tmp/ccFtFbC6.s 			page 29


 1349 07f2 1A       		.uleb128 0x1a
 1350 07f3 A5040000 		.4byte	.LASF122
 1351 07f7 0A       		.byte	0xa
 1352 07f8 6B02     		.2byte	0x26b
 1353 07fa 25000000 		.4byte	0x25
 1354 07fe CC       		.byte	0xcc
 1355 07ff 00       		.byte	0
 1356 0800 0F       		.uleb128 0xf
 1357 0801 D3050000 		.4byte	0x5d3
 1358 0805 10080000 		.4byte	0x810
 1359 0809 10       		.uleb128 0x10
 1360 080a A8000000 		.4byte	0xa8
 1361 080e 19       		.byte	0x19
 1362 080f 00       		.byte	0
 1363 0810 0F       		.uleb128 0xf
 1364 0811 D3050000 		.4byte	0x5d3
 1365 0815 20080000 		.4byte	0x820
 1366 0819 10       		.uleb128 0x10
 1367 081a A8000000 		.4byte	0xa8
 1368 081e 07       		.byte	0x7
 1369 081f 00       		.byte	0
 1370 0820 0F       		.uleb128 0xf
 1371 0821 D3050000 		.4byte	0x5d3
 1372 0825 30080000 		.4byte	0x830
 1373 0829 10       		.uleb128 0x10
 1374 082a A8000000 		.4byte	0xa8
 1375 082e 17       		.byte	0x17
 1376 082f 00       		.byte	0
 1377 0830 1D       		.uleb128 0x1d
 1378 0831 F0       		.byte	0xf0
 1379 0832 0A       		.byte	0xa
 1380 0833 7002     		.2byte	0x270
 1381 0835 54080000 		.4byte	0x854
 1382 0839 1A       		.uleb128 0x1a
 1383 083a 9D020000 		.4byte	.LASF123
 1384 083e 0A       		.byte	0xa
 1385 083f 7302     		.2byte	0x273
 1386 0841 54080000 		.4byte	0x854
 1387 0845 00       		.byte	0
 1388 0846 1A       		.uleb128 0x1a
 1389 0847 01030000 		.4byte	.LASF124
 1390 084b 0A       		.byte	0xa
 1391 084c 7402     		.2byte	0x274
 1392 084e 64080000 		.4byte	0x864
 1393 0852 78       		.byte	0x78
 1394 0853 00       		.byte	0
 1395 0854 0F       		.uleb128 0xf
 1396 0855 42030000 		.4byte	0x342
 1397 0859 64080000 		.4byte	0x864
 1398 085d 10       		.uleb128 0x10
 1399 085e A8000000 		.4byte	0xa8
 1400 0862 1D       		.byte	0x1d
 1401 0863 00       		.byte	0
 1402 0864 0F       		.uleb128 0xf
 1403 0865 2C000000 		.4byte	0x2c
 1404 0869 74080000 		.4byte	0x874
 1405 086d 10       		.uleb128 0x10
ARM GAS  /tmp/ccFtFbC6.s 			page 30


 1406 086e A8000000 		.4byte	0xa8
 1407 0872 1D       		.byte	0x1d
 1408 0873 00       		.byte	0
 1409 0874 1E       		.uleb128 0x1e
 1410 0875 F0       		.byte	0xf0
 1411 0876 0A       		.byte	0xa
 1412 0877 5502     		.2byte	0x255
 1413 0879 96080000 		.4byte	0x896
 1414 087d 1F       		.uleb128 0x1f
 1415 087e 41050000 		.4byte	.LASF73
 1416 0882 0A       		.byte	0xa
 1417 0883 6C02     		.2byte	0x26c
 1418 0885 FF060000 		.4byte	0x6ff
 1419 0889 1F       		.uleb128 0x1f
 1420 088a D6060000 		.4byte	.LASF125
 1421 088e 0A       		.byte	0xa
 1422 088f 7502     		.2byte	0x275
 1423 0891 30080000 		.4byte	0x830
 1424 0895 00       		.byte	0
 1425 0896 0F       		.uleb128 0xf
 1426 0897 D3050000 		.4byte	0x5d3
 1427 089b A6080000 		.4byte	0x8a6
 1428 089f 10       		.uleb128 0x10
 1429 08a0 A8000000 		.4byte	0xa8
 1430 08a4 18       		.byte	0x18
 1431 08a5 00       		.byte	0
 1432 08a6 20       		.uleb128 0x20
 1433 08a7 B1080000 		.4byte	0x8b1
 1434 08ab 18       		.uleb128 0x18
 1435 08ac 90040000 		.4byte	0x490
 1436 08b0 00       		.byte	0
 1437 08b1 13       		.uleb128 0x13
 1438 08b2 04       		.byte	0x4
 1439 08b3 A6080000 		.4byte	0x8a6
 1440 08b7 13       		.uleb128 0x13
 1441 08b8 04       		.byte	0x4
 1442 08b9 E3010000 		.4byte	0x1e3
 1443 08bd 20       		.uleb128 0x20
 1444 08be C8080000 		.4byte	0x8c8
 1445 08c2 18       		.uleb128 0x18
 1446 08c3 25000000 		.4byte	0x25
 1447 08c7 00       		.byte	0
 1448 08c8 13       		.uleb128 0x13
 1449 08c9 04       		.byte	0x4
 1450 08ca CE080000 		.4byte	0x8ce
 1451 08ce 13       		.uleb128 0x13
 1452 08cf 04       		.byte	0x4
 1453 08d0 BD080000 		.4byte	0x8bd
 1454 08d4 0F       		.uleb128 0xf
 1455 08d5 6D060000 		.4byte	0x66d
 1456 08d9 E4080000 		.4byte	0x8e4
 1457 08dd 10       		.uleb128 0x10
 1458 08de A8000000 		.4byte	0xa8
 1459 08e2 02       		.byte	0x2
 1460 08e3 00       		.byte	0
 1461 08e4 08       		.uleb128 0x8
 1462 08e5 C4010000 		.4byte	.LASF126
ARM GAS  /tmp/ccFtFbC6.s 			page 31


 1463 08e9 0A       		.byte	0xa
 1464 08ea FD02     		.2byte	0x2fd
 1465 08ec 90040000 		.4byte	0x490
 1466 08f0 08       		.uleb128 0x8
 1467 08f1 88060000 		.4byte	.LASF127
 1468 08f5 0A       		.byte	0xa
 1469 08f6 FE02     		.2byte	0x2fe
 1470 08f8 96040000 		.4byte	0x496
 1471 08fc 09       		.uleb128 0x9
 1472 08fd E5030000 		.4byte	.LASF128
 1473 0901 0B       		.byte	0xb
 1474 0902 5F       		.byte	0x5f
 1475 0903 CD050000 		.4byte	0x5cd
 1476 0907 09       		.uleb128 0x9
 1477 0908 3D040000 		.4byte	.LASF129
 1478 090c 0C       		.byte	0xc
 1479 090d 8F       		.byte	0x8f
 1480 090e 19090000 		.4byte	0x919
 1481 0912 03       		.uleb128 0x3
 1482 0913 01       		.byte	0x1
 1483 0914 02       		.byte	0x2
 1484 0915 78040000 		.4byte	.LASF130
 1485 0919 05       		.uleb128 0x5
 1486 091a 12090000 		.4byte	0x912
 1487 091e 21       		.uleb128 0x21
 1488 091f AF060000 		.4byte	.LASF131
 1489 0923 0C       		.byte	0xc
 1490 0924 94       		.byte	0x94
 1491 0925 9C000000 		.4byte	0x9c
 1492 0929 05       		.uleb128 0x5
 1493 092a 03       		.byte	0x3
 1494 092b 00000000 		.4byte	cpu_irq_critical_section_counter
 1495 092f 21       		.uleb128 0x21
 1496 0930 67000000 		.4byte	.LASF132
 1497 0934 0C       		.byte	0xc
 1498 0935 95       		.byte	0x95
 1499 0936 19090000 		.4byte	0x919
 1500 093a 05       		.uleb128 0x5
 1501 093b 03       		.byte	0x3
 1502 093c 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1503 0940 03       		.uleb128 0x3
 1504 0941 04       		.byte	0x4
 1505 0942 04       		.byte	0x4
 1506 0943 2C040000 		.4byte	.LASF133
 1507 0947 03       		.uleb128 0x3
 1508 0948 08       		.byte	0x8
 1509 0949 04       		.byte	0x4
 1510 094a 67010000 		.4byte	.LASF134
 1511 094e 11       		.uleb128 0x11
 1512 094f 6E050000 		.4byte	.LASF135
 1513 0953 24       		.byte	0x24
 1514 0954 0D       		.byte	0xd
 1515 0955 3D       		.byte	0x3d
 1516 0956 C7090000 		.4byte	0x9c7
 1517 095a 0B       		.uleb128 0xb
 1518 095b 32040000 		.4byte	.LASF136
 1519 095f 0D       		.byte	0xd
ARM GAS  /tmp/ccFtFbC6.s 			page 32


 1520 0960 40       		.byte	0x40
 1521 0961 91000000 		.4byte	0x91
 1522 0965 00       		.byte	0
 1523 0966 0B       		.uleb128 0xb
 1524 0967 E0010000 		.4byte	.LASF137
 1525 096b 0D       		.byte	0xd
 1526 096c 42       		.byte	0x42
 1527 096d 91000000 		.4byte	0x91
 1528 0971 04       		.byte	0x4
 1529 0972 0B       		.uleb128 0xb
 1530 0973 36060000 		.4byte	.LASF138
 1531 0977 0D       		.byte	0xd
 1532 0978 44       		.byte	0x44
 1533 0979 91000000 		.4byte	0x91
 1534 097d 08       		.byte	0x8
 1535 097e 0B       		.uleb128 0xb
 1536 097f FF050000 		.4byte	.LASF139
 1537 0983 0D       		.byte	0xd
 1538 0984 46       		.byte	0x46
 1539 0985 91000000 		.4byte	0x91
 1540 0989 0C       		.byte	0xc
 1541 098a 0B       		.uleb128 0xb
 1542 098b 1B070000 		.4byte	.LASF140
 1543 098f 0D       		.byte	0xd
 1544 0990 48       		.byte	0x48
 1545 0991 91000000 		.4byte	0x91
 1546 0995 10       		.byte	0x10
 1547 0996 0B       		.uleb128 0xb
 1548 0997 7E010000 		.4byte	.LASF141
 1549 099b 0D       		.byte	0xd
 1550 099c 4A       		.byte	0x4a
 1551 099d 91000000 		.4byte	0x91
 1552 09a1 14       		.byte	0x14
 1553 09a2 0B       		.uleb128 0xb
 1554 09a3 0A030000 		.4byte	.LASF142
 1555 09a7 0D       		.byte	0xd
 1556 09a8 4C       		.byte	0x4c
 1557 09a9 91000000 		.4byte	0x91
 1558 09ad 18       		.byte	0x18
 1559 09ae 0B       		.uleb128 0xb
 1560 09af 9A040000 		.4byte	.LASF143
 1561 09b3 0D       		.byte	0xd
 1562 09b4 4E       		.byte	0x4e
 1563 09b5 91000000 		.4byte	0x91
 1564 09b9 1C       		.byte	0x1c
 1565 09ba 0B       		.uleb128 0xb
 1566 09bb A5010000 		.4byte	.LASF144
 1567 09bf 0D       		.byte	0xd
 1568 09c0 50       		.byte	0x50
 1569 09c1 91000000 		.4byte	0x91
 1570 09c5 20       		.byte	0x20
 1571 09c6 00       		.byte	0
 1572 09c7 04       		.uleb128 0x4
 1573 09c8 82050000 		.4byte	.LASF145
 1574 09cc 0D       		.byte	0xd
 1575 09cd 51       		.byte	0x51
 1576 09ce 4E090000 		.4byte	0x94e
ARM GAS  /tmp/ccFtFbC6.s 			page 33


 1577 09d2 22       		.uleb128 0x22
 1578 09d3 E1040000 		.4byte	.LASF146
 1579 09d7 01       		.byte	0x1
 1580 09d8 DD       		.byte	0xdd
 1581 09d9 91000000 		.4byte	0x91
 1582 09dd 00000000 		.4byte	.LFB150
 1583 09e1 0E000000 		.4byte	.LFE150-.LFB150
 1584 09e5 01       		.uleb128 0x1
 1585 09e6 9C       		.byte	0x9c
 1586 09e7 FB090000 		.4byte	0x9fb
 1587 09eb 23       		.uleb128 0x23
 1588 09ec 12060000 		.4byte	.LASF148
 1589 09f0 01       		.byte	0x1
 1590 09f1 DD       		.byte	0xdd
 1591 09f2 FB090000 		.4byte	0x9fb
 1592 09f6 00000000 		.4byte	.LLST8
 1593 09fa 00       		.byte	0
 1594 09fb 13       		.uleb128 0x13
 1595 09fc 04       		.byte	0x4
 1596 09fd E7000000 		.4byte	0xe7
 1597 0a01 22       		.uleb128 0x22
 1598 0a02 40060000 		.4byte	.LASF147
 1599 0a06 01       		.byte	0x1
 1600 0a07 D1       		.byte	0xd1
 1601 0a08 91000000 		.4byte	0x91
 1602 0a0c 00000000 		.4byte	.LFB149
 1603 0a10 08000000 		.4byte	.LFE149-.LFB149
 1604 0a14 01       		.uleb128 0x1
 1605 0a15 9C       		.byte	0x9c
 1606 0a16 2A0A0000 		.4byte	0xa2a
 1607 0a1a 23       		.uleb128 0x23
 1608 0a1b 12060000 		.4byte	.LASF148
 1609 0a1f 01       		.byte	0x1
 1610 0a20 D1       		.byte	0xd1
 1611 0a21 FB090000 		.4byte	0x9fb
 1612 0a25 3A000000 		.4byte	.LLST7
 1613 0a29 00       		.byte	0
 1614 0a2a 22       		.uleb128 0x22
 1615 0a2b 20060000 		.4byte	.LASF149
 1616 0a2f 01       		.byte	0x1
 1617 0a30 C5       		.byte	0xc5
 1618 0a31 91000000 		.4byte	0x91
 1619 0a35 00000000 		.4byte	.LFB148
 1620 0a39 08000000 		.4byte	.LFE148-.LFB148
 1621 0a3d 01       		.uleb128 0x1
 1622 0a3e 9C       		.byte	0x9c
 1623 0a3f 530A0000 		.4byte	0xa53
 1624 0a43 23       		.uleb128 0x23
 1625 0a44 12060000 		.4byte	.LASF148
 1626 0a48 01       		.byte	0x1
 1627 0a49 C5       		.byte	0xc5
 1628 0a4a FB090000 		.4byte	0x9fb
 1629 0a4e 5B000000 		.4byte	.LLST6
 1630 0a52 00       		.byte	0
 1631 0a53 22       		.uleb128 0x22
 1632 0a54 47070000 		.4byte	.LASF150
 1633 0a58 01       		.byte	0x1
ARM GAS  /tmp/ccFtFbC6.s 			page 34


 1634 0a59 B9       		.byte	0xb9
 1635 0a5a 91000000 		.4byte	0x91
 1636 0a5e 00000000 		.4byte	.LFB147
 1637 0a62 08000000 		.4byte	.LFE147-.LFB147
 1638 0a66 01       		.uleb128 0x1
 1639 0a67 9C       		.byte	0x9c
 1640 0a68 7C0A0000 		.4byte	0xa7c
 1641 0a6c 23       		.uleb128 0x23
 1642 0a6d 12060000 		.4byte	.LASF148
 1643 0a71 01       		.byte	0x1
 1644 0a72 B9       		.byte	0xb9
 1645 0a73 FB090000 		.4byte	0x9fb
 1646 0a77 7C000000 		.4byte	.LLST5
 1647 0a7b 00       		.byte	0
 1648 0a7c 22       		.uleb128 0x22
 1649 0a7d EF030000 		.4byte	.LASF151
 1650 0a81 01       		.byte	0x1
 1651 0a82 AD       		.byte	0xad
 1652 0a83 91000000 		.4byte	0x91
 1653 0a87 00000000 		.4byte	.LFB146
 1654 0a8b 08000000 		.4byte	.LFE146-.LFB146
 1655 0a8f 01       		.uleb128 0x1
 1656 0a90 9C       		.byte	0x9c
 1657 0a91 A50A0000 		.4byte	0xaa5
 1658 0a95 23       		.uleb128 0x23
 1659 0a96 12060000 		.4byte	.LASF148
 1660 0a9a 01       		.byte	0x1
 1661 0a9b AD       		.byte	0xad
 1662 0a9c FB090000 		.4byte	0x9fb
 1663 0aa0 9D000000 		.4byte	.LLST4
 1664 0aa4 00       		.byte	0
 1665 0aa5 22       		.uleb128 0x22
 1666 0aa6 E9010000 		.4byte	.LASF152
 1667 0aaa 01       		.byte	0x1
 1668 0aab A1       		.byte	0xa1
 1669 0aac 91000000 		.4byte	0x91
 1670 0ab0 00000000 		.4byte	.LFB145
 1671 0ab4 08000000 		.4byte	.LFE145-.LFB145
 1672 0ab8 01       		.uleb128 0x1
 1673 0ab9 9C       		.byte	0x9c
 1674 0aba CE0A0000 		.4byte	0xace
 1675 0abe 23       		.uleb128 0x23
 1676 0abf 12060000 		.4byte	.LASF148
 1677 0ac3 01       		.byte	0x1
 1678 0ac4 A1       		.byte	0xa1
 1679 0ac5 FB090000 		.4byte	0x9fb
 1680 0ac9 BE000000 		.4byte	.LLST3
 1681 0acd 00       		.byte	0
 1682 0ace 22       		.uleb128 0x22
 1683 0acf BE030000 		.4byte	.LASF153
 1684 0ad3 01       		.byte	0x1
 1685 0ad4 95       		.byte	0x95
 1686 0ad5 91000000 		.4byte	0x91
 1687 0ad9 00000000 		.4byte	.LFB144
 1688 0add 08000000 		.4byte	.LFE144-.LFB144
 1689 0ae1 01       		.uleb128 0x1
 1690 0ae2 9C       		.byte	0x9c
ARM GAS  /tmp/ccFtFbC6.s 			page 35


 1691 0ae3 F70A0000 		.4byte	0xaf7
 1692 0ae7 23       		.uleb128 0x23
 1693 0ae8 12060000 		.4byte	.LASF148
 1694 0aec 01       		.byte	0x1
 1695 0aed 95       		.byte	0x95
 1696 0aee FB090000 		.4byte	0x9fb
 1697 0af2 DF000000 		.4byte	.LLST2
 1698 0af6 00       		.byte	0
 1699 0af7 22       		.uleb128 0x22
 1700 0af8 44020000 		.4byte	.LASF154
 1701 0afc 01       		.byte	0x1
 1702 0afd 89       		.byte	0x89
 1703 0afe 91000000 		.4byte	0x91
 1704 0b02 00000000 		.4byte	.LFB143
 1705 0b06 08000000 		.4byte	.LFE143-.LFB143
 1706 0b0a 01       		.uleb128 0x1
 1707 0b0b 9C       		.byte	0x9c
 1708 0b0c 200B0000 		.4byte	0xb20
 1709 0b10 23       		.uleb128 0x23
 1710 0b11 12060000 		.4byte	.LASF148
 1711 0b15 01       		.byte	0x1
 1712 0b16 89       		.byte	0x89
 1713 0b17 FB090000 		.4byte	0x9fb
 1714 0b1b 00010000 		.4byte	.LLST1
 1715 0b1f 00       		.byte	0
 1716 0b20 22       		.uleb128 0x22
 1717 0b21 5C070000 		.4byte	.LASF155
 1718 0b25 01       		.byte	0x1
 1719 0b26 5D       		.byte	0x5d
 1720 0b27 91000000 		.4byte	0x91
 1721 0b2b 00000000 		.4byte	.LFB142
 1722 0b2f 62000000 		.4byte	.LFE142-.LFB142
 1723 0b33 01       		.uleb128 0x1
 1724 0b34 9C       		.byte	0x9c
 1725 0b35 560B0000 		.4byte	0xb56
 1726 0b39 23       		.uleb128 0x23
 1727 0b3a 12060000 		.4byte	.LASF148
 1728 0b3e 01       		.byte	0x1
 1729 0b3f 5D       		.byte	0x5d
 1730 0b40 FB090000 		.4byte	0x9fb
 1731 0b44 21010000 		.4byte	.LLST0
 1732 0b48 24       		.uleb128 0x24
 1733 0b49 F1050000 		.4byte	.LASF156
 1734 0b4d 01       		.byte	0x1
 1735 0b4e 5D       		.byte	0x5d
 1736 0b4f 560B0000 		.4byte	0xb56
 1737 0b53 01       		.uleb128 0x1
 1738 0b54 51       		.byte	0x51
 1739 0b55 00       		.byte	0
 1740 0b56 13       		.uleb128 0x13
 1741 0b57 04       		.byte	0x4
 1742 0b58 C7090000 		.4byte	0x9c7
 1743 0b5c 00       		.byte	0
 1744              		.section	.debug_abbrev,"",%progbits
 1745              	.Ldebug_abbrev0:
 1746 0000 01       		.uleb128 0x1
 1747 0001 11       		.uleb128 0x11
ARM GAS  /tmp/ccFtFbC6.s 			page 36


 1748 0002 01       		.byte	0x1
 1749 0003 25       		.uleb128 0x25
 1750 0004 0E       		.uleb128 0xe
 1751 0005 13       		.uleb128 0x13
 1752 0006 0B       		.uleb128 0xb
 1753 0007 03       		.uleb128 0x3
 1754 0008 0E       		.uleb128 0xe
 1755 0009 1B       		.uleb128 0x1b
 1756 000a 0E       		.uleb128 0xe
 1757 000b 55       		.uleb128 0x55
 1758 000c 17       		.uleb128 0x17
 1759 000d 11       		.uleb128 0x11
 1760 000e 01       		.uleb128 0x1
 1761 000f 10       		.uleb128 0x10
 1762 0010 17       		.uleb128 0x17
 1763 0011 00       		.byte	0
 1764 0012 00       		.byte	0
 1765 0013 02       		.uleb128 0x2
 1766 0014 24       		.uleb128 0x24
 1767 0015 00       		.byte	0
 1768 0016 0B       		.uleb128 0xb
 1769 0017 0B       		.uleb128 0xb
 1770 0018 3E       		.uleb128 0x3e
 1771 0019 0B       		.uleb128 0xb
 1772 001a 03       		.uleb128 0x3
 1773 001b 08       		.uleb128 0x8
 1774 001c 00       		.byte	0
 1775 001d 00       		.byte	0
 1776 001e 03       		.uleb128 0x3
 1777 001f 24       		.uleb128 0x24
 1778 0020 00       		.byte	0
 1779 0021 0B       		.uleb128 0xb
 1780 0022 0B       		.uleb128 0xb
 1781 0023 3E       		.uleb128 0x3e
 1782 0024 0B       		.uleb128 0xb
 1783 0025 03       		.uleb128 0x3
 1784 0026 0E       		.uleb128 0xe
 1785 0027 00       		.byte	0
 1786 0028 00       		.byte	0
 1787 0029 04       		.uleb128 0x4
 1788 002a 16       		.uleb128 0x16
 1789 002b 00       		.byte	0
 1790 002c 03       		.uleb128 0x3
 1791 002d 0E       		.uleb128 0xe
 1792 002e 3A       		.uleb128 0x3a
 1793 002f 0B       		.uleb128 0xb
 1794 0030 3B       		.uleb128 0x3b
 1795 0031 0B       		.uleb128 0xb
 1796 0032 49       		.uleb128 0x49
 1797 0033 13       		.uleb128 0x13
 1798 0034 00       		.byte	0
 1799 0035 00       		.byte	0
 1800 0036 05       		.uleb128 0x5
 1801 0037 35       		.uleb128 0x35
 1802 0038 00       		.byte	0
 1803 0039 49       		.uleb128 0x49
 1804 003a 13       		.uleb128 0x13
ARM GAS  /tmp/ccFtFbC6.s 			page 37


 1805 003b 00       		.byte	0
 1806 003c 00       		.byte	0
 1807 003d 06       		.uleb128 0x6
 1808 003e 26       		.uleb128 0x26
 1809 003f 00       		.byte	0
 1810 0040 49       		.uleb128 0x49
 1811 0041 13       		.uleb128 0x13
 1812 0042 00       		.byte	0
 1813 0043 00       		.byte	0
 1814 0044 07       		.uleb128 0x7
 1815 0045 0F       		.uleb128 0xf
 1816 0046 00       		.byte	0
 1817 0047 0B       		.uleb128 0xb
 1818 0048 0B       		.uleb128 0xb
 1819 0049 00       		.byte	0
 1820 004a 00       		.byte	0
 1821 004b 08       		.uleb128 0x8
 1822 004c 34       		.uleb128 0x34
 1823 004d 00       		.byte	0
 1824 004e 03       		.uleb128 0x3
 1825 004f 0E       		.uleb128 0xe
 1826 0050 3A       		.uleb128 0x3a
 1827 0051 0B       		.uleb128 0xb
 1828 0052 3B       		.uleb128 0x3b
 1829 0053 05       		.uleb128 0x5
 1830 0054 49       		.uleb128 0x49
 1831 0055 13       		.uleb128 0x13
 1832 0056 3F       		.uleb128 0x3f
 1833 0057 19       		.uleb128 0x19
 1834 0058 3C       		.uleb128 0x3c
 1835 0059 19       		.uleb128 0x19
 1836 005a 00       		.byte	0
 1837 005b 00       		.byte	0
 1838 005c 09       		.uleb128 0x9
 1839 005d 34       		.uleb128 0x34
 1840 005e 00       		.byte	0
 1841 005f 03       		.uleb128 0x3
 1842 0060 0E       		.uleb128 0xe
 1843 0061 3A       		.uleb128 0x3a
 1844 0062 0B       		.uleb128 0xb
 1845 0063 3B       		.uleb128 0x3b
 1846 0064 0B       		.uleb128 0xb
 1847 0065 49       		.uleb128 0x49
 1848 0066 13       		.uleb128 0x13
 1849 0067 3F       		.uleb128 0x3f
 1850 0068 19       		.uleb128 0x19
 1851 0069 3C       		.uleb128 0x3c
 1852 006a 19       		.uleb128 0x19
 1853 006b 00       		.byte	0
 1854 006c 00       		.byte	0
 1855 006d 0A       		.uleb128 0xa
 1856 006e 13       		.uleb128 0x13
 1857 006f 01       		.byte	0x1
 1858 0070 0B       		.uleb128 0xb
 1859 0071 0B       		.uleb128 0xb
 1860 0072 3A       		.uleb128 0x3a
 1861 0073 0B       		.uleb128 0xb
ARM GAS  /tmp/ccFtFbC6.s 			page 38


 1862 0074 3B       		.uleb128 0x3b
 1863 0075 0B       		.uleb128 0xb
 1864 0076 01       		.uleb128 0x1
 1865 0077 13       		.uleb128 0x13
 1866 0078 00       		.byte	0
 1867 0079 00       		.byte	0
 1868 007a 0B       		.uleb128 0xb
 1869 007b 0D       		.uleb128 0xd
 1870 007c 00       		.byte	0
 1871 007d 03       		.uleb128 0x3
 1872 007e 0E       		.uleb128 0xe
 1873 007f 3A       		.uleb128 0x3a
 1874 0080 0B       		.uleb128 0xb
 1875 0081 3B       		.uleb128 0x3b
 1876 0082 0B       		.uleb128 0xb
 1877 0083 49       		.uleb128 0x49
 1878 0084 13       		.uleb128 0x13
 1879 0085 38       		.uleb128 0x38
 1880 0086 0B       		.uleb128 0xb
 1881 0087 00       		.byte	0
 1882 0088 00       		.byte	0
 1883 0089 0C       		.uleb128 0xc
 1884 008a 16       		.uleb128 0x16
 1885 008b 00       		.byte	0
 1886 008c 03       		.uleb128 0x3
 1887 008d 0E       		.uleb128 0xe
 1888 008e 3A       		.uleb128 0x3a
 1889 008f 0B       		.uleb128 0xb
 1890 0090 3B       		.uleb128 0x3b
 1891 0091 05       		.uleb128 0x5
 1892 0092 49       		.uleb128 0x49
 1893 0093 13       		.uleb128 0x13
 1894 0094 00       		.byte	0
 1895 0095 00       		.byte	0
 1896 0096 0D       		.uleb128 0xd
 1897 0097 17       		.uleb128 0x17
 1898 0098 01       		.byte	0x1
 1899 0099 0B       		.uleb128 0xb
 1900 009a 0B       		.uleb128 0xb
 1901 009b 3A       		.uleb128 0x3a
 1902 009c 0B       		.uleb128 0xb
 1903 009d 3B       		.uleb128 0x3b
 1904 009e 0B       		.uleb128 0xb
 1905 009f 01       		.uleb128 0x1
 1906 00a0 13       		.uleb128 0x13
 1907 00a1 00       		.byte	0
 1908 00a2 00       		.byte	0
 1909 00a3 0E       		.uleb128 0xe
 1910 00a4 0D       		.uleb128 0xd
 1911 00a5 00       		.byte	0
 1912 00a6 03       		.uleb128 0x3
 1913 00a7 0E       		.uleb128 0xe
 1914 00a8 3A       		.uleb128 0x3a
 1915 00a9 0B       		.uleb128 0xb
 1916 00aa 3B       		.uleb128 0x3b
 1917 00ab 0B       		.uleb128 0xb
 1918 00ac 49       		.uleb128 0x49
ARM GAS  /tmp/ccFtFbC6.s 			page 39


 1919 00ad 13       		.uleb128 0x13
 1920 00ae 00       		.byte	0
 1921 00af 00       		.byte	0
 1922 00b0 0F       		.uleb128 0xf
 1923 00b1 01       		.uleb128 0x1
 1924 00b2 01       		.byte	0x1
 1925 00b3 49       		.uleb128 0x49
 1926 00b4 13       		.uleb128 0x13
 1927 00b5 01       		.uleb128 0x1
 1928 00b6 13       		.uleb128 0x13
 1929 00b7 00       		.byte	0
 1930 00b8 00       		.byte	0
 1931 00b9 10       		.uleb128 0x10
 1932 00ba 21       		.uleb128 0x21
 1933 00bb 00       		.byte	0
 1934 00bc 49       		.uleb128 0x49
 1935 00bd 13       		.uleb128 0x13
 1936 00be 2F       		.uleb128 0x2f
 1937 00bf 0B       		.uleb128 0xb
 1938 00c0 00       		.byte	0
 1939 00c1 00       		.byte	0
 1940 00c2 11       		.uleb128 0x11
 1941 00c3 13       		.uleb128 0x13
 1942 00c4 01       		.byte	0x1
 1943 00c5 03       		.uleb128 0x3
 1944 00c6 0E       		.uleb128 0xe
 1945 00c7 0B       		.uleb128 0xb
 1946 00c8 0B       		.uleb128 0xb
 1947 00c9 3A       		.uleb128 0x3a
 1948 00ca 0B       		.uleb128 0xb
 1949 00cb 3B       		.uleb128 0x3b
 1950 00cc 0B       		.uleb128 0xb
 1951 00cd 01       		.uleb128 0x1
 1952 00ce 13       		.uleb128 0x13
 1953 00cf 00       		.byte	0
 1954 00d0 00       		.byte	0
 1955 00d1 12       		.uleb128 0x12
 1956 00d2 0D       		.uleb128 0xd
 1957 00d3 00       		.byte	0
 1958 00d4 03       		.uleb128 0x3
 1959 00d5 08       		.uleb128 0x8
 1960 00d6 3A       		.uleb128 0x3a
 1961 00d7 0B       		.uleb128 0xb
 1962 00d8 3B       		.uleb128 0x3b
 1963 00d9 0B       		.uleb128 0xb
 1964 00da 49       		.uleb128 0x49
 1965 00db 13       		.uleb128 0x13
 1966 00dc 38       		.uleb128 0x38
 1967 00dd 0B       		.uleb128 0xb
 1968 00de 00       		.byte	0
 1969 00df 00       		.byte	0
 1970 00e0 13       		.uleb128 0x13
 1971 00e1 0F       		.uleb128 0xf
 1972 00e2 00       		.byte	0
 1973 00e3 0B       		.uleb128 0xb
 1974 00e4 0B       		.uleb128 0xb
 1975 00e5 49       		.uleb128 0x49
ARM GAS  /tmp/ccFtFbC6.s 			page 40


 1976 00e6 13       		.uleb128 0x13
 1977 00e7 00       		.byte	0
 1978 00e8 00       		.byte	0
 1979 00e9 14       		.uleb128 0x14
 1980 00ea 13       		.uleb128 0x13
 1981 00eb 01       		.byte	0x1
 1982 00ec 03       		.uleb128 0x3
 1983 00ed 0E       		.uleb128 0xe
 1984 00ee 0B       		.uleb128 0xb
 1985 00ef 05       		.uleb128 0x5
 1986 00f0 3A       		.uleb128 0x3a
 1987 00f1 0B       		.uleb128 0xb
 1988 00f2 3B       		.uleb128 0x3b
 1989 00f3 0B       		.uleb128 0xb
 1990 00f4 01       		.uleb128 0x1
 1991 00f5 13       		.uleb128 0x13
 1992 00f6 00       		.byte	0
 1993 00f7 00       		.byte	0
 1994 00f8 15       		.uleb128 0x15
 1995 00f9 0D       		.uleb128 0xd
 1996 00fa 00       		.byte	0
 1997 00fb 03       		.uleb128 0x3
 1998 00fc 0E       		.uleb128 0xe
 1999 00fd 3A       		.uleb128 0x3a
 2000 00fe 0B       		.uleb128 0xb
 2001 00ff 3B       		.uleb128 0x3b
 2002 0100 0B       		.uleb128 0xb
 2003 0101 49       		.uleb128 0x49
 2004 0102 13       		.uleb128 0x13
 2005 0103 38       		.uleb128 0x38
 2006 0104 05       		.uleb128 0x5
 2007 0105 00       		.byte	0
 2008 0106 00       		.byte	0
 2009 0107 16       		.uleb128 0x16
 2010 0108 15       		.uleb128 0x15
 2011 0109 00       		.byte	0
 2012 010a 27       		.uleb128 0x27
 2013 010b 19       		.uleb128 0x19
 2014 010c 00       		.byte	0
 2015 010d 00       		.byte	0
 2016 010e 17       		.uleb128 0x17
 2017 010f 15       		.uleb128 0x15
 2018 0110 01       		.byte	0x1
 2019 0111 27       		.uleb128 0x27
 2020 0112 19       		.uleb128 0x19
 2021 0113 49       		.uleb128 0x49
 2022 0114 13       		.uleb128 0x13
 2023 0115 01       		.uleb128 0x1
 2024 0116 13       		.uleb128 0x13
 2025 0117 00       		.byte	0
 2026 0118 00       		.byte	0
 2027 0119 18       		.uleb128 0x18
 2028 011a 05       		.uleb128 0x5
 2029 011b 00       		.byte	0
 2030 011c 49       		.uleb128 0x49
 2031 011d 13       		.uleb128 0x13
 2032 011e 00       		.byte	0
ARM GAS  /tmp/ccFtFbC6.s 			page 41


 2033 011f 00       		.byte	0
 2034 0120 19       		.uleb128 0x19
 2035 0121 13       		.uleb128 0x13
 2036 0122 01       		.byte	0x1
 2037 0123 03       		.uleb128 0x3
 2038 0124 0E       		.uleb128 0xe
 2039 0125 0B       		.uleb128 0xb
 2040 0126 05       		.uleb128 0x5
 2041 0127 3A       		.uleb128 0x3a
 2042 0128 0B       		.uleb128 0xb
 2043 0129 3B       		.uleb128 0x3b
 2044 012a 05       		.uleb128 0x5
 2045 012b 01       		.uleb128 0x1
 2046 012c 13       		.uleb128 0x13
 2047 012d 00       		.byte	0
 2048 012e 00       		.byte	0
 2049 012f 1A       		.uleb128 0x1a
 2050 0130 0D       		.uleb128 0xd
 2051 0131 00       		.byte	0
 2052 0132 03       		.uleb128 0x3
 2053 0133 0E       		.uleb128 0xe
 2054 0134 3A       		.uleb128 0x3a
 2055 0135 0B       		.uleb128 0xb
 2056 0136 3B       		.uleb128 0x3b
 2057 0137 05       		.uleb128 0x5
 2058 0138 49       		.uleb128 0x49
 2059 0139 13       		.uleb128 0x13
 2060 013a 38       		.uleb128 0x38
 2061 013b 0B       		.uleb128 0xb
 2062 013c 00       		.byte	0
 2063 013d 00       		.byte	0
 2064 013e 1B       		.uleb128 0x1b
 2065 013f 0D       		.uleb128 0xd
 2066 0140 00       		.byte	0
 2067 0141 03       		.uleb128 0x3
 2068 0142 0E       		.uleb128 0xe
 2069 0143 3A       		.uleb128 0x3a
 2070 0144 0B       		.uleb128 0xb
 2071 0145 3B       		.uleb128 0x3b
 2072 0146 05       		.uleb128 0x5
 2073 0147 49       		.uleb128 0x49
 2074 0148 13       		.uleb128 0x13
 2075 0149 38       		.uleb128 0x38
 2076 014a 05       		.uleb128 0x5
 2077 014b 00       		.byte	0
 2078 014c 00       		.byte	0
 2079 014d 1C       		.uleb128 0x1c
 2080 014e 13       		.uleb128 0x13
 2081 014f 01       		.byte	0x1
 2082 0150 03       		.uleb128 0x3
 2083 0151 0E       		.uleb128 0xe
 2084 0152 0B       		.uleb128 0xb
 2085 0153 0B       		.uleb128 0xb
 2086 0154 3A       		.uleb128 0x3a
 2087 0155 0B       		.uleb128 0xb
 2088 0156 3B       		.uleb128 0x3b
 2089 0157 05       		.uleb128 0x5
ARM GAS  /tmp/ccFtFbC6.s 			page 42


 2090 0158 01       		.uleb128 0x1
 2091 0159 13       		.uleb128 0x13
 2092 015a 00       		.byte	0
 2093 015b 00       		.byte	0
 2094 015c 1D       		.uleb128 0x1d
 2095 015d 13       		.uleb128 0x13
 2096 015e 01       		.byte	0x1
 2097 015f 0B       		.uleb128 0xb
 2098 0160 0B       		.uleb128 0xb
 2099 0161 3A       		.uleb128 0x3a
 2100 0162 0B       		.uleb128 0xb
 2101 0163 3B       		.uleb128 0x3b
 2102 0164 05       		.uleb128 0x5
 2103 0165 01       		.uleb128 0x1
 2104 0166 13       		.uleb128 0x13
 2105 0167 00       		.byte	0
 2106 0168 00       		.byte	0
 2107 0169 1E       		.uleb128 0x1e
 2108 016a 17       		.uleb128 0x17
 2109 016b 01       		.byte	0x1
 2110 016c 0B       		.uleb128 0xb
 2111 016d 0B       		.uleb128 0xb
 2112 016e 3A       		.uleb128 0x3a
 2113 016f 0B       		.uleb128 0xb
 2114 0170 3B       		.uleb128 0x3b
 2115 0171 05       		.uleb128 0x5
 2116 0172 01       		.uleb128 0x1
 2117 0173 13       		.uleb128 0x13
 2118 0174 00       		.byte	0
 2119 0175 00       		.byte	0
 2120 0176 1F       		.uleb128 0x1f
 2121 0177 0D       		.uleb128 0xd
 2122 0178 00       		.byte	0
 2123 0179 03       		.uleb128 0x3
 2124 017a 0E       		.uleb128 0xe
 2125 017b 3A       		.uleb128 0x3a
 2126 017c 0B       		.uleb128 0xb
 2127 017d 3B       		.uleb128 0x3b
 2128 017e 05       		.uleb128 0x5
 2129 017f 49       		.uleb128 0x49
 2130 0180 13       		.uleb128 0x13
 2131 0181 00       		.byte	0
 2132 0182 00       		.byte	0
 2133 0183 20       		.uleb128 0x20
 2134 0184 15       		.uleb128 0x15
 2135 0185 01       		.byte	0x1
 2136 0186 27       		.uleb128 0x27
 2137 0187 19       		.uleb128 0x19
 2138 0188 01       		.uleb128 0x1
 2139 0189 13       		.uleb128 0x13
 2140 018a 00       		.byte	0
 2141 018b 00       		.byte	0
 2142 018c 21       		.uleb128 0x21
 2143 018d 34       		.uleb128 0x34
 2144 018e 00       		.byte	0
 2145 018f 03       		.uleb128 0x3
 2146 0190 0E       		.uleb128 0xe
ARM GAS  /tmp/ccFtFbC6.s 			page 43


 2147 0191 3A       		.uleb128 0x3a
 2148 0192 0B       		.uleb128 0xb
 2149 0193 3B       		.uleb128 0x3b
 2150 0194 0B       		.uleb128 0xb
 2151 0195 49       		.uleb128 0x49
 2152 0196 13       		.uleb128 0x13
 2153 0197 02       		.uleb128 0x2
 2154 0198 18       		.uleb128 0x18
 2155 0199 00       		.byte	0
 2156 019a 00       		.byte	0
 2157 019b 22       		.uleb128 0x22
 2158 019c 2E       		.uleb128 0x2e
 2159 019d 01       		.byte	0x1
 2160 019e 3F       		.uleb128 0x3f
 2161 019f 19       		.uleb128 0x19
 2162 01a0 03       		.uleb128 0x3
 2163 01a1 0E       		.uleb128 0xe
 2164 01a2 3A       		.uleb128 0x3a
 2165 01a3 0B       		.uleb128 0xb
 2166 01a4 3B       		.uleb128 0x3b
 2167 01a5 0B       		.uleb128 0xb
 2168 01a6 27       		.uleb128 0x27
 2169 01a7 19       		.uleb128 0x19
 2170 01a8 49       		.uleb128 0x49
 2171 01a9 13       		.uleb128 0x13
 2172 01aa 11       		.uleb128 0x11
 2173 01ab 01       		.uleb128 0x1
 2174 01ac 12       		.uleb128 0x12
 2175 01ad 06       		.uleb128 0x6
 2176 01ae 40       		.uleb128 0x40
 2177 01af 18       		.uleb128 0x18
 2178 01b0 9742     		.uleb128 0x2117
 2179 01b2 19       		.uleb128 0x19
 2180 01b3 01       		.uleb128 0x1
 2181 01b4 13       		.uleb128 0x13
 2182 01b5 00       		.byte	0
 2183 01b6 00       		.byte	0
 2184 01b7 23       		.uleb128 0x23
 2185 01b8 05       		.uleb128 0x5
 2186 01b9 00       		.byte	0
 2187 01ba 03       		.uleb128 0x3
 2188 01bb 0E       		.uleb128 0xe
 2189 01bc 3A       		.uleb128 0x3a
 2190 01bd 0B       		.uleb128 0xb
 2191 01be 3B       		.uleb128 0x3b
 2192 01bf 0B       		.uleb128 0xb
 2193 01c0 49       		.uleb128 0x49
 2194 01c1 13       		.uleb128 0x13
 2195 01c2 02       		.uleb128 0x2
 2196 01c3 17       		.uleb128 0x17
 2197 01c4 00       		.byte	0
 2198 01c5 00       		.byte	0
 2199 01c6 24       		.uleb128 0x24
 2200 01c7 05       		.uleb128 0x5
 2201 01c8 00       		.byte	0
 2202 01c9 03       		.uleb128 0x3
 2203 01ca 0E       		.uleb128 0xe
ARM GAS  /tmp/ccFtFbC6.s 			page 44


 2204 01cb 3A       		.uleb128 0x3a
 2205 01cc 0B       		.uleb128 0xb
 2206 01cd 3B       		.uleb128 0x3b
 2207 01ce 0B       		.uleb128 0xb
 2208 01cf 49       		.uleb128 0x49
 2209 01d0 13       		.uleb128 0x13
 2210 01d1 02       		.uleb128 0x2
 2211 01d2 18       		.uleb128 0x18
 2212 01d3 00       		.byte	0
 2213 01d4 00       		.byte	0
 2214 01d5 00       		.byte	0
 2215              		.section	.debug_loc,"",%progbits
 2216              	.Ldebug_loc0:
 2217              	.LLST8:
 2218 0000 00000000 		.4byte	.LVL20
 2219 0004 08000000 		.4byte	.LVL21
 2220 0008 0100     		.2byte	0x1
 2221 000a 50       		.byte	0x50
 2222 000b 08000000 		.4byte	.LVL21
 2223 000f 0A000000 		.4byte	.LVL22
 2224 0013 0400     		.2byte	0x4
 2225 0015 F3       		.byte	0xf3
 2226 0016 01       		.uleb128 0x1
 2227 0017 50       		.byte	0x50
 2228 0018 9F       		.byte	0x9f
 2229 0019 0A000000 		.4byte	.LVL22
 2230 001d 0C000000 		.4byte	.LVL23
 2231 0021 0100     		.2byte	0x1
 2232 0023 50       		.byte	0x50
 2233 0024 0C000000 		.4byte	.LVL23
 2234 0028 0E000000 		.4byte	.LFE150
 2235 002c 0400     		.2byte	0x4
 2236 002e F3       		.byte	0xf3
 2237 002f 01       		.uleb128 0x1
 2238 0030 50       		.byte	0x50
 2239 0031 9F       		.byte	0x9f
 2240 0032 00000000 		.4byte	0
 2241 0036 00000000 		.4byte	0
 2242              	.LLST7:
 2243 003a 00000000 		.4byte	.LVL18
 2244 003e 02000000 		.4byte	.LVL19
 2245 0042 0100     		.2byte	0x1
 2246 0044 50       		.byte	0x50
 2247 0045 02000000 		.4byte	.LVL19
 2248 0049 08000000 		.4byte	.LFE149
 2249 004d 0400     		.2byte	0x4
 2250 004f F3       		.byte	0xf3
 2251 0050 01       		.uleb128 0x1
 2252 0051 50       		.byte	0x50
 2253 0052 9F       		.byte	0x9f
 2254 0053 00000000 		.4byte	0
 2255 0057 00000000 		.4byte	0
 2256              	.LLST6:
 2257 005b 00000000 		.4byte	.LVL16
 2258 005f 02000000 		.4byte	.LVL17
 2259 0063 0100     		.2byte	0x1
 2260 0065 50       		.byte	0x50
ARM GAS  /tmp/ccFtFbC6.s 			page 45


 2261 0066 02000000 		.4byte	.LVL17
 2262 006a 08000000 		.4byte	.LFE148
 2263 006e 0400     		.2byte	0x4
 2264 0070 F3       		.byte	0xf3
 2265 0071 01       		.uleb128 0x1
 2266 0072 50       		.byte	0x50
 2267 0073 9F       		.byte	0x9f
 2268 0074 00000000 		.4byte	0
 2269 0078 00000000 		.4byte	0
 2270              	.LLST5:
 2271 007c 00000000 		.4byte	.LVL14
 2272 0080 02000000 		.4byte	.LVL15
 2273 0084 0100     		.2byte	0x1
 2274 0086 50       		.byte	0x50
 2275 0087 02000000 		.4byte	.LVL15
 2276 008b 08000000 		.4byte	.LFE147
 2277 008f 0400     		.2byte	0x4
 2278 0091 F3       		.byte	0xf3
 2279 0092 01       		.uleb128 0x1
 2280 0093 50       		.byte	0x50
 2281 0094 9F       		.byte	0x9f
 2282 0095 00000000 		.4byte	0
 2283 0099 00000000 		.4byte	0
 2284              	.LLST4:
 2285 009d 00000000 		.4byte	.LVL12
 2286 00a1 02000000 		.4byte	.LVL13
 2287 00a5 0100     		.2byte	0x1
 2288 00a7 50       		.byte	0x50
 2289 00a8 02000000 		.4byte	.LVL13
 2290 00ac 08000000 		.4byte	.LFE146
 2291 00b0 0400     		.2byte	0x4
 2292 00b2 F3       		.byte	0xf3
 2293 00b3 01       		.uleb128 0x1
 2294 00b4 50       		.byte	0x50
 2295 00b5 9F       		.byte	0x9f
 2296 00b6 00000000 		.4byte	0
 2297 00ba 00000000 		.4byte	0
 2298              	.LLST3:
 2299 00be 00000000 		.4byte	.LVL10
 2300 00c2 02000000 		.4byte	.LVL11
 2301 00c6 0100     		.2byte	0x1
 2302 00c8 50       		.byte	0x50
 2303 00c9 02000000 		.4byte	.LVL11
 2304 00cd 08000000 		.4byte	.LFE145
 2305 00d1 0400     		.2byte	0x4
 2306 00d3 F3       		.byte	0xf3
 2307 00d4 01       		.uleb128 0x1
 2308 00d5 50       		.byte	0x50
 2309 00d6 9F       		.byte	0x9f
 2310 00d7 00000000 		.4byte	0
 2311 00db 00000000 		.4byte	0
 2312              	.LLST2:
 2313 00df 00000000 		.4byte	.LVL8
 2314 00e3 02000000 		.4byte	.LVL9
 2315 00e7 0100     		.2byte	0x1
 2316 00e9 50       		.byte	0x50
 2317 00ea 02000000 		.4byte	.LVL9
ARM GAS  /tmp/ccFtFbC6.s 			page 46


 2318 00ee 08000000 		.4byte	.LFE144
 2319 00f2 0400     		.2byte	0x4
 2320 00f4 F3       		.byte	0xf3
 2321 00f5 01       		.uleb128 0x1
 2322 00f6 50       		.byte	0x50
 2323 00f7 9F       		.byte	0x9f
 2324 00f8 00000000 		.4byte	0
 2325 00fc 00000000 		.4byte	0
 2326              	.LLST1:
 2327 0100 00000000 		.4byte	.LVL6
 2328 0104 02000000 		.4byte	.LVL7
 2329 0108 0100     		.2byte	0x1
 2330 010a 50       		.byte	0x50
 2331 010b 02000000 		.4byte	.LVL7
 2332 010f 08000000 		.4byte	.LFE143
 2333 0113 0400     		.2byte	0x4
 2334 0115 F3       		.byte	0xf3
 2335 0116 01       		.uleb128 0x1
 2336 0117 50       		.byte	0x50
 2337 0118 9F       		.byte	0x9f
 2338 0119 00000000 		.4byte	0
 2339 011d 00000000 		.4byte	0
 2340              	.LLST0:
 2341 0121 00000000 		.4byte	.LVL0
 2342 0125 4C000000 		.4byte	.LVL1
 2343 0129 0100     		.2byte	0x1
 2344 012b 50       		.byte	0x50
 2345 012c 4C000000 		.4byte	.LVL1
 2346 0130 54000000 		.4byte	.LVL2
 2347 0134 0400     		.2byte	0x4
 2348 0136 F3       		.byte	0xf3
 2349 0137 01       		.uleb128 0x1
 2350 0138 50       		.byte	0x50
 2351 0139 9F       		.byte	0x9f
 2352 013a 54000000 		.4byte	.LVL2
 2353 013e 56000000 		.4byte	.LVL3
 2354 0142 0100     		.2byte	0x1
 2355 0144 50       		.byte	0x50
 2356 0145 56000000 		.4byte	.LVL3
 2357 0149 5C000000 		.4byte	.LVL4
 2358 014d 0400     		.2byte	0x4
 2359 014f F3       		.byte	0xf3
 2360 0150 01       		.uleb128 0x1
 2361 0151 50       		.byte	0x50
 2362 0152 9F       		.byte	0x9f
 2363 0153 5C000000 		.4byte	.LVL4
 2364 0157 60000000 		.4byte	.LVL5
 2365 015b 0100     		.2byte	0x1
 2366 015d 50       		.byte	0x50
 2367 015e 60000000 		.4byte	.LVL5
 2368 0162 62000000 		.4byte	.LFE142
 2369 0166 0400     		.2byte	0x4
 2370 0168 F3       		.byte	0xf3
 2371 0169 01       		.uleb128 0x1
 2372 016a 50       		.byte	0x50
 2373 016b 9F       		.byte	0x9f
 2374 016c 00000000 		.4byte	0
ARM GAS  /tmp/ccFtFbC6.s 			page 47


 2375 0170 00000000 		.4byte	0
 2376              		.section	.debug_aranges,"",%progbits
 2377 0000 5C000000 		.4byte	0x5c
 2378 0004 0200     		.2byte	0x2
 2379 0006 00000000 		.4byte	.Ldebug_info0
 2380 000a 04       		.byte	0x4
 2381 000b 00       		.byte	0
 2382 000c 0000     		.2byte	0
 2383 000e 0000     		.2byte	0
 2384 0010 00000000 		.4byte	.LFB142
 2385 0014 62000000 		.4byte	.LFE142-.LFB142
 2386 0018 00000000 		.4byte	.LFB143
 2387 001c 08000000 		.4byte	.LFE143-.LFB143
 2388 0020 00000000 		.4byte	.LFB144
 2389 0024 08000000 		.4byte	.LFE144-.LFB144
 2390 0028 00000000 		.4byte	.LFB145
 2391 002c 08000000 		.4byte	.LFE145-.LFB145
 2392 0030 00000000 		.4byte	.LFB146
 2393 0034 08000000 		.4byte	.LFE146-.LFB146
 2394 0038 00000000 		.4byte	.LFB147
 2395 003c 08000000 		.4byte	.LFE147-.LFB147
 2396 0040 00000000 		.4byte	.LFB148
 2397 0044 08000000 		.4byte	.LFE148-.LFB148
 2398 0048 00000000 		.4byte	.LFB149
 2399 004c 08000000 		.4byte	.LFE149-.LFB149
 2400 0050 00000000 		.4byte	.LFB150
 2401 0054 0E000000 		.4byte	.LFE150-.LFB150
 2402 0058 00000000 		.4byte	0
 2403 005c 00000000 		.4byte	0
 2404              		.section	.debug_ranges,"",%progbits
 2405              	.Ldebug_ranges0:
 2406 0000 00000000 		.4byte	.LFB142
 2407 0004 62000000 		.4byte	.LFE142
 2408 0008 00000000 		.4byte	.LFB143
 2409 000c 08000000 		.4byte	.LFE143
 2410 0010 00000000 		.4byte	.LFB144
 2411 0014 08000000 		.4byte	.LFE144
 2412 0018 00000000 		.4byte	.LFB145
 2413 001c 08000000 		.4byte	.LFE145
 2414 0020 00000000 		.4byte	.LFB146
 2415 0024 08000000 		.4byte	.LFE146
 2416 0028 00000000 		.4byte	.LFB147
 2417 002c 08000000 		.4byte	.LFE147
 2418 0030 00000000 		.4byte	.LFB148
 2419 0034 08000000 		.4byte	.LFE148
 2420 0038 00000000 		.4byte	.LFB149
 2421 003c 08000000 		.4byte	.LFE149
 2422 0040 00000000 		.4byte	.LFB150
 2423 0044 0E000000 		.4byte	.LFE150
 2424 0048 00000000 		.4byte	0
 2425 004c 00000000 		.4byte	0
 2426              		.section	.debug_line,"",%progbits
 2427              	.Ldebug_line0:
 2428 0000 4A030000 		.section	.debug_str,"MS",%progbits,1
 2428      02006A02 
 2428      00000201 
 2428      FB0E0D00 
ARM GAS  /tmp/ccFtFbC6.s 			page 48


 2428      01010101 
 2429              	.LASF47:
 2430 0000 5F64736F 		.ascii	"_dso_handle\000"
 2430      5F68616E 
 2430      646C6500 
 2431              	.LASF3:
 2432 000c 73686F72 		.ascii	"short int\000"
 2432      7420696E 
 2432      7400
 2433              	.LASF46:
 2434 0016 5F666E61 		.ascii	"_fnargs\000"
 2434      72677300 
 2435              	.LASF100:
 2436 001e 5F72616E 		.ascii	"_rand48\000"
 2436      64343800 
 2437              	.LASF79:
 2438 0026 5F656D65 		.ascii	"_emergency\000"
 2438      7267656E 
 2438      637900
 2439              	.LASF116:
 2440 0031 5F676574 		.ascii	"_getdate_err\000"
 2440      64617465 
 2440      5F657272 
 2440      00
 2441              	.LASF91:
 2442 003e 5F617465 		.ascii	"_atexit0\000"
 2442      78697430 
 2442      00
 2443              	.LASF120:
 2444 0047 5F776372 		.ascii	"_wcrtomb_state\000"
 2444      746F6D62 
 2444      5F737461 
 2444      746500
 2445              	.LASF121:
 2446 0056 5F776373 		.ascii	"_wcsrtombs_state\000"
 2446      72746F6D 
 2446      62735F73 
 2446      74617465 
 2446      00
 2447              	.LASF132:
 2448 0067 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 2448      6972715F 
 2448      70726576 
 2448      5F696E74 
 2448      65727275 
 2449              	.LASF59:
 2450 0084 5F6C6266 		.ascii	"_lbfsize\000"
 2450      73697A65 
 2450      00
 2451              	.LASF14:
 2452 008d 49544D5F 		.ascii	"ITM_RxBuffer\000"
 2452      52784275 
 2452      66666572 
 2452      00
 2453              	.LASF118:
 2454 009a 5F6D6272 		.ascii	"_mbrtowc_state\000"
 2454      746F7763 
ARM GAS  /tmp/ccFtFbC6.s 			page 49


 2454      5F737461 
 2454      746500
 2455              	.LASF113:
 2456 00a9 5F776374 		.ascii	"_wctomb_state\000"
 2456      6F6D625F 
 2456      73746174 
 2456      6500
 2457              	.LASF36:
 2458 00b7 5F5F746D 		.ascii	"__tm_sec\000"
 2458      5F736563 
 2458      00
 2459              	.LASF20:
 2460 00c0 5F6F6666 		.ascii	"_off_t\000"
 2460      5F7400
 2461              	.LASF64:
 2462 00c7 5F636C6F 		.ascii	"_close\000"
 2462      736500
 2463              	.LASF1:
 2464 00ce 7369676E 		.ascii	"signed char\000"
 2464      65642063 
 2464      68617200 
 2465              	.LASF65:
 2466 00da 5F756275 		.ascii	"_ubuf\000"
 2466      6600
 2467              	.LASF10:
 2468 00e0 6C6F6E67 		.ascii	"long long unsigned int\000"
 2468      206C6F6E 
 2468      6720756E 
 2468      7369676E 
 2468      65642069 
 2469              	.LASF38:
 2470 00f7 5F5F746D 		.ascii	"__tm_hour\000"
 2470      5F686F75 
 2470      7200
 2471              	.LASF94:
 2472 0101 5F5F7366 		.ascii	"__sf\000"
 2472      00
 2473              	.LASF45:
 2474 0106 5F6F6E5F 		.ascii	"_on_exit_args\000"
 2474      65786974 
 2474      5F617267 
 2474      7300
 2475              	.LASF17:
 2476 0114 43484950 		.ascii	"CHIPID_EXID\000"
 2476      49445F45 
 2476      58494400 
 2477              	.LASF60:
 2478 0120 5F636F6F 		.ascii	"_cookie\000"
 2478      6B696500 
 2479              	.LASF93:
 2480 0128 5F5F7367 		.ascii	"__sglue\000"
 2480      6C756500 
 2481              	.LASF5:
 2482 0130 6C6F6E67 		.ascii	"long int\000"
 2482      20696E74 
 2482      00
 2483              	.LASF57:
ARM GAS  /tmp/ccFtFbC6.s 			page 50


 2484 0139 5F666C61 		.ascii	"_flags\000"
 2484      677300
 2485              	.LASF49:
 2486 0140 5F69735F 		.ascii	"_is_cxa\000"
 2486      63786100 
 2487              	.LASF75:
 2488 0148 5F737464 		.ascii	"_stdin\000"
 2488      696E00
 2489              	.LASF85:
 2490 014f 5F726573 		.ascii	"_result_k\000"
 2490      756C745F 
 2490      6B00
 2491              	.LASF9:
 2492 0159 6C6F6E67 		.ascii	"long long int\000"
 2492      206C6F6E 
 2492      6720696E 
 2492      7400
 2493              	.LASF134:
 2494 0167 646F7562 		.ascii	"double\000"
 2494      6C6500
 2495              	.LASF89:
 2496 016e 5F637674 		.ascii	"_cvtbuf\000"
 2496      62756600 
 2497              	.LASF68:
 2498 0176 5F6F6666 		.ascii	"_offset\000"
 2498      73657400 
 2499              	.LASF141:
 2500 017e 756C5F61 		.ascii	"ul_arch\000"
 2500      72636800 
 2501              	.LASF119:
 2502 0186 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 2502      72746F77 
 2502      63735F73 
 2502      74617465 
 2502      00
 2503              	.LASF117:
 2504 0197 5F6D6272 		.ascii	"_mbrlen_state\000"
 2504      6C656E5F 
 2504      73746174 
 2504      6500
 2505              	.LASF144:
 2506 01a5 756C5F65 		.ascii	"ul_extid\000"
 2506      78746964 
 2506      00
 2507              	.LASF52:
 2508 01ae 5F666E73 		.ascii	"_fns\000"
 2508      00
 2509              	.LASF7:
 2510 01b3 5F5F7569 		.ascii	"__uint32_t\000"
 2510      6E743332 
 2510      5F7400
 2511              	.LASF32:
 2512 01be 5F736967 		.ascii	"_sign\000"
 2512      6E00
 2513              	.LASF126:
 2514 01c4 5F696D70 		.ascii	"_impure_ptr\000"
 2514      7572655F 
ARM GAS  /tmp/ccFtFbC6.s 			page 51


 2514      70747200 
 2515              	.LASF77:
 2516 01d0 5F737464 		.ascii	"_stderr\000"
 2516      65727200 
 2517              	.LASF34:
 2518 01d8 5F426967 		.ascii	"_Bigint\000"
 2518      696E7400 
 2519              	.LASF137:
 2520 01e0 756C5F65 		.ascii	"ul_eproc\000"
 2520      70726F63 
 2520      00
 2521              	.LASF152:
 2522 01e9 63686970 		.ascii	"chipid_read_arch\000"
 2522      69645F72 
 2522      6561645F 
 2522      61726368 
 2522      00
 2523              	.LASF61:
 2524 01fa 5F726561 		.ascii	"_read\000"
 2524      6400
 2525              	.LASF35:
 2526 0200 5F5F746D 		.ascii	"__tm\000"
 2526      00
 2527              	.LASF24:
 2528 0205 5F5F7763 		.ascii	"__wchb\000"
 2528      686200
 2529              	.LASF15:
 2530 020c 53797374 		.ascii	"SystemCoreClock\000"
 2530      656D436F 
 2530      7265436C 
 2530      6F636B00 
 2531              	.LASF76:
 2532 021c 5F737464 		.ascii	"_stdout\000"
 2532      6F757400 
 2533              	.LASF88:
 2534 0224 5F637674 		.ascii	"_cvtlen\000"
 2534      6C656E00 
 2535              	.LASF8:
 2536 022c 6C6F6E67 		.ascii	"long unsigned int\000"
 2536      20756E73 
 2536      69676E65 
 2536      6420696E 
 2536      7400
 2537              	.LASF58:
 2538 023e 5F66696C 		.ascii	"_file\000"
 2538      6500
 2539              	.LASF154:
 2540 0244 63686970 		.ascii	"chipid_read_version\000"
 2540      69645F72 
 2540      6561645F 
 2540      76657273 
 2540      696F6E00 
 2541              	.LASF69:
 2542 0258 5F646174 		.ascii	"_data\000"
 2542      6100
 2543              	.LASF54:
 2544 025e 5F626173 		.ascii	"_base\000"
ARM GAS  /tmp/ccFtFbC6.s 			page 52


 2544      6500
 2545              	.LASF98:
 2546 0264 5F6E696F 		.ascii	"_niobs\000"
 2546      627300
 2547              	.LASF109:
 2548 026b 5F72616E 		.ascii	"_rand_next\000"
 2548      645F6E65 
 2548      787400
 2549              	.LASF115:
 2550 0276 5F736967 		.ascii	"_signal_buf\000"
 2550      6E616C5F 
 2550      62756600 
 2551              	.LASF106:
 2552 0282 5F617363 		.ascii	"_asctime_buf\000"
 2552      74696D65 
 2552      5F627566 
 2552      00
 2553              	.LASF84:
 2554 028f 5F726573 		.ascii	"_result\000"
 2554      756C7400 
 2555              	.LASF23:
 2556 0297 5F5F7763 		.ascii	"__wch\000"
 2556      6800
 2557              	.LASF123:
 2558 029d 5F6E6578 		.ascii	"_nextf\000"
 2558      746600
 2559              	.LASF90:
 2560 02a4 5F6E6577 		.ascii	"_new\000"
 2560      00
 2561              	.LASF70:
 2562 02a9 5F6C6F63 		.ascii	"_lock\000"
 2562      6B00
 2563              	.LASF159:
 2564 02af 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 2564      652F746F 
 2564      72626A6F 
 2564      726E2F65 
 2564      636C6970 
 2565              	.LASF102:
 2566 02de 5F6D756C 		.ascii	"_mult\000"
 2566      7400
 2567              	.LASF62:
 2568 02e4 5F777269 		.ascii	"_write\000"
 2568      746500
 2569              	.LASF41:
 2570 02eb 5F5F746D 		.ascii	"__tm_year\000"
 2570      5F796561 
 2570      7200
 2571              	.LASF16:
 2572 02f5 43484950 		.ascii	"CHIPID_CIDR\000"
 2572      49445F43 
 2572      49445200 
 2573              	.LASF124:
 2574 0301 5F6E6D61 		.ascii	"_nmalloc\000"
 2574      6C6C6F63 
 2574      00
 2575              	.LASF142:
ARM GAS  /tmp/ccFtFbC6.s 			page 53


 2576 030a 756C5F6E 		.ascii	"ul_nvptyp\000"
 2576      76707479 
 2576      7000
 2577              	.LASF13:
 2578 0314 73697A65 		.ascii	"sizetype\000"
 2578      74797065 
 2578      00
 2579              	.LASF157:
 2580 031d 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 2580      43393920 
 2580      362E332E 
 2580      31203230 
 2580      31373036 
 2581 0350 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 2581      76352D64 
 2581      3136202D 
 2581      6D666C6F 
 2581      61742D61 
 2582 0383 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 2582      6E2D7365 
 2582      6374696F 
 2582      6E73202D 
 2582      66646174 
 2583 03b6 6F6E7374 		.ascii	"onstant\000"
 2583      616E7400 
 2584              	.LASF153:
 2585 03be 63686970 		.ascii	"chipid_read_processor\000"
 2585      69645F72 
 2585      6561645F 
 2585      70726F63 
 2585      6573736F 
 2586              	.LASF40:
 2587 03d4 5F5F746D 		.ascii	"__tm_mon\000"
 2587      5F6D6F6E 
 2587      00
 2588              	.LASF50:
 2589 03dd 5F617465 		.ascii	"_atexit\000"
 2589      78697400 
 2590              	.LASF128:
 2591 03e5 7375626F 		.ascii	"suboptarg\000"
 2591      70746172 
 2591      6700
 2592              	.LASF151:
 2593 03ef 63686970 		.ascii	"chipid_read_sramsize\000"
 2593      69645F72 
 2593      6561645F 
 2593      7372616D 
 2593      73697A65 
 2594              	.LASF82:
 2595 0404 5F5F7364 		.ascii	"__sdidinit\000"
 2595      6964696E 
 2595      697400
 2596              	.LASF108:
 2597 040f 5F67616D 		.ascii	"_gamma_signgam\000"
 2597      6D615F73 
 2597      69676E67 
 2597      616D00
ARM GAS  /tmp/ccFtFbC6.s 			page 54


 2598              	.LASF22:
 2599 041e 77696E74 		.ascii	"wint_t\000"
 2599      5F7400
 2600              	.LASF18:
 2601 0425 43686970 		.ascii	"Chipid\000"
 2601      696400
 2602              	.LASF133:
 2603 042c 666C6F61 		.ascii	"float\000"
 2603      7400
 2604              	.LASF136:
 2605 0432 756C5F76 		.ascii	"ul_version\000"
 2605      65727369 
 2605      6F6E00
 2606              	.LASF129:
 2607 043d 675F696E 		.ascii	"g_interrupt_enabled\000"
 2607      74657272 
 2607      7570745F 
 2607      656E6162 
 2607      6C656400 
 2608              	.LASF27:
 2609 0451 5F6D6273 		.ascii	"_mbstate_t\000"
 2609      74617465 
 2609      5F7400
 2610              	.LASF19:
 2611 045c 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 2611      4B5F5245 
 2611      43555253 
 2611      4956455F 
 2611      5400
 2612              	.LASF39:
 2613 046e 5F5F746D 		.ascii	"__tm_mday\000"
 2613      5F6D6461 
 2613      7900
 2614              	.LASF130:
 2615 0478 5F426F6F 		.ascii	"_Bool\000"
 2615      6C00
 2616              	.LASF11:
 2617 047e 696E7433 		.ascii	"int32_t\000"
 2617      325F7400 
 2618              	.LASF2:
 2619 0486 756E7369 		.ascii	"unsigned char\000"
 2619      676E6564 
 2619      20636861 
 2619      7200
 2620              	.LASF99:
 2621 0494 5F696F62 		.ascii	"_iobs\000"
 2621      7300
 2622              	.LASF143:
 2623 049a 756C5F65 		.ascii	"ul_extflag\000"
 2623      7874666C 
 2623      616700
 2624              	.LASF122:
 2625 04a5 5F685F65 		.ascii	"_h_errno\000"
 2625      72726E6F 
 2625      00
 2626              	.LASF28:
 2627 04ae 5F666C6F 		.ascii	"_flock_t\000"
ARM GAS  /tmp/ccFtFbC6.s 			page 55


 2627      636B5F74 
 2627      00
 2628              	.LASF43:
 2629 04b7 5F5F746D 		.ascii	"__tm_yday\000"
 2629      5F796461 
 2629      7900
 2630              	.LASF53:
 2631 04c1 5F5F7362 		.ascii	"__sbuf\000"
 2631      756600
 2632              	.LASF72:
 2633 04c8 5F666C61 		.ascii	"_flags2\000"
 2633      67733200 
 2634              	.LASF87:
 2635 04d0 5F667265 		.ascii	"_freelist\000"
 2635      656C6973 
 2635      7400
 2636              	.LASF96:
 2637 04da 5F5F4649 		.ascii	"__FILE\000"
 2637      4C4500
 2638              	.LASF146:
 2639 04e1 63686970 		.ascii	"chipid_read_extchipid\000"
 2639      69645F72 
 2639      6561645F 
 2639      65787463 
 2639      68697069 
 2640              	.LASF56:
 2641 04f7 5F5F7346 		.ascii	"__sFILE\000"
 2641      494C4500 
 2642              	.LASF71:
 2643 04ff 5F6D6273 		.ascii	"_mbstate\000"
 2643      74617465 
 2643      00
 2644              	.LASF111:
 2645 0508 5F6D626C 		.ascii	"_mblen_state\000"
 2645      656E5F73 
 2645      74617465 
 2645      00
 2646              	.LASF78:
 2647 0515 5F696E63 		.ascii	"_inc\000"
 2647      00
 2648              	.LASF51:
 2649 051a 5F696E64 		.ascii	"_ind\000"
 2649      00
 2650              	.LASF81:
 2651 051f 5F637572 		.ascii	"_current_locale\000"
 2651      72656E74 
 2651      5F6C6F63 
 2651      616C6500 
 2652              	.LASF83:
 2653 052f 5F5F636C 		.ascii	"__cleanup\000"
 2653      65616E75 
 2653      7000
 2654              	.LASF31:
 2655 0539 5F6D6178 		.ascii	"_maxwds\000"
 2655      77647300 
 2656              	.LASF73:
 2657 0541 5F726565 		.ascii	"_reent\000"
ARM GAS  /tmp/ccFtFbC6.s 			page 56


 2657      6E7400
 2658              	.LASF101:
 2659 0548 5F736565 		.ascii	"_seed\000"
 2659      6400
 2660              	.LASF25:
 2661 054e 5F5F636F 		.ascii	"__count\000"
 2661      756E7400 
 2662              	.LASF26:
 2663 0556 5F5F7661 		.ascii	"__value\000"
 2663      6C756500 
 2664              	.LASF63:
 2665 055e 5F736565 		.ascii	"_seek\000"
 2665      6B00
 2666              	.LASF42:
 2667 0564 5F5F746D 		.ascii	"__tm_wday\000"
 2667      5F776461 
 2667      7900
 2668              	.LASF135:
 2669 056e 63686970 		.ascii	"chipid_data\000"
 2669      69645F64 
 2669      61746100 
 2670              	.LASF21:
 2671 057a 5F66706F 		.ascii	"_fpos_t\000"
 2671      735F7400 
 2672              	.LASF145:
 2673 0582 63686970 		.ascii	"chipid_data_t\000"
 2673      69645F64 
 2673      6174615F 
 2673      7400
 2674              	.LASF74:
 2675 0590 5F657272 		.ascii	"_errno\000"
 2675      6E6F00
 2676              	.LASF95:
 2677 0597 63686172 		.ascii	"char\000"
 2677      00
 2678              	.LASF67:
 2679 059c 5F626C6B 		.ascii	"_blksize\000"
 2679      73697A65 
 2679      00
 2680              	.LASF55:
 2681 05a5 5F73697A 		.ascii	"_size\000"
 2681      6500
 2682              	.LASF0:
 2683 05ab 756E7369 		.ascii	"unsigned int\000"
 2683      676E6564 
 2683      20696E74 
 2683      00
 2684              	.LASF6:
 2685 05b8 5F5F696E 		.ascii	"__int32_t\000"
 2685      7433325F 
 2685      7400
 2686              	.LASF30:
 2687 05c2 5F6E6578 		.ascii	"_next\000"
 2687      7400
 2688              	.LASF105:
 2689 05c8 5F737472 		.ascii	"_strtok_last\000"
 2689      746F6B5F 
ARM GAS  /tmp/ccFtFbC6.s 			page 57


 2689      6C617374 
 2689      00
 2690              	.LASF48:
 2691 05d5 5F666E74 		.ascii	"_fntypes\000"
 2691      79706573 
 2691      00
 2692              	.LASF4:
 2693 05de 73686F72 		.ascii	"short unsigned int\000"
 2693      7420756E 
 2693      7369676E 
 2693      65642069 
 2693      6E7400
 2694              	.LASF156:
 2695 05f1 705F6368 		.ascii	"p_chipid_data\000"
 2695      69706964 
 2695      5F646174 
 2695      6100
 2696              	.LASF139:
 2697 05ff 756C5F6E 		.ascii	"ul_nvpsiz2\000"
 2697      76707369 
 2697      7A3200
 2698              	.LASF29:
 2699 060a 5F5F554C 		.ascii	"__ULong\000"
 2699      6F6E6700 
 2700              	.LASF148:
 2701 0612 705F6368 		.ascii	"p_chipid\000"
 2701      69706964 
 2701      00
 2702              	.LASF103:
 2703 061b 5F616464 		.ascii	"_add\000"
 2703      00
 2704              	.LASF149:
 2705 0620 63686970 		.ascii	"chipid_read_nvpm2size\000"
 2705      69645F72 
 2705      6561645F 
 2705      6E76706D 
 2705      3273697A 
 2706              	.LASF138:
 2707 0636 756C5F6E 		.ascii	"ul_nvpsiz\000"
 2707      76707369 
 2707      7A00
 2708              	.LASF147:
 2709 0640 63686970 		.ascii	"chipid_read_nvpmtype\000"
 2709      69645F72 
 2709      6561645F 
 2709      6E76706D 
 2709      74797065 
 2710              	.LASF80:
 2711 0655 5F637572 		.ascii	"_current_category\000"
 2711      72656E74 
 2711      5F636174 
 2711      65676F72 
 2711      7900
 2712              	.LASF12:
 2713 0667 75696E74 		.ascii	"uint32_t\000"
 2713      33325F74 
 2713      00
ARM GAS  /tmp/ccFtFbC6.s 			page 58


 2714              	.LASF104:
 2715 0670 5F756E75 		.ascii	"_unused_rand\000"
 2715      7365645F 
 2715      72616E64 
 2715      00
 2716              	.LASF33:
 2717 067d 5F776473 		.ascii	"_wds\000"
 2717      00
 2718              	.LASF97:
 2719 0682 5F676C75 		.ascii	"_glue\000"
 2719      6500
 2720              	.LASF127:
 2721 0688 5F676C6F 		.ascii	"_global_impure_ptr\000"
 2721      62616C5F 
 2721      696D7075 
 2721      72655F70 
 2721      747200
 2722              	.LASF114:
 2723 069b 5F6C3634 		.ascii	"_l64a_buf\000"
 2723      615F6275 
 2723      6600
 2724              	.LASF92:
 2725 06a5 5F736967 		.ascii	"_sig_func\000"
 2725      5F66756E 
 2725      6300
 2726              	.LASF131:
 2727 06af 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 2727      6972715F 
 2727      63726974 
 2727      6963616C 
 2727      5F736563 
 2728              	.LASF66:
 2729 06d0 5F6E6275 		.ascii	"_nbuf\000"
 2729      6600
 2730              	.LASF125:
 2731 06d6 5F756E75 		.ascii	"_unused\000"
 2731      73656400 
 2732              	.LASF158:
 2733 06de 2E2E2F61 		.ascii	"../asf/sam/drivers/chipid/chipid.c\000"
 2733      73662F73 
 2733      616D2F64 
 2733      72697665 
 2733      72732F63 
 2734              	.LASF44:
 2735 0701 5F5F746D 		.ascii	"__tm_isdst\000"
 2735      5F697364 
 2735      737400
 2736              	.LASF107:
 2737 070c 5F6C6F63 		.ascii	"_localtime_buf\000"
 2737      616C7469 
 2737      6D655F62 
 2737      756600
 2738              	.LASF140:
 2739 071b 756C5F73 		.ascii	"ul_sramsiz\000"
 2739      72616D73 
 2739      697A00
 2740              	.LASF37:
ARM GAS  /tmp/ccFtFbC6.s 			page 59


 2741 0726 5F5F746D 		.ascii	"__tm_min\000"
 2741      5F6D696E 
 2741      00
 2742              	.LASF110:
 2743 072f 5F723438 		.ascii	"_r48\000"
 2743      00
 2744              	.LASF112:
 2745 0734 5F6D6274 		.ascii	"_mbtowc_state\000"
 2745      6F77635F 
 2745      73746174 
 2745      6500
 2746              	.LASF86:
 2747 0742 5F703573 		.ascii	"_p5s\000"
 2747      00
 2748              	.LASF150:
 2749 0747 63686970 		.ascii	"chipid_read_nvpmsize\000"
 2749      69645F72 
 2749      6561645F 
 2749      6E76706D 
 2749      73697A65 
 2750              	.LASF155:
 2751 075c 63686970 		.ascii	"chipid_read\000"
 2751      69645F72 
 2751      65616400 
 2752              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
