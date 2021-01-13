ARM GAS  /tmp/ccQHvjuS.s 			page 1


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
  12              		.file	"Reset.cpp"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.Reset,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	Reset
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	Reset, %function
  25              	Reset:
  26              	.LFB525:
  27              		.file 1 "../cores/arduino/Reset.cpp"
   1:../cores/arduino/Reset.cpp **** /*
   2:../cores/arduino/Reset.cpp ****   Copyright (c) 2012 Arduino.  All right reserved.
   3:../cores/arduino/Reset.cpp **** 
   4:../cores/arduino/Reset.cpp ****   This library is free software; you can redistribute it and/or
   5:../cores/arduino/Reset.cpp ****   modify it under the terms of the GNU Lesser General Public
   6:../cores/arduino/Reset.cpp ****   License as published by the Free Software Foundation; either
   7:../cores/arduino/Reset.cpp ****   version 2.1 of the License, or (at your option) any later version.
   8:../cores/arduino/Reset.cpp **** 
   9:../cores/arduino/Reset.cpp ****   This library is distributed in the hope that it will be useful,
  10:../cores/arduino/Reset.cpp ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  11:../cores/arduino/Reset.cpp ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  12:../cores/arduino/Reset.cpp ****   See the GNU Lesser General Public License for more details.
  13:../cores/arduino/Reset.cpp **** 
  14:../cores/arduino/Reset.cpp ****   You should have received a copy of the GNU Lesser General Public
  15:../cores/arduino/Reset.cpp ****   License along with this library; if not, write to the Free Software
  16:../cores/arduino/Reset.cpp ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  17:../cores/arduino/Reset.cpp **** */
  18:../cores/arduino/Reset.cpp **** 
  19:../cores/arduino/Reset.cpp **** #include "Core.h"
  20:../cores/arduino/Reset.cpp **** #include "Reset.h"
  21:../cores/arduino/Reset.cpp **** 
  22:../cores/arduino/Reset.cpp **** #include "wdt/wdt.h"
  23:../cores/arduino/Reset.cpp **** #include "rstc/rstc.h"
  24:../cores/arduino/Reset.cpp **** #include "sam/services/flash_efc/flash_efc.h"
  25:../cores/arduino/Reset.cpp **** 
  26:../cores/arduino/Reset.cpp **** #ifdef __cplusplus
  27:../cores/arduino/Reset.cpp **** extern "C" {
  28:../cores/arduino/Reset.cpp **** #endif
  29:../cores/arduino/Reset.cpp **** 
  30:../cores/arduino/Reset.cpp **** void Reset()
ARM GAS  /tmp/ccQHvjuS.s 			page 2


  31:../cores/arduino/Reset.cpp **** {
  28              		.loc 1 31 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  32:../cores/arduino/Reset.cpp **** 	rstc_start_software_reset(RSTC);
  33              		.loc 1 32 0
  34 0000 0148     		ldr	r0, .L2
  35 0002 FFF7FEBF 		b	rstc_start_software_reset
  36              	.LVL0:
  37              	.L3:
  38 0006 00BF     		.align	2
  39              	.L2:
  40 0008 00180E40 		.word	1074665472
  41              		.cfi_endproc
  42              	.LFE525:
  43              		.size	Reset, .-Reset
  44              		.section	.text.EraseAndReset,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	EraseAndReset
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv5-d16
  52              		.type	EraseAndReset, %function
  53              	EraseAndReset:
  54              	.LFB526:
  33:../cores/arduino/Reset.cpp **** }
  34:../cores/arduino/Reset.cpp **** 
  35:../cores/arduino/Reset.cpp **** // Switch into boot mode and reset
  36:../cores/arduino/Reset.cpp **** void EraseAndReset()
  37:../cores/arduino/Reset.cpp **** {
  55              		.loc 1 37 0
  56              		.cfi_startproc
  57              		@ args = 0, pretend = 0, frame = 0
  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59 0000 70B5     		push	{r4, r5, r6, lr}
  60              		.cfi_def_cfa_offset 16
  61              		.cfi_offset 4, -16
  62              		.cfi_offset 5, -12
  63              		.cfi_offset 6, -8
  64              		.cfi_offset 14, -4
  65              	.LBB8:
  66              	.LBB9:
  67              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h"
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
ARM GAS  /tmp/ccQHvjuS.s 			page 3


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
ARM GAS  /tmp/ccQHvjuS.s 			page 4


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
ARM GAS  /tmp/ccQHvjuS.s 			page 5


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
ARM GAS  /tmp/ccQHvjuS.s 			page 6


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
ARM GAS  /tmp/ccQHvjuS.s 			page 7


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
ARM GAS  /tmp/ccQHvjuS.s 			page 8


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
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   This function disables IRQ interrupts by setting the I-bit in the CPSR.
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   Can only be executed in Privileged modes.
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_irq(void)
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __ASM volatile ("cpsid i" : : : "memory");
  68              		.loc 2 330 0
  69              		.syntax unified
  70              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  71 0002 72B6     		cpsid i
  72              	@ 0 "" 2
  73              		.thumb
  74              		.syntax unified
  75              	.LBE9:
  76              	.LBE8:
  77              	.LBB10:
  78              	.LBB11:
  79              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h"
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
ARM GAS  /tmp/ccQHvjuS.s 			page 9


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
ARM GAS  /tmp/ccQHvjuS.s 			page 10


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
ARM GAS  /tmp/ccQHvjuS.s 			page 11


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
ARM GAS  /tmp/ccQHvjuS.s 			page 12


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
ARM GAS  /tmp/ccQHvjuS.s 			page 13


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
ARM GAS  /tmp/ccQHvjuS.s 			page 14


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
ARM GAS  /tmp/ccQHvjuS.s 			page 15


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
ARM GAS  /tmp/ccQHvjuS.s 			page 16


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
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("dmb");
  80              		.loc 3 456 0
  81              		.syntax unified
  82              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  83 0004 BFF35F8F 		dmb
  84              	@ 0 "" 2
  85              		.thumb
  86              		.syntax unified
  87              	.LBE11:
  88              	.LBE10:
  38:../cores/arduino/Reset.cpp **** 	cpu_irq_disable();
ARM GAS  /tmp/ccQHvjuS.s 			page 17


  89              		.loc 1 38 0
  90 0008 0D4B     		ldr	r3, .L10
  91 000a 0022     		movs	r2, #0
  92 000c 4FF48004 		mov	r4, #4194304
  93              	.LBB12:
  94              	.LBB13:
  39:../cores/arduino/Reset.cpp **** 
  40:../cores/arduino/Reset.cpp **** #if SAM4S
  41:../cores/arduino/Reset.cpp **** # define IFLASH_ADDR				IFLASH0_ADDR
  42:../cores/arduino/Reset.cpp **** # define IFLASH_PAGE_SIZE			IFLASH0_PAGE_SIZE
  43:../cores/arduino/Reset.cpp **** # define IFLASH_NB_OF_PAGES			(IFLASH0_SIZE / IFLASH_PAGE_SIZE)
  44:../cores/arduino/Reset.cpp **** #endif
  45:../cores/arduino/Reset.cpp **** 
  46:../cores/arduino/Reset.cpp **** #if SAM3XA
  47:../cores/arduino/Reset.cpp **** # define IFLASH_ADDR				IFLASH0_ADDR
  48:../cores/arduino/Reset.cpp **** # define IFLASH_PAGE_SIZE			IFLASH0_PAGE_SIZE
  49:../cores/arduino/Reset.cpp **** # define IFLASH_NB_OF_PAGES			((IFLASH1_ADDR + IFLASH1_SIZE - IFLASH_ADDR) / IFLASH_PAGE_SIZE)
  50:../cores/arduino/Reset.cpp **** #endif
  51:../cores/arduino/Reset.cpp **** 
  52:../cores/arduino/Reset.cpp ****     for(size_t i = 0; i <= IFLASH_NB_OF_PAGES; i++)
  53:../cores/arduino/Reset.cpp ****     {
  54:../cores/arduino/Reset.cpp ****     	wdt_restart(WDT);
  95              		.loc 1 54 0
  96 0010 0C4E     		ldr	r6, .L10+4
  97              	.LBE13:
  52:../cores/arduino/Reset.cpp ****     {
  98              		.loc 1 52 0
  99 0012 0D4D     		ldr	r5, .L10+8
 100              	.LBE12:
  38:../cores/arduino/Reset.cpp **** 	cpu_irq_disable();
 101              		.loc 1 38 0
 102 0014 1A70     		strb	r2, [r3]
 103              	.LVL1:
 104              	.L5:
 105              	.LBB15:
 106              	.LBB14:
 107              		.loc 1 54 0 discriminator 2
 108 0016 3046     		mov	r0, r6
 109 0018 FFF7FEFF 		bl	wdt_restart
 110              	.LVL2:
  55:../cores/arduino/Reset.cpp ****         size_t pageStartAddr = IFLASH_ADDR + i * IFLASH_PAGE_SIZE;
  56:../cores/arduino/Reset.cpp ****         flash_unlock(pageStartAddr, pageStartAddr + IFLASH_PAGE_SIZE - 1, nullptr, nullptr);
 111              		.loc 1 56 0 discriminator 2
 112 001c 0023     		movs	r3, #0
 113 001e 04F2FF11 		addw	r1, r4, #511
 114 0022 2046     		mov	r0, r4
 115 0024 04F50074 		add	r4, r4, #512
 116              	.LVL3:
 117 0028 1A46     		mov	r2, r3
 118 002a FFF7FEFF 		bl	flash_unlock
 119              	.LVL4:
 120              	.LBE14:
  52:../cores/arduino/Reset.cpp ****     {
 121              		.loc 1 52 0 discriminator 2
 122 002e AC42     		cmp	r4, r5
 123 0030 F1D1     		bne	.L5
 124              	.LBE15:
ARM GAS  /tmp/ccQHvjuS.s 			page 18


  57:../cores/arduino/Reset.cpp ****     }
  58:../cores/arduino/Reset.cpp **** 
  59:../cores/arduino/Reset.cpp ****     flash_clear_gpnvm(1);			// tell the system to boot from ROM next time
 125              		.loc 1 59 0
 126 0032 0120     		movs	r0, #1
 127 0034 FFF7FEFF 		bl	flash_clear_gpnvm
 128              	.LVL5:
  60:../cores/arduino/Reset.cpp **** 	rstc_start_software_reset(RSTC);
 129              		.loc 1 60 0
 130 0038 0448     		ldr	r0, .L10+12
 131 003a FFF7FEFF 		bl	rstc_start_software_reset
 132              	.LVL6:
 133              	.L6:
 134 003e FEE7     		b	.L6
 135              	.L11:
 136              		.align	2
 137              	.L10:
 138 0040 00000000 		.word	g_interrupt_enabled
 139 0044 50180E40 		.word	1074665552
 140 0048 00026000 		.word	6291968
 141 004c 00180E40 		.word	1074665472
 142              		.cfi_endproc
 143              	.LFE526:
 144              		.size	EraseAndReset, .-EraseAndReset
 145              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 146              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 147              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 148              	_ZL28cpu_irq_prev_interrupt_state:
 149 0000 00       		.space	1
 150              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 151              		.align	2
 152              		.type	_ZL32cpu_irq_critical_section_counter, %object
 153              		.size	_ZL32cpu_irq_critical_section_counter, 4
 154              	_ZL32cpu_irq_critical_section_counter:
 155 0000 00000000 		.space	4
 156              		.text
 157              	.Letext0:
 158              		.file 4 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 159              		.file 5 "/usr/include/newlib/machine/_default_types.h"
 160              		.file 6 "/usr/include/newlib/sys/_stdint.h"
 161              		.file 7 "/usr/include/newlib/stdint.h"
 162              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 163              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 164              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pio
 165              		.file 11 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/rst
 166              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/wdt
 167              		.file 13 "/usr/include/newlib/sys/lock.h"
 168              		.file 14 "/usr/include/newlib/sys/_types.h"
 169              		.file 15 "/usr/include/newlib/sys/reent.h"
 170              		.file 16 "/usr/include/newlib/c++/6.3.1/cstdlib"
 171              		.file 17 "/usr/include/newlib/c++/6.3.1/cmath"
 172              		.file 18 "/usr/include/newlib/c++/6.3.1/cstdint"
 173              		.file 19 "/usr/include/newlib/c++/6.3.1/cstddef"
 174              		.file 20 "/usr/include/newlib/c++/6.3.1/arm-none-eabi/thumb/v7e-m/fpv5/hard/bits/c++config.h"
 175              		.file 21 "/usr/include/newlib/stdlib.h"
 176              		.file 22 "/usr/include/newlib/c++/6.3.1/stdlib.h"
 177              		.file 23 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
ARM GAS  /tmp/ccQHvjuS.s 			page 19


 178              		.file 24 "/usr/include/newlib/math.h"
 179              		.file 25 "/usr/include/newlib/c++/6.3.1/math.h"
 180              		.file 26 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pio/pio.h"
 181              		.file 27 "../cores/arduino/Core.h"
 182              		.file 28 "/usr/include/newlib/ctype.h"
 183              		.file 29 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/RingBuffer.h"
 184              		.file 30 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h"
 185              		.file 31 "/usr/include/newlib/time.h"
 186              		.file 32 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
 187              		.file 33 "../cores/arduino/USB/USBSerial.h"
 188              		.file 34 "../cores/arduino/Print.h"
 189              		.file 35 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/wdt/wdt.h"
 190              		.file 36 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/services/flash_efc/flash_efc.h"
 191              		.file 37 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/rstc/rstc.h"
 192              		.file 38 "<built-in>"
 193              		.section	.debug_info,"",%progbits
 194              	.Ldebug_info0:
 195 0000 B51B0000 		.4byte	0x1bb5
 196 0004 0400     		.2byte	0x4
 197 0006 00000000 		.4byte	.Ldebug_abbrev0
 198 000a 04       		.byte	0x4
 199 000b 01       		.uleb128 0x1
 200 000c EA0C0000 		.4byte	.LASF424
 201 0010 04       		.byte	0x4
 202 0011 98000000 		.4byte	.LASF425
 203 0015 13100000 		.4byte	.LASF426
 204 0019 30000000 		.4byte	.Ldebug_ranges0+0x30
 205 001d 00000000 		.4byte	0
 206 0021 00000000 		.4byte	.Ldebug_line0
 207 0025 02       		.uleb128 0x2
 208 0026 04       		.byte	0x4
 209 0027 05       		.byte	0x5
 210 0028 696E7400 		.ascii	"int\000"
 211 002c 03       		.uleb128 0x3
 212 002d 7B050000 		.4byte	.LASF5
 213 0031 04       		.byte	0x4
 214 0032 D8       		.byte	0xd8
 215 0033 3C000000 		.4byte	0x3c
 216 0037 04       		.uleb128 0x4
 217 0038 2C000000 		.4byte	0x2c
 218 003c 05       		.uleb128 0x5
 219 003d 04       		.byte	0x4
 220 003e 07       		.byte	0x7
 221 003f 4E010000 		.4byte	.LASF0
 222 0043 06       		.uleb128 0x6
 223 0044 10       		.byte	0x10
 224 0045 04       		.byte	0x4
 225 0046 AA01     		.2byte	0x1aa
 226 0048 1E040000 		.4byte	.LASF427
 227 004c 6B000000 		.4byte	0x6b
 228 0050 07       		.uleb128 0x7
 229 0051 08040000 		.4byte	.LASF1
 230 0055 04       		.byte	0x4
 231 0056 AB01     		.2byte	0x1ab
 232 0058 6B000000 		.4byte	0x6b
 233 005c 00       		.byte	0
 234 005d 07       		.uleb128 0x7
ARM GAS  /tmp/ccQHvjuS.s 			page 20


 235 005e D7030000 		.4byte	.LASF2
 236 0062 04       		.byte	0x4
 237 0063 AC01     		.2byte	0x1ac
 238 0065 72000000 		.4byte	0x72
 239 0069 08       		.byte	0x8
 240 006a 00       		.byte	0
 241 006b 05       		.uleb128 0x5
 242 006c 08       		.byte	0x8
 243 006d 05       		.byte	0x5
 244 006e C3080000 		.4byte	.LASF3
 245 0072 05       		.uleb128 0x5
 246 0073 08       		.byte	0x8
 247 0074 04       		.byte	0x4
 248 0075 F20A0000 		.4byte	.LASF4
 249 0079 08       		.uleb128 0x8
 250 007a B3020000 		.4byte	.LASF6
 251 007e 04       		.byte	0x4
 252 007f AD01     		.2byte	0x1ad
 253 0081 43000000 		.4byte	0x43
 254 0085 09       		.uleb128 0x9
 255 0086 560F0000 		.4byte	.LASF428
 256 008a 03       		.uleb128 0x3
 257 008b 8B0A0000 		.4byte	.LASF7
 258 008f 05       		.byte	0x5
 259 0090 1B       		.byte	0x1b
 260 0091 95000000 		.4byte	0x95
 261 0095 05       		.uleb128 0x5
 262 0096 01       		.byte	0x1
 263 0097 06       		.byte	0x6
 264 0098 B8100000 		.4byte	.LASF8
 265 009c 03       		.uleb128 0x3
 266 009d B10C0000 		.4byte	.LASF9
 267 00a1 05       		.byte	0x5
 268 00a2 1D       		.byte	0x1d
 269 00a3 A7000000 		.4byte	0xa7
 270 00a7 05       		.uleb128 0x5
 271 00a8 01       		.byte	0x1
 272 00a9 08       		.byte	0x8
 273 00aa EC0E0000 		.4byte	.LASF10
 274 00ae 03       		.uleb128 0x3
 275 00af 31090000 		.4byte	.LASF11
 276 00b3 05       		.byte	0x5
 277 00b4 29       		.byte	0x29
 278 00b5 B9000000 		.4byte	0xb9
 279 00b9 05       		.uleb128 0x5
 280 00ba 02       		.byte	0x2
 281 00bb 05       		.byte	0x5
 282 00bc CF0B0000 		.4byte	.LASF12
 283 00c0 03       		.uleb128 0x3
 284 00c1 AC060000 		.4byte	.LASF13
 285 00c5 05       		.byte	0x5
 286 00c6 2B       		.byte	0x2b
 287 00c7 CB000000 		.4byte	0xcb
 288 00cb 05       		.uleb128 0x5
 289 00cc 02       		.byte	0x2
 290 00cd 07       		.byte	0x7
 291 00ce DD100000 		.4byte	.LASF14
ARM GAS  /tmp/ccQHvjuS.s 			page 21


 292 00d2 03       		.uleb128 0x3
 293 00d3 C4010000 		.4byte	.LASF15
 294 00d7 05       		.byte	0x5
 295 00d8 3F       		.byte	0x3f
 296 00d9 DD000000 		.4byte	0xdd
 297 00dd 05       		.uleb128 0x5
 298 00de 04       		.byte	0x4
 299 00df 05       		.byte	0x5
 300 00e0 1B000000 		.4byte	.LASF16
 301 00e4 03       		.uleb128 0x3
 302 00e5 B6040000 		.4byte	.LASF17
 303 00e9 05       		.byte	0x5
 304 00ea 41       		.byte	0x41
 305 00eb EF000000 		.4byte	0xef
 306 00ef 05       		.uleb128 0x5
 307 00f0 04       		.byte	0x4
 308 00f1 07       		.byte	0x7
 309 00f2 450A0000 		.4byte	.LASF18
 310 00f6 03       		.uleb128 0x3
 311 00f7 CB0A0000 		.4byte	.LASF19
 312 00fb 05       		.byte	0x5
 313 00fc 59       		.byte	0x59
 314 00fd 6B000000 		.4byte	0x6b
 315 0101 03       		.uleb128 0x3
 316 0102 4D060000 		.4byte	.LASF20
 317 0106 05       		.byte	0x5
 318 0107 5B       		.byte	0x5b
 319 0108 0C010000 		.4byte	0x10c
 320 010c 05       		.uleb128 0x5
 321 010d 08       		.byte	0x8
 322 010e 07       		.byte	0x7
 323 010f 69040000 		.4byte	.LASF21
 324 0113 03       		.uleb128 0x3
 325 0114 D00D0000 		.4byte	.LASF22
 326 0118 05       		.byte	0x5
 327 0119 78       		.byte	0x78
 328 011a 95000000 		.4byte	0x95
 329 011e 03       		.uleb128 0x3
 330 011f 7D0B0000 		.4byte	.LASF23
 331 0123 05       		.byte	0x5
 332 0124 7A       		.byte	0x7a
 333 0125 A7000000 		.4byte	0xa7
 334 0129 03       		.uleb128 0x3
 335 012a BD090000 		.4byte	.LASF24
 336 012e 05       		.byte	0x5
 337 012f 92       		.byte	0x92
 338 0130 B9000000 		.4byte	0xb9
 339 0134 03       		.uleb128 0x3
 340 0135 90020000 		.4byte	.LASF25
 341 0139 05       		.byte	0x5
 342 013a 94       		.byte	0x94
 343 013b CB000000 		.4byte	0xcb
 344 013f 03       		.uleb128 0x3
 345 0140 56020000 		.4byte	.LASF26
 346 0144 05       		.byte	0x5
 347 0145 A8       		.byte	0xa8
 348 0146 DD000000 		.4byte	0xdd
ARM GAS  /tmp/ccQHvjuS.s 			page 22


 349 014a 03       		.uleb128 0x3
 350 014b 0D060000 		.4byte	.LASF27
 351 014f 05       		.byte	0x5
 352 0150 AA       		.byte	0xaa
 353 0151 EF000000 		.4byte	0xef
 354 0155 03       		.uleb128 0x3
 355 0156 650B0000 		.4byte	.LASF28
 356 015a 05       		.byte	0x5
 357 015b BA       		.byte	0xba
 358 015c 6B000000 		.4byte	0x6b
 359 0160 03       		.uleb128 0x3
 360 0161 36000000 		.4byte	.LASF29
 361 0165 05       		.byte	0x5
 362 0166 BC       		.byte	0xbc
 363 0167 0C010000 		.4byte	0x10c
 364 016b 03       		.uleb128 0x3
 365 016c D6020000 		.4byte	.LASF30
 366 0170 05       		.byte	0x5
 367 0171 C8       		.byte	0xc8
 368 0172 25000000 		.4byte	0x25
 369 0176 03       		.uleb128 0x3
 370 0177 6D010000 		.4byte	.LASF31
 371 017b 05       		.byte	0x5
 372 017c CA       		.byte	0xca
 373 017d 3C000000 		.4byte	0x3c
 374 0181 03       		.uleb128 0x3
 375 0182 3E0A0000 		.4byte	.LASF32
 376 0186 06       		.byte	0x6
 377 0187 14       		.byte	0x14
 378 0188 8A000000 		.4byte	0x8a
 379 018c 03       		.uleb128 0x3
 380 018d 11080000 		.4byte	.LASF33
 381 0191 06       		.byte	0x6
 382 0192 18       		.byte	0x18
 383 0193 9C000000 		.4byte	0x9c
 384 0197 04       		.uleb128 0x4
 385 0198 8C010000 		.4byte	0x18c
 386 019c 03       		.uleb128 0x3
 387 019d 1C0C0000 		.4byte	.LASF34
 388 01a1 06       		.byte	0x6
 389 01a2 20       		.byte	0x20
 390 01a3 AE000000 		.4byte	0xae
 391 01a7 03       		.uleb128 0x3
 392 01a8 070B0000 		.4byte	.LASF35
 393 01ac 06       		.byte	0x6
 394 01ad 24       		.byte	0x24
 395 01ae C0000000 		.4byte	0xc0
 396 01b2 03       		.uleb128 0x3
 397 01b3 940E0000 		.4byte	.LASF36
 398 01b7 06       		.byte	0x6
 399 01b8 2C       		.byte	0x2c
 400 01b9 D2000000 		.4byte	0xd2
 401 01bd 0A       		.uleb128 0xa
 402 01be B2010000 		.4byte	0x1b2
 403 01c2 03       		.uleb128 0x3
 404 01c3 75030000 		.4byte	.LASF37
 405 01c7 06       		.byte	0x6
ARM GAS  /tmp/ccQHvjuS.s 			page 23


 406 01c8 30       		.byte	0x30
 407 01c9 E4000000 		.4byte	0xe4
 408 01cd 0A       		.uleb128 0xa
 409 01ce C2010000 		.4byte	0x1c2
 410 01d2 04       		.uleb128 0x4
 411 01d3 C2010000 		.4byte	0x1c2
 412 01d7 03       		.uleb128 0x3
 413 01d8 96050000 		.4byte	.LASF38
 414 01dc 06       		.byte	0x6
 415 01dd 38       		.byte	0x38
 416 01de F6000000 		.4byte	0xf6
 417 01e2 03       		.uleb128 0x3
 418 01e3 0A100000 		.4byte	.LASF39
 419 01e7 06       		.byte	0x6
 420 01e8 3C       		.byte	0x3c
 421 01e9 01010000 		.4byte	0x101
 422 01ed 03       		.uleb128 0x3
 423 01ee FE0A0000 		.4byte	.LASF40
 424 01f2 06       		.byte	0x6
 425 01f3 43       		.byte	0x43
 426 01f4 6B010000 		.4byte	0x16b
 427 01f8 03       		.uleb128 0x3
 428 01f9 DF0D0000 		.4byte	.LASF41
 429 01fd 06       		.byte	0x6
 430 01fe 48       		.byte	0x48
 431 01ff 76010000 		.4byte	0x176
 432 0203 03       		.uleb128 0x3
 433 0204 89050000 		.4byte	.LASF42
 434 0208 07       		.byte	0x7
 435 0209 15       		.byte	0x15
 436 020a 13010000 		.4byte	0x113
 437 020e 03       		.uleb128 0x3
 438 020f 16090000 		.4byte	.LASF43
 439 0213 07       		.byte	0x7
 440 0214 16       		.byte	0x16
 441 0215 1E010000 		.4byte	0x11e
 442 0219 03       		.uleb128 0x3
 443 021a 49040000 		.4byte	.LASF44
 444 021e 07       		.byte	0x7
 445 021f 1B       		.byte	0x1b
 446 0220 29010000 		.4byte	0x129
 447 0224 03       		.uleb128 0x3
 448 0225 55110000 		.4byte	.LASF45
 449 0229 07       		.byte	0x7
 450 022a 1C       		.byte	0x1c
 451 022b 34010000 		.4byte	0x134
 452 022f 03       		.uleb128 0x3
 453 0230 9C0E0000 		.4byte	.LASF46
 454 0234 07       		.byte	0x7
 455 0235 21       		.byte	0x21
 456 0236 3F010000 		.4byte	0x13f
 457 023a 03       		.uleb128 0x3
 458 023b C10D0000 		.4byte	.LASF47
 459 023f 07       		.byte	0x7
 460 0240 22       		.byte	0x22
 461 0241 4A010000 		.4byte	0x14a
 462 0245 03       		.uleb128 0x3
ARM GAS  /tmp/ccQHvjuS.s 			page 24


 463 0246 B6050000 		.4byte	.LASF48
 464 024a 07       		.byte	0x7
 465 024b 27       		.byte	0x27
 466 024c 55010000 		.4byte	0x155
 467 0250 03       		.uleb128 0x3
 468 0251 22050000 		.4byte	.LASF49
 469 0255 07       		.byte	0x7
 470 0256 28       		.byte	0x28
 471 0257 60010000 		.4byte	0x160
 472 025b 03       		.uleb128 0x3
 473 025c 5F090000 		.4byte	.LASF50
 474 0260 07       		.byte	0x7
 475 0261 33       		.byte	0x33
 476 0262 25000000 		.4byte	0x25
 477 0266 03       		.uleb128 0x3
 478 0267 6F0F0000 		.4byte	.LASF51
 479 026b 07       		.byte	0x7
 480 026c 34       		.byte	0x34
 481 026d 3C000000 		.4byte	0x3c
 482 0271 03       		.uleb128 0x3
 483 0272 B7010000 		.4byte	.LASF52
 484 0276 07       		.byte	0x7
 485 0277 3D       		.byte	0x3d
 486 0278 25000000 		.4byte	0x25
 487 027c 03       		.uleb128 0x3
 488 027d 0D000000 		.4byte	.LASF53
 489 0281 07       		.byte	0x7
 490 0282 3E       		.byte	0x3e
 491 0283 3C000000 		.4byte	0x3c
 492 0287 03       		.uleb128 0x3
 493 0288 8D0B0000 		.4byte	.LASF54
 494 028c 07       		.byte	0x7
 495 028d 47       		.byte	0x47
 496 028e 25000000 		.4byte	0x25
 497 0292 03       		.uleb128 0x3
 498 0293 1D0A0000 		.4byte	.LASF55
 499 0297 07       		.byte	0x7
 500 0298 48       		.byte	0x48
 501 0299 3C000000 		.4byte	0x3c
 502 029d 03       		.uleb128 0x3
 503 029e 3C030000 		.4byte	.LASF56
 504 02a2 07       		.byte	0x7
 505 02a3 51       		.byte	0x51
 506 02a4 6B000000 		.4byte	0x6b
 507 02a8 03       		.uleb128 0x3
 508 02a9 A9010000 		.4byte	.LASF57
 509 02ad 07       		.byte	0x7
 510 02ae 52       		.byte	0x52
 511 02af 0C010000 		.4byte	0x10c
 512 02b3 03       		.uleb128 0x3
 513 02b4 96010000 		.4byte	.LASF58
 514 02b8 07       		.byte	0x7
 515 02b9 82       		.byte	0x82
 516 02ba 6B000000 		.4byte	0x6b
 517 02be 03       		.uleb128 0x3
 518 02bf 57040000 		.4byte	.LASF59
 519 02c3 07       		.byte	0x7
ARM GAS  /tmp/ccQHvjuS.s 			page 25


 520 02c4 8B       		.byte	0x8b
 521 02c5 0C010000 		.4byte	0x10c
 522 02c9 0B       		.uleb128 0xb
 523 02ca 04       		.byte	0x4
 524 02cb 05       		.uleb128 0x5
 525 02cc 04       		.byte	0x4
 526 02cd 07       		.byte	0x7
 527 02ce 56090000 		.4byte	.LASF60
 528 02d2 0C       		.uleb128 0xc
 529 02d3 CD010000 		.4byte	0x1cd
 530 02d7 E2020000 		.4byte	0x2e2
 531 02db 0D       		.uleb128 0xd
 532 02dc CB020000 		.4byte	0x2cb
 533 02e0 01       		.byte	0x1
 534 02e1 00       		.byte	0
 535 02e2 0A       		.uleb128 0xa
 536 02e3 D2020000 		.4byte	0x2d2
 537 02e7 0C       		.uleb128 0xc
 538 02e8 CD010000 		.4byte	0x1cd
 539 02ec F7020000 		.4byte	0x2f7
 540 02f0 0D       		.uleb128 0xd
 541 02f1 CB020000 		.4byte	0x2cb
 542 02f5 04       		.byte	0x4
 543 02f6 00       		.byte	0
 544 02f7 0A       		.uleb128 0xa
 545 02f8 E7020000 		.4byte	0x2e7
 546 02fc 0E       		.uleb128 0xe
 547 02fd FF0B0000 		.4byte	.LASF61
 548 0301 08       		.byte	0x8
 549 0302 6508     		.2byte	0x865
 550 0304 BD010000 		.4byte	0x1bd
 551 0308 0F       		.uleb128 0xf
 552 0309 5A000000 		.4byte	.LASF62
 553 030d 09       		.byte	0x9
 554 030e 3A       		.byte	0x3a
 555 030f C2010000 		.4byte	0x1c2
 556 0313 0C       		.uleb128 0xc
 557 0314 CD010000 		.4byte	0x1cd
 558 0318 23030000 		.4byte	0x323
 559 031c 0D       		.uleb128 0xd
 560 031d CB020000 		.4byte	0x2cb
 561 0321 00       		.byte	0
 562 0322 00       		.byte	0
 563 0323 0A       		.uleb128 0xa
 564 0324 13030000 		.4byte	0x313
 565 0328 0C       		.uleb128 0xc
 566 0329 CD010000 		.4byte	0x1cd
 567 032d 38030000 		.4byte	0x338
 568 0331 0D       		.uleb128 0xd
 569 0332 CB020000 		.4byte	0x2cb
 570 0336 0C       		.byte	0xc
 571 0337 00       		.byte	0
 572 0338 0A       		.uleb128 0xa
 573 0339 28030000 		.4byte	0x328
 574 033d 10       		.uleb128 0x10
 575 033e 6801     		.2byte	0x168
 576 0340 0A       		.byte	0xa
ARM GAS  /tmp/ccQHvjuS.s 			page 26


 577 0341 38       		.byte	0x38
 578 0342 660C0000 		.4byte	.LASF429
 579 0346 85060000 		.4byte	0x685
 580 034a 11       		.uleb128 0x11
 581 034b D1000000 		.4byte	.LASF63
 582 034f 0A       		.byte	0xa
 583 0350 39       		.byte	0x39
 584 0351 CD010000 		.4byte	0x1cd
 585 0355 00       		.byte	0
 586 0356 11       		.uleb128 0x11
 587 0357 CE100000 		.4byte	.LASF64
 588 035b 0A       		.byte	0xa
 589 035c 3A       		.byte	0x3a
 590 035d CD010000 		.4byte	0x1cd
 591 0361 04       		.byte	0x4
 592 0362 11       		.uleb128 0x11
 593 0363 B60E0000 		.4byte	.LASF65
 594 0367 0A       		.byte	0xa
 595 0368 3B       		.byte	0x3b
 596 0369 CD010000 		.4byte	0x1cd
 597 036d 08       		.byte	0x8
 598 036e 11       		.uleb128 0x11
 599 036f B40B0000 		.4byte	.LASF66
 600 0373 0A       		.byte	0xa
 601 0374 3C       		.byte	0x3c
 602 0375 23030000 		.4byte	0x323
 603 0379 0C       		.byte	0xc
 604 037a 11       		.uleb128 0x11
 605 037b BB080000 		.4byte	.LASF67
 606 037f 0A       		.byte	0xa
 607 0380 3D       		.byte	0x3d
 608 0381 CD010000 		.4byte	0x1cd
 609 0385 10       		.byte	0x10
 610 0386 11       		.uleb128 0x11
 611 0387 F2010000 		.4byte	.LASF68
 612 038b 0A       		.byte	0xa
 613 038c 3E       		.byte	0x3e
 614 038d CD010000 		.4byte	0x1cd
 615 0391 14       		.byte	0x14
 616 0392 11       		.uleb128 0x11
 617 0393 5B010000 		.4byte	.LASF69
 618 0397 0A       		.byte	0xa
 619 0398 3F       		.byte	0x3f
 620 0399 CD010000 		.4byte	0x1cd
 621 039d 18       		.byte	0x18
 622 039e 11       		.uleb128 0x11
 623 039f E1090000 		.4byte	.LASF70
 624 03a3 0A       		.byte	0xa
 625 03a4 40       		.byte	0x40
 626 03a5 23030000 		.4byte	0x323
 627 03a9 1C       		.byte	0x1c
 628 03aa 11       		.uleb128 0x11
 629 03ab 64080000 		.4byte	.LASF71
 630 03af 0A       		.byte	0xa
 631 03b0 41       		.byte	0x41
 632 03b1 CD010000 		.4byte	0x1cd
 633 03b5 20       		.byte	0x20
ARM GAS  /tmp/ccQHvjuS.s 			page 27


 634 03b6 11       		.uleb128 0x11
 635 03b7 12070000 		.4byte	.LASF72
 636 03bb 0A       		.byte	0xa
 637 03bc 42       		.byte	0x42
 638 03bd CD010000 		.4byte	0x1cd
 639 03c1 24       		.byte	0x24
 640 03c2 11       		.uleb128 0x11
 641 03c3 BC060000 		.4byte	.LASF73
 642 03c7 0A       		.byte	0xa
 643 03c8 43       		.byte	0x43
 644 03c9 CD010000 		.4byte	0x1cd
 645 03cd 28       		.byte	0x28
 646 03ce 11       		.uleb128 0x11
 647 03cf EB090000 		.4byte	.LASF74
 648 03d3 0A       		.byte	0xa
 649 03d4 44       		.byte	0x44
 650 03d5 23030000 		.4byte	0x323
 651 03d9 2C       		.byte	0x2c
 652 03da 11       		.uleb128 0x11
 653 03db F4040000 		.4byte	.LASF75
 654 03df 0A       		.byte	0xa
 655 03e0 45       		.byte	0x45
 656 03e1 CD010000 		.4byte	0x1cd
 657 03e5 30       		.byte	0x30
 658 03e6 11       		.uleb128 0x11
 659 03e7 02090000 		.4byte	.LASF76
 660 03eb 0A       		.byte	0xa
 661 03ec 46       		.byte	0x46
 662 03ed CD010000 		.4byte	0x1cd
 663 03f1 34       		.byte	0x34
 664 03f2 11       		.uleb128 0x11
 665 03f3 FE000000 		.4byte	.LASF77
 666 03f7 0A       		.byte	0xa
 667 03f8 47       		.byte	0x47
 668 03f9 CD010000 		.4byte	0x1cd
 669 03fd 38       		.byte	0x38
 670 03fe 11       		.uleb128 0x11
 671 03ff 3A070000 		.4byte	.LASF78
 672 0403 0A       		.byte	0xa
 673 0404 48       		.byte	0x48
 674 0405 CD010000 		.4byte	0x1cd
 675 0409 3C       		.byte	0x3c
 676 040a 11       		.uleb128 0x11
 677 040b 0A020000 		.4byte	.LASF79
 678 040f 0A       		.byte	0xa
 679 0410 49       		.byte	0x49
 680 0411 CD010000 		.4byte	0x1cd
 681 0415 40       		.byte	0x40
 682 0416 11       		.uleb128 0x11
 683 0417 D9000000 		.4byte	.LASF80
 684 041b 0A       		.byte	0xa
 685 041c 4A       		.byte	0x4a
 686 041d CD010000 		.4byte	0x1cd
 687 0421 44       		.byte	0x44
 688 0422 11       		.uleb128 0x11
 689 0423 170B0000 		.4byte	.LASF81
 690 0427 0A       		.byte	0xa
ARM GAS  /tmp/ccQHvjuS.s 			page 28


 691 0428 4B       		.byte	0x4b
 692 0429 CD010000 		.4byte	0x1cd
 693 042d 48       		.byte	0x48
 694 042e 11       		.uleb128 0x11
 695 042f 90000000 		.4byte	.LASF82
 696 0433 0A       		.byte	0xa
 697 0434 4C       		.byte	0x4c
 698 0435 CD010000 		.4byte	0x1cd
 699 0439 4C       		.byte	0x4c
 700 043a 11       		.uleb128 0x11
 701 043b D7110000 		.4byte	.LASF83
 702 043f 0A       		.byte	0xa
 703 0440 4D       		.byte	0x4d
 704 0441 CD010000 		.4byte	0x1cd
 705 0445 50       		.byte	0x50
 706 0446 11       		.uleb128 0x11
 707 0447 F8100000 		.4byte	.LASF84
 708 044b 0A       		.byte	0xa
 709 044c 4E       		.byte	0x4e
 710 044d CD010000 		.4byte	0x1cd
 711 0451 54       		.byte	0x54
 712 0452 11       		.uleb128 0x11
 713 0453 97100000 		.4byte	.LASF85
 714 0457 0A       		.byte	0xa
 715 0458 4F       		.byte	0x4f
 716 0459 CD010000 		.4byte	0x1cd
 717 045d 58       		.byte	0x58
 718 045e 11       		.uleb128 0x11
 719 045f C50B0000 		.4byte	.LASF86
 720 0463 0A       		.byte	0xa
 721 0464 50       		.byte	0x50
 722 0465 23030000 		.4byte	0x323
 723 0469 5C       		.byte	0x5c
 724 046a 11       		.uleb128 0x11
 725 046b C5060000 		.4byte	.LASF87
 726 046f 0A       		.byte	0xa
 727 0470 51       		.byte	0x51
 728 0471 CD010000 		.4byte	0x1cd
 729 0475 60       		.byte	0x60
 730 0476 11       		.uleb128 0x11
 731 0477 2D080000 		.4byte	.LASF88
 732 047b 0A       		.byte	0xa
 733 047c 52       		.byte	0x52
 734 047d CD010000 		.4byte	0x1cd
 735 0481 64       		.byte	0x64
 736 0482 11       		.uleb128 0x11
 737 0483 AE0F0000 		.4byte	.LASF89
 738 0487 0A       		.byte	0xa
 739 0488 53       		.byte	0x53
 740 0489 CD010000 		.4byte	0x1cd
 741 048d 68       		.byte	0x68
 742 048e 11       		.uleb128 0x11
 743 048f FE090000 		.4byte	.LASF90
 744 0493 0A       		.byte	0xa
 745 0494 54       		.byte	0x54
 746 0495 23030000 		.4byte	0x323
 747 0499 6C       		.byte	0x6c
ARM GAS  /tmp/ccQHvjuS.s 			page 29


 748 049a 11       		.uleb128 0x11
 749 049b 58060000 		.4byte	.LASF91
 750 049f 0A       		.byte	0xa
 751 04a0 55       		.byte	0x55
 752 04a1 E2020000 		.4byte	0x2e2
 753 04a5 70       		.byte	0x70
 754 04a6 11       		.uleb128 0x11
 755 04a7 080A0000 		.4byte	.LASF92
 756 04ab 0A       		.byte	0xa
 757 04ac 56       		.byte	0x56
 758 04ad E2020000 		.4byte	0x2e2
 759 04b1 78       		.byte	0x78
 760 04b2 11       		.uleb128 0x11
 761 04b3 0B090000 		.4byte	.LASF93
 762 04b7 0A       		.byte	0xa
 763 04b8 57       		.byte	0x57
 764 04b9 CD010000 		.4byte	0x1cd
 765 04bd 80       		.byte	0x80
 766 04be 11       		.uleb128 0x11
 767 04bf 4C0B0000 		.4byte	.LASF94
 768 04c3 0A       		.byte	0xa
 769 04c4 58       		.byte	0x58
 770 04c5 CD010000 		.4byte	0x1cd
 771 04c9 84       		.byte	0x84
 772 04ca 11       		.uleb128 0x11
 773 04cb 290C0000 		.4byte	.LASF95
 774 04cf 0A       		.byte	0xa
 775 04d0 59       		.byte	0x59
 776 04d1 CD010000 		.4byte	0x1cd
 777 04d5 88       		.byte	0x88
 778 04d6 11       		.uleb128 0x11
 779 04d7 CE110000 		.4byte	.LASF96
 780 04db 0A       		.byte	0xa
 781 04dc 5A       		.byte	0x5a
 782 04dd CD010000 		.4byte	0x1cd
 783 04e1 8C       		.byte	0x8c
 784 04e2 11       		.uleb128 0x11
 785 04e3 8A0F0000 		.4byte	.LASF97
 786 04e7 0A       		.byte	0xa
 787 04e8 5B       		.byte	0x5b
 788 04e9 CD010000 		.4byte	0x1cd
 789 04ed 90       		.byte	0x90
 790 04ee 11       		.uleb128 0x11
 791 04ef 06110000 		.4byte	.LASF98
 792 04f3 0A       		.byte	0xa
 793 04f4 5C       		.byte	0x5c
 794 04f5 CD010000 		.4byte	0x1cd
 795 04f9 94       		.byte	0x94
 796 04fa 11       		.uleb128 0x11
 797 04fb 310F0000 		.4byte	.LASF99
 798 04ff 0A       		.byte	0xa
 799 0500 5D       		.byte	0x5d
 800 0501 CD010000 		.4byte	0x1cd
 801 0505 98       		.byte	0x98
 802 0506 11       		.uleb128 0x11
 803 0507 24000000 		.4byte	.LASF100
 804 050b 0A       		.byte	0xa
ARM GAS  /tmp/ccQHvjuS.s 			page 30


 805 050c 5E       		.byte	0x5e
 806 050d 23030000 		.4byte	0x323
 807 0511 9C       		.byte	0x9c
 808 0512 11       		.uleb128 0x11
 809 0513 D90B0000 		.4byte	.LASF101
 810 0517 0A       		.byte	0xa
 811 0518 5F       		.byte	0x5f
 812 0519 CD010000 		.4byte	0x1cd
 813 051d A0       		.byte	0xa0
 814 051e 11       		.uleb128 0x11
 815 051f AE0A0000 		.4byte	.LASF102
 816 0523 0A       		.byte	0xa
 817 0524 60       		.byte	0x60
 818 0525 CD010000 		.4byte	0x1cd
 819 0529 A4       		.byte	0xa4
 820 052a 11       		.uleb128 0x11
 821 052b 820A0000 		.4byte	.LASF103
 822 052f 0A       		.byte	0xa
 823 0530 61       		.byte	0x61
 824 0531 CD010000 		.4byte	0x1cd
 825 0535 A8       		.byte	0xa8
 826 0536 11       		.uleb128 0x11
 827 0537 E20B0000 		.4byte	.LASF104
 828 053b 0A       		.byte	0xa
 829 053c 62       		.byte	0x62
 830 053d 23030000 		.4byte	0x323
 831 0541 AC       		.byte	0xac
 832 0542 11       		.uleb128 0x11
 833 0543 F50B0000 		.4byte	.LASF105
 834 0547 0A       		.byte	0xa
 835 0548 63       		.byte	0x63
 836 0549 CD010000 		.4byte	0x1cd
 837 054d B0       		.byte	0xb0
 838 054e 11       		.uleb128 0x11
 839 054f E80A0000 		.4byte	.LASF106
 840 0553 0A       		.byte	0xa
 841 0554 64       		.byte	0x64
 842 0555 CD010000 		.4byte	0x1cd
 843 0559 B4       		.byte	0xb4
 844 055a 11       		.uleb128 0x11
 845 055b AE110000 		.4byte	.LASF107
 846 055f 0A       		.byte	0xa
 847 0560 65       		.byte	0x65
 848 0561 CD010000 		.4byte	0x1cd
 849 0565 B8       		.byte	0xb8
 850 0566 11       		.uleb128 0x11
 851 0567 2B0A0000 		.4byte	.LASF108
 852 056b 0A       		.byte	0xa
 853 056c 66       		.byte	0x66
 854 056d 23030000 		.4byte	0x323
 855 0571 BC       		.byte	0xbc
 856 0572 11       		.uleb128 0x11
 857 0573 07010000 		.4byte	.LASF109
 858 0577 0A       		.byte	0xa
 859 0578 67       		.byte	0x67
 860 0579 CD010000 		.4byte	0x1cd
 861 057d C0       		.byte	0xc0
ARM GAS  /tmp/ccQHvjuS.s 			page 31


 862 057e 11       		.uleb128 0x11
 863 057f EB030000 		.4byte	.LASF110
 864 0583 0A       		.byte	0xa
 865 0584 68       		.byte	0x68
 866 0585 CD010000 		.4byte	0x1cd
 867 0589 C4       		.byte	0xc4
 868 058a 11       		.uleb128 0x11
 869 058b 3D080000 		.4byte	.LASF111
 870 058f 0A       		.byte	0xa
 871 0590 69       		.byte	0x69
 872 0591 CD010000 		.4byte	0x1cd
 873 0595 C8       		.byte	0xc8
 874 0596 11       		.uleb128 0x11
 875 0597 FA0E0000 		.4byte	.LASF112
 876 059b 0A       		.byte	0xa
 877 059c 6A       		.byte	0x6a
 878 059d 23030000 		.4byte	0x323
 879 05a1 CC       		.byte	0xcc
 880 05a2 11       		.uleb128 0x11
 881 05a3 00080000 		.4byte	.LASF113
 882 05a7 0A       		.byte	0xa
 883 05a8 6B       		.byte	0x6b
 884 05a9 CD010000 		.4byte	0x1cd
 885 05ad D0       		.byte	0xd0
 886 05ae 11       		.uleb128 0x11
 887 05af 340C0000 		.4byte	.LASF114
 888 05b3 0A       		.byte	0xa
 889 05b4 6C       		.byte	0x6c
 890 05b5 CD010000 		.4byte	0x1cd
 891 05b9 D4       		.byte	0xd4
 892 05ba 11       		.uleb128 0x11
 893 05bb 99090000 		.4byte	.LASF115
 894 05bf 0A       		.byte	0xa
 895 05c0 6D       		.byte	0x6d
 896 05c1 CD010000 		.4byte	0x1cd
 897 05c5 D8       		.byte	0xd8
 898 05c6 11       		.uleb128 0x11
 899 05c7 050F0000 		.4byte	.LASF116
 900 05cb 0A       		.byte	0xa
 901 05cc 6E       		.byte	0x6e
 902 05cd 23030000 		.4byte	0x323
 903 05d1 DC       		.byte	0xdc
 904 05d2 11       		.uleb128 0x11
 905 05d3 70050000 		.4byte	.LASF117
 906 05d7 0A       		.byte	0xa
 907 05d8 6F       		.byte	0x6f
 908 05d9 CD010000 		.4byte	0x1cd
 909 05dd E0       		.byte	0xe0
 910 05de 11       		.uleb128 0x11
 911 05df C8000000 		.4byte	.LASF118
 912 05e3 0A       		.byte	0xa
 913 05e4 70       		.byte	0x70
 914 05e5 CD010000 		.4byte	0x1cd
 915 05e9 E4       		.byte	0xe4
 916 05ea 11       		.uleb128 0x11
 917 05eb B7070000 		.4byte	.LASF119
 918 05ef 0A       		.byte	0xa
ARM GAS  /tmp/ccQHvjuS.s 			page 32


 919 05f0 71       		.byte	0x71
 920 05f1 CD010000 		.4byte	0x1cd
 921 05f5 E8       		.byte	0xe8
 922 05f6 11       		.uleb128 0x11
 923 05f7 100F0000 		.4byte	.LASF120
 924 05fb 0A       		.byte	0xa
 925 05fc 72       		.byte	0x72
 926 05fd F7020000 		.4byte	0x2f7
 927 0601 EC       		.byte	0xec
 928 0602 12       		.uleb128 0x12
 929 0603 3D040000 		.4byte	.LASF121
 930 0607 0A       		.byte	0xa
 931 0608 73       		.byte	0x73
 932 0609 CD010000 		.4byte	0x1cd
 933 060d 0001     		.2byte	0x100
 934 060f 12       		.uleb128 0x12
 935 0610 1B0F0000 		.4byte	.LASF122
 936 0614 0A       		.byte	0xa
 937 0615 74       		.byte	0x74
 938 0616 F7020000 		.4byte	0x2f7
 939 061a 0401     		.2byte	0x104
 940 061c 12       		.uleb128 0x12
 941 061d 0B050000 		.4byte	.LASF123
 942 0621 0A       		.byte	0xa
 943 0622 75       		.byte	0x75
 944 0623 CD010000 		.4byte	0x1cd
 945 0627 1801     		.2byte	0x118
 946 0629 12       		.uleb128 0x12
 947 062a 260F0000 		.4byte	.LASF124
 948 062e 0A       		.byte	0xa
 949 062f 76       		.byte	0x76
 950 0630 38030000 		.4byte	0x338
 951 0634 1C01     		.2byte	0x11c
 952 0636 12       		.uleb128 0x12
 953 0637 1F0B0000 		.4byte	.LASF125
 954 063b 0A       		.byte	0xa
 955 063c 77       		.byte	0x77
 956 063d CD010000 		.4byte	0x1cd
 957 0641 5001     		.2byte	0x150
 958 0643 12       		.uleb128 0x12
 959 0644 1B070000 		.4byte	.LASF126
 960 0648 0A       		.byte	0xa
 961 0649 78       		.byte	0x78
 962 064a CD010000 		.4byte	0x1cd
 963 064e 5401     		.2byte	0x154
 964 0650 12       		.uleb128 0x12
 965 0651 C4100000 		.4byte	.LASF127
 966 0655 0A       		.byte	0xa
 967 0656 79       		.byte	0x79
 968 0657 CD010000 		.4byte	0x1cd
 969 065b 5801     		.2byte	0x158
 970 065d 12       		.uleb128 0x12
 971 065e 1A110000 		.4byte	.LASF128
 972 0662 0A       		.byte	0xa
 973 0663 7A       		.byte	0x7a
 974 0664 CD010000 		.4byte	0x1cd
 975 0668 5C01     		.2byte	0x15c
ARM GAS  /tmp/ccQHvjuS.s 			page 33


 976 066a 12       		.uleb128 0x12
 977 066b AC050000 		.4byte	.LASF129
 978 066f 0A       		.byte	0xa
 979 0670 7B       		.byte	0x7b
 980 0671 CD010000 		.4byte	0x1cd
 981 0675 6001     		.2byte	0x160
 982 0677 12       		.uleb128 0x12
 983 0678 11030000 		.4byte	.LASF130
 984 067c 0A       		.byte	0xa
 985 067d 7C       		.byte	0x7c
 986 067e CD010000 		.4byte	0x1cd
 987 0682 6401     		.2byte	0x164
 988 0684 00       		.byte	0
 989 0685 13       		.uleb128 0x13
 990 0686 50696F00 		.ascii	"Pio\000"
 991 068a 0A       		.byte	0xa
 992 068b 7D       		.byte	0x7d
 993 068c 3D030000 		.4byte	0x33d
 994 0690 14       		.uleb128 0x14
 995 0691 0C       		.byte	0xc
 996 0692 0B       		.byte	0xb
 997 0693 38       		.byte	0x38
 998 0694 2A070000 		.4byte	.LASF135
 999 0698 C1060000 		.4byte	0x6c1
 1000 069c 11       		.uleb128 0x11
 1001 069d 2E000000 		.4byte	.LASF131
 1002 06a1 0B       		.byte	0xb
 1003 06a2 39       		.byte	0x39
 1004 06a3 CD010000 		.4byte	0x1cd
 1005 06a7 00       		.byte	0
 1006 06a8 11       		.uleb128 0x11
 1007 06a9 F6000000 		.4byte	.LASF132
 1008 06ad 0B       		.byte	0xb
 1009 06ae 3A       		.byte	0x3a
 1010 06af CD010000 		.4byte	0x1cd
 1011 06b3 04       		.byte	0x4
 1012 06b4 11       		.uleb128 0x11
 1013 06b5 AC0B0000 		.4byte	.LASF133
 1014 06b9 0B       		.byte	0xb
 1015 06ba 3B       		.byte	0x3b
 1016 06bb CD010000 		.4byte	0x1cd
 1017 06bf 08       		.byte	0x8
 1018 06c0 00       		.byte	0
 1019 06c1 03       		.uleb128 0x3
 1020 06c2 92030000 		.4byte	.LASF134
 1021 06c6 0B       		.byte	0xb
 1022 06c7 3C       		.byte	0x3c
 1023 06c8 90060000 		.4byte	0x690
 1024 06cc 14       		.uleb128 0x14
 1025 06cd 0C       		.byte	0xc
 1026 06ce 0C       		.byte	0xc
 1027 06cf 38       		.byte	0x38
 1028 06d0 9A0B0000 		.4byte	.LASF136
 1029 06d4 FD060000 		.4byte	0x6fd
 1030 06d8 11       		.uleb128 0x11
 1031 06d9 3A020000 		.4byte	.LASF137
 1032 06dd 0C       		.byte	0xc
ARM GAS  /tmp/ccQHvjuS.s 			page 34


 1033 06de 39       		.byte	0x39
 1034 06df CD010000 		.4byte	0x1cd
 1035 06e3 00       		.byte	0
 1036 06e4 11       		.uleb128 0x11
 1037 06e5 EE0D0000 		.4byte	.LASF138
 1038 06e9 0C       		.byte	0xc
 1039 06ea 3A       		.byte	0x3a
 1040 06eb CD010000 		.4byte	0x1cd
 1041 06ef 04       		.byte	0x4
 1042 06f0 11       		.uleb128 0x11
 1043 06f1 F6020000 		.4byte	.LASF139
 1044 06f5 0C       		.byte	0xc
 1045 06f6 3B       		.byte	0x3b
 1046 06f7 CD010000 		.4byte	0x1cd
 1047 06fb 08       		.byte	0x8
 1048 06fc 00       		.byte	0
 1049 06fd 13       		.uleb128 0x13
 1050 06fe 57647400 		.ascii	"Wdt\000"
 1051 0702 0C       		.byte	0xc
 1052 0703 3C       		.byte	0x3c
 1053 0704 CC060000 		.4byte	0x6cc
 1054 0708 03       		.uleb128 0x3
 1055 0709 F7110000 		.4byte	.LASF140
 1056 070d 0D       		.byte	0xd
 1057 070e 07       		.byte	0x7
 1058 070f 25000000 		.4byte	0x25
 1059 0713 03       		.uleb128 0x3
 1060 0714 4E110000 		.4byte	.LASF141
 1061 0718 0E       		.byte	0xe
 1062 0719 2C       		.byte	0x2c
 1063 071a DD000000 		.4byte	0xdd
 1064 071e 03       		.uleb128 0x3
 1065 071f E1020000 		.4byte	.LASF142
 1066 0723 0E       		.byte	0xe
 1067 0724 72       		.byte	0x72
 1068 0725 DD000000 		.4byte	0xdd
 1069 0729 08       		.uleb128 0x8
 1070 072a 870E0000 		.4byte	.LASF143
 1071 072e 04       		.byte	0x4
 1072 072f 6501     		.2byte	0x165
 1073 0731 3C000000 		.4byte	0x3c
 1074 0735 14       		.uleb128 0x14
 1075 0736 08       		.byte	0x8
 1076 0737 0E       		.byte	0xe
 1077 0738 A4       		.byte	0xa4
 1078 0739 CE060000 		.4byte	.LASF144
 1079 073d 79070000 		.4byte	0x779
 1080 0741 15       		.uleb128 0x15
 1081 0742 04       		.byte	0x4
 1082 0743 0E       		.byte	0xe
 1083 0744 A7       		.byte	0xa7
 1084 0745 60070000 		.4byte	0x760
 1085 0749 16       		.uleb128 0x16
 1086 074a 0B080000 		.4byte	.LASF145
 1087 074e 0E       		.byte	0xe
 1088 074f A8       		.byte	0xa8
 1089 0750 29070000 		.4byte	0x729
ARM GAS  /tmp/ccQHvjuS.s 			page 35


 1090 0754 16       		.uleb128 0x16
 1091 0755 550C0000 		.4byte	.LASF146
 1092 0759 0E       		.byte	0xe
 1093 075a A9       		.byte	0xa9
 1094 075b 79070000 		.4byte	0x779
 1095 075f 00       		.byte	0
 1096 0760 11       		.uleb128 0x11
 1097 0761 B2030000 		.4byte	.LASF147
 1098 0765 0E       		.byte	0xe
 1099 0766 A5       		.byte	0xa5
 1100 0767 25000000 		.4byte	0x25
 1101 076b 00       		.byte	0
 1102 076c 11       		.uleb128 0x11
 1103 076d 61040000 		.4byte	.LASF148
 1104 0771 0E       		.byte	0xe
 1105 0772 AA       		.byte	0xaa
 1106 0773 41070000 		.4byte	0x741
 1107 0777 04       		.byte	0x4
 1108 0778 00       		.byte	0
 1109 0779 0C       		.uleb128 0xc
 1110 077a A7000000 		.4byte	0xa7
 1111 077e 89070000 		.4byte	0x789
 1112 0782 0D       		.uleb128 0xd
 1113 0783 CB020000 		.4byte	0x2cb
 1114 0787 03       		.byte	0x3
 1115 0788 00       		.byte	0
 1116 0789 03       		.uleb128 0x3
 1117 078a A4090000 		.4byte	.LASF149
 1118 078e 0E       		.byte	0xe
 1119 078f AB       		.byte	0xab
 1120 0790 35070000 		.4byte	0x735
 1121 0794 03       		.uleb128 0x3
 1122 0795 F5090000 		.4byte	.LASF150
 1123 0799 0E       		.byte	0xe
 1124 079a AF       		.byte	0xaf
 1125 079b 08070000 		.4byte	0x708
 1126 079f 03       		.uleb128 0x3
 1127 07a0 A6020000 		.4byte	.LASF151
 1128 07a4 0F       		.byte	0xf
 1129 07a5 16       		.byte	0x16
 1130 07a6 EF000000 		.4byte	0xef
 1131 07aa 17       		.uleb128 0x17
 1132 07ab 1B030000 		.4byte	.LASF156
 1133 07af 18       		.byte	0x18
 1134 07b0 0F       		.byte	0xf
 1135 07b1 2D       		.byte	0x2d
 1136 07b2 FD070000 		.4byte	0x7fd
 1137 07b6 11       		.uleb128 0x11
 1138 07b7 35060000 		.4byte	.LASF152
 1139 07bb 0F       		.byte	0xf
 1140 07bc 2F       		.byte	0x2f
 1141 07bd FD070000 		.4byte	0x7fd
 1142 07c1 00       		.byte	0
 1143 07c2 18       		.uleb128 0x18
 1144 07c3 5F6B00   		.ascii	"_k\000"
 1145 07c6 0F       		.byte	0xf
 1146 07c7 30       		.byte	0x30
ARM GAS  /tmp/ccQHvjuS.s 			page 36


 1147 07c8 25000000 		.4byte	0x25
 1148 07cc 04       		.byte	0x4
 1149 07cd 11       		.uleb128 0x11
 1150 07ce C80C0000 		.4byte	.LASF153
 1151 07d2 0F       		.byte	0xf
 1152 07d3 30       		.byte	0x30
 1153 07d4 25000000 		.4byte	0x25
 1154 07d8 08       		.byte	0x8
 1155 07d9 11       		.uleb128 0x11
 1156 07da 4D050000 		.4byte	.LASF154
 1157 07de 0F       		.byte	0xf
 1158 07df 30       		.byte	0x30
 1159 07e0 25000000 		.4byte	0x25
 1160 07e4 0C       		.byte	0xc
 1161 07e5 11       		.uleb128 0x11
 1162 07e6 A4040000 		.4byte	.LASF155
 1163 07ea 0F       		.byte	0xf
 1164 07eb 30       		.byte	0x30
 1165 07ec 25000000 		.4byte	0x25
 1166 07f0 10       		.byte	0x10
 1167 07f1 18       		.uleb128 0x18
 1168 07f2 5F7800   		.ascii	"_x\000"
 1169 07f5 0F       		.byte	0xf
 1170 07f6 31       		.byte	0x31
 1171 07f7 03080000 		.4byte	0x803
 1172 07fb 14       		.byte	0x14
 1173 07fc 00       		.byte	0
 1174 07fd 19       		.uleb128 0x19
 1175 07fe 04       		.byte	0x4
 1176 07ff AA070000 		.4byte	0x7aa
 1177 0803 0C       		.uleb128 0xc
 1178 0804 9F070000 		.4byte	0x79f
 1179 0808 13080000 		.4byte	0x813
 1180 080c 0D       		.uleb128 0xd
 1181 080d CB020000 		.4byte	0x2cb
 1182 0811 00       		.byte	0
 1183 0812 00       		.byte	0
 1184 0813 17       		.uleb128 0x17
 1185 0814 E90D0000 		.4byte	.LASF157
 1186 0818 24       		.byte	0x24
 1187 0819 0F       		.byte	0xf
 1188 081a 35       		.byte	0x35
 1189 081b 8C080000 		.4byte	0x88c
 1190 081f 11       		.uleb128 0x11
 1191 0820 33010000 		.4byte	.LASF158
 1192 0824 0F       		.byte	0xf
 1193 0825 37       		.byte	0x37
 1194 0826 25000000 		.4byte	0x25
 1195 082a 00       		.byte	0
 1196 082b 11       		.uleb128 0x11
 1197 082c F3030000 		.4byte	.LASF159
 1198 0830 0F       		.byte	0xf
 1199 0831 38       		.byte	0x38
 1200 0832 25000000 		.4byte	0x25
 1201 0836 04       		.byte	0x4
 1202 0837 11       		.uleb128 0x11
 1203 0838 88030000 		.4byte	.LASF160
ARM GAS  /tmp/ccQHvjuS.s 			page 37


 1204 083c 0F       		.byte	0xf
 1205 083d 39       		.byte	0x39
 1206 083e 25000000 		.4byte	0x25
 1207 0842 08       		.byte	0x8
 1208 0843 11       		.uleb128 0x11
 1209 0844 30070000 		.4byte	.LASF161
 1210 0848 0F       		.byte	0xf
 1211 0849 3A       		.byte	0x3a
 1212 084a 25000000 		.4byte	0x25
 1213 084e 0C       		.byte	0xc
 1214 084f 11       		.uleb128 0x11
 1215 0850 C20A0000 		.4byte	.LASF162
 1216 0854 0F       		.byte	0xf
 1217 0855 3B       		.byte	0x3b
 1218 0856 25000000 		.4byte	0x25
 1219 085a 10       		.byte	0x10
 1220 085b 11       		.uleb128 0x11
 1221 085c 370B0000 		.4byte	.LASF163
 1222 0860 0F       		.byte	0xf
 1223 0861 3C       		.byte	0x3c
 1224 0862 25000000 		.4byte	0x25
 1225 0866 14       		.byte	0x14
 1226 0867 11       		.uleb128 0x11
 1227 0868 32030000 		.4byte	.LASF164
 1228 086c 0F       		.byte	0xf
 1229 086d 3D       		.byte	0x3d
 1230 086e 25000000 		.4byte	0x25
 1231 0872 18       		.byte	0x18
 1232 0873 11       		.uleb128 0x11
 1233 0874 E8050000 		.4byte	.LASF165
 1234 0878 0F       		.byte	0xf
 1235 0879 3E       		.byte	0x3e
 1236 087a 25000000 		.4byte	0x25
 1237 087e 1C       		.byte	0x1c
 1238 087f 11       		.uleb128 0x11
 1239 0880 120A0000 		.4byte	.LASF166
 1240 0884 0F       		.byte	0xf
 1241 0885 3F       		.byte	0x3f
 1242 0886 25000000 		.4byte	0x25
 1243 088a 20       		.byte	0x20
 1244 088b 00       		.byte	0
 1245 088c 1A       		.uleb128 0x1a
 1246 088d B3000000 		.4byte	.LASF167
 1247 0891 0801     		.2byte	0x108
 1248 0893 0F       		.byte	0xf
 1249 0894 48       		.byte	0x48
 1250 0895 CC080000 		.4byte	0x8cc
 1251 0899 11       		.uleb128 0x11
 1252 089a B0100000 		.4byte	.LASF168
 1253 089e 0F       		.byte	0xf
 1254 089f 49       		.byte	0x49
 1255 08a0 CC080000 		.4byte	0x8cc
 1256 08a4 00       		.byte	0
 1257 08a5 11       		.uleb128 0x11
 1258 08a6 BE0E0000 		.4byte	.LASF169
 1259 08aa 0F       		.byte	0xf
 1260 08ab 4A       		.byte	0x4a
ARM GAS  /tmp/ccQHvjuS.s 			page 38


 1261 08ac CC080000 		.4byte	0x8cc
 1262 08b0 80       		.byte	0x80
 1263 08b1 12       		.uleb128 0x12
 1264 08b2 24110000 		.4byte	.LASF170
 1265 08b6 0F       		.byte	0xf
 1266 08b7 4C       		.byte	0x4c
 1267 08b8 9F070000 		.4byte	0x79f
 1268 08bc 0001     		.2byte	0x100
 1269 08be 12       		.uleb128 0x12
 1270 08bf 94110000 		.4byte	.LASF171
 1271 08c3 0F       		.byte	0xf
 1272 08c4 4F       		.byte	0x4f
 1273 08c5 9F070000 		.4byte	0x79f
 1274 08c9 0401     		.2byte	0x104
 1275 08cb 00       		.byte	0
 1276 08cc 0C       		.uleb128 0xc
 1277 08cd C9020000 		.4byte	0x2c9
 1278 08d1 DC080000 		.4byte	0x8dc
 1279 08d5 0D       		.uleb128 0xd
 1280 08d6 CB020000 		.4byte	0x2cb
 1281 08da 1F       		.byte	0x1f
 1282 08db 00       		.byte	0
 1283 08dc 1A       		.uleb128 0x1a
 1284 08dd 750B0000 		.4byte	.LASF172
 1285 08e1 9001     		.2byte	0x190
 1286 08e3 0F       		.byte	0xf
 1287 08e4 5B       		.byte	0x5b
 1288 08e5 1A090000 		.4byte	0x91a
 1289 08e9 11       		.uleb128 0x11
 1290 08ea 35060000 		.4byte	.LASF152
 1291 08ee 0F       		.byte	0xf
 1292 08ef 5C       		.byte	0x5c
 1293 08f0 1A090000 		.4byte	0x91a
 1294 08f4 00       		.byte	0
 1295 08f5 11       		.uleb128 0x11
 1296 08f6 FE050000 		.4byte	.LASF173
 1297 08fa 0F       		.byte	0xf
 1298 08fb 5D       		.byte	0x5d
 1299 08fc 25000000 		.4byte	0x25
 1300 0900 04       		.byte	0x4
 1301 0901 11       		.uleb128 0x11
 1302 0902 E9020000 		.4byte	.LASF174
 1303 0906 0F       		.byte	0xf
 1304 0907 5F       		.byte	0x5f
 1305 0908 20090000 		.4byte	0x920
 1306 090c 08       		.byte	0x8
 1307 090d 11       		.uleb128 0x11
 1308 090e B3000000 		.4byte	.LASF167
 1309 0912 0F       		.byte	0xf
 1310 0913 60       		.byte	0x60
 1311 0914 8C080000 		.4byte	0x88c
 1312 0918 88       		.byte	0x88
 1313 0919 00       		.byte	0
 1314 091a 19       		.uleb128 0x19
 1315 091b 04       		.byte	0x4
 1316 091c DC080000 		.4byte	0x8dc
 1317 0920 0C       		.uleb128 0xc
ARM GAS  /tmp/ccQHvjuS.s 			page 39


 1318 0921 30090000 		.4byte	0x930
 1319 0925 30090000 		.4byte	0x930
 1320 0929 0D       		.uleb128 0xd
 1321 092a CB020000 		.4byte	0x2cb
 1322 092e 1F       		.byte	0x1f
 1323 092f 00       		.byte	0
 1324 0930 19       		.uleb128 0x19
 1325 0931 04       		.byte	0x4
 1326 0932 36090000 		.4byte	0x936
 1327 0936 1B       		.uleb128 0x1b
 1328 0937 17       		.uleb128 0x17
 1329 0938 D50F0000 		.4byte	.LASF175
 1330 093c 08       		.byte	0x8
 1331 093d 0F       		.byte	0xf
 1332 093e 73       		.byte	0x73
 1333 093f 5C090000 		.4byte	0x95c
 1334 0943 11       		.uleb128 0x11
 1335 0944 D7080000 		.4byte	.LASF176
 1336 0948 0F       		.byte	0xf
 1337 0949 74       		.byte	0x74
 1338 094a 5C090000 		.4byte	0x95c
 1339 094e 00       		.byte	0
 1340 094f 11       		.uleb128 0x11
 1341 0950 2D110000 		.4byte	.LASF177
 1342 0954 0F       		.byte	0xf
 1343 0955 75       		.byte	0x75
 1344 0956 25000000 		.4byte	0x25
 1345 095a 04       		.byte	0x4
 1346 095b 00       		.byte	0
 1347 095c 19       		.uleb128 0x19
 1348 095d 04       		.byte	0x4
 1349 095e A7000000 		.4byte	0xa7
 1350 0962 17       		.uleb128 0x17
 1351 0963 9C040000 		.4byte	.LASF178
 1352 0967 68       		.byte	0x68
 1353 0968 0F       		.byte	0xf
 1354 0969 B3       		.byte	0xb3
 1355 096a 8C0A0000 		.4byte	0xa8c
 1356 096e 18       		.uleb128 0x18
 1357 096f 5F7000   		.ascii	"_p\000"
 1358 0972 0F       		.byte	0xf
 1359 0973 B4       		.byte	0xb4
 1360 0974 5C090000 		.4byte	0x95c
 1361 0978 00       		.byte	0
 1362 0979 18       		.uleb128 0x18
 1363 097a 5F7200   		.ascii	"_r\000"
 1364 097d 0F       		.byte	0xf
 1365 097e B5       		.byte	0xb5
 1366 097f 25000000 		.4byte	0x25
 1367 0983 04       		.byte	0x4
 1368 0984 18       		.uleb128 0x18
 1369 0985 5F7700   		.ascii	"_w\000"
 1370 0988 0F       		.byte	0xf
 1371 0989 B6       		.byte	0xb6
 1372 098a 25000000 		.4byte	0x25
 1373 098e 08       		.byte	0x8
 1374 098f 11       		.uleb128 0x11
ARM GAS  /tmp/ccQHvjuS.s 			page 40


 1375 0990 8F010000 		.4byte	.LASF179
 1376 0994 0F       		.byte	0xf
 1377 0995 B7       		.byte	0xb7
 1378 0996 B9000000 		.4byte	0xb9
 1379 099a 0C       		.byte	0xc
 1380 099b 11       		.uleb128 0x11
 1381 099c 730C0000 		.4byte	.LASF180
 1382 09a0 0F       		.byte	0xf
 1383 09a1 B8       		.byte	0xb8
 1384 09a2 B9000000 		.4byte	0xb9
 1385 09a6 0E       		.byte	0xe
 1386 09a7 18       		.uleb128 0x18
 1387 09a8 5F626600 		.ascii	"_bf\000"
 1388 09ac 0F       		.byte	0xf
 1389 09ad B9       		.byte	0xb9
 1390 09ae 37090000 		.4byte	0x937
 1391 09b2 10       		.byte	0x10
 1392 09b3 11       		.uleb128 0x11
 1393 09b4 86010000 		.4byte	.LASF181
 1394 09b8 0F       		.byte	0xf
 1395 09b9 BA       		.byte	0xba
 1396 09ba 25000000 		.4byte	0x25
 1397 09be 18       		.byte	0x18
 1398 09bf 11       		.uleb128 0x11
 1399 09c0 EE020000 		.4byte	.LASF182
 1400 09c4 0F       		.byte	0xf
 1401 09c5 C1       		.byte	0xc1
 1402 09c6 C9020000 		.4byte	0x2c9
 1403 09ca 1C       		.byte	0x1c
 1404 09cb 11       		.uleb128 0x11
 1405 09cc 8A020000 		.4byte	.LASF183
 1406 09d0 0F       		.byte	0xf
 1407 09d1 C3       		.byte	0xc3
 1408 09d2 400D0000 		.4byte	0xd40
 1409 09d6 20       		.byte	0x20
 1410 09d7 11       		.uleb128 0x11
 1411 09d8 100B0000 		.4byte	.LASF184
 1412 09dc 0F       		.byte	0xf
 1413 09dd C5       		.byte	0xc5
 1414 09de 6A0D0000 		.4byte	0xd6a
 1415 09e2 24       		.byte	0x24
 1416 09e3 11       		.uleb128 0x11
 1417 09e4 BE110000 		.4byte	.LASF185
 1418 09e8 0F       		.byte	0xf
 1419 09e9 C8       		.byte	0xc8
 1420 09ea 8E0D0000 		.4byte	0xd8e
 1421 09ee 28       		.byte	0x28
 1422 09ef 11       		.uleb128 0x11
 1423 09f0 36080000 		.4byte	.LASF186
 1424 09f4 0F       		.byte	0xf
 1425 09f5 C9       		.byte	0xc9
 1426 09f6 A80D0000 		.4byte	0xda8
 1427 09fa 2C       		.byte	0x2c
 1428 09fb 18       		.uleb128 0x18
 1429 09fc 5F756200 		.ascii	"_ub\000"
 1430 0a00 0F       		.byte	0xf
 1431 0a01 CC       		.byte	0xcc
ARM GAS  /tmp/ccQHvjuS.s 			page 41


 1432 0a02 37090000 		.4byte	0x937
 1433 0a06 30       		.byte	0x30
 1434 0a07 18       		.uleb128 0x18
 1435 0a08 5F757000 		.ascii	"_up\000"
 1436 0a0c 0F       		.byte	0xf
 1437 0a0d CD       		.byte	0xcd
 1438 0a0e 5C090000 		.4byte	0x95c
 1439 0a12 38       		.byte	0x38
 1440 0a13 18       		.uleb128 0x18
 1441 0a14 5F757200 		.ascii	"_ur\000"
 1442 0a18 0F       		.byte	0xf
 1443 0a19 CE       		.byte	0xce
 1444 0a1a 25000000 		.4byte	0x25
 1445 0a1e 3C       		.byte	0x3c
 1446 0a1f 11       		.uleb128 0x11
 1447 0a20 05050000 		.4byte	.LASF187
 1448 0a24 0F       		.byte	0xf
 1449 0a25 D1       		.byte	0xd1
 1450 0a26 AE0D0000 		.4byte	0xdae
 1451 0a2a 40       		.byte	0x40
 1452 0a2b 11       		.uleb128 0x11
 1453 0a2c 64110000 		.4byte	.LASF188
 1454 0a30 0F       		.byte	0xf
 1455 0a31 D2       		.byte	0xd2
 1456 0a32 BE0D0000 		.4byte	0xdbe
 1457 0a36 43       		.byte	0x43
 1458 0a37 18       		.uleb128 0x18
 1459 0a38 5F6C6200 		.ascii	"_lb\000"
 1460 0a3c 0F       		.byte	0xf
 1461 0a3d D5       		.byte	0xd5
 1462 0a3e 37090000 		.4byte	0x937
 1463 0a42 44       		.byte	0x44
 1464 0a43 11       		.uleb128 0x11
 1465 0a44 AE070000 		.4byte	.LASF189
 1466 0a48 0F       		.byte	0xf
 1467 0a49 D8       		.byte	0xd8
 1468 0a4a 25000000 		.4byte	0x25
 1469 0a4e 4C       		.byte	0x4c
 1470 0a4f 11       		.uleb128 0x11
 1471 0a50 FD040000 		.4byte	.LASF190
 1472 0a54 0F       		.byte	0xf
 1473 0a55 D9       		.byte	0xd9
 1474 0a56 13070000 		.4byte	0x713
 1475 0a5a 50       		.byte	0x50
 1476 0a5b 11       		.uleb128 0x11
 1477 0a5c 4F0C0000 		.4byte	.LASF191
 1478 0a60 0F       		.byte	0xf
 1479 0a61 DC       		.byte	0xdc
 1480 0a62 AA0A0000 		.4byte	0xaaa
 1481 0a66 54       		.byte	0x54
 1482 0a67 11       		.uleb128 0x11
 1483 0a68 F50D0000 		.4byte	.LASF192
 1484 0a6c 0F       		.byte	0xf
 1485 0a6d E0       		.byte	0xe0
 1486 0a6e 94070000 		.4byte	0x794
 1487 0a72 58       		.byte	0x58
 1488 0a73 11       		.uleb128 0x11
ARM GAS  /tmp/ccQHvjuS.s 			page 42


 1489 0a74 6F020000 		.4byte	.LASF193
 1490 0a78 0F       		.byte	0xf
 1491 0a79 E2       		.byte	0xe2
 1492 0a7a 89070000 		.4byte	0x789
 1493 0a7e 5C       		.byte	0x5c
 1494 0a7f 11       		.uleb128 0x11
 1495 0a80 8C110000 		.4byte	.LASF194
 1496 0a84 0F       		.byte	0xf
 1497 0a85 E3       		.byte	0xe3
 1498 0a86 25000000 		.4byte	0x25
 1499 0a8a 64       		.byte	0x64
 1500 0a8b 00       		.byte	0
 1501 0a8c 1C       		.uleb128 0x1c
 1502 0a8d 25000000 		.4byte	0x25
 1503 0a91 AA0A0000 		.4byte	0xaaa
 1504 0a95 1D       		.uleb128 0x1d
 1505 0a96 AA0A0000 		.4byte	0xaaa
 1506 0a9a 1D       		.uleb128 0x1d
 1507 0a9b C9020000 		.4byte	0x2c9
 1508 0a9f 1D       		.uleb128 0x1d
 1509 0aa0 2E0D0000 		.4byte	0xd2e
 1510 0aa4 1D       		.uleb128 0x1d
 1511 0aa5 25000000 		.4byte	0x25
 1512 0aa9 00       		.byte	0
 1513 0aaa 19       		.uleb128 0x19
 1514 0aab 04       		.byte	0x4
 1515 0aac B50A0000 		.4byte	0xab5
 1516 0ab0 04       		.uleb128 0x4
 1517 0ab1 AA0A0000 		.4byte	0xaaa
 1518 0ab5 1E       		.uleb128 0x1e
 1519 0ab6 D6100000 		.4byte	.LASF195
 1520 0aba 2804     		.2byte	0x428
 1521 0abc 0F       		.byte	0xf
 1522 0abd 3802     		.2byte	0x238
 1523 0abf 2E0D0000 		.4byte	0xd2e
 1524 0ac3 1F       		.uleb128 0x1f
 1525 0ac4 F0       		.byte	0xf0
 1526 0ac5 0F       		.byte	0xf
 1527 0ac6 5602     		.2byte	0x256
 1528 0ac8 0A0C0000 		.4byte	0xc0a
 1529 0acc 20       		.uleb128 0x20
 1530 0acd D0       		.byte	0xd0
 1531 0ace 0F       		.byte	0xf
 1532 0acf 5802     		.2byte	0x258
 1533 0ad1 CD0B0000 		.4byte	0xbcd
 1534 0ad5 07       		.uleb128 0x7
 1535 0ad6 6A110000 		.4byte	.LASF196
 1536 0ada 0F       		.byte	0xf
 1537 0adb 5902     		.2byte	0x259
 1538 0add 3C000000 		.4byte	0x3c
 1539 0ae1 00       		.byte	0
 1540 0ae2 07       		.uleb128 0x7
 1541 0ae3 64100000 		.4byte	.LASF197
 1542 0ae7 0F       		.byte	0xf
 1543 0ae8 5A02     		.2byte	0x25a
 1544 0aea 2E0D0000 		.4byte	0xd2e
 1545 0aee 04       		.byte	0x4
ARM GAS  /tmp/ccQHvjuS.s 			page 43


 1546 0aef 07       		.uleb128 0x7
 1547 0af0 80040000 		.4byte	.LASF198
 1548 0af4 0F       		.byte	0xf
 1549 0af5 5B02     		.2byte	0x25b
 1550 0af7 600E0000 		.4byte	0xe60
 1551 0afb 08       		.byte	0x8
 1552 0afc 07       		.uleb128 0x7
 1553 0afd 9A0C0000 		.4byte	.LASF199
 1554 0b01 0F       		.byte	0xf
 1555 0b02 5C02     		.2byte	0x25c
 1556 0b04 13080000 		.4byte	0x813
 1557 0b08 24       		.byte	0x24
 1558 0b09 07       		.uleb128 0x7
 1559 0b0a 280B0000 		.4byte	.LASF200
 1560 0b0e 0F       		.byte	0xf
 1561 0b0f 5D02     		.2byte	0x25d
 1562 0b11 25000000 		.4byte	0x25
 1563 0b15 48       		.byte	0x48
 1564 0b16 07       		.uleb128 0x7
 1565 0b17 410B0000 		.4byte	.LASF201
 1566 0b1b 0F       		.byte	0xf
 1567 0b1c 5E02     		.2byte	0x25e
 1568 0b1e 0C010000 		.4byte	0x10c
 1569 0b22 50       		.byte	0x50
 1570 0b23 07       		.uleb128 0x7
 1571 0b24 A1020000 		.4byte	.LASF202
 1572 0b28 0F       		.byte	0xf
 1573 0b29 5F02     		.2byte	0x25f
 1574 0b2b 1B0E0000 		.4byte	0xe1b
 1575 0b2f 58       		.byte	0x58
 1576 0b30 07       		.uleb128 0x7
 1577 0b31 05070000 		.4byte	.LASF203
 1578 0b35 0F       		.byte	0xf
 1579 0b36 6002     		.2byte	0x260
 1580 0b38 89070000 		.4byte	0x789
 1581 0b3c 68       		.byte	0x68
 1582 0b3d 07       		.uleb128 0x7
 1583 0b3e 71100000 		.4byte	.LASF204
 1584 0b42 0F       		.byte	0xf
 1585 0b43 6102     		.2byte	0x261
 1586 0b45 89070000 		.4byte	0x789
 1587 0b49 70       		.byte	0x70
 1588 0b4a 07       		.uleb128 0x7
 1589 0b4b E1000000 		.4byte	.LASF205
 1590 0b4f 0F       		.byte	0xf
 1591 0b50 6202     		.2byte	0x262
 1592 0b52 89070000 		.4byte	0x789
 1593 0b56 78       		.byte	0x78
 1594 0b57 07       		.uleb128 0x7
 1595 0b58 E20F0000 		.4byte	.LASF206
 1596 0b5c 0F       		.byte	0xf
 1597 0b5d 6302     		.2byte	0x263
 1598 0b5f 700E0000 		.4byte	0xe70
 1599 0b63 80       		.byte	0x80
 1600 0b64 07       		.uleb128 0x7
 1601 0b65 3C010000 		.4byte	.LASF207
 1602 0b69 0F       		.byte	0xf
ARM GAS  /tmp/ccQHvjuS.s 			page 44


 1603 0b6a 6402     		.2byte	0x264
 1604 0b6c 800E0000 		.4byte	0xe80
 1605 0b70 88       		.byte	0x88
 1606 0b71 07       		.uleb128 0x7
 1607 0b72 57100000 		.4byte	.LASF208
 1608 0b76 0F       		.byte	0xf
 1609 0b77 6502     		.2byte	0x265
 1610 0b79 25000000 		.4byte	0x25
 1611 0b7d A0       		.byte	0xa0
 1612 0b7e 07       		.uleb128 0x7
 1613 0b7f 7C0F0000 		.4byte	.LASF209
 1614 0b83 0F       		.byte	0xf
 1615 0b84 6602     		.2byte	0x266
 1616 0b86 89070000 		.4byte	0x789
 1617 0b8a A4       		.byte	0xa4
 1618 0b8b 07       		.uleb128 0x7
 1619 0b8c 4D070000 		.4byte	.LASF210
 1620 0b90 0F       		.byte	0xf
 1621 0b91 6702     		.2byte	0x267
 1622 0b93 89070000 		.4byte	0x789
 1623 0b97 AC       		.byte	0xac
 1624 0b98 07       		.uleb128 0x7
 1625 0b99 2C040000 		.4byte	.LASF211
 1626 0b9d 0F       		.byte	0xf
 1627 0b9e 6802     		.2byte	0x268
 1628 0ba0 89070000 		.4byte	0x789
 1629 0ba4 B4       		.byte	0xb4
 1630 0ba5 07       		.uleb128 0x7
 1631 0ba6 BF020000 		.4byte	.LASF212
 1632 0baa 0F       		.byte	0xf
 1633 0bab 6902     		.2byte	0x269
 1634 0bad 89070000 		.4byte	0x789
 1635 0bb1 BC       		.byte	0xbc
 1636 0bb2 07       		.uleb128 0x7
 1637 0bb3 F4060000 		.4byte	.LASF213
 1638 0bb7 0F       		.byte	0xf
 1639 0bb8 6A02     		.2byte	0x26a
 1640 0bba 89070000 		.4byte	0x789
 1641 0bbe C4       		.byte	0xc4
 1642 0bbf 07       		.uleb128 0x7
 1643 0bc0 570A0000 		.4byte	.LASF214
 1644 0bc4 0F       		.byte	0xf
 1645 0bc5 6B02     		.2byte	0x26b
 1646 0bc7 25000000 		.4byte	0x25
 1647 0bcb CC       		.byte	0xcc
 1648 0bcc 00       		.byte	0
 1649 0bcd 20       		.uleb128 0x20
 1650 0bce F0       		.byte	0xf0
 1651 0bcf 0F       		.byte	0xf
 1652 0bd0 7102     		.2byte	0x271
 1653 0bd2 F10B0000 		.4byte	0xbf1
 1654 0bd6 07       		.uleb128 0x7
 1655 0bd7 17040000 		.4byte	.LASF215
 1656 0bdb 0F       		.byte	0xf
 1657 0bdc 7302     		.2byte	0x273
 1658 0bde 900E0000 		.4byte	0xe90
 1659 0be2 00       		.byte	0
ARM GAS  /tmp/ccQHvjuS.s 			page 45


 1660 0be3 07       		.uleb128 0x7
 1661 0be4 E8110000 		.4byte	.LASF216
 1662 0be8 0F       		.byte	0xf
 1663 0be9 7402     		.2byte	0x274
 1664 0beb A00E0000 		.4byte	0xea0
 1665 0bef 78       		.byte	0x78
 1666 0bf0 00       		.byte	0
 1667 0bf1 21       		.uleb128 0x21
 1668 0bf2 D6100000 		.4byte	.LASF195
 1669 0bf6 0F       		.byte	0xf
 1670 0bf7 6C02     		.2byte	0x26c
 1671 0bf9 CC0A0000 		.4byte	0xacc
 1672 0bfd 21       		.uleb128 0x21
 1673 0bfe A90C0000 		.4byte	.LASF217
 1674 0c02 0F       		.byte	0xf
 1675 0c03 7502     		.2byte	0x275
 1676 0c05 CD0B0000 		.4byte	0xbcd
 1677 0c09 00       		.byte	0
 1678 0c0a 07       		.uleb128 0x7
 1679 0c0b CE010000 		.4byte	.LASF218
 1680 0c0f 0F       		.byte	0xf
 1681 0c10 3A02     		.2byte	0x23a
 1682 0c12 25000000 		.4byte	0x25
 1683 0c16 00       		.byte	0
 1684 0c17 07       		.uleb128 0x7
 1685 0c18 9E030000 		.4byte	.LASF219
 1686 0c1c 0F       		.byte	0xf
 1687 0c1d 3F02     		.2byte	0x23f
 1688 0c1f 150E0000 		.4byte	0xe15
 1689 0c23 04       		.byte	0x4
 1690 0c24 07       		.uleb128 0x7
 1691 0c25 CE020000 		.4byte	.LASF220
 1692 0c29 0F       		.byte	0xf
 1693 0c2a 3F02     		.2byte	0x23f
 1694 0c2c 150E0000 		.4byte	0xe15
 1695 0c30 08       		.byte	0x8
 1696 0c31 07       		.uleb128 0x7
 1697 0c32 E0110000 		.4byte	.LASF221
 1698 0c36 0F       		.byte	0xf
 1699 0c37 3F02     		.2byte	0x23f
 1700 0c39 150E0000 		.4byte	0xe15
 1701 0c3d 0C       		.byte	0xc
 1702 0c3e 07       		.uleb128 0x7
 1703 0c3f F9050000 		.4byte	.LASF222
 1704 0c43 0F       		.byte	0xf
 1705 0c44 4102     		.2byte	0x241
 1706 0c46 25000000 		.4byte	0x25
 1707 0c4a 10       		.byte	0x10
 1708 0c4b 07       		.uleb128 0x7
 1709 0c4c 42050000 		.4byte	.LASF223
 1710 0c50 0F       		.byte	0xf
 1711 0c51 4202     		.2byte	0x242
 1712 0c53 B00E0000 		.4byte	0xeb0
 1713 0c57 14       		.byte	0x14
 1714 0c58 07       		.uleb128 0x7
 1715 0c59 D80C0000 		.4byte	.LASF224
 1716 0c5d 0F       		.byte	0xf
ARM GAS  /tmp/ccQHvjuS.s 			page 46


 1717 0c5e 4402     		.2byte	0x244
 1718 0c60 25000000 		.4byte	0x25
 1719 0c64 30       		.byte	0x30
 1720 0c65 07       		.uleb128 0x7
 1721 0c66 3F0C0000 		.4byte	.LASF225
 1722 0c6a 0F       		.byte	0xf
 1723 0c6b 4502     		.2byte	0x245
 1724 0c6d 640D0000 		.4byte	0xd64
 1725 0c71 34       		.byte	0x34
 1726 0c72 07       		.uleb128 0x7
 1727 0c73 4C080000 		.4byte	.LASF226
 1728 0c77 0F       		.byte	0xf
 1729 0c78 4702     		.2byte	0x247
 1730 0c7a 25000000 		.4byte	0x25
 1731 0c7e 38       		.byte	0x38
 1732 0c7f 07       		.uleb128 0x7
 1733 0c80 70090000 		.4byte	.LASF227
 1734 0c84 0F       		.byte	0xf
 1735 0c85 4902     		.2byte	0x249
 1736 0c87 CB0E0000 		.4byte	0xecb
 1737 0c8b 3C       		.byte	0x3c
 1738 0c8c 07       		.uleb128 0x7
 1739 0c8d 51030000 		.4byte	.LASF228
 1740 0c91 0F       		.byte	0xf
 1741 0c92 4C02     		.2byte	0x24c
 1742 0c94 FD070000 		.4byte	0x7fd
 1743 0c98 40       		.byte	0x40
 1744 0c99 07       		.uleb128 0x7
 1745 0c9a D2070000 		.4byte	.LASF229
 1746 0c9e 0F       		.byte	0xf
 1747 0c9f 4D02     		.2byte	0x24d
 1748 0ca1 25000000 		.4byte	0x25
 1749 0ca5 44       		.byte	0x44
 1750 0ca6 07       		.uleb128 0x7
 1751 0ca7 B7060000 		.4byte	.LASF230
 1752 0cab 0F       		.byte	0xf
 1753 0cac 4E02     		.2byte	0x24e
 1754 0cae FD070000 		.4byte	0x7fd
 1755 0cb2 48       		.byte	0x48
 1756 0cb3 07       		.uleb128 0x7
 1757 0cb4 77110000 		.4byte	.LASF231
 1758 0cb8 0F       		.byte	0xf
 1759 0cb9 4F02     		.2byte	0x24f
 1760 0cbb D10E0000 		.4byte	0xed1
 1761 0cbf 4C       		.byte	0x4c
 1762 0cc0 07       		.uleb128 0x7
 1763 0cc1 C00C0000 		.4byte	.LASF232
 1764 0cc5 0F       		.byte	0xf
 1765 0cc6 5202     		.2byte	0x252
 1766 0cc8 25000000 		.4byte	0x25
 1767 0ccc 50       		.byte	0x50
 1768 0ccd 07       		.uleb128 0x7
 1769 0cce E40E0000 		.4byte	.LASF233
 1770 0cd2 0F       		.byte	0xf
 1771 0cd3 5302     		.2byte	0x253
 1772 0cd5 2E0D0000 		.4byte	0xd2e
 1773 0cd9 54       		.byte	0x54
ARM GAS  /tmp/ccQHvjuS.s 			page 47


 1774 0cda 07       		.uleb128 0x7
 1775 0cdb BB0C0000 		.4byte	.LASF234
 1776 0cdf 0F       		.byte	0xf
 1777 0ce0 7602     		.2byte	0x276
 1778 0ce2 C30A0000 		.4byte	0xac3
 1779 0ce6 58       		.byte	0x58
 1780 0ce7 22       		.uleb128 0x22
 1781 0ce8 750B0000 		.4byte	.LASF172
 1782 0cec 0F       		.byte	0xf
 1783 0ced 7A02     		.2byte	0x27a
 1784 0cef 1A090000 		.4byte	0x91a
 1785 0cf3 4801     		.2byte	0x148
 1786 0cf5 22       		.uleb128 0x22
 1787 0cf6 5C070000 		.4byte	.LASF235
 1788 0cfa 0F       		.byte	0xf
 1789 0cfb 7B02     		.2byte	0x27b
 1790 0cfd DC080000 		.4byte	0x8dc
 1791 0d01 4C01     		.2byte	0x14c
 1792 0d03 22       		.uleb128 0x22
 1793 0d04 43070000 		.4byte	.LASF236
 1794 0d08 0F       		.byte	0xf
 1795 0d09 7F02     		.2byte	0x27f
 1796 0d0b E20E0000 		.4byte	0xee2
 1797 0d0f DC02     		.2byte	0x2dc
 1798 0d11 22       		.uleb128 0x22
 1799 0d12 4F100000 		.4byte	.LASF237
 1800 0d16 0F       		.byte	0xf
 1801 0d17 8402     		.2byte	0x284
 1802 0d19 DA0D0000 		.4byte	0xdda
 1803 0d1d E002     		.2byte	0x2e0
 1804 0d1f 22       		.uleb128 0x22
 1805 0d20 240C0000 		.4byte	.LASF238
 1806 0d24 0F       		.byte	0xf
 1807 0d25 8502     		.2byte	0x285
 1808 0d27 EE0E0000 		.4byte	0xeee
 1809 0d2b EC02     		.2byte	0x2ec
 1810 0d2d 00       		.byte	0
 1811 0d2e 19       		.uleb128 0x19
 1812 0d2f 04       		.byte	0x4
 1813 0d30 340D0000 		.4byte	0xd34
 1814 0d34 05       		.uleb128 0x5
 1815 0d35 01       		.byte	0x1
 1816 0d36 08       		.byte	0x8
 1817 0d37 25070000 		.4byte	.LASF239
 1818 0d3b 04       		.uleb128 0x4
 1819 0d3c 340D0000 		.4byte	0xd34
 1820 0d40 19       		.uleb128 0x19
 1821 0d41 04       		.byte	0x4
 1822 0d42 8C0A0000 		.4byte	0xa8c
 1823 0d46 1C       		.uleb128 0x1c
 1824 0d47 25000000 		.4byte	0x25
 1825 0d4b 640D0000 		.4byte	0xd64
 1826 0d4f 1D       		.uleb128 0x1d
 1827 0d50 AA0A0000 		.4byte	0xaaa
 1828 0d54 1D       		.uleb128 0x1d
 1829 0d55 C9020000 		.4byte	0x2c9
 1830 0d59 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccQHvjuS.s 			page 48


 1831 0d5a 640D0000 		.4byte	0xd64
 1832 0d5e 1D       		.uleb128 0x1d
 1833 0d5f 25000000 		.4byte	0x25
 1834 0d63 00       		.byte	0
 1835 0d64 19       		.uleb128 0x19
 1836 0d65 04       		.byte	0x4
 1837 0d66 3B0D0000 		.4byte	0xd3b
 1838 0d6a 19       		.uleb128 0x19
 1839 0d6b 04       		.byte	0x4
 1840 0d6c 460D0000 		.4byte	0xd46
 1841 0d70 1C       		.uleb128 0x1c
 1842 0d71 1E070000 		.4byte	0x71e
 1843 0d75 8E0D0000 		.4byte	0xd8e
 1844 0d79 1D       		.uleb128 0x1d
 1845 0d7a AA0A0000 		.4byte	0xaaa
 1846 0d7e 1D       		.uleb128 0x1d
 1847 0d7f C9020000 		.4byte	0x2c9
 1848 0d83 1D       		.uleb128 0x1d
 1849 0d84 1E070000 		.4byte	0x71e
 1850 0d88 1D       		.uleb128 0x1d
 1851 0d89 25000000 		.4byte	0x25
 1852 0d8d 00       		.byte	0
 1853 0d8e 19       		.uleb128 0x19
 1854 0d8f 04       		.byte	0x4
 1855 0d90 700D0000 		.4byte	0xd70
 1856 0d94 1C       		.uleb128 0x1c
 1857 0d95 25000000 		.4byte	0x25
 1858 0d99 A80D0000 		.4byte	0xda8
 1859 0d9d 1D       		.uleb128 0x1d
 1860 0d9e AA0A0000 		.4byte	0xaaa
 1861 0da2 1D       		.uleb128 0x1d
 1862 0da3 C9020000 		.4byte	0x2c9
 1863 0da7 00       		.byte	0
 1864 0da8 19       		.uleb128 0x19
 1865 0da9 04       		.byte	0x4
 1866 0daa 940D0000 		.4byte	0xd94
 1867 0dae 0C       		.uleb128 0xc
 1868 0daf A7000000 		.4byte	0xa7
 1869 0db3 BE0D0000 		.4byte	0xdbe
 1870 0db7 0D       		.uleb128 0xd
 1871 0db8 CB020000 		.4byte	0x2cb
 1872 0dbc 02       		.byte	0x2
 1873 0dbd 00       		.byte	0
 1874 0dbe 0C       		.uleb128 0xc
 1875 0dbf A7000000 		.4byte	0xa7
 1876 0dc3 CE0D0000 		.4byte	0xdce
 1877 0dc7 0D       		.uleb128 0xd
 1878 0dc8 CB020000 		.4byte	0x2cb
 1879 0dcc 00       		.byte	0
 1880 0dcd 00       		.byte	0
 1881 0dce 08       		.uleb128 0x8
 1882 0dcf DE040000 		.4byte	.LASF240
 1883 0dd3 0F       		.byte	0xf
 1884 0dd4 1D01     		.2byte	0x11d
 1885 0dd6 62090000 		.4byte	0x962
 1886 0dda 23       		.uleb128 0x23
 1887 0ddb 04100000 		.4byte	.LASF241
ARM GAS  /tmp/ccQHvjuS.s 			page 49


 1888 0ddf 0C       		.byte	0xc
 1889 0de0 0F       		.byte	0xf
 1890 0de1 2101     		.2byte	0x121
 1891 0de3 0F0E0000 		.4byte	0xe0f
 1892 0de7 07       		.uleb128 0x7
 1893 0de8 35060000 		.4byte	.LASF152
 1894 0dec 0F       		.byte	0xf
 1895 0ded 2301     		.2byte	0x123
 1896 0def 0F0E0000 		.4byte	0xe0f
 1897 0df3 00       		.byte	0
 1898 0df4 07       		.uleb128 0x7
 1899 0df5 800E0000 		.4byte	.LASF242
 1900 0df9 0F       		.byte	0xf
 1901 0dfa 2401     		.2byte	0x124
 1902 0dfc 25000000 		.4byte	0x25
 1903 0e00 04       		.byte	0x4
 1904 0e01 07       		.uleb128 0x7
 1905 0e02 F1110000 		.4byte	.LASF243
 1906 0e06 0F       		.byte	0xf
 1907 0e07 2501     		.2byte	0x125
 1908 0e09 150E0000 		.4byte	0xe15
 1909 0e0d 08       		.byte	0x8
 1910 0e0e 00       		.byte	0
 1911 0e0f 19       		.uleb128 0x19
 1912 0e10 04       		.byte	0x4
 1913 0e11 DA0D0000 		.4byte	0xdda
 1914 0e15 19       		.uleb128 0x19
 1915 0e16 04       		.byte	0x4
 1916 0e17 CE0D0000 		.4byte	0xdce
 1917 0e1b 23       		.uleb128 0x23
 1918 0e1c C1040000 		.4byte	.LASF244
 1919 0e20 0E       		.byte	0xe
 1920 0e21 0F       		.byte	0xf
 1921 0e22 3D01     		.2byte	0x13d
 1922 0e24 500E0000 		.4byte	0xe50
 1923 0e28 07       		.uleb128 0x7
 1924 0e29 B8110000 		.4byte	.LASF245
 1925 0e2d 0F       		.byte	0xf
 1926 0e2e 3E01     		.2byte	0x13e
 1927 0e30 500E0000 		.4byte	0xe50
 1928 0e34 00       		.byte	0
 1929 0e35 07       		.uleb128 0x7
 1930 0e36 E9080000 		.4byte	.LASF246
 1931 0e3a 0F       		.byte	0xf
 1932 0e3b 3F01     		.2byte	0x13f
 1933 0e3d 500E0000 		.4byte	0xe50
 1934 0e41 06       		.byte	0x6
 1935 0e42 07       		.uleb128 0x7
 1936 0e43 EF080000 		.4byte	.LASF247
 1937 0e47 0F       		.byte	0xf
 1938 0e48 4001     		.2byte	0x140
 1939 0e4a CB000000 		.4byte	0xcb
 1940 0e4e 0C       		.byte	0xc
 1941 0e4f 00       		.byte	0
 1942 0e50 0C       		.uleb128 0xc
 1943 0e51 CB000000 		.4byte	0xcb
 1944 0e55 600E0000 		.4byte	0xe60
ARM GAS  /tmp/ccQHvjuS.s 			page 50


 1945 0e59 0D       		.uleb128 0xd
 1946 0e5a CB020000 		.4byte	0x2cb
 1947 0e5e 02       		.byte	0x2
 1948 0e5f 00       		.byte	0
 1949 0e60 0C       		.uleb128 0xc
 1950 0e61 340D0000 		.4byte	0xd34
 1951 0e65 700E0000 		.4byte	0xe70
 1952 0e69 0D       		.uleb128 0xd
 1953 0e6a CB020000 		.4byte	0x2cb
 1954 0e6e 19       		.byte	0x19
 1955 0e6f 00       		.byte	0
 1956 0e70 0C       		.uleb128 0xc
 1957 0e71 340D0000 		.4byte	0xd34
 1958 0e75 800E0000 		.4byte	0xe80
 1959 0e79 0D       		.uleb128 0xd
 1960 0e7a CB020000 		.4byte	0x2cb
 1961 0e7e 07       		.byte	0x7
 1962 0e7f 00       		.byte	0
 1963 0e80 0C       		.uleb128 0xc
 1964 0e81 340D0000 		.4byte	0xd34
 1965 0e85 900E0000 		.4byte	0xe90
 1966 0e89 0D       		.uleb128 0xd
 1967 0e8a CB020000 		.4byte	0x2cb
 1968 0e8e 17       		.byte	0x17
 1969 0e8f 00       		.byte	0
 1970 0e90 0C       		.uleb128 0xc
 1971 0e91 5C090000 		.4byte	0x95c
 1972 0e95 A00E0000 		.4byte	0xea0
 1973 0e99 0D       		.uleb128 0xd
 1974 0e9a CB020000 		.4byte	0x2cb
 1975 0e9e 1D       		.byte	0x1d
 1976 0e9f 00       		.byte	0
 1977 0ea0 0C       		.uleb128 0xc
 1978 0ea1 3C000000 		.4byte	0x3c
 1979 0ea5 B00E0000 		.4byte	0xeb0
 1980 0ea9 0D       		.uleb128 0xd
 1981 0eaa CB020000 		.4byte	0x2cb
 1982 0eae 1D       		.byte	0x1d
 1983 0eaf 00       		.byte	0
 1984 0eb0 0C       		.uleb128 0xc
 1985 0eb1 340D0000 		.4byte	0xd34
 1986 0eb5 C00E0000 		.4byte	0xec0
 1987 0eb9 0D       		.uleb128 0xd
 1988 0eba CB020000 		.4byte	0x2cb
 1989 0ebe 18       		.byte	0x18
 1990 0ebf 00       		.byte	0
 1991 0ec0 24       		.uleb128 0x24
 1992 0ec1 CB0E0000 		.4byte	0xecb
 1993 0ec5 1D       		.uleb128 0x1d
 1994 0ec6 AA0A0000 		.4byte	0xaaa
 1995 0eca 00       		.byte	0
 1996 0ecb 19       		.uleb128 0x19
 1997 0ecc 04       		.byte	0x4
 1998 0ecd C00E0000 		.4byte	0xec0
 1999 0ed1 19       		.uleb128 0x19
 2000 0ed2 04       		.byte	0x4
 2001 0ed3 FD070000 		.4byte	0x7fd
ARM GAS  /tmp/ccQHvjuS.s 			page 51


 2002 0ed7 24       		.uleb128 0x24
 2003 0ed8 E20E0000 		.4byte	0xee2
 2004 0edc 1D       		.uleb128 0x1d
 2005 0edd 25000000 		.4byte	0x25
 2006 0ee1 00       		.byte	0
 2007 0ee2 19       		.uleb128 0x19
 2008 0ee3 04       		.byte	0x4
 2009 0ee4 E80E0000 		.4byte	0xee8
 2010 0ee8 19       		.uleb128 0x19
 2011 0ee9 04       		.byte	0x4
 2012 0eea D70E0000 		.4byte	0xed7
 2013 0eee 0C       		.uleb128 0xc
 2014 0eef CE0D0000 		.4byte	0xdce
 2015 0ef3 FE0E0000 		.4byte	0xefe
 2016 0ef7 0D       		.uleb128 0xd
 2017 0ef8 CB020000 		.4byte	0x2cb
 2018 0efc 02       		.byte	0x2
 2019 0efd 00       		.byte	0
 2020 0efe 0E       		.uleb128 0xe
 2021 0eff FC030000 		.4byte	.LASF248
 2022 0f03 0F       		.byte	0xf
 2023 0f04 FD02     		.2byte	0x2fd
 2024 0f06 AA0A0000 		.4byte	0xaaa
 2025 0f0a 0E       		.uleb128 0xe
 2026 0f0b D50A0000 		.4byte	.LASF249
 2027 0f0f 0F       		.byte	0xf
 2028 0f10 FE02     		.2byte	0x2fe
 2029 0f12 B00A0000 		.4byte	0xab0
 2030 0f16 25       		.uleb128 0x25
 2031 0f17 73746400 		.ascii	"std\000"
 2032 0f1b 26       		.byte	0x26
 2033 0f1c 00       		.byte	0
 2034 0f1d 1D110000 		.4byte	0x111d
 2035 0f21 26       		.uleb128 0x26
 2036 0f22 29090000 		.4byte	.LASF252
 2037 0f26 14       		.byte	0x14
 2038 0f27 DF       		.byte	0xdf
 2039 0f28 27       		.uleb128 0x27
 2040 0f29 14       		.byte	0x14
 2041 0f2a DF       		.byte	0xdf
 2042 0f2b 210F0000 		.4byte	0xf21
 2043 0f2f 28       		.uleb128 0x28
 2044 0f30 10       		.byte	0x10
 2045 0f31 7C       		.byte	0x7c
 2046 0f32 A7110000 		.4byte	0x11a7
 2047 0f36 28       		.uleb128 0x28
 2048 0f37 10       		.byte	0x10
 2049 0f38 7D       		.byte	0x7d
 2050 0f39 D7110000 		.4byte	0x11d7
 2051 0f3d 28       		.uleb128 0x28
 2052 0f3e 10       		.byte	0x10
 2053 0f3f 81       		.byte	0x81
 2054 0f40 49120000 		.4byte	0x1249
 2055 0f44 28       		.uleb128 0x28
 2056 0f45 10       		.byte	0x10
 2057 0f46 87       		.byte	0x87
 2058 0f47 5E120000 		.4byte	0x125e
ARM GAS  /tmp/ccQHvjuS.s 			page 52


 2059 0f4b 28       		.uleb128 0x28
 2060 0f4c 10       		.byte	0x10
 2061 0f4d 88       		.byte	0x88
 2062 0f4e 7A120000 		.4byte	0x127a
 2063 0f52 28       		.uleb128 0x28
 2064 0f53 10       		.byte	0x10
 2065 0f54 89       		.byte	0x89
 2066 0f55 8F120000 		.4byte	0x128f
 2067 0f59 28       		.uleb128 0x28
 2068 0f5a 10       		.byte	0x10
 2069 0f5b 8A       		.byte	0x8a
 2070 0f5c A4120000 		.4byte	0x12a4
 2071 0f60 28       		.uleb128 0x28
 2072 0f61 10       		.byte	0x10
 2073 0f62 8C       		.byte	0x8c
 2074 0f63 CD120000 		.4byte	0x12cd
 2075 0f67 28       		.uleb128 0x28
 2076 0f68 10       		.byte	0x10
 2077 0f69 8F       		.byte	0x8f
 2078 0f6a E7120000 		.4byte	0x12e7
 2079 0f6e 28       		.uleb128 0x28
 2080 0f6f 10       		.byte	0x10
 2081 0f70 91       		.byte	0x91
 2082 0f71 FC120000 		.4byte	0x12fc
 2083 0f75 28       		.uleb128 0x28
 2084 0f76 10       		.byte	0x10
 2085 0f77 94       		.byte	0x94
 2086 0f78 16130000 		.4byte	0x1316
 2087 0f7c 28       		.uleb128 0x28
 2088 0f7d 10       		.byte	0x10
 2089 0f7e 95       		.byte	0x95
 2090 0f7f 30130000 		.4byte	0x1330
 2091 0f83 28       		.uleb128 0x28
 2092 0f84 10       		.byte	0x10
 2093 0f85 96       		.byte	0x96
 2094 0f86 61130000 		.4byte	0x1361
 2095 0f8a 28       		.uleb128 0x28
 2096 0f8b 10       		.byte	0x10
 2097 0f8c 98       		.byte	0x98
 2098 0f8d 80130000 		.4byte	0x1380
 2099 0f91 28       		.uleb128 0x28
 2100 0f92 10       		.byte	0x10
 2101 0f93 9E       		.byte	0x9e
 2102 0f94 A0130000 		.4byte	0x13a0
 2103 0f98 28       		.uleb128 0x28
 2104 0f99 10       		.byte	0x10
 2105 0f9a A0       		.byte	0xa0
 2106 0f9b AB130000 		.4byte	0x13ab
 2107 0f9f 28       		.uleb128 0x28
 2108 0fa0 10       		.byte	0x10
 2109 0fa1 A1       		.byte	0xa1
 2110 0fa2 BC130000 		.4byte	0x13bc
 2111 0fa6 28       		.uleb128 0x28
 2112 0fa7 10       		.byte	0x10
 2113 0fa8 A2       		.byte	0xa2
 2114 0fa9 DC130000 		.4byte	0x13dc
 2115 0fad 28       		.uleb128 0x28
ARM GAS  /tmp/ccQHvjuS.s 			page 53


 2116 0fae 10       		.byte	0x10
 2117 0faf A3       		.byte	0xa3
 2118 0fb0 FB130000 		.4byte	0x13fb
 2119 0fb4 28       		.uleb128 0x28
 2120 0fb5 10       		.byte	0x10
 2121 0fb6 A4       		.byte	0xa4
 2122 0fb7 1A140000 		.4byte	0x141a
 2123 0fbb 28       		.uleb128 0x28
 2124 0fbc 10       		.byte	0x10
 2125 0fbd A6       		.byte	0xa6
 2126 0fbe 2F140000 		.4byte	0x142f
 2127 0fc2 28       		.uleb128 0x28
 2128 0fc3 10       		.byte	0x10
 2129 0fc4 A7       		.byte	0xa7
 2130 0fc5 54140000 		.4byte	0x1454
 2131 0fc9 29       		.uleb128 0x29
 2132 0fca 10       		.byte	0x10
 2133 0fcb 0401     		.2byte	0x104
 2134 0fcd 07120000 		.4byte	0x1207
 2135 0fd1 29       		.uleb128 0x29
 2136 0fd2 10       		.byte	0x10
 2137 0fd3 0901     		.2byte	0x109
 2138 0fd5 67110000 		.4byte	0x1167
 2139 0fd9 29       		.uleb128 0x29
 2140 0fda 10       		.byte	0x10
 2141 0fdb 0A01     		.2byte	0x10a
 2142 0fdd 6E140000 		.4byte	0x146e
 2143 0fe1 29       		.uleb128 0x29
 2144 0fe2 10       		.byte	0x10
 2145 0fe3 0C01     		.2byte	0x10c
 2146 0fe5 88140000 		.4byte	0x1488
 2147 0fe9 29       		.uleb128 0x29
 2148 0fea 10       		.byte	0x10
 2149 0feb 0D01     		.2byte	0x10d
 2150 0fed DB140000 		.4byte	0x14db
 2151 0ff1 29       		.uleb128 0x29
 2152 0ff2 10       		.byte	0x10
 2153 0ff3 0E01     		.2byte	0x10e
 2154 0ff5 9D140000 		.4byte	0x149d
 2155 0ff9 29       		.uleb128 0x29
 2156 0ffa 10       		.byte	0x10
 2157 0ffb 0F01     		.2byte	0x10f
 2158 0ffd BC140000 		.4byte	0x14bc
 2159 1001 29       		.uleb128 0x29
 2160 1002 10       		.byte	0x10
 2161 1003 1001     		.2byte	0x110
 2162 1005 FC140000 		.4byte	0x14fc
 2163 1009 2A       		.uleb128 0x2a
 2164 100a 61627300 		.ascii	"abs\000"
 2165 100e 10       		.byte	0x10
 2166 100f B4       		.byte	0xb4
 2167 1010 7E030000 		.4byte	.LASF430
 2168 1014 6B000000 		.4byte	0x6b
 2169 1018 22100000 		.4byte	0x1022
 2170 101c 1D       		.uleb128 0x1d
 2171 101d 6B000000 		.4byte	0x6b
 2172 1021 00       		.byte	0
ARM GAS  /tmp/ccQHvjuS.s 			page 54


 2173 1022 29       		.uleb128 0x29
 2174 1023 11       		.byte	0x11
 2175 1024 4D04     		.2byte	0x44d
 2176 1026 FC150000 		.4byte	0x15fc
 2177 102a 29       		.uleb128 0x29
 2178 102b 11       		.byte	0x11
 2179 102c 4E04     		.2byte	0x44e
 2180 102e F1150000 		.4byte	0x15f1
 2181 1032 2B       		.uleb128 0x2b
 2182 1033 AE020000 		.4byte	.LASF250
 2183 1037 11       		.byte	0x11
 2184 1038 9301     		.2byte	0x193
 2185 103a A9040000 		.4byte	.LASF431
 2186 103e 72000000 		.4byte	0x72
 2187 1042 51100000 		.4byte	0x1051
 2188 1046 1D       		.uleb128 0x1d
 2189 1047 72000000 		.4byte	0x72
 2190 104b 1D       		.uleb128 0x1d
 2191 104c 3D160000 		.4byte	0x163d
 2192 1050 00       		.byte	0
 2193 1051 28       		.uleb128 0x28
 2194 1052 12       		.byte	0x12
 2195 1053 30       		.byte	0x30
 2196 1054 81010000 		.4byte	0x181
 2197 1058 28       		.uleb128 0x28
 2198 1059 12       		.byte	0x12
 2199 105a 31       		.byte	0x31
 2200 105b 9C010000 		.4byte	0x19c
 2201 105f 28       		.uleb128 0x28
 2202 1060 12       		.byte	0x12
 2203 1061 32       		.byte	0x32
 2204 1062 B2010000 		.4byte	0x1b2
 2205 1066 28       		.uleb128 0x28
 2206 1067 12       		.byte	0x12
 2207 1068 33       		.byte	0x33
 2208 1069 D7010000 		.4byte	0x1d7
 2209 106d 28       		.uleb128 0x28
 2210 106e 12       		.byte	0x12
 2211 106f 35       		.byte	0x35
 2212 1070 5B020000 		.4byte	0x25b
 2213 1074 28       		.uleb128 0x28
 2214 1075 12       		.byte	0x12
 2215 1076 36       		.byte	0x36
 2216 1077 71020000 		.4byte	0x271
 2217 107b 28       		.uleb128 0x28
 2218 107c 12       		.byte	0x12
 2219 107d 37       		.byte	0x37
 2220 107e 87020000 		.4byte	0x287
 2221 1082 28       		.uleb128 0x28
 2222 1083 12       		.byte	0x12
 2223 1084 38       		.byte	0x38
 2224 1085 9D020000 		.4byte	0x29d
 2225 1089 28       		.uleb128 0x28
 2226 108a 12       		.byte	0x12
 2227 108b 3A       		.byte	0x3a
 2228 108c 03020000 		.4byte	0x203
 2229 1090 28       		.uleb128 0x28
ARM GAS  /tmp/ccQHvjuS.s 			page 55


 2230 1091 12       		.byte	0x12
 2231 1092 3B       		.byte	0x3b
 2232 1093 19020000 		.4byte	0x219
 2233 1097 28       		.uleb128 0x28
 2234 1098 12       		.byte	0x12
 2235 1099 3C       		.byte	0x3c
 2236 109a 2F020000 		.4byte	0x22f
 2237 109e 28       		.uleb128 0x28
 2238 109f 12       		.byte	0x12
 2239 10a0 3D       		.byte	0x3d
 2240 10a1 45020000 		.4byte	0x245
 2241 10a5 28       		.uleb128 0x28
 2242 10a6 12       		.byte	0x12
 2243 10a7 3F       		.byte	0x3f
 2244 10a8 B3020000 		.4byte	0x2b3
 2245 10ac 28       		.uleb128 0x28
 2246 10ad 12       		.byte	0x12
 2247 10ae 40       		.byte	0x40
 2248 10af ED010000 		.4byte	0x1ed
 2249 10b3 28       		.uleb128 0x28
 2250 10b4 12       		.byte	0x12
 2251 10b5 42       		.byte	0x42
 2252 10b6 8C010000 		.4byte	0x18c
 2253 10ba 28       		.uleb128 0x28
 2254 10bb 12       		.byte	0x12
 2255 10bc 43       		.byte	0x43
 2256 10bd A7010000 		.4byte	0x1a7
 2257 10c1 28       		.uleb128 0x28
 2258 10c2 12       		.byte	0x12
 2259 10c3 44       		.byte	0x44
 2260 10c4 C2010000 		.4byte	0x1c2
 2261 10c8 28       		.uleb128 0x28
 2262 10c9 12       		.byte	0x12
 2263 10ca 45       		.byte	0x45
 2264 10cb E2010000 		.4byte	0x1e2
 2265 10cf 28       		.uleb128 0x28
 2266 10d0 12       		.byte	0x12
 2267 10d1 47       		.byte	0x47
 2268 10d2 66020000 		.4byte	0x266
 2269 10d6 28       		.uleb128 0x28
 2270 10d7 12       		.byte	0x12
 2271 10d8 48       		.byte	0x48
 2272 10d9 7C020000 		.4byte	0x27c
 2273 10dd 28       		.uleb128 0x28
 2274 10de 12       		.byte	0x12
 2275 10df 49       		.byte	0x49
 2276 10e0 92020000 		.4byte	0x292
 2277 10e4 28       		.uleb128 0x28
 2278 10e5 12       		.byte	0x12
 2279 10e6 4A       		.byte	0x4a
 2280 10e7 A8020000 		.4byte	0x2a8
 2281 10eb 28       		.uleb128 0x28
 2282 10ec 12       		.byte	0x12
 2283 10ed 4C       		.byte	0x4c
 2284 10ee 0E020000 		.4byte	0x20e
 2285 10f2 28       		.uleb128 0x28
 2286 10f3 12       		.byte	0x12
ARM GAS  /tmp/ccQHvjuS.s 			page 56


 2287 10f4 4D       		.byte	0x4d
 2288 10f5 24020000 		.4byte	0x224
 2289 10f9 28       		.uleb128 0x28
 2290 10fa 12       		.byte	0x12
 2291 10fb 4E       		.byte	0x4e
 2292 10fc 3A020000 		.4byte	0x23a
 2293 1100 28       		.uleb128 0x28
 2294 1101 12       		.byte	0x12
 2295 1102 4F       		.byte	0x4f
 2296 1103 50020000 		.4byte	0x250
 2297 1107 28       		.uleb128 0x28
 2298 1108 12       		.byte	0x12
 2299 1109 51       		.byte	0x51
 2300 110a BE020000 		.4byte	0x2be
 2301 110e 28       		.uleb128 0x28
 2302 110f 12       		.byte	0x12
 2303 1110 52       		.byte	0x52
 2304 1111 F8010000 		.4byte	0x1f8
 2305 1115 28       		.uleb128 0x28
 2306 1116 13       		.byte	0x13
 2307 1117 38       		.byte	0x38
 2308 1118 79000000 		.4byte	0x79
 2309 111c 00       		.byte	0
 2310 111d 2C       		.uleb128 0x2c
 2311 111e 63010000 		.4byte	.LASF251
 2312 1122 14       		.byte	0x14
 2313 1123 E1       		.byte	0xe1
 2314 1124 82110000 		.4byte	0x1182
 2315 1128 26       		.uleb128 0x26
 2316 1129 29090000 		.4byte	.LASF252
 2317 112d 14       		.byte	0x14
 2318 112e E3       		.byte	0xe3
 2319 112f 27       		.uleb128 0x27
 2320 1130 14       		.byte	0x14
 2321 1131 E3       		.byte	0xe3
 2322 1132 28110000 		.4byte	0x1128
 2323 1136 28       		.uleb128 0x28
 2324 1137 10       		.byte	0x10
 2325 1138 DC       		.byte	0xdc
 2326 1139 07120000 		.4byte	0x1207
 2327 113d 28       		.uleb128 0x28
 2328 113e 10       		.byte	0x10
 2329 113f EC       		.byte	0xec
 2330 1140 6E140000 		.4byte	0x146e
 2331 1144 28       		.uleb128 0x28
 2332 1145 10       		.byte	0x10
 2333 1146 F7       		.byte	0xf7
 2334 1147 88140000 		.4byte	0x1488
 2335 114b 28       		.uleb128 0x28
 2336 114c 10       		.byte	0x10
 2337 114d F8       		.byte	0xf8
 2338 114e 9D140000 		.4byte	0x149d
 2339 1152 28       		.uleb128 0x28
 2340 1153 10       		.byte	0x10
 2341 1154 F9       		.byte	0xf9
 2342 1155 BC140000 		.4byte	0x14bc
 2343 1159 28       		.uleb128 0x28
ARM GAS  /tmp/ccQHvjuS.s 			page 57


 2344 115a 10       		.byte	0x10
 2345 115b FB       		.byte	0xfb
 2346 115c DB140000 		.4byte	0x14db
 2347 1160 28       		.uleb128 0x28
 2348 1161 10       		.byte	0x10
 2349 1162 FC       		.byte	0xfc
 2350 1163 FC140000 		.4byte	0x14fc
 2351 1167 2D       		.uleb128 0x2d
 2352 1168 64697600 		.ascii	"div\000"
 2353 116c 10       		.byte	0x10
 2354 116d E9       		.byte	0xe9
 2355 116e 41020000 		.4byte	.LASF432
 2356 1172 07120000 		.4byte	0x1207
 2357 1176 1D       		.uleb128 0x1d
 2358 1177 6B000000 		.4byte	0x6b
 2359 117b 1D       		.uleb128 0x1d
 2360 117c 6B000000 		.4byte	0x6b
 2361 1180 00       		.byte	0
 2362 1181 00       		.byte	0
 2363 1182 14       		.uleb128 0x14
 2364 1183 08       		.byte	0x8
 2365 1184 15       		.byte	0x15
 2366 1185 20       		.byte	0x20
 2367 1186 EF000000 		.4byte	.LASF253
 2368 118a A7110000 		.4byte	0x11a7
 2369 118e 11       		.uleb128 0x11
 2370 118f 28080000 		.4byte	.LASF254
 2371 1193 15       		.byte	0x15
 2372 1194 21       		.byte	0x21
 2373 1195 25000000 		.4byte	0x25
 2374 1199 00       		.byte	0
 2375 119a 18       		.uleb128 0x18
 2376 119b 72656D00 		.ascii	"rem\000"
 2377 119f 15       		.byte	0x15
 2378 11a0 22       		.byte	0x22
 2379 11a1 25000000 		.4byte	0x25
 2380 11a5 04       		.byte	0x4
 2381 11a6 00       		.byte	0
 2382 11a7 03       		.uleb128 0x3
 2383 11a8 DC0F0000 		.4byte	.LASF255
 2384 11ac 15       		.byte	0x15
 2385 11ad 23       		.byte	0x23
 2386 11ae 82110000 		.4byte	0x1182
 2387 11b2 14       		.uleb128 0x14
 2388 11b3 08       		.byte	0x8
 2389 11b4 15       		.byte	0x15
 2390 11b5 26       		.byte	0x26
 2391 11b6 6B0C0000 		.4byte	.LASF256
 2392 11ba D7110000 		.4byte	0x11d7
 2393 11be 11       		.uleb128 0x11
 2394 11bf 28080000 		.4byte	.LASF254
 2395 11c3 15       		.byte	0x15
 2396 11c4 27       		.byte	0x27
 2397 11c5 DD000000 		.4byte	0xdd
 2398 11c9 00       		.byte	0
 2399 11ca 18       		.uleb128 0x18
 2400 11cb 72656D00 		.ascii	"rem\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 58


 2401 11cf 15       		.byte	0x15
 2402 11d0 28       		.byte	0x28
 2403 11d1 DD000000 		.4byte	0xdd
 2404 11d5 04       		.byte	0x4
 2405 11d6 00       		.byte	0
 2406 11d7 03       		.uleb128 0x3
 2407 11d8 2B0E0000 		.4byte	.LASF257
 2408 11dc 15       		.byte	0x15
 2409 11dd 29       		.byte	0x29
 2410 11de B2110000 		.4byte	0x11b2
 2411 11e2 14       		.uleb128 0x14
 2412 11e3 10       		.byte	0x10
 2413 11e4 15       		.byte	0x15
 2414 11e5 2D       		.byte	0x2d
 2415 11e6 8E100000 		.4byte	.LASF258
 2416 11ea 07120000 		.4byte	0x1207
 2417 11ee 11       		.uleb128 0x11
 2418 11ef 28080000 		.4byte	.LASF254
 2419 11f3 15       		.byte	0x15
 2420 11f4 2E       		.byte	0x2e
 2421 11f5 6B000000 		.4byte	0x6b
 2422 11f9 00       		.byte	0
 2423 11fa 18       		.uleb128 0x18
 2424 11fb 72656D00 		.ascii	"rem\000"
 2425 11ff 15       		.byte	0x15
 2426 1200 2F       		.byte	0x2f
 2427 1201 6B000000 		.4byte	0x6b
 2428 1205 08       		.byte	0x8
 2429 1206 00       		.byte	0
 2430 1207 03       		.uleb128 0x3
 2431 1208 F0100000 		.4byte	.LASF259
 2432 120c 15       		.byte	0x15
 2433 120d 30       		.byte	0x30
 2434 120e E2110000 		.4byte	0x11e2
 2435 1212 03       		.uleb128 0x3
 2436 1213 AF090000 		.4byte	.LASF260
 2437 1217 15       		.byte	0x15
 2438 1218 35       		.byte	0x35
 2439 1219 1D120000 		.4byte	0x121d
 2440 121d 19       		.uleb128 0x19
 2441 121e 04       		.byte	0x4
 2442 121f 23120000 		.4byte	0x1223
 2443 1223 1C       		.uleb128 0x1c
 2444 1224 25000000 		.4byte	0x25
 2445 1228 37120000 		.4byte	0x1237
 2446 122c 1D       		.uleb128 0x1d
 2447 122d 37120000 		.4byte	0x1237
 2448 1231 1D       		.uleb128 0x1d
 2449 1232 37120000 		.4byte	0x1237
 2450 1236 00       		.byte	0
 2451 1237 19       		.uleb128 0x19
 2452 1238 04       		.byte	0x4
 2453 1239 3D120000 		.4byte	0x123d
 2454 123d 2E       		.uleb128 0x2e
 2455 123e 0F       		.uleb128 0xf
 2456 123f DE050000 		.4byte	.LASF261
 2457 1243 15       		.byte	0x15
ARM GAS  /tmp/ccQHvjuS.s 			page 59


 2458 1244 5F       		.byte	0x5f
 2459 1245 2E0D0000 		.4byte	0xd2e
 2460 1249 2F       		.uleb128 0x2f
 2461 124a BE0B0000 		.4byte	.LASF262
 2462 124e 15       		.byte	0x15
 2463 124f 48       		.byte	0x48
 2464 1250 25000000 		.4byte	0x25
 2465 1254 5E120000 		.4byte	0x125e
 2466 1258 1D       		.uleb128 0x1d
 2467 1259 30090000 		.4byte	0x930
 2468 125d 00       		.byte	0
 2469 125e 2F       		.uleb128 0x2f
 2470 125f 01110000 		.4byte	.LASF263
 2471 1263 15       		.byte	0x15
 2472 1264 49       		.byte	0x49
 2473 1265 73120000 		.4byte	0x1273
 2474 1269 73120000 		.4byte	0x1273
 2475 126d 1D       		.uleb128 0x1d
 2476 126e 640D0000 		.4byte	0xd64
 2477 1272 00       		.byte	0
 2478 1273 05       		.uleb128 0x5
 2479 1274 08       		.byte	0x8
 2480 1275 04       		.byte	0x4
 2481 1276 33110000 		.4byte	.LASF264
 2482 127a 2F       		.uleb128 0x2f
 2483 127b 10110000 		.4byte	.LASF265
 2484 127f 15       		.byte	0x15
 2485 1280 4D       		.byte	0x4d
 2486 1281 25000000 		.4byte	0x25
 2487 1285 8F120000 		.4byte	0x128f
 2488 1289 1D       		.uleb128 0x1d
 2489 128a 640D0000 		.4byte	0xd64
 2490 128e 00       		.byte	0
 2491 128f 2F       		.uleb128 0x2f
 2492 1290 15110000 		.4byte	.LASF266
 2493 1294 15       		.byte	0x15
 2494 1295 4F       		.byte	0x4f
 2495 1296 DD000000 		.4byte	0xdd
 2496 129a A4120000 		.4byte	0x12a4
 2497 129e 1D       		.uleb128 0x1d
 2498 129f 640D0000 		.4byte	0xd64
 2499 12a3 00       		.byte	0
 2500 12a4 2F       		.uleb128 0x2f
 2501 12a5 1E060000 		.4byte	.LASF267
 2502 12a9 15       		.byte	0x15
 2503 12aa 51       		.byte	0x51
 2504 12ab C9020000 		.4byte	0x2c9
 2505 12af CD120000 		.4byte	0x12cd
 2506 12b3 1D       		.uleb128 0x1d
 2507 12b4 37120000 		.4byte	0x1237
 2508 12b8 1D       		.uleb128 0x1d
 2509 12b9 37120000 		.4byte	0x1237
 2510 12bd 1D       		.uleb128 0x1d
 2511 12be 2C000000 		.4byte	0x2c
 2512 12c2 1D       		.uleb128 0x1d
 2513 12c3 2C000000 		.4byte	0x2c
 2514 12c7 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccQHvjuS.s 			page 60


 2515 12c8 12120000 		.4byte	0x1212
 2516 12cc 00       		.byte	0
 2517 12cd 30       		.uleb128 0x30
 2518 12ce 64697600 		.ascii	"div\000"
 2519 12d2 15       		.byte	0x15
 2520 12d3 57       		.byte	0x57
 2521 12d4 A7110000 		.4byte	0x11a7
 2522 12d8 E7120000 		.4byte	0x12e7
 2523 12dc 1D       		.uleb128 0x1d
 2524 12dd 25000000 		.4byte	0x25
 2525 12e1 1D       		.uleb128 0x1d
 2526 12e2 25000000 		.4byte	0x25
 2527 12e6 00       		.byte	0
 2528 12e7 2F       		.uleb128 0x2f
 2529 12e8 00000000 		.4byte	.LASF268
 2530 12ec 15       		.byte	0x15
 2531 12ed 5A       		.byte	0x5a
 2532 12ee 2E0D0000 		.4byte	0xd2e
 2533 12f2 FC120000 		.4byte	0x12fc
 2534 12f6 1D       		.uleb128 0x1d
 2535 12f7 640D0000 		.4byte	0xd64
 2536 12fb 00       		.byte	0
 2537 12fc 2F       		.uleb128 0x2f
 2538 12fd 6B090000 		.4byte	.LASF269
 2539 1301 15       		.byte	0x15
 2540 1302 63       		.byte	0x63
 2541 1303 D7110000 		.4byte	0x11d7
 2542 1307 16130000 		.4byte	0x1316
 2543 130b 1D       		.uleb128 0x1d
 2544 130c DD000000 		.4byte	0xdd
 2545 1310 1D       		.uleb128 0x1d
 2546 1311 DD000000 		.4byte	0xdd
 2547 1315 00       		.byte	0
 2548 1316 2F       		.uleb128 0x2f
 2549 1317 48010000 		.4byte	.LASF270
 2550 131b 15       		.byte	0x15
 2551 131c 65       		.byte	0x65
 2552 131d 25000000 		.4byte	0x25
 2553 1321 30130000 		.4byte	0x1330
 2554 1325 1D       		.uleb128 0x1d
 2555 1326 640D0000 		.4byte	0xd64
 2556 132a 1D       		.uleb128 0x1d
 2557 132b 2C000000 		.4byte	0x2c
 2558 132f 00       		.byte	0
 2559 1330 2F       		.uleb128 0x2f
 2560 1331 EC0B0000 		.4byte	.LASF271
 2561 1335 15       		.byte	0x15
 2562 1336 6B       		.byte	0x6b
 2563 1337 2C000000 		.4byte	0x2c
 2564 133b 4F130000 		.4byte	0x134f
 2565 133f 1D       		.uleb128 0x1d
 2566 1340 4F130000 		.4byte	0x134f
 2567 1344 1D       		.uleb128 0x1d
 2568 1345 640D0000 		.4byte	0xd64
 2569 1349 1D       		.uleb128 0x1d
 2570 134a 2C000000 		.4byte	0x2c
 2571 134e 00       		.byte	0
ARM GAS  /tmp/ccQHvjuS.s 			page 61


 2572 134f 19       		.uleb128 0x19
 2573 1350 04       		.byte	0x4
 2574 1351 55130000 		.4byte	0x1355
 2575 1355 05       		.uleb128 0x5
 2576 1356 04       		.byte	0x4
 2577 1357 07       		.byte	0x7
 2578 1358 D5010000 		.4byte	.LASF272
 2579 135c 04       		.uleb128 0x4
 2580 135d 55130000 		.4byte	0x1355
 2581 1361 2F       		.uleb128 0x2f
 2582 1362 97030000 		.4byte	.LASF273
 2583 1366 15       		.byte	0x15
 2584 1367 67       		.byte	0x67
 2585 1368 25000000 		.4byte	0x25
 2586 136c 80130000 		.4byte	0x1380
 2587 1370 1D       		.uleb128 0x1d
 2588 1371 4F130000 		.4byte	0x134f
 2589 1375 1D       		.uleb128 0x1d
 2590 1376 640D0000 		.4byte	0xd64
 2591 137a 1D       		.uleb128 0x1d
 2592 137b 2C000000 		.4byte	0x2c
 2593 137f 00       		.byte	0
 2594 1380 31       		.uleb128 0x31
 2595 1381 09120000 		.4byte	.LASF274
 2596 1385 15       		.byte	0x15
 2597 1386 87       		.byte	0x87
 2598 1387 A0130000 		.4byte	0x13a0
 2599 138b 1D       		.uleb128 0x1d
 2600 138c C9020000 		.4byte	0x2c9
 2601 1390 1D       		.uleb128 0x1d
 2602 1391 2C000000 		.4byte	0x2c
 2603 1395 1D       		.uleb128 0x1d
 2604 1396 2C000000 		.4byte	0x2c
 2605 139a 1D       		.uleb128 0x1d
 2606 139b 12120000 		.4byte	0x1212
 2607 139f 00       		.byte	0
 2608 13a0 32       		.uleb128 0x32
 2609 13a1 6A000000 		.4byte	.LASF433
 2610 13a5 15       		.byte	0x15
 2611 13a6 88       		.byte	0x88
 2612 13a7 25000000 		.4byte	0x25
 2613 13ab 31       		.uleb128 0x31
 2614 13ac CD090000 		.4byte	.LASF275
 2615 13b0 15       		.byte	0x15
 2616 13b1 93       		.byte	0x93
 2617 13b2 BC130000 		.4byte	0x13bc
 2618 13b6 1D       		.uleb128 0x1d
 2619 13b7 3C000000 		.4byte	0x3c
 2620 13bb 00       		.byte	0
 2621 13bc 2F       		.uleb128 0x2f
 2622 13bd 82050000 		.4byte	.LASF276
 2623 13c1 15       		.byte	0x15
 2624 13c2 94       		.byte	0x94
 2625 13c3 73120000 		.4byte	0x1273
 2626 13c7 D6130000 		.4byte	0x13d6
 2627 13cb 1D       		.uleb128 0x1d
 2628 13cc 640D0000 		.4byte	0xd64
ARM GAS  /tmp/ccQHvjuS.s 			page 62


 2629 13d0 1D       		.uleb128 0x1d
 2630 13d1 D6130000 		.4byte	0x13d6
 2631 13d5 00       		.byte	0
 2632 13d6 19       		.uleb128 0x19
 2633 13d7 04       		.byte	0x4
 2634 13d8 2E0D0000 		.4byte	0xd2e
 2635 13dc 2F       		.uleb128 0x2f
 2636 13dd F2050000 		.4byte	.LASF277
 2637 13e1 15       		.byte	0x15
 2638 13e2 9F       		.byte	0x9f
 2639 13e3 DD000000 		.4byte	0xdd
 2640 13e7 FB130000 		.4byte	0x13fb
 2641 13eb 1D       		.uleb128 0x1d
 2642 13ec 640D0000 		.4byte	0xd64
 2643 13f0 1D       		.uleb128 0x1d
 2644 13f1 D6130000 		.4byte	0x13d6
 2645 13f5 1D       		.uleb128 0x1d
 2646 13f6 25000000 		.4byte	0x25
 2647 13fa 00       		.byte	0
 2648 13fb 2F       		.uleb128 0x2f
 2649 13fc 230E0000 		.4byte	.LASF278
 2650 1400 15       		.byte	0x15
 2651 1401 A1       		.byte	0xa1
 2652 1402 EF000000 		.4byte	0xef
 2653 1406 1A140000 		.4byte	0x141a
 2654 140a 1D       		.uleb128 0x1d
 2655 140b 640D0000 		.4byte	0xd64
 2656 140f 1D       		.uleb128 0x1d
 2657 1410 D6130000 		.4byte	0x13d6
 2658 1414 1D       		.uleb128 0x1d
 2659 1415 25000000 		.4byte	0x25
 2660 1419 00       		.byte	0
 2661 141a 2F       		.uleb128 0x2f
 2662 141b C1000000 		.4byte	.LASF279
 2663 141f 15       		.byte	0x15
 2664 1420 A4       		.byte	0xa4
 2665 1421 25000000 		.4byte	0x25
 2666 1425 2F140000 		.4byte	0x142f
 2667 1429 1D       		.uleb128 0x1d
 2668 142a 640D0000 		.4byte	0xd64
 2669 142e 00       		.byte	0
 2670 142f 2F       		.uleb128 0x2f
 2671 1430 940F0000 		.4byte	.LASF280
 2672 1434 15       		.byte	0x15
 2673 1435 6D       		.byte	0x6d
 2674 1436 2C000000 		.4byte	0x2c
 2675 143a 4E140000 		.4byte	0x144e
 2676 143e 1D       		.uleb128 0x1d
 2677 143f 2E0D0000 		.4byte	0xd2e
 2678 1443 1D       		.uleb128 0x1d
 2679 1444 4E140000 		.4byte	0x144e
 2680 1448 1D       		.uleb128 0x1d
 2681 1449 2C000000 		.4byte	0x2c
 2682 144d 00       		.byte	0
 2683 144e 19       		.uleb128 0x19
 2684 144f 04       		.byte	0x4
 2685 1450 5C130000 		.4byte	0x135c
ARM GAS  /tmp/ccQHvjuS.s 			page 63


 2686 1454 2F       		.uleb128 0x2f
 2687 1455 C9040000 		.4byte	.LASF281
 2688 1459 15       		.byte	0x15
 2689 145a 69       		.byte	0x69
 2690 145b 25000000 		.4byte	0x25
 2691 145f 6E140000 		.4byte	0x146e
 2692 1463 1D       		.uleb128 0x1d
 2693 1464 2E0D0000 		.4byte	0xd2e
 2694 1468 1D       		.uleb128 0x1d
 2695 1469 55130000 		.4byte	0x1355
 2696 146d 00       		.byte	0
 2697 146e 2F       		.uleb128 0x2f
 2698 146f 31050000 		.4byte	.LASF282
 2699 1473 15       		.byte	0x15
 2700 1474 F1       		.byte	0xf1
 2701 1475 07120000 		.4byte	0x1207
 2702 1479 88140000 		.4byte	0x1488
 2703 147d 1D       		.uleb128 0x1d
 2704 147e 6B000000 		.4byte	0x6b
 2705 1482 1D       		.uleb128 0x1d
 2706 1483 6B000000 		.4byte	0x6b
 2707 1487 00       		.byte	0
 2708 1488 2F       		.uleb128 0x2f
 2709 1489 6D080000 		.4byte	.LASF283
 2710 148d 15       		.byte	0x15
 2711 148e EC       		.byte	0xec
 2712 148f 6B000000 		.4byte	0x6b
 2713 1493 9D140000 		.4byte	0x149d
 2714 1497 1D       		.uleb128 0x1d
 2715 1498 640D0000 		.4byte	0xd64
 2716 149c 00       		.byte	0
 2717 149d 2F       		.uleb128 0x2f
 2718 149e 59030000 		.4byte	.LASF284
 2719 14a2 15       		.byte	0x15
 2720 14a3 F2       		.byte	0xf2
 2721 14a4 6B000000 		.4byte	0x6b
 2722 14a8 BC140000 		.4byte	0x14bc
 2723 14ac 1D       		.uleb128 0x1d
 2724 14ad 640D0000 		.4byte	0xd64
 2725 14b1 1D       		.uleb128 0x1d
 2726 14b2 D6130000 		.4byte	0x13d6
 2727 14b6 1D       		.uleb128 0x1d
 2728 14b7 25000000 		.4byte	0x25
 2729 14bb 00       		.byte	0
 2730 14bc 2F       		.uleb128 0x2f
 2731 14bd 81020000 		.4byte	.LASF285
 2732 14c1 15       		.byte	0x15
 2733 14c2 F6       		.byte	0xf6
 2734 14c3 0C010000 		.4byte	0x10c
 2735 14c7 DB140000 		.4byte	0x14db
 2736 14cb 1D       		.uleb128 0x1d
 2737 14cc 640D0000 		.4byte	0xd64
 2738 14d0 1D       		.uleb128 0x1d
 2739 14d1 D6130000 		.4byte	0x13d6
 2740 14d5 1D       		.uleb128 0x1d
 2741 14d6 25000000 		.4byte	0x25
 2742 14da 00       		.byte	0
ARM GAS  /tmp/ccQHvjuS.s 			page 64


 2743 14db 2F       		.uleb128 0x2f
 2744 14dc 680F0000 		.4byte	.LASF286
 2745 14e0 15       		.byte	0x15
 2746 14e1 97       		.byte	0x97
 2747 14e2 F5140000 		.4byte	0x14f5
 2748 14e6 F5140000 		.4byte	0x14f5
 2749 14ea 1D       		.uleb128 0x1d
 2750 14eb 640D0000 		.4byte	0xd64
 2751 14ef 1D       		.uleb128 0x1d
 2752 14f0 D6130000 		.4byte	0x13d6
 2753 14f4 00       		.byte	0
 2754 14f5 05       		.uleb128 0x5
 2755 14f6 04       		.byte	0x4
 2756 14f7 04       		.byte	0x4
 2757 14f8 8E0E0000 		.4byte	.LASF287
 2758 14fc 33       		.uleb128 0x33
 2759 14fd 49030000 		.4byte	.LASF288
 2760 1501 15       		.byte	0x15
 2761 1502 2801     		.2byte	0x128
 2762 1504 72000000 		.4byte	0x72
 2763 1508 17150000 		.4byte	0x1517
 2764 150c 1D       		.uleb128 0x1d
 2765 150d 640D0000 		.4byte	0xd64
 2766 1511 1D       		.uleb128 0x1d
 2767 1512 D6130000 		.4byte	0x13d6
 2768 1516 00       		.byte	0
 2769 1517 28       		.uleb128 0x28
 2770 1518 16       		.byte	0x16
 2771 1519 27       		.byte	0x27
 2772 151a 49120000 		.4byte	0x1249
 2773 151e 28       		.uleb128 0x28
 2774 151f 16       		.byte	0x16
 2775 1520 33       		.byte	0x33
 2776 1521 A7110000 		.4byte	0x11a7
 2777 1525 28       		.uleb128 0x28
 2778 1526 16       		.byte	0x16
 2779 1527 34       		.byte	0x34
 2780 1528 D7110000 		.4byte	0x11d7
 2781 152c 28       		.uleb128 0x28
 2782 152d 16       		.byte	0x16
 2783 152e 36       		.byte	0x36
 2784 152f 09100000 		.4byte	0x1009
 2785 1533 28       		.uleb128 0x28
 2786 1534 16       		.byte	0x16
 2787 1535 37       		.byte	0x37
 2788 1536 5E120000 		.4byte	0x125e
 2789 153a 28       		.uleb128 0x28
 2790 153b 16       		.byte	0x16
 2791 153c 38       		.byte	0x38
 2792 153d 7A120000 		.4byte	0x127a
 2793 1541 28       		.uleb128 0x28
 2794 1542 16       		.byte	0x16
 2795 1543 39       		.byte	0x39
 2796 1544 8F120000 		.4byte	0x128f
 2797 1548 28       		.uleb128 0x28
 2798 1549 16       		.byte	0x16
 2799 154a 3A       		.byte	0x3a
ARM GAS  /tmp/ccQHvjuS.s 			page 65


 2800 154b A4120000 		.4byte	0x12a4
 2801 154f 28       		.uleb128 0x28
 2802 1550 16       		.byte	0x16
 2803 1551 3C       		.byte	0x3c
 2804 1552 67110000 		.4byte	0x1167
 2805 1556 28       		.uleb128 0x28
 2806 1557 16       		.byte	0x16
 2807 1558 3E       		.byte	0x3e
 2808 1559 E7120000 		.4byte	0x12e7
 2809 155d 28       		.uleb128 0x28
 2810 155e 16       		.byte	0x16
 2811 155f 40       		.byte	0x40
 2812 1560 FC120000 		.4byte	0x12fc
 2813 1564 28       		.uleb128 0x28
 2814 1565 16       		.byte	0x16
 2815 1566 43       		.byte	0x43
 2816 1567 16130000 		.4byte	0x1316
 2817 156b 28       		.uleb128 0x28
 2818 156c 16       		.byte	0x16
 2819 156d 44       		.byte	0x44
 2820 156e 30130000 		.4byte	0x1330
 2821 1572 28       		.uleb128 0x28
 2822 1573 16       		.byte	0x16
 2823 1574 45       		.byte	0x45
 2824 1575 61130000 		.4byte	0x1361
 2825 1579 28       		.uleb128 0x28
 2826 157a 16       		.byte	0x16
 2827 157b 47       		.byte	0x47
 2828 157c 80130000 		.4byte	0x1380
 2829 1580 28       		.uleb128 0x28
 2830 1581 16       		.byte	0x16
 2831 1582 48       		.byte	0x48
 2832 1583 A0130000 		.4byte	0x13a0
 2833 1587 28       		.uleb128 0x28
 2834 1588 16       		.byte	0x16
 2835 1589 4A       		.byte	0x4a
 2836 158a AB130000 		.4byte	0x13ab
 2837 158e 28       		.uleb128 0x28
 2838 158f 16       		.byte	0x16
 2839 1590 4B       		.byte	0x4b
 2840 1591 BC130000 		.4byte	0x13bc
 2841 1595 28       		.uleb128 0x28
 2842 1596 16       		.byte	0x16
 2843 1597 4C       		.byte	0x4c
 2844 1598 DC130000 		.4byte	0x13dc
 2845 159c 28       		.uleb128 0x28
 2846 159d 16       		.byte	0x16
 2847 159e 4D       		.byte	0x4d
 2848 159f FB130000 		.4byte	0x13fb
 2849 15a3 28       		.uleb128 0x28
 2850 15a4 16       		.byte	0x16
 2851 15a5 4E       		.byte	0x4e
 2852 15a6 1A140000 		.4byte	0x141a
 2853 15aa 28       		.uleb128 0x28
 2854 15ab 16       		.byte	0x16
 2855 15ac 50       		.byte	0x50
 2856 15ad 2F140000 		.4byte	0x142f
ARM GAS  /tmp/ccQHvjuS.s 			page 66


 2857 15b1 28       		.uleb128 0x28
 2858 15b2 16       		.byte	0x16
 2859 15b3 51       		.byte	0x51
 2860 15b4 54140000 		.4byte	0x1454
 2861 15b8 0F       		.uleb128 0xf
 2862 15b9 FD020000 		.4byte	.LASF289
 2863 15bd 17       		.byte	0x17
 2864 15be 8F       		.byte	0x8f
 2865 15bf CA150000 		.4byte	0x15ca
 2866 15c3 05       		.uleb128 0x5
 2867 15c4 01       		.byte	0x1
 2868 15c5 02       		.byte	0x2
 2869 15c6 24090000 		.4byte	.LASF290
 2870 15ca 0A       		.uleb128 0xa
 2871 15cb C3150000 		.4byte	0x15c3
 2872 15cf 34       		.uleb128 0x34
 2873 15d0 5F0E0000 		.4byte	.LASF291
 2874 15d4 17       		.byte	0x17
 2875 15d5 94       		.byte	0x94
 2876 15d6 CD010000 		.4byte	0x1cd
 2877 15da 05       		.uleb128 0x5
 2878 15db 03       		.byte	0x3
 2879 15dc 00000000 		.4byte	_ZL32cpu_irq_critical_section_counter
 2880 15e0 34       		.uleb128 0x34
 2881 15e1 53050000 		.4byte	.LASF292
 2882 15e5 17       		.byte	0x17
 2883 15e6 95       		.byte	0x95
 2884 15e7 CA150000 		.4byte	0x15ca
 2885 15eb 05       		.uleb128 0x5
 2886 15ec 03       		.byte	0x3
 2887 15ed 00000000 		.4byte	_ZL28cpu_irq_prev_interrupt_state
 2888 15f1 03       		.uleb128 0x3
 2889 15f2 DB060000 		.4byte	.LASF293
 2890 15f6 18       		.byte	0x18
 2891 15f7 AD       		.byte	0xad
 2892 15f8 F5140000 		.4byte	0x14f5
 2893 15fc 03       		.uleb128 0x3
 2894 15fd 0F010000 		.4byte	.LASF294
 2895 1601 18       		.byte	0x18
 2896 1602 AE       		.byte	0xae
 2897 1603 73120000 		.4byte	0x1273
 2898 1607 35       		.uleb128 0x35
 2899 1608 9D0F0000 		.4byte	.LASF300
 2900 160c 01       		.byte	0x1
 2901 160d 95000000 		.4byte	0x95
 2902 1611 18       		.byte	0x18
 2903 1612 9902     		.2byte	0x299
 2904 1614 31160000 		.4byte	0x1631
 2905 1618 36       		.uleb128 0x36
 2906 1619 790C0000 		.4byte	.LASF295
 2907 161d 7F       		.sleb128 -1
 2908 161e 37       		.uleb128 0x37
 2909 161f F4080000 		.4byte	.LASF296
 2910 1623 00       		.byte	0
 2911 1624 37       		.uleb128 0x37
 2912 1625 6F000000 		.4byte	.LASF297
 2913 1629 01       		.byte	0x1
ARM GAS  /tmp/ccQHvjuS.s 			page 67


 2914 162a 37       		.uleb128 0x37
 2915 162b E5040000 		.4byte	.LASF298
 2916 162f 02       		.byte	0x2
 2917 1630 00       		.byte	0
 2918 1631 0E       		.uleb128 0xe
 2919 1632 89090000 		.4byte	.LASF299
 2920 1636 18       		.byte	0x18
 2921 1637 A402     		.2byte	0x2a4
 2922 1639 07160000 		.4byte	0x1607
 2923 163d 19       		.uleb128 0x19
 2924 163e 04       		.byte	0x4
 2925 163f 72000000 		.4byte	0x72
 2926 1643 28       		.uleb128 0x28
 2927 1644 19       		.byte	0x19
 2928 1645 36       		.byte	0x36
 2929 1646 32100000 		.4byte	0x1032
 2930 164a 38       		.uleb128 0x38
 2931 164b C4110000 		.4byte	.LASF301
 2932 164f 04       		.byte	0x4
 2933 1650 3C000000 		.4byte	0x3c
 2934 1654 1A       		.byte	0x1a
 2935 1655 50       		.byte	0x50
 2936 1656 A0160000 		.4byte	0x16a0
 2937 165a 37       		.uleb128 0x37
 2938 165b 570B0000 		.4byte	.LASF302
 2939 165f 00       		.byte	0
 2940 1660 39       		.uleb128 0x39
 2941 1661 80070000 		.4byte	.LASF303
 2942 1665 00000008 		.4byte	0x8000000
 2943 1669 39       		.uleb128 0x39
 2944 166a 8D070000 		.4byte	.LASF304
 2945 166e 00000010 		.4byte	0x10000000
 2946 1672 39       		.uleb128 0x39
 2947 1673 9A070000 		.4byte	.LASF305
 2948 1677 00000018 		.4byte	0x18000000
 2949 167b 39       		.uleb128 0x39
 2950 167c 57080000 		.4byte	.LASF306
 2951 1680 00000020 		.4byte	0x20000000
 2952 1684 39       		.uleb128 0x39
 2953 1685 7E000000 		.4byte	.LASF307
 2954 1689 00000028 		.4byte	0x28000000
 2955 168d 39       		.uleb128 0x39
 2956 168e C4050000 		.4byte	.LASF308
 2957 1692 00000030 		.4byte	0x30000000
 2958 1696 39       		.uleb128 0x39
 2959 1697 D1050000 		.4byte	.LASF309
 2960 169b 00000038 		.4byte	0x38000000
 2961 169f 00       		.byte	0
 2962 16a0 03       		.uleb128 0x3
 2963 16a1 37050000 		.4byte	.LASF310
 2964 16a5 1A       		.byte	0x1a
 2965 16a6 5B       		.byte	0x5b
 2966 16a7 4A160000 		.4byte	0x164a
 2967 16ab 13       		.uleb128 0x13
 2968 16ac 50696E00 		.ascii	"Pin\000"
 2969 16b0 1B       		.byte	0x1b
 2970 16b1 38       		.byte	0x38
ARM GAS  /tmp/ccQHvjuS.s 			page 68


 2971 16b2 8C010000 		.4byte	0x18c
 2972 16b6 04       		.uleb128 0x4
 2973 16b7 AB160000 		.4byte	0x16ab
 2974 16bb 3A       		.uleb128 0x3a
 2975 16bc 50090000 		.4byte	.LASF311
 2976 16c0 1B       		.byte	0x1b
 2977 16c1 39       		.byte	0x39
 2978 16c2 B6160000 		.4byte	0x16b6
 2979 16c6 7F       		.sleb128 -1
 2980 16c7 38       		.uleb128 0x38
 2981 16c8 42100000 		.4byte	.LASF312
 2982 16cc 01       		.byte	0x1
 2983 16cd 95000000 		.4byte	0x95
 2984 16d1 1B       		.byte	0x1b
 2985 16d2 4E       		.byte	0x4e
 2986 16d3 0E170000 		.4byte	0x170e
 2987 16d7 36       		.uleb128 0x36
 2988 16d8 81110000 		.4byte	.LASF313
 2989 16dc 7F       		.sleb128 -1
 2990 16dd 37       		.uleb128 0x37
 2991 16de FA010000 		.4byte	.LASF314
 2992 16e2 00       		.byte	0
 2993 16e3 37       		.uleb128 0x37
 2994 16e4 02020000 		.4byte	.LASF315
 2995 16e8 01       		.byte	0x1
 2996 16e9 37       		.uleb128 0x37
 2997 16ea 3A110000 		.4byte	.LASF316
 2998 16ee 02       		.byte	0x2
 2999 16ef 37       		.uleb128 0x37
 3000 16f0 12020000 		.4byte	.LASF317
 3001 16f4 03       		.byte	0x3
 3002 16f5 37       		.uleb128 0x37
 3003 16f6 1A020000 		.4byte	.LASF318
 3004 16fa 04       		.byte	0x4
 3005 16fb 37       		.uleb128 0x37
 3006 16fc 22020000 		.4byte	.LASF319
 3007 1700 05       		.byte	0x5
 3008 1701 37       		.uleb128 0x37
 3009 1702 2A020000 		.4byte	.LASF320
 3010 1706 06       		.byte	0x6
 3011 1707 37       		.uleb128 0x37
 3012 1708 32020000 		.4byte	.LASF321
 3013 170c 07       		.byte	0x7
 3014 170d 00       		.byte	0
 3015 170e 03       		.uleb128 0x3
 3016 170f AA0E0000 		.4byte	.LASF322
 3017 1713 1B       		.byte	0x1b
 3018 1714 59       		.byte	0x59
 3019 1715 C7160000 		.4byte	0x16c7
 3020 1719 38       		.uleb128 0x38
 3021 171a A20A0000 		.4byte	.LASF323
 3022 171e 01       		.byte	0x1
 3023 171f 95000000 		.4byte	0x95
 3024 1723 1B       		.byte	0x1b
 3025 1724 5C       		.byte	0x5c
 3026 1725 9C170000 		.4byte	0x179c
 3027 1729 36       		.uleb128 0x36
ARM GAS  /tmp/ccQHvjuS.s 			page 69


 3028 172a 8D0C0000 		.4byte	.LASF324
 3029 172e 7F       		.sleb128 -1
 3030 172f 37       		.uleb128 0x37
 3031 1730 FB0D0000 		.4byte	.LASF325
 3032 1734 00       		.byte	0
 3033 1735 37       		.uleb128 0x37
 3034 1736 3B0F0000 		.4byte	.LASF326
 3035 173a 01       		.byte	0x1
 3036 173b 37       		.uleb128 0x37
 3037 173c 040E0000 		.4byte	.LASF327
 3038 1740 02       		.byte	0x2
 3039 1741 37       		.uleb128 0x37
 3040 1742 440F0000 		.4byte	.LASF328
 3041 1746 03       		.byte	0x3
 3042 1747 37       		.uleb128 0x37
 3043 1748 0D0E0000 		.4byte	.LASF329
 3044 174c 04       		.byte	0x4
 3045 174d 37       		.uleb128 0x37
 3046 174e 4D0F0000 		.4byte	.LASF330
 3047 1752 05       		.byte	0x5
 3048 1753 37       		.uleb128 0x37
 3049 1754 65070000 		.4byte	.LASF331
 3050 1758 06       		.byte	0x6
 3051 1759 37       		.uleb128 0x37
 3052 175a 96080000 		.4byte	.LASF332
 3053 175e 07       		.byte	0x7
 3054 175f 37       		.uleb128 0x37
 3055 1760 6E070000 		.4byte	.LASF333
 3056 1764 08       		.byte	0x8
 3057 1765 37       		.uleb128 0x37
 3058 1766 9F080000 		.4byte	.LASF334
 3059 176a 09       		.byte	0x9
 3060 176b 37       		.uleb128 0x37
 3061 176c 77070000 		.4byte	.LASF335
 3062 1770 0A       		.byte	0xa
 3063 1771 37       		.uleb128 0x37
 3064 1772 A8080000 		.4byte	.LASF336
 3065 1776 0B       		.byte	0xb
 3066 1777 37       		.uleb128 0x37
 3067 1778 18010000 		.4byte	.LASF337
 3068 177c 0C       		.byte	0xc
 3069 177d 37       		.uleb128 0x37
 3070 177e 66020000 		.4byte	.LASF338
 3071 1782 0D       		.byte	0xd
 3072 1783 37       		.uleb128 0x37
 3073 1784 21010000 		.4byte	.LASF339
 3074 1788 0E       		.byte	0xe
 3075 1789 37       		.uleb128 0x37
 3076 178a 350A0000 		.4byte	.LASF340
 3077 178e 0F       		.byte	0xf
 3078 178f 37       		.uleb128 0x37
 3079 1790 2A010000 		.4byte	.LASF341
 3080 1794 10       		.byte	0x10
 3081 1795 37       		.uleb128 0x37
 3082 1796 78020000 		.4byte	.LASF342
 3083 179a 11       		.byte	0x11
 3084 179b 00       		.byte	0
ARM GAS  /tmp/ccQHvjuS.s 			page 70


 3085 179c 03       		.uleb128 0x3
 3086 179d B70A0000 		.4byte	.LASF343
 3087 17a1 1B       		.byte	0x1b
 3088 17a2 71       		.byte	0x71
 3089 17a3 19170000 		.4byte	0x1719
 3090 17a7 38       		.uleb128 0x38
 3091 17a8 61030000 		.4byte	.LASF344
 3092 17ac 01       		.byte	0x1
 3093 17ad 95000000 		.4byte	0x95
 3094 17b1 1B       		.byte	0x1b
 3095 17b2 7E       		.byte	0x7e
 3096 17b3 8A180000 		.4byte	0x188a
 3097 17b7 36       		.uleb128 0x36
 3098 17b8 2E060000 		.4byte	.LASF345
 3099 17bc 7F       		.sleb128 -1
 3100 17bd 37       		.uleb128 0x37
 3101 17be 7D080000 		.4byte	.LASF346
 3102 17c2 00       		.byte	0
 3103 17c3 37       		.uleb128 0x37
 3104 17c4 82080000 		.4byte	.LASF347
 3105 17c8 01       		.byte	0x1
 3106 17c9 37       		.uleb128 0x37
 3107 17ca 87080000 		.4byte	.LASF348
 3108 17ce 02       		.byte	0x2
 3109 17cf 37       		.uleb128 0x37
 3110 17d0 8C080000 		.4byte	.LASF349
 3111 17d4 03       		.byte	0x3
 3112 17d5 37       		.uleb128 0x37
 3113 17d6 91080000 		.4byte	.LASF350
 3114 17da 04       		.byte	0x4
 3115 17db 37       		.uleb128 0x37
 3116 17dc CD030000 		.4byte	.LASF351
 3117 17e0 05       		.byte	0x5
 3118 17e1 37       		.uleb128 0x37
 3119 17e2 D2030000 		.4byte	.LASF352
 3120 17e6 06       		.byte	0x6
 3121 17e7 37       		.uleb128 0x37
 3122 17e8 E6030000 		.4byte	.LASF353
 3123 17ec 07       		.byte	0x7
 3124 17ed 37       		.uleb128 0x37
 3125 17ee B1080000 		.4byte	.LASF354
 3126 17f2 08       		.byte	0x8
 3127 17f3 37       		.uleb128 0x37
 3128 17f4 B6080000 		.4byte	.LASF355
 3129 17f8 09       		.byte	0x9
 3130 17f9 37       		.uleb128 0x37
 3131 17fa 63060000 		.4byte	.LASF356
 3132 17fe 0A       		.byte	0xa
 3133 17ff 37       		.uleb128 0x37
 3134 1800 69060000 		.4byte	.LASF357
 3135 1804 0B       		.byte	0xb
 3136 1805 37       		.uleb128 0x37
 3137 1806 6F060000 		.4byte	.LASF358
 3138 180a 0C       		.byte	0xc
 3139 180b 37       		.uleb128 0x37
 3140 180c 75060000 		.4byte	.LASF359
 3141 1810 0D       		.byte	0xd
ARM GAS  /tmp/ccQHvjuS.s 			page 71


 3142 1811 37       		.uleb128 0x37
 3143 1812 7B060000 		.4byte	.LASF360
 3144 1816 0E       		.byte	0xe
 3145 1817 37       		.uleb128 0x37
 3146 1818 81060000 		.4byte	.LASF361
 3147 181c 0F       		.byte	0xf
 3148 181d 37       		.uleb128 0x37
 3149 181e 87060000 		.4byte	.LASF362
 3150 1822 10       		.byte	0x10
 3151 1823 37       		.uleb128 0x37
 3152 1824 8D060000 		.4byte	.LASF363
 3153 1828 11       		.byte	0x11
 3154 1829 37       		.uleb128 0x37
 3155 182a 93060000 		.4byte	.LASF364
 3156 182e 12       		.byte	0x12
 3157 182f 37       		.uleb128 0x37
 3158 1830 99060000 		.4byte	.LASF365
 3159 1834 13       		.byte	0x13
 3160 1835 37       		.uleb128 0x37
 3161 1836 C0070000 		.4byte	.LASF366
 3162 183a 14       		.byte	0x14
 3163 183b 37       		.uleb128 0x37
 3164 183c C6070000 		.4byte	.LASF367
 3165 1840 15       		.byte	0x15
 3166 1841 37       		.uleb128 0x37
 3167 1842 CC070000 		.4byte	.LASF368
 3168 1846 16       		.byte	0x16
 3169 1847 37       		.uleb128 0x37
 3170 1848 46080000 		.4byte	.LASF369
 3171 184c 17       		.byte	0x17
 3172 184d 37       		.uleb128 0x37
 3173 184e DC070000 		.4byte	.LASF370
 3174 1852 18       		.byte	0x18
 3175 1853 37       		.uleb128 0x37
 3176 1854 E2070000 		.4byte	.LASF371
 3177 1858 19       		.byte	0x19
 3178 1859 37       		.uleb128 0x37
 3179 185a E8070000 		.4byte	.LASF372
 3180 185e 1A       		.byte	0x1a
 3181 185f 37       		.uleb128 0x37
 3182 1860 EE070000 		.4byte	.LASF373
 3183 1864 1B       		.byte	0x1b
 3184 1865 37       		.uleb128 0x37
 3185 1866 F4070000 		.4byte	.LASF374
 3186 186a 1C       		.byte	0x1c
 3187 186b 37       		.uleb128 0x37
 3188 186c FA070000 		.4byte	.LASF375
 3189 1870 1D       		.byte	0x1d
 3190 1871 37       		.uleb128 0x37
 3191 1872 DD080000 		.4byte	.LASF376
 3192 1876 1E       		.byte	0x1e
 3193 1877 37       		.uleb128 0x37
 3194 1878 E3080000 		.4byte	.LASF377
 3195 187c 1F       		.byte	0x1f
 3196 187d 3B       		.uleb128 0x3b
 3197 187e 44413000 		.ascii	"DA0\000"
 3198 1882 20       		.byte	0x20
ARM GAS  /tmp/ccQHvjuS.s 			page 72


 3199 1883 3B       		.uleb128 0x3b
 3200 1884 44413100 		.ascii	"DA1\000"
 3201 1888 21       		.byte	0x21
 3202 1889 00       		.byte	0
 3203 188a 17       		.uleb128 0x17
 3204 188b 7A090000 		.4byte	.LASF378
 3205 188f 1C       		.byte	0x1c
 3206 1890 1B       		.byte	0x1b
 3207 1891 AF       		.byte	0xaf
 3208 1892 03190000 		.4byte	0x1903
 3209 1896 11       		.uleb128 0x11
 3210 1897 160C0000 		.4byte	.LASF379
 3211 189b 1B       		.byte	0x1b
 3212 189c B1       		.byte	0xb1
 3213 189d 08190000 		.4byte	0x1908
 3214 18a1 00       		.byte	0
 3215 18a2 11       		.uleb128 0x11
 3216 18a3 DD010000 		.4byte	.LASF380
 3217 18a7 1B       		.byte	0x1b
 3218 18a8 B2       		.byte	0xb2
 3219 18a9 C2010000 		.4byte	0x1c2
 3220 18ad 04       		.byte	0x4
 3221 18ae 11       		.uleb128 0x11
 3222 18af 23030000 		.4byte	.LASF381
 3223 18b3 1B       		.byte	0x1b
 3224 18b4 B3       		.byte	0xb3
 3225 18b5 C2010000 		.4byte	0x1c2
 3226 18b9 08       		.byte	0x8
 3227 18ba 11       		.uleb128 0x11
 3228 18bb 780A0000 		.4byte	.LASF382
 3229 18bf 1B       		.byte	0x1b
 3230 18c0 B4       		.byte	0xb4
 3231 18c1 A0160000 		.4byte	0x16a0
 3232 18c5 0C       		.byte	0xc
 3233 18c6 11       		.uleb128 0x11
 3234 18c7 47000000 		.4byte	.LASF383
 3235 18cb 1B       		.byte	0x1b
 3236 18cc B5       		.byte	0xb5
 3237 18cd C2010000 		.4byte	0x1c2
 3238 18d1 10       		.byte	0x10
 3239 18d2 11       		.uleb128 0x11
 3240 18d3 B70F0000 		.4byte	.LASF384
 3241 18d7 1B       		.byte	0x1b
 3242 18d8 B6       		.byte	0xb6
 3243 18d9 C2010000 		.4byte	0x1c2
 3244 18dd 14       		.byte	0x14
 3245 18de 11       		.uleb128 0x11
 3246 18df BA030000 		.4byte	.LASF385
 3247 18e3 1B       		.byte	0x1b
 3248 18e4 B7       		.byte	0xb7
 3249 18e5 A7170000 		.4byte	0x17a7
 3250 18e9 18       		.byte	0x18
 3251 18ea 11       		.uleb128 0x11
 3252 18eb 9F0B0000 		.4byte	.LASF386
 3253 18ef 1B       		.byte	0x1b
 3254 18f0 B8       		.byte	0xb8
 3255 18f1 0E170000 		.4byte	0x170e
ARM GAS  /tmp/ccQHvjuS.s 			page 73


 3256 18f5 19       		.byte	0x19
 3257 18f6 11       		.uleb128 0x11
 3258 18f7 42110000 		.4byte	.LASF387
 3259 18fb 1B       		.byte	0x1b
 3260 18fc B9       		.byte	0xb9
 3261 18fd 9C170000 		.4byte	0x179c
 3262 1901 1A       		.byte	0x1a
 3263 1902 00       		.byte	0
 3264 1903 04       		.uleb128 0x4
 3265 1904 8A180000 		.4byte	0x188a
 3266 1908 19       		.uleb128 0x19
 3267 1909 04       		.byte	0x4
 3268 190a 85060000 		.4byte	0x685
 3269 190e 0C       		.uleb128 0xc
 3270 190f 03190000 		.4byte	0x1903
 3271 1913 19190000 		.4byte	0x1919
 3272 1917 3C       		.uleb128 0x3c
 3273 1918 00       		.byte	0
 3274 1919 0F       		.uleb128 0xf
 3275 191a 3B060000 		.4byte	.LASF388
 3276 191e 1B       		.byte	0x1b
 3277 191f BD       		.byte	0xbd
 3278 1920 0E190000 		.4byte	0x190e
 3279 1924 0F       		.uleb128 0xf
 3280 1925 940A0000 		.4byte	.LASF389
 3281 1929 1C       		.byte	0x1c
 3282 192a 2E       		.byte	0x2e
 3283 192b 640D0000 		.4byte	0xd64
 3284 192f 0C       		.uleb128 0xc
 3285 1930 3B0D0000 		.4byte	0xd3b
 3286 1934 3A190000 		.4byte	0x193a
 3287 1938 3C       		.uleb128 0x3c
 3288 1939 00       		.byte	0
 3289 193a 0F       		.uleb128 0xf
 3290 193b 88000000 		.4byte	.LASF390
 3291 193f 1C       		.byte	0x1c
 3292 1940 6E       		.byte	0x6e
 3293 1941 2F190000 		.4byte	0x192f
 3294 1945 3D       		.uleb128 0x3d
 3295 1946 CA0E0000 		.4byte	.LASF392
 3296 194a 73190000 		.4byte	0x1973
 3297 194e 3E       		.uleb128 0x3e
 3298 194f D1080000 		.4byte	.LASF414
 3299 1953 22       		.byte	0x22
 3300 1954 3B       		.byte	0x3b
 3301 1955 3B090000 		.4byte	.LASF434
 3302 1959 2C000000 		.4byte	0x2c
 3303 195d 01       		.byte	0x1
 3304 195e 62190000 		.4byte	0x1962
 3305 1962 3F       		.uleb128 0x3f
 3306 1963 73190000 		.4byte	0x1973
 3307 1967 1D       		.uleb128 0x1d
 3308 1968 640D0000 		.4byte	0xd64
 3309 196c 1D       		.uleb128 0x1d
 3310 196d 2C000000 		.4byte	0x2c
 3311 1971 00       		.byte	0
 3312 1972 00       		.byte	0
ARM GAS  /tmp/ccQHvjuS.s 			page 74


 3313 1973 19       		.uleb128 0x19
 3314 1974 04       		.byte	0x4
 3315 1975 45190000 		.4byte	0x1945
 3316 1979 40       		.uleb128 0x40
 3317 197a 4C0E0000 		.4byte	.LASF391
 3318 197e 1D       		.byte	0x1d
 3319 197f 1D       		.byte	0x1d
 3320 1980 37000000 		.4byte	0x37
 3321 1984 0002     		.2byte	0x200
 3322 1986 3D       		.uleb128 0x3d
 3323 1987 0C0C0000 		.4byte	.LASF393
 3324 198b 97190000 		.4byte	0x1997
 3325 198f 28       		.uleb128 0x28
 3326 1990 1E       		.byte	0x1e
 3327 1991 26       		.byte	0x26
 3328 1992 4E190000 		.4byte	0x194e
 3329 1996 00       		.byte	0
 3330 1997 0F       		.uleb128 0xf
 3331 1998 73080000 		.4byte	.LASF394
 3332 199c 1F       		.byte	0x1f
 3333 199d 8B       		.byte	0x8b
 3334 199e DD000000 		.4byte	0xdd
 3335 19a2 0F       		.uleb128 0xf
 3336 19a3 5C0C0000 		.4byte	.LASF395
 3337 19a7 1F       		.byte	0x1f
 3338 19a8 8C       		.byte	0x8c
 3339 19a9 25000000 		.4byte	0x25
 3340 19ad 0C       		.uleb128 0xc
 3341 19ae 2E0D0000 		.4byte	0xd2e
 3342 19b2 BD190000 		.4byte	0x19bd
 3343 19b6 0D       		.uleb128 0xd
 3344 19b7 CB020000 		.4byte	0x2cb
 3345 19bb 01       		.byte	0x1
 3346 19bc 00       		.byte	0
 3347 19bd 0F       		.uleb128 0xf
 3348 19be D00C0000 		.4byte	.LASF396
 3349 19c2 1F       		.byte	0x1f
 3350 19c3 8F       		.byte	0x8f
 3351 19c4 AD190000 		.4byte	0x19ad
 3352 19c8 41       		.uleb128 0x41
 3353 19c9 600A0000 		.4byte	.LASF397
 3354 19cd 20       		.byte	0x20
 3355 19ce 5C       		.byte	0x5c
 3356 19cf 97010000 		.4byte	0x197
 3357 19d3 38       		.byte	0x38
 3358 19d4 41       		.uleb128 0x41
 3359 19d5 19080000 		.4byte	.LASF398
 3360 19d9 20       		.byte	0x20
 3361 19da 5D       		.byte	0x5d
 3362 19db 97010000 		.4byte	0x197
 3363 19df 05       		.byte	0x5
 3364 19e0 41       		.uleb128 0x41
 3365 19e1 8D040000 		.4byte	.LASF399
 3366 19e5 20       		.byte	0x20
 3367 19e6 5E       		.byte	0x5e
 3368 19e7 97010000 		.4byte	0x197
 3369 19eb 06       		.byte	0x6
ARM GAS  /tmp/ccQHvjuS.s 			page 75


 3370 19ec 41       		.uleb128 0x41
 3371 19ed 6C0A0000 		.4byte	.LASF400
 3372 19f1 20       		.byte	0x20
 3373 19f2 60       		.byte	0x60
 3374 19f3 97010000 		.4byte	0x197
 3375 19f7 39       		.byte	0x39
 3376 19f8 41       		.uleb128 0x41
 3377 19f9 E3010000 		.4byte	.LASF401
 3378 19fd 20       		.byte	0x20
 3379 19fe 61       		.byte	0x61
 3380 19ff 97010000 		.4byte	0x197
 3381 1a03 03       		.byte	0x3
 3382 1a04 41       		.uleb128 0x41
 3383 1a05 7F100000 		.4byte	.LASF402
 3384 1a09 20       		.byte	0x20
 3385 1a0a 62       		.byte	0x62
 3386 1a0b 97010000 		.4byte	0x197
 3387 1a0f 04       		.byte	0x4
 3388 1a10 41       		.uleb128 0x41
 3389 1a11 E3060000 		.4byte	.LASF403
 3390 1a15 20       		.byte	0x20
 3391 1a16 69       		.byte	0x69
 3392 1a17 97010000 		.4byte	0x197
 3393 1a1b 33       		.byte	0x33
 3394 1a1c 41       		.uleb128 0x41
 3395 1a1d A0100000 		.4byte	.LASF404
 3396 1a21 20       		.byte	0x20
 3397 1a22 6A       		.byte	0x6a
 3398 1a23 97010000 		.4byte	0x197
 3399 1a27 34       		.byte	0x34
 3400 1a28 41       		.uleb128 0x41
 3401 1a29 EC0F0000 		.4byte	.LASF405
 3402 1a2d 20       		.byte	0x20
 3403 1a2e 6D       		.byte	0x6d
 3404 1a2f 97010000 		.4byte	0x197
 3405 1a33 35       		.byte	0x35
 3406 1a34 41       		.uleb128 0x41
 3407 1a35 D00E0000 		.4byte	.LASF406
 3408 1a39 20       		.byte	0x20
 3409 1a3a 6E       		.byte	0x6e
 3410 1a3b 97010000 		.4byte	0x197
 3411 1a3f 36       		.byte	0x36
 3412 1a40 41       		.uleb128 0x41
 3413 1a41 C60F0000 		.4byte	.LASF407
 3414 1a45 20       		.byte	0x20
 3415 1a46 6F       		.byte	0x6f
 3416 1a47 97010000 		.4byte	0x197
 3417 1a4b 37       		.byte	0x37
 3418 1a4c 41       		.uleb128 0x41
 3419 1a4d A5030000 		.4byte	.LASF408
 3420 1a51 20       		.byte	0x20
 3421 1a52 71       		.byte	0x71
 3422 1a53 D2010000 		.4byte	0x1d2
 3423 1a57 32       		.byte	0x32
 3424 1a58 42       		.uleb128 0x42
 3425 1a59 160E0000 		.4byte	.LASF409
 3426 1a5d 20       		.byte	0x20
ARM GAS  /tmp/ccQHvjuS.s 			page 76


 3427 1a5e 73       		.byte	0x73
 3428 1a5f D2010000 		.4byte	0x1d2
 3429 1a63 58466100 		.4byte	0x614658
 3430 1a67 40       		.uleb128 0x40
 3431 1a68 79010000 		.4byte	.LASF410
 3432 1a6c 20       		.byte	0x20
 3433 1a6d 74       		.byte	0x74
 3434 1a6e D2010000 		.4byte	0x1d2
 3435 1a72 4661     		.2byte	0x6146
 3436 1a74 0F       		.uleb128 0xf
 3437 1a75 A7070000 		.4byte	.LASF411
 3438 1a79 20       		.byte	0x20
 3439 1a7a 80       		.byte	0x80
 3440 1a7b 86190000 		.4byte	0x1986
 3441 1a7f 0F       		.uleb128 0xf
 3442 1a80 26060000 		.4byte	.LASF412
 3443 1a84 20       		.byte	0x20
 3444 1a85 81       		.byte	0x81
 3445 1a86 86190000 		.4byte	0x1986
 3446 1a8a 43       		.uleb128 0x43
 3447 1a8b 9F010000 		.4byte	.LASF435
 3448 1a8f 0F       		.uleb128 0xf
 3449 1a90 03060000 		.4byte	.LASF413
 3450 1a94 21       		.byte	0x21
 3451 1a95 30       		.byte	0x30
 3452 1a96 8A1A0000 		.4byte	0x1a8a
 3453 1a9a 44       		.uleb128 0x44
 3454 1a9b D3090000 		.4byte	.LASF415
 3455 1a9f 01       		.byte	0x1
 3456 1aa0 24       		.byte	0x24
 3457 1aa1 00000000 		.4byte	.LFB526
 3458 1aa5 50000000 		.4byte	.LFE526-.LFB526
 3459 1aa9 01       		.uleb128 0x1
 3460 1aaa 9C       		.byte	0x9c
 3461 1aab 511B0000 		.4byte	0x1b51
 3462 1aaf 45       		.uleb128 0x45
 3463 1ab0 00000000 		.4byte	.Ldebug_ranges0+0
 3464 1ab4 0C1B0000 		.4byte	0x1b0c
 3465 1ab8 46       		.uleb128 0x46
 3466 1ab9 6900     		.ascii	"i\000"
 3467 1abb 01       		.byte	0x1
 3468 1abc 34       		.byte	0x34
 3469 1abd 2C000000 		.4byte	0x2c
 3470 1ac1 47       		.uleb128 0x47
 3471 1ac2 18000000 		.4byte	.Ldebug_ranges0+0x18
 3472 1ac6 48       		.uleb128 0x48
 3473 1ac7 D0040000 		.4byte	.LASF416
 3474 1acb 01       		.byte	0x1
 3475 1acc 37       		.byte	0x37
 3476 1acd 2C000000 		.4byte	0x2c
 3477 1ad1 00000000 		.4byte	.LLST0
 3478 1ad5 49       		.uleb128 0x49
 3479 1ad6 1C000000 		.4byte	.LVL2
 3480 1ada 8C1B0000 		.4byte	0x1b8c
 3481 1ade E91A0000 		.4byte	0x1ae9
 3482 1ae2 4A       		.uleb128 0x4a
 3483 1ae3 01       		.uleb128 0x1
ARM GAS  /tmp/ccQHvjuS.s 			page 77


 3484 1ae4 50       		.byte	0x50
 3485 1ae5 02       		.uleb128 0x2
 3486 1ae6 76       		.byte	0x76
 3487 1ae7 00       		.sleb128 0
 3488 1ae8 00       		.byte	0
 3489 1ae9 4B       		.uleb128 0x4b
 3490 1aea 2E000000 		.4byte	.LVL4
 3491 1aee 971B0000 		.4byte	0x1b97
 3492 1af2 4A       		.uleb128 0x4a
 3493 1af3 01       		.uleb128 0x1
 3494 1af4 50       		.byte	0x50
 3495 1af5 03       		.uleb128 0x3
 3496 1af6 74       		.byte	0x74
 3497 1af7 807C     		.sleb128 -512
 3498 1af9 4A       		.uleb128 0x4a
 3499 1afa 01       		.uleb128 0x1
 3500 1afb 51       		.byte	0x51
 3501 1afc 02       		.uleb128 0x2
 3502 1afd 74       		.byte	0x74
 3503 1afe 7F       		.sleb128 -1
 3504 1aff 4A       		.uleb128 0x4a
 3505 1b00 01       		.uleb128 0x1
 3506 1b01 52       		.byte	0x52
 3507 1b02 01       		.uleb128 0x1
 3508 1b03 30       		.byte	0x30
 3509 1b04 4A       		.uleb128 0x4a
 3510 1b05 01       		.uleb128 0x1
 3511 1b06 53       		.byte	0x53
 3512 1b07 01       		.uleb128 0x1
 3513 1b08 30       		.byte	0x30
 3514 1b09 00       		.byte	0
 3515 1b0a 00       		.byte	0
 3516 1b0b 00       		.byte	0
 3517 1b0c 4C       		.uleb128 0x4c
 3518 1b0d 7A1B0000 		.4byte	0x1b7a
 3519 1b11 02000000 		.4byte	.LBB8
 3520 1b15 02000000 		.4byte	.LBE8-.LBB8
 3521 1b19 01       		.byte	0x1
 3522 1b1a 26       		.byte	0x26
 3523 1b1b 4C       		.uleb128 0x4c
 3524 1b1c 831B0000 		.4byte	0x1b83
 3525 1b20 04000000 		.4byte	.LBB10
 3526 1b24 04000000 		.4byte	.LBE10-.LBB10
 3527 1b28 01       		.byte	0x1
 3528 1b29 26       		.byte	0x26
 3529 1b2a 49       		.uleb128 0x49
 3530 1b2b 38000000 		.4byte	.LVL5
 3531 1b2f A21B0000 		.4byte	0x1ba2
 3532 1b33 3D1B0000 		.4byte	0x1b3d
 3533 1b37 4A       		.uleb128 0x4a
 3534 1b38 01       		.uleb128 0x1
 3535 1b39 50       		.byte	0x50
 3536 1b3a 01       		.uleb128 0x1
 3537 1b3b 31       		.byte	0x31
 3538 1b3c 00       		.byte	0
 3539 1b3d 4B       		.uleb128 0x4b
 3540 1b3e 3E000000 		.4byte	.LVL6
ARM GAS  /tmp/ccQHvjuS.s 			page 78


 3541 1b42 AD1B0000 		.4byte	0x1bad
 3542 1b46 4A       		.uleb128 0x4a
 3543 1b47 01       		.uleb128 0x1
 3544 1b48 50       		.byte	0x50
 3545 1b49 05       		.uleb128 0x5
 3546 1b4a 0C       		.byte	0xc
 3547 1b4b 00180E40 		.4byte	0x400e1800
 3548 1b4f 00       		.byte	0
 3549 1b50 00       		.byte	0
 3550 1b51 44       		.uleb128 0x44
 3551 1b52 07000000 		.4byte	.LASF417
 3552 1b56 01       		.byte	0x1
 3553 1b57 1E       		.byte	0x1e
 3554 1b58 00000000 		.4byte	.LFB525
 3555 1b5c 0C000000 		.4byte	.LFE525-.LFB525
 3556 1b60 01       		.uleb128 0x1
 3557 1b61 9C       		.byte	0x9c
 3558 1b62 7A1B0000 		.4byte	0x1b7a
 3559 1b66 4D       		.uleb128 0x4d
 3560 1b67 06000000 		.4byte	.LVL0
 3561 1b6b AD1B0000 		.4byte	0x1bad
 3562 1b6f 4A       		.uleb128 0x4a
 3563 1b70 01       		.uleb128 0x1
 3564 1b71 50       		.byte	0x50
 3565 1b72 05       		.uleb128 0x5
 3566 1b73 0C       		.byte	0xc
 3567 1b74 00180E40 		.4byte	0x400e1800
 3568 1b78 00       		.byte	0
 3569 1b79 00       		.byte	0
 3570 1b7a 4E       		.uleb128 0x4e
 3571 1b7b 9E050000 		.4byte	.LASF418
 3572 1b7f 02       		.byte	0x2
 3573 1b80 4801     		.2byte	0x148
 3574 1b82 03       		.byte	0x3
 3575 1b83 4E       		.uleb128 0x4e
 3576 1b84 870C0000 		.4byte	.LASF419
 3577 1b88 03       		.byte	0x3
 3578 1b89 C601     		.2byte	0x1c6
 3579 1b8b 03       		.byte	0x3
 3580 1b8c 4F       		.uleb128 0x4f
 3581 1b8d 16050000 		.4byte	.LASF420
 3582 1b91 16050000 		.4byte	.LASF420
 3583 1b95 23       		.byte	0x23
 3584 1b96 42       		.byte	0x42
 3585 1b97 4F       		.uleb128 0x4f
 3586 1b98 9F060000 		.4byte	.LASF421
 3587 1b9c 9F060000 		.4byte	.LASF421
 3588 1ba0 24       		.byte	0x24
 3589 1ba1 7A       		.byte	0x7a
 3590 1ba2 4F       		.uleb128 0x4f
 3591 1ba3 9C110000 		.4byte	.LASF422
 3592 1ba7 9C110000 		.4byte	.LASF422
 3593 1bab 24       		.byte	0x24
 3594 1bac 7E       		.byte	0x7e
 3595 1bad 4F       		.uleb128 0x4f
 3596 1bae 320E0000 		.4byte	.LASF423
 3597 1bb2 320E0000 		.4byte	.LASF423
ARM GAS  /tmp/ccQHvjuS.s 			page 79


 3598 1bb6 25       		.byte	0x25
 3599 1bb7 EA       		.byte	0xea
 3600 1bb8 00       		.byte	0
 3601              		.section	.debug_abbrev,"",%progbits
 3602              	.Ldebug_abbrev0:
 3603 0000 01       		.uleb128 0x1
 3604 0001 11       		.uleb128 0x11
 3605 0002 01       		.byte	0x1
 3606 0003 25       		.uleb128 0x25
 3607 0004 0E       		.uleb128 0xe
 3608 0005 13       		.uleb128 0x13
 3609 0006 0B       		.uleb128 0xb
 3610 0007 03       		.uleb128 0x3
 3611 0008 0E       		.uleb128 0xe
 3612 0009 1B       		.uleb128 0x1b
 3613 000a 0E       		.uleb128 0xe
 3614 000b 55       		.uleb128 0x55
 3615 000c 17       		.uleb128 0x17
 3616 000d 11       		.uleb128 0x11
 3617 000e 01       		.uleb128 0x1
 3618 000f 10       		.uleb128 0x10
 3619 0010 17       		.uleb128 0x17
 3620 0011 00       		.byte	0
 3621 0012 00       		.byte	0
 3622 0013 02       		.uleb128 0x2
 3623 0014 24       		.uleb128 0x24
 3624 0015 00       		.byte	0
 3625 0016 0B       		.uleb128 0xb
 3626 0017 0B       		.uleb128 0xb
 3627 0018 3E       		.uleb128 0x3e
 3628 0019 0B       		.uleb128 0xb
 3629 001a 03       		.uleb128 0x3
 3630 001b 08       		.uleb128 0x8
 3631 001c 00       		.byte	0
 3632 001d 00       		.byte	0
 3633 001e 03       		.uleb128 0x3
 3634 001f 16       		.uleb128 0x16
 3635 0020 00       		.byte	0
 3636 0021 03       		.uleb128 0x3
 3637 0022 0E       		.uleb128 0xe
 3638 0023 3A       		.uleb128 0x3a
 3639 0024 0B       		.uleb128 0xb
 3640 0025 3B       		.uleb128 0x3b
 3641 0026 0B       		.uleb128 0xb
 3642 0027 49       		.uleb128 0x49
 3643 0028 13       		.uleb128 0x13
 3644 0029 00       		.byte	0
 3645 002a 00       		.byte	0
 3646 002b 04       		.uleb128 0x4
 3647 002c 26       		.uleb128 0x26
 3648 002d 00       		.byte	0
 3649 002e 49       		.uleb128 0x49
 3650 002f 13       		.uleb128 0x13
 3651 0030 00       		.byte	0
 3652 0031 00       		.byte	0
 3653 0032 05       		.uleb128 0x5
 3654 0033 24       		.uleb128 0x24
ARM GAS  /tmp/ccQHvjuS.s 			page 80


 3655 0034 00       		.byte	0
 3656 0035 0B       		.uleb128 0xb
 3657 0036 0B       		.uleb128 0xb
 3658 0037 3E       		.uleb128 0x3e
 3659 0038 0B       		.uleb128 0xb
 3660 0039 03       		.uleb128 0x3
 3661 003a 0E       		.uleb128 0xe
 3662 003b 00       		.byte	0
 3663 003c 00       		.byte	0
 3664 003d 06       		.uleb128 0x6
 3665 003e 13       		.uleb128 0x13
 3666 003f 01       		.byte	0x1
 3667 0040 0B       		.uleb128 0xb
 3668 0041 0B       		.uleb128 0xb
 3669 0042 3A       		.uleb128 0x3a
 3670 0043 0B       		.uleb128 0xb
 3671 0044 3B       		.uleb128 0x3b
 3672 0045 05       		.uleb128 0x5
 3673 0046 6E       		.uleb128 0x6e
 3674 0047 0E       		.uleb128 0xe
 3675 0048 01       		.uleb128 0x1
 3676 0049 13       		.uleb128 0x13
 3677 004a 00       		.byte	0
 3678 004b 00       		.byte	0
 3679 004c 07       		.uleb128 0x7
 3680 004d 0D       		.uleb128 0xd
 3681 004e 00       		.byte	0
 3682 004f 03       		.uleb128 0x3
 3683 0050 0E       		.uleb128 0xe
 3684 0051 3A       		.uleb128 0x3a
 3685 0052 0B       		.uleb128 0xb
 3686 0053 3B       		.uleb128 0x3b
 3687 0054 05       		.uleb128 0x5
 3688 0055 49       		.uleb128 0x49
 3689 0056 13       		.uleb128 0x13
 3690 0057 38       		.uleb128 0x38
 3691 0058 0B       		.uleb128 0xb
 3692 0059 00       		.byte	0
 3693 005a 00       		.byte	0
 3694 005b 08       		.uleb128 0x8
 3695 005c 16       		.uleb128 0x16
 3696 005d 00       		.byte	0
 3697 005e 03       		.uleb128 0x3
 3698 005f 0E       		.uleb128 0xe
 3699 0060 3A       		.uleb128 0x3a
 3700 0061 0B       		.uleb128 0xb
 3701 0062 3B       		.uleb128 0x3b
 3702 0063 05       		.uleb128 0x5
 3703 0064 49       		.uleb128 0x49
 3704 0065 13       		.uleb128 0x13
 3705 0066 00       		.byte	0
 3706 0067 00       		.byte	0
 3707 0068 09       		.uleb128 0x9
 3708 0069 3B       		.uleb128 0x3b
 3709 006a 00       		.byte	0
 3710 006b 03       		.uleb128 0x3
 3711 006c 0E       		.uleb128 0xe
ARM GAS  /tmp/ccQHvjuS.s 			page 81


 3712 006d 00       		.byte	0
 3713 006e 00       		.byte	0
 3714 006f 0A       		.uleb128 0xa
 3715 0070 35       		.uleb128 0x35
 3716 0071 00       		.byte	0
 3717 0072 49       		.uleb128 0x49
 3718 0073 13       		.uleb128 0x13
 3719 0074 00       		.byte	0
 3720 0075 00       		.byte	0
 3721 0076 0B       		.uleb128 0xb
 3722 0077 0F       		.uleb128 0xf
 3723 0078 00       		.byte	0
 3724 0079 0B       		.uleb128 0xb
 3725 007a 0B       		.uleb128 0xb
 3726 007b 00       		.byte	0
 3727 007c 00       		.byte	0
 3728 007d 0C       		.uleb128 0xc
 3729 007e 01       		.uleb128 0x1
 3730 007f 01       		.byte	0x1
 3731 0080 49       		.uleb128 0x49
 3732 0081 13       		.uleb128 0x13
 3733 0082 01       		.uleb128 0x1
 3734 0083 13       		.uleb128 0x13
 3735 0084 00       		.byte	0
 3736 0085 00       		.byte	0
 3737 0086 0D       		.uleb128 0xd
 3738 0087 21       		.uleb128 0x21
 3739 0088 00       		.byte	0
 3740 0089 49       		.uleb128 0x49
 3741 008a 13       		.uleb128 0x13
 3742 008b 2F       		.uleb128 0x2f
 3743 008c 0B       		.uleb128 0xb
 3744 008d 00       		.byte	0
 3745 008e 00       		.byte	0
 3746 008f 0E       		.uleb128 0xe
 3747 0090 34       		.uleb128 0x34
 3748 0091 00       		.byte	0
 3749 0092 03       		.uleb128 0x3
 3750 0093 0E       		.uleb128 0xe
 3751 0094 3A       		.uleb128 0x3a
 3752 0095 0B       		.uleb128 0xb
 3753 0096 3B       		.uleb128 0x3b
 3754 0097 05       		.uleb128 0x5
 3755 0098 49       		.uleb128 0x49
 3756 0099 13       		.uleb128 0x13
 3757 009a 3F       		.uleb128 0x3f
 3758 009b 19       		.uleb128 0x19
 3759 009c 3C       		.uleb128 0x3c
 3760 009d 19       		.uleb128 0x19
 3761 009e 00       		.byte	0
 3762 009f 00       		.byte	0
 3763 00a0 0F       		.uleb128 0xf
 3764 00a1 34       		.uleb128 0x34
 3765 00a2 00       		.byte	0
 3766 00a3 03       		.uleb128 0x3
 3767 00a4 0E       		.uleb128 0xe
 3768 00a5 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccQHvjuS.s 			page 82


 3769 00a6 0B       		.uleb128 0xb
 3770 00a7 3B       		.uleb128 0x3b
 3771 00a8 0B       		.uleb128 0xb
 3772 00a9 49       		.uleb128 0x49
 3773 00aa 13       		.uleb128 0x13
 3774 00ab 3F       		.uleb128 0x3f
 3775 00ac 19       		.uleb128 0x19
 3776 00ad 3C       		.uleb128 0x3c
 3777 00ae 19       		.uleb128 0x19
 3778 00af 00       		.byte	0
 3779 00b0 00       		.byte	0
 3780 00b1 10       		.uleb128 0x10
 3781 00b2 13       		.uleb128 0x13
 3782 00b3 01       		.byte	0x1
 3783 00b4 0B       		.uleb128 0xb
 3784 00b5 05       		.uleb128 0x5
 3785 00b6 3A       		.uleb128 0x3a
 3786 00b7 0B       		.uleb128 0xb
 3787 00b8 3B       		.uleb128 0x3b
 3788 00b9 0B       		.uleb128 0xb
 3789 00ba 6E       		.uleb128 0x6e
 3790 00bb 0E       		.uleb128 0xe
 3791 00bc 01       		.uleb128 0x1
 3792 00bd 13       		.uleb128 0x13
 3793 00be 00       		.byte	0
 3794 00bf 00       		.byte	0
 3795 00c0 11       		.uleb128 0x11
 3796 00c1 0D       		.uleb128 0xd
 3797 00c2 00       		.byte	0
 3798 00c3 03       		.uleb128 0x3
 3799 00c4 0E       		.uleb128 0xe
 3800 00c5 3A       		.uleb128 0x3a
 3801 00c6 0B       		.uleb128 0xb
 3802 00c7 3B       		.uleb128 0x3b
 3803 00c8 0B       		.uleb128 0xb
 3804 00c9 49       		.uleb128 0x49
 3805 00ca 13       		.uleb128 0x13
 3806 00cb 38       		.uleb128 0x38
 3807 00cc 0B       		.uleb128 0xb
 3808 00cd 00       		.byte	0
 3809 00ce 00       		.byte	0
 3810 00cf 12       		.uleb128 0x12
 3811 00d0 0D       		.uleb128 0xd
 3812 00d1 00       		.byte	0
 3813 00d2 03       		.uleb128 0x3
 3814 00d3 0E       		.uleb128 0xe
 3815 00d4 3A       		.uleb128 0x3a
 3816 00d5 0B       		.uleb128 0xb
 3817 00d6 3B       		.uleb128 0x3b
 3818 00d7 0B       		.uleb128 0xb
 3819 00d8 49       		.uleb128 0x49
 3820 00d9 13       		.uleb128 0x13
 3821 00da 38       		.uleb128 0x38
 3822 00db 05       		.uleb128 0x5
 3823 00dc 00       		.byte	0
 3824 00dd 00       		.byte	0
 3825 00de 13       		.uleb128 0x13
ARM GAS  /tmp/ccQHvjuS.s 			page 83


 3826 00df 16       		.uleb128 0x16
 3827 00e0 00       		.byte	0
 3828 00e1 03       		.uleb128 0x3
 3829 00e2 08       		.uleb128 0x8
 3830 00e3 3A       		.uleb128 0x3a
 3831 00e4 0B       		.uleb128 0xb
 3832 00e5 3B       		.uleb128 0x3b
 3833 00e6 0B       		.uleb128 0xb
 3834 00e7 49       		.uleb128 0x49
 3835 00e8 13       		.uleb128 0x13
 3836 00e9 00       		.byte	0
 3837 00ea 00       		.byte	0
 3838 00eb 14       		.uleb128 0x14
 3839 00ec 13       		.uleb128 0x13
 3840 00ed 01       		.byte	0x1
 3841 00ee 0B       		.uleb128 0xb
 3842 00ef 0B       		.uleb128 0xb
 3843 00f0 3A       		.uleb128 0x3a
 3844 00f1 0B       		.uleb128 0xb
 3845 00f2 3B       		.uleb128 0x3b
 3846 00f3 0B       		.uleb128 0xb
 3847 00f4 6E       		.uleb128 0x6e
 3848 00f5 0E       		.uleb128 0xe
 3849 00f6 01       		.uleb128 0x1
 3850 00f7 13       		.uleb128 0x13
 3851 00f8 00       		.byte	0
 3852 00f9 00       		.byte	0
 3853 00fa 15       		.uleb128 0x15
 3854 00fb 17       		.uleb128 0x17
 3855 00fc 01       		.byte	0x1
 3856 00fd 0B       		.uleb128 0xb
 3857 00fe 0B       		.uleb128 0xb
 3858 00ff 3A       		.uleb128 0x3a
 3859 0100 0B       		.uleb128 0xb
 3860 0101 3B       		.uleb128 0x3b
 3861 0102 0B       		.uleb128 0xb
 3862 0103 01       		.uleb128 0x1
 3863 0104 13       		.uleb128 0x13
 3864 0105 00       		.byte	0
 3865 0106 00       		.byte	0
 3866 0107 16       		.uleb128 0x16
 3867 0108 0D       		.uleb128 0xd
 3868 0109 00       		.byte	0
 3869 010a 03       		.uleb128 0x3
 3870 010b 0E       		.uleb128 0xe
 3871 010c 3A       		.uleb128 0x3a
 3872 010d 0B       		.uleb128 0xb
 3873 010e 3B       		.uleb128 0x3b
 3874 010f 0B       		.uleb128 0xb
 3875 0110 49       		.uleb128 0x49
 3876 0111 13       		.uleb128 0x13
 3877 0112 00       		.byte	0
 3878 0113 00       		.byte	0
 3879 0114 17       		.uleb128 0x17
 3880 0115 13       		.uleb128 0x13
 3881 0116 01       		.byte	0x1
 3882 0117 03       		.uleb128 0x3
ARM GAS  /tmp/ccQHvjuS.s 			page 84


 3883 0118 0E       		.uleb128 0xe
 3884 0119 0B       		.uleb128 0xb
 3885 011a 0B       		.uleb128 0xb
 3886 011b 3A       		.uleb128 0x3a
 3887 011c 0B       		.uleb128 0xb
 3888 011d 3B       		.uleb128 0x3b
 3889 011e 0B       		.uleb128 0xb
 3890 011f 01       		.uleb128 0x1
 3891 0120 13       		.uleb128 0x13
 3892 0121 00       		.byte	0
 3893 0122 00       		.byte	0
 3894 0123 18       		.uleb128 0x18
 3895 0124 0D       		.uleb128 0xd
 3896 0125 00       		.byte	0
 3897 0126 03       		.uleb128 0x3
 3898 0127 08       		.uleb128 0x8
 3899 0128 3A       		.uleb128 0x3a
 3900 0129 0B       		.uleb128 0xb
 3901 012a 3B       		.uleb128 0x3b
 3902 012b 0B       		.uleb128 0xb
 3903 012c 49       		.uleb128 0x49
 3904 012d 13       		.uleb128 0x13
 3905 012e 38       		.uleb128 0x38
 3906 012f 0B       		.uleb128 0xb
 3907 0130 00       		.byte	0
 3908 0131 00       		.byte	0
 3909 0132 19       		.uleb128 0x19
 3910 0133 0F       		.uleb128 0xf
 3911 0134 00       		.byte	0
 3912 0135 0B       		.uleb128 0xb
 3913 0136 0B       		.uleb128 0xb
 3914 0137 49       		.uleb128 0x49
 3915 0138 13       		.uleb128 0x13
 3916 0139 00       		.byte	0
 3917 013a 00       		.byte	0
 3918 013b 1A       		.uleb128 0x1a
 3919 013c 13       		.uleb128 0x13
 3920 013d 01       		.byte	0x1
 3921 013e 03       		.uleb128 0x3
 3922 013f 0E       		.uleb128 0xe
 3923 0140 0B       		.uleb128 0xb
 3924 0141 05       		.uleb128 0x5
 3925 0142 3A       		.uleb128 0x3a
 3926 0143 0B       		.uleb128 0xb
 3927 0144 3B       		.uleb128 0x3b
 3928 0145 0B       		.uleb128 0xb
 3929 0146 01       		.uleb128 0x1
 3930 0147 13       		.uleb128 0x13
 3931 0148 00       		.byte	0
 3932 0149 00       		.byte	0
 3933 014a 1B       		.uleb128 0x1b
 3934 014b 15       		.uleb128 0x15
 3935 014c 00       		.byte	0
 3936 014d 00       		.byte	0
 3937 014e 00       		.byte	0
 3938 014f 1C       		.uleb128 0x1c
 3939 0150 15       		.uleb128 0x15
ARM GAS  /tmp/ccQHvjuS.s 			page 85


 3940 0151 01       		.byte	0x1
 3941 0152 49       		.uleb128 0x49
 3942 0153 13       		.uleb128 0x13
 3943 0154 01       		.uleb128 0x1
 3944 0155 13       		.uleb128 0x13
 3945 0156 00       		.byte	0
 3946 0157 00       		.byte	0
 3947 0158 1D       		.uleb128 0x1d
 3948 0159 05       		.uleb128 0x5
 3949 015a 00       		.byte	0
 3950 015b 49       		.uleb128 0x49
 3951 015c 13       		.uleb128 0x13
 3952 015d 00       		.byte	0
 3953 015e 00       		.byte	0
 3954 015f 1E       		.uleb128 0x1e
 3955 0160 13       		.uleb128 0x13
 3956 0161 01       		.byte	0x1
 3957 0162 03       		.uleb128 0x3
 3958 0163 0E       		.uleb128 0xe
 3959 0164 0B       		.uleb128 0xb
 3960 0165 05       		.uleb128 0x5
 3961 0166 3A       		.uleb128 0x3a
 3962 0167 0B       		.uleb128 0xb
 3963 0168 3B       		.uleb128 0x3b
 3964 0169 05       		.uleb128 0x5
 3965 016a 01       		.uleb128 0x1
 3966 016b 13       		.uleb128 0x13
 3967 016c 00       		.byte	0
 3968 016d 00       		.byte	0
 3969 016e 1F       		.uleb128 0x1f
 3970 016f 17       		.uleb128 0x17
 3971 0170 01       		.byte	0x1
 3972 0171 0B       		.uleb128 0xb
 3973 0172 0B       		.uleb128 0xb
 3974 0173 3A       		.uleb128 0x3a
 3975 0174 0B       		.uleb128 0xb
 3976 0175 3B       		.uleb128 0x3b
 3977 0176 05       		.uleb128 0x5
 3978 0177 01       		.uleb128 0x1
 3979 0178 13       		.uleb128 0x13
 3980 0179 00       		.byte	0
 3981 017a 00       		.byte	0
 3982 017b 20       		.uleb128 0x20
 3983 017c 13       		.uleb128 0x13
 3984 017d 01       		.byte	0x1
 3985 017e 0B       		.uleb128 0xb
 3986 017f 0B       		.uleb128 0xb
 3987 0180 3A       		.uleb128 0x3a
 3988 0181 0B       		.uleb128 0xb
 3989 0182 3B       		.uleb128 0x3b
 3990 0183 05       		.uleb128 0x5
 3991 0184 01       		.uleb128 0x1
 3992 0185 13       		.uleb128 0x13
 3993 0186 00       		.byte	0
 3994 0187 00       		.byte	0
 3995 0188 21       		.uleb128 0x21
 3996 0189 0D       		.uleb128 0xd
ARM GAS  /tmp/ccQHvjuS.s 			page 86


 3997 018a 00       		.byte	0
 3998 018b 03       		.uleb128 0x3
 3999 018c 0E       		.uleb128 0xe
 4000 018d 3A       		.uleb128 0x3a
 4001 018e 0B       		.uleb128 0xb
 4002 018f 3B       		.uleb128 0x3b
 4003 0190 05       		.uleb128 0x5
 4004 0191 49       		.uleb128 0x49
 4005 0192 13       		.uleb128 0x13
 4006 0193 00       		.byte	0
 4007 0194 00       		.byte	0
 4008 0195 22       		.uleb128 0x22
 4009 0196 0D       		.uleb128 0xd
 4010 0197 00       		.byte	0
 4011 0198 03       		.uleb128 0x3
 4012 0199 0E       		.uleb128 0xe
 4013 019a 3A       		.uleb128 0x3a
 4014 019b 0B       		.uleb128 0xb
 4015 019c 3B       		.uleb128 0x3b
 4016 019d 05       		.uleb128 0x5
 4017 019e 49       		.uleb128 0x49
 4018 019f 13       		.uleb128 0x13
 4019 01a0 38       		.uleb128 0x38
 4020 01a1 05       		.uleb128 0x5
 4021 01a2 00       		.byte	0
 4022 01a3 00       		.byte	0
 4023 01a4 23       		.uleb128 0x23
 4024 01a5 13       		.uleb128 0x13
 4025 01a6 01       		.byte	0x1
 4026 01a7 03       		.uleb128 0x3
 4027 01a8 0E       		.uleb128 0xe
 4028 01a9 0B       		.uleb128 0xb
 4029 01aa 0B       		.uleb128 0xb
 4030 01ab 3A       		.uleb128 0x3a
 4031 01ac 0B       		.uleb128 0xb
 4032 01ad 3B       		.uleb128 0x3b
 4033 01ae 05       		.uleb128 0x5
 4034 01af 01       		.uleb128 0x1
 4035 01b0 13       		.uleb128 0x13
 4036 01b1 00       		.byte	0
 4037 01b2 00       		.byte	0
 4038 01b3 24       		.uleb128 0x24
 4039 01b4 15       		.uleb128 0x15
 4040 01b5 01       		.byte	0x1
 4041 01b6 01       		.uleb128 0x1
 4042 01b7 13       		.uleb128 0x13
 4043 01b8 00       		.byte	0
 4044 01b9 00       		.byte	0
 4045 01ba 25       		.uleb128 0x25
 4046 01bb 39       		.uleb128 0x39
 4047 01bc 01       		.byte	0x1
 4048 01bd 03       		.uleb128 0x3
 4049 01be 08       		.uleb128 0x8
 4050 01bf 3A       		.uleb128 0x3a
 4051 01c0 0B       		.uleb128 0xb
 4052 01c1 3B       		.uleb128 0x3b
 4053 01c2 0B       		.uleb128 0xb
ARM GAS  /tmp/ccQHvjuS.s 			page 87


 4054 01c3 01       		.uleb128 0x1
 4055 01c4 13       		.uleb128 0x13
 4056 01c5 00       		.byte	0
 4057 01c6 00       		.byte	0
 4058 01c7 26       		.uleb128 0x26
 4059 01c8 39       		.uleb128 0x39
 4060 01c9 00       		.byte	0
 4061 01ca 03       		.uleb128 0x3
 4062 01cb 0E       		.uleb128 0xe
 4063 01cc 3A       		.uleb128 0x3a
 4064 01cd 0B       		.uleb128 0xb
 4065 01ce 3B       		.uleb128 0x3b
 4066 01cf 0B       		.uleb128 0xb
 4067 01d0 00       		.byte	0
 4068 01d1 00       		.byte	0
 4069 01d2 27       		.uleb128 0x27
 4070 01d3 3A       		.uleb128 0x3a
 4071 01d4 00       		.byte	0
 4072 01d5 3A       		.uleb128 0x3a
 4073 01d6 0B       		.uleb128 0xb
 4074 01d7 3B       		.uleb128 0x3b
 4075 01d8 0B       		.uleb128 0xb
 4076 01d9 18       		.uleb128 0x18
 4077 01da 13       		.uleb128 0x13
 4078 01db 00       		.byte	0
 4079 01dc 00       		.byte	0
 4080 01dd 28       		.uleb128 0x28
 4081 01de 08       		.uleb128 0x8
 4082 01df 00       		.byte	0
 4083 01e0 3A       		.uleb128 0x3a
 4084 01e1 0B       		.uleb128 0xb
 4085 01e2 3B       		.uleb128 0x3b
 4086 01e3 0B       		.uleb128 0xb
 4087 01e4 18       		.uleb128 0x18
 4088 01e5 13       		.uleb128 0x13
 4089 01e6 00       		.byte	0
 4090 01e7 00       		.byte	0
 4091 01e8 29       		.uleb128 0x29
 4092 01e9 08       		.uleb128 0x8
 4093 01ea 00       		.byte	0
 4094 01eb 3A       		.uleb128 0x3a
 4095 01ec 0B       		.uleb128 0xb
 4096 01ed 3B       		.uleb128 0x3b
 4097 01ee 05       		.uleb128 0x5
 4098 01ef 18       		.uleb128 0x18
 4099 01f0 13       		.uleb128 0x13
 4100 01f1 00       		.byte	0
 4101 01f2 00       		.byte	0
 4102 01f3 2A       		.uleb128 0x2a
 4103 01f4 2E       		.uleb128 0x2e
 4104 01f5 01       		.byte	0x1
 4105 01f6 3F       		.uleb128 0x3f
 4106 01f7 19       		.uleb128 0x19
 4107 01f8 03       		.uleb128 0x3
 4108 01f9 08       		.uleb128 0x8
 4109 01fa 3A       		.uleb128 0x3a
 4110 01fb 0B       		.uleb128 0xb
ARM GAS  /tmp/ccQHvjuS.s 			page 88


 4111 01fc 3B       		.uleb128 0x3b
 4112 01fd 0B       		.uleb128 0xb
 4113 01fe 6E       		.uleb128 0x6e
 4114 01ff 0E       		.uleb128 0xe
 4115 0200 49       		.uleb128 0x49
 4116 0201 13       		.uleb128 0x13
 4117 0202 3C       		.uleb128 0x3c
 4118 0203 19       		.uleb128 0x19
 4119 0204 01       		.uleb128 0x1
 4120 0205 13       		.uleb128 0x13
 4121 0206 00       		.byte	0
 4122 0207 00       		.byte	0
 4123 0208 2B       		.uleb128 0x2b
 4124 0209 2E       		.uleb128 0x2e
 4125 020a 01       		.byte	0x1
 4126 020b 3F       		.uleb128 0x3f
 4127 020c 19       		.uleb128 0x19
 4128 020d 03       		.uleb128 0x3
 4129 020e 0E       		.uleb128 0xe
 4130 020f 3A       		.uleb128 0x3a
 4131 0210 0B       		.uleb128 0xb
 4132 0211 3B       		.uleb128 0x3b
 4133 0212 05       		.uleb128 0x5
 4134 0213 6E       		.uleb128 0x6e
 4135 0214 0E       		.uleb128 0xe
 4136 0215 49       		.uleb128 0x49
 4137 0216 13       		.uleb128 0x13
 4138 0217 3C       		.uleb128 0x3c
 4139 0218 19       		.uleb128 0x19
 4140 0219 01       		.uleb128 0x1
 4141 021a 13       		.uleb128 0x13
 4142 021b 00       		.byte	0
 4143 021c 00       		.byte	0
 4144 021d 2C       		.uleb128 0x2c
 4145 021e 39       		.uleb128 0x39
 4146 021f 01       		.byte	0x1
 4147 0220 03       		.uleb128 0x3
 4148 0221 0E       		.uleb128 0xe
 4149 0222 3A       		.uleb128 0x3a
 4150 0223 0B       		.uleb128 0xb
 4151 0224 3B       		.uleb128 0x3b
 4152 0225 0B       		.uleb128 0xb
 4153 0226 01       		.uleb128 0x1
 4154 0227 13       		.uleb128 0x13
 4155 0228 00       		.byte	0
 4156 0229 00       		.byte	0
 4157 022a 2D       		.uleb128 0x2d
 4158 022b 2E       		.uleb128 0x2e
 4159 022c 01       		.byte	0x1
 4160 022d 3F       		.uleb128 0x3f
 4161 022e 19       		.uleb128 0x19
 4162 022f 03       		.uleb128 0x3
 4163 0230 08       		.uleb128 0x8
 4164 0231 3A       		.uleb128 0x3a
 4165 0232 0B       		.uleb128 0xb
 4166 0233 3B       		.uleb128 0x3b
 4167 0234 0B       		.uleb128 0xb
ARM GAS  /tmp/ccQHvjuS.s 			page 89


 4168 0235 6E       		.uleb128 0x6e
 4169 0236 0E       		.uleb128 0xe
 4170 0237 49       		.uleb128 0x49
 4171 0238 13       		.uleb128 0x13
 4172 0239 3C       		.uleb128 0x3c
 4173 023a 19       		.uleb128 0x19
 4174 023b 00       		.byte	0
 4175 023c 00       		.byte	0
 4176 023d 2E       		.uleb128 0x2e
 4177 023e 26       		.uleb128 0x26
 4178 023f 00       		.byte	0
 4179 0240 00       		.byte	0
 4180 0241 00       		.byte	0
 4181 0242 2F       		.uleb128 0x2f
 4182 0243 2E       		.uleb128 0x2e
 4183 0244 01       		.byte	0x1
 4184 0245 3F       		.uleb128 0x3f
 4185 0246 19       		.uleb128 0x19
 4186 0247 03       		.uleb128 0x3
 4187 0248 0E       		.uleb128 0xe
 4188 0249 3A       		.uleb128 0x3a
 4189 024a 0B       		.uleb128 0xb
 4190 024b 3B       		.uleb128 0x3b
 4191 024c 0B       		.uleb128 0xb
 4192 024d 49       		.uleb128 0x49
 4193 024e 13       		.uleb128 0x13
 4194 024f 3C       		.uleb128 0x3c
 4195 0250 19       		.uleb128 0x19
 4196 0251 01       		.uleb128 0x1
 4197 0252 13       		.uleb128 0x13
 4198 0253 00       		.byte	0
 4199 0254 00       		.byte	0
 4200 0255 30       		.uleb128 0x30
 4201 0256 2E       		.uleb128 0x2e
 4202 0257 01       		.byte	0x1
 4203 0258 3F       		.uleb128 0x3f
 4204 0259 19       		.uleb128 0x19
 4205 025a 03       		.uleb128 0x3
 4206 025b 08       		.uleb128 0x8
 4207 025c 3A       		.uleb128 0x3a
 4208 025d 0B       		.uleb128 0xb
 4209 025e 3B       		.uleb128 0x3b
 4210 025f 0B       		.uleb128 0xb
 4211 0260 49       		.uleb128 0x49
 4212 0261 13       		.uleb128 0x13
 4213 0262 3C       		.uleb128 0x3c
 4214 0263 19       		.uleb128 0x19
 4215 0264 01       		.uleb128 0x1
 4216 0265 13       		.uleb128 0x13
 4217 0266 00       		.byte	0
 4218 0267 00       		.byte	0
 4219 0268 31       		.uleb128 0x31
 4220 0269 2E       		.uleb128 0x2e
 4221 026a 01       		.byte	0x1
 4222 026b 3F       		.uleb128 0x3f
 4223 026c 19       		.uleb128 0x19
 4224 026d 03       		.uleb128 0x3
ARM GAS  /tmp/ccQHvjuS.s 			page 90


 4225 026e 0E       		.uleb128 0xe
 4226 026f 3A       		.uleb128 0x3a
 4227 0270 0B       		.uleb128 0xb
 4228 0271 3B       		.uleb128 0x3b
 4229 0272 0B       		.uleb128 0xb
 4230 0273 3C       		.uleb128 0x3c
 4231 0274 19       		.uleb128 0x19
 4232 0275 01       		.uleb128 0x1
 4233 0276 13       		.uleb128 0x13
 4234 0277 00       		.byte	0
 4235 0278 00       		.byte	0
 4236 0279 32       		.uleb128 0x32
 4237 027a 2E       		.uleb128 0x2e
 4238 027b 00       		.byte	0
 4239 027c 3F       		.uleb128 0x3f
 4240 027d 19       		.uleb128 0x19
 4241 027e 03       		.uleb128 0x3
 4242 027f 0E       		.uleb128 0xe
 4243 0280 3A       		.uleb128 0x3a
 4244 0281 0B       		.uleb128 0xb
 4245 0282 3B       		.uleb128 0x3b
 4246 0283 0B       		.uleb128 0xb
 4247 0284 49       		.uleb128 0x49
 4248 0285 13       		.uleb128 0x13
 4249 0286 3C       		.uleb128 0x3c
 4250 0287 19       		.uleb128 0x19
 4251 0288 00       		.byte	0
 4252 0289 00       		.byte	0
 4253 028a 33       		.uleb128 0x33
 4254 028b 2E       		.uleb128 0x2e
 4255 028c 01       		.byte	0x1
 4256 028d 3F       		.uleb128 0x3f
 4257 028e 19       		.uleb128 0x19
 4258 028f 03       		.uleb128 0x3
 4259 0290 0E       		.uleb128 0xe
 4260 0291 3A       		.uleb128 0x3a
 4261 0292 0B       		.uleb128 0xb
 4262 0293 3B       		.uleb128 0x3b
 4263 0294 05       		.uleb128 0x5
 4264 0295 49       		.uleb128 0x49
 4265 0296 13       		.uleb128 0x13
 4266 0297 3C       		.uleb128 0x3c
 4267 0298 19       		.uleb128 0x19
 4268 0299 01       		.uleb128 0x1
 4269 029a 13       		.uleb128 0x13
 4270 029b 00       		.byte	0
 4271 029c 00       		.byte	0
 4272 029d 34       		.uleb128 0x34
 4273 029e 34       		.uleb128 0x34
 4274 029f 00       		.byte	0
 4275 02a0 03       		.uleb128 0x3
 4276 02a1 0E       		.uleb128 0xe
 4277 02a2 3A       		.uleb128 0x3a
 4278 02a3 0B       		.uleb128 0xb
 4279 02a4 3B       		.uleb128 0x3b
 4280 02a5 0B       		.uleb128 0xb
 4281 02a6 49       		.uleb128 0x49
ARM GAS  /tmp/ccQHvjuS.s 			page 91


 4282 02a7 13       		.uleb128 0x13
 4283 02a8 02       		.uleb128 0x2
 4284 02a9 18       		.uleb128 0x18
 4285 02aa 00       		.byte	0
 4286 02ab 00       		.byte	0
 4287 02ac 35       		.uleb128 0x35
 4288 02ad 04       		.uleb128 0x4
 4289 02ae 01       		.byte	0x1
 4290 02af 03       		.uleb128 0x3
 4291 02b0 0E       		.uleb128 0xe
 4292 02b1 0B       		.uleb128 0xb
 4293 02b2 0B       		.uleb128 0xb
 4294 02b3 49       		.uleb128 0x49
 4295 02b4 13       		.uleb128 0x13
 4296 02b5 3A       		.uleb128 0x3a
 4297 02b6 0B       		.uleb128 0xb
 4298 02b7 3B       		.uleb128 0x3b
 4299 02b8 05       		.uleb128 0x5
 4300 02b9 01       		.uleb128 0x1
 4301 02ba 13       		.uleb128 0x13
 4302 02bb 00       		.byte	0
 4303 02bc 00       		.byte	0
 4304 02bd 36       		.uleb128 0x36
 4305 02be 28       		.uleb128 0x28
 4306 02bf 00       		.byte	0
 4307 02c0 03       		.uleb128 0x3
 4308 02c1 0E       		.uleb128 0xe
 4309 02c2 1C       		.uleb128 0x1c
 4310 02c3 0D       		.uleb128 0xd
 4311 02c4 00       		.byte	0
 4312 02c5 00       		.byte	0
 4313 02c6 37       		.uleb128 0x37
 4314 02c7 28       		.uleb128 0x28
 4315 02c8 00       		.byte	0
 4316 02c9 03       		.uleb128 0x3
 4317 02ca 0E       		.uleb128 0xe
 4318 02cb 1C       		.uleb128 0x1c
 4319 02cc 0B       		.uleb128 0xb
 4320 02cd 00       		.byte	0
 4321 02ce 00       		.byte	0
 4322 02cf 38       		.uleb128 0x38
 4323 02d0 04       		.uleb128 0x4
 4324 02d1 01       		.byte	0x1
 4325 02d2 03       		.uleb128 0x3
 4326 02d3 0E       		.uleb128 0xe
 4327 02d4 0B       		.uleb128 0xb
 4328 02d5 0B       		.uleb128 0xb
 4329 02d6 49       		.uleb128 0x49
 4330 02d7 13       		.uleb128 0x13
 4331 02d8 3A       		.uleb128 0x3a
 4332 02d9 0B       		.uleb128 0xb
 4333 02da 3B       		.uleb128 0x3b
 4334 02db 0B       		.uleb128 0xb
 4335 02dc 01       		.uleb128 0x1
 4336 02dd 13       		.uleb128 0x13
 4337 02de 00       		.byte	0
 4338 02df 00       		.byte	0
ARM GAS  /tmp/ccQHvjuS.s 			page 92


 4339 02e0 39       		.uleb128 0x39
 4340 02e1 28       		.uleb128 0x28
 4341 02e2 00       		.byte	0
 4342 02e3 03       		.uleb128 0x3
 4343 02e4 0E       		.uleb128 0xe
 4344 02e5 1C       		.uleb128 0x1c
 4345 02e6 06       		.uleb128 0x6
 4346 02e7 00       		.byte	0
 4347 02e8 00       		.byte	0
 4348 02e9 3A       		.uleb128 0x3a
 4349 02ea 34       		.uleb128 0x34
 4350 02eb 00       		.byte	0
 4351 02ec 03       		.uleb128 0x3
 4352 02ed 0E       		.uleb128 0xe
 4353 02ee 3A       		.uleb128 0x3a
 4354 02ef 0B       		.uleb128 0xb
 4355 02f0 3B       		.uleb128 0x3b
 4356 02f1 0B       		.uleb128 0xb
 4357 02f2 49       		.uleb128 0x49
 4358 02f3 13       		.uleb128 0x13
 4359 02f4 1C       		.uleb128 0x1c
 4360 02f5 0D       		.uleb128 0xd
 4361 02f6 00       		.byte	0
 4362 02f7 00       		.byte	0
 4363 02f8 3B       		.uleb128 0x3b
 4364 02f9 28       		.uleb128 0x28
 4365 02fa 00       		.byte	0
 4366 02fb 03       		.uleb128 0x3
 4367 02fc 08       		.uleb128 0x8
 4368 02fd 1C       		.uleb128 0x1c
 4369 02fe 0B       		.uleb128 0xb
 4370 02ff 00       		.byte	0
 4371 0300 00       		.byte	0
 4372 0301 3C       		.uleb128 0x3c
 4373 0302 21       		.uleb128 0x21
 4374 0303 00       		.byte	0
 4375 0304 00       		.byte	0
 4376 0305 00       		.byte	0
 4377 0306 3D       		.uleb128 0x3d
 4378 0307 02       		.uleb128 0x2
 4379 0308 01       		.byte	0x1
 4380 0309 03       		.uleb128 0x3
 4381 030a 0E       		.uleb128 0xe
 4382 030b 3C       		.uleb128 0x3c
 4383 030c 19       		.uleb128 0x19
 4384 030d 01       		.uleb128 0x1
 4385 030e 13       		.uleb128 0x13
 4386 030f 00       		.byte	0
 4387 0310 00       		.byte	0
 4388 0311 3E       		.uleb128 0x3e
 4389 0312 2E       		.uleb128 0x2e
 4390 0313 01       		.byte	0x1
 4391 0314 3F       		.uleb128 0x3f
 4392 0315 19       		.uleb128 0x19
 4393 0316 03       		.uleb128 0x3
 4394 0317 0E       		.uleb128 0xe
 4395 0318 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccQHvjuS.s 			page 93


 4396 0319 0B       		.uleb128 0xb
 4397 031a 3B       		.uleb128 0x3b
 4398 031b 0B       		.uleb128 0xb
 4399 031c 6E       		.uleb128 0x6e
 4400 031d 0E       		.uleb128 0xe
 4401 031e 49       		.uleb128 0x49
 4402 031f 13       		.uleb128 0x13
 4403 0320 32       		.uleb128 0x32
 4404 0321 0B       		.uleb128 0xb
 4405 0322 3C       		.uleb128 0x3c
 4406 0323 19       		.uleb128 0x19
 4407 0324 64       		.uleb128 0x64
 4408 0325 13       		.uleb128 0x13
 4409 0326 00       		.byte	0
 4410 0327 00       		.byte	0
 4411 0328 3F       		.uleb128 0x3f
 4412 0329 05       		.uleb128 0x5
 4413 032a 00       		.byte	0
 4414 032b 49       		.uleb128 0x49
 4415 032c 13       		.uleb128 0x13
 4416 032d 34       		.uleb128 0x34
 4417 032e 19       		.uleb128 0x19
 4418 032f 00       		.byte	0
 4419 0330 00       		.byte	0
 4420 0331 40       		.uleb128 0x40
 4421 0332 34       		.uleb128 0x34
 4422 0333 00       		.byte	0
 4423 0334 03       		.uleb128 0x3
 4424 0335 0E       		.uleb128 0xe
 4425 0336 3A       		.uleb128 0x3a
 4426 0337 0B       		.uleb128 0xb
 4427 0338 3B       		.uleb128 0x3b
 4428 0339 0B       		.uleb128 0xb
 4429 033a 49       		.uleb128 0x49
 4430 033b 13       		.uleb128 0x13
 4431 033c 1C       		.uleb128 0x1c
 4432 033d 05       		.uleb128 0x5
 4433 033e 00       		.byte	0
 4434 033f 00       		.byte	0
 4435 0340 41       		.uleb128 0x41
 4436 0341 34       		.uleb128 0x34
 4437 0342 00       		.byte	0
 4438 0343 03       		.uleb128 0x3
 4439 0344 0E       		.uleb128 0xe
 4440 0345 3A       		.uleb128 0x3a
 4441 0346 0B       		.uleb128 0xb
 4442 0347 3B       		.uleb128 0x3b
 4443 0348 0B       		.uleb128 0xb
 4444 0349 49       		.uleb128 0x49
 4445 034a 13       		.uleb128 0x13
 4446 034b 1C       		.uleb128 0x1c
 4447 034c 0B       		.uleb128 0xb
 4448 034d 00       		.byte	0
 4449 034e 00       		.byte	0
 4450 034f 42       		.uleb128 0x42
 4451 0350 34       		.uleb128 0x34
 4452 0351 00       		.byte	0
ARM GAS  /tmp/ccQHvjuS.s 			page 94


 4453 0352 03       		.uleb128 0x3
 4454 0353 0E       		.uleb128 0xe
 4455 0354 3A       		.uleb128 0x3a
 4456 0355 0B       		.uleb128 0xb
 4457 0356 3B       		.uleb128 0x3b
 4458 0357 0B       		.uleb128 0xb
 4459 0358 49       		.uleb128 0x49
 4460 0359 13       		.uleb128 0x13
 4461 035a 1C       		.uleb128 0x1c
 4462 035b 06       		.uleb128 0x6
 4463 035c 00       		.byte	0
 4464 035d 00       		.byte	0
 4465 035e 43       		.uleb128 0x43
 4466 035f 02       		.uleb128 0x2
 4467 0360 00       		.byte	0
 4468 0361 03       		.uleb128 0x3
 4469 0362 0E       		.uleb128 0xe
 4470 0363 3C       		.uleb128 0x3c
 4471 0364 19       		.uleb128 0x19
 4472 0365 00       		.byte	0
 4473 0366 00       		.byte	0
 4474 0367 44       		.uleb128 0x44
 4475 0368 2E       		.uleb128 0x2e
 4476 0369 01       		.byte	0x1
 4477 036a 3F       		.uleb128 0x3f
 4478 036b 19       		.uleb128 0x19
 4479 036c 03       		.uleb128 0x3
 4480 036d 0E       		.uleb128 0xe
 4481 036e 3A       		.uleb128 0x3a
 4482 036f 0B       		.uleb128 0xb
 4483 0370 3B       		.uleb128 0x3b
 4484 0371 0B       		.uleb128 0xb
 4485 0372 11       		.uleb128 0x11
 4486 0373 01       		.uleb128 0x1
 4487 0374 12       		.uleb128 0x12
 4488 0375 06       		.uleb128 0x6
 4489 0376 40       		.uleb128 0x40
 4490 0377 18       		.uleb128 0x18
 4491 0378 9742     		.uleb128 0x2117
 4492 037a 19       		.uleb128 0x19
 4493 037b 01       		.uleb128 0x1
 4494 037c 13       		.uleb128 0x13
 4495 037d 00       		.byte	0
 4496 037e 00       		.byte	0
 4497 037f 45       		.uleb128 0x45
 4498 0380 0B       		.uleb128 0xb
 4499 0381 01       		.byte	0x1
 4500 0382 55       		.uleb128 0x55
 4501 0383 17       		.uleb128 0x17
 4502 0384 01       		.uleb128 0x1
 4503 0385 13       		.uleb128 0x13
 4504 0386 00       		.byte	0
 4505 0387 00       		.byte	0
 4506 0388 46       		.uleb128 0x46
 4507 0389 34       		.uleb128 0x34
 4508 038a 00       		.byte	0
 4509 038b 03       		.uleb128 0x3
ARM GAS  /tmp/ccQHvjuS.s 			page 95


 4510 038c 08       		.uleb128 0x8
 4511 038d 3A       		.uleb128 0x3a
 4512 038e 0B       		.uleb128 0xb
 4513 038f 3B       		.uleb128 0x3b
 4514 0390 0B       		.uleb128 0xb
 4515 0391 49       		.uleb128 0x49
 4516 0392 13       		.uleb128 0x13
 4517 0393 00       		.byte	0
 4518 0394 00       		.byte	0
 4519 0395 47       		.uleb128 0x47
 4520 0396 0B       		.uleb128 0xb
 4521 0397 01       		.byte	0x1
 4522 0398 55       		.uleb128 0x55
 4523 0399 17       		.uleb128 0x17
 4524 039a 00       		.byte	0
 4525 039b 00       		.byte	0
 4526 039c 48       		.uleb128 0x48
 4527 039d 34       		.uleb128 0x34
 4528 039e 00       		.byte	0
 4529 039f 03       		.uleb128 0x3
 4530 03a0 0E       		.uleb128 0xe
 4531 03a1 3A       		.uleb128 0x3a
 4532 03a2 0B       		.uleb128 0xb
 4533 03a3 3B       		.uleb128 0x3b
 4534 03a4 0B       		.uleb128 0xb
 4535 03a5 49       		.uleb128 0x49
 4536 03a6 13       		.uleb128 0x13
 4537 03a7 02       		.uleb128 0x2
 4538 03a8 17       		.uleb128 0x17
 4539 03a9 00       		.byte	0
 4540 03aa 00       		.byte	0
 4541 03ab 49       		.uleb128 0x49
 4542 03ac 898201   		.uleb128 0x4109
 4543 03af 01       		.byte	0x1
 4544 03b0 11       		.uleb128 0x11
 4545 03b1 01       		.uleb128 0x1
 4546 03b2 31       		.uleb128 0x31
 4547 03b3 13       		.uleb128 0x13
 4548 03b4 01       		.uleb128 0x1
 4549 03b5 13       		.uleb128 0x13
 4550 03b6 00       		.byte	0
 4551 03b7 00       		.byte	0
 4552 03b8 4A       		.uleb128 0x4a
 4553 03b9 8A8201   		.uleb128 0x410a
 4554 03bc 00       		.byte	0
 4555 03bd 02       		.uleb128 0x2
 4556 03be 18       		.uleb128 0x18
 4557 03bf 9142     		.uleb128 0x2111
 4558 03c1 18       		.uleb128 0x18
 4559 03c2 00       		.byte	0
 4560 03c3 00       		.byte	0
 4561 03c4 4B       		.uleb128 0x4b
 4562 03c5 898201   		.uleb128 0x4109
 4563 03c8 01       		.byte	0x1
 4564 03c9 11       		.uleb128 0x11
 4565 03ca 01       		.uleb128 0x1
 4566 03cb 31       		.uleb128 0x31
ARM GAS  /tmp/ccQHvjuS.s 			page 96


 4567 03cc 13       		.uleb128 0x13
 4568 03cd 00       		.byte	0
 4569 03ce 00       		.byte	0
 4570 03cf 4C       		.uleb128 0x4c
 4571 03d0 1D       		.uleb128 0x1d
 4572 03d1 00       		.byte	0
 4573 03d2 31       		.uleb128 0x31
 4574 03d3 13       		.uleb128 0x13
 4575 03d4 11       		.uleb128 0x11
 4576 03d5 01       		.uleb128 0x1
 4577 03d6 12       		.uleb128 0x12
 4578 03d7 06       		.uleb128 0x6
 4579 03d8 58       		.uleb128 0x58
 4580 03d9 0B       		.uleb128 0xb
 4581 03da 59       		.uleb128 0x59
 4582 03db 0B       		.uleb128 0xb
 4583 03dc 00       		.byte	0
 4584 03dd 00       		.byte	0
 4585 03de 4D       		.uleb128 0x4d
 4586 03df 898201   		.uleb128 0x4109
 4587 03e2 01       		.byte	0x1
 4588 03e3 11       		.uleb128 0x11
 4589 03e4 01       		.uleb128 0x1
 4590 03e5 9542     		.uleb128 0x2115
 4591 03e7 19       		.uleb128 0x19
 4592 03e8 31       		.uleb128 0x31
 4593 03e9 13       		.uleb128 0x13
 4594 03ea 00       		.byte	0
 4595 03eb 00       		.byte	0
 4596 03ec 4E       		.uleb128 0x4e
 4597 03ed 2E       		.uleb128 0x2e
 4598 03ee 00       		.byte	0
 4599 03ef 03       		.uleb128 0x3
 4600 03f0 0E       		.uleb128 0xe
 4601 03f1 3A       		.uleb128 0x3a
 4602 03f2 0B       		.uleb128 0xb
 4603 03f3 3B       		.uleb128 0x3b
 4604 03f4 05       		.uleb128 0x5
 4605 03f5 20       		.uleb128 0x20
 4606 03f6 0B       		.uleb128 0xb
 4607 03f7 00       		.byte	0
 4608 03f8 00       		.byte	0
 4609 03f9 4F       		.uleb128 0x4f
 4610 03fa 2E       		.uleb128 0x2e
 4611 03fb 00       		.byte	0
 4612 03fc 3F       		.uleb128 0x3f
 4613 03fd 19       		.uleb128 0x19
 4614 03fe 3C       		.uleb128 0x3c
 4615 03ff 19       		.uleb128 0x19
 4616 0400 6E       		.uleb128 0x6e
 4617 0401 0E       		.uleb128 0xe
 4618 0402 03       		.uleb128 0x3
 4619 0403 0E       		.uleb128 0xe
 4620 0404 3A       		.uleb128 0x3a
 4621 0405 0B       		.uleb128 0xb
 4622 0406 3B       		.uleb128 0x3b
 4623 0407 0B       		.uleb128 0xb
ARM GAS  /tmp/ccQHvjuS.s 			page 97


 4624 0408 00       		.byte	0
 4625 0409 00       		.byte	0
 4626 040a 00       		.byte	0
 4627              		.section	.debug_loc,"",%progbits
 4628              	.Ldebug_loc0:
 4629              	.LLST0:
 4630 0000 1C000000 		.4byte	.LVL2
 4631 0004 28000000 		.4byte	.LVL3
 4632 0008 0100     		.2byte	0x1
 4633 000a 54       		.byte	0x54
 4634 000b 28000000 		.4byte	.LVL3
 4635 000f 2D000000 		.4byte	.LVL4-1
 4636 0013 0100     		.2byte	0x1
 4637 0015 50       		.byte	0x50
 4638 0016 2D000000 		.4byte	.LVL4-1
 4639 001a 50000000 		.4byte	.LFE526
 4640 001e 0400     		.2byte	0x4
 4641 0020 74       		.byte	0x74
 4642 0021 807C     		.sleb128 -512
 4643 0023 9F       		.byte	0x9f
 4644 0024 00000000 		.4byte	0
 4645 0028 00000000 		.4byte	0
 4646              		.section	.debug_aranges,"",%progbits
 4647 0000 24000000 		.4byte	0x24
 4648 0004 0200     		.2byte	0x2
 4649 0006 00000000 		.4byte	.Ldebug_info0
 4650 000a 04       		.byte	0x4
 4651 000b 00       		.byte	0
 4652 000c 0000     		.2byte	0
 4653 000e 0000     		.2byte	0
 4654 0010 00000000 		.4byte	.LFB525
 4655 0014 0C000000 		.4byte	.LFE525-.LFB525
 4656 0018 00000000 		.4byte	.LFB526
 4657 001c 50000000 		.4byte	.LFE526-.LFB526
 4658 0020 00000000 		.4byte	0
 4659 0024 00000000 		.4byte	0
 4660              		.section	.debug_ranges,"",%progbits
 4661              	.Ldebug_ranges0:
 4662 0000 10000000 		.4byte	.LBB12
 4663 0004 14000000 		.4byte	.LBE12
 4664 0008 16000000 		.4byte	.LBB15
 4665 000c 32000000 		.4byte	.LBE15
 4666 0010 00000000 		.4byte	0
 4667 0014 00000000 		.4byte	0
 4668 0018 10000000 		.4byte	.LBB13
 4669 001c 12000000 		.4byte	.LBE13
 4670 0020 16000000 		.4byte	.LBB14
 4671 0024 2E000000 		.4byte	.LBE14
 4672 0028 00000000 		.4byte	0
 4673 002c 00000000 		.4byte	0
 4674 0030 00000000 		.4byte	.LFB525
 4675 0034 0C000000 		.4byte	.LFE525
 4676 0038 00000000 		.4byte	.LFB526
 4677 003c 50000000 		.4byte	.LFE526
 4678 0040 00000000 		.4byte	0
 4679 0044 00000000 		.4byte	0
 4680              		.section	.debug_line,"",%progbits
ARM GAS  /tmp/ccQHvjuS.s 			page 98


 4681              	.Ldebug_line0:
 4682 0000 85050000 		.section	.debug_str,"MS",%progbits,1
 4682      02003405 
 4682      00000201 
 4682      FB0E0D00 
 4682      01010101 
 4683              	.LASF268:
 4684 0000 67657465 		.ascii	"getenv\000"
 4684      6E7600
 4685              	.LASF417:
 4686 0007 52657365 		.ascii	"Reset\000"
 4686      7400
 4687              	.LASF53:
 4688 000d 75696E74 		.ascii	"uint_fast16_t\000"
 4688      5F666173 
 4688      7431365F 
 4688      7400
 4689              	.LASF16:
 4690 001b 6C6F6E67 		.ascii	"long int\000"
 4690      20696E74 
 4690      00
 4691              	.LASF100:
 4692 0024 52657365 		.ascii	"Reserved7\000"
 4692      72766564 
 4692      3700
 4693              	.LASF131:
 4694 002e 52535443 		.ascii	"RSTC_CR\000"
 4694      5F435200 
 4695              	.LASF29:
 4696 0036 5F5F7569 		.ascii	"__uint_least64_t\000"
 4696      6E745F6C 
 4696      65617374 
 4696      36345F74 
 4696      00
 4697              	.LASF383:
 4698 0047 756C5069 		.ascii	"ulPinConfiguration\000"
 4698      6E436F6E 
 4698      66696775 
 4698      72617469 
 4698      6F6E00
 4699              	.LASF62:
 4700 005a 53797374 		.ascii	"SystemCoreClock\000"
 4700      656D436F 
 4700      7265436C 
 4700      6F636B00 
 4701              	.LASF433:
 4702 006a 72616E64 		.ascii	"rand\000"
 4702      00
 4703              	.LASF297:
 4704 006f 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 4704      6C69626D 
 4704      5F786F70 
 4704      656E00
 4705              	.LASF307:
 4706 007e 50494F5F 		.ascii	"PIO_INPUT\000"
 4706      494E5055 
 4706      5400
ARM GAS  /tmp/ccQHvjuS.s 			page 99


 4707              	.LASF390:
 4708 0088 5F637479 		.ascii	"_ctype_\000"
 4708      70655F00 
 4709              	.LASF82:
 4710 0090 50494F5F 		.ascii	"PIO_ISR\000"
 4710      49535200 
 4711              	.LASF425:
 4712 0098 2E2E2F63 		.ascii	"../cores/arduino/Reset.cpp\000"
 4712      6F726573 
 4712      2F617264 
 4712      75696E6F 
 4712      2F526573 
 4713              	.LASF167:
 4714 00b3 5F6F6E5F 		.ascii	"_on_exit_args\000"
 4714      65786974 
 4714      5F617267 
 4714      7300
 4715              	.LASF279:
 4716 00c1 73797374 		.ascii	"system\000"
 4716      656D00
 4717              	.LASF118:
 4718 00c8 50494F5F 		.ascii	"PIO_WPMR\000"
 4718      57504D52 
 4718      00
 4719              	.LASF63:
 4720 00d1 50494F5F 		.ascii	"PIO_PER\000"
 4720      50455200 
 4721              	.LASF80:
 4722 00d9 50494F5F 		.ascii	"PIO_IDR\000"
 4722      49445200 
 4723              	.LASF205:
 4724 00e1 5F776374 		.ascii	"_wctomb_state\000"
 4724      6F6D625F 
 4724      73746174 
 4724      6500
 4725              	.LASF253:
 4726 00ef 35646976 		.ascii	"5div_t\000"
 4726      5F7400
 4727              	.LASF132:
 4728 00f6 52535443 		.ascii	"RSTC_SR\000"
 4728      5F535200 
 4729              	.LASF77:
 4730 00fe 50494F5F 		.ascii	"PIO_ODSR\000"
 4730      4F445352 
 4730      00
 4731              	.LASF109:
 4732 0107 50494F5F 		.ascii	"PIO_ESR\000"
 4732      45535200 
 4733              	.LASF294:
 4734 010f 646F7562 		.ascii	"double_t\000"
 4734      6C655F74 
 4734      00
 4735              	.LASF337:
 4736 0118 5443325F 		.ascii	"TC2_CHA6\000"
 4736      43484136 
 4736      00
 4737              	.LASF339:
ARM GAS  /tmp/ccQHvjuS.s 			page 100


 4738 0121 5443325F 		.ascii	"TC2_CHA7\000"
 4738      43484137 
 4738      00
 4739              	.LASF341:
 4740 012a 5443325F 		.ascii	"TC2_CHA8\000"
 4740      43484138 
 4740      00
 4741              	.LASF158:
 4742 0133 5F5F746D 		.ascii	"__tm_sec\000"
 4742      5F736563 
 4742      00
 4743              	.LASF207:
 4744 013c 5F736967 		.ascii	"_signal_buf\000"
 4744      6E616C5F 
 4744      62756600 
 4745              	.LASF270:
 4746 0148 6D626C65 		.ascii	"mblen\000"
 4746      6E00
 4747              	.LASF0:
 4748 014e 756E7369 		.ascii	"unsigned int\000"
 4748      676E6564 
 4748      20696E74 
 4748      00
 4749              	.LASF69:
 4750 015b 50494F5F 		.ascii	"PIO_OSR\000"
 4750      4F535200 
 4751              	.LASF251:
 4752 0163 5F5F676E 		.ascii	"__gnu_cxx\000"
 4752      755F6378 
 4752      7800
 4753              	.LASF31:
 4754 016d 5F5F7569 		.ascii	"__uintptr_t\000"
 4754      6E747074 
 4754      725F7400 
 4755              	.LASF410:
 4756 0179 50776D53 		.ascii	"PwmSlowClock\000"
 4756      6C6F7743 
 4756      6C6F636B 
 4756      00
 4757              	.LASF181:
 4758 0186 5F6C6266 		.ascii	"_lbfsize\000"
 4758      73697A65 
 4758      00
 4759              	.LASF179:
 4760 018f 5F666C61 		.ascii	"_flags\000"
 4760      677300
 4761              	.LASF58:
 4762 0196 696E746D 		.ascii	"intmax_t\000"
 4762      61785F74 
 4762      00
 4763              	.LASF435:
 4764 019f 53657269 		.ascii	"SerialCDC\000"
 4764      616C4344 
 4764      4300
 4765              	.LASF57:
 4766 01a9 75696E74 		.ascii	"uint_fast64_t\000"
 4766      5F666173 
ARM GAS  /tmp/ccQHvjuS.s 			page 101


 4766      7436345F 
 4766      7400
 4767              	.LASF52:
 4768 01b7 696E745F 		.ascii	"int_fast16_t\000"
 4768      66617374 
 4768      31365F74 
 4768      00
 4769              	.LASF15:
 4770 01c4 5F5F696E 		.ascii	"__int32_t\000"
 4770      7433325F 
 4770      7400
 4771              	.LASF218:
 4772 01ce 5F657272 		.ascii	"_errno\000"
 4772      6E6F00
 4773              	.LASF272:
 4774 01d5 77636861 		.ascii	"wchar_t\000"
 4774      725F7400 
 4775              	.LASF380:
 4776 01dd 756C5069 		.ascii	"ulPin\000"
 4776      6E00
 4777              	.LASF401:
 4778 01e3 4150494E 		.ascii	"APIN_UART1_RXD\000"
 4778      5F554152 
 4778      54315F52 
 4778      584400
 4779              	.LASF68:
 4780 01f2 50494F5F 		.ascii	"PIO_ODR\000"
 4780      4F445200 
 4781              	.LASF314:
 4782 01fa 50574D5F 		.ascii	"PWM_CH0\000"
 4782      43483000 
 4783              	.LASF315:
 4784 0202 50574D5F 		.ascii	"PWM_CH1\000"
 4784      43483100 
 4785              	.LASF79:
 4786 020a 50494F5F 		.ascii	"PIO_IER\000"
 4786      49455200 
 4787              	.LASF317:
 4788 0212 50574D5F 		.ascii	"PWM_CH3\000"
 4788      43483300 
 4789              	.LASF318:
 4790 021a 50574D5F 		.ascii	"PWM_CH4\000"
 4790      43483400 
 4791              	.LASF319:
 4792 0222 50574D5F 		.ascii	"PWM_CH5\000"
 4792      43483500 
 4793              	.LASF320:
 4794 022a 50574D5F 		.ascii	"PWM_CH6\000"
 4794      43483600 
 4795              	.LASF321:
 4796 0232 50574D5F 		.ascii	"PWM_CH7\000"
 4796      43483700 
 4797              	.LASF137:
 4798 023a 5744545F 		.ascii	"WDT_CR\000"
 4798      435200
 4799              	.LASF432:
 4800 0241 5F5A4E39 		.ascii	"_ZN9__gnu_cxx3divExx\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 102


 4800      5F5F676E 
 4800      755F6378 
 4800      78336469 
 4800      76457878 
 4801              	.LASF26:
 4802 0256 5F5F696E 		.ascii	"__int_least32_t\000"
 4802      745F6C65 
 4802      61737433 
 4802      325F7400 
 4803              	.LASF338:
 4804 0266 5443325F 		.ascii	"TC2_CHB6\000"
 4804      43484236 
 4804      00
 4805              	.LASF193:
 4806 026f 5F6D6273 		.ascii	"_mbstate\000"
 4806      74617465 
 4806      00
 4807              	.LASF342:
 4808 0278 5443325F 		.ascii	"TC2_CHB8\000"
 4808      43484238 
 4808      00
 4809              	.LASF285:
 4810 0281 73747274 		.ascii	"strtoull\000"
 4810      6F756C6C 
 4810      00
 4811              	.LASF183:
 4812 028a 5F726561 		.ascii	"_read\000"
 4812      6400
 4813              	.LASF25:
 4814 0290 5F5F7569 		.ascii	"__uint_least16_t\000"
 4814      6E745F6C 
 4814      65617374 
 4814      31365F74 
 4814      00
 4815              	.LASF202:
 4816 02a1 5F723438 		.ascii	"_r48\000"
 4816      00
 4817              	.LASF151:
 4818 02a6 5F5F554C 		.ascii	"__ULong\000"
 4818      6F6E6700 
 4819              	.LASF250:
 4820 02ae 6D6F6466 		.ascii	"modf\000"
 4820      00
 4821              	.LASF6:
 4822 02b3 6D61785F 		.ascii	"max_align_t\000"
 4822      616C6967 
 4822      6E5F7400 
 4823              	.LASF212:
 4824 02bf 5F776372 		.ascii	"_wcrtomb_state\000"
 4824      746F6D62 
 4824      5F737461 
 4824      746500
 4825              	.LASF220:
 4826 02ce 5F737464 		.ascii	"_stdout\000"
 4826      6F757400 
 4827              	.LASF30:
 4828 02d6 5F5F696E 		.ascii	"__intptr_t\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 103


 4828      74707472 
 4828      5F7400
 4829              	.LASF142:
 4830 02e1 5F66706F 		.ascii	"_fpos_t\000"
 4830      735F7400 
 4831              	.LASF174:
 4832 02e9 5F666E73 		.ascii	"_fns\000"
 4832      00
 4833              	.LASF182:
 4834 02ee 5F636F6F 		.ascii	"_cookie\000"
 4834      6B696500 
 4835              	.LASF139:
 4836 02f6 5744545F 		.ascii	"WDT_SR\000"
 4836      535200
 4837              	.LASF289:
 4838 02fd 675F696E 		.ascii	"g_interrupt_enabled\000"
 4838      74657272 
 4838      7570745F 
 4838      656E6162 
 4838      6C656400 
 4839              	.LASF130:
 4840 0311 50494F5F 		.ascii	"PIO_PCRHR\000"
 4840      50435248 
 4840      5200
 4841              	.LASF156:
 4842 031b 5F426967 		.ascii	"_Bigint\000"
 4842      696E7400 
 4843              	.LASF381:
 4844 0323 756C5065 		.ascii	"ulPeripheralId\000"
 4844      72697068 
 4844      6572616C 
 4844      496400
 4845              	.LASF164:
 4846 0332 5F5F746D 		.ascii	"__tm_wday\000"
 4846      5F776461 
 4846      7900
 4847              	.LASF56:
 4848 033c 696E745F 		.ascii	"int_fast64_t\000"
 4848      66617374 
 4848      36345F74 
 4848      00
 4849              	.LASF288:
 4850 0349 73747274 		.ascii	"strtold\000"
 4850      6F6C6400 
 4851              	.LASF228:
 4852 0351 5F726573 		.ascii	"_result\000"
 4852      756C7400 
 4853              	.LASF284:
 4854 0359 73747274 		.ascii	"strtoll\000"
 4854      6F6C6C00 
 4855              	.LASF344:
 4856 0361 416E616C 		.ascii	"AnalogChannelNumber\000"
 4856      6F674368 
 4856      616E6E65 
 4856      6C4E756D 
 4856      62657200 
 4857              	.LASF37:
ARM GAS  /tmp/ccQHvjuS.s 			page 104


 4858 0375 75696E74 		.ascii	"uint32_t\000"
 4858      33325F74 
 4858      00
 4859              	.LASF430:
 4860 037e 5F5A5374 		.ascii	"_ZSt3absx\000"
 4860      33616273 
 4860      7800
 4861              	.LASF160:
 4862 0388 5F5F746D 		.ascii	"__tm_hour\000"
 4862      5F686F75 
 4862      7200
 4863              	.LASF134:
 4864 0392 52737463 		.ascii	"Rstc\000"
 4864      00
 4865              	.LASF273:
 4866 0397 6D62746F 		.ascii	"mbtowc\000"
 4866      776300
 4867              	.LASF219:
 4868 039e 5F737464 		.ascii	"_stdin\000"
 4868      696E00
 4869              	.LASF408:
 4870 03a5 4D617850 		.ascii	"MaxPinNumber\000"
 4870      696E4E75 
 4870      6D626572 
 4870      00
 4871              	.LASF147:
 4872 03b2 5F5F636F 		.ascii	"__count\000"
 4872      756E7400 
 4873              	.LASF385:
 4874 03ba 756C4144 		.ascii	"ulADCChannelNumber\000"
 4874      43436861 
 4874      6E6E656C 
 4874      4E756D62 
 4874      657200
 4875              	.LASF351:
 4876 03cd 41444335 		.ascii	"ADC5\000"
 4876      00
 4877              	.LASF352:
 4878 03d2 41444336 		.ascii	"ADC6\000"
 4878      00
 4879              	.LASF2:
 4880 03d7 5F5F6D61 		.ascii	"__max_align_ld\000"
 4880      785F616C 
 4880      69676E5F 
 4880      6C6400
 4881              	.LASF353:
 4882 03e6 41444337 		.ascii	"ADC7\000"
 4882      00
 4883              	.LASF110:
 4884 03eb 50494F5F 		.ascii	"PIO_LSR\000"
 4884      4C535200 
 4885              	.LASF159:
 4886 03f3 5F5F746D 		.ascii	"__tm_min\000"
 4886      5F6D696E 
 4886      00
 4887              	.LASF248:
 4888 03fc 5F696D70 		.ascii	"_impure_ptr\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 105


 4888      7572655F 
 4888      70747200 
 4889              	.LASF1:
 4890 0408 5F5F6D61 		.ascii	"__max_align_ll\000"
 4890      785F616C 
 4890      69676E5F 
 4890      6C6C00
 4891              	.LASF215:
 4892 0417 5F6E6578 		.ascii	"_nextf\000"
 4892      746600
 4893              	.LASF427:
 4894 041e 31316D61 		.ascii	"11max_align_t\000"
 4894      785F616C 
 4894      69676E5F 
 4894      7400
 4895              	.LASF211:
 4896 042c 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 4896      72746F77 
 4896      63735F73 
 4896      74617465 
 4896      00
 4897              	.LASF121:
 4898 043d 50494F5F 		.ascii	"PIO_SCHMITT\000"
 4898      5343484D 
 4898      49545400 
 4899              	.LASF44:
 4900 0449 696E745F 		.ascii	"int_least16_t\000"
 4900      6C656173 
 4900      7431365F 
 4900      7400
 4901              	.LASF59:
 4902 0457 75696E74 		.ascii	"uintmax_t\000"
 4902      6D61785F 
 4902      7400
 4903              	.LASF148:
 4904 0461 5F5F7661 		.ascii	"__value\000"
 4904      6C756500 
 4905              	.LASF21:
 4906 0469 6C6F6E67 		.ascii	"long long unsigned int\000"
 4906      206C6F6E 
 4906      6720756E 
 4906      7369676E 
 4906      65642069 
 4907              	.LASF198:
 4908 0480 5F617363 		.ascii	"_asctime_buf\000"
 4908      74696D65 
 4908      5F627566 
 4908      00
 4909              	.LASF399:
 4910 048d 4150494E 		.ascii	"APIN_UART0_TXD\000"
 4910      5F554152 
 4910      54305F54 
 4910      584400
 4911              	.LASF178:
 4912 049c 5F5F7346 		.ascii	"__sFILE\000"
 4912      494C4500 
 4913              	.LASF155:
ARM GAS  /tmp/ccQHvjuS.s 			page 106


 4914 04a4 5F776473 		.ascii	"_wds\000"
 4914      00
 4915              	.LASF431:
 4916 04a9 5F5A5374 		.ascii	"_ZSt4modfePe\000"
 4916      346D6F64 
 4916      66655065 
 4916      00
 4917              	.LASF17:
 4918 04b6 5F5F7569 		.ascii	"__uint32_t\000"
 4918      6E743332 
 4918      5F7400
 4919              	.LASF244:
 4920 04c1 5F72616E 		.ascii	"_rand48\000"
 4920      64343800 
 4921              	.LASF281:
 4922 04c9 7763746F 		.ascii	"wctomb\000"
 4922      6D6200
 4923              	.LASF416:
 4924 04d0 70616765 		.ascii	"pageStartAddr\000"
 4924      53746172 
 4924      74416464 
 4924      7200
 4925              	.LASF240:
 4926 04de 5F5F4649 		.ascii	"__FILE\000"
 4926      4C4500
 4927              	.LASF298:
 4928 04e5 5F5F6664 		.ascii	"__fdlibm_posix\000"
 4928      6C69626D 
 4928      5F706F73 
 4928      697800
 4929              	.LASF75:
 4930 04f4 50494F5F 		.ascii	"PIO_SODR\000"
 4930      534F4452 
 4930      00
 4931              	.LASF190:
 4932 04fd 5F6F6666 		.ascii	"_offset\000"
 4932      73657400 
 4933              	.LASF187:
 4934 0505 5F756275 		.ascii	"_ubuf\000"
 4934      6600
 4935              	.LASF123:
 4936 050b 50494F5F 		.ascii	"PIO_DRIVER\000"
 4936      44524956 
 4936      455200
 4937              	.LASF420:
 4938 0516 7764745F 		.ascii	"wdt_restart\000"
 4938      72657374 
 4938      61727400 
 4939              	.LASF49:
 4940 0522 75696E74 		.ascii	"uint_least64_t\000"
 4940      5F6C6561 
 4940      73743634 
 4940      5F7400
 4941              	.LASF282:
 4942 0531 6C6C6469 		.ascii	"lldiv\000"
 4942      7600
 4943              	.LASF310:
ARM GAS  /tmp/ccQHvjuS.s 			page 107


 4944 0537 70696F5F 		.ascii	"pio_type_t\000"
 4944      74797065 
 4944      5F7400
 4945              	.LASF223:
 4946 0542 5F656D65 		.ascii	"_emergency\000"
 4946      7267656E 
 4946      637900
 4947              	.LASF154:
 4948 054d 5F736967 		.ascii	"_sign\000"
 4948      6E00
 4949              	.LASF292:
 4950 0553 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 4950      6972715F 
 4950      70726576 
 4950      5F696E74 
 4950      65727275 
 4951              	.LASF117:
 4952 0570 50494F5F 		.ascii	"PIO_LOCKSR\000"
 4952      4C4F434B 
 4952      535200
 4953              	.LASF5:
 4954 057b 73697A65 		.ascii	"size_t\000"
 4954      5F7400
 4955              	.LASF276:
 4956 0582 73747274 		.ascii	"strtod\000"
 4956      6F6400
 4957              	.LASF42:
 4958 0589 696E745F 		.ascii	"int_least8_t\000"
 4958      6C656173 
 4958      74385F74 
 4958      00
 4959              	.LASF38:
 4960 0596 696E7436 		.ascii	"int64_t\000"
 4960      345F7400 
 4961              	.LASF418:
 4962 059e 5F5F6469 		.ascii	"__disable_irq\000"
 4962      7361626C 
 4962      655F6972 
 4962      7100
 4963              	.LASF129:
 4964 05ac 50494F5F 		.ascii	"PIO_PCISR\000"
 4964      50434953 
 4964      5200
 4965              	.LASF48:
 4966 05b6 696E745F 		.ascii	"int_least64_t\000"
 4966      6C656173 
 4966      7436345F 
 4966      7400
 4967              	.LASF308:
 4968 05c4 50494F5F 		.ascii	"PIO_OUTPUT_0\000"
 4968      4F555450 
 4968      55545F30 
 4968      00
 4969              	.LASF309:
 4970 05d1 50494F5F 		.ascii	"PIO_OUTPUT_1\000"
 4970      4F555450 
 4970      55545F31 
ARM GAS  /tmp/ccQHvjuS.s 			page 108


 4970      00
 4971              	.LASF261:
 4972 05de 7375626F 		.ascii	"suboptarg\000"
 4972      70746172 
 4972      6700
 4973              	.LASF165:
 4974 05e8 5F5F746D 		.ascii	"__tm_yday\000"
 4974      5F796461 
 4974      7900
 4975              	.LASF277:
 4976 05f2 73747274 		.ascii	"strtol\000"
 4976      6F6C00
 4977              	.LASF222:
 4978 05f9 5F696E63 		.ascii	"_inc\000"
 4978      00
 4979              	.LASF173:
 4980 05fe 5F696E64 		.ascii	"_ind\000"
 4980      00
 4981              	.LASF413:
 4982 0603 53657269 		.ascii	"SerialUSB\000"
 4982      616C5553 
 4982      4200
 4983              	.LASF27:
 4984 060d 5F5F7569 		.ascii	"__uint_least32_t\000"
 4984      6E745F6C 
 4984      65617374 
 4984      33325F74 
 4984      00
 4985              	.LASF267:
 4986 061e 62736561 		.ascii	"bsearch\000"
 4986      72636800 
 4987              	.LASF412:
 4988 0626 53657269 		.ascii	"Serial1\000"
 4988      616C3100 
 4989              	.LASF345:
 4990 062e 4E4F5F41 		.ascii	"NO_ADC\000"
 4990      444300
 4991              	.LASF152:
 4992 0635 5F6E6578 		.ascii	"_next\000"
 4992      7400
 4993              	.LASF388:
 4994 063b 675F4150 		.ascii	"g_APinDescription\000"
 4994      696E4465 
 4994      73637269 
 4994      7074696F 
 4994      6E00
 4995              	.LASF20:
 4996 064d 5F5F7569 		.ascii	"__uint64_t\000"
 4996      6E743634 
 4996      5F7400
 4997              	.LASF91:
 4998 0658 50494F5F 		.ascii	"PIO_ABCDSR\000"
 4998      41424344 
 4998      535200
 4999              	.LASF356:
 5000 0663 41444331 		.ascii	"ADC10\000"
 5000      3000
ARM GAS  /tmp/ccQHvjuS.s 			page 109


 5001              	.LASF357:
 5002 0669 41444331 		.ascii	"ADC11\000"
 5002      3100
 5003              	.LASF358:
 5004 066f 41444331 		.ascii	"ADC12\000"
 5004      3200
 5005              	.LASF359:
 5006 0675 41444331 		.ascii	"ADC13\000"
 5006      3300
 5007              	.LASF360:
 5008 067b 41444331 		.ascii	"ADC14\000"
 5008      3400
 5009              	.LASF361:
 5010 0681 41444331 		.ascii	"ADC15\000"
 5010      3500
 5011              	.LASF362:
 5012 0687 41444331 		.ascii	"ADC16\000"
 5012      3600
 5013              	.LASF363:
 5014 068d 41444331 		.ascii	"ADC17\000"
 5014      3700
 5015              	.LASF364:
 5016 0693 41444331 		.ascii	"ADC18\000"
 5016      3800
 5017              	.LASF365:
 5018 0699 41444331 		.ascii	"ADC19\000"
 5018      3900
 5019              	.LASF421:
 5020 069f 666C6173 		.ascii	"flash_unlock\000"
 5020      685F756E 
 5020      6C6F636B 
 5020      00
 5021              	.LASF13:
 5022 06ac 5F5F7569 		.ascii	"__uint16_t\000"
 5022      6E743136 
 5022      5F7400
 5023              	.LASF230:
 5024 06b7 5F703573 		.ascii	"_p5s\000"
 5024      00
 5025              	.LASF73:
 5026 06bc 50494F5F 		.ascii	"PIO_IFSR\000"
 5026      49465352 
 5026      00
 5027              	.LASF87:
 5028 06c5 50494F5F 		.ascii	"PIO_PUDR\000"
 5028      50554452 
 5028      00
 5029              	.LASF144:
 5030 06ce 31305F6D 		.ascii	"10_mbstate_t\000"
 5030      62737461 
 5030      74655F74 
 5030      00
 5031              	.LASF293:
 5032 06db 666C6F61 		.ascii	"float_t\000"
 5032      745F7400 
 5033              	.LASF403:
 5034 06e3 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 110


 5034      5F48534D 
 5034      43495F43 
 5034      4C4F434B 
 5034      00
 5035              	.LASF213:
 5036 06f4 5F776373 		.ascii	"_wcsrtombs_state\000"
 5036      72746F6D 
 5036      62735F73 
 5036      74617465 
 5036      00
 5037              	.LASF203:
 5038 0705 5F6D626C 		.ascii	"_mblen_state\000"
 5038      656E5F73 
 5038      74617465 
 5038      00
 5039              	.LASF72:
 5040 0712 50494F5F 		.ascii	"PIO_IFDR\000"
 5040      49464452 
 5040      00
 5041              	.LASF126:
 5042 071b 50494F5F 		.ascii	"PIO_PCIER\000"
 5042      50434945 
 5042      5200
 5043              	.LASF239:
 5044 0725 63686172 		.ascii	"char\000"
 5044      00
 5045              	.LASF135:
 5046 072a 34527374 		.ascii	"4Rstc\000"
 5046      6300
 5047              	.LASF161:
 5048 0730 5F5F746D 		.ascii	"__tm_mday\000"
 5048      5F6D6461 
 5048      7900
 5049              	.LASF78:
 5050 073a 50494F5F 		.ascii	"PIO_PDSR\000"
 5050      50445352 
 5050      00
 5051              	.LASF236:
 5052 0743 5F736967 		.ascii	"_sig_func\000"
 5052      5F66756E 
 5052      6300
 5053              	.LASF210:
 5054 074d 5F6D6272 		.ascii	"_mbrtowc_state\000"
 5054      746F7763 
 5054      5F737461 
 5054      746500
 5055              	.LASF235:
 5056 075c 5F617465 		.ascii	"_atexit0\000"
 5056      78697430 
 5056      00
 5057              	.LASF331:
 5058 0765 5443315F 		.ascii	"TC1_CHA3\000"
 5058      43484133 
 5058      00
 5059              	.LASF333:
 5060 076e 5443315F 		.ascii	"TC1_CHA4\000"
 5060      43484134 
ARM GAS  /tmp/ccQHvjuS.s 			page 111


 5060      00
 5061              	.LASF335:
 5062 0777 5443315F 		.ascii	"TC1_CHA5\000"
 5062      43484135 
 5062      00
 5063              	.LASF303:
 5064 0780 50494F5F 		.ascii	"PIO_PERIPH_A\000"
 5064      50455249 
 5064      50485F41 
 5064      00
 5065              	.LASF304:
 5066 078d 50494F5F 		.ascii	"PIO_PERIPH_B\000"
 5066      50455249 
 5066      50485F42 
 5066      00
 5067              	.LASF305:
 5068 079a 50494F5F 		.ascii	"PIO_PERIPH_C\000"
 5068      50455249 
 5068      50485F43 
 5068      00
 5069              	.LASF411:
 5070 07a7 53657269 		.ascii	"Serial\000"
 5070      616C00
 5071              	.LASF189:
 5072 07ae 5F626C6B 		.ascii	"_blksize\000"
 5072      73697A65 
 5072      00
 5073              	.LASF119:
 5074 07b7 50494F5F 		.ascii	"PIO_WPSR\000"
 5074      57505352 
 5074      00
 5075              	.LASF366:
 5076 07c0 41444332 		.ascii	"ADC20\000"
 5076      3000
 5077              	.LASF367:
 5078 07c6 41444332 		.ascii	"ADC21\000"
 5078      3100
 5079              	.LASF368:
 5080 07cc 41444332 		.ascii	"ADC22\000"
 5080      3200
 5081              	.LASF229:
 5082 07d2 5F726573 		.ascii	"_result_k\000"
 5082      756C745F 
 5082      6B00
 5083              	.LASF370:
 5084 07dc 41444332 		.ascii	"ADC24\000"
 5084      3400
 5085              	.LASF371:
 5086 07e2 41444332 		.ascii	"ADC25\000"
 5086      3500
 5087              	.LASF372:
 5088 07e8 41444332 		.ascii	"ADC26\000"
 5088      3600
 5089              	.LASF373:
 5090 07ee 41444332 		.ascii	"ADC27\000"
 5090      3700
 5091              	.LASF374:
ARM GAS  /tmp/ccQHvjuS.s 			page 112


 5092 07f4 41444332 		.ascii	"ADC28\000"
 5092      3800
 5093              	.LASF375:
 5094 07fa 41444332 		.ascii	"ADC29\000"
 5094      3900
 5095              	.LASF113:
 5096 0800 50494F5F 		.ascii	"PIO_FELLSR\000"
 5096      46454C4C 
 5096      535200
 5097              	.LASF145:
 5098 080b 5F5F7763 		.ascii	"__wch\000"
 5098      6800
 5099              	.LASF33:
 5100 0811 75696E74 		.ascii	"uint8_t\000"
 5100      385F7400 
 5101              	.LASF398:
 5102 0819 4150494E 		.ascii	"APIN_UART0_RXD\000"
 5102      5F554152 
 5102      54305F52 
 5102      584400
 5103              	.LASF254:
 5104 0828 71756F74 		.ascii	"quot\000"
 5104      00
 5105              	.LASF88:
 5106 082d 50494F5F 		.ascii	"PIO_PUER\000"
 5106      50554552 
 5106      00
 5107              	.LASF186:
 5108 0836 5F636C6F 		.ascii	"_close\000"
 5108      736500
 5109              	.LASF111:
 5110 083d 50494F5F 		.ascii	"PIO_ELSR\000"
 5110      454C5352 
 5110      00
 5111              	.LASF369:
 5112 0846 41444332 		.ascii	"ADC23\000"
 5112      3300
 5113              	.LASF226:
 5114 084c 5F5F7364 		.ascii	"__sdidinit\000"
 5114      6964696E 
 5114      697400
 5115              	.LASF306:
 5116 0857 50494F5F 		.ascii	"PIO_PERIPH_D\000"
 5116      50455249 
 5116      50485F44 
 5116      00
 5117              	.LASF71:
 5118 0864 50494F5F 		.ascii	"PIO_IFER\000"
 5118      49464552 
 5118      00
 5119              	.LASF283:
 5120 086d 61746F6C 		.ascii	"atoll\000"
 5120      6C00
 5121              	.LASF394:
 5122 0873 5F74696D 		.ascii	"_timezone\000"
 5122      657A6F6E 
 5122      6500
ARM GAS  /tmp/ccQHvjuS.s 			page 113


 5123              	.LASF346:
 5124 087d 41444330 		.ascii	"ADC0\000"
 5124      00
 5125              	.LASF347:
 5126 0882 41444331 		.ascii	"ADC1\000"
 5126      00
 5127              	.LASF348:
 5128 0887 41444332 		.ascii	"ADC2\000"
 5128      00
 5129              	.LASF349:
 5130 088c 41444333 		.ascii	"ADC3\000"
 5130      00
 5131              	.LASF350:
 5132 0891 41444334 		.ascii	"ADC4\000"
 5132      00
 5133              	.LASF332:
 5134 0896 5443315F 		.ascii	"TC1_CHB3\000"
 5134      43484233 
 5134      00
 5135              	.LASF334:
 5136 089f 5443315F 		.ascii	"TC1_CHB4\000"
 5136      43484234 
 5136      00
 5137              	.LASF336:
 5138 08a8 5443315F 		.ascii	"TC1_CHB5\000"
 5138      43484235 
 5138      00
 5139              	.LASF354:
 5140 08b1 41444338 		.ascii	"ADC8\000"
 5140      00
 5141              	.LASF355:
 5142 08b6 41444339 		.ascii	"ADC9\000"
 5142      00
 5143              	.LASF67:
 5144 08bb 50494F5F 		.ascii	"PIO_OER\000"
 5144      4F455200 
 5145              	.LASF3:
 5146 08c3 6C6F6E67 		.ascii	"long long int\000"
 5146      206C6F6E 
 5146      6720696E 
 5146      7400
 5147              	.LASF414:
 5148 08d1 77726974 		.ascii	"write\000"
 5148      6500
 5149              	.LASF176:
 5150 08d7 5F626173 		.ascii	"_base\000"
 5150      6500
 5151              	.LASF376:
 5152 08dd 41444333 		.ascii	"ADC30\000"
 5152      3000
 5153              	.LASF377:
 5154 08e3 41444333 		.ascii	"ADC31\000"
 5154      3100
 5155              	.LASF246:
 5156 08e9 5F6D756C 		.ascii	"_mult\000"
 5156      7400
 5157              	.LASF247:
ARM GAS  /tmp/ccQHvjuS.s 			page 114


 5158 08ef 5F616464 		.ascii	"_add\000"
 5158      00
 5159              	.LASF296:
 5160 08f4 5F5F6664 		.ascii	"__fdlibm_svid\000"
 5160      6C69626D 
 5160      5F737669 
 5160      6400
 5161              	.LASF76:
 5162 0902 50494F5F 		.ascii	"PIO_CODR\000"
 5162      434F4452 
 5162      00
 5163              	.LASF93:
 5164 090b 50494F5F 		.ascii	"PIO_IFSCDR\000"
 5164      49465343 
 5164      445200
 5165              	.LASF43:
 5166 0916 75696E74 		.ascii	"uint_least8_t\000"
 5166      5F6C6561 
 5166      7374385F 
 5166      7400
 5167              	.LASF290:
 5168 0924 626F6F6C 		.ascii	"bool\000"
 5168      00
 5169              	.LASF252:
 5170 0929 5F5F6378 		.ascii	"__cxx11\000"
 5170      78313100 
 5171              	.LASF11:
 5172 0931 5F5F696E 		.ascii	"__int16_t\000"
 5172      7431365F 
 5172      7400
 5173              	.LASF434:
 5174 093b 5F5A4E35 		.ascii	"_ZN5Print5writeEPKcj\000"
 5174      5072696E 
 5174      74357772 
 5174      69746545 
 5174      504B636A 
 5175              	.LASF311:
 5176 0950 4E6F5069 		.ascii	"NoPin\000"
 5176      6E00
 5177              	.LASF60:
 5178 0956 73697A65 		.ascii	"sizetype\000"
 5178      74797065 
 5178      00
 5179              	.LASF50:
 5180 095f 696E745F 		.ascii	"int_fast8_t\000"
 5180      66617374 
 5180      385F7400 
 5181              	.LASF269:
 5182 096b 6C646976 		.ascii	"ldiv\000"
 5182      00
 5183              	.LASF227:
 5184 0970 5F5F636C 		.ascii	"__cleanup\000"
 5184      65616E75 
 5184      7000
 5185              	.LASF378:
 5186 097a 50696E44 		.ascii	"PinDescription\000"
 5186      65736372 
ARM GAS  /tmp/ccQHvjuS.s 			page 115


 5186      69707469 
 5186      6F6E00
 5187              	.LASF299:
 5188 0989 5F5F6664 		.ascii	"__fdlib_version\000"
 5188      6C69625F 
 5188      76657273 
 5188      696F6E00 
 5189              	.LASF115:
 5190 0999 50494F5F 		.ascii	"PIO_FRLHSR\000"
 5190      46524C48 
 5190      535200
 5191              	.LASF149:
 5192 09a4 5F6D6273 		.ascii	"_mbstate_t\000"
 5192      74617465 
 5192      5F7400
 5193              	.LASF260:
 5194 09af 5F5F636F 		.ascii	"__compar_fn_t\000"
 5194      6D706172 
 5194      5F666E5F 
 5194      7400
 5195              	.LASF24:
 5196 09bd 5F5F696E 		.ascii	"__int_least16_t\000"
 5196      745F6C65 
 5196      61737431 
 5196      365F7400 
 5197              	.LASF275:
 5198 09cd 7372616E 		.ascii	"srand\000"
 5198      6400
 5199              	.LASF415:
 5200 09d3 45726173 		.ascii	"EraseAndReset\000"
 5200      65416E64 
 5200      52657365 
 5200      7400
 5201              	.LASF70:
 5202 09e1 52657365 		.ascii	"Reserved2\000"
 5202      72766564 
 5202      3200
 5203              	.LASF74:
 5204 09eb 52657365 		.ascii	"Reserved3\000"
 5204      72766564 
 5204      3300
 5205              	.LASF150:
 5206 09f5 5F666C6F 		.ascii	"_flock_t\000"
 5206      636B5F74 
 5206      00
 5207              	.LASF90:
 5208 09fe 52657365 		.ascii	"Reserved5\000"
 5208      72766564 
 5208      3500
 5209              	.LASF92:
 5210 0a08 52657365 		.ascii	"Reserved6\000"
 5210      72766564 
 5210      3600
 5211              	.LASF166:
 5212 0a12 5F5F746D 		.ascii	"__tm_isdst\000"
 5212      5F697364 
 5212      737400
ARM GAS  /tmp/ccQHvjuS.s 			page 116


 5213              	.LASF55:
 5214 0a1d 75696E74 		.ascii	"uint_fast32_t\000"
 5214      5F666173 
 5214      7433325F 
 5214      7400
 5215              	.LASF108:
 5216 0a2b 52657365 		.ascii	"Reserved9\000"
 5216      72766564 
 5216      3900
 5217              	.LASF340:
 5218 0a35 5443325F 		.ascii	"TC2_CHB7\000"
 5218      43484237 
 5218      00
 5219              	.LASF32:
 5220 0a3e 696E7438 		.ascii	"int8_t\000"
 5220      5F7400
 5221              	.LASF18:
 5222 0a45 6C6F6E67 		.ascii	"long unsigned int\000"
 5222      20756E73 
 5222      69676E65 
 5222      6420696E 
 5222      7400
 5223              	.LASF214:
 5224 0a57 5F685F65 		.ascii	"_h_errno\000"
 5224      72726E6F 
 5224      00
 5225              	.LASF397:
 5226 0a60 4150494E 		.ascii	"APINS_UART0\000"
 5226      535F5541 
 5226      52543000 
 5227              	.LASF400:
 5228 0a6c 4150494E 		.ascii	"APINS_UART1\000"
 5228      535F5541 
 5228      52543100 
 5229              	.LASF382:
 5230 0a78 756C5069 		.ascii	"ulPinType\000"
 5230      6E547970 
 5230      6500
 5231              	.LASF103:
 5232 0a82 50494F5F 		.ascii	"PIO_OWSR\000"
 5232      4F575352 
 5232      00
 5233              	.LASF7:
 5234 0a8b 5F5F696E 		.ascii	"__int8_t\000"
 5234      74385F74 
 5234      00
 5235              	.LASF389:
 5236 0a94 5F5F6374 		.ascii	"__ctype_ptr__\000"
 5236      7970655F 
 5236      7074725F 
 5236      5F00
 5237              	.LASF323:
 5238 0aa2 5F455443 		.ascii	"_ETCChannel\000"
 5238      4368616E 
 5238      6E656C00 
 5239              	.LASF102:
 5240 0aae 50494F5F 		.ascii	"PIO_OWDR\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 117


 5240      4F574452 
 5240      00
 5241              	.LASF343:
 5242 0ab7 45544343 		.ascii	"ETCChannel\000"
 5242      68616E6E 
 5242      656C00
 5243              	.LASF162:
 5244 0ac2 5F5F746D 		.ascii	"__tm_mon\000"
 5244      5F6D6F6E 
 5244      00
 5245              	.LASF19:
 5246 0acb 5F5F696E 		.ascii	"__int64_t\000"
 5246      7436345F 
 5246      7400
 5247              	.LASF249:
 5248 0ad5 5F676C6F 		.ascii	"_global_impure_ptr\000"
 5248      62616C5F 
 5248      696D7075 
 5248      72655F70 
 5248      747200
 5249              	.LASF106:
 5250 0ae8 50494F5F 		.ascii	"PIO_AIMDR\000"
 5250      41494D44 
 5250      5200
 5251              	.LASF4:
 5252 0af2 6C6F6E67 		.ascii	"long double\000"
 5252      20646F75 
 5252      626C6500 
 5253              	.LASF40:
 5254 0afe 696E7470 		.ascii	"intptr_t\000"
 5254      74725F74 
 5254      00
 5255              	.LASF35:
 5256 0b07 75696E74 		.ascii	"uint16_t\000"
 5256      31365F74 
 5256      00
 5257              	.LASF184:
 5258 0b10 5F777269 		.ascii	"_write\000"
 5258      746500
 5259              	.LASF81:
 5260 0b17 50494F5F 		.ascii	"PIO_IMR\000"
 5260      494D5200 
 5261              	.LASF125:
 5262 0b1f 50494F5F 		.ascii	"PIO_PCMR\000"
 5262      50434D52 
 5262      00
 5263              	.LASF200:
 5264 0b28 5F67616D 		.ascii	"_gamma_signgam\000"
 5264      6D615F73 
 5264      69676E67 
 5264      616D00
 5265              	.LASF163:
 5266 0b37 5F5F746D 		.ascii	"__tm_year\000"
 5266      5F796561 
 5266      7200
 5267              	.LASF201:
 5268 0b41 5F72616E 		.ascii	"_rand_next\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 118


 5268      645F6E65 
 5268      787400
 5269              	.LASF94:
 5270 0b4c 50494F5F 		.ascii	"PIO_IFSCER\000"
 5270      49465343 
 5270      455200
 5271              	.LASF302:
 5272 0b57 50494F5F 		.ascii	"PIO_NOT_A_PIN\000"
 5272      4E4F545F 
 5272      415F5049 
 5272      4E00
 5273              	.LASF28:
 5274 0b65 5F5F696E 		.ascii	"__int_least64_t\000"
 5274      745F6C65 
 5274      61737436 
 5274      345F7400 
 5275              	.LASF172:
 5276 0b75 5F617465 		.ascii	"_atexit\000"
 5276      78697400 
 5277              	.LASF23:
 5278 0b7d 5F5F7569 		.ascii	"__uint_least8_t\000"
 5278      6E745F6C 
 5278      65617374 
 5278      385F7400 
 5279              	.LASF54:
 5280 0b8d 696E745F 		.ascii	"int_fast32_t\000"
 5280      66617374 
 5280      33325F74 
 5280      00
 5281              	.LASF136:
 5282 0b9a 33576474 		.ascii	"3Wdt\000"
 5282      00
 5283              	.LASF386:
 5284 0b9f 756C5057 		.ascii	"ulPWMChannel\000"
 5284      4D436861 
 5284      6E6E656C 
 5284      00
 5285              	.LASF133:
 5286 0bac 52535443 		.ascii	"RSTC_MR\000"
 5286      5F4D5200 
 5287              	.LASF66:
 5288 0bb4 52657365 		.ascii	"Reserved1\000"
 5288      72766564 
 5288      3100
 5289              	.LASF262:
 5290 0bbe 61746578 		.ascii	"atexit\000"
 5290      697400
 5291              	.LASF86:
 5292 0bc5 52657365 		.ascii	"Reserved4\000"
 5292      72766564 
 5292      3400
 5293              	.LASF12:
 5294 0bcf 73686F72 		.ascii	"short int\000"
 5294      7420696E 
 5294      7400
 5295              	.LASF101:
 5296 0bd9 50494F5F 		.ascii	"PIO_OWER\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 119


 5296      4F574552 
 5296      00
 5297              	.LASF104:
 5298 0be2 52657365 		.ascii	"Reserved8\000"
 5298      72766564 
 5298      3800
 5299              	.LASF271:
 5300 0bec 6D627374 		.ascii	"mbstowcs\000"
 5300      6F776373 
 5300      00
 5301              	.LASF105:
 5302 0bf5 50494F5F 		.ascii	"PIO_AIMER\000"
 5302      41494D45 
 5302      5200
 5303              	.LASF61:
 5304 0bff 49544D5F 		.ascii	"ITM_RxBuffer\000"
 5304      52784275 
 5304      66666572 
 5304      00
 5305              	.LASF393:
 5306 0c0c 55415254 		.ascii	"UARTClass\000"
 5306      436C6173 
 5306      7300
 5307              	.LASF379:
 5308 0c16 70506F72 		.ascii	"pPort\000"
 5308      7400
 5309              	.LASF34:
 5310 0c1c 696E7431 		.ascii	"int16_t\000"
 5310      365F7400 
 5311              	.LASF238:
 5312 0c24 5F5F7366 		.ascii	"__sf\000"
 5312      00
 5313              	.LASF95:
 5314 0c29 50494F5F 		.ascii	"PIO_IFSCSR\000"
 5314      49465343 
 5314      535200
 5315              	.LASF114:
 5316 0c34 50494F5F 		.ascii	"PIO_REHLSR\000"
 5316      5245484C 
 5316      535200
 5317              	.LASF225:
 5318 0c3f 5F637572 		.ascii	"_current_locale\000"
 5318      72656E74 
 5318      5F6C6F63 
 5318      616C6500 
 5319              	.LASF191:
 5320 0c4f 5F646174 		.ascii	"_data\000"
 5320      6100
 5321              	.LASF146:
 5322 0c55 5F5F7763 		.ascii	"__wchb\000"
 5322      686200
 5323              	.LASF395:
 5324 0c5c 5F646179 		.ascii	"_daylight\000"
 5324      6C696768 
 5324      7400
 5325              	.LASF429:
 5326 0c66 3350696F 		.ascii	"3Pio\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 120


 5326      00
 5327              	.LASF256:
 5328 0c6b 366C6469 		.ascii	"6ldiv_t\000"
 5328      765F7400 
 5329              	.LASF180:
 5330 0c73 5F66696C 		.ascii	"_file\000"
 5330      6500
 5331              	.LASF295:
 5332 0c79 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 5332      6C69626D 
 5332      5F696565 
 5332      6500
 5333              	.LASF419:
 5334 0c87 5F5F444D 		.ascii	"__DMB\000"
 5334      4200
 5335              	.LASF324:
 5336 0c8d 4E4F545F 		.ascii	"NOT_ON_TIMER\000"
 5336      4F4E5F54 
 5336      494D4552 
 5336      00
 5337              	.LASF199:
 5338 0c9a 5F6C6F63 		.ascii	"_localtime_buf\000"
 5338      616C7469 
 5338      6D655F62 
 5338      756600
 5339              	.LASF217:
 5340 0ca9 5F756E75 		.ascii	"_unused\000"
 5340      73656400 
 5341              	.LASF9:
 5342 0cb1 5F5F7569 		.ascii	"__uint8_t\000"
 5342      6E74385F 
 5342      7400
 5343              	.LASF234:
 5344 0cbb 5F6E6577 		.ascii	"_new\000"
 5344      00
 5345              	.LASF232:
 5346 0cc0 5F637674 		.ascii	"_cvtlen\000"
 5346      6C656E00 
 5347              	.LASF153:
 5348 0cc8 5F6D6178 		.ascii	"_maxwds\000"
 5348      77647300 
 5349              	.LASF396:
 5350 0cd0 5F747A6E 		.ascii	"_tzname\000"
 5350      616D6500 
 5351              	.LASF224:
 5352 0cd8 5F637572 		.ascii	"_current_category\000"
 5352      72656E74 
 5352      5F636174 
 5352      65676F72 
 5352      7900
 5353              	.LASF424:
 5354 0cea 474E5520 		.ascii	"GNU C++14 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -m"
 5354      432B2B31 
 5354      3420362E 
 5354      332E3120 
 5354      32303137 
 5355 0d1d 6670753D 		.ascii	"fpu=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu++14 -"
ARM GAS  /tmp/ccQHvjuS.s 			page 121


 5355      66707635 
 5355      2D643136 
 5355      202D6D66 
 5355      6C6F6174 
 5356 0d50 6666756E 		.ascii	"ffunction-sections -fdata-sections -fno-threadsafe-"
 5356      6374696F 
 5356      6E2D7365 
 5356      6374696F 
 5356      6E73202D 
 5357 0d83 73746174 		.ascii	"statics -fno-rtti -fno-exceptions -fsingle-precisio"
 5357      69637320 
 5357      2D666E6F 
 5357      2D727474 
 5357      69202D66 
 5358 0db6 6E2D636F 		.ascii	"n-constant\000"
 5358      6E737461 
 5358      6E7400
 5359              	.LASF47:
 5360 0dc1 75696E74 		.ascii	"uint_least32_t\000"
 5360      5F6C6561 
 5360      73743332 
 5360      5F7400
 5361              	.LASF22:
 5362 0dd0 5F5F696E 		.ascii	"__int_least8_t\000"
 5362      745F6C65 
 5362      61737438 
 5362      5F7400
 5363              	.LASF41:
 5364 0ddf 75696E74 		.ascii	"uintptr_t\000"
 5364      7074725F 
 5364      7400
 5365              	.LASF157:
 5366 0de9 5F5F746D 		.ascii	"__tm\000"
 5366      00
 5367              	.LASF138:
 5368 0dee 5744545F 		.ascii	"WDT_MR\000"
 5368      4D5200
 5369              	.LASF192:
 5370 0df5 5F6C6F63 		.ascii	"_lock\000"
 5370      6B00
 5371              	.LASF325:
 5372 0dfb 5443305F 		.ascii	"TC0_CHA0\000"
 5372      43484130 
 5372      00
 5373              	.LASF327:
 5374 0e04 5443305F 		.ascii	"TC0_CHA1\000"
 5374      43484131 
 5374      00
 5375              	.LASF329:
 5376 0e0d 5443305F 		.ascii	"TC0_CHA2\000"
 5376      43484132 
 5376      00
 5377              	.LASF409:
 5378 0e16 50776D46 		.ascii	"PwmFastClock\000"
 5378      61737443 
 5378      6C6F636B 
 5378      00
ARM GAS  /tmp/ccQHvjuS.s 			page 122


 5379              	.LASF278:
 5380 0e23 73747274 		.ascii	"strtoul\000"
 5380      6F756C00 
 5381              	.LASF257:
 5382 0e2b 6C646976 		.ascii	"ldiv_t\000"
 5382      5F7400
 5383              	.LASF423:
 5384 0e32 72737463 		.ascii	"rstc_start_software_reset\000"
 5384      5F737461 
 5384      72745F73 
 5384      6F667477 
 5384      6172655F 
 5385              	.LASF391:
 5386 0e4c 53455249 		.ascii	"SERIAL_BUFFER_SIZE\000"
 5386      414C5F42 
 5386      55464645 
 5386      525F5349 
 5386      5A4500
 5387              	.LASF291:
 5388 0e5f 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 5388      6972715F 
 5388      63726974 
 5388      6963616C 
 5388      5F736563 
 5389              	.LASF242:
 5390 0e80 5F6E696F 		.ascii	"_niobs\000"
 5390      627300
 5391              	.LASF143:
 5392 0e87 77696E74 		.ascii	"wint_t\000"
 5392      5F7400
 5393              	.LASF287:
 5394 0e8e 666C6F61 		.ascii	"float\000"
 5394      7400
 5395              	.LASF36:
 5396 0e94 696E7433 		.ascii	"int32_t\000"
 5396      325F7400 
 5397              	.LASF46:
 5398 0e9c 696E745F 		.ascii	"int_least32_t\000"
 5398      6C656173 
 5398      7433325F 
 5398      7400
 5399              	.LASF322:
 5400 0eaa 4550574D 		.ascii	"EPWMChannel\000"
 5400      4368616E 
 5400      6E656C00 
 5401              	.LASF65:
 5402 0eb6 50494F5F 		.ascii	"PIO_PSR\000"
 5402      50535200 
 5403              	.LASF169:
 5404 0ebe 5F64736F 		.ascii	"_dso_handle\000"
 5404      5F68616E 
 5404      646C6500 
 5405              	.LASF392:
 5406 0eca 5072696E 		.ascii	"Print\000"
 5406      7400
 5407              	.LASF406:
 5408 0ed0 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 123


 5408      5F474D41 
 5408      435F5048 
 5408      595F5245 
 5408      53455400 
 5409              	.LASF233:
 5410 0ee4 5F637674 		.ascii	"_cvtbuf\000"
 5410      62756600 
 5411              	.LASF10:
 5412 0eec 756E7369 		.ascii	"unsigned char\000"
 5412      676E6564 
 5412      20636861 
 5412      7200
 5413              	.LASF112:
 5414 0efa 52657365 		.ascii	"Reserved10\000"
 5414      72766564 
 5414      313000
 5415              	.LASF116:
 5416 0f05 52657365 		.ascii	"Reserved11\000"
 5416      72766564 
 5416      313100
 5417              	.LASF120:
 5418 0f10 52657365 		.ascii	"Reserved12\000"
 5418      72766564 
 5418      313200
 5419              	.LASF122:
 5420 0f1b 52657365 		.ascii	"Reserved13\000"
 5420      72766564 
 5420      313300
 5421              	.LASF124:
 5422 0f26 52657365 		.ascii	"Reserved14\000"
 5422      72766564 
 5422      313400
 5423              	.LASF99:
 5424 0f31 50494F5F 		.ascii	"PIO_PPDSR\000"
 5424      50504453 
 5424      5200
 5425              	.LASF326:
 5426 0f3b 5443305F 		.ascii	"TC0_CHB0\000"
 5426      43484230 
 5426      00
 5427              	.LASF328:
 5428 0f44 5443305F 		.ascii	"TC0_CHB1\000"
 5428      43484231 
 5428      00
 5429              	.LASF330:
 5430 0f4d 5443305F 		.ascii	"TC0_CHB2\000"
 5430      43484232 
 5430      00
 5431              	.LASF428:
 5432 0f56 6465636C 		.ascii	"decltype(nullptr)\000"
 5432      74797065 
 5432      286E756C 
 5432      6C707472 
 5432      2900
 5433              	.LASF286:
 5434 0f68 73747274 		.ascii	"strtof\000"
 5434      6F6600
ARM GAS  /tmp/ccQHvjuS.s 			page 124


 5435              	.LASF51:
 5436 0f6f 75696E74 		.ascii	"uint_fast8_t\000"
 5436      5F666173 
 5436      74385F74 
 5436      00
 5437              	.LASF209:
 5438 0f7c 5F6D6272 		.ascii	"_mbrlen_state\000"
 5438      6C656E5F 
 5438      73746174 
 5438      6500
 5439              	.LASF97:
 5440 0f8a 50494F5F 		.ascii	"PIO_PPDDR\000"
 5440      50504444 
 5440      5200
 5441              	.LASF280:
 5442 0f94 77637374 		.ascii	"wcstombs\000"
 5442      6F6D6273 
 5442      00
 5443              	.LASF300:
 5444 0f9d 5F5F6664 		.ascii	"__fdlibm_version\000"
 5444      6C69626D 
 5444      5F766572 
 5444      73696F6E 
 5444      00
 5445              	.LASF89:
 5446 0fae 50494F5F 		.ascii	"PIO_PUSR\000"
 5446      50555352 
 5446      00
 5447              	.LASF384:
 5448 0fb7 756C5069 		.ascii	"ulPinAttribute\000"
 5448      6E417474 
 5448      72696275 
 5448      746500
 5449              	.LASF407:
 5450 0fc6 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 5450      535F474D 
 5450      41435F50 
 5450      485900
 5451              	.LASF175:
 5452 0fd5 5F5F7362 		.ascii	"__sbuf\000"
 5452      756600
 5453              	.LASF255:
 5454 0fdc 6469765F 		.ascii	"div_t\000"
 5454      7400
 5455              	.LASF206:
 5456 0fe2 5F6C3634 		.ascii	"_l64a_buf\000"
 5456      615F6275 
 5456      6600
 5457              	.LASF405:
 5458 0fec 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 5458      5F474D41 
 5458      435F5048 
 5458      595F494E 
 5458      54455252 
 5459              	.LASF241:
 5460 1004 5F676C75 		.ascii	"_glue\000"
 5460      6500
ARM GAS  /tmp/ccQHvjuS.s 			page 125


 5461              	.LASF39:
 5462 100a 75696E74 		.ascii	"uint64_t\000"
 5462      36345F74 
 5462      00
 5463              	.LASF426:
 5464 1013 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 5464      652F746F 
 5464      72626A6F 
 5464      726E2F65 
 5464      636C6970 
 5465              	.LASF312:
 5466 1042 5F455057 		.ascii	"_EPWMChannel\000"
 5466      4D436861 
 5466      6E6E656C 
 5466      00
 5467              	.LASF237:
 5468 104f 5F5F7367 		.ascii	"__sglue\000"
 5468      6C756500 
 5469              	.LASF208:
 5470 1057 5F676574 		.ascii	"_getdate_err\000"
 5470      64617465 
 5470      5F657272 
 5470      00
 5471              	.LASF197:
 5472 1064 5F737472 		.ascii	"_strtok_last\000"
 5472      746F6B5F 
 5472      6C617374 
 5472      00
 5473              	.LASF204:
 5474 1071 5F6D6274 		.ascii	"_mbtowc_state\000"
 5474      6F77635F 
 5474      73746174 
 5474      6500
 5475              	.LASF402:
 5476 107f 4150494E 		.ascii	"APIN_UART1_TXD\000"
 5476      5F554152 
 5476      54315F54 
 5476      584400
 5477              	.LASF258:
 5478 108e 376C6C64 		.ascii	"7lldiv_t\000"
 5478      69765F74 
 5478      00
 5479              	.LASF85:
 5480 1097 50494F5F 		.ascii	"PIO_MDSR\000"
 5480      4D445352 
 5480      00
 5481              	.LASF404:
 5482 10a0 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 5482      5F48534D 
 5482      43495F44 
 5482      41544100 
 5483              	.LASF168:
 5484 10b0 5F666E61 		.ascii	"_fnargs\000"
 5484      72677300 
 5485              	.LASF8:
 5486 10b8 7369676E 		.ascii	"signed char\000"
 5486      65642063 
ARM GAS  /tmp/ccQHvjuS.s 			page 126


 5486      68617200 
 5487              	.LASF127:
 5488 10c4 50494F5F 		.ascii	"PIO_PCIDR\000"
 5488      50434944 
 5488      5200
 5489              	.LASF64:
 5490 10ce 50494F5F 		.ascii	"PIO_PDR\000"
 5490      50445200 
 5491              	.LASF195:
 5492 10d6 5F726565 		.ascii	"_reent\000"
 5492      6E7400
 5493              	.LASF14:
 5494 10dd 73686F72 		.ascii	"short unsigned int\000"
 5494      7420756E 
 5494      7369676E 
 5494      65642069 
 5494      6E7400
 5495              	.LASF259:
 5496 10f0 6C6C6469 		.ascii	"lldiv_t\000"
 5496      765F7400 
 5497              	.LASF84:
 5498 10f8 50494F5F 		.ascii	"PIO_MDDR\000"
 5498      4D444452 
 5498      00
 5499              	.LASF263:
 5500 1101 61746F66 		.ascii	"atof\000"
 5500      00
 5501              	.LASF98:
 5502 1106 50494F5F 		.ascii	"PIO_PPDER\000"
 5502      50504445 
 5502      5200
 5503              	.LASF265:
 5504 1110 61746F69 		.ascii	"atoi\000"
 5504      00
 5505              	.LASF266:
 5506 1115 61746F6C 		.ascii	"atol\000"
 5506      00
 5507              	.LASF128:
 5508 111a 50494F5F 		.ascii	"PIO_PCIMR\000"
 5508      5043494D 
 5508      5200
 5509              	.LASF170:
 5510 1124 5F666E74 		.ascii	"_fntypes\000"
 5510      79706573 
 5510      00
 5511              	.LASF177:
 5512 112d 5F73697A 		.ascii	"_size\000"
 5512      6500
 5513              	.LASF264:
 5514 1133 646F7562 		.ascii	"double\000"
 5514      6C6500
 5515              	.LASF316:
 5516 113a 50574D5F 		.ascii	"PWM_CH2\000"
 5516      43483200 
 5517              	.LASF387:
 5518 1142 756C5443 		.ascii	"ulTCChannel\000"
 5518      4368616E 
ARM GAS  /tmp/ccQHvjuS.s 			page 127


 5518      6E656C00 
 5519              	.LASF141:
 5520 114e 5F6F6666 		.ascii	"_off_t\000"
 5520      5F7400
 5521              	.LASF45:
 5522 1155 75696E74 		.ascii	"uint_least16_t\000"
 5522      5F6C6561 
 5522      73743136 
 5522      5F7400
 5523              	.LASF188:
 5524 1164 5F6E6275 		.ascii	"_nbuf\000"
 5524      6600
 5525              	.LASF196:
 5526 116a 5F756E75 		.ascii	"_unused_rand\000"
 5526      7365645F 
 5526      72616E64 
 5526      00
 5527              	.LASF231:
 5528 1177 5F667265 		.ascii	"_freelist\000"
 5528      656C6973 
 5528      7400
 5529              	.LASF313:
 5530 1181 4E4F545F 		.ascii	"NOT_ON_PWM\000"
 5530      4F4E5F50 
 5530      574D00
 5531              	.LASF194:
 5532 118c 5F666C61 		.ascii	"_flags2\000"
 5532      67733200 
 5533              	.LASF171:
 5534 1194 5F69735F 		.ascii	"_is_cxa\000"
 5534      63786100 
 5535              	.LASF422:
 5536 119c 666C6173 		.ascii	"flash_clear_gpnvm\000"
 5536      685F636C 
 5536      6561725F 
 5536      67706E76 
 5536      6D00
 5537              	.LASF107:
 5538 11ae 50494F5F 		.ascii	"PIO_AIMMR\000"
 5538      41494D4D 
 5538      5200
 5539              	.LASF245:
 5540 11b8 5F736565 		.ascii	"_seed\000"
 5540      6400
 5541              	.LASF185:
 5542 11be 5F736565 		.ascii	"_seek\000"
 5542      6B00
 5543              	.LASF301:
 5544 11c4 5F70696F 		.ascii	"_pio_type\000"
 5544      5F747970 
 5544      6500
 5545              	.LASF96:
 5546 11ce 50494F5F 		.ascii	"PIO_SCDR\000"
 5546      53434452 
 5546      00
 5547              	.LASF83:
 5548 11d7 50494F5F 		.ascii	"PIO_MDER\000"
ARM GAS  /tmp/ccQHvjuS.s 			page 128


 5548      4D444552 
 5548      00
 5549              	.LASF221:
 5550 11e0 5F737464 		.ascii	"_stderr\000"
 5550      65727200 
 5551              	.LASF216:
 5552 11e8 5F6E6D61 		.ascii	"_nmalloc\000"
 5552      6C6C6F63 
 5552      00
 5553              	.LASF243:
 5554 11f1 5F696F62 		.ascii	"_iobs\000"
 5554      7300
 5555              	.LASF140:
 5556 11f7 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 5556      4B5F5245 
 5556      43555253 
 5556      4956455F 
 5556      5400
 5557              	.LASF274:
 5558 1209 71736F72 		.ascii	"qsort\000"
 5558      7400
 5559              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
