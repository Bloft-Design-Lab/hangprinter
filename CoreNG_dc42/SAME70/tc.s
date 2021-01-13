ARM GAS  /tmp/ccfKQ0CH.s 			page 1


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
  12              		.file	"tc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.tc_init,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	tc_init
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	tc_init, %function
  25              	tc_init:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/tc/tc.c"
   1:../asf/sam/drivers/tc/tc.c **** /**
   2:../asf/sam/drivers/tc/tc.c ****  * \file
   3:../asf/sam/drivers/tc/tc.c ****  *
   4:../asf/sam/drivers/tc/tc.c ****  * \brief SAM Timer Counter (TC) driver.
   5:../asf/sam/drivers/tc/tc.c ****  *
   6:../asf/sam/drivers/tc/tc.c ****  * Copyright (c) 2011-2015 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/tc/tc.c ****  *
   8:../asf/sam/drivers/tc/tc.c ****  * \asf_license_start
   9:../asf/sam/drivers/tc/tc.c ****  *
  10:../asf/sam/drivers/tc/tc.c ****  * \page License
  11:../asf/sam/drivers/tc/tc.c ****  *
  12:../asf/sam/drivers/tc/tc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/tc/tc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/tc/tc.c ****  *
  15:../asf/sam/drivers/tc/tc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/tc/tc.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/tc/tc.c ****  *
  18:../asf/sam/drivers/tc/tc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/tc/tc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/tc/tc.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/tc/tc.c ****  *
  22:../asf/sam/drivers/tc/tc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/tc/tc.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/tc/tc.c ****  *
  25:../asf/sam/drivers/tc/tc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/tc/tc.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/tc/tc.c ****  *
  28:../asf/sam/drivers/tc/tc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/tc/tc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/tc/tc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccfKQ0CH.s 			page 2


  31:../asf/sam/drivers/tc/tc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/tc/tc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/tc/tc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/tc/tc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/tc/tc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/tc/tc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/tc/tc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/tc/tc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/tc/tc.c ****  *
  40:../asf/sam/drivers/tc/tc.c ****  * \asf_license_stop
  41:../asf/sam/drivers/tc/tc.c ****  *
  42:../asf/sam/drivers/tc/tc.c ****  */
  43:../asf/sam/drivers/tc/tc.c **** /*
  44:../asf/sam/drivers/tc/tc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/tc/tc.c ****  */
  46:../asf/sam/drivers/tc/tc.c **** 
  47:../asf/sam/drivers/tc/tc.c **** #include <assert.h>
  48:../asf/sam/drivers/tc/tc.c **** #include "tc.h"
  49:../asf/sam/drivers/tc/tc.c **** 
  50:../asf/sam/drivers/tc/tc.c **** /// @cond
  51:../asf/sam/drivers/tc/tc.c **** /**INDENT-OFF**/
  52:../asf/sam/drivers/tc/tc.c **** #ifdef __cplusplus
  53:../asf/sam/drivers/tc/tc.c **** extern "C" {
  54:../asf/sam/drivers/tc/tc.c **** #endif
  55:../asf/sam/drivers/tc/tc.c **** /**INDENT-ON**/
  56:../asf/sam/drivers/tc/tc.c **** /// @endcond
  57:../asf/sam/drivers/tc/tc.c **** 
  58:../asf/sam/drivers/tc/tc.c **** #ifndef TC_WPMR_WPKEY_PASSWD
  59:../asf/sam/drivers/tc/tc.c **** #define TC_WPMR_WPKEY_PASSWD TC_WPMR_WPKEY((uint32_t)0x54494D)
  60:../asf/sam/drivers/tc/tc.c **** #endif
  61:../asf/sam/drivers/tc/tc.c **** 
  62:../asf/sam/drivers/tc/tc.c **** /**
  63:../asf/sam/drivers/tc/tc.c ****  * \brief Configure TC for timer, waveform generation, or capture.
  64:../asf/sam/drivers/tc/tc.c ****  *
  65:../asf/sam/drivers/tc/tc.c ****  * \param[in,out] p_tc   Module hardware register base address pointer
  66:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to configure
  67:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_mode    Control mode register bitmask value to set
  68:../asf/sam/drivers/tc/tc.c ****  *
  69:../asf/sam/drivers/tc/tc.c ****  * \note For more information regarding <i>ul_mode</i> configuration refer to
  70:../asf/sam/drivers/tc/tc.c ****  * the section entitled "Channel Mode Register: Capture Mode" and/or section
  71:../asf/sam/drivers/tc/tc.c ****  * "Waveform Operating Mode" in the device-specific datasheet.
  72:../asf/sam/drivers/tc/tc.c ****  *
  73:../asf/sam/drivers/tc/tc.c ****  * \note If the TC is configured for waveform generation then the external event
  74:../asf/sam/drivers/tc/tc.c ****  * selection (EEVT) should only be set to TC_CMR_EEVT_TIOB, or the
  75:../asf/sam/drivers/tc/tc.c ****  * equivalent value of 0, if it really is the intention to use TIOB as an
  76:../asf/sam/drivers/tc/tc.c ****  * external event trigger. This is because this setting forces TIOB to be
  77:../asf/sam/drivers/tc/tc.c ****  * an input, even if the external event trigger has not been enabled with
  78:../asf/sam/drivers/tc/tc.c ****  * TC_CMR_ENETRG, and thus prevents normal operation of TIOB.
  79:../asf/sam/drivers/tc/tc.c ****  */
  80:../asf/sam/drivers/tc/tc.c **** void tc_init(
  81:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
  82:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel,
  83:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_mode)
  84:../asf/sam/drivers/tc/tc.c **** {
  28              		.loc 1 84 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccfKQ0CH.s 			page 3


  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  85:../asf/sam/drivers/tc/tc.c **** 	TcChannel *tc_channel;
  86:../asf/sam/drivers/tc/tc.c **** 
  87:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
  88:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
  89:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
  90:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
  91:../asf/sam/drivers/tc/tc.c **** 	tc_channel = p_tc->TC_CHANNEL + ul_channel;
  34              		.loc 1 91 0
  35 0000 8901     		lsls	r1, r1, #6
  36              	.LVL1:
  84:../asf/sam/drivers/tc/tc.c **** 	TcChannel *tc_channel;
  37              		.loc 1 84 0
  38 0002 30B4     		push	{r4, r5}
  39              		.cfi_def_cfa_offset 8
  40              		.cfi_offset 4, -8
  41              		.cfi_offset 5, -4
  42              		.loc 1 91 0
  43 0004 4318     		adds	r3, r0, r1
  44              	.LVL2:
  92:../asf/sam/drivers/tc/tc.c **** 
  93:../asf/sam/drivers/tc/tc.c **** 	/*  Disable TC clock. */
  94:../asf/sam/drivers/tc/tc.c **** 	tc_channel->TC_CCR = TC_CCR_CLKDIS;
  45              		.loc 1 94 0
  46 0006 0225     		movs	r5, #2
  95:../asf/sam/drivers/tc/tc.c **** 
  96:../asf/sam/drivers/tc/tc.c **** 	/*  Disable interrupts. */
  97:../asf/sam/drivers/tc/tc.c **** 	tc_channel->TC_IDR = 0xFFFFFFFF;
  47              		.loc 1 97 0
  48 0008 4FF0FF34 		mov	r4, #-1
  94:../asf/sam/drivers/tc/tc.c **** 
  49              		.loc 1 94 0
  50 000c 4550     		str	r5, [r0, r1]
  51              		.loc 1 97 0
  52 000e 9C62     		str	r4, [r3, #40]
  98:../asf/sam/drivers/tc/tc.c **** 
  99:../asf/sam/drivers/tc/tc.c **** 	/*  Clear status register. */
 100:../asf/sam/drivers/tc/tc.c **** 	tc_channel->TC_SR;
  53              		.loc 1 100 0
  54 0010 196A     		ldr	r1, [r3, #32]
 101:../asf/sam/drivers/tc/tc.c **** 
 102:../asf/sam/drivers/tc/tc.c **** 	/*  Set mode. */
 103:../asf/sam/drivers/tc/tc.c **** 	tc_channel->TC_CMR = ul_mode;
  55              		.loc 1 103 0
  56 0012 5A60     		str	r2, [r3, #4]
 104:../asf/sam/drivers/tc/tc.c **** }
  57              		.loc 1 104 0
  58 0014 30BC     		pop	{r4, r5}
  59              		.cfi_restore 5
  60              		.cfi_restore 4
  61              		.cfi_def_cfa_offset 0
  62 0016 7047     		bx	lr
  63              		.cfi_endproc
  64              	.LFE142:
  65              		.size	tc_init, .-tc_init
ARM GAS  /tmp/ccfKQ0CH.s 			page 4


  66              		.section	.text.tc_sync_trigger,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	tc_sync_trigger
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv5-d16
  74              		.type	tc_sync_trigger, %function
  75              	tc_sync_trigger:
  76              	.LFB143:
 105:../asf/sam/drivers/tc/tc.c **** 
 106:../asf/sam/drivers/tc/tc.c **** /**
 107:../asf/sam/drivers/tc/tc.c ****  * \brief Asserts a SYNC signal to generate a software trigger on
 108:../asf/sam/drivers/tc/tc.c ****  * all channels.
 109:../asf/sam/drivers/tc/tc.c ****  *
 110:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc Module hardware register base address pointer
 111:../asf/sam/drivers/tc/tc.c ****  *
 112:../asf/sam/drivers/tc/tc.c ****  */
 113:../asf/sam/drivers/tc/tc.c **** void tc_sync_trigger(
 114:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc)
 115:../asf/sam/drivers/tc/tc.c **** {
  77              		.loc 1 115 0
  78              		.cfi_startproc
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82              	.LVL3:
 116:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 117:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 118:../asf/sam/drivers/tc/tc.c **** 	
 119:../asf/sam/drivers/tc/tc.c **** 	p_tc->TC_BCR = TC_BCR_SYNC;
  83              		.loc 1 119 0
  84 0000 0123     		movs	r3, #1
  85 0002 C0F8C030 		str	r3, [r0, #192]
  86 0006 7047     		bx	lr
  87              		.cfi_endproc
  88              	.LFE143:
  89              		.size	tc_sync_trigger, .-tc_sync_trigger
  90              		.section	.text.tc_set_block_mode,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	tc_set_block_mode
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv5-d16
  98              		.type	tc_set_block_mode, %function
  99              	tc_set_block_mode:
 100              	.LFB144:
 120:../asf/sam/drivers/tc/tc.c **** }
 121:../asf/sam/drivers/tc/tc.c **** 
 122:../asf/sam/drivers/tc/tc.c **** /**
 123:../asf/sam/drivers/tc/tc.c ****  * \brief Configure the TC Block mode.
 124:../asf/sam/drivers/tc/tc.c ****  *
 125:../asf/sam/drivers/tc/tc.c ****  * \note The function tc_init() must be called prior to this one.
 126:../asf/sam/drivers/tc/tc.c ****  *
ARM GAS  /tmp/ccfKQ0CH.s 			page 5


 127:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc        Module hardware register base address pointer
 128:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_blockmode Block mode register value to set
 129:../asf/sam/drivers/tc/tc.c ****  *
 130:../asf/sam/drivers/tc/tc.c ****  * \note For more information regarding <i>ul_blockmode</i> configuration refer to
 131:../asf/sam/drivers/tc/tc.c ****  * the section  entitled "TC Block Mode Register" in the device-specific datasheet.
 132:../asf/sam/drivers/tc/tc.c ****  */
 133:../asf/sam/drivers/tc/tc.c **** void tc_set_block_mode(
 134:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 135:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_blockmode)
 136:../asf/sam/drivers/tc/tc.c **** {
 101              		.loc 1 136 0
 102              		.cfi_startproc
 103              		@ args = 0, pretend = 0, frame = 0
 104              		@ frame_needed = 0, uses_anonymous_args = 0
 105              		@ link register save eliminated.
 106              	.LVL4:
 137:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 138:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 139:../asf/sam/drivers/tc/tc.c **** 	
 140:../asf/sam/drivers/tc/tc.c **** 	p_tc->TC_BMR = ul_blockmode;
 107              		.loc 1 140 0
 108 0000 C0F8C410 		str	r1, [r0, #196]
 109 0004 7047     		bx	lr
 110              		.cfi_endproc
 111              	.LFE144:
 112              		.size	tc_set_block_mode, .-tc_set_block_mode
 113 0006 00BF     		.section	.text.tc_init_2bit_gray,"ax",%progbits
 114              		.align	1
 115              		.p2align 2,,3
 116              		.global	tc_init_2bit_gray
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv5-d16
 121              		.type	tc_init_2bit_gray, %function
 122              	tc_init_2bit_gray:
 123              	.LFB145:
 141:../asf/sam/drivers/tc/tc.c **** }
 142:../asf/sam/drivers/tc/tc.c **** 
 143:../asf/sam/drivers/tc/tc.c **** #if (!SAM3U) || defined(__DOXYGEN__)
 144:../asf/sam/drivers/tc/tc.c **** 
 145:../asf/sam/drivers/tc/tc.c **** /**
 146:../asf/sam/drivers/tc/tc.c ****  * \brief Configure TC for 2-bit Gray Counter for Stepper Motor.
 147:../asf/sam/drivers/tc/tc.c ****  * \note The function tc_init() must be called prior to this one.
 148:../asf/sam/drivers/tc/tc.c ****  *
 149:../asf/sam/drivers/tc/tc.c ****  * \note This function is not available on SAM3U devices.
 150:../asf/sam/drivers/tc/tc.c ****  *
 151:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc          Module hardware register base address pointer
 152:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel     Channel to configure
 153:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_steppermode Stepper motor mode register value to set
 154:../asf/sam/drivers/tc/tc.c ****  *
 155:../asf/sam/drivers/tc/tc.c ****  * \return 0 for OK.
 156:../asf/sam/drivers/tc/tc.c ****  */
 157:../asf/sam/drivers/tc/tc.c **** uint32_t tc_init_2bit_gray(
 158:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 159:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel,
 160:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_steppermode)
ARM GAS  /tmp/ccfKQ0CH.s 			page 6


 161:../asf/sam/drivers/tc/tc.c **** {
 124              		.loc 1 161 0
 125              		.cfi_startproc
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128              		@ link register save eliminated.
 129              	.LVL5:
 162:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 163:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 164:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 165:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 166:../asf/sam/drivers/tc/tc.c **** 
 167:../asf/sam/drivers/tc/tc.c **** 	p_tc->TC_CHANNEL[ul_channel].TC_SMMR = ul_steppermode;
 130              		.loc 1 167 0
 131 0000 00EB8111 		add	r1, r0, r1, lsl #6
 132              	.LVL6:
 168:../asf/sam/drivers/tc/tc.c **** 	return 0;
 169:../asf/sam/drivers/tc/tc.c **** }
 133              		.loc 1 169 0
 134 0004 0020     		movs	r0, #0
 135              	.LVL7:
 167:../asf/sam/drivers/tc/tc.c **** 	return 0;
 136              		.loc 1 167 0
 137 0006 8A60     		str	r2, [r1, #8]
 138              		.loc 1 169 0
 139 0008 7047     		bx	lr
 140              		.cfi_endproc
 141              	.LFE145:
 142              		.size	tc_init_2bit_gray, .-tc_init_2bit_gray
 143 000a 00BF     		.section	.text.tc_start,"ax",%progbits
 144              		.align	1
 145              		.p2align 2,,3
 146              		.global	tc_start
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu fpv5-d16
 151              		.type	tc_start, %function
 152              	tc_start:
 153              	.LFB146:
 170:../asf/sam/drivers/tc/tc.c **** 
 171:../asf/sam/drivers/tc/tc.c **** #endif /* (!SAM3U) || defined(__DOXYGEN__) */
 172:../asf/sam/drivers/tc/tc.c **** 
 173:../asf/sam/drivers/tc/tc.c **** /**
 174:../asf/sam/drivers/tc/tc.c ****  * \brief Start the TC clock on the specified channel.
 175:../asf/sam/drivers/tc/tc.c ****  *
 176:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc      Module hardware register base address pointer
 177:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to configure
 178:../asf/sam/drivers/tc/tc.c ****  */
 179:../asf/sam/drivers/tc/tc.c **** void tc_start(
 180:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 181:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel)
 182:../asf/sam/drivers/tc/tc.c **** {
 154              		.loc 1 182 0
 155              		.cfi_startproc
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccfKQ0CH.s 			page 7


 158              		@ link register save eliminated.
 159              	.LVL8:
 183:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 184:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 185:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 186:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 187:../asf/sam/drivers/tc/tc.c **** 
 188:../asf/sam/drivers/tc/tc.c **** 	p_tc->TC_CHANNEL[ul_channel].TC_CCR = TC_CCR_CLKEN | TC_CCR_SWTRG;
 160              		.loc 1 188 0
 161 0000 8901     		lsls	r1, r1, #6
 162              	.LVL9:
 163 0002 0523     		movs	r3, #5
 164 0004 4350     		str	r3, [r0, r1]
 165 0006 7047     		bx	lr
 166              		.cfi_endproc
 167              	.LFE146:
 168              		.size	tc_start, .-tc_start
 169              		.section	.text.tc_stop,"ax",%progbits
 170              		.align	1
 171              		.p2align 2,,3
 172              		.global	tc_stop
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu fpv5-d16
 177              		.type	tc_stop, %function
 178              	tc_stop:
 179              	.LFB147:
 189:../asf/sam/drivers/tc/tc.c **** }
 190:../asf/sam/drivers/tc/tc.c **** 
 191:../asf/sam/drivers/tc/tc.c **** /**
 192:../asf/sam/drivers/tc/tc.c ****  * \brief Stop the TC clock on the specified channel.
 193:../asf/sam/drivers/tc/tc.c ****  *
 194:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc      Module hardware register base address pointer
 195:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to configure
 196:../asf/sam/drivers/tc/tc.c ****  */
 197:../asf/sam/drivers/tc/tc.c **** void tc_stop(
 198:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 199:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel)
 200:../asf/sam/drivers/tc/tc.c **** {
 180              		.loc 1 200 0
 181              		.cfi_startproc
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              		@ link register save eliminated.
 185              	.LVL10:
 201:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 202:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 203:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 204:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 205:../asf/sam/drivers/tc/tc.c **** 
 206:../asf/sam/drivers/tc/tc.c **** 	p_tc->TC_CHANNEL[ul_channel].TC_CCR = TC_CCR_CLKDIS;
 186              		.loc 1 206 0
 187 0000 8901     		lsls	r1, r1, #6
 188              	.LVL11:
 189 0002 0223     		movs	r3, #2
 190 0004 4350     		str	r3, [r0, r1]
ARM GAS  /tmp/ccfKQ0CH.s 			page 8


 191 0006 7047     		bx	lr
 192              		.cfi_endproc
 193              	.LFE147:
 194              		.size	tc_stop, .-tc_stop
 195              		.section	.text.tc_read_cv,"ax",%progbits
 196              		.align	1
 197              		.p2align 2,,3
 198              		.global	tc_read_cv
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu fpv5-d16
 203              		.type	tc_read_cv, %function
 204              	tc_read_cv:
 205              	.LFB148:
 207:../asf/sam/drivers/tc/tc.c **** }
 208:../asf/sam/drivers/tc/tc.c **** 
 209:../asf/sam/drivers/tc/tc.c **** /**
 210:../asf/sam/drivers/tc/tc.c ****  * \brief Read the counter value on the specified channel.
 211:../asf/sam/drivers/tc/tc.c ****  *
 212:../asf/sam/drivers/tc/tc.c ****  * \param[in] p_tc       Module hardware register base address pointer
 213:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to read
 214:../asf/sam/drivers/tc/tc.c ****  *
 215:../asf/sam/drivers/tc/tc.c ****  * \return The counter value.
 216:../asf/sam/drivers/tc/tc.c ****  */
 217:../asf/sam/drivers/tc/tc.c **** uint32_t tc_read_cv(
 218:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 219:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel)
 220:../asf/sam/drivers/tc/tc.c **** {
 206              		.loc 1 220 0
 207              		.cfi_startproc
 208              		@ args = 0, pretend = 0, frame = 0
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210              		@ link register save eliminated.
 211              	.LVL12:
 221:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 222:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 223:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 224:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 225:../asf/sam/drivers/tc/tc.c **** 
 226:../asf/sam/drivers/tc/tc.c **** 	return p_tc->TC_CHANNEL[ul_channel].TC_CV;
 212              		.loc 1 226 0
 213 0000 00EB8111 		add	r1, r0, r1, lsl #6
 214              	.LVL13:
 215 0004 0869     		ldr	r0, [r1, #16]
 216              	.LVL14:
 227:../asf/sam/drivers/tc/tc.c **** }
 217              		.loc 1 227 0
 218 0006 7047     		bx	lr
 219              		.cfi_endproc
 220              	.LFE148:
 221              		.size	tc_read_cv, .-tc_read_cv
 222              		.section	.text.tc_read_ra,"ax",%progbits
 223              		.align	1
 224              		.p2align 2,,3
 225              		.global	tc_read_ra
 226              		.syntax unified
ARM GAS  /tmp/ccfKQ0CH.s 			page 9


 227              		.thumb
 228              		.thumb_func
 229              		.fpu fpv5-d16
 230              		.type	tc_read_ra, %function
 231              	tc_read_ra:
 232              	.LFB149:
 228:../asf/sam/drivers/tc/tc.c **** 
 229:../asf/sam/drivers/tc/tc.c **** /**
 230:../asf/sam/drivers/tc/tc.c ****  * \brief Read TC Register A (RA) on the specified channel.
 231:../asf/sam/drivers/tc/tc.c ****  *
 232:../asf/sam/drivers/tc/tc.c ****  * \param[in] p_tc       Module hardware register base address pointer
 233:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to read
 234:../asf/sam/drivers/tc/tc.c ****  *
 235:../asf/sam/drivers/tc/tc.c ****  * \return The TC Register A (RA) value.
 236:../asf/sam/drivers/tc/tc.c ****  */
 237:../asf/sam/drivers/tc/tc.c **** uint32_t tc_read_ra(
 238:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 239:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel)
 240:../asf/sam/drivers/tc/tc.c **** {
 233              		.loc 1 240 0
 234              		.cfi_startproc
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237              		@ link register save eliminated.
 238              	.LVL15:
 241:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 242:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 243:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 244:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 245:../asf/sam/drivers/tc/tc.c **** 
 246:../asf/sam/drivers/tc/tc.c **** 	return p_tc->TC_CHANNEL[ul_channel].TC_RA;
 239              		.loc 1 246 0
 240 0000 00EB8111 		add	r1, r0, r1, lsl #6
 241              	.LVL16:
 242 0004 4869     		ldr	r0, [r1, #20]
 243              	.LVL17:
 247:../asf/sam/drivers/tc/tc.c **** }
 244              		.loc 1 247 0
 245 0006 7047     		bx	lr
 246              		.cfi_endproc
 247              	.LFE149:
 248              		.size	tc_read_ra, .-tc_read_ra
 249              		.section	.text.tc_read_rb,"ax",%progbits
 250              		.align	1
 251              		.p2align 2,,3
 252              		.global	tc_read_rb
 253              		.syntax unified
 254              		.thumb
 255              		.thumb_func
 256              		.fpu fpv5-d16
 257              		.type	tc_read_rb, %function
 258              	tc_read_rb:
 259              	.LFB150:
 248:../asf/sam/drivers/tc/tc.c **** 
 249:../asf/sam/drivers/tc/tc.c **** /**
 250:../asf/sam/drivers/tc/tc.c ****  * \brief Read TC Register B (RB) on the specified channel.
 251:../asf/sam/drivers/tc/tc.c ****  *
ARM GAS  /tmp/ccfKQ0CH.s 			page 10


 252:../asf/sam/drivers/tc/tc.c ****  * \param[in] p_tc       Module hardware register base address pointer
 253:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to read
 254:../asf/sam/drivers/tc/tc.c ****  *
 255:../asf/sam/drivers/tc/tc.c ****  * \return The TC Register B (RB) value.
 256:../asf/sam/drivers/tc/tc.c ****  */
 257:../asf/sam/drivers/tc/tc.c **** uint32_t tc_read_rb(
 258:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 259:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel)
 260:../asf/sam/drivers/tc/tc.c **** {
 260              		.loc 1 260 0
 261              		.cfi_startproc
 262              		@ args = 0, pretend = 0, frame = 0
 263              		@ frame_needed = 0, uses_anonymous_args = 0
 264              		@ link register save eliminated.
 265              	.LVL18:
 261:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 262:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 263:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 264:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 265:../asf/sam/drivers/tc/tc.c **** 
 266:../asf/sam/drivers/tc/tc.c **** 	return p_tc->TC_CHANNEL[ul_channel].TC_RB;
 266              		.loc 1 266 0
 267 0000 00EB8111 		add	r1, r0, r1, lsl #6
 268              	.LVL19:
 269 0004 8869     		ldr	r0, [r1, #24]
 270              	.LVL20:
 267:../asf/sam/drivers/tc/tc.c **** }
 271              		.loc 1 267 0
 272 0006 7047     		bx	lr
 273              		.cfi_endproc
 274              	.LFE150:
 275              		.size	tc_read_rb, .-tc_read_rb
 276              		.section	.text.tc_read_rc,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	tc_read_rc
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu fpv5-d16
 284              		.type	tc_read_rc, %function
 285              	tc_read_rc:
 286              	.LFB151:
 268:../asf/sam/drivers/tc/tc.c **** 
 269:../asf/sam/drivers/tc/tc.c **** /**
 270:../asf/sam/drivers/tc/tc.c ****  * \brief Read TC Register C (RC) on the specified channel.
 271:../asf/sam/drivers/tc/tc.c ****  *
 272:../asf/sam/drivers/tc/tc.c ****  * \param[in] p_tc       Module hardware register base address pointer
 273:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to read
 274:../asf/sam/drivers/tc/tc.c ****  *
 275:../asf/sam/drivers/tc/tc.c ****  * \return The Register C (RC) value.
 276:../asf/sam/drivers/tc/tc.c ****  */
 277:../asf/sam/drivers/tc/tc.c **** uint32_t tc_read_rc(
 278:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 279:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel)
 280:../asf/sam/drivers/tc/tc.c **** {
 287              		.loc 1 280 0
ARM GAS  /tmp/ccfKQ0CH.s 			page 11


 288              		.cfi_startproc
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291              		@ link register save eliminated.
 292              	.LVL21:
 281:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 282:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 283:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 284:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 285:../asf/sam/drivers/tc/tc.c **** 
 286:../asf/sam/drivers/tc/tc.c **** 	return p_tc->TC_CHANNEL[ul_channel].TC_RC;
 293              		.loc 1 286 0
 294 0000 00EB8111 		add	r1, r0, r1, lsl #6
 295              	.LVL22:
 296 0004 C869     		ldr	r0, [r1, #28]
 297              	.LVL23:
 287:../asf/sam/drivers/tc/tc.c **** }
 298              		.loc 1 287 0
 299 0006 7047     		bx	lr
 300              		.cfi_endproc
 301              	.LFE151:
 302              		.size	tc_read_rc, .-tc_read_rc
 303              		.section	.text.tc_write_ra,"ax",%progbits
 304              		.align	1
 305              		.p2align 2,,3
 306              		.global	tc_write_ra
 307              		.syntax unified
 308              		.thumb
 309              		.thumb_func
 310              		.fpu fpv5-d16
 311              		.type	tc_write_ra, %function
 312              	tc_write_ra:
 313              	.LFB152:
 288:../asf/sam/drivers/tc/tc.c **** 
 289:../asf/sam/drivers/tc/tc.c **** /**
 290:../asf/sam/drivers/tc/tc.c ****  * \brief Write to TC Register A (RA) on the specified channel.
 291:../asf/sam/drivers/tc/tc.c ****  *
 292:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc      Module hardware register base address pointer
 293:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to write
 294:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_value   Value to write
 295:../asf/sam/drivers/tc/tc.c ****  */
 296:../asf/sam/drivers/tc/tc.c **** void tc_write_ra(
 297:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 298:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel,
 299:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_value)
 300:../asf/sam/drivers/tc/tc.c **** {
 314              		.loc 1 300 0
 315              		.cfi_startproc
 316              		@ args = 0, pretend = 0, frame = 0
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318              		@ link register save eliminated.
 319              	.LVL24:
 301:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 302:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 303:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 304:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 305:../asf/sam/drivers/tc/tc.c **** 
ARM GAS  /tmp/ccfKQ0CH.s 			page 12


 306:../asf/sam/drivers/tc/tc.c **** 	p_tc->TC_CHANNEL[ul_channel].TC_RA = ul_value;
 320              		.loc 1 306 0
 321 0000 00EB8111 		add	r1, r0, r1, lsl #6
 322              	.LVL25:
 323 0004 4A61     		str	r2, [r1, #20]
 324 0006 7047     		bx	lr
 325              		.cfi_endproc
 326              	.LFE152:
 327              		.size	tc_write_ra, .-tc_write_ra
 328              		.section	.text.tc_write_rb,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	tc_write_rb
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv5-d16
 336              		.type	tc_write_rb, %function
 337              	tc_write_rb:
 338              	.LFB153:
 307:../asf/sam/drivers/tc/tc.c **** }
 308:../asf/sam/drivers/tc/tc.c **** 
 309:../asf/sam/drivers/tc/tc.c **** /**
 310:../asf/sam/drivers/tc/tc.c ****  * \brief Write to TC Register B (RB) on the specified channel.
 311:../asf/sam/drivers/tc/tc.c ****  *
 312:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc      Module hardware register base address pointer
 313:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to write
 314:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_value   Value to write
 315:../asf/sam/drivers/tc/tc.c ****  */
 316:../asf/sam/drivers/tc/tc.c **** void tc_write_rb(
 317:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 318:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel,
 319:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_value)
 320:../asf/sam/drivers/tc/tc.c **** {
 339              		.loc 1 320 0
 340              		.cfi_startproc
 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
 343              		@ link register save eliminated.
 344              	.LVL26:
 321:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 322:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 323:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 324:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 325:../asf/sam/drivers/tc/tc.c **** 
 326:../asf/sam/drivers/tc/tc.c **** 	p_tc->TC_CHANNEL[ul_channel].TC_RB = ul_value;
 345              		.loc 1 326 0
 346 0000 00EB8111 		add	r1, r0, r1, lsl #6
 347              	.LVL27:
 348 0004 8A61     		str	r2, [r1, #24]
 349 0006 7047     		bx	lr
 350              		.cfi_endproc
 351              	.LFE153:
 352              		.size	tc_write_rb, .-tc_write_rb
 353              		.section	.text.tc_write_rc,"ax",%progbits
 354              		.align	1
 355              		.p2align 2,,3
ARM GAS  /tmp/ccfKQ0CH.s 			page 13


 356              		.global	tc_write_rc
 357              		.syntax unified
 358              		.thumb
 359              		.thumb_func
 360              		.fpu fpv5-d16
 361              		.type	tc_write_rc, %function
 362              	tc_write_rc:
 363              	.LFB154:
 327:../asf/sam/drivers/tc/tc.c **** }
 328:../asf/sam/drivers/tc/tc.c **** 
 329:../asf/sam/drivers/tc/tc.c **** /**
 330:../asf/sam/drivers/tc/tc.c ****  * \brief Write to TC Register C (RC) on the selected channel.
 331:../asf/sam/drivers/tc/tc.c ****  *
 332:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc      Module hardware register base address pointer
 333:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to write
 334:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_value   Value to write
 335:../asf/sam/drivers/tc/tc.c ****  */
 336:../asf/sam/drivers/tc/tc.c **** void tc_write_rc(
 337:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 338:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel,
 339:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_value)
 340:../asf/sam/drivers/tc/tc.c **** {
 364              		.loc 1 340 0
 365              		.cfi_startproc
 366              		@ args = 0, pretend = 0, frame = 0
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368              		@ link register save eliminated.
 369              	.LVL28:
 341:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 342:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 343:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 344:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 345:../asf/sam/drivers/tc/tc.c **** 
 346:../asf/sam/drivers/tc/tc.c **** 	p_tc->TC_CHANNEL[ul_channel].TC_RC = ul_value;
 370              		.loc 1 346 0
 371 0000 00EB8111 		add	r1, r0, r1, lsl #6
 372              	.LVL29:
 373 0004 CA61     		str	r2, [r1, #28]
 374 0006 7047     		bx	lr
 375              		.cfi_endproc
 376              	.LFE154:
 377              		.size	tc_write_rc, .-tc_write_rc
 378              		.section	.text.tc_enable_interrupt,"ax",%progbits
 379              		.align	1
 380              		.p2align 2,,3
 381              		.global	tc_enable_interrupt
 382              		.syntax unified
 383              		.thumb
 384              		.thumb_func
 385              		.fpu fpv5-d16
 386              		.type	tc_enable_interrupt, %function
 387              	tc_enable_interrupt:
 388              	.LFB155:
 347:../asf/sam/drivers/tc/tc.c **** }
 348:../asf/sam/drivers/tc/tc.c **** 
 349:../asf/sam/drivers/tc/tc.c **** /**
 350:../asf/sam/drivers/tc/tc.c ****  * \brief Enable the TC interrupts on the specified channel.
ARM GAS  /tmp/ccfKQ0CH.s 			page 14


 351:../asf/sam/drivers/tc/tc.c ****  *
 352:../asf/sam/drivers/tc/tc.c ****  * \param[in,out] p_tc   Module hardware register base address pointer
 353:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to configure
 354:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_sources Bitmask of interrupt sources
 355:../asf/sam/drivers/tc/tc.c ****  *
 356:../asf/sam/drivers/tc/tc.c ****  * Where the input parameter <i>ul_sources</i> can be one or more of the following:
 357:../asf/sam/drivers/tc/tc.c ****  * <table>
 358:../asf/sam/drivers/tc/tc.c ****  * <tr>
 359:../asf/sam/drivers/tc/tc.c ****  *    <th>Parameter Value</th>
 360:../asf/sam/drivers/tc/tc.c ****  *    <th>Description</th>
 361:../asf/sam/drivers/tc/tc.c ****  * </tr>
 362:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IER_COVFS</td><td>Enables the Counter Overflow Interrupt</td></tr>
 363:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IER_LOVRS</td><td>Enables the Load Overrun Interrupt</td></tr>
 364:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IER_CPAS</td><td>Enables the RA Compare Interrupt</td></tr>
 365:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IER_CPBS</td><td>Enables the RB Compare Interrupt</td></tr>
 366:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IER_CPCS</td><td>Enables the RC Compare Interrupt</td></tr>
 367:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IER_LDRAS</td><td>Enables the RA Load Interrupt</td></tr>
 368:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IER_LDRBS</td><td>Enables the RB Load Interrupt</td></tr>
 369:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IER_ETRGS</td><td>Enables the External Trigger Interrupt</td></tr>
 370:../asf/sam/drivers/tc/tc.c ****  * </table>
 371:../asf/sam/drivers/tc/tc.c ****  */
 372:../asf/sam/drivers/tc/tc.c **** void tc_enable_interrupt(
 373:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 374:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel,
 375:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_sources)
 376:../asf/sam/drivers/tc/tc.c **** {
 389              		.loc 1 376 0
 390              		.cfi_startproc
 391              		@ args = 0, pretend = 0, frame = 0
 392              		@ frame_needed = 0, uses_anonymous_args = 0
 393              		@ link register save eliminated.
 394              	.LVL30:
 377:../asf/sam/drivers/tc/tc.c **** 	TcChannel *tc_channel;
 378:../asf/sam/drivers/tc/tc.c **** 
 379:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 380:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 381:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 382:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 383:../asf/sam/drivers/tc/tc.c **** 	tc_channel = p_tc->TC_CHANNEL + ul_channel;
 395              		.loc 1 383 0
 396 0000 00EB8111 		add	r1, r0, r1, lsl #6
 397              	.LVL31:
 384:../asf/sam/drivers/tc/tc.c **** 	tc_channel->TC_IER = ul_sources;
 398              		.loc 1 384 0
 399 0004 4A62     		str	r2, [r1, #36]
 400 0006 7047     		bx	lr
 401              		.cfi_endproc
 402              	.LFE155:
 403              		.size	tc_enable_interrupt, .-tc_enable_interrupt
 404              		.section	.text.tc_disable_interrupt,"ax",%progbits
 405              		.align	1
 406              		.p2align 2,,3
 407              		.global	tc_disable_interrupt
 408              		.syntax unified
 409              		.thumb
 410              		.thumb_func
 411              		.fpu fpv5-d16
ARM GAS  /tmp/ccfKQ0CH.s 			page 15


 412              		.type	tc_disable_interrupt, %function
 413              	tc_disable_interrupt:
 414              	.LFB156:
 385:../asf/sam/drivers/tc/tc.c **** }
 386:../asf/sam/drivers/tc/tc.c **** 
 387:../asf/sam/drivers/tc/tc.c **** /**
 388:../asf/sam/drivers/tc/tc.c ****  * \brief Disable TC interrupts on the specified channel.
 389:../asf/sam/drivers/tc/tc.c ****  *
 390:../asf/sam/drivers/tc/tc.c ****  * \param[in,out] p_tc   Module hardware register base address pointer
 391:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to configure
 392:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_sources A bitmask of Interrupt sources
 393:../asf/sam/drivers/tc/tc.c ****  *
 394:../asf/sam/drivers/tc/tc.c ****  * Where the input parameter <i>ul_sources</i> can be one or more of the following:
 395:../asf/sam/drivers/tc/tc.c ****  * <table>
 396:../asf/sam/drivers/tc/tc.c ****  * <tr>
 397:../asf/sam/drivers/tc/tc.c ****  *    <th>Parameter Value</th>
 398:../asf/sam/drivers/tc/tc.c ****  *    <th>Description</th>
 399:../asf/sam/drivers/tc/tc.c ****  * </tr>
 400:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IDR_COVFS</td><td>Disables the Counter Overflow Interrupt</td></tr>
 401:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IDR_LOVRS</td><td>Disables the Load Overrun Interrupt</td></tr>
 402:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IDR_CPAS</td><td>Disables the RA Compare Interrupt</td></tr>
 403:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IDR_CPBS</td><td>Disables the RB Compare Interrupt</td></tr>
 404:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IDR_CPCS</td><td>Disables the RC Compare Interrupt</td></tr>
 405:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IDR_LDRAS</td><td>Disables the RA Load Interrupt</td></tr>
 406:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IDR_LDRBS</td><td>Disables the RB Load Interrupt</td></tr>
 407:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_IDR_ETRGS</td><td>Disables the External Trigger Interrupt</td></tr>
 408:../asf/sam/drivers/tc/tc.c ****  * </table>
 409:../asf/sam/drivers/tc/tc.c ****  */
 410:../asf/sam/drivers/tc/tc.c **** void tc_disable_interrupt(
 411:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 412:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel,
 413:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_sources)
 414:../asf/sam/drivers/tc/tc.c **** {
 415              		.loc 1 414 0
 416              		.cfi_startproc
 417              		@ args = 0, pretend = 0, frame = 0
 418              		@ frame_needed = 0, uses_anonymous_args = 0
 419              		@ link register save eliminated.
 420              	.LVL32:
 415:../asf/sam/drivers/tc/tc.c **** 	TcChannel *tc_channel;
 416:../asf/sam/drivers/tc/tc.c **** 
 417:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 418:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 419:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 420:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 421:../asf/sam/drivers/tc/tc.c **** 	tc_channel = p_tc->TC_CHANNEL + ul_channel;
 421              		.loc 1 421 0
 422 0000 00EB8111 		add	r1, r0, r1, lsl #6
 423              	.LVL33:
 422:../asf/sam/drivers/tc/tc.c **** 	tc_channel->TC_IDR = ul_sources;
 424              		.loc 1 422 0
 425 0004 8A62     		str	r2, [r1, #40]
 426 0006 7047     		bx	lr
 427              		.cfi_endproc
 428              	.LFE156:
 429              		.size	tc_disable_interrupt, .-tc_disable_interrupt
 430              		.section	.text.tc_get_interrupt_mask,"ax",%progbits
ARM GAS  /tmp/ccfKQ0CH.s 			page 16


 431              		.align	1
 432              		.p2align 2,,3
 433              		.global	tc_get_interrupt_mask
 434              		.syntax unified
 435              		.thumb
 436              		.thumb_func
 437              		.fpu fpv5-d16
 438              		.type	tc_get_interrupt_mask, %function
 439              	tc_get_interrupt_mask:
 440              	.LFB157:
 423:../asf/sam/drivers/tc/tc.c **** }
 424:../asf/sam/drivers/tc/tc.c **** 
 425:../asf/sam/drivers/tc/tc.c **** /**
 426:../asf/sam/drivers/tc/tc.c ****  * \brief Read the TC interrupt mask for the specified channel.
 427:../asf/sam/drivers/tc/tc.c ****  *
 428:../asf/sam/drivers/tc/tc.c ****  * \param[in] p_tc       Module hardware register base address pointer
 429:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel to read
 430:../asf/sam/drivers/tc/tc.c ****  *
 431:../asf/sam/drivers/tc/tc.c ****  * \return The TC interrupt mask value.
 432:../asf/sam/drivers/tc/tc.c ****  */
 433:../asf/sam/drivers/tc/tc.c **** uint32_t tc_get_interrupt_mask(
 434:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 435:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel)
 436:../asf/sam/drivers/tc/tc.c **** {
 441              		.loc 1 436 0
 442              		.cfi_startproc
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 0, uses_anonymous_args = 0
 445              		@ link register save eliminated.
 446              	.LVL34:
 437:../asf/sam/drivers/tc/tc.c **** 	TcChannel *tc_channel;
 438:../asf/sam/drivers/tc/tc.c **** 
 439:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 440:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 441:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 442:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 443:../asf/sam/drivers/tc/tc.c **** 	tc_channel = p_tc->TC_CHANNEL + ul_channel;
 447              		.loc 1 443 0
 448 0000 00EB8111 		add	r1, r0, r1, lsl #6
 449              	.LVL35:
 444:../asf/sam/drivers/tc/tc.c **** 	return tc_channel->TC_IMR;
 450              		.loc 1 444 0
 451 0004 C86A     		ldr	r0, [r1, #44]
 452              	.LVL36:
 445:../asf/sam/drivers/tc/tc.c **** }
 453              		.loc 1 445 0
 454 0006 7047     		bx	lr
 455              		.cfi_endproc
 456              	.LFE157:
 457              		.size	tc_get_interrupt_mask, .-tc_get_interrupt_mask
 458              		.section	.text.tc_get_status,"ax",%progbits
 459              		.align	1
 460              		.p2align 2,,3
 461              		.global	tc_get_status
 462              		.syntax unified
 463              		.thumb
 464              		.thumb_func
ARM GAS  /tmp/ccfKQ0CH.s 			page 17


 465              		.fpu fpv5-d16
 466              		.type	tc_get_status, %function
 467              	tc_get_status:
 468              	.LFB158:
 446:../asf/sam/drivers/tc/tc.c **** 
 447:../asf/sam/drivers/tc/tc.c **** /**
 448:../asf/sam/drivers/tc/tc.c ****  * \brief Get the current status for the specified TC channel.
 449:../asf/sam/drivers/tc/tc.c ****  *
 450:../asf/sam/drivers/tc/tc.c ****  * \param[in] p_tc       Module hardware register base address pointer
 451:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_channel Channel number
 452:../asf/sam/drivers/tc/tc.c ****  *
 453:../asf/sam/drivers/tc/tc.c ****  * \return The current TC status.
 454:../asf/sam/drivers/tc/tc.c ****  */
 455:../asf/sam/drivers/tc/tc.c **** uint32_t tc_get_status(
 456:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 457:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_channel)
 458:../asf/sam/drivers/tc/tc.c **** {
 469              		.loc 1 458 0
 470              		.cfi_startproc
 471              		@ args = 0, pretend = 0, frame = 0
 472              		@ frame_needed = 0, uses_anonymous_args = 0
 473              		@ link register save eliminated.
 474              	.LVL37:
 459:../asf/sam/drivers/tc/tc.c **** 	TcChannel *tc_channel;
 460:../asf/sam/drivers/tc/tc.c **** 
 461:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 462:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 463:../asf/sam/drivers/tc/tc.c **** 	Assert(ul_channel <
 464:../asf/sam/drivers/tc/tc.c **** 			(sizeof(p_tc->TC_CHANNEL) / sizeof(p_tc->TC_CHANNEL[0])));
 465:../asf/sam/drivers/tc/tc.c **** 			
 466:../asf/sam/drivers/tc/tc.c **** 	tc_channel = p_tc->TC_CHANNEL + ul_channel;
 475              		.loc 1 466 0
 476 0000 00EB8111 		add	r1, r0, r1, lsl #6
 477              	.LVL38:
 467:../asf/sam/drivers/tc/tc.c **** 	return tc_channel->TC_SR;
 478              		.loc 1 467 0
 479 0004 086A     		ldr	r0, [r1, #32]
 480              	.LVL39:
 468:../asf/sam/drivers/tc/tc.c **** }
 481              		.loc 1 468 0
 482 0006 7047     		bx	lr
 483              		.cfi_endproc
 484              	.LFE158:
 485              		.size	tc_get_status, .-tc_get_status
 486              		.section	.text.tc_find_mck_divisor,"ax",%progbits
 487              		.align	1
 488              		.p2align 2,,3
 489              		.global	tc_find_mck_divisor
 490              		.syntax unified
 491              		.thumb
 492              		.thumb_func
 493              		.fpu fpv5-d16
 494              		.type	tc_find_mck_divisor, %function
 495              	tc_find_mck_divisor:
 496              	.LFB159:
 469:../asf/sam/drivers/tc/tc.c **** 
 470:../asf/sam/drivers/tc/tc.c **** /* TC divisor used to find the lowest acceptable timer frequency */
ARM GAS  /tmp/ccfKQ0CH.s 			page 18


 471:../asf/sam/drivers/tc/tc.c **** #define TC_DIV_FACTOR 65536
 472:../asf/sam/drivers/tc/tc.c **** 
 473:../asf/sam/drivers/tc/tc.c **** #if (!SAM4L) && !defined(__DOXYGEN__)
 474:../asf/sam/drivers/tc/tc.c **** 
 475:../asf/sam/drivers/tc/tc.c **** #ifndef FREQ_SLOW_CLOCK_EXT
 476:../asf/sam/drivers/tc/tc.c **** #define FREQ_SLOW_CLOCK_EXT 32768 /* External slow clock frequency (hz) */
 477:../asf/sam/drivers/tc/tc.c **** #endif
 478:../asf/sam/drivers/tc/tc.c **** 
 479:../asf/sam/drivers/tc/tc.c **** /**
 480:../asf/sam/drivers/tc/tc.c ****  * \brief Find the best MCK divisor.
 481:../asf/sam/drivers/tc/tc.c ****  *
 482:../asf/sam/drivers/tc/tc.c ****  * Finds the best MCK divisor given the timer frequency and MCK. The result
 483:../asf/sam/drivers/tc/tc.c ****  * is guaranteed to satisfy the following equation:
 484:../asf/sam/drivers/tc/tc.c ****  * \code (MCK / (DIV * 65536)) <= freq <= (MCK / DIV) \endcode
 485:../asf/sam/drivers/tc/tc.c ****  * With DIV being the lowest possible value, to maximize timing adjust resolution.
 486:../asf/sam/drivers/tc/tc.c ****  *
 487:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_freq     Desired timer frequency
 488:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_mck      Master clock frequency
 489:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_uldiv    Divisor value
 490:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_ultcclks TCCLKS field value for divisor
 491:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_boardmck Board clock frequency
 492:../asf/sam/drivers/tc/tc.c ****  *
 493:../asf/sam/drivers/tc/tc.c ****  * \return The divisor found status.
 494:../asf/sam/drivers/tc/tc.c ****  * \retval 0 No suitable divisor was found
 495:../asf/sam/drivers/tc/tc.c ****  * \retval 1 A divisor was found
 496:../asf/sam/drivers/tc/tc.c ****  */
 497:../asf/sam/drivers/tc/tc.c **** uint32_t tc_find_mck_divisor(
 498:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_freq,
 499:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_mck,
 500:../asf/sam/drivers/tc/tc.c **** 		uint32_t *p_uldiv,
 501:../asf/sam/drivers/tc/tc.c **** 		uint32_t *p_ultcclks,
 502:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_boardmck)
 503:../asf/sam/drivers/tc/tc.c **** {
 497              		.loc 1 503 0
 498              		.cfi_startproc
 499              		@ args = 4, pretend = 0, frame = 24
 500              		@ frame_needed = 0, uses_anonymous_args = 0
 501              	.LVL40:
 502 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 503              		.cfi_def_cfa_offset 20
 504              		.cfi_offset 4, -20
 505              		.cfi_offset 5, -16
 506              		.cfi_offset 6, -12
 507              		.cfi_offset 7, -8
 508              		.cfi_offset 14, -4
 504:../asf/sam/drivers/tc/tc.c **** 	const uint32_t divisors[5] = { 2, 8, 32, 128,
 509              		.loc 1 504 0
 510 0002 0225     		movs	r5, #2
 503:../asf/sam/drivers/tc/tc.c **** 	const uint32_t divisors[5] = { 2, 8, 32, 128,
 511              		.loc 1 503 0
 512 0004 87B0     		sub	sp, sp, #28
 513              		.cfi_def_cfa_offset 48
 514              		.loc 1 504 0
 515 0006 4FF0080E 		mov	lr, #8
 516 000a 2027     		movs	r7, #32
 517 000c 2E46     		mov	r6, r5
 518 000e 0195     		str	r5, [sp, #4]
ARM GAS  /tmp/ccfKQ0CH.s 			page 19


 519 0010 8025     		movs	r5, #128
 503:../asf/sam/drivers/tc/tc.c **** 	const uint32_t divisors[5] = { 2, 8, 32, 128,
 520              		.loc 1 503 0
 521 0012 0C9C     		ldr	r4, [sp, #48]
 522              		.loc 1 504 0
 523 0014 CDF808E0 		str	lr, [sp, #8]
 524 0018 0DF1040E 		add	lr, sp, #4
 525 001c 0495     		str	r5, [sp, #16]
 505:../asf/sam/drivers/tc/tc.c **** 			ul_boardmck / FREQ_SLOW_CLOCK_EXT };
 526              		.loc 1 505 0
 527 001e E40B     		lsrs	r4, r4, #15
 504:../asf/sam/drivers/tc/tc.c **** 	const uint32_t divisors[5] = { 2, 8, 32, 128,
 528              		.loc 1 504 0
 529 0020 0397     		str	r7, [sp, #12]
 530 0022 0594     		str	r4, [sp, #20]
 531              	.LVL41:
 506:../asf/sam/drivers/tc/tc.c **** 	uint32_t ul_index;
 507:../asf/sam/drivers/tc/tc.c **** 	uint32_t ul_high, ul_low;
 508:../asf/sam/drivers/tc/tc.c **** 
 509:../asf/sam/drivers/tc/tc.c **** 	/*  Satisfy frequency bound. */
 510:../asf/sam/drivers/tc/tc.c **** 	for (ul_index = 0;
 532              		.loc 1 510 0
 533 0024 0024     		movs	r4, #0
 534              	.LVL42:
 511:../asf/sam/drivers/tc/tc.c **** 			ul_index < (sizeof(divisors) / sizeof(divisors[0]));
 512:../asf/sam/drivers/tc/tc.c **** 			ul_index++) {
 513:../asf/sam/drivers/tc/tc.c **** 		ul_high = ul_mck / divisors[ul_index];
 535              		.loc 1 513 0
 536 0026 B1FBF6F5 		udiv	r5, r1, r6
 537              	.LVL43:
 514:../asf/sam/drivers/tc/tc.c **** 		ul_low  = ul_high / TC_DIV_FACTOR;
 515:../asf/sam/drivers/tc/tc.c **** 		if (ul_freq > ul_high) {
 538              		.loc 1 515 0
 539 002a 8542     		cmp	r5, r0
 514:../asf/sam/drivers/tc/tc.c **** 		ul_low  = ul_high / TC_DIV_FACTOR;
 540              		.loc 1 514 0
 541 002c 4FEA1547 		lsr	r7, r5, #16
 542              	.LVL44:
 543              		.loc 1 515 0
 544 0030 0CD3     		bcc	.L26
 545              	.L31:
 516:../asf/sam/drivers/tc/tc.c **** 			return 0;
 517:../asf/sam/drivers/tc/tc.c **** 		} else if (ul_freq >= ul_low) {
 546              		.loc 1 517 0
 547 0032 8742     		cmp	r7, r0
 548 0034 0DD9     		bls	.L21
 512:../asf/sam/drivers/tc/tc.c **** 		ul_high = ul_mck / divisors[ul_index];
 549              		.loc 1 512 0
 550 0036 0134     		adds	r4, r4, #1
 551              	.LVL45:
 510:../asf/sam/drivers/tc/tc.c **** 			ul_index < (sizeof(divisors) / sizeof(divisors[0]));
 552              		.loc 1 510 0
 553 0038 052C     		cmp	r4, #5
 554 003a 07D0     		beq	.L26
 555 003c 5EF82460 		ldr	r6, [lr, r4, lsl #2]
 513:../asf/sam/drivers/tc/tc.c **** 		ul_low  = ul_high / TC_DIV_FACTOR;
 556              		.loc 1 513 0
ARM GAS  /tmp/ccfKQ0CH.s 			page 20


 557 0040 B1FBF6F5 		udiv	r5, r1, r6
 558              	.LVL46:
 515:../asf/sam/drivers/tc/tc.c **** 			return 0;
 559              		.loc 1 515 0
 560 0044 8542     		cmp	r5, r0
 514:../asf/sam/drivers/tc/tc.c **** 		if (ul_freq > ul_high) {
 561              		.loc 1 514 0
 562 0046 4FEA1547 		lsr	r7, r5, #16
 563              	.LVL47:
 515:../asf/sam/drivers/tc/tc.c **** 			return 0;
 564              		.loc 1 515 0
 565 004a F2D2     		bcs	.L31
 566              	.L26:
 516:../asf/sam/drivers/tc/tc.c **** 		} else if (ul_freq >= ul_low) {
 567              		.loc 1 516 0
 568 004c 0020     		movs	r0, #0
 569              	.LVL48:
 570              	.L19:
 518:../asf/sam/drivers/tc/tc.c **** 			break;
 519:../asf/sam/drivers/tc/tc.c **** 		}
 520:../asf/sam/drivers/tc/tc.c **** 	}
 521:../asf/sam/drivers/tc/tc.c **** 	if (ul_index >= (sizeof(divisors) / sizeof(divisors[0]))) {
 522:../asf/sam/drivers/tc/tc.c **** 		return 0;
 523:../asf/sam/drivers/tc/tc.c **** 	}
 524:../asf/sam/drivers/tc/tc.c **** 
 525:../asf/sam/drivers/tc/tc.c **** 	/*  Store results. */
 526:../asf/sam/drivers/tc/tc.c **** 	if (p_uldiv) {
 527:../asf/sam/drivers/tc/tc.c **** 		*p_uldiv = divisors[ul_index];
 528:../asf/sam/drivers/tc/tc.c **** 	}
 529:../asf/sam/drivers/tc/tc.c **** 
 530:../asf/sam/drivers/tc/tc.c **** 	if (p_ultcclks) {
 531:../asf/sam/drivers/tc/tc.c **** 		*p_ultcclks = ul_index;
 532:../asf/sam/drivers/tc/tc.c **** 	}
 533:../asf/sam/drivers/tc/tc.c **** 
 534:../asf/sam/drivers/tc/tc.c **** 	return 1;
 535:../asf/sam/drivers/tc/tc.c **** }
 571              		.loc 1 535 0
 572 004e 07B0     		add	sp, sp, #28
 573              		.cfi_remember_state
 574              		.cfi_def_cfa_offset 20
 575              		@ sp needed
 576 0050 F0BD     		pop	{r4, r5, r6, r7, pc}
 577              	.LVL49:
 578              	.L21:
 579              		.cfi_restore_state
 526:../asf/sam/drivers/tc/tc.c **** 		*p_uldiv = divisors[ul_index];
 580              		.loc 1 526 0
 581 0052 02B1     		cbz	r2, .L24
 527:../asf/sam/drivers/tc/tc.c **** 	}
 582              		.loc 1 527 0
 583 0054 1660     		str	r6, [r2]
 584              	.L24:
 530:../asf/sam/drivers/tc/tc.c **** 		*p_ultcclks = ul_index;
 585              		.loc 1 530 0
 586 0056 1BB1     		cbz	r3, .L27
 534:../asf/sam/drivers/tc/tc.c **** }
 587              		.loc 1 534 0
ARM GAS  /tmp/ccfKQ0CH.s 			page 21


 588 0058 0120     		movs	r0, #1
 589              	.LVL50:
 531:../asf/sam/drivers/tc/tc.c **** 	}
 590              		.loc 1 531 0
 591 005a 1C60     		str	r4, [r3]
 592              		.loc 1 535 0
 593 005c 07B0     		add	sp, sp, #28
 594              		.cfi_remember_state
 595              		.cfi_def_cfa_offset 20
 596              		@ sp needed
 597 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 598              	.LVL51:
 599              	.L27:
 600              		.cfi_restore_state
 534:../asf/sam/drivers/tc/tc.c **** }
 601              		.loc 1 534 0
 602 0060 0120     		movs	r0, #1
 603              	.LVL52:
 604 0062 F4E7     		b	.L19
 605              		.cfi_endproc
 606              	.LFE159:
 607              		.size	tc_find_mck_divisor, .-tc_find_mck_divisor
 608              		.section	.text.tc_enable_qdec_interrupt,"ax",%progbits
 609              		.align	1
 610              		.p2align 2,,3
 611              		.global	tc_enable_qdec_interrupt
 612              		.syntax unified
 613              		.thumb
 614              		.thumb_func
 615              		.fpu fpv5-d16
 616              		.type	tc_enable_qdec_interrupt, %function
 617              	tc_enable_qdec_interrupt:
 618              	.LFB160:
 536:../asf/sam/drivers/tc/tc.c **** 
 537:../asf/sam/drivers/tc/tc.c **** #endif /* (!SAM4L) */
 538:../asf/sam/drivers/tc/tc.c **** 
 539:../asf/sam/drivers/tc/tc.c **** #if (SAM4L) || defined(__DOXYGEN__)
 540:../asf/sam/drivers/tc/tc.c **** /**
 541:../asf/sam/drivers/tc/tc.c ****  * \brief Find the best PBA/MCK divisor.
 542:../asf/sam/drivers/tc/tc.c ****  *
 543:../asf/sam/drivers/tc/tc.c ****  * <b>For SAM4L devices:</b> Finds the best PBA divisor given the timer
 544:../asf/sam/drivers/tc/tc.c ****  * frequency and PBA clock. The result is guaranteed to satisfy the following equation:
 545:../asf/sam/drivers/tc/tc.c ****  * \code  (ul_pbaclk / (2* DIV * 65536)) <= freq <= (ul_pbaclk / (2* DIV)) \endcode
 546:../asf/sam/drivers/tc/tc.c ****  * with DIV being the lowest possible value, to maximize timing adjust resolution.
 547:../asf/sam/drivers/tc/tc.c ****  *
 548:../asf/sam/drivers/tc/tc.c ****  * <b>For non SAM4L devices:</b> Finds the best MCK divisor given the timer frequency
 549:../asf/sam/drivers/tc/tc.c ****  * and MCK. The result is guaranteed to satisfy the following equation:
 550:../asf/sam/drivers/tc/tc.c ****  * \code (MCK / (DIV * 65536)) <= freq <= (MCK / DIV) \endcode
 551:../asf/sam/drivers/tc/tc.c ****  * with DIV being the lowest possible value, to maximize timing adjust resolution.
 552:../asf/sam/drivers/tc/tc.c ****  *
 553:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_freq     Desired timer frequency
 554:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_mck      PBA clock frequency
 555:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_uldiv    Divisor value
 556:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_ultcclks TCCLKS field value for divisor
 557:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_boardmck Board clock frequency (set to 0 for SAM4L devices)
 558:../asf/sam/drivers/tc/tc.c ****  *
 559:../asf/sam/drivers/tc/tc.c ****  * \return The divisor found status.
ARM GAS  /tmp/ccfKQ0CH.s 			page 22


 560:../asf/sam/drivers/tc/tc.c ****  * \retval 0 No suitable divisor was found
 561:../asf/sam/drivers/tc/tc.c ****  * \retval 1 A divisor was found
 562:../asf/sam/drivers/tc/tc.c ****  */
 563:../asf/sam/drivers/tc/tc.c **** uint32_t tc_find_mck_divisor(
 564:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_freq,
 565:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_mck,
 566:../asf/sam/drivers/tc/tc.c **** 		uint32_t *p_uldiv,
 567:../asf/sam/drivers/tc/tc.c **** 		uint32_t *p_ultcclks,
 568:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_boardmck)
 569:../asf/sam/drivers/tc/tc.c **** {
 570:../asf/sam/drivers/tc/tc.c **** 	const uint32_t divisors[5] = { 0, 2, 8, 32, 128};
 571:../asf/sam/drivers/tc/tc.c **** 	uint32_t ul_index;
 572:../asf/sam/drivers/tc/tc.c **** 	uint32_t ul_high, ul_low;
 573:../asf/sam/drivers/tc/tc.c **** 
 574:../asf/sam/drivers/tc/tc.c **** 	UNUSED(ul_boardmck);
 575:../asf/sam/drivers/tc/tc.c **** 
 576:../asf/sam/drivers/tc/tc.c **** 	/*  Satisfy frequency bound. */
 577:../asf/sam/drivers/tc/tc.c **** 	for (ul_index = 1;
 578:../asf/sam/drivers/tc/tc.c **** 			ul_index < (sizeof(divisors) / sizeof(divisors[0]));
 579:../asf/sam/drivers/tc/tc.c **** 			ul_index++) {
 580:../asf/sam/drivers/tc/tc.c **** 		ul_high = ul_mck / divisors[ul_index];
 581:../asf/sam/drivers/tc/tc.c **** 		ul_low  = ul_high / TC_DIV_FACTOR;
 582:../asf/sam/drivers/tc/tc.c **** 		if (ul_freq > ul_high) {
 583:../asf/sam/drivers/tc/tc.c **** 			return 0;
 584:../asf/sam/drivers/tc/tc.c **** 		} else if (ul_freq >= ul_low) {
 585:../asf/sam/drivers/tc/tc.c **** 			break;
 586:../asf/sam/drivers/tc/tc.c **** 		}
 587:../asf/sam/drivers/tc/tc.c **** 	}
 588:../asf/sam/drivers/tc/tc.c **** 	if (ul_index >= (sizeof(divisors) / sizeof(divisors[0]))) {
 589:../asf/sam/drivers/tc/tc.c **** 		return 0;
 590:../asf/sam/drivers/tc/tc.c **** 	}
 591:../asf/sam/drivers/tc/tc.c **** 
 592:../asf/sam/drivers/tc/tc.c **** 	/*  Store results. */
 593:../asf/sam/drivers/tc/tc.c **** 	if (p_uldiv) {
 594:../asf/sam/drivers/tc/tc.c **** 		*p_uldiv = divisors[ul_index];
 595:../asf/sam/drivers/tc/tc.c **** 	}
 596:../asf/sam/drivers/tc/tc.c **** 
 597:../asf/sam/drivers/tc/tc.c **** 	if (p_ultcclks) {
 598:../asf/sam/drivers/tc/tc.c **** 		*p_ultcclks = ul_index;
 599:../asf/sam/drivers/tc/tc.c **** 	}
 600:../asf/sam/drivers/tc/tc.c **** 
 601:../asf/sam/drivers/tc/tc.c **** 	return 1;
 602:../asf/sam/drivers/tc/tc.c **** }
 603:../asf/sam/drivers/tc/tc.c **** 
 604:../asf/sam/drivers/tc/tc.c **** #endif /* (SAM4L) || defined(__DOXYGEN__) */
 605:../asf/sam/drivers/tc/tc.c **** 
 606:../asf/sam/drivers/tc/tc.c **** #if (!SAM4L && !SAMG) || defined(__DOXYGEN__)
 607:../asf/sam/drivers/tc/tc.c **** 
 608:../asf/sam/drivers/tc/tc.c **** /**
 609:../asf/sam/drivers/tc/tc.c ****  * \brief Enable TC QDEC interrupts.
 610:../asf/sam/drivers/tc/tc.c ****  *
 611:../asf/sam/drivers/tc/tc.c ****  * \note This function is not available on SAM4L or SAMG devices.
 612:../asf/sam/drivers/tc/tc.c ****  *
 613:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc      Module hardware register base address pointer
 614:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_sources A bitmask of QDEC interrupts to be enabled
 615:../asf/sam/drivers/tc/tc.c ****  *
 616:../asf/sam/drivers/tc/tc.c ****  * Where the input parameter <i>ul_sources</i> can be one or more of the following:
ARM GAS  /tmp/ccfKQ0CH.s 			page 23


 617:../asf/sam/drivers/tc/tc.c ****  * <table>
 618:../asf/sam/drivers/tc/tc.c ****  * <tr>
 619:../asf/sam/drivers/tc/tc.c ****  *    <th>Parameter Value</th>
 620:../asf/sam/drivers/tc/tc.c ****  *    <th>Description</th>
 621:../asf/sam/drivers/tc/tc.c ****  * </tr>
 622:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_QIER_IDX</td><td>Enable the rising edge detected on IDX input interrupt</td></tr>
 623:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_QIER_DIRCHG</td><td>Enable the change in rotation direction detected interrupt</t
 624:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_QIER_QERR</td><td>Enable the quadrature error detected on PHA/PHB interrupt</td><
 625:../asf/sam/drivers/tc/tc.c ****  * </table>
 626:../asf/sam/drivers/tc/tc.c ****  */
 627:../asf/sam/drivers/tc/tc.c **** void tc_enable_qdec_interrupt(
 628:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 629:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_sources)
 630:../asf/sam/drivers/tc/tc.c **** {
 619              		.loc 1 630 0
 620              		.cfi_startproc
 621              		@ args = 0, pretend = 0, frame = 0
 622              		@ frame_needed = 0, uses_anonymous_args = 0
 623              		@ link register save eliminated.
 624              	.LVL53:
 631:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 632:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 633:../asf/sam/drivers/tc/tc.c **** 	
 634:../asf/sam/drivers/tc/tc.c **** 	p_tc->TC_QIER = ul_sources;
 625              		.loc 1 634 0
 626 0000 C0F8C810 		str	r1, [r0, #200]
 627 0004 7047     		bx	lr
 628              		.cfi_endproc
 629              	.LFE160:
 630              		.size	tc_enable_qdec_interrupt, .-tc_enable_qdec_interrupt
 631 0006 00BF     		.section	.text.tc_disable_qdec_interrupt,"ax",%progbits
 632              		.align	1
 633              		.p2align 2,,3
 634              		.global	tc_disable_qdec_interrupt
 635              		.syntax unified
 636              		.thumb
 637              		.thumb_func
 638              		.fpu fpv5-d16
 639              		.type	tc_disable_qdec_interrupt, %function
 640              	tc_disable_qdec_interrupt:
 641              	.LFB161:
 635:../asf/sam/drivers/tc/tc.c **** }
 636:../asf/sam/drivers/tc/tc.c **** 
 637:../asf/sam/drivers/tc/tc.c **** /**
 638:../asf/sam/drivers/tc/tc.c ****  * \brief Disable TC QDEC interrupts.
 639:../asf/sam/drivers/tc/tc.c ****  *
 640:../asf/sam/drivers/tc/tc.c ****  * \note This function is not available on SAM4L or SAMG devices.
 641:../asf/sam/drivers/tc/tc.c ****  *
 642:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc      Module hardware register base address pointer
 643:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_sources A bitmask of QDEC interrupts to be disabled
 644:../asf/sam/drivers/tc/tc.c ****  *
 645:../asf/sam/drivers/tc/tc.c ****  * Where the input parameter <i>ul_sources</i> can be one or more of the following:
 646:../asf/sam/drivers/tc/tc.c ****  * <table>
 647:../asf/sam/drivers/tc/tc.c ****  * <tr>
 648:../asf/sam/drivers/tc/tc.c ****  *    <th>Parameter Value</th>
 649:../asf/sam/drivers/tc/tc.c ****  *    <th>Description</th>
 650:../asf/sam/drivers/tc/tc.c ****  * </tr>
ARM GAS  /tmp/ccfKQ0CH.s 			page 24


 651:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_QIDR_IDX</td><td>Disable the rising edge detected on IDX input interrupt</td></tr
 652:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_QIDR_DIRCHG</td><td>Disable the change in rotation direction detected interrupt</
 653:../asf/sam/drivers/tc/tc.c ****  *     <tr><td>TC_QIDR_QERR</td><td>Disable the quadrature error detected on PHA/PHB interrupt</td>
 654:../asf/sam/drivers/tc/tc.c ****  * </table>
 655:../asf/sam/drivers/tc/tc.c ****  */
 656:../asf/sam/drivers/tc/tc.c **** void tc_disable_qdec_interrupt(
 657:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 658:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_sources)
 659:../asf/sam/drivers/tc/tc.c **** {
 642              		.loc 1 659 0
 643              		.cfi_startproc
 644              		@ args = 0, pretend = 0, frame = 0
 645              		@ frame_needed = 0, uses_anonymous_args = 0
 646              		@ link register save eliminated.
 647              	.LVL54:
 660:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 661:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 662:../asf/sam/drivers/tc/tc.c **** 	
 663:../asf/sam/drivers/tc/tc.c **** 	p_tc->TC_QIDR = ul_sources;
 648              		.loc 1 663 0
 649 0000 C0F8CC10 		str	r1, [r0, #204]
 650 0004 7047     		bx	lr
 651              		.cfi_endproc
 652              	.LFE161:
 653              		.size	tc_disable_qdec_interrupt, .-tc_disable_qdec_interrupt
 654 0006 00BF     		.section	.text.tc_get_qdec_interrupt_mask,"ax",%progbits
 655              		.align	1
 656              		.p2align 2,,3
 657              		.global	tc_get_qdec_interrupt_mask
 658              		.syntax unified
 659              		.thumb
 660              		.thumb_func
 661              		.fpu fpv5-d16
 662              		.type	tc_get_qdec_interrupt_mask, %function
 663              	tc_get_qdec_interrupt_mask:
 664              	.LFB162:
 664:../asf/sam/drivers/tc/tc.c **** }
 665:../asf/sam/drivers/tc/tc.c **** 
 666:../asf/sam/drivers/tc/tc.c **** /**
 667:../asf/sam/drivers/tc/tc.c ****  * \brief Read TC QDEC interrupt mask.
 668:../asf/sam/drivers/tc/tc.c ****  *
 669:../asf/sam/drivers/tc/tc.c ****  * \note This function is not available on SAM4L or SAMG devices.
 670:../asf/sam/drivers/tc/tc.c ****  *
 671:../asf/sam/drivers/tc/tc.c ****  * \param[in] p_tc Module hardware register base address pointer
 672:../asf/sam/drivers/tc/tc.c ****  *
 673:../asf/sam/drivers/tc/tc.c ****  * \return The QDEC interrupt mask value.
 674:../asf/sam/drivers/tc/tc.c ****  */
 675:../asf/sam/drivers/tc/tc.c **** uint32_t tc_get_qdec_interrupt_mask(
 676:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc)
 677:../asf/sam/drivers/tc/tc.c **** {
 665              		.loc 1 677 0
 666              		.cfi_startproc
 667              		@ args = 0, pretend = 0, frame = 0
 668              		@ frame_needed = 0, uses_anonymous_args = 0
 669              		@ link register save eliminated.
 670              	.LVL55:
 678:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
ARM GAS  /tmp/ccfKQ0CH.s 			page 25


 679:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 680:../asf/sam/drivers/tc/tc.c **** 	
 681:../asf/sam/drivers/tc/tc.c **** 	return p_tc->TC_QIMR;
 671              		.loc 1 681 0
 672 0000 D0F8D000 		ldr	r0, [r0, #208]
 673              	.LVL56:
 682:../asf/sam/drivers/tc/tc.c **** }
 674              		.loc 1 682 0
 675 0004 7047     		bx	lr
 676              		.cfi_endproc
 677              	.LFE162:
 678              		.size	tc_get_qdec_interrupt_mask, .-tc_get_qdec_interrupt_mask
 679 0006 00BF     		.section	.text.tc_get_qdec_interrupt_status,"ax",%progbits
 680              		.align	1
 681              		.p2align 2,,3
 682              		.global	tc_get_qdec_interrupt_status
 683              		.syntax unified
 684              		.thumb
 685              		.thumb_func
 686              		.fpu fpv5-d16
 687              		.type	tc_get_qdec_interrupt_status, %function
 688              	tc_get_qdec_interrupt_status:
 689              	.LFB163:
 683:../asf/sam/drivers/tc/tc.c **** 
 684:../asf/sam/drivers/tc/tc.c **** /**
 685:../asf/sam/drivers/tc/tc.c ****  * \brief Get current TC QDEC interrupt status.
 686:../asf/sam/drivers/tc/tc.c ****  *
 687:../asf/sam/drivers/tc/tc.c ****  * \note This function is not available on SAM4L or SAMG devices.
 688:../asf/sam/drivers/tc/tc.c ****  *
 689:../asf/sam/drivers/tc/tc.c ****  * \param[in] p_tc Module hardware register base address pointer
 690:../asf/sam/drivers/tc/tc.c ****  *
 691:../asf/sam/drivers/tc/tc.c ****  * \return The TC QDEC interrupt status.
 692:../asf/sam/drivers/tc/tc.c ****  */
 693:../asf/sam/drivers/tc/tc.c **** uint32_t tc_get_qdec_interrupt_status(
 694:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc)
 695:../asf/sam/drivers/tc/tc.c **** {
 690              		.loc 1 695 0
 691              		.cfi_startproc
 692              		@ args = 0, pretend = 0, frame = 0
 693              		@ frame_needed = 0, uses_anonymous_args = 0
 694              		@ link register save eliminated.
 695              	.LVL57:
 696:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 697:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 698:../asf/sam/drivers/tc/tc.c **** 	
 699:../asf/sam/drivers/tc/tc.c **** 	return p_tc->TC_QISR;
 696              		.loc 1 699 0
 697 0000 D0F8D400 		ldr	r0, [r0, #212]
 698              	.LVL58:
 700:../asf/sam/drivers/tc/tc.c **** }
 699              		.loc 1 700 0
 700 0004 7047     		bx	lr
 701              		.cfi_endproc
 702              	.LFE163:
 703              		.size	tc_get_qdec_interrupt_status, .-tc_get_qdec_interrupt_status
 704 0006 00BF     		.section	.text.tc_set_writeprotect,"ax",%progbits
 705              		.align	1
ARM GAS  /tmp/ccfKQ0CH.s 			page 26


 706              		.p2align 2,,3
 707              		.global	tc_set_writeprotect
 708              		.syntax unified
 709              		.thumb
 710              		.thumb_func
 711              		.fpu fpv5-d16
 712              		.type	tc_set_writeprotect, %function
 713              	tc_set_writeprotect:
 714              	.LFB164:
 701:../asf/sam/drivers/tc/tc.c **** 
 702:../asf/sam/drivers/tc/tc.c **** #endif /* (!SAM4L && !SAMG) || defined(__DOXYGEN__) */
 703:../asf/sam/drivers/tc/tc.c **** 
 704:../asf/sam/drivers/tc/tc.c **** #if (!SAM3U) || defined(__DOXYGEN__)
 705:../asf/sam/drivers/tc/tc.c **** 
 706:../asf/sam/drivers/tc/tc.c **** /**
 707:../asf/sam/drivers/tc/tc.c ****  * \brief Enable or disable write protection of TC registers.
 708:../asf/sam/drivers/tc/tc.c ****  *
 709:../asf/sam/drivers/tc/tc.c ****  * \note This function is not available on SAM3U devices.
 710:../asf/sam/drivers/tc/tc.c ****  *
 711:../asf/sam/drivers/tc/tc.c ****  * \param[out] p_tc     Module hardware register base address pointer
 712:../asf/sam/drivers/tc/tc.c ****  * \param[in] ul_enable 1 to enable, 0 to disable
 713:../asf/sam/drivers/tc/tc.c ****  */
 714:../asf/sam/drivers/tc/tc.c **** void tc_set_writeprotect(
 715:../asf/sam/drivers/tc/tc.c **** 		Tc *p_tc,
 716:../asf/sam/drivers/tc/tc.c **** 		uint32_t ul_enable)
 717:../asf/sam/drivers/tc/tc.c **** {
 715              		.loc 1 717 0
 716              		.cfi_startproc
 717              		@ args = 0, pretend = 0, frame = 0
 718              		@ frame_needed = 0, uses_anonymous_args = 0
 719              		@ link register save eliminated.
 720              	.LVL59:
 718:../asf/sam/drivers/tc/tc.c **** 	/* Validate inputs. */
 719:../asf/sam/drivers/tc/tc.c **** 	Assert(p_tc);
 720:../asf/sam/drivers/tc/tc.c **** 	
 721:../asf/sam/drivers/tc/tc.c **** 	if (ul_enable) {
 721              		.loc 1 721 0
 722 0000 19B9     		cbnz	r1, .L39
 722:../asf/sam/drivers/tc/tc.c **** 		p_tc->TC_WPMR = TC_WPMR_WPKEY_PASSWD | TC_WPMR_WPEN;
 723:../asf/sam/drivers/tc/tc.c **** 	} else {
 724:../asf/sam/drivers/tc/tc.c **** 		p_tc->TC_WPMR = TC_WPMR_WPKEY_PASSWD;
 723              		.loc 1 724 0
 724 0002 044B     		ldr	r3, .L40
 725 0004 C0F8E430 		str	r3, [r0, #228]
 726 0008 7047     		bx	lr
 727              	.L39:
 722:../asf/sam/drivers/tc/tc.c **** 		p_tc->TC_WPMR = TC_WPMR_WPKEY_PASSWD | TC_WPMR_WPEN;
 728              		.loc 1 722 0
 729 000a 034B     		ldr	r3, .L40+4
 730 000c C0F8E430 		str	r3, [r0, #228]
 731 0010 7047     		bx	lr
 732              	.L41:
 733 0012 00BF     		.align	2
 734              	.L40:
 735 0014 004D4954 		.word	1414089984
 736 0018 014D4954 		.word	1414089985
 737              		.cfi_endproc
ARM GAS  /tmp/ccfKQ0CH.s 			page 27


 738              	.LFE164:
 739              		.size	tc_set_writeprotect, .-tc_set_writeprotect
 740              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 741              		.align	2
 742              		.type	cpu_irq_critical_section_counter, %object
 743              		.size	cpu_irq_critical_section_counter, 4
 744              	cpu_irq_critical_section_counter:
 745 0000 00000000 		.space	4
 746              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 747              		.type	cpu_irq_prev_interrupt_state, %object
 748              		.size	cpu_irq_prev_interrupt_state, 1
 749              	cpu_irq_prev_interrupt_state:
 750 0000 00       		.space	1
 751              		.text
 752              	.Letext0:
 753              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 754              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 755              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 756              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 757              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/tc.h
 758              		.file 7 "/usr/include/newlib/sys/lock.h"
 759              		.file 8 "/usr/include/newlib/sys/_types.h"
 760              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 761              		.file 10 "/usr/include/newlib/sys/reent.h"
 762              		.file 11 "/usr/include/newlib/stdlib.h"
 763              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 764              		.section	.debug_info,"",%progbits
 765              	.Ldebug_info0:
 766 0000 8C100000 		.4byte	0x108c
 767 0004 0400     		.2byte	0x4
 768 0006 00000000 		.4byte	.Ldebug_abbrev0
 769 000a 04       		.byte	0x4
 770 000b 01       		.uleb128 0x1
 771 000c 53040000 		.4byte	.LASF196
 772 0010 0C       		.byte	0xc
 773 0011 B4010000 		.4byte	.LASF197
 774 0015 7C030000 		.4byte	.LASF198
 775 0019 00000000 		.4byte	.Ldebug_ranges0+0
 776 001d 00000000 		.4byte	0
 777 0021 00000000 		.4byte	.Ldebug_line0
 778 0025 02       		.uleb128 0x2
 779 0026 04       		.byte	0x4
 780 0027 05       		.byte	0x5
 781 0028 696E7400 		.ascii	"int\000"
 782 002c 03       		.uleb128 0x3
 783 002d 04       		.byte	0x4
 784 002e 07       		.byte	0x7
 785 002f AB050000 		.4byte	.LASF0
 786 0033 03       		.uleb128 0x3
 787 0034 01       		.byte	0x1
 788 0035 06       		.byte	0x6
 789 0036 1F010000 		.4byte	.LASF1
 790 003a 03       		.uleb128 0x3
 791 003b 01       		.byte	0x1
 792 003c 08       		.byte	0x8
 793 003d 31070000 		.4byte	.LASF2
 794 0041 03       		.uleb128 0x3
ARM GAS  /tmp/ccfKQ0CH.s 			page 28


 795 0042 02       		.byte	0x2
 796 0043 05       		.byte	0x5
 797 0044 00000000 		.4byte	.LASF3
 798 0048 03       		.uleb128 0x3
 799 0049 02       		.byte	0x2
 800 004a 07       		.byte	0x7
 801 004b FA020000 		.4byte	.LASF4
 802 004f 04       		.uleb128 0x4
 803 0050 E9060000 		.4byte	.LASF6
 804 0054 02       		.byte	0x2
 805 0055 3F       		.byte	0x3f
 806 0056 5A000000 		.4byte	0x5a
 807 005a 03       		.uleb128 0x3
 808 005b 04       		.byte	0x4
 809 005c 05       		.byte	0x5
 810 005d 80010000 		.4byte	.LASF5
 811 0061 04       		.uleb128 0x4
 812 0062 F3060000 		.4byte	.LASF7
 813 0066 02       		.byte	0x2
 814 0067 41       		.byte	0x41
 815 0068 6C000000 		.4byte	0x6c
 816 006c 03       		.uleb128 0x3
 817 006d 04       		.byte	0x4
 818 006e 07       		.byte	0x7
 819 006f CA020000 		.4byte	.LASF8
 820 0073 03       		.uleb128 0x3
 821 0074 08       		.byte	0x8
 822 0075 05       		.byte	0x5
 823 0076 D9010000 		.4byte	.LASF9
 824 007a 03       		.uleb128 0x3
 825 007b 08       		.byte	0x8
 826 007c 07       		.byte	0x7
 827 007d AD000000 		.4byte	.LASF10
 828 0081 04       		.uleb128 0x4
 829 0082 8B050000 		.4byte	.LASF11
 830 0086 03       		.byte	0x3
 831 0087 2C       		.byte	0x2c
 832 0088 4F000000 		.4byte	0x4f
 833 008c 05       		.uleb128 0x5
 834 008d 81000000 		.4byte	0x81
 835 0091 04       		.uleb128 0x4
 836 0092 86070000 		.4byte	.LASF12
 837 0096 03       		.byte	0x3
 838 0097 30       		.byte	0x30
 839 0098 61000000 		.4byte	0x61
 840 009c 05       		.uleb128 0x5
 841 009d 91000000 		.4byte	0x91
 842 00a1 06       		.uleb128 0x6
 843 00a2 9C000000 		.4byte	0x9c
 844 00a6 06       		.uleb128 0x6
 845 00a7 91000000 		.4byte	0x91
 846 00ab 07       		.uleb128 0x7
 847 00ac 04       		.byte	0x4
 848 00ad 03       		.uleb128 0x3
 849 00ae 04       		.byte	0x4
 850 00af 07       		.byte	0x7
 851 00b0 30040000 		.4byte	.LASF13
ARM GAS  /tmp/ccfKQ0CH.s 			page 29


 852 00b4 08       		.uleb128 0x8
 853 00b5 A1000000 		.4byte	0xa1
 854 00b9 C4000000 		.4byte	0xc4
 855 00bd 09       		.uleb128 0x9
 856 00be AD000000 		.4byte	0xad
 857 00c2 01       		.byte	0x1
 858 00c3 00       		.byte	0
 859 00c4 06       		.uleb128 0x6
 860 00c5 B4000000 		.4byte	0xb4
 861 00c9 05       		.uleb128 0x5
 862 00ca C4000000 		.4byte	0xc4
 863 00ce 0A       		.uleb128 0xa
 864 00cf D8000000 		.4byte	.LASF14
 865 00d3 04       		.byte	0x4
 866 00d4 6508     		.2byte	0x865
 867 00d6 8C000000 		.4byte	0x8c
 868 00da 0B       		.uleb128 0xb
 869 00db B2020000 		.4byte	.LASF15
 870 00df 05       		.byte	0x5
 871 00e0 3A       		.byte	0x3a
 872 00e1 91000000 		.4byte	0x91
 873 00e5 08       		.uleb128 0x8
 874 00e6 A1000000 		.4byte	0xa1
 875 00ea F5000000 		.4byte	0xf5
 876 00ee 09       		.uleb128 0x9
 877 00ef AD000000 		.4byte	0xad
 878 00f3 02       		.byte	0x2
 879 00f4 00       		.byte	0
 880 00f5 06       		.uleb128 0x6
 881 00f6 E5000000 		.4byte	0xe5
 882 00fa 05       		.uleb128 0x5
 883 00fb F5000000 		.4byte	0xf5
 884 00ff 0C       		.uleb128 0xc
 885 0100 40       		.byte	0x40
 886 0101 06       		.byte	0x6
 887 0102 38       		.byte	0x38
 888 0103 B0010000 		.4byte	0x1b0
 889 0107 0D       		.uleb128 0xd
 890 0108 2B010000 		.4byte	.LASF16
 891 010c 06       		.byte	0x6
 892 010d 39       		.byte	0x39
 893 010e 9C000000 		.4byte	0x9c
 894 0112 00       		.byte	0
 895 0113 0D       		.uleb128 0xd
 896 0114 61000000 		.4byte	.LASF17
 897 0118 06       		.byte	0x6
 898 0119 3A       		.byte	0x3a
 899 011a 9C000000 		.4byte	0x9c
 900 011e 04       		.byte	0x4
 901 011f 0D       		.uleb128 0xd
 902 0120 12000000 		.4byte	.LASF18
 903 0124 06       		.byte	0x6
 904 0125 3B       		.byte	0x3b
 905 0126 9C000000 		.4byte	0x9c
 906 012a 08       		.byte	0x8
 907 012b 0D       		.uleb128 0xd
 908 012c 1D060000 		.4byte	.LASF19
ARM GAS  /tmp/ccfKQ0CH.s 			page 30


 909 0130 06       		.byte	0x6
 910 0131 3C       		.byte	0x3c
 911 0132 A1000000 		.4byte	0xa1
 912 0136 0C       		.byte	0xc
 913 0137 0D       		.uleb128 0xd
 914 0138 DF050000 		.4byte	.LASF20
 915 013c 06       		.byte	0x6
 916 013d 3D       		.byte	0x3d
 917 013e A1000000 		.4byte	0xa1
 918 0142 10       		.byte	0x10
 919 0143 0D       		.uleb128 0xd
 920 0144 53050000 		.4byte	.LASF21
 921 0148 06       		.byte	0x6
 922 0149 3E       		.byte	0x3e
 923 014a 9C000000 		.4byte	0x9c
 924 014e 14       		.byte	0x14
 925 014f 0D       		.uleb128 0xd
 926 0150 59050000 		.4byte	.LASF22
 927 0154 06       		.byte	0x6
 928 0155 3F       		.byte	0x3f
 929 0156 9C000000 		.4byte	0x9c
 930 015a 18       		.byte	0x18
 931 015b 0D       		.uleb128 0xd
 932 015c 5F050000 		.4byte	.LASF23
 933 0160 06       		.byte	0x6
 934 0161 40       		.byte	0x40
 935 0162 9C000000 		.4byte	0x9c
 936 0166 1C       		.byte	0x1c
 937 0167 0D       		.uleb128 0xd
 938 0168 C5060000 		.4byte	.LASF24
 939 016c 06       		.byte	0x6
 940 016d 41       		.byte	0x41
 941 016e A1000000 		.4byte	0xa1
 942 0172 20       		.byte	0x20
 943 0173 0D       		.uleb128 0xd
 944 0174 8F070000 		.4byte	.LASF25
 945 0178 06       		.byte	0x6
 946 0179 42       		.byte	0x42
 947 017a 9C000000 		.4byte	0x9c
 948 017e 24       		.byte	0x24
 949 017f 0D       		.uleb128 0xd
 950 0180 8F060000 		.4byte	.LASF26
 951 0184 06       		.byte	0x6
 952 0185 43       		.byte	0x43
 953 0186 9C000000 		.4byte	0x9c
 954 018a 28       		.byte	0x28
 955 018b 0D       		.uleb128 0xd
 956 018c 54080000 		.4byte	.LASF27
 957 0190 06       		.byte	0x6
 958 0191 44       		.byte	0x44
 959 0192 A1000000 		.4byte	0xa1
 960 0196 2C       		.byte	0x2c
 961 0197 0D       		.uleb128 0xd
 962 0198 A4050000 		.4byte	.LASF28
 963 019c 06       		.byte	0x6
 964 019d 45       		.byte	0x45
 965 019e 9C000000 		.4byte	0x9c
ARM GAS  /tmp/ccfKQ0CH.s 			page 31


 966 01a2 30       		.byte	0x30
 967 01a3 0D       		.uleb128 0xd
 968 01a4 3E010000 		.4byte	.LASF29
 969 01a8 06       		.byte	0x6
 970 01a9 46       		.byte	0x46
 971 01aa FA000000 		.4byte	0xfa
 972 01ae 34       		.byte	0x34
 973 01af 00       		.byte	0
 974 01b0 04       		.uleb128 0x4
 975 01b1 5B080000 		.4byte	.LASF30
 976 01b5 06       		.byte	0x6
 977 01b6 47       		.byte	0x47
 978 01b7 FF000000 		.4byte	0xff
 979 01bb 0C       		.uleb128 0xc
 980 01bc E8       		.byte	0xe8
 981 01bd 06       		.byte	0x6
 982 01be 4A       		.byte	0x4a
 983 01bf 3C020000 		.4byte	0x23c
 984 01c3 0D       		.uleb128 0xd
 985 01c4 A2000000 		.4byte	.LASF31
 986 01c8 06       		.byte	0x6
 987 01c9 4B       		.byte	0x4b
 988 01ca 3C020000 		.4byte	0x23c
 989 01ce 00       		.byte	0
 990 01cf 0D       		.uleb128 0xd
 991 01d0 96070000 		.4byte	.LASF32
 992 01d4 06       		.byte	0x6
 993 01d5 4C       		.byte	0x4c
 994 01d6 9C000000 		.4byte	0x9c
 995 01da C0       		.byte	0xc0
 996 01db 0D       		.uleb128 0xd
 997 01dc 89010000 		.4byte	.LASF33
 998 01e0 06       		.byte	0x6
 999 01e1 4D       		.byte	0x4d
 1000 01e2 9C000000 		.4byte	0x9c
 1001 01e6 C4       		.byte	0xc4
 1002 01e7 0D       		.uleb128 0xd
 1003 01e8 E7070000 		.4byte	.LASF34
 1004 01ec 06       		.byte	0x6
 1005 01ed 4E       		.byte	0x4e
 1006 01ee 9C000000 		.4byte	0x9c
 1007 01f2 C8       		.byte	0xc8
 1008 01f3 0D       		.uleb128 0xd
 1009 01f4 CB060000 		.4byte	.LASF35
 1010 01f8 06       		.byte	0x6
 1011 01f9 4F       		.byte	0x4f
 1012 01fa 9C000000 		.4byte	0x9c
 1013 01fe CC       		.byte	0xcc
 1014 01ff 0D       		.uleb128 0xd
 1015 0200 20070000 		.4byte	.LASF36
 1016 0204 06       		.byte	0x6
 1017 0205 50       		.byte	0x50
 1018 0206 A1000000 		.4byte	0xa1
 1019 020a D0       		.byte	0xd0
 1020 020b 0D       		.uleb128 0xd
 1021 020c 96060000 		.4byte	.LASF37
 1022 0210 06       		.byte	0x6
ARM GAS  /tmp/ccfKQ0CH.s 			page 32


 1023 0211 51       		.byte	0x51
 1024 0212 A1000000 		.4byte	0xa1
 1025 0216 D4       		.byte	0xd4
 1026 0217 0D       		.uleb128 0xd
 1027 0218 D4030000 		.4byte	.LASF38
 1028 021c 06       		.byte	0x6
 1029 021d 52       		.byte	0x52
 1030 021e 9C000000 		.4byte	0x9c
 1031 0222 D8       		.byte	0xd8
 1032 0223 0D       		.uleb128 0xd
 1033 0224 3E010000 		.4byte	.LASF29
 1034 0228 06       		.byte	0x6
 1035 0229 53       		.byte	0x53
 1036 022a C9000000 		.4byte	0xc9
 1037 022e DC       		.byte	0xdc
 1038 022f 0D       		.uleb128 0xd
 1039 0230 43000000 		.4byte	.LASF39
 1040 0234 06       		.byte	0x6
 1041 0235 54       		.byte	0x54
 1042 0236 9C000000 		.4byte	0x9c
 1043 023a E4       		.byte	0xe4
 1044 023b 00       		.byte	0
 1045 023c 08       		.uleb128 0x8
 1046 023d B0010000 		.4byte	0x1b0
 1047 0241 4C020000 		.4byte	0x24c
 1048 0245 09       		.uleb128 0x9
 1049 0246 AD000000 		.4byte	0xad
 1050 024a 02       		.byte	0x2
 1051 024b 00       		.byte	0
 1052 024c 0E       		.uleb128 0xe
 1053 024d 546300   		.ascii	"Tc\000"
 1054 0250 06       		.byte	0x6
 1055 0251 55       		.byte	0x55
 1056 0252 BB010000 		.4byte	0x1bb
 1057 0256 04       		.uleb128 0x4
 1058 0257 65050000 		.4byte	.LASF40
 1059 025b 07       		.byte	0x7
 1060 025c 07       		.byte	0x7
 1061 025d 25000000 		.4byte	0x25
 1062 0261 04       		.uleb128 0x4
 1063 0262 23050000 		.4byte	.LASF41
 1064 0266 08       		.byte	0x8
 1065 0267 2C       		.byte	0x2c
 1066 0268 5A000000 		.4byte	0x5a
 1067 026c 04       		.uleb128 0x4
 1068 026d 0A000000 		.4byte	.LASF42
 1069 0271 08       		.byte	0x8
 1070 0272 72       		.byte	0x72
 1071 0273 5A000000 		.4byte	0x5a
 1072 0277 0F       		.uleb128 0xf
 1073 0278 2A050000 		.4byte	.LASF43
 1074 027c 09       		.byte	0x9
 1075 027d 6501     		.2byte	0x165
 1076 027f 2C000000 		.4byte	0x2c
 1077 0283 10       		.uleb128 0x10
 1078 0284 04       		.byte	0x4
 1079 0285 08       		.byte	0x8
ARM GAS  /tmp/ccfKQ0CH.s 			page 33


 1080 0286 A6       		.byte	0xa6
 1081 0287 A2020000 		.4byte	0x2a2
 1082 028b 11       		.uleb128 0x11
 1083 028c 3D030000 		.4byte	.LASF44
 1084 0290 08       		.byte	0x8
 1085 0291 A8       		.byte	0xa8
 1086 0292 77020000 		.4byte	0x277
 1087 0296 11       		.uleb128 0x11
 1088 0297 AB020000 		.4byte	.LASF45
 1089 029b 08       		.byte	0x8
 1090 029c A9       		.byte	0xa9
 1091 029d A2020000 		.4byte	0x2a2
 1092 02a1 00       		.byte	0
 1093 02a2 08       		.uleb128 0x8
 1094 02a3 3A000000 		.4byte	0x3a
 1095 02a7 B2020000 		.4byte	0x2b2
 1096 02ab 09       		.uleb128 0x9
 1097 02ac AD000000 		.4byte	0xad
 1098 02b0 03       		.byte	0x3
 1099 02b1 00       		.byte	0
 1100 02b2 0C       		.uleb128 0xc
 1101 02b3 08       		.byte	0x8
 1102 02b4 08       		.byte	0x8
 1103 02b5 A3       		.byte	0xa3
 1104 02b6 D3020000 		.4byte	0x2d3
 1105 02ba 0D       		.uleb128 0xd
 1106 02bb 6D060000 		.4byte	.LASF46
 1107 02bf 08       		.byte	0x8
 1108 02c0 A5       		.byte	0xa5
 1109 02c1 25000000 		.4byte	0x25
 1110 02c5 00       		.byte	0
 1111 02c6 0D       		.uleb128 0xd
 1112 02c7 75060000 		.4byte	.LASF47
 1113 02cb 08       		.byte	0x8
 1114 02cc AA       		.byte	0xaa
 1115 02cd 83020000 		.4byte	0x283
 1116 02d1 04       		.byte	0x4
 1117 02d2 00       		.byte	0
 1118 02d3 04       		.uleb128 0x4
 1119 02d4 F6050000 		.4byte	.LASF48
 1120 02d8 08       		.byte	0x8
 1121 02d9 AB       		.byte	0xab
 1122 02da B2020000 		.4byte	0x2b2
 1123 02de 04       		.uleb128 0x4
 1124 02df F4040000 		.4byte	.LASF49
 1125 02e3 08       		.byte	0x8
 1126 02e4 AF       		.byte	0xaf
 1127 02e5 56020000 		.4byte	0x256
 1128 02e9 04       		.uleb128 0x4
 1129 02ea 44070000 		.4byte	.LASF50
 1130 02ee 0A       		.byte	0xa
 1131 02ef 16       		.byte	0x16
 1132 02f0 6C000000 		.4byte	0x6c
 1133 02f4 12       		.uleb128 0x12
 1134 02f5 5D020000 		.4byte	.LASF55
 1135 02f9 18       		.byte	0x18
 1136 02fa 0A       		.byte	0xa
ARM GAS  /tmp/ccfKQ0CH.s 			page 34


 1137 02fb 2D       		.byte	0x2d
 1138 02fc 47030000 		.4byte	0x347
 1139 0300 0D       		.uleb128 0xd
 1140 0301 0D070000 		.4byte	.LASF51
 1141 0305 0A       		.byte	0xa
 1142 0306 2F       		.byte	0x2f
 1143 0307 47030000 		.4byte	0x347
 1144 030b 00       		.byte	0
 1145 030c 13       		.uleb128 0x13
 1146 030d 5F6B00   		.ascii	"_k\000"
 1147 0310 0A       		.byte	0xa
 1148 0311 30       		.byte	0x30
 1149 0312 25000000 		.4byte	0x25
 1150 0316 04       		.byte	0x4
 1151 0317 0D       		.uleb128 0xd
 1152 0318 58060000 		.4byte	.LASF52
 1153 031c 0A       		.byte	0xa
 1154 031d 30       		.byte	0x30
 1155 031e 25000000 		.4byte	0x25
 1156 0322 08       		.byte	0x8
 1157 0323 0D       		.uleb128 0xd
 1158 0324 46020000 		.4byte	.LASF53
 1159 0328 0A       		.byte	0xa
 1160 0329 30       		.byte	0x30
 1161 032a 25000000 		.4byte	0x25
 1162 032e 0C       		.byte	0xc
 1163 032f 0D       		.uleb128 0xd
 1164 0330 AF010000 		.4byte	.LASF54
 1165 0334 0A       		.byte	0xa
 1166 0335 30       		.byte	0x30
 1167 0336 25000000 		.4byte	0x25
 1168 033a 10       		.byte	0x10
 1169 033b 13       		.uleb128 0x13
 1170 033c 5F7800   		.ascii	"_x\000"
 1171 033f 0A       		.byte	0xa
 1172 0340 31       		.byte	0x31
 1173 0341 4D030000 		.4byte	0x34d
 1174 0345 14       		.byte	0x14
 1175 0346 00       		.byte	0
 1176 0347 14       		.uleb128 0x14
 1177 0348 04       		.byte	0x4
 1178 0349 F4020000 		.4byte	0x2f4
 1179 034d 08       		.uleb128 0x8
 1180 034e E9020000 		.4byte	0x2e9
 1181 0352 5D030000 		.4byte	0x35d
 1182 0356 09       		.uleb128 0x9
 1183 0357 AD000000 		.4byte	0xad
 1184 035b 00       		.byte	0
 1185 035c 00       		.byte	0
 1186 035d 12       		.uleb128 0x12
 1187 035e A6020000 		.4byte	.LASF56
 1188 0362 24       		.byte	0x24
 1189 0363 0A       		.byte	0xa
 1190 0364 35       		.byte	0x35
 1191 0365 D6030000 		.4byte	0x3d6
 1192 0369 0D       		.uleb128 0xd
 1193 036a 9D070000 		.4byte	.LASF57
ARM GAS  /tmp/ccfKQ0CH.s 			page 35


 1194 036e 0A       		.byte	0xa
 1195 036f 37       		.byte	0x37
 1196 0370 25000000 		.4byte	0x25
 1197 0374 00       		.byte	0
 1198 0375 0D       		.uleb128 0xd
 1199 0376 7F080000 		.4byte	.LASF58
 1200 037a 0A       		.byte	0xa
 1201 037b 38       		.byte	0x38
 1202 037c 25000000 		.4byte	0x25
 1203 0380 04       		.byte	0x4
 1204 0381 0D       		.uleb128 0xd
 1205 0382 48010000 		.4byte	.LASF59
 1206 0386 0A       		.byte	0xa
 1207 0387 39       		.byte	0x39
 1208 0388 25000000 		.4byte	0x25
 1209 038c 08       		.byte	0x8
 1210 038d 0D       		.uleb128 0xd
 1211 038e D6080000 		.4byte	.LASF60
 1212 0392 0A       		.byte	0xa
 1213 0393 3A       		.byte	0x3a
 1214 0394 25000000 		.4byte	0x25
 1215 0398 0C       		.byte	0xc
 1216 0399 0D       		.uleb128 0xd
 1217 039a FD040000 		.4byte	.LASF61
 1218 039e 0A       		.byte	0xa
 1219 039f 3B       		.byte	0x3b
 1220 03a0 25000000 		.4byte	0x25
 1221 03a4 10       		.byte	0x10
 1222 03a5 0D       		.uleb128 0xd
 1223 03a6 CA030000 		.4byte	.LASF62
 1224 03aa 0A       		.byte	0xa
 1225 03ab 3C       		.byte	0x3c
 1226 03ac 25000000 		.4byte	0x25
 1227 03b0 14       		.byte	0x14
 1228 03b1 0D       		.uleb128 0xd
 1229 03b2 AE070000 		.4byte	.LASF63
 1230 03b6 0A       		.byte	0xa
 1231 03b7 3D       		.byte	0x3d
 1232 03b8 25000000 		.4byte	0x25
 1233 03bc 18       		.byte	0x18
 1234 03bd 0D       		.uleb128 0xd
 1235 03be CE050000 		.4byte	.LASF64
 1236 03c2 0A       		.byte	0xa
 1237 03c3 3E       		.byte	0x3e
 1238 03c4 25000000 		.4byte	0x25
 1239 03c8 1C       		.byte	0x1c
 1240 03c9 0D       		.uleb128 0xd
 1241 03ca 65080000 		.4byte	.LASF65
 1242 03ce 0A       		.byte	0xa
 1243 03cf 3F       		.byte	0x3f
 1244 03d0 25000000 		.4byte	0x25
 1245 03d4 20       		.byte	0x20
 1246 03d5 00       		.byte	0
 1247 03d6 15       		.uleb128 0x15
 1248 03d7 62010000 		.4byte	.LASF66
 1249 03db 0801     		.2byte	0x108
 1250 03dd 0A       		.byte	0xa
ARM GAS  /tmp/ccfKQ0CH.s 			page 36


 1251 03de 48       		.byte	0x48
 1252 03df 16040000 		.4byte	0x416
 1253 03e3 0D       		.uleb128 0xd
 1254 03e4 32020000 		.4byte	.LASF67
 1255 03e8 0A       		.byte	0xa
 1256 03e9 49       		.byte	0x49
 1257 03ea 16040000 		.4byte	0x416
 1258 03ee 00       		.byte	0
 1259 03ef 0D       		.uleb128 0xd
 1260 03f0 93050000 		.4byte	.LASF68
 1261 03f4 0A       		.byte	0xa
 1262 03f5 4A       		.byte	0x4a
 1263 03f6 16040000 		.4byte	0x416
 1264 03fa 80       		.byte	0x80
 1265 03fb 16       		.uleb128 0x16
 1266 03fc 28070000 		.4byte	.LASF69
 1267 0400 0A       		.byte	0xa
 1268 0401 4C       		.byte	0x4c
 1269 0402 E9020000 		.4byte	0x2e9
 1270 0406 0001     		.2byte	0x100
 1271 0408 16       		.uleb128 0x16
 1272 0409 A7010000 		.4byte	.LASF70
 1273 040d 0A       		.byte	0xa
 1274 040e 4F       		.byte	0x4f
 1275 040f E9020000 		.4byte	0x2e9
 1276 0413 0401     		.2byte	0x104
 1277 0415 00       		.byte	0
 1278 0416 08       		.uleb128 0x8
 1279 0417 AB000000 		.4byte	0xab
 1280 041b 26040000 		.4byte	0x426
 1281 041f 09       		.uleb128 0x9
 1282 0420 AD000000 		.4byte	0xad
 1283 0424 1F       		.byte	0x1f
 1284 0425 00       		.byte	0
 1285 0426 15       		.uleb128 0x15
 1286 0427 06050000 		.4byte	.LASF71
 1287 042b 9001     		.2byte	0x190
 1288 042d 0A       		.byte	0xa
 1289 042e 5B       		.byte	0x5b
 1290 042f 64040000 		.4byte	0x464
 1291 0433 0D       		.uleb128 0xd
 1292 0434 0D070000 		.4byte	.LASF51
 1293 0438 0A       		.byte	0xa
 1294 0439 5C       		.byte	0x5c
 1295 043a 64040000 		.4byte	0x464
 1296 043e 00       		.byte	0
 1297 043f 0D       		.uleb128 0xd
 1298 0440 2F060000 		.4byte	.LASF72
 1299 0444 0A       		.byte	0xa
 1300 0445 5D       		.byte	0x5d
 1301 0446 25000000 		.4byte	0x25
 1302 044a 04       		.byte	0x4
 1303 044b 0D       		.uleb128 0xd
 1304 044c 3A020000 		.4byte	.LASF73
 1305 0450 0A       		.byte	0xa
 1306 0451 5F       		.byte	0x5f
 1307 0452 6A040000 		.4byte	0x46a
ARM GAS  /tmp/ccfKQ0CH.s 			page 37


 1308 0456 08       		.byte	0x8
 1309 0457 0D       		.uleb128 0xd
 1310 0458 62010000 		.4byte	.LASF66
 1311 045c 0A       		.byte	0xa
 1312 045d 60       		.byte	0x60
 1313 045e D6030000 		.4byte	0x3d6
 1314 0462 88       		.byte	0x88
 1315 0463 00       		.byte	0
 1316 0464 14       		.uleb128 0x14
 1317 0465 04       		.byte	0x4
 1318 0466 26040000 		.4byte	0x426
 1319 046a 08       		.uleb128 0x8
 1320 046b 7A040000 		.4byte	0x47a
 1321 046f 7A040000 		.4byte	0x47a
 1322 0473 09       		.uleb128 0x9
 1323 0474 AD000000 		.4byte	0xad
 1324 0478 1F       		.byte	0x1f
 1325 0479 00       		.byte	0
 1326 047a 14       		.uleb128 0x14
 1327 047b 04       		.byte	0x4
 1328 047c 80040000 		.4byte	0x480
 1329 0480 17       		.uleb128 0x17
 1330 0481 12       		.uleb128 0x12
 1331 0482 D8050000 		.4byte	.LASF74
 1332 0486 08       		.byte	0x8
 1333 0487 0A       		.byte	0xa
 1334 0488 73       		.byte	0x73
 1335 0489 A6040000 		.4byte	0x4a6
 1336 048d 0D       		.uleb128 0xd
 1337 048e 38010000 		.4byte	.LASF75
 1338 0492 0A       		.byte	0xa
 1339 0493 74       		.byte	0x74
 1340 0494 A6040000 		.4byte	0x4a6
 1341 0498 00       		.byte	0
 1342 0499 0D       		.uleb128 0xd
 1343 049a BF060000 		.4byte	.LASF76
 1344 049e 0A       		.byte	0xa
 1345 049f 75       		.byte	0x75
 1346 04a0 25000000 		.4byte	0x25
 1347 04a4 04       		.byte	0x4
 1348 04a5 00       		.byte	0
 1349 04a6 14       		.uleb128 0x14
 1350 04a7 04       		.byte	0x4
 1351 04a8 3A000000 		.4byte	0x3a
 1352 04ac 12       		.uleb128 0x12
 1353 04ad 01060000 		.4byte	.LASF77
 1354 04b1 68       		.byte	0x68
 1355 04b2 0A       		.byte	0xa
 1356 04b3 B3       		.byte	0xb3
 1357 04b4 D6050000 		.4byte	0x5d6
 1358 04b8 13       		.uleb128 0x13
 1359 04b9 5F7000   		.ascii	"_p\000"
 1360 04bc 0A       		.byte	0xa
 1361 04bd B4       		.byte	0xb4
 1362 04be A6040000 		.4byte	0x4a6
 1363 04c2 00       		.byte	0
 1364 04c3 13       		.uleb128 0x13
ARM GAS  /tmp/ccfKQ0CH.s 			page 38


 1365 04c4 5F7200   		.ascii	"_r\000"
 1366 04c7 0A       		.byte	0xa
 1367 04c8 B5       		.byte	0xb5
 1368 04c9 25000000 		.4byte	0x25
 1369 04cd 04       		.byte	0x4
 1370 04ce 13       		.uleb128 0x13
 1371 04cf 5F7700   		.ascii	"_w\000"
 1372 04d2 0A       		.byte	0xa
 1373 04d3 B6       		.byte	0xb6
 1374 04d4 25000000 		.4byte	0x25
 1375 04d8 08       		.byte	0x8
 1376 04d9 0D       		.uleb128 0xd
 1377 04da A0010000 		.4byte	.LASF78
 1378 04de 0A       		.byte	0xa
 1379 04df B7       		.byte	0xb7
 1380 04e0 41000000 		.4byte	0x41
 1381 04e4 0C       		.byte	0xc
 1382 04e5 0D       		.uleb128 0xd
 1383 04e6 DC020000 		.4byte	.LASF79
 1384 04ea 0A       		.byte	0xa
 1385 04eb B8       		.byte	0xb8
 1386 04ec 41000000 		.4byte	0x41
 1387 04f0 0E       		.byte	0xe
 1388 04f1 13       		.uleb128 0x13
 1389 04f2 5F626600 		.ascii	"_bf\000"
 1390 04f6 0A       		.byte	0xa
 1391 04f7 B9       		.byte	0xb9
 1392 04f8 81040000 		.4byte	0x481
 1393 04fc 10       		.byte	0x10
 1394 04fd 0D       		.uleb128 0xd
 1395 04fe CF000000 		.4byte	.LASF80
 1396 0502 0A       		.byte	0xa
 1397 0503 BA       		.byte	0xba
 1398 0504 25000000 		.4byte	0x25
 1399 0508 18       		.byte	0x18
 1400 0509 0D       		.uleb128 0xd
 1401 050a 70010000 		.4byte	.LASF81
 1402 050e 0A       		.byte	0xa
 1403 050f C1       		.byte	0xc1
 1404 0510 AB000000 		.4byte	0xab
 1405 0514 1C       		.byte	0x1c
 1406 0515 0D       		.uleb128 0xd
 1407 0516 77050000 		.4byte	.LASF82
 1408 051a 0A       		.byte	0xa
 1409 051b C3       		.byte	0xc3
 1410 051c 43070000 		.4byte	0x743
 1411 0520 20       		.byte	0x20
 1412 0521 0D       		.uleb128 0xd
 1413 0522 C3030000 		.4byte	.LASF83
 1414 0526 0A       		.byte	0xa
 1415 0527 C5       		.byte	0xc5
 1416 0528 6D070000 		.4byte	0x76d
 1417 052c 24       		.byte	0x24
 1418 052d 0D       		.uleb128 0xd
 1419 052e 7D060000 		.4byte	.LASF84
 1420 0532 0A       		.byte	0xa
 1421 0533 C8       		.byte	0xc8
ARM GAS  /tmp/ccfKQ0CH.s 			page 39


 1422 0534 91070000 		.4byte	0x791
 1423 0538 28       		.byte	0x28
 1424 0539 0D       		.uleb128 0xd
 1425 053a 18010000 		.4byte	.LASF85
 1426 053e 0A       		.byte	0xa
 1427 053f C9       		.byte	0xc9
 1428 0540 AB070000 		.4byte	0x7ab
 1429 0544 2C       		.byte	0x2c
 1430 0545 13       		.uleb128 0x13
 1431 0546 5F756200 		.ascii	"_ub\000"
 1432 054a 0A       		.byte	0xa
 1433 054b CC       		.byte	0xcc
 1434 054c 81040000 		.4byte	0x481
 1435 0550 30       		.byte	0x30
 1436 0551 13       		.uleb128 0x13
 1437 0552 5F757000 		.ascii	"_up\000"
 1438 0556 0A       		.byte	0xa
 1439 0557 CD       		.byte	0xcd
 1440 0558 A6040000 		.4byte	0x4a6
 1441 055c 38       		.byte	0x38
 1442 055d 13       		.uleb128 0x13
 1443 055e 5F757200 		.ascii	"_ur\000"
 1444 0562 0A       		.byte	0xa
 1445 0563 CE       		.byte	0xce
 1446 0564 25000000 		.4byte	0x25
 1447 0568 3C       		.byte	0x3c
 1448 0569 0D       		.uleb128 0xd
 1449 056a 32010000 		.4byte	.LASF86
 1450 056e 0A       		.byte	0xa
 1451 056f D1       		.byte	0xd1
 1452 0570 B1070000 		.4byte	0x7b1
 1453 0574 40       		.byte	0x40
 1454 0575 0D       		.uleb128 0xd
 1455 0576 46080000 		.4byte	.LASF87
 1456 057a 0A       		.byte	0xa
 1457 057b D2       		.byte	0xd2
 1458 057c C1070000 		.4byte	0x7c1
 1459 0580 43       		.byte	0x43
 1460 0581 13       		.uleb128 0x13
 1461 0582 5F6C6200 		.ascii	"_lb\000"
 1462 0586 0A       		.byte	0xa
 1463 0587 D5       		.byte	0xd5
 1464 0588 81040000 		.4byte	0x481
 1465 058c 44       		.byte	0x44
 1466 058d 0D       		.uleb128 0xd
 1467 058e B6060000 		.4byte	.LASF88
 1468 0592 0A       		.byte	0xa
 1469 0593 D8       		.byte	0xd8
 1470 0594 25000000 		.4byte	0x25
 1471 0598 4C       		.byte	0x4c
 1472 0599 0D       		.uleb128 0xd
 1473 059a 39040000 		.4byte	.LASF89
 1474 059e 0A       		.byte	0xa
 1475 059f D9       		.byte	0xd9
 1476 05a0 61020000 		.4byte	0x261
 1477 05a4 50       		.byte	0x50
 1478 05a5 0D       		.uleb128 0xd
ARM GAS  /tmp/ccfKQ0CH.s 			page 40


 1479 05a6 68000000 		.4byte	.LASF90
 1480 05aa 0A       		.byte	0xa
 1481 05ab DC       		.byte	0xdc
 1482 05ac F4050000 		.4byte	0x5f4
 1483 05b0 54       		.byte	0x54
 1484 05b1 0D       		.uleb128 0xd
 1485 05b2 76030000 		.4byte	.LASF91
 1486 05b6 0A       		.byte	0xa
 1487 05b7 E0       		.byte	0xe0
 1488 05b8 DE020000 		.4byte	0x2de
 1489 05bc 58       		.byte	0x58
 1490 05bd 0D       		.uleb128 0xd
 1491 05be 09060000 		.4byte	.LASF92
 1492 05c2 0A       		.byte	0xa
 1493 05c3 E2       		.byte	0xe2
 1494 05c4 D3020000 		.4byte	0x2d3
 1495 05c8 5C       		.byte	0x5c
 1496 05c9 0D       		.uleb128 0xd
 1497 05ca F4000000 		.4byte	.LASF93
 1498 05ce 0A       		.byte	0xa
 1499 05cf E3       		.byte	0xe3
 1500 05d0 25000000 		.4byte	0x25
 1501 05d4 64       		.byte	0x64
 1502 05d5 00       		.byte	0
 1503 05d6 18       		.uleb128 0x18
 1504 05d7 25000000 		.4byte	0x25
 1505 05db F4050000 		.4byte	0x5f4
 1506 05df 19       		.uleb128 0x19
 1507 05e0 F4050000 		.4byte	0x5f4
 1508 05e4 19       		.uleb128 0x19
 1509 05e5 AB000000 		.4byte	0xab
 1510 05e9 19       		.uleb128 0x19
 1511 05ea 31070000 		.4byte	0x731
 1512 05ee 19       		.uleb128 0x19
 1513 05ef 25000000 		.4byte	0x25
 1514 05f3 00       		.byte	0
 1515 05f4 14       		.uleb128 0x14
 1516 05f5 04       		.byte	0x4
 1517 05f6 FF050000 		.4byte	0x5ff
 1518 05fa 06       		.uleb128 0x6
 1519 05fb F4050000 		.4byte	0x5f4
 1520 05ff 1A       		.uleb128 0x1a
 1521 0600 60060000 		.4byte	.LASF94
 1522 0604 2804     		.2byte	0x428
 1523 0606 0A       		.byte	0xa
 1524 0607 3802     		.2byte	0x238
 1525 0609 31070000 		.4byte	0x731
 1526 060d 1B       		.uleb128 0x1b
 1527 060e AA060000 		.4byte	.LASF95
 1528 0612 0A       		.byte	0xa
 1529 0613 3A02     		.2byte	0x23a
 1530 0615 25000000 		.4byte	0x25
 1531 0619 00       		.byte	0
 1532 061a 1B       		.uleb128 0x1b
 1533 061b C4070000 		.4byte	.LASF96
 1534 061f 0A       		.byte	0xa
 1535 0620 3F02     		.2byte	0x23f
ARM GAS  /tmp/ccfKQ0CH.s 			page 41


 1536 0622 18080000 		.4byte	0x818
 1537 0626 04       		.byte	0x4
 1538 0627 1B       		.uleb128 0x1b
 1539 0628 A6070000 		.4byte	.LASF97
 1540 062c 0A       		.byte	0xa
 1541 062d 3F02     		.2byte	0x23f
 1542 062f 18080000 		.4byte	0x818
 1543 0633 08       		.byte	0x8
 1544 0634 1B       		.uleb128 0x1b
 1545 0635 55020000 		.4byte	.LASF98
 1546 0639 0A       		.byte	0xa
 1547 063a 3F02     		.2byte	0x23f
 1548 063c 18080000 		.4byte	0x818
 1549 0640 0C       		.byte	0xc
 1550 0641 1B       		.uleb128 0x1b
 1551 0642 2A060000 		.4byte	.LASF99
 1552 0646 0A       		.byte	0xa
 1553 0647 4102     		.2byte	0x241
 1554 0649 25000000 		.4byte	0x25
 1555 064d 10       		.byte	0x10
 1556 064e 1B       		.uleb128 0x1b
 1557 064f 4B000000 		.4byte	.LASF100
 1558 0653 0A       		.byte	0xa
 1559 0654 4202     		.2byte	0x242
 1560 0656 FA090000 		.4byte	0x9fa
 1561 065a 14       		.byte	0x14
 1562 065b 1B       		.uleb128 0x1b
 1563 065c 74070000 		.4byte	.LASF101
 1564 0660 0A       		.byte	0xa
 1565 0661 4402     		.2byte	0x244
 1566 0663 25000000 		.4byte	0x25
 1567 0667 30       		.byte	0x30
 1568 0668 1B       		.uleb128 0x1b
 1569 0669 34060000 		.4byte	.LASF102
 1570 066d 0A       		.byte	0xa
 1571 066e 4502     		.2byte	0x245
 1572 0670 67070000 		.4byte	0x767
 1573 0674 34       		.byte	0x34
 1574 0675 1B       		.uleb128 0x1b
 1575 0676 18050000 		.4byte	.LASF103
 1576 067a 0A       		.byte	0xa
 1577 067b 4702     		.2byte	0x247
 1578 067d 25000000 		.4byte	0x25
 1579 0681 38       		.byte	0x38
 1580 0682 1B       		.uleb128 0x1b
 1581 0683 44060000 		.4byte	.LASF104
 1582 0687 0A       		.byte	0xa
 1583 0688 4902     		.2byte	0x249
 1584 068a 150A0000 		.4byte	0xa15
 1585 068e 3C       		.byte	0x3c
 1586 068f 1B       		.uleb128 0x1b
 1587 0690 35030000 		.4byte	.LASF105
 1588 0694 0A       		.byte	0xa
 1589 0695 4C02     		.2byte	0x24c
 1590 0697 47030000 		.4byte	0x347
 1591 069b 40       		.byte	0x40
 1592 069c 1B       		.uleb128 0x1b
ARM GAS  /tmp/ccfKQ0CH.s 			page 42


 1593 069d CF010000 		.4byte	.LASF106
 1594 06a1 0A       		.byte	0xa
 1595 06a2 4D02     		.2byte	0x24d
 1596 06a4 25000000 		.4byte	0x25
 1597 06a8 44       		.byte	0x44
 1598 06a9 1B       		.uleb128 0x1b
 1599 06aa A6080000 		.4byte	.LASF107
 1600 06ae 0A       		.byte	0xa
 1601 06af 4E02     		.2byte	0x24e
 1602 06b1 47030000 		.4byte	0x347
 1603 06b5 48       		.byte	0x48
 1604 06b6 1B       		.uleb128 0x1b
 1605 06b7 E5050000 		.4byte	.LASF108
 1606 06bb 0A       		.byte	0xa
 1607 06bc 4F02     		.2byte	0x24f
 1608 06be 1B0A0000 		.4byte	0xa1b
 1609 06c2 4C       		.byte	0x4c
 1610 06c3 1B       		.uleb128 0x1b
 1611 06c4 C2020000 		.4byte	.LASF109
 1612 06c8 0A       		.byte	0xa
 1613 06c9 5202     		.2byte	0x252
 1614 06cb 25000000 		.4byte	0x25
 1615 06cf 50       		.byte	0x50
 1616 06d0 1B       		.uleb128 0x1b
 1617 06d1 EE010000 		.4byte	.LASF110
 1618 06d5 0A       		.byte	0xa
 1619 06d6 5302     		.2byte	0x253
 1620 06d8 31070000 		.4byte	0x731
 1621 06dc 54       		.byte	0x54
 1622 06dd 1B       		.uleb128 0x1b
 1623 06de 9F050000 		.4byte	.LASF111
 1624 06e2 0A       		.byte	0xa
 1625 06e3 7602     		.2byte	0x276
 1626 06e5 D8090000 		.4byte	0x9d8
 1627 06e9 58       		.byte	0x58
 1628 06ea 1C       		.uleb128 0x1c
 1629 06eb 06050000 		.4byte	.LASF71
 1630 06ef 0A       		.byte	0xa
 1631 06f0 7A02     		.2byte	0x27a
 1632 06f2 64040000 		.4byte	0x464
 1633 06f6 4801     		.2byte	0x148
 1634 06f8 1C       		.uleb128 0x1c
 1635 06f9 13030000 		.4byte	.LASF112
 1636 06fd 0A       		.byte	0xa
 1637 06fe 7B02     		.2byte	0x27b
 1638 0700 26040000 		.4byte	0x426
 1639 0704 4C01     		.2byte	0x14c
 1640 0706 1C       		.uleb128 0x1c
 1641 0707 EF070000 		.4byte	.LASF113
 1642 070b 0A       		.byte	0xa
 1643 070c 7F02     		.2byte	0x27f
 1644 070e 2C0A0000 		.4byte	0xa2c
 1645 0712 DC02     		.2byte	0x2dc
 1646 0714 1C       		.uleb128 0x1c
 1647 0715 78010000 		.4byte	.LASF114
 1648 0719 0A       		.byte	0xa
 1649 071a 8402     		.2byte	0x284
ARM GAS  /tmp/ccfKQ0CH.s 			page 43


 1650 071c DD070000 		.4byte	0x7dd
 1651 0720 E002     		.2byte	0x2e0
 1652 0722 1C       		.uleb128 0x1c
 1653 0723 5D010000 		.4byte	.LASF115
 1654 0727 0A       		.byte	0xa
 1655 0728 8502     		.2byte	0x285
 1656 072a 380A0000 		.4byte	0xa38
 1657 072e EC02     		.2byte	0x2ec
 1658 0730 00       		.byte	0
 1659 0731 14       		.uleb128 0x14
 1660 0732 04       		.byte	0x4
 1661 0733 37070000 		.4byte	0x737
 1662 0737 03       		.uleb128 0x3
 1663 0738 01       		.byte	0x1
 1664 0739 08       		.byte	0x8
 1665 073a B1060000 		.4byte	.LASF116
 1666 073e 06       		.uleb128 0x6
 1667 073f 37070000 		.4byte	0x737
 1668 0743 14       		.uleb128 0x14
 1669 0744 04       		.byte	0x4
 1670 0745 D6050000 		.4byte	0x5d6
 1671 0749 18       		.uleb128 0x18
 1672 074a 25000000 		.4byte	0x25
 1673 074e 67070000 		.4byte	0x767
 1674 0752 19       		.uleb128 0x19
 1675 0753 F4050000 		.4byte	0x5f4
 1676 0757 19       		.uleb128 0x19
 1677 0758 AB000000 		.4byte	0xab
 1678 075c 19       		.uleb128 0x19
 1679 075d 67070000 		.4byte	0x767
 1680 0761 19       		.uleb128 0x19
 1681 0762 25000000 		.4byte	0x25
 1682 0766 00       		.byte	0
 1683 0767 14       		.uleb128 0x14
 1684 0768 04       		.byte	0x4
 1685 0769 3E070000 		.4byte	0x73e
 1686 076d 14       		.uleb128 0x14
 1687 076e 04       		.byte	0x4
 1688 076f 49070000 		.4byte	0x749
 1689 0773 18       		.uleb128 0x18
 1690 0774 6C020000 		.4byte	0x26c
 1691 0778 91070000 		.4byte	0x791
 1692 077c 19       		.uleb128 0x19
 1693 077d F4050000 		.4byte	0x5f4
 1694 0781 19       		.uleb128 0x19
 1695 0782 AB000000 		.4byte	0xab
 1696 0786 19       		.uleb128 0x19
 1697 0787 6C020000 		.4byte	0x26c
 1698 078b 19       		.uleb128 0x19
 1699 078c 25000000 		.4byte	0x25
 1700 0790 00       		.byte	0
 1701 0791 14       		.uleb128 0x14
 1702 0792 04       		.byte	0x4
 1703 0793 73070000 		.4byte	0x773
 1704 0797 18       		.uleb128 0x18
 1705 0798 25000000 		.4byte	0x25
 1706 079c AB070000 		.4byte	0x7ab
ARM GAS  /tmp/ccfKQ0CH.s 			page 44


 1707 07a0 19       		.uleb128 0x19
 1708 07a1 F4050000 		.4byte	0x5f4
 1709 07a5 19       		.uleb128 0x19
 1710 07a6 AB000000 		.4byte	0xab
 1711 07aa 00       		.byte	0
 1712 07ab 14       		.uleb128 0x14
 1713 07ac 04       		.byte	0x4
 1714 07ad 97070000 		.4byte	0x797
 1715 07b1 08       		.uleb128 0x8
 1716 07b2 3A000000 		.4byte	0x3a
 1717 07b6 C1070000 		.4byte	0x7c1
 1718 07ba 09       		.uleb128 0x9
 1719 07bb AD000000 		.4byte	0xad
 1720 07bf 02       		.byte	0x2
 1721 07c0 00       		.byte	0
 1722 07c1 08       		.uleb128 0x8
 1723 07c2 3A000000 		.4byte	0x3a
 1724 07c6 D1070000 		.4byte	0x7d1
 1725 07ca 09       		.uleb128 0x9
 1726 07cb AD000000 		.4byte	0xad
 1727 07cf 00       		.byte	0
 1728 07d0 00       		.byte	0
 1729 07d1 0F       		.uleb128 0xf
 1730 07d2 EF050000 		.4byte	.LASF117
 1731 07d6 0A       		.byte	0xa
 1732 07d7 1D01     		.2byte	0x11d
 1733 07d9 AC040000 		.4byte	0x4ac
 1734 07dd 1D       		.uleb128 0x1d
 1735 07de 0D030000 		.4byte	.LASF118
 1736 07e2 0C       		.byte	0xc
 1737 07e3 0A       		.byte	0xa
 1738 07e4 2101     		.2byte	0x121
 1739 07e6 12080000 		.4byte	0x812
 1740 07ea 1B       		.uleb128 0x1b
 1741 07eb 0D070000 		.4byte	.LASF51
 1742 07ef 0A       		.byte	0xa
 1743 07f0 2301     		.2byte	0x123
 1744 07f2 12080000 		.4byte	0x812
 1745 07f6 00       		.byte	0
 1746 07f7 1B       		.uleb128 0x1b
 1747 07f8 EB020000 		.4byte	.LASF119
 1748 07fc 0A       		.byte	0xa
 1749 07fd 2401     		.2byte	0x124
 1750 07ff 25000000 		.4byte	0x25
 1751 0803 04       		.byte	0x4
 1752 0804 1B       		.uleb128 0x1b
 1753 0805 24060000 		.4byte	.LASF120
 1754 0809 0A       		.byte	0xa
 1755 080a 2501     		.2byte	0x125
 1756 080c 18080000 		.4byte	0x818
 1757 0810 08       		.byte	0x8
 1758 0811 00       		.byte	0
 1759 0812 14       		.uleb128 0x14
 1760 0813 04       		.byte	0x4
 1761 0814 DD070000 		.4byte	0x7dd
 1762 0818 14       		.uleb128 0x14
 1763 0819 04       		.byte	0x4
ARM GAS  /tmp/ccfKQ0CH.s 			page 45


 1764 081a D1070000 		.4byte	0x7d1
 1765 081e 1D       		.uleb128 0x1d
 1766 081f 3B000000 		.4byte	.LASF121
 1767 0823 0E       		.byte	0xe
 1768 0824 0A       		.byte	0xa
 1769 0825 3D01     		.2byte	0x13d
 1770 0827 53080000 		.4byte	0x853
 1771 082b 1B       		.uleb128 0x1b
 1772 082c 67060000 		.4byte	.LASF122
 1773 0830 0A       		.byte	0xa
 1774 0831 3E01     		.2byte	0x13e
 1775 0833 53080000 		.4byte	0x853
 1776 0837 00       		.byte	0
 1777 0838 1B       		.uleb128 0x1b
 1778 0839 AB030000 		.4byte	.LASF123
 1779 083d 0A       		.byte	0xa
 1780 083e 3F01     		.2byte	0x13f
 1781 0840 53080000 		.4byte	0x853
 1782 0844 06       		.byte	0x6
 1783 0845 1B       		.uleb128 0x1b
 1784 0846 3F070000 		.4byte	.LASF124
 1785 084a 0A       		.byte	0xa
 1786 084b 4001     		.2byte	0x140
 1787 084d 48000000 		.4byte	0x48
 1788 0851 0C       		.byte	0xc
 1789 0852 00       		.byte	0
 1790 0853 08       		.uleb128 0x8
 1791 0854 48000000 		.4byte	0x48
 1792 0858 63080000 		.4byte	0x863
 1793 085c 09       		.uleb128 0x9
 1794 085d AD000000 		.4byte	0xad
 1795 0861 02       		.byte	0x2
 1796 0862 00       		.byte	0
 1797 0863 1E       		.uleb128 0x1e
 1798 0864 D0       		.byte	0xd0
 1799 0865 0A       		.byte	0xa
 1800 0866 5702     		.2byte	0x257
 1801 0868 64090000 		.4byte	0x964
 1802 086c 1B       		.uleb128 0x1b
 1803 086d DB030000 		.4byte	.LASF125
 1804 0871 0A       		.byte	0xa
 1805 0872 5902     		.2byte	0x259
 1806 0874 2C000000 		.4byte	0x2c
 1807 0878 00       		.byte	0
 1808 0879 1B       		.uleb128 0x1b
 1809 087a 13070000 		.4byte	.LASF126
 1810 087e 0A       		.byte	0xa
 1811 087f 5A02     		.2byte	0x25a
 1812 0881 31070000 		.4byte	0x731
 1813 0885 04       		.byte	0x4
 1814 0886 1B       		.uleb128 0x1b
 1815 0887 28030000 		.4byte	.LASF127
 1816 088b 0A       		.byte	0xa
 1817 088c 5B02     		.2byte	0x25b
 1818 088e 64090000 		.4byte	0x964
 1819 0892 08       		.byte	0x8
 1820 0893 1B       		.uleb128 0x1b
ARM GAS  /tmp/ccfKQ0CH.s 			page 46


 1821 0894 70080000 		.4byte	.LASF128
 1822 0898 0A       		.byte	0xa
 1823 0899 5C02     		.2byte	0x25c
 1824 089b 5D030000 		.4byte	0x35d
 1825 089f 24       		.byte	0x24
 1826 08a0 1B       		.uleb128 0x1b
 1827 08a1 E8030000 		.4byte	.LASF129
 1828 08a5 0A       		.byte	0xa
 1829 08a6 5D02     		.2byte	0x25d
 1830 08a8 25000000 		.4byte	0x25
 1831 08ac 48       		.byte	0x48
 1832 08ad 1B       		.uleb128 0x1b
 1833 08ae 12060000 		.4byte	.LASF130
 1834 08b2 0A       		.byte	0xa
 1835 08b3 5E02     		.2byte	0x25e
 1836 08b5 7A000000 		.4byte	0x7a
 1837 08b9 50       		.byte	0x50
 1838 08ba 1B       		.uleb128 0x1b
 1839 08bb 88080000 		.4byte	.LASF131
 1840 08bf 0A       		.byte	0xa
 1841 08c0 5F02     		.2byte	0x25f
 1842 08c2 1E080000 		.4byte	0x81e
 1843 08c6 58       		.byte	0x58
 1844 08c7 1B       		.uleb128 0x1b
 1845 08c8 C1050000 		.4byte	.LASF132
 1846 08cc 0A       		.byte	0xa
 1847 08cd 6002     		.2byte	0x260
 1848 08cf D3020000 		.4byte	0x2d3
 1849 08d3 68       		.byte	0x68
 1850 08d4 1B       		.uleb128 0x1b
 1851 08d5 98080000 		.4byte	.LASF133
 1852 08d9 0A       		.byte	0xa
 1853 08da 6102     		.2byte	0x261
 1854 08dc D3020000 		.4byte	0x2d3
 1855 08e0 70       		.byte	0x70
 1856 08e1 1B       		.uleb128 0x1b
 1857 08e2 FC000000 		.4byte	.LASF134
 1858 08e6 0A       		.byte	0xa
 1859 08e7 6202     		.2byte	0x262
 1860 08e9 D3020000 		.4byte	0x2d3
 1861 08ed 78       		.byte	0x78
 1862 08ee 1B       		.uleb128 0x1b
 1863 08ef DD070000 		.4byte	.LASF135
 1864 08f3 0A       		.byte	0xa
 1865 08f4 6302     		.2byte	0x263
 1866 08f6 74090000 		.4byte	0x974
 1867 08fa 80       		.byte	0x80
 1868 08fb 1B       		.uleb128 0x1b
 1869 08fc 1C030000 		.4byte	.LASF136
 1870 0900 0A       		.byte	0xa
 1871 0901 6402     		.2byte	0x264
 1872 0903 84090000 		.4byte	0x984
 1873 0907 88       		.byte	0x88
 1874 0908 1B       		.uleb128 0x1b
 1875 0909 4C070000 		.4byte	.LASF137
 1876 090d 0A       		.byte	0xa
 1877 090e 6502     		.2byte	0x265
ARM GAS  /tmp/ccfKQ0CH.s 			page 47


 1878 0910 25000000 		.4byte	0x25
 1879 0914 A0       		.byte	0xa0
 1880 0915 1B       		.uleb128 0x1b
 1881 0916 07020000 		.4byte	.LASF138
 1882 091a 0A       		.byte	0xa
 1883 091b 6602     		.2byte	0x266
 1884 091d D3020000 		.4byte	0x2d3
 1885 0921 A4       		.byte	0xa4
 1886 0922 1B       		.uleb128 0x1b
 1887 0923 E5000000 		.4byte	.LASF139
 1888 0927 0A       		.byte	0xa
 1889 0928 6702     		.2byte	0x267
 1890 092a D3020000 		.4byte	0x2d3
 1891 092e AC       		.byte	0xac
 1892 092f 1B       		.uleb128 0x1b
 1893 0930 F6010000 		.4byte	.LASF140
 1894 0934 0A       		.byte	0xa
 1895 0935 6802     		.2byte	0x268
 1896 0937 D3020000 		.4byte	0x2d3
 1897 093b B4       		.byte	0xb4
 1898 093c 1B       		.uleb128 0x1b
 1899 093d 82000000 		.4byte	.LASF141
 1900 0941 0A       		.byte	0xa
 1901 0942 6902     		.2byte	0x269
 1902 0944 D3020000 		.4byte	0x2d3
 1903 0948 BC       		.byte	0xbc
 1904 0949 1B       		.uleb128 0x1b
 1905 094a 91000000 		.4byte	.LASF142
 1906 094e 0A       		.byte	0xa
 1907 094f 6A02     		.2byte	0x26a
 1908 0951 D3020000 		.4byte	0x2d3
 1909 0955 C4       		.byte	0xc4
 1910 0956 1B       		.uleb128 0x1b
 1911 0957 B8050000 		.4byte	.LASF143
 1912 095b 0A       		.byte	0xa
 1913 095c 6B02     		.2byte	0x26b
 1914 095e 25000000 		.4byte	0x25
 1915 0962 CC       		.byte	0xcc
 1916 0963 00       		.byte	0
 1917 0964 08       		.uleb128 0x8
 1918 0965 37070000 		.4byte	0x737
 1919 0969 74090000 		.4byte	0x974
 1920 096d 09       		.uleb128 0x9
 1921 096e AD000000 		.4byte	0xad
 1922 0972 19       		.byte	0x19
 1923 0973 00       		.byte	0
 1924 0974 08       		.uleb128 0x8
 1925 0975 37070000 		.4byte	0x737
 1926 0979 84090000 		.4byte	0x984
 1927 097d 09       		.uleb128 0x9
 1928 097e AD000000 		.4byte	0xad
 1929 0982 07       		.byte	0x7
 1930 0983 00       		.byte	0
 1931 0984 08       		.uleb128 0x8
 1932 0985 37070000 		.4byte	0x737
 1933 0989 94090000 		.4byte	0x994
 1934 098d 09       		.uleb128 0x9
ARM GAS  /tmp/ccfKQ0CH.s 			page 48


 1935 098e AD000000 		.4byte	0xad
 1936 0992 17       		.byte	0x17
 1937 0993 00       		.byte	0
 1938 0994 1E       		.uleb128 0x1e
 1939 0995 F0       		.byte	0xf0
 1940 0996 0A       		.byte	0xa
 1941 0997 7002     		.2byte	0x270
 1942 0999 B8090000 		.4byte	0x9b8
 1943 099d 1B       		.uleb128 0x1b
 1944 099e 43030000 		.4byte	.LASF144
 1945 09a2 0A       		.byte	0xa
 1946 09a3 7302     		.2byte	0x273
 1947 09a5 B8090000 		.4byte	0x9b8
 1948 09a9 00       		.byte	0
 1949 09aa 1B       		.uleb128 0x1b
 1950 09ab 92020000 		.4byte	.LASF145
 1951 09af 0A       		.byte	0xa
 1952 09b0 7402     		.2byte	0x274
 1953 09b2 C8090000 		.4byte	0x9c8
 1954 09b6 78       		.byte	0x78
 1955 09b7 00       		.byte	0
 1956 09b8 08       		.uleb128 0x8
 1957 09b9 A6040000 		.4byte	0x4a6
 1958 09bd C8090000 		.4byte	0x9c8
 1959 09c1 09       		.uleb128 0x9
 1960 09c2 AD000000 		.4byte	0xad
 1961 09c6 1D       		.byte	0x1d
 1962 09c7 00       		.byte	0
 1963 09c8 08       		.uleb128 0x8
 1964 09c9 2C000000 		.4byte	0x2c
 1965 09cd D8090000 		.4byte	0x9d8
 1966 09d1 09       		.uleb128 0x9
 1967 09d2 AD000000 		.4byte	0xad
 1968 09d6 1D       		.byte	0x1d
 1969 09d7 00       		.byte	0
 1970 09d8 1F       		.uleb128 0x1f
 1971 09d9 F0       		.byte	0xf0
 1972 09da 0A       		.byte	0xa
 1973 09db 5502     		.2byte	0x255
 1974 09dd FA090000 		.4byte	0x9fa
 1975 09e1 20       		.uleb128 0x20
 1976 09e2 60060000 		.4byte	.LASF94
 1977 09e6 0A       		.byte	0xa
 1978 09e7 6C02     		.2byte	0x26c
 1979 09e9 63080000 		.4byte	0x863
 1980 09ed 20       		.uleb128 0x20
 1981 09ee 4C080000 		.4byte	.LASF146
 1982 09f2 0A       		.byte	0xa
 1983 09f3 7502     		.2byte	0x275
 1984 09f5 94090000 		.4byte	0x994
 1985 09f9 00       		.byte	0
 1986 09fa 08       		.uleb128 0x8
 1987 09fb 37070000 		.4byte	0x737
 1988 09ff 0A0A0000 		.4byte	0xa0a
 1989 0a03 09       		.uleb128 0x9
 1990 0a04 AD000000 		.4byte	0xad
 1991 0a08 18       		.byte	0x18
ARM GAS  /tmp/ccfKQ0CH.s 			page 49


 1992 0a09 00       		.byte	0
 1993 0a0a 21       		.uleb128 0x21
 1994 0a0b 150A0000 		.4byte	0xa15
 1995 0a0f 19       		.uleb128 0x19
 1996 0a10 F4050000 		.4byte	0x5f4
 1997 0a14 00       		.byte	0
 1998 0a15 14       		.uleb128 0x14
 1999 0a16 04       		.byte	0x4
 2000 0a17 0A0A0000 		.4byte	0xa0a
 2001 0a1b 14       		.uleb128 0x14
 2002 0a1c 04       		.byte	0x4
 2003 0a1d 47030000 		.4byte	0x347
 2004 0a21 21       		.uleb128 0x21
 2005 0a22 2C0A0000 		.4byte	0xa2c
 2006 0a26 19       		.uleb128 0x19
 2007 0a27 25000000 		.4byte	0x25
 2008 0a2b 00       		.byte	0
 2009 0a2c 14       		.uleb128 0x14
 2010 0a2d 04       		.byte	0x4
 2011 0a2e 320A0000 		.4byte	0xa32
 2012 0a32 14       		.uleb128 0x14
 2013 0a33 04       		.byte	0x4
 2014 0a34 210A0000 		.4byte	0xa21
 2015 0a38 08       		.uleb128 0x8
 2016 0a39 D1070000 		.4byte	0x7d1
 2017 0a3d 480A0000 		.4byte	0xa48
 2018 0a41 09       		.uleb128 0x9
 2019 0a42 AD000000 		.4byte	0xad
 2020 0a46 02       		.byte	0x2
 2021 0a47 00       		.byte	0
 2022 0a48 0A       		.uleb128 0xa
 2023 0a49 83060000 		.4byte	.LASF147
 2024 0a4d 0A       		.byte	0xa
 2025 0a4e FD02     		.2byte	0x2fd
 2026 0a50 F4050000 		.4byte	0x5f4
 2027 0a54 0A       		.uleb128 0xa
 2028 0a55 61070000 		.4byte	.LASF148
 2029 0a59 0A       		.byte	0xa
 2030 0a5a FE02     		.2byte	0x2fe
 2031 0a5c FA050000 		.4byte	0x5fa
 2032 0a60 0B       		.uleb128 0xb
 2033 0a61 0E050000 		.4byte	.LASF149
 2034 0a65 0B       		.byte	0xb
 2035 0a66 5F       		.byte	0x5f
 2036 0a67 31070000 		.4byte	0x731
 2037 0a6b 0B       		.uleb128 0xb
 2038 0a6c 3F050000 		.4byte	.LASF150
 2039 0a70 0C       		.byte	0xc
 2040 0a71 8F       		.byte	0x8f
 2041 0a72 7D0A0000 		.4byte	0xa7d
 2042 0a76 03       		.uleb128 0x3
 2043 0a77 01       		.byte	0x1
 2044 0a78 02       		.byte	0x2
 2045 0a79 85050000 		.4byte	.LASF151
 2046 0a7d 05       		.uleb128 0x5
 2047 0a7e 760A0000 		.4byte	0xa76
 2048 0a82 22       		.uleb128 0x22
ARM GAS  /tmp/ccfKQ0CH.s 			page 50


 2049 0a83 05080000 		.4byte	.LASF152
 2050 0a87 0C       		.byte	0xc
 2051 0a88 94       		.byte	0x94
 2052 0a89 9C000000 		.4byte	0x9c
 2053 0a8d 05       		.uleb128 0x5
 2054 0a8e 03       		.byte	0x3
 2055 0a8f 00000000 		.4byte	cpu_irq_critical_section_counter
 2056 0a93 22       		.uleb128 0x22
 2057 0a94 F7030000 		.4byte	.LASF153
 2058 0a98 0C       		.byte	0xc
 2059 0a99 95       		.byte	0x95
 2060 0a9a 7D0A0000 		.4byte	0xa7d
 2061 0a9e 05       		.uleb128 0x5
 2062 0a9f 03       		.byte	0x3
 2063 0aa0 00000000 		.4byte	cpu_irq_prev_interrupt_state
 2064 0aa4 03       		.uleb128 0x3
 2065 0aa5 04       		.byte	0x4
 2066 0aa6 04       		.byte	0x4
 2067 0aa7 31050000 		.4byte	.LASF154
 2068 0aab 03       		.uleb128 0x3
 2069 0aac 08       		.byte	0x8
 2070 0aad 04       		.byte	0x4
 2071 0aae E7010000 		.4byte	.LASF155
 2072 0ab2 23       		.uleb128 0x23
 2073 0ab3 32080000 		.4byte	.LASF160
 2074 0ab7 01       		.byte	0x1
 2075 0ab8 CA02     		.2byte	0x2ca
 2076 0aba 00000000 		.4byte	.LFB164
 2077 0abe 1C000000 		.4byte	.LFE164-.LFB164
 2078 0ac2 01       		.uleb128 0x1
 2079 0ac3 9C       		.byte	0x9c
 2080 0ac4 E50A0000 		.4byte	0xae5
 2081 0ac8 24       		.uleb128 0x24
 2082 0ac9 71030000 		.4byte	.LASF156
 2083 0acd 01       		.byte	0x1
 2084 0ace CB02     		.2byte	0x2cb
 2085 0ad0 E50A0000 		.4byte	0xae5
 2086 0ad4 01       		.uleb128 0x1
 2087 0ad5 50       		.byte	0x50
 2088 0ad6 24       		.uleb128 0x24
 2089 0ad7 4E060000 		.4byte	.LASF157
 2090 0adb 01       		.byte	0x1
 2091 0adc CC02     		.2byte	0x2cc
 2092 0ade 91000000 		.4byte	0x91
 2093 0ae2 01       		.uleb128 0x1
 2094 0ae3 51       		.byte	0x51
 2095 0ae4 00       		.byte	0
 2096 0ae5 14       		.uleb128 0x14
 2097 0ae6 04       		.byte	0x4
 2098 0ae7 4C020000 		.4byte	0x24c
 2099 0aeb 25       		.uleb128 0x25
 2100 0aec 15020000 		.4byte	.LASF158
 2101 0af0 01       		.byte	0x1
 2102 0af1 B502     		.2byte	0x2b5
 2103 0af3 91000000 		.4byte	0x91
 2104 0af7 00000000 		.4byte	.LFB163
 2105 0afb 06000000 		.4byte	.LFE163-.LFB163
ARM GAS  /tmp/ccfKQ0CH.s 			page 51


 2106 0aff 01       		.uleb128 0x1
 2107 0b00 9C       		.byte	0x9c
 2108 0b01 160B0000 		.4byte	0xb16
 2109 0b05 26       		.uleb128 0x26
 2110 0b06 71030000 		.4byte	.LASF156
 2111 0b0a 01       		.byte	0x1
 2112 0b0b B602     		.2byte	0x2b6
 2113 0b0d E50A0000 		.4byte	0xae5
 2114 0b11 00000000 		.4byte	.LLST26
 2115 0b15 00       		.byte	0
 2116 0b16 25       		.uleb128 0x25
 2117 0b17 B3080000 		.4byte	.LASF159
 2118 0b1b 01       		.byte	0x1
 2119 0b1c A302     		.2byte	0x2a3
 2120 0b1e 91000000 		.4byte	0x91
 2121 0b22 00000000 		.4byte	.LFB162
 2122 0b26 06000000 		.4byte	.LFE162-.LFB162
 2123 0b2a 01       		.uleb128 0x1
 2124 0b2b 9C       		.byte	0x9c
 2125 0b2c 410B0000 		.4byte	0xb41
 2126 0b30 26       		.uleb128 0x26
 2127 0b31 71030000 		.4byte	.LASF156
 2128 0b35 01       		.byte	0x1
 2129 0b36 A402     		.2byte	0x2a4
 2130 0b38 E50A0000 		.4byte	0xae5
 2131 0b3c 21000000 		.4byte	.LLST25
 2132 0b40 00       		.byte	0
 2133 0b41 23       		.uleb128 0x23
 2134 0b42 57030000 		.4byte	.LASF161
 2135 0b46 01       		.byte	0x1
 2136 0b47 9002     		.2byte	0x290
 2137 0b49 00000000 		.4byte	.LFB161
 2138 0b4d 06000000 		.4byte	.LFE161-.LFB161
 2139 0b51 01       		.uleb128 0x1
 2140 0b52 9C       		.byte	0x9c
 2141 0b53 740B0000 		.4byte	0xb74
 2142 0b57 24       		.uleb128 0x24
 2143 0b58 71030000 		.4byte	.LASF156
 2144 0b5c 01       		.byte	0x1
 2145 0b5d 9102     		.2byte	0x291
 2146 0b5f E50A0000 		.4byte	0xae5
 2147 0b63 01       		.uleb128 0x1
 2148 0b64 50       		.byte	0x50
 2149 0b65 24       		.uleb128 0x24
 2150 0b66 8D080000 		.4byte	.LASF162
 2151 0b6a 01       		.byte	0x1
 2152 0b6b 9202     		.2byte	0x292
 2153 0b6d 91000000 		.4byte	0x91
 2154 0b71 01       		.uleb128 0x1
 2155 0b72 51       		.byte	0x51
 2156 0b73 00       		.byte	0
 2157 0b74 23       		.uleb128 0x23
 2158 0b75 65020000 		.4byte	.LASF163
 2159 0b79 01       		.byte	0x1
 2160 0b7a 7302     		.2byte	0x273
 2161 0b7c 00000000 		.4byte	.LFB160
 2162 0b80 06000000 		.4byte	.LFE160-.LFB160
ARM GAS  /tmp/ccfKQ0CH.s 			page 52


 2163 0b84 01       		.uleb128 0x1
 2164 0b85 9C       		.byte	0x9c
 2165 0b86 A70B0000 		.4byte	0xba7
 2166 0b8a 24       		.uleb128 0x24
 2167 0b8b 71030000 		.4byte	.LASF156
 2168 0b8f 01       		.byte	0x1
 2169 0b90 7402     		.2byte	0x274
 2170 0b92 E50A0000 		.4byte	0xae5
 2171 0b96 01       		.uleb128 0x1
 2172 0b97 50       		.byte	0x50
 2173 0b98 24       		.uleb128 0x24
 2174 0b99 8D080000 		.4byte	.LASF162
 2175 0b9d 01       		.byte	0x1
 2176 0b9e 7502     		.2byte	0x275
 2177 0ba0 91000000 		.4byte	0x91
 2178 0ba4 01       		.uleb128 0x1
 2179 0ba5 51       		.byte	0x51
 2180 0ba6 00       		.byte	0
 2181 0ba7 25       		.uleb128 0x25
 2182 0ba8 6E000000 		.4byte	.LASF164
 2183 0bac 01       		.byte	0x1
 2184 0bad F101     		.2byte	0x1f1
 2185 0baf 91000000 		.4byte	0x91
 2186 0bb3 00000000 		.4byte	.LFB159
 2187 0bb7 64000000 		.4byte	.LFE159-.LFB159
 2188 0bbb 01       		.uleb128 0x1
 2189 0bbc 9C       		.byte	0x9c
 2190 0bbd 470C0000 		.4byte	0xc47
 2191 0bc1 26       		.uleb128 0x26
 2192 0bc2 AB080000 		.4byte	.LASF165
 2193 0bc6 01       		.byte	0x1
 2194 0bc7 F201     		.2byte	0x1f2
 2195 0bc9 91000000 		.4byte	0x91
 2196 0bcd 42000000 		.4byte	.LLST22
 2197 0bd1 24       		.uleb128 0x24
 2198 0bd2 29040000 		.4byte	.LASF166
 2199 0bd6 01       		.byte	0x1
 2200 0bd7 F301     		.2byte	0x1f3
 2201 0bd9 91000000 		.4byte	0x91
 2202 0bdd 01       		.uleb128 0x1
 2203 0bde 51       		.byte	0x51
 2204 0bdf 24       		.uleb128 0x24
 2205 0be0 59070000 		.4byte	.LASF167
 2206 0be4 01       		.byte	0x1
 2207 0be5 F401     		.2byte	0x1f4
 2208 0be7 470C0000 		.4byte	0xc47
 2209 0beb 01       		.uleb128 0x1
 2210 0bec 52       		.byte	0x52
 2211 0bed 24       		.uleb128 0x24
 2212 0bee 56000000 		.4byte	.LASF168
 2213 0bf2 01       		.byte	0x1
 2214 0bf3 F501     		.2byte	0x1f5
 2215 0bf5 470C0000 		.4byte	0xc47
 2216 0bf9 01       		.uleb128 0x1
 2217 0bfa 53       		.byte	0x53
 2218 0bfb 26       		.uleb128 0x26
 2219 0bfc 9E060000 		.4byte	.LASF169
ARM GAS  /tmp/ccfKQ0CH.s 			page 53


 2220 0c00 01       		.byte	0x1
 2221 0c01 F601     		.2byte	0x1f6
 2222 0c03 91000000 		.4byte	0x91
 2223 0c07 95000000 		.4byte	.LLST23
 2224 0c0b 27       		.uleb128 0x27
 2225 0c0c E2020000 		.4byte	.LASF170
 2226 0c10 01       		.byte	0x1
 2227 0c11 F801     		.2byte	0x1f8
 2228 0c13 5D0C0000 		.4byte	0xc5d
 2229 0c17 02       		.uleb128 0x2
 2230 0c18 91       		.byte	0x91
 2231 0c19 54       		.sleb128 -44
 2232 0c1a 28       		.uleb128 0x28
 2233 0c1b 4C020000 		.4byte	.LASF171
 2234 0c1f 01       		.byte	0x1
 2235 0c20 FA01     		.2byte	0x1fa
 2236 0c22 91000000 		.4byte	0x91
 2237 0c26 B5000000 		.4byte	.LLST24
 2238 0c2a 27       		.uleb128 0x27
 2239 0c2b 7D050000 		.4byte	.LASF172
 2240 0c2f 01       		.byte	0x1
 2241 0c30 FB01     		.2byte	0x1fb
 2242 0c32 91000000 		.4byte	0x91
 2243 0c36 01       		.uleb128 0x1
 2244 0c37 55       		.byte	0x55
 2245 0c38 27       		.uleb128 0x27
 2246 0c39 3F020000 		.4byte	.LASF173
 2247 0c3d 01       		.byte	0x1
 2248 0c3e FB01     		.2byte	0x1fb
 2249 0c40 91000000 		.4byte	0x91
 2250 0c44 01       		.uleb128 0x1
 2251 0c45 57       		.byte	0x57
 2252 0c46 00       		.byte	0
 2253 0c47 14       		.uleb128 0x14
 2254 0c48 04       		.byte	0x4
 2255 0c49 91000000 		.4byte	0x91
 2256 0c4d 08       		.uleb128 0x8
 2257 0c4e A6000000 		.4byte	0xa6
 2258 0c52 5D0C0000 		.4byte	0xc5d
 2259 0c56 09       		.uleb128 0x9
 2260 0c57 AD000000 		.4byte	0xad
 2261 0c5b 04       		.byte	0x4
 2262 0c5c 00       		.byte	0
 2263 0c5d 06       		.uleb128 0x6
 2264 0c5e 4D0C0000 		.4byte	0xc4d
 2265 0c62 25       		.uleb128 0x25
 2266 0c63 0A010000 		.4byte	.LASF174
 2267 0c67 01       		.byte	0x1
 2268 0c68 C701     		.2byte	0x1c7
 2269 0c6a 91000000 		.4byte	0x91
 2270 0c6e 00000000 		.4byte	.LFB158
 2271 0c72 08000000 		.4byte	.LFE158-.LFB158
 2272 0c76 01       		.uleb128 0x1
 2273 0c77 9C       		.byte	0x9c
 2274 0c78 AB0C0000 		.4byte	0xcab
 2275 0c7c 26       		.uleb128 0x26
 2276 0c7d 71030000 		.4byte	.LASF156
ARM GAS  /tmp/ccfKQ0CH.s 			page 54


 2277 0c81 01       		.byte	0x1
 2278 0c82 C801     		.2byte	0x1c8
 2279 0c84 E50A0000 		.4byte	0xae5
 2280 0c88 D4000000 		.4byte	.LLST20
 2281 0c8c 26       		.uleb128 0x26
 2282 0c8d 9B020000 		.4byte	.LASF175
 2283 0c91 01       		.byte	0x1
 2284 0c92 C901     		.2byte	0x1c9
 2285 0c94 91000000 		.4byte	0x91
 2286 0c98 F5000000 		.4byte	.LLST21
 2287 0c9c 27       		.uleb128 0x27
 2288 0c9d 52010000 		.4byte	.LASF176
 2289 0ca1 01       		.byte	0x1
 2290 0ca2 CB01     		.2byte	0x1cb
 2291 0ca4 AB0C0000 		.4byte	0xcab
 2292 0ca8 01       		.uleb128 0x1
 2293 0ca9 51       		.byte	0x51
 2294 0caa 00       		.byte	0
 2295 0cab 14       		.uleb128 0x14
 2296 0cac 04       		.byte	0x4
 2297 0cad B0010000 		.4byte	0x1b0
 2298 0cb1 25       		.uleb128 0x25
 2299 0cb2 D3060000 		.4byte	.LASF177
 2300 0cb6 01       		.byte	0x1
 2301 0cb7 B101     		.2byte	0x1b1
 2302 0cb9 91000000 		.4byte	0x91
 2303 0cbd 00000000 		.4byte	.LFB157
 2304 0cc1 08000000 		.4byte	.LFE157-.LFB157
 2305 0cc5 01       		.uleb128 0x1
 2306 0cc6 9C       		.byte	0x9c
 2307 0cc7 FA0C0000 		.4byte	0xcfa
 2308 0ccb 26       		.uleb128 0x26
 2309 0ccc 71030000 		.4byte	.LASF156
 2310 0cd0 01       		.byte	0x1
 2311 0cd1 B201     		.2byte	0x1b2
 2312 0cd3 E50A0000 		.4byte	0xae5
 2313 0cd7 16010000 		.4byte	.LLST18
 2314 0cdb 26       		.uleb128 0x26
 2315 0cdc 9B020000 		.4byte	.LASF175
 2316 0ce0 01       		.byte	0x1
 2317 0ce1 B301     		.2byte	0x1b3
 2318 0ce3 91000000 		.4byte	0x91
 2319 0ce7 37010000 		.4byte	.LLST19
 2320 0ceb 27       		.uleb128 0x27
 2321 0cec 52010000 		.4byte	.LASF176
 2322 0cf0 01       		.byte	0x1
 2323 0cf1 B501     		.2byte	0x1b5
 2324 0cf3 AB0C0000 		.4byte	0xcab
 2325 0cf7 01       		.uleb128 0x1
 2326 0cf8 51       		.byte	0x51
 2327 0cf9 00       		.byte	0
 2328 0cfa 23       		.uleb128 0x23
 2329 0cfb 14040000 		.4byte	.LASF178
 2330 0cff 01       		.byte	0x1
 2331 0d00 9A01     		.2byte	0x19a
 2332 0d02 00000000 		.4byte	.LFB156
 2333 0d06 08000000 		.4byte	.LFE156-.LFB156
ARM GAS  /tmp/ccfKQ0CH.s 			page 55


 2334 0d0a 01       		.uleb128 0x1
 2335 0d0b 9C       		.byte	0x9c
 2336 0d0c 4B0D0000 		.4byte	0xd4b
 2337 0d10 24       		.uleb128 0x24
 2338 0d11 71030000 		.4byte	.LASF156
 2339 0d15 01       		.byte	0x1
 2340 0d16 9B01     		.2byte	0x19b
 2341 0d18 E50A0000 		.4byte	0xae5
 2342 0d1c 01       		.uleb128 0x1
 2343 0d1d 50       		.byte	0x50
 2344 0d1e 26       		.uleb128 0x26
 2345 0d1f 9B020000 		.4byte	.LASF175
 2346 0d23 01       		.byte	0x1
 2347 0d24 9C01     		.2byte	0x19c
 2348 0d26 91000000 		.4byte	0x91
 2349 0d2a 58010000 		.4byte	.LLST17
 2350 0d2e 24       		.uleb128 0x24
 2351 0d2f 8D080000 		.4byte	.LASF162
 2352 0d33 01       		.byte	0x1
 2353 0d34 9D01     		.2byte	0x19d
 2354 0d36 91000000 		.4byte	0x91
 2355 0d3a 01       		.uleb128 0x1
 2356 0d3b 52       		.byte	0x52
 2357 0d3c 27       		.uleb128 0x27
 2358 0d3d 52010000 		.4byte	.LASF176
 2359 0d41 01       		.byte	0x1
 2360 0d42 9F01     		.2byte	0x19f
 2361 0d44 AB0C0000 		.4byte	0xcab
 2362 0d48 01       		.uleb128 0x1
 2363 0d49 51       		.byte	0x51
 2364 0d4a 00       		.byte	0
 2365 0d4b 23       		.uleb128 0x23
 2366 0d4c 7E020000 		.4byte	.LASF179
 2367 0d50 01       		.byte	0x1
 2368 0d51 7401     		.2byte	0x174
 2369 0d53 00000000 		.4byte	.LFB155
 2370 0d57 08000000 		.4byte	.LFE155-.LFB155
 2371 0d5b 01       		.uleb128 0x1
 2372 0d5c 9C       		.byte	0x9c
 2373 0d5d 9C0D0000 		.4byte	0xd9c
 2374 0d61 24       		.uleb128 0x24
 2375 0d62 71030000 		.4byte	.LASF156
 2376 0d66 01       		.byte	0x1
 2377 0d67 7501     		.2byte	0x175
 2378 0d69 E50A0000 		.4byte	0xae5
 2379 0d6d 01       		.uleb128 0x1
 2380 0d6e 50       		.byte	0x50
 2381 0d6f 26       		.uleb128 0x26
 2382 0d70 9B020000 		.4byte	.LASF175
 2383 0d74 01       		.byte	0x1
 2384 0d75 7601     		.2byte	0x176
 2385 0d77 91000000 		.4byte	0x91
 2386 0d7b 79010000 		.4byte	.LLST16
 2387 0d7f 24       		.uleb128 0x24
 2388 0d80 8D080000 		.4byte	.LASF162
 2389 0d84 01       		.byte	0x1
 2390 0d85 7701     		.2byte	0x177
ARM GAS  /tmp/ccfKQ0CH.s 			page 56


 2391 0d87 91000000 		.4byte	0x91
 2392 0d8b 01       		.uleb128 0x1
 2393 0d8c 52       		.byte	0x52
 2394 0d8d 27       		.uleb128 0x27
 2395 0d8e 52010000 		.4byte	.LASF176
 2396 0d92 01       		.byte	0x1
 2397 0d93 7901     		.2byte	0x179
 2398 0d95 AB0C0000 		.4byte	0xcab
 2399 0d99 01       		.uleb128 0x1
 2400 0d9a 51       		.byte	0x51
 2401 0d9b 00       		.byte	0
 2402 0d9c 23       		.uleb128 0x23
 2403 0d9d B8070000 		.4byte	.LASF180
 2404 0da1 01       		.byte	0x1
 2405 0da2 5001     		.2byte	0x150
 2406 0da4 00000000 		.4byte	.LFB154
 2407 0da8 08000000 		.4byte	.LFE154-.LFB154
 2408 0dac 01       		.uleb128 0x1
 2409 0dad 9C       		.byte	0x9c
 2410 0dae DF0D0000 		.4byte	0xddf
 2411 0db2 24       		.uleb128 0x24
 2412 0db3 71030000 		.4byte	.LASF156
 2413 0db7 01       		.byte	0x1
 2414 0db8 5101     		.2byte	0x151
 2415 0dba E50A0000 		.4byte	0xae5
 2416 0dbe 01       		.uleb128 0x1
 2417 0dbf 50       		.byte	0x50
 2418 0dc0 26       		.uleb128 0x26
 2419 0dc1 9B020000 		.4byte	.LASF175
 2420 0dc5 01       		.byte	0x1
 2421 0dc6 5201     		.2byte	0x152
 2422 0dc8 91000000 		.4byte	0x91
 2423 0dcc 9A010000 		.4byte	.LLST15
 2424 0dd0 24       		.uleb128 0x24
 2425 0dd1 41040000 		.4byte	.LASF181
 2426 0dd5 01       		.byte	0x1
 2427 0dd6 5301     		.2byte	0x153
 2428 0dd8 91000000 		.4byte	0x91
 2429 0ddc 01       		.uleb128 0x1
 2430 0ddd 52       		.byte	0x52
 2431 0dde 00       		.byte	0
 2432 0ddf 23       		.uleb128 0x23
 2433 0de0 26080000 		.4byte	.LASF182
 2434 0de4 01       		.byte	0x1
 2435 0de5 3C01     		.2byte	0x13c
 2436 0de7 00000000 		.4byte	.LFB153
 2437 0deb 08000000 		.4byte	.LFE153-.LFB153
 2438 0def 01       		.uleb128 0x1
 2439 0df0 9C       		.byte	0x9c
 2440 0df1 220E0000 		.4byte	0xe22
 2441 0df5 24       		.uleb128 0x24
 2442 0df6 71030000 		.4byte	.LASF156
 2443 0dfa 01       		.byte	0x1
 2444 0dfb 3D01     		.2byte	0x13d
 2445 0dfd E50A0000 		.4byte	0xae5
 2446 0e01 01       		.uleb128 0x1
 2447 0e02 50       		.byte	0x50
ARM GAS  /tmp/ccfKQ0CH.s 			page 57


 2448 0e03 26       		.uleb128 0x26
 2449 0e04 9B020000 		.4byte	.LASF175
 2450 0e08 01       		.byte	0x1
 2451 0e09 3E01     		.2byte	0x13e
 2452 0e0b 91000000 		.4byte	0x91
 2453 0e0f BB010000 		.4byte	.LLST14
 2454 0e13 24       		.uleb128 0x24
 2455 0e14 41040000 		.4byte	.LASF181
 2456 0e18 01       		.byte	0x1
 2457 0e19 3F01     		.2byte	0x13f
 2458 0e1b 91000000 		.4byte	0x91
 2459 0e1f 01       		.uleb128 0x1
 2460 0e20 52       		.byte	0x52
 2461 0e21 00       		.byte	0
 2462 0e22 23       		.uleb128 0x23
 2463 0e23 F9070000 		.4byte	.LASF183
 2464 0e27 01       		.byte	0x1
 2465 0e28 2801     		.2byte	0x128
 2466 0e2a 00000000 		.4byte	.LFB152
 2467 0e2e 08000000 		.4byte	.LFE152-.LFB152
 2468 0e32 01       		.uleb128 0x1
 2469 0e33 9C       		.byte	0x9c
 2470 0e34 650E0000 		.4byte	0xe65
 2471 0e38 24       		.uleb128 0x24
 2472 0e39 71030000 		.4byte	.LASF156
 2473 0e3d 01       		.byte	0x1
 2474 0e3e 2901     		.2byte	0x129
 2475 0e40 E50A0000 		.4byte	0xae5
 2476 0e44 01       		.uleb128 0x1
 2477 0e45 50       		.byte	0x50
 2478 0e46 26       		.uleb128 0x26
 2479 0e47 9B020000 		.4byte	.LASF175
 2480 0e4b 01       		.byte	0x1
 2481 0e4c 2A01     		.2byte	0x12a
 2482 0e4e 91000000 		.4byte	0x91
 2483 0e52 DC010000 		.4byte	.LLST13
 2484 0e56 24       		.uleb128 0x24
 2485 0e57 41040000 		.4byte	.LASF181
 2486 0e5b 01       		.byte	0x1
 2487 0e5c 2B01     		.2byte	0x12b
 2488 0e5e 91000000 		.4byte	0x91
 2489 0e62 01       		.uleb128 0x1
 2490 0e63 52       		.byte	0x52
 2491 0e64 00       		.byte	0
 2492 0e65 25       		.uleb128 0x25
 2493 0e66 30000000 		.4byte	.LASF184
 2494 0e6a 01       		.byte	0x1
 2495 0e6b 1501     		.2byte	0x115
 2496 0e6d 91000000 		.4byte	0x91
 2497 0e71 00000000 		.4byte	.LFB151
 2498 0e75 08000000 		.4byte	.LFE151-.LFB151
 2499 0e79 01       		.uleb128 0x1
 2500 0e7a 9C       		.byte	0x9c
 2501 0e7b A00E0000 		.4byte	0xea0
 2502 0e7f 26       		.uleb128 0x26
 2503 0e80 71030000 		.4byte	.LASF156
 2504 0e84 01       		.byte	0x1
ARM GAS  /tmp/ccfKQ0CH.s 			page 58


 2505 0e85 1601     		.2byte	0x116
 2506 0e87 E50A0000 		.4byte	0xae5
 2507 0e8b FD010000 		.4byte	.LLST11
 2508 0e8f 26       		.uleb128 0x26
 2509 0e90 9B020000 		.4byte	.LASF175
 2510 0e94 01       		.byte	0x1
 2511 0e95 1701     		.2byte	0x117
 2512 0e97 91000000 		.4byte	0x91
 2513 0e9b 1E020000 		.4byte	.LLST12
 2514 0e9f 00       		.byte	0
 2515 0ea0 25       		.uleb128 0x25
 2516 0ea1 25000000 		.4byte	.LASF185
 2517 0ea5 01       		.byte	0x1
 2518 0ea6 0101     		.2byte	0x101
 2519 0ea8 91000000 		.4byte	0x91
 2520 0eac 00000000 		.4byte	.LFB150
 2521 0eb0 08000000 		.4byte	.LFE150-.LFB150
 2522 0eb4 01       		.uleb128 0x1
 2523 0eb5 9C       		.byte	0x9c
 2524 0eb6 DB0E0000 		.4byte	0xedb
 2525 0eba 26       		.uleb128 0x26
 2526 0ebb 71030000 		.4byte	.LASF156
 2527 0ebf 01       		.byte	0x1
 2528 0ec0 0201     		.2byte	0x102
 2529 0ec2 E50A0000 		.4byte	0xae5
 2530 0ec6 3F020000 		.4byte	.LLST9
 2531 0eca 26       		.uleb128 0x26
 2532 0ecb 9B020000 		.4byte	.LASF175
 2533 0ecf 01       		.byte	0x1
 2534 0ed0 0301     		.2byte	0x103
 2535 0ed2 91000000 		.4byte	0x91
 2536 0ed6 60020000 		.4byte	.LLST10
 2537 0eda 00       		.byte	0
 2538 0edb 29       		.uleb128 0x29
 2539 0edc 1A000000 		.4byte	.LASF186
 2540 0ee0 01       		.byte	0x1
 2541 0ee1 ED       		.byte	0xed
 2542 0ee2 91000000 		.4byte	0x91
 2543 0ee6 00000000 		.4byte	.LFB149
 2544 0eea 08000000 		.4byte	.LFE149-.LFB149
 2545 0eee 01       		.uleb128 0x1
 2546 0eef 9C       		.byte	0x9c
 2547 0ef0 130F0000 		.4byte	0xf13
 2548 0ef4 2A       		.uleb128 0x2a
 2549 0ef5 71030000 		.4byte	.LASF156
 2550 0ef9 01       		.byte	0x1
 2551 0efa EE       		.byte	0xee
 2552 0efb E50A0000 		.4byte	0xae5
 2553 0eff 81020000 		.4byte	.LLST7
 2554 0f03 2A       		.uleb128 0x2a
 2555 0f04 9B020000 		.4byte	.LASF175
 2556 0f08 01       		.byte	0x1
 2557 0f09 EF       		.byte	0xef
 2558 0f0a 91000000 		.4byte	0x91
 2559 0f0e A2020000 		.4byte	.LLST8
 2560 0f12 00       		.byte	0
 2561 0f13 29       		.uleb128 0x29
ARM GAS  /tmp/ccfKQ0CH.s 			page 59


 2562 0f14 C4000000 		.4byte	.LASF187
 2563 0f18 01       		.byte	0x1
 2564 0f19 D9       		.byte	0xd9
 2565 0f1a 91000000 		.4byte	0x91
 2566 0f1e 00000000 		.4byte	.LFB148
 2567 0f22 08000000 		.4byte	.LFE148-.LFB148
 2568 0f26 01       		.uleb128 0x1
 2569 0f27 9C       		.byte	0x9c
 2570 0f28 4B0F0000 		.4byte	0xf4b
 2571 0f2c 2A       		.uleb128 0x2a
 2572 0f2d 71030000 		.4byte	.LASF156
 2573 0f31 01       		.byte	0x1
 2574 0f32 DA       		.byte	0xda
 2575 0f33 E50A0000 		.4byte	0xae5
 2576 0f37 C3020000 		.4byte	.LLST5
 2577 0f3b 2A       		.uleb128 0x2a
 2578 0f3c 9B020000 		.4byte	.LASF175
 2579 0f40 01       		.byte	0x1
 2580 0f41 DB       		.byte	0xdb
 2581 0f42 91000000 		.4byte	0x91
 2582 0f46 E4020000 		.4byte	.LLST6
 2583 0f4a 00       		.byte	0
 2584 0f4b 2B       		.uleb128 0x2b
 2585 0f4c CE080000 		.4byte	.LASF188
 2586 0f50 01       		.byte	0x1
 2587 0f51 C5       		.byte	0xc5
 2588 0f52 00000000 		.4byte	.LFB147
 2589 0f56 08000000 		.4byte	.LFE147-.LFB147
 2590 0f5a 01       		.uleb128 0x1
 2591 0f5b 9C       		.byte	0x9c
 2592 0f5c 7D0F0000 		.4byte	0xf7d
 2593 0f60 2C       		.uleb128 0x2c
 2594 0f61 71030000 		.4byte	.LASF156
 2595 0f65 01       		.byte	0x1
 2596 0f66 C6       		.byte	0xc6
 2597 0f67 E50A0000 		.4byte	0xae5
 2598 0f6b 01       		.uleb128 0x1
 2599 0f6c 50       		.byte	0x50
 2600 0f6d 2A       		.uleb128 0x2a
 2601 0f6e 9B020000 		.4byte	.LASF175
 2602 0f72 01       		.byte	0x1
 2603 0f73 C7       		.byte	0xc7
 2604 0f74 91000000 		.4byte	0x91
 2605 0f78 05030000 		.4byte	.LLST4
 2606 0f7c 00       		.byte	0
 2607 0f7d 2B       		.uleb128 0x2b
 2608 0f7e 4A040000 		.4byte	.LASF189
 2609 0f82 01       		.byte	0x1
 2610 0f83 B3       		.byte	0xb3
 2611 0f84 00000000 		.4byte	.LFB146
 2612 0f88 08000000 		.4byte	.LFE146-.LFB146
 2613 0f8c 01       		.uleb128 0x1
 2614 0f8d 9C       		.byte	0x9c
 2615 0f8e AF0F0000 		.4byte	0xfaf
 2616 0f92 2C       		.uleb128 0x2c
 2617 0f93 71030000 		.4byte	.LASF156
 2618 0f97 01       		.byte	0x1
ARM GAS  /tmp/ccfKQ0CH.s 			page 60


 2619 0f98 B4       		.byte	0xb4
 2620 0f99 E50A0000 		.4byte	0xae5
 2621 0f9d 01       		.uleb128 0x1
 2622 0f9e 50       		.byte	0x50
 2623 0f9f 2A       		.uleb128 0x2a
 2624 0fa0 9B020000 		.4byte	.LASF175
 2625 0fa4 01       		.byte	0x1
 2626 0fa5 B5       		.byte	0xb5
 2627 0fa6 91000000 		.4byte	0x91
 2628 0faa 26030000 		.4byte	.LLST3
 2629 0fae 00       		.byte	0
 2630 0faf 29       		.uleb128 0x29
 2631 0fb0 B1030000 		.4byte	.LASF190
 2632 0fb4 01       		.byte	0x1
 2633 0fb5 9D       		.byte	0x9d
 2634 0fb6 91000000 		.4byte	0x91
 2635 0fba 00000000 		.4byte	.LFB145
 2636 0fbe 0A000000 		.4byte	.LFE145-.LFB145
 2637 0fc2 01       		.uleb128 0x1
 2638 0fc3 9C       		.byte	0x9c
 2639 0fc4 F40F0000 		.4byte	0xff4
 2640 0fc8 2A       		.uleb128 0x2a
 2641 0fc9 71030000 		.4byte	.LASF156
 2642 0fcd 01       		.byte	0x1
 2643 0fce 9E       		.byte	0x9e
 2644 0fcf E50A0000 		.4byte	0xae5
 2645 0fd3 47030000 		.4byte	.LLST1
 2646 0fd7 2A       		.uleb128 0x2a
 2647 0fd8 9B020000 		.4byte	.LASF175
 2648 0fdc 01       		.byte	0x1
 2649 0fdd 9F       		.byte	0x9f
 2650 0fde 91000000 		.4byte	0x91
 2651 0fe2 68030000 		.4byte	.LLST2
 2652 0fe6 2C       		.uleb128 0x2c
 2653 0fe7 FE060000 		.4byte	.LASF191
 2654 0feb 01       		.byte	0x1
 2655 0fec A0       		.byte	0xa0
 2656 0fed 91000000 		.4byte	0x91
 2657 0ff1 01       		.uleb128 0x1
 2658 0ff2 52       		.byte	0x52
 2659 0ff3 00       		.byte	0
 2660 0ff4 2B       		.uleb128 0x2b
 2661 0ff5 CB070000 		.4byte	.LASF192
 2662 0ff9 01       		.byte	0x1
 2663 0ffa 85       		.byte	0x85
 2664 0ffb 00000000 		.4byte	.LFB144
 2665 0fff 06000000 		.4byte	.LFE144-.LFB144
 2666 1003 01       		.uleb128 0x1
 2667 1004 9C       		.byte	0x9c
 2668 1005 24100000 		.4byte	0x1024
 2669 1009 2C       		.uleb128 0x2c
 2670 100a 71030000 		.4byte	.LASF156
 2671 100e 01       		.byte	0x1
 2672 100f 86       		.byte	0x86
 2673 1010 E50A0000 		.4byte	0xae5
 2674 1014 01       		.uleb128 0x1
 2675 1015 50       		.byte	0x50
ARM GAS  /tmp/ccfKQ0CH.s 			page 61


 2676 1016 2C       		.uleb128 0x2c
 2677 1017 4A030000 		.4byte	.LASF193
 2678 101b 01       		.byte	0x1
 2679 101c 87       		.byte	0x87
 2680 101d 91000000 		.4byte	0x91
 2681 1021 01       		.uleb128 0x1
 2682 1022 51       		.byte	0x51
 2683 1023 00       		.byte	0
 2684 1024 2B       		.uleb128 0x2b
 2685 1025 90010000 		.4byte	.LASF194
 2686 1029 01       		.byte	0x1
 2687 102a 71       		.byte	0x71
 2688 102b 00000000 		.4byte	.LFB143
 2689 102f 08000000 		.4byte	.LFE143-.LFB143
 2690 1033 01       		.uleb128 0x1
 2691 1034 9C       		.byte	0x9c
 2692 1035 47100000 		.4byte	0x1047
 2693 1039 2C       		.uleb128 0x2c
 2694 103a 71030000 		.4byte	.LASF156
 2695 103e 01       		.byte	0x1
 2696 103f 72       		.byte	0x72
 2697 1040 E50A0000 		.4byte	0xae5
 2698 1044 01       		.uleb128 0x1
 2699 1045 50       		.byte	0x50
 2700 1046 00       		.byte	0
 2701 1047 2D       		.uleb128 0x2d
 2702 1048 F2020000 		.4byte	.LASF199
 2703 104c 01       		.byte	0x1
 2704 104d 50       		.byte	0x50
 2705 104e 00000000 		.4byte	.LFB142
 2706 1052 18000000 		.4byte	.LFE142-.LFB142
 2707 1056 01       		.uleb128 0x1
 2708 1057 9C       		.byte	0x9c
 2709 1058 2C       		.uleb128 0x2c
 2710 1059 71030000 		.4byte	.LASF156
 2711 105d 01       		.byte	0x1
 2712 105e 51       		.byte	0x51
 2713 105f E50A0000 		.4byte	0xae5
 2714 1063 01       		.uleb128 0x1
 2715 1064 50       		.byte	0x50
 2716 1065 2A       		.uleb128 0x2a
 2717 1066 9B020000 		.4byte	.LASF175
 2718 106a 01       		.byte	0x1
 2719 106b 52       		.byte	0x52
 2720 106c 91000000 		.4byte	0x91
 2721 1070 89030000 		.4byte	.LLST0
 2722 1074 2C       		.uleb128 0x2c
 2723 1075 37050000 		.4byte	.LASF195
 2724 1079 01       		.byte	0x1
 2725 107a 53       		.byte	0x53
 2726 107b 91000000 		.4byte	0x91
 2727 107f 01       		.uleb128 0x1
 2728 1080 52       		.byte	0x52
 2729 1081 22       		.uleb128 0x22
 2730 1082 52010000 		.4byte	.LASF176
 2731 1086 01       		.byte	0x1
 2732 1087 55       		.byte	0x55
ARM GAS  /tmp/ccfKQ0CH.s 			page 62


 2733 1088 AB0C0000 		.4byte	0xcab
 2734 108c 01       		.uleb128 0x1
 2735 108d 53       		.byte	0x53
 2736 108e 00       		.byte	0
 2737 108f 00       		.byte	0
 2738              		.section	.debug_abbrev,"",%progbits
 2739              	.Ldebug_abbrev0:
 2740 0000 01       		.uleb128 0x1
 2741 0001 11       		.uleb128 0x11
 2742 0002 01       		.byte	0x1
 2743 0003 25       		.uleb128 0x25
 2744 0004 0E       		.uleb128 0xe
 2745 0005 13       		.uleb128 0x13
 2746 0006 0B       		.uleb128 0xb
 2747 0007 03       		.uleb128 0x3
 2748 0008 0E       		.uleb128 0xe
 2749 0009 1B       		.uleb128 0x1b
 2750 000a 0E       		.uleb128 0xe
 2751 000b 55       		.uleb128 0x55
 2752 000c 17       		.uleb128 0x17
 2753 000d 11       		.uleb128 0x11
 2754 000e 01       		.uleb128 0x1
 2755 000f 10       		.uleb128 0x10
 2756 0010 17       		.uleb128 0x17
 2757 0011 00       		.byte	0
 2758 0012 00       		.byte	0
 2759 0013 02       		.uleb128 0x2
 2760 0014 24       		.uleb128 0x24
 2761 0015 00       		.byte	0
 2762 0016 0B       		.uleb128 0xb
 2763 0017 0B       		.uleb128 0xb
 2764 0018 3E       		.uleb128 0x3e
 2765 0019 0B       		.uleb128 0xb
 2766 001a 03       		.uleb128 0x3
 2767 001b 08       		.uleb128 0x8
 2768 001c 00       		.byte	0
 2769 001d 00       		.byte	0
 2770 001e 03       		.uleb128 0x3
 2771 001f 24       		.uleb128 0x24
 2772 0020 00       		.byte	0
 2773 0021 0B       		.uleb128 0xb
 2774 0022 0B       		.uleb128 0xb
 2775 0023 3E       		.uleb128 0x3e
 2776 0024 0B       		.uleb128 0xb
 2777 0025 03       		.uleb128 0x3
 2778 0026 0E       		.uleb128 0xe
 2779 0027 00       		.byte	0
 2780 0028 00       		.byte	0
 2781 0029 04       		.uleb128 0x4
 2782 002a 16       		.uleb128 0x16
 2783 002b 00       		.byte	0
 2784 002c 03       		.uleb128 0x3
 2785 002d 0E       		.uleb128 0xe
 2786 002e 3A       		.uleb128 0x3a
 2787 002f 0B       		.uleb128 0xb
 2788 0030 3B       		.uleb128 0x3b
 2789 0031 0B       		.uleb128 0xb
ARM GAS  /tmp/ccfKQ0CH.s 			page 63


 2790 0032 49       		.uleb128 0x49
 2791 0033 13       		.uleb128 0x13
 2792 0034 00       		.byte	0
 2793 0035 00       		.byte	0
 2794 0036 05       		.uleb128 0x5
 2795 0037 35       		.uleb128 0x35
 2796 0038 00       		.byte	0
 2797 0039 49       		.uleb128 0x49
 2798 003a 13       		.uleb128 0x13
 2799 003b 00       		.byte	0
 2800 003c 00       		.byte	0
 2801 003d 06       		.uleb128 0x6
 2802 003e 26       		.uleb128 0x26
 2803 003f 00       		.byte	0
 2804 0040 49       		.uleb128 0x49
 2805 0041 13       		.uleb128 0x13
 2806 0042 00       		.byte	0
 2807 0043 00       		.byte	0
 2808 0044 07       		.uleb128 0x7
 2809 0045 0F       		.uleb128 0xf
 2810 0046 00       		.byte	0
 2811 0047 0B       		.uleb128 0xb
 2812 0048 0B       		.uleb128 0xb
 2813 0049 00       		.byte	0
 2814 004a 00       		.byte	0
 2815 004b 08       		.uleb128 0x8
 2816 004c 01       		.uleb128 0x1
 2817 004d 01       		.byte	0x1
 2818 004e 49       		.uleb128 0x49
 2819 004f 13       		.uleb128 0x13
 2820 0050 01       		.uleb128 0x1
 2821 0051 13       		.uleb128 0x13
 2822 0052 00       		.byte	0
 2823 0053 00       		.byte	0
 2824 0054 09       		.uleb128 0x9
 2825 0055 21       		.uleb128 0x21
 2826 0056 00       		.byte	0
 2827 0057 49       		.uleb128 0x49
 2828 0058 13       		.uleb128 0x13
 2829 0059 2F       		.uleb128 0x2f
 2830 005a 0B       		.uleb128 0xb
 2831 005b 00       		.byte	0
 2832 005c 00       		.byte	0
 2833 005d 0A       		.uleb128 0xa
 2834 005e 34       		.uleb128 0x34
 2835 005f 00       		.byte	0
 2836 0060 03       		.uleb128 0x3
 2837 0061 0E       		.uleb128 0xe
 2838 0062 3A       		.uleb128 0x3a
 2839 0063 0B       		.uleb128 0xb
 2840 0064 3B       		.uleb128 0x3b
 2841 0065 05       		.uleb128 0x5
 2842 0066 49       		.uleb128 0x49
 2843 0067 13       		.uleb128 0x13
 2844 0068 3F       		.uleb128 0x3f
 2845 0069 19       		.uleb128 0x19
 2846 006a 3C       		.uleb128 0x3c
ARM GAS  /tmp/ccfKQ0CH.s 			page 64


 2847 006b 19       		.uleb128 0x19
 2848 006c 00       		.byte	0
 2849 006d 00       		.byte	0
 2850 006e 0B       		.uleb128 0xb
 2851 006f 34       		.uleb128 0x34
 2852 0070 00       		.byte	0
 2853 0071 03       		.uleb128 0x3
 2854 0072 0E       		.uleb128 0xe
 2855 0073 3A       		.uleb128 0x3a
 2856 0074 0B       		.uleb128 0xb
 2857 0075 3B       		.uleb128 0x3b
 2858 0076 0B       		.uleb128 0xb
 2859 0077 49       		.uleb128 0x49
 2860 0078 13       		.uleb128 0x13
 2861 0079 3F       		.uleb128 0x3f
 2862 007a 19       		.uleb128 0x19
 2863 007b 3C       		.uleb128 0x3c
 2864 007c 19       		.uleb128 0x19
 2865 007d 00       		.byte	0
 2866 007e 00       		.byte	0
 2867 007f 0C       		.uleb128 0xc
 2868 0080 13       		.uleb128 0x13
 2869 0081 01       		.byte	0x1
 2870 0082 0B       		.uleb128 0xb
 2871 0083 0B       		.uleb128 0xb
 2872 0084 3A       		.uleb128 0x3a
 2873 0085 0B       		.uleb128 0xb
 2874 0086 3B       		.uleb128 0x3b
 2875 0087 0B       		.uleb128 0xb
 2876 0088 01       		.uleb128 0x1
 2877 0089 13       		.uleb128 0x13
 2878 008a 00       		.byte	0
 2879 008b 00       		.byte	0
 2880 008c 0D       		.uleb128 0xd
 2881 008d 0D       		.uleb128 0xd
 2882 008e 00       		.byte	0
 2883 008f 03       		.uleb128 0x3
 2884 0090 0E       		.uleb128 0xe
 2885 0091 3A       		.uleb128 0x3a
 2886 0092 0B       		.uleb128 0xb
 2887 0093 3B       		.uleb128 0x3b
 2888 0094 0B       		.uleb128 0xb
 2889 0095 49       		.uleb128 0x49
 2890 0096 13       		.uleb128 0x13
 2891 0097 38       		.uleb128 0x38
 2892 0098 0B       		.uleb128 0xb
 2893 0099 00       		.byte	0
 2894 009a 00       		.byte	0
 2895 009b 0E       		.uleb128 0xe
 2896 009c 16       		.uleb128 0x16
 2897 009d 00       		.byte	0
 2898 009e 03       		.uleb128 0x3
 2899 009f 08       		.uleb128 0x8
 2900 00a0 3A       		.uleb128 0x3a
 2901 00a1 0B       		.uleb128 0xb
 2902 00a2 3B       		.uleb128 0x3b
 2903 00a3 0B       		.uleb128 0xb
ARM GAS  /tmp/ccfKQ0CH.s 			page 65


 2904 00a4 49       		.uleb128 0x49
 2905 00a5 13       		.uleb128 0x13
 2906 00a6 00       		.byte	0
 2907 00a7 00       		.byte	0
 2908 00a8 0F       		.uleb128 0xf
 2909 00a9 16       		.uleb128 0x16
 2910 00aa 00       		.byte	0
 2911 00ab 03       		.uleb128 0x3
 2912 00ac 0E       		.uleb128 0xe
 2913 00ad 3A       		.uleb128 0x3a
 2914 00ae 0B       		.uleb128 0xb
 2915 00af 3B       		.uleb128 0x3b
 2916 00b0 05       		.uleb128 0x5
 2917 00b1 49       		.uleb128 0x49
 2918 00b2 13       		.uleb128 0x13
 2919 00b3 00       		.byte	0
 2920 00b4 00       		.byte	0
 2921 00b5 10       		.uleb128 0x10
 2922 00b6 17       		.uleb128 0x17
 2923 00b7 01       		.byte	0x1
 2924 00b8 0B       		.uleb128 0xb
 2925 00b9 0B       		.uleb128 0xb
 2926 00ba 3A       		.uleb128 0x3a
 2927 00bb 0B       		.uleb128 0xb
 2928 00bc 3B       		.uleb128 0x3b
 2929 00bd 0B       		.uleb128 0xb
 2930 00be 01       		.uleb128 0x1
 2931 00bf 13       		.uleb128 0x13
 2932 00c0 00       		.byte	0
 2933 00c1 00       		.byte	0
 2934 00c2 11       		.uleb128 0x11
 2935 00c3 0D       		.uleb128 0xd
 2936 00c4 00       		.byte	0
 2937 00c5 03       		.uleb128 0x3
 2938 00c6 0E       		.uleb128 0xe
 2939 00c7 3A       		.uleb128 0x3a
 2940 00c8 0B       		.uleb128 0xb
 2941 00c9 3B       		.uleb128 0x3b
 2942 00ca 0B       		.uleb128 0xb
 2943 00cb 49       		.uleb128 0x49
 2944 00cc 13       		.uleb128 0x13
 2945 00cd 00       		.byte	0
 2946 00ce 00       		.byte	0
 2947 00cf 12       		.uleb128 0x12
 2948 00d0 13       		.uleb128 0x13
 2949 00d1 01       		.byte	0x1
 2950 00d2 03       		.uleb128 0x3
 2951 00d3 0E       		.uleb128 0xe
 2952 00d4 0B       		.uleb128 0xb
 2953 00d5 0B       		.uleb128 0xb
 2954 00d6 3A       		.uleb128 0x3a
 2955 00d7 0B       		.uleb128 0xb
 2956 00d8 3B       		.uleb128 0x3b
 2957 00d9 0B       		.uleb128 0xb
 2958 00da 01       		.uleb128 0x1
 2959 00db 13       		.uleb128 0x13
 2960 00dc 00       		.byte	0
ARM GAS  /tmp/ccfKQ0CH.s 			page 66


 2961 00dd 00       		.byte	0
 2962 00de 13       		.uleb128 0x13
 2963 00df 0D       		.uleb128 0xd
 2964 00e0 00       		.byte	0
 2965 00e1 03       		.uleb128 0x3
 2966 00e2 08       		.uleb128 0x8
 2967 00e3 3A       		.uleb128 0x3a
 2968 00e4 0B       		.uleb128 0xb
 2969 00e5 3B       		.uleb128 0x3b
 2970 00e6 0B       		.uleb128 0xb
 2971 00e7 49       		.uleb128 0x49
 2972 00e8 13       		.uleb128 0x13
 2973 00e9 38       		.uleb128 0x38
 2974 00ea 0B       		.uleb128 0xb
 2975 00eb 00       		.byte	0
 2976 00ec 00       		.byte	0
 2977 00ed 14       		.uleb128 0x14
 2978 00ee 0F       		.uleb128 0xf
 2979 00ef 00       		.byte	0
 2980 00f0 0B       		.uleb128 0xb
 2981 00f1 0B       		.uleb128 0xb
 2982 00f2 49       		.uleb128 0x49
 2983 00f3 13       		.uleb128 0x13
 2984 00f4 00       		.byte	0
 2985 00f5 00       		.byte	0
 2986 00f6 15       		.uleb128 0x15
 2987 00f7 13       		.uleb128 0x13
 2988 00f8 01       		.byte	0x1
 2989 00f9 03       		.uleb128 0x3
 2990 00fa 0E       		.uleb128 0xe
 2991 00fb 0B       		.uleb128 0xb
 2992 00fc 05       		.uleb128 0x5
 2993 00fd 3A       		.uleb128 0x3a
 2994 00fe 0B       		.uleb128 0xb
 2995 00ff 3B       		.uleb128 0x3b
 2996 0100 0B       		.uleb128 0xb
 2997 0101 01       		.uleb128 0x1
 2998 0102 13       		.uleb128 0x13
 2999 0103 00       		.byte	0
 3000 0104 00       		.byte	0
 3001 0105 16       		.uleb128 0x16
 3002 0106 0D       		.uleb128 0xd
 3003 0107 00       		.byte	0
 3004 0108 03       		.uleb128 0x3
 3005 0109 0E       		.uleb128 0xe
 3006 010a 3A       		.uleb128 0x3a
 3007 010b 0B       		.uleb128 0xb
 3008 010c 3B       		.uleb128 0x3b
 3009 010d 0B       		.uleb128 0xb
 3010 010e 49       		.uleb128 0x49
 3011 010f 13       		.uleb128 0x13
 3012 0110 38       		.uleb128 0x38
 3013 0111 05       		.uleb128 0x5
 3014 0112 00       		.byte	0
 3015 0113 00       		.byte	0
 3016 0114 17       		.uleb128 0x17
 3017 0115 15       		.uleb128 0x15
ARM GAS  /tmp/ccfKQ0CH.s 			page 67


 3018 0116 00       		.byte	0
 3019 0117 27       		.uleb128 0x27
 3020 0118 19       		.uleb128 0x19
 3021 0119 00       		.byte	0
 3022 011a 00       		.byte	0
 3023 011b 18       		.uleb128 0x18
 3024 011c 15       		.uleb128 0x15
 3025 011d 01       		.byte	0x1
 3026 011e 27       		.uleb128 0x27
 3027 011f 19       		.uleb128 0x19
 3028 0120 49       		.uleb128 0x49
 3029 0121 13       		.uleb128 0x13
 3030 0122 01       		.uleb128 0x1
 3031 0123 13       		.uleb128 0x13
 3032 0124 00       		.byte	0
 3033 0125 00       		.byte	0
 3034 0126 19       		.uleb128 0x19
 3035 0127 05       		.uleb128 0x5
 3036 0128 00       		.byte	0
 3037 0129 49       		.uleb128 0x49
 3038 012a 13       		.uleb128 0x13
 3039 012b 00       		.byte	0
 3040 012c 00       		.byte	0
 3041 012d 1A       		.uleb128 0x1a
 3042 012e 13       		.uleb128 0x13
 3043 012f 01       		.byte	0x1
 3044 0130 03       		.uleb128 0x3
 3045 0131 0E       		.uleb128 0xe
 3046 0132 0B       		.uleb128 0xb
 3047 0133 05       		.uleb128 0x5
 3048 0134 3A       		.uleb128 0x3a
 3049 0135 0B       		.uleb128 0xb
 3050 0136 3B       		.uleb128 0x3b
 3051 0137 05       		.uleb128 0x5
 3052 0138 01       		.uleb128 0x1
 3053 0139 13       		.uleb128 0x13
 3054 013a 00       		.byte	0
 3055 013b 00       		.byte	0
 3056 013c 1B       		.uleb128 0x1b
 3057 013d 0D       		.uleb128 0xd
 3058 013e 00       		.byte	0
 3059 013f 03       		.uleb128 0x3
 3060 0140 0E       		.uleb128 0xe
 3061 0141 3A       		.uleb128 0x3a
 3062 0142 0B       		.uleb128 0xb
 3063 0143 3B       		.uleb128 0x3b
 3064 0144 05       		.uleb128 0x5
 3065 0145 49       		.uleb128 0x49
 3066 0146 13       		.uleb128 0x13
 3067 0147 38       		.uleb128 0x38
 3068 0148 0B       		.uleb128 0xb
 3069 0149 00       		.byte	0
 3070 014a 00       		.byte	0
 3071 014b 1C       		.uleb128 0x1c
 3072 014c 0D       		.uleb128 0xd
 3073 014d 00       		.byte	0
 3074 014e 03       		.uleb128 0x3
ARM GAS  /tmp/ccfKQ0CH.s 			page 68


 3075 014f 0E       		.uleb128 0xe
 3076 0150 3A       		.uleb128 0x3a
 3077 0151 0B       		.uleb128 0xb
 3078 0152 3B       		.uleb128 0x3b
 3079 0153 05       		.uleb128 0x5
 3080 0154 49       		.uleb128 0x49
 3081 0155 13       		.uleb128 0x13
 3082 0156 38       		.uleb128 0x38
 3083 0157 05       		.uleb128 0x5
 3084 0158 00       		.byte	0
 3085 0159 00       		.byte	0
 3086 015a 1D       		.uleb128 0x1d
 3087 015b 13       		.uleb128 0x13
 3088 015c 01       		.byte	0x1
 3089 015d 03       		.uleb128 0x3
 3090 015e 0E       		.uleb128 0xe
 3091 015f 0B       		.uleb128 0xb
 3092 0160 0B       		.uleb128 0xb
 3093 0161 3A       		.uleb128 0x3a
 3094 0162 0B       		.uleb128 0xb
 3095 0163 3B       		.uleb128 0x3b
 3096 0164 05       		.uleb128 0x5
 3097 0165 01       		.uleb128 0x1
 3098 0166 13       		.uleb128 0x13
 3099 0167 00       		.byte	0
 3100 0168 00       		.byte	0
 3101 0169 1E       		.uleb128 0x1e
 3102 016a 13       		.uleb128 0x13
 3103 016b 01       		.byte	0x1
 3104 016c 0B       		.uleb128 0xb
 3105 016d 0B       		.uleb128 0xb
 3106 016e 3A       		.uleb128 0x3a
 3107 016f 0B       		.uleb128 0xb
 3108 0170 3B       		.uleb128 0x3b
 3109 0171 05       		.uleb128 0x5
 3110 0172 01       		.uleb128 0x1
 3111 0173 13       		.uleb128 0x13
 3112 0174 00       		.byte	0
 3113 0175 00       		.byte	0
 3114 0176 1F       		.uleb128 0x1f
 3115 0177 17       		.uleb128 0x17
 3116 0178 01       		.byte	0x1
 3117 0179 0B       		.uleb128 0xb
 3118 017a 0B       		.uleb128 0xb
 3119 017b 3A       		.uleb128 0x3a
 3120 017c 0B       		.uleb128 0xb
 3121 017d 3B       		.uleb128 0x3b
 3122 017e 05       		.uleb128 0x5
 3123 017f 01       		.uleb128 0x1
 3124 0180 13       		.uleb128 0x13
 3125 0181 00       		.byte	0
 3126 0182 00       		.byte	0
 3127 0183 20       		.uleb128 0x20
 3128 0184 0D       		.uleb128 0xd
 3129 0185 00       		.byte	0
 3130 0186 03       		.uleb128 0x3
 3131 0187 0E       		.uleb128 0xe
ARM GAS  /tmp/ccfKQ0CH.s 			page 69


 3132 0188 3A       		.uleb128 0x3a
 3133 0189 0B       		.uleb128 0xb
 3134 018a 3B       		.uleb128 0x3b
 3135 018b 05       		.uleb128 0x5
 3136 018c 49       		.uleb128 0x49
 3137 018d 13       		.uleb128 0x13
 3138 018e 00       		.byte	0
 3139 018f 00       		.byte	0
 3140 0190 21       		.uleb128 0x21
 3141 0191 15       		.uleb128 0x15
 3142 0192 01       		.byte	0x1
 3143 0193 27       		.uleb128 0x27
 3144 0194 19       		.uleb128 0x19
 3145 0195 01       		.uleb128 0x1
 3146 0196 13       		.uleb128 0x13
 3147 0197 00       		.byte	0
 3148 0198 00       		.byte	0
 3149 0199 22       		.uleb128 0x22
 3150 019a 34       		.uleb128 0x34
 3151 019b 00       		.byte	0
 3152 019c 03       		.uleb128 0x3
 3153 019d 0E       		.uleb128 0xe
 3154 019e 3A       		.uleb128 0x3a
 3155 019f 0B       		.uleb128 0xb
 3156 01a0 3B       		.uleb128 0x3b
 3157 01a1 0B       		.uleb128 0xb
 3158 01a2 49       		.uleb128 0x49
 3159 01a3 13       		.uleb128 0x13
 3160 01a4 02       		.uleb128 0x2
 3161 01a5 18       		.uleb128 0x18
 3162 01a6 00       		.byte	0
 3163 01a7 00       		.byte	0
 3164 01a8 23       		.uleb128 0x23
 3165 01a9 2E       		.uleb128 0x2e
 3166 01aa 01       		.byte	0x1
 3167 01ab 3F       		.uleb128 0x3f
 3168 01ac 19       		.uleb128 0x19
 3169 01ad 03       		.uleb128 0x3
 3170 01ae 0E       		.uleb128 0xe
 3171 01af 3A       		.uleb128 0x3a
 3172 01b0 0B       		.uleb128 0xb
 3173 01b1 3B       		.uleb128 0x3b
 3174 01b2 05       		.uleb128 0x5
 3175 01b3 27       		.uleb128 0x27
 3176 01b4 19       		.uleb128 0x19
 3177 01b5 11       		.uleb128 0x11
 3178 01b6 01       		.uleb128 0x1
 3179 01b7 12       		.uleb128 0x12
 3180 01b8 06       		.uleb128 0x6
 3181 01b9 40       		.uleb128 0x40
 3182 01ba 18       		.uleb128 0x18
 3183 01bb 9742     		.uleb128 0x2117
 3184 01bd 19       		.uleb128 0x19
 3185 01be 01       		.uleb128 0x1
 3186 01bf 13       		.uleb128 0x13
 3187 01c0 00       		.byte	0
 3188 01c1 00       		.byte	0
ARM GAS  /tmp/ccfKQ0CH.s 			page 70


 3189 01c2 24       		.uleb128 0x24
 3190 01c3 05       		.uleb128 0x5
 3191 01c4 00       		.byte	0
 3192 01c5 03       		.uleb128 0x3
 3193 01c6 0E       		.uleb128 0xe
 3194 01c7 3A       		.uleb128 0x3a
 3195 01c8 0B       		.uleb128 0xb
 3196 01c9 3B       		.uleb128 0x3b
 3197 01ca 05       		.uleb128 0x5
 3198 01cb 49       		.uleb128 0x49
 3199 01cc 13       		.uleb128 0x13
 3200 01cd 02       		.uleb128 0x2
 3201 01ce 18       		.uleb128 0x18
 3202 01cf 00       		.byte	0
 3203 01d0 00       		.byte	0
 3204 01d1 25       		.uleb128 0x25
 3205 01d2 2E       		.uleb128 0x2e
 3206 01d3 01       		.byte	0x1
 3207 01d4 3F       		.uleb128 0x3f
 3208 01d5 19       		.uleb128 0x19
 3209 01d6 03       		.uleb128 0x3
 3210 01d7 0E       		.uleb128 0xe
 3211 01d8 3A       		.uleb128 0x3a
 3212 01d9 0B       		.uleb128 0xb
 3213 01da 3B       		.uleb128 0x3b
 3214 01db 05       		.uleb128 0x5
 3215 01dc 27       		.uleb128 0x27
 3216 01dd 19       		.uleb128 0x19
 3217 01de 49       		.uleb128 0x49
 3218 01df 13       		.uleb128 0x13
 3219 01e0 11       		.uleb128 0x11
 3220 01e1 01       		.uleb128 0x1
 3221 01e2 12       		.uleb128 0x12
 3222 01e3 06       		.uleb128 0x6
 3223 01e4 40       		.uleb128 0x40
 3224 01e5 18       		.uleb128 0x18
 3225 01e6 9742     		.uleb128 0x2117
 3226 01e8 19       		.uleb128 0x19
 3227 01e9 01       		.uleb128 0x1
 3228 01ea 13       		.uleb128 0x13
 3229 01eb 00       		.byte	0
 3230 01ec 00       		.byte	0
 3231 01ed 26       		.uleb128 0x26
 3232 01ee 05       		.uleb128 0x5
 3233 01ef 00       		.byte	0
 3234 01f0 03       		.uleb128 0x3
 3235 01f1 0E       		.uleb128 0xe
 3236 01f2 3A       		.uleb128 0x3a
 3237 01f3 0B       		.uleb128 0xb
 3238 01f4 3B       		.uleb128 0x3b
 3239 01f5 05       		.uleb128 0x5
 3240 01f6 49       		.uleb128 0x49
 3241 01f7 13       		.uleb128 0x13
 3242 01f8 02       		.uleb128 0x2
 3243 01f9 17       		.uleb128 0x17
 3244 01fa 00       		.byte	0
 3245 01fb 00       		.byte	0
ARM GAS  /tmp/ccfKQ0CH.s 			page 71


 3246 01fc 27       		.uleb128 0x27
 3247 01fd 34       		.uleb128 0x34
 3248 01fe 00       		.byte	0
 3249 01ff 03       		.uleb128 0x3
 3250 0200 0E       		.uleb128 0xe
 3251 0201 3A       		.uleb128 0x3a
 3252 0202 0B       		.uleb128 0xb
 3253 0203 3B       		.uleb128 0x3b
 3254 0204 05       		.uleb128 0x5
 3255 0205 49       		.uleb128 0x49
 3256 0206 13       		.uleb128 0x13
 3257 0207 02       		.uleb128 0x2
 3258 0208 18       		.uleb128 0x18
 3259 0209 00       		.byte	0
 3260 020a 00       		.byte	0
 3261 020b 28       		.uleb128 0x28
 3262 020c 34       		.uleb128 0x34
 3263 020d 00       		.byte	0
 3264 020e 03       		.uleb128 0x3
 3265 020f 0E       		.uleb128 0xe
 3266 0210 3A       		.uleb128 0x3a
 3267 0211 0B       		.uleb128 0xb
 3268 0212 3B       		.uleb128 0x3b
 3269 0213 05       		.uleb128 0x5
 3270 0214 49       		.uleb128 0x49
 3271 0215 13       		.uleb128 0x13
 3272 0216 02       		.uleb128 0x2
 3273 0217 17       		.uleb128 0x17
 3274 0218 00       		.byte	0
 3275 0219 00       		.byte	0
 3276 021a 29       		.uleb128 0x29
 3277 021b 2E       		.uleb128 0x2e
 3278 021c 01       		.byte	0x1
 3279 021d 3F       		.uleb128 0x3f
 3280 021e 19       		.uleb128 0x19
 3281 021f 03       		.uleb128 0x3
 3282 0220 0E       		.uleb128 0xe
 3283 0221 3A       		.uleb128 0x3a
 3284 0222 0B       		.uleb128 0xb
 3285 0223 3B       		.uleb128 0x3b
 3286 0224 0B       		.uleb128 0xb
 3287 0225 27       		.uleb128 0x27
 3288 0226 19       		.uleb128 0x19
 3289 0227 49       		.uleb128 0x49
 3290 0228 13       		.uleb128 0x13
 3291 0229 11       		.uleb128 0x11
 3292 022a 01       		.uleb128 0x1
 3293 022b 12       		.uleb128 0x12
 3294 022c 06       		.uleb128 0x6
 3295 022d 40       		.uleb128 0x40
 3296 022e 18       		.uleb128 0x18
 3297 022f 9742     		.uleb128 0x2117
 3298 0231 19       		.uleb128 0x19
 3299 0232 01       		.uleb128 0x1
 3300 0233 13       		.uleb128 0x13
 3301 0234 00       		.byte	0
 3302 0235 00       		.byte	0
ARM GAS  /tmp/ccfKQ0CH.s 			page 72


 3303 0236 2A       		.uleb128 0x2a
 3304 0237 05       		.uleb128 0x5
 3305 0238 00       		.byte	0
 3306 0239 03       		.uleb128 0x3
 3307 023a 0E       		.uleb128 0xe
 3308 023b 3A       		.uleb128 0x3a
 3309 023c 0B       		.uleb128 0xb
 3310 023d 3B       		.uleb128 0x3b
 3311 023e 0B       		.uleb128 0xb
 3312 023f 49       		.uleb128 0x49
 3313 0240 13       		.uleb128 0x13
 3314 0241 02       		.uleb128 0x2
 3315 0242 17       		.uleb128 0x17
 3316 0243 00       		.byte	0
 3317 0244 00       		.byte	0
 3318 0245 2B       		.uleb128 0x2b
 3319 0246 2E       		.uleb128 0x2e
 3320 0247 01       		.byte	0x1
 3321 0248 3F       		.uleb128 0x3f
 3322 0249 19       		.uleb128 0x19
 3323 024a 03       		.uleb128 0x3
 3324 024b 0E       		.uleb128 0xe
 3325 024c 3A       		.uleb128 0x3a
 3326 024d 0B       		.uleb128 0xb
 3327 024e 3B       		.uleb128 0x3b
 3328 024f 0B       		.uleb128 0xb
 3329 0250 27       		.uleb128 0x27
 3330 0251 19       		.uleb128 0x19
 3331 0252 11       		.uleb128 0x11
 3332 0253 01       		.uleb128 0x1
 3333 0254 12       		.uleb128 0x12
 3334 0255 06       		.uleb128 0x6
 3335 0256 40       		.uleb128 0x40
 3336 0257 18       		.uleb128 0x18
 3337 0258 9742     		.uleb128 0x2117
 3338 025a 19       		.uleb128 0x19
 3339 025b 01       		.uleb128 0x1
 3340 025c 13       		.uleb128 0x13
 3341 025d 00       		.byte	0
 3342 025e 00       		.byte	0
 3343 025f 2C       		.uleb128 0x2c
 3344 0260 05       		.uleb128 0x5
 3345 0261 00       		.byte	0
 3346 0262 03       		.uleb128 0x3
 3347 0263 0E       		.uleb128 0xe
 3348 0264 3A       		.uleb128 0x3a
 3349 0265 0B       		.uleb128 0xb
 3350 0266 3B       		.uleb128 0x3b
 3351 0267 0B       		.uleb128 0xb
 3352 0268 49       		.uleb128 0x49
 3353 0269 13       		.uleb128 0x13
 3354 026a 02       		.uleb128 0x2
 3355 026b 18       		.uleb128 0x18
 3356 026c 00       		.byte	0
 3357 026d 00       		.byte	0
 3358 026e 2D       		.uleb128 0x2d
 3359 026f 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccfKQ0CH.s 			page 73


 3360 0270 01       		.byte	0x1
 3361 0271 3F       		.uleb128 0x3f
 3362 0272 19       		.uleb128 0x19
 3363 0273 03       		.uleb128 0x3
 3364 0274 0E       		.uleb128 0xe
 3365 0275 3A       		.uleb128 0x3a
 3366 0276 0B       		.uleb128 0xb
 3367 0277 3B       		.uleb128 0x3b
 3368 0278 0B       		.uleb128 0xb
 3369 0279 27       		.uleb128 0x27
 3370 027a 19       		.uleb128 0x19
 3371 027b 11       		.uleb128 0x11
 3372 027c 01       		.uleb128 0x1
 3373 027d 12       		.uleb128 0x12
 3374 027e 06       		.uleb128 0x6
 3375 027f 40       		.uleb128 0x40
 3376 0280 18       		.uleb128 0x18
 3377 0281 9742     		.uleb128 0x2117
 3378 0283 19       		.uleb128 0x19
 3379 0284 00       		.byte	0
 3380 0285 00       		.byte	0
 3381 0286 00       		.byte	0
 3382              		.section	.debug_loc,"",%progbits
 3383              	.Ldebug_loc0:
 3384              	.LLST26:
 3385 0000 00000000 		.4byte	.LVL57
 3386 0004 04000000 		.4byte	.LVL58
 3387 0008 0100     		.2byte	0x1
 3388 000a 50       		.byte	0x50
 3389 000b 04000000 		.4byte	.LVL58
 3390 000f 06000000 		.4byte	.LFE163
 3391 0013 0400     		.2byte	0x4
 3392 0015 F3       		.byte	0xf3
 3393 0016 01       		.uleb128 0x1
 3394 0017 50       		.byte	0x50
 3395 0018 9F       		.byte	0x9f
 3396 0019 00000000 		.4byte	0
 3397 001d 00000000 		.4byte	0
 3398              	.LLST25:
 3399 0021 00000000 		.4byte	.LVL55
 3400 0025 04000000 		.4byte	.LVL56
 3401 0029 0100     		.2byte	0x1
 3402 002b 50       		.byte	0x50
 3403 002c 04000000 		.4byte	.LVL56
 3404 0030 06000000 		.4byte	.LFE162
 3405 0034 0400     		.2byte	0x4
 3406 0036 F3       		.byte	0xf3
 3407 0037 01       		.uleb128 0x1
 3408 0038 50       		.byte	0x50
 3409 0039 9F       		.byte	0x9f
 3410 003a 00000000 		.4byte	0
 3411 003e 00000000 		.4byte	0
 3412              	.LLST22:
 3413 0042 00000000 		.4byte	.LVL40
 3414 0046 4E000000 		.4byte	.LVL48
 3415 004a 0100     		.2byte	0x1
 3416 004c 50       		.byte	0x50
ARM GAS  /tmp/ccfKQ0CH.s 			page 74


 3417 004d 4E000000 		.4byte	.LVL48
 3418 0051 52000000 		.4byte	.LVL49
 3419 0055 0400     		.2byte	0x4
 3420 0057 F3       		.byte	0xf3
 3421 0058 01       		.uleb128 0x1
 3422 0059 50       		.byte	0x50
 3423 005a 9F       		.byte	0x9f
 3424 005b 52000000 		.4byte	.LVL49
 3425 005f 5A000000 		.4byte	.LVL50
 3426 0063 0100     		.2byte	0x1
 3427 0065 50       		.byte	0x50
 3428 0066 5A000000 		.4byte	.LVL50
 3429 006a 60000000 		.4byte	.LVL51
 3430 006e 0400     		.2byte	0x4
 3431 0070 F3       		.byte	0xf3
 3432 0071 01       		.uleb128 0x1
 3433 0072 50       		.byte	0x50
 3434 0073 9F       		.byte	0x9f
 3435 0074 60000000 		.4byte	.LVL51
 3436 0078 62000000 		.4byte	.LVL52
 3437 007c 0100     		.2byte	0x1
 3438 007e 50       		.byte	0x50
 3439 007f 62000000 		.4byte	.LVL52
 3440 0083 64000000 		.4byte	.LFE159
 3441 0087 0400     		.2byte	0x4
 3442 0089 F3       		.byte	0xf3
 3443 008a 01       		.uleb128 0x1
 3444 008b 50       		.byte	0x50
 3445 008c 9F       		.byte	0x9f
 3446 008d 00000000 		.4byte	0
 3447 0091 00000000 		.4byte	0
 3448              	.LLST23:
 3449 0095 00000000 		.4byte	.LVL40
 3450 0099 52000000 		.4byte	.LVL49
 3451 009d 0200     		.2byte	0x2
 3452 009f 91       		.byte	0x91
 3453 00a0 00       		.sleb128 0
 3454 00a1 52000000 		.4byte	.LVL49
 3455 00a5 64000000 		.4byte	.LFE159
 3456 00a9 0200     		.2byte	0x2
 3457 00ab 91       		.byte	0x91
 3458 00ac 00       		.sleb128 0
 3459 00ad 00000000 		.4byte	0
 3460 00b1 00000000 		.4byte	0
 3461              	.LLST24:
 3462 00b5 24000000 		.4byte	.LVL41
 3463 00b9 26000000 		.4byte	.LVL42
 3464 00bd 0200     		.2byte	0x2
 3465 00bf 30       		.byte	0x30
 3466 00c0 9F       		.byte	0x9f
 3467 00c1 26000000 		.4byte	.LVL42
 3468 00c5 64000000 		.4byte	.LFE159
 3469 00c9 0100     		.2byte	0x1
 3470 00cb 54       		.byte	0x54
 3471 00cc 00000000 		.4byte	0
 3472 00d0 00000000 		.4byte	0
 3473              	.LLST20:
ARM GAS  /tmp/ccfKQ0CH.s 			page 75


 3474 00d4 00000000 		.4byte	.LVL37
 3475 00d8 06000000 		.4byte	.LVL39
 3476 00dc 0100     		.2byte	0x1
 3477 00de 50       		.byte	0x50
 3478 00df 06000000 		.4byte	.LVL39
 3479 00e3 08000000 		.4byte	.LFE158
 3480 00e7 0400     		.2byte	0x4
 3481 00e9 F3       		.byte	0xf3
 3482 00ea 01       		.uleb128 0x1
 3483 00eb 50       		.byte	0x50
 3484 00ec 9F       		.byte	0x9f
 3485 00ed 00000000 		.4byte	0
 3486 00f1 00000000 		.4byte	0
 3487              	.LLST21:
 3488 00f5 00000000 		.4byte	.LVL37
 3489 00f9 04000000 		.4byte	.LVL38
 3490 00fd 0100     		.2byte	0x1
 3491 00ff 51       		.byte	0x51
 3492 0100 04000000 		.4byte	.LVL38
 3493 0104 08000000 		.4byte	.LFE158
 3494 0108 0400     		.2byte	0x4
 3495 010a F3       		.byte	0xf3
 3496 010b 01       		.uleb128 0x1
 3497 010c 51       		.byte	0x51
 3498 010d 9F       		.byte	0x9f
 3499 010e 00000000 		.4byte	0
 3500 0112 00000000 		.4byte	0
 3501              	.LLST18:
 3502 0116 00000000 		.4byte	.LVL34
 3503 011a 06000000 		.4byte	.LVL36
 3504 011e 0100     		.2byte	0x1
 3505 0120 50       		.byte	0x50
 3506 0121 06000000 		.4byte	.LVL36
 3507 0125 08000000 		.4byte	.LFE157
 3508 0129 0400     		.2byte	0x4
 3509 012b F3       		.byte	0xf3
 3510 012c 01       		.uleb128 0x1
 3511 012d 50       		.byte	0x50
 3512 012e 9F       		.byte	0x9f
 3513 012f 00000000 		.4byte	0
 3514 0133 00000000 		.4byte	0
 3515              	.LLST19:
 3516 0137 00000000 		.4byte	.LVL34
 3517 013b 04000000 		.4byte	.LVL35
 3518 013f 0100     		.2byte	0x1
 3519 0141 51       		.byte	0x51
 3520 0142 04000000 		.4byte	.LVL35
 3521 0146 08000000 		.4byte	.LFE157
 3522 014a 0400     		.2byte	0x4
 3523 014c F3       		.byte	0xf3
 3524 014d 01       		.uleb128 0x1
 3525 014e 51       		.byte	0x51
 3526 014f 9F       		.byte	0x9f
 3527 0150 00000000 		.4byte	0
 3528 0154 00000000 		.4byte	0
 3529              	.LLST17:
 3530 0158 00000000 		.4byte	.LVL32
ARM GAS  /tmp/ccfKQ0CH.s 			page 76


 3531 015c 04000000 		.4byte	.LVL33
 3532 0160 0100     		.2byte	0x1
 3533 0162 51       		.byte	0x51
 3534 0163 04000000 		.4byte	.LVL33
 3535 0167 08000000 		.4byte	.LFE156
 3536 016b 0400     		.2byte	0x4
 3537 016d F3       		.byte	0xf3
 3538 016e 01       		.uleb128 0x1
 3539 016f 51       		.byte	0x51
 3540 0170 9F       		.byte	0x9f
 3541 0171 00000000 		.4byte	0
 3542 0175 00000000 		.4byte	0
 3543              	.LLST16:
 3544 0179 00000000 		.4byte	.LVL30
 3545 017d 04000000 		.4byte	.LVL31
 3546 0181 0100     		.2byte	0x1
 3547 0183 51       		.byte	0x51
 3548 0184 04000000 		.4byte	.LVL31
 3549 0188 08000000 		.4byte	.LFE155
 3550 018c 0400     		.2byte	0x4
 3551 018e F3       		.byte	0xf3
 3552 018f 01       		.uleb128 0x1
 3553 0190 51       		.byte	0x51
 3554 0191 9F       		.byte	0x9f
 3555 0192 00000000 		.4byte	0
 3556 0196 00000000 		.4byte	0
 3557              	.LLST15:
 3558 019a 00000000 		.4byte	.LVL28
 3559 019e 04000000 		.4byte	.LVL29
 3560 01a2 0100     		.2byte	0x1
 3561 01a4 51       		.byte	0x51
 3562 01a5 04000000 		.4byte	.LVL29
 3563 01a9 08000000 		.4byte	.LFE154
 3564 01ad 0400     		.2byte	0x4
 3565 01af F3       		.byte	0xf3
 3566 01b0 01       		.uleb128 0x1
 3567 01b1 51       		.byte	0x51
 3568 01b2 9F       		.byte	0x9f
 3569 01b3 00000000 		.4byte	0
 3570 01b7 00000000 		.4byte	0
 3571              	.LLST14:
 3572 01bb 00000000 		.4byte	.LVL26
 3573 01bf 04000000 		.4byte	.LVL27
 3574 01c3 0100     		.2byte	0x1
 3575 01c5 51       		.byte	0x51
 3576 01c6 04000000 		.4byte	.LVL27
 3577 01ca 08000000 		.4byte	.LFE153
 3578 01ce 0400     		.2byte	0x4
 3579 01d0 F3       		.byte	0xf3
 3580 01d1 01       		.uleb128 0x1
 3581 01d2 51       		.byte	0x51
 3582 01d3 9F       		.byte	0x9f
 3583 01d4 00000000 		.4byte	0
 3584 01d8 00000000 		.4byte	0
 3585              	.LLST13:
 3586 01dc 00000000 		.4byte	.LVL24
 3587 01e0 04000000 		.4byte	.LVL25
ARM GAS  /tmp/ccfKQ0CH.s 			page 77


 3588 01e4 0100     		.2byte	0x1
 3589 01e6 51       		.byte	0x51
 3590 01e7 04000000 		.4byte	.LVL25
 3591 01eb 08000000 		.4byte	.LFE152
 3592 01ef 0400     		.2byte	0x4
 3593 01f1 F3       		.byte	0xf3
 3594 01f2 01       		.uleb128 0x1
 3595 01f3 51       		.byte	0x51
 3596 01f4 9F       		.byte	0x9f
 3597 01f5 00000000 		.4byte	0
 3598 01f9 00000000 		.4byte	0
 3599              	.LLST11:
 3600 01fd 00000000 		.4byte	.LVL21
 3601 0201 06000000 		.4byte	.LVL23
 3602 0205 0100     		.2byte	0x1
 3603 0207 50       		.byte	0x50
 3604 0208 06000000 		.4byte	.LVL23
 3605 020c 08000000 		.4byte	.LFE151
 3606 0210 0400     		.2byte	0x4
 3607 0212 F3       		.byte	0xf3
 3608 0213 01       		.uleb128 0x1
 3609 0214 50       		.byte	0x50
 3610 0215 9F       		.byte	0x9f
 3611 0216 00000000 		.4byte	0
 3612 021a 00000000 		.4byte	0
 3613              	.LLST12:
 3614 021e 00000000 		.4byte	.LVL21
 3615 0222 04000000 		.4byte	.LVL22
 3616 0226 0100     		.2byte	0x1
 3617 0228 51       		.byte	0x51
 3618 0229 04000000 		.4byte	.LVL22
 3619 022d 08000000 		.4byte	.LFE151
 3620 0231 0400     		.2byte	0x4
 3621 0233 F3       		.byte	0xf3
 3622 0234 01       		.uleb128 0x1
 3623 0235 51       		.byte	0x51
 3624 0236 9F       		.byte	0x9f
 3625 0237 00000000 		.4byte	0
 3626 023b 00000000 		.4byte	0
 3627              	.LLST9:
 3628 023f 00000000 		.4byte	.LVL18
 3629 0243 06000000 		.4byte	.LVL20
 3630 0247 0100     		.2byte	0x1
 3631 0249 50       		.byte	0x50
 3632 024a 06000000 		.4byte	.LVL20
 3633 024e 08000000 		.4byte	.LFE150
 3634 0252 0400     		.2byte	0x4
 3635 0254 F3       		.byte	0xf3
 3636 0255 01       		.uleb128 0x1
 3637 0256 50       		.byte	0x50
 3638 0257 9F       		.byte	0x9f
 3639 0258 00000000 		.4byte	0
 3640 025c 00000000 		.4byte	0
 3641              	.LLST10:
 3642 0260 00000000 		.4byte	.LVL18
 3643 0264 04000000 		.4byte	.LVL19
 3644 0268 0100     		.2byte	0x1
ARM GAS  /tmp/ccfKQ0CH.s 			page 78


 3645 026a 51       		.byte	0x51
 3646 026b 04000000 		.4byte	.LVL19
 3647 026f 08000000 		.4byte	.LFE150
 3648 0273 0400     		.2byte	0x4
 3649 0275 F3       		.byte	0xf3
 3650 0276 01       		.uleb128 0x1
 3651 0277 51       		.byte	0x51
 3652 0278 9F       		.byte	0x9f
 3653 0279 00000000 		.4byte	0
 3654 027d 00000000 		.4byte	0
 3655              	.LLST7:
 3656 0281 00000000 		.4byte	.LVL15
 3657 0285 06000000 		.4byte	.LVL17
 3658 0289 0100     		.2byte	0x1
 3659 028b 50       		.byte	0x50
 3660 028c 06000000 		.4byte	.LVL17
 3661 0290 08000000 		.4byte	.LFE149
 3662 0294 0400     		.2byte	0x4
 3663 0296 F3       		.byte	0xf3
 3664 0297 01       		.uleb128 0x1
 3665 0298 50       		.byte	0x50
 3666 0299 9F       		.byte	0x9f
 3667 029a 00000000 		.4byte	0
 3668 029e 00000000 		.4byte	0
 3669              	.LLST8:
 3670 02a2 00000000 		.4byte	.LVL15
 3671 02a6 04000000 		.4byte	.LVL16
 3672 02aa 0100     		.2byte	0x1
 3673 02ac 51       		.byte	0x51
 3674 02ad 04000000 		.4byte	.LVL16
 3675 02b1 08000000 		.4byte	.LFE149
 3676 02b5 0400     		.2byte	0x4
 3677 02b7 F3       		.byte	0xf3
 3678 02b8 01       		.uleb128 0x1
 3679 02b9 51       		.byte	0x51
 3680 02ba 9F       		.byte	0x9f
 3681 02bb 00000000 		.4byte	0
 3682 02bf 00000000 		.4byte	0
 3683              	.LLST5:
 3684 02c3 00000000 		.4byte	.LVL12
 3685 02c7 06000000 		.4byte	.LVL14
 3686 02cb 0100     		.2byte	0x1
 3687 02cd 50       		.byte	0x50
 3688 02ce 06000000 		.4byte	.LVL14
 3689 02d2 08000000 		.4byte	.LFE148
 3690 02d6 0400     		.2byte	0x4
 3691 02d8 F3       		.byte	0xf3
 3692 02d9 01       		.uleb128 0x1
 3693 02da 50       		.byte	0x50
 3694 02db 9F       		.byte	0x9f
 3695 02dc 00000000 		.4byte	0
 3696 02e0 00000000 		.4byte	0
 3697              	.LLST6:
 3698 02e4 00000000 		.4byte	.LVL12
 3699 02e8 04000000 		.4byte	.LVL13
 3700 02ec 0100     		.2byte	0x1
 3701 02ee 51       		.byte	0x51
ARM GAS  /tmp/ccfKQ0CH.s 			page 79


 3702 02ef 04000000 		.4byte	.LVL13
 3703 02f3 08000000 		.4byte	.LFE148
 3704 02f7 0400     		.2byte	0x4
 3705 02f9 F3       		.byte	0xf3
 3706 02fa 01       		.uleb128 0x1
 3707 02fb 51       		.byte	0x51
 3708 02fc 9F       		.byte	0x9f
 3709 02fd 00000000 		.4byte	0
 3710 0301 00000000 		.4byte	0
 3711              	.LLST4:
 3712 0305 00000000 		.4byte	.LVL10
 3713 0309 02000000 		.4byte	.LVL11
 3714 030d 0100     		.2byte	0x1
 3715 030f 51       		.byte	0x51
 3716 0310 02000000 		.4byte	.LVL11
 3717 0314 08000000 		.4byte	.LFE147
 3718 0318 0400     		.2byte	0x4
 3719 031a F3       		.byte	0xf3
 3720 031b 01       		.uleb128 0x1
 3721 031c 51       		.byte	0x51
 3722 031d 9F       		.byte	0x9f
 3723 031e 00000000 		.4byte	0
 3724 0322 00000000 		.4byte	0
 3725              	.LLST3:
 3726 0326 00000000 		.4byte	.LVL8
 3727 032a 02000000 		.4byte	.LVL9
 3728 032e 0100     		.2byte	0x1
 3729 0330 51       		.byte	0x51
 3730 0331 02000000 		.4byte	.LVL9
 3731 0335 08000000 		.4byte	.LFE146
 3732 0339 0400     		.2byte	0x4
 3733 033b F3       		.byte	0xf3
 3734 033c 01       		.uleb128 0x1
 3735 033d 51       		.byte	0x51
 3736 033e 9F       		.byte	0x9f
 3737 033f 00000000 		.4byte	0
 3738 0343 00000000 		.4byte	0
 3739              	.LLST1:
 3740 0347 00000000 		.4byte	.LVL5
 3741 034b 06000000 		.4byte	.LVL7
 3742 034f 0100     		.2byte	0x1
 3743 0351 50       		.byte	0x50
 3744 0352 06000000 		.4byte	.LVL7
 3745 0356 0A000000 		.4byte	.LFE145
 3746 035a 0400     		.2byte	0x4
 3747 035c F3       		.byte	0xf3
 3748 035d 01       		.uleb128 0x1
 3749 035e 50       		.byte	0x50
 3750 035f 9F       		.byte	0x9f
 3751 0360 00000000 		.4byte	0
 3752 0364 00000000 		.4byte	0
 3753              	.LLST2:
 3754 0368 00000000 		.4byte	.LVL5
 3755 036c 04000000 		.4byte	.LVL6
 3756 0370 0100     		.2byte	0x1
 3757 0372 51       		.byte	0x51
 3758 0373 04000000 		.4byte	.LVL6
ARM GAS  /tmp/ccfKQ0CH.s 			page 80


 3759 0377 0A000000 		.4byte	.LFE145
 3760 037b 0400     		.2byte	0x4
 3761 037d F3       		.byte	0xf3
 3762 037e 01       		.uleb128 0x1
 3763 037f 51       		.byte	0x51
 3764 0380 9F       		.byte	0x9f
 3765 0381 00000000 		.4byte	0
 3766 0385 00000000 		.4byte	0
 3767              	.LLST0:
 3768 0389 00000000 		.4byte	.LVL0
 3769 038d 02000000 		.4byte	.LVL1
 3770 0391 0100     		.2byte	0x1
 3771 0393 51       		.byte	0x51
 3772 0394 02000000 		.4byte	.LVL1
 3773 0398 18000000 		.4byte	.LFE142
 3774 039c 0400     		.2byte	0x4
 3775 039e F3       		.byte	0xf3
 3776 039f 01       		.uleb128 0x1
 3777 03a0 51       		.byte	0x51
 3778 03a1 9F       		.byte	0x9f
 3779 03a2 00000000 		.4byte	0
 3780 03a6 00000000 		.4byte	0
 3781              		.section	.debug_aranges,"",%progbits
 3782 0000 CC000000 		.4byte	0xcc
 3783 0004 0200     		.2byte	0x2
 3784 0006 00000000 		.4byte	.Ldebug_info0
 3785 000a 04       		.byte	0x4
 3786 000b 00       		.byte	0
 3787 000c 0000     		.2byte	0
 3788 000e 0000     		.2byte	0
 3789 0010 00000000 		.4byte	.LFB142
 3790 0014 18000000 		.4byte	.LFE142-.LFB142
 3791 0018 00000000 		.4byte	.LFB143
 3792 001c 08000000 		.4byte	.LFE143-.LFB143
 3793 0020 00000000 		.4byte	.LFB144
 3794 0024 06000000 		.4byte	.LFE144-.LFB144
 3795 0028 00000000 		.4byte	.LFB145
 3796 002c 0A000000 		.4byte	.LFE145-.LFB145
 3797 0030 00000000 		.4byte	.LFB146
 3798 0034 08000000 		.4byte	.LFE146-.LFB146
 3799 0038 00000000 		.4byte	.LFB147
 3800 003c 08000000 		.4byte	.LFE147-.LFB147
 3801 0040 00000000 		.4byte	.LFB148
 3802 0044 08000000 		.4byte	.LFE148-.LFB148
 3803 0048 00000000 		.4byte	.LFB149
 3804 004c 08000000 		.4byte	.LFE149-.LFB149
 3805 0050 00000000 		.4byte	.LFB150
 3806 0054 08000000 		.4byte	.LFE150-.LFB150
 3807 0058 00000000 		.4byte	.LFB151
 3808 005c 08000000 		.4byte	.LFE151-.LFB151
 3809 0060 00000000 		.4byte	.LFB152
 3810 0064 08000000 		.4byte	.LFE152-.LFB152
 3811 0068 00000000 		.4byte	.LFB153
 3812 006c 08000000 		.4byte	.LFE153-.LFB153
 3813 0070 00000000 		.4byte	.LFB154
 3814 0074 08000000 		.4byte	.LFE154-.LFB154
 3815 0078 00000000 		.4byte	.LFB155
ARM GAS  /tmp/ccfKQ0CH.s 			page 81


 3816 007c 08000000 		.4byte	.LFE155-.LFB155
 3817 0080 00000000 		.4byte	.LFB156
 3818 0084 08000000 		.4byte	.LFE156-.LFB156
 3819 0088 00000000 		.4byte	.LFB157
 3820 008c 08000000 		.4byte	.LFE157-.LFB157
 3821 0090 00000000 		.4byte	.LFB158
 3822 0094 08000000 		.4byte	.LFE158-.LFB158
 3823 0098 00000000 		.4byte	.LFB159
 3824 009c 64000000 		.4byte	.LFE159-.LFB159
 3825 00a0 00000000 		.4byte	.LFB160
 3826 00a4 06000000 		.4byte	.LFE160-.LFB160
 3827 00a8 00000000 		.4byte	.LFB161
 3828 00ac 06000000 		.4byte	.LFE161-.LFB161
 3829 00b0 00000000 		.4byte	.LFB162
 3830 00b4 06000000 		.4byte	.LFE162-.LFB162
 3831 00b8 00000000 		.4byte	.LFB163
 3832 00bc 06000000 		.4byte	.LFE163-.LFB163
 3833 00c0 00000000 		.4byte	.LFB164
 3834 00c4 1C000000 		.4byte	.LFE164-.LFB164
 3835 00c8 00000000 		.4byte	0
 3836 00cc 00000000 		.4byte	0
 3837              		.section	.debug_ranges,"",%progbits
 3838              	.Ldebug_ranges0:
 3839 0000 00000000 		.4byte	.LFB142
 3840 0004 18000000 		.4byte	.LFE142
 3841 0008 00000000 		.4byte	.LFB143
 3842 000c 08000000 		.4byte	.LFE143
 3843 0010 00000000 		.4byte	.LFB144
 3844 0014 06000000 		.4byte	.LFE144
 3845 0018 00000000 		.4byte	.LFB145
 3846 001c 0A000000 		.4byte	.LFE145
 3847 0020 00000000 		.4byte	.LFB146
 3848 0024 08000000 		.4byte	.LFE146
 3849 0028 00000000 		.4byte	.LFB147
 3850 002c 08000000 		.4byte	.LFE147
 3851 0030 00000000 		.4byte	.LFB148
 3852 0034 08000000 		.4byte	.LFE148
 3853 0038 00000000 		.4byte	.LFB149
 3854 003c 08000000 		.4byte	.LFE149
 3855 0040 00000000 		.4byte	.LFB150
 3856 0044 08000000 		.4byte	.LFE150
 3857 0048 00000000 		.4byte	.LFB151
 3858 004c 08000000 		.4byte	.LFE151
 3859 0050 00000000 		.4byte	.LFB152
 3860 0054 08000000 		.4byte	.LFE152
 3861 0058 00000000 		.4byte	.LFB153
 3862 005c 08000000 		.4byte	.LFE153
 3863 0060 00000000 		.4byte	.LFB154
 3864 0064 08000000 		.4byte	.LFE154
 3865 0068 00000000 		.4byte	.LFB155
 3866 006c 08000000 		.4byte	.LFE155
 3867 0070 00000000 		.4byte	.LFB156
 3868 0074 08000000 		.4byte	.LFE156
 3869 0078 00000000 		.4byte	.LFB157
 3870 007c 08000000 		.4byte	.LFE157
 3871 0080 00000000 		.4byte	.LFB158
 3872 0084 08000000 		.4byte	.LFE158
ARM GAS  /tmp/ccfKQ0CH.s 			page 82


 3873 0088 00000000 		.4byte	.LFB159
 3874 008c 64000000 		.4byte	.LFE159
 3875 0090 00000000 		.4byte	.LFB160
 3876 0094 06000000 		.4byte	.LFE160
 3877 0098 00000000 		.4byte	.LFB161
 3878 009c 06000000 		.4byte	.LFE161
 3879 00a0 00000000 		.4byte	.LFB162
 3880 00a4 06000000 		.4byte	.LFE162
 3881 00a8 00000000 		.4byte	.LFB163
 3882 00ac 06000000 		.4byte	.LFE163
 3883 00b0 00000000 		.4byte	.LFB164
 3884 00b4 1C000000 		.4byte	.LFE164
 3885 00b8 00000000 		.4byte	0
 3886 00bc 00000000 		.4byte	0
 3887              		.section	.debug_line,"",%progbits
 3888              	.Ldebug_line0:
 3889 0000 1A040000 		.section	.debug_str,"MS",%progbits,1
 3889      02005202 
 3889      00000201 
 3889      FB0E0D00 
 3889      01010101 
 3890              	.LASF3:
 3891 0000 73686F72 		.ascii	"short int\000"
 3891      7420696E 
 3891      7400
 3892              	.LASF42:
 3893 000a 5F66706F 		.ascii	"_fpos_t\000"
 3893      735F7400 
 3894              	.LASF18:
 3895 0012 54435F53 		.ascii	"TC_SMMR\000"
 3895      4D4D5200 
 3896              	.LASF186:
 3897 001a 74635F72 		.ascii	"tc_read_ra\000"
 3897      6561645F 
 3897      726100
 3898              	.LASF185:
 3899 0025 74635F72 		.ascii	"tc_read_rb\000"
 3899      6561645F 
 3899      726200
 3900              	.LASF184:
 3901 0030 74635F72 		.ascii	"tc_read_rc\000"
 3901      6561645F 
 3901      726300
 3902              	.LASF121:
 3903 003b 5F72616E 		.ascii	"_rand48\000"
 3903      64343800 
 3904              	.LASF39:
 3905 0043 54435F57 		.ascii	"TC_WPMR\000"
 3905      504D5200 
 3906              	.LASF100:
 3907 004b 5F656D65 		.ascii	"_emergency\000"
 3907      7267656E 
 3907      637900
 3908              	.LASF168:
 3909 0056 705F756C 		.ascii	"p_ultcclks\000"
 3909      7463636C 
 3909      6B7300
ARM GAS  /tmp/ccfKQ0CH.s 			page 83


 3910              	.LASF17:
 3911 0061 54435F43 		.ascii	"TC_CMR\000"
 3911      4D5200
 3912              	.LASF90:
 3913 0068 5F646174 		.ascii	"_data\000"
 3913      6100
 3914              	.LASF164:
 3915 006e 74635F66 		.ascii	"tc_find_mck_divisor\000"
 3915      696E645F 
 3915      6D636B5F 
 3915      64697669 
 3915      736F7200 
 3916              	.LASF141:
 3917 0082 5F776372 		.ascii	"_wcrtomb_state\000"
 3917      746F6D62 
 3917      5F737461 
 3917      746500
 3918              	.LASF142:
 3919 0091 5F776373 		.ascii	"_wcsrtombs_state\000"
 3919      72746F6D 
 3919      62735F73 
 3919      74617465 
 3919      00
 3920              	.LASF31:
 3921 00a2 54435F43 		.ascii	"TC_CHANNEL\000"
 3921      48414E4E 
 3921      454C00
 3922              	.LASF10:
 3923 00ad 6C6F6E67 		.ascii	"long long unsigned int\000"
 3923      206C6F6E 
 3923      6720756E 
 3923      7369676E 
 3923      65642069 
 3924              	.LASF187:
 3925 00c4 74635F72 		.ascii	"tc_read_cv\000"
 3925      6561645F 
 3925      637600
 3926              	.LASF80:
 3927 00cf 5F6C6266 		.ascii	"_lbfsize\000"
 3927      73697A65 
 3927      00
 3928              	.LASF14:
 3929 00d8 49544D5F 		.ascii	"ITM_RxBuffer\000"
 3929      52784275 
 3929      66666572 
 3929      00
 3930              	.LASF139:
 3931 00e5 5F6D6272 		.ascii	"_mbrtowc_state\000"
 3931      746F7763 
 3931      5F737461 
 3931      746500
 3932              	.LASF93:
 3933 00f4 5F666C61 		.ascii	"_flags2\000"
 3933      67733200 
 3934              	.LASF134:
 3935 00fc 5F776374 		.ascii	"_wctomb_state\000"
 3935      6F6D625F 
ARM GAS  /tmp/ccfKQ0CH.s 			page 84


 3935      73746174 
 3935      6500
 3936              	.LASF174:
 3937 010a 74635F67 		.ascii	"tc_get_status\000"
 3937      65745F73 
 3937      74617475 
 3937      7300
 3938              	.LASF85:
 3939 0118 5F636C6F 		.ascii	"_close\000"
 3939      736500
 3940              	.LASF1:
 3941 011f 7369676E 		.ascii	"signed char\000"
 3941      65642063 
 3941      68617200 
 3942              	.LASF16:
 3943 012b 54435F43 		.ascii	"TC_CCR\000"
 3943      435200
 3944              	.LASF86:
 3945 0132 5F756275 		.ascii	"_ubuf\000"
 3945      6600
 3946              	.LASF75:
 3947 0138 5F626173 		.ascii	"_base\000"
 3947      6500
 3948              	.LASF29:
 3949 013e 52657365 		.ascii	"Reserved1\000"
 3949      72766564 
 3949      3100
 3950              	.LASF59:
 3951 0148 5F5F746D 		.ascii	"__tm_hour\000"
 3951      5F686F75 
 3951      7200
 3952              	.LASF176:
 3953 0152 74635F63 		.ascii	"tc_channel\000"
 3953      68616E6E 
 3953      656C00
 3954              	.LASF115:
 3955 015d 5F5F7366 		.ascii	"__sf\000"
 3955      00
 3956              	.LASF66:
 3957 0162 5F6F6E5F 		.ascii	"_on_exit_args\000"
 3957      65786974 
 3957      5F617267 
 3957      7300
 3958              	.LASF81:
 3959 0170 5F636F6F 		.ascii	"_cookie\000"
 3959      6B696500 
 3960              	.LASF114:
 3961 0178 5F5F7367 		.ascii	"__sglue\000"
 3961      6C756500 
 3962              	.LASF5:
 3963 0180 6C6F6E67 		.ascii	"long int\000"
 3963      20696E74 
 3963      00
 3964              	.LASF33:
 3965 0189 54435F42 		.ascii	"TC_BMR\000"
 3965      4D5200
 3966              	.LASF194:
ARM GAS  /tmp/ccfKQ0CH.s 			page 85


 3967 0190 74635F73 		.ascii	"tc_sync_trigger\000"
 3967      796E635F 
 3967      74726967 
 3967      67657200 
 3968              	.LASF78:
 3969 01a0 5F666C61 		.ascii	"_flags\000"
 3969      677300
 3970              	.LASF70:
 3971 01a7 5F69735F 		.ascii	"_is_cxa\000"
 3971      63786100 
 3972              	.LASF54:
 3973 01af 5F776473 		.ascii	"_wds\000"
 3973      00
 3974              	.LASF197:
 3975 01b4 2E2E2F61 		.ascii	"../asf/sam/drivers/tc/tc.c\000"
 3975      73662F73 
 3975      616D2F64 
 3975      72697665 
 3975      72732F74 
 3976              	.LASF106:
 3977 01cf 5F726573 		.ascii	"_result_k\000"
 3977      756C745F 
 3977      6B00
 3978              	.LASF9:
 3979 01d9 6C6F6E67 		.ascii	"long long int\000"
 3979      206C6F6E 
 3979      6720696E 
 3979      7400
 3980              	.LASF155:
 3981 01e7 646F7562 		.ascii	"double\000"
 3981      6C6500
 3982              	.LASF110:
 3983 01ee 5F637674 		.ascii	"_cvtbuf\000"
 3983      62756600 
 3984              	.LASF140:
 3985 01f6 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 3985      72746F77 
 3985      63735F73 
 3985      74617465 
 3985      00
 3986              	.LASF138:
 3987 0207 5F6D6272 		.ascii	"_mbrlen_state\000"
 3987      6C656E5F 
 3987      73746174 
 3987      6500
 3988              	.LASF158:
 3989 0215 74635F67 		.ascii	"tc_get_qdec_interrupt_status\000"
 3989      65745F71 
 3989      6465635F 
 3989      696E7465 
 3989      72727570 
 3990              	.LASF67:
 3991 0232 5F666E61 		.ascii	"_fnargs\000"
 3991      72677300 
 3992              	.LASF73:
 3993 023a 5F666E73 		.ascii	"_fns\000"
 3993      00
ARM GAS  /tmp/ccfKQ0CH.s 			page 86


 3994              	.LASF173:
 3995 023f 756C5F6C 		.ascii	"ul_low\000"
 3995      6F7700
 3996              	.LASF53:
 3997 0246 5F736967 		.ascii	"_sign\000"
 3997      6E00
 3998              	.LASF171:
 3999 024c 756C5F69 		.ascii	"ul_index\000"
 3999      6E646578 
 3999      00
 4000              	.LASF98:
 4001 0255 5F737464 		.ascii	"_stderr\000"
 4001      65727200 
 4002              	.LASF55:
 4003 025d 5F426967 		.ascii	"_Bigint\000"
 4003      696E7400 
 4004              	.LASF163:
 4005 0265 74635F65 		.ascii	"tc_enable_qdec_interrupt\000"
 4005      6E61626C 
 4005      655F7164 
 4005      65635F69 
 4005      6E746572 
 4006              	.LASF179:
 4007 027e 74635F65 		.ascii	"tc_enable_interrupt\000"
 4007      6E61626C 
 4007      655F696E 
 4007      74657272 
 4007      75707400 
 4008              	.LASF145:
 4009 0292 5F6E6D61 		.ascii	"_nmalloc\000"
 4009      6C6C6F63 
 4009      00
 4010              	.LASF175:
 4011 029b 756C5F63 		.ascii	"ul_channel\000"
 4011      68616E6E 
 4011      656C00
 4012              	.LASF56:
 4013 02a6 5F5F746D 		.ascii	"__tm\000"
 4013      00
 4014              	.LASF45:
 4015 02ab 5F5F7763 		.ascii	"__wchb\000"
 4015      686200
 4016              	.LASF15:
 4017 02b2 53797374 		.ascii	"SystemCoreClock\000"
 4017      656D436F 
 4017      7265436C 
 4017      6F636B00 
 4018              	.LASF109:
 4019 02c2 5F637674 		.ascii	"_cvtlen\000"
 4019      6C656E00 
 4020              	.LASF8:
 4021 02ca 6C6F6E67 		.ascii	"long unsigned int\000"
 4021      20756E73 
 4021      69676E65 
 4021      6420696E 
 4021      7400
 4022              	.LASF79:
ARM GAS  /tmp/ccfKQ0CH.s 			page 87


 4023 02dc 5F66696C 		.ascii	"_file\000"
 4023      6500
 4024              	.LASF170:
 4025 02e2 64697669 		.ascii	"divisors\000"
 4025      736F7273 
 4025      00
 4026              	.LASF119:
 4027 02eb 5F6E696F 		.ascii	"_niobs\000"
 4027      627300
 4028              	.LASF199:
 4029 02f2 74635F69 		.ascii	"tc_init\000"
 4029      6E697400 
 4030              	.LASF4:
 4031 02fa 73686F72 		.ascii	"short unsigned int\000"
 4031      7420756E 
 4031      7369676E 
 4031      65642069 
 4031      6E7400
 4032              	.LASF118:
 4033 030d 5F676C75 		.ascii	"_glue\000"
 4033      6500
 4034              	.LASF112:
 4035 0313 5F617465 		.ascii	"_atexit0\000"
 4035      78697430 
 4035      00
 4036              	.LASF136:
 4037 031c 5F736967 		.ascii	"_signal_buf\000"
 4037      6E616C5F 
 4037      62756600 
 4038              	.LASF127:
 4039 0328 5F617363 		.ascii	"_asctime_buf\000"
 4039      74696D65 
 4039      5F627566 
 4039      00
 4040              	.LASF105:
 4041 0335 5F726573 		.ascii	"_result\000"
 4041      756C7400 
 4042              	.LASF44:
 4043 033d 5F5F7763 		.ascii	"__wch\000"
 4043      6800
 4044              	.LASF144:
 4045 0343 5F6E6578 		.ascii	"_nextf\000"
 4045      746600
 4046              	.LASF193:
 4047 034a 756C5F62 		.ascii	"ul_blockmode\000"
 4047      6C6F636B 
 4047      6D6F6465 
 4047      00
 4048              	.LASF161:
 4049 0357 74635F64 		.ascii	"tc_disable_qdec_interrupt\000"
 4049      69736162 
 4049      6C655F71 
 4049      6465635F 
 4049      696E7465 
 4050              	.LASF156:
 4051 0371 705F7463 		.ascii	"p_tc\000"
 4051      00
ARM GAS  /tmp/ccfKQ0CH.s 			page 88


 4052              	.LASF91:
 4053 0376 5F6C6F63 		.ascii	"_lock\000"
 4053      6B00
 4054              	.LASF198:
 4055 037c 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 4055      652F746F 
 4055      72626A6F 
 4055      726E2F65 
 4055      636C6970 
 4056              	.LASF123:
 4057 03ab 5F6D756C 		.ascii	"_mult\000"
 4057      7400
 4058              	.LASF190:
 4059 03b1 74635F69 		.ascii	"tc_init_2bit_gray\000"
 4059      6E69745F 
 4059      32626974 
 4059      5F677261 
 4059      7900
 4060              	.LASF83:
 4061 03c3 5F777269 		.ascii	"_write\000"
 4061      746500
 4062              	.LASF62:
 4063 03ca 5F5F746D 		.ascii	"__tm_year\000"
 4063      5F796561 
 4063      7200
 4064              	.LASF38:
 4065 03d4 54435F46 		.ascii	"TC_FMR\000"
 4065      4D5200
 4066              	.LASF125:
 4067 03db 5F756E75 		.ascii	"_unused_rand\000"
 4067      7365645F 
 4067      72616E64 
 4067      00
 4068              	.LASF129:
 4069 03e8 5F67616D 		.ascii	"_gamma_signgam\000"
 4069      6D615F73 
 4069      69676E67 
 4069      616D00
 4070              	.LASF153:
 4071 03f7 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 4071      6972715F 
 4071      70726576 
 4071      5F696E74 
 4071      65727275 
 4072              	.LASF178:
 4073 0414 74635F64 		.ascii	"tc_disable_interrupt\000"
 4073      69736162 
 4073      6C655F69 
 4073      6E746572 
 4073      72757074 
 4074              	.LASF166:
 4075 0429 756C5F6D 		.ascii	"ul_mck\000"
 4075      636B00
 4076              	.LASF13:
 4077 0430 73697A65 		.ascii	"sizetype\000"
 4077      74797065 
 4077      00
ARM GAS  /tmp/ccfKQ0CH.s 			page 89


 4078              	.LASF89:
 4079 0439 5F6F6666 		.ascii	"_offset\000"
 4079      73657400 
 4080              	.LASF181:
 4081 0441 756C5F76 		.ascii	"ul_value\000"
 4081      616C7565 
 4081      00
 4082              	.LASF189:
 4083 044a 74635F73 		.ascii	"tc_start\000"
 4083      74617274 
 4083      00
 4084              	.LASF196:
 4085 0453 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 4085      43393920 
 4085      362E332E 
 4085      31203230 
 4085      31373036 
 4086 0486 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 4086      76352D64 
 4086      3136202D 
 4086      6D666C6F 
 4086      61742D61 
 4087 04b9 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 4087      6E2D7365 
 4087      6374696F 
 4087      6E73202D 
 4087      66646174 
 4088 04ec 6F6E7374 		.ascii	"onstant\000"
 4088      616E7400 
 4089              	.LASF49:
 4090 04f4 5F666C6F 		.ascii	"_flock_t\000"
 4090      636B5F74 
 4090      00
 4091              	.LASF61:
 4092 04fd 5F5F746D 		.ascii	"__tm_mon\000"
 4092      5F6D6F6E 
 4092      00
 4093              	.LASF71:
 4094 0506 5F617465 		.ascii	"_atexit\000"
 4094      78697400 
 4095              	.LASF149:
 4096 050e 7375626F 		.ascii	"suboptarg\000"
 4096      70746172 
 4096      6700
 4097              	.LASF103:
 4098 0518 5F5F7364 		.ascii	"__sdidinit\000"
 4098      6964696E 
 4098      697400
 4099              	.LASF41:
 4100 0523 5F6F6666 		.ascii	"_off_t\000"
 4100      5F7400
 4101              	.LASF43:
 4102 052a 77696E74 		.ascii	"wint_t\000"
 4102      5F7400
 4103              	.LASF154:
 4104 0531 666C6F61 		.ascii	"float\000"
 4104      7400
ARM GAS  /tmp/ccfKQ0CH.s 			page 90


 4105              	.LASF195:
 4106 0537 756C5F6D 		.ascii	"ul_mode\000"
 4106      6F646500 
 4107              	.LASF150:
 4108 053f 675F696E 		.ascii	"g_interrupt_enabled\000"
 4108      74657272 
 4108      7570745F 
 4108      656E6162 
 4108      6C656400 
 4109              	.LASF21:
 4110 0553 54435F52 		.ascii	"TC_RA\000"
 4110      4100
 4111              	.LASF22:
 4112 0559 54435F52 		.ascii	"TC_RB\000"
 4112      4200
 4113              	.LASF23:
 4114 055f 54435F52 		.ascii	"TC_RC\000"
 4114      4300
 4115              	.LASF40:
 4116 0565 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 4116      4B5F5245 
 4116      43555253 
 4116      4956455F 
 4116      5400
 4117              	.LASF82:
 4118 0577 5F726561 		.ascii	"_read\000"
 4118      6400
 4119              	.LASF172:
 4120 057d 756C5F68 		.ascii	"ul_high\000"
 4120      69676800 
 4121              	.LASF151:
 4122 0585 5F426F6F 		.ascii	"_Bool\000"
 4122      6C00
 4123              	.LASF11:
 4124 058b 696E7433 		.ascii	"int32_t\000"
 4124      325F7400 
 4125              	.LASF68:
 4126 0593 5F64736F 		.ascii	"_dso_handle\000"
 4126      5F68616E 
 4126      646C6500 
 4127              	.LASF111:
 4128 059f 5F6E6577 		.ascii	"_new\000"
 4128      00
 4129              	.LASF28:
 4130 05a4 54435F45 		.ascii	"TC_EMR\000"
 4130      4D5200
 4131              	.LASF0:
 4132 05ab 756E7369 		.ascii	"unsigned int\000"
 4132      676E6564 
 4132      20696E74 
 4132      00
 4133              	.LASF143:
 4134 05b8 5F685F65 		.ascii	"_h_errno\000"
 4134      72726E6F 
 4134      00
 4135              	.LASF132:
 4136 05c1 5F6D626C 		.ascii	"_mblen_state\000"
ARM GAS  /tmp/ccfKQ0CH.s 			page 91


 4136      656E5F73 
 4136      74617465 
 4136      00
 4137              	.LASF64:
 4138 05ce 5F5F746D 		.ascii	"__tm_yday\000"
 4138      5F796461 
 4138      7900
 4139              	.LASF74:
 4140 05d8 5F5F7362 		.ascii	"__sbuf\000"
 4140      756600
 4141              	.LASF20:
 4142 05df 54435F43 		.ascii	"TC_CV\000"
 4142      5600
 4143              	.LASF108:
 4144 05e5 5F667265 		.ascii	"_freelist\000"
 4144      656C6973 
 4144      7400
 4145              	.LASF117:
 4146 05ef 5F5F4649 		.ascii	"__FILE\000"
 4146      4C4500
 4147              	.LASF48:
 4148 05f6 5F6D6273 		.ascii	"_mbstate_t\000"
 4148      74617465 
 4148      5F7400
 4149              	.LASF77:
 4150 0601 5F5F7346 		.ascii	"__sFILE\000"
 4150      494C4500 
 4151              	.LASF92:
 4152 0609 5F6D6273 		.ascii	"_mbstate\000"
 4152      74617465 
 4152      00
 4153              	.LASF130:
 4154 0612 5F72616E 		.ascii	"_rand_next\000"
 4154      645F6E65 
 4154      787400
 4155              	.LASF19:
 4156 061d 54435F52 		.ascii	"TC_RAB\000"
 4156      414200
 4157              	.LASF120:
 4158 0624 5F696F62 		.ascii	"_iobs\000"
 4158      7300
 4159              	.LASF99:
 4160 062a 5F696E63 		.ascii	"_inc\000"
 4160      00
 4161              	.LASF72:
 4162 062f 5F696E64 		.ascii	"_ind\000"
 4162      00
 4163              	.LASF102:
 4164 0634 5F637572 		.ascii	"_current_locale\000"
 4164      72656E74 
 4164      5F6C6F63 
 4164      616C6500 
 4165              	.LASF104:
 4166 0644 5F5F636C 		.ascii	"__cleanup\000"
 4166      65616E75 
 4166      7000
 4167              	.LASF157:
ARM GAS  /tmp/ccfKQ0CH.s 			page 92


 4168 064e 756C5F65 		.ascii	"ul_enable\000"
 4168      6E61626C 
 4168      6500
 4169              	.LASF52:
 4170 0658 5F6D6178 		.ascii	"_maxwds\000"
 4170      77647300 
 4171              	.LASF94:
 4172 0660 5F726565 		.ascii	"_reent\000"
 4172      6E7400
 4173              	.LASF122:
 4174 0667 5F736565 		.ascii	"_seed\000"
 4174      6400
 4175              	.LASF46:
 4176 066d 5F5F636F 		.ascii	"__count\000"
 4176      756E7400 
 4177              	.LASF47:
 4178 0675 5F5F7661 		.ascii	"__value\000"
 4178      6C756500 
 4179              	.LASF84:
 4180 067d 5F736565 		.ascii	"_seek\000"
 4180      6B00
 4181              	.LASF147:
 4182 0683 5F696D70 		.ascii	"_impure_ptr\000"
 4182      7572655F 
 4182      70747200 
 4183              	.LASF26:
 4184 068f 54435F49 		.ascii	"TC_IDR\000"
 4184      445200
 4185              	.LASF37:
 4186 0696 54435F51 		.ascii	"TC_QISR\000"
 4186      49535200 
 4187              	.LASF169:
 4188 069e 756C5F62 		.ascii	"ul_boardmck\000"
 4188      6F617264 
 4188      6D636B00 
 4189              	.LASF95:
 4190 06aa 5F657272 		.ascii	"_errno\000"
 4190      6E6F00
 4191              	.LASF116:
 4192 06b1 63686172 		.ascii	"char\000"
 4192      00
 4193              	.LASF88:
 4194 06b6 5F626C6B 		.ascii	"_blksize\000"
 4194      73697A65 
 4194      00
 4195              	.LASF76:
 4196 06bf 5F73697A 		.ascii	"_size\000"
 4196      6500
 4197              	.LASF24:
 4198 06c5 54435F53 		.ascii	"TC_SR\000"
 4198      5200
 4199              	.LASF35:
 4200 06cb 54435F51 		.ascii	"TC_QIDR\000"
 4200      49445200 
 4201              	.LASF177:
 4202 06d3 74635F67 		.ascii	"tc_get_interrupt_mask\000"
 4202      65745F69 
ARM GAS  /tmp/ccfKQ0CH.s 			page 93


 4202      6E746572 
 4202      72757074 
 4202      5F6D6173 
 4203              	.LASF6:
 4204 06e9 5F5F696E 		.ascii	"__int32_t\000"
 4204      7433325F 
 4204      7400
 4205              	.LASF7:
 4206 06f3 5F5F7569 		.ascii	"__uint32_t\000"
 4206      6E743332 
 4206      5F7400
 4207              	.LASF191:
 4208 06fe 756C5F73 		.ascii	"ul_steppermode\000"
 4208      74657070 
 4208      65726D6F 
 4208      646500
 4209              	.LASF51:
 4210 070d 5F6E6578 		.ascii	"_next\000"
 4210      7400
 4211              	.LASF126:
 4212 0713 5F737472 		.ascii	"_strtok_last\000"
 4212      746F6B5F 
 4212      6C617374 
 4212      00
 4213              	.LASF36:
 4214 0720 54435F51 		.ascii	"TC_QIMR\000"
 4214      494D5200 
 4215              	.LASF69:
 4216 0728 5F666E74 		.ascii	"_fntypes\000"
 4216      79706573 
 4216      00
 4217              	.LASF2:
 4218 0731 756E7369 		.ascii	"unsigned char\000"
 4218      676E6564 
 4218      20636861 
 4218      7200
 4219              	.LASF124:
 4220 073f 5F616464 		.ascii	"_add\000"
 4220      00
 4221              	.LASF50:
 4222 0744 5F5F554C 		.ascii	"__ULong\000"
 4222      6F6E6700 
 4223              	.LASF137:
 4224 074c 5F676574 		.ascii	"_getdate_err\000"
 4224      64617465 
 4224      5F657272 
 4224      00
 4225              	.LASF167:
 4226 0759 705F756C 		.ascii	"p_uldiv\000"
 4226      64697600 
 4227              	.LASF148:
 4228 0761 5F676C6F 		.ascii	"_global_impure_ptr\000"
 4228      62616C5F 
 4228      696D7075 
 4228      72655F70 
 4228      747200
 4229              	.LASF101:
ARM GAS  /tmp/ccfKQ0CH.s 			page 94


 4230 0774 5F637572 		.ascii	"_current_category\000"
 4230      72656E74 
 4230      5F636174 
 4230      65676F72 
 4230      7900
 4231              	.LASF12:
 4232 0786 75696E74 		.ascii	"uint32_t\000"
 4232      33325F74 
 4232      00
 4233              	.LASF25:
 4234 078f 54435F49 		.ascii	"TC_IER\000"
 4234      455200
 4235              	.LASF32:
 4236 0796 54435F42 		.ascii	"TC_BCR\000"
 4236      435200
 4237              	.LASF57:
 4238 079d 5F5F746D 		.ascii	"__tm_sec\000"
 4238      5F736563 
 4238      00
 4239              	.LASF97:
 4240 07a6 5F737464 		.ascii	"_stdout\000"
 4240      6F757400 
 4241              	.LASF63:
 4242 07ae 5F5F746D 		.ascii	"__tm_wday\000"
 4242      5F776461 
 4242      7900
 4243              	.LASF180:
 4244 07b8 74635F77 		.ascii	"tc_write_rc\000"
 4244      72697465 
 4244      5F726300 
 4245              	.LASF96:
 4246 07c4 5F737464 		.ascii	"_stdin\000"
 4246      696E00
 4247              	.LASF192:
 4248 07cb 74635F73 		.ascii	"tc_set_block_mode\000"
 4248      65745F62 
 4248      6C6F636B 
 4248      5F6D6F64 
 4248      6500
 4249              	.LASF135:
 4250 07dd 5F6C3634 		.ascii	"_l64a_buf\000"
 4250      615F6275 
 4250      6600
 4251              	.LASF34:
 4252 07e7 54435F51 		.ascii	"TC_QIER\000"
 4252      49455200 
 4253              	.LASF113:
 4254 07ef 5F736967 		.ascii	"_sig_func\000"
 4254      5F66756E 
 4254      6300
 4255              	.LASF183:
 4256 07f9 74635F77 		.ascii	"tc_write_ra\000"
 4256      72697465 
 4256      5F726100 
 4257              	.LASF152:
 4258 0805 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 4258      6972715F 
ARM GAS  /tmp/ccfKQ0CH.s 			page 95


 4258      63726974 
 4258      6963616C 
 4258      5F736563 
 4259              	.LASF182:
 4260 0826 74635F77 		.ascii	"tc_write_rb\000"
 4260      72697465 
 4260      5F726200 
 4261              	.LASF160:
 4262 0832 74635F73 		.ascii	"tc_set_writeprotect\000"
 4262      65745F77 
 4262      72697465 
 4262      70726F74 
 4262      65637400 
 4263              	.LASF87:
 4264 0846 5F6E6275 		.ascii	"_nbuf\000"
 4264      6600
 4265              	.LASF146:
 4266 084c 5F756E75 		.ascii	"_unused\000"
 4266      73656400 
 4267              	.LASF27:
 4268 0854 54435F49 		.ascii	"TC_IMR\000"
 4268      4D5200
 4269              	.LASF30:
 4270 085b 54634368 		.ascii	"TcChannel\000"
 4270      616E6E65 
 4270      6C00
 4271              	.LASF65:
 4272 0865 5F5F746D 		.ascii	"__tm_isdst\000"
 4272      5F697364 
 4272      737400
 4273              	.LASF128:
 4274 0870 5F6C6F63 		.ascii	"_localtime_buf\000"
 4274      616C7469 
 4274      6D655F62 
 4274      756600
 4275              	.LASF58:
 4276 087f 5F5F746D 		.ascii	"__tm_min\000"
 4276      5F6D696E 
 4276      00
 4277              	.LASF131:
 4278 0888 5F723438 		.ascii	"_r48\000"
 4278      00
 4279              	.LASF162:
 4280 088d 756C5F73 		.ascii	"ul_sources\000"
 4280      6F757263 
 4280      657300
 4281              	.LASF133:
 4282 0898 5F6D6274 		.ascii	"_mbtowc_state\000"
 4282      6F77635F 
 4282      73746174 
 4282      6500
 4283              	.LASF107:
 4284 08a6 5F703573 		.ascii	"_p5s\000"
 4284      00
 4285              	.LASF165:
 4286 08ab 756C5F66 		.ascii	"ul_freq\000"
 4286      72657100 
ARM GAS  /tmp/ccfKQ0CH.s 			page 96


 4287              	.LASF159:
 4288 08b3 74635F67 		.ascii	"tc_get_qdec_interrupt_mask\000"
 4288      65745F71 
 4288      6465635F 
 4288      696E7465 
 4288      72727570 
 4289              	.LASF188:
 4290 08ce 74635F73 		.ascii	"tc_stop\000"
 4290      746F7000 
 4291              	.LASF60:
 4292 08d6 5F5F746D 		.ascii	"__tm_mday\000"
 4292      5F6D6461 
 4292      7900
 4293              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
