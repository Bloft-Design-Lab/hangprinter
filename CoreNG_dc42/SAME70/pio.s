ARM GAS  /tmp/ccqzbxJl.s 			page 1


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
  12              		.file	"pio.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.pio_pull_up,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	pio_pull_up
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	pio_pull_up, %function
  25              	pio_pull_up:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/pio/pio.c"
   1:../asf/sam/drivers/pio/pio.c **** /**
   2:../asf/sam/drivers/pio/pio.c ****  * \file
   3:../asf/sam/drivers/pio/pio.c ****  *
   4:../asf/sam/drivers/pio/pio.c ****  * \brief Parallel Input/Output (PIO) Controller driver for SAM.
   5:../asf/sam/drivers/pio/pio.c ****  *
   6:../asf/sam/drivers/pio/pio.c ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/pio/pio.c ****  *
   8:../asf/sam/drivers/pio/pio.c ****  * \asf_license_start
   9:../asf/sam/drivers/pio/pio.c ****  *
  10:../asf/sam/drivers/pio/pio.c ****  * \page License
  11:../asf/sam/drivers/pio/pio.c ****  *
  12:../asf/sam/drivers/pio/pio.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/pio/pio.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/pio/pio.c ****  *
  15:../asf/sam/drivers/pio/pio.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/pio/pio.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/pio/pio.c ****  *
  18:../asf/sam/drivers/pio/pio.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/pio/pio.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/pio/pio.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/pio/pio.c ****  *
  22:../asf/sam/drivers/pio/pio.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/pio/pio.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/pio/pio.c ****  *
  25:../asf/sam/drivers/pio/pio.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/pio/pio.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/pio/pio.c ****  *
  28:../asf/sam/drivers/pio/pio.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/pio/pio.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/pio/pio.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccqzbxJl.s 			page 2


  31:../asf/sam/drivers/pio/pio.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/pio/pio.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/pio/pio.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/pio/pio.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/pio/pio.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/pio/pio.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/pio/pio.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/pio/pio.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/pio/pio.c ****  *
  40:../asf/sam/drivers/pio/pio.c ****  * \asf_license_stop
  41:../asf/sam/drivers/pio/pio.c ****  *
  42:../asf/sam/drivers/pio/pio.c ****  */
  43:../asf/sam/drivers/pio/pio.c **** /*
  44:../asf/sam/drivers/pio/pio.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/pio/pio.c ****  */
  46:../asf/sam/drivers/pio/pio.c **** 
  47:../asf/sam/drivers/pio/pio.c **** #include "pio.h"
  48:../asf/sam/drivers/pio/pio.c **** 
  49:../asf/sam/drivers/pio/pio.c **** #ifndef PIO_WPMR_WPKEY_PASSWD
  50:../asf/sam/drivers/pio/pio.c **** #  define PIO_WPMR_WPKEY_PASSWD PIO_WPMR_WPKEY(0x50494Fu)
  51:../asf/sam/drivers/pio/pio.c **** #endif
  52:../asf/sam/drivers/pio/pio.c **** 
  53:../asf/sam/drivers/pio/pio.c **** /**
  54:../asf/sam/drivers/pio/pio.c ****  * \defgroup sam_drivers_pio_group Peripheral Parallel Input/Output (PIO) Controller
  55:../asf/sam/drivers/pio/pio.c ****  *
  56:../asf/sam/drivers/pio/pio.c ****  * \par Purpose
  57:../asf/sam/drivers/pio/pio.c ****  *
  58:../asf/sam/drivers/pio/pio.c ****  * The Parallel Input/Output Controller (PIO) manages up to 32 fully
  59:../asf/sam/drivers/pio/pio.c ****  * programmable input/output lines. Each I/O line may be dedicated as a
  60:../asf/sam/drivers/pio/pio.c ****  * general-purpose I/O or be assigned to a function of an embedded peripheral.
  61:../asf/sam/drivers/pio/pio.c ****  * This assures effective optimization of the pins of a product.
  62:../asf/sam/drivers/pio/pio.c ****  *
  63:../asf/sam/drivers/pio/pio.c ****  * @{
  64:../asf/sam/drivers/pio/pio.c ****  */
  65:../asf/sam/drivers/pio/pio.c **** 
  66:../asf/sam/drivers/pio/pio.c **** #ifndef FREQ_SLOW_CLOCK_EXT
  67:../asf/sam/drivers/pio/pio.c **** /* External slow clock frequency (hz) */
  68:../asf/sam/drivers/pio/pio.c **** #define FREQ_SLOW_CLOCK_EXT 32768
  69:../asf/sam/drivers/pio/pio.c **** #endif
  70:../asf/sam/drivers/pio/pio.c **** 
  71:../asf/sam/drivers/pio/pio.c **** /**
  72:../asf/sam/drivers/pio/pio.c ****  * \brief Configure PIO internal pull-up.
  73:../asf/sam/drivers/pio/pio.c ****  *
  74:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
  75:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
  76:../asf/sam/drivers/pio/pio.c ****  * \param ul_pull_up_enable Indicates if the pin(s) internal pull-up shall be
  77:../asf/sam/drivers/pio/pio.c ****  * configured.
  78:../asf/sam/drivers/pio/pio.c ****  */
  79:../asf/sam/drivers/pio/pio.c **** void pio_pull_up(Pio *p_pio, const uint32_t ul_mask,
  80:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_pull_up_enable)
  81:../asf/sam/drivers/pio/pio.c **** {
  28              		.loc 1 81 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
ARM GAS  /tmp/ccqzbxJl.s 			page 3


  82:../asf/sam/drivers/pio/pio.c **** 	/* Enable the pull-up(s) if necessary */
  83:../asf/sam/drivers/pio/pio.c **** 	if (ul_pull_up_enable) {
  34              		.loc 1 83 0
  35 0000 0AB9     		cbnz	r2, .L5
  84:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
  85:../asf/sam/drivers/pio/pio.c **** 	} else {
  86:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUDR = ul_mask;
  36              		.loc 1 86 0
  37 0002 0166     		str	r1, [r0, #96]
  38 0004 7047     		bx	lr
  39              	.L5:
  84:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
  40              		.loc 1 84 0
  41 0006 4166     		str	r1, [r0, #100]
  42 0008 7047     		bx	lr
  43              		.cfi_endproc
  44              	.LFE142:
  45              		.size	pio_pull_up, .-pio_pull_up
  46 000a 00BF     		.section	.text.pio_set_debounce_filter,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	pio_set_debounce_filter
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv5-d16
  54              		.type	pio_set_debounce_filter, %function
  55              	pio_set_debounce_filter:
  56              	.LFB143:
  87:../asf/sam/drivers/pio/pio.c **** 	}
  88:../asf/sam/drivers/pio/pio.c **** }
  89:../asf/sam/drivers/pio/pio.c **** 
  90:../asf/sam/drivers/pio/pio.c **** /**
  91:../asf/sam/drivers/pio/pio.c ****  * \brief Configure Glitch or Debouncing filter for the specified input(s).
  92:../asf/sam/drivers/pio/pio.c ****  *
  93:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
  94:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
  95:../asf/sam/drivers/pio/pio.c ****  * \param ul_cut_off Cuts off frequency for debouncing filter.
  96:../asf/sam/drivers/pio/pio.c ****  */
  97:../asf/sam/drivers/pio/pio.c **** void pio_set_debounce_filter(Pio *p_pio, const uint32_t ul_mask,
  98:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_cut_off)
  99:../asf/sam/drivers/pio/pio.c **** {
  57              		.loc 1 99 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62              	.LVL1:
 100:../asf/sam/drivers/pio/pio.c **** #if (SAM3S || SAM3N || SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || SAMV71 || SA
 101:../asf/sam/drivers/pio/pio.c **** 	/* Set Debouncing, 0 bit field no effect */
 102:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_IFSCER = ul_mask;
 103:../asf/sam/drivers/pio/pio.c **** #elif (SAM3XA || SAM3U)
 104:../asf/sam/drivers/pio/pio.c **** 	/* Set Debouncing, 0 bit field no effect */
 105:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_DIFSR = ul_mask;
 106:../asf/sam/drivers/pio/pio.c **** #else
 107:../asf/sam/drivers/pio/pio.c **** #error "Unsupported device"
 108:../asf/sam/drivers/pio/pio.c **** #endif
ARM GAS  /tmp/ccqzbxJl.s 			page 4


 109:../asf/sam/drivers/pio/pio.c **** 
 110:../asf/sam/drivers/pio/pio.c **** 	/*
 111:../asf/sam/drivers/pio/pio.c **** 	 * The debouncing filter can filter a pulse of less than 1/2 Period of a
 112:../asf/sam/drivers/pio/pio.c **** 	 * programmable Divided Slow Clock:
 113:../asf/sam/drivers/pio/pio.c **** 	 * Tdiv_slclk = ((DIV+1)*2).Tslow_clock
 114:../asf/sam/drivers/pio/pio.c **** 	 */
 115:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_SCDR = PIO_SCDR_DIV((FREQ_SLOW_CLOCK_EXT /
  63              		.loc 1 115 0
  64 0000 5200     		lsls	r2, r2, #1
  65              	.LVL2:
  66 0002 4FF40043 		mov	r3, #32768
 102:../asf/sam/drivers/pio/pio.c **** #elif (SAM3XA || SAM3U)
  67              		.loc 1 102 0
  68 0006 C0F88410 		str	r1, [r0, #132]
  69              		.loc 1 115 0
  70 000a B3FBF2F3 		udiv	r3, r3, r2
  71 000e 013B     		subs	r3, r3, #1
  72 0010 C3F30D03 		ubfx	r3, r3, #0, #14
  73 0014 C0F88C30 		str	r3, [r0, #140]
  74 0018 7047     		bx	lr
  75              		.cfi_endproc
  76              	.LFE143:
  77              		.size	pio_set_debounce_filter, .-pio_set_debounce_filter
  78 001a 00BF     		.section	.text.pio_set,"ax",%progbits
  79              		.align	1
  80              		.p2align 2,,3
  81              		.global	pio_set
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu fpv5-d16
  86              		.type	pio_set, %function
  87              	pio_set:
  88              	.LFB195:
  89              		.cfi_startproc
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 0163     		str	r1, [r0, #48]
  94 0002 7047     		bx	lr
  95              		.cfi_endproc
  96              	.LFE195:
  97              		.size	pio_set, .-pio_set
  98              		.section	.text.pio_clear,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	pio_clear
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv5-d16
 106              		.type	pio_clear, %function
 107              	pio_clear:
 108              	.LFB193:
 109              		.cfi_startproc
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccqzbxJl.s 			page 5


 112              		@ link register save eliminated.
 113 0000 4163     		str	r1, [r0, #52]
 114 0002 7047     		bx	lr
 115              		.cfi_endproc
 116              	.LFE193:
 117              		.size	pio_clear, .-pio_clear
 118              		.section	.text.pio_get,"ax",%progbits
 119              		.align	1
 120              		.p2align 2,,3
 121              		.global	pio_get
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu fpv5-d16
 126              		.type	pio_get, %function
 127              	pio_get:
 128              	.LFB146:
 116:../asf/sam/drivers/pio/pio.c **** 			(2 * (ul_cut_off))) - 1);
 117:../asf/sam/drivers/pio/pio.c **** }
 118:../asf/sam/drivers/pio/pio.c **** 
 119:../asf/sam/drivers/pio/pio.c **** /**
 120:../asf/sam/drivers/pio/pio.c ****  * \brief Set a high output level on all the PIOs defined in ul_mask.
 121:../asf/sam/drivers/pio/pio.c ****  * This has no immediate effects on PIOs that are not output, but the PIO
 122:../asf/sam/drivers/pio/pio.c ****  * controller will save the value if they are changed to outputs.
 123:../asf/sam/drivers/pio/pio.c ****  *
 124:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 125:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 126:../asf/sam/drivers/pio/pio.c ****  */
 127:../asf/sam/drivers/pio/pio.c **** void pio_set(Pio *p_pio, const uint32_t ul_mask)
 128:../asf/sam/drivers/pio/pio.c **** {
 129:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_SODR = ul_mask;
 130:../asf/sam/drivers/pio/pio.c **** }
 131:../asf/sam/drivers/pio/pio.c **** 
 132:../asf/sam/drivers/pio/pio.c **** /**
 133:../asf/sam/drivers/pio/pio.c ****  * \brief Set a low output level on all the PIOs defined in ul_mask.
 134:../asf/sam/drivers/pio/pio.c ****  * This has no immediate effects on PIOs that are not output, but the PIO
 135:../asf/sam/drivers/pio/pio.c ****  * controller will save the value if they are changed to outputs.
 136:../asf/sam/drivers/pio/pio.c ****  *
 137:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 138:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 139:../asf/sam/drivers/pio/pio.c ****  */
 140:../asf/sam/drivers/pio/pio.c **** void pio_clear(Pio *p_pio, const uint32_t ul_mask)
 141:../asf/sam/drivers/pio/pio.c **** {
 142:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_CODR = ul_mask;
 143:../asf/sam/drivers/pio/pio.c **** }
 144:../asf/sam/drivers/pio/pio.c **** 
 145:../asf/sam/drivers/pio/pio.c **** /**
 146:../asf/sam/drivers/pio/pio.c ****  * \brief Return 1 if one or more PIOs of the given Pin instance currently have
 147:../asf/sam/drivers/pio/pio.c ****  * a high level; otherwise returns 0. This method returns the actual value that
 148:../asf/sam/drivers/pio/pio.c ****  * is being read on the pin. To return the supposed output value of a pin, use
 149:../asf/sam/drivers/pio/pio.c ****  * pio_get_output_data_status() instead.
 150:../asf/sam/drivers/pio/pio.c ****  *
 151:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 152:../asf/sam/drivers/pio/pio.c ****  * \param ul_type PIO type.
 153:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 154:../asf/sam/drivers/pio/pio.c ****  *
 155:../asf/sam/drivers/pio/pio.c ****  * \retval 1 at least one PIO currently has a high level.
ARM GAS  /tmp/ccqzbxJl.s 			page 6


 156:../asf/sam/drivers/pio/pio.c ****  * \retval 0 all PIOs have a low level.
 157:../asf/sam/drivers/pio/pio.c ****  */
 158:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get(Pio *p_pio, const pio_type_t ul_type,
 159:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_mask)
 160:../asf/sam/drivers/pio/pio.c **** {
 129              		.loc 1 160 0
 130              		.cfi_startproc
 131              		@ args = 0, pretend = 0, frame = 0
 132              		@ frame_needed = 0, uses_anonymous_args = 0
 133              		@ link register save eliminated.
 134              	.LVL3:
 161:../asf/sam/drivers/pio/pio.c **** 	uint32_t ul_reg;
 162:../asf/sam/drivers/pio/pio.c **** 
 163:../asf/sam/drivers/pio/pio.c **** 	if ((ul_type == PIO_OUTPUT_0) || (ul_type == PIO_OUTPUT_1)) {
 135              		.loc 1 163 0
 136 0000 21F00061 		bic	r1, r1, #134217728
 137              	.LVL4:
 138 0004 B1F1405F 		cmp	r1, #805306368
 139 0008 05D1     		bne	.L10
 164:../asf/sam/drivers/pio/pio.c **** 		ul_reg = p_pio->PIO_ODSR;
 140              		.loc 1 164 0
 141 000a 836B     		ldr	r3, [r0, #56]
 142              	.LVL5:
 143              	.L11:
 165:../asf/sam/drivers/pio/pio.c **** 	} else {
 166:../asf/sam/drivers/pio/pio.c **** 		ul_reg = p_pio->PIO_PDSR;
 167:../asf/sam/drivers/pio/pio.c **** 	}
 168:../asf/sam/drivers/pio/pio.c **** 
 169:../asf/sam/drivers/pio/pio.c **** 	if ((ul_reg & ul_mask) == 0) {
 144              		.loc 1 169 0
 145 000c 1342     		tst	r3, r2
 170:../asf/sam/drivers/pio/pio.c **** 		return 0;
 171:../asf/sam/drivers/pio/pio.c **** 	} else {
 172:../asf/sam/drivers/pio/pio.c **** 		return 1;
 173:../asf/sam/drivers/pio/pio.c **** 	}
 174:../asf/sam/drivers/pio/pio.c **** }
 146              		.loc 1 174 0
 147 000e 14BF     		ite	ne
 148 0010 0120     		movne	r0, #1
 149              	.LVL6:
 150 0012 0020     		moveq	r0, #0
 151 0014 7047     		bx	lr
 152              	.LVL7:
 153              	.L10:
 166:../asf/sam/drivers/pio/pio.c **** 	}
 154              		.loc 1 166 0
 155 0016 C36B     		ldr	r3, [r0, #60]
 156              	.LVL8:
 157 0018 F8E7     		b	.L11
 158              		.cfi_endproc
 159              	.LFE146:
 160              		.size	pio_get, .-pio_get
 161 001a 00BF     		.section	.text.pio_set_peripheral,"ax",%progbits
 162              		.align	1
 163              		.p2align 2,,3
 164              		.global	pio_set_peripheral
 165              		.syntax unified
ARM GAS  /tmp/ccqzbxJl.s 			page 7


 166              		.thumb
 167              		.thumb_func
 168              		.fpu fpv5-d16
 169              		.type	pio_set_peripheral, %function
 170              	pio_set_peripheral:
 171              	.LFB147:
 175:../asf/sam/drivers/pio/pio.c **** 
 176:../asf/sam/drivers/pio/pio.c **** /**
 177:../asf/sam/drivers/pio/pio.c ****  * \brief Configure IO of a PIO controller as being controlled by a specific
 178:../asf/sam/drivers/pio/pio.c ****  * peripheral.
 179:../asf/sam/drivers/pio/pio.c ****  *
 180:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 181:../asf/sam/drivers/pio/pio.c ****  * \param ul_type PIO type.
 182:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 183:../asf/sam/drivers/pio/pio.c ****  */
 184:../asf/sam/drivers/pio/pio.c **** void pio_set_peripheral(Pio *p_pio, const pio_type_t ul_type,
 185:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_mask)
 186:../asf/sam/drivers/pio/pio.c **** {
 172              		.loc 1 186 0
 173              		.cfi_startproc
 174              		@ args = 0, pretend = 0, frame = 0
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176              		@ link register save eliminated.
 177              	.LVL9:
 187:../asf/sam/drivers/pio/pio.c **** 	uint32_t ul_sr;
 188:../asf/sam/drivers/pio/pio.c **** 
 189:../asf/sam/drivers/pio/pio.c **** 	/* Disable interrupts on the pin(s) */
 190:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_IDR = ul_mask;
 191:../asf/sam/drivers/pio/pio.c **** 
 192:../asf/sam/drivers/pio/pio.c **** #if (SAM3S || SAM3N || SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || SAMV71 || SA
 193:../asf/sam/drivers/pio/pio.c **** 	switch (ul_type) {
 178              		.loc 1 193 0
 179 0000 B1F1C05F 		cmp	r1, #402653184
 190:../asf/sam/drivers/pio/pio.c **** 
 180              		.loc 1 190 0
 181 0004 4264     		str	r2, [r0, #68]
 182              		.loc 1 193 0
 183 0006 34D0     		beq	.L14
 184 0008 10D8     		bhi	.L15
 185 000a B1F1006F 		cmp	r1, #134217728
 186 000e 1CD0     		beq	.L16
 187 0010 B1F1805F 		cmp	r1, #268435456
 188 0014 2AD1     		bne	.L38
 194:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_A:
 195:../asf/sam/drivers/pio/pio.c **** 		ul_sr = p_pio->PIO_ABCDSR[0];
 196:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] &= (~ul_mask & ul_sr);
 197:../asf/sam/drivers/pio/pio.c **** 
 198:../asf/sam/drivers/pio/pio.c **** 		ul_sr = p_pio->PIO_ABCDSR[1];
 199:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] &= (~ul_mask & ul_sr);
 200:../asf/sam/drivers/pio/pio.c **** 		break;
 201:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_B:
 202:../asf/sam/drivers/pio/pio.c **** 		ul_sr = p_pio->PIO_ABCDSR[0];
 189              		.loc 1 202 0
 190 0016 036F     		ldr	r3, [r0, #112]
 191              	.LVL10:
 203:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] = (ul_mask | ul_sr);
 192              		.loc 1 203 0
ARM GAS  /tmp/ccqzbxJl.s 			page 8


 193 0018 1343     		orrs	r3, r3, r2
 194              	.LVL11:
 195 001a 0367     		str	r3, [r0, #112]
 204:../asf/sam/drivers/pio/pio.c **** 
 205:../asf/sam/drivers/pio/pio.c **** 		ul_sr = p_pio->PIO_ABCDSR[1];
 196              		.loc 1 205 0
 197 001c 436F     		ldr	r3, [r0, #116]
 198              	.LVL12:
 206:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] &= (~ul_mask & ul_sr);
 199              		.loc 1 206 0
 200 001e 416F     		ldr	r1, [r0, #116]
 201              	.LVL13:
 202 0020 0B40     		ands	r3, r3, r1
 203              	.LVL14:
 204 0022 23EA0203 		bic	r3, r3, r2
 205 0026 4367     		str	r3, [r0, #116]
 206              	.L34:
 207:../asf/sam/drivers/pio/pio.c **** 		break;
 208:../asf/sam/drivers/pio/pio.c **** #if (!SAMG)
 209:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_C:
 210:../asf/sam/drivers/pio/pio.c **** 		ul_sr = p_pio->PIO_ABCDSR[0];
 211:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] &= (~ul_mask & ul_sr);
 212:../asf/sam/drivers/pio/pio.c **** 
 213:../asf/sam/drivers/pio/pio.c **** 		ul_sr = p_pio->PIO_ABCDSR[1];
 214:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] = (ul_mask | ul_sr);
 215:../asf/sam/drivers/pio/pio.c **** 		break;
 216:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_D:
 217:../asf/sam/drivers/pio/pio.c **** 		ul_sr = p_pio->PIO_ABCDSR[0];
 218:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] = (ul_mask | ul_sr);
 219:../asf/sam/drivers/pio/pio.c **** 
 220:../asf/sam/drivers/pio/pio.c **** 		ul_sr = p_pio->PIO_ABCDSR[1];
 221:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] = (ul_mask | ul_sr);
 222:../asf/sam/drivers/pio/pio.c **** 		break;
 223:../asf/sam/drivers/pio/pio.c **** #endif
 224:../asf/sam/drivers/pio/pio.c **** 		/* Other types are invalid in this function */
 225:../asf/sam/drivers/pio/pio.c **** 	case PIO_INPUT:
 226:../asf/sam/drivers/pio/pio.c **** 	case PIO_OUTPUT_0:
 227:../asf/sam/drivers/pio/pio.c **** 	case PIO_OUTPUT_1:
 228:../asf/sam/drivers/pio/pio.c **** 	case PIO_NOT_A_PIN:
 229:../asf/sam/drivers/pio/pio.c **** 		return;
 230:../asf/sam/drivers/pio/pio.c **** 	}
 231:../asf/sam/drivers/pio/pio.c **** #elif (SAM3XA|| SAM3U)
 232:../asf/sam/drivers/pio/pio.c **** 	switch (ul_type) {
 233:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_A:
 234:../asf/sam/drivers/pio/pio.c **** 		ul_sr = p_pio->PIO_ABSR;
 235:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABSR &= (~ul_mask & ul_sr);
 236:../asf/sam/drivers/pio/pio.c **** 		break;
 237:../asf/sam/drivers/pio/pio.c **** 
 238:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_B:
 239:../asf/sam/drivers/pio/pio.c **** 		ul_sr = p_pio->PIO_ABSR;
 240:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABSR = (ul_mask | ul_sr);
 241:../asf/sam/drivers/pio/pio.c **** 		break;
 242:../asf/sam/drivers/pio/pio.c **** 
 243:../asf/sam/drivers/pio/pio.c **** 		// other types are invalid in this function
 244:../asf/sam/drivers/pio/pio.c **** 	case PIO_INPUT:
 245:../asf/sam/drivers/pio/pio.c **** 	case PIO_OUTPUT_0:
 246:../asf/sam/drivers/pio/pio.c **** 	case PIO_OUTPUT_1:
ARM GAS  /tmp/ccqzbxJl.s 			page 9


 247:../asf/sam/drivers/pio/pio.c **** 	case PIO_NOT_A_PIN:
 248:../asf/sam/drivers/pio/pio.c **** 		return;
 249:../asf/sam/drivers/pio/pio.c **** 	}
 250:../asf/sam/drivers/pio/pio.c **** #else
 251:../asf/sam/drivers/pio/pio.c **** #error "Unsupported device"
 252:../asf/sam/drivers/pio/pio.c **** #endif
 253:../asf/sam/drivers/pio/pio.c **** 
 254:../asf/sam/drivers/pio/pio.c **** 	/* Remove the pins from under the control of PIO */
 255:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PDR = ul_mask;
 207              		.loc 1 255 0
 208 0028 4260     		str	r2, [r0, #4]
 209 002a 7047     		bx	lr
 210              	.LVL15:
 211              	.L15:
 193:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_A:
 212              		.loc 1 193 0
 213 002c B1F1205F 		cmp	r1, #671088640
 214 0030 1BD0     		beq	.L37
 215 0032 29D8     		bhi	.L19
 216 0034 B1F1005F 		cmp	r1, #536870912
 217 0038 F6D1     		bne	.L34
 217:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] = (ul_mask | ul_sr);
 218              		.loc 1 217 0
 219 003a 036F     		ldr	r3, [r0, #112]
 220              	.LVL16:
 218:../asf/sam/drivers/pio/pio.c **** 
 221              		.loc 1 218 0
 222 003c 1343     		orrs	r3, r3, r2
 223              	.LVL17:
 224 003e 0367     		str	r3, [r0, #112]
 220:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] = (ul_mask | ul_sr);
 225              		.loc 1 220 0
 226 0040 436F     		ldr	r3, [r0, #116]
 227              	.LVL18:
 221:../asf/sam/drivers/pio/pio.c **** 		break;
 228              		.loc 1 221 0
 229 0042 1343     		orrs	r3, r3, r2
 230              	.LVL19:
 231 0044 4367     		str	r3, [r0, #116]
 232              		.loc 1 255 0
 233 0046 4260     		str	r2, [r0, #4]
 234 0048 7047     		bx	lr
 235              	.L16:
 195:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] &= (~ul_mask & ul_sr);
 236              		.loc 1 195 0
 237 004a 016F     		ldr	r1, [r0, #112]
 238              	.LVL20:
 196:../asf/sam/drivers/pio/pio.c **** 
 239              		.loc 1 196 0
 240 004c D343     		mvns	r3, r2
 186:../asf/sam/drivers/pio/pio.c **** 	uint32_t ul_sr;
 241              		.loc 1 186 0
 242 004e 10B4     		push	{r4}
 243              		.cfi_def_cfa_offset 4
 244              		.cfi_offset 4, -4
 196:../asf/sam/drivers/pio/pio.c **** 
 245              		.loc 1 196 0
ARM GAS  /tmp/ccqzbxJl.s 			page 10


 246 0050 046F     		ldr	r4, [r0, #112]
 247 0052 2140     		ands	r1, r1, r4
 248              	.LVL21:
 249 0054 1C46     		mov	r4, r3
 250 0056 1940     		ands	r1, r1, r3
 251 0058 0167     		str	r1, [r0, #112]
 198:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] &= (~ul_mask & ul_sr);
 252              		.loc 1 198 0
 253 005a 436F     		ldr	r3, [r0, #116]
 254              	.LVL22:
 199:../asf/sam/drivers/pio/pio.c **** 		break;
 255              		.loc 1 199 0
 256 005c 416F     		ldr	r1, [r0, #116]
 257 005e 0B40     		ands	r3, r3, r1
 258              	.LVL23:
 259 0060 2340     		ands	r3, r3, r4
 256:../asf/sam/drivers/pio/pio.c **** }
 260              		.loc 1 256 0
 261 0062 5DF8044B 		ldr	r4, [sp], #4
 262              		.cfi_restore 4
 263              		.cfi_def_cfa_offset 0
 199:../asf/sam/drivers/pio/pio.c **** 		break;
 264              		.loc 1 199 0
 265 0066 4367     		str	r3, [r0, #116]
 255:../asf/sam/drivers/pio/pio.c **** }
 266              		.loc 1 255 0
 267 0068 4260     		str	r2, [r0, #4]
 268              	.L37:
 269              		.loc 1 256 0
 270 006a 7047     		bx	lr
 271              	.LVL24:
 272              	.L38:
 193:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_A:
 273              		.loc 1 193 0
 274 006c 0029     		cmp	r1, #0
 275 006e DBD1     		bne	.L34
 276 0070 7047     		bx	lr
 277              	.L14:
 210:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] &= (~ul_mask & ul_sr);
 278              		.loc 1 210 0
 279 0072 036F     		ldr	r3, [r0, #112]
 280              	.LVL25:
 211:../asf/sam/drivers/pio/pio.c **** 
 281              		.loc 1 211 0
 282 0074 016F     		ldr	r1, [r0, #112]
 283              	.LVL26:
 284 0076 0B40     		ands	r3, r3, r1
 285              	.LVL27:
 286 0078 23EA0203 		bic	r3, r3, r2
 287 007c 0367     		str	r3, [r0, #112]
 213:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] = (ul_mask | ul_sr);
 288              		.loc 1 213 0
 289 007e 436F     		ldr	r3, [r0, #116]
 290              	.LVL28:
 214:../asf/sam/drivers/pio/pio.c **** 		break;
 291              		.loc 1 214 0
 292 0080 1343     		orrs	r3, r3, r2
ARM GAS  /tmp/ccqzbxJl.s 			page 11


 293              	.LVL29:
 294 0082 4367     		str	r3, [r0, #116]
 255:../asf/sam/drivers/pio/pio.c **** }
 295              		.loc 1 255 0
 296 0084 4260     		str	r2, [r0, #4]
 297 0086 7047     		bx	lr
 298              	.LVL30:
 299              	.L19:
 193:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_A:
 300              		.loc 1 193 0
 301 0088 B1F1405F 		cmp	r1, #805306368
 302 008c EDD0     		beq	.L37
 303 008e B1F1605F 		cmp	r1, #939524096
 304 0092 EAD0     		beq	.L37
 305 0094 C8E7     		b	.L34
 306              		.cfi_endproc
 307              	.LFE147:
 308              		.size	pio_set_peripheral, .-pio_set_peripheral
 309 0096 00BF     		.section	.text.pio_set_input,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.global	pio_set_input
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu fpv5-d16
 317              		.type	pio_set_input, %function
 318              	pio_set_input:
 319              	.LFB148:
 257:../asf/sam/drivers/pio/pio.c **** 
 258:../asf/sam/drivers/pio/pio.c **** /**
 259:../asf/sam/drivers/pio/pio.c ****  * \brief Configure one or more pin(s) or a PIO controller as inputs.
 260:../asf/sam/drivers/pio/pio.c ****  * Optionally, the corresponding internal pull-up(s) and glitch filter(s) can
 261:../asf/sam/drivers/pio/pio.c ****  * be enabled.
 262:../asf/sam/drivers/pio/pio.c ****  *
 263:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 264:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask indicating which pin(s) to configure as input(s).
 265:../asf/sam/drivers/pio/pio.c ****  * \param ul_attribute PIO attribute(s).
 266:../asf/sam/drivers/pio/pio.c ****  */
 267:../asf/sam/drivers/pio/pio.c **** void pio_set_input(Pio *p_pio, const uint32_t ul_mask,
 268:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_attribute)
 269:../asf/sam/drivers/pio/pio.c **** {
 320              		.loc 1 269 0
 321              		.cfi_startproc
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324              		@ link register save eliminated.
 325              	.LVL31:
 326              	.LBB94:
 327              	.LBB95:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 328              		.loc 1 83 0
 329 0000 D307     		lsls	r3, r2, #31
 330              	.LBE95:
 331              	.LBE94:
 332              	.LBB98:
 333              	.LBB99:
ARM GAS  /tmp/ccqzbxJl.s 			page 12


 270:../asf/sam/drivers/pio/pio.c **** 	pio_disable_interrupt(p_pio, ul_mask);
 271:../asf/sam/drivers/pio/pio.c **** 	pio_pull_up(p_pio, ul_mask, ul_attribute & PIO_PULLUP);
 272:../asf/sam/drivers/pio/pio.c **** 
 273:../asf/sam/drivers/pio/pio.c **** 	/* Enable Input Filter if necessary */
 274:../asf/sam/drivers/pio/pio.c **** 	if (ul_attribute & (PIO_DEGLITCH | PIO_DEBOUNCE)) {
 275:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFER = ul_mask;
 276:../asf/sam/drivers/pio/pio.c **** 	} else {
 277:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFDR = ul_mask;
 278:../asf/sam/drivers/pio/pio.c **** 	}
 279:../asf/sam/drivers/pio/pio.c **** 
 280:../asf/sam/drivers/pio/pio.c **** #if (SAM3S || SAM3N || SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || SAMV71 || SA
 281:../asf/sam/drivers/pio/pio.c **** 	/* Enable de-glitch or de-bounce if necessary */
 282:../asf/sam/drivers/pio/pio.c **** 	if (ul_attribute & PIO_DEGLITCH) {
 283:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 284:../asf/sam/drivers/pio/pio.c **** 	} else {
 285:../asf/sam/drivers/pio/pio.c **** 		if (ul_attribute & PIO_DEBOUNCE) {
 286:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_IFSCER = ul_mask;
 287:../asf/sam/drivers/pio/pio.c **** 		}
 288:../asf/sam/drivers/pio/pio.c **** 	}
 289:../asf/sam/drivers/pio/pio.c **** #elif (SAM3XA|| SAM3U)
 290:../asf/sam/drivers/pio/pio.c **** 	/* Enable de-glitch or de-bounce if necessary */
 291:../asf/sam/drivers/pio/pio.c **** 	if (ul_attribute & PIO_DEGLITCH) {
 292:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_SCIFSR = ul_mask;
 293:../asf/sam/drivers/pio/pio.c **** 	} else {
 294:../asf/sam/drivers/pio/pio.c **** 		if (ul_attribute & PIO_DEBOUNCE) {
 295:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_DIFSR = ul_mask;
 296:../asf/sam/drivers/pio/pio.c **** 		}
 297:../asf/sam/drivers/pio/pio.c **** 	}
 298:../asf/sam/drivers/pio/pio.c **** #else
 299:../asf/sam/drivers/pio/pio.c **** #error "Unsupported device"
 300:../asf/sam/drivers/pio/pio.c **** #endif
 301:../asf/sam/drivers/pio/pio.c **** 
 302:../asf/sam/drivers/pio/pio.c **** 	/* Configure pin as input */
 303:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_ODR = ul_mask;
 304:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 305:../asf/sam/drivers/pio/pio.c **** }
 306:../asf/sam/drivers/pio/pio.c **** 
 307:../asf/sam/drivers/pio/pio.c **** /**
 308:../asf/sam/drivers/pio/pio.c ****  * \brief Configure one or more pin(s) of a PIO controller as outputs, with
 309:../asf/sam/drivers/pio/pio.c ****  * the given default value. Optionally, the multi-drive feature can be enabled
 310:../asf/sam/drivers/pio/pio.c ****  * on the pin(s).
 311:../asf/sam/drivers/pio/pio.c ****  *
 312:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 313:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask indicating which pin(s) to configure.
 314:../asf/sam/drivers/pio/pio.c ****  * \param ul_default_level Default level on the pin(s).
 315:../asf/sam/drivers/pio/pio.c ****  * \param ul_multidrive_enable Indicates if the pin(s) shall be configured as
 316:../asf/sam/drivers/pio/pio.c ****  * open-drain.
 317:../asf/sam/drivers/pio/pio.c ****  * \param ul_pull_up_enable Indicates if the pin shall have its pull-up
 318:../asf/sam/drivers/pio/pio.c ****  * activated.
 319:../asf/sam/drivers/pio/pio.c ****  */
 320:../asf/sam/drivers/pio/pio.c **** void pio_set_output(Pio *p_pio, const uint32_t ul_mask,
 321:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_default_level,
 322:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_multidrive_enable,
 323:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_pull_up_enable)
 324:../asf/sam/drivers/pio/pio.c **** {
 325:../asf/sam/drivers/pio/pio.c **** 	pio_disable_interrupt(p_pio, ul_mask);
 326:../asf/sam/drivers/pio/pio.c **** 	pio_pull_up(p_pio, ul_mask, ul_pull_up_enable);
ARM GAS  /tmp/ccqzbxJl.s 			page 13


 327:../asf/sam/drivers/pio/pio.c **** 
 328:../asf/sam/drivers/pio/pio.c **** 	/* Enable multi-drive if necessary */
 329:../asf/sam/drivers/pio/pio.c **** 	if (ul_multidrive_enable) {
 330:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_MDER = ul_mask;
 331:../asf/sam/drivers/pio/pio.c **** 	} else {
 332:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_MDDR = ul_mask;
 333:../asf/sam/drivers/pio/pio.c **** 	}
 334:../asf/sam/drivers/pio/pio.c **** 
 335:../asf/sam/drivers/pio/pio.c **** 	/* Set default value */
 336:../asf/sam/drivers/pio/pio.c **** 	if (ul_default_level) {
 337:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_SODR = ul_mask;
 338:../asf/sam/drivers/pio/pio.c **** 	} else {
 339:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_CODR = ul_mask;
 340:../asf/sam/drivers/pio/pio.c **** 	}
 341:../asf/sam/drivers/pio/pio.c **** 
 342:../asf/sam/drivers/pio/pio.c **** 	/* Configure pin(s) as output(s) */
 343:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_OER = ul_mask;
 344:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 345:../asf/sam/drivers/pio/pio.c **** }
 346:../asf/sam/drivers/pio/pio.c **** 
 347:../asf/sam/drivers/pio/pio.c **** /**
 348:../asf/sam/drivers/pio/pio.c ****  * \brief Perform complete pin(s) configuration; general attributes and PIO init
 349:../asf/sam/drivers/pio/pio.c ****  * if necessary.
 350:../asf/sam/drivers/pio/pio.c ****  *
 351:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 352:../asf/sam/drivers/pio/pio.c ****  * \param ul_type PIO type.
 353:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 354:../asf/sam/drivers/pio/pio.c ****  * \param ul_attribute Pins attributes.
 355:../asf/sam/drivers/pio/pio.c ****  *
 356:../asf/sam/drivers/pio/pio.c ****  * \return Whether the pin(s) have been configured properly.
 357:../asf/sam/drivers/pio/pio.c ****  */
 358:../asf/sam/drivers/pio/pio.c **** uint32_t pio_configure(Pio *p_pio, const pio_type_t ul_type,
 359:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_mask, const uint32_t ul_attribute)
 360:../asf/sam/drivers/pio/pio.c **** {
 361:../asf/sam/drivers/pio/pio.c **** 	/* Configure pins */
 362:../asf/sam/drivers/pio/pio.c **** 	switch (ul_type) {
 363:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_A:
 364:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_B:
 365:../asf/sam/drivers/pio/pio.c **** #if (SAM3S || SAM3N || SAM4S || SAM4E || SAM4N || SAM4C || SAM4CP || SAM4CM || SAMV71 || SAMV70 || 
 366:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_C:
 367:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_D:
 368:../asf/sam/drivers/pio/pio.c **** #endif
 369:../asf/sam/drivers/pio/pio.c **** 		pio_set_peripheral(p_pio, ul_type, ul_mask);
 370:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, ul_mask, (ul_attribute & PIO_PULLUP));
 371:../asf/sam/drivers/pio/pio.c **** 		break;
 372:../asf/sam/drivers/pio/pio.c **** 
 373:../asf/sam/drivers/pio/pio.c **** 	case PIO_INPUT:
 374:../asf/sam/drivers/pio/pio.c **** 		pio_set_input(p_pio, ul_mask, ul_attribute);
 375:../asf/sam/drivers/pio/pio.c **** 		break;
 376:../asf/sam/drivers/pio/pio.c **** 
 377:../asf/sam/drivers/pio/pio.c **** 	case PIO_OUTPUT_0:
 378:../asf/sam/drivers/pio/pio.c **** 	case PIO_OUTPUT_1:
 379:../asf/sam/drivers/pio/pio.c **** 		pio_set_output(p_pio, ul_mask, (ul_type == PIO_OUTPUT_1),
 380:../asf/sam/drivers/pio/pio.c **** 				(ul_attribute & PIO_OPENDRAIN) ? 1 : 0,
 381:../asf/sam/drivers/pio/pio.c **** 				(ul_attribute & PIO_PULLUP) ? 1 : 0);
 382:../asf/sam/drivers/pio/pio.c **** 		break;
 383:../asf/sam/drivers/pio/pio.c **** 
ARM GAS  /tmp/ccqzbxJl.s 			page 14


 384:../asf/sam/drivers/pio/pio.c **** 	default:
 385:../asf/sam/drivers/pio/pio.c **** 		return 0;
 386:../asf/sam/drivers/pio/pio.c **** 	}
 387:../asf/sam/drivers/pio/pio.c **** 
 388:../asf/sam/drivers/pio/pio.c **** 	return 1;
 389:../asf/sam/drivers/pio/pio.c **** }
 390:../asf/sam/drivers/pio/pio.c **** 
 391:../asf/sam/drivers/pio/pio.c **** /**
 392:../asf/sam/drivers/pio/pio.c ****  * \brief Return 1 if one or more PIOs of the given Pin are configured to
 393:../asf/sam/drivers/pio/pio.c ****  * output a high level (even if they are not output).
 394:../asf/sam/drivers/pio/pio.c ****  * To get the actual value of the pin, use PIO_Get() instead.
 395:../asf/sam/drivers/pio/pio.c ****  *
 396:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 397:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s).
 398:../asf/sam/drivers/pio/pio.c ****  *
 399:../asf/sam/drivers/pio/pio.c ****  * \retval 1 At least one PIO is configured to output a high level.
 400:../asf/sam/drivers/pio/pio.c ****  * \retval 0 All PIOs are configured to output a low level.
 401:../asf/sam/drivers/pio/pio.c ****  */
 402:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get_output_data_status(const Pio *p_pio,
 403:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_mask)
 404:../asf/sam/drivers/pio/pio.c **** {
 405:../asf/sam/drivers/pio/pio.c **** 	if ((p_pio->PIO_ODSR & ul_mask) == 0) {
 406:../asf/sam/drivers/pio/pio.c **** 		return 0;
 407:../asf/sam/drivers/pio/pio.c **** 	} else {
 408:../asf/sam/drivers/pio/pio.c **** 		return 1;
 409:../asf/sam/drivers/pio/pio.c **** 	}
 410:../asf/sam/drivers/pio/pio.c **** }
 411:../asf/sam/drivers/pio/pio.c **** 
 412:../asf/sam/drivers/pio/pio.c **** /**
 413:../asf/sam/drivers/pio/pio.c ****  * \brief Configure PIO pin multi-driver.
 414:../asf/sam/drivers/pio/pio.c ****  *
 415:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 416:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 417:../asf/sam/drivers/pio/pio.c ****  * \param ul_multi_driver_enable Indicates if the pin(s) multi-driver shall be
 418:../asf/sam/drivers/pio/pio.c ****  * configured.
 419:../asf/sam/drivers/pio/pio.c ****  */
 420:../asf/sam/drivers/pio/pio.c **** void pio_set_multi_driver(Pio *p_pio, const uint32_t ul_mask,
 421:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_multi_driver_enable)
 422:../asf/sam/drivers/pio/pio.c **** {
 423:../asf/sam/drivers/pio/pio.c **** 	/* Enable the multi-driver if necessary */
 424:../asf/sam/drivers/pio/pio.c **** 	if (ul_multi_driver_enable) {
 425:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_MDER = ul_mask;
 426:../asf/sam/drivers/pio/pio.c **** 	} else {
 427:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_MDDR = ul_mask;
 428:../asf/sam/drivers/pio/pio.c **** 	}
 429:../asf/sam/drivers/pio/pio.c **** }
 430:../asf/sam/drivers/pio/pio.c **** 
 431:../asf/sam/drivers/pio/pio.c **** /**
 432:../asf/sam/drivers/pio/pio.c ****  * \brief Get multi-driver status.
 433:../asf/sam/drivers/pio/pio.c ****  *
 434:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 435:../asf/sam/drivers/pio/pio.c ****  *
 436:../asf/sam/drivers/pio/pio.c ****  * \return The multi-driver mask value.
 437:../asf/sam/drivers/pio/pio.c ****  */
 438:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get_multi_driver_status(const Pio *p_pio)
 439:../asf/sam/drivers/pio/pio.c **** {
 440:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_MDSR;
ARM GAS  /tmp/ccqzbxJl.s 			page 15


 441:../asf/sam/drivers/pio/pio.c **** }
 442:../asf/sam/drivers/pio/pio.c **** 
 443:../asf/sam/drivers/pio/pio.c **** 
 444:../asf/sam/drivers/pio/pio.c **** #if (SAM3S || SAM3N || SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || SAMV71 || SA
 445:../asf/sam/drivers/pio/pio.c **** /**
 446:../asf/sam/drivers/pio/pio.c ****  * \brief Configure PIO pin internal pull-down.
 447:../asf/sam/drivers/pio/pio.c ****  *
 448:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 449:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 450:../asf/sam/drivers/pio/pio.c ****  * \param ul_pull_down_enable Indicates if the pin(s) internal pull-down shall
 451:../asf/sam/drivers/pio/pio.c ****  * be configured.
 452:../asf/sam/drivers/pio/pio.c ****  */
 453:../asf/sam/drivers/pio/pio.c **** void pio_pull_down(Pio *p_pio, const uint32_t ul_mask,
 454:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_pull_down_enable)
 455:../asf/sam/drivers/pio/pio.c **** {
 456:../asf/sam/drivers/pio/pio.c **** 	/* Enable the pull-down if necessary */
 457:../asf/sam/drivers/pio/pio.c **** 	if (ul_pull_down_enable) {
 458:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PPDER = ul_mask;
 459:../asf/sam/drivers/pio/pio.c **** 	} else {
 460:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PPDDR = ul_mask;
 461:../asf/sam/drivers/pio/pio.c **** 	}
 462:../asf/sam/drivers/pio/pio.c **** }
 463:../asf/sam/drivers/pio/pio.c **** #endif
 464:../asf/sam/drivers/pio/pio.c **** 
 465:../asf/sam/drivers/pio/pio.c **** /**
 466:../asf/sam/drivers/pio/pio.c ****  * \brief Enable PIO output write for synchronous data output.
 467:../asf/sam/drivers/pio/pio.c ****  *
 468:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 469:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 470:../asf/sam/drivers/pio/pio.c ****  */
 471:../asf/sam/drivers/pio/pio.c **** void pio_enable_output_write(Pio *p_pio, const uint32_t ul_mask)
 472:../asf/sam/drivers/pio/pio.c **** {
 473:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_OWER = ul_mask;
 474:../asf/sam/drivers/pio/pio.c **** }
 475:../asf/sam/drivers/pio/pio.c **** 
 476:../asf/sam/drivers/pio/pio.c **** /**
 477:../asf/sam/drivers/pio/pio.c ****  * \brief Disable PIO output write.
 478:../asf/sam/drivers/pio/pio.c ****  *
 479:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 480:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 481:../asf/sam/drivers/pio/pio.c ****  */
 482:../asf/sam/drivers/pio/pio.c **** void pio_disable_output_write(Pio *p_pio, const uint32_t ul_mask)
 483:../asf/sam/drivers/pio/pio.c **** {
 484:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_OWDR = ul_mask;
 485:../asf/sam/drivers/pio/pio.c **** }
 486:../asf/sam/drivers/pio/pio.c **** 
 487:../asf/sam/drivers/pio/pio.c **** /**
 488:../asf/sam/drivers/pio/pio.c ****  * \brief Read PIO output write status.
 489:../asf/sam/drivers/pio/pio.c ****  *
 490:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 491:../asf/sam/drivers/pio/pio.c ****  *
 492:../asf/sam/drivers/pio/pio.c ****  * \return The output write mask value.
 493:../asf/sam/drivers/pio/pio.c ****  */
 494:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get_output_write_status(const Pio *p_pio)
 495:../asf/sam/drivers/pio/pio.c **** {
 496:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_OWSR;
 497:../asf/sam/drivers/pio/pio.c **** }
ARM GAS  /tmp/ccqzbxJl.s 			page 16


 498:../asf/sam/drivers/pio/pio.c **** 
 499:../asf/sam/drivers/pio/pio.c **** /**
 500:../asf/sam/drivers/pio/pio.c ****  * \brief Synchronously write on output pins.
 501:../asf/sam/drivers/pio/pio.c ****  * \note Only bits unmasked by PIO_OWSR (Output Write Status Register) are
 502:../asf/sam/drivers/pio/pio.c ****  * written.
 503:../asf/sam/drivers/pio/pio.c ****  *
 504:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 505:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 506:../asf/sam/drivers/pio/pio.c ****  */
 507:../asf/sam/drivers/pio/pio.c **** void pio_sync_output_write(Pio *p_pio, const uint32_t ul_mask)
 508:../asf/sam/drivers/pio/pio.c **** {
 509:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_ODSR = ul_mask;
 510:../asf/sam/drivers/pio/pio.c **** }
 511:../asf/sam/drivers/pio/pio.c **** 
 512:../asf/sam/drivers/pio/pio.c **** #if (SAM3S || SAM3N || SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM || SAMV71 || SA
 513:../asf/sam/drivers/pio/pio.c **** /**
 514:../asf/sam/drivers/pio/pio.c ****  * \brief Configure PIO pin schmitt trigger. By default the Schmitt trigger is
 515:../asf/sam/drivers/pio/pio.c ****  * active.
 516:../asf/sam/drivers/pio/pio.c ****  * Disabling the Schmitt Trigger is requested when using the QTouch Library.
 517:../asf/sam/drivers/pio/pio.c ****  *
 518:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 519:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 520:../asf/sam/drivers/pio/pio.c ****  */
 521:../asf/sam/drivers/pio/pio.c **** void pio_set_schmitt_trigger(Pio *p_pio, const uint32_t ul_mask)
 522:../asf/sam/drivers/pio/pio.c **** {
 523:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_SCHMITT = ul_mask;
 524:../asf/sam/drivers/pio/pio.c **** }
 525:../asf/sam/drivers/pio/pio.c **** 
 526:../asf/sam/drivers/pio/pio.c **** /**
 527:../asf/sam/drivers/pio/pio.c ****  * \brief Get PIO pin schmitt trigger status.
 528:../asf/sam/drivers/pio/pio.c ****  *
 529:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 530:../asf/sam/drivers/pio/pio.c ****  *
 531:../asf/sam/drivers/pio/pio.c ****  * \return The schmitt trigger mask value.
 532:../asf/sam/drivers/pio/pio.c ****  */
 533:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get_schmitt_trigger(const Pio *p_pio)
 534:../asf/sam/drivers/pio/pio.c **** {
 535:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_SCHMITT;
 536:../asf/sam/drivers/pio/pio.c **** }
 537:../asf/sam/drivers/pio/pio.c **** #endif
 538:../asf/sam/drivers/pio/pio.c **** 
 539:../asf/sam/drivers/pio/pio.c **** /**
 540:../asf/sam/drivers/pio/pio.c ****  * \brief Configure the given interrupt source.
 541:../asf/sam/drivers/pio/pio.c ****  * Interrupt can be configured to trigger on rising edge, falling edge,
 542:../asf/sam/drivers/pio/pio.c ****  * high level, low level or simply on level change.
 543:../asf/sam/drivers/pio/pio.c ****  *
 544:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 545:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Interrupt source bit map.
 546:../asf/sam/drivers/pio/pio.c ****  * \param ul_attr Interrupt source attributes.
 547:../asf/sam/drivers/pio/pio.c ****  */
 548:../asf/sam/drivers/pio/pio.c **** void pio_configure_interrupt(Pio *p_pio, const uint32_t ul_mask,
 549:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_attr)
 550:../asf/sam/drivers/pio/pio.c **** {
 551:../asf/sam/drivers/pio/pio.c **** 	/* Configure additional interrupt mode registers. */
 552:../asf/sam/drivers/pio/pio.c **** 	if (ul_attr & PIO_IT_AIME) {
 553:../asf/sam/drivers/pio/pio.c **** 		/* Enable additional interrupt mode. */
 554:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_AIMER = ul_mask;
ARM GAS  /tmp/ccqzbxJl.s 			page 17


 555:../asf/sam/drivers/pio/pio.c **** 
 556:../asf/sam/drivers/pio/pio.c **** 		/* If bit field of the selected pin is 1, set as
 557:../asf/sam/drivers/pio/pio.c **** 		   Rising Edge/High level detection event. */
 558:../asf/sam/drivers/pio/pio.c **** 		if (ul_attr & PIO_IT_RE_OR_HL) {
 559:../asf/sam/drivers/pio/pio.c **** 			/* Rising Edge or High Level */
 560:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_REHLSR = ul_mask;
 561:../asf/sam/drivers/pio/pio.c **** 		} else {
 562:../asf/sam/drivers/pio/pio.c **** 			/* Falling Edge or Low Level */
 563:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_FELLSR = ul_mask;
 564:../asf/sam/drivers/pio/pio.c **** 		}
 565:../asf/sam/drivers/pio/pio.c **** 
 566:../asf/sam/drivers/pio/pio.c **** 		/* If bit field of the selected pin is 1, set as
 567:../asf/sam/drivers/pio/pio.c **** 		   edge detection source. */
 568:../asf/sam/drivers/pio/pio.c **** 		if (ul_attr & PIO_IT_EDGE) {
 569:../asf/sam/drivers/pio/pio.c **** 			/* Edge select */
 570:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_ESR = ul_mask;
 571:../asf/sam/drivers/pio/pio.c **** 		} else {
 572:../asf/sam/drivers/pio/pio.c **** 			/* Level select */
 573:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_LSR = ul_mask;
 574:../asf/sam/drivers/pio/pio.c **** 		}
 575:../asf/sam/drivers/pio/pio.c **** 	} else {
 576:../asf/sam/drivers/pio/pio.c **** 		/* Disable additional interrupt mode. */
 577:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_AIMDR = ul_mask;
 578:../asf/sam/drivers/pio/pio.c **** 	}
 579:../asf/sam/drivers/pio/pio.c **** }
 580:../asf/sam/drivers/pio/pio.c **** 
 581:../asf/sam/drivers/pio/pio.c **** /**
 582:../asf/sam/drivers/pio/pio.c ****  * \brief Enable the given interrupt source.
 583:../asf/sam/drivers/pio/pio.c ****  * The PIO must be configured as an NVIC interrupt source as well.
 584:../asf/sam/drivers/pio/pio.c ****  *
 585:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 586:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Interrupt sources bit map.
 587:../asf/sam/drivers/pio/pio.c ****  */
 588:../asf/sam/drivers/pio/pio.c **** void pio_enable_interrupt(Pio *p_pio, const uint32_t ul_mask)
 589:../asf/sam/drivers/pio/pio.c **** {
 590:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_IER = ul_mask;
 591:../asf/sam/drivers/pio/pio.c **** }
 592:../asf/sam/drivers/pio/pio.c **** 
 593:../asf/sam/drivers/pio/pio.c **** /**
 594:../asf/sam/drivers/pio/pio.c ****  * \brief Disable a given interrupt source, with no added side effects.
 595:../asf/sam/drivers/pio/pio.c ****  *
 596:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 597:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Interrupt sources bit map.
 598:../asf/sam/drivers/pio/pio.c ****  */
 599:../asf/sam/drivers/pio/pio.c **** void pio_disable_interrupt(Pio *p_pio, const uint32_t ul_mask)
 600:../asf/sam/drivers/pio/pio.c **** {
 601:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_IDR = ul_mask;
 334              		.loc 1 601 0
 335 0002 4164     		str	r1, [r0, #68]
 336              	.LVL32:
 337              	.LBE99:
 338              	.LBE98:
 339              	.LBB100:
 340              	.LBB96:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 341              		.loc 1 83 0
 342 0004 15D5     		bpl	.L40
ARM GAS  /tmp/ccqzbxJl.s 			page 18


  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 343              		.loc 1 84 0
 344 0006 4166     		str	r1, [r0, #100]
 345              	.L41:
 346              	.LVL33:
 347              	.LBE96:
 348              	.LBE100:
 274:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFER = ul_mask;
 349              		.loc 1 274 0
 350 0008 12F00A0F 		tst	r2, #10
 351 000c 09D0     		beq	.L42
 282:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 352              		.loc 1 282 0
 353 000e 9307     		lsls	r3, r2, #30
 275:../asf/sam/drivers/pio/pio.c **** 	} else {
 354              		.loc 1 275 0
 355 0010 0162     		str	r1, [r0, #32]
 282:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 356              		.loc 1 282 0
 357 0012 09D4     		bmi	.L49
 358              	.L44:
 285:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_IFSCER = ul_mask;
 359              		.loc 1 285 0
 360 0014 1307     		lsls	r3, r2, #28
 361 0016 01D5     		bpl	.L45
 286:../asf/sam/drivers/pio/pio.c **** 		}
 362              		.loc 1 286 0
 363 0018 C0F88410 		str	r1, [r0, #132]
 364              	.L45:
 303:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 365              		.loc 1 303 0
 366 001c 4161     		str	r1, [r0, #20]
 304:../asf/sam/drivers/pio/pio.c **** }
 367              		.loc 1 304 0
 368 001e 0160     		str	r1, [r0]
 369 0020 7047     		bx	lr
 370              	.L42:
 282:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 371              		.loc 1 282 0
 372 0022 9307     		lsls	r3, r2, #30
 277:../asf/sam/drivers/pio/pio.c **** 	}
 373              		.loc 1 277 0
 374 0024 4162     		str	r1, [r0, #36]
 282:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 375              		.loc 1 282 0
 376 0026 F5D5     		bpl	.L44
 377              	.L49:
 283:../asf/sam/drivers/pio/pio.c **** 	} else {
 378              		.loc 1 283 0
 379 0028 C0F88010 		str	r1, [r0, #128]
 303:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 380              		.loc 1 303 0
 381 002c 4161     		str	r1, [r0, #20]
 304:../asf/sam/drivers/pio/pio.c **** }
 382              		.loc 1 304 0
 383 002e 0160     		str	r1, [r0]
 384 0030 7047     		bx	lr
ARM GAS  /tmp/ccqzbxJl.s 			page 19


 385              	.LVL34:
 386              	.L40:
 387              	.LBB101:
 388              	.LBB97:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 389              		.loc 1 86 0
 390 0032 0166     		str	r1, [r0, #96]
 391 0034 E8E7     		b	.L41
 392              	.LBE97:
 393              	.LBE101:
 394              		.cfi_endproc
 395              	.LFE148:
 396              		.size	pio_set_input, .-pio_set_input
 397 0036 00BF     		.section	.text.pio_set_output,"ax",%progbits
 398              		.align	1
 399              		.p2align 2,,3
 400              		.global	pio_set_output
 401              		.syntax unified
 402              		.thumb
 403              		.thumb_func
 404              		.fpu fpv5-d16
 405              		.type	pio_set_output, %function
 406              	pio_set_output:
 407              	.LFB149:
 324:../asf/sam/drivers/pio/pio.c **** 	pio_disable_interrupt(p_pio, ul_mask);
 408              		.loc 1 324 0
 409              		.cfi_startproc
 410              		@ args = 4, pretend = 0, frame = 0
 411              		@ frame_needed = 0, uses_anonymous_args = 0
 412              		@ link register save eliminated.
 413              	.LVL35:
 414 0000 10B4     		push	{r4}
 415              		.cfi_def_cfa_offset 4
 416              		.cfi_offset 4, -4
 324:../asf/sam/drivers/pio/pio.c **** 	pio_disable_interrupt(p_pio, ul_mask);
 417              		.loc 1 324 0
 418 0002 019C     		ldr	r4, [sp, #4]
 419              	.LBB102:
 420              	.LBB103:
 421              		.loc 1 601 0
 422 0004 4164     		str	r1, [r0, #68]
 423              	.LVL36:
 424              	.LBE103:
 425              	.LBE102:
 426              	.LBB104:
 427              	.LBB105:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 428              		.loc 1 83 0
 429 0006 94B1     		cbz	r4, .L51
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 430              		.loc 1 84 0
 431 0008 4166     		str	r1, [r0, #100]
 432              	.L52:
 433              	.LVL37:
 434              	.LBE105:
 435              	.LBE104:
 329:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_MDER = ul_mask;
ARM GAS  /tmp/ccqzbxJl.s 			page 20


 436              		.loc 1 329 0
 437 000a 3BB1     		cbz	r3, .L53
 330:../asf/sam/drivers/pio/pio.c **** 	} else {
 438              		.loc 1 330 0
 439 000c 0165     		str	r1, [r0, #80]
 336:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_SODR = ul_mask;
 440              		.loc 1 336 0
 441 000e 42B9     		cbnz	r2, .L58
 442              	.L55:
 339:../asf/sam/drivers/pio/pio.c **** 	}
 443              		.loc 1 339 0
 444 0010 4163     		str	r1, [r0, #52]
 345:../asf/sam/drivers/pio/pio.c **** 
 445              		.loc 1 345 0
 446 0012 5DF8044B 		ldr	r4, [sp], #4
 447              		.cfi_remember_state
 448              		.cfi_restore 4
 449              		.cfi_def_cfa_offset 0
 450              	.LVL38:
 343:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 451              		.loc 1 343 0
 452 0016 0161     		str	r1, [r0, #16]
 344:../asf/sam/drivers/pio/pio.c **** }
 453              		.loc 1 344 0
 454 0018 0160     		str	r1, [r0]
 345:../asf/sam/drivers/pio/pio.c **** 
 455              		.loc 1 345 0
 456 001a 7047     		bx	lr
 457              	.LVL39:
 458              	.L53:
 459              		.cfi_restore_state
 332:../asf/sam/drivers/pio/pio.c **** 	}
 460              		.loc 1 332 0
 461 001c 4165     		str	r1, [r0, #84]
 336:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_SODR = ul_mask;
 462              		.loc 1 336 0
 463 001e 002A     		cmp	r2, #0
 464 0020 F6D0     		beq	.L55
 465              	.L58:
 337:../asf/sam/drivers/pio/pio.c **** 	} else {
 466              		.loc 1 337 0
 467 0022 0163     		str	r1, [r0, #48]
 345:../asf/sam/drivers/pio/pio.c **** 
 468              		.loc 1 345 0
 469 0024 5DF8044B 		ldr	r4, [sp], #4
 470              		.cfi_remember_state
 471              		.cfi_restore 4
 472              		.cfi_def_cfa_offset 0
 473              	.LVL40:
 343:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 474              		.loc 1 343 0
 475 0028 0161     		str	r1, [r0, #16]
 344:../asf/sam/drivers/pio/pio.c **** }
 476              		.loc 1 344 0
 477 002a 0160     		str	r1, [r0]
 345:../asf/sam/drivers/pio/pio.c **** 
 478              		.loc 1 345 0
ARM GAS  /tmp/ccqzbxJl.s 			page 21


 479 002c 7047     		bx	lr
 480              	.LVL41:
 481              	.L51:
 482              		.cfi_restore_state
 483              	.LBB107:
 484              	.LBB106:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 485              		.loc 1 86 0
 486 002e 0166     		str	r1, [r0, #96]
 487 0030 EBE7     		b	.L52
 488              	.LBE106:
 489              	.LBE107:
 490              		.cfi_endproc
 491              	.LFE149:
 492              		.size	pio_set_output, .-pio_set_output
 493 0032 00BF     		.section	.text.pio_configure,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	pio_configure
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu fpv5-d16
 501              		.type	pio_configure, %function
 502              	pio_configure:
 503              	.LFB150:
 360:../asf/sam/drivers/pio/pio.c **** 	/* Configure pins */
 504              		.loc 1 360 0
 505              		.cfi_startproc
 506              		@ args = 0, pretend = 0, frame = 0
 507              		@ frame_needed = 0, uses_anonymous_args = 0
 508              	.LVL42:
 362:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_A:
 509              		.loc 1 362 0
 510 0000 B1F1005F 		cmp	r1, #536870912
 360:../asf/sam/drivers/pio/pio.c **** 	/* Configure pins */
 511              		.loc 1 360 0
 512 0004 70B5     		push	{r4, r5, r6, lr}
 513              		.cfi_def_cfa_offset 16
 514              		.cfi_offset 4, -16
 515              		.cfi_offset 5, -12
 516              		.cfi_offset 6, -8
 517              		.cfi_offset 14, -4
 362:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_A:
 518              		.loc 1 362 0
 519 0006 37D0     		beq	.L61
 520 0008 2DD9     		bls	.L101
 521 000a B1F1405F 		cmp	r1, #805306368
 522 000e 19D0     		beq	.L63
 523 0010 B1F1605F 		cmp	r1, #939524096
 524 0014 16D0     		beq	.L63
 525 0016 B1F1205F 		cmp	r1, #671088640
 526 001a 02D0     		beq	.L64
 527              	.L78:
 385:../asf/sam/drivers/pio/pio.c **** 	}
 528              		.loc 1 385 0
 529 001c 0023     		movs	r3, #0
ARM GAS  /tmp/ccqzbxJl.s 			page 22


 530              	.LVL43:
 389:../asf/sam/drivers/pio/pio.c **** 
 531              		.loc 1 389 0
 532 001e 1846     		mov	r0, r3
 533              	.LVL44:
 534 0020 70BD     		pop	{r4, r5, r6, pc}
 535              	.LVL45:
 536              	.L64:
 537              	.LBB108:
 538              	.LBB109:
 539              	.LBB110:
 540              	.LBB111:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 541              		.loc 1 83 0
 542 0022 DD07     		lsls	r5, r3, #31
 543              	.LBE111:
 544              	.LBE110:
 545              	.LBB115:
 546              	.LBB116:
 547              		.loc 1 601 0
 548 0024 4264     		str	r2, [r0, #68]
 549              	.LVL46:
 550              	.LBE116:
 551              	.LBE115:
 552              	.LBB117:
 553              	.LBB112:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 554              		.loc 1 83 0
 555 0026 36D4     		bmi	.L102
 556              	.LVL47:
 557              	.LBE112:
 558              	.LBE117:
 274:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFER = ul_mask;
 559              		.loc 1 274 0
 560 0028 13F00A0F 		tst	r3, #10
 561              	.LBB118:
 562              	.LBB113:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 563              		.loc 1 86 0
 564 002c 0266     		str	r2, [r0, #96]
 565              	.LBE113:
 566              	.LBE118:
 274:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFER = ul_mask;
 567              		.loc 1 274 0
 568 002e 36D0     		beq	.L68
 569              	.L105:
 282:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 570              		.loc 1 282 0
 571 0030 9C07     		lsls	r4, r3, #30
 275:../asf/sam/drivers/pio/pio.c **** 	} else {
 572              		.loc 1 275 0
 573 0032 0262     		str	r2, [r0, #32]
 282:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 574              		.loc 1 282 0
 575 0034 36D5     		bpl	.L70
 576              	.L106:
 283:../asf/sam/drivers/pio/pio.c **** 	} else {
ARM GAS  /tmp/ccqzbxJl.s 			page 23


 577              		.loc 1 283 0
 578 0036 C0F88020 		str	r2, [r0, #128]
 579              	.LVL48:
 580              	.L71:
 581              	.LBE109:
 582              	.LBE108:
 388:../asf/sam/drivers/pio/pio.c **** }
 583              		.loc 1 388 0
 584 003a 0123     		movs	r3, #1
 585              	.LVL49:
 586              	.LBB122:
 587              	.LBB120:
 303:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 588              		.loc 1 303 0
 589 003c 4261     		str	r2, [r0, #20]
 304:../asf/sam/drivers/pio/pio.c **** }
 590              		.loc 1 304 0
 591 003e 0260     		str	r2, [r0]
 592              	.LBE120:
 593              	.LBE122:
 389:../asf/sam/drivers/pio/pio.c **** 
 594              		.loc 1 389 0
 595 0040 1846     		mov	r0, r3
 596              	.LVL50:
 597 0042 70BD     		pop	{r4, r5, r6, pc}
 598              	.LVL51:
 599              	.L63:
 380:../asf/sam/drivers/pio/pio.c **** 				(ul_attribute & PIO_PULLUP) ? 1 : 0);
 600              		.loc 1 380 0
 601 0044 03F00404 		and	r4, r3, #4
 602              	.LVL52:
 603              	.LBB123:
 604              	.LBB124:
 605              	.LBB125:
 606              	.LBB126:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 607              		.loc 1 83 0
 608 0048 DB07     		lsls	r3, r3, #31
 609              	.LVL53:
 610              	.LBE126:
 611              	.LBE125:
 612              	.LBB129:
 613              	.LBB130:
 614              		.loc 1 601 0
 615 004a 4264     		str	r2, [r0, #68]
 616              	.LBE130:
 617              	.LBE129:
 618              	.LBB131:
 619              	.LBB127:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 620              		.loc 1 83 0
 621 004c 1ED5     		bpl	.L72
 622              	.LVL54:
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 623              		.loc 1 84 0
 624 004e 4266     		str	r2, [r0, #100]
 625              	.LBE127:
ARM GAS  /tmp/ccqzbxJl.s 			page 24


 626              	.LBE131:
 329:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_MDER = ul_mask;
 627              		.loc 1 329 0
 628 0050 FCB1     		cbz	r4, .L74
 629              	.L104:
 330:../asf/sam/drivers/pio/pio.c **** 	} else {
 630              		.loc 1 330 0
 631 0052 0265     		str	r2, [r0, #80]
 632              	.L75:
 336:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_SODR = ul_mask;
 633              		.loc 1 336 0
 634 0054 B1F1605F 		cmp	r1, #939524096
 635 0058 2DD0     		beq	.L103
 339:../asf/sam/drivers/pio/pio.c **** 	}
 636              		.loc 1 339 0
 637 005a 4263     		str	r2, [r0, #52]
 638              	.L77:
 639              	.LBE124:
 640              	.LBE123:
 388:../asf/sam/drivers/pio/pio.c **** }
 641              		.loc 1 388 0
 642 005c 0123     		movs	r3, #1
 643              	.LBB136:
 644              	.LBB133:
 343:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 645              		.loc 1 343 0
 646 005e 0261     		str	r2, [r0, #16]
 344:../asf/sam/drivers/pio/pio.c **** }
 647              		.loc 1 344 0
 648 0060 0260     		str	r2, [r0]
 649              	.LBE133:
 650              	.LBE136:
 389:../asf/sam/drivers/pio/pio.c **** 
 651              		.loc 1 389 0
 652 0062 1846     		mov	r0, r3
 653              	.LVL55:
 654 0064 70BD     		pop	{r4, r5, r6, pc}
 655              	.LVL56:
 656              	.L101:
 362:../asf/sam/drivers/pio/pio.c **** 	case PIO_PERIPH_A:
 657              		.loc 1 362 0
 658 0066 B1F1805F 		cmp	r1, #268435456
 659 006a 05D0     		beq	.L61
 660 006c B1F1C05F 		cmp	r1, #402653184
 661 0070 02D0     		beq	.L61
 662 0072 B1F1006F 		cmp	r1, #134217728
 663 0076 D1D1     		bne	.L78
 664              	.L61:
 665 0078 1E46     		mov	r6, r3
 666 007a 0446     		mov	r4, r0
 369:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, ul_mask, (ul_attribute & PIO_PULLUP));
 667              		.loc 1 369 0
 668 007c FFF7FEFF 		bl	pio_set_peripheral
 669              	.LVL57:
 670              	.LBB137:
 671              	.LBB138:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
ARM GAS  /tmp/ccqzbxJl.s 			page 25


 672              		.loc 1 83 0
 673 0080 F607     		lsls	r6, r6, #31
 674              	.LVL58:
 675 0082 14D5     		bpl	.L65
 676              	.LVL59:
 677              	.LBE138:
 678              	.LBE137:
 388:../asf/sam/drivers/pio/pio.c **** }
 679              		.loc 1 388 0
 680 0084 0123     		movs	r3, #1
 681              	.LBB141:
 682              	.LBB139:
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 683              		.loc 1 84 0
 684 0086 6266     		str	r2, [r4, #100]
 685              	.LBE139:
 686              	.LBE141:
 389:../asf/sam/drivers/pio/pio.c **** 
 687              		.loc 1 389 0
 688 0088 1846     		mov	r0, r3
 689              	.LVL60:
 690 008a 70BD     		pop	{r4, r5, r6, pc}
 691              	.LVL61:
 692              	.L72:
 693              	.LBB142:
 694              	.LBB134:
 695              	.LBB132:
 696              	.LBB128:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 697              		.loc 1 86 0
 698 008c 0266     		str	r2, [r0, #96]
 699              	.LVL62:
 700              	.LBE128:
 701              	.LBE132:
 329:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_MDER = ul_mask;
 702              		.loc 1 329 0
 703 008e 002C     		cmp	r4, #0
 704 0090 DFD1     		bne	.L104
 705              	.L74:
 332:../asf/sam/drivers/pio/pio.c **** 	}
 706              		.loc 1 332 0
 707 0092 4265     		str	r2, [r0, #84]
 708 0094 DEE7     		b	.L75
 709              	.LVL63:
 710              	.L102:
 711              	.LBE134:
 712              	.LBE142:
 713              	.LBB143:
 714              	.LBB121:
 274:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFER = ul_mask;
 715              		.loc 1 274 0
 716 0096 13F00A0F 		tst	r3, #10
 717              	.LBB119:
 718              	.LBB114:
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 719              		.loc 1 84 0
 720 009a 4266     		str	r2, [r0, #100]
ARM GAS  /tmp/ccqzbxJl.s 			page 26


 721              	.LVL64:
 722              	.LBE114:
 723              	.LBE119:
 274:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFER = ul_mask;
 724              		.loc 1 274 0
 725 009c C8D1     		bne	.L105
 726              	.L68:
 282:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 727              		.loc 1 282 0
 728 009e 9C07     		lsls	r4, r3, #30
 277:../asf/sam/drivers/pio/pio.c **** 	}
 729              		.loc 1 277 0
 730 00a0 4262     		str	r2, [r0, #36]
 282:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 731              		.loc 1 282 0
 732 00a2 C8D4     		bmi	.L106
 733              	.L70:
 285:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_IFSCER = ul_mask;
 734              		.loc 1 285 0
 735 00a4 1907     		lsls	r1, r3, #28
 736              	.LVL65:
 737 00a6 C8D5     		bpl	.L71
 286:../asf/sam/drivers/pio/pio.c **** 		}
 738              		.loc 1 286 0
 739 00a8 C0F88420 		str	r2, [r0, #132]
 740 00ac C5E7     		b	.L71
 741              	.LVL66:
 742              	.L65:
 743              	.LBE121:
 744              	.LBE143:
 388:../asf/sam/drivers/pio/pio.c **** }
 745              		.loc 1 388 0
 746 00ae 0123     		movs	r3, #1
 747              	.LBB144:
 748              	.LBB140:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 749              		.loc 1 86 0
 750 00b0 2266     		str	r2, [r4, #96]
 751              	.LBE140:
 752              	.LBE144:
 389:../asf/sam/drivers/pio/pio.c **** 
 753              		.loc 1 389 0
 754 00b2 1846     		mov	r0, r3
 755              	.LVL67:
 756 00b4 70BD     		pop	{r4, r5, r6, pc}
 757              	.LVL68:
 758              	.L103:
 759              	.LBB145:
 760              	.LBB135:
 337:../asf/sam/drivers/pio/pio.c **** 	} else {
 761              		.loc 1 337 0
 762 00b6 0263     		str	r2, [r0, #48]
 763 00b8 D0E7     		b	.L77
 764              	.LBE135:
 765              	.LBE145:
 766              		.cfi_endproc
 767              	.LFE150:
ARM GAS  /tmp/ccqzbxJl.s 			page 27


 768              		.size	pio_configure, .-pio_configure
 769 00ba 00BF     		.section	.text.pio_get_output_data_status,"ax",%progbits
 770              		.align	1
 771              		.p2align 2,,3
 772              		.global	pio_get_output_data_status
 773              		.syntax unified
 774              		.thumb
 775              		.thumb_func
 776              		.fpu fpv5-d16
 777              		.type	pio_get_output_data_status, %function
 778              	pio_get_output_data_status:
 779              	.LFB151:
 404:../asf/sam/drivers/pio/pio.c **** 	if ((p_pio->PIO_ODSR & ul_mask) == 0) {
 780              		.loc 1 404 0
 781              		.cfi_startproc
 782              		@ args = 0, pretend = 0, frame = 0
 783              		@ frame_needed = 0, uses_anonymous_args = 0
 784              		@ link register save eliminated.
 785              	.LVL69:
 405:../asf/sam/drivers/pio/pio.c **** 		return 0;
 786              		.loc 1 405 0
 787 0000 836B     		ldr	r3, [r0, #56]
 788 0002 0B42     		tst	r3, r1
 410:../asf/sam/drivers/pio/pio.c **** 
 789              		.loc 1 410 0
 790 0004 14BF     		ite	ne
 791 0006 0120     		movne	r0, #1
 792              	.LVL70:
 793 0008 0020     		moveq	r0, #0
 794 000a 7047     		bx	lr
 795              		.cfi_endproc
 796              	.LFE151:
 797              		.size	pio_get_output_data_status, .-pio_get_output_data_status
 798              		.section	.text.pio_set_multi_driver,"ax",%progbits
 799              		.align	1
 800              		.p2align 2,,3
 801              		.global	pio_set_multi_driver
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu fpv5-d16
 806              		.type	pio_set_multi_driver, %function
 807              	pio_set_multi_driver:
 808              	.LFB152:
 422:../asf/sam/drivers/pio/pio.c **** 	/* Enable the multi-driver if necessary */
 809              		.loc 1 422 0
 810              		.cfi_startproc
 811              		@ args = 0, pretend = 0, frame = 0
 812              		@ frame_needed = 0, uses_anonymous_args = 0
 813              		@ link register save eliminated.
 814              	.LVL71:
 424:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_MDER = ul_mask;
 815              		.loc 1 424 0
 816 0000 0AB9     		cbnz	r2, .L111
 427:../asf/sam/drivers/pio/pio.c **** 	}
 817              		.loc 1 427 0
 818 0002 4165     		str	r1, [r0, #84]
ARM GAS  /tmp/ccqzbxJl.s 			page 28


 819 0004 7047     		bx	lr
 820              	.L111:
 425:../asf/sam/drivers/pio/pio.c **** 	} else {
 821              		.loc 1 425 0
 822 0006 0165     		str	r1, [r0, #80]
 823 0008 7047     		bx	lr
 824              		.cfi_endproc
 825              	.LFE152:
 826              		.size	pio_set_multi_driver, .-pio_set_multi_driver
 827 000a 00BF     		.section	.text.pio_get_multi_driver_status,"ax",%progbits
 828              		.align	1
 829              		.p2align 2,,3
 830              		.global	pio_get_multi_driver_status
 831              		.syntax unified
 832              		.thumb
 833              		.thumb_func
 834              		.fpu fpv5-d16
 835              		.type	pio_get_multi_driver_status, %function
 836              	pio_get_multi_driver_status:
 837              	.LFB153:
 439:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_MDSR;
 838              		.loc 1 439 0
 839              		.cfi_startproc
 840              		@ args = 0, pretend = 0, frame = 0
 841              		@ frame_needed = 0, uses_anonymous_args = 0
 842              		@ link register save eliminated.
 843              	.LVL72:
 440:../asf/sam/drivers/pio/pio.c **** }
 844              		.loc 1 440 0
 845 0000 806D     		ldr	r0, [r0, #88]
 846              	.LVL73:
 441:../asf/sam/drivers/pio/pio.c **** 
 847              		.loc 1 441 0
 848 0002 7047     		bx	lr
 849              		.cfi_endproc
 850              	.LFE153:
 851              		.size	pio_get_multi_driver_status, .-pio_get_multi_driver_status
 852              		.section	.text.pio_pull_down,"ax",%progbits
 853              		.align	1
 854              		.p2align 2,,3
 855              		.global	pio_pull_down
 856              		.syntax unified
 857              		.thumb
 858              		.thumb_func
 859              		.fpu fpv5-d16
 860              		.type	pio_pull_down, %function
 861              	pio_pull_down:
 862              	.LFB154:
 455:../asf/sam/drivers/pio/pio.c **** 	/* Enable the pull-down if necessary */
 863              		.loc 1 455 0
 864              		.cfi_startproc
 865              		@ args = 0, pretend = 0, frame = 0
 866              		@ frame_needed = 0, uses_anonymous_args = 0
 867              		@ link register save eliminated.
 868              	.LVL74:
 457:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PPDER = ul_mask;
 869              		.loc 1 457 0
ARM GAS  /tmp/ccqzbxJl.s 			page 29


 870 0000 12B9     		cbnz	r2, .L116
 460:../asf/sam/drivers/pio/pio.c **** 	}
 871              		.loc 1 460 0
 872 0002 C0F89010 		str	r1, [r0, #144]
 873 0006 7047     		bx	lr
 874              	.L116:
 458:../asf/sam/drivers/pio/pio.c **** 	} else {
 875              		.loc 1 458 0
 876 0008 C0F89410 		str	r1, [r0, #148]
 877 000c 7047     		bx	lr
 878              		.cfi_endproc
 879              	.LFE154:
 880              		.size	pio_pull_down, .-pio_pull_down
 881 000e 00BF     		.section	.text.pio_enable_output_write,"ax",%progbits
 882              		.align	1
 883              		.p2align 2,,3
 884              		.global	pio_enable_output_write
 885              		.syntax unified
 886              		.thumb
 887              		.thumb_func
 888              		.fpu fpv5-d16
 889              		.type	pio_enable_output_write, %function
 890              	pio_enable_output_write:
 891              	.LFB155:
 472:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_OWER = ul_mask;
 892              		.loc 1 472 0
 893              		.cfi_startproc
 894              		@ args = 0, pretend = 0, frame = 0
 895              		@ frame_needed = 0, uses_anonymous_args = 0
 896              		@ link register save eliminated.
 897              	.LVL75:
 473:../asf/sam/drivers/pio/pio.c **** }
 898              		.loc 1 473 0
 899 0000 C0F8A010 		str	r1, [r0, #160]
 900 0004 7047     		bx	lr
 901              		.cfi_endproc
 902              	.LFE155:
 903              		.size	pio_enable_output_write, .-pio_enable_output_write
 904 0006 00BF     		.section	.text.pio_disable_output_write,"ax",%progbits
 905              		.align	1
 906              		.p2align 2,,3
 907              		.global	pio_disable_output_write
 908              		.syntax unified
 909              		.thumb
 910              		.thumb_func
 911              		.fpu fpv5-d16
 912              		.type	pio_disable_output_write, %function
 913              	pio_disable_output_write:
 914              	.LFB156:
 483:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_OWDR = ul_mask;
 915              		.loc 1 483 0
 916              		.cfi_startproc
 917              		@ args = 0, pretend = 0, frame = 0
 918              		@ frame_needed = 0, uses_anonymous_args = 0
 919              		@ link register save eliminated.
 920              	.LVL76:
 484:../asf/sam/drivers/pio/pio.c **** }
ARM GAS  /tmp/ccqzbxJl.s 			page 30


 921              		.loc 1 484 0
 922 0000 C0F8A410 		str	r1, [r0, #164]
 923 0004 7047     		bx	lr
 924              		.cfi_endproc
 925              	.LFE156:
 926              		.size	pio_disable_output_write, .-pio_disable_output_write
 927 0006 00BF     		.section	.text.pio_get_output_write_status,"ax",%progbits
 928              		.align	1
 929              		.p2align 2,,3
 930              		.global	pio_get_output_write_status
 931              		.syntax unified
 932              		.thumb
 933              		.thumb_func
 934              		.fpu fpv5-d16
 935              		.type	pio_get_output_write_status, %function
 936              	pio_get_output_write_status:
 937              	.LFB157:
 495:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_OWSR;
 938              		.loc 1 495 0
 939              		.cfi_startproc
 940              		@ args = 0, pretend = 0, frame = 0
 941              		@ frame_needed = 0, uses_anonymous_args = 0
 942              		@ link register save eliminated.
 943              	.LVL77:
 496:../asf/sam/drivers/pio/pio.c **** }
 944              		.loc 1 496 0
 945 0000 D0F8A800 		ldr	r0, [r0, #168]
 946              	.LVL78:
 497:../asf/sam/drivers/pio/pio.c **** 
 947              		.loc 1 497 0
 948 0004 7047     		bx	lr
 949              		.cfi_endproc
 950              	.LFE157:
 951              		.size	pio_get_output_write_status, .-pio_get_output_write_status
 952 0006 00BF     		.section	.text.pio_sync_output_write,"ax",%progbits
 953              		.align	1
 954              		.p2align 2,,3
 955              		.global	pio_sync_output_write
 956              		.syntax unified
 957              		.thumb
 958              		.thumb_func
 959              		.fpu fpv5-d16
 960              		.type	pio_sync_output_write, %function
 961              	pio_sync_output_write:
 962              	.LFB158:
 508:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_ODSR = ul_mask;
 963              		.loc 1 508 0
 964              		.cfi_startproc
 965              		@ args = 0, pretend = 0, frame = 0
 966              		@ frame_needed = 0, uses_anonymous_args = 0
 967              		@ link register save eliminated.
 968              	.LVL79:
 509:../asf/sam/drivers/pio/pio.c **** }
 969              		.loc 1 509 0
 970 0000 8163     		str	r1, [r0, #56]
 971 0002 7047     		bx	lr
 972              		.cfi_endproc
ARM GAS  /tmp/ccqzbxJl.s 			page 31


 973              	.LFE158:
 974              		.size	pio_sync_output_write, .-pio_sync_output_write
 975              		.section	.text.pio_set_schmitt_trigger,"ax",%progbits
 976              		.align	1
 977              		.p2align 2,,3
 978              		.global	pio_set_schmitt_trigger
 979              		.syntax unified
 980              		.thumb
 981              		.thumb_func
 982              		.fpu fpv5-d16
 983              		.type	pio_set_schmitt_trigger, %function
 984              	pio_set_schmitt_trigger:
 985              	.LFB159:
 522:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_SCHMITT = ul_mask;
 986              		.loc 1 522 0
 987              		.cfi_startproc
 988              		@ args = 0, pretend = 0, frame = 0
 989              		@ frame_needed = 0, uses_anonymous_args = 0
 990              		@ link register save eliminated.
 991              	.LVL80:
 523:../asf/sam/drivers/pio/pio.c **** }
 992              		.loc 1 523 0
 993 0000 C0F80011 		str	r1, [r0, #256]
 994 0004 7047     		bx	lr
 995              		.cfi_endproc
 996              	.LFE159:
 997              		.size	pio_set_schmitt_trigger, .-pio_set_schmitt_trigger
 998 0006 00BF     		.section	.text.pio_get_schmitt_trigger,"ax",%progbits
 999              		.align	1
 1000              		.p2align 2,,3
 1001              		.global	pio_get_schmitt_trigger
 1002              		.syntax unified
 1003              		.thumb
 1004              		.thumb_func
 1005              		.fpu fpv5-d16
 1006              		.type	pio_get_schmitt_trigger, %function
 1007              	pio_get_schmitt_trigger:
 1008              	.LFB160:
 534:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_SCHMITT;
 1009              		.loc 1 534 0
 1010              		.cfi_startproc
 1011              		@ args = 0, pretend = 0, frame = 0
 1012              		@ frame_needed = 0, uses_anonymous_args = 0
 1013              		@ link register save eliminated.
 1014              	.LVL81:
 535:../asf/sam/drivers/pio/pio.c **** }
 1015              		.loc 1 535 0
 1016 0000 D0F80001 		ldr	r0, [r0, #256]
 1017              	.LVL82:
 536:../asf/sam/drivers/pio/pio.c **** #endif
 1018              		.loc 1 536 0
 1019 0004 7047     		bx	lr
 1020              		.cfi_endproc
 1021              	.LFE160:
 1022              		.size	pio_get_schmitt_trigger, .-pio_get_schmitt_trigger
 1023 0006 00BF     		.section	.text.pio_enable_interrupt,"ax",%progbits
 1024              		.align	1
ARM GAS  /tmp/ccqzbxJl.s 			page 32


 1025              		.p2align 2,,3
 1026              		.global	pio_enable_interrupt
 1027              		.syntax unified
 1028              		.thumb
 1029              		.thumb_func
 1030              		.fpu fpv5-d16
 1031              		.type	pio_enable_interrupt, %function
 1032              	pio_enable_interrupt:
 1033              	.LFB162:
 589:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_IER = ul_mask;
 1034              		.loc 1 589 0
 1035              		.cfi_startproc
 1036              		@ args = 0, pretend = 0, frame = 0
 1037              		@ frame_needed = 0, uses_anonymous_args = 0
 1038              		@ link register save eliminated.
 1039              	.LVL83:
 590:../asf/sam/drivers/pio/pio.c **** }
 1040              		.loc 1 590 0
 1041 0000 0164     		str	r1, [r0, #64]
 1042 0002 7047     		bx	lr
 1043              		.cfi_endproc
 1044              	.LFE162:
 1045              		.size	pio_enable_interrupt, .-pio_enable_interrupt
 1046              		.section	.text.pio_disable_interrupt,"ax",%progbits
 1047              		.align	1
 1048              		.p2align 2,,3
 1049              		.global	pio_disable_interrupt
 1050              		.syntax unified
 1051              		.thumb
 1052              		.thumb_func
 1053              		.fpu fpv5-d16
 1054              		.type	pio_disable_interrupt, %function
 1055              	pio_disable_interrupt:
 1056              	.LFB163:
 600:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_IDR = ul_mask;
 1057              		.loc 1 600 0
 1058              		.cfi_startproc
 1059              		@ args = 0, pretend = 0, frame = 0
 1060              		@ frame_needed = 0, uses_anonymous_args = 0
 1061              		@ link register save eliminated.
 1062              	.LVL84:
 1063              		.loc 1 601 0
 1064 0000 4164     		str	r1, [r0, #68]
 1065 0002 7047     		bx	lr
 1066              		.cfi_endproc
 1067              	.LFE163:
 1068              		.size	pio_disable_interrupt, .-pio_disable_interrupt
 1069              		.section	.text.pio_get_interrupt_status,"ax",%progbits
 1070              		.align	1
 1071              		.p2align 2,,3
 1072              		.global	pio_get_interrupt_status
 1073              		.syntax unified
 1074              		.thumb
 1075              		.thumb_func
 1076              		.fpu fpv5-d16
 1077              		.type	pio_get_interrupt_status, %function
 1078              	pio_get_interrupt_status:
ARM GAS  /tmp/ccqzbxJl.s 			page 33


 1079              	.LFB164:
 602:../asf/sam/drivers/pio/pio.c **** }
 603:../asf/sam/drivers/pio/pio.c **** 
 604:../asf/sam/drivers/pio/pio.c **** /**
 605:../asf/sam/drivers/pio/pio.c ****  * \brief Read and clear PIO interrupt status.
 606:../asf/sam/drivers/pio/pio.c ****  *
 607:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 608:../asf/sam/drivers/pio/pio.c ****  *
 609:../asf/sam/drivers/pio/pio.c ****  * \return The interrupt status value.
 610:../asf/sam/drivers/pio/pio.c ****  */
 611:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get_interrupt_status(const Pio *p_pio)
 612:../asf/sam/drivers/pio/pio.c **** {
 1080              		.loc 1 612 0
 1081              		.cfi_startproc
 1082              		@ args = 0, pretend = 0, frame = 0
 1083              		@ frame_needed = 0, uses_anonymous_args = 0
 1084              		@ link register save eliminated.
 1085              	.LVL85:
 613:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_ISR;
 1086              		.loc 1 613 0
 1087 0000 C06C     		ldr	r0, [r0, #76]
 1088              	.LVL86:
 614:../asf/sam/drivers/pio/pio.c **** }
 1089              		.loc 1 614 0
 1090 0002 7047     		bx	lr
 1091              		.cfi_endproc
 1092              	.LFE164:
 1093              		.size	pio_get_interrupt_status, .-pio_get_interrupt_status
 1094              		.section	.text.pio_get_interrupt_mask,"ax",%progbits
 1095              		.align	1
 1096              		.p2align 2,,3
 1097              		.global	pio_get_interrupt_mask
 1098              		.syntax unified
 1099              		.thumb
 1100              		.thumb_func
 1101              		.fpu fpv5-d16
 1102              		.type	pio_get_interrupt_mask, %function
 1103              	pio_get_interrupt_mask:
 1104              	.LFB165:
 615:../asf/sam/drivers/pio/pio.c **** 
 616:../asf/sam/drivers/pio/pio.c **** /**
 617:../asf/sam/drivers/pio/pio.c ****  * \brief Read PIO interrupt mask.
 618:../asf/sam/drivers/pio/pio.c ****  *
 619:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 620:../asf/sam/drivers/pio/pio.c ****  *
 621:../asf/sam/drivers/pio/pio.c ****  * \return The interrupt mask value.
 622:../asf/sam/drivers/pio/pio.c ****  */
 623:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get_interrupt_mask(const Pio *p_pio)
 624:../asf/sam/drivers/pio/pio.c **** {
 1105              		.loc 1 624 0
 1106              		.cfi_startproc
 1107              		@ args = 0, pretend = 0, frame = 0
 1108              		@ frame_needed = 0, uses_anonymous_args = 0
 1109              		@ link register save eliminated.
 1110              	.LVL87:
 625:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_IMR;
 1111              		.loc 1 625 0
ARM GAS  /tmp/ccqzbxJl.s 			page 34


 1112 0000 806C     		ldr	r0, [r0, #72]
 1113              	.LVL88:
 626:../asf/sam/drivers/pio/pio.c **** }
 1114              		.loc 1 626 0
 1115 0002 7047     		bx	lr
 1116              		.cfi_endproc
 1117              	.LFE165:
 1118              		.size	pio_get_interrupt_mask, .-pio_get_interrupt_mask
 1119              		.section	.text.pio_set_additional_interrupt_mode,"ax",%progbits
 1120              		.align	1
 1121              		.p2align 2,,3
 1122              		.global	pio_set_additional_interrupt_mode
 1123              		.syntax unified
 1124              		.thumb
 1125              		.thumb_func
 1126              		.fpu fpv5-d16
 1127              		.type	pio_set_additional_interrupt_mode, %function
 1128              	pio_set_additional_interrupt_mode:
 1129              	.LFB166:
 627:../asf/sam/drivers/pio/pio.c **** 
 628:../asf/sam/drivers/pio/pio.c **** /**
 629:../asf/sam/drivers/pio/pio.c ****  * \brief Set additional interrupt mode.
 630:../asf/sam/drivers/pio/pio.c ****  *
 631:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 632:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Interrupt sources bit map.
 633:../asf/sam/drivers/pio/pio.c ****  * \param ul_attribute Pin(s) attributes.
 634:../asf/sam/drivers/pio/pio.c ****  */
 635:../asf/sam/drivers/pio/pio.c **** void pio_set_additional_interrupt_mode(Pio *p_pio,
 636:../asf/sam/drivers/pio/pio.c **** 		const uint32_t ul_mask, const uint32_t ul_attribute)
 637:../asf/sam/drivers/pio/pio.c **** {
 1130              		.loc 1 637 0
 1131              		.cfi_startproc
 1132              		@ args = 0, pretend = 0, frame = 0
 1133              		@ frame_needed = 0, uses_anonymous_args = 0
 1134              		@ link register save eliminated.
 1135              	.LVL89:
 638:../asf/sam/drivers/pio/pio.c **** 	/* Enables additional interrupt mode if needed */
 639:../asf/sam/drivers/pio/pio.c **** 	if (ul_attribute & PIO_IT_AIME) {
 1136              		.loc 1 639 0
 1137 0000 D306     		lsls	r3, r2, #27
 1138 0002 0AD5     		bpl	.L128
 640:../asf/sam/drivers/pio/pio.c **** 		/* Enables additional interrupt mode */
 641:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_AIMER = ul_mask;
 642:../asf/sam/drivers/pio/pio.c **** 
 643:../asf/sam/drivers/pio/pio.c **** 		/* Configures the Polarity of the event detection */
 644:../asf/sam/drivers/pio/pio.c **** 		/* (Rising/Falling Edge or High/Low Level) */
 645:../asf/sam/drivers/pio/pio.c **** 		if (ul_attribute & PIO_IT_RE_OR_HL) {
 1139              		.loc 1 645 0
 1140 0004 9306     		lsls	r3, r2, #26
 641:../asf/sam/drivers/pio/pio.c **** 
 1141              		.loc 1 641 0
 1142 0006 C0F8B010 		str	r1, [r0, #176]
 1143              		.loc 1 645 0
 1144 000a 09D4     		bmi	.L133
 646:../asf/sam/drivers/pio/pio.c **** 			/* Rising Edge or High Level */
 647:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_REHLSR = ul_mask;
 648:../asf/sam/drivers/pio/pio.c **** 		} else {
ARM GAS  /tmp/ccqzbxJl.s 			page 35


 649:../asf/sam/drivers/pio/pio.c **** 			/* Falling Edge or Low Level */
 650:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_FELLSR = ul_mask;
 651:../asf/sam/drivers/pio/pio.c **** 		}
 652:../asf/sam/drivers/pio/pio.c **** 
 653:../asf/sam/drivers/pio/pio.c **** 		/* Configures the type of event detection (Edge or Level) */
 654:../asf/sam/drivers/pio/pio.c **** 		if (ul_attribute & PIO_IT_EDGE) {
 1145              		.loc 1 654 0
 1146 000c 5306     		lsls	r3, r2, #25
 650:../asf/sam/drivers/pio/pio.c **** 		}
 1147              		.loc 1 650 0
 1148 000e C0F8D010 		str	r1, [r0, #208]
 1149              		.loc 1 654 0
 1150 0012 09D5     		bpl	.L131
 1151              	.L134:
 655:../asf/sam/drivers/pio/pio.c **** 			/* Edge select */
 656:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_ESR = ul_mask;
 1152              		.loc 1 656 0
 1153 0014 C0F8C010 		str	r1, [r0, #192]
 1154 0018 7047     		bx	lr
 1155              	.L128:
 657:../asf/sam/drivers/pio/pio.c **** 		} else {
 658:../asf/sam/drivers/pio/pio.c **** 			/* Level select */
 659:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_LSR = ul_mask;
 660:../asf/sam/drivers/pio/pio.c **** 		}
 661:../asf/sam/drivers/pio/pio.c **** 	} else {
 662:../asf/sam/drivers/pio/pio.c **** 		/* Disable additional interrupt mode */
 663:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_AIMDR = ul_mask;
 1156              		.loc 1 663 0
 1157 001a C0F8B410 		str	r1, [r0, #180]
 1158 001e 7047     		bx	lr
 1159              	.L133:
 654:../asf/sam/drivers/pio/pio.c **** 			/* Edge select */
 1160              		.loc 1 654 0
 1161 0020 5306     		lsls	r3, r2, #25
 647:../asf/sam/drivers/pio/pio.c **** 		} else {
 1162              		.loc 1 647 0
 1163 0022 C0F8D410 		str	r1, [r0, #212]
 654:../asf/sam/drivers/pio/pio.c **** 			/* Edge select */
 1164              		.loc 1 654 0
 1165 0026 F5D4     		bmi	.L134
 1166              	.L131:
 659:../asf/sam/drivers/pio/pio.c **** 		}
 1167              		.loc 1 659 0
 1168 0028 C0F8C410 		str	r1, [r0, #196]
 1169 002c 7047     		bx	lr
 1170              		.cfi_endproc
 1171              	.LFE166:
 1172              		.size	pio_set_additional_interrupt_mode, .-pio_set_additional_interrupt_mode
 1173 002e 00BF     		.section	.text.pio_configure_interrupt,"ax",%progbits
 1174              		.align	1
 1175              		.p2align 2,,3
 1176              		.global	pio_configure_interrupt
 1177              		.syntax unified
 1178              		.thumb
 1179              		.thumb_func
 1180              		.fpu fpv5-d16
 1181              		.type	pio_configure_interrupt, %function
ARM GAS  /tmp/ccqzbxJl.s 			page 36


 1182              	pio_configure_interrupt:
 1183              	.LFB197:
 1184              		.cfi_startproc
 1185              		@ args = 0, pretend = 0, frame = 0
 1186              		@ frame_needed = 0, uses_anonymous_args = 0
 1187              		@ link register save eliminated.
 1188 0000 FFF7FEBF 		b	pio_set_additional_interrupt_mode
 1189              		.cfi_endproc
 1190              	.LFE197:
 1191              		.size	pio_configure_interrupt, .-pio_configure_interrupt
 1192              		.section	.text.pio_set_writeprotect,"ax",%progbits
 1193              		.align	1
 1194              		.p2align 2,,3
 1195              		.global	pio_set_writeprotect
 1196              		.syntax unified
 1197              		.thumb
 1198              		.thumb_func
 1199              		.fpu fpv5-d16
 1200              		.type	pio_set_writeprotect, %function
 1201              	pio_set_writeprotect:
 1202              	.LFB167:
 664:../asf/sam/drivers/pio/pio.c **** 	}
 665:../asf/sam/drivers/pio/pio.c **** }
 666:../asf/sam/drivers/pio/pio.c **** 
 667:../asf/sam/drivers/pio/pio.c **** #ifndef PIO_WPMR_WPKEY_PASSWD
 668:../asf/sam/drivers/pio/pio.c **** #define PIO_WPMR_WPKEY_PASSWD    PIO_WPMR_WPKEY(0x50494FU)
 669:../asf/sam/drivers/pio/pio.c **** #endif
 670:../asf/sam/drivers/pio/pio.c **** 
 671:../asf/sam/drivers/pio/pio.c **** /**
 672:../asf/sam/drivers/pio/pio.c ****  * \brief Enable or disable write protect of PIO registers.
 673:../asf/sam/drivers/pio/pio.c ****  *
 674:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 675:../asf/sam/drivers/pio/pio.c ****  * \param ul_enable 1 to enable, 0 to disable.
 676:../asf/sam/drivers/pio/pio.c ****  */
 677:../asf/sam/drivers/pio/pio.c **** void pio_set_writeprotect(Pio *p_pio, const uint32_t ul_enable)
 678:../asf/sam/drivers/pio/pio.c **** {
 1203              		.loc 1 678 0
 1204              		.cfi_startproc
 1205              		@ args = 0, pretend = 0, frame = 0
 1206              		@ frame_needed = 0, uses_anonymous_args = 0
 1207              		@ link register save eliminated.
 1208              	.LVL90:
 679:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_WPMR = PIO_WPMR_WPKEY_PASSWD | (ul_enable & PIO_WPMR_WPEN);
 1209              		.loc 1 679 0
 1210 0000 01F00101 		and	r1, r1, #1
 1211              	.LVL91:
 1212 0004 024B     		ldr	r3, .L137
 1213 0006 0B43     		orrs	r3, r3, r1
 1214 0008 C0F8E430 		str	r3, [r0, #228]
 1215 000c 7047     		bx	lr
 1216              	.L138:
 1217 000e 00BF     		.align	2
 1218              	.L137:
 1219 0010 004F4950 		.word	1346981632
 1220              		.cfi_endproc
 1221              	.LFE167:
 1222              		.size	pio_set_writeprotect, .-pio_set_writeprotect
ARM GAS  /tmp/ccqzbxJl.s 			page 37


 1223              		.section	.text.pio_get_writeprotect_status,"ax",%progbits
 1224              		.align	1
 1225              		.p2align 2,,3
 1226              		.global	pio_get_writeprotect_status
 1227              		.syntax unified
 1228              		.thumb
 1229              		.thumb_func
 1230              		.fpu fpv5-d16
 1231              		.type	pio_get_writeprotect_status, %function
 1232              	pio_get_writeprotect_status:
 1233              	.LFB168:
 680:../asf/sam/drivers/pio/pio.c **** }
 681:../asf/sam/drivers/pio/pio.c **** 
 682:../asf/sam/drivers/pio/pio.c **** /**
 683:../asf/sam/drivers/pio/pio.c ****  * \brief Read write protect status.
 684:../asf/sam/drivers/pio/pio.c ****  *
 685:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 686:../asf/sam/drivers/pio/pio.c ****  *
 687:../asf/sam/drivers/pio/pio.c ****  * \return Return write protect status.
 688:../asf/sam/drivers/pio/pio.c ****  */
 689:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get_writeprotect_status(const Pio *p_pio)
 690:../asf/sam/drivers/pio/pio.c **** {
 1234              		.loc 1 690 0
 1235              		.cfi_startproc
 1236              		@ args = 0, pretend = 0, frame = 0
 1237              		@ frame_needed = 0, uses_anonymous_args = 0
 1238              		@ link register save eliminated.
 1239              	.LVL92:
 691:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_WPSR;
 1240              		.loc 1 691 0
 1241 0000 D0F8E800 		ldr	r0, [r0, #232]
 1242              	.LVL93:
 692:../asf/sam/drivers/pio/pio.c **** }
 1243              		.loc 1 692 0
 1244 0004 7047     		bx	lr
 1245              		.cfi_endproc
 1246              	.LFE168:
 1247              		.size	pio_get_writeprotect_status, .-pio_get_writeprotect_status
 1248 0006 00BF     		.section	.text.pio_get_pin_value,"ax",%progbits
 1249              		.align	1
 1250              		.p2align 2,,3
 1251              		.global	pio_get_pin_value
 1252              		.syntax unified
 1253              		.thumb
 1254              		.thumb_func
 1255              		.fpu fpv5-d16
 1256              		.type	pio_get_pin_value, %function
 1257              	pio_get_pin_value:
 1258              	.LFB169:
 693:../asf/sam/drivers/pio/pio.c **** 
 694:../asf/sam/drivers/pio/pio.c **** /**
 695:../asf/sam/drivers/pio/pio.c ****  * \brief Return the value of a pin.
 696:../asf/sam/drivers/pio/pio.c ****  *
 697:../asf/sam/drivers/pio/pio.c ****  * \param ul_pin The pin number.
 698:../asf/sam/drivers/pio/pio.c ****  *
 699:../asf/sam/drivers/pio/pio.c ****  * \return The pin value.
 700:../asf/sam/drivers/pio/pio.c ****  *
ARM GAS  /tmp/ccqzbxJl.s 			page 38


 701:../asf/sam/drivers/pio/pio.c ****  * \note If pin is output: a pull-up or pull-down could hide the actual value.
 702:../asf/sam/drivers/pio/pio.c ****  *       The function \ref pio_get can be called to get the actual pin output
 703:../asf/sam/drivers/pio/pio.c ****  *       level.
 704:../asf/sam/drivers/pio/pio.c ****  * \note If pin is input: PIOx must be clocked to sample the signal.
 705:../asf/sam/drivers/pio/pio.c ****  *       See PMC driver.
 706:../asf/sam/drivers/pio/pio.c ****  */
 707:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get_pin_value(uint32_t ul_pin)
 708:../asf/sam/drivers/pio/pio.c **** {
 1259              		.loc 1 708 0
 1260              		.cfi_startproc
 1261              		@ args = 0, pretend = 0, frame = 0
 1262              		@ frame_needed = 0, uses_anonymous_args = 0
 1263              		@ link register save eliminated.
 1264              	.LVL94:
 1265              	.LBB146:
 1266              	.LBB147:
 709:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 710:../asf/sam/drivers/pio/pio.c **** 
 711:../asf/sam/drivers/pio/pio.c **** 	return (p_pio->PIO_PDSR >> (ul_pin & 0x1F)) & 1;
 712:../asf/sam/drivers/pio/pio.c **** }
 713:../asf/sam/drivers/pio/pio.c **** 
 714:../asf/sam/drivers/pio/pio.c **** /**
 715:../asf/sam/drivers/pio/pio.c ****  * \brief Drive a GPIO pin to 1.
 716:../asf/sam/drivers/pio/pio.c ****  *
 717:../asf/sam/drivers/pio/pio.c ****  * \param ul_pin The pin index.
 718:../asf/sam/drivers/pio/pio.c ****  *
 719:../asf/sam/drivers/pio/pio.c ****  * \note The function \ref pio_configure_pin must be called beforehand.
 720:../asf/sam/drivers/pio/pio.c ****  */
 721:../asf/sam/drivers/pio/pio.c **** void pio_set_pin_high(uint32_t ul_pin)
 722:../asf/sam/drivers/pio/pio.c **** {
 723:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 724:../asf/sam/drivers/pio/pio.c **** 
 725:../asf/sam/drivers/pio/pio.c **** 	/* Value to be driven on the I/O line: 1. */
 726:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_SODR = 1 << (ul_pin & 0x1F);
 727:../asf/sam/drivers/pio/pio.c **** }
 728:../asf/sam/drivers/pio/pio.c **** 
 729:../asf/sam/drivers/pio/pio.c **** /**
 730:../asf/sam/drivers/pio/pio.c ****  * \brief Drive a GPIO pin to 0.
 731:../asf/sam/drivers/pio/pio.c ****  *
 732:../asf/sam/drivers/pio/pio.c ****  * \param ul_pin The pin index.
 733:../asf/sam/drivers/pio/pio.c ****  *
 734:../asf/sam/drivers/pio/pio.c ****  * \note The function \ref pio_configure_pin must be called before.
 735:../asf/sam/drivers/pio/pio.c ****  */
 736:../asf/sam/drivers/pio/pio.c **** void pio_set_pin_low(uint32_t ul_pin)
 737:../asf/sam/drivers/pio/pio.c **** {
 738:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 739:../asf/sam/drivers/pio/pio.c **** 
 740:../asf/sam/drivers/pio/pio.c **** 	/* Value to be driven on the I/O line: 0. */
 741:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_CODR = 1 << (ul_pin & 0x1F);
 742:../asf/sam/drivers/pio/pio.c **** }
 743:../asf/sam/drivers/pio/pio.c **** 
 744:../asf/sam/drivers/pio/pio.c **** /**
 745:../asf/sam/drivers/pio/pio.c ****  * \brief Toggle a GPIO pin.
 746:../asf/sam/drivers/pio/pio.c ****  *
 747:../asf/sam/drivers/pio/pio.c ****  * \param ul_pin The pin index.
 748:../asf/sam/drivers/pio/pio.c ****  *
 749:../asf/sam/drivers/pio/pio.c ****  * \note The function \ref pio_configure_pin must be called before.
ARM GAS  /tmp/ccqzbxJl.s 			page 39


 750:../asf/sam/drivers/pio/pio.c ****  */
 751:../asf/sam/drivers/pio/pio.c **** void pio_toggle_pin(uint32_t ul_pin)
 752:../asf/sam/drivers/pio/pio.c **** {
 753:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 754:../asf/sam/drivers/pio/pio.c **** 
 755:../asf/sam/drivers/pio/pio.c **** 	if (p_pio->PIO_ODSR & (1 << (ul_pin & 0x1F))) {
 756:../asf/sam/drivers/pio/pio.c **** 		/* Value to be driven on the I/O line: 0. */
 757:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_CODR = 1 << (ul_pin & 0x1F);
 758:../asf/sam/drivers/pio/pio.c **** 	} else {
 759:../asf/sam/drivers/pio/pio.c **** 		/* Value to be driven on the I/O line: 1. */
 760:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_SODR = 1 << (ul_pin & 0x1F);
 761:../asf/sam/drivers/pio/pio.c **** 	}
 762:../asf/sam/drivers/pio/pio.c **** }
 763:../asf/sam/drivers/pio/pio.c **** 
 764:../asf/sam/drivers/pio/pio.c **** /**
 765:../asf/sam/drivers/pio/pio.c ****  * \brief Perform complete pin(s) configuration; general attributes and PIO init
 766:../asf/sam/drivers/pio/pio.c ****  * if necessary.
 767:../asf/sam/drivers/pio/pio.c ****  *
 768:../asf/sam/drivers/pio/pio.c ****  * \param ul_pin The pin index.
 769:../asf/sam/drivers/pio/pio.c ****  * \param ul_flags Pins attributes.
 770:../asf/sam/drivers/pio/pio.c ****  *
 771:../asf/sam/drivers/pio/pio.c ****  * \return Whether the pin(s) have been configured properly.
 772:../asf/sam/drivers/pio/pio.c ****  */
 773:../asf/sam/drivers/pio/pio.c **** uint32_t pio_configure_pin(uint32_t ul_pin, const uint32_t ul_flags)
 774:../asf/sam/drivers/pio/pio.c **** {
 775:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 776:../asf/sam/drivers/pio/pio.c **** 
 777:../asf/sam/drivers/pio/pio.c **** 	/* Configure pins */
 778:../asf/sam/drivers/pio/pio.c **** 	switch (ul_flags & PIO_TYPE_Msk) {
 779:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_A:
 780:../asf/sam/drivers/pio/pio.c **** 		pio_set_peripheral(p_pio, PIO_PERIPH_A, (1 << (ul_pin & 0x1F)));
 781:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, (1 << (ul_pin & 0x1F)),
 782:../asf/sam/drivers/pio/pio.c **** 				(ul_flags & PIO_PULLUP));
 783:../asf/sam/drivers/pio/pio.c **** 		break;
 784:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_B:
 785:../asf/sam/drivers/pio/pio.c **** 		pio_set_peripheral(p_pio, PIO_PERIPH_B, (1 << (ul_pin & 0x1F)));
 786:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, (1 << (ul_pin & 0x1F)),
 787:../asf/sam/drivers/pio/pio.c **** 				(ul_flags & PIO_PULLUP));
 788:../asf/sam/drivers/pio/pio.c **** 		break;
 789:../asf/sam/drivers/pio/pio.c **** #if (SAM3S || SAM3N || SAM4S || SAM4E || SAM4N || SAM4C || SAM4CP || SAM4CM || SAMV71 || SAMV70 || 
 790:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_C:
 791:../asf/sam/drivers/pio/pio.c **** 		pio_set_peripheral(p_pio, PIO_PERIPH_C, (1 << (ul_pin & 0x1F)));
 792:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, (1 << (ul_pin & 0x1F)),
 793:../asf/sam/drivers/pio/pio.c **** 				(ul_flags & PIO_PULLUP));
 794:../asf/sam/drivers/pio/pio.c **** 		break;
 795:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_D:
 796:../asf/sam/drivers/pio/pio.c **** 		pio_set_peripheral(p_pio, PIO_PERIPH_D, (1 << (ul_pin & 0x1F)));
 797:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, (1 << (ul_pin & 0x1F)),
 798:../asf/sam/drivers/pio/pio.c **** 				(ul_flags & PIO_PULLUP));
 799:../asf/sam/drivers/pio/pio.c **** 		break;
 800:../asf/sam/drivers/pio/pio.c **** #endif
 801:../asf/sam/drivers/pio/pio.c **** 
 802:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_INPUT:
 803:../asf/sam/drivers/pio/pio.c **** 		pio_set_input(p_pio, (1 << (ul_pin & 0x1F)), ul_flags);
 804:../asf/sam/drivers/pio/pio.c **** 		break;
 805:../asf/sam/drivers/pio/pio.c **** 
 806:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_OUTPUT_0:
ARM GAS  /tmp/ccqzbxJl.s 			page 40


 807:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_OUTPUT_1:
 808:../asf/sam/drivers/pio/pio.c **** 		pio_set_output(p_pio, (1 << (ul_pin & 0x1F)),
 809:../asf/sam/drivers/pio/pio.c **** 				((ul_flags & PIO_TYPE_PIO_OUTPUT_1)
 810:../asf/sam/drivers/pio/pio.c **** 				== PIO_TYPE_PIO_OUTPUT_1) ? 1 : 0,
 811:../asf/sam/drivers/pio/pio.c **** 				(ul_flags & PIO_OPENDRAIN) ? 1 : 0,
 812:../asf/sam/drivers/pio/pio.c **** 				(ul_flags & PIO_PULLUP) ? 1 : 0);
 813:../asf/sam/drivers/pio/pio.c **** 		break;
 814:../asf/sam/drivers/pio/pio.c **** 
 815:../asf/sam/drivers/pio/pio.c **** 	default:
 816:../asf/sam/drivers/pio/pio.c **** 		return 0;
 817:../asf/sam/drivers/pio/pio.c **** 	}
 818:../asf/sam/drivers/pio/pio.c **** 
 819:../asf/sam/drivers/pio/pio.c **** 	return 1;
 820:../asf/sam/drivers/pio/pio.c **** }
 821:../asf/sam/drivers/pio/pio.c **** 
 822:../asf/sam/drivers/pio/pio.c **** /**
 823:../asf/sam/drivers/pio/pio.c ****  * \brief Drive a GPIO port to 1.
 824:../asf/sam/drivers/pio/pio.c ****  *
 825:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Base address of the PIO port.
 826:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to toggle.
 827:../asf/sam/drivers/pio/pio.c ****  */
 828:../asf/sam/drivers/pio/pio.c **** void pio_set_pin_group_high(Pio *p_pio, uint32_t ul_mask)
 829:../asf/sam/drivers/pio/pio.c **** {
 830:../asf/sam/drivers/pio/pio.c **** 	/* Value to be driven on the I/O line: 1. */
 831:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_SODR = ul_mask;
 832:../asf/sam/drivers/pio/pio.c **** }
 833:../asf/sam/drivers/pio/pio.c **** 
 834:../asf/sam/drivers/pio/pio.c **** /**
 835:../asf/sam/drivers/pio/pio.c ****  * \brief Drive a GPIO port to 0.
 836:../asf/sam/drivers/pio/pio.c ****  *
 837:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Base address of the PIO port.
 838:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to toggle.
 839:../asf/sam/drivers/pio/pio.c ****  */
 840:../asf/sam/drivers/pio/pio.c **** void pio_set_pin_group_low(Pio *p_pio, uint32_t ul_mask)
 841:../asf/sam/drivers/pio/pio.c **** {
 842:../asf/sam/drivers/pio/pio.c **** 	/* Value to be driven on the I/O line: 0. */
 843:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_CODR = ul_mask;
 844:../asf/sam/drivers/pio/pio.c **** }
 845:../asf/sam/drivers/pio/pio.c **** 
 846:../asf/sam/drivers/pio/pio.c **** /**
 847:../asf/sam/drivers/pio/pio.c ****  * \brief Toggle a GPIO group.
 848:../asf/sam/drivers/pio/pio.c ****  *
 849:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 850:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 851:../asf/sam/drivers/pio/pio.c ****  */
 852:../asf/sam/drivers/pio/pio.c **** void pio_toggle_pin_group(Pio *p_pio, uint32_t ul_mask)
 853:../asf/sam/drivers/pio/pio.c **** {
 854:../asf/sam/drivers/pio/pio.c **** 	if (p_pio->PIO_ODSR & ul_mask) {
 855:../asf/sam/drivers/pio/pio.c **** 		/* Value to be driven on the I/O line: 0. */
 856:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_CODR = ul_mask;
 857:../asf/sam/drivers/pio/pio.c **** 	} else {
 858:../asf/sam/drivers/pio/pio.c **** 		/* Value to be driven on the I/O line: 1. */
 859:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_SODR = ul_mask;
 860:../asf/sam/drivers/pio/pio.c **** 	}
 861:../asf/sam/drivers/pio/pio.c **** }
 862:../asf/sam/drivers/pio/pio.c **** 
 863:../asf/sam/drivers/pio/pio.c **** /**
ARM GAS  /tmp/ccqzbxJl.s 			page 41


 864:../asf/sam/drivers/pio/pio.c ****  * \brief Perform complete pin(s) configuration; general attributes and PIO init
 865:../asf/sam/drivers/pio/pio.c ****  * if necessary.
 866:../asf/sam/drivers/pio/pio.c ****  *
 867:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
 868:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Bitmask of one or more pin(s) to configure.
 869:../asf/sam/drivers/pio/pio.c ****  * \param ul_flags Pin(s) attributes.
 870:../asf/sam/drivers/pio/pio.c ****  *
 871:../asf/sam/drivers/pio/pio.c ****  * \return Whether the pin(s) have been configured properly.
 872:../asf/sam/drivers/pio/pio.c ****  */
 873:../asf/sam/drivers/pio/pio.c **** uint32_t pio_configure_pin_group(Pio *p_pio,
 874:../asf/sam/drivers/pio/pio.c **** 		uint32_t ul_mask, const uint32_t ul_flags)
 875:../asf/sam/drivers/pio/pio.c **** {
 876:../asf/sam/drivers/pio/pio.c **** 	/* Configure pins */
 877:../asf/sam/drivers/pio/pio.c **** 	switch (ul_flags & PIO_TYPE_Msk) {
 878:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_A:
 879:../asf/sam/drivers/pio/pio.c **** 		pio_set_peripheral(p_pio, PIO_PERIPH_A, ul_mask);
 880:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, ul_mask, (ul_flags & PIO_PULLUP));
 881:../asf/sam/drivers/pio/pio.c **** 		break;
 882:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_B:
 883:../asf/sam/drivers/pio/pio.c **** 		pio_set_peripheral(p_pio, PIO_PERIPH_B, ul_mask);
 884:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, ul_mask, (ul_flags & PIO_PULLUP));
 885:../asf/sam/drivers/pio/pio.c **** 		break;
 886:../asf/sam/drivers/pio/pio.c **** #if (SAM3S || SAM3N || SAM4S || SAM4E || SAM4N || SAM4C || SAM4CP || SAM4CM || SAMV71 || SAMV70 || 
 887:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_C:
 888:../asf/sam/drivers/pio/pio.c **** 		pio_set_peripheral(p_pio, PIO_PERIPH_C, ul_mask);
 889:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, ul_mask, (ul_flags & PIO_PULLUP));
 890:../asf/sam/drivers/pio/pio.c **** 		break;
 891:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_D:
 892:../asf/sam/drivers/pio/pio.c **** 		pio_set_peripheral(p_pio, PIO_PERIPH_D, ul_mask);
 893:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, ul_mask, (ul_flags & PIO_PULLUP));
 894:../asf/sam/drivers/pio/pio.c **** 		break;
 895:../asf/sam/drivers/pio/pio.c **** #endif
 896:../asf/sam/drivers/pio/pio.c **** 
 897:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_INPUT:
 898:../asf/sam/drivers/pio/pio.c **** 		pio_set_input(p_pio, ul_mask, ul_flags);
 899:../asf/sam/drivers/pio/pio.c **** 		break;
 900:../asf/sam/drivers/pio/pio.c **** 
 901:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_OUTPUT_0:
 902:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_OUTPUT_1:
 903:../asf/sam/drivers/pio/pio.c **** 		pio_set_output(p_pio, ul_mask,
 904:../asf/sam/drivers/pio/pio.c **** 				((ul_flags & PIO_TYPE_PIO_OUTPUT_1)
 905:../asf/sam/drivers/pio/pio.c **** 				== PIO_TYPE_PIO_OUTPUT_1) ? 1 : 0,
 906:../asf/sam/drivers/pio/pio.c **** 				(ul_flags & PIO_OPENDRAIN) ? 1 : 0,
 907:../asf/sam/drivers/pio/pio.c **** 				(ul_flags & PIO_PULLUP) ? 1 : 0);
 908:../asf/sam/drivers/pio/pio.c **** 		break;
 909:../asf/sam/drivers/pio/pio.c **** 
 910:../asf/sam/drivers/pio/pio.c **** 	default:
 911:../asf/sam/drivers/pio/pio.c **** 		return 0;
 912:../asf/sam/drivers/pio/pio.c **** 	}
 913:../asf/sam/drivers/pio/pio.c **** 
 914:../asf/sam/drivers/pio/pio.c **** 	return 1;
 915:../asf/sam/drivers/pio/pio.c **** }
 916:../asf/sam/drivers/pio/pio.c **** 
 917:../asf/sam/drivers/pio/pio.c **** /**
 918:../asf/sam/drivers/pio/pio.c ****  * \brief Enable interrupt for a GPIO pin.
 919:../asf/sam/drivers/pio/pio.c ****  *
 920:../asf/sam/drivers/pio/pio.c ****  * \param ul_pin The pin index.
ARM GAS  /tmp/ccqzbxJl.s 			page 42


 921:../asf/sam/drivers/pio/pio.c ****  *
 922:../asf/sam/drivers/pio/pio.c ****  * \note The function \ref gpio_configure_pin must be called before.
 923:../asf/sam/drivers/pio/pio.c ****  */
 924:../asf/sam/drivers/pio/pio.c **** void pio_enable_pin_interrupt(uint32_t ul_pin)
 925:../asf/sam/drivers/pio/pio.c **** {
 926:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 927:../asf/sam/drivers/pio/pio.c **** 
 928:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_IER = 1 << (ul_pin & 0x1F);
 929:../asf/sam/drivers/pio/pio.c **** }
 930:../asf/sam/drivers/pio/pio.c **** 
 931:../asf/sam/drivers/pio/pio.c **** 
 932:../asf/sam/drivers/pio/pio.c **** /**
 933:../asf/sam/drivers/pio/pio.c ****  * \brief Disable interrupt for a GPIO pin.
 934:../asf/sam/drivers/pio/pio.c ****  *
 935:../asf/sam/drivers/pio/pio.c ****  * \param ul_pin The pin index.
 936:../asf/sam/drivers/pio/pio.c ****  *
 937:../asf/sam/drivers/pio/pio.c ****  * \note The function \ref gpio_configure_pin must be called before.
 938:../asf/sam/drivers/pio/pio.c ****  */
 939:../asf/sam/drivers/pio/pio.c **** void pio_disable_pin_interrupt(uint32_t ul_pin)
 940:../asf/sam/drivers/pio/pio.c **** {
 941:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 942:../asf/sam/drivers/pio/pio.c **** 
 943:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_IDR = 1 << (ul_pin & 0x1F);
 944:../asf/sam/drivers/pio/pio.c **** }
 945:../asf/sam/drivers/pio/pio.c **** 
 946:../asf/sam/drivers/pio/pio.c **** 
 947:../asf/sam/drivers/pio/pio.c **** /**
 948:../asf/sam/drivers/pio/pio.c ****  * \brief Return GPIO port for a GPIO pin.
 949:../asf/sam/drivers/pio/pio.c ****  *
 950:../asf/sam/drivers/pio/pio.c ****  * \param ul_pin The pin index.
 951:../asf/sam/drivers/pio/pio.c ****  *
 952:../asf/sam/drivers/pio/pio.c ****  * \return Pointer to \ref Pio struct for GPIO port.
 953:../asf/sam/drivers/pio/pio.c ****  */
 954:../asf/sam/drivers/pio/pio.c **** Pio *pio_get_pin_group(uint32_t ul_pin)
 955:../asf/sam/drivers/pio/pio.c **** {
 956:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio;
 957:../asf/sam/drivers/pio/pio.c **** 
 958:../asf/sam/drivers/pio/pio.c **** #if (SAM4C || SAM4CP)
 959:../asf/sam/drivers/pio/pio.c **** #  ifdef ID_PIOD
 960:../asf/sam/drivers/pio/pio.c **** 	if (ul_pin > PIO_PC9_IDX) {
 961:../asf/sam/drivers/pio/pio.c **** 		p_pio = PIOD;
 962:../asf/sam/drivers/pio/pio.c **** 	} else if (ul_pin > PIO_PB31_IDX) {
 963:../asf/sam/drivers/pio/pio.c **** #  else
 964:../asf/sam/drivers/pio/pio.c **** 	if  (ul_pin > PIO_PB31_IDX) {
 965:../asf/sam/drivers/pio/pio.c **** #  endif
 966:../asf/sam/drivers/pio/pio.c **** 		p_pio = PIOC;
 967:../asf/sam/drivers/pio/pio.c **** 	} else {
 968:../asf/sam/drivers/pio/pio.c **** 		p_pio = (Pio *)((uint32_t)PIOA + (PIO_DELTA * (ul_pin >> 5)));
 969:../asf/sam/drivers/pio/pio.c **** 	}
 970:../asf/sam/drivers/pio/pio.c **** #elif (SAM4CM)
 971:../asf/sam/drivers/pio/pio.c **** 	if (ul_pin > PIO_PB21_IDX) {
 972:../asf/sam/drivers/pio/pio.c **** 		p_pio = PIOC;
 973:../asf/sam/drivers/pio/pio.c **** 	} else {
 974:../asf/sam/drivers/pio/pio.c **** 		p_pio = (Pio *)((uint32_t)PIOA + (PIO_DELTA * (ul_pin >> 5)));
 975:../asf/sam/drivers/pio/pio.c **** 	}
 976:../asf/sam/drivers/pio/pio.c **** #else
 977:../asf/sam/drivers/pio/pio.c **** 	p_pio = (Pio *)((uint32_t)PIOA + (PIO_DELTA * (ul_pin >> 5)));
ARM GAS  /tmp/ccqzbxJl.s 			page 43


 1267              		.loc 1 977 0
 1268 0000 054B     		ldr	r3, .L141
 1269 0002 03EB5013 		add	r3, r3, r0, lsr #5
 1270              	.LBE147:
 1271              	.LBE146:
 711:../asf/sam/drivers/pio/pio.c **** }
 1272              		.loc 1 711 0
 1273 0006 00F01F00 		and	r0, r0, #31
 1274              	.LVL95:
 1275              	.LBB149:
 1276              	.LBB148:
 1277              		.loc 1 977 0
 1278 000a 5B02     		lsls	r3, r3, #9
 1279              	.LVL96:
 1280              	.LBE148:
 1281              	.LBE149:
 711:../asf/sam/drivers/pio/pio.c **** }
 1282              		.loc 1 711 0
 1283 000c DB6B     		ldr	r3, [r3, #60]
 1284 000e 23FA00F0 		lsr	r0, r3, r0
 712:../asf/sam/drivers/pio/pio.c **** 
 1285              		.loc 1 712 0
 1286 0012 00F00100 		and	r0, r0, #1
 1287 0016 7047     		bx	lr
 1288              	.L142:
 1289              		.align	2
 1290              	.L141:
 1291 0018 07072000 		.word	2098951
 1292              		.cfi_endproc
 1293              	.LFE169:
 1294              		.size	pio_get_pin_value, .-pio_get_pin_value
 1295              		.section	.text.pio_set_pin_high,"ax",%progbits
 1296              		.align	1
 1297              		.p2align 2,,3
 1298              		.global	pio_set_pin_high
 1299              		.syntax unified
 1300              		.thumb
 1301              		.thumb_func
 1302              		.fpu fpv5-d16
 1303              		.type	pio_set_pin_high, %function
 1304              	pio_set_pin_high:
 1305              	.LFB170:
 722:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 1306              		.loc 1 722 0
 1307              		.cfi_startproc
 1308              		@ args = 0, pretend = 0, frame = 0
 1309              		@ frame_needed = 0, uses_anonymous_args = 0
 1310              		@ link register save eliminated.
 1311              	.LVL97:
 1312              	.LBB150:
 1313              	.LBB151:
 1314              		.loc 1 977 0
 1315 0000 054B     		ldr	r3, .L144
 1316              	.LBE151:
 1317              	.LBE150:
 726:../asf/sam/drivers/pio/pio.c **** }
 1318              		.loc 1 726 0
ARM GAS  /tmp/ccqzbxJl.s 			page 44


 1319 0002 0122     		movs	r2, #1
 1320              	.LBB154:
 1321              	.LBB152:
 1322              		.loc 1 977 0
 1323 0004 03EB5013 		add	r3, r3, r0, lsr #5
 1324              	.LBE152:
 1325              	.LBE154:
 726:../asf/sam/drivers/pio/pio.c **** }
 1326              		.loc 1 726 0
 1327 0008 00F01F00 		and	r0, r0, #31
 1328              	.LVL98:
 1329              	.LBB155:
 1330              	.LBB153:
 1331              		.loc 1 977 0
 1332 000c 5B02     		lsls	r3, r3, #9
 1333              	.LVL99:
 1334              	.LBE153:
 1335              	.LBE155:
 726:../asf/sam/drivers/pio/pio.c **** }
 1336              		.loc 1 726 0
 1337 000e 02FA00F0 		lsl	r0, r2, r0
 1338 0012 1863     		str	r0, [r3, #48]
 1339 0014 7047     		bx	lr
 1340              	.L145:
 1341 0016 00BF     		.align	2
 1342              	.L144:
 1343 0018 07072000 		.word	2098951
 1344              		.cfi_endproc
 1345              	.LFE170:
 1346              		.size	pio_set_pin_high, .-pio_set_pin_high
 1347              		.section	.text.pio_set_pin_low,"ax",%progbits
 1348              		.align	1
 1349              		.p2align 2,,3
 1350              		.global	pio_set_pin_low
 1351              		.syntax unified
 1352              		.thumb
 1353              		.thumb_func
 1354              		.fpu fpv5-d16
 1355              		.type	pio_set_pin_low, %function
 1356              	pio_set_pin_low:
 1357              	.LFB171:
 737:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 1358              		.loc 1 737 0
 1359              		.cfi_startproc
 1360              		@ args = 0, pretend = 0, frame = 0
 1361              		@ frame_needed = 0, uses_anonymous_args = 0
 1362              		@ link register save eliminated.
 1363              	.LVL100:
 1364              	.LBB156:
 1365              	.LBB157:
 1366              		.loc 1 977 0
 1367 0000 054B     		ldr	r3, .L147
 1368              	.LBE157:
 1369              	.LBE156:
 741:../asf/sam/drivers/pio/pio.c **** }
 1370              		.loc 1 741 0
 1371 0002 0122     		movs	r2, #1
ARM GAS  /tmp/ccqzbxJl.s 			page 45


 1372              	.LBB160:
 1373              	.LBB158:
 1374              		.loc 1 977 0
 1375 0004 03EB5013 		add	r3, r3, r0, lsr #5
 1376              	.LBE158:
 1377              	.LBE160:
 741:../asf/sam/drivers/pio/pio.c **** }
 1378              		.loc 1 741 0
 1379 0008 00F01F00 		and	r0, r0, #31
 1380              	.LVL101:
 1381              	.LBB161:
 1382              	.LBB159:
 1383              		.loc 1 977 0
 1384 000c 5B02     		lsls	r3, r3, #9
 1385              	.LVL102:
 1386              	.LBE159:
 1387              	.LBE161:
 741:../asf/sam/drivers/pio/pio.c **** }
 1388              		.loc 1 741 0
 1389 000e 02FA00F0 		lsl	r0, r2, r0
 1390 0012 5863     		str	r0, [r3, #52]
 1391 0014 7047     		bx	lr
 1392              	.L148:
 1393 0016 00BF     		.align	2
 1394              	.L147:
 1395 0018 07072000 		.word	2098951
 1396              		.cfi_endproc
 1397              	.LFE171:
 1398              		.size	pio_set_pin_low, .-pio_set_pin_low
 1399              		.section	.text.pio_toggle_pin,"ax",%progbits
 1400              		.align	1
 1401              		.p2align 2,,3
 1402              		.global	pio_toggle_pin
 1403              		.syntax unified
 1404              		.thumb
 1405              		.thumb_func
 1406              		.fpu fpv5-d16
 1407              		.type	pio_toggle_pin, %function
 1408              	pio_toggle_pin:
 1409              	.LFB172:
 752:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 1410              		.loc 1 752 0
 1411              		.cfi_startproc
 1412              		@ args = 0, pretend = 0, frame = 0
 1413              		@ frame_needed = 0, uses_anonymous_args = 0
 1414              		@ link register save eliminated.
 1415              	.LVL103:
 1416              	.LBB162:
 1417              	.LBB163:
 1418              		.loc 1 977 0
 1419 0000 074B     		ldr	r3, .L153
 1420              	.LBE163:
 1421              	.LBE162:
 755:../asf/sam/drivers/pio/pio.c **** 		/* Value to be driven on the I/O line: 0. */
 1422              		.loc 1 755 0
 1423 0002 0122     		movs	r2, #1
 1424              	.LBB166:
ARM GAS  /tmp/ccqzbxJl.s 			page 46


 1425              	.LBB164:
 1426              		.loc 1 977 0
 1427 0004 03EB5013 		add	r3, r3, r0, lsr #5
 1428              	.LBE164:
 1429              	.LBE166:
 755:../asf/sam/drivers/pio/pio.c **** 		/* Value to be driven on the I/O line: 0. */
 1430              		.loc 1 755 0
 1431 0008 00F01F00 		and	r0, r0, #31
 1432              	.LVL104:
 1433              	.LBB167:
 1434              	.LBB165:
 1435              		.loc 1 977 0
 1436 000c 5B02     		lsls	r3, r3, #9
 1437              	.LVL105:
 1438              	.LBE165:
 1439              	.LBE167:
 755:../asf/sam/drivers/pio/pio.c **** 		/* Value to be driven on the I/O line: 0. */
 1440              		.loc 1 755 0
 1441 000e 02FA00F0 		lsl	r0, r2, r0
 1442 0012 9A6B     		ldr	r2, [r3, #56]
 1443 0014 0242     		tst	r2, r0
 1444 0016 01D1     		bne	.L152
 760:../asf/sam/drivers/pio/pio.c **** 	}
 1445              		.loc 1 760 0
 1446 0018 1863     		str	r0, [r3, #48]
 1447 001a 7047     		bx	lr
 1448              	.L152:
 757:../asf/sam/drivers/pio/pio.c **** 	} else {
 1449              		.loc 1 757 0
 1450 001c 5863     		str	r0, [r3, #52]
 1451 001e 7047     		bx	lr
 1452              	.L154:
 1453              		.align	2
 1454              	.L153:
 1455 0020 07072000 		.word	2098951
 1456              		.cfi_endproc
 1457              	.LFE172:
 1458              		.size	pio_toggle_pin, .-pio_toggle_pin
 1459              		.section	.text.pio_configure_pin,"ax",%progbits
 1460              		.align	1
 1461              		.p2align 2,,3
 1462              		.global	pio_configure_pin
 1463              		.syntax unified
 1464              		.thumb
 1465              		.thumb_func
 1466              		.fpu fpv5-d16
 1467              		.type	pio_configure_pin, %function
 1468              	pio_configure_pin:
 1469              	.LFB173:
 774:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 1470              		.loc 1 774 0
 1471              		.cfi_startproc
 1472              		@ args = 0, pretend = 0, frame = 0
 1473              		@ frame_needed = 0, uses_anonymous_args = 0
 1474              		@ link register save eliminated.
 1475              	.LVL106:
 1476              	.LBB168:
ARM GAS  /tmp/ccqzbxJl.s 			page 47


 1477              	.LBB169:
 1478              		.loc 1 977 0
 1479 0000 534B     		ldr	r3, .L199
 1480              	.LBE169:
 1481              	.LBE168:
 778:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_A:
 1482              		.loc 1 778 0
 1483 0002 01F0F042 		and	r2, r1, #2013265920
 1484              	.LBB172:
 1485              	.LBB170:
 1486              		.loc 1 977 0
 1487 0006 03EB5013 		add	r3, r3, r0, lsr #5
 1488              	.LBE170:
 1489              	.LBE172:
 778:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_A:
 1490              		.loc 1 778 0
 1491 000a B2F1005F 		cmp	r2, #536870912
 774:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 1492              		.loc 1 774 0
 1493 000e 70B4     		push	{r4, r5, r6}
 1494              		.cfi_def_cfa_offset 12
 1495              		.cfi_offset 4, -12
 1496              		.cfi_offset 5, -8
 1497              		.cfi_offset 6, -4
 1498              	.LBB173:
 1499              	.LBB171:
 1500              		.loc 1 977 0
 1501 0010 4FEA4323 		lsl	r3, r3, #9
 1502              	.LVL107:
 1503              	.LBE171:
 1504              	.LBE173:
 778:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_A:
 1505              		.loc 1 778 0
 1506 0014 6DD0     		beq	.L157
 1507 0016 0BD8     		bhi	.L158
 1508 0018 B2F1805F 		cmp	r2, #268435456
 1509 001c 27D0     		beq	.L159
 1510 001e B2F1C05F 		cmp	r2, #402653184
 1511 0022 52D0     		beq	.L160
 1512 0024 B2F1006F 		cmp	r2, #134217728
 1513 0028 38D0     		beq	.L197
 1514              	.L180:
 816:../asf/sam/drivers/pio/pio.c **** 	}
 1515              		.loc 1 816 0
 1516 002a 0020     		movs	r0, #0
 1517              	.LVL108:
 820:../asf/sam/drivers/pio/pio.c **** 
 1518              		.loc 1 820 0
 1519 002c 70BC     		pop	{r4, r5, r6}
 1520              		.cfi_remember_state
 1521              		.cfi_restore 4
 1522              		.cfi_restore 5
 1523              		.cfi_restore 6
 1524              		.cfi_def_cfa_offset 0
 1525 002e 7047     		bx	lr
 1526              	.LVL109:
 1527              	.L158:
ARM GAS  /tmp/ccqzbxJl.s 			page 48


 1528              		.cfi_restore_state
 778:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_A:
 1529              		.loc 1 778 0
 1530 0030 B2F1405F 		cmp	r2, #805306368
 1531 0034 66D0     		beq	.L162
 1532 0036 B2F1605F 		cmp	r2, #939524096
 1533 003a 63D0     		beq	.L162
 1534 003c B2F1205F 		cmp	r2, #671088640
 1535 0040 F3D1     		bne	.L180
 803:../asf/sam/drivers/pio/pio.c **** 		break;
 1536              		.loc 1 803 0
 1537 0042 00F01F00 		and	r0, r0, #31
 1538              	.LVL110:
 1539 0046 0122     		movs	r2, #1
 1540              	.LBB174:
 1541              	.LBB175:
 1542              	.LBB176:
 1543              	.LBB177:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 1544              		.loc 1 83 0
 1545 0048 CD07     		lsls	r5, r1, #31
 1546              	.LBE177:
 1547              	.LBE176:
 1548              	.LBE175:
 1549              	.LBE174:
 803:../asf/sam/drivers/pio/pio.c **** 		break;
 1550              		.loc 1 803 0
 1551 004a 02FA00F2 		lsl	r2, r2, r0
 1552              	.LVL111:
 1553              	.LBB187:
 1554              	.LBB184:
 1555              	.LBB180:
 1556              	.LBB181:
 601:../asf/sam/drivers/pio/pio.c **** }
 1557              		.loc 1 601 0
 1558 004e 5A64     		str	r2, [r3, #68]
 1559              	.LVL112:
 1560              	.LBE181:
 1561              	.LBE180:
 1562              	.LBB182:
 1563              	.LBB178:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 1564              		.loc 1 83 0
 1565 0050 73D5     		bpl	.L168
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 1566              		.loc 1 84 0
 1567 0052 5A66     		str	r2, [r3, #100]
 1568              	.L169:
 1569              	.LVL113:
 1570              	.LBE178:
 1571              	.LBE182:
 274:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFER = ul_mask;
 1572              		.loc 1 274 0
 1573 0054 11F00A0F 		tst	r1, #10
 1574 0058 6DD0     		beq	.L170
 275:../asf/sam/drivers/pio/pio.c **** 	} else {
 1575              		.loc 1 275 0
ARM GAS  /tmp/ccqzbxJl.s 			page 49


 1576 005a 1A62     		str	r2, [r3, #32]
 1577              	.L171:
 282:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 1578              		.loc 1 282 0
 1579 005c 8C07     		lsls	r4, r1, #30
 1580 005e 6ED5     		bpl	.L172
 283:../asf/sam/drivers/pio/pio.c **** 	} else {
 1581              		.loc 1 283 0
 1582 0060 C3F88020 		str	r2, [r3, #128]
 1583              	.L173:
 303:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 1584              		.loc 1 303 0
 1585 0064 5A61     		str	r2, [r3, #20]
 1586              	.LBE184:
 1587              	.LBE187:
 819:../asf/sam/drivers/pio/pio.c **** }
 1588              		.loc 1 819 0
 1589 0066 0120     		movs	r0, #1
 1590              	.LBB188:
 1591              	.LBB185:
 304:../asf/sam/drivers/pio/pio.c **** }
 1592              		.loc 1 304 0
 1593 0068 1A60     		str	r2, [r3]
 1594              	.LBE185:
 1595              	.LBE188:
 820:../asf/sam/drivers/pio/pio.c **** 
 1596              		.loc 1 820 0
 1597 006a 70BC     		pop	{r4, r5, r6}
 1598              		.cfi_remember_state
 1599              		.cfi_restore 4
 1600              		.cfi_restore 5
 1601              		.cfi_restore 6
 1602              		.cfi_def_cfa_offset 0
 1603 006c 7047     		bx	lr
 1604              	.LVL114:
 1605              	.L159:
 1606              		.cfi_restore_state
 785:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, (1 << (ul_pin & 0x1F)),
 1607              		.loc 1 785 0
 1608 006e 00F01F02 		and	r2, r0, #31
 1609 0072 0120     		movs	r0, #1
 1610              	.LVL115:
 1611              	.LBB189:
 1612              	.LBB190:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 1613              		.loc 1 83 0
 1614 0074 C907     		lsls	r1, r1, #31
 1615              	.LVL116:
 1616              	.LBE190:
 1617              	.LBE189:
 785:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, (1 << (ul_pin & 0x1F)),
 1618              		.loc 1 785 0
 1619 0076 00FA02F2 		lsl	r2, r0, r2
 1620              	.LVL117:
 1621              	.LBB192:
 1622              	.LBB193:
 190:../asf/sam/drivers/pio/pio.c **** 
ARM GAS  /tmp/ccqzbxJl.s 			page 50


 1623              		.loc 1 190 0
 1624 007a 5A64     		str	r2, [r3, #68]
 202:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] = (ul_mask | ul_sr);
 1625              		.loc 1 202 0
 1626 007c 1C6F     		ldr	r4, [r3, #112]
 1627              	.LVL118:
 203:../asf/sam/drivers/pio/pio.c **** 
 1628              		.loc 1 203 0
 1629 007e 44EA0204 		orr	r4, r4, r2
 1630              	.LVL119:
 1631 0082 1C67     		str	r4, [r3, #112]
 205:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] &= (~ul_mask & ul_sr);
 1632              		.loc 1 205 0
 1633 0084 5C6F     		ldr	r4, [r3, #116]
 1634              	.LVL120:
 206:../asf/sam/drivers/pio/pio.c **** 		break;
 1635              		.loc 1 206 0
 1636 0086 5D6F     		ldr	r5, [r3, #116]
 1637 0088 04EA0504 		and	r4, r4, r5
 1638              	.LVL121:
 1639 008c 24EA0204 		bic	r4, r4, r2
 1640 0090 5C67     		str	r4, [r3, #116]
 255:../asf/sam/drivers/pio/pio.c **** }
 1641              		.loc 1 255 0
 1642 0092 5A60     		str	r2, [r3, #4]
 1643              	.LVL122:
 1644              	.LBE193:
 1645              	.LBE192:
 1646              	.LBB194:
 1647              	.LBB191:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 1648              		.loc 1 83 0
 1649 0094 16D5     		bpl	.L167
 1650              	.LVL123:
 1651              	.L193:
 1652              	.LBE191:
 1653              	.LBE194:
 1654              	.LBB195:
 1655              	.LBB196:
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 1656              		.loc 1 84 0
 1657 0096 5A66     		str	r2, [r3, #100]
 1658              	.LBE196:
 1659              	.LBE195:
 820:../asf/sam/drivers/pio/pio.c **** 
 1660              		.loc 1 820 0
 1661 0098 70BC     		pop	{r4, r5, r6}
 1662              		.cfi_remember_state
 1663              		.cfi_restore 6
 1664              		.cfi_restore 5
 1665              		.cfi_restore 4
 1666              		.cfi_def_cfa_offset 0
 1667 009a 7047     		bx	lr
 1668              	.LVL124:
 1669              	.L197:
 1670              		.cfi_restore_state
 780:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, (1 << (ul_pin & 0x1F)),
ARM GAS  /tmp/ccqzbxJl.s 			page 51


 1671              		.loc 1 780 0
 1672 009c 00F01F02 		and	r2, r0, #31
 1673 00a0 0120     		movs	r0, #1
 1674              	.LVL125:
 1675 00a2 00FA02F2 		lsl	r2, r0, r2
 1676              	.LVL126:
 1677              	.LBB200:
 1678              	.LBB201:
 190:../asf/sam/drivers/pio/pio.c **** 
 1679              		.loc 1 190 0
 1680 00a6 5A64     		str	r2, [r3, #68]
 196:../asf/sam/drivers/pio/pio.c **** 
 1681              		.loc 1 196 0
 1682 00a8 D643     		mvns	r6, r2
 195:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] &= (~ul_mask & ul_sr);
 1683              		.loc 1 195 0
 1684 00aa 1D6F     		ldr	r5, [r3, #112]
 1685              	.LVL127:
 196:../asf/sam/drivers/pio/pio.c **** 
 1686              		.loc 1 196 0
 1687 00ac 1C6F     		ldr	r4, [r3, #112]
 1688 00ae 2540     		ands	r5, r5, r4
 1689              	.LVL128:
 1690 00b0 3540     		ands	r5, r5, r6
 1691 00b2 1D67     		str	r5, [r3, #112]
 198:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] &= (~ul_mask & ul_sr);
 1692              		.loc 1 198 0
 1693 00b4 5C6F     		ldr	r4, [r3, #116]
 1694              	.LVL129:
 199:../asf/sam/drivers/pio/pio.c **** 		break;
 1695              		.loc 1 199 0
 1696 00b6 5D6F     		ldr	r5, [r3, #116]
 1697 00b8 2C40     		ands	r4, r4, r5
 1698              	.LVL130:
 1699 00ba 3440     		ands	r4, r4, r6
 1700 00bc 5C67     		str	r4, [r3, #116]
 1701              	.LBE201:
 1702              	.LBE200:
 1703              	.LBB203:
 1704              	.LBB204:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 1705              		.loc 1 83 0
 1706 00be CC07     		lsls	r4, r1, #31
 1707              	.LBE204:
 1708              	.LBE203:
 1709              	.LBB206:
 1710              	.LBB202:
 255:../asf/sam/drivers/pio/pio.c **** }
 1711              		.loc 1 255 0
 1712 00c0 5A60     		str	r2, [r3, #4]
 1713              	.LVL131:
 1714              	.LBE202:
 1715              	.LBE206:
 1716              	.LBB207:
 1717              	.LBB205:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 1718              		.loc 1 83 0
ARM GAS  /tmp/ccqzbxJl.s 			page 52


 1719 00c2 E8D4     		bmi	.L193
 1720              	.LVL132:
 1721              	.L167:
 1722              	.LBE205:
 1723              	.LBE207:
 1724              	.LBB208:
 1725              	.LBB197:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 1726              		.loc 1 86 0
 1727 00c4 1A66     		str	r2, [r3, #96]
 1728              	.LBE197:
 1729              	.LBE208:
 820:../asf/sam/drivers/pio/pio.c **** 
 1730              		.loc 1 820 0
 1731 00c6 70BC     		pop	{r4, r5, r6}
 1732              		.cfi_remember_state
 1733              		.cfi_restore 4
 1734              		.cfi_restore 5
 1735              		.cfi_restore 6
 1736              		.cfi_def_cfa_offset 0
 1737 00c8 7047     		bx	lr
 1738              	.LVL133:
 1739              	.L160:
 1740              		.cfi_restore_state
 791:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, (1 << (ul_pin & 0x1F)),
 1741              		.loc 1 791 0
 1742 00ca 00F01F02 		and	r2, r0, #31
 1743 00ce 0120     		movs	r0, #1
 1744              	.LVL134:
 1745 00d0 00FA02F2 		lsl	r2, r0, r2
 1746              	.LVL135:
 1747              	.LBB209:
 1748              	.LBB210:
 190:../asf/sam/drivers/pio/pio.c **** 
 1749              		.loc 1 190 0
 1750 00d4 5A64     		str	r2, [r3, #68]
 210:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] &= (~ul_mask & ul_sr);
 1751              		.loc 1 210 0
 1752 00d6 1C6F     		ldr	r4, [r3, #112]
 1753              	.LVL136:
 211:../asf/sam/drivers/pio/pio.c **** 
 1754              		.loc 1 211 0
 1755 00d8 1D6F     		ldr	r5, [r3, #112]
 1756 00da 2C40     		ands	r4, r4, r5
 1757              	.LVL137:
 1758 00dc 24EA0204 		bic	r4, r4, r2
 1759              	.LVL138:
 1760              	.L195:
 1761              	.LBE210:
 1762              	.LBE209:
 1763              	.LBB211:
 1764              	.LBB212:
 218:../asf/sam/drivers/pio/pio.c **** 
 1765              		.loc 1 218 0
 1766 00e0 1C67     		str	r4, [r3, #112]
 1767              	.LBE212:
 1768              	.LBE211:
ARM GAS  /tmp/ccqzbxJl.s 			page 53


 1769              	.LBB215:
 1770              	.LBB198:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 1771              		.loc 1 83 0
 1772 00e2 CE07     		lsls	r6, r1, #31
 1773              	.LBE198:
 1774              	.LBE215:
 1775              	.LBB216:
 1776              	.LBB213:
 220:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] = (ul_mask | ul_sr);
 1777              		.loc 1 220 0
 1778 00e4 5C6F     		ldr	r4, [r3, #116]
 1779              	.LVL139:
 221:../asf/sam/drivers/pio/pio.c **** 		break;
 1780              		.loc 1 221 0
 1781 00e6 44EA0204 		orr	r4, r4, r2
 1782              	.LVL140:
 1783 00ea 5C67     		str	r4, [r3, #116]
 255:../asf/sam/drivers/pio/pio.c **** }
 1784              		.loc 1 255 0
 1785 00ec 5A60     		str	r2, [r3, #4]
 1786              	.LVL141:
 1787              	.LBE213:
 1788              	.LBE216:
 1789              	.LBB217:
 1790              	.LBB199:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 1791              		.loc 1 83 0
 1792 00ee E9D5     		bpl	.L167
 1793 00f0 D1E7     		b	.L193
 1794              	.LVL142:
 1795              	.L157:
 1796              	.LBE199:
 1797              	.LBE217:
 796:../asf/sam/drivers/pio/pio.c **** 		pio_pull_up(p_pio, (1 << (ul_pin & 0x1F)),
 1798              		.loc 1 796 0
 1799 00f2 00F01F02 		and	r2, r0, #31
 1800 00f6 0120     		movs	r0, #1
 1801              	.LVL143:
 1802 00f8 00FA02F2 		lsl	r2, r0, r2
 1803              	.LVL144:
 1804              	.LBB218:
 1805              	.LBB214:
 190:../asf/sam/drivers/pio/pio.c **** 
 1806              		.loc 1 190 0
 1807 00fc 5A64     		str	r2, [r3, #68]
 217:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] = (ul_mask | ul_sr);
 1808              		.loc 1 217 0
 1809 00fe 1C6F     		ldr	r4, [r3, #112]
 1810              	.LVL145:
 218:../asf/sam/drivers/pio/pio.c **** 
 1811              		.loc 1 218 0
 1812 0100 1443     		orrs	r4, r4, r2
 1813              	.LVL146:
 1814 0102 EDE7     		b	.L195
 1815              	.LVL147:
 1816              	.L162:
ARM GAS  /tmp/ccqzbxJl.s 			page 54


 1817              	.LBE214:
 1818              	.LBE218:
 808:../asf/sam/drivers/pio/pio.c **** 				((ul_flags & PIO_TYPE_PIO_OUTPUT_1)
 1819              		.loc 1 808 0
 1820 0104 00F01F00 		and	r0, r0, #31
 1821              	.LVL148:
 1822 0108 0122     		movs	r2, #1
 809:../asf/sam/drivers/pio/pio.c **** 				== PIO_TYPE_PIO_OUTPUT_1) ? 1 : 0,
 1823              		.loc 1 809 0
 1824 010a 01F06054 		and	r4, r1, #939524096
 811:../asf/sam/drivers/pio/pio.c **** 				(ul_flags & PIO_PULLUP) ? 1 : 0);
 1825              		.loc 1 811 0
 1826 010e 01F00405 		and	r5, r1, #4
 1827              	.LVL149:
 808:../asf/sam/drivers/pio/pio.c **** 				((ul_flags & PIO_TYPE_PIO_OUTPUT_1)
 1828              		.loc 1 808 0
 1829 0112 8240     		lsls	r2, r2, r0
 1830              	.LVL150:
 1831              	.LBB219:
 1832              	.LBB220:
 1833              	.LBB221:
 1834              	.LBB222:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 1835              		.loc 1 83 0
 1836 0114 C907     		lsls	r1, r1, #31
 1837              	.LVL151:
 1838              	.LBE222:
 1839              	.LBE221:
 1840              	.LBB225:
 1841              	.LBB226:
 601:../asf/sam/drivers/pio/pio.c **** }
 1842              		.loc 1 601 0
 1843 0116 5A64     		str	r2, [r3, #68]
 1844              	.LVL152:
 1845              	.LBE226:
 1846              	.LBE225:
 1847              	.LBB227:
 1848              	.LBB223:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 1849              		.loc 1 83 0
 1850 0118 0BD5     		bpl	.L174
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 1851              		.loc 1 84 0
 1852 011a 5A66     		str	r2, [r3, #100]
 1853              	.L175:
 1854              	.LVL153:
 1855              	.LBE223:
 1856              	.LBE227:
 329:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_MDER = ul_mask;
 1857              		.loc 1 329 0
 1858 011c A5B1     		cbz	r5, .L176
 330:../asf/sam/drivers/pio/pio.c **** 	} else {
 1859              		.loc 1 330 0
 1860 011e 1A65     		str	r2, [r3, #80]
 1861              	.L177:
 336:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_SODR = ul_mask;
 1862              		.loc 1 336 0
ARM GAS  /tmp/ccqzbxJl.s 			page 55


 1863 0120 B4F1605F 		cmp	r4, #939524096
 1864 0124 12D0     		beq	.L198
 339:../asf/sam/drivers/pio/pio.c **** 	}
 1865              		.loc 1 339 0
 1866 0126 5A63     		str	r2, [r3, #52]
 1867              	.L179:
 343:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 1868              		.loc 1 343 0
 1869 0128 1A61     		str	r2, [r3, #16]
 1870              	.LBE220:
 1871              	.LBE219:
 819:../asf/sam/drivers/pio/pio.c **** }
 1872              		.loc 1 819 0
 1873 012a 0120     		movs	r0, #1
 1874              	.LBB232:
 1875              	.LBB229:
 344:../asf/sam/drivers/pio/pio.c **** }
 1876              		.loc 1 344 0
 1877 012c 1A60     		str	r2, [r3]
 1878              	.LBE229:
 1879              	.LBE232:
 820:../asf/sam/drivers/pio/pio.c **** 
 1880              		.loc 1 820 0
 1881 012e 70BC     		pop	{r4, r5, r6}
 1882              		.cfi_remember_state
 1883              		.cfi_restore 4
 1884              		.cfi_restore 5
 1885              		.cfi_restore 6
 1886              		.cfi_def_cfa_offset 0
 1887              	.LVL154:
 1888 0130 7047     		bx	lr
 1889              	.LVL155:
 1890              	.L174:
 1891              		.cfi_restore_state
 1892              	.LBB233:
 1893              	.LBB230:
 1894              	.LBB228:
 1895              	.LBB224:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 1896              		.loc 1 86 0
 1897 0132 1A66     		str	r2, [r3, #96]
 1898 0134 F2E7     		b	.L175
 1899              	.LVL156:
 1900              	.L170:
 1901              	.LBE224:
 1902              	.LBE228:
 1903              	.LBE230:
 1904              	.LBE233:
 1905              	.LBB234:
 1906              	.LBB186:
 277:../asf/sam/drivers/pio/pio.c **** 	}
 1907              		.loc 1 277 0
 1908 0136 5A62     		str	r2, [r3, #36]
 1909 0138 90E7     		b	.L171
 1910              	.LVL157:
 1911              	.L168:
 1912              	.LBB183:
ARM GAS  /tmp/ccqzbxJl.s 			page 56


 1913              	.LBB179:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 1914              		.loc 1 86 0
 1915 013a 1A66     		str	r2, [r3, #96]
 1916 013c 8AE7     		b	.L169
 1917              	.LVL158:
 1918              	.L172:
 1919              	.LBE179:
 1920              	.LBE183:
 285:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_IFSCER = ul_mask;
 1921              		.loc 1 285 0
 1922 013e 0807     		lsls	r0, r1, #28
 1923 0140 90D5     		bpl	.L173
 286:../asf/sam/drivers/pio/pio.c **** 		}
 1924              		.loc 1 286 0
 1925 0142 C3F88420 		str	r2, [r3, #132]
 1926 0146 8DE7     		b	.L173
 1927              	.LVL159:
 1928              	.L176:
 1929              	.LBE186:
 1930              	.LBE234:
 1931              	.LBB235:
 1932              	.LBB231:
 332:../asf/sam/drivers/pio/pio.c **** 	}
 1933              		.loc 1 332 0
 1934 0148 5A65     		str	r2, [r3, #84]
 1935 014a E9E7     		b	.L177
 1936              	.L198:
 337:../asf/sam/drivers/pio/pio.c **** 	} else {
 1937              		.loc 1 337 0
 1938 014c 1A63     		str	r2, [r3, #48]
 1939 014e EBE7     		b	.L179
 1940              	.L200:
 1941              		.align	2
 1942              	.L199:
 1943 0150 07072000 		.word	2098951
 1944              	.LBE231:
 1945              	.LBE235:
 1946              		.cfi_endproc
 1947              	.LFE173:
 1948              		.size	pio_configure_pin, .-pio_configure_pin
 1949              		.section	.text.pio_set_pin_group_high,"ax",%progbits
 1950              		.align	1
 1951              		.p2align 2,,3
 1952              		.global	pio_set_pin_group_high
 1953              		.syntax unified
 1954              		.thumb
 1955              		.thumb_func
 1956              		.fpu fpv5-d16
 1957              		.type	pio_set_pin_group_high, %function
 1958              	pio_set_pin_group_high:
 1959              	.LFB174:
 829:../asf/sam/drivers/pio/pio.c **** 	/* Value to be driven on the I/O line: 1. */
 1960              		.loc 1 829 0
 1961              		.cfi_startproc
 1962              		@ args = 0, pretend = 0, frame = 0
 1963              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccqzbxJl.s 			page 57


 1964              		@ link register save eliminated.
 1965              	.LVL160:
 831:../asf/sam/drivers/pio/pio.c **** }
 1966              		.loc 1 831 0
 1967 0000 0163     		str	r1, [r0, #48]
 1968 0002 7047     		bx	lr
 1969              		.cfi_endproc
 1970              	.LFE174:
 1971              		.size	pio_set_pin_group_high, .-pio_set_pin_group_high
 1972              		.section	.text.pio_set_pin_group_low,"ax",%progbits
 1973              		.align	1
 1974              		.p2align 2,,3
 1975              		.global	pio_set_pin_group_low
 1976              		.syntax unified
 1977              		.thumb
 1978              		.thumb_func
 1979              		.fpu fpv5-d16
 1980              		.type	pio_set_pin_group_low, %function
 1981              	pio_set_pin_group_low:
 1982              	.LFB175:
 841:../asf/sam/drivers/pio/pio.c **** 	/* Value to be driven on the I/O line: 0. */
 1983              		.loc 1 841 0
 1984              		.cfi_startproc
 1985              		@ args = 0, pretend = 0, frame = 0
 1986              		@ frame_needed = 0, uses_anonymous_args = 0
 1987              		@ link register save eliminated.
 1988              	.LVL161:
 843:../asf/sam/drivers/pio/pio.c **** }
 1989              		.loc 1 843 0
 1990 0000 4163     		str	r1, [r0, #52]
 1991 0002 7047     		bx	lr
 1992              		.cfi_endproc
 1993              	.LFE175:
 1994              		.size	pio_set_pin_group_low, .-pio_set_pin_group_low
 1995              		.section	.text.pio_toggle_pin_group,"ax",%progbits
 1996              		.align	1
 1997              		.p2align 2,,3
 1998              		.global	pio_toggle_pin_group
 1999              		.syntax unified
 2000              		.thumb
 2001              		.thumb_func
 2002              		.fpu fpv5-d16
 2003              		.type	pio_toggle_pin_group, %function
 2004              	pio_toggle_pin_group:
 2005              	.LFB176:
 853:../asf/sam/drivers/pio/pio.c **** 	if (p_pio->PIO_ODSR & ul_mask) {
 2006              		.loc 1 853 0
 2007              		.cfi_startproc
 2008              		@ args = 0, pretend = 0, frame = 0
 2009              		@ frame_needed = 0, uses_anonymous_args = 0
 2010              		@ link register save eliminated.
 2011              	.LVL162:
 854:../asf/sam/drivers/pio/pio.c **** 		/* Value to be driven on the I/O line: 0. */
 2012              		.loc 1 854 0
 2013 0000 836B     		ldr	r3, [r0, #56]
 2014 0002 0B42     		tst	r3, r1
 2015 0004 01D1     		bne	.L206
ARM GAS  /tmp/ccqzbxJl.s 			page 58


 859:../asf/sam/drivers/pio/pio.c **** 	}
 2016              		.loc 1 859 0
 2017 0006 0163     		str	r1, [r0, #48]
 2018 0008 7047     		bx	lr
 2019              	.L206:
 856:../asf/sam/drivers/pio/pio.c **** 	} else {
 2020              		.loc 1 856 0
 2021 000a 4163     		str	r1, [r0, #52]
 2022 000c 7047     		bx	lr
 2023              		.cfi_endproc
 2024              	.LFE176:
 2025              		.size	pio_toggle_pin_group, .-pio_toggle_pin_group
 2026 000e 00BF     		.section	.text.pio_configure_pin_group,"ax",%progbits
 2027              		.align	1
 2028              		.p2align 2,,3
 2029              		.global	pio_configure_pin_group
 2030              		.syntax unified
 2031              		.thumb
 2032              		.thumb_func
 2033              		.fpu fpv5-d16
 2034              		.type	pio_configure_pin_group, %function
 2035              	pio_configure_pin_group:
 2036              	.LFB177:
 875:../asf/sam/drivers/pio/pio.c **** 	/* Configure pins */
 2037              		.loc 1 875 0
 2038              		.cfi_startproc
 2039              		@ args = 0, pretend = 0, frame = 0
 2040              		@ frame_needed = 0, uses_anonymous_args = 0
 2041              		@ link register save eliminated.
 2042              	.LVL163:
 2043 0000 0346     		mov	r3, r0
 877:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_A:
 2044              		.loc 1 877 0
 2045 0002 02F0F040 		and	r0, r2, #2013265920
 2046              	.LVL164:
 2047 0006 B0F1005F 		cmp	r0, #536870912
 2048 000a 5AD0     		beq	.L209
 875:../asf/sam/drivers/pio/pio.c **** 	/* Configure pins */
 2049              		.loc 1 875 0
 2050 000c 30B4     		push	{r4, r5}
 2051              		.cfi_def_cfa_offset 8
 2052              		.cfi_offset 4, -8
 2053              		.cfi_offset 5, -4
 877:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_A:
 2054              		.loc 1 877 0
 2055 000e 0BD8     		bhi	.L210
 2056 0010 B0F1805F 		cmp	r0, #268435456
 2057 0014 22D0     		beq	.L211
 2058 0016 B0F1C05F 		cmp	r0, #402653184
 2059 001a 44D0     		beq	.L212
 2060 001c B0F1006F 		cmp	r0, #134217728
 2061 0020 2DD0     		beq	.L249
 2062              	.L232:
 911:../asf/sam/drivers/pio/pio.c **** 	}
 2063              		.loc 1 911 0
 2064 0022 0020     		movs	r0, #0
 915:../asf/sam/drivers/pio/pio.c **** 
ARM GAS  /tmp/ccqzbxJl.s 			page 59


 2065              		.loc 1 915 0
 2066 0024 30BC     		pop	{r4, r5}
 2067              		.cfi_remember_state
 2068              		.cfi_restore 4
 2069              		.cfi_restore 5
 2070              		.cfi_def_cfa_offset 0
 2071 0026 7047     		bx	lr
 2072              	.L210:
 2073              		.cfi_restore_state
 877:../asf/sam/drivers/pio/pio.c **** 	case PIO_TYPE_PIO_PERIPH_A:
 2074              		.loc 1 877 0
 2075 0028 B0F1405F 		cmp	r0, #805306368
 2076 002c 58D0     		beq	.L214
 2077 002e B0F1605F 		cmp	r0, #939524096
 2078 0032 55D0     		beq	.L214
 2079 0034 B0F1205F 		cmp	r0, #671088640
 2080 0038 F3D1     		bne	.L232
 2081              	.LVL165:
 2082              	.LBB236:
 2083              	.LBB237:
 2084              	.LBB238:
 2085              	.LBB239:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2086              		.loc 1 83 0
 2087 003a D507     		lsls	r5, r2, #31
 2088              	.LBE239:
 2089              	.LBE238:
 2090              	.LBB242:
 2091              	.LBB243:
 601:../asf/sam/drivers/pio/pio.c **** }
 2092              		.loc 1 601 0
 2093 003c 5964     		str	r1, [r3, #68]
 2094              	.LVL166:
 2095              	.LBE243:
 2096              	.LBE242:
 2097              	.LBB244:
 2098              	.LBB240:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2099              		.loc 1 83 0
 2100 003e 68D5     		bpl	.L220
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 2101              		.loc 1 84 0
 2102 0040 5966     		str	r1, [r3, #100]
 2103              	.L221:
 2104              	.LVL167:
 2105              	.LBE240:
 2106              	.LBE244:
 274:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFER = ul_mask;
 2107              		.loc 1 274 0
 2108 0042 12F00A0F 		tst	r2, #10
 2109 0046 62D0     		beq	.L222
 275:../asf/sam/drivers/pio/pio.c **** 	} else {
 2110              		.loc 1 275 0
 2111 0048 1962     		str	r1, [r3, #32]
 2112              	.L223:
 282:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_IFSCDR = ul_mask;
 2113              		.loc 1 282 0
ARM GAS  /tmp/ccqzbxJl.s 			page 60


 2114 004a 9407     		lsls	r4, r2, #30
 2115 004c 63D5     		bpl	.L224
 283:../asf/sam/drivers/pio/pio.c **** 	} else {
 2116              		.loc 1 283 0
 2117 004e C3F88010 		str	r1, [r3, #128]
 2118              	.L225:
 303:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 2119              		.loc 1 303 0
 2120 0052 5961     		str	r1, [r3, #20]
 2121              	.LBE237:
 2122              	.LBE236:
 914:../asf/sam/drivers/pio/pio.c **** }
 2123              		.loc 1 914 0
 2124 0054 0120     		movs	r0, #1
 2125              	.LBB248:
 2126              	.LBB246:
 304:../asf/sam/drivers/pio/pio.c **** }
 2127              		.loc 1 304 0
 2128 0056 1960     		str	r1, [r3]
 2129              	.LBE246:
 2130              	.LBE248:
 915:../asf/sam/drivers/pio/pio.c **** 
 2131              		.loc 1 915 0
 2132 0058 30BC     		pop	{r4, r5}
 2133              		.cfi_remember_state
 2134              		.cfi_restore 4
 2135              		.cfi_restore 5
 2136              		.cfi_def_cfa_offset 0
 2137 005a 7047     		bx	lr
 2138              	.LVL168:
 2139              	.L211:
 2140              		.cfi_restore_state
 2141              	.LBB249:
 2142              	.LBB250:
 190:../asf/sam/drivers/pio/pio.c **** 
 2143              		.loc 1 190 0
 2144 005c 5964     		str	r1, [r3, #68]
 202:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] = (ul_mask | ul_sr);
 2145              		.loc 1 202 0
 2146 005e 186F     		ldr	r0, [r3, #112]
 2147              	.LVL169:
 203:../asf/sam/drivers/pio/pio.c **** 
 2148              		.loc 1 203 0
 2149 0060 0843     		orrs	r0, r0, r1
 2150              	.LVL170:
 2151 0062 1867     		str	r0, [r3, #112]
 205:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] &= (~ul_mask & ul_sr);
 2152              		.loc 1 205 0
 2153 0064 586F     		ldr	r0, [r3, #116]
 2154              	.LVL171:
 206:../asf/sam/drivers/pio/pio.c **** 		break;
 2155              		.loc 1 206 0
 2156 0066 5C6F     		ldr	r4, [r3, #116]
 2157 0068 2040     		ands	r0, r0, r4
 2158              	.LVL172:
 2159              	.LBE250:
 2160              	.LBE249:
ARM GAS  /tmp/ccqzbxJl.s 			page 61


 2161              	.LBB252:
 2162              	.LBB253:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2163              		.loc 1 83 0
 2164 006a D407     		lsls	r4, r2, #31
 2165              	.LBE253:
 2166              	.LBE252:
 2167              	.LBB255:
 2168              	.LBB251:
 206:../asf/sam/drivers/pio/pio.c **** 		break;
 2169              		.loc 1 206 0
 2170 006c 20EA0100 		bic	r0, r0, r1
 2171 0070 5867     		str	r0, [r3, #116]
 255:../asf/sam/drivers/pio/pio.c **** }
 2172              		.loc 1 255 0
 2173 0072 5960     		str	r1, [r3, #4]
 2174              	.LVL173:
 2175              	.LBE251:
 2176              	.LBE255:
 2177              	.LBB256:
 2178              	.LBB254:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2179              		.loc 1 83 0
 2180 0074 13D5     		bpl	.L218
 2181              	.LVL174:
 2182              	.L247:
 2183              	.LBE254:
 2184              	.LBE256:
 914:../asf/sam/drivers/pio/pio.c **** }
 2185              		.loc 1 914 0
 2186 0076 0120     		movs	r0, #1
 2187              	.LBB257:
 2188              	.LBB258:
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 2189              		.loc 1 84 0
 2190 0078 5966     		str	r1, [r3, #100]
 2191              	.LBE258:
 2192              	.LBE257:
 915:../asf/sam/drivers/pio/pio.c **** 
 2193              		.loc 1 915 0
 2194 007a 30BC     		pop	{r4, r5}
 2195              		.cfi_remember_state
 2196              		.cfi_restore 5
 2197              		.cfi_restore 4
 2198              		.cfi_def_cfa_offset 0
 2199 007c 7047     		bx	lr
 2200              	.L249:
 2201              		.cfi_restore_state
 2202              	.LVL175:
 2203              	.LBB262:
 2204              	.LBB263:
 190:../asf/sam/drivers/pio/pio.c **** 
 2205              		.loc 1 190 0
 2206 007e 5964     		str	r1, [r3, #68]
 196:../asf/sam/drivers/pio/pio.c **** 
 2207              		.loc 1 196 0
 2208 0080 C843     		mvns	r0, r1
ARM GAS  /tmp/ccqzbxJl.s 			page 62


 195:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] &= (~ul_mask & ul_sr);
 2209              		.loc 1 195 0
 2210 0082 1C6F     		ldr	r4, [r3, #112]
 2211              	.LVL176:
 196:../asf/sam/drivers/pio/pio.c **** 
 2212              		.loc 1 196 0
 2213 0084 1D6F     		ldr	r5, [r3, #112]
 2214 0086 2C40     		ands	r4, r4, r5
 2215              	.LVL177:
 2216 0088 0546     		mov	r5, r0
 2217 008a 0440     		ands	r4, r4, r0
 2218 008c 1C67     		str	r4, [r3, #112]
 198:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] &= (~ul_mask & ul_sr);
 2219              		.loc 1 198 0
 2220 008e 586F     		ldr	r0, [r3, #116]
 2221              	.LVL178:
 199:../asf/sam/drivers/pio/pio.c **** 		break;
 2222              		.loc 1 199 0
 2223 0090 5C6F     		ldr	r4, [r3, #116]
 2224 0092 2040     		ands	r0, r0, r4
 2225              	.LVL179:
 2226 0094 2840     		ands	r0, r0, r5
 2227              	.LBE263:
 2228              	.LBE262:
 2229              	.LBB265:
 2230              	.LBB266:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2231              		.loc 1 83 0
 2232 0096 D507     		lsls	r5, r2, #31
 2233              	.LBE266:
 2234              	.LBE265:
 2235              	.LBB268:
 2236              	.LBB264:
 199:../asf/sam/drivers/pio/pio.c **** 		break;
 2237              		.loc 1 199 0
 2238 0098 5867     		str	r0, [r3, #116]
 255:../asf/sam/drivers/pio/pio.c **** }
 2239              		.loc 1 255 0
 2240 009a 5960     		str	r1, [r3, #4]
 2241              	.LVL180:
 2242              	.LBE264:
 2243              	.LBE268:
 2244              	.LBB269:
 2245              	.LBB267:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2246              		.loc 1 83 0
 2247 009c EBD4     		bmi	.L247
 2248              	.LVL181:
 2249              	.L218:
 2250              	.LBE267:
 2251              	.LBE269:
 914:../asf/sam/drivers/pio/pio.c **** }
 2252              		.loc 1 914 0
 2253 009e 0120     		movs	r0, #1
 2254              	.LBB270:
 2255              	.LBB259:
  86:../asf/sam/drivers/pio/pio.c **** 	}
ARM GAS  /tmp/ccqzbxJl.s 			page 63


 2256              		.loc 1 86 0
 2257 00a0 1966     		str	r1, [r3, #96]
 2258              	.LBE259:
 2259              	.LBE270:
 915:../asf/sam/drivers/pio/pio.c **** 
 2260              		.loc 1 915 0
 2261 00a2 30BC     		pop	{r4, r5}
 2262              		.cfi_remember_state
 2263              		.cfi_restore 4
 2264              		.cfi_restore 5
 2265              		.cfi_def_cfa_offset 0
 2266 00a4 7047     		bx	lr
 2267              	.L212:
 2268              		.cfi_restore_state
 2269              	.LVL182:
 2270              	.LBB271:
 2271              	.LBB272:
 190:../asf/sam/drivers/pio/pio.c **** 
 2272              		.loc 1 190 0
 2273 00a6 5964     		str	r1, [r3, #68]
 210:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] &= (~ul_mask & ul_sr);
 2274              		.loc 1 210 0
 2275 00a8 186F     		ldr	r0, [r3, #112]
 2276              	.LVL183:
 211:../asf/sam/drivers/pio/pio.c **** 
 2277              		.loc 1 211 0
 2278 00aa 1C6F     		ldr	r4, [r3, #112]
 2279 00ac 2040     		ands	r0, r0, r4
 2280              	.LVL184:
 2281 00ae 20EA0100 		bic	r0, r0, r1
 2282 00b2 1867     		str	r0, [r3, #112]
 213:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] = (ul_mask | ul_sr);
 2283              		.loc 1 213 0
 2284 00b4 586F     		ldr	r0, [r3, #116]
 2285              	.LVL185:
 214:../asf/sam/drivers/pio/pio.c **** 		break;
 2286              		.loc 1 214 0
 2287 00b6 0843     		orrs	r0, r0, r1
 2288              	.LVL186:
 2289 00b8 5867     		str	r0, [r3, #116]
 2290              	.LBE272:
 2291              	.LBE271:
 2292              	.LBB274:
 2293              	.LBB260:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2294              		.loc 1 83 0
 2295 00ba D007     		lsls	r0, r2, #31
 2296              	.LBE260:
 2297              	.LBE274:
 2298              	.LBB275:
 2299              	.LBB273:
 255:../asf/sam/drivers/pio/pio.c **** }
 2300              		.loc 1 255 0
 2301 00bc 5960     		str	r1, [r3, #4]
 2302              	.LVL187:
 2303              	.LBE273:
 2304              	.LBE275:
ARM GAS  /tmp/ccqzbxJl.s 			page 64


 2305              	.LBB276:
 2306              	.LBB261:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2307              		.loc 1 83 0
 2308 00be EED5     		bpl	.L218
 2309 00c0 D9E7     		b	.L247
 2310              	.LVL188:
 2311              	.L209:
 2312              		.cfi_def_cfa_offset 0
 2313              		.cfi_restore 4
 2314              		.cfi_restore 5
 2315              	.LBE261:
 2316              	.LBE276:
 2317              	.LBB277:
 2318              	.LBB278:
 190:../asf/sam/drivers/pio/pio.c **** 
 2319              		.loc 1 190 0
 2320 00c2 5964     		str	r1, [r3, #68]
 2321              	.LBE278:
 2322              	.LBE277:
 2323              	.LBB280:
 2324              	.LBB281:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2325              		.loc 1 83 0
 2326 00c4 D207     		lsls	r2, r2, #31
 2327              	.LVL189:
 2328              	.LBE281:
 2329              	.LBE280:
 2330              	.LBB284:
 2331              	.LBB279:
 217:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[0] = (ul_mask | ul_sr);
 2332              		.loc 1 217 0
 2333 00c6 186F     		ldr	r0, [r3, #112]
 2334              	.LVL190:
 218:../asf/sam/drivers/pio/pio.c **** 
 2335              		.loc 1 218 0
 2336 00c8 40EA0100 		orr	r0, r0, r1
 2337              	.LVL191:
 2338 00cc 1867     		str	r0, [r3, #112]
 220:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_ABCDSR[1] = (ul_mask | ul_sr);
 2339              		.loc 1 220 0
 2340 00ce 586F     		ldr	r0, [r3, #116]
 2341              	.LVL192:
 221:../asf/sam/drivers/pio/pio.c **** 		break;
 2342              		.loc 1 221 0
 2343 00d0 40EA0100 		orr	r0, r0, r1
 2344              	.LVL193:
 2345 00d4 5867     		str	r0, [r3, #116]
 255:../asf/sam/drivers/pio/pio.c **** }
 2346              		.loc 1 255 0
 2347 00d6 5960     		str	r1, [r3, #4]
 2348              	.LVL194:
 2349              	.LBE279:
 2350              	.LBE284:
 2351              	.LBB285:
 2352              	.LBB282:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
ARM GAS  /tmp/ccqzbxJl.s 			page 65


 2353              		.loc 1 83 0
 2354 00d8 22D5     		bpl	.L219
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 2355              		.loc 1 84 0
 2356 00da 5966     		str	r1, [r3, #100]
 2357              	.LBE282:
 2358              	.LBE285:
 914:../asf/sam/drivers/pio/pio.c **** }
 2359              		.loc 1 914 0
 2360 00dc 0120     		movs	r0, #1
 2361 00de 7047     		bx	lr
 2362              	.LVL195:
 2363              	.L214:
 2364              		.cfi_def_cfa_offset 8
 2365              		.cfi_offset 4, -8
 2366              		.cfi_offset 5, -4
 904:../asf/sam/drivers/pio/pio.c **** 				== PIO_TYPE_PIO_OUTPUT_1) ? 1 : 0,
 2367              		.loc 1 904 0
 2368 00e0 02F06050 		and	r0, r2, #939524096
 906:../asf/sam/drivers/pio/pio.c **** 				(ul_flags & PIO_PULLUP) ? 1 : 0);
 2369              		.loc 1 906 0
 2370 00e4 02F00404 		and	r4, r2, #4
 2371              	.LVL196:
 2372              	.LBB286:
 2373              	.LBB287:
 2374              	.LBB288:
 2375              	.LBB289:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2376              		.loc 1 83 0
 2377 00e8 D207     		lsls	r2, r2, #31
 2378              	.LVL197:
 2379              	.LBE289:
 2380              	.LBE288:
 2381              	.LBB292:
 2382              	.LBB293:
 601:../asf/sam/drivers/pio/pio.c **** }
 2383              		.loc 1 601 0
 2384 00ea 5964     		str	r1, [r3, #68]
 2385              	.LBE293:
 2386              	.LBE292:
 2387              	.LBB294:
 2388              	.LBB290:
  83:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_PUER = ul_mask;
 2389              		.loc 1 83 0
 2390 00ec 0BD5     		bpl	.L226
  84:../asf/sam/drivers/pio/pio.c **** 	} else {
 2391              		.loc 1 84 0
 2392 00ee 5966     		str	r1, [r3, #100]
 2393              	.L227:
 2394              	.LVL198:
 2395              	.LBE290:
 2396              	.LBE294:
 329:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_MDER = ul_mask;
 2397              		.loc 1 329 0
 2398 00f0 5CB1     		cbz	r4, .L228
 330:../asf/sam/drivers/pio/pio.c **** 	} else {
 2399              		.loc 1 330 0
ARM GAS  /tmp/ccqzbxJl.s 			page 66


 2400 00f2 1965     		str	r1, [r3, #80]
 2401              	.L229:
 336:../asf/sam/drivers/pio/pio.c **** 		p_pio->PIO_SODR = ul_mask;
 2402              		.loc 1 336 0
 2403 00f4 B0F1605F 		cmp	r0, #939524096
 2404 00f8 15D0     		beq	.L250
 339:../asf/sam/drivers/pio/pio.c **** 	}
 2405              		.loc 1 339 0
 2406 00fa 5963     		str	r1, [r3, #52]
 2407              	.L231:
 343:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PER = ul_mask;
 2408              		.loc 1 343 0
 2409 00fc 1961     		str	r1, [r3, #16]
 2410              	.LBE287:
 2411              	.LBE286:
 914:../asf/sam/drivers/pio/pio.c **** }
 2412              		.loc 1 914 0
 2413 00fe 0120     		movs	r0, #1
 2414              	.LVL199:
 2415              	.LBB299:
 2416              	.LBB296:
 344:../asf/sam/drivers/pio/pio.c **** }
 2417              		.loc 1 344 0
 2418 0100 1960     		str	r1, [r3]
 2419              	.LBE296:
 2420              	.LBE299:
 915:../asf/sam/drivers/pio/pio.c **** 
 2421              		.loc 1 915 0
 2422 0102 30BC     		pop	{r4, r5}
 2423              		.cfi_remember_state
 2424              		.cfi_restore 4
 2425              		.cfi_restore 5
 2426              		.cfi_def_cfa_offset 0
 2427              	.LVL200:
 2428 0104 7047     		bx	lr
 2429              	.LVL201:
 2430              	.L226:
 2431              		.cfi_restore_state
 2432              	.LBB300:
 2433              	.LBB297:
 2434              	.LBB295:
 2435              	.LBB291:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 2436              		.loc 1 86 0
 2437 0106 1966     		str	r1, [r3, #96]
 2438 0108 F2E7     		b	.L227
 2439              	.LVL202:
 2440              	.L228:
 2441              	.LBE291:
 2442              	.LBE295:
 332:../asf/sam/drivers/pio/pio.c **** 	}
 2443              		.loc 1 332 0
 2444 010a 5965     		str	r1, [r3, #84]
 2445 010c F2E7     		b	.L229
 2446              	.LVL203:
 2447              	.L222:
 2448              	.LBE297:
ARM GAS  /tmp/ccqzbxJl.s 			page 67


 2449              	.LBE300:
 2450              	.LBB301:
 2451              	.LBB247:
 277:../asf/sam/drivers/pio/pio.c **** 	}
 2452              		.loc 1 277 0
 2453 010e 5962     		str	r1, [r3, #36]
 2454 0110 9BE7     		b	.L223
 2455              	.LVL204:
 2456              	.L220:
 2457              	.LBB245:
 2458              	.LBB241:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 2459              		.loc 1 86 0
 2460 0112 1966     		str	r1, [r3, #96]
 2461 0114 95E7     		b	.L221
 2462              	.LVL205:
 2463              	.L224:
 2464              	.LBE241:
 2465              	.LBE245:
 285:../asf/sam/drivers/pio/pio.c **** 			p_pio->PIO_IFSCER = ul_mask;
 2466              		.loc 1 285 0
 2467 0116 1007     		lsls	r0, r2, #28
 2468 0118 9BD5     		bpl	.L225
 286:../asf/sam/drivers/pio/pio.c **** 		}
 2469              		.loc 1 286 0
 2470 011a C3F88410 		str	r1, [r3, #132]
 2471 011e 98E7     		b	.L225
 2472              	.LVL206:
 2473              	.L219:
 2474              		.cfi_def_cfa_offset 0
 2475              		.cfi_restore 4
 2476              		.cfi_restore 5
 2477              	.LBE247:
 2478              	.LBE301:
 2479              	.LBB302:
 2480              	.LBB283:
  86:../asf/sam/drivers/pio/pio.c **** 	}
 2481              		.loc 1 86 0
 2482 0120 1966     		str	r1, [r3, #96]
 2483              	.LBE283:
 2484              	.LBE302:
 914:../asf/sam/drivers/pio/pio.c **** }
 2485              		.loc 1 914 0
 2486 0122 0120     		movs	r0, #1
 2487 0124 7047     		bx	lr
 2488              	.LVL207:
 2489              	.L250:
 2490              		.cfi_def_cfa_offset 8
 2491              		.cfi_offset 4, -8
 2492              		.cfi_offset 5, -4
 2493              	.LBB303:
 2494              	.LBB298:
 337:../asf/sam/drivers/pio/pio.c **** 	} else {
 2495              		.loc 1 337 0
 2496 0126 1963     		str	r1, [r3, #48]
 2497 0128 E8E7     		b	.L231
 2498              	.LBE298:
ARM GAS  /tmp/ccqzbxJl.s 			page 68


 2499              	.LBE303:
 2500              		.cfi_endproc
 2501              	.LFE177:
 2502              		.size	pio_configure_pin_group, .-pio_configure_pin_group
 2503 012a 00BF     		.section	.text.pio_enable_pin_interrupt,"ax",%progbits
 2504              		.align	1
 2505              		.p2align 2,,3
 2506              		.global	pio_enable_pin_interrupt
 2507              		.syntax unified
 2508              		.thumb
 2509              		.thumb_func
 2510              		.fpu fpv5-d16
 2511              		.type	pio_enable_pin_interrupt, %function
 2512              	pio_enable_pin_interrupt:
 2513              	.LFB178:
 925:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 2514              		.loc 1 925 0
 2515              		.cfi_startproc
 2516              		@ args = 0, pretend = 0, frame = 0
 2517              		@ frame_needed = 0, uses_anonymous_args = 0
 2518              		@ link register save eliminated.
 2519              	.LVL208:
 2520              	.LBB304:
 2521              	.LBB305:
 2522              		.loc 1 977 0
 2523 0000 054B     		ldr	r3, .L252
 2524              	.LBE305:
 2525              	.LBE304:
 928:../asf/sam/drivers/pio/pio.c **** }
 2526              		.loc 1 928 0
 2527 0002 0122     		movs	r2, #1
 2528              	.LBB308:
 2529              	.LBB306:
 2530              		.loc 1 977 0
 2531 0004 03EB5013 		add	r3, r3, r0, lsr #5
 2532              	.LBE306:
 2533              	.LBE308:
 928:../asf/sam/drivers/pio/pio.c **** }
 2534              		.loc 1 928 0
 2535 0008 00F01F00 		and	r0, r0, #31
 2536              	.LVL209:
 2537              	.LBB309:
 2538              	.LBB307:
 2539              		.loc 1 977 0
 2540 000c 5B02     		lsls	r3, r3, #9
 2541              	.LVL210:
 2542              	.LBE307:
 2543              	.LBE309:
 928:../asf/sam/drivers/pio/pio.c **** }
 2544              		.loc 1 928 0
 2545 000e 02FA00F0 		lsl	r0, r2, r0
 2546 0012 1864     		str	r0, [r3, #64]
 2547 0014 7047     		bx	lr
 2548              	.L253:
 2549 0016 00BF     		.align	2
 2550              	.L252:
 2551 0018 07072000 		.word	2098951
ARM GAS  /tmp/ccqzbxJl.s 			page 69


 2552              		.cfi_endproc
 2553              	.LFE178:
 2554              		.size	pio_enable_pin_interrupt, .-pio_enable_pin_interrupt
 2555              		.section	.text.pio_disable_pin_interrupt,"ax",%progbits
 2556              		.align	1
 2557              		.p2align 2,,3
 2558              		.global	pio_disable_pin_interrupt
 2559              		.syntax unified
 2560              		.thumb
 2561              		.thumb_func
 2562              		.fpu fpv5-d16
 2563              		.type	pio_disable_pin_interrupt, %function
 2564              	pio_disable_pin_interrupt:
 2565              	.LFB179:
 940:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio = pio_get_pin_group(ul_pin);
 2566              		.loc 1 940 0
 2567              		.cfi_startproc
 2568              		@ args = 0, pretend = 0, frame = 0
 2569              		@ frame_needed = 0, uses_anonymous_args = 0
 2570              		@ link register save eliminated.
 2571              	.LVL211:
 2572              	.LBB310:
 2573              	.LBB311:
 2574              		.loc 1 977 0
 2575 0000 054B     		ldr	r3, .L255
 2576              	.LBE311:
 2577              	.LBE310:
 943:../asf/sam/drivers/pio/pio.c **** }
 2578              		.loc 1 943 0
 2579 0002 0122     		movs	r2, #1
 2580              	.LBB314:
 2581              	.LBB312:
 2582              		.loc 1 977 0
 2583 0004 03EB5013 		add	r3, r3, r0, lsr #5
 2584              	.LBE312:
 2585              	.LBE314:
 943:../asf/sam/drivers/pio/pio.c **** }
 2586              		.loc 1 943 0
 2587 0008 00F01F00 		and	r0, r0, #31
 2588              	.LVL212:
 2589              	.LBB315:
 2590              	.LBB313:
 2591              		.loc 1 977 0
 2592 000c 5B02     		lsls	r3, r3, #9
 2593              	.LVL213:
 2594              	.LBE313:
 2595              	.LBE315:
 943:../asf/sam/drivers/pio/pio.c **** }
 2596              		.loc 1 943 0
 2597 000e 02FA00F0 		lsl	r0, r2, r0
 2598 0012 5864     		str	r0, [r3, #68]
 2599 0014 7047     		bx	lr
 2600              	.L256:
 2601 0016 00BF     		.align	2
 2602              	.L255:
 2603 0018 07072000 		.word	2098951
 2604              		.cfi_endproc
ARM GAS  /tmp/ccqzbxJl.s 			page 70


 2605              	.LFE179:
 2606              		.size	pio_disable_pin_interrupt, .-pio_disable_pin_interrupt
 2607              		.section	.text.pio_get_pin_group,"ax",%progbits
 2608              		.align	1
 2609              		.p2align 2,,3
 2610              		.global	pio_get_pin_group
 2611              		.syntax unified
 2612              		.thumb
 2613              		.thumb_func
 2614              		.fpu fpv5-d16
 2615              		.type	pio_get_pin_group, %function
 2616              	pio_get_pin_group:
 2617              	.LFB180:
 955:../asf/sam/drivers/pio/pio.c **** 	Pio *p_pio;
 2618              		.loc 1 955 0
 2619              		.cfi_startproc
 2620              		@ args = 0, pretend = 0, frame = 0
 2621              		@ frame_needed = 0, uses_anonymous_args = 0
 2622              		@ link register save eliminated.
 2623              	.LVL214:
 2624              		.loc 1 977 0
 2625 0000 024B     		ldr	r3, .L258
 2626 0002 03EB5010 		add	r0, r3, r0, lsr #5
 2627              	.LVL215:
 978:../asf/sam/drivers/pio/pio.c **** #endif
 979:../asf/sam/drivers/pio/pio.c **** 	return p_pio;
 980:../asf/sam/drivers/pio/pio.c **** }
 2628              		.loc 1 980 0
 2629 0006 4002     		lsls	r0, r0, #9
 2630              	.LVL216:
 2631 0008 7047     		bx	lr
 2632              	.L259:
 2633 000a 00BF     		.align	2
 2634              	.L258:
 2635 000c 07072000 		.word	2098951
 2636              		.cfi_endproc
 2637              	.LFE180:
 2638              		.size	pio_get_pin_group, .-pio_get_pin_group
 2639              		.section	.text.pio_get_pin_group_id,"ax",%progbits
 2640              		.align	1
 2641              		.p2align 2,,3
 2642              		.global	pio_get_pin_group_id
 2643              		.syntax unified
 2644              		.thumb
 2645              		.thumb_func
 2646              		.fpu fpv5-d16
 2647              		.type	pio_get_pin_group_id, %function
 2648              	pio_get_pin_group_id:
 2649              	.LFB181:
 981:../asf/sam/drivers/pio/pio.c **** 
 982:../asf/sam/drivers/pio/pio.c **** /**
 983:../asf/sam/drivers/pio/pio.c ****  * \brief Return GPIO port peripheral ID for a GPIO pin.
 984:../asf/sam/drivers/pio/pio.c ****  *
 985:../asf/sam/drivers/pio/pio.c ****  * \param ul_pin The pin index.
 986:../asf/sam/drivers/pio/pio.c ****  *
 987:../asf/sam/drivers/pio/pio.c ****  * \return GPIO port peripheral ID.
 988:../asf/sam/drivers/pio/pio.c ****  */
ARM GAS  /tmp/ccqzbxJl.s 			page 71


 989:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get_pin_group_id(uint32_t ul_pin)
 990:../asf/sam/drivers/pio/pio.c **** {
 2650              		.loc 1 990 0
 2651              		.cfi_startproc
 2652              		@ args = 0, pretend = 0, frame = 0
 2653              		@ frame_needed = 0, uses_anonymous_args = 0
 2654              		@ link register save eliminated.
 2655              	.LVL217:
 991:../asf/sam/drivers/pio/pio.c **** 	uint32_t ul_id;
 992:../asf/sam/drivers/pio/pio.c **** 
 993:../asf/sam/drivers/pio/pio.c **** #if (SAM4C || SAM4CP)
 994:../asf/sam/drivers/pio/pio.c **** #  ifdef ID_PIOD
 995:../asf/sam/drivers/pio/pio.c **** 	if (ul_pin > PIO_PC9_IDX) {
 996:../asf/sam/drivers/pio/pio.c **** 		ul_id = ID_PIOD;
 997:../asf/sam/drivers/pio/pio.c **** 	} else if (ul_pin > PIO_PB31_IDX) {
 998:../asf/sam/drivers/pio/pio.c **** #  else
 999:../asf/sam/drivers/pio/pio.c **** 	if (ul_pin > PIO_PB31_IDX) {
1000:../asf/sam/drivers/pio/pio.c **** #  endif
1001:../asf/sam/drivers/pio/pio.c **** 		ul_id = ID_PIOC;
1002:../asf/sam/drivers/pio/pio.c **** 	} else {
1003:../asf/sam/drivers/pio/pio.c **** 		ul_id = ID_PIOA + (ul_pin >> 5);
1004:../asf/sam/drivers/pio/pio.c **** 	}
1005:../asf/sam/drivers/pio/pio.c **** #elif (SAM4CM)
1006:../asf/sam/drivers/pio/pio.c **** 	if (ul_pin > PIO_PB21_IDX) {
1007:../asf/sam/drivers/pio/pio.c **** 		ul_id = ID_PIOC;
1008:../asf/sam/drivers/pio/pio.c **** 	} else {
1009:../asf/sam/drivers/pio/pio.c **** 		ul_id = ID_PIOA + (ul_pin >> 5);
1010:../asf/sam/drivers/pio/pio.c **** 	}
1011:../asf/sam/drivers/pio/pio.c **** #elif (SAMV70 || SAMV71 || SAME70 || SAMS70)
1012:../asf/sam/drivers/pio/pio.c **** 	ul_id = ID_PIOA + (ul_pin >> 5);
1013:../asf/sam/drivers/pio/pio.c **** 
1014:../asf/sam/drivers/pio/pio.c **** 	#ifdef ID_PIOD 
1015:../asf/sam/drivers/pio/pio.c **** 	if (ul_pin >= PIO_PD0_IDX) ul_id = ID_PIOD; 
 2656              		.loc 1 1015 0
 2657 0000 5F28     		cmp	r0, #95
 2658 0002 02D8     		bhi	.L261
1012:../asf/sam/drivers/pio/pio.c **** 
 2659              		.loc 1 1012 0
 2660 0004 4009     		lsrs	r0, r0, #5
 2661              	.LVL218:
 2662 0006 0A30     		adds	r0, r0, #10
 2663              	.LVL219:
 2664 0008 7047     		bx	lr
 2665              	.LVL220:
 2666              	.L261:
1016:../asf/sam/drivers/pio/pio.c **** 	#endif
1017:../asf/sam/drivers/pio/pio.c **** 	
1018:../asf/sam/drivers/pio/pio.c **** 	#ifdef ID_PIOE 
1019:../asf/sam/drivers/pio/pio.c **** 	if (ul_pin >= PIO_PE0_IDX) ul_id = ID_PIOE; 
 2667              		.loc 1 1019 0
 2668 000a 8028     		cmp	r0, #128
 2669 000c 34BF     		ite	cc
 2670 000e 1020     		movcc	r0, #16
 2671              	.LVL221:
 2672 0010 1120     		movcs	r0, #17
1020:../asf/sam/drivers/pio/pio.c **** 	#endif 
1021:../asf/sam/drivers/pio/pio.c **** #else
ARM GAS  /tmp/ccqzbxJl.s 			page 72


1022:../asf/sam/drivers/pio/pio.c **** 	ul_id = ID_PIOA + (ul_pin >> 5);
1023:../asf/sam/drivers/pio/pio.c **** #endif
1024:../asf/sam/drivers/pio/pio.c **** 	return ul_id;
1025:../asf/sam/drivers/pio/pio.c **** }
 2673              		.loc 1 1025 0
 2674 0012 7047     		bx	lr
 2675              		.cfi_endproc
 2676              	.LFE181:
 2677              		.size	pio_get_pin_group_id, .-pio_get_pin_group_id
 2678              		.section	.text.pio_get_pin_group_mask,"ax",%progbits
 2679              		.align	1
 2680              		.p2align 2,,3
 2681              		.global	pio_get_pin_group_mask
 2682              		.syntax unified
 2683              		.thumb
 2684              		.thumb_func
 2685              		.fpu fpv5-d16
 2686              		.type	pio_get_pin_group_mask, %function
 2687              	pio_get_pin_group_mask:
 2688              	.LFB182:
1026:../asf/sam/drivers/pio/pio.c **** 
1027:../asf/sam/drivers/pio/pio.c **** 
1028:../asf/sam/drivers/pio/pio.c **** /**
1029:../asf/sam/drivers/pio/pio.c ****  * \brief Return GPIO port pin mask for a GPIO pin.
1030:../asf/sam/drivers/pio/pio.c ****  *
1031:../asf/sam/drivers/pio/pio.c ****  * \param ul_pin The pin index.
1032:../asf/sam/drivers/pio/pio.c ****  *
1033:../asf/sam/drivers/pio/pio.c ****  * \return GPIO port pin mask.
1034:../asf/sam/drivers/pio/pio.c ****  */
1035:../asf/sam/drivers/pio/pio.c **** uint32_t pio_get_pin_group_mask(uint32_t ul_pin)
1036:../asf/sam/drivers/pio/pio.c **** {
 2689              		.loc 1 1036 0
 2690              		.cfi_startproc
 2691              		@ args = 0, pretend = 0, frame = 0
 2692              		@ frame_needed = 0, uses_anonymous_args = 0
 2693              		@ link register save eliminated.
 2694              	.LVL222:
1037:../asf/sam/drivers/pio/pio.c **** 	uint32_t ul_mask = 1 << (ul_pin & 0x1F);
 2695              		.loc 1 1037 0
 2696 0000 0123     		movs	r3, #1
 2697 0002 00F01F00 		and	r0, r0, #31
 2698              	.LVL223:
1038:../asf/sam/drivers/pio/pio.c **** 	return ul_mask;
1039:../asf/sam/drivers/pio/pio.c **** }
 2699              		.loc 1 1039 0
 2700 0006 03FA00F0 		lsl	r0, r3, r0
 2701              	.LVL224:
 2702 000a 7047     		bx	lr
 2703              		.cfi_endproc
 2704              	.LFE182:
 2705              		.size	pio_get_pin_group_mask, .-pio_get_pin_group_mask
 2706              		.section	.text.pio_capture_set_mode,"ax",%progbits
 2707              		.align	1
 2708              		.p2align 2,,3
 2709              		.global	pio_capture_set_mode
 2710              		.syntax unified
 2711              		.thumb
ARM GAS  /tmp/ccqzbxJl.s 			page 73


 2712              		.thumb_func
 2713              		.fpu fpv5-d16
 2714              		.type	pio_capture_set_mode, %function
 2715              	pio_capture_set_mode:
 2716              	.LFB183:
1040:../asf/sam/drivers/pio/pio.c **** 
1041:../asf/sam/drivers/pio/pio.c **** #if (SAM3S || SAM4S || SAM4E || SAMV71 || SAMV70 || SAME70 || SAMS70)
1042:../asf/sam/drivers/pio/pio.c **** /* Capture mode enable flag */
1043:../asf/sam/drivers/pio/pio.c **** uint32_t pio_capture_enable_flag;
1044:../asf/sam/drivers/pio/pio.c **** 
1045:../asf/sam/drivers/pio/pio.c **** /**
1046:../asf/sam/drivers/pio/pio.c ****  * \brief Configure PIO capture mode.
1047:../asf/sam/drivers/pio/pio.c ****  * \note PIO capture mode will be disabled automatically.
1048:../asf/sam/drivers/pio/pio.c ****  *
1049:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
1050:../asf/sam/drivers/pio/pio.c ****  * \param ul_mode Bitmask of one or more modes.
1051:../asf/sam/drivers/pio/pio.c ****  */
1052:../asf/sam/drivers/pio/pio.c **** void pio_capture_set_mode(Pio *p_pio, uint32_t ul_mode)
1053:../asf/sam/drivers/pio/pio.c **** {
 2717              		.loc 1 1053 0
 2718              		.cfi_startproc
 2719              		@ args = 0, pretend = 0, frame = 0
 2720              		@ frame_needed = 0, uses_anonymous_args = 0
 2721              		@ link register save eliminated.
 2722              	.LVL225:
1054:../asf/sam/drivers/pio/pio.c **** 	ul_mode &= (~PIO_PCMR_PCEN); /* Disable PIO capture mode */
 2723              		.loc 1 1054 0
 2724 0000 21F00101 		bic	r1, r1, #1
 2725              	.LVL226:
1055:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCMR = ul_mode;
 2726              		.loc 1 1055 0
 2727 0004 C0F85011 		str	r1, [r0, #336]
 2728 0008 7047     		bx	lr
 2729              		.cfi_endproc
 2730              	.LFE183:
 2731              		.size	pio_capture_set_mode, .-pio_capture_set_mode
 2732 000a 00BF     		.section	.text.pio_capture_enable,"ax",%progbits
 2733              		.align	1
 2734              		.p2align 2,,3
 2735              		.global	pio_capture_enable
 2736              		.syntax unified
 2737              		.thumb
 2738              		.thumb_func
 2739              		.fpu fpv5-d16
 2740              		.type	pio_capture_enable, %function
 2741              	pio_capture_enable:
 2742              	.LFB184:
1056:../asf/sam/drivers/pio/pio.c **** }
1057:../asf/sam/drivers/pio/pio.c **** 
1058:../asf/sam/drivers/pio/pio.c **** /**
1059:../asf/sam/drivers/pio/pio.c ****  * \brief Enable PIO capture mode.
1060:../asf/sam/drivers/pio/pio.c ****  *
1061:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
1062:../asf/sam/drivers/pio/pio.c ****  */
1063:../asf/sam/drivers/pio/pio.c **** void pio_capture_enable(Pio *p_pio)
1064:../asf/sam/drivers/pio/pio.c **** {
 2743              		.loc 1 1064 0
ARM GAS  /tmp/ccqzbxJl.s 			page 74


 2744              		.cfi_startproc
 2745              		@ args = 0, pretend = 0, frame = 0
 2746              		@ frame_needed = 0, uses_anonymous_args = 0
 2747              		@ link register save eliminated.
 2748              	.LVL227:
1065:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCMR |= PIO_PCMR_PCEN;
1066:../asf/sam/drivers/pio/pio.c **** 	pio_capture_enable_flag = true;
 2749              		.loc 1 1066 0
 2750 0000 0121     		movs	r1, #1
1065:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCMR |= PIO_PCMR_PCEN;
 2751              		.loc 1 1065 0
 2752 0002 D0F85031 		ldr	r3, [r0, #336]
 2753              		.loc 1 1066 0
 2754 0006 034A     		ldr	r2, .L267
1065:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCMR |= PIO_PCMR_PCEN;
 2755              		.loc 1 1065 0
 2756 0008 0B43     		orrs	r3, r3, r1
 2757              		.loc 1 1066 0
 2758 000a 1160     		str	r1, [r2]
1065:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCMR |= PIO_PCMR_PCEN;
 2759              		.loc 1 1065 0
 2760 000c C0F85031 		str	r3, [r0, #336]
 2761 0010 7047     		bx	lr
 2762              	.L268:
 2763 0012 00BF     		.align	2
 2764              	.L267:
 2765 0014 00000000 		.word	pio_capture_enable_flag
 2766              		.cfi_endproc
 2767              	.LFE184:
 2768              		.size	pio_capture_enable, .-pio_capture_enable
 2769              		.section	.text.pio_capture_disable,"ax",%progbits
 2770              		.align	1
 2771              		.p2align 2,,3
 2772              		.global	pio_capture_disable
 2773              		.syntax unified
 2774              		.thumb
 2775              		.thumb_func
 2776              		.fpu fpv5-d16
 2777              		.type	pio_capture_disable, %function
 2778              	pio_capture_disable:
 2779              	.LFB185:
1067:../asf/sam/drivers/pio/pio.c **** }
1068:../asf/sam/drivers/pio/pio.c **** 
1069:../asf/sam/drivers/pio/pio.c **** /**
1070:../asf/sam/drivers/pio/pio.c ****  * \brief Disable PIO capture mode.
1071:../asf/sam/drivers/pio/pio.c ****  *
1072:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
1073:../asf/sam/drivers/pio/pio.c ****  */
1074:../asf/sam/drivers/pio/pio.c **** void pio_capture_disable(Pio *p_pio)
1075:../asf/sam/drivers/pio/pio.c **** {
 2780              		.loc 1 1075 0
 2781              		.cfi_startproc
 2782              		@ args = 0, pretend = 0, frame = 0
 2783              		@ frame_needed = 0, uses_anonymous_args = 0
 2784              		@ link register save eliminated.
 2785              	.LVL228:
1076:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCMR &= (~PIO_PCMR_PCEN);
ARM GAS  /tmp/ccqzbxJl.s 			page 75


 2786              		.loc 1 1076 0
 2787 0000 D0F85031 		ldr	r3, [r0, #336]
1077:../asf/sam/drivers/pio/pio.c **** 	pio_capture_enable_flag = false;
 2788              		.loc 1 1077 0
 2789 0004 0021     		movs	r1, #0
 2790 0006 034A     		ldr	r2, .L270
1076:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCMR &= (~PIO_PCMR_PCEN);
 2791              		.loc 1 1076 0
 2792 0008 23F00103 		bic	r3, r3, #1
 2793              		.loc 1 1077 0
 2794 000c 1160     		str	r1, [r2]
1076:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCMR &= (~PIO_PCMR_PCEN);
 2795              		.loc 1 1076 0
 2796 000e C0F85031 		str	r3, [r0, #336]
 2797 0012 7047     		bx	lr
 2798              	.L271:
 2799              		.align	2
 2800              	.L270:
 2801 0014 00000000 		.word	pio_capture_enable_flag
 2802              		.cfi_endproc
 2803              	.LFE185:
 2804              		.size	pio_capture_disable, .-pio_capture_disable
 2805              		.section	.text.pio_capture_read,"ax",%progbits
 2806              		.align	1
 2807              		.p2align 2,,3
 2808              		.global	pio_capture_read
 2809              		.syntax unified
 2810              		.thumb
 2811              		.thumb_func
 2812              		.fpu fpv5-d16
 2813              		.type	pio_capture_read, %function
 2814              	pio_capture_read:
 2815              	.LFB186:
1078:../asf/sam/drivers/pio/pio.c **** }
1079:../asf/sam/drivers/pio/pio.c **** 
1080:../asf/sam/drivers/pio/pio.c **** /**
1081:../asf/sam/drivers/pio/pio.c ****  * \brief Read from Capture Reception Holding Register.
1082:../asf/sam/drivers/pio/pio.c ****  * \note Data presence should be tested before any read attempt.
1083:../asf/sam/drivers/pio/pio.c ****  *
1084:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
1085:../asf/sam/drivers/pio/pio.c ****  * \param pul_data Pointer to store the data.
1086:../asf/sam/drivers/pio/pio.c ****  *
1087:../asf/sam/drivers/pio/pio.c ****  * \retval 0 Success.
1088:../asf/sam/drivers/pio/pio.c ****  * \retval 1 I/O Failure, Capture data is not ready.
1089:../asf/sam/drivers/pio/pio.c ****  */
1090:../asf/sam/drivers/pio/pio.c **** uint32_t pio_capture_read(const Pio *p_pio, uint32_t *pul_data)
1091:../asf/sam/drivers/pio/pio.c **** {
 2816              		.loc 1 1091 0
 2817              		.cfi_startproc
 2818              		@ args = 0, pretend = 0, frame = 0
 2819              		@ frame_needed = 0, uses_anonymous_args = 0
 2820              		@ link register save eliminated.
 2821              	.LVL229:
1092:../asf/sam/drivers/pio/pio.c **** 	/* Check if the data is ready */
1093:../asf/sam/drivers/pio/pio.c **** 	if ((p_pio->PIO_PCISR & PIO_PCISR_DRDY) == 0) {
 2822              		.loc 1 1093 0
 2823 0000 D0F86031 		ldr	r3, [r0, #352]
ARM GAS  /tmp/ccqzbxJl.s 			page 76


 2824 0004 DB07     		lsls	r3, r3, #31
 2825 0006 04D5     		bpl	.L274
1094:../asf/sam/drivers/pio/pio.c **** 		return 1;
1095:../asf/sam/drivers/pio/pio.c **** 	}
1096:../asf/sam/drivers/pio/pio.c **** 
1097:../asf/sam/drivers/pio/pio.c **** 	/* Read data */
1098:../asf/sam/drivers/pio/pio.c **** 	*pul_data = p_pio->PIO_PCRHR;
 2826              		.loc 1 1098 0
 2827 0008 D0F86431 		ldr	r3, [r0, #356]
1099:../asf/sam/drivers/pio/pio.c **** 	return 0;
 2828              		.loc 1 1099 0
 2829 000c 0020     		movs	r0, #0
 2830              	.LVL230:
1098:../asf/sam/drivers/pio/pio.c **** 	return 0;
 2831              		.loc 1 1098 0
 2832 000e 0B60     		str	r3, [r1]
 2833              		.loc 1 1099 0
 2834 0010 7047     		bx	lr
 2835              	.LVL231:
 2836              	.L274:
1094:../asf/sam/drivers/pio/pio.c **** 		return 1;
 2837              		.loc 1 1094 0
 2838 0012 0120     		movs	r0, #1
 2839              	.LVL232:
1100:../asf/sam/drivers/pio/pio.c **** }
 2840              		.loc 1 1100 0
 2841 0014 7047     		bx	lr
 2842              		.cfi_endproc
 2843              	.LFE186:
 2844              		.size	pio_capture_read, .-pio_capture_read
 2845 0016 00BF     		.section	.text.pio_capture_enable_interrupt,"ax",%progbits
 2846              		.align	1
 2847              		.p2align 2,,3
 2848              		.global	pio_capture_enable_interrupt
 2849              		.syntax unified
 2850              		.thumb
 2851              		.thumb_func
 2852              		.fpu fpv5-d16
 2853              		.type	pio_capture_enable_interrupt, %function
 2854              	pio_capture_enable_interrupt:
 2855              	.LFB187:
1101:../asf/sam/drivers/pio/pio.c **** 
1102:../asf/sam/drivers/pio/pio.c **** /**
1103:../asf/sam/drivers/pio/pio.c ****  * \brief Enable the given interrupt source of PIO capture. The status
1104:../asf/sam/drivers/pio/pio.c ****  * register of the corresponding PIO capture controller is cleared prior
1105:../asf/sam/drivers/pio/pio.c ****  * to enabling the interrupt.
1106:../asf/sam/drivers/pio/pio.c ****  *
1107:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
1108:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Interrupt sources bit map.
1109:../asf/sam/drivers/pio/pio.c ****  */
1110:../asf/sam/drivers/pio/pio.c **** void pio_capture_enable_interrupt(Pio *p_pio, const uint32_t ul_mask)
1111:../asf/sam/drivers/pio/pio.c **** {
 2856              		.loc 1 1111 0
 2857              		.cfi_startproc
 2858              		@ args = 0, pretend = 0, frame = 0
 2859              		@ frame_needed = 0, uses_anonymous_args = 0
 2860              		@ link register save eliminated.
ARM GAS  /tmp/ccqzbxJl.s 			page 77


 2861              	.LVL233:
1112:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCISR;
 2862              		.loc 1 1112 0
 2863 0000 D0F86031 		ldr	r3, [r0, #352]
1113:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCIER = ul_mask;
 2864              		.loc 1 1113 0
 2865 0004 C0F85411 		str	r1, [r0, #340]
 2866 0008 7047     		bx	lr
 2867              		.cfi_endproc
 2868              	.LFE187:
 2869              		.size	pio_capture_enable_interrupt, .-pio_capture_enable_interrupt
 2870              		.section	.text.pio_capture_disable_interrupt,"ax",%progbits
 2871              		.align	1
 2872              		.p2align 2,,3
 2873              		.global	pio_capture_disable_interrupt
 2874              		.syntax unified
 2875              		.thumb
 2876              		.thumb_func
 2877              		.fpu fpv5-d16
 2878              		.type	pio_capture_disable_interrupt, %function
 2879              	pio_capture_disable_interrupt:
 2880              	.LFB188:
1114:../asf/sam/drivers/pio/pio.c **** }
1115:../asf/sam/drivers/pio/pio.c **** 
1116:../asf/sam/drivers/pio/pio.c **** /**
1117:../asf/sam/drivers/pio/pio.c ****  * \brief Disable a given interrupt source of PIO capture.
1118:../asf/sam/drivers/pio/pio.c ****  *
1119:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
1120:../asf/sam/drivers/pio/pio.c ****  * \param ul_mask Interrupt sources bit map.
1121:../asf/sam/drivers/pio/pio.c ****  */
1122:../asf/sam/drivers/pio/pio.c **** void pio_capture_disable_interrupt(Pio *p_pio, const uint32_t ul_mask)
1123:../asf/sam/drivers/pio/pio.c **** {
 2881              		.loc 1 1123 0
 2882              		.cfi_startproc
 2883              		@ args = 0, pretend = 0, frame = 0
 2884              		@ frame_needed = 0, uses_anonymous_args = 0
 2885              		@ link register save eliminated.
 2886              	.LVL234:
1124:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_PCIDR = ul_mask;
 2887              		.loc 1 1124 0
 2888 0000 C0F85811 		str	r1, [r0, #344]
 2889 0004 7047     		bx	lr
 2890              		.cfi_endproc
 2891              	.LFE188:
 2892              		.size	pio_capture_disable_interrupt, .-pio_capture_disable_interrupt
 2893 0006 00BF     		.section	.text.pio_capture_get_interrupt_status,"ax",%progbits
 2894              		.align	1
 2895              		.p2align 2,,3
 2896              		.global	pio_capture_get_interrupt_status
 2897              		.syntax unified
 2898              		.thumb
 2899              		.thumb_func
 2900              		.fpu fpv5-d16
 2901              		.type	pio_capture_get_interrupt_status, %function
 2902              	pio_capture_get_interrupt_status:
 2903              	.LFB189:
1125:../asf/sam/drivers/pio/pio.c **** }
ARM GAS  /tmp/ccqzbxJl.s 			page 78


1126:../asf/sam/drivers/pio/pio.c **** 
1127:../asf/sam/drivers/pio/pio.c **** /**
1128:../asf/sam/drivers/pio/pio.c ****  * \brief Read PIO interrupt status of PIO capture.
1129:../asf/sam/drivers/pio/pio.c ****  *
1130:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
1131:../asf/sam/drivers/pio/pio.c ****  *
1132:../asf/sam/drivers/pio/pio.c ****  * \return The interrupt status mask value.
1133:../asf/sam/drivers/pio/pio.c ****  */
1134:../asf/sam/drivers/pio/pio.c **** uint32_t pio_capture_get_interrupt_status(const Pio *p_pio)
1135:../asf/sam/drivers/pio/pio.c **** {
 2904              		.loc 1 1135 0
 2905              		.cfi_startproc
 2906              		@ args = 0, pretend = 0, frame = 0
 2907              		@ frame_needed = 0, uses_anonymous_args = 0
 2908              		@ link register save eliminated.
 2909              	.LVL235:
1136:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_PCISR;
 2910              		.loc 1 1136 0
 2911 0000 D0F86001 		ldr	r0, [r0, #352]
 2912              	.LVL236:
1137:../asf/sam/drivers/pio/pio.c **** }
 2913              		.loc 1 1137 0
 2914 0004 7047     		bx	lr
 2915              		.cfi_endproc
 2916              	.LFE189:
 2917              		.size	pio_capture_get_interrupt_status, .-pio_capture_get_interrupt_status
 2918 0006 00BF     		.section	.text.pio_capture_get_interrupt_mask,"ax",%progbits
 2919              		.align	1
 2920              		.p2align 2,,3
 2921              		.global	pio_capture_get_interrupt_mask
 2922              		.syntax unified
 2923              		.thumb
 2924              		.thumb_func
 2925              		.fpu fpv5-d16
 2926              		.type	pio_capture_get_interrupt_mask, %function
 2927              	pio_capture_get_interrupt_mask:
 2928              	.LFB190:
1138:../asf/sam/drivers/pio/pio.c **** 
1139:../asf/sam/drivers/pio/pio.c **** /**
1140:../asf/sam/drivers/pio/pio.c ****  * \brief Read PIO interrupt mask of PIO capture.
1141:../asf/sam/drivers/pio/pio.c ****  *
1142:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to a PIO instance.
1143:../asf/sam/drivers/pio/pio.c ****  *
1144:../asf/sam/drivers/pio/pio.c ****  * \return The interrupt mask value.
1145:../asf/sam/drivers/pio/pio.c ****  */
1146:../asf/sam/drivers/pio/pio.c **** uint32_t pio_capture_get_interrupt_mask(const Pio *p_pio)
1147:../asf/sam/drivers/pio/pio.c **** {
 2929              		.loc 1 1147 0
 2930              		.cfi_startproc
 2931              		@ args = 0, pretend = 0, frame = 0
 2932              		@ frame_needed = 0, uses_anonymous_args = 0
 2933              		@ link register save eliminated.
 2934              	.LVL237:
1148:../asf/sam/drivers/pio/pio.c **** 	return p_pio->PIO_PCIMR;
 2935              		.loc 1 1148 0
 2936 0000 D0F85C01 		ldr	r0, [r0, #348]
 2937              	.LVL238:
ARM GAS  /tmp/ccqzbxJl.s 			page 79


1149:../asf/sam/drivers/pio/pio.c **** }
 2938              		.loc 1 1149 0
 2939 0004 7047     		bx	lr
 2940              		.cfi_endproc
 2941              	.LFE190:
 2942              		.size	pio_capture_get_interrupt_mask, .-pio_capture_get_interrupt_mask
 2943 0006 00BF     		.section	.text.pio_set_io_drive,"ax",%progbits
 2944              		.align	1
 2945              		.p2align 2,,3
 2946              		.global	pio_set_io_drive
 2947              		.syntax unified
 2948              		.thumb
 2949              		.thumb_func
 2950              		.fpu fpv5-d16
 2951              		.type	pio_set_io_drive, %function
 2952              	pio_set_io_drive:
 2953              	.LFB191:
1150:../asf/sam/drivers/pio/pio.c **** #if !(SAMV71 || SAMV70 || SAME70 || SAMS70)
1151:../asf/sam/drivers/pio/pio.c **** /**
1152:../asf/sam/drivers/pio/pio.c ****  * \brief Get PDC registers base address.
1153:../asf/sam/drivers/pio/pio.c ****  *
1154:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to an PIO peripheral.
1155:../asf/sam/drivers/pio/pio.c ****  *
1156:../asf/sam/drivers/pio/pio.c ****  * \return PIOA PDC register base address.
1157:../asf/sam/drivers/pio/pio.c ****  */
1158:../asf/sam/drivers/pio/pio.c **** Pdc *pio_capture_get_pdc_base(const Pio *p_pio)
1159:../asf/sam/drivers/pio/pio.c **** {
1160:../asf/sam/drivers/pio/pio.c **** 	UNUSED(p_pio); /* Stop warning */
1161:../asf/sam/drivers/pio/pio.c **** 	return PDC_PIOA;
1162:../asf/sam/drivers/pio/pio.c **** }
1163:../asf/sam/drivers/pio/pio.c **** #endif
1164:../asf/sam/drivers/pio/pio.c **** #endif
1165:../asf/sam/drivers/pio/pio.c **** 
1166:../asf/sam/drivers/pio/pio.c **** #if (SAM4C || SAM4CP || SAM4CM || SAMG55 || SAMV71 || SAMV70 || SAME70 || SAMS70)
1167:../asf/sam/drivers/pio/pio.c **** /**
1168:../asf/sam/drivers/pio/pio.c ****  * \brief Set PIO IO drive.
1169:../asf/sam/drivers/pio/pio.c ****  *
1170:../asf/sam/drivers/pio/pio.c ****  * \param p_pio Pointer to an PIO peripheral.
1171:../asf/sam/drivers/pio/pio.c ****  * \param ul_line Line index (0..31).
1172:../asf/sam/drivers/pio/pio.c ****  * \param mode IO drive mode.
1173:../asf/sam/drivers/pio/pio.c ****  */
1174:../asf/sam/drivers/pio/pio.c **** void pio_set_io_drive(Pio *p_pio, uint32_t ul_line,
1175:../asf/sam/drivers/pio/pio.c **** 		enum pio_io_drive_mode mode)
1176:../asf/sam/drivers/pio/pio.c **** {
 2954              		.loc 1 1176 0
 2955              		.cfi_startproc
 2956              		@ args = 0, pretend = 0, frame = 0
 2957              		@ frame_needed = 0, uses_anonymous_args = 0
 2958              		@ link register save eliminated.
 2959              	.LVL239:
 2960 0000 10B4     		push	{r4}
 2961              		.cfi_def_cfa_offset 4
 2962              		.cfi_offset 4, -4
1177:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_DRIVER &= ~(1 << ul_line);
 2963              		.loc 1 1177 0
 2964 0002 0124     		movs	r4, #1
 2965 0004 D0F81831 		ldr	r3, [r0, #280]
ARM GAS  /tmp/ccqzbxJl.s 			page 80


1178:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_DRIVER |= mode << ul_line;
 2966              		.loc 1 1178 0
 2967 0008 8A40     		lsls	r2, r2, r1
 2968              	.LVL240:
1177:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_DRIVER &= ~(1 << ul_line);
 2969              		.loc 1 1177 0
 2970 000a 8C40     		lsls	r4, r4, r1
 2971 000c 23EA0403 		bic	r3, r3, r4
1179:../asf/sam/drivers/pio/pio.c **** }
 2972              		.loc 1 1179 0
 2973 0010 5DF8044B 		ldr	r4, [sp], #4
 2974              		.cfi_restore 4
 2975              		.cfi_def_cfa_offset 0
1177:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_DRIVER &= ~(1 << ul_line);
 2976              		.loc 1 1177 0
 2977 0014 C0F81831 		str	r3, [r0, #280]
1178:../asf/sam/drivers/pio/pio.c **** 	p_pio->PIO_DRIVER |= mode << ul_line;
 2978              		.loc 1 1178 0
 2979 0018 D0F81831 		ldr	r3, [r0, #280]
 2980 001c 1A43     		orrs	r2, r2, r3
 2981 001e C0F81821 		str	r2, [r0, #280]
 2982              		.loc 1 1179 0
 2983 0022 7047     		bx	lr
 2984              		.cfi_endproc
 2985              	.LFE191:
 2986              		.size	pio_set_io_drive, .-pio_set_io_drive
 2987              		.comm	pio_capture_enable_flag,4,4
 2988              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2989              		.align	2
 2990              		.type	cpu_irq_critical_section_counter, %object
 2991              		.size	cpu_irq_critical_section_counter, 4
 2992              	cpu_irq_critical_section_counter:
 2993 0000 00000000 		.space	4
 2994              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2995              		.type	cpu_irq_prev_interrupt_state, %object
 2996              		.size	cpu_irq_prev_interrupt_state, 1
 2997              	cpu_irq_prev_interrupt_state:
 2998 0000 00       		.space	1
 2999              		.text
 3000              	.Letext0:
 3001              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 3002              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 3003              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 3004              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 3005              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pio.
 3006              		.file 7 "/usr/include/newlib/sys/lock.h"
 3007              		.file 8 "/usr/include/newlib/sys/_types.h"
 3008              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 3009              		.file 10 "/usr/include/newlib/sys/reent.h"
 3010              		.file 11 "/usr/include/newlib/stdlib.h"
 3011              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 3012              		.file 13 "../asf/sam/drivers/pio/pio.h"
 3013              		.section	.debug_info,"",%progbits
 3014              	.Ldebug_info0:
 3015 0000 A0210000 		.4byte	0x21a0
 3016 0004 0400     		.2byte	0x4
 3017 0006 00000000 		.4byte	.Ldebug_abbrev0
ARM GAS  /tmp/ccqzbxJl.s 			page 81


 3018 000a 04       		.byte	0x4
 3019 000b 01       		.uleb128 0x1
 3020 000c 920B0000 		.4byte	.LASF284
 3021 0010 0C       		.byte	0xc
 3022 0011 DC040000 		.4byte	.LASF285
 3023 0015 7D0C0000 		.4byte	.LASF286
 3024 0019 40040000 		.4byte	.Ldebug_ranges0+0x440
 3025 001d 00000000 		.4byte	0
 3026 0021 00000000 		.4byte	.Ldebug_line0
 3027 0025 02       		.uleb128 0x2
 3028 0026 04       		.byte	0x4
 3029 0027 05       		.byte	0x5
 3030 0028 696E7400 		.ascii	"int\000"
 3031 002c 03       		.uleb128 0x3
 3032 002d 04       		.byte	0x4
 3033 002e 07       		.byte	0x7
 3034 002f DD000000 		.4byte	.LASF0
 3035 0033 03       		.uleb128 0x3
 3036 0034 01       		.byte	0x1
 3037 0035 06       		.byte	0x6
 3038 0036 330D0000 		.4byte	.LASF1
 3039 003a 03       		.uleb128 0x3
 3040 003b 01       		.byte	0x1
 3041 003c 08       		.byte	0x8
 3042 003d FB0A0000 		.4byte	.LASF2
 3043 0041 03       		.uleb128 0x3
 3044 0042 02       		.byte	0x2
 3045 0043 05       		.byte	0x5
 3046 0044 4A080000 		.4byte	.LASF3
 3047 0048 03       		.uleb128 0x3
 3048 0049 02       		.byte	0x2
 3049 004a 07       		.byte	0x7
 3050 004b 620D0000 		.4byte	.LASF4
 3051 004f 04       		.uleb128 0x4
 3052 0050 1E010000 		.4byte	.LASF6
 3053 0054 02       		.byte	0x2
 3054 0055 3F       		.byte	0x3f
 3055 0056 5A000000 		.4byte	0x5a
 3056 005a 03       		.uleb128 0x3
 3057 005b 04       		.byte	0x4
 3058 005c 05       		.byte	0x5
 3059 005d 5D080000 		.4byte	.LASF5
 3060 0061 04       		.uleb128 0x4
 3061 0062 F0070000 		.4byte	.LASF7
 3062 0066 02       		.byte	0x2
 3063 0067 41       		.byte	0x41
 3064 0068 6C000000 		.4byte	0x6c
 3065 006c 03       		.uleb128 0x3
 3066 006d 04       		.byte	0x4
 3067 006e 07       		.byte	0x7
 3068 006f 5E0A0000 		.4byte	.LASF8
 3069 0073 03       		.uleb128 0x3
 3070 0074 08       		.byte	0x8
 3071 0075 05       		.byte	0x5
 3072 0076 84060000 		.4byte	.LASF9
 3073 007a 03       		.uleb128 0x3
 3074 007b 08       		.byte	0x8
ARM GAS  /tmp/ccqzbxJl.s 			page 82


 3075 007c 07       		.byte	0x7
 3076 007d 21030000 		.4byte	.LASF10
 3077 0081 04       		.uleb128 0x4
 3078 0082 9F0A0000 		.4byte	.LASF11
 3079 0086 03       		.byte	0x3
 3080 0087 2C       		.byte	0x2c
 3081 0088 4F000000 		.4byte	0x4f
 3082 008c 05       		.uleb128 0x5
 3083 008d 81000000 		.4byte	0x81
 3084 0091 04       		.uleb128 0x4
 3085 0092 65020000 		.4byte	.LASF12
 3086 0096 03       		.byte	0x3
 3087 0097 30       		.byte	0x30
 3088 0098 61000000 		.4byte	0x61
 3089 009c 05       		.uleb128 0x5
 3090 009d 91000000 		.4byte	0x91
 3091 00a1 06       		.uleb128 0x6
 3092 00a2 9C000000 		.4byte	0x9c
 3093 00a6 06       		.uleb128 0x6
 3094 00a7 91000000 		.4byte	0x91
 3095 00ab 07       		.uleb128 0x7
 3096 00ac 04       		.byte	0x4
 3097 00ad 03       		.uleb128 0x3
 3098 00ae 04       		.byte	0x4
 3099 00af 07       		.byte	0x7
 3100 00b0 4A0A0000 		.4byte	.LASF13
 3101 00b4 08       		.uleb128 0x8
 3102 00b5 A1000000 		.4byte	0xa1
 3103 00b9 C4000000 		.4byte	0xc4
 3104 00bd 09       		.uleb128 0x9
 3105 00be AD000000 		.4byte	0xad
 3106 00c2 01       		.byte	0x1
 3107 00c3 00       		.byte	0
 3108 00c4 06       		.uleb128 0x6
 3109 00c5 B4000000 		.4byte	0xb4
 3110 00c9 05       		.uleb128 0x5
 3111 00ca C4000000 		.4byte	0xc4
 3112 00ce 08       		.uleb128 0x8
 3113 00cf A1000000 		.4byte	0xa1
 3114 00d3 DE000000 		.4byte	0xde
 3115 00d7 09       		.uleb128 0x9
 3116 00d8 AD000000 		.4byte	0xad
 3117 00dc 04       		.byte	0x4
 3118 00dd 00       		.byte	0
 3119 00de 06       		.uleb128 0x6
 3120 00df CE000000 		.4byte	0xce
 3121 00e3 05       		.uleb128 0x5
 3122 00e4 DE000000 		.4byte	0xde
 3123 00e8 05       		.uleb128 0x5
 3124 00e9 DE000000 		.4byte	0xde
 3125 00ed 0A       		.uleb128 0xa
 3126 00ee 70080000 		.4byte	.LASF14
 3127 00f2 04       		.byte	0x4
 3128 00f3 6508     		.2byte	0x865
 3129 00f5 8C000000 		.4byte	0x8c
 3130 00f9 0B       		.uleb128 0xb
 3131 00fa C8070000 		.4byte	.LASF15
ARM GAS  /tmp/ccqzbxJl.s 			page 83


 3132 00fe 05       		.byte	0x5
 3133 00ff 3A       		.byte	0x3a
 3134 0100 91000000 		.4byte	0x91
 3135 0104 08       		.uleb128 0x8
 3136 0105 A1000000 		.4byte	0xa1
 3137 0109 14010000 		.4byte	0x114
 3138 010d 09       		.uleb128 0x9
 3139 010e AD000000 		.4byte	0xad
 3140 0112 00       		.byte	0
 3141 0113 00       		.byte	0
 3142 0114 06       		.uleb128 0x6
 3143 0115 04010000 		.4byte	0x104
 3144 0119 05       		.uleb128 0x5
 3145 011a 14010000 		.4byte	0x114
 3146 011e 05       		.uleb128 0x5
 3147 011f 14010000 		.4byte	0x114
 3148 0123 05       		.uleb128 0x5
 3149 0124 14010000 		.4byte	0x114
 3150 0128 05       		.uleb128 0x5
 3151 0129 14010000 		.4byte	0x114
 3152 012d 05       		.uleb128 0x5
 3153 012e 14010000 		.4byte	0x114
 3154 0132 05       		.uleb128 0x5
 3155 0133 14010000 		.4byte	0x114
 3156 0137 05       		.uleb128 0x5
 3157 0138 14010000 		.4byte	0x114
 3158 013c 05       		.uleb128 0x5
 3159 013d 14010000 		.4byte	0x114
 3160 0141 05       		.uleb128 0x5
 3161 0142 14010000 		.4byte	0x114
 3162 0146 05       		.uleb128 0x5
 3163 0147 14010000 		.4byte	0x114
 3164 014b 08       		.uleb128 0x8
 3165 014c 9C000000 		.4byte	0x9c
 3166 0150 5B010000 		.4byte	0x15b
 3167 0154 09       		.uleb128 0x9
 3168 0155 AD000000 		.4byte	0xad
 3169 0159 01       		.byte	0x1
 3170 015a 00       		.byte	0
 3171 015b 05       		.uleb128 0x5
 3172 015c 4B010000 		.4byte	0x14b
 3173 0160 08       		.uleb128 0x8
 3174 0161 A1000000 		.4byte	0xa1
 3175 0165 70010000 		.4byte	0x170
 3176 0169 09       		.uleb128 0x9
 3177 016a AD000000 		.4byte	0xad
 3178 016e 0C       		.byte	0xc
 3179 016f 00       		.byte	0
 3180 0170 06       		.uleb128 0x6
 3181 0171 60010000 		.4byte	0x160
 3182 0175 05       		.uleb128 0x5
 3183 0176 70010000 		.4byte	0x170
 3184 017a 0C       		.uleb128 0xc
 3185 017b 6801     		.2byte	0x168
 3186 017d 06       		.byte	0x6
 3187 017e 38       		.byte	0x38
 3188 017f BE040000 		.4byte	0x4be
ARM GAS  /tmp/ccqzbxJl.s 			page 84


 3189 0183 0D       		.uleb128 0xd
 3190 0184 AC0C0000 		.4byte	.LASF16
 3191 0188 06       		.byte	0x6
 3192 0189 39       		.byte	0x39
 3193 018a 9C000000 		.4byte	0x9c
 3194 018e 00       		.byte	0
 3195 018f 0D       		.uleb128 0xd
 3196 0190 DA0A0000 		.4byte	.LASF17
 3197 0194 06       		.byte	0x6
 3198 0195 3A       		.byte	0x3a
 3199 0196 9C000000 		.4byte	0x9c
 3200 019a 04       		.byte	0x4
 3201 019b 0D       		.uleb128 0xd
 3202 019c A70A0000 		.4byte	.LASF18
 3203 01a0 06       		.byte	0x6
 3204 01a1 3B       		.byte	0x3b
 3205 01a2 A1000000 		.4byte	0xa1
 3206 01a6 08       		.byte	0x8
 3207 01a7 0D       		.uleb128 0xd
 3208 01a8 05070000 		.4byte	.LASF19
 3209 01ac 06       		.byte	0x6
 3210 01ad 3C       		.byte	0x3c
 3211 01ae 19010000 		.4byte	0x119
 3212 01b2 0C       		.byte	0xc
 3213 01b3 0D       		.uleb128 0xd
 3214 01b4 7C060000 		.4byte	.LASF20
 3215 01b8 06       		.byte	0x6
 3216 01b9 3D       		.byte	0x3d
 3217 01ba 9C000000 		.4byte	0x9c
 3218 01be 10       		.byte	0x10
 3219 01bf 0D       		.uleb128 0xd
 3220 01c0 2F010000 		.4byte	.LASF21
 3221 01c4 06       		.byte	0x6
 3222 01c5 3E       		.byte	0x3e
 3223 01c6 9C000000 		.4byte	0x9c
 3224 01ca 14       		.byte	0x14
 3225 01cb 0D       		.uleb128 0xd
 3226 01cc 85050000 		.4byte	.LASF22
 3227 01d0 06       		.byte	0x6
 3228 01d1 3F       		.byte	0x3f
 3229 01d2 A1000000 		.4byte	0xa1
 3230 01d6 18       		.byte	0x18
 3231 01d7 0D       		.uleb128 0xd
 3232 01d8 0F070000 		.4byte	.LASF23
 3233 01dc 06       		.byte	0x6
 3234 01dd 40       		.byte	0x40
 3235 01de 1E010000 		.4byte	0x11e
 3236 01e2 1C       		.byte	0x1c
 3237 01e3 0D       		.uleb128 0xd
 3238 01e4 37060000 		.4byte	.LASF24
 3239 01e8 06       		.byte	0x6
 3240 01e9 41       		.byte	0x41
 3241 01ea 9C000000 		.4byte	0x9c
 3242 01ee 20       		.byte	0x20
 3243 01ef 0D       		.uleb128 0xd
 3244 01f0 A4090000 		.4byte	.LASF25
 3245 01f4 06       		.byte	0x6
ARM GAS  /tmp/ccqzbxJl.s 			page 85


 3246 01f5 42       		.byte	0x42
 3247 01f6 9C000000 		.4byte	0x9c
 3248 01fa 24       		.byte	0x24
 3249 01fb 0D       		.uleb128 0xd
 3250 01fc 3F050000 		.4byte	.LASF26
 3251 0200 06       		.byte	0x6
 3252 0201 43       		.byte	0x43
 3253 0202 A1000000 		.4byte	0xa1
 3254 0206 28       		.byte	0x28
 3255 0207 0D       		.uleb128 0xd
 3256 0208 19070000 		.4byte	.LASF27
 3257 020c 06       		.byte	0x6
 3258 020d 44       		.byte	0x44
 3259 020e 23010000 		.4byte	0x123
 3260 0212 2C       		.byte	0x2c
 3261 0213 0D       		.uleb128 0xd
 3262 0214 9B030000 		.4byte	.LASF28
 3263 0218 06       		.byte	0x6
 3264 0219 45       		.byte	0x45
 3265 021a 9C000000 		.4byte	0x9c
 3266 021e 30       		.byte	0x30
 3267 021f 0D       		.uleb128 0xd
 3268 0220 B6060000 		.4byte	.LASF29
 3269 0224 06       		.byte	0x6
 3270 0225 46       		.byte	0x46
 3271 0226 9C000000 		.4byte	0x9c
 3272 022a 34       		.byte	0x34
 3273 022b 0D       		.uleb128 0xd
 3274 022c 95000000 		.4byte	.LASF30
 3275 0230 06       		.byte	0x6
 3276 0231 47       		.byte	0x47
 3277 0232 9C000000 		.4byte	0x9c
 3278 0236 38       		.byte	0x38
 3279 0237 0D       		.uleb128 0xd
 3280 0238 D10A0000 		.4byte	.LASF31
 3281 023c 06       		.byte	0x6
 3282 023d 48       		.byte	0x48
 3283 023e A1000000 		.4byte	0xa1
 3284 0242 3C       		.byte	0x3c
 3285 0243 0D       		.uleb128 0xd
 3286 0244 37010000 		.4byte	.LASF32
 3287 0248 06       		.byte	0x6
 3288 0249 49       		.byte	0x49
 3289 024a 9C000000 		.4byte	0x9c
 3290 024e 40       		.byte	0x40
 3291 024f 0D       		.uleb128 0xd
 3292 0250 75000000 		.4byte	.LASF33
 3293 0254 06       		.byte	0x6
 3294 0255 4A       		.byte	0x4a
 3295 0256 9C000000 		.4byte	0x9c
 3296 025a 44       		.byte	0x44
 3297 025b 0D       		.uleb128 0xd
 3298 025c DF070000 		.4byte	.LASF34
 3299 0260 06       		.byte	0x6
 3300 0261 4B       		.byte	0x4b
 3301 0262 A1000000 		.4byte	0xa1
 3302 0266 48       		.byte	0x48
ARM GAS  /tmp/ccqzbxJl.s 			page 86


 3303 0267 0D       		.uleb128 0xd
 3304 0268 44000000 		.4byte	.LASF35
 3305 026c 06       		.byte	0x6
 3306 026d 4C       		.byte	0x4c
 3307 026e A1000000 		.4byte	0xa1
 3308 0272 4C       		.byte	0x4c
 3309 0273 0D       		.uleb128 0xd
 3310 0274 440E0000 		.4byte	.LASF36
 3311 0278 06       		.byte	0x6
 3312 0279 4D       		.byte	0x4d
 3313 027a 9C000000 		.4byte	0x9c
 3314 027e 50       		.byte	0x50
 3315 027f 0D       		.uleb128 0xd
 3316 0280 750D0000 		.4byte	.LASF37
 3317 0284 06       		.byte	0x6
 3318 0285 4E       		.byte	0x4e
 3319 0286 9C000000 		.4byte	0x9c
 3320 028a 54       		.byte	0x54
 3321 028b 0D       		.uleb128 0xd
 3322 028c 000D0000 		.4byte	.LASF38
 3323 0290 06       		.byte	0x6
 3324 0291 4F       		.byte	0x4f
 3325 0292 A1000000 		.4byte	0xa1
 3326 0296 58       		.byte	0x58
 3327 0297 0D       		.uleb128 0xd
 3328 0298 23070000 		.4byte	.LASF39
 3329 029c 06       		.byte	0x6
 3330 029d 50       		.byte	0x50
 3331 029e 28010000 		.4byte	0x128
 3332 02a2 5C       		.byte	0x5c
 3333 02a3 0D       		.uleb128 0xd
 3334 02a4 48050000 		.4byte	.LASF40
 3335 02a8 06       		.byte	0x6
 3336 02a9 51       		.byte	0x51
 3337 02aa 9C000000 		.4byte	0x9c
 3338 02ae 60       		.byte	0x60
 3339 02af 0D       		.uleb128 0xd
 3340 02b0 13060000 		.4byte	.LASF41
 3341 02b4 06       		.byte	0x6
 3342 02b5 52       		.byte	0x52
 3343 02b6 9C000000 		.4byte	0x9c
 3344 02ba 64       		.byte	0x64
 3345 02bb 0D       		.uleb128 0xd
 3346 02bc 16050000 		.4byte	.LASF42
 3347 02c0 06       		.byte	0x6
 3348 02c1 53       		.byte	0x53
 3349 02c2 A1000000 		.4byte	0xa1
 3350 02c6 68       		.byte	0x68
 3351 02c7 0D       		.uleb128 0xd
 3352 02c8 2D070000 		.4byte	.LASF43
 3353 02cc 06       		.byte	0x6
 3354 02cd 54       		.byte	0x54
 3355 02ce 2D010000 		.4byte	0x12d
 3356 02d2 6C       		.byte	0x6c
 3357 02d3 0D       		.uleb128 0xd
 3358 02d4 D1040000 		.4byte	.LASF44
 3359 02d8 06       		.byte	0x6
ARM GAS  /tmp/ccqzbxJl.s 			page 87


 3360 02d9 55       		.byte	0x55
 3361 02da 5B010000 		.4byte	0x15b
 3362 02de 70       		.byte	0x70
 3363 02df 0D       		.uleb128 0xd
 3364 02e0 37070000 		.4byte	.LASF45
 3365 02e4 06       		.byte	0x6
 3366 02e5 56       		.byte	0x56
 3367 02e6 C9000000 		.4byte	0xc9
 3368 02ea 78       		.byte	0x78
 3369 02eb 0D       		.uleb128 0xd
 3370 02ec DB030000 		.4byte	.LASF46
 3371 02f0 06       		.byte	0x6
 3372 02f1 57       		.byte	0x57
 3373 02f2 9C000000 		.4byte	0x9c
 3374 02f6 80       		.byte	0x80
 3375 02f7 0D       		.uleb128 0xd
 3376 02f8 530A0000 		.4byte	.LASF47
 3377 02fc 06       		.byte	0x6
 3378 02fd 58       		.byte	0x58
 3379 02fe 9C000000 		.4byte	0x9c
 3380 0302 84       		.byte	0x84
 3381 0303 0D       		.uleb128 0xd
 3382 0304 B0080000 		.4byte	.LASF48
 3383 0308 06       		.byte	0x6
 3384 0309 59       		.byte	0x59
 3385 030a A1000000 		.4byte	0xa1
 3386 030e 88       		.byte	0x88
 3387 030f 0D       		.uleb128 0xd
 3388 0310 3B0E0000 		.4byte	.LASF49
 3389 0314 06       		.byte	0x6
 3390 0315 5A       		.byte	0x5a
 3391 0316 9C000000 		.4byte	0x9c
 3392 031a 8C       		.byte	0x8c
 3393 031b 0D       		.uleb128 0xd
 3394 031c 880B0000 		.4byte	.LASF50
 3395 0320 06       		.byte	0x6
 3396 0321 5B       		.byte	0x5b
 3397 0322 9C000000 		.4byte	0x9c
 3398 0326 90       		.byte	0x90
 3399 0327 0D       		.uleb128 0xd
 3400 0328 7E0D0000 		.4byte	.LASF51
 3401 032c 06       		.byte	0x6
 3402 032d 5C       		.byte	0x5c
 3403 032e 9C000000 		.4byte	0x9c
 3404 0332 94       		.byte	0x94
 3405 0333 0D       		.uleb128 0xd
 3406 0334 5A0B0000 		.4byte	.LASF52
 3407 0338 06       		.byte	0x6
 3408 0339 5D       		.byte	0x5d
 3409 033a A1000000 		.4byte	0xa1
 3410 033e 98       		.byte	0x98
 3411 033f 0D       		.uleb128 0xd
 3412 0340 1E000000 		.4byte	.LASF53
 3413 0344 06       		.byte	0x6
 3414 0345 5E       		.byte	0x5e
 3415 0346 32010000 		.4byte	0x132
 3416 034a 9C       		.byte	0x9c
ARM GAS  /tmp/ccqzbxJl.s 			page 88


 3417 034b 0D       		.uleb128 0xd
 3418 034c 54080000 		.4byte	.LASF54
 3419 0350 06       		.byte	0x6
 3420 0351 5F       		.byte	0x5f
 3421 0352 9C000000 		.4byte	0x9c
 3422 0356 A0       		.byte	0xa0
 3423 0357 0D       		.uleb128 0xd
 3424 0358 8A070000 		.4byte	.LASF55
 3425 035c 06       		.byte	0x6
 3426 035d 60       		.byte	0x60
 3427 035e 9C000000 		.4byte	0x9c
 3428 0362 A4       		.byte	0xa4
 3429 0363 0D       		.uleb128 0xd
 3430 0364 6D070000 		.4byte	.LASF56
 3431 0368 06       		.byte	0x6
 3432 0369 61       		.byte	0x61
 3433 036a A1000000 		.4byte	0xa1
 3434 036e A8       		.byte	0xa8
 3435 036f 0D       		.uleb128 0xd
 3436 0370 4C070000 		.4byte	.LASF57
 3437 0374 06       		.byte	0x6
 3438 0375 62       		.byte	0x62
 3439 0376 37010000 		.4byte	0x137
 3440 037a AC       		.byte	0xac
 3441 037b 0D       		.uleb128 0xd
 3442 037c 66080000 		.4byte	.LASF58
 3443 0380 06       		.byte	0x6
 3444 0381 63       		.byte	0x63
 3445 0382 9C000000 		.4byte	0x9c
 3446 0386 B0       		.byte	0xb0
 3447 0387 0D       		.uleb128 0xd
 3448 0388 A6070000 		.4byte	.LASF59
 3449 038c 06       		.byte	0x6
 3450 038d 64       		.byte	0x64
 3451 038e 9C000000 		.4byte	0x9c
 3452 0392 B4       		.byte	0xb4
 3453 0393 0D       		.uleb128 0xd
 3454 0394 B2020000 		.4byte	.LASF60
 3455 0398 06       		.byte	0x6
 3456 0399 65       		.byte	0x65
 3457 039a A1000000 		.4byte	0xa1
 3458 039e B8       		.byte	0xb8
 3459 039f 0D       		.uleb128 0xd
 3460 03a0 56070000 		.4byte	.LASF61
 3461 03a4 06       		.byte	0x6
 3462 03a5 66       		.byte	0x66
 3463 03a6 3C010000 		.4byte	0x13c
 3464 03aa BC       		.byte	0xbc
 3465 03ab 0D       		.uleb128 0xd
 3466 03ac 05060000 		.4byte	.LASF62
 3467 03b0 06       		.byte	0x6
 3468 03b1 67       		.byte	0x67
 3469 03b2 9C000000 		.4byte	0x9c
 3470 03b6 C0       		.byte	0xc0
 3471 03b7 0D       		.uleb128 0xd
 3472 03b8 E0020000 		.4byte	.LASF63
 3473 03bc 06       		.byte	0x6
ARM GAS  /tmp/ccqzbxJl.s 			page 89


 3474 03bd 68       		.byte	0x68
 3475 03be 9C000000 		.4byte	0x9c
 3476 03c2 C4       		.byte	0xc4
 3477 03c3 0D       		.uleb128 0xd
 3478 03c4 23060000 		.4byte	.LASF64
 3479 03c8 06       		.byte	0x6
 3480 03c9 69       		.byte	0x69
 3481 03ca A1000000 		.4byte	0xa1
 3482 03ce C8       		.byte	0xc8
 3483 03cf 0D       		.uleb128 0xd
 3484 03d0 090B0000 		.4byte	.LASF65
 3485 03d4 06       		.byte	0x6
 3486 03d5 6A       		.byte	0x6a
 3487 03d6 41010000 		.4byte	0x141
 3488 03da CC       		.byte	0xcc
 3489 03db 0D       		.uleb128 0xd
 3490 03dc 200A0000 		.4byte	.LASF66
 3491 03e0 06       		.byte	0x6
 3492 03e1 6B       		.byte	0x6b
 3493 03e2 9C000000 		.4byte	0x9c
 3494 03e6 D0       		.byte	0xd0
 3495 03e7 0D       		.uleb128 0xd
 3496 03e8 DA080000 		.4byte	.LASF67
 3497 03ec 06       		.byte	0x6
 3498 03ed 6C       		.byte	0x6c
 3499 03ee 9C000000 		.4byte	0x9c
 3500 03f2 D4       		.byte	0xd4
 3501 03f3 0D       		.uleb128 0xd
 3502 03f4 DE060000 		.4byte	.LASF68
 3503 03f8 06       		.byte	0x6
 3504 03f9 6D       		.byte	0x6d
 3505 03fa A1000000 		.4byte	0xa1
 3506 03fe D8       		.byte	0xd8
 3507 03ff 0D       		.uleb128 0xd
 3508 0400 140B0000 		.4byte	.LASF69
 3509 0404 06       		.byte	0x6
 3510 0405 6E       		.byte	0x6e
 3511 0406 46010000 		.4byte	0x146
 3512 040a DC       		.byte	0xdc
 3513 040b 0D       		.uleb128 0xd
 3514 040c 03040000 		.4byte	.LASF70
 3515 0410 06       		.byte	0x6
 3516 0411 6F       		.byte	0x6f
 3517 0412 A1000000 		.4byte	0xa1
 3518 0416 E0       		.byte	0xe0
 3519 0417 0D       		.uleb128 0xd
 3520 0418 5A000000 		.4byte	.LASF71
 3521 041c 06       		.byte	0x6
 3522 041d 70       		.byte	0x70
 3523 041e 9C000000 		.4byte	0x9c
 3524 0422 E4       		.byte	0xe4
 3525 0423 0D       		.uleb128 0xd
 3526 0424 F2050000 		.4byte	.LASF72
 3527 0428 06       		.byte	0x6
 3528 0429 71       		.byte	0x71
 3529 042a A1000000 		.4byte	0xa1
 3530 042e E8       		.byte	0xe8
ARM GAS  /tmp/ccqzbxJl.s 			page 90


 3531 042f 0D       		.uleb128 0xd
 3532 0430 1F0B0000 		.4byte	.LASF73
 3533 0434 06       		.byte	0x6
 3534 0435 72       		.byte	0x72
 3535 0436 E3000000 		.4byte	0xe3
 3536 043a EC       		.byte	0xec
 3537 043b 0E       		.uleb128 0xe
 3538 043c 15030000 		.4byte	.LASF74
 3539 0440 06       		.byte	0x6
 3540 0441 73       		.byte	0x73
 3541 0442 9C000000 		.4byte	0x9c
 3542 0446 0001     		.2byte	0x100
 3543 0448 0E       		.uleb128 0xe
 3544 0449 2A0B0000 		.4byte	.LASF75
 3545 044d 06       		.byte	0x6
 3546 044e 74       		.byte	0x74
 3547 044f E8000000 		.4byte	0xe8
 3548 0453 0401     		.2byte	0x104
 3549 0455 0E       		.uleb128 0xe
 3550 0456 B2030000 		.4byte	.LASF76
 3551 045a 06       		.byte	0x6
 3552 045b 75       		.byte	0x75
 3553 045c 9C000000 		.4byte	0x9c
 3554 0460 1801     		.2byte	0x118
 3555 0462 0E       		.uleb128 0xe
 3556 0463 350B0000 		.4byte	.LASF77
 3557 0467 06       		.byte	0x6
 3558 0468 76       		.byte	0x76
 3559 0469 75010000 		.4byte	0x175
 3560 046d 1C01     		.2byte	0x11c
 3561 046f 0E       		.uleb128 0xe
 3562 0470 E7070000 		.4byte	.LASF78
 3563 0474 06       		.byte	0x6
 3564 0475 77       		.byte	0x77
 3565 0476 9C000000 		.4byte	0x9c
 3566 047a 5001     		.2byte	0x150
 3567 047c 0E       		.uleb128 0xe
 3568 047d 76050000 		.4byte	.LASF79
 3569 0481 06       		.byte	0x6
 3570 0482 78       		.byte	0x78
 3571 0483 9C000000 		.4byte	0x9c
 3572 0487 5401     		.2byte	0x154
 3573 0489 0E       		.uleb128 0xe
 3574 048a 8F040000 		.4byte	.LASF80
 3575 048e 06       		.byte	0x6
 3576 048f 79       		.byte	0x79
 3577 0490 9C000000 		.4byte	0x9c
 3578 0494 5801     		.2byte	0x158
 3579 0496 0E       		.uleb128 0xe
 3580 0497 880D0000 		.4byte	.LASF81
 3581 049b 06       		.byte	0x6
 3582 049c 7A       		.byte	0x7a
 3583 049d A1000000 		.4byte	0xa1
 3584 04a1 5C01     		.2byte	0x15c
 3585 04a3 0E       		.uleb128 0xe
 3586 04a4 2B040000 		.4byte	.LASF82
 3587 04a8 06       		.byte	0x6
ARM GAS  /tmp/ccqzbxJl.s 			page 91


 3588 04a9 7B       		.byte	0x7b
 3589 04aa A1000000 		.4byte	0xa1
 3590 04ae 6001     		.2byte	0x160
 3591 04b0 0E       		.uleb128 0xe
 3592 04b1 22020000 		.4byte	.LASF83
 3593 04b5 06       		.byte	0x6
 3594 04b6 7C       		.byte	0x7c
 3595 04b7 A1000000 		.4byte	0xa1
 3596 04bb 6401     		.2byte	0x164
 3597 04bd 00       		.byte	0
 3598 04be 0F       		.uleb128 0xf
 3599 04bf 50696F00 		.ascii	"Pio\000"
 3600 04c3 06       		.byte	0x6
 3601 04c4 7D       		.byte	0x7d
 3602 04c5 7A010000 		.4byte	0x17a
 3603 04c9 06       		.uleb128 0x6
 3604 04ca BE040000 		.4byte	0x4be
 3605 04ce 04       		.uleb128 0x4
 3606 04cf 640B0000 		.4byte	.LASF84
 3607 04d3 07       		.byte	0x7
 3608 04d4 07       		.byte	0x7
 3609 04d5 25000000 		.4byte	0x25
 3610 04d9 04       		.uleb128 0x4
 3611 04da B60D0000 		.4byte	.LASF85
 3612 04de 08       		.byte	0x8
 3613 04df 2C       		.byte	0x2c
 3614 04e0 5A000000 		.4byte	0x5a
 3615 04e4 04       		.uleb128 0x4
 3616 04e5 E1010000 		.4byte	.LASF86
 3617 04e9 08       		.byte	0x8
 3618 04ea 72       		.byte	0x72
 3619 04eb 5A000000 		.4byte	0x5a
 3620 04ef 10       		.uleb128 0x10
 3621 04f0 980A0000 		.4byte	.LASF87
 3622 04f4 09       		.byte	0x9
 3623 04f5 6501     		.2byte	0x165
 3624 04f7 2C000000 		.4byte	0x2c
 3625 04fb 11       		.uleb128 0x11
 3626 04fc 04       		.byte	0x4
 3627 04fd 08       		.byte	0x8
 3628 04fe A6       		.byte	0xa6
 3629 04ff 1A050000 		.4byte	0x51a
 3630 0503 12       		.uleb128 0x12
 3631 0504 0D060000 		.4byte	.LASF88
 3632 0508 08       		.byte	0x8
 3633 0509 A8       		.byte	0xa8
 3634 050a EF040000 		.4byte	0x4ef
 3635 050e 12       		.uleb128 0x12
 3636 050f 68090000 		.4byte	.LASF89
 3637 0513 08       		.byte	0x8
 3638 0514 A9       		.byte	0xa9
 3639 0515 1A050000 		.4byte	0x51a
 3640 0519 00       		.byte	0
 3641 051a 08       		.uleb128 0x8
 3642 051b 3A000000 		.4byte	0x3a
 3643 051f 2A050000 		.4byte	0x52a
 3644 0523 09       		.uleb128 0x9
ARM GAS  /tmp/ccqzbxJl.s 			page 92


 3645 0524 AD000000 		.4byte	0xad
 3646 0528 03       		.byte	0x3
 3647 0529 00       		.byte	0
 3648 052a 13       		.uleb128 0x13
 3649 052b 08       		.byte	0x8
 3650 052c 08       		.byte	0x8
 3651 052d A3       		.byte	0xa3
 3652 052e 4B050000 		.4byte	0x54b
 3653 0532 0D       		.uleb128 0xd
 3654 0533 AA020000 		.4byte	.LASF90
 3655 0537 08       		.byte	0x8
 3656 0538 A5       		.byte	0xa5
 3657 0539 25000000 		.4byte	0x25
 3658 053d 00       		.byte	0
 3659 053e 0D       		.uleb128 0xd
 3660 053f 32050000 		.4byte	.LASF91
 3661 0543 08       		.byte	0x8
 3662 0544 AA       		.byte	0xaa
 3663 0545 FB040000 		.4byte	0x4fb
 3664 0549 04       		.byte	0x4
 3665 054a 00       		.byte	0
 3666 054b 04       		.uleb128 0x4
 3667 054c E9060000 		.4byte	.LASF92
 3668 0550 08       		.byte	0x8
 3669 0551 AB       		.byte	0xab
 3670 0552 2A050000 		.4byte	0x52a
 3671 0556 04       		.uleb128 0x4
 3672 0557 00000000 		.4byte	.LASF93
 3673 055b 08       		.byte	0x8
 3674 055c AF       		.byte	0xaf
 3675 055d CE040000 		.4byte	0x4ce
 3676 0561 04       		.uleb128 0x4
 3677 0562 7F010000 		.4byte	.LASF94
 3678 0566 0A       		.byte	0xa
 3679 0567 16       		.byte	0x16
 3680 0568 6C000000 		.4byte	0x6c
 3681 056c 14       		.uleb128 0x14
 3682 056d 2C020000 		.4byte	.LASF99
 3683 0571 18       		.byte	0x18
 3684 0572 0A       		.byte	0xa
 3685 0573 2D       		.byte	0x2d
 3686 0574 BF050000 		.4byte	0x5bf
 3687 0578 0D       		.uleb128 0xd
 3688 0579 B9040000 		.4byte	.LASF95
 3689 057d 0A       		.byte	0xa
 3690 057e 2F       		.byte	0x2f
 3691 057f BF050000 		.4byte	0x5bf
 3692 0583 00       		.byte	0
 3693 0584 15       		.uleb128 0x15
 3694 0585 5F6B00   		.ascii	"_k\000"
 3695 0588 0A       		.byte	0xa
 3696 0589 30       		.byte	0x30
 3697 058a 25000000 		.4byte	0x25
 3698 058e 04       		.byte	0x4
 3699 058f 0D       		.uleb128 0xd
 3700 0590 DC090000 		.4byte	.LASF96
 3701 0594 0A       		.byte	0xa
ARM GAS  /tmp/ccqzbxJl.s 			page 93


 3702 0595 30       		.byte	0x30
 3703 0596 25000000 		.4byte	0x25
 3704 059a 08       		.byte	0x8
 3705 059b 0D       		.uleb128 0xd
 3706 059c 84070000 		.4byte	.LASF97
 3707 05a0 0A       		.byte	0xa
 3708 05a1 30       		.byte	0x30
 3709 05a2 25000000 		.4byte	0x25
 3710 05a6 0C       		.byte	0xc
 3711 05a7 0D       		.uleb128 0xd
 3712 05a8 55030000 		.4byte	.LASF98
 3713 05ac 0A       		.byte	0xa
 3714 05ad 30       		.byte	0x30
 3715 05ae 25000000 		.4byte	0x25
 3716 05b2 10       		.byte	0x10
 3717 05b3 15       		.uleb128 0x15
 3718 05b4 5F7800   		.ascii	"_x\000"
 3719 05b7 0A       		.byte	0xa
 3720 05b8 31       		.byte	0x31
 3721 05b9 C5050000 		.4byte	0x5c5
 3722 05bd 14       		.byte	0x14
 3723 05be 00       		.byte	0
 3724 05bf 16       		.uleb128 0x16
 3725 05c0 04       		.byte	0x4
 3726 05c1 6C050000 		.4byte	0x56c
 3727 05c5 08       		.uleb128 0x8
 3728 05c6 61050000 		.4byte	0x561
 3729 05ca D5050000 		.4byte	0x5d5
 3730 05ce 09       		.uleb128 0x9
 3731 05cf AD000000 		.4byte	0xad
 3732 05d3 00       		.byte	0
 3733 05d4 00       		.byte	0
 3734 05d5 14       		.uleb128 0x14
 3735 05d6 2B0A0000 		.4byte	.LASF100
 3736 05da 24       		.byte	0x24
 3737 05db 0A       		.byte	0xa
 3738 05dc 35       		.byte	0x35
 3739 05dd 4E060000 		.4byte	0x64e
 3740 05e1 0D       		.uleb128 0xd
 3741 05e2 35040000 		.4byte	.LASF101
 3742 05e6 0A       		.byte	0xa
 3743 05e7 37       		.byte	0x37
 3744 05e8 25000000 		.4byte	0x25
 3745 05ec 00       		.byte	0
 3746 05ed 0D       		.uleb128 0xd
 3747 05ee E8020000 		.4byte	.LASF102
 3748 05f2 0A       		.byte	0xa
 3749 05f3 38       		.byte	0x38
 3750 05f4 25000000 		.4byte	0x25
 3751 05f8 04       		.byte	0x4
 3752 05f9 0D       		.uleb128 0xd
 3753 05fa 6E020000 		.4byte	.LASF103
 3754 05fe 0A       		.byte	0xa
 3755 05ff 39       		.byte	0x39
 3756 0600 25000000 		.4byte	0x25
 3757 0604 08       		.byte	0x8
 3758 0605 0D       		.uleb128 0xd
ARM GAS  /tmp/ccqzbxJl.s 			page 94


 3759 0606 8D050000 		.4byte	.LASF104
 3760 060a 0A       		.byte	0xa
 3761 060b 3A       		.byte	0x3a
 3762 060c 25000000 		.4byte	0x25
 3763 0610 0C       		.byte	0xc
 3764 0611 0D       		.uleb128 0xd
 3765 0612 9D070000 		.4byte	.LASF105
 3766 0616 0A       		.byte	0xa
 3767 0617 3B       		.byte	0x3b
 3768 0618 25000000 		.4byte	0x25
 3769 061c 10       		.byte	0x10
 3770 061d 0D       		.uleb128 0xd
 3771 061e 82090000 		.4byte	.LASF106
 3772 0622 0A       		.byte	0xa
 3773 0623 3C       		.byte	0x3c
 3774 0624 25000000 		.4byte	0x25
 3775 0628 14       		.byte	0x14
 3776 0629 0D       		.uleb128 0xd
 3777 062a 34020000 		.4byte	.LASF107
 3778 062e 0A       		.byte	0xa
 3779 062f 3D       		.byte	0x3d
 3780 0630 25000000 		.4byte	0x25
 3781 0634 18       		.byte	0x18
 3782 0635 0D       		.uleb128 0xd
 3783 0636 7A040000 		.4byte	.LASF108
 3784 063a 0A       		.byte	0xa
 3785 063b 3E       		.byte	0x3e
 3786 063c 25000000 		.4byte	0x25
 3787 0640 1C       		.byte	0x1c
 3788 0641 0D       		.uleb128 0xd
 3789 0642 41070000 		.4byte	.LASF109
 3790 0646 0A       		.byte	0xa
 3791 0647 3F       		.byte	0x3f
 3792 0648 25000000 		.4byte	0x25
 3793 064c 20       		.byte	0x20
 3794 064d 00       		.byte	0
 3795 064e 17       		.uleb128 0x17
 3796 064f 4C000000 		.4byte	.LASF110
 3797 0653 0801     		.2byte	0x108
 3798 0655 0A       		.byte	0xa
 3799 0656 48       		.byte	0x48
 3800 0657 8E060000 		.4byte	0x68e
 3801 065b 0D       		.uleb128 0xd
 3802 065c 2B0D0000 		.4byte	.LASF111
 3803 0660 0A       		.byte	0xa
 3804 0661 49       		.byte	0x49
 3805 0662 8E060000 		.4byte	0x68e
 3806 0666 00       		.byte	0
 3807 0667 0D       		.uleb128 0xd
 3808 0668 C50A0000 		.4byte	.LASF112
 3809 066c 0A       		.byte	0xa
 3810 066d 4A       		.byte	0x4a
 3811 066e 8E060000 		.4byte	0x68e
 3812 0672 80       		.byte	0x80
 3813 0673 0E       		.uleb128 0xe
 3814 0674 920D0000 		.4byte	.LASF113
 3815 0678 0A       		.byte	0xa
ARM GAS  /tmp/ccqzbxJl.s 			page 95


 3816 0679 4C       		.byte	0x4c
 3817 067a 61050000 		.4byte	0x561
 3818 067e 0001     		.2byte	0x100
 3819 0680 0E       		.uleb128 0xe
 3820 0681 F80D0000 		.4byte	.LASF114
 3821 0685 0A       		.byte	0xa
 3822 0686 4F       		.byte	0x4f
 3823 0687 61050000 		.4byte	0x561
 3824 068b 0401     		.2byte	0x104
 3825 068d 00       		.byte	0
 3826 068e 08       		.uleb128 0x8
 3827 068f AB000000 		.4byte	0xab
 3828 0693 9E060000 		.4byte	0x69e
 3829 0697 09       		.uleb128 0x9
 3830 0698 AD000000 		.4byte	0xad
 3831 069c 1F       		.byte	0x1f
 3832 069d 00       		.byte	0
 3833 069e 17       		.uleb128 0x17
 3834 069f 42080000 		.4byte	.LASF115
 3835 06a3 9001     		.2byte	0x190
 3836 06a5 0A       		.byte	0xa
 3837 06a6 5B       		.byte	0x5b
 3838 06a7 DC060000 		.4byte	0x6dc
 3839 06ab 0D       		.uleb128 0xd
 3840 06ac B9040000 		.4byte	.LASF95
 3841 06b0 0A       		.byte	0xa
 3842 06b1 5C       		.byte	0x5c
 3843 06b2 DC060000 		.4byte	0x6dc
 3844 06b6 00       		.byte	0
 3845 06b7 0D       		.uleb128 0xd
 3846 06b8 68070000 		.4byte	.LASF116
 3847 06bc 0A       		.byte	0xa
 3848 06bd 5D       		.byte	0x5d
 3849 06be 25000000 		.4byte	0x25
 3850 06c2 04       		.byte	0x4
 3851 06c3 0D       		.uleb128 0xd
 3852 06c4 E9010000 		.4byte	.LASF117
 3853 06c8 0A       		.byte	0xa
 3854 06c9 5F       		.byte	0x5f
 3855 06ca E2060000 		.4byte	0x6e2
 3856 06ce 08       		.byte	0x8
 3857 06cf 0D       		.uleb128 0xd
 3858 06d0 4C000000 		.4byte	.LASF110
 3859 06d4 0A       		.byte	0xa
 3860 06d5 60       		.byte	0x60
 3861 06d6 4E060000 		.4byte	0x64e
 3862 06da 88       		.byte	0x88
 3863 06db 00       		.byte	0
 3864 06dc 16       		.uleb128 0x16
 3865 06dd 04       		.byte	0x4
 3866 06de 9E060000 		.4byte	0x69e
 3867 06e2 08       		.uleb128 0x8
 3868 06e3 F2060000 		.4byte	0x6f2
 3869 06e7 F2060000 		.4byte	0x6f2
 3870 06eb 09       		.uleb128 0x9
 3871 06ec AD000000 		.4byte	0xad
 3872 06f0 1F       		.byte	0x1f
ARM GAS  /tmp/ccqzbxJl.s 			page 96


 3873 06f1 00       		.byte	0
 3874 06f2 16       		.uleb128 0x16
 3875 06f3 04       		.byte	0x4
 3876 06f4 F8060000 		.4byte	0x6f8
 3877 06f8 18       		.uleb128 0x18
 3878 06f9 14       		.uleb128 0x14
 3879 06fa 4A0C0000 		.4byte	.LASF118
 3880 06fe 08       		.byte	0x8
 3881 06ff 0A       		.byte	0xa
 3882 0700 73       		.byte	0x73
 3883 0701 1E070000 		.4byte	0x71e
 3884 0705 0D       		.uleb128 0xd
 3885 0706 92060000 		.4byte	.LASF119
 3886 070a 0A       		.byte	0xa
 3887 070b 74       		.byte	0x74
 3888 070c 1E070000 		.4byte	0x71e
 3889 0710 00       		.byte	0
 3890 0711 0D       		.uleb128 0xd
 3891 0712 9B0D0000 		.4byte	.LASF120
 3892 0716 0A       		.byte	0xa
 3893 0717 75       		.byte	0x75
 3894 0718 25000000 		.4byte	0x25
 3895 071c 04       		.byte	0x4
 3896 071d 00       		.byte	0
 3897 071e 16       		.uleb128 0x16
 3898 071f 04       		.byte	0x4
 3899 0720 3A000000 		.4byte	0x3a
 3900 0724 14       		.uleb128 0x14
 3901 0725 4D030000 		.4byte	.LASF121
 3902 0729 68       		.byte	0x68
 3903 072a 0A       		.byte	0xa
 3904 072b B3       		.byte	0xb3
 3905 072c 4E080000 		.4byte	0x84e
 3906 0730 15       		.uleb128 0x15
 3907 0731 5F7000   		.ascii	"_p\000"
 3908 0734 0A       		.byte	0xa
 3909 0735 B4       		.byte	0xb4
 3910 0736 1E070000 		.4byte	0x71e
 3911 073a 00       		.byte	0
 3912 073b 15       		.uleb128 0x15
 3913 073c 5F7200   		.ascii	"_r\000"
 3914 073f 0A       		.byte	0xa
 3915 0740 B5       		.byte	0xb5
 3916 0741 25000000 		.4byte	0x25
 3917 0745 04       		.byte	0x4
 3918 0746 15       		.uleb128 0x15
 3919 0747 5F7700   		.ascii	"_w\000"
 3920 074a 0A       		.byte	0xa
 3921 074b B6       		.byte	0xb6
 3922 074c 25000000 		.4byte	0x25
 3923 0750 08       		.byte	0x8
 3924 0751 0D       		.uleb128 0xd
 3925 0752 17010000 		.4byte	.LASF122
 3926 0756 0A       		.byte	0xa
 3927 0757 B7       		.byte	0xb7
 3928 0758 41000000 		.4byte	0x41
 3929 075c 0C       		.byte	0xc
ARM GAS  /tmp/ccqzbxJl.s 			page 97


 3930 075d 0D       		.uleb128 0xd
 3931 075e CE060000 		.4byte	.LASF123
 3932 0762 0A       		.byte	0xa
 3933 0763 B8       		.byte	0xb8
 3934 0764 41000000 		.4byte	0x41
 3935 0768 0E       		.byte	0xe
 3936 0769 15       		.uleb128 0x15
 3937 076a 5F626600 		.ascii	"_bf\000"
 3938 076e 0A       		.byte	0xa
 3939 076f B9       		.byte	0xb9
 3940 0770 F9060000 		.4byte	0x6f9
 3941 0774 10       		.byte	0x10
 3942 0775 0D       		.uleb128 0xd
 3943 0776 0E010000 		.4byte	.LASF124
 3944 077a 0A       		.byte	0xa
 3945 077b BA       		.byte	0xba
 3946 077c 25000000 		.4byte	0x25
 3947 0780 18       		.byte	0x18
 3948 0781 0D       		.uleb128 0xd
 3949 0782 06020000 		.4byte	.LASF125
 3950 0786 0A       		.byte	0xa
 3951 0787 C1       		.byte	0xc1
 3952 0788 AB000000 		.4byte	0xab
 3953 078c 1C       		.byte	0x1c
 3954 078d 0D       		.uleb128 0xd
 3955 078e 74010000 		.4byte	.LASF126
 3956 0792 0A       		.byte	0xa
 3957 0793 C3       		.byte	0xc3
 3958 0794 BB090000 		.4byte	0x9bb
 3959 0798 20       		.byte	0x20
 3960 0799 0D       		.uleb128 0xd
 3961 079a D8070000 		.4byte	.LASF127
 3962 079e 0A       		.byte	0xa
 3963 079f C5       		.byte	0xc5
 3964 07a0 E5090000 		.4byte	0x9e5
 3965 07a4 24       		.byte	0x24
 3966 07a5 0D       		.uleb128 0xd
 3967 07a6 2B0E0000 		.4byte	.LASF128
 3968 07aa 0A       		.byte	0xa
 3969 07ab C8       		.byte	0xc8
 3970 07ac 090A0000 		.4byte	0xa09
 3971 07b0 28       		.byte	0x28
 3972 07b1 0D       		.uleb128 0xd
 3973 07b2 1C060000 		.4byte	.LASF129
 3974 07b6 0A       		.byte	0xa
 3975 07b7 C9       		.byte	0xc9
 3976 07b8 230A0000 		.4byte	0xa23
 3977 07bc 2C       		.byte	0x2c
 3978 07bd 15       		.uleb128 0x15
 3979 07be 5F756200 		.ascii	"_ub\000"
 3980 07c2 0A       		.byte	0xa
 3981 07c3 CC       		.byte	0xcc
 3982 07c4 F9060000 		.4byte	0x6f9
 3983 07c8 30       		.byte	0x30
 3984 07c9 15       		.uleb128 0x15
 3985 07ca 5F757000 		.ascii	"_up\000"
 3986 07ce 0A       		.byte	0xa
ARM GAS  /tmp/ccqzbxJl.s 			page 98


 3987 07cf CD       		.byte	0xcd
 3988 07d0 1E070000 		.4byte	0x71e
 3989 07d4 38       		.byte	0x38
 3990 07d5 15       		.uleb128 0x15
 3991 07d6 5F757200 		.ascii	"_ur\000"
 3992 07da 0A       		.byte	0xa
 3993 07db CE       		.byte	0xce
 3994 07dc 25000000 		.4byte	0x25
 3995 07e0 3C       		.byte	0x3c
 3996 07e1 0D       		.uleb128 0xd
 3997 07e2 AC030000 		.4byte	.LASF130
 3998 07e6 0A       		.byte	0xa
 3999 07e7 D1       		.byte	0xd1
 4000 07e8 290A0000 		.4byte	0xa29
 4001 07ec 40       		.byte	0x40
 4002 07ed 0D       		.uleb128 0xd
 4003 07ee BD0D0000 		.4byte	.LASF131
 4004 07f2 0A       		.byte	0xa
 4005 07f3 D2       		.byte	0xd2
 4006 07f4 390A0000 		.4byte	0xa39
 4007 07f8 43       		.byte	0x43
 4008 07f9 15       		.uleb128 0x15
 4009 07fa 5F6C6200 		.ascii	"_lb\000"
 4010 07fe 0A       		.byte	0xa
 4011 07ff D5       		.byte	0xd5
 4012 0800 F9060000 		.4byte	0x6f9
 4013 0804 44       		.byte	0x44
 4014 0805 0D       		.uleb128 0xd
 4015 0806 170A0000 		.4byte	.LASF132
 4016 080a 0A       		.byte	0xa
 4017 080b D8       		.byte	0xd8
 4018 080c 25000000 		.4byte	0x25
 4019 0810 4C       		.byte	0x4c
 4020 0811 0D       		.uleb128 0xd
 4021 0812 A4030000 		.4byte	.LASF133
 4022 0816 0A       		.byte	0xa
 4023 0817 D9       		.byte	0xd9
 4024 0818 D9040000 		.4byte	0x4d9
 4025 081c 50       		.byte	0x50
 4026 081d 0D       		.uleb128 0xd
 4027 081e 62090000 		.4byte	.LASF134
 4028 0822 0A       		.byte	0xa
 4029 0823 DC       		.byte	0xdc
 4030 0824 6C080000 		.4byte	0x86c
 4031 0828 54       		.byte	0x54
 4032 0829 0D       		.uleb128 0xd
 4033 082a 440A0000 		.4byte	.LASF135
 4034 082e 0A       		.byte	0xa
 4035 082f E0       		.byte	0xe0
 4036 0830 56050000 		.4byte	0x556
 4037 0834 58       		.byte	0x58
 4038 0835 0D       		.uleb128 0xd
 4039 0836 6B010000 		.4byte	.LASF136
 4040 083a 0A       		.byte	0xa
 4041 083b E2       		.byte	0xe2
 4042 083c 4B050000 		.4byte	0x54b
 4043 0840 5C       		.byte	0x5c
ARM GAS  /tmp/ccqzbxJl.s 			page 99


 4044 0841 0D       		.uleb128 0xd
 4045 0842 E80D0000 		.4byte	.LASF137
 4046 0846 0A       		.byte	0xa
 4047 0847 E3       		.byte	0xe3
 4048 0848 25000000 		.4byte	0x25
 4049 084c 64       		.byte	0x64
 4050 084d 00       		.byte	0
 4051 084e 19       		.uleb128 0x19
 4052 084f 25000000 		.4byte	0x25
 4053 0853 6C080000 		.4byte	0x86c
 4054 0857 1A       		.uleb128 0x1a
 4055 0858 6C080000 		.4byte	0x86c
 4056 085c 1A       		.uleb128 0x1a
 4057 085d AB000000 		.4byte	0xab
 4058 0861 1A       		.uleb128 0x1a
 4059 0862 A9090000 		.4byte	0x9a9
 4060 0866 1A       		.uleb128 0x1a
 4061 0867 25000000 		.4byte	0x25
 4062 086b 00       		.byte	0
 4063 086c 16       		.uleb128 0x16
 4064 086d 04       		.byte	0x4
 4065 086e 77080000 		.4byte	0x877
 4066 0872 06       		.uleb128 0x6
 4067 0873 6C080000 		.4byte	0x86c
 4068 0877 1B       		.uleb128 0x1b
 4069 0878 5B0D0000 		.4byte	.LASF138
 4070 087c 2804     		.2byte	0x428
 4071 087e 0A       		.byte	0xa
 4072 087f 3802     		.2byte	0x238
 4073 0881 A9090000 		.4byte	0x9a9
 4074 0885 1C       		.uleb128 0x1c
 4075 0886 28010000 		.4byte	.LASF139
 4076 088a 0A       		.byte	0xa
 4077 088b 3A02     		.2byte	0x23a
 4078 088d 25000000 		.4byte	0x25
 4079 0891 00       		.byte	0
 4080 0892 1C       		.uleb128 0x1c
 4081 0893 88020000 		.4byte	.LASF140
 4082 0897 0A       		.byte	0xa
 4083 0898 3F02     		.2byte	0x23f
 4084 089a 900A0000 		.4byte	0xa90
 4085 089e 04       		.byte	0x4
 4086 089f 1C       		.uleb128 0x1c
 4087 08a0 D9010000 		.4byte	.LASF141
 4088 08a4 0A       		.byte	0xa
 4089 08a5 3F02     		.2byte	0x23f
 4090 08a7 900A0000 		.4byte	0xa90
 4091 08ab 08       		.byte	0x8
 4092 08ac 1C       		.uleb128 0x1c
 4093 08ad 4D0E0000 		.4byte	.LASF142
 4094 08b1 0A       		.byte	0xa
 4095 08b2 3F02     		.2byte	0x23f
 4096 08b4 900A0000 		.4byte	0xa90
 4097 08b8 0C       		.byte	0xc
 4098 08b9 1C       		.uleb128 0x1c
 4099 08ba 84040000 		.4byte	.LASF143
 4100 08be 0A       		.byte	0xa
ARM GAS  /tmp/ccqzbxJl.s 			page 100


 4101 08bf 4102     		.2byte	0x241
 4102 08c1 25000000 		.4byte	0x25
 4103 08c5 10       		.byte	0x10
 4104 08c6 1C       		.uleb128 0x1c
 4105 08c7 D0030000 		.4byte	.LASF144
 4106 08cb 0A       		.byte	0xa
 4107 08cc 4202     		.2byte	0x242
 4108 08ce 720C0000 		.4byte	0xc72
 4109 08d2 14       		.byte	0x14
 4110 08d3 1C       		.uleb128 0x1c
 4111 08d4 FC090000 		.4byte	.LASF145
 4112 08d8 0A       		.byte	0xa
 4113 08d9 4402     		.2byte	0x244
 4114 08db 25000000 		.4byte	0x25
 4115 08df 30       		.byte	0x30
 4116 08e0 1C       		.uleb128 0x1c
 4117 08e1 02090000 		.4byte	.LASF146
 4118 08e5 0A       		.byte	0xa
 4119 08e6 4502     		.2byte	0x245
 4120 08e8 DF090000 		.4byte	0x9df
 4121 08ec 34       		.byte	0x34
 4122 08ed 1C       		.uleb128 0x1c
 4123 08ee 2C060000 		.4byte	.LASF147
 4124 08f2 0A       		.byte	0xa
 4125 08f3 4702     		.2byte	0x247
 4126 08f5 25000000 		.4byte	0x25
 4127 08f9 38       		.byte	0x38
 4128 08fa 1C       		.uleb128 0x1c
 4129 08fb D4060000 		.4byte	.LASF148
 4130 08ff 0A       		.byte	0xa
 4131 0900 4902     		.2byte	0x249
 4132 0902 8D0C0000 		.4byte	0xc8d
 4133 0906 3C       		.byte	0x3c
 4134 0907 1C       		.uleb128 0x1c
 4135 0908 3E020000 		.4byte	.LASF149
 4136 090c 0A       		.byte	0xa
 4137 090d 4C02     		.2byte	0x24c
 4138 090f BF050000 		.4byte	0x5bf
 4139 0913 40       		.byte	0x40
 4140 0914 1C       		.uleb128 0x1c
 4141 0915 FB050000 		.4byte	.LASF150
 4142 0919 0A       		.byte	0xa
 4143 091a 4D02     		.2byte	0x24d
 4144 091c 25000000 		.4byte	0x25
 4145 0920 44       		.byte	0x44
 4146 0921 1C       		.uleb128 0x1c
 4147 0922 3A050000 		.4byte	.LASF151
 4148 0926 0A       		.byte	0xa
 4149 0927 4E02     		.2byte	0x24e
 4150 0929 BF050000 		.4byte	0x5bf
 4151 092d 48       		.byte	0x48
 4152 092e 1C       		.uleb128 0x1c
 4153 092f 98060000 		.4byte	.LASF152
 4154 0933 0A       		.byte	0xa
 4155 0934 4F02     		.2byte	0x24f
 4156 0936 930C0000 		.4byte	0xc93
 4157 093a 4C       		.byte	0x4c
ARM GAS  /tmp/ccqzbxJl.s 			page 101


 4158 093b 1C       		.uleb128 0x1c
 4159 093c D4090000 		.4byte	.LASF153
 4160 0940 0A       		.byte	0xa
 4161 0941 5202     		.2byte	0x252
 4162 0943 25000000 		.4byte	0x25
 4163 0947 50       		.byte	0x50
 4164 0948 1C       		.uleb128 0x1c
 4165 0949 F30A0000 		.4byte	.LASF154
 4166 094d 0A       		.byte	0xa
 4167 094e 5302     		.2byte	0x253
 4168 0950 A9090000 		.4byte	0x9a9
 4169 0954 54       		.byte	0x54
 4170 0955 1C       		.uleb128 0x1c
 4171 0956 CF090000 		.4byte	.LASF155
 4172 095a 0A       		.byte	0xa
 4173 095b 7602     		.2byte	0x276
 4174 095d 500C0000 		.4byte	0xc50
 4175 0961 58       		.byte	0x58
 4176 0962 1D       		.uleb128 0x1d
 4177 0963 42080000 		.4byte	.LASF115
 4178 0967 0A       		.byte	0xa
 4179 0968 7A02     		.2byte	0x27a
 4180 096a DC060000 		.4byte	0x6dc
 4181 096e 4801     		.2byte	0x148
 4182 0970 1D       		.uleb128 0x1d
 4183 0971 220E0000 		.4byte	.LASF156
 4184 0975 0A       		.byte	0xa
 4185 0976 7B02     		.2byte	0x27b
 4186 0978 9E060000 		.4byte	0x69e
 4187 097c 4C01     		.2byte	0x14c
 4188 097e 1D       		.uleb128 0x1d
 4189 097f 97050000 		.4byte	.LASF157
 4190 0983 0A       		.byte	0xa
 4191 0984 7F02     		.2byte	0x27f
 4192 0986 A40C0000 		.4byte	0xca4
 4193 098a DC02     		.2byte	0x2dc
 4194 098c 1D       		.uleb128 0x1d
 4195 098d B40C0000 		.4byte	.LASF158
 4196 0991 0A       		.byte	0xa
 4197 0992 8402     		.2byte	0x284
 4198 0994 550A0000 		.4byte	0xa55
 4199 0998 E002     		.2byte	0x2e0
 4200 099a 1D       		.uleb128 0x1d
 4201 099b AB080000 		.4byte	.LASF159
 4202 099f 0A       		.byte	0xa
 4203 09a0 8502     		.2byte	0x285
 4204 09a2 B00C0000 		.4byte	0xcb0
 4205 09a6 EC02     		.2byte	0x2ec
 4206 09a8 00       		.byte	0
 4207 09a9 16       		.uleb128 0x16
 4208 09aa 04       		.byte	0x4
 4209 09ab AF090000 		.4byte	0x9af
 4210 09af 03       		.uleb128 0x3
 4211 09b0 01       		.byte	0x1
 4212 09b1 08       		.byte	0x8
 4213 09b2 80050000 		.4byte	.LASF160
 4214 09b6 06       		.uleb128 0x6
ARM GAS  /tmp/ccqzbxJl.s 			page 102


 4215 09b7 AF090000 		.4byte	0x9af
 4216 09bb 16       		.uleb128 0x16
 4217 09bc 04       		.byte	0x4
 4218 09bd 4E080000 		.4byte	0x84e
 4219 09c1 19       		.uleb128 0x19
 4220 09c2 25000000 		.4byte	0x25
 4221 09c6 DF090000 		.4byte	0x9df
 4222 09ca 1A       		.uleb128 0x1a
 4223 09cb 6C080000 		.4byte	0x86c
 4224 09cf 1A       		.uleb128 0x1a
 4225 09d0 AB000000 		.4byte	0xab
 4226 09d4 1A       		.uleb128 0x1a
 4227 09d5 DF090000 		.4byte	0x9df
 4228 09d9 1A       		.uleb128 0x1a
 4229 09da 25000000 		.4byte	0x25
 4230 09de 00       		.byte	0
 4231 09df 16       		.uleb128 0x16
 4232 09e0 04       		.byte	0x4
 4233 09e1 B6090000 		.4byte	0x9b6
 4234 09e5 16       		.uleb128 0x16
 4235 09e6 04       		.byte	0x4
 4236 09e7 C1090000 		.4byte	0x9c1
 4237 09eb 19       		.uleb128 0x19
 4238 09ec E4040000 		.4byte	0x4e4
 4239 09f0 090A0000 		.4byte	0xa09
 4240 09f4 1A       		.uleb128 0x1a
 4241 09f5 6C080000 		.4byte	0x86c
 4242 09f9 1A       		.uleb128 0x1a
 4243 09fa AB000000 		.4byte	0xab
 4244 09fe 1A       		.uleb128 0x1a
 4245 09ff E4040000 		.4byte	0x4e4
 4246 0a03 1A       		.uleb128 0x1a
 4247 0a04 25000000 		.4byte	0x25
 4248 0a08 00       		.byte	0
 4249 0a09 16       		.uleb128 0x16
 4250 0a0a 04       		.byte	0x4
 4251 0a0b EB090000 		.4byte	0x9eb
 4252 0a0f 19       		.uleb128 0x19
 4253 0a10 25000000 		.4byte	0x25
 4254 0a14 230A0000 		.4byte	0xa23
 4255 0a18 1A       		.uleb128 0x1a
 4256 0a19 6C080000 		.4byte	0x86c
 4257 0a1d 1A       		.uleb128 0x1a
 4258 0a1e AB000000 		.4byte	0xab
 4259 0a22 00       		.byte	0
 4260 0a23 16       		.uleb128 0x16
 4261 0a24 04       		.byte	0x4
 4262 0a25 0F0A0000 		.4byte	0xa0f
 4263 0a29 08       		.uleb128 0x8
 4264 0a2a 3A000000 		.4byte	0x3a
 4265 0a2e 390A0000 		.4byte	0xa39
 4266 0a32 09       		.uleb128 0x9
 4267 0a33 AD000000 		.4byte	0xad
 4268 0a37 02       		.byte	0x2
 4269 0a38 00       		.byte	0
 4270 0a39 08       		.uleb128 0x8
 4271 0a3a 3A000000 		.4byte	0x3a
ARM GAS  /tmp/ccqzbxJl.s 			page 103


 4272 0a3e 490A0000 		.4byte	0xa49
 4273 0a42 09       		.uleb128 0x9
 4274 0a43 AD000000 		.4byte	0xad
 4275 0a47 00       		.byte	0
 4276 0a48 00       		.byte	0
 4277 0a49 10       		.uleb128 0x10
 4278 0a4a 8B030000 		.4byte	.LASF161
 4279 0a4e 0A       		.byte	0xa
 4280 0a4f 1D01     		.2byte	0x11d
 4281 0a51 24070000 		.4byte	0x724
 4282 0a55 1E       		.uleb128 0x1e
 4283 0a56 700C0000 		.4byte	.LASF162
 4284 0a5a 0C       		.byte	0xc
 4285 0a5b 0A       		.byte	0xa
 4286 0a5c 2101     		.2byte	0x121
 4287 0a5e 8A0A0000 		.4byte	0xa8a
 4288 0a62 1C       		.uleb128 0x1c
 4289 0a63 B9040000 		.4byte	.LASF95
 4290 0a67 0A       		.byte	0xa
 4291 0a68 2301     		.2byte	0x123
 4292 0a6a 8A0A0000 		.4byte	0xa8a
 4293 0a6e 00       		.byte	0
 4294 0a6f 1C       		.uleb128 0x1c
 4295 0a70 910A0000 		.4byte	.LASF163
 4296 0a74 0A       		.byte	0xa
 4297 0a75 2401     		.2byte	0x124
 4298 0a77 25000000 		.4byte	0x25
 4299 0a7b 04       		.byte	0x4
 4300 0a7c 1C       		.uleb128 0x1c
 4301 0a7d 5E0E0000 		.4byte	.LASF164
 4302 0a81 0A       		.byte	0xa
 4303 0a82 2501     		.2byte	0x125
 4304 0a84 900A0000 		.4byte	0xa90
 4305 0a88 08       		.byte	0x8
 4306 0a89 00       		.byte	0
 4307 0a8a 16       		.uleb128 0x16
 4308 0a8b 04       		.byte	0x4
 4309 0a8c 550A0000 		.4byte	0xa55
 4310 0a90 16       		.uleb128 0x16
 4311 0a91 04       		.byte	0x4
 4312 0a92 490A0000 		.4byte	0xa49
 4313 0a96 1E       		.uleb128 0x1e
 4314 0a97 45030000 		.4byte	.LASF165
 4315 0a9b 0E       		.byte	0xe
 4316 0a9c 0A       		.byte	0xa
 4317 0a9d 3D01     		.2byte	0x13d
 4318 0a9f CB0A0000 		.4byte	0xacb
 4319 0aa3 1C       		.uleb128 0x1c
 4320 0aa4 000E0000 		.4byte	.LASF166
 4321 0aa8 0A       		.byte	0xa
 4322 0aa9 3E01     		.2byte	0x13e
 4323 0aab CB0A0000 		.4byte	0xacb
 4324 0aaf 00       		.byte	0
 4325 0ab0 1C       		.uleb128 0x1c
 4326 0ab1 A2060000 		.4byte	.LASF167
 4327 0ab5 0A       		.byte	0xa
 4328 0ab6 3F01     		.2byte	0x13f
ARM GAS  /tmp/ccqzbxJl.s 			page 104


 4329 0ab8 CB0A0000 		.4byte	0xacb
 4330 0abc 06       		.byte	0x6
 4331 0abd 1C       		.uleb128 0x1c
 4332 0abe A8060000 		.4byte	.LASF168
 4333 0ac2 0A       		.byte	0xa
 4334 0ac3 4001     		.2byte	0x140
 4335 0ac5 48000000 		.4byte	0x48
 4336 0ac9 0C       		.byte	0xc
 4337 0aca 00       		.byte	0
 4338 0acb 08       		.uleb128 0x8
 4339 0acc 48000000 		.4byte	0x48
 4340 0ad0 DB0A0000 		.4byte	0xadb
 4341 0ad4 09       		.uleb128 0x9
 4342 0ad5 AD000000 		.4byte	0xad
 4343 0ad9 02       		.byte	0x2
 4344 0ada 00       		.byte	0
 4345 0adb 1F       		.uleb128 0x1f
 4346 0adc D0       		.byte	0xd0
 4347 0add 0A       		.byte	0xa
 4348 0ade 5702     		.2byte	0x257
 4349 0ae0 DC0B0000 		.4byte	0xbdc
 4350 0ae4 1C       		.uleb128 0x1c
 4351 0ae5 C30D0000 		.4byte	.LASF169
 4352 0ae9 0A       		.byte	0xa
 4353 0aea 5902     		.2byte	0x259
 4354 0aec 2C000000 		.4byte	0x2c
 4355 0af0 00       		.byte	0
 4356 0af1 1C       		.uleb128 0x1c
 4357 0af2 C90C0000 		.4byte	.LASF170
 4358 0af6 0A       		.byte	0xa
 4359 0af7 5A02     		.2byte	0x25a
 4360 0af9 A9090000 		.4byte	0x9a9
 4361 0afd 04       		.byte	0x4
 4362 0afe 1C       		.uleb128 0x1c
 4363 0aff 38030000 		.4byte	.LASF171
 4364 0b03 0A       		.byte	0xa
 4365 0b04 5B02     		.2byte	0x25b
 4366 0b06 DC0B0000 		.4byte	0xbdc
 4367 0b0a 08       		.byte	0x8
 4368 0b0b 1C       		.uleb128 0x1c
 4369 0b0c AD090000 		.4byte	.LASF172
 4370 0b10 0A       		.byte	0xa
 4371 0b11 5C02     		.2byte	0x25c
 4372 0b13 D5050000 		.4byte	0x5d5
 4373 0b17 24       		.byte	0x24
 4374 0b18 1C       		.uleb128 0x1c
 4375 0b19 6D060000 		.4byte	.LASF173
 4376 0b1d 0A       		.byte	0xa
 4377 0b1e 5D02     		.2byte	0x25d
 4378 0b20 25000000 		.4byte	0x25
 4379 0b24 48       		.byte	0x48
 4380 0b25 1C       		.uleb128 0x1c
 4381 0b26 170E0000 		.4byte	.LASF174
 4382 0b2a 0A       		.byte	0xa
 4383 0b2b 5E02     		.2byte	0x25e
 4384 0b2d 7A000000 		.4byte	0x7a
 4385 0b31 50       		.byte	0x50
ARM GAS  /tmp/ccqzbxJl.s 			page 105


 4386 0b32 1C       		.uleb128 0x1c
 4387 0b33 7A010000 		.4byte	.LASF175
 4388 0b37 0A       		.byte	0xa
 4389 0b38 5F02     		.2byte	0x25f
 4390 0b3a 960A0000 		.4byte	0xa96
 4391 0b3e 58       		.byte	0x58
 4392 0b3f 1C       		.uleb128 0x1c
 4393 0b40 62050000 		.4byte	.LASF176
 4394 0b44 0A       		.byte	0xa
 4395 0b45 6002     		.2byte	0x260
 4396 0b47 4B050000 		.4byte	0x54b
 4397 0b4b 68       		.byte	0x68
 4398 0b4c 1C       		.uleb128 0x1c
 4399 0b4d D60C0000 		.4byte	.LASF177
 4400 0b51 0A       		.byte	0xa
 4401 0b52 6102     		.2byte	0x261
 4402 0b54 4B050000 		.4byte	0x54b
 4403 0b58 70       		.byte	0x70
 4404 0b59 1C       		.uleb128 0x1c
 4405 0b5a A80D0000 		.4byte	.LASF178
 4406 0b5e 0A       		.byte	0xa
 4407 0b5f 6202     		.2byte	0x262
 4408 0b61 4B050000 		.4byte	0x54b
 4409 0b65 78       		.byte	0x78
 4410 0b66 1C       		.uleb128 0x1c
 4411 0b67 E4090000 		.4byte	.LASF179
 4412 0b6b 0A       		.byte	0xa
 4413 0b6c 6302     		.2byte	0x263
 4414 0b6e EC0B0000 		.4byte	0xbec
 4415 0b72 80       		.byte	0x80
 4416 0b73 1C       		.uleb128 0x1c
 4417 0b74 C5000000 		.4byte	.LASF180
 4418 0b78 0A       		.byte	0xa
 4419 0b79 6402     		.2byte	0x264
 4420 0b7b FC0B0000 		.4byte	0xbfc
 4421 0b7f 88       		.byte	0x88
 4422 0b80 1C       		.uleb128 0x1c
 4423 0b81 BC0C0000 		.4byte	.LASF181
 4424 0b85 0A       		.byte	0xa
 4425 0b86 6502     		.2byte	0x265
 4426 0b88 25000000 		.4byte	0x25
 4427 0b8c A0       		.byte	0xa0
 4428 0b8d 1C       		.uleb128 0x1c
 4429 0b8e 8C010000 		.4byte	.LASF182
 4430 0b92 0A       		.byte	0xa
 4431 0b93 6602     		.2byte	0x266
 4432 0b95 4B050000 		.4byte	0x54b
 4433 0b99 A4       		.byte	0xa4
 4434 0b9a 1C       		.uleb128 0x1c
 4435 0b9b A1050000 		.4byte	.LASF183
 4436 0b9f 0A       		.byte	0xa
 4437 0ba0 6702     		.2byte	0x267
 4438 0ba2 4B050000 		.4byte	0x54b
 4439 0ba6 AC       		.byte	0xac
 4440 0ba7 1C       		.uleb128 0x1c
 4441 0ba8 04030000 		.4byte	.LASF184
 4442 0bac 0A       		.byte	0xa
ARM GAS  /tmp/ccqzbxJl.s 			page 106


 4443 0bad 6802     		.2byte	0x268
 4444 0baf 4B050000 		.4byte	0x54b
 4445 0bb3 B4       		.byte	0xb4
 4446 0bb4 1C       		.uleb128 0x1c
 4447 0bb5 BF060000 		.4byte	.LASF185
 4448 0bb9 0A       		.byte	0xa
 4449 0bba 6902     		.2byte	0x269
 4450 0bbc 4B050000 		.4byte	0x54b
 4451 0bc0 BC       		.byte	0xbc
 4452 0bc1 1C       		.uleb128 0x1c
 4453 0bc2 51050000 		.4byte	.LASF186
 4454 0bc6 0A       		.byte	0xa
 4455 0bc7 6A02     		.2byte	0x26a
 4456 0bc9 4B050000 		.4byte	0x54b
 4457 0bcd C4       		.byte	0xc4
 4458 0bce 1C       		.uleb128 0x1c
 4459 0bcf 92030000 		.4byte	.LASF187
 4460 0bd3 0A       		.byte	0xa
 4461 0bd4 6B02     		.2byte	0x26b
 4462 0bd6 25000000 		.4byte	0x25
 4463 0bda CC       		.byte	0xcc
 4464 0bdb 00       		.byte	0
 4465 0bdc 08       		.uleb128 0x8
 4466 0bdd AF090000 		.4byte	0x9af
 4467 0be1 EC0B0000 		.4byte	0xbec
 4468 0be5 09       		.uleb128 0x9
 4469 0be6 AD000000 		.4byte	0xad
 4470 0bea 19       		.byte	0x19
 4471 0beb 00       		.byte	0
 4472 0bec 08       		.uleb128 0x8
 4473 0bed AF090000 		.4byte	0x9af
 4474 0bf1 FC0B0000 		.4byte	0xbfc
 4475 0bf5 09       		.uleb128 0x9
 4476 0bf6 AD000000 		.4byte	0xad
 4477 0bfa 07       		.byte	0x7
 4478 0bfb 00       		.byte	0
 4479 0bfc 08       		.uleb128 0x8
 4480 0bfd AF090000 		.4byte	0x9af
 4481 0c01 0C0C0000 		.4byte	0xc0c
 4482 0c05 09       		.uleb128 0x9
 4483 0c06 AD000000 		.4byte	0xad
 4484 0c0a 17       		.byte	0x17
 4485 0c0b 00       		.byte	0
 4486 0c0c 1F       		.uleb128 0x1f
 4487 0c0d F0       		.byte	0xf0
 4488 0c0e 0A       		.byte	0xa
 4489 0c0f 7002     		.2byte	0x270
 4490 0c11 300C0000 		.4byte	0xc30
 4491 0c15 1C       		.uleb128 0x1c
 4492 0c16 FD020000 		.4byte	.LASF188
 4493 0c1a 0A       		.byte	0xa
 4494 0c1b 7302     		.2byte	0x273
 4495 0c1d 300C0000 		.4byte	0xc30
 4496 0c21 00       		.byte	0
 4497 0c22 1C       		.uleb128 0x1c
 4498 0c23 550E0000 		.4byte	.LASF189
 4499 0c27 0A       		.byte	0xa
ARM GAS  /tmp/ccqzbxJl.s 			page 107


 4500 0c28 7402     		.2byte	0x274
 4501 0c2a 400C0000 		.4byte	0xc40
 4502 0c2e 78       		.byte	0x78
 4503 0c2f 00       		.byte	0
 4504 0c30 08       		.uleb128 0x8
 4505 0c31 1E070000 		.4byte	0x71e
 4506 0c35 400C0000 		.4byte	0xc40
 4507 0c39 09       		.uleb128 0x9
 4508 0c3a AD000000 		.4byte	0xad
 4509 0c3e 1D       		.byte	0x1d
 4510 0c3f 00       		.byte	0
 4511 0c40 08       		.uleb128 0x8
 4512 0c41 2C000000 		.4byte	0x2c
 4513 0c45 500C0000 		.4byte	0xc50
 4514 0c49 09       		.uleb128 0x9
 4515 0c4a AD000000 		.4byte	0xad
 4516 0c4e 1D       		.byte	0x1d
 4517 0c4f 00       		.byte	0
 4518 0c50 20       		.uleb128 0x20
 4519 0c51 F0       		.byte	0xf0
 4520 0c52 0A       		.byte	0xa
 4521 0c53 5502     		.2byte	0x255
 4522 0c55 720C0000 		.4byte	0xc72
 4523 0c59 21       		.uleb128 0x21
 4524 0c5a 5B0D0000 		.4byte	.LASF138
 4525 0c5e 0A       		.byte	0xa
 4526 0c5f 6C02     		.2byte	0x26c
 4527 0c61 DB0A0000 		.4byte	0xadb
 4528 0c65 21       		.uleb128 0x21
 4529 0c66 BC090000 		.4byte	.LASF190
 4530 0c6a 0A       		.byte	0xa
 4531 0c6b 7502     		.2byte	0x275
 4532 0c6d 0C0C0000 		.4byte	0xc0c
 4533 0c71 00       		.byte	0
 4534 0c72 08       		.uleb128 0x8
 4535 0c73 AF090000 		.4byte	0x9af
 4536 0c77 820C0000 		.4byte	0xc82
 4537 0c7b 09       		.uleb128 0x9
 4538 0c7c AD000000 		.4byte	0xad
 4539 0c80 18       		.byte	0x18
 4540 0c81 00       		.byte	0
 4541 0c82 22       		.uleb128 0x22
 4542 0c83 8D0C0000 		.4byte	0xc8d
 4543 0c87 1A       		.uleb128 0x1a
 4544 0c88 6C080000 		.4byte	0x86c
 4545 0c8c 00       		.byte	0
 4546 0c8d 16       		.uleb128 0x16
 4547 0c8e 04       		.byte	0x4
 4548 0c8f 820C0000 		.4byte	0xc82
 4549 0c93 16       		.uleb128 0x16
 4550 0c94 04       		.byte	0x4
 4551 0c95 BF050000 		.4byte	0x5bf
 4552 0c99 22       		.uleb128 0x22
 4553 0c9a A40C0000 		.4byte	0xca4
 4554 0c9e 1A       		.uleb128 0x1a
 4555 0c9f 25000000 		.4byte	0x25
 4556 0ca3 00       		.byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 108


 4557 0ca4 16       		.uleb128 0x16
 4558 0ca5 04       		.byte	0x4
 4559 0ca6 AA0C0000 		.4byte	0xcaa
 4560 0caa 16       		.uleb128 0x16
 4561 0cab 04       		.byte	0x4
 4562 0cac 990C0000 		.4byte	0xc99
 4563 0cb0 08       		.uleb128 0x8
 4564 0cb1 490A0000 		.4byte	0xa49
 4565 0cb5 C00C0000 		.4byte	0xcc0
 4566 0cb9 09       		.uleb128 0x9
 4567 0cba AD000000 		.4byte	0xad
 4568 0cbe 02       		.byte	0x2
 4569 0cbf 00       		.byte	0
 4570 0cc0 0A       		.uleb128 0xa
 4571 0cc1 F1020000 		.4byte	.LASF191
 4572 0cc5 0A       		.byte	0xa
 4573 0cc6 FD02     		.2byte	0x2fd
 4574 0cc8 6C080000 		.4byte	0x86c
 4575 0ccc 0A       		.uleb128 0xa
 4576 0ccd 6F090000 		.4byte	.LASF192
 4577 0cd1 0A       		.byte	0xa
 4578 0cd2 FE02     		.2byte	0x2fe
 4579 0cd4 72080000 		.4byte	0x872
 4580 0cd8 0B       		.uleb128 0xb
 4581 0cd9 70040000 		.4byte	.LASF193
 4582 0cdd 0B       		.byte	0xb
 4583 0cde 5F       		.byte	0x5f
 4584 0cdf A9090000 		.4byte	0x9a9
 4585 0ce3 0B       		.uleb128 0xb
 4586 0ce4 0E020000 		.4byte	.LASF194
 4587 0ce8 0C       		.byte	0xc
 4588 0ce9 8F       		.byte	0x8f
 4589 0cea F50C0000 		.4byte	0xcf5
 4590 0cee 03       		.uleb128 0x3
 4591 0cef 01       		.byte	0x1
 4592 0cf0 02       		.byte	0x2
 4593 0cf1 89040000 		.4byte	.LASF195
 4594 0cf5 05       		.uleb128 0x5
 4595 0cf6 EE0C0000 		.4byte	0xcee
 4596 0cfa 23       		.uleb128 0x23
 4597 0cfb 700A0000 		.4byte	.LASF196
 4598 0cff 0C       		.byte	0xc
 4599 0d00 94       		.byte	0x94
 4600 0d01 9C000000 		.4byte	0x9c
 4601 0d05 05       		.uleb128 0x5
 4602 0d06 03       		.byte	0x3
 4603 0d07 00000000 		.4byte	cpu_irq_critical_section_counter
 4604 0d0b 23       		.uleb128 0x23
 4605 0d0c E6030000 		.4byte	.LASF197
 4606 0d10 0C       		.byte	0xc
 4607 0d11 95       		.byte	0x95
 4608 0d12 F50C0000 		.4byte	0xcf5
 4609 0d16 05       		.uleb128 0x5
 4610 0d17 03       		.byte	0x3
 4611 0d18 00000000 		.4byte	cpu_irq_prev_interrupt_state
 4612 0d1c 03       		.uleb128 0x3
 4613 0d1d 04       		.byte	0x4
ARM GAS  /tmp/ccqzbxJl.s 			page 109


 4614 0d1e 04       		.byte	0x4
 4615 0d1f DA020000 		.4byte	.LASF198
 4616 0d23 03       		.uleb128 0x3
 4617 0d24 08       		.byte	0x8
 4618 0d25 04       		.byte	0x4
 4619 0d26 A10D0000 		.4byte	.LASF199
 4620 0d2a 24       		.uleb128 0x24
 4621 0d2b 310E0000 		.4byte	.LASF209
 4622 0d2f 04       		.byte	0x4
 4623 0d30 2C000000 		.4byte	0x2c
 4624 0d34 0D       		.byte	0xd
 4625 0d35 50       		.byte	0x50
 4626 0d36 800D0000 		.4byte	0xd80
 4627 0d3a 25       		.uleb128 0x25
 4628 0d3b 1F080000 		.4byte	.LASF200
 4629 0d3f 00       		.byte	0
 4630 0d40 26       		.uleb128 0x26
 4631 0d41 BE050000 		.4byte	.LASF201
 4632 0d45 00000008 		.4byte	0x8000000
 4633 0d49 26       		.uleb128 0x26
 4634 0d4a CB050000 		.4byte	.LASF202
 4635 0d4e 00000010 		.4byte	0x10000000
 4636 0d52 26       		.uleb128 0x26
 4637 0d53 D8050000 		.4byte	.LASF203
 4638 0d57 00000018 		.4byte	0x18000000
 4639 0d5b 26       		.uleb128 0x26
 4640 0d5c E5050000 		.4byte	.LASF204
 4641 0d60 00000020 		.4byte	0x20000000
 4642 0d64 26       		.uleb128 0x26
 4643 0d65 3A000000 		.4byte	.LASF205
 4644 0d69 00000028 		.4byte	0x28000000
 4645 0d6d 26       		.uleb128 0x26
 4646 0d6e 3E040000 		.4byte	.LASF206
 4647 0d72 00000030 		.4byte	0x30000000
 4648 0d76 26       		.uleb128 0x26
 4649 0d77 4B040000 		.4byte	.LASF207
 4650 0d7b 00000038 		.4byte	0x38000000
 4651 0d7f 00       		.byte	0
 4652 0d80 04       		.uleb128 0x4
 4653 0d81 C5030000 		.4byte	.LASF208
 4654 0d85 0D       		.byte	0xd
 4655 0d86 5B       		.byte	0x5b
 4656 0d87 2A0D0000 		.4byte	0xd2a
 4657 0d8b 06       		.uleb128 0x6
 4658 0d8c 800D0000 		.4byte	0xd80
 4659 0d90 24       		.uleb128 0x24
 4660 0d91 EA000000 		.4byte	.LASF210
 4661 0d95 01       		.byte	0x1
 4662 0d96 3A000000 		.4byte	0x3a
 4663 0d9a 0D       		.byte	0xd
 4664 0d9b D8       		.byte	0xd8
 4665 0d9c AD0D0000 		.4byte	0xdad
 4666 0da0 25       		.uleb128 0x25
 4667 0da1 E20A0000 		.4byte	.LASF211
 4668 0da5 00       		.byte	0
 4669 0da6 25       		.uleb128 0x25
 4670 0da7 63000000 		.4byte	.LASF212
ARM GAS  /tmp/ccqzbxJl.s 			page 110


 4671 0dab 01       		.byte	0x1
 4672 0dac 00       		.byte	0
 4673 0dad 27       		.uleb128 0x27
 4674 0dae D00D0000 		.4byte	.LASF213
 4675 0db2 01       		.byte	0x1
 4676 0db3 1304     		.2byte	0x413
 4677 0db5 91000000 		.4byte	0x91
 4678 0db9 05       		.uleb128 0x5
 4679 0dba 03       		.byte	0x3
 4680 0dbb 00000000 		.4byte	pio_capture_enable_flag
 4681 0dbf 28       		.uleb128 0x28
 4682 0dc0 9E000000 		.4byte	.LASF219
 4683 0dc4 01       		.byte	0x1
 4684 0dc5 9604     		.2byte	0x496
 4685 0dc7 00000000 		.4byte	.LFB191
 4686 0dcb 24000000 		.4byte	.LFE191-.LFB191
 4687 0dcf 01       		.uleb128 0x1
 4688 0dd0 9C       		.byte	0x9c
 4689 0dd1 020E0000 		.4byte	0xe02
 4690 0dd5 29       		.uleb128 0x29
 4691 0dd6 B2010000 		.4byte	.LASF214
 4692 0dda 01       		.byte	0x1
 4693 0ddb 9604     		.2byte	0x496
 4694 0ddd 020E0000 		.4byte	0xe02
 4695 0de1 01       		.uleb128 0x1
 4696 0de2 50       		.byte	0x50
 4697 0de3 29       		.uleb128 0x29
 4698 0de4 BD030000 		.4byte	.LASF215
 4699 0de8 01       		.byte	0x1
 4700 0de9 9604     		.2byte	0x496
 4701 0deb 91000000 		.4byte	0x91
 4702 0def 01       		.uleb128 0x1
 4703 0df0 51       		.byte	0x51
 4704 0df1 2A       		.uleb128 0x2a
 4705 0df2 87010000 		.4byte	.LASF216
 4706 0df6 01       		.byte	0x1
 4707 0df7 9704     		.2byte	0x497
 4708 0df9 900D0000 		.4byte	0xd90
 4709 0dfd 00000000 		.4byte	.LLST151
 4710 0e01 00       		.byte	0
 4711 0e02 16       		.uleb128 0x16
 4712 0e03 04       		.byte	0x4
 4713 0e04 BE040000 		.4byte	0x4be
 4714 0e08 2B       		.uleb128 0x2b
 4715 0e09 46020000 		.4byte	.LASF217
 4716 0e0d 01       		.byte	0x1
 4717 0e0e 7A04     		.2byte	0x47a
 4718 0e10 91000000 		.4byte	0x91
 4719 0e14 00000000 		.4byte	.LFB190
 4720 0e18 06000000 		.4byte	.LFE190-.LFB190
 4721 0e1c 01       		.uleb128 0x1
 4722 0e1d 9C       		.byte	0x9c
 4723 0e1e 330E0000 		.4byte	0xe33
 4724 0e22 2A       		.uleb128 0x2a
 4725 0e23 B2010000 		.4byte	.LASF214
 4726 0e27 01       		.byte	0x1
 4727 0e28 7A04     		.2byte	0x47a
ARM GAS  /tmp/ccqzbxJl.s 			page 111


 4728 0e2a 330E0000 		.4byte	0xe33
 4729 0e2e 21000000 		.4byte	.LLST150
 4730 0e32 00       		.byte	0
 4731 0e33 16       		.uleb128 0x16
 4732 0e34 04       		.byte	0x4
 4733 0e35 C9040000 		.4byte	0x4c9
 4734 0e39 2B       		.uleb128 0x2b
 4735 0e3a B8010000 		.4byte	.LASF218
 4736 0e3e 01       		.byte	0x1
 4737 0e3f 6E04     		.2byte	0x46e
 4738 0e41 91000000 		.4byte	0x91
 4739 0e45 00000000 		.4byte	.LFB189
 4740 0e49 06000000 		.4byte	.LFE189-.LFB189
 4741 0e4d 01       		.uleb128 0x1
 4742 0e4e 9C       		.byte	0x9c
 4743 0e4f 640E0000 		.4byte	0xe64
 4744 0e53 2A       		.uleb128 0x2a
 4745 0e54 B2010000 		.4byte	.LASF214
 4746 0e58 01       		.byte	0x1
 4747 0e59 6E04     		.2byte	0x46e
 4748 0e5b 330E0000 		.4byte	0xe33
 4749 0e5f 42000000 		.4byte	.LLST149
 4750 0e63 00       		.byte	0
 4751 0e64 28       		.uleb128 0x28
 4752 0e65 BC020000 		.4byte	.LASF220
 4753 0e69 01       		.byte	0x1
 4754 0e6a 6204     		.2byte	0x462
 4755 0e6c 00000000 		.4byte	.LFB188
 4756 0e70 06000000 		.4byte	.LFE188-.LFB188
 4757 0e74 01       		.uleb128 0x1
 4758 0e75 9C       		.byte	0x9c
 4759 0e76 970E0000 		.4byte	0xe97
 4760 0e7a 29       		.uleb128 0x29
 4761 0e7b B2010000 		.4byte	.LASF214
 4762 0e7f 01       		.byte	0x1
 4763 0e80 6204     		.2byte	0x462
 4764 0e82 020E0000 		.4byte	0xe02
 4765 0e86 01       		.uleb128 0x1
 4766 0e87 50       		.byte	0x50
 4767 0e88 29       		.uleb128 0x29
 4768 0e89 32000000 		.4byte	.LASF221
 4769 0e8d 01       		.byte	0x1
 4770 0e8e 6204     		.2byte	0x462
 4771 0e90 A6000000 		.4byte	0xa6
 4772 0e94 01       		.uleb128 0x1
 4773 0e95 51       		.byte	0x51
 4774 0e96 00       		.byte	0
 4775 0e97 28       		.uleb128 0x28
 4776 0e98 0E040000 		.4byte	.LASF222
 4777 0e9c 01       		.byte	0x1
 4778 0e9d 5604     		.2byte	0x456
 4779 0e9f 00000000 		.4byte	.LFB187
 4780 0ea3 0A000000 		.4byte	.LFE187-.LFB187
 4781 0ea7 01       		.uleb128 0x1
 4782 0ea8 9C       		.byte	0x9c
 4783 0ea9 CA0E0000 		.4byte	0xeca
 4784 0ead 29       		.uleb128 0x29
ARM GAS  /tmp/ccqzbxJl.s 			page 112


 4785 0eae B2010000 		.4byte	.LASF214
 4786 0eb2 01       		.byte	0x1
 4787 0eb3 5604     		.2byte	0x456
 4788 0eb5 020E0000 		.4byte	0xe02
 4789 0eb9 01       		.uleb128 0x1
 4790 0eba 50       		.byte	0x50
 4791 0ebb 29       		.uleb128 0x29
 4792 0ebc 32000000 		.4byte	.LASF221
 4793 0ec0 01       		.byte	0x1
 4794 0ec1 5604     		.2byte	0x456
 4795 0ec3 A6000000 		.4byte	0xa6
 4796 0ec7 01       		.uleb128 0x1
 4797 0ec8 51       		.byte	0x51
 4798 0ec9 00       		.byte	0
 4799 0eca 2B       		.uleb128 0x2b
 4800 0ecb F4060000 		.4byte	.LASF223
 4801 0ecf 01       		.byte	0x1
 4802 0ed0 4204     		.2byte	0x442
 4803 0ed2 91000000 		.4byte	0x91
 4804 0ed6 00000000 		.4byte	.LFB186
 4805 0eda 16000000 		.4byte	.LFE186-.LFB186
 4806 0ede 01       		.uleb128 0x1
 4807 0edf 9C       		.byte	0x9c
 4808 0ee0 030F0000 		.4byte	0xf03
 4809 0ee4 2A       		.uleb128 0x2a
 4810 0ee5 B2010000 		.4byte	.LASF214
 4811 0ee9 01       		.byte	0x1
 4812 0eea 4204     		.2byte	0x442
 4813 0eec 330E0000 		.4byte	0xe33
 4814 0ef0 63000000 		.4byte	.LLST148
 4815 0ef4 29       		.uleb128 0x29
 4816 0ef5 AD060000 		.4byte	.LASF224
 4817 0ef9 01       		.byte	0x1
 4818 0efa 4204     		.2byte	0x442
 4819 0efc 030F0000 		.4byte	0xf03
 4820 0f00 01       		.uleb128 0x1
 4821 0f01 51       		.byte	0x51
 4822 0f02 00       		.byte	0
 4823 0f03 16       		.uleb128 0x16
 4824 0f04 04       		.byte	0x4
 4825 0f05 91000000 		.4byte	0x91
 4826 0f09 28       		.uleb128 0x28
 4827 0f0a 300A0000 		.4byte	.LASF225
 4828 0f0e 01       		.byte	0x1
 4829 0f0f 3204     		.2byte	0x432
 4830 0f11 00000000 		.4byte	.LFB185
 4831 0f15 18000000 		.4byte	.LFE185-.LFB185
 4832 0f19 01       		.uleb128 0x1
 4833 0f1a 9C       		.byte	0x9c
 4834 0f1b 2E0F0000 		.4byte	0xf2e
 4835 0f1f 29       		.uleb128 0x29
 4836 0f20 B2010000 		.4byte	.LASF214
 4837 0f24 01       		.byte	0x1
 4838 0f25 3204     		.2byte	0x432
 4839 0f27 020E0000 		.4byte	0xe02
 4840 0f2b 01       		.uleb128 0x1
 4841 0f2c 50       		.byte	0x50
ARM GAS  /tmp/ccqzbxJl.s 			page 113


 4842 0f2d 00       		.byte	0
 4843 0f2e 28       		.uleb128 0x28
 4844 0f2f 1F050000 		.4byte	.LASF226
 4845 0f33 01       		.byte	0x1
 4846 0f34 2704     		.2byte	0x427
 4847 0f36 00000000 		.4byte	.LFB184
 4848 0f3a 18000000 		.4byte	.LFE184-.LFB184
 4849 0f3e 01       		.uleb128 0x1
 4850 0f3f 9C       		.byte	0x9c
 4851 0f40 530F0000 		.4byte	0xf53
 4852 0f44 29       		.uleb128 0x29
 4853 0f45 B2010000 		.4byte	.LASF214
 4854 0f49 01       		.byte	0x1
 4855 0f4a 2704     		.2byte	0x427
 4856 0f4c 020E0000 		.4byte	0xe02
 4857 0f50 01       		.uleb128 0x1
 4858 0f51 50       		.byte	0x50
 4859 0f52 00       		.byte	0
 4860 0f53 28       		.uleb128 0x28
 4861 0f54 56010000 		.4byte	.LASF227
 4862 0f58 01       		.byte	0x1
 4863 0f59 1C04     		.2byte	0x41c
 4864 0f5b 00000000 		.4byte	.LFB183
 4865 0f5f 0A000000 		.4byte	.LFE183-.LFB183
 4866 0f63 01       		.uleb128 0x1
 4867 0f64 9C       		.byte	0x9c
 4868 0f65 880F0000 		.4byte	0xf88
 4869 0f69 29       		.uleb128 0x29
 4870 0f6a B2010000 		.4byte	.LASF214
 4871 0f6e 01       		.byte	0x1
 4872 0f6f 1C04     		.2byte	0x41c
 4873 0f71 020E0000 		.4byte	0xe02
 4874 0f75 01       		.uleb128 0x1
 4875 0f76 50       		.byte	0x50
 4876 0f77 2A       		.uleb128 0x2a
 4877 0f78 60070000 		.4byte	.LASF228
 4878 0f7c 01       		.byte	0x1
 4879 0f7d 1C04     		.2byte	0x41c
 4880 0f7f 91000000 		.4byte	0x91
 4881 0f83 9D000000 		.4byte	.LLST147
 4882 0f87 00       		.byte	0
 4883 0f88 2B       		.uleb128 0x2b
 4884 0f89 94080000 		.4byte	.LASF229
 4885 0f8d 01       		.byte	0x1
 4886 0f8e 0B04     		.2byte	0x40b
 4887 0f90 91000000 		.4byte	0x91
 4888 0f94 00000000 		.4byte	.LFB182
 4889 0f98 0C000000 		.4byte	.LFE182-.LFB182
 4890 0f9c 01       		.uleb128 0x1
 4891 0f9d 9C       		.byte	0x9c
 4892 0f9e C30F0000 		.4byte	0xfc3
 4893 0fa2 2A       		.uleb128 0x2a
 4894 0fa3 760C0000 		.4byte	.LASF230
 4895 0fa7 01       		.byte	0x1
 4896 0fa8 0B04     		.2byte	0x40b
 4897 0faa 91000000 		.4byte	0x91
 4898 0fae BB000000 		.4byte	.LLST145
ARM GAS  /tmp/ccqzbxJl.s 			page 114


 4899 0fb2 2C       		.uleb128 0x2c
 4900 0fb3 32000000 		.4byte	.LASF221
 4901 0fb7 01       		.byte	0x1
 4902 0fb8 0D04     		.2byte	0x40d
 4903 0fba 91000000 		.4byte	0x91
 4904 0fbe DC000000 		.4byte	.LLST146
 4905 0fc2 00       		.byte	0
 4906 0fc3 2B       		.uleb128 0x2b
 4907 0fc4 76030000 		.4byte	.LASF231
 4908 0fc8 01       		.byte	0x1
 4909 0fc9 DD03     		.2byte	0x3dd
 4910 0fcb 91000000 		.4byte	0x91
 4911 0fcf 00000000 		.4byte	.LFB181
 4912 0fd3 14000000 		.4byte	.LFE181-.LFB181
 4913 0fd7 01       		.uleb128 0x1
 4914 0fd8 9C       		.byte	0x9c
 4915 0fd9 FE0F0000 		.4byte	0xffe
 4916 0fdd 2A       		.uleb128 0x2a
 4917 0fde 760C0000 		.4byte	.LASF230
 4918 0fe2 01       		.byte	0x1
 4919 0fe3 DD03     		.2byte	0x3dd
 4920 0fe5 91000000 		.4byte	0x91
 4921 0fe9 12010000 		.4byte	.LLST143
 4922 0fed 2C       		.uleb128 0x2c
 4923 0fee 510C0000 		.4byte	.LASF232
 4924 0ff2 01       		.byte	0x1
 4925 0ff3 DF03     		.2byte	0x3df
 4926 0ff5 91000000 		.4byte	0x91
 4927 0ff9 4C010000 		.4byte	.LLST144
 4928 0ffd 00       		.byte	0
 4929 0ffe 2D       		.uleb128 0x2d
 4930 0fff FC000000 		.4byte	.LASF287
 4931 1003 01       		.byte	0x1
 4932 1004 BA03     		.2byte	0x3ba
 4933 1006 020E0000 		.4byte	0xe02
 4934 100a 01       		.byte	0x1
 4935 100b 28100000 		.4byte	0x1028
 4936 100f 2E       		.uleb128 0x2e
 4937 1010 760C0000 		.4byte	.LASF230
 4938 1014 01       		.byte	0x1
 4939 1015 BA03     		.2byte	0x3ba
 4940 1017 91000000 		.4byte	0x91
 4941 101b 2F       		.uleb128 0x2f
 4942 101c B2010000 		.4byte	.LASF214
 4943 1020 01       		.byte	0x1
 4944 1021 BC03     		.2byte	0x3bc
 4945 1023 020E0000 		.4byte	0xe02
 4946 1027 00       		.byte	0
 4947 1028 28       		.uleb128 0x28
 4948 1029 400B0000 		.4byte	.LASF233
 4949 102d 01       		.byte	0x1
 4950 102e AB03     		.2byte	0x3ab
 4951 1030 00000000 		.4byte	.LFB179
 4952 1034 1C000000 		.4byte	.LFE179-.LFB179
 4953 1038 01       		.uleb128 0x1
 4954 1039 9C       		.byte	0x9c
 4955 103a 82100000 		.4byte	0x1082
ARM GAS  /tmp/ccqzbxJl.s 			page 115


 4956 103e 2A       		.uleb128 0x2a
 4957 103f 760C0000 		.4byte	.LASF230
 4958 1043 01       		.byte	0x1
 4959 1044 AB03     		.2byte	0x3ab
 4960 1046 91000000 		.4byte	0x91
 4961 104a 89010000 		.4byte	.LLST139
 4962 104e 2F       		.uleb128 0x2f
 4963 104f B2010000 		.4byte	.LASF214
 4964 1053 01       		.byte	0x1
 4965 1054 AD03     		.2byte	0x3ad
 4966 1056 020E0000 		.4byte	0xe02
 4967 105a 30       		.uleb128 0x30
 4968 105b FE0F0000 		.4byte	0xffe
 4969 105f 00000000 		.4byte	.LBB310
 4970 1063 20040000 		.4byte	.Ldebug_ranges0+0x420
 4971 1067 01       		.byte	0x1
 4972 1068 AD03     		.2byte	0x3ad
 4973 106a 31       		.uleb128 0x31
 4974 106b 0F100000 		.4byte	0x100f
 4975 106f AA010000 		.4byte	.LLST140
 4976 1073 32       		.uleb128 0x32
 4977 1074 20040000 		.4byte	.Ldebug_ranges0+0x420
 4978 1078 33       		.uleb128 0x33
 4979 1079 1B100000 		.4byte	0x101b
 4980 107d 01       		.uleb128 0x1
 4981 107e 53       		.byte	0x53
 4982 107f 00       		.byte	0
 4983 1080 00       		.byte	0
 4984 1081 00       		.byte	0
 4985 1082 28       		.uleb128 0x28
 4986 1083 570C0000 		.4byte	.LASF234
 4987 1087 01       		.byte	0x1
 4988 1088 9C03     		.2byte	0x39c
 4989 108a 00000000 		.4byte	.LFB178
 4990 108e 1C000000 		.4byte	.LFE178-.LFB178
 4991 1092 01       		.uleb128 0x1
 4992 1093 9C       		.byte	0x9c
 4993 1094 DC100000 		.4byte	0x10dc
 4994 1098 2A       		.uleb128 0x2a
 4995 1099 760C0000 		.4byte	.LASF230
 4996 109d 01       		.byte	0x1
 4997 109e 9C03     		.2byte	0x39c
 4998 10a0 91000000 		.4byte	0x91
 4999 10a4 CB010000 		.4byte	.LLST137
 5000 10a8 2F       		.uleb128 0x2f
 5001 10a9 B2010000 		.4byte	.LASF214
 5002 10ad 01       		.byte	0x1
 5003 10ae 9E03     		.2byte	0x39e
 5004 10b0 020E0000 		.4byte	0xe02
 5005 10b4 30       		.uleb128 0x30
 5006 10b5 FE0F0000 		.4byte	0xffe
 5007 10b9 00000000 		.4byte	.LBB304
 5008 10bd 00040000 		.4byte	.Ldebug_ranges0+0x400
 5009 10c1 01       		.byte	0x1
 5010 10c2 9E03     		.2byte	0x39e
 5011 10c4 31       		.uleb128 0x31
 5012 10c5 0F100000 		.4byte	0x100f
ARM GAS  /tmp/ccqzbxJl.s 			page 116


 5013 10c9 EC010000 		.4byte	.LLST138
 5014 10cd 32       		.uleb128 0x32
 5015 10ce 00040000 		.4byte	.Ldebug_ranges0+0x400
 5016 10d2 33       		.uleb128 0x33
 5017 10d3 1B100000 		.4byte	0x101b
 5018 10d7 01       		.uleb128 0x1
 5019 10d8 53       		.byte	0x53
 5020 10d9 00       		.byte	0
 5021 10da 00       		.byte	0
 5022 10db 00       		.byte	0
 5023 10dc 2B       		.uleb128 0x2b
 5024 10dd 9A010000 		.4byte	.LASF235
 5025 10e1 01       		.byte	0x1
 5026 10e2 6903     		.2byte	0x369
 5027 10e4 91000000 		.4byte	0x91
 5028 10e8 00000000 		.4byte	.LFB177
 5029 10ec 2A010000 		.4byte	.LFE177-.LFB177
 5030 10f0 01       		.uleb128 0x1
 5031 10f1 9C       		.byte	0x9c
 5032 10f2 D9130000 		.4byte	0x13d9
 5033 10f6 2A       		.uleb128 0x2a
 5034 10f7 B2010000 		.4byte	.LASF214
 5035 10fb 01       		.byte	0x1
 5036 10fc 6903     		.2byte	0x369
 5037 10fe 020E0000 		.4byte	0xe02
 5038 1102 0D020000 		.4byte	.LLST96
 5039 1106 29       		.uleb128 0x29
 5040 1107 32000000 		.4byte	.LASF221
 5041 110b 01       		.byte	0x1
 5042 110c 6A03     		.2byte	0x36a
 5043 110e 91000000 		.4byte	0x91
 5044 1112 01       		.uleb128 0x1
 5045 1113 51       		.byte	0x51
 5046 1114 2A       		.uleb128 0x2a
 5047 1115 0E0A0000 		.4byte	.LASF236
 5048 1119 01       		.byte	0x1
 5049 111a 6A03     		.2byte	0x36a
 5050 111c A6000000 		.4byte	0xa6
 5051 1120 2B020000 		.4byte	.LLST97
 5052 1124 34       		.uleb128 0x34
 5053 1125 461E0000 		.4byte	0x1e46
 5054 1129 3A000000 		.4byte	.LBB236
 5055 112d A0020000 		.4byte	.Ldebug_ranges0+0x2a0
 5056 1131 01       		.byte	0x1
 5057 1132 8203     		.2byte	0x382
 5058 1134 A7110000 		.4byte	0x11a7
 5059 1138 31       		.uleb128 0x31
 5060 1139 6B1E0000 		.4byte	0x1e6b
 5061 113d 7E020000 		.4byte	.LLST98
 5062 1141 31       		.uleb128 0x31
 5063 1142 5F1E0000 		.4byte	0x1e5f
 5064 1146 9C020000 		.4byte	.LLST99
 5065 114a 31       		.uleb128 0x31
 5066 114b 531E0000 		.4byte	0x1e53
 5067 114f BA020000 		.4byte	.LLST100
 5068 1153 34       		.uleb128 0x34
 5069 1154 881F0000 		.4byte	0x1f88
ARM GAS  /tmp/ccqzbxJl.s 			page 117


 5070 1158 3A000000 		.4byte	.LBB238
 5071 115c C0020000 		.4byte	.Ldebug_ranges0+0x2c0
 5072 1160 01       		.byte	0x1
 5073 1161 0F01     		.2byte	0x10f
 5074 1163 83110000 		.4byte	0x1183
 5075 1167 31       		.uleb128 0x31
 5076 1168 AA1F0000 		.4byte	0x1faa
 5077 116c D8020000 		.4byte	.LLST101
 5078 1170 31       		.uleb128 0x31
 5079 1171 9F1F0000 		.4byte	0x1f9f
 5080 1175 FE020000 		.4byte	.LLST102
 5081 1179 31       		.uleb128 0x31
 5082 117a 941F0000 		.4byte	0x1f94
 5083 117e 1C030000 		.4byte	.LLST103
 5084 1182 00       		.byte	0
 5085 1183 35       		.uleb128 0x35
 5086 1184 C1190000 		.4byte	0x19c1
 5087 1188 3C000000 		.4byte	.LBB242
 5088 118c 02000000 		.4byte	.LBE242-.LBB242
 5089 1190 01       		.byte	0x1
 5090 1191 0E01     		.2byte	0x10e
 5091 1193 31       		.uleb128 0x31
 5092 1194 DA190000 		.4byte	0x19da
 5093 1198 3A030000 		.4byte	.LLST104
 5094 119c 31       		.uleb128 0x31
 5095 119d CE190000 		.4byte	0x19ce
 5096 11a1 4D030000 		.4byte	.LLST105
 5097 11a5 00       		.byte	0
 5098 11a6 00       		.byte	0
 5099 11a7 34       		.uleb128 0x34
 5100 11a8 781E0000 		.4byte	0x1e78
 5101 11ac 5C000000 		.4byte	.LBB249
 5102 11b0 E0020000 		.4byte	.Ldebug_ranges0+0x2e0
 5103 11b4 01       		.byte	0x1
 5104 11b5 7303     		.2byte	0x373
 5105 11b7 E2110000 		.4byte	0x11e2
 5106 11bb 31       		.uleb128 0x31
 5107 11bc 9A1E0000 		.4byte	0x1e9a
 5108 11c0 60030000 		.4byte	.LLST106
 5109 11c4 31       		.uleb128 0x31
 5110 11c5 8F1E0000 		.4byte	0x1e8f
 5111 11c9 73030000 		.4byte	.LLST107
 5112 11cd 31       		.uleb128 0x31
 5113 11ce 841E0000 		.4byte	0x1e84
 5114 11d2 89030000 		.4byte	.LLST108
 5115 11d6 32       		.uleb128 0x32
 5116 11d7 E0020000 		.4byte	.Ldebug_ranges0+0x2e0
 5117 11db 36       		.uleb128 0x36
 5118 11dc 09200000 		.4byte	0x2009
 5119 11e0 00       		.byte	0
 5120 11e1 00       		.byte	0
 5121 11e2 34       		.uleb128 0x34
 5122 11e3 881F0000 		.4byte	0x1f88
 5123 11e7 6A000000 		.4byte	.LBB252
 5124 11eb F8020000 		.4byte	.Ldebug_ranges0+0x2f8
 5125 11ef 01       		.byte	0x1
 5126 11f0 7403     		.2byte	0x374
ARM GAS  /tmp/ccqzbxJl.s 			page 118


 5127 11f2 12120000 		.4byte	0x1212
 5128 11f6 31       		.uleb128 0x31
 5129 11f7 AA1F0000 		.4byte	0x1faa
 5130 11fb 9C030000 		.4byte	.LLST109
 5131 11ff 31       		.uleb128 0x31
 5132 1200 9F1F0000 		.4byte	0x1f9f
 5133 1204 B3030000 		.4byte	.LLST110
 5134 1208 31       		.uleb128 0x31
 5135 1209 941F0000 		.4byte	0x1f94
 5136 120d C6030000 		.4byte	.LLST111
 5137 1211 00       		.byte	0
 5138 1212 34       		.uleb128 0x34
 5139 1213 881F0000 		.4byte	0x1f88
 5140 1217 78000000 		.4byte	.LBB257
 5141 121b 10030000 		.4byte	.Ldebug_ranges0+0x310
 5142 121f 01       		.byte	0x1
 5143 1220 7903     		.2byte	0x379
 5144 1222 42120000 		.4byte	0x1242
 5145 1226 31       		.uleb128 0x31
 5146 1227 AA1F0000 		.4byte	0x1faa
 5147 122b D9030000 		.4byte	.LLST112
 5148 122f 31       		.uleb128 0x31
 5149 1230 9F1F0000 		.4byte	0x1f9f
 5150 1234 F0030000 		.4byte	.LLST113
 5151 1238 31       		.uleb128 0x31
 5152 1239 941F0000 		.4byte	0x1f94
 5153 123d 03040000 		.4byte	.LLST114
 5154 1241 00       		.byte	0
 5155 1242 34       		.uleb128 0x34
 5156 1243 781E0000 		.4byte	0x1e78
 5157 1247 7E000000 		.4byte	.LBB262
 5158 124b 38030000 		.4byte	.Ldebug_ranges0+0x338
 5159 124f 01       		.byte	0x1
 5160 1250 6F03     		.2byte	0x36f
 5161 1252 7D120000 		.4byte	0x127d
 5162 1256 31       		.uleb128 0x31
 5163 1257 9A1E0000 		.4byte	0x1e9a
 5164 125b 16040000 		.4byte	.LLST115
 5165 125f 31       		.uleb128 0x31
 5166 1260 8F1E0000 		.4byte	0x1e8f
 5167 1264 29040000 		.4byte	.LLST116
 5168 1268 31       		.uleb128 0x31
 5169 1269 841E0000 		.4byte	0x1e84
 5170 126d 3F040000 		.4byte	.LLST117
 5171 1271 32       		.uleb128 0x32
 5172 1272 38030000 		.4byte	.Ldebug_ranges0+0x338
 5173 1276 36       		.uleb128 0x36
 5174 1277 09200000 		.4byte	0x2009
 5175 127b 00       		.byte	0
 5176 127c 00       		.byte	0
 5177 127d 34       		.uleb128 0x34
 5178 127e 881F0000 		.4byte	0x1f88
 5179 1282 96000000 		.4byte	.LBB265
 5180 1286 50030000 		.4byte	.Ldebug_ranges0+0x350
 5181 128a 01       		.byte	0x1
 5182 128b 7003     		.2byte	0x370
 5183 128d AD120000 		.4byte	0x12ad
ARM GAS  /tmp/ccqzbxJl.s 			page 119


 5184 1291 31       		.uleb128 0x31
 5185 1292 AA1F0000 		.4byte	0x1faa
 5186 1296 52040000 		.4byte	.LLST118
 5187 129a 31       		.uleb128 0x31
 5188 129b 9F1F0000 		.4byte	0x1f9f
 5189 129f 69040000 		.4byte	.LLST119
 5190 12a3 31       		.uleb128 0x31
 5191 12a4 941F0000 		.4byte	0x1f94
 5192 12a8 7C040000 		.4byte	.LLST120
 5193 12ac 00       		.byte	0
 5194 12ad 34       		.uleb128 0x34
 5195 12ae 781E0000 		.4byte	0x1e78
 5196 12b2 A6000000 		.4byte	.LBB271
 5197 12b6 68030000 		.4byte	.Ldebug_ranges0+0x368
 5198 12ba 01       		.byte	0x1
 5199 12bb 7803     		.2byte	0x378
 5200 12bd E8120000 		.4byte	0x12e8
 5201 12c1 31       		.uleb128 0x31
 5202 12c2 9A1E0000 		.4byte	0x1e9a
 5203 12c6 8F040000 		.4byte	.LLST121
 5204 12ca 31       		.uleb128 0x31
 5205 12cb 8F1E0000 		.4byte	0x1e8f
 5206 12cf A2040000 		.4byte	.LLST122
 5207 12d3 31       		.uleb128 0x31
 5208 12d4 841E0000 		.4byte	0x1e84
 5209 12d8 B8040000 		.4byte	.LLST123
 5210 12dc 32       		.uleb128 0x32
 5211 12dd 68030000 		.4byte	.Ldebug_ranges0+0x368
 5212 12e1 36       		.uleb128 0x36
 5213 12e2 09200000 		.4byte	0x2009
 5214 12e6 00       		.byte	0
 5215 12e7 00       		.byte	0
 5216 12e8 34       		.uleb128 0x34
 5217 12e9 781E0000 		.4byte	0x1e78
 5218 12ed C2000000 		.4byte	.LBB277
 5219 12f1 80030000 		.4byte	.Ldebug_ranges0+0x380
 5220 12f5 01       		.byte	0x1
 5221 12f6 7C03     		.2byte	0x37c
 5222 12f8 23130000 		.4byte	0x1323
 5223 12fc 31       		.uleb128 0x31
 5224 12fd 9A1E0000 		.4byte	0x1e9a
 5225 1301 CB040000 		.4byte	.LLST124
 5226 1305 31       		.uleb128 0x31
 5227 1306 8F1E0000 		.4byte	0x1e8f
 5228 130a DE040000 		.4byte	.LLST125
 5229 130e 31       		.uleb128 0x31
 5230 130f 841E0000 		.4byte	0x1e84
 5231 1313 F4040000 		.4byte	.LLST126
 5232 1317 32       		.uleb128 0x32
 5233 1318 80030000 		.4byte	.Ldebug_ranges0+0x380
 5234 131c 36       		.uleb128 0x36
 5235 131d 09200000 		.4byte	0x2009
 5236 1321 00       		.byte	0
 5237 1322 00       		.byte	0
 5238 1323 34       		.uleb128 0x34
 5239 1324 881F0000 		.4byte	0x1f88
 5240 1328 C4000000 		.4byte	.LBB280
ARM GAS  /tmp/ccqzbxJl.s 			page 120


 5241 132c 98030000 		.4byte	.Ldebug_ranges0+0x398
 5242 1330 01       		.byte	0x1
 5243 1331 7D03     		.2byte	0x37d
 5244 1333 4F130000 		.4byte	0x134f
 5245 1337 37       		.uleb128 0x37
 5246 1338 AA1F0000 		.4byte	0x1faa
 5247 133c 31       		.uleb128 0x31
 5248 133d 9F1F0000 		.4byte	0x1f9f
 5249 1341 07050000 		.4byte	.LLST127
 5250 1345 31       		.uleb128 0x31
 5251 1346 941F0000 		.4byte	0x1f94
 5252 134a 25050000 		.4byte	.LLST128
 5253 134e 00       		.byte	0
 5254 134f 30       		.uleb128 0x30
 5255 1350 FC1D0000 		.4byte	0x1dfc
 5256 1354 E8000000 		.4byte	.LBB286
 5257 1358 B8030000 		.4byte	.Ldebug_ranges0+0x3b8
 5258 135c 01       		.byte	0x1
 5259 135d 8703     		.2byte	0x387
 5260 135f 31       		.uleb128 0x31
 5261 1360 391E0000 		.4byte	0x1e39
 5262 1364 43050000 		.4byte	.LLST129
 5263 1368 31       		.uleb128 0x31
 5264 1369 2D1E0000 		.4byte	0x1e2d
 5265 136d 7A050000 		.4byte	.LLST130
 5266 1371 31       		.uleb128 0x31
 5267 1372 211E0000 		.4byte	0x1e21
 5268 1376 CD050000 		.4byte	.LLST131
 5269 137a 31       		.uleb128 0x31
 5270 137b 151E0000 		.4byte	0x1e15
 5271 137f 29060000 		.4byte	.LLST132
 5272 1383 31       		.uleb128 0x31
 5273 1384 091E0000 		.4byte	0x1e09
 5274 1388 47060000 		.4byte	.LLST133
 5275 138c 34       		.uleb128 0x34
 5276 138d 881F0000 		.4byte	0x1f88
 5277 1391 E8000000 		.4byte	.LBB288
 5278 1395 E0030000 		.4byte	.Ldebug_ranges0+0x3e0
 5279 1399 01       		.byte	0x1
 5280 139a 4601     		.2byte	0x146
 5281 139c BC130000 		.4byte	0x13bc
 5282 13a0 31       		.uleb128 0x31
 5283 13a1 AA1F0000 		.4byte	0x1faa
 5284 13a5 65060000 		.4byte	.LLST134
 5285 13a9 31       		.uleb128 0x31
 5286 13aa 9F1F0000 		.4byte	0x1f9f
 5287 13ae 9C060000 		.4byte	.LLST135
 5288 13b2 31       		.uleb128 0x31
 5289 13b3 941F0000 		.4byte	0x1f94
 5290 13b7 BA060000 		.4byte	.LLST136
 5291 13bb 00       		.byte	0
 5292 13bc 35       		.uleb128 0x35
 5293 13bd C1190000 		.4byte	0x19c1
 5294 13c1 EA000000 		.4byte	.LBB292
 5295 13c5 02000000 		.4byte	.LBE292-.LBB292
 5296 13c9 01       		.byte	0x1
 5297 13ca 4501     		.2byte	0x145
ARM GAS  /tmp/ccqzbxJl.s 			page 121


 5298 13cc 37       		.uleb128 0x37
 5299 13cd DA190000 		.4byte	0x19da
 5300 13d1 37       		.uleb128 0x37
 5301 13d2 CE190000 		.4byte	0x19ce
 5302 13d6 00       		.byte	0
 5303 13d7 00       		.byte	0
 5304 13d8 00       		.byte	0
 5305 13d9 28       		.uleb128 0x28
 5306 13da 2D080000 		.4byte	.LASF237
 5307 13de 01       		.byte	0x1
 5308 13df 5403     		.2byte	0x354
 5309 13e1 00000000 		.4byte	.LFB176
 5310 13e5 0E000000 		.4byte	.LFE176-.LFB176
 5311 13e9 01       		.uleb128 0x1
 5312 13ea 9C       		.byte	0x9c
 5313 13eb 0C140000 		.4byte	0x140c
 5314 13ef 29       		.uleb128 0x29
 5315 13f0 B2010000 		.4byte	.LASF214
 5316 13f4 01       		.byte	0x1
 5317 13f5 5403     		.2byte	0x354
 5318 13f7 020E0000 		.4byte	0xe02
 5319 13fb 01       		.uleb128 0x1
 5320 13fc 50       		.byte	0x50
 5321 13fd 29       		.uleb128 0x29
 5322 13fe 32000000 		.4byte	.LASF221
 5323 1402 01       		.byte	0x1
 5324 1403 5403     		.2byte	0x354
 5325 1405 91000000 		.4byte	0x91
 5326 1409 01       		.uleb128 0x1
 5327 140a 51       		.byte	0x51
 5328 140b 00       		.byte	0
 5329 140c 38       		.uleb128 0x38
 5330 140d 18090000 		.4byte	.LASF238
 5331 1411 01       		.byte	0x1
 5332 1412 4803     		.2byte	0x348
 5333 1414 01       		.byte	0x1
 5334 1415 32140000 		.4byte	0x1432
 5335 1419 2E       		.uleb128 0x2e
 5336 141a B2010000 		.4byte	.LASF214
 5337 141e 01       		.byte	0x1
 5338 141f 4803     		.2byte	0x348
 5339 1421 020E0000 		.4byte	0xe02
 5340 1425 2E       		.uleb128 0x2e
 5341 1426 32000000 		.4byte	.LASF221
 5342 142a 01       		.byte	0x1
 5343 142b 4803     		.2byte	0x348
 5344 142d 91000000 		.4byte	0x91
 5345 1431 00       		.byte	0
 5346 1432 38       		.uleb128 0x38
 5347 1433 330C0000 		.4byte	.LASF239
 5348 1437 01       		.byte	0x1
 5349 1438 3C03     		.2byte	0x33c
 5350 143a 01       		.byte	0x1
 5351 143b 58140000 		.4byte	0x1458
 5352 143f 2E       		.uleb128 0x2e
 5353 1440 B2010000 		.4byte	.LASF214
 5354 1444 01       		.byte	0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 122


 5355 1445 3C03     		.2byte	0x33c
 5356 1447 020E0000 		.4byte	0xe02
 5357 144b 2E       		.uleb128 0x2e
 5358 144c 32000000 		.4byte	.LASF221
 5359 1450 01       		.byte	0x1
 5360 1451 3C03     		.2byte	0x33c
 5361 1453 91000000 		.4byte	0x91
 5362 1457 00       		.byte	0
 5363 1458 2B       		.uleb128 0x2b
 5364 1459 BF040000 		.4byte	.LASF240
 5365 145d 01       		.byte	0x1
 5366 145e 0503     		.2byte	0x305
 5367 1460 91000000 		.4byte	0x91
 5368 1464 00000000 		.4byte	.LFB173
 5369 1468 54010000 		.4byte	.LFE173-.LFB173
 5370 146c 01       		.uleb128 0x1
 5371 146d 9C       		.byte	0x9c
 5372 146e 5E170000 		.4byte	0x175e
 5373 1472 2A       		.uleb128 0x2a
 5374 1473 760C0000 		.4byte	.LASF230
 5375 1477 01       		.byte	0x1
 5376 1478 0503     		.2byte	0x305
 5377 147a 91000000 		.4byte	0x91
 5378 147e D8060000 		.4byte	.LLST55
 5379 1482 2A       		.uleb128 0x2a
 5380 1483 0E0A0000 		.4byte	.LASF236
 5381 1487 01       		.byte	0x1
 5382 1488 0503     		.2byte	0x305
 5383 148a A6000000 		.4byte	0xa6
 5384 148e 8F070000 		.4byte	.LLST56
 5385 1492 2F       		.uleb128 0x2f
 5386 1493 B2010000 		.4byte	.LASF214
 5387 1497 01       		.byte	0x1
 5388 1498 0703     		.2byte	0x307
 5389 149a 020E0000 		.4byte	0xe02
 5390 149e 34       		.uleb128 0x34
 5391 149f FE0F0000 		.4byte	0xffe
 5392 14a3 00000000 		.4byte	.LBB168
 5393 14a7 60010000 		.4byte	.Ldebug_ranges0+0x160
 5394 14ab 01       		.byte	0x1
 5395 14ac 0703     		.2byte	0x307
 5396 14ae C9140000 		.4byte	0x14c9
 5397 14b2 31       		.uleb128 0x31
 5398 14b3 0F100000 		.4byte	0x100f
 5399 14b7 FB070000 		.4byte	.LLST57
 5400 14bb 32       		.uleb128 0x32
 5401 14bc 60010000 		.4byte	.Ldebug_ranges0+0x160
 5402 14c0 33       		.uleb128 0x33
 5403 14c1 1B100000 		.4byte	0x101b
 5404 14c5 01       		.uleb128 0x1
 5405 14c6 53       		.byte	0x53
 5406 14c7 00       		.byte	0
 5407 14c8 00       		.byte	0
 5408 14c9 34       		.uleb128 0x34
 5409 14ca 461E0000 		.4byte	0x1e46
 5410 14ce 48000000 		.4byte	.LBB174
 5411 14d2 80010000 		.4byte	.Ldebug_ranges0+0x180
ARM GAS  /tmp/ccqzbxJl.s 			page 123


 5412 14d6 01       		.byte	0x1
 5413 14d7 2303     		.2byte	0x323
 5414 14d9 4C150000 		.4byte	0x154c
 5415 14dd 31       		.uleb128 0x31
 5416 14de 6B1E0000 		.4byte	0x1e6b
 5417 14e2 0E080000 		.4byte	.LLST58
 5418 14e6 31       		.uleb128 0x31
 5419 14e7 5F1E0000 		.4byte	0x1e5f
 5420 14eb 2C080000 		.4byte	.LLST59
 5421 14ef 31       		.uleb128 0x31
 5422 14f0 531E0000 		.4byte	0x1e53
 5423 14f4 4A080000 		.4byte	.LLST60
 5424 14f8 34       		.uleb128 0x34
 5425 14f9 881F0000 		.4byte	0x1f88
 5426 14fd 48000000 		.4byte	.LBB176
 5427 1501 A8010000 		.4byte	.Ldebug_ranges0+0x1a8
 5428 1505 01       		.byte	0x1
 5429 1506 0F01     		.2byte	0x10f
 5430 1508 28150000 		.4byte	0x1528
 5431 150c 31       		.uleb128 0x31
 5432 150d AA1F0000 		.4byte	0x1faa
 5433 1511 68080000 		.4byte	.LLST61
 5434 1515 31       		.uleb128 0x31
 5435 1516 9F1F0000 		.4byte	0x1f9f
 5436 151a 8E080000 		.4byte	.LLST62
 5437 151e 31       		.uleb128 0x31
 5438 151f 941F0000 		.4byte	0x1f94
 5439 1523 AC080000 		.4byte	.LLST63
 5440 1527 00       		.byte	0
 5441 1528 35       		.uleb128 0x35
 5442 1529 C1190000 		.4byte	0x19c1
 5443 152d 4E000000 		.4byte	.LBB180
 5444 1531 02000000 		.4byte	.LBE180-.LBB180
 5445 1535 01       		.byte	0x1
 5446 1536 0E01     		.2byte	0x10e
 5447 1538 31       		.uleb128 0x31
 5448 1539 DA190000 		.4byte	0x19da
 5449 153d CA080000 		.4byte	.LLST64
 5450 1541 31       		.uleb128 0x31
 5451 1542 CE190000 		.4byte	0x19ce
 5452 1546 DD080000 		.4byte	.LLST65
 5453 154a 00       		.byte	0
 5454 154b 00       		.byte	0
 5455 154c 34       		.uleb128 0x34
 5456 154d 881F0000 		.4byte	0x1f88
 5457 1551 74000000 		.4byte	.LBB189
 5458 1555 C8010000 		.4byte	.Ldebug_ranges0+0x1c8
 5459 1559 01       		.byte	0x1
 5460 155a 1203     		.2byte	0x312
 5461 155c 78150000 		.4byte	0x1578
 5462 1560 37       		.uleb128 0x37
 5463 1561 AA1F0000 		.4byte	0x1faa
 5464 1565 31       		.uleb128 0x31
 5465 1566 9F1F0000 		.4byte	0x1f9f
 5466 156a F0080000 		.4byte	.LLST66
 5467 156e 31       		.uleb128 0x31
 5468 156f 941F0000 		.4byte	0x1f94
ARM GAS  /tmp/ccqzbxJl.s 			page 124


 5469 1573 03090000 		.4byte	.LLST67
 5470 1577 00       		.byte	0
 5471 1578 39       		.uleb128 0x39
 5472 1579 781E0000 		.4byte	0x1e78
 5473 157d 7A000000 		.4byte	.LBB192
 5474 1581 1A000000 		.4byte	.LBE192-.LBB192
 5475 1585 01       		.byte	0x1
 5476 1586 1103     		.2byte	0x311
 5477 1588 B7150000 		.4byte	0x15b7
 5478 158c 31       		.uleb128 0x31
 5479 158d 9A1E0000 		.4byte	0x1e9a
 5480 1591 16090000 		.4byte	.LLST68
 5481 1595 31       		.uleb128 0x31
 5482 1596 8F1E0000 		.4byte	0x1e8f
 5483 159a 29090000 		.4byte	.LLST69
 5484 159e 31       		.uleb128 0x31
 5485 159f 841E0000 		.4byte	0x1e84
 5486 15a3 3F090000 		.4byte	.LLST70
 5487 15a7 3A       		.uleb128 0x3a
 5488 15a8 7A000000 		.4byte	.LBB193
 5489 15ac 1A000000 		.4byte	.LBE193-.LBB193
 5490 15b0 36       		.uleb128 0x36
 5491 15b1 09200000 		.4byte	0x2009
 5492 15b5 00       		.byte	0
 5493 15b6 00       		.byte	0
 5494 15b7 34       		.uleb128 0x34
 5495 15b8 881F0000 		.4byte	0x1f88
 5496 15bc 96000000 		.4byte	.LBB195
 5497 15c0 E0010000 		.4byte	.Ldebug_ranges0+0x1e0
 5498 15c4 01       		.byte	0x1
 5499 15c5 1D03     		.2byte	0x31d
 5500 15c7 E7150000 		.4byte	0x15e7
 5501 15cb 31       		.uleb128 0x31
 5502 15cc AA1F0000 		.4byte	0x1faa
 5503 15d0 52090000 		.4byte	.LLST71
 5504 15d4 31       		.uleb128 0x31
 5505 15d5 9F1F0000 		.4byte	0x1f9f
 5506 15d9 69090000 		.4byte	.LLST72
 5507 15dd 31       		.uleb128 0x31
 5508 15de 941F0000 		.4byte	0x1f94
 5509 15e2 7C090000 		.4byte	.LLST73
 5510 15e6 00       		.byte	0
 5511 15e7 34       		.uleb128 0x34
 5512 15e8 781E0000 		.4byte	0x1e78
 5513 15ec A6000000 		.4byte	.LBB200
 5514 15f0 08020000 		.4byte	.Ldebug_ranges0+0x208
 5515 15f4 01       		.byte	0x1
 5516 15f5 0C03     		.2byte	0x30c
 5517 15f7 22160000 		.4byte	0x1622
 5518 15fb 31       		.uleb128 0x31
 5519 15fc 9A1E0000 		.4byte	0x1e9a
 5520 1600 8F090000 		.4byte	.LLST74
 5521 1604 31       		.uleb128 0x31
 5522 1605 8F1E0000 		.4byte	0x1e8f
 5523 1609 A2090000 		.4byte	.LLST75
 5524 160d 31       		.uleb128 0x31
 5525 160e 841E0000 		.4byte	0x1e84
ARM GAS  /tmp/ccqzbxJl.s 			page 125


 5526 1612 B8090000 		.4byte	.LLST76
 5527 1616 32       		.uleb128 0x32
 5528 1617 08020000 		.4byte	.Ldebug_ranges0+0x208
 5529 161b 36       		.uleb128 0x36
 5530 161c 09200000 		.4byte	0x2009
 5531 1620 00       		.byte	0
 5532 1621 00       		.byte	0
 5533 1622 34       		.uleb128 0x34
 5534 1623 881F0000 		.4byte	0x1f88
 5535 1627 BE000000 		.4byte	.LBB203
 5536 162b 20020000 		.4byte	.Ldebug_ranges0+0x220
 5537 162f 01       		.byte	0x1
 5538 1630 0D03     		.2byte	0x30d
 5539 1632 52160000 		.4byte	0x1652
 5540 1636 31       		.uleb128 0x31
 5541 1637 AA1F0000 		.4byte	0x1faa
 5542 163b CB090000 		.4byte	.LLST77
 5543 163f 31       		.uleb128 0x31
 5544 1640 9F1F0000 		.4byte	0x1f9f
 5545 1644 E2090000 		.4byte	.LLST78
 5546 1648 31       		.uleb128 0x31
 5547 1649 941F0000 		.4byte	0x1f94
 5548 164d F5090000 		.4byte	.LLST79
 5549 1651 00       		.byte	0
 5550 1652 39       		.uleb128 0x39
 5551 1653 781E0000 		.4byte	0x1e78
 5552 1657 D4000000 		.4byte	.LBB209
 5553 165b 0C000000 		.4byte	.LBE209-.LBB209
 5554 165f 01       		.byte	0x1
 5555 1660 1703     		.2byte	0x317
 5556 1662 91160000 		.4byte	0x1691
 5557 1666 31       		.uleb128 0x31
 5558 1667 9A1E0000 		.4byte	0x1e9a
 5559 166b 080A0000 		.4byte	.LLST80
 5560 166f 31       		.uleb128 0x31
 5561 1670 8F1E0000 		.4byte	0x1e8f
 5562 1674 1B0A0000 		.4byte	.LLST81
 5563 1678 31       		.uleb128 0x31
 5564 1679 841E0000 		.4byte	0x1e84
 5565 167d 310A0000 		.4byte	.LLST82
 5566 1681 3A       		.uleb128 0x3a
 5567 1682 D4000000 		.4byte	.LBB210
 5568 1686 0C000000 		.4byte	.LBE210-.LBB210
 5569 168a 36       		.uleb128 0x36
 5570 168b 09200000 		.4byte	0x2009
 5571 168f 00       		.byte	0
 5572 1690 00       		.byte	0
 5573 1691 34       		.uleb128 0x34
 5574 1692 781E0000 		.4byte	0x1e78
 5575 1696 E0000000 		.4byte	.LBB211
 5576 169a 38020000 		.4byte	.Ldebug_ranges0+0x238
 5577 169e 01       		.byte	0x1
 5578 169f 1C03     		.2byte	0x31c
 5579 16a1 CC160000 		.4byte	0x16cc
 5580 16a5 31       		.uleb128 0x31
 5581 16a6 9A1E0000 		.4byte	0x1e9a
 5582 16aa 440A0000 		.4byte	.LLST83
ARM GAS  /tmp/ccqzbxJl.s 			page 126


 5583 16ae 31       		.uleb128 0x31
 5584 16af 8F1E0000 		.4byte	0x1e8f
 5585 16b3 570A0000 		.4byte	.LLST84
 5586 16b7 31       		.uleb128 0x31
 5587 16b8 841E0000 		.4byte	0x1e84
 5588 16bc 6D0A0000 		.4byte	.LLST85
 5589 16c0 32       		.uleb128 0x32
 5590 16c1 38020000 		.4byte	.Ldebug_ranges0+0x238
 5591 16c5 36       		.uleb128 0x36
 5592 16c6 09200000 		.4byte	0x2009
 5593 16ca 00       		.byte	0
 5594 16cb 00       		.byte	0
 5595 16cc 30       		.uleb128 0x30
 5596 16cd FC1D0000 		.4byte	0x1dfc
 5597 16d1 14010000 		.4byte	.LBB219
 5598 16d5 58020000 		.4byte	.Ldebug_ranges0+0x258
 5599 16d9 01       		.byte	0x1
 5600 16da 2803     		.2byte	0x328
 5601 16dc 31       		.uleb128 0x31
 5602 16dd 391E0000 		.4byte	0x1e39
 5603 16e1 800A0000 		.4byte	.LLST86
 5604 16e5 31       		.uleb128 0x31
 5605 16e6 2D1E0000 		.4byte	0x1e2d
 5606 16ea B70A0000 		.4byte	.LLST87
 5607 16ee 31       		.uleb128 0x31
 5608 16ef 211E0000 		.4byte	0x1e21
 5609 16f3 0A0B0000 		.4byte	.LLST88
 5610 16f7 31       		.uleb128 0x31
 5611 16f8 151E0000 		.4byte	0x1e15
 5612 16fc 660B0000 		.4byte	.LLST89
 5613 1700 31       		.uleb128 0x31
 5614 1701 091E0000 		.4byte	0x1e09
 5615 1705 840B0000 		.4byte	.LLST90
 5616 1709 34       		.uleb128 0x34
 5617 170a 881F0000 		.4byte	0x1f88
 5618 170e 14010000 		.4byte	.LBB221
 5619 1712 80020000 		.4byte	.Ldebug_ranges0+0x280
 5620 1716 01       		.byte	0x1
 5621 1717 4601     		.2byte	0x146
 5622 1719 39170000 		.4byte	0x1739
 5623 171d 31       		.uleb128 0x31
 5624 171e AA1F0000 		.4byte	0x1faa
 5625 1722 A20B0000 		.4byte	.LLST91
 5626 1726 31       		.uleb128 0x31
 5627 1727 9F1F0000 		.4byte	0x1f9f
 5628 172b CA0B0000 		.4byte	.LLST92
 5629 172f 31       		.uleb128 0x31
 5630 1730 941F0000 		.4byte	0x1f94
 5631 1734 E80B0000 		.4byte	.LLST93
 5632 1738 00       		.byte	0
 5633 1739 35       		.uleb128 0x35
 5634 173a C1190000 		.4byte	0x19c1
 5635 173e 16010000 		.4byte	.LBB225
 5636 1742 02000000 		.4byte	.LBE225-.LBB225
 5637 1746 01       		.byte	0x1
 5638 1747 4501     		.2byte	0x145
 5639 1749 31       		.uleb128 0x31
ARM GAS  /tmp/ccqzbxJl.s 			page 127


 5640 174a DA190000 		.4byte	0x19da
 5641 174e 060C0000 		.4byte	.LLST94
 5642 1752 31       		.uleb128 0x31
 5643 1753 CE190000 		.4byte	0x19ce
 5644 1757 190C0000 		.4byte	.LLST95
 5645 175b 00       		.byte	0
 5646 175c 00       		.byte	0
 5647 175d 00       		.byte	0
 5648 175e 28       		.uleb128 0x28
 5649 175f 99040000 		.4byte	.LASF241
 5650 1763 01       		.byte	0x1
 5651 1764 EF02     		.2byte	0x2ef
 5652 1766 00000000 		.4byte	.LFB172
 5653 176a 24000000 		.4byte	.LFE172-.LFB172
 5654 176e 01       		.uleb128 0x1
 5655 176f 9C       		.byte	0x9c
 5656 1770 B8170000 		.4byte	0x17b8
 5657 1774 2A       		.uleb128 0x2a
 5658 1775 760C0000 		.4byte	.LASF230
 5659 1779 01       		.byte	0x1
 5660 177a EF02     		.2byte	0x2ef
 5661 177c 91000000 		.4byte	0x91
 5662 1780 2C0C0000 		.4byte	.LLST53
 5663 1784 2F       		.uleb128 0x2f
 5664 1785 B2010000 		.4byte	.LASF214
 5665 1789 01       		.byte	0x1
 5666 178a F102     		.2byte	0x2f1
 5667 178c 020E0000 		.4byte	0xe02
 5668 1790 30       		.uleb128 0x30
 5669 1791 FE0F0000 		.4byte	0xffe
 5670 1795 00000000 		.4byte	.LBB162
 5671 1799 40010000 		.4byte	.Ldebug_ranges0+0x140
 5672 179d 01       		.byte	0x1
 5673 179e F102     		.2byte	0x2f1
 5674 17a0 31       		.uleb128 0x31
 5675 17a1 0F100000 		.4byte	0x100f
 5676 17a5 4D0C0000 		.4byte	.LLST54
 5677 17a9 32       		.uleb128 0x32
 5678 17aa 40010000 		.4byte	.Ldebug_ranges0+0x140
 5679 17ae 33       		.uleb128 0x33
 5680 17af 1B100000 		.4byte	0x101b
 5681 17b3 01       		.uleb128 0x1
 5682 17b4 53       		.byte	0x53
 5683 17b5 00       		.byte	0
 5684 17b6 00       		.byte	0
 5685 17b7 00       		.byte	0
 5686 17b8 28       		.uleb128 0x28
 5687 17b9 78020000 		.4byte	.LASF242
 5688 17bd 01       		.byte	0x1
 5689 17be E002     		.2byte	0x2e0
 5690 17c0 00000000 		.4byte	.LFB171
 5691 17c4 1C000000 		.4byte	.LFE171-.LFB171
 5692 17c8 01       		.uleb128 0x1
 5693 17c9 9C       		.byte	0x9c
 5694 17ca 12180000 		.4byte	0x1812
 5695 17ce 2A       		.uleb128 0x2a
 5696 17cf 760C0000 		.4byte	.LASF230
ARM GAS  /tmp/ccqzbxJl.s 			page 128


 5697 17d3 01       		.byte	0x1
 5698 17d4 E002     		.2byte	0x2e0
 5699 17d6 91000000 		.4byte	0x91
 5700 17da 6E0C0000 		.4byte	.LLST51
 5701 17de 2F       		.uleb128 0x2f
 5702 17df B2010000 		.4byte	.LASF214
 5703 17e3 01       		.byte	0x1
 5704 17e4 E202     		.2byte	0x2e2
 5705 17e6 020E0000 		.4byte	0xe02
 5706 17ea 30       		.uleb128 0x30
 5707 17eb FE0F0000 		.4byte	0xffe
 5708 17ef 00000000 		.4byte	.LBB156
 5709 17f3 20010000 		.4byte	.Ldebug_ranges0+0x120
 5710 17f7 01       		.byte	0x1
 5711 17f8 E202     		.2byte	0x2e2
 5712 17fa 31       		.uleb128 0x31
 5713 17fb 0F100000 		.4byte	0x100f
 5714 17ff 8F0C0000 		.4byte	.LLST52
 5715 1803 32       		.uleb128 0x32
 5716 1804 20010000 		.4byte	.Ldebug_ranges0+0x120
 5717 1808 33       		.uleb128 0x33
 5718 1809 1B100000 		.4byte	0x101b
 5719 180d 01       		.uleb128 0x1
 5720 180e 53       		.byte	0x53
 5721 180f 00       		.byte	0
 5722 1810 00       		.byte	0
 5723 1811 00       		.byte	0
 5724 1812 28       		.uleb128 0x28
 5725 1813 A8040000 		.4byte	.LASF243
 5726 1817 01       		.byte	0x1
 5727 1818 D102     		.2byte	0x2d1
 5728 181a 00000000 		.4byte	.LFB170
 5729 181e 1C000000 		.4byte	.LFE170-.LFB170
 5730 1822 01       		.uleb128 0x1
 5731 1823 9C       		.byte	0x9c
 5732 1824 6C180000 		.4byte	0x186c
 5733 1828 2A       		.uleb128 0x2a
 5734 1829 760C0000 		.4byte	.LASF230
 5735 182d 01       		.byte	0x1
 5736 182e D102     		.2byte	0x2d1
 5737 1830 91000000 		.4byte	0x91
 5738 1834 B00C0000 		.4byte	.LLST49
 5739 1838 2F       		.uleb128 0x2f
 5740 1839 B2010000 		.4byte	.LASF214
 5741 183d 01       		.byte	0x1
 5742 183e D302     		.2byte	0x2d3
 5743 1840 020E0000 		.4byte	0xe02
 5744 1844 30       		.uleb128 0x30
 5745 1845 FE0F0000 		.4byte	0xffe
 5746 1849 00000000 		.4byte	.LBB150
 5747 184d 00010000 		.4byte	.Ldebug_ranges0+0x100
 5748 1851 01       		.byte	0x1
 5749 1852 D302     		.2byte	0x2d3
 5750 1854 31       		.uleb128 0x31
 5751 1855 0F100000 		.4byte	0x100f
 5752 1859 D10C0000 		.4byte	.LLST50
 5753 185d 32       		.uleb128 0x32
ARM GAS  /tmp/ccqzbxJl.s 			page 129


 5754 185e 00010000 		.4byte	.Ldebug_ranges0+0x100
 5755 1862 33       		.uleb128 0x33
 5756 1863 1B100000 		.4byte	0x101b
 5757 1867 01       		.uleb128 0x1
 5758 1868 53       		.byte	0x53
 5759 1869 00       		.byte	0
 5760 186a 00       		.byte	0
 5761 186b 00       		.byte	0
 5762 186c 2B       		.uleb128 0x2b
 5763 186d 760B0000 		.4byte	.LASF244
 5764 1871 01       		.byte	0x1
 5765 1872 C302     		.2byte	0x2c3
 5766 1874 91000000 		.4byte	0x91
 5767 1878 00000000 		.4byte	.LFB169
 5768 187c 1C000000 		.4byte	.LFE169-.LFB169
 5769 1880 01       		.uleb128 0x1
 5770 1881 9C       		.byte	0x9c
 5771 1882 CA180000 		.4byte	0x18ca
 5772 1886 2A       		.uleb128 0x2a
 5773 1887 760C0000 		.4byte	.LASF230
 5774 188b 01       		.byte	0x1
 5775 188c C302     		.2byte	0x2c3
 5776 188e 91000000 		.4byte	0x91
 5777 1892 F20C0000 		.4byte	.LLST47
 5778 1896 2F       		.uleb128 0x2f
 5779 1897 B2010000 		.4byte	.LASF214
 5780 189b 01       		.byte	0x1
 5781 189c C502     		.2byte	0x2c5
 5782 189e 020E0000 		.4byte	0xe02
 5783 18a2 30       		.uleb128 0x30
 5784 18a3 FE0F0000 		.4byte	0xffe
 5785 18a7 00000000 		.4byte	.LBB146
 5786 18ab E8000000 		.4byte	.Ldebug_ranges0+0xe8
 5787 18af 01       		.byte	0x1
 5788 18b0 C502     		.2byte	0x2c5
 5789 18b2 31       		.uleb128 0x31
 5790 18b3 0F100000 		.4byte	0x100f
 5791 18b7 130D0000 		.4byte	.LLST48
 5792 18bb 32       		.uleb128 0x32
 5793 18bc E8000000 		.4byte	.Ldebug_ranges0+0xe8
 5794 18c0 33       		.uleb128 0x33
 5795 18c1 1B100000 		.4byte	0x101b
 5796 18c5 01       		.uleb128 0x1
 5797 18c6 53       		.byte	0x53
 5798 18c7 00       		.byte	0
 5799 18c8 00       		.byte	0
 5800 18c9 00       		.byte	0
 5801 18ca 2B       		.uleb128 0x2b
 5802 18cb 5A030000 		.4byte	.LASF245
 5803 18cf 01       		.byte	0x1
 5804 18d0 B102     		.2byte	0x2b1
 5805 18d2 91000000 		.4byte	0x91
 5806 18d6 00000000 		.4byte	.LFB168
 5807 18da 06000000 		.4byte	.LFE168-.LFB168
 5808 18de 01       		.uleb128 0x1
 5809 18df 9C       		.byte	0x9c
 5810 18e0 F5180000 		.4byte	0x18f5
ARM GAS  /tmp/ccqzbxJl.s 			page 130


 5811 18e4 2A       		.uleb128 0x2a
 5812 18e5 B2010000 		.4byte	.LASF214
 5813 18e9 01       		.byte	0x1
 5814 18ea B102     		.2byte	0x2b1
 5815 18ec 330E0000 		.4byte	0xe33
 5816 18f0 340D0000 		.4byte	.LLST46
 5817 18f4 00       		.byte	0
 5818 18f5 28       		.uleb128 0x28
 5819 18f6 F9040000 		.4byte	.LASF246
 5820 18fa 01       		.byte	0x1
 5821 18fb A502     		.2byte	0x2a5
 5822 18fd 00000000 		.4byte	.LFB167
 5823 1901 14000000 		.4byte	.LFE167-.LFB167
 5824 1905 01       		.uleb128 0x1
 5825 1906 9C       		.byte	0x9c
 5826 1907 2A190000 		.4byte	0x192a
 5827 190b 29       		.uleb128 0x29
 5828 190c B2010000 		.4byte	.LASF214
 5829 1910 01       		.byte	0x1
 5830 1911 A502     		.2byte	0x2a5
 5831 1913 020E0000 		.4byte	0xe02
 5832 1917 01       		.uleb128 0x1
 5833 1918 50       		.byte	0x50
 5834 1919 2A       		.uleb128 0x2a
 5835 191a 93070000 		.4byte	.LASF247
 5836 191e 01       		.byte	0x1
 5837 191f A502     		.2byte	0x2a5
 5838 1921 A6000000 		.4byte	0xa6
 5839 1925 550D0000 		.4byte	.LLST45
 5840 1929 00       		.byte	0
 5841 192a 28       		.uleb128 0x28
 5842 192b 090D0000 		.4byte	.LASF248
 5843 192f 01       		.byte	0x1
 5844 1930 7B02     		.2byte	0x27b
 5845 1932 00000000 		.4byte	.LFB166
 5846 1936 2E000000 		.4byte	.LFE166-.LFB166
 5847 193a 01       		.uleb128 0x1
 5848 193b 9C       		.byte	0x9c
 5849 193c 6B190000 		.4byte	0x196b
 5850 1940 29       		.uleb128 0x29
 5851 1941 B2010000 		.4byte	.LASF214
 5852 1945 01       		.byte	0x1
 5853 1946 7B02     		.2byte	0x27b
 5854 1948 020E0000 		.4byte	0xe02
 5855 194c 01       		.uleb128 0x1
 5856 194d 50       		.byte	0x50
 5857 194e 29       		.uleb128 0x29
 5858 194f 32000000 		.4byte	.LASF221
 5859 1953 01       		.byte	0x1
 5860 1954 7C02     		.2byte	0x27c
 5861 1956 A6000000 		.4byte	0xa6
 5862 195a 01       		.uleb128 0x1
 5863 195b 51       		.byte	0x51
 5864 195c 29       		.uleb128 0x29
 5865 195d BB080000 		.4byte	.LASF249
 5866 1961 01       		.byte	0x1
 5867 1962 7C02     		.2byte	0x27c
ARM GAS  /tmp/ccqzbxJl.s 			page 131


 5868 1964 A6000000 		.4byte	0xa6
 5869 1968 01       		.uleb128 0x1
 5870 1969 52       		.byte	0x52
 5871 196a 00       		.byte	0
 5872 196b 2B       		.uleb128 0x2b
 5873 196c 7D080000 		.4byte	.LASF250
 5874 1970 01       		.byte	0x1
 5875 1971 6F02     		.2byte	0x26f
 5876 1973 91000000 		.4byte	0x91
 5877 1977 00000000 		.4byte	.LFB165
 5878 197b 04000000 		.4byte	.LFE165-.LFB165
 5879 197f 01       		.uleb128 0x1
 5880 1980 9C       		.byte	0x9c
 5881 1981 96190000 		.4byte	0x1996
 5882 1985 2A       		.uleb128 0x2a
 5883 1986 B2010000 		.4byte	.LASF214
 5884 198a 01       		.byte	0x1
 5885 198b 6F02     		.2byte	0x26f
 5886 198d 330E0000 		.4byte	0xe33
 5887 1991 760D0000 		.4byte	.LLST44
 5888 1995 00       		.byte	0
 5889 1996 2B       		.uleb128 0x2b
 5890 1997 54060000 		.4byte	.LASF251
 5891 199b 01       		.byte	0x1
 5892 199c 6302     		.2byte	0x263
 5893 199e 91000000 		.4byte	0x91
 5894 19a2 00000000 		.4byte	.LFB164
 5895 19a6 04000000 		.4byte	.LFE164-.LFB164
 5896 19aa 01       		.uleb128 0x1
 5897 19ab 9C       		.byte	0x9c
 5898 19ac C1190000 		.4byte	0x19c1
 5899 19b0 2A       		.uleb128 0x2a
 5900 19b1 B2010000 		.4byte	.LASF214
 5901 19b5 01       		.byte	0x1
 5902 19b6 6302     		.2byte	0x263
 5903 19b8 330E0000 		.4byte	0xe33
 5904 19bc 970D0000 		.4byte	.LLST43
 5905 19c0 00       		.byte	0
 5906 19c1 38       		.uleb128 0x38
 5907 19c2 AF0A0000 		.4byte	.LASF252
 5908 19c6 01       		.byte	0x1
 5909 19c7 5702     		.2byte	0x257
 5910 19c9 01       		.byte	0x1
 5911 19ca E7190000 		.4byte	0x19e7
 5912 19ce 2E       		.uleb128 0x2e
 5913 19cf B2010000 		.4byte	.LASF214
 5914 19d3 01       		.byte	0x1
 5915 19d4 5702     		.2byte	0x257
 5916 19d6 020E0000 		.4byte	0xe02
 5917 19da 2E       		.uleb128 0x2e
 5918 19db 32000000 		.4byte	.LASF221
 5919 19df 01       		.byte	0x1
 5920 19e0 5702     		.2byte	0x257
 5921 19e2 A6000000 		.4byte	0xa6
 5922 19e6 00       		.byte	0
 5923 19e7 28       		.uleb128 0x28
 5924 19e8 E5080000 		.4byte	.LASF253
ARM GAS  /tmp/ccqzbxJl.s 			page 132


 5925 19ec 01       		.byte	0x1
 5926 19ed 4C02     		.2byte	0x24c
 5927 19ef 00000000 		.4byte	.LFB162
 5928 19f3 04000000 		.4byte	.LFE162-.LFB162
 5929 19f7 01       		.uleb128 0x1
 5930 19f8 9C       		.byte	0x9c
 5931 19f9 1A1A0000 		.4byte	0x1a1a
 5932 19fd 29       		.uleb128 0x29
 5933 19fe B2010000 		.4byte	.LASF214
 5934 1a02 01       		.byte	0x1
 5935 1a03 4C02     		.2byte	0x24c
 5936 1a05 020E0000 		.4byte	0xe02
 5937 1a09 01       		.uleb128 0x1
 5938 1a0a 50       		.byte	0x50
 5939 1a0b 29       		.uleb128 0x29
 5940 1a0c 32000000 		.4byte	.LASF221
 5941 1a10 01       		.byte	0x1
 5942 1a11 4C02     		.2byte	0x24c
 5943 1a13 A6000000 		.4byte	0xa6
 5944 1a17 01       		.uleb128 0x1
 5945 1a18 51       		.byte	0x51
 5946 1a19 00       		.byte	0
 5947 1a1a 3B       		.uleb128 0x3b
 5948 1a1b EE010000 		.4byte	.LASF278
 5949 1a1f 01       		.byte	0x1
 5950 1a20 2402     		.2byte	0x224
 5951 1a22 4B1A0000 		.4byte	0x1a4b
 5952 1a26 2E       		.uleb128 0x2e
 5953 1a27 B2010000 		.4byte	.LASF214
 5954 1a2b 01       		.byte	0x1
 5955 1a2c 2402     		.2byte	0x224
 5956 1a2e 020E0000 		.4byte	0xe02
 5957 1a32 2E       		.uleb128 0x2e
 5958 1a33 32000000 		.4byte	.LASF221
 5959 1a37 01       		.byte	0x1
 5960 1a38 2402     		.2byte	0x224
 5961 1a3a A6000000 		.4byte	0xa6
 5962 1a3e 2E       		.uleb128 0x2e
 5963 1a3f FA080000 		.4byte	.LASF254
 5964 1a43 01       		.byte	0x1
 5965 1a44 2502     		.2byte	0x225
 5966 1a46 A6000000 		.4byte	0xa6
 5967 1a4a 00       		.byte	0
 5968 1a4b 2B       		.uleb128 0x2b
 5969 1a4c 7D000000 		.4byte	.LASF255
 5970 1a50 01       		.byte	0x1
 5971 1a51 1502     		.2byte	0x215
 5972 1a53 91000000 		.4byte	0x91
 5973 1a57 00000000 		.4byte	.LFB160
 5974 1a5b 06000000 		.4byte	.LFE160-.LFB160
 5975 1a5f 01       		.uleb128 0x1
 5976 1a60 9C       		.byte	0x9c
 5977 1a61 761A0000 		.4byte	0x1a76
 5978 1a65 2A       		.uleb128 0x2a
 5979 1a66 B2010000 		.4byte	.LASF214
 5980 1a6a 01       		.byte	0x1
 5981 1a6b 1502     		.2byte	0x215
ARM GAS  /tmp/ccqzbxJl.s 			page 133


 5982 1a6d 330E0000 		.4byte	0xe33
 5983 1a71 B80D0000 		.4byte	.LLST42
 5984 1a75 00       		.byte	0
 5985 1a76 28       		.uleb128 0x28
 5986 1a77 58040000 		.4byte	.LASF256
 5987 1a7b 01       		.byte	0x1
 5988 1a7c 0902     		.2byte	0x209
 5989 1a7e 00000000 		.4byte	.LFB159
 5990 1a82 06000000 		.4byte	.LFE159-.LFB159
 5991 1a86 01       		.uleb128 0x1
 5992 1a87 9C       		.byte	0x9c
 5993 1a88 A91A0000 		.4byte	0x1aa9
 5994 1a8c 29       		.uleb128 0x29
 5995 1a8d B2010000 		.4byte	.LASF214
 5996 1a91 01       		.byte	0x1
 5997 1a92 0902     		.2byte	0x209
 5998 1a94 020E0000 		.4byte	0xe02
 5999 1a98 01       		.uleb128 0x1
 6000 1a99 50       		.byte	0x50
 6001 1a9a 29       		.uleb128 0x29
 6002 1a9b 32000000 		.4byte	.LASF221
 6003 1a9f 01       		.byte	0x1
 6004 1aa0 0902     		.2byte	0x209
 6005 1aa2 A6000000 		.4byte	0xa6
 6006 1aa6 01       		.uleb128 0x1
 6007 1aa7 51       		.byte	0x51
 6008 1aa8 00       		.byte	0
 6009 1aa9 28       		.uleb128 0x28
 6010 1aaa AF000000 		.4byte	.LASF257
 6011 1aae 01       		.byte	0x1
 6012 1aaf FB01     		.2byte	0x1fb
 6013 1ab1 00000000 		.4byte	.LFB158
 6014 1ab5 04000000 		.4byte	.LFE158-.LFB158
 6015 1ab9 01       		.uleb128 0x1
 6016 1aba 9C       		.byte	0x9c
 6017 1abb DC1A0000 		.4byte	0x1adc
 6018 1abf 29       		.uleb128 0x29
 6019 1ac0 B2010000 		.4byte	.LASF214
 6020 1ac4 01       		.byte	0x1
 6021 1ac5 FB01     		.2byte	0x1fb
 6022 1ac7 020E0000 		.4byte	0xe02
 6023 1acb 01       		.uleb128 0x1
 6024 1acc 50       		.byte	0x50
 6025 1acd 29       		.uleb128 0x29
 6026 1ace 32000000 		.4byte	.LASF221
 6027 1ad2 01       		.byte	0x1
 6028 1ad3 FB01     		.2byte	0x1fb
 6029 1ad5 A6000000 		.4byte	0xa6
 6030 1ad9 01       		.uleb128 0x1
 6031 1ada 51       		.byte	0x51
 6032 1adb 00       		.byte	0
 6033 1adc 2B       		.uleb128 0x2b
 6034 1add 3F0D0000 		.4byte	.LASF258
 6035 1ae1 01       		.byte	0x1
 6036 1ae2 EE01     		.2byte	0x1ee
 6037 1ae4 91000000 		.4byte	0x91
 6038 1ae8 00000000 		.4byte	.LFB157
ARM GAS  /tmp/ccqzbxJl.s 			page 134


 6039 1aec 06000000 		.4byte	.LFE157-.LFB157
 6040 1af0 01       		.uleb128 0x1
 6041 1af1 9C       		.byte	0x9c
 6042 1af2 071B0000 		.4byte	0x1b07
 6043 1af6 2A       		.uleb128 0x2a
 6044 1af7 B2010000 		.4byte	.LASF214
 6045 1afb 01       		.byte	0x1
 6046 1afc EE01     		.2byte	0x1ee
 6047 1afe 330E0000 		.4byte	0xe33
 6048 1b02 D90D0000 		.4byte	.LLST41
 6049 1b06 00       		.byte	0
 6050 1b07 28       		.uleb128 0x28
 6051 1b08 2E090000 		.4byte	.LASF259
 6052 1b0c 01       		.byte	0x1
 6053 1b0d E201     		.2byte	0x1e2
 6054 1b0f 00000000 		.4byte	.LFB156
 6055 1b13 06000000 		.4byte	.LFE156-.LFB156
 6056 1b17 01       		.uleb128 0x1
 6057 1b18 9C       		.byte	0x9c
 6058 1b19 3A1B0000 		.4byte	0x1b3a
 6059 1b1d 29       		.uleb128 0x29
 6060 1b1e B2010000 		.4byte	.LASF214
 6061 1b22 01       		.byte	0x1
 6062 1b23 E201     		.2byte	0x1e2
 6063 1b25 020E0000 		.4byte	0xe02
 6064 1b29 01       		.uleb128 0x1
 6065 1b2a 50       		.byte	0x50
 6066 1b2b 29       		.uleb128 0x29
 6067 1b2c 32000000 		.4byte	.LASF221
 6068 1b30 01       		.byte	0x1
 6069 1b31 E201     		.2byte	0x1e2
 6070 1b33 A6000000 		.4byte	0xa6
 6071 1b37 01       		.uleb128 0x1
 6072 1b38 51       		.byte	0x51
 6073 1b39 00       		.byte	0
 6074 1b3a 28       		.uleb128 0x28
 6075 1b3b B0070000 		.4byte	.LASF260
 6076 1b3f 01       		.byte	0x1
 6077 1b40 D701     		.2byte	0x1d7
 6078 1b42 00000000 		.4byte	.LFB155
 6079 1b46 06000000 		.4byte	.LFE155-.LFB155
 6080 1b4a 01       		.uleb128 0x1
 6081 1b4b 9C       		.byte	0x9c
 6082 1b4c 6D1B0000 		.4byte	0x1b6d
 6083 1b50 29       		.uleb128 0x29
 6084 1b51 B2010000 		.4byte	.LASF214
 6085 1b55 01       		.byte	0x1
 6086 1b56 D701     		.2byte	0x1d7
 6087 1b58 020E0000 		.4byte	0xe02
 6088 1b5c 01       		.uleb128 0x1
 6089 1b5d 50       		.byte	0x50
 6090 1b5e 29       		.uleb128 0x29
 6091 1b5f 32000000 		.4byte	.LASF221
 6092 1b63 01       		.byte	0x1
 6093 1b64 D701     		.2byte	0x1d7
 6094 1b66 A6000000 		.4byte	0xa6
 6095 1b6a 01       		.uleb128 0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 135


 6096 1b6b 51       		.byte	0x51
 6097 1b6c 00       		.byte	0
 6098 1b6d 28       		.uleb128 0x28
 6099 1b6e 76070000 		.4byte	.LASF261
 6100 1b72 01       		.byte	0x1
 6101 1b73 C501     		.2byte	0x1c5
 6102 1b75 00000000 		.4byte	.LFB154
 6103 1b79 0E000000 		.4byte	.LFE154-.LFB154
 6104 1b7d 01       		.uleb128 0x1
 6105 1b7e 9C       		.byte	0x9c
 6106 1b7f AE1B0000 		.4byte	0x1bae
 6107 1b83 29       		.uleb128 0x29
 6108 1b84 B2010000 		.4byte	.LASF214
 6109 1b88 01       		.byte	0x1
 6110 1b89 C501     		.2byte	0x1c5
 6111 1b8b 020E0000 		.4byte	0xe02
 6112 1b8f 01       		.uleb128 0x1
 6113 1b90 50       		.byte	0x50
 6114 1b91 29       		.uleb128 0x29
 6115 1b92 32000000 		.4byte	.LASF221
 6116 1b96 01       		.byte	0x1
 6117 1b97 C501     		.2byte	0x1c5
 6118 1b99 A6000000 		.4byte	0xa6
 6119 1b9d 01       		.uleb128 0x1
 6120 1b9e 51       		.byte	0x51
 6121 1b9f 29       		.uleb128 0x29
 6122 1ba0 40060000 		.4byte	.LASF262
 6123 1ba4 01       		.byte	0x1
 6124 1ba5 C601     		.2byte	0x1c6
 6125 1ba7 A6000000 		.4byte	0xa6
 6126 1bab 01       		.uleb128 0x1
 6127 1bac 52       		.byte	0x52
 6128 1bad 00       		.byte	0
 6129 1bae 2B       		.uleb128 0x2b
 6130 1baf E40C0000 		.4byte	.LASF263
 6131 1bb3 01       		.byte	0x1
 6132 1bb4 B601     		.2byte	0x1b6
 6133 1bb6 91000000 		.4byte	0x91
 6134 1bba 00000000 		.4byte	.LFB153
 6135 1bbe 04000000 		.4byte	.LFE153-.LFB153
 6136 1bc2 01       		.uleb128 0x1
 6137 1bc3 9C       		.byte	0x9c
 6138 1bc4 D91B0000 		.4byte	0x1bd9
 6139 1bc8 2A       		.uleb128 0x2a
 6140 1bc9 B2010000 		.4byte	.LASF214
 6141 1bcd 01       		.byte	0x1
 6142 1bce B601     		.2byte	0x1b6
 6143 1bd0 330E0000 		.4byte	0xe33
 6144 1bd4 FA0D0000 		.4byte	.LLST40
 6145 1bd8 00       		.byte	0
 6146 1bd9 28       		.uleb128 0x28
 6147 1bda 09000000 		.4byte	.LASF264
 6148 1bde 01       		.byte	0x1
 6149 1bdf A401     		.2byte	0x1a4
 6150 1be1 00000000 		.4byte	.LFB152
 6151 1be5 0A000000 		.4byte	.LFE152-.LFB152
 6152 1be9 01       		.uleb128 0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 136


 6153 1bea 9C       		.byte	0x9c
 6154 1beb 1A1C0000 		.4byte	0x1c1a
 6155 1bef 29       		.uleb128 0x29
 6156 1bf0 B2010000 		.4byte	.LASF214
 6157 1bf4 01       		.byte	0x1
 6158 1bf5 A401     		.2byte	0x1a4
 6159 1bf7 020E0000 		.4byte	0xe02
 6160 1bfb 01       		.uleb128 0x1
 6161 1bfc 50       		.byte	0x50
 6162 1bfd 29       		.uleb128 0x29
 6163 1bfe 32000000 		.4byte	.LASF221
 6164 1c02 01       		.byte	0x1
 6165 1c03 A401     		.2byte	0x1a4
 6166 1c05 A6000000 		.4byte	0xa6
 6167 1c09 01       		.uleb128 0x1
 6168 1c0a 51       		.byte	0x51
 6169 1c0b 29       		.uleb128 0x29
 6170 1c0c 3F010000 		.4byte	.LASF265
 6171 1c10 01       		.byte	0x1
 6172 1c11 A501     		.2byte	0x1a5
 6173 1c13 A6000000 		.4byte	0xa6
 6174 1c17 01       		.uleb128 0x1
 6175 1c18 52       		.byte	0x52
 6176 1c19 00       		.byte	0
 6177 1c1a 2B       		.uleb128 0x2b
 6178 1c1b 47090000 		.4byte	.LASF266
 6179 1c1f 01       		.byte	0x1
 6180 1c20 9201     		.2byte	0x192
 6181 1c22 91000000 		.4byte	0x91
 6182 1c26 00000000 		.4byte	.LFB151
 6183 1c2a 0C000000 		.4byte	.LFE151-.LFB151
 6184 1c2e 01       		.uleb128 0x1
 6185 1c2f 9C       		.byte	0x9c
 6186 1c30 531C0000 		.4byte	0x1c53
 6187 1c34 2A       		.uleb128 0x2a
 6188 1c35 B2010000 		.4byte	.LASF214
 6189 1c39 01       		.byte	0x1
 6190 1c3a 9201     		.2byte	0x192
 6191 1c3c 330E0000 		.4byte	0xe33
 6192 1c40 1B0E0000 		.4byte	.LLST39
 6193 1c44 29       		.uleb128 0x29
 6194 1c45 32000000 		.4byte	.LASF221
 6195 1c49 01       		.byte	0x1
 6196 1c4a 9301     		.2byte	0x193
 6197 1c4c A6000000 		.4byte	0xa6
 6198 1c50 01       		.uleb128 0x1
 6199 1c51 51       		.byte	0x51
 6200 1c52 00       		.byte	0
 6201 1c53 2B       		.uleb128 0x2b
 6202 1c54 B0050000 		.4byte	.LASF267
 6203 1c58 01       		.byte	0x1
 6204 1c59 6601     		.2byte	0x166
 6205 1c5b 91000000 		.4byte	0x91
 6206 1c5f 00000000 		.4byte	.LFB150
 6207 1c63 BA000000 		.4byte	.LFE150-.LFB150
 6208 1c67 01       		.uleb128 0x1
 6209 1c68 9C       		.byte	0x9c
ARM GAS  /tmp/ccqzbxJl.s 			page 137


 6210 1c69 FC1D0000 		.4byte	0x1dfc
 6211 1c6d 2A       		.uleb128 0x2a
 6212 1c6e B2010000 		.4byte	.LASF214
 6213 1c72 01       		.byte	0x1
 6214 1c73 6601     		.2byte	0x166
 6215 1c75 020E0000 		.4byte	0xe02
 6216 1c79 3C0E0000 		.4byte	.LLST17
 6217 1c7d 2A       		.uleb128 0x2a
 6218 1c7e 0E050000 		.4byte	.LASF268
 6219 1c82 01       		.byte	0x1
 6220 1c83 6601     		.2byte	0x166
 6221 1c85 8B0D0000 		.4byte	0xd8b
 6222 1c89 C60E0000 		.4byte	.LLST18
 6223 1c8d 29       		.uleb128 0x29
 6224 1c8e 32000000 		.4byte	.LASF221
 6225 1c92 01       		.byte	0x1
 6226 1c93 6701     		.2byte	0x167
 6227 1c95 A6000000 		.4byte	0xa6
 6228 1c99 01       		.uleb128 0x1
 6229 1c9a 52       		.byte	0x52
 6230 1c9b 2A       		.uleb128 0x2a
 6231 1c9c BB080000 		.4byte	.LASF249
 6232 1ca0 01       		.byte	0x1
 6233 1ca1 6701     		.2byte	0x167
 6234 1ca3 A6000000 		.4byte	0xa6
 6235 1ca7 240F0000 		.4byte	.LLST19
 6236 1cab 34       		.uleb128 0x34
 6237 1cac 461E0000 		.4byte	0x1e46
 6238 1cb0 22000000 		.4byte	.LBB108
 6239 1cb4 38000000 		.4byte	.Ldebug_ranges0+0x38
 6240 1cb8 01       		.byte	0x1
 6241 1cb9 7601     		.2byte	0x176
 6242 1cbb 2E1D0000 		.4byte	0x1d2e
 6243 1cbf 31       		.uleb128 0x31
 6244 1cc0 6B1E0000 		.4byte	0x1e6b
 6245 1cc4 B40F0000 		.4byte	.LLST20
 6246 1cc8 31       		.uleb128 0x31
 6247 1cc9 5F1E0000 		.4byte	0x1e5f
 6248 1ccd E00F0000 		.4byte	.LLST21
 6249 1cd1 31       		.uleb128 0x31
 6250 1cd2 531E0000 		.4byte	0x1e53
 6251 1cd6 FE0F0000 		.4byte	.LLST22
 6252 1cda 34       		.uleb128 0x34
 6253 1cdb 881F0000 		.4byte	0x1f88
 6254 1cdf 22000000 		.4byte	.LBB110
 6255 1ce3 58000000 		.4byte	.Ldebug_ranges0+0x58
 6256 1ce7 01       		.byte	0x1
 6257 1ce8 0F01     		.2byte	0x10f
 6258 1cea 0A1D0000 		.4byte	0x1d0a
 6259 1cee 31       		.uleb128 0x31
 6260 1cef AA1F0000 		.4byte	0x1faa
 6261 1cf3 2A100000 		.4byte	.LLST23
 6262 1cf7 31       		.uleb128 0x31
 6263 1cf8 9F1F0000 		.4byte	0x1f9f
 6264 1cfc 50100000 		.4byte	.LLST24
 6265 1d00 31       		.uleb128 0x31
 6266 1d01 941F0000 		.4byte	0x1f94
ARM GAS  /tmp/ccqzbxJl.s 			page 138


 6267 1d05 6E100000 		.4byte	.LLST25
 6268 1d09 00       		.byte	0
 6269 1d0a 35       		.uleb128 0x35
 6270 1d0b C1190000 		.4byte	0x19c1
 6271 1d0f 24000000 		.4byte	.LBB115
 6272 1d13 02000000 		.4byte	.LBE115-.LBB115
 6273 1d17 01       		.byte	0x1
 6274 1d18 0E01     		.2byte	0x10e
 6275 1d1a 31       		.uleb128 0x31
 6276 1d1b DA190000 		.4byte	0x19da
 6277 1d1f 8C100000 		.4byte	.LLST26
 6278 1d23 31       		.uleb128 0x31
 6279 1d24 CE190000 		.4byte	0x19ce
 6280 1d28 9F100000 		.4byte	.LLST27
 6281 1d2c 00       		.byte	0
 6282 1d2d 00       		.byte	0
 6283 1d2e 34       		.uleb128 0x34
 6284 1d2f FC1D0000 		.4byte	0x1dfc
 6285 1d33 48000000 		.4byte	.LBB123
 6286 1d37 80000000 		.4byte	.Ldebug_ranges0+0x80
 6287 1d3b 01       		.byte	0x1
 6288 1d3c 7B01     		.2byte	0x17b
 6289 1d3e BB1D0000 		.4byte	0x1dbb
 6290 1d42 31       		.uleb128 0x31
 6291 1d43 391E0000 		.4byte	0x1e39
 6292 1d47 B2100000 		.4byte	.LLST28
 6293 1d4b 31       		.uleb128 0x31
 6294 1d4c 2D1E0000 		.4byte	0x1e2d
 6295 1d50 F9100000 		.4byte	.LLST29
 6296 1d54 31       		.uleb128 0x31
 6297 1d55 211E0000 		.4byte	0x1e21
 6298 1d59 37110000 		.4byte	.LLST30
 6299 1d5d 31       		.uleb128 0x31
 6300 1d5e 151E0000 		.4byte	0x1e15
 6301 1d62 7B110000 		.4byte	.LLST31
 6302 1d66 31       		.uleb128 0x31
 6303 1d67 091E0000 		.4byte	0x1e09
 6304 1d6b A4110000 		.4byte	.LLST32
 6305 1d6f 34       		.uleb128 0x34
 6306 1d70 881F0000 		.4byte	0x1f88
 6307 1d74 48000000 		.4byte	.LBB125
 6308 1d78 A8000000 		.4byte	.Ldebug_ranges0+0xa8
 6309 1d7c 01       		.byte	0x1
 6310 1d7d 4601     		.2byte	0x146
 6311 1d7f 9F1D0000 		.4byte	0x1d9f
 6312 1d83 31       		.uleb128 0x31
 6313 1d84 AA1F0000 		.4byte	0x1faa
 6314 1d88 DB110000 		.4byte	.LLST33
 6315 1d8c 31       		.uleb128 0x31
 6316 1d8d 9F1F0000 		.4byte	0x1f9f
 6317 1d91 12120000 		.4byte	.LLST34
 6318 1d95 31       		.uleb128 0x31
 6319 1d96 941F0000 		.4byte	0x1f94
 6320 1d9a 30120000 		.4byte	.LLST35
 6321 1d9e 00       		.byte	0
 6322 1d9f 35       		.uleb128 0x35
 6323 1da0 C1190000 		.4byte	0x19c1
ARM GAS  /tmp/ccqzbxJl.s 			page 139


 6324 1da4 4A000000 		.4byte	.LBB129
 6325 1da8 02000000 		.4byte	.LBE129-.LBB129
 6326 1dac 01       		.byte	0x1
 6327 1dad 4501     		.2byte	0x145
 6328 1daf 37       		.uleb128 0x37
 6329 1db0 DA190000 		.4byte	0x19da
 6330 1db4 37       		.uleb128 0x37
 6331 1db5 CE190000 		.4byte	0x19ce
 6332 1db9 00       		.byte	0
 6333 1dba 00       		.byte	0
 6334 1dbb 34       		.uleb128 0x34
 6335 1dbc 881F0000 		.4byte	0x1f88
 6336 1dc0 80000000 		.4byte	.LBB137
 6337 1dc4 C8000000 		.4byte	.Ldebug_ranges0+0xc8
 6338 1dc8 01       		.byte	0x1
 6339 1dc9 7201     		.2byte	0x172
 6340 1dcb EB1D0000 		.4byte	0x1deb
 6341 1dcf 31       		.uleb128 0x31
 6342 1dd0 AA1F0000 		.4byte	0x1faa
 6343 1dd4 4E120000 		.4byte	.LLST36
 6344 1dd8 31       		.uleb128 0x31
 6345 1dd9 9F1F0000 		.4byte	0x1f9f
 6346 1ddd 85120000 		.4byte	.LLST37
 6347 1de1 31       		.uleb128 0x31
 6348 1de2 941F0000 		.4byte	0x1f94
 6349 1de6 A3120000 		.4byte	.LLST38
 6350 1dea 00       		.byte	0
 6351 1deb 3C       		.uleb128 0x3c
 6352 1dec 80000000 		.4byte	.LVL57
 6353 1df0 781E0000 		.4byte	0x1e78
 6354 1df4 3D       		.uleb128 0x3d
 6355 1df5 01       		.uleb128 0x1
 6356 1df6 50       		.byte	0x50
 6357 1df7 02       		.uleb128 0x2
 6358 1df8 74       		.byte	0x74
 6359 1df9 00       		.sleb128 0
 6360 1dfa 00       		.byte	0
 6361 1dfb 00       		.byte	0
 6362 1dfc 38       		.uleb128 0x38
 6363 1dfd FB070000 		.4byte	.LASF269
 6364 1e01 01       		.byte	0x1
 6365 1e02 4001     		.2byte	0x140
 6366 1e04 01       		.byte	0x1
 6367 1e05 461E0000 		.4byte	0x1e46
 6368 1e09 2E       		.uleb128 0x2e
 6369 1e0a B2010000 		.4byte	.LASF214
 6370 1e0e 01       		.byte	0x1
 6371 1e0f 4001     		.2byte	0x140
 6372 1e11 020E0000 		.4byte	0xe02
 6373 1e15 2E       		.uleb128 0x2e
 6374 1e16 32000000 		.4byte	.LASF221
 6375 1e1a 01       		.byte	0x1
 6376 1e1b 4001     		.2byte	0x140
 6377 1e1d A6000000 		.4byte	0xa6
 6378 1e21 2E       		.uleb128 0x2e
 6379 1e22 060E0000 		.4byte	.LASF270
 6380 1e26 01       		.byte	0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 140


 6381 1e27 4101     		.2byte	0x141
 6382 1e29 A6000000 		.4byte	0xa6
 6383 1e2d 2E       		.uleb128 0x2e
 6384 1e2e 0A080000 		.4byte	.LASF271
 6385 1e32 01       		.byte	0x1
 6386 1e33 4201     		.2byte	0x142
 6387 1e35 A6000000 		.4byte	0xa6
 6388 1e39 2E       		.uleb128 0x2e
 6389 1e3a C8080000 		.4byte	.LASF272
 6390 1e3e 01       		.byte	0x1
 6391 1e3f 4301     		.2byte	0x143
 6392 1e41 A6000000 		.4byte	0xa6
 6393 1e45 00       		.byte	0
 6394 1e46 38       		.uleb128 0x38
 6395 1e47 EE090000 		.4byte	.LASF273
 6396 1e4b 01       		.byte	0x1
 6397 1e4c 0B01     		.2byte	0x10b
 6398 1e4e 01       		.byte	0x1
 6399 1e4f 781E0000 		.4byte	0x1e78
 6400 1e53 2E       		.uleb128 0x2e
 6401 1e54 B2010000 		.4byte	.LASF214
 6402 1e58 01       		.byte	0x1
 6403 1e59 0B01     		.2byte	0x10b
 6404 1e5b 020E0000 		.4byte	0xe02
 6405 1e5f 2E       		.uleb128 0x2e
 6406 1e60 32000000 		.4byte	.LASF221
 6407 1e64 01       		.byte	0x1
 6408 1e65 0B01     		.2byte	0x10b
 6409 1e67 A6000000 		.4byte	0xa6
 6410 1e6b 2E       		.uleb128 0x2e
 6411 1e6c BB080000 		.4byte	.LASF249
 6412 1e70 01       		.byte	0x1
 6413 1e71 0C01     		.2byte	0x10c
 6414 1e73 A6000000 		.4byte	0xa6
 6415 1e77 00       		.byte	0
 6416 1e78 3E       		.uleb128 0x3e
 6417 1e79 97020000 		.4byte	.LASF274
 6418 1e7d 01       		.byte	0x1
 6419 1e7e B8       		.byte	0xb8
 6420 1e7f 01       		.byte	0x1
 6421 1e80 B11E0000 		.4byte	0x1eb1
 6422 1e84 3F       		.uleb128 0x3f
 6423 1e85 B2010000 		.4byte	.LASF214
 6424 1e89 01       		.byte	0x1
 6425 1e8a B8       		.byte	0xb8
 6426 1e8b 020E0000 		.4byte	0xe02
 6427 1e8f 3F       		.uleb128 0x3f
 6428 1e90 0E050000 		.4byte	.LASF268
 6429 1e94 01       		.byte	0x1
 6430 1e95 B8       		.byte	0xb8
 6431 1e96 8B0D0000 		.4byte	0xd8b
 6432 1e9a 3F       		.uleb128 0x3f
 6433 1e9b 32000000 		.4byte	.LASF221
 6434 1e9f 01       		.byte	0x1
 6435 1ea0 B9       		.byte	0xb9
 6436 1ea1 A6000000 		.4byte	0xa6
 6437 1ea5 40       		.uleb128 0x40
ARM GAS  /tmp/ccqzbxJl.s 			page 141


 6438 1ea6 12090000 		.4byte	.LASF275
 6439 1eaa 01       		.byte	0x1
 6440 1eab BB       		.byte	0xbb
 6441 1eac 91000000 		.4byte	0x91
 6442 1eb0 00       		.byte	0
 6443 1eb1 41       		.uleb128 0x41
 6444 1eb2 8F020000 		.4byte	.LASF276
 6445 1eb6 01       		.byte	0x1
 6446 1eb7 9E       		.byte	0x9e
 6447 1eb8 91000000 		.4byte	0x91
 6448 1ebc 00000000 		.4byte	.LFB146
 6449 1ec0 1A000000 		.4byte	.LFE146-.LFB146
 6450 1ec4 01       		.uleb128 0x1
 6451 1ec5 9C       		.byte	0x9c
 6452 1ec6 051F0000 		.4byte	0x1f05
 6453 1eca 42       		.uleb128 0x42
 6454 1ecb B2010000 		.4byte	.LASF214
 6455 1ecf 01       		.byte	0x1
 6456 1ed0 9E       		.byte	0x9e
 6457 1ed1 020E0000 		.4byte	0xe02
 6458 1ed5 E2120000 		.4byte	.LLST1
 6459 1ed9 42       		.uleb128 0x42
 6460 1eda 0E050000 		.4byte	.LASF268
 6461 1ede 01       		.byte	0x1
 6462 1edf 9E       		.byte	0x9e
 6463 1ee0 8B0D0000 		.4byte	0xd8b
 6464 1ee4 0E130000 		.4byte	.LLST2
 6465 1ee8 43       		.uleb128 0x43
 6466 1ee9 32000000 		.4byte	.LASF221
 6467 1eed 01       		.byte	0x1
 6468 1eee 9F       		.byte	0x9f
 6469 1eef A6000000 		.4byte	0xa6
 6470 1ef3 01       		.uleb128 0x1
 6471 1ef4 52       		.byte	0x52
 6472 1ef5 44       		.uleb128 0x44
 6473 1ef6 6F050000 		.4byte	.LASF277
 6474 1efa 01       		.byte	0x1
 6475 1efb A1       		.byte	0xa1
 6476 1efc 91000000 		.4byte	0x91
 6477 1f00 2F130000 		.4byte	.LLST3
 6478 1f04 00       		.byte	0
 6479 1f05 45       		.uleb128 0x45
 6480 1f06 28000000 		.4byte	.LASF279
 6481 1f0a 01       		.byte	0x1
 6482 1f0b 8C       		.byte	0x8c
 6483 1f0c 271F0000 		.4byte	0x1f27
 6484 1f10 3F       		.uleb128 0x3f
 6485 1f11 B2010000 		.4byte	.LASF214
 6486 1f15 01       		.byte	0x1
 6487 1f16 8C       		.byte	0x8c
 6488 1f17 020E0000 		.4byte	0xe02
 6489 1f1b 3F       		.uleb128 0x3f
 6490 1f1c 32000000 		.4byte	.LASF221
 6491 1f20 01       		.byte	0x1
 6492 1f21 8C       		.byte	0x8c
 6493 1f22 A6000000 		.4byte	0xa6
 6494 1f26 00       		.byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 142


 6495 1f27 45       		.uleb128 0x45
 6496 1f28 F00D0000 		.4byte	.LASF280
 6497 1f2c 01       		.byte	0x1
 6498 1f2d 7F       		.byte	0x7f
 6499 1f2e 491F0000 		.4byte	0x1f49
 6500 1f32 3F       		.uleb128 0x3f
 6501 1f33 B2010000 		.4byte	.LASF214
 6502 1f37 01       		.byte	0x1
 6503 1f38 7F       		.byte	0x7f
 6504 1f39 020E0000 		.4byte	0xe02
 6505 1f3d 3F       		.uleb128 0x3f
 6506 1f3e 32000000 		.4byte	.LASF221
 6507 1f42 01       		.byte	0x1
 6508 1f43 7F       		.byte	0x7f
 6509 1f44 A6000000 		.4byte	0xa6
 6510 1f48 00       		.byte	0
 6511 1f49 46       		.uleb128 0x46
 6512 1f4a 8C090000 		.4byte	.LASF281
 6513 1f4e 01       		.byte	0x1
 6514 1f4f 61       		.byte	0x61
 6515 1f50 00000000 		.4byte	.LFB143
 6516 1f54 1A000000 		.4byte	.LFE143-.LFB143
 6517 1f58 01       		.uleb128 0x1
 6518 1f59 9C       		.byte	0x9c
 6519 1f5a 881F0000 		.4byte	0x1f88
 6520 1f5e 43       		.uleb128 0x43
 6521 1f5f B2010000 		.4byte	.LASF214
 6522 1f63 01       		.byte	0x1
 6523 1f64 61       		.byte	0x61
 6524 1f65 020E0000 		.4byte	0xe02
 6525 1f69 01       		.uleb128 0x1
 6526 1f6a 50       		.byte	0x50
 6527 1f6b 43       		.uleb128 0x43
 6528 1f6c 32000000 		.4byte	.LASF221
 6529 1f70 01       		.byte	0x1
 6530 1f71 61       		.byte	0x61
 6531 1f72 A6000000 		.4byte	0xa6
 6532 1f76 01       		.uleb128 0x1
 6533 1f77 51       		.byte	0x51
 6534 1f78 42       		.uleb128 0x42
 6535 1f79 C4090000 		.4byte	.LASF282
 6536 1f7d 01       		.byte	0x1
 6537 1f7e 62       		.byte	0x62
 6538 1f7f A6000000 		.4byte	0xa6
 6539 1f83 4D130000 		.4byte	.LLST0
 6540 1f87 00       		.byte	0
 6541 1f88 3E       		.uleb128 0x3e
 6542 1f89 D1000000 		.4byte	.LASF283
 6543 1f8d 01       		.byte	0x1
 6544 1f8e 4F       		.byte	0x4f
 6545 1f8f 01       		.byte	0x1
 6546 1f90 B61F0000 		.4byte	0x1fb6
 6547 1f94 3F       		.uleb128 0x3f
 6548 1f95 B2010000 		.4byte	.LASF214
 6549 1f99 01       		.byte	0x1
 6550 1f9a 4F       		.byte	0x4f
 6551 1f9b 020E0000 		.4byte	0xe02
ARM GAS  /tmp/ccqzbxJl.s 			page 143


 6552 1f9f 3F       		.uleb128 0x3f
 6553 1fa0 32000000 		.4byte	.LASF221
 6554 1fa4 01       		.byte	0x1
 6555 1fa5 4F       		.byte	0x4f
 6556 1fa6 A6000000 		.4byte	0xa6
 6557 1faa 3F       		.uleb128 0x3f
 6558 1fab C8080000 		.4byte	.LASF272
 6559 1faf 01       		.byte	0x1
 6560 1fb0 50       		.byte	0x50
 6561 1fb1 A6000000 		.4byte	0xa6
 6562 1fb5 00       		.byte	0
 6563 1fb6 47       		.uleb128 0x47
 6564 1fb7 881F0000 		.4byte	0x1f88
 6565 1fbb 00000000 		.4byte	.LFB142
 6566 1fbf 0A000000 		.4byte	.LFE142-.LFB142
 6567 1fc3 01       		.uleb128 0x1
 6568 1fc4 9C       		.byte	0x9c
 6569 1fc5 DF1F0000 		.4byte	0x1fdf
 6570 1fc9 48       		.uleb128 0x48
 6571 1fca 941F0000 		.4byte	0x1f94
 6572 1fce 01       		.uleb128 0x1
 6573 1fcf 50       		.byte	0x50
 6574 1fd0 48       		.uleb128 0x48
 6575 1fd1 9F1F0000 		.4byte	0x1f9f
 6576 1fd5 01       		.uleb128 0x1
 6577 1fd6 51       		.byte	0x51
 6578 1fd7 48       		.uleb128 0x48
 6579 1fd8 AA1F0000 		.4byte	0x1faa
 6580 1fdc 01       		.uleb128 0x1
 6581 1fdd 52       		.byte	0x52
 6582 1fde 00       		.byte	0
 6583 1fdf 47       		.uleb128 0x47
 6584 1fe0 781E0000 		.4byte	0x1e78
 6585 1fe4 00000000 		.4byte	.LFB147
 6586 1fe8 96000000 		.4byte	.LFE147-.LFB147
 6587 1fec 01       		.uleb128 0x1
 6588 1fed 9C       		.byte	0x9c
 6589 1fee 13200000 		.4byte	0x2013
 6590 1ff2 48       		.uleb128 0x48
 6591 1ff3 841E0000 		.4byte	0x1e84
 6592 1ff7 01       		.uleb128 0x1
 6593 1ff8 50       		.byte	0x50
 6594 1ff9 31       		.uleb128 0x31
 6595 1ffa 8F1E0000 		.4byte	0x1e8f
 6596 1ffe 6E130000 		.4byte	.LLST4
 6597 2002 48       		.uleb128 0x48
 6598 2003 9A1E0000 		.4byte	0x1e9a
 6599 2007 01       		.uleb128 0x1
 6600 2008 52       		.byte	0x52
 6601 2009 49       		.uleb128 0x49
 6602 200a A51E0000 		.4byte	0x1ea5
 6603 200e CC130000 		.4byte	.LLST5
 6604 2012 00       		.byte	0
 6605 2013 47       		.uleb128 0x47
 6606 2014 461E0000 		.4byte	0x1e46
 6607 2018 00000000 		.4byte	.LFB148
 6608 201c 36000000 		.4byte	.LFE148-.LFB148
ARM GAS  /tmp/ccqzbxJl.s 			page 144


 6609 2020 01       		.uleb128 0x1
 6610 2021 9C       		.byte	0x9c
 6611 2022 8F200000 		.4byte	0x208f
 6612 2026 48       		.uleb128 0x48
 6613 2027 531E0000 		.4byte	0x1e53
 6614 202b 01       		.uleb128 0x1
 6615 202c 50       		.byte	0x50
 6616 202d 48       		.uleb128 0x48
 6617 202e 5F1E0000 		.4byte	0x1e5f
 6618 2032 01       		.uleb128 0x1
 6619 2033 51       		.byte	0x51
 6620 2034 48       		.uleb128 0x48
 6621 2035 6B1E0000 		.4byte	0x1e6b
 6622 2039 01       		.uleb128 0x1
 6623 203a 52       		.byte	0x52
 6624 203b 34       		.uleb128 0x34
 6625 203c 881F0000 		.4byte	0x1f88
 6626 2040 00000000 		.4byte	.LBB94
 6627 2044 00000000 		.4byte	.Ldebug_ranges0+0
 6628 2048 01       		.byte	0x1
 6629 2049 0F01     		.2byte	0x10f
 6630 204b 6B200000 		.4byte	0x206b
 6631 204f 31       		.uleb128 0x31
 6632 2050 AA1F0000 		.4byte	0x1faa
 6633 2054 2C140000 		.4byte	.LLST6
 6634 2058 31       		.uleb128 0x31
 6635 2059 9F1F0000 		.4byte	0x1f9f
 6636 205d 52140000 		.4byte	.LLST7
 6637 2061 31       		.uleb128 0x31
 6638 2062 941F0000 		.4byte	0x1f94
 6639 2066 70140000 		.4byte	.LLST8
 6640 206a 00       		.byte	0
 6641 206b 35       		.uleb128 0x35
 6642 206c C1190000 		.4byte	0x19c1
 6643 2070 02000000 		.4byte	.LBB98
 6644 2074 02000000 		.4byte	.LBE98-.LBB98
 6645 2078 01       		.byte	0x1
 6646 2079 0E01     		.2byte	0x10e
 6647 207b 31       		.uleb128 0x31
 6648 207c DA190000 		.4byte	0x19da
 6649 2080 8E140000 		.4byte	.LLST9
 6650 2084 31       		.uleb128 0x31
 6651 2085 CE190000 		.4byte	0x19ce
 6652 2089 A1140000 		.4byte	.LLST10
 6653 208d 00       		.byte	0
 6654 208e 00       		.byte	0
 6655 208f 47       		.uleb128 0x47
 6656 2090 FC1D0000 		.4byte	0x1dfc
 6657 2094 00000000 		.4byte	.LFB149
 6658 2098 32000000 		.4byte	.LFE149-.LFB149
 6659 209c 01       		.uleb128 0x1
 6660 209d 9C       		.byte	0x9c
 6661 209e 1B210000 		.4byte	0x211b
 6662 20a2 48       		.uleb128 0x48
 6663 20a3 091E0000 		.4byte	0x1e09
 6664 20a7 01       		.uleb128 0x1
 6665 20a8 50       		.byte	0x50
ARM GAS  /tmp/ccqzbxJl.s 			page 145


 6666 20a9 48       		.uleb128 0x48
 6667 20aa 151E0000 		.4byte	0x1e15
 6668 20ae 01       		.uleb128 0x1
 6669 20af 51       		.byte	0x51
 6670 20b0 48       		.uleb128 0x48
 6671 20b1 211E0000 		.4byte	0x1e21
 6672 20b5 01       		.uleb128 0x1
 6673 20b6 52       		.byte	0x52
 6674 20b7 48       		.uleb128 0x48
 6675 20b8 2D1E0000 		.4byte	0x1e2d
 6676 20bc 01       		.uleb128 0x1
 6677 20bd 53       		.byte	0x53
 6678 20be 31       		.uleb128 0x31
 6679 20bf 391E0000 		.4byte	0x1e39
 6680 20c3 B4140000 		.4byte	.LLST11
 6681 20c7 39       		.uleb128 0x39
 6682 20c8 C1190000 		.4byte	0x19c1
 6683 20cc 04000000 		.4byte	.LBB102
 6684 20d0 02000000 		.4byte	.LBE102-.LBB102
 6685 20d4 01       		.byte	0x1
 6686 20d5 4501     		.2byte	0x145
 6687 20d7 EE200000 		.4byte	0x20ee
 6688 20db 31       		.uleb128 0x31
 6689 20dc DA190000 		.4byte	0x19da
 6690 20e0 F8140000 		.4byte	.LLST12
 6691 20e4 31       		.uleb128 0x31
 6692 20e5 CE190000 		.4byte	0x19ce
 6693 20e9 0B150000 		.4byte	.LLST13
 6694 20ed 00       		.byte	0
 6695 20ee 30       		.uleb128 0x30
 6696 20ef 881F0000 		.4byte	0x1f88
 6697 20f3 06000000 		.4byte	.LBB104
 6698 20f7 20000000 		.4byte	.Ldebug_ranges0+0x20
 6699 20fb 01       		.byte	0x1
 6700 20fc 4601     		.2byte	0x146
 6701 20fe 31       		.uleb128 0x31
 6702 20ff AA1F0000 		.4byte	0x1faa
 6703 2103 1E150000 		.4byte	.LLST14
 6704 2107 31       		.uleb128 0x31
 6705 2108 9F1F0000 		.4byte	0x1f9f
 6706 210c 3C150000 		.4byte	.LLST15
 6707 2110 31       		.uleb128 0x31
 6708 2111 941F0000 		.4byte	0x1f94
 6709 2115 5A150000 		.4byte	.LLST16
 6710 2119 00       		.byte	0
 6711 211a 00       		.byte	0
 6712 211b 47       		.uleb128 0x47
 6713 211c C1190000 		.4byte	0x19c1
 6714 2120 00000000 		.4byte	.LFB163
 6715 2124 04000000 		.4byte	.LFE163-.LFB163
 6716 2128 01       		.uleb128 0x1
 6717 2129 9C       		.byte	0x9c
 6718 212a 3D210000 		.4byte	0x213d
 6719 212e 48       		.uleb128 0x48
 6720 212f CE190000 		.4byte	0x19ce
 6721 2133 01       		.uleb128 0x1
 6722 2134 50       		.byte	0x50
ARM GAS  /tmp/ccqzbxJl.s 			page 146


 6723 2135 48       		.uleb128 0x48
 6724 2136 DA190000 		.4byte	0x19da
 6725 213a 01       		.uleb128 0x1
 6726 213b 51       		.byte	0x51
 6727 213c 00       		.byte	0
 6728 213d 47       		.uleb128 0x47
 6729 213e 32140000 		.4byte	0x1432
 6730 2142 00000000 		.4byte	.LFB174
 6731 2146 04000000 		.4byte	.LFE174-.LFB174
 6732 214a 01       		.uleb128 0x1
 6733 214b 9C       		.byte	0x9c
 6734 214c 5F210000 		.4byte	0x215f
 6735 2150 48       		.uleb128 0x48
 6736 2151 3F140000 		.4byte	0x143f
 6737 2155 01       		.uleb128 0x1
 6738 2156 50       		.byte	0x50
 6739 2157 48       		.uleb128 0x48
 6740 2158 4B140000 		.4byte	0x144b
 6741 215c 01       		.uleb128 0x1
 6742 215d 51       		.byte	0x51
 6743 215e 00       		.byte	0
 6744 215f 47       		.uleb128 0x47
 6745 2160 0C140000 		.4byte	0x140c
 6746 2164 00000000 		.4byte	.LFB175
 6747 2168 04000000 		.4byte	.LFE175-.LFB175
 6748 216c 01       		.uleb128 0x1
 6749 216d 9C       		.byte	0x9c
 6750 216e 81210000 		.4byte	0x2181
 6751 2172 48       		.uleb128 0x48
 6752 2173 19140000 		.4byte	0x1419
 6753 2177 01       		.uleb128 0x1
 6754 2178 50       		.byte	0x50
 6755 2179 48       		.uleb128 0x48
 6756 217a 25140000 		.4byte	0x1425
 6757 217e 01       		.uleb128 0x1
 6758 217f 51       		.byte	0x51
 6759 2180 00       		.byte	0
 6760 2181 4A       		.uleb128 0x4a
 6761 2182 FE0F0000 		.4byte	0xffe
 6762 2186 00000000 		.4byte	.LFB180
 6763 218a 10000000 		.4byte	.LFE180-.LFB180
 6764 218e 01       		.uleb128 0x1
 6765 218f 9C       		.byte	0x9c
 6766 2190 31       		.uleb128 0x31
 6767 2191 0F100000 		.4byte	0x100f
 6768 2195 78150000 		.4byte	.LLST141
 6769 2199 49       		.uleb128 0x49
 6770 219a 1B100000 		.4byte	0x101b
 6771 219e 99150000 		.4byte	.LLST142
 6772 21a2 00       		.byte	0
 6773 21a3 00       		.byte	0
 6774              		.section	.debug_abbrev,"",%progbits
 6775              	.Ldebug_abbrev0:
 6776 0000 01       		.uleb128 0x1
 6777 0001 11       		.uleb128 0x11
 6778 0002 01       		.byte	0x1
 6779 0003 25       		.uleb128 0x25
ARM GAS  /tmp/ccqzbxJl.s 			page 147


 6780 0004 0E       		.uleb128 0xe
 6781 0005 13       		.uleb128 0x13
 6782 0006 0B       		.uleb128 0xb
 6783 0007 03       		.uleb128 0x3
 6784 0008 0E       		.uleb128 0xe
 6785 0009 1B       		.uleb128 0x1b
 6786 000a 0E       		.uleb128 0xe
 6787 000b 55       		.uleb128 0x55
 6788 000c 17       		.uleb128 0x17
 6789 000d 11       		.uleb128 0x11
 6790 000e 01       		.uleb128 0x1
 6791 000f 10       		.uleb128 0x10
 6792 0010 17       		.uleb128 0x17
 6793 0011 00       		.byte	0
 6794 0012 00       		.byte	0
 6795 0013 02       		.uleb128 0x2
 6796 0014 24       		.uleb128 0x24
 6797 0015 00       		.byte	0
 6798 0016 0B       		.uleb128 0xb
 6799 0017 0B       		.uleb128 0xb
 6800 0018 3E       		.uleb128 0x3e
 6801 0019 0B       		.uleb128 0xb
 6802 001a 03       		.uleb128 0x3
 6803 001b 08       		.uleb128 0x8
 6804 001c 00       		.byte	0
 6805 001d 00       		.byte	0
 6806 001e 03       		.uleb128 0x3
 6807 001f 24       		.uleb128 0x24
 6808 0020 00       		.byte	0
 6809 0021 0B       		.uleb128 0xb
 6810 0022 0B       		.uleb128 0xb
 6811 0023 3E       		.uleb128 0x3e
 6812 0024 0B       		.uleb128 0xb
 6813 0025 03       		.uleb128 0x3
 6814 0026 0E       		.uleb128 0xe
 6815 0027 00       		.byte	0
 6816 0028 00       		.byte	0
 6817 0029 04       		.uleb128 0x4
 6818 002a 16       		.uleb128 0x16
 6819 002b 00       		.byte	0
 6820 002c 03       		.uleb128 0x3
 6821 002d 0E       		.uleb128 0xe
 6822 002e 3A       		.uleb128 0x3a
 6823 002f 0B       		.uleb128 0xb
 6824 0030 3B       		.uleb128 0x3b
 6825 0031 0B       		.uleb128 0xb
 6826 0032 49       		.uleb128 0x49
 6827 0033 13       		.uleb128 0x13
 6828 0034 00       		.byte	0
 6829 0035 00       		.byte	0
 6830 0036 05       		.uleb128 0x5
 6831 0037 35       		.uleb128 0x35
 6832 0038 00       		.byte	0
 6833 0039 49       		.uleb128 0x49
 6834 003a 13       		.uleb128 0x13
 6835 003b 00       		.byte	0
 6836 003c 00       		.byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 148


 6837 003d 06       		.uleb128 0x6
 6838 003e 26       		.uleb128 0x26
 6839 003f 00       		.byte	0
 6840 0040 49       		.uleb128 0x49
 6841 0041 13       		.uleb128 0x13
 6842 0042 00       		.byte	0
 6843 0043 00       		.byte	0
 6844 0044 07       		.uleb128 0x7
 6845 0045 0F       		.uleb128 0xf
 6846 0046 00       		.byte	0
 6847 0047 0B       		.uleb128 0xb
 6848 0048 0B       		.uleb128 0xb
 6849 0049 00       		.byte	0
 6850 004a 00       		.byte	0
 6851 004b 08       		.uleb128 0x8
 6852 004c 01       		.uleb128 0x1
 6853 004d 01       		.byte	0x1
 6854 004e 49       		.uleb128 0x49
 6855 004f 13       		.uleb128 0x13
 6856 0050 01       		.uleb128 0x1
 6857 0051 13       		.uleb128 0x13
 6858 0052 00       		.byte	0
 6859 0053 00       		.byte	0
 6860 0054 09       		.uleb128 0x9
 6861 0055 21       		.uleb128 0x21
 6862 0056 00       		.byte	0
 6863 0057 49       		.uleb128 0x49
 6864 0058 13       		.uleb128 0x13
 6865 0059 2F       		.uleb128 0x2f
 6866 005a 0B       		.uleb128 0xb
 6867 005b 00       		.byte	0
 6868 005c 00       		.byte	0
 6869 005d 0A       		.uleb128 0xa
 6870 005e 34       		.uleb128 0x34
 6871 005f 00       		.byte	0
 6872 0060 03       		.uleb128 0x3
 6873 0061 0E       		.uleb128 0xe
 6874 0062 3A       		.uleb128 0x3a
 6875 0063 0B       		.uleb128 0xb
 6876 0064 3B       		.uleb128 0x3b
 6877 0065 05       		.uleb128 0x5
 6878 0066 49       		.uleb128 0x49
 6879 0067 13       		.uleb128 0x13
 6880 0068 3F       		.uleb128 0x3f
 6881 0069 19       		.uleb128 0x19
 6882 006a 3C       		.uleb128 0x3c
 6883 006b 19       		.uleb128 0x19
 6884 006c 00       		.byte	0
 6885 006d 00       		.byte	0
 6886 006e 0B       		.uleb128 0xb
 6887 006f 34       		.uleb128 0x34
 6888 0070 00       		.byte	0
 6889 0071 03       		.uleb128 0x3
 6890 0072 0E       		.uleb128 0xe
 6891 0073 3A       		.uleb128 0x3a
 6892 0074 0B       		.uleb128 0xb
 6893 0075 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccqzbxJl.s 			page 149


 6894 0076 0B       		.uleb128 0xb
 6895 0077 49       		.uleb128 0x49
 6896 0078 13       		.uleb128 0x13
 6897 0079 3F       		.uleb128 0x3f
 6898 007a 19       		.uleb128 0x19
 6899 007b 3C       		.uleb128 0x3c
 6900 007c 19       		.uleb128 0x19
 6901 007d 00       		.byte	0
 6902 007e 00       		.byte	0
 6903 007f 0C       		.uleb128 0xc
 6904 0080 13       		.uleb128 0x13
 6905 0081 01       		.byte	0x1
 6906 0082 0B       		.uleb128 0xb
 6907 0083 05       		.uleb128 0x5
 6908 0084 3A       		.uleb128 0x3a
 6909 0085 0B       		.uleb128 0xb
 6910 0086 3B       		.uleb128 0x3b
 6911 0087 0B       		.uleb128 0xb
 6912 0088 01       		.uleb128 0x1
 6913 0089 13       		.uleb128 0x13
 6914 008a 00       		.byte	0
 6915 008b 00       		.byte	0
 6916 008c 0D       		.uleb128 0xd
 6917 008d 0D       		.uleb128 0xd
 6918 008e 00       		.byte	0
 6919 008f 03       		.uleb128 0x3
 6920 0090 0E       		.uleb128 0xe
 6921 0091 3A       		.uleb128 0x3a
 6922 0092 0B       		.uleb128 0xb
 6923 0093 3B       		.uleb128 0x3b
 6924 0094 0B       		.uleb128 0xb
 6925 0095 49       		.uleb128 0x49
 6926 0096 13       		.uleb128 0x13
 6927 0097 38       		.uleb128 0x38
 6928 0098 0B       		.uleb128 0xb
 6929 0099 00       		.byte	0
 6930 009a 00       		.byte	0
 6931 009b 0E       		.uleb128 0xe
 6932 009c 0D       		.uleb128 0xd
 6933 009d 00       		.byte	0
 6934 009e 03       		.uleb128 0x3
 6935 009f 0E       		.uleb128 0xe
 6936 00a0 3A       		.uleb128 0x3a
 6937 00a1 0B       		.uleb128 0xb
 6938 00a2 3B       		.uleb128 0x3b
 6939 00a3 0B       		.uleb128 0xb
 6940 00a4 49       		.uleb128 0x49
 6941 00a5 13       		.uleb128 0x13
 6942 00a6 38       		.uleb128 0x38
 6943 00a7 05       		.uleb128 0x5
 6944 00a8 00       		.byte	0
 6945 00a9 00       		.byte	0
 6946 00aa 0F       		.uleb128 0xf
 6947 00ab 16       		.uleb128 0x16
 6948 00ac 00       		.byte	0
 6949 00ad 03       		.uleb128 0x3
 6950 00ae 08       		.uleb128 0x8
ARM GAS  /tmp/ccqzbxJl.s 			page 150


 6951 00af 3A       		.uleb128 0x3a
 6952 00b0 0B       		.uleb128 0xb
 6953 00b1 3B       		.uleb128 0x3b
 6954 00b2 0B       		.uleb128 0xb
 6955 00b3 49       		.uleb128 0x49
 6956 00b4 13       		.uleb128 0x13
 6957 00b5 00       		.byte	0
 6958 00b6 00       		.byte	0
 6959 00b7 10       		.uleb128 0x10
 6960 00b8 16       		.uleb128 0x16
 6961 00b9 00       		.byte	0
 6962 00ba 03       		.uleb128 0x3
 6963 00bb 0E       		.uleb128 0xe
 6964 00bc 3A       		.uleb128 0x3a
 6965 00bd 0B       		.uleb128 0xb
 6966 00be 3B       		.uleb128 0x3b
 6967 00bf 05       		.uleb128 0x5
 6968 00c0 49       		.uleb128 0x49
 6969 00c1 13       		.uleb128 0x13
 6970 00c2 00       		.byte	0
 6971 00c3 00       		.byte	0
 6972 00c4 11       		.uleb128 0x11
 6973 00c5 17       		.uleb128 0x17
 6974 00c6 01       		.byte	0x1
 6975 00c7 0B       		.uleb128 0xb
 6976 00c8 0B       		.uleb128 0xb
 6977 00c9 3A       		.uleb128 0x3a
 6978 00ca 0B       		.uleb128 0xb
 6979 00cb 3B       		.uleb128 0x3b
 6980 00cc 0B       		.uleb128 0xb
 6981 00cd 01       		.uleb128 0x1
 6982 00ce 13       		.uleb128 0x13
 6983 00cf 00       		.byte	0
 6984 00d0 00       		.byte	0
 6985 00d1 12       		.uleb128 0x12
 6986 00d2 0D       		.uleb128 0xd
 6987 00d3 00       		.byte	0
 6988 00d4 03       		.uleb128 0x3
 6989 00d5 0E       		.uleb128 0xe
 6990 00d6 3A       		.uleb128 0x3a
 6991 00d7 0B       		.uleb128 0xb
 6992 00d8 3B       		.uleb128 0x3b
 6993 00d9 0B       		.uleb128 0xb
 6994 00da 49       		.uleb128 0x49
 6995 00db 13       		.uleb128 0x13
 6996 00dc 00       		.byte	0
 6997 00dd 00       		.byte	0
 6998 00de 13       		.uleb128 0x13
 6999 00df 13       		.uleb128 0x13
 7000 00e0 01       		.byte	0x1
 7001 00e1 0B       		.uleb128 0xb
 7002 00e2 0B       		.uleb128 0xb
 7003 00e3 3A       		.uleb128 0x3a
 7004 00e4 0B       		.uleb128 0xb
 7005 00e5 3B       		.uleb128 0x3b
 7006 00e6 0B       		.uleb128 0xb
 7007 00e7 01       		.uleb128 0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 151


 7008 00e8 13       		.uleb128 0x13
 7009 00e9 00       		.byte	0
 7010 00ea 00       		.byte	0
 7011 00eb 14       		.uleb128 0x14
 7012 00ec 13       		.uleb128 0x13
 7013 00ed 01       		.byte	0x1
 7014 00ee 03       		.uleb128 0x3
 7015 00ef 0E       		.uleb128 0xe
 7016 00f0 0B       		.uleb128 0xb
 7017 00f1 0B       		.uleb128 0xb
 7018 00f2 3A       		.uleb128 0x3a
 7019 00f3 0B       		.uleb128 0xb
 7020 00f4 3B       		.uleb128 0x3b
 7021 00f5 0B       		.uleb128 0xb
 7022 00f6 01       		.uleb128 0x1
 7023 00f7 13       		.uleb128 0x13
 7024 00f8 00       		.byte	0
 7025 00f9 00       		.byte	0
 7026 00fa 15       		.uleb128 0x15
 7027 00fb 0D       		.uleb128 0xd
 7028 00fc 00       		.byte	0
 7029 00fd 03       		.uleb128 0x3
 7030 00fe 08       		.uleb128 0x8
 7031 00ff 3A       		.uleb128 0x3a
 7032 0100 0B       		.uleb128 0xb
 7033 0101 3B       		.uleb128 0x3b
 7034 0102 0B       		.uleb128 0xb
 7035 0103 49       		.uleb128 0x49
 7036 0104 13       		.uleb128 0x13
 7037 0105 38       		.uleb128 0x38
 7038 0106 0B       		.uleb128 0xb
 7039 0107 00       		.byte	0
 7040 0108 00       		.byte	0
 7041 0109 16       		.uleb128 0x16
 7042 010a 0F       		.uleb128 0xf
 7043 010b 00       		.byte	0
 7044 010c 0B       		.uleb128 0xb
 7045 010d 0B       		.uleb128 0xb
 7046 010e 49       		.uleb128 0x49
 7047 010f 13       		.uleb128 0x13
 7048 0110 00       		.byte	0
 7049 0111 00       		.byte	0
 7050 0112 17       		.uleb128 0x17
 7051 0113 13       		.uleb128 0x13
 7052 0114 01       		.byte	0x1
 7053 0115 03       		.uleb128 0x3
 7054 0116 0E       		.uleb128 0xe
 7055 0117 0B       		.uleb128 0xb
 7056 0118 05       		.uleb128 0x5
 7057 0119 3A       		.uleb128 0x3a
 7058 011a 0B       		.uleb128 0xb
 7059 011b 3B       		.uleb128 0x3b
 7060 011c 0B       		.uleb128 0xb
 7061 011d 01       		.uleb128 0x1
 7062 011e 13       		.uleb128 0x13
 7063 011f 00       		.byte	0
 7064 0120 00       		.byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 152


 7065 0121 18       		.uleb128 0x18
 7066 0122 15       		.uleb128 0x15
 7067 0123 00       		.byte	0
 7068 0124 27       		.uleb128 0x27
 7069 0125 19       		.uleb128 0x19
 7070 0126 00       		.byte	0
 7071 0127 00       		.byte	0
 7072 0128 19       		.uleb128 0x19
 7073 0129 15       		.uleb128 0x15
 7074 012a 01       		.byte	0x1
 7075 012b 27       		.uleb128 0x27
 7076 012c 19       		.uleb128 0x19
 7077 012d 49       		.uleb128 0x49
 7078 012e 13       		.uleb128 0x13
 7079 012f 01       		.uleb128 0x1
 7080 0130 13       		.uleb128 0x13
 7081 0131 00       		.byte	0
 7082 0132 00       		.byte	0
 7083 0133 1A       		.uleb128 0x1a
 7084 0134 05       		.uleb128 0x5
 7085 0135 00       		.byte	0
 7086 0136 49       		.uleb128 0x49
 7087 0137 13       		.uleb128 0x13
 7088 0138 00       		.byte	0
 7089 0139 00       		.byte	0
 7090 013a 1B       		.uleb128 0x1b
 7091 013b 13       		.uleb128 0x13
 7092 013c 01       		.byte	0x1
 7093 013d 03       		.uleb128 0x3
 7094 013e 0E       		.uleb128 0xe
 7095 013f 0B       		.uleb128 0xb
 7096 0140 05       		.uleb128 0x5
 7097 0141 3A       		.uleb128 0x3a
 7098 0142 0B       		.uleb128 0xb
 7099 0143 3B       		.uleb128 0x3b
 7100 0144 05       		.uleb128 0x5
 7101 0145 01       		.uleb128 0x1
 7102 0146 13       		.uleb128 0x13
 7103 0147 00       		.byte	0
 7104 0148 00       		.byte	0
 7105 0149 1C       		.uleb128 0x1c
 7106 014a 0D       		.uleb128 0xd
 7107 014b 00       		.byte	0
 7108 014c 03       		.uleb128 0x3
 7109 014d 0E       		.uleb128 0xe
 7110 014e 3A       		.uleb128 0x3a
 7111 014f 0B       		.uleb128 0xb
 7112 0150 3B       		.uleb128 0x3b
 7113 0151 05       		.uleb128 0x5
 7114 0152 49       		.uleb128 0x49
 7115 0153 13       		.uleb128 0x13
 7116 0154 38       		.uleb128 0x38
 7117 0155 0B       		.uleb128 0xb
 7118 0156 00       		.byte	0
 7119 0157 00       		.byte	0
 7120 0158 1D       		.uleb128 0x1d
 7121 0159 0D       		.uleb128 0xd
ARM GAS  /tmp/ccqzbxJl.s 			page 153


 7122 015a 00       		.byte	0
 7123 015b 03       		.uleb128 0x3
 7124 015c 0E       		.uleb128 0xe
 7125 015d 3A       		.uleb128 0x3a
 7126 015e 0B       		.uleb128 0xb
 7127 015f 3B       		.uleb128 0x3b
 7128 0160 05       		.uleb128 0x5
 7129 0161 49       		.uleb128 0x49
 7130 0162 13       		.uleb128 0x13
 7131 0163 38       		.uleb128 0x38
 7132 0164 05       		.uleb128 0x5
 7133 0165 00       		.byte	0
 7134 0166 00       		.byte	0
 7135 0167 1E       		.uleb128 0x1e
 7136 0168 13       		.uleb128 0x13
 7137 0169 01       		.byte	0x1
 7138 016a 03       		.uleb128 0x3
 7139 016b 0E       		.uleb128 0xe
 7140 016c 0B       		.uleb128 0xb
 7141 016d 0B       		.uleb128 0xb
 7142 016e 3A       		.uleb128 0x3a
 7143 016f 0B       		.uleb128 0xb
 7144 0170 3B       		.uleb128 0x3b
 7145 0171 05       		.uleb128 0x5
 7146 0172 01       		.uleb128 0x1
 7147 0173 13       		.uleb128 0x13
 7148 0174 00       		.byte	0
 7149 0175 00       		.byte	0
 7150 0176 1F       		.uleb128 0x1f
 7151 0177 13       		.uleb128 0x13
 7152 0178 01       		.byte	0x1
 7153 0179 0B       		.uleb128 0xb
 7154 017a 0B       		.uleb128 0xb
 7155 017b 3A       		.uleb128 0x3a
 7156 017c 0B       		.uleb128 0xb
 7157 017d 3B       		.uleb128 0x3b
 7158 017e 05       		.uleb128 0x5
 7159 017f 01       		.uleb128 0x1
 7160 0180 13       		.uleb128 0x13
 7161 0181 00       		.byte	0
 7162 0182 00       		.byte	0
 7163 0183 20       		.uleb128 0x20
 7164 0184 17       		.uleb128 0x17
 7165 0185 01       		.byte	0x1
 7166 0186 0B       		.uleb128 0xb
 7167 0187 0B       		.uleb128 0xb
 7168 0188 3A       		.uleb128 0x3a
 7169 0189 0B       		.uleb128 0xb
 7170 018a 3B       		.uleb128 0x3b
 7171 018b 05       		.uleb128 0x5
 7172 018c 01       		.uleb128 0x1
 7173 018d 13       		.uleb128 0x13
 7174 018e 00       		.byte	0
 7175 018f 00       		.byte	0
 7176 0190 21       		.uleb128 0x21
 7177 0191 0D       		.uleb128 0xd
 7178 0192 00       		.byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 154


 7179 0193 03       		.uleb128 0x3
 7180 0194 0E       		.uleb128 0xe
 7181 0195 3A       		.uleb128 0x3a
 7182 0196 0B       		.uleb128 0xb
 7183 0197 3B       		.uleb128 0x3b
 7184 0198 05       		.uleb128 0x5
 7185 0199 49       		.uleb128 0x49
 7186 019a 13       		.uleb128 0x13
 7187 019b 00       		.byte	0
 7188 019c 00       		.byte	0
 7189 019d 22       		.uleb128 0x22
 7190 019e 15       		.uleb128 0x15
 7191 019f 01       		.byte	0x1
 7192 01a0 27       		.uleb128 0x27
 7193 01a1 19       		.uleb128 0x19
 7194 01a2 01       		.uleb128 0x1
 7195 01a3 13       		.uleb128 0x13
 7196 01a4 00       		.byte	0
 7197 01a5 00       		.byte	0
 7198 01a6 23       		.uleb128 0x23
 7199 01a7 34       		.uleb128 0x34
 7200 01a8 00       		.byte	0
 7201 01a9 03       		.uleb128 0x3
 7202 01aa 0E       		.uleb128 0xe
 7203 01ab 3A       		.uleb128 0x3a
 7204 01ac 0B       		.uleb128 0xb
 7205 01ad 3B       		.uleb128 0x3b
 7206 01ae 0B       		.uleb128 0xb
 7207 01af 49       		.uleb128 0x49
 7208 01b0 13       		.uleb128 0x13
 7209 01b1 02       		.uleb128 0x2
 7210 01b2 18       		.uleb128 0x18
 7211 01b3 00       		.byte	0
 7212 01b4 00       		.byte	0
 7213 01b5 24       		.uleb128 0x24
 7214 01b6 04       		.uleb128 0x4
 7215 01b7 01       		.byte	0x1
 7216 01b8 03       		.uleb128 0x3
 7217 01b9 0E       		.uleb128 0xe
 7218 01ba 0B       		.uleb128 0xb
 7219 01bb 0B       		.uleb128 0xb
 7220 01bc 49       		.uleb128 0x49
 7221 01bd 13       		.uleb128 0x13
 7222 01be 3A       		.uleb128 0x3a
 7223 01bf 0B       		.uleb128 0xb
 7224 01c0 3B       		.uleb128 0x3b
 7225 01c1 0B       		.uleb128 0xb
 7226 01c2 01       		.uleb128 0x1
 7227 01c3 13       		.uleb128 0x13
 7228 01c4 00       		.byte	0
 7229 01c5 00       		.byte	0
 7230 01c6 25       		.uleb128 0x25
 7231 01c7 28       		.uleb128 0x28
 7232 01c8 00       		.byte	0
 7233 01c9 03       		.uleb128 0x3
 7234 01ca 0E       		.uleb128 0xe
 7235 01cb 1C       		.uleb128 0x1c
ARM GAS  /tmp/ccqzbxJl.s 			page 155


 7236 01cc 0B       		.uleb128 0xb
 7237 01cd 00       		.byte	0
 7238 01ce 00       		.byte	0
 7239 01cf 26       		.uleb128 0x26
 7240 01d0 28       		.uleb128 0x28
 7241 01d1 00       		.byte	0
 7242 01d2 03       		.uleb128 0x3
 7243 01d3 0E       		.uleb128 0xe
 7244 01d4 1C       		.uleb128 0x1c
 7245 01d5 06       		.uleb128 0x6
 7246 01d6 00       		.byte	0
 7247 01d7 00       		.byte	0
 7248 01d8 27       		.uleb128 0x27
 7249 01d9 34       		.uleb128 0x34
 7250 01da 00       		.byte	0
 7251 01db 03       		.uleb128 0x3
 7252 01dc 0E       		.uleb128 0xe
 7253 01dd 3A       		.uleb128 0x3a
 7254 01de 0B       		.uleb128 0xb
 7255 01df 3B       		.uleb128 0x3b
 7256 01e0 05       		.uleb128 0x5
 7257 01e1 49       		.uleb128 0x49
 7258 01e2 13       		.uleb128 0x13
 7259 01e3 3F       		.uleb128 0x3f
 7260 01e4 19       		.uleb128 0x19
 7261 01e5 02       		.uleb128 0x2
 7262 01e6 18       		.uleb128 0x18
 7263 01e7 00       		.byte	0
 7264 01e8 00       		.byte	0
 7265 01e9 28       		.uleb128 0x28
 7266 01ea 2E       		.uleb128 0x2e
 7267 01eb 01       		.byte	0x1
 7268 01ec 3F       		.uleb128 0x3f
 7269 01ed 19       		.uleb128 0x19
 7270 01ee 03       		.uleb128 0x3
 7271 01ef 0E       		.uleb128 0xe
 7272 01f0 3A       		.uleb128 0x3a
 7273 01f1 0B       		.uleb128 0xb
 7274 01f2 3B       		.uleb128 0x3b
 7275 01f3 05       		.uleb128 0x5
 7276 01f4 27       		.uleb128 0x27
 7277 01f5 19       		.uleb128 0x19
 7278 01f6 11       		.uleb128 0x11
 7279 01f7 01       		.uleb128 0x1
 7280 01f8 12       		.uleb128 0x12
 7281 01f9 06       		.uleb128 0x6
 7282 01fa 40       		.uleb128 0x40
 7283 01fb 18       		.uleb128 0x18
 7284 01fc 9742     		.uleb128 0x2117
 7285 01fe 19       		.uleb128 0x19
 7286 01ff 01       		.uleb128 0x1
 7287 0200 13       		.uleb128 0x13
 7288 0201 00       		.byte	0
 7289 0202 00       		.byte	0
 7290 0203 29       		.uleb128 0x29
 7291 0204 05       		.uleb128 0x5
 7292 0205 00       		.byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 156


 7293 0206 03       		.uleb128 0x3
 7294 0207 0E       		.uleb128 0xe
 7295 0208 3A       		.uleb128 0x3a
 7296 0209 0B       		.uleb128 0xb
 7297 020a 3B       		.uleb128 0x3b
 7298 020b 05       		.uleb128 0x5
 7299 020c 49       		.uleb128 0x49
 7300 020d 13       		.uleb128 0x13
 7301 020e 02       		.uleb128 0x2
 7302 020f 18       		.uleb128 0x18
 7303 0210 00       		.byte	0
 7304 0211 00       		.byte	0
 7305 0212 2A       		.uleb128 0x2a
 7306 0213 05       		.uleb128 0x5
 7307 0214 00       		.byte	0
 7308 0215 03       		.uleb128 0x3
 7309 0216 0E       		.uleb128 0xe
 7310 0217 3A       		.uleb128 0x3a
 7311 0218 0B       		.uleb128 0xb
 7312 0219 3B       		.uleb128 0x3b
 7313 021a 05       		.uleb128 0x5
 7314 021b 49       		.uleb128 0x49
 7315 021c 13       		.uleb128 0x13
 7316 021d 02       		.uleb128 0x2
 7317 021e 17       		.uleb128 0x17
 7318 021f 00       		.byte	0
 7319 0220 00       		.byte	0
 7320 0221 2B       		.uleb128 0x2b
 7321 0222 2E       		.uleb128 0x2e
 7322 0223 01       		.byte	0x1
 7323 0224 3F       		.uleb128 0x3f
 7324 0225 19       		.uleb128 0x19
 7325 0226 03       		.uleb128 0x3
 7326 0227 0E       		.uleb128 0xe
 7327 0228 3A       		.uleb128 0x3a
 7328 0229 0B       		.uleb128 0xb
 7329 022a 3B       		.uleb128 0x3b
 7330 022b 05       		.uleb128 0x5
 7331 022c 27       		.uleb128 0x27
 7332 022d 19       		.uleb128 0x19
 7333 022e 49       		.uleb128 0x49
 7334 022f 13       		.uleb128 0x13
 7335 0230 11       		.uleb128 0x11
 7336 0231 01       		.uleb128 0x1
 7337 0232 12       		.uleb128 0x12
 7338 0233 06       		.uleb128 0x6
 7339 0234 40       		.uleb128 0x40
 7340 0235 18       		.uleb128 0x18
 7341 0236 9742     		.uleb128 0x2117
 7342 0238 19       		.uleb128 0x19
 7343 0239 01       		.uleb128 0x1
 7344 023a 13       		.uleb128 0x13
 7345 023b 00       		.byte	0
 7346 023c 00       		.byte	0
 7347 023d 2C       		.uleb128 0x2c
 7348 023e 34       		.uleb128 0x34
 7349 023f 00       		.byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 157


 7350 0240 03       		.uleb128 0x3
 7351 0241 0E       		.uleb128 0xe
 7352 0242 3A       		.uleb128 0x3a
 7353 0243 0B       		.uleb128 0xb
 7354 0244 3B       		.uleb128 0x3b
 7355 0245 05       		.uleb128 0x5
 7356 0246 49       		.uleb128 0x49
 7357 0247 13       		.uleb128 0x13
 7358 0248 02       		.uleb128 0x2
 7359 0249 17       		.uleb128 0x17
 7360 024a 00       		.byte	0
 7361 024b 00       		.byte	0
 7362 024c 2D       		.uleb128 0x2d
 7363 024d 2E       		.uleb128 0x2e
 7364 024e 01       		.byte	0x1
 7365 024f 3F       		.uleb128 0x3f
 7366 0250 19       		.uleb128 0x19
 7367 0251 03       		.uleb128 0x3
 7368 0252 0E       		.uleb128 0xe
 7369 0253 3A       		.uleb128 0x3a
 7370 0254 0B       		.uleb128 0xb
 7371 0255 3B       		.uleb128 0x3b
 7372 0256 05       		.uleb128 0x5
 7373 0257 27       		.uleb128 0x27
 7374 0258 19       		.uleb128 0x19
 7375 0259 49       		.uleb128 0x49
 7376 025a 13       		.uleb128 0x13
 7377 025b 20       		.uleb128 0x20
 7378 025c 0B       		.uleb128 0xb
 7379 025d 01       		.uleb128 0x1
 7380 025e 13       		.uleb128 0x13
 7381 025f 00       		.byte	0
 7382 0260 00       		.byte	0
 7383 0261 2E       		.uleb128 0x2e
 7384 0262 05       		.uleb128 0x5
 7385 0263 00       		.byte	0
 7386 0264 03       		.uleb128 0x3
 7387 0265 0E       		.uleb128 0xe
 7388 0266 3A       		.uleb128 0x3a
 7389 0267 0B       		.uleb128 0xb
 7390 0268 3B       		.uleb128 0x3b
 7391 0269 05       		.uleb128 0x5
 7392 026a 49       		.uleb128 0x49
 7393 026b 13       		.uleb128 0x13
 7394 026c 00       		.byte	0
 7395 026d 00       		.byte	0
 7396 026e 2F       		.uleb128 0x2f
 7397 026f 34       		.uleb128 0x34
 7398 0270 00       		.byte	0
 7399 0271 03       		.uleb128 0x3
 7400 0272 0E       		.uleb128 0xe
 7401 0273 3A       		.uleb128 0x3a
 7402 0274 0B       		.uleb128 0xb
 7403 0275 3B       		.uleb128 0x3b
 7404 0276 05       		.uleb128 0x5
 7405 0277 49       		.uleb128 0x49
 7406 0278 13       		.uleb128 0x13
ARM GAS  /tmp/ccqzbxJl.s 			page 158


 7407 0279 00       		.byte	0
 7408 027a 00       		.byte	0
 7409 027b 30       		.uleb128 0x30
 7410 027c 1D       		.uleb128 0x1d
 7411 027d 01       		.byte	0x1
 7412 027e 31       		.uleb128 0x31
 7413 027f 13       		.uleb128 0x13
 7414 0280 52       		.uleb128 0x52
 7415 0281 01       		.uleb128 0x1
 7416 0282 55       		.uleb128 0x55
 7417 0283 17       		.uleb128 0x17
 7418 0284 58       		.uleb128 0x58
 7419 0285 0B       		.uleb128 0xb
 7420 0286 59       		.uleb128 0x59
 7421 0287 05       		.uleb128 0x5
 7422 0288 00       		.byte	0
 7423 0289 00       		.byte	0
 7424 028a 31       		.uleb128 0x31
 7425 028b 05       		.uleb128 0x5
 7426 028c 00       		.byte	0
 7427 028d 31       		.uleb128 0x31
 7428 028e 13       		.uleb128 0x13
 7429 028f 02       		.uleb128 0x2
 7430 0290 17       		.uleb128 0x17
 7431 0291 00       		.byte	0
 7432 0292 00       		.byte	0
 7433 0293 32       		.uleb128 0x32
 7434 0294 0B       		.uleb128 0xb
 7435 0295 01       		.byte	0x1
 7436 0296 55       		.uleb128 0x55
 7437 0297 17       		.uleb128 0x17
 7438 0298 00       		.byte	0
 7439 0299 00       		.byte	0
 7440 029a 33       		.uleb128 0x33
 7441 029b 34       		.uleb128 0x34
 7442 029c 00       		.byte	0
 7443 029d 31       		.uleb128 0x31
 7444 029e 13       		.uleb128 0x13
 7445 029f 02       		.uleb128 0x2
 7446 02a0 18       		.uleb128 0x18
 7447 02a1 00       		.byte	0
 7448 02a2 00       		.byte	0
 7449 02a3 34       		.uleb128 0x34
 7450 02a4 1D       		.uleb128 0x1d
 7451 02a5 01       		.byte	0x1
 7452 02a6 31       		.uleb128 0x31
 7453 02a7 13       		.uleb128 0x13
 7454 02a8 52       		.uleb128 0x52
 7455 02a9 01       		.uleb128 0x1
 7456 02aa 55       		.uleb128 0x55
 7457 02ab 17       		.uleb128 0x17
 7458 02ac 58       		.uleb128 0x58
 7459 02ad 0B       		.uleb128 0xb
 7460 02ae 59       		.uleb128 0x59
 7461 02af 05       		.uleb128 0x5
 7462 02b0 01       		.uleb128 0x1
 7463 02b1 13       		.uleb128 0x13
ARM GAS  /tmp/ccqzbxJl.s 			page 159


 7464 02b2 00       		.byte	0
 7465 02b3 00       		.byte	0
 7466 02b4 35       		.uleb128 0x35
 7467 02b5 1D       		.uleb128 0x1d
 7468 02b6 01       		.byte	0x1
 7469 02b7 31       		.uleb128 0x31
 7470 02b8 13       		.uleb128 0x13
 7471 02b9 11       		.uleb128 0x11
 7472 02ba 01       		.uleb128 0x1
 7473 02bb 12       		.uleb128 0x12
 7474 02bc 06       		.uleb128 0x6
 7475 02bd 58       		.uleb128 0x58
 7476 02be 0B       		.uleb128 0xb
 7477 02bf 59       		.uleb128 0x59
 7478 02c0 05       		.uleb128 0x5
 7479 02c1 00       		.byte	0
 7480 02c2 00       		.byte	0
 7481 02c3 36       		.uleb128 0x36
 7482 02c4 34       		.uleb128 0x34
 7483 02c5 00       		.byte	0
 7484 02c6 31       		.uleb128 0x31
 7485 02c7 13       		.uleb128 0x13
 7486 02c8 00       		.byte	0
 7487 02c9 00       		.byte	0
 7488 02ca 37       		.uleb128 0x37
 7489 02cb 05       		.uleb128 0x5
 7490 02cc 00       		.byte	0
 7491 02cd 31       		.uleb128 0x31
 7492 02ce 13       		.uleb128 0x13
 7493 02cf 00       		.byte	0
 7494 02d0 00       		.byte	0
 7495 02d1 38       		.uleb128 0x38
 7496 02d2 2E       		.uleb128 0x2e
 7497 02d3 01       		.byte	0x1
 7498 02d4 3F       		.uleb128 0x3f
 7499 02d5 19       		.uleb128 0x19
 7500 02d6 03       		.uleb128 0x3
 7501 02d7 0E       		.uleb128 0xe
 7502 02d8 3A       		.uleb128 0x3a
 7503 02d9 0B       		.uleb128 0xb
 7504 02da 3B       		.uleb128 0x3b
 7505 02db 05       		.uleb128 0x5
 7506 02dc 27       		.uleb128 0x27
 7507 02dd 19       		.uleb128 0x19
 7508 02de 20       		.uleb128 0x20
 7509 02df 0B       		.uleb128 0xb
 7510 02e0 01       		.uleb128 0x1
 7511 02e1 13       		.uleb128 0x13
 7512 02e2 00       		.byte	0
 7513 02e3 00       		.byte	0
 7514 02e4 39       		.uleb128 0x39
 7515 02e5 1D       		.uleb128 0x1d
 7516 02e6 01       		.byte	0x1
 7517 02e7 31       		.uleb128 0x31
 7518 02e8 13       		.uleb128 0x13
 7519 02e9 11       		.uleb128 0x11
 7520 02ea 01       		.uleb128 0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 160


 7521 02eb 12       		.uleb128 0x12
 7522 02ec 06       		.uleb128 0x6
 7523 02ed 58       		.uleb128 0x58
 7524 02ee 0B       		.uleb128 0xb
 7525 02ef 59       		.uleb128 0x59
 7526 02f0 05       		.uleb128 0x5
 7527 02f1 01       		.uleb128 0x1
 7528 02f2 13       		.uleb128 0x13
 7529 02f3 00       		.byte	0
 7530 02f4 00       		.byte	0
 7531 02f5 3A       		.uleb128 0x3a
 7532 02f6 0B       		.uleb128 0xb
 7533 02f7 01       		.byte	0x1
 7534 02f8 11       		.uleb128 0x11
 7535 02f9 01       		.uleb128 0x1
 7536 02fa 12       		.uleb128 0x12
 7537 02fb 06       		.uleb128 0x6
 7538 02fc 00       		.byte	0
 7539 02fd 00       		.byte	0
 7540 02fe 3B       		.uleb128 0x3b
 7541 02ff 2E       		.uleb128 0x2e
 7542 0300 01       		.byte	0x1
 7543 0301 3F       		.uleb128 0x3f
 7544 0302 19       		.uleb128 0x19
 7545 0303 03       		.uleb128 0x3
 7546 0304 0E       		.uleb128 0xe
 7547 0305 3A       		.uleb128 0x3a
 7548 0306 0B       		.uleb128 0xb
 7549 0307 3B       		.uleb128 0x3b
 7550 0308 05       		.uleb128 0x5
 7551 0309 27       		.uleb128 0x27
 7552 030a 19       		.uleb128 0x19
 7553 030b 01       		.uleb128 0x1
 7554 030c 13       		.uleb128 0x13
 7555 030d 00       		.byte	0
 7556 030e 00       		.byte	0
 7557 030f 3C       		.uleb128 0x3c
 7558 0310 898201   		.uleb128 0x4109
 7559 0313 01       		.byte	0x1
 7560 0314 11       		.uleb128 0x11
 7561 0315 01       		.uleb128 0x1
 7562 0316 31       		.uleb128 0x31
 7563 0317 13       		.uleb128 0x13
 7564 0318 00       		.byte	0
 7565 0319 00       		.byte	0
 7566 031a 3D       		.uleb128 0x3d
 7567 031b 8A8201   		.uleb128 0x410a
 7568 031e 00       		.byte	0
 7569 031f 02       		.uleb128 0x2
 7570 0320 18       		.uleb128 0x18
 7571 0321 9142     		.uleb128 0x2111
 7572 0323 18       		.uleb128 0x18
 7573 0324 00       		.byte	0
 7574 0325 00       		.byte	0
 7575 0326 3E       		.uleb128 0x3e
 7576 0327 2E       		.uleb128 0x2e
 7577 0328 01       		.byte	0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 161


 7578 0329 3F       		.uleb128 0x3f
 7579 032a 19       		.uleb128 0x19
 7580 032b 03       		.uleb128 0x3
 7581 032c 0E       		.uleb128 0xe
 7582 032d 3A       		.uleb128 0x3a
 7583 032e 0B       		.uleb128 0xb
 7584 032f 3B       		.uleb128 0x3b
 7585 0330 0B       		.uleb128 0xb
 7586 0331 27       		.uleb128 0x27
 7587 0332 19       		.uleb128 0x19
 7588 0333 20       		.uleb128 0x20
 7589 0334 0B       		.uleb128 0xb
 7590 0335 01       		.uleb128 0x1
 7591 0336 13       		.uleb128 0x13
 7592 0337 00       		.byte	0
 7593 0338 00       		.byte	0
 7594 0339 3F       		.uleb128 0x3f
 7595 033a 05       		.uleb128 0x5
 7596 033b 00       		.byte	0
 7597 033c 03       		.uleb128 0x3
 7598 033d 0E       		.uleb128 0xe
 7599 033e 3A       		.uleb128 0x3a
 7600 033f 0B       		.uleb128 0xb
 7601 0340 3B       		.uleb128 0x3b
 7602 0341 0B       		.uleb128 0xb
 7603 0342 49       		.uleb128 0x49
 7604 0343 13       		.uleb128 0x13
 7605 0344 00       		.byte	0
 7606 0345 00       		.byte	0
 7607 0346 40       		.uleb128 0x40
 7608 0347 34       		.uleb128 0x34
 7609 0348 00       		.byte	0
 7610 0349 03       		.uleb128 0x3
 7611 034a 0E       		.uleb128 0xe
 7612 034b 3A       		.uleb128 0x3a
 7613 034c 0B       		.uleb128 0xb
 7614 034d 3B       		.uleb128 0x3b
 7615 034e 0B       		.uleb128 0xb
 7616 034f 49       		.uleb128 0x49
 7617 0350 13       		.uleb128 0x13
 7618 0351 00       		.byte	0
 7619 0352 00       		.byte	0
 7620 0353 41       		.uleb128 0x41
 7621 0354 2E       		.uleb128 0x2e
 7622 0355 01       		.byte	0x1
 7623 0356 3F       		.uleb128 0x3f
 7624 0357 19       		.uleb128 0x19
 7625 0358 03       		.uleb128 0x3
 7626 0359 0E       		.uleb128 0xe
 7627 035a 3A       		.uleb128 0x3a
 7628 035b 0B       		.uleb128 0xb
 7629 035c 3B       		.uleb128 0x3b
 7630 035d 0B       		.uleb128 0xb
 7631 035e 27       		.uleb128 0x27
 7632 035f 19       		.uleb128 0x19
 7633 0360 49       		.uleb128 0x49
 7634 0361 13       		.uleb128 0x13
ARM GAS  /tmp/ccqzbxJl.s 			page 162


 7635 0362 11       		.uleb128 0x11
 7636 0363 01       		.uleb128 0x1
 7637 0364 12       		.uleb128 0x12
 7638 0365 06       		.uleb128 0x6
 7639 0366 40       		.uleb128 0x40
 7640 0367 18       		.uleb128 0x18
 7641 0368 9742     		.uleb128 0x2117
 7642 036a 19       		.uleb128 0x19
 7643 036b 01       		.uleb128 0x1
 7644 036c 13       		.uleb128 0x13
 7645 036d 00       		.byte	0
 7646 036e 00       		.byte	0
 7647 036f 42       		.uleb128 0x42
 7648 0370 05       		.uleb128 0x5
 7649 0371 00       		.byte	0
 7650 0372 03       		.uleb128 0x3
 7651 0373 0E       		.uleb128 0xe
 7652 0374 3A       		.uleb128 0x3a
 7653 0375 0B       		.uleb128 0xb
 7654 0376 3B       		.uleb128 0x3b
 7655 0377 0B       		.uleb128 0xb
 7656 0378 49       		.uleb128 0x49
 7657 0379 13       		.uleb128 0x13
 7658 037a 02       		.uleb128 0x2
 7659 037b 17       		.uleb128 0x17
 7660 037c 00       		.byte	0
 7661 037d 00       		.byte	0
 7662 037e 43       		.uleb128 0x43
 7663 037f 05       		.uleb128 0x5
 7664 0380 00       		.byte	0
 7665 0381 03       		.uleb128 0x3
 7666 0382 0E       		.uleb128 0xe
 7667 0383 3A       		.uleb128 0x3a
 7668 0384 0B       		.uleb128 0xb
 7669 0385 3B       		.uleb128 0x3b
 7670 0386 0B       		.uleb128 0xb
 7671 0387 49       		.uleb128 0x49
 7672 0388 13       		.uleb128 0x13
 7673 0389 02       		.uleb128 0x2
 7674 038a 18       		.uleb128 0x18
 7675 038b 00       		.byte	0
 7676 038c 00       		.byte	0
 7677 038d 44       		.uleb128 0x44
 7678 038e 34       		.uleb128 0x34
 7679 038f 00       		.byte	0
 7680 0390 03       		.uleb128 0x3
 7681 0391 0E       		.uleb128 0xe
 7682 0392 3A       		.uleb128 0x3a
 7683 0393 0B       		.uleb128 0xb
 7684 0394 3B       		.uleb128 0x3b
 7685 0395 0B       		.uleb128 0xb
 7686 0396 49       		.uleb128 0x49
 7687 0397 13       		.uleb128 0x13
 7688 0398 02       		.uleb128 0x2
 7689 0399 17       		.uleb128 0x17
 7690 039a 00       		.byte	0
 7691 039b 00       		.byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 163


 7692 039c 45       		.uleb128 0x45
 7693 039d 2E       		.uleb128 0x2e
 7694 039e 01       		.byte	0x1
 7695 039f 3F       		.uleb128 0x3f
 7696 03a0 19       		.uleb128 0x19
 7697 03a1 03       		.uleb128 0x3
 7698 03a2 0E       		.uleb128 0xe
 7699 03a3 3A       		.uleb128 0x3a
 7700 03a4 0B       		.uleb128 0xb
 7701 03a5 3B       		.uleb128 0x3b
 7702 03a6 0B       		.uleb128 0xb
 7703 03a7 27       		.uleb128 0x27
 7704 03a8 19       		.uleb128 0x19
 7705 03a9 01       		.uleb128 0x1
 7706 03aa 13       		.uleb128 0x13
 7707 03ab 00       		.byte	0
 7708 03ac 00       		.byte	0
 7709 03ad 46       		.uleb128 0x46
 7710 03ae 2E       		.uleb128 0x2e
 7711 03af 01       		.byte	0x1
 7712 03b0 3F       		.uleb128 0x3f
 7713 03b1 19       		.uleb128 0x19
 7714 03b2 03       		.uleb128 0x3
 7715 03b3 0E       		.uleb128 0xe
 7716 03b4 3A       		.uleb128 0x3a
 7717 03b5 0B       		.uleb128 0xb
 7718 03b6 3B       		.uleb128 0x3b
 7719 03b7 0B       		.uleb128 0xb
 7720 03b8 27       		.uleb128 0x27
 7721 03b9 19       		.uleb128 0x19
 7722 03ba 11       		.uleb128 0x11
 7723 03bb 01       		.uleb128 0x1
 7724 03bc 12       		.uleb128 0x12
 7725 03bd 06       		.uleb128 0x6
 7726 03be 40       		.uleb128 0x40
 7727 03bf 18       		.uleb128 0x18
 7728 03c0 9742     		.uleb128 0x2117
 7729 03c2 19       		.uleb128 0x19
 7730 03c3 01       		.uleb128 0x1
 7731 03c4 13       		.uleb128 0x13
 7732 03c5 00       		.byte	0
 7733 03c6 00       		.byte	0
 7734 03c7 47       		.uleb128 0x47
 7735 03c8 2E       		.uleb128 0x2e
 7736 03c9 01       		.byte	0x1
 7737 03ca 31       		.uleb128 0x31
 7738 03cb 13       		.uleb128 0x13
 7739 03cc 11       		.uleb128 0x11
 7740 03cd 01       		.uleb128 0x1
 7741 03ce 12       		.uleb128 0x12
 7742 03cf 06       		.uleb128 0x6
 7743 03d0 40       		.uleb128 0x40
 7744 03d1 18       		.uleb128 0x18
 7745 03d2 9742     		.uleb128 0x2117
 7746 03d4 19       		.uleb128 0x19
 7747 03d5 01       		.uleb128 0x1
 7748 03d6 13       		.uleb128 0x13
ARM GAS  /tmp/ccqzbxJl.s 			page 164


 7749 03d7 00       		.byte	0
 7750 03d8 00       		.byte	0
 7751 03d9 48       		.uleb128 0x48
 7752 03da 05       		.uleb128 0x5
 7753 03db 00       		.byte	0
 7754 03dc 31       		.uleb128 0x31
 7755 03dd 13       		.uleb128 0x13
 7756 03de 02       		.uleb128 0x2
 7757 03df 18       		.uleb128 0x18
 7758 03e0 00       		.byte	0
 7759 03e1 00       		.byte	0
 7760 03e2 49       		.uleb128 0x49
 7761 03e3 34       		.uleb128 0x34
 7762 03e4 00       		.byte	0
 7763 03e5 31       		.uleb128 0x31
 7764 03e6 13       		.uleb128 0x13
 7765 03e7 02       		.uleb128 0x2
 7766 03e8 17       		.uleb128 0x17
 7767 03e9 00       		.byte	0
 7768 03ea 00       		.byte	0
 7769 03eb 4A       		.uleb128 0x4a
 7770 03ec 2E       		.uleb128 0x2e
 7771 03ed 01       		.byte	0x1
 7772 03ee 31       		.uleb128 0x31
 7773 03ef 13       		.uleb128 0x13
 7774 03f0 11       		.uleb128 0x11
 7775 03f1 01       		.uleb128 0x1
 7776 03f2 12       		.uleb128 0x12
 7777 03f3 06       		.uleb128 0x6
 7778 03f4 40       		.uleb128 0x40
 7779 03f5 18       		.uleb128 0x18
 7780 03f6 9742     		.uleb128 0x2117
 7781 03f8 19       		.uleb128 0x19
 7782 03f9 00       		.byte	0
 7783 03fa 00       		.byte	0
 7784 03fb 00       		.byte	0
 7785              		.section	.debug_loc,"",%progbits
 7786              	.Ldebug_loc0:
 7787              	.LLST151:
 7788 0000 00000000 		.4byte	.LVL239
 7789 0004 0A000000 		.4byte	.LVL240
 7790 0008 0100     		.2byte	0x1
 7791 000a 52       		.byte	0x52
 7792 000b 0A000000 		.4byte	.LVL240
 7793 000f 24000000 		.4byte	.LFE191
 7794 0013 0400     		.2byte	0x4
 7795 0015 F3       		.byte	0xf3
 7796 0016 01       		.uleb128 0x1
 7797 0017 52       		.byte	0x52
 7798 0018 9F       		.byte	0x9f
 7799 0019 00000000 		.4byte	0
 7800 001d 00000000 		.4byte	0
 7801              	.LLST150:
 7802 0021 00000000 		.4byte	.LVL237
 7803 0025 04000000 		.4byte	.LVL238
 7804 0029 0100     		.2byte	0x1
 7805 002b 50       		.byte	0x50
ARM GAS  /tmp/ccqzbxJl.s 			page 165


 7806 002c 04000000 		.4byte	.LVL238
 7807 0030 06000000 		.4byte	.LFE190
 7808 0034 0400     		.2byte	0x4
 7809 0036 F3       		.byte	0xf3
 7810 0037 01       		.uleb128 0x1
 7811 0038 50       		.byte	0x50
 7812 0039 9F       		.byte	0x9f
 7813 003a 00000000 		.4byte	0
 7814 003e 00000000 		.4byte	0
 7815              	.LLST149:
 7816 0042 00000000 		.4byte	.LVL235
 7817 0046 04000000 		.4byte	.LVL236
 7818 004a 0100     		.2byte	0x1
 7819 004c 50       		.byte	0x50
 7820 004d 04000000 		.4byte	.LVL236
 7821 0051 06000000 		.4byte	.LFE189
 7822 0055 0400     		.2byte	0x4
 7823 0057 F3       		.byte	0xf3
 7824 0058 01       		.uleb128 0x1
 7825 0059 50       		.byte	0x50
 7826 005a 9F       		.byte	0x9f
 7827 005b 00000000 		.4byte	0
 7828 005f 00000000 		.4byte	0
 7829              	.LLST148:
 7830 0063 00000000 		.4byte	.LVL229
 7831 0067 0E000000 		.4byte	.LVL230
 7832 006b 0100     		.2byte	0x1
 7833 006d 50       		.byte	0x50
 7834 006e 0E000000 		.4byte	.LVL230
 7835 0072 12000000 		.4byte	.LVL231
 7836 0076 0400     		.2byte	0x4
 7837 0078 F3       		.byte	0xf3
 7838 0079 01       		.uleb128 0x1
 7839 007a 50       		.byte	0x50
 7840 007b 9F       		.byte	0x9f
 7841 007c 12000000 		.4byte	.LVL231
 7842 0080 14000000 		.4byte	.LVL232
 7843 0084 0100     		.2byte	0x1
 7844 0086 50       		.byte	0x50
 7845 0087 14000000 		.4byte	.LVL232
 7846 008b 16000000 		.4byte	.LFE186
 7847 008f 0400     		.2byte	0x4
 7848 0091 F3       		.byte	0xf3
 7849 0092 01       		.uleb128 0x1
 7850 0093 50       		.byte	0x50
 7851 0094 9F       		.byte	0x9f
 7852 0095 00000000 		.4byte	0
 7853 0099 00000000 		.4byte	0
 7854              	.LLST147:
 7855 009d 00000000 		.4byte	.LVL225
 7856 00a1 04000000 		.4byte	.LVL226
 7857 00a5 0100     		.2byte	0x1
 7858 00a7 51       		.byte	0x51
 7859 00a8 04000000 		.4byte	.LVL226
 7860 00ac 0A000000 		.4byte	.LFE183
 7861 00b0 0100     		.2byte	0x1
 7862 00b2 51       		.byte	0x51
ARM GAS  /tmp/ccqzbxJl.s 			page 166


 7863 00b3 00000000 		.4byte	0
 7864 00b7 00000000 		.4byte	0
 7865              	.LLST145:
 7866 00bb 00000000 		.4byte	.LVL222
 7867 00bf 06000000 		.4byte	.LVL223
 7868 00c3 0100     		.2byte	0x1
 7869 00c5 50       		.byte	0x50
 7870 00c6 06000000 		.4byte	.LVL223
 7871 00ca 0C000000 		.4byte	.LFE182
 7872 00ce 0400     		.2byte	0x4
 7873 00d0 F3       		.byte	0xf3
 7874 00d1 01       		.uleb128 0x1
 7875 00d2 50       		.byte	0x50
 7876 00d3 9F       		.byte	0x9f
 7877 00d4 00000000 		.4byte	0
 7878 00d8 00000000 		.4byte	0
 7879              	.LLST146:
 7880 00dc 00000000 		.4byte	.LVL222
 7881 00e0 06000000 		.4byte	.LVL223
 7882 00e4 0700     		.2byte	0x7
 7883 00e6 31       		.byte	0x31
 7884 00e7 70       		.byte	0x70
 7885 00e8 00       		.sleb128 0
 7886 00e9 4F       		.byte	0x4f
 7887 00ea 1A       		.byte	0x1a
 7888 00eb 24       		.byte	0x24
 7889 00ec 9F       		.byte	0x9f
 7890 00ed 06000000 		.4byte	.LVL223
 7891 00f1 0A000000 		.4byte	.LVL224
 7892 00f5 0800     		.2byte	0x8
 7893 00f7 31       		.byte	0x31
 7894 00f8 F3       		.byte	0xf3
 7895 00f9 01       		.uleb128 0x1
 7896 00fa 50       		.byte	0x50
 7897 00fb 4F       		.byte	0x4f
 7898 00fc 1A       		.byte	0x1a
 7899 00fd 24       		.byte	0x24
 7900 00fe 9F       		.byte	0x9f
 7901 00ff 0A000000 		.4byte	.LVL224
 7902 0103 0C000000 		.4byte	.LFE182
 7903 0107 0100     		.2byte	0x1
 7904 0109 50       		.byte	0x50
 7905 010a 00000000 		.4byte	0
 7906 010e 00000000 		.4byte	0
 7907              	.LLST143:
 7908 0112 00000000 		.4byte	.LVL217
 7909 0116 06000000 		.4byte	.LVL218
 7910 011a 0100     		.2byte	0x1
 7911 011c 50       		.byte	0x50
 7912 011d 06000000 		.4byte	.LVL218
 7913 0121 0A000000 		.4byte	.LVL220
 7914 0125 0400     		.2byte	0x4
 7915 0127 F3       		.byte	0xf3
 7916 0128 01       		.uleb128 0x1
 7917 0129 50       		.byte	0x50
 7918 012a 9F       		.byte	0x9f
 7919 012b 0A000000 		.4byte	.LVL220
ARM GAS  /tmp/ccqzbxJl.s 			page 167


 7920 012f 10000000 		.4byte	.LVL221
 7921 0133 0100     		.2byte	0x1
 7922 0135 50       		.byte	0x50
 7923 0136 10000000 		.4byte	.LVL221
 7924 013a 14000000 		.4byte	.LFE181
 7925 013e 0400     		.2byte	0x4
 7926 0140 F3       		.byte	0xf3
 7927 0141 01       		.uleb128 0x1
 7928 0142 50       		.byte	0x50
 7929 0143 9F       		.byte	0x9f
 7930 0144 00000000 		.4byte	0
 7931 0148 00000000 		.4byte	0
 7932              	.LLST144:
 7933 014c 00000000 		.4byte	.LVL217
 7934 0150 06000000 		.4byte	.LVL218
 7935 0154 0700     		.2byte	0x7
 7936 0156 70       		.byte	0x70
 7937 0157 00       		.sleb128 0
 7938 0158 35       		.byte	0x35
 7939 0159 25       		.byte	0x25
 7940 015a 23       		.byte	0x23
 7941 015b 0A       		.uleb128 0xa
 7942 015c 9F       		.byte	0x9f
 7943 015d 06000000 		.4byte	.LVL218
 7944 0161 08000000 		.4byte	.LVL219
 7945 0165 0300     		.2byte	0x3
 7946 0167 70       		.byte	0x70
 7947 0168 0A       		.sleb128 10
 7948 0169 9F       		.byte	0x9f
 7949 016a 08000000 		.4byte	.LVL219
 7950 016e 0A000000 		.4byte	.LVL220
 7951 0172 0100     		.2byte	0x1
 7952 0174 50       		.byte	0x50
 7953 0175 0A000000 		.4byte	.LVL220
 7954 0179 14000000 		.4byte	.LFE181
 7955 017d 0200     		.2byte	0x2
 7956 017f 40       		.byte	0x40
 7957 0180 9F       		.byte	0x9f
 7958 0181 00000000 		.4byte	0
 7959 0185 00000000 		.4byte	0
 7960              	.LLST139:
 7961 0189 00000000 		.4byte	.LVL211
 7962 018d 0C000000 		.4byte	.LVL212
 7963 0191 0100     		.2byte	0x1
 7964 0193 50       		.byte	0x50
 7965 0194 0C000000 		.4byte	.LVL212
 7966 0198 1C000000 		.4byte	.LFE179
 7967 019c 0400     		.2byte	0x4
 7968 019e F3       		.byte	0xf3
 7969 019f 01       		.uleb128 0x1
 7970 01a0 50       		.byte	0x50
 7971 01a1 9F       		.byte	0x9f
 7972 01a2 00000000 		.4byte	0
 7973 01a6 00000000 		.4byte	0
 7974              	.LLST140:
 7975 01aa 00000000 		.4byte	.LVL211
 7976 01ae 0C000000 		.4byte	.LVL212
ARM GAS  /tmp/ccqzbxJl.s 			page 168


 7977 01b2 0100     		.2byte	0x1
 7978 01b4 50       		.byte	0x50
 7979 01b5 0C000000 		.4byte	.LVL212
 7980 01b9 0E000000 		.4byte	.LVL213
 7981 01bd 0400     		.2byte	0x4
 7982 01bf F3       		.byte	0xf3
 7983 01c0 01       		.uleb128 0x1
 7984 01c1 50       		.byte	0x50
 7985 01c2 9F       		.byte	0x9f
 7986 01c3 00000000 		.4byte	0
 7987 01c7 00000000 		.4byte	0
 7988              	.LLST137:
 7989 01cb 00000000 		.4byte	.LVL208
 7990 01cf 0C000000 		.4byte	.LVL209
 7991 01d3 0100     		.2byte	0x1
 7992 01d5 50       		.byte	0x50
 7993 01d6 0C000000 		.4byte	.LVL209
 7994 01da 1C000000 		.4byte	.LFE178
 7995 01de 0400     		.2byte	0x4
 7996 01e0 F3       		.byte	0xf3
 7997 01e1 01       		.uleb128 0x1
 7998 01e2 50       		.byte	0x50
 7999 01e3 9F       		.byte	0x9f
 8000 01e4 00000000 		.4byte	0
 8001 01e8 00000000 		.4byte	0
 8002              	.LLST138:
 8003 01ec 00000000 		.4byte	.LVL208
 8004 01f0 0C000000 		.4byte	.LVL209
 8005 01f4 0100     		.2byte	0x1
 8006 01f6 50       		.byte	0x50
 8007 01f7 0C000000 		.4byte	.LVL209
 8008 01fb 0E000000 		.4byte	.LVL210
 8009 01ff 0400     		.2byte	0x4
 8010 0201 F3       		.byte	0xf3
 8011 0202 01       		.uleb128 0x1
 8012 0203 50       		.byte	0x50
 8013 0204 9F       		.byte	0x9f
 8014 0205 00000000 		.4byte	0
 8015 0209 00000000 		.4byte	0
 8016              	.LLST96:
 8017 020d 00000000 		.4byte	.LVL163
 8018 0211 06000000 		.4byte	.LVL164
 8019 0215 0100     		.2byte	0x1
 8020 0217 50       		.byte	0x50
 8021 0218 06000000 		.4byte	.LVL164
 8022 021c 2A010000 		.4byte	.LFE177
 8023 0220 0100     		.2byte	0x1
 8024 0222 53       		.byte	0x53
 8025 0223 00000000 		.4byte	0
 8026 0227 00000000 		.4byte	0
 8027              	.LLST97:
 8028 022b 00000000 		.4byte	.LVL163
 8029 022f C6000000 		.4byte	.LVL189
 8030 0233 0100     		.2byte	0x1
 8031 0235 52       		.byte	0x52
 8032 0236 C6000000 		.4byte	.LVL189
 8033 023a E0000000 		.4byte	.LVL195
ARM GAS  /tmp/ccqzbxJl.s 			page 169


 8034 023e 0400     		.2byte	0x4
 8035 0240 F3       		.byte	0xf3
 8036 0241 01       		.uleb128 0x1
 8037 0242 52       		.byte	0x52
 8038 0243 9F       		.byte	0x9f
 8039 0244 E0000000 		.4byte	.LVL195
 8040 0248 EA000000 		.4byte	.LVL197
 8041 024c 0100     		.2byte	0x1
 8042 024e 52       		.byte	0x52
 8043 024f EA000000 		.4byte	.LVL197
 8044 0253 0E010000 		.4byte	.LVL203
 8045 0257 0400     		.2byte	0x4
 8046 0259 F3       		.byte	0xf3
 8047 025a 01       		.uleb128 0x1
 8048 025b 52       		.byte	0x52
 8049 025c 9F       		.byte	0x9f
 8050 025d 0E010000 		.4byte	.LVL203
 8051 0261 20010000 		.4byte	.LVL206
 8052 0265 0100     		.2byte	0x1
 8053 0267 52       		.byte	0x52
 8054 0268 20010000 		.4byte	.LVL206
 8055 026c 2A010000 		.4byte	.LFE177
 8056 0270 0400     		.2byte	0x4
 8057 0272 F3       		.byte	0xf3
 8058 0273 01       		.uleb128 0x1
 8059 0274 52       		.byte	0x52
 8060 0275 9F       		.byte	0x9f
 8061 0276 00000000 		.4byte	0
 8062 027a 00000000 		.4byte	0
 8063              	.LLST98:
 8064 027e 3A000000 		.4byte	.LVL165
 8065 0282 5C000000 		.4byte	.LVL168
 8066 0286 0100     		.2byte	0x1
 8067 0288 52       		.byte	0x52
 8068 0289 0E010000 		.4byte	.LVL203
 8069 028d 20010000 		.4byte	.LVL206
 8070 0291 0100     		.2byte	0x1
 8071 0293 52       		.byte	0x52
 8072 0294 00000000 		.4byte	0
 8073 0298 00000000 		.4byte	0
 8074              	.LLST99:
 8075 029c 3A000000 		.4byte	.LVL165
 8076 02a0 5C000000 		.4byte	.LVL168
 8077 02a4 0100     		.2byte	0x1
 8078 02a6 51       		.byte	0x51
 8079 02a7 0E010000 		.4byte	.LVL203
 8080 02ab 20010000 		.4byte	.LVL206
 8081 02af 0100     		.2byte	0x1
 8082 02b1 51       		.byte	0x51
 8083 02b2 00000000 		.4byte	0
 8084 02b6 00000000 		.4byte	0
 8085              	.LLST100:
 8086 02ba 3A000000 		.4byte	.LVL165
 8087 02be 5C000000 		.4byte	.LVL168
 8088 02c2 0100     		.2byte	0x1
 8089 02c4 53       		.byte	0x53
 8090 02c5 0E010000 		.4byte	.LVL203
ARM GAS  /tmp/ccqzbxJl.s 			page 170


 8091 02c9 20010000 		.4byte	.LVL206
 8092 02cd 0100     		.2byte	0x1
 8093 02cf 53       		.byte	0x53
 8094 02d0 00000000 		.4byte	0
 8095 02d4 00000000 		.4byte	0
 8096              	.LLST101:
 8097 02d8 3E000000 		.4byte	.LVL166
 8098 02dc 42000000 		.4byte	.LVL167
 8099 02e0 0500     		.2byte	0x5
 8100 02e2 72       		.byte	0x72
 8101 02e3 00       		.sleb128 0
 8102 02e4 31       		.byte	0x31
 8103 02e5 1A       		.byte	0x1a
 8104 02e6 9F       		.byte	0x9f
 8105 02e7 12010000 		.4byte	.LVL204
 8106 02eb 16010000 		.4byte	.LVL205
 8107 02ef 0500     		.2byte	0x5
 8108 02f1 72       		.byte	0x72
 8109 02f2 00       		.sleb128 0
 8110 02f3 31       		.byte	0x31
 8111 02f4 1A       		.byte	0x1a
 8112 02f5 9F       		.byte	0x9f
 8113 02f6 00000000 		.4byte	0
 8114 02fa 00000000 		.4byte	0
 8115              	.LLST102:
 8116 02fe 3E000000 		.4byte	.LVL166
 8117 0302 42000000 		.4byte	.LVL167
 8118 0306 0100     		.2byte	0x1
 8119 0308 51       		.byte	0x51
 8120 0309 12010000 		.4byte	.LVL204
 8121 030d 16010000 		.4byte	.LVL205
 8122 0311 0100     		.2byte	0x1
 8123 0313 51       		.byte	0x51
 8124 0314 00000000 		.4byte	0
 8125 0318 00000000 		.4byte	0
 8126              	.LLST103:
 8127 031c 3E000000 		.4byte	.LVL166
 8128 0320 42000000 		.4byte	.LVL167
 8129 0324 0100     		.2byte	0x1
 8130 0326 53       		.byte	0x53
 8131 0327 12010000 		.4byte	.LVL204
 8132 032b 16010000 		.4byte	.LVL205
 8133 032f 0100     		.2byte	0x1
 8134 0331 53       		.byte	0x53
 8135 0332 00000000 		.4byte	0
 8136 0336 00000000 		.4byte	0
 8137              	.LLST104:
 8138 033a 3A000000 		.4byte	.LVL165
 8139 033e 3E000000 		.4byte	.LVL166
 8140 0342 0100     		.2byte	0x1
 8141 0344 51       		.byte	0x51
 8142 0345 00000000 		.4byte	0
 8143 0349 00000000 		.4byte	0
 8144              	.LLST105:
 8145 034d 3A000000 		.4byte	.LVL165
 8146 0351 3E000000 		.4byte	.LVL166
 8147 0355 0100     		.2byte	0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 171


 8148 0357 53       		.byte	0x53
 8149 0358 00000000 		.4byte	0
 8150 035c 00000000 		.4byte	0
 8151              	.LLST106:
 8152 0360 5C000000 		.4byte	.LVL168
 8153 0364 74000000 		.4byte	.LVL173
 8154 0368 0100     		.2byte	0x1
 8155 036a 51       		.byte	0x51
 8156 036b 00000000 		.4byte	0
 8157 036f 00000000 		.4byte	0
 8158              	.LLST107:
 8159 0373 5C000000 		.4byte	.LVL168
 8160 0377 74000000 		.4byte	.LVL173
 8161 037b 0400     		.2byte	0x4
 8162 037d 40       		.byte	0x40
 8163 037e 48       		.byte	0x48
 8164 037f 24       		.byte	0x24
 8165 0380 9F       		.byte	0x9f
 8166 0381 00000000 		.4byte	0
 8167 0385 00000000 		.4byte	0
 8168              	.LLST108:
 8169 0389 5C000000 		.4byte	.LVL168
 8170 038d 74000000 		.4byte	.LVL173
 8171 0391 0100     		.2byte	0x1
 8172 0393 53       		.byte	0x53
 8173 0394 00000000 		.4byte	0
 8174 0398 00000000 		.4byte	0
 8175              	.LLST109:
 8176 039c 74000000 		.4byte	.LVL173
 8177 03a0 76000000 		.4byte	.LVL174
 8178 03a4 0500     		.2byte	0x5
 8179 03a6 72       		.byte	0x72
 8180 03a7 00       		.sleb128 0
 8181 03a8 31       		.byte	0x31
 8182 03a9 1A       		.byte	0x1a
 8183 03aa 9F       		.byte	0x9f
 8184 03ab 00000000 		.4byte	0
 8185 03af 00000000 		.4byte	0
 8186              	.LLST110:
 8187 03b3 74000000 		.4byte	.LVL173
 8188 03b7 76000000 		.4byte	.LVL174
 8189 03bb 0100     		.2byte	0x1
 8190 03bd 51       		.byte	0x51
 8191 03be 00000000 		.4byte	0
 8192 03c2 00000000 		.4byte	0
 8193              	.LLST111:
 8194 03c6 74000000 		.4byte	.LVL173
 8195 03ca 76000000 		.4byte	.LVL174
 8196 03ce 0100     		.2byte	0x1
 8197 03d0 53       		.byte	0x53
 8198 03d1 00000000 		.4byte	0
 8199 03d5 00000000 		.4byte	0
 8200              	.LLST112:
 8201 03d9 BE000000 		.4byte	.LVL187
 8202 03dd C2000000 		.4byte	.LVL188
 8203 03e1 0500     		.2byte	0x5
 8204 03e3 72       		.byte	0x72
ARM GAS  /tmp/ccqzbxJl.s 			page 172


 8205 03e4 00       		.sleb128 0
 8206 03e5 31       		.byte	0x31
 8207 03e6 1A       		.byte	0x1a
 8208 03e7 9F       		.byte	0x9f
 8209 03e8 00000000 		.4byte	0
 8210 03ec 00000000 		.4byte	0
 8211              	.LLST113:
 8212 03f0 BE000000 		.4byte	.LVL187
 8213 03f4 C2000000 		.4byte	.LVL188
 8214 03f8 0100     		.2byte	0x1
 8215 03fa 51       		.byte	0x51
 8216 03fb 00000000 		.4byte	0
 8217 03ff 00000000 		.4byte	0
 8218              	.LLST114:
 8219 0403 BE000000 		.4byte	.LVL187
 8220 0407 C2000000 		.4byte	.LVL188
 8221 040b 0100     		.2byte	0x1
 8222 040d 53       		.byte	0x53
 8223 040e 00000000 		.4byte	0
 8224 0412 00000000 		.4byte	0
 8225              	.LLST115:
 8226 0416 7E000000 		.4byte	.LVL175
 8227 041a 9C000000 		.4byte	.LVL180
 8228 041e 0100     		.2byte	0x1
 8229 0420 51       		.byte	0x51
 8230 0421 00000000 		.4byte	0
 8231 0425 00000000 		.4byte	0
 8232              	.LLST116:
 8233 0429 7E000000 		.4byte	.LVL175
 8234 042d 9C000000 		.4byte	.LVL180
 8235 0431 0400     		.2byte	0x4
 8236 0433 40       		.byte	0x40
 8237 0434 47       		.byte	0x47
 8238 0435 24       		.byte	0x24
 8239 0436 9F       		.byte	0x9f
 8240 0437 00000000 		.4byte	0
 8241 043b 00000000 		.4byte	0
 8242              	.LLST117:
 8243 043f 7E000000 		.4byte	.LVL175
 8244 0443 9C000000 		.4byte	.LVL180
 8245 0447 0100     		.2byte	0x1
 8246 0449 53       		.byte	0x53
 8247 044a 00000000 		.4byte	0
 8248 044e 00000000 		.4byte	0
 8249              	.LLST118:
 8250 0452 9C000000 		.4byte	.LVL180
 8251 0456 9E000000 		.4byte	.LVL181
 8252 045a 0500     		.2byte	0x5
 8253 045c 72       		.byte	0x72
 8254 045d 00       		.sleb128 0
 8255 045e 31       		.byte	0x31
 8256 045f 1A       		.byte	0x1a
 8257 0460 9F       		.byte	0x9f
 8258 0461 00000000 		.4byte	0
 8259 0465 00000000 		.4byte	0
 8260              	.LLST119:
 8261 0469 9C000000 		.4byte	.LVL180
ARM GAS  /tmp/ccqzbxJl.s 			page 173


 8262 046d 9E000000 		.4byte	.LVL181
 8263 0471 0100     		.2byte	0x1
 8264 0473 51       		.byte	0x51
 8265 0474 00000000 		.4byte	0
 8266 0478 00000000 		.4byte	0
 8267              	.LLST120:
 8268 047c 9C000000 		.4byte	.LVL180
 8269 0480 9E000000 		.4byte	.LVL181
 8270 0484 0100     		.2byte	0x1
 8271 0486 53       		.byte	0x53
 8272 0487 00000000 		.4byte	0
 8273 048b 00000000 		.4byte	0
 8274              	.LLST121:
 8275 048f A6000000 		.4byte	.LVL182
 8276 0493 BE000000 		.4byte	.LVL187
 8277 0497 0100     		.2byte	0x1
 8278 0499 51       		.byte	0x51
 8279 049a 00000000 		.4byte	0
 8280 049e 00000000 		.4byte	0
 8281              	.LLST122:
 8282 04a2 A6000000 		.4byte	.LVL182
 8283 04a6 BE000000 		.4byte	.LVL187
 8284 04aa 0400     		.2byte	0x4
 8285 04ac 48       		.byte	0x48
 8286 04ad 48       		.byte	0x48
 8287 04ae 24       		.byte	0x24
 8288 04af 9F       		.byte	0x9f
 8289 04b0 00000000 		.4byte	0
 8290 04b4 00000000 		.4byte	0
 8291              	.LLST123:
 8292 04b8 A6000000 		.4byte	.LVL182
 8293 04bc BE000000 		.4byte	.LVL187
 8294 04c0 0100     		.2byte	0x1
 8295 04c2 53       		.byte	0x53
 8296 04c3 00000000 		.4byte	0
 8297 04c7 00000000 		.4byte	0
 8298              	.LLST124:
 8299 04cb C2000000 		.4byte	.LVL188
 8300 04cf D8000000 		.4byte	.LVL194
 8301 04d3 0100     		.2byte	0x1
 8302 04d5 51       		.byte	0x51
 8303 04d6 00000000 		.4byte	0
 8304 04da 00000000 		.4byte	0
 8305              	.LLST125:
 8306 04de C2000000 		.4byte	.LVL188
 8307 04e2 D8000000 		.4byte	.LVL194
 8308 04e6 0400     		.2byte	0x4
 8309 04e8 40       		.byte	0x40
 8310 04e9 49       		.byte	0x49
 8311 04ea 24       		.byte	0x24
 8312 04eb 9F       		.byte	0x9f
 8313 04ec 00000000 		.4byte	0
 8314 04f0 00000000 		.4byte	0
 8315              	.LLST126:
 8316 04f4 C2000000 		.4byte	.LVL188
 8317 04f8 D8000000 		.4byte	.LVL194
 8318 04fc 0100     		.2byte	0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 174


 8319 04fe 53       		.byte	0x53
 8320 04ff 00000000 		.4byte	0
 8321 0503 00000000 		.4byte	0
 8322              	.LLST127:
 8323 0507 D8000000 		.4byte	.LVL194
 8324 050b E0000000 		.4byte	.LVL195
 8325 050f 0100     		.2byte	0x1
 8326 0511 51       		.byte	0x51
 8327 0512 20010000 		.4byte	.LVL206
 8328 0516 26010000 		.4byte	.LVL207
 8329 051a 0100     		.2byte	0x1
 8330 051c 51       		.byte	0x51
 8331 051d 00000000 		.4byte	0
 8332 0521 00000000 		.4byte	0
 8333              	.LLST128:
 8334 0525 D8000000 		.4byte	.LVL194
 8335 0529 E0000000 		.4byte	.LVL195
 8336 052d 0100     		.2byte	0x1
 8337 052f 53       		.byte	0x53
 8338 0530 20010000 		.4byte	.LVL206
 8339 0534 26010000 		.4byte	.LVL207
 8340 0538 0100     		.2byte	0x1
 8341 053a 53       		.byte	0x53
 8342 053b 00000000 		.4byte	0
 8343 053f 00000000 		.4byte	0
 8344              	.LLST129:
 8345 0543 E8000000 		.4byte	.LVL196
 8346 0547 EA000000 		.4byte	.LVL197
 8347 054b 0500     		.2byte	0x5
 8348 054d 72       		.byte	0x72
 8349 054e 00       		.sleb128 0
 8350 054f 31       		.byte	0x31
 8351 0550 1A       		.byte	0x1a
 8352 0551 9F       		.byte	0x9f
 8353 0552 EA000000 		.4byte	.LVL197
 8354 0556 0E010000 		.4byte	.LVL203
 8355 055a 0600     		.2byte	0x6
 8356 055c F3       		.byte	0xf3
 8357 055d 01       		.uleb128 0x1
 8358 055e 52       		.byte	0x52
 8359 055f 31       		.byte	0x31
 8360 0560 1A       		.byte	0x1a
 8361 0561 9F       		.byte	0x9f
 8362 0562 26010000 		.4byte	.LVL207
 8363 0566 2A010000 		.4byte	.LFE177
 8364 056a 0600     		.2byte	0x6
 8365 056c F3       		.byte	0xf3
 8366 056d 01       		.uleb128 0x1
 8367 056e 52       		.byte	0x52
 8368 056f 31       		.byte	0x31
 8369 0570 1A       		.byte	0x1a
 8370 0571 9F       		.byte	0x9f
 8371 0572 00000000 		.4byte	0
 8372 0576 00000000 		.4byte	0
 8373              	.LLST130:
 8374 057a E8000000 		.4byte	.LVL196
 8375 057e 04010000 		.4byte	.LVL200
ARM GAS  /tmp/ccqzbxJl.s 			page 175


 8376 0582 0800     		.2byte	0x8
 8377 0584 74       		.byte	0x74
 8378 0585 00       		.sleb128 0
 8379 0586 30       		.byte	0x30
 8380 0587 2E       		.byte	0x2e
 8381 0588 08       		.byte	0x8
 8382 0589 FF       		.byte	0xff
 8383 058a 1A       		.byte	0x1a
 8384 058b 9F       		.byte	0x9f
 8385 058c 04010000 		.4byte	.LVL200
 8386 0590 06010000 		.4byte	.LVL201
 8387 0594 0B00     		.2byte	0xb
 8388 0596 F3       		.byte	0xf3
 8389 0597 01       		.uleb128 0x1
 8390 0598 52       		.byte	0x52
 8391 0599 34       		.byte	0x34
 8392 059a 1A       		.byte	0x1a
 8393 059b 30       		.byte	0x30
 8394 059c 2E       		.byte	0x2e
 8395 059d 08       		.byte	0x8
 8396 059e FF       		.byte	0xff
 8397 059f 1A       		.byte	0x1a
 8398 05a0 9F       		.byte	0x9f
 8399 05a1 06010000 		.4byte	.LVL201
 8400 05a5 0E010000 		.4byte	.LVL203
 8401 05a9 0800     		.2byte	0x8
 8402 05ab 74       		.byte	0x74
 8403 05ac 00       		.sleb128 0
 8404 05ad 30       		.byte	0x30
 8405 05ae 2E       		.byte	0x2e
 8406 05af 08       		.byte	0x8
 8407 05b0 FF       		.byte	0xff
 8408 05b1 1A       		.byte	0x1a
 8409 05b2 9F       		.byte	0x9f
 8410 05b3 26010000 		.4byte	.LVL207
 8411 05b7 2A010000 		.4byte	.LFE177
 8412 05bb 0800     		.2byte	0x8
 8413 05bd 74       		.byte	0x74
 8414 05be 00       		.sleb128 0
 8415 05bf 30       		.byte	0x30
 8416 05c0 2E       		.byte	0x2e
 8417 05c1 08       		.byte	0x8
 8418 05c2 FF       		.byte	0xff
 8419 05c3 1A       		.byte	0x1a
 8420 05c4 9F       		.byte	0x9f
 8421 05c5 00000000 		.4byte	0
 8422 05c9 00000000 		.4byte	0
 8423              	.LLST131:
 8424 05cd E8000000 		.4byte	.LVL196
 8425 05d1 00010000 		.4byte	.LVL199
 8426 05d5 0A00     		.2byte	0xa
 8427 05d7 70       		.byte	0x70
 8428 05d8 00       		.sleb128 0
 8429 05d9 4C       		.byte	0x4c
 8430 05da 49       		.byte	0x49
 8431 05db 24       		.byte	0x24
 8432 05dc 29       		.byte	0x29
ARM GAS  /tmp/ccqzbxJl.s 			page 176


 8433 05dd 08       		.byte	0x8
 8434 05de FF       		.byte	0xff
 8435 05df 1A       		.byte	0x1a
 8436 05e0 9F       		.byte	0x9f
 8437 05e1 00010000 		.4byte	.LVL199
 8438 05e5 06010000 		.4byte	.LVL201
 8439 05e9 0E00     		.2byte	0xe
 8440 05eb F3       		.byte	0xf3
 8441 05ec 01       		.uleb128 0x1
 8442 05ed 52       		.byte	0x52
 8443 05ee 20       		.byte	0x20
 8444 05ef 4C       		.byte	0x4c
 8445 05f0 49       		.byte	0x49
 8446 05f1 24       		.byte	0x24
 8447 05f2 1A       		.byte	0x1a
 8448 05f3 30       		.byte	0x30
 8449 05f4 29       		.byte	0x29
 8450 05f5 08       		.byte	0x8
 8451 05f6 FF       		.byte	0xff
 8452 05f7 1A       		.byte	0x1a
 8453 05f8 9F       		.byte	0x9f
 8454 05f9 06010000 		.4byte	.LVL201
 8455 05fd 0E010000 		.4byte	.LVL203
 8456 0601 0A00     		.2byte	0xa
 8457 0603 70       		.byte	0x70
 8458 0604 00       		.sleb128 0
 8459 0605 4C       		.byte	0x4c
 8460 0606 49       		.byte	0x49
 8461 0607 24       		.byte	0x24
 8462 0608 29       		.byte	0x29
 8463 0609 08       		.byte	0x8
 8464 060a FF       		.byte	0xff
 8465 060b 1A       		.byte	0x1a
 8466 060c 9F       		.byte	0x9f
 8467 060d 26010000 		.4byte	.LVL207
 8468 0611 2A010000 		.4byte	.LFE177
 8469 0615 0A00     		.2byte	0xa
 8470 0617 70       		.byte	0x70
 8471 0618 00       		.sleb128 0
 8472 0619 4C       		.byte	0x4c
 8473 061a 49       		.byte	0x49
 8474 061b 24       		.byte	0x24
 8475 061c 29       		.byte	0x29
 8476 061d 08       		.byte	0x8
 8477 061e FF       		.byte	0xff
 8478 061f 1A       		.byte	0x1a
 8479 0620 9F       		.byte	0x9f
 8480 0621 00000000 		.4byte	0
 8481 0625 00000000 		.4byte	0
 8482              	.LLST132:
 8483 0629 E8000000 		.4byte	.LVL196
 8484 062d 0E010000 		.4byte	.LVL203
 8485 0631 0100     		.2byte	0x1
 8486 0633 51       		.byte	0x51
 8487 0634 26010000 		.4byte	.LVL207
 8488 0638 2A010000 		.4byte	.LFE177
 8489 063c 0100     		.2byte	0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 177


 8490 063e 51       		.byte	0x51
 8491 063f 00000000 		.4byte	0
 8492 0643 00000000 		.4byte	0
 8493              	.LLST133:
 8494 0647 E8000000 		.4byte	.LVL196
 8495 064b 0E010000 		.4byte	.LVL203
 8496 064f 0100     		.2byte	0x1
 8497 0651 53       		.byte	0x53
 8498 0652 26010000 		.4byte	.LVL207
 8499 0656 2A010000 		.4byte	.LFE177
 8500 065a 0100     		.2byte	0x1
 8501 065c 53       		.byte	0x53
 8502 065d 00000000 		.4byte	0
 8503 0661 00000000 		.4byte	0
 8504              	.LLST134:
 8505 0665 E8000000 		.4byte	.LVL196
 8506 0669 EA000000 		.4byte	.LVL197
 8507 066d 0500     		.2byte	0x5
 8508 066f 72       		.byte	0x72
 8509 0670 00       		.sleb128 0
 8510 0671 31       		.byte	0x31
 8511 0672 1A       		.byte	0x1a
 8512 0673 9F       		.byte	0x9f
 8513 0674 EA000000 		.4byte	.LVL197
 8514 0678 F0000000 		.4byte	.LVL198
 8515 067c 0600     		.2byte	0x6
 8516 067e F3       		.byte	0xf3
 8517 067f 01       		.uleb128 0x1
 8518 0680 52       		.byte	0x52
 8519 0681 31       		.byte	0x31
 8520 0682 1A       		.byte	0x1a
 8521 0683 9F       		.byte	0x9f
 8522 0684 06010000 		.4byte	.LVL201
 8523 0688 0A010000 		.4byte	.LVL202
 8524 068c 0600     		.2byte	0x6
 8525 068e F3       		.byte	0xf3
 8526 068f 01       		.uleb128 0x1
 8527 0690 52       		.byte	0x52
 8528 0691 31       		.byte	0x31
 8529 0692 1A       		.byte	0x1a
 8530 0693 9F       		.byte	0x9f
 8531 0694 00000000 		.4byte	0
 8532 0698 00000000 		.4byte	0
 8533              	.LLST135:
 8534 069c E8000000 		.4byte	.LVL196
 8535 06a0 F0000000 		.4byte	.LVL198
 8536 06a4 0100     		.2byte	0x1
 8537 06a6 51       		.byte	0x51
 8538 06a7 06010000 		.4byte	.LVL201
 8539 06ab 0A010000 		.4byte	.LVL202
 8540 06af 0100     		.2byte	0x1
 8541 06b1 51       		.byte	0x51
 8542 06b2 00000000 		.4byte	0
 8543 06b6 00000000 		.4byte	0
 8544              	.LLST136:
 8545 06ba E8000000 		.4byte	.LVL196
 8546 06be F0000000 		.4byte	.LVL198
ARM GAS  /tmp/ccqzbxJl.s 			page 178


 8547 06c2 0100     		.2byte	0x1
 8548 06c4 53       		.byte	0x53
 8549 06c5 06010000 		.4byte	.LVL201
 8550 06c9 0A010000 		.4byte	.LVL202
 8551 06cd 0100     		.2byte	0x1
 8552 06cf 53       		.byte	0x53
 8553 06d0 00000000 		.4byte	0
 8554 06d4 00000000 		.4byte	0
 8555              	.LLST55:
 8556 06d8 00000000 		.4byte	.LVL106
 8557 06dc 2C000000 		.4byte	.LVL108
 8558 06e0 0100     		.2byte	0x1
 8559 06e2 50       		.byte	0x50
 8560 06e3 2C000000 		.4byte	.LVL108
 8561 06e7 30000000 		.4byte	.LVL109
 8562 06eb 0400     		.2byte	0x4
 8563 06ed F3       		.byte	0xf3
 8564 06ee 01       		.uleb128 0x1
 8565 06ef 50       		.byte	0x50
 8566 06f0 9F       		.byte	0x9f
 8567 06f1 30000000 		.4byte	.LVL109
 8568 06f5 46000000 		.4byte	.LVL110
 8569 06f9 0100     		.2byte	0x1
 8570 06fb 50       		.byte	0x50
 8571 06fc 46000000 		.4byte	.LVL110
 8572 0700 6E000000 		.4byte	.LVL114
 8573 0704 0400     		.2byte	0x4
 8574 0706 F3       		.byte	0xf3
 8575 0707 01       		.uleb128 0x1
 8576 0708 50       		.byte	0x50
 8577 0709 9F       		.byte	0x9f
 8578 070a 6E000000 		.4byte	.LVL114
 8579 070e 74000000 		.4byte	.LVL115
 8580 0712 0100     		.2byte	0x1
 8581 0714 50       		.byte	0x50
 8582 0715 74000000 		.4byte	.LVL115
 8583 0719 9C000000 		.4byte	.LVL124
 8584 071d 0400     		.2byte	0x4
 8585 071f F3       		.byte	0xf3
 8586 0720 01       		.uleb128 0x1
 8587 0721 50       		.byte	0x50
 8588 0722 9F       		.byte	0x9f
 8589 0723 9C000000 		.4byte	.LVL124
 8590 0727 A2000000 		.4byte	.LVL125
 8591 072b 0100     		.2byte	0x1
 8592 072d 50       		.byte	0x50
 8593 072e A2000000 		.4byte	.LVL125
 8594 0732 CA000000 		.4byte	.LVL133
 8595 0736 0400     		.2byte	0x4
 8596 0738 F3       		.byte	0xf3
 8597 0739 01       		.uleb128 0x1
 8598 073a 50       		.byte	0x50
 8599 073b 9F       		.byte	0x9f
 8600 073c CA000000 		.4byte	.LVL133
 8601 0740 D0000000 		.4byte	.LVL134
 8602 0744 0100     		.2byte	0x1
 8603 0746 50       		.byte	0x50
ARM GAS  /tmp/ccqzbxJl.s 			page 179


 8604 0747 D0000000 		.4byte	.LVL134
 8605 074b F2000000 		.4byte	.LVL142
 8606 074f 0400     		.2byte	0x4
 8607 0751 F3       		.byte	0xf3
 8608 0752 01       		.uleb128 0x1
 8609 0753 50       		.byte	0x50
 8610 0754 9F       		.byte	0x9f
 8611 0755 F2000000 		.4byte	.LVL142
 8612 0759 F8000000 		.4byte	.LVL143
 8613 075d 0100     		.2byte	0x1
 8614 075f 50       		.byte	0x50
 8615 0760 F8000000 		.4byte	.LVL143
 8616 0764 04010000 		.4byte	.LVL147
 8617 0768 0400     		.2byte	0x4
 8618 076a F3       		.byte	0xf3
 8619 076b 01       		.uleb128 0x1
 8620 076c 50       		.byte	0x50
 8621 076d 9F       		.byte	0x9f
 8622 076e 04010000 		.4byte	.LVL147
 8623 0772 08010000 		.4byte	.LVL148
 8624 0776 0100     		.2byte	0x1
 8625 0778 50       		.byte	0x50
 8626 0779 08010000 		.4byte	.LVL148
 8627 077d 54010000 		.4byte	.LFE173
 8628 0781 0400     		.2byte	0x4
 8629 0783 F3       		.byte	0xf3
 8630 0784 01       		.uleb128 0x1
 8631 0785 50       		.byte	0x50
 8632 0786 9F       		.byte	0x9f
 8633 0787 00000000 		.4byte	0
 8634 078b 00000000 		.4byte	0
 8635              	.LLST56:
 8636 078f 00000000 		.4byte	.LVL106
 8637 0793 76000000 		.4byte	.LVL116
 8638 0797 0100     		.2byte	0x1
 8639 0799 51       		.byte	0x51
 8640 079a 76000000 		.4byte	.LVL116
 8641 079e 9C000000 		.4byte	.LVL124
 8642 07a2 0400     		.2byte	0x4
 8643 07a4 F3       		.byte	0xf3
 8644 07a5 01       		.uleb128 0x1
 8645 07a6 51       		.byte	0x51
 8646 07a7 9F       		.byte	0x9f
 8647 07a8 9C000000 		.4byte	.LVL124
 8648 07ac C4000000 		.4byte	.LVL132
 8649 07b0 0100     		.2byte	0x1
 8650 07b2 51       		.byte	0x51
 8651 07b3 C4000000 		.4byte	.LVL132
 8652 07b7 CA000000 		.4byte	.LVL133
 8653 07bb 0400     		.2byte	0x4
 8654 07bd F3       		.byte	0xf3
 8655 07be 01       		.uleb128 0x1
 8656 07bf 51       		.byte	0x51
 8657 07c0 9F       		.byte	0x9f
 8658 07c1 CA000000 		.4byte	.LVL133
 8659 07c5 16010000 		.4byte	.LVL151
 8660 07c9 0100     		.2byte	0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 180


 8661 07cb 51       		.byte	0x51
 8662 07cc 16010000 		.4byte	.LVL151
 8663 07d0 36010000 		.4byte	.LVL156
 8664 07d4 0400     		.2byte	0x4
 8665 07d6 F3       		.byte	0xf3
 8666 07d7 01       		.uleb128 0x1
 8667 07d8 51       		.byte	0x51
 8668 07d9 9F       		.byte	0x9f
 8669 07da 36010000 		.4byte	.LVL156
 8670 07de 48010000 		.4byte	.LVL159
 8671 07e2 0100     		.2byte	0x1
 8672 07e4 51       		.byte	0x51
 8673 07e5 48010000 		.4byte	.LVL159
 8674 07e9 54010000 		.4byte	.LFE173
 8675 07ed 0400     		.2byte	0x4
 8676 07ef F3       		.byte	0xf3
 8677 07f0 01       		.uleb128 0x1
 8678 07f1 51       		.byte	0x51
 8679 07f2 9F       		.byte	0x9f
 8680 07f3 00000000 		.4byte	0
 8681 07f7 00000000 		.4byte	0
 8682              	.LLST57:
 8683 07fb 00000000 		.4byte	.LVL106
 8684 07ff 14000000 		.4byte	.LVL107
 8685 0803 0100     		.2byte	0x1
 8686 0805 50       		.byte	0x50
 8687 0806 00000000 		.4byte	0
 8688 080a 00000000 		.4byte	0
 8689              	.LLST58:
 8690 080e 4E000000 		.4byte	.LVL111
 8691 0812 6E000000 		.4byte	.LVL114
 8692 0816 0100     		.2byte	0x1
 8693 0818 51       		.byte	0x51
 8694 0819 36010000 		.4byte	.LVL156
 8695 081d 48010000 		.4byte	.LVL159
 8696 0821 0100     		.2byte	0x1
 8697 0823 51       		.byte	0x51
 8698 0824 00000000 		.4byte	0
 8699 0828 00000000 		.4byte	0
 8700              	.LLST59:
 8701 082c 4E000000 		.4byte	.LVL111
 8702 0830 6E000000 		.4byte	.LVL114
 8703 0834 0100     		.2byte	0x1
 8704 0836 52       		.byte	0x52
 8705 0837 36010000 		.4byte	.LVL156
 8706 083b 48010000 		.4byte	.LVL159
 8707 083f 0100     		.2byte	0x1
 8708 0841 52       		.byte	0x52
 8709 0842 00000000 		.4byte	0
 8710 0846 00000000 		.4byte	0
 8711              	.LLST60:
 8712 084a 4E000000 		.4byte	.LVL111
 8713 084e 6E000000 		.4byte	.LVL114
 8714 0852 0100     		.2byte	0x1
 8715 0854 53       		.byte	0x53
 8716 0855 36010000 		.4byte	.LVL156
 8717 0859 48010000 		.4byte	.LVL159
ARM GAS  /tmp/ccqzbxJl.s 			page 181


 8718 085d 0100     		.2byte	0x1
 8719 085f 53       		.byte	0x53
 8720 0860 00000000 		.4byte	0
 8721 0864 00000000 		.4byte	0
 8722              	.LLST61:
 8723 0868 50000000 		.4byte	.LVL112
 8724 086c 54000000 		.4byte	.LVL113
 8725 0870 0500     		.2byte	0x5
 8726 0872 71       		.byte	0x71
 8727 0873 00       		.sleb128 0
 8728 0874 31       		.byte	0x31
 8729 0875 1A       		.byte	0x1a
 8730 0876 9F       		.byte	0x9f
 8731 0877 3A010000 		.4byte	.LVL157
 8732 087b 3E010000 		.4byte	.LVL158
 8733 087f 0500     		.2byte	0x5
 8734 0881 71       		.byte	0x71
 8735 0882 00       		.sleb128 0
 8736 0883 31       		.byte	0x31
 8737 0884 1A       		.byte	0x1a
 8738 0885 9F       		.byte	0x9f
 8739 0886 00000000 		.4byte	0
 8740 088a 00000000 		.4byte	0
 8741              	.LLST62:
 8742 088e 50000000 		.4byte	.LVL112
 8743 0892 54000000 		.4byte	.LVL113
 8744 0896 0100     		.2byte	0x1
 8745 0898 52       		.byte	0x52
 8746 0899 3A010000 		.4byte	.LVL157
 8747 089d 3E010000 		.4byte	.LVL158
 8748 08a1 0100     		.2byte	0x1
 8749 08a3 52       		.byte	0x52
 8750 08a4 00000000 		.4byte	0
 8751 08a8 00000000 		.4byte	0
 8752              	.LLST63:
 8753 08ac 50000000 		.4byte	.LVL112
 8754 08b0 54000000 		.4byte	.LVL113
 8755 08b4 0100     		.2byte	0x1
 8756 08b6 53       		.byte	0x53
 8757 08b7 3A010000 		.4byte	.LVL157
 8758 08bb 3E010000 		.4byte	.LVL158
 8759 08bf 0100     		.2byte	0x1
 8760 08c1 53       		.byte	0x53
 8761 08c2 00000000 		.4byte	0
 8762 08c6 00000000 		.4byte	0
 8763              	.LLST64:
 8764 08ca 4E000000 		.4byte	.LVL111
 8765 08ce 50000000 		.4byte	.LVL112
 8766 08d2 0100     		.2byte	0x1
 8767 08d4 52       		.byte	0x52
 8768 08d5 00000000 		.4byte	0
 8769 08d9 00000000 		.4byte	0
 8770              	.LLST65:
 8771 08dd 4E000000 		.4byte	.LVL111
 8772 08e1 50000000 		.4byte	.LVL112
 8773 08e5 0100     		.2byte	0x1
 8774 08e7 53       		.byte	0x53
ARM GAS  /tmp/ccqzbxJl.s 			page 182


 8775 08e8 00000000 		.4byte	0
 8776 08ec 00000000 		.4byte	0
 8777              	.LLST66:
 8778 08f0 94000000 		.4byte	.LVL122
 8779 08f4 96000000 		.4byte	.LVL123
 8780 08f8 0100     		.2byte	0x1
 8781 08fa 52       		.byte	0x52
 8782 08fb 00000000 		.4byte	0
 8783 08ff 00000000 		.4byte	0
 8784              	.LLST67:
 8785 0903 94000000 		.4byte	.LVL122
 8786 0907 96000000 		.4byte	.LVL123
 8787 090b 0100     		.2byte	0x1
 8788 090d 53       		.byte	0x53
 8789 090e 00000000 		.4byte	0
 8790 0912 00000000 		.4byte	0
 8791              	.LLST68:
 8792 0916 7A000000 		.4byte	.LVL117
 8793 091a 94000000 		.4byte	.LVL122
 8794 091e 0100     		.2byte	0x1
 8795 0920 52       		.byte	0x52
 8796 0921 00000000 		.4byte	0
 8797 0925 00000000 		.4byte	0
 8798              	.LLST69:
 8799 0929 7A000000 		.4byte	.LVL117
 8800 092d 94000000 		.4byte	.LVL122
 8801 0931 0400     		.2byte	0x4
 8802 0933 40       		.byte	0x40
 8803 0934 48       		.byte	0x48
 8804 0935 24       		.byte	0x24
 8805 0936 9F       		.byte	0x9f
 8806 0937 00000000 		.4byte	0
 8807 093b 00000000 		.4byte	0
 8808              	.LLST70:
 8809 093f 7A000000 		.4byte	.LVL117
 8810 0943 94000000 		.4byte	.LVL122
 8811 0947 0100     		.2byte	0x1
 8812 0949 53       		.byte	0x53
 8813 094a 00000000 		.4byte	0
 8814 094e 00000000 		.4byte	0
 8815              	.LLST71:
 8816 0952 EE000000 		.4byte	.LVL141
 8817 0956 F2000000 		.4byte	.LVL142
 8818 095a 0500     		.2byte	0x5
 8819 095c 71       		.byte	0x71
 8820 095d 00       		.sleb128 0
 8821 095e 31       		.byte	0x31
 8822 095f 1A       		.byte	0x1a
 8823 0960 9F       		.byte	0x9f
 8824 0961 00000000 		.4byte	0
 8825 0965 00000000 		.4byte	0
 8826              	.LLST72:
 8827 0969 EE000000 		.4byte	.LVL141
 8828 096d F2000000 		.4byte	.LVL142
 8829 0971 0100     		.2byte	0x1
 8830 0973 52       		.byte	0x52
 8831 0974 00000000 		.4byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 183


 8832 0978 00000000 		.4byte	0
 8833              	.LLST73:
 8834 097c EE000000 		.4byte	.LVL141
 8835 0980 F2000000 		.4byte	.LVL142
 8836 0984 0100     		.2byte	0x1
 8837 0986 53       		.byte	0x53
 8838 0987 00000000 		.4byte	0
 8839 098b 00000000 		.4byte	0
 8840              	.LLST74:
 8841 098f A6000000 		.4byte	.LVL126
 8842 0993 C2000000 		.4byte	.LVL131
 8843 0997 0100     		.2byte	0x1
 8844 0999 52       		.byte	0x52
 8845 099a 00000000 		.4byte	0
 8846 099e 00000000 		.4byte	0
 8847              	.LLST75:
 8848 09a2 A6000000 		.4byte	.LVL126
 8849 09a6 C2000000 		.4byte	.LVL131
 8850 09aa 0400     		.2byte	0x4
 8851 09ac 40       		.byte	0x40
 8852 09ad 47       		.byte	0x47
 8853 09ae 24       		.byte	0x24
 8854 09af 9F       		.byte	0x9f
 8855 09b0 00000000 		.4byte	0
 8856 09b4 00000000 		.4byte	0
 8857              	.LLST76:
 8858 09b8 A6000000 		.4byte	.LVL126
 8859 09bc C2000000 		.4byte	.LVL131
 8860 09c0 0100     		.2byte	0x1
 8861 09c2 53       		.byte	0x53
 8862 09c3 00000000 		.4byte	0
 8863 09c7 00000000 		.4byte	0
 8864              	.LLST77:
 8865 09cb C2000000 		.4byte	.LVL131
 8866 09cf C4000000 		.4byte	.LVL132
 8867 09d3 0500     		.2byte	0x5
 8868 09d5 71       		.byte	0x71
 8869 09d6 00       		.sleb128 0
 8870 09d7 31       		.byte	0x31
 8871 09d8 1A       		.byte	0x1a
 8872 09d9 9F       		.byte	0x9f
 8873 09da 00000000 		.4byte	0
 8874 09de 00000000 		.4byte	0
 8875              	.LLST78:
 8876 09e2 C2000000 		.4byte	.LVL131
 8877 09e6 C4000000 		.4byte	.LVL132
 8878 09ea 0100     		.2byte	0x1
 8879 09ec 52       		.byte	0x52
 8880 09ed 00000000 		.4byte	0
 8881 09f1 00000000 		.4byte	0
 8882              	.LLST79:
 8883 09f5 C2000000 		.4byte	.LVL131
 8884 09f9 C4000000 		.4byte	.LVL132
 8885 09fd 0100     		.2byte	0x1
 8886 09ff 53       		.byte	0x53
 8887 0a00 00000000 		.4byte	0
 8888 0a04 00000000 		.4byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 184


 8889              	.LLST80:
 8890 0a08 D4000000 		.4byte	.LVL135
 8891 0a0c E0000000 		.4byte	.LVL138
 8892 0a10 0100     		.2byte	0x1
 8893 0a12 52       		.byte	0x52
 8894 0a13 00000000 		.4byte	0
 8895 0a17 00000000 		.4byte	0
 8896              	.LLST81:
 8897 0a1b D4000000 		.4byte	.LVL135
 8898 0a1f E0000000 		.4byte	.LVL138
 8899 0a23 0400     		.2byte	0x4
 8900 0a25 48       		.byte	0x48
 8901 0a26 48       		.byte	0x48
 8902 0a27 24       		.byte	0x24
 8903 0a28 9F       		.byte	0x9f
 8904 0a29 00000000 		.4byte	0
 8905 0a2d 00000000 		.4byte	0
 8906              	.LLST82:
 8907 0a31 D4000000 		.4byte	.LVL135
 8908 0a35 E0000000 		.4byte	.LVL138
 8909 0a39 0100     		.2byte	0x1
 8910 0a3b 53       		.byte	0x53
 8911 0a3c 00000000 		.4byte	0
 8912 0a40 00000000 		.4byte	0
 8913              	.LLST83:
 8914 0a44 FC000000 		.4byte	.LVL144
 8915 0a48 04010000 		.4byte	.LVL147
 8916 0a4c 0100     		.2byte	0x1
 8917 0a4e 52       		.byte	0x52
 8918 0a4f 00000000 		.4byte	0
 8919 0a53 00000000 		.4byte	0
 8920              	.LLST84:
 8921 0a57 FC000000 		.4byte	.LVL144
 8922 0a5b 04010000 		.4byte	.LVL147
 8923 0a5f 0400     		.2byte	0x4
 8924 0a61 40       		.byte	0x40
 8925 0a62 49       		.byte	0x49
 8926 0a63 24       		.byte	0x24
 8927 0a64 9F       		.byte	0x9f
 8928 0a65 00000000 		.4byte	0
 8929 0a69 00000000 		.4byte	0
 8930              	.LLST85:
 8931 0a6d FC000000 		.4byte	.LVL144
 8932 0a71 04010000 		.4byte	.LVL147
 8933 0a75 0100     		.2byte	0x1
 8934 0a77 53       		.byte	0x53
 8935 0a78 00000000 		.4byte	0
 8936 0a7c 00000000 		.4byte	0
 8937              	.LLST86:
 8938 0a80 14010000 		.4byte	.LVL150
 8939 0a84 16010000 		.4byte	.LVL151
 8940 0a88 0500     		.2byte	0x5
 8941 0a8a 71       		.byte	0x71
 8942 0a8b 00       		.sleb128 0
 8943 0a8c 31       		.byte	0x31
 8944 0a8d 1A       		.byte	0x1a
 8945 0a8e 9F       		.byte	0x9f
ARM GAS  /tmp/ccqzbxJl.s 			page 185


 8946 0a8f 16010000 		.4byte	.LVL151
 8947 0a93 36010000 		.4byte	.LVL156
 8948 0a97 0600     		.2byte	0x6
 8949 0a99 F3       		.byte	0xf3
 8950 0a9a 01       		.uleb128 0x1
 8951 0a9b 51       		.byte	0x51
 8952 0a9c 31       		.byte	0x31
 8953 0a9d 1A       		.byte	0x1a
 8954 0a9e 9F       		.byte	0x9f
 8955 0a9f 48010000 		.4byte	.LVL159
 8956 0aa3 54010000 		.4byte	.LFE173
 8957 0aa7 0600     		.2byte	0x6
 8958 0aa9 F3       		.byte	0xf3
 8959 0aaa 01       		.uleb128 0x1
 8960 0aab 51       		.byte	0x51
 8961 0aac 31       		.byte	0x31
 8962 0aad 1A       		.byte	0x1a
 8963 0aae 9F       		.byte	0x9f
 8964 0aaf 00000000 		.4byte	0
 8965 0ab3 00000000 		.4byte	0
 8966              	.LLST87:
 8967 0ab7 14010000 		.4byte	.LVL150
 8968 0abb 30010000 		.4byte	.LVL154
 8969 0abf 0800     		.2byte	0x8
 8970 0ac1 75       		.byte	0x75
 8971 0ac2 00       		.sleb128 0
 8972 0ac3 30       		.byte	0x30
 8973 0ac4 2E       		.byte	0x2e
 8974 0ac5 08       		.byte	0x8
 8975 0ac6 FF       		.byte	0xff
 8976 0ac7 1A       		.byte	0x1a
 8977 0ac8 9F       		.byte	0x9f
 8978 0ac9 30010000 		.4byte	.LVL154
 8979 0acd 32010000 		.4byte	.LVL155
 8980 0ad1 0B00     		.2byte	0xb
 8981 0ad3 F3       		.byte	0xf3
 8982 0ad4 01       		.uleb128 0x1
 8983 0ad5 51       		.byte	0x51
 8984 0ad6 34       		.byte	0x34
 8985 0ad7 1A       		.byte	0x1a
 8986 0ad8 30       		.byte	0x30
 8987 0ad9 2E       		.byte	0x2e
 8988 0ada 08       		.byte	0x8
 8989 0adb FF       		.byte	0xff
 8990 0adc 1A       		.byte	0x1a
 8991 0add 9F       		.byte	0x9f
 8992 0ade 32010000 		.4byte	.LVL155
 8993 0ae2 36010000 		.4byte	.LVL156
 8994 0ae6 0800     		.2byte	0x8
 8995 0ae8 75       		.byte	0x75
 8996 0ae9 00       		.sleb128 0
 8997 0aea 30       		.byte	0x30
 8998 0aeb 2E       		.byte	0x2e
 8999 0aec 08       		.byte	0x8
 9000 0aed FF       		.byte	0xff
 9001 0aee 1A       		.byte	0x1a
 9002 0aef 9F       		.byte	0x9f
ARM GAS  /tmp/ccqzbxJl.s 			page 186


 9003 0af0 48010000 		.4byte	.LVL159
 9004 0af4 54010000 		.4byte	.LFE173
 9005 0af8 0800     		.2byte	0x8
 9006 0afa 75       		.byte	0x75
 9007 0afb 00       		.sleb128 0
 9008 0afc 30       		.byte	0x30
 9009 0afd 2E       		.byte	0x2e
 9010 0afe 08       		.byte	0x8
 9011 0aff FF       		.byte	0xff
 9012 0b00 1A       		.byte	0x1a
 9013 0b01 9F       		.byte	0x9f
 9014 0b02 00000000 		.4byte	0
 9015 0b06 00000000 		.4byte	0
 9016              	.LLST88:
 9017 0b0a 14010000 		.4byte	.LVL150
 9018 0b0e 30010000 		.4byte	.LVL154
 9019 0b12 0A00     		.2byte	0xa
 9020 0b14 74       		.byte	0x74
 9021 0b15 00       		.sleb128 0
 9022 0b16 4C       		.byte	0x4c
 9023 0b17 49       		.byte	0x49
 9024 0b18 24       		.byte	0x24
 9025 0b19 29       		.byte	0x29
 9026 0b1a 08       		.byte	0x8
 9027 0b1b FF       		.byte	0xff
 9028 0b1c 1A       		.byte	0x1a
 9029 0b1d 9F       		.byte	0x9f
 9030 0b1e 30010000 		.4byte	.LVL154
 9031 0b22 32010000 		.4byte	.LVL155
 9032 0b26 0E00     		.2byte	0xe
 9033 0b28 F3       		.byte	0xf3
 9034 0b29 01       		.uleb128 0x1
 9035 0b2a 51       		.byte	0x51
 9036 0b2b 20       		.byte	0x20
 9037 0b2c 4C       		.byte	0x4c
 9038 0b2d 49       		.byte	0x49
 9039 0b2e 24       		.byte	0x24
 9040 0b2f 1A       		.byte	0x1a
 9041 0b30 30       		.byte	0x30
 9042 0b31 29       		.byte	0x29
 9043 0b32 08       		.byte	0x8
 9044 0b33 FF       		.byte	0xff
 9045 0b34 1A       		.byte	0x1a
 9046 0b35 9F       		.byte	0x9f
 9047 0b36 32010000 		.4byte	.LVL155
 9048 0b3a 36010000 		.4byte	.LVL156
 9049 0b3e 0A00     		.2byte	0xa
 9050 0b40 74       		.byte	0x74
 9051 0b41 00       		.sleb128 0
 9052 0b42 4C       		.byte	0x4c
 9053 0b43 49       		.byte	0x49
 9054 0b44 24       		.byte	0x24
 9055 0b45 29       		.byte	0x29
 9056 0b46 08       		.byte	0x8
 9057 0b47 FF       		.byte	0xff
 9058 0b48 1A       		.byte	0x1a
 9059 0b49 9F       		.byte	0x9f
ARM GAS  /tmp/ccqzbxJl.s 			page 187


 9060 0b4a 48010000 		.4byte	.LVL159
 9061 0b4e 54010000 		.4byte	.LFE173
 9062 0b52 0A00     		.2byte	0xa
 9063 0b54 74       		.byte	0x74
 9064 0b55 00       		.sleb128 0
 9065 0b56 4C       		.byte	0x4c
 9066 0b57 49       		.byte	0x49
 9067 0b58 24       		.byte	0x24
 9068 0b59 29       		.byte	0x29
 9069 0b5a 08       		.byte	0x8
 9070 0b5b FF       		.byte	0xff
 9071 0b5c 1A       		.byte	0x1a
 9072 0b5d 9F       		.byte	0x9f
 9073 0b5e 00000000 		.4byte	0
 9074 0b62 00000000 		.4byte	0
 9075              	.LLST89:
 9076 0b66 14010000 		.4byte	.LVL150
 9077 0b6a 36010000 		.4byte	.LVL156
 9078 0b6e 0100     		.2byte	0x1
 9079 0b70 52       		.byte	0x52
 9080 0b71 48010000 		.4byte	.LVL159
 9081 0b75 54010000 		.4byte	.LFE173
 9082 0b79 0100     		.2byte	0x1
 9083 0b7b 52       		.byte	0x52
 9084 0b7c 00000000 		.4byte	0
 9085 0b80 00000000 		.4byte	0
 9086              	.LLST90:
 9087 0b84 12010000 		.4byte	.LVL149
 9088 0b88 36010000 		.4byte	.LVL156
 9089 0b8c 0100     		.2byte	0x1
 9090 0b8e 53       		.byte	0x53
 9091 0b8f 48010000 		.4byte	.LVL159
 9092 0b93 54010000 		.4byte	.LFE173
 9093 0b97 0100     		.2byte	0x1
 9094 0b99 53       		.byte	0x53
 9095 0b9a 00000000 		.4byte	0
 9096 0b9e 00000000 		.4byte	0
 9097              	.LLST91:
 9098 0ba2 18010000 		.4byte	.LVL152
 9099 0ba6 1C010000 		.4byte	.LVL153
 9100 0baa 0600     		.2byte	0x6
 9101 0bac F3       		.byte	0xf3
 9102 0bad 01       		.uleb128 0x1
 9103 0bae 51       		.byte	0x51
 9104 0baf 31       		.byte	0x31
 9105 0bb0 1A       		.byte	0x1a
 9106 0bb1 9F       		.byte	0x9f
 9107 0bb2 32010000 		.4byte	.LVL155
 9108 0bb6 36010000 		.4byte	.LVL156
 9109 0bba 0600     		.2byte	0x6
 9110 0bbc F3       		.byte	0xf3
 9111 0bbd 01       		.uleb128 0x1
 9112 0bbe 51       		.byte	0x51
 9113 0bbf 31       		.byte	0x31
 9114 0bc0 1A       		.byte	0x1a
 9115 0bc1 9F       		.byte	0x9f
 9116 0bc2 00000000 		.4byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 188


 9117 0bc6 00000000 		.4byte	0
 9118              	.LLST92:
 9119 0bca 18010000 		.4byte	.LVL152
 9120 0bce 1C010000 		.4byte	.LVL153
 9121 0bd2 0100     		.2byte	0x1
 9122 0bd4 52       		.byte	0x52
 9123 0bd5 32010000 		.4byte	.LVL155
 9124 0bd9 36010000 		.4byte	.LVL156
 9125 0bdd 0100     		.2byte	0x1
 9126 0bdf 52       		.byte	0x52
 9127 0be0 00000000 		.4byte	0
 9128 0be4 00000000 		.4byte	0
 9129              	.LLST93:
 9130 0be8 18010000 		.4byte	.LVL152
 9131 0bec 1C010000 		.4byte	.LVL153
 9132 0bf0 0100     		.2byte	0x1
 9133 0bf2 53       		.byte	0x53
 9134 0bf3 32010000 		.4byte	.LVL155
 9135 0bf7 36010000 		.4byte	.LVL156
 9136 0bfb 0100     		.2byte	0x1
 9137 0bfd 53       		.byte	0x53
 9138 0bfe 00000000 		.4byte	0
 9139 0c02 00000000 		.4byte	0
 9140              	.LLST94:
 9141 0c06 14010000 		.4byte	.LVL150
 9142 0c0a 18010000 		.4byte	.LVL152
 9143 0c0e 0100     		.2byte	0x1
 9144 0c10 52       		.byte	0x52
 9145 0c11 00000000 		.4byte	0
 9146 0c15 00000000 		.4byte	0
 9147              	.LLST95:
 9148 0c19 14010000 		.4byte	.LVL150
 9149 0c1d 18010000 		.4byte	.LVL152
 9150 0c21 0100     		.2byte	0x1
 9151 0c23 53       		.byte	0x53
 9152 0c24 00000000 		.4byte	0
 9153 0c28 00000000 		.4byte	0
 9154              	.LLST53:
 9155 0c2c 00000000 		.4byte	.LVL103
 9156 0c30 0C000000 		.4byte	.LVL104
 9157 0c34 0100     		.2byte	0x1
 9158 0c36 50       		.byte	0x50
 9159 0c37 0C000000 		.4byte	.LVL104
 9160 0c3b 24000000 		.4byte	.LFE172
 9161 0c3f 0400     		.2byte	0x4
 9162 0c41 F3       		.byte	0xf3
 9163 0c42 01       		.uleb128 0x1
 9164 0c43 50       		.byte	0x50
 9165 0c44 9F       		.byte	0x9f
 9166 0c45 00000000 		.4byte	0
 9167 0c49 00000000 		.4byte	0
 9168              	.LLST54:
 9169 0c4d 00000000 		.4byte	.LVL103
 9170 0c51 0C000000 		.4byte	.LVL104
 9171 0c55 0100     		.2byte	0x1
 9172 0c57 50       		.byte	0x50
 9173 0c58 0C000000 		.4byte	.LVL104
ARM GAS  /tmp/ccqzbxJl.s 			page 189


 9174 0c5c 0E000000 		.4byte	.LVL105
 9175 0c60 0400     		.2byte	0x4
 9176 0c62 F3       		.byte	0xf3
 9177 0c63 01       		.uleb128 0x1
 9178 0c64 50       		.byte	0x50
 9179 0c65 9F       		.byte	0x9f
 9180 0c66 00000000 		.4byte	0
 9181 0c6a 00000000 		.4byte	0
 9182              	.LLST51:
 9183 0c6e 00000000 		.4byte	.LVL100
 9184 0c72 0C000000 		.4byte	.LVL101
 9185 0c76 0100     		.2byte	0x1
 9186 0c78 50       		.byte	0x50
 9187 0c79 0C000000 		.4byte	.LVL101
 9188 0c7d 1C000000 		.4byte	.LFE171
 9189 0c81 0400     		.2byte	0x4
 9190 0c83 F3       		.byte	0xf3
 9191 0c84 01       		.uleb128 0x1
 9192 0c85 50       		.byte	0x50
 9193 0c86 9F       		.byte	0x9f
 9194 0c87 00000000 		.4byte	0
 9195 0c8b 00000000 		.4byte	0
 9196              	.LLST52:
 9197 0c8f 00000000 		.4byte	.LVL100
 9198 0c93 0C000000 		.4byte	.LVL101
 9199 0c97 0100     		.2byte	0x1
 9200 0c99 50       		.byte	0x50
 9201 0c9a 0C000000 		.4byte	.LVL101
 9202 0c9e 0E000000 		.4byte	.LVL102
 9203 0ca2 0400     		.2byte	0x4
 9204 0ca4 F3       		.byte	0xf3
 9205 0ca5 01       		.uleb128 0x1
 9206 0ca6 50       		.byte	0x50
 9207 0ca7 9F       		.byte	0x9f
 9208 0ca8 00000000 		.4byte	0
 9209 0cac 00000000 		.4byte	0
 9210              	.LLST49:
 9211 0cb0 00000000 		.4byte	.LVL97
 9212 0cb4 0C000000 		.4byte	.LVL98
 9213 0cb8 0100     		.2byte	0x1
 9214 0cba 50       		.byte	0x50
 9215 0cbb 0C000000 		.4byte	.LVL98
 9216 0cbf 1C000000 		.4byte	.LFE170
 9217 0cc3 0400     		.2byte	0x4
 9218 0cc5 F3       		.byte	0xf3
 9219 0cc6 01       		.uleb128 0x1
 9220 0cc7 50       		.byte	0x50
 9221 0cc8 9F       		.byte	0x9f
 9222 0cc9 00000000 		.4byte	0
 9223 0ccd 00000000 		.4byte	0
 9224              	.LLST50:
 9225 0cd1 00000000 		.4byte	.LVL97
 9226 0cd5 0C000000 		.4byte	.LVL98
 9227 0cd9 0100     		.2byte	0x1
 9228 0cdb 50       		.byte	0x50
 9229 0cdc 0C000000 		.4byte	.LVL98
 9230 0ce0 0E000000 		.4byte	.LVL99
ARM GAS  /tmp/ccqzbxJl.s 			page 190


 9231 0ce4 0400     		.2byte	0x4
 9232 0ce6 F3       		.byte	0xf3
 9233 0ce7 01       		.uleb128 0x1
 9234 0ce8 50       		.byte	0x50
 9235 0ce9 9F       		.byte	0x9f
 9236 0cea 00000000 		.4byte	0
 9237 0cee 00000000 		.4byte	0
 9238              	.LLST47:
 9239 0cf2 00000000 		.4byte	.LVL94
 9240 0cf6 0A000000 		.4byte	.LVL95
 9241 0cfa 0100     		.2byte	0x1
 9242 0cfc 50       		.byte	0x50
 9243 0cfd 0A000000 		.4byte	.LVL95
 9244 0d01 1C000000 		.4byte	.LFE169
 9245 0d05 0400     		.2byte	0x4
 9246 0d07 F3       		.byte	0xf3
 9247 0d08 01       		.uleb128 0x1
 9248 0d09 50       		.byte	0x50
 9249 0d0a 9F       		.byte	0x9f
 9250 0d0b 00000000 		.4byte	0
 9251 0d0f 00000000 		.4byte	0
 9252              	.LLST48:
 9253 0d13 00000000 		.4byte	.LVL94
 9254 0d17 0A000000 		.4byte	.LVL95
 9255 0d1b 0100     		.2byte	0x1
 9256 0d1d 50       		.byte	0x50
 9257 0d1e 0A000000 		.4byte	.LVL95
 9258 0d22 0C000000 		.4byte	.LVL96
 9259 0d26 0400     		.2byte	0x4
 9260 0d28 F3       		.byte	0xf3
 9261 0d29 01       		.uleb128 0x1
 9262 0d2a 50       		.byte	0x50
 9263 0d2b 9F       		.byte	0x9f
 9264 0d2c 00000000 		.4byte	0
 9265 0d30 00000000 		.4byte	0
 9266              	.LLST46:
 9267 0d34 00000000 		.4byte	.LVL92
 9268 0d38 04000000 		.4byte	.LVL93
 9269 0d3c 0100     		.2byte	0x1
 9270 0d3e 50       		.byte	0x50
 9271 0d3f 04000000 		.4byte	.LVL93
 9272 0d43 06000000 		.4byte	.LFE168
 9273 0d47 0400     		.2byte	0x4
 9274 0d49 F3       		.byte	0xf3
 9275 0d4a 01       		.uleb128 0x1
 9276 0d4b 50       		.byte	0x50
 9277 0d4c 9F       		.byte	0x9f
 9278 0d4d 00000000 		.4byte	0
 9279 0d51 00000000 		.4byte	0
 9280              	.LLST45:
 9281 0d55 00000000 		.4byte	.LVL90
 9282 0d59 04000000 		.4byte	.LVL91
 9283 0d5d 0100     		.2byte	0x1
 9284 0d5f 51       		.byte	0x51
 9285 0d60 04000000 		.4byte	.LVL91
 9286 0d64 14000000 		.4byte	.LFE167
 9287 0d68 0400     		.2byte	0x4
ARM GAS  /tmp/ccqzbxJl.s 			page 191


 9288 0d6a F3       		.byte	0xf3
 9289 0d6b 01       		.uleb128 0x1
 9290 0d6c 51       		.byte	0x51
 9291 0d6d 9F       		.byte	0x9f
 9292 0d6e 00000000 		.4byte	0
 9293 0d72 00000000 		.4byte	0
 9294              	.LLST44:
 9295 0d76 00000000 		.4byte	.LVL87
 9296 0d7a 02000000 		.4byte	.LVL88
 9297 0d7e 0100     		.2byte	0x1
 9298 0d80 50       		.byte	0x50
 9299 0d81 02000000 		.4byte	.LVL88
 9300 0d85 04000000 		.4byte	.LFE165
 9301 0d89 0400     		.2byte	0x4
 9302 0d8b F3       		.byte	0xf3
 9303 0d8c 01       		.uleb128 0x1
 9304 0d8d 50       		.byte	0x50
 9305 0d8e 9F       		.byte	0x9f
 9306 0d8f 00000000 		.4byte	0
 9307 0d93 00000000 		.4byte	0
 9308              	.LLST43:
 9309 0d97 00000000 		.4byte	.LVL85
 9310 0d9b 02000000 		.4byte	.LVL86
 9311 0d9f 0100     		.2byte	0x1
 9312 0da1 50       		.byte	0x50
 9313 0da2 02000000 		.4byte	.LVL86
 9314 0da6 04000000 		.4byte	.LFE164
 9315 0daa 0400     		.2byte	0x4
 9316 0dac F3       		.byte	0xf3
 9317 0dad 01       		.uleb128 0x1
 9318 0dae 50       		.byte	0x50
 9319 0daf 9F       		.byte	0x9f
 9320 0db0 00000000 		.4byte	0
 9321 0db4 00000000 		.4byte	0
 9322              	.LLST42:
 9323 0db8 00000000 		.4byte	.LVL81
 9324 0dbc 04000000 		.4byte	.LVL82
 9325 0dc0 0100     		.2byte	0x1
 9326 0dc2 50       		.byte	0x50
 9327 0dc3 04000000 		.4byte	.LVL82
 9328 0dc7 06000000 		.4byte	.LFE160
 9329 0dcb 0400     		.2byte	0x4
 9330 0dcd F3       		.byte	0xf3
 9331 0dce 01       		.uleb128 0x1
 9332 0dcf 50       		.byte	0x50
 9333 0dd0 9F       		.byte	0x9f
 9334 0dd1 00000000 		.4byte	0
 9335 0dd5 00000000 		.4byte	0
 9336              	.LLST41:
 9337 0dd9 00000000 		.4byte	.LVL77
 9338 0ddd 04000000 		.4byte	.LVL78
 9339 0de1 0100     		.2byte	0x1
 9340 0de3 50       		.byte	0x50
 9341 0de4 04000000 		.4byte	.LVL78
 9342 0de8 06000000 		.4byte	.LFE157
 9343 0dec 0400     		.2byte	0x4
 9344 0dee F3       		.byte	0xf3
ARM GAS  /tmp/ccqzbxJl.s 			page 192


 9345 0def 01       		.uleb128 0x1
 9346 0df0 50       		.byte	0x50
 9347 0df1 9F       		.byte	0x9f
 9348 0df2 00000000 		.4byte	0
 9349 0df6 00000000 		.4byte	0
 9350              	.LLST40:
 9351 0dfa 00000000 		.4byte	.LVL72
 9352 0dfe 02000000 		.4byte	.LVL73
 9353 0e02 0100     		.2byte	0x1
 9354 0e04 50       		.byte	0x50
 9355 0e05 02000000 		.4byte	.LVL73
 9356 0e09 04000000 		.4byte	.LFE153
 9357 0e0d 0400     		.2byte	0x4
 9358 0e0f F3       		.byte	0xf3
 9359 0e10 01       		.uleb128 0x1
 9360 0e11 50       		.byte	0x50
 9361 0e12 9F       		.byte	0x9f
 9362 0e13 00000000 		.4byte	0
 9363 0e17 00000000 		.4byte	0
 9364              	.LLST39:
 9365 0e1b 00000000 		.4byte	.LVL69
 9366 0e1f 08000000 		.4byte	.LVL70
 9367 0e23 0100     		.2byte	0x1
 9368 0e25 50       		.byte	0x50
 9369 0e26 08000000 		.4byte	.LVL70
 9370 0e2a 0C000000 		.4byte	.LFE151
 9371 0e2e 0400     		.2byte	0x4
 9372 0e30 F3       		.byte	0xf3
 9373 0e31 01       		.uleb128 0x1
 9374 0e32 50       		.byte	0x50
 9375 0e33 9F       		.byte	0x9f
 9376 0e34 00000000 		.4byte	0
 9377 0e38 00000000 		.4byte	0
 9378              	.LLST17:
 9379 0e3c 00000000 		.4byte	.LVL42
 9380 0e40 20000000 		.4byte	.LVL44
 9381 0e44 0100     		.2byte	0x1
 9382 0e46 50       		.byte	0x50
 9383 0e47 20000000 		.4byte	.LVL44
 9384 0e4b 22000000 		.4byte	.LVL45
 9385 0e4f 0400     		.2byte	0x4
 9386 0e51 F3       		.byte	0xf3
 9387 0e52 01       		.uleb128 0x1
 9388 0e53 50       		.byte	0x50
 9389 0e54 9F       		.byte	0x9f
 9390 0e55 22000000 		.4byte	.LVL45
 9391 0e59 42000000 		.4byte	.LVL50
 9392 0e5d 0100     		.2byte	0x1
 9393 0e5f 50       		.byte	0x50
 9394 0e60 42000000 		.4byte	.LVL50
 9395 0e64 44000000 		.4byte	.LVL51
 9396 0e68 0400     		.2byte	0x4
 9397 0e6a F3       		.byte	0xf3
 9398 0e6b 01       		.uleb128 0x1
 9399 0e6c 50       		.byte	0x50
 9400 0e6d 9F       		.byte	0x9f
 9401 0e6e 44000000 		.4byte	.LVL51
ARM GAS  /tmp/ccqzbxJl.s 			page 193


 9402 0e72 64000000 		.4byte	.LVL55
 9403 0e76 0100     		.2byte	0x1
 9404 0e78 50       		.byte	0x50
 9405 0e79 64000000 		.4byte	.LVL55
 9406 0e7d 66000000 		.4byte	.LVL56
 9407 0e81 0400     		.2byte	0x4
 9408 0e83 F3       		.byte	0xf3
 9409 0e84 01       		.uleb128 0x1
 9410 0e85 50       		.byte	0x50
 9411 0e86 9F       		.byte	0x9f
 9412 0e87 66000000 		.4byte	.LVL56
 9413 0e8b 8A000000 		.4byte	.LVL60
 9414 0e8f 0100     		.2byte	0x1
 9415 0e91 50       		.byte	0x50
 9416 0e92 8A000000 		.4byte	.LVL60
 9417 0e96 8C000000 		.4byte	.LVL61
 9418 0e9a 0100     		.2byte	0x1
 9419 0e9c 54       		.byte	0x54
 9420 0e9d 8C000000 		.4byte	.LVL61
 9421 0ea1 B4000000 		.4byte	.LVL67
 9422 0ea5 0100     		.2byte	0x1
 9423 0ea7 50       		.byte	0x50
 9424 0ea8 B4000000 		.4byte	.LVL67
 9425 0eac B6000000 		.4byte	.LVL68
 9426 0eb0 0100     		.2byte	0x1
 9427 0eb2 54       		.byte	0x54
 9428 0eb3 B6000000 		.4byte	.LVL68
 9429 0eb7 BA000000 		.4byte	.LFE150
 9430 0ebb 0100     		.2byte	0x1
 9431 0ebd 50       		.byte	0x50
 9432 0ebe 00000000 		.4byte	0
 9433 0ec2 00000000 		.4byte	0
 9434              	.LLST18:
 9435 0ec6 00000000 		.4byte	.LVL42
 9436 0eca 3A000000 		.4byte	.LVL48
 9437 0ece 0100     		.2byte	0x1
 9438 0ed0 51       		.byte	0x51
 9439 0ed1 3A000000 		.4byte	.LVL48
 9440 0ed5 44000000 		.4byte	.LVL51
 9441 0ed9 0400     		.2byte	0x4
 9442 0edb F3       		.byte	0xf3
 9443 0edc 01       		.uleb128 0x1
 9444 0edd 51       		.byte	0x51
 9445 0ede 9F       		.byte	0x9f
 9446 0edf 44000000 		.4byte	.LVL51
 9447 0ee3 7F000000 		.4byte	.LVL57-1
 9448 0ee7 0100     		.2byte	0x1
 9449 0ee9 51       		.byte	0x51
 9450 0eea 7F000000 		.4byte	.LVL57-1
 9451 0eee 8C000000 		.4byte	.LVL61
 9452 0ef2 0400     		.2byte	0x4
 9453 0ef4 F3       		.byte	0xf3
 9454 0ef5 01       		.uleb128 0x1
 9455 0ef6 51       		.byte	0x51
 9456 0ef7 9F       		.byte	0x9f
 9457 0ef8 8C000000 		.4byte	.LVL61
 9458 0efc A6000000 		.4byte	.LVL65
ARM GAS  /tmp/ccqzbxJl.s 			page 194


 9459 0f00 0100     		.2byte	0x1
 9460 0f02 51       		.byte	0x51
 9461 0f03 A6000000 		.4byte	.LVL65
 9462 0f07 B6000000 		.4byte	.LVL68
 9463 0f0b 0400     		.2byte	0x4
 9464 0f0d F3       		.byte	0xf3
 9465 0f0e 01       		.uleb128 0x1
 9466 0f0f 51       		.byte	0x51
 9467 0f10 9F       		.byte	0x9f
 9468 0f11 B6000000 		.4byte	.LVL68
 9469 0f15 BA000000 		.4byte	.LFE150
 9470 0f19 0100     		.2byte	0x1
 9471 0f1b 51       		.byte	0x51
 9472 0f1c 00000000 		.4byte	0
 9473 0f20 00000000 		.4byte	0
 9474              	.LLST19:
 9475 0f24 00000000 		.4byte	.LVL42
 9476 0f28 1E000000 		.4byte	.LVL43
 9477 0f2c 0100     		.2byte	0x1
 9478 0f2e 53       		.byte	0x53
 9479 0f2f 1E000000 		.4byte	.LVL43
 9480 0f33 22000000 		.4byte	.LVL45
 9481 0f37 0400     		.2byte	0x4
 9482 0f39 F3       		.byte	0xf3
 9483 0f3a 01       		.uleb128 0x1
 9484 0f3b 53       		.byte	0x53
 9485 0f3c 9F       		.byte	0x9f
 9486 0f3d 22000000 		.4byte	.LVL45
 9487 0f41 3C000000 		.4byte	.LVL49
 9488 0f45 0100     		.2byte	0x1
 9489 0f47 53       		.byte	0x53
 9490 0f48 3C000000 		.4byte	.LVL49
 9491 0f4c 44000000 		.4byte	.LVL51
 9492 0f50 0400     		.2byte	0x4
 9493 0f52 F3       		.byte	0xf3
 9494 0f53 01       		.uleb128 0x1
 9495 0f54 53       		.byte	0x53
 9496 0f55 9F       		.byte	0x9f
 9497 0f56 44000000 		.4byte	.LVL51
 9498 0f5a 4A000000 		.4byte	.LVL53
 9499 0f5e 0100     		.2byte	0x1
 9500 0f60 53       		.byte	0x53
 9501 0f61 4A000000 		.4byte	.LVL53
 9502 0f65 66000000 		.4byte	.LVL56
 9503 0f69 0400     		.2byte	0x4
 9504 0f6b F3       		.byte	0xf3
 9505 0f6c 01       		.uleb128 0x1
 9506 0f6d 53       		.byte	0x53
 9507 0f6e 9F       		.byte	0x9f
 9508 0f6f 66000000 		.4byte	.LVL56
 9509 0f73 7F000000 		.4byte	.LVL57-1
 9510 0f77 0100     		.2byte	0x1
 9511 0f79 53       		.byte	0x53
 9512 0f7a 7F000000 		.4byte	.LVL57-1
 9513 0f7e 82000000 		.4byte	.LVL58
 9514 0f82 0100     		.2byte	0x1
 9515 0f84 56       		.byte	0x56
ARM GAS  /tmp/ccqzbxJl.s 			page 195


 9516 0f85 82000000 		.4byte	.LVL58
 9517 0f89 96000000 		.4byte	.LVL63
 9518 0f8d 0400     		.2byte	0x4
 9519 0f8f F3       		.byte	0xf3
 9520 0f90 01       		.uleb128 0x1
 9521 0f91 53       		.byte	0x53
 9522 0f92 9F       		.byte	0x9f
 9523 0f93 96000000 		.4byte	.LVL63
 9524 0f97 AE000000 		.4byte	.LVL66
 9525 0f9b 0100     		.2byte	0x1
 9526 0f9d 53       		.byte	0x53
 9527 0f9e AE000000 		.4byte	.LVL66
 9528 0fa2 BA000000 		.4byte	.LFE150
 9529 0fa6 0400     		.2byte	0x4
 9530 0fa8 F3       		.byte	0xf3
 9531 0fa9 01       		.uleb128 0x1
 9532 0faa 53       		.byte	0x53
 9533 0fab 9F       		.byte	0x9f
 9534 0fac 00000000 		.4byte	0
 9535 0fb0 00000000 		.4byte	0
 9536              	.LLST20:
 9537 0fb4 22000000 		.4byte	.LVL45
 9538 0fb8 3C000000 		.4byte	.LVL49
 9539 0fbc 0100     		.2byte	0x1
 9540 0fbe 53       		.byte	0x53
 9541 0fbf 3C000000 		.4byte	.LVL49
 9542 0fc3 44000000 		.4byte	.LVL51
 9543 0fc7 0400     		.2byte	0x4
 9544 0fc9 F3       		.byte	0xf3
 9545 0fca 01       		.uleb128 0x1
 9546 0fcb 53       		.byte	0x53
 9547 0fcc 9F       		.byte	0x9f
 9548 0fcd 96000000 		.4byte	.LVL63
 9549 0fd1 AE000000 		.4byte	.LVL66
 9550 0fd5 0100     		.2byte	0x1
 9551 0fd7 53       		.byte	0x53
 9552 0fd8 00000000 		.4byte	0
 9553 0fdc 00000000 		.4byte	0
 9554              	.LLST21:
 9555 0fe0 22000000 		.4byte	.LVL45
 9556 0fe4 44000000 		.4byte	.LVL51
 9557 0fe8 0100     		.2byte	0x1
 9558 0fea 52       		.byte	0x52
 9559 0feb 96000000 		.4byte	.LVL63
 9560 0fef AE000000 		.4byte	.LVL66
 9561 0ff3 0100     		.2byte	0x1
 9562 0ff5 52       		.byte	0x52
 9563 0ff6 00000000 		.4byte	0
 9564 0ffa 00000000 		.4byte	0
 9565              	.LLST22:
 9566 0ffe 22000000 		.4byte	.LVL45
 9567 1002 42000000 		.4byte	.LVL50
 9568 1006 0100     		.2byte	0x1
 9569 1008 50       		.byte	0x50
 9570 1009 42000000 		.4byte	.LVL50
 9571 100d 44000000 		.4byte	.LVL51
 9572 1011 0400     		.2byte	0x4
ARM GAS  /tmp/ccqzbxJl.s 			page 196


 9573 1013 F3       		.byte	0xf3
 9574 1014 01       		.uleb128 0x1
 9575 1015 50       		.byte	0x50
 9576 1016 9F       		.byte	0x9f
 9577 1017 96000000 		.4byte	.LVL63
 9578 101b AE000000 		.4byte	.LVL66
 9579 101f 0100     		.2byte	0x1
 9580 1021 50       		.byte	0x50
 9581 1022 00000000 		.4byte	0
 9582 1026 00000000 		.4byte	0
 9583              	.LLST23:
 9584 102a 26000000 		.4byte	.LVL46
 9585 102e 28000000 		.4byte	.LVL47
 9586 1032 0500     		.2byte	0x5
 9587 1034 73       		.byte	0x73
 9588 1035 00       		.sleb128 0
 9589 1036 31       		.byte	0x31
 9590 1037 1A       		.byte	0x1a
 9591 1038 9F       		.byte	0x9f
 9592 1039 96000000 		.4byte	.LVL63
 9593 103d 9C000000 		.4byte	.LVL64
 9594 1041 0500     		.2byte	0x5
 9595 1043 73       		.byte	0x73
 9596 1044 00       		.sleb128 0
 9597 1045 31       		.byte	0x31
 9598 1046 1A       		.byte	0x1a
 9599 1047 9F       		.byte	0x9f
 9600 1048 00000000 		.4byte	0
 9601 104c 00000000 		.4byte	0
 9602              	.LLST24:
 9603 1050 26000000 		.4byte	.LVL46
 9604 1054 28000000 		.4byte	.LVL47
 9605 1058 0100     		.2byte	0x1
 9606 105a 52       		.byte	0x52
 9607 105b 96000000 		.4byte	.LVL63
 9608 105f 9C000000 		.4byte	.LVL64
 9609 1063 0100     		.2byte	0x1
 9610 1065 52       		.byte	0x52
 9611 1066 00000000 		.4byte	0
 9612 106a 00000000 		.4byte	0
 9613              	.LLST25:
 9614 106e 26000000 		.4byte	.LVL46
 9615 1072 28000000 		.4byte	.LVL47
 9616 1076 0100     		.2byte	0x1
 9617 1078 50       		.byte	0x50
 9618 1079 96000000 		.4byte	.LVL63
 9619 107d 9C000000 		.4byte	.LVL64
 9620 1081 0100     		.2byte	0x1
 9621 1083 50       		.byte	0x50
 9622 1084 00000000 		.4byte	0
 9623 1088 00000000 		.4byte	0
 9624              	.LLST26:
 9625 108c 22000000 		.4byte	.LVL45
 9626 1090 26000000 		.4byte	.LVL46
 9627 1094 0100     		.2byte	0x1
 9628 1096 52       		.byte	0x52
 9629 1097 00000000 		.4byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 197


 9630 109b 00000000 		.4byte	0
 9631              	.LLST27:
 9632 109f 22000000 		.4byte	.LVL45
 9633 10a3 26000000 		.4byte	.LVL46
 9634 10a7 0100     		.2byte	0x1
 9635 10a9 50       		.byte	0x50
 9636 10aa 00000000 		.4byte	0
 9637 10ae 00000000 		.4byte	0
 9638              	.LLST28:
 9639 10b2 48000000 		.4byte	.LVL52
 9640 10b6 4A000000 		.4byte	.LVL53
 9641 10ba 0500     		.2byte	0x5
 9642 10bc 73       		.byte	0x73
 9643 10bd 00       		.sleb128 0
 9644 10be 31       		.byte	0x31
 9645 10bf 1A       		.byte	0x1a
 9646 10c0 9F       		.byte	0x9f
 9647 10c1 4A000000 		.4byte	.LVL53
 9648 10c5 66000000 		.4byte	.LVL56
 9649 10c9 0600     		.2byte	0x6
 9650 10cb F3       		.byte	0xf3
 9651 10cc 01       		.uleb128 0x1
 9652 10cd 53       		.byte	0x53
 9653 10ce 31       		.byte	0x31
 9654 10cf 1A       		.byte	0x1a
 9655 10d0 9F       		.byte	0x9f
 9656 10d1 8C000000 		.4byte	.LVL61
 9657 10d5 96000000 		.4byte	.LVL63
 9658 10d9 0600     		.2byte	0x6
 9659 10db F3       		.byte	0xf3
 9660 10dc 01       		.uleb128 0x1
 9661 10dd 53       		.byte	0x53
 9662 10de 31       		.byte	0x31
 9663 10df 1A       		.byte	0x1a
 9664 10e0 9F       		.byte	0x9f
 9665 10e1 B6000000 		.4byte	.LVL68
 9666 10e5 BA000000 		.4byte	.LFE150
 9667 10e9 0600     		.2byte	0x6
 9668 10eb F3       		.byte	0xf3
 9669 10ec 01       		.uleb128 0x1
 9670 10ed 53       		.byte	0x53
 9671 10ee 31       		.byte	0x31
 9672 10ef 1A       		.byte	0x1a
 9673 10f0 9F       		.byte	0x9f
 9674 10f1 00000000 		.4byte	0
 9675 10f5 00000000 		.4byte	0
 9676              	.LLST29:
 9677 10f9 48000000 		.4byte	.LVL52
 9678 10fd 66000000 		.4byte	.LVL56
 9679 1101 0800     		.2byte	0x8
 9680 1103 74       		.byte	0x74
 9681 1104 00       		.sleb128 0
 9682 1105 30       		.byte	0x30
 9683 1106 2E       		.byte	0x2e
 9684 1107 08       		.byte	0x8
 9685 1108 FF       		.byte	0xff
 9686 1109 1A       		.byte	0x1a
ARM GAS  /tmp/ccqzbxJl.s 			page 198


 9687 110a 9F       		.byte	0x9f
 9688 110b 8C000000 		.4byte	.LVL61
 9689 110f 96000000 		.4byte	.LVL63
 9690 1113 0800     		.2byte	0x8
 9691 1115 74       		.byte	0x74
 9692 1116 00       		.sleb128 0
 9693 1117 30       		.byte	0x30
 9694 1118 2E       		.byte	0x2e
 9695 1119 08       		.byte	0x8
 9696 111a FF       		.byte	0xff
 9697 111b 1A       		.byte	0x1a
 9698 111c 9F       		.byte	0x9f
 9699 111d B6000000 		.4byte	.LVL68
 9700 1121 BA000000 		.4byte	.LFE150
 9701 1125 0800     		.2byte	0x8
 9702 1127 74       		.byte	0x74
 9703 1128 00       		.sleb128 0
 9704 1129 30       		.byte	0x30
 9705 112a 2E       		.byte	0x2e
 9706 112b 08       		.byte	0x8
 9707 112c FF       		.byte	0xff
 9708 112d 1A       		.byte	0x1a
 9709 112e 9F       		.byte	0x9f
 9710 112f 00000000 		.4byte	0
 9711 1133 00000000 		.4byte	0
 9712              	.LLST30:
 9713 1137 48000000 		.4byte	.LVL52
 9714 113b 66000000 		.4byte	.LVL56
 9715 113f 0A00     		.2byte	0xa
 9716 1141 71       		.byte	0x71
 9717 1142 00       		.sleb128 0
 9718 1143 4C       		.byte	0x4c
 9719 1144 49       		.byte	0x49
 9720 1145 24       		.byte	0x24
 9721 1146 29       		.byte	0x29
 9722 1147 08       		.byte	0x8
 9723 1148 FF       		.byte	0xff
 9724 1149 1A       		.byte	0x1a
 9725 114a 9F       		.byte	0x9f
 9726 114b 8C000000 		.4byte	.LVL61
 9727 114f 96000000 		.4byte	.LVL63
 9728 1153 0A00     		.2byte	0xa
 9729 1155 71       		.byte	0x71
 9730 1156 00       		.sleb128 0
 9731 1157 4C       		.byte	0x4c
 9732 1158 49       		.byte	0x49
 9733 1159 24       		.byte	0x24
 9734 115a 29       		.byte	0x29
 9735 115b 08       		.byte	0x8
 9736 115c FF       		.byte	0xff
 9737 115d 1A       		.byte	0x1a
 9738 115e 9F       		.byte	0x9f
 9739 115f B6000000 		.4byte	.LVL68
 9740 1163 BA000000 		.4byte	.LFE150
 9741 1167 0A00     		.2byte	0xa
 9742 1169 71       		.byte	0x71
 9743 116a 00       		.sleb128 0
ARM GAS  /tmp/ccqzbxJl.s 			page 199


 9744 116b 4C       		.byte	0x4c
 9745 116c 49       		.byte	0x49
 9746 116d 24       		.byte	0x24
 9747 116e 29       		.byte	0x29
 9748 116f 08       		.byte	0x8
 9749 1170 FF       		.byte	0xff
 9750 1171 1A       		.byte	0x1a
 9751 1172 9F       		.byte	0x9f
 9752 1173 00000000 		.4byte	0
 9753 1177 00000000 		.4byte	0
 9754              	.LLST31:
 9755 117b 48000000 		.4byte	.LVL52
 9756 117f 66000000 		.4byte	.LVL56
 9757 1183 0100     		.2byte	0x1
 9758 1185 52       		.byte	0x52
 9759 1186 8C000000 		.4byte	.LVL61
 9760 118a 96000000 		.4byte	.LVL63
 9761 118e 0100     		.2byte	0x1
 9762 1190 52       		.byte	0x52
 9763 1191 B6000000 		.4byte	.LVL68
 9764 1195 BA000000 		.4byte	.LFE150
 9765 1199 0100     		.2byte	0x1
 9766 119b 52       		.byte	0x52
 9767 119c 00000000 		.4byte	0
 9768 11a0 00000000 		.4byte	0
 9769              	.LLST32:
 9770 11a4 48000000 		.4byte	.LVL52
 9771 11a8 64000000 		.4byte	.LVL55
 9772 11ac 0100     		.2byte	0x1
 9773 11ae 50       		.byte	0x50
 9774 11af 64000000 		.4byte	.LVL55
 9775 11b3 66000000 		.4byte	.LVL56
 9776 11b7 0400     		.2byte	0x4
 9777 11b9 F3       		.byte	0xf3
 9778 11ba 01       		.uleb128 0x1
 9779 11bb 50       		.byte	0x50
 9780 11bc 9F       		.byte	0x9f
 9781 11bd 8C000000 		.4byte	.LVL61
 9782 11c1 96000000 		.4byte	.LVL63
 9783 11c5 0100     		.2byte	0x1
 9784 11c7 50       		.byte	0x50
 9785 11c8 B6000000 		.4byte	.LVL68
 9786 11cc BA000000 		.4byte	.LFE150
 9787 11d0 0100     		.2byte	0x1
 9788 11d2 50       		.byte	0x50
 9789 11d3 00000000 		.4byte	0
 9790 11d7 00000000 		.4byte	0
 9791              	.LLST33:
 9792 11db 48000000 		.4byte	.LVL52
 9793 11df 4A000000 		.4byte	.LVL53
 9794 11e3 0500     		.2byte	0x5
 9795 11e5 73       		.byte	0x73
 9796 11e6 00       		.sleb128 0
 9797 11e7 31       		.byte	0x31
 9798 11e8 1A       		.byte	0x1a
 9799 11e9 9F       		.byte	0x9f
 9800 11ea 4A000000 		.4byte	.LVL53
ARM GAS  /tmp/ccqzbxJl.s 			page 200


 9801 11ee 4E000000 		.4byte	.LVL54
 9802 11f2 0600     		.2byte	0x6
 9803 11f4 F3       		.byte	0xf3
 9804 11f5 01       		.uleb128 0x1
 9805 11f6 53       		.byte	0x53
 9806 11f7 31       		.byte	0x31
 9807 11f8 1A       		.byte	0x1a
 9808 11f9 9F       		.byte	0x9f
 9809 11fa 8C000000 		.4byte	.LVL61
 9810 11fe 8E000000 		.4byte	.LVL62
 9811 1202 0600     		.2byte	0x6
 9812 1204 F3       		.byte	0xf3
 9813 1205 01       		.uleb128 0x1
 9814 1206 53       		.byte	0x53
 9815 1207 31       		.byte	0x31
 9816 1208 1A       		.byte	0x1a
 9817 1209 9F       		.byte	0x9f
 9818 120a 00000000 		.4byte	0
 9819 120e 00000000 		.4byte	0
 9820              	.LLST34:
 9821 1212 48000000 		.4byte	.LVL52
 9822 1216 4E000000 		.4byte	.LVL54
 9823 121a 0100     		.2byte	0x1
 9824 121c 52       		.byte	0x52
 9825 121d 8C000000 		.4byte	.LVL61
 9826 1221 8E000000 		.4byte	.LVL62
 9827 1225 0100     		.2byte	0x1
 9828 1227 52       		.byte	0x52
 9829 1228 00000000 		.4byte	0
 9830 122c 00000000 		.4byte	0
 9831              	.LLST35:
 9832 1230 48000000 		.4byte	.LVL52
 9833 1234 4E000000 		.4byte	.LVL54
 9834 1238 0100     		.2byte	0x1
 9835 123a 50       		.byte	0x50
 9836 123b 8C000000 		.4byte	.LVL61
 9837 123f 8E000000 		.4byte	.LVL62
 9838 1243 0100     		.2byte	0x1
 9839 1245 50       		.byte	0x50
 9840 1246 00000000 		.4byte	0
 9841 124a 00000000 		.4byte	0
 9842              	.LLST36:
 9843 124e 80000000 		.4byte	.LVL57
 9844 1252 82000000 		.4byte	.LVL58
 9845 1256 0500     		.2byte	0x5
 9846 1258 76       		.byte	0x76
 9847 1259 00       		.sleb128 0
 9848 125a 31       		.byte	0x31
 9849 125b 1A       		.byte	0x1a
 9850 125c 9F       		.byte	0x9f
 9851 125d 82000000 		.4byte	.LVL58
 9852 1261 8C000000 		.4byte	.LVL61
 9853 1265 0600     		.2byte	0x6
 9854 1267 F3       		.byte	0xf3
 9855 1268 01       		.uleb128 0x1
 9856 1269 53       		.byte	0x53
 9857 126a 31       		.byte	0x31
ARM GAS  /tmp/ccqzbxJl.s 			page 201


 9858 126b 1A       		.byte	0x1a
 9859 126c 9F       		.byte	0x9f
 9860 126d AE000000 		.4byte	.LVL66
 9861 1271 B6000000 		.4byte	.LVL68
 9862 1275 0600     		.2byte	0x6
 9863 1277 F3       		.byte	0xf3
 9864 1278 01       		.uleb128 0x1
 9865 1279 53       		.byte	0x53
 9866 127a 31       		.byte	0x31
 9867 127b 1A       		.byte	0x1a
 9868 127c 9F       		.byte	0x9f
 9869 127d 00000000 		.4byte	0
 9870 1281 00000000 		.4byte	0
 9871              	.LLST37:
 9872 1285 80000000 		.4byte	.LVL57
 9873 1289 8C000000 		.4byte	.LVL61
 9874 128d 0100     		.2byte	0x1
 9875 128f 52       		.byte	0x52
 9876 1290 AE000000 		.4byte	.LVL66
 9877 1294 B6000000 		.4byte	.LVL68
 9878 1298 0100     		.2byte	0x1
 9879 129a 52       		.byte	0x52
 9880 129b 00000000 		.4byte	0
 9881 129f 00000000 		.4byte	0
 9882              	.LLST38:
 9883 12a3 80000000 		.4byte	.LVL57
 9884 12a7 84000000 		.4byte	.LVL59
 9885 12ab 0100     		.2byte	0x1
 9886 12ad 54       		.byte	0x54
 9887 12ae 84000000 		.4byte	.LVL59
 9888 12b2 8A000000 		.4byte	.LVL60
 9889 12b6 0100     		.2byte	0x1
 9890 12b8 50       		.byte	0x50
 9891 12b9 8A000000 		.4byte	.LVL60
 9892 12bd 8C000000 		.4byte	.LVL61
 9893 12c1 0100     		.2byte	0x1
 9894 12c3 54       		.byte	0x54
 9895 12c4 AE000000 		.4byte	.LVL66
 9896 12c8 B4000000 		.4byte	.LVL67
 9897 12cc 0100     		.2byte	0x1
 9898 12ce 50       		.byte	0x50
 9899 12cf B4000000 		.4byte	.LVL67
 9900 12d3 B6000000 		.4byte	.LVL68
 9901 12d7 0100     		.2byte	0x1
 9902 12d9 54       		.byte	0x54
 9903 12da 00000000 		.4byte	0
 9904 12de 00000000 		.4byte	0
 9905              	.LLST1:
 9906 12e2 00000000 		.4byte	.LVL3
 9907 12e6 12000000 		.4byte	.LVL6
 9908 12ea 0100     		.2byte	0x1
 9909 12ec 50       		.byte	0x50
 9910 12ed 12000000 		.4byte	.LVL6
 9911 12f1 16000000 		.4byte	.LVL7
 9912 12f5 0400     		.2byte	0x4
 9913 12f7 F3       		.byte	0xf3
 9914 12f8 01       		.uleb128 0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 202


 9915 12f9 50       		.byte	0x50
 9916 12fa 9F       		.byte	0x9f
 9917 12fb 16000000 		.4byte	.LVL7
 9918 12ff 1A000000 		.4byte	.LFE146
 9919 1303 0100     		.2byte	0x1
 9920 1305 50       		.byte	0x50
 9921 1306 00000000 		.4byte	0
 9922 130a 00000000 		.4byte	0
 9923              	.LLST2:
 9924 130e 00000000 		.4byte	.LVL3
 9925 1312 04000000 		.4byte	.LVL4
 9926 1316 0100     		.2byte	0x1
 9927 1318 51       		.byte	0x51
 9928 1319 04000000 		.4byte	.LVL4
 9929 131d 1A000000 		.4byte	.LFE146
 9930 1321 0400     		.2byte	0x4
 9931 1323 F3       		.byte	0xf3
 9932 1324 01       		.uleb128 0x1
 9933 1325 51       		.byte	0x51
 9934 1326 9F       		.byte	0x9f
 9935 1327 00000000 		.4byte	0
 9936 132b 00000000 		.4byte	0
 9937              	.LLST3:
 9938 132f 0C000000 		.4byte	.LVL5
 9939 1333 16000000 		.4byte	.LVL7
 9940 1337 0100     		.2byte	0x1
 9941 1339 53       		.byte	0x53
 9942 133a 18000000 		.4byte	.LVL8
 9943 133e 1A000000 		.4byte	.LFE146
 9944 1342 0100     		.2byte	0x1
 9945 1344 53       		.byte	0x53
 9946 1345 00000000 		.4byte	0
 9947 1349 00000000 		.4byte	0
 9948              	.LLST0:
 9949 134d 00000000 		.4byte	.LVL1
 9950 1351 02000000 		.4byte	.LVL2
 9951 1355 0100     		.2byte	0x1
 9952 1357 52       		.byte	0x52
 9953 1358 02000000 		.4byte	.LVL2
 9954 135c 1A000000 		.4byte	.LFE143
 9955 1360 0400     		.2byte	0x4
 9956 1362 F3       		.byte	0xf3
 9957 1363 01       		.uleb128 0x1
 9958 1364 52       		.byte	0x52
 9959 1365 9F       		.byte	0x9f
 9960 1366 00000000 		.4byte	0
 9961 136a 00000000 		.4byte	0
 9962              	.LLST4:
 9963 136e 00000000 		.4byte	.LVL9
 9964 1372 20000000 		.4byte	.LVL13
 9965 1376 0100     		.2byte	0x1
 9966 1378 51       		.byte	0x51
 9967 1379 20000000 		.4byte	.LVL13
 9968 137d 2C000000 		.4byte	.LVL15
 9969 1381 0400     		.2byte	0x4
 9970 1383 F3       		.byte	0xf3
 9971 1384 01       		.uleb128 0x1
ARM GAS  /tmp/ccqzbxJl.s 			page 203


 9972 1385 51       		.byte	0x51
 9973 1386 9F       		.byte	0x9f
 9974 1387 2C000000 		.4byte	.LVL15
 9975 138b 4C000000 		.4byte	.LVL20
 9976 138f 0100     		.2byte	0x1
 9977 1391 51       		.byte	0x51
 9978 1392 4C000000 		.4byte	.LVL20
 9979 1396 6C000000 		.4byte	.LVL24
 9980 139a 0400     		.2byte	0x4
 9981 139c F3       		.byte	0xf3
 9982 139d 01       		.uleb128 0x1
 9983 139e 51       		.byte	0x51
 9984 139f 9F       		.byte	0x9f
 9985 13a0 6C000000 		.4byte	.LVL24
 9986 13a4 76000000 		.4byte	.LVL26
 9987 13a8 0100     		.2byte	0x1
 9988 13aa 51       		.byte	0x51
 9989 13ab 76000000 		.4byte	.LVL26
 9990 13af 88000000 		.4byte	.LVL30
 9991 13b3 0400     		.2byte	0x4
 9992 13b5 F3       		.byte	0xf3
 9993 13b6 01       		.uleb128 0x1
 9994 13b7 51       		.byte	0x51
 9995 13b8 9F       		.byte	0x9f
 9996 13b9 88000000 		.4byte	.LVL30
 9997 13bd 96000000 		.4byte	.LFE147
 9998 13c1 0100     		.2byte	0x1
 9999 13c3 51       		.byte	0x51
 10000 13c4 00000000 		.4byte	0
 10001 13c8 00000000 		.4byte	0
 10002              	.LLST5:
 10003 13cc 18000000 		.4byte	.LVL10
 10004 13d0 1A000000 		.4byte	.LVL11
 10005 13d4 0100     		.2byte	0x1
 10006 13d6 53       		.byte	0x53
 10007 13d7 1E000000 		.4byte	.LVL12
 10008 13db 22000000 		.4byte	.LVL14
 10009 13df 0100     		.2byte	0x1
 10010 13e1 53       		.byte	0x53
 10011 13e2 3C000000 		.4byte	.LVL16
 10012 13e6 3E000000 		.4byte	.LVL17
 10013 13ea 0100     		.2byte	0x1
 10014 13ec 53       		.byte	0x53
 10015 13ed 42000000 		.4byte	.LVL18
 10016 13f1 44000000 		.4byte	.LVL19
 10017 13f5 0100     		.2byte	0x1
 10018 13f7 53       		.byte	0x53
 10019 13f8 4C000000 		.4byte	.LVL20
 10020 13fc 54000000 		.4byte	.LVL21
 10021 1400 0100     		.2byte	0x1
 10022 1402 51       		.byte	0x51
 10023 1403 5C000000 		.4byte	.LVL22
 10024 1407 60000000 		.4byte	.LVL23
 10025 140b 0100     		.2byte	0x1
 10026 140d 53       		.byte	0x53
 10027 140e 74000000 		.4byte	.LVL25
 10028 1412 78000000 		.4byte	.LVL27
ARM GAS  /tmp/ccqzbxJl.s 			page 204


 10029 1416 0100     		.2byte	0x1
 10030 1418 53       		.byte	0x53
 10031 1419 80000000 		.4byte	.LVL28
 10032 141d 82000000 		.4byte	.LVL29
 10033 1421 0100     		.2byte	0x1
 10034 1423 53       		.byte	0x53
 10035 1424 00000000 		.4byte	0
 10036 1428 00000000 		.4byte	0
 10037              	.LLST6:
 10038 142c 04000000 		.4byte	.LVL32
 10039 1430 08000000 		.4byte	.LVL33
 10040 1434 0500     		.2byte	0x5
 10041 1436 72       		.byte	0x72
 10042 1437 00       		.sleb128 0
 10043 1438 31       		.byte	0x31
 10044 1439 1A       		.byte	0x1a
 10045 143a 9F       		.byte	0x9f
 10046 143b 32000000 		.4byte	.LVL34
 10047 143f 36000000 		.4byte	.LFE148
 10048 1443 0500     		.2byte	0x5
 10049 1445 72       		.byte	0x72
 10050 1446 00       		.sleb128 0
 10051 1447 31       		.byte	0x31
 10052 1448 1A       		.byte	0x1a
 10053 1449 9F       		.byte	0x9f
 10054 144a 00000000 		.4byte	0
 10055 144e 00000000 		.4byte	0
 10056              	.LLST7:
 10057 1452 04000000 		.4byte	.LVL32
 10058 1456 08000000 		.4byte	.LVL33
 10059 145a 0100     		.2byte	0x1
 10060 145c 51       		.byte	0x51
 10061 145d 32000000 		.4byte	.LVL34
 10062 1461 36000000 		.4byte	.LFE148
 10063 1465 0100     		.2byte	0x1
 10064 1467 51       		.byte	0x51
 10065 1468 00000000 		.4byte	0
 10066 146c 00000000 		.4byte	0
 10067              	.LLST8:
 10068 1470 04000000 		.4byte	.LVL32
 10069 1474 08000000 		.4byte	.LVL33
 10070 1478 0100     		.2byte	0x1
 10071 147a 50       		.byte	0x50
 10072 147b 32000000 		.4byte	.LVL34
 10073 147f 36000000 		.4byte	.LFE148
 10074 1483 0100     		.2byte	0x1
 10075 1485 50       		.byte	0x50
 10076 1486 00000000 		.4byte	0
 10077 148a 00000000 		.4byte	0
 10078              	.LLST9:
 10079 148e 00000000 		.4byte	.LVL31
 10080 1492 04000000 		.4byte	.LVL32
 10081 1496 0100     		.2byte	0x1
 10082 1498 51       		.byte	0x51
 10083 1499 00000000 		.4byte	0
 10084 149d 00000000 		.4byte	0
 10085              	.LLST10:
ARM GAS  /tmp/ccqzbxJl.s 			page 205


 10086 14a1 00000000 		.4byte	.LVL31
 10087 14a5 04000000 		.4byte	.LVL32
 10088 14a9 0100     		.2byte	0x1
 10089 14ab 50       		.byte	0x50
 10090 14ac 00000000 		.4byte	0
 10091 14b0 00000000 		.4byte	0
 10092              	.LLST11:
 10093 14b4 00000000 		.4byte	.LVL35
 10094 14b8 16000000 		.4byte	.LVL38
 10095 14bc 0200     		.2byte	0x2
 10096 14be 91       		.byte	0x91
 10097 14bf 00       		.sleb128 0
 10098 14c0 16000000 		.4byte	.LVL38
 10099 14c4 1C000000 		.4byte	.LVL39
 10100 14c8 0200     		.2byte	0x2
 10101 14ca 7D       		.byte	0x7d
 10102 14cb 00       		.sleb128 0
 10103 14cc 1C000000 		.4byte	.LVL39
 10104 14d0 28000000 		.4byte	.LVL40
 10105 14d4 0200     		.2byte	0x2
 10106 14d6 91       		.byte	0x91
 10107 14d7 00       		.sleb128 0
 10108 14d8 28000000 		.4byte	.LVL40
 10109 14dc 2E000000 		.4byte	.LVL41
 10110 14e0 0200     		.2byte	0x2
 10111 14e2 7D       		.byte	0x7d
 10112 14e3 00       		.sleb128 0
 10113 14e4 2E000000 		.4byte	.LVL41
 10114 14e8 32000000 		.4byte	.LFE149
 10115 14ec 0200     		.2byte	0x2
 10116 14ee 91       		.byte	0x91
 10117 14ef 00       		.sleb128 0
 10118 14f0 00000000 		.4byte	0
 10119 14f4 00000000 		.4byte	0
 10120              	.LLST12:
 10121 14f8 00000000 		.4byte	.LVL35
 10122 14fc 06000000 		.4byte	.LVL36
 10123 1500 0100     		.2byte	0x1
 10124 1502 51       		.byte	0x51
 10125 1503 00000000 		.4byte	0
 10126 1507 00000000 		.4byte	0
 10127              	.LLST13:
 10128 150b 00000000 		.4byte	.LVL35
 10129 150f 06000000 		.4byte	.LVL36
 10130 1513 0100     		.2byte	0x1
 10131 1515 50       		.byte	0x50
 10132 1516 00000000 		.4byte	0
 10133 151a 00000000 		.4byte	0
 10134              	.LLST14:
 10135 151e 06000000 		.4byte	.LVL36
 10136 1522 0A000000 		.4byte	.LVL37
 10137 1526 0100     		.2byte	0x1
 10138 1528 54       		.byte	0x54
 10139 1529 2E000000 		.4byte	.LVL41
 10140 152d 32000000 		.4byte	.LFE149
 10141 1531 0100     		.2byte	0x1
 10142 1533 54       		.byte	0x54
ARM GAS  /tmp/ccqzbxJl.s 			page 206


 10143 1534 00000000 		.4byte	0
 10144 1538 00000000 		.4byte	0
 10145              	.LLST15:
 10146 153c 06000000 		.4byte	.LVL36
 10147 1540 0A000000 		.4byte	.LVL37
 10148 1544 0100     		.2byte	0x1
 10149 1546 51       		.byte	0x51
 10150 1547 2E000000 		.4byte	.LVL41
 10151 154b 32000000 		.4byte	.LFE149
 10152 154f 0100     		.2byte	0x1
 10153 1551 51       		.byte	0x51
 10154 1552 00000000 		.4byte	0
 10155 1556 00000000 		.4byte	0
 10156              	.LLST16:
 10157 155a 06000000 		.4byte	.LVL36
 10158 155e 0A000000 		.4byte	.LVL37
 10159 1562 0100     		.2byte	0x1
 10160 1564 50       		.byte	0x50
 10161 1565 2E000000 		.4byte	.LVL41
 10162 1569 32000000 		.4byte	.LFE149
 10163 156d 0100     		.2byte	0x1
 10164 156f 50       		.byte	0x50
 10165 1570 00000000 		.4byte	0
 10166 1574 00000000 		.4byte	0
 10167              	.LLST141:
 10168 1578 00000000 		.4byte	.LVL214
 10169 157c 06000000 		.4byte	.LVL215
 10170 1580 0100     		.2byte	0x1
 10171 1582 50       		.byte	0x50
 10172 1583 06000000 		.4byte	.LVL215
 10173 1587 10000000 		.4byte	.LFE180
 10174 158b 0400     		.2byte	0x4
 10175 158d F3       		.byte	0xf3
 10176 158e 01       		.uleb128 0x1
 10177 158f 50       		.byte	0x50
 10178 1590 9F       		.byte	0x9f
 10179 1591 00000000 		.4byte	0
 10180 1595 00000000 		.4byte	0
 10181              	.LLST142:
 10182 1599 00000000 		.4byte	.LVL214
 10183 159d 06000000 		.4byte	.LVL215
 10184 15a1 0C00     		.2byte	0xc
 10185 15a3 70       		.byte	0x70
 10186 15a4 00       		.sleb128 0
 10187 15a5 35       		.byte	0x35
 10188 15a6 25       		.byte	0x25
 10189 15a7 23       		.byte	0x23
 10190 15a8 878E8001 		.uleb128 0x200707
 10191 15ac 39       		.byte	0x39
 10192 15ad 24       		.byte	0x24
 10193 15ae 9F       		.byte	0x9f
 10194 15af 06000000 		.4byte	.LVL215
 10195 15b3 08000000 		.4byte	.LVL216
 10196 15b7 0D00     		.2byte	0xd
 10197 15b9 F3       		.byte	0xf3
 10198 15ba 01       		.uleb128 0x1
 10199 15bb 50       		.byte	0x50
ARM GAS  /tmp/ccqzbxJl.s 			page 207


 10200 15bc 35       		.byte	0x35
 10201 15bd 25       		.byte	0x25
 10202 15be 23       		.byte	0x23
 10203 15bf 878E8001 		.uleb128 0x200707
 10204 15c3 39       		.byte	0x39
 10205 15c4 24       		.byte	0x24
 10206 15c5 9F       		.byte	0x9f
 10207 15c6 08000000 		.4byte	.LVL216
 10208 15ca 10000000 		.4byte	.LFE180
 10209 15ce 0100     		.2byte	0x1
 10210 15d0 50       		.byte	0x50
 10211 15d1 00000000 		.4byte	0
 10212 15d5 00000000 		.4byte	0
 10213              		.section	.debug_aranges,"",%progbits
 10214 0000 8C010000 		.4byte	0x18c
 10215 0004 0200     		.2byte	0x2
 10216 0006 00000000 		.4byte	.Ldebug_info0
 10217 000a 04       		.byte	0x4
 10218 000b 00       		.byte	0
 10219 000c 0000     		.2byte	0
 10220 000e 0000     		.2byte	0
 10221 0010 00000000 		.4byte	.LFB142
 10222 0014 0A000000 		.4byte	.LFE142-.LFB142
 10223 0018 00000000 		.4byte	.LFB143
 10224 001c 1A000000 		.4byte	.LFE143-.LFB143
 10225 0020 00000000 		.4byte	.LFB146
 10226 0024 1A000000 		.4byte	.LFE146-.LFB146
 10227 0028 00000000 		.4byte	.LFB147
 10228 002c 96000000 		.4byte	.LFE147-.LFB147
 10229 0030 00000000 		.4byte	.LFB148
 10230 0034 36000000 		.4byte	.LFE148-.LFB148
 10231 0038 00000000 		.4byte	.LFB149
 10232 003c 32000000 		.4byte	.LFE149-.LFB149
 10233 0040 00000000 		.4byte	.LFB150
 10234 0044 BA000000 		.4byte	.LFE150-.LFB150
 10235 0048 00000000 		.4byte	.LFB151
 10236 004c 0C000000 		.4byte	.LFE151-.LFB151
 10237 0050 00000000 		.4byte	.LFB152
 10238 0054 0A000000 		.4byte	.LFE152-.LFB152
 10239 0058 00000000 		.4byte	.LFB153
 10240 005c 04000000 		.4byte	.LFE153-.LFB153
 10241 0060 00000000 		.4byte	.LFB154
 10242 0064 0E000000 		.4byte	.LFE154-.LFB154
 10243 0068 00000000 		.4byte	.LFB155
 10244 006c 06000000 		.4byte	.LFE155-.LFB155
 10245 0070 00000000 		.4byte	.LFB156
 10246 0074 06000000 		.4byte	.LFE156-.LFB156
 10247 0078 00000000 		.4byte	.LFB157
 10248 007c 06000000 		.4byte	.LFE157-.LFB157
 10249 0080 00000000 		.4byte	.LFB158
 10250 0084 04000000 		.4byte	.LFE158-.LFB158
 10251 0088 00000000 		.4byte	.LFB159
 10252 008c 06000000 		.4byte	.LFE159-.LFB159
 10253 0090 00000000 		.4byte	.LFB160
 10254 0094 06000000 		.4byte	.LFE160-.LFB160
 10255 0098 00000000 		.4byte	.LFB162
 10256 009c 04000000 		.4byte	.LFE162-.LFB162
ARM GAS  /tmp/ccqzbxJl.s 			page 208


 10257 00a0 00000000 		.4byte	.LFB163
 10258 00a4 04000000 		.4byte	.LFE163-.LFB163
 10259 00a8 00000000 		.4byte	.LFB164
 10260 00ac 04000000 		.4byte	.LFE164-.LFB164
 10261 00b0 00000000 		.4byte	.LFB165
 10262 00b4 04000000 		.4byte	.LFE165-.LFB165
 10263 00b8 00000000 		.4byte	.LFB166
 10264 00bc 2E000000 		.4byte	.LFE166-.LFB166
 10265 00c0 00000000 		.4byte	.LFB167
 10266 00c4 14000000 		.4byte	.LFE167-.LFB167
 10267 00c8 00000000 		.4byte	.LFB168
 10268 00cc 06000000 		.4byte	.LFE168-.LFB168
 10269 00d0 00000000 		.4byte	.LFB169
 10270 00d4 1C000000 		.4byte	.LFE169-.LFB169
 10271 00d8 00000000 		.4byte	.LFB170
 10272 00dc 1C000000 		.4byte	.LFE170-.LFB170
 10273 00e0 00000000 		.4byte	.LFB171
 10274 00e4 1C000000 		.4byte	.LFE171-.LFB171
 10275 00e8 00000000 		.4byte	.LFB172
 10276 00ec 24000000 		.4byte	.LFE172-.LFB172
 10277 00f0 00000000 		.4byte	.LFB173
 10278 00f4 54010000 		.4byte	.LFE173-.LFB173
 10279 00f8 00000000 		.4byte	.LFB174
 10280 00fc 04000000 		.4byte	.LFE174-.LFB174
 10281 0100 00000000 		.4byte	.LFB175
 10282 0104 04000000 		.4byte	.LFE175-.LFB175
 10283 0108 00000000 		.4byte	.LFB176
 10284 010c 0E000000 		.4byte	.LFE176-.LFB176
 10285 0110 00000000 		.4byte	.LFB177
 10286 0114 2A010000 		.4byte	.LFE177-.LFB177
 10287 0118 00000000 		.4byte	.LFB178
 10288 011c 1C000000 		.4byte	.LFE178-.LFB178
 10289 0120 00000000 		.4byte	.LFB179
 10290 0124 1C000000 		.4byte	.LFE179-.LFB179
 10291 0128 00000000 		.4byte	.LFB180
 10292 012c 10000000 		.4byte	.LFE180-.LFB180
 10293 0130 00000000 		.4byte	.LFB181
 10294 0134 14000000 		.4byte	.LFE181-.LFB181
 10295 0138 00000000 		.4byte	.LFB182
 10296 013c 0C000000 		.4byte	.LFE182-.LFB182
 10297 0140 00000000 		.4byte	.LFB183
 10298 0144 0A000000 		.4byte	.LFE183-.LFB183
 10299 0148 00000000 		.4byte	.LFB184
 10300 014c 18000000 		.4byte	.LFE184-.LFB184
 10301 0150 00000000 		.4byte	.LFB185
 10302 0154 18000000 		.4byte	.LFE185-.LFB185
 10303 0158 00000000 		.4byte	.LFB186
 10304 015c 16000000 		.4byte	.LFE186-.LFB186
 10305 0160 00000000 		.4byte	.LFB187
 10306 0164 0A000000 		.4byte	.LFE187-.LFB187
 10307 0168 00000000 		.4byte	.LFB188
 10308 016c 06000000 		.4byte	.LFE188-.LFB188
 10309 0170 00000000 		.4byte	.LFB189
 10310 0174 06000000 		.4byte	.LFE189-.LFB189
 10311 0178 00000000 		.4byte	.LFB190
 10312 017c 06000000 		.4byte	.LFE190-.LFB190
 10313 0180 00000000 		.4byte	.LFB191
ARM GAS  /tmp/ccqzbxJl.s 			page 209


 10314 0184 24000000 		.4byte	.LFE191-.LFB191
 10315 0188 00000000 		.4byte	0
 10316 018c 00000000 		.4byte	0
 10317              		.section	.debug_ranges,"",%progbits
 10318              	.Ldebug_ranges0:
 10319 0000 00000000 		.4byte	.LBB94
 10320 0004 02000000 		.4byte	.LBE94
 10321 0008 04000000 		.4byte	.LBB100
 10322 000c 08000000 		.4byte	.LBE100
 10323 0010 32000000 		.4byte	.LBB101
 10324 0014 36000000 		.4byte	.LBE101
 10325 0018 00000000 		.4byte	0
 10326 001c 00000000 		.4byte	0
 10327 0020 06000000 		.4byte	.LBB104
 10328 0024 0A000000 		.4byte	.LBE104
 10329 0028 2E000000 		.4byte	.LBB107
 10330 002c 32000000 		.4byte	.LBE107
 10331 0030 00000000 		.4byte	0
 10332 0034 00000000 		.4byte	0
 10333 0038 22000000 		.4byte	.LBB108
 10334 003c 3A000000 		.4byte	.LBE108
 10335 0040 3C000000 		.4byte	.LBB122
 10336 0044 40000000 		.4byte	.LBE122
 10337 0048 96000000 		.4byte	.LBB143
 10338 004c AE000000 		.4byte	.LBE143
 10339 0050 00000000 		.4byte	0
 10340 0054 00000000 		.4byte	0
 10341 0058 22000000 		.4byte	.LBB110
 10342 005c 24000000 		.4byte	.LBE110
 10343 0060 26000000 		.4byte	.LBB117
 10344 0064 28000000 		.4byte	.LBE117
 10345 0068 2C000000 		.4byte	.LBB118
 10346 006c 2E000000 		.4byte	.LBE118
 10347 0070 9A000000 		.4byte	.LBB119
 10348 0074 9C000000 		.4byte	.LBE119
 10349 0078 00000000 		.4byte	0
 10350 007c 00000000 		.4byte	0
 10351 0080 48000000 		.4byte	.LBB123
 10352 0084 5C000000 		.4byte	.LBE123
 10353 0088 5E000000 		.4byte	.LBB136
 10354 008c 62000000 		.4byte	.LBE136
 10355 0090 8C000000 		.4byte	.LBB142
 10356 0094 96000000 		.4byte	.LBE142
 10357 0098 B6000000 		.4byte	.LBB145
 10358 009c BA000000 		.4byte	.LBE145
 10359 00a0 00000000 		.4byte	0
 10360 00a4 00000000 		.4byte	0
 10361 00a8 48000000 		.4byte	.LBB125
 10362 00ac 4A000000 		.4byte	.LBE125
 10363 00b0 4C000000 		.4byte	.LBB131
 10364 00b4 50000000 		.4byte	.LBE131
 10365 00b8 8C000000 		.4byte	.LBB132
 10366 00bc 8E000000 		.4byte	.LBE132
 10367 00c0 00000000 		.4byte	0
 10368 00c4 00000000 		.4byte	0
 10369 00c8 80000000 		.4byte	.LBB137
 10370 00cc 84000000 		.4byte	.LBE137
ARM GAS  /tmp/ccqzbxJl.s 			page 210


 10371 00d0 86000000 		.4byte	.LBB141
 10372 00d4 88000000 		.4byte	.LBE141
 10373 00d8 B0000000 		.4byte	.LBB144
 10374 00dc B2000000 		.4byte	.LBE144
 10375 00e0 00000000 		.4byte	0
 10376 00e4 00000000 		.4byte	0
 10377 00e8 00000000 		.4byte	.LBB146
 10378 00ec 06000000 		.4byte	.LBE146
 10379 00f0 0A000000 		.4byte	.LBB149
 10380 00f4 0C000000 		.4byte	.LBE149
 10381 00f8 00000000 		.4byte	0
 10382 00fc 00000000 		.4byte	0
 10383 0100 00000000 		.4byte	.LBB150
 10384 0104 02000000 		.4byte	.LBE150
 10385 0108 04000000 		.4byte	.LBB154
 10386 010c 08000000 		.4byte	.LBE154
 10387 0110 0C000000 		.4byte	.LBB155
 10388 0114 0E000000 		.4byte	.LBE155
 10389 0118 00000000 		.4byte	0
 10390 011c 00000000 		.4byte	0
 10391 0120 00000000 		.4byte	.LBB156
 10392 0124 02000000 		.4byte	.LBE156
 10393 0128 04000000 		.4byte	.LBB160
 10394 012c 08000000 		.4byte	.LBE160
 10395 0130 0C000000 		.4byte	.LBB161
 10396 0134 0E000000 		.4byte	.LBE161
 10397 0138 00000000 		.4byte	0
 10398 013c 00000000 		.4byte	0
 10399 0140 00000000 		.4byte	.LBB162
 10400 0144 02000000 		.4byte	.LBE162
 10401 0148 04000000 		.4byte	.LBB166
 10402 014c 08000000 		.4byte	.LBE166
 10403 0150 0C000000 		.4byte	.LBB167
 10404 0154 0E000000 		.4byte	.LBE167
 10405 0158 00000000 		.4byte	0
 10406 015c 00000000 		.4byte	0
 10407 0160 00000000 		.4byte	.LBB168
 10408 0164 02000000 		.4byte	.LBE168
 10409 0168 06000000 		.4byte	.LBB172
 10410 016c 0A000000 		.4byte	.LBE172
 10411 0170 10000000 		.4byte	.LBB173
 10412 0174 14000000 		.4byte	.LBE173
 10413 0178 00000000 		.4byte	0
 10414 017c 00000000 		.4byte	0
 10415 0180 48000000 		.4byte	.LBB174
 10416 0184 4A000000 		.4byte	.LBE174
 10417 0188 4E000000 		.4byte	.LBB187
 10418 018c 66000000 		.4byte	.LBE187
 10419 0190 68000000 		.4byte	.LBB188
 10420 0194 6A000000 		.4byte	.LBE188
 10421 0198 36010000 		.4byte	.LBB234
 10422 019c 48010000 		.4byte	.LBE234
 10423 01a0 00000000 		.4byte	0
 10424 01a4 00000000 		.4byte	0
 10425 01a8 48000000 		.4byte	.LBB176
 10426 01ac 4A000000 		.4byte	.LBE176
 10427 01b0 50000000 		.4byte	.LBB182
ARM GAS  /tmp/ccqzbxJl.s 			page 211


 10428 01b4 54000000 		.4byte	.LBE182
 10429 01b8 3A010000 		.4byte	.LBB183
 10430 01bc 3E010000 		.4byte	.LBE183
 10431 01c0 00000000 		.4byte	0
 10432 01c4 00000000 		.4byte	0
 10433 01c8 74000000 		.4byte	.LBB189
 10434 01cc 76000000 		.4byte	.LBE189
 10435 01d0 94000000 		.4byte	.LBB194
 10436 01d4 96000000 		.4byte	.LBE194
 10437 01d8 00000000 		.4byte	0
 10438 01dc 00000000 		.4byte	0
 10439 01e0 96000000 		.4byte	.LBB195
 10440 01e4 98000000 		.4byte	.LBE195
 10441 01e8 C4000000 		.4byte	.LBB208
 10442 01ec C6000000 		.4byte	.LBE208
 10443 01f0 E2000000 		.4byte	.LBB215
 10444 01f4 E4000000 		.4byte	.LBE215
 10445 01f8 EE000000 		.4byte	.LBB217
 10446 01fc F2000000 		.4byte	.LBE217
 10447 0200 00000000 		.4byte	0
 10448 0204 00000000 		.4byte	0
 10449 0208 A6000000 		.4byte	.LBB200
 10450 020c BE000000 		.4byte	.LBE200
 10451 0210 C0000000 		.4byte	.LBB206
 10452 0214 C2000000 		.4byte	.LBE206
 10453 0218 00000000 		.4byte	0
 10454 021c 00000000 		.4byte	0
 10455 0220 BE000000 		.4byte	.LBB203
 10456 0224 C0000000 		.4byte	.LBE203
 10457 0228 C2000000 		.4byte	.LBB207
 10458 022c C4000000 		.4byte	.LBE207
 10459 0230 00000000 		.4byte	0
 10460 0234 00000000 		.4byte	0
 10461 0238 E0000000 		.4byte	.LBB211
 10462 023c E2000000 		.4byte	.LBE211
 10463 0240 E4000000 		.4byte	.LBB216
 10464 0244 EE000000 		.4byte	.LBE216
 10465 0248 FC000000 		.4byte	.LBB218
 10466 024c 04010000 		.4byte	.LBE218
 10467 0250 00000000 		.4byte	0
 10468 0254 00000000 		.4byte	0
 10469 0258 14010000 		.4byte	.LBB219
 10470 025c 2A010000 		.4byte	.LBE219
 10471 0260 2C010000 		.4byte	.LBB232
 10472 0264 2E010000 		.4byte	.LBE232
 10473 0268 32010000 		.4byte	.LBB233
 10474 026c 36010000 		.4byte	.LBE233
 10475 0270 48010000 		.4byte	.LBB235
 10476 0274 54010000 		.4byte	.LBE235
 10477 0278 00000000 		.4byte	0
 10478 027c 00000000 		.4byte	0
 10479 0280 14010000 		.4byte	.LBB221
 10480 0284 16010000 		.4byte	.LBE221
 10481 0288 18010000 		.4byte	.LBB227
 10482 028c 1C010000 		.4byte	.LBE227
 10483 0290 32010000 		.4byte	.LBB228
 10484 0294 36010000 		.4byte	.LBE228
ARM GAS  /tmp/ccqzbxJl.s 			page 212


 10485 0298 00000000 		.4byte	0
 10486 029c 00000000 		.4byte	0
 10487 02a0 3A000000 		.4byte	.LBB236
 10488 02a4 54000000 		.4byte	.LBE236
 10489 02a8 56000000 		.4byte	.LBB248
 10490 02ac 58000000 		.4byte	.LBE248
 10491 02b0 0E010000 		.4byte	.LBB301
 10492 02b4 20010000 		.4byte	.LBE301
 10493 02b8 00000000 		.4byte	0
 10494 02bc 00000000 		.4byte	0
 10495 02c0 3A000000 		.4byte	.LBB238
 10496 02c4 3C000000 		.4byte	.LBE238
 10497 02c8 3E000000 		.4byte	.LBB244
 10498 02cc 42000000 		.4byte	.LBE244
 10499 02d0 12010000 		.4byte	.LBB245
 10500 02d4 16010000 		.4byte	.LBE245
 10501 02d8 00000000 		.4byte	0
 10502 02dc 00000000 		.4byte	0
 10503 02e0 5C000000 		.4byte	.LBB249
 10504 02e4 6A000000 		.4byte	.LBE249
 10505 02e8 6C000000 		.4byte	.LBB255
 10506 02ec 74000000 		.4byte	.LBE255
 10507 02f0 00000000 		.4byte	0
 10508 02f4 00000000 		.4byte	0
 10509 02f8 6A000000 		.4byte	.LBB252
 10510 02fc 6C000000 		.4byte	.LBE252
 10511 0300 74000000 		.4byte	.LBB256
 10512 0304 76000000 		.4byte	.LBE256
 10513 0308 00000000 		.4byte	0
 10514 030c 00000000 		.4byte	0
 10515 0310 78000000 		.4byte	.LBB257
 10516 0314 7A000000 		.4byte	.LBE257
 10517 0318 A0000000 		.4byte	.LBB270
 10518 031c A2000000 		.4byte	.LBE270
 10519 0320 BA000000 		.4byte	.LBB274
 10520 0324 BC000000 		.4byte	.LBE274
 10521 0328 BE000000 		.4byte	.LBB276
 10522 032c C2000000 		.4byte	.LBE276
 10523 0330 00000000 		.4byte	0
 10524 0334 00000000 		.4byte	0
 10525 0338 7E000000 		.4byte	.LBB262
 10526 033c 96000000 		.4byte	.LBE262
 10527 0340 98000000 		.4byte	.LBB268
 10528 0344 9C000000 		.4byte	.LBE268
 10529 0348 00000000 		.4byte	0
 10530 034c 00000000 		.4byte	0
 10531 0350 96000000 		.4byte	.LBB265
 10532 0354 98000000 		.4byte	.LBE265
 10533 0358 9C000000 		.4byte	.LBB269
 10534 035c 9E000000 		.4byte	.LBE269
 10535 0360 00000000 		.4byte	0
 10536 0364 00000000 		.4byte	0
 10537 0368 A6000000 		.4byte	.LBB271
 10538 036c BA000000 		.4byte	.LBE271
 10539 0370 BC000000 		.4byte	.LBB275
 10540 0374 BE000000 		.4byte	.LBE275
 10541 0378 00000000 		.4byte	0
ARM GAS  /tmp/ccqzbxJl.s 			page 213


 10542 037c 00000000 		.4byte	0
 10543 0380 C2000000 		.4byte	.LBB277
 10544 0384 C4000000 		.4byte	.LBE277
 10545 0388 C6000000 		.4byte	.LBB284
 10546 038c D8000000 		.4byte	.LBE284
 10547 0390 00000000 		.4byte	0
 10548 0394 00000000 		.4byte	0
 10549 0398 C4000000 		.4byte	.LBB280
 10550 039c C6000000 		.4byte	.LBE280
 10551 03a0 D8000000 		.4byte	.LBB285
 10552 03a4 DC000000 		.4byte	.LBE285
 10553 03a8 20010000 		.4byte	.LBB302
 10554 03ac 22010000 		.4byte	.LBE302
 10555 03b0 00000000 		.4byte	0
 10556 03b4 00000000 		.4byte	0
 10557 03b8 E8000000 		.4byte	.LBB286
 10558 03bc FE000000 		.4byte	.LBE286
 10559 03c0 00010000 		.4byte	.LBB299
 10560 03c4 02010000 		.4byte	.LBE299
 10561 03c8 06010000 		.4byte	.LBB300
 10562 03cc 0E010000 		.4byte	.LBE300
 10563 03d0 26010000 		.4byte	.LBB303
 10564 03d4 2A010000 		.4byte	.LBE303
 10565 03d8 00000000 		.4byte	0
 10566 03dc 00000000 		.4byte	0
 10567 03e0 E8000000 		.4byte	.LBB288
 10568 03e4 EA000000 		.4byte	.LBE288
 10569 03e8 EC000000 		.4byte	.LBB294
 10570 03ec F0000000 		.4byte	.LBE294
 10571 03f0 06010000 		.4byte	.LBB295
 10572 03f4 0A010000 		.4byte	.LBE295
 10573 03f8 00000000 		.4byte	0
 10574 03fc 00000000 		.4byte	0
 10575 0400 00000000 		.4byte	.LBB304
 10576 0404 02000000 		.4byte	.LBE304
 10577 0408 04000000 		.4byte	.LBB308
 10578 040c 08000000 		.4byte	.LBE308
 10579 0410 0C000000 		.4byte	.LBB309
 10580 0414 0E000000 		.4byte	.LBE309
 10581 0418 00000000 		.4byte	0
 10582 041c 00000000 		.4byte	0
 10583 0420 00000000 		.4byte	.LBB310
 10584 0424 02000000 		.4byte	.LBE310
 10585 0428 04000000 		.4byte	.LBB314
 10586 042c 08000000 		.4byte	.LBE314
 10587 0430 0C000000 		.4byte	.LBB315
 10588 0434 0E000000 		.4byte	.LBE315
 10589 0438 00000000 		.4byte	0
 10590 043c 00000000 		.4byte	0
 10591 0440 00000000 		.4byte	.LFB142
 10592 0444 0A000000 		.4byte	.LFE142
 10593 0448 00000000 		.4byte	.LFB143
 10594 044c 1A000000 		.4byte	.LFE143
 10595 0450 00000000 		.4byte	.LFB146
 10596 0454 1A000000 		.4byte	.LFE146
 10597 0458 00000000 		.4byte	.LFB147
 10598 045c 96000000 		.4byte	.LFE147
ARM GAS  /tmp/ccqzbxJl.s 			page 214


 10599 0460 00000000 		.4byte	.LFB148
 10600 0464 36000000 		.4byte	.LFE148
 10601 0468 00000000 		.4byte	.LFB149
 10602 046c 32000000 		.4byte	.LFE149
 10603 0470 00000000 		.4byte	.LFB150
 10604 0474 BA000000 		.4byte	.LFE150
 10605 0478 00000000 		.4byte	.LFB151
 10606 047c 0C000000 		.4byte	.LFE151
 10607 0480 00000000 		.4byte	.LFB152
 10608 0484 0A000000 		.4byte	.LFE152
 10609 0488 00000000 		.4byte	.LFB153
 10610 048c 04000000 		.4byte	.LFE153
 10611 0490 00000000 		.4byte	.LFB154
 10612 0494 0E000000 		.4byte	.LFE154
 10613 0498 00000000 		.4byte	.LFB155
 10614 049c 06000000 		.4byte	.LFE155
 10615 04a0 00000000 		.4byte	.LFB156
 10616 04a4 06000000 		.4byte	.LFE156
 10617 04a8 00000000 		.4byte	.LFB157
 10618 04ac 06000000 		.4byte	.LFE157
 10619 04b0 00000000 		.4byte	.LFB158
 10620 04b4 04000000 		.4byte	.LFE158
 10621 04b8 00000000 		.4byte	.LFB159
 10622 04bc 06000000 		.4byte	.LFE159
 10623 04c0 00000000 		.4byte	.LFB160
 10624 04c4 06000000 		.4byte	.LFE160
 10625 04c8 00000000 		.4byte	.LFB162
 10626 04cc 04000000 		.4byte	.LFE162
 10627 04d0 00000000 		.4byte	.LFB163
 10628 04d4 04000000 		.4byte	.LFE163
 10629 04d8 00000000 		.4byte	.LFB164
 10630 04dc 04000000 		.4byte	.LFE164
 10631 04e0 00000000 		.4byte	.LFB165
 10632 04e4 04000000 		.4byte	.LFE165
 10633 04e8 00000000 		.4byte	.LFB166
 10634 04ec 2E000000 		.4byte	.LFE166
 10635 04f0 00000000 		.4byte	.LFB167
 10636 04f4 14000000 		.4byte	.LFE167
 10637 04f8 00000000 		.4byte	.LFB168
 10638 04fc 06000000 		.4byte	.LFE168
 10639 0500 00000000 		.4byte	.LFB169
 10640 0504 1C000000 		.4byte	.LFE169
 10641 0508 00000000 		.4byte	.LFB170
 10642 050c 1C000000 		.4byte	.LFE170
 10643 0510 00000000 		.4byte	.LFB171
 10644 0514 1C000000 		.4byte	.LFE171
 10645 0518 00000000 		.4byte	.LFB172
 10646 051c 24000000 		.4byte	.LFE172
 10647 0520 00000000 		.4byte	.LFB173
 10648 0524 54010000 		.4byte	.LFE173
 10649 0528 00000000 		.4byte	.LFB174
 10650 052c 04000000 		.4byte	.LFE174
 10651 0530 00000000 		.4byte	.LFB175
 10652 0534 04000000 		.4byte	.LFE175
 10653 0538 00000000 		.4byte	.LFB176
 10654 053c 0E000000 		.4byte	.LFE176
 10655 0540 00000000 		.4byte	.LFB177
ARM GAS  /tmp/ccqzbxJl.s 			page 215


 10656 0544 2A010000 		.4byte	.LFE177
 10657 0548 00000000 		.4byte	.LFB178
 10658 054c 1C000000 		.4byte	.LFE178
 10659 0550 00000000 		.4byte	.LFB179
 10660 0554 1C000000 		.4byte	.LFE179
 10661 0558 00000000 		.4byte	.LFB180
 10662 055c 10000000 		.4byte	.LFE180
 10663 0560 00000000 		.4byte	.LFB181
 10664 0564 14000000 		.4byte	.LFE181
 10665 0568 00000000 		.4byte	.LFB182
 10666 056c 0C000000 		.4byte	.LFE182
 10667 0570 00000000 		.4byte	.LFB183
 10668 0574 0A000000 		.4byte	.LFE183
 10669 0578 00000000 		.4byte	.LFB184
 10670 057c 18000000 		.4byte	.LFE184
 10671 0580 00000000 		.4byte	.LFB185
 10672 0584 18000000 		.4byte	.LFE185
 10673 0588 00000000 		.4byte	.LFB186
 10674 058c 16000000 		.4byte	.LFE186
 10675 0590 00000000 		.4byte	.LFB187
 10676 0594 0A000000 		.4byte	.LFE187
 10677 0598 00000000 		.4byte	.LFB188
 10678 059c 06000000 		.4byte	.LFE188
 10679 05a0 00000000 		.4byte	.LFB189
 10680 05a4 06000000 		.4byte	.LFE189
 10681 05a8 00000000 		.4byte	.LFB190
 10682 05ac 06000000 		.4byte	.LFE190
 10683 05b0 00000000 		.4byte	.LFB191
 10684 05b4 24000000 		.4byte	.LFE191
 10685 05b8 00000000 		.4byte	0
 10686 05bc 00000000 		.4byte	0
 10687              		.section	.debug_line,"",%progbits
 10688              	.Ldebug_line0:
 10689 0000 38090000 		.section	.debug_str,"MS",%progbits,1
 10689      02005E02 
 10689      00000201 
 10689      FB0E0D00 
 10689      01010101 
 10690              	.LASF93:
 10691 0000 5F666C6F 		.ascii	"_flock_t\000"
 10691      636B5F74 
 10691      00
 10692              	.LASF264:
 10693 0009 70696F5F 		.ascii	"pio_set_multi_driver\000"
 10693      7365745F 
 10693      6D756C74 
 10693      695F6472 
 10693      69766572 
 10694              	.LASF53:
 10695 001e 52657365 		.ascii	"Reserved7\000"
 10695      72766564 
 10695      3700
 10696              	.LASF279:
 10697 0028 70696F5F 		.ascii	"pio_clear\000"
 10697      636C6561 
 10697      7200
 10698              	.LASF221:
ARM GAS  /tmp/ccqzbxJl.s 			page 216


 10699 0032 756C5F6D 		.ascii	"ul_mask\000"
 10699      61736B00 
 10700              	.LASF205:
 10701 003a 50494F5F 		.ascii	"PIO_INPUT\000"
 10701      494E5055 
 10701      5400
 10702              	.LASF35:
 10703 0044 50494F5F 		.ascii	"PIO_ISR\000"
 10703      49535200 
 10704              	.LASF110:
 10705 004c 5F6F6E5F 		.ascii	"_on_exit_args\000"
 10705      65786974 
 10705      5F617267 
 10705      7300
 10706              	.LASF71:
 10707 005a 50494F5F 		.ascii	"PIO_WPMR\000"
 10707      57504D52 
 10707      00
 10708              	.LASF212:
 10709 0063 50494F5F 		.ascii	"PIO_IO_DRIVE_HIGH\000"
 10709      494F5F44 
 10709      52495645 
 10709      5F484947 
 10709      4800
 10710              	.LASF33:
 10711 0075 50494F5F 		.ascii	"PIO_IDR\000"
 10711      49445200 
 10712              	.LASF255:
 10713 007d 70696F5F 		.ascii	"pio_get_schmitt_trigger\000"
 10713      6765745F 
 10713      7363686D 
 10713      6974745F 
 10713      74726967 
 10714              	.LASF30:
 10715 0095 50494F5F 		.ascii	"PIO_ODSR\000"
 10715      4F445352 
 10715      00
 10716              	.LASF219:
 10717 009e 70696F5F 		.ascii	"pio_set_io_drive\000"
 10717      7365745F 
 10717      696F5F64 
 10717      72697665 
 10717      00
 10718              	.LASF257:
 10719 00af 70696F5F 		.ascii	"pio_sync_output_write\000"
 10719      73796E63 
 10719      5F6F7574 
 10719      7075745F 
 10719      77726974 
 10720              	.LASF180:
 10721 00c5 5F736967 		.ascii	"_signal_buf\000"
 10721      6E616C5F 
 10721      62756600 
 10722              	.LASF283:
 10723 00d1 70696F5F 		.ascii	"pio_pull_up\000"
 10723      70756C6C 
 10723      5F757000 
ARM GAS  /tmp/ccqzbxJl.s 			page 217


 10724              	.LASF0:
 10725 00dd 756E7369 		.ascii	"unsigned int\000"
 10725      676E6564 
 10725      20696E74 
 10725      00
 10726              	.LASF210:
 10727 00ea 70696F5F 		.ascii	"pio_io_drive_mode\000"
 10727      696F5F64 
 10727      72697665 
 10727      5F6D6F64 
 10727      6500
 10728              	.LASF287:
 10729 00fc 70696F5F 		.ascii	"pio_get_pin_group\000"
 10729      6765745F 
 10729      70696E5F 
 10729      67726F75 
 10729      7000
 10730              	.LASF124:
 10731 010e 5F6C6266 		.ascii	"_lbfsize\000"
 10731      73697A65 
 10731      00
 10732              	.LASF122:
 10733 0117 5F666C61 		.ascii	"_flags\000"
 10733      677300
 10734              	.LASF6:
 10735 011e 5F5F696E 		.ascii	"__int32_t\000"
 10735      7433325F 
 10735      7400
 10736              	.LASF139:
 10737 0128 5F657272 		.ascii	"_errno\000"
 10737      6E6F00
 10738              	.LASF21:
 10739 012f 50494F5F 		.ascii	"PIO_ODR\000"
 10739      4F445200 
 10740              	.LASF32:
 10741 0137 50494F5F 		.ascii	"PIO_IER\000"
 10741      49455200 
 10742              	.LASF265:
 10743 013f 756C5F6D 		.ascii	"ul_multi_driver_enable\000"
 10743      756C7469 
 10743      5F647269 
 10743      7665725F 
 10743      656E6162 
 10744              	.LASF227:
 10745 0156 70696F5F 		.ascii	"pio_capture_set_mode\000"
 10745      63617074 
 10745      7572655F 
 10745      7365745F 
 10745      6D6F6465 
 10746              	.LASF136:
 10747 016b 5F6D6273 		.ascii	"_mbstate\000"
 10747      74617465 
 10747      00
 10748              	.LASF126:
 10749 0174 5F726561 		.ascii	"_read\000"
 10749      6400
 10750              	.LASF175:
ARM GAS  /tmp/ccqzbxJl.s 			page 218


 10751 017a 5F723438 		.ascii	"_r48\000"
 10751      00
 10752              	.LASF94:
 10753 017f 5F5F554C 		.ascii	"__ULong\000"
 10753      6F6E6700 
 10754              	.LASF216:
 10755 0187 6D6F6465 		.ascii	"mode\000"
 10755      00
 10756              	.LASF182:
 10757 018c 5F6D6272 		.ascii	"_mbrlen_state\000"
 10757      6C656E5F 
 10757      73746174 
 10757      6500
 10758              	.LASF235:
 10759 019a 70696F5F 		.ascii	"pio_configure_pin_group\000"
 10759      636F6E66 
 10759      69677572 
 10759      655F7069 
 10759      6E5F6772 
 10760              	.LASF214:
 10761 01b2 705F7069 		.ascii	"p_pio\000"
 10761      6F00
 10762              	.LASF218:
 10763 01b8 70696F5F 		.ascii	"pio_capture_get_interrupt_status\000"
 10763      63617074 
 10763      7572655F 
 10763      6765745F 
 10763      696E7465 
 10764              	.LASF141:
 10765 01d9 5F737464 		.ascii	"_stdout\000"
 10765      6F757400 
 10766              	.LASF86:
 10767 01e1 5F66706F 		.ascii	"_fpos_t\000"
 10767      735F7400 
 10768              	.LASF117:
 10769 01e9 5F666E73 		.ascii	"_fns\000"
 10769      00
 10770              	.LASF278:
 10771 01ee 70696F5F 		.ascii	"pio_configure_interrupt\000"
 10771      636F6E66 
 10771      69677572 
 10771      655F696E 
 10771      74657272 
 10772              	.LASF125:
 10773 0206 5F636F6F 		.ascii	"_cookie\000"
 10773      6B696500 
 10774              	.LASF194:
 10775 020e 675F696E 		.ascii	"g_interrupt_enabled\000"
 10775      74657272 
 10775      7570745F 
 10775      656E6162 
 10775      6C656400 
 10776              	.LASF83:
 10777 0222 50494F5F 		.ascii	"PIO_PCRHR\000"
 10777      50435248 
 10777      5200
 10778              	.LASF99:
ARM GAS  /tmp/ccqzbxJl.s 			page 219


 10779 022c 5F426967 		.ascii	"_Bigint\000"
 10779      696E7400 
 10780              	.LASF107:
 10781 0234 5F5F746D 		.ascii	"__tm_wday\000"
 10781      5F776461 
 10781      7900
 10782              	.LASF149:
 10783 023e 5F726573 		.ascii	"_result\000"
 10783      756C7400 
 10784              	.LASF217:
 10785 0246 70696F5F 		.ascii	"pio_capture_get_interrupt_mask\000"
 10785      63617074 
 10785      7572655F 
 10785      6765745F 
 10785      696E7465 
 10786              	.LASF12:
 10787 0265 75696E74 		.ascii	"uint32_t\000"
 10787      33325F74 
 10787      00
 10788              	.LASF103:
 10789 026e 5F5F746D 		.ascii	"__tm_hour\000"
 10789      5F686F75 
 10789      7200
 10790              	.LASF242:
 10791 0278 70696F5F 		.ascii	"pio_set_pin_low\000"
 10791      7365745F 
 10791      70696E5F 
 10791      6C6F7700 
 10792              	.LASF140:
 10793 0288 5F737464 		.ascii	"_stdin\000"
 10793      696E00
 10794              	.LASF276:
 10795 028f 70696F5F 		.ascii	"pio_get\000"
 10795      67657400 
 10796              	.LASF274:
 10797 0297 70696F5F 		.ascii	"pio_set_peripheral\000"
 10797      7365745F 
 10797      70657269 
 10797      70686572 
 10797      616C00
 10798              	.LASF90:
 10799 02aa 5F5F636F 		.ascii	"__count\000"
 10799      756E7400 
 10800              	.LASF60:
 10801 02b2 50494F5F 		.ascii	"PIO_AIMMR\000"
 10801      41494D4D 
 10801      5200
 10802              	.LASF220:
 10803 02bc 70696F5F 		.ascii	"pio_capture_disable_interrupt\000"
 10803      63617074 
 10803      7572655F 
 10803      64697361 
 10803      626C655F 
 10804              	.LASF198:
 10805 02da 666C6F61 		.ascii	"float\000"
 10805      7400
 10806              	.LASF63:
ARM GAS  /tmp/ccqzbxJl.s 			page 220


 10807 02e0 50494F5F 		.ascii	"PIO_LSR\000"
 10807      4C535200 
 10808              	.LASF102:
 10809 02e8 5F5F746D 		.ascii	"__tm_min\000"
 10809      5F6D696E 
 10809      00
 10810              	.LASF191:
 10811 02f1 5F696D70 		.ascii	"_impure_ptr\000"
 10811      7572655F 
 10811      70747200 
 10812              	.LASF188:
 10813 02fd 5F6E6578 		.ascii	"_nextf\000"
 10813      746600
 10814              	.LASF184:
 10815 0304 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 10815      72746F77 
 10815      63735F73 
 10815      74617465 
 10815      00
 10816              	.LASF74:
 10817 0315 50494F5F 		.ascii	"PIO_SCHMITT\000"
 10817      5343484D 
 10817      49545400 
 10818              	.LASF10:
 10819 0321 6C6F6E67 		.ascii	"long long unsigned int\000"
 10819      206C6F6E 
 10819      6720756E 
 10819      7369676E 
 10819      65642069 
 10820              	.LASF171:
 10821 0338 5F617363 		.ascii	"_asctime_buf\000"
 10821      74696D65 
 10821      5F627566 
 10821      00
 10822              	.LASF165:
 10823 0345 5F72616E 		.ascii	"_rand48\000"
 10823      64343800 
 10824              	.LASF121:
 10825 034d 5F5F7346 		.ascii	"__sFILE\000"
 10825      494C4500 
 10826              	.LASF98:
 10827 0355 5F776473 		.ascii	"_wds\000"
 10827      00
 10828              	.LASF245:
 10829 035a 70696F5F 		.ascii	"pio_get_writeprotect_status\000"
 10829      6765745F 
 10829      77726974 
 10829      6570726F 
 10829      74656374 
 10830              	.LASF231:
 10831 0376 70696F5F 		.ascii	"pio_get_pin_group_id\000"
 10831      6765745F 
 10831      70696E5F 
 10831      67726F75 
 10831      705F6964 
 10832              	.LASF161:
 10833 038b 5F5F4649 		.ascii	"__FILE\000"
ARM GAS  /tmp/ccqzbxJl.s 			page 221


 10833      4C4500
 10834              	.LASF187:
 10835 0392 5F685F65 		.ascii	"_h_errno\000"
 10835      72726E6F 
 10835      00
 10836              	.LASF28:
 10837 039b 50494F5F 		.ascii	"PIO_SODR\000"
 10837      534F4452 
 10837      00
 10838              	.LASF133:
 10839 03a4 5F6F6666 		.ascii	"_offset\000"
 10839      73657400 
 10840              	.LASF130:
 10841 03ac 5F756275 		.ascii	"_ubuf\000"
 10841      6600
 10842              	.LASF76:
 10843 03b2 50494F5F 		.ascii	"PIO_DRIVER\000"
 10843      44524956 
 10843      455200
 10844              	.LASF215:
 10845 03bd 756C5F6C 		.ascii	"ul_line\000"
 10845      696E6500 
 10846              	.LASF208:
 10847 03c5 70696F5F 		.ascii	"pio_type_t\000"
 10847      74797065 
 10847      5F7400
 10848              	.LASF144:
 10849 03d0 5F656D65 		.ascii	"_emergency\000"
 10849      7267656E 
 10849      637900
 10850              	.LASF46:
 10851 03db 50494F5F 		.ascii	"PIO_IFSCDR\000"
 10851      49465343 
 10851      445200
 10852              	.LASF197:
 10853 03e6 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 10853      6972715F 
 10853      70726576 
 10853      5F696E74 
 10853      65727275 
 10854              	.LASF70:
 10855 0403 50494F5F 		.ascii	"PIO_LOCKSR\000"
 10855      4C4F434B 
 10855      535200
 10856              	.LASF222:
 10857 040e 70696F5F 		.ascii	"pio_capture_enable_interrupt\000"
 10857      63617074 
 10857      7572655F 
 10857      656E6162 
 10857      6C655F69 
 10858              	.LASF82:
 10859 042b 50494F5F 		.ascii	"PIO_PCISR\000"
 10859      50434953 
 10859      5200
 10860              	.LASF101:
 10861 0435 5F5F746D 		.ascii	"__tm_sec\000"
 10861      5F736563 
ARM GAS  /tmp/ccqzbxJl.s 			page 222


 10861      00
 10862              	.LASF206:
 10863 043e 50494F5F 		.ascii	"PIO_OUTPUT_0\000"
 10863      4F555450 
 10863      55545F30 
 10863      00
 10864              	.LASF207:
 10865 044b 50494F5F 		.ascii	"PIO_OUTPUT_1\000"
 10865      4F555450 
 10865      55545F31 
 10865      00
 10866              	.LASF256:
 10867 0458 70696F5F 		.ascii	"pio_set_schmitt_trigger\000"
 10867      7365745F 
 10867      7363686D 
 10867      6974745F 
 10867      74726967 
 10868              	.LASF193:
 10869 0470 7375626F 		.ascii	"suboptarg\000"
 10869      70746172 
 10869      6700
 10870              	.LASF108:
 10871 047a 5F5F746D 		.ascii	"__tm_yday\000"
 10871      5F796461 
 10871      7900
 10872              	.LASF143:
 10873 0484 5F696E63 		.ascii	"_inc\000"
 10873      00
 10874              	.LASF195:
 10875 0489 5F426F6F 		.ascii	"_Bool\000"
 10875      6C00
 10876              	.LASF80:
 10877 048f 50494F5F 		.ascii	"PIO_PCIDR\000"
 10877      50434944 
 10877      5200
 10878              	.LASF241:
 10879 0499 70696F5F 		.ascii	"pio_toggle_pin\000"
 10879      746F6767 
 10879      6C655F70 
 10879      696E00
 10880              	.LASF243:
 10881 04a8 70696F5F 		.ascii	"pio_set_pin_high\000"
 10881      7365745F 
 10881      70696E5F 
 10881      68696768 
 10881      00
 10882              	.LASF95:
 10883 04b9 5F6E6578 		.ascii	"_next\000"
 10883      7400
 10884              	.LASF240:
 10885 04bf 70696F5F 		.ascii	"pio_configure_pin\000"
 10885      636F6E66 
 10885      69677572 
 10885      655F7069 
 10885      6E00
 10886              	.LASF44:
 10887 04d1 50494F5F 		.ascii	"PIO_ABCDSR\000"
ARM GAS  /tmp/ccqzbxJl.s 			page 223


 10887      41424344 
 10887      535200
 10888              	.LASF285:
 10889 04dc 2E2E2F61 		.ascii	"../asf/sam/drivers/pio/pio.c\000"
 10889      73662F73 
 10889      616D2F64 
 10889      72697665 
 10889      72732F70 
 10890              	.LASF246:
 10891 04f9 70696F5F 		.ascii	"pio_set_writeprotect\000"
 10891      7365745F 
 10891      77726974 
 10891      6570726F 
 10891      74656374 
 10892              	.LASF268:
 10893 050e 756C5F74 		.ascii	"ul_type\000"
 10893      79706500 
 10894              	.LASF42:
 10895 0516 50494F5F 		.ascii	"PIO_PUSR\000"
 10895      50555352 
 10895      00
 10896              	.LASF226:
 10897 051f 70696F5F 		.ascii	"pio_capture_enable\000"
 10897      63617074 
 10897      7572655F 
 10897      656E6162 
 10897      6C6500
 10898              	.LASF91:
 10899 0532 5F5F7661 		.ascii	"__value\000"
 10899      6C756500 
 10900              	.LASF151:
 10901 053a 5F703573 		.ascii	"_p5s\000"
 10901      00
 10902              	.LASF26:
 10903 053f 50494F5F 		.ascii	"PIO_IFSR\000"
 10903      49465352 
 10903      00
 10904              	.LASF40:
 10905 0548 50494F5F 		.ascii	"PIO_PUDR\000"
 10905      50554452 
 10905      00
 10906              	.LASF186:
 10907 0551 5F776373 		.ascii	"_wcsrtombs_state\000"
 10907      72746F6D 
 10907      62735F73 
 10907      74617465 
 10907      00
 10908              	.LASF176:
 10909 0562 5F6D626C 		.ascii	"_mblen_state\000"
 10909      656E5F73 
 10909      74617465 
 10909      00
 10910              	.LASF277:
 10911 056f 756C5F72 		.ascii	"ul_reg\000"
 10911      656700
 10912              	.LASF79:
 10913 0576 50494F5F 		.ascii	"PIO_PCIER\000"
ARM GAS  /tmp/ccqzbxJl.s 			page 224


 10913      50434945 
 10913      5200
 10914              	.LASF160:
 10915 0580 63686172 		.ascii	"char\000"
 10915      00
 10916              	.LASF22:
 10917 0585 50494F5F 		.ascii	"PIO_OSR\000"
 10917      4F535200 
 10918              	.LASF104:
 10919 058d 5F5F746D 		.ascii	"__tm_mday\000"
 10919      5F6D6461 
 10919      7900
 10920              	.LASF157:
 10921 0597 5F736967 		.ascii	"_sig_func\000"
 10921      5F66756E 
 10921      6300
 10922              	.LASF183:
 10923 05a1 5F6D6272 		.ascii	"_mbrtowc_state\000"
 10923      746F7763 
 10923      5F737461 
 10923      746500
 10924              	.LASF267:
 10925 05b0 70696F5F 		.ascii	"pio_configure\000"
 10925      636F6E66 
 10925      69677572 
 10925      6500
 10926              	.LASF201:
 10927 05be 50494F5F 		.ascii	"PIO_PERIPH_A\000"
 10927      50455249 
 10927      50485F41 
 10927      00
 10928              	.LASF202:
 10929 05cb 50494F5F 		.ascii	"PIO_PERIPH_B\000"
 10929      50455249 
 10929      50485F42 
 10929      00
 10930              	.LASF203:
 10931 05d8 50494F5F 		.ascii	"PIO_PERIPH_C\000"
 10931      50455249 
 10931      50485F43 
 10931      00
 10932              	.LASF204:
 10933 05e5 50494F5F 		.ascii	"PIO_PERIPH_D\000"
 10933      50455249 
 10933      50485F44 
 10933      00
 10934              	.LASF72:
 10935 05f2 50494F5F 		.ascii	"PIO_WPSR\000"
 10935      57505352 
 10935      00
 10936              	.LASF150:
 10937 05fb 5F726573 		.ascii	"_result_k\000"
 10937      756C745F 
 10937      6B00
 10938              	.LASF62:
 10939 0605 50494F5F 		.ascii	"PIO_ESR\000"
 10939      45535200 
ARM GAS  /tmp/ccqzbxJl.s 			page 225


 10940              	.LASF88:
 10941 060d 5F5F7763 		.ascii	"__wch\000"
 10941      6800
 10942              	.LASF41:
 10943 0613 50494F5F 		.ascii	"PIO_PUER\000"
 10943      50554552 
 10943      00
 10944              	.LASF129:
 10945 061c 5F636C6F 		.ascii	"_close\000"
 10945      736500
 10946              	.LASF64:
 10947 0623 50494F5F 		.ascii	"PIO_ELSR\000"
 10947      454C5352 
 10947      00
 10948              	.LASF147:
 10949 062c 5F5F7364 		.ascii	"__sdidinit\000"
 10949      6964696E 
 10949      697400
 10950              	.LASF24:
 10951 0637 50494F5F 		.ascii	"PIO_IFER\000"
 10951      49464552 
 10951      00
 10952              	.LASF262:
 10953 0640 756C5F70 		.ascii	"ul_pull_down_enable\000"
 10953      756C6C5F 
 10953      646F776E 
 10953      5F656E61 
 10953      626C6500 
 10954              	.LASF251:
 10955 0654 70696F5F 		.ascii	"pio_get_interrupt_status\000"
 10955      6765745F 
 10955      696E7465 
 10955      72727570 
 10955      745F7374 
 10956              	.LASF173:
 10957 066d 5F67616D 		.ascii	"_gamma_signgam\000"
 10957      6D615F73 
 10957      69676E67 
 10957      616D00
 10958              	.LASF20:
 10959 067c 50494F5F 		.ascii	"PIO_OER\000"
 10959      4F455200 
 10960              	.LASF9:
 10961 0684 6C6F6E67 		.ascii	"long long int\000"
 10961      206C6F6E 
 10961      6720696E 
 10961      7400
 10962              	.LASF119:
 10963 0692 5F626173 		.ascii	"_base\000"
 10963      6500
 10964              	.LASF152:
 10965 0698 5F667265 		.ascii	"_freelist\000"
 10965      656C6973 
 10965      7400
 10966              	.LASF167:
 10967 06a2 5F6D756C 		.ascii	"_mult\000"
 10967      7400
ARM GAS  /tmp/ccqzbxJl.s 			page 226


 10968              	.LASF168:
 10969 06a8 5F616464 		.ascii	"_add\000"
 10969      00
 10970              	.LASF224:
 10971 06ad 70756C5F 		.ascii	"pul_data\000"
 10971      64617461 
 10971      00
 10972              	.LASF29:
 10973 06b6 50494F5F 		.ascii	"PIO_CODR\000"
 10973      434F4452 
 10973      00
 10974              	.LASF185:
 10975 06bf 5F776372 		.ascii	"_wcrtomb_state\000"
 10975      746F6D62 
 10975      5F737461 
 10975      746500
 10976              	.LASF123:
 10977 06ce 5F66696C 		.ascii	"_file\000"
 10977      6500
 10978              	.LASF148:
 10979 06d4 5F5F636C 		.ascii	"__cleanup\000"
 10979      65616E75 
 10979      7000
 10980              	.LASF68:
 10981 06de 50494F5F 		.ascii	"PIO_FRLHSR\000"
 10981      46524C48 
 10981      535200
 10982              	.LASF92:
 10983 06e9 5F6D6273 		.ascii	"_mbstate_t\000"
 10983      74617465 
 10983      5F7400
 10984              	.LASF223:
 10985 06f4 70696F5F 		.ascii	"pio_capture_read\000"
 10985      63617074 
 10985      7572655F 
 10985      72656164 
 10985      00
 10986              	.LASF19:
 10987 0705 52657365 		.ascii	"Reserved1\000"
 10987      72766564 
 10987      3100
 10988              	.LASF23:
 10989 070f 52657365 		.ascii	"Reserved2\000"
 10989      72766564 
 10989      3200
 10990              	.LASF27:
 10991 0719 52657365 		.ascii	"Reserved3\000"
 10991      72766564 
 10991      3300
 10992              	.LASF39:
 10993 0723 52657365 		.ascii	"Reserved4\000"
 10993      72766564 
 10993      3400
 10994              	.LASF43:
 10995 072d 52657365 		.ascii	"Reserved5\000"
 10995      72766564 
 10995      3500
ARM GAS  /tmp/ccqzbxJl.s 			page 227


 10996              	.LASF45:
 10997 0737 52657365 		.ascii	"Reserved6\000"
 10997      72766564 
 10997      3600
 10998              	.LASF109:
 10999 0741 5F5F746D 		.ascii	"__tm_isdst\000"
 10999      5F697364 
 10999      737400
 11000              	.LASF57:
 11001 074c 52657365 		.ascii	"Reserved8\000"
 11001      72766564 
 11001      3800
 11002              	.LASF61:
 11003 0756 52657365 		.ascii	"Reserved9\000"
 11003      72766564 
 11003      3900
 11004              	.LASF228:
 11005 0760 756C5F6D 		.ascii	"ul_mode\000"
 11005      6F646500 
 11006              	.LASF116:
 11007 0768 5F696E64 		.ascii	"_ind\000"
 11007      00
 11008              	.LASF56:
 11009 076d 50494F5F 		.ascii	"PIO_OWSR\000"
 11009      4F575352 
 11009      00
 11010              	.LASF261:
 11011 0776 70696F5F 		.ascii	"pio_pull_down\000"
 11011      70756C6C 
 11011      5F646F77 
 11011      6E00
 11012              	.LASF97:
 11013 0784 5F736967 		.ascii	"_sign\000"
 11013      6E00
 11014              	.LASF55:
 11015 078a 50494F5F 		.ascii	"PIO_OWDR\000"
 11015      4F574452 
 11015      00
 11016              	.LASF247:
 11017 0793 756C5F65 		.ascii	"ul_enable\000"
 11017      6E61626C 
 11017      6500
 11018              	.LASF105:
 11019 079d 5F5F746D 		.ascii	"__tm_mon\000"
 11019      5F6D6F6E 
 11019      00
 11020              	.LASF59:
 11021 07a6 50494F5F 		.ascii	"PIO_AIMDR\000"
 11021      41494D44 
 11021      5200
 11022              	.LASF260:
 11023 07b0 70696F5F 		.ascii	"pio_enable_output_write\000"
 11023      656E6162 
 11023      6C655F6F 
 11023      75747075 
 11023      745F7772 
 11024              	.LASF15:
ARM GAS  /tmp/ccqzbxJl.s 			page 228


 11025 07c8 53797374 		.ascii	"SystemCoreClock\000"
 11025      656D436F 
 11025      7265436C 
 11025      6F636B00 
 11026              	.LASF127:
 11027 07d8 5F777269 		.ascii	"_write\000"
 11027      746500
 11028              	.LASF34:
 11029 07df 50494F5F 		.ascii	"PIO_IMR\000"
 11029      494D5200 
 11030              	.LASF78:
 11031 07e7 50494F5F 		.ascii	"PIO_PCMR\000"
 11031      50434D52 
 11031      00
 11032              	.LASF7:
 11033 07f0 5F5F7569 		.ascii	"__uint32_t\000"
 11033      6E743332 
 11033      5F7400
 11034              	.LASF269:
 11035 07fb 70696F5F 		.ascii	"pio_set_output\000"
 11035      7365745F 
 11035      6F757470 
 11035      757400
 11036              	.LASF271:
 11037 080a 756C5F6D 		.ascii	"ul_multidrive_enable\000"
 11037      756C7469 
 11037      64726976 
 11037      655F656E 
 11037      61626C65 
 11038              	.LASF200:
 11039 081f 50494F5F 		.ascii	"PIO_NOT_A_PIN\000"
 11039      4E4F545F 
 11039      415F5049 
 11039      4E00
 11040              	.LASF237:
 11041 082d 70696F5F 		.ascii	"pio_toggle_pin_group\000"
 11041      746F6767 
 11041      6C655F70 
 11041      696E5F67 
 11041      726F7570 
 11042              	.LASF115:
 11043 0842 5F617465 		.ascii	"_atexit\000"
 11043      78697400 
 11044              	.LASF3:
 11045 084a 73686F72 		.ascii	"short int\000"
 11045      7420696E 
 11045      7400
 11046              	.LASF54:
 11047 0854 50494F5F 		.ascii	"PIO_OWER\000"
 11047      4F574552 
 11047      00
 11048              	.LASF5:
 11049 085d 6C6F6E67 		.ascii	"long int\000"
 11049      20696E74 
 11049      00
 11050              	.LASF58:
 11051 0866 50494F5F 		.ascii	"PIO_AIMER\000"
ARM GAS  /tmp/ccqzbxJl.s 			page 229


 11051      41494D45 
 11051      5200
 11052              	.LASF14:
 11053 0870 49544D5F 		.ascii	"ITM_RxBuffer\000"
 11053      52784275 
 11053      66666572 
 11053      00
 11054              	.LASF250:
 11055 087d 70696F5F 		.ascii	"pio_get_interrupt_mask\000"
 11055      6765745F 
 11055      696E7465 
 11055      72727570 
 11055      745F6D61 
 11056              	.LASF229:
 11057 0894 70696F5F 		.ascii	"pio_get_pin_group_mask\000"
 11057      6765745F 
 11057      70696E5F 
 11057      67726F75 
 11057      705F6D61 
 11058              	.LASF159:
 11059 08ab 5F5F7366 		.ascii	"__sf\000"
 11059      00
 11060              	.LASF48:
 11061 08b0 50494F5F 		.ascii	"PIO_IFSCSR\000"
 11061      49465343 
 11061      535200
 11062              	.LASF249:
 11063 08bb 756C5F61 		.ascii	"ul_attribute\000"
 11063      74747269 
 11063      62757465 
 11063      00
 11064              	.LASF272:
 11065 08c8 756C5F70 		.ascii	"ul_pull_up_enable\000"
 11065      756C6C5F 
 11065      75705F65 
 11065      6E61626C 
 11065      6500
 11066              	.LASF67:
 11067 08da 50494F5F 		.ascii	"PIO_REHLSR\000"
 11067      5245484C 
 11067      535200
 11068              	.LASF253:
 11069 08e5 70696F5F 		.ascii	"pio_enable_interrupt\000"
 11069      656E6162 
 11069      6C655F69 
 11069      6E746572 
 11069      72757074 
 11070              	.LASF254:
 11071 08fa 756C5F61 		.ascii	"ul_attr\000"
 11071      74747200 
 11072              	.LASF146:
 11073 0902 5F637572 		.ascii	"_current_locale\000"
 11073      72656E74 
 11073      5F6C6F63 
 11073      616C6500 
 11074              	.LASF275:
 11075 0912 756C5F73 		.ascii	"ul_sr\000"
ARM GAS  /tmp/ccqzbxJl.s 			page 230


 11075      7200
 11076              	.LASF238:
 11077 0918 70696F5F 		.ascii	"pio_set_pin_group_low\000"
 11077      7365745F 
 11077      70696E5F 
 11077      67726F75 
 11077      705F6C6F 
 11078              	.LASF259:
 11079 092e 70696F5F 		.ascii	"pio_disable_output_write\000"
 11079      64697361 
 11079      626C655F 
 11079      6F757470 
 11079      75745F77 
 11080              	.LASF266:
 11081 0947 70696F5F 		.ascii	"pio_get_output_data_status\000"
 11081      6765745F 
 11081      6F757470 
 11081      75745F64 
 11081      6174615F 
 11082              	.LASF134:
 11083 0962 5F646174 		.ascii	"_data\000"
 11083      6100
 11084              	.LASF89:
 11085 0968 5F5F7763 		.ascii	"__wchb\000"
 11085      686200
 11086              	.LASF192:
 11087 096f 5F676C6F 		.ascii	"_global_impure_ptr\000"
 11087      62616C5F 
 11087      696D7075 
 11087      72655F70 
 11087      747200
 11088              	.LASF106:
 11089 0982 5F5F746D 		.ascii	"__tm_year\000"
 11089      5F796561 
 11089      7200
 11090              	.LASF281:
 11091 098c 70696F5F 		.ascii	"pio_set_debounce_filter\000"
 11091      7365745F 
 11091      6465626F 
 11091      756E6365 
 11091      5F66696C 
 11092              	.LASF25:
 11093 09a4 50494F5F 		.ascii	"PIO_IFDR\000"
 11093      49464452 
 11093      00
 11094              	.LASF172:
 11095 09ad 5F6C6F63 		.ascii	"_localtime_buf\000"
 11095      616C7469 
 11095      6D655F62 
 11095      756600
 11096              	.LASF190:
 11097 09bc 5F756E75 		.ascii	"_unused\000"
 11097      73656400 
 11098              	.LASF282:
 11099 09c4 756C5F63 		.ascii	"ul_cut_off\000"
 11099      75745F6F 
 11099      666600
ARM GAS  /tmp/ccqzbxJl.s 			page 231


 11100              	.LASF155:
 11101 09cf 5F6E6577 		.ascii	"_new\000"
 11101      00
 11102              	.LASF153:
 11103 09d4 5F637674 		.ascii	"_cvtlen\000"
 11103      6C656E00 
 11104              	.LASF96:
 11105 09dc 5F6D6178 		.ascii	"_maxwds\000"
 11105      77647300 
 11106              	.LASF179:
 11107 09e4 5F6C3634 		.ascii	"_l64a_buf\000"
 11107      615F6275 
 11107      6600
 11108              	.LASF273:
 11109 09ee 70696F5F 		.ascii	"pio_set_input\000"
 11109      7365745F 
 11109      696E7075 
 11109      7400
 11110              	.LASF145:
 11111 09fc 5F637572 		.ascii	"_current_category\000"
 11111      72656E74 
 11111      5F636174 
 11111      65676F72 
 11111      7900
 11112              	.LASF236:
 11113 0a0e 756C5F66 		.ascii	"ul_flags\000"
 11113      6C616773 
 11113      00
 11114              	.LASF132:
 11115 0a17 5F626C6B 		.ascii	"_blksize\000"
 11115      73697A65 
 11115      00
 11116              	.LASF66:
 11117 0a20 50494F5F 		.ascii	"PIO_FELLSR\000"
 11117      46454C4C 
 11117      535200
 11118              	.LASF100:
 11119 0a2b 5F5F746D 		.ascii	"__tm\000"
 11119      00
 11120              	.LASF225:
 11121 0a30 70696F5F 		.ascii	"pio_capture_disable\000"
 11121      63617074 
 11121      7572655F 
 11121      64697361 
 11121      626C6500 
 11122              	.LASF135:
 11123 0a44 5F6C6F63 		.ascii	"_lock\000"
 11123      6B00
 11124              	.LASF13:
 11125 0a4a 73697A65 		.ascii	"sizetype\000"
 11125      74797065 
 11125      00
 11126              	.LASF47:
 11127 0a53 50494F5F 		.ascii	"PIO_IFSCER\000"
 11127      49465343 
 11127      455200
 11128              	.LASF8:
ARM GAS  /tmp/ccqzbxJl.s 			page 232


 11129 0a5e 6C6F6E67 		.ascii	"long unsigned int\000"
 11129      20756E73 
 11129      69676E65 
 11129      6420696E 
 11129      7400
 11130              	.LASF196:
 11131 0a70 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 11131      6972715F 
 11131      63726974 
 11131      6963616C 
 11131      5F736563 
 11132              	.LASF163:
 11133 0a91 5F6E696F 		.ascii	"_niobs\000"
 11133      627300
 11134              	.LASF87:
 11135 0a98 77696E74 		.ascii	"wint_t\000"
 11135      5F7400
 11136              	.LASF11:
 11137 0a9f 696E7433 		.ascii	"int32_t\000"
 11137      325F7400 
 11138              	.LASF18:
 11139 0aa7 50494F5F 		.ascii	"PIO_PSR\000"
 11139      50535200 
 11140              	.LASF252:
 11141 0aaf 70696F5F 		.ascii	"pio_disable_interrupt\000"
 11141      64697361 
 11141      626C655F 
 11141      696E7465 
 11141      72727570 
 11142              	.LASF112:
 11143 0ac5 5F64736F 		.ascii	"_dso_handle\000"
 11143      5F68616E 
 11143      646C6500 
 11144              	.LASF31:
 11145 0ad1 50494F5F 		.ascii	"PIO_PDSR\000"
 11145      50445352 
 11145      00
 11146              	.LASF17:
 11147 0ada 50494F5F 		.ascii	"PIO_PDR\000"
 11147      50445200 
 11148              	.LASF211:
 11149 0ae2 50494F5F 		.ascii	"PIO_IO_DRIVE_LOW\000"
 11149      494F5F44 
 11149      52495645 
 11149      5F4C4F57 
 11149      00
 11150              	.LASF154:
 11151 0af3 5F637674 		.ascii	"_cvtbuf\000"
 11151      62756600 
 11152              	.LASF2:
 11153 0afb 756E7369 		.ascii	"unsigned char\000"
 11153      676E6564 
 11153      20636861 
 11153      7200
 11154              	.LASF65:
 11155 0b09 52657365 		.ascii	"Reserved10\000"
 11155      72766564 
ARM GAS  /tmp/ccqzbxJl.s 			page 233


 11155      313000
 11156              	.LASF69:
 11157 0b14 52657365 		.ascii	"Reserved11\000"
 11157      72766564 
 11157      313100
 11158              	.LASF73:
 11159 0b1f 52657365 		.ascii	"Reserved12\000"
 11159      72766564 
 11159      313200
 11160              	.LASF75:
 11161 0b2a 52657365 		.ascii	"Reserved13\000"
 11161      72766564 
 11161      313300
 11162              	.LASF77:
 11163 0b35 52657365 		.ascii	"Reserved14\000"
 11163      72766564 
 11163      313400
 11164              	.LASF233:
 11165 0b40 70696F5F 		.ascii	"pio_disable_pin_interrupt\000"
 11165      64697361 
 11165      626C655F 
 11165      70696E5F 
 11165      696E7465 
 11166              	.LASF52:
 11167 0b5a 50494F5F 		.ascii	"PIO_PPDSR\000"
 11167      50504453 
 11167      5200
 11168              	.LASF84:
 11169 0b64 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 11169      4B5F5245 
 11169      43555253 
 11169      4956455F 
 11169      5400
 11170              	.LASF244:
 11171 0b76 70696F5F 		.ascii	"pio_get_pin_value\000"
 11171      6765745F 
 11171      70696E5F 
 11171      76616C75 
 11171      6500
 11172              	.LASF50:
 11173 0b88 50494F5F 		.ascii	"PIO_PPDDR\000"
 11173      50504444 
 11173      5200
 11174              	.LASF284:
 11175 0b92 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 11175      43393920 
 11175      362E332E 
 11175      31203230 
 11175      31373036 
 11176 0bc5 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 11176      76352D64 
 11176      3136202D 
 11176      6D666C6F 
 11176      61742D61 
 11177 0bf8 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 11177      6E2D7365 
 11177      6374696F 
ARM GAS  /tmp/ccqzbxJl.s 			page 234


 11177      6E73202D 
 11177      66646174 
 11178 0c2b 6F6E7374 		.ascii	"onstant\000"
 11178      616E7400 
 11179              	.LASF239:
 11180 0c33 70696F5F 		.ascii	"pio_set_pin_group_high\000"
 11180      7365745F 
 11180      70696E5F 
 11180      67726F75 
 11180      705F6869 
 11181              	.LASF118:
 11182 0c4a 5F5F7362 		.ascii	"__sbuf\000"
 11182      756600
 11183              	.LASF232:
 11184 0c51 756C5F69 		.ascii	"ul_id\000"
 11184      6400
 11185              	.LASF234:
 11186 0c57 70696F5F 		.ascii	"pio_enable_pin_interrupt\000"
 11186      656E6162 
 11186      6C655F70 
 11186      696E5F69 
 11186      6E746572 
 11187              	.LASF162:
 11188 0c70 5F676C75 		.ascii	"_glue\000"
 11188      6500
 11189              	.LASF230:
 11190 0c76 756C5F70 		.ascii	"ul_pin\000"
 11190      696E00
 11191              	.LASF286:
 11192 0c7d 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 11192      652F746F 
 11192      72626A6F 
 11192      726E2F65 
 11192      636C6970 
 11193              	.LASF16:
 11194 0cac 50494F5F 		.ascii	"PIO_PER\000"
 11194      50455200 
 11195              	.LASF158:
 11196 0cb4 5F5F7367 		.ascii	"__sglue\000"
 11196      6C756500 
 11197              	.LASF181:
 11198 0cbc 5F676574 		.ascii	"_getdate_err\000"
 11198      64617465 
 11198      5F657272 
 11198      00
 11199              	.LASF170:
 11200 0cc9 5F737472 		.ascii	"_strtok_last\000"
 11200      746F6B5F 
 11200      6C617374 
 11200      00
 11201              	.LASF177:
 11202 0cd6 5F6D6274 		.ascii	"_mbtowc_state\000"
 11202      6F77635F 
 11202      73746174 
 11202      6500
 11203              	.LASF263:
 11204 0ce4 70696F5F 		.ascii	"pio_get_multi_driver_status\000"
ARM GAS  /tmp/ccqzbxJl.s 			page 235


 11204      6765745F 
 11204      6D756C74 
 11204      695F6472 
 11204      69766572 
 11205              	.LASF38:
 11206 0d00 50494F5F 		.ascii	"PIO_MDSR\000"
 11206      4D445352 
 11206      00
 11207              	.LASF248:
 11208 0d09 70696F5F 		.ascii	"pio_set_additional_interrupt_mode\000"
 11208      7365745F 
 11208      61646469 
 11208      74696F6E 
 11208      616C5F69 
 11209              	.LASF111:
 11210 0d2b 5F666E61 		.ascii	"_fnargs\000"
 11210      72677300 
 11211              	.LASF1:
 11212 0d33 7369676E 		.ascii	"signed char\000"
 11212      65642063 
 11212      68617200 
 11213              	.LASF258:
 11214 0d3f 70696F5F 		.ascii	"pio_get_output_write_status\000"
 11214      6765745F 
 11214      6F757470 
 11214      75745F77 
 11214      72697465 
 11215              	.LASF138:
 11216 0d5b 5F726565 		.ascii	"_reent\000"
 11216      6E7400
 11217              	.LASF4:
 11218 0d62 73686F72 		.ascii	"short unsigned int\000"
 11218      7420756E 
 11218      7369676E 
 11218      65642069 
 11218      6E7400
 11219              	.LASF37:
 11220 0d75 50494F5F 		.ascii	"PIO_MDDR\000"
 11220      4D444452 
 11220      00
 11221              	.LASF51:
 11222 0d7e 50494F5F 		.ascii	"PIO_PPDER\000"
 11222      50504445 
 11222      5200
 11223              	.LASF81:
 11224 0d88 50494F5F 		.ascii	"PIO_PCIMR\000"
 11224      5043494D 
 11224      5200
 11225              	.LASF113:
 11226 0d92 5F666E74 		.ascii	"_fntypes\000"
 11226      79706573 
 11226      00
 11227              	.LASF120:
 11228 0d9b 5F73697A 		.ascii	"_size\000"
 11228      6500
 11229              	.LASF199:
 11230 0da1 646F7562 		.ascii	"double\000"
ARM GAS  /tmp/ccqzbxJl.s 			page 236


 11230      6C6500
 11231              	.LASF178:
 11232 0da8 5F776374 		.ascii	"_wctomb_state\000"
 11232      6F6D625F 
 11232      73746174 
 11232      6500
 11233              	.LASF85:
 11234 0db6 5F6F6666 		.ascii	"_off_t\000"
 11234      5F7400
 11235              	.LASF131:
 11236 0dbd 5F6E6275 		.ascii	"_nbuf\000"
 11236      6600
 11237              	.LASF169:
 11238 0dc3 5F756E75 		.ascii	"_unused_rand\000"
 11238      7365645F 
 11238      72616E64 
 11238      00
 11239              	.LASF213:
 11240 0dd0 70696F5F 		.ascii	"pio_capture_enable_flag\000"
 11240      63617074 
 11240      7572655F 
 11240      656E6162 
 11240      6C655F66 
 11241              	.LASF137:
 11242 0de8 5F666C61 		.ascii	"_flags2\000"
 11242      67733200 
 11243              	.LASF280:
 11244 0df0 70696F5F 		.ascii	"pio_set\000"
 11244      73657400 
 11245              	.LASF114:
 11246 0df8 5F69735F 		.ascii	"_is_cxa\000"
 11246      63786100 
 11247              	.LASF166:
 11248 0e00 5F736565 		.ascii	"_seed\000"
 11248      6400
 11249              	.LASF270:
 11250 0e06 756C5F64 		.ascii	"ul_default_level\000"
 11250      65666175 
 11250      6C745F6C 
 11250      6576656C 
 11250      00
 11251              	.LASF174:
 11252 0e17 5F72616E 		.ascii	"_rand_next\000"
 11252      645F6E65 
 11252      787400
 11253              	.LASF156:
 11254 0e22 5F617465 		.ascii	"_atexit0\000"
 11254      78697430 
 11254      00
 11255              	.LASF128:
 11256 0e2b 5F736565 		.ascii	"_seek\000"
 11256      6B00
 11257              	.LASF209:
 11258 0e31 5F70696F 		.ascii	"_pio_type\000"
 11258      5F747970 
 11258      6500
 11259              	.LASF49:
ARM GAS  /tmp/ccqzbxJl.s 			page 237


 11260 0e3b 50494F5F 		.ascii	"PIO_SCDR\000"
 11260      53434452 
 11260      00
 11261              	.LASF36:
 11262 0e44 50494F5F 		.ascii	"PIO_MDER\000"
 11262      4D444552 
 11262      00
 11263              	.LASF142:
 11264 0e4d 5F737464 		.ascii	"_stderr\000"
 11264      65727200 
 11265              	.LASF189:
 11266 0e55 5F6E6D61 		.ascii	"_nmalloc\000"
 11266      6C6C6F63 
 11266      00
 11267              	.LASF164:
 11268 0e5e 5F696F62 		.ascii	"_iobs\000"
 11268      7300
 11269              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
