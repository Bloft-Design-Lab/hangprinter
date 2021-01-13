ARM GAS  /tmp/ccTuq0hs.s 			page 1


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
  12              		.file	"wiring.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.TimeTick_Increment,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	TimeTick_Increment
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	TimeTick_Increment, %function
  25              	TimeTick_Increment:
  26              	.LFB227:
  27              		.file 1 "../cores/arduino/wiring.c"
   1:../cores/arduino/wiring.c **** /*
   2:../cores/arduino/wiring.c ****   Copyright (c) 2011 Arduino.  All right reserved.
   3:../cores/arduino/wiring.c **** 
   4:../cores/arduino/wiring.c ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/wiring.c ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/wiring.c ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/wiring.c ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/wiring.c **** 
   9:../cores/arduino/wiring.c ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/wiring.c ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/wiring.c ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  12:../cores/arduino/wiring.c ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/wiring.c **** 
  14:../cores/arduino/wiring.c ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/wiring.c ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/wiring.c ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/wiring.c **** */
  18:../cores/arduino/wiring.c **** 
  19:../cores/arduino/wiring.c **** #include "Core.h"
  20:../cores/arduino/wiring.c **** 
  21:../cores/arduino/wiring.c **** #ifdef __cplusplus
  22:../cores/arduino/wiring.c **** extern "C" {
  23:../cores/arduino/wiring.c **** #endif
  24:../cores/arduino/wiring.c **** 
  25:../cores/arduino/wiring.c **** static volatile uint64_t g_ms_ticks = 0;		// Count of 1ms time ticks. */
  26:../cores/arduino/wiring.c **** 
  27:../cores/arduino/wiring.c **** void TimeTick_Increment( void )
  28:../cores/arduino/wiring.c **** {
  28              		.loc 1 28 0
  29              		.cfi_startproc
ARM GAS  /tmp/ccTuq0hs.s 			page 2


  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  29:../cores/arduino/wiring.c **** 	g_ms_ticks++;
  33              		.loc 1 29 0
  34 0000 0449     		ldr	r1, .L2
  35 0002 D1E90023 		ldrd	r2, [r1]
  36 0006 0132     		adds	r2, r2, #1
  37 0008 43F10003 		adc	r3, r3, #0
  38 000c C1E90023 		strd	r2, [r1]
  39 0010 7047     		bx	lr
  40              	.L3:
  41 0012 00BF     		.align	2
  42              	.L2:
  43 0014 00000000 		.word	.LANCHOR0
  44              		.cfi_endproc
  45              	.LFE227:
  46              		.size	TimeTick_Increment, .-TimeTick_Increment
  47              		.section	.text.millis,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.global	millis
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu fpv5-d16
  55              		.type	millis, %function
  56              	millis:
  57              	.LFB228:
  30:../cores/arduino/wiring.c **** }
  31:../cores/arduino/wiring.c **** 
  32:../cores/arduino/wiring.c **** uint32_t millis( void )
  33:../cores/arduino/wiring.c **** {
  58              		.loc 1 33 0
  59              		.cfi_startproc
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  34:../cores/arduino/wiring.c ****     return (uint32_t)g_ms_ticks;
  63              		.loc 1 34 0
  64 0000 014B     		ldr	r3, .L5
  65 0002 D3E90001 		ldrd	r0, [r3]
  35:../cores/arduino/wiring.c **** }
  66              		.loc 1 35 0
  67 0006 7047     		bx	lr
  68              	.L6:
  69              		.align	2
  70              	.L5:
  71 0008 00000000 		.word	.LANCHOR0
  72              		.cfi_endproc
  73              	.LFE228:
  74              		.size	millis, .-millis
  75              		.section	.text.millis64,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	millis64
  79              		.syntax unified
ARM GAS  /tmp/ccTuq0hs.s 			page 3


  80              		.thumb
  81              		.thumb_func
  82              		.fpu fpv5-d16
  83              		.type	millis64, %function
  84              	millis64:
  85              	.LFB229:
  36:../cores/arduino/wiring.c **** 
  37:../cores/arduino/wiring.c **** uint64_t millis64( void )
  38:../cores/arduino/wiring.c **** {
  86              		.loc 1 38 0
  87              		.cfi_startproc
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90              		@ link register save eliminated.
  91              	.LBB32:
  92              	.LBB33:
  93              	.LBB34:
  94              	.LBB35:
  95              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @file     core_cmFunc.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @brief    CMSIS Cortex-M Core Function Access Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @date     28. August 2014
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  * @note
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  *
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  ******************************************************************************/
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* Copyright (c) 2009 - 2014 ARM LIMITED
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    All rights reserved.
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    Redistribution and use in source and binary forms, with or without
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    modification, are permitted provided that the following conditions are met:
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    - Redistributions of source code must retain the above copyright
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****      notice, this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    - Redistributions in binary form must reproduce the above copyright
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****      notice, this list of conditions and the following disclaimer in the
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****      documentation and/or other materials provided with the distribution.
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    *
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    POSSIBILITY OF SUCH DAMAGE.
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    ---------------------------------------------------------------------------*/
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #ifndef __CORE_CMFUNC_H
ARM GAS  /tmp/ccTuq0hs.s 			page 4


  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #define __CORE_CMFUNC_H
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* ###########################  Core Function Access  ########################### */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \ingroup  CMSIS_Core_FunctionInterface
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   @{
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if   defined ( __CC_ARM ) /*------------------RealView Compiler -----------------*/
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* ARM armcc specific functions */
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if (__ARMCC_VERSION < 400677)
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   #error "Please use ARM Compiler Toolchain V4.0.677 or later!"
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* intrinsic void __enable_irq();     */
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* intrinsic void __disable_irq();    */
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Control Register
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the Control Register.
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Control Register value
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_CONTROL(void)
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regControl         __ASM("control");
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regControl);
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Control Register
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function writes the given value to the Control Register.
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    control  Control Register value to set
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_CONTROL(uint32_t control)
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regControl         __ASM("control");
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regControl = control;
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get IPSR Register
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the IPSR Register.
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               IPSR Register value
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_IPSR(void)
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regIPSR          __ASM("ipsr");
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regIPSR);
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccTuq0hs.s 			page 5


  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get APSR Register
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the APSR Register.
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               APSR Register value
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_APSR(void)
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regAPSR          __ASM("apsr");
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regAPSR);
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get xPSR Register
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the xPSR Register.
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               xPSR Register value
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_xPSR(void)
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regXPSR          __ASM("xpsr");
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regXPSR);
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Process Stack Pointer
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Process Stack Pointer (PSP).
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               PSP Register value
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_PSP(void)
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regProcessStackPointer  __ASM("psp");
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regProcessStackPointer);
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Process Stack Pointer
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Process Stack Pointer (PSP).
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    topOfProcStack  Process Stack Pointer value to set
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_PSP(uint32_t topOfProcStack)
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regProcessStackPointer  __ASM("psp");
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regProcessStackPointer = topOfProcStack;
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Main Stack Pointer
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Main Stack Pointer (MSP).
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccTuq0hs.s 			page 6


 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               MSP Register value
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_MSP(void)
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regMainStackPointer     __ASM("msp");
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regMainStackPointer);
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Main Stack Pointer
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Main Stack Pointer (MSP).
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    topOfMainStack  Main Stack Pointer value to set
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_MSP(uint32_t topOfMainStack)
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regMainStackPointer     __ASM("msp");
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regMainStackPointer = topOfMainStack;
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Priority Mask
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current state of the priority mask bit from the Priority Mask Registe
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Priority Mask value
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_PRIMASK(void)
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regPriMask         __ASM("primask");
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regPriMask);
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Priority Mask
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Priority Mask Register.
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    priMask  Priority Mask
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_PRIMASK(uint32_t priMask)
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regPriMask         __ASM("primask");
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regPriMask = (priMask);
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if       (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300)
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Enable FIQ
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function enables FIQ interrupts by clearing the F-bit in the CPSR.
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     Can only be executed in Privileged modes.
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #define __enable_fault_irq                __enable_fiq
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccTuq0hs.s 			page 7


 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Disable FIQ
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function disables FIQ interrupts by setting the F-bit in the CPSR.
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     Can only be executed in Privileged modes.
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #define __disable_fault_irq               __disable_fiq
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Base Priority
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Base Priority register.
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Base Priority register value
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t  __get_BASEPRI(void)
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regBasePri         __ASM("basepri");
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regBasePri);
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Base Priority
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Base Priority register.
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    basePri  Base Priority value to set
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_BASEPRI(uint32_t basePri)
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regBasePri         __ASM("basepri");
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regBasePri = (basePri & 0xff);
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Fault Mask
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Fault Mask register.
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Fault Mask register value
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_FAULTMASK(void)
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regFaultMask       __ASM("faultmask");
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regFaultMask);
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Fault Mask
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Fault Mask register.
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    faultMask  Fault Mask value to set
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_FAULTMASK(uint32_t faultMask)
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regFaultMask       __ASM("faultmask");
ARM GAS  /tmp/ccTuq0hs.s 			page 8


 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regFaultMask = (faultMask & (uint32_t)1);
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif /* (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300) */
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if       (__CORTEX_M == 0x04) || (__CORTEX_M == 0x07)
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get FPSCR
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Floating Point Status/Control register.
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Floating Point Status/Control register value
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_FPSCR(void)
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regfpscr         __ASM("fpscr");
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regfpscr);
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #else
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****    return(0);
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set FPSCR
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Floating Point Status/Control register.
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    fpscr  Floating Point Status/Control value to set
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_FPSCR(uint32_t fpscr)
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regfpscr         __ASM("fpscr");
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regfpscr = (fpscr);
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #endif /* (__CORTEX_M == 0x04) || (__CORTEX_M == 0x07) */
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #elif defined ( __GNUC__ ) /*------------------ GNU Compiler ---------------------*/
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /* GNU gcc specific functions */
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Enable IRQ Interrupts
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   This function enables IRQ interrupts by clearing the I-bit in the CPSR.
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   Can only be executed in Privileged modes.
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __enable_irq(void)
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("cpsie i" : : : "memory");
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Disable IRQ Interrupts
ARM GAS  /tmp/ccTuq0hs.s 			page 9


 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   This function disables IRQ interrupts by setting the I-bit in the CPSR.
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   Can only be executed in Privileged modes.
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_irq(void)
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("cpsid i" : : : "memory");
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Control Register
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the Control Register.
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Control Register value
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_CONTROL(void)
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, control" : "=r" (result) );
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Control Register
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function writes the given value to the Control Register.
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    control  Control Register value to set
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_CONTROL(uint32_t control)
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MSR control, %0" : : "r" (control) : "memory");
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get IPSR Register
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the IPSR Register.
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               IPSR Register value
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_IPSR(void)
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get APSR Register
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the APSR Register.
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               APSR Register value
ARM GAS  /tmp/ccTuq0hs.s 			page 10


 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_APSR(void)
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, apsr" : "=r" (result) );
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get xPSR Register
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the content of the xPSR Register.
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               xPSR Register value
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_xPSR(void)
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, xpsr" : "=r" (result) );
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Process Stack Pointer
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Process Stack Pointer (PSP).
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               PSP Register value
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PSP(void)
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t result;
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, psp\n"  : "=r" (result) );
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Process Stack Pointer
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Process Stack Pointer (PSP).
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    topOfProcStack  Process Stack Pointer value to set
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_PSP(uint32_t topOfProcStack)
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MSR psp, %0\n" : : "r" (topOfProcStack) : "sp");
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Main Stack Pointer
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Main Stack Pointer (MSP).
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               MSP Register value
ARM GAS  /tmp/ccTuq0hs.s 			page 11


 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_MSP(void)
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t result;
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, msp\n" : "=r" (result) );
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(result);
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Main Stack Pointer
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function assigns the given value to the Main Stack Pointer (MSP).
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    topOfMainStack  Main Stack Pointer value to set
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_MSP(uint32_t topOfMainStack)
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MSR msp, %0\n" : : "r" (topOfMainStack) : "sp");
 457:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Get Priority Mask
 461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current state of the priority mask bit from the Priority Mask Registe
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               Priority Mask value
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PRIMASK(void)
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   uint32_t result;
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) );
  96              		.loc 2 470 0
  97              		.syntax unified
  98              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  99 0000 EFF31083 		MRS r3, primask
 100              	@ 0 "" 2
 101              	.LVL0:
 102              		.thumb
 103              		.syntax unified
 104              	.LBE35:
 105              	.LBE34:
 106              	.LBB36:
 107              	.LBB37:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 108              		.loc 2 330 0
 109              		.syntax unified
 110              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 111 0004 72B6     		cpsid i
 112              	@ 0 "" 2
 113              		.thumb
 114              		.syntax unified
 115              	.LBE37:
 116              	.LBE36:
 117              	.LBB38:
 118              	.LBB39:
ARM GAS  /tmp/ccTuq0hs.s 			page 12


 119              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @file     core_cmInstr.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @brief    CMSIS Cortex-M Core Instruction Access Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @date     28. August 2014
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @note
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  *
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  ******************************************************************************/
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* Copyright (c) 2009 - 2014 ARM LIMITED
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    All rights reserved.
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    Redistribution and use in source and binary forms, with or without
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    modification, are permitted provided that the following conditions are met:
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Redistributions of source code must retain the above copyright
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      notice, this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Redistributions in binary form must reproduce the above copyright
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      notice, this list of conditions and the following disclaimer in the
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      documentation and/or other materials provided with the distribution.
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    *
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    POSSIBILITY OF SUCH DAMAGE.
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ---------------------------------------------------------------------------*/
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __CORE_CMINSTR_H
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CORE_CMINSTR_H
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* ##########################  Core Instruction Access  ######################### */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   Access to dedicated instructions
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   @{
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** */
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if   defined ( __CC_ARM ) /*------------------RealView Compiler -----------------*/
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* ARM armcc specific functions */
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if (__ARMCC_VERSION < 400677)
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   #error "Please use ARM Compiler Toolchain V4.0.677 or later!"
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  No Operation
ARM GAS  /tmp/ccTuq0hs.s 			page 13


  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     No Operation does nothing. This instruction can be used for code alignment purposes.
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __NOP                             __nop
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Interrupt
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Interrupt is a hint instruction that suspends execution
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     until one of a number of events occurs.
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __WFI                             __wfi
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Event
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Event is a hint instruction that permits the processor to enter
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     a low-power state until one of a number of events occurs.
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __WFE                             __wfe
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Send Event
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Send Event is a hint instruction. It causes an event to be signaled to the CPU.
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __SEV                             __sev
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Instruction Synchronization Barrier
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Instruction Synchronization Barrier flushes the pipeline in the processor,
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     so that all instructions following the ISB are fetched from cache or
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     memory, after the instruction has been completed.
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __ISB()                           __isb(0xF)
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Synchronization Barrier
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function acts as a special kind of Data Memory Barrier.
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     It completes when all explicit memory accesses before this instruction complete.
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __DSB()                           __dsb(0xF)
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Memory Barrier
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function ensures the apparent order of the explicit memory operations before
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     and after the instruction, without ensuring their completion.
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __DMB()                           __dmb(0xF)
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order (32 bit)
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in integer value.
ARM GAS  /tmp/ccTuq0hs.s 			page 14


 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __REV                             __rev
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order (16 bit)
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in two unsigned short values.
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".rev16_text"))) __STATIC_INLINE __ASM uint32_t __REV16(uint32_t value)
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   rev16 r0, r0
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order in signed short value
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in a signed short value with sign extension to integer.
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".revsh_text"))) __STATIC_INLINE __ASM int32_t __REVSH(int32_t value)
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   revsh r0, r0
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Rotate Right in unsigned value (32 bit)
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function Rotate Right (immediate) provides the value of the contents of a register rotated
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to rotate
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Number of Bits to rotate
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Rotated value
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __ROR                             __ror
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Breakpoint
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function causes the processor to enter Debug state.
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Debug tools can use this to investigate system state when the instruction at a particular addre
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  is ignored by the processor.
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****                    If required, a debugger can use it to store additional information about the bre
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
ARM GAS  /tmp/ccTuq0hs.s 			page 15


 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __BKPT(value)                       __breakpoint(value)
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if       (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300)
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse bit order of value
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the bit order of the given value.
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __RBIT                            __rbit
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (8 bit)
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 8 bit value.
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             value of type uint8_t at (*ptr)
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXB(ptr)                     ((uint8_t ) __ldrex(ptr))
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (16 bit)
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 16 bit values.
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint16_t at (*ptr)
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXH(ptr)                     ((uint16_t) __ldrex(ptr))
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (32 bit)
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 32 bit values.
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint32_t at (*ptr)
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXW(ptr)                     ((uint32_t ) __ldrex(ptr))
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (8 bit)
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 8 bit values.
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXB(value, ptr)              __strex(value, ptr)
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccTuq0hs.s 			page 16


 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (16 bit)
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 16 bit values.
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXH(value, ptr)              __strex(value, ptr)
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (32 bit)
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 32 bit values.
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXW(value, ptr)              __strex(value, ptr)
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Remove the exclusive lock
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function removes the exclusive lock which is created by LDREX.
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CLREX                           __clrex
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Signed Saturate
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function saturates a signed value.
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to be saturated
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    sat  Bit position to saturate to (1..32)
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             Saturated value
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __SSAT                            __ssat
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Unsigned Saturate
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function saturates an unsigned value.
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to be saturated
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    sat  Bit position to saturate to (0..31)
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             Saturated value
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __USAT                            __usat
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Count leading zeros
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function counts the number of leading zeros of a data value.
ARM GAS  /tmp/ccTuq0hs.s 			page 17


 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to count the leading zeros
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             number of leading zeros in value
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CLZ                             __clz
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Rotate Right with Extend (32 bit)
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function moves each bit of a bitstring right by one bit. The carry input is shifted in at 
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to rotate
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Rotated value
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".rrx_text"))) __STATIC_INLINE __ASM uint32_t __RRX(uint32_t value)
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   rrx r0, r0
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (8 bit)
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 8 bit value.
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             value of type uint8_t at (*ptr)
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRBT(ptr)                      ((uint8_t )  __ldrt(ptr))
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (16 bit)
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 16 bit values.
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint16_t at (*ptr)
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRHT(ptr)                      ((uint16_t)  __ldrt(ptr))
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (32 bit)
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 32 bit values.
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint32_t at (*ptr)
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRT(ptr)                       ((uint32_t ) __ldrt(ptr))
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (8 bit)
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 8 bit values.
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccTuq0hs.s 			page 18


 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRBT(value, ptr)               __strt(value, ptr)
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (16 bit)
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 16 bit values.
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRHT(value, ptr)               __strt(value, ptr)
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (32 bit)
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 32 bit values.
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRT(value, ptr)                __strt(value, ptr)
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif /* (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300) */
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #elif defined ( __GNUC__ ) /*------------------ GNU Compiler ---------------------*/
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* GNU gcc specific functions */
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* Define macros for porting to both thumb1 and thumb2.
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * For thumb1, use low register (r0-r7), specified by constrant "l"
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * Otherwise, use general registers, specified by constrant "r" */
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if defined (__thumb__) && !defined (__thumb2__)
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_OUT_REG(r) "=l" (r)
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_USE_REG(r) "l" (r)
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #else
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_OUT_REG(r) "=r" (r)
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_USE_REG(r) "r" (r)
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  No Operation
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     No Operation does nothing. This instruction can be used for code alignment purposes.
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __NOP(void)
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("nop");
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Interrupt
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Interrupt is a hint instruction that suspends execution
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     until one of a number of events occurs.
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
ARM GAS  /tmp/ccTuq0hs.s 			page 19


 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __WFI(void)
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("wfi");
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Event
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Event is a hint instruction that permits the processor to enter
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     a low-power state until one of a number of events occurs.
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __WFE(void)
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("wfe");
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Send Event
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Send Event is a hint instruction. It causes an event to be signaled to the CPU.
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __SEV(void)
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("sev");
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Instruction Synchronization Barrier
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Instruction Synchronization Barrier flushes the pipeline in the processor,
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     so that all instructions following the ISB are fetched from cache or
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     memory, after the instruction has been completed.
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __ISB(void)
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("isb");
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Synchronization Barrier
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function acts as a special kind of Data Memory Barrier.
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     It completes when all explicit memory accesses before this instruction complete.
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __DSB(void)
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("dsb");
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Memory Barrier
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function ensures the apparent order of the explicit memory operations before
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     and after the instruction, without ensuring their completion.
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __DMB(void)
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
ARM GAS  /tmp/ccTuq0hs.s 			page 20


 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("dmb");
 120              		.loc 3 456 0
 121              		.syntax unified
 122              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 123 0006 BFF35F8F 		dmb
 124              	@ 0 "" 2
 125              		.thumb
 126              		.syntax unified
 127              	.LBE39:
 128              	.LBE38:
 129              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \brief Global interrupt management for SAM D20, SAM3 and SAM4 (NVIC based)
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * Copyright (c) 2012-2015 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
ARM GAS  /tmp/ccTuq0hs.s 			page 21


  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #ifndef UTILS_INTERRUPT_INTERRUPT_H
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #define UTILS_INTERRUPT_INTERRUPT_H
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #include <compiler.h>
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #include <parts.h>
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #ifdef __cplusplus
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** extern "C" {
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #endif
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \weakgroup interrupt_group
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * @{
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \name Interrupt Service Routine definition
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * @{
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \brief Define service routine
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \note For NVIC devices the interrupt service routines are predefined to
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *       add to vector table in binary generation, so there is no service
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *       register at run time. The routine collections are in exceptions.h.
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * Usage:
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \code
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	ISR(foo_irq_handler)
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	{
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	     // Function definition
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	     ...
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	}
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** \endcode
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \param func Name for the function.
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #  define ISR(func)   \
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	void func (void)
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \brief Initialize interrupt vectors
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * For NVIC the interrupt vectors are put in vector table. So nothing
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * to do to initialize them, except defined the vector function with
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * right name.
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * This must be called prior to \ref irq_register_handler.
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #  define irq_initialize_vectors()   \
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	do {                             \
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	} while(0)
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** /**
ARM GAS  /tmp/ccTuq0hs.s 			page 22


 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \brief Register handler for interrupt
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * For NVIC the interrupt vectors are put in vector table. So nothing
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * to do to register them, except defined the vector function with
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * right name.
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * Usage:
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \code
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	irq_initialize_vectors();
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	irq_register_handler(foo_irq_handler);
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** \endcode
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \note The function \a func must be defined with the \ref ISR macro.
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  * \note The functions prototypes can be found in the device exception header
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  *       files (exceptions.h).
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h ****  */
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #  define irq_register_handler(int_num, int_prio)                      \
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	NVIC_ClearPendingIRQ(    (IRQn_Type)int_num);                      \
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	NVIC_SetPriority(    (IRQn_Type)int_num, int_prio);                \
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	NVIC_EnableIRQ(      (IRQn_Type)int_num);                          \
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** //@}
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #  define cpu_irq_enable()                     \
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	do {                                       \
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		g_interrupt_enabled = true;            \
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		__DMB();                               \
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		__enable_irq();                        \
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	} while (0)
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #  define cpu_irq_disable()                    \
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	do {                                       \
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		__disable_irq();                       \
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		__DMB();                               \
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		g_interrupt_enabled = false;           \
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	} while (0)
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** typedef uint32_t irqflags_t;
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #if !defined(__DOXYGEN__)
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** extern volatile bool g_interrupt_enabled;
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #endif
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** #define cpu_irq_is_enabled()    (__get_PRIMASK() == 0)
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static volatile uint32_t cpu_irq_critical_section_counter;
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static volatile bool     cpu_irq_prev_interrupt_state;
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static inline irqflags_t cpu_irq_save(void)
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** {
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	irqflags_t flags = cpu_irq_is_enabled();
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	cpu_irq_disable();
 130              		.loc 4 154 0
 131 000a 0020     		movs	r0, #0
 132 000c 054A     		ldr	r2, .L10
 133              	.LBE33:
 134              	.LBE32:
  39:../cores/arduino/wiring.c **** 	const irqflags_t flags = cpu_irq_save();	// save and disable interrupts
ARM GAS  /tmp/ccTuq0hs.s 			page 23


  40:../cores/arduino/wiring.c **** 	const uint64_t ret = g_ms_ticks;			// take a copy with interrupts disabled to guard against rollov
 135              		.loc 1 40 0
 136 000e 0649     		ldr	r1, .L10+4
 137              	.LBB41:
 138              	.LBB40:
 139              		.loc 4 154 0
 140 0010 1070     		strb	r0, [r2]
 141              	.LBE40:
 142              	.LBE41:
 143              		.loc 1 40 0
 144 0012 D1E90001 		ldrd	r0, [r1]
 145              	.LVL1:
 146              	.LBB42:
 147              	.LBB43:
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return flags;
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** }
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static inline bool cpu_irq_is_enabled_flags(irqflags_t flags)
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** {
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	return (flags);
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** }
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** static inline void cpu_irq_restore(irqflags_t flags)
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** {
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 	if (cpu_irq_is_enabled_flags(flags))
 148              		.loc 4 165 0
 149 0016 23B9     		cbnz	r3, .L8
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h **** 		cpu_irq_enable();
 150              		.loc 4 166 0
 151 0018 0123     		movs	r3, #1
 152 001a 1370     		strb	r3, [r2]
 153              	.LBB44:
 154              	.LBB45:
 155              		.loc 3 456 0
 156              		.syntax unified
 157              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 158 001c BFF35F8F 		dmb
 159              	@ 0 "" 2
 160              		.thumb
 161              		.syntax unified
 162              	.LBE45:
 163              	.LBE44:
 164              	.LBB46:
 165              	.LBB47:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 166              		.loc 2 319 0
 167              		.syntax unified
 168              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 169 0020 62B6     		cpsie i
 170              	@ 0 "" 2
 171              		.thumb
 172              		.syntax unified
 173              	.L8:
 174              	.LBE47:
 175              	.LBE46:
 176              	.LBE43:
 177              	.LBE42:
ARM GAS  /tmp/ccTuq0hs.s 			page 24


  41:../cores/arduino/wiring.c **** 	cpu_irq_restore(flags);
  42:../cores/arduino/wiring.c **** 	return ret;
  43:../cores/arduino/wiring.c **** }
 178              		.loc 1 43 0
 179 0022 7047     		bx	lr
 180              	.L11:
 181              		.align	2
 182              	.L10:
 183 0024 00000000 		.word	g_interrupt_enabled
 184 0028 00000000 		.word	.LANCHOR0
 185              		.cfi_endproc
 186              	.LFE229:
 187              		.size	millis64, .-millis64
 188              		.section	.text.coreDelay,"ax",%progbits
 189              		.align	1
 190              		.p2align 2,,3
 191              		.global	coreDelay
 192              		.syntax unified
 193              		.thumb
 194              		.thumb_func
 195              		.fpu fpv5-d16
 196              		.type	coreDelay, %function
 197              	coreDelay:
 198              	.LFB230:
  44:../cores/arduino/wiring.c **** 
  45:../cores/arduino/wiring.c **** #if 0
  46:../cores/arduino/wiring.c **** 
  47:../cores/arduino/wiring.c **** // Interrupt-compatible version of micros
  48:../cores/arduino/wiring.c **** // Theory: repeatedly take readings of SysTick counter, millis counter and SysTick interrupt pendin
  49:../cores/arduino/wiring.c **** // When it appears that millis counter and pending is stable and SysTick hasn't rolled over, use th
  50:../cores/arduino/wiring.c **** // values to calculate micros. If there is a pending SysTick, add one to the millis counter in the 
  51:../cores/arduino/wiring.c **** // DC 2018-05-28: The return value from this is NOT RELIABLE if it is called while a system tick is
  52:../cores/arduino/wiring.c **** // I think the reason is that if SCB->SHCSR & SCB_SHCSR_SYSTICKACT_Msk indicates that the systick e
  53:../cores/arduino/wiring.c **** // the milliseconds counter may or may not have been incremented yet. So do not use this function! 
  54:../cores/arduino/wiring.c **** uint32_t micros( void )
  55:../cores/arduino/wiring.c **** {
  56:../cores/arduino/wiring.c ****     uint32_t ticks, ticks2;
  57:../cores/arduino/wiring.c ****     uint32_t pend, pend2;
  58:../cores/arduino/wiring.c ****     uint32_t count, count2;
  59:../cores/arduino/wiring.c **** 
  60:../cores/arduino/wiring.c ****     ticks2  = SysTick->VAL;
  61:../cores/arduino/wiring.c ****     pend2   = !!((SCB->ICSR & SCB_ICSR_PENDSTSET_Msk)||((SCB->SHCSR & SCB_SHCSR_SYSTICKACT_Msk)))  
  62:../cores/arduino/wiring.c ****     count2  = (uint32_t)g_ms_ticks;
  63:../cores/arduino/wiring.c **** 
  64:../cores/arduino/wiring.c ****     do {
  65:../cores/arduino/wiring.c ****         ticks=ticks2;
  66:../cores/arduino/wiring.c ****         pend=pend2;
  67:../cores/arduino/wiring.c ****         count=count2;
  68:../cores/arduino/wiring.c ****         ticks2  = SysTick->VAL;
  69:../cores/arduino/wiring.c ****         pend2   = !!((SCB->ICSR & SCB_ICSR_PENDSTSET_Msk)||((SCB->SHCSR & SCB_SHCSR_SYSTICKACT_Msk)
  70:../cores/arduino/wiring.c ****         count2  = (uint32_t)g_ms_ticks;
  71:../cores/arduino/wiring.c ****     } while ((pend != pend2) || (count != count2) || (ticks < ticks2));
  72:../cores/arduino/wiring.c **** 
  73:../cores/arduino/wiring.c ****     return ((count+pend) * 1000) + (((SysTick->LOAD  - ticks)*(1048576/(VARIANT_MCK/1000000)))>>20)
  74:../cores/arduino/wiring.c ****     // this is an optimization to turn a runtime division into two compile-time divisions and 
  75:../cores/arduino/wiring.c ****     // a runtime multiplication and shift, saving a few cycles
  76:../cores/arduino/wiring.c **** }
ARM GAS  /tmp/ccTuq0hs.s 			page 25


  77:../cores/arduino/wiring.c **** 
  78:../cores/arduino/wiring.c **** #endif
  79:../cores/arduino/wiring.c **** 
  80:../cores/arduino/wiring.c **** void coreDelay( uint32_t ms )
  81:../cores/arduino/wiring.c **** {
 199              		.loc 1 81 0
 200              		.cfi_startproc
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              	.LVL2:
  82:../cores/arduino/wiring.c ****     if (ms != 0)
 204              		.loc 1 82 0
 205 0000 68B1     		cbz	r0, .L18
  81:../cores/arduino/wiring.c ****     if (ms != 0)
 206              		.loc 1 81 0
 207 0002 70B5     		push	{r4, r5, r6, lr}
 208              		.cfi_def_cfa_offset 16
 209              		.cfi_offset 4, -16
 210              		.cfi_offset 5, -12
 211              		.cfi_offset 6, -8
 212              		.cfi_offset 14, -4
 213              	.LBB48:
  83:../cores/arduino/wiring.c ****     {
  84:../cores/arduino/wiring.c **** 		const uint32_t start = (uint32_t)g_ms_ticks;
 214              		.loc 1 84 0
 215 0004 064E     		ldr	r6, .L21
 216 0006 0446     		mov	r4, r0
 217 0008 D6E90023 		ldrd	r2, [r6]
 218 000c 1546     		mov	r5, r2
 219              	.LVL3:
 220              	.L14:
  85:../cores/arduino/wiring.c **** 		do {
  86:../cores/arduino/wiring.c **** 			yield();
 221              		.loc 1 86 0 discriminator 1
 222 000e FFF7FEFF 		bl	yield
 223              	.LVL4:
  87:../cores/arduino/wiring.c **** 		} while ((uint32_t)g_ms_ticks - start < ms);
 224              		.loc 1 87 0 discriminator 1
 225 0012 D6E90023 		ldrd	r2, [r6]
 226 0016 521B     		subs	r2, r2, r5
 227 0018 9442     		cmp	r4, r2
 228 001a F8D8     		bhi	.L14
 229 001c 70BD     		pop	{r4, r5, r6, pc}
 230              	.LVL5:
 231              	.L18:
 232              		.cfi_def_cfa_offset 0
 233              		.cfi_restore 4
 234              		.cfi_restore 5
 235              		.cfi_restore 6
 236              		.cfi_restore 14
 237 001e 7047     		bx	lr
 238              	.L22:
 239              		.align	2
 240              	.L21:
 241 0020 00000000 		.word	.LANCHOR0
 242              	.LBE48:
 243              		.cfi_endproc
ARM GAS  /tmp/ccTuq0hs.s 			page 26


 244              	.LFE230:
 245              		.size	coreDelay, .-coreDelay
 246              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 247              		.align	2
 248              		.type	cpu_irq_critical_section_counter, %object
 249              		.size	cpu_irq_critical_section_counter, 4
 250              	cpu_irq_critical_section_counter:
 251 0000 00000000 		.space	4
 252              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 253              		.type	cpu_irq_prev_interrupt_state, %object
 254              		.size	cpu_irq_prev_interrupt_state, 1
 255              	cpu_irq_prev_interrupt_state:
 256 0000 00       		.space	1
 257              		.section	.bss.g_ms_ticks,"aw",%nobits
 258              		.align	3
 259              		.set	.LANCHOR0,. + 0
 260              		.type	g_ms_ticks, %object
 261              		.size	g_ms_ticks, 8
 262              	g_ms_ticks:
 263 0000 00000000 		.space	8
 263      00000000 
 264              		.text
 265              	.Letext0:
 266              		.file 5 "/usr/include/newlib/machine/_default_types.h"
 267              		.file 6 "/usr/include/newlib/sys/_stdint.h"
 268              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 269              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 270              		.file 9 "/usr/include/newlib/sys/lock.h"
 271              		.file 10 "/usr/include/newlib/sys/_types.h"
 272              		.file 11 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 273              		.file 12 "/usr/include/newlib/sys/reent.h"
 274              		.file 13 "/usr/include/newlib/stdlib.h"
 275              		.file 14 "/usr/include/newlib/math.h"
 276              		.file 15 "../cores/arduino/Core.h"
 277              		.file 16 "/usr/include/newlib/time.h"
 278              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 279              		.section	.debug_info,"",%progbits
 280              	.Ldebug_info0:
 281 0000 770C0000 		.4byte	0xc77
 282 0004 0400     		.2byte	0x4
 283 0006 00000000 		.4byte	.Ldebug_abbrev0
 284 000a 04       		.byte	0x4
 285 000b 01       		.uleb128 0x1
 286 000c 09040000 		.4byte	.LASF171
 287 0010 0C       		.byte	0xc
 288 0011 7C030000 		.4byte	.LASF172
 289 0015 C2070000 		.4byte	.LASF173
 290 0019 18000000 		.4byte	.Ldebug_ranges0+0x18
 291 001d 00000000 		.4byte	0
 292 0021 00000000 		.4byte	.Ldebug_line0
 293 0025 02       		.uleb128 0x2
 294 0026 04       		.byte	0x4
 295 0027 05       		.byte	0x5
 296 0028 696E7400 		.ascii	"int\000"
 297 002c 03       		.uleb128 0x3
 298 002d 04       		.byte	0x4
 299 002e 07       		.byte	0x7
ARM GAS  /tmp/ccTuq0hs.s 			page 27


 300 002f 66060000 		.4byte	.LASF0
 301 0033 03       		.uleb128 0x3
 302 0034 01       		.byte	0x1
 303 0035 06       		.byte	0x6
 304 0036 33010000 		.4byte	.LASF1
 305 003a 04       		.uleb128 0x4
 306 003b 6B000000 		.4byte	.LASF5
 307 003f 05       		.byte	0x5
 308 0040 1D       		.byte	0x1d
 309 0041 45000000 		.4byte	0x45
 310 0045 03       		.uleb128 0x3
 311 0046 01       		.byte	0x1
 312 0047 08       		.byte	0x8
 313 0048 A1060000 		.4byte	.LASF2
 314 004c 03       		.uleb128 0x3
 315 004d 02       		.byte	0x2
 316 004e 05       		.byte	0x5
 317 004f 08000000 		.4byte	.LASF3
 318 0053 03       		.uleb128 0x3
 319 0054 02       		.byte	0x2
 320 0055 07       		.byte	0x7
 321 0056 19030000 		.4byte	.LASF4
 322 005a 04       		.uleb128 0x4
 323 005b 73060000 		.4byte	.LASF6
 324 005f 05       		.byte	0x5
 325 0060 3F       		.byte	0x3f
 326 0061 65000000 		.4byte	0x65
 327 0065 03       		.uleb128 0x3
 328 0066 04       		.byte	0x4
 329 0067 05       		.byte	0x5
 330 0068 93010000 		.4byte	.LASF7
 331 006c 04       		.uleb128 0x4
 332 006d 26020000 		.4byte	.LASF8
 333 0071 05       		.byte	0x5
 334 0072 41       		.byte	0x41
 335 0073 77000000 		.4byte	0x77
 336 0077 03       		.uleb128 0x3
 337 0078 04       		.byte	0x4
 338 0079 07       		.byte	0x7
 339 007a EE020000 		.4byte	.LASF9
 340 007e 03       		.uleb128 0x3
 341 007f 08       		.byte	0x8
 342 0080 05       		.byte	0x5
 343 0081 DD010000 		.4byte	.LASF10
 344 0085 04       		.uleb128 0x4
 345 0086 ED040000 		.4byte	.LASF11
 346 008a 05       		.byte	0x5
 347 008b 5B       		.byte	0x5b
 348 008c 90000000 		.4byte	0x90
 349 0090 03       		.uleb128 0x3
 350 0091 08       		.byte	0x8
 351 0092 07       		.byte	0x7
 352 0093 B3000000 		.4byte	.LASF12
 353 0097 04       		.uleb128 0x4
 354 0098 71070000 		.4byte	.LASF13
 355 009c 06       		.byte	0x6
 356 009d 18       		.byte	0x18
ARM GAS  /tmp/ccTuq0hs.s 			page 28


 357 009e 3A000000 		.4byte	0x3a
 358 00a2 05       		.uleb128 0x5
 359 00a3 97000000 		.4byte	0x97
 360 00a7 04       		.uleb128 0x4
 361 00a8 3E050000 		.4byte	.LASF14
 362 00ac 06       		.byte	0x6
 363 00ad 2C       		.byte	0x2c
 364 00ae 5A000000 		.4byte	0x5a
 365 00b2 06       		.uleb128 0x6
 366 00b3 A7000000 		.4byte	0xa7
 367 00b7 04       		.uleb128 0x4
 368 00b8 15060000 		.4byte	.LASF15
 369 00bc 06       		.byte	0x6
 370 00bd 30       		.byte	0x30
 371 00be 6C000000 		.4byte	0x6c
 372 00c2 06       		.uleb128 0x6
 373 00c3 B7000000 		.4byte	0xb7
 374 00c7 05       		.uleb128 0x5
 375 00c8 B7000000 		.4byte	0xb7
 376 00cc 04       		.uleb128 0x4
 377 00cd 3F000000 		.4byte	.LASF16
 378 00d1 06       		.byte	0x6
 379 00d2 3C       		.byte	0x3c
 380 00d3 85000000 		.4byte	0x85
 381 00d7 06       		.uleb128 0x6
 382 00d8 CC000000 		.4byte	0xcc
 383 00dc 05       		.uleb128 0x5
 384 00dd CC000000 		.4byte	0xcc
 385 00e1 07       		.uleb128 0x7
 386 00e2 04       		.byte	0x4
 387 00e3 03       		.uleb128 0x3
 388 00e4 04       		.byte	0x4
 389 00e5 07       		.byte	0x7
 390 00e6 F8030000 		.4byte	.LASF17
 391 00ea 08       		.uleb128 0x8
 392 00eb E2000000 		.4byte	.LASF18
 393 00ef 07       		.byte	0x7
 394 00f0 6508     		.2byte	0x865
 395 00f2 B2000000 		.4byte	0xb2
 396 00f6 09       		.uleb128 0x9
 397 00f7 B3020000 		.4byte	.LASF19
 398 00fb 08       		.byte	0x8
 399 00fc 3A       		.byte	0x3a
 400 00fd B7000000 		.4byte	0xb7
 401 0101 04       		.uleb128 0x4
 402 0102 20050000 		.4byte	.LASF20
 403 0106 09       		.byte	0x9
 404 0107 07       		.byte	0x7
 405 0108 25000000 		.4byte	0x25
 406 010c 04       		.uleb128 0x4
 407 010d D9040000 		.4byte	.LASF21
 408 0111 0A       		.byte	0xa
 409 0112 2C       		.byte	0x2c
 410 0113 65000000 		.4byte	0x65
 411 0117 04       		.uleb128 0x4
 412 0118 37060000 		.4byte	.LASF22
 413 011c 0A       		.byte	0xa
ARM GAS  /tmp/ccTuq0hs.s 			page 29


 414 011d 72       		.byte	0x72
 415 011e 65000000 		.4byte	0x65
 416 0122 0A       		.uleb128 0xa
 417 0123 75030000 		.4byte	.LASF23
 418 0127 0B       		.byte	0xb
 419 0128 6501     		.2byte	0x165
 420 012a 2C000000 		.4byte	0x2c
 421 012e 0B       		.uleb128 0xb
 422 012f 04       		.byte	0x4
 423 0130 0A       		.byte	0xa
 424 0131 A6       		.byte	0xa6
 425 0132 4D010000 		.4byte	0x14d
 426 0136 0C       		.uleb128 0xc
 427 0137 5C030000 		.4byte	.LASF24
 428 013b 0A       		.byte	0xa
 429 013c A8       		.byte	0xa8
 430 013d 22010000 		.4byte	0x122
 431 0141 0C       		.uleb128 0xc
 432 0142 AC020000 		.4byte	.LASF25
 433 0146 0A       		.byte	0xa
 434 0147 A9       		.byte	0xa9
 435 0148 4D010000 		.4byte	0x14d
 436 014c 00       		.byte	0
 437 014d 0D       		.uleb128 0xd
 438 014e 45000000 		.4byte	0x45
 439 0152 5D010000 		.4byte	0x15d
 440 0156 0E       		.uleb128 0xe
 441 0157 E3000000 		.4byte	0xe3
 442 015b 03       		.byte	0x3
 443 015c 00       		.byte	0
 444 015d 0F       		.uleb128 0xf
 445 015e 08       		.byte	0x8
 446 015f 0A       		.byte	0xa
 447 0160 A3       		.byte	0xa3
 448 0161 7E010000 		.4byte	0x17e
 449 0165 10       		.uleb128 0x10
 450 0166 0D060000 		.4byte	.LASF26
 451 016a 0A       		.byte	0xa
 452 016b A5       		.byte	0xa5
 453 016c 25000000 		.4byte	0x25
 454 0170 00       		.byte	0
 455 0171 10       		.uleb128 0x10
 456 0172 90060000 		.4byte	.LASF27
 457 0176 0A       		.byte	0xa
 458 0177 AA       		.byte	0xaa
 459 0178 2E010000 		.4byte	0x12e
 460 017c 04       		.byte	0x4
 461 017d 00       		.byte	0
 462 017e 04       		.uleb128 0x4
 463 017f A3050000 		.4byte	.LASF28
 464 0183 0A       		.byte	0xa
 465 0184 AB       		.byte	0xab
 466 0185 5D010000 		.4byte	0x15d
 467 0189 04       		.uleb128 0x4
 468 018a AA040000 		.4byte	.LASF29
 469 018e 0A       		.byte	0xa
 470 018f AF       		.byte	0xaf
ARM GAS  /tmp/ccTuq0hs.s 			page 30


 471 0190 01010000 		.4byte	0x101
 472 0194 04       		.uleb128 0x4
 473 0195 C4060000 		.4byte	.LASF30
 474 0199 0C       		.byte	0xc
 475 019a 16       		.byte	0x16
 476 019b 77000000 		.4byte	0x77
 477 019f 11       		.uleb128 0x11
 478 01a0 61020000 		.4byte	.LASF35
 479 01a4 18       		.byte	0x18
 480 01a5 0C       		.byte	0xc
 481 01a6 2D       		.byte	0x2d
 482 01a7 F2010000 		.4byte	0x1f2
 483 01ab 10       		.uleb128 0x10
 484 01ac 7D060000 		.4byte	.LASF31
 485 01b0 0C       		.byte	0xc
 486 01b1 2F       		.byte	0x2f
 487 01b2 F2010000 		.4byte	0x1f2
 488 01b6 00       		.byte	0
 489 01b7 12       		.uleb128 0x12
 490 01b8 5F6B00   		.ascii	"_k\000"
 491 01bb 0C       		.byte	0xc
 492 01bc 30       		.byte	0x30
 493 01bd 25000000 		.4byte	0x25
 494 01c1 04       		.byte	0x4
 495 01c2 10       		.uleb128 0x10
 496 01c3 F8050000 		.4byte	.LASF32
 497 01c7 0C       		.byte	0xc
 498 01c8 30       		.byte	0x30
 499 01c9 25000000 		.4byte	0x25
 500 01cd 08       		.byte	0x8
 501 01ce 10       		.uleb128 0x10
 502 01cf 38020000 		.4byte	.LASF33
 503 01d3 0C       		.byte	0xc
 504 01d4 30       		.byte	0x30
 505 01d5 25000000 		.4byte	0x25
 506 01d9 0C       		.byte	0xc
 507 01da 10       		.uleb128 0x10
 508 01db C0010000 		.4byte	.LASF34
 509 01df 0C       		.byte	0xc
 510 01e0 30       		.byte	0x30
 511 01e1 25000000 		.4byte	0x25
 512 01e5 10       		.byte	0x10
 513 01e6 12       		.uleb128 0x12
 514 01e7 5F7800   		.ascii	"_x\000"
 515 01ea 0C       		.byte	0xc
 516 01eb 31       		.byte	0x31
 517 01ec F8010000 		.4byte	0x1f8
 518 01f0 14       		.byte	0x14
 519 01f1 00       		.byte	0
 520 01f2 13       		.uleb128 0x13
 521 01f3 04       		.byte	0x4
 522 01f4 9F010000 		.4byte	0x19f
 523 01f8 0D       		.uleb128 0xd
 524 01f9 94010000 		.4byte	0x194
 525 01fd 08020000 		.4byte	0x208
 526 0201 0E       		.uleb128 0xe
 527 0202 E3000000 		.4byte	0xe3
ARM GAS  /tmp/ccTuq0hs.s 			page 31


 528 0206 00       		.byte	0
 529 0207 00       		.byte	0
 530 0208 11       		.uleb128 0x11
 531 0209 8F020000 		.4byte	.LASF36
 532 020d 24       		.byte	0x24
 533 020e 0C       		.byte	0xc
 534 020f 35       		.byte	0x35
 535 0210 81020000 		.4byte	0x281
 536 0214 10       		.uleb128 0x10
 537 0215 23010000 		.4byte	.LASF37
 538 0219 0C       		.byte	0xc
 539 021a 37       		.byte	0x37
 540 021b 25000000 		.4byte	0x25
 541 021f 00       		.byte	0
 542 0220 10       		.uleb128 0x10
 543 0221 10080000 		.4byte	.LASF38
 544 0225 0C       		.byte	0xc
 545 0226 38       		.byte	0x38
 546 0227 25000000 		.4byte	0x25
 547 022b 04       		.byte	0x4
 548 022c 10       		.uleb128 0x10
 549 022d 1E060000 		.4byte	.LASF39
 550 0231 0C       		.byte	0xc
 551 0232 39       		.byte	0x39
 552 0233 25000000 		.4byte	0x25
 553 0237 08       		.byte	0x8
 554 0238 10       		.uleb128 0x10
 555 0239 37080000 		.4byte	.LASF40
 556 023d 0C       		.byte	0xc
 557 023e 3A       		.byte	0x3a
 558 023f 25000000 		.4byte	0x25
 559 0243 0C       		.byte	0xc
 560 0244 10       		.uleb128 0x10
 561 0245 B3040000 		.4byte	.LASF41
 562 0249 0C       		.byte	0xc
 563 024a 3B       		.byte	0x3b
 564 024b 25000000 		.4byte	0x25
 565 024f 10       		.byte	0x10
 566 0250 10       		.uleb128 0x10
 567 0251 B8030000 		.4byte	.LASF42
 568 0255 0C       		.byte	0xc
 569 0256 3C       		.byte	0x3c
 570 0257 25000000 		.4byte	0x25
 571 025b 14       		.byte	0x14
 572 025c 10       		.uleb128 0x10
 573 025d 3E070000 		.4byte	.LASF43
 574 0261 0C       		.byte	0xc
 575 0262 3D       		.byte	0x3d
 576 0263 25000000 		.4byte	0x25
 577 0267 18       		.byte	0x18
 578 0268 10       		.uleb128 0x10
 579 0269 79050000 		.4byte	.LASF44
 580 026d 0C       		.byte	0xc
 581 026e 3E       		.byte	0x3e
 582 026f 25000000 		.4byte	0x25
 583 0273 1C       		.byte	0x1c
 584 0274 10       		.uleb128 0x10
ARM GAS  /tmp/ccTuq0hs.s 			page 32


 585 0275 F6070000 		.4byte	.LASF45
 586 0279 0C       		.byte	0xc
 587 027a 3F       		.byte	0x3f
 588 027b 25000000 		.4byte	0x25
 589 027f 20       		.byte	0x20
 590 0280 00       		.byte	0
 591 0281 14       		.uleb128 0x14
 592 0282 75010000 		.4byte	.LASF46
 593 0286 0801     		.2byte	0x108
 594 0288 0C       		.byte	0xc
 595 0289 48       		.byte	0x48
 596 028a C1020000 		.4byte	0x2c1
 597 028e 10       		.uleb128 0x10
 598 028f 19020000 		.4byte	.LASF47
 599 0293 0C       		.byte	0xc
 600 0294 49       		.byte	0x49
 601 0295 C1020000 		.4byte	0x2c1
 602 0299 00       		.byte	0
 603 029a 10       		.uleb128 0x10
 604 029b 46050000 		.4byte	.LASF48
 605 029f 0C       		.byte	0xc
 606 02a0 4A       		.byte	0x4a
 607 02a1 C1020000 		.4byte	0x2c1
 608 02a5 80       		.byte	0x80
 609 02a6 15       		.uleb128 0x15
 610 02a7 98060000 		.4byte	.LASF49
 611 02ab 0C       		.byte	0xc
 612 02ac 4C       		.byte	0x4c
 613 02ad 94010000 		.4byte	0x194
 614 02b1 0001     		.2byte	0x100
 615 02b3 15       		.uleb128 0x15
 616 02b4 00000000 		.4byte	.LASF50
 617 02b8 0C       		.byte	0xc
 618 02b9 4F       		.byte	0x4f
 619 02ba 94010000 		.4byte	0x194
 620 02be 0401     		.2byte	0x104
 621 02c0 00       		.byte	0
 622 02c1 0D       		.uleb128 0xd
 623 02c2 E1000000 		.4byte	0xe1
 624 02c6 D1020000 		.4byte	0x2d1
 625 02ca 0E       		.uleb128 0xe
 626 02cb E3000000 		.4byte	0xe3
 627 02cf 1F       		.byte	0x1f
 628 02d0 00       		.byte	0
 629 02d1 14       		.uleb128 0x14
 630 02d2 BC040000 		.4byte	.LASF51
 631 02d6 9001     		.2byte	0x190
 632 02d8 0C       		.byte	0xc
 633 02d9 5B       		.byte	0x5b
 634 02da 0F030000 		.4byte	0x30f
 635 02de 10       		.uleb128 0x10
 636 02df 7D060000 		.4byte	.LASF31
 637 02e3 0C       		.byte	0xc
 638 02e4 5C       		.byte	0x5c
 639 02e5 0F030000 		.4byte	0x30f
 640 02e9 00       		.byte	0
 641 02ea 10       		.uleb128 0x10
ARM GAS  /tmp/ccTuq0hs.s 			page 33


 642 02eb D9050000 		.4byte	.LASF52
 643 02ef 0C       		.byte	0xc
 644 02f0 5D       		.byte	0x5d
 645 02f1 25000000 		.4byte	0x25
 646 02f5 04       		.byte	0x4
 647 02f6 10       		.uleb128 0x10
 648 02f7 21020000 		.4byte	.LASF53
 649 02fb 0C       		.byte	0xc
 650 02fc 5F       		.byte	0x5f
 651 02fd 15030000 		.4byte	0x315
 652 0301 08       		.byte	0x8
 653 0302 10       		.uleb128 0x10
 654 0303 75010000 		.4byte	.LASF46
 655 0307 0C       		.byte	0xc
 656 0308 60       		.byte	0x60
 657 0309 81020000 		.4byte	0x281
 658 030d 88       		.byte	0x88
 659 030e 00       		.byte	0
 660 030f 13       		.uleb128 0x13
 661 0310 04       		.byte	0x4
 662 0311 D1020000 		.4byte	0x2d1
 663 0315 0D       		.uleb128 0xd
 664 0316 25030000 		.4byte	0x325
 665 031a 25030000 		.4byte	0x325
 666 031e 0E       		.uleb128 0xe
 667 031f E3000000 		.4byte	0xe3
 668 0323 1F       		.byte	0x1f
 669 0324 00       		.byte	0
 670 0325 13       		.uleb128 0x13
 671 0326 04       		.byte	0x4
 672 0327 2B030000 		.4byte	0x32b
 673 032b 16       		.uleb128 0x16
 674 032c 11       		.uleb128 0x11
 675 032d 83050000 		.4byte	.LASF54
 676 0331 08       		.byte	0x8
 677 0332 0C       		.byte	0xc
 678 0333 73       		.byte	0x73
 679 0334 51030000 		.4byte	0x351
 680 0338 10       		.uleb128 0x10
 681 0339 52010000 		.4byte	.LASF55
 682 033d 0C       		.byte	0xc
 683 033e 74       		.byte	0x74
 684 033f 51030000 		.4byte	0x351
 685 0343 00       		.byte	0
 686 0344 10       		.uleb128 0x10
 687 0345 60060000 		.4byte	.LASF56
 688 0349 0C       		.byte	0xc
 689 034a 75       		.byte	0x75
 690 034b 25000000 		.4byte	0x25
 691 034f 04       		.byte	0x4
 692 0350 00       		.byte	0
 693 0351 13       		.uleb128 0x13
 694 0352 04       		.byte	0x4
 695 0353 45000000 		.4byte	0x45
 696 0357 11       		.uleb128 0x11
 697 0358 BB050000 		.4byte	.LASF57
 698 035c 68       		.byte	0x68
ARM GAS  /tmp/ccTuq0hs.s 			page 34


 699 035d 0C       		.byte	0xc
 700 035e B3       		.byte	0xb3
 701 035f 81040000 		.4byte	0x481
 702 0363 12       		.uleb128 0x12
 703 0364 5F7000   		.ascii	"_p\000"
 704 0367 0C       		.byte	0xc
 705 0368 B4       		.byte	0xb4
 706 0369 51030000 		.4byte	0x351
 707 036d 00       		.byte	0
 708 036e 12       		.uleb128 0x12
 709 036f 5F7200   		.ascii	"_r\000"
 710 0372 0C       		.byte	0xc
 711 0373 B5       		.byte	0xb5
 712 0374 25000000 		.4byte	0x25
 713 0378 04       		.byte	0x4
 714 0379 12       		.uleb128 0x12
 715 037a 5F7700   		.ascii	"_w\000"
 716 037d 0C       		.byte	0xc
 717 037e B6       		.byte	0xb6
 718 037f 25000000 		.4byte	0x25
 719 0383 08       		.byte	0x8
 720 0384 10       		.uleb128 0x10
 721 0385 AC010000 		.4byte	.LASF58
 722 0389 0C       		.byte	0xc
 723 038a B7       		.byte	0xb7
 724 038b 4C000000 		.4byte	0x4c
 725 038f 0C       		.byte	0xc
 726 0390 10       		.uleb128 0x10
 727 0391 00030000 		.4byte	.LASF59
 728 0395 0C       		.byte	0xc
 729 0396 B8       		.byte	0xb8
 730 0397 4C000000 		.4byte	0x4c
 731 039b 0E       		.byte	0xe
 732 039c 12       		.uleb128 0x12
 733 039d 5F626600 		.ascii	"_bf\000"
 734 03a1 0C       		.byte	0xc
 735 03a2 B9       		.byte	0xb9
 736 03a3 2C030000 		.4byte	0x32c
 737 03a7 10       		.byte	0x10
 738 03a8 10       		.uleb128 0x10
 739 03a9 D9000000 		.4byte	.LASF60
 740 03ad 0C       		.byte	0xc
 741 03ae BA       		.byte	0xba
 742 03af 25000000 		.4byte	0x25
 743 03b3 18       		.byte	0x18
 744 03b4 10       		.uleb128 0x10
 745 03b5 83010000 		.4byte	.LASF61
 746 03b9 0C       		.byte	0xc
 747 03ba C1       		.byte	0xc1
 748 03bb E1000000 		.4byte	0xe1
 749 03bf 1C       		.byte	0x1c
 750 03c0 10       		.uleb128 0x10
 751 03c1 32050000 		.4byte	.LASF62
 752 03c5 0C       		.byte	0xc
 753 03c6 C3       		.byte	0xc3
 754 03c7 EE050000 		.4byte	0x5ee
 755 03cb 20       		.byte	0x20
ARM GAS  /tmp/ccTuq0hs.s 			page 35


 756 03cc 10       		.uleb128 0x10
 757 03cd B1030000 		.4byte	.LASF63
 758 03d1 0C       		.byte	0xc
 759 03d2 C5       		.byte	0xc5
 760 03d3 18060000 		.4byte	0x618
 761 03d7 24       		.byte	0x24
 762 03d8 10       		.uleb128 0x10
 763 03d9 28060000 		.4byte	.LASF64
 764 03dd 0C       		.byte	0xc
 765 03de C8       		.byte	0xc8
 766 03df 3C060000 		.4byte	0x63c
 767 03e3 28       		.byte	0x28
 768 03e4 10       		.uleb128 0x10
 769 03e5 2C010000 		.4byte	.LASF65
 770 03e9 0C       		.byte	0xc
 771 03ea C9       		.byte	0xc9
 772 03eb 56060000 		.4byte	0x656
 773 03ef 2C       		.byte	0x2c
 774 03f0 12       		.uleb128 0x12
 775 03f1 5F756200 		.ascii	"_ub\000"
 776 03f5 0C       		.byte	0xc
 777 03f6 CC       		.byte	0xcc
 778 03f7 2C030000 		.4byte	0x32c
 779 03fb 30       		.byte	0x30
 780 03fc 12       		.uleb128 0x12
 781 03fd 5F757000 		.ascii	"_up\000"
 782 0401 0C       		.byte	0xc
 783 0402 CD       		.byte	0xcd
 784 0403 51030000 		.4byte	0x351
 785 0407 38       		.byte	0x38
 786 0408 12       		.uleb128 0x12
 787 0409 5F757200 		.ascii	"_ur\000"
 788 040d 0C       		.byte	0xc
 789 040e CE       		.byte	0xce
 790 040f 25000000 		.4byte	0x25
 791 0413 3C       		.byte	0x3c
 792 0414 10       		.uleb128 0x10
 793 0415 4C010000 		.4byte	.LASF66
 794 0419 0C       		.byte	0xc
 795 041a D1       		.byte	0xd1
 796 041b 5C060000 		.4byte	0x65c
 797 041f 40       		.byte	0x40
 798 0420 10       		.uleb128 0x10
 799 0421 B4070000 		.4byte	.LASF67
 800 0425 0C       		.byte	0xc
 801 0426 D2       		.byte	0xd2
 802 0427 6C060000 		.4byte	0x66c
 803 042b 43       		.byte	0x43
 804 042c 12       		.uleb128 0x12
 805 042d 5F6C6200 		.ascii	"_lb\000"
 806 0431 0C       		.byte	0xc
 807 0432 D5       		.byte	0xd5
 808 0433 2C030000 		.4byte	0x32c
 809 0437 44       		.byte	0x44
 810 0438 10       		.uleb128 0x10
 811 0439 57060000 		.4byte	.LASF68
 812 043d 0C       		.byte	0xc
ARM GAS  /tmp/ccTuq0hs.s 			page 36


 813 043e D8       		.byte	0xd8
 814 043f 25000000 		.4byte	0x25
 815 0443 4C       		.byte	0x4c
 816 0444 10       		.uleb128 0x10
 817 0445 01040000 		.4byte	.LASF69
 818 0449 0C       		.byte	0xc
 819 044a D9       		.byte	0xd9
 820 044b 0C010000 		.4byte	0x10c
 821 044f 50       		.byte	0x50
 822 0450 10       		.uleb128 0x10
 823 0451 82000000 		.4byte	.LASF70
 824 0455 0C       		.byte	0xc
 825 0456 DC       		.byte	0xdc
 826 0457 9F040000 		.4byte	0x49f
 827 045b 54       		.byte	0x54
 828 045c 10       		.uleb128 0x10
 829 045d A5030000 		.4byte	.LASF71
 830 0461 0C       		.byte	0xc
 831 0462 E0       		.byte	0xe0
 832 0463 89010000 		.4byte	0x189
 833 0467 58       		.byte	0x58
 834 0468 10       		.uleb128 0x10
 835 0469 A3020000 		.4byte	.LASF72
 836 046d 0C       		.byte	0xc
 837 046e E2       		.byte	0xe2
 838 046f 7E010000 		.4byte	0x17e
 839 0473 5C       		.byte	0x5c
 840 0474 10       		.uleb128 0x10
 841 0475 8A050000 		.4byte	.LASF73
 842 0479 0C       		.byte	0xc
 843 047a E3       		.byte	0xe3
 844 047b 25000000 		.4byte	0x25
 845 047f 64       		.byte	0x64
 846 0480 00       		.byte	0
 847 0481 17       		.uleb128 0x17
 848 0482 25000000 		.4byte	0x25
 849 0486 9F040000 		.4byte	0x49f
 850 048a 18       		.uleb128 0x18
 851 048b 9F040000 		.4byte	0x49f
 852 048f 18       		.uleb128 0x18
 853 0490 E1000000 		.4byte	0xe1
 854 0494 18       		.uleb128 0x18
 855 0495 DC050000 		.4byte	0x5dc
 856 0499 18       		.uleb128 0x18
 857 049a 25000000 		.4byte	0x25
 858 049e 00       		.byte	0
 859 049f 13       		.uleb128 0x13
 860 04a0 04       		.byte	0x4
 861 04a1 AA040000 		.4byte	0x4aa
 862 04a5 05       		.uleb128 0x5
 863 04a6 9F040000 		.4byte	0x49f
 864 04aa 19       		.uleb128 0x19
 865 04ab 00060000 		.4byte	.LASF74
 866 04af 2804     		.2byte	0x428
 867 04b1 0C       		.byte	0xc
 868 04b2 3802     		.2byte	0x238
 869 04b4 DC050000 		.4byte	0x5dc
ARM GAS  /tmp/ccTuq0hs.s 			page 37


 870 04b8 1A       		.uleb128 0x1a
 871 04b9 4B060000 		.4byte	.LASF75
 872 04bd 0C       		.byte	0xc
 873 04be 3A02     		.2byte	0x23a
 874 04c0 25000000 		.4byte	0x25
 875 04c4 00       		.byte	0
 876 04c5 1A       		.uleb128 0x1a
 877 04c6 4E070000 		.4byte	.LASF76
 878 04ca 0C       		.byte	0xc
 879 04cb 3F02     		.2byte	0x23f
 880 04cd C3060000 		.4byte	0x6c3
 881 04d1 04       		.byte	0x4
 882 04d2 1A       		.uleb128 0x1a
 883 04d3 36070000 		.4byte	.LASF77
 884 04d7 0C       		.byte	0xc
 885 04d8 3F02     		.2byte	0x23f
 886 04da C3060000 		.4byte	0x6c3
 887 04de 08       		.byte	0x8
 888 04df 1A       		.uleb128 0x1a
 889 04e0 59020000 		.4byte	.LASF78
 890 04e4 0C       		.byte	0xc
 891 04e5 3F02     		.2byte	0x23f
 892 04e7 C3060000 		.4byte	0x6c3
 893 04eb 0C       		.byte	0xc
 894 04ec 1A       		.uleb128 0x1a
 895 04ed D4050000 		.4byte	.LASF79
 896 04f1 0C       		.byte	0xc
 897 04f2 4102     		.2byte	0x241
 898 04f4 25000000 		.4byte	0x25
 899 04f8 10       		.byte	0x10
 900 04f9 1A       		.uleb128 0x1a
 901 04fa 34000000 		.4byte	.LASF80
 902 04fe 0C       		.byte	0xc
 903 04ff 4202     		.2byte	0x242
 904 0501 A5080000 		.4byte	0x8a5
 905 0505 14       		.byte	0x14
 906 0506 1A       		.uleb128 0x1a
 907 0507 55070000 		.4byte	.LASF81
 908 050b 0C       		.byte	0xc
 909 050c 4402     		.2byte	0x244
 910 050e 25000000 		.4byte	0x25
 911 0512 30       		.byte	0x30
 912 0513 1A       		.uleb128 0x1a
 913 0514 DE050000 		.4byte	.LASF82
 914 0518 0C       		.byte	0xc
 915 0519 4502     		.2byte	0x245
 916 051b 12060000 		.4byte	0x612
 917 051f 34       		.byte	0x34
 918 0520 1A       		.uleb128 0x1a
 919 0521 CE040000 		.4byte	.LASF83
 920 0525 0C       		.byte	0xc
 921 0526 4702     		.2byte	0x247
 922 0528 25000000 		.4byte	0x25
 923 052c 38       		.byte	0x38
 924 052d 1A       		.uleb128 0x1a
 925 052e EE050000 		.4byte	.LASF84
 926 0532 0C       		.byte	0xc
ARM GAS  /tmp/ccTuq0hs.s 			page 38


 927 0533 4902     		.2byte	0x249
 928 0535 C0080000 		.4byte	0x8c0
 929 0539 3C       		.byte	0x3c
 930 053a 1A       		.uleb128 0x1a
 931 053b 54030000 		.4byte	.LASF85
 932 053f 0C       		.byte	0xc
 933 0540 4C02     		.2byte	0x24c
 934 0542 F2010000 		.4byte	0x1f2
 935 0546 40       		.byte	0x40
 936 0547 1A       		.uleb128 0x1a
 937 0548 D3010000 		.4byte	.LASF86
 938 054c 0C       		.byte	0xc
 939 054d 4D02     		.2byte	0x24d
 940 054f 25000000 		.4byte	0x25
 941 0553 44       		.byte	0x44
 942 0554 1A       		.uleb128 0x1a
 943 0555 32080000 		.4byte	.LASF87
 944 0559 0C       		.byte	0xc
 945 055a 4E02     		.2byte	0x24e
 946 055c F2010000 		.4byte	0x1f2
 947 0560 48       		.byte	0x48
 948 0561 1A       		.uleb128 0x1a
 949 0562 92050000 		.4byte	.LASF88
 950 0566 0C       		.byte	0xc
 951 0567 4F02     		.2byte	0x24f
 952 0569 C6080000 		.4byte	0x8c6
 953 056d 4C       		.byte	0x4c
 954 056e 1A       		.uleb128 0x1a
 955 056f D3020000 		.4byte	.LASF89
 956 0573 0C       		.byte	0xc
 957 0574 5202     		.2byte	0x252
 958 0576 25000000 		.4byte	0x25
 959 057a 50       		.byte	0x50
 960 057b 1A       		.uleb128 0x1a
 961 057c F2010000 		.4byte	.LASF90
 962 0580 0C       		.byte	0xc
 963 0581 5302     		.2byte	0x253
 964 0583 DC050000 		.4byte	0x5dc
 965 0587 54       		.byte	0x54
 966 0588 1A       		.uleb128 0x1a
 967 0589 52050000 		.4byte	.LASF91
 968 058d 0C       		.byte	0xc
 969 058e 7602     		.2byte	0x276
 970 0590 83080000 		.4byte	0x883
 971 0594 58       		.byte	0x58
 972 0595 1B       		.uleb128 0x1b
 973 0596 BC040000 		.4byte	.LASF51
 974 059a 0C       		.byte	0xc
 975 059b 7A02     		.2byte	0x27a
 976 059d 0F030000 		.4byte	0x30f
 977 05a1 4801     		.2byte	0x148
 978 05a3 1B       		.uleb128 0x1b
 979 05a4 32030000 		.4byte	.LASF92
 980 05a8 0C       		.byte	0xc
 981 05a9 7B02     		.2byte	0x27b
 982 05ab D1020000 		.4byte	0x2d1
 983 05af 4C01     		.2byte	0x14c
ARM GAS  /tmp/ccTuq0hs.s 			page 39


 984 05b1 1B       		.uleb128 0x1b
 985 05b2 83070000 		.4byte	.LASF93
 986 05b6 0C       		.byte	0xc
 987 05b7 7F02     		.2byte	0x27f
 988 05b9 D7080000 		.4byte	0x8d7
 989 05bd DC02     		.2byte	0x2dc
 990 05bf 1B       		.uleb128 0x1b
 991 05c0 8B010000 		.4byte	.LASF94
 992 05c4 0C       		.byte	0xc
 993 05c5 8402     		.2byte	0x284
 994 05c7 88060000 		.4byte	0x688
 995 05cb E002     		.2byte	0x2e0
 996 05cd 1B       		.uleb128 0x1b
 997 05ce 70010000 		.4byte	.LASF95
 998 05d2 0C       		.byte	0xc
 999 05d3 8502     		.2byte	0x285
 1000 05d5 E3080000 		.4byte	0x8e3
 1001 05d9 EC02     		.2byte	0x2ec
 1002 05db 00       		.byte	0
 1003 05dc 13       		.uleb128 0x13
 1004 05dd 04       		.byte	0x4
 1005 05de E2050000 		.4byte	0x5e2
 1006 05e2 03       		.uleb128 0x3
 1007 05e3 01       		.byte	0x1
 1008 05e4 08       		.byte	0x8
 1009 05e5 52060000 		.4byte	.LASF96
 1010 05e9 05       		.uleb128 0x5
 1011 05ea E2050000 		.4byte	0x5e2
 1012 05ee 13       		.uleb128 0x13
 1013 05ef 04       		.byte	0x4
 1014 05f0 81040000 		.4byte	0x481
 1015 05f4 17       		.uleb128 0x17
 1016 05f5 25000000 		.4byte	0x25
 1017 05f9 12060000 		.4byte	0x612
 1018 05fd 18       		.uleb128 0x18
 1019 05fe 9F040000 		.4byte	0x49f
 1020 0602 18       		.uleb128 0x18
 1021 0603 E1000000 		.4byte	0xe1
 1022 0607 18       		.uleb128 0x18
 1023 0608 12060000 		.4byte	0x612
 1024 060c 18       		.uleb128 0x18
 1025 060d 25000000 		.4byte	0x25
 1026 0611 00       		.byte	0
 1027 0612 13       		.uleb128 0x13
 1028 0613 04       		.byte	0x4
 1029 0614 E9050000 		.4byte	0x5e9
 1030 0618 13       		.uleb128 0x13
 1031 0619 04       		.byte	0x4
 1032 061a F4050000 		.4byte	0x5f4
 1033 061e 17       		.uleb128 0x17
 1034 061f 17010000 		.4byte	0x117
 1035 0623 3C060000 		.4byte	0x63c
 1036 0627 18       		.uleb128 0x18
 1037 0628 9F040000 		.4byte	0x49f
 1038 062c 18       		.uleb128 0x18
 1039 062d E1000000 		.4byte	0xe1
 1040 0631 18       		.uleb128 0x18
ARM GAS  /tmp/ccTuq0hs.s 			page 40


 1041 0632 17010000 		.4byte	0x117
 1042 0636 18       		.uleb128 0x18
 1043 0637 25000000 		.4byte	0x25
 1044 063b 00       		.byte	0
 1045 063c 13       		.uleb128 0x13
 1046 063d 04       		.byte	0x4
 1047 063e 1E060000 		.4byte	0x61e
 1048 0642 17       		.uleb128 0x17
 1049 0643 25000000 		.4byte	0x25
 1050 0647 56060000 		.4byte	0x656
 1051 064b 18       		.uleb128 0x18
 1052 064c 9F040000 		.4byte	0x49f
 1053 0650 18       		.uleb128 0x18
 1054 0651 E1000000 		.4byte	0xe1
 1055 0655 00       		.byte	0
 1056 0656 13       		.uleb128 0x13
 1057 0657 04       		.byte	0x4
 1058 0658 42060000 		.4byte	0x642
 1059 065c 0D       		.uleb128 0xd
 1060 065d 45000000 		.4byte	0x45
 1061 0661 6C060000 		.4byte	0x66c
 1062 0665 0E       		.uleb128 0xe
 1063 0666 E3000000 		.4byte	0xe3
 1064 066a 02       		.byte	0x2
 1065 066b 00       		.byte	0
 1066 066c 0D       		.uleb128 0xd
 1067 066d 45000000 		.4byte	0x45
 1068 0671 7C060000 		.4byte	0x67c
 1069 0675 0E       		.uleb128 0xe
 1070 0676 E3000000 		.4byte	0xe3
 1071 067a 00       		.byte	0
 1072 067b 00       		.byte	0
 1073 067c 0A       		.uleb128 0xa
 1074 067d 9C050000 		.4byte	.LASF97
 1075 0681 0C       		.byte	0xc
 1076 0682 1D01     		.2byte	0x11d
 1077 0684 57030000 		.4byte	0x357
 1078 0688 1C       		.uleb128 0x1c
 1079 0689 48070000 		.4byte	.LASF98
 1080 068d 0C       		.byte	0xc
 1081 068e 0C       		.byte	0xc
 1082 068f 2101     		.2byte	0x121
 1083 0691 BD060000 		.4byte	0x6bd
 1084 0695 1A       		.uleb128 0x1a
 1085 0696 7D060000 		.4byte	.LASF31
 1086 069a 0C       		.byte	0xc
 1087 069b 2301     		.2byte	0x123
 1088 069d BD060000 		.4byte	0x6bd
 1089 06a1 00       		.byte	0
 1090 06a2 1A       		.uleb128 0x1a
 1091 06a3 12030000 		.4byte	.LASF99
 1092 06a7 0C       		.byte	0xc
 1093 06a8 2401     		.2byte	0x124
 1094 06aa 25000000 		.4byte	0x25
 1095 06ae 04       		.byte	0x4
 1096 06af 1A       		.uleb128 0x1a
 1097 06b0 CE050000 		.4byte	.LASF100
ARM GAS  /tmp/ccTuq0hs.s 			page 41


 1098 06b4 0C       		.byte	0xc
 1099 06b5 2501     		.2byte	0x125
 1100 06b7 C3060000 		.4byte	0x6c3
 1101 06bb 08       		.byte	0x8
 1102 06bc 00       		.byte	0
 1103 06bd 13       		.uleb128 0x13
 1104 06be 04       		.byte	0x4
 1105 06bf 88060000 		.4byte	0x688
 1106 06c3 13       		.uleb128 0x13
 1107 06c4 04       		.byte	0x4
 1108 06c5 7C060000 		.4byte	0x67c
 1109 06c9 1C       		.uleb128 0x1c
 1110 06ca 2C000000 		.4byte	.LASF101
 1111 06ce 0E       		.byte	0xe
 1112 06cf 0C       		.byte	0xc
 1113 06d0 3D01     		.2byte	0x13d
 1114 06d2 FE060000 		.4byte	0x6fe
 1115 06d6 1A       		.uleb128 0x1a
 1116 06d7 07060000 		.4byte	.LASF102
 1117 06db 0C       		.byte	0xc
 1118 06dc 3E01     		.2byte	0x13e
 1119 06de FE060000 		.4byte	0x6fe
 1120 06e2 00       		.byte	0
 1121 06e3 1A       		.uleb128 0x1a
 1122 06e4 AB030000 		.4byte	.LASF103
 1123 06e8 0C       		.byte	0xc
 1124 06e9 3F01     		.2byte	0x13f
 1125 06eb FE060000 		.4byte	0x6fe
 1126 06ef 06       		.byte	0x6
 1127 06f0 1A       		.uleb128 0x1a
 1128 06f1 AF060000 		.4byte	.LASF104
 1129 06f5 0C       		.byte	0xc
 1130 06f6 4001     		.2byte	0x140
 1131 06f8 53000000 		.4byte	0x53
 1132 06fc 0C       		.byte	0xc
 1133 06fd 00       		.byte	0
 1134 06fe 0D       		.uleb128 0xd
 1135 06ff 53000000 		.4byte	0x53
 1136 0703 0E070000 		.4byte	0x70e
 1137 0707 0E       		.uleb128 0xe
 1138 0708 E3000000 		.4byte	0xe3
 1139 070c 02       		.byte	0x2
 1140 070d 00       		.byte	0
 1141 070e 1D       		.uleb128 0x1d
 1142 070f D0       		.byte	0xd0
 1143 0710 0C       		.byte	0xc
 1144 0711 5702     		.2byte	0x257
 1145 0713 0F080000 		.4byte	0x80f
 1146 0717 1A       		.uleb128 0x1a
 1147 0718 C2030000 		.4byte	.LASF105
 1148 071c 0C       		.byte	0xc
 1149 071d 5902     		.2byte	0x259
 1150 071f 2C000000 		.4byte	0x2c
 1151 0723 00       		.byte	0
 1152 0724 1A       		.uleb128 0x1a
 1153 0725 83060000 		.4byte	.LASF106
 1154 0729 0C       		.byte	0xc
ARM GAS  /tmp/ccTuq0hs.s 			page 42


 1155 072a 5A02     		.2byte	0x25a
 1156 072c DC050000 		.4byte	0x5dc
 1157 0730 04       		.byte	0x4
 1158 0731 1A       		.uleb128 0x1a
 1159 0732 47030000 		.4byte	.LASF107
 1160 0736 0C       		.byte	0xc
 1161 0737 5B02     		.2byte	0x25b
 1162 0739 0F080000 		.4byte	0x80f
 1163 073d 08       		.byte	0x8
 1164 073e 1A       		.uleb128 0x1a
 1165 073f 01080000 		.4byte	.LASF108
 1166 0743 0C       		.byte	0xc
 1167 0744 5C02     		.2byte	0x25c
 1168 0746 08020000 		.4byte	0x208
 1169 074a 24       		.byte	0x24
 1170 074b 1A       		.uleb128 0x1a
 1171 074c 1D000000 		.4byte	.LASF109
 1172 0750 0C       		.byte	0xc
 1173 0751 5D02     		.2byte	0x25d
 1174 0753 25000000 		.4byte	0x25
 1175 0757 48       		.byte	0x48
 1176 0758 1A       		.uleb128 0x1a
 1177 0759 C3050000 		.4byte	.LASF110
 1178 075d 0C       		.byte	0xc
 1179 075e 5E02     		.2byte	0x25e
 1180 0760 90000000 		.4byte	0x90
 1181 0764 50       		.byte	0x50
 1182 0765 1A       		.uleb128 0x1a
 1183 0766 19080000 		.4byte	.LASF111
 1184 076a 0C       		.byte	0xc
 1185 076b 5F02     		.2byte	0x25f
 1186 076d C9060000 		.4byte	0x6c9
 1187 0771 58       		.byte	0x58
 1188 0772 1A       		.uleb128 0x1a
 1189 0773 6C050000 		.4byte	.LASF112
 1190 0777 0C       		.byte	0xc
 1191 0778 6002     		.2byte	0x260
 1192 077a 7E010000 		.4byte	0x17e
 1193 077e 68       		.byte	0x68
 1194 077f 1A       		.uleb128 0x1a
 1195 0780 24080000 		.4byte	.LASF113
 1196 0784 0C       		.byte	0xc
 1197 0785 6102     		.2byte	0x261
 1198 0787 7E010000 		.4byte	0x17e
 1199 078b 70       		.byte	0x70
 1200 078c 1A       		.uleb128 0x1a
 1201 078d 15010000 		.4byte	.LASF114
 1202 0791 0C       		.byte	0xc
 1203 0792 6202     		.2byte	0x262
 1204 0794 7E010000 		.4byte	0x17e
 1205 0798 78       		.byte	0x78
 1206 0799 1A       		.uleb128 0x1a
 1207 079a 79070000 		.4byte	.LASF115
 1208 079e 0C       		.byte	0xc
 1209 079f 6302     		.2byte	0x263
 1210 07a1 1F080000 		.4byte	0x81f
 1211 07a5 80       		.byte	0x80
ARM GAS  /tmp/ccTuq0hs.s 			page 43


 1212 07a6 1A       		.uleb128 0x1a
 1213 07a7 3B030000 		.4byte	.LASF116
 1214 07ab 0C       		.byte	0xc
 1215 07ac 6402     		.2byte	0x264
 1216 07ae 2F080000 		.4byte	0x82f
 1217 07b2 88       		.byte	0x88
 1218 07b3 1A       		.uleb128 0x1a
 1219 07b4 75000000 		.4byte	.LASF117
 1220 07b8 0C       		.byte	0xc
 1221 07b9 6502     		.2byte	0x265
 1222 07bb 25000000 		.4byte	0x25
 1223 07bf A0       		.byte	0xa0
 1224 07c0 1A       		.uleb128 0x1a
 1225 07c1 0B020000 		.4byte	.LASF118
 1226 07c5 0C       		.byte	0xc
 1227 07c6 6602     		.2byte	0x266
 1228 07c8 7E010000 		.4byte	0x17e
 1229 07cc A4       		.byte	0xa4
 1230 07cd 1A       		.uleb128 0x1a
 1231 07ce FE000000 		.4byte	.LASF119
 1232 07d2 0C       		.byte	0xc
 1233 07d3 6702     		.2byte	0x267
 1234 07d5 7E010000 		.4byte	0x17e
 1235 07d9 AC       		.byte	0xac
 1236 07da 1A       		.uleb128 0x1a
 1237 07db FA010000 		.4byte	.LASF120
 1238 07df 0C       		.byte	0xc
 1239 07e0 6802     		.2byte	0x268
 1240 07e2 7E010000 		.4byte	0x17e
 1241 07e6 B4       		.byte	0xb4
 1242 07e7 1A       		.uleb128 0x1a
 1243 07e8 88000000 		.4byte	.LASF121
 1244 07ec 0C       		.byte	0xc
 1245 07ed 6902     		.2byte	0x269
 1246 07ef 7E010000 		.4byte	0x17e
 1247 07f3 BC       		.byte	0xbc
 1248 07f4 1A       		.uleb128 0x1a
 1249 07f5 A2000000 		.4byte	.LASF122
 1250 07f9 0C       		.byte	0xc
 1251 07fa 6A02     		.2byte	0x26a
 1252 07fc 7E010000 		.4byte	0x17e
 1253 0800 C4       		.byte	0xc4
 1254 0801 1A       		.uleb128 0x1a
 1255 0802 2E060000 		.4byte	.LASF123
 1256 0806 0C       		.byte	0xc
 1257 0807 6B02     		.2byte	0x26b
 1258 0809 25000000 		.4byte	0x25
 1259 080d CC       		.byte	0xcc
 1260 080e 00       		.byte	0
 1261 080f 0D       		.uleb128 0xd
 1262 0810 E2050000 		.4byte	0x5e2
 1263 0814 1F080000 		.4byte	0x81f
 1264 0818 0E       		.uleb128 0xe
 1265 0819 E3000000 		.4byte	0xe3
 1266 081d 19       		.byte	0x19
 1267 081e 00       		.byte	0
 1268 081f 0D       		.uleb128 0xd
ARM GAS  /tmp/ccTuq0hs.s 			page 44


 1269 0820 E2050000 		.4byte	0x5e2
 1270 0824 2F080000 		.4byte	0x82f
 1271 0828 0E       		.uleb128 0xe
 1272 0829 E3000000 		.4byte	0xe3
 1273 082d 07       		.byte	0x7
 1274 082e 00       		.byte	0
 1275 082f 0D       		.uleb128 0xd
 1276 0830 E2050000 		.4byte	0x5e2
 1277 0834 3F080000 		.4byte	0x83f
 1278 0838 0E       		.uleb128 0xe
 1279 0839 E3000000 		.4byte	0xe3
 1280 083d 17       		.byte	0x17
 1281 083e 00       		.byte	0
 1282 083f 1D       		.uleb128 0x1d
 1283 0840 F0       		.byte	0xf0
 1284 0841 0C       		.byte	0xc
 1285 0842 7002     		.2byte	0x270
 1286 0844 63080000 		.4byte	0x863
 1287 0848 1A       		.uleb128 0x1a
 1288 0849 62030000 		.4byte	.LASF124
 1289 084d 0C       		.byte	0xc
 1290 084e 7302     		.2byte	0x273
 1291 0850 63080000 		.4byte	0x863
 1292 0854 00       		.byte	0
 1293 0855 1A       		.uleb128 0x1a
 1294 0856 86020000 		.4byte	.LASF125
 1295 085a 0C       		.byte	0xc
 1296 085b 7402     		.2byte	0x274
 1297 085d 73080000 		.4byte	0x873
 1298 0861 78       		.byte	0x78
 1299 0862 00       		.byte	0
 1300 0863 0D       		.uleb128 0xd
 1301 0864 51030000 		.4byte	0x351
 1302 0868 73080000 		.4byte	0x873
 1303 086c 0E       		.uleb128 0xe
 1304 086d E3000000 		.4byte	0xe3
 1305 0871 1D       		.byte	0x1d
 1306 0872 00       		.byte	0
 1307 0873 0D       		.uleb128 0xd
 1308 0874 2C000000 		.4byte	0x2c
 1309 0878 83080000 		.4byte	0x883
 1310 087c 0E       		.uleb128 0xe
 1311 087d E3000000 		.4byte	0xe3
 1312 0881 1D       		.byte	0x1d
 1313 0882 00       		.byte	0
 1314 0883 1E       		.uleb128 0x1e
 1315 0884 F0       		.byte	0xf0
 1316 0885 0C       		.byte	0xc
 1317 0886 5502     		.2byte	0x255
 1318 0888 A5080000 		.4byte	0x8a5
 1319 088c 1F       		.uleb128 0x1f
 1320 088d 00060000 		.4byte	.LASF74
 1321 0891 0C       		.byte	0xc
 1322 0892 6C02     		.2byte	0x26c
 1323 0894 0E070000 		.4byte	0x70e
 1324 0898 1F       		.uleb128 0x1f
 1325 0899 BA070000 		.4byte	.LASF126
ARM GAS  /tmp/ccTuq0hs.s 			page 45


 1326 089d 0C       		.byte	0xc
 1327 089e 7502     		.2byte	0x275
 1328 08a0 3F080000 		.4byte	0x83f
 1329 08a4 00       		.byte	0
 1330 08a5 0D       		.uleb128 0xd
 1331 08a6 E2050000 		.4byte	0x5e2
 1332 08aa B5080000 		.4byte	0x8b5
 1333 08ae 0E       		.uleb128 0xe
 1334 08af E3000000 		.4byte	0xe3
 1335 08b3 18       		.byte	0x18
 1336 08b4 00       		.byte	0
 1337 08b5 20       		.uleb128 0x20
 1338 08b6 C0080000 		.4byte	0x8c0
 1339 08ba 18       		.uleb128 0x18
 1340 08bb 9F040000 		.4byte	0x49f
 1341 08bf 00       		.byte	0
 1342 08c0 13       		.uleb128 0x13
 1343 08c1 04       		.byte	0x4
 1344 08c2 B5080000 		.4byte	0x8b5
 1345 08c6 13       		.uleb128 0x13
 1346 08c7 04       		.byte	0x4
 1347 08c8 F2010000 		.4byte	0x1f2
 1348 08cc 20       		.uleb128 0x20
 1349 08cd D7080000 		.4byte	0x8d7
 1350 08d1 18       		.uleb128 0x18
 1351 08d2 25000000 		.4byte	0x25
 1352 08d6 00       		.byte	0
 1353 08d7 13       		.uleb128 0x13
 1354 08d8 04       		.byte	0x4
 1355 08d9 DD080000 		.4byte	0x8dd
 1356 08dd 13       		.uleb128 0x13
 1357 08de 04       		.byte	0x4
 1358 08df CC080000 		.4byte	0x8cc
 1359 08e3 0D       		.uleb128 0xd
 1360 08e4 7C060000 		.4byte	0x67c
 1361 08e8 F3080000 		.4byte	0x8f3
 1362 08ec 0E       		.uleb128 0xe
 1363 08ed E3000000 		.4byte	0xe3
 1364 08f1 02       		.byte	0x2
 1365 08f2 00       		.byte	0
 1366 08f3 08       		.uleb128 0x8
 1367 08f4 4D020000 		.4byte	.LASF127
 1368 08f8 0C       		.byte	0xc
 1369 08f9 FD02     		.2byte	0x2fd
 1370 08fb 9F040000 		.4byte	0x49f
 1371 08ff 08       		.uleb128 0x8
 1372 0900 F7060000 		.4byte	.LASF128
 1373 0904 0C       		.byte	0xc
 1374 0905 FE02     		.2byte	0x2fe
 1375 0907 A5040000 		.4byte	0x4a5
 1376 090b 09       		.uleb128 0x9
 1377 090c C4040000 		.4byte	.LASF129
 1378 0910 0D       		.byte	0xd
 1379 0911 5F       		.byte	0x5f
 1380 0912 DC050000 		.4byte	0x5dc
 1381 0916 04       		.uleb128 0x4
 1382 0917 97000000 		.4byte	.LASF130
ARM GAS  /tmp/ccTuq0hs.s 			page 46


 1383 091b 04       		.byte	0x4
 1384 091c 8C       		.byte	0x8c
 1385 091d B7000000 		.4byte	0xb7
 1386 0921 05       		.uleb128 0x5
 1387 0922 16090000 		.4byte	0x916
 1388 0926 09       		.uleb128 0x9
 1389 0927 FE040000 		.4byte	.LASF131
 1390 092b 04       		.byte	0x4
 1391 092c 8F       		.byte	0x8f
 1392 092d 38090000 		.4byte	0x938
 1393 0931 03       		.uleb128 0x3
 1394 0932 01       		.byte	0x1
 1395 0933 02       		.byte	0x2
 1396 0934 38050000 		.4byte	.LASF132
 1397 0938 06       		.uleb128 0x6
 1398 0939 31090000 		.4byte	0x931
 1399 093d 21       		.uleb128 0x21
 1400 093e 93070000 		.4byte	.LASF133
 1401 0942 04       		.byte	0x4
 1402 0943 94       		.byte	0x94
 1403 0944 C2000000 		.4byte	0xc2
 1404 0948 05       		.uleb128 0x5
 1405 0949 03       		.byte	0x3
 1406 094a 00000000 		.4byte	cpu_irq_critical_section_counter
 1407 094e 21       		.uleb128 0x21
 1408 094f CF030000 		.4byte	.LASF134
 1409 0953 04       		.byte	0x4
 1410 0954 95       		.byte	0x95
 1411 0955 38090000 		.4byte	0x938
 1412 0959 05       		.uleb128 0x5
 1413 095a 03       		.byte	0x3
 1414 095b 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1415 095f 03       		.uleb128 0x3
 1416 0960 04       		.byte	0x4
 1417 0961 04       		.byte	0x4
 1418 0962 F8040000 		.4byte	.LASF135
 1419 0966 03       		.uleb128 0x3
 1420 0967 08       		.byte	0x8
 1421 0968 04       		.byte	0x4
 1422 0969 EB010000 		.4byte	.LASF136
 1423 096d 03       		.uleb128 0x3
 1424 096e 08       		.byte	0x8
 1425 096f 04       		.byte	0x4
 1426 0970 3F060000 		.4byte	.LASF137
 1427 0974 22       		.uleb128 0x22
 1428 0975 E6060000 		.4byte	.LASF174
 1429 0979 01       		.byte	0x1
 1430 097a 33000000 		.4byte	0x33
 1431 097e 0E       		.byte	0xe
 1432 097f 9902     		.2byte	0x299
 1433 0981 9E090000 		.4byte	0x99e
 1434 0985 23       		.uleb128 0x23
 1435 0986 14070000 		.4byte	.LASF138
 1436 098a 7F       		.sleb128 -1
 1437 098b 24       		.uleb128 0x24
 1438 098c C5010000 		.4byte	.LASF139
 1439 0990 00       		.byte	0
ARM GAS  /tmp/ccTuq0hs.s 			page 47


 1440 0991 24       		.uleb128 0x24
 1441 0992 EF000000 		.4byte	.LASF140
 1442 0996 01       		.byte	0x1
 1443 0997 24       		.uleb128 0x24
 1444 0998 CA000000 		.4byte	.LASF141
 1445 099c 02       		.byte	0x2
 1446 099d 00       		.byte	0
 1447 099e 08       		.uleb128 0x8
 1448 099f C3020000 		.4byte	.LASF142
 1449 09a3 0E       		.byte	0xe
 1450 09a4 A402     		.2byte	0x2a4
 1451 09a6 74090000 		.4byte	0x974
 1452 09aa 25       		.uleb128 0x25
 1453 09ab 50696E00 		.ascii	"Pin\000"
 1454 09af 0F       		.byte	0xf
 1455 09b0 38       		.byte	0x38
 1456 09b1 97000000 		.4byte	0x97
 1457 09b5 05       		.uleb128 0x5
 1458 09b6 AA090000 		.4byte	0x9aa
 1459 09ba 26       		.uleb128 0x26
 1460 09bb 4E080000 		.4byte	.LASF143
 1461 09bf 0F       		.byte	0xf
 1462 09c0 39       		.byte	0x39
 1463 09c1 B5090000 		.4byte	0x9b5
 1464 09c5 7F       		.sleb128 -1
 1465 09c6 09       		.uleb128 0x9
 1466 09c7 0A070000 		.4byte	.LASF144
 1467 09cb 10       		.byte	0x10
 1468 09cc 8B       		.byte	0x8b
 1469 09cd 65000000 		.4byte	0x65
 1470 09d1 09       		.uleb128 0x9
 1471 09d2 48000000 		.4byte	.LASF145
 1472 09d6 10       		.byte	0x10
 1473 09d7 8C       		.byte	0x8c
 1474 09d8 25000000 		.4byte	0x25
 1475 09dc 0D       		.uleb128 0xd
 1476 09dd DC050000 		.4byte	0x5dc
 1477 09e1 EC090000 		.4byte	0x9ec
 1478 09e5 0E       		.uleb128 0xe
 1479 09e6 E3000000 		.4byte	0xe3
 1480 09ea 01       		.byte	0x1
 1481 09eb 00       		.byte	0
 1482 09ec 09       		.uleb128 0x9
 1483 09ed 0D010000 		.4byte	.LASF146
 1484 09f1 10       		.byte	0x10
 1485 09f2 8F       		.byte	0x8f
 1486 09f3 DC090000 		.4byte	0x9dc
 1487 09f7 27       		.uleb128 0x27
 1488 09f8 69030000 		.4byte	.LASF147
 1489 09fc 11       		.byte	0x11
 1490 09fd 5C       		.byte	0x5c
 1491 09fe A2000000 		.4byte	0xa2
 1492 0a02 38       		.byte	0x38
 1493 0a03 27       		.uleb128 0x27
 1494 0a04 57050000 		.4byte	.LASF148
 1495 0a08 11       		.byte	0x11
 1496 0a09 5D       		.byte	0x5d
ARM GAS  /tmp/ccTuq0hs.s 			page 48


 1497 0a0a A2000000 		.4byte	0xa2
 1498 0a0e 05       		.byte	0x5
 1499 0a0f 27       		.uleb128 0x27
 1500 0a10 69020000 		.4byte	.LASF149
 1501 0a14 11       		.byte	0x11
 1502 0a15 5E       		.byte	0x5e
 1503 0a16 A2000000 		.4byte	0xa2
 1504 0a1a 06       		.byte	0x6
 1505 0a1b 27       		.uleb128 0x27
 1506 0a1c 06030000 		.4byte	.LASF150
 1507 0a20 11       		.byte	0x11
 1508 0a21 60       		.byte	0x60
 1509 0a22 A2000000 		.4byte	0xa2
 1510 0a26 39       		.byte	0x39
 1511 0a27 27       		.uleb128 0x27
 1512 0a28 3E020000 		.4byte	.LASF151
 1513 0a2c 11       		.byte	0x11
 1514 0a2d 61       		.byte	0x61
 1515 0a2e A2000000 		.4byte	0xa2
 1516 0a32 03       		.byte	0x3
 1517 0a33 27       		.uleb128 0x27
 1518 0a34 94020000 		.4byte	.LASF152
 1519 0a38 11       		.byte	0x11
 1520 0a39 62       		.byte	0x62
 1521 0a3a A2000000 		.4byte	0xa2
 1522 0a3e 04       		.byte	0x4
 1523 0a3f 27       		.uleb128 0x27
 1524 0a40 CC060000 		.4byte	.LASF153
 1525 0a44 11       		.byte	0x11
 1526 0a45 69       		.byte	0x69
 1527 0a46 A2000000 		.4byte	0xa2
 1528 0a4a 33       		.byte	0x33
 1529 0a4b 27       		.uleb128 0x27
 1530 0a4c B4060000 		.4byte	.LASF154
 1531 0a50 11       		.byte	0x11
 1532 0a51 6A       		.byte	0x6a
 1533 0a52 A2000000 		.4byte	0xa2
 1534 0a56 34       		.byte	0x34
 1535 0a57 27       		.uleb128 0x27
 1536 0a58 58010000 		.4byte	.LASF155
 1537 0a5c 11       		.byte	0x11
 1538 0a5d 6D       		.byte	0x6d
 1539 0a5e A2000000 		.4byte	0xa2
 1540 0a62 35       		.byte	0x35
 1541 0a63 27       		.uleb128 0x27
 1542 0a64 22070000 		.4byte	.LASF156
 1543 0a68 11       		.byte	0x11
 1544 0a69 6E       		.byte	0x6e
 1545 0a6a A2000000 		.4byte	0xa2
 1546 0a6e 36       		.byte	0x36
 1547 0a6f 27       		.uleb128 0x27
 1548 0a70 96030000 		.4byte	.LASF157
 1549 0a74 11       		.byte	0x11
 1550 0a75 6F       		.byte	0x6f
 1551 0a76 A2000000 		.4byte	0xa2
 1552 0a7a 37       		.byte	0x37
 1553 0a7b 27       		.uleb128 0x27
ARM GAS  /tmp/ccTuq0hs.s 			page 49


 1554 0a7c 3F010000 		.4byte	.LASF158
 1555 0a80 11       		.byte	0x11
 1556 0a81 71       		.byte	0x71
 1557 0a82 C7000000 		.4byte	0xc7
 1558 0a86 32       		.byte	0x32
 1559 0a87 28       		.uleb128 0x28
 1560 0a88 AE050000 		.4byte	.LASF159
 1561 0a8c 11       		.byte	0x11
 1562 0a8d 73       		.byte	0x73
 1563 0a8e C7000000 		.4byte	0xc7
 1564 0a92 58466100 		.4byte	0x614658
 1565 0a96 29       		.uleb128 0x29
 1566 0a97 B3010000 		.4byte	.LASF160
 1567 0a9b 11       		.byte	0x11
 1568 0a9c 74       		.byte	0x74
 1569 0a9d C7000000 		.4byte	0xc7
 1570 0aa1 4661     		.2byte	0x6146
 1571 0aa3 21       		.uleb128 0x21
 1572 0aa4 12000000 		.4byte	.LASF161
 1573 0aa8 01       		.byte	0x1
 1574 0aa9 19       		.byte	0x19
 1575 0aaa D7000000 		.4byte	0xd7
 1576 0aae 05       		.uleb128 0x5
 1577 0aaf 03       		.byte	0x3
 1578 0ab0 00000000 		.4byte	g_ms_ticks
 1579 0ab4 2A       		.uleb128 0x2a
 1580 0ab5 67070000 		.4byte	.LASF175
 1581 0ab9 01       		.byte	0x1
 1582 0aba 50       		.byte	0x50
 1583 0abb 00000000 		.4byte	.LFB230
 1584 0abf 24000000 		.4byte	.LFE230-.LFB230
 1585 0ac3 01       		.uleb128 0x1
 1586 0ac4 9C       		.byte	0x9c
 1587 0ac5 F60A0000 		.4byte	0xaf6
 1588 0ac9 2B       		.uleb128 0x2b
 1589 0aca 6D7300   		.ascii	"ms\000"
 1590 0acd 01       		.byte	0x1
 1591 0ace 50       		.byte	0x50
 1592 0acf B7000000 		.4byte	0xb7
 1593 0ad3 00000000 		.4byte	.LLST0
 1594 0ad7 2C       		.uleb128 0x2c
 1595 0ad8 04000000 		.4byte	.LBB48
 1596 0adc 20000000 		.4byte	.LBE48-.LBB48
 1597 0ae0 2D       		.uleb128 0x2d
 1598 0ae1 1E080000 		.4byte	.LASF162
 1599 0ae5 01       		.byte	0x1
 1600 0ae6 54       		.byte	0x54
 1601 0ae7 C7000000 		.4byte	0xc7
 1602 0aeb 2E       		.uleb128 0x2e
 1603 0aec 12000000 		.4byte	.LVL4
 1604 0af0 6F0C0000 		.4byte	0xc6f
 1605 0af4 00       		.byte	0
 1606 0af5 00       		.byte	0
 1607 0af6 2F       		.uleb128 0x2f
 1608 0af7 DD060000 		.4byte	.LASF176
 1609 0afb 01       		.byte	0x1
 1610 0afc 25       		.byte	0x25
ARM GAS  /tmp/ccTuq0hs.s 			page 50


 1611 0afd CC000000 		.4byte	0xcc
 1612 0b01 00000000 		.4byte	.LFB229
 1613 0b05 2C000000 		.4byte	.LFE229-.LFB229
 1614 0b09 01       		.uleb128 0x1
 1615 0b0a 9C       		.byte	0x9c
 1616 0b0b C00B0000 		.4byte	0xbc0
 1617 0b0f 2D       		.uleb128 0x2d
 1618 0b10 8D070000 		.4byte	.LASF163
 1619 0b14 01       		.byte	0x1
 1620 0b15 27       		.byte	0x27
 1621 0b16 21090000 		.4byte	0x921
 1622 0b1a 30       		.uleb128 0x30
 1623 0b1b 72657400 		.ascii	"ret\000"
 1624 0b1f 01       		.byte	0x1
 1625 0b20 28       		.byte	0x28
 1626 0b21 DC000000 		.4byte	0xdc
 1627 0b25 06       		.uleb128 0x6
 1628 0b26 50       		.byte	0x50
 1629 0b27 93       		.byte	0x93
 1630 0b28 04       		.uleb128 0x4
 1631 0b29 51       		.byte	0x51
 1632 0b2a 93       		.byte	0x93
 1633 0b2b 04       		.uleb128 0x4
 1634 0b2c 31       		.uleb128 0x31
 1635 0b2d 1A0C0000 		.4byte	0xc1a
 1636 0b31 00000000 		.4byte	.LBB32
 1637 0b35 00000000 		.4byte	.Ldebug_ranges0+0
 1638 0b39 01       		.byte	0x1
 1639 0b3a 27       		.byte	0x27
 1640 0b3b 8C0B0000 		.4byte	0xb8c
 1641 0b3f 32       		.uleb128 0x32
 1642 0b40 00000000 		.4byte	.Ldebug_ranges0+0
 1643 0b44 33       		.uleb128 0x33
 1644 0b45 2A0C0000 		.4byte	0xc2a
 1645 0b49 34       		.uleb128 0x34
 1646 0b4a 360C0000 		.4byte	0xc36
 1647 0b4e 00000000 		.4byte	.LBB34
 1648 0b52 04000000 		.4byte	.LBE34-.LBB34
 1649 0b56 04       		.byte	0x4
 1650 0b57 99       		.byte	0x99
 1651 0b58 6C0B0000 		.4byte	0xb6c
 1652 0b5c 2C       		.uleb128 0x2c
 1653 0b5d 00000000 		.4byte	.LBB35
 1654 0b61 04000000 		.4byte	.LBE35-.LBB35
 1655 0b65 33       		.uleb128 0x33
 1656 0b66 470C0000 		.4byte	0xc47
 1657 0b6a 00       		.byte	0
 1658 0b6b 00       		.byte	0
 1659 0b6c 35       		.uleb128 0x35
 1660 0b6d 540C0000 		.4byte	0xc54
 1661 0b71 04000000 		.4byte	.LBB36
 1662 0b75 02000000 		.4byte	.LBE36-.LBB36
 1663 0b79 04       		.byte	0x4
 1664 0b7a 9A       		.byte	0x9a
 1665 0b7b 35       		.uleb128 0x35
 1666 0b7c 660C0000 		.4byte	0xc66
 1667 0b80 06000000 		.4byte	.LBB38
ARM GAS  /tmp/ccTuq0hs.s 			page 51


 1668 0b84 04000000 		.4byte	.LBE38-.LBB38
 1669 0b88 04       		.byte	0x4
 1670 0b89 9A       		.byte	0x9a
 1671 0b8a 00       		.byte	0
 1672 0b8b 00       		.byte	0
 1673 0b8c 36       		.uleb128 0x36
 1674 0b8d E60B0000 		.4byte	0xbe6
 1675 0b91 16000000 		.4byte	.LBB42
 1676 0b95 0C000000 		.4byte	.LBE42-.LBB42
 1677 0b99 01       		.byte	0x1
 1678 0b9a 29       		.byte	0x29
 1679 0b9b 37       		.uleb128 0x37
 1680 0b9c F20B0000 		.4byte	0xbf2
 1681 0ba0 35       		.uleb128 0x35
 1682 0ba1 660C0000 		.4byte	0xc66
 1683 0ba5 1C000000 		.4byte	.LBB44
 1684 0ba9 04000000 		.4byte	.LBE44-.LBB44
 1685 0bad 04       		.byte	0x4
 1686 0bae A6       		.byte	0xa6
 1687 0baf 35       		.uleb128 0x35
 1688 0bb0 5D0C0000 		.4byte	0xc5d
 1689 0bb4 20000000 		.4byte	.LBB46
 1690 0bb8 02000000 		.4byte	.LBE46-.LBB46
 1691 0bbc 04       		.byte	0x4
 1692 0bbd A6       		.byte	0xa6
 1693 0bbe 00       		.byte	0
 1694 0bbf 00       		.byte	0
 1695 0bc0 38       		.uleb128 0x38
 1696 0bc1 31020000 		.4byte	.LASF177
 1697 0bc5 01       		.byte	0x1
 1698 0bc6 20       		.byte	0x20
 1699 0bc7 B7000000 		.4byte	0xb7
 1700 0bcb 00000000 		.4byte	.LFB228
 1701 0bcf 0C000000 		.4byte	.LFE228-.LFB228
 1702 0bd3 01       		.uleb128 0x1
 1703 0bd4 9C       		.byte	0x9c
 1704 0bd5 39       		.uleb128 0x39
 1705 0bd6 DB020000 		.4byte	.LASF178
 1706 0bda 01       		.byte	0x1
 1707 0bdb 1B       		.byte	0x1b
 1708 0bdc 00000000 		.4byte	.LFB227
 1709 0be0 18000000 		.4byte	.LFE227-.LFB227
 1710 0be4 01       		.uleb128 0x1
 1711 0be5 9C       		.byte	0x9c
 1712 0be6 3A       		.uleb128 0x3a
 1713 0be7 9C010000 		.4byte	.LASF179
 1714 0beb 04       		.byte	0x4
 1715 0bec A3       		.byte	0xa3
 1716 0bed 03       		.byte	0x3
 1717 0bee FE0B0000 		.4byte	0xbfe
 1718 0bf2 3B       		.uleb128 0x3b
 1719 0bf3 8D070000 		.4byte	.LASF163
 1720 0bf7 04       		.byte	0x4
 1721 0bf8 A3       		.byte	0xa3
 1722 0bf9 16090000 		.4byte	0x916
 1723 0bfd 00       		.byte	0
 1724 0bfe 3C       		.uleb128 0x3c
ARM GAS  /tmp/ccTuq0hs.s 			page 52


 1725 0bff 52000000 		.4byte	.LASF164
 1726 0c03 04       		.byte	0x4
 1727 0c04 9E       		.byte	0x9e
 1728 0c05 31090000 		.4byte	0x931
 1729 0c09 03       		.byte	0x3
 1730 0c0a 1A0C0000 		.4byte	0xc1a
 1731 0c0e 3B       		.uleb128 0x3b
 1732 0c0f 8D070000 		.4byte	.LASF163
 1733 0c13 04       		.byte	0x4
 1734 0c14 9E       		.byte	0x9e
 1735 0c15 16090000 		.4byte	0x916
 1736 0c19 00       		.byte	0
 1737 0c1a 3C       		.uleb128 0x3c
 1738 0c1b 41080000 		.4byte	.LASF165
 1739 0c1f 04       		.byte	0x4
 1740 0c20 97       		.byte	0x97
 1741 0c21 16090000 		.4byte	0x916
 1742 0c25 03       		.byte	0x3
 1743 0c26 360C0000 		.4byte	0xc36
 1744 0c2a 2D       		.uleb128 0x2d
 1745 0c2b 8D070000 		.4byte	.LASF163
 1746 0c2f 04       		.byte	0x4
 1747 0c30 99       		.byte	0x99
 1748 0c31 16090000 		.4byte	0x916
 1749 0c35 00       		.byte	0
 1750 0c36 3D       		.uleb128 0x3d
 1751 0c37 78020000 		.4byte	.LASF166
 1752 0c3b 02       		.byte	0x2
 1753 0c3c D201     		.2byte	0x1d2
 1754 0c3e B7000000 		.4byte	0xb7
 1755 0c42 03       		.byte	0x3
 1756 0c43 540C0000 		.4byte	0xc54
 1757 0c47 3E       		.uleb128 0x3e
 1758 0c48 EC030000 		.4byte	.LASF167
 1759 0c4c 02       		.byte	0x2
 1760 0c4d D401     		.2byte	0x1d4
 1761 0c4f B7000000 		.4byte	0xb7
 1762 0c53 00       		.byte	0
 1763 0c54 3F       		.uleb128 0x3f
 1764 0c55 12050000 		.4byte	.LASF168
 1765 0c59 02       		.byte	0x2
 1766 0c5a 4801     		.2byte	0x148
 1767 0c5c 03       		.byte	0x3
 1768 0c5d 3F       		.uleb128 0x3f
 1769 0c5e E0040000 		.4byte	.LASF169
 1770 0c62 02       		.byte	0x2
 1771 0c63 3D01     		.2byte	0x13d
 1772 0c65 03       		.byte	0x3
 1773 0c66 3F       		.uleb128 0x3f
 1774 0c67 66050000 		.4byte	.LASF170
 1775 0c6b 03       		.byte	0x3
 1776 0c6c C601     		.2byte	0x1c6
 1777 0c6e 03       		.byte	0x3
 1778 0c6f 40       		.uleb128 0x40
 1779 0c70 2C030000 		.4byte	.LASF180
 1780 0c74 2C030000 		.4byte	.LASF180
 1781 0c78 0F       		.byte	0xf
ARM GAS  /tmp/ccTuq0hs.s 			page 53


 1782 0c79 36       		.byte	0x36
 1783 0c7a 00       		.byte	0
 1784              		.section	.debug_abbrev,"",%progbits
 1785              	.Ldebug_abbrev0:
 1786 0000 01       		.uleb128 0x1
 1787 0001 11       		.uleb128 0x11
 1788 0002 01       		.byte	0x1
 1789 0003 25       		.uleb128 0x25
 1790 0004 0E       		.uleb128 0xe
 1791 0005 13       		.uleb128 0x13
 1792 0006 0B       		.uleb128 0xb
 1793 0007 03       		.uleb128 0x3
 1794 0008 0E       		.uleb128 0xe
 1795 0009 1B       		.uleb128 0x1b
 1796 000a 0E       		.uleb128 0xe
 1797 000b 55       		.uleb128 0x55
 1798 000c 17       		.uleb128 0x17
 1799 000d 11       		.uleb128 0x11
 1800 000e 01       		.uleb128 0x1
 1801 000f 10       		.uleb128 0x10
 1802 0010 17       		.uleb128 0x17
 1803 0011 00       		.byte	0
 1804 0012 00       		.byte	0
 1805 0013 02       		.uleb128 0x2
 1806 0014 24       		.uleb128 0x24
 1807 0015 00       		.byte	0
 1808 0016 0B       		.uleb128 0xb
 1809 0017 0B       		.uleb128 0xb
 1810 0018 3E       		.uleb128 0x3e
 1811 0019 0B       		.uleb128 0xb
 1812 001a 03       		.uleb128 0x3
 1813 001b 08       		.uleb128 0x8
 1814 001c 00       		.byte	0
 1815 001d 00       		.byte	0
 1816 001e 03       		.uleb128 0x3
 1817 001f 24       		.uleb128 0x24
 1818 0020 00       		.byte	0
 1819 0021 0B       		.uleb128 0xb
 1820 0022 0B       		.uleb128 0xb
 1821 0023 3E       		.uleb128 0x3e
 1822 0024 0B       		.uleb128 0xb
 1823 0025 03       		.uleb128 0x3
 1824 0026 0E       		.uleb128 0xe
 1825 0027 00       		.byte	0
 1826 0028 00       		.byte	0
 1827 0029 04       		.uleb128 0x4
 1828 002a 16       		.uleb128 0x16
 1829 002b 00       		.byte	0
 1830 002c 03       		.uleb128 0x3
 1831 002d 0E       		.uleb128 0xe
 1832 002e 3A       		.uleb128 0x3a
 1833 002f 0B       		.uleb128 0xb
 1834 0030 3B       		.uleb128 0x3b
 1835 0031 0B       		.uleb128 0xb
 1836 0032 49       		.uleb128 0x49
 1837 0033 13       		.uleb128 0x13
 1838 0034 00       		.byte	0
ARM GAS  /tmp/ccTuq0hs.s 			page 54


 1839 0035 00       		.byte	0
 1840 0036 05       		.uleb128 0x5
 1841 0037 26       		.uleb128 0x26
 1842 0038 00       		.byte	0
 1843 0039 49       		.uleb128 0x49
 1844 003a 13       		.uleb128 0x13
 1845 003b 00       		.byte	0
 1846 003c 00       		.byte	0
 1847 003d 06       		.uleb128 0x6
 1848 003e 35       		.uleb128 0x35
 1849 003f 00       		.byte	0
 1850 0040 49       		.uleb128 0x49
 1851 0041 13       		.uleb128 0x13
 1852 0042 00       		.byte	0
 1853 0043 00       		.byte	0
 1854 0044 07       		.uleb128 0x7
 1855 0045 0F       		.uleb128 0xf
 1856 0046 00       		.byte	0
 1857 0047 0B       		.uleb128 0xb
 1858 0048 0B       		.uleb128 0xb
 1859 0049 00       		.byte	0
 1860 004a 00       		.byte	0
 1861 004b 08       		.uleb128 0x8
 1862 004c 34       		.uleb128 0x34
 1863 004d 00       		.byte	0
 1864 004e 03       		.uleb128 0x3
 1865 004f 0E       		.uleb128 0xe
 1866 0050 3A       		.uleb128 0x3a
 1867 0051 0B       		.uleb128 0xb
 1868 0052 3B       		.uleb128 0x3b
 1869 0053 05       		.uleb128 0x5
 1870 0054 49       		.uleb128 0x49
 1871 0055 13       		.uleb128 0x13
 1872 0056 3F       		.uleb128 0x3f
 1873 0057 19       		.uleb128 0x19
 1874 0058 3C       		.uleb128 0x3c
 1875 0059 19       		.uleb128 0x19
 1876 005a 00       		.byte	0
 1877 005b 00       		.byte	0
 1878 005c 09       		.uleb128 0x9
 1879 005d 34       		.uleb128 0x34
 1880 005e 00       		.byte	0
 1881 005f 03       		.uleb128 0x3
 1882 0060 0E       		.uleb128 0xe
 1883 0061 3A       		.uleb128 0x3a
 1884 0062 0B       		.uleb128 0xb
 1885 0063 3B       		.uleb128 0x3b
 1886 0064 0B       		.uleb128 0xb
 1887 0065 49       		.uleb128 0x49
 1888 0066 13       		.uleb128 0x13
 1889 0067 3F       		.uleb128 0x3f
 1890 0068 19       		.uleb128 0x19
 1891 0069 3C       		.uleb128 0x3c
 1892 006a 19       		.uleb128 0x19
 1893 006b 00       		.byte	0
 1894 006c 00       		.byte	0
 1895 006d 0A       		.uleb128 0xa
ARM GAS  /tmp/ccTuq0hs.s 			page 55


 1896 006e 16       		.uleb128 0x16
 1897 006f 00       		.byte	0
 1898 0070 03       		.uleb128 0x3
 1899 0071 0E       		.uleb128 0xe
 1900 0072 3A       		.uleb128 0x3a
 1901 0073 0B       		.uleb128 0xb
 1902 0074 3B       		.uleb128 0x3b
 1903 0075 05       		.uleb128 0x5
 1904 0076 49       		.uleb128 0x49
 1905 0077 13       		.uleb128 0x13
 1906 0078 00       		.byte	0
 1907 0079 00       		.byte	0
 1908 007a 0B       		.uleb128 0xb
 1909 007b 17       		.uleb128 0x17
 1910 007c 01       		.byte	0x1
 1911 007d 0B       		.uleb128 0xb
 1912 007e 0B       		.uleb128 0xb
 1913 007f 3A       		.uleb128 0x3a
 1914 0080 0B       		.uleb128 0xb
 1915 0081 3B       		.uleb128 0x3b
 1916 0082 0B       		.uleb128 0xb
 1917 0083 01       		.uleb128 0x1
 1918 0084 13       		.uleb128 0x13
 1919 0085 00       		.byte	0
 1920 0086 00       		.byte	0
 1921 0087 0C       		.uleb128 0xc
 1922 0088 0D       		.uleb128 0xd
 1923 0089 00       		.byte	0
 1924 008a 03       		.uleb128 0x3
 1925 008b 0E       		.uleb128 0xe
 1926 008c 3A       		.uleb128 0x3a
 1927 008d 0B       		.uleb128 0xb
 1928 008e 3B       		.uleb128 0x3b
 1929 008f 0B       		.uleb128 0xb
 1930 0090 49       		.uleb128 0x49
 1931 0091 13       		.uleb128 0x13
 1932 0092 00       		.byte	0
 1933 0093 00       		.byte	0
 1934 0094 0D       		.uleb128 0xd
 1935 0095 01       		.uleb128 0x1
 1936 0096 01       		.byte	0x1
 1937 0097 49       		.uleb128 0x49
 1938 0098 13       		.uleb128 0x13
 1939 0099 01       		.uleb128 0x1
 1940 009a 13       		.uleb128 0x13
 1941 009b 00       		.byte	0
 1942 009c 00       		.byte	0
 1943 009d 0E       		.uleb128 0xe
 1944 009e 21       		.uleb128 0x21
 1945 009f 00       		.byte	0
 1946 00a0 49       		.uleb128 0x49
 1947 00a1 13       		.uleb128 0x13
 1948 00a2 2F       		.uleb128 0x2f
 1949 00a3 0B       		.uleb128 0xb
 1950 00a4 00       		.byte	0
 1951 00a5 00       		.byte	0
 1952 00a6 0F       		.uleb128 0xf
ARM GAS  /tmp/ccTuq0hs.s 			page 56


 1953 00a7 13       		.uleb128 0x13
 1954 00a8 01       		.byte	0x1
 1955 00a9 0B       		.uleb128 0xb
 1956 00aa 0B       		.uleb128 0xb
 1957 00ab 3A       		.uleb128 0x3a
 1958 00ac 0B       		.uleb128 0xb
 1959 00ad 3B       		.uleb128 0x3b
 1960 00ae 0B       		.uleb128 0xb
 1961 00af 01       		.uleb128 0x1
 1962 00b0 13       		.uleb128 0x13
 1963 00b1 00       		.byte	0
 1964 00b2 00       		.byte	0
 1965 00b3 10       		.uleb128 0x10
 1966 00b4 0D       		.uleb128 0xd
 1967 00b5 00       		.byte	0
 1968 00b6 03       		.uleb128 0x3
 1969 00b7 0E       		.uleb128 0xe
 1970 00b8 3A       		.uleb128 0x3a
 1971 00b9 0B       		.uleb128 0xb
 1972 00ba 3B       		.uleb128 0x3b
 1973 00bb 0B       		.uleb128 0xb
 1974 00bc 49       		.uleb128 0x49
 1975 00bd 13       		.uleb128 0x13
 1976 00be 38       		.uleb128 0x38
 1977 00bf 0B       		.uleb128 0xb
 1978 00c0 00       		.byte	0
 1979 00c1 00       		.byte	0
 1980 00c2 11       		.uleb128 0x11
 1981 00c3 13       		.uleb128 0x13
 1982 00c4 01       		.byte	0x1
 1983 00c5 03       		.uleb128 0x3
 1984 00c6 0E       		.uleb128 0xe
 1985 00c7 0B       		.uleb128 0xb
 1986 00c8 0B       		.uleb128 0xb
 1987 00c9 3A       		.uleb128 0x3a
 1988 00ca 0B       		.uleb128 0xb
 1989 00cb 3B       		.uleb128 0x3b
 1990 00cc 0B       		.uleb128 0xb
 1991 00cd 01       		.uleb128 0x1
 1992 00ce 13       		.uleb128 0x13
 1993 00cf 00       		.byte	0
 1994 00d0 00       		.byte	0
 1995 00d1 12       		.uleb128 0x12
 1996 00d2 0D       		.uleb128 0xd
 1997 00d3 00       		.byte	0
 1998 00d4 03       		.uleb128 0x3
 1999 00d5 08       		.uleb128 0x8
 2000 00d6 3A       		.uleb128 0x3a
 2001 00d7 0B       		.uleb128 0xb
 2002 00d8 3B       		.uleb128 0x3b
 2003 00d9 0B       		.uleb128 0xb
 2004 00da 49       		.uleb128 0x49
 2005 00db 13       		.uleb128 0x13
 2006 00dc 38       		.uleb128 0x38
 2007 00dd 0B       		.uleb128 0xb
 2008 00de 00       		.byte	0
 2009 00df 00       		.byte	0
ARM GAS  /tmp/ccTuq0hs.s 			page 57


 2010 00e0 13       		.uleb128 0x13
 2011 00e1 0F       		.uleb128 0xf
 2012 00e2 00       		.byte	0
 2013 00e3 0B       		.uleb128 0xb
 2014 00e4 0B       		.uleb128 0xb
 2015 00e5 49       		.uleb128 0x49
 2016 00e6 13       		.uleb128 0x13
 2017 00e7 00       		.byte	0
 2018 00e8 00       		.byte	0
 2019 00e9 14       		.uleb128 0x14
 2020 00ea 13       		.uleb128 0x13
 2021 00eb 01       		.byte	0x1
 2022 00ec 03       		.uleb128 0x3
 2023 00ed 0E       		.uleb128 0xe
 2024 00ee 0B       		.uleb128 0xb
 2025 00ef 05       		.uleb128 0x5
 2026 00f0 3A       		.uleb128 0x3a
 2027 00f1 0B       		.uleb128 0xb
 2028 00f2 3B       		.uleb128 0x3b
 2029 00f3 0B       		.uleb128 0xb
 2030 00f4 01       		.uleb128 0x1
 2031 00f5 13       		.uleb128 0x13
 2032 00f6 00       		.byte	0
 2033 00f7 00       		.byte	0
 2034 00f8 15       		.uleb128 0x15
 2035 00f9 0D       		.uleb128 0xd
 2036 00fa 00       		.byte	0
 2037 00fb 03       		.uleb128 0x3
 2038 00fc 0E       		.uleb128 0xe
 2039 00fd 3A       		.uleb128 0x3a
 2040 00fe 0B       		.uleb128 0xb
 2041 00ff 3B       		.uleb128 0x3b
 2042 0100 0B       		.uleb128 0xb
 2043 0101 49       		.uleb128 0x49
 2044 0102 13       		.uleb128 0x13
 2045 0103 38       		.uleb128 0x38
 2046 0104 05       		.uleb128 0x5
 2047 0105 00       		.byte	0
 2048 0106 00       		.byte	0
 2049 0107 16       		.uleb128 0x16
 2050 0108 15       		.uleb128 0x15
 2051 0109 00       		.byte	0
 2052 010a 27       		.uleb128 0x27
 2053 010b 19       		.uleb128 0x19
 2054 010c 00       		.byte	0
 2055 010d 00       		.byte	0
 2056 010e 17       		.uleb128 0x17
 2057 010f 15       		.uleb128 0x15
 2058 0110 01       		.byte	0x1
 2059 0111 27       		.uleb128 0x27
 2060 0112 19       		.uleb128 0x19
 2061 0113 49       		.uleb128 0x49
 2062 0114 13       		.uleb128 0x13
 2063 0115 01       		.uleb128 0x1
 2064 0116 13       		.uleb128 0x13
 2065 0117 00       		.byte	0
 2066 0118 00       		.byte	0
ARM GAS  /tmp/ccTuq0hs.s 			page 58


 2067 0119 18       		.uleb128 0x18
 2068 011a 05       		.uleb128 0x5
 2069 011b 00       		.byte	0
 2070 011c 49       		.uleb128 0x49
 2071 011d 13       		.uleb128 0x13
 2072 011e 00       		.byte	0
 2073 011f 00       		.byte	0
 2074 0120 19       		.uleb128 0x19
 2075 0121 13       		.uleb128 0x13
 2076 0122 01       		.byte	0x1
 2077 0123 03       		.uleb128 0x3
 2078 0124 0E       		.uleb128 0xe
 2079 0125 0B       		.uleb128 0xb
 2080 0126 05       		.uleb128 0x5
 2081 0127 3A       		.uleb128 0x3a
 2082 0128 0B       		.uleb128 0xb
 2083 0129 3B       		.uleb128 0x3b
 2084 012a 05       		.uleb128 0x5
 2085 012b 01       		.uleb128 0x1
 2086 012c 13       		.uleb128 0x13
 2087 012d 00       		.byte	0
 2088 012e 00       		.byte	0
 2089 012f 1A       		.uleb128 0x1a
 2090 0130 0D       		.uleb128 0xd
 2091 0131 00       		.byte	0
 2092 0132 03       		.uleb128 0x3
 2093 0133 0E       		.uleb128 0xe
 2094 0134 3A       		.uleb128 0x3a
 2095 0135 0B       		.uleb128 0xb
 2096 0136 3B       		.uleb128 0x3b
 2097 0137 05       		.uleb128 0x5
 2098 0138 49       		.uleb128 0x49
 2099 0139 13       		.uleb128 0x13
 2100 013a 38       		.uleb128 0x38
 2101 013b 0B       		.uleb128 0xb
 2102 013c 00       		.byte	0
 2103 013d 00       		.byte	0
 2104 013e 1B       		.uleb128 0x1b
 2105 013f 0D       		.uleb128 0xd
 2106 0140 00       		.byte	0
 2107 0141 03       		.uleb128 0x3
 2108 0142 0E       		.uleb128 0xe
 2109 0143 3A       		.uleb128 0x3a
 2110 0144 0B       		.uleb128 0xb
 2111 0145 3B       		.uleb128 0x3b
 2112 0146 05       		.uleb128 0x5
 2113 0147 49       		.uleb128 0x49
 2114 0148 13       		.uleb128 0x13
 2115 0149 38       		.uleb128 0x38
 2116 014a 05       		.uleb128 0x5
 2117 014b 00       		.byte	0
 2118 014c 00       		.byte	0
 2119 014d 1C       		.uleb128 0x1c
 2120 014e 13       		.uleb128 0x13
 2121 014f 01       		.byte	0x1
 2122 0150 03       		.uleb128 0x3
 2123 0151 0E       		.uleb128 0xe
ARM GAS  /tmp/ccTuq0hs.s 			page 59


 2124 0152 0B       		.uleb128 0xb
 2125 0153 0B       		.uleb128 0xb
 2126 0154 3A       		.uleb128 0x3a
 2127 0155 0B       		.uleb128 0xb
 2128 0156 3B       		.uleb128 0x3b
 2129 0157 05       		.uleb128 0x5
 2130 0158 01       		.uleb128 0x1
 2131 0159 13       		.uleb128 0x13
 2132 015a 00       		.byte	0
 2133 015b 00       		.byte	0
 2134 015c 1D       		.uleb128 0x1d
 2135 015d 13       		.uleb128 0x13
 2136 015e 01       		.byte	0x1
 2137 015f 0B       		.uleb128 0xb
 2138 0160 0B       		.uleb128 0xb
 2139 0161 3A       		.uleb128 0x3a
 2140 0162 0B       		.uleb128 0xb
 2141 0163 3B       		.uleb128 0x3b
 2142 0164 05       		.uleb128 0x5
 2143 0165 01       		.uleb128 0x1
 2144 0166 13       		.uleb128 0x13
 2145 0167 00       		.byte	0
 2146 0168 00       		.byte	0
 2147 0169 1E       		.uleb128 0x1e
 2148 016a 17       		.uleb128 0x17
 2149 016b 01       		.byte	0x1
 2150 016c 0B       		.uleb128 0xb
 2151 016d 0B       		.uleb128 0xb
 2152 016e 3A       		.uleb128 0x3a
 2153 016f 0B       		.uleb128 0xb
 2154 0170 3B       		.uleb128 0x3b
 2155 0171 05       		.uleb128 0x5
 2156 0172 01       		.uleb128 0x1
 2157 0173 13       		.uleb128 0x13
 2158 0174 00       		.byte	0
 2159 0175 00       		.byte	0
 2160 0176 1F       		.uleb128 0x1f
 2161 0177 0D       		.uleb128 0xd
 2162 0178 00       		.byte	0
 2163 0179 03       		.uleb128 0x3
 2164 017a 0E       		.uleb128 0xe
 2165 017b 3A       		.uleb128 0x3a
 2166 017c 0B       		.uleb128 0xb
 2167 017d 3B       		.uleb128 0x3b
 2168 017e 05       		.uleb128 0x5
 2169 017f 49       		.uleb128 0x49
 2170 0180 13       		.uleb128 0x13
 2171 0181 00       		.byte	0
 2172 0182 00       		.byte	0
 2173 0183 20       		.uleb128 0x20
 2174 0184 15       		.uleb128 0x15
 2175 0185 01       		.byte	0x1
 2176 0186 27       		.uleb128 0x27
 2177 0187 19       		.uleb128 0x19
 2178 0188 01       		.uleb128 0x1
 2179 0189 13       		.uleb128 0x13
 2180 018a 00       		.byte	0
ARM GAS  /tmp/ccTuq0hs.s 			page 60


 2181 018b 00       		.byte	0
 2182 018c 21       		.uleb128 0x21
 2183 018d 34       		.uleb128 0x34
 2184 018e 00       		.byte	0
 2185 018f 03       		.uleb128 0x3
 2186 0190 0E       		.uleb128 0xe
 2187 0191 3A       		.uleb128 0x3a
 2188 0192 0B       		.uleb128 0xb
 2189 0193 3B       		.uleb128 0x3b
 2190 0194 0B       		.uleb128 0xb
 2191 0195 49       		.uleb128 0x49
 2192 0196 13       		.uleb128 0x13
 2193 0197 02       		.uleb128 0x2
 2194 0198 18       		.uleb128 0x18
 2195 0199 00       		.byte	0
 2196 019a 00       		.byte	0
 2197 019b 22       		.uleb128 0x22
 2198 019c 04       		.uleb128 0x4
 2199 019d 01       		.byte	0x1
 2200 019e 03       		.uleb128 0x3
 2201 019f 0E       		.uleb128 0xe
 2202 01a0 0B       		.uleb128 0xb
 2203 01a1 0B       		.uleb128 0xb
 2204 01a2 49       		.uleb128 0x49
 2205 01a3 13       		.uleb128 0x13
 2206 01a4 3A       		.uleb128 0x3a
 2207 01a5 0B       		.uleb128 0xb
 2208 01a6 3B       		.uleb128 0x3b
 2209 01a7 05       		.uleb128 0x5
 2210 01a8 01       		.uleb128 0x1
 2211 01a9 13       		.uleb128 0x13
 2212 01aa 00       		.byte	0
 2213 01ab 00       		.byte	0
 2214 01ac 23       		.uleb128 0x23
 2215 01ad 28       		.uleb128 0x28
 2216 01ae 00       		.byte	0
 2217 01af 03       		.uleb128 0x3
 2218 01b0 0E       		.uleb128 0xe
 2219 01b1 1C       		.uleb128 0x1c
 2220 01b2 0D       		.uleb128 0xd
 2221 01b3 00       		.byte	0
 2222 01b4 00       		.byte	0
 2223 01b5 24       		.uleb128 0x24
 2224 01b6 28       		.uleb128 0x28
 2225 01b7 00       		.byte	0
 2226 01b8 03       		.uleb128 0x3
 2227 01b9 0E       		.uleb128 0xe
 2228 01ba 1C       		.uleb128 0x1c
 2229 01bb 0B       		.uleb128 0xb
 2230 01bc 00       		.byte	0
 2231 01bd 00       		.byte	0
 2232 01be 25       		.uleb128 0x25
 2233 01bf 16       		.uleb128 0x16
 2234 01c0 00       		.byte	0
 2235 01c1 03       		.uleb128 0x3
 2236 01c2 08       		.uleb128 0x8
 2237 01c3 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccTuq0hs.s 			page 61


 2238 01c4 0B       		.uleb128 0xb
 2239 01c5 3B       		.uleb128 0x3b
 2240 01c6 0B       		.uleb128 0xb
 2241 01c7 49       		.uleb128 0x49
 2242 01c8 13       		.uleb128 0x13
 2243 01c9 00       		.byte	0
 2244 01ca 00       		.byte	0
 2245 01cb 26       		.uleb128 0x26
 2246 01cc 34       		.uleb128 0x34
 2247 01cd 00       		.byte	0
 2248 01ce 03       		.uleb128 0x3
 2249 01cf 0E       		.uleb128 0xe
 2250 01d0 3A       		.uleb128 0x3a
 2251 01d1 0B       		.uleb128 0xb
 2252 01d2 3B       		.uleb128 0x3b
 2253 01d3 0B       		.uleb128 0xb
 2254 01d4 49       		.uleb128 0x49
 2255 01d5 13       		.uleb128 0x13
 2256 01d6 1C       		.uleb128 0x1c
 2257 01d7 0D       		.uleb128 0xd
 2258 01d8 00       		.byte	0
 2259 01d9 00       		.byte	0
 2260 01da 27       		.uleb128 0x27
 2261 01db 34       		.uleb128 0x34
 2262 01dc 00       		.byte	0
 2263 01dd 03       		.uleb128 0x3
 2264 01de 0E       		.uleb128 0xe
 2265 01df 3A       		.uleb128 0x3a
 2266 01e0 0B       		.uleb128 0xb
 2267 01e1 3B       		.uleb128 0x3b
 2268 01e2 0B       		.uleb128 0xb
 2269 01e3 49       		.uleb128 0x49
 2270 01e4 13       		.uleb128 0x13
 2271 01e5 1C       		.uleb128 0x1c
 2272 01e6 0B       		.uleb128 0xb
 2273 01e7 00       		.byte	0
 2274 01e8 00       		.byte	0
 2275 01e9 28       		.uleb128 0x28
 2276 01ea 34       		.uleb128 0x34
 2277 01eb 00       		.byte	0
 2278 01ec 03       		.uleb128 0x3
 2279 01ed 0E       		.uleb128 0xe
 2280 01ee 3A       		.uleb128 0x3a
 2281 01ef 0B       		.uleb128 0xb
 2282 01f0 3B       		.uleb128 0x3b
 2283 01f1 0B       		.uleb128 0xb
 2284 01f2 49       		.uleb128 0x49
 2285 01f3 13       		.uleb128 0x13
 2286 01f4 1C       		.uleb128 0x1c
 2287 01f5 06       		.uleb128 0x6
 2288 01f6 00       		.byte	0
 2289 01f7 00       		.byte	0
 2290 01f8 29       		.uleb128 0x29
 2291 01f9 34       		.uleb128 0x34
 2292 01fa 00       		.byte	0
 2293 01fb 03       		.uleb128 0x3
 2294 01fc 0E       		.uleb128 0xe
ARM GAS  /tmp/ccTuq0hs.s 			page 62


 2295 01fd 3A       		.uleb128 0x3a
 2296 01fe 0B       		.uleb128 0xb
 2297 01ff 3B       		.uleb128 0x3b
 2298 0200 0B       		.uleb128 0xb
 2299 0201 49       		.uleb128 0x49
 2300 0202 13       		.uleb128 0x13
 2301 0203 1C       		.uleb128 0x1c
 2302 0204 05       		.uleb128 0x5
 2303 0205 00       		.byte	0
 2304 0206 00       		.byte	0
 2305 0207 2A       		.uleb128 0x2a
 2306 0208 2E       		.uleb128 0x2e
 2307 0209 01       		.byte	0x1
 2308 020a 3F       		.uleb128 0x3f
 2309 020b 19       		.uleb128 0x19
 2310 020c 03       		.uleb128 0x3
 2311 020d 0E       		.uleb128 0xe
 2312 020e 3A       		.uleb128 0x3a
 2313 020f 0B       		.uleb128 0xb
 2314 0210 3B       		.uleb128 0x3b
 2315 0211 0B       		.uleb128 0xb
 2316 0212 27       		.uleb128 0x27
 2317 0213 19       		.uleb128 0x19
 2318 0214 11       		.uleb128 0x11
 2319 0215 01       		.uleb128 0x1
 2320 0216 12       		.uleb128 0x12
 2321 0217 06       		.uleb128 0x6
 2322 0218 40       		.uleb128 0x40
 2323 0219 18       		.uleb128 0x18
 2324 021a 9742     		.uleb128 0x2117
 2325 021c 19       		.uleb128 0x19
 2326 021d 01       		.uleb128 0x1
 2327 021e 13       		.uleb128 0x13
 2328 021f 00       		.byte	0
 2329 0220 00       		.byte	0
 2330 0221 2B       		.uleb128 0x2b
 2331 0222 05       		.uleb128 0x5
 2332 0223 00       		.byte	0
 2333 0224 03       		.uleb128 0x3
 2334 0225 08       		.uleb128 0x8
 2335 0226 3A       		.uleb128 0x3a
 2336 0227 0B       		.uleb128 0xb
 2337 0228 3B       		.uleb128 0x3b
 2338 0229 0B       		.uleb128 0xb
 2339 022a 49       		.uleb128 0x49
 2340 022b 13       		.uleb128 0x13
 2341 022c 02       		.uleb128 0x2
 2342 022d 17       		.uleb128 0x17
 2343 022e 00       		.byte	0
 2344 022f 00       		.byte	0
 2345 0230 2C       		.uleb128 0x2c
 2346 0231 0B       		.uleb128 0xb
 2347 0232 01       		.byte	0x1
 2348 0233 11       		.uleb128 0x11
 2349 0234 01       		.uleb128 0x1
 2350 0235 12       		.uleb128 0x12
 2351 0236 06       		.uleb128 0x6
ARM GAS  /tmp/ccTuq0hs.s 			page 63


 2352 0237 00       		.byte	0
 2353 0238 00       		.byte	0
 2354 0239 2D       		.uleb128 0x2d
 2355 023a 34       		.uleb128 0x34
 2356 023b 00       		.byte	0
 2357 023c 03       		.uleb128 0x3
 2358 023d 0E       		.uleb128 0xe
 2359 023e 3A       		.uleb128 0x3a
 2360 023f 0B       		.uleb128 0xb
 2361 0240 3B       		.uleb128 0x3b
 2362 0241 0B       		.uleb128 0xb
 2363 0242 49       		.uleb128 0x49
 2364 0243 13       		.uleb128 0x13
 2365 0244 00       		.byte	0
 2366 0245 00       		.byte	0
 2367 0246 2E       		.uleb128 0x2e
 2368 0247 898201   		.uleb128 0x4109
 2369 024a 00       		.byte	0
 2370 024b 11       		.uleb128 0x11
 2371 024c 01       		.uleb128 0x1
 2372 024d 31       		.uleb128 0x31
 2373 024e 13       		.uleb128 0x13
 2374 024f 00       		.byte	0
 2375 0250 00       		.byte	0
 2376 0251 2F       		.uleb128 0x2f
 2377 0252 2E       		.uleb128 0x2e
 2378 0253 01       		.byte	0x1
 2379 0254 3F       		.uleb128 0x3f
 2380 0255 19       		.uleb128 0x19
 2381 0256 03       		.uleb128 0x3
 2382 0257 0E       		.uleb128 0xe
 2383 0258 3A       		.uleb128 0x3a
 2384 0259 0B       		.uleb128 0xb
 2385 025a 3B       		.uleb128 0x3b
 2386 025b 0B       		.uleb128 0xb
 2387 025c 27       		.uleb128 0x27
 2388 025d 19       		.uleb128 0x19
 2389 025e 49       		.uleb128 0x49
 2390 025f 13       		.uleb128 0x13
 2391 0260 11       		.uleb128 0x11
 2392 0261 01       		.uleb128 0x1
 2393 0262 12       		.uleb128 0x12
 2394 0263 06       		.uleb128 0x6
 2395 0264 40       		.uleb128 0x40
 2396 0265 18       		.uleb128 0x18
 2397 0266 9742     		.uleb128 0x2117
 2398 0268 19       		.uleb128 0x19
 2399 0269 01       		.uleb128 0x1
 2400 026a 13       		.uleb128 0x13
 2401 026b 00       		.byte	0
 2402 026c 00       		.byte	0
 2403 026d 30       		.uleb128 0x30
 2404 026e 34       		.uleb128 0x34
 2405 026f 00       		.byte	0
 2406 0270 03       		.uleb128 0x3
 2407 0271 08       		.uleb128 0x8
 2408 0272 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccTuq0hs.s 			page 64


 2409 0273 0B       		.uleb128 0xb
 2410 0274 3B       		.uleb128 0x3b
 2411 0275 0B       		.uleb128 0xb
 2412 0276 49       		.uleb128 0x49
 2413 0277 13       		.uleb128 0x13
 2414 0278 02       		.uleb128 0x2
 2415 0279 18       		.uleb128 0x18
 2416 027a 00       		.byte	0
 2417 027b 00       		.byte	0
 2418 027c 31       		.uleb128 0x31
 2419 027d 1D       		.uleb128 0x1d
 2420 027e 01       		.byte	0x1
 2421 027f 31       		.uleb128 0x31
 2422 0280 13       		.uleb128 0x13
 2423 0281 52       		.uleb128 0x52
 2424 0282 01       		.uleb128 0x1
 2425 0283 55       		.uleb128 0x55
 2426 0284 17       		.uleb128 0x17
 2427 0285 58       		.uleb128 0x58
 2428 0286 0B       		.uleb128 0xb
 2429 0287 59       		.uleb128 0x59
 2430 0288 0B       		.uleb128 0xb
 2431 0289 01       		.uleb128 0x1
 2432 028a 13       		.uleb128 0x13
 2433 028b 00       		.byte	0
 2434 028c 00       		.byte	0
 2435 028d 32       		.uleb128 0x32
 2436 028e 0B       		.uleb128 0xb
 2437 028f 01       		.byte	0x1
 2438 0290 55       		.uleb128 0x55
 2439 0291 17       		.uleb128 0x17
 2440 0292 00       		.byte	0
 2441 0293 00       		.byte	0
 2442 0294 33       		.uleb128 0x33
 2443 0295 34       		.uleb128 0x34
 2444 0296 00       		.byte	0
 2445 0297 31       		.uleb128 0x31
 2446 0298 13       		.uleb128 0x13
 2447 0299 00       		.byte	0
 2448 029a 00       		.byte	0
 2449 029b 34       		.uleb128 0x34
 2450 029c 1D       		.uleb128 0x1d
 2451 029d 01       		.byte	0x1
 2452 029e 31       		.uleb128 0x31
 2453 029f 13       		.uleb128 0x13
 2454 02a0 11       		.uleb128 0x11
 2455 02a1 01       		.uleb128 0x1
 2456 02a2 12       		.uleb128 0x12
 2457 02a3 06       		.uleb128 0x6
 2458 02a4 58       		.uleb128 0x58
 2459 02a5 0B       		.uleb128 0xb
 2460 02a6 59       		.uleb128 0x59
 2461 02a7 0B       		.uleb128 0xb
 2462 02a8 01       		.uleb128 0x1
 2463 02a9 13       		.uleb128 0x13
 2464 02aa 00       		.byte	0
 2465 02ab 00       		.byte	0
ARM GAS  /tmp/ccTuq0hs.s 			page 65


 2466 02ac 35       		.uleb128 0x35
 2467 02ad 1D       		.uleb128 0x1d
 2468 02ae 00       		.byte	0
 2469 02af 31       		.uleb128 0x31
 2470 02b0 13       		.uleb128 0x13
 2471 02b1 11       		.uleb128 0x11
 2472 02b2 01       		.uleb128 0x1
 2473 02b3 12       		.uleb128 0x12
 2474 02b4 06       		.uleb128 0x6
 2475 02b5 58       		.uleb128 0x58
 2476 02b6 0B       		.uleb128 0xb
 2477 02b7 59       		.uleb128 0x59
 2478 02b8 0B       		.uleb128 0xb
 2479 02b9 00       		.byte	0
 2480 02ba 00       		.byte	0
 2481 02bb 36       		.uleb128 0x36
 2482 02bc 1D       		.uleb128 0x1d
 2483 02bd 01       		.byte	0x1
 2484 02be 31       		.uleb128 0x31
 2485 02bf 13       		.uleb128 0x13
 2486 02c0 11       		.uleb128 0x11
 2487 02c1 01       		.uleb128 0x1
 2488 02c2 12       		.uleb128 0x12
 2489 02c3 06       		.uleb128 0x6
 2490 02c4 58       		.uleb128 0x58
 2491 02c5 0B       		.uleb128 0xb
 2492 02c6 59       		.uleb128 0x59
 2493 02c7 0B       		.uleb128 0xb
 2494 02c8 00       		.byte	0
 2495 02c9 00       		.byte	0
 2496 02ca 37       		.uleb128 0x37
 2497 02cb 05       		.uleb128 0x5
 2498 02cc 00       		.byte	0
 2499 02cd 31       		.uleb128 0x31
 2500 02ce 13       		.uleb128 0x13
 2501 02cf 00       		.byte	0
 2502 02d0 00       		.byte	0
 2503 02d1 38       		.uleb128 0x38
 2504 02d2 2E       		.uleb128 0x2e
 2505 02d3 00       		.byte	0
 2506 02d4 3F       		.uleb128 0x3f
 2507 02d5 19       		.uleb128 0x19
 2508 02d6 03       		.uleb128 0x3
 2509 02d7 0E       		.uleb128 0xe
 2510 02d8 3A       		.uleb128 0x3a
 2511 02d9 0B       		.uleb128 0xb
 2512 02da 3B       		.uleb128 0x3b
 2513 02db 0B       		.uleb128 0xb
 2514 02dc 27       		.uleb128 0x27
 2515 02dd 19       		.uleb128 0x19
 2516 02de 49       		.uleb128 0x49
 2517 02df 13       		.uleb128 0x13
 2518 02e0 11       		.uleb128 0x11
 2519 02e1 01       		.uleb128 0x1
 2520 02e2 12       		.uleb128 0x12
 2521 02e3 06       		.uleb128 0x6
 2522 02e4 40       		.uleb128 0x40
ARM GAS  /tmp/ccTuq0hs.s 			page 66


 2523 02e5 18       		.uleb128 0x18
 2524 02e6 9742     		.uleb128 0x2117
 2525 02e8 19       		.uleb128 0x19
 2526 02e9 00       		.byte	0
 2527 02ea 00       		.byte	0
 2528 02eb 39       		.uleb128 0x39
 2529 02ec 2E       		.uleb128 0x2e
 2530 02ed 00       		.byte	0
 2531 02ee 3F       		.uleb128 0x3f
 2532 02ef 19       		.uleb128 0x19
 2533 02f0 03       		.uleb128 0x3
 2534 02f1 0E       		.uleb128 0xe
 2535 02f2 3A       		.uleb128 0x3a
 2536 02f3 0B       		.uleb128 0xb
 2537 02f4 3B       		.uleb128 0x3b
 2538 02f5 0B       		.uleb128 0xb
 2539 02f6 27       		.uleb128 0x27
 2540 02f7 19       		.uleb128 0x19
 2541 02f8 11       		.uleb128 0x11
 2542 02f9 01       		.uleb128 0x1
 2543 02fa 12       		.uleb128 0x12
 2544 02fb 06       		.uleb128 0x6
 2545 02fc 40       		.uleb128 0x40
 2546 02fd 18       		.uleb128 0x18
 2547 02fe 9742     		.uleb128 0x2117
 2548 0300 19       		.uleb128 0x19
 2549 0301 00       		.byte	0
 2550 0302 00       		.byte	0
 2551 0303 3A       		.uleb128 0x3a
 2552 0304 2E       		.uleb128 0x2e
 2553 0305 01       		.byte	0x1
 2554 0306 03       		.uleb128 0x3
 2555 0307 0E       		.uleb128 0xe
 2556 0308 3A       		.uleb128 0x3a
 2557 0309 0B       		.uleb128 0xb
 2558 030a 3B       		.uleb128 0x3b
 2559 030b 0B       		.uleb128 0xb
 2560 030c 27       		.uleb128 0x27
 2561 030d 19       		.uleb128 0x19
 2562 030e 20       		.uleb128 0x20
 2563 030f 0B       		.uleb128 0xb
 2564 0310 01       		.uleb128 0x1
 2565 0311 13       		.uleb128 0x13
 2566 0312 00       		.byte	0
 2567 0313 00       		.byte	0
 2568 0314 3B       		.uleb128 0x3b
 2569 0315 05       		.uleb128 0x5
 2570 0316 00       		.byte	0
 2571 0317 03       		.uleb128 0x3
 2572 0318 0E       		.uleb128 0xe
 2573 0319 3A       		.uleb128 0x3a
 2574 031a 0B       		.uleb128 0xb
 2575 031b 3B       		.uleb128 0x3b
 2576 031c 0B       		.uleb128 0xb
 2577 031d 49       		.uleb128 0x49
 2578 031e 13       		.uleb128 0x13
 2579 031f 00       		.byte	0
ARM GAS  /tmp/ccTuq0hs.s 			page 67


 2580 0320 00       		.byte	0
 2581 0321 3C       		.uleb128 0x3c
 2582 0322 2E       		.uleb128 0x2e
 2583 0323 01       		.byte	0x1
 2584 0324 03       		.uleb128 0x3
 2585 0325 0E       		.uleb128 0xe
 2586 0326 3A       		.uleb128 0x3a
 2587 0327 0B       		.uleb128 0xb
 2588 0328 3B       		.uleb128 0x3b
 2589 0329 0B       		.uleb128 0xb
 2590 032a 27       		.uleb128 0x27
 2591 032b 19       		.uleb128 0x19
 2592 032c 49       		.uleb128 0x49
 2593 032d 13       		.uleb128 0x13
 2594 032e 20       		.uleb128 0x20
 2595 032f 0B       		.uleb128 0xb
 2596 0330 01       		.uleb128 0x1
 2597 0331 13       		.uleb128 0x13
 2598 0332 00       		.byte	0
 2599 0333 00       		.byte	0
 2600 0334 3D       		.uleb128 0x3d
 2601 0335 2E       		.uleb128 0x2e
 2602 0336 01       		.byte	0x1
 2603 0337 03       		.uleb128 0x3
 2604 0338 0E       		.uleb128 0xe
 2605 0339 3A       		.uleb128 0x3a
 2606 033a 0B       		.uleb128 0xb
 2607 033b 3B       		.uleb128 0x3b
 2608 033c 05       		.uleb128 0x5
 2609 033d 27       		.uleb128 0x27
 2610 033e 19       		.uleb128 0x19
 2611 033f 49       		.uleb128 0x49
 2612 0340 13       		.uleb128 0x13
 2613 0341 20       		.uleb128 0x20
 2614 0342 0B       		.uleb128 0xb
 2615 0343 01       		.uleb128 0x1
 2616 0344 13       		.uleb128 0x13
 2617 0345 00       		.byte	0
 2618 0346 00       		.byte	0
 2619 0347 3E       		.uleb128 0x3e
 2620 0348 34       		.uleb128 0x34
 2621 0349 00       		.byte	0
 2622 034a 03       		.uleb128 0x3
 2623 034b 0E       		.uleb128 0xe
 2624 034c 3A       		.uleb128 0x3a
 2625 034d 0B       		.uleb128 0xb
 2626 034e 3B       		.uleb128 0x3b
 2627 034f 05       		.uleb128 0x5
 2628 0350 49       		.uleb128 0x49
 2629 0351 13       		.uleb128 0x13
 2630 0352 00       		.byte	0
 2631 0353 00       		.byte	0
 2632 0354 3F       		.uleb128 0x3f
 2633 0355 2E       		.uleb128 0x2e
 2634 0356 00       		.byte	0
 2635 0357 03       		.uleb128 0x3
 2636 0358 0E       		.uleb128 0xe
ARM GAS  /tmp/ccTuq0hs.s 			page 68


 2637 0359 3A       		.uleb128 0x3a
 2638 035a 0B       		.uleb128 0xb
 2639 035b 3B       		.uleb128 0x3b
 2640 035c 05       		.uleb128 0x5
 2641 035d 27       		.uleb128 0x27
 2642 035e 19       		.uleb128 0x19
 2643 035f 20       		.uleb128 0x20
 2644 0360 0B       		.uleb128 0xb
 2645 0361 00       		.byte	0
 2646 0362 00       		.byte	0
 2647 0363 40       		.uleb128 0x40
 2648 0364 2E       		.uleb128 0x2e
 2649 0365 00       		.byte	0
 2650 0366 3F       		.uleb128 0x3f
 2651 0367 19       		.uleb128 0x19
 2652 0368 3C       		.uleb128 0x3c
 2653 0369 19       		.uleb128 0x19
 2654 036a 6E       		.uleb128 0x6e
 2655 036b 0E       		.uleb128 0xe
 2656 036c 03       		.uleb128 0x3
 2657 036d 0E       		.uleb128 0xe
 2658 036e 3A       		.uleb128 0x3a
 2659 036f 0B       		.uleb128 0xb
 2660 0370 3B       		.uleb128 0x3b
 2661 0371 0B       		.uleb128 0xb
 2662 0372 00       		.byte	0
 2663 0373 00       		.byte	0
 2664 0374 00       		.byte	0
 2665              		.section	.debug_loc,"",%progbits
 2666              	.Ldebug_loc0:
 2667              	.LLST0:
 2668 0000 00000000 		.4byte	.LVL2
 2669 0004 0E000000 		.4byte	.LVL3
 2670 0008 0100     		.2byte	0x1
 2671 000a 50       		.byte	0x50
 2672 000b 0E000000 		.4byte	.LVL3
 2673 000f 1E000000 		.4byte	.LVL5
 2674 0013 0100     		.2byte	0x1
 2675 0015 54       		.byte	0x54
 2676 0016 1E000000 		.4byte	.LVL5
 2677 001a 24000000 		.4byte	.LFE230
 2678 001e 0100     		.2byte	0x1
 2679 0020 50       		.byte	0x50
 2680 0021 00000000 		.4byte	0
 2681 0025 00000000 		.4byte	0
 2682              		.section	.debug_aranges,"",%progbits
 2683 0000 34000000 		.4byte	0x34
 2684 0004 0200     		.2byte	0x2
 2685 0006 00000000 		.4byte	.Ldebug_info0
 2686 000a 04       		.byte	0x4
 2687 000b 00       		.byte	0
 2688 000c 0000     		.2byte	0
 2689 000e 0000     		.2byte	0
 2690 0010 00000000 		.4byte	.LFB227
 2691 0014 18000000 		.4byte	.LFE227-.LFB227
 2692 0018 00000000 		.4byte	.LFB228
 2693 001c 0C000000 		.4byte	.LFE228-.LFB228
ARM GAS  /tmp/ccTuq0hs.s 			page 69


 2694 0020 00000000 		.4byte	.LFB229
 2695 0024 2C000000 		.4byte	.LFE229-.LFB229
 2696 0028 00000000 		.4byte	.LFB230
 2697 002c 24000000 		.4byte	.LFE230-.LFB230
 2698 0030 00000000 		.4byte	0
 2699 0034 00000000 		.4byte	0
 2700              		.section	.debug_ranges,"",%progbits
 2701              	.Ldebug_ranges0:
 2702 0000 00000000 		.4byte	.LBB32
 2703 0004 0E000000 		.4byte	.LBE32
 2704 0008 10000000 		.4byte	.LBB41
 2705 000c 12000000 		.4byte	.LBE41
 2706 0010 00000000 		.4byte	0
 2707 0014 00000000 		.4byte	0
 2708 0018 00000000 		.4byte	.LFB227
 2709 001c 18000000 		.4byte	.LFE227
 2710 0020 00000000 		.4byte	.LFB228
 2711 0024 0C000000 		.4byte	.LFE228
 2712 0028 00000000 		.4byte	.LFB229
 2713 002c 2C000000 		.4byte	.LFE229
 2714 0030 00000000 		.4byte	.LFB230
 2715 0034 24000000 		.4byte	.LFE230
 2716 0038 00000000 		.4byte	0
 2717 003c 00000000 		.4byte	0
 2718              		.section	.debug_line,"",%progbits
 2719              	.Ldebug_line0:
 2720 0000 D6020000 		.section	.debug_str,"MS",%progbits,1
 2720      02004202 
 2720      00000201 
 2720      FB0E0D00 
 2720      01010101 
 2721              	.LASF50:
 2722 0000 5F69735F 		.ascii	"_is_cxa\000"
 2722      63786100 
 2723              	.LASF3:
 2724 0008 73686F72 		.ascii	"short int\000"
 2724      7420696E 
 2724      7400
 2725              	.LASF161:
 2726 0012 675F6D73 		.ascii	"g_ms_ticks\000"
 2726      5F746963 
 2726      6B7300
 2727              	.LASF109:
 2728 001d 5F67616D 		.ascii	"_gamma_signgam\000"
 2728      6D615F73 
 2728      69676E67 
 2728      616D00
 2729              	.LASF101:
 2730 002c 5F72616E 		.ascii	"_rand48\000"
 2730      64343800 
 2731              	.LASF80:
 2732 0034 5F656D65 		.ascii	"_emergency\000"
 2732      7267656E 
 2732      637900
 2733              	.LASF16:
 2734 003f 75696E74 		.ascii	"uint64_t\000"
 2734      36345F74 
ARM GAS  /tmp/ccTuq0hs.s 			page 70


 2734      00
 2735              	.LASF145:
 2736 0048 5F646179 		.ascii	"_daylight\000"
 2736      6C696768 
 2736      7400
 2737              	.LASF164:
 2738 0052 6370755F 		.ascii	"cpu_irq_is_enabled_flags\000"
 2738      6972715F 
 2738      69735F65 
 2738      6E61626C 
 2738      65645F66 
 2739              	.LASF5:
 2740 006b 5F5F7569 		.ascii	"__uint8_t\000"
 2740      6E74385F 
 2740      7400
 2741              	.LASF117:
 2742 0075 5F676574 		.ascii	"_getdate_err\000"
 2742      64617465 
 2742      5F657272 
 2742      00
 2743              	.LASF70:
 2744 0082 5F646174 		.ascii	"_data\000"
 2744      6100
 2745              	.LASF121:
 2746 0088 5F776372 		.ascii	"_wcrtomb_state\000"
 2746      746F6D62 
 2746      5F737461 
 2746      746500
 2747              	.LASF130:
 2748 0097 69727166 		.ascii	"irqflags_t\000"
 2748      6C616773 
 2748      5F7400
 2749              	.LASF122:
 2750 00a2 5F776373 		.ascii	"_wcsrtombs_state\000"
 2750      72746F6D 
 2750      62735F73 
 2750      74617465 
 2750      00
 2751              	.LASF12:
 2752 00b3 6C6F6E67 		.ascii	"long long unsigned int\000"
 2752      206C6F6E 
 2752      6720756E 
 2752      7369676E 
 2752      65642069 
 2753              	.LASF141:
 2754 00ca 5F5F6664 		.ascii	"__fdlibm_posix\000"
 2754      6C69626D 
 2754      5F706F73 
 2754      697800
 2755              	.LASF60:
 2756 00d9 5F6C6266 		.ascii	"_lbfsize\000"
 2756      73697A65 
 2756      00
 2757              	.LASF18:
 2758 00e2 49544D5F 		.ascii	"ITM_RxBuffer\000"
 2758      52784275 
 2758      66666572 
ARM GAS  /tmp/ccTuq0hs.s 			page 71


 2758      00
 2759              	.LASF140:
 2760 00ef 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 2760      6C69626D 
 2760      5F786F70 
 2760      656E00
 2761              	.LASF119:
 2762 00fe 5F6D6272 		.ascii	"_mbrtowc_state\000"
 2762      746F7763 
 2762      5F737461 
 2762      746500
 2763              	.LASF146:
 2764 010d 5F747A6E 		.ascii	"_tzname\000"
 2764      616D6500 
 2765              	.LASF114:
 2766 0115 5F776374 		.ascii	"_wctomb_state\000"
 2766      6F6D625F 
 2766      73746174 
 2766      6500
 2767              	.LASF37:
 2768 0123 5F5F746D 		.ascii	"__tm_sec\000"
 2768      5F736563 
 2768      00
 2769              	.LASF65:
 2770 012c 5F636C6F 		.ascii	"_close\000"
 2770      736500
 2771              	.LASF1:
 2772 0133 7369676E 		.ascii	"signed char\000"
 2772      65642063 
 2772      68617200 
 2773              	.LASF158:
 2774 013f 4D617850 		.ascii	"MaxPinNumber\000"
 2774      696E4E75 
 2774      6D626572 
 2774      00
 2775              	.LASF66:
 2776 014c 5F756275 		.ascii	"_ubuf\000"
 2776      6600
 2777              	.LASF55:
 2778 0152 5F626173 		.ascii	"_base\000"
 2778      6500
 2779              	.LASF155:
 2780 0158 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 2780      5F474D41 
 2780      435F5048 
 2780      595F494E 
 2780      54455252 
 2781              	.LASF95:
 2782 0170 5F5F7366 		.ascii	"__sf\000"
 2782      00
 2783              	.LASF46:
 2784 0175 5F6F6E5F 		.ascii	"_on_exit_args\000"
 2784      65786974 
 2784      5F617267 
 2784      7300
 2785              	.LASF61:
 2786 0183 5F636F6F 		.ascii	"_cookie\000"
ARM GAS  /tmp/ccTuq0hs.s 			page 72


 2786      6B696500 
 2787              	.LASF94:
 2788 018b 5F5F7367 		.ascii	"__sglue\000"
 2788      6C756500 
 2789              	.LASF7:
 2790 0193 6C6F6E67 		.ascii	"long int\000"
 2790      20696E74 
 2790      00
 2791              	.LASF179:
 2792 019c 6370755F 		.ascii	"cpu_irq_restore\000"
 2792      6972715F 
 2792      72657374 
 2792      6F726500 
 2793              	.LASF58:
 2794 01ac 5F666C61 		.ascii	"_flags\000"
 2794      677300
 2795              	.LASF160:
 2796 01b3 50776D53 		.ascii	"PwmSlowClock\000"
 2796      6C6F7743 
 2796      6C6F636B 
 2796      00
 2797              	.LASF34:
 2798 01c0 5F776473 		.ascii	"_wds\000"
 2798      00
 2799              	.LASF139:
 2800 01c5 5F5F6664 		.ascii	"__fdlibm_svid\000"
 2800      6C69626D 
 2800      5F737669 
 2800      6400
 2801              	.LASF86:
 2802 01d3 5F726573 		.ascii	"_result_k\000"
 2802      756C745F 
 2802      6B00
 2803              	.LASF10:
 2804 01dd 6C6F6E67 		.ascii	"long long int\000"
 2804      206C6F6E 
 2804      6720696E 
 2804      7400
 2805              	.LASF136:
 2806 01eb 646F7562 		.ascii	"double\000"
 2806      6C6500
 2807              	.LASF90:
 2808 01f2 5F637674 		.ascii	"_cvtbuf\000"
 2808      62756600 
 2809              	.LASF120:
 2810 01fa 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 2810      72746F77 
 2810      63735F73 
 2810      74617465 
 2810      00
 2811              	.LASF118:
 2812 020b 5F6D6272 		.ascii	"_mbrlen_state\000"
 2812      6C656E5F 
 2812      73746174 
 2812      6500
 2813              	.LASF47:
 2814 0219 5F666E61 		.ascii	"_fnargs\000"
ARM GAS  /tmp/ccTuq0hs.s 			page 73


 2814      72677300 
 2815              	.LASF53:
 2816 0221 5F666E73 		.ascii	"_fns\000"
 2816      00
 2817              	.LASF8:
 2818 0226 5F5F7569 		.ascii	"__uint32_t\000"
 2818      6E743332 
 2818      5F7400
 2819              	.LASF177:
 2820 0231 6D696C6C 		.ascii	"millis\000"
 2820      697300
 2821              	.LASF33:
 2822 0238 5F736967 		.ascii	"_sign\000"
 2822      6E00
 2823              	.LASF151:
 2824 023e 4150494E 		.ascii	"APIN_UART1_RXD\000"
 2824      5F554152 
 2824      54315F52 
 2824      584400
 2825              	.LASF127:
 2826 024d 5F696D70 		.ascii	"_impure_ptr\000"
 2826      7572655F 
 2826      70747200 
 2827              	.LASF78:
 2828 0259 5F737464 		.ascii	"_stderr\000"
 2828      65727200 
 2829              	.LASF35:
 2830 0261 5F426967 		.ascii	"_Bigint\000"
 2830      696E7400 
 2831              	.LASF149:
 2832 0269 4150494E 		.ascii	"APIN_UART0_TXD\000"
 2832      5F554152 
 2832      54305F54 
 2832      584400
 2833              	.LASF166:
 2834 0278 5F5F6765 		.ascii	"__get_PRIMASK\000"
 2834      745F5052 
 2834      494D4153 
 2834      4B00
 2835              	.LASF125:
 2836 0286 5F6E6D61 		.ascii	"_nmalloc\000"
 2836      6C6C6F63 
 2836      00
 2837              	.LASF36:
 2838 028f 5F5F746D 		.ascii	"__tm\000"
 2838      00
 2839              	.LASF152:
 2840 0294 4150494E 		.ascii	"APIN_UART1_TXD\000"
 2840      5F554152 
 2840      54315F54 
 2840      584400
 2841              	.LASF72:
 2842 02a3 5F6D6273 		.ascii	"_mbstate\000"
 2842      74617465 
 2842      00
 2843              	.LASF25:
 2844 02ac 5F5F7763 		.ascii	"__wchb\000"
ARM GAS  /tmp/ccTuq0hs.s 			page 74


 2844      686200
 2845              	.LASF19:
 2846 02b3 53797374 		.ascii	"SystemCoreClock\000"
 2846      656D436F 
 2846      7265436C 
 2846      6F636B00 
 2847              	.LASF142:
 2848 02c3 5F5F6664 		.ascii	"__fdlib_version\000"
 2848      6C69625F 
 2848      76657273 
 2848      696F6E00 
 2849              	.LASF89:
 2850 02d3 5F637674 		.ascii	"_cvtlen\000"
 2850      6C656E00 
 2851              	.LASF178:
 2852 02db 54696D65 		.ascii	"TimeTick_Increment\000"
 2852      5469636B 
 2852      5F496E63 
 2852      72656D65 
 2852      6E7400
 2853              	.LASF9:
 2854 02ee 6C6F6E67 		.ascii	"long unsigned int\000"
 2854      20756E73 
 2854      69676E65 
 2854      6420696E 
 2854      7400
 2855              	.LASF59:
 2856 0300 5F66696C 		.ascii	"_file\000"
 2856      6500
 2857              	.LASF150:
 2858 0306 4150494E 		.ascii	"APINS_UART1\000"
 2858      535F5541 
 2858      52543100 
 2859              	.LASF99:
 2860 0312 5F6E696F 		.ascii	"_niobs\000"
 2860      627300
 2861              	.LASF4:
 2862 0319 73686F72 		.ascii	"short unsigned int\000"
 2862      7420756E 
 2862      7369676E 
 2862      65642069 
 2862      6E7400
 2863              	.LASF180:
 2864 032c 7969656C 		.ascii	"yield\000"
 2864      6400
 2865              	.LASF92:
 2866 0332 5F617465 		.ascii	"_atexit0\000"
 2866      78697430 
 2866      00
 2867              	.LASF116:
 2868 033b 5F736967 		.ascii	"_signal_buf\000"
 2868      6E616C5F 
 2868      62756600 
 2869              	.LASF107:
 2870 0347 5F617363 		.ascii	"_asctime_buf\000"
 2870      74696D65 
 2870      5F627566 
ARM GAS  /tmp/ccTuq0hs.s 			page 75


 2870      00
 2871              	.LASF85:
 2872 0354 5F726573 		.ascii	"_result\000"
 2872      756C7400 
 2873              	.LASF24:
 2874 035c 5F5F7763 		.ascii	"__wch\000"
 2874      6800
 2875              	.LASF124:
 2876 0362 5F6E6578 		.ascii	"_nextf\000"
 2876      746600
 2877              	.LASF147:
 2878 0369 4150494E 		.ascii	"APINS_UART0\000"
 2878      535F5541 
 2878      52543000 
 2879              	.LASF23:
 2880 0375 77696E74 		.ascii	"wint_t\000"
 2880      5F7400
 2881              	.LASF172:
 2882 037c 2E2E2F63 		.ascii	"../cores/arduino/wiring.c\000"
 2882      6F726573 
 2882      2F617264 
 2882      75696E6F 
 2882      2F776972 
 2883              	.LASF157:
 2884 0396 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 2884      535F474D 
 2884      41435F50 
 2884      485900
 2885              	.LASF71:
 2886 03a5 5F6C6F63 		.ascii	"_lock\000"
 2886      6B00
 2887              	.LASF103:
 2888 03ab 5F6D756C 		.ascii	"_mult\000"
 2888      7400
 2889              	.LASF63:
 2890 03b1 5F777269 		.ascii	"_write\000"
 2890      746500
 2891              	.LASF42:
 2892 03b8 5F5F746D 		.ascii	"__tm_year\000"
 2892      5F796561 
 2892      7200
 2893              	.LASF105:
 2894 03c2 5F756E75 		.ascii	"_unused_rand\000"
 2894      7365645F 
 2894      72616E64 
 2894      00
 2895              	.LASF134:
 2896 03cf 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 2896      6972715F 
 2896      70726576 
 2896      5F696E74 
 2896      65727275 
 2897              	.LASF167:
 2898 03ec 5F656376 		.ascii	"_ecv_result\000"
 2898      5F726573 
 2898      756C7400 
 2899              	.LASF17:
ARM GAS  /tmp/ccTuq0hs.s 			page 76


 2900 03f8 73697A65 		.ascii	"sizetype\000"
 2900      74797065 
 2900      00
 2901              	.LASF69:
 2902 0401 5F6F6666 		.ascii	"_offset\000"
 2902      73657400 
 2903              	.LASF171:
 2904 0409 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 2904      43393920 
 2904      362E332E 
 2904      31203230 
 2904      31373036 
 2905 043c 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 2905      76352D64 
 2905      3136202D 
 2905      6D666C6F 
 2905      61742D61 
 2906 046f 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 2906      6E2D7365 
 2906      6374696F 
 2906      6E73202D 
 2906      66646174 
 2907 04a2 6F6E7374 		.ascii	"onstant\000"
 2907      616E7400 
 2908              	.LASF29:
 2909 04aa 5F666C6F 		.ascii	"_flock_t\000"
 2909      636B5F74 
 2909      00
 2910              	.LASF41:
 2911 04b3 5F5F746D 		.ascii	"__tm_mon\000"
 2911      5F6D6F6E 
 2911      00
 2912              	.LASF51:
 2913 04bc 5F617465 		.ascii	"_atexit\000"
 2913      78697400 
 2914              	.LASF129:
 2915 04c4 7375626F 		.ascii	"suboptarg\000"
 2915      70746172 
 2915      6700
 2916              	.LASF83:
 2917 04ce 5F5F7364 		.ascii	"__sdidinit\000"
 2917      6964696E 
 2917      697400
 2918              	.LASF21:
 2919 04d9 5F6F6666 		.ascii	"_off_t\000"
 2919      5F7400
 2920              	.LASF169:
 2921 04e0 5F5F656E 		.ascii	"__enable_irq\000"
 2921      61626C65 
 2921      5F697271 
 2921      00
 2922              	.LASF11:
 2923 04ed 5F5F7569 		.ascii	"__uint64_t\000"
 2923      6E743634 
 2923      5F7400
 2924              	.LASF135:
 2925 04f8 666C6F61 		.ascii	"float\000"
ARM GAS  /tmp/ccTuq0hs.s 			page 77


 2925      7400
 2926              	.LASF131:
 2927 04fe 675F696E 		.ascii	"g_interrupt_enabled\000"
 2927      74657272 
 2927      7570745F 
 2927      656E6162 
 2927      6C656400 
 2928              	.LASF168:
 2929 0512 5F5F6469 		.ascii	"__disable_irq\000"
 2929      7361626C 
 2929      655F6972 
 2929      7100
 2930              	.LASF20:
 2931 0520 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 2931      4B5F5245 
 2931      43555253 
 2931      4956455F 
 2931      5400
 2932              	.LASF62:
 2933 0532 5F726561 		.ascii	"_read\000"
 2933      6400
 2934              	.LASF132:
 2935 0538 5F426F6F 		.ascii	"_Bool\000"
 2935      6C00
 2936              	.LASF14:
 2937 053e 696E7433 		.ascii	"int32_t\000"
 2937      325F7400 
 2938              	.LASF48:
 2939 0546 5F64736F 		.ascii	"_dso_handle\000"
 2939      5F68616E 
 2939      646C6500 
 2940              	.LASF91:
 2941 0552 5F6E6577 		.ascii	"_new\000"
 2941      00
 2942              	.LASF148:
 2943 0557 4150494E 		.ascii	"APIN_UART0_RXD\000"
 2943      5F554152 
 2943      54305F52 
 2943      584400
 2944              	.LASF170:
 2945 0566 5F5F444D 		.ascii	"__DMB\000"
 2945      4200
 2946              	.LASF112:
 2947 056c 5F6D626C 		.ascii	"_mblen_state\000"
 2947      656E5F73 
 2947      74617465 
 2947      00
 2948              	.LASF44:
 2949 0579 5F5F746D 		.ascii	"__tm_yday\000"
 2949      5F796461 
 2949      7900
 2950              	.LASF54:
 2951 0583 5F5F7362 		.ascii	"__sbuf\000"
 2951      756600
 2952              	.LASF73:
 2953 058a 5F666C61 		.ascii	"_flags2\000"
 2953      67733200 
ARM GAS  /tmp/ccTuq0hs.s 			page 78


 2954              	.LASF88:
 2955 0592 5F667265 		.ascii	"_freelist\000"
 2955      656C6973 
 2955      7400
 2956              	.LASF97:
 2957 059c 5F5F4649 		.ascii	"__FILE\000"
 2957      4C4500
 2958              	.LASF28:
 2959 05a3 5F6D6273 		.ascii	"_mbstate_t\000"
 2959      74617465 
 2959      5F7400
 2960              	.LASF159:
 2961 05ae 50776D46 		.ascii	"PwmFastClock\000"
 2961      61737443 
 2961      6C6F636B 
 2961      00
 2962              	.LASF57:
 2963 05bb 5F5F7346 		.ascii	"__sFILE\000"
 2963      494C4500 
 2964              	.LASF110:
 2965 05c3 5F72616E 		.ascii	"_rand_next\000"
 2965      645F6E65 
 2965      787400
 2966              	.LASF100:
 2967 05ce 5F696F62 		.ascii	"_iobs\000"
 2967      7300
 2968              	.LASF79:
 2969 05d4 5F696E63 		.ascii	"_inc\000"
 2969      00
 2970              	.LASF52:
 2971 05d9 5F696E64 		.ascii	"_ind\000"
 2971      00
 2972              	.LASF82:
 2973 05de 5F637572 		.ascii	"_current_locale\000"
 2973      72656E74 
 2973      5F6C6F63 
 2973      616C6500 
 2974              	.LASF84:
 2975 05ee 5F5F636C 		.ascii	"__cleanup\000"
 2975      65616E75 
 2975      7000
 2976              	.LASF32:
 2977 05f8 5F6D6178 		.ascii	"_maxwds\000"
 2977      77647300 
 2978              	.LASF74:
 2979 0600 5F726565 		.ascii	"_reent\000"
 2979      6E7400
 2980              	.LASF102:
 2981 0607 5F736565 		.ascii	"_seed\000"
 2981      6400
 2982              	.LASF26:
 2983 060d 5F5F636F 		.ascii	"__count\000"
 2983      756E7400 
 2984              	.LASF15:
 2985 0615 75696E74 		.ascii	"uint32_t\000"
 2985      33325F74 
 2985      00
ARM GAS  /tmp/ccTuq0hs.s 			page 79


 2986              	.LASF39:
 2987 061e 5F5F746D 		.ascii	"__tm_hour\000"
 2987      5F686F75 
 2987      7200
 2988              	.LASF64:
 2989 0628 5F736565 		.ascii	"_seek\000"
 2989      6B00
 2990              	.LASF123:
 2991 062e 5F685F65 		.ascii	"_h_errno\000"
 2991      72726E6F 
 2991      00
 2992              	.LASF22:
 2993 0637 5F66706F 		.ascii	"_fpos_t\000"
 2993      735F7400 
 2994              	.LASF137:
 2995 063f 6C6F6E67 		.ascii	"long double\000"
 2995      20646F75 
 2995      626C6500 
 2996              	.LASF75:
 2997 064b 5F657272 		.ascii	"_errno\000"
 2997      6E6F00
 2998              	.LASF96:
 2999 0652 63686172 		.ascii	"char\000"
 2999      00
 3000              	.LASF68:
 3001 0657 5F626C6B 		.ascii	"_blksize\000"
 3001      73697A65 
 3001      00
 3002              	.LASF56:
 3003 0660 5F73697A 		.ascii	"_size\000"
 3003      6500
 3004              	.LASF0:
 3005 0666 756E7369 		.ascii	"unsigned int\000"
 3005      676E6564 
 3005      20696E74 
 3005      00
 3006              	.LASF6:
 3007 0673 5F5F696E 		.ascii	"__int32_t\000"
 3007      7433325F 
 3007      7400
 3008              	.LASF31:
 3009 067d 5F6E6578 		.ascii	"_next\000"
 3009      7400
 3010              	.LASF106:
 3011 0683 5F737472 		.ascii	"_strtok_last\000"
 3011      746F6B5F 
 3011      6C617374 
 3011      00
 3012              	.LASF27:
 3013 0690 5F5F7661 		.ascii	"__value\000"
 3013      6C756500 
 3014              	.LASF49:
 3015 0698 5F666E74 		.ascii	"_fntypes\000"
 3015      79706573 
 3015      00
 3016              	.LASF2:
 3017 06a1 756E7369 		.ascii	"unsigned char\000"
ARM GAS  /tmp/ccTuq0hs.s 			page 80


 3017      676E6564 
 3017      20636861 
 3017      7200
 3018              	.LASF104:
 3019 06af 5F616464 		.ascii	"_add\000"
 3019      00
 3020              	.LASF154:
 3021 06b4 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 3021      5F48534D 
 3021      43495F44 
 3021      41544100 
 3022              	.LASF30:
 3023 06c4 5F5F554C 		.ascii	"__ULong\000"
 3023      6F6E6700 
 3024              	.LASF153:
 3025 06cc 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 3025      5F48534D 
 3025      43495F43 
 3025      4C4F434B 
 3025      00
 3026              	.LASF176:
 3027 06dd 6D696C6C 		.ascii	"millis64\000"
 3027      69733634 
 3027      00
 3028              	.LASF174:
 3029 06e6 5F5F6664 		.ascii	"__fdlibm_version\000"
 3029      6C69626D 
 3029      5F766572 
 3029      73696F6E 
 3029      00
 3030              	.LASF128:
 3031 06f7 5F676C6F 		.ascii	"_global_impure_ptr\000"
 3031      62616C5F 
 3031      696D7075 
 3031      72655F70 
 3031      747200
 3032              	.LASF144:
 3033 070a 5F74696D 		.ascii	"_timezone\000"
 3033      657A6F6E 
 3033      6500
 3034              	.LASF138:
 3035 0714 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 3035      6C69626D 
 3035      5F696565 
 3035      6500
 3036              	.LASF156:
 3037 0722 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 3037      5F474D41 
 3037      435F5048 
 3037      595F5245 
 3037      53455400 
 3038              	.LASF77:
 3039 0736 5F737464 		.ascii	"_stdout\000"
 3039      6F757400 
 3040              	.LASF43:
 3041 073e 5F5F746D 		.ascii	"__tm_wday\000"
 3041      5F776461 
ARM GAS  /tmp/ccTuq0hs.s 			page 81


 3041      7900
 3042              	.LASF98:
 3043 0748 5F676C75 		.ascii	"_glue\000"
 3043      6500
 3044              	.LASF76:
 3045 074e 5F737464 		.ascii	"_stdin\000"
 3045      696E00
 3046              	.LASF81:
 3047 0755 5F637572 		.ascii	"_current_category\000"
 3047      72656E74 
 3047      5F636174 
 3047      65676F72 
 3047      7900
 3048              	.LASF175:
 3049 0767 636F7265 		.ascii	"coreDelay\000"
 3049      44656C61 
 3049      7900
 3050              	.LASF13:
 3051 0771 75696E74 		.ascii	"uint8_t\000"
 3051      385F7400 
 3052              	.LASF115:
 3053 0779 5F6C3634 		.ascii	"_l64a_buf\000"
 3053      615F6275 
 3053      6600
 3054              	.LASF93:
 3055 0783 5F736967 		.ascii	"_sig_func\000"
 3055      5F66756E 
 3055      6300
 3056              	.LASF163:
 3057 078d 666C6167 		.ascii	"flags\000"
 3057      7300
 3058              	.LASF133:
 3059 0793 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 3059      6972715F 
 3059      63726974 
 3059      6963616C 
 3059      5F736563 
 3060              	.LASF67:
 3061 07b4 5F6E6275 		.ascii	"_nbuf\000"
 3061      6600
 3062              	.LASF126:
 3063 07ba 5F756E75 		.ascii	"_unused\000"
 3063      73656400 
 3064              	.LASF173:
 3065 07c2 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 3065      652F746F 
 3065      72626A6F 
 3065      726E2F65 
 3065      636C6970 
 3066 07f5 00       		.ascii	"\000"
 3067              	.LASF45:
 3068 07f6 5F5F746D 		.ascii	"__tm_isdst\000"
 3068      5F697364 
 3068      737400
 3069              	.LASF108:
 3070 0801 5F6C6F63 		.ascii	"_localtime_buf\000"
 3070      616C7469 
ARM GAS  /tmp/ccTuq0hs.s 			page 82


 3070      6D655F62 
 3070      756600
 3071              	.LASF38:
 3072 0810 5F5F746D 		.ascii	"__tm_min\000"
 3072      5F6D696E 
 3072      00
 3073              	.LASF111:
 3074 0819 5F723438 		.ascii	"_r48\000"
 3074      00
 3075              	.LASF162:
 3076 081e 73746172 		.ascii	"start\000"
 3076      7400
 3077              	.LASF113:
 3078 0824 5F6D6274 		.ascii	"_mbtowc_state\000"
 3078      6F77635F 
 3078      73746174 
 3078      6500
 3079              	.LASF87:
 3080 0832 5F703573 		.ascii	"_p5s\000"
 3080      00
 3081              	.LASF40:
 3082 0837 5F5F746D 		.ascii	"__tm_mday\000"
 3082      5F6D6461 
 3082      7900
 3083              	.LASF165:
 3084 0841 6370755F 		.ascii	"cpu_irq_save\000"
 3084      6972715F 
 3084      73617665 
 3084      00
 3085              	.LASF143:
 3086 084e 4E6F5069 		.ascii	"NoPin\000"
 3086      6E00
 3087              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
