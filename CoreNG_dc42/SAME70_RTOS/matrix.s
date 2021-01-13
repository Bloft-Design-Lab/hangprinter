ARM GAS  /tmp/cc3LTPp7.s 			page 1


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
  12              		.file	"matrix.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.matrix_set_master_burst_type,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	matrix_set_master_burst_type
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	matrix_set_master_burst_type, %function
  25              	matrix_set_master_burst_type:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/matrix/matrix.c"
   1:../asf/sam/drivers/matrix/matrix.c **** /**
   2:../asf/sam/drivers/matrix/matrix.c ****  * \file
   3:../asf/sam/drivers/matrix/matrix.c ****  *
   4:../asf/sam/drivers/matrix/matrix.c ****  * \brief Matrix driver for SAM.
   5:../asf/sam/drivers/matrix/matrix.c ****  *
   6:../asf/sam/drivers/matrix/matrix.c ****  * Copyright (c) 2012-2015 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/matrix/matrix.c ****  *
   8:../asf/sam/drivers/matrix/matrix.c ****  * \asf_license_start
   9:../asf/sam/drivers/matrix/matrix.c ****  *
  10:../asf/sam/drivers/matrix/matrix.c ****  * \page License
  11:../asf/sam/drivers/matrix/matrix.c ****  *
  12:../asf/sam/drivers/matrix/matrix.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/matrix/matrix.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/matrix/matrix.c ****  *
  15:../asf/sam/drivers/matrix/matrix.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/matrix/matrix.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/matrix/matrix.c ****  *
  18:../asf/sam/drivers/matrix/matrix.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/matrix/matrix.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/matrix/matrix.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/matrix/matrix.c ****  *
  22:../asf/sam/drivers/matrix/matrix.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/matrix/matrix.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/matrix/matrix.c ****  *
  25:../asf/sam/drivers/matrix/matrix.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/matrix/matrix.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/matrix/matrix.c ****  *
  28:../asf/sam/drivers/matrix/matrix.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/matrix/matrix.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/matrix/matrix.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/cc3LTPp7.s 			page 2


  31:../asf/sam/drivers/matrix/matrix.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/matrix/matrix.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/matrix/matrix.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/matrix/matrix.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/matrix/matrix.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/matrix/matrix.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/matrix/matrix.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/matrix/matrix.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/matrix/matrix.c ****  *
  40:../asf/sam/drivers/matrix/matrix.c ****  * \asf_license_stop
  41:../asf/sam/drivers/matrix/matrix.c ****  *
  42:../asf/sam/drivers/matrix/matrix.c ****  */
  43:../asf/sam/drivers/matrix/matrix.c **** /*
  44:../asf/sam/drivers/matrix/matrix.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/matrix/matrix.c ****  */
  46:../asf/sam/drivers/matrix/matrix.c **** 
  47:../asf/sam/drivers/matrix/matrix.c **** #include  "matrix.h"
  48:../asf/sam/drivers/matrix/matrix.c **** 
  49:../asf/sam/drivers/matrix/matrix.c **** /* / @cond 0 */
  50:../asf/sam/drivers/matrix/matrix.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/matrix/matrix.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/matrix/matrix.c **** extern "C" {
  53:../asf/sam/drivers/matrix/matrix.c **** #endif
  54:../asf/sam/drivers/matrix/matrix.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/matrix/matrix.c **** /* / @endcond */
  56:../asf/sam/drivers/matrix/matrix.c **** 
  57:../asf/sam/drivers/matrix/matrix.c **** /**
  58:../asf/sam/drivers/matrix/matrix.c ****  * \defgroup sam_drivers_matrix_group Matrix (MATRIX)
  59:../asf/sam/drivers/matrix/matrix.c ****  *
  60:../asf/sam/drivers/matrix/matrix.c ****  * \par Purpose
  61:../asf/sam/drivers/matrix/matrix.c ****  *
  62:../asf/sam/drivers/matrix/matrix.c ****  * The Bus Matrix implements a multi-layer AHB that enables parallel access
  63:../asf/sam/drivers/matrix/matrix.c ****  * paths between multiple AHB masters and slaves in a system, which increases
  64:../asf/sam/drivers/matrix/matrix.c ****  * the overall bandwidth.
  65:../asf/sam/drivers/matrix/matrix.c ****  *
  66:../asf/sam/drivers/matrix/matrix.c ****  * @{
  67:../asf/sam/drivers/matrix/matrix.c ****  */
  68:../asf/sam/drivers/matrix/matrix.c **** 
  69:../asf/sam/drivers/matrix/matrix.c **** #if SAM4C
  70:../asf/sam/drivers/matrix/matrix.c **** #ifdef SAM4C_0
  71:../asf/sam/drivers/matrix/matrix.c **** #define MATRIX MATRIX0
  72:../asf/sam/drivers/matrix/matrix.c **** #else
  73:../asf/sam/drivers/matrix/matrix.c **** #define MATRIX MATRIX1
  74:../asf/sam/drivers/matrix/matrix.c **** #endif
  75:../asf/sam/drivers/matrix/matrix.c **** #endif
  76:../asf/sam/drivers/matrix/matrix.c **** 
  77:../asf/sam/drivers/matrix/matrix.c **** #if SAM4CP
  78:../asf/sam/drivers/matrix/matrix.c **** #ifdef SAM4CP_0
  79:../asf/sam/drivers/matrix/matrix.c **** #define MATRIX MATRIX0
  80:../asf/sam/drivers/matrix/matrix.c **** #else
  81:../asf/sam/drivers/matrix/matrix.c **** #define MATRIX MATRIX1
  82:../asf/sam/drivers/matrix/matrix.c **** #endif
  83:../asf/sam/drivers/matrix/matrix.c **** #endif
  84:../asf/sam/drivers/matrix/matrix.c **** 
  85:../asf/sam/drivers/matrix/matrix.c **** #if SAM4CM
  86:../asf/sam/drivers/matrix/matrix.c **** #ifdef SAM4CM_0
  87:../asf/sam/drivers/matrix/matrix.c **** #define MATRIX MATRIX0
ARM GAS  /tmp/cc3LTPp7.s 			page 3


  88:../asf/sam/drivers/matrix/matrix.c **** #else
  89:../asf/sam/drivers/matrix/matrix.c **** #define MATRIX MATRIX1
  90:../asf/sam/drivers/matrix/matrix.c **** #endif
  91:../asf/sam/drivers/matrix/matrix.c **** #endif
  92:../asf/sam/drivers/matrix/matrix.c **** 
  93:../asf/sam/drivers/matrix/matrix.c **** #ifndef MATRIX_WPMR_WPKEY_PASSWD
  94:../asf/sam/drivers/matrix/matrix.c **** #define MATRIX_WPMR_WPKEY_PASSWD    MATRIX_WPMR_WPKEY(0x4D4154U)
  95:../asf/sam/drivers/matrix/matrix.c **** #endif
  96:../asf/sam/drivers/matrix/matrix.c **** 
  97:../asf/sam/drivers/matrix/matrix.c **** /**
  98:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set undefined length burst type of the specified master.
  99:../asf/sam/drivers/matrix/matrix.c ****  *
 100:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Master index.
 101:../asf/sam/drivers/matrix/matrix.c ****  * \param burst_type Undefined length burst type.
 102:../asf/sam/drivers/matrix/matrix.c ****  */
 103:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_master_burst_type(uint32_t ul_id, burst_type_t burst_type)
 104:../asf/sam/drivers/matrix/matrix.c **** {
  28              		.loc 1 104 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 8
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
 105:../asf/sam/drivers/matrix/matrix.c **** #if (SAMV70 || SAMS70|| SAME70)
 106:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 107:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t *p_MCFG;
 108:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 109:../asf/sam/drivers/matrix/matrix.c **** 	uint32_t ul_dlt;
 110:../asf/sam/drivers/matrix/matrix.c **** 
 111:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = (uint32_t)&(p_matrix->MATRIX_MCFG1);
 112:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = ul_dlt - (uint32_t)&(p_matrix->MATRIX_MCFG0);
  34              		.loc 1 112 0
  35 0000 064A     		ldr	r2, .L3
  36              	.LVL1:
 104:../asf/sam/drivers/matrix/matrix.c **** #if (SAMV70 || SAMS70|| SAME70)
  37              		.loc 1 104 0
  38 0002 82B0     		sub	sp, sp, #8
  39              		.cfi_def_cfa_offset 8
 113:../asf/sam/drivers/matrix/matrix.c **** 
 114:../asf/sam/drivers/matrix/matrix.c **** 	p_MCFG = (volatile uint32_t *)((uint32_t)&(p_matrix->MATRIX_MCFG0) +
 115:../asf/sam/drivers/matrix/matrix.c **** 			ul_id * ul_dlt);
 116:../asf/sam/drivers/matrix/matrix.c **** 
 117:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = *p_MCFG & (~MATRIX_MCFG0_ULBT_Msk);
  40              		.loc 1 117 0
  41 0004 52F82030 		ldr	r3, [r2, r0, lsl #2]
  42 0008 23F00703 		bic	r3, r3, #7
  43 000c 0193     		str	r3, [sp, #4]
 118:../asf/sam/drivers/matrix/matrix.c **** 	*p_MCFG = ul_reg | (uint32_t)burst_type;
  44              		.loc 1 118 0
  45 000e 019B     		ldr	r3, [sp, #4]
  46 0010 1943     		orrs	r1, r1, r3
  47              	.LVL2:
  48 0012 42F82010 		str	r1, [r2, r0, lsl #2]
 119:../asf/sam/drivers/matrix/matrix.c **** #else
 120:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 121:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 122:../asf/sam/drivers/matrix/matrix.c **** 
ARM GAS  /tmp/cc3LTPp7.s 			page 4


 123:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->MATRIX_MCFG[ul_id] & (~MATRIX_MCFG_ULBT_Msk);
 124:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_MCFG[ul_id] = ul_reg | (uint32_t)burst_type;
 125:../asf/sam/drivers/matrix/matrix.c **** #endif
 126:../asf/sam/drivers/matrix/matrix.c **** }
  49              		.loc 1 126 0
  50 0016 02B0     		add	sp, sp, #8
  51              		.cfi_def_cfa_offset 0
  52              		@ sp needed
  53 0018 7047     		bx	lr
  54              	.L4:
  55 001a 00BF     		.align	2
  56              	.L3:
  57 001c 00800840 		.word	1074298880
  58              		.cfi_endproc
  59              	.LFE142:
  60              		.size	matrix_set_master_burst_type, .-matrix_set_master_burst_type
  61              		.section	.text.matrix_get_master_burst_type,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	matrix_get_master_burst_type
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv5-d16
  69              		.type	matrix_get_master_burst_type, %function
  70              	matrix_get_master_burst_type:
  71              	.LFB143:
 127:../asf/sam/drivers/matrix/matrix.c **** 
 128:../asf/sam/drivers/matrix/matrix.c **** /**
 129:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get undefined length burst type of the specified master.
 130:../asf/sam/drivers/matrix/matrix.c ****  *
 131:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Master index.
 132:../asf/sam/drivers/matrix/matrix.c ****  *
 133:../asf/sam/drivers/matrix/matrix.c ****  * \return Undefined length burst type.
 134:../asf/sam/drivers/matrix/matrix.c ****  */
 135:../asf/sam/drivers/matrix/matrix.c **** burst_type_t matrix_get_master_burst_type(uint32_t ul_id)
 136:../asf/sam/drivers/matrix/matrix.c **** {
  72              		.loc 1 136 0
  73              		.cfi_startproc
  74              		@ args = 0, pretend = 0, frame = 8
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76              		@ link register save eliminated.
  77              	.LVL3:
 137:../asf/sam/drivers/matrix/matrix.c **** #if (SAMV70 || SAMS70|| SAME70)
 138:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 139:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t *p_MCFG;
 140:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 141:../asf/sam/drivers/matrix/matrix.c **** 	uint32_t ul_dlt;
 142:../asf/sam/drivers/matrix/matrix.c **** 
 143:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = (uint32_t)&(p_matrix->MATRIX_MCFG1);
 144:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = ul_dlt - (uint32_t)&(p_matrix->MATRIX_MCFG0);
  78              		.loc 1 144 0
  79 0000 054B     		ldr	r3, .L7
  80              	.LVL4:
 136:../asf/sam/drivers/matrix/matrix.c **** #if (SAMV70 || SAMS70|| SAME70)
  81              		.loc 1 136 0
  82 0002 82B0     		sub	sp, sp, #8
ARM GAS  /tmp/cc3LTPp7.s 			page 5


  83              		.cfi_def_cfa_offset 8
 145:../asf/sam/drivers/matrix/matrix.c **** 
 146:../asf/sam/drivers/matrix/matrix.c **** 	p_MCFG = (volatile uint32_t *)((uint32_t)&(p_matrix->MATRIX_MCFG0) +
 147:../asf/sam/drivers/matrix/matrix.c **** 			ul_id * ul_dlt);
 148:../asf/sam/drivers/matrix/matrix.c **** 
 149:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = *p_MCFG & (~MATRIX_MCFG0_ULBT_Msk);
  84              		.loc 1 149 0
  85 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
  86              	.LVL5:
  87 0008 23F00703 		bic	r3, r3, #7
  88 000c 0193     		str	r3, [sp, #4]
 150:../asf/sam/drivers/matrix/matrix.c **** 	return (burst_type_t)ul_reg;
  89              		.loc 1 150 0
  90 000e 0198     		ldr	r0, [sp, #4]
  91              	.LVL6:
 151:../asf/sam/drivers/matrix/matrix.c **** #else
 152:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 153:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 154:../asf/sam/drivers/matrix/matrix.c **** 
 155:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->MATRIX_MCFG[ul_id] & (MATRIX_MCFG_ULBT_Msk);
 156:../asf/sam/drivers/matrix/matrix.c **** 	return (burst_type_t)ul_reg;
 157:../asf/sam/drivers/matrix/matrix.c **** #endif
 158:../asf/sam/drivers/matrix/matrix.c **** }
  92              		.loc 1 158 0
  93 0010 C0B2     		uxtb	r0, r0
  94 0012 02B0     		add	sp, sp, #8
  95              		.cfi_def_cfa_offset 0
  96              		@ sp needed
  97 0014 7047     		bx	lr
  98              	.L8:
  99 0016 00BF     		.align	2
 100              	.L7:
 101 0018 00800840 		.word	1074298880
 102              		.cfi_endproc
 103              	.LFE143:
 104              		.size	matrix_get_master_burst_type, .-matrix_get_master_burst_type
 105              		.section	.text.matrix_set_slave_slot_cycle,"ax",%progbits
 106              		.align	1
 107              		.p2align 2,,3
 108              		.global	matrix_set_slave_slot_cycle
 109              		.syntax unified
 110              		.thumb
 111              		.thumb_func
 112              		.fpu fpv5-d16
 113              		.type	matrix_set_slave_slot_cycle, %function
 114              	matrix_set_slave_slot_cycle:
 115              	.LFB144:
 159:../asf/sam/drivers/matrix/matrix.c **** 
 160:../asf/sam/drivers/matrix/matrix.c **** /**
 161:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set slot cycle of the specified slave.
 162:../asf/sam/drivers/matrix/matrix.c ****  *
 163:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 164:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_slot_cycle Number of slot cycle.
 165:../asf/sam/drivers/matrix/matrix.c ****  */
 166:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_slave_slot_cycle(uint32_t ul_id, uint32_t ul_slot_cycle)
 167:../asf/sam/drivers/matrix/matrix.c **** {
 116              		.loc 1 167 0
ARM GAS  /tmp/cc3LTPp7.s 			page 6


 117              		.cfi_startproc
 118              		@ args = 0, pretend = 0, frame = 8
 119              		@ frame_needed = 0, uses_anonymous_args = 0
 120              		@ link register save eliminated.
 121              	.LVL7:
 122 0000 074B     		ldr	r3, .L11
 123 0002 82B0     		sub	sp, sp, #8
 124              		.cfi_def_cfa_offset 8
 168:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 169:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 170:../asf/sam/drivers/matrix/matrix.c **** 
 171:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->MATRIX_SCFG[ul_id] & (~MATRIX_SCFG_SLOT_CYCLE_Msk);
 125              		.loc 1 171 0
 126 0004 074A     		ldr	r2, .L11+4
 172:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_SCFG[ul_id] = ul_reg | MATRIX_SCFG_SLOT_CYCLE(
 127              		.loc 1 172 0
 128 0006 C1F30801 		ubfx	r1, r1, #0, #9
 129              	.LVL8:
 130 000a 03EB8000 		add	r0, r3, r0, lsl #2
 131              	.LVL9:
 171:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_SCFG[ul_id] = ul_reg | MATRIX_SCFG_SLOT_CYCLE(
 132              		.loc 1 171 0
 133 000e 036C     		ldr	r3, [r0, #64]
 134 0010 1A40     		ands	r2, r2, r3
 135 0012 0192     		str	r2, [sp, #4]
 136              		.loc 1 172 0
 137 0014 019B     		ldr	r3, [sp, #4]
 138 0016 1943     		orrs	r1, r1, r3
 139 0018 0164     		str	r1, [r0, #64]
 173:../asf/sam/drivers/matrix/matrix.c **** 			ul_slot_cycle);
 174:../asf/sam/drivers/matrix/matrix.c **** }
 140              		.loc 1 174 0
 141 001a 02B0     		add	sp, sp, #8
 142              		.cfi_def_cfa_offset 0
 143              		@ sp needed
 144 001c 7047     		bx	lr
 145              	.L12:
 146 001e 00BF     		.align	2
 147              	.L11:
 148 0020 00800840 		.word	1074298880
 149 0024 00FEFFFF 		.word	-512
 150              		.cfi_endproc
 151              	.LFE144:
 152              		.size	matrix_set_slave_slot_cycle, .-matrix_set_slave_slot_cycle
 153              		.section	.text.matrix_get_slave_slot_cycle,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	matrix_get_slave_slot_cycle
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu fpv5-d16
 161              		.type	matrix_get_slave_slot_cycle, %function
 162              	matrix_get_slave_slot_cycle:
 163              	.LFB145:
 175:../asf/sam/drivers/matrix/matrix.c **** 
 176:../asf/sam/drivers/matrix/matrix.c **** /**
ARM GAS  /tmp/cc3LTPp7.s 			page 7


 177:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get slot cycle of the specified slave.
 178:../asf/sam/drivers/matrix/matrix.c ****  *
 179:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 180:../asf/sam/drivers/matrix/matrix.c ****  *
 181:../asf/sam/drivers/matrix/matrix.c ****  * \return Number of slot cycle.
 182:../asf/sam/drivers/matrix/matrix.c ****  */
 183:../asf/sam/drivers/matrix/matrix.c **** uint32_t matrix_get_slave_slot_cycle(uint32_t ul_id)
 184:../asf/sam/drivers/matrix/matrix.c **** {
 164              		.loc 1 184 0
 165              		.cfi_startproc
 166              		@ args = 0, pretend = 0, frame = 8
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168              		@ link register save eliminated.
 169              	.LVL10:
 185:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 186:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 187:../asf/sam/drivers/matrix/matrix.c **** 
 188:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->MATRIX_SCFG[ul_id] & (MATRIX_SCFG_SLOT_CYCLE_Msk);
 170              		.loc 1 188 0
 171 0000 1030     		adds	r0, r0, #16
 172              	.LVL11:
 173 0002 054B     		ldr	r3, .L15
 184:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 174              		.loc 1 184 0
 175 0004 82B0     		sub	sp, sp, #8
 176              		.cfi_def_cfa_offset 8
 177              		.loc 1 188 0
 178 0006 53F82030 		ldr	r3, [r3, r0, lsl #2]
 179 000a C3F30803 		ubfx	r3, r3, #0, #9
 180 000e 0193     		str	r3, [sp, #4]
 189:../asf/sam/drivers/matrix/matrix.c **** 	return (ul_reg >> MATRIX_SCFG_SLOT_CYCLE_Pos);
 181              		.loc 1 189 0
 182 0010 0198     		ldr	r0, [sp, #4]
 183              	.LVL12:
 190:../asf/sam/drivers/matrix/matrix.c **** }
 184              		.loc 1 190 0
 185 0012 02B0     		add	sp, sp, #8
 186              		.cfi_def_cfa_offset 0
 187              		@ sp needed
 188 0014 7047     		bx	lr
 189              	.L16:
 190 0016 00BF     		.align	2
 191              	.L15:
 192 0018 00800840 		.word	1074298880
 193              		.cfi_endproc
 194              	.LFE145:
 195              		.size	matrix_get_slave_slot_cycle, .-matrix_get_slave_slot_cycle
 196              		.section	.text.matrix_set_slave_default_master_type,"ax",%progbits
 197              		.align	1
 198              		.p2align 2,,3
 199              		.global	matrix_set_slave_default_master_type
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu fpv5-d16
 204              		.type	matrix_set_slave_default_master_type, %function
 205              	matrix_set_slave_default_master_type:
ARM GAS  /tmp/cc3LTPp7.s 			page 8


 206              	.LFB146:
 191:../asf/sam/drivers/matrix/matrix.c **** 
 192:../asf/sam/drivers/matrix/matrix.c **** /**
 193:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set default master type of the specified slave.
 194:../asf/sam/drivers/matrix/matrix.c ****  *
 195:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 196:../asf/sam/drivers/matrix/matrix.c ****  * \param type Default master type.
 197:../asf/sam/drivers/matrix/matrix.c ****  */
 198:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_slave_default_master_type(uint32_t ul_id, defaut_master_t type)
 199:../asf/sam/drivers/matrix/matrix.c **** {
 207              		.loc 1 199 0
 208              		.cfi_startproc
 209              		@ args = 0, pretend = 0, frame = 8
 210              		@ frame_needed = 0, uses_anonymous_args = 0
 211              		@ link register save eliminated.
 212              	.LVL13:
 213 0000 064B     		ldr	r3, .L19
 214 0002 82B0     		sub	sp, sp, #8
 215              		.cfi_def_cfa_offset 8
 216 0004 03EB8000 		add	r0, r3, r0, lsl #2
 217              	.LVL14:
 200:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 201:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 202:../asf/sam/drivers/matrix/matrix.c **** 
 203:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->MATRIX_SCFG[ul_id] & (~MATRIX_SCFG_DEFMSTR_TYPE_Msk);
 218              		.loc 1 203 0
 219 0008 036C     		ldr	r3, [r0, #64]
 220 000a 23F44033 		bic	r3, r3, #196608
 221 000e 0193     		str	r3, [sp, #4]
 204:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_SCFG[ul_id] = ul_reg | (uint32_t)type;
 222              		.loc 1 204 0
 223 0010 019B     		ldr	r3, [sp, #4]
 224 0012 1943     		orrs	r1, r1, r3
 225              	.LVL15:
 226 0014 0164     		str	r1, [r0, #64]
 205:../asf/sam/drivers/matrix/matrix.c **** }
 227              		.loc 1 205 0
 228 0016 02B0     		add	sp, sp, #8
 229              		.cfi_def_cfa_offset 0
 230              		@ sp needed
 231 0018 7047     		bx	lr
 232              	.L20:
 233 001a 00BF     		.align	2
 234              	.L19:
 235 001c 00800840 		.word	1074298880
 236              		.cfi_endproc
 237              	.LFE146:
 238              		.size	matrix_set_slave_default_master_type, .-matrix_set_slave_default_master_type
 239              		.section	.text.matrix_get_slave_default_master_type,"ax",%progbits
 240              		.align	1
 241              		.p2align 2,,3
 242              		.global	matrix_get_slave_default_master_type
 243              		.syntax unified
 244              		.thumb
 245              		.thumb_func
 246              		.fpu fpv5-d16
 247              		.type	matrix_get_slave_default_master_type, %function
ARM GAS  /tmp/cc3LTPp7.s 			page 9


 248              	matrix_get_slave_default_master_type:
 249              	.LFB147:
 206:../asf/sam/drivers/matrix/matrix.c **** 
 207:../asf/sam/drivers/matrix/matrix.c **** /**
 208:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get default master type of the specified slave.
 209:../asf/sam/drivers/matrix/matrix.c ****  *
 210:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 211:../asf/sam/drivers/matrix/matrix.c ****  *
 212:../asf/sam/drivers/matrix/matrix.c ****  * \return Default master type.
 213:../asf/sam/drivers/matrix/matrix.c ****  */
 214:../asf/sam/drivers/matrix/matrix.c **** defaut_master_t matrix_get_slave_default_master_type(uint32_t ul_id)
 215:../asf/sam/drivers/matrix/matrix.c **** {
 250              		.loc 1 215 0
 251              		.cfi_startproc
 252              		@ args = 0, pretend = 0, frame = 8
 253              		@ frame_needed = 0, uses_anonymous_args = 0
 254              		@ link register save eliminated.
 255              	.LVL16:
 216:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 217:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 218:../asf/sam/drivers/matrix/matrix.c **** 
 219:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->MATRIX_SCFG[ul_id] & (MATRIX_SCFG_DEFMSTR_TYPE_Msk);
 256              		.loc 1 219 0
 257 0000 1030     		adds	r0, r0, #16
 258              	.LVL17:
 259 0002 054B     		ldr	r3, .L23
 215:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 260              		.loc 1 215 0
 261 0004 82B0     		sub	sp, sp, #8
 262              		.cfi_def_cfa_offset 8
 263              		.loc 1 219 0
 264 0006 53F82030 		ldr	r3, [r3, r0, lsl #2]
 265 000a 03F44033 		and	r3, r3, #196608
 266 000e 0193     		str	r3, [sp, #4]
 220:../asf/sam/drivers/matrix/matrix.c **** 	return (defaut_master_t)ul_reg;
 267              		.loc 1 220 0
 268 0010 0198     		ldr	r0, [sp, #4]
 269              	.LVL18:
 221:../asf/sam/drivers/matrix/matrix.c **** }
 270              		.loc 1 221 0
 271 0012 02B0     		add	sp, sp, #8
 272              		.cfi_def_cfa_offset 0
 273              		@ sp needed
 274 0014 7047     		bx	lr
 275              	.L24:
 276 0016 00BF     		.align	2
 277              	.L23:
 278 0018 00800840 		.word	1074298880
 279              		.cfi_endproc
 280              	.LFE147:
 281              		.size	matrix_get_slave_default_master_type, .-matrix_get_slave_default_master_type
 282              		.section	.text.matrix_set_slave_fixed_default_master,"ax",%progbits
 283              		.align	1
 284              		.p2align 2,,3
 285              		.global	matrix_set_slave_fixed_default_master
 286              		.syntax unified
 287              		.thumb
ARM GAS  /tmp/cc3LTPp7.s 			page 10


 288              		.thumb_func
 289              		.fpu fpv5-d16
 290              		.type	matrix_set_slave_fixed_default_master, %function
 291              	matrix_set_slave_fixed_default_master:
 292              	.LFB148:
 222:../asf/sam/drivers/matrix/matrix.c **** 
 223:../asf/sam/drivers/matrix/matrix.c **** /**
 224:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set fixed default master of the specified slave.
 225:../asf/sam/drivers/matrix/matrix.c ****  *
 226:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 227:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_fixed_id Fixed default master index.
 228:../asf/sam/drivers/matrix/matrix.c ****  */
 229:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_slave_fixed_default_master(uint32_t ul_id, uint32_t ul_fixed_id)
 230:../asf/sam/drivers/matrix/matrix.c **** {
 293              		.loc 1 230 0
 294              		.cfi_startproc
 295              		@ args = 0, pretend = 0, frame = 8
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297              		@ link register save eliminated.
 298              	.LVL19:
 299 0000 074B     		ldr	r3, .L27
 300 0002 82B0     		sub	sp, sp, #8
 301              		.cfi_def_cfa_offset 8
 231:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 232:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 233:../asf/sam/drivers/matrix/matrix.c **** 
 234:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->MATRIX_SCFG[ul_id] &
 235:../asf/sam/drivers/matrix/matrix.c **** 			(~MATRIX_SCFG_FIXED_DEFMSTR_Msk);
 236:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_SCFG[ul_id]
 237:../asf/sam/drivers/matrix/matrix.c **** 		= ul_reg | MATRIX_SCFG_FIXED_DEFMSTR(ul_fixed_id);
 302              		.loc 1 237 0
 303 0004 8904     		lsls	r1, r1, #18
 304              	.LVL20:
 305 0006 03EB8000 		add	r0, r3, r0, lsl #2
 306              	.LVL21:
 307 000a 01F47011 		and	r1, r1, #3932160
 234:../asf/sam/drivers/matrix/matrix.c **** 			(~MATRIX_SCFG_FIXED_DEFMSTR_Msk);
 308              		.loc 1 234 0
 309 000e 036C     		ldr	r3, [r0, #64]
 310 0010 23F47013 		bic	r3, r3, #3932160
 311 0014 0193     		str	r3, [sp, #4]
 312              		.loc 1 237 0
 313 0016 019B     		ldr	r3, [sp, #4]
 314 0018 1943     		orrs	r1, r1, r3
 315 001a 0164     		str	r1, [r0, #64]
 238:../asf/sam/drivers/matrix/matrix.c **** }
 316              		.loc 1 238 0
 317 001c 02B0     		add	sp, sp, #8
 318              		.cfi_def_cfa_offset 0
 319              		@ sp needed
 320 001e 7047     		bx	lr
 321              	.L28:
 322              		.align	2
 323              	.L27:
 324 0020 00800840 		.word	1074298880
 325              		.cfi_endproc
 326              	.LFE148:
ARM GAS  /tmp/cc3LTPp7.s 			page 11


 327              		.size	matrix_set_slave_fixed_default_master, .-matrix_set_slave_fixed_default_master
 328              		.section	.text.matrix_get_slave_fixed_default_master,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	matrix_get_slave_fixed_default_master
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv5-d16
 336              		.type	matrix_get_slave_fixed_default_master, %function
 337              	matrix_get_slave_fixed_default_master:
 338              	.LFB149:
 239:../asf/sam/drivers/matrix/matrix.c **** 
 240:../asf/sam/drivers/matrix/matrix.c **** /**
 241:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get fixed default master of the specified slave.
 242:../asf/sam/drivers/matrix/matrix.c ****  *
 243:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 244:../asf/sam/drivers/matrix/matrix.c ****  *
 245:../asf/sam/drivers/matrix/matrix.c ****  * \return Fixed default master index.
 246:../asf/sam/drivers/matrix/matrix.c ****  */
 247:../asf/sam/drivers/matrix/matrix.c **** uint32_t matrix_get_slave_fixed_default_master(uint32_t ul_id)
 248:../asf/sam/drivers/matrix/matrix.c **** {
 339              		.loc 1 248 0
 340              		.cfi_startproc
 341              		@ args = 0, pretend = 0, frame = 8
 342              		@ frame_needed = 0, uses_anonymous_args = 0
 343              		@ link register save eliminated.
 344              	.LVL22:
 249:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 250:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 251:../asf/sam/drivers/matrix/matrix.c **** 
 252:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->MATRIX_SCFG[ul_id] & (MATRIX_SCFG_FIXED_DEFMSTR_Msk);
 345              		.loc 1 252 0
 346 0000 1030     		adds	r0, r0, #16
 347              	.LVL23:
 348 0002 054B     		ldr	r3, .L31
 248:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 349              		.loc 1 248 0
 350 0004 82B0     		sub	sp, sp, #8
 351              		.cfi_def_cfa_offset 8
 352              		.loc 1 252 0
 353 0006 53F82030 		ldr	r3, [r3, r0, lsl #2]
 354 000a 03F47013 		and	r3, r3, #3932160
 355 000e 0193     		str	r3, [sp, #4]
 253:../asf/sam/drivers/matrix/matrix.c **** 	return (ul_reg >> MATRIX_SCFG_FIXED_DEFMSTR_Pos);
 356              		.loc 1 253 0
 357 0010 0198     		ldr	r0, [sp, #4]
 358              	.LVL24:
 254:../asf/sam/drivers/matrix/matrix.c **** }
 359              		.loc 1 254 0
 360 0012 800C     		lsrs	r0, r0, #18
 361 0014 02B0     		add	sp, sp, #8
 362              		.cfi_def_cfa_offset 0
 363              		@ sp needed
 364 0016 7047     		bx	lr
 365              	.L32:
 366              		.align	2
ARM GAS  /tmp/cc3LTPp7.s 			page 12


 367              	.L31:
 368 0018 00800840 		.word	1074298880
 369              		.cfi_endproc
 370              	.LFE149:
 371              		.size	matrix_get_slave_fixed_default_master, .-matrix_get_slave_fixed_default_master
 372              		.section	.text.matrix_set_slave_priority,"ax",%progbits
 373              		.align	1
 374              		.p2align 2,,3
 375              		.global	matrix_set_slave_priority
 376              		.syntax unified
 377              		.thumb
 378              		.thumb_func
 379              		.fpu fpv5-d16
 380              		.type	matrix_set_slave_priority, %function
 381              	matrix_set_slave_priority:
 382              	.LFB150:
 255:../asf/sam/drivers/matrix/matrix.c **** 
 256:../asf/sam/drivers/matrix/matrix.c **** #if !SAM4E && !SAM4C && !SAM4CP && !SAM4CM && \
 257:../asf/sam/drivers/matrix/matrix.c **** 	 !SAMV71 && !SAMV70 && !SAMS70 && !SAME70
 258:../asf/sam/drivers/matrix/matrix.c **** /**
 259:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set slave arbitration type of the specified slave.
 260:../asf/sam/drivers/matrix/matrix.c ****  *
 261:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 262:../asf/sam/drivers/matrix/matrix.c ****  * \param type Arbitration type.
 263:../asf/sam/drivers/matrix/matrix.c ****  */
 264:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_slave_arbitration_type(uint32_t ul_id, arbitration_type_t type)
 265:../asf/sam/drivers/matrix/matrix.c **** {
 266:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 267:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 268:../asf/sam/drivers/matrix/matrix.c **** 
 269:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->MATRIX_SCFG[ul_id] & (~MATRIX_SCFG_ARBT_Msk);
 270:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_SCFG[ul_id] = ul_reg | (uint32_t)type;
 271:../asf/sam/drivers/matrix/matrix.c **** }
 272:../asf/sam/drivers/matrix/matrix.c **** 
 273:../asf/sam/drivers/matrix/matrix.c **** /**
 274:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get slave arbitration type of the specified slave.
 275:../asf/sam/drivers/matrix/matrix.c ****  *
 276:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 277:../asf/sam/drivers/matrix/matrix.c ****  *
 278:../asf/sam/drivers/matrix/matrix.c ****  * \return Arbitration type.
 279:../asf/sam/drivers/matrix/matrix.c ****  */
 280:../asf/sam/drivers/matrix/matrix.c **** arbitration_type_t matrix_get_slave_arbitration_type(uint32_t ul_id)
 281:../asf/sam/drivers/matrix/matrix.c **** {
 282:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 283:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 284:../asf/sam/drivers/matrix/matrix.c **** 
 285:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->MATRIX_SCFG[ul_id] & (MATRIX_SCFG_ARBT_Msk);
 286:../asf/sam/drivers/matrix/matrix.c **** 	return (arbitration_type_t)ul_reg;
 287:../asf/sam/drivers/matrix/matrix.c **** }
 288:../asf/sam/drivers/matrix/matrix.c **** 
 289:../asf/sam/drivers/matrix/matrix.c **** #endif
 290:../asf/sam/drivers/matrix/matrix.c **** 
 291:../asf/sam/drivers/matrix/matrix.c **** /**
 292:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set priority for the specified slave access.
 293:../asf/sam/drivers/matrix/matrix.c ****  *
 294:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 295:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_prio Bitmask OR of priorities of master x.
ARM GAS  /tmp/cc3LTPp7.s 			page 13


 296:../asf/sam/drivers/matrix/matrix.c ****  */
 297:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_slave_priority(uint32_t ul_id, uint32_t ul_prio)
 298:../asf/sam/drivers/matrix/matrix.c **** {
 383              		.loc 1 298 0
 384              		.cfi_startproc
 385              		@ args = 0, pretend = 0, frame = 0
 386              		@ frame_needed = 0, uses_anonymous_args = 0
 387              		@ link register save eliminated.
 388              	.LVL25:
 299:../asf/sam/drivers/matrix/matrix.c **** #if (SAMV71 || SAMV70|| SAME70)
 300:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 301:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_PR[ul_id].MATRIX_PRAS = ul_prio;
 389              		.loc 1 301 0
 390 0000 1030     		adds	r0, r0, #16
 391              	.LVL26:
 392 0002 024B     		ldr	r3, .L34
 393 0004 43F83010 		str	r1, [r3, r0, lsl #3]
 394 0008 7047     		bx	lr
 395              	.L35:
 396 000a 00BF     		.align	2
 397              	.L34:
 398 000c 00800840 		.word	1074298880
 399              		.cfi_endproc
 400              	.LFE150:
 401              		.size	matrix_set_slave_priority, .-matrix_set_slave_priority
 402              		.section	.text.matrix_get_slave_priority,"ax",%progbits
 403              		.align	1
 404              		.p2align 2,,3
 405              		.global	matrix_get_slave_priority
 406              		.syntax unified
 407              		.thumb
 408              		.thumb_func
 409              		.fpu fpv5-d16
 410              		.type	matrix_get_slave_priority, %function
 411              	matrix_get_slave_priority:
 412              	.LFB151:
 302:../asf/sam/drivers/matrix/matrix.c **** #else
 303:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 304:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t *p_PRAS;
 305:../asf/sam/drivers/matrix/matrix.c **** 	uint32_t ul_dlt;
 306:../asf/sam/drivers/matrix/matrix.c **** 
 307:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = (uint32_t)&(p_matrix->MATRIX_PRAS1);
 308:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = ul_dlt - (uint32_t)&(p_matrix->MATRIX_PRAS0);
 309:../asf/sam/drivers/matrix/matrix.c **** 
 310:../asf/sam/drivers/matrix/matrix.c **** 	p_PRAS = (volatile uint32_t *)((uint32_t)&(p_matrix->MATRIX_PRAS0) +
 311:../asf/sam/drivers/matrix/matrix.c **** 			ul_id * ul_dlt);
 312:../asf/sam/drivers/matrix/matrix.c **** 
 313:../asf/sam/drivers/matrix/matrix.c **** 	*p_PRAS = ul_prio;
 314:../asf/sam/drivers/matrix/matrix.c **** #endif
 315:../asf/sam/drivers/matrix/matrix.c **** }
 316:../asf/sam/drivers/matrix/matrix.c **** 
 317:../asf/sam/drivers/matrix/matrix.c **** /**
 318:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get priority for the specified slave access.
 319:../asf/sam/drivers/matrix/matrix.c ****  *
 320:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 321:../asf/sam/drivers/matrix/matrix.c ****  *
 322:../asf/sam/drivers/matrix/matrix.c ****  * \return Bitmask OR of priorities of master x.
ARM GAS  /tmp/cc3LTPp7.s 			page 14


 323:../asf/sam/drivers/matrix/matrix.c ****  */
 324:../asf/sam/drivers/matrix/matrix.c **** uint32_t matrix_get_slave_priority(uint32_t ul_id)
 325:../asf/sam/drivers/matrix/matrix.c **** {
 413              		.loc 1 325 0
 414              		.cfi_startproc
 415              		@ args = 0, pretend = 0, frame = 0
 416              		@ frame_needed = 0, uses_anonymous_args = 0
 417              		@ link register save eliminated.
 418              	.LVL27:
 326:../asf/sam/drivers/matrix/matrix.c **** #if (SAMV71 || SAMV70|| SAME70)
 327:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 328:../asf/sam/drivers/matrix/matrix.c **** 	return p_matrix->MATRIX_PR[ul_id].MATRIX_PRAS;
 419              		.loc 1 328 0
 420 0000 024B     		ldr	r3, .L37
 421 0002 1030     		adds	r0, r0, #16
 422              	.LVL28:
 423 0004 53F83000 		ldr	r0, [r3, r0, lsl #3]
 424              	.LVL29:
 329:../asf/sam/drivers/matrix/matrix.c **** #else
 330:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 331:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t *p_PRAS;
 332:../asf/sam/drivers/matrix/matrix.c **** 	uint32_t ul_dlt;
 333:../asf/sam/drivers/matrix/matrix.c **** 
 334:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = (uint32_t)&(p_matrix->MATRIX_PRAS1);
 335:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = ul_dlt - (uint32_t)&(p_matrix->MATRIX_PRAS0);
 336:../asf/sam/drivers/matrix/matrix.c **** 
 337:../asf/sam/drivers/matrix/matrix.c **** 	p_PRAS = (volatile uint32_t *)((uint32_t)&(p_matrix->MATRIX_PRAS0) +
 338:../asf/sam/drivers/matrix/matrix.c **** 			ul_id * ul_dlt);
 339:../asf/sam/drivers/matrix/matrix.c **** 
 340:../asf/sam/drivers/matrix/matrix.c **** 	return (*p_PRAS);
 341:../asf/sam/drivers/matrix/matrix.c **** #endif
 342:../asf/sam/drivers/matrix/matrix.c **** }
 425              		.loc 1 342 0
 426 0008 7047     		bx	lr
 427              	.L38:
 428 000a 00BF     		.align	2
 429              	.L37:
 430 000c 00800840 		.word	1074298880
 431              		.cfi_endproc
 432              	.LFE151:
 433              		.size	matrix_get_slave_priority, .-matrix_get_slave_priority
 434              		.section	.text.matrix_set_slave_priority_b,"ax",%progbits
 435              		.align	1
 436              		.p2align 2,,3
 437              		.global	matrix_set_slave_priority_b
 438              		.syntax unified
 439              		.thumb
 440              		.thumb_func
 441              		.fpu fpv5-d16
 442              		.type	matrix_set_slave_priority_b, %function
 443              	matrix_set_slave_priority_b:
 444              	.LFB152:
 343:../asf/sam/drivers/matrix/matrix.c **** 
 344:../asf/sam/drivers/matrix/matrix.c **** #if (SAMV71 || SAMV70|| SAME70 || SAMS70)
 345:../asf/sam/drivers/matrix/matrix.c **** /**
 346:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set priority for the specified slave access.
 347:../asf/sam/drivers/matrix/matrix.c ****  *
ARM GAS  /tmp/cc3LTPp7.s 			page 15


 348:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
 349:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_prio_b Bitmask OR of priorities of master x.
 350:../asf/sam/drivers/matrix/matrix.c ****  */
 351:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_slave_priority_b(uint32_t ul_id, uint32_t ul_prio_b)
 352:../asf/sam/drivers/matrix/matrix.c **** {
 445              		.loc 1 352 0
 446              		.cfi_startproc
 447              		@ args = 0, pretend = 0, frame = 0
 448              		@ frame_needed = 0, uses_anonymous_args = 0
 449              		@ link register save eliminated.
 450              	.LVL30:
 353:../asf/sam/drivers/matrix/matrix.c **** #if (SAMV71 || SAMV70|| SAME70)
 354:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 355:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_PR[ul_id].MATRIX_PRBS = ul_prio_b;
 451              		.loc 1 355 0
 452 0000 C000     		lsls	r0, r0, #3
 453              	.LVL31:
 454 0002 014B     		ldr	r3, .L40
 455 0004 1950     		str	r1, [r3, r0]
 456 0006 7047     		bx	lr
 457              	.L41:
 458              		.align	2
 459              	.L40:
 460 0008 84800840 		.word	1074299012
 461              		.cfi_endproc
 462              	.LFE152:
 463              		.size	matrix_set_slave_priority_b, .-matrix_set_slave_priority_b
 464              		.section	.text.matrix_get_slave_priority_b,"ax",%progbits
 465              		.align	1
 466              		.p2align 2,,3
 467              		.global	matrix_get_slave_priority_b
 468              		.syntax unified
 469              		.thumb
 470              		.thumb_func
 471              		.fpu fpv5-d16
 472              		.type	matrix_get_slave_priority_b, %function
 473              	matrix_get_slave_priority_b:
 474              	.LFB153:
 356:../asf/sam/drivers/matrix/matrix.c **** #else
 357:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 358:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t *p_PRAS;
 359:../asf/sam/drivers/matrix/matrix.c **** 	uint32_t ul_dlt;
 360:../asf/sam/drivers/matrix/matrix.c **** 
 361:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = (uint32_t)&(p_matrix->MATRIX_PRBS1);
 362:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = ul_dlt - (uint32_t)&(p_matrix->MATRIX_PRBS0);
 363:../asf/sam/drivers/matrix/matrix.c **** 
 364:../asf/sam/drivers/matrix/matrix.c **** 	p_PRAS = (volatile uint32_t *)((uint32_t)&(p_matrix->MATRIX_PRBS0) +
 365:../asf/sam/drivers/matrix/matrix.c **** 			ul_id * ul_dlt);
 366:../asf/sam/drivers/matrix/matrix.c **** 
 367:../asf/sam/drivers/matrix/matrix.c **** 	*p_PRAS = ul_prio;
 368:../asf/sam/drivers/matrix/matrix.c **** #endif
 369:../asf/sam/drivers/matrix/matrix.c **** }
 370:../asf/sam/drivers/matrix/matrix.c **** 
 371:../asf/sam/drivers/matrix/matrix.c **** /**
 372:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get priority for the specified slave access.
 373:../asf/sam/drivers/matrix/matrix.c ****  *
 374:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_id Slave index.
ARM GAS  /tmp/cc3LTPp7.s 			page 16


 375:../asf/sam/drivers/matrix/matrix.c ****  *
 376:../asf/sam/drivers/matrix/matrix.c ****  * \return Bitmask OR of priorities of master x.
 377:../asf/sam/drivers/matrix/matrix.c ****  */
 378:../asf/sam/drivers/matrix/matrix.c **** uint32_t matrix_get_slave_priority_b(uint32_t ul_id)
 379:../asf/sam/drivers/matrix/matrix.c **** {
 475              		.loc 1 379 0
 476              		.cfi_startproc
 477              		@ args = 0, pretend = 0, frame = 0
 478              		@ frame_needed = 0, uses_anonymous_args = 0
 479              		@ link register save eliminated.
 480              	.LVL32:
 380:../asf/sam/drivers/matrix/matrix.c **** #if (SAMV71 || SAMV70|| SAME70)
 381:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 382:../asf/sam/drivers/matrix/matrix.c **** 	return p_matrix->MATRIX_PR[ul_id].MATRIX_PRBS;
 481              		.loc 1 382 0
 482 0000 014B     		ldr	r3, .L43
 483 0002 C000     		lsls	r0, r0, #3
 484              	.LVL33:
 485 0004 1858     		ldr	r0, [r3, r0]
 383:../asf/sam/drivers/matrix/matrix.c **** #else
 384:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 385:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t *p_PRAS;
 386:../asf/sam/drivers/matrix/matrix.c **** 	uint32_t ul_dlt;
 387:../asf/sam/drivers/matrix/matrix.c **** 
 388:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = (uint32_t)&(p_matrix->MATRIX_PRBS1);
 389:../asf/sam/drivers/matrix/matrix.c **** 	ul_dlt = ul_dlt - (uint32_t)&(p_matrix->MATRIX_PRBS0);
 390:../asf/sam/drivers/matrix/matrix.c **** 
 391:../asf/sam/drivers/matrix/matrix.c **** 	p_PRAS = (volatile uint32_t *)((uint32_t)&(p_matrix->MATRIX_PRBS0) +
 392:../asf/sam/drivers/matrix/matrix.c **** 			ul_id * ul_dlt);
 393:../asf/sam/drivers/matrix/matrix.c **** 
 394:../asf/sam/drivers/matrix/matrix.c **** 	return (*p_PRAS);
 395:../asf/sam/drivers/matrix/matrix.c **** #endif
 396:../asf/sam/drivers/matrix/matrix.c **** }
 486              		.loc 1 396 0
 487 0006 7047     		bx	lr
 488              	.L44:
 489              		.align	2
 490              	.L43:
 491 0008 84800840 		.word	1074299012
 492              		.cfi_endproc
 493              	.LFE153:
 494              		.size	matrix_get_slave_priority_b, .-matrix_get_slave_priority_b
 495              		.section	.text.matrix_set_master_remap,"ax",%progbits
 496              		.align	1
 497              		.p2align 2,,3
 498              		.global	matrix_set_master_remap
 499              		.syntax unified
 500              		.thumb
 501              		.thumb_func
 502              		.fpu fpv5-d16
 503              		.type	matrix_set_master_remap, %function
 504              	matrix_set_master_remap:
 505              	.LFB154:
 397:../asf/sam/drivers/matrix/matrix.c **** #endif
 398:../asf/sam/drivers/matrix/matrix.c **** 
 399:../asf/sam/drivers/matrix/matrix.c **** #if (SAM3XA || SAM3U || SAM4E ||\
 400:../asf/sam/drivers/matrix/matrix.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
ARM GAS  /tmp/cc3LTPp7.s 			page 17


 401:../asf/sam/drivers/matrix/matrix.c **** /**
 402:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set bus matrix master remap.
 403:../asf/sam/drivers/matrix/matrix.c ****  *
 404:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_remap Bitmask OR of RCBx: 0 for disable, 1 for enable.
 405:../asf/sam/drivers/matrix/matrix.c ****  */
 406:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_master_remap(uint32_t ul_remap)
 407:../asf/sam/drivers/matrix/matrix.c **** {
 506              		.loc 1 407 0
 507              		.cfi_startproc
 508              		@ args = 0, pretend = 0, frame = 0
 509              		@ frame_needed = 0, uses_anonymous_args = 0
 510              		@ link register save eliminated.
 511              	.LVL34:
 408:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 409:../asf/sam/drivers/matrix/matrix.c **** 
 410:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_MRCR = ul_remap;
 512              		.loc 1 410 0
 513 0000 014B     		ldr	r3, .L46
 514 0002 C3F80001 		str	r0, [r3, #256]
 515 0006 7047     		bx	lr
 516              	.L47:
 517              		.align	2
 518              	.L46:
 519 0008 00800840 		.word	1074298880
 520              		.cfi_endproc
 521              	.LFE154:
 522              		.size	matrix_set_master_remap, .-matrix_set_master_remap
 523              		.section	.text.matrix_get_master_remap,"ax",%progbits
 524              		.align	1
 525              		.p2align 2,,3
 526              		.global	matrix_get_master_remap
 527              		.syntax unified
 528              		.thumb
 529              		.thumb_func
 530              		.fpu fpv5-d16
 531              		.type	matrix_get_master_remap, %function
 532              	matrix_get_master_remap:
 533              	.LFB155:
 411:../asf/sam/drivers/matrix/matrix.c **** }
 412:../asf/sam/drivers/matrix/matrix.c **** 
 413:../asf/sam/drivers/matrix/matrix.c **** /**
 414:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get bus matrix master remap.
 415:../asf/sam/drivers/matrix/matrix.c ****  *
 416:../asf/sam/drivers/matrix/matrix.c ****  * \return Bitmask OR of RCBx: 0 for disable, 1 for enable.
 417:../asf/sam/drivers/matrix/matrix.c ****  */
 418:../asf/sam/drivers/matrix/matrix.c **** uint32_t matrix_get_master_remap(void)
 419:../asf/sam/drivers/matrix/matrix.c **** {
 534              		.loc 1 419 0
 535              		.cfi_startproc
 536              		@ args = 0, pretend = 0, frame = 0
 537              		@ frame_needed = 0, uses_anonymous_args = 0
 538              		@ link register save eliminated.
 539              	.LVL35:
 420:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 421:../asf/sam/drivers/matrix/matrix.c **** 
 422:../asf/sam/drivers/matrix/matrix.c **** 	return (p_matrix->MATRIX_MRCR);
 540              		.loc 1 422 0
ARM GAS  /tmp/cc3LTPp7.s 			page 18


 541 0000 014B     		ldr	r3, .L49
 542 0002 D3F80001 		ldr	r0, [r3, #256]
 423:../asf/sam/drivers/matrix/matrix.c **** }
 543              		.loc 1 423 0
 544 0006 7047     		bx	lr
 545              	.L50:
 546              		.align	2
 547              	.L49:
 548 0008 00800840 		.word	1074298880
 549              		.cfi_endproc
 550              	.LFE155:
 551              		.size	matrix_get_master_remap, .-matrix_get_master_remap
 552              		.section	.text.matrix_set_system_io,"ax",%progbits
 553              		.align	1
 554              		.p2align 2,,3
 555              		.global	matrix_set_system_io
 556              		.syntax unified
 557              		.thumb
 558              		.thumb_func
 559              		.fpu fpv5-d16
 560              		.type	matrix_set_system_io, %function
 561              	matrix_set_system_io:
 562              	.LFB156:
 424:../asf/sam/drivers/matrix/matrix.c **** 
 425:../asf/sam/drivers/matrix/matrix.c **** #endif
 426:../asf/sam/drivers/matrix/matrix.c **** 
 427:../asf/sam/drivers/matrix/matrix.c **** #if (SAM3S || SAM3XA || SAM3N || SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || \
 428:../asf/sam/drivers/matrix/matrix.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
 429:../asf/sam/drivers/matrix/matrix.c **** /**
 430:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set system IO.
 431:../asf/sam/drivers/matrix/matrix.c ****  *
 432:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_io Bitmask OR of SYSIOx.
 433:../asf/sam/drivers/matrix/matrix.c ****  */
 434:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_system_io(uint32_t ul_io)
 435:../asf/sam/drivers/matrix/matrix.c **** {
 563              		.loc 1 435 0
 564              		.cfi_startproc
 565              		@ args = 0, pretend = 0, frame = 0
 566              		@ frame_needed = 0, uses_anonymous_args = 0
 567              		@ link register save eliminated.
 568              	.LVL36:
 436:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 437:../asf/sam/drivers/matrix/matrix.c **** 
 438:../asf/sam/drivers/matrix/matrix.c **** #if (SAM4C || SAM4CP || SAM4CM)
 439:../asf/sam/drivers/matrix/matrix.c **** 
 440:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_SYSIO = ul_io;
 441:../asf/sam/drivers/matrix/matrix.c **** 
 442:../asf/sam/drivers/matrix/matrix.c **** #elif (SAMV71 || SAMV70 || SAMS70 || SAME70)
 443:../asf/sam/drivers/matrix/matrix.c **** 	
 444:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_SYSIO &= 0xFFFF0000;
 569              		.loc 1 444 0
 570 0000 064B     		ldr	r3, .L52
 445:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_SYSIO |= (ul_io & 0xFFFF);
 571              		.loc 1 445 0
 572 0002 80B2     		uxth	r0, r0
 573              	.LVL37:
 444:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_SYSIO |= (ul_io & 0xFFFF);
ARM GAS  /tmp/cc3LTPp7.s 			page 19


 574              		.loc 1 444 0
 575 0004 064A     		ldr	r2, .L52+4
 576 0006 D3F81411 		ldr	r1, [r3, #276]
 577 000a 0A40     		ands	r2, r2, r1
 578 000c C3F81421 		str	r2, [r3, #276]
 579              		.loc 1 445 0
 580 0010 D3F81421 		ldr	r2, [r3, #276]
 581 0014 1043     		orrs	r0, r0, r2
 582 0016 C3F81401 		str	r0, [r3, #276]
 583 001a 7047     		bx	lr
 584              	.L53:
 585              		.align	2
 586              	.L52:
 587 001c 00800840 		.word	1074298880
 588 0020 0000FFFF 		.word	-65536
 589              		.cfi_endproc
 590              	.LFE156:
 591              		.size	matrix_set_system_io, .-matrix_set_system_io
 592              		.section	.text.matrix_get_system_io,"ax",%progbits
 593              		.align	1
 594              		.p2align 2,,3
 595              		.global	matrix_get_system_io
 596              		.syntax unified
 597              		.thumb
 598              		.thumb_func
 599              		.fpu fpv5-d16
 600              		.type	matrix_get_system_io, %function
 601              	matrix_get_system_io:
 602              	.LFB157:
 446:../asf/sam/drivers/matrix/matrix.c **** 
 447:../asf/sam/drivers/matrix/matrix.c **** #else
 448:../asf/sam/drivers/matrix/matrix.c **** 
 449:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_SYSIO = ul_io;
 450:../asf/sam/drivers/matrix/matrix.c **** 
 451:../asf/sam/drivers/matrix/matrix.c **** #endif
 452:../asf/sam/drivers/matrix/matrix.c **** 
 453:../asf/sam/drivers/matrix/matrix.c **** }
 454:../asf/sam/drivers/matrix/matrix.c **** 
 455:../asf/sam/drivers/matrix/matrix.c **** /**
 456:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get system IO.
 457:../asf/sam/drivers/matrix/matrix.c ****  *
 458:../asf/sam/drivers/matrix/matrix.c ****  * \return Bitmask OR of SYSIOx.
 459:../asf/sam/drivers/matrix/matrix.c ****  */
 460:../asf/sam/drivers/matrix/matrix.c **** uint32_t matrix_get_system_io(void)
 461:../asf/sam/drivers/matrix/matrix.c **** {
 603              		.loc 1 461 0
 604              		.cfi_startproc
 605              		@ args = 0, pretend = 0, frame = 0
 606              		@ frame_needed = 0, uses_anonymous_args = 0
 607              		@ link register save eliminated.
 608              	.LVL38:
 462:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 463:../asf/sam/drivers/matrix/matrix.c **** 
 464:../asf/sam/drivers/matrix/matrix.c **** #if (SAM4C || SAM4CP || SAM4CM)
 465:../asf/sam/drivers/matrix/matrix.c **** 
 466:../asf/sam/drivers/matrix/matrix.c **** 	return (p_matrix->MATRIX_SYSIO);
 467:../asf/sam/drivers/matrix/matrix.c **** 
ARM GAS  /tmp/cc3LTPp7.s 			page 20


 468:../asf/sam/drivers/matrix/matrix.c **** #elif (SAMV71 || SAMV70 || SAMS70 || SAME70)
 469:../asf/sam/drivers/matrix/matrix.c **** 
 470:../asf/sam/drivers/matrix/matrix.c **** 	return (p_matrix->CCFG_SYSIO & 0xFFFF);
 609              		.loc 1 470 0
 610 0000 024B     		ldr	r3, .L55
 611 0002 D3F81401 		ldr	r0, [r3, #276]
 471:../asf/sam/drivers/matrix/matrix.c **** 
 472:../asf/sam/drivers/matrix/matrix.c **** #else
 473:../asf/sam/drivers/matrix/matrix.c **** 
 474:../asf/sam/drivers/matrix/matrix.c **** 	return (p_matrix->CCFG_SYSIO);
 475:../asf/sam/drivers/matrix/matrix.c **** 
 476:../asf/sam/drivers/matrix/matrix.c **** #endif
 477:../asf/sam/drivers/matrix/matrix.c **** }
 612              		.loc 1 477 0
 613 0006 80B2     		uxth	r0, r0
 614 0008 7047     		bx	lr
 615              	.L56:
 616 000a 00BF     		.align	2
 617              	.L55:
 618 000c 00800840 		.word	1074298880
 619              		.cfi_endproc
 620              	.LFE157:
 621              		.size	matrix_get_system_io, .-matrix_get_system_io
 622              		.section	.text.matrix_set_nandflash_cs,"ax",%progbits
 623              		.align	1
 624              		.p2align 2,,3
 625              		.global	matrix_set_nandflash_cs
 626              		.syntax unified
 627              		.thumb
 628              		.thumb_func
 629              		.fpu fpv5-d16
 630              		.type	matrix_set_nandflash_cs, %function
 631              	matrix_set_nandflash_cs:
 632              	.LFB158:
 478:../asf/sam/drivers/matrix/matrix.c **** 
 479:../asf/sam/drivers/matrix/matrix.c **** #endif
 480:../asf/sam/drivers/matrix/matrix.c **** 
 481:../asf/sam/drivers/matrix/matrix.c **** #if (SAM3S || SAM4S || SAM4E || SAM4C || SAM4CP || SAM4CM || \
 482:../asf/sam/drivers/matrix/matrix.c **** 	 SAMV71 || SAMV70 || SAMS70 || SAME70)
 483:../asf/sam/drivers/matrix/matrix.c **** /**
 484:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set NAND Flash Chip Select configuration register.
 485:../asf/sam/drivers/matrix/matrix.c ****  *
 486:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_cs Bitmask OR of SMC_NFCSx: 0 if NCSx is not assigned,
 487:../asf/sam/drivers/matrix/matrix.c ****  * 1 if NCSx is assigned.
 488:../asf/sam/drivers/matrix/matrix.c ****  */
 489:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_nandflash_cs(uint32_t ul_cs)
 490:../asf/sam/drivers/matrix/matrix.c **** {
 633              		.loc 1 490 0
 634              		.cfi_startproc
 635              		@ args = 0, pretend = 0, frame = 0
 636              		@ frame_needed = 0, uses_anonymous_args = 0
 637              		@ link register save eliminated.
 638              	.LVL39:
 491:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 492:../asf/sam/drivers/matrix/matrix.c **** 
 493:../asf/sam/drivers/matrix/matrix.c **** 
 494:../asf/sam/drivers/matrix/matrix.c **** #if (SAM4C || SAM4CP || SAM4CM)
ARM GAS  /tmp/cc3LTPp7.s 			page 21


 495:../asf/sam/drivers/matrix/matrix.c **** 
 496:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->MATRIX_SMCNFCS = ul_cs;
 497:../asf/sam/drivers/matrix/matrix.c **** 
 498:../asf/sam/drivers/matrix/matrix.c **** #else
 499:../asf/sam/drivers/matrix/matrix.c **** 
 500:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_SMCNFCS = ul_cs;
 639              		.loc 1 500 0
 640 0000 014B     		ldr	r3, .L58
 641 0002 C3F82401 		str	r0, [r3, #292]
 642 0006 7047     		bx	lr
 643              	.L59:
 644              		.align	2
 645              	.L58:
 646 0008 00800840 		.word	1074298880
 647              		.cfi_endproc
 648              	.LFE158:
 649              		.size	matrix_set_nandflash_cs, .-matrix_set_nandflash_cs
 650              		.section	.text.matrix_get_nandflash_cs,"ax",%progbits
 651              		.align	1
 652              		.p2align 2,,3
 653              		.global	matrix_get_nandflash_cs
 654              		.syntax unified
 655              		.thumb
 656              		.thumb_func
 657              		.fpu fpv5-d16
 658              		.type	matrix_get_nandflash_cs, %function
 659              	matrix_get_nandflash_cs:
 660              	.LFB159:
 501:../asf/sam/drivers/matrix/matrix.c **** 
 502:../asf/sam/drivers/matrix/matrix.c **** #endif
 503:../asf/sam/drivers/matrix/matrix.c **** }
 504:../asf/sam/drivers/matrix/matrix.c **** 
 505:../asf/sam/drivers/matrix/matrix.c **** /**
 506:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get NAND Flash Chip Select configuration register.
 507:../asf/sam/drivers/matrix/matrix.c ****  *
 508:../asf/sam/drivers/matrix/matrix.c ****  * \return Bitmask OR of SMC_NFCSx.
 509:../asf/sam/drivers/matrix/matrix.c ****  */
 510:../asf/sam/drivers/matrix/matrix.c **** uint32_t matrix_get_nandflash_cs(void)
 511:../asf/sam/drivers/matrix/matrix.c **** {
 661              		.loc 1 511 0
 662              		.cfi_startproc
 663              		@ args = 0, pretend = 0, frame = 0
 664              		@ frame_needed = 0, uses_anonymous_args = 0
 665              		@ link register save eliminated.
 666              	.LVL40:
 512:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 513:../asf/sam/drivers/matrix/matrix.c **** 
 514:../asf/sam/drivers/matrix/matrix.c **** #if (SAM4C || SAM4CP || SAM4CM)
 515:../asf/sam/drivers/matrix/matrix.c **** 
 516:../asf/sam/drivers/matrix/matrix.c **** 	return (p_matrix->MATRIX_SMCNFCS);
 517:../asf/sam/drivers/matrix/matrix.c **** 
 518:../asf/sam/drivers/matrix/matrix.c **** #else
 519:../asf/sam/drivers/matrix/matrix.c **** 
 520:../asf/sam/drivers/matrix/matrix.c **** 	return (p_matrix->CCFG_SMCNFCS);
 667              		.loc 1 520 0
 668 0000 014B     		ldr	r3, .L61
 669 0002 D3F82401 		ldr	r0, [r3, #292]
ARM GAS  /tmp/cc3LTPp7.s 			page 22


 521:../asf/sam/drivers/matrix/matrix.c **** 
 522:../asf/sam/drivers/matrix/matrix.c **** #endif
 523:../asf/sam/drivers/matrix/matrix.c **** }
 670              		.loc 1 523 0
 671 0006 7047     		bx	lr
 672              	.L62:
 673              		.align	2
 674              	.L61:
 675 0008 00800840 		.word	1074298880
 676              		.cfi_endproc
 677              	.LFE159:
 678              		.size	matrix_get_nandflash_cs, .-matrix_get_nandflash_cs
 679              		.section	.text.matrix_set_writeprotect,"ax",%progbits
 680              		.align	1
 681              		.p2align 2,,3
 682              		.global	matrix_set_writeprotect
 683              		.syntax unified
 684              		.thumb
 685              		.thumb_func
 686              		.fpu fpv5-d16
 687              		.type	matrix_set_writeprotect, %function
 688              	matrix_set_writeprotect:
 689              	.LFB160:
 524:../asf/sam/drivers/matrix/matrix.c **** 
 525:../asf/sam/drivers/matrix/matrix.c **** #endif
 526:../asf/sam/drivers/matrix/matrix.c **** 
 527:../asf/sam/drivers/matrix/matrix.c **** #if (!SAMG)
 528:../asf/sam/drivers/matrix/matrix.c **** /**
 529:../asf/sam/drivers/matrix/matrix.c ****  * \brief Enable or disable write protect of MATRIX registers.
 530:../asf/sam/drivers/matrix/matrix.c ****  *
 531:../asf/sam/drivers/matrix/matrix.c ****  * \param ul_enable 1 to enable, 0 to disable.
 532:../asf/sam/drivers/matrix/matrix.c ****  */
 533:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_writeprotect(uint32_t ul_enable)
 534:../asf/sam/drivers/matrix/matrix.c **** {
 690              		.loc 1 534 0
 691              		.cfi_startproc
 692              		@ args = 0, pretend = 0, frame = 0
 693              		@ frame_needed = 0, uses_anonymous_args = 0
 694              		@ link register save eliminated.
 695              	.LVL41:
 535:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 536:../asf/sam/drivers/matrix/matrix.c **** 
 537:../asf/sam/drivers/matrix/matrix.c **** 	if (ul_enable) {
 538:../asf/sam/drivers/matrix/matrix.c **** 		p_matrix->MATRIX_WPMR = MATRIX_WPMR_WPKEY_PASSWD | MATRIX_WPMR_WPEN;
 696              		.loc 1 538 0
 697 0000 044B     		ldr	r3, .L68
 537:../asf/sam/drivers/matrix/matrix.c **** 		p_matrix->MATRIX_WPMR = MATRIX_WPMR_WPKEY_PASSWD | MATRIX_WPMR_WPEN;
 698              		.loc 1 537 0
 699 0002 18B9     		cbnz	r0, .L67
 539:../asf/sam/drivers/matrix/matrix.c **** 	} else {
 540:../asf/sam/drivers/matrix/matrix.c **** 		p_matrix->MATRIX_WPMR = MATRIX_WPMR_WPKEY_PASSWD;
 700              		.loc 1 540 0
 701 0004 044A     		ldr	r2, .L68+4
 702 0006 C3F8E421 		str	r2, [r3, #484]
 703 000a 7047     		bx	lr
 704              	.L67:
 538:../asf/sam/drivers/matrix/matrix.c **** 	} else {
ARM GAS  /tmp/cc3LTPp7.s 			page 23


 705              		.loc 1 538 0
 706 000c 034A     		ldr	r2, .L68+8
 707 000e C3F8E421 		str	r2, [r3, #484]
 708 0012 7047     		bx	lr
 709              	.L69:
 710              		.align	2
 711              	.L68:
 712 0014 00800840 		.word	1074298880
 713 0018 0054414D 		.word	1296126976
 714 001c 0154414D 		.word	1296126977
 715              		.cfi_endproc
 716              	.LFE160:
 717              		.size	matrix_set_writeprotect, .-matrix_set_writeprotect
 718              		.section	.text.matrix_get_writeprotect_status,"ax",%progbits
 719              		.align	1
 720              		.p2align 2,,3
 721              		.global	matrix_get_writeprotect_status
 722              		.syntax unified
 723              		.thumb
 724              		.thumb_func
 725              		.fpu fpv5-d16
 726              		.type	matrix_get_writeprotect_status, %function
 727              	matrix_get_writeprotect_status:
 728              	.LFB161:
 541:../asf/sam/drivers/matrix/matrix.c **** 	}
 542:../asf/sam/drivers/matrix/matrix.c **** }
 543:../asf/sam/drivers/matrix/matrix.c **** 
 544:../asf/sam/drivers/matrix/matrix.c **** /**
 545:../asf/sam/drivers/matrix/matrix.c ****  * \brief Get write protect status.
 546:../asf/sam/drivers/matrix/matrix.c ****  *
 547:../asf/sam/drivers/matrix/matrix.c ****  * \return Write protect status.
 548:../asf/sam/drivers/matrix/matrix.c ****  */
 549:../asf/sam/drivers/matrix/matrix.c **** uint32_t matrix_get_writeprotect_status(void)
 550:../asf/sam/drivers/matrix/matrix.c **** {
 729              		.loc 1 550 0
 730              		.cfi_startproc
 731              		@ args = 0, pretend = 0, frame = 0
 732              		@ frame_needed = 0, uses_anonymous_args = 0
 733              		@ link register save eliminated.
 734              	.LVL42:
 551:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 552:../asf/sam/drivers/matrix/matrix.c **** 
 553:../asf/sam/drivers/matrix/matrix.c **** 	return (p_matrix->MATRIX_WPSR);
 735              		.loc 1 553 0
 736 0000 014B     		ldr	r3, .L71
 737 0002 D3F8E801 		ldr	r0, [r3, #488]
 554:../asf/sam/drivers/matrix/matrix.c **** }
 738              		.loc 1 554 0
 739 0006 7047     		bx	lr
 740              	.L72:
 741              		.align	2
 742              	.L71:
 743 0008 00800840 		.word	1074298880
 744              		.cfi_endproc
 745              	.LFE161:
 746              		.size	matrix_get_writeprotect_status, .-matrix_get_writeprotect_status
 747              		.section	.text.matrix_set_can0_addr,"ax",%progbits
ARM GAS  /tmp/cc3LTPp7.s 			page 24


 748              		.align	1
 749              		.p2align 2,,3
 750              		.global	matrix_set_can0_addr
 751              		.syntax unified
 752              		.thumb
 753              		.thumb_func
 754              		.fpu fpv5-d16
 755              		.type	matrix_set_can0_addr, %function
 756              	matrix_set_can0_addr:
 757              	.LFB162:
 555:../asf/sam/drivers/matrix/matrix.c **** #endif
 556:../asf/sam/drivers/matrix/matrix.c **** 
 557:../asf/sam/drivers/matrix/matrix.c **** #if SAMG55
 558:../asf/sam/drivers/matrix/matrix.c **** /**
 559:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set USB device mode.
 560:../asf/sam/drivers/matrix/matrix.c ****  *
 561:../asf/sam/drivers/matrix/matrix.c ****  */
 562:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_usb_device(void)
 563:../asf/sam/drivers/matrix/matrix.c **** {
 564:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 565:../asf/sam/drivers/matrix/matrix.c **** 
 566:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_SYSIO &= ~(CCFG_SYSIO_SYSIO10 | CCFG_SYSIO_SYSIO11);
 567:../asf/sam/drivers/matrix/matrix.c **** 
 568:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_USBMR |= CCFG_USBMR_DEVICE;
 569:../asf/sam/drivers/matrix/matrix.c **** }
 570:../asf/sam/drivers/matrix/matrix.c **** 
 571:../asf/sam/drivers/matrix/matrix.c **** /**
 572:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set USB device mode.
 573:../asf/sam/drivers/matrix/matrix.c ****  *
 574:../asf/sam/drivers/matrix/matrix.c ****  */
 575:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_usb_host(void)
 576:../asf/sam/drivers/matrix/matrix.c **** {
 577:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 578:../asf/sam/drivers/matrix/matrix.c **** 
 579:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_SYSIO &= ~(CCFG_SYSIO_SYSIO10 | CCFG_SYSIO_SYSIO11);
 580:../asf/sam/drivers/matrix/matrix.c **** 
 581:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_USBMR &= ~CCFG_USBMR_DEVICE;
 582:../asf/sam/drivers/matrix/matrix.c **** }
 583:../asf/sam/drivers/matrix/matrix.c **** #endif
 584:../asf/sam/drivers/matrix/matrix.c **** 
 585:../asf/sam/drivers/matrix/matrix.c **** #if (SAMV71 || SAMV70|| SAME70)
 586:../asf/sam/drivers/matrix/matrix.c **** /**
 587:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set CAN0 DMA base address.
 588:../asf/sam/drivers/matrix/matrix.c ****  *
 589:../asf/sam/drivers/matrix/matrix.c ****  * \param base_addr the 16-bit MSB of the CAN0 DMA base address.
 590:../asf/sam/drivers/matrix/matrix.c ****  */
 591:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_can0_addr(uint32_t base_addr)
 592:../asf/sam/drivers/matrix/matrix.c **** {
 758              		.loc 1 592 0
 759              		.cfi_startproc
 760              		@ args = 0, pretend = 0, frame = 0
 761              		@ frame_needed = 0, uses_anonymous_args = 0
 762              		@ link register save eliminated.
 763              	.LVL43:
 593:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 594:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_CAN0 = CCFG_CAN0_CAN0DMABA(base_addr);
 764              		.loc 1 594 0
ARM GAS  /tmp/cc3LTPp7.s 			page 25


 765 0000 0004     		lsls	r0, r0, #16
 766              	.LVL44:
 767 0002 024B     		ldr	r3, .L74
 768 0004 C3F81001 		str	r0, [r3, #272]
 769 0008 7047     		bx	lr
 770              	.L75:
 771 000a 00BF     		.align	2
 772              	.L74:
 773 000c 00800840 		.word	1074298880
 774              		.cfi_endproc
 775              	.LFE162:
 776              		.size	matrix_set_can0_addr, .-matrix_set_can0_addr
 777              		.section	.text.matrix_set_can1_addr,"ax",%progbits
 778              		.align	1
 779              		.p2align 2,,3
 780              		.global	matrix_set_can1_addr
 781              		.syntax unified
 782              		.thumb
 783              		.thumb_func
 784              		.fpu fpv5-d16
 785              		.type	matrix_set_can1_addr, %function
 786              	matrix_set_can1_addr:
 787              	.LFB163:
 595:../asf/sam/drivers/matrix/matrix.c **** }
 596:../asf/sam/drivers/matrix/matrix.c **** 
 597:../asf/sam/drivers/matrix/matrix.c **** /**
 598:../asf/sam/drivers/matrix/matrix.c ****  * \brief Set CAN1 DMA base address.
 599:../asf/sam/drivers/matrix/matrix.c ****  *
 600:../asf/sam/drivers/matrix/matrix.c ****  * \param base_addr the 16-bit MSB of the CAN1 DMA base address.
 601:../asf/sam/drivers/matrix/matrix.c ****  */
 602:../asf/sam/drivers/matrix/matrix.c **** void matrix_set_can1_addr(uint32_t base_addr)
 603:../asf/sam/drivers/matrix/matrix.c **** {
 788              		.loc 1 603 0
 789              		.cfi_startproc
 790              		@ args = 0, pretend = 0, frame = 8
 791              		@ frame_needed = 0, uses_anonymous_args = 0
 792              		@ link register save eliminated.
 793              	.LVL45:
 604:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 605:../asf/sam/drivers/matrix/matrix.c **** 	volatile uint32_t ul_reg;
 606:../asf/sam/drivers/matrix/matrix.c **** 
 607:../asf/sam/drivers/matrix/matrix.c **** 	ul_reg = p_matrix->CCFG_SYSIO & (~CCFG_SYSIO_CAN1DMABA_Msk);
 794              		.loc 1 607 0
 795 0000 064A     		ldr	r2, .L78
 603:../asf/sam/drivers/matrix/matrix.c **** 	Matrix *p_matrix = MATRIX;
 796              		.loc 1 603 0
 797 0002 82B0     		sub	sp, sp, #8
 798              		.cfi_def_cfa_offset 8
 799              		.loc 1 607 0
 800 0004 D2F81431 		ldr	r3, [r2, #276]
 801 0008 9BB2     		uxth	r3, r3
 802 000a 0193     		str	r3, [sp, #4]
 608:../asf/sam/drivers/matrix/matrix.c **** 	p_matrix->CCFG_SYSIO = ul_reg | CCFG_SYSIO_CAN1DMABA(base_addr);
 803              		.loc 1 608 0
 804 000c 019B     		ldr	r3, [sp, #4]
 805 000e 43EA0040 		orr	r0, r3, r0, lsl #16
 806              	.LVL46:
ARM GAS  /tmp/cc3LTPp7.s 			page 26


 807 0012 C2F81401 		str	r0, [r2, #276]
 609:../asf/sam/drivers/matrix/matrix.c **** }
 808              		.loc 1 609 0
 809 0016 02B0     		add	sp, sp, #8
 810              		.cfi_def_cfa_offset 0
 811              		@ sp needed
 812 0018 7047     		bx	lr
 813              	.L79:
 814 001a 00BF     		.align	2
 815              	.L78:
 816 001c 00800840 		.word	1074298880
 817              		.cfi_endproc
 818              	.LFE163:
 819              		.size	matrix_set_can1_addr, .-matrix_set_can1_addr
 820              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 821              		.align	2
 822              		.type	cpu_irq_critical_section_counter, %object
 823              		.size	cpu_irq_critical_section_counter, 4
 824              	cpu_irq_critical_section_counter:
 825 0000 00000000 		.space	4
 826              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 827              		.type	cpu_irq_prev_interrupt_state, %object
 828              		.size	cpu_irq_prev_interrupt_state, 1
 829              	cpu_irq_prev_interrupt_state:
 830 0000 00       		.space	1
 831              		.text
 832              	.Letext0:
 833              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 834              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 835              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 836              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 837              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/matr
 838              		.file 7 "/usr/include/newlib/sys/lock.h"
 839              		.file 8 "/usr/include/newlib/sys/_types.h"
 840              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 841              		.file 10 "/usr/include/newlib/sys/reent.h"
 842              		.file 11 "/usr/include/newlib/stdlib.h"
 843              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 844              		.file 13 "../asf/sam/drivers/matrix/matrix.h"
 845              		.section	.debug_info,"",%progbits
 846              	.Ldebug_info0:
 847 0000 81110000 		.4byte	0x1181
 848 0004 0400     		.2byte	0x4
 849 0006 00000000 		.4byte	.Ldebug_abbrev0
 850 000a 04       		.byte	0x4
 851 000b 01       		.uleb128 0x1
 852 000c AD050000 		.4byte	.LASF212
 853 0010 0C       		.byte	0xc
 854 0011 48050000 		.4byte	.LASF213
 855 0015 BC0A0000 		.4byte	.LASF214
 856 0019 00000000 		.4byte	.Ldebug_ranges0+0
 857 001d 00000000 		.4byte	0
 858 0021 00000000 		.4byte	.Ldebug_line0
 859 0025 02       		.uleb128 0x2
 860 0026 04       		.byte	0x4
 861 0027 05       		.byte	0x5
 862 0028 696E7400 		.ascii	"int\000"
ARM GAS  /tmp/cc3LTPp7.s 			page 27


 863 002c 03       		.uleb128 0x3
 864 002d 04       		.byte	0x4
 865 002e 07       		.byte	0x7
 866 002f AC080000 		.4byte	.LASF0
 867 0033 03       		.uleb128 0x3
 868 0034 01       		.byte	0x1
 869 0035 06       		.byte	0x6
 870 0036 40010000 		.4byte	.LASF1
 871 003a 03       		.uleb128 0x3
 872 003b 01       		.byte	0x1
 873 003c 08       		.byte	0x8
 874 003d 1E000000 		.4byte	.LASF2
 875 0041 03       		.uleb128 0x3
 876 0042 02       		.byte	0x2
 877 0043 05       		.byte	0x5
 878 0044 0C000000 		.4byte	.LASF3
 879 0048 03       		.uleb128 0x3
 880 0049 02       		.byte	0x2
 881 004a 07       		.byte	0x7
 882 004b 00040000 		.4byte	.LASF4
 883 004f 04       		.uleb128 0x4
 884 0050 EC080000 		.4byte	.LASF6
 885 0054 02       		.byte	0x2
 886 0055 3F       		.byte	0x3f
 887 0056 5A000000 		.4byte	0x5a
 888 005a 03       		.uleb128 0x3
 889 005b 04       		.byte	0x4
 890 005c 05       		.byte	0x5
 891 005d C5010000 		.4byte	.LASF5
 892 0061 04       		.uleb128 0x4
 893 0062 DD020000 		.4byte	.LASF7
 894 0066 02       		.byte	0x2
 895 0067 41       		.byte	0x41
 896 0068 6C000000 		.4byte	0x6c
 897 006c 03       		.uleb128 0x3
 898 006d 04       		.byte	0x4
 899 006e 07       		.byte	0x7
 900 006f 9B030000 		.4byte	.LASF8
 901 0073 03       		.uleb128 0x3
 902 0074 08       		.byte	0x8
 903 0075 05       		.byte	0x5
 904 0076 2D020000 		.4byte	.LASF9
 905 007a 03       		.uleb128 0x3
 906 007b 08       		.byte	0x8
 907 007c 07       		.byte	0x7
 908 007d CD000000 		.4byte	.LASF10
 909 0081 04       		.uleb128 0x4
 910 0082 1F070000 		.4byte	.LASF11
 911 0086 03       		.byte	0x3
 912 0087 2C       		.byte	0x2c
 913 0088 4F000000 		.4byte	0x4f
 914 008c 05       		.uleb128 0x5
 915 008d 81000000 		.4byte	0x81
 916 0091 04       		.uleb128 0x4
 917 0092 1A080000 		.4byte	.LASF12
 918 0096 03       		.byte	0x3
 919 0097 30       		.byte	0x30
ARM GAS  /tmp/cc3LTPp7.s 			page 28


 920 0098 61000000 		.4byte	0x61
 921 009c 05       		.uleb128 0x5
 922 009d 91000000 		.4byte	0x91
 923 00a1 06       		.uleb128 0x6
 924 00a2 9C000000 		.4byte	0x9c
 925 00a6 07       		.uleb128 0x7
 926 00a7 04       		.byte	0x4
 927 00a8 03       		.uleb128 0x3
 928 00a9 04       		.byte	0x4
 929 00aa 07       		.byte	0x7
 930 00ab 84050000 		.4byte	.LASF13
 931 00af 08       		.uleb128 0x8
 932 00b0 A1000000 		.4byte	0xa1
 933 00b4 BF000000 		.4byte	0xbf
 934 00b8 09       		.uleb128 0x9
 935 00b9 A8000000 		.4byte	0xa8
 936 00bd 03       		.byte	0x3
 937 00be 00       		.byte	0
 938 00bf 06       		.uleb128 0x6
 939 00c0 AF000000 		.4byte	0xaf
 940 00c4 05       		.uleb128 0x5
 941 00c5 BF000000 		.4byte	0xbf
 942 00c9 0A       		.uleb128 0xa
 943 00ca 38070000 		.4byte	.LASF14
 944 00ce 04       		.byte	0x4
 945 00cf 6508     		.2byte	0x865
 946 00d1 8C000000 		.4byte	0x8c
 947 00d5 0B       		.uleb128 0xb
 948 00d6 48030000 		.4byte	.LASF15
 949 00da 05       		.byte	0x5
 950 00db 3A       		.byte	0x3a
 951 00dc 91000000 		.4byte	0x91
 952 00e0 08       		.uleb128 0x8
 953 00e1 A1000000 		.4byte	0xa1
 954 00e5 F0000000 		.4byte	0xf0
 955 00e9 09       		.uleb128 0x9
 956 00ea A8000000 		.4byte	0xa8
 957 00ee 06       		.byte	0x6
 958 00ef 00       		.byte	0
 959 00f0 06       		.uleb128 0x6
 960 00f1 E0000000 		.4byte	0xe0
 961 00f5 05       		.uleb128 0x5
 962 00f6 F0000000 		.4byte	0xf0
 963 00fa 08       		.uleb128 0x8
 964 00fb A1000000 		.4byte	0xa1
 965 00ff 0A010000 		.4byte	0x10a
 966 0103 09       		.uleb128 0x9
 967 0104 A8000000 		.4byte	0xa8
 968 0108 00       		.byte	0
 969 0109 00       		.byte	0
 970 010a 06       		.uleb128 0x6
 971 010b FA000000 		.4byte	0xfa
 972 010f 05       		.uleb128 0x5
 973 0110 0A010000 		.4byte	0x10a
 974 0114 08       		.uleb128 0x8
 975 0115 A1000000 		.4byte	0xa1
 976 0119 24010000 		.4byte	0x124
ARM GAS  /tmp/cc3LTPp7.s 			page 29


 977 011d 09       		.uleb128 0x9
 978 011e A8000000 		.4byte	0xa8
 979 0122 02       		.byte	0x2
 980 0123 00       		.byte	0
 981 0124 06       		.uleb128 0x6
 982 0125 14010000 		.4byte	0x114
 983 0129 05       		.uleb128 0x5
 984 012a 24010000 		.4byte	0x124
 985 012e 05       		.uleb128 0x5
 986 012f 24010000 		.4byte	0x124
 987 0133 08       		.uleb128 0x8
 988 0134 A1000000 		.4byte	0xa1
 989 0138 43010000 		.4byte	0x143
 990 013c 09       		.uleb128 0x9
 991 013d A8000000 		.4byte	0xa8
 992 0141 0D       		.byte	0xd
 993 0142 00       		.byte	0
 994 0143 06       		.uleb128 0x6
 995 0144 33010000 		.4byte	0x133
 996 0148 05       		.uleb128 0x5
 997 0149 43010000 		.4byte	0x143
 998 014d 0C       		.uleb128 0xc
 999 014e 08       		.byte	0x8
 1000 014f 06       		.byte	0x6
 1001 0150 38       		.byte	0x38
 1002 0151 6E010000 		.4byte	0x16e
 1003 0155 0D       		.uleb128 0xd
 1004 0156 8E0B0000 		.4byte	.LASF16
 1005 015a 06       		.byte	0x6
 1006 015b 39       		.byte	0x39
 1007 015c 9C000000 		.4byte	0x9c
 1008 0160 00       		.byte	0
 1009 0161 0D       		.uleb128 0xd
 1010 0162 07010000 		.4byte	.LASF17
 1011 0166 06       		.byte	0x6
 1012 0167 3A       		.byte	0x3a
 1013 0168 9C000000 		.4byte	0x9c
 1014 016c 04       		.byte	0x4
 1015 016d 00       		.byte	0
 1016 016e 04       		.uleb128 0x4
 1017 016f 3D040000 		.4byte	.LASF18
 1018 0173 06       		.byte	0x6
 1019 0174 3B       		.byte	0x3b
 1020 0175 4D010000 		.4byte	0x14d
 1021 0179 0E       		.uleb128 0xe
 1022 017a EC01     		.2byte	0x1ec
 1023 017c 06       		.byte	0x6
 1024 017d 3E       		.byte	0x3e
 1025 017e C4020000 		.4byte	0x2c4
 1026 0182 0D       		.uleb128 0xd
 1027 0183 29080000 		.4byte	.LASF19
 1028 0187 06       		.byte	0x6
 1029 0188 3F       		.byte	0x3f
 1030 0189 9C000000 		.4byte	0x9c
 1031 018d 00       		.byte	0
 1032 018e 0D       		.uleb128 0xd
 1033 018f 36080000 		.4byte	.LASF20
ARM GAS  /tmp/cc3LTPp7.s 			page 30


 1034 0193 06       		.byte	0x6
 1035 0194 40       		.byte	0x40
 1036 0195 9C000000 		.4byte	0x9c
 1037 0199 04       		.byte	0x4
 1038 019a 0D       		.uleb128 0xd
 1039 019b 43080000 		.4byte	.LASF21
 1040 019f 06       		.byte	0x6
 1041 01a0 41       		.byte	0x41
 1042 01a1 9C000000 		.4byte	0x9c
 1043 01a5 08       		.byte	0x8
 1044 01a6 0D       		.uleb128 0xd
 1045 01a7 50080000 		.4byte	.LASF22
 1046 01ab 06       		.byte	0x6
 1047 01ac 42       		.byte	0x42
 1048 01ad 9C000000 		.4byte	0x9c
 1049 01b1 0C       		.byte	0xc
 1050 01b2 0D       		.uleb128 0xd
 1051 01b3 5D080000 		.4byte	.LASF23
 1052 01b7 06       		.byte	0x6
 1053 01b8 43       		.byte	0x43
 1054 01b9 9C000000 		.4byte	0x9c
 1055 01bd 10       		.byte	0x10
 1056 01be 0D       		.uleb128 0xd
 1057 01bf 6A080000 		.4byte	.LASF24
 1058 01c3 06       		.byte	0x6
 1059 01c4 44       		.byte	0x44
 1060 01c5 9C000000 		.4byte	0x9c
 1061 01c9 14       		.byte	0x14
 1062 01ca 0D       		.uleb128 0xd
 1063 01cb 77080000 		.4byte	.LASF25
 1064 01cf 06       		.byte	0x6
 1065 01d0 45       		.byte	0x45
 1066 01d1 9C000000 		.4byte	0x9c
 1067 01d5 18       		.byte	0x18
 1068 01d6 0D       		.uleb128 0xd
 1069 01d7 71010000 		.4byte	.LASF26
 1070 01db 06       		.byte	0x6
 1071 01dc 46       		.byte	0x46
 1072 01dd 0F010000 		.4byte	0x10f
 1073 01e1 1C       		.byte	0x1c
 1074 01e2 0D       		.uleb128 0xd
 1075 01e3 84080000 		.4byte	.LASF27
 1076 01e7 06       		.byte	0x6
 1077 01e8 47       		.byte	0x47
 1078 01e9 9C000000 		.4byte	0x9c
 1079 01ed 20       		.byte	0x20
 1080 01ee 0D       		.uleb128 0xd
 1081 01ef 9E010000 		.4byte	.LASF28
 1082 01f3 06       		.byte	0x6
 1083 01f4 48       		.byte	0x48
 1084 01f5 9C000000 		.4byte	0x9c
 1085 01f9 24       		.byte	0x24
 1086 01fa 0D       		.uleb128 0xd
 1087 01fb E2010000 		.4byte	.LASF29
 1088 01ff 06       		.byte	0x6
 1089 0200 49       		.byte	0x49
 1090 0201 9C000000 		.4byte	0x9c
ARM GAS  /tmp/cc3LTPp7.s 			page 31


 1091 0205 28       		.byte	0x28
 1092 0206 0D       		.uleb128 0xd
 1093 0207 C2080000 		.4byte	.LASF30
 1094 020b 06       		.byte	0x6
 1095 020c 4A       		.byte	0x4a
 1096 020d 9C000000 		.4byte	0x9c
 1097 0211 2C       		.byte	0x2c
 1098 0212 0D       		.uleb128 0xd
 1099 0213 7B010000 		.4byte	.LASF31
 1100 0217 06       		.byte	0x6
 1101 0218 4B       		.byte	0x4b
 1102 0219 C4000000 		.4byte	0xc4
 1103 021d 30       		.byte	0x30
 1104 021e 0D       		.uleb128 0xd
 1105 021f 00000000 		.4byte	.LASF32
 1106 0223 06       		.byte	0x6
 1107 0224 4C       		.byte	0x4c
 1108 0225 D4020000 		.4byte	0x2d4
 1109 0229 40       		.byte	0x40
 1110 022a 0D       		.uleb128 0xd
 1111 022b D4030000 		.4byte	.LASF33
 1112 022f 06       		.byte	0x6
 1113 0230 4D       		.byte	0x4d
 1114 0231 F5000000 		.4byte	0xf5
 1115 0235 64       		.byte	0x64
 1116 0236 0D       		.uleb128 0xd
 1117 0237 90040000 		.4byte	.LASF34
 1118 023b 06       		.byte	0x6
 1119 023c 4E       		.byte	0x4e
 1120 023d D9020000 		.4byte	0x2d9
 1121 0241 80       		.byte	0x80
 1122 0242 0D       		.uleb128 0xd
 1123 0243 8F010000 		.4byte	.LASF35
 1124 0247 06       		.byte	0x6
 1125 0248 4F       		.byte	0x4f
 1126 0249 48010000 		.4byte	0x148
 1127 024d C8       		.byte	0xc8
 1128 024e 0F       		.uleb128 0xf
 1129 024f 9A060000 		.4byte	.LASF36
 1130 0253 06       		.byte	0x6
 1131 0254 50       		.byte	0x50
 1132 0255 9C000000 		.4byte	0x9c
 1133 0259 0001     		.2byte	0x100
 1134 025b 0F       		.uleb128 0xf
 1135 025c EC030000 		.4byte	.LASF37
 1136 0260 06       		.byte	0x6
 1137 0261 51       		.byte	0x51
 1138 0262 29010000 		.4byte	0x129
 1139 0266 0401     		.2byte	0x104
 1140 0268 0F       		.uleb128 0xf
 1141 0269 67090000 		.4byte	.LASF38
 1142 026d 06       		.byte	0x6
 1143 026e 52       		.byte	0x52
 1144 026f 9C000000 		.4byte	0x9c
 1145 0273 1001     		.2byte	0x110
 1146 0275 0F       		.uleb128 0xf
 1147 0276 A50B0000 		.4byte	.LASF39
ARM GAS  /tmp/cc3LTPp7.s 			page 32


 1148 027a 06       		.byte	0x6
 1149 027b 53       		.byte	0x53
 1150 027c 9C000000 		.4byte	0x9c
 1151 0280 1401     		.2byte	0x114
 1152 0282 0F       		.uleb128 0xf
 1153 0283 F6030000 		.4byte	.LASF40
 1154 0287 06       		.byte	0x6
 1155 0288 54       		.byte	0x54
 1156 0289 2E010000 		.4byte	0x12e
 1157 028d 1801     		.2byte	0x118
 1158 028f 0F       		.uleb128 0xf
 1159 0290 77040000 		.4byte	.LASF41
 1160 0294 06       		.byte	0x6
 1161 0295 55       		.byte	0x55
 1162 0296 9C000000 		.4byte	0x9c
 1163 029a 2401     		.2byte	0x124
 1164 029c 0F       		.uleb128 0xf
 1165 029d AB010000 		.4byte	.LASF42
 1166 02a1 06       		.byte	0x6
 1167 02a2 56       		.byte	0x56
 1168 02a3 FE020000 		.4byte	0x2fe
 1169 02a7 2801     		.2byte	0x128
 1170 02a9 0F       		.uleb128 0xf
 1171 02aa 59010000 		.4byte	.LASF43
 1172 02ae 06       		.byte	0x6
 1173 02af 57       		.byte	0x57
 1174 02b0 9C000000 		.4byte	0x9c
 1175 02b4 E401     		.2byte	0x1e4
 1176 02b6 0F       		.uleb128 0xf
 1177 02b7 240B0000 		.4byte	.LASF44
 1178 02bb 06       		.byte	0x6
 1179 02bc 58       		.byte	0x58
 1180 02bd A1000000 		.4byte	0xa1
 1181 02c1 E801     		.2byte	0x1e8
 1182 02c3 00       		.byte	0
 1183 02c4 08       		.uleb128 0x8
 1184 02c5 9C000000 		.4byte	0x9c
 1185 02c9 D4020000 		.4byte	0x2d4
 1186 02cd 09       		.uleb128 0x9
 1187 02ce A8000000 		.4byte	0xa8
 1188 02d2 08       		.byte	0x8
 1189 02d3 00       		.byte	0
 1190 02d4 05       		.uleb128 0x5
 1191 02d5 C4020000 		.4byte	0x2c4
 1192 02d9 08       		.uleb128 0x8
 1193 02da 6E010000 		.4byte	0x16e
 1194 02de E9020000 		.4byte	0x2e9
 1195 02e2 09       		.uleb128 0x9
 1196 02e3 A8000000 		.4byte	0xa8
 1197 02e7 08       		.byte	0x8
 1198 02e8 00       		.byte	0
 1199 02e9 08       		.uleb128 0x8
 1200 02ea A1000000 		.4byte	0xa1
 1201 02ee F9020000 		.4byte	0x2f9
 1202 02f2 09       		.uleb128 0x9
 1203 02f3 A8000000 		.4byte	0xa8
 1204 02f7 2E       		.byte	0x2e
ARM GAS  /tmp/cc3LTPp7.s 			page 33


 1205 02f8 00       		.byte	0
 1206 02f9 06       		.uleb128 0x6
 1207 02fa E9020000 		.4byte	0x2e9
 1208 02fe 05       		.uleb128 0x5
 1209 02ff F9020000 		.4byte	0x2f9
 1210 0303 04       		.uleb128 0x4
 1211 0304 DE030000 		.4byte	.LASF45
 1212 0308 06       		.byte	0x6
 1213 0309 59       		.byte	0x59
 1214 030a 79010000 		.4byte	0x179
 1215 030e 04       		.uleb128 0x4
 1216 030f F7060000 		.4byte	.LASF46
 1217 0313 07       		.byte	0x7
 1218 0314 07       		.byte	0x7
 1219 0315 25000000 		.4byte	0x25
 1220 0319 04       		.uleb128 0x4
 1221 031a 93060000 		.4byte	.LASF47
 1222 031e 08       		.byte	0x8
 1223 031f 2C       		.byte	0x2c
 1224 0320 5A000000 		.4byte	0x5a
 1225 0324 04       		.uleb128 0x4
 1226 0325 16000000 		.4byte	.LASF48
 1227 0329 08       		.byte	0x8
 1228 032a 72       		.byte	0x72
 1229 032b 5A000000 		.4byte	0x5a
 1230 032f 10       		.uleb128 0x10
 1231 0330 70040000 		.4byte	.LASF49
 1232 0334 09       		.byte	0x9
 1233 0335 6501     		.2byte	0x165
 1234 0337 2C000000 		.4byte	0x2c
 1235 033b 11       		.uleb128 0x11
 1236 033c 04       		.byte	0x4
 1237 033d 08       		.byte	0x8
 1238 033e A6       		.byte	0xa6
 1239 033f 5A030000 		.4byte	0x35a
 1240 0343 12       		.uleb128 0x12
 1241 0344 4E040000 		.4byte	.LASF50
 1242 0348 08       		.byte	0x8
 1243 0349 A8       		.byte	0xa8
 1244 034a 2F030000 		.4byte	0x32f
 1245 034e 12       		.uleb128 0x12
 1246 034f 41030000 		.4byte	.LASF51
 1247 0353 08       		.byte	0x8
 1248 0354 A9       		.byte	0xa9
 1249 0355 5A030000 		.4byte	0x35a
 1250 0359 00       		.byte	0
 1251 035a 08       		.uleb128 0x8
 1252 035b 3A000000 		.4byte	0x3a
 1253 035f 6A030000 		.4byte	0x36a
 1254 0363 09       		.uleb128 0x9
 1255 0364 A8000000 		.4byte	0xa8
 1256 0368 03       		.byte	0x3
 1257 0369 00       		.byte	0
 1258 036a 0C       		.uleb128 0xc
 1259 036b 08       		.byte	0x8
 1260 036c 08       		.byte	0x8
 1261 036d A3       		.byte	0xa3
ARM GAS  /tmp/cc3LTPp7.s 			page 34


 1262 036e 8B030000 		.4byte	0x38b
 1263 0372 0D       		.uleb128 0xd
 1264 0373 12080000 		.4byte	.LASF52
 1265 0377 08       		.byte	0x8
 1266 0378 A5       		.byte	0xa5
 1267 0379 25000000 		.4byte	0x25
 1268 037d 00       		.byte	0
 1269 037e 0D       		.uleb128 0xd
 1270 037f 20090000 		.4byte	.LASF53
 1271 0383 08       		.byte	0x8
 1272 0384 AA       		.byte	0xaa
 1273 0385 3B030000 		.4byte	0x33b
 1274 0389 04       		.byte	0x4
 1275 038a 00       		.byte	0
 1276 038b 04       		.uleb128 0x4
 1277 038c 93070000 		.4byte	.LASF54
 1278 0390 08       		.byte	0x8
 1279 0391 AB       		.byte	0xab
 1280 0392 6A030000 		.4byte	0x36a
 1281 0396 04       		.uleb128 0x4
 1282 0397 4E060000 		.4byte	.LASF55
 1283 039b 08       		.byte	0x8
 1284 039c AF       		.byte	0xaf
 1285 039d 0E030000 		.4byte	0x30e
 1286 03a1 04       		.uleb128 0x4
 1287 03a2 93090000 		.4byte	.LASF56
 1288 03a6 0A       		.byte	0xa
 1289 03a7 16       		.byte	0x16
 1290 03a8 6C000000 		.4byte	0x6c
 1291 03ac 13       		.uleb128 0x13
 1292 03ad 0C030000 		.4byte	.LASF61
 1293 03b1 18       		.byte	0x18
 1294 03b2 0A       		.byte	0xa
 1295 03b3 2D       		.byte	0x2d
 1296 03b4 FF030000 		.4byte	0x3ff
 1297 03b8 0D       		.uleb128 0xd
 1298 03b9 F6080000 		.4byte	.LASF57
 1299 03bd 0A       		.byte	0xa
 1300 03be 2F       		.byte	0x2f
 1301 03bf FF030000 		.4byte	0x3ff
 1302 03c3 00       		.byte	0
 1303 03c4 14       		.uleb128 0x14
 1304 03c5 5F6B00   		.ascii	"_k\000"
 1305 03c8 0A       		.byte	0xa
 1306 03c9 30       		.byte	0x30
 1307 03ca 25000000 		.4byte	0x25
 1308 03ce 04       		.byte	0x4
 1309 03cf 0D       		.uleb128 0xd
 1310 03d0 F5070000 		.4byte	.LASF58
 1311 03d4 0A       		.byte	0xa
 1312 03d5 30       		.byte	0x30
 1313 03d6 25000000 		.4byte	0x25
 1314 03da 08       		.byte	0x8
 1315 03db 0D       		.uleb128 0xd
 1316 03dc E8020000 		.4byte	.LASF59
 1317 03e0 0A       		.byte	0xa
 1318 03e1 30       		.byte	0x30
ARM GAS  /tmp/cc3LTPp7.s 			page 35


 1319 03e2 25000000 		.4byte	0x25
 1320 03e6 0C       		.byte	0xc
 1321 03e7 0D       		.uleb128 0xd
 1322 03e8 DD010000 		.4byte	.LASF60
 1323 03ec 0A       		.byte	0xa
 1324 03ed 30       		.byte	0x30
 1325 03ee 25000000 		.4byte	0x25
 1326 03f2 10       		.byte	0x10
 1327 03f3 14       		.uleb128 0x14
 1328 03f4 5F7800   		.ascii	"_x\000"
 1329 03f7 0A       		.byte	0xa
 1330 03f8 31       		.byte	0x31
 1331 03f9 05040000 		.4byte	0x405
 1332 03fd 14       		.byte	0x14
 1333 03fe 00       		.byte	0
 1334 03ff 15       		.uleb128 0x15
 1335 0400 04       		.byte	0x4
 1336 0401 AC030000 		.4byte	0x3ac
 1337 0405 08       		.uleb128 0x8
 1338 0406 A1030000 		.4byte	0x3a1
 1339 040a 15040000 		.4byte	0x415
 1340 040e 09       		.uleb128 0x9
 1341 040f A8000000 		.4byte	0xa8
 1342 0413 00       		.byte	0
 1343 0414 00       		.byte	0
 1344 0415 13       		.uleb128 0x13
 1345 0416 2C030000 		.4byte	.LASF62
 1346 041a 24       		.byte	0x24
 1347 041b 0A       		.byte	0xa
 1348 041c 35       		.byte	0x35
 1349 041d 8E040000 		.4byte	0x48e
 1350 0421 0D       		.uleb128 0xd
 1351 0422 30010000 		.4byte	.LASF63
 1352 0426 0A       		.byte	0xa
 1353 0427 37       		.byte	0x37
 1354 0428 25000000 		.4byte	0x25
 1355 042c 00       		.byte	0
 1356 042d 0D       		.uleb128 0xd
 1357 042e 300B0000 		.4byte	.LASF64
 1358 0432 0A       		.byte	0xa
 1359 0433 38       		.byte	0x38
 1360 0434 25000000 		.4byte	0x25
 1361 0438 04       		.byte	0x4
 1362 0439 0D       		.uleb128 0xd
 1363 043a 85010000 		.4byte	.LASF65
 1364 043e 0A       		.byte	0xa
 1365 043f 39       		.byte	0x39
 1366 0440 25000000 		.4byte	0x25
 1367 0444 08       		.byte	0x8
 1368 0445 0D       		.uleb128 0xd
 1369 0446 0F070000 		.4byte	.LASF66
 1370 044a 0A       		.byte	0xa
 1371 044b 3A       		.byte	0x3a
 1372 044c 25000000 		.4byte	0x25
 1373 0450 0C       		.byte	0xc
 1374 0451 0D       		.uleb128 0xd
 1375 0452 57060000 		.4byte	.LASF67
ARM GAS  /tmp/cc3LTPp7.s 			page 36


 1376 0456 0A       		.byte	0xa
 1377 0457 3B       		.byte	0x3b
 1378 0458 25000000 		.4byte	0x25
 1379 045c 10       		.byte	0x10
 1380 045d 0D       		.uleb128 0xd
 1381 045e AF040000 		.4byte	.LASF68
 1382 0462 0A       		.byte	0xa
 1383 0463 3C       		.byte	0x3c
 1384 0464 25000000 		.4byte	0x25
 1385 0468 14       		.byte	0x14
 1386 0469 0D       		.uleb128 0xd
 1387 046a F1090000 		.4byte	.LASF69
 1388 046e 0A       		.byte	0xa
 1389 046f 3D       		.byte	0x3d
 1390 0470 25000000 		.4byte	0x25
 1391 0474 18       		.byte	0x18
 1392 0475 0D       		.uleb128 0xd
 1393 0476 5B070000 		.4byte	.LASF70
 1394 047a 0A       		.byte	0xa
 1395 047b 3E       		.byte	0x3e
 1396 047c 25000000 		.4byte	0x25
 1397 0480 1C       		.byte	0x1c
 1398 0481 0D       		.uleb128 0xd
 1399 0482 0A0B0000 		.4byte	.LASF71
 1400 0486 0A       		.byte	0xa
 1401 0487 3F       		.byte	0x3f
 1402 0488 25000000 		.4byte	0x25
 1403 048c 20       		.byte	0x20
 1404 048d 00       		.byte	0
 1405 048e 16       		.uleb128 0x16
 1406 048f 250A0000 		.4byte	.LASF72
 1407 0493 0801     		.2byte	0x108
 1408 0495 0A       		.byte	0xa
 1409 0496 48       		.byte	0x48
 1410 0497 CE040000 		.4byte	0x4ce
 1411 049b 0D       		.uleb128 0xd
 1412 049c C6020000 		.4byte	.LASF73
 1413 04a0 0A       		.byte	0xa
 1414 04a1 49       		.byte	0x49
 1415 04a2 CE040000 		.4byte	0x4ce
 1416 04a6 00       		.byte	0
 1417 04a7 0D       		.uleb128 0xd
 1418 04a8 27070000 		.4byte	.LASF74
 1419 04ac 0A       		.byte	0xa
 1420 04ad 4A       		.byte	0x4a
 1421 04ae CE040000 		.4byte	0x4ce
 1422 04b2 80       		.byte	0x80
 1423 04b3 0F       		.uleb128 0xf
 1424 04b4 28090000 		.4byte	.LASF75
 1425 04b8 0A       		.byte	0xa
 1426 04b9 4C       		.byte	0x4c
 1427 04ba A1030000 		.4byte	0x3a1
 1428 04be 0001     		.2byte	0x100
 1429 04c0 0F       		.uleb128 0xf
 1430 04c1 D5010000 		.4byte	.LASF76
 1431 04c5 0A       		.byte	0xa
 1432 04c6 4F       		.byte	0x4f
ARM GAS  /tmp/cc3LTPp7.s 			page 37


 1433 04c7 A1030000 		.4byte	0x3a1
 1434 04cb 0401     		.2byte	0x104
 1435 04cd 00       		.byte	0
 1436 04ce 08       		.uleb128 0x8
 1437 04cf A6000000 		.4byte	0xa6
 1438 04d3 DE040000 		.4byte	0x4de
 1439 04d7 09       		.uleb128 0x9
 1440 04d8 A8000000 		.4byte	0xa8
 1441 04dc 1F       		.byte	0x1f
 1442 04dd 00       		.byte	0
 1443 04de 16       		.uleb128 0x16
 1444 04df 60060000 		.4byte	.LASF77
 1445 04e3 9001     		.2byte	0x190
 1446 04e5 0A       		.byte	0xa
 1447 04e6 5B       		.byte	0x5b
 1448 04e7 1C050000 		.4byte	0x51c
 1449 04eb 0D       		.uleb128 0xd
 1450 04ec F6080000 		.4byte	.LASF57
 1451 04f0 0A       		.byte	0xa
 1452 04f1 5C       		.byte	0x5c
 1453 04f2 1C050000 		.4byte	0x51c
 1454 04f6 00       		.byte	0
 1455 04f7 0D       		.uleb128 0xd
 1456 04f8 BC070000 		.4byte	.LASF78
 1457 04fc 0A       		.byte	0xa
 1458 04fd 5D       		.byte	0x5d
 1459 04fe 25000000 		.4byte	0x25
 1460 0502 04       		.byte	0x4
 1461 0503 0D       		.uleb128 0xd
 1462 0504 D8020000 		.4byte	.LASF79
 1463 0508 0A       		.byte	0xa
 1464 0509 5F       		.byte	0x5f
 1465 050a 22050000 		.4byte	0x522
 1466 050e 08       		.byte	0x8
 1467 050f 0D       		.uleb128 0xd
 1468 0510 250A0000 		.4byte	.LASF72
 1469 0514 0A       		.byte	0xa
 1470 0515 60       		.byte	0x60
 1471 0516 8E040000 		.4byte	0x48e
 1472 051a 88       		.byte	0x88
 1473 051b 00       		.byte	0
 1474 051c 15       		.uleb128 0x15
 1475 051d 04       		.byte	0x4
 1476 051e DE040000 		.4byte	0x4de
 1477 0522 08       		.uleb128 0x8
 1478 0523 32050000 		.4byte	0x532
 1479 0527 32050000 		.4byte	0x532
 1480 052b 09       		.uleb128 0x9
 1481 052c A8000000 		.4byte	0xa8
 1482 0530 1F       		.byte	0x1f
 1483 0531 00       		.byte	0
 1484 0532 15       		.uleb128 0x15
 1485 0533 04       		.byte	0x4
 1486 0534 38050000 		.4byte	0x538
 1487 0538 17       		.uleb128 0x17
 1488 0539 13       		.uleb128 0x13
 1489 053a 870B0000 		.4byte	.LASF80
ARM GAS  /tmp/cc3LTPp7.s 			page 38


 1490 053e 08       		.byte	0x8
 1491 053f 0A       		.byte	0xa
 1492 0540 73       		.byte	0x73
 1493 0541 5E050000 		.4byte	0x55e
 1494 0545 0D       		.uleb128 0xd
 1495 0546 6B010000 		.4byte	.LASF81
 1496 054a 0A       		.byte	0xa
 1497 054b 74       		.byte	0x74
 1498 054c 5E050000 		.4byte	0x55e
 1499 0550 00       		.byte	0
 1500 0551 0D       		.uleb128 0xd
 1501 0552 A6080000 		.4byte	.LASF82
 1502 0556 0A       		.byte	0xa
 1503 0557 75       		.byte	0x75
 1504 0558 25000000 		.4byte	0x25
 1505 055c 04       		.byte	0x4
 1506 055d 00       		.byte	0
 1507 055e 15       		.uleb128 0x15
 1508 055f 04       		.byte	0x4
 1509 0560 3A000000 		.4byte	0x3a
 1510 0564 13       		.uleb128 0x13
 1511 0565 9E070000 		.4byte	.LASF83
 1512 0569 68       		.byte	0x68
 1513 056a 0A       		.byte	0xa
 1514 056b B3       		.byte	0xb3
 1515 056c 8E060000 		.4byte	0x68e
 1516 0570 14       		.uleb128 0x14
 1517 0571 5F7000   		.ascii	"_p\000"
 1518 0574 0A       		.byte	0xa
 1519 0575 B4       		.byte	0xb4
 1520 0576 5E050000 		.4byte	0x55e
 1521 057a 00       		.byte	0
 1522 057b 14       		.uleb128 0x14
 1523 057c 5F7200   		.ascii	"_r\000"
 1524 057f 0A       		.byte	0xa
 1525 0580 B5       		.byte	0xb5
 1526 0581 25000000 		.4byte	0x25
 1527 0585 04       		.byte	0x4
 1528 0586 14       		.uleb128 0x14
 1529 0587 5F7700   		.ascii	"_w\000"
 1530 058a 0A       		.byte	0xa
 1531 058b B6       		.byte	0xb6
 1532 058c 25000000 		.4byte	0x25
 1533 0590 08       		.byte	0x8
 1534 0591 0D       		.uleb128 0xd
 1535 0592 CE010000 		.4byte	.LASF84
 1536 0596 0A       		.byte	0xa
 1537 0597 B7       		.byte	0xb7
 1538 0598 41000000 		.4byte	0x41
 1539 059c 0C       		.byte	0xc
 1540 059d 0D       		.uleb128 0xd
 1541 059e C8030000 		.4byte	.LASF85
 1542 05a2 0A       		.byte	0xa
 1543 05a3 B8       		.byte	0xb8
 1544 05a4 41000000 		.4byte	0x41
 1545 05a8 0E       		.byte	0xe
 1546 05a9 14       		.uleb128 0x14
ARM GAS  /tmp/cc3LTPp7.s 			page 39


 1547 05aa 5F626600 		.ascii	"_bf\000"
 1548 05ae 0A       		.byte	0xa
 1549 05af B9       		.byte	0xb9
 1550 05b0 39050000 		.4byte	0x539
 1551 05b4 10       		.byte	0x10
 1552 05b5 0D       		.uleb128 0xd
 1553 05b6 FE000000 		.4byte	.LASF86
 1554 05ba 0A       		.byte	0xa
 1555 05bb BA       		.byte	0xba
 1556 05bc 25000000 		.4byte	0x25
 1557 05c0 18       		.byte	0x18
 1558 05c1 0D       		.uleb128 0xd
 1559 05c2 B5010000 		.4byte	.LASF87
 1560 05c6 0A       		.byte	0xa
 1561 05c7 C1       		.byte	0xc1
 1562 05c8 A6000000 		.4byte	0xa6
 1563 05cc 1C       		.byte	0x1c
 1564 05cd 0D       		.uleb128 0xd
 1565 05ce 09070000 		.4byte	.LASF88
 1566 05d2 0A       		.byte	0xa
 1567 05d3 C3       		.byte	0xc3
 1568 05d4 FB070000 		.4byte	0x7fb
 1569 05d8 20       		.byte	0x20
 1570 05d9 0D       		.uleb128 0xd
 1571 05da A8040000 		.4byte	.LASF89
 1572 05de 0A       		.byte	0xa
 1573 05df C5       		.byte	0xc5
 1574 05e0 25080000 		.4byte	0x825
 1575 05e4 24       		.byte	0x24
 1576 05e5 0D       		.uleb128 0xd
 1577 05e6 23080000 		.4byte	.LASF90
 1578 05ea 0A       		.byte	0xa
 1579 05eb C8       		.byte	0xc8
 1580 05ec 49080000 		.4byte	0x849
 1581 05f0 28       		.byte	0x28
 1582 05f1 0D       		.uleb128 0xd
 1583 05f2 39010000 		.4byte	.LASF91
 1584 05f6 0A       		.byte	0xa
 1585 05f7 C9       		.byte	0xc9
 1586 05f8 63080000 		.4byte	0x863
 1587 05fc 2C       		.byte	0x2c
 1588 05fd 14       		.uleb128 0x14
 1589 05fe 5F756200 		.ascii	"_ub\000"
 1590 0602 0A       		.byte	0xa
 1591 0603 CC       		.byte	0xcc
 1592 0604 39050000 		.4byte	0x539
 1593 0608 30       		.byte	0x30
 1594 0609 14       		.uleb128 0x14
 1595 060a 5F757000 		.ascii	"_up\000"
 1596 060e 0A       		.byte	0xa
 1597 060f CD       		.byte	0xcd
 1598 0610 5E050000 		.4byte	0x55e
 1599 0614 38       		.byte	0x38
 1600 0615 14       		.uleb128 0x14
 1601 0616 5F757200 		.ascii	"_ur\000"
 1602 061a 0A       		.byte	0xa
 1603 061b CE       		.byte	0xce
ARM GAS  /tmp/cc3LTPp7.s 			page 40


 1604 061c 25000000 		.4byte	0x25
 1605 0620 3C       		.byte	0x3c
 1606 0621 0D       		.uleb128 0xd
 1607 0622 65010000 		.4byte	.LASF92
 1608 0626 0A       		.byte	0xa
 1609 0627 D1       		.byte	0xd1
 1610 0628 69080000 		.4byte	0x869
 1611 062c 40       		.byte	0x40
 1612 062d 0D       		.uleb128 0xd
 1613 062e AE0A0000 		.4byte	.LASF93
 1614 0632 0A       		.byte	0xa
 1615 0633 D2       		.byte	0xd2
 1616 0634 79080000 		.4byte	0x879
 1617 0638 43       		.byte	0x43
 1618 0639 14       		.uleb128 0x14
 1619 063a 5F6C6200 		.ascii	"_lb\000"
 1620 063e 0A       		.byte	0xa
 1621 063f D5       		.byte	0xd5
 1622 0640 39050000 		.4byte	0x539
 1623 0644 44       		.byte	0x44
 1624 0645 0D       		.uleb128 0xd
 1625 0646 9D080000 		.4byte	.LASF94
 1626 064a 0A       		.byte	0xa
 1627 064b D8       		.byte	0xd8
 1628 064c 25000000 		.4byte	0x25
 1629 0650 4C       		.byte	0x4c
 1630 0651 0D       		.uleb128 0xd
 1631 0652 8D050000 		.4byte	.LASF95
 1632 0656 0A       		.byte	0xa
 1633 0657 D9       		.byte	0xd9
 1634 0658 19030000 		.4byte	0x319
 1635 065c 50       		.byte	0x50
 1636 065d 0D       		.uleb128 0xd
 1637 065e A2000000 		.4byte	.LASF96
 1638 0662 0A       		.byte	0xa
 1639 0663 DC       		.byte	0xdc
 1640 0664 AC060000 		.4byte	0x6ac
 1641 0668 54       		.byte	0x54
 1642 0669 0D       		.uleb128 0xd
 1643 066a 84040000 		.4byte	.LASF97
 1644 066e 0A       		.byte	0xa
 1645 066f E0       		.byte	0xe0
 1646 0670 96030000 		.4byte	0x396
 1647 0674 58       		.byte	0x58
 1648 0675 0D       		.uleb128 0xd
 1649 0676 38030000 		.4byte	.LASF98
 1650 067a 0A       		.byte	0xa
 1651 067b E2       		.byte	0xe2
 1652 067c 8B030000 		.4byte	0x38b
 1653 0680 5C       		.byte	0x5c
 1654 0681 0D       		.uleb128 0xd
 1655 0682 7A070000 		.4byte	.LASF99
 1656 0686 0A       		.byte	0xa
 1657 0687 E3       		.byte	0xe3
 1658 0688 25000000 		.4byte	0x25
 1659 068c 64       		.byte	0x64
 1660 068d 00       		.byte	0
ARM GAS  /tmp/cc3LTPp7.s 			page 41


 1661 068e 18       		.uleb128 0x18
 1662 068f 25000000 		.4byte	0x25
 1663 0693 AC060000 		.4byte	0x6ac
 1664 0697 19       		.uleb128 0x19
 1665 0698 AC060000 		.4byte	0x6ac
 1666 069c 19       		.uleb128 0x19
 1667 069d A6000000 		.4byte	0xa6
 1668 06a1 19       		.uleb128 0x19
 1669 06a2 E9070000 		.4byte	0x7e9
 1670 06a6 19       		.uleb128 0x19
 1671 06a7 25000000 		.4byte	0x25
 1672 06ab 00       		.byte	0
 1673 06ac 15       		.uleb128 0x15
 1674 06ad 04       		.byte	0x4
 1675 06ae B7060000 		.4byte	0x6b7
 1676 06b2 06       		.uleb128 0x6
 1677 06b3 AC060000 		.4byte	0x6ac
 1678 06b7 1A       		.uleb128 0x1a
 1679 06b8 FD070000 		.4byte	.LASF100
 1680 06bc 2804     		.2byte	0x428
 1681 06be 0A       		.byte	0xa
 1682 06bf 3802     		.2byte	0x238
 1683 06c1 E9070000 		.4byte	0x7e9
 1684 06c5 1B       		.uleb128 0x1b
 1685 06c6 91080000 		.4byte	.LASF101
 1686 06ca 0A       		.byte	0xa
 1687 06cb 3A02     		.2byte	0x23a
 1688 06cd 25000000 		.4byte	0x25
 1689 06d1 00       		.byte	0
 1690 06d2 1B       		.uleb128 0x1b
 1691 06d3 010A0000 		.4byte	.LASF102
 1692 06d7 0A       		.byte	0xa
 1693 06d8 3F02     		.2byte	0x23f
 1694 06da D0080000 		.4byte	0x8d0
 1695 06de 04       		.byte	0x4
 1696 06df 1B       		.uleb128 0x1b
 1697 06e0 E9090000 		.4byte	.LASF103
 1698 06e4 0A       		.byte	0xa
 1699 06e5 3F02     		.2byte	0x23f
 1700 06e7 D0080000 		.4byte	0x8d0
 1701 06eb 08       		.byte	0x8
 1702 06ec 1B       		.uleb128 0x1b
 1703 06ed 04030000 		.4byte	.LASF104
 1704 06f1 0A       		.byte	0xa
 1705 06f2 3F02     		.2byte	0x23f
 1706 06f4 D0080000 		.4byte	0x8d0
 1707 06f8 0C       		.byte	0xc
 1708 06f9 1B       		.uleb128 0x1b
 1709 06fa B7070000 		.4byte	.LASF105
 1710 06fe 0A       		.byte	0xa
 1711 06ff 4102     		.2byte	0x241
 1712 0701 25000000 		.4byte	0x25
 1713 0705 10       		.byte	0x10
 1714 0706 1B       		.uleb128 0x1b
 1715 0707 8A000000 		.4byte	.LASF106
 1716 070b 0A       		.byte	0xa
 1717 070c 4202     		.2byte	0x242
ARM GAS  /tmp/cc3LTPp7.s 			page 42


 1718 070e B20A0000 		.4byte	0xab2
 1719 0712 14       		.byte	0x14
 1720 0713 1B       		.uleb128 0x1b
 1721 0714 C7090000 		.4byte	.LASF107
 1722 0718 0A       		.byte	0xa
 1723 0719 4402     		.2byte	0x244
 1724 071b 25000000 		.4byte	0x25
 1725 071f 30       		.byte	0x30
 1726 0720 1B       		.uleb128 0x1b
 1727 0721 C1070000 		.4byte	.LASF108
 1728 0725 0A       		.byte	0xa
 1729 0726 4502     		.2byte	0x245
 1730 0728 1F080000 		.4byte	0x81f
 1731 072c 34       		.byte	0x34
 1732 072d 1B       		.uleb128 0x1b
 1733 072e 3B020000 		.4byte	.LASF109
 1734 0732 0A       		.byte	0xa
 1735 0733 4702     		.2byte	0x247
 1736 0735 25000000 		.4byte	0x25
 1737 0739 38       		.byte	0x38
 1738 073a 1B       		.uleb128 0x1b
 1739 073b D9090000 		.4byte	.LASF110
 1740 073f 0A       		.byte	0xa
 1741 0740 4902     		.2byte	0x249
 1742 0742 CD0A0000 		.4byte	0xacd
 1743 0746 3C       		.byte	0x3c
 1744 0747 1B       		.uleb128 0x1b
 1745 0748 46040000 		.4byte	.LASF111
 1746 074c 0A       		.byte	0xa
 1747 074d 4C02     		.2byte	0x24c
 1748 074f FF030000 		.4byte	0x3ff
 1749 0753 40       		.byte	0x40
 1750 0754 1B       		.uleb128 0x1b
 1751 0755 F0010000 		.4byte	.LASF112
 1752 0759 0A       		.byte	0xa
 1753 075a 4D02     		.2byte	0x24d
 1754 075c 25000000 		.4byte	0x25
 1755 0760 44       		.byte	0x44
 1756 0761 1B       		.uleb128 0x1b
 1757 0762 650B0000 		.4byte	.LASF113
 1758 0766 0A       		.byte	0xa
 1759 0767 4E02     		.2byte	0x24e
 1760 0769 FF030000 		.4byte	0x3ff
 1761 076d 48       		.byte	0x48
 1762 076e 1B       		.uleb128 0x1b
 1763 076f 82070000 		.4byte	.LASF114
 1764 0773 0A       		.byte	0xa
 1765 0774 4F02     		.2byte	0x24f
 1766 0776 D30A0000 		.4byte	0xad3
 1767 077a 4C       		.byte	0x4c
 1768 077b 1B       		.uleb128 0x1b
 1769 077c 5D030000 		.4byte	.LASF115
 1770 0780 0A       		.byte	0xa
 1771 0781 5202     		.2byte	0x252
 1772 0783 25000000 		.4byte	0x25
 1773 0787 50       		.byte	0x50
 1774 0788 1B       		.uleb128 0x1b
ARM GAS  /tmp/cc3LTPp7.s 			page 43


 1775 0789 73020000 		.4byte	.LASF116
 1776 078d 0A       		.byte	0xa
 1777 078e 5302     		.2byte	0x253
 1778 0790 E9070000 		.4byte	0x7e9
 1779 0794 54       		.byte	0x54
 1780 0795 1B       		.uleb128 0x1b
 1781 0796 33070000 		.4byte	.LASF117
 1782 079a 0A       		.byte	0xa
 1783 079b 7602     		.2byte	0x276
 1784 079d 900A0000 		.4byte	0xa90
 1785 07a1 58       		.byte	0x58
 1786 07a2 1C       		.uleb128 0x1c
 1787 07a3 60060000 		.4byte	.LASF77
 1788 07a7 0A       		.byte	0xa
 1789 07a8 7A02     		.2byte	0x27a
 1790 07aa 1C050000 		.4byte	0x51c
 1791 07ae 4801     		.2byte	0x148
 1792 07b0 1C       		.uleb128 0x1c
 1793 07b1 13040000 		.4byte	.LASF118
 1794 07b5 0A       		.byte	0xa
 1795 07b6 7B02     		.2byte	0x27b
 1796 07b8 DE040000 		.4byte	0x4de
 1797 07bc 4C01     		.2byte	0x14c
 1798 07be 1C       		.uleb128 0x1c
 1799 07bf 330A0000 		.4byte	.LASF119
 1800 07c3 0A       		.byte	0xa
 1801 07c4 7F02     		.2byte	0x27f
 1802 07c6 E40A0000 		.4byte	0xae4
 1803 07ca DC02     		.2byte	0x2dc
 1804 07cc 1C       		.uleb128 0x1c
 1805 07cd BD010000 		.4byte	.LASF120
 1806 07d1 0A       		.byte	0xa
 1807 07d2 8402     		.2byte	0x284
 1808 07d4 95080000 		.4byte	0x895
 1809 07d8 E002     		.2byte	0x2e0
 1810 07da 1C       		.uleb128 0x1c
 1811 07db 99010000 		.4byte	.LASF121
 1812 07df 0A       		.byte	0xa
 1813 07e0 8502     		.2byte	0x285
 1814 07e2 F00A0000 		.4byte	0xaf0
 1815 07e6 EC02     		.2byte	0x2ec
 1816 07e8 00       		.byte	0
 1817 07e9 15       		.uleb128 0x15
 1818 07ea 04       		.byte	0x4
 1819 07eb EF070000 		.4byte	0x7ef
 1820 07ef 03       		.uleb128 0x3
 1821 07f0 01       		.byte	0x1
 1822 07f1 08       		.byte	0x8
 1823 07f2 98080000 		.4byte	.LASF122
 1824 07f6 06       		.uleb128 0x6
 1825 07f7 EF070000 		.4byte	0x7ef
 1826 07fb 15       		.uleb128 0x15
 1827 07fc 04       		.byte	0x4
 1828 07fd 8E060000 		.4byte	0x68e
 1829 0801 18       		.uleb128 0x18
 1830 0802 25000000 		.4byte	0x25
 1831 0806 1F080000 		.4byte	0x81f
ARM GAS  /tmp/cc3LTPp7.s 			page 44


 1832 080a 19       		.uleb128 0x19
 1833 080b AC060000 		.4byte	0x6ac
 1834 080f 19       		.uleb128 0x19
 1835 0810 A6000000 		.4byte	0xa6
 1836 0814 19       		.uleb128 0x19
 1837 0815 1F080000 		.4byte	0x81f
 1838 0819 19       		.uleb128 0x19
 1839 081a 25000000 		.4byte	0x25
 1840 081e 00       		.byte	0
 1841 081f 15       		.uleb128 0x15
 1842 0820 04       		.byte	0x4
 1843 0821 F6070000 		.4byte	0x7f6
 1844 0825 15       		.uleb128 0x15
 1845 0826 04       		.byte	0x4
 1846 0827 01080000 		.4byte	0x801
 1847 082b 18       		.uleb128 0x18
 1848 082c 24030000 		.4byte	0x324
 1849 0830 49080000 		.4byte	0x849
 1850 0834 19       		.uleb128 0x19
 1851 0835 AC060000 		.4byte	0x6ac
 1852 0839 19       		.uleb128 0x19
 1853 083a A6000000 		.4byte	0xa6
 1854 083e 19       		.uleb128 0x19
 1855 083f 24030000 		.4byte	0x324
 1856 0843 19       		.uleb128 0x19
 1857 0844 25000000 		.4byte	0x25
 1858 0848 00       		.byte	0
 1859 0849 15       		.uleb128 0x15
 1860 084a 04       		.byte	0x4
 1861 084b 2B080000 		.4byte	0x82b
 1862 084f 18       		.uleb128 0x18
 1863 0850 25000000 		.4byte	0x25
 1864 0854 63080000 		.4byte	0x863
 1865 0858 19       		.uleb128 0x19
 1866 0859 AC060000 		.4byte	0x6ac
 1867 085d 19       		.uleb128 0x19
 1868 085e A6000000 		.4byte	0xa6
 1869 0862 00       		.byte	0
 1870 0863 15       		.uleb128 0x15
 1871 0864 04       		.byte	0x4
 1872 0865 4F080000 		.4byte	0x84f
 1873 0869 08       		.uleb128 0x8
 1874 086a 3A000000 		.4byte	0x3a
 1875 086e 79080000 		.4byte	0x879
 1876 0872 09       		.uleb128 0x9
 1877 0873 A8000000 		.4byte	0xa8
 1878 0877 02       		.byte	0x2
 1879 0878 00       		.byte	0
 1880 0879 08       		.uleb128 0x8
 1881 087a 3A000000 		.4byte	0x3a
 1882 087e 89080000 		.4byte	0x889
 1883 0882 09       		.uleb128 0x9
 1884 0883 A8000000 		.4byte	0xa8
 1885 0887 00       		.byte	0
 1886 0888 00       		.byte	0
 1887 0889 10       		.uleb128 0x10
 1888 088a 8C070000 		.4byte	.LASF123
ARM GAS  /tmp/cc3LTPp7.s 			page 45


 1889 088e 0A       		.byte	0xa
 1890 088f 1D01     		.2byte	0x11d
 1891 0891 64050000 		.4byte	0x564
 1892 0895 1D       		.uleb128 0x1d
 1893 0896 FB090000 		.4byte	.LASF124
 1894 089a 0C       		.byte	0xc
 1895 089b 0A       		.byte	0xa
 1896 089c 2101     		.2byte	0x121
 1897 089e CA080000 		.4byte	0x8ca
 1898 08a2 1B       		.uleb128 0x1b
 1899 08a3 F6080000 		.4byte	.LASF57
 1900 08a7 0A       		.byte	0xa
 1901 08a8 2301     		.2byte	0x123
 1902 08aa CA080000 		.4byte	0x8ca
 1903 08ae 00       		.byte	0
 1904 08af 1B       		.uleb128 0x1b
 1905 08b0 E5030000 		.4byte	.LASF125
 1906 08b4 0A       		.byte	0xa
 1907 08b5 2401     		.2byte	0x124
 1908 08b7 25000000 		.4byte	0x25
 1909 08bb 04       		.byte	0x4
 1910 08bc 1B       		.uleb128 0x1b
 1911 08bd B1070000 		.4byte	.LASF126
 1912 08c1 0A       		.byte	0xa
 1913 08c2 2501     		.2byte	0x125
 1914 08c4 D0080000 		.4byte	0x8d0
 1915 08c8 08       		.byte	0x8
 1916 08c9 00       		.byte	0
 1917 08ca 15       		.uleb128 0x15
 1918 08cb 04       		.byte	0x4
 1919 08cc 95080000 		.4byte	0x895
 1920 08d0 15       		.uleb128 0x15
 1921 08d1 04       		.byte	0x4
 1922 08d2 89080000 		.4byte	0x889
 1923 08d6 1D       		.uleb128 0x1d
 1924 08d7 04080000 		.4byte	.LASF127
 1925 08db 0E       		.byte	0xe
 1926 08dc 0A       		.byte	0xa
 1927 08dd 3D01     		.2byte	0x13d
 1928 08df 0B090000 		.4byte	0x90b
 1929 08e3 1B       		.uleb128 0x1b
 1930 08e4 0C080000 		.4byte	.LASF128
 1931 08e8 0A       		.byte	0xa
 1932 08e9 3E01     		.2byte	0x13e
 1933 08eb 0B090000 		.4byte	0x90b
 1934 08ef 00       		.byte	0
 1935 08f0 1B       		.uleb128 0x1b
 1936 08f1 8A040000 		.4byte	.LASF129
 1937 08f5 0A       		.byte	0xa
 1938 08f6 3F01     		.2byte	0x13f
 1939 08f8 0B090000 		.4byte	0x90b
 1940 08fc 06       		.byte	0x6
 1941 08fd 1B       		.uleb128 0x1b
 1942 08fe 58030000 		.4byte	.LASF130
 1943 0902 0A       		.byte	0xa
 1944 0903 4001     		.2byte	0x140
 1945 0905 48000000 		.4byte	0x48
ARM GAS  /tmp/cc3LTPp7.s 			page 46


 1946 0909 0C       		.byte	0xc
 1947 090a 00       		.byte	0
 1948 090b 08       		.uleb128 0x8
 1949 090c 48000000 		.4byte	0x48
 1950 0910 1B090000 		.4byte	0x91b
 1951 0914 09       		.uleb128 0x9
 1952 0915 A8000000 		.4byte	0xa8
 1953 0919 02       		.byte	0x2
 1954 091a 00       		.byte	0
 1955 091b 1E       		.uleb128 0x1e
 1956 091c D0       		.byte	0xd0
 1957 091d 0A       		.byte	0xa
 1958 091e 5702     		.2byte	0x257
 1959 0920 1C0A0000 		.4byte	0xa1c
 1960 0924 1B       		.uleb128 0x1b
 1961 0925 B9040000 		.4byte	.LASF131
 1962 0929 0A       		.byte	0xa
 1963 092a 5902     		.2byte	0x259
 1964 092c 2C000000 		.4byte	0x2c
 1965 0930 00       		.byte	0
 1966 0931 1B       		.uleb128 0x1b
 1967 0932 4C010000 		.4byte	.LASF132
 1968 0936 0A       		.byte	0xa
 1969 0937 5A02     		.2byte	0x25a
 1970 0939 E9070000 		.4byte	0x7e9
 1971 093d 04       		.byte	0x4
 1972 093e 1B       		.uleb128 0x1b
 1973 093f 30040000 		.4byte	.LASF133
 1974 0943 0A       		.byte	0xa
 1975 0944 5B02     		.2byte	0x25b
 1976 0946 1C0A0000 		.4byte	0xa1c
 1977 094a 08       		.byte	0x8
 1978 094b 1B       		.uleb128 0x1b
 1979 094c 150B0000 		.4byte	.LASF134
 1980 0950 0A       		.byte	0xa
 1981 0951 5C02     		.2byte	0x25c
 1982 0953 15040000 		.4byte	0x415
 1983 0957 24       		.byte	0x24
 1984 0958 1B       		.uleb128 0x1b
 1985 0959 14030000 		.4byte	.LASF135
 1986 095d 0A       		.byte	0xa
 1987 095e 5D02     		.2byte	0x25d
 1988 0960 25000000 		.4byte	0x25
 1989 0964 48       		.byte	0x48
 1990 0965 1B       		.uleb128 0x1b
 1991 0966 A6070000 		.4byte	.LASF136
 1992 096a 0A       		.byte	0xa
 1993 096b 5E02     		.2byte	0x25e
 1994 096d 7A000000 		.4byte	0x7a
 1995 0971 50       		.byte	0x50
 1996 0972 1B       		.uleb128 0x1b
 1997 0973 390B0000 		.4byte	.LASF137
 1998 0977 0A       		.byte	0xa
 1999 0978 5F02     		.2byte	0x25f
 2000 097a D6080000 		.4byte	0x8d6
 2001 097e 58       		.byte	0x58
 2002 097f 1B       		.uleb128 0x1b
ARM GAS  /tmp/cc3LTPp7.s 			page 47


 2003 0980 4E070000 		.4byte	.LASF138
 2004 0984 0A       		.byte	0xa
 2005 0985 6002     		.2byte	0x260
 2006 0987 8B030000 		.4byte	0x38b
 2007 098b 68       		.byte	0x68
 2008 098c 1B       		.uleb128 0x1b
 2009 098d 570B0000 		.4byte	.LASF139
 2010 0991 0A       		.byte	0xa
 2011 0992 6102     		.2byte	0x261
 2012 0994 8B030000 		.4byte	0x38b
 2013 0998 70       		.byte	0x70
 2014 0999 1B       		.uleb128 0x1b
 2015 099a 22010000 		.4byte	.LASF140
 2016 099e 0A       		.byte	0xa
 2017 099f 6202     		.2byte	0x262
 2018 09a1 8B030000 		.4byte	0x38b
 2019 09a5 78       		.byte	0x78
 2020 09a6 1B       		.uleb128 0x1b
 2021 09a7 1B0A0000 		.4byte	.LASF141
 2022 09ab 0A       		.byte	0xa
 2023 09ac 6302     		.2byte	0x263
 2024 09ae 2C0A0000 		.4byte	0xa2c
 2025 09b2 80       		.byte	0x80
 2026 09b3 1B       		.uleb128 0x1b
 2027 09b4 24040000 		.4byte	.LASF142
 2028 09b8 0A       		.byte	0xa
 2029 09b9 6402     		.2byte	0x264
 2030 09bb 3C0A0000 		.4byte	0xa3c
 2031 09bf 88       		.byte	0x88
 2032 09c0 1B       		.uleb128 0x1b
 2033 09c1 95000000 		.4byte	.LASF143
 2034 09c5 0A       		.byte	0xa
 2035 09c6 6502     		.2byte	0x265
 2036 09c8 25000000 		.4byte	0x25
 2037 09cc A0       		.byte	0xa0
 2038 09cd 1B       		.uleb128 0x1b
 2039 09ce B2020000 		.4byte	.LASF144
 2040 09d2 0A       		.byte	0xa
 2041 09d3 6602     		.2byte	0x266
 2042 09d5 8B030000 		.4byte	0x38b
 2043 09d9 A4       		.byte	0xa4
 2044 09da 1B       		.uleb128 0x1b
 2045 09db 13010000 		.4byte	.LASF145
 2046 09df 0A       		.byte	0xa
 2047 09e0 6702     		.2byte	0x267
 2048 09e2 8B030000 		.4byte	0x38b
 2049 09e6 AC       		.byte	0xac
 2050 09e7 1B       		.uleb128 0x1b
 2051 09e8 7B020000 		.4byte	.LASF146
 2052 09ec 0A       		.byte	0xa
 2053 09ed 6802     		.2byte	0x268
 2054 09ef 8B030000 		.4byte	0x38b
 2055 09f3 B4       		.byte	0xb4
 2056 09f4 1B       		.uleb128 0x1b
 2057 09f5 AD000000 		.4byte	.LASF147
 2058 09f9 0A       		.byte	0xa
 2059 09fa 6902     		.2byte	0x269
ARM GAS  /tmp/cc3LTPp7.s 			page 48


 2060 09fc 8B030000 		.4byte	0x38b
 2061 0a00 BC       		.byte	0xbc
 2062 0a01 1B       		.uleb128 0x1b
 2063 0a02 BC000000 		.4byte	.LASF148
 2064 0a06 0A       		.byte	0xa
 2065 0a07 6A02     		.2byte	0x26a
 2066 0a09 8B030000 		.4byte	0x38b
 2067 0a0d C4       		.byte	0xc4
 2068 0a0e 1B       		.uleb128 0x1b
 2069 0a0f 45070000 		.4byte	.LASF149
 2070 0a13 0A       		.byte	0xa
 2071 0a14 6B02     		.2byte	0x26b
 2072 0a16 25000000 		.4byte	0x25
 2073 0a1a CC       		.byte	0xcc
 2074 0a1b 00       		.byte	0
 2075 0a1c 08       		.uleb128 0x8
 2076 0a1d EF070000 		.4byte	0x7ef
 2077 0a21 2C0A0000 		.4byte	0xa2c
 2078 0a25 09       		.uleb128 0x9
 2079 0a26 A8000000 		.4byte	0xa8
 2080 0a2a 19       		.byte	0x19
 2081 0a2b 00       		.byte	0
 2082 0a2c 08       		.uleb128 0x8
 2083 0a2d EF070000 		.4byte	0x7ef
 2084 0a31 3C0A0000 		.4byte	0xa3c
 2085 0a35 09       		.uleb128 0x9
 2086 0a36 A8000000 		.4byte	0xa8
 2087 0a3a 07       		.byte	0x7
 2088 0a3b 00       		.byte	0
 2089 0a3c 08       		.uleb128 0x8
 2090 0a3d EF070000 		.4byte	0x7ef
 2091 0a41 4C0A0000 		.4byte	0xa4c
 2092 0a45 09       		.uleb128 0x9
 2093 0a46 A8000000 		.4byte	0xa8
 2094 0a4a 17       		.byte	0x17
 2095 0a4b 00       		.byte	0
 2096 0a4c 1E       		.uleb128 0x1e
 2097 0a4d F0       		.byte	0xf0
 2098 0a4e 0A       		.byte	0xa
 2099 0a4f 7002     		.2byte	0x270
 2100 0a51 700A0000 		.4byte	0xa70
 2101 0a55 1B       		.uleb128 0x1b
 2102 0a56 54040000 		.4byte	.LASF150
 2103 0a5a 0A       		.byte	0xa
 2104 0a5b 7302     		.2byte	0x273
 2105 0a5d 700A0000 		.4byte	0xa70
 2106 0a61 00       		.byte	0
 2107 0a62 1B       		.uleb128 0x1b
 2108 0a63 23030000 		.4byte	.LASF151
 2109 0a67 0A       		.byte	0xa
 2110 0a68 7402     		.2byte	0x274
 2111 0a6a 800A0000 		.4byte	0xa80
 2112 0a6e 78       		.byte	0x78
 2113 0a6f 00       		.byte	0
 2114 0a70 08       		.uleb128 0x8
 2115 0a71 5E050000 		.4byte	0x55e
 2116 0a75 800A0000 		.4byte	0xa80
ARM GAS  /tmp/cc3LTPp7.s 			page 49


 2117 0a79 09       		.uleb128 0x9
 2118 0a7a A8000000 		.4byte	0xa8
 2119 0a7e 1D       		.byte	0x1d
 2120 0a7f 00       		.byte	0
 2121 0a80 08       		.uleb128 0x8
 2122 0a81 2C000000 		.4byte	0x2c
 2123 0a85 900A0000 		.4byte	0xa90
 2124 0a89 09       		.uleb128 0x9
 2125 0a8a A8000000 		.4byte	0xa8
 2126 0a8e 1D       		.byte	0x1d
 2127 0a8f 00       		.byte	0
 2128 0a90 1F       		.uleb128 0x1f
 2129 0a91 F0       		.byte	0xf0
 2130 0a92 0A       		.byte	0xa
 2131 0a93 5502     		.2byte	0x255
 2132 0a95 B20A0000 		.4byte	0xab2
 2133 0a99 20       		.uleb128 0x20
 2134 0a9a FD070000 		.4byte	.LASF100
 2135 0a9e 0A       		.byte	0xa
 2136 0a9f 6C02     		.2byte	0x26c
 2137 0aa1 1B090000 		.4byte	0x91b
 2138 0aa5 20       		.uleb128 0x20
 2139 0aa6 B40A0000 		.4byte	.LASF152
 2140 0aaa 0A       		.byte	0xa
 2141 0aab 7502     		.2byte	0x275
 2142 0aad 4C0A0000 		.4byte	0xa4c
 2143 0ab1 00       		.byte	0
 2144 0ab2 08       		.uleb128 0x8
 2145 0ab3 EF070000 		.4byte	0x7ef
 2146 0ab7 C20A0000 		.4byte	0xac2
 2147 0abb 09       		.uleb128 0x9
 2148 0abc A8000000 		.4byte	0xa8
 2149 0ac0 18       		.byte	0x18
 2150 0ac1 00       		.byte	0
 2151 0ac2 21       		.uleb128 0x21
 2152 0ac3 CD0A0000 		.4byte	0xacd
 2153 0ac7 19       		.uleb128 0x19
 2154 0ac8 AC060000 		.4byte	0x6ac
 2155 0acc 00       		.byte	0
 2156 0acd 15       		.uleb128 0x15
 2157 0ace 04       		.byte	0x4
 2158 0acf C20A0000 		.4byte	0xac2
 2159 0ad3 15       		.uleb128 0x15
 2160 0ad4 04       		.byte	0x4
 2161 0ad5 FF030000 		.4byte	0x3ff
 2162 0ad9 21       		.uleb128 0x21
 2163 0ada E40A0000 		.4byte	0xae4
 2164 0ade 19       		.uleb128 0x19
 2165 0adf 25000000 		.4byte	0x25
 2166 0ae3 00       		.byte	0
 2167 0ae4 15       		.uleb128 0x15
 2168 0ae5 04       		.byte	0x4
 2169 0ae6 EA0A0000 		.4byte	0xaea
 2170 0aea 15       		.uleb128 0x15
 2171 0aeb 04       		.byte	0x4
 2172 0aec D90A0000 		.4byte	0xad9
 2173 0af0 08       		.uleb128 0x8
ARM GAS  /tmp/cc3LTPp7.s 			page 50


 2174 0af1 89080000 		.4byte	0x889
 2175 0af5 000B0000 		.4byte	0xb00
 2176 0af9 09       		.uleb128 0x9
 2177 0afa A8000000 		.4byte	0xa8
 2178 0afe 02       		.byte	0x2
 2179 0aff 00       		.byte	0
 2180 0b00 0A       		.uleb128 0xa
 2181 0b01 F8020000 		.4byte	.LASF153
 2182 0b05 0A       		.byte	0xa
 2183 0b06 FD02     		.2byte	0x2fd
 2184 0b08 AC060000 		.4byte	0x6ac
 2185 0b0c 0A       		.uleb128 0xa
 2186 0b0d 080A0000 		.4byte	.LASF154
 2187 0b11 0A       		.byte	0xa
 2188 0b12 FE02     		.2byte	0x2fe
 2189 0b14 B2060000 		.4byte	0x6b2
 2190 0b18 0B       		.uleb128 0xb
 2191 0b19 68060000 		.4byte	.LASF155
 2192 0b1d 0B       		.byte	0xb
 2193 0b1e 5F       		.byte	0x5f
 2194 0b1f E9070000 		.4byte	0x7e9
 2195 0b23 0B       		.uleb128 0xb
 2196 0b24 C9060000 		.4byte	.LASF156
 2197 0b28 0C       		.byte	0xc
 2198 0b29 8F       		.byte	0x8f
 2199 0b2a 350B0000 		.4byte	0xb35
 2200 0b2e 03       		.uleb128 0x3
 2201 0b2f 01       		.byte	0x1
 2202 0b30 02       		.byte	0x2
 2203 0b31 19070000 		.4byte	.LASF157
 2204 0b35 05       		.uleb128 0x5
 2205 0b36 2E0B0000 		.4byte	0xb2e
 2206 0b3a 22       		.uleb128 0x22
 2207 0b3b 780A0000 		.4byte	.LASF158
 2208 0b3f 0C       		.byte	0xc
 2209 0b40 94       		.byte	0x94
 2210 0b41 9C000000 		.4byte	0x9c
 2211 0b45 05       		.uleb128 0x5
 2212 0b46 03       		.byte	0x3
 2213 0b47 00000000 		.4byte	cpu_irq_critical_section_counter
 2214 0b4b 22       		.uleb128 0x22
 2215 0b4c 0F050000 		.4byte	.LASF159
 2216 0b50 0C       		.byte	0xc
 2217 0b51 95       		.byte	0x95
 2218 0b52 350B0000 		.4byte	0xb35
 2219 0b56 05       		.uleb128 0x5
 2220 0b57 03       		.byte	0x3
 2221 0b58 00000000 		.4byte	cpu_irq_prev_interrupt_state
 2222 0b5c 03       		.uleb128 0x3
 2223 0b5d 04       		.byte	0x4
 2224 0b5e 04       		.byte	0x4
 2225 0b5f C3060000 		.4byte	.LASF160
 2226 0b63 03       		.uleb128 0x3
 2227 0b64 08       		.byte	0x8
 2228 0b65 04       		.byte	0x4
 2229 0b66 46020000 		.4byte	.LASF161
 2230 0b6a 23       		.uleb128 0x23
ARM GAS  /tmp/cc3LTPp7.s 			page 51


 2231 0b6b 01       		.byte	0x1
 2232 0b6c 3A000000 		.4byte	0x3a
 2233 0b70 0D       		.byte	0xd
 2234 0b71 40       		.byte	0x40
 2235 0b72 A70B0000 		.4byte	0xba7
 2236 0b76 24       		.uleb128 0x24
 2237 0b77 71090000 		.4byte	.LASF162
 2238 0b7b 00       		.byte	0
 2239 0b7c 24       		.uleb128 0x24
 2240 0b7d 81030000 		.4byte	.LASF163
 2241 0b81 01       		.byte	0x1
 2242 0b82 24       		.uleb128 0x24
 2243 0b83 6B050000 		.4byte	.LASF164
 2244 0b87 02       		.byte	0x2
 2245 0b88 24       		.uleb128 0x24
 2246 0b89 3E0B0000 		.4byte	.LASF165
 2247 0b8d 03       		.byte	0x3
 2248 0b8e 24       		.uleb128 0x24
 2249 0b8f DD060000 		.4byte	.LASF166
 2250 0b93 04       		.byte	0x4
 2251 0b94 24       		.uleb128 0x24
 2252 0b95 F00A0000 		.4byte	.LASF167
 2253 0b99 05       		.byte	0x5
 2254 0b9a 24       		.uleb128 0x24
 2255 0b9b D1070000 		.4byte	.LASF168
 2256 0b9f 06       		.byte	0x6
 2257 0ba0 24       		.uleb128 0x24
 2258 0ba1 AD030000 		.4byte	.LASF169
 2259 0ba5 07       		.byte	0x7
 2260 0ba6 00       		.byte	0
 2261 0ba7 04       		.uleb128 0x4
 2262 0ba8 BA090000 		.4byte	.LASF170
 2263 0bac 0D       		.byte	0xd
 2264 0bad 4B       		.byte	0x4b
 2265 0bae 6A0B0000 		.4byte	0xb6a
 2266 0bb2 23       		.uleb128 0x23
 2267 0bb3 04       		.byte	0x4
 2268 0bb4 2C000000 		.4byte	0x2c
 2269 0bb8 0D       		.byte	0xd
 2270 0bb9 4E       		.byte	0x4e
 2271 0bba D70B0000 		.4byte	0xbd7
 2272 0bbe 24       		.uleb128 0x24
 2273 0bbf 72060000 		.4byte	.LASF171
 2274 0bc3 00       		.byte	0
 2275 0bc4 25       		.uleb128 0x25
 2276 0bc5 FA010000 		.4byte	.LASF172
 2277 0bc9 00000100 		.4byte	0x10000
 2278 0bcd 25       		.uleb128 0x25
 2279 0bce EB040000 		.4byte	.LASF173
 2280 0bd2 00000200 		.4byte	0x20000
 2281 0bd6 00       		.byte	0
 2282 0bd7 04       		.uleb128 0x4
 2283 0bd8 1D020000 		.4byte	.LASF174
 2284 0bdc 0D       		.byte	0xd
 2285 0bdd 52       		.byte	0x52
 2286 0bde B20B0000 		.4byte	0xbb2
 2287 0be2 26       		.uleb128 0x26
ARM GAS  /tmp/cc3LTPp7.s 			page 52


 2288 0be3 D7080000 		.4byte	.LASF177
 2289 0be7 01       		.byte	0x1
 2290 0be8 5A02     		.2byte	0x25a
 2291 0bea 00000000 		.4byte	.LFB163
 2292 0bee 20000000 		.4byte	.LFE163-.LFB163
 2293 0bf2 01       		.uleb128 0x1
 2294 0bf3 9C       		.byte	0x9c
 2295 0bf4 280C0000 		.4byte	0xc28
 2296 0bf8 27       		.uleb128 0x27
 2297 0bf9 CE020000 		.4byte	.LASF179
 2298 0bfd 01       		.byte	0x1
 2299 0bfe 5A02     		.2byte	0x25a
 2300 0c00 91000000 		.4byte	0x91
 2301 0c04 00000000 		.4byte	.LLST20
 2302 0c08 28       		.uleb128 0x28
 2303 0c09 69000000 		.4byte	.LASF175
 2304 0c0d 01       		.byte	0x1
 2305 0c0e 5C02     		.2byte	0x25c
 2306 0c10 280C0000 		.4byte	0xc28
 2307 0c14 00800840 		.4byte	0x40088000
 2308 0c18 29       		.uleb128 0x29
 2309 0c19 9B090000 		.4byte	.LASF176
 2310 0c1d 01       		.byte	0x1
 2311 0c1e 5D02     		.2byte	0x25d
 2312 0c20 9C000000 		.4byte	0x9c
 2313 0c24 02       		.uleb128 0x2
 2314 0c25 91       		.byte	0x91
 2315 0c26 7C       		.sleb128 -4
 2316 0c27 00       		.byte	0
 2317 0c28 15       		.uleb128 0x15
 2318 0c29 04       		.byte	0x4
 2319 0c2a 03030000 		.4byte	0x303
 2320 0c2e 26       		.uleb128 0x26
 2321 0c2f 65070000 		.4byte	.LASF178
 2322 0c33 01       		.byte	0x1
 2323 0c34 4F02     		.2byte	0x24f
 2324 0c36 00000000 		.4byte	.LFB162
 2325 0c3a 10000000 		.4byte	.LFE162-.LFB162
 2326 0c3e 01       		.uleb128 0x1
 2327 0c3f 9C       		.byte	0x9c
 2328 0c40 650C0000 		.4byte	0xc65
 2329 0c44 27       		.uleb128 0x27
 2330 0c45 CE020000 		.4byte	.LASF179
 2331 0c49 01       		.byte	0x1
 2332 0c4a 4F02     		.2byte	0x24f
 2333 0c4c 91000000 		.4byte	0x91
 2334 0c50 21000000 		.4byte	.LLST19
 2335 0c54 28       		.uleb128 0x28
 2336 0c55 69000000 		.4byte	.LASF175
 2337 0c59 01       		.byte	0x1
 2338 0c5a 5102     		.2byte	0x251
 2339 0c5c 280C0000 		.4byte	0xc28
 2340 0c60 00800840 		.4byte	0x40088000
 2341 0c64 00       		.byte	0
 2342 0c65 2A       		.uleb128 0x2a
 2343 0c66 590A0000 		.4byte	.LASF182
 2344 0c6a 01       		.byte	0x1
ARM GAS  /tmp/cc3LTPp7.s 			page 53


 2345 0c6b 2502     		.2byte	0x225
 2346 0c6d 91000000 		.4byte	0x91
 2347 0c71 00000000 		.4byte	.LFB161
 2348 0c75 0C000000 		.4byte	.LFE161-.LFB161
 2349 0c79 01       		.uleb128 0x1
 2350 0c7a 9C       		.byte	0x9c
 2351 0c7b 900C0000 		.4byte	0xc90
 2352 0c7f 28       		.uleb128 0x28
 2353 0c80 69000000 		.4byte	.LASF175
 2354 0c84 01       		.byte	0x1
 2355 0c85 2702     		.2byte	0x227
 2356 0c87 280C0000 		.4byte	0xc28
 2357 0c8b 00800840 		.4byte	0x40088000
 2358 0c8f 00       		.byte	0
 2359 0c90 26       		.uleb128 0x26
 2360 0c91 95050000 		.4byte	.LASF180
 2361 0c95 01       		.byte	0x1
 2362 0c96 1502     		.2byte	0x215
 2363 0c98 00000000 		.4byte	.LFB160
 2364 0c9c 20000000 		.4byte	.LFE160-.LFB160
 2365 0ca0 01       		.uleb128 0x1
 2366 0ca1 9C       		.byte	0x9c
 2367 0ca2 C50C0000 		.4byte	0xcc5
 2368 0ca6 2B       		.uleb128 0x2b
 2369 0ca7 EB070000 		.4byte	.LASF181
 2370 0cab 01       		.byte	0x1
 2371 0cac 1502     		.2byte	0x215
 2372 0cae 91000000 		.4byte	0x91
 2373 0cb2 01       		.uleb128 0x1
 2374 0cb3 50       		.byte	0x50
 2375 0cb4 28       		.uleb128 0x28
 2376 0cb5 69000000 		.4byte	.LASF175
 2377 0cb9 01       		.byte	0x1
 2378 0cba 1702     		.2byte	0x217
 2379 0cbc 280C0000 		.4byte	0xc28
 2380 0cc0 00800840 		.4byte	0x40088000
 2381 0cc4 00       		.byte	0
 2382 0cc5 2A       		.uleb128 0x2a
 2383 0cc6 A2090000 		.4byte	.LASF183
 2384 0cca 01       		.byte	0x1
 2385 0ccb FE01     		.2byte	0x1fe
 2386 0ccd 91000000 		.4byte	0x91
 2387 0cd1 00000000 		.4byte	.LFB159
 2388 0cd5 0C000000 		.4byte	.LFE159-.LFB159
 2389 0cd9 01       		.uleb128 0x1
 2390 0cda 9C       		.byte	0x9c
 2391 0cdb F00C0000 		.4byte	0xcf0
 2392 0cdf 28       		.uleb128 0x28
 2393 0ce0 69000000 		.4byte	.LASF175
 2394 0ce4 01       		.byte	0x1
 2395 0ce5 0002     		.2byte	0x200
 2396 0ce7 280C0000 		.4byte	0xc28
 2397 0ceb 00800840 		.4byte	0x40088000
 2398 0cef 00       		.byte	0
 2399 0cf0 26       		.uleb128 0x26
 2400 0cf1 2C000000 		.4byte	.LASF184
 2401 0cf5 01       		.byte	0x1
ARM GAS  /tmp/cc3LTPp7.s 			page 54


 2402 0cf6 E901     		.2byte	0x1e9
 2403 0cf8 00000000 		.4byte	.LFB158
 2404 0cfc 0C000000 		.4byte	.LFE158-.LFB158
 2405 0d00 01       		.uleb128 0x1
 2406 0d01 9C       		.byte	0x9c
 2407 0d02 250D0000 		.4byte	0xd25
 2408 0d06 2B       		.uleb128 0x2b
 2409 0d07 CE030000 		.4byte	.LASF185
 2410 0d0b 01       		.byte	0x1
 2411 0d0c E901     		.2byte	0x1e9
 2412 0d0e 91000000 		.4byte	0x91
 2413 0d12 01       		.uleb128 0x1
 2414 0d13 50       		.byte	0x50
 2415 0d14 28       		.uleb128 0x28
 2416 0d15 69000000 		.4byte	.LASF175
 2417 0d19 01       		.byte	0x1
 2418 0d1a EB01     		.2byte	0x1eb
 2419 0d1c 280C0000 		.4byte	0xc28
 2420 0d20 00800840 		.4byte	0x40088000
 2421 0d24 00       		.byte	0
 2422 0d25 2A       		.uleb128 0x2a
 2423 0d26 5B040000 		.4byte	.LASF186
 2424 0d2a 01       		.byte	0x1
 2425 0d2b CC01     		.2byte	0x1cc
 2426 0d2d 91000000 		.4byte	0x91
 2427 0d31 00000000 		.4byte	.LFB157
 2428 0d35 10000000 		.4byte	.LFE157-.LFB157
 2429 0d39 01       		.uleb128 0x1
 2430 0d3a 9C       		.byte	0x9c
 2431 0d3b 500D0000 		.4byte	0xd50
 2432 0d3f 28       		.uleb128 0x28
 2433 0d40 69000000 		.4byte	.LASF175
 2434 0d44 01       		.byte	0x1
 2435 0d45 CE01     		.2byte	0x1ce
 2436 0d47 280C0000 		.4byte	0xc28
 2437 0d4b 00800840 		.4byte	0x40088000
 2438 0d4f 00       		.byte	0
 2439 0d50 26       		.uleb128 0x26
 2440 0d51 990A0000 		.4byte	.LASF187
 2441 0d55 01       		.byte	0x1
 2442 0d56 B201     		.2byte	0x1b2
 2443 0d58 00000000 		.4byte	.LFB156
 2444 0d5c 24000000 		.4byte	.LFE156-.LFB156
 2445 0d60 01       		.uleb128 0x1
 2446 0d61 9C       		.byte	0x9c
 2447 0d62 870D0000 		.4byte	0xd87
 2448 0d66 27       		.uleb128 0x27
 2449 0d67 C0020000 		.4byte	.LASF188
 2450 0d6b 01       		.byte	0x1
 2451 0d6c B201     		.2byte	0x1b2
 2452 0d6e 91000000 		.4byte	0x91
 2453 0d72 42000000 		.4byte	.LLST18
 2454 0d76 28       		.uleb128 0x28
 2455 0d77 69000000 		.4byte	.LASF175
 2456 0d7b 01       		.byte	0x1
 2457 0d7c B401     		.2byte	0x1b4
 2458 0d7e 280C0000 		.4byte	0xc28
ARM GAS  /tmp/cc3LTPp7.s 			page 55


 2459 0d82 00800840 		.4byte	0x40088000
 2460 0d86 00       		.byte	0
 2461 0d87 2A       		.uleb128 0x2a
 2462 0d88 72000000 		.4byte	.LASF189
 2463 0d8c 01       		.byte	0x1
 2464 0d8d A201     		.2byte	0x1a2
 2465 0d8f 91000000 		.4byte	0x91
 2466 0d93 00000000 		.4byte	.LFB155
 2467 0d97 0C000000 		.4byte	.LFE155-.LFB155
 2468 0d9b 01       		.uleb128 0x1
 2469 0d9c 9C       		.byte	0x9c
 2470 0d9d B20D0000 		.4byte	0xdb2
 2471 0da1 28       		.uleb128 0x28
 2472 0da2 69000000 		.4byte	.LASF175
 2473 0da6 01       		.byte	0x1
 2474 0da7 A401     		.2byte	0x1a4
 2475 0da9 280C0000 		.4byte	0xc28
 2476 0dad 00800840 		.4byte	0x40088000
 2477 0db1 00       		.byte	0
 2478 0db2 26       		.uleb128 0x26
 2479 0db3 FC080000 		.4byte	.LASF190
 2480 0db7 01       		.byte	0x1
 2481 0db8 9601     		.2byte	0x196
 2482 0dba 00000000 		.4byte	.LFB154
 2483 0dbe 0C000000 		.4byte	.LFE154-.LFB154
 2484 0dc2 01       		.uleb128 0x1
 2485 0dc3 9C       		.byte	0x9c
 2486 0dc4 E70D0000 		.4byte	0xde7
 2487 0dc8 2B       		.uleb128 0x2b
 2488 0dc9 B9080000 		.4byte	.LASF191
 2489 0dcd 01       		.byte	0x1
 2490 0dce 9601     		.2byte	0x196
 2491 0dd0 91000000 		.4byte	0x91
 2492 0dd4 01       		.uleb128 0x1
 2493 0dd5 50       		.byte	0x50
 2494 0dd6 28       		.uleb128 0x28
 2495 0dd7 69000000 		.4byte	.LASF175
 2496 0ddb 01       		.byte	0x1
 2497 0ddc 9801     		.2byte	0x198
 2498 0dde 280C0000 		.4byte	0xc28
 2499 0de2 00800840 		.4byte	0x40088000
 2500 0de6 00       		.byte	0
 2501 0de7 2A       		.uleb128 0x2a
 2502 0de8 2C050000 		.4byte	.LASF192
 2503 0dec 01       		.byte	0x1
 2504 0ded 7A01     		.2byte	0x17a
 2505 0def 91000000 		.4byte	0x91
 2506 0df3 00000000 		.4byte	.LFB153
 2507 0df7 0C000000 		.4byte	.LFE153-.LFB153
 2508 0dfb 01       		.uleb128 0x1
 2509 0dfc 9C       		.byte	0x9c
 2510 0dfd 220E0000 		.4byte	0xe22
 2511 0e01 27       		.uleb128 0x27
 2512 0e02 E3090000 		.4byte	.LASF193
 2513 0e06 01       		.byte	0x1
 2514 0e07 7A01     		.2byte	0x17a
 2515 0e09 91000000 		.4byte	0x91
ARM GAS  /tmp/cc3LTPp7.s 			page 56


 2516 0e0d 63000000 		.4byte	.LLST17
 2517 0e11 28       		.uleb128 0x28
 2518 0e12 69000000 		.4byte	.LASF175
 2519 0e16 01       		.byte	0x1
 2520 0e17 7D01     		.2byte	0x17d
 2521 0e19 280C0000 		.4byte	0xc28
 2522 0e1d 00800840 		.4byte	0x40088000
 2523 0e21 00       		.byte	0
 2524 0e22 26       		.uleb128 0x26
 2525 0e23 4B090000 		.4byte	.LASF194
 2526 0e27 01       		.byte	0x1
 2527 0e28 5F01     		.2byte	0x15f
 2528 0e2a 00000000 		.4byte	.LFB152
 2529 0e2e 0C000000 		.4byte	.LFE152-.LFB152
 2530 0e32 01       		.uleb128 0x1
 2531 0e33 9C       		.byte	0x9c
 2532 0e34 670E0000 		.4byte	0xe67
 2533 0e38 27       		.uleb128 0x27
 2534 0e39 E3090000 		.4byte	.LASF193
 2535 0e3d 01       		.byte	0x1
 2536 0e3e 5F01     		.2byte	0x15f
 2537 0e40 91000000 		.4byte	0x91
 2538 0e44 84000000 		.4byte	.LLST16
 2539 0e48 2B       		.uleb128 0x2b
 2540 0e49 EE020000 		.4byte	.LASF195
 2541 0e4d 01       		.byte	0x1
 2542 0e4e 5F01     		.2byte	0x15f
 2543 0e50 91000000 		.4byte	0x91
 2544 0e54 01       		.uleb128 0x1
 2545 0e55 51       		.byte	0x51
 2546 0e56 28       		.uleb128 0x28
 2547 0e57 69000000 		.4byte	.LASF175
 2548 0e5b 01       		.byte	0x1
 2549 0e5c 6201     		.2byte	0x162
 2550 0e5e 280C0000 		.4byte	0xc28
 2551 0e62 00800840 		.4byte	0x40088000
 2552 0e66 00       		.byte	0
 2553 0e67 2A       		.uleb128 0x2a
 2554 0e68 E4000000 		.4byte	.LASF196
 2555 0e6c 01       		.byte	0x1
 2556 0e6d 4401     		.2byte	0x144
 2557 0e6f 91000000 		.4byte	0x91
 2558 0e73 00000000 		.4byte	.LFB151
 2559 0e77 10000000 		.4byte	.LFE151-.LFB151
 2560 0e7b 01       		.uleb128 0x1
 2561 0e7c 9C       		.byte	0x9c
 2562 0e7d A20E0000 		.4byte	0xea2
 2563 0e81 27       		.uleb128 0x27
 2564 0e82 E3090000 		.4byte	.LASF193
 2565 0e86 01       		.byte	0x1
 2566 0e87 4401     		.2byte	0x144
 2567 0e89 91000000 		.4byte	0x91
 2568 0e8d A5000000 		.4byte	.LLST15
 2569 0e91 28       		.uleb128 0x28
 2570 0e92 69000000 		.4byte	.LASF175
 2571 0e96 01       		.byte	0x1
 2572 0e97 4701     		.2byte	0x147
ARM GAS  /tmp/cc3LTPp7.s 			page 57


 2573 0e99 280C0000 		.4byte	0xc28
 2574 0e9d 00800840 		.4byte	0x40088000
 2575 0ea1 00       		.byte	0
 2576 0ea2 26       		.uleb128 0x26
 2577 0ea3 31090000 		.4byte	.LASF197
 2578 0ea7 01       		.byte	0x1
 2579 0ea8 2901     		.2byte	0x129
 2580 0eaa 00000000 		.4byte	.LFB150
 2581 0eae 10000000 		.4byte	.LFE150-.LFB150
 2582 0eb2 01       		.uleb128 0x1
 2583 0eb3 9C       		.byte	0x9c
 2584 0eb4 E70E0000 		.4byte	0xee7
 2585 0eb8 27       		.uleb128 0x27
 2586 0eb9 E3090000 		.4byte	.LASF193
 2587 0ebd 01       		.byte	0x1
 2588 0ebe 2901     		.2byte	0x129
 2589 0ec0 91000000 		.4byte	0x91
 2590 0ec4 D3000000 		.4byte	.LLST14
 2591 0ec8 2B       		.uleb128 0x2b
 2592 0ec9 1C040000 		.4byte	.LASF198
 2593 0ecd 01       		.byte	0x1
 2594 0ece 2901     		.2byte	0x129
 2595 0ed0 91000000 		.4byte	0x91
 2596 0ed4 01       		.uleb128 0x1
 2597 0ed5 51       		.byte	0x51
 2598 0ed6 28       		.uleb128 0x28
 2599 0ed7 69000000 		.4byte	.LASF175
 2600 0edb 01       		.byte	0x1
 2601 0edc 2C01     		.2byte	0x12c
 2602 0ede 280C0000 		.4byte	0xc28
 2603 0ee2 00800840 		.4byte	0x40088000
 2604 0ee6 00       		.byte	0
 2605 0ee7 2C       		.uleb128 0x2c
 2606 0ee8 4D020000 		.4byte	.LASF199
 2607 0eec 01       		.byte	0x1
 2608 0eed F7       		.byte	0xf7
 2609 0eee 91000000 		.4byte	0x91
 2610 0ef2 00000000 		.4byte	.LFB149
 2611 0ef6 1C000000 		.4byte	.LFE149-.LFB149
 2612 0efa 01       		.uleb128 0x1
 2613 0efb 9C       		.byte	0x9c
 2614 0efc 2D0F0000 		.4byte	0xf2d
 2615 0f00 2D       		.uleb128 0x2d
 2616 0f01 E3090000 		.4byte	.LASF193
 2617 0f05 01       		.byte	0x1
 2618 0f06 F7       		.byte	0xf7
 2619 0f07 91000000 		.4byte	0x91
 2620 0f0b F3000000 		.4byte	.LLST13
 2621 0f0f 2E       		.uleb128 0x2e
 2622 0f10 69000000 		.4byte	.LASF175
 2623 0f14 01       		.byte	0x1
 2624 0f15 F9       		.byte	0xf9
 2625 0f16 280C0000 		.4byte	0xc28
 2626 0f1a 00800840 		.4byte	0x40088000
 2627 0f1e 22       		.uleb128 0x22
 2628 0f1f 9B090000 		.4byte	.LASF176
 2629 0f23 01       		.byte	0x1
ARM GAS  /tmp/cc3LTPp7.s 			page 58


 2630 0f24 FA       		.byte	0xfa
 2631 0f25 9C000000 		.4byte	0x9c
 2632 0f29 02       		.uleb128 0x2
 2633 0f2a 91       		.byte	0x91
 2634 0f2b 7C       		.sleb128 -4
 2635 0f2c 00       		.byte	0
 2636 0f2d 2F       		.uleb128 0x2f
 2637 0f2e 8C020000 		.4byte	.LASF200
 2638 0f32 01       		.byte	0x1
 2639 0f33 E5       		.byte	0xe5
 2640 0f34 00000000 		.4byte	.LFB148
 2641 0f38 24000000 		.4byte	.LFE148-.LFB148
 2642 0f3c 01       		.uleb128 0x1
 2643 0f3d 9C       		.byte	0x9c
 2644 0f3e 7E0F0000 		.4byte	0xf7e
 2645 0f42 2D       		.uleb128 0x2d
 2646 0f43 E3090000 		.4byte	.LASF193
 2647 0f47 01       		.byte	0x1
 2648 0f48 E5       		.byte	0xe5
 2649 0f49 91000000 		.4byte	0x91
 2650 0f4d 21010000 		.4byte	.LLST11
 2651 0f51 2D       		.uleb128 0x2d
 2652 0f52 14090000 		.4byte	.LASF201
 2653 0f56 01       		.byte	0x1
 2654 0f57 E5       		.byte	0xe5
 2655 0f58 91000000 		.4byte	0x91
 2656 0f5c 42010000 		.4byte	.LLST12
 2657 0f60 2E       		.uleb128 0x2e
 2658 0f61 69000000 		.4byte	.LASF175
 2659 0f65 01       		.byte	0x1
 2660 0f66 E7       		.byte	0xe7
 2661 0f67 280C0000 		.4byte	0xc28
 2662 0f6b 00800840 		.4byte	0x40088000
 2663 0f6f 22       		.uleb128 0x22
 2664 0f70 9B090000 		.4byte	.LASF176
 2665 0f74 01       		.byte	0x1
 2666 0f75 E8       		.byte	0xe8
 2667 0f76 9C000000 		.4byte	0x9c
 2668 0f7a 02       		.uleb128 0x2
 2669 0f7b 91       		.byte	0x91
 2670 0f7c 7C       		.sleb128 -4
 2671 0f7d 00       		.byte	0
 2672 0f7e 2C       		.uleb128 0x2c
 2673 0f7f C6040000 		.4byte	.LASF202
 2674 0f83 01       		.byte	0x1
 2675 0f84 D6       		.byte	0xd6
 2676 0f85 D70B0000 		.4byte	0xbd7
 2677 0f89 00000000 		.4byte	.LFB147
 2678 0f8d 1C000000 		.4byte	.LFE147-.LFB147
 2679 0f91 01       		.uleb128 0x1
 2680 0f92 9C       		.byte	0x9c
 2681 0f93 C40F0000 		.4byte	0xfc4
 2682 0f97 2D       		.uleb128 0x2d
 2683 0f98 E3090000 		.4byte	.LASF193
 2684 0f9c 01       		.byte	0x1
 2685 0f9d D6       		.byte	0xd6
 2686 0f9e 91000000 		.4byte	0x91
ARM GAS  /tmp/cc3LTPp7.s 			page 59


 2687 0fa2 63010000 		.4byte	.LLST10
 2688 0fa6 2E       		.uleb128 0x2e
 2689 0fa7 69000000 		.4byte	.LASF175
 2690 0fab 01       		.byte	0x1
 2691 0fac D8       		.byte	0xd8
 2692 0fad 280C0000 		.4byte	0xc28
 2693 0fb1 00800840 		.4byte	0x40088000
 2694 0fb5 22       		.uleb128 0x22
 2695 0fb6 9B090000 		.4byte	.LASF176
 2696 0fba 01       		.byte	0x1
 2697 0fbb D9       		.byte	0xd9
 2698 0fbc 9C000000 		.4byte	0x9c
 2699 0fc0 02       		.uleb128 0x2
 2700 0fc1 91       		.byte	0x91
 2701 0fc2 7C       		.sleb128 -4
 2702 0fc3 00       		.byte	0
 2703 0fc4 2F       		.uleb128 0x2f
 2704 0fc5 44000000 		.4byte	.LASF203
 2705 0fc9 01       		.byte	0x1
 2706 0fca C6       		.byte	0xc6
 2707 0fcb 00000000 		.4byte	.LFB146
 2708 0fcf 20000000 		.4byte	.LFE146-.LFB146
 2709 0fd3 01       		.uleb128 0x1
 2710 0fd4 9C       		.byte	0x9c
 2711 0fd5 15100000 		.4byte	0x1015
 2712 0fd9 2D       		.uleb128 0x2d
 2713 0fda E3090000 		.4byte	.LASF193
 2714 0fde 01       		.byte	0x1
 2715 0fdf C6       		.byte	0xc6
 2716 0fe0 91000000 		.4byte	0x91
 2717 0fe4 91010000 		.4byte	.LLST8
 2718 0fe8 2D       		.uleb128 0x2d
 2719 0fe9 A8000000 		.4byte	.LASF204
 2720 0fed 01       		.byte	0x1
 2721 0fee C6       		.byte	0xc6
 2722 0fef D70B0000 		.4byte	0xbd7
 2723 0ff3 B2010000 		.4byte	.LLST9
 2724 0ff7 2E       		.uleb128 0x2e
 2725 0ff8 69000000 		.4byte	.LASF175
 2726 0ffc 01       		.byte	0x1
 2727 0ffd C8       		.byte	0xc8
 2728 0ffe 280C0000 		.4byte	0xc28
 2729 1002 00800840 		.4byte	0x40088000
 2730 1006 22       		.uleb128 0x22
 2731 1007 9B090000 		.4byte	.LASF176
 2732 100b 01       		.byte	0x1
 2733 100c C9       		.byte	0xc9
 2734 100d 9C000000 		.4byte	0x9c
 2735 1011 02       		.uleb128 0x2
 2736 1012 91       		.byte	0x91
 2737 1013 7C       		.sleb128 -4
 2738 1014 00       		.byte	0
 2739 1015 2C       		.uleb128 0x2c
 2740 1016 3D0A0000 		.4byte	.LASF205
 2741 101a 01       		.byte	0x1
 2742 101b B7       		.byte	0xb7
 2743 101c 91000000 		.4byte	0x91
ARM GAS  /tmp/cc3LTPp7.s 			page 60


 2744 1020 00000000 		.4byte	.LFB145
 2745 1024 1C000000 		.4byte	.LFE145-.LFB145
 2746 1028 01       		.uleb128 0x1
 2747 1029 9C       		.byte	0x9c
 2748 102a 5B100000 		.4byte	0x105b
 2749 102e 2D       		.uleb128 0x2d
 2750 102f E3090000 		.4byte	.LASF193
 2751 1033 01       		.byte	0x1
 2752 1034 B7       		.byte	0xb7
 2753 1035 91000000 		.4byte	0x91
 2754 1039 D3010000 		.4byte	.LLST7
 2755 103d 2E       		.uleb128 0x2e
 2756 103e 69000000 		.4byte	.LASF175
 2757 1042 01       		.byte	0x1
 2758 1043 B9       		.byte	0xb9
 2759 1044 280C0000 		.4byte	0xc28
 2760 1048 00800840 		.4byte	0x40088000
 2761 104c 22       		.uleb128 0x22
 2762 104d 9B090000 		.4byte	.LASF176
 2763 1051 01       		.byte	0x1
 2764 1052 BA       		.byte	0xba
 2765 1053 9C000000 		.4byte	0x9c
 2766 1057 02       		.uleb128 0x2
 2767 1058 91       		.byte	0x91
 2768 1059 7C       		.sleb128 -4
 2769 105a 00       		.byte	0
 2770 105b 2F       		.uleb128 0x2f
 2771 105c 65030000 		.4byte	.LASF206
 2772 1060 01       		.byte	0x1
 2773 1061 A6       		.byte	0xa6
 2774 1062 00000000 		.4byte	.LFB144
 2775 1066 28000000 		.4byte	.LFE144-.LFB144
 2776 106a 01       		.uleb128 0x1
 2777 106b 9C       		.byte	0x9c
 2778 106c AC100000 		.4byte	0x10ac
 2779 1070 2D       		.uleb128 0x2d
 2780 1071 E3090000 		.4byte	.LASF193
 2781 1075 01       		.byte	0x1
 2782 1076 A6       		.byte	0xa6
 2783 1077 91000000 		.4byte	0x91
 2784 107b 01020000 		.4byte	.LLST5
 2785 107f 2D       		.uleb128 0x2d
 2786 1080 9A040000 		.4byte	.LASF207
 2787 1084 01       		.byte	0x1
 2788 1085 A6       		.byte	0xa6
 2789 1086 91000000 		.4byte	0x91
 2790 108a 22020000 		.4byte	.LLST6
 2791 108e 2E       		.uleb128 0x2e
 2792 108f 69000000 		.4byte	.LASF175
 2793 1093 01       		.byte	0x1
 2794 1094 A8       		.byte	0xa8
 2795 1095 280C0000 		.4byte	0xc28
 2796 1099 00800840 		.4byte	0x40088000
 2797 109d 22       		.uleb128 0x22
 2798 109e 9B090000 		.4byte	.LASF176
 2799 10a2 01       		.byte	0x1
 2800 10a3 A9       		.byte	0xa9
ARM GAS  /tmp/cc3LTPp7.s 			page 61


 2801 10a4 9C000000 		.4byte	0x9c
 2802 10a8 02       		.uleb128 0x2
 2803 10a9 91       		.byte	0x91
 2804 10aa 7C       		.sleb128 -4
 2805 10ab 00       		.byte	0
 2806 10ac 2C       		.uleb128 0x2c
 2807 10ad A6060000 		.4byte	.LASF208
 2808 10b1 01       		.byte	0x1
 2809 10b2 87       		.byte	0x87
 2810 10b3 A70B0000 		.4byte	0xba7
 2811 10b7 00000000 		.4byte	.LFB143
 2812 10bb 1C000000 		.4byte	.LFE143-.LFB143
 2813 10bf 01       		.uleb128 0x1
 2814 10c0 9C       		.byte	0x9c
 2815 10c1 10110000 		.4byte	0x1110
 2816 10c5 2D       		.uleb128 0x2d
 2817 10c6 E3090000 		.4byte	.LASF193
 2818 10ca 01       		.byte	0x1
 2819 10cb 87       		.byte	0x87
 2820 10cc 91000000 		.4byte	0x91
 2821 10d0 43020000 		.4byte	.LLST2
 2822 10d4 2E       		.uleb128 0x2e
 2823 10d5 69000000 		.4byte	.LASF175
 2824 10d9 01       		.byte	0x1
 2825 10da 8A       		.byte	0x8a
 2826 10db 280C0000 		.4byte	0xc28
 2827 10df 00800840 		.4byte	0x40088000
 2828 10e3 30       		.uleb128 0x30
 2829 10e4 D0080000 		.4byte	.LASF209
 2830 10e8 01       		.byte	0x1
 2831 10e9 8B       		.byte	0x8b
 2832 10ea 10110000 		.4byte	0x1110
 2833 10ee 64020000 		.4byte	.LLST3
 2834 10f2 22       		.uleb128 0x22
 2835 10f3 9B090000 		.4byte	.LASF176
 2836 10f7 01       		.byte	0x1
 2837 10f8 8C       		.byte	0x8c
 2838 10f9 9C000000 		.4byte	0x9c
 2839 10fd 02       		.uleb128 0x2
 2840 10fe 91       		.byte	0x91
 2841 10ff 7C       		.sleb128 -4
 2842 1100 30       		.uleb128 0x30
 2843 1101 31030000 		.4byte	.LASF210
 2844 1105 01       		.byte	0x1
 2845 1106 8D       		.byte	0x8d
 2846 1107 91000000 		.4byte	0x91
 2847 110b A9020000 		.4byte	.LLST4
 2848 110f 00       		.byte	0
 2849 1110 15       		.uleb128 0x15
 2850 1111 04       		.byte	0x4
 2851 1112 9C000000 		.4byte	0x9c
 2852 1116 31       		.uleb128 0x31
 2853 1117 6A0B0000 		.4byte	.LASF215
 2854 111b 01       		.byte	0x1
 2855 111c 67       		.byte	0x67
 2856 111d 00000000 		.4byte	.LFB142
 2857 1121 20000000 		.4byte	.LFE142-.LFB142
ARM GAS  /tmp/cc3LTPp7.s 			page 62


 2858 1125 01       		.uleb128 0x1
 2859 1126 9C       		.byte	0x9c
 2860 1127 32       		.uleb128 0x32
 2861 1128 E3090000 		.4byte	.LASF193
 2862 112c 01       		.byte	0x1
 2863 112d 67       		.byte	0x67
 2864 112e 91000000 		.4byte	0x91
 2865 1132 01       		.uleb128 0x1
 2866 1133 50       		.byte	0x50
 2867 1134 2D       		.uleb128 0x2d
 2868 1135 9A0B0000 		.4byte	.LASF211
 2869 1139 01       		.byte	0x1
 2870 113a 67       		.byte	0x67
 2871 113b A70B0000 		.4byte	0xba7
 2872 113f CD020000 		.4byte	.LLST0
 2873 1143 2E       		.uleb128 0x2e
 2874 1144 69000000 		.4byte	.LASF175
 2875 1148 01       		.byte	0x1
 2876 1149 6A       		.byte	0x6a
 2877 114a 280C0000 		.4byte	0xc28
 2878 114e 00800840 		.4byte	0x40088000
 2879 1152 22       		.uleb128 0x22
 2880 1153 D0080000 		.4byte	.LASF209
 2881 1157 01       		.byte	0x1
 2882 1158 6B       		.byte	0x6b
 2883 1159 10110000 		.4byte	0x1110
 2884 115d 08       		.uleb128 0x8
 2885 115e 70       		.byte	0x70
 2886 115f 00       		.sleb128 0
 2887 1160 32       		.byte	0x32
 2888 1161 24       		.byte	0x24
 2889 1162 72       		.byte	0x72
 2890 1163 00       		.sleb128 0
 2891 1164 22       		.byte	0x22
 2892 1165 9F       		.byte	0x9f
 2893 1166 22       		.uleb128 0x22
 2894 1167 9B090000 		.4byte	.LASF176
 2895 116b 01       		.byte	0x1
 2896 116c 6C       		.byte	0x6c
 2897 116d 9C000000 		.4byte	0x9c
 2898 1171 02       		.uleb128 0x2
 2899 1172 91       		.byte	0x91
 2900 1173 7C       		.sleb128 -4
 2901 1174 30       		.uleb128 0x30
 2902 1175 31030000 		.4byte	.LASF210
 2903 1179 01       		.byte	0x1
 2904 117a 6D       		.byte	0x6d
 2905 117b 91000000 		.4byte	0x91
 2906 117f EE020000 		.4byte	.LLST1
 2907 1183 00       		.byte	0
 2908 1184 00       		.byte	0
 2909              		.section	.debug_abbrev,"",%progbits
 2910              	.Ldebug_abbrev0:
 2911 0000 01       		.uleb128 0x1
 2912 0001 11       		.uleb128 0x11
 2913 0002 01       		.byte	0x1
 2914 0003 25       		.uleb128 0x25
ARM GAS  /tmp/cc3LTPp7.s 			page 63


 2915 0004 0E       		.uleb128 0xe
 2916 0005 13       		.uleb128 0x13
 2917 0006 0B       		.uleb128 0xb
 2918 0007 03       		.uleb128 0x3
 2919 0008 0E       		.uleb128 0xe
 2920 0009 1B       		.uleb128 0x1b
 2921 000a 0E       		.uleb128 0xe
 2922 000b 55       		.uleb128 0x55
 2923 000c 17       		.uleb128 0x17
 2924 000d 11       		.uleb128 0x11
 2925 000e 01       		.uleb128 0x1
 2926 000f 10       		.uleb128 0x10
 2927 0010 17       		.uleb128 0x17
 2928 0011 00       		.byte	0
 2929 0012 00       		.byte	0
 2930 0013 02       		.uleb128 0x2
 2931 0014 24       		.uleb128 0x24
 2932 0015 00       		.byte	0
 2933 0016 0B       		.uleb128 0xb
 2934 0017 0B       		.uleb128 0xb
 2935 0018 3E       		.uleb128 0x3e
 2936 0019 0B       		.uleb128 0xb
 2937 001a 03       		.uleb128 0x3
 2938 001b 08       		.uleb128 0x8
 2939 001c 00       		.byte	0
 2940 001d 00       		.byte	0
 2941 001e 03       		.uleb128 0x3
 2942 001f 24       		.uleb128 0x24
 2943 0020 00       		.byte	0
 2944 0021 0B       		.uleb128 0xb
 2945 0022 0B       		.uleb128 0xb
 2946 0023 3E       		.uleb128 0x3e
 2947 0024 0B       		.uleb128 0xb
 2948 0025 03       		.uleb128 0x3
 2949 0026 0E       		.uleb128 0xe
 2950 0027 00       		.byte	0
 2951 0028 00       		.byte	0
 2952 0029 04       		.uleb128 0x4
 2953 002a 16       		.uleb128 0x16
 2954 002b 00       		.byte	0
 2955 002c 03       		.uleb128 0x3
 2956 002d 0E       		.uleb128 0xe
 2957 002e 3A       		.uleb128 0x3a
 2958 002f 0B       		.uleb128 0xb
 2959 0030 3B       		.uleb128 0x3b
 2960 0031 0B       		.uleb128 0xb
 2961 0032 49       		.uleb128 0x49
 2962 0033 13       		.uleb128 0x13
 2963 0034 00       		.byte	0
 2964 0035 00       		.byte	0
 2965 0036 05       		.uleb128 0x5
 2966 0037 35       		.uleb128 0x35
 2967 0038 00       		.byte	0
 2968 0039 49       		.uleb128 0x49
 2969 003a 13       		.uleb128 0x13
 2970 003b 00       		.byte	0
 2971 003c 00       		.byte	0
ARM GAS  /tmp/cc3LTPp7.s 			page 64


 2972 003d 06       		.uleb128 0x6
 2973 003e 26       		.uleb128 0x26
 2974 003f 00       		.byte	0
 2975 0040 49       		.uleb128 0x49
 2976 0041 13       		.uleb128 0x13
 2977 0042 00       		.byte	0
 2978 0043 00       		.byte	0
 2979 0044 07       		.uleb128 0x7
 2980 0045 0F       		.uleb128 0xf
 2981 0046 00       		.byte	0
 2982 0047 0B       		.uleb128 0xb
 2983 0048 0B       		.uleb128 0xb
 2984 0049 00       		.byte	0
 2985 004a 00       		.byte	0
 2986 004b 08       		.uleb128 0x8
 2987 004c 01       		.uleb128 0x1
 2988 004d 01       		.byte	0x1
 2989 004e 49       		.uleb128 0x49
 2990 004f 13       		.uleb128 0x13
 2991 0050 01       		.uleb128 0x1
 2992 0051 13       		.uleb128 0x13
 2993 0052 00       		.byte	0
 2994 0053 00       		.byte	0
 2995 0054 09       		.uleb128 0x9
 2996 0055 21       		.uleb128 0x21
 2997 0056 00       		.byte	0
 2998 0057 49       		.uleb128 0x49
 2999 0058 13       		.uleb128 0x13
 3000 0059 2F       		.uleb128 0x2f
 3001 005a 0B       		.uleb128 0xb
 3002 005b 00       		.byte	0
 3003 005c 00       		.byte	0
 3004 005d 0A       		.uleb128 0xa
 3005 005e 34       		.uleb128 0x34
 3006 005f 00       		.byte	0
 3007 0060 03       		.uleb128 0x3
 3008 0061 0E       		.uleb128 0xe
 3009 0062 3A       		.uleb128 0x3a
 3010 0063 0B       		.uleb128 0xb
 3011 0064 3B       		.uleb128 0x3b
 3012 0065 05       		.uleb128 0x5
 3013 0066 49       		.uleb128 0x49
 3014 0067 13       		.uleb128 0x13
 3015 0068 3F       		.uleb128 0x3f
 3016 0069 19       		.uleb128 0x19
 3017 006a 3C       		.uleb128 0x3c
 3018 006b 19       		.uleb128 0x19
 3019 006c 00       		.byte	0
 3020 006d 00       		.byte	0
 3021 006e 0B       		.uleb128 0xb
 3022 006f 34       		.uleb128 0x34
 3023 0070 00       		.byte	0
 3024 0071 03       		.uleb128 0x3
 3025 0072 0E       		.uleb128 0xe
 3026 0073 3A       		.uleb128 0x3a
 3027 0074 0B       		.uleb128 0xb
 3028 0075 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc3LTPp7.s 			page 65


 3029 0076 0B       		.uleb128 0xb
 3030 0077 49       		.uleb128 0x49
 3031 0078 13       		.uleb128 0x13
 3032 0079 3F       		.uleb128 0x3f
 3033 007a 19       		.uleb128 0x19
 3034 007b 3C       		.uleb128 0x3c
 3035 007c 19       		.uleb128 0x19
 3036 007d 00       		.byte	0
 3037 007e 00       		.byte	0
 3038 007f 0C       		.uleb128 0xc
 3039 0080 13       		.uleb128 0x13
 3040 0081 01       		.byte	0x1
 3041 0082 0B       		.uleb128 0xb
 3042 0083 0B       		.uleb128 0xb
 3043 0084 3A       		.uleb128 0x3a
 3044 0085 0B       		.uleb128 0xb
 3045 0086 3B       		.uleb128 0x3b
 3046 0087 0B       		.uleb128 0xb
 3047 0088 01       		.uleb128 0x1
 3048 0089 13       		.uleb128 0x13
 3049 008a 00       		.byte	0
 3050 008b 00       		.byte	0
 3051 008c 0D       		.uleb128 0xd
 3052 008d 0D       		.uleb128 0xd
 3053 008e 00       		.byte	0
 3054 008f 03       		.uleb128 0x3
 3055 0090 0E       		.uleb128 0xe
 3056 0091 3A       		.uleb128 0x3a
 3057 0092 0B       		.uleb128 0xb
 3058 0093 3B       		.uleb128 0x3b
 3059 0094 0B       		.uleb128 0xb
 3060 0095 49       		.uleb128 0x49
 3061 0096 13       		.uleb128 0x13
 3062 0097 38       		.uleb128 0x38
 3063 0098 0B       		.uleb128 0xb
 3064 0099 00       		.byte	0
 3065 009a 00       		.byte	0
 3066 009b 0E       		.uleb128 0xe
 3067 009c 13       		.uleb128 0x13
 3068 009d 01       		.byte	0x1
 3069 009e 0B       		.uleb128 0xb
 3070 009f 05       		.uleb128 0x5
 3071 00a0 3A       		.uleb128 0x3a
 3072 00a1 0B       		.uleb128 0xb
 3073 00a2 3B       		.uleb128 0x3b
 3074 00a3 0B       		.uleb128 0xb
 3075 00a4 01       		.uleb128 0x1
 3076 00a5 13       		.uleb128 0x13
 3077 00a6 00       		.byte	0
 3078 00a7 00       		.byte	0
 3079 00a8 0F       		.uleb128 0xf
 3080 00a9 0D       		.uleb128 0xd
 3081 00aa 00       		.byte	0
 3082 00ab 03       		.uleb128 0x3
 3083 00ac 0E       		.uleb128 0xe
 3084 00ad 3A       		.uleb128 0x3a
 3085 00ae 0B       		.uleb128 0xb
ARM GAS  /tmp/cc3LTPp7.s 			page 66


 3086 00af 3B       		.uleb128 0x3b
 3087 00b0 0B       		.uleb128 0xb
 3088 00b1 49       		.uleb128 0x49
 3089 00b2 13       		.uleb128 0x13
 3090 00b3 38       		.uleb128 0x38
 3091 00b4 05       		.uleb128 0x5
 3092 00b5 00       		.byte	0
 3093 00b6 00       		.byte	0
 3094 00b7 10       		.uleb128 0x10
 3095 00b8 16       		.uleb128 0x16
 3096 00b9 00       		.byte	0
 3097 00ba 03       		.uleb128 0x3
 3098 00bb 0E       		.uleb128 0xe
 3099 00bc 3A       		.uleb128 0x3a
 3100 00bd 0B       		.uleb128 0xb
 3101 00be 3B       		.uleb128 0x3b
 3102 00bf 05       		.uleb128 0x5
 3103 00c0 49       		.uleb128 0x49
 3104 00c1 13       		.uleb128 0x13
 3105 00c2 00       		.byte	0
 3106 00c3 00       		.byte	0
 3107 00c4 11       		.uleb128 0x11
 3108 00c5 17       		.uleb128 0x17
 3109 00c6 01       		.byte	0x1
 3110 00c7 0B       		.uleb128 0xb
 3111 00c8 0B       		.uleb128 0xb
 3112 00c9 3A       		.uleb128 0x3a
 3113 00ca 0B       		.uleb128 0xb
 3114 00cb 3B       		.uleb128 0x3b
 3115 00cc 0B       		.uleb128 0xb
 3116 00cd 01       		.uleb128 0x1
 3117 00ce 13       		.uleb128 0x13
 3118 00cf 00       		.byte	0
 3119 00d0 00       		.byte	0
 3120 00d1 12       		.uleb128 0x12
 3121 00d2 0D       		.uleb128 0xd
 3122 00d3 00       		.byte	0
 3123 00d4 03       		.uleb128 0x3
 3124 00d5 0E       		.uleb128 0xe
 3125 00d6 3A       		.uleb128 0x3a
 3126 00d7 0B       		.uleb128 0xb
 3127 00d8 3B       		.uleb128 0x3b
 3128 00d9 0B       		.uleb128 0xb
 3129 00da 49       		.uleb128 0x49
 3130 00db 13       		.uleb128 0x13
 3131 00dc 00       		.byte	0
 3132 00dd 00       		.byte	0
 3133 00de 13       		.uleb128 0x13
 3134 00df 13       		.uleb128 0x13
 3135 00e0 01       		.byte	0x1
 3136 00e1 03       		.uleb128 0x3
 3137 00e2 0E       		.uleb128 0xe
 3138 00e3 0B       		.uleb128 0xb
 3139 00e4 0B       		.uleb128 0xb
 3140 00e5 3A       		.uleb128 0x3a
 3141 00e6 0B       		.uleb128 0xb
 3142 00e7 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc3LTPp7.s 			page 67


 3143 00e8 0B       		.uleb128 0xb
 3144 00e9 01       		.uleb128 0x1
 3145 00ea 13       		.uleb128 0x13
 3146 00eb 00       		.byte	0
 3147 00ec 00       		.byte	0
 3148 00ed 14       		.uleb128 0x14
 3149 00ee 0D       		.uleb128 0xd
 3150 00ef 00       		.byte	0
 3151 00f0 03       		.uleb128 0x3
 3152 00f1 08       		.uleb128 0x8
 3153 00f2 3A       		.uleb128 0x3a
 3154 00f3 0B       		.uleb128 0xb
 3155 00f4 3B       		.uleb128 0x3b
 3156 00f5 0B       		.uleb128 0xb
 3157 00f6 49       		.uleb128 0x49
 3158 00f7 13       		.uleb128 0x13
 3159 00f8 38       		.uleb128 0x38
 3160 00f9 0B       		.uleb128 0xb
 3161 00fa 00       		.byte	0
 3162 00fb 00       		.byte	0
 3163 00fc 15       		.uleb128 0x15
 3164 00fd 0F       		.uleb128 0xf
 3165 00fe 00       		.byte	0
 3166 00ff 0B       		.uleb128 0xb
 3167 0100 0B       		.uleb128 0xb
 3168 0101 49       		.uleb128 0x49
 3169 0102 13       		.uleb128 0x13
 3170 0103 00       		.byte	0
 3171 0104 00       		.byte	0
 3172 0105 16       		.uleb128 0x16
 3173 0106 13       		.uleb128 0x13
 3174 0107 01       		.byte	0x1
 3175 0108 03       		.uleb128 0x3
 3176 0109 0E       		.uleb128 0xe
 3177 010a 0B       		.uleb128 0xb
 3178 010b 05       		.uleb128 0x5
 3179 010c 3A       		.uleb128 0x3a
 3180 010d 0B       		.uleb128 0xb
 3181 010e 3B       		.uleb128 0x3b
 3182 010f 0B       		.uleb128 0xb
 3183 0110 01       		.uleb128 0x1
 3184 0111 13       		.uleb128 0x13
 3185 0112 00       		.byte	0
 3186 0113 00       		.byte	0
 3187 0114 17       		.uleb128 0x17
 3188 0115 15       		.uleb128 0x15
 3189 0116 00       		.byte	0
 3190 0117 27       		.uleb128 0x27
 3191 0118 19       		.uleb128 0x19
 3192 0119 00       		.byte	0
 3193 011a 00       		.byte	0
 3194 011b 18       		.uleb128 0x18
 3195 011c 15       		.uleb128 0x15
 3196 011d 01       		.byte	0x1
 3197 011e 27       		.uleb128 0x27
 3198 011f 19       		.uleb128 0x19
 3199 0120 49       		.uleb128 0x49
ARM GAS  /tmp/cc3LTPp7.s 			page 68


 3200 0121 13       		.uleb128 0x13
 3201 0122 01       		.uleb128 0x1
 3202 0123 13       		.uleb128 0x13
 3203 0124 00       		.byte	0
 3204 0125 00       		.byte	0
 3205 0126 19       		.uleb128 0x19
 3206 0127 05       		.uleb128 0x5
 3207 0128 00       		.byte	0
 3208 0129 49       		.uleb128 0x49
 3209 012a 13       		.uleb128 0x13
 3210 012b 00       		.byte	0
 3211 012c 00       		.byte	0
 3212 012d 1A       		.uleb128 0x1a
 3213 012e 13       		.uleb128 0x13
 3214 012f 01       		.byte	0x1
 3215 0130 03       		.uleb128 0x3
 3216 0131 0E       		.uleb128 0xe
 3217 0132 0B       		.uleb128 0xb
 3218 0133 05       		.uleb128 0x5
 3219 0134 3A       		.uleb128 0x3a
 3220 0135 0B       		.uleb128 0xb
 3221 0136 3B       		.uleb128 0x3b
 3222 0137 05       		.uleb128 0x5
 3223 0138 01       		.uleb128 0x1
 3224 0139 13       		.uleb128 0x13
 3225 013a 00       		.byte	0
 3226 013b 00       		.byte	0
 3227 013c 1B       		.uleb128 0x1b
 3228 013d 0D       		.uleb128 0xd
 3229 013e 00       		.byte	0
 3230 013f 03       		.uleb128 0x3
 3231 0140 0E       		.uleb128 0xe
 3232 0141 3A       		.uleb128 0x3a
 3233 0142 0B       		.uleb128 0xb
 3234 0143 3B       		.uleb128 0x3b
 3235 0144 05       		.uleb128 0x5
 3236 0145 49       		.uleb128 0x49
 3237 0146 13       		.uleb128 0x13
 3238 0147 38       		.uleb128 0x38
 3239 0148 0B       		.uleb128 0xb
 3240 0149 00       		.byte	0
 3241 014a 00       		.byte	0
 3242 014b 1C       		.uleb128 0x1c
 3243 014c 0D       		.uleb128 0xd
 3244 014d 00       		.byte	0
 3245 014e 03       		.uleb128 0x3
 3246 014f 0E       		.uleb128 0xe
 3247 0150 3A       		.uleb128 0x3a
 3248 0151 0B       		.uleb128 0xb
 3249 0152 3B       		.uleb128 0x3b
 3250 0153 05       		.uleb128 0x5
 3251 0154 49       		.uleb128 0x49
 3252 0155 13       		.uleb128 0x13
 3253 0156 38       		.uleb128 0x38
 3254 0157 05       		.uleb128 0x5
 3255 0158 00       		.byte	0
 3256 0159 00       		.byte	0
ARM GAS  /tmp/cc3LTPp7.s 			page 69


 3257 015a 1D       		.uleb128 0x1d
 3258 015b 13       		.uleb128 0x13
 3259 015c 01       		.byte	0x1
 3260 015d 03       		.uleb128 0x3
 3261 015e 0E       		.uleb128 0xe
 3262 015f 0B       		.uleb128 0xb
 3263 0160 0B       		.uleb128 0xb
 3264 0161 3A       		.uleb128 0x3a
 3265 0162 0B       		.uleb128 0xb
 3266 0163 3B       		.uleb128 0x3b
 3267 0164 05       		.uleb128 0x5
 3268 0165 01       		.uleb128 0x1
 3269 0166 13       		.uleb128 0x13
 3270 0167 00       		.byte	0
 3271 0168 00       		.byte	0
 3272 0169 1E       		.uleb128 0x1e
 3273 016a 13       		.uleb128 0x13
 3274 016b 01       		.byte	0x1
 3275 016c 0B       		.uleb128 0xb
 3276 016d 0B       		.uleb128 0xb
 3277 016e 3A       		.uleb128 0x3a
 3278 016f 0B       		.uleb128 0xb
 3279 0170 3B       		.uleb128 0x3b
 3280 0171 05       		.uleb128 0x5
 3281 0172 01       		.uleb128 0x1
 3282 0173 13       		.uleb128 0x13
 3283 0174 00       		.byte	0
 3284 0175 00       		.byte	0
 3285 0176 1F       		.uleb128 0x1f
 3286 0177 17       		.uleb128 0x17
 3287 0178 01       		.byte	0x1
 3288 0179 0B       		.uleb128 0xb
 3289 017a 0B       		.uleb128 0xb
 3290 017b 3A       		.uleb128 0x3a
 3291 017c 0B       		.uleb128 0xb
 3292 017d 3B       		.uleb128 0x3b
 3293 017e 05       		.uleb128 0x5
 3294 017f 01       		.uleb128 0x1
 3295 0180 13       		.uleb128 0x13
 3296 0181 00       		.byte	0
 3297 0182 00       		.byte	0
 3298 0183 20       		.uleb128 0x20
 3299 0184 0D       		.uleb128 0xd
 3300 0185 00       		.byte	0
 3301 0186 03       		.uleb128 0x3
 3302 0187 0E       		.uleb128 0xe
 3303 0188 3A       		.uleb128 0x3a
 3304 0189 0B       		.uleb128 0xb
 3305 018a 3B       		.uleb128 0x3b
 3306 018b 05       		.uleb128 0x5
 3307 018c 49       		.uleb128 0x49
 3308 018d 13       		.uleb128 0x13
 3309 018e 00       		.byte	0
 3310 018f 00       		.byte	0
 3311 0190 21       		.uleb128 0x21
 3312 0191 15       		.uleb128 0x15
 3313 0192 01       		.byte	0x1
ARM GAS  /tmp/cc3LTPp7.s 			page 70


 3314 0193 27       		.uleb128 0x27
 3315 0194 19       		.uleb128 0x19
 3316 0195 01       		.uleb128 0x1
 3317 0196 13       		.uleb128 0x13
 3318 0197 00       		.byte	0
 3319 0198 00       		.byte	0
 3320 0199 22       		.uleb128 0x22
 3321 019a 34       		.uleb128 0x34
 3322 019b 00       		.byte	0
 3323 019c 03       		.uleb128 0x3
 3324 019d 0E       		.uleb128 0xe
 3325 019e 3A       		.uleb128 0x3a
 3326 019f 0B       		.uleb128 0xb
 3327 01a0 3B       		.uleb128 0x3b
 3328 01a1 0B       		.uleb128 0xb
 3329 01a2 49       		.uleb128 0x49
 3330 01a3 13       		.uleb128 0x13
 3331 01a4 02       		.uleb128 0x2
 3332 01a5 18       		.uleb128 0x18
 3333 01a6 00       		.byte	0
 3334 01a7 00       		.byte	0
 3335 01a8 23       		.uleb128 0x23
 3336 01a9 04       		.uleb128 0x4
 3337 01aa 01       		.byte	0x1
 3338 01ab 0B       		.uleb128 0xb
 3339 01ac 0B       		.uleb128 0xb
 3340 01ad 49       		.uleb128 0x49
 3341 01ae 13       		.uleb128 0x13
 3342 01af 3A       		.uleb128 0x3a
 3343 01b0 0B       		.uleb128 0xb
 3344 01b1 3B       		.uleb128 0x3b
 3345 01b2 0B       		.uleb128 0xb
 3346 01b3 01       		.uleb128 0x1
 3347 01b4 13       		.uleb128 0x13
 3348 01b5 00       		.byte	0
 3349 01b6 00       		.byte	0
 3350 01b7 24       		.uleb128 0x24
 3351 01b8 28       		.uleb128 0x28
 3352 01b9 00       		.byte	0
 3353 01ba 03       		.uleb128 0x3
 3354 01bb 0E       		.uleb128 0xe
 3355 01bc 1C       		.uleb128 0x1c
 3356 01bd 0B       		.uleb128 0xb
 3357 01be 00       		.byte	0
 3358 01bf 00       		.byte	0
 3359 01c0 25       		.uleb128 0x25
 3360 01c1 28       		.uleb128 0x28
 3361 01c2 00       		.byte	0
 3362 01c3 03       		.uleb128 0x3
 3363 01c4 0E       		.uleb128 0xe
 3364 01c5 1C       		.uleb128 0x1c
 3365 01c6 06       		.uleb128 0x6
 3366 01c7 00       		.byte	0
 3367 01c8 00       		.byte	0
 3368 01c9 26       		.uleb128 0x26
 3369 01ca 2E       		.uleb128 0x2e
 3370 01cb 01       		.byte	0x1
ARM GAS  /tmp/cc3LTPp7.s 			page 71


 3371 01cc 3F       		.uleb128 0x3f
 3372 01cd 19       		.uleb128 0x19
 3373 01ce 03       		.uleb128 0x3
 3374 01cf 0E       		.uleb128 0xe
 3375 01d0 3A       		.uleb128 0x3a
 3376 01d1 0B       		.uleb128 0xb
 3377 01d2 3B       		.uleb128 0x3b
 3378 01d3 05       		.uleb128 0x5
 3379 01d4 27       		.uleb128 0x27
 3380 01d5 19       		.uleb128 0x19
 3381 01d6 11       		.uleb128 0x11
 3382 01d7 01       		.uleb128 0x1
 3383 01d8 12       		.uleb128 0x12
 3384 01d9 06       		.uleb128 0x6
 3385 01da 40       		.uleb128 0x40
 3386 01db 18       		.uleb128 0x18
 3387 01dc 9742     		.uleb128 0x2117
 3388 01de 19       		.uleb128 0x19
 3389 01df 01       		.uleb128 0x1
 3390 01e0 13       		.uleb128 0x13
 3391 01e1 00       		.byte	0
 3392 01e2 00       		.byte	0
 3393 01e3 27       		.uleb128 0x27
 3394 01e4 05       		.uleb128 0x5
 3395 01e5 00       		.byte	0
 3396 01e6 03       		.uleb128 0x3
 3397 01e7 0E       		.uleb128 0xe
 3398 01e8 3A       		.uleb128 0x3a
 3399 01e9 0B       		.uleb128 0xb
 3400 01ea 3B       		.uleb128 0x3b
 3401 01eb 05       		.uleb128 0x5
 3402 01ec 49       		.uleb128 0x49
 3403 01ed 13       		.uleb128 0x13
 3404 01ee 02       		.uleb128 0x2
 3405 01ef 17       		.uleb128 0x17
 3406 01f0 00       		.byte	0
 3407 01f1 00       		.byte	0
 3408 01f2 28       		.uleb128 0x28
 3409 01f3 34       		.uleb128 0x34
 3410 01f4 00       		.byte	0
 3411 01f5 03       		.uleb128 0x3
 3412 01f6 0E       		.uleb128 0xe
 3413 01f7 3A       		.uleb128 0x3a
 3414 01f8 0B       		.uleb128 0xb
 3415 01f9 3B       		.uleb128 0x3b
 3416 01fa 05       		.uleb128 0x5
 3417 01fb 49       		.uleb128 0x49
 3418 01fc 13       		.uleb128 0x13
 3419 01fd 1C       		.uleb128 0x1c
 3420 01fe 06       		.uleb128 0x6
 3421 01ff 00       		.byte	0
 3422 0200 00       		.byte	0
 3423 0201 29       		.uleb128 0x29
 3424 0202 34       		.uleb128 0x34
 3425 0203 00       		.byte	0
 3426 0204 03       		.uleb128 0x3
 3427 0205 0E       		.uleb128 0xe
ARM GAS  /tmp/cc3LTPp7.s 			page 72


 3428 0206 3A       		.uleb128 0x3a
 3429 0207 0B       		.uleb128 0xb
 3430 0208 3B       		.uleb128 0x3b
 3431 0209 05       		.uleb128 0x5
 3432 020a 49       		.uleb128 0x49
 3433 020b 13       		.uleb128 0x13
 3434 020c 02       		.uleb128 0x2
 3435 020d 18       		.uleb128 0x18
 3436 020e 00       		.byte	0
 3437 020f 00       		.byte	0
 3438 0210 2A       		.uleb128 0x2a
 3439 0211 2E       		.uleb128 0x2e
 3440 0212 01       		.byte	0x1
 3441 0213 3F       		.uleb128 0x3f
 3442 0214 19       		.uleb128 0x19
 3443 0215 03       		.uleb128 0x3
 3444 0216 0E       		.uleb128 0xe
 3445 0217 3A       		.uleb128 0x3a
 3446 0218 0B       		.uleb128 0xb
 3447 0219 3B       		.uleb128 0x3b
 3448 021a 05       		.uleb128 0x5
 3449 021b 27       		.uleb128 0x27
 3450 021c 19       		.uleb128 0x19
 3451 021d 49       		.uleb128 0x49
 3452 021e 13       		.uleb128 0x13
 3453 021f 11       		.uleb128 0x11
 3454 0220 01       		.uleb128 0x1
 3455 0221 12       		.uleb128 0x12
 3456 0222 06       		.uleb128 0x6
 3457 0223 40       		.uleb128 0x40
 3458 0224 18       		.uleb128 0x18
 3459 0225 9742     		.uleb128 0x2117
 3460 0227 19       		.uleb128 0x19
 3461 0228 01       		.uleb128 0x1
 3462 0229 13       		.uleb128 0x13
 3463 022a 00       		.byte	0
 3464 022b 00       		.byte	0
 3465 022c 2B       		.uleb128 0x2b
 3466 022d 05       		.uleb128 0x5
 3467 022e 00       		.byte	0
 3468 022f 03       		.uleb128 0x3
 3469 0230 0E       		.uleb128 0xe
 3470 0231 3A       		.uleb128 0x3a
 3471 0232 0B       		.uleb128 0xb
 3472 0233 3B       		.uleb128 0x3b
 3473 0234 05       		.uleb128 0x5
 3474 0235 49       		.uleb128 0x49
 3475 0236 13       		.uleb128 0x13
 3476 0237 02       		.uleb128 0x2
 3477 0238 18       		.uleb128 0x18
 3478 0239 00       		.byte	0
 3479 023a 00       		.byte	0
 3480 023b 2C       		.uleb128 0x2c
 3481 023c 2E       		.uleb128 0x2e
 3482 023d 01       		.byte	0x1
 3483 023e 3F       		.uleb128 0x3f
 3484 023f 19       		.uleb128 0x19
ARM GAS  /tmp/cc3LTPp7.s 			page 73


 3485 0240 03       		.uleb128 0x3
 3486 0241 0E       		.uleb128 0xe
 3487 0242 3A       		.uleb128 0x3a
 3488 0243 0B       		.uleb128 0xb
 3489 0244 3B       		.uleb128 0x3b
 3490 0245 0B       		.uleb128 0xb
 3491 0246 27       		.uleb128 0x27
 3492 0247 19       		.uleb128 0x19
 3493 0248 49       		.uleb128 0x49
 3494 0249 13       		.uleb128 0x13
 3495 024a 11       		.uleb128 0x11
 3496 024b 01       		.uleb128 0x1
 3497 024c 12       		.uleb128 0x12
 3498 024d 06       		.uleb128 0x6
 3499 024e 40       		.uleb128 0x40
 3500 024f 18       		.uleb128 0x18
 3501 0250 9742     		.uleb128 0x2117
 3502 0252 19       		.uleb128 0x19
 3503 0253 01       		.uleb128 0x1
 3504 0254 13       		.uleb128 0x13
 3505 0255 00       		.byte	0
 3506 0256 00       		.byte	0
 3507 0257 2D       		.uleb128 0x2d
 3508 0258 05       		.uleb128 0x5
 3509 0259 00       		.byte	0
 3510 025a 03       		.uleb128 0x3
 3511 025b 0E       		.uleb128 0xe
 3512 025c 3A       		.uleb128 0x3a
 3513 025d 0B       		.uleb128 0xb
 3514 025e 3B       		.uleb128 0x3b
 3515 025f 0B       		.uleb128 0xb
 3516 0260 49       		.uleb128 0x49
 3517 0261 13       		.uleb128 0x13
 3518 0262 02       		.uleb128 0x2
 3519 0263 17       		.uleb128 0x17
 3520 0264 00       		.byte	0
 3521 0265 00       		.byte	0
 3522 0266 2E       		.uleb128 0x2e
 3523 0267 34       		.uleb128 0x34
 3524 0268 00       		.byte	0
 3525 0269 03       		.uleb128 0x3
 3526 026a 0E       		.uleb128 0xe
 3527 026b 3A       		.uleb128 0x3a
 3528 026c 0B       		.uleb128 0xb
 3529 026d 3B       		.uleb128 0x3b
 3530 026e 0B       		.uleb128 0xb
 3531 026f 49       		.uleb128 0x49
 3532 0270 13       		.uleb128 0x13
 3533 0271 1C       		.uleb128 0x1c
 3534 0272 06       		.uleb128 0x6
 3535 0273 00       		.byte	0
 3536 0274 00       		.byte	0
 3537 0275 2F       		.uleb128 0x2f
 3538 0276 2E       		.uleb128 0x2e
 3539 0277 01       		.byte	0x1
 3540 0278 3F       		.uleb128 0x3f
 3541 0279 19       		.uleb128 0x19
ARM GAS  /tmp/cc3LTPp7.s 			page 74


 3542 027a 03       		.uleb128 0x3
 3543 027b 0E       		.uleb128 0xe
 3544 027c 3A       		.uleb128 0x3a
 3545 027d 0B       		.uleb128 0xb
 3546 027e 3B       		.uleb128 0x3b
 3547 027f 0B       		.uleb128 0xb
 3548 0280 27       		.uleb128 0x27
 3549 0281 19       		.uleb128 0x19
 3550 0282 11       		.uleb128 0x11
 3551 0283 01       		.uleb128 0x1
 3552 0284 12       		.uleb128 0x12
 3553 0285 06       		.uleb128 0x6
 3554 0286 40       		.uleb128 0x40
 3555 0287 18       		.uleb128 0x18
 3556 0288 9742     		.uleb128 0x2117
 3557 028a 19       		.uleb128 0x19
 3558 028b 01       		.uleb128 0x1
 3559 028c 13       		.uleb128 0x13
 3560 028d 00       		.byte	0
 3561 028e 00       		.byte	0
 3562 028f 30       		.uleb128 0x30
 3563 0290 34       		.uleb128 0x34
 3564 0291 00       		.byte	0
 3565 0292 03       		.uleb128 0x3
 3566 0293 0E       		.uleb128 0xe
 3567 0294 3A       		.uleb128 0x3a
 3568 0295 0B       		.uleb128 0xb
 3569 0296 3B       		.uleb128 0x3b
 3570 0297 0B       		.uleb128 0xb
 3571 0298 49       		.uleb128 0x49
 3572 0299 13       		.uleb128 0x13
 3573 029a 02       		.uleb128 0x2
 3574 029b 17       		.uleb128 0x17
 3575 029c 00       		.byte	0
 3576 029d 00       		.byte	0
 3577 029e 31       		.uleb128 0x31
 3578 029f 2E       		.uleb128 0x2e
 3579 02a0 01       		.byte	0x1
 3580 02a1 3F       		.uleb128 0x3f
 3581 02a2 19       		.uleb128 0x19
 3582 02a3 03       		.uleb128 0x3
 3583 02a4 0E       		.uleb128 0xe
 3584 02a5 3A       		.uleb128 0x3a
 3585 02a6 0B       		.uleb128 0xb
 3586 02a7 3B       		.uleb128 0x3b
 3587 02a8 0B       		.uleb128 0xb
 3588 02a9 27       		.uleb128 0x27
 3589 02aa 19       		.uleb128 0x19
 3590 02ab 11       		.uleb128 0x11
 3591 02ac 01       		.uleb128 0x1
 3592 02ad 12       		.uleb128 0x12
 3593 02ae 06       		.uleb128 0x6
 3594 02af 40       		.uleb128 0x40
 3595 02b0 18       		.uleb128 0x18
 3596 02b1 9742     		.uleb128 0x2117
 3597 02b3 19       		.uleb128 0x19
 3598 02b4 00       		.byte	0
ARM GAS  /tmp/cc3LTPp7.s 			page 75


 3599 02b5 00       		.byte	0
 3600 02b6 32       		.uleb128 0x32
 3601 02b7 05       		.uleb128 0x5
 3602 02b8 00       		.byte	0
 3603 02b9 03       		.uleb128 0x3
 3604 02ba 0E       		.uleb128 0xe
 3605 02bb 3A       		.uleb128 0x3a
 3606 02bc 0B       		.uleb128 0xb
 3607 02bd 3B       		.uleb128 0x3b
 3608 02be 0B       		.uleb128 0xb
 3609 02bf 49       		.uleb128 0x49
 3610 02c0 13       		.uleb128 0x13
 3611 02c1 02       		.uleb128 0x2
 3612 02c2 18       		.uleb128 0x18
 3613 02c3 00       		.byte	0
 3614 02c4 00       		.byte	0
 3615 02c5 00       		.byte	0
 3616              		.section	.debug_loc,"",%progbits
 3617              	.Ldebug_loc0:
 3618              	.LLST20:
 3619 0000 00000000 		.4byte	.LVL45
 3620 0004 12000000 		.4byte	.LVL46
 3621 0008 0100     		.2byte	0x1
 3622 000a 50       		.byte	0x50
 3623 000b 12000000 		.4byte	.LVL46
 3624 000f 20000000 		.4byte	.LFE163
 3625 0013 0400     		.2byte	0x4
 3626 0015 F3       		.byte	0xf3
 3627 0016 01       		.uleb128 0x1
 3628 0017 50       		.byte	0x50
 3629 0018 9F       		.byte	0x9f
 3630 0019 00000000 		.4byte	0
 3631 001d 00000000 		.4byte	0
 3632              	.LLST19:
 3633 0021 00000000 		.4byte	.LVL43
 3634 0025 02000000 		.4byte	.LVL44
 3635 0029 0100     		.2byte	0x1
 3636 002b 50       		.byte	0x50
 3637 002c 02000000 		.4byte	.LVL44
 3638 0030 10000000 		.4byte	.LFE162
 3639 0034 0400     		.2byte	0x4
 3640 0036 F3       		.byte	0xf3
 3641 0037 01       		.uleb128 0x1
 3642 0038 50       		.byte	0x50
 3643 0039 9F       		.byte	0x9f
 3644 003a 00000000 		.4byte	0
 3645 003e 00000000 		.4byte	0
 3646              	.LLST18:
 3647 0042 00000000 		.4byte	.LVL36
 3648 0046 04000000 		.4byte	.LVL37
 3649 004a 0100     		.2byte	0x1
 3650 004c 50       		.byte	0x50
 3651 004d 04000000 		.4byte	.LVL37
 3652 0051 24000000 		.4byte	.LFE156
 3653 0055 0400     		.2byte	0x4
 3654 0057 F3       		.byte	0xf3
 3655 0058 01       		.uleb128 0x1
ARM GAS  /tmp/cc3LTPp7.s 			page 76


 3656 0059 50       		.byte	0x50
 3657 005a 9F       		.byte	0x9f
 3658 005b 00000000 		.4byte	0
 3659 005f 00000000 		.4byte	0
 3660              	.LLST17:
 3661 0063 00000000 		.4byte	.LVL32
 3662 0067 04000000 		.4byte	.LVL33
 3663 006b 0100     		.2byte	0x1
 3664 006d 50       		.byte	0x50
 3665 006e 04000000 		.4byte	.LVL33
 3666 0072 0C000000 		.4byte	.LFE153
 3667 0076 0400     		.2byte	0x4
 3668 0078 F3       		.byte	0xf3
 3669 0079 01       		.uleb128 0x1
 3670 007a 50       		.byte	0x50
 3671 007b 9F       		.byte	0x9f
 3672 007c 00000000 		.4byte	0
 3673 0080 00000000 		.4byte	0
 3674              	.LLST16:
 3675 0084 00000000 		.4byte	.LVL30
 3676 0088 02000000 		.4byte	.LVL31
 3677 008c 0100     		.2byte	0x1
 3678 008e 50       		.byte	0x50
 3679 008f 02000000 		.4byte	.LVL31
 3680 0093 0C000000 		.4byte	.LFE152
 3681 0097 0400     		.2byte	0x4
 3682 0099 F3       		.byte	0xf3
 3683 009a 01       		.uleb128 0x1
 3684 009b 50       		.byte	0x50
 3685 009c 9F       		.byte	0x9f
 3686 009d 00000000 		.4byte	0
 3687 00a1 00000000 		.4byte	0
 3688              	.LLST15:
 3689 00a5 00000000 		.4byte	.LVL27
 3690 00a9 04000000 		.4byte	.LVL28
 3691 00ad 0100     		.2byte	0x1
 3692 00af 50       		.byte	0x50
 3693 00b0 04000000 		.4byte	.LVL28
 3694 00b4 08000000 		.4byte	.LVL29
 3695 00b8 0300     		.2byte	0x3
 3696 00ba 70       		.byte	0x70
 3697 00bb 70       		.sleb128 -16
 3698 00bc 9F       		.byte	0x9f
 3699 00bd 08000000 		.4byte	.LVL29
 3700 00c1 10000000 		.4byte	.LFE151
 3701 00c5 0400     		.2byte	0x4
 3702 00c7 F3       		.byte	0xf3
 3703 00c8 01       		.uleb128 0x1
 3704 00c9 50       		.byte	0x50
 3705 00ca 9F       		.byte	0x9f
 3706 00cb 00000000 		.4byte	0
 3707 00cf 00000000 		.4byte	0
 3708              	.LLST14:
 3709 00d3 00000000 		.4byte	.LVL25
 3710 00d7 02000000 		.4byte	.LVL26
 3711 00db 0100     		.2byte	0x1
 3712 00dd 50       		.byte	0x50
ARM GAS  /tmp/cc3LTPp7.s 			page 77


 3713 00de 02000000 		.4byte	.LVL26
 3714 00e2 10000000 		.4byte	.LFE150
 3715 00e6 0300     		.2byte	0x3
 3716 00e8 70       		.byte	0x70
 3717 00e9 70       		.sleb128 -16
 3718 00ea 9F       		.byte	0x9f
 3719 00eb 00000000 		.4byte	0
 3720 00ef 00000000 		.4byte	0
 3721              	.LLST13:
 3722 00f3 00000000 		.4byte	.LVL22
 3723 00f7 02000000 		.4byte	.LVL23
 3724 00fb 0100     		.2byte	0x1
 3725 00fd 50       		.byte	0x50
 3726 00fe 02000000 		.4byte	.LVL23
 3727 0102 12000000 		.4byte	.LVL24
 3728 0106 0300     		.2byte	0x3
 3729 0108 70       		.byte	0x70
 3730 0109 70       		.sleb128 -16
 3731 010a 9F       		.byte	0x9f
 3732 010b 12000000 		.4byte	.LVL24
 3733 010f 1C000000 		.4byte	.LFE149
 3734 0113 0400     		.2byte	0x4
 3735 0115 F3       		.byte	0xf3
 3736 0116 01       		.uleb128 0x1
 3737 0117 50       		.byte	0x50
 3738 0118 9F       		.byte	0x9f
 3739 0119 00000000 		.4byte	0
 3740 011d 00000000 		.4byte	0
 3741              	.LLST11:
 3742 0121 00000000 		.4byte	.LVL19
 3743 0125 0A000000 		.4byte	.LVL21
 3744 0129 0100     		.2byte	0x1
 3745 012b 50       		.byte	0x50
 3746 012c 0A000000 		.4byte	.LVL21
 3747 0130 24000000 		.4byte	.LFE148
 3748 0134 0400     		.2byte	0x4
 3749 0136 F3       		.byte	0xf3
 3750 0137 01       		.uleb128 0x1
 3751 0138 50       		.byte	0x50
 3752 0139 9F       		.byte	0x9f
 3753 013a 00000000 		.4byte	0
 3754 013e 00000000 		.4byte	0
 3755              	.LLST12:
 3756 0142 00000000 		.4byte	.LVL19
 3757 0146 06000000 		.4byte	.LVL20
 3758 014a 0100     		.2byte	0x1
 3759 014c 51       		.byte	0x51
 3760 014d 06000000 		.4byte	.LVL20
 3761 0151 24000000 		.4byte	.LFE148
 3762 0155 0400     		.2byte	0x4
 3763 0157 F3       		.byte	0xf3
 3764 0158 01       		.uleb128 0x1
 3765 0159 51       		.byte	0x51
 3766 015a 9F       		.byte	0x9f
 3767 015b 00000000 		.4byte	0
 3768 015f 00000000 		.4byte	0
 3769              	.LLST10:
ARM GAS  /tmp/cc3LTPp7.s 			page 78


 3770 0163 00000000 		.4byte	.LVL16
 3771 0167 02000000 		.4byte	.LVL17
 3772 016b 0100     		.2byte	0x1
 3773 016d 50       		.byte	0x50
 3774 016e 02000000 		.4byte	.LVL17
 3775 0172 12000000 		.4byte	.LVL18
 3776 0176 0300     		.2byte	0x3
 3777 0178 70       		.byte	0x70
 3778 0179 70       		.sleb128 -16
 3779 017a 9F       		.byte	0x9f
 3780 017b 12000000 		.4byte	.LVL18
 3781 017f 1C000000 		.4byte	.LFE147
 3782 0183 0400     		.2byte	0x4
 3783 0185 F3       		.byte	0xf3
 3784 0186 01       		.uleb128 0x1
 3785 0187 50       		.byte	0x50
 3786 0188 9F       		.byte	0x9f
 3787 0189 00000000 		.4byte	0
 3788 018d 00000000 		.4byte	0
 3789              	.LLST8:
 3790 0191 00000000 		.4byte	.LVL13
 3791 0195 08000000 		.4byte	.LVL14
 3792 0199 0100     		.2byte	0x1
 3793 019b 50       		.byte	0x50
 3794 019c 08000000 		.4byte	.LVL14
 3795 01a0 20000000 		.4byte	.LFE146
 3796 01a4 0400     		.2byte	0x4
 3797 01a6 F3       		.byte	0xf3
 3798 01a7 01       		.uleb128 0x1
 3799 01a8 50       		.byte	0x50
 3800 01a9 9F       		.byte	0x9f
 3801 01aa 00000000 		.4byte	0
 3802 01ae 00000000 		.4byte	0
 3803              	.LLST9:
 3804 01b2 00000000 		.4byte	.LVL13
 3805 01b6 14000000 		.4byte	.LVL15
 3806 01ba 0100     		.2byte	0x1
 3807 01bc 51       		.byte	0x51
 3808 01bd 14000000 		.4byte	.LVL15
 3809 01c1 20000000 		.4byte	.LFE146
 3810 01c5 0400     		.2byte	0x4
 3811 01c7 F3       		.byte	0xf3
 3812 01c8 01       		.uleb128 0x1
 3813 01c9 51       		.byte	0x51
 3814 01ca 9F       		.byte	0x9f
 3815 01cb 00000000 		.4byte	0
 3816 01cf 00000000 		.4byte	0
 3817              	.LLST7:
 3818 01d3 00000000 		.4byte	.LVL10
 3819 01d7 02000000 		.4byte	.LVL11
 3820 01db 0100     		.2byte	0x1
 3821 01dd 50       		.byte	0x50
 3822 01de 02000000 		.4byte	.LVL11
 3823 01e2 12000000 		.4byte	.LVL12
 3824 01e6 0300     		.2byte	0x3
 3825 01e8 70       		.byte	0x70
 3826 01e9 70       		.sleb128 -16
ARM GAS  /tmp/cc3LTPp7.s 			page 79


 3827 01ea 9F       		.byte	0x9f
 3828 01eb 12000000 		.4byte	.LVL12
 3829 01ef 1C000000 		.4byte	.LFE145
 3830 01f3 0400     		.2byte	0x4
 3831 01f5 F3       		.byte	0xf3
 3832 01f6 01       		.uleb128 0x1
 3833 01f7 50       		.byte	0x50
 3834 01f8 9F       		.byte	0x9f
 3835 01f9 00000000 		.4byte	0
 3836 01fd 00000000 		.4byte	0
 3837              	.LLST5:
 3838 0201 00000000 		.4byte	.LVL7
 3839 0205 0E000000 		.4byte	.LVL9
 3840 0209 0100     		.2byte	0x1
 3841 020b 50       		.byte	0x50
 3842 020c 0E000000 		.4byte	.LVL9
 3843 0210 28000000 		.4byte	.LFE144
 3844 0214 0400     		.2byte	0x4
 3845 0216 F3       		.byte	0xf3
 3846 0217 01       		.uleb128 0x1
 3847 0218 50       		.byte	0x50
 3848 0219 9F       		.byte	0x9f
 3849 021a 00000000 		.4byte	0
 3850 021e 00000000 		.4byte	0
 3851              	.LLST6:
 3852 0222 00000000 		.4byte	.LVL7
 3853 0226 0A000000 		.4byte	.LVL8
 3854 022a 0100     		.2byte	0x1
 3855 022c 51       		.byte	0x51
 3856 022d 0A000000 		.4byte	.LVL8
 3857 0231 28000000 		.4byte	.LFE144
 3858 0235 0400     		.2byte	0x4
 3859 0237 F3       		.byte	0xf3
 3860 0238 01       		.uleb128 0x1
 3861 0239 51       		.byte	0x51
 3862 023a 9F       		.byte	0x9f
 3863 023b 00000000 		.4byte	0
 3864 023f 00000000 		.4byte	0
 3865              	.LLST2:
 3866 0243 00000000 		.4byte	.LVL3
 3867 0247 10000000 		.4byte	.LVL6
 3868 024b 0100     		.2byte	0x1
 3869 024d 50       		.byte	0x50
 3870 024e 10000000 		.4byte	.LVL6
 3871 0252 1C000000 		.4byte	.LFE143
 3872 0256 0400     		.2byte	0x4
 3873 0258 F3       		.byte	0xf3
 3874 0259 01       		.uleb128 0x1
 3875 025a 50       		.byte	0x50
 3876 025b 9F       		.byte	0x9f
 3877 025c 00000000 		.4byte	0
 3878 0260 00000000 		.4byte	0
 3879              	.LLST3:
 3880 0264 02000000 		.4byte	.LVL4
 3881 0268 08000000 		.4byte	.LVL5
 3882 026c 0800     		.2byte	0x8
 3883 026e 70       		.byte	0x70
ARM GAS  /tmp/cc3LTPp7.s 			page 80


 3884 026f 00       		.sleb128 0
 3885 0270 32       		.byte	0x32
 3886 0271 24       		.byte	0x24
 3887 0272 73       		.byte	0x73
 3888 0273 00       		.sleb128 0
 3889 0274 22       		.byte	0x22
 3890 0275 9F       		.byte	0x9f
 3891 0276 08000000 		.4byte	.LVL5
 3892 027a 10000000 		.4byte	.LVL6
 3893 027e 0B00     		.2byte	0xb
 3894 0280 70       		.byte	0x70
 3895 0281 00       		.sleb128 0
 3896 0282 32       		.byte	0x32
 3897 0283 24       		.byte	0x24
 3898 0284 23       		.byte	0x23
 3899 0285 8080A280 		.uleb128 0x40088000
 3899      04
 3900 028a 9F       		.byte	0x9f
 3901 028b 10000000 		.4byte	.LVL6
 3902 028f 1C000000 		.4byte	.LFE143
 3903 0293 0C00     		.2byte	0xc
 3904 0295 F3       		.byte	0xf3
 3905 0296 01       		.uleb128 0x1
 3906 0297 50       		.byte	0x50
 3907 0298 32       		.byte	0x32
 3908 0299 24       		.byte	0x24
 3909 029a 23       		.byte	0x23
 3910 029b 8080A280 		.uleb128 0x40088000
 3910      04
 3911 02a0 9F       		.byte	0x9f
 3912 02a1 00000000 		.4byte	0
 3913 02a5 00000000 		.4byte	0
 3914              	.LLST4:
 3915 02a9 00000000 		.4byte	.LVL3
 3916 02ad 02000000 		.4byte	.LVL4
 3917 02b1 0600     		.2byte	0x6
 3918 02b3 0C       		.byte	0xc
 3919 02b4 04800840 		.4byte	0x40088004
 3920 02b8 9F       		.byte	0x9f
 3921 02b9 02000000 		.4byte	.LVL4
 3922 02bd 1C000000 		.4byte	.LFE143
 3923 02c1 0200     		.2byte	0x2
 3924 02c3 34       		.byte	0x34
 3925 02c4 9F       		.byte	0x9f
 3926 02c5 00000000 		.4byte	0
 3927 02c9 00000000 		.4byte	0
 3928              	.LLST0:
 3929 02cd 00000000 		.4byte	.LVL0
 3930 02d1 12000000 		.4byte	.LVL2
 3931 02d5 0100     		.2byte	0x1
 3932 02d7 51       		.byte	0x51
 3933 02d8 12000000 		.4byte	.LVL2
 3934 02dc 20000000 		.4byte	.LFE142
 3935 02e0 0400     		.2byte	0x4
 3936 02e2 F3       		.byte	0xf3
 3937 02e3 01       		.uleb128 0x1
 3938 02e4 51       		.byte	0x51
ARM GAS  /tmp/cc3LTPp7.s 			page 81


 3939 02e5 9F       		.byte	0x9f
 3940 02e6 00000000 		.4byte	0
 3941 02ea 00000000 		.4byte	0
 3942              	.LLST1:
 3943 02ee 00000000 		.4byte	.LVL0
 3944 02f2 02000000 		.4byte	.LVL1
 3945 02f6 0600     		.2byte	0x6
 3946 02f8 0C       		.byte	0xc
 3947 02f9 04800840 		.4byte	0x40088004
 3948 02fd 9F       		.byte	0x9f
 3949 02fe 02000000 		.4byte	.LVL1
 3950 0302 20000000 		.4byte	.LFE142
 3951 0306 0200     		.2byte	0x2
 3952 0308 34       		.byte	0x34
 3953 0309 9F       		.byte	0x9f
 3954 030a 00000000 		.4byte	0
 3955 030e 00000000 		.4byte	0
 3956              		.section	.debug_aranges,"",%progbits
 3957 0000 C4000000 		.4byte	0xc4
 3958 0004 0200     		.2byte	0x2
 3959 0006 00000000 		.4byte	.Ldebug_info0
 3960 000a 04       		.byte	0x4
 3961 000b 00       		.byte	0
 3962 000c 0000     		.2byte	0
 3963 000e 0000     		.2byte	0
 3964 0010 00000000 		.4byte	.LFB142
 3965 0014 20000000 		.4byte	.LFE142-.LFB142
 3966 0018 00000000 		.4byte	.LFB143
 3967 001c 1C000000 		.4byte	.LFE143-.LFB143
 3968 0020 00000000 		.4byte	.LFB144
 3969 0024 28000000 		.4byte	.LFE144-.LFB144
 3970 0028 00000000 		.4byte	.LFB145
 3971 002c 1C000000 		.4byte	.LFE145-.LFB145
 3972 0030 00000000 		.4byte	.LFB146
 3973 0034 20000000 		.4byte	.LFE146-.LFB146
 3974 0038 00000000 		.4byte	.LFB147
 3975 003c 1C000000 		.4byte	.LFE147-.LFB147
 3976 0040 00000000 		.4byte	.LFB148
 3977 0044 24000000 		.4byte	.LFE148-.LFB148
 3978 0048 00000000 		.4byte	.LFB149
 3979 004c 1C000000 		.4byte	.LFE149-.LFB149
 3980 0050 00000000 		.4byte	.LFB150
 3981 0054 10000000 		.4byte	.LFE150-.LFB150
 3982 0058 00000000 		.4byte	.LFB151
 3983 005c 10000000 		.4byte	.LFE151-.LFB151
 3984 0060 00000000 		.4byte	.LFB152
 3985 0064 0C000000 		.4byte	.LFE152-.LFB152
 3986 0068 00000000 		.4byte	.LFB153
 3987 006c 0C000000 		.4byte	.LFE153-.LFB153
 3988 0070 00000000 		.4byte	.LFB154
 3989 0074 0C000000 		.4byte	.LFE154-.LFB154
 3990 0078 00000000 		.4byte	.LFB155
 3991 007c 0C000000 		.4byte	.LFE155-.LFB155
 3992 0080 00000000 		.4byte	.LFB156
 3993 0084 24000000 		.4byte	.LFE156-.LFB156
 3994 0088 00000000 		.4byte	.LFB157
 3995 008c 10000000 		.4byte	.LFE157-.LFB157
ARM GAS  /tmp/cc3LTPp7.s 			page 82


 3996 0090 00000000 		.4byte	.LFB158
 3997 0094 0C000000 		.4byte	.LFE158-.LFB158
 3998 0098 00000000 		.4byte	.LFB159
 3999 009c 0C000000 		.4byte	.LFE159-.LFB159
 4000 00a0 00000000 		.4byte	.LFB160
 4001 00a4 20000000 		.4byte	.LFE160-.LFB160
 4002 00a8 00000000 		.4byte	.LFB161
 4003 00ac 0C000000 		.4byte	.LFE161-.LFB161
 4004 00b0 00000000 		.4byte	.LFB162
 4005 00b4 10000000 		.4byte	.LFE162-.LFB162
 4006 00b8 00000000 		.4byte	.LFB163
 4007 00bc 20000000 		.4byte	.LFE163-.LFB163
 4008 00c0 00000000 		.4byte	0
 4009 00c4 00000000 		.4byte	0
 4010              		.section	.debug_ranges,"",%progbits
 4011              	.Ldebug_ranges0:
 4012 0000 00000000 		.4byte	.LFB142
 4013 0004 20000000 		.4byte	.LFE142
 4014 0008 00000000 		.4byte	.LFB143
 4015 000c 1C000000 		.4byte	.LFE143
 4016 0010 00000000 		.4byte	.LFB144
 4017 0014 28000000 		.4byte	.LFE144
 4018 0018 00000000 		.4byte	.LFB145
 4019 001c 1C000000 		.4byte	.LFE145
 4020 0020 00000000 		.4byte	.LFB146
 4021 0024 20000000 		.4byte	.LFE146
 4022 0028 00000000 		.4byte	.LFB147
 4023 002c 1C000000 		.4byte	.LFE147
 4024 0030 00000000 		.4byte	.LFB148
 4025 0034 24000000 		.4byte	.LFE148
 4026 0038 00000000 		.4byte	.LFB149
 4027 003c 1C000000 		.4byte	.LFE149
 4028 0040 00000000 		.4byte	.LFB150
 4029 0044 10000000 		.4byte	.LFE150
 4030 0048 00000000 		.4byte	.LFB151
 4031 004c 10000000 		.4byte	.LFE151
 4032 0050 00000000 		.4byte	.LFB152
 4033 0054 0C000000 		.4byte	.LFE152
 4034 0058 00000000 		.4byte	.LFB153
 4035 005c 0C000000 		.4byte	.LFE153
 4036 0060 00000000 		.4byte	.LFB154
 4037 0064 0C000000 		.4byte	.LFE154
 4038 0068 00000000 		.4byte	.LFB155
 4039 006c 0C000000 		.4byte	.LFE155
 4040 0070 00000000 		.4byte	.LFB156
 4041 0074 24000000 		.4byte	.LFE156
 4042 0078 00000000 		.4byte	.LFB157
 4043 007c 10000000 		.4byte	.LFE157
 4044 0080 00000000 		.4byte	.LFB158
 4045 0084 0C000000 		.4byte	.LFE158
 4046 0088 00000000 		.4byte	.LFB159
 4047 008c 0C000000 		.4byte	.LFE159
 4048 0090 00000000 		.4byte	.LFB160
 4049 0094 20000000 		.4byte	.LFE160
 4050 0098 00000000 		.4byte	.LFB161
 4051 009c 0C000000 		.4byte	.LFE161
 4052 00a0 00000000 		.4byte	.LFB162
ARM GAS  /tmp/cc3LTPp7.s 			page 83


 4053 00a4 10000000 		.4byte	.LFE162
 4054 00a8 00000000 		.4byte	.LFB163
 4055 00ac 20000000 		.4byte	.LFE163
 4056 00b0 00000000 		.4byte	0
 4057 00b4 00000000 		.4byte	0
 4058              		.section	.debug_line,"",%progbits
 4059              	.Ldebug_line0:
 4060 0000 27040000 		.section	.debug_str,"MS",%progbits,1
 4060      02006A02 
 4060      00000201 
 4060      FB0E0D00 
 4060      01010101 
 4061              	.LASF32:
 4062 0000 4D415452 		.ascii	"MATRIX_SCFG\000"
 4062      49585F53 
 4062      43464700 
 4063              	.LASF3:
 4064 000c 73686F72 		.ascii	"short int\000"
 4064      7420696E 
 4064      7400
 4065              	.LASF48:
 4066 0016 5F66706F 		.ascii	"_fpos_t\000"
 4066      735F7400 
 4067              	.LASF2:
 4068 001e 756E7369 		.ascii	"unsigned char\000"
 4068      676E6564 
 4068      20636861 
 4068      7200
 4069              	.LASF184:
 4070 002c 6D617472 		.ascii	"matrix_set_nandflash_cs\000"
 4070      69785F73 
 4070      65745F6E 
 4070      616E6466 
 4070      6C617368 
 4071              	.LASF203:
 4072 0044 6D617472 		.ascii	"matrix_set_slave_default_master_type\000"
 4072      69785F73 
 4072      65745F73 
 4072      6C617665 
 4072      5F646566 
 4073              	.LASF175:
 4074 0069 705F6D61 		.ascii	"p_matrix\000"
 4074      74726978 
 4074      00
 4075              	.LASF189:
 4076 0072 6D617472 		.ascii	"matrix_get_master_remap\000"
 4076      69785F67 
 4076      65745F6D 
 4076      61737465 
 4076      725F7265 
 4077              	.LASF106:
 4078 008a 5F656D65 		.ascii	"_emergency\000"
 4078      7267656E 
 4078      637900
 4079              	.LASF143:
 4080 0095 5F676574 		.ascii	"_getdate_err\000"
 4080      64617465 
ARM GAS  /tmp/cc3LTPp7.s 			page 84


 4080      5F657272 
 4080      00
 4081              	.LASF96:
 4082 00a2 5F646174 		.ascii	"_data\000"
 4082      6100
 4083              	.LASF204:
 4084 00a8 74797065 		.ascii	"type\000"
 4084      00
 4085              	.LASF147:
 4086 00ad 5F776372 		.ascii	"_wcrtomb_state\000"
 4086      746F6D62 
 4086      5F737461 
 4086      746500
 4087              	.LASF148:
 4088 00bc 5F776373 		.ascii	"_wcsrtombs_state\000"
 4088      72746F6D 
 4088      62735F73 
 4088      74617465 
 4088      00
 4089              	.LASF10:
 4090 00cd 6C6F6E67 		.ascii	"long long unsigned int\000"
 4090      206C6F6E 
 4090      6720756E 
 4090      7369676E 
 4090      65642069 
 4091              	.LASF196:
 4092 00e4 6D617472 		.ascii	"matrix_get_slave_priority\000"
 4092      69785F67 
 4092      65745F73 
 4092      6C617665 
 4092      5F707269 
 4093              	.LASF86:
 4094 00fe 5F6C6266 		.ascii	"_lbfsize\000"
 4094      73697A65 
 4094      00
 4095              	.LASF17:
 4096 0107 4D415452 		.ascii	"MATRIX_PRBS\000"
 4096      49585F50 
 4096      52425300 
 4097              	.LASF145:
 4098 0113 5F6D6272 		.ascii	"_mbrtowc_state\000"
 4098      746F7763 
 4098      5F737461 
 4098      746500
 4099              	.LASF140:
 4100 0122 5F776374 		.ascii	"_wctomb_state\000"
 4100      6F6D625F 
 4100      73746174 
 4100      6500
 4101              	.LASF63:
 4102 0130 5F5F746D 		.ascii	"__tm_sec\000"
 4102      5F736563 
 4102      00
 4103              	.LASF91:
 4104 0139 5F636C6F 		.ascii	"_close\000"
 4104      736500
 4105              	.LASF1:
ARM GAS  /tmp/cc3LTPp7.s 			page 85


 4106 0140 7369676E 		.ascii	"signed char\000"
 4106      65642063 
 4106      68617200 
 4107              	.LASF132:
 4108 014c 5F737472 		.ascii	"_strtok_last\000"
 4108      746F6B5F 
 4108      6C617374 
 4108      00
 4109              	.LASF43:
 4110 0159 4D415452 		.ascii	"MATRIX_WPMR\000"
 4110      49585F57 
 4110      504D5200 
 4111              	.LASF92:
 4112 0165 5F756275 		.ascii	"_ubuf\000"
 4112      6600
 4113              	.LASF81:
 4114 016b 5F626173 		.ascii	"_base\000"
 4114      6500
 4115              	.LASF26:
 4116 0171 52657365 		.ascii	"Reserved1\000"
 4116      72766564 
 4116      3100
 4117              	.LASF31:
 4118 017b 52657365 		.ascii	"Reserved2\000"
 4118      72766564 
 4118      3200
 4119              	.LASF65:
 4120 0185 5F5F746D 		.ascii	"__tm_hour\000"
 4120      5F686F75 
 4120      7200
 4121              	.LASF35:
 4122 018f 52657365 		.ascii	"Reserved4\000"
 4122      72766564 
 4122      3400
 4123              	.LASF121:
 4124 0199 5F5F7366 		.ascii	"__sf\000"
 4124      00
 4125              	.LASF28:
 4126 019e 4D415452 		.ascii	"MATRIX_MCFG9\000"
 4126      49585F4D 
 4126      43464739 
 4126      00
 4127              	.LASF42:
 4128 01ab 52657365 		.ascii	"Reserved7\000"
 4128      72766564 
 4128      3700
 4129              	.LASF87:
 4130 01b5 5F636F6F 		.ascii	"_cookie\000"
 4130      6B696500 
 4131              	.LASF120:
 4132 01bd 5F5F7367 		.ascii	"__sglue\000"
 4132      6C756500 
 4133              	.LASF5:
 4134 01c5 6C6F6E67 		.ascii	"long int\000"
 4134      20696E74 
 4134      00
 4135              	.LASF84:
ARM GAS  /tmp/cc3LTPp7.s 			page 86


 4136 01ce 5F666C61 		.ascii	"_flags\000"
 4136      677300
 4137              	.LASF76:
 4138 01d5 5F69735F 		.ascii	"_is_cxa\000"
 4138      63786100 
 4139              	.LASF60:
 4140 01dd 5F776473 		.ascii	"_wds\000"
 4140      00
 4141              	.LASF29:
 4142 01e2 4D415452 		.ascii	"MATRIX_MCFG10\000"
 4142      49585F4D 
 4142      43464731 
 4142      3000
 4143              	.LASF112:
 4144 01f0 5F726573 		.ascii	"_result_k\000"
 4144      756C745F 
 4144      6B00
 4145              	.LASF172:
 4146 01fa 4D415452 		.ascii	"MATRIX_DEFMSTR_LAST_DEFAULT_MASTER\000"
 4146      49585F44 
 4146      45464D53 
 4146      54525F4C 
 4146      4153545F 
 4147              	.LASF174:
 4148 021d 64656661 		.ascii	"defaut_master_t\000"
 4148      75745F6D 
 4148      61737465 
 4148      725F7400 
 4149              	.LASF9:
 4150 022d 6C6F6E67 		.ascii	"long long int\000"
 4150      206C6F6E 
 4150      6720696E 
 4150      7400
 4151              	.LASF109:
 4152 023b 5F5F7364 		.ascii	"__sdidinit\000"
 4152      6964696E 
 4152      697400
 4153              	.LASF161:
 4154 0246 646F7562 		.ascii	"double\000"
 4154      6C6500
 4155              	.LASF199:
 4156 024d 6D617472 		.ascii	"matrix_get_slave_fixed_default_master\000"
 4156      69785F67 
 4156      65745F73 
 4156      6C617665 
 4156      5F666978 
 4157              	.LASF116:
 4158 0273 5F637674 		.ascii	"_cvtbuf\000"
 4158      62756600 
 4159              	.LASF146:
 4160 027b 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 4160      72746F77 
 4160      63735F73 
 4160      74617465 
 4160      00
 4161              	.LASF200:
 4162 028c 6D617472 		.ascii	"matrix_set_slave_fixed_default_master\000"
ARM GAS  /tmp/cc3LTPp7.s 			page 87


 4162      69785F73 
 4162      65745F73 
 4162      6C617665 
 4162      5F666978 
 4163              	.LASF144:
 4164 02b2 5F6D6272 		.ascii	"_mbrlen_state\000"
 4164      6C656E5F 
 4164      73746174 
 4164      6500
 4165              	.LASF188:
 4166 02c0 756C5F69 		.ascii	"ul_io\000"
 4166      6F00
 4167              	.LASF73:
 4168 02c6 5F666E61 		.ascii	"_fnargs\000"
 4168      72677300 
 4169              	.LASF179:
 4170 02ce 62617365 		.ascii	"base_addr\000"
 4170      5F616464 
 4170      7200
 4171              	.LASF79:
 4172 02d8 5F666E73 		.ascii	"_fns\000"
 4172      00
 4173              	.LASF7:
 4174 02dd 5F5F7569 		.ascii	"__uint32_t\000"
 4174      6E743332 
 4174      5F7400
 4175              	.LASF59:
 4176 02e8 5F736967 		.ascii	"_sign\000"
 4176      6E00
 4177              	.LASF195:
 4178 02ee 756C5F70 		.ascii	"ul_prio_b\000"
 4178      72696F5F 
 4178      6200
 4179              	.LASF153:
 4180 02f8 5F696D70 		.ascii	"_impure_ptr\000"
 4180      7572655F 
 4180      70747200 
 4181              	.LASF104:
 4182 0304 5F737464 		.ascii	"_stderr\000"
 4182      65727200 
 4183              	.LASF61:
 4184 030c 5F426967 		.ascii	"_Bigint\000"
 4184      696E7400 
 4185              	.LASF135:
 4186 0314 5F67616D 		.ascii	"_gamma_signgam\000"
 4186      6D615F73 
 4186      69676E67 
 4186      616D00
 4187              	.LASF151:
 4188 0323 5F6E6D61 		.ascii	"_nmalloc\000"
 4188      6C6C6F63 
 4188      00
 4189              	.LASF62:
 4190 032c 5F5F746D 		.ascii	"__tm\000"
 4190      00
 4191              	.LASF210:
 4192 0331 756C5F64 		.ascii	"ul_dlt\000"
ARM GAS  /tmp/cc3LTPp7.s 			page 88


 4192      6C7400
 4193              	.LASF98:
 4194 0338 5F6D6273 		.ascii	"_mbstate\000"
 4194      74617465 
 4194      00
 4195              	.LASF51:
 4196 0341 5F5F7763 		.ascii	"__wchb\000"
 4196      686200
 4197              	.LASF15:
 4198 0348 53797374 		.ascii	"SystemCoreClock\000"
 4198      656D436F 
 4198      7265436C 
 4198      6F636B00 
 4199              	.LASF130:
 4200 0358 5F616464 		.ascii	"_add\000"
 4200      00
 4201              	.LASF115:
 4202 035d 5F637674 		.ascii	"_cvtlen\000"
 4202      6C656E00 
 4203              	.LASF206:
 4204 0365 6D617472 		.ascii	"matrix_set_slave_slot_cycle\000"
 4204      69785F73 
 4204      65745F73 
 4204      6C617665 
 4204      5F736C6F 
 4205              	.LASF163:
 4206 0381 4D415452 		.ascii	"MATRIX_ULBT_SINGLE_ACCESS\000"
 4206      49585F55 
 4206      4C42545F 
 4206      53494E47 
 4206      4C455F41 
 4207              	.LASF8:
 4208 039b 6C6F6E67 		.ascii	"long unsigned int\000"
 4208      20756E73 
 4208      69676E65 
 4208      6420696E 
 4208      7400
 4209              	.LASF169:
 4210 03ad 4D415452 		.ascii	"MATRIX_ULBT_128_BEAT_BURST\000"
 4210      49585F55 
 4210      4C42545F 
 4210      3132385F 
 4210      42454154 
 4211              	.LASF85:
 4212 03c8 5F66696C 		.ascii	"_file\000"
 4212      6500
 4213              	.LASF185:
 4214 03ce 756C5F63 		.ascii	"ul_cs\000"
 4214      7300
 4215              	.LASF33:
 4216 03d4 52657365 		.ascii	"Reserved3\000"
 4216      72766564 
 4216      3300
 4217              	.LASF45:
 4218 03de 4D617472 		.ascii	"Matrix\000"
 4218      697800
 4219              	.LASF125:
ARM GAS  /tmp/cc3LTPp7.s 			page 89


 4220 03e5 5F6E696F 		.ascii	"_niobs\000"
 4220      627300
 4221              	.LASF37:
 4222 03ec 52657365 		.ascii	"Reserved5\000"
 4222      72766564 
 4222      3500
 4223              	.LASF40:
 4224 03f6 52657365 		.ascii	"Reserved6\000"
 4224      72766564 
 4224      3600
 4225              	.LASF4:
 4226 0400 73686F72 		.ascii	"short unsigned int\000"
 4226      7420756E 
 4226      7369676E 
 4226      65642069 
 4226      6E7400
 4227              	.LASF118:
 4228 0413 5F617465 		.ascii	"_atexit0\000"
 4228      78697430 
 4228      00
 4229              	.LASF198:
 4230 041c 756C5F70 		.ascii	"ul_prio\000"
 4230      72696F00 
 4231              	.LASF142:
 4232 0424 5F736967 		.ascii	"_signal_buf\000"
 4232      6E616C5F 
 4232      62756600 
 4233              	.LASF133:
 4234 0430 5F617363 		.ascii	"_asctime_buf\000"
 4234      74696D65 
 4234      5F627566 
 4234      00
 4235              	.LASF18:
 4236 043d 4D617472 		.ascii	"MatrixPr\000"
 4236      69785072 
 4236      00
 4237              	.LASF111:
 4238 0446 5F726573 		.ascii	"_result\000"
 4238      756C7400 
 4239              	.LASF50:
 4240 044e 5F5F7763 		.ascii	"__wch\000"
 4240      6800
 4241              	.LASF150:
 4242 0454 5F6E6578 		.ascii	"_nextf\000"
 4242      746600
 4243              	.LASF186:
 4244 045b 6D617472 		.ascii	"matrix_get_system_io\000"
 4244      69785F67 
 4244      65745F73 
 4244      79737465 
 4244      6D5F696F 
 4245              	.LASF49:
 4246 0470 77696E74 		.ascii	"wint_t\000"
 4246      5F7400
 4247              	.LASF41:
 4248 0477 43434647 		.ascii	"CCFG_SMCNFCS\000"
 4248      5F534D43 
ARM GAS  /tmp/cc3LTPp7.s 			page 90


 4248      4E464353 
 4248      00
 4249              	.LASF97:
 4250 0484 5F6C6F63 		.ascii	"_lock\000"
 4250      6B00
 4251              	.LASF129:
 4252 048a 5F6D756C 		.ascii	"_mult\000"
 4252      7400
 4253              	.LASF34:
 4254 0490 4D415452 		.ascii	"MATRIX_PR\000"
 4254      49585F50 
 4254      5200
 4255              	.LASF207:
 4256 049a 756C5F73 		.ascii	"ul_slot_cycle\000"
 4256      6C6F745F 
 4256      6379636C 
 4256      6500
 4257              	.LASF89:
 4258 04a8 5F777269 		.ascii	"_write\000"
 4258      746500
 4259              	.LASF68:
 4260 04af 5F5F746D 		.ascii	"__tm_year\000"
 4260      5F796561 
 4260      7200
 4261              	.LASF131:
 4262 04b9 5F756E75 		.ascii	"_unused_rand\000"
 4262      7365645F 
 4262      72616E64 
 4262      00
 4263              	.LASF202:
 4264 04c6 6D617472 		.ascii	"matrix_get_slave_default_master_type\000"
 4264      69785F67 
 4264      65745F73 
 4264      6C617665 
 4264      5F646566 
 4265              	.LASF173:
 4266 04eb 4D415452 		.ascii	"MATRIX_DEFMSTR_FIXED_DEFAULT_MASTER\000"
 4266      49585F44 
 4266      45464D53 
 4266      54525F46 
 4266      49584544 
 4267              	.LASF159:
 4268 050f 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 4268      6972715F 
 4268      70726576 
 4268      5F696E74 
 4268      65727275 
 4269              	.LASF192:
 4270 052c 6D617472 		.ascii	"matrix_get_slave_priority_b\000"
 4270      69785F67 
 4270      65745F73 
 4270      6C617665 
 4270      5F707269 
 4271              	.LASF213:
 4272 0548 2E2E2F61 		.ascii	"../asf/sam/drivers/matrix/matrix.c\000"
 4272      73662F73 
 4272      616D2F64 
ARM GAS  /tmp/cc3LTPp7.s 			page 91


 4272      72697665 
 4272      72732F6D 
 4273              	.LASF164:
 4274 056b 4D415452 		.ascii	"MATRIX_ULBT_4_BEAT_BURST\000"
 4274      49585F55 
 4274      4C42545F 
 4274      345F4245 
 4274      41545F42 
 4275              	.LASF13:
 4276 0584 73697A65 		.ascii	"sizetype\000"
 4276      74797065 
 4276      00
 4277              	.LASF95:
 4278 058d 5F6F6666 		.ascii	"_offset\000"
 4278      73657400 
 4279              	.LASF180:
 4280 0595 6D617472 		.ascii	"matrix_set_writeprotect\000"
 4280      69785F73 
 4280      65745F77 
 4280      72697465 
 4280      70726F74 
 4281              	.LASF212:
 4282 05ad 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 4282      43393920 
 4282      362E332E 
 4282      31203230 
 4282      31373036 
 4283 05e0 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 4283      76352D64 
 4283      3136202D 
 4283      6D666C6F 
 4283      61742D61 
 4284 0613 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 4284      6E2D7365 
 4284      6374696F 
 4284      6E73202D 
 4284      66646174 
 4285 0646 6F6E7374 		.ascii	"onstant\000"
 4285      616E7400 
 4286              	.LASF55:
 4287 064e 5F666C6F 		.ascii	"_flock_t\000"
 4287      636B5F74 
 4287      00
 4288              	.LASF67:
 4289 0657 5F5F746D 		.ascii	"__tm_mon\000"
 4289      5F6D6F6E 
 4289      00
 4290              	.LASF77:
 4291 0660 5F617465 		.ascii	"_atexit\000"
 4291      78697400 
 4292              	.LASF155:
 4293 0668 7375626F 		.ascii	"suboptarg\000"
 4293      70746172 
 4293      6700
 4294              	.LASF171:
 4295 0672 4D415452 		.ascii	"MATRIX_DEFMSTR_NO_DEFAULT_MASTER\000"
 4295      49585F44 
ARM GAS  /tmp/cc3LTPp7.s 			page 92


 4295      45464D53 
 4295      54525F4E 
 4295      4F5F4445 
 4296              	.LASF47:
 4297 0693 5F6F6666 		.ascii	"_off_t\000"
 4297      5F7400
 4298              	.LASF36:
 4299 069a 4D415452 		.ascii	"MATRIX_MRCR\000"
 4299      49585F4D 
 4299      52435200 
 4300              	.LASF208:
 4301 06a6 6D617472 		.ascii	"matrix_get_master_burst_type\000"
 4301      69785F67 
 4301      65745F6D 
 4301      61737465 
 4301      725F6275 
 4302              	.LASF160:
 4303 06c3 666C6F61 		.ascii	"float\000"
 4303      7400
 4304              	.LASF156:
 4305 06c9 675F696E 		.ascii	"g_interrupt_enabled\000"
 4305      74657272 
 4305      7570745F 
 4305      656E6162 
 4305      6C656400 
 4306              	.LASF166:
 4307 06dd 4D415452 		.ascii	"MATRIX_ULBT_16_BEAT_BURST\000"
 4307      49585F55 
 4307      4C42545F 
 4307      31365F42 
 4307      4541545F 
 4308              	.LASF46:
 4309 06f7 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 4309      4B5F5245 
 4309      43555253 
 4309      4956455F 
 4309      5400
 4310              	.LASF88:
 4311 0709 5F726561 		.ascii	"_read\000"
 4311      6400
 4312              	.LASF66:
 4313 070f 5F5F746D 		.ascii	"__tm_mday\000"
 4313      5F6D6461 
 4313      7900
 4314              	.LASF157:
 4315 0719 5F426F6F 		.ascii	"_Bool\000"
 4315      6C00
 4316              	.LASF11:
 4317 071f 696E7433 		.ascii	"int32_t\000"
 4317      325F7400 
 4318              	.LASF74:
 4319 0727 5F64736F 		.ascii	"_dso_handle\000"
 4319      5F68616E 
 4319      646C6500 
 4320              	.LASF117:
 4321 0733 5F6E6577 		.ascii	"_new\000"
 4321      00
ARM GAS  /tmp/cc3LTPp7.s 			page 93


 4322              	.LASF14:
 4323 0738 49544D5F 		.ascii	"ITM_RxBuffer\000"
 4323      52784275 
 4323      66666572 
 4323      00
 4324              	.LASF149:
 4325 0745 5F685F65 		.ascii	"_h_errno\000"
 4325      72726E6F 
 4325      00
 4326              	.LASF138:
 4327 074e 5F6D626C 		.ascii	"_mblen_state\000"
 4327      656E5F73 
 4327      74617465 
 4327      00
 4328              	.LASF70:
 4329 075b 5F5F746D 		.ascii	"__tm_yday\000"
 4329      5F796461 
 4329      7900
 4330              	.LASF178:
 4331 0765 6D617472 		.ascii	"matrix_set_can0_addr\000"
 4331      69785F73 
 4331      65745F63 
 4331      616E305F 
 4331      61646472 
 4332              	.LASF99:
 4333 077a 5F666C61 		.ascii	"_flags2\000"
 4333      67733200 
 4334              	.LASF114:
 4335 0782 5F667265 		.ascii	"_freelist\000"
 4335      656C6973 
 4335      7400
 4336              	.LASF123:
 4337 078c 5F5F4649 		.ascii	"__FILE\000"
 4337      4C4500
 4338              	.LASF54:
 4339 0793 5F6D6273 		.ascii	"_mbstate_t\000"
 4339      74617465 
 4339      5F7400
 4340              	.LASF83:
 4341 079e 5F5F7346 		.ascii	"__sFILE\000"
 4341      494C4500 
 4342              	.LASF136:
 4343 07a6 5F72616E 		.ascii	"_rand_next\000"
 4343      645F6E65 
 4343      787400
 4344              	.LASF126:
 4345 07b1 5F696F62 		.ascii	"_iobs\000"
 4345      7300
 4346              	.LASF105:
 4347 07b7 5F696E63 		.ascii	"_inc\000"
 4347      00
 4348              	.LASF78:
 4349 07bc 5F696E64 		.ascii	"_ind\000"
 4349      00
 4350              	.LASF108:
 4351 07c1 5F637572 		.ascii	"_current_locale\000"
 4351      72656E74 
ARM GAS  /tmp/cc3LTPp7.s 			page 94


 4351      5F6C6F63 
 4351      616C6500 
 4352              	.LASF168:
 4353 07d1 4D415452 		.ascii	"MATRIX_ULBT_64_BEAT_BURST\000"
 4353      49585F55 
 4353      4C42545F 
 4353      36345F42 
 4353      4541545F 
 4354              	.LASF181:
 4355 07eb 756C5F65 		.ascii	"ul_enable\000"
 4355      6E61626C 
 4355      6500
 4356              	.LASF58:
 4357 07f5 5F6D6178 		.ascii	"_maxwds\000"
 4357      77647300 
 4358              	.LASF100:
 4359 07fd 5F726565 		.ascii	"_reent\000"
 4359      6E7400
 4360              	.LASF127:
 4361 0804 5F72616E 		.ascii	"_rand48\000"
 4361      64343800 
 4362              	.LASF128:
 4363 080c 5F736565 		.ascii	"_seed\000"
 4363      6400
 4364              	.LASF52:
 4365 0812 5F5F636F 		.ascii	"__count\000"
 4365      756E7400 
 4366              	.LASF12:
 4367 081a 75696E74 		.ascii	"uint32_t\000"
 4367      33325F74 
 4367      00
 4368              	.LASF90:
 4369 0823 5F736565 		.ascii	"_seek\000"
 4369      6B00
 4370              	.LASF19:
 4371 0829 4D415452 		.ascii	"MATRIX_MCFG0\000"
 4371      49585F4D 
 4371      43464730 
 4371      00
 4372              	.LASF20:
 4373 0836 4D415452 		.ascii	"MATRIX_MCFG1\000"
 4373      49585F4D 
 4373      43464731 
 4373      00
 4374              	.LASF21:
 4375 0843 4D415452 		.ascii	"MATRIX_MCFG2\000"
 4375      49585F4D 
 4375      43464732 
 4375      00
 4376              	.LASF22:
 4377 0850 4D415452 		.ascii	"MATRIX_MCFG3\000"
 4377      49585F4D 
 4377      43464733 
 4377      00
 4378              	.LASF23:
 4379 085d 4D415452 		.ascii	"MATRIX_MCFG4\000"
 4379      49585F4D 
ARM GAS  /tmp/cc3LTPp7.s 			page 95


 4379      43464734 
 4379      00
 4380              	.LASF24:
 4381 086a 4D415452 		.ascii	"MATRIX_MCFG5\000"
 4381      49585F4D 
 4381      43464735 
 4381      00
 4382              	.LASF25:
 4383 0877 4D415452 		.ascii	"MATRIX_MCFG6\000"
 4383      49585F4D 
 4383      43464736 
 4383      00
 4384              	.LASF27:
 4385 0884 4D415452 		.ascii	"MATRIX_MCFG8\000"
 4385      49585F4D 
 4385      43464738 
 4385      00
 4386              	.LASF101:
 4387 0891 5F657272 		.ascii	"_errno\000"
 4387      6E6F00
 4388              	.LASF122:
 4389 0898 63686172 		.ascii	"char\000"
 4389      00
 4390              	.LASF94:
 4391 089d 5F626C6B 		.ascii	"_blksize\000"
 4391      73697A65 
 4391      00
 4392              	.LASF82:
 4393 08a6 5F73697A 		.ascii	"_size\000"
 4393      6500
 4394              	.LASF0:
 4395 08ac 756E7369 		.ascii	"unsigned int\000"
 4395      676E6564 
 4395      20696E74 
 4395      00
 4396              	.LASF191:
 4397 08b9 756C5F72 		.ascii	"ul_remap\000"
 4397      656D6170 
 4397      00
 4398              	.LASF30:
 4399 08c2 4D415452 		.ascii	"MATRIX_MCFG11\000"
 4399      49585F4D 
 4399      43464731 
 4399      3100
 4400              	.LASF209:
 4401 08d0 705F4D43 		.ascii	"p_MCFG\000"
 4401      464700
 4402              	.LASF177:
 4403 08d7 6D617472 		.ascii	"matrix_set_can1_addr\000"
 4403      69785F73 
 4403      65745F63 
 4403      616E315F 
 4403      61646472 
 4404              	.LASF6:
 4405 08ec 5F5F696E 		.ascii	"__int32_t\000"
 4405      7433325F 
 4405      7400
ARM GAS  /tmp/cc3LTPp7.s 			page 96


 4406              	.LASF57:
 4407 08f6 5F6E6578 		.ascii	"_next\000"
 4407      7400
 4408              	.LASF190:
 4409 08fc 6D617472 		.ascii	"matrix_set_master_remap\000"
 4409      69785F73 
 4409      65745F6D 
 4409      61737465 
 4409      725F7265 
 4410              	.LASF201:
 4411 0914 756C5F66 		.ascii	"ul_fixed_id\000"
 4411      69786564 
 4411      5F696400 
 4412              	.LASF53:
 4413 0920 5F5F7661 		.ascii	"__value\000"
 4413      6C756500 
 4414              	.LASF75:
 4415 0928 5F666E74 		.ascii	"_fntypes\000"
 4415      79706573 
 4415      00
 4416              	.LASF197:
 4417 0931 6D617472 		.ascii	"matrix_set_slave_priority\000"
 4417      69785F73 
 4417      65745F73 
 4417      6C617665 
 4417      5F707269 
 4418              	.LASF194:
 4419 094b 6D617472 		.ascii	"matrix_set_slave_priority_b\000"
 4419      69785F73 
 4419      65745F73 
 4419      6C617665 
 4419      5F707269 
 4420              	.LASF38:
 4421 0967 43434647 		.ascii	"CCFG_CAN0\000"
 4421      5F43414E 
 4421      3000
 4422              	.LASF162:
 4423 0971 4D415452 		.ascii	"MATRIX_ULBT_INFINITE_LENGTH_BURST\000"
 4423      49585F55 
 4423      4C42545F 
 4423      494E4649 
 4423      4E495445 
 4424              	.LASF56:
 4425 0993 5F5F554C 		.ascii	"__ULong\000"
 4425      6F6E6700 
 4426              	.LASF176:
 4427 099b 756C5F72 		.ascii	"ul_reg\000"
 4427      656700
 4428              	.LASF183:
 4429 09a2 6D617472 		.ascii	"matrix_get_nandflash_cs\000"
 4429      69785F67 
 4429      65745F6E 
 4429      616E6466 
 4429      6C617368 
 4430              	.LASF170:
 4431 09ba 62757273 		.ascii	"burst_type_t\000"
 4431      745F7479 
ARM GAS  /tmp/cc3LTPp7.s 			page 97


 4431      70655F74 
 4431      00
 4432              	.LASF107:
 4433 09c7 5F637572 		.ascii	"_current_category\000"
 4433      72656E74 
 4433      5F636174 
 4433      65676F72 
 4433      7900
 4434              	.LASF110:
 4435 09d9 5F5F636C 		.ascii	"__cleanup\000"
 4435      65616E75 
 4435      7000
 4436              	.LASF193:
 4437 09e3 756C5F69 		.ascii	"ul_id\000"
 4437      6400
 4438              	.LASF103:
 4439 09e9 5F737464 		.ascii	"_stdout\000"
 4439      6F757400 
 4440              	.LASF69:
 4441 09f1 5F5F746D 		.ascii	"__tm_wday\000"
 4441      5F776461 
 4441      7900
 4442              	.LASF124:
 4443 09fb 5F676C75 		.ascii	"_glue\000"
 4443      6500
 4444              	.LASF102:
 4445 0a01 5F737464 		.ascii	"_stdin\000"
 4445      696E00
 4446              	.LASF154:
 4447 0a08 5F676C6F 		.ascii	"_global_impure_ptr\000"
 4447      62616C5F 
 4447      696D7075 
 4447      72655F70 
 4447      747200
 4448              	.LASF141:
 4449 0a1b 5F6C3634 		.ascii	"_l64a_buf\000"
 4449      615F6275 
 4449      6600
 4450              	.LASF72:
 4451 0a25 5F6F6E5F 		.ascii	"_on_exit_args\000"
 4451      65786974 
 4451      5F617267 
 4451      7300
 4452              	.LASF119:
 4453 0a33 5F736967 		.ascii	"_sig_func\000"
 4453      5F66756E 
 4453      6300
 4454              	.LASF205:
 4455 0a3d 6D617472 		.ascii	"matrix_get_slave_slot_cycle\000"
 4455      69785F67 
 4455      65745F73 
 4455      6C617665 
 4455      5F736C6F 
 4456              	.LASF182:
 4457 0a59 6D617472 		.ascii	"matrix_get_writeprotect_status\000"
 4457      69785F67 
 4457      65745F77 
ARM GAS  /tmp/cc3LTPp7.s 			page 98


 4457      72697465 
 4457      70726F74 
 4458              	.LASF158:
 4459 0a78 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 4459      6972715F 
 4459      63726974 
 4459      6963616C 
 4459      5F736563 
 4460              	.LASF187:
 4461 0a99 6D617472 		.ascii	"matrix_set_system_io\000"
 4461      69785F73 
 4461      65745F73 
 4461      79737465 
 4461      6D5F696F 
 4462              	.LASF93:
 4463 0aae 5F6E6275 		.ascii	"_nbuf\000"
 4463      6600
 4464              	.LASF152:
 4465 0ab4 5F756E75 		.ascii	"_unused\000"
 4465      73656400 
 4466              	.LASF214:
 4467 0abc 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 4467      652F746F 
 4467      72626A6F 
 4467      726E2F65 
 4467      636C6970 
 4468 0aef 00       		.ascii	"\000"
 4469              	.LASF167:
 4470 0af0 4D415452 		.ascii	"MATRIX_ULBT_32_BEAT_BURST\000"
 4470      49585F55 
 4470      4C42545F 
 4470      33325F42 
 4470      4541545F 
 4471              	.LASF71:
 4472 0b0a 5F5F746D 		.ascii	"__tm_isdst\000"
 4472      5F697364 
 4472      737400
 4473              	.LASF134:
 4474 0b15 5F6C6F63 		.ascii	"_localtime_buf\000"
 4474      616C7469 
 4474      6D655F62 
 4474      756600
 4475              	.LASF44:
 4476 0b24 4D415452 		.ascii	"MATRIX_WPSR\000"
 4476      49585F57 
 4476      50535200 
 4477              	.LASF64:
 4478 0b30 5F5F746D 		.ascii	"__tm_min\000"
 4478      5F6D696E 
 4478      00
 4479              	.LASF137:
 4480 0b39 5F723438 		.ascii	"_r48\000"
 4480      00
 4481              	.LASF165:
 4482 0b3e 4D415452 		.ascii	"MATRIX_ULBT_8_BEAT_BURST\000"
 4482      49585F55 
 4482      4C42545F 
ARM GAS  /tmp/cc3LTPp7.s 			page 99


 4482      385F4245 
 4482      41545F42 
 4483              	.LASF139:
 4484 0b57 5F6D6274 		.ascii	"_mbtowc_state\000"
 4484      6F77635F 
 4484      73746174 
 4484      6500
 4485              	.LASF113:
 4486 0b65 5F703573 		.ascii	"_p5s\000"
 4486      00
 4487              	.LASF215:
 4488 0b6a 6D617472 		.ascii	"matrix_set_master_burst_type\000"
 4488      69785F73 
 4488      65745F6D 
 4488      61737465 
 4488      725F6275 
 4489              	.LASF80:
 4490 0b87 5F5F7362 		.ascii	"__sbuf\000"
 4490      756600
 4491              	.LASF16:
 4492 0b8e 4D415452 		.ascii	"MATRIX_PRAS\000"
 4492      49585F50 
 4492      52415300 
 4493              	.LASF211:
 4494 0b9a 62757273 		.ascii	"burst_type\000"
 4494      745F7479 
 4494      706500
 4495              	.LASF39:
 4496 0ba5 43434647 		.ascii	"CCFG_SYSIO\000"
 4496      5F535953 
 4496      494F00
 4497              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
