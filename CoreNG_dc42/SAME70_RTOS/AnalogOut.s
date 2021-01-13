ARM GAS  /tmp/ccQR1hla.s 			page 1


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
  12              		.file	"AnalogOut.cpp"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text._Z13AnalogOutInitv,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	_Z13AnalogOutInitv
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	_Z13AnalogOutInitv, %function
  25              	_Z13AnalogOutInitv:
  26              	.LFB525:
  27              		.file 1 "../cores/arduino/AnalogOut.cpp"
   1:../cores/arduino/AnalogOut.cpp **** /*
   2:../cores/arduino/AnalogOut.cpp ****  Copyright (c) 2011 Arduino.  All right reserved.
   3:../cores/arduino/AnalogOut.cpp **** 
   4:../cores/arduino/AnalogOut.cpp ****  This library is free software; you can redistribute it and/or
   5:../cores/arduino/AnalogOut.cpp ****  modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/AnalogOut.cpp ****  License as published by the Free Software Foundation; either
   7:../cores/arduino/AnalogOut.cpp ****  version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/AnalogOut.cpp **** 
   9:../cores/arduino/AnalogOut.cpp ****  This library is distributed in the hope that it will be useful,
  10:../cores/arduino/AnalogOut.cpp ****  but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/AnalogOut.cpp ****  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  12:../cores/arduino/AnalogOut.cpp ****  See the GNU Lesser General Public License for more details.
  13:../cores/arduino/AnalogOut.cpp **** 
  14:../cores/arduino/AnalogOut.cpp ****  You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/AnalogOut.cpp ****  License along with this library; if not, write to the Free Software
  16:../cores/arduino/AnalogOut.cpp ****  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/AnalogOut.cpp ****  */
  18:../cores/arduino/AnalogOut.cpp **** 
  19:../cores/arduino/AnalogOut.cpp **** #include "Core.h"
  20:../cores/arduino/AnalogOut.cpp **** #include "AnalogOut.h"
  21:../cores/arduino/AnalogOut.cpp **** 
  22:../cores/arduino/AnalogOut.cpp **** #include "pwm/pwm.h"
  23:../cores/arduino/AnalogOut.cpp **** #include "tc/tc.h"
  24:../cores/arduino/AnalogOut.cpp **** #include "dacc/dacc.h"
  25:../cores/arduino/AnalogOut.cpp **** 
  26:../cores/arduino/AnalogOut.cpp **** // Initialise this module
  27:../cores/arduino/AnalogOut.cpp **** extern void AnalogOutInit()
  28:../cores/arduino/AnalogOut.cpp **** {
  28              		.loc 1 28 0
  29              		.cfi_startproc
ARM GAS  /tmp/ccQR1hla.s 			page 2


  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33 0000 7047     		bx	lr
  34              		.cfi_endproc
  35              	.LFE525:
  36              		.size	_Z13AnalogOutInitv, .-_Z13AnalogOutInitv
  37 0002 00BF     		.section	.text._Z9AnalogOuthft,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	_Z9AnalogOuthft
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu fpv5-d16
  45              		.type	_Z9AnalogOuthft, %function
  46              	_Z9AnalogOuthft:
  47              	.LFB533:
  29:../cores/arduino/AnalogOut.cpp **** 	// Nothing to do yet
  30:../cores/arduino/AnalogOut.cpp **** }
  31:../cores/arduino/AnalogOut.cpp **** 
  32:../cores/arduino/AnalogOut.cpp **** // Convert a float in 0..1 to unsigned integer in 0..N
  33:../cores/arduino/AnalogOut.cpp **** static inline uint32_t ConvertRange(float f, uint32_t top)
  34:../cores/arduino/AnalogOut.cpp **** pre(0.0 <= ulValue; ulValue <= 1.0)
  35:../cores/arduino/AnalogOut.cpp **** post(result <= top)
  36:../cores/arduino/AnalogOut.cpp **** {
  37:../cores/arduino/AnalogOut.cpp **** 	return lround(f * (float)top);
  38:../cores/arduino/AnalogOut.cpp **** }
  39:../cores/arduino/AnalogOut.cpp **** 
  40:../cores/arduino/AnalogOut.cpp **** // AnalogWrite to a DAC pin
  41:../cores/arduino/AnalogOut.cpp **** // Return true if successful, false if we need to fall back to digitalWrite
  42:../cores/arduino/AnalogOut.cpp **** static bool AnalogWriteDac(const PinDescription& pinDesc, float ulValue)
  43:../cores/arduino/AnalogOut.cpp **** pre(0.0 <= ulValue; ulValue <= 1.0)
  44:../cores/arduino/AnalogOut.cpp **** pre((pinDesc.ulPinAttribute & PIN_ATTR_DAC) != 0)
  45:../cores/arduino/AnalogOut.cpp **** {
  46:../cores/arduino/AnalogOut.cpp **** 	const AnalogChannelNumber channel = pinDesc.ulADCChannelNumber;
  47:../cores/arduino/AnalogOut.cpp **** 	const uint32_t chDACC = ((channel == DA0) ? 0 : 1);
  48:../cores/arduino/AnalogOut.cpp **** 	if (dacc_get_channel_status(DACC) == 0)
  49:../cores/arduino/AnalogOut.cpp **** 	{
  50:../cores/arduino/AnalogOut.cpp **** 		// Enable clock for DACC_INTERFACE
  51:../cores/arduino/AnalogOut.cpp **** 		pmc_enable_periph_clk(ID_DACC);
  52:../cores/arduino/AnalogOut.cpp **** 		// Reset DACC registers
  53:../cores/arduino/AnalogOut.cpp **** 		dacc_reset(DACC);
  54:../cores/arduino/AnalogOut.cpp **** 		// Half word transfer mode
  55:../cores/arduino/AnalogOut.cpp **** 		dacc_set_transfer_mode(DACC, 0);
  56:../cores/arduino/AnalogOut.cpp **** #if SAM4E
  57:../cores/arduino/AnalogOut.cpp **** 		// The SAM4E data sheet says we must also set this bit when using a peripheral clock frequency >1
  58:../cores/arduino/AnalogOut.cpp **** 		DACC->DACC_MR |= DACC_MR_CLKDIV_DIV_4;
  59:../cores/arduino/AnalogOut.cpp **** #endif
  60:../cores/arduino/AnalogOut.cpp **** 
  61:../cores/arduino/AnalogOut.cpp **** #if (SAM3S) || (SAM3XA)
  62:../cores/arduino/AnalogOut.cpp **** 		/* Power save:
  63:../cores/arduino/AnalogOut.cpp **** 		 * sleep mode - 0 (disabled)
  64:../cores/arduino/AnalogOut.cpp **** 		 * fast wakeup - 0 (disabled)
  65:../cores/arduino/AnalogOut.cpp **** 		 */
  66:../cores/arduino/AnalogOut.cpp **** 		dacc_set_power_save(DACC, 0, 0);
  67:../cores/arduino/AnalogOut.cpp **** 		/* Timing:
ARM GAS  /tmp/ccQR1hla.s 			page 3


  68:../cores/arduino/AnalogOut.cpp **** 		 * refresh - 0x08 (1024*8 dacc clocks)
  69:../cores/arduino/AnalogOut.cpp **** 		 * max speed mode - 0 (disabled)
  70:../cores/arduino/AnalogOut.cpp **** 		 * startup time - 0x10 (1024 dacc clocks)
  71:../cores/arduino/AnalogOut.cpp **** 		 */
  72:../cores/arduino/AnalogOut.cpp **** 		dacc_set_timing(DACC, 0x08, 0, 0x10);
  73:../cores/arduino/AnalogOut.cpp **** #endif
  74:../cores/arduino/AnalogOut.cpp **** #if !SAME70
  75:../cores/arduino/AnalogOut.cpp **** 		// Set up analog current
  76:../cores/arduino/AnalogOut.cpp **** 		dacc_set_analog_control(DACC, DACC_ACR_IBCTLCH0(0x02) | DACC_ACR_IBCTLCH1(0x02) | DACC_ACR_IBCTLD
  77:../cores/arduino/AnalogOut.cpp **** #endif
  78:../cores/arduino/AnalogOut.cpp **** 	}
  79:../cores/arduino/AnalogOut.cpp **** 
  80:../cores/arduino/AnalogOut.cpp **** #if !SAME70
  81:../cores/arduino/AnalogOut.cpp **** 	// Disable TAG
  82:../cores/arduino/AnalogOut.cpp **** 	dacc_set_channel_selection(DACC, chDACC);
  83:../cores/arduino/AnalogOut.cpp **** #endif
  84:../cores/arduino/AnalogOut.cpp **** 	// Select output channel chDACC
  85:../cores/arduino/AnalogOut.cpp **** 	if ((dacc_get_channel_status(DACC) & (1 << chDACC)) == 0)
  86:../cores/arduino/AnalogOut.cpp **** 	{
  87:../cores/arduino/AnalogOut.cpp **** 		dacc_enable_channel(DACC, chDACC);
  88:../cores/arduino/AnalogOut.cpp **** 	}
  89:../cores/arduino/AnalogOut.cpp **** 
  90:../cores/arduino/AnalogOut.cpp **** 	// Write user value - need to convert it from 8 to 12 bit resolution
  91:../cores/arduino/AnalogOut.cpp **** #if SAME70
  92:../cores/arduino/AnalogOut.cpp **** 	dacc_write_conversion_data(DACC, ConvertRange(ulValue, (1 << DACC_RESOLUTION) - 1), chDACC);
  93:../cores/arduino/AnalogOut.cpp **** #else
  94:../cores/arduino/AnalogOut.cpp **** 	dacc_write_conversion_data(DACC, ConvertRange(ulValue, (1 << DACC_RESOLUTION) - 1));
  95:../cores/arduino/AnalogOut.cpp **** 	while ((dacc_get_interrupt_status(DACC) & DACC_ISR_EOC) == 0) {}
  96:../cores/arduino/AnalogOut.cpp **** #endif
  97:../cores/arduino/AnalogOut.cpp **** 	return true;
  98:../cores/arduino/AnalogOut.cpp **** }
  99:../cores/arduino/AnalogOut.cpp **** 
 100:../cores/arduino/AnalogOut.cpp **** #if SAM3XA || SAME70
 101:../cores/arduino/AnalogOut.cpp **** const unsigned int numPwmChannels = 8;
 102:../cores/arduino/AnalogOut.cpp **** #elif SAM4E || SAM4S
 103:../cores/arduino/AnalogOut.cpp **** const unsigned int numPwmChannels = 4;
 104:../cores/arduino/AnalogOut.cpp **** #endif
 105:../cores/arduino/AnalogOut.cpp **** 
 106:../cores/arduino/AnalogOut.cpp **** static bool PWMEnabled = false;
 107:../cores/arduino/AnalogOut.cpp **** static uint16_t PWMChanFreq[numPwmChannels] = {0};
 108:../cores/arduino/AnalogOut.cpp **** static uint16_t PWMChanPeriod[numPwmChannels];
 109:../cores/arduino/AnalogOut.cpp **** 
 110:../cores/arduino/AnalogOut.cpp **** //***Temporary for debugging
 111:../cores/arduino/AnalogOut.cpp **** uint32_t maxPwmLoopCount = 0;
 112:../cores/arduino/AnalogOut.cpp **** 
 113:../cores/arduino/AnalogOut.cpp **** // AnalogWrite to a PWM pin
 114:../cores/arduino/AnalogOut.cpp **** // Return true if successful, false if we need to fall back to digitalWrite
 115:../cores/arduino/AnalogOut.cpp **** static bool AnalogWritePwm(const PinDescription& pinDesc, float ulValue, uint16_t freq)
 116:../cores/arduino/AnalogOut.cpp **** pre(0.0 <= ulValue; ulValue <= 1.0)
 117:../cores/arduino/AnalogOut.cpp **** pre((pinDesc.ulPinAttribute & PIN_ATTR_PWM) != 0)
 118:../cores/arduino/AnalogOut.cpp **** {
 119:../cores/arduino/AnalogOut.cpp **** 	const uint32_t chan = pinDesc.ulPWMChannel;
 120:../cores/arduino/AnalogOut.cpp **** 	if (freq == 0)
 121:../cores/arduino/AnalogOut.cpp **** 	{
 122:../cores/arduino/AnalogOut.cpp **** 		PWMChanFreq[chan] = freq;
 123:../cores/arduino/AnalogOut.cpp **** 		return false;
 124:../cores/arduino/AnalogOut.cpp **** 	}
ARM GAS  /tmp/ccQR1hla.s 			page 4


 125:../cores/arduino/AnalogOut.cpp **** 
 126:../cores/arduino/AnalogOut.cpp **** 	// Which PWM interface do we need to work with?
 127:../cores/arduino/AnalogOut.cpp **** #if SAME70
 128:../cores/arduino/AnalogOut.cpp **** 	Pwm *PWMInterface = (chan <= 3) ? PWM0 : PWM1;
 129:../cores/arduino/AnalogOut.cpp **** #else
 130:../cores/arduino/AnalogOut.cpp **** 	Pwm *PWMInterface = PWM;
 131:../cores/arduino/AnalogOut.cpp **** #endif
 132:../cores/arduino/AnalogOut.cpp **** 
 133:../cores/arduino/AnalogOut.cpp **** 	if (PWMChanFreq[chan] != freq)
 134:../cores/arduino/AnalogOut.cpp **** 	{
 135:../cores/arduino/AnalogOut.cpp **** 		if (!PWMEnabled)
 136:../cores/arduino/AnalogOut.cpp **** 		{
 137:../cores/arduino/AnalogOut.cpp **** #if SAME70
 138:../cores/arduino/AnalogOut.cpp **** 			// PWM startup code for both PWM interfaces
 139:../cores/arduino/AnalogOut.cpp **** 			pmc_enable_periph_clk(ID_PWM0);
 140:../cores/arduino/AnalogOut.cpp **** 			pmc_enable_periph_clk(ID_PWM1);
 141:../cores/arduino/AnalogOut.cpp **** 			pwm_clock_t clockConfig;
 142:../cores/arduino/AnalogOut.cpp **** 			clockConfig.ul_clka = PwmSlowClock;
 143:../cores/arduino/AnalogOut.cpp **** 			clockConfig.ul_clkb = PwmFastClock;
 144:../cores/arduino/AnalogOut.cpp **** 			clockConfig.ul_mck = VARIANT_MCK;
 145:../cores/arduino/AnalogOut.cpp **** 			pwm_init(PWM0, &clockConfig);
 146:../cores/arduino/AnalogOut.cpp **** 			PWM0->PWM_SCM = 0;										// ensure no sync channels
 147:../cores/arduino/AnalogOut.cpp **** 			pwm_init(PWM1, &clockConfig);
 148:../cores/arduino/AnalogOut.cpp **** 			PWM1->PWM_SCM = 0;										// ensure no sync channels
 149:../cores/arduino/AnalogOut.cpp **** #else
 150:../cores/arduino/AnalogOut.cpp **** 			// PWM Startup code
 151:../cores/arduino/AnalogOut.cpp **** 			pmc_enable_periph_clk(ID_PWM);
 152:../cores/arduino/AnalogOut.cpp **** 			pwm_clock_t clockConfig;
 153:../cores/arduino/AnalogOut.cpp **** 			clockConfig.ul_clka = PwmSlowClock;
 154:../cores/arduino/AnalogOut.cpp **** 			clockConfig.ul_clkb = PwmFastClock;
 155:../cores/arduino/AnalogOut.cpp **** 			clockConfig.ul_mck = VARIANT_MCK;
 156:../cores/arduino/AnalogOut.cpp **** 			pwm_init(PWM, &clockConfig);
 157:../cores/arduino/AnalogOut.cpp **** 			PWM->PWM_SCM = 0;										// ensure no sync channels
 158:../cores/arduino/AnalogOut.cpp **** #endif
 159:../cores/arduino/AnalogOut.cpp **** 			PWMEnabled = true;
 160:../cores/arduino/AnalogOut.cpp **** 		}
 161:../cores/arduino/AnalogOut.cpp **** 
 162:../cores/arduino/AnalogOut.cpp **** 		const bool useFastClock = (freq >= PwmFastClock/65535);
 163:../cores/arduino/AnalogOut.cpp **** 		const uint32_t period = ((useFastClock) ? PwmFastClock : PwmSlowClock)/freq;
 164:../cores/arduino/AnalogOut.cpp **** 		const uint32_t duty = ConvertRange(ulValue, period);
 165:../cores/arduino/AnalogOut.cpp **** 
 166:../cores/arduino/AnalogOut.cpp **** 		PWMChanFreq[chan] = freq;
 167:../cores/arduino/AnalogOut.cpp **** 		PWMChanPeriod[chan] = (uint16_t)period;
 168:../cores/arduino/AnalogOut.cpp **** 
 169:../cores/arduino/AnalogOut.cpp **** 		// Set up the PWM channel
 170:../cores/arduino/AnalogOut.cpp **** 		// We need to work around a bug in the SAM PWM channels. Enabling a channel is supposed to clear 
 171:../cores/arduino/AnalogOut.cpp **** 		// A further complication is that on the SAM3X, the update-period register doesn't appear to work
 172:../cores/arduino/AnalogOut.cpp **** 		// So we need to make sure the counter is less than the new period before we change the period.
 173:../cores/arduino/AnalogOut.cpp **** 		for (unsigned int j = 0; j < 5; ++j)							// twice through should be enough, but just in case...
 174:../cores/arduino/AnalogOut.cpp **** 		{
 175:../cores/arduino/AnalogOut.cpp **** 			pwm_channel_disable(PWMInterface, chan);
 176:../cores/arduino/AnalogOut.cpp **** 			if (j > maxPwmLoopCount)
 177:../cores/arduino/AnalogOut.cpp **** 			{
 178:../cores/arduino/AnalogOut.cpp **** 				maxPwmLoopCount = j;
 179:../cores/arduino/AnalogOut.cpp **** 			}
 180:../cores/arduino/AnalogOut.cpp **** 			uint32_t oldCurrentVal = PWMInterface->PWM_CH_NUM[chan].PWM_CCNT & 0xFFFF;
 181:../cores/arduino/AnalogOut.cpp **** 			if (oldCurrentVal < period || oldCurrentVal > 65536 - 10)	// if counter is already small enough 
ARM GAS  /tmp/ccQR1hla.s 			page 5


 182:../cores/arduino/AnalogOut.cpp **** 			{
 183:../cores/arduino/AnalogOut.cpp **** 				break;
 184:../cores/arduino/AnalogOut.cpp **** 			}
 185:../cores/arduino/AnalogOut.cpp **** 			oldCurrentVal += 2;											// note: +1 doesn't work here, has to be at least +2
 186:../cores/arduino/AnalogOut.cpp **** 			PWMInterface->PWM_CH_NUM[chan].PWM_CPRD = oldCurrentVal;				// change the period to be just grea
 187:../cores/arduino/AnalogOut.cpp **** 			PWMInterface->PWM_CH_NUM[chan].PWM_CMR = PWM_CMR_CPRE_CLKB;			// use the fast clock to avoid wai
 188:../cores/arduino/AnalogOut.cpp **** 			pwm_channel_enable(PWMInterface, chan);
 189:../cores/arduino/AnalogOut.cpp **** 			for (unsigned int i = 0; i < 1000; ++i)
 190:../cores/arduino/AnalogOut.cpp **** 			{
 191:../cores/arduino/AnalogOut.cpp **** 				const uint32_t newCurrentVal = PWMInterface->PWM_CH_NUM[chan].PWM_CCNT & 0xFFFF;
 192:../cores/arduino/AnalogOut.cpp **** 				if (newCurrentVal < period || newCurrentVal > oldCurrentVal)
 193:../cores/arduino/AnalogOut.cpp **** 				{
 194:../cores/arduino/AnalogOut.cpp **** 					break;												// get out when we have wrapped round, or failed to
 195:../cores/arduino/AnalogOut.cpp **** 				}
 196:../cores/arduino/AnalogOut.cpp **** 			}
 197:../cores/arduino/AnalogOut.cpp **** 		}
 198:../cores/arduino/AnalogOut.cpp **** 
 199:../cores/arduino/AnalogOut.cpp **** 		pwm_channel_t channelConfig;
 200:../cores/arduino/AnalogOut.cpp **** 		memset(&channelConfig, 0, sizeof(channelConfig));				// clear unused fields
 201:../cores/arduino/AnalogOut.cpp **** 		channelConfig.channel = chan;
 202:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_prescaler = (useFastClock) ? PWM_CMR_CPRE_CLKB : PWM_CMR_CPRE_CLKA;
 203:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_duty = duty;
 204:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_period = period;
 205:../cores/arduino/AnalogOut.cpp **** 
 206:../cores/arduino/AnalogOut.cpp **** 		pwm_channel_init(PWMInterface, &channelConfig);
 207:../cores/arduino/AnalogOut.cpp **** 		pwm_channel_enable(PWMInterface, chan);
 208:../cores/arduino/AnalogOut.cpp **** 
 209:../cores/arduino/AnalogOut.cpp **** 		// Now setup the PWM output pin for PWM this channel - do this after configuring the PWM to avoid
 210:../cores/arduino/AnalogOut.cpp **** 		pio_configure(pinDesc.pPort,
 211:../cores/arduino/AnalogOut.cpp **** 				pinDesc.ulPinType,
 212:../cores/arduino/AnalogOut.cpp **** 				pinDesc.ulPin,
 213:../cores/arduino/AnalogOut.cpp **** 				pinDesc.ulPinConfiguration);
 214:../cores/arduino/AnalogOut.cpp **** 	}
 215:../cores/arduino/AnalogOut.cpp **** 	else
 216:../cores/arduino/AnalogOut.cpp **** 	{
 217:../cores/arduino/AnalogOut.cpp **** 		// We have to pass a pwm_channel_t struct to pwm_channel_update duty, but the only fields it read
 218:../cores/arduino/AnalogOut.cpp **** 		pwm_channel_t channelConfig;
 219:../cores/arduino/AnalogOut.cpp **** 		channelConfig.channel = chan;
 220:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_period = (uint32_t)PWMChanPeriod[chan];
 221:../cores/arduino/AnalogOut.cpp **** 		pwm_channel_update_duty(PWMInterface, &channelConfig, ConvertRange(ulValue, channelConfig.ul_peri
 222:../cores/arduino/AnalogOut.cpp **** 	}
 223:../cores/arduino/AnalogOut.cpp **** 	return true;
 224:../cores/arduino/AnalogOut.cpp **** }
 225:../cores/arduino/AnalogOut.cpp **** 
 226:../cores/arduino/AnalogOut.cpp **** #if SAM4S
 227:../cores/arduino/AnalogOut.cpp **** const unsigned int numTcChannels = 6;
 228:../cores/arduino/AnalogOut.cpp **** #elif SAM3XA || SAM4E
 229:../cores/arduino/AnalogOut.cpp **** const unsigned int numTcChannels = 9;
 230:../cores/arduino/AnalogOut.cpp **** #elif SAME70
 231:../cores/arduino/AnalogOut.cpp **** const unsigned int numTcChannels = 12;
 232:../cores/arduino/AnalogOut.cpp **** #endif
 233:../cores/arduino/AnalogOut.cpp **** 
 234:../cores/arduino/AnalogOut.cpp **** // Map from timer channel to TC channel number
 235:../cores/arduino/AnalogOut.cpp **** static const uint8_t channelToChNo[numTcChannels] =
 236:../cores/arduino/AnalogOut.cpp **** {
 237:../cores/arduino/AnalogOut.cpp **** 	0, 1, 2,
 238:../cores/arduino/AnalogOut.cpp **** 	0, 1, 2,
ARM GAS  /tmp/ccQR1hla.s 			page 6


 239:../cores/arduino/AnalogOut.cpp **** #if SAME70
 240:../cores/arduino/AnalogOut.cpp **** 	0, 1, 2,
 241:../cores/arduino/AnalogOut.cpp **** 	0, 1, 2
 242:../cores/arduino/AnalogOut.cpp **** #endif
 243:../cores/arduino/AnalogOut.cpp **** #if SAM3XA || SAM4E
 244:../cores/arduino/AnalogOut.cpp **** 	0, 1, 2
 245:../cores/arduino/AnalogOut.cpp **** #endif
 246:../cores/arduino/AnalogOut.cpp **** };
 247:../cores/arduino/AnalogOut.cpp **** 
 248:../cores/arduino/AnalogOut.cpp **** // Map from timer channel to TC number
 249:../cores/arduino/AnalogOut.cpp **** static Tc * const channelToTC[numTcChannels] =
 250:../cores/arduino/AnalogOut.cpp **** {
 251:../cores/arduino/AnalogOut.cpp **** 	TC0, TC0, TC0,
 252:../cores/arduino/AnalogOut.cpp **** 	TC1, TC1, TC1,
 253:../cores/arduino/AnalogOut.cpp **** #if SAME70
 254:../cores/arduino/AnalogOut.cpp **** 	TC2, TC2, TC2,
 255:../cores/arduino/AnalogOut.cpp **** 	TC3, TC3, TC3
 256:../cores/arduino/AnalogOut.cpp **** #endif
 257:../cores/arduino/AnalogOut.cpp **** #if SAM3XA || SAM4E
 258:../cores/arduino/AnalogOut.cpp **** 	TC2, TC2, TC2
 259:../cores/arduino/AnalogOut.cpp **** #endif
 260:../cores/arduino/AnalogOut.cpp **** };
 261:../cores/arduino/AnalogOut.cpp **** 
 262:../cores/arduino/AnalogOut.cpp **** // Map from timer channel to TIO number
 263:../cores/arduino/AnalogOut.cpp **** static const uint8_t channelToId[numTcChannels] =
 264:../cores/arduino/AnalogOut.cpp **** {
 265:../cores/arduino/AnalogOut.cpp **** 	ID_TC0, ID_TC1, ID_TC2,
 266:../cores/arduino/AnalogOut.cpp **** 	ID_TC3, ID_TC4, ID_TC5,
 267:../cores/arduino/AnalogOut.cpp **** #if SAME70
 268:../cores/arduino/AnalogOut.cpp **** 	ID_TC6, ID_TC7, ID_TC8,
 269:../cores/arduino/AnalogOut.cpp **** 	ID_TC9, ID_TC10, ID_TC11
 270:../cores/arduino/AnalogOut.cpp **** #endif
 271:../cores/arduino/AnalogOut.cpp **** #if SAM3XA || SAM4E
 272:../cores/arduino/AnalogOut.cpp **** 	ID_TC6, ID_TC7, ID_TC8
 273:../cores/arduino/AnalogOut.cpp **** #endif
 274:../cores/arduino/AnalogOut.cpp **** };
 275:../cores/arduino/AnalogOut.cpp **** 
 276:../cores/arduino/AnalogOut.cpp **** // Current frequency of each TC channel
 277:../cores/arduino/AnalogOut.cpp **** static uint16_t TCChanFreq[numTcChannels] = {0};
 278:../cores/arduino/AnalogOut.cpp **** 
 279:../cores/arduino/AnalogOut.cpp **** static inline void TC_SetCMR_ChannelA(Tc *tc, uint32_t chan, uint32_t v)
 280:../cores/arduino/AnalogOut.cpp **** {
 281:../cores/arduino/AnalogOut.cpp **** 	tc->TC_CHANNEL[chan].TC_CMR = (tc->TC_CHANNEL[chan].TC_CMR & 0xFFF0FFFF) | v;
 282:../cores/arduino/AnalogOut.cpp **** }
 283:../cores/arduino/AnalogOut.cpp **** 
 284:../cores/arduino/AnalogOut.cpp **** static inline void TC_SetCMR_ChannelB(Tc *tc, uint32_t chan, uint32_t v)
 285:../cores/arduino/AnalogOut.cpp **** {
 286:../cores/arduino/AnalogOut.cpp **** 	tc->TC_CHANNEL[chan].TC_CMR = (tc->TC_CHANNEL[chan].TC_CMR & 0xF0FFFFFF) | v;
 287:../cores/arduino/AnalogOut.cpp **** }
 288:../cores/arduino/AnalogOut.cpp **** 
 289:../cores/arduino/AnalogOut.cpp **** static inline void TC_WriteCCR(Tc *tc, uint32_t chan, uint32_t v)
 290:../cores/arduino/AnalogOut.cpp **** {
 291:../cores/arduino/AnalogOut.cpp **** 	tc->TC_CHANNEL[chan].TC_CCR = v;
 292:../cores/arduino/AnalogOut.cpp **** }
 293:../cores/arduino/AnalogOut.cpp **** 
 294:../cores/arduino/AnalogOut.cpp **** // AnalogWrite to a TC pin
 295:../cores/arduino/AnalogOut.cpp **** // Return true if successful, false if we need to fall back to digitalWrite
ARM GAS  /tmp/ccQR1hla.s 			page 7


 296:../cores/arduino/AnalogOut.cpp **** // WARNING: this will screw up big time if you try to use both the A and B outputs of the same time
 297:../cores/arduino/AnalogOut.cpp **** // The DuetNG board uses only A outputs, so this is OK.
 298:../cores/arduino/AnalogOut.cpp **** static bool AnalogWriteTc(const PinDescription& pinDesc, float ulValue, uint16_t freq)
 299:../cores/arduino/AnalogOut.cpp **** pre(0.0 <= ulValue; ulValue <= 1.0)
 300:../cores/arduino/AnalogOut.cpp **** pre((pinDesc.ulPinAttribute & PIN_ATTR_TIMER) != 0)
 301:../cores/arduino/AnalogOut.cpp **** {
 302:../cores/arduino/AnalogOut.cpp **** 	const uint32_t chan = (uint32_t)pinDesc.ulTCChannel >> 1;
 303:../cores/arduino/AnalogOut.cpp **** 	if (freq == 0)
 304:../cores/arduino/AnalogOut.cpp **** 	{
 305:../cores/arduino/AnalogOut.cpp **** 		TCChanFreq[chan] = freq;
 306:../cores/arduino/AnalogOut.cpp **** 		return false;
 307:../cores/arduino/AnalogOut.cpp **** 	}
 308:../cores/arduino/AnalogOut.cpp **** 	else
 309:../cores/arduino/AnalogOut.cpp **** 	{
 310:../cores/arduino/AnalogOut.cpp **** 		Tc* const chTC = channelToTC[chan];
 311:../cores/arduino/AnalogOut.cpp **** 		const uint32_t chNo = channelToChNo[chan];
 312:../cores/arduino/AnalogOut.cpp **** 		const bool doInit = (TCChanFreq[chan] != freq);
 313:../cores/arduino/AnalogOut.cpp **** 
 314:../cores/arduino/AnalogOut.cpp **** 		if (doInit)
 315:../cores/arduino/AnalogOut.cpp **** 		{
 316:../cores/arduino/AnalogOut.cpp **** 			TCChanFreq[chan] = freq;
 317:../cores/arduino/AnalogOut.cpp **** 
 318:../cores/arduino/AnalogOut.cpp **** 			// Enable the peripheral clock to this timer
 319:../cores/arduino/AnalogOut.cpp **** 			pmc_enable_periph_clk(channelToId[chan]);
 320:../cores/arduino/AnalogOut.cpp **** 
 321:../cores/arduino/AnalogOut.cpp **** 			// Set up the timer mode and top count
 322:../cores/arduino/AnalogOut.cpp **** #if SAM4S || SAME70
 323:../cores/arduino/AnalogOut.cpp **** 			// The timer/counters are only 16 bits wide on the SAM4S and SAME70 so we need to use a higher p
 324:../cores/arduino/AnalogOut.cpp **** 			tc_init(chTC, chNo,
 325:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_TCCLKS_TIMER_CLOCK4 |			// clock is MCLK/128
 326:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_WAVE |         					// Waveform mode
 327:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_WAVSEL_UP_RC | 					// Counter running up and then down when equals to RC
 328:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_EEVT_XC0 |     					// Set external events from XC0 (this allows TIOB to be an output
 329:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_ACPA_CLEAR | TC_CMR_ACPC_CLEAR |
 330:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_BCPB_CLEAR | TC_CMR_BCPC_CLEAR |
 331:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_ASWTRG_SET | TC_CMR_BSWTRG_SET);	// Software trigger will let us set the output high
 332:../cores/arduino/AnalogOut.cpp **** 			const uint32_t top = min<uint32_t>((VARIANT_MCK/128)/(uint32_t)freq, 65535);	// with 120MHz cloc
 333:../cores/arduino/AnalogOut.cpp **** #else
 334:../cores/arduino/AnalogOut.cpp **** 			tc_init(chTC, chNo,
 335:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_TCCLKS_TIMER_CLOCK2 |			// clock is MCLK/8 to save a little power and avoid overflow 
 336:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_WAVE |         					// Waveform mode
 337:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_WAVSEL_UP_RC | 					// Counter running up and reset when equals to RC
 338:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_EEVT_XC0 |     					// Set external events from XC0 (this allows TIOB to be an output
 339:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_ACPA_CLEAR | TC_CMR_ACPC_CLEAR |
 340:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_BCPB_CLEAR | TC_CMR_BCPC_CLEAR |
 341:../cores/arduino/AnalogOut.cpp **** 							TC_CMR_ASWTRG_SET | TC_CMR_BSWTRG_SET);	// Software trigger will let us set the output high
 342:../cores/arduino/AnalogOut.cpp **** 			const uint32_t top = (VARIANT_MCK/8)/(uint32_t)freq;	// with 120MHz clock this varies between 22
 343:../cores/arduino/AnalogOut.cpp **** #endif
 344:../cores/arduino/AnalogOut.cpp **** 			// The datasheet doesn't say directly how the period relates to the RC value, but from measureme
 345:../cores/arduino/AnalogOut.cpp **** 			tc_write_rc(chTC, chNo, top);
 346:../cores/arduino/AnalogOut.cpp **** 
 347:../cores/arduino/AnalogOut.cpp **** 			// When using TC channels to do PWM control of heaters with active low outputs on the Duet WiFi,
 348:../cores/arduino/AnalogOut.cpp **** 			// then we get a glitch straight after initialising the channel, because the compare output star
 349:../cores/arduino/AnalogOut.cpp **** 			// To avoid that, set the output high here if a high PWM was requested.
 350:../cores/arduino/AnalogOut.cpp **** 			if (ulValue >= 0.5)
 351:../cores/arduino/AnalogOut.cpp **** 			{
 352:../cores/arduino/AnalogOut.cpp **** 				TC_WriteCCR(chTC, chan, TC_CCR_SWTRG);
ARM GAS  /tmp/ccQR1hla.s 			page 8


 353:../cores/arduino/AnalogOut.cpp **** 			}
 354:../cores/arduino/AnalogOut.cpp **** 		}
 355:../cores/arduino/AnalogOut.cpp **** 
 356:../cores/arduino/AnalogOut.cpp **** 		const uint32_t threshold = ConvertRange(ulValue, tc_read_rc(chTC, chNo));
 357:../cores/arduino/AnalogOut.cpp **** 		if (threshold == 0)
 358:../cores/arduino/AnalogOut.cpp **** 		{
 359:../cores/arduino/AnalogOut.cpp **** 			if (((uint32_t)pinDesc.ulTCChannel & 1) == 0)
 360:../cores/arduino/AnalogOut.cpp **** 			{
 361:../cores/arduino/AnalogOut.cpp **** 				tc_write_ra(chTC, chNo, 1);
 362:../cores/arduino/AnalogOut.cpp **** 				TC_SetCMR_ChannelA(chTC, chNo, TC_CMR_ACPA_CLEAR | TC_CMR_ACPC_CLEAR);
 363:../cores/arduino/AnalogOut.cpp **** 			}
 364:../cores/arduino/AnalogOut.cpp **** 			else
 365:../cores/arduino/AnalogOut.cpp **** 			{
 366:../cores/arduino/AnalogOut.cpp **** 				tc_write_rb(chTC, chNo, 1);
 367:../cores/arduino/AnalogOut.cpp **** 				TC_SetCMR_ChannelB(chTC, chNo, TC_CMR_BCPB_CLEAR | TC_CMR_BCPC_CLEAR);
 368:../cores/arduino/AnalogOut.cpp **** 			}
 369:../cores/arduino/AnalogOut.cpp **** 
 370:../cores/arduino/AnalogOut.cpp **** 		}
 371:../cores/arduino/AnalogOut.cpp **** 		else
 372:../cores/arduino/AnalogOut.cpp **** 		{
 373:../cores/arduino/AnalogOut.cpp **** 			if (((uint32_t)pinDesc.ulTCChannel & 1) == 0)
 374:../cores/arduino/AnalogOut.cpp **** 			{
 375:../cores/arduino/AnalogOut.cpp **** 				tc_write_ra(chTC, chNo, threshold);
 376:../cores/arduino/AnalogOut.cpp **** 				TC_SetCMR_ChannelA(chTC, chNo, TC_CMR_ACPA_CLEAR | TC_CMR_ACPC_SET);
 377:../cores/arduino/AnalogOut.cpp **** 			}
 378:../cores/arduino/AnalogOut.cpp **** 			else
 379:../cores/arduino/AnalogOut.cpp **** 			{
 380:../cores/arduino/AnalogOut.cpp **** 				tc_write_rb(chTC, chNo, threshold);
 381:../cores/arduino/AnalogOut.cpp **** 				TC_SetCMR_ChannelB(chTC, chNo, TC_CMR_BCPB_CLEAR | TC_CMR_BCPC_SET);
 382:../cores/arduino/AnalogOut.cpp **** 			}
 383:../cores/arduino/AnalogOut.cpp **** 		}
 384:../cores/arduino/AnalogOut.cpp **** 
 385:../cores/arduino/AnalogOut.cpp **** 		if (doInit)
 386:../cores/arduino/AnalogOut.cpp **** 		{
 387:../cores/arduino/AnalogOut.cpp **** 			ConfigurePin(pinDesc);
 388:../cores/arduino/AnalogOut.cpp **** 			tc_start(chTC, chNo);
 389:../cores/arduino/AnalogOut.cpp **** 		}
 390:../cores/arduino/AnalogOut.cpp **** 	}
 391:../cores/arduino/AnalogOut.cpp **** 	return true;
 392:../cores/arduino/AnalogOut.cpp **** }
 393:../cores/arduino/AnalogOut.cpp **** 
 394:../cores/arduino/AnalogOut.cpp **** // Analog write to DAC, PWM, TC or plain output pin
 395:../cores/arduino/AnalogOut.cpp **** // Setting the frequency of a TC or PWM pin to zero resets it so that the next call to AnalogOut wi
 396:../cores/arduino/AnalogOut.cpp **** // will re-initialise it. The pinMode function relies on this.
 397:../cores/arduino/AnalogOut.cpp **** void AnalogOut(Pin pin, float ulValue, uint16_t freq)
 398:../cores/arduino/AnalogOut.cpp **** {
  48              		.loc 1 398 0
  49              		.cfi_startproc
  50              		@ args = 0, pretend = 0, frame = 88
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              	.LVL0:
 399:../cores/arduino/AnalogOut.cpp **** 	if (pin > MaxPinNumber || std::isnan(ulValue))
  53              		.loc 1 399 0
  54 0000 3228     		cmp	r0, #50
  55 0002 37D8     		bhi	.L60
  56 0004 B4EE400A 		vcmp.f32	s0, s0
 398:../cores/arduino/AnalogOut.cpp **** 	if (pin > MaxPinNumber || std::isnan(ulValue))
ARM GAS  /tmp/ccQR1hla.s 			page 9


  57              		.loc 1 398 0
  58 0008 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  59              		.cfi_def_cfa_offset 36
  60              		.cfi_offset 4, -36
  61              		.cfi_offset 5, -32
  62              		.cfi_offset 6, -28
  63              		.cfi_offset 7, -24
  64              		.cfi_offset 8, -20
  65              		.cfi_offset 9, -16
  66              		.cfi_offset 10, -12
  67              		.cfi_offset 11, -8
  68              		.cfi_offset 14, -4
  69              		.loc 1 399 0
  70 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 398:../cores/arduino/AnalogOut.cpp **** 	if (pin > MaxPinNumber || std::isnan(ulValue))
  71              		.loc 1 398 0
  72 0010 2DED028B 		vpush.64	{d8}
  73              		.cfi_def_cfa_offset 44
  74              		.cfi_offset 80, -44
  75              		.cfi_offset 81, -40
  76 0014 B0EE408A 		vmov.f32	s16, s0
  77              	.LVL1:
  78 0018 97B0     		sub	sp, sp, #92
  79              		.cfi_def_cfa_offset 136
  80              		.loc 1 399 0
  81 001a 26D6     		bvs	.L2
  82              	.LBB135:
  83              	.LBB136:
  84              	.LBB137:
  85              		.file 2 "../cores/arduino/WMath.h"
   1:../cores/arduino/WMath.h **** /*
   2:../cores/arduino/WMath.h ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:../cores/arduino/WMath.h **** 
   4:../cores/arduino/WMath.h ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/WMath.h ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/WMath.h ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/WMath.h ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/WMath.h **** 
   9:../cores/arduino/WMath.h ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/WMath.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/WMath.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:../cores/arduino/WMath.h ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/WMath.h **** 
  14:../cores/arduino/WMath.h ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/WMath.h ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/WMath.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/WMath.h **** */
  18:../cores/arduino/WMath.h **** 
  19:../cores/arduino/WMath.h **** #ifndef _WIRING_MATH_
  20:../cores/arduino/WMath.h **** #define _WIRING_MATH_
  21:../cores/arduino/WMath.h **** 
  22:../cores/arduino/WMath.h **** #include <stdint.h>
  23:../cores/arduino/WMath.h **** #include <compiler.h>
  24:../cores/arduino/WMath.h **** 
  25:../cores/arduino/WMath.h **** #if SAM3XA || SAME70
  26:../cores/arduino/WMath.h **** 
  27:../cores/arduino/WMath.h **** #ifdef __cplusplus
ARM GAS  /tmp/ccQR1hla.s 			page 10


  28:../cores/arduino/WMath.h **** extern "C" uint32_t trueRandom();
  29:../cores/arduino/WMath.h **** #else
  30:../cores/arduino/WMath.h **** extern uint32_t trueRandom();
  31:../cores/arduino/WMath.h **** #endif
  32:../cores/arduino/WMath.h **** 
  33:../cores/arduino/WMath.h **** #endif	// SAM3XA || SAME70
  34:../cores/arduino/WMath.h **** 
  35:../cores/arduino/WMath.h **** #ifdef __cplusplus
  36:../cores/arduino/WMath.h **** 
  37:../cores/arduino/WMath.h **** #include <cmath>
  38:../cores/arduino/WMath.h **** 
  39:../cores/arduino/WMath.h **** extern int32_t random(int32_t);
  40:../cores/arduino/WMath.h **** extern int32_t random(int32_t, int32_t);
  41:../cores/arduino/WMath.h **** extern int32_t map(int32_t, int32_t, int32_t, int32_t, int32_t);
  42:../cores/arduino/WMath.h **** 
  43:../cores/arduino/WMath.h **** // std::min and std::max don't seem to work with this variant of gcc, so define our own ones here
  44:../cores/arduino/WMath.h **** // We use these only with primitive types, so pass them directly instead of by const reference
  45:../cores/arduino/WMath.h **** #ifdef min
  46:../cores/arduino/WMath.h **** # undef min
  47:../cores/arduino/WMath.h **** #endif
  48:../cores/arduino/WMath.h **** 
  49:../cores/arduino/WMath.h **** #ifdef max
  50:../cores/arduino/WMath.h **** # undef max
  51:../cores/arduino/WMath.h **** #endif
  52:../cores/arduino/WMath.h **** 
  53:../cores/arduino/WMath.h **** template<class X> inline X min(X _a, X _b)
  54:../cores/arduino/WMath.h **** {
  55:../cores/arduino/WMath.h **** 	return (_a < _b) ? _a : _b;
  56:../cores/arduino/WMath.h **** }
  57:../cores/arduino/WMath.h **** 
  58:../cores/arduino/WMath.h **** template<class X> inline X max(X _a, X _b)
  59:../cores/arduino/WMath.h **** {
  60:../cores/arduino/WMath.h **** 	return (_a > _b) ? _a : _b;
  61:../cores/arduino/WMath.h **** }
  62:../cores/arduino/WMath.h **** 
  63:../cores/arduino/WMath.h **** // Specialisations for float and double to handle NaNs properly
  64:../cores/arduino/WMath.h **** template<> inline float min(float _a, float _b)
  65:../cores/arduino/WMath.h **** {
  66:../cores/arduino/WMath.h **** 	return (std::isnan(_a) || _a < _b) ? _a : _b;
  86              		.loc 2 66 0
  87 001c F7EE007A 		vmov.f32	s15, #1.0e+0
  88 0020 0446     		mov	r4, r0
  89 0022 0E46     		mov	r6, r1
  90              	.LVL2:
  91 0024 B4EEE70A 		vcmpe.f32	s0, s15
  92 0028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  93 002c 23D4     		bmi	.L64
  94 002e B0EE678A 		vmov.f32	s16, s15
  95              	.LVL3:
  96              	.L37:
  97              	.LBE137:
  98              	.LBE136:
  99              	.LBE135:
 400:../cores/arduino/AnalogOut.cpp **** 	{
 401:../cores/arduino/AnalogOut.cpp **** 		return;
 402:../cores/arduino/AnalogOut.cpp **** 	}
 403:../cores/arduino/AnalogOut.cpp **** 
ARM GAS  /tmp/ccQR1hla.s 			page 11


 404:../cores/arduino/AnalogOut.cpp **** 	ulValue = constrain<float>(ulValue, 0.0, 1.0);
 405:../cores/arduino/AnalogOut.cpp **** 
 406:../cores/arduino/AnalogOut.cpp **** 	const PinDescription& pinDesc = g_APinDescription[pin];
 100              		.loc 1 406 0
 101 0032 C4EBC402 		rsb	r2, r4, r4, lsl #3
 102 0036 BA4D     		ldr	r5, .L73
 407:../cores/arduino/AnalogOut.cpp **** 	const uint32_t attr = pinDesc.ulPinAttribute;
 103              		.loc 1 407 0
 104 0038 E700     		lsls	r7, r4, #3
 406:../cores/arduino/AnalogOut.cpp **** 	const uint32_t attr = pinDesc.ulPinAttribute;
 105              		.loc 1 406 0
 106 003a 05EB8208 		add	r8, r5, r2, lsl #2
 107              	.LVL4:
 108              		.loc 1 407 0
 109 003e D8F81420 		ldr	r2, [r8, #20]
 110              	.LVL5:
 408:../cores/arduino/AnalogOut.cpp **** 	if ((attr & PIN_ATTR_DAC) != 0)
 111              		.loc 1 408 0
 112 0042 9006     		lsls	r0, r2, #26
 113              	.LVL6:
 114 0044 21D4     		bmi	.L65
 409:../cores/arduino/AnalogOut.cpp **** 	{
 410:../cores/arduino/AnalogOut.cpp **** 		if (AnalogWriteDac(pinDesc, ulValue))
 411:../cores/arduino/AnalogOut.cpp **** 		{
 412:../cores/arduino/AnalogOut.cpp **** 			return;
 413:../cores/arduino/AnalogOut.cpp **** 		}
 414:../cores/arduino/AnalogOut.cpp **** 	}
 415:../cores/arduino/AnalogOut.cpp **** 	else if ((attr & PIN_ATTR_PWM) != 0)
 115              		.loc 1 415 0
 116 0046 1007     		lsls	r0, r2, #28
 117 0048 46D4     		bmi	.L66
 416:../cores/arduino/AnalogOut.cpp **** 	{
 417:../cores/arduino/AnalogOut.cpp **** 		if (AnalogWritePwm(pinDesc, ulValue, freq))
 418:../cores/arduino/AnalogOut.cpp **** 		{
 419:../cores/arduino/AnalogOut.cpp **** 			return;
 420:../cores/arduino/AnalogOut.cpp **** 		}
 421:../cores/arduino/AnalogOut.cpp **** 	}
 422:../cores/arduino/AnalogOut.cpp **** 	else if ((attr & PIN_ATTR_TIMER) != 0)
 118              		.loc 1 422 0
 119 004a D206     		lsls	r2, r2, #27
 120              	.LVL7:
 121 004c 00F1C080 		bmi	.L67
 122              	.LVL8:
 123              	.L12:
 423:../cores/arduino/AnalogOut.cpp **** 	{
 424:../cores/arduino/AnalogOut.cpp **** 		if (AnalogWriteTc(pinDesc, ulValue, freq))
 425:../cores/arduino/AnalogOut.cpp **** 		{
 426:../cores/arduino/AnalogOut.cpp **** 			return;
 427:../cores/arduino/AnalogOut.cpp **** 		}
 428:../cores/arduino/AnalogOut.cpp **** 	}
 429:../cores/arduino/AnalogOut.cpp **** 
 430:../cores/arduino/AnalogOut.cpp **** 	// Fall back to digital write
 431:../cores/arduino/AnalogOut.cpp **** 	pinMode(pin, (ulValue < 0.5) ? OUTPUT_LOW : OUTPUT_HIGH);
 124              		.loc 1 431 0
 125 0050 F6EE007A 		vmov.f32	s15, #5.0e-1
 126              	.LBB140:
 127              	.LBB141:
ARM GAS  /tmp/ccQR1hla.s 			page 12


 128              		.file 3 "../cores/arduino/wiring_digital.h"
   1:../cores/arduino/wiring_digital.h **** /*
   2:../cores/arduino/wiring_digital.h ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:../cores/arduino/wiring_digital.h **** 
   4:../cores/arduino/wiring_digital.h ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/wiring_digital.h ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/wiring_digital.h ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/wiring_digital.h ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/wiring_digital.h **** 
   9:../cores/arduino/wiring_digital.h ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/wiring_digital.h ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/wiring_digital.h ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  12:../cores/arduino/wiring_digital.h ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/wiring_digital.h **** 
  14:../cores/arduino/wiring_digital.h ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/wiring_digital.h ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/wiring_digital.h ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/wiring_digital.h **** */
  18:../cores/arduino/wiring_digital.h **** 
  19:../cores/arduino/wiring_digital.h **** #ifndef _WIRING_DIGITAL_
  20:../cores/arduino/wiring_digital.h **** #define _WIRING_DIGITAL_
  21:../cores/arduino/wiring_digital.h **** 
  22:../cores/arduino/wiring_digital.h **** #ifdef __cplusplus
  23:../cores/arduino/wiring_digital.h **** extern "C" {
  24:../cores/arduino/wiring_digital.h **** #endif
  25:../cores/arduino/wiring_digital.h **** 
  26:../cores/arduino/wiring_digital.h **** // Pin mode enumeration. Would ideally be a C++ scoped enum, but we need to use it from C library f
  27:../cores/arduino/wiring_digital.h **** enum PinMode
  28:../cores/arduino/wiring_digital.h **** {
  29:../cores/arduino/wiring_digital.h **** 	PIN_MODE_NOT_CONFIGURED = -1,	// used in Platform class to record that the mode for a pin has not 
  30:../cores/arduino/wiring_digital.h **** 	INPUT = 0,						// pin is a digital input
  31:../cores/arduino/wiring_digital.h **** 	INPUT_PULLUP,					// pin is a digital input with pullup enabled
  32:../cores/arduino/wiring_digital.h **** #if SAM4E || SAM4S || SAME70
  33:../cores/arduino/wiring_digital.h **** 	INPUT_PULLDOWN,					// pin is a digital input with pulldown enabled
  34:../cores/arduino/wiring_digital.h **** #else
  35:../cores/arduino/wiring_digital.h **** 	INPUT_PULLDOWN_NOT_AVAILABLE,
  36:../cores/arduino/wiring_digital.h **** #endif
  37:../cores/arduino/wiring_digital.h **** 	OUTPUT_LOW,						// pin is an output with initial state LOW
  38:../cores/arduino/wiring_digital.h **** 	OUTPUT_HIGH,					// pin is an output with initial state HIGH
  39:../cores/arduino/wiring_digital.h **** 	AIN,							// pin is an analog input, digital input buffer is disabled if possible
  40:../cores/arduino/wiring_digital.h **** 	SPECIAL,						// pin is used for the special function defined for it in the variant.cpp file
  41:../cores/arduino/wiring_digital.h **** 	OUTPUT_PWM_LOW,					// PWM output mode, initially low
  42:../cores/arduino/wiring_digital.h **** 	OUTPUT_PWM_HIGH,				// PWM output mode, initially high
  43:../cores/arduino/wiring_digital.h **** 	OUTPUT_LOW_OPEN_DRAIN,			// used in SX1509B expansion driver to put the pin in open drain output m
  44:../cores/arduino/wiring_digital.h **** 	OUTPUT_HIGH_OPEN_DRAIN,			// used in SX1509B expansion driver to put the pin in open drain output 
  45:../cores/arduino/wiring_digital.h **** 	OUTPUT_PWM_OPEN_DRAIN			// used in SX1509B expansion driver to put the pin in PWM output mode
  46:../cores/arduino/wiring_digital.h **** };
  47:../cores/arduino/wiring_digital.h **** 
  48:../cores/arduino/wiring_digital.h **** /**
  49:../cores/arduino/wiring_digital.h ****  * \brief Configures the specified pin to behave either as an input or an output. See the descripti
  50:../cores/arduino/wiring_digital.h ****  *
  51:../cores/arduino/wiring_digital.h ****  * \param ulPin The number of the pin whose mode you wish to set
  52:../cores/arduino/wiring_digital.h ****  * \param ulMode Either INPUT or OUTPUT
  53:../cores/arduino/wiring_digital.h ****  * \param debounceCutoff Debounce cutoff frequency (only one can be set per PIO)
  54:../cores/arduino/wiring_digital.h ****  */
  55:../cores/arduino/wiring_digital.h **** extern void pinModeDuet(Pin pin, enum PinMode dwMode, uint32_t debounceCutoff);
  56:../cores/arduino/wiring_digital.h **** 
ARM GAS  /tmp/ccQR1hla.s 			page 13


  57:../cores/arduino/wiring_digital.h **** inline void pinMode(Pin pin, enum PinMode dwMode)
  58:../cores/arduino/wiring_digital.h **** {
  59:../cores/arduino/wiring_digital.h **** 	pinModeDuet(pin, dwMode, 0);
 129              		.loc 3 59 0
 130 0054 2046     		mov	r0, r4
 131 0056 0022     		movs	r2, #0
 132              	.LBE141:
 133              	.LBE140:
 134              		.loc 1 431 0
 135 0058 B4EEE78A 		vcmpe.f32	s16, s15
 136 005c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 137              	.LVL9:
 138              	.LBB143:
 139              	.LBB142:
 140              		.loc 3 59 0
 141 0060 4CBF     		ite	mi
 142 0062 0321     		movmi	r1, #3
 143              	.LVL10:
 144 0064 0421     		movpl	r1, #4
 145 0066 FFF7FEFF 		bl	pinModeDuet
 146              	.LVL11:
 147              	.L2:
 148              	.LBE142:
 149              	.LBE143:
 432:../cores/arduino/AnalogOut.cpp **** }
 150              		.loc 1 432 0
 151 006a 17B0     		add	sp, sp, #92
 152              		.cfi_def_cfa_offset 44
 153              		@ sp needed
 154 006c BDEC028B 		vldm	sp!, {d8}
 155              		.cfi_restore 80
 156              		.cfi_restore 81
 157              		.cfi_def_cfa_offset 36
 158 0070 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 159              	.LVL12:
 160              	.L60:
 161              		.cfi_def_cfa_offset 0
 162              		.cfi_restore 4
 163              		.cfi_restore 5
 164              		.cfi_restore 6
 165              		.cfi_restore 7
 166              		.cfi_restore 8
 167              		.cfi_restore 9
 168              		.cfi_restore 10
 169              		.cfi_restore 11
 170              		.cfi_restore 14
 171 0074 7047     		bx	lr
 172              	.LVL13:
 173              	.L64:
 174              		.cfi_def_cfa_offset 136
 175              		.cfi_offset 4, -36
 176              		.cfi_offset 5, -32
 177              		.cfi_offset 6, -28
 178              		.cfi_offset 7, -24
 179              		.cfi_offset 8, -20
 180              		.cfi_offset 9, -16
 181              		.cfi_offset 10, -12
ARM GAS  /tmp/ccQR1hla.s 			page 14


 182              		.cfi_offset 11, -8
 183              		.cfi_offset 14, -4
 184              		.cfi_offset 80, -44
 185              		.cfi_offset 81, -40
 186              	.LBB144:
 187              	.LBB138:
 188              	.LBB139:
  67:../cores/arduino/WMath.h **** }
  68:../cores/arduino/WMath.h **** 
  69:../cores/arduino/WMath.h **** template<> inline float max(float _a, float _b)
  70:../cores/arduino/WMath.h **** {
  71:../cores/arduino/WMath.h **** 	return (std::isnan(_a) || _a > _b) ? _a : _b;
 189              		.loc 2 71 0
 190 0076 B5EEC00A 		vcmpe.f32	s0, #0
 191 007a DFEDAA7A 		vldr.32	s15, .L73+4
 192 007e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 193 0082 D8BF     		it	le
 194 0084 B0EE678A 		vmovle.f32	s16, s15
 195 0088 D3E7     		b	.L37
 196              	.LVL14:
 197              	.L65:
 198              	.LBE139:
 199              	.LBE138:
 200              	.LBE144:
 201              	.LBB145:
 202              	.LBB146:
  47:../cores/arduino/AnalogOut.cpp **** 	if (dacc_get_channel_status(DACC) == 0)
 203              		.loc 1 47 0
 204 008a 98F91840 		ldrsb	r4, [r8, #24]
  48:../cores/arduino/AnalogOut.cpp **** 	{
 205              		.loc 1 48 0
 206 008e A648     		ldr	r0, .L73+8
  47:../cores/arduino/AnalogOut.cpp **** 	if (dacc_get_channel_status(DACC) == 0)
 207              		.loc 1 47 0
 208 0090 203C     		subs	r4, r4, #32
 209 0092 18BF     		it	ne
 210 0094 0124     		movne	r4, #1
 211              	.LVL15:
  48:../cores/arduino/AnalogOut.cpp **** 	{
 212              		.loc 1 48 0
 213 0096 FFF7FEFF 		bl	dacc_get_channel_status
 214              	.LVL16:
 215 009a 0546     		mov	r5, r0
 216 009c 0028     		cmp	r0, #0
 217 009e 00F0FA80 		beq	.L68
 218              	.L8:
  85:../cores/arduino/AnalogOut.cpp **** 	{
 219              		.loc 1 85 0
 220 00a2 A148     		ldr	r0, .L73+8
 221 00a4 FFF7FEFF 		bl	dacc_get_channel_status
 222              	.LVL17:
 223 00a8 0123     		movs	r3, #1
 224 00aa A340     		lsls	r3, r3, r4
 225 00ac 0342     		tst	r3, r0
 226 00ae 03D1     		bne	.L9
  87:../cores/arduino/AnalogOut.cpp **** 	}
 227              		.loc 1 87 0
ARM GAS  /tmp/ccQR1hla.s 			page 15


 228 00b0 2146     		mov	r1, r4
 229 00b2 9D48     		ldr	r0, .L73+8
 230 00b4 FFF7FEFF 		bl	dacc_enable_channel
 231              	.LVL18:
 232              	.L9:
 233              	.LBB147:
 234              	.LBB148:
  37:../cores/arduino/AnalogOut.cpp **** }
 235              		.loc 1 37 0
 236 00b8 9FED9C0A 		vldr.32	s0, .L73+12
 237              	.LBB149:
 238              	.LBB150:
 239              		.file 4 "/usr/include/newlib/c++/6.3.1/cmath"
   1:/usr/include/newlib/c++/6.3.1/cmath **** // -*- C++ -*- C forwarding header.
   2:/usr/include/newlib/c++/6.3.1/cmath **** 
   3:/usr/include/newlib/c++/6.3.1/cmath **** // Copyright (C) 1997-2016 Free Software Foundation, Inc.
   4:/usr/include/newlib/c++/6.3.1/cmath **** //
   5:/usr/include/newlib/c++/6.3.1/cmath **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/newlib/c++/6.3.1/cmath **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/newlib/c++/6.3.1/cmath **** // terms of the GNU General Public License as published by the
   8:/usr/include/newlib/c++/6.3.1/cmath **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/newlib/c++/6.3.1/cmath **** // any later version.
  10:/usr/include/newlib/c++/6.3.1/cmath **** 
  11:/usr/include/newlib/c++/6.3.1/cmath **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/newlib/c++/6.3.1/cmath **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/newlib/c++/6.3.1/cmath **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/newlib/c++/6.3.1/cmath **** // GNU General Public License for more details.
  15:/usr/include/newlib/c++/6.3.1/cmath **** 
  16:/usr/include/newlib/c++/6.3.1/cmath **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/newlib/c++/6.3.1/cmath **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/newlib/c++/6.3.1/cmath **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/newlib/c++/6.3.1/cmath **** 
  20:/usr/include/newlib/c++/6.3.1/cmath **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/newlib/c++/6.3.1/cmath **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/newlib/c++/6.3.1/cmath **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/newlib/c++/6.3.1/cmath **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/newlib/c++/6.3.1/cmath **** 
  25:/usr/include/newlib/c++/6.3.1/cmath **** /** @file include/cmath
  26:/usr/include/newlib/c++/6.3.1/cmath ****  *  This is a Standard C++ Library file.  You should @c \#include this file
  27:/usr/include/newlib/c++/6.3.1/cmath ****  *  in your programs, rather than any of the @a *.h implementation files.
  28:/usr/include/newlib/c++/6.3.1/cmath ****  *
  29:/usr/include/newlib/c++/6.3.1/cmath ****  *  This is the C++ version of the Standard C Library header @c math.h,
  30:/usr/include/newlib/c++/6.3.1/cmath ****  *  and its contents are (mostly) the same as that header, but are all
  31:/usr/include/newlib/c++/6.3.1/cmath ****  *  contained in the namespace @c std (except for names which are defined
  32:/usr/include/newlib/c++/6.3.1/cmath ****  *  as macros in C).
  33:/usr/include/newlib/c++/6.3.1/cmath ****  */
  34:/usr/include/newlib/c++/6.3.1/cmath **** 
  35:/usr/include/newlib/c++/6.3.1/cmath **** //
  36:/usr/include/newlib/c++/6.3.1/cmath **** // ISO C++ 14882: 26.5  C library
  37:/usr/include/newlib/c++/6.3.1/cmath **** //
  38:/usr/include/newlib/c++/6.3.1/cmath **** 
  39:/usr/include/newlib/c++/6.3.1/cmath **** #pragma GCC system_header
  40:/usr/include/newlib/c++/6.3.1/cmath **** 
  41:/usr/include/newlib/c++/6.3.1/cmath **** #include <bits/c++config.h>
  42:/usr/include/newlib/c++/6.3.1/cmath **** #include <bits/cpp_type_traits.h>
  43:/usr/include/newlib/c++/6.3.1/cmath **** #include <ext/type_traits.h>
  44:/usr/include/newlib/c++/6.3.1/cmath **** #define _GLIBCXX_INCLUDE_NEXT_C_HEADERS
ARM GAS  /tmp/ccQR1hla.s 			page 16


  45:/usr/include/newlib/c++/6.3.1/cmath **** #include_next <math.h>
  46:/usr/include/newlib/c++/6.3.1/cmath **** #undef _GLIBCXX_INCLUDE_NEXT_C_HEADERS
  47:/usr/include/newlib/c++/6.3.1/cmath **** 
  48:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef _GLIBCXX_CMATH
  49:/usr/include/newlib/c++/6.3.1/cmath **** #define _GLIBCXX_CMATH 1
  50:/usr/include/newlib/c++/6.3.1/cmath **** 
  51:/usr/include/newlib/c++/6.3.1/cmath **** // Get rid of those macros defined in <math.h> in lieu of real functions.
  52:/usr/include/newlib/c++/6.3.1/cmath **** #undef abs
  53:/usr/include/newlib/c++/6.3.1/cmath **** #undef div
  54:/usr/include/newlib/c++/6.3.1/cmath **** #undef acos
  55:/usr/include/newlib/c++/6.3.1/cmath **** #undef asin
  56:/usr/include/newlib/c++/6.3.1/cmath **** #undef atan
  57:/usr/include/newlib/c++/6.3.1/cmath **** #undef atan2
  58:/usr/include/newlib/c++/6.3.1/cmath **** #undef ceil
  59:/usr/include/newlib/c++/6.3.1/cmath **** #undef cos
  60:/usr/include/newlib/c++/6.3.1/cmath **** #undef cosh
  61:/usr/include/newlib/c++/6.3.1/cmath **** #undef exp
  62:/usr/include/newlib/c++/6.3.1/cmath **** #undef fabs
  63:/usr/include/newlib/c++/6.3.1/cmath **** #undef floor
  64:/usr/include/newlib/c++/6.3.1/cmath **** #undef fmod
  65:/usr/include/newlib/c++/6.3.1/cmath **** #undef frexp
  66:/usr/include/newlib/c++/6.3.1/cmath **** #undef ldexp
  67:/usr/include/newlib/c++/6.3.1/cmath **** #undef log
  68:/usr/include/newlib/c++/6.3.1/cmath **** #undef log10
  69:/usr/include/newlib/c++/6.3.1/cmath **** #undef modf
  70:/usr/include/newlib/c++/6.3.1/cmath **** #undef pow
  71:/usr/include/newlib/c++/6.3.1/cmath **** #undef sin
  72:/usr/include/newlib/c++/6.3.1/cmath **** #undef sinh
  73:/usr/include/newlib/c++/6.3.1/cmath **** #undef sqrt
  74:/usr/include/newlib/c++/6.3.1/cmath **** #undef tan
  75:/usr/include/newlib/c++/6.3.1/cmath **** #undef tanh
  76:/usr/include/newlib/c++/6.3.1/cmath **** 
  77:/usr/include/newlib/c++/6.3.1/cmath **** extern "C++"
  78:/usr/include/newlib/c++/6.3.1/cmath **** {
  79:/usr/include/newlib/c++/6.3.1/cmath **** namespace std _GLIBCXX_VISIBILITY(default)
  80:/usr/include/newlib/c++/6.3.1/cmath **** {
  81:/usr/include/newlib/c++/6.3.1/cmath **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  82:/usr/include/newlib/c++/6.3.1/cmath **** 
  83:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
  84:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR double
  85:/usr/include/newlib/c++/6.3.1/cmath ****   abs(double __x)
  86:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fabs(__x); }
  87:/usr/include/newlib/c++/6.3.1/cmath **** #endif
  88:/usr/include/newlib/c++/6.3.1/cmath **** 
  89:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
  90:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
  91:/usr/include/newlib/c++/6.3.1/cmath ****   abs(float __x)
  92:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fabsf(__x); }
  93:/usr/include/newlib/c++/6.3.1/cmath **** 
  94:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
  95:/usr/include/newlib/c++/6.3.1/cmath ****   abs(long double __x)
  96:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fabsl(__x); }
  97:/usr/include/newlib/c++/6.3.1/cmath **** #endif
  98:/usr/include/newlib/c++/6.3.1/cmath **** 
  99:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 100:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 101:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
ARM GAS  /tmp/ccQR1hla.s 			page 17


 102:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 103:/usr/include/newlib/c++/6.3.1/cmath ****     abs(_Tp __x)
 104:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_fabs(__x); }
 105:/usr/include/newlib/c++/6.3.1/cmath **** 
 106:/usr/include/newlib/c++/6.3.1/cmath ****   using ::acos;
 107:/usr/include/newlib/c++/6.3.1/cmath **** 
 108:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 109:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 110:/usr/include/newlib/c++/6.3.1/cmath ****   acos(float __x)
 111:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_acosf(__x); }
 112:/usr/include/newlib/c++/6.3.1/cmath **** 
 113:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 114:/usr/include/newlib/c++/6.3.1/cmath ****   acos(long double __x)
 115:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_acosl(__x); }
 116:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 117:/usr/include/newlib/c++/6.3.1/cmath **** 
 118:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 119:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 120:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 121:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 122:/usr/include/newlib/c++/6.3.1/cmath ****     acos(_Tp __x)
 123:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_acos(__x); }
 124:/usr/include/newlib/c++/6.3.1/cmath **** 
 125:/usr/include/newlib/c++/6.3.1/cmath ****   using ::asin;
 126:/usr/include/newlib/c++/6.3.1/cmath **** 
 127:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 128:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 129:/usr/include/newlib/c++/6.3.1/cmath ****   asin(float __x)
 130:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_asinf(__x); }
 131:/usr/include/newlib/c++/6.3.1/cmath **** 
 132:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 133:/usr/include/newlib/c++/6.3.1/cmath ****   asin(long double __x)
 134:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_asinl(__x); }
 135:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 136:/usr/include/newlib/c++/6.3.1/cmath **** 
 137:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 138:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 139:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 140:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 141:/usr/include/newlib/c++/6.3.1/cmath ****     asin(_Tp __x)
 142:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_asin(__x); }
 143:/usr/include/newlib/c++/6.3.1/cmath **** 
 144:/usr/include/newlib/c++/6.3.1/cmath ****   using ::atan;
 145:/usr/include/newlib/c++/6.3.1/cmath **** 
 146:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 147:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 148:/usr/include/newlib/c++/6.3.1/cmath ****   atan(float __x)
 149:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_atanf(__x); }
 150:/usr/include/newlib/c++/6.3.1/cmath **** 
 151:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 152:/usr/include/newlib/c++/6.3.1/cmath ****   atan(long double __x)
 153:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_atanl(__x); }
 154:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 155:/usr/include/newlib/c++/6.3.1/cmath **** 
 156:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 157:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 158:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
ARM GAS  /tmp/ccQR1hla.s 			page 18


 159:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 160:/usr/include/newlib/c++/6.3.1/cmath ****     atan(_Tp __x)
 161:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_atan(__x); }
 162:/usr/include/newlib/c++/6.3.1/cmath **** 
 163:/usr/include/newlib/c++/6.3.1/cmath ****   using ::atan2;
 164:/usr/include/newlib/c++/6.3.1/cmath **** 
 165:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 166:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 167:/usr/include/newlib/c++/6.3.1/cmath ****   atan2(float __y, float __x)
 168:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_atan2f(__y, __x); }
 169:/usr/include/newlib/c++/6.3.1/cmath **** 
 170:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 171:/usr/include/newlib/c++/6.3.1/cmath ****   atan2(long double __y, long double __x)
 172:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_atan2l(__y, __x); }
 173:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 174:/usr/include/newlib/c++/6.3.1/cmath **** 
 175:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
 176:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 177:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
 178:/usr/include/newlib/c++/6.3.1/cmath ****     atan2(_Tp __y, _Up __x)
 179:/usr/include/newlib/c++/6.3.1/cmath ****     {
 180:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
 181:/usr/include/newlib/c++/6.3.1/cmath ****       return atan2(__type(__y), __type(__x));
 182:/usr/include/newlib/c++/6.3.1/cmath ****     }
 183:/usr/include/newlib/c++/6.3.1/cmath **** 
 184:/usr/include/newlib/c++/6.3.1/cmath ****   using ::ceil;
 185:/usr/include/newlib/c++/6.3.1/cmath **** 
 186:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 187:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 188:/usr/include/newlib/c++/6.3.1/cmath ****   ceil(float __x)
 189:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_ceilf(__x); }
 190:/usr/include/newlib/c++/6.3.1/cmath **** 
 191:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 192:/usr/include/newlib/c++/6.3.1/cmath ****   ceil(long double __x)
 193:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_ceill(__x); }
 194:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 195:/usr/include/newlib/c++/6.3.1/cmath **** 
 196:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 197:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 198:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 199:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 200:/usr/include/newlib/c++/6.3.1/cmath ****     ceil(_Tp __x)
 201:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_ceil(__x); }
 202:/usr/include/newlib/c++/6.3.1/cmath **** 
 203:/usr/include/newlib/c++/6.3.1/cmath ****   using ::cos;
 204:/usr/include/newlib/c++/6.3.1/cmath **** 
 205:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 206:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 207:/usr/include/newlib/c++/6.3.1/cmath ****   cos(float __x)
 208:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_cosf(__x); }
 209:/usr/include/newlib/c++/6.3.1/cmath **** 
 210:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 211:/usr/include/newlib/c++/6.3.1/cmath ****   cos(long double __x)
 212:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_cosl(__x); }
 213:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 214:/usr/include/newlib/c++/6.3.1/cmath **** 
 215:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
ARM GAS  /tmp/ccQR1hla.s 			page 19


 216:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 217:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 218:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 219:/usr/include/newlib/c++/6.3.1/cmath ****     cos(_Tp __x)
 220:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_cos(__x); }
 221:/usr/include/newlib/c++/6.3.1/cmath **** 
 222:/usr/include/newlib/c++/6.3.1/cmath ****   using ::cosh;
 223:/usr/include/newlib/c++/6.3.1/cmath **** 
 224:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 225:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 226:/usr/include/newlib/c++/6.3.1/cmath ****   cosh(float __x)
 227:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_coshf(__x); }
 228:/usr/include/newlib/c++/6.3.1/cmath **** 
 229:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 230:/usr/include/newlib/c++/6.3.1/cmath ****   cosh(long double __x)
 231:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_coshl(__x); }
 232:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 233:/usr/include/newlib/c++/6.3.1/cmath **** 
 234:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 235:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 236:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 237:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 238:/usr/include/newlib/c++/6.3.1/cmath ****     cosh(_Tp __x)
 239:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_cosh(__x); }
 240:/usr/include/newlib/c++/6.3.1/cmath **** 
 241:/usr/include/newlib/c++/6.3.1/cmath ****   using ::exp;
 242:/usr/include/newlib/c++/6.3.1/cmath **** 
 243:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 244:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 245:/usr/include/newlib/c++/6.3.1/cmath ****   exp(float __x)
 246:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_expf(__x); }
 247:/usr/include/newlib/c++/6.3.1/cmath **** 
 248:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 249:/usr/include/newlib/c++/6.3.1/cmath ****   exp(long double __x)
 250:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_expl(__x); }
 251:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 252:/usr/include/newlib/c++/6.3.1/cmath **** 
 253:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 254:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 255:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 256:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 257:/usr/include/newlib/c++/6.3.1/cmath ****     exp(_Tp __x)
 258:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_exp(__x); }
 259:/usr/include/newlib/c++/6.3.1/cmath **** 
 260:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fabs;
 261:/usr/include/newlib/c++/6.3.1/cmath **** 
 262:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 263:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 264:/usr/include/newlib/c++/6.3.1/cmath ****   fabs(float __x)
 265:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fabsf(__x); }
 266:/usr/include/newlib/c++/6.3.1/cmath **** 
 267:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 268:/usr/include/newlib/c++/6.3.1/cmath ****   fabs(long double __x)
 269:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fabsl(__x); }
 270:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 271:/usr/include/newlib/c++/6.3.1/cmath **** 
 272:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
ARM GAS  /tmp/ccQR1hla.s 			page 20


 273:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 274:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 275:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 276:/usr/include/newlib/c++/6.3.1/cmath ****     fabs(_Tp __x)
 277:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_fabs(__x); }
 278:/usr/include/newlib/c++/6.3.1/cmath **** 
 279:/usr/include/newlib/c++/6.3.1/cmath ****   using ::floor;
 280:/usr/include/newlib/c++/6.3.1/cmath **** 
 281:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 282:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 283:/usr/include/newlib/c++/6.3.1/cmath ****   floor(float __x)
 284:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_floorf(__x); }
 285:/usr/include/newlib/c++/6.3.1/cmath **** 
 286:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 287:/usr/include/newlib/c++/6.3.1/cmath ****   floor(long double __x)
 288:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_floorl(__x); }
 289:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 290:/usr/include/newlib/c++/6.3.1/cmath **** 
 291:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 292:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 293:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 294:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 295:/usr/include/newlib/c++/6.3.1/cmath ****     floor(_Tp __x)
 296:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_floor(__x); }
 297:/usr/include/newlib/c++/6.3.1/cmath **** 
 298:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fmod;
 299:/usr/include/newlib/c++/6.3.1/cmath **** 
 300:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 301:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 302:/usr/include/newlib/c++/6.3.1/cmath ****   fmod(float __x, float __y)
 303:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fmodf(__x, __y); }
 304:/usr/include/newlib/c++/6.3.1/cmath **** 
 305:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 306:/usr/include/newlib/c++/6.3.1/cmath ****   fmod(long double __x, long double __y)
 307:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fmodl(__x, __y); }
 308:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 309:/usr/include/newlib/c++/6.3.1/cmath **** 
 310:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
 311:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 312:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
 313:/usr/include/newlib/c++/6.3.1/cmath ****     fmod(_Tp __x, _Up __y)
 314:/usr/include/newlib/c++/6.3.1/cmath ****     {
 315:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
 316:/usr/include/newlib/c++/6.3.1/cmath ****       return fmod(__type(__x), __type(__y));
 317:/usr/include/newlib/c++/6.3.1/cmath ****     }
 318:/usr/include/newlib/c++/6.3.1/cmath **** 
 319:/usr/include/newlib/c++/6.3.1/cmath ****   using ::frexp;
 320:/usr/include/newlib/c++/6.3.1/cmath **** 
 321:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 322:/usr/include/newlib/c++/6.3.1/cmath ****   inline float
 323:/usr/include/newlib/c++/6.3.1/cmath ****   frexp(float __x, int* __exp)
 324:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_frexpf(__x, __exp); }
 325:/usr/include/newlib/c++/6.3.1/cmath **** 
 326:/usr/include/newlib/c++/6.3.1/cmath ****   inline long double
 327:/usr/include/newlib/c++/6.3.1/cmath ****   frexp(long double __x, int* __exp)
 328:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_frexpl(__x, __exp); }
 329:/usr/include/newlib/c++/6.3.1/cmath **** #endif
ARM GAS  /tmp/ccQR1hla.s 			page 21


 330:/usr/include/newlib/c++/6.3.1/cmath **** 
 331:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 332:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 333:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 334:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 335:/usr/include/newlib/c++/6.3.1/cmath ****     frexp(_Tp __x, int* __exp)
 336:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_frexp(__x, __exp); }
 337:/usr/include/newlib/c++/6.3.1/cmath **** 
 338:/usr/include/newlib/c++/6.3.1/cmath ****   using ::ldexp;
 339:/usr/include/newlib/c++/6.3.1/cmath **** 
 340:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 341:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 342:/usr/include/newlib/c++/6.3.1/cmath ****   ldexp(float __x, int __exp)
 343:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_ldexpf(__x, __exp); }
 344:/usr/include/newlib/c++/6.3.1/cmath **** 
 345:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 346:/usr/include/newlib/c++/6.3.1/cmath ****   ldexp(long double __x, int __exp)
 347:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_ldexpl(__x, __exp); }
 348:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 349:/usr/include/newlib/c++/6.3.1/cmath **** 
 350:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 351:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 352:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 353:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 354:/usr/include/newlib/c++/6.3.1/cmath ****     ldexp(_Tp __x, int __exp)
 355:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_ldexp(__x, __exp); }
 356:/usr/include/newlib/c++/6.3.1/cmath **** 
 357:/usr/include/newlib/c++/6.3.1/cmath ****   using ::log;
 358:/usr/include/newlib/c++/6.3.1/cmath **** 
 359:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 360:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 361:/usr/include/newlib/c++/6.3.1/cmath ****   log(float __x)
 362:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_logf(__x); }
 363:/usr/include/newlib/c++/6.3.1/cmath **** 
 364:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 365:/usr/include/newlib/c++/6.3.1/cmath ****   log(long double __x)
 366:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_logl(__x); }
 367:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 368:/usr/include/newlib/c++/6.3.1/cmath **** 
 369:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 370:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 371:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 372:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 373:/usr/include/newlib/c++/6.3.1/cmath ****     log(_Tp __x)
 374:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_log(__x); }
 375:/usr/include/newlib/c++/6.3.1/cmath **** 
 376:/usr/include/newlib/c++/6.3.1/cmath ****   using ::log10;
 377:/usr/include/newlib/c++/6.3.1/cmath **** 
 378:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 379:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 380:/usr/include/newlib/c++/6.3.1/cmath ****   log10(float __x)
 381:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_log10f(__x); }
 382:/usr/include/newlib/c++/6.3.1/cmath **** 
 383:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 384:/usr/include/newlib/c++/6.3.1/cmath ****   log10(long double __x)
 385:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_log10l(__x); }
 386:/usr/include/newlib/c++/6.3.1/cmath **** #endif
ARM GAS  /tmp/ccQR1hla.s 			page 22


 387:/usr/include/newlib/c++/6.3.1/cmath **** 
 388:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 389:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 390:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 391:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 392:/usr/include/newlib/c++/6.3.1/cmath ****     log10(_Tp __x)
 393:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_log10(__x); }
 394:/usr/include/newlib/c++/6.3.1/cmath **** 
 395:/usr/include/newlib/c++/6.3.1/cmath ****   using ::modf;
 396:/usr/include/newlib/c++/6.3.1/cmath **** 
 397:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 398:/usr/include/newlib/c++/6.3.1/cmath ****   inline float
 399:/usr/include/newlib/c++/6.3.1/cmath ****   modf(float __x, float* __iptr)
 400:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_modff(__x, __iptr); }
 401:/usr/include/newlib/c++/6.3.1/cmath **** 
 402:/usr/include/newlib/c++/6.3.1/cmath ****   inline long double
 403:/usr/include/newlib/c++/6.3.1/cmath ****   modf(long double __x, long double* __iptr)
 404:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_modfl(__x, __iptr); }
 405:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 406:/usr/include/newlib/c++/6.3.1/cmath **** 
 407:/usr/include/newlib/c++/6.3.1/cmath ****   using ::pow;
 408:/usr/include/newlib/c++/6.3.1/cmath **** 
 409:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 410:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 411:/usr/include/newlib/c++/6.3.1/cmath ****   pow(float __x, float __y)
 412:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_powf(__x, __y); }
 413:/usr/include/newlib/c++/6.3.1/cmath **** 
 414:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 415:/usr/include/newlib/c++/6.3.1/cmath ****   pow(long double __x, long double __y)
 416:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_powl(__x, __y); }
 417:/usr/include/newlib/c++/6.3.1/cmath **** 
 418:/usr/include/newlib/c++/6.3.1/cmath **** #if __cplusplus < 201103L
 419:/usr/include/newlib/c++/6.3.1/cmath ****   // _GLIBCXX_RESOLVE_LIB_DEFECTS
 420:/usr/include/newlib/c++/6.3.1/cmath ****   // DR 550. What should the return type of pow(float,int) be?
 421:/usr/include/newlib/c++/6.3.1/cmath ****   inline double
 422:/usr/include/newlib/c++/6.3.1/cmath ****   pow(double __x, int __i)
 423:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_powi(__x, __i); }
 424:/usr/include/newlib/c++/6.3.1/cmath **** 
 425:/usr/include/newlib/c++/6.3.1/cmath ****   inline float
 426:/usr/include/newlib/c++/6.3.1/cmath ****   pow(float __x, int __n)
 427:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_powif(__x, __n); }
 428:/usr/include/newlib/c++/6.3.1/cmath **** 
 429:/usr/include/newlib/c++/6.3.1/cmath ****   inline long double
 430:/usr/include/newlib/c++/6.3.1/cmath ****   pow(long double __x, int __n)
 431:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_powil(__x, __n); }
 432:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 433:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 434:/usr/include/newlib/c++/6.3.1/cmath **** 
 435:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
 436:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 437:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
 438:/usr/include/newlib/c++/6.3.1/cmath ****     pow(_Tp __x, _Up __y)
 439:/usr/include/newlib/c++/6.3.1/cmath ****     {
 440:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
 441:/usr/include/newlib/c++/6.3.1/cmath ****       return pow(__type(__x), __type(__y));
 442:/usr/include/newlib/c++/6.3.1/cmath ****     }
 443:/usr/include/newlib/c++/6.3.1/cmath **** 
ARM GAS  /tmp/ccQR1hla.s 			page 23


 444:/usr/include/newlib/c++/6.3.1/cmath ****   using ::sin;
 445:/usr/include/newlib/c++/6.3.1/cmath **** 
 446:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 447:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 448:/usr/include/newlib/c++/6.3.1/cmath ****   sin(float __x)
 449:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_sinf(__x); }
 450:/usr/include/newlib/c++/6.3.1/cmath **** 
 451:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 452:/usr/include/newlib/c++/6.3.1/cmath ****   sin(long double __x)
 453:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_sinl(__x); }
 454:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 455:/usr/include/newlib/c++/6.3.1/cmath **** 
 456:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 457:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 458:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 459:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 460:/usr/include/newlib/c++/6.3.1/cmath ****     sin(_Tp __x)
 461:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_sin(__x); }
 462:/usr/include/newlib/c++/6.3.1/cmath **** 
 463:/usr/include/newlib/c++/6.3.1/cmath ****   using ::sinh;
 464:/usr/include/newlib/c++/6.3.1/cmath **** 
 465:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 466:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 467:/usr/include/newlib/c++/6.3.1/cmath ****   sinh(float __x)
 468:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_sinhf(__x); }
 469:/usr/include/newlib/c++/6.3.1/cmath **** 
 470:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 471:/usr/include/newlib/c++/6.3.1/cmath ****   sinh(long double __x)
 472:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_sinhl(__x); }
 473:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 474:/usr/include/newlib/c++/6.3.1/cmath **** 
 475:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 476:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 477:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 478:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 479:/usr/include/newlib/c++/6.3.1/cmath ****     sinh(_Tp __x)
 480:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_sinh(__x); }
 481:/usr/include/newlib/c++/6.3.1/cmath **** 
 482:/usr/include/newlib/c++/6.3.1/cmath ****   using ::sqrt;
 483:/usr/include/newlib/c++/6.3.1/cmath **** 
 484:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 485:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 486:/usr/include/newlib/c++/6.3.1/cmath ****   sqrt(float __x)
 487:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_sqrtf(__x); }
 488:/usr/include/newlib/c++/6.3.1/cmath **** 
 489:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 490:/usr/include/newlib/c++/6.3.1/cmath ****   sqrt(long double __x)
 491:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_sqrtl(__x); }
 492:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 493:/usr/include/newlib/c++/6.3.1/cmath **** 
 494:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 495:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 496:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 497:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 498:/usr/include/newlib/c++/6.3.1/cmath ****     sqrt(_Tp __x)
 499:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_sqrt(__x); }
 500:/usr/include/newlib/c++/6.3.1/cmath **** 
ARM GAS  /tmp/ccQR1hla.s 			page 24


 501:/usr/include/newlib/c++/6.3.1/cmath ****   using ::tan;
 502:/usr/include/newlib/c++/6.3.1/cmath **** 
 503:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 504:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 505:/usr/include/newlib/c++/6.3.1/cmath ****   tan(float __x)
 506:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_tanf(__x); }
 507:/usr/include/newlib/c++/6.3.1/cmath **** 
 508:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 509:/usr/include/newlib/c++/6.3.1/cmath ****   tan(long double __x)
 510:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_tanl(__x); }
 511:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 512:/usr/include/newlib/c++/6.3.1/cmath **** 
 513:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 514:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 515:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 516:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 517:/usr/include/newlib/c++/6.3.1/cmath ****     tan(_Tp __x)
 518:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_tan(__x); }
 519:/usr/include/newlib/c++/6.3.1/cmath **** 
 520:/usr/include/newlib/c++/6.3.1/cmath ****   using ::tanh;
 521:/usr/include/newlib/c++/6.3.1/cmath **** 
 522:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 523:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR float
 524:/usr/include/newlib/c++/6.3.1/cmath ****   tanh(float __x)
 525:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_tanhf(__x); }
 526:/usr/include/newlib/c++/6.3.1/cmath **** 
 527:/usr/include/newlib/c++/6.3.1/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 528:/usr/include/newlib/c++/6.3.1/cmath ****   tanh(long double __x)
 529:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_tanhl(__x); }
 530:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 531:/usr/include/newlib/c++/6.3.1/cmath **** 
 532:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 533:/usr/include/newlib/c++/6.3.1/cmath ****     inline _GLIBCXX_CONSTEXPR
 534:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 535:/usr/include/newlib/c++/6.3.1/cmath ****                                     double>::__type
 536:/usr/include/newlib/c++/6.3.1/cmath ****     tanh(_Tp __x)
 537:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_tanh(__x); }
 538:/usr/include/newlib/c++/6.3.1/cmath **** 
 539:/usr/include/newlib/c++/6.3.1/cmath **** _GLIBCXX_END_NAMESPACE_VERSION
 540:/usr/include/newlib/c++/6.3.1/cmath **** } // namespace
 541:/usr/include/newlib/c++/6.3.1/cmath **** 
 542:/usr/include/newlib/c++/6.3.1/cmath **** #if _GLIBCXX_USE_C99_MATH
 543:/usr/include/newlib/c++/6.3.1/cmath **** #if !_GLIBCXX_USE_C99_FP_MACROS_DYNAMIC
 544:/usr/include/newlib/c++/6.3.1/cmath **** 
 545:/usr/include/newlib/c++/6.3.1/cmath **** // These are possible macros imported from C99-land.
 546:/usr/include/newlib/c++/6.3.1/cmath **** #undef fpclassify
 547:/usr/include/newlib/c++/6.3.1/cmath **** #undef isfinite
 548:/usr/include/newlib/c++/6.3.1/cmath **** #undef isinf
 549:/usr/include/newlib/c++/6.3.1/cmath **** #undef isnan
 550:/usr/include/newlib/c++/6.3.1/cmath **** #undef isnormal
 551:/usr/include/newlib/c++/6.3.1/cmath **** #undef signbit
 552:/usr/include/newlib/c++/6.3.1/cmath **** #undef isgreater
 553:/usr/include/newlib/c++/6.3.1/cmath **** #undef isgreaterequal
 554:/usr/include/newlib/c++/6.3.1/cmath **** #undef isless
 555:/usr/include/newlib/c++/6.3.1/cmath **** #undef islessequal
 556:/usr/include/newlib/c++/6.3.1/cmath **** #undef islessgreater
 557:/usr/include/newlib/c++/6.3.1/cmath **** #undef isunordered
ARM GAS  /tmp/ccQR1hla.s 			page 25


 558:/usr/include/newlib/c++/6.3.1/cmath **** 
 559:/usr/include/newlib/c++/6.3.1/cmath **** namespace std _GLIBCXX_VISIBILITY(default)
 560:/usr/include/newlib/c++/6.3.1/cmath **** {
 561:/usr/include/newlib/c++/6.3.1/cmath **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
 562:/usr/include/newlib/c++/6.3.1/cmath **** 
 563:/usr/include/newlib/c++/6.3.1/cmath **** #if __cplusplus >= 201103L
 564:/usr/include/newlib/c++/6.3.1/cmath **** 
 565:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 566:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr int
 567:/usr/include/newlib/c++/6.3.1/cmath ****   fpclassify(float __x)
 568:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fpclassify(FP_NAN, FP_INFINITE, FP_NORMAL,
 569:/usr/include/newlib/c++/6.3.1/cmath **** 				FP_SUBNORMAL, FP_ZERO, __x); }
 570:/usr/include/newlib/c++/6.3.1/cmath **** 
 571:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr int
 572:/usr/include/newlib/c++/6.3.1/cmath ****   fpclassify(double __x)
 573:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fpclassify(FP_NAN, FP_INFINITE, FP_NORMAL,
 574:/usr/include/newlib/c++/6.3.1/cmath **** 				FP_SUBNORMAL, FP_ZERO, __x); }
 575:/usr/include/newlib/c++/6.3.1/cmath **** 
 576:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr int
 577:/usr/include/newlib/c++/6.3.1/cmath ****   fpclassify(long double __x)
 578:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fpclassify(FP_NAN, FP_INFINITE, FP_NORMAL,
 579:/usr/include/newlib/c++/6.3.1/cmath **** 				FP_SUBNORMAL, FP_ZERO, __x); }
 580:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 581:/usr/include/newlib/c++/6.3.1/cmath **** 
 582:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 583:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 584:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 585:/usr/include/newlib/c++/6.3.1/cmath ****                                               int>::__type
 586:/usr/include/newlib/c++/6.3.1/cmath ****     fpclassify(_Tp __x)
 587:/usr/include/newlib/c++/6.3.1/cmath ****     { return __x != 0 ? FP_NORMAL : FP_ZERO; }
 588:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 589:/usr/include/newlib/c++/6.3.1/cmath **** 
 590:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 591:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 592:/usr/include/newlib/c++/6.3.1/cmath ****   isfinite(float __x)
 593:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isfinite(__x); }
 594:/usr/include/newlib/c++/6.3.1/cmath **** 
 595:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 596:/usr/include/newlib/c++/6.3.1/cmath ****   isfinite(double __x)
 597:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isfinite(__x); }
 598:/usr/include/newlib/c++/6.3.1/cmath **** 
 599:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 600:/usr/include/newlib/c++/6.3.1/cmath ****   isfinite(long double __x)
 601:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isfinite(__x); }
 602:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 603:/usr/include/newlib/c++/6.3.1/cmath **** 
 604:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 605:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 606:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 607:/usr/include/newlib/c++/6.3.1/cmath ****                                               bool>::__type
 608:/usr/include/newlib/c++/6.3.1/cmath ****     isfinite(_Tp __x)
 609:/usr/include/newlib/c++/6.3.1/cmath ****     { return true; }
 610:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 611:/usr/include/newlib/c++/6.3.1/cmath **** 
 612:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 613:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 614:/usr/include/newlib/c++/6.3.1/cmath ****   isinf(float __x)
ARM GAS  /tmp/ccQR1hla.s 			page 26


 615:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isinf(__x); }
 616:/usr/include/newlib/c++/6.3.1/cmath **** 
 617:/usr/include/newlib/c++/6.3.1/cmath **** #if _GLIBCXX_HAVE_OBSOLETE_ISINF \
 618:/usr/include/newlib/c++/6.3.1/cmath ****   && !_GLIBCXX_NO_OBSOLETE_ISINF_ISNAN_DYNAMIC
 619:/usr/include/newlib/c++/6.3.1/cmath ****   using ::isinf;
 620:/usr/include/newlib/c++/6.3.1/cmath **** #else
 621:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 622:/usr/include/newlib/c++/6.3.1/cmath ****   isinf(double __x)
 623:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isinf(__x); }
 624:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 625:/usr/include/newlib/c++/6.3.1/cmath **** 
 626:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 627:/usr/include/newlib/c++/6.3.1/cmath ****   isinf(long double __x)
 628:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isinf(__x); }
 629:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 630:/usr/include/newlib/c++/6.3.1/cmath **** 
 631:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 632:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 633:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 634:/usr/include/newlib/c++/6.3.1/cmath ****                                               bool>::__type
 635:/usr/include/newlib/c++/6.3.1/cmath ****     isinf(_Tp __x)
 636:/usr/include/newlib/c++/6.3.1/cmath ****     { return false; }
 637:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 638:/usr/include/newlib/c++/6.3.1/cmath **** 
 639:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 640:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 641:/usr/include/newlib/c++/6.3.1/cmath ****   isnan(float __x)
 642:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isnan(__x); }
 643:/usr/include/newlib/c++/6.3.1/cmath **** 
 644:/usr/include/newlib/c++/6.3.1/cmath **** #if _GLIBCXX_HAVE_OBSOLETE_ISNAN \
 645:/usr/include/newlib/c++/6.3.1/cmath ****   && !_GLIBCXX_NO_OBSOLETE_ISINF_ISNAN_DYNAMIC
 646:/usr/include/newlib/c++/6.3.1/cmath ****   using ::isnan;
 647:/usr/include/newlib/c++/6.3.1/cmath **** #else
 648:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 649:/usr/include/newlib/c++/6.3.1/cmath ****   isnan(double __x)
 650:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isnan(__x); }
 651:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 652:/usr/include/newlib/c++/6.3.1/cmath **** 
 653:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 654:/usr/include/newlib/c++/6.3.1/cmath ****   isnan(long double __x)
 655:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isnan(__x); }
 656:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 657:/usr/include/newlib/c++/6.3.1/cmath **** 
 658:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 659:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 660:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 661:/usr/include/newlib/c++/6.3.1/cmath ****                                               bool>::__type
 662:/usr/include/newlib/c++/6.3.1/cmath ****     isnan(_Tp __x)
 663:/usr/include/newlib/c++/6.3.1/cmath ****     { return false; }
 664:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 665:/usr/include/newlib/c++/6.3.1/cmath **** 
 666:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 667:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 668:/usr/include/newlib/c++/6.3.1/cmath ****   isnormal(float __x)
 669:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isnormal(__x); }
 670:/usr/include/newlib/c++/6.3.1/cmath **** 
 671:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
ARM GAS  /tmp/ccQR1hla.s 			page 27


 672:/usr/include/newlib/c++/6.3.1/cmath ****   isnormal(double __x)
 673:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isnormal(__x); }
 674:/usr/include/newlib/c++/6.3.1/cmath **** 
 675:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 676:/usr/include/newlib/c++/6.3.1/cmath ****   isnormal(long double __x)
 677:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isnormal(__x); }
 678:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 679:/usr/include/newlib/c++/6.3.1/cmath **** 
 680:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 681:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 682:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 683:/usr/include/newlib/c++/6.3.1/cmath ****                                               bool>::__type
 684:/usr/include/newlib/c++/6.3.1/cmath ****     isnormal(_Tp __x)
 685:/usr/include/newlib/c++/6.3.1/cmath ****     { return __x != 0 ? true : false; }
 686:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 687:/usr/include/newlib/c++/6.3.1/cmath **** 
 688:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 689:/usr/include/newlib/c++/6.3.1/cmath ****   // Note: middle-end/36757 is fixed, __builtin_signbit is type-generic.
 690:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 691:/usr/include/newlib/c++/6.3.1/cmath ****   signbit(float __x)
 692:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_signbit(__x); }
 693:/usr/include/newlib/c++/6.3.1/cmath **** 
 694:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 695:/usr/include/newlib/c++/6.3.1/cmath ****   signbit(double __x)
 696:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_signbit(__x); }
 697:/usr/include/newlib/c++/6.3.1/cmath **** 
 698:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 699:/usr/include/newlib/c++/6.3.1/cmath ****   signbit(long double __x)
 700:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_signbit(__x); }
 701:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 702:/usr/include/newlib/c++/6.3.1/cmath **** 
 703:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 704:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 705:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 706:/usr/include/newlib/c++/6.3.1/cmath ****                                               bool>::__type
 707:/usr/include/newlib/c++/6.3.1/cmath ****     signbit(_Tp __x)
 708:/usr/include/newlib/c++/6.3.1/cmath ****     { return __x < 0 ? true : false; }
 709:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 710:/usr/include/newlib/c++/6.3.1/cmath **** 
 711:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 712:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 713:/usr/include/newlib/c++/6.3.1/cmath ****   isgreater(float __x, float __y)
 714:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isgreater(__x, __y); }
 715:/usr/include/newlib/c++/6.3.1/cmath **** 
 716:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 717:/usr/include/newlib/c++/6.3.1/cmath ****   isgreater(double __x, double __y)
 718:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isgreater(__x, __y); }
 719:/usr/include/newlib/c++/6.3.1/cmath **** 
 720:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 721:/usr/include/newlib/c++/6.3.1/cmath ****   isgreater(long double __x, long double __y)
 722:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isgreater(__x, __y); }
 723:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 724:/usr/include/newlib/c++/6.3.1/cmath **** 
 725:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 726:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
 727:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename
 728:/usr/include/newlib/c++/6.3.1/cmath ****     __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
ARM GAS  /tmp/ccQR1hla.s 			page 28


 729:/usr/include/newlib/c++/6.3.1/cmath **** 			    && __is_arithmetic<_Up>::__value), bool>::__type
 730:/usr/include/newlib/c++/6.3.1/cmath ****     isgreater(_Tp __x, _Up __y)
 731:/usr/include/newlib/c++/6.3.1/cmath ****     {
 732:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
 733:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isgreater(__type(__x), __type(__y));
 734:/usr/include/newlib/c++/6.3.1/cmath ****     }
 735:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 736:/usr/include/newlib/c++/6.3.1/cmath **** 
 737:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 738:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 739:/usr/include/newlib/c++/6.3.1/cmath ****   isgreaterequal(float __x, float __y)
 740:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isgreaterequal(__x, __y); }
 741:/usr/include/newlib/c++/6.3.1/cmath **** 
 742:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 743:/usr/include/newlib/c++/6.3.1/cmath ****   isgreaterequal(double __x, double __y)
 744:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isgreaterequal(__x, __y); }
 745:/usr/include/newlib/c++/6.3.1/cmath **** 
 746:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 747:/usr/include/newlib/c++/6.3.1/cmath ****   isgreaterequal(long double __x, long double __y)
 748:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isgreaterequal(__x, __y); }
 749:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 750:/usr/include/newlib/c++/6.3.1/cmath **** 
 751:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 752:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
 753:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename
 754:/usr/include/newlib/c++/6.3.1/cmath ****     __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
 755:/usr/include/newlib/c++/6.3.1/cmath **** 			    && __is_arithmetic<_Up>::__value), bool>::__type
 756:/usr/include/newlib/c++/6.3.1/cmath ****     isgreaterequal(_Tp __x, _Up __y)
 757:/usr/include/newlib/c++/6.3.1/cmath ****     {
 758:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
 759:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isgreaterequal(__type(__x), __type(__y));
 760:/usr/include/newlib/c++/6.3.1/cmath ****     }
 761:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 762:/usr/include/newlib/c++/6.3.1/cmath **** 
 763:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 764:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 765:/usr/include/newlib/c++/6.3.1/cmath ****   isless(float __x, float __y)
 766:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isless(__x, __y); }
 767:/usr/include/newlib/c++/6.3.1/cmath **** 
 768:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 769:/usr/include/newlib/c++/6.3.1/cmath ****   isless(double __x, double __y)
 770:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isless(__x, __y); }
 771:/usr/include/newlib/c++/6.3.1/cmath **** 
 772:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 773:/usr/include/newlib/c++/6.3.1/cmath ****   isless(long double __x, long double __y)
 774:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isless(__x, __y); }
 775:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 776:/usr/include/newlib/c++/6.3.1/cmath **** 
 777:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 778:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
 779:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename
 780:/usr/include/newlib/c++/6.3.1/cmath ****     __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
 781:/usr/include/newlib/c++/6.3.1/cmath **** 			    && __is_arithmetic<_Up>::__value), bool>::__type
 782:/usr/include/newlib/c++/6.3.1/cmath ****     isless(_Tp __x, _Up __y)
 783:/usr/include/newlib/c++/6.3.1/cmath ****     {
 784:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
 785:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isless(__type(__x), __type(__y));
ARM GAS  /tmp/ccQR1hla.s 			page 29


 786:/usr/include/newlib/c++/6.3.1/cmath ****     }
 787:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 788:/usr/include/newlib/c++/6.3.1/cmath **** 
 789:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 790:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 791:/usr/include/newlib/c++/6.3.1/cmath ****   islessequal(float __x, float __y)
 792:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_islessequal(__x, __y); }
 793:/usr/include/newlib/c++/6.3.1/cmath **** 
 794:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 795:/usr/include/newlib/c++/6.3.1/cmath ****   islessequal(double __x, double __y)
 796:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_islessequal(__x, __y); }
 797:/usr/include/newlib/c++/6.3.1/cmath **** 
 798:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 799:/usr/include/newlib/c++/6.3.1/cmath ****   islessequal(long double __x, long double __y)
 800:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_islessequal(__x, __y); }
 801:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 802:/usr/include/newlib/c++/6.3.1/cmath **** 
 803:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 804:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
 805:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename
 806:/usr/include/newlib/c++/6.3.1/cmath ****     __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
 807:/usr/include/newlib/c++/6.3.1/cmath **** 			    && __is_arithmetic<_Up>::__value), bool>::__type
 808:/usr/include/newlib/c++/6.3.1/cmath ****     islessequal(_Tp __x, _Up __y)
 809:/usr/include/newlib/c++/6.3.1/cmath ****     {
 810:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
 811:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_islessequal(__type(__x), __type(__y));
 812:/usr/include/newlib/c++/6.3.1/cmath ****     }
 813:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 814:/usr/include/newlib/c++/6.3.1/cmath **** 
 815:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 816:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 817:/usr/include/newlib/c++/6.3.1/cmath ****   islessgreater(float __x, float __y)
 818:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_islessgreater(__x, __y); }
 819:/usr/include/newlib/c++/6.3.1/cmath **** 
 820:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 821:/usr/include/newlib/c++/6.3.1/cmath ****   islessgreater(double __x, double __y)
 822:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_islessgreater(__x, __y); }
 823:/usr/include/newlib/c++/6.3.1/cmath **** 
 824:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 825:/usr/include/newlib/c++/6.3.1/cmath ****   islessgreater(long double __x, long double __y)
 826:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_islessgreater(__x, __y); }
 827:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 828:/usr/include/newlib/c++/6.3.1/cmath **** 
 829:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 830:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
 831:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename
 832:/usr/include/newlib/c++/6.3.1/cmath ****     __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
 833:/usr/include/newlib/c++/6.3.1/cmath **** 			    && __is_arithmetic<_Up>::__value), bool>::__type
 834:/usr/include/newlib/c++/6.3.1/cmath ****     islessgreater(_Tp __x, _Up __y)
 835:/usr/include/newlib/c++/6.3.1/cmath ****     {
 836:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
 837:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_islessgreater(__type(__x), __type(__y));
 838:/usr/include/newlib/c++/6.3.1/cmath ****     }
 839:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 840:/usr/include/newlib/c++/6.3.1/cmath **** 
 841:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
 842:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
ARM GAS  /tmp/ccQR1hla.s 			page 30


 843:/usr/include/newlib/c++/6.3.1/cmath ****   isunordered(float __x, float __y)
 844:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isunordered(__x, __y); }
 845:/usr/include/newlib/c++/6.3.1/cmath **** 
 846:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 847:/usr/include/newlib/c++/6.3.1/cmath ****   isunordered(double __x, double __y)
 848:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isunordered(__x, __y); }
 849:/usr/include/newlib/c++/6.3.1/cmath **** 
 850:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr bool
 851:/usr/include/newlib/c++/6.3.1/cmath ****   isunordered(long double __x, long double __y)
 852:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_isunordered(__x, __y); }
 853:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 854:/usr/include/newlib/c++/6.3.1/cmath **** 
 855:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
 856:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
 857:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename
 858:/usr/include/newlib/c++/6.3.1/cmath ****     __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
 859:/usr/include/newlib/c++/6.3.1/cmath **** 			    && __is_arithmetic<_Up>::__value), bool>::__type
 860:/usr/include/newlib/c++/6.3.1/cmath ****     isunordered(_Tp __x, _Up __y)
 861:/usr/include/newlib/c++/6.3.1/cmath ****     {
 862:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
 863:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isunordered(__type(__x), __type(__y));
 864:/usr/include/newlib/c++/6.3.1/cmath ****     }
 865:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 866:/usr/include/newlib/c++/6.3.1/cmath **** 
 867:/usr/include/newlib/c++/6.3.1/cmath **** #else
 868:/usr/include/newlib/c++/6.3.1/cmath **** 
 869:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 870:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 871:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 872:/usr/include/newlib/c++/6.3.1/cmath ****     fpclassify(_Tp __f)
 873:/usr/include/newlib/c++/6.3.1/cmath ****     {
 874:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 875:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_fpclassify(FP_NAN, FP_INFINITE, FP_NORMAL,
 876:/usr/include/newlib/c++/6.3.1/cmath **** 				  FP_SUBNORMAL, FP_ZERO, __type(__f));
 877:/usr/include/newlib/c++/6.3.1/cmath ****     }
 878:/usr/include/newlib/c++/6.3.1/cmath **** 
 879:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 880:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 881:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 882:/usr/include/newlib/c++/6.3.1/cmath ****     isfinite(_Tp __f)
 883:/usr/include/newlib/c++/6.3.1/cmath ****     {
 884:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 885:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isfinite(__type(__f));
 886:/usr/include/newlib/c++/6.3.1/cmath ****     }
 887:/usr/include/newlib/c++/6.3.1/cmath **** 
 888:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 889:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 890:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 891:/usr/include/newlib/c++/6.3.1/cmath ****     isinf(_Tp __f)
 892:/usr/include/newlib/c++/6.3.1/cmath ****     {
 893:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 894:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isinf(__type(__f));
 895:/usr/include/newlib/c++/6.3.1/cmath ****     }
 896:/usr/include/newlib/c++/6.3.1/cmath **** 
 897:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 898:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 899:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
ARM GAS  /tmp/ccQR1hla.s 			page 31


 900:/usr/include/newlib/c++/6.3.1/cmath ****     isnan(_Tp __f)
 901:/usr/include/newlib/c++/6.3.1/cmath ****     {
 902:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 903:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isnan(__type(__f));
 904:/usr/include/newlib/c++/6.3.1/cmath ****     }
 905:/usr/include/newlib/c++/6.3.1/cmath **** 
 906:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 907:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 908:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 909:/usr/include/newlib/c++/6.3.1/cmath ****     isnormal(_Tp __f)
 910:/usr/include/newlib/c++/6.3.1/cmath ****     {
 911:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 912:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isnormal(__type(__f));
 913:/usr/include/newlib/c++/6.3.1/cmath ****     }
 914:/usr/include/newlib/c++/6.3.1/cmath **** 
 915:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 916:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 917:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 918:/usr/include/newlib/c++/6.3.1/cmath ****     signbit(_Tp __f)
 919:/usr/include/newlib/c++/6.3.1/cmath ****     {
 920:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 921:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_signbit(__type(__f));
 922:/usr/include/newlib/c++/6.3.1/cmath ****     }
 923:/usr/include/newlib/c++/6.3.1/cmath **** 
 924:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 925:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 926:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 927:/usr/include/newlib/c++/6.3.1/cmath ****     isgreater(_Tp __f1, _Tp __f2)
 928:/usr/include/newlib/c++/6.3.1/cmath ****     {
 929:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 930:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isgreater(__type(__f1), __type(__f2));
 931:/usr/include/newlib/c++/6.3.1/cmath ****     }
 932:/usr/include/newlib/c++/6.3.1/cmath **** 
 933:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 934:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 935:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 936:/usr/include/newlib/c++/6.3.1/cmath ****     isgreaterequal(_Tp __f1, _Tp __f2)
 937:/usr/include/newlib/c++/6.3.1/cmath ****     {
 938:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 939:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isgreaterequal(__type(__f1), __type(__f2));
 940:/usr/include/newlib/c++/6.3.1/cmath ****     }
 941:/usr/include/newlib/c++/6.3.1/cmath **** 
 942:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 943:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 944:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 945:/usr/include/newlib/c++/6.3.1/cmath ****     isless(_Tp __f1, _Tp __f2)
 946:/usr/include/newlib/c++/6.3.1/cmath ****     {
 947:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 948:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isless(__type(__f1), __type(__f2));
 949:/usr/include/newlib/c++/6.3.1/cmath ****     }
 950:/usr/include/newlib/c++/6.3.1/cmath **** 
 951:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 952:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 953:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 954:/usr/include/newlib/c++/6.3.1/cmath ****     islessequal(_Tp __f1, _Tp __f2)
 955:/usr/include/newlib/c++/6.3.1/cmath ****     {
 956:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
ARM GAS  /tmp/ccQR1hla.s 			page 32


 957:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_islessequal(__type(__f1), __type(__f2));
 958:/usr/include/newlib/c++/6.3.1/cmath ****     }
 959:/usr/include/newlib/c++/6.3.1/cmath **** 
 960:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 961:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 962:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 963:/usr/include/newlib/c++/6.3.1/cmath ****     islessgreater(_Tp __f1, _Tp __f2)
 964:/usr/include/newlib/c++/6.3.1/cmath ****     {
 965:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 966:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_islessgreater(__type(__f1), __type(__f2));
 967:/usr/include/newlib/c++/6.3.1/cmath ****     }
 968:/usr/include/newlib/c++/6.3.1/cmath **** 
 969:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
 970:/usr/include/newlib/c++/6.3.1/cmath ****     inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
 971:/usr/include/newlib/c++/6.3.1/cmath **** 					   int>::__type
 972:/usr/include/newlib/c++/6.3.1/cmath ****     isunordered(_Tp __f1, _Tp __f2)
 973:/usr/include/newlib/c++/6.3.1/cmath ****     {
 974:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
 975:/usr/include/newlib/c++/6.3.1/cmath ****       return __builtin_isunordered(__type(__f1), __type(__f2));
 976:/usr/include/newlib/c++/6.3.1/cmath ****     }
 977:/usr/include/newlib/c++/6.3.1/cmath **** 
 978:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 979:/usr/include/newlib/c++/6.3.1/cmath **** 
 980:/usr/include/newlib/c++/6.3.1/cmath **** _GLIBCXX_END_NAMESPACE_VERSION
 981:/usr/include/newlib/c++/6.3.1/cmath **** } // namespace
 982:/usr/include/newlib/c++/6.3.1/cmath **** 
 983:/usr/include/newlib/c++/6.3.1/cmath **** #endif /* _GLIBCXX_USE_C99_FP_MACROS_DYNAMIC */
 984:/usr/include/newlib/c++/6.3.1/cmath **** #endif
 985:/usr/include/newlib/c++/6.3.1/cmath **** 
 986:/usr/include/newlib/c++/6.3.1/cmath **** #if __cplusplus >= 201103L
 987:/usr/include/newlib/c++/6.3.1/cmath **** 
 988:/usr/include/newlib/c++/6.3.1/cmath **** #ifdef _GLIBCXX_USE_C99_MATH_TR1
 989:/usr/include/newlib/c++/6.3.1/cmath **** 
 990:/usr/include/newlib/c++/6.3.1/cmath **** #undef acosh
 991:/usr/include/newlib/c++/6.3.1/cmath **** #undef acoshf
 992:/usr/include/newlib/c++/6.3.1/cmath **** #undef acoshl
 993:/usr/include/newlib/c++/6.3.1/cmath **** #undef asinh
 994:/usr/include/newlib/c++/6.3.1/cmath **** #undef asinhf
 995:/usr/include/newlib/c++/6.3.1/cmath **** #undef asinhl
 996:/usr/include/newlib/c++/6.3.1/cmath **** #undef atanh
 997:/usr/include/newlib/c++/6.3.1/cmath **** #undef atanhf
 998:/usr/include/newlib/c++/6.3.1/cmath **** #undef atanhl
 999:/usr/include/newlib/c++/6.3.1/cmath **** #undef cbrt
1000:/usr/include/newlib/c++/6.3.1/cmath **** #undef cbrtf
1001:/usr/include/newlib/c++/6.3.1/cmath **** #undef cbrtl
1002:/usr/include/newlib/c++/6.3.1/cmath **** #undef copysign
1003:/usr/include/newlib/c++/6.3.1/cmath **** #undef copysignf
1004:/usr/include/newlib/c++/6.3.1/cmath **** #undef copysignl
1005:/usr/include/newlib/c++/6.3.1/cmath **** #undef erf
1006:/usr/include/newlib/c++/6.3.1/cmath **** #undef erff
1007:/usr/include/newlib/c++/6.3.1/cmath **** #undef erfl
1008:/usr/include/newlib/c++/6.3.1/cmath **** #undef erfc
1009:/usr/include/newlib/c++/6.3.1/cmath **** #undef erfcf
1010:/usr/include/newlib/c++/6.3.1/cmath **** #undef erfcl
1011:/usr/include/newlib/c++/6.3.1/cmath **** #undef exp2
1012:/usr/include/newlib/c++/6.3.1/cmath **** #undef exp2f
1013:/usr/include/newlib/c++/6.3.1/cmath **** #undef exp2l
ARM GAS  /tmp/ccQR1hla.s 			page 33


1014:/usr/include/newlib/c++/6.3.1/cmath **** #undef expm1
1015:/usr/include/newlib/c++/6.3.1/cmath **** #undef expm1f
1016:/usr/include/newlib/c++/6.3.1/cmath **** #undef expm1l
1017:/usr/include/newlib/c++/6.3.1/cmath **** #undef fdim
1018:/usr/include/newlib/c++/6.3.1/cmath **** #undef fdimf
1019:/usr/include/newlib/c++/6.3.1/cmath **** #undef fdiml
1020:/usr/include/newlib/c++/6.3.1/cmath **** #undef fma
1021:/usr/include/newlib/c++/6.3.1/cmath **** #undef fmaf
1022:/usr/include/newlib/c++/6.3.1/cmath **** #undef fmal
1023:/usr/include/newlib/c++/6.3.1/cmath **** #undef fmax
1024:/usr/include/newlib/c++/6.3.1/cmath **** #undef fmaxf
1025:/usr/include/newlib/c++/6.3.1/cmath **** #undef fmaxl
1026:/usr/include/newlib/c++/6.3.1/cmath **** #undef fmin
1027:/usr/include/newlib/c++/6.3.1/cmath **** #undef fminf
1028:/usr/include/newlib/c++/6.3.1/cmath **** #undef fminl
1029:/usr/include/newlib/c++/6.3.1/cmath **** #undef hypot
1030:/usr/include/newlib/c++/6.3.1/cmath **** #undef hypotf
1031:/usr/include/newlib/c++/6.3.1/cmath **** #undef hypotl
1032:/usr/include/newlib/c++/6.3.1/cmath **** #undef ilogb
1033:/usr/include/newlib/c++/6.3.1/cmath **** #undef ilogbf
1034:/usr/include/newlib/c++/6.3.1/cmath **** #undef ilogbl
1035:/usr/include/newlib/c++/6.3.1/cmath **** #undef lgamma
1036:/usr/include/newlib/c++/6.3.1/cmath **** #undef lgammaf
1037:/usr/include/newlib/c++/6.3.1/cmath **** #undef lgammal
1038:/usr/include/newlib/c++/6.3.1/cmath **** #undef llrint
1039:/usr/include/newlib/c++/6.3.1/cmath **** #undef llrintf
1040:/usr/include/newlib/c++/6.3.1/cmath **** #undef llrintl
1041:/usr/include/newlib/c++/6.3.1/cmath **** #undef llround
1042:/usr/include/newlib/c++/6.3.1/cmath **** #undef llroundf
1043:/usr/include/newlib/c++/6.3.1/cmath **** #undef llroundl
1044:/usr/include/newlib/c++/6.3.1/cmath **** #undef log1p
1045:/usr/include/newlib/c++/6.3.1/cmath **** #undef log1pf
1046:/usr/include/newlib/c++/6.3.1/cmath **** #undef log1pl
1047:/usr/include/newlib/c++/6.3.1/cmath **** #undef log2
1048:/usr/include/newlib/c++/6.3.1/cmath **** #undef log2f
1049:/usr/include/newlib/c++/6.3.1/cmath **** #undef log2l
1050:/usr/include/newlib/c++/6.3.1/cmath **** #undef logb
1051:/usr/include/newlib/c++/6.3.1/cmath **** #undef logbf
1052:/usr/include/newlib/c++/6.3.1/cmath **** #undef logbl
1053:/usr/include/newlib/c++/6.3.1/cmath **** #undef lrint
1054:/usr/include/newlib/c++/6.3.1/cmath **** #undef lrintf
1055:/usr/include/newlib/c++/6.3.1/cmath **** #undef lrintl
1056:/usr/include/newlib/c++/6.3.1/cmath **** #undef lround
1057:/usr/include/newlib/c++/6.3.1/cmath **** #undef lroundf
1058:/usr/include/newlib/c++/6.3.1/cmath **** #undef lroundl
1059:/usr/include/newlib/c++/6.3.1/cmath **** #undef nan
1060:/usr/include/newlib/c++/6.3.1/cmath **** #undef nanf
1061:/usr/include/newlib/c++/6.3.1/cmath **** #undef nanl
1062:/usr/include/newlib/c++/6.3.1/cmath **** #undef nearbyint
1063:/usr/include/newlib/c++/6.3.1/cmath **** #undef nearbyintf
1064:/usr/include/newlib/c++/6.3.1/cmath **** #undef nearbyintl
1065:/usr/include/newlib/c++/6.3.1/cmath **** #undef nextafter
1066:/usr/include/newlib/c++/6.3.1/cmath **** #undef nextafterf
1067:/usr/include/newlib/c++/6.3.1/cmath **** #undef nextafterl
1068:/usr/include/newlib/c++/6.3.1/cmath **** #undef nexttoward
1069:/usr/include/newlib/c++/6.3.1/cmath **** #undef nexttowardf
1070:/usr/include/newlib/c++/6.3.1/cmath **** #undef nexttowardl
ARM GAS  /tmp/ccQR1hla.s 			page 34


1071:/usr/include/newlib/c++/6.3.1/cmath **** #undef remainder
1072:/usr/include/newlib/c++/6.3.1/cmath **** #undef remainderf
1073:/usr/include/newlib/c++/6.3.1/cmath **** #undef remainderl
1074:/usr/include/newlib/c++/6.3.1/cmath **** #undef remquo
1075:/usr/include/newlib/c++/6.3.1/cmath **** #undef remquof
1076:/usr/include/newlib/c++/6.3.1/cmath **** #undef remquol
1077:/usr/include/newlib/c++/6.3.1/cmath **** #undef rint
1078:/usr/include/newlib/c++/6.3.1/cmath **** #undef rintf
1079:/usr/include/newlib/c++/6.3.1/cmath **** #undef rintl
1080:/usr/include/newlib/c++/6.3.1/cmath **** #undef round
1081:/usr/include/newlib/c++/6.3.1/cmath **** #undef roundf
1082:/usr/include/newlib/c++/6.3.1/cmath **** #undef roundl
1083:/usr/include/newlib/c++/6.3.1/cmath **** #undef scalbln
1084:/usr/include/newlib/c++/6.3.1/cmath **** #undef scalblnf
1085:/usr/include/newlib/c++/6.3.1/cmath **** #undef scalblnl
1086:/usr/include/newlib/c++/6.3.1/cmath **** #undef scalbn
1087:/usr/include/newlib/c++/6.3.1/cmath **** #undef scalbnf
1088:/usr/include/newlib/c++/6.3.1/cmath **** #undef scalbnl
1089:/usr/include/newlib/c++/6.3.1/cmath **** #undef tgamma
1090:/usr/include/newlib/c++/6.3.1/cmath **** #undef tgammaf
1091:/usr/include/newlib/c++/6.3.1/cmath **** #undef tgammal
1092:/usr/include/newlib/c++/6.3.1/cmath **** #undef trunc
1093:/usr/include/newlib/c++/6.3.1/cmath **** #undef truncf
1094:/usr/include/newlib/c++/6.3.1/cmath **** #undef truncl
1095:/usr/include/newlib/c++/6.3.1/cmath **** 
1096:/usr/include/newlib/c++/6.3.1/cmath **** namespace std _GLIBCXX_VISIBILITY(default)
1097:/usr/include/newlib/c++/6.3.1/cmath **** {
1098:/usr/include/newlib/c++/6.3.1/cmath **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
1099:/usr/include/newlib/c++/6.3.1/cmath **** 
1100:/usr/include/newlib/c++/6.3.1/cmath ****   // types
1101:/usr/include/newlib/c++/6.3.1/cmath ****   using ::double_t;
1102:/usr/include/newlib/c++/6.3.1/cmath ****   using ::float_t;
1103:/usr/include/newlib/c++/6.3.1/cmath **** 
1104:/usr/include/newlib/c++/6.3.1/cmath ****   // functions
1105:/usr/include/newlib/c++/6.3.1/cmath ****   using ::acosh;
1106:/usr/include/newlib/c++/6.3.1/cmath ****   using ::acoshf;
1107:/usr/include/newlib/c++/6.3.1/cmath ****   using ::acoshl;
1108:/usr/include/newlib/c++/6.3.1/cmath **** 
1109:/usr/include/newlib/c++/6.3.1/cmath ****   using ::asinh;
1110:/usr/include/newlib/c++/6.3.1/cmath ****   using ::asinhf;
1111:/usr/include/newlib/c++/6.3.1/cmath ****   using ::asinhl;
1112:/usr/include/newlib/c++/6.3.1/cmath **** 
1113:/usr/include/newlib/c++/6.3.1/cmath ****   using ::atanh;
1114:/usr/include/newlib/c++/6.3.1/cmath ****   using ::atanhf;
1115:/usr/include/newlib/c++/6.3.1/cmath ****   using ::atanhl;
1116:/usr/include/newlib/c++/6.3.1/cmath **** 
1117:/usr/include/newlib/c++/6.3.1/cmath ****   using ::cbrt;
1118:/usr/include/newlib/c++/6.3.1/cmath ****   using ::cbrtf;
1119:/usr/include/newlib/c++/6.3.1/cmath ****   using ::cbrtl;
1120:/usr/include/newlib/c++/6.3.1/cmath **** 
1121:/usr/include/newlib/c++/6.3.1/cmath ****   using ::copysign;
1122:/usr/include/newlib/c++/6.3.1/cmath ****   using ::copysignf;
1123:/usr/include/newlib/c++/6.3.1/cmath ****   using ::copysignl;
1124:/usr/include/newlib/c++/6.3.1/cmath **** 
1125:/usr/include/newlib/c++/6.3.1/cmath ****   using ::erf;
1126:/usr/include/newlib/c++/6.3.1/cmath ****   using ::erff;
1127:/usr/include/newlib/c++/6.3.1/cmath ****   using ::erfl;
ARM GAS  /tmp/ccQR1hla.s 			page 35


1128:/usr/include/newlib/c++/6.3.1/cmath **** 
1129:/usr/include/newlib/c++/6.3.1/cmath ****   using ::erfc;
1130:/usr/include/newlib/c++/6.3.1/cmath ****   using ::erfcf;
1131:/usr/include/newlib/c++/6.3.1/cmath ****   using ::erfcl;
1132:/usr/include/newlib/c++/6.3.1/cmath **** 
1133:/usr/include/newlib/c++/6.3.1/cmath ****   using ::exp2;
1134:/usr/include/newlib/c++/6.3.1/cmath ****   using ::exp2f;
1135:/usr/include/newlib/c++/6.3.1/cmath ****   using ::exp2l;
1136:/usr/include/newlib/c++/6.3.1/cmath **** 
1137:/usr/include/newlib/c++/6.3.1/cmath ****   using ::expm1;
1138:/usr/include/newlib/c++/6.3.1/cmath ****   using ::expm1f;
1139:/usr/include/newlib/c++/6.3.1/cmath ****   using ::expm1l;
1140:/usr/include/newlib/c++/6.3.1/cmath **** 
1141:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fdim;
1142:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fdimf;
1143:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fdiml;
1144:/usr/include/newlib/c++/6.3.1/cmath **** 
1145:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fma;
1146:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fmaf;
1147:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fmal;
1148:/usr/include/newlib/c++/6.3.1/cmath **** 
1149:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fmax;
1150:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fmaxf;
1151:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fmaxl;
1152:/usr/include/newlib/c++/6.3.1/cmath **** 
1153:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fmin;
1154:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fminf;
1155:/usr/include/newlib/c++/6.3.1/cmath ****   using ::fminl;
1156:/usr/include/newlib/c++/6.3.1/cmath **** 
1157:/usr/include/newlib/c++/6.3.1/cmath ****   using ::hypot;
1158:/usr/include/newlib/c++/6.3.1/cmath ****   using ::hypotf;
1159:/usr/include/newlib/c++/6.3.1/cmath ****   using ::hypotl;
1160:/usr/include/newlib/c++/6.3.1/cmath **** 
1161:/usr/include/newlib/c++/6.3.1/cmath ****   using ::ilogb;
1162:/usr/include/newlib/c++/6.3.1/cmath ****   using ::ilogbf;
1163:/usr/include/newlib/c++/6.3.1/cmath ****   using ::ilogbl;
1164:/usr/include/newlib/c++/6.3.1/cmath **** 
1165:/usr/include/newlib/c++/6.3.1/cmath ****   using ::lgamma;
1166:/usr/include/newlib/c++/6.3.1/cmath ****   using ::lgammaf;
1167:/usr/include/newlib/c++/6.3.1/cmath ****   using ::lgammal;
1168:/usr/include/newlib/c++/6.3.1/cmath **** 
1169:/usr/include/newlib/c++/6.3.1/cmath ****   using ::llrint;
1170:/usr/include/newlib/c++/6.3.1/cmath ****   using ::llrintf;
1171:/usr/include/newlib/c++/6.3.1/cmath ****   using ::llrintl;
1172:/usr/include/newlib/c++/6.3.1/cmath **** 
1173:/usr/include/newlib/c++/6.3.1/cmath ****   using ::llround;
1174:/usr/include/newlib/c++/6.3.1/cmath ****   using ::llroundf;
1175:/usr/include/newlib/c++/6.3.1/cmath ****   using ::llroundl;
1176:/usr/include/newlib/c++/6.3.1/cmath **** 
1177:/usr/include/newlib/c++/6.3.1/cmath ****   using ::log1p;
1178:/usr/include/newlib/c++/6.3.1/cmath ****   using ::log1pf;
1179:/usr/include/newlib/c++/6.3.1/cmath ****   using ::log1pl;
1180:/usr/include/newlib/c++/6.3.1/cmath **** 
1181:/usr/include/newlib/c++/6.3.1/cmath ****   using ::log2;
1182:/usr/include/newlib/c++/6.3.1/cmath ****   using ::log2f;
1183:/usr/include/newlib/c++/6.3.1/cmath ****   using ::log2l;
1184:/usr/include/newlib/c++/6.3.1/cmath **** 
ARM GAS  /tmp/ccQR1hla.s 			page 36


1185:/usr/include/newlib/c++/6.3.1/cmath ****   using ::logb;
1186:/usr/include/newlib/c++/6.3.1/cmath ****   using ::logbf;
1187:/usr/include/newlib/c++/6.3.1/cmath ****   using ::logbl;
1188:/usr/include/newlib/c++/6.3.1/cmath **** 
1189:/usr/include/newlib/c++/6.3.1/cmath ****   using ::lrint;
1190:/usr/include/newlib/c++/6.3.1/cmath ****   using ::lrintf;
1191:/usr/include/newlib/c++/6.3.1/cmath ****   using ::lrintl;
1192:/usr/include/newlib/c++/6.3.1/cmath **** 
1193:/usr/include/newlib/c++/6.3.1/cmath ****   using ::lround;
1194:/usr/include/newlib/c++/6.3.1/cmath ****   using ::lroundf;
1195:/usr/include/newlib/c++/6.3.1/cmath ****   using ::lroundl;
1196:/usr/include/newlib/c++/6.3.1/cmath **** 
1197:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nan;
1198:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nanf;
1199:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nanl;
1200:/usr/include/newlib/c++/6.3.1/cmath **** 
1201:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nearbyint;
1202:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nearbyintf;
1203:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nearbyintl;
1204:/usr/include/newlib/c++/6.3.1/cmath **** 
1205:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nextafter;
1206:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nextafterf;
1207:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nextafterl;
1208:/usr/include/newlib/c++/6.3.1/cmath **** 
1209:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nexttoward;
1210:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nexttowardf;
1211:/usr/include/newlib/c++/6.3.1/cmath ****   using ::nexttowardl;
1212:/usr/include/newlib/c++/6.3.1/cmath **** 
1213:/usr/include/newlib/c++/6.3.1/cmath ****   using ::remainder;
1214:/usr/include/newlib/c++/6.3.1/cmath ****   using ::remainderf;
1215:/usr/include/newlib/c++/6.3.1/cmath ****   using ::remainderl;
1216:/usr/include/newlib/c++/6.3.1/cmath **** 
1217:/usr/include/newlib/c++/6.3.1/cmath ****   using ::remquo;
1218:/usr/include/newlib/c++/6.3.1/cmath ****   using ::remquof;
1219:/usr/include/newlib/c++/6.3.1/cmath ****   using ::remquol;
1220:/usr/include/newlib/c++/6.3.1/cmath **** 
1221:/usr/include/newlib/c++/6.3.1/cmath ****   using ::rint;
1222:/usr/include/newlib/c++/6.3.1/cmath ****   using ::rintf;
1223:/usr/include/newlib/c++/6.3.1/cmath ****   using ::rintl;
1224:/usr/include/newlib/c++/6.3.1/cmath **** 
1225:/usr/include/newlib/c++/6.3.1/cmath ****   using ::round;
1226:/usr/include/newlib/c++/6.3.1/cmath ****   using ::roundf;
1227:/usr/include/newlib/c++/6.3.1/cmath ****   using ::roundl;
1228:/usr/include/newlib/c++/6.3.1/cmath **** 
1229:/usr/include/newlib/c++/6.3.1/cmath ****   using ::scalbln;
1230:/usr/include/newlib/c++/6.3.1/cmath ****   using ::scalblnf;
1231:/usr/include/newlib/c++/6.3.1/cmath ****   using ::scalblnl;
1232:/usr/include/newlib/c++/6.3.1/cmath **** 
1233:/usr/include/newlib/c++/6.3.1/cmath ****   using ::scalbn;
1234:/usr/include/newlib/c++/6.3.1/cmath ****   using ::scalbnf;
1235:/usr/include/newlib/c++/6.3.1/cmath ****   using ::scalbnl;
1236:/usr/include/newlib/c++/6.3.1/cmath **** 
1237:/usr/include/newlib/c++/6.3.1/cmath ****   using ::tgamma;
1238:/usr/include/newlib/c++/6.3.1/cmath ****   using ::tgammaf;
1239:/usr/include/newlib/c++/6.3.1/cmath ****   using ::tgammal;
1240:/usr/include/newlib/c++/6.3.1/cmath **** 
1241:/usr/include/newlib/c++/6.3.1/cmath ****   using ::trunc;
ARM GAS  /tmp/ccQR1hla.s 			page 37


1242:/usr/include/newlib/c++/6.3.1/cmath ****   using ::truncf;
1243:/usr/include/newlib/c++/6.3.1/cmath ****   using ::truncl;
1244:/usr/include/newlib/c++/6.3.1/cmath **** 
1245:/usr/include/newlib/c++/6.3.1/cmath ****   /// Additional overloads.
1246:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1247:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1248:/usr/include/newlib/c++/6.3.1/cmath ****   acosh(float __x)
1249:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_acoshf(__x); }
1250:/usr/include/newlib/c++/6.3.1/cmath **** 
1251:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1252:/usr/include/newlib/c++/6.3.1/cmath ****   acosh(long double __x)
1253:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_acoshl(__x); }
1254:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1255:/usr/include/newlib/c++/6.3.1/cmath **** 
1256:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1257:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1258:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1259:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1260:/usr/include/newlib/c++/6.3.1/cmath ****     acosh(_Tp __x)
1261:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_acosh(__x); }
1262:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1263:/usr/include/newlib/c++/6.3.1/cmath **** 
1264:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1265:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1266:/usr/include/newlib/c++/6.3.1/cmath ****   asinh(float __x)
1267:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_asinhf(__x); }
1268:/usr/include/newlib/c++/6.3.1/cmath **** 
1269:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1270:/usr/include/newlib/c++/6.3.1/cmath ****   asinh(long double __x)
1271:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_asinhl(__x); }
1272:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1273:/usr/include/newlib/c++/6.3.1/cmath **** 
1274:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1275:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1276:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1277:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1278:/usr/include/newlib/c++/6.3.1/cmath ****     asinh(_Tp __x)
1279:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_asinh(__x); }
1280:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1281:/usr/include/newlib/c++/6.3.1/cmath **** 
1282:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1283:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1284:/usr/include/newlib/c++/6.3.1/cmath ****   atanh(float __x)
1285:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_atanhf(__x); }
1286:/usr/include/newlib/c++/6.3.1/cmath **** 
1287:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1288:/usr/include/newlib/c++/6.3.1/cmath ****   atanh(long double __x)
1289:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_atanhl(__x); }
1290:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1291:/usr/include/newlib/c++/6.3.1/cmath **** 
1292:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1293:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1294:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1295:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1296:/usr/include/newlib/c++/6.3.1/cmath ****     atanh(_Tp __x)
1297:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_atanh(__x); }
1298:/usr/include/newlib/c++/6.3.1/cmath **** #endif
ARM GAS  /tmp/ccQR1hla.s 			page 38


1299:/usr/include/newlib/c++/6.3.1/cmath **** 
1300:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1301:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1302:/usr/include/newlib/c++/6.3.1/cmath ****   cbrt(float __x)
1303:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_cbrtf(__x); }
1304:/usr/include/newlib/c++/6.3.1/cmath **** 
1305:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1306:/usr/include/newlib/c++/6.3.1/cmath ****   cbrt(long double __x)
1307:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_cbrtl(__x); }
1308:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1309:/usr/include/newlib/c++/6.3.1/cmath **** 
1310:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1311:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1312:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1313:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1314:/usr/include/newlib/c++/6.3.1/cmath ****     cbrt(_Tp __x)
1315:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_cbrt(__x); }
1316:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1317:/usr/include/newlib/c++/6.3.1/cmath **** 
1318:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1319:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1320:/usr/include/newlib/c++/6.3.1/cmath ****   copysign(float __x, float __y)
1321:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_copysignf(__x, __y); }
1322:/usr/include/newlib/c++/6.3.1/cmath **** 
1323:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1324:/usr/include/newlib/c++/6.3.1/cmath ****   copysign(long double __x, long double __y)
1325:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_copysignl(__x, __y); }
1326:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1327:/usr/include/newlib/c++/6.3.1/cmath **** 
1328:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1329:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
1330:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
1331:/usr/include/newlib/c++/6.3.1/cmath ****     copysign(_Tp __x, _Up __y)
1332:/usr/include/newlib/c++/6.3.1/cmath ****     {
1333:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
1334:/usr/include/newlib/c++/6.3.1/cmath ****       return copysign(__type(__x), __type(__y));
1335:/usr/include/newlib/c++/6.3.1/cmath ****     }
1336:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1337:/usr/include/newlib/c++/6.3.1/cmath **** 
1338:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1339:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1340:/usr/include/newlib/c++/6.3.1/cmath ****   erf(float __x)
1341:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_erff(__x); }
1342:/usr/include/newlib/c++/6.3.1/cmath **** 
1343:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1344:/usr/include/newlib/c++/6.3.1/cmath ****   erf(long double __x)
1345:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_erfl(__x); }
1346:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1347:/usr/include/newlib/c++/6.3.1/cmath **** 
1348:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1349:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1350:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1351:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1352:/usr/include/newlib/c++/6.3.1/cmath ****     erf(_Tp __x)
1353:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_erf(__x); }
1354:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1355:/usr/include/newlib/c++/6.3.1/cmath **** 
ARM GAS  /tmp/ccQR1hla.s 			page 39


1356:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1357:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1358:/usr/include/newlib/c++/6.3.1/cmath ****   erfc(float __x)
1359:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_erfcf(__x); }
1360:/usr/include/newlib/c++/6.3.1/cmath **** 
1361:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1362:/usr/include/newlib/c++/6.3.1/cmath ****   erfc(long double __x)
1363:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_erfcl(__x); }
1364:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1365:/usr/include/newlib/c++/6.3.1/cmath **** 
1366:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1367:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1368:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1369:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1370:/usr/include/newlib/c++/6.3.1/cmath ****     erfc(_Tp __x)
1371:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_erfc(__x); }
1372:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1373:/usr/include/newlib/c++/6.3.1/cmath **** 
1374:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1375:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1376:/usr/include/newlib/c++/6.3.1/cmath ****   exp2(float __x)
1377:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_exp2f(__x); }
1378:/usr/include/newlib/c++/6.3.1/cmath **** 
1379:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1380:/usr/include/newlib/c++/6.3.1/cmath ****   exp2(long double __x)
1381:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_exp2l(__x); }
1382:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1383:/usr/include/newlib/c++/6.3.1/cmath **** 
1384:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1385:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1386:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1387:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1388:/usr/include/newlib/c++/6.3.1/cmath ****     exp2(_Tp __x)
1389:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_exp2(__x); }
1390:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1391:/usr/include/newlib/c++/6.3.1/cmath **** 
1392:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1393:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1394:/usr/include/newlib/c++/6.3.1/cmath ****   expm1(float __x)
1395:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_expm1f(__x); }
1396:/usr/include/newlib/c++/6.3.1/cmath **** 
1397:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1398:/usr/include/newlib/c++/6.3.1/cmath ****   expm1(long double __x)
1399:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_expm1l(__x); }
1400:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1401:/usr/include/newlib/c++/6.3.1/cmath **** 
1402:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1403:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1404:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1405:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1406:/usr/include/newlib/c++/6.3.1/cmath ****     expm1(_Tp __x)
1407:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_expm1(__x); }
1408:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1409:/usr/include/newlib/c++/6.3.1/cmath **** 
1410:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1411:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1412:/usr/include/newlib/c++/6.3.1/cmath ****   fdim(float __x, float __y)
ARM GAS  /tmp/ccQR1hla.s 			page 40


1413:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fdimf(__x, __y); }
1414:/usr/include/newlib/c++/6.3.1/cmath **** 
1415:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1416:/usr/include/newlib/c++/6.3.1/cmath ****   fdim(long double __x, long double __y)
1417:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fdiml(__x, __y); }
1418:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1419:/usr/include/newlib/c++/6.3.1/cmath **** 
1420:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1421:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
1422:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
1423:/usr/include/newlib/c++/6.3.1/cmath ****     fdim(_Tp __x, _Up __y)
1424:/usr/include/newlib/c++/6.3.1/cmath ****     {
1425:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
1426:/usr/include/newlib/c++/6.3.1/cmath ****       return fdim(__type(__x), __type(__y));
1427:/usr/include/newlib/c++/6.3.1/cmath ****     }
1428:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1429:/usr/include/newlib/c++/6.3.1/cmath **** 
1430:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1431:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1432:/usr/include/newlib/c++/6.3.1/cmath ****   fma(float __x, float __y, float __z)
1433:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fmaf(__x, __y, __z); }
1434:/usr/include/newlib/c++/6.3.1/cmath **** 
1435:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1436:/usr/include/newlib/c++/6.3.1/cmath ****   fma(long double __x, long double __y, long double __z)
1437:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fmal(__x, __y, __z); }
1438:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1439:/usr/include/newlib/c++/6.3.1/cmath **** 
1440:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1441:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up, typename _Vp>
1442:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__promote_3<_Tp, _Up, _Vp>::__type
1443:/usr/include/newlib/c++/6.3.1/cmath ****     fma(_Tp __x, _Up __y, _Vp __z)
1444:/usr/include/newlib/c++/6.3.1/cmath ****     {
1445:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_3<_Tp, _Up, _Vp>::__type __type;
1446:/usr/include/newlib/c++/6.3.1/cmath ****       return fma(__type(__x), __type(__y), __type(__z));
1447:/usr/include/newlib/c++/6.3.1/cmath ****     }
1448:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1449:/usr/include/newlib/c++/6.3.1/cmath **** 
1450:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1451:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1452:/usr/include/newlib/c++/6.3.1/cmath ****   fmax(float __x, float __y)
1453:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fmaxf(__x, __y); }
1454:/usr/include/newlib/c++/6.3.1/cmath **** 
1455:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1456:/usr/include/newlib/c++/6.3.1/cmath ****   fmax(long double __x, long double __y)
1457:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fmaxl(__x, __y); }
1458:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1459:/usr/include/newlib/c++/6.3.1/cmath **** 
1460:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1461:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
1462:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
1463:/usr/include/newlib/c++/6.3.1/cmath ****     fmax(_Tp __x, _Up __y)
1464:/usr/include/newlib/c++/6.3.1/cmath ****     {
1465:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
1466:/usr/include/newlib/c++/6.3.1/cmath ****       return fmax(__type(__x), __type(__y));
1467:/usr/include/newlib/c++/6.3.1/cmath ****     }
1468:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1469:/usr/include/newlib/c++/6.3.1/cmath **** 
ARM GAS  /tmp/ccQR1hla.s 			page 41


1470:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1471:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1472:/usr/include/newlib/c++/6.3.1/cmath ****   fmin(float __x, float __y)
1473:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fminf(__x, __y); }
1474:/usr/include/newlib/c++/6.3.1/cmath **** 
1475:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1476:/usr/include/newlib/c++/6.3.1/cmath ****   fmin(long double __x, long double __y)
1477:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_fminl(__x, __y); }
1478:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1479:/usr/include/newlib/c++/6.3.1/cmath **** 
1480:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1481:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
1482:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
1483:/usr/include/newlib/c++/6.3.1/cmath ****     fmin(_Tp __x, _Up __y)
1484:/usr/include/newlib/c++/6.3.1/cmath ****     {
1485:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
1486:/usr/include/newlib/c++/6.3.1/cmath ****       return fmin(__type(__x), __type(__y));
1487:/usr/include/newlib/c++/6.3.1/cmath ****     }
1488:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1489:/usr/include/newlib/c++/6.3.1/cmath **** 
1490:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1491:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1492:/usr/include/newlib/c++/6.3.1/cmath ****   hypot(float __x, float __y)
1493:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_hypotf(__x, __y); }
1494:/usr/include/newlib/c++/6.3.1/cmath **** 
1495:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1496:/usr/include/newlib/c++/6.3.1/cmath ****   hypot(long double __x, long double __y)
1497:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_hypotl(__x, __y); }
1498:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1499:/usr/include/newlib/c++/6.3.1/cmath **** 
1500:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1501:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp, typename _Up>
1502:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
1503:/usr/include/newlib/c++/6.3.1/cmath ****     hypot(_Tp __x, _Up __y)
1504:/usr/include/newlib/c++/6.3.1/cmath ****     {
1505:/usr/include/newlib/c++/6.3.1/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
1506:/usr/include/newlib/c++/6.3.1/cmath ****       return hypot(__type(__x), __type(__y));
1507:/usr/include/newlib/c++/6.3.1/cmath ****     }
1508:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1509:/usr/include/newlib/c++/6.3.1/cmath **** 
1510:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1511:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr int
1512:/usr/include/newlib/c++/6.3.1/cmath ****   ilogb(float __x)
1513:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_ilogbf(__x); }
1514:/usr/include/newlib/c++/6.3.1/cmath **** 
1515:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr int
1516:/usr/include/newlib/c++/6.3.1/cmath ****   ilogb(long double __x)
1517:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_ilogbl(__x); }
1518:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1519:/usr/include/newlib/c++/6.3.1/cmath **** 
1520:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1521:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1522:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr
1523:/usr/include/newlib/c++/6.3.1/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1524:/usr/include/newlib/c++/6.3.1/cmath ****                                     int>::__type
1525:/usr/include/newlib/c++/6.3.1/cmath ****     ilogb(_Tp __x)
1526:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_ilogb(__x); }
ARM GAS  /tmp/ccQR1hla.s 			page 42


1527:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1528:/usr/include/newlib/c++/6.3.1/cmath **** 
1529:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1530:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1531:/usr/include/newlib/c++/6.3.1/cmath ****   lgamma(float __x)
1532:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_lgammaf(__x); }
1533:/usr/include/newlib/c++/6.3.1/cmath **** 
1534:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1535:/usr/include/newlib/c++/6.3.1/cmath ****   lgamma(long double __x)
1536:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_lgammal(__x); }
1537:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1538:/usr/include/newlib/c++/6.3.1/cmath **** 
1539:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1540:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1541:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1542:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1543:/usr/include/newlib/c++/6.3.1/cmath ****     lgamma(_Tp __x)
1544:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_lgamma(__x); }
1545:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1546:/usr/include/newlib/c++/6.3.1/cmath **** 
1547:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1548:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long long
1549:/usr/include/newlib/c++/6.3.1/cmath ****   llrint(float __x)
1550:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_llrintf(__x); }
1551:/usr/include/newlib/c++/6.3.1/cmath **** 
1552:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long long
1553:/usr/include/newlib/c++/6.3.1/cmath ****   llrint(long double __x)
1554:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_llrintl(__x); }
1555:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1556:/usr/include/newlib/c++/6.3.1/cmath **** 
1557:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1558:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1559:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1560:/usr/include/newlib/c++/6.3.1/cmath ****                                               long long>::__type
1561:/usr/include/newlib/c++/6.3.1/cmath ****     llrint(_Tp __x)
1562:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_llrint(__x); }
1563:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1564:/usr/include/newlib/c++/6.3.1/cmath **** 
1565:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1566:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long long
1567:/usr/include/newlib/c++/6.3.1/cmath ****   llround(float __x)
1568:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_llroundf(__x); }
1569:/usr/include/newlib/c++/6.3.1/cmath **** 
1570:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long long
1571:/usr/include/newlib/c++/6.3.1/cmath ****   llround(long double __x)
1572:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_llroundl(__x); }
1573:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1574:/usr/include/newlib/c++/6.3.1/cmath **** 
1575:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1576:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1577:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1578:/usr/include/newlib/c++/6.3.1/cmath ****                                               long long>::__type
1579:/usr/include/newlib/c++/6.3.1/cmath ****     llround(_Tp __x)
1580:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_llround(__x); }
1581:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1582:/usr/include/newlib/c++/6.3.1/cmath **** 
1583:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
ARM GAS  /tmp/ccQR1hla.s 			page 43


1584:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1585:/usr/include/newlib/c++/6.3.1/cmath ****   log1p(float __x)
1586:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_log1pf(__x); }
1587:/usr/include/newlib/c++/6.3.1/cmath **** 
1588:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1589:/usr/include/newlib/c++/6.3.1/cmath ****   log1p(long double __x)
1590:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_log1pl(__x); }
1591:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1592:/usr/include/newlib/c++/6.3.1/cmath **** 
1593:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1594:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1595:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1596:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1597:/usr/include/newlib/c++/6.3.1/cmath ****     log1p(_Tp __x)
1598:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_log1p(__x); }
1599:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1600:/usr/include/newlib/c++/6.3.1/cmath **** 
1601:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1602:/usr/include/newlib/c++/6.3.1/cmath ****   // DR 568.
1603:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1604:/usr/include/newlib/c++/6.3.1/cmath ****   log2(float __x)
1605:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_log2f(__x); }
1606:/usr/include/newlib/c++/6.3.1/cmath **** 
1607:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1608:/usr/include/newlib/c++/6.3.1/cmath ****   log2(long double __x)
1609:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_log2l(__x); }
1610:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1611:/usr/include/newlib/c++/6.3.1/cmath **** 
1612:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1613:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1614:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1615:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1616:/usr/include/newlib/c++/6.3.1/cmath ****     log2(_Tp __x)
1617:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_log2(__x); }
1618:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1619:/usr/include/newlib/c++/6.3.1/cmath **** 
1620:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1621:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr float
1622:/usr/include/newlib/c++/6.3.1/cmath ****   logb(float __x)
1623:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_logbf(__x); }
1624:/usr/include/newlib/c++/6.3.1/cmath **** 
1625:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long double
1626:/usr/include/newlib/c++/6.3.1/cmath ****   logb(long double __x)
1627:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_logbl(__x); }
1628:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1629:/usr/include/newlib/c++/6.3.1/cmath **** 
1630:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1631:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1632:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1633:/usr/include/newlib/c++/6.3.1/cmath ****                                               double>::__type
1634:/usr/include/newlib/c++/6.3.1/cmath ****     logb(_Tp __x)
1635:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_logb(__x); }
1636:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1637:/usr/include/newlib/c++/6.3.1/cmath **** 
1638:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1639:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long
1640:/usr/include/newlib/c++/6.3.1/cmath ****   lrint(float __x)
ARM GAS  /tmp/ccQR1hla.s 			page 44


1641:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_lrintf(__x); }
1642:/usr/include/newlib/c++/6.3.1/cmath **** 
1643:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long
1644:/usr/include/newlib/c++/6.3.1/cmath ****   lrint(long double __x)
1645:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_lrintl(__x); }
1646:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1647:/usr/include/newlib/c++/6.3.1/cmath **** 
1648:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_INT
1649:/usr/include/newlib/c++/6.3.1/cmath ****   template<typename _Tp>
1650:/usr/include/newlib/c++/6.3.1/cmath ****     constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
1651:/usr/include/newlib/c++/6.3.1/cmath ****                                               long>::__type
1652:/usr/include/newlib/c++/6.3.1/cmath ****     lrint(_Tp __x)
1653:/usr/include/newlib/c++/6.3.1/cmath ****     { return __builtin_lrint(__x); }
1654:/usr/include/newlib/c++/6.3.1/cmath **** #endif
1655:/usr/include/newlib/c++/6.3.1/cmath **** 
1656:/usr/include/newlib/c++/6.3.1/cmath **** #ifndef __CORRECT_ISO_CPP11_MATH_H_PROTO_FP
1657:/usr/include/newlib/c++/6.3.1/cmath ****   constexpr long
1658:/usr/include/newlib/c++/6.3.1/cmath ****   lround(float __x)
1659:/usr/include/newlib/c++/6.3.1/cmath ****   { return __builtin_lroundf(__x); }
 240              		.loc 4 1659 0
 241 00bc 28EE000A 		vmul.f32	s0, s16, s0
 242              	.LVL19:
 243 00c0 FFF7FEFF 		bl	lroundf
 244              	.LVL20:
 245              	.LBE150:
 246              	.LBE149:
 247              	.LBE148:
 248              	.LBE147:
  92:../cores/arduino/AnalogOut.cpp **** #else
 249              		.loc 1 92 0
 250 00c4 2246     		mov	r2, r4
 251 00c6 0146     		mov	r1, r0
 252 00c8 9748     		ldr	r0, .L73+8
 253 00ca FFF7FEFF 		bl	dacc_write_conversion_data
 254              	.LVL21:
 255              	.LBE146:
 256              	.LBE145:
 257              		.loc 1 432 0
 258 00ce 17B0     		add	sp, sp, #92
 259              		.cfi_remember_state
 260              		.cfi_def_cfa_offset 44
 261              		@ sp needed
 262 00d0 BDEC028B 		vldm	sp!, {d8}
 263              		.cfi_restore 80
 264              		.cfi_restore 81
 265              		.cfi_def_cfa_offset 36
 266 00d4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 267              	.LVL22:
 268              	.L66:
 269              		.cfi_restore_state
 270              	.LBB152:
 271              	.LBB153:
 119:../cores/arduino/AnalogOut.cpp **** 	if (freq == 0)
 272              		.loc 1 119 0
 273 00d8 98F91980 		ldrsb	r8, [r8, #25]
 274              	.LVL23:
 120:../cores/arduino/AnalogOut.cpp **** 	{
ARM GAS  /tmp/ccQR1hla.s 			page 45


 275              		.loc 1 120 0
 276 00dc 002E     		cmp	r6, #0
 277 00de 00F06A81 		beq	.L69
 278              	.LBB154:
 133:../cores/arduino/AnalogOut.cpp **** 	{
 279              		.loc 1 133 0
 280 00e2 DFF878A2 		ldr	r10, .L73+60
 281              	.LBE154:
 128:../cores/arduino/AnalogOut.cpp **** #else
 282              		.loc 1 128 0
 283 00e6 924B     		ldr	r3, .L73+16
 284              	.LBB187:
 133:../cores/arduino/AnalogOut.cpp **** 	{
 285              		.loc 1 133 0
 286 00e8 3AF81820 		ldrh	r2, [r10, r8, lsl #1]
 287              	.LVL24:
 288              	.LBE187:
 128:../cores/arduino/AnalogOut.cpp **** #else
 289              		.loc 1 128 0
 290 00ec DFF870B2 		ldr	fp, .L73+64
 291 00f0 B8F1030F 		cmp	r8, #3
 292 00f4 94BF     		ite	ls
 293 00f6 9946     		movls	r9, r3
 294 00f8 D946     		movhi	r9, fp
 295              	.LVL25:
 296              	.LBB188:
 133:../cores/arduino/AnalogOut.cpp **** 	{
 297              		.loc 1 133 0
 298 00fa B242     		cmp	r2, r6
 299 00fc 00F07881 		beq	.L14
 300              	.LBB155:
 301              	.LBB156:
 135:../cores/arduino/AnalogOut.cpp **** 		{
 302              		.loc 1 135 0
 303 0100 8C4A     		ldr	r2, .L73+20
 304 0102 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 305              	.LVL26:
 306 0104 0091     		str	r1, [sp]
 307 0106 0029     		cmp	r1, #0
 308 0108 00F0E280 		beq	.L55
 309 010c 07AB     		add	r3, sp, #28
 310 010e 0293     		str	r3, [sp, #8]
 311              	.LVL27:
 312              	.L15:
 313              	.LBE156:
 163:../cores/arduino/AnalogOut.cpp **** 		const uint32_t duty = ConvertRange(ulValue, period);
 314              		.loc 1 163 0
 315 0110 894A     		ldr	r2, .L73+24
 316 0112 46F2461B 		movw	fp, #24902
 317              	.LBB158:
 173:../cores/arduino/AnalogOut.cpp **** 		{
 318              		.loc 1 173 0
 319 0116 0023     		movs	r3, #0
 320              	.LBE158:
 163:../cores/arduino/AnalogOut.cpp **** 		const uint32_t duty = ConvertRange(ulValue, period);
 321              		.loc 1 163 0
 322 0118 602E     		cmp	r6, #96
ARM GAS  /tmp/ccQR1hla.s 			page 46


 323 011a 88BF     		it	hi
 324 011c 9346     		movhi	fp, r2
 325              	.LBB167:
 173:../cores/arduino/AnalogOut.cpp **** 		{
 326              		.loc 1 173 0
 327 011e 0493     		str	r3, [sp, #16]
 328 0120 4FEA4813 		lsl	r3, r8, #5
 329              	.LBE167:
 163:../cores/arduino/AnalogOut.cpp **** 		const uint32_t duty = ConvertRange(ulValue, period);
 330              		.loc 1 163 0
 331 0124 BBFBF6FB 		udiv	fp, fp, r6
 332              	.LVL28:
 333              	.LBB168:
 334              	.LBB169:
  37:../cores/arduino/AnalogOut.cpp **** }
 335              		.loc 1 37 0
 336 0128 07EE90BA 		vmov	s15, fp	@ int
 337 012c 0093     		str	r3, [sp]
 338 012e B8EEE70A 		vcvt.f32.s32	s0, s15
 339              	.LBB170:
 340              	.LBB171:
 341              		.loc 4 1659 0
 342 0132 20EE080A 		vmul.f32	s0, s0, s16
 343              	.LVL29:
 344 0136 FFF7FEFF 		bl	lroundf
 345              	.LVL30:
 346              	.LBE171:
 347              	.LBE170:
 348              	.LBE169:
 349              	.LBE168:
 167:../cores/arduino/AnalogOut.cpp **** 
 350              		.loc 1 167 0
 351 013a 804A     		ldr	r2, .L73+28
 352              	.LBB175:
 353              	.LBB174:
 354              	.LBB173:
 355              	.LBB172:
 356              		.loc 4 1659 0
 357 013c 0390     		str	r0, [sp, #12]
 358              	.LVL31:
 359              	.LBE172:
 360              	.LBE173:
 361              	.LBE174:
 362              	.LBE175:
 363              	.LBB176:
 364              	.LBB159:
 175:../cores/arduino/AnalogOut.cpp **** 			if (j > maxPwmLoopCount)
 365              		.loc 1 175 0
 366 013e 4146     		mov	r1, r8
 367 0140 4846     		mov	r0, r9
 368              	.LBE159:
 369              	.LBE176:
 167:../cores/arduino/AnalogOut.cpp **** 
 370              		.loc 1 167 0
 371 0142 22F818B0 		strh	fp, [r2, r8, lsl #1]	@ movhi
 372              	.LVL32:
 166:../cores/arduino/AnalogOut.cpp **** 		PWMChanPeriod[chan] = (uint16_t)period;
ARM GAS  /tmp/ccQR1hla.s 			page 47


 373              		.loc 1 166 0
 374 0146 2AF81860 		strh	r6, [r10, r8, lsl #1]	@ movhi
 375              	.LBB177:
 376              	.LBB165:
 175:../cores/arduino/AnalogOut.cpp **** 			if (j > maxPwmLoopCount)
 377              		.loc 1 175 0
 378 014a FFF7FEFF 		bl	pwm_channel_disable
 379              	.LVL33:
 187:../cores/arduino/AnalogOut.cpp **** 			pwm_channel_enable(PWMInterface, chan);
 380              		.loc 1 187 0
 381 014e 08F11002 		add	r2, r8, #16
 382 0152 0594     		str	r4, [sp, #20]
 383 0154 4C46     		mov	r4, r9
 384 0156 09EB4213 		add	r3, r9, r2, lsl #5
 385 015a 0193     		str	r3, [sp, #4]
 386 015c 049B     		ldr	r3, [sp, #16]
 387 015e 0496     		str	r6, [sp, #16]
 388 0160 9946     		mov	r9, r3
 389              	.LVL34:
 390              	.L17:
 180:../cores/arduino/AnalogOut.cpp **** 			if (oldCurrentVal < period || oldCurrentVal > 65536 - 10)	// if counter is already small enough 
 391              		.loc 1 180 0
 392 0162 009B     		ldr	r3, [sp]
 393 0164 E618     		adds	r6, r4, r3
 394 0166 D6F81412 		ldr	r1, [r6, #532]
 395 016a 1FFA81FA 		uxth	r10, r1
 396              	.LVL35:
 181:../cores/arduino/AnalogOut.cpp **** 			{
 397              		.loc 1 181 0
 398 016e D345     		cmp	fp, r10
 399 0170 00F2FA80 		bhi	.L58
 400 0174 4FF6F671 		movw	r1, #65526
 401 0178 8A45     		cmp	r10, r1
 402 017a 00F2F580 		bhi	.L58
 187:../cores/arduino/AnalogOut.cpp **** 			pwm_channel_enable(PWMInterface, chan);
 403              		.loc 1 187 0
 404 017e 0C23     		movs	r3, #12
 405 0180 019A     		ldr	r2, [sp, #4]
 185:../cores/arduino/AnalogOut.cpp **** 			PWMInterface->PWM_CH_NUM[chan].PWM_CPRD = oldCurrentVal;				// change the period to be just grea
 406              		.loc 1 185 0
 407 0182 0AF1020A 		add	r10, r10, #2
 408              	.LVL36:
 188:../cores/arduino/AnalogOut.cpp **** 			for (unsigned int i = 0; i < 1000; ++i)
 409              		.loc 1 188 0
 410 0186 4146     		mov	r1, r8
 411 0188 2046     		mov	r0, r4
 186:../cores/arduino/AnalogOut.cpp **** 			PWMInterface->PWM_CH_NUM[chan].PWM_CMR = PWM_CMR_CPRE_CLKB;			// use the fast clock to avoid wai
 412              		.loc 1 186 0
 413 018a C6F80CA2 		str	r10, [r6, #524]
 187:../cores/arduino/AnalogOut.cpp **** 			pwm_channel_enable(PWMInterface, chan);
 414              		.loc 1 187 0
 415 018e 1360     		str	r3, [r2]
 188:../cores/arduino/AnalogOut.cpp **** 			for (unsigned int i = 0; i < 1000; ++i)
 416              		.loc 1 188 0
 417 0190 FFF7FEFF 		bl	pwm_channel_enable
 418              	.LVL37:
 419              	.LBB160:
ARM GAS  /tmp/ccQR1hla.s 			page 48


 420              	.LBB161:
 191:../cores/arduino/AnalogOut.cpp **** 				if (newCurrentVal < period || newCurrentVal > oldCurrentVal)
 421              		.loc 1 191 0
 422 0194 3046     		mov	r0, r6
 423              	.LBE161:
 424              	.LBE160:
 188:../cores/arduino/AnalogOut.cpp **** 			for (unsigned int i = 0; i < 1000; ++i)
 425              		.loc 1 188 0
 426 0196 4FF47A71 		mov	r1, #1000
 427 019a 03E0     		b	.L23
 428              	.LVL38:
 429              	.L70:
 430              	.LBB164:
 431              	.LBB162:
 192:../cores/arduino/AnalogOut.cpp **** 				{
 432              		.loc 1 192 0
 433 019c 9A45     		cmp	r10, r3
 434 019e 06D3     		bcc	.L22
 435              	.LBE162:
 189:../cores/arduino/AnalogOut.cpp **** 			{
 436              		.loc 1 189 0
 437 01a0 0139     		subs	r1, r1, #1
 438              	.LVL39:
 439 01a2 04D0     		beq	.L22
 440              	.LVL40:
 441              	.L23:
 442              	.LBB163:
 191:../cores/arduino/AnalogOut.cpp **** 				if (newCurrentVal < period || newCurrentVal > oldCurrentVal)
 443              		.loc 1 191 0
 444 01a4 D0F81432 		ldr	r3, [r0, #532]
 445 01a8 9BB2     		uxth	r3, r3
 446              	.LVL41:
 192:../cores/arduino/AnalogOut.cpp **** 				{
 447              		.loc 1 192 0
 448 01aa 9B45     		cmp	fp, r3
 449 01ac F6D9     		bls	.L70
 450              	.LVL42:
 451              	.L22:
 452              	.LBE163:
 453              	.LBE164:
 454              	.LBE165:
 173:../cores/arduino/AnalogOut.cpp **** 		{
 455              		.loc 1 173 0
 456 01ae 09F10109 		add	r9, r9, #1
 457              	.LVL43:
 458 01b2 B9F1050F 		cmp	r9, #5
 459 01b6 00F0D780 		beq	.L58
 460              	.LBB166:
 175:../cores/arduino/AnalogOut.cpp **** 			if (j > maxPwmLoopCount)
 461              		.loc 1 175 0
 462 01ba 4146     		mov	r1, r8
 463 01bc 2046     		mov	r0, r4
 464 01be FFF7FEFF 		bl	pwm_channel_disable
 465              	.LVL44:
 176:../cores/arduino/AnalogOut.cpp **** 			{
 466              		.loc 1 176 0
 467 01c2 5F4A     		ldr	r2, .L73+32
ARM GAS  /tmp/ccQR1hla.s 			page 49


 468 01c4 1168     		ldr	r1, [r2]
 469 01c6 4945     		cmp	r1, r9
 178:../cores/arduino/AnalogOut.cpp **** 			}
 470              		.loc 1 178 0
 471 01c8 38BF     		it	cc
 472 01ca C2F80090 		strcc	r9, [r2]
 473 01ce C8E7     		b	.L17
 474              	.LVL45:
 475              	.L67:
 476              	.LBE166:
 477              	.LBE177:
 478              	.LBE155:
 479              	.LBE188:
 480              	.LBE153:
 481              	.LBE152:
 482              	.LBB193:
 483              	.LBB194:
 302:../cores/arduino/AnalogOut.cpp **** 	if (freq == 0)
 484              		.loc 1 302 0
 485 01d0 98F91A30 		ldrsb	r3, [r8, #26]
 486              	.LBB195:
 305:../cores/arduino/AnalogOut.cpp **** 		return false;
 487              		.loc 1 305 0
 488 01d4 5B4A     		ldr	r2, .L73+36
 489              	.LBE195:
 302:../cores/arduino/AnalogOut.cpp **** 	if (freq == 0)
 490              		.loc 1 302 0
 491 01d6 5B08     		lsrs	r3, r3, #1
 492              	.LVL46:
 493              	.LBB222:
 303:../cores/arduino/AnalogOut.cpp **** 	{
 494              		.loc 1 303 0
 495 01d8 002E     		cmp	r6, #0
 496 01da 00F0F080 		beq	.L71
 497              	.LBB196:
 312:../cores/arduino/AnalogOut.cpp **** 
 498              		.loc 1 312 0
 499 01de 32F813B0 		ldrh	fp, [r2, r3, lsl #1]
 310:../cores/arduino/AnalogOut.cpp **** 		const uint32_t chNo = channelToChNo[chan];
 500              		.loc 1 310 0
 501 01e2 5948     		ldr	r0, .L73+40
 311:../cores/arduino/AnalogOut.cpp **** 		const bool doInit = (TCChanFreq[chan] != freq);
 502              		.loc 1 311 0
 503 01e4 5949     		ldr	r1, .L73+44
 504              	.LVL47:
 505              	.LBB197:
 314:../cores/arduino/AnalogOut.cpp **** 		{
 506              		.loc 1 314 0
 507 01e6 5E45     		cmp	r6, fp
 508              	.LBE197:
 310:../cores/arduino/AnalogOut.cpp **** 		const uint32_t chNo = channelToChNo[chan];
 509              		.loc 1 310 0
 510 01e8 50F82390 		ldr	r9, [r0, r3, lsl #2]
 511              	.LVL48:
 311:../cores/arduino/AnalogOut.cpp **** 		const bool doInit = (TCChanFreq[chan] != freq);
 512              		.loc 1 311 0
 513 01ec 11F803A0 		ldrb	r10, [r1, r3]	@ zero_extendqisi2
ARM GAS  /tmp/ccQR1hla.s 			page 50


 514              	.LVL49:
 515              	.LBB203:
 314:../cores/arduino/AnalogOut.cpp **** 		{
 516              		.loc 1 314 0
 517 01f0 25D0     		beq	.L28
 518              	.LBB198:
 319:../cores/arduino/AnalogOut.cpp **** 
 519              		.loc 1 319 0
 520 01f2 5749     		ldr	r1, .L73+48
 316:../cores/arduino/AnalogOut.cpp **** 
 521              		.loc 1 316 0
 522 01f4 22F81360 		strh	r6, [r2, r3, lsl #1]	@ movhi
 319:../cores/arduino/AnalogOut.cpp **** 
 523              		.loc 1 319 0
 524 01f8 C85C     		ldrb	r0, [r1, r3]	@ zero_extendqisi2
 525 01fa 0093     		str	r3, [sp]
 526 01fc FFF7FEFF 		bl	pmc_enable_periph_clk
 527              	.LVL50:
 331:../cores/arduino/AnalogOut.cpp **** 			const uint32_t top = min<uint32_t>((VARIANT_MCK/128)/(uint32_t)freq, 65535);	// with 120MHz cloc
 528              		.loc 1 331 0
 529 0200 544A     		ldr	r2, .L73+52
 530 0202 5146     		mov	r1, r10
 531 0204 4846     		mov	r0, r9
 532 0206 FFF7FEFF 		bl	tc_init
 533              	.LVL51:
 332:../cores/arduino/AnalogOut.cpp **** #else
 534              		.loc 1 332 0
 535 020a 534A     		ldr	r2, .L73+56
 536              	.LBB199:
 537              	.LBB200:
  55:../cores/arduino/WMath.h **** }
 538              		.loc 2 55 0
 539 020c 4FF6FE7C 		movw	ip, #65534
 540 0210 4FF6FF7E 		movw	lr, #65535
 541              	.LBE200:
 542              	.LBE199:
 345:../cores/arduino/AnalogOut.cpp **** 
 543              		.loc 1 345 0
 544 0214 5146     		mov	r1, r10
 545 0216 4846     		mov	r0, r9
 332:../cores/arduino/AnalogOut.cpp **** #else
 546              		.loc 1 332 0
 547 0218 B2FBF6F2 		udiv	r2, r2, r6
 345:../cores/arduino/AnalogOut.cpp **** 
 548              		.loc 1 345 0
 549 021c 6245     		cmp	r2, ip
 550 021e 88BF     		it	hi
 551 0220 7246     		movhi	r2, lr
 552 0222 FFF7FEFF 		bl	tc_write_rc
 553              	.LVL52:
 350:../cores/arduino/AnalogOut.cpp **** 			{
 554              		.loc 1 350 0
 555 0226 F6EE007A 		vmov.f32	s15, #5.0e-1
 556 022a B4EEE78A 		vcmpe.f32	s16, s15
 557 022e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 558 0232 04DB     		blt	.L28
 559              	.LVL53:
ARM GAS  /tmp/ccQR1hla.s 			page 51


 560              	.LBB201:
 561              	.LBB202:
 291:../cores/arduino/AnalogOut.cpp **** }
 562              		.loc 1 291 0
 563 0234 009B     		ldr	r3, [sp]
 564 0236 0422     		movs	r2, #4
 565 0238 9B01     		lsls	r3, r3, #6
 566 023a 49F80320 		str	r2, [r9, r3]
 567              	.LVL54:
 568              	.L28:
 569              	.LBE202:
 570              	.LBE201:
 571              	.LBE198:
 572              	.LBE203:
 356:../cores/arduino/AnalogOut.cpp **** 		if (threshold == 0)
 573              		.loc 1 356 0
 574 023e 5146     		mov	r1, r10
 575 0240 4846     		mov	r0, r9
 576 0242 FFF7FEFF 		bl	tc_read_rc
 577              	.LVL55:
 578              	.LBB204:
 579              	.LBB205:
  37:../cores/arduino/AnalogOut.cpp **** }
 580              		.loc 1 37 0
 581 0246 07EE900A 		vmov	s15, r0	@ int
 582              	.LBE205:
 583              	.LBE204:
 359:../cores/arduino/AnalogOut.cpp **** 			{
 584              		.loc 1 359 0
 585 024a 3C1B     		subs	r4, r7, r4
 586              	.LBB210:
 587              	.LBB208:
  37:../cores/arduino/AnalogOut.cpp **** }
 588              		.loc 1 37 0
 589 024c B8EE670A 		vcvt.f32.u32	s0, s15
 590              	.LBE208:
 591              	.LBE210:
 359:../cores/arduino/AnalogOut.cpp **** 			{
 592              		.loc 1 359 0
 593 0250 05EB8405 		add	r5, r5, r4, lsl #2
 594              	.LBB211:
 595              	.LBB209:
 596              	.LBB206:
 597              	.LBB207:
 598              		.loc 4 1659 0
 599 0254 20EE080A 		vmul.f32	s0, s0, s16
 600              	.LVL56:
 601 0258 FFF7FEFF 		bl	lroundf
 602              	.LVL57:
 603              	.LBE207:
 604              	.LBE206:
 605              	.LBE209:
 606              	.LBE211:
 359:../cores/arduino/AnalogOut.cpp **** 			{
 607              		.loc 1 359 0
 608 025c AB7E     		ldrb	r3, [r5, #26]	@ zero_extendqisi2
 357:../cores/arduino/AnalogOut.cpp **** 		{
ARM GAS  /tmp/ccQR1hla.s 			page 52


 609              		.loc 1 357 0
 610 025e 28B3     		cbz	r0, .L72
 373:../cores/arduino/AnalogOut.cpp **** 			{
 611              		.loc 1 373 0
 612 0260 DB07     		lsls	r3, r3, #31
 375:../cores/arduino/AnalogOut.cpp **** 				TC_SetCMR_ChannelA(chTC, chNo, TC_CMR_ACPA_CLEAR | TC_CMR_ACPC_SET);
 613              		.loc 1 375 0
 614 0262 0246     		mov	r2, r0
 615 0264 5146     		mov	r1, r10
 616 0266 4846     		mov	r0, r9
 373:../cores/arduino/AnalogOut.cpp **** 			{
 617              		.loc 1 373 0
 618 0268 00F1AC80 		bmi	.L35
 619              	.LVL58:
 375:../cores/arduino/AnalogOut.cpp **** 				TC_SetCMR_ChannelA(chTC, chNo, TC_CMR_ACPA_CLEAR | TC_CMR_ACPC_SET);
 620              		.loc 1 375 0
 621 026c FFF7FEFF 		bl	tc_write_ra
 622              	.LVL59:
 623 0270 09EB8A12 		add	r2, r9, r10, lsl #6
 624              	.LBB212:
 625              	.LBB213:
 281:../cores/arduino/AnalogOut.cpp **** }
 626              		.loc 1 281 0
 627 0274 5368     		ldr	r3, [r2, #4]
 628 0276 23F47023 		bic	r3, r3, #983040
 629 027a 43F4C023 		orr	r3, r3, #393216
 630 027e 5360     		str	r3, [r2, #4]
 631              	.LVL60:
 632              	.L34:
 633              	.LBE213:
 634              	.LBE212:
 385:../cores/arduino/AnalogOut.cpp **** 		{
 635              		.loc 1 385 0
 636 0280 5E45     		cmp	r6, fp
 637 0282 3FF4F2AE 		beq	.L2
 387:../cores/arduino/AnalogOut.cpp **** 			tc_start(chTC, chNo);
 638              		.loc 1 387 0
 639 0286 4046     		mov	r0, r8
 640 0288 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 641              	.LVL61:
 388:../cores/arduino/AnalogOut.cpp **** 		}
 642              		.loc 1 388 0
 643 028c 5146     		mov	r1, r10
 644 028e 4846     		mov	r0, r9
 645 0290 FFF7FEFF 		bl	tc_start
 646              	.LVL62:
 647 0294 E9E6     		b	.L2
 648              	.LVL63:
 649              	.L68:
 650              	.LBE196:
 651              	.LBE222:
 652              	.LBE194:
 653              	.LBE193:
 654              	.LBB227:
 655              	.LBB151:
  51:../cores/arduino/AnalogOut.cpp **** 		// Reset DACC registers
 656              		.loc 1 51 0
ARM GAS  /tmp/ccQR1hla.s 			page 53


 657 0296 1E20     		movs	r0, #30
 658 0298 FFF7FEFF 		bl	pmc_enable_periph_clk
 659              	.LVL64:
  53:../cores/arduino/AnalogOut.cpp **** 		// Half word transfer mode
 660              		.loc 1 53 0
 661 029c 2248     		ldr	r0, .L73+8
 662 029e FFF7FEFF 		bl	dacc_reset
 663              	.LVL65:
  55:../cores/arduino/AnalogOut.cpp **** #if SAM4E
 664              		.loc 1 55 0
 665 02a2 2946     		mov	r1, r5
 666 02a4 2048     		ldr	r0, .L73+8
 667 02a6 FFF7FEFF 		bl	dacc_set_transfer_mode
 668              	.LVL66:
 669 02aa FAE6     		b	.L8
 670              	.LVL67:
 671              	.L72:
 672              	.LBE151:
 673              	.LBE227:
 674              	.LBB228:
 675              	.LBB225:
 676              	.LBB223:
 677              	.LBB220:
 359:../cores/arduino/AnalogOut.cpp **** 			{
 678              		.loc 1 359 0
 679 02ac DC07     		lsls	r4, r3, #31
 361:../cores/arduino/AnalogOut.cpp **** 				TC_SetCMR_ChannelA(chTC, chNo, TC_CMR_ACPA_CLEAR | TC_CMR_ACPC_CLEAR);
 680              		.loc 1 361 0
 681 02ae 4FF00102 		mov	r2, #1
 682 02b2 5146     		mov	r1, r10
 683 02b4 4846     		mov	r0, r9
 359:../cores/arduino/AnalogOut.cpp **** 			{
 684              		.loc 1 359 0
 685 02b6 00F19080 		bmi	.L33
 686              	.LVL68:
 361:../cores/arduino/AnalogOut.cpp **** 				TC_SetCMR_ChannelA(chTC, chNo, TC_CMR_ACPA_CLEAR | TC_CMR_ACPC_CLEAR);
 687              		.loc 1 361 0
 688 02ba FFF7FEFF 		bl	tc_write_ra
 689              	.LVL69:
 690 02be 09EB8A12 		add	r2, r9, r10, lsl #6
 691              	.LBB214:
 692              	.LBB215:
 281:../cores/arduino/AnalogOut.cpp **** }
 693              		.loc 1 281 0
 694 02c2 5368     		ldr	r3, [r2, #4]
 695 02c4 23F47023 		bic	r3, r3, #983040
 696 02c8 43F42023 		orr	r3, r3, #655360
 697 02cc 5360     		str	r3, [r2, #4]
 698 02ce D7E7     		b	.L34
 699              	.LVL70:
 700              	.L55:
 701 02d0 0193     		str	r3, [sp, #4]
 702              	.LBE215:
 703              	.LBE214:
 704              	.LBE220:
 705              	.LBE223:
 706              	.LBE225:
ARM GAS  /tmp/ccQR1hla.s 			page 54


 707              	.LBE228:
 708              	.LBB229:
 709              	.LBB191:
 710              	.LBB189:
 711              	.LBB179:
 712              	.LBB178:
 713              	.LBB157:
 145:../cores/arduino/AnalogOut.cpp **** 			PWM0->PWM_SCM = 0;										// ensure no sync channels
 714              		.loc 1 145 0
 715 02d2 07AB     		add	r3, sp, #28
 139:../cores/arduino/AnalogOut.cpp **** 			pmc_enable_periph_clk(ID_PWM1);
 716              		.loc 1 139 0
 717 02d4 1F20     		movs	r0, #31
 718 02d6 0392     		str	r2, [sp, #12]
 145:../cores/arduino/AnalogOut.cpp **** 			PWM0->PWM_SCM = 0;										// ensure no sync channels
 719              		.loc 1 145 0
 720 02d8 0293     		str	r3, [sp, #8]
 139:../cores/arduino/AnalogOut.cpp **** 			pmc_enable_periph_clk(ID_PWM1);
 721              		.loc 1 139 0
 722 02da FFF7FEFF 		bl	pmc_enable_periph_clk
 723              	.LVL71:
 140:../cores/arduino/AnalogOut.cpp **** 			pwm_clock_t clockConfig;
 724              		.loc 1 140 0
 725 02de 3C20     		movs	r0, #60
 726 02e0 FFF7FEFF 		bl	pmc_enable_periph_clk
 727              	.LVL72:
 143:../cores/arduino/AnalogOut.cpp **** 			clockConfig.ul_mck = VARIANT_MCK;
 728              		.loc 1 143 0
 729 02e4 DFF850E0 		ldr	lr, .L73+24
 145:../cores/arduino/AnalogOut.cpp **** 			PWM0->PWM_SCM = 0;										// ensure no sync channels
 730              		.loc 1 145 0
 731 02e8 019B     		ldr	r3, [sp, #4]
 142:../cores/arduino/AnalogOut.cpp **** 			clockConfig.ul_clkb = PwmFastClock;
 732              		.loc 1 142 0
 733 02ea 46F24610 		movw	r0, #24902
 143:../cores/arduino/AnalogOut.cpp **** 			clockConfig.ul_mck = VARIANT_MCK;
 734              		.loc 1 143 0
 735 02ee CDF820E0 		str	lr, [sp, #32]
 144:../cores/arduino/AnalogOut.cpp **** 			pwm_init(PWM0, &clockConfig);
 736              		.loc 1 144 0
 737 02f2 DFF870E0 		ldr	lr, .L73+68
 145:../cores/arduino/AnalogOut.cpp **** 			PWM0->PWM_SCM = 0;										// ensure no sync channels
 738              		.loc 1 145 0
 739 02f6 0299     		ldr	r1, [sp, #8]
 142:../cores/arduino/AnalogOut.cpp **** 			clockConfig.ul_clkb = PwmFastClock;
 740              		.loc 1 142 0
 741 02f8 0790     		str	r0, [sp, #28]
 145:../cores/arduino/AnalogOut.cpp **** 			PWM0->PWM_SCM = 0;										// ensure no sync channels
 742              		.loc 1 145 0
 743 02fa 1846     		mov	r0, r3
 144:../cores/arduino/AnalogOut.cpp **** 			pwm_init(PWM0, &clockConfig);
 744              		.loc 1 144 0
 745 02fc CDF824E0 		str	lr, [sp, #36]
 145:../cores/arduino/AnalogOut.cpp **** 			PWM0->PWM_SCM = 0;										// ensure no sync channels
 746              		.loc 1 145 0
 747 0300 FFF7FEFF 		bl	pwm_init
 748              	.LVL73:
ARM GAS  /tmp/ccQR1hla.s 			page 55


 147:../cores/arduino/AnalogOut.cpp **** 			PWM1->PWM_SCM = 0;										// ensure no sync channels
 749              		.loc 1 147 0
 750 0304 0299     		ldr	r1, [sp, #8]
 751 0306 5846     		mov	r0, fp
 146:../cores/arduino/AnalogOut.cpp **** 			pwm_init(PWM1, &clockConfig);
 752              		.loc 1 146 0
 753 0308 9DE80C00 		ldm	sp, {r2, r3}
 754 030c 1A62     		str	r2, [r3, #32]
 147:../cores/arduino/AnalogOut.cpp **** 			PWM1->PWM_SCM = 0;										// ensure no sync channels
 755              		.loc 1 147 0
 756 030e FFF7FEFF 		bl	pwm_init
 757              	.LVL74:
 148:../cores/arduino/AnalogOut.cpp **** #else
 758              		.loc 1 148 0
 759 0312 009A     		ldr	r2, [sp]
 159:../cores/arduino/AnalogOut.cpp **** 		}
 760              		.loc 1 159 0
 761 0314 0123     		movs	r3, #1
 148:../cores/arduino/AnalogOut.cpp **** #else
 762              		.loc 1 148 0
 763 0316 CBF82020 		str	r2, [fp, #32]
 159:../cores/arduino/AnalogOut.cpp **** 		}
 764              		.loc 1 159 0
 765 031a 039A     		ldr	r2, [sp, #12]
 766 031c 1370     		strb	r3, [r2]
 767 031e F7E6     		b	.L15
 768              	.L74:
 769              		.align	2
 770              	.L73:
 771 0320 00000000 		.word	g_APinDescription
 772 0324 00000000 		.word	0
 773 0328 00000440 		.word	1074003968
 774 032c 00F07F45 		.word	1166012416
 775 0330 00000240 		.word	1073872896
 776 0334 00000000 		.word	.LANCHOR1
 777 0338 58466100 		.word	6375000
 778 033c 00000000 		.word	.LANCHOR2
 779 0340 00000000 		.word	.LANCHOR3
 780 0344 00000000 		.word	.LANCHOR4
 781 0348 00000000 		.word	.LANCHOR5
 782 034c 00000000 		.word	.LANCHOR6
 783 0350 00000000 		.word	.LANCHOR7
 784 0354 03C44A4A 		.word	1246413827
 785 0358 A3E11100 		.word	1171875
 786 035c 00000000 		.word	.LANCHOR0
 787 0360 00C00540 		.word	1074118656
 788 0364 80D1F008 		.word	150000000
 789              	.LVL75:
 790              	.L58:
 791              	.LBE157:
 792              	.LBE178:
 200:../cores/arduino/AnalogOut.cpp **** 		channelConfig.channel = chan;
 793              		.loc 1 200 0
 794 0368 DDF808A0 		ldr	r10, [sp, #8]
 795              	.LVL76:
 796 036c 3C22     		movs	r2, #60
 797 036e 049E     		ldr	r6, [sp, #16]
ARM GAS  /tmp/ccQR1hla.s 			page 56


 798 0370 0021     		movs	r1, #0
 799 0372 5046     		mov	r0, r10
 800 0374 A146     		mov	r9, r4
 801 0376 059C     		ldr	r4, [sp, #20]
 802              	.LVL77:
 803 0378 FFF7FEFF 		bl	memset
 804              	.LVL78:
 202:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_duty = duty;
 805              		.loc 1 202 0
 806 037c 602E     		cmp	r6, #96
 203:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_period = period;
 807              		.loc 1 203 0
 808 037e 039A     		ldr	r2, [sp, #12]
 206:../cores/arduino/AnalogOut.cpp **** 		pwm_channel_enable(PWMInterface, chan);
 809              		.loc 1 206 0
 810 0380 5146     		mov	r1, r10
 811 0382 4846     		mov	r0, r9
 202:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_duty = duty;
 812              		.loc 1 202 0
 813 0384 8CBF     		ite	hi
 814 0386 0C23     		movhi	r3, #12
 815 0388 0B23     		movls	r3, #11
 203:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_period = period;
 816              		.loc 1 203 0
 817 038a 0A92     		str	r2, [sp, #40]
 202:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_duty = duty;
 818              		.loc 1 202 0
 819 038c 0893     		str	r3, [sp, #32]
 201:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_prescaler = (useFastClock) ? PWM_CMR_CPRE_CLKB : PWM_CMR_CPRE_CLKA;
 820              		.loc 1 201 0
 821 038e CDF81C80 		str	r8, [sp, #28]
 204:../cores/arduino/AnalogOut.cpp **** 
 822              		.loc 1 204 0
 823 0392 CDF82CB0 		str	fp, [sp, #44]
 206:../cores/arduino/AnalogOut.cpp **** 		pwm_channel_enable(PWMInterface, chan);
 824              		.loc 1 206 0
 825 0396 FFF7FEFF 		bl	pwm_channel_init
 826              	.LVL79:
 207:../cores/arduino/AnalogOut.cpp **** 
 827              		.loc 1 207 0
 828 039a 4146     		mov	r1, r8
 829 039c 4846     		mov	r0, r9
 830 039e FFF7FEFF 		bl	pwm_channel_enable
 831              	.LVL80:
 213:../cores/arduino/AnalogOut.cpp **** 	}
 832              		.loc 1 213 0
 833 03a2 3B1B     		subs	r3, r7, r4
 834 03a4 9B00     		lsls	r3, r3, #2
 835 03a6 E918     		adds	r1, r5, r3
 836 03a8 E858     		ldr	r0, [r5, r3]
 837 03aa 4A68     		ldr	r2, [r1, #4]
 838 03ac 0B69     		ldr	r3, [r1, #16]
 839 03ae C968     		ldr	r1, [r1, #12]
 840 03b0 FFF7FEFF 		bl	pio_configure
 841              	.LVL81:
 842 03b4 59E6     		b	.L2
 843              	.LVL82:
ARM GAS  /tmp/ccQR1hla.s 			page 57


 844              	.L69:
 845              	.LBE179:
 846              	.LBE189:
 122:../cores/arduino/AnalogOut.cpp **** 		return false;
 847              		.loc 1 122 0
 848 03b6 184B     		ldr	r3, .L75
 849 03b8 23F81860 		strh	r6, [r3, r8, lsl #1]	@ movhi
 850              	.LVL83:
 851 03bc 48E6     		b	.L12
 852              	.LVL84:
 853              	.L71:
 854              	.LBE191:
 855              	.LBE229:
 856              	.LBB230:
 857              	.LBB226:
 858              	.LBB224:
 305:../cores/arduino/AnalogOut.cpp **** 		return false;
 859              		.loc 1 305 0
 860 03be 22F81360 		strh	r6, [r2, r3, lsl #1]	@ movhi
 861              	.LVL85:
 862 03c2 45E6     		b	.L12
 863              	.LVL86:
 864              	.L35:
 865              	.LBB221:
 380:../cores/arduino/AnalogOut.cpp **** 				TC_SetCMR_ChannelB(chTC, chNo, TC_CMR_BCPB_CLEAR | TC_CMR_BCPC_SET);
 866              		.loc 1 380 0
 867 03c4 FFF7FEFF 		bl	tc_write_rb
 868              	.LVL87:
 869 03c8 09EB8A12 		add	r2, r9, r10, lsl #6
 870              	.LBB216:
 871              	.LBB217:
 286:../cores/arduino/AnalogOut.cpp **** }
 872              		.loc 1 286 0
 873 03cc 5368     		ldr	r3, [r2, #4]
 874 03ce 23F07063 		bic	r3, r3, #251658240
 875 03d2 43F0C063 		orr	r3, r3, #100663296
 876 03d6 5360     		str	r3, [r2, #4]
 877 03d8 52E7     		b	.L34
 878              	.LVL88:
 879              	.L33:
 880              	.LBE217:
 881              	.LBE216:
 366:../cores/arduino/AnalogOut.cpp **** 				TC_SetCMR_ChannelB(chTC, chNo, TC_CMR_BCPB_CLEAR | TC_CMR_BCPC_CLEAR);
 882              		.loc 1 366 0
 883 03da FFF7FEFF 		bl	tc_write_rb
 884              	.LVL89:
 885 03de 09EB8A12 		add	r2, r9, r10, lsl #6
 886              	.LBB218:
 887              	.LBB219:
 286:../cores/arduino/AnalogOut.cpp **** }
 888              		.loc 1 286 0
 889 03e2 5368     		ldr	r3, [r2, #4]
 890 03e4 23F07063 		bic	r3, r3, #251658240
 891 03e8 43F02063 		orr	r3, r3, #167772160
 892 03ec 5360     		str	r3, [r2, #4]
 893 03ee 47E7     		b	.L34
 894              	.LVL90:
ARM GAS  /tmp/ccQR1hla.s 			page 58


 895              	.L14:
 896              	.LBE219:
 897              	.LBE218:
 898              	.LBE221:
 899              	.LBE224:
 900              	.LBE226:
 901              	.LBE230:
 902              	.LBB231:
 903              	.LBB192:
 904              	.LBB190:
 905              	.LBB180:
 220:../cores/arduino/AnalogOut.cpp **** 		pwm_channel_update_duty(PWMInterface, &channelConfig, ConvertRange(ulValue, channelConfig.ul_peri
 906              		.loc 1 220 0
 907 03f0 0A4B     		ldr	r3, .L75+4
 219:../cores/arduino/AnalogOut.cpp **** 		channelConfig.ul_period = (uint32_t)PWMChanPeriod[chan];
 908              		.loc 1 219 0
 909 03f2 CDF81C80 		str	r8, [sp, #28]
 220:../cores/arduino/AnalogOut.cpp **** 		pwm_channel_update_duty(PWMInterface, &channelConfig, ConvertRange(ulValue, channelConfig.ul_peri
 910              		.loc 1 220 0
 911 03f6 33F81830 		ldrh	r3, [r3, r8, lsl #1]
 912              	.LBB181:
 913              	.LBB182:
  37:../cores/arduino/AnalogOut.cpp **** }
 914              		.loc 1 37 0
 915 03fa 07EE903A 		vmov	s15, r3	@ int
 916              	.LBE182:
 917              	.LBE181:
 220:../cores/arduino/AnalogOut.cpp **** 		pwm_channel_update_duty(PWMInterface, &channelConfig, ConvertRange(ulValue, channelConfig.ul_peri
 918              		.loc 1 220 0
 919 03fe 0B93     		str	r3, [sp, #44]
 920              	.LBB186:
 921              	.LBB185:
  37:../cores/arduino/AnalogOut.cpp **** }
 922              		.loc 1 37 0
 923 0400 B8EE670A 		vcvt.f32.u32	s0, s15
 924              	.LVL91:
 925              	.LBB183:
 926              	.LBB184:
 927              		.loc 4 1659 0
 928 0404 20EE080A 		vmul.f32	s0, s0, s16
 929 0408 FFF7FEFF 		bl	lroundf
 930              	.LVL92:
 931              	.LBE184:
 932              	.LBE183:
 933              	.LBE185:
 934              	.LBE186:
 221:../cores/arduino/AnalogOut.cpp **** 	}
 935              		.loc 1 221 0
 936 040c 07A9     		add	r1, sp, #28
 937 040e 0246     		mov	r2, r0
 938 0410 4846     		mov	r0, r9
 939 0412 FFF7FEFF 		bl	pwm_channel_update_duty
 940              	.LVL93:
 941 0416 28E6     		b	.L2
 942              	.L76:
 943              		.align	2
 944              	.L75:
ARM GAS  /tmp/ccQR1hla.s 			page 59


 945 0418 00000000 		.word	.LANCHOR0
 946 041c 00000000 		.word	.LANCHOR2
 947              	.LBE180:
 948              	.LBE190:
 949              	.LBE192:
 950              	.LBE231:
 951              		.cfi_endproc
 952              	.LFE533:
 953              		.size	_Z9AnalogOuthft, .-_Z9AnalogOuthft
 954              		.global	maxPwmLoopCount
 955              		.section	.bss._ZL10PWMEnabled,"aw",%nobits
 956              		.set	.LANCHOR1,. + 0
 957              		.type	_ZL10PWMEnabled, %object
 958              		.size	_ZL10PWMEnabled, 1
 959              	_ZL10PWMEnabled:
 960 0000 00       		.space	1
 961              		.section	.bss._ZL10TCChanFreq,"aw",%nobits
 962              		.align	2
 963              		.set	.LANCHOR4,. + 0
 964              		.type	_ZL10TCChanFreq, %object
 965              		.size	_ZL10TCChanFreq, 24
 966              	_ZL10TCChanFreq:
 967 0000 00000000 		.space	24
 967      00000000 
 967      00000000 
 967      00000000 
 967      00000000 
 968              		.section	.bss._ZL11PWMChanFreq,"aw",%nobits
 969              		.align	2
 970              		.set	.LANCHOR0,. + 0
 971              		.type	_ZL11PWMChanFreq, %object
 972              		.size	_ZL11PWMChanFreq, 16
 973              	_ZL11PWMChanFreq:
 974 0000 00000000 		.space	16
 974      00000000 
 974      00000000 
 974      00000000 
 975              		.section	.bss._ZL13PWMChanPeriod,"aw",%nobits
 976              		.align	2
 977              		.set	.LANCHOR2,. + 0
 978              		.type	_ZL13PWMChanPeriod, %object
 979              		.size	_ZL13PWMChanPeriod, 16
 980              	_ZL13PWMChanPeriod:
 981 0000 00000000 		.space	16
 981      00000000 
 981      00000000 
 981      00000000 
 982              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 983              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 984              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 985              	_ZL28cpu_irq_prev_interrupt_state:
 986 0000 00       		.space	1
 987              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 988              		.align	2
 989              		.type	_ZL32cpu_irq_critical_section_counter, %object
 990              		.size	_ZL32cpu_irq_critical_section_counter, 4
 991              	_ZL32cpu_irq_critical_section_counter:
ARM GAS  /tmp/ccQR1hla.s 			page 60


 992 0000 00000000 		.space	4
 993              		.section	.bss.maxPwmLoopCount,"aw",%nobits
 994              		.align	2
 995              		.set	.LANCHOR3,. + 0
 996              		.type	maxPwmLoopCount, %object
 997              		.size	maxPwmLoopCount, 4
 998              	maxPwmLoopCount:
 999 0000 00000000 		.space	4
 1000              		.section	.rodata._ZL11channelToId,"a",%progbits
 1001              		.align	2
 1002              		.set	.LANCHOR7,. + 0
 1003              		.type	_ZL11channelToId, %object
 1004              		.size	_ZL11channelToId, 12
 1005              	_ZL11channelToId:
 1006 0000 17       		.byte	23
 1007 0001 18       		.byte	24
 1008 0002 19       		.byte	25
 1009 0003 1A       		.byte	26
 1010 0004 1B       		.byte	27
 1011 0005 1C       		.byte	28
 1012 0006 2F       		.byte	47
 1013 0007 30       		.byte	48
 1014 0008 31       		.byte	49
 1015 0009 32       		.byte	50
 1016 000a 33       		.byte	51
 1017 000b 34       		.byte	52
 1018              		.section	.rodata._ZL11channelToTC,"a",%progbits
 1019              		.align	2
 1020              		.set	.LANCHOR5,. + 0
 1021              		.type	_ZL11channelToTC, %object
 1022              		.size	_ZL11channelToTC, 48
 1023              	_ZL11channelToTC:
 1024 0000 00C00040 		.word	1073790976
 1025 0004 00C00040 		.word	1073790976
 1026 0008 00C00040 		.word	1073790976
 1027 000c 00000140 		.word	1073807360
 1028 0010 00000140 		.word	1073807360
 1029 0014 00000140 		.word	1073807360
 1030 0018 00400140 		.word	1073823744
 1031 001c 00400140 		.word	1073823744
 1032 0020 00400140 		.word	1073823744
 1033 0024 00400540 		.word	1074085888
 1034 0028 00400540 		.word	1074085888
 1035 002c 00400540 		.word	1074085888
 1036              		.section	.rodata._ZL13channelToChNo,"a",%progbits
 1037              		.align	2
 1038              		.set	.LANCHOR6,. + 0
 1039              		.type	_ZL13channelToChNo, %object
 1040              		.size	_ZL13channelToChNo, 12
 1041              	_ZL13channelToChNo:
 1042 0000 00       		.byte	0
 1043 0001 01       		.byte	1
 1044 0002 02       		.byte	2
 1045 0003 00       		.byte	0
 1046 0004 01       		.byte	1
 1047 0005 02       		.byte	2
 1048 0006 00       		.byte	0
ARM GAS  /tmp/ccQR1hla.s 			page 61


 1049 0007 01       		.byte	1
 1050 0008 02       		.byte	2
 1051 0009 00       		.byte	0
 1052 000a 01       		.byte	1
 1053 000b 02       		.byte	2
 1054              		.text
 1055              	.Letext0:
 1056              		.file 5 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1057              		.file 6 "/usr/include/newlib/machine/_default_types.h"
 1058              		.file 7 "/usr/include/newlib/sys/_stdint.h"
 1059              		.file 8 "/usr/include/newlib/stdint.h"
 1060              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 1061              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1062              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/dac
 1063              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pio
 1064              		.file 13 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pwm
 1065              		.file 14 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/tc.
 1066              		.file 15 "/usr/include/newlib/sys/lock.h"
 1067              		.file 16 "/usr/include/newlib/sys/_types.h"
 1068              		.file 17 "/usr/include/newlib/sys/reent.h"
 1069              		.file 18 "/usr/include/newlib/c++/6.3.1/cstdlib"
 1070              		.file 19 "/usr/include/newlib/c++/6.3.1/cstdint"
 1071              		.file 20 "/usr/include/newlib/c++/6.3.1/cstddef"
 1072              		.file 21 "/usr/include/newlib/c++/6.3.1/arm-none-eabi/thumb/v7e-m/fpv5/hard/bits/c++config.h"
 1073              		.file 22 "/usr/include/newlib/stdlib.h"
 1074              		.file 23 "/usr/include/newlib/c++/6.3.1/stdlib.h"
 1075              		.file 24 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1076              		.file 25 "/usr/include/newlib/math.h"
 1077              		.file 26 "/usr/include/newlib/c++/6.3.1/math.h"
 1078              		.file 27 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pio/pio.h"
 1079              		.file 28 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pwm/pwm.h"
 1080              		.file 29 "../cores/arduino/Core.h"
 1081              		.file 30 "/usr/include/newlib/ctype.h"
 1082              		.file 31 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/RingBuffer.h"
 1083              		.file 32 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h"
 1084              		.file 33 "/usr/include/newlib/time.h"
 1085              		.file 34 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 1086              		.file 35 "../cores/arduino/USB/USBSerial.h"
 1087              		.file 36 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/dacc/dacc.h"
 1088              		.file 37 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 1089              		.file 38 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/tc/tc.h"
 1090              		.file 39 "<built-in>"
 1091              		.file 40 "../cores/arduino/Print.h"
 1092              		.section	.debug_info,"",%progbits
 1093              	.Ldebug_info0:
 1094 0000 4C320000 		.4byte	0x324c
 1095 0004 0400     		.2byte	0x4
 1096 0006 00000000 		.4byte	.Ldebug_abbrev0
 1097 000a 04       		.byte	0x4
 1098 000b 01       		.uleb128 0x1
 1099 000c 15120000 		.4byte	.LASF675
 1100 0010 04       		.byte	0x4
 1101 0011 E7010000 		.4byte	.LASF676
 1102 0015 78060000 		.4byte	.LASF677
 1103 0019 A8010000 		.4byte	.Ldebug_ranges0+0x1a8
 1104 001d 00000000 		.4byte	0
 1105 0021 00000000 		.4byte	.Ldebug_line0
ARM GAS  /tmp/ccQR1hla.s 			page 62


 1106 0025 02       		.uleb128 0x2
 1107 0026 04       		.byte	0x4
 1108 0027 04       		.byte	0x4
 1109 0028 EF080000 		.4byte	.LASF0
 1110 002c 02       		.uleb128 0x2
 1111 002d 04       		.byte	0x4
 1112 002e 07       		.byte	0x7
 1113 002f 011F0000 		.4byte	.LASF1
 1114 0033 03       		.uleb128 0x3
 1115 0034 04       		.byte	0x4
 1116 0035 05       		.byte	0x5
 1117 0036 696E7400 		.ascii	"int\000"
 1118 003a 02       		.uleb128 0x2
 1119 003b 02       		.byte	0x2
 1120 003c 07       		.byte	0x7
 1121 003d B0110000 		.4byte	.LASF2
 1122 0041 04       		.uleb128 0x4
 1123 0042 B90B0000 		.4byte	.LASF7
 1124 0046 05       		.byte	0x5
 1125 0047 D8       		.byte	0xd8
 1126 0048 2C000000 		.4byte	0x2c
 1127 004c 05       		.uleb128 0x5
 1128 004d 41000000 		.4byte	0x41
 1129 0051 05       		.uleb128 0x5
 1130 0052 2C000000 		.4byte	0x2c
 1131 0056 06       		.uleb128 0x6
 1132 0057 10       		.byte	0x10
 1133 0058 05       		.byte	0x5
 1134 0059 AA01     		.2byte	0x1aa
 1135 005b 9B040000 		.4byte	.LASF468
 1136 005f 7E000000 		.4byte	0x7e
 1137 0063 07       		.uleb128 0x7
 1138 0064 A9030000 		.4byte	.LASF3
 1139 0068 05       		.byte	0x5
 1140 0069 AB01     		.2byte	0x1ab
 1141 006b 7E000000 		.4byte	0x7e
 1142 006f 00       		.byte	0
 1143 0070 07       		.uleb128 0x7
 1144 0071 89030000 		.4byte	.LASF4
 1145 0075 05       		.byte	0x5
 1146 0076 AC01     		.2byte	0x1ac
 1147 0078 85000000 		.4byte	0x85
 1148 007c 08       		.byte	0x8
 1149 007d 00       		.byte	0
 1150 007e 02       		.uleb128 0x2
 1151 007f 08       		.byte	0x8
 1152 0080 05       		.byte	0x5
 1153 0081 F11C0000 		.4byte	.LASF5
 1154 0085 02       		.uleb128 0x2
 1155 0086 08       		.byte	0x8
 1156 0087 04       		.byte	0x4
 1157 0088 96150000 		.4byte	.LASF6
 1158 008c 08       		.uleb128 0x8
 1159 008d 6B110000 		.4byte	.LASF8
 1160 0091 05       		.byte	0x5
 1161 0092 AD01     		.2byte	0x1ad
 1162 0094 56000000 		.4byte	0x56
ARM GAS  /tmp/ccQR1hla.s 			page 63


 1163 0098 09       		.uleb128 0x9
 1164 0099 890E0000 		.4byte	.LASF678
 1165 009d 04       		.uleb128 0x4
 1166 009e 3D1E0000 		.4byte	.LASF9
 1167 00a2 06       		.byte	0x6
 1168 00a3 1B       		.byte	0x1b
 1169 00a4 A8000000 		.4byte	0xa8
 1170 00a8 02       		.uleb128 0x2
 1171 00a9 01       		.byte	0x1
 1172 00aa 06       		.byte	0x6
 1173 00ab D6110000 		.4byte	.LASF10
 1174 00af 04       		.uleb128 0x4
 1175 00b0 A9000000 		.4byte	.LASF11
 1176 00b4 06       		.byte	0x6
 1177 00b5 1D       		.byte	0x1d
 1178 00b6 BA000000 		.4byte	0xba
 1179 00ba 02       		.uleb128 0x2
 1180 00bb 01       		.byte	0x1
 1181 00bc 08       		.byte	0x8
 1182 00bd 8B080000 		.4byte	.LASF12
 1183 00c1 04       		.uleb128 0x4
 1184 00c2 94070000 		.4byte	.LASF13
 1185 00c6 06       		.byte	0x6
 1186 00c7 29       		.byte	0x29
 1187 00c8 CC000000 		.4byte	0xcc
 1188 00cc 02       		.uleb128 0x2
 1189 00cd 02       		.byte	0x2
 1190 00ce 05       		.byte	0x5
 1191 00cf 4B1F0000 		.4byte	.LASF14
 1192 00d3 04       		.uleb128 0x4
 1193 00d4 9E070000 		.4byte	.LASF15
 1194 00d8 06       		.byte	0x6
 1195 00d9 2B       		.byte	0x2b
 1196 00da 3A000000 		.4byte	0x3a
 1197 00de 04       		.uleb128 0x4
 1198 00df 22190000 		.4byte	.LASF16
 1199 00e3 06       		.byte	0x6
 1200 00e4 3F       		.byte	0x3f
 1201 00e5 E9000000 		.4byte	0xe9
 1202 00e9 02       		.uleb128 0x2
 1203 00ea 04       		.byte	0x4
 1204 00eb 05       		.byte	0x5
 1205 00ec 61140000 		.4byte	.LASF17
 1206 00f0 04       		.uleb128 0x4
 1207 00f1 34190000 		.4byte	.LASF18
 1208 00f5 06       		.byte	0x6
 1209 00f6 41       		.byte	0x41
 1210 00f7 FB000000 		.4byte	0xfb
 1211 00fb 02       		.uleb128 0x2
 1212 00fc 04       		.byte	0x4
 1213 00fd 07       		.byte	0x7
 1214 00fe 09160000 		.4byte	.LASF19
 1215 0102 04       		.uleb128 0x4
 1216 0103 CA0D0000 		.4byte	.LASF20
 1217 0107 06       		.byte	0x6
 1218 0108 59       		.byte	0x59
 1219 0109 7E000000 		.4byte	0x7e
ARM GAS  /tmp/ccQR1hla.s 			page 64


 1220 010d 04       		.uleb128 0x4
 1221 010e D40D0000 		.4byte	.LASF21
 1222 0112 06       		.byte	0x6
 1223 0113 5B       		.byte	0x5b
 1224 0114 18010000 		.4byte	0x118
 1225 0118 02       		.uleb128 0x2
 1226 0119 08       		.byte	0x8
 1227 011a 07       		.byte	0x7
 1228 011b 371B0000 		.4byte	.LASF22
 1229 011f 04       		.uleb128 0x4
 1230 0120 910A0000 		.4byte	.LASF23
 1231 0124 06       		.byte	0x6
 1232 0125 78       		.byte	0x78
 1233 0126 A8000000 		.4byte	0xa8
 1234 012a 04       		.uleb128 0x4
 1235 012b AC140000 		.4byte	.LASF24
 1236 012f 06       		.byte	0x6
 1237 0130 7A       		.byte	0x7a
 1238 0131 BA000000 		.4byte	0xba
 1239 0135 04       		.uleb128 0x4
 1240 0136 7D190000 		.4byte	.LASF25
 1241 013a 06       		.byte	0x6
 1242 013b 92       		.byte	0x92
 1243 013c CC000000 		.4byte	0xcc
 1244 0140 04       		.uleb128 0x4
 1245 0141 37130000 		.4byte	.LASF26
 1246 0145 06       		.byte	0x6
 1247 0146 94       		.byte	0x94
 1248 0147 3A000000 		.4byte	0x3a
 1249 014b 04       		.uleb128 0x4
 1250 014c 250C0000 		.4byte	.LASF27
 1251 0150 06       		.byte	0x6
 1252 0151 A8       		.byte	0xa8
 1253 0152 E9000000 		.4byte	0xe9
 1254 0156 04       		.uleb128 0x4
 1255 0157 C4040000 		.4byte	.LASF28
 1256 015b 06       		.byte	0x6
 1257 015c AA       		.byte	0xaa
 1258 015d FB000000 		.4byte	0xfb
 1259 0161 04       		.uleb128 0x4
 1260 0162 1D000000 		.4byte	.LASF29
 1261 0166 06       		.byte	0x6
 1262 0167 BA       		.byte	0xba
 1263 0168 7E000000 		.4byte	0x7e
 1264 016c 04       		.uleb128 0x4
 1265 016d F6180000 		.4byte	.LASF30
 1266 0171 06       		.byte	0x6
 1267 0172 BC       		.byte	0xbc
 1268 0173 18010000 		.4byte	0x118
 1269 0177 04       		.uleb128 0x4
 1270 0178 D6070000 		.4byte	.LASF31
 1271 017c 06       		.byte	0x6
 1272 017d C8       		.byte	0xc8
 1273 017e 33000000 		.4byte	0x33
 1274 0182 04       		.uleb128 0x4
 1275 0183 CF160000 		.4byte	.LASF32
 1276 0187 06       		.byte	0x6
ARM GAS  /tmp/ccQR1hla.s 			page 65


 1277 0188 CA       		.byte	0xca
 1278 0189 2C000000 		.4byte	0x2c
 1279 018d 04       		.uleb128 0x4
 1280 018e 69100000 		.4byte	.LASF33
 1281 0192 07       		.byte	0x7
 1282 0193 14       		.byte	0x14
 1283 0194 9D000000 		.4byte	0x9d
 1284 0198 04       		.uleb128 0x4
 1285 0199 E00B0000 		.4byte	.LASF34
 1286 019d 07       		.byte	0x7
 1287 019e 18       		.byte	0x18
 1288 019f AF000000 		.4byte	0xaf
 1289 01a3 05       		.uleb128 0x5
 1290 01a4 98010000 		.4byte	0x198
 1291 01a8 04       		.uleb128 0x4
 1292 01a9 A1110000 		.4byte	.LASF35
 1293 01ad 07       		.byte	0x7
 1294 01ae 20       		.byte	0x20
 1295 01af C1000000 		.4byte	0xc1
 1296 01b3 04       		.uleb128 0x4
 1297 01b4 06020000 		.4byte	.LASF36
 1298 01b8 07       		.byte	0x7
 1299 01b9 24       		.byte	0x24
 1300 01ba D3000000 		.4byte	0xd3
 1301 01be 04       		.uleb128 0x4
 1302 01bf 17040000 		.4byte	.LASF37
 1303 01c3 07       		.byte	0x7
 1304 01c4 2C       		.byte	0x2c
 1305 01c5 DE000000 		.4byte	0xde
 1306 01c9 0A       		.uleb128 0xa
 1307 01ca BE010000 		.4byte	0x1be
 1308 01ce 04       		.uleb128 0x4
 1309 01cf 3A150000 		.4byte	.LASF38
 1310 01d3 07       		.byte	0x7
 1311 01d4 30       		.byte	0x30
 1312 01d5 F0000000 		.4byte	0xf0
 1313 01d9 0A       		.uleb128 0xa
 1314 01da CE010000 		.4byte	0x1ce
 1315 01de 05       		.uleb128 0x5
 1316 01df CE010000 		.4byte	0x1ce
 1317 01e3 04       		.uleb128 0x4
 1318 01e4 2D180000 		.4byte	.LASF39
 1319 01e8 07       		.byte	0x7
 1320 01e9 38       		.byte	0x38
 1321 01ea 02010000 		.4byte	0x102
 1322 01ee 04       		.uleb128 0x4
 1323 01ef 77090000 		.4byte	.LASF40
 1324 01f3 07       		.byte	0x7
 1325 01f4 3C       		.byte	0x3c
 1326 01f5 0D010000 		.4byte	0x10d
 1327 01f9 04       		.uleb128 0x4
 1328 01fa 27150000 		.4byte	.LASF41
 1329 01fe 07       		.byte	0x7
 1330 01ff 43       		.byte	0x43
 1331 0200 77010000 		.4byte	0x177
 1332 0204 04       		.uleb128 0x4
 1333 0205 7E150000 		.4byte	.LASF42
ARM GAS  /tmp/ccQR1hla.s 			page 66


 1334 0209 07       		.byte	0x7
 1335 020a 48       		.byte	0x48
 1336 020b 82010000 		.4byte	0x182
 1337 020f 04       		.uleb128 0x4
 1338 0210 F7050000 		.4byte	.LASF43
 1339 0214 08       		.byte	0x8
 1340 0215 15       		.byte	0x15
 1341 0216 1F010000 		.4byte	0x11f
 1342 021a 04       		.uleb128 0x4
 1343 021b 4C180000 		.4byte	.LASF44
 1344 021f 08       		.byte	0x8
 1345 0220 16       		.byte	0x16
 1346 0221 2A010000 		.4byte	0x12a
 1347 0225 04       		.uleb128 0x4
 1348 0226 4F1D0000 		.4byte	.LASF45
 1349 022a 08       		.byte	0x8
 1350 022b 1B       		.byte	0x1b
 1351 022c 35010000 		.4byte	0x135
 1352 0230 04       		.uleb128 0x4
 1353 0231 82160000 		.4byte	.LASF46
 1354 0235 08       		.byte	0x8
 1355 0236 1C       		.byte	0x1c
 1356 0237 40010000 		.4byte	0x140
 1357 023b 04       		.uleb128 0x4
 1358 023c 9D100000 		.4byte	.LASF47
 1359 0240 08       		.byte	0x8
 1360 0241 21       		.byte	0x21
 1361 0242 4B010000 		.4byte	0x14b
 1362 0246 04       		.uleb128 0x4
 1363 0247 1D090000 		.4byte	.LASF48
 1364 024b 08       		.byte	0x8
 1365 024c 22       		.byte	0x22
 1366 024d 56010000 		.4byte	0x156
 1367 0251 04       		.uleb128 0x4
 1368 0252 45050000 		.4byte	.LASF49
 1369 0256 08       		.byte	0x8
 1370 0257 27       		.byte	0x27
 1371 0258 61010000 		.4byte	0x161
 1372 025c 04       		.uleb128 0x4
 1373 025d 310E0000 		.4byte	.LASF50
 1374 0261 08       		.byte	0x8
 1375 0262 28       		.byte	0x28
 1376 0263 6C010000 		.4byte	0x16c
 1377 0267 04       		.uleb128 0x4
 1378 0268 601C0000 		.4byte	.LASF51
 1379 026c 08       		.byte	0x8
 1380 026d 33       		.byte	0x33
 1381 026e 33000000 		.4byte	0x33
 1382 0272 04       		.uleb128 0x4
 1383 0273 381F0000 		.4byte	.LASF52
 1384 0277 08       		.byte	0x8
 1385 0278 34       		.byte	0x34
 1386 0279 2C000000 		.4byte	0x2c
 1387 027d 04       		.uleb128 0x4
 1388 027e 940F0000 		.4byte	.LASF53
 1389 0282 08       		.byte	0x8
 1390 0283 3D       		.byte	0x3d
ARM GAS  /tmp/ccQR1hla.s 			page 67


 1391 0284 33000000 		.4byte	0x33
 1392 0288 04       		.uleb128 0x4
 1393 0289 8F100000 		.4byte	.LASF54
 1394 028d 08       		.byte	0x8
 1395 028e 3E       		.byte	0x3e
 1396 028f 2C000000 		.4byte	0x2c
 1397 0293 04       		.uleb128 0x4
 1398 0294 D2010000 		.4byte	.LASF55
 1399 0298 08       		.byte	0x8
 1400 0299 47       		.byte	0x47
 1401 029a 33000000 		.4byte	0x33
 1402 029e 04       		.uleb128 0x4
 1403 029f C7020000 		.4byte	.LASF56
 1404 02a3 08       		.byte	0x8
 1405 02a4 48       		.byte	0x48
 1406 02a5 2C000000 		.4byte	0x2c
 1407 02a9 04       		.uleb128 0x4
 1408 02aa BA160000 		.4byte	.LASF57
 1409 02ae 08       		.byte	0x8
 1410 02af 51       		.byte	0x51
 1411 02b0 7E000000 		.4byte	0x7e
 1412 02b4 04       		.uleb128 0x4
 1413 02b5 5A170000 		.4byte	.LASF58
 1414 02b9 08       		.byte	0x8
 1415 02ba 52       		.byte	0x52
 1416 02bb 18010000 		.4byte	0x118
 1417 02bf 04       		.uleb128 0x4
 1418 02c0 1F040000 		.4byte	.LASF59
 1419 02c4 08       		.byte	0x8
 1420 02c5 82       		.byte	0x82
 1421 02c6 7E000000 		.4byte	0x7e
 1422 02ca 04       		.uleb128 0x4
 1423 02cb 49040000 		.4byte	.LASF60
 1424 02cf 08       		.byte	0x8
 1425 02d0 8B       		.byte	0x8b
 1426 02d1 18010000 		.4byte	0x118
 1427 02d5 0B       		.uleb128 0xb
 1428 02d6 04       		.byte	0x4
 1429 02d7 0C       		.uleb128 0xc
 1430 02d8 D9010000 		.4byte	0x1d9
 1431 02dc E7020000 		.4byte	0x2e7
 1432 02e0 0D       		.uleb128 0xd
 1433 02e1 EC020000 		.4byte	0x2ec
 1434 02e5 07       		.byte	0x7
 1435 02e6 00       		.byte	0
 1436 02e7 0A       		.uleb128 0xa
 1437 02e8 D7020000 		.4byte	0x2d7
 1438 02ec 02       		.uleb128 0x2
 1439 02ed 04       		.byte	0x4
 1440 02ee 07       		.byte	0x7
 1441 02ef 3B110000 		.4byte	.LASF61
 1442 02f3 0C       		.uleb128 0xc
 1443 02f4 D9010000 		.4byte	0x1d9
 1444 02f8 03030000 		.4byte	0x303
 1445 02fc 0D       		.uleb128 0xd
 1446 02fd EC020000 		.4byte	0x2ec
 1447 0301 01       		.byte	0x1
ARM GAS  /tmp/ccQR1hla.s 			page 68


 1448 0302 00       		.byte	0
 1449 0303 0A       		.uleb128 0xa
 1450 0304 F3020000 		.4byte	0x2f3
 1451 0308 0C       		.uleb128 0xc
 1452 0309 D9010000 		.4byte	0x1d9
 1453 030d 18030000 		.4byte	0x318
 1454 0311 0D       		.uleb128 0xd
 1455 0312 EC020000 		.4byte	0x2ec
 1456 0316 04       		.byte	0x4
 1457 0317 00       		.byte	0
 1458 0318 0A       		.uleb128 0xa
 1459 0319 08030000 		.4byte	0x308
 1460 031d 0E       		.uleb128 0xe
 1461 031e 1F1B0000 		.4byte	.LASF62
 1462 0322 09       		.byte	0x9
 1463 0323 6508     		.2byte	0x865
 1464 0325 C9010000 		.4byte	0x1c9
 1465 0329 0F       		.uleb128 0xf
 1466 032a 81130000 		.4byte	.LASF63
 1467 032e 0A       		.byte	0xa
 1468 032f 3A       		.byte	0x3a
 1469 0330 CE010000 		.4byte	0x1ce
 1470 0334 0C       		.uleb128 0xc
 1471 0335 D9010000 		.4byte	0x1d9
 1472 0339 44030000 		.4byte	0x344
 1473 033d 0D       		.uleb128 0xd
 1474 033e EC020000 		.4byte	0x2ec
 1475 0342 06       		.byte	0x6
 1476 0343 00       		.byte	0
 1477 0344 0A       		.uleb128 0xa
 1478 0345 34030000 		.4byte	0x334
 1479 0349 0C       		.uleb128 0xc
 1480 034a D9010000 		.4byte	0x1d9
 1481 034e 59030000 		.4byte	0x359
 1482 0352 0D       		.uleb128 0xd
 1483 0353 EC020000 		.4byte	0x2ec
 1484 0357 17       		.byte	0x17
 1485 0358 00       		.byte	0
 1486 0359 0A       		.uleb128 0xa
 1487 035a 49030000 		.4byte	0x349
 1488 035e 0C       		.uleb128 0xc
 1489 035f D9010000 		.4byte	0x1d9
 1490 0363 6E030000 		.4byte	0x36e
 1491 0367 0D       		.uleb128 0xd
 1492 0368 EC020000 		.4byte	0x2ec
 1493 036c 12       		.byte	0x12
 1494 036d 00       		.byte	0
 1495 036e 0A       		.uleb128 0xa
 1496 036f 5E030000 		.4byte	0x35e
 1497 0373 0C       		.uleb128 0xc
 1498 0374 D9010000 		.4byte	0x1d9
 1499 0378 83030000 		.4byte	0x383
 1500 037c 0D       		.uleb128 0xd
 1501 037d EC020000 		.4byte	0x2ec
 1502 0381 05       		.byte	0x5
 1503 0382 00       		.byte	0
 1504 0383 0A       		.uleb128 0xa
ARM GAS  /tmp/ccQR1hla.s 			page 69


 1505 0384 73030000 		.4byte	0x373
 1506 0388 10       		.uleb128 0x10
 1507 0389 EC       		.byte	0xec
 1508 038a 0B       		.byte	0xb
 1509 038b 38       		.byte	0x38
 1510 038c 451F0000 		.4byte	.LASF147
 1511 0390 61040000 		.4byte	0x461
 1512 0394 11       		.uleb128 0x11
 1513 0395 C7160000 		.4byte	.LASF64
 1514 0399 0B       		.byte	0xb
 1515 039a 39       		.byte	0x39
 1516 039b D9010000 		.4byte	0x1d9
 1517 039f 00       		.byte	0
 1518 03a0 11       		.uleb128 0x11
 1519 03a1 2C1C0000 		.4byte	.LASF65
 1520 03a5 0B       		.byte	0xb
 1521 03a6 3A       		.byte	0x3a
 1522 03a7 D9010000 		.4byte	0x1d9
 1523 03ab 04       		.byte	0x4
 1524 03ac 11       		.uleb128 0x11
 1525 03ad C20C0000 		.4byte	.LASF66
 1526 03b1 0B       		.byte	0xb
 1527 03b2 3B       		.byte	0x3b
 1528 03b3 D9010000 		.4byte	0x1d9
 1529 03b7 08       		.byte	0x8
 1530 03b8 11       		.uleb128 0x11
 1531 03b9 971E0000 		.4byte	.LASF67
 1532 03bd 0B       		.byte	0xb
 1533 03be 3C       		.byte	0x3c
 1534 03bf 71040000 		.4byte	0x471
 1535 03c3 0C       		.byte	0xc
 1536 03c4 11       		.uleb128 0x11
 1537 03c5 C0150000 		.4byte	.LASF68
 1538 03c9 0B       		.byte	0xb
 1539 03ca 3D       		.byte	0x3d
 1540 03cb D9010000 		.4byte	0x1d9
 1541 03cf 10       		.byte	0x10
 1542 03d0 11       		.uleb128 0x11
 1543 03d1 30150000 		.4byte	.LASF69
 1544 03d5 0B       		.byte	0xb
 1545 03d6 3E       		.byte	0x3e
 1546 03d7 D9010000 		.4byte	0x1d9
 1547 03db 14       		.byte	0x14
 1548 03dc 11       		.uleb128 0x11
 1549 03dd A11C0000 		.4byte	.LASF70
 1550 03e1 0B       		.byte	0xb
 1551 03e2 3F       		.byte	0x3f
 1552 03e3 D9010000 		.4byte	0x1d9
 1553 03e7 18       		.byte	0x18
 1554 03e8 11       		.uleb128 0x11
 1555 03e9 A2150000 		.4byte	.LASF71
 1556 03ed 0B       		.byte	0xb
 1557 03ee 40       		.byte	0x40
 1558 03ef 03030000 		.4byte	0x303
 1559 03f3 1C       		.byte	0x1c
 1560 03f4 11       		.uleb128 0x11
 1561 03f5 C7080000 		.4byte	.LASF72
ARM GAS  /tmp/ccQR1hla.s 			page 70


 1562 03f9 0B       		.byte	0xb
 1563 03fa 41       		.byte	0x41
 1564 03fb D9010000 		.4byte	0x1d9
 1565 03ff 24       		.byte	0x24
 1566 0400 11       		.uleb128 0x11
 1567 0401 46080000 		.4byte	.LASF73
 1568 0405 0B       		.byte	0xb
 1569 0406 42       		.byte	0x42
 1570 0407 D9010000 		.4byte	0x1d9
 1571 040b 28       		.byte	0x28
 1572 040c 11       		.uleb128 0x11
 1573 040d 570C0000 		.4byte	.LASF74
 1574 0411 0B       		.byte	0xb
 1575 0412 43       		.byte	0x43
 1576 0413 D9010000 		.4byte	0x1d9
 1577 0417 2C       		.byte	0x2c
 1578 0418 11       		.uleb128 0x11
 1579 0419 8B0F0000 		.4byte	.LASF75
 1580 041d 0B       		.byte	0xb
 1581 041e 44       		.byte	0x44
 1582 041f D9010000 		.4byte	0x1d9
 1583 0423 30       		.byte	0x30
 1584 0424 11       		.uleb128 0x11
 1585 0425 A11E0000 		.4byte	.LASF76
 1586 0429 0B       		.byte	0xb
 1587 042a 45       		.byte	0x45
 1588 042b 59030000 		.4byte	0x359
 1589 042f 34       		.byte	0x34
 1590 0430 11       		.uleb128 0x11
 1591 0431 400E0000 		.4byte	.LASF77
 1592 0435 0B       		.byte	0xb
 1593 0436 46       		.byte	0x46
 1594 0437 D9010000 		.4byte	0x1d9
 1595 043b 94       		.byte	0x94
 1596 043c 11       		.uleb128 0x11
 1597 043d AB1E0000 		.4byte	.LASF78
 1598 0441 0B       		.byte	0xb
 1599 0442 47       		.byte	0x47
 1600 0443 6E030000 		.4byte	0x36e
 1601 0447 98       		.byte	0x98
 1602 0448 11       		.uleb128 0x11
 1603 0449 80070000 		.4byte	.LASF79
 1604 044d 0B       		.byte	0xb
 1605 044e 48       		.byte	0x48
 1606 044f D9010000 		.4byte	0x1d9
 1607 0453 E4       		.byte	0xe4
 1608 0454 11       		.uleb128 0x11
 1609 0455 260A0000 		.4byte	.LASF80
 1610 0459 0B       		.byte	0xb
 1611 045a 49       		.byte	0x49
 1612 045b D9010000 		.4byte	0x1d9
 1613 045f E8       		.byte	0xe8
 1614 0460 00       		.byte	0
 1615 0461 0C       		.uleb128 0xc
 1616 0462 D9010000 		.4byte	0x1d9
 1617 0466 71040000 		.4byte	0x471
 1618 046a 0D       		.uleb128 0xd
ARM GAS  /tmp/ccQR1hla.s 			page 71


 1619 046b EC020000 		.4byte	0x2ec
 1620 046f 00       		.byte	0
 1621 0470 00       		.byte	0
 1622 0471 0A       		.uleb128 0xa
 1623 0472 61040000 		.4byte	0x461
 1624 0476 04       		.uleb128 0x4
 1625 0477 9E020000 		.4byte	.LASF81
 1626 047b 0B       		.byte	0xb
 1627 047c 4A       		.byte	0x4a
 1628 047d 88030000 		.4byte	0x388
 1629 0481 0C       		.uleb128 0xc
 1630 0482 D9010000 		.4byte	0x1d9
 1631 0486 91040000 		.4byte	0x491
 1632 048a 0D       		.uleb128 0xd
 1633 048b EC020000 		.4byte	0x2ec
 1634 048f 0C       		.byte	0xc
 1635 0490 00       		.byte	0
 1636 0491 0A       		.uleb128 0xa
 1637 0492 81040000 		.4byte	0x481
 1638 0496 0C       		.uleb128 0xc
 1639 0497 D9010000 		.4byte	0x1d9
 1640 049b A6040000 		.4byte	0x4a6
 1641 049f 0D       		.uleb128 0xd
 1642 04a0 EC020000 		.4byte	0x2ec
 1643 04a4 02       		.byte	0x2
 1644 04a5 00       		.byte	0
 1645 04a6 0A       		.uleb128 0xa
 1646 04a7 96040000 		.4byte	0x496
 1647 04ab 12       		.uleb128 0x12
 1648 04ac 6801     		.2byte	0x168
 1649 04ae 0C       		.byte	0xc
 1650 04af 38       		.byte	0x38
 1651 04b0 660B0000 		.4byte	.LASF164
 1652 04b4 F3070000 		.4byte	0x7f3
 1653 04b8 11       		.uleb128 0x11
 1654 04b9 AD170000 		.4byte	.LASF82
 1655 04bd 0C       		.byte	0xc
 1656 04be 39       		.byte	0x39
 1657 04bf D9010000 		.4byte	0x1d9
 1658 04c3 00       		.byte	0
 1659 04c4 11       		.uleb128 0x11
 1660 04c5 41170000 		.4byte	.LASF83
 1661 04c9 0C       		.byte	0xc
 1662 04ca 3A       		.byte	0x3a
 1663 04cb D9010000 		.4byte	0x1d9
 1664 04cf 04       		.byte	0x4
 1665 04d0 11       		.uleb128 0x11
 1666 04d1 131F0000 		.4byte	.LASF84
 1667 04d5 0C       		.byte	0xc
 1668 04d6 3B       		.byte	0x3b
 1669 04d7 D9010000 		.4byte	0x1d9
 1670 04db 08       		.byte	0x8
 1671 04dc 11       		.uleb128 0x11
 1672 04dd 971E0000 		.4byte	.LASF67
 1673 04e1 0C       		.byte	0xc
 1674 04e2 3C       		.byte	0x3c
 1675 04e3 71040000 		.4byte	0x471
ARM GAS  /tmp/ccQR1hla.s 			page 72


 1676 04e7 0C       		.byte	0xc
 1677 04e8 11       		.uleb128 0x11
 1678 04e9 43150000 		.4byte	.LASF85
 1679 04ed 0C       		.byte	0xc
 1680 04ee 3D       		.byte	0x3d
 1681 04ef D9010000 		.4byte	0x1d9
 1682 04f3 10       		.byte	0x10
 1683 04f4 11       		.uleb128 0x11
 1684 04f5 CC140000 		.4byte	.LASF86
 1685 04f9 0C       		.byte	0xc
 1686 04fa 3E       		.byte	0x3e
 1687 04fb D9010000 		.4byte	0x1d9
 1688 04ff 14       		.byte	0x14
 1689 0500 11       		.uleb128 0x11
 1690 0501 3B1C0000 		.4byte	.LASF87
 1691 0505 0C       		.byte	0xc
 1692 0506 3F       		.byte	0x3f
 1693 0507 D9010000 		.4byte	0x1d9
 1694 050b 18       		.byte	0x18
 1695 050c 11       		.uleb128 0x11
 1696 050d A11E0000 		.4byte	.LASF76
 1697 0511 0C       		.byte	0xc
 1698 0512 40       		.byte	0x40
 1699 0513 71040000 		.4byte	0x471
 1700 0517 1C       		.byte	0x1c
 1701 0518 11       		.uleb128 0x11
 1702 0519 E2110000 		.4byte	.LASF88
 1703 051d 0C       		.byte	0xc
 1704 051e 41       		.byte	0x41
 1705 051f D9010000 		.4byte	0x1d9
 1706 0523 20       		.byte	0x20
 1707 0524 11       		.uleb128 0x11
 1708 0525 32110000 		.4byte	.LASF89
 1709 0529 0C       		.byte	0xc
 1710 052a 42       		.byte	0x42
 1711 052b D9010000 		.4byte	0x1d9
 1712 052f 24       		.byte	0x24
 1713 0530 11       		.uleb128 0x11
 1714 0531 D0180000 		.4byte	.LASF90
 1715 0535 0C       		.byte	0xc
 1716 0536 43       		.byte	0x43
 1717 0537 D9010000 		.4byte	0x1d9
 1718 053b 28       		.byte	0x28
 1719 053c 11       		.uleb128 0x11
 1720 053d AB1E0000 		.4byte	.LASF78
 1721 0541 0C       		.byte	0xc
 1722 0542 44       		.byte	0x44
 1723 0543 71040000 		.4byte	0x471
 1724 0547 2C       		.byte	0x2c
 1725 0548 11       		.uleb128 0x11
 1726 0549 C5070000 		.4byte	.LASF91
 1727 054d 0C       		.byte	0xc
 1728 054e 45       		.byte	0x45
 1729 054f D9010000 		.4byte	0x1d9
 1730 0553 30       		.byte	0x30
 1731 0554 11       		.uleb128 0x11
 1732 0555 60100000 		.4byte	.LASF92
ARM GAS  /tmp/ccQR1hla.s 			page 73


 1733 0559 0C       		.byte	0xc
 1734 055a 46       		.byte	0x46
 1735 055b D9010000 		.4byte	0x1d9
 1736 055f 34       		.byte	0x34
 1737 0560 11       		.uleb128 0x11
 1738 0561 7C0F0000 		.4byte	.LASF93
 1739 0565 0C       		.byte	0xc
 1740 0566 47       		.byte	0x47
 1741 0567 D9010000 		.4byte	0x1d9
 1742 056b 38       		.byte	0x38
 1743 056c 11       		.uleb128 0x11
 1744 056d 4F1E0000 		.4byte	.LASF94
 1745 0571 0C       		.byte	0xc
 1746 0572 48       		.byte	0x48
 1747 0573 D9010000 		.4byte	0x1d9
 1748 0577 3C       		.byte	0x3c
 1749 0578 11       		.uleb128 0x11
 1750 0579 DF010000 		.4byte	.LASF95
 1751 057d 0C       		.byte	0xc
 1752 057e 49       		.byte	0x49
 1753 057f D9010000 		.4byte	0x1d9
 1754 0583 40       		.byte	0x40
 1755 0584 11       		.uleb128 0x11
 1756 0585 36010000 		.4byte	.LASF96
 1757 0589 0C       		.byte	0xc
 1758 058a 4A       		.byte	0x4a
 1759 058b D9010000 		.4byte	0x1d9
 1760 058f 44       		.byte	0x44
 1761 0590 11       		.uleb128 0x11
 1762 0591 F8060000 		.4byte	.LASF97
 1763 0595 0C       		.byte	0xc
 1764 0596 4B       		.byte	0x4b
 1765 0597 D9010000 		.4byte	0x1d9
 1766 059b 48       		.byte	0x48
 1767 059c 11       		.uleb128 0x11
 1768 059d 9B090000 		.4byte	.LASF98
 1769 05a1 0C       		.byte	0xc
 1770 05a2 4C       		.byte	0x4c
 1771 05a3 D9010000 		.4byte	0x1d9
 1772 05a7 4C       		.byte	0x4c
 1773 05a8 11       		.uleb128 0x11
 1774 05a9 50090000 		.4byte	.LASF99
 1775 05ad 0C       		.byte	0xc
 1776 05ae 4D       		.byte	0x4d
 1777 05af D9010000 		.4byte	0x1d9
 1778 05b3 50       		.byte	0x50
 1779 05b4 11       		.uleb128 0x11
 1780 05b5 09090000 		.4byte	.LASF100
 1781 05b9 0C       		.byte	0xc
 1782 05ba 4E       		.byte	0x4e
 1783 05bb D9010000 		.4byte	0x1d9
 1784 05bf 54       		.byte	0x54
 1785 05c0 11       		.uleb128 0x11
 1786 05c1 78100000 		.4byte	.LASF101
 1787 05c5 0C       		.byte	0xc
 1788 05c6 4F       		.byte	0x4f
 1789 05c7 D9010000 		.4byte	0x1d9
ARM GAS  /tmp/ccQR1hla.s 			page 74


 1790 05cb 58       		.byte	0x58
 1791 05cc 11       		.uleb128 0x11
 1792 05cd B51E0000 		.4byte	.LASF102
 1793 05d1 0C       		.byte	0xc
 1794 05d2 50       		.byte	0x50
 1795 05d3 71040000 		.4byte	0x471
 1796 05d7 5C       		.byte	0x5c
 1797 05d8 11       		.uleb128 0x11
 1798 05d9 CF0B0000 		.4byte	.LASF103
 1799 05dd 0C       		.byte	0xc
 1800 05de 51       		.byte	0x51
 1801 05df D9010000 		.4byte	0x1d9
 1802 05e3 60       		.byte	0x60
 1803 05e4 11       		.uleb128 0x11
 1804 05e5 350C0000 		.4byte	.LASF104
 1805 05e9 0C       		.byte	0xc
 1806 05ea 52       		.byte	0x52
 1807 05eb D9010000 		.4byte	0x1d9
 1808 05ef 64       		.byte	0x64
 1809 05f0 11       		.uleb128 0x11
 1810 05f1 12140000 		.4byte	.LASF105
 1811 05f5 0C       		.byte	0xc
 1812 05f6 53       		.byte	0x53
 1813 05f7 D9010000 		.4byte	0x1d9
 1814 05fb 68       		.byte	0x68
 1815 05fc 11       		.uleb128 0x11
 1816 05fd BF1E0000 		.4byte	.LASF106
 1817 0601 0C       		.byte	0xc
 1818 0602 54       		.byte	0x54
 1819 0603 71040000 		.4byte	0x471
 1820 0607 6C       		.byte	0x6c
 1821 0608 11       		.uleb128 0x11
 1822 0609 6D0D0000 		.4byte	.LASF107
 1823 060d 0C       		.byte	0xc
 1824 060e 55       		.byte	0x55
 1825 060f 03030000 		.4byte	0x303
 1826 0613 70       		.byte	0x70
 1827 0614 11       		.uleb128 0x11
 1828 0615 C91E0000 		.4byte	.LASF108
 1829 0619 0C       		.byte	0xc
 1830 061a 56       		.byte	0x56
 1831 061b 03030000 		.4byte	0x303
 1832 061f 78       		.byte	0x78
 1833 0620 11       		.uleb128 0x11
 1834 0621 0E1A0000 		.4byte	.LASF109
 1835 0625 0C       		.byte	0xc
 1836 0626 57       		.byte	0x57
 1837 0627 D9010000 		.4byte	0x1d9
 1838 062b 80       		.byte	0x80
 1839 062c 11       		.uleb128 0x11
 1840 062d 9A1A0000 		.4byte	.LASF110
 1841 0631 0C       		.byte	0xc
 1842 0632 58       		.byte	0x58
 1843 0633 D9010000 		.4byte	0x1d9
 1844 0637 84       		.byte	0x84
 1845 0638 11       		.uleb128 0x11
 1846 0639 60010000 		.4byte	.LASF111
ARM GAS  /tmp/ccQR1hla.s 			page 75


 1847 063d 0C       		.byte	0xc
 1848 063e 59       		.byte	0x59
 1849 063f D9010000 		.4byte	0x1d9
 1850 0643 88       		.byte	0x88
 1851 0644 11       		.uleb128 0x11
 1852 0645 C9010000 		.4byte	.LASF112
 1853 0649 0C       		.byte	0xc
 1854 064a 5A       		.byte	0x5a
 1855 064b D9010000 		.4byte	0x1d9
 1856 064f 8C       		.byte	0x8c
 1857 0650 11       		.uleb128 0x11
 1858 0651 8F1F0000 		.4byte	.LASF113
 1859 0655 0C       		.byte	0xc
 1860 0656 5B       		.byte	0x5b
 1861 0657 D9010000 		.4byte	0x1d9
 1862 065b 90       		.byte	0x90
 1863 065c 11       		.uleb128 0x11
 1864 065d 37000000 		.4byte	.LASF114
 1865 0661 0C       		.byte	0xc
 1866 0662 5C       		.byte	0x5c
 1867 0663 D9010000 		.4byte	0x1d9
 1868 0667 94       		.byte	0x94
 1869 0668 11       		.uleb128 0x11
 1870 0669 99080000 		.4byte	.LASF115
 1871 066d 0C       		.byte	0xc
 1872 066e 5D       		.byte	0x5d
 1873 066f D9010000 		.4byte	0x1d9
 1874 0673 98       		.byte	0x98
 1875 0674 11       		.uleb128 0x11
 1876 0675 D31E0000 		.4byte	.LASF116
 1877 0679 0C       		.byte	0xc
 1878 067a 5E       		.byte	0x5e
 1879 067b 71040000 		.4byte	0x471
 1880 067f 9C       		.byte	0x9c
 1881 0680 11       		.uleb128 0x11
 1882 0681 A3020000 		.4byte	.LASF117
 1883 0685 0C       		.byte	0xc
 1884 0686 5F       		.byte	0x5f
 1885 0687 D9010000 		.4byte	0x1d9
 1886 068b A0       		.byte	0xa0
 1887 068c 11       		.uleb128 0x11
 1888 068d 0F020000 		.4byte	.LASF118
 1889 0691 0C       		.byte	0xc
 1890 0692 60       		.byte	0x60
 1891 0693 D9010000 		.4byte	0x1d9
 1892 0697 A4       		.byte	0xa4
 1893 0698 11       		.uleb128 0x11
 1894 0699 580A0000 		.4byte	.LASF119
 1895 069d 0C       		.byte	0xc
 1896 069e 61       		.byte	0x61
 1897 069f D9010000 		.4byte	0x1d9
 1898 06a3 A8       		.byte	0xa8
 1899 06a4 11       		.uleb128 0x11
 1900 06a5 DD1E0000 		.4byte	.LASF120
 1901 06a9 0C       		.byte	0xc
 1902 06aa 62       		.byte	0x62
 1903 06ab 71040000 		.4byte	0x471
ARM GAS  /tmp/ccQR1hla.s 			page 76


 1904 06af AC       		.byte	0xac
 1905 06b0 11       		.uleb128 0x11
 1906 06b1 631A0000 		.4byte	.LASF121
 1907 06b5 0C       		.byte	0xc
 1908 06b6 63       		.byte	0x63
 1909 06b7 D9010000 		.4byte	0x1d9
 1910 06bb B0       		.byte	0xb0
 1911 06bc 11       		.uleb128 0x11
 1912 06bd DF190000 		.4byte	.LASF122
 1913 06c1 0C       		.byte	0xc
 1914 06c2 64       		.byte	0x64
 1915 06c3 D9010000 		.4byte	0x1d9
 1916 06c7 B4       		.byte	0xb4
 1917 06c8 11       		.uleb128 0x11
 1918 06c9 D81D0000 		.4byte	.LASF123
 1919 06cd 0C       		.byte	0xc
 1920 06ce 65       		.byte	0x65
 1921 06cf D9010000 		.4byte	0x1d9
 1922 06d3 B8       		.byte	0xb8
 1923 06d4 11       		.uleb128 0x11
 1924 06d5 E71E0000 		.4byte	.LASF124
 1925 06d9 0C       		.byte	0xc
 1926 06da 66       		.byte	0x66
 1927 06db 71040000 		.4byte	0x471
 1928 06df BC       		.byte	0xbc
 1929 06e0 11       		.uleb128 0x11
 1930 06e1 FF1C0000 		.4byte	.LASF125
 1931 06e5 0C       		.byte	0xc
 1932 06e6 67       		.byte	0x67
 1933 06e7 D9010000 		.4byte	0x1d9
 1934 06eb C0       		.byte	0xc0
 1935 06ec 11       		.uleb128 0x11
 1936 06ed B3130000 		.4byte	.LASF126
 1937 06f1 0C       		.byte	0xc
 1938 06f2 68       		.byte	0x68
 1939 06f3 D9010000 		.4byte	0x1d9
 1940 06f7 C4       		.byte	0xc4
 1941 06f8 11       		.uleb128 0x11
 1942 06f9 8E0D0000 		.4byte	.LASF127
 1943 06fd 0C       		.byte	0xc
 1944 06fe 69       		.byte	0x69
 1945 06ff D9010000 		.4byte	0x1d9
 1946 0703 C8       		.byte	0xc8
 1947 0704 11       		.uleb128 0x11
 1948 0705 CC060000 		.4byte	.LASF128
 1949 0709 0C       		.byte	0xc
 1950 070a 6A       		.byte	0x6a
 1951 070b 71040000 		.4byte	0x471
 1952 070f CC       		.byte	0xcc
 1953 0710 11       		.uleb128 0x11
 1954 0711 2C1B0000 		.4byte	.LASF129
 1955 0715 0C       		.byte	0xc
 1956 0716 6B       		.byte	0x6b
 1957 0717 D9010000 		.4byte	0x1d9
 1958 071b D0       		.byte	0xd0
 1959 071c 11       		.uleb128 0x11
 1960 071d A10F0000 		.4byte	.LASF130
ARM GAS  /tmp/ccQR1hla.s 			page 77


 1961 0721 0C       		.byte	0xc
 1962 0722 6C       		.byte	0x6c
 1963 0723 D9010000 		.4byte	0x1d9
 1964 0727 D4       		.byte	0xd4
 1965 0728 11       		.uleb128 0x11
 1966 0729 8C1E0000 		.4byte	.LASF131
 1967 072d 0C       		.byte	0xc
 1968 072e 6D       		.byte	0x6d
 1969 072f D9010000 		.4byte	0x1d9
 1970 0733 D8       		.byte	0xd8
 1971 0734 11       		.uleb128 0x11
 1972 0735 D7060000 		.4byte	.LASF132
 1973 0739 0C       		.byte	0xc
 1974 073a 6E       		.byte	0x6e
 1975 073b 71040000 		.4byte	0x471
 1976 073f DC       		.byte	0xdc
 1977 0740 11       		.uleb128 0x11
 1978 0741 AC0A0000 		.4byte	.LASF133
 1979 0745 0C       		.byte	0xc
 1980 0746 6F       		.byte	0x6f
 1981 0747 D9010000 		.4byte	0x1d9
 1982 074b E0       		.byte	0xe0
 1983 074c 11       		.uleb128 0x11
 1984 074d B10C0000 		.4byte	.LASF134
 1985 0751 0C       		.byte	0xc
 1986 0752 70       		.byte	0x70
 1987 0753 D9010000 		.4byte	0x1d9
 1988 0757 E4       		.byte	0xe4
 1989 0758 11       		.uleb128 0x11
 1990 0759 CA0F0000 		.4byte	.LASF135
 1991 075d 0C       		.byte	0xc
 1992 075e 71       		.byte	0x71
 1993 075f D9010000 		.4byte	0x1d9
 1994 0763 E8       		.byte	0xe8
 1995 0764 11       		.uleb128 0x11
 1996 0765 E2060000 		.4byte	.LASF136
 1997 0769 0C       		.byte	0xc
 1998 076a 72       		.byte	0x72
 1999 076b 18030000 		.4byte	0x318
 2000 076f EC       		.byte	0xec
 2001 0770 13       		.uleb128 0x13
 2002 0771 6C020000 		.4byte	.LASF137
 2003 0775 0C       		.byte	0xc
 2004 0776 73       		.byte	0x73
 2005 0777 D9010000 		.4byte	0x1d9
 2006 077b 0001     		.2byte	0x100
 2007 077d 13       		.uleb128 0x13
 2008 077e ED060000 		.4byte	.LASF138
 2009 0782 0C       		.byte	0xc
 2010 0783 74       		.byte	0x74
 2011 0784 18030000 		.4byte	0x318
 2012 0788 0401     		.2byte	0x104
 2013 078a 13       		.uleb128 0x13
 2014 078b 2F080000 		.4byte	.LASF139
 2015 078f 0C       		.byte	0xc
 2016 0790 75       		.byte	0x75
 2017 0791 D9010000 		.4byte	0x1d9
ARM GAS  /tmp/ccQR1hla.s 			page 78


 2018 0795 1801     		.2byte	0x118
 2019 0797 13       		.uleb128 0x13
 2020 0798 F5100000 		.4byte	.LASF140
 2021 079c 0C       		.byte	0xc
 2022 079d 76       		.byte	0x76
 2023 079e 91040000 		.4byte	0x491
 2024 07a2 1C01     		.2byte	0x11c
 2025 07a4 13       		.uleb128 0x13
 2026 07a5 35180000 		.4byte	.LASF141
 2027 07a9 0C       		.byte	0xc
 2028 07aa 77       		.byte	0x77
 2029 07ab D9010000 		.4byte	0x1d9
 2030 07af 5001     		.2byte	0x150
 2031 07b1 13       		.uleb128 0x13
 2032 07b2 17080000 		.4byte	.LASF142
 2033 07b6 0C       		.byte	0xc
 2034 07b7 78       		.byte	0x78
 2035 07b8 D9010000 		.4byte	0x1d9
 2036 07bc 5401     		.2byte	0x154
 2037 07be 13       		.uleb128 0x13
 2038 07bf 0F1D0000 		.4byte	.LASF143
 2039 07c3 0C       		.byte	0xc
 2040 07c4 79       		.byte	0x79
 2041 07c5 D9010000 		.4byte	0x1d9
 2042 07c9 5801     		.2byte	0x158
 2043 07cb 13       		.uleb128 0x13
 2044 07cc F50B0000 		.4byte	.LASF144
 2045 07d0 0C       		.byte	0xc
 2046 07d1 7A       		.byte	0x7a
 2047 07d2 D9010000 		.4byte	0x1d9
 2048 07d6 5C01     		.2byte	0x15c
 2049 07d8 13       		.uleb128 0x13
 2050 07d9 C80E0000 		.4byte	.LASF145
 2051 07dd 0C       		.byte	0xc
 2052 07de 7B       		.byte	0x7b
 2053 07df D9010000 		.4byte	0x1d9
 2054 07e3 6001     		.2byte	0x160
 2055 07e5 13       		.uleb128 0x13
 2056 07e6 23050000 		.4byte	.LASF146
 2057 07ea 0C       		.byte	0xc
 2058 07eb 7C       		.byte	0x7c
 2059 07ec D9010000 		.4byte	0x1d9
 2060 07f0 6401     		.2byte	0x164
 2061 07f2 00       		.byte	0
 2062 07f3 14       		.uleb128 0x14
 2063 07f4 50696F00 		.ascii	"Pio\000"
 2064 07f8 0C       		.byte	0xc
 2065 07f9 7D       		.byte	0x7d
 2066 07fa AB040000 		.4byte	0x4ab
 2067 07fe 10       		.uleb128 0x10
 2068 07ff 20       		.byte	0x20
 2069 0800 0D       		.byte	0xd
 2070 0801 38       		.byte	0x38
 2071 0802 4E160000 		.4byte	.LASF148
 2072 0806 6B080000 		.4byte	0x86b
 2073 080a 11       		.uleb128 0x11
 2074 080b 77110000 		.4byte	.LASF149
ARM GAS  /tmp/ccQR1hla.s 			page 79


 2075 080f 0D       		.byte	0xd
 2076 0810 39       		.byte	0x39
 2077 0811 D9010000 		.4byte	0x1d9
 2078 0815 00       		.byte	0
 2079 0816 11       		.uleb128 0x11
 2080 0817 5A050000 		.4byte	.LASF150
 2081 081b 0D       		.byte	0xd
 2082 081c 3A       		.byte	0x3a
 2083 081d D9010000 		.4byte	0x1d9
 2084 0821 04       		.byte	0x4
 2085 0822 11       		.uleb128 0x11
 2086 0823 721D0000 		.4byte	.LASF151
 2087 0827 0D       		.byte	0xd
 2088 0828 3B       		.byte	0x3b
 2089 0829 D9010000 		.4byte	0x1d9
 2090 082d 08       		.byte	0x8
 2091 082e 11       		.uleb128 0x11
 2092 082f 47090000 		.4byte	.LASF152
 2093 0833 0D       		.byte	0xd
 2094 0834 3C       		.byte	0x3c
 2095 0835 D9010000 		.4byte	0x1d9
 2096 0839 0C       		.byte	0xc
 2097 083a 11       		.uleb128 0x11
 2098 083b 21180000 		.4byte	.LASF153
 2099 083f 0D       		.byte	0xd
 2100 0840 3D       		.byte	0x3d
 2101 0841 D9010000 		.4byte	0x1d9
 2102 0845 10       		.byte	0x10
 2103 0846 11       		.uleb128 0x11
 2104 0847 611E0000 		.4byte	.LASF154
 2105 084b 0D       		.byte	0xd
 2106 084c 3E       		.byte	0x3e
 2107 084d D9010000 		.4byte	0x1d9
 2108 0851 14       		.byte	0x14
 2109 0852 11       		.uleb128 0x11
 2110 0853 47160000 		.4byte	.LASF155
 2111 0857 0D       		.byte	0xd
 2112 0858 3F       		.byte	0x3f
 2113 0859 D9010000 		.4byte	0x1d9
 2114 085d 18       		.byte	0x18
 2115 085e 11       		.uleb128 0x11
 2116 085f 5C0B0000 		.4byte	.LASF156
 2117 0863 0D       		.byte	0xd
 2118 0864 40       		.byte	0x40
 2119 0865 D9010000 		.4byte	0x1d9
 2120 0869 1C       		.byte	0x1c
 2121 086a 00       		.byte	0
 2122 086b 04       		.uleb128 0x4
 2123 086c 2D000000 		.4byte	.LASF157
 2124 0870 0D       		.byte	0xd
 2125 0871 41       		.byte	0x41
 2126 0872 FE070000 		.4byte	0x7fe
 2127 0876 10       		.uleb128 0x10
 2128 0877 10       		.byte	0x10
 2129 0878 0D       		.byte	0xd
 2130 0879 43       		.byte	0x43
 2131 087a CE070000 		.4byte	.LASF158
ARM GAS  /tmp/ccQR1hla.s 			page 80


 2132 087e B3080000 		.4byte	0x8b3
 2133 0882 11       		.uleb128 0x11
 2134 0883 781E0000 		.4byte	.LASF159
 2135 0887 0D       		.byte	0xd
 2136 0888 44       		.byte	0x44
 2137 0889 D9010000 		.4byte	0x1d9
 2138 088d 00       		.byte	0
 2139 088e 11       		.uleb128 0x11
 2140 088f 2D0D0000 		.4byte	.LASF160
 2141 0893 0D       		.byte	0xd
 2142 0894 45       		.byte	0x45
 2143 0895 D9010000 		.4byte	0x1d9
 2144 0899 04       		.byte	0x4
 2145 089a 11       		.uleb128 0x11
 2146 089b 461E0000 		.4byte	.LASF161
 2147 089f 0D       		.byte	0xd
 2148 08a0 46       		.byte	0x46
 2149 08a1 D9010000 		.4byte	0x1d9
 2150 08a5 08       		.byte	0x8
 2151 08a6 11       		.uleb128 0x11
 2152 08a7 50020000 		.4byte	.LASF162
 2153 08ab 0D       		.byte	0xd
 2154 08ac 47       		.byte	0x47
 2155 08ad D9010000 		.4byte	0x1d9
 2156 08b1 0C       		.byte	0xc
 2157 08b2 00       		.byte	0
 2158 08b3 04       		.uleb128 0x4
 2159 08b4 9D030000 		.4byte	.LASF163
 2160 08b8 0D       		.byte	0xd
 2161 08b9 48       		.byte	0x48
 2162 08ba 76080000 		.4byte	0x876
 2163 08be 12       		.uleb128 0x12
 2164 08bf 9404     		.2byte	0x494
 2165 08c1 0D       		.byte	0xd
 2166 08c2 4C       		.byte	0x4c
 2167 08c3 58130000 		.4byte	.LASF165
 2168 08c7 E30B0000 		.4byte	0xbe3
 2169 08cb 11       		.uleb128 0x11
 2170 08cc CD100000 		.4byte	.LASF166
 2171 08d0 0D       		.byte	0xd
 2172 08d1 4D       		.byte	0x4d
 2173 08d2 D9010000 		.4byte	0x1d9
 2174 08d6 00       		.byte	0
 2175 08d7 11       		.uleb128 0x11
 2176 08d8 A5170000 		.4byte	.LASF167
 2177 08dc 0D       		.byte	0xd
 2178 08dd 4E       		.byte	0x4e
 2179 08de D9010000 		.4byte	0x1d9
 2180 08e2 04       		.byte	0x4
 2181 08e3 11       		.uleb128 0x11
 2182 08e4 50130000 		.4byte	.LASF168
 2183 08e8 0D       		.byte	0xd
 2184 08e9 4F       		.byte	0x4f
 2185 08ea D9010000 		.4byte	0x1d9
 2186 08ee 08       		.byte	0x8
 2187 08ef 11       		.uleb128 0x11
 2188 08f0 301D0000 		.4byte	.LASF169
ARM GAS  /tmp/ccQR1hla.s 			page 81


 2189 08f4 0D       		.byte	0xd
 2190 08f5 50       		.byte	0x50
 2191 08f6 D9010000 		.4byte	0x1d9
 2192 08fa 0C       		.byte	0xc
 2193 08fb 11       		.uleb128 0x11
 2194 08fc 77030000 		.4byte	.LASF170
 2195 0900 0D       		.byte	0xd
 2196 0901 51       		.byte	0x51
 2197 0902 D9010000 		.4byte	0x1d9
 2198 0906 10       		.byte	0x10
 2199 0907 11       		.uleb128 0x11
 2200 0908 00000000 		.4byte	.LASF171
 2201 090c 0D       		.byte	0xd
 2202 090d 52       		.byte	0x52
 2203 090e D9010000 		.4byte	0x1d9
 2204 0912 14       		.byte	0x14
 2205 0913 11       		.uleb128 0x11
 2206 0914 431C0000 		.4byte	.LASF172
 2207 0918 0D       		.byte	0xd
 2208 0919 53       		.byte	0x53
 2209 091a D9010000 		.4byte	0x1d9
 2210 091e 18       		.byte	0x18
 2211 091f 11       		.uleb128 0x11
 2212 0920 A30E0000 		.4byte	.LASF173
 2213 0924 0D       		.byte	0xd
 2214 0925 54       		.byte	0x54
 2215 0926 D9010000 		.4byte	0x1d9
 2216 092a 1C       		.byte	0x1c
 2217 092b 11       		.uleb128 0x11
 2218 092c 201D0000 		.4byte	.LASF174
 2219 0930 0D       		.byte	0xd
 2220 0931 55       		.byte	0x55
 2221 0932 D9010000 		.4byte	0x1d9
 2222 0936 20       		.byte	0x20
 2223 0937 11       		.uleb128 0x11
 2224 0938 C3060000 		.4byte	.LASF175
 2225 093c 0D       		.byte	0xd
 2226 093d 56       		.byte	0x56
 2227 093e D9010000 		.4byte	0x1d9
 2228 0942 24       		.byte	0x24
 2229 0943 11       		.uleb128 0x11
 2230 0944 07190000 		.4byte	.LASF176
 2231 0948 0D       		.byte	0xd
 2232 0949 57       		.byte	0x57
 2233 094a D9010000 		.4byte	0x1d9
 2234 094e 28       		.byte	0x28
 2235 094f 11       		.uleb128 0x11
 2236 0950 19190000 		.4byte	.LASF177
 2237 0954 0D       		.byte	0xd
 2238 0955 58       		.byte	0x58
 2239 0956 D9010000 		.4byte	0x1d9
 2240 095a 2C       		.byte	0x2c
 2241 095b 11       		.uleb128 0x11
 2242 095c 6F180000 		.4byte	.LASF178
 2243 0960 0D       		.byte	0xd
 2244 0961 59       		.byte	0x59
 2245 0962 D9010000 		.4byte	0x1d9
ARM GAS  /tmp/ccQR1hla.s 			page 82


 2246 0966 30       		.byte	0x30
 2247 0967 11       		.uleb128 0x11
 2248 0968 80030000 		.4byte	.LASF179
 2249 096c 0D       		.byte	0xd
 2250 096d 5A       		.byte	0x5a
 2251 096e D9010000 		.4byte	0x1d9
 2252 0972 34       		.byte	0x34
 2253 0973 11       		.uleb128 0x11
 2254 0974 09000000 		.4byte	.LASF180
 2255 0978 0D       		.byte	0xd
 2256 0979 5B       		.byte	0x5b
 2257 097a D9010000 		.4byte	0x1d9
 2258 097e 38       		.byte	0x38
 2259 097f 11       		.uleb128 0x11
 2260 0980 4C1C0000 		.4byte	.LASF181
 2261 0984 0D       		.byte	0xd
 2262 0985 5C       		.byte	0x5c
 2263 0986 D9010000 		.4byte	0x1d9
 2264 098a 3C       		.byte	0x3c
 2265 098b 11       		.uleb128 0x11
 2266 098c AC0E0000 		.4byte	.LASF182
 2267 0990 0D       		.byte	0xd
 2268 0991 5D       		.byte	0x5d
 2269 0992 D9010000 		.4byte	0x1d9
 2270 0996 40       		.byte	0x40
 2271 0997 11       		.uleb128 0x11
 2272 0998 68170000 		.4byte	.LASF183
 2273 099c 0D       		.byte	0xd
 2274 099d 5E       		.byte	0x5e
 2275 099e D9010000 		.4byte	0x1d9
 2276 09a2 44       		.byte	0x44
 2277 09a3 11       		.uleb128 0x11
 2278 09a4 CF1B0000 		.4byte	.LASF184
 2279 09a8 0D       		.byte	0xd
 2280 09a9 5F       		.byte	0x5f
 2281 09aa D9010000 		.4byte	0x1d9
 2282 09ae 48       		.byte	0x48
 2283 09af 11       		.uleb128 0x11
 2284 09b0 AF190000 		.4byte	.LASF185
 2285 09b4 0D       		.byte	0xd
 2286 09b5 60       		.byte	0x60
 2287 09b6 D9010000 		.4byte	0x1d9
 2288 09ba 4C       		.byte	0x4c
 2289 09bb 11       		.uleb128 0x11
 2290 09bc 2C190000 		.4byte	.LASF186
 2291 09c0 0D       		.byte	0xd
 2292 09c1 61       		.byte	0x61
 2293 09c2 D9010000 		.4byte	0x1d9
 2294 09c6 50       		.byte	0x50
 2295 09c7 11       		.uleb128 0x11
 2296 09c8 BB130000 		.4byte	.LASF187
 2297 09cc 0D       		.byte	0xd
 2298 09cd 62       		.byte	0x62
 2299 09ce D9010000 		.4byte	0x1d9
 2300 09d2 54       		.byte	0x54
 2301 09d3 11       		.uleb128 0x11
 2302 09d4 551C0000 		.4byte	.LASF188
ARM GAS  /tmp/ccQR1hla.s 			page 83


 2303 09d8 0D       		.byte	0xd
 2304 09d9 63       		.byte	0x63
 2305 09da D9010000 		.4byte	0x1d9
 2306 09de 58       		.byte	0x58
 2307 09df 11       		.uleb128 0x11
 2308 09e0 CF1A0000 		.4byte	.LASF189
 2309 09e4 0D       		.byte	0xd
 2310 09e5 64       		.byte	0x64
 2311 09e6 D9010000 		.4byte	0x1d9
 2312 09ea 5C       		.byte	0x5c
 2313 09eb 11       		.uleb128 0x11
 2314 09ec 281D0000 		.4byte	.LASF190
 2315 09f0 0D       		.byte	0xd
 2316 09f1 65       		.byte	0x65
 2317 09f2 D9010000 		.4byte	0x1d9
 2318 09f6 60       		.byte	0x60
 2319 09f7 11       		.uleb128 0x11
 2320 09f8 EA150000 		.4byte	.LASF191
 2321 09fc 0D       		.byte	0xd
 2322 09fd 66       		.byte	0x66
 2323 09fe D9010000 		.4byte	0x1d9
 2324 0a02 64       		.byte	0x64
 2325 0a03 11       		.uleb128 0x11
 2326 0a04 92040000 		.4byte	.LASF192
 2327 0a08 0D       		.byte	0xd
 2328 0a09 67       		.byte	0x67
 2329 0a0a D9010000 		.4byte	0x1d9
 2330 0a0e 68       		.byte	0x68
 2331 0a0f 11       		.uleb128 0x11
 2332 0a10 241C0000 		.4byte	.LASF193
 2333 0a14 0D       		.byte	0xd
 2334 0a15 68       		.byte	0x68
 2335 0a16 D9010000 		.4byte	0x1d9
 2336 0a1a 6C       		.byte	0x6c
 2337 0a1b 11       		.uleb128 0x11
 2338 0a1c 971E0000 		.4byte	.LASF67
 2339 0a20 0D       		.byte	0xd
 2340 0a21 69       		.byte	0x69
 2341 0a22 A6040000 		.4byte	0x4a6
 2342 0a26 70       		.byte	0x70
 2343 0a27 11       		.uleb128 0x11
 2344 0a28 D9180000 		.4byte	.LASF194
 2345 0a2c 0D       		.byte	0xd
 2346 0a2d 6A       		.byte	0x6a
 2347 0a2e E7020000 		.4byte	0x2e7
 2348 0a32 7C       		.byte	0x7c
 2349 0a33 11       		.uleb128 0x11
 2350 0a34 A11E0000 		.4byte	.LASF76
 2351 0a38 0D       		.byte	0xd
 2352 0a39 6B       		.byte	0x6b
 2353 0a3a 71040000 		.4byte	0x471
 2354 0a3e 9C       		.byte	0x9c
 2355 0a3f 11       		.uleb128 0x11
 2356 0a40 E6080000 		.4byte	.LASF195
 2357 0a44 0D       		.byte	0xd
 2358 0a45 6C       		.byte	0x6c
 2359 0a46 D9010000 		.4byte	0x1d9
ARM GAS  /tmp/ccQR1hla.s 			page 84


 2360 0a4a A0       		.byte	0xa0
 2361 0a4b 11       		.uleb128 0x11
 2362 0a4c 2D050000 		.4byte	.LASF196
 2363 0a50 0D       		.byte	0xd
 2364 0a51 6D       		.byte	0x6d
 2365 0a52 D9010000 		.4byte	0x1d9
 2366 0a56 A4       		.byte	0xa4
 2367 0a57 11       		.uleb128 0x11
 2368 0a58 AB1E0000 		.4byte	.LASF78
 2369 0a5c 0D       		.byte	0xd
 2370 0a5d 6E       		.byte	0x6e
 2371 0a5e 03030000 		.4byte	0x303
 2372 0a62 A8       		.byte	0xa8
 2373 0a63 11       		.uleb128 0x11
 2374 0a64 A3140000 		.4byte	.LASF197
 2375 0a68 0D       		.byte	0xd
 2376 0a69 6F       		.byte	0x6f
 2377 0a6a D9010000 		.4byte	0x1d9
 2378 0a6e B0       		.byte	0xb0
 2379 0a6f 11       		.uleb128 0x11
 2380 0a70 B51E0000 		.4byte	.LASF102
 2381 0a74 0D       		.byte	0xd
 2382 0a75 70       		.byte	0x70
 2383 0a76 A6040000 		.4byte	0x4a6
 2384 0a7a B4       		.byte	0xb4
 2385 0a7b 11       		.uleb128 0x11
 2386 0a7c 10190000 		.4byte	.LASF198
 2387 0a80 0D       		.byte	0xd
 2388 0a81 71       		.byte	0x71
 2389 0a82 D9010000 		.4byte	0x1d9
 2390 0a86 C0       		.byte	0xc0
 2391 0a87 11       		.uleb128 0x11
 2392 0a88 BF1E0000 		.4byte	.LASF106
 2393 0a8c 0D       		.byte	0xd
 2394 0a8d 72       		.byte	0x72
 2395 0a8e E7020000 		.4byte	0x2e7
 2396 0a92 C4       		.byte	0xc4
 2397 0a93 11       		.uleb128 0x11
 2398 0a94 98110000 		.4byte	.LASF199
 2399 0a98 0D       		.byte	0xd
 2400 0a99 73       		.byte	0x73
 2401 0a9a D9010000 		.4byte	0x1d9
 2402 0a9e E4       		.byte	0xe4
 2403 0a9f 11       		.uleb128 0x11
 2404 0aa0 B71D0000 		.4byte	.LASF200
 2405 0aa4 0D       		.byte	0xd
 2406 0aa5 74       		.byte	0x74
 2407 0aa6 D9010000 		.4byte	0x1d9
 2408 0aaa E8       		.byte	0xe8
 2409 0aab 11       		.uleb128 0x11
 2410 0aac C91E0000 		.4byte	.LASF108
 2411 0ab0 0D       		.byte	0xd
 2412 0ab1 75       		.byte	0x75
 2413 0ab2 F30B0000 		.4byte	0xbf3
 2414 0ab6 EC       		.byte	0xec
 2415 0ab7 13       		.uleb128 0x13
 2416 0ab8 D5020000 		.4byte	.LASF201
ARM GAS  /tmp/ccQR1hla.s 			page 85


 2417 0abc 0D       		.byte	0xd
 2418 0abd 76       		.byte	0x76
 2419 0abe F80B0000 		.4byte	0xbf8
 2420 0ac2 3001     		.2byte	0x130
 2421 0ac4 13       		.uleb128 0x13
 2422 0ac5 D31E0000 		.4byte	.LASF116
 2423 0ac9 0D       		.byte	0xd
 2424 0aca 77       		.byte	0x77
 2425 0acb 180C0000 		.4byte	0xc18
 2426 0acf B001     		.2byte	0x1b0
 2427 0ad1 13       		.uleb128 0x13
 2428 0ad2 5A180000 		.4byte	.LASF202
 2429 0ad6 0D       		.byte	0xd
 2430 0ad7 78       		.byte	0x78
 2431 0ad8 1D0C0000 		.4byte	0xc1d
 2432 0adc 0002     		.2byte	0x200
 2433 0ade 13       		.uleb128 0x13
 2434 0adf DD1E0000 		.4byte	.LASF120
 2435 0ae3 0D       		.byte	0xd
 2436 0ae4 79       		.byte	0x79
 2437 0ae5 3D0C0000 		.4byte	0xc3d
 2438 0ae9 8002     		.2byte	0x280
 2439 0aeb 13       		.uleb128 0x13
 2440 0aec 390D0000 		.4byte	.LASF203
 2441 0af0 0D       		.byte	0xd
 2442 0af1 7A       		.byte	0x7a
 2443 0af2 D9010000 		.4byte	0x1d9
 2444 0af6 0004     		.2byte	0x400
 2445 0af8 13       		.uleb128 0x13
 2446 0af9 E71E0000 		.4byte	.LASF124
 2447 0afd 0D       		.byte	0xd
 2448 0afe 7B       		.byte	0x7b
 2449 0aff 44030000 		.4byte	0x344
 2450 0b03 0404     		.2byte	0x404
 2451 0b05 13       		.uleb128 0x13
 2452 0b06 440D0000 		.4byte	.LASF204
 2453 0b0a 0D       		.byte	0xd
 2454 0b0b 7C       		.byte	0x7c
 2455 0b0c D9010000 		.4byte	0x1d9
 2456 0b10 2004     		.2byte	0x420
 2457 0b12 13       		.uleb128 0x13
 2458 0b13 CC060000 		.4byte	.LASF128
 2459 0b17 0D       		.byte	0xd
 2460 0b18 7D       		.byte	0x7d
 2461 0b19 03030000 		.4byte	0x303
 2462 0b1d 2404     		.2byte	0x424
 2463 0b1f 13       		.uleb128 0x13
 2464 0b20 58070000 		.4byte	.LASF205
 2465 0b24 0D       		.byte	0xd
 2466 0b25 7E       		.byte	0x7e
 2467 0b26 D9010000 		.4byte	0x1d9
 2468 0b2a 2C04     		.2byte	0x42c
 2469 0b2c 13       		.uleb128 0x13
 2470 0b2d B7190000 		.4byte	.LASF206
 2471 0b31 0D       		.byte	0xd
 2472 0b32 7F       		.byte	0x7f
 2473 0b33 D9010000 		.4byte	0x1d9
ARM GAS  /tmp/ccQR1hla.s 			page 86


 2474 0b37 3004     		.2byte	0x430
 2475 0b39 13       		.uleb128 0x13
 2476 0b3a D7060000 		.4byte	.LASF132
 2477 0b3e 0D       		.byte	0xd
 2478 0b3f 80       		.byte	0x80
 2479 0b40 A6040000 		.4byte	0x4a6
 2480 0b44 3404     		.2byte	0x434
 2481 0b46 13       		.uleb128 0x13
 2482 0b47 4F0D0000 		.4byte	.LASF207
 2483 0b4b 0D       		.byte	0xd
 2484 0b4c 81       		.byte	0x81
 2485 0b4d D9010000 		.4byte	0x1d9
 2486 0b51 4004     		.2byte	0x440
 2487 0b53 13       		.uleb128 0x13
 2488 0b54 E2060000 		.4byte	.LASF136
 2489 0b58 0D       		.byte	0xd
 2490 0b59 82       		.byte	0x82
 2491 0b5a 03030000 		.4byte	0x303
 2492 0b5e 4404     		.2byte	0x444
 2493 0b60 13       		.uleb128 0x13
 2494 0b61 62070000 		.4byte	.LASF208
 2495 0b65 0D       		.byte	0xd
 2496 0b66 83       		.byte	0x83
 2497 0b67 D9010000 		.4byte	0x1d9
 2498 0b6b 4C04     		.2byte	0x44c
 2499 0b6d 13       		.uleb128 0x13
 2500 0b6e C1190000 		.4byte	.LASF209
 2501 0b72 0D       		.byte	0xd
 2502 0b73 84       		.byte	0x84
 2503 0b74 D9010000 		.4byte	0x1d9
 2504 0b78 5004     		.2byte	0x450
 2505 0b7a 13       		.uleb128 0x13
 2506 0b7b ED060000 		.4byte	.LASF138
 2507 0b7f 0D       		.byte	0xd
 2508 0b80 85       		.byte	0x85
 2509 0b81 A6040000 		.4byte	0x4a6
 2510 0b85 5404     		.2byte	0x454
 2511 0b87 13       		.uleb128 0x13
 2512 0b88 5A0D0000 		.4byte	.LASF210
 2513 0b8c 0D       		.byte	0xd
 2514 0b8d 86       		.byte	0x86
 2515 0b8e D9010000 		.4byte	0x1d9
 2516 0b92 6004     		.2byte	0x460
 2517 0b94 13       		.uleb128 0x13
 2518 0b95 F5100000 		.4byte	.LASF140
 2519 0b99 0D       		.byte	0xd
 2520 0b9a 87       		.byte	0x87
 2521 0b9b 03030000 		.4byte	0x303
 2522 0b9f 6404     		.2byte	0x464
 2523 0ba1 13       		.uleb128 0x13
 2524 0ba2 6C070000 		.4byte	.LASF211
 2525 0ba6 0D       		.byte	0xd
 2526 0ba7 88       		.byte	0x88
 2527 0ba8 D9010000 		.4byte	0x1d9
 2528 0bac 6C04     		.2byte	0x46c
 2529 0bae 13       		.uleb128 0x13
 2530 0baf CB190000 		.4byte	.LASF212
ARM GAS  /tmp/ccQR1hla.s 			page 87


 2531 0bb3 0D       		.byte	0xd
 2532 0bb4 89       		.byte	0x89
 2533 0bb5 D9010000 		.4byte	0x1d9
 2534 0bb9 7004     		.2byte	0x470
 2535 0bbb 13       		.uleb128 0x13
 2536 0bbc 00070000 		.4byte	.LASF213
 2537 0bc0 0D       		.byte	0xd
 2538 0bc1 8A       		.byte	0x8a
 2539 0bc2 83030000 		.4byte	0x383
 2540 0bc6 7404     		.2byte	0x474
 2541 0bc8 13       		.uleb128 0x13
 2542 0bc9 76070000 		.4byte	.LASF214
 2543 0bcd 0D       		.byte	0xd
 2544 0bce 8B       		.byte	0x8b
 2545 0bcf D9010000 		.4byte	0x1d9
 2546 0bd3 8C04     		.2byte	0x48c
 2547 0bd5 13       		.uleb128 0x13
 2548 0bd6 D5190000 		.4byte	.LASF215
 2549 0bda 0D       		.byte	0xd
 2550 0bdb 8C       		.byte	0x8c
 2551 0bdc D9010000 		.4byte	0x1d9
 2552 0be0 9004     		.2byte	0x490
 2553 0be2 00       		.byte	0
 2554 0be3 0C       		.uleb128 0xc
 2555 0be4 D9010000 		.4byte	0x1d9
 2556 0be8 F30B0000 		.4byte	0xbf3
 2557 0bec 0D       		.uleb128 0xd
 2558 0bed EC020000 		.4byte	0x2ec
 2559 0bf1 10       		.byte	0x10
 2560 0bf2 00       		.byte	0
 2561 0bf3 0A       		.uleb128 0xa
 2562 0bf4 E30B0000 		.4byte	0xbe3
 2563 0bf8 0C       		.uleb128 0xc
 2564 0bf9 B3080000 		.4byte	0x8b3
 2565 0bfd 080C0000 		.4byte	0xc08
 2566 0c01 0D       		.uleb128 0xd
 2567 0c02 EC020000 		.4byte	0x2ec
 2568 0c06 07       		.byte	0x7
 2569 0c07 00       		.byte	0
 2570 0c08 0C       		.uleb128 0xc
 2571 0c09 D9010000 		.4byte	0x1d9
 2572 0c0d 180C0000 		.4byte	0xc18
 2573 0c11 0D       		.uleb128 0xd
 2574 0c12 EC020000 		.4byte	0x2ec
 2575 0c16 13       		.byte	0x13
 2576 0c17 00       		.byte	0
 2577 0c18 0A       		.uleb128 0xa
 2578 0c19 080C0000 		.4byte	0xc08
 2579 0c1d 0C       		.uleb128 0xc
 2580 0c1e 6B080000 		.4byte	0x86b
 2581 0c22 2D0C0000 		.4byte	0xc2d
 2582 0c26 0D       		.uleb128 0xd
 2583 0c27 EC020000 		.4byte	0x2ec
 2584 0c2b 03       		.byte	0x3
 2585 0c2c 00       		.byte	0
 2586 0c2d 0C       		.uleb128 0xc
 2587 0c2e D9010000 		.4byte	0x1d9
ARM GAS  /tmp/ccQR1hla.s 			page 88


 2588 0c32 3D0C0000 		.4byte	0xc3d
 2589 0c36 0D       		.uleb128 0xd
 2590 0c37 EC020000 		.4byte	0x2ec
 2591 0c3b 5F       		.byte	0x5f
 2592 0c3c 00       		.byte	0
 2593 0c3d 0A       		.uleb128 0xa
 2594 0c3e 2D0C0000 		.4byte	0xc2d
 2595 0c42 14       		.uleb128 0x14
 2596 0c43 50776D00 		.ascii	"Pwm\000"
 2597 0c47 0D       		.byte	0xd
 2598 0c48 8D       		.byte	0x8d
 2599 0c49 BE080000 		.4byte	0x8be
 2600 0c4d 10       		.uleb128 0x10
 2601 0c4e 40       		.byte	0x40
 2602 0c4f 0E       		.byte	0xe
 2603 0c50 38       		.byte	0x38
 2604 0c51 EB130000 		.4byte	.LASF216
 2605 0c55 020D0000 		.4byte	0xd02
 2606 0c59 11       		.uleb128 0x11
 2607 0c5a E5170000 		.4byte	.LASF217
 2608 0c5e 0E       		.byte	0xe
 2609 0c5f 39       		.byte	0x39
 2610 0c60 D9010000 		.4byte	0x1d9
 2611 0c64 00       		.byte	0
 2612 0c65 11       		.uleb128 0x11
 2613 0c66 191D0000 		.4byte	.LASF218
 2614 0c6a 0E       		.byte	0xe
 2615 0c6b 3A       		.byte	0x3a
 2616 0c6c D9010000 		.4byte	0x1d9
 2617 0c70 04       		.byte	0x4
 2618 0c71 11       		.uleb128 0x11
 2619 0c72 1C1C0000 		.4byte	.LASF219
 2620 0c76 0E       		.byte	0xe
 2621 0c77 3B       		.byte	0x3b
 2622 0c78 D9010000 		.4byte	0x1d9
 2623 0c7c 08       		.byte	0x8
 2624 0c7d 11       		.uleb128 0x11
 2625 0c7e B7050000 		.4byte	.LASF220
 2626 0c82 0E       		.byte	0xe
 2627 0c83 3C       		.byte	0x3c
 2628 0c84 D9010000 		.4byte	0x1d9
 2629 0c88 0C       		.byte	0xc
 2630 0c89 11       		.uleb128 0x11
 2631 0c8a E9190000 		.4byte	.LASF221
 2632 0c8e 0E       		.byte	0xe
 2633 0c8f 3D       		.byte	0x3d
 2634 0c90 D9010000 		.4byte	0x1d9
 2635 0c94 10       		.byte	0x10
 2636 0c95 11       		.uleb128 0x11
 2637 0c96 CD000000 		.4byte	.LASF222
 2638 0c9a 0E       		.byte	0xe
 2639 0c9b 3E       		.byte	0x3e
 2640 0c9c D9010000 		.4byte	0x1d9
 2641 0ca0 14       		.byte	0x14
 2642 0ca1 11       		.uleb128 0x11
 2643 0ca2 D3000000 		.4byte	.LASF223
 2644 0ca6 0E       		.byte	0xe
ARM GAS  /tmp/ccQR1hla.s 			page 89


 2645 0ca7 3F       		.byte	0x3f
 2646 0ca8 D9010000 		.4byte	0x1d9
 2647 0cac 18       		.byte	0x18
 2648 0cad 11       		.uleb128 0x11
 2649 0cae D9000000 		.4byte	.LASF224
 2650 0cb2 0E       		.byte	0xe
 2651 0cb3 40       		.byte	0x40
 2652 0cb4 D9010000 		.4byte	0x1d9
 2653 0cb8 1C       		.byte	0x1c
 2654 0cb9 11       		.uleb128 0x11
 2655 0cba A6010000 		.4byte	.LASF225
 2656 0cbe 0E       		.byte	0xe
 2657 0cbf 41       		.byte	0x41
 2658 0cc0 D9010000 		.4byte	0x1d9
 2659 0cc4 20       		.byte	0x20
 2660 0cc5 11       		.uleb128 0x11
 2661 0cc6 0C0C0000 		.4byte	.LASF226
 2662 0cca 0E       		.byte	0xe
 2663 0ccb 42       		.byte	0x42
 2664 0ccc D9010000 		.4byte	0x1d9
 2665 0cd0 24       		.byte	0x24
 2666 0cd1 11       		.uleb128 0x11
 2667 0cd2 920B0000 		.4byte	.LASF227
 2668 0cd6 0E       		.byte	0xe
 2669 0cd7 43       		.byte	0x43
 2670 0cd8 D9010000 		.4byte	0x1d9
 2671 0cdc 28       		.byte	0x28
 2672 0cdd 11       		.uleb128 0x11
 2673 0cde E20F0000 		.4byte	.LASF228
 2674 0ce2 0E       		.byte	0xe
 2675 0ce3 44       		.byte	0x44
 2676 0ce4 D9010000 		.4byte	0x1d9
 2677 0ce8 2C       		.byte	0x2c
 2678 0ce9 11       		.uleb128 0x11
 2679 0cea C9030000 		.4byte	.LASF229
 2680 0cee 0E       		.byte	0xe
 2681 0cef 45       		.byte	0x45
 2682 0cf0 D9010000 		.4byte	0x1d9
 2683 0cf4 30       		.byte	0x30
 2684 0cf5 11       		.uleb128 0x11
 2685 0cf6 971E0000 		.4byte	.LASF67
 2686 0cfa 0E       		.byte	0xe
 2687 0cfb 46       		.byte	0x46
 2688 0cfc A6040000 		.4byte	0x4a6
 2689 0d00 34       		.byte	0x34
 2690 0d01 00       		.byte	0
 2691 0d02 04       		.uleb128 0x4
 2692 0d03 0C100000 		.4byte	.LASF230
 2693 0d07 0E       		.byte	0xe
 2694 0d08 47       		.byte	0x47
 2695 0d09 4D0C0000 		.4byte	0xc4d
 2696 0d0d 15       		.uleb128 0x15
 2697 0d0e E8       		.byte	0xe8
 2698 0d0f 0E       		.byte	0xe
 2699 0d10 4A       		.byte	0x4a
 2700 0d11 32546300 		.ascii	"2Tc\000"
 2701 0d15 920D0000 		.4byte	0xd92
ARM GAS  /tmp/ccQR1hla.s 			page 90


 2702 0d19 11       		.uleb128 0x11
 2703 0d1a 4B000000 		.4byte	.LASF231
 2704 0d1e 0E       		.byte	0xe
 2705 0d1f 4B       		.byte	0x4b
 2706 0d20 920D0000 		.4byte	0xd92
 2707 0d24 00       		.byte	0
 2708 0d25 11       		.uleb128 0x11
 2709 0d26 8F150000 		.4byte	.LASF232
 2710 0d2a 0E       		.byte	0xe
 2711 0d2b 4C       		.byte	0x4c
 2712 0d2c D9010000 		.4byte	0x1d9
 2713 0d30 C0       		.byte	0xc0
 2714 0d31 11       		.uleb128 0x11
 2715 0d32 7C1A0000 		.4byte	.LASF233
 2716 0d36 0E       		.byte	0xe
 2717 0d37 4D       		.byte	0x4d
 2718 0d38 D9010000 		.4byte	0x1d9
 2719 0d3c C4       		.byte	0xc4
 2720 0d3d 11       		.uleb128 0x11
 2721 0d3e 7B0C0000 		.4byte	.LASF234
 2722 0d42 0E       		.byte	0xe
 2723 0d43 4E       		.byte	0x4e
 2724 0d44 D9010000 		.4byte	0x1d9
 2725 0d48 C8       		.byte	0xc8
 2726 0d49 11       		.uleb128 0x11
 2727 0d4a 3E0C0000 		.4byte	.LASF235
 2728 0d4e 0E       		.byte	0xe
 2729 0d4f 4F       		.byte	0x4f
 2730 0d50 D9010000 		.4byte	0x1d9
 2731 0d54 CC       		.byte	0xcc
 2732 0d55 11       		.uleb128 0x11
 2733 0d56 ED100000 		.4byte	.LASF236
 2734 0d5a 0E       		.byte	0xe
 2735 0d5b 50       		.byte	0x50
 2736 0d5c D9010000 		.4byte	0x1d9
 2737 0d60 D0       		.byte	0xd0
 2738 0d61 11       		.uleb128 0x11
 2739 0d62 79140000 		.4byte	.LASF237
 2740 0d66 0E       		.byte	0xe
 2741 0d67 51       		.byte	0x51
 2742 0d68 D9010000 		.4byte	0x1d9
 2743 0d6c D4       		.byte	0xd4
 2744 0d6d 11       		.uleb128 0x11
 2745 0d6e 51070000 		.4byte	.LASF238
 2746 0d72 0E       		.byte	0xe
 2747 0d73 52       		.byte	0x52
 2748 0d74 D9010000 		.4byte	0x1d9
 2749 0d78 D8       		.byte	0xd8
 2750 0d79 11       		.uleb128 0x11
 2751 0d7a 971E0000 		.4byte	.LASF67
 2752 0d7e 0E       		.byte	0xe
 2753 0d7f 53       		.byte	0x53
 2754 0d80 03030000 		.4byte	0x303
 2755 0d84 DC       		.byte	0xdc
 2756 0d85 11       		.uleb128 0x11
 2757 0d86 FC020000 		.4byte	.LASF239
 2758 0d8a 0E       		.byte	0xe
ARM GAS  /tmp/ccQR1hla.s 			page 91


 2759 0d8b 54       		.byte	0x54
 2760 0d8c D9010000 		.4byte	0x1d9
 2761 0d90 E4       		.byte	0xe4
 2762 0d91 00       		.byte	0
 2763 0d92 0C       		.uleb128 0xc
 2764 0d93 020D0000 		.4byte	0xd02
 2765 0d97 A20D0000 		.4byte	0xda2
 2766 0d9b 0D       		.uleb128 0xd
 2767 0d9c EC020000 		.4byte	0x2ec
 2768 0da0 02       		.byte	0x2
 2769 0da1 00       		.byte	0
 2770 0da2 14       		.uleb128 0x14
 2771 0da3 546300   		.ascii	"Tc\000"
 2772 0da6 0E       		.byte	0xe
 2773 0da7 55       		.byte	0x55
 2774 0da8 0D0D0000 		.4byte	0xd0d
 2775 0dac 04       		.uleb128 0x4
 2776 0dad 1B140000 		.4byte	.LASF240
 2777 0db1 0F       		.byte	0xf
 2778 0db2 07       		.byte	0x7
 2779 0db3 33000000 		.4byte	0x33
 2780 0db7 04       		.uleb128 0x4
 2781 0db8 A50B0000 		.4byte	.LASF241
 2782 0dbc 10       		.byte	0x10
 2783 0dbd 2C       		.byte	0x2c
 2784 0dbe E9000000 		.4byte	0xe9
 2785 0dc2 04       		.uleb128 0x4
 2786 0dc3 3E180000 		.4byte	.LASF242
 2787 0dc7 10       		.byte	0x10
 2788 0dc8 72       		.byte	0x72
 2789 0dc9 E9000000 		.4byte	0xe9
 2790 0dcd 08       		.uleb128 0x8
 2791 0dce CD0C0000 		.4byte	.LASF243
 2792 0dd2 05       		.byte	0x5
 2793 0dd3 6501     		.2byte	0x165
 2794 0dd5 2C000000 		.4byte	0x2c
 2795 0dd9 10       		.uleb128 0x10
 2796 0dda 08       		.byte	0x8
 2797 0ddb 10       		.byte	0x10
 2798 0ddc A4       		.byte	0xa4
 2799 0ddd 810D0000 		.4byte	.LASF244
 2800 0de1 1D0E0000 		.4byte	0xe1d
 2801 0de5 16       		.uleb128 0x16
 2802 0de6 04       		.byte	0x4
 2803 0de7 10       		.byte	0x10
 2804 0de8 A7       		.byte	0xa7
 2805 0de9 040E0000 		.4byte	0xe04
 2806 0ded 17       		.uleb128 0x17
 2807 0dee D3130000 		.4byte	.LASF245
 2808 0df2 10       		.byte	0x10
 2809 0df3 A8       		.byte	0xa8
 2810 0df4 CD0D0000 		.4byte	0xdcd
 2811 0df8 17       		.uleb128 0x17
 2812 0df9 910C0000 		.4byte	.LASF246
 2813 0dfd 10       		.byte	0x10
 2814 0dfe A9       		.byte	0xa9
 2815 0dff 1D0E0000 		.4byte	0xe1d
ARM GAS  /tmp/ccQR1hla.s 			page 92


 2816 0e03 00       		.byte	0
 2817 0e04 11       		.uleb128 0x11
 2818 0e05 D80B0000 		.4byte	.LASF247
 2819 0e09 10       		.byte	0x10
 2820 0e0a A5       		.byte	0xa5
 2821 0e0b 33000000 		.4byte	0x33
 2822 0e0f 00       		.byte	0
 2823 0e10 11       		.uleb128 0x11
 2824 0e11 D9130000 		.4byte	.LASF248
 2825 0e15 10       		.byte	0x10
 2826 0e16 AA       		.byte	0xaa
 2827 0e17 E50D0000 		.4byte	0xde5
 2828 0e1b 04       		.byte	0x4
 2829 0e1c 00       		.byte	0
 2830 0e1d 0C       		.uleb128 0xc
 2831 0e1e BA000000 		.4byte	0xba
 2832 0e22 2D0E0000 		.4byte	0xe2d
 2833 0e26 0D       		.uleb128 0xd
 2834 0e27 EC020000 		.4byte	0x2ec
 2835 0e2b 03       		.byte	0x3
 2836 0e2c 00       		.byte	0
 2837 0e2d 04       		.uleb128 0x4
 2838 0e2e E2180000 		.4byte	.LASF249
 2839 0e32 10       		.byte	0x10
 2840 0e33 AB       		.byte	0xab
 2841 0e34 D90D0000 		.4byte	0xdd9
 2842 0e38 04       		.uleb128 0x4
 2843 0e39 AB1C0000 		.4byte	.LASF250
 2844 0e3d 10       		.byte	0x10
 2845 0e3e AF       		.byte	0xaf
 2846 0e3f AC0D0000 		.4byte	0xdac
 2847 0e43 04       		.uleb128 0x4
 2848 0e44 70100000 		.4byte	.LASF251
 2849 0e48 11       		.byte	0x11
 2850 0e49 16       		.byte	0x16
 2851 0e4a FB000000 		.4byte	0xfb
 2852 0e4e 18       		.uleb128 0x18
 2853 0e4f B2160000 		.4byte	.LASF256
 2854 0e53 18       		.byte	0x18
 2855 0e54 11       		.byte	0x11
 2856 0e55 2D       		.byte	0x2d
 2857 0e56 A10E0000 		.4byte	0xea1
 2858 0e5a 11       		.uleb128 0x11
 2859 0e5b EF0D0000 		.4byte	.LASF252
 2860 0e5f 11       		.byte	0x11
 2861 0e60 2F       		.byte	0x2f
 2862 0e61 A10E0000 		.4byte	0xea1
 2863 0e65 00       		.byte	0
 2864 0e66 19       		.uleb128 0x19
 2865 0e67 5F6B00   		.ascii	"_k\000"
 2866 0e6a 11       		.byte	0x11
 2867 0e6b 30       		.byte	0x30
 2868 0e6c 33000000 		.4byte	0x33
 2869 0e70 04       		.byte	0x4
 2870 0e71 11       		.uleb128 0x11
 2871 0e72 6F150000 		.4byte	.LASF253
 2872 0e76 11       		.byte	0x11
ARM GAS  /tmp/ccQR1hla.s 			page 93


 2873 0e77 30       		.byte	0x30
 2874 0e78 33000000 		.4byte	0x33
 2875 0e7c 08       		.byte	0x8
 2876 0e7d 11       		.uleb128 0x11
 2877 0e7e 371E0000 		.4byte	.LASF254
 2878 0e82 11       		.byte	0x11
 2879 0e83 30       		.byte	0x30
 2880 0e84 33000000 		.4byte	0x33
 2881 0e88 0C       		.byte	0xc
 2882 0e89 11       		.uleb128 0x11
 2883 0e8a E1080000 		.4byte	.LASF255
 2884 0e8e 11       		.byte	0x11
 2885 0e8f 30       		.byte	0x30
 2886 0e90 33000000 		.4byte	0x33
 2887 0e94 10       		.byte	0x10
 2888 0e95 19       		.uleb128 0x19
 2889 0e96 5F7800   		.ascii	"_x\000"
 2890 0e99 11       		.byte	0x11
 2891 0e9a 31       		.byte	0x31
 2892 0e9b A70E0000 		.4byte	0xea7
 2893 0e9f 14       		.byte	0x14
 2894 0ea0 00       		.byte	0
 2895 0ea1 1A       		.uleb128 0x1a
 2896 0ea2 04       		.byte	0x4
 2897 0ea3 4E0E0000 		.4byte	0xe4e
 2898 0ea7 0C       		.uleb128 0xc
 2899 0ea8 430E0000 		.4byte	0xe43
 2900 0eac B70E0000 		.4byte	0xeb7
 2901 0eb0 0D       		.uleb128 0xd
 2902 0eb1 EC020000 		.4byte	0x2ec
 2903 0eb5 00       		.byte	0
 2904 0eb6 00       		.byte	0
 2905 0eb7 18       		.uleb128 0x18
 2906 0eb8 B4060000 		.4byte	.LASF257
 2907 0ebc 24       		.byte	0x24
 2908 0ebd 11       		.byte	0x11
 2909 0ebe 35       		.byte	0x35
 2910 0ebf 300F0000 		.4byte	0xf30
 2911 0ec3 11       		.uleb128 0x11
 2912 0ec4 270F0000 		.4byte	.LASF258
 2913 0ec8 11       		.byte	0x11
 2914 0ec9 37       		.byte	0x37
 2915 0eca 33000000 		.4byte	0x33
 2916 0ece 00       		.byte	0
 2917 0ecf 11       		.uleb128 0x11
 2918 0ed0 581E0000 		.4byte	.LASF259
 2919 0ed4 11       		.byte	0x11
 2920 0ed5 38       		.byte	0x38
 2921 0ed6 33000000 		.4byte	0x33
 2922 0eda 04       		.byte	0x4
 2923 0edb 11       		.uleb128 0x11
 2924 0edc A70C0000 		.4byte	.LASF260
 2925 0ee0 11       		.byte	0x11
 2926 0ee1 39       		.byte	0x39
 2927 0ee2 33000000 		.4byte	0x33
 2928 0ee6 08       		.byte	0x8
 2929 0ee7 11       		.uleb128 0x11
ARM GAS  /tmp/ccQR1hla.s 			page 94


 2930 0ee8 230D0000 		.4byte	.LASF261
 2931 0eec 11       		.byte	0x11
 2932 0eed 3A       		.byte	0x3a
 2933 0eee 33000000 		.4byte	0x33
 2934 0ef2 0C       		.byte	0xc
 2935 0ef3 11       		.uleb128 0x11
 2936 0ef4 78010000 		.4byte	.LASF262
 2937 0ef8 11       		.byte	0x11
 2938 0ef9 3B       		.byte	0x3b
 2939 0efa 33000000 		.4byte	0x33
 2940 0efe 10       		.byte	0x10
 2941 0eff 11       		.uleb128 0x11
 2942 0f00 D0090000 		.4byte	.LASF263
 2943 0f04 11       		.byte	0x11
 2944 0f05 3C       		.byte	0x3c
 2945 0f06 33000000 		.4byte	0x33
 2946 0f0a 14       		.byte	0x14
 2947 0f0b 11       		.uleb128 0x11
 2948 0f0c 4F080000 		.4byte	.LASF264
 2949 0f10 11       		.byte	0x11
 2950 0f11 3D       		.byte	0x3d
 2951 0f12 33000000 		.4byte	0x33
 2952 0f16 18       		.byte	0x18
 2953 0f17 11       		.uleb128 0x11
 2954 0f18 47070000 		.4byte	.LASF265
 2955 0f1c 11       		.byte	0x11
 2956 0f1d 3E       		.byte	0x3e
 2957 0f1e 33000000 		.4byte	0x33
 2958 0f22 1C       		.byte	0x1c
 2959 0f23 11       		.uleb128 0x11
 2960 0f24 59080000 		.4byte	.LASF266
 2961 0f28 11       		.byte	0x11
 2962 0f29 3F       		.byte	0x3f
 2963 0f2a 33000000 		.4byte	0x33
 2964 0f2e 20       		.byte	0x20
 2965 0f2f 00       		.byte	0
 2966 0f30 1B       		.uleb128 0x1b
 2967 0f31 600F0000 		.4byte	.LASF267
 2968 0f35 0801     		.2byte	0x108
 2969 0f37 11       		.byte	0x11
 2970 0f38 48       		.byte	0x48
 2971 0f39 700F0000 		.4byte	0xf70
 2972 0f3d 11       		.uleb128 0x11
 2973 0f3e 650D0000 		.4byte	.LASF268
 2974 0f42 11       		.byte	0x11
 2975 0f43 49       		.byte	0x49
 2976 0f44 700F0000 		.4byte	0xf70
 2977 0f48 00       		.byte	0
 2978 0f49 11       		.uleb128 0x11
 2979 0f4a 3A080000 		.4byte	.LASF269
 2980 0f4e 11       		.byte	0x11
 2981 0f4f 4A       		.byte	0x4a
 2982 0f50 700F0000 		.4byte	0xf70
 2983 0f54 80       		.byte	0x80
 2984 0f55 13       		.uleb128 0x13
 2985 0f56 81010000 		.4byte	.LASF270
 2986 0f5a 11       		.byte	0x11
ARM GAS  /tmp/ccQR1hla.s 			page 95


 2987 0f5b 4C       		.byte	0x4c
 2988 0f5c 430E0000 		.4byte	0xe43
 2989 0f60 0001     		.2byte	0x100
 2990 0f62 13       		.uleb128 0x13
 2991 0f63 FC190000 		.4byte	.LASF271
 2992 0f67 11       		.byte	0x11
 2993 0f68 4F       		.byte	0x4f
 2994 0f69 430E0000 		.4byte	0xe43
 2995 0f6d 0401     		.2byte	0x104
 2996 0f6f 00       		.byte	0
 2997 0f70 0C       		.uleb128 0xc
 2998 0f71 D5020000 		.4byte	0x2d5
 2999 0f75 800F0000 		.4byte	0xf80
 3000 0f79 0D       		.uleb128 0xd
 3001 0f7a EC020000 		.4byte	0x2ec
 3002 0f7e 1F       		.byte	0x1f
 3003 0f7f 00       		.byte	0
 3004 0f80 1B       		.uleb128 0x1b
 3005 0f81 DF000000 		.4byte	.LASF272
 3006 0f85 9001     		.2byte	0x190
 3007 0f87 11       		.byte	0x11
 3008 0f88 5B       		.byte	0x5b
 3009 0f89 BE0F0000 		.4byte	0xfbe
 3010 0f8d 11       		.uleb128 0x11
 3011 0f8e EF0D0000 		.4byte	.LASF252
 3012 0f92 11       		.byte	0x11
 3013 0f93 5C       		.byte	0x5c
 3014 0f94 BE0F0000 		.4byte	0xfbe
 3015 0f98 00       		.byte	0
 3016 0f99 11       		.uleb128 0x11
 3017 0f9a B1010000 		.4byte	.LASF273
 3018 0f9e 11       		.byte	0x11
 3019 0f9f 5D       		.byte	0x5d
 3020 0fa0 33000000 		.4byte	0x33
 3021 0fa4 04       		.byte	0x4
 3022 0fa5 11       		.uleb128 0x11
 3023 0fa6 B8180000 		.4byte	.LASF274
 3024 0faa 11       		.byte	0x11
 3025 0fab 5F       		.byte	0x5f
 3026 0fac C40F0000 		.4byte	0xfc4
 3027 0fb0 08       		.byte	0x8
 3028 0fb1 11       		.uleb128 0x11
 3029 0fb2 600F0000 		.4byte	.LASF267
 3030 0fb6 11       		.byte	0x11
 3031 0fb7 60       		.byte	0x60
 3032 0fb8 300F0000 		.4byte	0xf30
 3033 0fbc 88       		.byte	0x88
 3034 0fbd 00       		.byte	0
 3035 0fbe 1A       		.uleb128 0x1a
 3036 0fbf 04       		.byte	0x4
 3037 0fc0 800F0000 		.4byte	0xf80
 3038 0fc4 0C       		.uleb128 0xc
 3039 0fc5 D40F0000 		.4byte	0xfd4
 3040 0fc9 D40F0000 		.4byte	0xfd4
 3041 0fcd 0D       		.uleb128 0xd
 3042 0fce EC020000 		.4byte	0x2ec
 3043 0fd2 1F       		.byte	0x1f
ARM GAS  /tmp/ccQR1hla.s 			page 96


 3044 0fd3 00       		.byte	0
 3045 0fd4 1A       		.uleb128 0x1a
 3046 0fd5 04       		.byte	0x4
 3047 0fd6 DA0F0000 		.4byte	0xfda
 3048 0fda 1C       		.uleb128 0x1c
 3049 0fdb 18       		.uleb128 0x18
 3050 0fdc 91130000 		.4byte	.LASF275
 3051 0fe0 08       		.byte	0x8
 3052 0fe1 11       		.byte	0x11
 3053 0fe2 73       		.byte	0x73
 3054 0fe3 00100000 		.4byte	0x1000
 3055 0fe7 11       		.uleb128 0x11
 3056 0fe8 850F0000 		.4byte	.LASF276
 3057 0fec 11       		.byte	0x11
 3058 0fed 74       		.byte	0x74
 3059 0fee 00100000 		.4byte	0x1000
 3060 0ff2 00       		.byte	0
 3061 0ff3 11       		.uleb128 0x11
 3062 0ff4 03090000 		.4byte	.LASF277
 3063 0ff8 11       		.byte	0x11
 3064 0ff9 75       		.byte	0x75
 3065 0ffa 33000000 		.4byte	0x33
 3066 0ffe 04       		.byte	0x4
 3067 0fff 00       		.byte	0
 3068 1000 1A       		.uleb128 0x1a
 3069 1001 04       		.byte	0x4
 3070 1002 BA000000 		.4byte	0xba
 3071 1006 18       		.uleb128 0x18
 3072 1007 7B180000 		.4byte	.LASF278
 3073 100b 68       		.byte	0x68
 3074 100c 11       		.byte	0x11
 3075 100d B3       		.byte	0xb3
 3076 100e 30110000 		.4byte	0x1130
 3077 1012 19       		.uleb128 0x19
 3078 1013 5F7000   		.ascii	"_p\000"
 3079 1016 11       		.byte	0x11
 3080 1017 B4       		.byte	0xb4
 3081 1018 00100000 		.4byte	0x1000
 3082 101c 00       		.byte	0
 3083 101d 19       		.uleb128 0x19
 3084 101e 5F7200   		.ascii	"_r\000"
 3085 1021 11       		.byte	0x11
 3086 1022 B5       		.byte	0xb5
 3087 1023 33000000 		.4byte	0x33
 3088 1027 04       		.byte	0x4
 3089 1028 19       		.uleb128 0x19
 3090 1029 5F7700   		.ascii	"_w\000"
 3091 102c 11       		.byte	0x11
 3092 102d B6       		.byte	0xb6
 3093 102e 33000000 		.4byte	0x33
 3094 1032 08       		.byte	0x8
 3095 1033 11       		.uleb128 0x11
 3096 1034 41020000 		.4byte	.LASF279
 3097 1038 11       		.byte	0x11
 3098 1039 B7       		.byte	0xb7
 3099 103a CC000000 		.4byte	0xcc
 3100 103e 0C       		.byte	0xc
ARM GAS  /tmp/ccQR1hla.s 			page 97


 3101 103f 11       		.uleb128 0x11
 3102 1040 46180000 		.4byte	.LASF280
 3103 1044 11       		.byte	0x11
 3104 1045 B8       		.byte	0xb8
 3105 1046 CC000000 		.4byte	0xcc
 3106 104a 0E       		.byte	0xe
 3107 104b 19       		.uleb128 0x19
 3108 104c 5F626600 		.ascii	"_bf\000"
 3109 1050 11       		.byte	0x11
 3110 1051 B9       		.byte	0xb9
 3111 1052 DB0F0000 		.4byte	0xfdb
 3112 1056 10       		.byte	0x10
 3113 1057 11       		.uleb128 0x11
 3114 1058 D5040000 		.4byte	.LASF281
 3115 105c 11       		.byte	0x11
 3116 105d BA       		.byte	0xba
 3117 105e 33000000 		.4byte	0x33
 3118 1062 18       		.byte	0x18
 3119 1063 11       		.uleb128 0x11
 3120 1064 210E0000 		.4byte	.LASF282
 3121 1068 11       		.byte	0x11
 3122 1069 C1       		.byte	0xc1
 3123 106a D5020000 		.4byte	0x2d5
 3124 106e 1C       		.byte	0x1c
 3125 106f 11       		.uleb128 0x11
 3126 1070 551F0000 		.4byte	.LASF283
 3127 1074 11       		.byte	0x11
 3128 1075 C3       		.byte	0xc3
 3129 1076 E4130000 		.4byte	0x13e4
 3130 107a 20       		.byte	0x20
 3131 107b 11       		.uleb128 0x11
 3132 107c 40090000 		.4byte	.LASF284
 3133 1080 11       		.byte	0x11
 3134 1081 C5       		.byte	0xc5
 3135 1082 0E140000 		.4byte	0x140e
 3136 1086 24       		.byte	0x24
 3137 1087 11       		.uleb128 0x11
 3138 1088 56110000 		.4byte	.LASF285
 3139 108c 11       		.byte	0x11
 3140 108d C8       		.byte	0xc8
 3141 108e 32140000 		.4byte	0x1432
 3142 1092 28       		.byte	0x28
 3143 1093 11       		.uleb128 0x11
 3144 1094 761B0000 		.4byte	.LASF286
 3145 1098 11       		.byte	0x11
 3146 1099 C9       		.byte	0xc9
 3147 109a 4C140000 		.4byte	0x144c
 3148 109e 2C       		.byte	0x2c
 3149 109f 19       		.uleb128 0x19
 3150 10a0 5F756200 		.ascii	"_ub\000"
 3151 10a4 11       		.byte	0x11
 3152 10a5 CC       		.byte	0xcc
 3153 10a6 DB0F0000 		.4byte	0xfdb
 3154 10aa 30       		.byte	0x30
 3155 10ab 19       		.uleb128 0x19
 3156 10ac 5F757000 		.ascii	"_up\000"
 3157 10b0 11       		.byte	0x11
ARM GAS  /tmp/ccQR1hla.s 			page 98


 3158 10b1 CD       		.byte	0xcd
 3159 10b2 00100000 		.4byte	0x1000
 3160 10b6 38       		.byte	0x38
 3161 10b7 19       		.uleb128 0x19
 3162 10b8 5F757200 		.ascii	"_ur\000"
 3163 10bc 11       		.byte	0x11
 3164 10bd CE       		.byte	0xce
 3165 10be 33000000 		.4byte	0x33
 3166 10c2 3C       		.byte	0x3c
 3167 10c3 11       		.uleb128 0x11
 3168 10c4 DF170000 		.4byte	.LASF287
 3169 10c8 11       		.byte	0x11
 3170 10c9 D1       		.byte	0xd1
 3171 10ca 52140000 		.4byte	0x1452
 3172 10ce 40       		.byte	0x40
 3173 10cf 11       		.uleb128 0x11
 3174 10d0 2B030000 		.4byte	.LASF288
 3175 10d4 11       		.byte	0x11
 3176 10d5 D2       		.byte	0xd2
 3177 10d6 62140000 		.4byte	0x1462
 3178 10da 43       		.byte	0x43
 3179 10db 19       		.uleb128 0x19
 3180 10dc 5F6C6200 		.ascii	"_lb\000"
 3181 10e0 11       		.byte	0x11
 3182 10e1 D5       		.byte	0xd5
 3183 10e2 DB0F0000 		.4byte	0xfdb
 3184 10e6 44       		.byte	0x44
 3185 10e7 11       		.uleb128 0x11
 3186 10e8 D6170000 		.4byte	.LASF289
 3187 10ec 11       		.byte	0x11
 3188 10ed D8       		.byte	0xd8
 3189 10ee 33000000 		.4byte	0x33
 3190 10f2 4C       		.byte	0x4c
 3191 10f3 11       		.uleb128 0x11
 3192 10f4 79130000 		.4byte	.LASF290
 3193 10f8 11       		.byte	0x11
 3194 10f9 D9       		.byte	0xd9
 3195 10fa B70D0000 		.4byte	0xdb7
 3196 10fe 50       		.byte	0x50
 3197 10ff 11       		.uleb128 0x11
 3198 1100 7B050000 		.4byte	.LASF291
 3199 1104 11       		.byte	0x11
 3200 1105 DC       		.byte	0xdc
 3201 1106 4E110000 		.4byte	0x114e
 3202 110a 54       		.byte	0x54
 3203 110b 11       		.uleb128 0x11
 3204 110c 25030000 		.4byte	.LASF292
 3205 1110 11       		.byte	0x11
 3206 1111 E0       		.byte	0xe0
 3207 1112 380E0000 		.4byte	0xe38
 3208 1116 58       		.byte	0x58
 3209 1117 11       		.uleb128 0x11
 3210 1118 41100000 		.4byte	.LASF293
 3211 111c 11       		.byte	0x11
 3212 111d E2       		.byte	0xe2
 3213 111e 2D0E0000 		.4byte	0xe2d
 3214 1122 5C       		.byte	0x5c
ARM GAS  /tmp/ccQR1hla.s 			page 99


 3215 1123 11       		.uleb128 0x11
 3216 1124 071D0000 		.4byte	.LASF294
 3217 1128 11       		.byte	0x11
 3218 1129 E3       		.byte	0xe3
 3219 112a 33000000 		.4byte	0x33
 3220 112e 64       		.byte	0x64
 3221 112f 00       		.byte	0
 3222 1130 1D       		.uleb128 0x1d
 3223 1131 33000000 		.4byte	0x33
 3224 1135 4E110000 		.4byte	0x114e
 3225 1139 1E       		.uleb128 0x1e
 3226 113a 4E110000 		.4byte	0x114e
 3227 113e 1E       		.uleb128 0x1e
 3228 113f D5020000 		.4byte	0x2d5
 3229 1143 1E       		.uleb128 0x1e
 3230 1144 D2130000 		.4byte	0x13d2
 3231 1148 1E       		.uleb128 0x1e
 3232 1149 33000000 		.4byte	0x33
 3233 114d 00       		.byte	0
 3234 114e 1A       		.uleb128 0x1a
 3235 114f 04       		.byte	0x4
 3236 1150 59110000 		.4byte	0x1159
 3237 1154 05       		.uleb128 0x5
 3238 1155 4E110000 		.4byte	0x114e
 3239 1159 1F       		.uleb128 0x1f
 3240 115a BE050000 		.4byte	.LASF295
 3241 115e 2804     		.2byte	0x428
 3242 1160 11       		.byte	0x11
 3243 1161 3802     		.2byte	0x238
 3244 1163 D2130000 		.4byte	0x13d2
 3245 1167 20       		.uleb128 0x20
 3246 1168 F0       		.byte	0xf0
 3247 1169 11       		.byte	0x11
 3248 116a 5602     		.2byte	0x256
 3249 116c AE120000 		.4byte	0x12ae
 3250 1170 21       		.uleb128 0x21
 3251 1171 D0       		.byte	0xd0
 3252 1172 11       		.byte	0x11
 3253 1173 5802     		.2byte	0x258
 3254 1175 71120000 		.4byte	0x1271
 3255 1179 07       		.uleb128 0x7
 3256 117a A9070000 		.4byte	.LASF296
 3257 117e 11       		.byte	0x11
 3258 117f 5902     		.2byte	0x259
 3259 1181 2C000000 		.4byte	0x2c
 3260 1185 00       		.byte	0
 3261 1186 07       		.uleb128 0x7
 3262 1187 0E110000 		.4byte	.LASF297
 3263 118b 11       		.byte	0x11
 3264 118c 5A02     		.2byte	0x25a
 3265 118e D2130000 		.4byte	0x13d2
 3266 1192 04       		.byte	0x4
 3267 1193 07       		.uleb128 0x7
 3268 1194 C6130000 		.4byte	.LASF298
 3269 1198 11       		.byte	0x11
 3270 1199 5B02     		.2byte	0x25b
 3271 119b 04150000 		.4byte	0x1504
ARM GAS  /tmp/ccQR1hla.s 			page 100


 3272 119f 08       		.byte	0x8
 3273 11a0 07       		.uleb128 0x7
 3274 11a1 C00B0000 		.4byte	.LASF299
 3275 11a5 11       		.byte	0x11
 3276 11a6 5C02     		.2byte	0x25c
 3277 11a8 B70E0000 		.4byte	0xeb7
 3278 11ac 24       		.byte	0x24
 3279 11ad 07       		.uleb128 0x7
 3280 11ae 5C1B0000 		.4byte	.LASF300
 3281 11b2 11       		.byte	0x11
 3282 11b3 5D02     		.2byte	0x25d
 3283 11b5 33000000 		.4byte	0x33
 3284 11b9 48       		.byte	0x48
 3285 11ba 07       		.uleb128 0x7
 3286 11bb 1C150000 		.4byte	.LASF301
 3287 11bf 11       		.byte	0x11
 3288 11c0 5E02     		.2byte	0x25e
 3289 11c2 18010000 		.4byte	0x118
 3290 11c6 50       		.byte	0x50
 3291 11c7 07       		.uleb128 0x7
 3292 11c8 0E1F0000 		.4byte	.LASF302
 3293 11cc 11       		.byte	0x11
 3294 11cd 5F02     		.2byte	0x25f
 3295 11cf BF140000 		.4byte	0x14bf
 3296 11d3 58       		.byte	0x58
 3297 11d4 07       		.uleb128 0x7
 3298 11d5 EC170000 		.4byte	.LASF303
 3299 11d9 11       		.byte	0x11
 3300 11da 6002     		.2byte	0x260
 3301 11dc 2D0E0000 		.4byte	0xe2d
 3302 11e0 68       		.byte	0x68
 3303 11e1 07       		.uleb128 0x7
 3304 11e2 3C060000 		.4byte	.LASF304
 3305 11e6 11       		.byte	0x11
 3306 11e7 6102     		.2byte	0x261
 3307 11e9 2D0E0000 		.4byte	0xe2d
 3308 11ed 70       		.byte	0x70
 3309 11ee 07       		.uleb128 0x7
 3310 11ef 81140000 		.4byte	.LASF305
 3311 11f3 11       		.byte	0x11
 3312 11f4 6202     		.2byte	0x262
 3313 11f6 2D0E0000 		.4byte	0xe2d
 3314 11fa 78       		.byte	0x78
 3315 11fb 07       		.uleb128 0x7
 3316 11fc A1130000 		.4byte	.LASF306
 3317 1200 11       		.byte	0x11
 3318 1201 6302     		.2byte	0x263
 3319 1203 14150000 		.4byte	0x1514
 3320 1207 80       		.byte	0x80
 3321 1208 07       		.uleb128 0x7
 3322 1209 010E0000 		.4byte	.LASF307
 3323 120d 11       		.byte	0x11
 3324 120e 6402     		.2byte	0x264
 3325 1210 24150000 		.4byte	0x1524
 3326 1214 88       		.byte	0x88
 3327 1215 07       		.uleb128 0x7
 3328 1216 1D170000 		.4byte	.LASF308
ARM GAS  /tmp/ccQR1hla.s 			page 101


 3329 121a 11       		.byte	0x11
 3330 121b 6502     		.2byte	0x265
 3331 121d 33000000 		.4byte	0x33
 3332 1221 A0       		.byte	0xa0
 3333 1222 07       		.uleb128 0x7
 3334 1223 01150000 		.4byte	.LASF309
 3335 1227 11       		.byte	0x11
 3336 1228 6602     		.2byte	0x266
 3337 122a 2D0E0000 		.4byte	0xe2d
 3338 122e A4       		.byte	0xa4
 3339 122f 07       		.uleb128 0x7
 3340 1230 980C0000 		.4byte	.LASF310
 3341 1234 11       		.byte	0x11
 3342 1235 6702     		.2byte	0x267
 3343 1237 2D0E0000 		.4byte	0xe2d
 3344 123b AC       		.byte	0xac
 3345 123c 07       		.uleb128 0x7
 3346 123d D0080000 		.4byte	.LASF311
 3347 1241 11       		.byte	0x11
 3348 1242 6802     		.2byte	0x268
 3349 1244 2D0E0000 		.4byte	0xe2d
 3350 1248 B4       		.byte	0xb4
 3351 1249 07       		.uleb128 0x7
 3352 124a 8B1A0000 		.4byte	.LASF312
 3353 124e 11       		.byte	0x11
 3354 124f 6902     		.2byte	0x269
 3355 1251 2D0E0000 		.4byte	0xe2d
 3356 1255 BC       		.byte	0xbc
 3357 1256 07       		.uleb128 0x7
 3358 1257 F6130000 		.4byte	.LASF313
 3359 125b 11       		.byte	0x11
 3360 125c 6A02     		.2byte	0x26a
 3361 125e 2D0E0000 		.4byte	0xe2d
 3362 1262 C4       		.byte	0xc4
 3363 1263 07       		.uleb128 0x7
 3364 1264 ED180000 		.4byte	.LASF314
 3365 1268 11       		.byte	0x11
 3366 1269 6B02     		.2byte	0x26b
 3367 126b 33000000 		.4byte	0x33
 3368 126f CC       		.byte	0xcc
 3369 1270 00       		.byte	0
 3370 1271 21       		.uleb128 0x21
 3371 1272 F0       		.byte	0xf0
 3372 1273 11       		.byte	0x11
 3373 1274 7102     		.2byte	0x271
 3374 1276 95120000 		.4byte	0x1295
 3375 127a 07       		.uleb128 0x7
 3376 127b 0F150000 		.4byte	.LASF315
 3377 127f 11       		.byte	0x11
 3378 1280 7302     		.2byte	0x273
 3379 1282 34150000 		.4byte	0x1534
 3380 1286 00       		.byte	0
 3381 1287 07       		.uleb128 0x7
 3382 1288 D50A0000 		.4byte	.LASF316
 3383 128c 11       		.byte	0x11
 3384 128d 7402     		.2byte	0x274
 3385 128f 44150000 		.4byte	0x1544
ARM GAS  /tmp/ccQR1hla.s 			page 102


 3386 1293 78       		.byte	0x78
 3387 1294 00       		.byte	0
 3388 1295 22       		.uleb128 0x22
 3389 1296 BE050000 		.4byte	.LASF295
 3390 129a 11       		.byte	0x11
 3391 129b 6C02     		.2byte	0x26c
 3392 129d 70110000 		.4byte	0x1170
 3393 12a1 22       		.uleb128 0x22
 3394 12a2 31030000 		.4byte	.LASF317
 3395 12a6 11       		.byte	0x11
 3396 12a7 7502     		.2byte	0x275
 3397 12a9 71120000 		.4byte	0x1271
 3398 12ad 00       		.byte	0
 3399 12ae 07       		.uleb128 0x7
 3400 12af 1C0D0000 		.4byte	.LASF318
 3401 12b3 11       		.byte	0x11
 3402 12b4 3A02     		.2byte	0x23a
 3403 12b6 33000000 		.4byte	0x33
 3404 12ba 00       		.byte	0
 3405 12bb 07       		.uleb128 0x7
 3406 12bc B70A0000 		.4byte	.LASF319
 3407 12c0 11       		.byte	0x11
 3408 12c1 3F02     		.2byte	0x23f
 3409 12c3 B9140000 		.4byte	0x14b9
 3410 12c7 04       		.byte	0x4
 3411 12c8 07       		.uleb128 0x7
 3412 12c9 83000000 		.4byte	.LASF320
 3413 12cd 11       		.byte	0x11
 3414 12ce 3F02     		.2byte	0x23f
 3415 12d0 B9140000 		.4byte	0x14b9
 3416 12d4 08       		.byte	0x8
 3417 12d5 07       		.uleb128 0x7
 3418 12d6 07080000 		.4byte	.LASF321
 3419 12da 11       		.byte	0x11
 3420 12db 3F02     		.2byte	0x23f
 3421 12dd B9140000 		.4byte	0x14b9
 3422 12e1 0C       		.byte	0xc
 3423 12e2 07       		.uleb128 0x7
 3424 12e3 AC010000 		.4byte	.LASF322
 3425 12e7 11       		.byte	0x11
 3426 12e8 4102     		.2byte	0x241
 3427 12ea 33000000 		.4byte	0x33
 3428 12ee 10       		.byte	0x10
 3429 12ef 07       		.uleb128 0x7
 3430 12f0 F6140000 		.4byte	.LASF323
 3431 12f4 11       		.byte	0x11
 3432 12f5 4202     		.2byte	0x242
 3433 12f7 54150000 		.4byte	0x1554
 3434 12fb 14       		.byte	0x14
 3435 12fc 07       		.uleb128 0x7
 3436 12fd BD1B0000 		.4byte	.LASF324
 3437 1301 11       		.byte	0x11
 3438 1302 4402     		.2byte	0x244
 3439 1304 33000000 		.4byte	0x33
 3440 1308 30       		.byte	0x30
 3441 1309 07       		.uleb128 0x7
 3442 130a E5030000 		.4byte	.LASF325
ARM GAS  /tmp/ccQR1hla.s 			page 103


 3443 130e 11       		.byte	0x11
 3444 130f 4502     		.2byte	0x245
 3445 1311 08140000 		.4byte	0x1408
 3446 1315 34       		.byte	0x34
 3447 1316 07       		.uleb128 0x7
 3448 1317 731C0000 		.4byte	.LASF326
 3449 131b 11       		.byte	0x11
 3450 131c 4702     		.2byte	0x247
 3451 131e 33000000 		.4byte	0x33
 3452 1322 38       		.byte	0x38
 3453 1323 07       		.uleb128 0x7
 3454 1324 17180000 		.4byte	.LASF327
 3455 1328 11       		.byte	0x11
 3456 1329 4902     		.2byte	0x249
 3457 132b 6F150000 		.4byte	0x156f
 3458 132f 3C       		.byte	0x3c
 3459 1330 07       		.uleb128 0x7
 3460 1331 0F080000 		.4byte	.LASF328
 3461 1335 11       		.byte	0x11
 3462 1336 4C02     		.2byte	0x24c
 3463 1338 A10E0000 		.4byte	0xea1
 3464 133c 40       		.byte	0x40
 3465 133d 07       		.uleb128 0x7
 3466 133e FD070000 		.4byte	.LASF329
 3467 1342 11       		.byte	0x11
 3468 1343 4D02     		.2byte	0x24d
 3469 1345 33000000 		.4byte	0x33
 3470 1349 44       		.byte	0x44
 3471 134a 07       		.uleb128 0x7
 3472 134b 191A0000 		.4byte	.LASF330
 3473 134f 11       		.byte	0x11
 3474 1350 4E02     		.2byte	0x24e
 3475 1352 A10E0000 		.4byte	0xea1
 3476 1356 48       		.byte	0x48
 3477 1357 07       		.uleb128 0x7
 3478 1358 2D130000 		.4byte	.LASF331
 3479 135c 11       		.byte	0x11
 3480 135d 4F02     		.2byte	0x24f
 3481 135f 75150000 		.4byte	0x1575
 3482 1363 4C       		.byte	0x4c
 3483 1364 07       		.uleb128 0x7
 3484 1365 78020000 		.4byte	.LASF332
 3485 1369 11       		.byte	0x11
 3486 136a 5202     		.2byte	0x252
 3487 136c 33000000 		.4byte	0x33
 3488 1370 50       		.byte	0x50
 3489 1371 07       		.uleb128 0x7
 3490 1372 740F0000 		.4byte	.LASF333
 3491 1376 11       		.byte	0x11
 3492 1377 5302     		.2byte	0x253
 3493 1379 D2130000 		.4byte	0x13d2
 3494 137d 54       		.byte	0x54
 3495 137e 07       		.uleb128 0x7
 3496 137f F10C0000 		.4byte	.LASF334
 3497 1383 11       		.byte	0x11
 3498 1384 7602     		.2byte	0x276
 3499 1386 67110000 		.4byte	0x1167
ARM GAS  /tmp/ccQR1hla.s 			page 104


 3500 138a 58       		.byte	0x58
 3501 138b 23       		.uleb128 0x23
 3502 138c DF000000 		.4byte	.LASF272
 3503 1390 11       		.byte	0x11
 3504 1391 7A02     		.2byte	0x27a
 3505 1393 BE0F0000 		.4byte	0xfbe
 3506 1397 4801     		.2byte	0x148
 3507 1399 23       		.uleb128 0x23
 3508 139a FC160000 		.4byte	.LASF335
 3509 139e 11       		.byte	0x11
 3510 139f 7B02     		.2byte	0x27b
 3511 13a1 800F0000 		.4byte	0xf80
 3512 13a5 4C01     		.2byte	0x14c
 3513 13a7 23       		.uleb128 0x23
 3514 13a8 91160000 		.4byte	.LASF336
 3515 13ac 11       		.byte	0x11
 3516 13ad 7F02     		.2byte	0x27f
 3517 13af 86150000 		.4byte	0x1586
 3518 13b3 DC02     		.2byte	0x2dc
 3519 13b5 23       		.uleb128 0x23
 3520 13b6 F9170000 		.4byte	.LASF337
 3521 13ba 11       		.byte	0x11
 3522 13bb 8402     		.2byte	0x284
 3523 13bd 7E140000 		.4byte	0x147e
 3524 13c1 E002     		.2byte	0x2e0
 3525 13c3 23       		.uleb128 0x23
 3526 13c4 F2050000 		.4byte	.LASF338
 3527 13c8 11       		.byte	0x11
 3528 13c9 8502     		.2byte	0x285
 3529 13cb 92150000 		.4byte	0x1592
 3530 13cf EC02     		.2byte	0x2ec
 3531 13d1 00       		.byte	0
 3532 13d2 1A       		.uleb128 0x1a
 3533 13d3 04       		.byte	0x4
 3534 13d4 D8130000 		.4byte	0x13d8
 3535 13d8 02       		.uleb128 0x2
 3536 13d9 01       		.byte	0x1
 3537 13da 08       		.byte	0x8
 3538 13db 5E160000 		.4byte	.LASF339
 3539 13df 05       		.uleb128 0x5
 3540 13e0 D8130000 		.4byte	0x13d8
 3541 13e4 1A       		.uleb128 0x1a
 3542 13e5 04       		.byte	0x4
 3543 13e6 30110000 		.4byte	0x1130
 3544 13ea 1D       		.uleb128 0x1d
 3545 13eb 33000000 		.4byte	0x33
 3546 13ef 08140000 		.4byte	0x1408
 3547 13f3 1E       		.uleb128 0x1e
 3548 13f4 4E110000 		.4byte	0x114e
 3549 13f8 1E       		.uleb128 0x1e
 3550 13f9 D5020000 		.4byte	0x2d5
 3551 13fd 1E       		.uleb128 0x1e
 3552 13fe 08140000 		.4byte	0x1408
 3553 1402 1E       		.uleb128 0x1e
 3554 1403 33000000 		.4byte	0x33
 3555 1407 00       		.byte	0
 3556 1408 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccQR1hla.s 			page 105


 3557 1409 04       		.byte	0x4
 3558 140a DF130000 		.4byte	0x13df
 3559 140e 1A       		.uleb128 0x1a
 3560 140f 04       		.byte	0x4
 3561 1410 EA130000 		.4byte	0x13ea
 3562 1414 1D       		.uleb128 0x1d
 3563 1415 C20D0000 		.4byte	0xdc2
 3564 1419 32140000 		.4byte	0x1432
 3565 141d 1E       		.uleb128 0x1e
 3566 141e 4E110000 		.4byte	0x114e
 3567 1422 1E       		.uleb128 0x1e
 3568 1423 D5020000 		.4byte	0x2d5
 3569 1427 1E       		.uleb128 0x1e
 3570 1428 C20D0000 		.4byte	0xdc2
 3571 142c 1E       		.uleb128 0x1e
 3572 142d 33000000 		.4byte	0x33
 3573 1431 00       		.byte	0
 3574 1432 1A       		.uleb128 0x1a
 3575 1433 04       		.byte	0x4
 3576 1434 14140000 		.4byte	0x1414
 3577 1438 1D       		.uleb128 0x1d
 3578 1439 33000000 		.4byte	0x33
 3579 143d 4C140000 		.4byte	0x144c
 3580 1441 1E       		.uleb128 0x1e
 3581 1442 4E110000 		.4byte	0x114e
 3582 1446 1E       		.uleb128 0x1e
 3583 1447 D5020000 		.4byte	0x2d5
 3584 144b 00       		.byte	0
 3585 144c 1A       		.uleb128 0x1a
 3586 144d 04       		.byte	0x4
 3587 144e 38140000 		.4byte	0x1438
 3588 1452 0C       		.uleb128 0xc
 3589 1453 BA000000 		.4byte	0xba
 3590 1457 62140000 		.4byte	0x1462
 3591 145b 0D       		.uleb128 0xd
 3592 145c EC020000 		.4byte	0x2ec
 3593 1460 02       		.byte	0x2
 3594 1461 00       		.byte	0
 3595 1462 0C       		.uleb128 0xc
 3596 1463 BA000000 		.4byte	0xba
 3597 1467 72140000 		.4byte	0x1472
 3598 146b 0D       		.uleb128 0xd
 3599 146c EC020000 		.4byte	0x2ec
 3600 1470 00       		.byte	0
 3601 1471 00       		.byte	0
 3602 1472 08       		.uleb128 0x8
 3603 1473 EC1D0000 		.4byte	.LASF340
 3604 1477 11       		.byte	0x11
 3605 1478 1D01     		.2byte	0x11d
 3606 147a 06100000 		.4byte	0x1006
 3607 147e 24       		.uleb128 0x24
 3608 147f 6D160000 		.4byte	.LASF341
 3609 1483 0C       		.byte	0xc
 3610 1484 11       		.byte	0x11
 3611 1485 2101     		.2byte	0x121
 3612 1487 B3140000 		.4byte	0x14b3
 3613 148b 07       		.uleb128 0x7
ARM GAS  /tmp/ccQR1hla.s 			page 106


 3614 148c EF0D0000 		.4byte	.LASF252
 3615 1490 11       		.byte	0x11
 3616 1491 2301     		.2byte	0x123
 3617 1493 B3140000 		.4byte	0x14b3
 3618 1497 00       		.byte	0
 3619 1498 07       		.uleb128 0x7
 3620 1499 090D0000 		.4byte	.LASF342
 3621 149d 11       		.byte	0x11
 3622 149e 2401     		.2byte	0x124
 3623 14a0 33000000 		.4byte	0x33
 3624 14a4 04       		.byte	0x4
 3625 14a5 07       		.uleb128 0x7
 3626 14a6 F0140000 		.4byte	.LASF343
 3627 14aa 11       		.byte	0x11
 3628 14ab 2501     		.2byte	0x125
 3629 14ad B9140000 		.4byte	0x14b9
 3630 14b1 08       		.byte	0x8
 3631 14b2 00       		.byte	0
 3632 14b3 1A       		.uleb128 0x1a
 3633 14b4 04       		.byte	0x4
 3634 14b5 7E140000 		.4byte	0x147e
 3635 14b9 1A       		.uleb128 0x1a
 3636 14ba 04       		.byte	0x4
 3637 14bb 72140000 		.4byte	0x1472
 3638 14bf 24       		.uleb128 0x24
 3639 14c0 5B1F0000 		.4byte	.LASF344
 3640 14c4 0E       		.byte	0xe
 3641 14c5 11       		.byte	0x11
 3642 14c6 3D01     		.2byte	0x13d
 3643 14c8 F4140000 		.4byte	0x14f4
 3644 14cc 07       		.uleb128 0x7
 3645 14cd 44110000 		.4byte	.LASF345
 3646 14d1 11       		.byte	0x11
 3647 14d2 3E01     		.2byte	0x13e
 3648 14d4 F4140000 		.4byte	0x14f4
 3649 14d8 00       		.byte	0
 3650 14d9 07       		.uleb128 0x7
 3651 14da 180A0000 		.4byte	.LASF346
 3652 14de 11       		.byte	0x11
 3653 14df 3F01     		.2byte	0x13f
 3654 14e1 F4140000 		.4byte	0x14f4
 3655 14e5 06       		.byte	0x6
 3656 14e6 07       		.uleb128 0x7
 3657 14e7 28040000 		.4byte	.LASF347
 3658 14eb 11       		.byte	0x11
 3659 14ec 4001     		.2byte	0x140
 3660 14ee 3A000000 		.4byte	0x3a
 3661 14f2 0C       		.byte	0xc
 3662 14f3 00       		.byte	0
 3663 14f4 0C       		.uleb128 0xc
 3664 14f5 3A000000 		.4byte	0x3a
 3665 14f9 04150000 		.4byte	0x1504
 3666 14fd 0D       		.uleb128 0xd
 3667 14fe EC020000 		.4byte	0x2ec
 3668 1502 02       		.byte	0x2
 3669 1503 00       		.byte	0
 3670 1504 0C       		.uleb128 0xc
ARM GAS  /tmp/ccQR1hla.s 			page 107


 3671 1505 D8130000 		.4byte	0x13d8
 3672 1509 14150000 		.4byte	0x1514
 3673 150d 0D       		.uleb128 0xd
 3674 150e EC020000 		.4byte	0x2ec
 3675 1512 19       		.byte	0x19
 3676 1513 00       		.byte	0
 3677 1514 0C       		.uleb128 0xc
 3678 1515 D8130000 		.4byte	0x13d8
 3679 1519 24150000 		.4byte	0x1524
 3680 151d 0D       		.uleb128 0xd
 3681 151e EC020000 		.4byte	0x2ec
 3682 1522 07       		.byte	0x7
 3683 1523 00       		.byte	0
 3684 1524 0C       		.uleb128 0xc
 3685 1525 D8130000 		.4byte	0x13d8
 3686 1529 34150000 		.4byte	0x1534
 3687 152d 0D       		.uleb128 0xd
 3688 152e EC020000 		.4byte	0x2ec
 3689 1532 17       		.byte	0x17
 3690 1533 00       		.byte	0
 3691 1534 0C       		.uleb128 0xc
 3692 1535 00100000 		.4byte	0x1000
 3693 1539 44150000 		.4byte	0x1544
 3694 153d 0D       		.uleb128 0xd
 3695 153e EC020000 		.4byte	0x2ec
 3696 1542 1D       		.byte	0x1d
 3697 1543 00       		.byte	0
 3698 1544 0C       		.uleb128 0xc
 3699 1545 2C000000 		.4byte	0x2c
 3700 1549 54150000 		.4byte	0x1554
 3701 154d 0D       		.uleb128 0xd
 3702 154e EC020000 		.4byte	0x2ec
 3703 1552 1D       		.byte	0x1d
 3704 1553 00       		.byte	0
 3705 1554 0C       		.uleb128 0xc
 3706 1555 D8130000 		.4byte	0x13d8
 3707 1559 64150000 		.4byte	0x1564
 3708 155d 0D       		.uleb128 0xd
 3709 155e EC020000 		.4byte	0x2ec
 3710 1562 18       		.byte	0x18
 3711 1563 00       		.byte	0
 3712 1564 25       		.uleb128 0x25
 3713 1565 6F150000 		.4byte	0x156f
 3714 1569 1E       		.uleb128 0x1e
 3715 156a 4E110000 		.4byte	0x114e
 3716 156e 00       		.byte	0
 3717 156f 1A       		.uleb128 0x1a
 3718 1570 04       		.byte	0x4
 3719 1571 64150000 		.4byte	0x1564
 3720 1575 1A       		.uleb128 0x1a
 3721 1576 04       		.byte	0x4
 3722 1577 A10E0000 		.4byte	0xea1
 3723 157b 25       		.uleb128 0x25
 3724 157c 86150000 		.4byte	0x1586
 3725 1580 1E       		.uleb128 0x1e
 3726 1581 33000000 		.4byte	0x33
 3727 1585 00       		.byte	0
ARM GAS  /tmp/ccQR1hla.s 			page 108


 3728 1586 1A       		.uleb128 0x1a
 3729 1587 04       		.byte	0x4
 3730 1588 8C150000 		.4byte	0x158c
 3731 158c 1A       		.uleb128 0x1a
 3732 158d 04       		.byte	0x4
 3733 158e 7B150000 		.4byte	0x157b
 3734 1592 0C       		.uleb128 0xc
 3735 1593 72140000 		.4byte	0x1472
 3736 1597 A2150000 		.4byte	0x15a2
 3737 159b 0D       		.uleb128 0xd
 3738 159c EC020000 		.4byte	0x2ec
 3739 15a0 02       		.byte	0x2
 3740 15a1 00       		.byte	0
 3741 15a2 0E       		.uleb128 0xe
 3742 15a3 CA170000 		.4byte	.LASF348
 3743 15a7 11       		.byte	0x11
 3744 15a8 FD02     		.2byte	0x2fd
 3745 15aa 4E110000 		.4byte	0x114e
 3746 15ae 0E       		.uleb128 0xe
 3747 15af BD180000 		.4byte	.LASF349
 3748 15b3 11       		.byte	0x11
 3749 15b4 FE02     		.2byte	0x2fe
 3750 15b6 54110000 		.4byte	0x1154
 3751 15ba 26       		.uleb128 0x26
 3752 15bb 73746400 		.ascii	"std\000"
 3753 15bf 27       		.byte	0x27
 3754 15c0 00       		.byte	0
 3755 15c1 F1170000 		.4byte	0x17f1
 3756 15c5 27       		.uleb128 0x27
 3757 15c6 301F0000 		.4byte	.LASF355
 3758 15ca 15       		.byte	0x15
 3759 15cb DF       		.byte	0xdf
 3760 15cc 28       		.uleb128 0x28
 3761 15cd 15       		.byte	0x15
 3762 15ce DF       		.byte	0xdf
 3763 15cf C5150000 		.4byte	0x15c5
 3764 15d3 29       		.uleb128 0x29
 3765 15d4 12       		.byte	0x12
 3766 15d5 7C       		.byte	0x7c
 3767 15d6 7B180000 		.4byte	0x187b
 3768 15da 29       		.uleb128 0x29
 3769 15db 12       		.byte	0x12
 3770 15dc 7D       		.byte	0x7d
 3771 15dd AB180000 		.4byte	0x18ab
 3772 15e1 29       		.uleb128 0x29
 3773 15e2 12       		.byte	0x12
 3774 15e3 81       		.byte	0x81
 3775 15e4 1D190000 		.4byte	0x191d
 3776 15e8 29       		.uleb128 0x29
 3777 15e9 12       		.byte	0x12
 3778 15ea 87       		.byte	0x87
 3779 15eb 32190000 		.4byte	0x1932
 3780 15ef 29       		.uleb128 0x29
 3781 15f0 12       		.byte	0x12
 3782 15f1 88       		.byte	0x88
 3783 15f2 4E190000 		.4byte	0x194e
 3784 15f6 29       		.uleb128 0x29
ARM GAS  /tmp/ccQR1hla.s 			page 109


 3785 15f7 12       		.byte	0x12
 3786 15f8 89       		.byte	0x89
 3787 15f9 63190000 		.4byte	0x1963
 3788 15fd 29       		.uleb128 0x29
 3789 15fe 12       		.byte	0x12
 3790 15ff 8A       		.byte	0x8a
 3791 1600 78190000 		.4byte	0x1978
 3792 1604 29       		.uleb128 0x29
 3793 1605 12       		.byte	0x12
 3794 1606 8C       		.byte	0x8c
 3795 1607 A1190000 		.4byte	0x19a1
 3796 160b 29       		.uleb128 0x29
 3797 160c 12       		.byte	0x12
 3798 160d 8F       		.byte	0x8f
 3799 160e BB190000 		.4byte	0x19bb
 3800 1612 29       		.uleb128 0x29
 3801 1613 12       		.byte	0x12
 3802 1614 91       		.byte	0x91
 3803 1615 D0190000 		.4byte	0x19d0
 3804 1619 29       		.uleb128 0x29
 3805 161a 12       		.byte	0x12
 3806 161b 94       		.byte	0x94
 3807 161c EA190000 		.4byte	0x19ea
 3808 1620 29       		.uleb128 0x29
 3809 1621 12       		.byte	0x12
 3810 1622 95       		.byte	0x95
 3811 1623 041A0000 		.4byte	0x1a04
 3812 1627 29       		.uleb128 0x29
 3813 1628 12       		.byte	0x12
 3814 1629 96       		.byte	0x96
 3815 162a 351A0000 		.4byte	0x1a35
 3816 162e 29       		.uleb128 0x29
 3817 162f 12       		.byte	0x12
 3818 1630 98       		.byte	0x98
 3819 1631 541A0000 		.4byte	0x1a54
 3820 1635 29       		.uleb128 0x29
 3821 1636 12       		.byte	0x12
 3822 1637 9E       		.byte	0x9e
 3823 1638 741A0000 		.4byte	0x1a74
 3824 163c 29       		.uleb128 0x29
 3825 163d 12       		.byte	0x12
 3826 163e A0       		.byte	0xa0
 3827 163f 7F1A0000 		.4byte	0x1a7f
 3828 1643 29       		.uleb128 0x29
 3829 1644 12       		.byte	0x12
 3830 1645 A1       		.byte	0xa1
 3831 1646 901A0000 		.4byte	0x1a90
 3832 164a 29       		.uleb128 0x29
 3833 164b 12       		.byte	0x12
 3834 164c A2       		.byte	0xa2
 3835 164d B01A0000 		.4byte	0x1ab0
 3836 1651 29       		.uleb128 0x29
 3837 1652 12       		.byte	0x12
 3838 1653 A3       		.byte	0xa3
 3839 1654 CF1A0000 		.4byte	0x1acf
 3840 1658 29       		.uleb128 0x29
 3841 1659 12       		.byte	0x12
ARM GAS  /tmp/ccQR1hla.s 			page 110


 3842 165a A4       		.byte	0xa4
 3843 165b EE1A0000 		.4byte	0x1aee
 3844 165f 29       		.uleb128 0x29
 3845 1660 12       		.byte	0x12
 3846 1661 A6       		.byte	0xa6
 3847 1662 031B0000 		.4byte	0x1b03
 3848 1666 29       		.uleb128 0x29
 3849 1667 12       		.byte	0x12
 3850 1668 A7       		.byte	0xa7
 3851 1669 281B0000 		.4byte	0x1b28
 3852 166d 2A       		.uleb128 0x2a
 3853 166e 12       		.byte	0x12
 3854 166f 0401     		.2byte	0x104
 3855 1671 DB180000 		.4byte	0x18db
 3856 1675 2A       		.uleb128 0x2a
 3857 1676 12       		.byte	0x12
 3858 1677 0901     		.2byte	0x109
 3859 1679 3B180000 		.4byte	0x183b
 3860 167d 2A       		.uleb128 0x2a
 3861 167e 12       		.byte	0x12
 3862 167f 0A01     		.2byte	0x10a
 3863 1681 421B0000 		.4byte	0x1b42
 3864 1685 2A       		.uleb128 0x2a
 3865 1686 12       		.byte	0x12
 3866 1687 0C01     		.2byte	0x10c
 3867 1689 5C1B0000 		.4byte	0x1b5c
 3868 168d 2A       		.uleb128 0x2a
 3869 168e 12       		.byte	0x12
 3870 168f 0D01     		.2byte	0x10d
 3871 1691 AF1B0000 		.4byte	0x1baf
 3872 1695 2A       		.uleb128 0x2a
 3873 1696 12       		.byte	0x12
 3874 1697 0E01     		.2byte	0x10e
 3875 1699 711B0000 		.4byte	0x1b71
 3876 169d 2A       		.uleb128 0x2a
 3877 169e 12       		.byte	0x12
 3878 169f 0F01     		.2byte	0x10f
 3879 16a1 901B0000 		.4byte	0x1b90
 3880 16a5 2A       		.uleb128 0x2a
 3881 16a6 12       		.byte	0x12
 3882 16a7 1001     		.2byte	0x110
 3883 16a9 C91B0000 		.4byte	0x1bc9
 3884 16ad 2B       		.uleb128 0x2b
 3885 16ae 61627300 		.ascii	"abs\000"
 3886 16b2 12       		.byte	0x12
 3887 16b3 B4       		.byte	0xb4
 3888 16b4 64080000 		.4byte	.LASF679
 3889 16b8 7E000000 		.4byte	0x7e
 3890 16bc C6160000 		.4byte	0x16c6
 3891 16c0 1E       		.uleb128 0x1e
 3892 16c1 7E000000 		.4byte	0x7e
 3893 16c5 00       		.byte	0
 3894 16c6 2A       		.uleb128 0x2a
 3895 16c7 04       		.byte	0x4
 3896 16c8 4D04     		.2byte	0x44d
 3897 16ca CE1C0000 		.4byte	0x1cce
 3898 16ce 2A       		.uleb128 0x2a
ARM GAS  /tmp/ccQR1hla.s 			page 111


 3899 16cf 04       		.byte	0x4
 3900 16d0 4E04     		.2byte	0x44e
 3901 16d2 C31C0000 		.4byte	0x1cc3
 3902 16d6 2C       		.uleb128 0x2c
 3903 16d7 3D0A0000 		.4byte	.LASF350
 3904 16db 04       		.byte	0x4
 3905 16dc 9301     		.2byte	0x193
 3906 16de 8C1B0000 		.4byte	.LASF352
 3907 16e2 85000000 		.4byte	0x85
 3908 16e6 F5160000 		.4byte	0x16f5
 3909 16ea 1E       		.uleb128 0x1e
 3910 16eb 85000000 		.4byte	0x85
 3911 16ef 1E       		.uleb128 0x1e
 3912 16f0 0F1D0000 		.4byte	0x1d0f
 3913 16f4 00       		.byte	0
 3914 16f5 29       		.uleb128 0x29
 3915 16f6 13       		.byte	0x13
 3916 16f7 30       		.byte	0x30
 3917 16f8 8D010000 		.4byte	0x18d
 3918 16fc 29       		.uleb128 0x29
 3919 16fd 13       		.byte	0x13
 3920 16fe 31       		.byte	0x31
 3921 16ff A8010000 		.4byte	0x1a8
 3922 1703 29       		.uleb128 0x29
 3923 1704 13       		.byte	0x13
 3924 1705 32       		.byte	0x32
 3925 1706 BE010000 		.4byte	0x1be
 3926 170a 29       		.uleb128 0x29
 3927 170b 13       		.byte	0x13
 3928 170c 33       		.byte	0x33
 3929 170d E3010000 		.4byte	0x1e3
 3930 1711 29       		.uleb128 0x29
 3931 1712 13       		.byte	0x13
 3932 1713 35       		.byte	0x35
 3933 1714 67020000 		.4byte	0x267
 3934 1718 29       		.uleb128 0x29
 3935 1719 13       		.byte	0x13
 3936 171a 36       		.byte	0x36
 3937 171b 7D020000 		.4byte	0x27d
 3938 171f 29       		.uleb128 0x29
 3939 1720 13       		.byte	0x13
 3940 1721 37       		.byte	0x37
 3941 1722 93020000 		.4byte	0x293
 3942 1726 29       		.uleb128 0x29
 3943 1727 13       		.byte	0x13
 3944 1728 38       		.byte	0x38
 3945 1729 A9020000 		.4byte	0x2a9
 3946 172d 29       		.uleb128 0x29
 3947 172e 13       		.byte	0x13
 3948 172f 3A       		.byte	0x3a
 3949 1730 0F020000 		.4byte	0x20f
 3950 1734 29       		.uleb128 0x29
 3951 1735 13       		.byte	0x13
 3952 1736 3B       		.byte	0x3b
 3953 1737 25020000 		.4byte	0x225
 3954 173b 29       		.uleb128 0x29
 3955 173c 13       		.byte	0x13
ARM GAS  /tmp/ccQR1hla.s 			page 112


 3956 173d 3C       		.byte	0x3c
 3957 173e 3B020000 		.4byte	0x23b
 3958 1742 29       		.uleb128 0x29
 3959 1743 13       		.byte	0x13
 3960 1744 3D       		.byte	0x3d
 3961 1745 51020000 		.4byte	0x251
 3962 1749 29       		.uleb128 0x29
 3963 174a 13       		.byte	0x13
 3964 174b 3F       		.byte	0x3f
 3965 174c BF020000 		.4byte	0x2bf
 3966 1750 29       		.uleb128 0x29
 3967 1751 13       		.byte	0x13
 3968 1752 40       		.byte	0x40
 3969 1753 F9010000 		.4byte	0x1f9
 3970 1757 29       		.uleb128 0x29
 3971 1758 13       		.byte	0x13
 3972 1759 42       		.byte	0x42
 3973 175a 98010000 		.4byte	0x198
 3974 175e 29       		.uleb128 0x29
 3975 175f 13       		.byte	0x13
 3976 1760 43       		.byte	0x43
 3977 1761 B3010000 		.4byte	0x1b3
 3978 1765 29       		.uleb128 0x29
 3979 1766 13       		.byte	0x13
 3980 1767 44       		.byte	0x44
 3981 1768 CE010000 		.4byte	0x1ce
 3982 176c 29       		.uleb128 0x29
 3983 176d 13       		.byte	0x13
 3984 176e 45       		.byte	0x45
 3985 176f EE010000 		.4byte	0x1ee
 3986 1773 29       		.uleb128 0x29
 3987 1774 13       		.byte	0x13
 3988 1775 47       		.byte	0x47
 3989 1776 72020000 		.4byte	0x272
 3990 177a 29       		.uleb128 0x29
 3991 177b 13       		.byte	0x13
 3992 177c 48       		.byte	0x48
 3993 177d 88020000 		.4byte	0x288
 3994 1781 29       		.uleb128 0x29
 3995 1782 13       		.byte	0x13
 3996 1783 49       		.byte	0x49
 3997 1784 9E020000 		.4byte	0x29e
 3998 1788 29       		.uleb128 0x29
 3999 1789 13       		.byte	0x13
 4000 178a 4A       		.byte	0x4a
 4001 178b B4020000 		.4byte	0x2b4
 4002 178f 29       		.uleb128 0x29
 4003 1790 13       		.byte	0x13
 4004 1791 4C       		.byte	0x4c
 4005 1792 1A020000 		.4byte	0x21a
 4006 1796 29       		.uleb128 0x29
 4007 1797 13       		.byte	0x13
 4008 1798 4D       		.byte	0x4d
 4009 1799 30020000 		.4byte	0x230
 4010 179d 29       		.uleb128 0x29
 4011 179e 13       		.byte	0x13
 4012 179f 4E       		.byte	0x4e
ARM GAS  /tmp/ccQR1hla.s 			page 113


 4013 17a0 46020000 		.4byte	0x246
 4014 17a4 29       		.uleb128 0x29
 4015 17a5 13       		.byte	0x13
 4016 17a6 4F       		.byte	0x4f
 4017 17a7 5C020000 		.4byte	0x25c
 4018 17ab 29       		.uleb128 0x29
 4019 17ac 13       		.byte	0x13
 4020 17ad 51       		.byte	0x51
 4021 17ae CA020000 		.4byte	0x2ca
 4022 17b2 29       		.uleb128 0x29
 4023 17b3 13       		.byte	0x13
 4024 17b4 52       		.byte	0x52
 4025 17b5 04020000 		.4byte	0x204
 4026 17b9 29       		.uleb128 0x29
 4027 17ba 14       		.byte	0x14
 4028 17bb 38       		.byte	0x38
 4029 17bc 8C000000 		.4byte	0x8c
 4030 17c0 2C       		.uleb128 0x2c
 4031 17c1 951C0000 		.4byte	.LASF351
 4032 17c5 04       		.byte	0x4
 4033 17c6 7A06     		.2byte	0x67a
 4034 17c8 DA0C0000 		.4byte	.LASF353
 4035 17cc E9000000 		.4byte	0xe9
 4036 17d0 DA170000 		.4byte	0x17da
 4037 17d4 1E       		.uleb128 0x1e
 4038 17d5 25000000 		.4byte	0x25
 4039 17d9 00       		.byte	0
 4040 17da 2D       		.uleb128 0x2d
 4041 17db 6E0F0000 		.4byte	.LASF356
 4042 17df 04       		.byte	0x4
 4043 17e0 8102     		.2byte	0x281
 4044 17e2 F50D0000 		.4byte	.LASF680
 4045 17e6 901C0000 		.4byte	0x1c90
 4046 17ea 1E       		.uleb128 0x1e
 4047 17eb 25000000 		.4byte	0x25
 4048 17ef 00       		.byte	0
 4049 17f0 00       		.byte	0
 4050 17f1 2E       		.uleb128 0x2e
 4051 17f2 4A060000 		.4byte	.LASF354
 4052 17f6 15       		.byte	0x15
 4053 17f7 E1       		.byte	0xe1
 4054 17f8 56180000 		.4byte	0x1856
 4055 17fc 27       		.uleb128 0x27
 4056 17fd 301F0000 		.4byte	.LASF355
 4057 1801 15       		.byte	0x15
 4058 1802 E3       		.byte	0xe3
 4059 1803 28       		.uleb128 0x28
 4060 1804 15       		.byte	0x15
 4061 1805 E3       		.byte	0xe3
 4062 1806 FC170000 		.4byte	0x17fc
 4063 180a 29       		.uleb128 0x29
 4064 180b 12       		.byte	0x12
 4065 180c DC       		.byte	0xdc
 4066 180d DB180000 		.4byte	0x18db
 4067 1811 29       		.uleb128 0x29
 4068 1812 12       		.byte	0x12
 4069 1813 EC       		.byte	0xec
ARM GAS  /tmp/ccQR1hla.s 			page 114


 4070 1814 421B0000 		.4byte	0x1b42
 4071 1818 29       		.uleb128 0x29
 4072 1819 12       		.byte	0x12
 4073 181a F7       		.byte	0xf7
 4074 181b 5C1B0000 		.4byte	0x1b5c
 4075 181f 29       		.uleb128 0x29
 4076 1820 12       		.byte	0x12
 4077 1821 F8       		.byte	0xf8
 4078 1822 711B0000 		.4byte	0x1b71
 4079 1826 29       		.uleb128 0x29
 4080 1827 12       		.byte	0x12
 4081 1828 F9       		.byte	0xf9
 4082 1829 901B0000 		.4byte	0x1b90
 4083 182d 29       		.uleb128 0x29
 4084 182e 12       		.byte	0x12
 4085 182f FB       		.byte	0xfb
 4086 1830 AF1B0000 		.4byte	0x1baf
 4087 1834 29       		.uleb128 0x29
 4088 1835 12       		.byte	0x12
 4089 1836 FC       		.byte	0xfc
 4090 1837 C91B0000 		.4byte	0x1bc9
 4091 183b 2F       		.uleb128 0x2f
 4092 183c 64697600 		.ascii	"div\000"
 4093 1840 12       		.byte	0x12
 4094 1841 E9       		.byte	0xe9
 4095 1842 5D1D0000 		.4byte	.LASF681
 4096 1846 DB180000 		.4byte	0x18db
 4097 184a 1E       		.uleb128 0x1e
 4098 184b 7E000000 		.4byte	0x7e
 4099 184f 1E       		.uleb128 0x1e
 4100 1850 7E000000 		.4byte	0x7e
 4101 1854 00       		.byte	0
 4102 1855 00       		.byte	0
 4103 1856 10       		.uleb128 0x10
 4104 1857 08       		.byte	0x8
 4105 1858 16       		.byte	0x16
 4106 1859 20       		.byte	0x20
 4107 185a C81A0000 		.4byte	.LASF357
 4108 185e 7B180000 		.4byte	0x187b
 4109 1862 11       		.uleb128 0x11
 4110 1863 E80B0000 		.4byte	.LASF358
 4111 1867 16       		.byte	0x16
 4112 1868 21       		.byte	0x21
 4113 1869 33000000 		.4byte	0x33
 4114 186d 00       		.byte	0
 4115 186e 19       		.uleb128 0x19
 4116 186f 72656D00 		.ascii	"rem\000"
 4117 1873 16       		.byte	0x16
 4118 1874 22       		.byte	0x22
 4119 1875 33000000 		.4byte	0x33
 4120 1879 04       		.byte	0x4
 4121 187a 00       		.byte	0
 4122 187b 04       		.uleb128 0x4
 4123 187c D71A0000 		.4byte	.LASF359
 4124 1880 16       		.byte	0x16
 4125 1881 23       		.byte	0x23
 4126 1882 56180000 		.4byte	0x1856
ARM GAS  /tmp/ccQR1hla.s 			page 115


 4127 1886 10       		.uleb128 0x10
 4128 1887 08       		.byte	0x8
 4129 1888 16       		.byte	0x16
 4130 1889 26       		.byte	0x26
 4131 188a DE040000 		.4byte	.LASF360
 4132 188e AB180000 		.4byte	0x18ab
 4133 1892 11       		.uleb128 0x11
 4134 1893 E80B0000 		.4byte	.LASF358
 4135 1897 16       		.byte	0x16
 4136 1898 27       		.byte	0x27
 4137 1899 E9000000 		.4byte	0xe9
 4138 189d 00       		.byte	0
 4139 189e 19       		.uleb128 0x19
 4140 189f 72656D00 		.ascii	"rem\000"
 4141 18a3 16       		.byte	0x16
 4142 18a4 28       		.byte	0x28
 4143 18a5 E9000000 		.4byte	0xe9
 4144 18a9 04       		.byte	0x4
 4145 18aa 00       		.byte	0
 4146 18ab 04       		.uleb128 0x4
 4147 18ac D20E0000 		.4byte	.LASF361
 4148 18b0 16       		.byte	0x16
 4149 18b1 29       		.byte	0x29
 4150 18b2 86180000 		.4byte	0x1886
 4151 18b6 10       		.uleb128 0x10
 4152 18b7 10       		.byte	0x10
 4153 18b8 16       		.byte	0x16
 4154 18b9 2D       		.byte	0x2d
 4155 18ba C4000000 		.4byte	.LASF362
 4156 18be DB180000 		.4byte	0x18db
 4157 18c2 11       		.uleb128 0x11
 4158 18c3 E80B0000 		.4byte	.LASF358
 4159 18c7 16       		.byte	0x16
 4160 18c8 2E       		.byte	0x2e
 4161 18c9 7E000000 		.4byte	0x7e
 4162 18cd 00       		.byte	0
 4163 18ce 19       		.uleb128 0x19
 4164 18cf 72656D00 		.ascii	"rem\000"
 4165 18d3 16       		.byte	0x16
 4166 18d4 2F       		.byte	0x2f
 4167 18d5 7E000000 		.4byte	0x7e
 4168 18d9 08       		.byte	0x8
 4169 18da 00       		.byte	0
 4170 18db 04       		.uleb128 0x4
 4171 18dc BA0C0000 		.4byte	.LASF363
 4172 18e0 16       		.byte	0x16
 4173 18e1 30       		.byte	0x30
 4174 18e2 B6180000 		.4byte	0x18b6
 4175 18e6 04       		.uleb128 0x4
 4176 18e7 4E1B0000 		.4byte	.LASF364
 4177 18eb 16       		.byte	0x16
 4178 18ec 35       		.byte	0x35
 4179 18ed F1180000 		.4byte	0x18f1
 4180 18f1 1A       		.uleb128 0x1a
 4181 18f2 04       		.byte	0x4
 4182 18f3 F7180000 		.4byte	0x18f7
 4183 18f7 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccQR1hla.s 			page 116


 4184 18f8 33000000 		.4byte	0x33
 4185 18fc 0B190000 		.4byte	0x190b
 4186 1900 1E       		.uleb128 0x1e
 4187 1901 0B190000 		.4byte	0x190b
 4188 1905 1E       		.uleb128 0x1e
 4189 1906 0B190000 		.4byte	0x190b
 4190 190a 00       		.byte	0
 4191 190b 1A       		.uleb128 0x1a
 4192 190c 04       		.byte	0x4
 4193 190d 11190000 		.4byte	0x1911
 4194 1911 30       		.uleb128 0x30
 4195 1912 0F       		.uleb128 0xf
 4196 1913 AB150000 		.4byte	.LASF365
 4197 1917 16       		.byte	0x16
 4198 1918 5F       		.byte	0x5f
 4199 1919 D2130000 		.4byte	0x13d2
 4200 191d 31       		.uleb128 0x31
 4201 191e 420A0000 		.4byte	.LASF366
 4202 1922 16       		.byte	0x16
 4203 1923 48       		.byte	0x48
 4204 1924 33000000 		.4byte	0x33
 4205 1928 32190000 		.4byte	0x1932
 4206 192c 1E       		.uleb128 0x1e
 4207 192d D40F0000 		.4byte	0xfd4
 4208 1931 00       		.byte	0
 4209 1932 31       		.uleb128 0x31
 4210 1933 98030000 		.4byte	.LASF367
 4211 1937 16       		.byte	0x16
 4212 1938 49       		.byte	0x49
 4213 1939 47190000 		.4byte	0x1947
 4214 193d 47190000 		.4byte	0x1947
 4215 1941 1E       		.uleb128 0x1e
 4216 1942 08140000 		.4byte	0x1408
 4217 1946 00       		.byte	0
 4218 1947 02       		.uleb128 0x2
 4219 1948 08       		.byte	0x8
 4220 1949 04       		.byte	0x4
 4221 194a B1180000 		.4byte	.LASF368
 4222 194e 31       		.uleb128 0x31
 4223 194f A4030000 		.4byte	.LASF369
 4224 1953 16       		.byte	0x16
 4225 1954 4D       		.byte	0x4d
 4226 1955 33000000 		.4byte	0x33
 4227 1959 63190000 		.4byte	0x1963
 4228 195d 1E       		.uleb128 0x1e
 4229 195e 08140000 		.4byte	0x1408
 4230 1962 00       		.byte	0
 4231 1963 31       		.uleb128 0x31
 4232 1964 B8030000 		.4byte	.LASF370
 4233 1968 16       		.byte	0x16
 4234 1969 4F       		.byte	0x4f
 4235 196a E9000000 		.4byte	0xe9
 4236 196e 78190000 		.4byte	0x1978
 4237 1972 1E       		.uleb128 0x1e
 4238 1973 08140000 		.4byte	0x1408
 4239 1977 00       		.byte	0
 4240 1978 31       		.uleb128 0x31
ARM GAS  /tmp/ccQR1hla.s 			page 117


 4241 1979 70170000 		.4byte	.LASF371
 4242 197d 16       		.byte	0x16
 4243 197e 51       		.byte	0x51
 4244 197f D5020000 		.4byte	0x2d5
 4245 1983 A1190000 		.4byte	0x19a1
 4246 1987 1E       		.uleb128 0x1e
 4247 1988 0B190000 		.4byte	0x190b
 4248 198c 1E       		.uleb128 0x1e
 4249 198d 0B190000 		.4byte	0x190b
 4250 1991 1E       		.uleb128 0x1e
 4251 1992 41000000 		.4byte	0x41
 4252 1996 1E       		.uleb128 0x1e
 4253 1997 41000000 		.4byte	0x41
 4254 199b 1E       		.uleb128 0x1e
 4255 199c E6180000 		.4byte	0x18e6
 4256 19a0 00       		.byte	0
 4257 19a1 32       		.uleb128 0x32
 4258 19a2 64697600 		.ascii	"div\000"
 4259 19a6 16       		.byte	0x16
 4260 19a7 57       		.byte	0x57
 4261 19a8 7B180000 		.4byte	0x187b
 4262 19ac BB190000 		.4byte	0x19bb
 4263 19b0 1E       		.uleb128 0x1e
 4264 19b1 33000000 		.4byte	0x33
 4265 19b5 1E       		.uleb128 0x1e
 4266 19b6 33000000 		.4byte	0x33
 4267 19ba 00       		.byte	0
 4268 19bb 31       		.uleb128 0x31
 4269 19bc 6C1C0000 		.4byte	.LASF372
 4270 19c0 16       		.byte	0x16
 4271 19c1 5A       		.byte	0x5a
 4272 19c2 D2130000 		.4byte	0x13d2
 4273 19c6 D0190000 		.4byte	0x19d0
 4274 19ca 1E       		.uleb128 0x1e
 4275 19cb 08140000 		.4byte	0x1408
 4276 19cf 00       		.byte	0
 4277 19d0 31       		.uleb128 0x31
 4278 19d1 65180000 		.4byte	.LASF373
 4279 19d5 16       		.byte	0x16
 4280 19d6 63       		.byte	0x63
 4281 19d7 AB180000 		.4byte	0x18ab
 4282 19db EA190000 		.4byte	0x19ea
 4283 19df 1E       		.uleb128 0x1e
 4284 19e0 E9000000 		.4byte	0xe9
 4285 19e4 1E       		.uleb128 0x1e
 4286 19e5 E9000000 		.4byte	0xe9
 4287 19e9 00       		.byte	0
 4288 19ea 31       		.uleb128 0x31
 4289 19eb D40C0000 		.4byte	.LASF374
 4290 19ef 16       		.byte	0x16
 4291 19f0 65       		.byte	0x65
 4292 19f1 33000000 		.4byte	0x33
 4293 19f5 041A0000 		.4byte	0x1a04
 4294 19f9 1E       		.uleb128 0x1e
 4295 19fa 08140000 		.4byte	0x1408
 4296 19fe 1E       		.uleb128 0x1e
 4297 19ff 41000000 		.4byte	0x41
ARM GAS  /tmp/ccQR1hla.s 			page 118


 4298 1a03 00       		.byte	0
 4299 1a04 31       		.uleb128 0x31
 4300 1a05 98130000 		.4byte	.LASF375
 4301 1a09 16       		.byte	0x16
 4302 1a0a 6B       		.byte	0x6b
 4303 1a0b 41000000 		.4byte	0x41
 4304 1a0f 231A0000 		.4byte	0x1a23
 4305 1a13 1E       		.uleb128 0x1e
 4306 1a14 231A0000 		.4byte	0x1a23
 4307 1a18 1E       		.uleb128 0x1e
 4308 1a19 08140000 		.4byte	0x1408
 4309 1a1d 1E       		.uleb128 0x1e
 4310 1a1e 41000000 		.4byte	0x41
 4311 1a22 00       		.byte	0
 4312 1a23 1A       		.uleb128 0x1a
 4313 1a24 04       		.byte	0x4
 4314 1a25 291A0000 		.4byte	0x1a29
 4315 1a29 02       		.uleb128 0x2
 4316 1a2a 04       		.byte	0x4
 4317 1a2b 07       		.byte	0x7
 4318 1a2c 48130000 		.4byte	.LASF376
 4319 1a30 05       		.uleb128 0x5
 4320 1a31 291A0000 		.4byte	0x1a29
 4321 1a35 31       		.uleb128 0x31
 4322 1a36 FD1A0000 		.4byte	.LASF377
 4323 1a3a 16       		.byte	0x16
 4324 1a3b 67       		.byte	0x67
 4325 1a3c 33000000 		.4byte	0x33
 4326 1a40 541A0000 		.4byte	0x1a54
 4327 1a44 1E       		.uleb128 0x1e
 4328 1a45 231A0000 		.4byte	0x1a23
 4329 1a49 1E       		.uleb128 0x1e
 4330 1a4a 08140000 		.4byte	0x1408
 4331 1a4e 1E       		.uleb128 0x1e
 4332 1a4f 41000000 		.4byte	0x41
 4333 1a53 00       		.byte	0
 4334 1a54 33       		.uleb128 0x33
 4335 1a55 3F190000 		.4byte	.LASF378
 4336 1a59 16       		.byte	0x16
 4337 1a5a 87       		.byte	0x87
 4338 1a5b 741A0000 		.4byte	0x1a74
 4339 1a5f 1E       		.uleb128 0x1e
 4340 1a60 D5020000 		.4byte	0x2d5
 4341 1a64 1E       		.uleb128 0x1e
 4342 1a65 41000000 		.4byte	0x41
 4343 1a69 1E       		.uleb128 0x1e
 4344 1a6a 41000000 		.4byte	0x41
 4345 1a6e 1E       		.uleb128 0x1e
 4346 1a6f E6180000 		.4byte	0x18e6
 4347 1a73 00       		.byte	0
 4348 1a74 34       		.uleb128 0x34
 4349 1a75 9C1C0000 		.4byte	.LASF682
 4350 1a79 16       		.byte	0x16
 4351 1a7a 88       		.byte	0x88
 4352 1a7b 33000000 		.4byte	0x33
 4353 1a7f 33       		.uleb128 0x33
 4354 1a80 AB100000 		.4byte	.LASF379
ARM GAS  /tmp/ccQR1hla.s 			page 119


 4355 1a84 16       		.byte	0x16
 4356 1a85 93       		.byte	0x93
 4357 1a86 901A0000 		.4byte	0x1a90
 4358 1a8a 1E       		.uleb128 0x1e
 4359 1a8b 2C000000 		.4byte	0x2c
 4360 1a8f 00       		.byte	0
 4361 1a90 31       		.uleb128 0x31
 4362 1a91 77150000 		.4byte	.LASF380
 4363 1a95 16       		.byte	0x16
 4364 1a96 94       		.byte	0x94
 4365 1a97 47190000 		.4byte	0x1947
 4366 1a9b AA1A0000 		.4byte	0x1aaa
 4367 1a9f 1E       		.uleb128 0x1e
 4368 1aa0 08140000 		.4byte	0x1408
 4369 1aa4 1E       		.uleb128 0x1e
 4370 1aa5 AA1A0000 		.4byte	0x1aaa
 4371 1aa9 00       		.byte	0
 4372 1aaa 1A       		.uleb128 0x1a
 4373 1aab 04       		.byte	0x4
 4374 1aac D2130000 		.4byte	0x13d2
 4375 1ab0 31       		.uleb128 0x31
 4376 1ab1 88150000 		.4byte	.LASF381
 4377 1ab5 16       		.byte	0x16
 4378 1ab6 9F       		.byte	0x9f
 4379 1ab7 E9000000 		.4byte	0xe9
 4380 1abb CF1A0000 		.4byte	0x1acf
 4381 1abf 1E       		.uleb128 0x1e
 4382 1ac0 08140000 		.4byte	0x1408
 4383 1ac4 1E       		.uleb128 0x1e
 4384 1ac5 AA1A0000 		.4byte	0x1aaa
 4385 1ac9 1E       		.uleb128 0x1e
 4386 1aca 33000000 		.4byte	0x33
 4387 1ace 00       		.byte	0
 4388 1acf 31       		.uleb128 0x31
 4389 1ad0 9B0E0000 		.4byte	.LASF382
 4390 1ad4 16       		.byte	0x16
 4391 1ad5 A1       		.byte	0xa1
 4392 1ad6 FB000000 		.4byte	0xfb
 4393 1ada EE1A0000 		.4byte	0x1aee
 4394 1ade 1E       		.uleb128 0x1e
 4395 1adf 08140000 		.4byte	0x1408
 4396 1ae3 1E       		.uleb128 0x1e
 4397 1ae4 AA1A0000 		.4byte	0x1aaa
 4398 1ae8 1E       		.uleb128 0x1e
 4399 1ae9 33000000 		.4byte	0x33
 4400 1aed 00       		.byte	0
 4401 1aee 31       		.uleb128 0x31
 4402 1aef 91110000 		.4byte	.LASF383
 4403 1af3 16       		.byte	0x16
 4404 1af4 A4       		.byte	0xa4
 4405 1af5 33000000 		.4byte	0x33
 4406 1af9 031B0000 		.4byte	0x1b03
 4407 1afd 1E       		.uleb128 0x1e
 4408 1afe 08140000 		.4byte	0x1408
 4409 1b02 00       		.byte	0
 4410 1b03 31       		.uleb128 0x31
 4411 1b04 4A0F0000 		.4byte	.LASF384
ARM GAS  /tmp/ccQR1hla.s 			page 120


 4412 1b08 16       		.byte	0x16
 4413 1b09 6D       		.byte	0x6d
 4414 1b0a 41000000 		.4byte	0x41
 4415 1b0e 221B0000 		.4byte	0x1b22
 4416 1b12 1E       		.uleb128 0x1e
 4417 1b13 D2130000 		.4byte	0x13d2
 4418 1b17 1E       		.uleb128 0x1e
 4419 1b18 221B0000 		.4byte	0x1b22
 4420 1b1c 1E       		.uleb128 0x1e
 4421 1b1d 41000000 		.4byte	0x41
 4422 1b21 00       		.byte	0
 4423 1b22 1A       		.uleb128 0x1a
 4424 1b23 04       		.byte	0x4
 4425 1b24 301A0000 		.4byte	0x1a30
 4426 1b28 31       		.uleb128 0x31
 4427 1b29 53050000 		.4byte	.LASF385
 4428 1b2d 16       		.byte	0x16
 4429 1b2e 69       		.byte	0x69
 4430 1b2f 33000000 		.4byte	0x33
 4431 1b33 421B0000 		.4byte	0x1b42
 4432 1b37 1E       		.uleb128 0x1e
 4433 1b38 D2130000 		.4byte	0x13d2
 4434 1b3c 1E       		.uleb128 0x1e
 4435 1b3d 291A0000 		.4byte	0x1a29
 4436 1b41 00       		.byte	0
 4437 1b42 31       		.uleb128 0x31
 4438 1b43 41070000 		.4byte	.LASF386
 4439 1b47 16       		.byte	0x16
 4440 1b48 F1       		.byte	0xf1
 4441 1b49 DB180000 		.4byte	0x18db
 4442 1b4d 5C1B0000 		.4byte	0x1b5c
 4443 1b51 1E       		.uleb128 0x1e
 4444 1b52 7E000000 		.4byte	0x7e
 4445 1b56 1E       		.uleb128 0x1e
 4446 1b57 7E000000 		.4byte	0x7e
 4447 1b5b 00       		.byte	0
 4448 1b5c 31       		.uleb128 0x31
 4449 1b5d 2A170000 		.4byte	.LASF387
 4450 1b61 16       		.byte	0x16
 4451 1b62 EC       		.byte	0xec
 4452 1b63 7E000000 		.4byte	0x7e
 4453 1b67 711B0000 		.4byte	0x1b71
 4454 1b6b 1E       		.uleb128 0x1e
 4455 1b6c 08140000 		.4byte	0x1408
 4456 1b70 00       		.byte	0
 4457 1b71 31       		.uleb128 0x31
 4458 1b72 1E0A0000 		.4byte	.LASF388
 4459 1b76 16       		.byte	0x16
 4460 1b77 F2       		.byte	0xf2
 4461 1b78 7E000000 		.4byte	0x7e
 4462 1b7c 901B0000 		.4byte	0x1b90
 4463 1b80 1E       		.uleb128 0x1e
 4464 1b81 08140000 		.4byte	0x1408
 4465 1b85 1E       		.uleb128 0x1e
 4466 1b86 AA1A0000 		.4byte	0x1aaa
 4467 1b8a 1E       		.uleb128 0x1e
 4468 1b8b 33000000 		.4byte	0x33
ARM GAS  /tmp/ccQR1hla.s 			page 121


 4469 1b8f 00       		.byte	0
 4470 1b90 31       		.uleb128 0x31
 4471 1b91 FF1D0000 		.4byte	.LASF389
 4472 1b95 16       		.byte	0x16
 4473 1b96 F6       		.byte	0xf6
 4474 1b97 18010000 		.4byte	0x118
 4475 1b9b AF1B0000 		.4byte	0x1baf
 4476 1b9f 1E       		.uleb128 0x1e
 4477 1ba0 08140000 		.4byte	0x1408
 4478 1ba4 1E       		.uleb128 0x1e
 4479 1ba5 AA1A0000 		.4byte	0x1aaa
 4480 1ba9 1E       		.uleb128 0x1e
 4481 1baa 33000000 		.4byte	0x33
 4482 1bae 00       		.byte	0
 4483 1baf 31       		.uleb128 0x31
 4484 1bb0 89020000 		.4byte	.LASF390
 4485 1bb4 16       		.byte	0x16
 4486 1bb5 97       		.byte	0x97
 4487 1bb6 25000000 		.4byte	0x25
 4488 1bba C91B0000 		.4byte	0x1bc9
 4489 1bbe 1E       		.uleb128 0x1e
 4490 1bbf 08140000 		.4byte	0x1408
 4491 1bc3 1E       		.uleb128 0x1e
 4492 1bc4 AA1A0000 		.4byte	0x1aaa
 4493 1bc8 00       		.byte	0
 4494 1bc9 35       		.uleb128 0x35
 4495 1bca 100A0000 		.4byte	.LASF391
 4496 1bce 16       		.byte	0x16
 4497 1bcf 2801     		.2byte	0x128
 4498 1bd1 85000000 		.4byte	0x85
 4499 1bd5 E41B0000 		.4byte	0x1be4
 4500 1bd9 1E       		.uleb128 0x1e
 4501 1bda 08140000 		.4byte	0x1408
 4502 1bde 1E       		.uleb128 0x1e
 4503 1bdf AA1A0000 		.4byte	0x1aaa
 4504 1be3 00       		.byte	0
 4505 1be4 29       		.uleb128 0x29
 4506 1be5 17       		.byte	0x17
 4507 1be6 27       		.byte	0x27
 4508 1be7 1D190000 		.4byte	0x191d
 4509 1beb 29       		.uleb128 0x29
 4510 1bec 17       		.byte	0x17
 4511 1bed 33       		.byte	0x33
 4512 1bee 7B180000 		.4byte	0x187b
 4513 1bf2 29       		.uleb128 0x29
 4514 1bf3 17       		.byte	0x17
 4515 1bf4 34       		.byte	0x34
 4516 1bf5 AB180000 		.4byte	0x18ab
 4517 1bf9 29       		.uleb128 0x29
 4518 1bfa 17       		.byte	0x17
 4519 1bfb 36       		.byte	0x36
 4520 1bfc AD160000 		.4byte	0x16ad
 4521 1c00 29       		.uleb128 0x29
 4522 1c01 17       		.byte	0x17
 4523 1c02 37       		.byte	0x37
 4524 1c03 32190000 		.4byte	0x1932
 4525 1c07 29       		.uleb128 0x29
ARM GAS  /tmp/ccQR1hla.s 			page 122


 4526 1c08 17       		.byte	0x17
 4527 1c09 38       		.byte	0x38
 4528 1c0a 4E190000 		.4byte	0x194e
 4529 1c0e 29       		.uleb128 0x29
 4530 1c0f 17       		.byte	0x17
 4531 1c10 39       		.byte	0x39
 4532 1c11 63190000 		.4byte	0x1963
 4533 1c15 29       		.uleb128 0x29
 4534 1c16 17       		.byte	0x17
 4535 1c17 3A       		.byte	0x3a
 4536 1c18 78190000 		.4byte	0x1978
 4537 1c1c 29       		.uleb128 0x29
 4538 1c1d 17       		.byte	0x17
 4539 1c1e 3C       		.byte	0x3c
 4540 1c1f 3B180000 		.4byte	0x183b
 4541 1c23 29       		.uleb128 0x29
 4542 1c24 17       		.byte	0x17
 4543 1c25 3E       		.byte	0x3e
 4544 1c26 BB190000 		.4byte	0x19bb
 4545 1c2a 29       		.uleb128 0x29
 4546 1c2b 17       		.byte	0x17
 4547 1c2c 40       		.byte	0x40
 4548 1c2d D0190000 		.4byte	0x19d0
 4549 1c31 29       		.uleb128 0x29
 4550 1c32 17       		.byte	0x17
 4551 1c33 43       		.byte	0x43
 4552 1c34 EA190000 		.4byte	0x19ea
 4553 1c38 29       		.uleb128 0x29
 4554 1c39 17       		.byte	0x17
 4555 1c3a 44       		.byte	0x44
 4556 1c3b 041A0000 		.4byte	0x1a04
 4557 1c3f 29       		.uleb128 0x29
 4558 1c40 17       		.byte	0x17
 4559 1c41 45       		.byte	0x45
 4560 1c42 351A0000 		.4byte	0x1a35
 4561 1c46 29       		.uleb128 0x29
 4562 1c47 17       		.byte	0x17
 4563 1c48 47       		.byte	0x47
 4564 1c49 541A0000 		.4byte	0x1a54
 4565 1c4d 29       		.uleb128 0x29
 4566 1c4e 17       		.byte	0x17
 4567 1c4f 48       		.byte	0x48
 4568 1c50 741A0000 		.4byte	0x1a74
 4569 1c54 29       		.uleb128 0x29
 4570 1c55 17       		.byte	0x17
 4571 1c56 4A       		.byte	0x4a
 4572 1c57 7F1A0000 		.4byte	0x1a7f
 4573 1c5b 29       		.uleb128 0x29
 4574 1c5c 17       		.byte	0x17
 4575 1c5d 4B       		.byte	0x4b
 4576 1c5e 901A0000 		.4byte	0x1a90
 4577 1c62 29       		.uleb128 0x29
 4578 1c63 17       		.byte	0x17
 4579 1c64 4C       		.byte	0x4c
 4580 1c65 B01A0000 		.4byte	0x1ab0
 4581 1c69 29       		.uleb128 0x29
 4582 1c6a 17       		.byte	0x17
ARM GAS  /tmp/ccQR1hla.s 			page 123


 4583 1c6b 4D       		.byte	0x4d
 4584 1c6c CF1A0000 		.4byte	0x1acf
 4585 1c70 29       		.uleb128 0x29
 4586 1c71 17       		.byte	0x17
 4587 1c72 4E       		.byte	0x4e
 4588 1c73 EE1A0000 		.4byte	0x1aee
 4589 1c77 29       		.uleb128 0x29
 4590 1c78 17       		.byte	0x17
 4591 1c79 50       		.byte	0x50
 4592 1c7a 031B0000 		.4byte	0x1b03
 4593 1c7e 29       		.uleb128 0x29
 4594 1c7f 17       		.byte	0x17
 4595 1c80 51       		.byte	0x51
 4596 1c81 281B0000 		.4byte	0x1b28
 4597 1c85 0F       		.uleb128 0xf
 4598 1c86 010B0000 		.4byte	.LASF392
 4599 1c8a 18       		.byte	0x18
 4600 1c8b 8F       		.byte	0x8f
 4601 1c8c 971C0000 		.4byte	0x1c97
 4602 1c90 02       		.uleb128 0x2
 4603 1c91 01       		.byte	0x1
 4604 1c92 02       		.byte	0x2
 4605 1c93 36160000 		.4byte	.LASF393
 4606 1c97 0A       		.uleb128 0xa
 4607 1c98 901C0000 		.4byte	0x1c90
 4608 1c9c 05       		.uleb128 0x5
 4609 1c9d 901C0000 		.4byte	0x1c90
 4610 1ca1 36       		.uleb128 0x36
 4611 1ca2 81050000 		.4byte	.LASF394
 4612 1ca6 18       		.byte	0x18
 4613 1ca7 94       		.byte	0x94
 4614 1ca8 D9010000 		.4byte	0x1d9
 4615 1cac 05       		.uleb128 0x5
 4616 1cad 03       		.byte	0x3
 4617 1cae 00000000 		.4byte	_ZL32cpu_irq_critical_section_counter
 4618 1cb2 36       		.uleb128 0x36
 4619 1cb3 7E1D0000 		.4byte	.LASF395
 4620 1cb7 18       		.byte	0x18
 4621 1cb8 95       		.byte	0x95
 4622 1cb9 971C0000 		.4byte	0x1c97
 4623 1cbd 05       		.uleb128 0x5
 4624 1cbe 03       		.byte	0x3
 4625 1cbf 00000000 		.4byte	_ZL28cpu_irq_prev_interrupt_state
 4626 1cc3 04       		.uleb128 0x4
 4627 1cc4 48020000 		.4byte	.LASF396
 4628 1cc8 19       		.byte	0x19
 4629 1cc9 AD       		.byte	0xad
 4630 1cca 25000000 		.4byte	0x25
 4631 1cce 04       		.uleb128 0x4
 4632 1ccf E1070000 		.4byte	.LASF397
 4633 1cd3 19       		.byte	0x19
 4634 1cd4 AE       		.byte	0xae
 4635 1cd5 47190000 		.4byte	0x1947
 4636 1cd9 37       		.uleb128 0x37
 4637 1cda 2D140000 		.4byte	.LASF403
 4638 1cde 01       		.byte	0x1
 4639 1cdf A8000000 		.4byte	0xa8
ARM GAS  /tmp/ccQR1hla.s 			page 124


 4640 1ce3 19       		.byte	0x19
 4641 1ce4 9902     		.2byte	0x299
 4642 1ce6 031D0000 		.4byte	0x1d03
 4643 1cea 38       		.uleb128 0x38
 4644 1ceb 07120000 		.4byte	.LASF398
 4645 1cef 7F       		.sleb128 -1
 4646 1cf0 39       		.uleb128 0x39
 4647 1cf1 90020000 		.4byte	.LASF399
 4648 1cf5 00       		.byte	0
 4649 1cf6 39       		.uleb128 0x39
 4650 1cf7 9A000000 		.4byte	.LASF400
 4651 1cfb 01       		.byte	0x1
 4652 1cfc 39       		.uleb128 0x39
 4653 1cfd 7E1C0000 		.4byte	.LASF401
 4654 1d01 02       		.byte	0x2
 4655 1d02 00       		.byte	0
 4656 1d03 0E       		.uleb128 0xe
 4657 1d04 6E080000 		.4byte	.LASF402
 4658 1d08 19       		.byte	0x19
 4659 1d09 A402     		.2byte	0x2a4
 4660 1d0b D91C0000 		.4byte	0x1cd9
 4661 1d0f 1A       		.uleb128 0x1a
 4662 1d10 04       		.byte	0x4
 4663 1d11 85000000 		.4byte	0x85
 4664 1d15 29       		.uleb128 0x29
 4665 1d16 1A       		.byte	0x1a
 4666 1d17 36       		.byte	0x36
 4667 1d18 D6160000 		.4byte	0x16d6
 4668 1d1c 3A       		.uleb128 0x3a
 4669 1d1d E21D0000 		.4byte	.LASF404
 4670 1d21 04       		.byte	0x4
 4671 1d22 2C000000 		.4byte	0x2c
 4672 1d26 1B       		.byte	0x1b
 4673 1d27 50       		.byte	0x50
 4674 1d28 721D0000 		.4byte	0x1d72
 4675 1d2c 39       		.uleb128 0x39
 4676 1d2d 0C0F0000 		.4byte	.LASF405
 4677 1d31 00       		.byte	0
 4678 1d32 3B       		.uleb128 0x3b
 4679 1d33 300F0000 		.4byte	.LASF406
 4680 1d37 00000008 		.4byte	0x8000000
 4681 1d3b 3B       		.uleb128 0x3b
 4682 1d3c 3D0F0000 		.4byte	.LASF407
 4683 1d40 00000010 		.4byte	0x10000000
 4684 1d44 3B       		.uleb128 0x3b
 4685 1d45 BD170000 		.4byte	.LASF408
 4686 1d49 00000018 		.4byte	0x18000000
 4687 1d4d 3B       		.uleb128 0x3b
 4688 1d4e 530F0000 		.4byte	.LASF409
 4689 1d52 00000020 		.4byte	0x20000000
 4690 1d56 3B       		.uleb128 0x3b
 4691 1d57 65090000 		.4byte	.LASF410
 4692 1d5b 00000028 		.4byte	0x28000000
 4693 1d5f 3B       		.uleb128 0x3b
 4694 1d60 D90E0000 		.4byte	.LASF411
 4695 1d64 00000030 		.4byte	0x30000000
 4696 1d68 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccQR1hla.s 			page 125


 4697 1d69 E60E0000 		.4byte	.LASF412
 4698 1d6d 00000038 		.4byte	0x38000000
 4699 1d71 00       		.byte	0
 4700 1d72 04       		.uleb128 0x4
 4701 1d73 12000000 		.4byte	.LASF413
 4702 1d77 1B       		.byte	0x1b
 4703 1d78 5B       		.byte	0x5b
 4704 1d79 1C1D0000 		.4byte	0x1d1c
 4705 1d7d 3C       		.uleb128 0x3c
 4706 1d7e 02       		.byte	0x2
 4707 1d7f 3A000000 		.4byte	0x3a
 4708 1d83 1C       		.byte	0x1c
 4709 1d84 4D       		.byte	0x4d
 4710 1d85 6A1E0000 		.4byte	.LASF417
 4711 1d89 9B1D0000 		.4byte	0x1d9b
 4712 1d8d 39       		.uleb128 0x39
 4713 1d8e 490A0000 		.4byte	.LASF414
 4714 1d92 00       		.byte	0
 4715 1d93 3D       		.uleb128 0x3d
 4716 1d94 4B0B0000 		.4byte	.LASF415
 4717 1d98 0001     		.2byte	0x100
 4718 1d9a 00       		.byte	0
 4719 1d9b 04       		.uleb128 0x4
 4720 1d9c 05170000 		.4byte	.LASF416
 4721 1da0 1C       		.byte	0x1c
 4722 1da1 50       		.byte	0x50
 4723 1da2 7D1D0000 		.4byte	0x1d7d
 4724 1da6 3C       		.uleb128 0x3c
 4725 1da7 01       		.byte	0x1
 4726 1da8 BA000000 		.4byte	0xba
 4727 1dac 1C       		.byte	0x1c
 4728 1dad 53       		.byte	0x53
 4729 1dae 37050000 		.4byte	.LASF418
 4730 1db2 C91D0000 		.4byte	0x1dc9
 4731 1db6 39       		.uleb128 0x39
 4732 1db7 0D0E0000 		.4byte	.LASF419
 4733 1dbb 00       		.byte	0
 4734 1dbc 39       		.uleb128 0x39
 4735 1dbd F41A0000 		.4byte	.LASF420
 4736 1dc1 01       		.byte	0x1
 4737 1dc2 39       		.uleb128 0x39
 4738 1dc3 041A0000 		.4byte	.LASF421
 4739 1dc7 02       		.byte	0x2
 4740 1dc8 00       		.byte	0
 4741 1dc9 04       		.uleb128 0x4
 4742 1dca 131B0000 		.4byte	.LASF422
 4743 1dce 1C       		.byte	0x1c
 4744 1dcf 59       		.byte	0x59
 4745 1dd0 A61D0000 		.4byte	0x1da6
 4746 1dd4 10       		.uleb128 0x10
 4747 1dd5 0C       		.byte	0xc
 4748 1dd6 1C       		.byte	0x1c
 4749 1dd7 5C       		.byte	0x5c
 4750 1dd8 19010000 		.4byte	.LASF423
 4751 1ddc 051E0000 		.4byte	0x1e05
 4752 1de0 11       		.uleb128 0x11
 4753 1de1 5C020000 		.4byte	.LASF424
ARM GAS  /tmp/ccQR1hla.s 			page 126


 4754 1de5 1C       		.byte	0x1c
 4755 1de6 5E       		.byte	0x5e
 4756 1de7 CE010000 		.4byte	0x1ce
 4757 1deb 00       		.byte	0
 4758 1dec 11       		.uleb128 0x11
 4759 1ded 64020000 		.4byte	.LASF425
 4760 1df1 1C       		.byte	0x1c
 4761 1df2 60       		.byte	0x60
 4762 1df3 CE010000 		.4byte	0x1ce
 4763 1df7 04       		.byte	0x4
 4764 1df8 11       		.uleb128 0x11
 4765 1df9 D5100000 		.4byte	.LASF426
 4766 1dfd 1C       		.byte	0x1c
 4767 1dfe 62       		.byte	0x62
 4768 1dff CE010000 		.4byte	0x1ce
 4769 1e03 08       		.byte	0x8
 4770 1e04 00       		.byte	0
 4771 1e05 04       		.uleb128 0x4
 4772 1e06 150E0000 		.4byte	.LASF427
 4773 1e0a 1C       		.byte	0x1c
 4774 1e0b 63       		.byte	0x63
 4775 1e0c D41D0000 		.4byte	0x1dd4
 4776 1e10 3C       		.uleb128 0x3c
 4777 1e11 02       		.byte	0x2
 4778 1e12 3A000000 		.4byte	0x3a
 4779 1e16 1C       		.byte	0x1c
 4780 1e17 78       		.byte	0x78
 4781 1e18 FB040000 		.4byte	.LASF428
 4782 1e1c 2E1E0000 		.4byte	0x1e2e
 4783 1e20 39       		.uleb128 0x39
 4784 1e21 D5150000 		.4byte	.LASF429
 4785 1e25 00       		.byte	0
 4786 1e26 3D       		.uleb128 0x3d
 4787 1e27 081E0000 		.4byte	.LASF430
 4788 1e2b 0004     		.2byte	0x400
 4789 1e2d 00       		.byte	0
 4790 1e2e 04       		.uleb128 0x4
 4791 1e2f 1B160000 		.4byte	.LASF431
 4792 1e33 1C       		.byte	0x1c
 4793 1e34 7B       		.byte	0x7b
 4794 1e35 101E0000 		.4byte	0x1e10
 4795 1e39 3C       		.uleb128 0x3c
 4796 1e3a 01       		.byte	0x1
 4797 1e3b BA000000 		.4byte	0xba
 4798 1e3f 1C       		.byte	0x1c
 4799 1e40 7E       		.byte	0x7e
 4800 1e41 54060000 		.4byte	.LASF432
 4801 1e45 6E1E0000 		.4byte	0x1e6e
 4802 1e49 39       		.uleb128 0x39
 4803 1e4a F00A0000 		.4byte	.LASF433
 4804 1e4e 01       		.byte	0x1
 4805 1e4f 39       		.uleb128 0x39
 4806 1e50 4E010000 		.4byte	.LASF434
 4807 1e54 02       		.byte	0x2
 4808 1e55 39       		.uleb128 0x39
 4809 1e56 65060000 		.4byte	.LASF435
 4810 1e5a 04       		.byte	0x4
ARM GAS  /tmp/ccQR1hla.s 			page 127


 4811 1e5b 39       		.uleb128 0x39
 4812 1e5c E4050000 		.4byte	.LASF436
 4813 1e60 08       		.byte	0x8
 4814 1e61 39       		.uleb128 0x39
 4815 1e62 53040000 		.4byte	.LASF437
 4816 1e66 10       		.byte	0x10
 4817 1e67 39       		.uleb128 0x39
 4818 1e68 65040000 		.4byte	.LASF438
 4819 1e6c 20       		.byte	0x20
 4820 1e6d 00       		.byte	0
 4821 1e6e 04       		.uleb128 0x4
 4822 1e6f 7D1B0000 		.4byte	.LASF439
 4823 1e73 1C       		.byte	0x1c
 4824 1e74 93       		.byte	0x93
 4825 1e75 391E0000 		.4byte	0x1e39
 4826 1e79 3C       		.uleb128 0x3c
 4827 1e7a 01       		.byte	0x1
 4828 1e7b BA000000 		.4byte	0xba
 4829 1e7f 1C       		.byte	0x1c
 4830 1e80 C4       		.byte	0xc4
 4831 1e81 721F0000 		.4byte	.LASF440
 4832 1e85 961E0000 		.4byte	0x1e96
 4833 1e89 39       		.uleb128 0x39
 4834 1e8a 991B0000 		.4byte	.LASF441
 4835 1e8e 00       		.byte	0
 4836 1e8f 39       		.uleb128 0x39
 4837 1e90 0D130000 		.4byte	.LASF442
 4838 1e94 01       		.byte	0x1
 4839 1e95 00       		.byte	0
 4840 1e96 04       		.uleb128 0x4
 4841 1e97 A9040000 		.4byte	.LASF443
 4842 1e9b 1C       		.byte	0x1c
 4843 1e9c C7       		.byte	0xc7
 4844 1e9d 791E0000 		.4byte	0x1e79
 4845 1ea1 3C       		.uleb128 0x3c
 4846 1ea2 04       		.byte	0x4
 4847 1ea3 2C000000 		.4byte	0x2c
 4848 1ea7 1C       		.byte	0x1c
 4849 1ea8 C9       		.byte	0xc9
 4850 1ea9 0B070000 		.4byte	.LASF444
 4851 1ead 421F0000 		.4byte	0x1f42
 4852 1eb1 3B       		.uleb128 0x3b
 4853 1eb2 7D170000 		.4byte	.LASF445
 4854 1eb6 00000100 		.4byte	0x10000
 4855 1eba 3B       		.uleb128 0x3b
 4856 1ebb B1100000 		.4byte	.LASF446
 4857 1ebf 00000200 		.4byte	0x20000
 4858 1ec3 3B       		.uleb128 0x3b
 4859 1ec4 1E1A0000 		.4byte	.LASF447
 4860 1ec8 00000400 		.4byte	0x40000
 4861 1ecc 3B       		.uleb128 0x3b
 4862 1ecd 04060000 		.4byte	.LASF448
 4863 1ed1 00000800 		.4byte	0x80000
 4864 1ed5 3B       		.uleb128 0x3b
 4865 1ed6 20060000 		.4byte	.LASF449
 4866 1eda 00000100 		.4byte	0x10000
 4867 1ede 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccQR1hla.s 			page 128


 4868 1edf EB110000 		.4byte	.LASF450
 4869 1ee3 00000200 		.4byte	0x20000
 4870 1ee7 3B       		.uleb128 0x3b
 4871 1ee8 AB080000 		.4byte	.LASF451
 4872 1eec 00000400 		.4byte	0x40000
 4873 1ef0 3B       		.uleb128 0x3b
 4874 1ef1 D4140000 		.4byte	.LASF452
 4875 1ef5 00000800 		.4byte	0x80000
 4876 1ef9 3B       		.uleb128 0x3b
 4877 1efa 8A010000 		.4byte	.LASF453
 4878 1efe 00000100 		.4byte	0x10000
 4879 1f02 3B       		.uleb128 0x3b
 4880 1f03 970D0000 		.4byte	.LASF454
 4881 1f07 00000200 		.4byte	0x20000
 4882 1f0b 3B       		.uleb128 0x3b
 4883 1f0c 2D040000 		.4byte	.LASF455
 4884 1f10 00000400 		.4byte	0x40000
 4885 1f14 3B       		.uleb128 0x3b
 4886 1f15 E90F0000 		.4byte	.LASF456
 4887 1f19 00000800 		.4byte	0x80000
 4888 1f1d 3B       		.uleb128 0x3b
 4889 1f1e 16100000 		.4byte	.LASF457
 4890 1f22 00000100 		.4byte	0x10000
 4891 1f26 3B       		.uleb128 0x3b
 4892 1f27 F31B0000 		.4byte	.LASF458
 4893 1f2b 00000200 		.4byte	0x20000
 4894 1f2f 3B       		.uleb128 0x3b
 4895 1f30 5D130000 		.4byte	.LASF459
 4896 1f34 00000400 		.4byte	0x40000
 4897 1f38 3B       		.uleb128 0x3b
 4898 1f39 9B1D0000 		.4byte	.LASF460
 4899 1f3d 00000800 		.4byte	0x80000
 4900 1f41 00       		.byte	0
 4901 1f42 04       		.uleb128 0x4
 4902 1f43 F8000000 		.4byte	.LASF461
 4903 1f47 1C       		.byte	0x1c
 4904 1f48 DA       		.byte	0xda
 4905 1f49 A11E0000 		.4byte	0x1ea1
 4906 1f4d 10       		.uleb128 0x10
 4907 1f4e 04       		.byte	0x4
 4908 1f4f 1C       		.byte	0x1c
 4909 1f50 E5       		.byte	0xe5
 4910 1f51 DB160000 		.4byte	.LASF462
 4911 1f55 8A1F0000 		.4byte	0x1f8a
 4912 1f59 11       		.uleb128 0x11
 4913 1f5a 59190000 		.4byte	.LASF463
 4914 1f5e 1C       		.byte	0x1c
 4915 1f5f E7       		.byte	0xe7
 4916 1f60 901C0000 		.4byte	0x1c90
 4917 1f64 00       		.byte	0
 4918 1f65 11       		.uleb128 0x11
 4919 1f66 8D190000 		.4byte	.LASF464
 4920 1f6a 1C       		.byte	0x1c
 4921 1f6b E9       		.byte	0xe9
 4922 1f6c 901C0000 		.4byte	0x1c90
 4923 1f70 01       		.byte	0x1
 4924 1f71 11       		.uleb128 0x11
ARM GAS  /tmp/ccQR1hla.s 			page 129


 4925 1f72 45190000 		.4byte	.LASF465
 4926 1f76 1C       		.byte	0x1c
 4927 1f77 EB       		.byte	0xeb
 4928 1f78 C91D0000 		.4byte	0x1dc9
 4929 1f7c 02       		.byte	0x2
 4930 1f7d 11       		.uleb128 0x11
 4931 1f7e 69190000 		.4byte	.LASF466
 4932 1f82 1C       		.byte	0x1c
 4933 1f83 ED       		.byte	0xed
 4934 1f84 C91D0000 		.4byte	0x1dc9
 4935 1f88 03       		.byte	0x3
 4936 1f89 00       		.byte	0
 4937 1f8a 04       		.uleb128 0x4
 4938 1f8b EF190000 		.4byte	.LASF467
 4939 1f8f 1C       		.byte	0x1c
 4940 1f90 EE       		.byte	0xee
 4941 1f91 4D1F0000 		.4byte	0x1f4d
 4942 1f95 06       		.uleb128 0x6
 4943 1f96 3C       		.byte	0x3c
 4944 1f97 1C       		.byte	0x1c
 4945 1f98 1E01     		.2byte	0x11e
 4946 1f9a F11E0000 		.4byte	.LASF469
 4947 1f9e C1200000 		.4byte	0x20c1
 4948 1fa2 07       		.uleb128 0x7
 4949 1fa3 ED0B0000 		.4byte	.LASF470
 4950 1fa7 1C       		.byte	0x1c
 4951 1fa8 2001     		.2byte	0x120
 4952 1faa CE010000 		.4byte	0x1ce
 4953 1fae 00       		.byte	0
 4954 1faf 07       		.uleb128 0x7
 4955 1fb0 0F1C0000 		.4byte	.LASF471
 4956 1fb4 1C       		.byte	0x1c
 4957 1fb5 2201     		.2byte	0x122
 4958 1fb7 CE010000 		.4byte	0x1ce
 4959 1fbb 04       		.byte	0x4
 4960 1fbc 07       		.uleb128 0x7
 4961 1fbd 79000000 		.4byte	.LASF472
 4962 1fc1 1C       		.byte	0x1c
 4963 1fc2 2401     		.2byte	0x124
 4964 1fc4 9B1D0000 		.4byte	0x1d9b
 4965 1fc8 08       		.byte	0x8
 4966 1fc9 07       		.uleb128 0x7
 4967 1fca 38100000 		.4byte	.LASF473
 4968 1fce 1C       		.byte	0x1c
 4969 1fcf 2601     		.2byte	0x126
 4970 1fd1 C91D0000 		.4byte	0x1dc9
 4971 1fd5 0A       		.byte	0xa
 4972 1fd6 07       		.uleb128 0x7
 4973 1fd7 AB130000 		.4byte	.LASF474
 4974 1fdb 1C       		.byte	0x1c
 4975 1fdc 2801     		.2byte	0x128
 4976 1fde CE010000 		.4byte	0x1ce
 4977 1fe2 0C       		.byte	0xc
 4978 1fe3 07       		.uleb128 0x7
 4979 1fe4 63160000 		.4byte	.LASF475
 4980 1fe8 1C       		.byte	0x1c
 4981 1fe9 2A01     		.2byte	0x12a
ARM GAS  /tmp/ccQR1hla.s 			page 130


 4982 1feb CE010000 		.4byte	0x1ce
 4983 1fef 10       		.byte	0x10
 4984 1ff0 07       		.uleb128 0x7
 4985 1ff1 BC0F0000 		.4byte	.LASF476
 4986 1ff5 1C       		.byte	0x1c
 4987 1ff6 2E01     		.2byte	0x12e
 4988 1ff8 2E1E0000 		.4byte	0x1e2e
 4989 1ffc 14       		.byte	0x14
 4990 1ffd 07       		.uleb128 0x7
 4991 1ffe D0030000 		.4byte	.LASF477
 4992 2002 1C       		.byte	0x1c
 4993 2003 3001     		.2byte	0x130
 4994 2005 901C0000 		.4byte	0x1c90
 4995 2009 16       		.byte	0x16
 4996 200a 07       		.uleb128 0x7
 4997 200b BE0A0000 		.4byte	.LASF478
 4998 200f 1C       		.byte	0x1c
 4999 2010 3201     		.2byte	0x132
 5000 2012 901C0000 		.4byte	0x1c90
 5001 2016 17       		.byte	0x17
 5002 2017 07       		.uleb128 0x7
 5003 2018 B30D0000 		.4byte	.LASF479
 5004 201c 1C       		.byte	0x1c
 5005 201d 3401     		.2byte	0x134
 5006 201f 901C0000 		.4byte	0x1c90
 5007 2023 18       		.byte	0x18
 5008 2024 07       		.uleb128 0x7
 5009 2025 30170000 		.4byte	.LASF480
 5010 2029 1C       		.byte	0x1c
 5011 202a 3601     		.2byte	0x136
 5012 202c B3010000 		.4byte	0x1b3
 5013 2030 1A       		.byte	0x1a
 5014 2031 07       		.uleb128 0x7
 5015 2032 49170000 		.4byte	.LASF481
 5016 2036 1C       		.byte	0x1c
 5017 2037 3801     		.2byte	0x138
 5018 2039 B3010000 		.4byte	0x1b3
 5019 203d 1C       		.byte	0x1c
 5020 203e 07       		.uleb128 0x7
 5021 203f E7000000 		.4byte	.LASF482
 5022 2043 1C       		.byte	0x1c
 5023 2044 3A01     		.2byte	0x13a
 5024 2046 8A1F0000 		.4byte	0x1f8a
 5025 204a 1E       		.byte	0x1e
 5026 204b 07       		.uleb128 0x7
 5027 204c 8A070000 		.4byte	.LASF483
 5028 2050 1C       		.byte	0x1c
 5029 2051 3C01     		.2byte	0x13c
 5030 2053 901C0000 		.4byte	0x1c90
 5031 2057 22       		.byte	0x22
 5032 2058 07       		.uleb128 0x7
 5033 2059 780D0000 		.4byte	.LASF484
 5034 205d 1C       		.byte	0x1c
 5035 205e 3E01     		.2byte	0x13e
 5036 2060 6E1E0000 		.4byte	0x1e6e
 5037 2064 23       		.byte	0x23
 5038 2065 07       		.uleb128 0x7
ARM GAS  /tmp/ccQR1hla.s 			page 131


 5039 2066 FB090000 		.4byte	.LASF485
 5040 206a 1C       		.byte	0x1c
 5041 206b 4001     		.2byte	0x140
 5042 206d C91D0000 		.4byte	0x1dc9
 5043 2071 24       		.byte	0x24
 5044 2072 07       		.uleb128 0x7
 5045 2073 9C180000 		.4byte	.LASF486
 5046 2077 1C       		.byte	0x1c
 5047 2078 4201     		.2byte	0x142
 5048 207a C91D0000 		.4byte	0x1dc9
 5049 207e 25       		.byte	0x25
 5050 207f 07       		.uleb128 0x7
 5051 2080 E70C0000 		.4byte	.LASF487
 5052 2084 1C       		.byte	0x1c
 5053 2085 4F01     		.2byte	0x14f
 5054 2087 CE010000 		.4byte	0x1ce
 5055 208b 28       		.byte	0x28
 5056 208c 07       		.uleb128 0x7
 5057 208d E6040000 		.4byte	.LASF488
 5058 2091 1C       		.byte	0x1c
 5059 2092 5101     		.2byte	0x151
 5060 2094 961E0000 		.4byte	0x1e96
 5061 2098 2C       		.byte	0x2c
 5062 2099 07       		.uleb128 0x7
 5063 209a 56000000 		.4byte	.LASF489
 5064 209e 1C       		.byte	0x1c
 5065 209f 5301     		.2byte	0x153
 5066 20a1 CE010000 		.4byte	0x1ce
 5067 20a5 30       		.byte	0x30
 5068 20a6 07       		.uleb128 0x7
 5069 20a7 77040000 		.4byte	.LASF490
 5070 20ab 1C       		.byte	0x1c
 5071 20ac 5501     		.2byte	0x155
 5072 20ae 421F0000 		.4byte	0x1f42
 5073 20b2 34       		.byte	0x34
 5074 20b3 07       		.uleb128 0x7
 5075 20b4 3B160000 		.4byte	.LASF491
 5076 20b8 1C       		.byte	0x1c
 5077 20b9 5701     		.2byte	0x157
 5078 20bb CE010000 		.4byte	0x1ce
 5079 20bf 38       		.byte	0x38
 5080 20c0 00       		.byte	0
 5081 20c1 08       		.uleb128 0x8
 5082 20c2 FF120000 		.4byte	.LASF492
 5083 20c6 1C       		.byte	0x1c
 5084 20c7 5901     		.2byte	0x159
 5085 20c9 951F0000 		.4byte	0x1f95
 5086 20cd 14       		.uleb128 0x14
 5087 20ce 50696E00 		.ascii	"Pin\000"
 5088 20d2 1D       		.byte	0x1d
 5089 20d3 38       		.byte	0x38
 5090 20d4 98010000 		.4byte	0x198
 5091 20d8 05       		.uleb128 0x5
 5092 20d9 CD200000 		.4byte	0x20cd
 5093 20dd 3E       		.uleb128 0x3e
 5094 20de 610A0000 		.4byte	.LASF493
 5095 20e2 1D       		.byte	0x1d
ARM GAS  /tmp/ccQR1hla.s 			page 132


 5096 20e3 39       		.byte	0x39
 5097 20e4 D8200000 		.4byte	0x20d8
 5098 20e8 7F       		.sleb128 -1
 5099 20e9 3A       		.uleb128 0x3a
 5100 20ea FF0B0000 		.4byte	.LASF494
 5101 20ee 01       		.byte	0x1
 5102 20ef A8000000 		.4byte	0xa8
 5103 20f3 1D       		.byte	0x1d
 5104 20f4 4E       		.byte	0x4e
 5105 20f5 30210000 		.4byte	0x2130
 5106 20f9 38       		.uleb128 0x38
 5107 20fa CA150000 		.4byte	.LASF495
 5108 20fe 7F       		.sleb128 -1
 5109 20ff 39       		.uleb128 0x39
 5110 2100 490E0000 		.4byte	.LASF496
 5111 2104 00       		.byte	0
 5112 2105 39       		.uleb128 0x39
 5113 2106 510E0000 		.4byte	.LASF497
 5114 210a 01       		.byte	0x1
 5115 210b 39       		.uleb128 0x39
 5116 210c 590E0000 		.4byte	.LASF498
 5117 2110 02       		.byte	0x2
 5118 2111 39       		.uleb128 0x39
 5119 2112 610E0000 		.4byte	.LASF499
 5120 2116 03       		.byte	0x3
 5121 2117 39       		.uleb128 0x39
 5122 2118 690E0000 		.4byte	.LASF500
 5123 211c 04       		.byte	0x4
 5124 211d 39       		.uleb128 0x39
 5125 211e 710E0000 		.4byte	.LASF501
 5126 2122 05       		.byte	0x5
 5127 2123 39       		.uleb128 0x39
 5128 2124 790E0000 		.4byte	.LASF502
 5129 2128 06       		.byte	0x6
 5130 2129 39       		.uleb128 0x39
 5131 212a 810E0000 		.4byte	.LASF503
 5132 212e 07       		.byte	0x7
 5133 212f 00       		.byte	0
 5134 2130 04       		.uleb128 0x4
 5135 2131 F31D0000 		.4byte	.LASF504
 5136 2135 1D       		.byte	0x1d
 5137 2136 59       		.byte	0x59
 5138 2137 E9200000 		.4byte	0x20e9
 5139 213b 3A       		.uleb128 0x3a
 5140 213c 59090000 		.4byte	.LASF505
 5141 2140 01       		.byte	0x1
 5142 2141 A8000000 		.4byte	0xa8
 5143 2145 1D       		.byte	0x1d
 5144 2146 5C       		.byte	0x5c
 5145 2147 BE210000 		.4byte	0x21be
 5146 214b 38       		.uleb128 0x38
 5147 214c 130C0000 		.4byte	.LASF506
 5148 2150 7F       		.sleb128 -1
 5149 2151 39       		.uleb128 0x39
 5150 2152 39030000 		.4byte	.LASF507
 5151 2156 00       		.byte	0
 5152 2157 39       		.uleb128 0x39
ARM GAS  /tmp/ccQR1hla.s 			page 133


 5153 2158 F5030000 		.4byte	.LASF508
 5154 215c 01       		.byte	0x1
 5155 215d 39       		.uleb128 0x39
 5156 215e 42030000 		.4byte	.LASF509
 5157 2162 02       		.byte	0x2
 5158 2163 39       		.uleb128 0x39
 5159 2164 FE030000 		.4byte	.LASF510
 5160 2168 03       		.byte	0x3
 5161 2169 39       		.uleb128 0x39
 5162 216a 4B030000 		.4byte	.LASF511
 5163 216e 04       		.byte	0x4
 5164 216f 39       		.uleb128 0x39
 5165 2170 07040000 		.4byte	.LASF512
 5166 2174 05       		.byte	0x5
 5167 2175 39       		.uleb128 0x39
 5168 2176 80020000 		.4byte	.LASF513
 5169 217a 06       		.byte	0x6
 5170 217b 39       		.uleb128 0x39
 5171 217c 54030000 		.4byte	.LASF514
 5172 2180 07       		.byte	0x7
 5173 2181 39       		.uleb128 0x39
 5174 2182 3A1A0000 		.4byte	.LASF515
 5175 2186 08       		.byte	0x8
 5176 2187 39       		.uleb128 0x39
 5177 2188 5D030000 		.4byte	.LASF516
 5178 218c 09       		.byte	0x9
 5179 218d 39       		.uleb128 0x39
 5180 218e 431A0000 		.4byte	.LASF517
 5181 2192 0A       		.byte	0xa
 5182 2193 39       		.uleb128 0x39
 5183 2194 66030000 		.4byte	.LASF518
 5184 2198 0B       		.byte	0xb
 5185 2199 39       		.uleb128 0x39
 5186 219a 18020000 		.4byte	.LASF519
 5187 219e 0C       		.byte	0xc
 5188 219f 39       		.uleb128 0x39
 5189 21a0 AC020000 		.4byte	.LASF520
 5190 21a4 0D       		.byte	0xd
 5191 21a5 39       		.uleb128 0x39
 5192 21a6 21020000 		.4byte	.LASF521
 5193 21aa 0E       		.byte	0xe
 5194 21ab 39       		.uleb128 0x39
 5195 21ac B5020000 		.4byte	.LASF522
 5196 21b0 0F       		.byte	0xf
 5197 21b1 39       		.uleb128 0x39
 5198 21b2 2A020000 		.4byte	.LASF523
 5199 21b6 10       		.byte	0x10
 5200 21b7 39       		.uleb128 0x39
 5201 21b8 BE020000 		.4byte	.LASF524
 5202 21bc 11       		.byte	0x11
 5203 21bd 00       		.byte	0
 5204 21be 04       		.uleb128 0x4
 5205 21bf 6B1B0000 		.4byte	.LASF525
 5206 21c3 1D       		.byte	0x1d
 5207 21c4 71       		.byte	0x71
 5208 21c5 3B210000 		.4byte	0x213b
 5209 21c9 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccQR1hla.s 			page 134


 5210 21ca 11030000 		.4byte	.LASF526
 5211 21ce 01       		.byte	0x1
 5212 21cf A8000000 		.4byte	0xa8
 5213 21d3 1D       		.byte	0x1d
 5214 21d4 7E       		.byte	0x7e
 5215 21d5 AC220000 		.4byte	0x22ac
 5216 21d9 38       		.uleb128 0x38
 5217 21da A9110000 		.4byte	.LASF527
 5218 21de 7F       		.sleb128 -1
 5219 21df 39       		.uleb128 0x39
 5220 21e0 041B0000 		.4byte	.LASF528
 5221 21e4 00       		.byte	0
 5222 21e5 39       		.uleb128 0x39
 5223 21e6 A3090000 		.4byte	.LASF529
 5224 21ea 01       		.byte	0x1
 5225 21eb 39       		.uleb128 0x39
 5226 21ec A8090000 		.4byte	.LASF530
 5227 21f0 02       		.byte	0x2
 5228 21f1 39       		.uleb128 0x39
 5229 21f2 AD090000 		.4byte	.LASF531
 5230 21f6 03       		.byte	0x3
 5231 21f7 39       		.uleb128 0x39
 5232 21f8 B2090000 		.4byte	.LASF532
 5233 21fc 04       		.byte	0x4
 5234 21fd 39       		.uleb128 0x39
 5235 21fe B7090000 		.4byte	.LASF533
 5236 2202 05       		.byte	0x5
 5237 2203 39       		.uleb128 0x39
 5238 2204 BC090000 		.4byte	.LASF534
 5239 2208 06       		.byte	0x6
 5240 2209 39       		.uleb128 0x39
 5241 220a C1090000 		.4byte	.LASF535
 5242 220e 07       		.byte	0x7
 5243 220f 39       		.uleb128 0x39
 5244 2210 C6090000 		.4byte	.LASF536
 5245 2214 08       		.byte	0x8
 5246 2215 39       		.uleb128 0x39
 5247 2216 CB090000 		.4byte	.LASF537
 5248 221a 09       		.byte	0x9
 5249 221b 39       		.uleb128 0x39
 5250 221c 670A0000 		.4byte	.LASF538
 5251 2220 0A       		.byte	0xa
 5252 2221 39       		.uleb128 0x39
 5253 2222 6D0A0000 		.4byte	.LASF539
 5254 2226 0B       		.byte	0xb
 5255 2227 39       		.uleb128 0x39
 5256 2228 730A0000 		.4byte	.LASF540
 5257 222c 0C       		.byte	0xc
 5258 222d 39       		.uleb128 0x39
 5259 222e 790A0000 		.4byte	.LASF541
 5260 2232 0D       		.byte	0xd
 5261 2233 39       		.uleb128 0x39
 5262 2234 7F0A0000 		.4byte	.LASF542
 5263 2238 0E       		.byte	0xe
 5264 2239 39       		.uleb128 0x39
 5265 223a 850A0000 		.4byte	.LASF543
 5266 223e 0F       		.byte	0xf
ARM GAS  /tmp/ccQR1hla.s 			page 135


 5267 223f 39       		.uleb128 0x39
 5268 2240 8B0A0000 		.4byte	.LASF544
 5269 2244 10       		.byte	0x10
 5270 2245 39       		.uleb128 0x39
 5271 2246 BA0E0000 		.4byte	.LASF545
 5272 224a 11       		.byte	0x11
 5273 224b 39       		.uleb128 0x39
 5274 224c A00A0000 		.4byte	.LASF546
 5275 2250 12       		.byte	0x12
 5276 2251 39       		.uleb128 0x39
 5277 2252 A60A0000 		.4byte	.LASF547
 5278 2256 13       		.byte	0x13
 5279 2257 39       		.uleb128 0x39
 5280 2258 150B0000 		.4byte	.LASF548
 5281 225c 14       		.byte	0x14
 5282 225d 39       		.uleb128 0x39
 5283 225e 1B0B0000 		.4byte	.LASF549
 5284 2262 15       		.byte	0x15
 5285 2263 39       		.uleb128 0x39
 5286 2264 210B0000 		.4byte	.LASF550
 5287 2268 16       		.byte	0x16
 5288 2269 39       		.uleb128 0x39
 5289 226a 270B0000 		.4byte	.LASF551
 5290 226e 17       		.byte	0x17
 5291 226f 39       		.uleb128 0x39
 5292 2270 2D0B0000 		.4byte	.LASF552
 5293 2274 18       		.byte	0x18
 5294 2275 39       		.uleb128 0x39
 5295 2276 330B0000 		.4byte	.LASF553
 5296 227a 19       		.byte	0x19
 5297 227b 39       		.uleb128 0x39
 5298 227c 390B0000 		.4byte	.LASF554
 5299 2280 1A       		.byte	0x1a
 5300 2281 39       		.uleb128 0x39
 5301 2282 3F0B0000 		.4byte	.LASF555
 5302 2286 1B       		.byte	0x1b
 5303 2287 39       		.uleb128 0x39
 5304 2288 450B0000 		.4byte	.LASF556
 5305 228c 1C       		.byte	0x1c
 5306 228d 39       		.uleb128 0x39
 5307 228e B60F0000 		.4byte	.LASF557
 5308 2292 1D       		.byte	0x1d
 5309 2293 39       		.uleb128 0x39
 5310 2294 990B0000 		.4byte	.LASF558
 5311 2298 1E       		.byte	0x1e
 5312 2299 39       		.uleb128 0x39
 5313 229a 9F0B0000 		.4byte	.LASF559
 5314 229e 1F       		.byte	0x1f
 5315 229f 3F       		.uleb128 0x3f
 5316 22a0 44413000 		.ascii	"DA0\000"
 5317 22a4 20       		.byte	0x20
 5318 22a5 3F       		.uleb128 0x3f
 5319 22a6 44413100 		.ascii	"DA1\000"
 5320 22aa 21       		.byte	0x21
 5321 22ab 00       		.byte	0
 5322 22ac 05       		.uleb128 0x5
 5323 22ad C9210000 		.4byte	0x21c9
ARM GAS  /tmp/ccQR1hla.s 			page 136


 5324 22b1 18       		.uleb128 0x18
 5325 22b2 C5050000 		.4byte	.LASF560
 5326 22b6 1C       		.byte	0x1c
 5327 22b7 1D       		.byte	0x1d
 5328 22b8 AF       		.byte	0xaf
 5329 22b9 2A230000 		.4byte	0x232a
 5330 22bd 11       		.uleb128 0x11
 5331 22be A2050000 		.4byte	.LASF561
 5332 22c2 1D       		.byte	0x1d
 5333 22c3 B1       		.byte	0xb1
 5334 22c4 2F230000 		.4byte	0x232f
 5335 22c8 00       		.byte	0
 5336 22c9 11       		.uleb128 0x11
 5337 22ca 060F0000 		.4byte	.LASF562
 5338 22ce 1D       		.byte	0x1d
 5339 22cf B2       		.byte	0xb2
 5340 22d0 CE010000 		.4byte	0x1ce
 5341 22d4 04       		.byte	0x4
 5342 22d5 11       		.uleb128 0x11
 5343 22d6 27010000 		.4byte	.LASF563
 5344 22da 1D       		.byte	0x1d
 5345 22db B3       		.byte	0xb3
 5346 22dc CE010000 		.4byte	0x1ce
 5347 22e0 08       		.byte	0x8
 5348 22e1 11       		.uleb128 0x11
 5349 22e2 B9060000 		.4byte	.LASF564
 5350 22e6 1D       		.byte	0x1d
 5351 22e7 B4       		.byte	0xb4
 5352 22e8 721D0000 		.4byte	0x1d72
 5353 22ec 0C       		.byte	0xc
 5354 22ed 11       		.uleb128 0x11
 5355 22ee EC120000 		.4byte	.LASF565
 5356 22f2 1D       		.byte	0x1d
 5357 22f3 B5       		.byte	0xb5
 5358 22f4 CE010000 		.4byte	0x1ce
 5359 22f8 10       		.byte	0x10
 5360 22f9 11       		.uleb128 0x11
 5361 22fa 01180000 		.4byte	.LASF566
 5362 22fe 1D       		.byte	0x1d
 5363 22ff B6       		.byte	0xb6
 5364 2300 CE010000 		.4byte	0x1ce
 5365 2304 14       		.byte	0x14
 5366 2305 11       		.uleb128 0x11
 5367 2306 EA070000 		.4byte	.LASF567
 5368 230a 1D       		.byte	0x1d
 5369 230b B7       		.byte	0xb7
 5370 230c C9210000 		.4byte	0x21c9
 5371 2310 18       		.byte	0x18
 5372 2311 11       		.uleb128 0x11
 5373 2312 231F0000 		.4byte	.LASF568
 5374 2316 1D       		.byte	0x1d
 5375 2317 B8       		.byte	0xb8
 5376 2318 30210000 		.4byte	0x2130
 5377 231c 19       		.byte	0x19
 5378 231d 11       		.uleb128 0x11
 5379 231e 83180000 		.4byte	.LASF569
 5380 2322 1D       		.byte	0x1d
ARM GAS  /tmp/ccQR1hla.s 			page 137


 5381 2323 B9       		.byte	0xb9
 5382 2324 BE210000 		.4byte	0x21be
 5383 2328 1A       		.byte	0x1a
 5384 2329 00       		.byte	0
 5385 232a 05       		.uleb128 0x5
 5386 232b B1220000 		.4byte	0x22b1
 5387 232f 1A       		.uleb128 0x1a
 5388 2330 04       		.byte	0x4
 5389 2331 F3070000 		.4byte	0x7f3
 5390 2335 0C       		.uleb128 0xc
 5391 2336 2A230000 		.4byte	0x232a
 5392 233a 40230000 		.4byte	0x2340
 5393 233e 40       		.uleb128 0x40
 5394 233f 00       		.byte	0
 5395 2340 0F       		.uleb128 0xf
 5396 2341 EA160000 		.4byte	.LASF570
 5397 2345 1D       		.byte	0x1d
 5398 2346 BD       		.byte	0xbd
 5399 2347 35230000 		.4byte	0x2335
 5400 234b 0F       		.uleb128 0xf
 5401 234c 830C0000 		.4byte	.LASF571
 5402 2350 1E       		.byte	0x1e
 5403 2351 2E       		.byte	0x2e
 5404 2352 08140000 		.4byte	0x1408
 5405 2356 0C       		.uleb128 0xc
 5406 2357 DF130000 		.4byte	0x13df
 5407 235b 61230000 		.4byte	0x2361
 5408 235f 40       		.uleb128 0x40
 5409 2360 00       		.byte	0
 5410 2361 0F       		.uleb128 0xf
 5411 2362 A3080000 		.4byte	.LASF572
 5412 2366 1E       		.byte	0x1e
 5413 2367 6E       		.byte	0x6e
 5414 2368 56230000 		.4byte	0x2356
 5415 236c 41       		.uleb128 0x41
 5416 236d 510C0000 		.4byte	.LASF574
 5417 2371 9A230000 		.4byte	0x239a
 5418 2375 42       		.uleb128 0x42
 5419 2376 16150000 		.4byte	.LASF683
 5420 237a 28       		.byte	0x28
 5421 237b 3B       		.byte	0x3b
 5422 237c 221E0000 		.4byte	.LASF684
 5423 2380 41000000 		.4byte	0x41
 5424 2384 01       		.byte	0x1
 5425 2385 89230000 		.4byte	0x2389
 5426 2389 43       		.uleb128 0x43
 5427 238a 9A230000 		.4byte	0x239a
 5428 238e 1E       		.uleb128 0x1e
 5429 238f 08140000 		.4byte	0x1408
 5430 2393 1E       		.uleb128 0x1e
 5431 2394 41000000 		.4byte	0x41
 5432 2398 00       		.byte	0
 5433 2399 00       		.byte	0
 5434 239a 1A       		.uleb128 0x1a
 5435 239b 04       		.byte	0x4
 5436 239c 6C230000 		.4byte	0x236c
 5437 23a0 44       		.uleb128 0x44
ARM GAS  /tmp/ccQR1hla.s 			page 138


 5438 23a1 F60C0000 		.4byte	.LASF573
 5439 23a5 1F       		.byte	0x1f
 5440 23a6 1D       		.byte	0x1d
 5441 23a7 4C000000 		.4byte	0x4c
 5442 23ab 0002     		.2byte	0x200
 5443 23ad 41       		.uleb128 0x41
 5444 23ae C51C0000 		.4byte	.LASF575
 5445 23b2 BE230000 		.4byte	0x23be
 5446 23b6 29       		.uleb128 0x29
 5447 23b7 20       		.byte	0x20
 5448 23b8 26       		.byte	0x26
 5449 23b9 75230000 		.4byte	0x2375
 5450 23bd 00       		.byte	0
 5451 23be 0F       		.uleb128 0xf
 5452 23bf 091B0000 		.4byte	.LASF576
 5453 23c3 21       		.byte	0x21
 5454 23c4 8B       		.byte	0x8b
 5455 23c5 E9000000 		.4byte	0xe9
 5456 23c9 0F       		.uleb128 0xf
 5457 23ca AD050000 		.4byte	.LASF577
 5458 23ce 21       		.byte	0x21
 5459 23cf 8C       		.byte	0x8c
 5460 23d0 33000000 		.4byte	0x33
 5461 23d4 0C       		.uleb128 0xc
 5462 23d5 D2130000 		.4byte	0x13d2
 5463 23d9 E4230000 		.4byte	0x23e4
 5464 23dd 0D       		.uleb128 0xd
 5465 23de EC020000 		.4byte	0x2ec
 5466 23e2 01       		.byte	0x1
 5467 23e3 00       		.byte	0
 5468 23e4 0F       		.uleb128 0xf
 5469 23e5 290E0000 		.4byte	.LASF578
 5470 23e9 21       		.byte	0x21
 5471 23ea 8F       		.byte	0x8f
 5472 23eb D4230000 		.4byte	0x23d4
 5473 23ef 45       		.uleb128 0x45
 5474 23f0 371D0000 		.4byte	.LASF579
 5475 23f4 22       		.byte	0x22
 5476 23f5 5C       		.byte	0x5c
 5477 23f6 A3010000 		.4byte	0x1a3
 5478 23fa 38       		.byte	0x38
 5479 23fb 45       		.uleb128 0x45
 5480 23fc 8B000000 		.4byte	.LASF580
 5481 2400 22       		.byte	0x22
 5482 2401 5D       		.byte	0x5d
 5483 2402 A3010000 		.4byte	0x1a3
 5484 2406 05       		.byte	0x5
 5485 2407 45       		.uleb128 0x45
 5486 2408 B6070000 		.4byte	.LASF581
 5487 240c 22       		.byte	0x22
 5488 240d 5E       		.byte	0x5e
 5489 240e A3010000 		.4byte	0x1a3
 5490 2412 06       		.byte	0x6
 5491 2413 45       		.uleb128 0x45
 5492 2414 431D0000 		.4byte	.LASF582
 5493 2418 22       		.byte	0x22
 5494 2419 60       		.byte	0x60
ARM GAS  /tmp/ccQR1hla.s 			page 139


 5495 241a A3010000 		.4byte	0x1a3
 5496 241e 39       		.byte	0x39
 5497 241f 45       		.uleb128 0x45
 5498 2420 6B0B0000 		.4byte	.LASF583
 5499 2424 22       		.byte	0x22
 5500 2425 61       		.byte	0x61
 5501 2426 A3010000 		.4byte	0x1a3
 5502 242a 03       		.byte	0x3
 5503 242b 45       		.uleb128 0x45
 5504 242c 5C110000 		.4byte	.LASF584
 5505 2430 22       		.byte	0x22
 5506 2431 62       		.byte	0x62
 5507 2432 A3010000 		.4byte	0x1a3
 5508 2436 04       		.byte	0x4
 5509 2437 45       		.uleb128 0x45
 5510 2438 B3000000 		.4byte	.LASF585
 5511 243c 22       		.byte	0x22
 5512 243d 69       		.byte	0x69
 5513 243e A3010000 		.4byte	0x1a3
 5514 2442 33       		.byte	0x33
 5515 2443 45       		.uleb128 0x45
 5516 2444 D4050000 		.4byte	.LASF586
 5517 2448 22       		.byte	0x22
 5518 2449 6A       		.byte	0x6a
 5519 244a A3010000 		.4byte	0x1a3
 5520 244e 34       		.byte	0x34
 5521 244f 45       		.uleb128 0x45
 5522 2450 DD020000 		.4byte	.LASF587
 5523 2454 22       		.byte	0x22
 5524 2455 6D       		.byte	0x6d
 5525 2456 A3010000 		.4byte	0x1a3
 5526 245a 35       		.byte	0x35
 5527 245b 45       		.uleb128 0x45
 5528 245c 2C090000 		.4byte	.LASF588
 5529 2460 22       		.byte	0x22
 5530 2461 6E       		.byte	0x6e
 5531 2462 A3010000 		.4byte	0x1a3
 5532 2466 36       		.byte	0x36
 5533 2467 45       		.uleb128 0x45
 5534 2468 631F0000 		.4byte	.LASF589
 5535 246c 22       		.byte	0x22
 5536 246d 6F       		.byte	0x6f
 5537 246e A3010000 		.4byte	0x1a3
 5538 2472 37       		.byte	0x37
 5539 2473 45       		.uleb128 0x45
 5540 2474 8F180000 		.4byte	.LASF590
 5541 2478 22       		.byte	0x22
 5542 2479 71       		.byte	0x71
 5543 247a DE010000 		.4byte	0x1de
 5544 247e 32       		.byte	0x32
 5545 247f 46       		.uleb128 0x46
 5546 2480 04030000 		.4byte	.LASF591
 5547 2484 22       		.byte	0x22
 5548 2485 73       		.byte	0x73
 5549 2486 DE010000 		.4byte	0x1de
 5550 248a 58466100 		.4byte	0x614658
 5551 248e 44       		.uleb128 0x44
ARM GAS  /tmp/ccQR1hla.s 			page 140


 5552 248f AC0B0000 		.4byte	.LASF592
 5553 2493 22       		.byte	0x22
 5554 2494 74       		.byte	0x74
 5555 2495 DE010000 		.4byte	0x1de
 5556 2499 4661     		.2byte	0x6146
 5557 249b 0F       		.uleb128 0xf
 5558 249c 10180000 		.4byte	.LASF593
 5559 24a0 22       		.byte	0x22
 5560 24a1 80       		.byte	0x80
 5561 24a2 AD230000 		.4byte	0x23ad
 5562 24a6 0F       		.uleb128 0xf
 5563 24a7 1B1F0000 		.4byte	.LASF594
 5564 24ab 22       		.byte	0x22
 5565 24ac 81       		.byte	0x81
 5566 24ad AD230000 		.4byte	0x23ad
 5567 24b1 3A       		.uleb128 0x3a
 5568 24b2 AC060000 		.4byte	.LASF595
 5569 24b6 01       		.byte	0x1
 5570 24b7 A8000000 		.4byte	0xa8
 5571 24bb 03       		.byte	0x3
 5572 24bc 1B       		.byte	0x1b
 5573 24bd 10250000 		.4byte	0x2510
 5574 24c1 38       		.uleb128 0x38
 5575 24c2 63050000 		.4byte	.LASF596
 5576 24c6 7F       		.sleb128 -1
 5577 24c7 39       		.uleb128 0x39
 5578 24c8 32100000 		.4byte	.LASF597
 5579 24cc 00       		.byte	0
 5580 24cd 39       		.uleb128 0x39
 5581 24ce 300A0000 		.4byte	.LASF598
 5582 24d2 01       		.byte	0x1
 5583 24d3 39       		.uleb128 0x39
 5584 24d4 D30F0000 		.4byte	.LASF599
 5585 24d8 02       		.byte	0x2
 5586 24d9 39       		.uleb128 0x39
 5587 24da 460C0000 		.4byte	.LASF600
 5588 24de 03       		.byte	0x3
 5589 24df 39       		.uleb128 0x39
 5590 24e0 BD030000 		.4byte	.LASF601
 5591 24e4 04       		.byte	0x4
 5592 24e5 3F       		.uleb128 0x3f
 5593 24e6 41494E00 		.ascii	"AIN\000"
 5594 24ea 05       		.byte	0x5
 5595 24eb 39       		.uleb128 0x39
 5596 24ec 6F030000 		.4byte	.LASF602
 5597 24f0 06       		.byte	0x6
 5598 24f1 39       		.uleb128 0x39
 5599 24f2 6A140000 		.4byte	.LASF603
 5600 24f6 07       		.byte	0x7
 5601 24f7 39       		.uleb128 0x39
 5602 24f8 BC140000 		.4byte	.LASF604
 5603 24fc 08       		.byte	0x8
 5604 24fd 39       		.uleb128 0x39
 5605 24fe 4A100000 		.4byte	.LASF605
 5606 2502 09       		.byte	0x9
 5607 2503 39       		.uleb128 0x39
 5608 2504 9B160000 		.4byte	.LASF606
ARM GAS  /tmp/ccQR1hla.s 			page 141


 5609 2508 0A       		.byte	0xa
 5610 2509 39       		.uleb128 0x39
 5611 250a 991F0000 		.4byte	.LASF607
 5612 250e 0B       		.byte	0xb
 5613 250f 00       		.byte	0
 5614 2510 47       		.uleb128 0x47
 5615 2511 49140000 		.4byte	.LASF685
 5616 2515 0F       		.uleb128 0xf
 5617 2516 E1130000 		.4byte	.LASF608
 5618 251a 23       		.byte	0x23
 5619 251b 30       		.byte	0x30
 5620 251c 10250000 		.4byte	0x2510
 5621 2520 45       		.uleb128 0x45
 5622 2521 AF1F0000 		.4byte	.LASF609
 5623 2525 01       		.byte	0x1
 5624 2526 65       		.byte	0x65
 5625 2527 51000000 		.4byte	0x51
 5626 252b 08       		.byte	0x8
 5627 252c 36       		.uleb128 0x36
 5628 252d DA090000 		.4byte	.LASF610
 5629 2531 01       		.byte	0x1
 5630 2532 6A       		.byte	0x6a
 5631 2533 901C0000 		.4byte	0x1c90
 5632 2537 05       		.uleb128 0x5
 5633 2538 03       		.byte	0x3
 5634 2539 00000000 		.4byte	_ZL10PWMEnabled
 5635 253d 0C       		.uleb128 0xc
 5636 253e B3010000 		.4byte	0x1b3
 5637 2542 4D250000 		.4byte	0x254d
 5638 2546 0D       		.uleb128 0xd
 5639 2547 EC020000 		.4byte	0x2ec
 5640 254b 07       		.byte	0x7
 5641 254c 00       		.byte	0
 5642 254d 36       		.uleb128 0x36
 5643 254e 100D0000 		.4byte	.LASF611
 5644 2552 01       		.byte	0x1
 5645 2553 6B       		.byte	0x6b
 5646 2554 3D250000 		.4byte	0x253d
 5647 2558 05       		.uleb128 0x5
 5648 2559 03       		.byte	0x3
 5649 255a 00000000 		.4byte	_ZL11PWMChanFreq
 5650 255e 36       		.uleb128 0x36
 5651 255f 21080000 		.4byte	.LASF612
 5652 2563 01       		.byte	0x1
 5653 2564 6C       		.byte	0x6c
 5654 2565 3D250000 		.4byte	0x253d
 5655 2569 05       		.uleb128 0x5
 5656 256a 03       		.byte	0x3
 5657 256b 00000000 		.4byte	_ZL13PWMChanPeriod
 5658 256f 48       		.uleb128 0x48
 5659 2570 DF0D0000 		.4byte	.LASF613
 5660 2574 01       		.byte	0x1
 5661 2575 6F       		.byte	0x6f
 5662 2576 CE010000 		.4byte	0x1ce
 5663 257a 05       		.uleb128 0x5
 5664 257b 03       		.byte	0x3
 5665 257c 00000000 		.4byte	maxPwmLoopCount
ARM GAS  /tmp/ccQR1hla.s 			page 142


 5666 2580 45       		.uleb128 0x45
 5667 2581 53140000 		.4byte	.LASF614
 5668 2585 01       		.byte	0x1
 5669 2586 E7       		.byte	0xe7
 5670 2587 51000000 		.4byte	0x51
 5671 258b 0C       		.byte	0xc
 5672 258c 0C       		.uleb128 0xc
 5673 258d A3010000 		.4byte	0x1a3
 5674 2591 9C250000 		.4byte	0x259c
 5675 2595 0D       		.uleb128 0xd
 5676 2596 EC020000 		.4byte	0x2ec
 5677 259a 0B       		.byte	0xb
 5678 259b 00       		.byte	0
 5679 259c 05       		.uleb128 0x5
 5680 259d 8C250000 		.4byte	0x258c
 5681 25a1 36       		.uleb128 0x36
 5682 25a2 E31C0000 		.4byte	.LASF615
 5683 25a6 01       		.byte	0x1
 5684 25a7 EB       		.byte	0xeb
 5685 25a8 9C250000 		.4byte	0x259c
 5686 25ac 05       		.uleb128 0x5
 5687 25ad 03       		.byte	0x3
 5688 25ae 00000000 		.4byte	_ZL13channelToChNo
 5689 25b2 0C       		.uleb128 0xc
 5690 25b3 CD250000 		.4byte	0x25cd
 5691 25b7 C2250000 		.4byte	0x25c2
 5692 25bb 0D       		.uleb128 0xd
 5693 25bc EC020000 		.4byte	0x2ec
 5694 25c0 0B       		.byte	0xb
 5695 25c1 00       		.byte	0
 5696 25c2 05       		.uleb128 0x5
 5697 25c3 B2250000 		.4byte	0x25b2
 5698 25c7 1A       		.uleb128 0x1a
 5699 25c8 04       		.byte	0x4
 5700 25c9 A20D0000 		.4byte	0xda2
 5701 25cd 05       		.uleb128 0x5
 5702 25ce C7250000 		.4byte	0x25c7
 5703 25d2 36       		.uleb128 0x36
 5704 25d3 B41C0000 		.4byte	.LASF616
 5705 25d7 01       		.byte	0x1
 5706 25d8 F9       		.byte	0xf9
 5707 25d9 C2250000 		.4byte	0x25c2
 5708 25dd 05       		.uleb128 0x5
 5709 25de 03       		.byte	0x3
 5710 25df 00000000 		.4byte	_ZL11channelToTC
 5711 25e3 49       		.uleb128 0x49
 5712 25e4 11170000 		.4byte	.LASF617
 5713 25e8 01       		.byte	0x1
 5714 25e9 0701     		.2byte	0x107
 5715 25eb 9C250000 		.4byte	0x259c
 5716 25ef 05       		.uleb128 0x5
 5717 25f0 03       		.byte	0x3
 5718 25f1 00000000 		.4byte	_ZL11channelToId
 5719 25f5 0C       		.uleb128 0xc
 5720 25f6 B3010000 		.4byte	0x1b3
 5721 25fa 05260000 		.4byte	0x2605
 5722 25fe 0D       		.uleb128 0xd
ARM GAS  /tmp/ccQR1hla.s 			page 143


 5723 25ff EC020000 		.4byte	0x2ec
 5724 2603 0B       		.byte	0xb
 5725 2604 00       		.byte	0
 5726 2605 49       		.uleb128 0x49
 5727 2606 B5150000 		.4byte	.LASF618
 5728 260a 01       		.byte	0x1
 5729 260b 1501     		.2byte	0x115
 5730 260d F5250000 		.4byte	0x25f5
 5731 2611 05       		.uleb128 0x5
 5732 2612 03       		.byte	0x3
 5733 2613 00000000 		.4byte	_ZL10TCChanFreq
 5734 2617 4A       		.uleb128 0x4a
 5735 2618 E21B0000 		.4byte	.LASF619
 5736 261c 02       		.byte	0x2
 5737 261d 70       		.byte	0x70
 5738 261e 600C0000 		.4byte	.LASF623
 5739 2622 25000000 		.4byte	0x25
 5740 2626 03       		.byte	0x3
 5741 2627 54260000 		.4byte	0x2654
 5742 262b 4B       		.uleb128 0x4b
 5743 262c 5400     		.ascii	"T\000"
 5744 262e 25000000 		.4byte	0x25
 5745 2632 4C       		.uleb128 0x4c
 5746 2633 76616C00 		.ascii	"val\000"
 5747 2637 02       		.byte	0x2
 5748 2638 70       		.byte	0x70
 5749 2639 25000000 		.4byte	0x25
 5750 263d 4D       		.uleb128 0x4d
 5751 263e C01C0000 		.4byte	.LASF620
 5752 2642 02       		.byte	0x2
 5753 2643 70       		.byte	0x70
 5754 2644 25000000 		.4byte	0x25
 5755 2648 4D       		.uleb128 0x4d
 5756 2649 6A180000 		.4byte	.LASF621
 5757 264d 02       		.byte	0x2
 5758 264e 70       		.byte	0x70
 5759 264f 25000000 		.4byte	0x25
 5760 2653 00       		.byte	0
 5761 2654 4A       		.uleb128 0x4a
 5762 2655 4C1A0000 		.4byte	.LASF622
 5763 2659 02       		.byte	0x2
 5764 265a 35       		.byte	0x35
 5765 265b DE0A0000 		.4byte	.LASF624
 5766 265f FB000000 		.4byte	0xfb
 5767 2663 03       		.byte	0x3
 5768 2664 84260000 		.4byte	0x2684
 5769 2668 4B       		.uleb128 0x4b
 5770 2669 5800     		.ascii	"X\000"
 5771 266b FB000000 		.4byte	0xfb
 5772 266f 4C       		.uleb128 0x4c
 5773 2670 5F6100   		.ascii	"_a\000"
 5774 2673 02       		.byte	0x2
 5775 2674 35       		.byte	0x35
 5776 2675 FB000000 		.4byte	0xfb
 5777 2679 4C       		.uleb128 0x4c
 5778 267a 5F6200   		.ascii	"_b\000"
 5779 267d 02       		.byte	0x2
ARM GAS  /tmp/ccQR1hla.s 			page 144


 5780 267e 35       		.byte	0x35
 5781 267f FB000000 		.4byte	0xfb
 5782 2683 00       		.byte	0
 5783 2684 4E       		.uleb128 0x4e
 5784 2685 AC0F0000 		.4byte	.LASF686
 5785 2689 01       		.byte	0x1
 5786 268a 8D01     		.2byte	0x18d
 5787 268c 3E010000 		.4byte	.LASF687
 5788 2690 00000000 		.4byte	.LFB533
 5789 2694 20040000 		.4byte	.LFE533-.LFB533
 5790 2698 01       		.uleb128 0x1
 5791 2699 9C       		.byte	0x9c
 5792 269a 522E0000 		.4byte	0x2e52
 5793 269e 4F       		.uleb128 0x4f
 5794 269f 70696E00 		.ascii	"pin\000"
 5795 26a3 01       		.byte	0x1
 5796 26a4 8D01     		.2byte	0x18d
 5797 26a6 CD200000 		.4byte	0x20cd
 5798 26aa 00000000 		.4byte	.LLST0
 5799 26ae 50       		.uleb128 0x50
 5800 26af C00E0000 		.4byte	.LASF625
 5801 26b3 01       		.byte	0x1
 5802 26b4 8D01     		.2byte	0x18d
 5803 26b6 25000000 		.4byte	0x25
 5804 26ba 3A000000 		.4byte	.LLST1
 5805 26be 50       		.uleb128 0x50
 5806 26bf A8050000 		.4byte	.LASF626
 5807 26c3 01       		.byte	0x1
 5808 26c4 8D01     		.2byte	0x18d
 5809 26c6 B3010000 		.4byte	0x1b3
 5810 26ca 5A000000 		.4byte	.LLST2
 5811 26ce 51       		.uleb128 0x51
 5812 26cf 831A0000 		.4byte	.LASF628
 5813 26d3 01       		.byte	0x1
 5814 26d4 9601     		.2byte	0x196
 5815 26d6 582E0000 		.4byte	0x2e58
 5816 26da 52       		.uleb128 0x52
 5817 26db 73060000 		.4byte	.LASF627
 5818 26df 01       		.byte	0x1
 5819 26e0 9701     		.2byte	0x197
 5820 26e2 DE010000 		.4byte	0x1de
 5821 26e6 F8000000 		.4byte	.LLST3
 5822 26ea 53       		.uleb128 0x53
 5823 26eb 17260000 		.4byte	0x2617
 5824 26ef 1C000000 		.4byte	.LBB135
 5825 26f3 00000000 		.4byte	.Ldebug_ranges0+0
 5826 26f7 01       		.byte	0x1
 5827 26f8 9401     		.2byte	0x194
 5828 26fa 5E270000 		.4byte	0x275e
 5829 26fe 54       		.uleb128 0x54
 5830 26ff 48260000 		.4byte	0x2648
 5831 2703 B0010000 		.4byte	.LLST4
 5832 2707 54       		.uleb128 0x54
 5833 2708 3D260000 		.4byte	0x263d
 5834 270c D8010000 		.4byte	.LLST5
 5835 2710 54       		.uleb128 0x54
 5836 2711 32260000 		.4byte	0x2632
ARM GAS  /tmp/ccQR1hla.s 			page 145


 5837 2715 00020000 		.4byte	.LLST6
 5838 2719 55       		.uleb128 0x55
 5839 271a DA300000 		.4byte	0x30da
 5840 271e 1C000000 		.4byte	.LBB136
 5841 2722 16000000 		.4byte	.LBE136-.LBB136
 5842 2726 02       		.byte	0x2
 5843 2727 72       		.byte	0x72
 5844 2728 3F270000 		.4byte	0x273f
 5845 272c 54       		.uleb128 0x54
 5846 272d F8300000 		.4byte	0x30f8
 5847 2731 20020000 		.4byte	.LLST7
 5848 2735 54       		.uleb128 0x54
 5849 2736 EE300000 		.4byte	0x30ee
 5850 273a 38020000 		.4byte	.LLST8
 5851 273e 00       		.byte	0
 5852 273f 56       		.uleb128 0x56
 5853 2740 B1300000 		.4byte	0x30b1
 5854 2744 76000000 		.4byte	.LBB138
 5855 2748 14000000 		.4byte	.LBE138-.LBB138
 5856 274c 02       		.byte	0x2
 5857 274d 72       		.byte	0x72
 5858 274e 54       		.uleb128 0x54
 5859 274f CF300000 		.4byte	0x30cf
 5860 2753 4C020000 		.4byte	.LLST9
 5861 2757 57       		.uleb128 0x57
 5862 2758 C5300000 		.4byte	0x30c5
 5863 275c 00       		.byte	0
 5864 275d 00       		.byte	0
 5865 275e 53       		.uleb128 0x53
 5866 275f 03310000 		.4byte	0x3103
 5867 2763 54000000 		.4byte	.LBB140
 5868 2767 18000000 		.4byte	.Ldebug_ranges0+0x18
 5869 276b 01       		.byte	0x1
 5870 276c AF01     		.2byte	0x1af
 5871 276e 9A270000 		.4byte	0x279a
 5872 2772 54       		.uleb128 0x54
 5873 2773 1A310000 		.4byte	0x311a
 5874 2777 64020000 		.4byte	.LLST10
 5875 277b 54       		.uleb128 0x54
 5876 277c 0F310000 		.4byte	0x310f
 5877 2780 89020000 		.4byte	.LLST11
 5878 2784 58       		.uleb128 0x58
 5879 2785 6A000000 		.4byte	.LVL11
 5880 2789 54310000 		.4byte	0x3154
 5881 278d 59       		.uleb128 0x59
 5882 278e 01       		.uleb128 0x1
 5883 278f 50       		.byte	0x50
 5884 2790 02       		.uleb128 0x2
 5885 2791 74       		.byte	0x74
 5886 2792 00       		.sleb128 0
 5887 2793 59       		.uleb128 0x59
 5888 2794 01       		.uleb128 0x1
 5889 2795 52       		.byte	0x52
 5890 2796 01       		.uleb128 0x1
 5891 2797 30       		.byte	0x30
 5892 2798 00       		.byte	0
 5893 2799 00       		.byte	0
ARM GAS  /tmp/ccQR1hla.s 			page 146


 5894 279a 53       		.uleb128 0x53
 5895 279b 3A300000 		.4byte	0x303a
 5896 279f 8A000000 		.4byte	.LBB145
 5897 27a3 30000000 		.4byte	.Ldebug_ranges0+0x30
 5898 27a7 01       		.byte	0x1
 5899 27a8 9A01     		.2byte	0x19a
 5900 27aa D5280000 		.4byte	0x28d5
 5901 27ae 57       		.uleb128 0x57
 5902 27af 4A300000 		.4byte	0x304a
 5903 27b3 54       		.uleb128 0x54
 5904 27b4 55300000 		.4byte	0x3055
 5905 27b8 9C020000 		.4byte	.LLST12
 5906 27bc 5A       		.uleb128 0x5a
 5907 27bd 30000000 		.4byte	.Ldebug_ranges0+0x30
 5908 27c1 5B       		.uleb128 0x5b
 5909 27c2 60300000 		.4byte	0x3060
 5910 27c6 5C       		.uleb128 0x5c
 5911 27c7 6B300000 		.4byte	0x306b
 5912 27cb BC020000 		.4byte	.LLST13
 5913 27cf 55       		.uleb128 0x55
 5914 27d0 77300000 		.4byte	0x3077
 5915 27d4 B8000000 		.4byte	.LBB147
 5916 27d8 0C000000 		.4byte	.LBE147-.LBB147
 5917 27dc 01       		.byte	0x1
 5918 27dd 5C       		.byte	0x5c
 5919 27de 28280000 		.4byte	0x2828
 5920 27e2 54       		.uleb128 0x54
 5921 27e3 90300000 		.4byte	0x3090
 5922 27e7 DA020000 		.4byte	.LLST14
 5923 27eb 54       		.uleb128 0x54
 5924 27ec 87300000 		.4byte	0x3087
 5925 27f0 F0020000 		.4byte	.LLST15
 5926 27f4 56       		.uleb128 0x56
 5927 27f5 26310000 		.4byte	0x3126
 5928 27f9 BC000000 		.4byte	.LBB149
 5929 27fd 08000000 		.4byte	.LBE149-.LBB149
 5930 2801 01       		.byte	0x1
 5931 2802 25       		.byte	0x25
 5932 2803 54       		.uleb128 0x54
 5933 2804 30310000 		.4byte	0x3130
 5934 2808 04030000 		.4byte	.LLST16
 5935 280c 58       		.uleb128 0x58
 5936 280d C4000000 		.4byte	.LVL20
 5937 2811 5F310000 		.4byte	0x315f
 5938 2815 59       		.uleb128 0x59
 5939 2816 02       		.uleb128 0x2
 5940 2817 90       		.byte	0x90
 5941 2818 40       		.uleb128 0x40
 5942 2819 0B       		.uleb128 0xb
 5943 281a F5       		.byte	0xf5
 5944 281b 50       		.uleb128 0x50
 5945 281c 25       		.uleb128 0x25
 5946 281d F4       		.byte	0xf4
 5947 281e 25       		.uleb128 0x25
 5948 281f 04       		.byte	0x4
 5949 2820 00F07F45 		.4byte	0x457ff000
 5950 2824 1E       		.byte	0x1e
ARM GAS  /tmp/ccQR1hla.s 			page 147


 5951 2825 00       		.byte	0
 5952 2826 00       		.byte	0
 5953 2827 00       		.byte	0
 5954 2828 5D       		.uleb128 0x5d
 5955 2829 9A000000 		.4byte	.LVL16
 5956 282d 6C310000 		.4byte	0x316c
 5957 2831 3F280000 		.4byte	0x283f
 5958 2835 59       		.uleb128 0x59
 5959 2836 01       		.uleb128 0x1
 5960 2837 50       		.byte	0x50
 5961 2838 05       		.uleb128 0x5
 5962 2839 0C       		.byte	0xc
 5963 283a 00000440 		.4byte	0x40040000
 5964 283e 00       		.byte	0
 5965 283f 5D       		.uleb128 0x5d
 5966 2840 A8000000 		.4byte	.LVL17
 5967 2844 6C310000 		.4byte	0x316c
 5968 2848 56280000 		.4byte	0x2856
 5969 284c 59       		.uleb128 0x59
 5970 284d 01       		.uleb128 0x1
 5971 284e 50       		.byte	0x50
 5972 284f 05       		.uleb128 0x5
 5973 2850 0C       		.byte	0xc
 5974 2851 00000440 		.4byte	0x40040000
 5975 2855 00       		.byte	0
 5976 2856 5D       		.uleb128 0x5d
 5977 2857 B8000000 		.4byte	.LVL18
 5978 285b 77310000 		.4byte	0x3177
 5979 285f 73280000 		.4byte	0x2873
 5980 2863 59       		.uleb128 0x59
 5981 2864 01       		.uleb128 0x1
 5982 2865 50       		.byte	0x50
 5983 2866 05       		.uleb128 0x5
 5984 2867 0C       		.byte	0xc
 5985 2868 00000440 		.4byte	0x40040000
 5986 286c 59       		.uleb128 0x59
 5987 286d 01       		.uleb128 0x1
 5988 286e 51       		.byte	0x51
 5989 286f 02       		.uleb128 0x2
 5990 2870 74       		.byte	0x74
 5991 2871 00       		.sleb128 0
 5992 2872 00       		.byte	0
 5993 2873 5D       		.uleb128 0x5d
 5994 2874 CE000000 		.4byte	.LVL21
 5995 2878 82310000 		.4byte	0x3182
 5996 287c 90280000 		.4byte	0x2890
 5997 2880 59       		.uleb128 0x59
 5998 2881 01       		.uleb128 0x1
 5999 2882 50       		.byte	0x50
 6000 2883 05       		.uleb128 0x5
 6001 2884 0C       		.byte	0xc
 6002 2885 00000440 		.4byte	0x40040000
 6003 2889 59       		.uleb128 0x59
 6004 288a 01       		.uleb128 0x1
 6005 288b 52       		.byte	0x52
 6006 288c 02       		.uleb128 0x2
 6007 288d 74       		.byte	0x74
ARM GAS  /tmp/ccQR1hla.s 			page 148


 6008 288e 00       		.sleb128 0
 6009 288f 00       		.byte	0
 6010 2890 5D       		.uleb128 0x5d
 6011 2891 9C020000 		.4byte	.LVL64
 6012 2895 8D310000 		.4byte	0x318d
 6013 2899 A3280000 		.4byte	0x28a3
 6014 289d 59       		.uleb128 0x59
 6015 289e 01       		.uleb128 0x1
 6016 289f 50       		.byte	0x50
 6017 28a0 01       		.uleb128 0x1
 6018 28a1 4E       		.byte	0x4e
 6019 28a2 00       		.byte	0
 6020 28a3 5D       		.uleb128 0x5d
 6021 28a4 A2020000 		.4byte	.LVL65
 6022 28a8 98310000 		.4byte	0x3198
 6023 28ac BA280000 		.4byte	0x28ba
 6024 28b0 59       		.uleb128 0x59
 6025 28b1 01       		.uleb128 0x1
 6026 28b2 50       		.byte	0x50
 6027 28b3 05       		.uleb128 0x5
 6028 28b4 0C       		.byte	0xc
 6029 28b5 00000440 		.4byte	0x40040000
 6030 28b9 00       		.byte	0
 6031 28ba 58       		.uleb128 0x58
 6032 28bb AA020000 		.4byte	.LVL66
 6033 28bf A3310000 		.4byte	0x31a3
 6034 28c3 59       		.uleb128 0x59
 6035 28c4 01       		.uleb128 0x1
 6036 28c5 50       		.byte	0x50
 6037 28c6 05       		.uleb128 0x5
 6038 28c7 0C       		.byte	0xc
 6039 28c8 00000440 		.4byte	0x40040000
 6040 28cc 59       		.uleb128 0x59
 6041 28cd 01       		.uleb128 0x1
 6042 28ce 51       		.byte	0x51
 6043 28cf 02       		.uleb128 0x2
 6044 28d0 75       		.byte	0x75
 6045 28d1 00       		.sleb128 0
 6046 28d2 00       		.byte	0
 6047 28d3 00       		.byte	0
 6048 28d4 00       		.byte	0
 6049 28d5 53       		.uleb128 0x53
 6050 28d6 6C2F0000 		.4byte	0x2f6c
 6051 28da D8000000 		.4byte	.LBB152
 6052 28de 48000000 		.4byte	.Ldebug_ranges0+0x48
 6053 28e2 01       		.byte	0x1
 6054 28e3 A101     		.2byte	0x1a1
 6055 28e5 6B2B0000 		.4byte	0x2b6b
 6056 28e9 54       		.uleb128 0x54
 6057 28ea 922F0000 		.4byte	0x2f92
 6058 28ee 44030000 		.4byte	.LLST17
 6059 28f2 54       		.uleb128 0x54
 6060 28f3 872F0000 		.4byte	0x2f87
 6061 28f7 78030000 		.4byte	.LLST18
 6062 28fb 57       		.uleb128 0x57
 6063 28fc 7C2F0000 		.4byte	0x2f7c
 6064 2900 5A       		.uleb128 0x5a
ARM GAS  /tmp/ccQR1hla.s 			page 149


 6065 2901 48000000 		.4byte	.Ldebug_ranges0+0x48
 6066 2905 5C       		.uleb128 0x5c
 6067 2906 9D2F0000 		.4byte	0x2f9d
 6068 290a A4030000 		.4byte	.LLST19
 6069 290e 5C       		.uleb128 0x5c
 6070 290f A82F0000 		.4byte	0x2fa8
 6071 2913 CD030000 		.4byte	.LLST20
 6072 2917 5E       		.uleb128 0x5e
 6073 2918 68000000 		.4byte	.Ldebug_ranges0+0x68
 6074 291c F72A0000 		.4byte	0x2af7
 6075 2920 5C       		.uleb128 0x5c
 6076 2921 B82F0000 		.4byte	0x2fb8
 6077 2925 17040000 		.4byte	.LLST21
 6078 2929 5C       		.uleb128 0x5c
 6079 292a C32F0000 		.4byte	0x2fc3
 6080 292e 33040000 		.4byte	.LLST22
 6081 2932 5B       		.uleb128 0x5b
 6082 2933 CE2F0000 		.4byte	0x2fce
 6083 2937 5F       		.uleb128 0x5f
 6084 2938 D92F0000 		.4byte	0x2fd9
 6085 293c 03       		.uleb128 0x3
 6086 293d 91       		.byte	0x91
 6087 293e 947F     		.sleb128 -108
 6088 2940 60       		.uleb128 0x60
 6089 2941 D2020000 		.4byte	.LBB157
 6090 2945 96000000 		.4byte	.LBE157-.LBB157
 6091 2949 B4290000 		.4byte	0x29b4
 6092 294d 5F       		.uleb128 0x5f
 6093 294e E92F0000 		.4byte	0x2fe9
 6094 2952 03       		.uleb128 0x3
 6095 2953 91       		.byte	0x91
 6096 2954 947F     		.sleb128 -108
 6097 2956 5D       		.uleb128 0x5d
 6098 2957 DE020000 		.4byte	.LVL71
 6099 295b 8D310000 		.4byte	0x318d
 6100 295f 69290000 		.4byte	0x2969
 6101 2963 59       		.uleb128 0x59
 6102 2964 01       		.uleb128 0x1
 6103 2965 50       		.byte	0x50
 6104 2966 01       		.uleb128 0x1
 6105 2967 4F       		.byte	0x4f
 6106 2968 00       		.byte	0
 6107 2969 5D       		.uleb128 0x5d
 6108 296a E4020000 		.4byte	.LVL72
 6109 296e 8D310000 		.4byte	0x318d
 6110 2972 7D290000 		.4byte	0x297d
 6111 2976 59       		.uleb128 0x59
 6112 2977 01       		.uleb128 0x1
 6113 2978 50       		.byte	0x50
 6114 2979 02       		.uleb128 0x2
 6115 297a 08       		.byte	0x8
 6116 297b 3C       		.byte	0x3c
 6117 297c 00       		.byte	0
 6118 297d 5D       		.uleb128 0x5d
 6119 297e 04030000 		.4byte	.LVL73
 6120 2982 AE310000 		.4byte	0x31ae
 6121 2986 9B290000 		.4byte	0x299b
ARM GAS  /tmp/ccQR1hla.s 			page 150


 6122 298a 59       		.uleb128 0x59
 6123 298b 01       		.uleb128 0x1
 6124 298c 50       		.byte	0x50
 6125 298d 04       		.uleb128 0x4
 6126 298e 91       		.byte	0x91
 6127 298f FC7E     		.sleb128 -132
 6128 2991 06       		.byte	0x6
 6129 2992 59       		.uleb128 0x59
 6130 2993 01       		.uleb128 0x1
 6131 2994 51       		.byte	0x51
 6132 2995 04       		.uleb128 0x4
 6133 2996 91       		.byte	0x91
 6134 2997 807F     		.sleb128 -128
 6135 2999 06       		.byte	0x6
 6136 299a 00       		.byte	0
 6137 299b 58       		.uleb128 0x58
 6138 299c 12030000 		.4byte	.LVL74
 6139 29a0 AE310000 		.4byte	0x31ae
 6140 29a4 59       		.uleb128 0x59
 6141 29a5 01       		.uleb128 0x1
 6142 29a6 50       		.byte	0x50
 6143 29a7 02       		.uleb128 0x2
 6144 29a8 7B       		.byte	0x7b
 6145 29a9 00       		.sleb128 0
 6146 29aa 59       		.uleb128 0x59
 6147 29ab 01       		.uleb128 0x1
 6148 29ac 51       		.byte	0x51
 6149 29ad 04       		.uleb128 0x4
 6150 29ae 91       		.byte	0x91
 6151 29af 807F     		.sleb128 -128
 6152 29b1 06       		.byte	0x6
 6153 29b2 00       		.byte	0
 6154 29b3 00       		.byte	0
 6155 29b4 5E       		.uleb128 0x5e
 6156 29b5 80000000 		.4byte	.Ldebug_ranges0+0x80
 6157 29b9 422A0000 		.4byte	0x2a42
 6158 29bd 5C       		.uleb128 0x5c
 6159 29be F62F0000 		.4byte	0x2ff6
 6160 29c2 51040000 		.4byte	.LLST23
 6161 29c6 5A       		.uleb128 0x5a
 6162 29c7 A8000000 		.4byte	.Ldebug_ranges0+0xa8
 6163 29cb 5C       		.uleb128 0x5c
 6164 29cc 00300000 		.4byte	0x3000
 6165 29d0 70040000 		.4byte	.LLST24
 6166 29d4 5E       		.uleb128 0x5e
 6167 29d5 C8000000 		.4byte	.Ldebug_ranges0+0xc8
 6168 29d9 F6290000 		.4byte	0x29f6
 6169 29dd 5C       		.uleb128 0x5c
 6170 29de 0C300000 		.4byte	0x300c
 6171 29e2 8E040000 		.4byte	.LLST25
 6172 29e6 5A       		.uleb128 0x5a
 6173 29e7 E0000000 		.4byte	.Ldebug_ranges0+0xe0
 6174 29eb 5C       		.uleb128 0x5c
 6175 29ec 16300000 		.4byte	0x3016
 6176 29f0 D5040000 		.4byte	.LLST26
 6177 29f4 00       		.byte	0
 6178 29f5 00       		.byte	0
ARM GAS  /tmp/ccQR1hla.s 			page 151


 6179 29f6 5D       		.uleb128 0x5d
 6180 29f7 4E010000 		.4byte	.LVL33
 6181 29fb BA310000 		.4byte	0x31ba
 6182 29ff 102A0000 		.4byte	0x2a10
 6183 2a03 59       		.uleb128 0x59
 6184 2a04 01       		.uleb128 0x1
 6185 2a05 50       		.byte	0x50
 6186 2a06 02       		.uleb128 0x2
 6187 2a07 79       		.byte	0x79
 6188 2a08 00       		.sleb128 0
 6189 2a09 59       		.uleb128 0x59
 6190 2a0a 01       		.uleb128 0x1
 6191 2a0b 51       		.byte	0x51
 6192 2a0c 02       		.uleb128 0x2
 6193 2a0d 78       		.byte	0x78
 6194 2a0e 00       		.sleb128 0
 6195 2a0f 00       		.byte	0
 6196 2a10 5D       		.uleb128 0x5d
 6197 2a11 94010000 		.4byte	.LVL37
 6198 2a15 C6310000 		.4byte	0x31c6
 6199 2a19 2A2A0000 		.4byte	0x2a2a
 6200 2a1d 59       		.uleb128 0x59
 6201 2a1e 01       		.uleb128 0x1
 6202 2a1f 50       		.byte	0x50
 6203 2a20 02       		.uleb128 0x2
 6204 2a21 74       		.byte	0x74
 6205 2a22 00       		.sleb128 0
 6206 2a23 59       		.uleb128 0x59
 6207 2a24 01       		.uleb128 0x1
 6208 2a25 51       		.byte	0x51
 6209 2a26 02       		.uleb128 0x2
 6210 2a27 78       		.byte	0x78
 6211 2a28 00       		.sleb128 0
 6212 2a29 00       		.byte	0
 6213 2a2a 58       		.uleb128 0x58
 6214 2a2b C2010000 		.4byte	.LVL44
 6215 2a2f BA310000 		.4byte	0x31ba
 6216 2a33 59       		.uleb128 0x59
 6217 2a34 01       		.uleb128 0x1
 6218 2a35 50       		.byte	0x50
 6219 2a36 02       		.uleb128 0x2
 6220 2a37 74       		.byte	0x74
 6221 2a38 00       		.sleb128 0
 6222 2a39 59       		.uleb128 0x59
 6223 2a3a 01       		.uleb128 0x1
 6224 2a3b 51       		.byte	0x51
 6225 2a3c 02       		.uleb128 0x2
 6226 2a3d 78       		.byte	0x78
 6227 2a3e 00       		.sleb128 0
 6228 2a3f 00       		.byte	0
 6229 2a40 00       		.byte	0
 6230 2a41 00       		.byte	0
 6231 2a42 61       		.uleb128 0x61
 6232 2a43 77300000 		.4byte	0x3077
 6233 2a47 28010000 		.4byte	.LBB168
 6234 2a4b 00010000 		.4byte	.Ldebug_ranges0+0x100
 6235 2a4f 01       		.byte	0x1
ARM GAS  /tmp/ccQR1hla.s 			page 152


 6236 2a50 A4       		.byte	0xa4
 6237 2a51 9A2A0000 		.4byte	0x2a9a
 6238 2a55 54       		.uleb128 0x54
 6239 2a56 90300000 		.4byte	0x3090
 6240 2a5a F3040000 		.4byte	.LLST27
 6241 2a5e 54       		.uleb128 0x54
 6242 2a5f 87300000 		.4byte	0x3087
 6243 2a63 06050000 		.4byte	.LLST28
 6244 2a67 62       		.uleb128 0x62
 6245 2a68 26310000 		.4byte	0x3126
 6246 2a6c 32010000 		.4byte	.LBB170
 6247 2a70 18010000 		.4byte	.Ldebug_ranges0+0x118
 6248 2a74 01       		.byte	0x1
 6249 2a75 25       		.byte	0x25
 6250 2a76 54       		.uleb128 0x54
 6251 2a77 30310000 		.4byte	0x3130
 6252 2a7b 1A050000 		.4byte	.LLST29
 6253 2a7f 58       		.uleb128 0x58
 6254 2a80 3A010000 		.4byte	.LVL30
 6255 2a84 5F310000 		.4byte	0x315f
 6256 2a88 59       		.uleb128 0x59
 6257 2a89 02       		.uleb128 0x2
 6258 2a8a 90       		.byte	0x90
 6259 2a8b 40       		.uleb128 0x40
 6260 2a8c 0A       		.uleb128 0xa
 6261 2a8d 7B       		.byte	0x7b
 6262 2a8e 00       		.sleb128 0
 6263 2a8f F7       		.byte	0xf7
 6264 2a90 33       		.uleb128 0x33
 6265 2a91 F7       		.byte	0xf7
 6266 2a92 25       		.uleb128 0x25
 6267 2a93 F5       		.byte	0xf5
 6268 2a94 50       		.uleb128 0x50
 6269 2a95 25       		.uleb128 0x25
 6270 2a96 1E       		.byte	0x1e
 6271 2a97 00       		.byte	0
 6272 2a98 00       		.byte	0
 6273 2a99 00       		.byte	0
 6274 2a9a 5D       		.uleb128 0x5d
 6275 2a9b 7C030000 		.4byte	.LVL78
 6276 2a9f D2310000 		.4byte	0x31d2
 6277 2aa3 B92A0000 		.4byte	0x2ab9
 6278 2aa7 59       		.uleb128 0x59
 6279 2aa8 01       		.uleb128 0x1
 6280 2aa9 50       		.byte	0x50
 6281 2aaa 02       		.uleb128 0x2
 6282 2aab 7A       		.byte	0x7a
 6283 2aac 00       		.sleb128 0
 6284 2aad 59       		.uleb128 0x59
 6285 2aae 01       		.uleb128 0x1
 6286 2aaf 51       		.byte	0x51
 6287 2ab0 01       		.uleb128 0x1
 6288 2ab1 30       		.byte	0x30
 6289 2ab2 59       		.uleb128 0x59
 6290 2ab3 01       		.uleb128 0x1
 6291 2ab4 52       		.byte	0x52
 6292 2ab5 02       		.uleb128 0x2
ARM GAS  /tmp/ccQR1hla.s 			page 153


 6293 2ab6 08       		.byte	0x8
 6294 2ab7 3C       		.byte	0x3c
 6295 2ab8 00       		.byte	0
 6296 2ab9 5D       		.uleb128 0x5d
 6297 2aba 9A030000 		.4byte	.LVL79
 6298 2abe DB310000 		.4byte	0x31db
 6299 2ac2 D32A0000 		.4byte	0x2ad3
 6300 2ac6 59       		.uleb128 0x59
 6301 2ac7 01       		.uleb128 0x1
 6302 2ac8 50       		.byte	0x50
 6303 2ac9 02       		.uleb128 0x2
 6304 2aca 79       		.byte	0x79
 6305 2acb 00       		.sleb128 0
 6306 2acc 59       		.uleb128 0x59
 6307 2acd 01       		.uleb128 0x1
 6308 2ace 51       		.byte	0x51
 6309 2acf 02       		.uleb128 0x2
 6310 2ad0 7A       		.byte	0x7a
 6311 2ad1 00       		.sleb128 0
 6312 2ad2 00       		.byte	0
 6313 2ad3 5D       		.uleb128 0x5d
 6314 2ad4 A2030000 		.4byte	.LVL80
 6315 2ad8 C6310000 		.4byte	0x31c6
 6316 2adc ED2A0000 		.4byte	0x2aed
 6317 2ae0 59       		.uleb128 0x59
 6318 2ae1 01       		.uleb128 0x1
 6319 2ae2 50       		.byte	0x50
 6320 2ae3 02       		.uleb128 0x2
 6321 2ae4 79       		.byte	0x79
 6322 2ae5 00       		.sleb128 0
 6323 2ae6 59       		.uleb128 0x59
 6324 2ae7 01       		.uleb128 0x1
 6325 2ae8 51       		.byte	0x51
 6326 2ae9 02       		.uleb128 0x2
 6327 2aea 78       		.byte	0x78
 6328 2aeb 00       		.sleb128 0
 6329 2aec 00       		.byte	0
 6330 2aed 63       		.uleb128 0x63
 6331 2aee B4030000 		.4byte	.LVL81
 6332 2af2 E7310000 		.4byte	0x31e7
 6333 2af6 00       		.byte	0
 6334 2af7 64       		.uleb128 0x64
 6335 2af8 F0030000 		.4byte	.LBB180
 6336 2afc 30000000 		.4byte	.LBE180-.LBB180
 6337 2b00 5F       		.uleb128 0x5f
 6338 2b01 27300000 		.4byte	0x3027
 6339 2b05 03       		.uleb128 0x3
 6340 2b06 91       		.byte	0x91
 6341 2b07 947F     		.sleb128 -108
 6342 2b09 61       		.uleb128 0x61
 6343 2b0a 77300000 		.4byte	0x3077
 6344 2b0e FA030000 		.4byte	.LBB181
 6345 2b12 30010000 		.4byte	.Ldebug_ranges0+0x130
 6346 2b16 01       		.byte	0x1
 6347 2b17 DD       		.byte	0xdd
 6348 2b18 512B0000 		.4byte	0x2b51
 6349 2b1c 54       		.uleb128 0x54
ARM GAS  /tmp/ccQR1hla.s 			page 154


 6350 2b1d 90300000 		.4byte	0x3090
 6351 2b21 58050000 		.4byte	.LLST30
 6352 2b25 54       		.uleb128 0x54
 6353 2b26 87300000 		.4byte	0x3087
 6354 2b2a 71050000 		.4byte	.LLST31
 6355 2b2e 56       		.uleb128 0x56
 6356 2b2f 26310000 		.4byte	0x3126
 6357 2b33 04040000 		.4byte	.LBB183
 6358 2b37 08000000 		.4byte	.LBE183-.LBB183
 6359 2b3b 01       		.byte	0x1
 6360 2b3c 25       		.byte	0x25
 6361 2b3d 54       		.uleb128 0x54
 6362 2b3e 30310000 		.4byte	0x3130
 6363 2b42 85050000 		.4byte	.LLST32
 6364 2b46 63       		.uleb128 0x63
 6365 2b47 0C040000 		.4byte	.LVL92
 6366 2b4b 5F310000 		.4byte	0x315f
 6367 2b4f 00       		.byte	0
 6368 2b50 00       		.byte	0
 6369 2b51 58       		.uleb128 0x58
 6370 2b52 16040000 		.4byte	.LVL93
 6371 2b56 F2310000 		.4byte	0x31f2
 6372 2b5a 59       		.uleb128 0x59
 6373 2b5b 01       		.uleb128 0x1
 6374 2b5c 50       		.byte	0x50
 6375 2b5d 02       		.uleb128 0x2
 6376 2b5e 79       		.byte	0x79
 6377 2b5f 00       		.sleb128 0
 6378 2b60 59       		.uleb128 0x59
 6379 2b61 01       		.uleb128 0x1
 6380 2b62 51       		.byte	0x51
 6381 2b63 03       		.uleb128 0x3
 6382 2b64 91       		.byte	0x91
 6383 2b65 947F     		.sleb128 -108
 6384 2b67 00       		.byte	0
 6385 2b68 00       		.byte	0
 6386 2b69 00       		.byte	0
 6387 2b6a 00       		.byte	0
 6388 2b6b 65       		.uleb128 0x65
 6389 2b6c 5D2E0000 		.4byte	0x2e5d
 6390 2b70 D0010000 		.4byte	.LBB193
 6391 2b74 48010000 		.4byte	.Ldebug_ranges0+0x148
 6392 2b78 01       		.byte	0x1
 6393 2b79 A801     		.2byte	0x1a8
 6394 2b7b 54       		.uleb128 0x54
 6395 2b7c 862E0000 		.4byte	0x2e86
 6396 2b80 A2050000 		.4byte	.LLST33
 6397 2b84 54       		.uleb128 0x54
 6398 2b85 7A2E0000 		.4byte	0x2e7a
 6399 2b89 D6050000 		.4byte	.LLST34
 6400 2b8d 57       		.uleb128 0x57
 6401 2b8e 6E2E0000 		.4byte	0x2e6e
 6402 2b92 5A       		.uleb128 0x5a
 6403 2b93 48010000 		.4byte	.Ldebug_ranges0+0x148
 6404 2b97 5C       		.uleb128 0x5c
 6405 2b98 922E0000 		.4byte	0x2e92
 6406 2b9c 0E060000 		.4byte	.LLST35
ARM GAS  /tmp/ccQR1hla.s 			page 155


 6407 2ba0 5A       		.uleb128 0x5a
 6408 2ba1 68010000 		.4byte	.Ldebug_ranges0+0x168
 6409 2ba5 5C       		.uleb128 0x5c
 6410 2ba6 9F2E0000 		.4byte	0x2e9f
 6411 2baa 38060000 		.4byte	.LLST36
 6412 2bae 5C       		.uleb128 0x5c
 6413 2baf AB2E0000 		.4byte	0x2eab
 6414 2bb3 AE060000 		.4byte	.LLST37
 6415 2bb7 5C       		.uleb128 0x5c
 6416 2bb8 B72E0000 		.4byte	0x2eb7
 6417 2bbc 24070000 		.4byte	.LLST38
 6418 2bc0 5B       		.uleb128 0x5b
 6419 2bc1 C32E0000 		.4byte	0x2ec3
 6420 2bc5 60       		.uleb128 0x60
 6421 2bc6 F2010000 		.4byte	.LBB198
 6422 2bca 4C000000 		.4byte	.LBE198-.LBB198
 6423 2bce B22C0000 		.4byte	0x2cb2
 6424 2bd2 5B       		.uleb128 0x5b
 6425 2bd3 D02E0000 		.4byte	0x2ed0
 6426 2bd7 66       		.uleb128 0x66
 6427 2bd8 54260000 		.4byte	0x2654
 6428 2bdc 0C020000 		.4byte	.LBB199
 6429 2be0 08000000 		.4byte	.LBE199-.LBB199
 6430 2be4 01       		.byte	0x1
 6431 2be5 4C01     		.2byte	0x14c
 6432 2be7 F62B0000 		.4byte	0x2bf6
 6433 2beb 57       		.uleb128 0x57
 6434 2bec 79260000 		.4byte	0x2679
 6435 2bf0 57       		.uleb128 0x57
 6436 2bf1 6F260000 		.4byte	0x266f
 6437 2bf5 00       		.byte	0
 6438 2bf6 66       		.uleb128 0x66
 6439 2bf7 DF2E0000 		.4byte	0x2edf
 6440 2bfb 34020000 		.4byte	.LBB201
 6441 2bff 0A000000 		.4byte	.LBE201-.LBB201
 6442 2c03 01       		.byte	0x1
 6443 2c04 6001     		.2byte	0x160
 6444 2c06 262C0000 		.4byte	0x2c26
 6445 2c0a 54       		.uleb128 0x54
 6446 2c0b 032F0000 		.4byte	0x2f03
 6447 2c0f 68070000 		.4byte	.LLST39
 6448 2c13 54       		.uleb128 0x54
 6449 2c14 F72E0000 		.4byte	0x2ef7
 6450 2c18 7C070000 		.4byte	.LLST40
 6451 2c1c 54       		.uleb128 0x54
 6452 2c1d EC2E0000 		.4byte	0x2eec
 6453 2c21 90070000 		.4byte	.LLST41
 6454 2c25 00       		.byte	0
 6455 2c26 5D       		.uleb128 0x5d
 6456 2c27 00020000 		.4byte	.LVL50
 6457 2c2b 8D310000 		.4byte	0x318d
 6458 2c2f 462C0000 		.4byte	0x2c46
 6459 2c33 59       		.uleb128 0x59
 6460 2c34 01       		.uleb128 0x1
 6461 2c35 50       		.byte	0x50
 6462 2c36 0E       		.uleb128 0xe
 6463 2c37 7D       		.byte	0x7d
ARM GAS  /tmp/ccQR1hla.s 			page 156


 6464 2c38 00       		.sleb128 0
 6465 2c39 06       		.byte	0x6
 6466 2c3a 03       		.byte	0x3
 6467 2c3b 00000000 		.4byte	.LANCHOR7
 6468 2c3f 22       		.byte	0x22
 6469 2c40 94       		.byte	0x94
 6470 2c41 01       		.byte	0x1
 6471 2c42 08       		.byte	0x8
 6472 2c43 FF       		.byte	0xff
 6473 2c44 1A       		.byte	0x1a
 6474 2c45 00       		.byte	0
 6475 2c46 5D       		.uleb128 0x5d
 6476 2c47 0A020000 		.4byte	.LVL51
 6477 2c4b FE310000 		.4byte	0x31fe
 6478 2c4f 692C0000 		.4byte	0x2c69
 6479 2c53 59       		.uleb128 0x59
 6480 2c54 01       		.uleb128 0x1
 6481 2c55 50       		.byte	0x50
 6482 2c56 02       		.uleb128 0x2
 6483 2c57 79       		.byte	0x79
 6484 2c58 00       		.sleb128 0
 6485 2c59 59       		.uleb128 0x59
 6486 2c5a 01       		.uleb128 0x1
 6487 2c5b 51       		.byte	0x51
 6488 2c5c 02       		.uleb128 0x2
 6489 2c5d 7A       		.byte	0x7a
 6490 2c5e 00       		.sleb128 0
 6491 2c5f 59       		.uleb128 0x59
 6492 2c60 01       		.uleb128 0x1
 6493 2c61 52       		.byte	0x52
 6494 2c62 05       		.uleb128 0x5
 6495 2c63 0C       		.byte	0xc
 6496 2c64 03C44A4A 		.4byte	0x4a4ac403
 6497 2c68 00       		.byte	0
 6498 2c69 58       		.uleb128 0x58
 6499 2c6a 26020000 		.4byte	.LVL52
 6500 2c6e 09320000 		.4byte	0x3209
 6501 2c72 59       		.uleb128 0x59
 6502 2c73 01       		.uleb128 0x1
 6503 2c74 50       		.byte	0x50
 6504 2c75 02       		.uleb128 0x2
 6505 2c76 79       		.byte	0x79
 6506 2c77 00       		.sleb128 0
 6507 2c78 59       		.uleb128 0x59
 6508 2c79 01       		.uleb128 0x1
 6509 2c7a 51       		.byte	0x51
 6510 2c7b 02       		.uleb128 0x2
 6511 2c7c 7A       		.byte	0x7a
 6512 2c7d 00       		.sleb128 0
 6513 2c7e 59       		.uleb128 0x59
 6514 2c7f 01       		.uleb128 0x1
 6515 2c80 52       		.byte	0x52
 6516 2c81 2E       		.uleb128 0x2e
 6517 2c82 0C       		.byte	0xc
 6518 2c83 A3E11100 		.4byte	0x11e1a3
 6519 2c87 F7       		.byte	0xf7
 6520 2c88 2C       		.uleb128 0x2c
ARM GAS  /tmp/ccQR1hla.s 			page 157


 6521 2c89 76       		.byte	0x76
 6522 2c8a 00       		.sleb128 0
 6523 2c8b F7       		.byte	0xf7
 6524 2c8c 2C       		.uleb128 0x2c
 6525 2c8d 1B       		.byte	0x1b
 6526 2c8e F7       		.byte	0xf7
 6527 2c8f 00       		.uleb128 0
 6528 2c90 0A       		.byte	0xa
 6529 2c91 FFFF     		.2byte	0xffff
 6530 2c93 0C       		.byte	0xc
 6531 2c94 A3E11100 		.4byte	0x11e1a3
 6532 2c98 F7       		.byte	0xf7
 6533 2c99 2C       		.uleb128 0x2c
 6534 2c9a 76       		.byte	0x76
 6535 2c9b 00       		.sleb128 0
 6536 2c9c F7       		.byte	0xf7
 6537 2c9d 2C       		.uleb128 0x2c
 6538 2c9e 1B       		.byte	0x1b
 6539 2c9f F7       		.byte	0xf7
 6540 2ca0 00       		.uleb128 0
 6541 2ca1 40       		.byte	0x40
 6542 2ca2 4B       		.byte	0x4b
 6543 2ca3 24       		.byte	0x24
 6544 2ca4 22       		.byte	0x22
 6545 2ca5 0C       		.byte	0xc
 6546 2ca6 FEFF0080 		.4byte	0x8000fffe
 6547 2caa 2C       		.byte	0x2c
 6548 2cab 28       		.byte	0x28
 6549 2cac 0100     		.2byte	0x1
 6550 2cae 16       		.byte	0x16
 6551 2caf 13       		.byte	0x13
 6552 2cb0 00       		.byte	0
 6553 2cb1 00       		.byte	0
 6554 2cb2 53       		.uleb128 0x53
 6555 2cb3 77300000 		.4byte	0x3077
 6556 2cb7 46020000 		.4byte	.LBB204
 6557 2cbb 88010000 		.4byte	.Ldebug_ranges0+0x188
 6558 2cbf 01       		.byte	0x1
 6559 2cc0 6401     		.2byte	0x164
 6560 2cc2 FB2C0000 		.4byte	0x2cfb
 6561 2cc6 54       		.uleb128 0x54
 6562 2cc7 90300000 		.4byte	0x3090
 6563 2ccb A3070000 		.4byte	.LLST42
 6564 2ccf 54       		.uleb128 0x54
 6565 2cd0 87300000 		.4byte	0x3087
 6566 2cd4 B6070000 		.4byte	.LLST43
 6567 2cd8 56       		.uleb128 0x56
 6568 2cd9 26310000 		.4byte	0x3126
 6569 2cdd 54020000 		.4byte	.LBB206
 6570 2ce1 08000000 		.4byte	.LBE206-.LBB206
 6571 2ce5 01       		.byte	0x1
 6572 2ce6 25       		.byte	0x25
 6573 2ce7 54       		.uleb128 0x54
 6574 2ce8 30310000 		.4byte	0x3130
 6575 2cec CA070000 		.4byte	.LLST44
 6576 2cf0 63       		.uleb128 0x63
 6577 2cf1 5C020000 		.4byte	.LVL57
ARM GAS  /tmp/ccQR1hla.s 			page 158


 6578 2cf5 5F310000 		.4byte	0x315f
 6579 2cf9 00       		.byte	0
 6580 2cfa 00       		.byte	0
 6581 2cfb 66       		.uleb128 0x66
 6582 2cfc 3D2F0000 		.4byte	0x2f3d
 6583 2d00 74020000 		.4byte	.LBB212
 6584 2d04 0C000000 		.4byte	.LBE212-.LBB212
 6585 2d08 01       		.byte	0x1
 6586 2d09 7801     		.2byte	0x178
 6587 2d0b 2B2D0000 		.4byte	0x2d2b
 6588 2d0f 54       		.uleb128 0x54
 6589 2d10 612F0000 		.4byte	0x2f61
 6590 2d14 F3070000 		.4byte	.LLST45
 6591 2d18 54       		.uleb128 0x54
 6592 2d19 552F0000 		.4byte	0x2f55
 6593 2d1d 09080000 		.4byte	.LLST46
 6594 2d21 54       		.uleb128 0x54
 6595 2d22 4A2F0000 		.4byte	0x2f4a
 6596 2d26 1C080000 		.4byte	.LLST47
 6597 2d2a 00       		.byte	0
 6598 2d2b 66       		.uleb128 0x66
 6599 2d2c 3D2F0000 		.4byte	0x2f3d
 6600 2d30 C2020000 		.4byte	.LBB214
 6601 2d34 10000000 		.4byte	.LBE214-.LBB214
 6602 2d38 01       		.byte	0x1
 6603 2d39 6A01     		.2byte	0x16a
 6604 2d3b 5B2D0000 		.4byte	0x2d5b
 6605 2d3f 54       		.uleb128 0x54
 6606 2d40 612F0000 		.4byte	0x2f61
 6607 2d44 2F080000 		.4byte	.LLST48
 6608 2d48 54       		.uleb128 0x54
 6609 2d49 552F0000 		.4byte	0x2f55
 6610 2d4d 45080000 		.4byte	.LLST49
 6611 2d51 54       		.uleb128 0x54
 6612 2d52 4A2F0000 		.4byte	0x2f4a
 6613 2d56 58080000 		.4byte	.LLST50
 6614 2d5a 00       		.byte	0
 6615 2d5b 66       		.uleb128 0x66
 6616 2d5c 0E2F0000 		.4byte	0x2f0e
 6617 2d60 CC030000 		.4byte	.LBB216
 6618 2d64 0E000000 		.4byte	.LBE216-.LBB216
 6619 2d68 01       		.byte	0x1
 6620 2d69 7D01     		.2byte	0x17d
 6621 2d6b 8B2D0000 		.4byte	0x2d8b
 6622 2d6f 54       		.uleb128 0x54
 6623 2d70 322F0000 		.4byte	0x2f32
 6624 2d74 6B080000 		.4byte	.LLST51
 6625 2d78 54       		.uleb128 0x54
 6626 2d79 262F0000 		.4byte	0x2f26
 6627 2d7d 81080000 		.4byte	.LLST52
 6628 2d81 54       		.uleb128 0x54
 6629 2d82 1B2F0000 		.4byte	0x2f1b
 6630 2d86 94080000 		.4byte	.LLST53
 6631 2d8a 00       		.byte	0
 6632 2d8b 66       		.uleb128 0x66
 6633 2d8c 0E2F0000 		.4byte	0x2f0e
 6634 2d90 E2030000 		.4byte	.LBB218
ARM GAS  /tmp/ccQR1hla.s 			page 159


 6635 2d94 0E000000 		.4byte	.LBE218-.LBB218
 6636 2d98 01       		.byte	0x1
 6637 2d99 6F01     		.2byte	0x16f
 6638 2d9b BB2D0000 		.4byte	0x2dbb
 6639 2d9f 54       		.uleb128 0x54
 6640 2da0 322F0000 		.4byte	0x2f32
 6641 2da4 A7080000 		.4byte	.LLST54
 6642 2da8 54       		.uleb128 0x54
 6643 2da9 262F0000 		.4byte	0x2f26
 6644 2dad BD080000 		.4byte	.LLST55
 6645 2db1 54       		.uleb128 0x54
 6646 2db2 1B2F0000 		.4byte	0x2f1b
 6647 2db6 D0080000 		.4byte	.LLST56
 6648 2dba 00       		.byte	0
 6649 2dbb 5D       		.uleb128 0x5d
 6650 2dbc 46020000 		.4byte	.LVL55
 6651 2dc0 14320000 		.4byte	0x3214
 6652 2dc4 D52D0000 		.4byte	0x2dd5
 6653 2dc8 59       		.uleb128 0x59
 6654 2dc9 01       		.uleb128 0x1
 6655 2dca 50       		.byte	0x50
 6656 2dcb 02       		.uleb128 0x2
 6657 2dcc 79       		.byte	0x79
 6658 2dcd 00       		.sleb128 0
 6659 2dce 59       		.uleb128 0x59
 6660 2dcf 01       		.uleb128 0x1
 6661 2dd0 51       		.byte	0x51
 6662 2dd1 02       		.uleb128 0x2
 6663 2dd2 7A       		.byte	0x7a
 6664 2dd3 00       		.sleb128 0
 6665 2dd4 00       		.byte	0
 6666 2dd5 5D       		.uleb128 0x5d
 6667 2dd6 70020000 		.4byte	.LVL59
 6668 2dda 1F320000 		.4byte	0x321f
 6669 2dde EF2D0000 		.4byte	0x2def
 6670 2de2 59       		.uleb128 0x59
 6671 2de3 01       		.uleb128 0x1
 6672 2de4 50       		.byte	0x50
 6673 2de5 02       		.uleb128 0x2
 6674 2de6 79       		.byte	0x79
 6675 2de7 00       		.sleb128 0
 6676 2de8 59       		.uleb128 0x59
 6677 2de9 01       		.uleb128 0x1
 6678 2dea 51       		.byte	0x51
 6679 2deb 02       		.uleb128 0x2
 6680 2dec 7A       		.byte	0x7a
 6681 2ded 00       		.sleb128 0
 6682 2dee 00       		.byte	0
 6683 2def 5D       		.uleb128 0x5d
 6684 2df0 8C020000 		.4byte	.LVL61
 6685 2df4 2A320000 		.4byte	0x322a
 6686 2df8 032E0000 		.4byte	0x2e03
 6687 2dfc 59       		.uleb128 0x59
 6688 2dfd 01       		.uleb128 0x1
 6689 2dfe 50       		.byte	0x50
 6690 2dff 02       		.uleb128 0x2
 6691 2e00 78       		.byte	0x78
ARM GAS  /tmp/ccQR1hla.s 			page 160


 6692 2e01 00       		.sleb128 0
 6693 2e02 00       		.byte	0
 6694 2e03 5D       		.uleb128 0x5d
 6695 2e04 94020000 		.4byte	.LVL62
 6696 2e08 39320000 		.4byte	0x3239
 6697 2e0c 1D2E0000 		.4byte	0x2e1d
 6698 2e10 59       		.uleb128 0x59
 6699 2e11 01       		.uleb128 0x1
 6700 2e12 50       		.byte	0x50
 6701 2e13 02       		.uleb128 0x2
 6702 2e14 79       		.byte	0x79
 6703 2e15 00       		.sleb128 0
 6704 2e16 59       		.uleb128 0x59
 6705 2e17 01       		.uleb128 0x1
 6706 2e18 51       		.byte	0x51
 6707 2e19 02       		.uleb128 0x2
 6708 2e1a 7A       		.byte	0x7a
 6709 2e1b 00       		.sleb128 0
 6710 2e1c 00       		.byte	0
 6711 2e1d 5D       		.uleb128 0x5d
 6712 2e1e BE020000 		.4byte	.LVL69
 6713 2e22 1F320000 		.4byte	0x321f
 6714 2e26 3C2E0000 		.4byte	0x2e3c
 6715 2e2a 59       		.uleb128 0x59
 6716 2e2b 01       		.uleb128 0x1
 6717 2e2c 50       		.byte	0x50
 6718 2e2d 02       		.uleb128 0x2
 6719 2e2e 79       		.byte	0x79
 6720 2e2f 00       		.sleb128 0
 6721 2e30 59       		.uleb128 0x59
 6722 2e31 01       		.uleb128 0x1
 6723 2e32 51       		.byte	0x51
 6724 2e33 02       		.uleb128 0x2
 6725 2e34 7A       		.byte	0x7a
 6726 2e35 00       		.sleb128 0
 6727 2e36 59       		.uleb128 0x59
 6728 2e37 01       		.uleb128 0x1
 6729 2e38 52       		.byte	0x52
 6730 2e39 01       		.uleb128 0x1
 6731 2e3a 31       		.byte	0x31
 6732 2e3b 00       		.byte	0
 6733 2e3c 63       		.uleb128 0x63
 6734 2e3d C8030000 		.4byte	.LVL87
 6735 2e41 44320000 		.4byte	0x3244
 6736 2e45 63       		.uleb128 0x63
 6737 2e46 DE030000 		.4byte	.LVL89
 6738 2e4a 44320000 		.4byte	0x3244
 6739 2e4e 00       		.byte	0
 6740 2e4f 00       		.byte	0
 6741 2e50 00       		.byte	0
 6742 2e51 00       		.byte	0
 6743 2e52 67       		.uleb128 0x67
 6744 2e53 04       		.byte	0x4
 6745 2e54 2A230000 		.4byte	0x232a
 6746 2e58 05       		.uleb128 0x5
 6747 2e59 522E0000 		.4byte	0x2e52
 6748 2e5d 68       		.uleb128 0x68
ARM GAS  /tmp/ccQR1hla.s 			page 161


 6749 2e5e F5080000 		.4byte	.LASF637
 6750 2e62 01       		.byte	0x1
 6751 2e63 2A01     		.2byte	0x12a
 6752 2e65 901C0000 		.4byte	0x1c90
 6753 2e69 01       		.byte	0x1
 6754 2e6a DF2E0000 		.4byte	0x2edf
 6755 2e6e 69       		.uleb128 0x69
 6756 2e6f 831A0000 		.4byte	.LASF628
 6757 2e73 01       		.byte	0x1
 6758 2e74 2A01     		.2byte	0x12a
 6759 2e76 582E0000 		.4byte	0x2e58
 6760 2e7a 69       		.uleb128 0x69
 6761 2e7b C00E0000 		.4byte	.LASF625
 6762 2e7f 01       		.byte	0x1
 6763 2e80 2A01     		.2byte	0x12a
 6764 2e82 25000000 		.4byte	0x25
 6765 2e86 69       		.uleb128 0x69
 6766 2e87 A8050000 		.4byte	.LASF626
 6767 2e8b 01       		.byte	0x1
 6768 2e8c 2A01     		.2byte	0x12a
 6769 2e8e B3010000 		.4byte	0x1b3
 6770 2e92 51       		.uleb128 0x51
 6771 2e93 59160000 		.4byte	.LASF629
 6772 2e97 01       		.byte	0x1
 6773 2e98 2E01     		.2byte	0x12e
 6774 2e9a DE010000 		.4byte	0x1de
 6775 2e9e 6A       		.uleb128 0x6a
 6776 2e9f 51       		.uleb128 0x51
 6777 2ea0 B50E0000 		.4byte	.LASF630
 6778 2ea4 01       		.byte	0x1
 6779 2ea5 3601     		.2byte	0x136
 6780 2ea7 CD250000 		.4byte	0x25cd
 6781 2eab 51       		.uleb128 0x51
 6782 2eac 200C0000 		.4byte	.LASF631
 6783 2eb0 01       		.byte	0x1
 6784 2eb1 3701     		.2byte	0x137
 6785 2eb3 DE010000 		.4byte	0x1de
 6786 2eb7 51       		.uleb128 0x51
 6787 2eb8 2F160000 		.4byte	.LASF632
 6788 2ebc 01       		.byte	0x1
 6789 2ebd 3801     		.2byte	0x138
 6790 2ebf 9C1C0000 		.4byte	0x1c9c
 6791 2ec3 51       		.uleb128 0x51
 6792 2ec4 41000000 		.4byte	.LASF633
 6793 2ec8 01       		.byte	0x1
 6794 2ec9 6401     		.2byte	0x164
 6795 2ecb DE010000 		.4byte	0x1de
 6796 2ecf 6A       		.uleb128 0x6a
 6797 2ed0 6B       		.uleb128 0x6b
 6798 2ed1 746F7000 		.ascii	"top\000"
 6799 2ed5 01       		.byte	0x1
 6800 2ed6 4C01     		.2byte	0x14c
 6801 2ed8 DE010000 		.4byte	0x1de
 6802 2edc 00       		.byte	0
 6803 2edd 00       		.byte	0
 6804 2ede 00       		.byte	0
 6805 2edf 6C       		.uleb128 0x6c
ARM GAS  /tmp/ccQR1hla.s 			page 162


 6806 2ee0 99170000 		.4byte	.LASF634
 6807 2ee4 01       		.byte	0x1
 6808 2ee5 2101     		.2byte	0x121
 6809 2ee7 03       		.byte	0x3
 6810 2ee8 0E2F0000 		.4byte	0x2f0e
 6811 2eec 6D       		.uleb128 0x6d
 6812 2eed 746300   		.ascii	"tc\000"
 6813 2ef0 01       		.byte	0x1
 6814 2ef1 2101     		.2byte	0x121
 6815 2ef3 C7250000 		.4byte	0x25c7
 6816 2ef7 69       		.uleb128 0x69
 6817 2ef8 59160000 		.4byte	.LASF629
 6818 2efc 01       		.byte	0x1
 6819 2efd 2101     		.2byte	0x121
 6820 2eff CE010000 		.4byte	0x1ce
 6821 2f03 6D       		.uleb128 0x6d
 6822 2f04 7600     		.ascii	"v\000"
 6823 2f06 01       		.byte	0x1
 6824 2f07 2101     		.2byte	0x121
 6825 2f09 CE010000 		.4byte	0x1ce
 6826 2f0d 00       		.byte	0
 6827 2f0e 6C       		.uleb128 0x6c
 6828 2f0f B6010000 		.4byte	.LASF635
 6829 2f13 01       		.byte	0x1
 6830 2f14 1C01     		.2byte	0x11c
 6831 2f16 03       		.byte	0x3
 6832 2f17 3D2F0000 		.4byte	0x2f3d
 6833 2f1b 6D       		.uleb128 0x6d
 6834 2f1c 746300   		.ascii	"tc\000"
 6835 2f1f 01       		.byte	0x1
 6836 2f20 1C01     		.2byte	0x11c
 6837 2f22 C7250000 		.4byte	0x25c7
 6838 2f26 69       		.uleb128 0x69
 6839 2f27 59160000 		.4byte	.LASF629
 6840 2f2b 01       		.byte	0x1
 6841 2f2c 1C01     		.2byte	0x11c
 6842 2f2e CE010000 		.4byte	0x1ce
 6843 2f32 6D       		.uleb128 0x6d
 6844 2f33 7600     		.ascii	"v\000"
 6845 2f35 01       		.byte	0x1
 6846 2f36 1C01     		.2byte	0x11c
 6847 2f38 CE010000 		.4byte	0x1ce
 6848 2f3c 00       		.byte	0
 6849 2f3d 6C       		.uleb128 0x6c
 6850 2f3e 2E070000 		.4byte	.LASF636
 6851 2f42 01       		.byte	0x1
 6852 2f43 1701     		.2byte	0x117
 6853 2f45 03       		.byte	0x3
 6854 2f46 6C2F0000 		.4byte	0x2f6c
 6855 2f4a 6D       		.uleb128 0x6d
 6856 2f4b 746300   		.ascii	"tc\000"
 6857 2f4e 01       		.byte	0x1
 6858 2f4f 1701     		.2byte	0x117
 6859 2f51 C7250000 		.4byte	0x25c7
 6860 2f55 69       		.uleb128 0x69
 6861 2f56 59160000 		.4byte	.LASF629
 6862 2f5a 01       		.byte	0x1
ARM GAS  /tmp/ccQR1hla.s 			page 163


 6863 2f5b 1701     		.2byte	0x117
 6864 2f5d CE010000 		.4byte	0x1ce
 6865 2f61 6D       		.uleb128 0x6d
 6866 2f62 7600     		.ascii	"v\000"
 6867 2f64 01       		.byte	0x1
 6868 2f65 1701     		.2byte	0x117
 6869 2f67 CE010000 		.4byte	0x1ce
 6870 2f6b 00       		.byte	0
 6871 2f6c 6E       		.uleb128 0x6e
 6872 2f6d 73160000 		.4byte	.LASF638
 6873 2f71 01       		.byte	0x1
 6874 2f72 73       		.byte	0x73
 6875 2f73 901C0000 		.4byte	0x1c90
 6876 2f77 01       		.byte	0x1
 6877 2f78 34300000 		.4byte	0x3034
 6878 2f7c 4D       		.uleb128 0x4d
 6879 2f7d 831A0000 		.4byte	.LASF628
 6880 2f81 01       		.byte	0x1
 6881 2f82 73       		.byte	0x73
 6882 2f83 582E0000 		.4byte	0x2e58
 6883 2f87 4D       		.uleb128 0x4d
 6884 2f88 C00E0000 		.4byte	.LASF625
 6885 2f8c 01       		.byte	0x1
 6886 2f8d 73       		.byte	0x73
 6887 2f8e 25000000 		.4byte	0x25
 6888 2f92 4D       		.uleb128 0x4d
 6889 2f93 A8050000 		.4byte	.LASF626
 6890 2f97 01       		.byte	0x1
 6891 2f98 73       		.byte	0x73
 6892 2f99 B3010000 		.4byte	0x1b3
 6893 2f9d 6F       		.uleb128 0x6f
 6894 2f9e 59160000 		.4byte	.LASF629
 6895 2fa2 01       		.byte	0x1
 6896 2fa3 77       		.byte	0x77
 6897 2fa4 DE010000 		.4byte	0x1de
 6898 2fa8 6F       		.uleb128 0x6f
 6899 2fa9 6C000000 		.4byte	.LASF639
 6900 2fad 01       		.byte	0x1
 6901 2fae 80       		.byte	0x80
 6902 2faf 34300000 		.4byte	0x3034
 6903 2fb3 70       		.uleb128 0x70
 6904 2fb4 26300000 		.4byte	0x3026
 6905 2fb8 6F       		.uleb128 0x6f
 6906 2fb9 6B010000 		.4byte	.LASF640
 6907 2fbd 01       		.byte	0x1
 6908 2fbe A2       		.byte	0xa2
 6909 2fbf 9C1C0000 		.4byte	0x1c9c
 6910 2fc3 6F       		.uleb128 0x6f
 6911 2fc4 341C0000 		.4byte	.LASF641
 6912 2fc8 01       		.byte	0x1
 6913 2fc9 A3       		.byte	0xa3
 6914 2fca DE010000 		.4byte	0x1de
 6915 2fce 6F       		.uleb128 0x6f
 6916 2fcf 78170000 		.4byte	.LASF642
 6917 2fd3 01       		.byte	0x1
 6918 2fd4 A4       		.byte	0xa4
 6919 2fd5 DE010000 		.4byte	0x1de
ARM GAS  /tmp/ccQR1hla.s 			page 164


 6920 2fd9 6F       		.uleb128 0x6f
 6921 2fda 81100000 		.4byte	.LASF643
 6922 2fde 01       		.byte	0x1
 6923 2fdf C7       		.byte	0xc7
 6924 2fe0 C1200000 		.4byte	0x20c1
 6925 2fe4 70       		.uleb128 0x70
 6926 2fe5 F52F0000 		.4byte	0x2ff5
 6927 2fe9 6F       		.uleb128 0x6f
 6928 2fea 4A110000 		.4byte	.LASF644
 6929 2fee 01       		.byte	0x1
 6930 2fef 8D       		.byte	0x8d
 6931 2ff0 051E0000 		.4byte	0x1e05
 6932 2ff4 00       		.byte	0
 6933 2ff5 6A       		.uleb128 0x6a
 6934 2ff6 71       		.uleb128 0x71
 6935 2ff7 6A00     		.ascii	"j\000"
 6936 2ff9 01       		.byte	0x1
 6937 2ffa AD       		.byte	0xad
 6938 2ffb 2C000000 		.4byte	0x2c
 6939 2fff 6A       		.uleb128 0x6a
 6940 3000 6F       		.uleb128 0x6f
 6941 3001 E61A0000 		.4byte	.LASF645
 6942 3005 01       		.byte	0x1
 6943 3006 B4       		.byte	0xb4
 6944 3007 CE010000 		.4byte	0x1ce
 6945 300b 6A       		.uleb128 0x6a
 6946 300c 71       		.uleb128 0x71
 6947 300d 6900     		.ascii	"i\000"
 6948 300f 01       		.byte	0x1
 6949 3010 BD       		.byte	0xbd
 6950 3011 2C000000 		.4byte	0x2c
 6951 3015 6A       		.uleb128 0x6a
 6952 3016 6F       		.uleb128 0x6f
 6953 3017 33020000 		.4byte	.LASF646
 6954 301b 01       		.byte	0x1
 6955 301c BF       		.byte	0xbf
 6956 301d DE010000 		.4byte	0x1de
 6957 3021 00       		.byte	0
 6958 3022 00       		.byte	0
 6959 3023 00       		.byte	0
 6960 3024 00       		.byte	0
 6961 3025 00       		.byte	0
 6962 3026 6A       		.uleb128 0x6a
 6963 3027 6F       		.uleb128 0x6f
 6964 3028 81100000 		.4byte	.LASF643
 6965 302c 01       		.byte	0x1
 6966 302d DA       		.byte	0xda
 6967 302e C1200000 		.4byte	0x20c1
 6968 3032 00       		.byte	0
 6969 3033 00       		.byte	0
 6970 3034 1A       		.uleb128 0x1a
 6971 3035 04       		.byte	0x4
 6972 3036 420C0000 		.4byte	0xc42
 6973 303a 6E       		.uleb128 0x6e
 6974 303b 6D1A0000 		.4byte	.LASF647
 6975 303f 01       		.byte	0x1
 6976 3040 2A       		.byte	0x2a
ARM GAS  /tmp/ccQR1hla.s 			page 165


 6977 3041 901C0000 		.4byte	0x1c90
 6978 3045 01       		.byte	0x1
 6979 3046 77300000 		.4byte	0x3077
 6980 304a 4D       		.uleb128 0x4d
 6981 304b 831A0000 		.4byte	.LASF628
 6982 304f 01       		.byte	0x1
 6983 3050 2A       		.byte	0x2a
 6984 3051 582E0000 		.4byte	0x2e58
 6985 3055 4D       		.uleb128 0x4d
 6986 3056 C00E0000 		.4byte	.LASF625
 6987 305a 01       		.byte	0x1
 6988 305b 2A       		.byte	0x2a
 6989 305c 25000000 		.4byte	0x25
 6990 3060 6F       		.uleb128 0x6f
 6991 3061 ED0B0000 		.4byte	.LASF470
 6992 3065 01       		.byte	0x1
 6993 3066 2E       		.byte	0x2e
 6994 3067 AC220000 		.4byte	0x22ac
 6995 306b 6F       		.uleb128 0x6f
 6996 306c F5020000 		.4byte	.LASF648
 6997 3070 01       		.byte	0x1
 6998 3071 2F       		.byte	0x2f
 6999 3072 DE010000 		.4byte	0x1de
 7000 3076 00       		.byte	0
 7001 3077 6E       		.uleb128 0x6e
 7002 3078 1A0F0000 		.4byte	.LASF649
 7003 307c 01       		.byte	0x1
 7004 307d 21       		.byte	0x21
 7005 307e CE010000 		.4byte	0x1ce
 7006 3082 03       		.byte	0x3
 7007 3083 9C300000 		.4byte	0x309c
 7008 3087 4C       		.uleb128 0x4c
 7009 3088 6600     		.ascii	"f\000"
 7010 308a 01       		.byte	0x1
 7011 308b 21       		.byte	0x21
 7012 308c 25000000 		.4byte	0x25
 7013 3090 4C       		.uleb128 0x4c
 7014 3091 746F7000 		.ascii	"top\000"
 7015 3095 01       		.byte	0x1
 7016 3096 21       		.byte	0x21
 7017 3097 CE010000 		.4byte	0x1ce
 7018 309b 00       		.byte	0
 7019 309c 72       		.uleb128 0x72
 7020 309d 00110000 		.4byte	.LASF688
 7021 30a1 01       		.byte	0x1
 7022 30a2 1B       		.byte	0x1b
 7023 30a3 C3110000 		.4byte	.LASF689
 7024 30a7 00000000 		.4byte	.LFB525
 7025 30ab 02000000 		.4byte	.LFE525-.LFB525
 7026 30af 01       		.uleb128 0x1
 7027 30b0 9C       		.byte	0x9c
 7028 30b1 4A       		.uleb128 0x4a
 7029 30b2 07140000 		.4byte	.LASF650
 7030 30b6 02       		.byte	0x2
 7031 30b7 45       		.byte	0x45
 7032 30b8 9D190000 		.4byte	.LASF651
 7033 30bc 25000000 		.4byte	0x25
ARM GAS  /tmp/ccQR1hla.s 			page 166


 7034 30c0 03       		.byte	0x3
 7035 30c1 DA300000 		.4byte	0x30da
 7036 30c5 4C       		.uleb128 0x4c
 7037 30c6 5F6100   		.ascii	"_a\000"
 7038 30c9 02       		.byte	0x2
 7039 30ca 45       		.byte	0x45
 7040 30cb 25000000 		.4byte	0x25
 7041 30cf 4C       		.uleb128 0x4c
 7042 30d0 5F6200   		.ascii	"_b\000"
 7043 30d3 02       		.byte	0x2
 7044 30d4 45       		.byte	0x45
 7045 30d5 25000000 		.4byte	0x25
 7046 30d9 00       		.byte	0
 7047 30da 4A       		.uleb128 0x4a
 7048 30db 811E0000 		.4byte	.LASF652
 7049 30df 02       		.byte	0x2
 7050 30e0 40       		.byte	0x40
 7051 30e1 7F110000 		.4byte	.LASF653
 7052 30e5 25000000 		.4byte	0x25
 7053 30e9 03       		.byte	0x3
 7054 30ea 03310000 		.4byte	0x3103
 7055 30ee 4C       		.uleb128 0x4c
 7056 30ef 5F6100   		.ascii	"_a\000"
 7057 30f2 02       		.byte	0x2
 7058 30f3 40       		.byte	0x40
 7059 30f4 25000000 		.4byte	0x25
 7060 30f8 4C       		.uleb128 0x4c
 7061 30f9 5F6200   		.ascii	"_b\000"
 7062 30fc 02       		.byte	0x2
 7063 30fd 40       		.byte	0x40
 7064 30fe 25000000 		.4byte	0x25
 7065 3102 00       		.byte	0
 7066 3103 73       		.uleb128 0x73
 7067 3104 8D1C0000 		.4byte	.LASF654
 7068 3108 03       		.byte	0x3
 7069 3109 39       		.byte	0x39
 7070 310a 03       		.byte	0x3
 7071 310b 26310000 		.4byte	0x3126
 7072 310f 4C       		.uleb128 0x4c
 7073 3110 70696E00 		.ascii	"pin\000"
 7074 3114 03       		.byte	0x3
 7075 3115 39       		.byte	0x39
 7076 3116 CD200000 		.4byte	0x20cd
 7077 311a 4D       		.uleb128 0x4d
 7078 311b 10040000 		.4byte	.LASF655
 7079 311f 03       		.byte	0x3
 7080 3120 39       		.byte	0x39
 7081 3121 B1240000 		.4byte	0x24b1
 7082 3125 00       		.byte	0
 7083 3126 74       		.uleb128 0x74
 7084 3127 C0170000 		.4byte	0x17c0
 7085 312b 03       		.byte	0x3
 7086 312c 3D310000 		.4byte	0x313d
 7087 3130 6D       		.uleb128 0x6d
 7088 3131 5F5F7800 		.ascii	"__x\000"
 7089 3135 04       		.byte	0x4
 7090 3136 7A06     		.2byte	0x67a
ARM GAS  /tmp/ccQR1hla.s 			page 167


 7091 3138 25000000 		.4byte	0x25
 7092 313c 00       		.byte	0
 7093 313d 74       		.uleb128 0x74
 7094 313e DA170000 		.4byte	0x17da
 7095 3142 03       		.byte	0x3
 7096 3143 54310000 		.4byte	0x3154
 7097 3147 6D       		.uleb128 0x6d
 7098 3148 5F5F7800 		.ascii	"__x\000"
 7099 314c 04       		.byte	0x4
 7100 314d 8102     		.2byte	0x281
 7101 314f 25000000 		.4byte	0x25
 7102 3153 00       		.byte	0
 7103 3154 75       		.uleb128 0x75
 7104 3155 D61B0000 		.4byte	.LASF656
 7105 3159 D61B0000 		.4byte	.LASF656
 7106 315d 03       		.byte	0x3
 7107 315e 37       		.byte	0x37
 7108 315f 76       		.uleb128 0x76
 7109 3160 6F090000 		.4byte	.LASF690
 7110 3164 11050000 		.4byte	.LASF691
 7111 3168 6F090000 		.4byte	.LASF690
 7112 316c 75       		.uleb128 0x75
 7113 316d C01D0000 		.4byte	.LASF657
 7114 3171 C01D0000 		.4byte	.LASF657
 7115 3175 24       		.byte	0x24
 7116 3176 89       		.byte	0x89
 7117 3177 75       		.uleb128 0x75
 7118 3178 8F140000 		.4byte	.LASF658
 7119 317c 8F140000 		.4byte	.LASF658
 7120 3180 24       		.byte	0x24
 7121 3181 87       		.byte	0x87
 7122 3182 75       		.uleb128 0x75
 7123 3183 80090000 		.4byte	.LASF659
 7124 3187 80090000 		.4byte	.LASF659
 7125 318b 24       		.byte	0x24
 7126 318c 5E       		.byte	0x5e
 7127 318d 75       		.uleb128 0x75
 7128 318e E5090000 		.4byte	.LASF660
 7129 3192 E5090000 		.4byte	.LASF660
 7130 3196 25       		.byte	0x25
 7131 3197 DB       		.byte	0xdb
 7132 3198 75       		.uleb128 0x75
 7133 3199 3E140000 		.4byte	.LASF661
 7134 319d 3E140000 		.4byte	.LASF661
 7135 31a1 24       		.byte	0x24
 7136 31a2 4D       		.byte	0x4d
 7137 31a3 75       		.uleb128 0x75
 7138 31a4 F2150000 		.4byte	.LASF662
 7139 31a8 F2150000 		.4byte	.LASF662
 7140 31ac 24       		.byte	0x24
 7141 31ad 58       		.byte	0x58
 7142 31ae 77       		.uleb128 0x77
 7143 31af 1B110000 		.4byte	.LASF663
 7144 31b3 1B110000 		.4byte	.LASF663
 7145 31b7 1C       		.byte	0x1c
 7146 31b8 5C01     		.2byte	0x15c
 7147 31ba 77       		.uleb128 0x77
ARM GAS  /tmp/ccQR1hla.s 			page 168


 7148 31bb CF1C0000 		.4byte	.LASF664
 7149 31bf CF1C0000 		.4byte	.LASF664
 7150 31c3 1C       		.byte	0x1c
 7151 31c4 6401     		.2byte	0x164
 7152 31c6 77       		.uleb128 0x77
 7153 31c7 F30E0000 		.4byte	.LASF665
 7154 31cb F30E0000 		.4byte	.LASF665
 7155 31cf 1C       		.byte	0x1c
 7156 31d0 6301     		.2byte	0x163
 7157 31d2 78       		.uleb128 0x78
 7158 31d3 05100000 		.4byte	.LASF692
 7159 31d7 05100000 		.4byte	.LASF692
 7160 31db 77       		.uleb128 0x77
 7161 31dc DC100000 		.4byte	.LASF666
 7162 31e0 DC100000 		.4byte	.LASF666
 7163 31e4 1C       		.byte	0x1c
 7164 31e5 5D01     		.2byte	0x15d
 7165 31e7 75       		.uleb128 0x75
 7166 31e8 24110000 		.4byte	.LASF667
 7167 31ec 24110000 		.4byte	.LASF667
 7168 31f0 1B       		.byte	0x1b
 7169 31f1 96       		.byte	0x96
 7170 31f2 77       		.uleb128 0x77
 7171 31f3 7A0B0000 		.4byte	.LASF668
 7172 31f7 7A0B0000 		.4byte	.LASF668
 7173 31fb 1C       		.byte	0x1c
 7174 31fc 6001     		.2byte	0x160
 7175 31fe 75       		.uleb128 0x75
 7176 31ff B5170000 		.4byte	.LASF669
 7177 3203 B5170000 		.4byte	.LASF669
 7178 3207 26       		.byte	0x26
 7179 3208 92       		.byte	0x92
 7180 3209 75       		.uleb128 0x75
 7181 320a 63150000 		.4byte	.LASF670
 7182 320e 63150000 		.4byte	.LASF670
 7183 3212 26       		.byte	0x26
 7184 3213 A7       		.byte	0xa7
 7185 3214 75       		.uleb128 0x75
 7186 3215 12090000 		.4byte	.LASF671
 7187 3219 12090000 		.4byte	.LASF671
 7188 321d 26       		.byte	0x26
 7189 321e A1       		.byte	0xa1
 7190 321f 75       		.uleb128 0x75
 7191 3220 4B150000 		.4byte	.LASF672
 7192 3224 4B150000 		.4byte	.LASF672
 7193 3228 26       		.byte	0x26
 7194 3229 A3       		.byte	0xa3
 7195 322a 79       		.uleb128 0x79
 7196 322b A51A0000 		.4byte	.LASF693
 7197 322f 7E080000 		.4byte	.LASF694
 7198 3233 22       		.byte	0x22
 7199 3234 83       		.byte	0x83
 7200 3235 A51A0000 		.4byte	.LASF693
 7201 3239 75       		.uleb128 0x75
 7202 323a DD1A0000 		.4byte	.LASF673
 7203 323e DD1A0000 		.4byte	.LASF673
 7204 3242 26       		.byte	0x26
ARM GAS  /tmp/ccQR1hla.s 			page 169


 7205 3243 9B       		.byte	0x9b
 7206 3244 75       		.uleb128 0x75
 7207 3245 57150000 		.4byte	.LASF674
 7208 3249 57150000 		.4byte	.LASF674
 7209 324d 26       		.byte	0x26
 7210 324e A5       		.byte	0xa5
 7211 324f 00       		.byte	0
 7212              		.section	.debug_abbrev,"",%progbits
 7213              	.Ldebug_abbrev0:
 7214 0000 01       		.uleb128 0x1
 7215 0001 11       		.uleb128 0x11
 7216 0002 01       		.byte	0x1
 7217 0003 25       		.uleb128 0x25
 7218 0004 0E       		.uleb128 0xe
 7219 0005 13       		.uleb128 0x13
 7220 0006 0B       		.uleb128 0xb
 7221 0007 03       		.uleb128 0x3
 7222 0008 0E       		.uleb128 0xe
 7223 0009 1B       		.uleb128 0x1b
 7224 000a 0E       		.uleb128 0xe
 7225 000b 55       		.uleb128 0x55
 7226 000c 17       		.uleb128 0x17
 7227 000d 11       		.uleb128 0x11
 7228 000e 01       		.uleb128 0x1
 7229 000f 10       		.uleb128 0x10
 7230 0010 17       		.uleb128 0x17
 7231 0011 00       		.byte	0
 7232 0012 00       		.byte	0
 7233 0013 02       		.uleb128 0x2
 7234 0014 24       		.uleb128 0x24
 7235 0015 00       		.byte	0
 7236 0016 0B       		.uleb128 0xb
 7237 0017 0B       		.uleb128 0xb
 7238 0018 3E       		.uleb128 0x3e
 7239 0019 0B       		.uleb128 0xb
 7240 001a 03       		.uleb128 0x3
 7241 001b 0E       		.uleb128 0xe
 7242 001c 00       		.byte	0
 7243 001d 00       		.byte	0
 7244 001e 03       		.uleb128 0x3
 7245 001f 24       		.uleb128 0x24
 7246 0020 00       		.byte	0
 7247 0021 0B       		.uleb128 0xb
 7248 0022 0B       		.uleb128 0xb
 7249 0023 3E       		.uleb128 0x3e
 7250 0024 0B       		.uleb128 0xb
 7251 0025 03       		.uleb128 0x3
 7252 0026 08       		.uleb128 0x8
 7253 0027 00       		.byte	0
 7254 0028 00       		.byte	0
 7255 0029 04       		.uleb128 0x4
 7256 002a 16       		.uleb128 0x16
 7257 002b 00       		.byte	0
 7258 002c 03       		.uleb128 0x3
 7259 002d 0E       		.uleb128 0xe
 7260 002e 3A       		.uleb128 0x3a
 7261 002f 0B       		.uleb128 0xb
ARM GAS  /tmp/ccQR1hla.s 			page 170


 7262 0030 3B       		.uleb128 0x3b
 7263 0031 0B       		.uleb128 0xb
 7264 0032 49       		.uleb128 0x49
 7265 0033 13       		.uleb128 0x13
 7266 0034 00       		.byte	0
 7267 0035 00       		.byte	0
 7268 0036 05       		.uleb128 0x5
 7269 0037 26       		.uleb128 0x26
 7270 0038 00       		.byte	0
 7271 0039 49       		.uleb128 0x49
 7272 003a 13       		.uleb128 0x13
 7273 003b 00       		.byte	0
 7274 003c 00       		.byte	0
 7275 003d 06       		.uleb128 0x6
 7276 003e 13       		.uleb128 0x13
 7277 003f 01       		.byte	0x1
 7278 0040 0B       		.uleb128 0xb
 7279 0041 0B       		.uleb128 0xb
 7280 0042 3A       		.uleb128 0x3a
 7281 0043 0B       		.uleb128 0xb
 7282 0044 3B       		.uleb128 0x3b
 7283 0045 05       		.uleb128 0x5
 7284 0046 6E       		.uleb128 0x6e
 7285 0047 0E       		.uleb128 0xe
 7286 0048 01       		.uleb128 0x1
 7287 0049 13       		.uleb128 0x13
 7288 004a 00       		.byte	0
 7289 004b 00       		.byte	0
 7290 004c 07       		.uleb128 0x7
 7291 004d 0D       		.uleb128 0xd
 7292 004e 00       		.byte	0
 7293 004f 03       		.uleb128 0x3
 7294 0050 0E       		.uleb128 0xe
 7295 0051 3A       		.uleb128 0x3a
 7296 0052 0B       		.uleb128 0xb
 7297 0053 3B       		.uleb128 0x3b
 7298 0054 05       		.uleb128 0x5
 7299 0055 49       		.uleb128 0x49
 7300 0056 13       		.uleb128 0x13
 7301 0057 38       		.uleb128 0x38
 7302 0058 0B       		.uleb128 0xb
 7303 0059 00       		.byte	0
 7304 005a 00       		.byte	0
 7305 005b 08       		.uleb128 0x8
 7306 005c 16       		.uleb128 0x16
 7307 005d 00       		.byte	0
 7308 005e 03       		.uleb128 0x3
 7309 005f 0E       		.uleb128 0xe
 7310 0060 3A       		.uleb128 0x3a
 7311 0061 0B       		.uleb128 0xb
 7312 0062 3B       		.uleb128 0x3b
 7313 0063 05       		.uleb128 0x5
 7314 0064 49       		.uleb128 0x49
 7315 0065 13       		.uleb128 0x13
 7316 0066 00       		.byte	0
 7317 0067 00       		.byte	0
 7318 0068 09       		.uleb128 0x9
ARM GAS  /tmp/ccQR1hla.s 			page 171


 7319 0069 3B       		.uleb128 0x3b
 7320 006a 00       		.byte	0
 7321 006b 03       		.uleb128 0x3
 7322 006c 0E       		.uleb128 0xe
 7323 006d 00       		.byte	0
 7324 006e 00       		.byte	0
 7325 006f 0A       		.uleb128 0xa
 7326 0070 35       		.uleb128 0x35
 7327 0071 00       		.byte	0
 7328 0072 49       		.uleb128 0x49
 7329 0073 13       		.uleb128 0x13
 7330 0074 00       		.byte	0
 7331 0075 00       		.byte	0
 7332 0076 0B       		.uleb128 0xb
 7333 0077 0F       		.uleb128 0xf
 7334 0078 00       		.byte	0
 7335 0079 0B       		.uleb128 0xb
 7336 007a 0B       		.uleb128 0xb
 7337 007b 00       		.byte	0
 7338 007c 00       		.byte	0
 7339 007d 0C       		.uleb128 0xc
 7340 007e 01       		.uleb128 0x1
 7341 007f 01       		.byte	0x1
 7342 0080 49       		.uleb128 0x49
 7343 0081 13       		.uleb128 0x13
 7344 0082 01       		.uleb128 0x1
 7345 0083 13       		.uleb128 0x13
 7346 0084 00       		.byte	0
 7347 0085 00       		.byte	0
 7348 0086 0D       		.uleb128 0xd
 7349 0087 21       		.uleb128 0x21
 7350 0088 00       		.byte	0
 7351 0089 49       		.uleb128 0x49
 7352 008a 13       		.uleb128 0x13
 7353 008b 2F       		.uleb128 0x2f
 7354 008c 0B       		.uleb128 0xb
 7355 008d 00       		.byte	0
 7356 008e 00       		.byte	0
 7357 008f 0E       		.uleb128 0xe
 7358 0090 34       		.uleb128 0x34
 7359 0091 00       		.byte	0
 7360 0092 03       		.uleb128 0x3
 7361 0093 0E       		.uleb128 0xe
 7362 0094 3A       		.uleb128 0x3a
 7363 0095 0B       		.uleb128 0xb
 7364 0096 3B       		.uleb128 0x3b
 7365 0097 05       		.uleb128 0x5
 7366 0098 49       		.uleb128 0x49
 7367 0099 13       		.uleb128 0x13
 7368 009a 3F       		.uleb128 0x3f
 7369 009b 19       		.uleb128 0x19
 7370 009c 3C       		.uleb128 0x3c
 7371 009d 19       		.uleb128 0x19
 7372 009e 00       		.byte	0
 7373 009f 00       		.byte	0
 7374 00a0 0F       		.uleb128 0xf
 7375 00a1 34       		.uleb128 0x34
ARM GAS  /tmp/ccQR1hla.s 			page 172


 7376 00a2 00       		.byte	0
 7377 00a3 03       		.uleb128 0x3
 7378 00a4 0E       		.uleb128 0xe
 7379 00a5 3A       		.uleb128 0x3a
 7380 00a6 0B       		.uleb128 0xb
 7381 00a7 3B       		.uleb128 0x3b
 7382 00a8 0B       		.uleb128 0xb
 7383 00a9 49       		.uleb128 0x49
 7384 00aa 13       		.uleb128 0x13
 7385 00ab 3F       		.uleb128 0x3f
 7386 00ac 19       		.uleb128 0x19
 7387 00ad 3C       		.uleb128 0x3c
 7388 00ae 19       		.uleb128 0x19
 7389 00af 00       		.byte	0
 7390 00b0 00       		.byte	0
 7391 00b1 10       		.uleb128 0x10
 7392 00b2 13       		.uleb128 0x13
 7393 00b3 01       		.byte	0x1
 7394 00b4 0B       		.uleb128 0xb
 7395 00b5 0B       		.uleb128 0xb
 7396 00b6 3A       		.uleb128 0x3a
 7397 00b7 0B       		.uleb128 0xb
 7398 00b8 3B       		.uleb128 0x3b
 7399 00b9 0B       		.uleb128 0xb
 7400 00ba 6E       		.uleb128 0x6e
 7401 00bb 0E       		.uleb128 0xe
 7402 00bc 01       		.uleb128 0x1
 7403 00bd 13       		.uleb128 0x13
 7404 00be 00       		.byte	0
 7405 00bf 00       		.byte	0
 7406 00c0 11       		.uleb128 0x11
 7407 00c1 0D       		.uleb128 0xd
 7408 00c2 00       		.byte	0
 7409 00c3 03       		.uleb128 0x3
 7410 00c4 0E       		.uleb128 0xe
 7411 00c5 3A       		.uleb128 0x3a
 7412 00c6 0B       		.uleb128 0xb
 7413 00c7 3B       		.uleb128 0x3b
 7414 00c8 0B       		.uleb128 0xb
 7415 00c9 49       		.uleb128 0x49
 7416 00ca 13       		.uleb128 0x13
 7417 00cb 38       		.uleb128 0x38
 7418 00cc 0B       		.uleb128 0xb
 7419 00cd 00       		.byte	0
 7420 00ce 00       		.byte	0
 7421 00cf 12       		.uleb128 0x12
 7422 00d0 13       		.uleb128 0x13
 7423 00d1 01       		.byte	0x1
 7424 00d2 0B       		.uleb128 0xb
 7425 00d3 05       		.uleb128 0x5
 7426 00d4 3A       		.uleb128 0x3a
 7427 00d5 0B       		.uleb128 0xb
 7428 00d6 3B       		.uleb128 0x3b
 7429 00d7 0B       		.uleb128 0xb
 7430 00d8 6E       		.uleb128 0x6e
 7431 00d9 0E       		.uleb128 0xe
 7432 00da 01       		.uleb128 0x1
ARM GAS  /tmp/ccQR1hla.s 			page 173


 7433 00db 13       		.uleb128 0x13
 7434 00dc 00       		.byte	0
 7435 00dd 00       		.byte	0
 7436 00de 13       		.uleb128 0x13
 7437 00df 0D       		.uleb128 0xd
 7438 00e0 00       		.byte	0
 7439 00e1 03       		.uleb128 0x3
 7440 00e2 0E       		.uleb128 0xe
 7441 00e3 3A       		.uleb128 0x3a
 7442 00e4 0B       		.uleb128 0xb
 7443 00e5 3B       		.uleb128 0x3b
 7444 00e6 0B       		.uleb128 0xb
 7445 00e7 49       		.uleb128 0x49
 7446 00e8 13       		.uleb128 0x13
 7447 00e9 38       		.uleb128 0x38
 7448 00ea 05       		.uleb128 0x5
 7449 00eb 00       		.byte	0
 7450 00ec 00       		.byte	0
 7451 00ed 14       		.uleb128 0x14
 7452 00ee 16       		.uleb128 0x16
 7453 00ef 00       		.byte	0
 7454 00f0 03       		.uleb128 0x3
 7455 00f1 08       		.uleb128 0x8
 7456 00f2 3A       		.uleb128 0x3a
 7457 00f3 0B       		.uleb128 0xb
 7458 00f4 3B       		.uleb128 0x3b
 7459 00f5 0B       		.uleb128 0xb
 7460 00f6 49       		.uleb128 0x49
 7461 00f7 13       		.uleb128 0x13
 7462 00f8 00       		.byte	0
 7463 00f9 00       		.byte	0
 7464 00fa 15       		.uleb128 0x15
 7465 00fb 13       		.uleb128 0x13
 7466 00fc 01       		.byte	0x1
 7467 00fd 0B       		.uleb128 0xb
 7468 00fe 0B       		.uleb128 0xb
 7469 00ff 3A       		.uleb128 0x3a
 7470 0100 0B       		.uleb128 0xb
 7471 0101 3B       		.uleb128 0x3b
 7472 0102 0B       		.uleb128 0xb
 7473 0103 6E       		.uleb128 0x6e
 7474 0104 08       		.uleb128 0x8
 7475 0105 01       		.uleb128 0x1
 7476 0106 13       		.uleb128 0x13
 7477 0107 00       		.byte	0
 7478 0108 00       		.byte	0
 7479 0109 16       		.uleb128 0x16
 7480 010a 17       		.uleb128 0x17
 7481 010b 01       		.byte	0x1
 7482 010c 0B       		.uleb128 0xb
 7483 010d 0B       		.uleb128 0xb
 7484 010e 3A       		.uleb128 0x3a
 7485 010f 0B       		.uleb128 0xb
 7486 0110 3B       		.uleb128 0x3b
 7487 0111 0B       		.uleb128 0xb
 7488 0112 01       		.uleb128 0x1
 7489 0113 13       		.uleb128 0x13
ARM GAS  /tmp/ccQR1hla.s 			page 174


 7490 0114 00       		.byte	0
 7491 0115 00       		.byte	0
 7492 0116 17       		.uleb128 0x17
 7493 0117 0D       		.uleb128 0xd
 7494 0118 00       		.byte	0
 7495 0119 03       		.uleb128 0x3
 7496 011a 0E       		.uleb128 0xe
 7497 011b 3A       		.uleb128 0x3a
 7498 011c 0B       		.uleb128 0xb
 7499 011d 3B       		.uleb128 0x3b
 7500 011e 0B       		.uleb128 0xb
 7501 011f 49       		.uleb128 0x49
 7502 0120 13       		.uleb128 0x13
 7503 0121 00       		.byte	0
 7504 0122 00       		.byte	0
 7505 0123 18       		.uleb128 0x18
 7506 0124 13       		.uleb128 0x13
 7507 0125 01       		.byte	0x1
 7508 0126 03       		.uleb128 0x3
 7509 0127 0E       		.uleb128 0xe
 7510 0128 0B       		.uleb128 0xb
 7511 0129 0B       		.uleb128 0xb
 7512 012a 3A       		.uleb128 0x3a
 7513 012b 0B       		.uleb128 0xb
 7514 012c 3B       		.uleb128 0x3b
 7515 012d 0B       		.uleb128 0xb
 7516 012e 01       		.uleb128 0x1
 7517 012f 13       		.uleb128 0x13
 7518 0130 00       		.byte	0
 7519 0131 00       		.byte	0
 7520 0132 19       		.uleb128 0x19
 7521 0133 0D       		.uleb128 0xd
 7522 0134 00       		.byte	0
 7523 0135 03       		.uleb128 0x3
 7524 0136 08       		.uleb128 0x8
 7525 0137 3A       		.uleb128 0x3a
 7526 0138 0B       		.uleb128 0xb
 7527 0139 3B       		.uleb128 0x3b
 7528 013a 0B       		.uleb128 0xb
 7529 013b 49       		.uleb128 0x49
 7530 013c 13       		.uleb128 0x13
 7531 013d 38       		.uleb128 0x38
 7532 013e 0B       		.uleb128 0xb
 7533 013f 00       		.byte	0
 7534 0140 00       		.byte	0
 7535 0141 1A       		.uleb128 0x1a
 7536 0142 0F       		.uleb128 0xf
 7537 0143 00       		.byte	0
 7538 0144 0B       		.uleb128 0xb
 7539 0145 0B       		.uleb128 0xb
 7540 0146 49       		.uleb128 0x49
 7541 0147 13       		.uleb128 0x13
 7542 0148 00       		.byte	0
 7543 0149 00       		.byte	0
 7544 014a 1B       		.uleb128 0x1b
 7545 014b 13       		.uleb128 0x13
 7546 014c 01       		.byte	0x1
ARM GAS  /tmp/ccQR1hla.s 			page 175


 7547 014d 03       		.uleb128 0x3
 7548 014e 0E       		.uleb128 0xe
 7549 014f 0B       		.uleb128 0xb
 7550 0150 05       		.uleb128 0x5
 7551 0151 3A       		.uleb128 0x3a
 7552 0152 0B       		.uleb128 0xb
 7553 0153 3B       		.uleb128 0x3b
 7554 0154 0B       		.uleb128 0xb
 7555 0155 01       		.uleb128 0x1
 7556 0156 13       		.uleb128 0x13
 7557 0157 00       		.byte	0
 7558 0158 00       		.byte	0
 7559 0159 1C       		.uleb128 0x1c
 7560 015a 15       		.uleb128 0x15
 7561 015b 00       		.byte	0
 7562 015c 00       		.byte	0
 7563 015d 00       		.byte	0
 7564 015e 1D       		.uleb128 0x1d
 7565 015f 15       		.uleb128 0x15
 7566 0160 01       		.byte	0x1
 7567 0161 49       		.uleb128 0x49
 7568 0162 13       		.uleb128 0x13
 7569 0163 01       		.uleb128 0x1
 7570 0164 13       		.uleb128 0x13
 7571 0165 00       		.byte	0
 7572 0166 00       		.byte	0
 7573 0167 1E       		.uleb128 0x1e
 7574 0168 05       		.uleb128 0x5
 7575 0169 00       		.byte	0
 7576 016a 49       		.uleb128 0x49
 7577 016b 13       		.uleb128 0x13
 7578 016c 00       		.byte	0
 7579 016d 00       		.byte	0
 7580 016e 1F       		.uleb128 0x1f
 7581 016f 13       		.uleb128 0x13
 7582 0170 01       		.byte	0x1
 7583 0171 03       		.uleb128 0x3
 7584 0172 0E       		.uleb128 0xe
 7585 0173 0B       		.uleb128 0xb
 7586 0174 05       		.uleb128 0x5
 7587 0175 3A       		.uleb128 0x3a
 7588 0176 0B       		.uleb128 0xb
 7589 0177 3B       		.uleb128 0x3b
 7590 0178 05       		.uleb128 0x5
 7591 0179 01       		.uleb128 0x1
 7592 017a 13       		.uleb128 0x13
 7593 017b 00       		.byte	0
 7594 017c 00       		.byte	0
 7595 017d 20       		.uleb128 0x20
 7596 017e 17       		.uleb128 0x17
 7597 017f 01       		.byte	0x1
 7598 0180 0B       		.uleb128 0xb
 7599 0181 0B       		.uleb128 0xb
 7600 0182 3A       		.uleb128 0x3a
 7601 0183 0B       		.uleb128 0xb
 7602 0184 3B       		.uleb128 0x3b
 7603 0185 05       		.uleb128 0x5
ARM GAS  /tmp/ccQR1hla.s 			page 176


 7604 0186 01       		.uleb128 0x1
 7605 0187 13       		.uleb128 0x13
 7606 0188 00       		.byte	0
 7607 0189 00       		.byte	0
 7608 018a 21       		.uleb128 0x21
 7609 018b 13       		.uleb128 0x13
 7610 018c 01       		.byte	0x1
 7611 018d 0B       		.uleb128 0xb
 7612 018e 0B       		.uleb128 0xb
 7613 018f 3A       		.uleb128 0x3a
 7614 0190 0B       		.uleb128 0xb
 7615 0191 3B       		.uleb128 0x3b
 7616 0192 05       		.uleb128 0x5
 7617 0193 01       		.uleb128 0x1
 7618 0194 13       		.uleb128 0x13
 7619 0195 00       		.byte	0
 7620 0196 00       		.byte	0
 7621 0197 22       		.uleb128 0x22
 7622 0198 0D       		.uleb128 0xd
 7623 0199 00       		.byte	0
 7624 019a 03       		.uleb128 0x3
 7625 019b 0E       		.uleb128 0xe
 7626 019c 3A       		.uleb128 0x3a
 7627 019d 0B       		.uleb128 0xb
 7628 019e 3B       		.uleb128 0x3b
 7629 019f 05       		.uleb128 0x5
 7630 01a0 49       		.uleb128 0x49
 7631 01a1 13       		.uleb128 0x13
 7632 01a2 00       		.byte	0
 7633 01a3 00       		.byte	0
 7634 01a4 23       		.uleb128 0x23
 7635 01a5 0D       		.uleb128 0xd
 7636 01a6 00       		.byte	0
 7637 01a7 03       		.uleb128 0x3
 7638 01a8 0E       		.uleb128 0xe
 7639 01a9 3A       		.uleb128 0x3a
 7640 01aa 0B       		.uleb128 0xb
 7641 01ab 3B       		.uleb128 0x3b
 7642 01ac 05       		.uleb128 0x5
 7643 01ad 49       		.uleb128 0x49
 7644 01ae 13       		.uleb128 0x13
 7645 01af 38       		.uleb128 0x38
 7646 01b0 05       		.uleb128 0x5
 7647 01b1 00       		.byte	0
 7648 01b2 00       		.byte	0
 7649 01b3 24       		.uleb128 0x24
 7650 01b4 13       		.uleb128 0x13
 7651 01b5 01       		.byte	0x1
 7652 01b6 03       		.uleb128 0x3
 7653 01b7 0E       		.uleb128 0xe
 7654 01b8 0B       		.uleb128 0xb
 7655 01b9 0B       		.uleb128 0xb
 7656 01ba 3A       		.uleb128 0x3a
 7657 01bb 0B       		.uleb128 0xb
 7658 01bc 3B       		.uleb128 0x3b
 7659 01bd 05       		.uleb128 0x5
 7660 01be 01       		.uleb128 0x1
ARM GAS  /tmp/ccQR1hla.s 			page 177


 7661 01bf 13       		.uleb128 0x13
 7662 01c0 00       		.byte	0
 7663 01c1 00       		.byte	0
 7664 01c2 25       		.uleb128 0x25
 7665 01c3 15       		.uleb128 0x15
 7666 01c4 01       		.byte	0x1
 7667 01c5 01       		.uleb128 0x1
 7668 01c6 13       		.uleb128 0x13
 7669 01c7 00       		.byte	0
 7670 01c8 00       		.byte	0
 7671 01c9 26       		.uleb128 0x26
 7672 01ca 39       		.uleb128 0x39
 7673 01cb 01       		.byte	0x1
 7674 01cc 03       		.uleb128 0x3
 7675 01cd 08       		.uleb128 0x8
 7676 01ce 3A       		.uleb128 0x3a
 7677 01cf 0B       		.uleb128 0xb
 7678 01d0 3B       		.uleb128 0x3b
 7679 01d1 0B       		.uleb128 0xb
 7680 01d2 01       		.uleb128 0x1
 7681 01d3 13       		.uleb128 0x13
 7682 01d4 00       		.byte	0
 7683 01d5 00       		.byte	0
 7684 01d6 27       		.uleb128 0x27
 7685 01d7 39       		.uleb128 0x39
 7686 01d8 00       		.byte	0
 7687 01d9 03       		.uleb128 0x3
 7688 01da 0E       		.uleb128 0xe
 7689 01db 3A       		.uleb128 0x3a
 7690 01dc 0B       		.uleb128 0xb
 7691 01dd 3B       		.uleb128 0x3b
 7692 01de 0B       		.uleb128 0xb
 7693 01df 00       		.byte	0
 7694 01e0 00       		.byte	0
 7695 01e1 28       		.uleb128 0x28
 7696 01e2 3A       		.uleb128 0x3a
 7697 01e3 00       		.byte	0
 7698 01e4 3A       		.uleb128 0x3a
 7699 01e5 0B       		.uleb128 0xb
 7700 01e6 3B       		.uleb128 0x3b
 7701 01e7 0B       		.uleb128 0xb
 7702 01e8 18       		.uleb128 0x18
 7703 01e9 13       		.uleb128 0x13
 7704 01ea 00       		.byte	0
 7705 01eb 00       		.byte	0
 7706 01ec 29       		.uleb128 0x29
 7707 01ed 08       		.uleb128 0x8
 7708 01ee 00       		.byte	0
 7709 01ef 3A       		.uleb128 0x3a
 7710 01f0 0B       		.uleb128 0xb
 7711 01f1 3B       		.uleb128 0x3b
 7712 01f2 0B       		.uleb128 0xb
 7713 01f3 18       		.uleb128 0x18
 7714 01f4 13       		.uleb128 0x13
 7715 01f5 00       		.byte	0
 7716 01f6 00       		.byte	0
 7717 01f7 2A       		.uleb128 0x2a
ARM GAS  /tmp/ccQR1hla.s 			page 178


 7718 01f8 08       		.uleb128 0x8
 7719 01f9 00       		.byte	0
 7720 01fa 3A       		.uleb128 0x3a
 7721 01fb 0B       		.uleb128 0xb
 7722 01fc 3B       		.uleb128 0x3b
 7723 01fd 05       		.uleb128 0x5
 7724 01fe 18       		.uleb128 0x18
 7725 01ff 13       		.uleb128 0x13
 7726 0200 00       		.byte	0
 7727 0201 00       		.byte	0
 7728 0202 2B       		.uleb128 0x2b
 7729 0203 2E       		.uleb128 0x2e
 7730 0204 01       		.byte	0x1
 7731 0205 3F       		.uleb128 0x3f
 7732 0206 19       		.uleb128 0x19
 7733 0207 03       		.uleb128 0x3
 7734 0208 08       		.uleb128 0x8
 7735 0209 3A       		.uleb128 0x3a
 7736 020a 0B       		.uleb128 0xb
 7737 020b 3B       		.uleb128 0x3b
 7738 020c 0B       		.uleb128 0xb
 7739 020d 6E       		.uleb128 0x6e
 7740 020e 0E       		.uleb128 0xe
 7741 020f 49       		.uleb128 0x49
 7742 0210 13       		.uleb128 0x13
 7743 0211 3C       		.uleb128 0x3c
 7744 0212 19       		.uleb128 0x19
 7745 0213 01       		.uleb128 0x1
 7746 0214 13       		.uleb128 0x13
 7747 0215 00       		.byte	0
 7748 0216 00       		.byte	0
 7749 0217 2C       		.uleb128 0x2c
 7750 0218 2E       		.uleb128 0x2e
 7751 0219 01       		.byte	0x1
 7752 021a 3F       		.uleb128 0x3f
 7753 021b 19       		.uleb128 0x19
 7754 021c 03       		.uleb128 0x3
 7755 021d 0E       		.uleb128 0xe
 7756 021e 3A       		.uleb128 0x3a
 7757 021f 0B       		.uleb128 0xb
 7758 0220 3B       		.uleb128 0x3b
 7759 0221 05       		.uleb128 0x5
 7760 0222 6E       		.uleb128 0x6e
 7761 0223 0E       		.uleb128 0xe
 7762 0224 49       		.uleb128 0x49
 7763 0225 13       		.uleb128 0x13
 7764 0226 3C       		.uleb128 0x3c
 7765 0227 19       		.uleb128 0x19
 7766 0228 01       		.uleb128 0x1
 7767 0229 13       		.uleb128 0x13
 7768 022a 00       		.byte	0
 7769 022b 00       		.byte	0
 7770 022c 2D       		.uleb128 0x2d
 7771 022d 2E       		.uleb128 0x2e
 7772 022e 01       		.byte	0x1
 7773 022f 3F       		.uleb128 0x3f
 7774 0230 19       		.uleb128 0x19
ARM GAS  /tmp/ccQR1hla.s 			page 179


 7775 0231 03       		.uleb128 0x3
 7776 0232 0E       		.uleb128 0xe
 7777 0233 3A       		.uleb128 0x3a
 7778 0234 0B       		.uleb128 0xb
 7779 0235 3B       		.uleb128 0x3b
 7780 0236 05       		.uleb128 0x5
 7781 0237 6E       		.uleb128 0x6e
 7782 0238 0E       		.uleb128 0xe
 7783 0239 49       		.uleb128 0x49
 7784 023a 13       		.uleb128 0x13
 7785 023b 3C       		.uleb128 0x3c
 7786 023c 19       		.uleb128 0x19
 7787 023d 00       		.byte	0
 7788 023e 00       		.byte	0
 7789 023f 2E       		.uleb128 0x2e
 7790 0240 39       		.uleb128 0x39
 7791 0241 01       		.byte	0x1
 7792 0242 03       		.uleb128 0x3
 7793 0243 0E       		.uleb128 0xe
 7794 0244 3A       		.uleb128 0x3a
 7795 0245 0B       		.uleb128 0xb
 7796 0246 3B       		.uleb128 0x3b
 7797 0247 0B       		.uleb128 0xb
 7798 0248 01       		.uleb128 0x1
 7799 0249 13       		.uleb128 0x13
 7800 024a 00       		.byte	0
 7801 024b 00       		.byte	0
 7802 024c 2F       		.uleb128 0x2f
 7803 024d 2E       		.uleb128 0x2e
 7804 024e 01       		.byte	0x1
 7805 024f 3F       		.uleb128 0x3f
 7806 0250 19       		.uleb128 0x19
 7807 0251 03       		.uleb128 0x3
 7808 0252 08       		.uleb128 0x8
 7809 0253 3A       		.uleb128 0x3a
 7810 0254 0B       		.uleb128 0xb
 7811 0255 3B       		.uleb128 0x3b
 7812 0256 0B       		.uleb128 0xb
 7813 0257 6E       		.uleb128 0x6e
 7814 0258 0E       		.uleb128 0xe
 7815 0259 49       		.uleb128 0x49
 7816 025a 13       		.uleb128 0x13
 7817 025b 3C       		.uleb128 0x3c
 7818 025c 19       		.uleb128 0x19
 7819 025d 00       		.byte	0
 7820 025e 00       		.byte	0
 7821 025f 30       		.uleb128 0x30
 7822 0260 26       		.uleb128 0x26
 7823 0261 00       		.byte	0
 7824 0262 00       		.byte	0
 7825 0263 00       		.byte	0
 7826 0264 31       		.uleb128 0x31
 7827 0265 2E       		.uleb128 0x2e
 7828 0266 01       		.byte	0x1
 7829 0267 3F       		.uleb128 0x3f
 7830 0268 19       		.uleb128 0x19
 7831 0269 03       		.uleb128 0x3
ARM GAS  /tmp/ccQR1hla.s 			page 180


 7832 026a 0E       		.uleb128 0xe
 7833 026b 3A       		.uleb128 0x3a
 7834 026c 0B       		.uleb128 0xb
 7835 026d 3B       		.uleb128 0x3b
 7836 026e 0B       		.uleb128 0xb
 7837 026f 49       		.uleb128 0x49
 7838 0270 13       		.uleb128 0x13
 7839 0271 3C       		.uleb128 0x3c
 7840 0272 19       		.uleb128 0x19
 7841 0273 01       		.uleb128 0x1
 7842 0274 13       		.uleb128 0x13
 7843 0275 00       		.byte	0
 7844 0276 00       		.byte	0
 7845 0277 32       		.uleb128 0x32
 7846 0278 2E       		.uleb128 0x2e
 7847 0279 01       		.byte	0x1
 7848 027a 3F       		.uleb128 0x3f
 7849 027b 19       		.uleb128 0x19
 7850 027c 03       		.uleb128 0x3
 7851 027d 08       		.uleb128 0x8
 7852 027e 3A       		.uleb128 0x3a
 7853 027f 0B       		.uleb128 0xb
 7854 0280 3B       		.uleb128 0x3b
 7855 0281 0B       		.uleb128 0xb
 7856 0282 49       		.uleb128 0x49
 7857 0283 13       		.uleb128 0x13
 7858 0284 3C       		.uleb128 0x3c
 7859 0285 19       		.uleb128 0x19
 7860 0286 01       		.uleb128 0x1
 7861 0287 13       		.uleb128 0x13
 7862 0288 00       		.byte	0
 7863 0289 00       		.byte	0
 7864 028a 33       		.uleb128 0x33
 7865 028b 2E       		.uleb128 0x2e
 7866 028c 01       		.byte	0x1
 7867 028d 3F       		.uleb128 0x3f
 7868 028e 19       		.uleb128 0x19
 7869 028f 03       		.uleb128 0x3
 7870 0290 0E       		.uleb128 0xe
 7871 0291 3A       		.uleb128 0x3a
 7872 0292 0B       		.uleb128 0xb
 7873 0293 3B       		.uleb128 0x3b
 7874 0294 0B       		.uleb128 0xb
 7875 0295 3C       		.uleb128 0x3c
 7876 0296 19       		.uleb128 0x19
 7877 0297 01       		.uleb128 0x1
 7878 0298 13       		.uleb128 0x13
 7879 0299 00       		.byte	0
 7880 029a 00       		.byte	0
 7881 029b 34       		.uleb128 0x34
 7882 029c 2E       		.uleb128 0x2e
 7883 029d 00       		.byte	0
 7884 029e 3F       		.uleb128 0x3f
 7885 029f 19       		.uleb128 0x19
 7886 02a0 03       		.uleb128 0x3
 7887 02a1 0E       		.uleb128 0xe
 7888 02a2 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccQR1hla.s 			page 181


 7889 02a3 0B       		.uleb128 0xb
 7890 02a4 3B       		.uleb128 0x3b
 7891 02a5 0B       		.uleb128 0xb
 7892 02a6 49       		.uleb128 0x49
 7893 02a7 13       		.uleb128 0x13
 7894 02a8 3C       		.uleb128 0x3c
 7895 02a9 19       		.uleb128 0x19
 7896 02aa 00       		.byte	0
 7897 02ab 00       		.byte	0
 7898 02ac 35       		.uleb128 0x35
 7899 02ad 2E       		.uleb128 0x2e
 7900 02ae 01       		.byte	0x1
 7901 02af 3F       		.uleb128 0x3f
 7902 02b0 19       		.uleb128 0x19
 7903 02b1 03       		.uleb128 0x3
 7904 02b2 0E       		.uleb128 0xe
 7905 02b3 3A       		.uleb128 0x3a
 7906 02b4 0B       		.uleb128 0xb
 7907 02b5 3B       		.uleb128 0x3b
 7908 02b6 05       		.uleb128 0x5
 7909 02b7 49       		.uleb128 0x49
 7910 02b8 13       		.uleb128 0x13
 7911 02b9 3C       		.uleb128 0x3c
 7912 02ba 19       		.uleb128 0x19
 7913 02bb 01       		.uleb128 0x1
 7914 02bc 13       		.uleb128 0x13
 7915 02bd 00       		.byte	0
 7916 02be 00       		.byte	0
 7917 02bf 36       		.uleb128 0x36
 7918 02c0 34       		.uleb128 0x34
 7919 02c1 00       		.byte	0
 7920 02c2 03       		.uleb128 0x3
 7921 02c3 0E       		.uleb128 0xe
 7922 02c4 3A       		.uleb128 0x3a
 7923 02c5 0B       		.uleb128 0xb
 7924 02c6 3B       		.uleb128 0x3b
 7925 02c7 0B       		.uleb128 0xb
 7926 02c8 49       		.uleb128 0x49
 7927 02c9 13       		.uleb128 0x13
 7928 02ca 02       		.uleb128 0x2
 7929 02cb 18       		.uleb128 0x18
 7930 02cc 00       		.byte	0
 7931 02cd 00       		.byte	0
 7932 02ce 37       		.uleb128 0x37
 7933 02cf 04       		.uleb128 0x4
 7934 02d0 01       		.byte	0x1
 7935 02d1 03       		.uleb128 0x3
 7936 02d2 0E       		.uleb128 0xe
 7937 02d3 0B       		.uleb128 0xb
 7938 02d4 0B       		.uleb128 0xb
 7939 02d5 49       		.uleb128 0x49
 7940 02d6 13       		.uleb128 0x13
 7941 02d7 3A       		.uleb128 0x3a
 7942 02d8 0B       		.uleb128 0xb
 7943 02d9 3B       		.uleb128 0x3b
 7944 02da 05       		.uleb128 0x5
 7945 02db 01       		.uleb128 0x1
ARM GAS  /tmp/ccQR1hla.s 			page 182


 7946 02dc 13       		.uleb128 0x13
 7947 02dd 00       		.byte	0
 7948 02de 00       		.byte	0
 7949 02df 38       		.uleb128 0x38
 7950 02e0 28       		.uleb128 0x28
 7951 02e1 00       		.byte	0
 7952 02e2 03       		.uleb128 0x3
 7953 02e3 0E       		.uleb128 0xe
 7954 02e4 1C       		.uleb128 0x1c
 7955 02e5 0D       		.uleb128 0xd
 7956 02e6 00       		.byte	0
 7957 02e7 00       		.byte	0
 7958 02e8 39       		.uleb128 0x39
 7959 02e9 28       		.uleb128 0x28
 7960 02ea 00       		.byte	0
 7961 02eb 03       		.uleb128 0x3
 7962 02ec 0E       		.uleb128 0xe
 7963 02ed 1C       		.uleb128 0x1c
 7964 02ee 0B       		.uleb128 0xb
 7965 02ef 00       		.byte	0
 7966 02f0 00       		.byte	0
 7967 02f1 3A       		.uleb128 0x3a
 7968 02f2 04       		.uleb128 0x4
 7969 02f3 01       		.byte	0x1
 7970 02f4 03       		.uleb128 0x3
 7971 02f5 0E       		.uleb128 0xe
 7972 02f6 0B       		.uleb128 0xb
 7973 02f7 0B       		.uleb128 0xb
 7974 02f8 49       		.uleb128 0x49
 7975 02f9 13       		.uleb128 0x13
 7976 02fa 3A       		.uleb128 0x3a
 7977 02fb 0B       		.uleb128 0xb
 7978 02fc 3B       		.uleb128 0x3b
 7979 02fd 0B       		.uleb128 0xb
 7980 02fe 01       		.uleb128 0x1
 7981 02ff 13       		.uleb128 0x13
 7982 0300 00       		.byte	0
 7983 0301 00       		.byte	0
 7984 0302 3B       		.uleb128 0x3b
 7985 0303 28       		.uleb128 0x28
 7986 0304 00       		.byte	0
 7987 0305 03       		.uleb128 0x3
 7988 0306 0E       		.uleb128 0xe
 7989 0307 1C       		.uleb128 0x1c
 7990 0308 06       		.uleb128 0x6
 7991 0309 00       		.byte	0
 7992 030a 00       		.byte	0
 7993 030b 3C       		.uleb128 0x3c
 7994 030c 04       		.uleb128 0x4
 7995 030d 01       		.byte	0x1
 7996 030e 0B       		.uleb128 0xb
 7997 030f 0B       		.uleb128 0xb
 7998 0310 49       		.uleb128 0x49
 7999 0311 13       		.uleb128 0x13
 8000 0312 3A       		.uleb128 0x3a
 8001 0313 0B       		.uleb128 0xb
 8002 0314 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccQR1hla.s 			page 183


 8003 0315 0B       		.uleb128 0xb
 8004 0316 6E       		.uleb128 0x6e
 8005 0317 0E       		.uleb128 0xe
 8006 0318 01       		.uleb128 0x1
 8007 0319 13       		.uleb128 0x13
 8008 031a 00       		.byte	0
 8009 031b 00       		.byte	0
 8010 031c 3D       		.uleb128 0x3d
 8011 031d 28       		.uleb128 0x28
 8012 031e 00       		.byte	0
 8013 031f 03       		.uleb128 0x3
 8014 0320 0E       		.uleb128 0xe
 8015 0321 1C       		.uleb128 0x1c
 8016 0322 05       		.uleb128 0x5
 8017 0323 00       		.byte	0
 8018 0324 00       		.byte	0
 8019 0325 3E       		.uleb128 0x3e
 8020 0326 34       		.uleb128 0x34
 8021 0327 00       		.byte	0
 8022 0328 03       		.uleb128 0x3
 8023 0329 0E       		.uleb128 0xe
 8024 032a 3A       		.uleb128 0x3a
 8025 032b 0B       		.uleb128 0xb
 8026 032c 3B       		.uleb128 0x3b
 8027 032d 0B       		.uleb128 0xb
 8028 032e 49       		.uleb128 0x49
 8029 032f 13       		.uleb128 0x13
 8030 0330 1C       		.uleb128 0x1c
 8031 0331 0D       		.uleb128 0xd
 8032 0332 00       		.byte	0
 8033 0333 00       		.byte	0
 8034 0334 3F       		.uleb128 0x3f
 8035 0335 28       		.uleb128 0x28
 8036 0336 00       		.byte	0
 8037 0337 03       		.uleb128 0x3
 8038 0338 08       		.uleb128 0x8
 8039 0339 1C       		.uleb128 0x1c
 8040 033a 0B       		.uleb128 0xb
 8041 033b 00       		.byte	0
 8042 033c 00       		.byte	0
 8043 033d 40       		.uleb128 0x40
 8044 033e 21       		.uleb128 0x21
 8045 033f 00       		.byte	0
 8046 0340 00       		.byte	0
 8047 0341 00       		.byte	0
 8048 0342 41       		.uleb128 0x41
 8049 0343 02       		.uleb128 0x2
 8050 0344 01       		.byte	0x1
 8051 0345 03       		.uleb128 0x3
 8052 0346 0E       		.uleb128 0xe
 8053 0347 3C       		.uleb128 0x3c
 8054 0348 19       		.uleb128 0x19
 8055 0349 01       		.uleb128 0x1
 8056 034a 13       		.uleb128 0x13
 8057 034b 00       		.byte	0
 8058 034c 00       		.byte	0
 8059 034d 42       		.uleb128 0x42
ARM GAS  /tmp/ccQR1hla.s 			page 184


 8060 034e 2E       		.uleb128 0x2e
 8061 034f 01       		.byte	0x1
 8062 0350 3F       		.uleb128 0x3f
 8063 0351 19       		.uleb128 0x19
 8064 0352 03       		.uleb128 0x3
 8065 0353 0E       		.uleb128 0xe
 8066 0354 3A       		.uleb128 0x3a
 8067 0355 0B       		.uleb128 0xb
 8068 0356 3B       		.uleb128 0x3b
 8069 0357 0B       		.uleb128 0xb
 8070 0358 6E       		.uleb128 0x6e
 8071 0359 0E       		.uleb128 0xe
 8072 035a 49       		.uleb128 0x49
 8073 035b 13       		.uleb128 0x13
 8074 035c 32       		.uleb128 0x32
 8075 035d 0B       		.uleb128 0xb
 8076 035e 3C       		.uleb128 0x3c
 8077 035f 19       		.uleb128 0x19
 8078 0360 64       		.uleb128 0x64
 8079 0361 13       		.uleb128 0x13
 8080 0362 00       		.byte	0
 8081 0363 00       		.byte	0
 8082 0364 43       		.uleb128 0x43
 8083 0365 05       		.uleb128 0x5
 8084 0366 00       		.byte	0
 8085 0367 49       		.uleb128 0x49
 8086 0368 13       		.uleb128 0x13
 8087 0369 34       		.uleb128 0x34
 8088 036a 19       		.uleb128 0x19
 8089 036b 00       		.byte	0
 8090 036c 00       		.byte	0
 8091 036d 44       		.uleb128 0x44
 8092 036e 34       		.uleb128 0x34
 8093 036f 00       		.byte	0
 8094 0370 03       		.uleb128 0x3
 8095 0371 0E       		.uleb128 0xe
 8096 0372 3A       		.uleb128 0x3a
 8097 0373 0B       		.uleb128 0xb
 8098 0374 3B       		.uleb128 0x3b
 8099 0375 0B       		.uleb128 0xb
 8100 0376 49       		.uleb128 0x49
 8101 0377 13       		.uleb128 0x13
 8102 0378 1C       		.uleb128 0x1c
 8103 0379 05       		.uleb128 0x5
 8104 037a 00       		.byte	0
 8105 037b 00       		.byte	0
 8106 037c 45       		.uleb128 0x45
 8107 037d 34       		.uleb128 0x34
 8108 037e 00       		.byte	0
 8109 037f 03       		.uleb128 0x3
 8110 0380 0E       		.uleb128 0xe
 8111 0381 3A       		.uleb128 0x3a
 8112 0382 0B       		.uleb128 0xb
 8113 0383 3B       		.uleb128 0x3b
 8114 0384 0B       		.uleb128 0xb
 8115 0385 49       		.uleb128 0x49
 8116 0386 13       		.uleb128 0x13
ARM GAS  /tmp/ccQR1hla.s 			page 185


 8117 0387 1C       		.uleb128 0x1c
 8118 0388 0B       		.uleb128 0xb
 8119 0389 00       		.byte	0
 8120 038a 00       		.byte	0
 8121 038b 46       		.uleb128 0x46
 8122 038c 34       		.uleb128 0x34
 8123 038d 00       		.byte	0
 8124 038e 03       		.uleb128 0x3
 8125 038f 0E       		.uleb128 0xe
 8126 0390 3A       		.uleb128 0x3a
 8127 0391 0B       		.uleb128 0xb
 8128 0392 3B       		.uleb128 0x3b
 8129 0393 0B       		.uleb128 0xb
 8130 0394 49       		.uleb128 0x49
 8131 0395 13       		.uleb128 0x13
 8132 0396 1C       		.uleb128 0x1c
 8133 0397 06       		.uleb128 0x6
 8134 0398 00       		.byte	0
 8135 0399 00       		.byte	0
 8136 039a 47       		.uleb128 0x47
 8137 039b 02       		.uleb128 0x2
 8138 039c 00       		.byte	0
 8139 039d 03       		.uleb128 0x3
 8140 039e 0E       		.uleb128 0xe
 8141 039f 3C       		.uleb128 0x3c
 8142 03a0 19       		.uleb128 0x19
 8143 03a1 00       		.byte	0
 8144 03a2 00       		.byte	0
 8145 03a3 48       		.uleb128 0x48
 8146 03a4 34       		.uleb128 0x34
 8147 03a5 00       		.byte	0
 8148 03a6 03       		.uleb128 0x3
 8149 03a7 0E       		.uleb128 0xe
 8150 03a8 3A       		.uleb128 0x3a
 8151 03a9 0B       		.uleb128 0xb
 8152 03aa 3B       		.uleb128 0x3b
 8153 03ab 0B       		.uleb128 0xb
 8154 03ac 49       		.uleb128 0x49
 8155 03ad 13       		.uleb128 0x13
 8156 03ae 3F       		.uleb128 0x3f
 8157 03af 19       		.uleb128 0x19
 8158 03b0 02       		.uleb128 0x2
 8159 03b1 18       		.uleb128 0x18
 8160 03b2 00       		.byte	0
 8161 03b3 00       		.byte	0
 8162 03b4 49       		.uleb128 0x49
 8163 03b5 34       		.uleb128 0x34
 8164 03b6 00       		.byte	0
 8165 03b7 03       		.uleb128 0x3
 8166 03b8 0E       		.uleb128 0xe
 8167 03b9 3A       		.uleb128 0x3a
 8168 03ba 0B       		.uleb128 0xb
 8169 03bb 3B       		.uleb128 0x3b
 8170 03bc 05       		.uleb128 0x5
 8171 03bd 49       		.uleb128 0x49
 8172 03be 13       		.uleb128 0x13
 8173 03bf 02       		.uleb128 0x2
ARM GAS  /tmp/ccQR1hla.s 			page 186


 8174 03c0 18       		.uleb128 0x18
 8175 03c1 00       		.byte	0
 8176 03c2 00       		.byte	0
 8177 03c3 4A       		.uleb128 0x4a
 8178 03c4 2E       		.uleb128 0x2e
 8179 03c5 01       		.byte	0x1
 8180 03c6 3F       		.uleb128 0x3f
 8181 03c7 19       		.uleb128 0x19
 8182 03c8 03       		.uleb128 0x3
 8183 03c9 0E       		.uleb128 0xe
 8184 03ca 3A       		.uleb128 0x3a
 8185 03cb 0B       		.uleb128 0xb
 8186 03cc 3B       		.uleb128 0x3b
 8187 03cd 0B       		.uleb128 0xb
 8188 03ce 6E       		.uleb128 0x6e
 8189 03cf 0E       		.uleb128 0xe
 8190 03d0 49       		.uleb128 0x49
 8191 03d1 13       		.uleb128 0x13
 8192 03d2 20       		.uleb128 0x20
 8193 03d3 0B       		.uleb128 0xb
 8194 03d4 01       		.uleb128 0x1
 8195 03d5 13       		.uleb128 0x13
 8196 03d6 00       		.byte	0
 8197 03d7 00       		.byte	0
 8198 03d8 4B       		.uleb128 0x4b
 8199 03d9 2F       		.uleb128 0x2f
 8200 03da 00       		.byte	0
 8201 03db 03       		.uleb128 0x3
 8202 03dc 08       		.uleb128 0x8
 8203 03dd 49       		.uleb128 0x49
 8204 03de 13       		.uleb128 0x13
 8205 03df 00       		.byte	0
 8206 03e0 00       		.byte	0
 8207 03e1 4C       		.uleb128 0x4c
 8208 03e2 05       		.uleb128 0x5
 8209 03e3 00       		.byte	0
 8210 03e4 03       		.uleb128 0x3
 8211 03e5 08       		.uleb128 0x8
 8212 03e6 3A       		.uleb128 0x3a
 8213 03e7 0B       		.uleb128 0xb
 8214 03e8 3B       		.uleb128 0x3b
 8215 03e9 0B       		.uleb128 0xb
 8216 03ea 49       		.uleb128 0x49
 8217 03eb 13       		.uleb128 0x13
 8218 03ec 00       		.byte	0
 8219 03ed 00       		.byte	0
 8220 03ee 4D       		.uleb128 0x4d
 8221 03ef 05       		.uleb128 0x5
 8222 03f0 00       		.byte	0
 8223 03f1 03       		.uleb128 0x3
 8224 03f2 0E       		.uleb128 0xe
 8225 03f3 3A       		.uleb128 0x3a
 8226 03f4 0B       		.uleb128 0xb
 8227 03f5 3B       		.uleb128 0x3b
 8228 03f6 0B       		.uleb128 0xb
 8229 03f7 49       		.uleb128 0x49
 8230 03f8 13       		.uleb128 0x13
ARM GAS  /tmp/ccQR1hla.s 			page 187


 8231 03f9 00       		.byte	0
 8232 03fa 00       		.byte	0
 8233 03fb 4E       		.uleb128 0x4e
 8234 03fc 2E       		.uleb128 0x2e
 8235 03fd 01       		.byte	0x1
 8236 03fe 3F       		.uleb128 0x3f
 8237 03ff 19       		.uleb128 0x19
 8238 0400 03       		.uleb128 0x3
 8239 0401 0E       		.uleb128 0xe
 8240 0402 3A       		.uleb128 0x3a
 8241 0403 0B       		.uleb128 0xb
 8242 0404 3B       		.uleb128 0x3b
 8243 0405 05       		.uleb128 0x5
 8244 0406 6E       		.uleb128 0x6e
 8245 0407 0E       		.uleb128 0xe
 8246 0408 11       		.uleb128 0x11
 8247 0409 01       		.uleb128 0x1
 8248 040a 12       		.uleb128 0x12
 8249 040b 06       		.uleb128 0x6
 8250 040c 40       		.uleb128 0x40
 8251 040d 18       		.uleb128 0x18
 8252 040e 9742     		.uleb128 0x2117
 8253 0410 19       		.uleb128 0x19
 8254 0411 01       		.uleb128 0x1
 8255 0412 13       		.uleb128 0x13
 8256 0413 00       		.byte	0
 8257 0414 00       		.byte	0
 8258 0415 4F       		.uleb128 0x4f
 8259 0416 05       		.uleb128 0x5
 8260 0417 00       		.byte	0
 8261 0418 03       		.uleb128 0x3
 8262 0419 08       		.uleb128 0x8
 8263 041a 3A       		.uleb128 0x3a
 8264 041b 0B       		.uleb128 0xb
 8265 041c 3B       		.uleb128 0x3b
 8266 041d 05       		.uleb128 0x5
 8267 041e 49       		.uleb128 0x49
 8268 041f 13       		.uleb128 0x13
 8269 0420 02       		.uleb128 0x2
 8270 0421 17       		.uleb128 0x17
 8271 0422 00       		.byte	0
 8272 0423 00       		.byte	0
 8273 0424 50       		.uleb128 0x50
 8274 0425 05       		.uleb128 0x5
 8275 0426 00       		.byte	0
 8276 0427 03       		.uleb128 0x3
 8277 0428 0E       		.uleb128 0xe
 8278 0429 3A       		.uleb128 0x3a
 8279 042a 0B       		.uleb128 0xb
 8280 042b 3B       		.uleb128 0x3b
 8281 042c 05       		.uleb128 0x5
 8282 042d 49       		.uleb128 0x49
 8283 042e 13       		.uleb128 0x13
 8284 042f 02       		.uleb128 0x2
 8285 0430 17       		.uleb128 0x17
 8286 0431 00       		.byte	0
 8287 0432 00       		.byte	0
ARM GAS  /tmp/ccQR1hla.s 			page 188


 8288 0433 51       		.uleb128 0x51
 8289 0434 34       		.uleb128 0x34
 8290 0435 00       		.byte	0
 8291 0436 03       		.uleb128 0x3
 8292 0437 0E       		.uleb128 0xe
 8293 0438 3A       		.uleb128 0x3a
 8294 0439 0B       		.uleb128 0xb
 8295 043a 3B       		.uleb128 0x3b
 8296 043b 05       		.uleb128 0x5
 8297 043c 49       		.uleb128 0x49
 8298 043d 13       		.uleb128 0x13
 8299 043e 00       		.byte	0
 8300 043f 00       		.byte	0
 8301 0440 52       		.uleb128 0x52
 8302 0441 34       		.uleb128 0x34
 8303 0442 00       		.byte	0
 8304 0443 03       		.uleb128 0x3
 8305 0444 0E       		.uleb128 0xe
 8306 0445 3A       		.uleb128 0x3a
 8307 0446 0B       		.uleb128 0xb
 8308 0447 3B       		.uleb128 0x3b
 8309 0448 05       		.uleb128 0x5
 8310 0449 49       		.uleb128 0x49
 8311 044a 13       		.uleb128 0x13
 8312 044b 02       		.uleb128 0x2
 8313 044c 17       		.uleb128 0x17
 8314 044d 00       		.byte	0
 8315 044e 00       		.byte	0
 8316 044f 53       		.uleb128 0x53
 8317 0450 1D       		.uleb128 0x1d
 8318 0451 01       		.byte	0x1
 8319 0452 31       		.uleb128 0x31
 8320 0453 13       		.uleb128 0x13
 8321 0454 52       		.uleb128 0x52
 8322 0455 01       		.uleb128 0x1
 8323 0456 55       		.uleb128 0x55
 8324 0457 17       		.uleb128 0x17
 8325 0458 58       		.uleb128 0x58
 8326 0459 0B       		.uleb128 0xb
 8327 045a 59       		.uleb128 0x59
 8328 045b 05       		.uleb128 0x5
 8329 045c 01       		.uleb128 0x1
 8330 045d 13       		.uleb128 0x13
 8331 045e 00       		.byte	0
 8332 045f 00       		.byte	0
 8333 0460 54       		.uleb128 0x54
 8334 0461 05       		.uleb128 0x5
 8335 0462 00       		.byte	0
 8336 0463 31       		.uleb128 0x31
 8337 0464 13       		.uleb128 0x13
 8338 0465 02       		.uleb128 0x2
 8339 0466 17       		.uleb128 0x17
 8340 0467 00       		.byte	0
 8341 0468 00       		.byte	0
 8342 0469 55       		.uleb128 0x55
 8343 046a 1D       		.uleb128 0x1d
 8344 046b 01       		.byte	0x1
ARM GAS  /tmp/ccQR1hla.s 			page 189


 8345 046c 31       		.uleb128 0x31
 8346 046d 13       		.uleb128 0x13
 8347 046e 11       		.uleb128 0x11
 8348 046f 01       		.uleb128 0x1
 8349 0470 12       		.uleb128 0x12
 8350 0471 06       		.uleb128 0x6
 8351 0472 58       		.uleb128 0x58
 8352 0473 0B       		.uleb128 0xb
 8353 0474 59       		.uleb128 0x59
 8354 0475 0B       		.uleb128 0xb
 8355 0476 01       		.uleb128 0x1
 8356 0477 13       		.uleb128 0x13
 8357 0478 00       		.byte	0
 8358 0479 00       		.byte	0
 8359 047a 56       		.uleb128 0x56
 8360 047b 1D       		.uleb128 0x1d
 8361 047c 01       		.byte	0x1
 8362 047d 31       		.uleb128 0x31
 8363 047e 13       		.uleb128 0x13
 8364 047f 11       		.uleb128 0x11
 8365 0480 01       		.uleb128 0x1
 8366 0481 12       		.uleb128 0x12
 8367 0482 06       		.uleb128 0x6
 8368 0483 58       		.uleb128 0x58
 8369 0484 0B       		.uleb128 0xb
 8370 0485 59       		.uleb128 0x59
 8371 0486 0B       		.uleb128 0xb
 8372 0487 00       		.byte	0
 8373 0488 00       		.byte	0
 8374 0489 57       		.uleb128 0x57
 8375 048a 05       		.uleb128 0x5
 8376 048b 00       		.byte	0
 8377 048c 31       		.uleb128 0x31
 8378 048d 13       		.uleb128 0x13
 8379 048e 00       		.byte	0
 8380 048f 00       		.byte	0
 8381 0490 58       		.uleb128 0x58
 8382 0491 898201   		.uleb128 0x4109
 8383 0494 01       		.byte	0x1
 8384 0495 11       		.uleb128 0x11
 8385 0496 01       		.uleb128 0x1
 8386 0497 31       		.uleb128 0x31
 8387 0498 13       		.uleb128 0x13
 8388 0499 00       		.byte	0
 8389 049a 00       		.byte	0
 8390 049b 59       		.uleb128 0x59
 8391 049c 8A8201   		.uleb128 0x410a
 8392 049f 00       		.byte	0
 8393 04a0 02       		.uleb128 0x2
 8394 04a1 18       		.uleb128 0x18
 8395 04a2 9142     		.uleb128 0x2111
 8396 04a4 18       		.uleb128 0x18
 8397 04a5 00       		.byte	0
 8398 04a6 00       		.byte	0
 8399 04a7 5A       		.uleb128 0x5a
 8400 04a8 0B       		.uleb128 0xb
 8401 04a9 01       		.byte	0x1
ARM GAS  /tmp/ccQR1hla.s 			page 190


 8402 04aa 55       		.uleb128 0x55
 8403 04ab 17       		.uleb128 0x17
 8404 04ac 00       		.byte	0
 8405 04ad 00       		.byte	0
 8406 04ae 5B       		.uleb128 0x5b
 8407 04af 34       		.uleb128 0x34
 8408 04b0 00       		.byte	0
 8409 04b1 31       		.uleb128 0x31
 8410 04b2 13       		.uleb128 0x13
 8411 04b3 00       		.byte	0
 8412 04b4 00       		.byte	0
 8413 04b5 5C       		.uleb128 0x5c
 8414 04b6 34       		.uleb128 0x34
 8415 04b7 00       		.byte	0
 8416 04b8 31       		.uleb128 0x31
 8417 04b9 13       		.uleb128 0x13
 8418 04ba 02       		.uleb128 0x2
 8419 04bb 17       		.uleb128 0x17
 8420 04bc 00       		.byte	0
 8421 04bd 00       		.byte	0
 8422 04be 5D       		.uleb128 0x5d
 8423 04bf 898201   		.uleb128 0x4109
 8424 04c2 01       		.byte	0x1
 8425 04c3 11       		.uleb128 0x11
 8426 04c4 01       		.uleb128 0x1
 8427 04c5 31       		.uleb128 0x31
 8428 04c6 13       		.uleb128 0x13
 8429 04c7 01       		.uleb128 0x1
 8430 04c8 13       		.uleb128 0x13
 8431 04c9 00       		.byte	0
 8432 04ca 00       		.byte	0
 8433 04cb 5E       		.uleb128 0x5e
 8434 04cc 0B       		.uleb128 0xb
 8435 04cd 01       		.byte	0x1
 8436 04ce 55       		.uleb128 0x55
 8437 04cf 17       		.uleb128 0x17
 8438 04d0 01       		.uleb128 0x1
 8439 04d1 13       		.uleb128 0x13
 8440 04d2 00       		.byte	0
 8441 04d3 00       		.byte	0
 8442 04d4 5F       		.uleb128 0x5f
 8443 04d5 34       		.uleb128 0x34
 8444 04d6 00       		.byte	0
 8445 04d7 31       		.uleb128 0x31
 8446 04d8 13       		.uleb128 0x13
 8447 04d9 02       		.uleb128 0x2
 8448 04da 18       		.uleb128 0x18
 8449 04db 00       		.byte	0
 8450 04dc 00       		.byte	0
 8451 04dd 60       		.uleb128 0x60
 8452 04de 0B       		.uleb128 0xb
 8453 04df 01       		.byte	0x1
 8454 04e0 11       		.uleb128 0x11
 8455 04e1 01       		.uleb128 0x1
 8456 04e2 12       		.uleb128 0x12
 8457 04e3 06       		.uleb128 0x6
 8458 04e4 01       		.uleb128 0x1
ARM GAS  /tmp/ccQR1hla.s 			page 191


 8459 04e5 13       		.uleb128 0x13
 8460 04e6 00       		.byte	0
 8461 04e7 00       		.byte	0
 8462 04e8 61       		.uleb128 0x61
 8463 04e9 1D       		.uleb128 0x1d
 8464 04ea 01       		.byte	0x1
 8465 04eb 31       		.uleb128 0x31
 8466 04ec 13       		.uleb128 0x13
 8467 04ed 52       		.uleb128 0x52
 8468 04ee 01       		.uleb128 0x1
 8469 04ef 55       		.uleb128 0x55
 8470 04f0 17       		.uleb128 0x17
 8471 04f1 58       		.uleb128 0x58
 8472 04f2 0B       		.uleb128 0xb
 8473 04f3 59       		.uleb128 0x59
 8474 04f4 0B       		.uleb128 0xb
 8475 04f5 01       		.uleb128 0x1
 8476 04f6 13       		.uleb128 0x13
 8477 04f7 00       		.byte	0
 8478 04f8 00       		.byte	0
 8479 04f9 62       		.uleb128 0x62
 8480 04fa 1D       		.uleb128 0x1d
 8481 04fb 01       		.byte	0x1
 8482 04fc 31       		.uleb128 0x31
 8483 04fd 13       		.uleb128 0x13
 8484 04fe 52       		.uleb128 0x52
 8485 04ff 01       		.uleb128 0x1
 8486 0500 55       		.uleb128 0x55
 8487 0501 17       		.uleb128 0x17
 8488 0502 58       		.uleb128 0x58
 8489 0503 0B       		.uleb128 0xb
 8490 0504 59       		.uleb128 0x59
 8491 0505 0B       		.uleb128 0xb
 8492 0506 00       		.byte	0
 8493 0507 00       		.byte	0
 8494 0508 63       		.uleb128 0x63
 8495 0509 898201   		.uleb128 0x4109
 8496 050c 00       		.byte	0
 8497 050d 11       		.uleb128 0x11
 8498 050e 01       		.uleb128 0x1
 8499 050f 31       		.uleb128 0x31
 8500 0510 13       		.uleb128 0x13
 8501 0511 00       		.byte	0
 8502 0512 00       		.byte	0
 8503 0513 64       		.uleb128 0x64
 8504 0514 0B       		.uleb128 0xb
 8505 0515 01       		.byte	0x1
 8506 0516 11       		.uleb128 0x11
 8507 0517 01       		.uleb128 0x1
 8508 0518 12       		.uleb128 0x12
 8509 0519 06       		.uleb128 0x6
 8510 051a 00       		.byte	0
 8511 051b 00       		.byte	0
 8512 051c 65       		.uleb128 0x65
 8513 051d 1D       		.uleb128 0x1d
 8514 051e 01       		.byte	0x1
 8515 051f 31       		.uleb128 0x31
ARM GAS  /tmp/ccQR1hla.s 			page 192


 8516 0520 13       		.uleb128 0x13
 8517 0521 52       		.uleb128 0x52
 8518 0522 01       		.uleb128 0x1
 8519 0523 55       		.uleb128 0x55
 8520 0524 17       		.uleb128 0x17
 8521 0525 58       		.uleb128 0x58
 8522 0526 0B       		.uleb128 0xb
 8523 0527 59       		.uleb128 0x59
 8524 0528 05       		.uleb128 0x5
 8525 0529 00       		.byte	0
 8526 052a 00       		.byte	0
 8527 052b 66       		.uleb128 0x66
 8528 052c 1D       		.uleb128 0x1d
 8529 052d 01       		.byte	0x1
 8530 052e 31       		.uleb128 0x31
 8531 052f 13       		.uleb128 0x13
 8532 0530 11       		.uleb128 0x11
 8533 0531 01       		.uleb128 0x1
 8534 0532 12       		.uleb128 0x12
 8535 0533 06       		.uleb128 0x6
 8536 0534 58       		.uleb128 0x58
 8537 0535 0B       		.uleb128 0xb
 8538 0536 59       		.uleb128 0x59
 8539 0537 05       		.uleb128 0x5
 8540 0538 01       		.uleb128 0x1
 8541 0539 13       		.uleb128 0x13
 8542 053a 00       		.byte	0
 8543 053b 00       		.byte	0
 8544 053c 67       		.uleb128 0x67
 8545 053d 10       		.uleb128 0x10
 8546 053e 00       		.byte	0
 8547 053f 0B       		.uleb128 0xb
 8548 0540 0B       		.uleb128 0xb
 8549 0541 49       		.uleb128 0x49
 8550 0542 13       		.uleb128 0x13
 8551 0543 00       		.byte	0
 8552 0544 00       		.byte	0
 8553 0545 68       		.uleb128 0x68
 8554 0546 2E       		.uleb128 0x2e
 8555 0547 01       		.byte	0x1
 8556 0548 03       		.uleb128 0x3
 8557 0549 0E       		.uleb128 0xe
 8558 054a 3A       		.uleb128 0x3a
 8559 054b 0B       		.uleb128 0xb
 8560 054c 3B       		.uleb128 0x3b
 8561 054d 05       		.uleb128 0x5
 8562 054e 49       		.uleb128 0x49
 8563 054f 13       		.uleb128 0x13
 8564 0550 20       		.uleb128 0x20
 8565 0551 0B       		.uleb128 0xb
 8566 0552 01       		.uleb128 0x1
 8567 0553 13       		.uleb128 0x13
 8568 0554 00       		.byte	0
 8569 0555 00       		.byte	0
 8570 0556 69       		.uleb128 0x69
 8571 0557 05       		.uleb128 0x5
 8572 0558 00       		.byte	0
ARM GAS  /tmp/ccQR1hla.s 			page 193


 8573 0559 03       		.uleb128 0x3
 8574 055a 0E       		.uleb128 0xe
 8575 055b 3A       		.uleb128 0x3a
 8576 055c 0B       		.uleb128 0xb
 8577 055d 3B       		.uleb128 0x3b
 8578 055e 05       		.uleb128 0x5
 8579 055f 49       		.uleb128 0x49
 8580 0560 13       		.uleb128 0x13
 8581 0561 00       		.byte	0
 8582 0562 00       		.byte	0
 8583 0563 6A       		.uleb128 0x6a
 8584 0564 0B       		.uleb128 0xb
 8585 0565 01       		.byte	0x1
 8586 0566 00       		.byte	0
 8587 0567 00       		.byte	0
 8588 0568 6B       		.uleb128 0x6b
 8589 0569 34       		.uleb128 0x34
 8590 056a 00       		.byte	0
 8591 056b 03       		.uleb128 0x3
 8592 056c 08       		.uleb128 0x8
 8593 056d 3A       		.uleb128 0x3a
 8594 056e 0B       		.uleb128 0xb
 8595 056f 3B       		.uleb128 0x3b
 8596 0570 05       		.uleb128 0x5
 8597 0571 49       		.uleb128 0x49
 8598 0572 13       		.uleb128 0x13
 8599 0573 00       		.byte	0
 8600 0574 00       		.byte	0
 8601 0575 6C       		.uleb128 0x6c
 8602 0576 2E       		.uleb128 0x2e
 8603 0577 01       		.byte	0x1
 8604 0578 03       		.uleb128 0x3
 8605 0579 0E       		.uleb128 0xe
 8606 057a 3A       		.uleb128 0x3a
 8607 057b 0B       		.uleb128 0xb
 8608 057c 3B       		.uleb128 0x3b
 8609 057d 05       		.uleb128 0x5
 8610 057e 20       		.uleb128 0x20
 8611 057f 0B       		.uleb128 0xb
 8612 0580 01       		.uleb128 0x1
 8613 0581 13       		.uleb128 0x13
 8614 0582 00       		.byte	0
 8615 0583 00       		.byte	0
 8616 0584 6D       		.uleb128 0x6d
 8617 0585 05       		.uleb128 0x5
 8618 0586 00       		.byte	0
 8619 0587 03       		.uleb128 0x3
 8620 0588 08       		.uleb128 0x8
 8621 0589 3A       		.uleb128 0x3a
 8622 058a 0B       		.uleb128 0xb
 8623 058b 3B       		.uleb128 0x3b
 8624 058c 05       		.uleb128 0x5
 8625 058d 49       		.uleb128 0x49
 8626 058e 13       		.uleb128 0x13
 8627 058f 00       		.byte	0
 8628 0590 00       		.byte	0
 8629 0591 6E       		.uleb128 0x6e
ARM GAS  /tmp/ccQR1hla.s 			page 194


 8630 0592 2E       		.uleb128 0x2e
 8631 0593 01       		.byte	0x1
 8632 0594 03       		.uleb128 0x3
 8633 0595 0E       		.uleb128 0xe
 8634 0596 3A       		.uleb128 0x3a
 8635 0597 0B       		.uleb128 0xb
 8636 0598 3B       		.uleb128 0x3b
 8637 0599 0B       		.uleb128 0xb
 8638 059a 49       		.uleb128 0x49
 8639 059b 13       		.uleb128 0x13
 8640 059c 20       		.uleb128 0x20
 8641 059d 0B       		.uleb128 0xb
 8642 059e 01       		.uleb128 0x1
 8643 059f 13       		.uleb128 0x13
 8644 05a0 00       		.byte	0
 8645 05a1 00       		.byte	0
 8646 05a2 6F       		.uleb128 0x6f
 8647 05a3 34       		.uleb128 0x34
 8648 05a4 00       		.byte	0
 8649 05a5 03       		.uleb128 0x3
 8650 05a6 0E       		.uleb128 0xe
 8651 05a7 3A       		.uleb128 0x3a
 8652 05a8 0B       		.uleb128 0xb
 8653 05a9 3B       		.uleb128 0x3b
 8654 05aa 0B       		.uleb128 0xb
 8655 05ab 49       		.uleb128 0x49
 8656 05ac 13       		.uleb128 0x13
 8657 05ad 00       		.byte	0
 8658 05ae 00       		.byte	0
 8659 05af 70       		.uleb128 0x70
 8660 05b0 0B       		.uleb128 0xb
 8661 05b1 01       		.byte	0x1
 8662 05b2 01       		.uleb128 0x1
 8663 05b3 13       		.uleb128 0x13
 8664 05b4 00       		.byte	0
 8665 05b5 00       		.byte	0
 8666 05b6 71       		.uleb128 0x71
 8667 05b7 34       		.uleb128 0x34
 8668 05b8 00       		.byte	0
 8669 05b9 03       		.uleb128 0x3
 8670 05ba 08       		.uleb128 0x8
 8671 05bb 3A       		.uleb128 0x3a
 8672 05bc 0B       		.uleb128 0xb
 8673 05bd 3B       		.uleb128 0x3b
 8674 05be 0B       		.uleb128 0xb
 8675 05bf 49       		.uleb128 0x49
 8676 05c0 13       		.uleb128 0x13
 8677 05c1 00       		.byte	0
 8678 05c2 00       		.byte	0
 8679 05c3 72       		.uleb128 0x72
 8680 05c4 2E       		.uleb128 0x2e
 8681 05c5 00       		.byte	0
 8682 05c6 3F       		.uleb128 0x3f
 8683 05c7 19       		.uleb128 0x19
 8684 05c8 03       		.uleb128 0x3
 8685 05c9 0E       		.uleb128 0xe
 8686 05ca 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccQR1hla.s 			page 195


 8687 05cb 0B       		.uleb128 0xb
 8688 05cc 3B       		.uleb128 0x3b
 8689 05cd 0B       		.uleb128 0xb
 8690 05ce 6E       		.uleb128 0x6e
 8691 05cf 0E       		.uleb128 0xe
 8692 05d0 11       		.uleb128 0x11
 8693 05d1 01       		.uleb128 0x1
 8694 05d2 12       		.uleb128 0x12
 8695 05d3 06       		.uleb128 0x6
 8696 05d4 40       		.uleb128 0x40
 8697 05d5 18       		.uleb128 0x18
 8698 05d6 9742     		.uleb128 0x2117
 8699 05d8 19       		.uleb128 0x19
 8700 05d9 00       		.byte	0
 8701 05da 00       		.byte	0
 8702 05db 73       		.uleb128 0x73
 8703 05dc 2E       		.uleb128 0x2e
 8704 05dd 01       		.byte	0x1
 8705 05de 3F       		.uleb128 0x3f
 8706 05df 19       		.uleb128 0x19
 8707 05e0 03       		.uleb128 0x3
 8708 05e1 0E       		.uleb128 0xe
 8709 05e2 3A       		.uleb128 0x3a
 8710 05e3 0B       		.uleb128 0xb
 8711 05e4 3B       		.uleb128 0x3b
 8712 05e5 0B       		.uleb128 0xb
 8713 05e6 20       		.uleb128 0x20
 8714 05e7 0B       		.uleb128 0xb
 8715 05e8 01       		.uleb128 0x1
 8716 05e9 13       		.uleb128 0x13
 8717 05ea 00       		.byte	0
 8718 05eb 00       		.byte	0
 8719 05ec 74       		.uleb128 0x74
 8720 05ed 2E       		.uleb128 0x2e
 8721 05ee 01       		.byte	0x1
 8722 05ef 47       		.uleb128 0x47
 8723 05f0 13       		.uleb128 0x13
 8724 05f1 20       		.uleb128 0x20
 8725 05f2 0B       		.uleb128 0xb
 8726 05f3 01       		.uleb128 0x1
 8727 05f4 13       		.uleb128 0x13
 8728 05f5 00       		.byte	0
 8729 05f6 00       		.byte	0
 8730 05f7 75       		.uleb128 0x75
 8731 05f8 2E       		.uleb128 0x2e
 8732 05f9 00       		.byte	0
 8733 05fa 3F       		.uleb128 0x3f
 8734 05fb 19       		.uleb128 0x19
 8735 05fc 3C       		.uleb128 0x3c
 8736 05fd 19       		.uleb128 0x19
 8737 05fe 6E       		.uleb128 0x6e
 8738 05ff 0E       		.uleb128 0xe
 8739 0600 03       		.uleb128 0x3
 8740 0601 0E       		.uleb128 0xe
 8741 0602 3A       		.uleb128 0x3a
 8742 0603 0B       		.uleb128 0xb
 8743 0604 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccQR1hla.s 			page 196


 8744 0605 0B       		.uleb128 0xb
 8745 0606 00       		.byte	0
 8746 0607 00       		.byte	0
 8747 0608 76       		.uleb128 0x76
 8748 0609 2E       		.uleb128 0x2e
 8749 060a 00       		.byte	0
 8750 060b 3F       		.uleb128 0x3f
 8751 060c 19       		.uleb128 0x19
 8752 060d 3C       		.uleb128 0x3c
 8753 060e 19       		.uleb128 0x19
 8754 060f 6E       		.uleb128 0x6e
 8755 0610 0E       		.uleb128 0xe
 8756 0611 03       		.uleb128 0x3
 8757 0612 0E       		.uleb128 0xe
 8758 0613 6E       		.uleb128 0x6e
 8759 0614 0E       		.uleb128 0xe
 8760 0615 00       		.byte	0
 8761 0616 00       		.byte	0
 8762 0617 77       		.uleb128 0x77
 8763 0618 2E       		.uleb128 0x2e
 8764 0619 00       		.byte	0
 8765 061a 3F       		.uleb128 0x3f
 8766 061b 19       		.uleb128 0x19
 8767 061c 3C       		.uleb128 0x3c
 8768 061d 19       		.uleb128 0x19
 8769 061e 6E       		.uleb128 0x6e
 8770 061f 0E       		.uleb128 0xe
 8771 0620 03       		.uleb128 0x3
 8772 0621 0E       		.uleb128 0xe
 8773 0622 3A       		.uleb128 0x3a
 8774 0623 0B       		.uleb128 0xb
 8775 0624 3B       		.uleb128 0x3b
 8776 0625 05       		.uleb128 0x5
 8777 0626 00       		.byte	0
 8778 0627 00       		.byte	0
 8779 0628 78       		.uleb128 0x78
 8780 0629 2E       		.uleb128 0x2e
 8781 062a 00       		.byte	0
 8782 062b 3F       		.uleb128 0x3f
 8783 062c 19       		.uleb128 0x19
 8784 062d 3C       		.uleb128 0x3c
 8785 062e 19       		.uleb128 0x19
 8786 062f 6E       		.uleb128 0x6e
 8787 0630 0E       		.uleb128 0xe
 8788 0631 03       		.uleb128 0x3
 8789 0632 0E       		.uleb128 0xe
 8790 0633 00       		.byte	0
 8791 0634 00       		.byte	0
 8792 0635 79       		.uleb128 0x79
 8793 0636 2E       		.uleb128 0x2e
 8794 0637 00       		.byte	0
 8795 0638 3F       		.uleb128 0x3f
 8796 0639 19       		.uleb128 0x19
 8797 063a 3C       		.uleb128 0x3c
 8798 063b 19       		.uleb128 0x19
 8799 063c 6E       		.uleb128 0x6e
 8800 063d 0E       		.uleb128 0xe
ARM GAS  /tmp/ccQR1hla.s 			page 197


 8801 063e 03       		.uleb128 0x3
 8802 063f 0E       		.uleb128 0xe
 8803 0640 3A       		.uleb128 0x3a
 8804 0641 0B       		.uleb128 0xb
 8805 0642 3B       		.uleb128 0x3b
 8806 0643 0B       		.uleb128 0xb
 8807 0644 6E       		.uleb128 0x6e
 8808 0645 0E       		.uleb128 0xe
 8809 0646 00       		.byte	0
 8810 0647 00       		.byte	0
 8811 0648 00       		.byte	0
 8812              		.section	.debug_loc,"",%progbits
 8813              	.Ldebug_loc0:
 8814              	.LLST0:
 8815 0000 00000000 		.4byte	.LVL0
 8816 0004 44000000 		.4byte	.LVL6
 8817 0008 0100     		.2byte	0x1
 8818 000a 50       		.byte	0x50
 8819 000b 44000000 		.4byte	.LVL6
 8820 000f 74000000 		.4byte	.LVL12
 8821 0013 0400     		.2byte	0x4
 8822 0015 F3       		.byte	0xf3
 8823 0016 01       		.uleb128 0x1
 8824 0017 50       		.byte	0x50
 8825 0018 9F       		.byte	0x9f
 8826 0019 74000000 		.4byte	.LVL12
 8827 001d 8A000000 		.4byte	.LVL14
 8828 0021 0100     		.2byte	0x1
 8829 0023 50       		.byte	0x50
 8830 0024 8A000000 		.4byte	.LVL14
 8831 0028 20040000 		.4byte	.LFE533
 8832 002c 0400     		.2byte	0x4
 8833 002e F3       		.byte	0xf3
 8834 002f 01       		.uleb128 0x1
 8835 0030 50       		.byte	0x50
 8836 0031 9F       		.byte	0x9f
 8837 0032 00000000 		.4byte	0
 8838 0036 00000000 		.4byte	0
 8839              	.LLST1:
 8840 003a 00000000 		.4byte	.LVL0
 8841 003e 32000000 		.4byte	.LVL3
 8842 0042 0200     		.2byte	0x2
 8843 0044 90       		.byte	0x90
 8844 0045 40       		.uleb128 0x40
 8845 0046 74000000 		.4byte	.LVL12
 8846 004a 8A000000 		.4byte	.LVL14
 8847 004e 0200     		.2byte	0x2
 8848 0050 90       		.byte	0x90
 8849 0051 40       		.uleb128 0x40
 8850 0052 00000000 		.4byte	0
 8851 0056 00000000 		.4byte	0
 8852              	.LLST2:
 8853 005a 00000000 		.4byte	.LVL0
 8854 005e 64000000 		.4byte	.LVL10
 8855 0062 0100     		.2byte	0x1
 8856 0064 51       		.byte	0x51
 8857 0065 64000000 		.4byte	.LVL10
ARM GAS  /tmp/ccQR1hla.s 			page 198


 8858 0069 74000000 		.4byte	.LVL12
 8859 006d 0400     		.2byte	0x4
 8860 006f F3       		.byte	0xf3
 8861 0070 01       		.uleb128 0x1
 8862 0071 51       		.byte	0x51
 8863 0072 9F       		.byte	0x9f
 8864 0073 74000000 		.4byte	.LVL12
 8865 0077 99000000 		.4byte	.LVL16-1
 8866 007b 0100     		.2byte	0x1
 8867 007d 51       		.byte	0x51
 8868 007e 99000000 		.4byte	.LVL16-1
 8869 0082 D8000000 		.4byte	.LVL22
 8870 0086 0400     		.2byte	0x4
 8871 0088 F3       		.byte	0xf3
 8872 0089 01       		.uleb128 0x1
 8873 008a 51       		.byte	0x51
 8874 008b 9F       		.byte	0x9f
 8875 008c D8000000 		.4byte	.LVL22
 8876 0090 04010000 		.4byte	.LVL26
 8877 0094 0100     		.2byte	0x1
 8878 0096 51       		.byte	0x51
 8879 0097 04010000 		.4byte	.LVL26
 8880 009b D0010000 		.4byte	.LVL45
 8881 009f 0400     		.2byte	0x4
 8882 00a1 F3       		.byte	0xf3
 8883 00a2 01       		.uleb128 0x1
 8884 00a3 51       		.byte	0x51
 8885 00a4 9F       		.byte	0x9f
 8886 00a5 D0010000 		.4byte	.LVL45
 8887 00a9 E6010000 		.4byte	.LVL47
 8888 00ad 0100     		.2byte	0x1
 8889 00af 51       		.byte	0x51
 8890 00b0 E6010000 		.4byte	.LVL47
 8891 00b4 B6030000 		.4byte	.LVL82
 8892 00b8 0400     		.2byte	0x4
 8893 00ba F3       		.byte	0xf3
 8894 00bb 01       		.uleb128 0x1
 8895 00bc 51       		.byte	0x51
 8896 00bd 9F       		.byte	0x9f
 8897 00be B6030000 		.4byte	.LVL82
 8898 00c2 C4030000 		.4byte	.LVL86
 8899 00c6 0100     		.2byte	0x1
 8900 00c8 51       		.byte	0x51
 8901 00c9 C4030000 		.4byte	.LVL86
 8902 00cd F0030000 		.4byte	.LVL90
 8903 00d1 0400     		.2byte	0x4
 8904 00d3 F3       		.byte	0xf3
 8905 00d4 01       		.uleb128 0x1
 8906 00d5 51       		.byte	0x51
 8907 00d6 9F       		.byte	0x9f
 8908 00d7 F0030000 		.4byte	.LVL90
 8909 00db 0B040000 		.4byte	.LVL92-1
 8910 00df 0100     		.2byte	0x1
 8911 00e1 51       		.byte	0x51
 8912 00e2 0B040000 		.4byte	.LVL92-1
 8913 00e6 20040000 		.4byte	.LFE533
 8914 00ea 0400     		.2byte	0x4
ARM GAS  /tmp/ccQR1hla.s 			page 199


 8915 00ec F3       		.byte	0xf3
 8916 00ed 01       		.uleb128 0x1
 8917 00ee 51       		.byte	0x51
 8918 00ef 9F       		.byte	0x9f
 8919 00f0 00000000 		.4byte	0
 8920 00f4 00000000 		.4byte	0
 8921              	.LLST3:
 8922 00f8 42000000 		.4byte	.LVL5
 8923 00fc 4C000000 		.4byte	.LVL7
 8924 0100 0100     		.2byte	0x1
 8925 0102 52       		.byte	0x52
 8926 0103 4C000000 		.4byte	.LVL7
 8927 0107 50000000 		.4byte	.LVL8
 8928 010b 0200     		.2byte	0x2
 8929 010d 78       		.byte	0x78
 8930 010e 14       		.sleb128 20
 8931 010f 50000000 		.4byte	.LVL8
 8932 0113 69000000 		.4byte	.LVL11-1
 8933 0117 0E00     		.2byte	0xe
 8934 0119 74       		.byte	0x74
 8935 011a 00       		.sleb128 0
 8936 011b 33       		.byte	0x33
 8937 011c 24       		.byte	0x24
 8938 011d 74       		.byte	0x74
 8939 011e 00       		.sleb128 0
 8940 011f 1C       		.byte	0x1c
 8941 0120 32       		.byte	0x32
 8942 0121 24       		.byte	0x24
 8943 0122 75       		.byte	0x75
 8944 0123 00       		.sleb128 0
 8945 0124 22       		.byte	0x22
 8946 0125 23       		.byte	0x23
 8947 0126 14       		.uleb128 0x14
 8948 0127 8A000000 		.4byte	.LVL14
 8949 012b 99000000 		.4byte	.LVL16-1
 8950 012f 0100     		.2byte	0x1
 8951 0131 52       		.byte	0x52
 8952 0132 D8000000 		.4byte	.LVL22
 8953 0136 EC000000 		.4byte	.LVL24
 8954 013a 0100     		.2byte	0x1
 8955 013c 52       		.byte	0x52
 8956 013d EC000000 		.4byte	.LVL24
 8957 0141 10010000 		.4byte	.LVL27
 8958 0145 0E00     		.2byte	0xe
 8959 0147 74       		.byte	0x74
 8960 0148 00       		.sleb128 0
 8961 0149 33       		.byte	0x33
 8962 014a 24       		.byte	0x24
 8963 014b 74       		.byte	0x74
 8964 014c 00       		.sleb128 0
 8965 014d 1C       		.byte	0x1c
 8966 014e 32       		.byte	0x32
 8967 014f 24       		.byte	0x24
 8968 0150 75       		.byte	0x75
 8969 0151 00       		.sleb128 0
 8970 0152 22       		.byte	0x22
 8971 0153 23       		.byte	0x23
ARM GAS  /tmp/ccQR1hla.s 			page 200


 8972 0154 14       		.uleb128 0x14
 8973 0155 D0010000 		.4byte	.LVL45
 8974 0159 FF010000 		.4byte	.LVL50-1
 8975 015d 0200     		.2byte	0x2
 8976 015f 78       		.byte	0x78
 8977 0160 14       		.sleb128 20
 8978 0161 D0020000 		.4byte	.LVL70
 8979 0165 DD020000 		.4byte	.LVL71-1
 8980 0169 0E00     		.2byte	0xe
 8981 016b 74       		.byte	0x74
 8982 016c 00       		.sleb128 0
 8983 016d 33       		.byte	0x33
 8984 016e 24       		.byte	0x24
 8985 016f 74       		.byte	0x74
 8986 0170 00       		.sleb128 0
 8987 0171 1C       		.byte	0x1c
 8988 0172 32       		.byte	0x32
 8989 0173 24       		.byte	0x24
 8990 0174 75       		.byte	0x75
 8991 0175 00       		.sleb128 0
 8992 0176 22       		.byte	0x22
 8993 0177 23       		.byte	0x23
 8994 0178 14       		.uleb128 0x14
 8995 0179 B6030000 		.4byte	.LVL82
 8996 017d BE030000 		.4byte	.LVL84
 8997 0181 0100     		.2byte	0x1
 8998 0183 52       		.byte	0x52
 8999 0184 BE030000 		.4byte	.LVL84
 9000 0188 C4030000 		.4byte	.LVL86
 9001 018c 0200     		.2byte	0x2
 9002 018e 78       		.byte	0x78
 9003 018f 14       		.sleb128 20
 9004 0190 F0030000 		.4byte	.LVL90
 9005 0194 0B040000 		.4byte	.LVL92-1
 9006 0198 0E00     		.2byte	0xe
 9007 019a 74       		.byte	0x74
 9008 019b 00       		.sleb128 0
 9009 019c 33       		.byte	0x33
 9010 019d 24       		.byte	0x24
 9011 019e 74       		.byte	0x74
 9012 019f 00       		.sleb128 0
 9013 01a0 1C       		.byte	0x1c
 9014 01a1 32       		.byte	0x32
 9015 01a2 24       		.byte	0x24
 9016 01a3 75       		.byte	0x75
 9017 01a4 00       		.sleb128 0
 9018 01a5 22       		.byte	0x22
 9019 01a6 23       		.byte	0x23
 9020 01a7 14       		.uleb128 0x14
 9021 01a8 00000000 		.4byte	0
 9022 01ac 00000000 		.4byte	0
 9023              	.LLST4:
 9024 01b0 24000000 		.4byte	.LVL2
 9025 01b4 32000000 		.4byte	.LVL3
 9026 01b8 0600     		.2byte	0x6
 9027 01ba 9E       		.byte	0x9e
 9028 01bb 04       		.uleb128 0x4
ARM GAS  /tmp/ccQR1hla.s 			page 201


 9029 01bc 0000803F 		.4byte	0x3f800000
 9030 01c0 76000000 		.4byte	.LVL13
 9031 01c4 8A000000 		.4byte	.LVL14
 9032 01c8 0600     		.2byte	0x6
 9033 01ca 9E       		.byte	0x9e
 9034 01cb 04       		.uleb128 0x4
 9035 01cc 0000803F 		.4byte	0x3f800000
 9036 01d0 00000000 		.4byte	0
 9037 01d4 00000000 		.4byte	0
 9038              	.LLST5:
 9039 01d8 24000000 		.4byte	.LVL2
 9040 01dc 32000000 		.4byte	.LVL3
 9041 01e0 0600     		.2byte	0x6
 9042 01e2 9E       		.byte	0x9e
 9043 01e3 04       		.uleb128 0x4
 9044 01e4 00000000 		.4byte	0
 9045 01e8 76000000 		.4byte	.LVL13
 9046 01ec 8A000000 		.4byte	.LVL14
 9047 01f0 0600     		.2byte	0x6
 9048 01f2 9E       		.byte	0x9e
 9049 01f3 04       		.uleb128 0x4
 9050 01f4 00000000 		.4byte	0
 9051 01f8 00000000 		.4byte	0
 9052 01fc 00000000 		.4byte	0
 9053              	.LLST6:
 9054 0200 24000000 		.4byte	.LVL2
 9055 0204 32000000 		.4byte	.LVL3
 9056 0208 0200     		.2byte	0x2
 9057 020a 90       		.byte	0x90
 9058 020b 40       		.uleb128 0x40
 9059 020c 76000000 		.4byte	.LVL13
 9060 0210 8A000000 		.4byte	.LVL14
 9061 0214 0200     		.2byte	0x2
 9062 0216 90       		.byte	0x90
 9063 0217 40       		.uleb128 0x40
 9064 0218 00000000 		.4byte	0
 9065 021c 00000000 		.4byte	0
 9066              	.LLST7:
 9067 0220 24000000 		.4byte	.LVL2
 9068 0224 32000000 		.4byte	.LVL3
 9069 0228 0600     		.2byte	0x6
 9070 022a 9E       		.byte	0x9e
 9071 022b 04       		.uleb128 0x4
 9072 022c 0000803F 		.4byte	0x3f800000
 9073 0230 00000000 		.4byte	0
 9074 0234 00000000 		.4byte	0
 9075              	.LLST8:
 9076 0238 24000000 		.4byte	.LVL2
 9077 023c 32000000 		.4byte	.LVL3
 9078 0240 0200     		.2byte	0x2
 9079 0242 90       		.byte	0x90
 9080 0243 40       		.uleb128 0x40
 9081 0244 00000000 		.4byte	0
 9082 0248 00000000 		.4byte	0
 9083              	.LLST9:
 9084 024c 76000000 		.4byte	.LVL13
 9085 0250 8A000000 		.4byte	.LVL14
ARM GAS  /tmp/ccQR1hla.s 			page 202


 9086 0254 0600     		.2byte	0x6
 9087 0256 9E       		.byte	0x9e
 9088 0257 04       		.uleb128 0x4
 9089 0258 00000000 		.4byte	0
 9090 025c 00000000 		.4byte	0
 9091 0260 00000000 		.4byte	0
 9092              	.LLST10:
 9093 0264 69000000 		.4byte	.LVL11-1
 9094 0268 6A000000 		.4byte	.LVL11
 9095 026c 1300     		.2byte	0x13
 9096 026e 33       		.byte	0x33
 9097 026f 34       		.byte	0x34
 9098 0270 F5       		.byte	0xf5
 9099 0271 50       		.uleb128 0x50
 9100 0272 25       		.uleb128 0x25
 9101 0273 F4       		.byte	0xf4
 9102 0274 25       		.uleb128 0x25
 9103 0275 04       		.byte	0x4
 9104 0276 0000003F 		.4byte	0x3f000000
 9105 027a 2D       		.byte	0x2d
 9106 027b 28       		.byte	0x28
 9107 027c 0100     		.2byte	0x1
 9108 027e 16       		.byte	0x16
 9109 027f 13       		.byte	0x13
 9110 0280 9F       		.byte	0x9f
 9111 0281 00000000 		.4byte	0
 9112 0285 00000000 		.4byte	0
 9113              	.LLST11:
 9114 0289 50000000 		.4byte	.LVL8
 9115 028d 6A000000 		.4byte	.LVL11
 9116 0291 0100     		.2byte	0x1
 9117 0293 54       		.byte	0x54
 9118 0294 00000000 		.4byte	0
 9119 0298 00000000 		.4byte	0
 9120              	.LLST12:
 9121 029c 8A000000 		.4byte	.LVL14
 9122 02a0 CE000000 		.4byte	.LVL21
 9123 02a4 0200     		.2byte	0x2
 9124 02a6 90       		.byte	0x90
 9125 02a7 50       		.uleb128 0x50
 9126 02a8 96020000 		.4byte	.LVL63
 9127 02ac AC020000 		.4byte	.LVL67
 9128 02b0 0200     		.2byte	0x2
 9129 02b2 90       		.byte	0x90
 9130 02b3 50       		.uleb128 0x50
 9131 02b4 00000000 		.4byte	0
 9132 02b8 00000000 		.4byte	0
 9133              	.LLST13:
 9134 02bc 96000000 		.4byte	.LVL15
 9135 02c0 CE000000 		.4byte	.LVL21
 9136 02c4 0100     		.2byte	0x1
 9137 02c6 54       		.byte	0x54
 9138 02c7 96020000 		.4byte	.LVL63
 9139 02cb AC020000 		.4byte	.LVL67
 9140 02cf 0100     		.2byte	0x1
 9141 02d1 54       		.byte	0x54
 9142 02d2 00000000 		.4byte	0
ARM GAS  /tmp/ccQR1hla.s 			page 203


 9143 02d6 00000000 		.4byte	0
 9144              	.LLST14:
 9145 02da B8000000 		.4byte	.LVL18
 9146 02de C4000000 		.4byte	.LVL20
 9147 02e2 0400     		.2byte	0x4
 9148 02e4 0A       		.byte	0xa
 9149 02e5 FF0F     		.2byte	0xfff
 9150 02e7 9F       		.byte	0x9f
 9151 02e8 00000000 		.4byte	0
 9152 02ec 00000000 		.4byte	0
 9153              	.LLST15:
 9154 02f0 B8000000 		.4byte	.LVL18
 9155 02f4 C4000000 		.4byte	.LVL20
 9156 02f8 0200     		.2byte	0x2
 9157 02fa 90       		.byte	0x90
 9158 02fb 50       		.uleb128 0x50
 9159 02fc 00000000 		.4byte	0
 9160 0300 00000000 		.4byte	0
 9161              	.LLST16:
 9162 0304 B8000000 		.4byte	.LVL18
 9163 0308 C0000000 		.4byte	.LVL19
 9164 030c 0C00     		.2byte	0xc
 9165 030e F5       		.byte	0xf5
 9166 030f 50       		.uleb128 0x50
 9167 0310 25       		.uleb128 0x25
 9168 0311 F4       		.byte	0xf4
 9169 0312 25       		.uleb128 0x25
 9170 0313 04       		.byte	0x4
 9171 0314 00F07F45 		.4byte	0x457ff000
 9172 0318 1E       		.byte	0x1e
 9173 0319 9F       		.byte	0x9f
 9174 031a C0000000 		.4byte	.LVL19
 9175 031e C3000000 		.4byte	.LVL20-1
 9176 0322 0200     		.2byte	0x2
 9177 0324 90       		.byte	0x90
 9178 0325 40       		.uleb128 0x40
 9179 0326 C3000000 		.4byte	.LVL20-1
 9180 032a C4000000 		.4byte	.LVL20
 9181 032e 0C00     		.2byte	0xc
 9182 0330 F5       		.byte	0xf5
 9183 0331 50       		.uleb128 0x50
 9184 0332 25       		.uleb128 0x25
 9185 0333 F4       		.byte	0xf4
 9186 0334 25       		.uleb128 0x25
 9187 0335 04       		.byte	0x4
 9188 0336 00F07F45 		.4byte	0x457ff000
 9189 033a 1E       		.byte	0x1e
 9190 033b 9F       		.byte	0x9f
 9191 033c 00000000 		.4byte	0
 9192 0340 00000000 		.4byte	0
 9193              	.LLST17:
 9194 0344 D8000000 		.4byte	.LVL22
 9195 0348 62010000 		.4byte	.LVL34
 9196 034c 0100     		.2byte	0x1
 9197 034e 56       		.byte	0x56
 9198 034f D0020000 		.4byte	.LVL70
 9199 0353 68030000 		.4byte	.LVL75
ARM GAS  /tmp/ccQR1hla.s 			page 204


 9200 0357 0100     		.2byte	0x1
 9201 0359 56       		.byte	0x56
 9202 035a B6030000 		.4byte	.LVL82
 9203 035e BC030000 		.4byte	.LVL83
 9204 0362 0100     		.2byte	0x1
 9205 0364 56       		.byte	0x56
 9206 0365 F0030000 		.4byte	.LVL90
 9207 0369 20040000 		.4byte	.LFE533
 9208 036d 0100     		.2byte	0x1
 9209 036f 56       		.byte	0x56
 9210 0370 00000000 		.4byte	0
 9211 0374 00000000 		.4byte	0
 9212              	.LLST18:
 9213 0378 D8000000 		.4byte	.LVL22
 9214 037c D0010000 		.4byte	.LVL45
 9215 0380 0200     		.2byte	0x2
 9216 0382 90       		.byte	0x90
 9217 0383 50       		.uleb128 0x50
 9218 0384 D0020000 		.4byte	.LVL70
 9219 0388 BC030000 		.4byte	.LVL83
 9220 038c 0200     		.2byte	0x2
 9221 038e 90       		.byte	0x90
 9222 038f 50       		.uleb128 0x50
 9223 0390 F0030000 		.4byte	.LVL90
 9224 0394 20040000 		.4byte	.LFE533
 9225 0398 0200     		.2byte	0x2
 9226 039a 90       		.byte	0x90
 9227 039b 50       		.uleb128 0x50
 9228 039c 00000000 		.4byte	0
 9229 03a0 00000000 		.4byte	0
 9230              	.LLST19:
 9231 03a4 DC000000 		.4byte	.LVL23
 9232 03a8 D0010000 		.4byte	.LVL45
 9233 03ac 0100     		.2byte	0x1
 9234 03ae 58       		.byte	0x58
 9235 03af D0020000 		.4byte	.LVL70
 9236 03b3 BC030000 		.4byte	.LVL83
 9237 03b7 0100     		.2byte	0x1
 9238 03b9 58       		.byte	0x58
 9239 03ba F0030000 		.4byte	.LVL90
 9240 03be 20040000 		.4byte	.LFE533
 9241 03c2 0100     		.2byte	0x1
 9242 03c4 58       		.byte	0x58
 9243 03c5 00000000 		.4byte	0
 9244 03c9 00000000 		.4byte	0
 9245              	.LLST20:
 9246 03cd FA000000 		.4byte	.LVL25
 9247 03d1 62010000 		.4byte	.LVL34
 9248 03d5 0100     		.2byte	0x1
 9249 03d7 59       		.byte	0x59
 9250 03d8 62010000 		.4byte	.LVL34
 9251 03dc D0010000 		.4byte	.LVL45
 9252 03e0 0100     		.2byte	0x1
 9253 03e2 54       		.byte	0x54
 9254 03e3 D0020000 		.4byte	.LVL70
 9255 03e7 68030000 		.4byte	.LVL75
 9256 03eb 0100     		.2byte	0x1
ARM GAS  /tmp/ccQR1hla.s 			page 205


 9257 03ed 59       		.byte	0x59
 9258 03ee 68030000 		.4byte	.LVL75
 9259 03f2 78030000 		.4byte	.LVL77
 9260 03f6 0100     		.2byte	0x1
 9261 03f8 54       		.byte	0x54
 9262 03f9 78030000 		.4byte	.LVL77
 9263 03fd B6030000 		.4byte	.LVL82
 9264 0401 0100     		.2byte	0x1
 9265 0403 59       		.byte	0x59
 9266 0404 F0030000 		.4byte	.LVL90
 9267 0408 20040000 		.4byte	.LFE533
 9268 040c 0100     		.2byte	0x1
 9269 040e 59       		.byte	0x59
 9270 040f 00000000 		.4byte	0
 9271 0413 00000000 		.4byte	0
 9272              	.LLST21:
 9273 0417 10010000 		.4byte	.LVL27
 9274 041b 62010000 		.4byte	.LVL34
 9275 041f 0A00     		.2byte	0xa
 9276 0421 76       		.byte	0x76
 9277 0422 00       		.sleb128 0
 9278 0423 0A       		.byte	0xa
 9279 0424 FFFF     		.2byte	0xffff
 9280 0426 1A       		.byte	0x1a
 9281 0427 08       		.byte	0x8
 9282 0428 60       		.byte	0x60
 9283 0429 2B       		.byte	0x2b
 9284 042a 9F       		.byte	0x9f
 9285 042b 00000000 		.4byte	0
 9286 042f 00000000 		.4byte	0
 9287              	.LLST22:
 9288 0433 28010000 		.4byte	.LVL28
 9289 0437 D0010000 		.4byte	.LVL45
 9290 043b 0100     		.2byte	0x1
 9291 043d 5B       		.byte	0x5b
 9292 043e 68030000 		.4byte	.LVL75
 9293 0442 B6030000 		.4byte	.LVL82
 9294 0446 0100     		.2byte	0x1
 9295 0448 5B       		.byte	0x5b
 9296 0449 00000000 		.4byte	0
 9297 044d 00000000 		.4byte	0
 9298              	.LLST23:
 9299 0451 46010000 		.4byte	.LVL32
 9300 0455 62010000 		.4byte	.LVL34
 9301 0459 0200     		.2byte	0x2
 9302 045b 30       		.byte	0x30
 9303 045c 9F       		.byte	0x9f
 9304 045d B2010000 		.4byte	.LVL43
 9305 0461 D0010000 		.4byte	.LVL45
 9306 0465 0100     		.2byte	0x1
 9307 0467 59       		.byte	0x59
 9308 0468 00000000 		.4byte	0
 9309 046c 00000000 		.4byte	0
 9310              	.LLST24:
 9311 0470 6E010000 		.4byte	.LVL35
 9312 0474 D0010000 		.4byte	.LVL45
 9313 0478 0100     		.2byte	0x1
ARM GAS  /tmp/ccQR1hla.s 			page 206


 9314 047a 5A       		.byte	0x5a
 9315 047b 68030000 		.4byte	.LVL75
 9316 047f 6C030000 		.4byte	.LVL76
 9317 0483 0100     		.2byte	0x1
 9318 0485 5A       		.byte	0x5a
 9319 0486 00000000 		.4byte	0
 9320 048a 00000000 		.4byte	0
 9321              	.LLST25:
 9322 048e 94010000 		.4byte	.LVL37
 9323 0492 9C010000 		.4byte	.LVL38
 9324 0496 0200     		.2byte	0x2
 9325 0498 30       		.byte	0x30
 9326 0499 9F       		.byte	0x9f
 9327 049a 9C010000 		.4byte	.LVL38
 9328 049e A2010000 		.4byte	.LVL39
 9329 04a2 0700     		.2byte	0x7
 9330 04a4 0A       		.byte	0xa
 9331 04a5 E903     		.2byte	0x3e9
 9332 04a7 71       		.byte	0x71
 9333 04a8 00       		.sleb128 0
 9334 04a9 1C       		.byte	0x1c
 9335 04aa 9F       		.byte	0x9f
 9336 04ab A2010000 		.4byte	.LVL39
 9337 04af A4010000 		.4byte	.LVL40
 9338 04b3 0700     		.2byte	0x7
 9339 04b5 0A       		.byte	0xa
 9340 04b6 E803     		.2byte	0x3e8
 9341 04b8 71       		.byte	0x71
 9342 04b9 00       		.sleb128 0
 9343 04ba 1C       		.byte	0x1c
 9344 04bb 9F       		.byte	0x9f
 9345 04bc A4010000 		.4byte	.LVL40
 9346 04c0 AE010000 		.4byte	.LVL42
 9347 04c4 0700     		.2byte	0x7
 9348 04c6 0A       		.byte	0xa
 9349 04c7 E903     		.2byte	0x3e9
 9350 04c9 71       		.byte	0x71
 9351 04ca 00       		.sleb128 0
 9352 04cb 1C       		.byte	0x1c
 9353 04cc 9F       		.byte	0x9f
 9354 04cd 00000000 		.4byte	0
 9355 04d1 00000000 		.4byte	0
 9356              	.LLST26:
 9357 04d5 9C010000 		.4byte	.LVL38
 9358 04d9 A4010000 		.4byte	.LVL40
 9359 04dd 0100     		.2byte	0x1
 9360 04df 53       		.byte	0x53
 9361 04e0 AA010000 		.4byte	.LVL41
 9362 04e4 C1010000 		.4byte	.LVL44-1
 9363 04e8 0100     		.2byte	0x1
 9364 04ea 53       		.byte	0x53
 9365 04eb 00000000 		.4byte	0
 9366 04ef 00000000 		.4byte	0
 9367              	.LLST27:
 9368 04f3 28010000 		.4byte	.LVL28
 9369 04f7 3E010000 		.4byte	.LVL31
 9370 04fb 0100     		.2byte	0x1
ARM GAS  /tmp/ccQR1hla.s 			page 207


 9371 04fd 5B       		.byte	0x5b
 9372 04fe 00000000 		.4byte	0
 9373 0502 00000000 		.4byte	0
 9374              	.LLST28:
 9375 0506 28010000 		.4byte	.LVL28
 9376 050a 3E010000 		.4byte	.LVL31
 9377 050e 0200     		.2byte	0x2
 9378 0510 90       		.byte	0x90
 9379 0511 50       		.uleb128 0x50
 9380 0512 00000000 		.4byte	0
 9381 0516 00000000 		.4byte	0
 9382              	.LLST29:
 9383 051a 28010000 		.4byte	.LVL28
 9384 051e 36010000 		.4byte	.LVL29
 9385 0522 0B00     		.2byte	0xb
 9386 0524 7B       		.byte	0x7b
 9387 0525 00       		.sleb128 0
 9388 0526 F7       		.byte	0xf7
 9389 0527 33       		.uleb128 0x33
 9390 0528 F7       		.byte	0xf7
 9391 0529 25       		.uleb128 0x25
 9392 052a F5       		.byte	0xf5
 9393 052b 50       		.uleb128 0x50
 9394 052c 25       		.uleb128 0x25
 9395 052d 1E       		.byte	0x1e
 9396 052e 9F       		.byte	0x9f
 9397 052f 36010000 		.4byte	.LVL29
 9398 0533 39010000 		.4byte	.LVL30-1
 9399 0537 0200     		.2byte	0x2
 9400 0539 90       		.byte	0x90
 9401 053a 40       		.uleb128 0x40
 9402 053b 39010000 		.4byte	.LVL30-1
 9403 053f 3E010000 		.4byte	.LVL31
 9404 0543 0B00     		.2byte	0xb
 9405 0545 7B       		.byte	0x7b
 9406 0546 00       		.sleb128 0
 9407 0547 F7       		.byte	0xf7
 9408 0548 33       		.uleb128 0x33
 9409 0549 F7       		.byte	0xf7
 9410 054a 25       		.uleb128 0x25
 9411 054b F5       		.byte	0xf5
 9412 054c 50       		.uleb128 0x50
 9413 054d 25       		.uleb128 0x25
 9414 054e 1E       		.byte	0x1e
 9415 054f 9F       		.byte	0x9f
 9416 0550 00000000 		.4byte	0
 9417 0554 00000000 		.4byte	0
 9418              	.LLST30:
 9419 0558 04040000 		.4byte	.LVL91
 9420 055c 0B040000 		.4byte	.LVL92-1
 9421 0560 0700     		.2byte	0x7
 9422 0562 73       		.byte	0x73
 9423 0563 00       		.sleb128 0
 9424 0564 0A       		.byte	0xa
 9425 0565 FFFF     		.2byte	0xffff
 9426 0567 1A       		.byte	0x1a
 9427 0568 9F       		.byte	0x9f
ARM GAS  /tmp/ccQR1hla.s 			page 208


 9428 0569 00000000 		.4byte	0
 9429 056d 00000000 		.4byte	0
 9430              	.LLST31:
 9431 0571 04040000 		.4byte	.LVL91
 9432 0575 0C040000 		.4byte	.LVL92
 9433 0579 0200     		.2byte	0x2
 9434 057b 90       		.byte	0x90
 9435 057c 50       		.uleb128 0x50
 9436 057d 00000000 		.4byte	0
 9437 0581 00000000 		.4byte	0
 9438              	.LLST32:
 9439 0585 04040000 		.4byte	.LVL91
 9440 0589 0B040000 		.4byte	.LVL92-1
 9441 058d 0B00     		.2byte	0xb
 9442 058f 73       		.byte	0x73
 9443 0590 00       		.sleb128 0
 9444 0591 F7       		.byte	0xf7
 9445 0592 3A       		.uleb128 0x3a
 9446 0593 F7       		.byte	0xf7
 9447 0594 25       		.uleb128 0x25
 9448 0595 F5       		.byte	0xf5
 9449 0596 50       		.uleb128 0x50
 9450 0597 25       		.uleb128 0x25
 9451 0598 1E       		.byte	0x1e
 9452 0599 9F       		.byte	0x9f
 9453 059a 00000000 		.4byte	0
 9454 059e 00000000 		.4byte	0
 9455              	.LLST33:
 9456 05a2 D0010000 		.4byte	.LVL45
 9457 05a6 96020000 		.4byte	.LVL63
 9458 05aa 0100     		.2byte	0x1
 9459 05ac 56       		.byte	0x56
 9460 05ad AC020000 		.4byte	.LVL67
 9461 05b1 D0020000 		.4byte	.LVL70
 9462 05b5 0100     		.2byte	0x1
 9463 05b7 56       		.byte	0x56
 9464 05b8 BE030000 		.4byte	.LVL84
 9465 05bc C2030000 		.4byte	.LVL85
 9466 05c0 0100     		.2byte	0x1
 9467 05c2 56       		.byte	0x56
 9468 05c3 C4030000 		.4byte	.LVL86
 9469 05c7 F0030000 		.4byte	.LVL90
 9470 05cb 0100     		.2byte	0x1
 9471 05cd 56       		.byte	0x56
 9472 05ce 00000000 		.4byte	0
 9473 05d2 00000000 		.4byte	0
 9474              	.LLST34:
 9475 05d6 D0010000 		.4byte	.LVL45
 9476 05da 96020000 		.4byte	.LVL63
 9477 05de 0200     		.2byte	0x2
 9478 05e0 90       		.byte	0x90
 9479 05e1 50       		.uleb128 0x50
 9480 05e2 AC020000 		.4byte	.LVL67
 9481 05e6 D0020000 		.4byte	.LVL70
 9482 05ea 0200     		.2byte	0x2
 9483 05ec 90       		.byte	0x90
 9484 05ed 50       		.uleb128 0x50
ARM GAS  /tmp/ccQR1hla.s 			page 209


 9485 05ee BE030000 		.4byte	.LVL84
 9486 05f2 C2030000 		.4byte	.LVL85
 9487 05f6 0200     		.2byte	0x2
 9488 05f8 90       		.byte	0x90
 9489 05f9 50       		.uleb128 0x50
 9490 05fa C4030000 		.4byte	.LVL86
 9491 05fe F0030000 		.4byte	.LVL90
 9492 0602 0200     		.2byte	0x2
 9493 0604 90       		.byte	0x90
 9494 0605 50       		.uleb128 0x50
 9495 0606 00000000 		.4byte	0
 9496 060a 00000000 		.4byte	0
 9497              	.LLST35:
 9498 060e D8010000 		.4byte	.LVL46
 9499 0612 FF010000 		.4byte	.LVL50-1
 9500 0616 0100     		.2byte	0x1
 9501 0618 53       		.byte	0x53
 9502 0619 FF010000 		.4byte	.LVL50-1
 9503 061d 3E020000 		.4byte	.LVL54
 9504 0621 0200     		.2byte	0x2
 9505 0623 7D       		.byte	0x7d
 9506 0624 00       		.sleb128 0
 9507 0625 BE030000 		.4byte	.LVL84
 9508 0629 C2030000 		.4byte	.LVL85
 9509 062d 0100     		.2byte	0x1
 9510 062f 53       		.byte	0x53
 9511 0630 00000000 		.4byte	0
 9512 0634 00000000 		.4byte	0
 9513              	.LLST36:
 9514 0638 EC010000 		.4byte	.LVL48
 9515 063c 6C020000 		.4byte	.LVL58
 9516 0640 0100     		.2byte	0x1
 9517 0642 59       		.byte	0x59
 9518 0643 6C020000 		.4byte	.LVL58
 9519 0647 6F020000 		.4byte	.LVL59-1
 9520 064b 0100     		.2byte	0x1
 9521 064d 50       		.byte	0x50
 9522 064e 6F020000 		.4byte	.LVL59-1
 9523 0652 96020000 		.4byte	.LVL63
 9524 0656 0100     		.2byte	0x1
 9525 0658 59       		.byte	0x59
 9526 0659 AC020000 		.4byte	.LVL67
 9527 065d BA020000 		.4byte	.LVL68
 9528 0661 0100     		.2byte	0x1
 9529 0663 59       		.byte	0x59
 9530 0664 BA020000 		.4byte	.LVL68
 9531 0668 BD020000 		.4byte	.LVL69-1
 9532 066c 0100     		.2byte	0x1
 9533 066e 50       		.byte	0x50
 9534 066f BD020000 		.4byte	.LVL69-1
 9535 0673 D0020000 		.4byte	.LVL70
 9536 0677 0100     		.2byte	0x1
 9537 0679 59       		.byte	0x59
 9538 067a C4030000 		.4byte	.LVL86
 9539 067e C7030000 		.4byte	.LVL87-1
 9540 0682 0100     		.2byte	0x1
 9541 0684 50       		.byte	0x50
ARM GAS  /tmp/ccQR1hla.s 			page 210


 9542 0685 C7030000 		.4byte	.LVL87-1
 9543 0689 DA030000 		.4byte	.LVL88
 9544 068d 0100     		.2byte	0x1
 9545 068f 59       		.byte	0x59
 9546 0690 DA030000 		.4byte	.LVL88
 9547 0694 DD030000 		.4byte	.LVL89-1
 9548 0698 0100     		.2byte	0x1
 9549 069a 50       		.byte	0x50
 9550 069b DD030000 		.4byte	.LVL89-1
 9551 069f F0030000 		.4byte	.LVL90
 9552 06a3 0100     		.2byte	0x1
 9553 06a5 59       		.byte	0x59
 9554 06a6 00000000 		.4byte	0
 9555 06aa 00000000 		.4byte	0
 9556              	.LLST37:
 9557 06ae F0010000 		.4byte	.LVL49
 9558 06b2 6C020000 		.4byte	.LVL58
 9559 06b6 0100     		.2byte	0x1
 9560 06b8 5A       		.byte	0x5a
 9561 06b9 6C020000 		.4byte	.LVL58
 9562 06bd 6F020000 		.4byte	.LVL59-1
 9563 06c1 0100     		.2byte	0x1
 9564 06c3 51       		.byte	0x51
 9565 06c4 6F020000 		.4byte	.LVL59-1
 9566 06c8 96020000 		.4byte	.LVL63
 9567 06cc 0100     		.2byte	0x1
 9568 06ce 5A       		.byte	0x5a
 9569 06cf AC020000 		.4byte	.LVL67
 9570 06d3 BA020000 		.4byte	.LVL68
 9571 06d7 0100     		.2byte	0x1
 9572 06d9 5A       		.byte	0x5a
 9573 06da BA020000 		.4byte	.LVL68
 9574 06de BD020000 		.4byte	.LVL69-1
 9575 06e2 0100     		.2byte	0x1
 9576 06e4 51       		.byte	0x51
 9577 06e5 BD020000 		.4byte	.LVL69-1
 9578 06e9 D0020000 		.4byte	.LVL70
 9579 06ed 0100     		.2byte	0x1
 9580 06ef 5A       		.byte	0x5a
 9581 06f0 C4030000 		.4byte	.LVL86
 9582 06f4 C7030000 		.4byte	.LVL87-1
 9583 06f8 0100     		.2byte	0x1
 9584 06fa 51       		.byte	0x51
 9585 06fb C7030000 		.4byte	.LVL87-1
 9586 06ff DA030000 		.4byte	.LVL88
 9587 0703 0100     		.2byte	0x1
 9588 0705 5A       		.byte	0x5a
 9589 0706 DA030000 		.4byte	.LVL88
 9590 070a DD030000 		.4byte	.LVL89-1
 9591 070e 0100     		.2byte	0x1
 9592 0710 51       		.byte	0x51
 9593 0711 DD030000 		.4byte	.LVL89-1
 9594 0715 F0030000 		.4byte	.LVL90
 9595 0719 0100     		.2byte	0x1
 9596 071b 5A       		.byte	0x5a
 9597 071c 00000000 		.4byte	0
 9598 0720 00000000 		.4byte	0
ARM GAS  /tmp/ccQR1hla.s 			page 211


 9599              	.LLST38:
 9600 0724 F0010000 		.4byte	.LVL49
 9601 0728 96020000 		.4byte	.LVL63
 9602 072c 0A00     		.2byte	0xa
 9603 072e 76       		.byte	0x76
 9604 072f 00       		.sleb128 0
 9605 0730 40       		.byte	0x40
 9606 0731 24       		.byte	0x24
 9607 0732 7B       		.byte	0x7b
 9608 0733 00       		.sleb128 0
 9609 0734 40       		.byte	0x40
 9610 0735 24       		.byte	0x24
 9611 0736 2E       		.byte	0x2e
 9612 0737 9F       		.byte	0x9f
 9613 0738 AC020000 		.4byte	.LVL67
 9614 073c D0020000 		.4byte	.LVL70
 9615 0740 0A00     		.2byte	0xa
 9616 0742 76       		.byte	0x76
 9617 0743 00       		.sleb128 0
 9618 0744 40       		.byte	0x40
 9619 0745 24       		.byte	0x24
 9620 0746 7B       		.byte	0x7b
 9621 0747 00       		.sleb128 0
 9622 0748 40       		.byte	0x40
 9623 0749 24       		.byte	0x24
 9624 074a 2E       		.byte	0x2e
 9625 074b 9F       		.byte	0x9f
 9626 074c C4030000 		.4byte	.LVL86
 9627 0750 F0030000 		.4byte	.LVL90
 9628 0754 0A00     		.2byte	0xa
 9629 0756 76       		.byte	0x76
 9630 0757 00       		.sleb128 0
 9631 0758 40       		.byte	0x40
 9632 0759 24       		.byte	0x24
 9633 075a 7B       		.byte	0x7b
 9634 075b 00       		.sleb128 0
 9635 075c 40       		.byte	0x40
 9636 075d 24       		.byte	0x24
 9637 075e 2E       		.byte	0x2e
 9638 075f 9F       		.byte	0x9f
 9639 0760 00000000 		.4byte	0
 9640 0764 00000000 		.4byte	0
 9641              	.LLST39:
 9642 0768 34020000 		.4byte	.LVL53
 9643 076c 3E020000 		.4byte	.LVL54
 9644 0770 0200     		.2byte	0x2
 9645 0772 34       		.byte	0x34
 9646 0773 9F       		.byte	0x9f
 9647 0774 00000000 		.4byte	0
 9648 0778 00000000 		.4byte	0
 9649              	.LLST40:
 9650 077c 34020000 		.4byte	.LVL53
 9651 0780 3E020000 		.4byte	.LVL54
 9652 0784 0200     		.2byte	0x2
 9653 0786 7D       		.byte	0x7d
 9654 0787 00       		.sleb128 0
 9655 0788 00000000 		.4byte	0
ARM GAS  /tmp/ccQR1hla.s 			page 212


 9656 078c 00000000 		.4byte	0
 9657              	.LLST41:
 9658 0790 34020000 		.4byte	.LVL53
 9659 0794 3E020000 		.4byte	.LVL54
 9660 0798 0100     		.2byte	0x1
 9661 079a 59       		.byte	0x59
 9662 079b 00000000 		.4byte	0
 9663 079f 00000000 		.4byte	0
 9664              	.LLST42:
 9665 07a3 46020000 		.4byte	.LVL55
 9666 07a7 5B020000 		.4byte	.LVL57-1
 9667 07ab 0100     		.2byte	0x1
 9668 07ad 50       		.byte	0x50
 9669 07ae 00000000 		.4byte	0
 9670 07b2 00000000 		.4byte	0
 9671              	.LLST43:
 9672 07b6 46020000 		.4byte	.LVL55
 9673 07ba 5C020000 		.4byte	.LVL57
 9674 07be 0200     		.2byte	0x2
 9675 07c0 90       		.byte	0x90
 9676 07c1 50       		.uleb128 0x50
 9677 07c2 00000000 		.4byte	0
 9678 07c6 00000000 		.4byte	0
 9679              	.LLST44:
 9680 07ca 46020000 		.4byte	.LVL55
 9681 07ce 58020000 		.4byte	.LVL56
 9682 07d2 0B00     		.2byte	0xb
 9683 07d4 70       		.byte	0x70
 9684 07d5 00       		.sleb128 0
 9685 07d6 F7       		.byte	0xf7
 9686 07d7 2C       		.uleb128 0x2c
 9687 07d8 F7       		.byte	0xf7
 9688 07d9 25       		.uleb128 0x25
 9689 07da F5       		.byte	0xf5
 9690 07db 50       		.uleb128 0x50
 9691 07dc 25       		.uleb128 0x25
 9692 07dd 1E       		.byte	0x1e
 9693 07de 9F       		.byte	0x9f
 9694 07df 58020000 		.4byte	.LVL56
 9695 07e3 5B020000 		.4byte	.LVL57-1
 9696 07e7 0200     		.2byte	0x2
 9697 07e9 90       		.byte	0x90
 9698 07ea 40       		.uleb128 0x40
 9699 07eb 00000000 		.4byte	0
 9700 07ef 00000000 		.4byte	0
 9701              	.LLST45:
 9702 07f3 70020000 		.4byte	.LVL59
 9703 07f7 80020000 		.4byte	.LVL60
 9704 07fb 0400     		.2byte	0x4
 9705 07fd 48       		.byte	0x48
 9706 07fe 3E       		.byte	0x3e
 9707 07ff 24       		.byte	0x24
 9708 0800 9F       		.byte	0x9f
 9709 0801 00000000 		.4byte	0
 9710 0805 00000000 		.4byte	0
 9711              	.LLST46:
 9712 0809 70020000 		.4byte	.LVL59
ARM GAS  /tmp/ccQR1hla.s 			page 213


 9713 080d 80020000 		.4byte	.LVL60
 9714 0811 0100     		.2byte	0x1
 9715 0813 5A       		.byte	0x5a
 9716 0814 00000000 		.4byte	0
 9717 0818 00000000 		.4byte	0
 9718              	.LLST47:
 9719 081c 70020000 		.4byte	.LVL59
 9720 0820 80020000 		.4byte	.LVL60
 9721 0824 0100     		.2byte	0x1
 9722 0826 59       		.byte	0x59
 9723 0827 00000000 		.4byte	0
 9724 082b 00000000 		.4byte	0
 9725              	.LLST48:
 9726 082f BE020000 		.4byte	.LVL69
 9727 0833 D0020000 		.4byte	.LVL70
 9728 0837 0400     		.2byte	0x4
 9729 0839 44       		.byte	0x44
 9730 083a 3F       		.byte	0x3f
 9731 083b 24       		.byte	0x24
 9732 083c 9F       		.byte	0x9f
 9733 083d 00000000 		.4byte	0
 9734 0841 00000000 		.4byte	0
 9735              	.LLST49:
 9736 0845 BE020000 		.4byte	.LVL69
 9737 0849 D0020000 		.4byte	.LVL70
 9738 084d 0100     		.2byte	0x1
 9739 084f 5A       		.byte	0x5a
 9740 0850 00000000 		.4byte	0
 9741 0854 00000000 		.4byte	0
 9742              	.LLST50:
 9743 0858 BE020000 		.4byte	.LVL69
 9744 085c D0020000 		.4byte	.LVL70
 9745 0860 0100     		.2byte	0x1
 9746 0862 59       		.byte	0x59
 9747 0863 00000000 		.4byte	0
 9748 0867 00000000 		.4byte	0
 9749              	.LLST51:
 9750 086b C8030000 		.4byte	.LVL87
 9751 086f DA030000 		.4byte	.LVL88
 9752 0873 0400     		.2byte	0x4
 9753 0875 48       		.byte	0x48
 9754 0876 46       		.byte	0x46
 9755 0877 24       		.byte	0x24
 9756 0878 9F       		.byte	0x9f
 9757 0879 00000000 		.4byte	0
 9758 087d 00000000 		.4byte	0
 9759              	.LLST52:
 9760 0881 C8030000 		.4byte	.LVL87
 9761 0885 DA030000 		.4byte	.LVL88
 9762 0889 0100     		.2byte	0x1
 9763 088b 5A       		.byte	0x5a
 9764 088c 00000000 		.4byte	0
 9765 0890 00000000 		.4byte	0
 9766              	.LLST53:
 9767 0894 C8030000 		.4byte	.LVL87
 9768 0898 DA030000 		.4byte	.LVL88
 9769 089c 0100     		.2byte	0x1
ARM GAS  /tmp/ccQR1hla.s 			page 214


 9770 089e 59       		.byte	0x59
 9771 089f 00000000 		.4byte	0
 9772 08a3 00000000 		.4byte	0
 9773              	.LLST54:
 9774 08a7 DE030000 		.4byte	.LVL89
 9775 08ab F0030000 		.4byte	.LVL90
 9776 08af 0400     		.2byte	0x4
 9777 08b1 44       		.byte	0x44
 9778 08b2 47       		.byte	0x47
 9779 08b3 24       		.byte	0x24
 9780 08b4 9F       		.byte	0x9f
 9781 08b5 00000000 		.4byte	0
 9782 08b9 00000000 		.4byte	0
 9783              	.LLST55:
 9784 08bd DE030000 		.4byte	.LVL89
 9785 08c1 F0030000 		.4byte	.LVL90
 9786 08c5 0100     		.2byte	0x1
 9787 08c7 5A       		.byte	0x5a
 9788 08c8 00000000 		.4byte	0
 9789 08cc 00000000 		.4byte	0
 9790              	.LLST56:
 9791 08d0 DE030000 		.4byte	.LVL89
 9792 08d4 F0030000 		.4byte	.LVL90
 9793 08d8 0100     		.2byte	0x1
 9794 08da 59       		.byte	0x59
 9795 08db 00000000 		.4byte	0
 9796 08df 00000000 		.4byte	0
 9797              		.section	.debug_aranges,"",%progbits
 9798 0000 24000000 		.4byte	0x24
 9799 0004 0200     		.2byte	0x2
 9800 0006 00000000 		.4byte	.Ldebug_info0
 9801 000a 04       		.byte	0x4
 9802 000b 00       		.byte	0
 9803 000c 0000     		.2byte	0
 9804 000e 0000     		.2byte	0
 9805 0010 00000000 		.4byte	.LFB525
 9806 0014 02000000 		.4byte	.LFE525-.LFB525
 9807 0018 00000000 		.4byte	.LFB533
 9808 001c 20040000 		.4byte	.LFE533-.LFB533
 9809 0020 00000000 		.4byte	0
 9810 0024 00000000 		.4byte	0
 9811              		.section	.debug_ranges,"",%progbits
 9812              	.Ldebug_ranges0:
 9813 0000 1C000000 		.4byte	.LBB135
 9814 0004 32000000 		.4byte	.LBE135
 9815 0008 76000000 		.4byte	.LBB144
 9816 000c 8A000000 		.4byte	.LBE144
 9817 0010 00000000 		.4byte	0
 9818 0014 00000000 		.4byte	0
 9819 0018 54000000 		.4byte	.LBB140
 9820 001c 58000000 		.4byte	.LBE140
 9821 0020 60000000 		.4byte	.LBB143
 9822 0024 6A000000 		.4byte	.LBE143
 9823 0028 00000000 		.4byte	0
 9824 002c 00000000 		.4byte	0
 9825 0030 8A000000 		.4byte	.LBB145
 9826 0034 CE000000 		.4byte	.LBE145
ARM GAS  /tmp/ccQR1hla.s 			page 215


 9827 0038 96020000 		.4byte	.LBB227
 9828 003c AC020000 		.4byte	.LBE227
 9829 0040 00000000 		.4byte	0
 9830 0044 00000000 		.4byte	0
 9831 0048 D8000000 		.4byte	.LBB152
 9832 004c D0010000 		.4byte	.LBE152
 9833 0050 D2020000 		.4byte	.LBB229
 9834 0054 BE030000 		.4byte	.LBE229
 9835 0058 F0030000 		.4byte	.LBB231
 9836 005c 20040000 		.4byte	.LBE231
 9837 0060 00000000 		.4byte	0
 9838 0064 00000000 		.4byte	0
 9839 0068 00010000 		.4byte	.LBB155
 9840 006c D0010000 		.4byte	.LBE155
 9841 0070 D2020000 		.4byte	.LBB179
 9842 0074 B6030000 		.4byte	.LBE179
 9843 0078 00000000 		.4byte	0
 9844 007c 00000000 		.4byte	0
 9845 0080 16010000 		.4byte	.LBB158
 9846 0084 18010000 		.4byte	.LBE158
 9847 0088 1E010000 		.4byte	.LBB167
 9848 008c 24010000 		.4byte	.LBE167
 9849 0090 3E010000 		.4byte	.LBB176
 9850 0094 42010000 		.4byte	.LBE176
 9851 0098 4A010000 		.4byte	.LBB177
 9852 009c D0010000 		.4byte	.LBE177
 9853 00a0 00000000 		.4byte	0
 9854 00a4 00000000 		.4byte	0
 9855 00a8 3E010000 		.4byte	.LBB159
 9856 00ac 42010000 		.4byte	.LBE159
 9857 00b0 4A010000 		.4byte	.LBB165
 9858 00b4 AE010000 		.4byte	.LBE165
 9859 00b8 BA010000 		.4byte	.LBB166
 9860 00bc D0010000 		.4byte	.LBE166
 9861 00c0 00000000 		.4byte	0
 9862 00c4 00000000 		.4byte	0
 9863 00c8 94010000 		.4byte	.LBB160
 9864 00cc 96010000 		.4byte	.LBE160
 9865 00d0 9C010000 		.4byte	.LBB164
 9866 00d4 AE010000 		.4byte	.LBE164
 9867 00d8 00000000 		.4byte	0
 9868 00dc 00000000 		.4byte	0
 9869 00e0 94010000 		.4byte	.LBB161
 9870 00e4 96010000 		.4byte	.LBE161
 9871 00e8 9C010000 		.4byte	.LBB162
 9872 00ec A0010000 		.4byte	.LBE162
 9873 00f0 A4010000 		.4byte	.LBB163
 9874 00f4 AE010000 		.4byte	.LBE163
 9875 00f8 00000000 		.4byte	0
 9876 00fc 00000000 		.4byte	0
 9877 0100 28010000 		.4byte	.LBB168
 9878 0104 3A010000 		.4byte	.LBE168
 9879 0108 3C010000 		.4byte	.LBB175
 9880 010c 3E010000 		.4byte	.LBE175
 9881 0110 00000000 		.4byte	0
 9882 0114 00000000 		.4byte	0
 9883 0118 32010000 		.4byte	.LBB170
ARM GAS  /tmp/ccQR1hla.s 			page 216


 9884 011c 3A010000 		.4byte	.LBE170
 9885 0120 3C010000 		.4byte	.LBB173
 9886 0124 3E010000 		.4byte	.LBE173
 9887 0128 00000000 		.4byte	0
 9888 012c 00000000 		.4byte	0
 9889 0130 FA030000 		.4byte	.LBB181
 9890 0134 FE030000 		.4byte	.LBE181
 9891 0138 00040000 		.4byte	.LBB186
 9892 013c 0C040000 		.4byte	.LBE186
 9893 0140 00000000 		.4byte	0
 9894 0144 00000000 		.4byte	0
 9895 0148 D0010000 		.4byte	.LBB193
 9896 014c 96020000 		.4byte	.LBE193
 9897 0150 AC020000 		.4byte	.LBB228
 9898 0154 D2020000 		.4byte	.LBE228
 9899 0158 BE030000 		.4byte	.LBB230
 9900 015c F0030000 		.4byte	.LBE230
 9901 0160 00000000 		.4byte	0
 9902 0164 00000000 		.4byte	0
 9903 0168 DE010000 		.4byte	.LBB196
 9904 016c 96020000 		.4byte	.LBE196
 9905 0170 AC020000 		.4byte	.LBB220
 9906 0174 D2020000 		.4byte	.LBE220
 9907 0178 C4030000 		.4byte	.LBB221
 9908 017c F0030000 		.4byte	.LBE221
 9909 0180 00000000 		.4byte	0
 9910 0184 00000000 		.4byte	0
 9911 0188 46020000 		.4byte	.LBB204
 9912 018c 4A020000 		.4byte	.LBE204
 9913 0190 4C020000 		.4byte	.LBB210
 9914 0194 50020000 		.4byte	.LBE210
 9915 0198 54020000 		.4byte	.LBB211
 9916 019c 5C020000 		.4byte	.LBE211
 9917 01a0 00000000 		.4byte	0
 9918 01a4 00000000 		.4byte	0
 9919 01a8 00000000 		.4byte	.LFB525
 9920 01ac 02000000 		.4byte	.LFE525
 9921 01b0 00000000 		.4byte	.LFB533
 9922 01b4 20040000 		.4byte	.LFE533
 9923 01b8 00000000 		.4byte	0
 9924 01bc 00000000 		.4byte	0
 9925              		.section	.debug_line,"",%progbits
 9926              	.Ldebug_line0:
 9927 0000 1E070000 		.section	.debug_str,"MS",%progbits,1
 9927      02007205 
 9927      00000201 
 9927      FB0E0D00 
 9927      01010101 
 9928              	.LASF171:
 9929 0000 50574D5F 		.ascii	"PWM_IDR1\000"
 9929      49445231 
 9929      00
 9930              	.LASF180:
 9931 0009 50574D5F 		.ascii	"PWM_IDR2\000"
 9931      49445232 
 9931      00
 9932              	.LASF413:
ARM GAS  /tmp/ccQR1hla.s 			page 217


 9933 0012 70696F5F 		.ascii	"pio_type_t\000"
 9933      74797065 
 9933      5F7400
 9934              	.LASF29:
 9935 001d 5F5F696E 		.ascii	"__int_least64_t\000"
 9935      745F6C65 
 9935      61737436 
 9935      345F7400 
 9936              	.LASF157:
 9937 002d 50776D43 		.ascii	"PwmCh_num\000"
 9937      685F6E75 
 9937      6D00
 9938              	.LASF114:
 9939 0037 50494F5F 		.ascii	"PIO_PPDER\000"
 9939      50504445 
 9939      5200
 9940              	.LASF633:
 9941 0041 74687265 		.ascii	"threshold\000"
 9941      73686F6C 
 9941      6400
 9942              	.LASF231:
 9943 004b 54435F43 		.ascii	"TC_CHANNEL\000"
 9943      48414E4E 
 9943      454C00
 9944              	.LASF489:
 9945 0056 756C5F6C 		.ascii	"ul_leading_edge_delay\000"
 9945      65616469 
 9945      6E675F65 
 9945      6467655F 
 9945      64656C61 
 9946              	.LASF639:
 9947 006c 50574D49 		.ascii	"PWMInterface\000"
 9947      6E746572 
 9947      66616365 
 9947      00
 9948              	.LASF472:
 9949 0079 616C6967 		.ascii	"alignment\000"
 9949      6E6D656E 
 9949      7400
 9950              	.LASF320:
 9951 0083 5F737464 		.ascii	"_stdout\000"
 9951      6F757400 
 9952              	.LASF580:
 9953 008b 4150494E 		.ascii	"APIN_UART0_RXD\000"
 9953      5F554152 
 9953      54305F52 
 9953      584400
 9954              	.LASF400:
 9955 009a 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 9955      6C69626D 
 9955      5F786F70 
 9955      656E00
 9956              	.LASF11:
 9957 00a9 5F5F7569 		.ascii	"__uint8_t\000"
 9957      6E74385F 
 9957      7400
 9958              	.LASF585:
ARM GAS  /tmp/ccQR1hla.s 			page 218


 9959 00b3 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 9959      5F48534D 
 9959      43495F43 
 9959      4C4F434B 
 9959      00
 9960              	.LASF362:
 9961 00c4 376C6C64 		.ascii	"7lldiv_t\000"
 9961      69765F74 
 9961      00
 9962              	.LASF222:
 9963 00cd 54435F52 		.ascii	"TC_RA\000"
 9963      4100
 9964              	.LASF223:
 9965 00d3 54435F52 		.ascii	"TC_RB\000"
 9965      4200
 9966              	.LASF224:
 9967 00d9 54435F52 		.ascii	"TC_RC\000"
 9967      4300
 9968              	.LASF272:
 9969 00df 5F617465 		.ascii	"_atexit\000"
 9969      78697400 
 9970              	.LASF482:
 9971 00e7 6F757470 		.ascii	"output_selection\000"
 9971      75745F73 
 9971      656C6563 
 9971      74696F6E 
 9971      00
 9972              	.LASF461:
 9973 00f8 70776D5F 		.ascii	"pwm_leading_edge_blanking_mode_t\000"
 9973      6C656164 
 9973      696E675F 
 9973      65646765 
 9973      5F626C61 
 9974              	.LASF423:
 9975 0119 31317077 		.ascii	"11pwm_clock_t\000"
 9975      6D5F636C 
 9975      6F636B5F 
 9975      7400
 9976              	.LASF563:
 9977 0127 756C5065 		.ascii	"ulPeripheralId\000"
 9977      72697068 
 9977      6572616C 
 9977      496400
 9978              	.LASF96:
 9979 0136 50494F5F 		.ascii	"PIO_IDR\000"
 9979      49445200 
 9980              	.LASF687:
 9981 013e 5F5A3941 		.ascii	"_Z9AnalogOuthft\000"
 9981      6E616C6F 
 9981      674F7574 
 9981      68667400 
 9982              	.LASF434:
 9983 014e 50574D5F 		.ascii	"PWM_FAULT_MAINOSC\000"
 9983      4641554C 
 9983      545F4D41 
 9983      494E4F53 
 9983      4300
ARM GAS  /tmp/ccQR1hla.s 			page 219


 9984              	.LASF111:
 9985 0160 50494F5F 		.ascii	"PIO_IFSCSR\000"
 9985      49465343 
 9985      535200
 9986              	.LASF640:
 9987 016b 75736546 		.ascii	"useFastClock\000"
 9987      61737443 
 9987      6C6F636B 
 9987      00
 9988              	.LASF262:
 9989 0178 5F5F746D 		.ascii	"__tm_mon\000"
 9989      5F6D6F6E 
 9989      00
 9990              	.LASF270:
 9991 0181 5F666E74 		.ascii	"_fntypes\000"
 9991      79706573 
 9991      00
 9992              	.LASF453:
 9993 018a 50574D5F 		.ascii	"PWM_LEADING_EDGE3_MODE_LINC\000"
 9993      4C454144 
 9993      494E475F 
 9993      45444745 
 9993      335F4D4F 
 9994              	.LASF225:
 9995 01a6 54435F53 		.ascii	"TC_SR\000"
 9995      5200
 9996              	.LASF322:
 9997 01ac 5F696E63 		.ascii	"_inc\000"
 9997      00
 9998              	.LASF273:
 9999 01b1 5F696E64 		.ascii	"_ind\000"
 9999      00
 10000              	.LASF635:
 10001 01b6 54435F53 		.ascii	"TC_SetCMR_ChannelB\000"
 10001      6574434D 
 10001      525F4368 
 10001      616E6E65 
 10001      6C4200
 10002              	.LASF112:
 10003 01c9 50494F5F 		.ascii	"PIO_SCDR\000"
 10003      53434452 
 10003      00
 10004              	.LASF55:
 10005 01d2 696E745F 		.ascii	"int_fast32_t\000"
 10005      66617374 
 10005      33325F74 
 10005      00
 10006              	.LASF95:
 10007 01df 50494F5F 		.ascii	"PIO_IER\000"
 10007      49455200 
 10008              	.LASF676:
 10009 01e7 2E2E2F63 		.ascii	"../cores/arduino/AnalogOut.cpp\000"
 10009      6F726573 
 10009      2F617264 
 10009      75696E6F 
 10009      2F416E61 
 10010              	.LASF36:
ARM GAS  /tmp/ccQR1hla.s 			page 220


 10011 0206 75696E74 		.ascii	"uint16_t\000"
 10011      31365F74 
 10011      00
 10012              	.LASF118:
 10013 020f 50494F5F 		.ascii	"PIO_OWDR\000"
 10013      4F574452 
 10013      00
 10014              	.LASF519:
 10015 0218 5443325F 		.ascii	"TC2_CHA6\000"
 10015      43484136 
 10015      00
 10016              	.LASF521:
 10017 0221 5443325F 		.ascii	"TC2_CHA7\000"
 10017      43484137 
 10017      00
 10018              	.LASF523:
 10019 022a 5443325F 		.ascii	"TC2_CHA8\000"
 10019      43484138 
 10019      00
 10020              	.LASF646:
 10021 0233 6E657743 		.ascii	"newCurrentVal\000"
 10021      75727265 
 10021      6E745661 
 10021      6C00
 10022              	.LASF279:
 10023 0241 5F666C61 		.ascii	"_flags\000"
 10023      677300
 10024              	.LASF396:
 10025 0248 666C6F61 		.ascii	"float_t\000"
 10025      745F7400 
 10026              	.LASF162:
 10027 0250 50574D5F 		.ascii	"PWM_CMPMUPD\000"
 10027      434D504D 
 10027      55504400 
 10028              	.LASF424:
 10029 025c 756C5F63 		.ascii	"ul_clka\000"
 10029      6C6B6100 
 10030              	.LASF425:
 10031 0264 756C5F63 		.ascii	"ul_clkb\000"
 10031      6C6B6200 
 10032              	.LASF137:
 10033 026c 50494F5F 		.ascii	"PIO_SCHMITT\000"
 10033      5343484D 
 10033      49545400 
 10034              	.LASF332:
 10035 0278 5F637674 		.ascii	"_cvtlen\000"
 10035      6C656E00 
 10036              	.LASF513:
 10037 0280 5443315F 		.ascii	"TC1_CHA3\000"
 10037      43484133 
 10037      00
 10038              	.LASF390:
 10039 0289 73747274 		.ascii	"strtof\000"
 10039      6F6600
 10040              	.LASF399:
 10041 0290 5F5F6664 		.ascii	"__fdlibm_svid\000"
 10041      6C69626D 
ARM GAS  /tmp/ccQR1hla.s 			page 221


 10041      5F737669 
 10041      6400
 10042              	.LASF81:
 10043 029e 44616363 		.ascii	"Dacc\000"
 10043      00
 10044              	.LASF117:
 10045 02a3 50494F5F 		.ascii	"PIO_OWER\000"
 10045      4F574552 
 10045      00
 10046              	.LASF520:
 10047 02ac 5443325F 		.ascii	"TC2_CHB6\000"
 10047      43484236 
 10047      00
 10048              	.LASF522:
 10049 02b5 5443325F 		.ascii	"TC2_CHB7\000"
 10049      43484237 
 10049      00
 10050              	.LASF524:
 10051 02be 5443325F 		.ascii	"TC2_CHB8\000"
 10051      43484238 
 10051      00
 10052              	.LASF56:
 10053 02c7 75696E74 		.ascii	"uint_fast32_t\000"
 10053      5F666173 
 10053      7433325F 
 10053      7400
 10054              	.LASF201:
 10055 02d5 50574D5F 		.ascii	"PWM_CMP\000"
 10055      434D5000 
 10056              	.LASF587:
 10057 02dd 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 10057      5F474D41 
 10057      435F5048 
 10057      595F494E 
 10057      54455252 
 10058              	.LASF648:
 10059 02f5 63684441 		.ascii	"chDACC\000"
 10059      434300
 10060              	.LASF239:
 10061 02fc 54435F57 		.ascii	"TC_WPMR\000"
 10061      504D5200 
 10062              	.LASF591:
 10063 0304 50776D46 		.ascii	"PwmFastClock\000"
 10063      61737443 
 10063      6C6F636B 
 10063      00
 10064              	.LASF526:
 10065 0311 416E616C 		.ascii	"AnalogChannelNumber\000"
 10065      6F674368 
 10065      616E6E65 
 10065      6C4E756D 
 10065      62657200 
 10066              	.LASF292:
 10067 0325 5F6C6F63 		.ascii	"_lock\000"
 10067      6B00
 10068              	.LASF288:
 10069 032b 5F6E6275 		.ascii	"_nbuf\000"
ARM GAS  /tmp/ccQR1hla.s 			page 222


 10069      6600
 10070              	.LASF317:
 10071 0331 5F756E75 		.ascii	"_unused\000"
 10071      73656400 
 10072              	.LASF507:
 10073 0339 5443305F 		.ascii	"TC0_CHA0\000"
 10073      43484130 
 10073      00
 10074              	.LASF509:
 10075 0342 5443305F 		.ascii	"TC0_CHA1\000"
 10075      43484131 
 10075      00
 10076              	.LASF511:
 10077 034b 5443305F 		.ascii	"TC0_CHA2\000"
 10077      43484132 
 10077      00
 10078              	.LASF514:
 10079 0354 5443315F 		.ascii	"TC1_CHB3\000"
 10079      43484233 
 10079      00
 10080              	.LASF516:
 10081 035d 5443315F 		.ascii	"TC1_CHB4\000"
 10081      43484234 
 10081      00
 10082              	.LASF518:
 10083 0366 5443315F 		.ascii	"TC1_CHB5\000"
 10083      43484235 
 10083      00
 10084              	.LASF602:
 10085 036f 53504543 		.ascii	"SPECIAL\000"
 10085      49414C00 
 10086              	.LASF170:
 10087 0377 50574D5F 		.ascii	"PWM_IER1\000"
 10087      49455231 
 10087      00
 10088              	.LASF179:
 10089 0380 50574D5F 		.ascii	"PWM_IER2\000"
 10089      49455232 
 10089      00
 10090              	.LASF4:
 10091 0389 5F5F6D61 		.ascii	"__max_align_ld\000"
 10091      785F616C 
 10091      69676E5F 
 10091      6C6400
 10092              	.LASF367:
 10093 0398 61746F66 		.ascii	"atof\000"
 10093      00
 10094              	.LASF163:
 10095 039d 50776D43 		.ascii	"PwmCmp\000"
 10095      6D7000
 10096              	.LASF369:
 10097 03a4 61746F69 		.ascii	"atoi\000"
 10097      00
 10098              	.LASF3:
 10099 03a9 5F5F6D61 		.ascii	"__max_align_ll\000"
 10099      785F616C 
 10099      69676E5F 
ARM GAS  /tmp/ccQR1hla.s 			page 223


 10099      6C6C00
 10100              	.LASF370:
 10101 03b8 61746F6C 		.ascii	"atol\000"
 10101      00
 10102              	.LASF601:
 10103 03bd 4F555450 		.ascii	"OUTPUT_HIGH\000"
 10103      55545F48 
 10103      49474800 
 10104              	.LASF229:
 10105 03c9 54435F45 		.ascii	"TC_EMR\000"
 10105      4D5200
 10106              	.LASF477:
 10107 03d0 625F6465 		.ascii	"b_deadtime_generator\000"
 10107      61647469 
 10107      6D655F67 
 10107      656E6572 
 10107      61746F72 
 10108              	.LASF325:
 10109 03e5 5F637572 		.ascii	"_current_locale\000"
 10109      72656E74 
 10109      5F6C6F63 
 10109      616C6500 
 10110              	.LASF508:
 10111 03f5 5443305F 		.ascii	"TC0_CHB0\000"
 10111      43484230 
 10111      00
 10112              	.LASF510:
 10113 03fe 5443305F 		.ascii	"TC0_CHB1\000"
 10113      43484231 
 10113      00
 10114              	.LASF512:
 10115 0407 5443305F 		.ascii	"TC0_CHB2\000"
 10115      43484232 
 10115      00
 10116              	.LASF655:
 10117 0410 64774D6F 		.ascii	"dwMode\000"
 10117      646500
 10118              	.LASF37:
 10119 0417 696E7433 		.ascii	"int32_t\000"
 10119      325F7400 
 10120              	.LASF59:
 10121 041f 696E746D 		.ascii	"intmax_t\000"
 10121      61785F74 
 10121      00
 10122              	.LASF347:
 10123 0428 5F616464 		.ascii	"_add\000"
 10123      00
 10124              	.LASF455:
 10125 042d 50574D5F 		.ascii	"PWM_LEADING_EDGE3_MODE_HINC\000"
 10125      4C454144 
 10125      494E475F 
 10125      45444745 
 10125      335F4D4F 
 10126              	.LASF60:
 10127 0449 75696E74 		.ascii	"uintmax_t\000"
 10127      6D61785F 
 10127      7400
ARM GAS  /tmp/ccQR1hla.s 			page 224


 10128              	.LASF437:
 10129 0453 50574D5F 		.ascii	"PWM_FAULT_TIMER_0\000"
 10129      4641554C 
 10129      545F5449 
 10129      4D45525F 
 10129      3000
 10130              	.LASF438:
 10131 0465 50574D5F 		.ascii	"PWM_FAULT_TIMER_1\000"
 10131      4641554C 
 10131      545F5449 
 10131      4D45525F 
 10131      3100
 10132              	.LASF490:
 10133 0477 6C656164 		.ascii	"leading_edge_blanking_mode\000"
 10133      696E675F 
 10133      65646765 
 10133      5F626C61 
 10133      6E6B696E 
 10134              	.LASF192:
 10135 0492 50574D5F 		.ascii	"PWM_FPV1\000"
 10135      46505631 
 10135      00
 10136              	.LASF468:
 10137 049b 31316D61 		.ascii	"11max_align_t\000"
 10137      785F616C 
 10137      69676E5F 
 10137      7400
 10138              	.LASF443:
 10139 04a9 70776D5F 		.ascii	"pwm_spread_spectrum_mode_t\000"
 10139      73707265 
 10139      61645F73 
 10139      70656374 
 10139      72756D5F 
 10140              	.LASF28:
 10141 04c4 5F5F7569 		.ascii	"__uint_least32_t\000"
 10141      6E745F6C 
 10141      65617374 
 10141      33325F74 
 10141      00
 10142              	.LASF281:
 10143 04d5 5F6C6266 		.ascii	"_lbfsize\000"
 10143      73697A65 
 10143      00
 10144              	.LASF360:
 10145 04de 366C6469 		.ascii	"6ldiv_t\000"
 10145      765F7400 
 10146              	.LASF488:
 10147 04e6 73707265 		.ascii	"spread_spectrum_mode\000"
 10147      61645F73 
 10147      70656374 
 10147      72756D5F 
 10147      6D6F6465 
 10148              	.LASF428:
 10149 04fb 31397077 		.ascii	"19pwm_counter_event_t\000"
 10149      6D5F636F 
 10149      756E7465 
 10149      725F6576 
ARM GAS  /tmp/ccQR1hla.s 			page 225


 10149      656E745F 
 10150              	.LASF691:
 10151 0511 5F5F6275 		.ascii	"__builtin_lroundf\000"
 10151      696C7469 
 10151      6E5F6C72 
 10151      6F756E64 
 10151      6600
 10152              	.LASF146:
 10153 0523 50494F5F 		.ascii	"PIO_PCRHR\000"
 10153      50435248 
 10153      5200
 10154              	.LASF196:
 10155 052d 50574D5F 		.ascii	"PWM_SSPUP\000"
 10155      53535055 
 10155      5000
 10156              	.LASF418:
 10157 0537 31317077 		.ascii	"11pwm_level_t\000"
 10157      6D5F6C65 
 10157      76656C5F 
 10157      7400
 10158              	.LASF49:
 10159 0545 696E745F 		.ascii	"int_least64_t\000"
 10159      6C656173 
 10159      7436345F 
 10159      7400
 10160              	.LASF385:
 10161 0553 7763746F 		.ascii	"wctomb\000"
 10161      6D6200
 10162              	.LASF150:
 10163 055a 50574D5F 		.ascii	"PWM_CDTY\000"
 10163      43445459 
 10163      00
 10164              	.LASF596:
 10165 0563 50494E5F 		.ascii	"PIN_MODE_NOT_CONFIGURED\000"
 10165      4D4F4445 
 10165      5F4E4F54 
 10165      5F434F4E 
 10165      46494755 
 10166              	.LASF291:
 10167 057b 5F646174 		.ascii	"_data\000"
 10167      6100
 10168              	.LASF394:
 10169 0581 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 10169      6972715F 
 10169      63726974 
 10169      6963616C 
 10169      5F736563 
 10170              	.LASF561:
 10171 05a2 70506F72 		.ascii	"pPort\000"
 10171      7400
 10172              	.LASF626:
 10173 05a8 66726571 		.ascii	"freq\000"
 10173      00
 10174              	.LASF577:
 10175 05ad 5F646179 		.ascii	"_daylight\000"
 10175      6C696768 
 10175      7400
ARM GAS  /tmp/ccQR1hla.s 			page 226


 10176              	.LASF220:
 10177 05b7 54435F52 		.ascii	"TC_RAB\000"
 10177      414200
 10178              	.LASF295:
 10179 05be 5F726565 		.ascii	"_reent\000"
 10179      6E7400
 10180              	.LASF560:
 10181 05c5 50696E44 		.ascii	"PinDescription\000"
 10181      65736372 
 10181      69707469 
 10181      6F6E00
 10182              	.LASF586:
 10183 05d4 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 10183      5F48534D 
 10183      43495F44 
 10183      41544100 
 10184              	.LASF436:
 10185 05e4 50574D5F 		.ascii	"PWM_FAULT_ACC\000"
 10185      4641554C 
 10185      545F4143 
 10185      4300
 10186              	.LASF338:
 10187 05f2 5F5F7366 		.ascii	"__sf\000"
 10187      00
 10188              	.LASF43:
 10189 05f7 696E745F 		.ascii	"int_least8_t\000"
 10189      6C656173 
 10189      74385F74 
 10189      00
 10190              	.LASF448:
 10191 0604 50574D5F 		.ascii	"PWM_LEADING_EDGE1_MODE_HDEC\000"
 10191      4C454144 
 10191      494E475F 
 10191      45444745 
 10191      315F4D4F 
 10192              	.LASF449:
 10193 0620 50574D5F 		.ascii	"PWM_LEADING_EDGE2_MODE_LINC\000"
 10193      4C454144 
 10193      494E475F 
 10193      45444745 
 10193      325F4D4F 
 10194              	.LASF304:
 10195 063c 5F6D6274 		.ascii	"_mbtowc_state\000"
 10195      6F77635F 
 10195      73746174 
 10195      6500
 10196              	.LASF354:
 10197 064a 5F5F676E 		.ascii	"__gnu_cxx\000"
 10197      755F6378 
 10197      7800
 10198              	.LASF432:
 10199 0654 31347077 		.ascii	"14pwm_fault_id_t\000"
 10199      6D5F6661 
 10199      756C745F 
 10199      69645F74 
 10199      00
 10200              	.LASF435:
ARM GAS  /tmp/ccQR1hla.s 			page 227


 10201 0665 50574D5F 		.ascii	"PWM_FAULT_ADC\000"
 10201      4641554C 
 10201      545F4144 
 10201      4300
 10202              	.LASF627:
 10203 0673 61747472 		.ascii	"attr\000"
 10203      00
 10204              	.LASF677:
 10205 0678 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 10205      652F746F 
 10205      72626A6F 
 10205      726E2F65 
 10205      636C6970 
 10206 06ab 00       		.ascii	"\000"
 10207              	.LASF595:
 10208 06ac 50696E4D 		.ascii	"PinMode\000"
 10208      6F646500 
 10209              	.LASF257:
 10210 06b4 5F5F746D 		.ascii	"__tm\000"
 10210      00
 10211              	.LASF564:
 10212 06b9 756C5069 		.ascii	"ulPinType\000"
 10212      6E547970 
 10212      6500
 10213              	.LASF175:
 10214 06c3 50574D5F 		.ascii	"PWM_DMAR\000"
 10214      444D4152 
 10214      00
 10215              	.LASF128:
 10216 06cc 52657365 		.ascii	"Reserved10\000"
 10216      72766564 
 10216      313000
 10217              	.LASF132:
 10218 06d7 52657365 		.ascii	"Reserved11\000"
 10218      72766564 
 10218      313100
 10219              	.LASF136:
 10220 06e2 52657365 		.ascii	"Reserved12\000"
 10220      72766564 
 10220      313200
 10221              	.LASF138:
 10222 06ed 52657365 		.ascii	"Reserved13\000"
 10222      72766564 
 10222      313300
 10223              	.LASF97:
 10224 06f8 50494F5F 		.ascii	"PIO_IMR\000"
 10224      494D5200 
 10225              	.LASF213:
 10226 0700 52657365 		.ascii	"Reserved15\000"
 10226      72766564 
 10226      313500
 10227              	.LASF444:
 10228 070b 33327077 		.ascii	"32pwm_leading_edge_blanking_mode_t\000"
 10228      6D5F6C65 
 10228      6164696E 
 10228      675F6564 
 10228      67655F62 
ARM GAS  /tmp/ccQR1hla.s 			page 228


 10229              	.LASF636:
 10230 072e 54435F53 		.ascii	"TC_SetCMR_ChannelA\000"
 10230      6574434D 
 10230      525F4368 
 10230      616E6E65 
 10230      6C4100
 10231              	.LASF386:
 10232 0741 6C6C6469 		.ascii	"lldiv\000"
 10232      7600
 10233              	.LASF265:
 10234 0747 5F5F746D 		.ascii	"__tm_yday\000"
 10234      5F796461 
 10234      7900
 10235              	.LASF238:
 10236 0751 54435F46 		.ascii	"TC_FMR\000"
 10236      4D5200
 10237              	.LASF205:
 10238 0758 50574D5F 		.ascii	"PWM_ETRG1\000"
 10238      45545247 
 10238      3100
 10239              	.LASF208:
 10240 0762 50574D5F 		.ascii	"PWM_ETRG2\000"
 10240      45545247 
 10240      3200
 10241              	.LASF211:
 10242 076c 50574D5F 		.ascii	"PWM_ETRG3\000"
 10242      45545247 
 10242      3300
 10243              	.LASF214:
 10244 0776 50574D5F 		.ascii	"PWM_ETRG4\000"
 10244      45545247 
 10244      3400
 10245              	.LASF79:
 10246 0780 44414343 		.ascii	"DACC_WPMR\000"
 10246      5F57504D 
 10246      5200
 10247              	.LASF483:
 10248 078a 625F7379 		.ascii	"b_sync_ch\000"
 10248      6E635F63 
 10248      6800
 10249              	.LASF13:
 10250 0794 5F5F696E 		.ascii	"__int16_t\000"
 10250      7431365F 
 10250      7400
 10251              	.LASF15:
 10252 079e 5F5F7569 		.ascii	"__uint16_t\000"
 10252      6E743136 
 10252      5F7400
 10253              	.LASF296:
 10254 07a9 5F756E75 		.ascii	"_unused_rand\000"
 10254      7365645F 
 10254      72616E64 
 10254      00
 10255              	.LASF581:
 10256 07b6 4150494E 		.ascii	"APIN_UART0_TXD\000"
 10256      5F554152 
 10256      54305F54 
ARM GAS  /tmp/ccQR1hla.s 			page 229


 10256      584400
 10257              	.LASF91:
 10258 07c5 50494F5F 		.ascii	"PIO_SODR\000"
 10258      534F4452 
 10258      00
 10259              	.LASF158:
 10260 07ce 3650776D 		.ascii	"6PwmCmp\000"
 10260      436D7000 
 10261              	.LASF31:
 10262 07d6 5F5F696E 		.ascii	"__intptr_t\000"
 10262      74707472 
 10262      5F7400
 10263              	.LASF397:
 10264 07e1 646F7562 		.ascii	"double_t\000"
 10264      6C655F74 
 10264      00
 10265              	.LASF567:
 10266 07ea 756C4144 		.ascii	"ulADCChannelNumber\000"
 10266      43436861 
 10266      6E6E656C 
 10266      4E756D62 
 10266      657200
 10267              	.LASF329:
 10268 07fd 5F726573 		.ascii	"_result_k\000"
 10268      756C745F 
 10268      6B00
 10269              	.LASF321:
 10270 0807 5F737464 		.ascii	"_stderr\000"
 10270      65727200 
 10271              	.LASF328:
 10272 080f 5F726573 		.ascii	"_result\000"
 10272      756C7400 
 10273              	.LASF142:
 10274 0817 50494F5F 		.ascii	"PIO_PCIER\000"
 10274      50434945 
 10274      5200
 10275              	.LASF612:
 10276 0821 50574D43 		.ascii	"PWMChanPeriod\000"
 10276      68616E50 
 10276      6572696F 
 10276      6400
 10277              	.LASF139:
 10278 082f 50494F5F 		.ascii	"PIO_DRIVER\000"
 10278      44524956 
 10278      455200
 10279              	.LASF269:
 10280 083a 5F64736F 		.ascii	"_dso_handle\000"
 10280      5F68616E 
 10280      646C6500 
 10281              	.LASF73:
 10282 0846 44414343 		.ascii	"DACC_IDR\000"
 10282      5F494452 
 10282      00
 10283              	.LASF264:
 10284 084f 5F5F746D 		.ascii	"__tm_wday\000"
 10284      5F776461 
 10284      7900
ARM GAS  /tmp/ccQR1hla.s 			page 230


 10285              	.LASF266:
 10286 0859 5F5F746D 		.ascii	"__tm_isdst\000"
 10286      5F697364 
 10286      737400
 10287              	.LASF679:
 10288 0864 5F5A5374 		.ascii	"_ZSt3absx\000"
 10288      33616273 
 10288      7800
 10289              	.LASF402:
 10290 086e 5F5F6664 		.ascii	"__fdlib_version\000"
 10290      6C69625F 
 10290      76657273 
 10290      696F6E00 
 10291              	.LASF694:
 10292 087e 436F6E66 		.ascii	"ConfigurePin\000"
 10292      69677572 
 10292      6550696E 
 10292      00
 10293              	.LASF12:
 10294 088b 756E7369 		.ascii	"unsigned char\000"
 10294      676E6564 
 10294      20636861 
 10294      7200
 10295              	.LASF115:
 10296 0899 50494F5F 		.ascii	"PIO_PPDSR\000"
 10296      50504453 
 10296      5200
 10297              	.LASF572:
 10298 08a3 5F637479 		.ascii	"_ctype_\000"
 10298      70655F00 
 10299              	.LASF451:
 10300 08ab 50574D5F 		.ascii	"PWM_LEADING_EDGE2_MODE_HINC\000"
 10300      4C454144 
 10300      494E475F 
 10300      45444745 
 10300      325F4D4F 
 10301              	.LASF72:
 10302 08c7 44414343 		.ascii	"DACC_IER\000"
 10302      5F494552 
 10302      00
 10303              	.LASF311:
 10304 08d0 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 10304      72746F77 
 10304      63735F73 
 10304      74617465 
 10304      00
 10305              	.LASF255:
 10306 08e1 5F776473 		.ascii	"_wds\000"
 10306      00
 10307              	.LASF195:
 10308 08e6 50574D5F 		.ascii	"PWM_SSPR\000"
 10308      53535052 
 10308      00
 10309              	.LASF0:
 10310 08ef 666C6F61 		.ascii	"float\000"
 10310      7400
 10311              	.LASF637:
ARM GAS  /tmp/ccQR1hla.s 			page 231


 10312 08f5 416E616C 		.ascii	"AnalogWriteTc\000"
 10312      6F675772 
 10312      69746554 
 10312      6300
 10313              	.LASF277:
 10314 0903 5F73697A 		.ascii	"_size\000"
 10314      6500
 10315              	.LASF100:
 10316 0909 50494F5F 		.ascii	"PIO_MDDR\000"
 10316      4D444452 
 10316      00
 10317              	.LASF671:
 10318 0912 74635F72 		.ascii	"tc_read_rc\000"
 10318      6561645F 
 10318      726300
 10319              	.LASF48:
 10320 091d 75696E74 		.ascii	"uint_least32_t\000"
 10320      5F6C6561 
 10320      73743332 
 10320      5F7400
 10321              	.LASF588:
 10322 092c 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 10322      5F474D41 
 10322      435F5048 
 10322      595F5245 
 10322      53455400 
 10323              	.LASF284:
 10324 0940 5F777269 		.ascii	"_write\000"
 10324      746500
 10325              	.LASF152:
 10326 0947 50574D5F 		.ascii	"PWM_CPRD\000"
 10326      43505244 
 10326      00
 10327              	.LASF99:
 10328 0950 50494F5F 		.ascii	"PIO_MDER\000"
 10328      4D444552 
 10328      00
 10329              	.LASF505:
 10330 0959 5F455443 		.ascii	"_ETCChannel\000"
 10330      4368616E 
 10330      6E656C00 
 10331              	.LASF410:
 10332 0965 50494F5F 		.ascii	"PIO_INPUT\000"
 10332      494E5055 
 10332      5400
 10333              	.LASF690:
 10334 096f 6C726F75 		.ascii	"lroundf\000"
 10334      6E646600 
 10335              	.LASF40:
 10336 0977 75696E74 		.ascii	"uint64_t\000"
 10336      36345F74 
 10336      00
 10337              	.LASF659:
 10338 0980 64616363 		.ascii	"dacc_write_conversion_data\000"
 10338      5F777269 
 10338      74655F63 
 10338      6F6E7665 
ARM GAS  /tmp/ccQR1hla.s 			page 232


 10338      7273696F 
 10339              	.LASF98:
 10340 099b 50494F5F 		.ascii	"PIO_ISR\000"
 10340      49535200 
 10341              	.LASF529:
 10342 09a3 41444331 		.ascii	"ADC1\000"
 10342      00
 10343              	.LASF530:
 10344 09a8 41444332 		.ascii	"ADC2\000"
 10344      00
 10345              	.LASF531:
 10346 09ad 41444333 		.ascii	"ADC3\000"
 10346      00
 10347              	.LASF532:
 10348 09b2 41444334 		.ascii	"ADC4\000"
 10348      00
 10349              	.LASF533:
 10350 09b7 41444335 		.ascii	"ADC5\000"
 10350      00
 10351              	.LASF534:
 10352 09bc 41444336 		.ascii	"ADC6\000"
 10352      00
 10353              	.LASF535:
 10354 09c1 41444337 		.ascii	"ADC7\000"
 10354      00
 10355              	.LASF536:
 10356 09c6 41444338 		.ascii	"ADC8\000"
 10356      00
 10357              	.LASF537:
 10358 09cb 41444339 		.ascii	"ADC9\000"
 10358      00
 10359              	.LASF263:
 10360 09d0 5F5F746D 		.ascii	"__tm_year\000"
 10360      5F796561 
 10360      7200
 10361              	.LASF610:
 10362 09da 50574D45 		.ascii	"PWMEnabled\000"
 10362      6E61626C 
 10362      656400
 10363              	.LASF660:
 10364 09e5 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 10364      656E6162 
 10364      6C655F70 
 10364      65726970 
 10364      685F636C 
 10365              	.LASF485:
 10366 09fb 756C5F66 		.ascii	"ul_fault_output_pwmh\000"
 10366      61756C74 
 10366      5F6F7574 
 10366      7075745F 
 10366      70776D68 
 10367              	.LASF391:
 10368 0a10 73747274 		.ascii	"strtold\000"
 10368      6F6C6400 
 10369              	.LASF346:
 10370 0a18 5F6D756C 		.ascii	"_mult\000"
 10370      7400
ARM GAS  /tmp/ccQR1hla.s 			page 233


 10371              	.LASF388:
 10372 0a1e 73747274 		.ascii	"strtoll\000"
 10372      6F6C6C00 
 10373              	.LASF80:
 10374 0a26 44414343 		.ascii	"DACC_WPSR\000"
 10374      5F575053 
 10374      5200
 10375              	.LASF598:
 10376 0a30 494E5055 		.ascii	"INPUT_PULLUP\000"
 10376      545F5055 
 10376      4C4C5550 
 10376      00
 10377              	.LASF350:
 10378 0a3d 6D6F6466 		.ascii	"modf\000"
 10378      00
 10379              	.LASF366:
 10380 0a42 61746578 		.ascii	"atexit\000"
 10380      697400
 10381              	.LASF414:
 10382 0a49 50574D5F 		.ascii	"PWM_ALIGN_LEFT\000"
 10382      414C4947 
 10382      4E5F4C45 
 10382      465400
 10383              	.LASF119:
 10384 0a58 50494F5F 		.ascii	"PIO_OWSR\000"
 10384      4F575352 
 10384      00
 10385              	.LASF493:
 10386 0a61 4E6F5069 		.ascii	"NoPin\000"
 10386      6E00
 10387              	.LASF538:
 10388 0a67 41444331 		.ascii	"ADC10\000"
 10388      3000
 10389              	.LASF539:
 10390 0a6d 41444331 		.ascii	"ADC11\000"
 10390      3100
 10391              	.LASF540:
 10392 0a73 41444331 		.ascii	"ADC12\000"
 10392      3200
 10393              	.LASF541:
 10394 0a79 41444331 		.ascii	"ADC13\000"
 10394      3300
 10395              	.LASF542:
 10396 0a7f 41444331 		.ascii	"ADC14\000"
 10396      3400
 10397              	.LASF543:
 10398 0a85 41444331 		.ascii	"ADC15\000"
 10398      3500
 10399              	.LASF544:
 10400 0a8b 41444331 		.ascii	"ADC16\000"
 10400      3600
 10401              	.LASF23:
 10402 0a91 5F5F696E 		.ascii	"__int_least8_t\000"
 10402      745F6C65 
 10402      61737438 
 10402      5F7400
 10403              	.LASF546:
ARM GAS  /tmp/ccQR1hla.s 			page 234


 10404 0aa0 41444331 		.ascii	"ADC18\000"
 10404      3800
 10405              	.LASF547:
 10406 0aa6 41444331 		.ascii	"ADC19\000"
 10406      3900
 10407              	.LASF133:
 10408 0aac 50494F5F 		.ascii	"PIO_LOCKSR\000"
 10408      4C4F434B 
 10408      535200
 10409              	.LASF319:
 10410 0ab7 5F737464 		.ascii	"_stdin\000"
 10410      696E00
 10411              	.LASF478:
 10412 0abe 625F7077 		.ascii	"b_pwmh_output_inverted\000"
 10412      6D685F6F 
 10412      75747075 
 10412      745F696E 
 10412      76657274 
 10413              	.LASF316:
 10414 0ad5 5F6E6D61 		.ascii	"_nmalloc\000"
 10414      6C6C6F63 
 10414      00
 10415              	.LASF624:
 10416 0ade 5F5A336D 		.ascii	"_Z3minImET_S0_S0_\000"
 10416      696E496D 
 10416      45545F53 
 10416      305F5330 
 10416      5F00
 10417              	.LASF433:
 10418 0af0 50574D5F 		.ascii	"PWM_FAULT_PWMFI1\000"
 10418      4641554C 
 10418      545F5057 
 10418      4D464931 
 10418      00
 10419              	.LASF392:
 10420 0b01 675F696E 		.ascii	"g_interrupt_enabled\000"
 10420      74657272 
 10420      7570745F 
 10420      656E6162 
 10420      6C656400 
 10421              	.LASF548:
 10422 0b15 41444332 		.ascii	"ADC20\000"
 10422      3000
 10423              	.LASF549:
 10424 0b1b 41444332 		.ascii	"ADC21\000"
 10424      3100
 10425              	.LASF550:
 10426 0b21 41444332 		.ascii	"ADC22\000"
 10426      3200
 10427              	.LASF551:
 10428 0b27 41444332 		.ascii	"ADC23\000"
 10428      3300
 10429              	.LASF552:
 10430 0b2d 41444332 		.ascii	"ADC24\000"
 10430      3400
 10431              	.LASF553:
 10432 0b33 41444332 		.ascii	"ADC25\000"
ARM GAS  /tmp/ccQR1hla.s 			page 235


 10432      3500
 10433              	.LASF554:
 10434 0b39 41444332 		.ascii	"ADC26\000"
 10434      3600
 10435              	.LASF555:
 10436 0b3f 41444332 		.ascii	"ADC27\000"
 10436      3700
 10437              	.LASF556:
 10438 0b45 41444332 		.ascii	"ADC28\000"
 10438      3800
 10439              	.LASF415:
 10440 0b4b 50574D5F 		.ascii	"PWM_ALIGN_CENTER\000"
 10440      414C4947 
 10440      4E5F4345 
 10440      4E544552 
 10440      00
 10441              	.LASF156:
 10442 0b5c 50574D5F 		.ascii	"PWM_DTUPD\000"
 10442      44545550 
 10442      4400
 10443              	.LASF164:
 10444 0b66 3350696F 		.ascii	"3Pio\000"
 10444      00
 10445              	.LASF583:
 10446 0b6b 4150494E 		.ascii	"APIN_UART1_RXD\000"
 10446      5F554152 
 10446      54315F52 
 10446      584400
 10447              	.LASF668:
 10448 0b7a 70776D5F 		.ascii	"pwm_channel_update_duty\000"
 10448      6368616E 
 10448      6E656C5F 
 10448      75706461 
 10448      74655F64 
 10449              	.LASF227:
 10450 0b92 54435F49 		.ascii	"TC_IDR\000"
 10450      445200
 10451              	.LASF558:
 10452 0b99 41444333 		.ascii	"ADC30\000"
 10452      3000
 10453              	.LASF559:
 10454 0b9f 41444333 		.ascii	"ADC31\000"
 10454      3100
 10455              	.LASF241:
 10456 0ba5 5F6F6666 		.ascii	"_off_t\000"
 10456      5F7400
 10457              	.LASF592:
 10458 0bac 50776D53 		.ascii	"PwmSlowClock\000"
 10458      6C6F7743 
 10458      6C6F636B 
 10458      00
 10459              	.LASF7:
 10460 0bb9 73697A65 		.ascii	"size_t\000"
 10460      5F7400
 10461              	.LASF299:
 10462 0bc0 5F6C6F63 		.ascii	"_localtime_buf\000"
 10462      616C7469 
ARM GAS  /tmp/ccQR1hla.s 			page 236


 10462      6D655F62 
 10462      756600
 10463              	.LASF103:
 10464 0bcf 50494F5F 		.ascii	"PIO_PUDR\000"
 10464      50554452 
 10464      00
 10465              	.LASF247:
 10466 0bd8 5F5F636F 		.ascii	"__count\000"
 10466      756E7400 
 10467              	.LASF34:
 10468 0be0 75696E74 		.ascii	"uint8_t\000"
 10468      385F7400 
 10469              	.LASF358:
 10470 0be8 71756F74 		.ascii	"quot\000"
 10470      00
 10471              	.LASF470:
 10472 0bed 6368616E 		.ascii	"channel\000"
 10472      6E656C00 
 10473              	.LASF144:
 10474 0bf5 50494F5F 		.ascii	"PIO_PCIMR\000"
 10474      5043494D 
 10474      5200
 10475              	.LASF494:
 10476 0bff 5F455057 		.ascii	"_EPWMChannel\000"
 10476      4D436861 
 10476      6E6E656C 
 10476      00
 10477              	.LASF226:
 10478 0c0c 54435F49 		.ascii	"TC_IER\000"
 10478      455200
 10479              	.LASF506:
 10480 0c13 4E4F545F 		.ascii	"NOT_ON_TIMER\000"
 10480      4F4E5F54 
 10480      494D4552 
 10480      00
 10481              	.LASF631:
 10482 0c20 63684E6F 		.ascii	"chNo\000"
 10482      00
 10483              	.LASF27:
 10484 0c25 5F5F696E 		.ascii	"__int_least32_t\000"
 10484      745F6C65 
 10484      61737433 
 10484      325F7400 
 10485              	.LASF104:
 10486 0c35 50494F5F 		.ascii	"PIO_PUER\000"
 10486      50554552 
 10486      00
 10487              	.LASF235:
 10488 0c3e 54435F51 		.ascii	"TC_QIDR\000"
 10488      49445200 
 10489              	.LASF600:
 10490 0c46 4F555450 		.ascii	"OUTPUT_LOW\000"
 10490      55545F4C 
 10490      4F5700
 10491              	.LASF574:
 10492 0c51 5072696E 		.ascii	"Print\000"
 10492      7400
ARM GAS  /tmp/ccQR1hla.s 			page 237


 10493              	.LASF74:
 10494 0c57 44414343 		.ascii	"DACC_IMR\000"
 10494      5F494D52 
 10494      00
 10495              	.LASF623:
 10496 0c60 5F5A3963 		.ascii	"_Z9constrainIfET_S0_S0_S0_\000"
 10496      6F6E7374 
 10496      7261696E 
 10496      49664554 
 10496      5F53305F 
 10497              	.LASF234:
 10498 0c7b 54435F51 		.ascii	"TC_QIER\000"
 10498      49455200 
 10499              	.LASF571:
 10500 0c83 5F5F6374 		.ascii	"__ctype_ptr__\000"
 10500      7970655F 
 10500      7074725F 
 10500      5F00
 10501              	.LASF246:
 10502 0c91 5F5F7763 		.ascii	"__wchb\000"
 10502      686200
 10503              	.LASF310:
 10504 0c98 5F6D6272 		.ascii	"_mbrtowc_state\000"
 10504      746F7763 
 10504      5F737461 
 10504      746500
 10505              	.LASF260:
 10506 0ca7 5F5F746D 		.ascii	"__tm_hour\000"
 10506      5F686F75 
 10506      7200
 10507              	.LASF134:
 10508 0cb1 50494F5F 		.ascii	"PIO_WPMR\000"
 10508      57504D52 
 10508      00
 10509              	.LASF363:
 10510 0cba 6C6C6469 		.ascii	"lldiv_t\000"
 10510      765F7400 
 10511              	.LASF66:
 10512 0cc2 44414343 		.ascii	"DACC_TRIGR\000"
 10512      5F545249 
 10512      475200
 10513              	.LASF243:
 10514 0ccd 77696E74 		.ascii	"wint_t\000"
 10514      5F7400
 10515              	.LASF374:
 10516 0cd4 6D626C65 		.ascii	"mblen\000"
 10516      6E00
 10517              	.LASF353:
 10518 0cda 5F5A5374 		.ascii	"_ZSt6lroundf\000"
 10518      366C726F 
 10518      756E6466 
 10518      00
 10519              	.LASF487:
 10520 0ce7 756C5F73 		.ascii	"ul_spread\000"
 10520      70726561 
 10520      6400
 10521              	.LASF334:
ARM GAS  /tmp/ccQR1hla.s 			page 238


 10522 0cf1 5F6E6577 		.ascii	"_new\000"
 10522      00
 10523              	.LASF573:
 10524 0cf6 53455249 		.ascii	"SERIAL_BUFFER_SIZE\000"
 10524      414C5F42 
 10524      55464645 
 10524      525F5349 
 10524      5A4500
 10525              	.LASF342:
 10526 0d09 5F6E696F 		.ascii	"_niobs\000"
 10526      627300
 10527              	.LASF611:
 10528 0d10 50574D43 		.ascii	"PWMChanFreq\000"
 10528      68616E46 
 10528      72657100 
 10529              	.LASF318:
 10530 0d1c 5F657272 		.ascii	"_errno\000"
 10530      6E6F00
 10531              	.LASF261:
 10532 0d23 5F5F746D 		.ascii	"__tm_mday\000"
 10532      5F6D6461 
 10532      7900
 10533              	.LASF160:
 10534 0d2d 50574D5F 		.ascii	"PWM_CMPVUPD\000"
 10534      434D5056 
 10534      55504400 
 10535              	.LASF203:
 10536 0d39 50574D5F 		.ascii	"PWM_CMUPD0\000"
 10536      434D5550 
 10536      443000
 10537              	.LASF204:
 10538 0d44 50574D5F 		.ascii	"PWM_CMUPD1\000"
 10538      434D5550 
 10538      443100
 10539              	.LASF207:
 10540 0d4f 50574D5F 		.ascii	"PWM_CMUPD2\000"
 10540      434D5550 
 10540      443200
 10541              	.LASF210:
 10542 0d5a 50574D5F 		.ascii	"PWM_CMUPD3\000"
 10542      434D5550 
 10542      443300
 10543              	.LASF268:
 10544 0d65 5F666E61 		.ascii	"_fnargs\000"
 10544      72677300 
 10545              	.LASF107:
 10546 0d6d 50494F5F 		.ascii	"PIO_ABCDSR\000"
 10546      41424344 
 10546      535200
 10547              	.LASF484:
 10548 0d78 6661756C 		.ascii	"fault_id\000"
 10548      745F6964 
 10548      00
 10549              	.LASF244:
 10550 0d81 31305F6D 		.ascii	"10_mbstate_t\000"
 10550      62737461 
 10550      74655F74 
ARM GAS  /tmp/ccQR1hla.s 			page 239


 10550      00
 10551              	.LASF127:
 10552 0d8e 50494F5F 		.ascii	"PIO_ELSR\000"
 10552      454C5352 
 10552      00
 10553              	.LASF454:
 10554 0d97 50574D5F 		.ascii	"PWM_LEADING_EDGE3_MODE_LDEC\000"
 10554      4C454144 
 10554      494E475F 
 10554      45444745 
 10554      335F4D4F 
 10555              	.LASF479:
 10556 0db3 625F7077 		.ascii	"b_pwml_output_inverted\000"
 10556      6D6C5F6F 
 10556      75747075 
 10556      745F696E 
 10556      76657274 
 10557              	.LASF20:
 10558 0dca 5F5F696E 		.ascii	"__int64_t\000"
 10558      7436345F 
 10558      7400
 10559              	.LASF21:
 10560 0dd4 5F5F7569 		.ascii	"__uint64_t\000"
 10560      6E743634 
 10560      5F7400
 10561              	.LASF613:
 10562 0ddf 6D617850 		.ascii	"maxPwmLoopCount\000"
 10562      776D4C6F 
 10562      6F70436F 
 10562      756E7400 
 10563              	.LASF252:
 10564 0def 5F6E6578 		.ascii	"_next\000"
 10564      7400
 10565              	.LASF680:
 10566 0df5 5F5A5374 		.ascii	"_ZSt5isnanf\000"
 10566      3569736E 
 10566      616E6600 
 10567              	.LASF307:
 10568 0e01 5F736967 		.ascii	"_signal_buf\000"
 10568      6E616C5F 
 10568      62756600 
 10569              	.LASF419:
 10570 0e0d 50574D5F 		.ascii	"PWM_LOW\000"
 10570      4C4F5700 
 10571              	.LASF427:
 10572 0e15 70776D5F 		.ascii	"pwm_clock_t\000"
 10572      636C6F63 
 10572      6B5F7400 
 10573              	.LASF282:
 10574 0e21 5F636F6F 		.ascii	"_cookie\000"
 10574      6B696500 
 10575              	.LASF578:
 10576 0e29 5F747A6E 		.ascii	"_tzname\000"
 10576      616D6500 
 10577              	.LASF50:
 10578 0e31 75696E74 		.ascii	"uint_least64_t\000"
 10578      5F6C6561 
ARM GAS  /tmp/ccQR1hla.s 			page 240


 10578      73743634 
 10578      5F7400
 10579              	.LASF77:
 10580 0e40 44414343 		.ascii	"DACC_ACR\000"
 10580      5F414352 
 10580      00
 10581              	.LASF496:
 10582 0e49 50574D5F 		.ascii	"PWM_CH0\000"
 10582      43483000 
 10583              	.LASF497:
 10584 0e51 50574D5F 		.ascii	"PWM_CH1\000"
 10584      43483100 
 10585              	.LASF498:
 10586 0e59 50574D5F 		.ascii	"PWM_CH2\000"
 10586      43483200 
 10587              	.LASF499:
 10588 0e61 50574D5F 		.ascii	"PWM_CH3\000"
 10588      43483300 
 10589              	.LASF500:
 10590 0e69 50574D5F 		.ascii	"PWM_CH4\000"
 10590      43483400 
 10591              	.LASF501:
 10592 0e71 50574D5F 		.ascii	"PWM_CH5\000"
 10592      43483500 
 10593              	.LASF502:
 10594 0e79 50574D5F 		.ascii	"PWM_CH6\000"
 10594      43483600 
 10595              	.LASF503:
 10596 0e81 50574D5F 		.ascii	"PWM_CH7\000"
 10596      43483700 
 10597              	.LASF678:
 10598 0e89 6465636C 		.ascii	"decltype(nullptr)\000"
 10598      74797065 
 10598      286E756C 
 10598      6C707472 
 10598      2900
 10599              	.LASF382:
 10600 0e9b 73747274 		.ascii	"strtoul\000"
 10600      6F756C00 
 10601              	.LASF173:
 10602 0ea3 50574D5F 		.ascii	"PWM_ISR1\000"
 10602      49535231 
 10602      00
 10603              	.LASF182:
 10604 0eac 50574D5F 		.ascii	"PWM_ISR2\000"
 10604      49535232 
 10604      00
 10605              	.LASF630:
 10606 0eb5 63685443 		.ascii	"chTC\000"
 10606      00
 10607              	.LASF545:
 10608 0eba 41444331 		.ascii	"ADC17\000"
 10608      3700
 10609              	.LASF625:
 10610 0ec0 756C5661 		.ascii	"ulValue\000"
 10610      6C756500 
 10611              	.LASF145:
ARM GAS  /tmp/ccQR1hla.s 			page 241


 10612 0ec8 50494F5F 		.ascii	"PIO_PCISR\000"
 10612      50434953 
 10612      5200
 10613              	.LASF361:
 10614 0ed2 6C646976 		.ascii	"ldiv_t\000"
 10614      5F7400
 10615              	.LASF411:
 10616 0ed9 50494F5F 		.ascii	"PIO_OUTPUT_0\000"
 10616      4F555450 
 10616      55545F30 
 10616      00
 10617              	.LASF412:
 10618 0ee6 50494F5F 		.ascii	"PIO_OUTPUT_1\000"
 10618      4F555450 
 10618      55545F31 
 10618      00
 10619              	.LASF665:
 10620 0ef3 70776D5F 		.ascii	"pwm_channel_enable\000"
 10620      6368616E 
 10620      6E656C5F 
 10620      656E6162 
 10620      6C6500
 10621              	.LASF562:
 10622 0f06 756C5069 		.ascii	"ulPin\000"
 10622      6E00
 10623              	.LASF405:
 10624 0f0c 50494F5F 		.ascii	"PIO_NOT_A_PIN\000"
 10624      4E4F545F 
 10624      415F5049 
 10624      4E00
 10625              	.LASF649:
 10626 0f1a 436F6E76 		.ascii	"ConvertRange\000"
 10626      65727452 
 10626      616E6765 
 10626      00
 10627              	.LASF258:
 10628 0f27 5F5F746D 		.ascii	"__tm_sec\000"
 10628      5F736563 
 10628      00
 10629              	.LASF406:
 10630 0f30 50494F5F 		.ascii	"PIO_PERIPH_A\000"
 10630      50455249 
 10630      50485F41 
 10630      00
 10631              	.LASF407:
 10632 0f3d 50494F5F 		.ascii	"PIO_PERIPH_B\000"
 10632      50455249 
 10632      50485F42 
 10632      00
 10633              	.LASF384:
 10634 0f4a 77637374 		.ascii	"wcstombs\000"
 10634      6F6D6273 
 10634      00
 10635              	.LASF409:
 10636 0f53 50494F5F 		.ascii	"PIO_PERIPH_D\000"
 10636      50455249 
 10636      50485F44 
ARM GAS  /tmp/ccQR1hla.s 			page 242


 10636      00
 10637              	.LASF267:
 10638 0f60 5F6F6E5F 		.ascii	"_on_exit_args\000"
 10638      65786974 
 10638      5F617267 
 10638      7300
 10639              	.LASF356:
 10640 0f6e 69736E61 		.ascii	"isnan\000"
 10640      6E00
 10641              	.LASF333:
 10642 0f74 5F637674 		.ascii	"_cvtbuf\000"
 10642      62756600 
 10643              	.LASF93:
 10644 0f7c 50494F5F 		.ascii	"PIO_ODSR\000"
 10644      4F445352 
 10644      00
 10645              	.LASF276:
 10646 0f85 5F626173 		.ascii	"_base\000"
 10646      6500
 10647              	.LASF75:
 10648 0f8b 44414343 		.ascii	"DACC_ISR\000"
 10648      5F495352 
 10648      00
 10649              	.LASF53:
 10650 0f94 696E745F 		.ascii	"int_fast16_t\000"
 10650      66617374 
 10650      31365F74 
 10650      00
 10651              	.LASF130:
 10652 0fa1 50494F5F 		.ascii	"PIO_REHLSR\000"
 10652      5245484C 
 10652      535200
 10653              	.LASF686:
 10654 0fac 416E616C 		.ascii	"AnalogOut\000"
 10654      6F674F75 
 10654      7400
 10655              	.LASF557:
 10656 0fb6 41444332 		.ascii	"ADC29\000"
 10656      3900
 10657              	.LASF476:
 10658 0fbc 636F756E 		.ascii	"counter_event\000"
 10658      7465725F 
 10658      6576656E 
 10658      7400
 10659              	.LASF135:
 10660 0fca 50494F5F 		.ascii	"PIO_WPSR\000"
 10660      57505352 
 10660      00
 10661              	.LASF599:
 10662 0fd3 494E5055 		.ascii	"INPUT_PULLDOWN\000"
 10662      545F5055 
 10662      4C4C444F 
 10662      574E00
 10663              	.LASF228:
 10664 0fe2 54435F49 		.ascii	"TC_IMR\000"
 10664      4D5200
 10665              	.LASF456:
ARM GAS  /tmp/ccQR1hla.s 			page 243


 10666 0fe9 50574D5F 		.ascii	"PWM_LEADING_EDGE3_MODE_HDEC\000"
 10666      4C454144 
 10666      494E475F 
 10666      45444745 
 10666      335F4D4F 
 10667              	.LASF692:
 10668 1005 6D656D73 		.ascii	"memset\000"
 10668      657400
 10669              	.LASF230:
 10670 100c 54634368 		.ascii	"TcChannel\000"
 10670      616E6E65 
 10670      6C00
 10671              	.LASF457:
 10672 1016 50574D5F 		.ascii	"PWM_LEADING_EDGE4_MODE_LINC\000"
 10672      4C454144 
 10672      494E475F 
 10672      45444745 
 10672      345F4D4F 
 10673              	.LASF597:
 10674 1032 494E5055 		.ascii	"INPUT\000"
 10674      5400
 10675              	.LASF473:
 10676 1038 706F6C61 		.ascii	"polarity\000"
 10676      72697479 
 10676      00
 10677              	.LASF293:
 10678 1041 5F6D6273 		.ascii	"_mbstate\000"
 10678      74617465 
 10678      00
 10679              	.LASF605:
 10680 104a 4F555450 		.ascii	"OUTPUT_LOW_OPEN_DRAIN\000"
 10680      55545F4C 
 10680      4F575F4F 
 10680      50454E5F 
 10680      44524149 
 10681              	.LASF92:
 10682 1060 50494F5F 		.ascii	"PIO_CODR\000"
 10682      434F4452 
 10682      00
 10683              	.LASF33:
 10684 1069 696E7438 		.ascii	"int8_t\000"
 10684      5F7400
 10685              	.LASF251:
 10686 1070 5F5F554C 		.ascii	"__ULong\000"
 10686      6F6E6700 
 10687              	.LASF101:
 10688 1078 50494F5F 		.ascii	"PIO_MDSR\000"
 10688      4D445352 
 10688      00
 10689              	.LASF643:
 10690 1081 6368616E 		.ascii	"channelConfig\000"
 10690      6E656C43 
 10690      6F6E6669 
 10690      6700
 10691              	.LASF54:
 10692 108f 75696E74 		.ascii	"uint_fast16_t\000"
 10692      5F666173 
ARM GAS  /tmp/ccQR1hla.s 			page 244


 10692      7431365F 
 10692      7400
 10693              	.LASF47:
 10694 109d 696E745F 		.ascii	"int_least32_t\000"
 10694      6C656173 
 10694      7433325F 
 10694      7400
 10695              	.LASF379:
 10696 10ab 7372616E 		.ascii	"srand\000"
 10696      6400
 10697              	.LASF446:
 10698 10b1 50574D5F 		.ascii	"PWM_LEADING_EDGE1_MODE_LDEC\000"
 10698      4C454144 
 10698      494E475F 
 10698      45444745 
 10698      315F4D4F 
 10699              	.LASF166:
 10700 10cd 50574D5F 		.ascii	"PWM_CLK\000"
 10700      434C4B00 
 10701              	.LASF426:
 10702 10d5 756C5F6D 		.ascii	"ul_mck\000"
 10702      636B00
 10703              	.LASF666:
 10704 10dc 70776D5F 		.ascii	"pwm_channel_init\000"
 10704      6368616E 
 10704      6E656C5F 
 10704      696E6974 
 10704      00
 10705              	.LASF236:
 10706 10ed 54435F51 		.ascii	"TC_QIMR\000"
 10706      494D5200 
 10707              	.LASF140:
 10708 10f5 52657365 		.ascii	"Reserved14\000"
 10708      72766564 
 10708      313400
 10709              	.LASF688:
 10710 1100 416E616C 		.ascii	"AnalogOutInit\000"
 10710      6F674F75 
 10710      74496E69 
 10710      7400
 10711              	.LASF297:
 10712 110e 5F737472 		.ascii	"_strtok_last\000"
 10712      746F6B5F 
 10712      6C617374 
 10712      00
 10713              	.LASF663:
 10714 111b 70776D5F 		.ascii	"pwm_init\000"
 10714      696E6974 
 10714      00
 10715              	.LASF667:
 10716 1124 70696F5F 		.ascii	"pio_configure\000"
 10716      636F6E66 
 10716      69677572 
 10716      6500
 10717              	.LASF89:
 10718 1132 50494F5F 		.ascii	"PIO_IFDR\000"
 10718      49464452 
ARM GAS  /tmp/ccQR1hla.s 			page 245


 10718      00
 10719              	.LASF61:
 10720 113b 73697A65 		.ascii	"sizetype\000"
 10720      74797065 
 10720      00
 10721              	.LASF345:
 10722 1144 5F736565 		.ascii	"_seed\000"
 10722      6400
 10723              	.LASF644:
 10724 114a 636C6F63 		.ascii	"clockConfig\000"
 10724      6B436F6E 
 10724      66696700 
 10725              	.LASF285:
 10726 1156 5F736565 		.ascii	"_seek\000"
 10726      6B00
 10727              	.LASF584:
 10728 115c 4150494E 		.ascii	"APIN_UART1_TXD\000"
 10728      5F554152 
 10728      54315F54 
 10728      584400
 10729              	.LASF8:
 10730 116b 6D61785F 		.ascii	"max_align_t\000"
 10730      616C6967 
 10730      6E5F7400 
 10731              	.LASF149:
 10732 1177 50574D5F 		.ascii	"PWM_CMR\000"
 10732      434D5200 
 10733              	.LASF653:
 10734 117f 5F5A336D 		.ascii	"_Z3minIfET_S0_S0_\000"
 10734      696E4966 
 10734      45545F53 
 10734      305F5330 
 10734      5F00
 10735              	.LASF383:
 10736 1191 73797374 		.ascii	"system\000"
 10736      656D00
 10737              	.LASF199:
 10738 1198 50574D5F 		.ascii	"PWM_WPCR\000"
 10738      57504352 
 10738      00
 10739              	.LASF35:
 10740 11a1 696E7431 		.ascii	"int16_t\000"
 10740      365F7400 
 10741              	.LASF527:
 10742 11a9 4E4F5F41 		.ascii	"NO_ADC\000"
 10742      444300
 10743              	.LASF2:
 10744 11b0 73686F72 		.ascii	"short unsigned int\000"
 10744      7420756E 
 10744      7369676E 
 10744      65642069 
 10744      6E7400
 10745              	.LASF689:
 10746 11c3 5F5A3133 		.ascii	"_Z13AnalogOutInitv\000"
 10746      416E616C 
 10746      6F674F75 
 10746      74496E69 
ARM GAS  /tmp/ccQR1hla.s 			page 246


 10746      747600
 10747              	.LASF10:
 10748 11d6 7369676E 		.ascii	"signed char\000"
 10748      65642063 
 10748      68617200 
 10749              	.LASF88:
 10750 11e2 50494F5F 		.ascii	"PIO_IFER\000"
 10750      49464552 
 10750      00
 10751              	.LASF450:
 10752 11eb 50574D5F 		.ascii	"PWM_LEADING_EDGE2_MODE_LDEC\000"
 10752      4C454144 
 10752      494E475F 
 10752      45444745 
 10752      325F4D4F 
 10753              	.LASF398:
 10754 1207 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 10754      6C69626D 
 10754      5F696565 
 10754      6500
 10755              	.LASF675:
 10756 1215 474E5520 		.ascii	"GNU C++14 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -m"
 10756      432B2B31 
 10756      3420362E 
 10756      332E3120 
 10756      32303137 
 10757 1248 6670753D 		.ascii	"fpu=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu++14 -"
 10757      66707635 
 10757      2D643136 
 10757      202D6D66 
 10757      6C6F6174 
 10758 127b 6666756E 		.ascii	"ffunction-sections -fdata-sections -fno-threadsafe-"
 10758      6374696F 
 10758      6E2D7365 
 10758      6374696F 
 10758      6E73202D 
 10759 12ae 73746174 		.ascii	"statics -fno-rtti -fno-exceptions -fsingle-precisio"
 10759      69637320 
 10759      2D666E6F 
 10759      2D727474 
 10759      69202D66 
 10760 12e1 6E2D636F 		.ascii	"n-constant\000"
 10760      6E737461 
 10760      6E7400
 10761              	.LASF565:
 10762 12ec 756C5069 		.ascii	"ulPinConfiguration\000"
 10762      6E436F6E 
 10762      66696775 
 10762      72617469 
 10762      6F6E00
 10763              	.LASF492:
 10764 12ff 70776D5F 		.ascii	"pwm_channel_t\000"
 10764      6368616E 
 10764      6E656C5F 
 10764      7400
 10765              	.LASF442:
 10766 130d 50574D5F 		.ascii	"PWM_SPREAD_SPECTRUM_MODE_RANDOM\000"
ARM GAS  /tmp/ccQR1hla.s 			page 247


 10766      53505245 
 10766      41445F53 
 10766      50454354 
 10766      52554D5F 
 10767              	.LASF331:
 10768 132d 5F667265 		.ascii	"_freelist\000"
 10768      656C6973 
 10768      7400
 10769              	.LASF26:
 10770 1337 5F5F7569 		.ascii	"__uint_least16_t\000"
 10770      6E745F6C 
 10770      65617374 
 10770      31365F74 
 10770      00
 10771              	.LASF376:
 10772 1348 77636861 		.ascii	"wchar_t\000"
 10772      725F7400 
 10773              	.LASF168:
 10774 1350 50574D5F 		.ascii	"PWM_DIS\000"
 10774      44495300 
 10775              	.LASF165:
 10776 1358 3350776D 		.ascii	"3Pwm\000"
 10776      00
 10777              	.LASF459:
 10778 135d 50574D5F 		.ascii	"PWM_LEADING_EDGE4_MODE_HINC\000"
 10778      4C454144 
 10778      494E475F 
 10778      45444745 
 10778      345F4D4F 
 10779              	.LASF290:
 10780 1379 5F6F6666 		.ascii	"_offset\000"
 10780      73657400 
 10781              	.LASF63:
 10782 1381 53797374 		.ascii	"SystemCoreClock\000"
 10782      656D436F 
 10782      7265436C 
 10782      6F636B00 
 10783              	.LASF275:
 10784 1391 5F5F7362 		.ascii	"__sbuf\000"
 10784      756600
 10785              	.LASF375:
 10786 1398 6D627374 		.ascii	"mbstowcs\000"
 10786      6F776373 
 10786      00
 10787              	.LASF306:
 10788 13a1 5F6C3634 		.ascii	"_l64a_buf\000"
 10788      615F6275 
 10788      6600
 10789              	.LASF474:
 10790 13ab 756C5F64 		.ascii	"ul_duty\000"
 10790      75747900 
 10791              	.LASF126:
 10792 13b3 50494F5F 		.ascii	"PIO_LSR\000"
 10792      4C535200 
 10793              	.LASF187:
 10794 13bb 50574D5F 		.ascii	"PWM_OSSUPD\000"
 10794      4F535355 
ARM GAS  /tmp/ccQR1hla.s 			page 248


 10794      504400
 10795              	.LASF298:
 10796 13c6 5F617363 		.ascii	"_asctime_buf\000"
 10796      74696D65 
 10796      5F627566 
 10796      00
 10797              	.LASF245:
 10798 13d3 5F5F7763 		.ascii	"__wch\000"
 10798      6800
 10799              	.LASF248:
 10800 13d9 5F5F7661 		.ascii	"__value\000"
 10800      6C756500 
 10801              	.LASF608:
 10802 13e1 53657269 		.ascii	"SerialUSB\000"
 10802      616C5553 
 10802      4200
 10803              	.LASF216:
 10804 13eb 39546343 		.ascii	"9TcChannel\000"
 10804      68616E6E 
 10804      656C00
 10805              	.LASF313:
 10806 13f6 5F776373 		.ascii	"_wcsrtombs_state\000"
 10806      72746F6D 
 10806      62735F73 
 10806      74617465 
 10806      00
 10807              	.LASF650:
 10808 1407 6D61783C 		.ascii	"max<float>\000"
 10808      666C6F61 
 10808      743E00
 10809              	.LASF105:
 10810 1412 50494F5F 		.ascii	"PIO_PUSR\000"
 10810      50555352 
 10810      00
 10811              	.LASF240:
 10812 141b 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 10812      4B5F5245 
 10812      43555253 
 10812      4956455F 
 10812      5400
 10813              	.LASF403:
 10814 142d 5F5F6664 		.ascii	"__fdlibm_version\000"
 10814      6C69626D 
 10814      5F766572 
 10814      73696F6E 
 10814      00
 10815              	.LASF661:
 10816 143e 64616363 		.ascii	"dacc_reset\000"
 10816      5F726573 
 10816      657400
 10817              	.LASF685:
 10818 1449 53657269 		.ascii	"SerialCDC\000"
 10818      616C4344 
 10818      4300
 10819              	.LASF614:
 10820 1453 6E756D54 		.ascii	"numTcChannels\000"
 10820      63436861 
ARM GAS  /tmp/ccQR1hla.s 			page 249


 10820      6E6E656C 
 10820      7300
 10821              	.LASF17:
 10822 1461 6C6F6E67 		.ascii	"long int\000"
 10822      20696E74 
 10822      00
 10823              	.LASF603:
 10824 146a 4F555450 		.ascii	"OUTPUT_PWM_LOW\000"
 10824      55545F50 
 10824      574D5F4C 
 10824      4F5700
 10825              	.LASF237:
 10826 1479 54435F51 		.ascii	"TC_QISR\000"
 10826      49535200 
 10827              	.LASF305:
 10828 1481 5F776374 		.ascii	"_wctomb_state\000"
 10828      6F6D625F 
 10828      73746174 
 10828      6500
 10829              	.LASF658:
 10830 148f 64616363 		.ascii	"dacc_enable_channel\000"
 10830      5F656E61 
 10830      626C655F 
 10830      6368616E 
 10830      6E656C00 
 10831              	.LASF197:
 10832 14a3 50574D5F 		.ascii	"PWM_SMMR\000"
 10832      534D4D52 
 10832      00
 10833              	.LASF24:
 10834 14ac 5F5F7569 		.ascii	"__uint_least8_t\000"
 10834      6E745F6C 
 10834      65617374 
 10834      385F7400 
 10835              	.LASF604:
 10836 14bc 4F555450 		.ascii	"OUTPUT_PWM_HIGH\000"
 10836      55545F50 
 10836      574D5F48 
 10836      49474800 
 10837              	.LASF86:
 10838 14cc 50494F5F 		.ascii	"PIO_ODR\000"
 10838      4F445200 
 10839              	.LASF452:
 10840 14d4 50574D5F 		.ascii	"PWM_LEADING_EDGE2_MODE_HDEC\000"
 10840      4C454144 
 10840      494E475F 
 10840      45444745 
 10840      325F4D4F 
 10841              	.LASF343:
 10842 14f0 5F696F62 		.ascii	"_iobs\000"
 10842      7300
 10843              	.LASF323:
 10844 14f6 5F656D65 		.ascii	"_emergency\000"
 10844      7267656E 
 10844      637900
 10845              	.LASF309:
 10846 1501 5F6D6272 		.ascii	"_mbrlen_state\000"
ARM GAS  /tmp/ccQR1hla.s 			page 250


 10846      6C656E5F 
 10846      73746174 
 10846      6500
 10847              	.LASF315:
 10848 150f 5F6E6578 		.ascii	"_nextf\000"
 10848      746600
 10849              	.LASF683:
 10850 1516 77726974 		.ascii	"write\000"
 10850      6500
 10851              	.LASF301:
 10852 151c 5F72616E 		.ascii	"_rand_next\000"
 10852      645F6E65 
 10852      787400
 10853              	.LASF41:
 10854 1527 696E7470 		.ascii	"intptr_t\000"
 10854      74725F74 
 10854      00
 10855              	.LASF69:
 10856 1530 44414343 		.ascii	"DACC_CHDR\000"
 10856      5F434844 
 10856      5200
 10857              	.LASF38:
 10858 153a 75696E74 		.ascii	"uint32_t\000"
 10858      33325F74 
 10858      00
 10859              	.LASF85:
 10860 1543 50494F5F 		.ascii	"PIO_OER\000"
 10860      4F455200 
 10861              	.LASF672:
 10862 154b 74635F77 		.ascii	"tc_write_ra\000"
 10862      72697465 
 10862      5F726100 
 10863              	.LASF674:
 10864 1557 74635F77 		.ascii	"tc_write_rb\000"
 10864      72697465 
 10864      5F726200 
 10865              	.LASF670:
 10866 1563 74635F77 		.ascii	"tc_write_rc\000"
 10866      72697465 
 10866      5F726300 
 10867              	.LASF253:
 10868 156f 5F6D6178 		.ascii	"_maxwds\000"
 10868      77647300 
 10869              	.LASF380:
 10870 1577 73747274 		.ascii	"strtod\000"
 10870      6F6400
 10871              	.LASF42:
 10872 157e 75696E74 		.ascii	"uintptr_t\000"
 10872      7074725F 
 10872      7400
 10873              	.LASF381:
 10874 1588 73747274 		.ascii	"strtol\000"
 10874      6F6C00
 10875              	.LASF232:
 10876 158f 54435F42 		.ascii	"TC_BCR\000"
 10876      435200
 10877              	.LASF6:
ARM GAS  /tmp/ccQR1hla.s 			page 251


 10878 1596 6C6F6E67 		.ascii	"long double\000"
 10878      20646F75 
 10878      626C6500 
 10879              	.LASF71:
 10880 15a2 44414343 		.ascii	"DACC_CDR\000"
 10880      5F434452 
 10880      00
 10881              	.LASF365:
 10882 15ab 7375626F 		.ascii	"suboptarg\000"
 10882      70746172 
 10882      6700
 10883              	.LASF618:
 10884 15b5 54434368 		.ascii	"TCChanFreq\000"
 10884      616E4672 
 10884      657100
 10885              	.LASF68:
 10886 15c0 44414343 		.ascii	"DACC_CHER\000"
 10886      5F434845 
 10886      5200
 10887              	.LASF495:
 10888 15ca 4E4F545F 		.ascii	"NOT_ON_PWM\000"
 10888      4F4E5F50 
 10888      574D00
 10889              	.LASF429:
 10890 15d5 50574D5F 		.ascii	"PWM_EVENT_PERIOD_END\000"
 10890      4556454E 
 10890      545F5045 
 10890      52494F44 
 10890      5F454E44 
 10891              	.LASF191:
 10892 15ea 50574D5F 		.ascii	"PWM_FCR\000"
 10892      46435200 
 10893              	.LASF662:
 10894 15f2 64616363 		.ascii	"dacc_set_transfer_mode\000"
 10894      5F736574 
 10894      5F747261 
 10894      6E736665 
 10894      725F6D6F 
 10895              	.LASF19:
 10896 1609 6C6F6E67 		.ascii	"long unsigned int\000"
 10896      20756E73 
 10896      69676E65 
 10896      6420696E 
 10896      7400
 10897              	.LASF431:
 10898 161b 70776D5F 		.ascii	"pwm_counter_event_t\000"
 10898      636F756E 
 10898      7465725F 
 10898      6576656E 
 10898      745F7400 
 10899              	.LASF632:
 10900 162f 646F496E 		.ascii	"doInit\000"
 10900      697400
 10901              	.LASF393:
 10902 1636 626F6F6C 		.ascii	"bool\000"
 10902      00
 10903              	.LASF491:
ARM GAS  /tmp/ccQR1hla.s 			page 252


 10904 163b 756C5F70 		.ascii	"ul_ppm_mode\000"
 10904      706D5F6D 
 10904      6F646500 
 10905              	.LASF155:
 10906 1647 50574D5F 		.ascii	"PWM_DT\000"
 10906      445400
 10907              	.LASF148:
 10908 164e 3950776D 		.ascii	"9PwmCh_num\000"
 10908      43685F6E 
 10908      756D00
 10909              	.LASF629:
 10910 1659 6368616E 		.ascii	"chan\000"
 10910      00
 10911              	.LASF339:
 10912 165e 63686172 		.ascii	"char\000"
 10912      00
 10913              	.LASF475:
 10914 1663 756C5F70 		.ascii	"ul_period\000"
 10914      6572696F 
 10914      6400
 10915              	.LASF341:
 10916 166d 5F676C75 		.ascii	"_glue\000"
 10916      6500
 10917              	.LASF638:
 10918 1673 416E616C 		.ascii	"AnalogWritePwm\000"
 10918      6F675772 
 10918      69746550 
 10918      776D00
 10919              	.LASF46:
 10920 1682 75696E74 		.ascii	"uint_least16_t\000"
 10920      5F6C6561 
 10920      73743136 
 10920      5F7400
 10921              	.LASF336:
 10922 1691 5F736967 		.ascii	"_sig_func\000"
 10922      5F66756E 
 10922      6300
 10923              	.LASF606:
 10924 169b 4F555450 		.ascii	"OUTPUT_HIGH_OPEN_DRAIN\000"
 10924      55545F48 
 10924      4947485F 
 10924      4F50454E 
 10924      5F445241 
 10925              	.LASF256:
 10926 16b2 5F426967 		.ascii	"_Bigint\000"
 10926      696E7400 
 10927              	.LASF57:
 10928 16ba 696E745F 		.ascii	"int_fast64_t\000"
 10928      66617374 
 10928      36345F74 
 10928      00
 10929              	.LASF64:
 10930 16c7 44414343 		.ascii	"DACC_CR\000"
 10930      5F435200 
 10931              	.LASF32:
 10932 16cf 5F5F7569 		.ascii	"__uintptr_t\000"
 10932      6E747074 
ARM GAS  /tmp/ccQR1hla.s 			page 253


 10932      725F7400 
 10933              	.LASF462:
 10934 16db 31327077 		.ascii	"12pwm_output_t\000"
 10934      6D5F6F75 
 10934      74707574 
 10934      5F7400
 10935              	.LASF570:
 10936 16ea 675F4150 		.ascii	"g_APinDescription\000"
 10936      696E4465 
 10936      73637269 
 10936      7074696F 
 10936      6E00
 10937              	.LASF335:
 10938 16fc 5F617465 		.ascii	"_atexit0\000"
 10938      78697430 
 10938      00
 10939              	.LASF416:
 10940 1705 70776D5F 		.ascii	"pwm_align_t\000"
 10940      616C6967 
 10940      6E5F7400 
 10941              	.LASF617:
 10942 1711 6368616E 		.ascii	"channelToId\000"
 10942      6E656C54 
 10942      6F496400 
 10943              	.LASF308:
 10944 171d 5F676574 		.ascii	"_getdate_err\000"
 10944      64617465 
 10944      5F657272 
 10944      00
 10945              	.LASF387:
 10946 172a 61746F6C 		.ascii	"atoll\000"
 10946      6C00
 10947              	.LASF480:
 10948 1730 75735F64 		.ascii	"us_deadtime_pwmh\000"
 10948      65616474 
 10948      696D655F 
 10948      70776D68 
 10948      00
 10949              	.LASF83:
 10950 1741 50494F5F 		.ascii	"PIO_PDR\000"
 10950      50445200 
 10951              	.LASF481:
 10952 1749 75735F64 		.ascii	"us_deadtime_pwml\000"
 10952      65616474 
 10952      696D655F 
 10952      70776D6C 
 10952      00
 10953              	.LASF58:
 10954 175a 75696E74 		.ascii	"uint_fast64_t\000"
 10954      5F666173 
 10954      7436345F 
 10954      7400
 10955              	.LASF183:
 10956 1768 50574D5F 		.ascii	"PWM_OOV\000"
 10956      4F4F5600 
 10957              	.LASF371:
 10958 1770 62736561 		.ascii	"bsearch\000"
ARM GAS  /tmp/ccQR1hla.s 			page 254


 10958      72636800 
 10959              	.LASF642:
 10960 1778 64757479 		.ascii	"duty\000"
 10960      00
 10961              	.LASF445:
 10962 177d 50574D5F 		.ascii	"PWM_LEADING_EDGE1_MODE_LINC\000"
 10962      4C454144 
 10962      494E475F 
 10962      45444745 
 10962      315F4D4F 
 10963              	.LASF634:
 10964 1799 54435F57 		.ascii	"TC_WriteCCR\000"
 10964      72697465 
 10964      43435200 
 10965              	.LASF167:
 10966 17a5 50574D5F 		.ascii	"PWM_ENA\000"
 10966      454E4100 
 10967              	.LASF82:
 10968 17ad 50494F5F 		.ascii	"PIO_PER\000"
 10968      50455200 
 10969              	.LASF669:
 10970 17b5 74635F69 		.ascii	"tc_init\000"
 10970      6E697400 
 10971              	.LASF408:
 10972 17bd 50494F5F 		.ascii	"PIO_PERIPH_C\000"
 10972      50455249 
 10972      50485F43 
 10972      00
 10973              	.LASF348:
 10974 17ca 5F696D70 		.ascii	"_impure_ptr\000"
 10974      7572655F 
 10974      70747200 
 10975              	.LASF289:
 10976 17d6 5F626C6B 		.ascii	"_blksize\000"
 10976      73697A65 
 10976      00
 10977              	.LASF287:
 10978 17df 5F756275 		.ascii	"_ubuf\000"
 10978      6600
 10979              	.LASF217:
 10980 17e5 54435F43 		.ascii	"TC_CCR\000"
 10980      435200
 10981              	.LASF303:
 10982 17ec 5F6D626C 		.ascii	"_mblen_state\000"
 10982      656E5F73 
 10982      74617465 
 10982      00
 10983              	.LASF337:
 10984 17f9 5F5F7367 		.ascii	"__sglue\000"
 10984      6C756500 
 10985              	.LASF566:
 10986 1801 756C5069 		.ascii	"ulPinAttribute\000"
 10986      6E417474 
 10986      72696275 
 10986      746500
 10987              	.LASF593:
 10988 1810 53657269 		.ascii	"Serial\000"
ARM GAS  /tmp/ccQR1hla.s 			page 255


 10988      616C00
 10989              	.LASF327:
 10990 1817 5F5F636C 		.ascii	"__cleanup\000"
 10990      65616E75 
 10990      7000
 10991              	.LASF153:
 10992 1821 50574D5F 		.ascii	"PWM_CPRDUPD\000"
 10992      43505244 
 10992      55504400 
 10993              	.LASF39:
 10994 182d 696E7436 		.ascii	"int64_t\000"
 10994      345F7400 
 10995              	.LASF141:
 10996 1835 50494F5F 		.ascii	"PIO_PCMR\000"
 10996      50434D52 
 10996      00
 10997              	.LASF242:
 10998 183e 5F66706F 		.ascii	"_fpos_t\000"
 10998      735F7400 
 10999              	.LASF280:
 11000 1846 5F66696C 		.ascii	"_file\000"
 11000      6500
 11001              	.LASF44:
 11002 184c 75696E74 		.ascii	"uint_least8_t\000"
 11002      5F6C6561 
 11002      7374385F 
 11002      7400
 11003              	.LASF202:
 11004 185a 50574D5F 		.ascii	"PWM_CH_NUM\000"
 11004      43485F4E 
 11004      554D00
 11005              	.LASF373:
 11006 1865 6C646976 		.ascii	"ldiv\000"
 11006      00
 11007              	.LASF621:
 11008 186a 766D6178 		.ascii	"vmax\000"
 11008      00
 11009              	.LASF178:
 11010 186f 50574D5F 		.ascii	"PWM_SCUPUPD\000"
 11010      53435550 
 11010      55504400 
 11011              	.LASF278:
 11012 187b 5F5F7346 		.ascii	"__sFILE\000"
 11012      494C4500 
 11013              	.LASF569:
 11014 1883 756C5443 		.ascii	"ulTCChannel\000"
 11014      4368616E 
 11014      6E656C00 
 11015              	.LASF590:
 11016 188f 4D617850 		.ascii	"MaxPinNumber\000"
 11016      696E4E75 
 11016      6D626572 
 11016      00
 11017              	.LASF486:
 11018 189c 756C5F66 		.ascii	"ul_fault_output_pwml\000"
 11018      61756C74 
 11018      5F6F7574 
ARM GAS  /tmp/ccQR1hla.s 			page 256


 11018      7075745F 
 11018      70776D6C 
 11019              	.LASF368:
 11020 18b1 646F7562 		.ascii	"double\000"
 11020      6C6500
 11021              	.LASF274:
 11022 18b8 5F666E73 		.ascii	"_fns\000"
 11022      00
 11023              	.LASF349:
 11024 18bd 5F676C6F 		.ascii	"_global_impure_ptr\000"
 11024      62616C5F 
 11024      696D7075 
 11024      72655F70 
 11024      747200
 11025              	.LASF90:
 11026 18d0 50494F5F 		.ascii	"PIO_IFSR\000"
 11026      49465352 
 11026      00
 11027              	.LASF194:
 11028 18d9 50574D5F 		.ascii	"PWM_ELMR\000"
 11028      454C4D52 
 11028      00
 11029              	.LASF249:
 11030 18e2 5F6D6273 		.ascii	"_mbstate_t\000"
 11030      74617465 
 11030      5F7400
 11031              	.LASF314:
 11032 18ed 5F685F65 		.ascii	"_h_errno\000"
 11032      72726E6F 
 11032      00
 11033              	.LASF30:
 11034 18f6 5F5F7569 		.ascii	"__uint_least64_t\000"
 11034      6E745F6C 
 11034      65617374 
 11034      36345F74 
 11034      00
 11035              	.LASF176:
 11036 1907 50574D5F 		.ascii	"PWM_SCUC\000"
 11036      53435543 
 11036      00
 11037              	.LASF198:
 11038 1910 50574D5F 		.ascii	"PWM_FPV2\000"
 11038      46505632 
 11038      00
 11039              	.LASF177:
 11040 1919 50574D5F 		.ascii	"PWM_SCUP\000"
 11040      53435550 
 11040      00
 11041              	.LASF16:
 11042 1922 5F5F696E 		.ascii	"__int32_t\000"
 11042      7433325F 
 11042      7400
 11043              	.LASF186:
 11044 192c 50574D5F 		.ascii	"PWM_OSC\000"
 11044      4F534300 
 11045              	.LASF18:
 11046 1934 5F5F7569 		.ascii	"__uint32_t\000"
ARM GAS  /tmp/ccQR1hla.s 			page 257


 11046      6E743332 
 11046      5F7400
 11047              	.LASF378:
 11048 193f 71736F72 		.ascii	"qsort\000"
 11048      7400
 11049              	.LASF465:
 11050 1945 6F766572 		.ascii	"override_level_pwmh\000"
 11050      72696465 
 11050      5F6C6576 
 11050      656C5F70 
 11050      776D6800 
 11051              	.LASF463:
 11052 1959 625F6F76 		.ascii	"b_override_pwmh\000"
 11052      65727269 
 11052      64655F70 
 11052      776D6800 
 11053              	.LASF466:
 11054 1969 6F766572 		.ascii	"override_level_pwml\000"
 11054      72696465 
 11054      5F6C6576 
 11054      656C5F70 
 11054      776D6C00 
 11055              	.LASF25:
 11056 197d 5F5F696E 		.ascii	"__int_least16_t\000"
 11056      745F6C65 
 11056      61737431 
 11056      365F7400 
 11057              	.LASF464:
 11058 198d 625F6F76 		.ascii	"b_override_pwml\000"
 11058      65727269 
 11058      64655F70 
 11058      776D6C00 
 11059              	.LASF651:
 11060 199d 5F5A336D 		.ascii	"_Z3maxIfET_S0_S0_\000"
 11060      61784966 
 11060      45545F53 
 11060      305F5330 
 11060      5F00
 11061              	.LASF185:
 11062 19af 50574D5F 		.ascii	"PWM_OSS\000"
 11062      4F535300 
 11063              	.LASF206:
 11064 19b7 50574D5F 		.ascii	"PWM_LEBR1\000"
 11064      4C454252 
 11064      3100
 11065              	.LASF209:
 11066 19c1 50574D5F 		.ascii	"PWM_LEBR2\000"
 11066      4C454252 
 11066      3200
 11067              	.LASF212:
 11068 19cb 50574D5F 		.ascii	"PWM_LEBR3\000"
 11068      4C454252 
 11068      3300
 11069              	.LASF215:
 11070 19d5 50574D5F 		.ascii	"PWM_LEBR4\000"
 11070      4C454252 
 11070      3400
ARM GAS  /tmp/ccQR1hla.s 			page 258


 11071              	.LASF122:
 11072 19df 50494F5F 		.ascii	"PIO_AIMDR\000"
 11072      41494D44 
 11072      5200
 11073              	.LASF221:
 11074 19e9 54435F43 		.ascii	"TC_CV\000"
 11074      5600
 11075              	.LASF467:
 11076 19ef 70776D5F 		.ascii	"pwm_output_t\000"
 11076      6F757470 
 11076      75745F74 
 11076      00
 11077              	.LASF271:
 11078 19fc 5F69735F 		.ascii	"_is_cxa\000"
 11078      63786100 
 11079              	.LASF421:
 11080 1a04 50574D5F 		.ascii	"PWM_HIGHZ\000"
 11080      48494748 
 11080      5A00
 11081              	.LASF109:
 11082 1a0e 50494F5F 		.ascii	"PIO_IFSCDR\000"
 11082      49465343 
 11082      445200
 11083              	.LASF330:
 11084 1a19 5F703573 		.ascii	"_p5s\000"
 11084      00
 11085              	.LASF447:
 11086 1a1e 50574D5F 		.ascii	"PWM_LEADING_EDGE1_MODE_HINC\000"
 11086      4C454144 
 11086      494E475F 
 11086      45444745 
 11086      315F4D4F 
 11087              	.LASF515:
 11088 1a3a 5443315F 		.ascii	"TC1_CHA4\000"
 11088      43484134 
 11088      00
 11089              	.LASF517:
 11090 1a43 5443315F 		.ascii	"TC1_CHA5\000"
 11090      43484135 
 11090      00
 11091              	.LASF622:
 11092 1a4c 6D696E3C 		.ascii	"min<long unsigned int>\000"
 11092      6C6F6E67 
 11092      20756E73 
 11092      69676E65 
 11092      6420696E 
 11093              	.LASF121:
 11094 1a63 50494F5F 		.ascii	"PIO_AIMER\000"
 11094      41494D45 
 11094      5200
 11095              	.LASF647:
 11096 1a6d 416E616C 		.ascii	"AnalogWriteDac\000"
 11096      6F675772 
 11096      69746544 
 11096      616300
 11097              	.LASF233:
 11098 1a7c 54435F42 		.ascii	"TC_BMR\000"
ARM GAS  /tmp/ccQR1hla.s 			page 259


 11098      4D5200
 11099              	.LASF628:
 11100 1a83 70696E44 		.ascii	"pinDesc\000"
 11100      65736300 
 11101              	.LASF312:
 11102 1a8b 5F776372 		.ascii	"_wcrtomb_state\000"
 11102      746F6D62 
 11102      5F737461 
 11102      746500
 11103              	.LASF110:
 11104 1a9a 50494F5F 		.ascii	"PIO_IFSCER\000"
 11104      49465343 
 11104      455200
 11105              	.LASF693:
 11106 1aa5 5F5A3132 		.ascii	"_Z12ConfigurePinRK14PinDescription\000"
 11106      436F6E66 
 11106      69677572 
 11106      6550696E 
 11106      524B3134 
 11107              	.LASF357:
 11108 1ac8 35646976 		.ascii	"5div_t\000"
 11108      5F7400
 11109              	.LASF189:
 11110 1acf 50574D5F 		.ascii	"PWM_FMR\000"
 11110      464D5200 
 11111              	.LASF359:
 11112 1ad7 6469765F 		.ascii	"div_t\000"
 11112      7400
 11113              	.LASF673:
 11114 1add 74635F73 		.ascii	"tc_start\000"
 11114      74617274 
 11114      00
 11115              	.LASF645:
 11116 1ae6 6F6C6443 		.ascii	"oldCurrentVal\000"
 11116      75727265 
 11116      6E745661 
 11116      6C00
 11117              	.LASF420:
 11118 1af4 50574D5F 		.ascii	"PWM_HIGH\000"
 11118      48494748 
 11118      00
 11119              	.LASF377:
 11120 1afd 6D62746F 		.ascii	"mbtowc\000"
 11120      776300
 11121              	.LASF528:
 11122 1b04 41444330 		.ascii	"ADC0\000"
 11122      00
 11123              	.LASF576:
 11124 1b09 5F74696D 		.ascii	"_timezone\000"
 11124      657A6F6E 
 11124      6500
 11125              	.LASF422:
 11126 1b13 70776D5F 		.ascii	"pwm_level_t\000"
 11126      6C657665 
 11126      6C5F7400 
 11127              	.LASF62:
 11128 1b1f 49544D5F 		.ascii	"ITM_RxBuffer\000"
ARM GAS  /tmp/ccQR1hla.s 			page 260


 11128      52784275 
 11128      66666572 
 11128      00
 11129              	.LASF129:
 11130 1b2c 50494F5F 		.ascii	"PIO_FELLSR\000"
 11130      46454C4C 
 11130      535200
 11131              	.LASF22:
 11132 1b37 6C6F6E67 		.ascii	"long long unsigned int\000"
 11132      206C6F6E 
 11132      6720756E 
 11132      7369676E 
 11132      65642069 
 11133              	.LASF364:
 11134 1b4e 5F5F636F 		.ascii	"__compar_fn_t\000"
 11134      6D706172 
 11134      5F666E5F 
 11134      7400
 11135              	.LASF300:
 11136 1b5c 5F67616D 		.ascii	"_gamma_signgam\000"
 11136      6D615F73 
 11136      69676E67 
 11136      616D00
 11137              	.LASF525:
 11138 1b6b 45544343 		.ascii	"ETCChannel\000"
 11138      68616E6E 
 11138      656C00
 11139              	.LASF286:
 11140 1b76 5F636C6F 		.ascii	"_close\000"
 11140      736500
 11141              	.LASF439:
 11142 1b7d 70776D5F 		.ascii	"pwm_fault_id_t\000"
 11142      6661756C 
 11142      745F6964 
 11142      5F7400
 11143              	.LASF352:
 11144 1b8c 5F5A5374 		.ascii	"_ZSt4modfePe\000"
 11144      346D6F64 
 11144      66655065 
 11144      00
 11145              	.LASF441:
 11146 1b99 50574D5F 		.ascii	"PWM_SPREAD_SPECTRUM_MODE_TRIANGULAR\000"
 11146      53505245 
 11146      41445F53 
 11146      50454354 
 11146      52554D5F 
 11147              	.LASF324:
 11148 1bbd 5F637572 		.ascii	"_current_category\000"
 11148      72656E74 
 11148      5F636174 
 11148      65676F72 
 11148      7900
 11149              	.LASF184:
 11150 1bcf 50574D5F 		.ascii	"PWM_OS\000"
 11150      4F5300
 11151              	.LASF656:
 11152 1bd6 70696E4D 		.ascii	"pinModeDuet\000"
ARM GAS  /tmp/ccQR1hla.s 			page 261


 11152      6F646544 
 11152      75657400 
 11153              	.LASF619:
 11154 1be2 636F6E73 		.ascii	"constrain<float>\000"
 11154      74726169 
 11154      6E3C666C 
 11154      6F61743E 
 11154      00
 11155              	.LASF458:
 11156 1bf3 50574D5F 		.ascii	"PWM_LEADING_EDGE4_MODE_LDEC\000"
 11156      4C454144 
 11156      494E475F 
 11156      45444745 
 11156      345F4D4F 
 11157              	.LASF471:
 11158 1c0f 756C5F70 		.ascii	"ul_prescaler\000"
 11158      72657363 
 11158      616C6572 
 11158      00
 11159              	.LASF219:
 11160 1c1c 54435F53 		.ascii	"TC_SMMR\000"
 11160      4D4D5200 
 11161              	.LASF193:
 11162 1c24 50574D5F 		.ascii	"PWM_FPE\000"
 11162      46504500 
 11163              	.LASF65:
 11164 1c2c 44414343 		.ascii	"DACC_MR\000"
 11164      5F4D5200 
 11165              	.LASF641:
 11166 1c34 70657269 		.ascii	"period\000"
 11166      6F6400
 11167              	.LASF87:
 11168 1c3b 50494F5F 		.ascii	"PIO_OSR\000"
 11168      4F535200 
 11169              	.LASF172:
 11170 1c43 50574D5F 		.ascii	"PWM_IMR1\000"
 11170      494D5231 
 11170      00
 11171              	.LASF181:
 11172 1c4c 50574D5F 		.ascii	"PWM_IMR2\000"
 11172      494D5232 
 11172      00
 11173              	.LASF188:
 11174 1c55 50574D5F 		.ascii	"PWM_OSCUPD\000"
 11174      4F534355 
 11174      504400
 11175              	.LASF51:
 11176 1c60 696E745F 		.ascii	"int_fast8_t\000"
 11176      66617374 
 11176      385F7400 
 11177              	.LASF372:
 11178 1c6c 67657465 		.ascii	"getenv\000"
 11178      6E7600
 11179              	.LASF326:
 11180 1c73 5F5F7364 		.ascii	"__sdidinit\000"
 11180      6964696E 
 11180      697400
ARM GAS  /tmp/ccQR1hla.s 			page 262


 11181              	.LASF401:
 11182 1c7e 5F5F6664 		.ascii	"__fdlibm_posix\000"
 11182      6C69626D 
 11182      5F706F73 
 11182      697800
 11183              	.LASF654:
 11184 1c8d 70696E4D 		.ascii	"pinMode\000"
 11184      6F646500 
 11185              	.LASF351:
 11186 1c95 6C726F75 		.ascii	"lround\000"
 11186      6E6400
 11187              	.LASF682:
 11188 1c9c 72616E64 		.ascii	"rand\000"
 11188      00
 11189              	.LASF70:
 11190 1ca1 44414343 		.ascii	"DACC_CHSR\000"
 11190      5F434853 
 11190      5200
 11191              	.LASF250:
 11192 1cab 5F666C6F 		.ascii	"_flock_t\000"
 11192      636B5F74 
 11192      00
 11193              	.LASF616:
 11194 1cb4 6368616E 		.ascii	"channelToTC\000"
 11194      6E656C54 
 11194      6F544300 
 11195              	.LASF620:
 11196 1cc0 766D696E 		.ascii	"vmin\000"
 11196      00
 11197              	.LASF575:
 11198 1cc5 55415254 		.ascii	"UARTClass\000"
 11198      436C6173 
 11198      7300
 11199              	.LASF664:
 11200 1ccf 70776D5F 		.ascii	"pwm_channel_disable\000"
 11200      6368616E 
 11200      6E656C5F 
 11200      64697361 
 11200      626C6500 
 11201              	.LASF615:
 11202 1ce3 6368616E 		.ascii	"channelToChNo\000"
 11202      6E656C54 
 11202      6F43684E 
 11202      6F00
 11203              	.LASF5:
 11204 1cf1 6C6F6E67 		.ascii	"long long int\000"
 11204      206C6F6E 
 11204      6720696E 
 11204      7400
 11205              	.LASF125:
 11206 1cff 50494F5F 		.ascii	"PIO_ESR\000"
 11206      45535200 
 11207              	.LASF294:
 11208 1d07 5F666C61 		.ascii	"_flags2\000"
 11208      67733200 
 11209              	.LASF143:
 11210 1d0f 50494F5F 		.ascii	"PIO_PCIDR\000"
ARM GAS  /tmp/ccQR1hla.s 			page 263


 11210      50434944 
 11210      5200
 11211              	.LASF218:
 11212 1d19 54435F43 		.ascii	"TC_CMR\000"
 11212      4D5200
 11213              	.LASF174:
 11214 1d20 50574D5F 		.ascii	"PWM_SCM\000"
 11214      53434D00 
 11215              	.LASF190:
 11216 1d28 50574D5F 		.ascii	"PWM_FSR\000"
 11216      46535200 
 11217              	.LASF169:
 11218 1d30 50574D5F 		.ascii	"PWM_SR\000"
 11218      535200
 11219              	.LASF579:
 11220 1d37 4150494E 		.ascii	"APINS_UART0\000"
 11220      535F5541 
 11220      52543000 
 11221              	.LASF582:
 11222 1d43 4150494E 		.ascii	"APINS_UART1\000"
 11222      535F5541 
 11222      52543100 
 11223              	.LASF45:
 11224 1d4f 696E745F 		.ascii	"int_least16_t\000"
 11224      6C656173 
 11224      7431365F 
 11224      7400
 11225              	.LASF681:
 11226 1d5d 5F5A4E39 		.ascii	"_ZN9__gnu_cxx3divExx\000"
 11226      5F5F676E 
 11226      755F6378 
 11226      78336469 
 11226      76457878 
 11227              	.LASF151:
 11228 1d72 50574D5F 		.ascii	"PWM_CDTYUPD\000"
 11228      43445459 
 11228      55504400 
 11229              	.LASF395:
 11230 1d7e 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 11230      6972715F 
 11230      70726576 
 11230      5F696E74 
 11230      65727275 
 11231              	.LASF460:
 11232 1d9b 50574D5F 		.ascii	"PWM_LEADING_EDGE4_MODE_HDEC\000"
 11232      4C454144 
 11232      494E475F 
 11232      45444745 
 11232      345F4D4F 
 11233              	.LASF200:
 11234 1db7 50574D5F 		.ascii	"PWM_WPSR\000"
 11234      57505352 
 11234      00
 11235              	.LASF657:
 11236 1dc0 64616363 		.ascii	"dacc_get_channel_status\000"
 11236      5F676574 
 11236      5F636861 
ARM GAS  /tmp/ccQR1hla.s 			page 264


 11236      6E6E656C 
 11236      5F737461 
 11237              	.LASF123:
 11238 1dd8 50494F5F 		.ascii	"PIO_AIMMR\000"
 11238      41494D4D 
 11238      5200
 11239              	.LASF404:
 11240 1de2 5F70696F 		.ascii	"_pio_type\000"
 11240      5F747970 
 11240      6500
 11241              	.LASF340:
 11242 1dec 5F5F4649 		.ascii	"__FILE\000"
 11242      4C4500
 11243              	.LASF504:
 11244 1df3 4550574D 		.ascii	"EPWMChannel\000"
 11244      4368616E 
 11244      6E656C00 
 11245              	.LASF389:
 11246 1dff 73747274 		.ascii	"strtoull\000"
 11246      6F756C6C 
 11246      00
 11247              	.LASF430:
 11248 1e08 50574D5F 		.ascii	"PWM_EVENT_PERIOD_HALF_END\000"
 11248      4556454E 
 11248      545F5045 
 11248      52494F44 
 11248      5F48414C 
 11249              	.LASF684:
 11250 1e22 5F5A4E35 		.ascii	"_ZN5Print5writeEPKcj\000"
 11250      5072696E 
 11250      74357772 
 11250      69746545 
 11250      504B636A 
 11251              	.LASF254:
 11252 1e37 5F736967 		.ascii	"_sign\000"
 11252      6E00
 11253              	.LASF9:
 11254 1e3d 5F5F696E 		.ascii	"__int8_t\000"
 11254      74385F74 
 11254      00
 11255              	.LASF161:
 11256 1e46 50574D5F 		.ascii	"PWM_CMPM\000"
 11256      434D504D 
 11256      00
 11257              	.LASF94:
 11258 1e4f 50494F5F 		.ascii	"PIO_PDSR\000"
 11258      50445352 
 11258      00
 11259              	.LASF259:
 11260 1e58 5F5F746D 		.ascii	"__tm_min\000"
 11260      5F6D696E 
 11260      00
 11261              	.LASF154:
 11262 1e61 50574D5F 		.ascii	"PWM_CCNT\000"
 11262      43434E54 
 11262      00
 11263              	.LASF417:
ARM GAS  /tmp/ccQR1hla.s 			page 265


 11264 1e6a 31317077 		.ascii	"11pwm_align_t\000"
 11264      6D5F616C 
 11264      69676E5F 
 11264      7400
 11265              	.LASF159:
 11266 1e78 50574D5F 		.ascii	"PWM_CMPV\000"
 11266      434D5056 
 11266      00
 11267              	.LASF652:
 11268 1e81 6D696E3C 		.ascii	"min<float>\000"
 11268      666C6F61 
 11268      743E00
 11269              	.LASF131:
 11270 1e8c 50494F5F 		.ascii	"PIO_FRLHSR\000"
 11270      46524C48 
 11270      535200
 11271              	.LASF67:
 11272 1e97 52657365 		.ascii	"Reserved1\000"
 11272      72766564 
 11272      3100
 11273              	.LASF76:
 11274 1ea1 52657365 		.ascii	"Reserved2\000"
 11274      72766564 
 11274      3200
 11275              	.LASF78:
 11276 1eab 52657365 		.ascii	"Reserved3\000"
 11276      72766564 
 11276      3300
 11277              	.LASF102:
 11278 1eb5 52657365 		.ascii	"Reserved4\000"
 11278      72766564 
 11278      3400
 11279              	.LASF106:
 11280 1ebf 52657365 		.ascii	"Reserved5\000"
 11280      72766564 
 11280      3500
 11281              	.LASF108:
 11282 1ec9 52657365 		.ascii	"Reserved6\000"
 11282      72766564 
 11282      3600
 11283              	.LASF116:
 11284 1ed3 52657365 		.ascii	"Reserved7\000"
 11284      72766564 
 11284      3700
 11285              	.LASF120:
 11286 1edd 52657365 		.ascii	"Reserved8\000"
 11286      72766564 
 11286      3800
 11287              	.LASF124:
 11288 1ee7 52657365 		.ascii	"Reserved9\000"
 11288      72766564 
 11288      3900
 11289              	.LASF469:
 11290 1ef1 31337077 		.ascii	"13pwm_channel_t\000"
 11290      6D5F6368 
 11290      616E6E65 
 11290      6C5F7400 
ARM GAS  /tmp/ccQR1hla.s 			page 266


 11291              	.LASF1:
 11292 1f01 756E7369 		.ascii	"unsigned int\000"
 11292      676E6564 
 11292      20696E74 
 11292      00
 11293              	.LASF302:
 11294 1f0e 5F723438 		.ascii	"_r48\000"
 11294      00
 11295              	.LASF84:
 11296 1f13 50494F5F 		.ascii	"PIO_PSR\000"
 11296      50535200 
 11297              	.LASF594:
 11298 1f1b 53657269 		.ascii	"Serial1\000"
 11298      616C3100 
 11299              	.LASF568:
 11300 1f23 756C5057 		.ascii	"ulPWMChannel\000"
 11300      4D436861 
 11300      6E6E656C 
 11300      00
 11301              	.LASF355:
 11302 1f30 5F5F6378 		.ascii	"__cxx11\000"
 11302      78313100 
 11303              	.LASF52:
 11304 1f38 75696E74 		.ascii	"uint_fast8_t\000"
 11304      5F666173 
 11304      74385F74 
 11304      00
 11305              	.LASF147:
 11306 1f45 34446163 		.ascii	"4Dacc\000"
 11306      6300
 11307              	.LASF14:
 11308 1f4b 73686F72 		.ascii	"short int\000"
 11308      7420696E 
 11308      7400
 11309              	.LASF283:
 11310 1f55 5F726561 		.ascii	"_read\000"
 11310      6400
 11311              	.LASF344:
 11312 1f5b 5F72616E 		.ascii	"_rand48\000"
 11312      64343800 
 11313              	.LASF589:
 11314 1f63 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 11314      535F474D 
 11314      41435F50 
 11314      485900
 11315              	.LASF440:
 11316 1f72 32367077 		.ascii	"26pwm_spread_spectrum_mode_t\000"
 11316      6D5F7370 
 11316      72656164 
 11316      5F737065 
 11316      63747275 
 11317              	.LASF113:
 11318 1f8f 50494F5F 		.ascii	"PIO_PPDDR\000"
 11318      50504444 
 11318      5200
 11319              	.LASF607:
 11320 1f99 4F555450 		.ascii	"OUTPUT_PWM_OPEN_DRAIN\000"
ARM GAS  /tmp/ccQR1hla.s 			page 267


 11320      55545F50 
 11320      574D5F4F 
 11320      50454E5F 
 11320      44524149 
 11321              	.LASF609:
 11322 1faf 6E756D50 		.ascii	"numPwmChannels\000"
 11322      776D4368 
 11322      616E6E65 
 11322      6C7300
 11323              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
