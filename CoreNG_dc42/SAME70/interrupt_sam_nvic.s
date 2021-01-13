ARM GAS  /tmp/ccHjfERe.s 			page 1


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
  12              		.file	"interrupt_sam_nvic.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.cpu_irq_enter_critical,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	cpu_irq_enter_critical
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	cpu_irq_enter_critical, %function
  25              	cpu_irq_enter_critical:
  26              	.LFB142:
  27              		.file 1 "../asf/common/utils/interrupt/interrupt_sam_nvic.c"
   1:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** /**
   2:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * \file
   3:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
   4:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * \brief Global interrupt management for SAM D20, SAM3 and SAM4 (NVIC based)
   5:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
   6:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * Copyright (c) 2012-2015 Atmel Corporation. All rights reserved.
   7:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
   8:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * \asf_license_start
   9:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
  10:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * \page License
  11:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
  12:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
  15:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
  18:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *    and/or other materials provided with the distribution.
  21:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
  22:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *    from this software without specific prior written permission.
  24:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
  25:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *    Atmel microcontroller product.
  27:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
  28:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccHjfERe.s 			page 2


  31:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
  40:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * \asf_license_stop
  41:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  *
  42:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  */
  43:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** /*
  44:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  */
  46:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 
  47:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** #include "interrupt_sam_nvic.h"
  48:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 
  49:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** #if !defined(__DOXYGEN__)
  50:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** /* Deprecated - global flag to determine the global interrupt state. Required by
  51:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * QTouch library, however new applications should use cpu_irq_is_enabled()
  52:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  * which probes the true global interrupt state from the CPU special registers.
  53:../asf/common/utils/interrupt/interrupt_sam_nvic.c ****  */
  54:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** volatile bool g_interrupt_enabled = true;
  55:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** #endif
  56:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 
  57:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** void cpu_irq_enter_critical(void)
  58:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** {
  28              		.loc 1 58 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  59:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 	if (cpu_irq_critical_section_counter == 0) {
  33              		.loc 1 59 0
  34 0000 0D4B     		ldr	r3, .L10
  35 0002 1A68     		ldr	r2, [r3]
  36 0004 22B9     		cbnz	r2, .L5
  37              	.LBB12:
  38              	.LBB13:
  39              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h"
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
ARM GAS  /tmp/ccHjfERe.s 			page 3


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
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** /** \brief  Set Control Register
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function writes the given value to the Control Register.
ARM GAS  /tmp/ccHjfERe.s 			page 4


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
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     This function returns the current value of the Process Stack Pointer (PSP).
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \return               PSP Register value
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE uint32_t __get_PSP(void)
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
ARM GAS  /tmp/ccHjfERe.s 			page 5


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
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regPriMask         __ASM("primask");
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   return(__regPriMask);
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccHjfERe.s 			page 6


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
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regBasePri         __ASM("basepri");
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   __regBasePri = (basePri & 0xff);
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** 
ARM GAS  /tmp/ccHjfERe.s 			page 7


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
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****     \param [in]    fpscr  Floating Point Status/Control value to set
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****  */
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** __STATIC_INLINE void __set_FPSCR(uint32_t fpscr)
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** {
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h ****   register uint32_t __regfpscr         __ASM("fpscr");
ARM GAS  /tmp/ccHjfERe.s 			page 8


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
ARM GAS  /tmp/ccHjfERe.s 			page 9


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
ARM GAS  /tmp/ccHjfERe.s 			page 10


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
  40              		.loc 2 470 0
  41              		.syntax unified
ARM GAS  /tmp/ccHjfERe.s 			page 11


  42              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  43 0006 EFF31081 		MRS r1, primask
  44              	@ 0 "" 2
  45              		.thumb
  46              		.syntax unified
  47              	.LBE13:
  48              	.LBE12:
  60:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 		if (cpu_irq_is_enabled()) {
  49              		.loc 1 60 0
  50 000a 29B1     		cbz	r1, .L9
  61:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 			cpu_irq_disable();
  62:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 			cpu_irq_prev_interrupt_state = true;
  63:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 		} else {
  64:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 			/* Make sure the to save the prev state as false */
  65:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 			cpu_irq_prev_interrupt_state = false;
  51              		.loc 1 65 0
  52 000c 0B49     		ldr	r1, .L10+4
  53 000e 0A70     		strb	r2, [r1]
  54              	.L5:
  66:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 		}
  67:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 
  68:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 	}
  69:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 
  70:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 	cpu_irq_critical_section_counter++;
  55              		.loc 1 70 0
  56 0010 1A68     		ldr	r2, [r3]
  57 0012 0132     		adds	r2, r2, #1
  58 0014 1A60     		str	r2, [r3]
  59 0016 7047     		bx	lr
  60              	.L9:
  58:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 	if (cpu_irq_critical_section_counter == 0) {
  61              		.loc 1 58 0
  62 0018 10B4     		push	{r4}
  63              		.cfi_def_cfa_offset 4
  64              		.cfi_offset 4, -4
  65              	.LBB14:
  66              	.LBB15:
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
  67              		.loc 2 330 0
  68              		.syntax unified
  69              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  70 001a 72B6     		cpsid i
  71              	@ 0 "" 2
  72              		.thumb
  73              		.syntax unified
  74              	.LBE15:
  75              	.LBE14:
  76              	.LBB16:
  77              	.LBB17:
  78              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @file     core_cmInstr.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @brief    CMSIS Cortex-M Core Instruction Access Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @date     28. August 2014
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @note
ARM GAS  /tmp/ccHjfERe.s 			page 12


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
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     No Operation does nothing. This instruction can be used for code alignment purposes.
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __NOP                             __nop
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Interrupt
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccHjfERe.s 			page 13


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
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __REV                             __rev
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order (16 bit)
ARM GAS  /tmp/ccHjfERe.s 			page 14


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
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __BKPT(value)                       __breakpoint(value)
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if       (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300)
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse bit order of value
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the bit order of the given value.
ARM GAS  /tmp/ccHjfERe.s 			page 15


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
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (16 bit)
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 16 bit values.
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
ARM GAS  /tmp/ccHjfERe.s 			page 16


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
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to count the leading zeros
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             number of leading zeros in value
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CLZ                             __clz
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Rotate Right with Extend (32 bit)
ARM GAS  /tmp/ccHjfERe.s 			page 17


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
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRBT(value, ptr)               __strt(value, ptr)
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (16 bit)
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccHjfERe.s 			page 18


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
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __WFI(void)
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("wfi");
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Event
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccHjfERe.s 			page 19


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
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("dmb");
  79              		.loc 3 456 0
  80              		.syntax unified
  81              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  82 001c BFF35F8F 		dmb
  83              	@ 0 "" 2
  84              		.thumb
  85              		.syntax unified
ARM GAS  /tmp/ccHjfERe.s 			page 20


  86              	.LBE17:
  87              	.LBE16:
  61:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 			cpu_irq_prev_interrupt_state = true;
  88              		.loc 1 61 0
  89 0020 074C     		ldr	r4, .L10+8
  62:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 		} else {
  90              		.loc 1 62 0
  91 0022 0120     		movs	r0, #1
  92 0024 054A     		ldr	r2, .L10+4
  61:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 			cpu_irq_prev_interrupt_state = true;
  93              		.loc 1 61 0
  94 0026 2170     		strb	r1, [r4]
  62:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 		} else {
  95              		.loc 1 62 0
  96 0028 1070     		strb	r0, [r2]
  97              		.loc 1 70 0
  98 002a 1A68     		ldr	r2, [r3]
  71:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** }
  99              		.loc 1 71 0
 100 002c 5DF8044B 		ldr	r4, [sp], #4
 101              		.cfi_restore 4
 102              		.cfi_def_cfa_offset 0
  70:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** }
 103              		.loc 1 70 0
 104 0030 0132     		adds	r2, r2, #1
 105 0032 1A60     		str	r2, [r3]
 106              		.loc 1 71 0
 107 0034 7047     		bx	lr
 108              	.L11:
 109 0036 00BF     		.align	2
 110              	.L10:
 111 0038 00000000 		.word	.LANCHOR0
 112 003c 00000000 		.word	.LANCHOR2
 113 0040 00000000 		.word	.LANCHOR1
 114              		.cfi_endproc
 115              	.LFE142:
 116              		.size	cpu_irq_enter_critical, .-cpu_irq_enter_critical
 117              		.section	.text.cpu_irq_leave_critical,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	cpu_irq_leave_critical
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu fpv5-d16
 125              		.type	cpu_irq_leave_critical, %function
 126              	cpu_irq_leave_critical:
 127              	.LFB143:
  72:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 
  73:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** void cpu_irq_leave_critical(void)
  74:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** {
 128              		.loc 1 74 0
 129              		.cfi_startproc
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132              		@ link register save eliminated.
  75:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 	/* Check if the user is trying to leave a critical section when not in a critical section */
ARM GAS  /tmp/ccHjfERe.s 			page 21


  76:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 	Assert(cpu_irq_critical_section_counter > 0);
  77:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 
  78:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 	cpu_irq_critical_section_counter--;
 133              		.loc 1 78 0
 134 0000 074B     		ldr	r3, .L17
 135 0002 1A68     		ldr	r2, [r3]
 136 0004 013A     		subs	r2, r2, #1
 137 0006 1A60     		str	r2, [r3]
  79:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 
  80:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 	/* Only enable global interrupts when the counter reaches 0 and the state of the global interrupt 
  81:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 	   was enabled when entering critical state */
  82:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 	if ((cpu_irq_critical_section_counter == 0) && (cpu_irq_prev_interrupt_state)) {
 138              		.loc 1 82 0
 139 0008 1B68     		ldr	r3, [r3]
 140 000a 43B9     		cbnz	r3, .L12
 141              		.loc 1 82 0 is_stmt 0 discriminator 1
 142 000c 054B     		ldr	r3, .L17+4
 143 000e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 144 0010 2BB1     		cbz	r3, .L12
  83:../asf/common/utils/interrupt/interrupt_sam_nvic.c **** 		cpu_irq_enable();
 145              		.loc 1 83 0 is_stmt 1
 146 0012 054B     		ldr	r3, .L17+8
 147 0014 0122     		movs	r2, #1
 148 0016 1A70     		strb	r2, [r3]
 149              	.LBB18:
 150              	.LBB19:
 151              		.loc 3 456 0
 152              		.syntax unified
 153              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 154 0018 BFF35F8F 		dmb
 155              	@ 0 "" 2
 156              		.thumb
 157              		.syntax unified
 158              	.LBE19:
 159              	.LBE18:
 160              	.LBB20:
 161              	.LBB21:
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h **** }
 162              		.loc 2 319 0
 163              		.syntax unified
 164              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 165 001c 62B6     		cpsie i
 166              	@ 0 "" 2
 167              		.thumb
 168              		.syntax unified
 169              	.L12:
 170 001e 7047     		bx	lr
 171              	.L18:
 172              		.align	2
 173              	.L17:
 174 0020 00000000 		.word	.LANCHOR0
 175 0024 00000000 		.word	.LANCHOR2
 176 0028 00000000 		.word	.LANCHOR1
 177              	.LBE21:
 178              	.LBE20:
 179              		.cfi_endproc
 180              	.LFE143:
ARM GAS  /tmp/ccHjfERe.s 			page 22


 181              		.size	cpu_irq_leave_critical, .-cpu_irq_leave_critical
 182              		.global	g_interrupt_enabled
 183              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 184              		.align	2
 185              		.set	.LANCHOR0,. + 0
 186              		.type	cpu_irq_critical_section_counter, %object
 187              		.size	cpu_irq_critical_section_counter, 4
 188              	cpu_irq_critical_section_counter:
 189 0000 00000000 		.space	4
 190              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 191              		.set	.LANCHOR2,. + 0
 192              		.type	cpu_irq_prev_interrupt_state, %object
 193              		.size	cpu_irq_prev_interrupt_state, 1
 194              	cpu_irq_prev_interrupt_state:
 195 0000 00       		.space	1
 196              		.section	.data.g_interrupt_enabled,"aw",%progbits
 197              		.set	.LANCHOR1,. + 0
 198              		.type	g_interrupt_enabled, %object
 199              		.size	g_interrupt_enabled, 1
 200              	g_interrupt_enabled:
 201 0000 01       		.byte	1
 202              		.text
 203              	.Letext0:
 204              		.file 4 "/usr/include/newlib/machine/_default_types.h"
 205              		.file 5 "/usr/include/newlib/sys/_stdint.h"
 206              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 207              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 208              		.file 8 "/usr/include/newlib/sys/lock.h"
 209              		.file 9 "/usr/include/newlib/sys/_types.h"
 210              		.file 10 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 211              		.file 11 "/usr/include/newlib/sys/reent.h"
 212              		.file 12 "/usr/include/newlib/stdlib.h"
 213              		.file 13 "../asf/common/utils/interrupt/interrupt_sam_nvic.h"
 214              		.section	.debug_info,"",%progbits
 215              	.Ldebug_info0:
 216 0000 EB090000 		.4byte	0x9eb
 217 0004 0400     		.2byte	0x4
 218 0006 00000000 		.4byte	.Ldebug_abbrev0
 219 000a 04       		.byte	0x4
 220 000b 01       		.uleb128 0x1
 221 000c C4020000 		.4byte	.LASF137
 222 0010 0C       		.byte	0xc
 223 0011 67000000 		.4byte	.LASF138
 224 0015 3D050000 		.4byte	.LASF139
 225 0019 00000000 		.4byte	.Ldebug_ranges0+0
 226 001d 00000000 		.4byte	0
 227 0021 00000000 		.4byte	.Ldebug_line0
 228 0025 02       		.uleb128 0x2
 229 0026 04       		.byte	0x4
 230 0027 05       		.byte	0x5
 231 0028 696E7400 		.ascii	"int\000"
 232 002c 03       		.uleb128 0x3
 233 002d 04       		.byte	0x4
 234 002e 07       		.byte	0x7
 235 002f F7040000 		.4byte	.LASF0
 236 0033 03       		.uleb128 0x3
 237 0034 01       		.byte	0x1
ARM GAS  /tmp/ccHjfERe.s 			page 23


 238 0035 06       		.byte	0x6
 239 0036 01010000 		.4byte	.LASF1
 240 003a 03       		.uleb128 0x3
 241 003b 01       		.byte	0x1
 242 003c 08       		.byte	0x8
 243 003d FC030000 		.4byte	.LASF2
 244 0041 03       		.uleb128 0x3
 245 0042 02       		.byte	0x2
 246 0043 05       		.byte	0x5
 247 0044 0C000000 		.4byte	.LASF3
 248 0048 03       		.uleb128 0x3
 249 0049 02       		.byte	0x2
 250 004a 07       		.byte	0x7
 251 004b 2A050000 		.4byte	.LASF4
 252 004f 04       		.uleb128 0x4
 253 0050 04050000 		.4byte	.LASF6
 254 0054 04       		.byte	0x4
 255 0055 3F       		.byte	0x3f
 256 0056 5A000000 		.4byte	0x5a
 257 005a 03       		.uleb128 0x3
 258 005b 04       		.byte	0x4
 259 005c 05       		.byte	0x5
 260 005d 57010000 		.4byte	.LASF5
 261 0061 04       		.uleb128 0x4
 262 0062 C9010000 		.4byte	.LASF7
 263 0066 04       		.byte	0x4
 264 0067 41       		.byte	0x41
 265 0068 6C000000 		.4byte	0x6c
 266 006c 03       		.uleb128 0x3
 267 006d 04       		.byte	0x4
 268 006e 07       		.byte	0x7
 269 006f 3B020000 		.4byte	.LASF8
 270 0073 03       		.uleb128 0x3
 271 0074 08       		.byte	0x8
 272 0075 05       		.byte	0x5
 273 0076 80010000 		.4byte	.LASF9
 274 007a 03       		.uleb128 0x3
 275 007b 08       		.byte	0x8
 276 007c 07       		.byte	0x7
 277 007d 13010000 		.4byte	.LASF10
 278 0081 04       		.uleb128 0x4
 279 0082 F4030000 		.4byte	.LASF11
 280 0086 05       		.byte	0x5
 281 0087 2C       		.byte	0x2c
 282 0088 4F000000 		.4byte	0x4f
 283 008c 05       		.uleb128 0x5
 284 008d 81000000 		.4byte	0x81
 285 0091 04       		.uleb128 0x4
 286 0092 B0050000 		.4byte	.LASF12
 287 0096 05       		.byte	0x5
 288 0097 30       		.byte	0x30
 289 0098 61000000 		.4byte	0x61
 290 009c 05       		.uleb128 0x5
 291 009d 91000000 		.4byte	0x91
 292 00a1 06       		.uleb128 0x6
 293 00a2 04       		.byte	0x4
 294 00a3 03       		.uleb128 0x3
ARM GAS  /tmp/ccHjfERe.s 			page 24


 295 00a4 04       		.byte	0x4
 296 00a5 07       		.byte	0x7
 297 00a6 BB020000 		.4byte	.LASF13
 298 00aa 07       		.uleb128 0x7
 299 00ab C0000000 		.4byte	.LASF14
 300 00af 06       		.byte	0x6
 301 00b0 6508     		.2byte	0x865
 302 00b2 8C000000 		.4byte	0x8c
 303 00b6 08       		.uleb128 0x8
 304 00b7 16020000 		.4byte	.LASF15
 305 00bb 07       		.byte	0x7
 306 00bc 3A       		.byte	0x3a
 307 00bd 91000000 		.4byte	0x91
 308 00c1 04       		.uleb128 0x4
 309 00c2 D6030000 		.4byte	.LASF16
 310 00c6 08       		.byte	0x8
 311 00c7 07       		.byte	0x7
 312 00c8 25000000 		.4byte	0x25
 313 00cc 04       		.uleb128 0x4
 314 00cd F3000000 		.4byte	.LASF17
 315 00d1 09       		.byte	0x9
 316 00d2 2C       		.byte	0x2c
 317 00d3 5A000000 		.4byte	0x5a
 318 00d7 04       		.uleb128 0x4
 319 00d8 D4040000 		.4byte	.LASF18
 320 00dc 09       		.byte	0x9
 321 00dd 72       		.byte	0x72
 322 00de 5A000000 		.4byte	0x5a
 323 00e2 09       		.uleb128 0x9
 324 00e3 A7030000 		.4byte	.LASF19
 325 00e7 0A       		.byte	0xa
 326 00e8 6501     		.2byte	0x165
 327 00ea 2C000000 		.4byte	0x2c
 328 00ee 0A       		.uleb128 0xa
 329 00ef 04       		.byte	0x4
 330 00f0 09       		.byte	0x9
 331 00f1 A6       		.byte	0xa6
 332 00f2 0D010000 		.4byte	0x10d
 333 00f6 0B       		.uleb128 0xb
 334 00f7 8C020000 		.4byte	.LASF20
 335 00fb 09       		.byte	0x9
 336 00fc A8       		.byte	0xa8
 337 00fd E2000000 		.4byte	0xe2
 338 0101 0B       		.uleb128 0xb
 339 0102 0F020000 		.4byte	.LASF21
 340 0106 09       		.byte	0x9
 341 0107 A9       		.byte	0xa9
 342 0108 0D010000 		.4byte	0x10d
 343 010c 00       		.byte	0
 344 010d 0C       		.uleb128 0xc
 345 010e 3A000000 		.4byte	0x3a
 346 0112 1D010000 		.4byte	0x11d
 347 0116 0D       		.uleb128 0xd
 348 0117 A3000000 		.4byte	0xa3
 349 011b 03       		.byte	0x3
 350 011c 00       		.byte	0
 351 011d 0E       		.uleb128 0xe
ARM GAS  /tmp/ccHjfERe.s 			page 25


 352 011e 08       		.byte	0x8
 353 011f 09       		.byte	0x9
 354 0120 A3       		.byte	0xa3
 355 0121 3E010000 		.4byte	0x13e
 356 0125 0F       		.uleb128 0xf
 357 0126 AB040000 		.4byte	.LASF22
 358 012a 09       		.byte	0x9
 359 012b A5       		.byte	0xa5
 360 012c 25000000 		.4byte	0x25
 361 0130 00       		.byte	0
 362 0131 0F       		.uleb128 0xf
 363 0132 B3040000 		.4byte	.LASF23
 364 0136 09       		.byte	0x9
 365 0137 AA       		.byte	0xaa
 366 0138 EE000000 		.4byte	0xee
 367 013c 04       		.byte	0x4
 368 013d 00       		.byte	0
 369 013e 04       		.uleb128 0x4
 370 013f 49040000 		.4byte	.LASF24
 371 0143 09       		.byte	0x9
 372 0144 AB       		.byte	0xab
 373 0145 1D010000 		.4byte	0x11d
 374 0149 04       		.uleb128 0x4
 375 014a 16040000 		.4byte	.LASF25
 376 014e 09       		.byte	0x9
 377 014f AF       		.byte	0xaf
 378 0150 C1000000 		.4byte	0xc1
 379 0154 04       		.uleb128 0x4
 380 0155 6C050000 		.4byte	.LASF26
 381 0159 0B       		.byte	0xb
 382 015a 16       		.byte	0x16
 383 015b 6C000000 		.4byte	0x6c
 384 015f 10       		.uleb128 0x10
 385 0160 FC010000 		.4byte	.LASF31
 386 0164 18       		.byte	0x18
 387 0165 0B       		.byte	0xb
 388 0166 2D       		.byte	0x2d
 389 0167 B2010000 		.4byte	0x1b2
 390 016b 0F       		.uleb128 0xf
 391 016c 0E050000 		.4byte	.LASF27
 392 0170 0B       		.byte	0xb
 393 0171 2F       		.byte	0x2f
 394 0172 B2010000 		.4byte	0x1b2
 395 0176 00       		.byte	0
 396 0177 11       		.uleb128 0x11
 397 0178 5F6B00   		.ascii	"_k\000"
 398 017b 0B       		.byte	0xb
 399 017c 30       		.byte	0x30
 400 017d 25000000 		.4byte	0x25
 401 0181 04       		.byte	0x4
 402 0182 0F       		.uleb128 0xf
 403 0183 96040000 		.4byte	.LASF28
 404 0187 0B       		.byte	0xb
 405 0188 30       		.byte	0x30
 406 0189 25000000 		.4byte	0x25
 407 018d 08       		.byte	0x8
 408 018e 0F       		.uleb128 0xf
ARM GAS  /tmp/ccHjfERe.s 			page 26


 409 018f D4010000 		.4byte	.LASF29
 410 0193 0B       		.byte	0xb
 411 0194 30       		.byte	0x30
 412 0195 25000000 		.4byte	0x25
 413 0199 0C       		.byte	0xc
 414 019a 0F       		.uleb128 0xf
 415 019b C6050000 		.4byte	.LASF30
 416 019f 0B       		.byte	0xb
 417 01a0 30       		.byte	0x30
 418 01a1 25000000 		.4byte	0x25
 419 01a5 10       		.byte	0x10
 420 01a6 11       		.uleb128 0x11
 421 01a7 5F7800   		.ascii	"_x\000"
 422 01aa 0B       		.byte	0xb
 423 01ab 31       		.byte	0x31
 424 01ac B8010000 		.4byte	0x1b8
 425 01b0 14       		.byte	0x14
 426 01b1 00       		.byte	0
 427 01b2 12       		.uleb128 0x12
 428 01b3 04       		.byte	0x4
 429 01b4 5F010000 		.4byte	0x15f
 430 01b8 0C       		.uleb128 0xc
 431 01b9 54010000 		.4byte	0x154
 432 01bd C8010000 		.4byte	0x1c8
 433 01c1 0D       		.uleb128 0xd
 434 01c2 A3000000 		.4byte	0xa3
 435 01c6 00       		.byte	0
 436 01c7 00       		.byte	0
 437 01c8 10       		.uleb128 0x10
 438 01c9 0A020000 		.4byte	.LASF32
 439 01cd 24       		.byte	0x24
 440 01ce 0B       		.byte	0xb
 441 01cf 35       		.byte	0x35
 442 01d0 41020000 		.4byte	0x241
 443 01d4 0F       		.uleb128 0xf
 444 01d5 EA000000 		.4byte	.LASF33
 445 01d9 0B       		.byte	0xb
 446 01da 37       		.byte	0x37
 447 01db 25000000 		.4byte	0x25
 448 01df 00       		.byte	0
 449 01e0 0F       		.uleb128 0xf
 450 01e1 37060000 		.4byte	.LASF34
 451 01e5 0B       		.byte	0xb
 452 01e6 38       		.byte	0x38
 453 01e7 25000000 		.4byte	0x25
 454 01eb 04       		.byte	0x4
 455 01ec 0F       		.uleb128 0xf
 456 01ed 2A010000 		.4byte	.LASF35
 457 01f1 0B       		.byte	0xb
 458 01f2 39       		.byte	0x39
 459 01f3 25000000 		.4byte	0x25
 460 01f7 08       		.byte	0x8
 461 01f8 0F       		.uleb128 0xf
 462 01f9 76060000 		.4byte	.LASF36
 463 01fd 0B       		.byte	0xb
 464 01fe 3A       		.byte	0x3a
 465 01ff 25000000 		.4byte	0x25
ARM GAS  /tmp/ccHjfERe.s 			page 27


 466 0203 0C       		.byte	0xc
 467 0204 0F       		.uleb128 0xf
 468 0205 65030000 		.4byte	.LASF37
 469 0209 0B       		.byte	0xb
 470 020a 3B       		.byte	0x3b
 471 020b 25000000 		.4byte	0x25
 472 020f 10       		.byte	0x10
 473 0210 0F       		.uleb128 0xf
 474 0211 B1020000 		.4byte	.LASF38
 475 0215 0B       		.byte	0xb
 476 0216 3C       		.byte	0x3c
 477 0217 25000000 		.4byte	0x25
 478 021b 14       		.byte	0x14
 479 021c 0F       		.uleb128 0xf
 480 021d CA040000 		.4byte	.LASF39
 481 0221 0B       		.byte	0xb
 482 0222 3D       		.byte	0x3d
 483 0223 25000000 		.4byte	0x25
 484 0227 18       		.byte	0x18
 485 0228 0F       		.uleb128 0xf
 486 0229 1F040000 		.4byte	.LASF40
 487 022d 0B       		.byte	0xb
 488 022e 3E       		.byte	0x3e
 489 022f 25000000 		.4byte	0x25
 490 0233 1C       		.byte	0x1c
 491 0234 0F       		.uleb128 0xf
 492 0235 1D060000 		.4byte	.LASF41
 493 0239 0B       		.byte	0xb
 494 023a 3F       		.byte	0x3f
 495 023b 25000000 		.4byte	0x25
 496 023f 20       		.byte	0x20
 497 0240 00       		.byte	0
 498 0241 13       		.uleb128 0x13
 499 0242 39010000 		.4byte	.LASF42
 500 0246 0801     		.2byte	0x108
 501 0248 0B       		.byte	0xb
 502 0249 48       		.byte	0x48
 503 024a 81020000 		.4byte	0x281
 504 024e 0F       		.uleb128 0xf
 505 024f 16000000 		.4byte	.LASF43
 506 0253 0B       		.byte	0xb
 507 0254 49       		.byte	0x49
 508 0255 81020000 		.4byte	0x281
 509 0259 00       		.byte	0
 510 025a 0F       		.uleb128 0xf
 511 025b 00000000 		.4byte	.LASF44
 512 025f 0B       		.byte	0xb
 513 0260 4A       		.byte	0x4a
 514 0261 81020000 		.4byte	0x281
 515 0265 80       		.byte	0x80
 516 0266 14       		.uleb128 0x14
 517 0267 21050000 		.4byte	.LASF45
 518 026b 0B       		.byte	0xb
 519 026c 4C       		.byte	0x4c
 520 026d 54010000 		.4byte	0x154
 521 0271 0001     		.2byte	0x100
 522 0273 14       		.uleb128 0x14
ARM GAS  /tmp/ccHjfERe.s 			page 28


 523 0274 67010000 		.4byte	.LASF46
 524 0278 0B       		.byte	0xb
 525 0279 4F       		.byte	0x4f
 526 027a 54010000 		.4byte	0x154
 527 027e 0401     		.2byte	0x104
 528 0280 00       		.byte	0
 529 0281 0C       		.uleb128 0xc
 530 0282 A1000000 		.4byte	0xa1
 531 0286 91020000 		.4byte	0x291
 532 028a 0D       		.uleb128 0xd
 533 028b A3000000 		.4byte	0xa3
 534 028f 1F       		.byte	0x1f
 535 0290 00       		.byte	0
 536 0291 13       		.uleb128 0x13
 537 0292 6E030000 		.4byte	.LASF47
 538 0296 9001     		.2byte	0x190
 539 0298 0B       		.byte	0xb
 540 0299 5B       		.byte	0x5b
 541 029a CF020000 		.4byte	0x2cf
 542 029e 0F       		.uleb128 0xf
 543 029f 0E050000 		.4byte	.LASF27
 544 02a3 0B       		.byte	0xb
 545 02a4 5C       		.byte	0x5c
 546 02a5 CF020000 		.4byte	0x2cf
 547 02a9 00       		.byte	0
 548 02aa 0F       		.uleb128 0xf
 549 02ab 77040000 		.4byte	.LASF48
 550 02af 0B       		.byte	0xb
 551 02b0 5D       		.byte	0x5d
 552 02b1 25000000 		.4byte	0x25
 553 02b5 04       		.byte	0x4
 554 02b6 0F       		.uleb128 0xf
 555 02b7 C4010000 		.4byte	.LASF49
 556 02bb 0B       		.byte	0xb
 557 02bc 5F       		.byte	0x5f
 558 02bd D5020000 		.4byte	0x2d5
 559 02c1 08       		.byte	0x8
 560 02c2 0F       		.uleb128 0xf
 561 02c3 39010000 		.4byte	.LASF42
 562 02c7 0B       		.byte	0xb
 563 02c8 60       		.byte	0x60
 564 02c9 41020000 		.4byte	0x241
 565 02cd 88       		.byte	0x88
 566 02ce 00       		.byte	0
 567 02cf 12       		.uleb128 0x12
 568 02d0 04       		.byte	0x4
 569 02d1 91020000 		.4byte	0x291
 570 02d5 0C       		.uleb128 0xc
 571 02d6 E5020000 		.4byte	0x2e5
 572 02da E5020000 		.4byte	0x2e5
 573 02de 0D       		.uleb128 0xd
 574 02df A3000000 		.4byte	0xa3
 575 02e3 1F       		.byte	0x1f
 576 02e4 00       		.byte	0
 577 02e5 12       		.uleb128 0x12
 578 02e6 04       		.byte	0x4
 579 02e7 EB020000 		.4byte	0x2eb
ARM GAS  /tmp/ccHjfERe.s 			page 29


 580 02eb 15       		.uleb128 0x15
 581 02ec 10       		.uleb128 0x10
 582 02ed 29040000 		.4byte	.LASF50
 583 02f1 08       		.byte	0x8
 584 02f2 0B       		.byte	0xb
 585 02f3 73       		.byte	0x73
 586 02f4 11030000 		.4byte	0x311
 587 02f8 0F       		.uleb128 0xf
 588 02f9 E8030000 		.4byte	.LASF51
 589 02fd 0B       		.byte	0xb
 590 02fe 74       		.byte	0x74
 591 02ff 11030000 		.4byte	0x311
 592 0303 00       		.byte	0
 593 0304 0F       		.uleb128 0xf
 594 0305 F1040000 		.4byte	.LASF52
 595 0309 0B       		.byte	0xb
 596 030a 75       		.byte	0x75
 597 030b 25000000 		.4byte	0x25
 598 030f 04       		.byte	0x4
 599 0310 00       		.byte	0
 600 0311 12       		.uleb128 0x12
 601 0312 04       		.byte	0x4
 602 0313 3A000000 		.4byte	0x3a
 603 0317 10       		.uleb128 0x10
 604 0318 54040000 		.4byte	.LASF53
 605 031c 68       		.byte	0x68
 606 031d 0B       		.byte	0xb
 607 031e B3       		.byte	0xb3
 608 031f 41040000 		.4byte	0x441
 609 0323 11       		.uleb128 0x11
 610 0324 5F7000   		.ascii	"_p\000"
 611 0327 0B       		.byte	0xb
 612 0328 B4       		.byte	0xb4
 613 0329 11030000 		.4byte	0x311
 614 032d 00       		.byte	0
 615 032e 11       		.uleb128 0x11
 616 032f 5F7200   		.ascii	"_r\000"
 617 0332 0B       		.byte	0xb
 618 0333 B5       		.byte	0xb5
 619 0334 25000000 		.4byte	0x25
 620 0338 04       		.byte	0x4
 621 0339 11       		.uleb128 0x11
 622 033a 5F7700   		.ascii	"_w\000"
 623 033d 0B       		.byte	0xb
 624 033e B6       		.byte	0xb6
 625 033f 25000000 		.4byte	0x25
 626 0343 08       		.byte	0x8
 627 0344 0F       		.uleb128 0xf
 628 0345 60010000 		.4byte	.LASF54
 629 0349 0B       		.byte	0xb
 630 034a B7       		.byte	0xb7
 631 034b 41000000 		.4byte	0x41
 632 034f 0C       		.byte	0xc
 633 0350 0F       		.uleb128 0xf
 634 0351 4D020000 		.4byte	.LASF55
 635 0355 0B       		.byte	0xb
 636 0356 B8       		.byte	0xb8
ARM GAS  /tmp/ccHjfERe.s 			page 30


 637 0357 41000000 		.4byte	0x41
 638 035b 0E       		.byte	0xe
 639 035c 11       		.uleb128 0x11
 640 035d 5F626600 		.ascii	"_bf\000"
 641 0361 0B       		.byte	0xb
 642 0362 B9       		.byte	0xb9
 643 0363 EC020000 		.4byte	0x2ec
 644 0367 10       		.byte	0x10
 645 0368 0F       		.uleb128 0xf
 646 0369 B7000000 		.4byte	.LASF56
 647 036d 0B       		.byte	0xb
 648 036e BA       		.byte	0xba
 649 036f 25000000 		.4byte	0x25
 650 0373 18       		.byte	0x18
 651 0374 0F       		.uleb128 0xf
 652 0375 47010000 		.4byte	.LASF57
 653 0379 0B       		.byte	0xb
 654 037a C1       		.byte	0xc1
 655 037b A1000000 		.4byte	0xa1
 656 037f 1C       		.byte	0x1c
 657 0380 0F       		.uleb128 0xf
 658 0381 04020000 		.4byte	.LASF58
 659 0385 0B       		.byte	0xb
 660 0386 C3       		.byte	0xc3
 661 0387 AE050000 		.4byte	0x5ae
 662 038b 20       		.byte	0x20
 663 038c 0F       		.uleb128 0xf
 664 038d AA020000 		.4byte	.LASF59
 665 0391 0B       		.byte	0xb
 666 0392 C5       		.byte	0xc5
 667 0393 D8050000 		.4byte	0x5d8
 668 0397 24       		.byte	0x24
 669 0398 0F       		.uleb128 0xf
 670 0399 BB040000 		.4byte	.LASF60
 671 039d 0B       		.byte	0xb
 672 039e C8       		.byte	0xc8
 673 039f FC050000 		.4byte	0x5fc
 674 03a3 28       		.byte	0x28
 675 03a4 0F       		.uleb128 0xf
 676 03a5 FA000000 		.4byte	.LASF61
 677 03a9 0B       		.byte	0xb
 678 03aa C9       		.byte	0xc9
 679 03ab 16060000 		.4byte	0x616
 680 03af 2C       		.byte	0x2c
 681 03b0 11       		.uleb128 0x11
 682 03b1 5F756200 		.ascii	"_ub\000"
 683 03b5 0B       		.byte	0xb
 684 03b6 CC       		.byte	0xcc
 685 03b7 EC020000 		.4byte	0x2ec
 686 03bb 30       		.byte	0x30
 687 03bc 11       		.uleb128 0x11
 688 03bd 5F757000 		.ascii	"_up\000"
 689 03c1 0B       		.byte	0xb
 690 03c2 CD       		.byte	0xcd
 691 03c3 11030000 		.4byte	0x311
 692 03c7 38       		.byte	0x38
 693 03c8 11       		.uleb128 0x11
ARM GAS  /tmp/ccHjfERe.s 			page 31


 694 03c9 5F757200 		.ascii	"_ur\000"
 695 03cd 0B       		.byte	0xb
 696 03ce CE       		.byte	0xce
 697 03cf 25000000 		.4byte	0x25
 698 03d3 3C       		.byte	0x3c
 699 03d4 0F       		.uleb128 0xf
 700 03d5 0D010000 		.4byte	.LASF62
 701 03d9 0B       		.byte	0xb
 702 03da D1       		.byte	0xd1
 703 03db 1C060000 		.4byte	0x61c
 704 03df 40       		.byte	0x40
 705 03e0 0F       		.uleb128 0xf
 706 03e1 0F060000 		.4byte	.LASF63
 707 03e5 0B       		.byte	0xb
 708 03e6 D2       		.byte	0xd2
 709 03e7 2C060000 		.4byte	0x62c
 710 03eb 43       		.byte	0x43
 711 03ec 11       		.uleb128 0x11
 712 03ed 5F6C6200 		.ascii	"_lb\000"
 713 03f1 0B       		.byte	0xb
 714 03f2 D5       		.byte	0xd5
 715 03f3 EC020000 		.4byte	0x2ec
 716 03f7 44       		.byte	0x44
 717 03f8 0F       		.uleb128 0xf
 718 03f9 E8040000 		.4byte	.LASF64
 719 03fd 0B       		.byte	0xb
 720 03fe D8       		.byte	0xd8
 721 03ff 25000000 		.4byte	0x25
 722 0403 4C       		.byte	0x4c
 723 0404 0F       		.uleb128 0xf
 724 0405 9D010000 		.4byte	.LASF65
 725 0409 0B       		.byte	0xb
 726 040a D9       		.byte	0xd9
 727 040b CC000000 		.4byte	0xcc
 728 040f 50       		.byte	0x50
 729 0410 0F       		.uleb128 0xf
 730 0411 53020000 		.4byte	.LASF66
 731 0415 0B       		.byte	0xb
 732 0416 DC       		.byte	0xdc
 733 0417 5F040000 		.4byte	0x45f
 734 041b 54       		.byte	0x54
 735 041c 0F       		.uleb128 0xf
 736 041d 9E020000 		.4byte	.LASF67
 737 0421 0B       		.byte	0xb
 738 0422 E0       		.byte	0xe0
 739 0423 49010000 		.4byte	0x149
 740 0427 58       		.byte	0x58
 741 0428 0F       		.uleb128 0xf
 742 0429 5C040000 		.4byte	.LASF68
 743 042d 0B       		.byte	0xb
 744 042e E2       		.byte	0xe2
 745 042f 3E010000 		.4byte	0x13e
 746 0433 5C       		.byte	0x5c
 747 0434 0F       		.uleb128 0xf
 748 0435 30040000 		.4byte	.LASF69
 749 0439 0B       		.byte	0xb
 750 043a E3       		.byte	0xe3
ARM GAS  /tmp/ccHjfERe.s 			page 32


 751 043b 25000000 		.4byte	0x25
 752 043f 64       		.byte	0x64
 753 0440 00       		.byte	0
 754 0441 16       		.uleb128 0x16
 755 0442 25000000 		.4byte	0x25
 756 0446 5F040000 		.4byte	0x45f
 757 044a 17       		.uleb128 0x17
 758 044b 5F040000 		.4byte	0x45f
 759 044f 17       		.uleb128 0x17
 760 0450 A1000000 		.4byte	0xa1
 761 0454 17       		.uleb128 0x17
 762 0455 9C050000 		.4byte	0x59c
 763 0459 17       		.uleb128 0x17
 764 045a 25000000 		.4byte	0x25
 765 045e 00       		.byte	0
 766 045f 12       		.uleb128 0x12
 767 0460 04       		.byte	0x4
 768 0461 6A040000 		.4byte	0x46a
 769 0465 18       		.uleb128 0x18
 770 0466 5F040000 		.4byte	0x45f
 771 046a 19       		.uleb128 0x19
 772 046b 9E040000 		.4byte	.LASF70
 773 046f 2804     		.2byte	0x428
 774 0471 0B       		.byte	0xb
 775 0472 3802     		.2byte	0x238
 776 0474 9C050000 		.4byte	0x59c
 777 0478 1A       		.uleb128 0x1a
 778 0479 DC040000 		.4byte	.LASF71
 779 047d 0B       		.byte	0xb
 780 047e 3A02     		.2byte	0x23a
 781 0480 25000000 		.4byte	0x25
 782 0484 00       		.byte	0
 783 0485 1A       		.uleb128 0x1a
 784 0486 6F010000 		.4byte	.LASF72
 785 048a 0B       		.byte	0xb
 786 048b 3F02     		.2byte	0x23f
 787 048d 83060000 		.4byte	0x683
 788 0491 04       		.byte	0x4
 789 0492 1A       		.uleb128 0x1a
 790 0493 26020000 		.4byte	.LASF73
 791 0497 0B       		.byte	0xb
 792 0498 3F02     		.2byte	0x23f
 793 049a 83060000 		.4byte	0x683
 794 049e 08       		.byte	0x8
 795 049f 1A       		.uleb128 0x1a
 796 04a0 F4010000 		.4byte	.LASF74
 797 04a4 0B       		.byte	0xb
 798 04a5 3F02     		.2byte	0x23f
 799 04a7 83060000 		.4byte	0x683
 800 04ab 0C       		.byte	0xc
 801 04ac 1A       		.uleb128 0x1a
 802 04ad 72040000 		.4byte	.LASF75
 803 04b1 0B       		.byte	0xb
 804 04b2 4102     		.2byte	0x241
 805 04b4 25000000 		.4byte	0x25
 806 04b8 10       		.byte	0x10
 807 04b9 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccHjfERe.s 			page 33


 808 04ba 26000000 		.4byte	.LASF76
 809 04be 0B       		.byte	0xb
 810 04bf 4202     		.2byte	0x242
 811 04c1 65080000 		.4byte	0x865
 812 04c5 14       		.byte	0x14
 813 04c6 1A       		.uleb128 0x1a
 814 04c7 9E050000 		.4byte	.LASF77
 815 04cb 0B       		.byte	0xb
 816 04cc 4402     		.2byte	0x244
 817 04ce 25000000 		.4byte	0x25
 818 04d2 30       		.byte	0x30
 819 04d3 1A       		.uleb128 0x1a
 820 04d4 7C040000 		.4byte	.LASF78
 821 04d8 0B       		.byte	0xb
 822 04d9 4502     		.2byte	0x245
 823 04db D2050000 		.4byte	0x5d2
 824 04df 34       		.byte	0x34
 825 04e0 1A       		.uleb128 0x1a
 826 04e1 80030000 		.4byte	.LASF79
 827 04e5 0B       		.byte	0xb
 828 04e6 4702     		.2byte	0x247
 829 04e8 25000000 		.4byte	0x25
 830 04ec 38       		.byte	0x38
 831 04ed 1A       		.uleb128 0x1a
 832 04ee 8C040000 		.4byte	.LASF80
 833 04f2 0B       		.byte	0xb
 834 04f3 4902     		.2byte	0x249
 835 04f5 80080000 		.4byte	0x880
 836 04f9 3C       		.byte	0x3c
 837 04fa 1A       		.uleb128 0x1a
 838 04fb 84020000 		.4byte	.LASF81
 839 04ff 0B       		.byte	0xb
 840 0500 4C02     		.2byte	0x24c
 841 0502 B2010000 		.4byte	0x1b2
 842 0506 40       		.byte	0x40
 843 0507 1A       		.uleb128 0x1a
 844 0508 76010000 		.4byte	.LASF82
 845 050c 0B       		.byte	0xb
 846 050d 4D02     		.2byte	0x24d
 847 050f 25000000 		.4byte	0x25
 848 0513 44       		.byte	0x44
 849 0514 1A       		.uleb128 0x1a
 850 0515 53060000 		.4byte	.LASF83
 851 0519 0B       		.byte	0xb
 852 051a 4E02     		.2byte	0x24e
 853 051c B2010000 		.4byte	0x1b2
 854 0520 48       		.byte	0x48
 855 0521 1A       		.uleb128 0x1a
 856 0522 38040000 		.4byte	.LASF84
 857 0526 0B       		.byte	0xb
 858 0527 4F02     		.2byte	0x24f
 859 0529 86080000 		.4byte	0x886
 860 052d 4C       		.byte	0x4c
 861 052e 1A       		.uleb128 0x1a
 862 052f 2E020000 		.4byte	.LASF85
 863 0533 0B       		.byte	0xb
 864 0534 5202     		.2byte	0x252
ARM GAS  /tmp/ccHjfERe.s 			page 34


 865 0536 25000000 		.4byte	0x25
 866 053a 50       		.byte	0x50
 867 053b 1A       		.uleb128 0x1a
 868 053c 95010000 		.4byte	.LASF86
 869 0540 0B       		.byte	0xb
 870 0541 5302     		.2byte	0x253
 871 0543 9C050000 		.4byte	0x59c
 872 0547 54       		.byte	0x54
 873 0548 1A       		.uleb128 0x1a
 874 0549 99020000 		.4byte	.LASF87
 875 054d 0B       		.byte	0xb
 876 054e 7602     		.2byte	0x276
 877 0550 43080000 		.4byte	0x843
 878 0554 58       		.byte	0x58
 879 0555 1B       		.uleb128 0x1b
 880 0556 6E030000 		.4byte	.LASF47
 881 055a 0B       		.byte	0xb
 882 055b 7A02     		.2byte	0x27a
 883 055d CF020000 		.4byte	0x2cf
 884 0561 4801     		.2byte	0x148
 885 0563 1B       		.uleb128 0x1b
 886 0564 3E000000 		.4byte	.LASF88
 887 0568 0B       		.byte	0xb
 888 0569 7B02     		.2byte	0x27b
 889 056b 91020000 		.4byte	0x291
 890 056f 4C01     		.2byte	0x14c
 891 0571 1B       		.uleb128 0x1b
 892 0572 E4050000 		.4byte	.LASF89
 893 0576 0B       		.byte	0xb
 894 0577 7F02     		.2byte	0x27f
 895 0579 97080000 		.4byte	0x897
 896 057d DC02     		.2byte	0x2dc
 897 057f 1B       		.uleb128 0x1b
 898 0580 4F010000 		.4byte	.LASF90
 899 0584 0B       		.byte	0xb
 900 0585 8402     		.2byte	0x284
 901 0587 48060000 		.4byte	0x648
 902 058b E002     		.2byte	0x2e0
 903 058d 1B       		.uleb128 0x1b
 904 058e 34010000 		.4byte	.LASF91
 905 0592 0B       		.byte	0xb
 906 0593 8502     		.2byte	0x285
 907 0595 A3080000 		.4byte	0x8a3
 908 0599 EC02     		.2byte	0x2ec
 909 059b 00       		.byte	0
 910 059c 12       		.uleb128 0x12
 911 059d 04       		.byte	0x4
 912 059e A2050000 		.4byte	0x5a2
 913 05a2 03       		.uleb128 0x3
 914 05a3 01       		.byte	0x1
 915 05a4 08       		.byte	0x8
 916 05a5 E3040000 		.4byte	.LASF92
 917 05a9 18       		.uleb128 0x18
 918 05aa A2050000 		.4byte	0x5a2
 919 05ae 12       		.uleb128 0x12
 920 05af 04       		.byte	0x4
 921 05b0 41040000 		.4byte	0x441
ARM GAS  /tmp/ccHjfERe.s 			page 35


 922 05b4 16       		.uleb128 0x16
 923 05b5 25000000 		.4byte	0x25
 924 05b9 D2050000 		.4byte	0x5d2
 925 05bd 17       		.uleb128 0x17
 926 05be 5F040000 		.4byte	0x45f
 927 05c2 17       		.uleb128 0x17
 928 05c3 A1000000 		.4byte	0xa1
 929 05c7 17       		.uleb128 0x17
 930 05c8 D2050000 		.4byte	0x5d2
 931 05cc 17       		.uleb128 0x17
 932 05cd 25000000 		.4byte	0x25
 933 05d1 00       		.byte	0
 934 05d2 12       		.uleb128 0x12
 935 05d3 04       		.byte	0x4
 936 05d4 A9050000 		.4byte	0x5a9
 937 05d8 12       		.uleb128 0x12
 938 05d9 04       		.byte	0x4
 939 05da B4050000 		.4byte	0x5b4
 940 05de 16       		.uleb128 0x16
 941 05df D7000000 		.4byte	0xd7
 942 05e3 FC050000 		.4byte	0x5fc
 943 05e7 17       		.uleb128 0x17
 944 05e8 5F040000 		.4byte	0x45f
 945 05ec 17       		.uleb128 0x17
 946 05ed A1000000 		.4byte	0xa1
 947 05f1 17       		.uleb128 0x17
 948 05f2 D7000000 		.4byte	0xd7
 949 05f6 17       		.uleb128 0x17
 950 05f7 25000000 		.4byte	0x25
 951 05fb 00       		.byte	0
 952 05fc 12       		.uleb128 0x12
 953 05fd 04       		.byte	0x4
 954 05fe DE050000 		.4byte	0x5de
 955 0602 16       		.uleb128 0x16
 956 0603 25000000 		.4byte	0x25
 957 0607 16060000 		.4byte	0x616
 958 060b 17       		.uleb128 0x17
 959 060c 5F040000 		.4byte	0x45f
 960 0610 17       		.uleb128 0x17
 961 0611 A1000000 		.4byte	0xa1
 962 0615 00       		.byte	0
 963 0616 12       		.uleb128 0x12
 964 0617 04       		.byte	0x4
 965 0618 02060000 		.4byte	0x602
 966 061c 0C       		.uleb128 0xc
 967 061d 3A000000 		.4byte	0x3a
 968 0621 2C060000 		.4byte	0x62c
 969 0625 0D       		.uleb128 0xd
 970 0626 A3000000 		.4byte	0xa3
 971 062a 02       		.byte	0x2
 972 062b 00       		.byte	0
 973 062c 0C       		.uleb128 0xc
 974 062d 3A000000 		.4byte	0x3a
 975 0631 3C060000 		.4byte	0x63c
 976 0635 0D       		.uleb128 0xd
 977 0636 A3000000 		.4byte	0xa3
 978 063a 00       		.byte	0
ARM GAS  /tmp/ccHjfERe.s 			page 36


 979 063b 00       		.byte	0
 980 063c 09       		.uleb128 0x9
 981 063d 42040000 		.4byte	.LASF93
 982 0641 0B       		.byte	0xb
 983 0642 1D01     		.2byte	0x11d
 984 0644 17030000 		.4byte	0x317
 985 0648 1C       		.uleb128 0x1c
 986 0649 CB050000 		.4byte	.LASF94
 987 064d 0C       		.byte	0xc
 988 064e 0B       		.byte	0xb
 989 064f 2101     		.2byte	0x121
 990 0651 7D060000 		.4byte	0x67d
 991 0655 1A       		.uleb128 0x1a
 992 0656 0E050000 		.4byte	.LASF27
 993 065a 0B       		.byte	0xb
 994 065b 2301     		.2byte	0x123
 995 065d 7D060000 		.4byte	0x67d
 996 0661 00       		.byte	0
 997 0662 1A       		.uleb128 0x1a
 998 0663 59020000 		.4byte	.LASF95
 999 0667 0B       		.byte	0xb
 1000 0668 2401     		.2byte	0x124
 1001 066a 25000000 		.4byte	0x25
 1002 066e 04       		.byte	0x4
 1003 066f 1A       		.uleb128 0x1a
 1004 0670 0A040000 		.4byte	.LASF96
 1005 0674 0B       		.byte	0xb
 1006 0675 2501     		.2byte	0x125
 1007 0677 83060000 		.4byte	0x683
 1008 067b 08       		.byte	0x8
 1009 067c 00       		.byte	0
 1010 067d 12       		.uleb128 0x12
 1011 067e 04       		.byte	0x4
 1012 067f 48060000 		.4byte	0x648
 1013 0683 12       		.uleb128 0x12
 1014 0684 04       		.byte	0x4
 1015 0685 3C060000 		.4byte	0x63c
 1016 0689 1C       		.uleb128 0x1c
 1017 068a 1E000000 		.4byte	.LASF97
 1018 068e 0E       		.byte	0xe
 1019 068f 0B       		.byte	0xb
 1020 0690 3D01     		.2byte	0x13d
 1021 0692 BE060000 		.4byte	0x6be
 1022 0696 1A       		.uleb128 0x1a
 1023 0697 A5040000 		.4byte	.LASF98
 1024 069b 0B       		.byte	0xb
 1025 069c 3E01     		.2byte	0x13e
 1026 069e BE060000 		.4byte	0x6be
 1027 06a2 00       		.byte	0
 1028 06a3 1A       		.uleb128 0x1a
 1029 06a4 A4020000 		.4byte	.LASF99
 1030 06a8 0B       		.byte	0xb
 1031 06a9 3F01     		.2byte	0x13f
 1032 06ab BE060000 		.4byte	0x6be
 1033 06af 06       		.byte	0x6
 1034 06b0 1A       		.uleb128 0x1a
 1035 06b1 36020000 		.4byte	.LASF100
ARM GAS  /tmp/ccHjfERe.s 			page 37


 1036 06b5 0B       		.byte	0xb
 1037 06b6 4001     		.2byte	0x140
 1038 06b8 48000000 		.4byte	0x48
 1039 06bc 0C       		.byte	0xc
 1040 06bd 00       		.byte	0
 1041 06be 0C       		.uleb128 0xc
 1042 06bf 48000000 		.4byte	0x48
 1043 06c3 CE060000 		.4byte	0x6ce
 1044 06c7 0D       		.uleb128 0xd
 1045 06c8 A3000000 		.4byte	0xa3
 1046 06cc 02       		.byte	0x2
 1047 06cd 00       		.byte	0
 1048 06ce 1D       		.uleb128 0x1d
 1049 06cf D0       		.byte	0xd0
 1050 06d0 0B       		.byte	0xb
 1051 06d1 5702     		.2byte	0x257
 1052 06d3 CF070000 		.4byte	0x7cf
 1053 06d7 1A       		.uleb128 0x1a
 1054 06d8 B9050000 		.4byte	.LASF101
 1055 06dc 0B       		.byte	0xb
 1056 06dd 5902     		.2byte	0x259
 1057 06df 2C000000 		.4byte	0x2c
 1058 06e3 00       		.byte	0
 1059 06e4 1A       		.uleb128 0x1a
 1060 06e5 14050000 		.4byte	.LASF102
 1061 06e9 0B       		.byte	0xb
 1062 06ea 5A02     		.2byte	0x25a
 1063 06ec 9C050000 		.4byte	0x59c
 1064 06f0 04       		.byte	0x4
 1065 06f1 1A       		.uleb128 0x1a
 1066 06f2 77020000 		.4byte	.LASF103
 1067 06f6 0B       		.byte	0xb
 1068 06f7 5B02     		.2byte	0x25b
 1069 06f9 CF070000 		.4byte	0x7cf
 1070 06fd 08       		.byte	0x8
 1071 06fe 1A       		.uleb128 0x1a
 1072 06ff 28060000 		.4byte	.LASF104
 1073 0703 0B       		.byte	0xb
 1074 0704 5C02     		.2byte	0x25c
 1075 0706 C8010000 		.4byte	0x1c8
 1076 070a 24       		.byte	0x24
 1077 070b 1A       		.uleb128 0x1a
 1078 070c 8B030000 		.4byte	.LASF105
 1079 0710 0B       		.byte	0xb
 1080 0711 5D02     		.2byte	0x25d
 1081 0713 25000000 		.4byte	0x25
 1082 0717 48       		.byte	0x48
 1083 0718 1A       		.uleb128 0x1a
 1084 0719 60020000 		.4byte	.LASF106
 1085 071d 0B       		.byte	0xb
 1086 071e 5E02     		.2byte	0x25e
 1087 0720 7A000000 		.4byte	0x7a
 1088 0724 50       		.byte	0x50
 1089 0725 1A       		.uleb128 0x1a
 1090 0726 40060000 		.4byte	.LASF107
 1091 072a 0B       		.byte	0xb
 1092 072b 5F02     		.2byte	0x25f
ARM GAS  /tmp/ccHjfERe.s 			page 38


 1093 072d 89060000 		.4byte	0x689
 1094 0731 58       		.byte	0x58
 1095 0732 1A       		.uleb128 0x1a
 1096 0733 65040000 		.4byte	.LASF108
 1097 0737 0B       		.byte	0xb
 1098 0738 6002     		.2byte	0x260
 1099 073a 3E010000 		.4byte	0x13e
 1100 073e 68       		.byte	0x68
 1101 073f 1A       		.uleb128 0x1a
 1102 0740 45060000 		.4byte	.LASF109
 1103 0744 0B       		.byte	0xb
 1104 0745 6102     		.2byte	0x261
 1105 0747 3E010000 		.4byte	0x13e
 1106 074b 70       		.byte	0x70
 1107 074c 1A       		.uleb128 0x1a
 1108 074d DC000000 		.4byte	.LASF110
 1109 0751 0B       		.byte	0xb
 1110 0752 6202     		.2byte	0x262
 1111 0754 3E010000 		.4byte	0x13e
 1112 0758 78       		.byte	0x78
 1113 0759 1A       		.uleb128 0x1a
 1114 075a DA050000 		.4byte	.LASF111
 1115 075e 0B       		.byte	0xb
 1116 075f 6302     		.2byte	0x263
 1117 0761 DF070000 		.4byte	0x7df
 1118 0765 80       		.byte	0x80
 1119 0766 1A       		.uleb128 0x1a
 1120 0767 6B020000 		.4byte	.LASF112
 1121 076b 0B       		.byte	0xb
 1122 076c 6402     		.2byte	0x264
 1123 076e EF070000 		.4byte	0x7ef
 1124 0772 88       		.byte	0x88
 1125 0773 1A       		.uleb128 0x1a
 1126 0774 31000000 		.4byte	.LASF113
 1127 0778 0B       		.byte	0xb
 1128 0779 6502     		.2byte	0x265
 1129 077b 25000000 		.4byte	0x25
 1130 077f A0       		.byte	0xa0
 1131 0780 1A       		.uleb128 0x1a
 1132 0781 B6010000 		.4byte	.LASF114
 1133 0785 0B       		.byte	0xb
 1134 0786 6602     		.2byte	0x266
 1135 0788 3E010000 		.4byte	0x13e
 1136 078c A4       		.byte	0xa4
 1137 078d 1A       		.uleb128 0x1a
 1138 078e CD000000 		.4byte	.LASF115
 1139 0792 0B       		.byte	0xb
 1140 0793 6702     		.2byte	0x267
 1141 0795 3E010000 		.4byte	0x13e
 1142 0799 AC       		.byte	0xac
 1143 079a 1A       		.uleb128 0x1a
 1144 079b A5010000 		.4byte	.LASF116
 1145 079f 0B       		.byte	0xb
 1146 07a0 6802     		.2byte	0x268
 1147 07a2 3E010000 		.4byte	0x13e
 1148 07a6 B4       		.byte	0xb4
 1149 07a7 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccHjfERe.s 			page 39


 1150 07a8 47000000 		.4byte	.LASF117
 1151 07ac 0B       		.byte	0xb
 1152 07ad 6902     		.2byte	0x269
 1153 07af 3E010000 		.4byte	0x13e
 1154 07b3 BC       		.byte	0xbc
 1155 07b4 1A       		.uleb128 0x1a
 1156 07b5 56000000 		.4byte	.LASF118
 1157 07b9 0B       		.byte	0xb
 1158 07ba 6A02     		.2byte	0x26a
 1159 07bc 3E010000 		.4byte	0x13e
 1160 07c0 C4       		.byte	0xc4
 1161 07c1 1A       		.uleb128 0x1a
 1162 07c2 C1040000 		.4byte	.LASF119
 1163 07c6 0B       		.byte	0xb
 1164 07c7 6B02     		.2byte	0x26b
 1165 07c9 25000000 		.4byte	0x25
 1166 07cd CC       		.byte	0xcc
 1167 07ce 00       		.byte	0
 1168 07cf 0C       		.uleb128 0xc
 1169 07d0 A2050000 		.4byte	0x5a2
 1170 07d4 DF070000 		.4byte	0x7df
 1171 07d8 0D       		.uleb128 0xd
 1172 07d9 A3000000 		.4byte	0xa3
 1173 07dd 19       		.byte	0x19
 1174 07de 00       		.byte	0
 1175 07df 0C       		.uleb128 0xc
 1176 07e0 A2050000 		.4byte	0x5a2
 1177 07e4 EF070000 		.4byte	0x7ef
 1178 07e8 0D       		.uleb128 0xd
 1179 07e9 A3000000 		.4byte	0xa3
 1180 07ed 07       		.byte	0x7
 1181 07ee 00       		.byte	0
 1182 07ef 0C       		.uleb128 0xc
 1183 07f0 A2050000 		.4byte	0x5a2
 1184 07f4 FF070000 		.4byte	0x7ff
 1185 07f8 0D       		.uleb128 0xd
 1186 07f9 A3000000 		.4byte	0xa3
 1187 07fd 17       		.byte	0x17
 1188 07fe 00       		.byte	0
 1189 07ff 1D       		.uleb128 0x1d
 1190 0800 F0       		.byte	0xf0
 1191 0801 0B       		.byte	0xb
 1192 0802 7002     		.2byte	0x270
 1193 0804 23080000 		.4byte	0x823
 1194 0808 1A       		.uleb128 0x1a
 1195 0809 92020000 		.4byte	.LASF120
 1196 080d 0B       		.byte	0xb
 1197 080e 7302     		.2byte	0x273
 1198 0810 23080000 		.4byte	0x823
 1199 0814 00       		.byte	0
 1200 0815 1A       		.uleb128 0x1a
 1201 0816 D1050000 		.4byte	.LASF121
 1202 081a 0B       		.byte	0xb
 1203 081b 7402     		.2byte	0x274
 1204 081d 33080000 		.4byte	0x833
 1205 0821 78       		.byte	0x78
 1206 0822 00       		.byte	0
ARM GAS  /tmp/ccHjfERe.s 			page 40


 1207 0823 0C       		.uleb128 0xc
 1208 0824 11030000 		.4byte	0x311
 1209 0828 33080000 		.4byte	0x833
 1210 082c 0D       		.uleb128 0xd
 1211 082d A3000000 		.4byte	0xa3
 1212 0831 1D       		.byte	0x1d
 1213 0832 00       		.byte	0
 1214 0833 0C       		.uleb128 0xc
 1215 0834 2C000000 		.4byte	0x2c
 1216 0838 43080000 		.4byte	0x843
 1217 083c 0D       		.uleb128 0xd
 1218 083d A3000000 		.4byte	0xa3
 1219 0841 1D       		.byte	0x1d
 1220 0842 00       		.byte	0
 1221 0843 1E       		.uleb128 0x1e
 1222 0844 F0       		.byte	0xf0
 1223 0845 0B       		.byte	0xb
 1224 0846 5502     		.2byte	0x255
 1225 0848 65080000 		.4byte	0x865
 1226 084c 1F       		.uleb128 0x1f
 1227 084d 9E040000 		.4byte	.LASF70
 1228 0851 0B       		.byte	0xb
 1229 0852 6C02     		.2byte	0x26c
 1230 0854 CE060000 		.4byte	0x6ce
 1231 0858 1F       		.uleb128 0x1f
 1232 0859 15060000 		.4byte	.LASF122
 1233 085d 0B       		.byte	0xb
 1234 085e 7502     		.2byte	0x275
 1235 0860 FF070000 		.4byte	0x7ff
 1236 0864 00       		.byte	0
 1237 0865 0C       		.uleb128 0xc
 1238 0866 A2050000 		.4byte	0x5a2
 1239 086a 75080000 		.4byte	0x875
 1240 086e 0D       		.uleb128 0xd
 1241 086f A3000000 		.4byte	0xa3
 1242 0873 18       		.byte	0x18
 1243 0874 00       		.byte	0
 1244 0875 20       		.uleb128 0x20
 1245 0876 80080000 		.4byte	0x880
 1246 087a 17       		.uleb128 0x17
 1247 087b 5F040000 		.4byte	0x45f
 1248 087f 00       		.byte	0
 1249 0880 12       		.uleb128 0x12
 1250 0881 04       		.byte	0x4
 1251 0882 75080000 		.4byte	0x875
 1252 0886 12       		.uleb128 0x12
 1253 0887 04       		.byte	0x4
 1254 0888 B2010000 		.4byte	0x1b2
 1255 088c 20       		.uleb128 0x20
 1256 088d 97080000 		.4byte	0x897
 1257 0891 17       		.uleb128 0x17
 1258 0892 25000000 		.4byte	0x25
 1259 0896 00       		.byte	0
 1260 0897 12       		.uleb128 0x12
 1261 0898 04       		.byte	0x4
 1262 0899 9D080000 		.4byte	0x89d
 1263 089d 12       		.uleb128 0x12
ARM GAS  /tmp/ccHjfERe.s 			page 41


 1264 089e 04       		.byte	0x4
 1265 089f 8C080000 		.4byte	0x88c
 1266 08a3 0C       		.uleb128 0xc
 1267 08a4 3C060000 		.4byte	0x63c
 1268 08a8 B3080000 		.4byte	0x8b3
 1269 08ac 0D       		.uleb128 0xd
 1270 08ad A3000000 		.4byte	0xa3
 1271 08b1 02       		.byte	0x2
 1272 08b2 00       		.byte	0
 1273 08b3 07       		.uleb128 0x7
 1274 08b4 E8010000 		.4byte	.LASF123
 1275 08b8 0B       		.byte	0xb
 1276 08b9 FD02     		.2byte	0x2fd
 1277 08bb 5F040000 		.4byte	0x45f
 1278 08bf 07       		.uleb128 0x7
 1279 08c0 8B050000 		.4byte	.LASF124
 1280 08c4 0B       		.byte	0xb
 1281 08c5 FE02     		.2byte	0x2fe
 1282 08c7 65040000 		.4byte	0x465
 1283 08cb 08       		.uleb128 0x8
 1284 08cc 76030000 		.4byte	.LASF125
 1285 08d0 0C       		.byte	0xc
 1286 08d1 5F       		.byte	0x5f
 1287 08d2 9C050000 		.4byte	0x59c
 1288 08d6 03       		.uleb128 0x3
 1289 08d7 04       		.byte	0x4
 1290 08d8 04       		.byte	0x4
 1291 08d9 AE030000 		.4byte	.LASF126
 1292 08dd 03       		.uleb128 0x3
 1293 08de 08       		.byte	0x8
 1294 08df 04       		.byte	0x4
 1295 08e0 8E010000 		.4byte	.LASF127
 1296 08e4 03       		.uleb128 0x3
 1297 08e5 01       		.byte	0x1
 1298 08e6 02       		.byte	0x2
 1299 08e7 EE030000 		.4byte	.LASF128
 1300 08eb 05       		.uleb128 0x5
 1301 08ec E4080000 		.4byte	0x8e4
 1302 08f0 08       		.uleb128 0x8
 1303 08f1 B4030000 		.4byte	.LASF129
 1304 08f5 0D       		.byte	0xd
 1305 08f6 8F       		.byte	0x8f
 1306 08f7 EB080000 		.4byte	0x8eb
 1307 08fb 21       		.uleb128 0x21
 1308 08fc EE050000 		.4byte	.LASF130
 1309 0900 0D       		.byte	0xd
 1310 0901 94       		.byte	0x94
 1311 0902 9C000000 		.4byte	0x9c
 1312 0906 05       		.uleb128 0x5
 1313 0907 03       		.byte	0x3
 1314 0908 00000000 		.4byte	cpu_irq_critical_section_counter
 1315 090c 21       		.uleb128 0x21
 1316 090d 9A000000 		.4byte	.LASF131
 1317 0911 0D       		.byte	0xd
 1318 0912 95       		.byte	0x95
 1319 0913 EB080000 		.4byte	0x8eb
 1320 0917 05       		.uleb128 0x5
ARM GAS  /tmp/ccHjfERe.s 			page 42


 1321 0918 03       		.byte	0x3
 1322 0919 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1323 091d 22       		.uleb128 0x22
 1324 091e F0080000 		.4byte	0x8f0
 1325 0922 01       		.byte	0x1
 1326 0923 36       		.byte	0x36
 1327 0924 05       		.uleb128 0x5
 1328 0925 03       		.byte	0x3
 1329 0926 00000000 		.4byte	g_interrupt_enabled
 1330 092a 23       		.uleb128 0x23
 1331 092b 58060000 		.4byte	.LASF132
 1332 092f 01       		.byte	0x1
 1333 0930 49       		.byte	0x49
 1334 0931 00000000 		.4byte	.LFB143
 1335 0935 2C000000 		.4byte	.LFE143-.LFB143
 1336 0939 01       		.uleb128 0x1
 1337 093a 9C       		.byte	0x9c
 1338 093b 5E090000 		.4byte	0x95e
 1339 093f 24       		.uleb128 0x24
 1340 0940 E5090000 		.4byte	0x9e5
 1341 0944 18000000 		.4byte	.LBB18
 1342 0948 04000000 		.4byte	.LBE18-.LBB18
 1343 094c 01       		.byte	0x1
 1344 094d 53       		.byte	0x53
 1345 094e 24       		.uleb128 0x24
 1346 094f DC090000 		.4byte	0x9dc
 1347 0953 1C000000 		.4byte	.LBB20
 1348 0957 10000000 		.4byte	.LBE20-.LBB20
 1349 095b 01       		.byte	0x1
 1350 095c 53       		.byte	0x53
 1351 095d 00       		.byte	0
 1352 095e 23       		.uleb128 0x23
 1353 095f 74050000 		.4byte	.LASF133
 1354 0963 01       		.byte	0x1
 1355 0964 39       		.byte	0x39
 1356 0965 00000000 		.4byte	.LFB142
 1357 0969 44000000 		.4byte	.LFE142-.LFB142
 1358 096d 01       		.uleb128 0x1
 1359 096e 9C       		.byte	0x9c
 1360 096f B5090000 		.4byte	0x9b5
 1361 0973 25       		.uleb128 0x25
 1362 0974 B5090000 		.4byte	0x9b5
 1363 0978 06000000 		.4byte	.LBB12
 1364 097c 04000000 		.4byte	.LBE12-.LBB12
 1365 0980 01       		.byte	0x1
 1366 0981 3C       		.byte	0x3c
 1367 0982 96090000 		.4byte	0x996
 1368 0986 26       		.uleb128 0x26
 1369 0987 06000000 		.4byte	.LBB13
 1370 098b 04000000 		.4byte	.LBE13-.LBB13
 1371 098f 27       		.uleb128 0x27
 1372 0990 C6090000 		.4byte	0x9c6
 1373 0994 00       		.byte	0
 1374 0995 00       		.byte	0
 1375 0996 24       		.uleb128 0x24
 1376 0997 D3090000 		.4byte	0x9d3
 1377 099b 1A000000 		.4byte	.LBB14
ARM GAS  /tmp/ccHjfERe.s 			page 43


 1378 099f 02000000 		.4byte	.LBE14-.LBB14
 1379 09a3 01       		.byte	0x1
 1380 09a4 3D       		.byte	0x3d
 1381 09a5 24       		.uleb128 0x24
 1382 09a6 E5090000 		.4byte	0x9e5
 1383 09aa 1C000000 		.4byte	.LBB16
 1384 09ae 04000000 		.4byte	.LBE16-.LBB16
 1385 09b2 01       		.byte	0x1
 1386 09b3 3D       		.byte	0x3d
 1387 09b4 00       		.byte	0
 1388 09b5 28       		.uleb128 0x28
 1389 09b6 DA010000 		.4byte	.LASF140
 1390 09ba 02       		.byte	0x2
 1391 09bb D201     		.2byte	0x1d2
 1392 09bd 91000000 		.4byte	0x91
 1393 09c1 03       		.byte	0x3
 1394 09c2 D3090000 		.4byte	0x9d3
 1395 09c6 29       		.uleb128 0x29
 1396 09c7 6F060000 		.4byte	.LASF141
 1397 09cb 02       		.byte	0x2
 1398 09cc D401     		.2byte	0x1d4
 1399 09ce 91000000 		.4byte	0x91
 1400 09d2 00       		.byte	0
 1401 09d3 2A       		.uleb128 0x2a
 1402 09d4 C8030000 		.4byte	.LASF134
 1403 09d8 02       		.byte	0x2
 1404 09d9 4801     		.2byte	0x148
 1405 09db 03       		.byte	0x3
 1406 09dc 2A       		.uleb128 0x2a
 1407 09dd 9A030000 		.4byte	.LASF135
 1408 09e1 02       		.byte	0x2
 1409 09e2 3D01     		.2byte	0x13d
 1410 09e4 03       		.byte	0x3
 1411 09e5 2A       		.uleb128 0x2a
 1412 09e6 10040000 		.4byte	.LASF136
 1413 09ea 03       		.byte	0x3
 1414 09eb C601     		.2byte	0x1c6
 1415 09ed 03       		.byte	0x3
 1416 09ee 00       		.byte	0
 1417              		.section	.debug_abbrev,"",%progbits
 1418              	.Ldebug_abbrev0:
 1419 0000 01       		.uleb128 0x1
 1420 0001 11       		.uleb128 0x11
 1421 0002 01       		.byte	0x1
 1422 0003 25       		.uleb128 0x25
 1423 0004 0E       		.uleb128 0xe
 1424 0005 13       		.uleb128 0x13
 1425 0006 0B       		.uleb128 0xb
 1426 0007 03       		.uleb128 0x3
 1427 0008 0E       		.uleb128 0xe
 1428 0009 1B       		.uleb128 0x1b
 1429 000a 0E       		.uleb128 0xe
 1430 000b 55       		.uleb128 0x55
 1431 000c 17       		.uleb128 0x17
 1432 000d 11       		.uleb128 0x11
 1433 000e 01       		.uleb128 0x1
 1434 000f 10       		.uleb128 0x10
ARM GAS  /tmp/ccHjfERe.s 			page 44


 1435 0010 17       		.uleb128 0x17
 1436 0011 00       		.byte	0
 1437 0012 00       		.byte	0
 1438 0013 02       		.uleb128 0x2
 1439 0014 24       		.uleb128 0x24
 1440 0015 00       		.byte	0
 1441 0016 0B       		.uleb128 0xb
 1442 0017 0B       		.uleb128 0xb
 1443 0018 3E       		.uleb128 0x3e
 1444 0019 0B       		.uleb128 0xb
 1445 001a 03       		.uleb128 0x3
 1446 001b 08       		.uleb128 0x8
 1447 001c 00       		.byte	0
 1448 001d 00       		.byte	0
 1449 001e 03       		.uleb128 0x3
 1450 001f 24       		.uleb128 0x24
 1451 0020 00       		.byte	0
 1452 0021 0B       		.uleb128 0xb
 1453 0022 0B       		.uleb128 0xb
 1454 0023 3E       		.uleb128 0x3e
 1455 0024 0B       		.uleb128 0xb
 1456 0025 03       		.uleb128 0x3
 1457 0026 0E       		.uleb128 0xe
 1458 0027 00       		.byte	0
 1459 0028 00       		.byte	0
 1460 0029 04       		.uleb128 0x4
 1461 002a 16       		.uleb128 0x16
 1462 002b 00       		.byte	0
 1463 002c 03       		.uleb128 0x3
 1464 002d 0E       		.uleb128 0xe
 1465 002e 3A       		.uleb128 0x3a
 1466 002f 0B       		.uleb128 0xb
 1467 0030 3B       		.uleb128 0x3b
 1468 0031 0B       		.uleb128 0xb
 1469 0032 49       		.uleb128 0x49
 1470 0033 13       		.uleb128 0x13
 1471 0034 00       		.byte	0
 1472 0035 00       		.byte	0
 1473 0036 05       		.uleb128 0x5
 1474 0037 35       		.uleb128 0x35
 1475 0038 00       		.byte	0
 1476 0039 49       		.uleb128 0x49
 1477 003a 13       		.uleb128 0x13
 1478 003b 00       		.byte	0
 1479 003c 00       		.byte	0
 1480 003d 06       		.uleb128 0x6
 1481 003e 0F       		.uleb128 0xf
 1482 003f 00       		.byte	0
 1483 0040 0B       		.uleb128 0xb
 1484 0041 0B       		.uleb128 0xb
 1485 0042 00       		.byte	0
 1486 0043 00       		.byte	0
 1487 0044 07       		.uleb128 0x7
 1488 0045 34       		.uleb128 0x34
 1489 0046 00       		.byte	0
 1490 0047 03       		.uleb128 0x3
 1491 0048 0E       		.uleb128 0xe
ARM GAS  /tmp/ccHjfERe.s 			page 45


 1492 0049 3A       		.uleb128 0x3a
 1493 004a 0B       		.uleb128 0xb
 1494 004b 3B       		.uleb128 0x3b
 1495 004c 05       		.uleb128 0x5
 1496 004d 49       		.uleb128 0x49
 1497 004e 13       		.uleb128 0x13
 1498 004f 3F       		.uleb128 0x3f
 1499 0050 19       		.uleb128 0x19
 1500 0051 3C       		.uleb128 0x3c
 1501 0052 19       		.uleb128 0x19
 1502 0053 00       		.byte	0
 1503 0054 00       		.byte	0
 1504 0055 08       		.uleb128 0x8
 1505 0056 34       		.uleb128 0x34
 1506 0057 00       		.byte	0
 1507 0058 03       		.uleb128 0x3
 1508 0059 0E       		.uleb128 0xe
 1509 005a 3A       		.uleb128 0x3a
 1510 005b 0B       		.uleb128 0xb
 1511 005c 3B       		.uleb128 0x3b
 1512 005d 0B       		.uleb128 0xb
 1513 005e 49       		.uleb128 0x49
 1514 005f 13       		.uleb128 0x13
 1515 0060 3F       		.uleb128 0x3f
 1516 0061 19       		.uleb128 0x19
 1517 0062 3C       		.uleb128 0x3c
 1518 0063 19       		.uleb128 0x19
 1519 0064 00       		.byte	0
 1520 0065 00       		.byte	0
 1521 0066 09       		.uleb128 0x9
 1522 0067 16       		.uleb128 0x16
 1523 0068 00       		.byte	0
 1524 0069 03       		.uleb128 0x3
 1525 006a 0E       		.uleb128 0xe
 1526 006b 3A       		.uleb128 0x3a
 1527 006c 0B       		.uleb128 0xb
 1528 006d 3B       		.uleb128 0x3b
 1529 006e 05       		.uleb128 0x5
 1530 006f 49       		.uleb128 0x49
 1531 0070 13       		.uleb128 0x13
 1532 0071 00       		.byte	0
 1533 0072 00       		.byte	0
 1534 0073 0A       		.uleb128 0xa
 1535 0074 17       		.uleb128 0x17
 1536 0075 01       		.byte	0x1
 1537 0076 0B       		.uleb128 0xb
 1538 0077 0B       		.uleb128 0xb
 1539 0078 3A       		.uleb128 0x3a
 1540 0079 0B       		.uleb128 0xb
 1541 007a 3B       		.uleb128 0x3b
 1542 007b 0B       		.uleb128 0xb
 1543 007c 01       		.uleb128 0x1
 1544 007d 13       		.uleb128 0x13
 1545 007e 00       		.byte	0
 1546 007f 00       		.byte	0
 1547 0080 0B       		.uleb128 0xb
 1548 0081 0D       		.uleb128 0xd
ARM GAS  /tmp/ccHjfERe.s 			page 46


 1549 0082 00       		.byte	0
 1550 0083 03       		.uleb128 0x3
 1551 0084 0E       		.uleb128 0xe
 1552 0085 3A       		.uleb128 0x3a
 1553 0086 0B       		.uleb128 0xb
 1554 0087 3B       		.uleb128 0x3b
 1555 0088 0B       		.uleb128 0xb
 1556 0089 49       		.uleb128 0x49
 1557 008a 13       		.uleb128 0x13
 1558 008b 00       		.byte	0
 1559 008c 00       		.byte	0
 1560 008d 0C       		.uleb128 0xc
 1561 008e 01       		.uleb128 0x1
 1562 008f 01       		.byte	0x1
 1563 0090 49       		.uleb128 0x49
 1564 0091 13       		.uleb128 0x13
 1565 0092 01       		.uleb128 0x1
 1566 0093 13       		.uleb128 0x13
 1567 0094 00       		.byte	0
 1568 0095 00       		.byte	0
 1569 0096 0D       		.uleb128 0xd
 1570 0097 21       		.uleb128 0x21
 1571 0098 00       		.byte	0
 1572 0099 49       		.uleb128 0x49
 1573 009a 13       		.uleb128 0x13
 1574 009b 2F       		.uleb128 0x2f
 1575 009c 0B       		.uleb128 0xb
 1576 009d 00       		.byte	0
 1577 009e 00       		.byte	0
 1578 009f 0E       		.uleb128 0xe
 1579 00a0 13       		.uleb128 0x13
 1580 00a1 01       		.byte	0x1
 1581 00a2 0B       		.uleb128 0xb
 1582 00a3 0B       		.uleb128 0xb
 1583 00a4 3A       		.uleb128 0x3a
 1584 00a5 0B       		.uleb128 0xb
 1585 00a6 3B       		.uleb128 0x3b
 1586 00a7 0B       		.uleb128 0xb
 1587 00a8 01       		.uleb128 0x1
 1588 00a9 13       		.uleb128 0x13
 1589 00aa 00       		.byte	0
 1590 00ab 00       		.byte	0
 1591 00ac 0F       		.uleb128 0xf
 1592 00ad 0D       		.uleb128 0xd
 1593 00ae 00       		.byte	0
 1594 00af 03       		.uleb128 0x3
 1595 00b0 0E       		.uleb128 0xe
 1596 00b1 3A       		.uleb128 0x3a
 1597 00b2 0B       		.uleb128 0xb
 1598 00b3 3B       		.uleb128 0x3b
 1599 00b4 0B       		.uleb128 0xb
 1600 00b5 49       		.uleb128 0x49
 1601 00b6 13       		.uleb128 0x13
 1602 00b7 38       		.uleb128 0x38
 1603 00b8 0B       		.uleb128 0xb
 1604 00b9 00       		.byte	0
 1605 00ba 00       		.byte	0
ARM GAS  /tmp/ccHjfERe.s 			page 47


 1606 00bb 10       		.uleb128 0x10
 1607 00bc 13       		.uleb128 0x13
 1608 00bd 01       		.byte	0x1
 1609 00be 03       		.uleb128 0x3
 1610 00bf 0E       		.uleb128 0xe
 1611 00c0 0B       		.uleb128 0xb
 1612 00c1 0B       		.uleb128 0xb
 1613 00c2 3A       		.uleb128 0x3a
 1614 00c3 0B       		.uleb128 0xb
 1615 00c4 3B       		.uleb128 0x3b
 1616 00c5 0B       		.uleb128 0xb
 1617 00c6 01       		.uleb128 0x1
 1618 00c7 13       		.uleb128 0x13
 1619 00c8 00       		.byte	0
 1620 00c9 00       		.byte	0
 1621 00ca 11       		.uleb128 0x11
 1622 00cb 0D       		.uleb128 0xd
 1623 00cc 00       		.byte	0
 1624 00cd 03       		.uleb128 0x3
 1625 00ce 08       		.uleb128 0x8
 1626 00cf 3A       		.uleb128 0x3a
 1627 00d0 0B       		.uleb128 0xb
 1628 00d1 3B       		.uleb128 0x3b
 1629 00d2 0B       		.uleb128 0xb
 1630 00d3 49       		.uleb128 0x49
 1631 00d4 13       		.uleb128 0x13
 1632 00d5 38       		.uleb128 0x38
 1633 00d6 0B       		.uleb128 0xb
 1634 00d7 00       		.byte	0
 1635 00d8 00       		.byte	0
 1636 00d9 12       		.uleb128 0x12
 1637 00da 0F       		.uleb128 0xf
 1638 00db 00       		.byte	0
 1639 00dc 0B       		.uleb128 0xb
 1640 00dd 0B       		.uleb128 0xb
 1641 00de 49       		.uleb128 0x49
 1642 00df 13       		.uleb128 0x13
 1643 00e0 00       		.byte	0
 1644 00e1 00       		.byte	0
 1645 00e2 13       		.uleb128 0x13
 1646 00e3 13       		.uleb128 0x13
 1647 00e4 01       		.byte	0x1
 1648 00e5 03       		.uleb128 0x3
 1649 00e6 0E       		.uleb128 0xe
 1650 00e7 0B       		.uleb128 0xb
 1651 00e8 05       		.uleb128 0x5
 1652 00e9 3A       		.uleb128 0x3a
 1653 00ea 0B       		.uleb128 0xb
 1654 00eb 3B       		.uleb128 0x3b
 1655 00ec 0B       		.uleb128 0xb
 1656 00ed 01       		.uleb128 0x1
 1657 00ee 13       		.uleb128 0x13
 1658 00ef 00       		.byte	0
 1659 00f0 00       		.byte	0
 1660 00f1 14       		.uleb128 0x14
 1661 00f2 0D       		.uleb128 0xd
 1662 00f3 00       		.byte	0
ARM GAS  /tmp/ccHjfERe.s 			page 48


 1663 00f4 03       		.uleb128 0x3
 1664 00f5 0E       		.uleb128 0xe
 1665 00f6 3A       		.uleb128 0x3a
 1666 00f7 0B       		.uleb128 0xb
 1667 00f8 3B       		.uleb128 0x3b
 1668 00f9 0B       		.uleb128 0xb
 1669 00fa 49       		.uleb128 0x49
 1670 00fb 13       		.uleb128 0x13
 1671 00fc 38       		.uleb128 0x38
 1672 00fd 05       		.uleb128 0x5
 1673 00fe 00       		.byte	0
 1674 00ff 00       		.byte	0
 1675 0100 15       		.uleb128 0x15
 1676 0101 15       		.uleb128 0x15
 1677 0102 00       		.byte	0
 1678 0103 27       		.uleb128 0x27
 1679 0104 19       		.uleb128 0x19
 1680 0105 00       		.byte	0
 1681 0106 00       		.byte	0
 1682 0107 16       		.uleb128 0x16
 1683 0108 15       		.uleb128 0x15
 1684 0109 01       		.byte	0x1
 1685 010a 27       		.uleb128 0x27
 1686 010b 19       		.uleb128 0x19
 1687 010c 49       		.uleb128 0x49
 1688 010d 13       		.uleb128 0x13
 1689 010e 01       		.uleb128 0x1
 1690 010f 13       		.uleb128 0x13
 1691 0110 00       		.byte	0
 1692 0111 00       		.byte	0
 1693 0112 17       		.uleb128 0x17
 1694 0113 05       		.uleb128 0x5
 1695 0114 00       		.byte	0
 1696 0115 49       		.uleb128 0x49
 1697 0116 13       		.uleb128 0x13
 1698 0117 00       		.byte	0
 1699 0118 00       		.byte	0
 1700 0119 18       		.uleb128 0x18
 1701 011a 26       		.uleb128 0x26
 1702 011b 00       		.byte	0
 1703 011c 49       		.uleb128 0x49
 1704 011d 13       		.uleb128 0x13
 1705 011e 00       		.byte	0
 1706 011f 00       		.byte	0
 1707 0120 19       		.uleb128 0x19
 1708 0121 13       		.uleb128 0x13
 1709 0122 01       		.byte	0x1
 1710 0123 03       		.uleb128 0x3
 1711 0124 0E       		.uleb128 0xe
 1712 0125 0B       		.uleb128 0xb
 1713 0126 05       		.uleb128 0x5
 1714 0127 3A       		.uleb128 0x3a
 1715 0128 0B       		.uleb128 0xb
 1716 0129 3B       		.uleb128 0x3b
 1717 012a 05       		.uleb128 0x5
 1718 012b 01       		.uleb128 0x1
 1719 012c 13       		.uleb128 0x13
ARM GAS  /tmp/ccHjfERe.s 			page 49


 1720 012d 00       		.byte	0
 1721 012e 00       		.byte	0
 1722 012f 1A       		.uleb128 0x1a
 1723 0130 0D       		.uleb128 0xd
 1724 0131 00       		.byte	0
 1725 0132 03       		.uleb128 0x3
 1726 0133 0E       		.uleb128 0xe
 1727 0134 3A       		.uleb128 0x3a
 1728 0135 0B       		.uleb128 0xb
 1729 0136 3B       		.uleb128 0x3b
 1730 0137 05       		.uleb128 0x5
 1731 0138 49       		.uleb128 0x49
 1732 0139 13       		.uleb128 0x13
 1733 013a 38       		.uleb128 0x38
 1734 013b 0B       		.uleb128 0xb
 1735 013c 00       		.byte	0
 1736 013d 00       		.byte	0
 1737 013e 1B       		.uleb128 0x1b
 1738 013f 0D       		.uleb128 0xd
 1739 0140 00       		.byte	0
 1740 0141 03       		.uleb128 0x3
 1741 0142 0E       		.uleb128 0xe
 1742 0143 3A       		.uleb128 0x3a
 1743 0144 0B       		.uleb128 0xb
 1744 0145 3B       		.uleb128 0x3b
 1745 0146 05       		.uleb128 0x5
 1746 0147 49       		.uleb128 0x49
 1747 0148 13       		.uleb128 0x13
 1748 0149 38       		.uleb128 0x38
 1749 014a 05       		.uleb128 0x5
 1750 014b 00       		.byte	0
 1751 014c 00       		.byte	0
 1752 014d 1C       		.uleb128 0x1c
 1753 014e 13       		.uleb128 0x13
 1754 014f 01       		.byte	0x1
 1755 0150 03       		.uleb128 0x3
 1756 0151 0E       		.uleb128 0xe
 1757 0152 0B       		.uleb128 0xb
 1758 0153 0B       		.uleb128 0xb
 1759 0154 3A       		.uleb128 0x3a
 1760 0155 0B       		.uleb128 0xb
 1761 0156 3B       		.uleb128 0x3b
 1762 0157 05       		.uleb128 0x5
 1763 0158 01       		.uleb128 0x1
 1764 0159 13       		.uleb128 0x13
 1765 015a 00       		.byte	0
 1766 015b 00       		.byte	0
 1767 015c 1D       		.uleb128 0x1d
 1768 015d 13       		.uleb128 0x13
 1769 015e 01       		.byte	0x1
 1770 015f 0B       		.uleb128 0xb
 1771 0160 0B       		.uleb128 0xb
 1772 0161 3A       		.uleb128 0x3a
 1773 0162 0B       		.uleb128 0xb
 1774 0163 3B       		.uleb128 0x3b
 1775 0164 05       		.uleb128 0x5
 1776 0165 01       		.uleb128 0x1
ARM GAS  /tmp/ccHjfERe.s 			page 50


 1777 0166 13       		.uleb128 0x13
 1778 0167 00       		.byte	0
 1779 0168 00       		.byte	0
 1780 0169 1E       		.uleb128 0x1e
 1781 016a 17       		.uleb128 0x17
 1782 016b 01       		.byte	0x1
 1783 016c 0B       		.uleb128 0xb
 1784 016d 0B       		.uleb128 0xb
 1785 016e 3A       		.uleb128 0x3a
 1786 016f 0B       		.uleb128 0xb
 1787 0170 3B       		.uleb128 0x3b
 1788 0171 05       		.uleb128 0x5
 1789 0172 01       		.uleb128 0x1
 1790 0173 13       		.uleb128 0x13
 1791 0174 00       		.byte	0
 1792 0175 00       		.byte	0
 1793 0176 1F       		.uleb128 0x1f
 1794 0177 0D       		.uleb128 0xd
 1795 0178 00       		.byte	0
 1796 0179 03       		.uleb128 0x3
 1797 017a 0E       		.uleb128 0xe
 1798 017b 3A       		.uleb128 0x3a
 1799 017c 0B       		.uleb128 0xb
 1800 017d 3B       		.uleb128 0x3b
 1801 017e 05       		.uleb128 0x5
 1802 017f 49       		.uleb128 0x49
 1803 0180 13       		.uleb128 0x13
 1804 0181 00       		.byte	0
 1805 0182 00       		.byte	0
 1806 0183 20       		.uleb128 0x20
 1807 0184 15       		.uleb128 0x15
 1808 0185 01       		.byte	0x1
 1809 0186 27       		.uleb128 0x27
 1810 0187 19       		.uleb128 0x19
 1811 0188 01       		.uleb128 0x1
 1812 0189 13       		.uleb128 0x13
 1813 018a 00       		.byte	0
 1814 018b 00       		.byte	0
 1815 018c 21       		.uleb128 0x21
 1816 018d 34       		.uleb128 0x34
 1817 018e 00       		.byte	0
 1818 018f 03       		.uleb128 0x3
 1819 0190 0E       		.uleb128 0xe
 1820 0191 3A       		.uleb128 0x3a
 1821 0192 0B       		.uleb128 0xb
 1822 0193 3B       		.uleb128 0x3b
 1823 0194 0B       		.uleb128 0xb
 1824 0195 49       		.uleb128 0x49
 1825 0196 13       		.uleb128 0x13
 1826 0197 02       		.uleb128 0x2
 1827 0198 18       		.uleb128 0x18
 1828 0199 00       		.byte	0
 1829 019a 00       		.byte	0
 1830 019b 22       		.uleb128 0x22
 1831 019c 34       		.uleb128 0x34
 1832 019d 00       		.byte	0
 1833 019e 47       		.uleb128 0x47
ARM GAS  /tmp/ccHjfERe.s 			page 51


 1834 019f 13       		.uleb128 0x13
 1835 01a0 3A       		.uleb128 0x3a
 1836 01a1 0B       		.uleb128 0xb
 1837 01a2 3B       		.uleb128 0x3b
 1838 01a3 0B       		.uleb128 0xb
 1839 01a4 02       		.uleb128 0x2
 1840 01a5 18       		.uleb128 0x18
 1841 01a6 00       		.byte	0
 1842 01a7 00       		.byte	0
 1843 01a8 23       		.uleb128 0x23
 1844 01a9 2E       		.uleb128 0x2e
 1845 01aa 01       		.byte	0x1
 1846 01ab 3F       		.uleb128 0x3f
 1847 01ac 19       		.uleb128 0x19
 1848 01ad 03       		.uleb128 0x3
 1849 01ae 0E       		.uleb128 0xe
 1850 01af 3A       		.uleb128 0x3a
 1851 01b0 0B       		.uleb128 0xb
 1852 01b1 3B       		.uleb128 0x3b
 1853 01b2 0B       		.uleb128 0xb
 1854 01b3 27       		.uleb128 0x27
 1855 01b4 19       		.uleb128 0x19
 1856 01b5 11       		.uleb128 0x11
 1857 01b6 01       		.uleb128 0x1
 1858 01b7 12       		.uleb128 0x12
 1859 01b8 06       		.uleb128 0x6
 1860 01b9 40       		.uleb128 0x40
 1861 01ba 18       		.uleb128 0x18
 1862 01bb 9742     		.uleb128 0x2117
 1863 01bd 19       		.uleb128 0x19
 1864 01be 01       		.uleb128 0x1
 1865 01bf 13       		.uleb128 0x13
 1866 01c0 00       		.byte	0
 1867 01c1 00       		.byte	0
 1868 01c2 24       		.uleb128 0x24
 1869 01c3 1D       		.uleb128 0x1d
 1870 01c4 00       		.byte	0
 1871 01c5 31       		.uleb128 0x31
 1872 01c6 13       		.uleb128 0x13
 1873 01c7 11       		.uleb128 0x11
 1874 01c8 01       		.uleb128 0x1
 1875 01c9 12       		.uleb128 0x12
 1876 01ca 06       		.uleb128 0x6
 1877 01cb 58       		.uleb128 0x58
 1878 01cc 0B       		.uleb128 0xb
 1879 01cd 59       		.uleb128 0x59
 1880 01ce 0B       		.uleb128 0xb
 1881 01cf 00       		.byte	0
 1882 01d0 00       		.byte	0
 1883 01d1 25       		.uleb128 0x25
 1884 01d2 1D       		.uleb128 0x1d
 1885 01d3 01       		.byte	0x1
 1886 01d4 31       		.uleb128 0x31
 1887 01d5 13       		.uleb128 0x13
 1888 01d6 11       		.uleb128 0x11
 1889 01d7 01       		.uleb128 0x1
 1890 01d8 12       		.uleb128 0x12
ARM GAS  /tmp/ccHjfERe.s 			page 52


 1891 01d9 06       		.uleb128 0x6
 1892 01da 58       		.uleb128 0x58
 1893 01db 0B       		.uleb128 0xb
 1894 01dc 59       		.uleb128 0x59
 1895 01dd 0B       		.uleb128 0xb
 1896 01de 01       		.uleb128 0x1
 1897 01df 13       		.uleb128 0x13
 1898 01e0 00       		.byte	0
 1899 01e1 00       		.byte	0
 1900 01e2 26       		.uleb128 0x26
 1901 01e3 0B       		.uleb128 0xb
 1902 01e4 01       		.byte	0x1
 1903 01e5 11       		.uleb128 0x11
 1904 01e6 01       		.uleb128 0x1
 1905 01e7 12       		.uleb128 0x12
 1906 01e8 06       		.uleb128 0x6
 1907 01e9 00       		.byte	0
 1908 01ea 00       		.byte	0
 1909 01eb 27       		.uleb128 0x27
 1910 01ec 34       		.uleb128 0x34
 1911 01ed 00       		.byte	0
 1912 01ee 31       		.uleb128 0x31
 1913 01ef 13       		.uleb128 0x13
 1914 01f0 00       		.byte	0
 1915 01f1 00       		.byte	0
 1916 01f2 28       		.uleb128 0x28
 1917 01f3 2E       		.uleb128 0x2e
 1918 01f4 01       		.byte	0x1
 1919 01f5 03       		.uleb128 0x3
 1920 01f6 0E       		.uleb128 0xe
 1921 01f7 3A       		.uleb128 0x3a
 1922 01f8 0B       		.uleb128 0xb
 1923 01f9 3B       		.uleb128 0x3b
 1924 01fa 05       		.uleb128 0x5
 1925 01fb 27       		.uleb128 0x27
 1926 01fc 19       		.uleb128 0x19
 1927 01fd 49       		.uleb128 0x49
 1928 01fe 13       		.uleb128 0x13
 1929 01ff 20       		.uleb128 0x20
 1930 0200 0B       		.uleb128 0xb
 1931 0201 01       		.uleb128 0x1
 1932 0202 13       		.uleb128 0x13
 1933 0203 00       		.byte	0
 1934 0204 00       		.byte	0
 1935 0205 29       		.uleb128 0x29
 1936 0206 34       		.uleb128 0x34
 1937 0207 00       		.byte	0
 1938 0208 03       		.uleb128 0x3
 1939 0209 0E       		.uleb128 0xe
 1940 020a 3A       		.uleb128 0x3a
 1941 020b 0B       		.uleb128 0xb
 1942 020c 3B       		.uleb128 0x3b
 1943 020d 05       		.uleb128 0x5
 1944 020e 49       		.uleb128 0x49
 1945 020f 13       		.uleb128 0x13
 1946 0210 00       		.byte	0
 1947 0211 00       		.byte	0
ARM GAS  /tmp/ccHjfERe.s 			page 53


 1948 0212 2A       		.uleb128 0x2a
 1949 0213 2E       		.uleb128 0x2e
 1950 0214 00       		.byte	0
 1951 0215 03       		.uleb128 0x3
 1952 0216 0E       		.uleb128 0xe
 1953 0217 3A       		.uleb128 0x3a
 1954 0218 0B       		.uleb128 0xb
 1955 0219 3B       		.uleb128 0x3b
 1956 021a 05       		.uleb128 0x5
 1957 021b 27       		.uleb128 0x27
 1958 021c 19       		.uleb128 0x19
 1959 021d 20       		.uleb128 0x20
 1960 021e 0B       		.uleb128 0xb
 1961 021f 00       		.byte	0
 1962 0220 00       		.byte	0
 1963 0221 00       		.byte	0
 1964              		.section	.debug_aranges,"",%progbits
 1965 0000 24000000 		.4byte	0x24
 1966 0004 0200     		.2byte	0x2
 1967 0006 00000000 		.4byte	.Ldebug_info0
 1968 000a 04       		.byte	0x4
 1969 000b 00       		.byte	0
 1970 000c 0000     		.2byte	0
 1971 000e 0000     		.2byte	0
 1972 0010 00000000 		.4byte	.LFB142
 1973 0014 44000000 		.4byte	.LFE142-.LFB142
 1974 0018 00000000 		.4byte	.LFB143
 1975 001c 2C000000 		.4byte	.LFE143-.LFB143
 1976 0020 00000000 		.4byte	0
 1977 0024 00000000 		.4byte	0
 1978              		.section	.debug_ranges,"",%progbits
 1979              	.Ldebug_ranges0:
 1980 0000 00000000 		.4byte	.LFB142
 1981 0004 44000000 		.4byte	.LFE142
 1982 0008 00000000 		.4byte	.LFB143
 1983 000c 2C000000 		.4byte	.LFE143
 1984 0010 00000000 		.4byte	0
 1985 0014 00000000 		.4byte	0
 1986              		.section	.debug_line,"",%progbits
 1987              	.Ldebug_line0:
 1988 0000 53020000 		.section	.debug_str,"MS",%progbits,1
 1988      0200ED01 
 1988      00000201 
 1988      FB0E0D00 
 1988      01010101 
 1989              	.LASF44:
 1990 0000 5F64736F 		.ascii	"_dso_handle\000"
 1990      5F68616E 
 1990      646C6500 
 1991              	.LASF3:
 1992 000c 73686F72 		.ascii	"short int\000"
 1992      7420696E 
 1992      7400
 1993              	.LASF43:
 1994 0016 5F666E61 		.ascii	"_fnargs\000"
 1994      72677300 
 1995              	.LASF97:
ARM GAS  /tmp/ccHjfERe.s 			page 54


 1996 001e 5F72616E 		.ascii	"_rand48\000"
 1996      64343800 
 1997              	.LASF76:
 1998 0026 5F656D65 		.ascii	"_emergency\000"
 1998      7267656E 
 1998      637900
 1999              	.LASF113:
 2000 0031 5F676574 		.ascii	"_getdate_err\000"
 2000      64617465 
 2000      5F657272 
 2000      00
 2001              	.LASF88:
 2002 003e 5F617465 		.ascii	"_atexit0\000"
 2002      78697430 
 2002      00
 2003              	.LASF117:
 2004 0047 5F776372 		.ascii	"_wcrtomb_state\000"
 2004      746F6D62 
 2004      5F737461 
 2004      746500
 2005              	.LASF118:
 2006 0056 5F776373 		.ascii	"_wcsrtombs_state\000"
 2006      72746F6D 
 2006      62735F73 
 2006      74617465 
 2006      00
 2007              	.LASF138:
 2008 0067 2E2E2F61 		.ascii	"../asf/common/utils/interrupt/interrupt_sam_nvic.c\000"
 2008      73662F63 
 2008      6F6D6D6F 
 2008      6E2F7574 
 2008      696C732F 
 2009              	.LASF131:
 2010 009a 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 2010      6972715F 
 2010      70726576 
 2010      5F696E74 
 2010      65727275 
 2011              	.LASF56:
 2012 00b7 5F6C6266 		.ascii	"_lbfsize\000"
 2012      73697A65 
 2012      00
 2013              	.LASF14:
 2014 00c0 49544D5F 		.ascii	"ITM_RxBuffer\000"
 2014      52784275 
 2014      66666572 
 2014      00
 2015              	.LASF115:
 2016 00cd 5F6D6272 		.ascii	"_mbrtowc_state\000"
 2016      746F7763 
 2016      5F737461 
 2016      746500
 2017              	.LASF110:
 2018 00dc 5F776374 		.ascii	"_wctomb_state\000"
 2018      6F6D625F 
 2018      73746174 
 2018      6500
ARM GAS  /tmp/ccHjfERe.s 			page 55


 2019              	.LASF33:
 2020 00ea 5F5F746D 		.ascii	"__tm_sec\000"
 2020      5F736563 
 2020      00
 2021              	.LASF17:
 2022 00f3 5F6F6666 		.ascii	"_off_t\000"
 2022      5F7400
 2023              	.LASF61:
 2024 00fa 5F636C6F 		.ascii	"_close\000"
 2024      736500
 2025              	.LASF1:
 2026 0101 7369676E 		.ascii	"signed char\000"
 2026      65642063 
 2026      68617200 
 2027              	.LASF62:
 2028 010d 5F756275 		.ascii	"_ubuf\000"
 2028      6600
 2029              	.LASF10:
 2030 0113 6C6F6E67 		.ascii	"long long unsigned int\000"
 2030      206C6F6E 
 2030      6720756E 
 2030      7369676E 
 2030      65642069 
 2031              	.LASF35:
 2032 012a 5F5F746D 		.ascii	"__tm_hour\000"
 2032      5F686F75 
 2032      7200
 2033              	.LASF91:
 2034 0134 5F5F7366 		.ascii	"__sf\000"
 2034      00
 2035              	.LASF42:
 2036 0139 5F6F6E5F 		.ascii	"_on_exit_args\000"
 2036      65786974 
 2036      5F617267 
 2036      7300
 2037              	.LASF57:
 2038 0147 5F636F6F 		.ascii	"_cookie\000"
 2038      6B696500 
 2039              	.LASF90:
 2040 014f 5F5F7367 		.ascii	"__sglue\000"
 2040      6C756500 
 2041              	.LASF5:
 2042 0157 6C6F6E67 		.ascii	"long int\000"
 2042      20696E74 
 2042      00
 2043              	.LASF54:
 2044 0160 5F666C61 		.ascii	"_flags\000"
 2044      677300
 2045              	.LASF46:
 2046 0167 5F69735F 		.ascii	"_is_cxa\000"
 2046      63786100 
 2047              	.LASF72:
 2048 016f 5F737464 		.ascii	"_stdin\000"
 2048      696E00
 2049              	.LASF82:
 2050 0176 5F726573 		.ascii	"_result_k\000"
 2050      756C745F 
ARM GAS  /tmp/ccHjfERe.s 			page 56


 2050      6B00
 2051              	.LASF9:
 2052 0180 6C6F6E67 		.ascii	"long long int\000"
 2052      206C6F6E 
 2052      6720696E 
 2052      7400
 2053              	.LASF127:
 2054 018e 646F7562 		.ascii	"double\000"
 2054      6C6500
 2055              	.LASF86:
 2056 0195 5F637674 		.ascii	"_cvtbuf\000"
 2056      62756600 
 2057              	.LASF65:
 2058 019d 5F6F6666 		.ascii	"_offset\000"
 2058      73657400 
 2059              	.LASF116:
 2060 01a5 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 2060      72746F77 
 2060      63735F73 
 2060      74617465 
 2060      00
 2061              	.LASF114:
 2062 01b6 5F6D6272 		.ascii	"_mbrlen_state\000"
 2062      6C656E5F 
 2062      73746174 
 2062      6500
 2063              	.LASF49:
 2064 01c4 5F666E73 		.ascii	"_fns\000"
 2064      00
 2065              	.LASF7:
 2066 01c9 5F5F7569 		.ascii	"__uint32_t\000"
 2066      6E743332 
 2066      5F7400
 2067              	.LASF29:
 2068 01d4 5F736967 		.ascii	"_sign\000"
 2068      6E00
 2069              	.LASF140:
 2070 01da 5F5F6765 		.ascii	"__get_PRIMASK\000"
 2070      745F5052 
 2070      494D4153 
 2070      4B00
 2071              	.LASF123:
 2072 01e8 5F696D70 		.ascii	"_impure_ptr\000"
 2072      7572655F 
 2072      70747200 
 2073              	.LASF74:
 2074 01f4 5F737464 		.ascii	"_stderr\000"
 2074      65727200 
 2075              	.LASF31:
 2076 01fc 5F426967 		.ascii	"_Bigint\000"
 2076      696E7400 
 2077              	.LASF58:
 2078 0204 5F726561 		.ascii	"_read\000"
 2078      6400
 2079              	.LASF32:
 2080 020a 5F5F746D 		.ascii	"__tm\000"
 2080      00
ARM GAS  /tmp/ccHjfERe.s 			page 57


 2081              	.LASF21:
 2082 020f 5F5F7763 		.ascii	"__wchb\000"
 2082      686200
 2083              	.LASF15:
 2084 0216 53797374 		.ascii	"SystemCoreClock\000"
 2084      656D436F 
 2084      7265436C 
 2084      6F636B00 
 2085              	.LASF73:
 2086 0226 5F737464 		.ascii	"_stdout\000"
 2086      6F757400 
 2087              	.LASF85:
 2088 022e 5F637674 		.ascii	"_cvtlen\000"
 2088      6C656E00 
 2089              	.LASF100:
 2090 0236 5F616464 		.ascii	"_add\000"
 2090      00
 2091              	.LASF8:
 2092 023b 6C6F6E67 		.ascii	"long unsigned int\000"
 2092      20756E73 
 2092      69676E65 
 2092      6420696E 
 2092      7400
 2093              	.LASF55:
 2094 024d 5F66696C 		.ascii	"_file\000"
 2094      6500
 2095              	.LASF66:
 2096 0253 5F646174 		.ascii	"_data\000"
 2096      6100
 2097              	.LASF95:
 2098 0259 5F6E696F 		.ascii	"_niobs\000"
 2098      627300
 2099              	.LASF106:
 2100 0260 5F72616E 		.ascii	"_rand_next\000"
 2100      645F6E65 
 2100      787400
 2101              	.LASF112:
 2102 026b 5F736967 		.ascii	"_signal_buf\000"
 2102      6E616C5F 
 2102      62756600 
 2103              	.LASF103:
 2104 0277 5F617363 		.ascii	"_asctime_buf\000"
 2104      74696D65 
 2104      5F627566 
 2104      00
 2105              	.LASF81:
 2106 0284 5F726573 		.ascii	"_result\000"
 2106      756C7400 
 2107              	.LASF20:
 2108 028c 5F5F7763 		.ascii	"__wch\000"
 2108      6800
 2109              	.LASF120:
 2110 0292 5F6E6578 		.ascii	"_nextf\000"
 2110      746600
 2111              	.LASF87:
 2112 0299 5F6E6577 		.ascii	"_new\000"
 2112      00
ARM GAS  /tmp/ccHjfERe.s 			page 58


 2113              	.LASF67:
 2114 029e 5F6C6F63 		.ascii	"_lock\000"
 2114      6B00
 2115              	.LASF99:
 2116 02a4 5F6D756C 		.ascii	"_mult\000"
 2116      7400
 2117              	.LASF59:
 2118 02aa 5F777269 		.ascii	"_write\000"
 2118      746500
 2119              	.LASF38:
 2120 02b1 5F5F746D 		.ascii	"__tm_year\000"
 2120      5F796561 
 2120      7200
 2121              	.LASF13:
 2122 02bb 73697A65 		.ascii	"sizetype\000"
 2122      74797065 
 2122      00
 2123              	.LASF137:
 2124 02c4 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 2124      43393920 
 2124      362E332E 
 2124      31203230 
 2124      31373036 
 2125 02f7 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 2125      76352D64 
 2125      3136202D 
 2125      6D666C6F 
 2125      61742D61 
 2126 032a 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 2126      6E2D7365 
 2126      6374696F 
 2126      6E73202D 
 2126      66646174 
 2127 035d 6F6E7374 		.ascii	"onstant\000"
 2127      616E7400 
 2128              	.LASF37:
 2129 0365 5F5F746D 		.ascii	"__tm_mon\000"
 2129      5F6D6F6E 
 2129      00
 2130              	.LASF47:
 2131 036e 5F617465 		.ascii	"_atexit\000"
 2131      78697400 
 2132              	.LASF125:
 2133 0376 7375626F 		.ascii	"suboptarg\000"
 2133      70746172 
 2133      6700
 2134              	.LASF79:
 2135 0380 5F5F7364 		.ascii	"__sdidinit\000"
 2135      6964696E 
 2135      697400
 2136              	.LASF105:
 2137 038b 5F67616D 		.ascii	"_gamma_signgam\000"
 2137      6D615F73 
 2137      69676E67 
 2137      616D00
 2138              	.LASF135:
 2139 039a 5F5F656E 		.ascii	"__enable_irq\000"
ARM GAS  /tmp/ccHjfERe.s 			page 59


 2139      61626C65 
 2139      5F697271 
 2139      00
 2140              	.LASF19:
 2141 03a7 77696E74 		.ascii	"wint_t\000"
 2141      5F7400
 2142              	.LASF126:
 2143 03ae 666C6F61 		.ascii	"float\000"
 2143      7400
 2144              	.LASF129:
 2145 03b4 675F696E 		.ascii	"g_interrupt_enabled\000"
 2145      74657272 
 2145      7570745F 
 2145      656E6162 
 2145      6C656400 
 2146              	.LASF134:
 2147 03c8 5F5F6469 		.ascii	"__disable_irq\000"
 2147      7361626C 
 2147      655F6972 
 2147      7100
 2148              	.LASF16:
 2149 03d6 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 2149      4B5F5245 
 2149      43555253 
 2149      4956455F 
 2149      5400
 2150              	.LASF51:
 2151 03e8 5F626173 		.ascii	"_base\000"
 2151      6500
 2152              	.LASF128:
 2153 03ee 5F426F6F 		.ascii	"_Bool\000"
 2153      6C00
 2154              	.LASF11:
 2155 03f4 696E7433 		.ascii	"int32_t\000"
 2155      325F7400 
 2156              	.LASF2:
 2157 03fc 756E7369 		.ascii	"unsigned char\000"
 2157      676E6564 
 2157      20636861 
 2157      7200
 2158              	.LASF96:
 2159 040a 5F696F62 		.ascii	"_iobs\000"
 2159      7300
 2160              	.LASF136:
 2161 0410 5F5F444D 		.ascii	"__DMB\000"
 2161      4200
 2162              	.LASF25:
 2163 0416 5F666C6F 		.ascii	"_flock_t\000"
 2163      636B5F74 
 2163      00
 2164              	.LASF40:
 2165 041f 5F5F746D 		.ascii	"__tm_yday\000"
 2165      5F796461 
 2165      7900
 2166              	.LASF50:
 2167 0429 5F5F7362 		.ascii	"__sbuf\000"
 2167      756600
ARM GAS  /tmp/ccHjfERe.s 			page 60


 2168              	.LASF69:
 2169 0430 5F666C61 		.ascii	"_flags2\000"
 2169      67733200 
 2170              	.LASF84:
 2171 0438 5F667265 		.ascii	"_freelist\000"
 2171      656C6973 
 2171      7400
 2172              	.LASF93:
 2173 0442 5F5F4649 		.ascii	"__FILE\000"
 2173      4C4500
 2174              	.LASF24:
 2175 0449 5F6D6273 		.ascii	"_mbstate_t\000"
 2175      74617465 
 2175      5F7400
 2176              	.LASF53:
 2177 0454 5F5F7346 		.ascii	"__sFILE\000"
 2177      494C4500 
 2178              	.LASF68:
 2179 045c 5F6D6273 		.ascii	"_mbstate\000"
 2179      74617465 
 2179      00
 2180              	.LASF108:
 2181 0465 5F6D626C 		.ascii	"_mblen_state\000"
 2181      656E5F73 
 2181      74617465 
 2181      00
 2182              	.LASF75:
 2183 0472 5F696E63 		.ascii	"_inc\000"
 2183      00
 2184              	.LASF48:
 2185 0477 5F696E64 		.ascii	"_ind\000"
 2185      00
 2186              	.LASF78:
 2187 047c 5F637572 		.ascii	"_current_locale\000"
 2187      72656E74 
 2187      5F6C6F63 
 2187      616C6500 
 2188              	.LASF80:
 2189 048c 5F5F636C 		.ascii	"__cleanup\000"
 2189      65616E75 
 2189      7000
 2190              	.LASF28:
 2191 0496 5F6D6178 		.ascii	"_maxwds\000"
 2191      77647300 
 2192              	.LASF70:
 2193 049e 5F726565 		.ascii	"_reent\000"
 2193      6E7400
 2194              	.LASF98:
 2195 04a5 5F736565 		.ascii	"_seed\000"
 2195      6400
 2196              	.LASF22:
 2197 04ab 5F5F636F 		.ascii	"__count\000"
 2197      756E7400 
 2198              	.LASF23:
 2199 04b3 5F5F7661 		.ascii	"__value\000"
 2199      6C756500 
 2200              	.LASF60:
ARM GAS  /tmp/ccHjfERe.s 			page 61


 2201 04bb 5F736565 		.ascii	"_seek\000"
 2201      6B00
 2202              	.LASF119:
 2203 04c1 5F685F65 		.ascii	"_h_errno\000"
 2203      72726E6F 
 2203      00
 2204              	.LASF39:
 2205 04ca 5F5F746D 		.ascii	"__tm_wday\000"
 2205      5F776461 
 2205      7900
 2206              	.LASF18:
 2207 04d4 5F66706F 		.ascii	"_fpos_t\000"
 2207      735F7400 
 2208              	.LASF71:
 2209 04dc 5F657272 		.ascii	"_errno\000"
 2209      6E6F00
 2210              	.LASF92:
 2211 04e3 63686172 		.ascii	"char\000"
 2211      00
 2212              	.LASF64:
 2213 04e8 5F626C6B 		.ascii	"_blksize\000"
 2213      73697A65 
 2213      00
 2214              	.LASF52:
 2215 04f1 5F73697A 		.ascii	"_size\000"
 2215      6500
 2216              	.LASF0:
 2217 04f7 756E7369 		.ascii	"unsigned int\000"
 2217      676E6564 
 2217      20696E74 
 2217      00
 2218              	.LASF6:
 2219 0504 5F5F696E 		.ascii	"__int32_t\000"
 2219      7433325F 
 2219      7400
 2220              	.LASF27:
 2221 050e 5F6E6578 		.ascii	"_next\000"
 2221      7400
 2222              	.LASF102:
 2223 0514 5F737472 		.ascii	"_strtok_last\000"
 2223      746F6B5F 
 2223      6C617374 
 2223      00
 2224              	.LASF45:
 2225 0521 5F666E74 		.ascii	"_fntypes\000"
 2225      79706573 
 2225      00
 2226              	.LASF4:
 2227 052a 73686F72 		.ascii	"short unsigned int\000"
 2227      7420756E 
 2227      7369676E 
 2227      65642069 
 2227      6E7400
 2228              	.LASF139:
 2229 053d 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 2229      652F746F 
 2229      72626A6F 
ARM GAS  /tmp/ccHjfERe.s 			page 62


 2229      726E2F65 
 2229      636C6970 
 2230              	.LASF26:
 2231 056c 5F5F554C 		.ascii	"__ULong\000"
 2231      6F6E6700 
 2232              	.LASF133:
 2233 0574 6370755F 		.ascii	"cpu_irq_enter_critical\000"
 2233      6972715F 
 2233      656E7465 
 2233      725F6372 
 2233      69746963 
 2234              	.LASF124:
 2235 058b 5F676C6F 		.ascii	"_global_impure_ptr\000"
 2235      62616C5F 
 2235      696D7075 
 2235      72655F70 
 2235      747200
 2236              	.LASF77:
 2237 059e 5F637572 		.ascii	"_current_category\000"
 2237      72656E74 
 2237      5F636174 
 2237      65676F72 
 2237      7900
 2238              	.LASF12:
 2239 05b0 75696E74 		.ascii	"uint32_t\000"
 2239      33325F74 
 2239      00
 2240              	.LASF101:
 2241 05b9 5F756E75 		.ascii	"_unused_rand\000"
 2241      7365645F 
 2241      72616E64 
 2241      00
 2242              	.LASF30:
 2243 05c6 5F776473 		.ascii	"_wds\000"
 2243      00
 2244              	.LASF94:
 2245 05cb 5F676C75 		.ascii	"_glue\000"
 2245      6500
 2246              	.LASF121:
 2247 05d1 5F6E6D61 		.ascii	"_nmalloc\000"
 2247      6C6C6F63 
 2247      00
 2248              	.LASF111:
 2249 05da 5F6C3634 		.ascii	"_l64a_buf\000"
 2249      615F6275 
 2249      6600
 2250              	.LASF89:
 2251 05e4 5F736967 		.ascii	"_sig_func\000"
 2251      5F66756E 
 2251      6300
 2252              	.LASF130:
 2253 05ee 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 2253      6972715F 
 2253      63726974 
 2253      6963616C 
 2253      5F736563 
 2254              	.LASF63:
ARM GAS  /tmp/ccHjfERe.s 			page 63


 2255 060f 5F6E6275 		.ascii	"_nbuf\000"
 2255      6600
 2256              	.LASF122:
 2257 0615 5F756E75 		.ascii	"_unused\000"
 2257      73656400 
 2258              	.LASF41:
 2259 061d 5F5F746D 		.ascii	"__tm_isdst\000"
 2259      5F697364 
 2259      737400
 2260              	.LASF104:
 2261 0628 5F6C6F63 		.ascii	"_localtime_buf\000"
 2261      616C7469 
 2261      6D655F62 
 2261      756600
 2262              	.LASF34:
 2263 0637 5F5F746D 		.ascii	"__tm_min\000"
 2263      5F6D696E 
 2263      00
 2264              	.LASF107:
 2265 0640 5F723438 		.ascii	"_r48\000"
 2265      00
 2266              	.LASF109:
 2267 0645 5F6D6274 		.ascii	"_mbtowc_state\000"
 2267      6F77635F 
 2267      73746174 
 2267      6500
 2268              	.LASF83:
 2269 0653 5F703573 		.ascii	"_p5s\000"
 2269      00
 2270              	.LASF132:
 2271 0658 6370755F 		.ascii	"cpu_irq_leave_critical\000"
 2271      6972715F 
 2271      6C656176 
 2271      655F6372 
 2271      69746963 
 2272              	.LASF141:
 2273 066f 72657375 		.ascii	"result\000"
 2273      6C7400
 2274              	.LASF36:
 2275 0676 5F5F746D 		.ascii	"__tm_mday\000"
 2275      5F6D6461 
 2275      7900
 2276              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
