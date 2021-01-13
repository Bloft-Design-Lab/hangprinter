ARM GAS  /tmp/cc8RfTnf.s 			page 1


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
  12              		.file	"RTCDue.cpp"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text._ZN6RTCDue4InitEv,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	_ZN6RTCDue4InitEv
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	_ZN6RTCDue4InitEv, %function
  25              	_ZN6RTCDue4InitEv:
  26              	.LFB151:
  27              		.file 1 "../libraries/RTCDue/RTCDue.cpp"
   1:../libraries/RTCDue/RTCDue.cpp **** /* Small library to control the built-in RTC on the SAM3X and SAM4E
   2:../libraries/RTCDue/RTCDue.cpp ****  *
   3:../libraries/RTCDue/RTCDue.cpp ****  * written by Christian Hammacher, 2016
   4:../libraries/RTCDue/RTCDue.cpp ****  */
   5:../libraries/RTCDue/RTCDue.cpp **** 
   6:../libraries/RTCDue/RTCDue.cpp **** #include "RTCDue.h"
   7:../libraries/RTCDue/RTCDue.cpp **** #include "sam/drivers/rtc/rtc.h"
   8:../libraries/RTCDue/RTCDue.cpp **** #include <cstring>
   9:../libraries/RTCDue/RTCDue.cpp **** 
  10:../libraries/RTCDue/RTCDue.cpp **** void RTCDue::Init()
  11:../libraries/RTCDue/RTCDue.cpp **** {
  28              		.loc 1 11 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32 0000 10B5     		push	{r4, lr}
  33              		.cfi_def_cfa_offset 8
  34              		.cfi_offset 4, -8
  35              		.cfi_offset 14, -4
  12:../libraries/RTCDue/RTCDue.cpp **** 	rtc_set_hour_mode(RTC, 0);		// set RTC to 24-hour mode
  36              		.loc 1 12 0
  37 0002 074C     		ldr	r4, .L3
  38 0004 0021     		movs	r1, #0
  39 0006 2046     		mov	r0, r4
  40 0008 FFF7FEFF 		bl	rtc_set_hour_mode
  41              	.LVL0:
  42              	.LBB6:
  43              	.LBB7:
  44              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /**************************************************************************//**
ARM GAS  /tmp/cc8RfTnf.s 			page 2


   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @file     core_cm7.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @brief    CMSIS Cortex-M7 Core Peripheral Access Layer Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @date     01. September 2014
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @note
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Copyright (c) 2009 - 2014 ARM LIMITED
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    All rights reserved.
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    Redistribution and use in source and binary forms, with or without
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    modification, are permitted provided that the following conditions are met:
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Redistributions of source code must retain the above copyright
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      notice, this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Redistributions in binary form must reproduce the above copyright
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      notice, this list of conditions and the following disclaimer in the
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      documentation and/or other materials provided with the distribution.
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    *
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    POSSIBILITY OF SUCH DAMAGE.
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ---------------------------------------------------------------------------*/
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined ( __ICCARM__ )
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  #pragma system_include  /* treat file as system include file for MISRA check */
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CORE_CM7_H_GENERIC
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORE_CM7_H_GENERIC
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  extern "C" {
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \page CMSIS_MISRA_Exceptions  MISRA-C:2004 Compliance Exceptions
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   CMSIS violates the following MISRA-C:2004 rules:
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Required Rule 8.5, object/function definition in header file.<br>
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Function definitions in header files are used to allow 'inlining'.
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Unions are used for effective representation of core registers.
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Advisory Rule 19.7, Function-like macro defined.<br>
ARM GAS  /tmp/cc8RfTnf.s 			page 3


  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Function-like macros are used to allow more efficient code.
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                 CMSIS definitions
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup Cortex_M7
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*  CMSIS CM7 definitions */
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION_MAIN  (0x04)                                   /*!< [31:16] CMSIS HAL m
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION_SUB   (0x00)                                   /*!< [15:0]  CMSIS HAL s
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION       ((__CM7_CMSIS_VERSION_MAIN << 16) | \
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                                     __CM7_CMSIS_VERSION_SUB          )     /*!< CMSIS HAL version n
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORTEX_M                (0x07)                                   /*!< Cortex-M Core      
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if   defined ( __CC_ARM )
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static __inline
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __GNUC__ )
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for GNU Comp
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for GNU C
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __ICCARM__ )
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for IAR Comp
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for IAR C
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TMS470__ )
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for TI CCS C
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TASKING__ )
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for TASKING 
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for TASKI
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __CSMC__ )
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __packed
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            _asm                                      /*!< asm keyword for COSMIC Co
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                    /*use -pc99 on compile line !<
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** __FPU_USED indicates whether an FPU is used or not.
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     For this, __FPU_PRESENT has to be checked prior to making use of FPU specific registers and fun
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined ( __CC_ARM )
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __TARGET_FPU_VFP
ARM GAS  /tmp/cc8RfTnf.s 			page 4


 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __GNUC__ )
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined (__VFP_FP__) && !defined(__SOFTFP__)
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __ICCARM__ )
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __ARMVFP__
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TMS470__ )
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __TI_VFP_SUPPORT__
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TASKING__ )
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __FPU_VFP__
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
ARM GAS  /tmp/cc8RfTnf.s 			page 5


 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __CSMC__ )		/* Cosmic */
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if ( __CSMC__ & 0x400)		// FPU present for parser
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <stdint.h>                      /* standard types definitions                      */
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmInstr.h>                /* Core Instruction Access                         */
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmFunc.h>                 /* Core Function Access                            */
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmSimd.h>                 /* Compiler specific SIMD Intrinsics               */
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif /* __CORE_CM7_H_GENERIC */
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CMSIS_GENERIC
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CORE_CM7_H_DEPENDANT
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORE_CM7_H_DEPENDANT
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  extern "C" {
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* check device defines and use defaults */
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined __CHECK_DEVICE_DEFINES
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __CM7_REV
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __CM7_REV               0x0000
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__CM7_REV not defined in device header file; using default!"
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __FPU_PRESENT
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_PRESENT             0
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__FPU_PRESENT not defined in device header file; using default!"
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __MPU_PRESENT
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __MPU_PRESENT             0
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__MPU_PRESENT not defined in device header file; using default!"
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __ICACHE_PRESENT
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __ICACHE_PRESENT          0
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__ICACHE_PRESENT not defined in device header file; using default!"
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __DCACHE_PRESENT
ARM GAS  /tmp/cc8RfTnf.s 			page 6


 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __DCACHE_PRESENT          0
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__DCACHE_PRESENT not defined in device header file; using default!"
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __DTCM_PRESENT
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __DTCM_PRESENT            0
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__DTCM_PRESENT        not defined in device header file; using default!"
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __NVIC_PRIO_BITS
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __NVIC_PRIO_BITS          3
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__NVIC_PRIO_BITS not defined in device header file; using default!"
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __Vendor_SysTickConfig
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __Vendor_SysTickConfig    0
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__Vendor_SysTickConfig not defined in device header file; using default!"
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* IO definitions (access restrictions to peripheral registers) */
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /**
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_glob_defs CMSIS Global Defines
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     <strong>IO Type Qualifiers</strong> are used
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \li to specify the access to peripheral variables.
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \li for automatic generation of peripheral register debug information.
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define   __I     volatile             /*!< Defines 'read only' permissions                 */
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define   __I     volatile const       /*!< Defines 'read only' permissions                 */
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define     __O     volatile             /*!< Defines 'write only' permissions                */
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define     __IO    volatile             /*!< Defines 'read / write' permissions              */
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group Cortex_M7 */
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                 Register Abstraction
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Core Register contain:
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Register
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core NVIC Register
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SCB Register
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SysTick Register
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Debug Register
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core MPU Register
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core FPU Register
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \defgroup CMSIS_core_register Defines and Type Definitions
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief Type definitions and defines for Cortex-M processor based devices.
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_CORE  Status and Control Registers
ARM GAS  /tmp/cc8RfTnf.s 			page 7


 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief  Core Register type definitions.
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Application Program Status Register (APSR).
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__CORTEX_M != 0x07)
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:27;              /*!< bit:  0..26  Reserved                           */
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:16;              /*!< bit:  0..15  Reserved                           */
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags        */
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved1:7;               /*!< bit: 20..26  Reserved                           */
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } APSR_Type;
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Interrupt Program Status Register (IPSR).
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:23;              /*!< bit:  9..31  Reserved                           */
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } IPSR_Type;
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Special-Purpose Program Status Registers (xPSR).
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__CORTEX_M != 0x07)
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:15;              /*!< bit:  9..23  Reserved                           */
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:7;               /*!< bit:  9..15  Reserved                           */
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags        */
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved1:4;               /*!< bit: 20..23  Reserved                           */
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t T:1;                        /*!< bit:     24  Thumb bit        (read 0)          */
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t IT:2;                       /*!< bit: 25..26  saved IT state   (read 0)          */
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
ARM GAS  /tmp/cc8RfTnf.s 			page 8


 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } xPSR_Type;
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Control Registers (CONTROL).
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t nPRIV:1;                    /*!< bit:      0  Execution privilege in Thread mode */
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t SPSEL:1;                    /*!< bit:      1  Stack to be used                   */
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t FPCA:1;                     /*!< bit:      2  FP extension active flag           */
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:29;              /*!< bit:  3..31  Reserved                           */
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } CONTROL_Type;
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_CORE */
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_NVIC  Nested Vectored Interrupt Controller (NVIC)
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the NVIC Registers
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ISER[8];                 /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register   
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[24];
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICER[8];                 /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register 
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RSERVED1[24];
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ISPR[8];                 /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register  
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[24];
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICPR[8];                 /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[24];
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t IABR[8];                 /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register   
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[56];
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint8_t  IP[240];                 /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bi
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[644];
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t STIR;                    /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Regis
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }  NVIC_Type;
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Software Triggered Interrupt Register Definitions */
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_STIR_INTID_Pos                 0                                          /*!< STIR: I
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_STIR_INTID_Msk                (0x1FFUL << NVIC_STIR_INTID_Pos)            /*!< STIR: I
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_NVIC */
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 9


 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SCB     System Control Block (SCB)
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Control Block Registers
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Control Block (SCB).
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CPUID;                   /*!< Offset: 0x000 (R/ )  CPUID Base Register             
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICSR;                    /*!< Offset: 0x004 (R/W)  Interrupt Control and State Regi
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t VTOR;                    /*!< Offset: 0x008 (R/W)  Vector Table Offset Register    
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AIRCR;                   /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset 
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SCR;                     /*!< Offset: 0x010 (R/W)  System Control Register         
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CCR;                     /*!< Offset: 0x014 (R/W)  Configuration Control Register  
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint8_t  SHPR[12];                /*!< Offset: 0x018 (R/W)  System Handlers Priority Registe
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SHCSR;                   /*!< Offset: 0x024 (R/W)  System Handler Control and State
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CFSR;                    /*!< Offset: 0x028 (R/W)  Configurable Fault Status Regist
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t HFSR;                    /*!< Offset: 0x02C (R/W)  HardFault Status Register       
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DFSR;                    /*!< Offset: 0x030 (R/W)  Debug Fault Status Register     
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MMFAR;                   /*!< Offset: 0x034 (R/W)  MemManage Fault Address Register
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t BFAR;                    /*!< Offset: 0x038 (R/W)  BusFault Address Register       
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AFSR;                    /*!< Offset: 0x03C (R/W)  Auxiliary Fault Status Register 
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_PFR[2];               /*!< Offset: 0x040 (R/ )  Processor Feature Register      
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_DFR;                  /*!< Offset: 0x048 (R/ )  Debug Feature Register          
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_AFR;                  /*!< Offset: 0x04C (R/ )  Auxiliary Feature Register      
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_MFR[4];               /*!< Offset: 0x050 (R/ )  Memory Model Feature Register   
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_ISAR[5];              /*!< Offset: 0x060 (R/ )  Instruction Set Attributes Regis
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CLIDR;                   /*!< Offset: 0x078 (R/ )  Cache Level ID register         
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CTR;                     /*!< Offset: 0x07C (R/ )  Cache Type register             
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CCSIDR;                  /*!< Offset: 0x080 (R/ )  Cache Size ID Register          
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CSSELR;                  /*!< Offset: 0x084 (R/W)  Cache Size Selection Register   
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CPACR;                   /*!< Offset: 0x088 (R/W)  Coprocessor Access Control Regis
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[93];
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t STIR;                    /*!< Offset: 0x200 ( /W)  Software Triggered Interrupt Reg
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[15];
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR0;                   /*!< Offset: 0x240 (R/ )  Media and VFP Feature Register 0
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR1;                   /*!< Offset: 0x244 (R/ )  Media and VFP Feature Register 1
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR2;                   /*!< Offset: 0x248 (R/ )  Media and VFP Feature Register 1
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[1];
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t ICIALLU;                 /*!< Offset: 0x250 ( /W)  I-Cache Invalidate All to PoU   
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED6[1];
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t ICIMVAU;                 /*!< Offset: 0x258 ( /W)  I-Cache Invalidate by MVA to PoU
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCIMVAU;                 /*!< Offset: 0x25C ( /W)  D-Cache Invalidate by MVA to PoC
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCISW;                   /*!< Offset: 0x260 ( /W)  D-Cache Invalidate by Set-way   
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCMVAU;                 /*!< Offset: 0x264 ( /W)  D-Cache Clean by MVA to PoU     
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCMVAC;                 /*!< Offset: 0x268 ( /W)  D-Cache Clean by MVA to PoC     
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCSW;                   /*!< Offset: 0x26C ( /W)  D-Cache Clean by Set-way        
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCIMVAC;                /*!< Offset: 0x270 ( /W)  D-Cache Clean and Invalidate by 
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCISW;                  /*!< Offset: 0x274 ( /W)  D-Cache Clean and Invalidate by 
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED7[6];
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ITCMCR;                  /*!< Offset: 0x290 (R/W)  Instruction Tightly-Coupled Memo
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DTCMCR;                  /*!< Offset: 0x294 (R/W)  Data Tightly-Coupled Memory Cont
 457:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AHBPCR;                  /*!< Offset: 0x298 (R/W)  AHBP Control Register           
ARM GAS  /tmp/cc8RfTnf.s 			page 10


 458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CACR;                    /*!< Offset: 0x29C (R/W)  L1 Cache Control Register       
 459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AHBSCR;                  /*!< Offset: 0x2A0 (R/W)  AHB Slave Control Register      
 460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED8[1];
 461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ABFSR;                   /*!< Offset: 0x2A8 (R/W)  Auxiliary Bus Fault Status Regis
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SCB_Type;
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB CPUID Register Definitions */
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_IMPLEMENTER_Pos          24                                             /*!< SCB 
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_IMPLEMENTER_Msk          (0xFFUL << SCB_CPUID_IMPLEMENTER_Pos)          /*!< SCB 
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_VARIANT_Pos              20                                             /*!< SCB 
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_VARIANT_Msk              (0xFUL << SCB_CPUID_VARIANT_Pos)               /*!< SCB 
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 471:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_ARCHITECTURE_Pos         16                                             /*!< SCB 
 472:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_ARCHITECTURE_Msk         (0xFUL << SCB_CPUID_ARCHITECTURE_Pos)          /*!< SCB 
 473:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 474:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_PARTNO_Pos                4                                             /*!< SCB 
 475:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_PARTNO_Msk               (0xFFFUL << SCB_CPUID_PARTNO_Pos)              /*!< SCB 
 476:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 477:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_REVISION_Pos              0                                             /*!< SCB 
 478:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_REVISION_Msk             (0xFUL << SCB_CPUID_REVISION_Pos)              /*!< SCB 
 479:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 480:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Interrupt Control State Register Definitions */
 481:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_NMIPENDSET_Pos            31                                             /*!< SCB 
 482:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_NMIPENDSET_Msk            (1UL << SCB_ICSR_NMIPENDSET_Pos)               /*!< SCB 
 483:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 484:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVSET_Pos             28                                             /*!< SCB 
 485:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVSET_Msk             (1UL << SCB_ICSR_PENDSVSET_Pos)                /*!< SCB 
 486:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 487:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVCLR_Pos             27                                             /*!< SCB 
 488:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVCLR_Msk             (1UL << SCB_ICSR_PENDSVCLR_Pos)                /*!< SCB 
 489:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 490:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTSET_Pos             26                                             /*!< SCB 
 491:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTSET_Msk             (1UL << SCB_ICSR_PENDSTSET_Pos)                /*!< SCB 
 492:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 493:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTCLR_Pos             25                                             /*!< SCB 
 494:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTCLR_Msk             (1UL << SCB_ICSR_PENDSTCLR_Pos)                /*!< SCB 
 495:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 496:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPREEMPT_Pos            23                                             /*!< SCB 
 497:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPREEMPT_Msk            (1UL << SCB_ICSR_ISRPREEMPT_Pos)               /*!< SCB 
 498:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 499:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPENDING_Pos            22                                             /*!< SCB 
 500:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPENDING_Msk            (1UL << SCB_ICSR_ISRPENDING_Pos)               /*!< SCB 
 501:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 502:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTPENDING_Pos           12                                             /*!< SCB 
 503:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTPENDING_Msk           (0x1FFUL << SCB_ICSR_VECTPENDING_Pos)          /*!< SCB 
 504:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 505:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_RETTOBASE_Pos             11                                             /*!< SCB 
 506:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_RETTOBASE_Msk             (1UL << SCB_ICSR_RETTOBASE_Pos)                /*!< SCB 
 507:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 508:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTACTIVE_Pos             0                                             /*!< SCB 
 509:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTACTIVE_Msk            (0x1FFUL << SCB_ICSR_VECTACTIVE_Pos)           /*!< SCB 
 510:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 511:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Vector Table Offset Register Definitions */
 512:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_VTOR_TBLOFF_Pos                 7                                             /*!< SCB 
 513:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_VTOR_TBLOFF_Msk                (0x1FFFFFFUL << SCB_VTOR_TBLOFF_Pos)           /*!< SCB 
 514:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 11


 515:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Application Interrupt and Reset Control Register Definitions */
 516:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEY_Pos              16                                             /*!< SCB 
 517:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEY_Msk              (0xFFFFUL << SCB_AIRCR_VECTKEY_Pos)            /*!< SCB 
 518:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 519:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEYSTAT_Pos          16                                             /*!< SCB 
 520:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEYSTAT_Msk          (0xFFFFUL << SCB_AIRCR_VECTKEYSTAT_Pos)        /*!< SCB 
 521:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 522:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_ENDIANESS_Pos            15                                             /*!< SCB 
 523:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_ENDIANESS_Msk            (1UL << SCB_AIRCR_ENDIANESS_Pos)               /*!< SCB 
 524:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 525:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_PRIGROUP_Pos              8                                             /*!< SCB 
 526:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_PRIGROUP_Msk             (7UL << SCB_AIRCR_PRIGROUP_Pos)                /*!< SCB 
 527:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 528:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_SYSRESETREQ_Pos           2                                             /*!< SCB 
 529:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_SYSRESETREQ_Msk          (1UL << SCB_AIRCR_SYSRESETREQ_Pos)             /*!< SCB 
 530:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 531:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTCLRACTIVE_Pos         1                                             /*!< SCB 
 532:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTCLRACTIVE_Msk        (1UL << SCB_AIRCR_VECTCLRACTIVE_Pos)           /*!< SCB 
 533:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 534:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTRESET_Pos             0                                             /*!< SCB 
 535:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTRESET_Msk            (1UL << SCB_AIRCR_VECTRESET_Pos)               /*!< SCB 
 536:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 537:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB System Control Register Definitions */
 538:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SEVONPEND_Pos               4                                             /*!< SCB 
 539:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SEVONPEND_Msk              (1UL << SCB_SCR_SEVONPEND_Pos)                 /*!< SCB 
 540:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 541:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPDEEP_Pos               2                                             /*!< SCB 
 542:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPDEEP_Msk              (1UL << SCB_SCR_SLEEPDEEP_Pos)                 /*!< SCB 
 543:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 544:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPONEXIT_Pos             1                                             /*!< SCB 
 545:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPONEXIT_Msk            (1UL << SCB_SCR_SLEEPONEXIT_Pos)               /*!< SCB 
 546:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 547:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Configuration Control Register Definitions */
 548:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BP_Pos                      18                                            /*!< SCB 
 549:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BP_Msk                     (1UL << SCB_CCR_BP_Pos)                        /*!< SCB 
 550:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 551:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_IC_Pos                      17                                            /*!< SCB 
 552:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_IC_Msk                     (1UL << SCB_CCR_IC_Pos)                        /*!< SCB 
 553:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 554:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DC_Pos                      16                                            /*!< SCB 
 555:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DC_Msk                     (1UL << SCB_CCR_DC_Pos)                        /*!< SCB 
 556:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 557:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_STKALIGN_Pos                9                                             /*!< SCB 
 558:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_STKALIGN_Msk               (1UL << SCB_CCR_STKALIGN_Pos)                  /*!< SCB 
 559:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 560:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BFHFNMIGN_Pos               8                                             /*!< SCB 
 561:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BFHFNMIGN_Msk              (1UL << SCB_CCR_BFHFNMIGN_Pos)                 /*!< SCB 
 562:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 563:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DIV_0_TRP_Pos               4                                             /*!< SCB 
 564:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DIV_0_TRP_Msk              (1UL << SCB_CCR_DIV_0_TRP_Pos)                 /*!< SCB 
 565:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 566:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_UNALIGN_TRP_Pos             3                                             /*!< SCB 
 567:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_UNALIGN_TRP_Msk            (1UL << SCB_CCR_UNALIGN_TRP_Pos)               /*!< SCB 
 568:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 569:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_USERSETMPEND_Pos            1                                             /*!< SCB 
 570:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_USERSETMPEND_Msk           (1UL << SCB_CCR_USERSETMPEND_Pos)              /*!< SCB 
 571:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 12


 572:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_NONBASETHRDENA_Pos          0                                             /*!< SCB 
 573:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_NONBASETHRDENA_Msk         (1UL << SCB_CCR_NONBASETHRDENA_Pos)            /*!< SCB 
 574:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 575:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB System Handler Control and State Register Definitions */
 576:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTENA_Pos          18                                             /*!< SCB 
 577:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTENA_Msk          (1UL << SCB_SHCSR_USGFAULTENA_Pos)             /*!< SCB 
 578:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 579:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTENA_Pos          17                                             /*!< SCB 
 580:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTENA_Msk          (1UL << SCB_SHCSR_BUSFAULTENA_Pos)             /*!< SCB 
 581:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 582:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTENA_Pos          16                                             /*!< SCB 
 583:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTENA_Msk          (1UL << SCB_SHCSR_MEMFAULTENA_Pos)             /*!< SCB 
 584:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 585:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLPENDED_Pos         15                                             /*!< SCB 
 586:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLPENDED_Msk         (1UL << SCB_SHCSR_SVCALLPENDED_Pos)            /*!< SCB 
 587:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 588:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTPENDED_Pos       14                                             /*!< SCB 
 589:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTPENDED_Msk       (1UL << SCB_SHCSR_BUSFAULTPENDED_Pos)          /*!< SCB 
 590:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 591:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTPENDED_Pos       13                                             /*!< SCB 
 592:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTPENDED_Msk       (1UL << SCB_SHCSR_MEMFAULTPENDED_Pos)          /*!< SCB 
 593:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 594:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTPENDED_Pos       12                                             /*!< SCB 
 595:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTPENDED_Msk       (1UL << SCB_SHCSR_USGFAULTPENDED_Pos)          /*!< SCB 
 596:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 597:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SYSTICKACT_Pos           11                                             /*!< SCB 
 598:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SYSTICKACT_Msk           (1UL << SCB_SHCSR_SYSTICKACT_Pos)              /*!< SCB 
 599:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 600:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_PENDSVACT_Pos            10                                             /*!< SCB 
 601:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_PENDSVACT_Msk            (1UL << SCB_SHCSR_PENDSVACT_Pos)               /*!< SCB 
 602:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 603:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MONITORACT_Pos            8                                             /*!< SCB 
 604:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MONITORACT_Msk           (1UL << SCB_SHCSR_MONITORACT_Pos)              /*!< SCB 
 605:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 606:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLACT_Pos             7                                             /*!< SCB 
 607:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLACT_Msk            (1UL << SCB_SHCSR_SVCALLACT_Pos)               /*!< SCB 
 608:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 609:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTACT_Pos           3                                             /*!< SCB 
 610:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTACT_Msk          (1UL << SCB_SHCSR_USGFAULTACT_Pos)             /*!< SCB 
 611:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 612:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTACT_Pos           1                                             /*!< SCB 
 613:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTACT_Msk          (1UL << SCB_SHCSR_BUSFAULTACT_Pos)             /*!< SCB 
 614:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 615:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTACT_Pos           0                                             /*!< SCB 
 616:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTACT_Msk          (1UL << SCB_SHCSR_MEMFAULTACT_Pos)             /*!< SCB 
 617:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 618:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Configurable Fault Status Registers Definitions */
 619:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_USGFAULTSR_Pos            16                                             /*!< SCB 
 620:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_USGFAULTSR_Msk            (0xFFFFUL << SCB_CFSR_USGFAULTSR_Pos)          /*!< SCB 
 621:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 622:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_BUSFAULTSR_Pos             8                                             /*!< SCB 
 623:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_BUSFAULTSR_Msk            (0xFFUL << SCB_CFSR_BUSFAULTSR_Pos)            /*!< SCB 
 624:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 625:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_MEMFAULTSR_Pos             0                                             /*!< SCB 
 626:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_MEMFAULTSR_Msk            (0xFFUL << SCB_CFSR_MEMFAULTSR_Pos)            /*!< SCB 
 627:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 628:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Hard Fault Status Registers Definitions */
ARM GAS  /tmp/cc8RfTnf.s 			page 13


 629:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_DEBUGEVT_Pos              31                                             /*!< SCB 
 630:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_DEBUGEVT_Msk              (1UL << SCB_HFSR_DEBUGEVT_Pos)                 /*!< SCB 
 631:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 632:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_FORCED_Pos                30                                             /*!< SCB 
 633:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_FORCED_Msk                (1UL << SCB_HFSR_FORCED_Pos)                   /*!< SCB 
 634:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 635:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_VECTTBL_Pos                1                                             /*!< SCB 
 636:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_VECTTBL_Msk               (1UL << SCB_HFSR_VECTTBL_Pos)                  /*!< SCB 
 637:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 638:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Debug Fault Status Register Definitions */
 639:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_EXTERNAL_Pos               4                                             /*!< SCB 
 640:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_EXTERNAL_Msk              (1UL << SCB_DFSR_EXTERNAL_Pos)                 /*!< SCB 
 641:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 642:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_VCATCH_Pos                 3                                             /*!< SCB 
 643:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_VCATCH_Msk                (1UL << SCB_DFSR_VCATCH_Pos)                   /*!< SCB 
 644:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 645:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_DWTTRAP_Pos                2                                             /*!< SCB 
 646:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_DWTTRAP_Msk               (1UL << SCB_DFSR_DWTTRAP_Pos)                  /*!< SCB 
 647:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 648:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_BKPT_Pos                   1                                             /*!< SCB 
 649:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_BKPT_Msk                  (1UL << SCB_DFSR_BKPT_Pos)                     /*!< SCB 
 650:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 651:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_HALTED_Pos                 0                                             /*!< SCB 
 652:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_HALTED_Msk                (1UL << SCB_DFSR_HALTED_Pos)                   /*!< SCB 
 653:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 654:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Level ID register */
 655:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOUU_Pos                 27                                             /*!< SCB 
 656:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOUU_Msk                 (7UL << SCB_CLIDR_LOUU_Pos)                    /*!< SCB 
 657:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 658:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOC_Pos                  24                                             /*!< SCB 
 659:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOC_Msk                  (7UL << SCB_CLIDR_FORMAT_Pos)                  /*!< SCB 
 660:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 661:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Type register */
 662:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_FORMAT_Pos                 29                                             /*!< SCB 
 663:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_FORMAT_Msk                 (7UL << SCB_CTR_FORMAT_Pos)                    /*!< SCB 
 664:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 665:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_CWG_Pos                    24                                             /*!< SCB 
 666:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_CWG_Msk                    (0xFUL << SCB_CTR_CWG_Pos)                     /*!< SCB 
 667:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 668:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_ERG_Pos                    20                                             /*!< SCB 
 669:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_ERG_Msk                    (0xFUL << SCB_CTR_ERG_Pos)                     /*!< SCB 
 670:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 671:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_DMINLINE_Pos               16                                             /*!< SCB 
 672:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_DMINLINE_Msk               (0xFUL << SCB_CTR_DMINLINE_Pos)                /*!< SCB 
 673:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 674:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_IMINLINE_Pos                0                                             /*!< SCB 
 675:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_IMINLINE_Msk               (0xFUL << SCB_CTR_IMINLINE_Pos)                /*!< SCB 
 676:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 677:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Size ID Register */
 678:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WT_Pos                  31                                             /*!< SCB 
 679:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WT_Msk                  (7UL << SCB_CCSIDR_WT_Pos)                     /*!< SCB 
 680:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 681:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WB_Pos                  30                                             /*!< SCB 
 682:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WB_Msk                  (7UL << SCB_CCSIDR_WB_Pos)                     /*!< SCB 
 683:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_RA_Pos                  29                                             /*!< SCB 
 685:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_RA_Msk                  (7UL << SCB_CCSIDR_RA_Pos)                     /*!< SCB 
ARM GAS  /tmp/cc8RfTnf.s 			page 14


 686:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 687:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WA_Pos                  28                                             /*!< SCB 
 688:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WA_Msk                  (7UL << SCB_CCSIDR_WA_Pos)                     /*!< SCB 
 689:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 690:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_NUMSETS_Pos             13                                             /*!< SCB 
 691:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_NUMSETS_Msk             (0x7FFFUL << SCB_CCSIDR_NUMSETS_Pos)           /*!< SCB 
 692:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 693:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_ASSOCIATIVITY_Pos        3                                             /*!< SCB 
 694:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_ASSOCIATIVITY_Msk       (0x3FFUL << SCB_CCSIDR_ASSOCIATIVITY_Pos)      /*!< SCB 
 695:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_LINESIZE_Pos             0                                             /*!< SCB 
 697:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_LINESIZE_Msk            (7UL << SCB_CCSIDR_LINESIZE_Pos)               /*!< SCB 
 698:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 699:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Size Selection Register */
 700:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_LEVEL_Pos                0                                             /*!< SCB 
 701:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_LEVEL_Msk               (1UL << SCB_CSSELR_LEVEL_Pos)                    /*!< SC
 702:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 703:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_IND_Pos                  0                                             /*!< SCB 
 704:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_IND_Msk                 (1UL << SCB_CSSELR_IND_Pos)                    /*!< SCB 
 705:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 706:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Software Triggered Interrupt Register */
 707:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_STIR_INTID_Pos                  0                                             /*!< SCB 
 708:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_STIR_INTID_Msk                 (0x1FFUL << SCB_STIR_INTID_Pos)                /*!< SCB 
 709:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 710:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Instruction Tightly-Coupled Memory Control Register*/
 711:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_SZ_Pos                   3                                             /*!< SCB 
 712:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_SZ_Msk                  (0xFUL << SCB_ITCMCR_SZ_Pos)                   /*!< SCB 
 713:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 714:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RETEN_Pos                2                                             /*!< SCB 
 715:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RETEN_Msk               (0x1UL << SCB_ITCMCR_RETEN_Pos)                /*!< SCB 
 716:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 717:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RMW_Pos                  1                                             /*!< SCB 
 718:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RMW_Msk                 (0x1UL << SCB_ITCMCR_RMW_Pos)                  /*!< SCB 
 719:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 720:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_EN_Pos                   0                                             /*!< SCB 
 721:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_EN_Msk                  (0x1UL << SCB_ITCMCR_EN_Pos)                   /*!< SCB 
 722:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 723:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Data Tightly-Coupled Memory Control Registers */
 724:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_SZ_Pos                   3                                             /*!< SCB 
 725:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_SZ_Msk                  (0xFUL << SCB_DTCMCR_SZ_Pos)                   /*!< SCB 
 726:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 727:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RETEN_Pos                2                                             /*!< SCB 
 728:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RETEN_Msk               (1UL << SCB_DTCMCR_RETEN_Pos)                   /*!< SCB
 729:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 730:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RMW_Pos                  1                                             /*!< SCB 
 731:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RMW_Msk                 (1UL << SCB_DTCMCR_RMW_Pos)                    /*!< SCB 
 732:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 733:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_EN_Pos                   0                                             /*!< SCB 
 734:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_EN_Msk                  (1UL << SCB_DTCMCR_EN_Pos)                     /*!< SCB 
 735:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* AHBP Control Register */
 737:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_SZ_Pos                   1                                             /*!< SCB 
 738:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_SZ_Msk                  (7UL << SCB_AHBPCR_SZ_Pos)                     /*!< SCB 
 739:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 740:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_EN_Pos                   0                                             /*!< SCB 
 741:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_EN_Msk                  (1UL << SCB_AHBPCR_EN_Pos)                     /*!< SCB 
 742:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 15


 743:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* L1 Cache Control Register */
 744:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_FORCEWT_Pos                2                                             /*!< SCB 
 745:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_FORCEWT_Msk               (1UL << SCB_CACR_FORCEWT_Pos)                  /*!< SCB 
 746:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 747:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_ECCEN_Pos                  1                                             /*!< SCB 
 748:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_ECCEN_Msk                 (1UL << SCB_CACR_ECCEN_Pos)                    /*!< SCB 
 749:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 750:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_SIWT_Pos                   0                                             /*!< SCB 
 751:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_SIWT_Msk                  (1UL << SCB_CACR_SIWT_Pos)                     /*!< SCB 
 752:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 753:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* AHBS control register */
 754:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_INITCOUNT_Pos           11                                             /*!< SCB 
 755:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_INITCOUNT_Msk           (0x1FUL << SCB_AHBPCR_INITCOUNT_Pos)           /*!< SCB 
 756:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 757:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_TPRI_Pos                 2                                             /*!< SCB 
 758:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_TPRI_Msk                (0x1FFUL << SCB_AHBPCR_TPRI_Pos)               /*!< SCB 
 759:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 760:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_CTL_Pos                  0                                             /*!< SCB 
 761:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_CTL_Msk                 (3UL << SCB_AHBPCR_CTL_Pos)                    /*!< SCB 
 762:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 763:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Auxiliary Bus Fault Status Register */
 764:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIMTYPE_Pos              8                                             /*!< SCB 
 765:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIMTYPE_Msk             (3UL << SCB_ABFSR_AXIMTYPE_Pos)                /*!< SCB 
 766:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 767:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_EPPB_Pos                  4                                             /*!< SCB 
 768:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_EPPB_Msk                 (1UL << SCB_ABFSR_EPPB_Pos)                    /*!< SCB 
 769:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 770:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIM_Pos                  3                                             /*!< SCB 
 771:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIM_Msk                 (1UL << SCB_ABFSR_AXIM_Pos)                    /*!< SCB 
 772:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 773:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AHBP_Pos                  2                                             /*!< SCB 
 774:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AHBP_Msk                 (1UL << SCB_ABFSR_AHBP_Pos)                    /*!< SCB 
 775:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 776:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_DTCM_Pos                  1                                             /*!< SCB 
 777:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_DTCM_Msk                 (1UL << SCB_ABFSR_DTCM_Pos)                    /*!< SCB 
 778:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 779:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_ITCM_Pos                  0                                             /*!< SCB 
 780:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_ITCM_Msk                 (1UL << SCB_ABFSR_ITCM_Pos)                    /*!< SCB 
 781:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 782:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SCB */
 783:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 784:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 785:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 786:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SCnSCB System Controls not in SCB (SCnSCB)
 787:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Control and ID Register not in the SCB
 788:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 789:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 790:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 791:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Control and ID Register not in the SCB.
 792:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 793:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 794:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 795:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 796:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ICTR;                    /*!< Offset: 0x004 (R/ )  Interrupt Controller Type Regist
 797:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ACTLR;                   /*!< Offset: 0x008 (R/W)  Auxiliary Control Register      
 798:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SCnSCB_Type;
 799:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 16


 800:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Interrupt Controller Type Register Definitions */
 801:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ICTR_INTLINESNUM_Pos         0                                          /*!< ICTR: I
 802:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ICTR_INTLINESNUM_Msk        (0xFUL << SCnSCB_ICTR_INTLINESNUM_Pos)      /*!< ICTR: I
 803:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 804:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Auxiliary Control Register Definitions */
 805:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISITMATBFLUSH_Pos    12                                          /*!< ACTLR: 
 806:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISITMATBFLUSH_Msk    (1UL << SCnSCB_ACTLR_DISITMATBFLUSH_Pos)    /*!< ACTLR: 
 807:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 808:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISRAMODE_Pos         11                                          /*!< ACTLR: 
 809:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISRAMODE_Msk         (1UL << SCnSCB_ACTLR_DISRAMODE_Pos)         /*!< ACTLR: 
 810:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 811:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_FPEXCODIS_Pos         10                                          /*!< ACTLR: 
 812:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_FPEXCODIS_Msk         (1UL << SCnSCB_ACTLR_FPEXCODIS_Pos)         /*!< ACTLR: 
 813:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 814:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISFOLD_Pos            2                                          /*!< ACTLR: 
 815:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISFOLD_Msk           (1UL << SCnSCB_ACTLR_DISFOLD_Pos)           /*!< ACTLR: 
 816:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 817:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISMCYCINT_Pos         0                                          /*!< ACTLR: 
 818:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISMCYCINT_Msk        (1UL << SCnSCB_ACTLR_DISMCYCINT_Pos)        /*!< ACTLR: 
 819:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 820:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SCnotSCB */
 821:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 822:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 823:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 824:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SysTick     System Tick Timer (SysTick)
 825:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Timer Registers.
 826:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 827:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 828:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 829:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Timer (SysTick).
 830:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 831:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 832:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 833:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  SysTick Control and Status Regis
 834:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t LOAD;                    /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register   
 835:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t VAL;                     /*!< Offset: 0x008 (R/W)  SysTick Current Value Register  
 836:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CALIB;                   /*!< Offset: 0x00C (R/ )  SysTick Calibration Register    
 837:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SysTick_Type;
 838:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 839:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Control / Status Register Definitions */
 840:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_COUNTFLAG_Pos         16                                             /*!< SysT
 841:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_COUNTFLAG_Msk         (1UL << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysT
 842:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 843:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_CLKSOURCE_Pos          2                                             /*!< SysT
 844:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_CLKSOURCE_Msk         (1UL << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysT
 845:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 846:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_TICKINT_Pos            1                                             /*!< SysT
 847:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_TICKINT_Msk           (1UL << SysTick_CTRL_TICKINT_Pos)              /*!< SysT
 848:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 849:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_ENABLE_Pos             0                                             /*!< SysT
 850:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_ENABLE_Msk            (1UL << SysTick_CTRL_ENABLE_Pos)               /*!< SysT
 851:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 852:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Reload Register Definitions */
 853:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_LOAD_RELOAD_Pos             0                                             /*!< SysT
 854:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFUL << SysTick_LOAD_RELOAD_Pos)        /*!< SysT
 855:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 856:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Current Register Definitions */
ARM GAS  /tmp/cc8RfTnf.s 			page 17


 857:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_VAL_CURRENT_Pos             0                                             /*!< SysT
 858:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_VAL_CURRENT_Msk            (0xFFFFFFUL << SysTick_VAL_CURRENT_Pos)        /*!< SysT
 859:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 860:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Calibration Register Definitions */
 861:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_NOREF_Pos            31                                             /*!< SysT
 862:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_NOREF_Msk            (1UL << SysTick_CALIB_NOREF_Pos)               /*!< SysT
 863:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 864:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_SKEW_Pos             30                                             /*!< SysT
 865:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_SKEW_Msk             (1UL << SysTick_CALIB_SKEW_Pos)                /*!< SysT
 866:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 867:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_TENMS_Pos             0                                             /*!< SysT
 868:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_TENMS_Msk            (0xFFFFFFUL << SysTick_CALIB_TENMS_Pos)        /*!< SysT
 869:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 870:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SysTick */
 871:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 872:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 873:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 874:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_ITM     Instrumentation Trace Macrocell (ITM)
 875:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Instrumentation Trace Macrocell (ITM)
 876:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 877:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 878:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 879:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Instrumentation Trace Macrocell Register (ITM).
 880:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 881:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 882:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 883:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  union
 884:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 885:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint8_t    u8;                  /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 8-bit         
 886:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint16_t   u16;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 16-bit        
 887:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint32_t   u32;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 32-bit        
 888:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   }  PORT [32];                          /*!< Offset: 0x000 ( /W)  ITM Stimulus Port Registers     
 889:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[864];
 890:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TER;                     /*!< Offset: 0xE00 (R/W)  ITM Trace Enable Register       
 891:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[15];
 892:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TPR;                     /*!< Offset: 0xE40 (R/W)  ITM Trace Privilege Register    
 893:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[15];
 894:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TCR;                     /*!< Offset: 0xE80 (R/W)  ITM Trace Control Register      
 895:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[29];
 896:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t IWR;                     /*!< Offset: 0xEF8 ( /W)  ITM Integration Write Register  
 897:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t IRR;                     /*!< Offset: 0xEFC (R/ )  ITM Integration Read Register   
 898:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t IMCR;                    /*!< Offset: 0xF00 (R/W)  ITM Integration Mode Control Reg
 899:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[43];
 900:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t LAR;                     /*!< Offset: 0xFB0 ( /W)  ITM Lock Access Register        
 901:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t LSR;                     /*!< Offset: 0xFB4 (R/ )  ITM Lock Status Register        
 902:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[6];
 903:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID4;                    /*!< Offset: 0xFD0 (R/ )  ITM Peripheral Identification Re
 904:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID5;                    /*!< Offset: 0xFD4 (R/ )  ITM Peripheral Identification Re
 905:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID6;                    /*!< Offset: 0xFD8 (R/ )  ITM Peripheral Identification Re
 906:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID7;                    /*!< Offset: 0xFDC (R/ )  ITM Peripheral Identification Re
 907:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID0;                    /*!< Offset: 0xFE0 (R/ )  ITM Peripheral Identification Re
 908:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID1;                    /*!< Offset: 0xFE4 (R/ )  ITM Peripheral Identification Re
 909:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID2;                    /*!< Offset: 0xFE8 (R/ )  ITM Peripheral Identification Re
 910:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID3;                    /*!< Offset: 0xFEC (R/ )  ITM Peripheral Identification Re
 911:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID0;                    /*!< Offset: 0xFF0 (R/ )  ITM Component  Identification Re
 912:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID1;                    /*!< Offset: 0xFF4 (R/ )  ITM Component  Identification Re
 913:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID2;                    /*!< Offset: 0xFF8 (R/ )  ITM Component  Identification Re
ARM GAS  /tmp/cc8RfTnf.s 			page 18


 914:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID3;                    /*!< Offset: 0xFFC (R/ )  ITM Component  Identification Re
 915:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } ITM_Type;
 916:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 917:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Trace Privilege Register Definitions */
 918:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TPR_PRIVMASK_Pos                0                                             /*!< ITM 
 919:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TPR_PRIVMASK_Msk               (0xFUL << ITM_TPR_PRIVMASK_Pos)                /*!< ITM 
 920:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 921:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Trace Control Register Definitions */
 922:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_BUSY_Pos                   23                                             /*!< ITM 
 923:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_BUSY_Msk                   (1UL << ITM_TCR_BUSY_Pos)                      /*!< ITM 
 924:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 925:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TraceBusID_Pos             16                                             /*!< ITM 
 926:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TraceBusID_Msk             (0x7FUL << ITM_TCR_TraceBusID_Pos)             /*!< ITM 
 927:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 928:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_GTSFREQ_Pos                10                                             /*!< ITM 
 929:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_GTSFREQ_Msk                (3UL << ITM_TCR_GTSFREQ_Pos)                   /*!< ITM 
 930:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 931:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSPrescale_Pos              8                                             /*!< ITM 
 932:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSPrescale_Msk             (3UL << ITM_TCR_TSPrescale_Pos)                /*!< ITM 
 933:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 934:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SWOENA_Pos                  4                                             /*!< ITM 
 935:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SWOENA_Msk                 (1UL << ITM_TCR_SWOENA_Pos)                    /*!< ITM 
 936:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 937:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_DWTENA_Pos                  3                                             /*!< ITM 
 938:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_DWTENA_Msk                 (1UL << ITM_TCR_DWTENA_Pos)                    /*!< ITM 
 939:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 940:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SYNCENA_Pos                 2                                             /*!< ITM 
 941:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SYNCENA_Msk                (1UL << ITM_TCR_SYNCENA_Pos)                   /*!< ITM 
 942:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 943:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSENA_Pos                   1                                             /*!< ITM 
 944:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSENA_Msk                  (1UL << ITM_TCR_TSENA_Pos)                     /*!< ITM 
 945:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 946:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_ITMENA_Pos                  0                                             /*!< ITM 
 947:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_ITMENA_Msk                 (1UL << ITM_TCR_ITMENA_Pos)                    /*!< ITM 
 948:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 949:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Write Register Definitions */
 950:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IWR_ATVALIDM_Pos                0                                             /*!< ITM 
 951:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IWR_ATVALIDM_Msk               (1UL << ITM_IWR_ATVALIDM_Pos)                  /*!< ITM 
 952:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 953:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Read Register Definitions */
 954:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IRR_ATREADYM_Pos                0                                             /*!< ITM 
 955:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IRR_ATREADYM_Msk               (1UL << ITM_IRR_ATREADYM_Pos)                  /*!< ITM 
 956:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 957:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Mode Control Register Definitions */
 958:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IMCR_INTEGRATION_Pos            0                                             /*!< ITM 
 959:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IMCR_INTEGRATION_Msk           (1UL << ITM_IMCR_INTEGRATION_Pos)              /*!< ITM 
 960:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 961:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Lock Status Register Definitions */
 962:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_ByteAcc_Pos                 2                                             /*!< ITM 
 963:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_ByteAcc_Msk                (1UL << ITM_LSR_ByteAcc_Pos)                   /*!< ITM 
 964:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 965:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Access_Pos                  1                                             /*!< ITM 
 966:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Access_Msk                 (1UL << ITM_LSR_Access_Pos)                    /*!< ITM 
 967:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 968:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Present_Pos                 0                                             /*!< ITM 
 969:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Present_Msk                (1UL << ITM_LSR_Present_Pos)                   /*!< ITM 
 970:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 19


 971:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_ITM */
 972:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 973:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 974:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 975:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_DWT     Data Watchpoint and Trace (DWT)
 976:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Data Watchpoint and Trace (DWT)
 977:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 978:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 979:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 980:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Data Watchpoint and Trace Register (DWT).
 981:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 982:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 983:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 984:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  Control Register                
 985:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CYCCNT;                  /*!< Offset: 0x004 (R/W)  Cycle Count Register            
 986:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CPICNT;                  /*!< Offset: 0x008 (R/W)  CPI Count Register              
 987:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t EXCCNT;                  /*!< Offset: 0x00C (R/W)  Exception Overhead Count Registe
 988:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SLEEPCNT;                /*!< Offset: 0x010 (R/W)  Sleep Count Register            
 989:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t LSUCNT;                  /*!< Offset: 0x014 (R/W)  LSU Count Register              
 990:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FOLDCNT;                 /*!< Offset: 0x018 (R/W)  Folded-instruction Count Registe
 991:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PCSR;                    /*!< Offset: 0x01C (R/ )  Program Counter Sample Register 
 992:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP0;                   /*!< Offset: 0x020 (R/W)  Comparator Register 0           
 993:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK0;                   /*!< Offset: 0x024 (R/W)  Mask Register 0                 
 994:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION0;               /*!< Offset: 0x028 (R/W)  Function Register 0             
 995:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 996:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP1;                   /*!< Offset: 0x030 (R/W)  Comparator Register 1           
 997:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK1;                   /*!< Offset: 0x034 (R/W)  Mask Register 1                 
 998:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION1;               /*!< Offset: 0x038 (R/W)  Function Register 1             
 999:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[1];
1000:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP2;                   /*!< Offset: 0x040 (R/W)  Comparator Register 2           
1001:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK2;                   /*!< Offset: 0x044 (R/W)  Mask Register 2                 
1002:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION2;               /*!< Offset: 0x048 (R/W)  Function Register 2             
1003:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[1];
1004:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP3;                   /*!< Offset: 0x050 (R/W)  Comparator Register 3           
1005:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK3;                   /*!< Offset: 0x054 (R/W)  Mask Register 3                 
1006:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION3;               /*!< Offset: 0x058 (R/W)  Function Register 3             
1007:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[981];
1008:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t LAR;                     /*!< Offset: 0xFB0 (  W)  Lock Access Register            
1009:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t LSR;                     /*!< Offset: 0xFB4 (R  )  Lock Status Register            
1010:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } DWT_Type;
1011:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1012:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Control Register Definitions */
1013:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NUMCOMP_Pos               28                                          /*!< DWT CTR
1014:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NUMCOMP_Msk               (0xFUL << DWT_CTRL_NUMCOMP_Pos)             /*!< DWT CTR
1015:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1016:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOTRCPKT_Pos              27                                          /*!< DWT CTR
1017:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOTRCPKT_Msk              (0x1UL << DWT_CTRL_NOTRCPKT_Pos)            /*!< DWT CTR
1018:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1019:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOEXTTRIG_Pos             26                                          /*!< DWT CTR
1020:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOEXTTRIG_Msk             (0x1UL << DWT_CTRL_NOEXTTRIG_Pos)           /*!< DWT CTR
1021:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1022:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOCYCCNT_Pos              25                                          /*!< DWT CTR
1023:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOCYCCNT_Msk              (0x1UL << DWT_CTRL_NOCYCCNT_Pos)            /*!< DWT CTR
1024:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1025:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOPRFCNT_Pos              24                                          /*!< DWT CTR
1026:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOPRFCNT_Msk              (0x1UL << DWT_CTRL_NOPRFCNT_Pos)            /*!< DWT CTR
1027:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 20


1028:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCEVTENA_Pos             22                                          /*!< DWT CTR
1029:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCEVTENA_Msk             (0x1UL << DWT_CTRL_CYCEVTENA_Pos)           /*!< DWT CTR
1030:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1031:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_FOLDEVTENA_Pos            21                                          /*!< DWT CTR
1032:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_FOLDEVTENA_Msk            (0x1UL << DWT_CTRL_FOLDEVTENA_Pos)          /*!< DWT CTR
1033:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1034:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_LSUEVTENA_Pos             20                                          /*!< DWT CTR
1035:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_LSUEVTENA_Msk             (0x1UL << DWT_CTRL_LSUEVTENA_Pos)           /*!< DWT CTR
1036:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1037:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SLEEPEVTENA_Pos           19                                          /*!< DWT CTR
1038:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SLEEPEVTENA_Msk           (0x1UL << DWT_CTRL_SLEEPEVTENA_Pos)         /*!< DWT CTR
1039:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1040:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCEVTENA_Pos             18                                          /*!< DWT CTR
1041:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCEVTENA_Msk             (0x1UL << DWT_CTRL_EXCEVTENA_Pos)           /*!< DWT CTR
1042:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1043:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CPIEVTENA_Pos             17                                          /*!< DWT CTR
1044:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CPIEVTENA_Msk             (0x1UL << DWT_CTRL_CPIEVTENA_Pos)           /*!< DWT CTR
1045:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1046:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCTRCENA_Pos             16                                          /*!< DWT CTR
1047:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCTRCENA_Msk             (0x1UL << DWT_CTRL_EXCTRCENA_Pos)           /*!< DWT CTR
1048:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1049:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_PCSAMPLENA_Pos            12                                          /*!< DWT CTR
1050:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_PCSAMPLENA_Msk            (0x1UL << DWT_CTRL_PCSAMPLENA_Pos)          /*!< DWT CTR
1051:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1052:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SYNCTAP_Pos               10                                          /*!< DWT CTR
1053:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SYNCTAP_Msk               (0x3UL << DWT_CTRL_SYNCTAP_Pos)             /*!< DWT CTR
1054:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1055:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCTAP_Pos                 9                                          /*!< DWT CTR
1056:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCTAP_Msk                (0x1UL << DWT_CTRL_CYCTAP_Pos)              /*!< DWT CTR
1057:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1058:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTINIT_Pos               5                                          /*!< DWT CTR
1059:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTINIT_Msk              (0xFUL << DWT_CTRL_POSTINIT_Pos)            /*!< DWT CTR
1060:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1061:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTPRESET_Pos             1                                          /*!< DWT CTR
1062:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTPRESET_Msk            (0xFUL << DWT_CTRL_POSTPRESET_Pos)          /*!< DWT CTR
1063:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1064:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCCNTENA_Pos              0                                          /*!< DWT CTR
1065:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCCNTENA_Msk             (0x1UL << DWT_CTRL_CYCCNTENA_Pos)           /*!< DWT CTR
1066:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1067:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT CPI Count Register Definitions */
1068:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CPICNT_CPICNT_Pos               0                                          /*!< DWT CPI
1069:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CPICNT_CPICNT_Msk              (0xFFUL << DWT_CPICNT_CPICNT_Pos)           /*!< DWT CPI
1070:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1071:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Exception Overhead Count Register Definitions */
1072:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_EXCCNT_EXCCNT_Pos               0                                          /*!< DWT EXC
1073:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_EXCCNT_EXCCNT_Msk              (0xFFUL << DWT_EXCCNT_EXCCNT_Pos)           /*!< DWT EXC
1074:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1075:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Sleep Count Register Definitions */
1076:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_SLEEPCNT_SLEEPCNT_Pos           0                                          /*!< DWT SLE
1077:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_SLEEPCNT_SLEEPCNT_Msk          (0xFFUL << DWT_SLEEPCNT_SLEEPCNT_Pos)       /*!< DWT SLE
1078:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1079:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT LSU Count Register Definitions */
1080:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_LSUCNT_LSUCNT_Pos               0                                          /*!< DWT LSU
1081:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_LSUCNT_LSUCNT_Msk              (0xFFUL << DWT_LSUCNT_LSUCNT_Pos)           /*!< DWT LSU
1082:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1083:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Folded-instruction Count Register Definitions */
1084:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FOLDCNT_FOLDCNT_Pos             0                                          /*!< DWT FOL
ARM GAS  /tmp/cc8RfTnf.s 			page 21


1085:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FOLDCNT_FOLDCNT_Msk            (0xFFUL << DWT_FOLDCNT_FOLDCNT_Pos)         /*!< DWT FOL
1086:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1087:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Comparator Mask Register Definitions */
1088:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_MASK_MASK_Pos                   0                                          /*!< DWT MAS
1089:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_MASK_MASK_Msk                  (0x1FUL << DWT_MASK_MASK_Pos)               /*!< DWT MAS
1090:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1091:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Comparator Function Register Definitions */
1092:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_MATCHED_Pos           24                                          /*!< DWT FUN
1093:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_MATCHED_Msk           (0x1UL << DWT_FUNCTION_MATCHED_Pos)         /*!< DWT FUN
1094:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1095:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR1_Pos        16                                          /*!< DWT FUN
1096:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR1_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR1_Pos)      /*!< DWT FUN
1097:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1098:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR0_Pos        12                                          /*!< DWT FUN
1099:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR0_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR0_Pos)      /*!< DWT FUN
1100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVSIZE_Pos         10                                          /*!< DWT FUN
1102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVSIZE_Msk         (0x3UL << DWT_FUNCTION_DATAVSIZE_Pos)       /*!< DWT FUN
1103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_LNK1ENA_Pos            9                                          /*!< DWT FUN
1105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_LNK1ENA_Msk           (0x1UL << DWT_FUNCTION_LNK1ENA_Pos)         /*!< DWT FUN
1106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVMATCH_Pos         8                                          /*!< DWT FUN
1108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVMATCH_Msk        (0x1UL << DWT_FUNCTION_DATAVMATCH_Pos)      /*!< DWT FUN
1109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_CYCMATCH_Pos           7                                          /*!< DWT FUN
1111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_CYCMATCH_Msk          (0x1UL << DWT_FUNCTION_CYCMATCH_Pos)        /*!< DWT FUN
1112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_EMITRANGE_Pos          5                                          /*!< DWT FUN
1114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_EMITRANGE_Msk         (0x1UL << DWT_FUNCTION_EMITRANGE_Pos)       /*!< DWT FUN
1115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_FUNCTION_Pos           0                                          /*!< DWT FUN
1117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_FUNCTION_Msk          (0xFUL << DWT_FUNCTION_FUNCTION_Pos)        /*!< DWT FUN
1118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_DWT */
1120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_TPI     Trace Port Interface (TPI)
1124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Trace Port Interface (TPI)
1125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Trace Port Interface Register (TPI).
1129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SSPSR;                   /*!< Offset: 0x000 (R/ )  Supported Parallel Port Size Reg
1133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CSPSR;                   /*!< Offset: 0x004 (R/W)  Current Parallel Port Size Regis
1134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[2];
1135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ACPR;                    /*!< Offset: 0x010 (R/W)  Asynchronous Clock Prescaler Reg
1136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[55];
1137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SPPR;                    /*!< Offset: 0x0F0 (R/W)  Selected Pin Protocol Register *
1138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[131];
1139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FFSR;                    /*!< Offset: 0x300 (R/ )  Formatter and Flush Status Regis
1140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FFCR;                    /*!< Offset: 0x304 (R/W)  Formatter and Flush Control Regi
1141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FSCR;                    /*!< Offset: 0x308 (R/ )  Formatter Synchronization Counte
ARM GAS  /tmp/cc8RfTnf.s 			page 22


1142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[759];
1143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t TRIGGER;                 /*!< Offset: 0xEE8 (R/ )  TRIGGER */
1144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FIFO0;                   /*!< Offset: 0xEEC (R/ )  Integration ETM Data */
1145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ITATBCTR2;               /*!< Offset: 0xEF0 (R/ )  ITATBCTR2 */
1146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[1];
1147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ITATBCTR0;               /*!< Offset: 0xEF8 (R/ )  ITATBCTR0 */
1148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FIFO1;                   /*!< Offset: 0xEFC (R/ )  Integration ITM Data */
1149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ITCTRL;                  /*!< Offset: 0xF00 (R/W)  Integration Mode Control */
1150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[39];
1151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CLAIMSET;                /*!< Offset: 0xFA0 (R/W)  Claim tag set */
1152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CLAIMCLR;                /*!< Offset: 0xFA4 (R/W)  Claim tag clear */
1153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED7[8];
1154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t DEVID;                   /*!< Offset: 0xFC8 (R/ )  TPIU_DEVID */
1155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t DEVTYPE;                 /*!< Offset: 0xFCC (R/ )  TPIU_DEVTYPE */
1156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } TPI_Type;
1157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Asynchronous Clock Prescaler Register Definitions */
1159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ACPR_PRESCALER_Pos              0                                          /*!< TPI ACP
1160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ACPR_PRESCALER_Msk             (0x1FFFUL << TPI_ACPR_PRESCALER_Pos)        /*!< TPI ACP
1161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Selected Pin Protocol Register Definitions */
1163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_SPPR_TXMODE_Pos                 0                                          /*!< TPI SPP
1164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_SPPR_TXMODE_Msk                (0x3UL << TPI_SPPR_TXMODE_Pos)              /*!< TPI SPP
1165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Formatter and Flush Status Register Definitions */
1167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtNonStop_Pos              3                                          /*!< TPI FFS
1168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtNonStop_Msk             (0x1UL << TPI_FFSR_FtNonStop_Pos)           /*!< TPI FFS
1169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_TCPresent_Pos              2                                          /*!< TPI FFS
1171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_TCPresent_Msk             (0x1UL << TPI_FFSR_TCPresent_Pos)           /*!< TPI FFS
1172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtStopped_Pos              1                                          /*!< TPI FFS
1174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtStopped_Msk             (0x1UL << TPI_FFSR_FtStopped_Pos)           /*!< TPI FFS
1175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FlInProg_Pos               0                                          /*!< TPI FFS
1177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FlInProg_Msk              (0x1UL << TPI_FFSR_FlInProg_Pos)            /*!< TPI FFS
1178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Formatter and Flush Control Register Definitions */
1180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_TrigIn_Pos                 8                                          /*!< TPI FFC
1181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_TrigIn_Msk                (0x1UL << TPI_FFCR_TrigIn_Pos)              /*!< TPI FFC
1182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_EnFCont_Pos                1                                          /*!< TPI FFC
1184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_EnFCont_Msk               (0x1UL << TPI_FFCR_EnFCont_Pos)             /*!< TPI FFC
1185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI TRIGGER Register Definitions */
1187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_TRIGGER_TRIGGER_Pos             0                                          /*!< TPI TRI
1188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_TRIGGER_TRIGGER_Msk            (0x1UL << TPI_TRIGGER_TRIGGER_Pos)          /*!< TPI TRI
1189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration ETM Data Register Definitions (FIFO0) */
1191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_ATVALID_Pos          29                                          /*!< TPI FIF
1192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ITM_ATVALID_Pos)        /*!< TPI FIF
1193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_bytecount_Pos        27                                          /*!< TPI FIF
1195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_bytecount_Msk        (0x3UL << TPI_FIFO0_ITM_bytecount_Pos)      /*!< TPI FIF
1196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_ATVALID_Pos          26                                          /*!< TPI FIF
1198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ETM_ATVALID_Pos)        /*!< TPI FIF
ARM GAS  /tmp/cc8RfTnf.s 			page 23


1199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_bytecount_Pos        24                                          /*!< TPI FIF
1201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_bytecount_Msk        (0x3UL << TPI_FIFO0_ETM_bytecount_Pos)      /*!< TPI FIF
1202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM2_Pos                 16                                          /*!< TPI FIF
1204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM2_Msk                 (0xFFUL << TPI_FIFO0_ETM2_Pos)              /*!< TPI FIF
1205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM1_Pos                  8                                          /*!< TPI FIF
1207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM1_Msk                 (0xFFUL << TPI_FIFO0_ETM1_Pos)              /*!< TPI FIF
1208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM0_Pos                  0                                          /*!< TPI FIF
1210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM0_Msk                 (0xFFUL << TPI_FIFO0_ETM0_Pos)              /*!< TPI FIF
1211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI ITATBCTR2 Register Definitions */
1213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR2_ATREADY_Pos           0                                          /*!< TPI ITA
1214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR2_ATREADY_Msk          (0x1UL << TPI_ITATBCTR2_ATREADY_Pos)        /*!< TPI ITA
1215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration ITM Data Register Definitions (FIFO1) */
1217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_ATVALID_Pos          29                                          /*!< TPI FIF
1218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ITM_ATVALID_Pos)        /*!< TPI FIF
1219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_bytecount_Pos        27                                          /*!< TPI FIF
1221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_bytecount_Msk        (0x3UL << TPI_FIFO1_ITM_bytecount_Pos)      /*!< TPI FIF
1222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_ATVALID_Pos          26                                          /*!< TPI FIF
1224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ETM_ATVALID_Pos)        /*!< TPI FIF
1225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_bytecount_Pos        24                                          /*!< TPI FIF
1227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_bytecount_Msk        (0x3UL << TPI_FIFO1_ETM_bytecount_Pos)      /*!< TPI FIF
1228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM2_Pos                 16                                          /*!< TPI FIF
1230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM2_Msk                 (0xFFUL << TPI_FIFO1_ITM2_Pos)              /*!< TPI FIF
1231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM1_Pos                  8                                          /*!< TPI FIF
1233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM1_Msk                 (0xFFUL << TPI_FIFO1_ITM1_Pos)              /*!< TPI FIF
1234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM0_Pos                  0                                          /*!< TPI FIF
1236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM0_Msk                 (0xFFUL << TPI_FIFO1_ITM0_Pos)              /*!< TPI FIF
1237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI ITATBCTR0 Register Definitions */
1239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR0_ATREADY_Pos           0                                          /*!< TPI ITA
1240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR0_ATREADY_Msk          (0x1UL << TPI_ITATBCTR0_ATREADY_Pos)        /*!< TPI ITA
1241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration Mode Control Register Definitions */
1243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITCTRL_Mode_Pos                 0                                          /*!< TPI ITC
1244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITCTRL_Mode_Msk                (0x1UL << TPI_ITCTRL_Mode_Pos)              /*!< TPI ITC
1245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI DEVID Register Definitions */
1247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NRZVALID_Pos             11                                          /*!< TPI DEV
1248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NRZVALID_Msk             (0x1UL << TPI_DEVID_NRZVALID_Pos)           /*!< TPI DEV
1249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MANCVALID_Pos            10                                          /*!< TPI DEV
1251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MANCVALID_Msk            (0x1UL << TPI_DEVID_MANCVALID_Pos)          /*!< TPI DEV
1252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_PTINVALID_Pos             9                                          /*!< TPI DEV
1254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_PTINVALID_Msk            (0x1UL << TPI_DEVID_PTINVALID_Pos)          /*!< TPI DEV
1255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 24


1256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MinBufSz_Pos              6                                          /*!< TPI DEV
1257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MinBufSz_Msk             (0x7UL << TPI_DEVID_MinBufSz_Pos)           /*!< TPI DEV
1258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_AsynClkIn_Pos             5                                          /*!< TPI DEV
1260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_AsynClkIn_Msk            (0x1UL << TPI_DEVID_AsynClkIn_Pos)          /*!< TPI DEV
1261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NrTraceInput_Pos          0                                          /*!< TPI DEV
1263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NrTraceInput_Msk         (0x1FUL << TPI_DEVID_NrTraceInput_Pos)      /*!< TPI DEV
1264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI DEVTYPE Register Definitions */
1266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_SubType_Pos             0                                          /*!< TPI DEV
1267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_SubType_Msk            (0xFUL << TPI_DEVTYPE_SubType_Pos)          /*!< TPI DEV
1268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_MajorType_Pos           4                                          /*!< TPI DEV
1270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_MajorType_Msk          (0xFUL << TPI_DEVTYPE_MajorType_Pos)        /*!< TPI DEV
1271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_TPI */
1273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__MPU_PRESENT == 1)
1276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_MPU     Memory Protection Unit (MPU)
1278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Memory Protection Unit (MPU)
1279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Memory Protection Unit (MPU).
1283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t TYPE;                    /*!< Offset: 0x000 (R/ )  MPU Type Register               
1287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x004 (R/W)  MPU Control Register            
1288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RNR;                     /*!< Offset: 0x008 (R/W)  MPU Region RNRber Register      
1289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR;                    /*!< Offset: 0x00C (R/W)  MPU Region Base Address Register
1290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR;                    /*!< Offset: 0x010 (R/W)  MPU Region Attribute and Size Re
1291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A1;                 /*!< Offset: 0x014 (R/W)  MPU Alias 1 Region Base Address 
1292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A1;                 /*!< Offset: 0x018 (R/W)  MPU Alias 1 Region Attribute and
1293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A2;                 /*!< Offset: 0x01C (R/W)  MPU Alias 2 Region Base Address 
1294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A2;                 /*!< Offset: 0x020 (R/W)  MPU Alias 2 Region Attribute and
1295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A3;                 /*!< Offset: 0x024 (R/W)  MPU Alias 3 Region Base Address 
1296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A3;                 /*!< Offset: 0x028 (R/W)  MPU Alias 3 Region Attribute and
1297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } MPU_Type;
1298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Type Register */
1300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_IREGION_Pos               16                                             /*!< MPU 
1301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_IREGION_Msk               (0xFFUL << MPU_TYPE_IREGION_Pos)               /*!< MPU 
1302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_DREGION_Pos                8                                             /*!< MPU 
1304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_DREGION_Msk               (0xFFUL << MPU_TYPE_DREGION_Pos)               /*!< MPU 
1305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_SEPARATE_Pos               0                                             /*!< MPU 
1307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_SEPARATE_Msk              (1UL << MPU_TYPE_SEPARATE_Pos)                 /*!< MPU 
1308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Control Register */
1310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_PRIVDEFENA_Pos             2                                             /*!< MPU 
1311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_PRIVDEFENA_Msk            (1UL << MPU_CTRL_PRIVDEFENA_Pos)               /*!< MPU 
1312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 25


1313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_HFNMIENA_Pos               1                                             /*!< MPU 
1314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_HFNMIENA_Msk              (1UL << MPU_CTRL_HFNMIENA_Pos)                 /*!< MPU 
1315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_ENABLE_Pos                 0                                             /*!< MPU 
1317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_ENABLE_Msk                (1UL << MPU_CTRL_ENABLE_Pos)                   /*!< MPU 
1318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Number Register */
1320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RNR_REGION_Pos                  0                                             /*!< MPU 
1321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RNR_REGION_Msk                 (0xFFUL << MPU_RNR_REGION_Pos)                 /*!< MPU 
1322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Base Address Register */
1324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_ADDR_Pos                   5                                             /*!< MPU 
1325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_ADDR_Msk                  (0x7FFFFFFUL << MPU_RBAR_ADDR_Pos)             /*!< MPU 
1326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_VALID_Pos                  4                                             /*!< MPU 
1328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_VALID_Msk                 (1UL << MPU_RBAR_VALID_Pos)                    /*!< MPU 
1329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_REGION_Pos                 0                                             /*!< MPU 
1331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_REGION_Msk                (0xFUL << MPU_RBAR_REGION_Pos)                 /*!< MPU 
1332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Attribute and Size Register */
1334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ATTRS_Pos                 16                                             /*!< MPU 
1335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ATTRS_Msk                 (0xFFFFUL << MPU_RASR_ATTRS_Pos)               /*!< MPU 
1336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_XN_Pos                    28                                             /*!< MPU 
1338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_XN_Msk                    (1UL << MPU_RASR_XN_Pos)                       /*!< MPU 
1339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_AP_Pos                    24                                             /*!< MPU 
1341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_AP_Msk                    (0x7UL << MPU_RASR_AP_Pos)                     /*!< MPU 
1342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_TEX_Pos                   19                                             /*!< MPU 
1344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_TEX_Msk                   (0x7UL << MPU_RASR_TEX_Pos)                    /*!< MPU 
1345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_S_Pos                     18                                             /*!< MPU 
1347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_S_Msk                     (1UL << MPU_RASR_S_Pos)                        /*!< MPU 
1348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_C_Pos                     17                                             /*!< MPU 
1350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_C_Msk                     (1UL << MPU_RASR_C_Pos)                        /*!< MPU 
1351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_B_Pos                     16                                             /*!< MPU 
1353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_B_Msk                     (1UL << MPU_RASR_B_Pos)                        /*!< MPU 
1354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SRD_Pos                    8                                             /*!< MPU 
1356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SRD_Msk                   (0xFFUL << MPU_RASR_SRD_Pos)                   /*!< MPU 
1357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SIZE_Pos                   1                                             /*!< MPU 
1359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SIZE_Msk                  (0x1FUL << MPU_RASR_SIZE_Pos)                  /*!< MPU 
1360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ENABLE_Pos                 0                                             /*!< MPU 
1362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ENABLE_Msk                (1UL << MPU_RASR_ENABLE_Pos)                   /*!< MPU 
1363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_MPU */
1365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__FPU_PRESENT == 1)
1369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
ARM GAS  /tmp/cc8RfTnf.s 			page 26


1370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_FPU     Floating Point Unit (FPU)
1371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Floating Point Unit (FPU)
1372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Floating Point Unit (FPU).
1376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
1380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPCCR;                   /*!< Offset: 0x004 (R/W)  Floating-Point Context Control R
1381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPCAR;                   /*!< Offset: 0x008 (R/W)  Floating-Point Context Address R
1382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPDSCR;                  /*!< Offset: 0x00C (R/W)  Floating-Point Default Status Co
1383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR0;                   /*!< Offset: 0x010 (R/ )  Media and FP Feature Register 0 
1384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR1;                   /*!< Offset: 0x014 (R/ )  Media and FP Feature Register 1 
1385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR2;                   /*!< Offset: 0x018 (R/ )  Media and FP Feature Register 2 
1386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } FPU_Type;
1387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Context Control Register */
1389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_ASPEN_Pos                31                                             /*!< FPCC
1390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_ASPEN_Msk                (1UL << FPU_FPCCR_ASPEN_Pos)                   /*!< FPCC
1391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPEN_Pos                30                                             /*!< FPCC
1393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPEN_Msk                (1UL << FPU_FPCCR_LSPEN_Pos)                   /*!< FPCC
1394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MONRDY_Pos                8                                             /*!< FPCC
1396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MONRDY_Msk               (1UL << FPU_FPCCR_MONRDY_Pos)                  /*!< FPCC
1397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_BFRDY_Pos                 6                                             /*!< FPCC
1399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_BFRDY_Msk                (1UL << FPU_FPCCR_BFRDY_Pos)                   /*!< FPCC
1400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MMRDY_Pos                 5                                             /*!< FPCC
1402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MMRDY_Msk                (1UL << FPU_FPCCR_MMRDY_Pos)                   /*!< FPCC
1403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_HFRDY_Pos                 4                                             /*!< FPCC
1405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_HFRDY_Msk                (1UL << FPU_FPCCR_HFRDY_Pos)                   /*!< FPCC
1406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_THREAD_Pos                3                                             /*!< FPCC
1408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_THREAD_Msk               (1UL << FPU_FPCCR_THREAD_Pos)                  /*!< FPCC
1409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_USER_Pos                  1                                             /*!< FPCC
1411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_USER_Msk                 (1UL << FPU_FPCCR_USER_Pos)                    /*!< FPCC
1412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPACT_Pos                0                                             /*!< FPCC
1414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPACT_Msk               (1UL << FPU_FPCCR_LSPACT_Pos)                  /*!< FPCC
1415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Context Address Register */
1417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCAR_ADDRESS_Pos               3                                             /*!< FPCA
1418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCAR_ADDRESS_Msk              (0x1FFFFFFFUL << FPU_FPCAR_ADDRESS_Pos)        /*!< FPCA
1419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Default Status Control Register */
1421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_AHP_Pos                 26                                             /*!< FPDS
1422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_AHP_Msk                 (1UL << FPU_FPDSCR_AHP_Pos)                    /*!< FPDS
1423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_DN_Pos                  25                                             /*!< FPDS
1425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_DN_Msk                  (1UL << FPU_FPDSCR_DN_Pos)                     /*!< FPDS
1426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 27


1427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_FZ_Pos                  24                                             /*!< FPDS
1428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_FZ_Msk                  (1UL << FPU_FPDSCR_FZ_Pos)                     /*!< FPDS
1429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_RMode_Pos               22                                             /*!< FPDS
1431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_RMode_Msk               (3UL << FPU_FPDSCR_RMode_Pos)                  /*!< FPDS
1432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 0 */
1434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_rounding_modes_Pos    28                                             /*!< MVFR
1435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_rounding_modes_Msk    (0xFUL << FPU_MVFR0_FP_rounding_modes_Pos)     /*!< MVFR
1436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Short_vectors_Pos        24                                             /*!< MVFR
1438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Short_vectors_Msk        (0xFUL << FPU_MVFR0_Short_vectors_Pos)         /*!< MVFR
1439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Square_root_Pos          20                                             /*!< MVFR
1441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Square_root_Msk          (0xFUL << FPU_MVFR0_Square_root_Pos)           /*!< MVFR
1442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Divide_Pos               16                                             /*!< MVFR
1444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Divide_Msk               (0xFUL << FPU_MVFR0_Divide_Pos)                /*!< MVFR
1445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_excep_trapping_Pos    12                                             /*!< MVFR
1447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_excep_trapping_Msk    (0xFUL << FPU_MVFR0_FP_excep_trapping_Pos)     /*!< MVFR
1448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Double_precision_Pos      8                                             /*!< MVFR
1450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Double_precision_Msk     (0xFUL << FPU_MVFR0_Double_precision_Pos)      /*!< MVFR
1451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Single_precision_Pos      4                                             /*!< MVFR
1453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Single_precision_Msk     (0xFUL << FPU_MVFR0_Single_precision_Pos)      /*!< MVFR
1454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_A_SIMD_registers_Pos      0                                             /*!< MVFR
1456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_A_SIMD_registers_Msk     (0xFUL << FPU_MVFR0_A_SIMD_registers_Pos)      /*!< MVFR
1457:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 1 */
1459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_fused_MAC_Pos         28                                             /*!< MVFR
1460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_fused_MAC_Msk         (0xFUL << FPU_MVFR1_FP_fused_MAC_Pos)          /*!< MVFR
1461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_HPFP_Pos              24                                             /*!< MVFR
1463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_HPFP_Msk              (0xFUL << FPU_MVFR1_FP_HPFP_Pos)               /*!< MVFR
1464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_D_NaN_mode_Pos            4                                             /*!< MVFR
1466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_D_NaN_mode_Msk           (0xFUL << FPU_MVFR1_D_NaN_mode_Pos)            /*!< MVFR
1467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FtZ_mode_Pos              0                                             /*!< MVFR
1469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FtZ_mode_Msk             (0xFUL << FPU_MVFR1_FtZ_mode_Pos)              /*!< MVFR
1470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1471:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 2 */
1472:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1473:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_FPU */
1474:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1475:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1476:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1477:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1478:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_CoreDebug       Core Debug Registers (CoreDebug)
1479:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Core Debug Registers
1480:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1481:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1482:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1483:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Core Debug Register (CoreDebug).
ARM GAS  /tmp/cc8RfTnf.s 			page 28


1484:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1485:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1486:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1487:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DHCSR;                   /*!< Offset: 0x000 (R/W)  Debug Halting Control and Status
1488:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCRSR;                   /*!< Offset: 0x004 ( /W)  Debug Core Register Selector Reg
1489:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DCRDR;                   /*!< Offset: 0x008 (R/W)  Debug Core Register Data Registe
1490:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DEMCR;                   /*!< Offset: 0x00C (R/W)  Debug Exception and Monitor Cont
1491:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } CoreDebug_Type;
1492:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1493:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Halting Control and Status Register */
1494:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_DBGKEY_Pos         16                                             /*!< Core
1495:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_DBGKEY_Msk         (0xFFFFUL << CoreDebug_DHCSR_DBGKEY_Pos)       /*!< Core
1496:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1497:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RESET_ST_Pos     25                                             /*!< Core
1498:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RESET_ST_Msk     (1UL << CoreDebug_DHCSR_S_RESET_ST_Pos)        /*!< Core
1499:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1500:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Pos    24                                             /*!< Core
1501:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Msk    (1UL << CoreDebug_DHCSR_S_RETIRE_ST_Pos)       /*!< Core
1502:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1503:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_LOCKUP_Pos       19                                             /*!< Core
1504:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_LOCKUP_Msk       (1UL << CoreDebug_DHCSR_S_LOCKUP_Pos)          /*!< Core
1505:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1506:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_SLEEP_Pos        18                                             /*!< Core
1507:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_SLEEP_Msk        (1UL << CoreDebug_DHCSR_S_SLEEP_Pos)           /*!< Core
1508:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1509:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_HALT_Pos         17                                             /*!< Core
1510:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_HALT_Msk         (1UL << CoreDebug_DHCSR_S_HALT_Pos)            /*!< Core
1511:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1512:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_REGRDY_Pos       16                                             /*!< Core
1513:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_REGRDY_Msk       (1UL << CoreDebug_DHCSR_S_REGRDY_Pos)          /*!< Core
1514:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1515:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Pos     5                                             /*!< Core
1516:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Msk    (1UL << CoreDebug_DHCSR_C_SNAPSTALL_Pos)       /*!< Core
1517:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1518:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_MASKINTS_Pos      3                                             /*!< Core
1519:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_MASKINTS_Msk     (1UL << CoreDebug_DHCSR_C_MASKINTS_Pos)        /*!< Core
1520:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1521:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_STEP_Pos          2                                             /*!< Core
1522:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_STEP_Msk         (1UL << CoreDebug_DHCSR_C_STEP_Pos)            /*!< Core
1523:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1524:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_HALT_Pos          1                                             /*!< Core
1525:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_HALT_Msk         (1UL << CoreDebug_DHCSR_C_HALT_Pos)            /*!< Core
1526:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1527:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Pos       0                                             /*!< Core
1528:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Msk      (1UL << CoreDebug_DHCSR_C_DEBUGEN_Pos)         /*!< Core
1529:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1530:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Core Register Selector Register */
1531:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGWnR_Pos         16                                             /*!< Core
1532:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGWnR_Msk         (1UL << CoreDebug_DCRSR_REGWnR_Pos)            /*!< Core
1533:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1534:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGSEL_Pos          0                                             /*!< Core
1535:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGSEL_Msk         (0x1FUL << CoreDebug_DCRSR_REGSEL_Pos)         /*!< Core
1536:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1537:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Exception and Monitor Control Register */
1538:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_TRCENA_Pos         24                                             /*!< Core
1539:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_TRCENA_Msk         (1UL << CoreDebug_DEMCR_TRCENA_Pos)            /*!< Core
1540:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 29


1541:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_REQ_Pos        19                                             /*!< Core
1542:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_REQ_Msk        (1UL << CoreDebug_DEMCR_MON_REQ_Pos)           /*!< Core
1543:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1544:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_STEP_Pos       18                                             /*!< Core
1545:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_STEP_Msk       (1UL << CoreDebug_DEMCR_MON_STEP_Pos)          /*!< Core
1546:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1547:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_PEND_Pos       17                                             /*!< Core
1548:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_PEND_Msk       (1UL << CoreDebug_DEMCR_MON_PEND_Pos)          /*!< Core
1549:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1550:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_EN_Pos         16                                             /*!< Core
1551:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_EN_Msk         (1UL << CoreDebug_DEMCR_MON_EN_Pos)            /*!< Core
1552:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1553:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_HARDERR_Pos     10                                             /*!< Core
1554:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_HARDERR_Msk     (1UL << CoreDebug_DEMCR_VC_HARDERR_Pos)        /*!< Core
1555:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1556:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_INTERR_Pos       9                                             /*!< Core
1557:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_INTERR_Msk      (1UL << CoreDebug_DEMCR_VC_INTERR_Pos)         /*!< Core
1558:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1559:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_BUSERR_Pos       8                                             /*!< Core
1560:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_BUSERR_Msk      (1UL << CoreDebug_DEMCR_VC_BUSERR_Pos)         /*!< Core
1561:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1562:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_STATERR_Pos      7                                             /*!< Core
1563:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_STATERR_Msk     (1UL << CoreDebug_DEMCR_VC_STATERR_Pos)        /*!< Core
1564:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1565:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CHKERR_Pos       6                                             /*!< Core
1566:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CHKERR_Msk      (1UL << CoreDebug_DEMCR_VC_CHKERR_Pos)         /*!< Core
1567:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1568:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Pos      5                                             /*!< Core
1569:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Msk     (1UL << CoreDebug_DEMCR_VC_NOCPERR_Pos)        /*!< Core
1570:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1571:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_MMERR_Pos        4                                             /*!< Core
1572:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_MMERR_Msk       (1UL << CoreDebug_DEMCR_VC_MMERR_Pos)          /*!< Core
1573:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1574:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CORERESET_Pos    0                                             /*!< Core
1575:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CORERESET_Msk   (1UL << CoreDebug_DEMCR_VC_CORERESET_Pos)      /*!< Core
1576:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1577:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_CoreDebug */
1578:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1579:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1580:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
1581:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_core_base     Core Definitions
1582:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Definitions for base addresses, unions, and structures.
1583:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1584:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1585:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1586:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Memory mapping of Cortex-M4 Hardware */
1587:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCS_BASE            (0xE000E000UL)                            /*!< System Control Space Bas
1588:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_BASE            (0xE0000000UL)                            /*!< ITM Base Address        
1589:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_BASE            (0xE0001000UL)                            /*!< DWT Base Address        
1590:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_BASE            (0xE0040000UL)                            /*!< TPI Base Address        
1591:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_BASE      (0xE000EDF0UL)                            /*!< Core Debug Base Address 
1592:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_BASE        (SCS_BASE +  0x0010UL)                    /*!< SysTick Base Address    
1593:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_BASE           (SCS_BASE +  0x0100UL)                    /*!< NVIC Base Address       
1594:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_BASE            (SCS_BASE +  0x0D00UL)                    /*!< System Control Block Bas
1595:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1596:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB              ((SCnSCB_Type    *)     SCS_BASE      )   /*!< System control Register 
1597:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB                 ((SCB_Type       *)     SCB_BASE      )   /*!< SCB configuration struct
ARM GAS  /tmp/cc8RfTnf.s 			page 30


1598:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick             ((SysTick_Type   *)     SysTick_BASE  )   /*!< SysTick configuration st
1599:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC                ((NVIC_Type      *)     NVIC_BASE     )   /*!< NVIC configuration struc
1600:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM                 ((ITM_Type       *)     ITM_BASE      )   /*!< ITM configuration struct
1601:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT                 ((DWT_Type       *)     DWT_BASE      )   /*!< DWT configuration struct
1602:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI                 ((TPI_Type       *)     TPI_BASE      )   /*!< TPI configuration struct
1603:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug           ((CoreDebug_Type *)     CoreDebug_BASE)   /*!< Core Debug configuration
1604:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1605:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__MPU_PRESENT == 1)
1606:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define MPU_BASE          (SCS_BASE +  0x0D90UL)                    /*!< Memory Protection Unit  
1607:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define MPU               ((MPU_Type       *)     MPU_BASE      )   /*!< Memory Protection Unit  
1608:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1609:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1610:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__FPU_PRESENT == 1)
1611:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define FPU_BASE          (SCS_BASE +  0x0F30UL)                    /*!< Floating Point Unit     
1612:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define FPU               ((FPU_Type       *)     FPU_BASE      )   /*!< Floating Point Unit     
1613:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1614:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1615:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} */
1616:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1617:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1618:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1619:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
1620:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                Hardware Abstraction Layer
1621:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Core Function Interface contains:
1622:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core NVIC Functions
1623:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SysTick Functions
1624:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Debug Functions
1625:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Register Access Functions
1626:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
1627:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \defgroup CMSIS_Core_FunctionInterface Functions and Instructions Reference
1628:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
1629:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1630:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1631:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1632:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ##########################   NVIC functions  #################################### */
1633:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_Core_FunctionInterface
1634:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_Core_NVICFunctions NVIC Functions
1635:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Functions that manage interrupts and exceptions via the NVIC.
1636:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     @{
1637:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1638:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1639:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Priority Grouping
1640:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1641:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The function sets the priority grouping field using the required unlock sequence.
1642:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The parameter PriorityGroup is assigned to the field SCB->AIRCR [10:8] PRIGROUP field.
1643:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Only values from 0..7 are used.
1644:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   In case of a conflict between priority grouping and available
1645:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1646:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1647:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      PriorityGroup  Priority grouping field.
1648:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1649:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
1650:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1651:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t reg_value;
1652:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);               /* only values 0..7 a
1653:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1654:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value  =  SCB->AIRCR;                                                   /* read old register 
ARM GAS  /tmp/cc8RfTnf.s 			page 31


1655:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value &= ~(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk);             /* clear bits to chan
1656:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value  =  (reg_value                                 |
1657:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                 ((uint32_t)0x5FA << SCB_AIRCR_VECTKEY_Pos) |
1658:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                 (PriorityGroupTmp << 8));                                     /* Insert write key a
1659:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SCB->AIRCR =  reg_value;
1660:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1661:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1662:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1663:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Priority Grouping
1664:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1665:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The function reads the priority grouping field from the NVIC Interrupt Controller.
1666:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1667:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
1668:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1669:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPriorityGrouping(void)
1670:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1671:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return ((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos);   /* read priority grou
1672:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1673:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1674:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1675:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Enable External Interrupt
1676:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1677:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function enables a device-specific interrupt in the NVIC interrupt controller.
1678:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1679:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1680:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1681:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_EnableIRQ(IRQn_Type IRQn)
1682:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1683:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*  NVIC->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  enable interrupt */
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32
1685:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1686:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1687:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1688:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Disable External Interrupt
1689:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1690:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function disables a device-specific interrupt in the NVIC interrupt controller.
1691:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1692:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1693:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1694:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_DisableIRQ(IRQn_Type IRQn)
1695:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* disable interrupt */
  45              		.loc 2 1696 0
  46 000c 054B     		ldr	r3, .L3+4
  47 000e 0422     		movs	r2, #4
  48              	.LBE7:
  49              	.LBE6:
  13:../libraries/RTCDue/RTCDue.cpp **** 	RTC->RTC_CALR = 0xFFFFFFFF;		// invalidate the current date
  50              		.loc 1 13 0
  51 0010 4FF0FF31 		mov	r1, #-1
  52 0014 E160     		str	r1, [r4, #12]
  53              	.LVL1:
  54              	.LBB9:
  55              	.LBB8:
  56              		.loc 2 1696 0
  57 0016 C3F88020 		str	r2, [r3, #128]
  58              	.LVL2:
ARM GAS  /tmp/cc8RfTnf.s 			page 32


  59              	.LBE8:
  60              	.LBE9:
  61              	.LBB10:
  62              	.LBB11:
1697:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1698:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1699:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1700:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Pending Interrupt
1701:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1702:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function reads the pending register in the NVIC and returns the pending bit
1703:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     for the specified interrupt.
1704:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1705:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
1706:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1707:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             0  Interrupt status is not pending.
1708:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             1  Interrupt status is pending.
1709:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1710:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
1711:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1712:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return((uint32_t) ((NVIC->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); 
1713:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1714:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1715:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1716:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Pending Interrupt
1717:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1718:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function sets the pending bit of an external interrupt.
1719:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1720:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number. Value cannot be negative.
1721:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1722:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPendingIRQ(IRQn_Type IRQn)
1723:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1724:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* set interrupt pending 
1725:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1726:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1727:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1728:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Clear Pending Interrupt
1729:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1730:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function clears the pending bit of an external interrupt.
1731:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1732:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1733:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1734:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
1735:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* Clear pending interrup
  63              		.loc 2 1736 0
  64 001a C3F88021 		str	r2, [r3, #384]
  65              	.LVL3:
  66 001e 10BD     		pop	{r4, pc}
  67              	.L4:
  68              		.align	2
  69              	.L3:
  70 0020 60180E40 		.word	1074665568
  71 0024 00E100E0 		.word	-536813312
  72              	.LBE11:
  73              	.LBE10:
  74              		.cfi_endproc
  75              	.LFE151:
ARM GAS  /tmp/cc8RfTnf.s 			page 33


  76              		.size	_ZN6RTCDue4InitEv, .-_ZN6RTCDue4InitEv
  77              		.section	.text._ZN6RTCDue13IsDateTimeSetEv,"ax",%progbits
  78              		.align	1
  79              		.p2align 2,,3
  80              		.global	_ZN6RTCDue13IsDateTimeSetEv
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv5-d16
  85              		.type	_ZN6RTCDue13IsDateTimeSetEv, %function
  86              	_ZN6RTCDue13IsDateTimeSetEv:
  87              	.LFB152:
  14:../libraries/RTCDue/RTCDue.cpp **** 
  15:../libraries/RTCDue/RTCDue.cpp **** 	// disable RTC alarm interrupts
  16:../libraries/RTCDue/RTCDue.cpp **** 	NVIC_DisableIRQ(RTC_IRQn);
  17:../libraries/RTCDue/RTCDue.cpp **** 	NVIC_ClearPendingIRQ(RTC_IRQn);
  18:../libraries/RTCDue/RTCDue.cpp **** }
  19:../libraries/RTCDue/RTCDue.cpp **** 
  20:../libraries/RTCDue/RTCDue.cpp **** bool RTCDue::IsDateTimeSet()
  21:../libraries/RTCDue/RTCDue.cpp **** {
  88              		.loc 1 21 0
  89              		.cfi_startproc
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92 0000 08B5     		push	{r3, lr}
  93              		.cfi_def_cfa_offset 8
  94              		.cfi_offset 3, -8
  95              		.cfi_offset 14, -4
  22:../libraries/RTCDue/RTCDue.cpp **** 	return rtc_get_valid_entry(RTC) == 0;
  96              		.loc 1 22 0
  97 0002 0348     		ldr	r0, .L7
  98 0004 FFF7FEFF 		bl	rtc_get_valid_entry
  99              	.LVL4:
  23:../libraries/RTCDue/RTCDue.cpp **** }
 100              		.loc 1 23 0
 101 0008 B0FA80F0 		clz	r0, r0
 102 000c 4009     		lsrs	r0, r0, #5
 103 000e 08BD     		pop	{r3, pc}
 104              	.L8:
 105              		.align	2
 106              	.L7:
 107 0010 60180E40 		.word	1074665568
 108              		.cfi_endproc
 109              	.LFE152:
 110              		.size	_ZN6RTCDue13IsDateTimeSetEv, .-_ZN6RTCDue13IsDateTimeSetEv
 111              		.section	.text._ZN6RTCDue11GetDateTimeEv,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	_ZN6RTCDue11GetDateTimeEv
 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv5-d16
 119              		.type	_ZN6RTCDue11GetDateTimeEv, %function
 120              	_ZN6RTCDue11GetDateTimeEv:
 121              	.LFB153:
  24:../libraries/RTCDue/RTCDue.cpp **** 
ARM GAS  /tmp/cc8RfTnf.s 			page 34


  25:../libraries/RTCDue/RTCDue.cpp **** time_t RTCDue::GetDateTime()
  26:../libraries/RTCDue/RTCDue.cpp **** {
 122              		.loc 1 26 0
 123              		.cfi_startproc
 124              		@ args = 0, pretend = 0, frame = 64
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126 0000 70B5     		push	{r4, r5, r6, lr}
 127              		.cfi_def_cfa_offset 16
 128              		.cfi_offset 4, -16
 129              		.cfi_offset 5, -12
 130              		.cfi_offset 6, -8
 131              		.cfi_offset 14, -4
  27:../libraries/RTCDue/RTCDue.cpp **** 	uint32_t hour, minute, second;
  28:../libraries/RTCDue/RTCDue.cpp **** 	rtc_get_time(RTC, &hour, &minute, &second);
 132              		.loc 1 28 0
 133 0002 144C     		ldr	r4, .L11
  26:../libraries/RTCDue/RTCDue.cpp **** 	uint32_t hour, minute, second;
 134              		.loc 1 26 0
 135 0004 92B0     		sub	sp, sp, #72
 136              		.cfi_def_cfa_offset 88
 137              		.loc 1 28 0
 138 0006 2046     		mov	r0, r4
 139 0008 04AB     		add	r3, sp, #16
 140 000a 03AA     		add	r2, sp, #12
 141 000c 02A9     		add	r1, sp, #8
 142 000e FFF7FEFF 		bl	rtc_get_time
 143              	.LVL5:
  29:../libraries/RTCDue/RTCDue.cpp **** 
  30:../libraries/RTCDue/RTCDue.cpp **** 	uint32_t year, month, day, week;
  31:../libraries/RTCDue/RTCDue.cpp **** 	rtc_get_date(RTC, &year, &month, &day, &week);
 144              		.loc 1 31 0
 145 0012 08AA     		add	r2, sp, #32
 146 0014 07AB     		add	r3, sp, #28
 147 0016 2046     		mov	r0, r4
 148 0018 0092     		str	r2, [sp]
 149 001a 05A9     		add	r1, sp, #20
 150 001c 06AA     		add	r2, sp, #24
 151 001e FFF7FEFF 		bl	rtc_get_date
 152              	.LVL6:
  32:../libraries/RTCDue/RTCDue.cpp **** 
  33:../libraries/RTCDue/RTCDue.cpp **** 	struct tm timeInfo;
  34:../libraries/RTCDue/RTCDue.cpp **** 	memset(&timeInfo, 0, sizeof(tm));
 153              		.loc 1 34 0
 154 0022 09A8     		add	r0, sp, #36
 155 0024 2422     		movs	r2, #36
 156 0026 0021     		movs	r1, #0
 157 0028 FFF7FEFF 		bl	memset
 158              	.LVL7:
  35:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_sec = second;
  36:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_min = minute;
  37:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_hour = hour;
  38:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_mday = day;
  39:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_mon = month - 1;
 159              		.loc 1 39 0
 160 002c 069A     		ldr	r2, [sp, #24]
  40:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_year = year - 1900;
 161              		.loc 1 40 0
ARM GAS  /tmp/cc8RfTnf.s 			page 35


 162 002e 059B     		ldr	r3, [sp, #20]
  41:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_isdst = 0;
  42:../libraries/RTCDue/RTCDue.cpp **** 	return mktime(&timeInfo);
 163              		.loc 1 42 0
 164 0030 09A8     		add	r0, sp, #36
  39:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_year = year - 1900;
 165              		.loc 1 39 0
 166 0032 013A     		subs	r2, r2, #1
  35:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_min = minute;
 167              		.loc 1 35 0
 168 0034 049E     		ldr	r6, [sp, #16]
  40:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_isdst = 0;
 169              		.loc 1 40 0
 170 0036 A3F26C73 		subw	r3, r3, #1900
  36:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_hour = hour;
 171              		.loc 1 36 0
 172 003a 039D     		ldr	r5, [sp, #12]
  37:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_mday = day;
 173              		.loc 1 37 0
 174 003c 029C     		ldr	r4, [sp, #8]
  38:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_mon = month - 1;
 175              		.loc 1 38 0
 176 003e 0799     		ldr	r1, [sp, #28]
  39:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_year = year - 1900;
 177              		.loc 1 39 0
 178 0040 0D92     		str	r2, [sp, #52]
  40:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_isdst = 0;
 179              		.loc 1 40 0
 180 0042 0E93     		str	r3, [sp, #56]
  35:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_min = minute;
 181              		.loc 1 35 0
 182 0044 0996     		str	r6, [sp, #36]
  36:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_hour = hour;
 183              		.loc 1 36 0
 184 0046 0A95     		str	r5, [sp, #40]
  37:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_mday = day;
 185              		.loc 1 37 0
 186 0048 0B94     		str	r4, [sp, #44]
  38:../libraries/RTCDue/RTCDue.cpp **** 	timeInfo.tm_mon = month - 1;
 187              		.loc 1 38 0
 188 004a 0C91     		str	r1, [sp, #48]
 189              		.loc 1 42 0
 190 004c FFF7FEFF 		bl	mktime
 191              	.LVL8:
  43:../libraries/RTCDue/RTCDue.cpp **** }
 192              		.loc 1 43 0
 193 0050 12B0     		add	sp, sp, #72
 194              		.cfi_def_cfa_offset 16
 195              		@ sp needed
 196 0052 70BD     		pop	{r4, r5, r6, pc}
 197              	.L12:
 198              		.align	2
 199              	.L11:
 200 0054 60180E40 		.word	1074665568
 201              		.cfi_endproc
 202              	.LFE153:
 203              		.size	_ZN6RTCDue11GetDateTimeEv, .-_ZN6RTCDue11GetDateTimeEv
ARM GAS  /tmp/cc8RfTnf.s 			page 36


 204              		.section	.text._ZN6RTCDue7SetDateEl,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	_ZN6RTCDue7SetDateEl
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu fpv5-d16
 212              		.type	_ZN6RTCDue7SetDateEl, %function
 213              	_ZN6RTCDue7SetDateEl:
 214              	.LFB156:
  44:../libraries/RTCDue/RTCDue.cpp **** 
  45:../libraries/RTCDue/RTCDue.cpp **** bool RTCDue::SetDateTime(time_t datetime)
  46:../libraries/RTCDue/RTCDue.cpp **** {
  47:../libraries/RTCDue/RTCDue.cpp **** 	return SetDate(datetime) && SetTime(datetime);
  48:../libraries/RTCDue/RTCDue.cpp **** }
  49:../libraries/RTCDue/RTCDue.cpp **** 
  50:../libraries/RTCDue/RTCDue.cpp **** // This function has been copied from the ASF RTC example
  51:../libraries/RTCDue/RTCDue.cpp **** static uint32_t calculate_week(uint32_t ul_year, uint32_t ul_month, uint32_t ul_day)
  52:../libraries/RTCDue/RTCDue.cpp **** {
  53:../libraries/RTCDue/RTCDue.cpp **** 	if (ul_month == 1 || ul_month == 2)
  54:../libraries/RTCDue/RTCDue.cpp **** 	{
  55:../libraries/RTCDue/RTCDue.cpp **** 		ul_month += 12;
  56:../libraries/RTCDue/RTCDue.cpp **** 		--ul_year;
  57:../libraries/RTCDue/RTCDue.cpp **** 	}
  58:../libraries/RTCDue/RTCDue.cpp **** 
  59:../libraries/RTCDue/RTCDue.cpp **** 	const uint32_t ul_week = (ul_day + 2 * ul_month + 3 * (ul_month + 1) / 5 + ul_year + ul_year / 4 -
  60:../libraries/RTCDue/RTCDue.cpp **** 
  61:../libraries/RTCDue/RTCDue.cpp **** 	return ul_week + 1;
  62:../libraries/RTCDue/RTCDue.cpp **** }
  63:../libraries/RTCDue/RTCDue.cpp **** 
  64:../libraries/RTCDue/RTCDue.cpp **** bool RTCDue::SetDate(time_t date)
  65:../libraries/RTCDue/RTCDue.cpp **** {
 215              		.loc 1 65 0
 216              		.cfi_startproc
 217              		@ args = 0, pretend = 0, frame = 8
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219              	.LVL9:
 220 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 221              		.cfi_def_cfa_offset 20
 222              		.cfi_offset 4, -20
 223              		.cfi_offset 5, -16
 224              		.cfi_offset 6, -12
 225              		.cfi_offset 7, -8
 226              		.cfi_offset 14, -4
 227 0002 85B0     		sub	sp, sp, #20
 228              		.cfi_def_cfa_offset 40
 229              		.loc 1 65 0
 230 0004 04AB     		add	r3, sp, #16
 231 0006 43F8040D 		str	r0, [r3, #-4]!
  66:../libraries/RTCDue/RTCDue.cpp **** 	const struct tm * const timeInfo = gmtime(&date);
 232              		.loc 1 66 0
 233 000a 1846     		mov	r0, r3
 234              	.LVL10:
 235 000c FFF7FEFF 		bl	gmtime
 236              	.LVL11:
  67:../libraries/RTCDue/RTCDue.cpp **** 	const uint32_t week = calculate_week(timeInfo->tm_year + 1900, timeInfo->tm_mon + 1, timeInfo->tm_
ARM GAS  /tmp/cc8RfTnf.s 			page 37


 237              		.loc 1 67 0
 238 0010 0669     		ldr	r6, [r0, #16]
 239 0012 4569     		ldr	r5, [r0, #20]
 240              	.LBB14:
 241              	.LBB15:
  53:../libraries/RTCDue/RTCDue.cpp **** 	{
 242              		.loc 1 53 0
 243 0014 012E     		cmp	r6, #1
 244              	.LBE15:
 245              	.LBE14:
 246              		.loc 1 67 0
 247 0016 C368     		ldr	r3, [r0, #12]
 248 0018 05F26C71 		addw	r1, r5, #1900
 249              	.LVL12:
 250 001c 06F10102 		add	r2, r6, #1
 251              	.LVL13:
 252              	.LBB19:
 253              	.LBB16:
  53:../libraries/RTCDue/RTCDue.cpp **** 	{
 254              		.loc 1 53 0
 255 0020 29D9     		bls	.L18
 256 0022 1646     		mov	r6, r2
 257 0024 0D46     		mov	r5, r1
 258              	.LVL14:
 259              	.L14:
  59:../libraries/RTCDue/RTCDue.cpp **** 
 260              		.loc 1 59 0
 261 0026 5C19     		adds	r4, r3, r5
 262 0028 154F     		ldr	r7, .L19
 263 002a 701C     		adds	r0, r6, #1
 264              	.LVL15:
 265 002c 04EB4604 		add	r4, r4, r6, lsl #1
 266 0030 A7FB0567 		umull	r6, r7, r7, r5
 267 0034 00EB4000 		add	r0, r0, r0, lsl #1
 268 0038 124E     		ldr	r6, .L19+4
 269 003a 04EB9504 		add	r4, r4, r5, lsr #2
 270 003e 124D     		ldr	r5, .L19+8
 271 0040 A6FB0006 		umull	r0, r6, r6, r0
 272              	.LBE16:
 273              	.LBE19:
  68:../libraries/RTCDue/RTCDue.cpp **** 	return rtc_set_date(RTC, timeInfo->tm_year + 1900, timeInfo->tm_mon + 1, timeInfo->tm_mday, week) 
 274              		.loc 1 68 0
 275 0044 1148     		ldr	r0, .L19+12
 276              	.LBB20:
 277              	.LBB17:
  59:../libraries/RTCDue/RTCDue.cpp **** 
 278              		.loc 1 59 0
 279 0046 04EBD714 		add	r4, r4, r7, lsr #7
 280 004a A4EB5714 		sub	r4, r4, r7, lsr #5
 281 004e 04EB9604 		add	r4, r4, r6, lsr #2
 282 0052 A5FB0465 		umull	r6, r5, r5, r4
 283 0056 661B     		subs	r6, r4, r5
 284 0058 05EB5605 		add	r5, r5, r6, lsr #1
 285 005c AD08     		lsrs	r5, r5, #2
 286 005e C5EBC505 		rsb	r5, r5, r5, lsl #3
 287 0062 641B     		subs	r4, r4, r5
  61:../libraries/RTCDue/RTCDue.cpp **** }
ARM GAS  /tmp/cc8RfTnf.s 			page 38


 288              		.loc 1 61 0
 289 0064 0134     		adds	r4, r4, #1
 290              	.LBE17:
 291              	.LBE20:
 292              		.loc 1 68 0
 293 0066 0094     		str	r4, [sp]
 294 0068 FFF7FEFF 		bl	rtc_set_date
 295              	.LVL16:
  69:../libraries/RTCDue/RTCDue.cpp **** }
 296              		.loc 1 69 0
 297 006c B0FA80F0 		clz	r0, r0
 298 0070 4009     		lsrs	r0, r0, #5
 299 0072 05B0     		add	sp, sp, #20
 300              		.cfi_remember_state
 301              		.cfi_def_cfa_offset 20
 302              		@ sp needed
 303 0074 F0BD     		pop	{r4, r5, r6, r7, pc}
 304              	.LVL17:
 305              	.L18:
 306              		.cfi_restore_state
 307              	.LBB21:
 308              	.LBB18:
  55:../libraries/RTCDue/RTCDue.cpp **** 		--ul_year;
 309              		.loc 1 55 0
 310 0076 0D36     		adds	r6, r6, #13
 311              	.LVL18:
  56:../libraries/RTCDue/RTCDue.cpp **** 	}
 312              		.loc 1 56 0
 313 0078 05F26B75 		addw	r5, r5, #1899
 314              	.LVL19:
 315 007c D3E7     		b	.L14
 316              	.L20:
 317 007e 00BF     		.align	2
 318              	.L19:
 319 0080 1F85EB51 		.word	1374389535
 320 0084 CDCCCCCC 		.word	-858993459
 321 0088 25499224 		.word	613566757
 322 008c 60180E40 		.word	1074665568
 323              	.LBE18:
 324              	.LBE21:
 325              		.cfi_endproc
 326              	.LFE156:
 327              		.size	_ZN6RTCDue7SetDateEl, .-_ZN6RTCDue7SetDateEl
 328              		.section	.text._ZN6RTCDue7SetTimeEl,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	_ZN6RTCDue7SetTimeEl
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv5-d16
 336              		.type	_ZN6RTCDue7SetTimeEl, %function
 337              	_ZN6RTCDue7SetTimeEl:
 338              	.LFB157:
  70:../libraries/RTCDue/RTCDue.cpp **** 
  71:../libraries/RTCDue/RTCDue.cpp **** bool RTCDue::SetTime(time_t time)
  72:../libraries/RTCDue/RTCDue.cpp **** {
ARM GAS  /tmp/cc8RfTnf.s 			page 39


 339              		.loc 1 72 0
 340              		.cfi_startproc
 341              		@ args = 0, pretend = 0, frame = 8
 342              		@ frame_needed = 0, uses_anonymous_args = 0
 343              	.LVL20:
 344 0000 00B5     		push	{lr}
 345              		.cfi_def_cfa_offset 4
 346              		.cfi_offset 14, -4
 347 0002 83B0     		sub	sp, sp, #12
 348              		.cfi_def_cfa_offset 16
 349              		.loc 1 72 0
 350 0004 02AB     		add	r3, sp, #8
 351 0006 43F8040D 		str	r0, [r3, #-4]!
  73:../libraries/RTCDue/RTCDue.cpp **** 	const struct tm * const timeInfo = gmtime(&time);
 352              		.loc 1 73 0
 353 000a 1846     		mov	r0, r3
 354              	.LVL21:
 355 000c FFF7FEFF 		bl	gmtime
 356              	.LVL22:
 357 0010 0146     		mov	r1, r0
 358              	.LVL23:
  74:../libraries/RTCDue/RTCDue.cpp **** 	return rtc_set_time(RTC, timeInfo->tm_hour, timeInfo->tm_min, timeInfo->tm_sec) == 0;
 359              		.loc 1 74 0
 360 0012 0648     		ldr	r0, .L23
 361              	.LVL24:
 362 0014 0B68     		ldr	r3, [r1]
 363 0016 4A68     		ldr	r2, [r1, #4]
 364 0018 8968     		ldr	r1, [r1, #8]
 365              	.LVL25:
 366 001a FFF7FEFF 		bl	rtc_set_time
 367              	.LVL26:
  75:../libraries/RTCDue/RTCDue.cpp **** }
 368              		.loc 1 75 0
 369 001e B0FA80F0 		clz	r0, r0
 370 0022 4009     		lsrs	r0, r0, #5
 371 0024 03B0     		add	sp, sp, #12
 372              		.cfi_def_cfa_offset 4
 373              		@ sp needed
 374 0026 5DF804FB 		ldr	pc, [sp], #4
 375              	.L24:
 376 002a 00BF     		.align	2
 377              	.L23:
 378 002c 60180E40 		.word	1074665568
 379              		.cfi_endproc
 380              	.LFE157:
 381              		.size	_ZN6RTCDue7SetTimeEl, .-_ZN6RTCDue7SetTimeEl
 382              		.section	.text._ZN6RTCDue11SetDateTimeEl,"ax",%progbits
 383              		.align	1
 384              		.p2align 2,,3
 385              		.global	_ZN6RTCDue11SetDateTimeEl
 386              		.syntax unified
 387              		.thumb
 388              		.thumb_func
 389              		.fpu fpv5-d16
 390              		.type	_ZN6RTCDue11SetDateTimeEl, %function
 391              	_ZN6RTCDue11SetDateTimeEl:
 392              	.LFB154:
ARM GAS  /tmp/cc8RfTnf.s 			page 40


  46:../libraries/RTCDue/RTCDue.cpp **** 	return SetDate(datetime) && SetTime(datetime);
 393              		.loc 1 46 0
 394              		.cfi_startproc
 395              		@ args = 0, pretend = 0, frame = 0
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397              	.LVL27:
 398 0000 10B5     		push	{r4, lr}
 399              		.cfi_def_cfa_offset 8
 400              		.cfi_offset 4, -8
 401              		.cfi_offset 14, -4
  46:../libraries/RTCDue/RTCDue.cpp **** 	return SetDate(datetime) && SetTime(datetime);
 402              		.loc 1 46 0
 403 0002 0446     		mov	r4, r0
  47:../libraries/RTCDue/RTCDue.cpp **** }
 404              		.loc 1 47 0
 405 0004 FFF7FEFF 		bl	_ZN6RTCDue7SetDateEl
 406              	.LVL28:
 407 0008 00B9     		cbnz	r0, .L28
  48:../libraries/RTCDue/RTCDue.cpp **** 
 408              		.loc 1 48 0 discriminator 6
 409 000a 10BD     		pop	{r4, pc}
 410              	.LVL29:
 411              	.L28:
  47:../libraries/RTCDue/RTCDue.cpp **** }
 412              		.loc 1 47 0 discriminator 1
 413 000c 2046     		mov	r0, r4
  48:../libraries/RTCDue/RTCDue.cpp **** 
 414              		.loc 1 48 0 discriminator 1
 415 000e BDE81040 		pop	{r4, lr}
 416              		.cfi_restore 14
 417              		.cfi_restore 4
 418              		.cfi_def_cfa_offset 0
 419              	.LVL30:
  47:../libraries/RTCDue/RTCDue.cpp **** }
 420              		.loc 1 47 0 discriminator 1
 421 0012 FFF7FEBF 		b	_ZN6RTCDue7SetTimeEl
 422              	.LVL31:
 423              		.cfi_endproc
 424              	.LFE154:
 425              		.size	_ZN6RTCDue11SetDateTimeEl, .-_ZN6RTCDue11SetDateTimeEl
 426 0016 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 427              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 428              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 429              	_ZL28cpu_irq_prev_interrupt_state:
 430 0000 00       		.space	1
 431              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 432              		.align	2
 433              		.type	_ZL32cpu_irq_critical_section_counter, %object
 434              		.size	_ZL32cpu_irq_critical_section_counter, 4
 435              	_ZL32cpu_irq_critical_section_counter:
 436 0000 00000000 		.space	4
 437              		.text
 438              	.Letext0:
 439              		.file 3 "/usr/include/newlib/c++/6.3.1/ctime"
 440              		.file 4 "/usr/include/newlib/c++/6.3.1/cstdlib"
 441              		.file 5 "/usr/include/newlib/c++/6.3.1/cstring"
 442              		.file 6 "/usr/include/newlib/c++/6.3.1/arm-none-eabi/thumb/v7e-m/fpv5/hard/bits/c++config.h"
ARM GAS  /tmp/cc8RfTnf.s 			page 41


 443              		.file 7 "/usr/include/newlib/machine/_default_types.h"
 444              		.file 8 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 445              		.file 9 "/usr/include/newlib/sys/lock.h"
 446              		.file 10 "/usr/include/newlib/sys/_types.h"
 447              		.file 11 "/usr/include/newlib/sys/reent.h"
 448              		.file 12 "/usr/include/newlib/sys/_stdint.h"
 449              		.file 13 "/usr/include/newlib/sys/_timeval.h"
 450              		.file 14 "/usr/include/newlib/sys/types.h"
 451              		.file 15 "/usr/include/newlib/time.h"
 452              		.file 16 "../libraries/RTCDue/RTCDue.h"
 453              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/same70q21.h"
 454              		.file 18 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 455              		.file 19 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/rtc
 456              		.file 20 "/usr/include/newlib/stdlib.h"
 457              		.file 21 "/usr/include/newlib/c++/6.3.1/stdlib.h"
 458              		.file 22 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 459              		.file 23 "/usr/include/newlib/string.h"
 460              		.file 24 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/rtc/rtc.h"
 461              		.file 25 "<built-in>"
 462              		.section	.debug_info,"",%progbits
 463              	.Ldebug_info0:
 464 0000 0F190000 		.4byte	0x190f
 465 0004 0400     		.2byte	0x4
 466 0006 00000000 		.4byte	.Ldebug_abbrev0
 467 000a 04       		.byte	0x4
 468 000b 01       		.uleb128 0x1
 469 000c B5090000 		.4byte	.LASF325
 470 0010 04       		.byte	0x4
 471 0011 CC030000 		.4byte	.LASF326
 472 0015 4D0C0000 		.4byte	.LASF327
 473 0019 40000000 		.4byte	.Ldebug_ranges0+0x40
 474 001d 00000000 		.4byte	0
 475 0021 00000000 		.4byte	.Ldebug_line0
 476 0025 02       		.uleb128 0x2
 477 0026 73746400 		.ascii	"std\000"
 478 002a 19       		.byte	0x19
 479 002b 00       		.byte	0
 480 002c A2010000 		.4byte	0x1a2
 481 0030 03       		.uleb128 0x3
 482 0031 CE060000 		.4byte	.LASF1
 483 0035 06       		.byte	0x6
 484 0036 DF       		.byte	0xdf
 485 0037 04       		.uleb128 0x4
 486 0038 06       		.byte	0x6
 487 0039 DF       		.byte	0xdf
 488 003a 30000000 		.4byte	0x30
 489 003e 05       		.uleb128 0x5
 490 003f 03       		.byte	0x3
 491 0040 3C       		.byte	0x3c
 492 0041 E10A0000 		.4byte	0xae1
 493 0045 05       		.uleb128 0x5
 494 0046 03       		.byte	0x3
 495 0047 3D       		.byte	0x3d
 496 0048 D10A0000 		.4byte	0xad1
 497 004c 05       		.uleb128 0x5
 498 004d 03       		.byte	0x3
 499 004e 3E       		.byte	0x3e
ARM GAS  /tmp/cc8RfTnf.s 			page 42


 500 004f EC0A0000 		.4byte	0xaec
 501 0053 05       		.uleb128 0x5
 502 0054 03       		.byte	0x3
 503 0055 40       		.byte	0x40
 504 0056 9A0B0000 		.4byte	0xb9a
 505 005a 05       		.uleb128 0x5
 506 005b 03       		.byte	0x3
 507 005c 41       		.byte	0x41
 508 005d A50B0000 		.4byte	0xba5
 509 0061 05       		.uleb128 0x5
 510 0062 03       		.byte	0x3
 511 0063 42       		.byte	0x42
 512 0064 C60B0000 		.4byte	0xbc6
 513 0068 05       		.uleb128 0x5
 514 0069 03       		.byte	0x3
 515 006a 43       		.byte	0x43
 516 006b E10B0000 		.4byte	0xbe1
 517 006f 05       		.uleb128 0x5
 518 0070 03       		.byte	0x3
 519 0071 44       		.byte	0x44
 520 0072 FC0B0000 		.4byte	0xbfc
 521 0076 05       		.uleb128 0x5
 522 0077 03       		.byte	0x3
 523 0078 45       		.byte	0x45
 524 0079 1C0C0000 		.4byte	0xc1c
 525 007d 05       		.uleb128 0x5
 526 007e 03       		.byte	0x3
 527 007f 46       		.byte	0x46
 528 0080 370C0000 		.4byte	0xc37
 529 0084 05       		.uleb128 0x5
 530 0085 03       		.byte	0x3
 531 0086 47       		.byte	0x47
 532 0087 4C0C0000 		.4byte	0xc4c
 533 008b 05       		.uleb128 0x5
 534 008c 03       		.byte	0x3
 535 008d 48       		.byte	0x48
 536 008e 610C0000 		.4byte	0xc61
 537 0092 05       		.uleb128 0x5
 538 0093 04       		.byte	0x4
 539 0094 7C       		.byte	0x7c
 540 0095 CD100000 		.4byte	0x10cd
 541 0099 05       		.uleb128 0x5
 542 009a 04       		.byte	0x4
 543 009b 7D       		.byte	0x7d
 544 009c FD100000 		.4byte	0x10fd
 545 00a0 05       		.uleb128 0x5
 546 00a1 04       		.byte	0x4
 547 00a2 81       		.byte	0x81
 548 00a3 6F110000 		.4byte	0x116f
 549 00a7 05       		.uleb128 0x5
 550 00a8 04       		.byte	0x4
 551 00a9 87       		.byte	0x87
 552 00aa 84110000 		.4byte	0x1184
 553 00ae 05       		.uleb128 0x5
 554 00af 04       		.byte	0x4
 555 00b0 88       		.byte	0x88
 556 00b1 99110000 		.4byte	0x1199
ARM GAS  /tmp/cc8RfTnf.s 			page 43


 557 00b5 05       		.uleb128 0x5
 558 00b6 04       		.byte	0x4
 559 00b7 89       		.byte	0x89
 560 00b8 AE110000 		.4byte	0x11ae
 561 00bc 05       		.uleb128 0x5
 562 00bd 04       		.byte	0x4
 563 00be 8A       		.byte	0x8a
 564 00bf C3110000 		.4byte	0x11c3
 565 00c3 05       		.uleb128 0x5
 566 00c4 04       		.byte	0x4
 567 00c5 8C       		.byte	0x8c
 568 00c6 EC110000 		.4byte	0x11ec
 569 00ca 05       		.uleb128 0x5
 570 00cb 04       		.byte	0x4
 571 00cc 8F       		.byte	0x8f
 572 00cd 06120000 		.4byte	0x1206
 573 00d1 05       		.uleb128 0x5
 574 00d2 04       		.byte	0x4
 575 00d3 91       		.byte	0x91
 576 00d4 1B120000 		.4byte	0x121b
 577 00d8 05       		.uleb128 0x5
 578 00d9 04       		.byte	0x4
 579 00da 94       		.byte	0x94
 580 00db 35120000 		.4byte	0x1235
 581 00df 05       		.uleb128 0x5
 582 00e0 04       		.byte	0x4
 583 00e1 95       		.byte	0x95
 584 00e2 4F120000 		.4byte	0x124f
 585 00e6 05       		.uleb128 0x5
 586 00e7 04       		.byte	0x4
 587 00e8 96       		.byte	0x96
 588 00e9 80120000 		.4byte	0x1280
 589 00ed 05       		.uleb128 0x5
 590 00ee 04       		.byte	0x4
 591 00ef 98       		.byte	0x98
 592 00f0 9F120000 		.4byte	0x129f
 593 00f4 05       		.uleb128 0x5
 594 00f5 04       		.byte	0x4
 595 00f6 9E       		.byte	0x9e
 596 00f7 BF120000 		.4byte	0x12bf
 597 00fb 05       		.uleb128 0x5
 598 00fc 04       		.byte	0x4
 599 00fd A0       		.byte	0xa0
 600 00fe CA120000 		.4byte	0x12ca
 601 0102 05       		.uleb128 0x5
 602 0103 04       		.byte	0x4
 603 0104 A1       		.byte	0xa1
 604 0105 DB120000 		.4byte	0x12db
 605 0109 05       		.uleb128 0x5
 606 010a 04       		.byte	0x4
 607 010b A2       		.byte	0xa2
 608 010c FB120000 		.4byte	0x12fb
 609 0110 05       		.uleb128 0x5
 610 0111 04       		.byte	0x4
 611 0112 A3       		.byte	0xa3
 612 0113 1A130000 		.4byte	0x131a
 613 0117 05       		.uleb128 0x5
ARM GAS  /tmp/cc8RfTnf.s 			page 44


 614 0118 04       		.byte	0x4
 615 0119 A4       		.byte	0xa4
 616 011a 39130000 		.4byte	0x1339
 617 011e 05       		.uleb128 0x5
 618 011f 04       		.byte	0x4
 619 0120 A6       		.byte	0xa6
 620 0121 4E130000 		.4byte	0x134e
 621 0125 05       		.uleb128 0x5
 622 0126 04       		.byte	0x4
 623 0127 A7       		.byte	0xa7
 624 0128 73130000 		.4byte	0x1373
 625 012c 06       		.uleb128 0x6
 626 012d 04       		.byte	0x4
 627 012e 0401     		.2byte	0x104
 628 0130 2D110000 		.4byte	0x112d
 629 0134 06       		.uleb128 0x6
 630 0135 04       		.byte	0x4
 631 0136 0901     		.2byte	0x109
 632 0138 EC010000 		.4byte	0x1ec
 633 013c 06       		.uleb128 0x6
 634 013d 04       		.byte	0x4
 635 013e 0A01     		.2byte	0x10a
 636 0140 8D130000 		.4byte	0x138d
 637 0144 06       		.uleb128 0x6
 638 0145 04       		.byte	0x4
 639 0146 0C01     		.2byte	0x10c
 640 0148 A7130000 		.4byte	0x13a7
 641 014c 06       		.uleb128 0x6
 642 014d 04       		.byte	0x4
 643 014e 0D01     		.2byte	0x10d
 644 0150 FA130000 		.4byte	0x13fa
 645 0154 06       		.uleb128 0x6
 646 0155 04       		.byte	0x4
 647 0156 0E01     		.2byte	0x10e
 648 0158 BC130000 		.4byte	0x13bc
 649 015c 06       		.uleb128 0x6
 650 015d 04       		.byte	0x4
 651 015e 0F01     		.2byte	0x10f
 652 0160 DB130000 		.4byte	0x13db
 653 0164 06       		.uleb128 0x6
 654 0165 04       		.byte	0x4
 655 0166 1001     		.2byte	0x110
 656 0168 1B140000 		.4byte	0x141b
 657 016c 07       		.uleb128 0x7
 658 016d 61627300 		.ascii	"abs\000"
 659 0171 04       		.byte	0x4
 660 0172 B4       		.byte	0xb4
 661 0173 82020000 		.4byte	.LASF328
 662 0177 52020000 		.4byte	0x252
 663 017b 85010000 		.4byte	0x185
 664 017f 08       		.uleb128 0x8
 665 0180 52020000 		.4byte	0x252
 666 0184 00       		.byte	0
 667 0185 05       		.uleb128 0x5
 668 0186 05       		.byte	0x5
 669 0187 52       		.byte	0x52
 670 0188 04150000 		.4byte	0x1504
ARM GAS  /tmp/cc8RfTnf.s 			page 45


 671 018c 05       		.uleb128 0x5
 672 018d 05       		.byte	0x5
 673 018e 55       		.byte	0x55
 674 018f 1E150000 		.4byte	0x151e
 675 0193 05       		.uleb128 0x5
 676 0194 05       		.byte	0x5
 677 0195 5B       		.byte	0x5b
 678 0196 33150000 		.4byte	0x1533
 679 019a 05       		.uleb128 0x5
 680 019b 05       		.byte	0x5
 681 019c 5C       		.byte	0x5c
 682 019d 4D150000 		.4byte	0x154d
 683 01a1 00       		.byte	0
 684 01a2 09       		.uleb128 0x9
 685 01a3 B3000000 		.4byte	.LASF0
 686 01a7 06       		.byte	0x6
 687 01a8 E1       		.byte	0xe1
 688 01a9 07020000 		.4byte	0x207
 689 01ad 03       		.uleb128 0x3
 690 01ae CE060000 		.4byte	.LASF1
 691 01b2 06       		.byte	0x6
 692 01b3 E3       		.byte	0xe3
 693 01b4 04       		.uleb128 0x4
 694 01b5 06       		.byte	0x6
 695 01b6 E3       		.byte	0xe3
 696 01b7 AD010000 		.4byte	0x1ad
 697 01bb 05       		.uleb128 0x5
 698 01bc 04       		.byte	0x4
 699 01bd DC       		.byte	0xdc
 700 01be 2D110000 		.4byte	0x112d
 701 01c2 05       		.uleb128 0x5
 702 01c3 04       		.byte	0x4
 703 01c4 EC       		.byte	0xec
 704 01c5 8D130000 		.4byte	0x138d
 705 01c9 05       		.uleb128 0x5
 706 01ca 04       		.byte	0x4
 707 01cb F7       		.byte	0xf7
 708 01cc A7130000 		.4byte	0x13a7
 709 01d0 05       		.uleb128 0x5
 710 01d1 04       		.byte	0x4
 711 01d2 F8       		.byte	0xf8
 712 01d3 BC130000 		.4byte	0x13bc
 713 01d7 05       		.uleb128 0x5
 714 01d8 04       		.byte	0x4
 715 01d9 F9       		.byte	0xf9
 716 01da DB130000 		.4byte	0x13db
 717 01de 05       		.uleb128 0x5
 718 01df 04       		.byte	0x4
 719 01e0 FB       		.byte	0xfb
 720 01e1 FA130000 		.4byte	0x13fa
 721 01e5 05       		.uleb128 0x5
 722 01e6 04       		.byte	0x4
 723 01e7 FC       		.byte	0xfc
 724 01e8 1B140000 		.4byte	0x141b
 725 01ec 0A       		.uleb128 0xa
 726 01ed 64697600 		.ascii	"div\000"
 727 01f1 04       		.byte	0x4
ARM GAS  /tmp/cc8RfTnf.s 			page 46


 728 01f2 E9       		.byte	0xe9
 729 01f3 46010000 		.4byte	.LASF329
 730 01f7 2D110000 		.4byte	0x112d
 731 01fb 08       		.uleb128 0x8
 732 01fc 52020000 		.4byte	0x252
 733 0200 08       		.uleb128 0x8
 734 0201 52020000 		.4byte	0x252
 735 0205 00       		.byte	0
 736 0206 00       		.byte	0
 737 0207 0B       		.uleb128 0xb
 738 0208 01       		.byte	0x1
 739 0209 06       		.byte	0x6
 740 020a 55020000 		.4byte	.LASF2
 741 020e 0C       		.uleb128 0xc
 742 020f 61090000 		.4byte	.LASF6
 743 0213 07       		.byte	0x7
 744 0214 1D       		.byte	0x1d
 745 0215 19020000 		.4byte	0x219
 746 0219 0B       		.uleb128 0xb
 747 021a 01       		.byte	0x1
 748 021b 08       		.byte	0x8
 749 021c 7D0B0000 		.4byte	.LASF3
 750 0220 0B       		.uleb128 0xb
 751 0221 02       		.byte	0x2
 752 0222 05       		.byte	0x5
 753 0223 89080000 		.4byte	.LASF4
 754 0227 0B       		.uleb128 0xb
 755 0228 02       		.byte	0x2
 756 0229 07       		.byte	0x7
 757 022a EB0C0000 		.4byte	.LASF5
 758 022e 0C       		.uleb128 0xc
 759 022f 97050000 		.4byte	.LASF7
 760 0233 07       		.byte	0x7
 761 0234 3F       		.byte	0x3f
 762 0235 39020000 		.4byte	0x239
 763 0239 0B       		.uleb128 0xb
 764 023a 04       		.byte	0x4
 765 023b 05       		.byte	0x5
 766 023c 07000000 		.4byte	.LASF8
 767 0240 0C       		.uleb128 0xc
 768 0241 8B0B0000 		.4byte	.LASF9
 769 0245 07       		.byte	0x7
 770 0246 41       		.byte	0x41
 771 0247 4B020000 		.4byte	0x24b
 772 024b 0B       		.uleb128 0xb
 773 024c 04       		.byte	0x4
 774 024d 07       		.byte	0x7
 775 024e D10A0000 		.4byte	.LASF10
 776 0252 0B       		.uleb128 0xb
 777 0253 08       		.byte	0x8
 778 0254 05       		.byte	0x5
 779 0255 5C060000 		.4byte	.LASF11
 780 0259 0B       		.uleb128 0xb
 781 025a 08       		.byte	0x8
 782 025b 07       		.byte	0x7
 783 025c 3A030000 		.4byte	.LASF12
 784 0260 0D       		.uleb128 0xd
ARM GAS  /tmp/cc8RfTnf.s 			page 47


 785 0261 04       		.byte	0x4
 786 0262 05       		.byte	0x5
 787 0263 696E7400 		.ascii	"int\000"
 788 0267 0B       		.uleb128 0xb
 789 0268 04       		.byte	0x4
 790 0269 07       		.byte	0x7
 791 026a A6000000 		.4byte	.LASF13
 792 026e 0C       		.uleb128 0xc
 793 026f 54040000 		.4byte	.LASF14
 794 0273 08       		.byte	0x8
 795 0274 D8       		.byte	0xd8
 796 0275 67020000 		.4byte	0x267
 797 0279 0B       		.uleb128 0xb
 798 027a 08       		.byte	0x8
 799 027b 04       		.byte	0x4
 800 027c F5070000 		.4byte	.LASF15
 801 0280 0E       		.uleb128 0xe
 802 0281 BE0B0000 		.4byte	.LASF330
 803 0285 0C       		.uleb128 0xc
 804 0286 AC0B0000 		.4byte	.LASF16
 805 028a 09       		.byte	0x9
 806 028b 07       		.byte	0x7
 807 028c 60020000 		.4byte	0x260
 808 0290 0C       		.uleb128 0xc
 809 0291 750D0000 		.4byte	.LASF17
 810 0295 0A       		.byte	0xa
 811 0296 2C       		.byte	0x2c
 812 0297 39020000 		.4byte	0x239
 813 029b 0C       		.uleb128 0xc
 814 029c E1010000 		.4byte	.LASF18
 815 02a0 0A       		.byte	0xa
 816 02a1 72       		.byte	0x72
 817 02a2 39020000 		.4byte	0x239
 818 02a6 0F       		.uleb128 0xf
 819 02a7 0B0B0000 		.4byte	.LASF19
 820 02ab 08       		.byte	0x8
 821 02ac 6501     		.2byte	0x165
 822 02ae 67020000 		.4byte	0x267
 823 02b2 10       		.uleb128 0x10
 824 02b3 08       		.byte	0x8
 825 02b4 0A       		.byte	0xa
 826 02b5 A4       		.byte	0xa4
 827 02b6 22050000 		.4byte	.LASF245
 828 02ba F6020000 		.4byte	0x2f6
 829 02be 11       		.uleb128 0x11
 830 02bf 04       		.byte	0x4
 831 02c0 0A       		.byte	0xa
 832 02c1 A7       		.byte	0xa7
 833 02c2 DD020000 		.4byte	0x2dd
 834 02c6 12       		.uleb128 0x12
 835 02c7 B3030000 		.4byte	.LASF20
 836 02cb 0A       		.byte	0xa
 837 02cc A8       		.byte	0xa8
 838 02cd A6020000 		.4byte	0x2a6
 839 02d1 12       		.uleb128 0x12
 840 02d2 18090000 		.4byte	.LASF21
 841 02d6 0A       		.byte	0xa
ARM GAS  /tmp/cc8RfTnf.s 			page 48


 842 02d7 A9       		.byte	0xa9
 843 02d8 F6020000 		.4byte	0x2f6
 844 02dc 00       		.byte	0
 845 02dd 13       		.uleb128 0x13
 846 02de AD020000 		.4byte	.LASF22
 847 02e2 0A       		.byte	0xa
 848 02e3 A5       		.byte	0xa5
 849 02e4 60020000 		.4byte	0x260
 850 02e8 00       		.byte	0
 851 02e9 13       		.uleb128 0x13
 852 02ea 32030000 		.4byte	.LASF23
 853 02ee 0A       		.byte	0xa
 854 02ef AA       		.byte	0xaa
 855 02f0 BE020000 		.4byte	0x2be
 856 02f4 04       		.byte	0x4
 857 02f5 00       		.byte	0
 858 02f6 14       		.uleb128 0x14
 859 02f7 19020000 		.4byte	0x219
 860 02fb 06030000 		.4byte	0x306
 861 02ff 15       		.uleb128 0x15
 862 0300 06030000 		.4byte	0x306
 863 0304 03       		.byte	0x3
 864 0305 00       		.byte	0
 865 0306 0B       		.uleb128 0xb
 866 0307 04       		.byte	0x4
 867 0308 07       		.byte	0x7
 868 0309 C00A0000 		.4byte	.LASF24
 869 030d 0C       		.uleb128 0xc
 870 030e 32070000 		.4byte	.LASF25
 871 0312 0A       		.byte	0xa
 872 0313 AB       		.byte	0xab
 873 0314 B2020000 		.4byte	0x2b2
 874 0318 0C       		.uleb128 0xc
 875 0319 5B010000 		.4byte	.LASF26
 876 031d 0A       		.byte	0xa
 877 031e AF       		.byte	0xaf
 878 031f 85020000 		.4byte	0x285
 879 0323 16       		.uleb128 0x16
 880 0324 04       		.byte	0x4
 881 0325 0C       		.uleb128 0xc
 882 0326 8D010000 		.4byte	.LASF27
 883 032a 0B       		.byte	0xb
 884 032b 16       		.byte	0x16
 885 032c 4B020000 		.4byte	0x24b
 886 0330 17       		.uleb128 0x17
 887 0331 28020000 		.4byte	.LASF32
 888 0335 18       		.byte	0x18
 889 0336 0B       		.byte	0xb
 890 0337 2D       		.byte	0x2d
 891 0338 83030000 		.4byte	0x383
 892 033c 13       		.uleb128 0x13
 893 033d C3040000 		.4byte	.LASF28
 894 0341 0B       		.byte	0xb
 895 0342 2F       		.byte	0x2f
 896 0343 83030000 		.4byte	0x383
 897 0347 00       		.byte	0
 898 0348 18       		.uleb128 0x18
ARM GAS  /tmp/cc8RfTnf.s 			page 49


 899 0349 5F6B00   		.ascii	"_k\000"
 900 034c 0B       		.byte	0xb
 901 034d 30       		.byte	0x30
 902 034e 60020000 		.4byte	0x260
 903 0352 04       		.byte	0x4
 904 0353 13       		.uleb128 0x13
 905 0354 91090000 		.4byte	.LASF29
 906 0358 0B       		.byte	0xb
 907 0359 30       		.byte	0x30
 908 035a 60020000 		.4byte	0x260
 909 035e 08       		.byte	0x8
 910 035f 13       		.uleb128 0x13
 911 0360 60050000 		.4byte	.LASF30
 912 0364 0B       		.byte	0xb
 913 0365 30       		.byte	0x30
 914 0366 60020000 		.4byte	0x260
 915 036a 0C       		.byte	0xc
 916 036b 13       		.uleb128 0x13
 917 036c 79030000 		.4byte	.LASF31
 918 0370 0B       		.byte	0xb
 919 0371 30       		.byte	0x30
 920 0372 60020000 		.4byte	0x260
 921 0376 10       		.byte	0x10
 922 0377 18       		.uleb128 0x18
 923 0378 5F7800   		.ascii	"_x\000"
 924 037b 0B       		.byte	0xb
 925 037c 31       		.byte	0x31
 926 037d 89030000 		.4byte	0x389
 927 0381 14       		.byte	0x14
 928 0382 00       		.byte	0
 929 0383 19       		.uleb128 0x19
 930 0384 04       		.byte	0x4
 931 0385 30030000 		.4byte	0x330
 932 0389 14       		.uleb128 0x14
 933 038a 25030000 		.4byte	0x325
 934 038e 99030000 		.4byte	0x399
 935 0392 15       		.uleb128 0x15
 936 0393 06030000 		.4byte	0x306
 937 0397 00       		.byte	0
 938 0398 00       		.byte	0
 939 0399 17       		.uleb128 0x17
 940 039a 9E0A0000 		.4byte	.LASF33
 941 039e 24       		.byte	0x24
 942 039f 0B       		.byte	0xb
 943 03a0 35       		.byte	0x35
 944 03a1 12040000 		.4byte	0x412
 945 03a5 13       		.uleb128 0x13
 946 03a6 70040000 		.4byte	.LASF34
 947 03aa 0B       		.byte	0xb
 948 03ab 37       		.byte	0x37
 949 03ac 60020000 		.4byte	0x260
 950 03b0 00       		.byte	0
 951 03b1 13       		.uleb128 0x13
 952 03b2 BA0D0000 		.4byte	.LASF35
 953 03b6 0B       		.byte	0xb
 954 03b7 38       		.byte	0x38
 955 03b8 60020000 		.4byte	0x260
ARM GAS  /tmp/cc8RfTnf.s 			page 50


 956 03bc 04       		.byte	0x4
 957 03bd 13       		.uleb128 0x13
 958 03be 8C020000 		.4byte	.LASF36
 959 03c2 0B       		.byte	0xb
 960 03c3 39       		.byte	0x39
 961 03c4 60020000 		.4byte	0x260
 962 03c8 08       		.byte	0x8
 963 03c9 13       		.uleb128 0x13
 964 03ca 6B050000 		.4byte	.LASF37
 965 03ce 0B       		.byte	0xb
 966 03cf 3A       		.byte	0x3a
 967 03d0 60020000 		.4byte	0x260
 968 03d4 0C       		.byte	0xc
 969 03d5 13       		.uleb128 0x13
 970 03d6 E1070000 		.4byte	.LASF38
 971 03da 0B       		.byte	0xb
 972 03db 3B       		.byte	0x3b
 973 03dc 60020000 		.4byte	0x260
 974 03e0 10       		.byte	0x10
 975 03e1 13       		.uleb128 0x13
 976 03e2 29090000 		.4byte	.LASF39
 977 03e6 0B       		.byte	0xb
 978 03e7 3C       		.byte	0x3c
 979 03e8 60020000 		.4byte	0x260
 980 03ec 14       		.byte	0x14
 981 03ed 13       		.uleb128 0x13
 982 03ee 4B020000 		.4byte	.LASF40
 983 03f2 0B       		.byte	0xb
 984 03f3 3D       		.byte	0x3d
 985 03f4 60020000 		.4byte	0x260
 986 03f8 18       		.byte	0x18
 987 03f9 13       		.uleb128 0x13
 988 03fa 8C040000 		.4byte	.LASF41
 989 03fe 0B       		.byte	0xb
 990 03ff 3E       		.byte	0x3e
 991 0400 60020000 		.4byte	0x260
 992 0404 1C       		.byte	0x1c
 993 0405 13       		.uleb128 0x13
 994 0406 63070000 		.4byte	.LASF42
 995 040a 0B       		.byte	0xb
 996 040b 3F       		.byte	0x3f
 997 040c 60020000 		.4byte	0x260
 998 0410 20       		.byte	0x20
 999 0411 00       		.byte	0
 1000 0412 1A       		.uleb128 0x1a
 1001 0413 30000000 		.4byte	.LASF43
 1002 0417 0801     		.2byte	0x108
 1003 0419 0B       		.byte	0xb
 1004 041a 48       		.byte	0x48
 1005 041b 52040000 		.4byte	0x452
 1006 041f 13       		.uleb128 0x13
 1007 0420 BD0C0000 		.4byte	.LASF44
 1008 0424 0B       		.byte	0xb
 1009 0425 49       		.byte	0x49
 1010 0426 52040000 		.4byte	0x452
 1011 042a 00       		.byte	0
 1012 042b 13       		.uleb128 0x13
ARM GAS  /tmp/cc8RfTnf.s 			page 51


 1013 042c 380B0000 		.4byte	.LASF45
 1014 0430 0B       		.byte	0xb
 1015 0431 4A       		.byte	0x4a
 1016 0432 52040000 		.4byte	0x452
 1017 0436 80       		.byte	0x80
 1018 0437 1B       		.uleb128 0x1b
 1019 0438 410D0000 		.4byte	.LASF46
 1020 043c 0B       		.byte	0xb
 1021 043d 4C       		.byte	0x4c
 1022 043e 25030000 		.4byte	0x325
 1023 0442 0001     		.2byte	0x100
 1024 0444 1B       		.uleb128 0x1b
 1025 0445 A90D0000 		.4byte	.LASF47
 1026 0449 0B       		.byte	0xb
 1027 044a 4F       		.byte	0x4f
 1028 044b 25030000 		.4byte	0x325
 1029 044f 0401     		.2byte	0x104
 1030 0451 00       		.byte	0
 1031 0452 14       		.uleb128 0x14
 1032 0453 23030000 		.4byte	0x323
 1033 0457 62040000 		.4byte	0x462
 1034 045b 15       		.uleb128 0x15
 1035 045c 06030000 		.4byte	0x306
 1036 0460 1F       		.byte	0x1f
 1037 0461 00       		.byte	0
 1038 0462 1A       		.uleb128 0x1a
 1039 0463 3E080000 		.4byte	.LASF48
 1040 0467 9001     		.2byte	0x190
 1041 0469 0B       		.byte	0xb
 1042 046a 5B       		.byte	0x5b
 1043 046b A0040000 		.4byte	0x4a0
 1044 046f 13       		.uleb128 0x13
 1045 0470 C3040000 		.4byte	.LASF28
 1046 0474 0B       		.byte	0xb
 1047 0475 5C       		.byte	0x5c
 1048 0476 A0040000 		.4byte	0x4a0
 1049 047a 00       		.byte	0
 1050 047b 13       		.uleb128 0x13
 1051 047c A2040000 		.4byte	.LASF49
 1052 0480 0B       		.byte	0xb
 1053 0481 5D       		.byte	0x5d
 1054 0482 60020000 		.4byte	0x260
 1055 0486 04       		.byte	0x4
 1056 0487 13       		.uleb128 0x13
 1057 0488 E9010000 		.4byte	.LASF50
 1058 048c 0B       		.byte	0xb
 1059 048d 5F       		.byte	0x5f
 1060 048e A6040000 		.4byte	0x4a6
 1061 0492 08       		.byte	0x8
 1062 0493 13       		.uleb128 0x13
 1063 0494 30000000 		.4byte	.LASF43
 1064 0498 0B       		.byte	0xb
 1065 0499 60       		.byte	0x60
 1066 049a 12040000 		.4byte	0x412
 1067 049e 88       		.byte	0x88
 1068 049f 00       		.byte	0
 1069 04a0 19       		.uleb128 0x19
ARM GAS  /tmp/cc8RfTnf.s 			page 52


 1070 04a1 04       		.byte	0x4
 1071 04a2 62040000 		.4byte	0x462
 1072 04a6 14       		.uleb128 0x14
 1073 04a7 B6040000 		.4byte	0x4b6
 1074 04ab B6040000 		.4byte	0x4b6
 1075 04af 15       		.uleb128 0x15
 1076 04b0 06030000 		.4byte	0x306
 1077 04b4 1F       		.byte	0x1f
 1078 04b5 00       		.byte	0
 1079 04b6 19       		.uleb128 0x19
 1080 04b7 04       		.byte	0x4
 1081 04b8 BC040000 		.4byte	0x4bc
 1082 04bc 1C       		.uleb128 0x1c
 1083 04bd 17       		.uleb128 0x17
 1084 04be 110C0000 		.4byte	.LASF51
 1085 04c2 08       		.byte	0x8
 1086 04c3 0B       		.byte	0xb
 1087 04c4 73       		.byte	0x73
 1088 04c5 E2040000 		.4byte	0x4e2
 1089 04c9 13       		.uleb128 0x13
 1090 04ca 75060000 		.4byte	.LASF52
 1091 04ce 0B       		.byte	0xb
 1092 04cf 74       		.byte	0x74
 1093 04d0 E2040000 		.4byte	0x4e2
 1094 04d4 00       		.byte	0
 1095 04d5 13       		.uleb128 0x13
 1096 04d6 680D0000 		.4byte	.LASF53
 1097 04da 0B       		.byte	0xb
 1098 04db 75       		.byte	0x75
 1099 04dc 60020000 		.4byte	0x260
 1100 04e0 04       		.byte	0x4
 1101 04e1 00       		.byte	0
 1102 04e2 19       		.uleb128 0x19
 1103 04e3 04       		.byte	0x4
 1104 04e4 19020000 		.4byte	0x219
 1105 04e8 17       		.uleb128 0x17
 1106 04e9 71030000 		.4byte	.LASF54
 1107 04ed 68       		.byte	0x68
 1108 04ee 0B       		.byte	0xb
 1109 04ef B3       		.byte	0xb3
 1110 04f0 12060000 		.4byte	0x612
 1111 04f4 18       		.uleb128 0x18
 1112 04f5 5F7000   		.ascii	"_p\000"
 1113 04f8 0B       		.byte	0xb
 1114 04f9 B4       		.byte	0xb4
 1115 04fa E2040000 		.4byte	0x4e2
 1116 04fe 00       		.byte	0
 1117 04ff 18       		.uleb128 0x18
 1118 0500 5F7200   		.ascii	"_r\000"
 1119 0503 0B       		.byte	0xb
 1120 0504 B5       		.byte	0xb5
 1121 0505 60020000 		.4byte	0x260
 1122 0509 04       		.byte	0x4
 1123 050a 18       		.uleb128 0x18
 1124 050b 5F7700   		.ascii	"_w\000"
 1125 050e 0B       		.byte	0xb
 1126 050f B6       		.byte	0xb6
ARM GAS  /tmp/cc8RfTnf.s 			page 53


 1127 0510 60020000 		.4byte	0x260
 1128 0514 08       		.byte	0x8
 1129 0515 13       		.uleb128 0x13
 1130 0516 C6000000 		.4byte	.LASF55
 1131 051a 0B       		.byte	0xb
 1132 051b B7       		.byte	0xb7
 1133 051c 20020000 		.4byte	0x220
 1134 0520 0C       		.byte	0xc
 1135 0521 13       		.uleb128 0x13
 1136 0522 33090000 		.4byte	.LASF56
 1137 0526 0B       		.byte	0xb
 1138 0527 B8       		.byte	0xb8
 1139 0528 20020000 		.4byte	0x220
 1140 052c 0E       		.byte	0xe
 1141 052d 18       		.uleb128 0x18
 1142 052e 5F626600 		.ascii	"_bf\000"
 1143 0532 0B       		.byte	0xb
 1144 0533 B9       		.byte	0xb9
 1145 0534 BD040000 		.4byte	0x4bd
 1146 0538 10       		.byte	0x10
 1147 0539 13       		.uleb128 0x13
 1148 053a BD000000 		.4byte	.LASF57
 1149 053e 0B       		.byte	0xb
 1150 053f BA       		.byte	0xba
 1151 0540 60020000 		.4byte	0x260
 1152 0544 18       		.byte	0x18
 1153 0545 13       		.uleb128 0x13
 1154 0546 EE010000 		.4byte	.LASF58
 1155 054a 0B       		.byte	0xb
 1156 054b C1       		.byte	0xc1
 1157 054c 23030000 		.4byte	0x323
 1158 0550 1C       		.byte	0x1c
 1159 0551 13       		.uleb128 0x13
 1160 0552 87010000 		.4byte	.LASF59
 1161 0556 0B       		.byte	0xb
 1162 0557 C3       		.byte	0xc3
 1163 0558 C6080000 		.4byte	0x8c6
 1164 055c 20       		.byte	0x20
 1165 055d 13       		.uleb128 0x13
 1166 055e 16080000 		.4byte	.LASF60
 1167 0562 0B       		.byte	0xb
 1168 0563 C5       		.byte	0xc5
 1169 0564 F0080000 		.4byte	0x8f0
 1170 0568 24       		.byte	0x24
 1171 0569 13       		.uleb128 0x13
 1172 056a DB0D0000 		.4byte	.LASF61
 1173 056e 0B       		.byte	0xb
 1174 056f C8       		.byte	0xc8
 1175 0570 14090000 		.4byte	0x914
 1176 0574 28       		.byte	0x28
 1177 0575 13       		.uleb128 0x13
 1178 0576 10060000 		.4byte	.LASF62
 1179 057a 0B       		.byte	0xb
 1180 057b C9       		.byte	0xc9
 1181 057c 2E090000 		.4byte	0x92e
 1182 0580 2C       		.byte	0x2c
 1183 0581 18       		.uleb128 0x18
ARM GAS  /tmp/cc8RfTnf.s 			page 54


 1184 0582 5F756200 		.ascii	"_ub\000"
 1185 0586 0B       		.byte	0xb
 1186 0587 CC       		.byte	0xcc
 1187 0588 BD040000 		.4byte	0x4bd
 1188 058c 30       		.byte	0x30
 1189 058d 18       		.uleb128 0x18
 1190 058e 5F757000 		.ascii	"_up\000"
 1191 0592 0B       		.byte	0xb
 1192 0593 CD       		.byte	0xcd
 1193 0594 E2040000 		.4byte	0x4e2
 1194 0598 38       		.byte	0x38
 1195 0599 18       		.uleb128 0x18
 1196 059a 5F757200 		.ascii	"_ur\000"
 1197 059e 0B       		.byte	0xb
 1198 059f CE       		.byte	0xce
 1199 05a0 60020000 		.4byte	0x260
 1200 05a4 3C       		.byte	0x3c
 1201 05a5 13       		.uleb128 0x13
 1202 05a6 AD030000 		.4byte	.LASF63
 1203 05aa 0B       		.byte	0xb
 1204 05ab D1       		.byte	0xd1
 1205 05ac 34090000 		.4byte	0x934
 1206 05b0 40       		.byte	0x40
 1207 05b1 13       		.uleb128 0x13
 1208 05b2 7C0D0000 		.4byte	.LASF64
 1209 05b6 0B       		.byte	0xb
 1210 05b7 D2       		.byte	0xd2
 1211 05b8 44090000 		.4byte	0x944
 1212 05bc 43       		.byte	0x43
 1213 05bd 18       		.uleb128 0x18
 1214 05be 5F6C6200 		.ascii	"_lb\000"
 1215 05c2 0B       		.byte	0xb
 1216 05c3 D5       		.byte	0xd5
 1217 05c4 BD040000 		.4byte	0x4bd
 1218 05c8 44       		.byte	0x44
 1219 05c9 13       		.uleb128 0x13
 1220 05ca 950A0000 		.4byte	.LASF65
 1221 05ce 0B       		.byte	0xb
 1222 05cf D8       		.byte	0xd8
 1223 05d0 60020000 		.4byte	0x260
 1224 05d4 4C       		.byte	0x4c
 1225 05d5 13       		.uleb128 0x13
 1226 05d6 A5030000 		.4byte	.LASF66
 1227 05da 0B       		.byte	0xb
 1228 05db D9       		.byte	0xd9
 1229 05dc 90020000 		.4byte	0x290
 1230 05e0 50       		.byte	0x50
 1231 05e1 13       		.uleb128 0x13
 1232 05e2 12090000 		.4byte	.LASF67
 1233 05e6 0B       		.byte	0xb
 1234 05e7 DC       		.byte	0xdc
 1235 05e8 30060000 		.4byte	0x630
 1236 05ec 54       		.byte	0x54
 1237 05ed 13       		.uleb128 0x13
 1238 05ee B00A0000 		.4byte	.LASF68
 1239 05f2 0B       		.byte	0xb
 1240 05f3 E0       		.byte	0xe0
ARM GAS  /tmp/cc8RfTnf.s 			page 55


 1241 05f4 18030000 		.4byte	0x318
 1242 05f8 58       		.byte	0x58
 1243 05f9 13       		.uleb128 0x13
 1244 05fa 6D010000 		.4byte	.LASF69
 1245 05fe 0B       		.byte	0xb
 1246 05ff E2       		.byte	0xe2
 1247 0600 0D030000 		.4byte	0x30d
 1248 0604 5C       		.byte	0x5c
 1249 0605 13       		.uleb128 0x13
 1250 0606 A10D0000 		.4byte	.LASF70
 1251 060a 0B       		.byte	0xb
 1252 060b E3       		.byte	0xe3
 1253 060c 60020000 		.4byte	0x260
 1254 0610 64       		.byte	0x64
 1255 0611 00       		.byte	0
 1256 0612 1D       		.uleb128 0x1d
 1257 0613 60020000 		.4byte	0x260
 1258 0617 30060000 		.4byte	0x630
 1259 061b 08       		.uleb128 0x8
 1260 061c 30060000 		.4byte	0x630
 1261 0620 08       		.uleb128 0x8
 1262 0621 23030000 		.4byte	0x323
 1263 0625 08       		.uleb128 0x8
 1264 0626 B4080000 		.4byte	0x8b4
 1265 062a 08       		.uleb128 0x8
 1266 062b 60020000 		.4byte	0x260
 1267 062f 00       		.byte	0
 1268 0630 19       		.uleb128 0x19
 1269 0631 04       		.byte	0x4
 1270 0632 3B060000 		.4byte	0x63b
 1271 0636 1E       		.uleb128 0x1e
 1272 0637 30060000 		.4byte	0x630
 1273 063b 1F       		.uleb128 0x1f
 1274 063c E40C0000 		.4byte	.LASF71
 1275 0640 2804     		.2byte	0x428
 1276 0642 0B       		.byte	0xb
 1277 0643 3802     		.2byte	0x238
 1278 0645 B4080000 		.4byte	0x8b4
 1279 0649 20       		.uleb128 0x20
 1280 064a F0       		.byte	0xf0
 1281 064b 0B       		.byte	0xb
 1282 064c 5602     		.2byte	0x256
 1283 064e 90070000 		.4byte	0x790
 1284 0652 21       		.uleb128 0x21
 1285 0653 D0       		.byte	0xd0
 1286 0654 0B       		.byte	0xb
 1287 0655 5802     		.2byte	0x258
 1288 0657 53070000 		.4byte	0x753
 1289 065b 22       		.uleb128 0x22
 1290 065c 820D0000 		.4byte	.LASF72
 1291 0660 0B       		.byte	0xb
 1292 0661 5902     		.2byte	0x259
 1293 0663 67020000 		.4byte	0x267
 1294 0667 00       		.byte	0
 1295 0668 22       		.uleb128 0x22
 1296 0669 990C0000 		.4byte	.LASF73
 1297 066d 0B       		.byte	0xb
ARM GAS  /tmp/cc8RfTnf.s 			page 56


 1298 066e 5A02     		.2byte	0x25a
 1299 0670 B4080000 		.4byte	0x8b4
 1300 0674 04       		.byte	0x4
 1301 0675 22       		.uleb128 0x22
 1302 0676 5C030000 		.4byte	.LASF74
 1303 067a 0B       		.byte	0xb
 1304 067b 5B02     		.2byte	0x25b
 1305 067d E6090000 		.4byte	0x9e6
 1306 0681 08       		.byte	0x8
 1307 0682 22       		.uleb128 0x22
 1308 0683 4A090000 		.4byte	.LASF75
 1309 0687 0B       		.byte	0xb
 1310 0688 5C02     		.2byte	0x25c
 1311 068a 99030000 		.4byte	0x399
 1312 068e 24       		.byte	0x24
 1313 068f 22       		.uleb128 0x22
 1314 0690 4D060000 		.4byte	.LASF76
 1315 0694 0B       		.byte	0xb
 1316 0695 5D02     		.2byte	0x25d
 1317 0697 60020000 		.4byte	0x260
 1318 069b 48       		.byte	0x48
 1319 069c 22       		.uleb128 0x22
 1320 069d 22080000 		.4byte	.LASF77
 1321 06a1 0B       		.byte	0xb
 1322 06a2 5E02     		.2byte	0x25e
 1323 06a4 59020000 		.4byte	0x259
 1324 06a8 50       		.byte	0x50
 1325 06a9 22       		.uleb128 0x22
 1326 06aa 87000000 		.4byte	.LASF78
 1327 06ae 0B       		.byte	0xb
 1328 06af 5F02     		.2byte	0x25f
 1329 06b1 A1090000 		.4byte	0x9a1
 1330 06b5 58       		.byte	0x58
 1331 06b6 22       		.uleb128 0x22
 1332 06b7 4A050000 		.4byte	.LASF79
 1333 06bb 0B       		.byte	0xb
 1334 06bc 6002     		.2byte	0x260
 1335 06be 0D030000 		.4byte	0x30d
 1336 06c2 68       		.byte	0x68
 1337 06c3 22       		.uleb128 0x22
 1338 06c4 A60C0000 		.4byte	.LASF80
 1339 06c8 0B       		.byte	0xb
 1340 06c9 6102     		.2byte	0x261
 1341 06cb 0D030000 		.4byte	0x30d
 1342 06cf 70       		.byte	0x70
 1343 06d0 22       		.uleb128 0x22
 1344 06d1 69000000 		.4byte	.LASF81
 1345 06d5 0B       		.byte	0xb
 1346 06d6 6202     		.2byte	0x262
 1347 06d8 0D030000 		.4byte	0x30d
 1348 06dc 78       		.byte	0x78
 1349 06dd 22       		.uleb128 0x22
 1350 06de 99090000 		.4byte	.LASF82
 1351 06e2 0B       		.byte	0xb
 1352 06e3 6302     		.2byte	0x263
 1353 06e5 F6090000 		.4byte	0x9f6
 1354 06e9 80       		.byte	0x80
ARM GAS  /tmp/cc8RfTnf.s 			page 57


 1355 06ea 22       		.uleb128 0x22
 1356 06eb 94000000 		.4byte	.LASF83
 1357 06ef 0B       		.byte	0xb
 1358 06f0 6402     		.2byte	0x264
 1359 06f2 060A0000 		.4byte	0xa06
 1360 06f6 88       		.byte	0x88
 1361 06f7 22       		.uleb128 0x22
 1362 06f8 8C0C0000 		.4byte	.LASF84
 1363 06fc 0B       		.byte	0xb
 1364 06fd 6502     		.2byte	0x265
 1365 06ff 60020000 		.4byte	0x260
 1366 0703 A0       		.byte	0xa0
 1367 0704 22       		.uleb128 0x22
 1368 0705 95010000 		.4byte	.LASF85
 1369 0709 0B       		.byte	0xb
 1370 070a 6602     		.2byte	0x266
 1371 070c 0D030000 		.4byte	0x30d
 1372 0710 A4       		.byte	0xa4
 1373 0711 22       		.uleb128 0x22
 1374 0712 7F050000 		.4byte	.LASF86
 1375 0716 0B       		.byte	0xb
 1376 0717 6702     		.2byte	0x267
 1377 0719 0D030000 		.4byte	0x30d
 1378 071d AC       		.byte	0xac
 1379 071e 22       		.uleb128 0x22
 1380 071f 1A030000 		.4byte	.LASF87
 1381 0723 0B       		.byte	0xb
 1382 0724 6802     		.2byte	0x268
 1383 0726 0D030000 		.4byte	0x30d
 1384 072a B4       		.byte	0xb4
 1385 072b 22       		.uleb128 0x22
 1386 072c B2060000 		.4byte	.LASF88
 1387 0730 0B       		.byte	0xb
 1388 0731 6902     		.2byte	0x269
 1389 0733 0D030000 		.4byte	0x30d
 1390 0737 BC       		.byte	0xbc
 1391 0738 22       		.uleb128 0x22
 1392 0739 39050000 		.4byte	.LASF89
 1393 073d 0B       		.byte	0xb
 1394 073e 6A02     		.2byte	0x26a
 1395 0740 0D030000 		.4byte	0x30d
 1396 0744 C4       		.byte	0xc4
 1397 0745 22       		.uleb128 0x22
 1398 0746 A2070000 		.4byte	.LASF90
 1399 074a 0B       		.byte	0xb
 1400 074b 6B02     		.2byte	0x26b
 1401 074d 60020000 		.4byte	0x260
 1402 0751 CC       		.byte	0xcc
 1403 0752 00       		.byte	0
 1404 0753 21       		.uleb128 0x21
 1405 0754 F0       		.byte	0xf0
 1406 0755 0B       		.byte	0xb
 1407 0756 7102     		.2byte	0x271
 1408 0758 77070000 		.4byte	0x777
 1409 075c 22       		.uleb128 0x22
 1410 075d F5020000 		.4byte	.LASF91
 1411 0761 0B       		.byte	0xb
ARM GAS  /tmp/cc8RfTnf.s 			page 58


 1412 0762 7302     		.2byte	0x273
 1413 0764 160A0000 		.4byte	0xa16
 1414 0768 00       		.byte	0
 1415 0769 22       		.uleb128 0x22
 1416 076a E90D0000 		.4byte	.LASF92
 1417 076e 0B       		.byte	0xb
 1418 076f 7402     		.2byte	0x274
 1419 0771 260A0000 		.4byte	0xa26
 1420 0775 78       		.byte	0x78
 1421 0776 00       		.byte	0
 1422 0777 23       		.uleb128 0x23
 1423 0778 E40C0000 		.4byte	.LASF71
 1424 077c 0B       		.byte	0xb
 1425 077d 6C02     		.2byte	0x26c
 1426 077f 52060000 		.4byte	0x652
 1427 0783 23       		.uleb128 0x23
 1428 0784 59090000 		.4byte	.LASF93
 1429 0788 0B       		.byte	0xb
 1430 0789 7502     		.2byte	0x275
 1431 078b 53070000 		.4byte	0x753
 1432 078f 00       		.byte	0
 1433 0790 22       		.uleb128 0x22
 1434 0791 F8000000 		.4byte	.LASF94
 1435 0795 0B       		.byte	0xb
 1436 0796 3A02     		.2byte	0x23a
 1437 0798 60020000 		.4byte	0x260
 1438 079c 00       		.byte	0
 1439 079d 22       		.uleb128 0x22
 1440 079e 46060000 		.4byte	.LASF95
 1441 07a2 0B       		.byte	0xb
 1442 07a3 3F02     		.2byte	0x23f
 1443 07a5 9B090000 		.4byte	0x99b
 1444 07a9 04       		.byte	0x4
 1445 07aa 22       		.uleb128 0x22
 1446 07ab CD010000 		.4byte	.LASF96
 1447 07af 0B       		.byte	0xb
 1448 07b0 3F02     		.2byte	0x23f
 1449 07b2 9B090000 		.4byte	0x99b
 1450 07b6 08       		.byte	0x8
 1451 07b7 22       		.uleb128 0x22
 1452 07b8 E10D0000 		.4byte	.LASF97
 1453 07bc 0B       		.byte	0xb
 1454 07bd 3F02     		.2byte	0x23f
 1455 07bf 9B090000 		.4byte	0x99b
 1456 07c3 0C       		.byte	0xc
 1457 07c4 22       		.uleb128 0x22
 1458 07c5 9D040000 		.4byte	.LASF98
 1459 07c9 0B       		.byte	0xb
 1460 07ca 4102     		.2byte	0x241
 1461 07cc 60020000 		.4byte	0x260
 1462 07d0 10       		.byte	0x10
 1463 07d1 22       		.uleb128 0x22
 1464 07d2 05040000 		.4byte	.LASF99
 1465 07d6 0B       		.byte	0xb
 1466 07d7 4202     		.2byte	0x242
 1467 07d9 360A0000 		.4byte	0xa36
 1468 07dd 14       		.byte	0x14
ARM GAS  /tmp/cc8RfTnf.s 			page 59


 1469 07de 22       		.uleb128 0x22
 1470 07df A3090000 		.4byte	.LASF100
 1471 07e3 0B       		.byte	0xb
 1472 07e4 4402     		.2byte	0x244
 1473 07e6 60020000 		.4byte	0x260
 1474 07ea 30       		.byte	0x30
 1475 07eb 22       		.uleb128 0x22
 1476 07ec FB080000 		.4byte	.LASF101
 1477 07f0 0B       		.byte	0xb
 1478 07f1 4502     		.2byte	0x245
 1479 07f3 EA080000 		.4byte	0x8ea
 1480 07f7 34       		.byte	0x34
 1481 07f8 22       		.uleb128 0x22
 1482 07f9 2A060000 		.4byte	.LASF102
 1483 07fd 0B       		.byte	0xb
 1484 07fe 4702     		.2byte	0x247
 1485 0800 60020000 		.4byte	0x260
 1486 0804 38       		.byte	0x38
 1487 0805 22       		.uleb128 0x22
 1488 0806 1F070000 		.4byte	.LASF103
 1489 080a 0B       		.byte	0xb
 1490 080b 4902     		.2byte	0x249
 1491 080d 510A0000 		.4byte	0xa51
 1492 0811 3C       		.byte	0x3c
 1493 0812 22       		.uleb128 0x22
 1494 0813 69020000 		.4byte	.LASF104
 1495 0817 0B       		.byte	0xb
 1496 0818 4C02     		.2byte	0x24c
 1497 081a 83030000 		.4byte	0x383
 1498 081e 40       		.byte	0x40
 1499 081f 22       		.uleb128 0x22
 1500 0820 DF050000 		.4byte	.LASF105
 1501 0824 0B       		.byte	0xb
 1502 0825 4D02     		.2byte	0x24d
 1503 0827 60020000 		.4byte	0x260
 1504 082b 44       		.byte	0x44
 1505 082c 22       		.uleb128 0x22
 1506 082d CD000000 		.4byte	.LASF106
 1507 0831 0B       		.byte	0xb
 1508 0832 4E02     		.2byte	0x24e
 1509 0834 83030000 		.4byte	0x383
 1510 0838 48       		.byte	0x48
 1511 0839 22       		.uleb128 0x22
 1512 083a 7B060000 		.4byte	.LASF107
 1513 083e 0B       		.byte	0xb
 1514 083f 4F02     		.2byte	0x24f
 1515 0841 570A0000 		.4byte	0xa57
 1516 0845 4C       		.byte	0x4c
 1517 0846 22       		.uleb128 0x22
 1518 0847 89090000 		.4byte	.LASF108
 1519 084b 0B       		.byte	0xb
 1520 084c 5202     		.2byte	0x252
 1521 084e 60020000 		.4byte	0x260
 1522 0852 50       		.byte	0x50
 1523 0853 22       		.uleb128 0x22
 1524 0854 750B0000 		.4byte	.LASF109
 1525 0858 0B       		.byte	0xb
ARM GAS  /tmp/cc8RfTnf.s 			page 60


 1526 0859 5302     		.2byte	0x253
 1527 085b B4080000 		.4byte	0x8b4
 1528 085f 54       		.byte	0x54
 1529 0860 22       		.uleb128 0x22
 1530 0861 F7050000 		.4byte	.LASF110
 1531 0865 0B       		.byte	0xb
 1532 0866 7602     		.2byte	0x276
 1533 0868 49060000 		.4byte	0x649
 1534 086c 58       		.byte	0x58
 1535 086d 24       		.uleb128 0x24
 1536 086e 3E080000 		.4byte	.LASF48
 1537 0872 0B       		.byte	0xb
 1538 0873 7A02     		.2byte	0x27a
 1539 0875 A0040000 		.4byte	0x4a0
 1540 0879 4801     		.2byte	0x148
 1541 087b 24       		.uleb128 0x24
 1542 087c 8E050000 		.4byte	.LASF111
 1543 0880 0B       		.byte	0xb
 1544 0881 7B02     		.2byte	0x27b
 1545 0883 62040000 		.4byte	0x462
 1546 0887 4C01     		.2byte	0x14c
 1547 0889 24       		.uleb128 0x24
 1548 088a 75050000 		.4byte	.LASF112
 1549 088e 0B       		.byte	0xb
 1550 088f 7F02     		.2byte	0x27f
 1551 0891 680A0000 		.4byte	0xa68
 1552 0895 DC02     		.2byte	0x2dc
 1553 0897 24       		.uleb128 0x24
 1554 0898 840C0000 		.4byte	.LASF113
 1555 089c 0B       		.byte	0xb
 1556 089d 8402     		.2byte	0x284
 1557 089f 60090000 		.4byte	0x960
 1558 08a3 E002     		.2byte	0x2e0
 1559 08a5 24       		.uleb128 0x24
 1560 08a6 E4080000 		.4byte	.LASF114
 1561 08aa 0B       		.byte	0xb
 1562 08ab 8502     		.2byte	0x285
 1563 08ad 740A0000 		.4byte	0xa74
 1564 08b1 EC02     		.2byte	0x2ec
 1565 08b3 00       		.byte	0
 1566 08b4 19       		.uleb128 0x19
 1567 08b5 04       		.byte	0x4
 1568 08b6 BA080000 		.4byte	0x8ba
 1569 08ba 0B       		.uleb128 0xb
 1570 08bb 01       		.byte	0x1
 1571 08bc 08       		.byte	0x8
 1572 08bd 66050000 		.4byte	.LASF115
 1573 08c1 1E       		.uleb128 0x1e
 1574 08c2 BA080000 		.4byte	0x8ba
 1575 08c6 19       		.uleb128 0x19
 1576 08c7 04       		.byte	0x4
 1577 08c8 12060000 		.4byte	0x612
 1578 08cc 1D       		.uleb128 0x1d
 1579 08cd 60020000 		.4byte	0x260
 1580 08d1 EA080000 		.4byte	0x8ea
 1581 08d5 08       		.uleb128 0x8
 1582 08d6 30060000 		.4byte	0x630
ARM GAS  /tmp/cc8RfTnf.s 			page 61


 1583 08da 08       		.uleb128 0x8
 1584 08db 23030000 		.4byte	0x323
 1585 08df 08       		.uleb128 0x8
 1586 08e0 EA080000 		.4byte	0x8ea
 1587 08e4 08       		.uleb128 0x8
 1588 08e5 60020000 		.4byte	0x260
 1589 08e9 00       		.byte	0
 1590 08ea 19       		.uleb128 0x19
 1591 08eb 04       		.byte	0x4
 1592 08ec C1080000 		.4byte	0x8c1
 1593 08f0 19       		.uleb128 0x19
 1594 08f1 04       		.byte	0x4
 1595 08f2 CC080000 		.4byte	0x8cc
 1596 08f6 1D       		.uleb128 0x1d
 1597 08f7 9B020000 		.4byte	0x29b
 1598 08fb 14090000 		.4byte	0x914
 1599 08ff 08       		.uleb128 0x8
 1600 0900 30060000 		.4byte	0x630
 1601 0904 08       		.uleb128 0x8
 1602 0905 23030000 		.4byte	0x323
 1603 0909 08       		.uleb128 0x8
 1604 090a 9B020000 		.4byte	0x29b
 1605 090e 08       		.uleb128 0x8
 1606 090f 60020000 		.4byte	0x260
 1607 0913 00       		.byte	0
 1608 0914 19       		.uleb128 0x19
 1609 0915 04       		.byte	0x4
 1610 0916 F6080000 		.4byte	0x8f6
 1611 091a 1D       		.uleb128 0x1d
 1612 091b 60020000 		.4byte	0x260
 1613 091f 2E090000 		.4byte	0x92e
 1614 0923 08       		.uleb128 0x8
 1615 0924 30060000 		.4byte	0x630
 1616 0928 08       		.uleb128 0x8
 1617 0929 23030000 		.4byte	0x323
 1618 092d 00       		.byte	0
 1619 092e 19       		.uleb128 0x19
 1620 092f 04       		.byte	0x4
 1621 0930 1A090000 		.4byte	0x91a
 1622 0934 14       		.uleb128 0x14
 1623 0935 19020000 		.4byte	0x219
 1624 0939 44090000 		.4byte	0x944
 1625 093d 15       		.uleb128 0x15
 1626 093e 06030000 		.4byte	0x306
 1627 0942 02       		.byte	0x2
 1628 0943 00       		.byte	0
 1629 0944 14       		.uleb128 0x14
 1630 0945 19020000 		.4byte	0x219
 1631 0949 54090000 		.4byte	0x954
 1632 094d 15       		.uleb128 0x15
 1633 094e 06030000 		.4byte	0x306
 1634 0952 00       		.byte	0
 1635 0953 00       		.byte	0
 1636 0954 0F       		.uleb128 0xf
 1637 0955 9E030000 		.4byte	.LASF116
 1638 0959 0B       		.byte	0xb
 1639 095a 1D01     		.2byte	0x11d
ARM GAS  /tmp/cc8RfTnf.s 			page 62


 1640 095c E8040000 		.4byte	0x4e8
 1641 0960 25       		.uleb128 0x25
 1642 0961 410C0000 		.4byte	.LASF117
 1643 0965 0C       		.byte	0xc
 1644 0966 0B       		.byte	0xb
 1645 0967 2101     		.2byte	0x121
 1646 0969 95090000 		.4byte	0x995
 1647 096d 22       		.uleb128 0x22
 1648 096e C3040000 		.4byte	.LASF28
 1649 0972 0B       		.byte	0xb
 1650 0973 2301     		.2byte	0x123
 1651 0975 95090000 		.4byte	0x995
 1652 0979 00       		.byte	0
 1653 097a 22       		.uleb128 0x22
 1654 097b 040B0000 		.4byte	.LASF118
 1655 097f 0B       		.byte	0xb
 1656 0980 2401     		.2byte	0x124
 1657 0982 60020000 		.4byte	0x260
 1658 0986 04       		.byte	0x4
 1659 0987 22       		.uleb128 0x22
 1660 0988 F20D0000 		.4byte	.LASF119
 1661 098c 0B       		.byte	0xb
 1662 098d 2501     		.2byte	0x125
 1663 098f 9B090000 		.4byte	0x99b
 1664 0993 08       		.byte	0x8
 1665 0994 00       		.byte	0
 1666 0995 19       		.uleb128 0x19
 1667 0996 04       		.byte	0x4
 1668 0997 60090000 		.4byte	0x960
 1669 099b 19       		.uleb128 0x19
 1670 099c 04       		.byte	0x4
 1671 099d 54090000 		.4byte	0x954
 1672 09a1 25       		.uleb128 0x25
 1673 09a2 69030000 		.4byte	.LASF120
 1674 09a6 0E       		.byte	0xe
 1675 09a7 0B       		.byte	0xb
 1676 09a8 3D01     		.2byte	0x13d
 1677 09aa D6090000 		.4byte	0x9d6
 1678 09ae 22       		.uleb128 0x22
 1679 09af C30D0000 		.4byte	.LASF121
 1680 09b3 0B       		.byte	0xb
 1681 09b4 3E01     		.2byte	0x13e
 1682 09b6 D6090000 		.4byte	0x9d6
 1683 09ba 00       		.byte	0
 1684 09bb 22       		.uleb128 0x22
 1685 09bc 85060000 		.4byte	.LASF122
 1686 09c0 0B       		.byte	0xb
 1687 09c1 3F01     		.2byte	0x13f
 1688 09c3 D6090000 		.4byte	0x9d6
 1689 09c7 06       		.byte	0x6
 1690 09c8 22       		.uleb128 0x22
 1691 09c9 8B060000 		.4byte	.LASF123
 1692 09cd 0B       		.byte	0xb
 1693 09ce 4001     		.2byte	0x140
 1694 09d0 27020000 		.4byte	0x227
 1695 09d4 0C       		.byte	0xc
 1696 09d5 00       		.byte	0
ARM GAS  /tmp/cc8RfTnf.s 			page 63


 1697 09d6 14       		.uleb128 0x14
 1698 09d7 27020000 		.4byte	0x227
 1699 09db E6090000 		.4byte	0x9e6
 1700 09df 15       		.uleb128 0x15
 1701 09e0 06030000 		.4byte	0x306
 1702 09e4 02       		.byte	0x2
 1703 09e5 00       		.byte	0
 1704 09e6 14       		.uleb128 0x14
 1705 09e7 BA080000 		.4byte	0x8ba
 1706 09eb F6090000 		.4byte	0x9f6
 1707 09ef 15       		.uleb128 0x15
 1708 09f0 06030000 		.4byte	0x306
 1709 09f4 19       		.byte	0x19
 1710 09f5 00       		.byte	0
 1711 09f6 14       		.uleb128 0x14
 1712 09f7 BA080000 		.4byte	0x8ba
 1713 09fb 060A0000 		.4byte	0xa06
 1714 09ff 15       		.uleb128 0x15
 1715 0a00 06030000 		.4byte	0x306
 1716 0a04 07       		.byte	0x7
 1717 0a05 00       		.byte	0
 1718 0a06 14       		.uleb128 0x14
 1719 0a07 BA080000 		.4byte	0x8ba
 1720 0a0b 160A0000 		.4byte	0xa16
 1721 0a0f 15       		.uleb128 0x15
 1722 0a10 06030000 		.4byte	0x306
 1723 0a14 17       		.byte	0x17
 1724 0a15 00       		.byte	0
 1725 0a16 14       		.uleb128 0x14
 1726 0a17 E2040000 		.4byte	0x4e2
 1727 0a1b 260A0000 		.4byte	0xa26
 1728 0a1f 15       		.uleb128 0x15
 1729 0a20 06030000 		.4byte	0x306
 1730 0a24 1D       		.byte	0x1d
 1731 0a25 00       		.byte	0
 1732 0a26 14       		.uleb128 0x14
 1733 0a27 67020000 		.4byte	0x267
 1734 0a2b 360A0000 		.4byte	0xa36
 1735 0a2f 15       		.uleb128 0x15
 1736 0a30 06030000 		.4byte	0x306
 1737 0a34 1D       		.byte	0x1d
 1738 0a35 00       		.byte	0
 1739 0a36 14       		.uleb128 0x14
 1740 0a37 BA080000 		.4byte	0x8ba
 1741 0a3b 460A0000 		.4byte	0xa46
 1742 0a3f 15       		.uleb128 0x15
 1743 0a40 06030000 		.4byte	0x306
 1744 0a44 18       		.byte	0x18
 1745 0a45 00       		.byte	0
 1746 0a46 26       		.uleb128 0x26
 1747 0a47 510A0000 		.4byte	0xa51
 1748 0a4b 08       		.uleb128 0x8
 1749 0a4c 30060000 		.4byte	0x630
 1750 0a50 00       		.byte	0
 1751 0a51 19       		.uleb128 0x19
 1752 0a52 04       		.byte	0x4
 1753 0a53 460A0000 		.4byte	0xa46
ARM GAS  /tmp/cc8RfTnf.s 			page 64


 1754 0a57 19       		.uleb128 0x19
 1755 0a58 04       		.byte	0x4
 1756 0a59 83030000 		.4byte	0x383
 1757 0a5d 26       		.uleb128 0x26
 1758 0a5e 680A0000 		.4byte	0xa68
 1759 0a62 08       		.uleb128 0x8
 1760 0a63 60020000 		.4byte	0x260
 1761 0a67 00       		.byte	0
 1762 0a68 19       		.uleb128 0x19
 1763 0a69 04       		.byte	0x4
 1764 0a6a 6E0A0000 		.4byte	0xa6e
 1765 0a6e 19       		.uleb128 0x19
 1766 0a6f 04       		.byte	0x4
 1767 0a70 5D0A0000 		.4byte	0xa5d
 1768 0a74 14       		.uleb128 0x14
 1769 0a75 54090000 		.4byte	0x954
 1770 0a79 840A0000 		.4byte	0xa84
 1771 0a7d 15       		.uleb128 0x15
 1772 0a7e 06030000 		.4byte	0x306
 1773 0a82 02       		.byte	0x2
 1774 0a83 00       		.byte	0
 1775 0a84 27       		.uleb128 0x27
 1776 0a85 E4020000 		.4byte	.LASF124
 1777 0a89 0B       		.byte	0xb
 1778 0a8a FD02     		.2byte	0x2fd
 1779 0a8c 30060000 		.4byte	0x630
 1780 0a90 27       		.uleb128 0x27
 1781 0a91 F6010000 		.4byte	.LASF125
 1782 0a95 0B       		.byte	0xb
 1783 0a96 FE02     		.2byte	0x2fe
 1784 0a98 36060000 		.4byte	0x636
 1785 0a9c 0C       		.uleb128 0xc
 1786 0a9d FC050000 		.4byte	.LASF126
 1787 0aa1 0C       		.byte	0xc
 1788 0aa2 18       		.byte	0x18
 1789 0aa3 0E020000 		.4byte	0x20e
 1790 0aa7 28       		.uleb128 0x28
 1791 0aa8 9C0A0000 		.4byte	0xa9c
 1792 0aac 0C       		.uleb128 0xc
 1793 0aad 1E0B0000 		.4byte	.LASF127
 1794 0ab1 0C       		.byte	0xc
 1795 0ab2 2C       		.byte	0x2c
 1796 0ab3 2E020000 		.4byte	0x22e
 1797 0ab7 28       		.uleb128 0x28
 1798 0ab8 AC0A0000 		.4byte	0xaac
 1799 0abc 0C       		.uleb128 0xc
 1800 0abd 79020000 		.4byte	.LASF128
 1801 0ac1 0C       		.byte	0xc
 1802 0ac2 30       		.byte	0x30
 1803 0ac3 40020000 		.4byte	0x240
 1804 0ac7 28       		.uleb128 0x28
 1805 0ac8 BC0A0000 		.4byte	0xabc
 1806 0acc 1E       		.uleb128 0x1e
 1807 0acd BC0A0000 		.4byte	0xabc
 1808 0ad1 0C       		.uleb128 0xc
 1809 0ad2 09060000 		.4byte	.LASF129
 1810 0ad6 0D       		.byte	0xd
ARM GAS  /tmp/cc8RfTnf.s 			page 65


 1811 0ad7 28       		.byte	0x28
 1812 0ad8 39020000 		.4byte	0x239
 1813 0adc 1E       		.uleb128 0x1e
 1814 0add D10A0000 		.4byte	0xad1
 1815 0ae1 0C       		.uleb128 0xc
 1816 0ae2 C4030000 		.4byte	.LASF130
 1817 0ae6 0E       		.byte	0xe
 1818 0ae7 7B       		.byte	0x7b
 1819 0ae8 4B020000 		.4byte	0x24b
 1820 0aec 29       		.uleb128 0x29
 1821 0aed 746D00   		.ascii	"tm\000"
 1822 0af0 24       		.byte	0x24
 1823 0af1 0F       		.byte	0xf
 1824 0af2 21       		.byte	0x21
 1825 0af3 640B0000 		.4byte	0xb64
 1826 0af7 13       		.uleb128 0x13
 1827 0af8 FE0C0000 		.4byte	.LASF131
 1828 0afc 0F       		.byte	0xf
 1829 0afd 23       		.byte	0x23
 1830 0afe 60020000 		.4byte	0x260
 1831 0b02 00       		.byte	0
 1832 0b03 13       		.uleb128 0x13
 1833 0b04 440B0000 		.4byte	.LASF132
 1834 0b08 0F       		.byte	0xf
 1835 0b09 24       		.byte	0x24
 1836 0b0a 60020000 		.4byte	0x260
 1837 0b0e 04       		.byte	0x4
 1838 0b0f 13       		.uleb128 0x13
 1839 0b10 E40B0000 		.4byte	.LASF133
 1840 0b14 0F       		.byte	0xf
 1841 0b15 25       		.byte	0x25
 1842 0b16 60020000 		.4byte	0x260
 1843 0b1a 08       		.byte	0x8
 1844 0b1b 13       		.uleb128 0x13
 1845 0b1c 3E010000 		.4byte	.LASF134
 1846 0b20 0F       		.byte	0xf
 1847 0b21 26       		.byte	0x26
 1848 0b22 60020000 		.4byte	0x260
 1849 0b26 0C       		.byte	0xc
 1850 0b27 13       		.uleb128 0x13
 1851 0b28 A6020000 		.4byte	.LASF135
 1852 0b2c 0F       		.byte	0xf
 1853 0b2d 27       		.byte	0x27
 1854 0b2e 60020000 		.4byte	0x260
 1855 0b32 10       		.byte	0x10
 1856 0b33 13       		.uleb128 0x13
 1857 0b34 C0050000 		.4byte	.LASF136
 1858 0b38 0F       		.byte	0xf
 1859 0b39 28       		.byte	0x28
 1860 0b3a 60020000 		.4byte	0x260
 1861 0b3e 14       		.byte	0x14
 1862 0b3f 13       		.uleb128 0x13
 1863 0b40 7C0C0000 		.4byte	.LASF137
 1864 0b44 0F       		.byte	0xf
 1865 0b45 29       		.byte	0x29
 1866 0b46 60020000 		.4byte	0x260
 1867 0b4a 18       		.byte	0x18
ARM GAS  /tmp/cc8RfTnf.s 			page 66


 1868 0b4b 13       		.uleb128 0x13
 1869 0b4c 45000000 		.4byte	.LASF138
 1870 0b50 0F       		.byte	0xf
 1871 0b51 2A       		.byte	0x2a
 1872 0b52 60020000 		.4byte	0x260
 1873 0b56 1C       		.byte	0x1c
 1874 0b57 13       		.uleb128 0x13
 1875 0b58 330D0000 		.4byte	.LASF139
 1876 0b5c 0F       		.byte	0xf
 1877 0b5d 2B       		.byte	0x2b
 1878 0b5e 60020000 		.4byte	0x260
 1879 0b62 20       		.byte	0x20
 1880 0b63 00       		.byte	0
 1881 0b64 1E       		.uleb128 0x1e
 1882 0b65 EC0A0000 		.4byte	0xaec
 1883 0b69 2A       		.uleb128 0x2a
 1884 0b6a 35060000 		.4byte	.LASF140
 1885 0b6e 0F       		.byte	0xf
 1886 0b6f 8B       		.byte	0x8b
 1887 0b70 39020000 		.4byte	0x239
 1888 0b74 2A       		.uleb128 0x2a
 1889 0b75 1F090000 		.4byte	.LASF141
 1890 0b79 0F       		.byte	0xf
 1891 0b7a 8C       		.byte	0x8c
 1892 0b7b 60020000 		.4byte	0x260
 1893 0b7f 14       		.uleb128 0x14
 1894 0b80 B4080000 		.4byte	0x8b4
 1895 0b84 8F0B0000 		.4byte	0xb8f
 1896 0b88 15       		.uleb128 0x15
 1897 0b89 06030000 		.4byte	0x306
 1898 0b8d 01       		.byte	0x1
 1899 0b8e 00       		.byte	0
 1900 0b8f 2A       		.uleb128 0x2a
 1901 0b90 DA040000 		.4byte	.LASF142
 1902 0b94 0F       		.byte	0xf
 1903 0b95 8F       		.byte	0x8f
 1904 0b96 7F0B0000 		.4byte	0xb7f
 1905 0b9a 2B       		.uleb128 0x2b
 1906 0b9b EE040000 		.4byte	.LASF279
 1907 0b9f 0F       		.byte	0xf
 1908 0ba0 34       		.byte	0x34
 1909 0ba1 E10A0000 		.4byte	0xae1
 1910 0ba5 2C       		.uleb128 0x2c
 1911 0ba6 7E030000 		.4byte	.LASF143
 1912 0baa 0F       		.byte	0xf
 1913 0bab 35       		.byte	0x35
 1914 0bac BF0B0000 		.4byte	0xbbf
 1915 0bb0 BF0B0000 		.4byte	0xbbf
 1916 0bb4 08       		.uleb128 0x8
 1917 0bb5 D10A0000 		.4byte	0xad1
 1918 0bb9 08       		.uleb128 0x8
 1919 0bba D10A0000 		.4byte	0xad1
 1920 0bbe 00       		.byte	0
 1921 0bbf 0B       		.uleb128 0xb
 1922 0bc0 08       		.byte	0x8
 1923 0bc1 04       		.byte	0x4
 1924 0bc2 6E0D0000 		.4byte	.LASF144
ARM GAS  /tmp/cc8RfTnf.s 			page 67


 1925 0bc6 2C       		.uleb128 0x2c
 1926 0bc7 29000000 		.4byte	.LASF145
 1927 0bcb 0F       		.byte	0xf
 1928 0bcc 36       		.byte	0x36
 1929 0bcd D10A0000 		.4byte	0xad1
 1930 0bd1 DB0B0000 		.4byte	0xbdb
 1931 0bd5 08       		.uleb128 0x8
 1932 0bd6 DB0B0000 		.4byte	0xbdb
 1933 0bda 00       		.byte	0
 1934 0bdb 19       		.uleb128 0x19
 1935 0bdc 04       		.byte	0x4
 1936 0bdd EC0A0000 		.4byte	0xaec
 1937 0be1 2C       		.uleb128 0x2c
 1938 0be2 B9030000 		.4byte	.LASF146
 1939 0be6 0F       		.byte	0xf
 1940 0be7 37       		.byte	0x37
 1941 0be8 D10A0000 		.4byte	0xad1
 1942 0bec F60B0000 		.4byte	0xbf6
 1943 0bf0 08       		.uleb128 0x8
 1944 0bf1 F60B0000 		.4byte	0xbf6
 1945 0bf5 00       		.byte	0
 1946 0bf6 19       		.uleb128 0x19
 1947 0bf7 04       		.byte	0x4
 1948 0bf8 D10A0000 		.4byte	0xad1
 1949 0bfc 2C       		.uleb128 0x2c
 1950 0bfd C1060000 		.4byte	.LASF147
 1951 0c01 0F       		.byte	0xf
 1952 0c02 39       		.byte	0x39
 1953 0c03 B4080000 		.4byte	0x8b4
 1954 0c07 110C0000 		.4byte	0xc11
 1955 0c0b 08       		.uleb128 0x8
 1956 0c0c 110C0000 		.4byte	0xc11
 1957 0c10 00       		.byte	0
 1958 0c11 19       		.uleb128 0x19
 1959 0c12 04       		.byte	0x4
 1960 0c13 640B0000 		.4byte	0xb64
 1961 0c17 1E       		.uleb128 0x1e
 1962 0c18 110C0000 		.4byte	0xc11
 1963 0c1c 2C       		.uleb128 0x2c
 1964 0c1d 98030000 		.4byte	.LASF148
 1965 0c21 0F       		.byte	0xf
 1966 0c22 3A       		.byte	0x3a
 1967 0c23 B4080000 		.4byte	0x8b4
 1968 0c27 310C0000 		.4byte	0xc31
 1969 0c2b 08       		.uleb128 0x8
 1970 0c2c 310C0000 		.4byte	0xc31
 1971 0c30 00       		.byte	0
 1972 0c31 19       		.uleb128 0x19
 1973 0c32 04       		.byte	0x4
 1974 0c33 DC0A0000 		.4byte	0xadc
 1975 0c37 2C       		.uleb128 0x2c
 1976 0c38 0B090000 		.4byte	.LASF149
 1977 0c3c 0F       		.byte	0xf
 1978 0c3d 3B       		.byte	0x3b
 1979 0c3e DB0B0000 		.4byte	0xbdb
 1980 0c42 4C0C0000 		.4byte	0xc4c
 1981 0c46 08       		.uleb128 0x8
ARM GAS  /tmp/cc8RfTnf.s 			page 68


 1982 0c47 310C0000 		.4byte	0xc31
 1983 0c4b 00       		.byte	0
 1984 0c4c 2C       		.uleb128 0x2c
 1985 0c4d 20060000 		.4byte	.LASF150
 1986 0c51 0F       		.byte	0xf
 1987 0c52 3C       		.byte	0x3c
 1988 0c53 DB0B0000 		.4byte	0xbdb
 1989 0c57 610C0000 		.4byte	0xc61
 1990 0c5b 08       		.uleb128 0x8
 1991 0c5c 310C0000 		.4byte	0xc31
 1992 0c60 00       		.byte	0
 1993 0c61 2C       		.uleb128 0x2c
 1994 0c62 96020000 		.4byte	.LASF151
 1995 0c66 0F       		.byte	0xf
 1996 0c67 3E       		.byte	0x3e
 1997 0c68 6E020000 		.4byte	0x26e
 1998 0c6c 850C0000 		.4byte	0xc85
 1999 0c70 08       		.uleb128 0x8
 2000 0c71 B4080000 		.4byte	0x8b4
 2001 0c75 08       		.uleb128 0x8
 2002 0c76 6E020000 		.4byte	0x26e
 2003 0c7a 08       		.uleb128 0x8
 2004 0c7b EA080000 		.4byte	0x8ea
 2005 0c7f 08       		.uleb128 0x8
 2006 0c80 110C0000 		.4byte	0xc11
 2007 0c84 00       		.byte	0
 2008 0c85 2D       		.uleb128 0x2d
 2009 0c86 2B030000 		.4byte	.LASF331
 2010 0c8a 01       		.byte	0x1
 2011 0c8b 10       		.byte	0x10
 2012 0c8c 0A       		.byte	0xa
 2013 0c8d 080D0000 		.4byte	0xd08
 2014 0c91 2E       		.uleb128 0x2e
 2015 0c92 46040000 		.4byte	.LASF332
 2016 0c96 10       		.byte	0x10
 2017 0c97 0D       		.byte	0xd
 2018 0c98 22010000 		.4byte	.LASF333
 2019 0c9c 01       		.byte	0x1
 2020 0c9d 2F       		.uleb128 0x2f
 2021 0c9e A7040000 		.4byte	.LASF152
 2022 0ca2 10       		.byte	0x10
 2023 0ca3 0F       		.byte	0xf
 2024 0ca4 4D000000 		.4byte	.LASF154
 2025 0ca8 080D0000 		.4byte	0xd08
 2026 0cac 01       		.byte	0x1
 2027 0cad 2F       		.uleb128 0x2f
 2028 0cae 79040000 		.4byte	.LASF153
 2029 0cb2 10       		.byte	0x10
 2030 0cb3 10       		.byte	0x10
 2031 0cb4 EB030000 		.4byte	.LASF155
 2032 0cb8 D10A0000 		.4byte	0xad1
 2033 0cbc 01       		.byte	0x1
 2034 0cbd 30       		.uleb128 0x30
 2035 0cbe F50B0000 		.4byte	.LASF156
 2036 0cc2 10       		.byte	0x10
 2037 0cc3 12       		.byte	0x12
 2038 0cc4 CA020000 		.4byte	.LASF158
ARM GAS  /tmp/cc8RfTnf.s 			page 69


 2039 0cc8 080D0000 		.4byte	0xd08
 2040 0ccc 01       		.byte	0x1
 2041 0ccd D70C0000 		.4byte	0xcd7
 2042 0cd1 08       		.uleb128 0x8
 2043 0cd2 D10A0000 		.4byte	0xad1
 2044 0cd6 00       		.byte	0
 2045 0cd7 30       		.uleb128 0x30
 2046 0cd8 D7050000 		.4byte	.LASF157
 2047 0cdc 10       		.byte	0x10
 2048 0cdd 13       		.byte	0x13
 2049 0cde 4A0D0000 		.4byte	.LASF159
 2050 0ce2 080D0000 		.4byte	0xd08
 2051 0ce6 01       		.byte	0x1
 2052 0ce7 F10C0000 		.4byte	0xcf1
 2053 0ceb 08       		.uleb128 0x8
 2054 0cec D10A0000 		.4byte	0xad1
 2055 0cf0 00       		.byte	0
 2056 0cf1 31       		.uleb128 0x31
 2057 0cf2 4B0B0000 		.4byte	.LASF160
 2058 0cf6 10       		.byte	0x10
 2059 0cf7 14       		.byte	0x14
 2060 0cf8 D6060000 		.4byte	.LASF334
 2061 0cfc 080D0000 		.4byte	0xd08
 2062 0d00 01       		.byte	0x1
 2063 0d01 08       		.uleb128 0x8
 2064 0d02 D10A0000 		.4byte	0xad1
 2065 0d06 00       		.byte	0
 2066 0d07 00       		.byte	0
 2067 0d08 0B       		.uleb128 0xb
 2068 0d09 01       		.byte	0x1
 2069 0d0a 02       		.byte	0x2
 2070 0d0b C9060000 		.4byte	.LASF161
 2071 0d0f 28       		.uleb128 0x28
 2072 0d10 080D0000 		.4byte	0xd08
 2073 0d14 32       		.uleb128 0x32
 2074 0d15 11080000 		.4byte	.LASF316
 2075 0d19 01       		.byte	0x1
 2076 0d1a 07020000 		.4byte	0x207
 2077 0d1e 11       		.byte	0x11
 2078 0d1f 48       		.byte	0x48
 2079 0d20 B70E0000 		.4byte	0xeb7
 2080 0d24 33       		.uleb128 0x33
 2081 0d25 C9080000 		.4byte	.LASF162
 2082 0d29 72       		.sleb128 -14
 2083 0d2a 33       		.uleb128 0x33
 2084 0d2b 1B0D0000 		.4byte	.LASF163
 2085 0d2f 73       		.sleb128 -13
 2086 0d30 33       		.uleb128 0x33
 2087 0d31 35020000 		.4byte	.LASF164
 2088 0d35 74       		.sleb128 -12
 2089 0d36 33       		.uleb128 0x33
 2090 0d37 05070000 		.4byte	.LASF165
 2091 0d3b 75       		.sleb128 -11
 2092 0d3c 33       		.uleb128 0x33
 2093 0d3d 650B0000 		.4byte	.LASF166
 2094 0d41 76       		.sleb128 -10
 2095 0d42 33       		.uleb128 0x33
ARM GAS  /tmp/cc8RfTnf.s 			page 70


 2096 0d43 A00B0000 		.4byte	.LASF167
 2097 0d47 7B       		.sleb128 -5
 2098 0d48 33       		.uleb128 0x33
 2099 0d49 530B0000 		.4byte	.LASF168
 2100 0d4d 7C       		.sleb128 -4
 2101 0d4e 33       		.uleb128 0x33
 2102 0d4f 4B070000 		.4byte	.LASF169
 2103 0d53 7E       		.sleb128 -2
 2104 0d54 33       		.uleb128 0x33
 2105 0d55 A30A0000 		.4byte	.LASF170
 2106 0d59 7F       		.sleb128 -1
 2107 0d5a 34       		.uleb128 0x34
 2108 0d5b 0C050000 		.4byte	.LASF171
 2109 0d5f 00       		.byte	0
 2110 0d60 34       		.uleb128 0x34
 2111 0d61 1F000000 		.4byte	.LASF172
 2112 0d65 01       		.byte	0x1
 2113 0d66 34       		.uleb128 0x34
 2114 0d67 4E080000 		.4byte	.LASF173
 2115 0d6b 02       		.byte	0x2
 2116 0d6c 34       		.uleb128 0x34
 2117 0d6d 0D0D0000 		.4byte	.LASF174
 2118 0d71 03       		.byte	0x3
 2119 0d72 34       		.uleb128 0x34
 2120 0d73 F4060000 		.4byte	.LASF175
 2121 0d77 04       		.byte	0x4
 2122 0d78 34       		.uleb128 0x34
 2123 0d79 980D0000 		.4byte	.LASF176
 2124 0d7d 05       		.byte	0x5
 2125 0d7e 34       		.uleb128 0x34
 2126 0d7f DC000000 		.4byte	.LASF177
 2127 0d83 06       		.byte	0x6
 2128 0d84 34       		.uleb128 0x34
 2129 0d85 F0080000 		.4byte	.LASF178
 2130 0d89 07       		.byte	0x7
 2131 0d8a 34       		.uleb128 0x34
 2132 0d8b 51030000 		.4byte	.LASF179
 2133 0d8f 08       		.byte	0x8
 2134 0d90 34       		.uleb128 0x34
 2135 0d91 7B070000 		.4byte	.LASF180
 2136 0d95 0A       		.byte	0xa
 2137 0d96 34       		.uleb128 0x34
 2138 0d97 34080000 		.4byte	.LASF181
 2139 0d9b 0B       		.byte	0xb
 2140 0d9c 34       		.uleb128 0x34
 2141 0d9d E5000000 		.4byte	.LASF182
 2142 0da1 0C       		.byte	0xc
 2143 0da2 34       		.uleb128 0x34
 2144 0da3 B6010000 		.4byte	.LASF183
 2145 0da7 0D       		.byte	0xd
 2146 0da8 34       		.uleb128 0x34
 2147 0da9 A7080000 		.4byte	.LASF184
 2148 0dad 0E       		.byte	0xe
 2149 0dae 34       		.uleb128 0x34
 2150 0daf D5070000 		.4byte	.LASF185
 2151 0db3 0F       		.byte	0xf
 2152 0db4 34       		.uleb128 0x34
ARM GAS  /tmp/cc8RfTnf.s 			page 71


 2153 0db5 39090000 		.4byte	.LASF186
 2154 0db9 10       		.byte	0x10
 2155 0dba 34       		.uleb128 0x34
 2156 0dbb 8E030000 		.4byte	.LASF187
 2157 0dbf 11       		.byte	0x11
 2158 0dc0 34       		.uleb128 0x34
 2159 0dc1 93080000 		.4byte	.LASF188
 2160 0dc5 12       		.byte	0x12
 2161 0dc6 34       		.uleb128 0x34
 2162 0dc7 16050000 		.4byte	.LASF189
 2163 0dcb 13       		.byte	0x13
 2164 0dcc 34       		.uleb128 0x34
 2165 0dcd 120B0000 		.4byte	.LASF190
 2166 0dd1 14       		.byte	0x14
 2167 0dd2 34       		.uleb128 0x34
 2168 0dd3 B0070000 		.4byte	.LASF191
 2169 0dd7 15       		.byte	0x15
 2170 0dd8 34       		.uleb128 0x34
 2171 0dd9 D1040000 		.4byte	.LASF192
 2172 0ddd 16       		.byte	0x16
 2173 0dde 34       		.uleb128 0x34
 2174 0ddf 4B040000 		.4byte	.LASF193
 2175 0de3 17       		.byte	0x17
 2176 0de4 34       		.uleb128 0x34
 2177 0de5 8F0D0000 		.4byte	.LASF194
 2178 0de9 18       		.byte	0x18
 2179 0dea 34       		.uleb128 0x34
 2180 0deb BA070000 		.4byte	.LASF195
 2181 0def 19       		.byte	0x19
 2182 0df0 34       		.uleb128 0x34
 2183 0df1 64010000 		.4byte	.LASF196
 2184 0df5 1A       		.byte	0x1a
 2185 0df6 34       		.uleb128 0x34
 2186 0df7 8C0A0000 		.4byte	.LASF197
 2187 0dfb 1B       		.byte	0x1b
 2188 0dfc 34       		.uleb128 0x34
 2189 0dfd 57050000 		.4byte	.LASF198
 2190 0e01 1C       		.byte	0x1c
 2191 0e02 34       		.uleb128 0x34
 2192 0e03 0F030000 		.4byte	.LASF199
 2193 0e07 1D       		.byte	0x1d
 2194 0e08 34       		.uleb128 0x34
 2195 0e09 D2000000 		.4byte	.LASF200
 2196 0e0d 1E       		.byte	0x1e
 2197 0e0e 34       		.uleb128 0x34
 2198 0e0f 90060000 		.4byte	.LASF201
 2199 0e13 1F       		.byte	0x1f
 2200 0e14 34       		.uleb128 0x34
 2201 0e15 B10D0000 		.4byte	.LASF202
 2202 0e19 20       		.byte	0x20
 2203 0e1a 34       		.uleb128 0x34
 2204 0e1b 90070000 		.4byte	.LASF203
 2205 0e1f 21       		.byte	0x21
 2206 0e20 34       		.uleb128 0x34
 2207 0e21 C3070000 		.4byte	.LASF204
 2208 0e25 22       		.byte	0x22
 2209 0e26 34       		.uleb128 0x34
ARM GAS  /tmp/cc8RfTnf.s 			page 72


 2210 0e27 D90C0000 		.4byte	.LASF205
 2211 0e2b 23       		.byte	0x23
 2212 0e2c 34       		.uleb128 0x34
 2213 0e2d 85070000 		.4byte	.LASF206
 2214 0e31 25       		.byte	0x25
 2215 0e32 34       		.uleb128 0x34
 2216 0e33 34010000 		.4byte	.LASF207
 2217 0e37 27       		.byte	0x27
 2218 0e38 34       		.uleb128 0x34
 2219 0e39 180C0000 		.4byte	.LASF208
 2220 0e3d 28       		.byte	0x28
 2221 0e3e 34       		.uleb128 0x34
 2222 0e3f 57070000 		.4byte	.LASF209
 2223 0e43 29       		.byte	0x29
 2224 0e44 34       		.uleb128 0x34
 2225 0e45 05030000 		.4byte	.LASF210
 2226 0e49 2A       		.byte	0x2a
 2227 0e4a 34       		.uleb128 0x34
 2228 0e4b BA020000 		.4byte	.LASF211
 2229 0e4f 2B       		.byte	0x2b
 2230 0e50 34       		.uleb128 0x34
 2231 0e51 2E0C0000 		.4byte	.LASF212
 2232 0e55 2C       		.byte	0x2c
 2233 0e56 34       		.uleb128 0x34
 2234 0e57 A7060000 		.4byte	.LASF213
 2235 0e5b 2D       		.byte	0x2d
 2236 0e5c 34       		.uleb128 0x34
 2237 0e5d C2010000 		.4byte	.LASF214
 2238 0e61 2E       		.byte	0x2e
 2239 0e62 34       		.uleb128 0x34
 2240 0e63 5F0D0000 		.4byte	.LASF215
 2241 0e67 2F       		.byte	0x2f
 2242 0e68 34       		.uleb128 0x34
 2243 0e69 99070000 		.4byte	.LASF216
 2244 0e6d 30       		.byte	0x30
 2245 0e6e 34       		.uleb128 0x34
 2246 0e6f 2A0D0000 		.4byte	.LASF217
 2247 0e73 31       		.byte	0x31
 2248 0e74 34       		.uleb128 0x34
 2249 0e75 6B090000 		.4byte	.LASF218
 2250 0e79 32       		.byte	0x32
 2251 0e7a 34       		.uleb128 0x34
 2252 0e7b B60A0000 		.4byte	.LASF219
 2253 0e7f 33       		.byte	0x33
 2254 0e80 34       		.uleb128 0x34
 2255 0e81 A1050000 		.4byte	.LASF220
 2256 0e85 34       		.byte	0x34
 2257 0e86 34       		.uleb128 0x34
 2258 0e87 29070000 		.4byte	.LASF221
 2259 0e8b 38       		.byte	0x38
 2260 0e8c 34       		.uleb128 0x34
 2261 0e8d 2F050000 		.4byte	.LASF222
 2262 0e91 39       		.byte	0x39
 2263 0e92 34       		.uleb128 0x34
 2264 0e93 09020000 		.4byte	.LASF223
 2265 0e97 3A       		.byte	0x3a
 2266 0e98 34       		.uleb128 0x34
ARM GAS  /tmp/cc8RfTnf.s 			page 73


 2267 0e99 E9050000 		.4byte	.LASF224
 2268 0e9d 3B       		.byte	0x3b
 2269 0e9e 34       		.uleb128 0x34
 2270 0e9f AC010000 		.4byte	.LASF225
 2271 0ea3 3C       		.byte	0x3c
 2272 0ea4 34       		.uleb128 0x34
 2273 0ea5 D5010000 		.4byte	.LASF226
 2274 0ea9 3E       		.byte	0x3e
 2275 0eaa 34       		.uleb128 0x34
 2276 0eab 010C0000 		.4byte	.LASF227
 2277 0eaf 3F       		.byte	0x3f
 2278 0eb0 34       		.uleb128 0x34
 2279 0eb1 07010000 		.4byte	.LASF228
 2280 0eb5 40       		.byte	0x40
 2281 0eb6 00       		.byte	0
 2282 0eb7 0C       		.uleb128 0xc
 2283 0eb8 17040000 		.4byte	.LASF229
 2284 0ebc 11       		.byte	0x11
 2285 0ebd 91       		.byte	0x91
 2286 0ebe 140D0000 		.4byte	0xd14
 2287 0ec2 35       		.uleb128 0x35
 2288 0ec3 040E     		.2byte	0xe04
 2289 0ec5 02       		.byte	0x2
 2290 0ec6 7B01     		.2byte	0x17b
 2291 0ec8 6A060000 		.4byte	.LASF335
 2292 0ecc 820F0000 		.4byte	0xf82
 2293 0ed0 22       		.uleb128 0x22
 2294 0ed1 B5020000 		.4byte	.LASF230
 2295 0ed5 02       		.byte	0x2
 2296 0ed6 7C01     		.2byte	0x17c
 2297 0ed8 920F0000 		.4byte	0xf92
 2298 0edc 00       		.byte	0
 2299 0edd 22       		.uleb128 0x22
 2300 0ede 57080000 		.4byte	.LASF231
 2301 0ee2 02       		.byte	0x2
 2302 0ee3 7D01     		.2byte	0x17d
 2303 0ee5 970F0000 		.4byte	0xf97
 2304 0ee9 20       		.byte	0x20
 2305 0eea 22       		.uleb128 0x22
 2306 0eeb 0C0C0000 		.4byte	.LASF232
 2307 0eef 02       		.byte	0x2
 2308 0ef0 7E01     		.2byte	0x17e
 2309 0ef2 920F0000 		.4byte	0xf92
 2310 0ef6 80       		.byte	0x80
 2311 0ef7 22       		.uleb128 0x22
 2312 0ef8 FC020000 		.4byte	.LASF233
 2313 0efc 02       		.byte	0x2
 2314 0efd 7F01     		.2byte	0x17f
 2315 0eff 970F0000 		.4byte	0xf97
 2316 0f03 A0       		.byte	0xa0
 2317 0f04 24       		.uleb128 0x24
 2318 0f05 3C0D0000 		.4byte	.LASF234
 2319 0f09 02       		.byte	0x2
 2320 0f0a 8001     		.2byte	0x180
 2321 0f0c 920F0000 		.4byte	0xf92
 2322 0f10 0001     		.2byte	0x100
 2323 0f12 24       		.uleb128 0x24
ARM GAS  /tmp/cc8RfTnf.s 			page 74


 2324 0f13 61080000 		.4byte	.LASF235
 2325 0f17 02       		.byte	0x2
 2326 0f18 8101     		.2byte	0x181
 2327 0f1a 970F0000 		.4byte	0xf97
 2328 0f1e 2001     		.2byte	0x120
 2329 0f20 24       		.uleb128 0x24
 2330 0f21 AB070000 		.4byte	.LASF236
 2331 0f25 02       		.byte	0x2
 2332 0f26 8201     		.2byte	0x182
 2333 0f28 920F0000 		.4byte	0xf92
 2334 0f2c 8001     		.2byte	0x180
 2335 0f2e 24       		.uleb128 0x24
 2336 0f2f 6B080000 		.4byte	.LASF237
 2337 0f33 02       		.byte	0x2
 2338 0f34 8301     		.2byte	0x183
 2339 0f36 970F0000 		.4byte	0xf97
 2340 0f3a A001     		.2byte	0x1a0
 2341 0f3c 24       		.uleb128 0x24
 2342 0f3d 290C0000 		.4byte	.LASF238
 2343 0f41 02       		.byte	0x2
 2344 0f42 8401     		.2byte	0x184
 2345 0f44 920F0000 		.4byte	0xf92
 2346 0f48 0002     		.2byte	0x200
 2347 0f4a 24       		.uleb128 0x24
 2348 0f4b 75080000 		.4byte	.LASF239
 2349 0f4f 02       		.byte	0x2
 2350 0f50 8501     		.2byte	0x185
 2351 0f52 A70F0000 		.4byte	0xfa7
 2352 0f56 2002     		.2byte	0x220
 2353 0f58 36       		.uleb128 0x36
 2354 0f59 495000   		.ascii	"IP\000"
 2355 0f5c 02       		.byte	0x2
 2356 0f5d 8601     		.2byte	0x186
 2357 0f5f C70F0000 		.4byte	0xfc7
 2358 0f63 0003     		.2byte	0x300
 2359 0f65 24       		.uleb128 0x24
 2360 0f66 7F080000 		.4byte	.LASF240
 2361 0f6a 02       		.byte	0x2
 2362 0f6b 8701     		.2byte	0x187
 2363 0f6d CC0F0000 		.4byte	0xfcc
 2364 0f71 F003     		.2byte	0x3f0
 2365 0f73 24       		.uleb128 0x24
 2366 0f74 1D080000 		.4byte	.LASF241
 2367 0f78 02       		.byte	0x2
 2368 0f79 8801     		.2byte	0x188
 2369 0f7b C70A0000 		.4byte	0xac7
 2370 0f7f 000E     		.2byte	0xe00
 2371 0f81 00       		.byte	0
 2372 0f82 14       		.uleb128 0x14
 2373 0f83 C70A0000 		.4byte	0xac7
 2374 0f87 920F0000 		.4byte	0xf92
 2375 0f8b 15       		.uleb128 0x15
 2376 0f8c 06030000 		.4byte	0x306
 2377 0f90 07       		.byte	0x7
 2378 0f91 00       		.byte	0
 2379 0f92 28       		.uleb128 0x28
 2380 0f93 820F0000 		.4byte	0xf82
ARM GAS  /tmp/cc8RfTnf.s 			page 75


 2381 0f97 14       		.uleb128 0x14
 2382 0f98 BC0A0000 		.4byte	0xabc
 2383 0f9c A70F0000 		.4byte	0xfa7
 2384 0fa0 15       		.uleb128 0x15
 2385 0fa1 06030000 		.4byte	0x306
 2386 0fa5 17       		.byte	0x17
 2387 0fa6 00       		.byte	0
 2388 0fa7 14       		.uleb128 0x14
 2389 0fa8 BC0A0000 		.4byte	0xabc
 2390 0fac B70F0000 		.4byte	0xfb7
 2391 0fb0 15       		.uleb128 0x15
 2392 0fb1 06030000 		.4byte	0x306
 2393 0fb5 37       		.byte	0x37
 2394 0fb6 00       		.byte	0
 2395 0fb7 14       		.uleb128 0x14
 2396 0fb8 A70A0000 		.4byte	0xaa7
 2397 0fbc C70F0000 		.4byte	0xfc7
 2398 0fc0 15       		.uleb128 0x15
 2399 0fc1 06030000 		.4byte	0x306
 2400 0fc5 EF       		.byte	0xef
 2401 0fc6 00       		.byte	0
 2402 0fc7 28       		.uleb128 0x28
 2403 0fc8 B70F0000 		.4byte	0xfb7
 2404 0fcc 14       		.uleb128 0x14
 2405 0fcd BC0A0000 		.4byte	0xabc
 2406 0fd1 DD0F0000 		.4byte	0xfdd
 2407 0fd5 37       		.uleb128 0x37
 2408 0fd6 06030000 		.4byte	0x306
 2409 0fda 8302     		.2byte	0x283
 2410 0fdc 00       		.byte	0
 2411 0fdd 0F       		.uleb128 0xf
 2412 0fde 74090000 		.4byte	.LASF242
 2413 0fe2 02       		.byte	0x2
 2414 0fe3 8901     		.2byte	0x189
 2415 0fe5 C20E0000 		.4byte	0xec2
 2416 0fe9 27       		.uleb128 0x27
 2417 0fea B3080000 		.4byte	.LASF243
 2418 0fee 02       		.byte	0x2
 2419 0fef 6508     		.2byte	0x865
 2420 0ff1 B70A0000 		.4byte	0xab7
 2421 0ff5 2A       		.uleb128 0x2a
 2422 0ff6 01080000 		.4byte	.LASF244
 2423 0ffa 12       		.byte	0x12
 2424 0ffb 3A       		.byte	0x3a
 2425 0ffc BC0A0000 		.4byte	0xabc
 2426 1000 10       		.uleb128 0x10
 2427 1001 30       		.byte	0x30
 2428 1002 13       		.byte	0x13
 2429 1003 38       		.byte	0x38
 2430 1004 F0020000 		.4byte	.LASF246
 2431 1008 9D100000 		.4byte	0x109d
 2432 100c 13       		.uleb128 0x13
 2433 100d 2D080000 		.4byte	.LASF247
 2434 1011 13       		.byte	0x13
 2435 1012 39       		.byte	0x39
 2436 1013 C70A0000 		.4byte	0xac7
 2437 1017 00       		.byte	0
ARM GAS  /tmp/cc8RfTnf.s 			page 76


 2438 1018 13       		.uleb128 0x13
 2439 1019 10040000 		.4byte	.LASF248
 2440 101d 13       		.byte	0x13
 2441 101e 3A       		.byte	0x3a
 2442 101f C70A0000 		.4byte	0xac7
 2443 1023 04       		.byte	0x4
 2444 1024 13       		.uleb128 0x13
 2445 1025 A3010000 		.4byte	.LASF249
 2446 1029 13       		.byte	0x13
 2447 102a 3B       		.byte	0x3b
 2448 102b C70A0000 		.4byte	0xac7
 2449 102f 08       		.byte	0x8
 2450 1030 13       		.uleb128 0x13
 2451 1031 EF000000 		.4byte	.LASF250
 2452 1035 13       		.byte	0x13
 2453 1036 3C       		.byte	0x3c
 2454 1037 C70A0000 		.4byte	0xac7
 2455 103b 0C       		.byte	0xc
 2456 103c 13       		.uleb128 0x13
 2457 103d EA070000 		.4byte	.LASF251
 2458 1041 13       		.byte	0x13
 2459 1042 3D       		.byte	0x3d
 2460 1043 C70A0000 		.4byte	0xac7
 2461 1047 10       		.byte	0x10
 2462 1048 13       		.uleb128 0x13
 2463 1049 7E090000 		.4byte	.LASF252
 2464 104d 13       		.byte	0x13
 2465 104e 3E       		.byte	0x3e
 2466 104f C70A0000 		.4byte	0xac7
 2467 1053 14       		.byte	0x14
 2468 1054 13       		.uleb128 0x13
 2469 1055 DD080000 		.4byte	.LASF253
 2470 1059 13       		.byte	0x13
 2471 105a 3F       		.byte	0x3f
 2472 105b C70A0000 		.4byte	0xac7
 2473 105f 18       		.byte	0x18
 2474 1060 13       		.uleb128 0x13
 2475 1061 EB060000 		.4byte	.LASF254
 2476 1065 13       		.byte	0x13
 2477 1066 40       		.byte	0x40
 2478 1067 C70A0000 		.4byte	0xac7
 2479 106b 1C       		.byte	0x1c
 2480 106c 13       		.uleb128 0x13
 2481 106d 76010000 		.4byte	.LASF255
 2482 1071 13       		.byte	0x13
 2483 1072 41       		.byte	0x41
 2484 1073 C70A0000 		.4byte	0xac7
 2485 1077 20       		.byte	0x20
 2486 1078 13       		.uleb128 0x13
 2487 1079 8C000000 		.4byte	.LASF256
 2488 107d 13       		.byte	0x13
 2489 107e 42       		.byte	0x42
 2490 107f C70A0000 		.4byte	0xac7
 2491 1083 24       		.byte	0x24
 2492 1084 13       		.uleb128 0x13
 2493 1085 46080000 		.4byte	.LASF257
 2494 1089 13       		.byte	0x13
ARM GAS  /tmp/cc8RfTnf.s 			page 77


 2495 108a 43       		.byte	0x43
 2496 108b C70A0000 		.4byte	0xac7
 2497 108f 28       		.byte	0x28
 2498 1090 13       		.uleb128 0x13
 2499 1091 FD060000 		.4byte	.LASF258
 2500 1095 13       		.byte	0x13
 2501 1096 44       		.byte	0x44
 2502 1097 C70A0000 		.4byte	0xac7
 2503 109b 2C       		.byte	0x2c
 2504 109c 00       		.byte	0
 2505 109d 38       		.uleb128 0x38
 2506 109e 52746300 		.ascii	"Rtc\000"
 2507 10a2 13       		.byte	0x13
 2508 10a3 45       		.byte	0x45
 2509 10a4 00100000 		.4byte	0x1000
 2510 10a8 10       		.uleb128 0x10
 2511 10a9 08       		.byte	0x8
 2512 10aa 14       		.byte	0x14
 2513 10ab 20       		.byte	0x20
 2514 10ac 77000000 		.4byte	.LASF259
 2515 10b0 CD100000 		.4byte	0x10cd
 2516 10b4 13       		.uleb128 0x13
 2517 10b5 04060000 		.4byte	.LASF260
 2518 10b9 14       		.byte	0x14
 2519 10ba 21       		.byte	0x21
 2520 10bb 60020000 		.4byte	0x260
 2521 10bf 00       		.byte	0
 2522 10c0 18       		.uleb128 0x18
 2523 10c1 72656D00 		.ascii	"rem\000"
 2524 10c5 14       		.byte	0x14
 2525 10c6 22       		.byte	0x22
 2526 10c7 60020000 		.4byte	0x260
 2527 10cb 04       		.byte	0x4
 2528 10cc 00       		.byte	0
 2529 10cd 0C       		.uleb128 0xc
 2530 10ce 230C0000 		.4byte	.LASF261
 2531 10d2 14       		.byte	0x14
 2532 10d3 23       		.byte	0x23
 2533 10d4 A8100000 		.4byte	0x10a8
 2534 10d8 10       		.uleb128 0x10
 2535 10d9 08       		.byte	0x8
 2536 10da 14       		.byte	0x14
 2537 10db 26       		.byte	0x26
 2538 10dc 390C0000 		.4byte	.LASF262
 2539 10e0 FD100000 		.4byte	0x10fd
 2540 10e4 13       		.uleb128 0x13
 2541 10e5 04060000 		.4byte	.LASF260
 2542 10e9 14       		.byte	0x14
 2543 10ea 27       		.byte	0x27
 2544 10eb 39020000 		.4byte	0x239
 2545 10ef 00       		.byte	0
 2546 10f0 18       		.uleb128 0x18
 2547 10f1 72656D00 		.ascii	"rem\000"
 2548 10f5 14       		.byte	0x14
 2549 10f6 28       		.byte	0x28
 2550 10f7 39020000 		.4byte	0x239
 2551 10fb 04       		.byte	0x4
ARM GAS  /tmp/cc8RfTnf.s 			page 78


 2552 10fc 00       		.byte	0
 2553 10fd 0C       		.uleb128 0xc
 2554 10fe 43090000 		.4byte	.LASF263
 2555 1102 14       		.byte	0x14
 2556 1103 29       		.byte	0x29
 2557 1104 D8100000 		.4byte	0x10d8
 2558 1108 10       		.uleb128 0x10
 2559 1109 10       		.byte	0x10
 2560 110a 14       		.byte	0x14
 2561 110b 2D       		.byte	0x2d
 2562 110c B40C0000 		.4byte	.LASF264
 2563 1110 2D110000 		.4byte	0x112d
 2564 1114 13       		.uleb128 0x13
 2565 1115 04060000 		.4byte	.LASF260
 2566 1119 14       		.byte	0x14
 2567 111a 2E       		.byte	0x2e
 2568 111b 52020000 		.4byte	0x252
 2569 111f 00       		.byte	0
 2570 1120 18       		.uleb128 0x18
 2571 1121 72656D00 		.ascii	"rem\000"
 2572 1125 14       		.byte	0x14
 2573 1126 2F       		.byte	0x2f
 2574 1127 52020000 		.4byte	0x252
 2575 112b 08       		.byte	0x8
 2576 112c 00       		.byte	0
 2577 112d 0C       		.uleb128 0xc
 2578 112e 050D0000 		.4byte	.LASF265
 2579 1132 14       		.byte	0x14
 2580 1133 30       		.byte	0x30
 2581 1134 08110000 		.4byte	0x1108
 2582 1138 0C       		.uleb128 0xc
 2583 1139 3D070000 		.4byte	.LASF266
 2584 113d 14       		.byte	0x14
 2585 113e 35       		.byte	0x35
 2586 113f 43110000 		.4byte	0x1143
 2587 1143 19       		.uleb128 0x19
 2588 1144 04       		.byte	0x4
 2589 1145 49110000 		.4byte	0x1149
 2590 1149 1D       		.uleb128 0x1d
 2591 114a 60020000 		.4byte	0x260
 2592 114e 5D110000 		.4byte	0x115d
 2593 1152 08       		.uleb128 0x8
 2594 1153 5D110000 		.4byte	0x115d
 2595 1157 08       		.uleb128 0x8
 2596 1158 5D110000 		.4byte	0x115d
 2597 115c 00       		.byte	0
 2598 115d 19       		.uleb128 0x19
 2599 115e 04       		.byte	0x4
 2600 115f 63110000 		.4byte	0x1163
 2601 1163 39       		.uleb128 0x39
 2602 1164 2A       		.uleb128 0x2a
 2603 1165 960B0000 		.4byte	.LASF267
 2604 1169 14       		.byte	0x14
 2605 116a 5F       		.byte	0x5f
 2606 116b B4080000 		.4byte	0x8b4
 2607 116f 2C       		.uleb128 0x2c
 2608 1170 E9080000 		.4byte	.LASF268
ARM GAS  /tmp/cc8RfTnf.s 			page 79


 2609 1174 14       		.byte	0x14
 2610 1175 48       		.byte	0x48
 2611 1176 60020000 		.4byte	0x260
 2612 117a 84110000 		.4byte	0x1184
 2613 117e 08       		.uleb128 0x8
 2614 117f B6040000 		.4byte	0x4b6
 2615 1183 00       		.byte	0
 2616 1184 2C       		.uleb128 0x2c
 2617 1185 10000000 		.4byte	.LASF269
 2618 1189 14       		.byte	0x14
 2619 118a 49       		.byte	0x49
 2620 118b BF0B0000 		.4byte	0xbbf
 2621 118f 99110000 		.4byte	0x1199
 2622 1193 08       		.uleb128 0x8
 2623 1194 EA080000 		.4byte	0x8ea
 2624 1198 00       		.byte	0
 2625 1199 2C       		.uleb128 0x2c
 2626 119a 160D0000 		.4byte	.LASF270
 2627 119e 14       		.byte	0x14
 2628 119f 4D       		.byte	0x4d
 2629 11a0 60020000 		.4byte	0x260
 2630 11a4 AE110000 		.4byte	0x11ae
 2631 11a8 08       		.uleb128 0x8
 2632 11a9 EA080000 		.4byte	0x8ea
 2633 11ad 00       		.byte	0
 2634 11ae 2C       		.uleb128 0x2c
 2635 11af 15000000 		.4byte	.LASF271
 2636 11b3 14       		.byte	0x14
 2637 11b4 4F       		.byte	0x4f
 2638 11b5 39020000 		.4byte	0x239
 2639 11b9 C3110000 		.4byte	0x11c3
 2640 11bd 08       		.uleb128 0x8
 2641 11be EA080000 		.4byte	0x8ea
 2642 11c2 00       		.byte	0
 2643 11c3 2C       		.uleb128 0x2c
 2644 11c4 B5040000 		.4byte	.LASF272
 2645 11c8 14       		.byte	0x14
 2646 11c9 51       		.byte	0x51
 2647 11ca 23030000 		.4byte	0x323
 2648 11ce EC110000 		.4byte	0x11ec
 2649 11d2 08       		.uleb128 0x8
 2650 11d3 5D110000 		.4byte	0x115d
 2651 11d7 08       		.uleb128 0x8
 2652 11d8 5D110000 		.4byte	0x115d
 2653 11dc 08       		.uleb128 0x8
 2654 11dd 6E020000 		.4byte	0x26e
 2655 11e1 08       		.uleb128 0x8
 2656 11e2 6E020000 		.4byte	0x26e
 2657 11e6 08       		.uleb128 0x8
 2658 11e7 38110000 		.4byte	0x1138
 2659 11eb 00       		.byte	0
 2660 11ec 3A       		.uleb128 0x3a
 2661 11ed 64697600 		.ascii	"div\000"
 2662 11f1 14       		.byte	0x14
 2663 11f2 57       		.byte	0x57
 2664 11f3 CD100000 		.4byte	0x10cd
 2665 11f7 06120000 		.4byte	0x1206
ARM GAS  /tmp/cc8RfTnf.s 			page 80


 2666 11fb 08       		.uleb128 0x8
 2667 11fc 60020000 		.4byte	0x260
 2668 1200 08       		.uleb128 0x8
 2669 1201 60020000 		.4byte	0x260
 2670 1205 00       		.byte	0
 2671 1206 2C       		.uleb128 0x2c
 2672 1207 00000000 		.4byte	.LASF273
 2673 120b 14       		.byte	0x14
 2674 120c 5A       		.byte	0x5a
 2675 120d B4080000 		.4byte	0x8b4
 2676 1211 1B120000 		.4byte	0x121b
 2677 1215 08       		.uleb128 0x8
 2678 1216 EA080000 		.4byte	0x8ea
 2679 121a 00       		.byte	0
 2680 121b 2C       		.uleb128 0x2c
 2681 121c 1A070000 		.4byte	.LASF274
 2682 1220 14       		.byte	0x14
 2683 1221 63       		.byte	0x63
 2684 1222 FD100000 		.4byte	0x10fd
 2685 1226 35120000 		.4byte	0x1235
 2686 122a 08       		.uleb128 0x8
 2687 122b 39020000 		.4byte	0x239
 2688 122f 08       		.uleb128 0x8
 2689 1230 39020000 		.4byte	0x239
 2690 1234 00       		.byte	0
 2691 1235 2C       		.uleb128 0x2c
 2692 1236 A0000000 		.4byte	.LASF275
 2693 123a 14       		.byte	0x14
 2694 123b 65       		.byte	0x65
 2695 123c 60020000 		.4byte	0x260
 2696 1240 4F120000 		.4byte	0x124f
 2697 1244 08       		.uleb128 0x8
 2698 1245 EA080000 		.4byte	0x8ea
 2699 1249 08       		.uleb128 0x8
 2700 124a 6E020000 		.4byte	0x26e
 2701 124e 00       		.byte	0
 2702 124f 2C       		.uleb128 0x2c
 2703 1250 9E080000 		.4byte	.LASF276
 2704 1254 14       		.byte	0x14
 2705 1255 6B       		.byte	0x6b
 2706 1256 6E020000 		.4byte	0x26e
 2707 125a 6E120000 		.4byte	0x126e
 2708 125e 08       		.uleb128 0x8
 2709 125f 6E120000 		.4byte	0x126e
 2710 1263 08       		.uleb128 0x8
 2711 1264 EA080000 		.4byte	0x8ea
 2712 1268 08       		.uleb128 0x8
 2713 1269 6E020000 		.4byte	0x26e
 2714 126d 00       		.byte	0
 2715 126e 19       		.uleb128 0x19
 2716 126f 04       		.byte	0x4
 2717 1270 74120000 		.4byte	0x1274
 2718 1274 0B       		.uleb128 0xb
 2719 1275 04       		.byte	0x4
 2720 1276 07       		.byte	0x7
 2721 1277 FF000000 		.4byte	.LASF277
 2722 127b 1E       		.uleb128 0x1e
ARM GAS  /tmp/cc8RfTnf.s 			page 81


 2723 127c 74120000 		.4byte	0x1274
 2724 1280 2C       		.uleb128 0x2c
 2725 1281 9F020000 		.4byte	.LASF278
 2726 1285 14       		.byte	0x14
 2727 1286 67       		.byte	0x67
 2728 1287 60020000 		.4byte	0x260
 2729 128b 9F120000 		.4byte	0x129f
 2730 128f 08       		.uleb128 0x8
 2731 1290 6E120000 		.4byte	0x126e
 2732 1294 08       		.uleb128 0x8
 2733 1295 EA080000 		.4byte	0x8ea
 2734 1299 08       		.uleb128 0x8
 2735 129a 6E020000 		.4byte	0x26e
 2736 129e 00       		.byte	0
 2737 129f 3B       		.uleb128 0x3b
 2738 12a0 F80D0000 		.4byte	.LASF281
 2739 12a4 14       		.byte	0x14
 2740 12a5 87       		.byte	0x87
 2741 12a6 BF120000 		.4byte	0x12bf
 2742 12aa 08       		.uleb128 0x8
 2743 12ab 23030000 		.4byte	0x323
 2744 12af 08       		.uleb128 0x8
 2745 12b0 6E020000 		.4byte	0x26e
 2746 12b4 08       		.uleb128 0x8
 2747 12b5 6E020000 		.4byte	0x26e
 2748 12b9 08       		.uleb128 0x8
 2749 12ba 38110000 		.4byte	0x1138
 2750 12be 00       		.byte	0
 2751 12bf 2B       		.uleb128 0x2b
 2752 12c0 1A000000 		.4byte	.LASF280
 2753 12c4 14       		.byte	0x14
 2754 12c5 88       		.byte	0x88
 2755 12c6 60020000 		.4byte	0x260
 2756 12ca 3B       		.uleb128 0x3b
 2757 12cb 62040000 		.4byte	.LASF282
 2758 12cf 14       		.byte	0x14
 2759 12d0 93       		.byte	0x93
 2760 12d1 DB120000 		.4byte	0x12db
 2761 12d5 08       		.uleb128 0x8
 2762 12d6 67020000 		.4byte	0x267
 2763 12da 00       		.byte	0
 2764 12db 2C       		.uleb128 0x2c
 2765 12dc 5B040000 		.4byte	.LASF283
 2766 12e0 14       		.byte	0x14
 2767 12e1 94       		.byte	0x94
 2768 12e2 BF0B0000 		.4byte	0xbbf
 2769 12e6 F5120000 		.4byte	0x12f5
 2770 12ea 08       		.uleb128 0x8
 2771 12eb EA080000 		.4byte	0x8ea
 2772 12ef 08       		.uleb128 0x8
 2773 12f0 F5120000 		.4byte	0x12f5
 2774 12f4 00       		.byte	0
 2775 12f5 19       		.uleb128 0x19
 2776 12f6 04       		.byte	0x4
 2777 12f7 B4080000 		.4byte	0x8b4
 2778 12fb 2C       		.uleb128 0x2c
 2779 12fc 96040000 		.4byte	.LASF284
ARM GAS  /tmp/cc8RfTnf.s 			page 82


 2780 1300 14       		.byte	0x14
 2781 1301 9F       		.byte	0x9f
 2782 1302 39020000 		.4byte	0x239
 2783 1306 1A130000 		.4byte	0x131a
 2784 130a 08       		.uleb128 0x8
 2785 130b EA080000 		.4byte	0x8ea
 2786 130f 08       		.uleb128 0x8
 2787 1310 F5120000 		.4byte	0x12f5
 2788 1314 08       		.uleb128 0x8
 2789 1315 60020000 		.4byte	0x260
 2790 1319 00       		.byte	0
 2791 131a 2C       		.uleb128 0x2c
 2792 131b C90A0000 		.4byte	.LASF285
 2793 131f 14       		.byte	0x14
 2794 1320 A1       		.byte	0xa1
 2795 1321 4B020000 		.4byte	0x24b
 2796 1325 39130000 		.4byte	0x1339
 2797 1329 08       		.uleb128 0x8
 2798 132a EA080000 		.4byte	0x8ea
 2799 132e 08       		.uleb128 0x8
 2800 132f F5120000 		.4byte	0x12f5
 2801 1333 08       		.uleb128 0x8
 2802 1334 60020000 		.4byte	0x260
 2803 1338 00       		.byte	0
 2804 1339 2C       		.uleb128 0x2c
 2805 133a 3E000000 		.4byte	.LASF286
 2806 133e 14       		.byte	0x14
 2807 133f A4       		.byte	0xa4
 2808 1340 60020000 		.4byte	0x260
 2809 1344 4E130000 		.4byte	0x134e
 2810 1348 08       		.uleb128 0x8
 2811 1349 EA080000 		.4byte	0x8ea
 2812 134d 00       		.byte	0
 2813 134e 2C       		.uleb128 0x2c
 2814 134f EC0B0000 		.4byte	.LASF287
 2815 1353 14       		.byte	0x14
 2816 1354 6D       		.byte	0x6d
 2817 1355 6E020000 		.4byte	0x26e
 2818 1359 6D130000 		.4byte	0x136d
 2819 135d 08       		.uleb128 0x8
 2820 135e B4080000 		.4byte	0x8b4
 2821 1362 08       		.uleb128 0x8
 2822 1363 6D130000 		.4byte	0x136d
 2823 1367 08       		.uleb128 0x8
 2824 1368 6E020000 		.4byte	0x26e
 2825 136c 00       		.byte	0
 2826 136d 19       		.uleb128 0x19
 2827 136e 04       		.byte	0x4
 2828 136f 7B120000 		.4byte	0x127b
 2829 1373 2C       		.uleb128 0x2c
 2830 1374 87030000 		.4byte	.LASF288
 2831 1378 14       		.byte	0x14
 2832 1379 69       		.byte	0x69
 2833 137a 60020000 		.4byte	0x260
 2834 137e 8D130000 		.4byte	0x138d
 2835 1382 08       		.uleb128 0x8
 2836 1383 B4080000 		.4byte	0x8b4
ARM GAS  /tmp/cc8RfTnf.s 			page 83


 2837 1387 08       		.uleb128 0x8
 2838 1388 74120000 		.4byte	0x1274
 2839 138c 00       		.byte	0
 2840 138d 2C       		.uleb128 0x2c
 2841 138e BE030000 		.4byte	.LASF289
 2842 1392 14       		.byte	0x14
 2843 1393 F1       		.byte	0xf1
 2844 1394 2D110000 		.4byte	0x112d
 2845 1398 A7130000 		.4byte	0x13a7
 2846 139c 08       		.uleb128 0x8
 2847 139d 52020000 		.4byte	0x252
 2848 13a1 08       		.uleb128 0x8
 2849 13a2 52020000 		.4byte	0x252
 2850 13a6 00       		.byte	0
 2851 13a7 2C       		.uleb128 0x2c
 2852 13a8 470C0000 		.4byte	.LASF290
 2853 13ac 14       		.byte	0x14
 2854 13ad EC       		.byte	0xec
 2855 13ae 52020000 		.4byte	0x252
 2856 13b2 BC130000 		.4byte	0x13bc
 2857 13b6 08       		.uleb128 0x8
 2858 13b7 EA080000 		.4byte	0x8ea
 2859 13bb 00       		.byte	0
 2860 13bc 2C       		.uleb128 0x2c
 2861 13bd 71020000 		.4byte	.LASF291
 2862 13c1 14       		.byte	0x14
 2863 13c2 F2       		.byte	0xf2
 2864 13c3 52020000 		.4byte	0x252
 2865 13c7 DB130000 		.4byte	0x13db
 2866 13cb 08       		.uleb128 0x8
 2867 13cc EA080000 		.4byte	0x8ea
 2868 13d0 08       		.uleb128 0x8
 2869 13d1 F5120000 		.4byte	0x12f5
 2870 13d5 08       		.uleb128 0x8
 2871 13d6 60020000 		.4byte	0x260
 2872 13da 00       		.byte	0
 2873 13db 2C       		.uleb128 0x2c
 2874 13dc 7E010000 		.4byte	.LASF292
 2875 13e0 14       		.byte	0x14
 2876 13e1 F6       		.byte	0xf6
 2877 13e2 59020000 		.4byte	0x259
 2878 13e6 FA130000 		.4byte	0x13fa
 2879 13ea 08       		.uleb128 0x8
 2880 13eb EA080000 		.4byte	0x8ea
 2881 13ef 08       		.uleb128 0x8
 2882 13f0 F5120000 		.4byte	0x12f5
 2883 13f4 08       		.uleb128 0x8
 2884 13f5 60020000 		.4byte	0x260
 2885 13f9 00       		.byte	0
 2886 13fa 2C       		.uleb128 0x2c
 2887 13fb D00B0000 		.4byte	.LASF293
 2888 13ff 14       		.byte	0x14
 2889 1400 97       		.byte	0x97
 2890 1401 14140000 		.4byte	0x1414
 2891 1405 14140000 		.4byte	0x1414
 2892 1409 08       		.uleb128 0x8
 2893 140a EA080000 		.4byte	0x8ea
ARM GAS  /tmp/cc8RfTnf.s 			page 84


 2894 140e 08       		.uleb128 0x8
 2895 140f F5120000 		.4byte	0x12f5
 2896 1413 00       		.byte	0
 2897 1414 0B       		.uleb128 0xb
 2898 1415 04       		.byte	0x4
 2899 1416 04       		.byte	0x4
 2900 1417 C4020000 		.4byte	.LASF294
 2901 141b 3C       		.uleb128 0x3c
 2902 141c 61020000 		.4byte	.LASF295
 2903 1420 14       		.byte	0x14
 2904 1421 2801     		.2byte	0x128
 2905 1423 79020000 		.4byte	0x279
 2906 1427 36140000 		.4byte	0x1436
 2907 142b 08       		.uleb128 0x8
 2908 142c EA080000 		.4byte	0x8ea
 2909 1430 08       		.uleb128 0x8
 2910 1431 F5120000 		.4byte	0x12f5
 2911 1435 00       		.byte	0
 2912 1436 05       		.uleb128 0x5
 2913 1437 15       		.byte	0x15
 2914 1438 27       		.byte	0x27
 2915 1439 6F110000 		.4byte	0x116f
 2916 143d 05       		.uleb128 0x5
 2917 143e 15       		.byte	0x15
 2918 143f 33       		.byte	0x33
 2919 1440 CD100000 		.4byte	0x10cd
 2920 1444 05       		.uleb128 0x5
 2921 1445 15       		.byte	0x15
 2922 1446 34       		.byte	0x34
 2923 1447 FD100000 		.4byte	0x10fd
 2924 144b 05       		.uleb128 0x5
 2925 144c 15       		.byte	0x15
 2926 144d 36       		.byte	0x36
 2927 144e 6C010000 		.4byte	0x16c
 2928 1452 05       		.uleb128 0x5
 2929 1453 15       		.byte	0x15
 2930 1454 37       		.byte	0x37
 2931 1455 84110000 		.4byte	0x1184
 2932 1459 05       		.uleb128 0x5
 2933 145a 15       		.byte	0x15
 2934 145b 38       		.byte	0x38
 2935 145c 99110000 		.4byte	0x1199
 2936 1460 05       		.uleb128 0x5
 2937 1461 15       		.byte	0x15
 2938 1462 39       		.byte	0x39
 2939 1463 AE110000 		.4byte	0x11ae
 2940 1467 05       		.uleb128 0x5
 2941 1468 15       		.byte	0x15
 2942 1469 3A       		.byte	0x3a
 2943 146a C3110000 		.4byte	0x11c3
 2944 146e 05       		.uleb128 0x5
 2945 146f 15       		.byte	0x15
 2946 1470 3C       		.byte	0x3c
 2947 1471 EC010000 		.4byte	0x1ec
 2948 1475 05       		.uleb128 0x5
 2949 1476 15       		.byte	0x15
 2950 1477 3E       		.byte	0x3e
ARM GAS  /tmp/cc8RfTnf.s 			page 85


 2951 1478 06120000 		.4byte	0x1206
 2952 147c 05       		.uleb128 0x5
 2953 147d 15       		.byte	0x15
 2954 147e 40       		.byte	0x40
 2955 147f 1B120000 		.4byte	0x121b
 2956 1483 05       		.uleb128 0x5
 2957 1484 15       		.byte	0x15
 2958 1485 43       		.byte	0x43
 2959 1486 35120000 		.4byte	0x1235
 2960 148a 05       		.uleb128 0x5
 2961 148b 15       		.byte	0x15
 2962 148c 44       		.byte	0x44
 2963 148d 4F120000 		.4byte	0x124f
 2964 1491 05       		.uleb128 0x5
 2965 1492 15       		.byte	0x15
 2966 1493 45       		.byte	0x45
 2967 1494 80120000 		.4byte	0x1280
 2968 1498 05       		.uleb128 0x5
 2969 1499 15       		.byte	0x15
 2970 149a 47       		.byte	0x47
 2971 149b 9F120000 		.4byte	0x129f
 2972 149f 05       		.uleb128 0x5
 2973 14a0 15       		.byte	0x15
 2974 14a1 48       		.byte	0x48
 2975 14a2 BF120000 		.4byte	0x12bf
 2976 14a6 05       		.uleb128 0x5
 2977 14a7 15       		.byte	0x15
 2978 14a8 4A       		.byte	0x4a
 2979 14a9 CA120000 		.4byte	0x12ca
 2980 14ad 05       		.uleb128 0x5
 2981 14ae 15       		.byte	0x15
 2982 14af 4B       		.byte	0x4b
 2983 14b0 DB120000 		.4byte	0x12db
 2984 14b4 05       		.uleb128 0x5
 2985 14b5 15       		.byte	0x15
 2986 14b6 4C       		.byte	0x4c
 2987 14b7 FB120000 		.4byte	0x12fb
 2988 14bb 05       		.uleb128 0x5
 2989 14bc 15       		.byte	0x15
 2990 14bd 4D       		.byte	0x4d
 2991 14be 1A130000 		.4byte	0x131a
 2992 14c2 05       		.uleb128 0x5
 2993 14c3 15       		.byte	0x15
 2994 14c4 4E       		.byte	0x4e
 2995 14c5 39130000 		.4byte	0x1339
 2996 14c9 05       		.uleb128 0x5
 2997 14ca 15       		.byte	0x15
 2998 14cb 50       		.byte	0x50
 2999 14cc 4E130000 		.4byte	0x134e
 3000 14d0 05       		.uleb128 0x5
 3001 14d1 15       		.byte	0x15
 3002 14d2 51       		.byte	0x51
 3003 14d3 73130000 		.4byte	0x1373
 3004 14d7 2A       		.uleb128 0x2a
 3005 14d8 14020000 		.4byte	.LASF296
 3006 14dc 16       		.byte	0x16
 3007 14dd 8F       		.byte	0x8f
ARM GAS  /tmp/cc8RfTnf.s 			page 86


 3008 14de 0F0D0000 		.4byte	0xd0f
 3009 14e2 3D       		.uleb128 0x3d
 3010 14e3 E30A0000 		.4byte	.LASF297
 3011 14e7 16       		.byte	0x16
 3012 14e8 94       		.byte	0x94
 3013 14e9 C70A0000 		.4byte	0xac7
 3014 14ed 05       		.uleb128 0x5
 3015 14ee 03       		.byte	0x3
 3016 14ef 00000000 		.4byte	_ZL32cpu_irq_critical_section_counter
 3017 14f3 3D       		.uleb128 0x3d
 3018 14f4 29040000 		.4byte	.LASF298
 3019 14f8 16       		.byte	0x16
 3020 14f9 95       		.byte	0x95
 3021 14fa 0F0D0000 		.4byte	0xd0f
 3022 14fe 05       		.uleb128 0x5
 3023 14ff 03       		.byte	0x3
 3024 1500 00000000 		.4byte	_ZL28cpu_irq_prev_interrupt_state
 3025 1504 2C       		.uleb128 0x2c
 3026 1505 F4040000 		.4byte	.LASF299
 3027 1509 17       		.byte	0x17
 3028 150a 1D       		.byte	0x1d
 3029 150b 60020000 		.4byte	0x260
 3030 150f 1E150000 		.4byte	0x151e
 3031 1513 08       		.uleb128 0x8
 3032 1514 EA080000 		.4byte	0x8ea
 3033 1518 08       		.uleb128 0x8
 3034 1519 EA080000 		.4byte	0x8ea
 3035 151d 00       		.byte	0
 3036 151e 2C       		.uleb128 0x2c
 3037 151f 19010000 		.4byte	.LASF300
 3038 1523 17       		.byte	0x17
 3039 1524 20       		.byte	0x20
 3040 1525 B4080000 		.4byte	0x8b4
 3041 1529 33150000 		.4byte	0x1533
 3042 152d 08       		.uleb128 0x8
 3043 152e 60020000 		.4byte	0x260
 3044 1532 00       		.byte	0
 3045 1533 2C       		.uleb128 0x2c
 3046 1534 85040000 		.4byte	.LASF301
 3047 1538 17       		.byte	0x17
 3048 1539 2A       		.byte	0x2a
 3049 153a B4080000 		.4byte	0x8b4
 3050 153e 4D150000 		.4byte	0x154d
 3051 1542 08       		.uleb128 0x8
 3052 1543 B4080000 		.4byte	0x8b4
 3053 1547 08       		.uleb128 0x8
 3054 1548 EA080000 		.4byte	0x8ea
 3055 154c 00       		.byte	0
 3056 154d 2C       		.uleb128 0x2c
 3057 154e 68040000 		.4byte	.LASF302
 3058 1552 17       		.byte	0x17
 3059 1553 2C       		.byte	0x2c
 3060 1554 6E020000 		.4byte	0x26e
 3061 1558 6C150000 		.4byte	0x156c
 3062 155c 08       		.uleb128 0x8
 3063 155d B4080000 		.4byte	0x8b4
 3064 1561 08       		.uleb128 0x8
ARM GAS  /tmp/cc8RfTnf.s 			page 87


 3065 1562 EA080000 		.4byte	0x8ea
 3066 1566 08       		.uleb128 0x8
 3067 1567 6E020000 		.4byte	0x26e
 3068 156b 00       		.byte	0
 3069 156c 3E       		.uleb128 0x3e
 3070 156d F10C0000 		.4byte	0xcf1
 3071 1571 01       		.byte	0x1
 3072 1572 47       		.byte	0x47
 3073 1573 00000000 		.4byte	.LFB157
 3074 1577 30000000 		.4byte	.LFE157-.LFB157
 3075 157b 01       		.uleb128 0x1
 3076 157c 9C       		.byte	0x9c
 3077 157d C7150000 		.4byte	0x15c7
 3078 1581 3F       		.uleb128 0x3f
 3079 1582 B9030000 		.4byte	.LASF146
 3080 1586 01       		.byte	0x1
 3081 1587 47       		.byte	0x47
 3082 1588 D10A0000 		.4byte	0xad1
 3083 158c 00000000 		.4byte	.LLST7
 3084 1590 40       		.uleb128 0x40
 3085 1591 17060000 		.4byte	.LASF303
 3086 1595 01       		.byte	0x1
 3087 1596 49       		.byte	0x49
 3088 1597 170C0000 		.4byte	0xc17
 3089 159b 1F000000 		.4byte	.LLST8
 3090 159f 41       		.uleb128 0x41
 3091 15a0 10000000 		.4byte	.LVL22
 3092 15a4 370C0000 		.4byte	0xc37
 3093 15a8 B3150000 		.4byte	0x15b3
 3094 15ac 42       		.uleb128 0x42
 3095 15ad 01       		.uleb128 0x1
 3096 15ae 50       		.byte	0x50
 3097 15af 02       		.uleb128 0x2
 3098 15b0 91       		.byte	0x91
 3099 15b1 74       		.sleb128 -12
 3100 15b2 00       		.byte	0
 3101 15b3 43       		.uleb128 0x43
 3102 15b4 1E000000 		.4byte	.LVL26
 3103 15b8 C7180000 		.4byte	0x18c7
 3104 15bc 42       		.uleb128 0x42
 3105 15bd 01       		.uleb128 0x1
 3106 15be 50       		.byte	0x50
 3107 15bf 05       		.uleb128 0x5
 3108 15c0 0C       		.byte	0xc
 3109 15c1 60180E40 		.4byte	0x400e1860
 3110 15c5 00       		.byte	0
 3111 15c6 00       		.byte	0
 3112 15c7 3E       		.uleb128 0x3e
 3113 15c8 D70C0000 		.4byte	0xcd7
 3114 15cc 01       		.byte	0x1
 3115 15cd 40       		.byte	0x40
 3116 15ce 00000000 		.4byte	.LFB156
 3117 15d2 90000000 		.4byte	.LFE156-.LFB156
 3118 15d6 01       		.uleb128 0x1
 3119 15d7 9C       		.byte	0x9c
 3120 15d8 6E160000 		.4byte	0x166e
 3121 15dc 3F       		.uleb128 0x3f
ARM GAS  /tmp/cc8RfTnf.s 			page 88


 3122 15dd F2050000 		.4byte	.LASF304
 3123 15e1 01       		.byte	0x1
 3124 15e2 40       		.byte	0x40
 3125 15e3 D10A0000 		.4byte	0xad1
 3126 15e7 3D000000 		.4byte	.LLST2
 3127 15eb 40       		.uleb128 0x40
 3128 15ec 17060000 		.4byte	.LASF303
 3129 15f0 01       		.byte	0x1
 3130 15f1 42       		.byte	0x42
 3131 15f2 170C0000 		.4byte	0xc17
 3132 15f6 5C000000 		.4byte	.LLST3
 3133 15fa 44       		.uleb128 0x44
 3134 15fb 30020000 		.4byte	.LASF308
 3135 15ff 01       		.byte	0x1
 3136 1600 43       		.byte	0x43
 3137 1601 CC0A0000 		.4byte	0xacc
 3138 1605 45       		.uleb128 0x45
 3139 1606 6E160000 		.4byte	0x166e
 3140 160a 14000000 		.4byte	.LBB14
 3141 160e 18000000 		.4byte	.Ldebug_ranges0+0x18
 3142 1612 01       		.byte	0x1
 3143 1613 43       		.byte	0x43
 3144 1614 3F160000 		.4byte	0x163f
 3145 1618 46       		.uleb128 0x46
 3146 1619 94160000 		.4byte	0x1694
 3147 161d 7A000000 		.4byte	.LLST4
 3148 1621 46       		.uleb128 0x46
 3149 1622 89160000 		.4byte	0x1689
 3150 1626 98000000 		.4byte	.LLST5
 3151 162a 46       		.uleb128 0x46
 3152 162b 7E160000 		.4byte	0x167e
 3153 162f C1000000 		.4byte	.LLST6
 3154 1633 47       		.uleb128 0x47
 3155 1634 18000000 		.4byte	.Ldebug_ranges0+0x18
 3156 1638 48       		.uleb128 0x48
 3157 1639 9F160000 		.4byte	0x169f
 3158 163d 00       		.byte	0
 3159 163e 00       		.byte	0
 3160 163f 41       		.uleb128 0x41
 3161 1640 10000000 		.4byte	.LVL11
 3162 1644 370C0000 		.4byte	0xc37
 3163 1648 53160000 		.4byte	0x1653
 3164 164c 42       		.uleb128 0x42
 3165 164d 01       		.uleb128 0x1
 3166 164e 50       		.byte	0x50
 3167 164f 02       		.uleb128 0x2
 3168 1650 91       		.byte	0x91
 3169 1651 64       		.sleb128 -28
 3170 1652 00       		.byte	0
 3171 1653 43       		.uleb128 0x43
 3172 1654 6C000000 		.4byte	.LVL16
 3173 1658 D2180000 		.4byte	0x18d2
 3174 165c 42       		.uleb128 0x42
 3175 165d 01       		.uleb128 0x1
 3176 165e 50       		.byte	0x50
 3177 165f 05       		.uleb128 0x5
 3178 1660 0C       		.byte	0xc
ARM GAS  /tmp/cc8RfTnf.s 			page 89


 3179 1661 60180E40 		.4byte	0x400e1860
 3180 1665 42       		.uleb128 0x42
 3181 1666 02       		.uleb128 0x2
 3182 1667 7D       		.byte	0x7d
 3183 1668 00       		.sleb128 0
 3184 1669 02       		.uleb128 0x2
 3185 166a 74       		.byte	0x74
 3186 166b 00       		.sleb128 0
 3187 166c 00       		.byte	0
 3188 166d 00       		.byte	0
 3189 166e 49       		.uleb128 0x49
 3190 166f C8050000 		.4byte	.LASF336
 3191 1673 01       		.byte	0x1
 3192 1674 33       		.byte	0x33
 3193 1675 BC0A0000 		.4byte	0xabc
 3194 1679 01       		.byte	0x1
 3195 167a AB160000 		.4byte	0x16ab
 3196 167e 4A       		.uleb128 0x4a
 3197 167f C9040000 		.4byte	.LASF305
 3198 1683 01       		.byte	0x1
 3199 1684 33       		.byte	0x33
 3200 1685 BC0A0000 		.4byte	0xabc
 3201 1689 4A       		.uleb128 0x4a
 3202 168a 7E000000 		.4byte	.LASF306
 3203 168e 01       		.byte	0x1
 3204 168f 33       		.byte	0x33
 3205 1690 BC0A0000 		.4byte	0xabc
 3206 1694 4A       		.uleb128 0x4a
 3207 1695 CE070000 		.4byte	.LASF307
 3208 1699 01       		.byte	0x1
 3209 169a 33       		.byte	0x33
 3210 169b BC0A0000 		.4byte	0xabc
 3211 169f 44       		.uleb128 0x44
 3212 16a0 21040000 		.4byte	.LASF309
 3213 16a4 01       		.byte	0x1
 3214 16a5 3B       		.byte	0x3b
 3215 16a6 CC0A0000 		.4byte	0xacc
 3216 16aa 00       		.byte	0
 3217 16ab 3E       		.uleb128 0x3e
 3218 16ac BD0C0000 		.4byte	0xcbd
 3219 16b0 01       		.byte	0x1
 3220 16b1 2D       		.byte	0x2d
 3221 16b2 00000000 		.4byte	.LFB154
 3222 16b6 16000000 		.4byte	.LFE154-.LFB154
 3223 16ba 01       		.uleb128 0x1
 3224 16bb 9C       		.byte	0x9c
 3225 16bc F5160000 		.4byte	0x16f5
 3226 16c0 3F       		.uleb128 0x3f
 3227 16c1 C0080000 		.4byte	.LASF310
 3228 16c5 01       		.byte	0x1
 3229 16c6 2D       		.byte	0x2d
 3230 16c7 D10A0000 		.4byte	0xad1
 3231 16cb EA000000 		.4byte	.LLST9
 3232 16cf 41       		.uleb128 0x41
 3233 16d0 08000000 		.4byte	.LVL28
 3234 16d4 C7150000 		.4byte	0x15c7
 3235 16d8 E3160000 		.4byte	0x16e3
ARM GAS  /tmp/cc8RfTnf.s 			page 90


 3236 16dc 42       		.uleb128 0x42
 3237 16dd 01       		.uleb128 0x1
 3238 16de 50       		.byte	0x50
 3239 16df 02       		.uleb128 0x2
 3240 16e0 74       		.byte	0x74
 3241 16e1 00       		.sleb128 0
 3242 16e2 00       		.byte	0
 3243 16e3 4B       		.uleb128 0x4b
 3244 16e4 16000000 		.4byte	.LVL31
 3245 16e8 6C150000 		.4byte	0x156c
 3246 16ec 42       		.uleb128 0x42
 3247 16ed 01       		.uleb128 0x1
 3248 16ee 50       		.byte	0x50
 3249 16ef 03       		.uleb128 0x3
 3250 16f0 F3       		.byte	0xf3
 3251 16f1 01       		.uleb128 0x1
 3252 16f2 50       		.byte	0x50
 3253 16f3 00       		.byte	0
 3254 16f4 00       		.byte	0
 3255 16f5 3E       		.uleb128 0x3e
 3256 16f6 AD0C0000 		.4byte	0xcad
 3257 16fa 01       		.byte	0x1
 3258 16fb 19       		.byte	0x19
 3259 16fc 00000000 		.4byte	.LFB153
 3260 1700 58000000 		.4byte	.LFE153-.LFB153
 3261 1704 01       		.uleb128 0x1
 3262 1705 9C       		.byte	0x9c
 3263 1706 05180000 		.4byte	0x1805
 3264 170a 3D       		.uleb128 0x3d
 3265 170b E9040000 		.4byte	.LASF311
 3266 170f 01       		.byte	0x1
 3267 1710 1B       		.byte	0x1b
 3268 1711 BC0A0000 		.4byte	0xabc
 3269 1715 03       		.uleb128 0x3
 3270 1716 91       		.byte	0x91
 3271 1717 B07F     		.sleb128 -80
 3272 1719 3D       		.uleb128 0x3d
 3273 171a 3F060000 		.4byte	.LASF312
 3274 171e 01       		.byte	0x1
 3275 171f 1B       		.byte	0x1b
 3276 1720 BC0A0000 		.4byte	0xabc
 3277 1724 03       		.uleb128 0x3
 3278 1725 91       		.byte	0x91
 3279 1726 B47F     		.sleb128 -76
 3280 1728 3D       		.uleb128 0x3d
 3281 1729 E2040000 		.4byte	.LASF313
 3282 172d 01       		.byte	0x1
 3283 172e 1B       		.byte	0x1b
 3284 172f BC0A0000 		.4byte	0xabc
 3285 1733 03       		.uleb128 0x3
 3286 1734 91       		.byte	0x91
 3287 1735 B87F     		.sleb128 -72
 3288 1737 3D       		.uleb128 0x3d
 3289 1738 330B0000 		.4byte	.LASF314
 3290 173c 01       		.byte	0x1
 3291 173d 1E       		.byte	0x1e
 3292 173e BC0A0000 		.4byte	0xabc
ARM GAS  /tmp/cc8RfTnf.s 			page 91


 3293 1742 03       		.uleb128 0x3
 3294 1743 91       		.byte	0x91
 3295 1744 BC7F     		.sleb128 -68
 3296 1746 3D       		.uleb128 0x3d
 3297 1747 BD040000 		.4byte	.LASF315
 3298 174b 01       		.byte	0x1
 3299 174c 1E       		.byte	0x1e
 3300 174d BC0A0000 		.4byte	0xabc
 3301 1751 02       		.uleb128 0x2
 3302 1752 91       		.byte	0x91
 3303 1753 40       		.sleb128 -64
 3304 1754 4C       		.uleb128 0x4c
 3305 1755 64617900 		.ascii	"day\000"
 3306 1759 01       		.byte	0x1
 3307 175a 1E       		.byte	0x1e
 3308 175b BC0A0000 		.4byte	0xabc
 3309 175f 02       		.uleb128 0x2
 3310 1760 91       		.byte	0x91
 3311 1761 44       		.sleb128 -60
 3312 1762 3D       		.uleb128 0x3d
 3313 1763 30020000 		.4byte	.LASF308
 3314 1767 01       		.byte	0x1
 3315 1768 1E       		.byte	0x1e
 3316 1769 BC0A0000 		.4byte	0xabc
 3317 176d 02       		.uleb128 0x2
 3318 176e 91       		.byte	0x91
 3319 176f 48       		.sleb128 -56
 3320 1770 3D       		.uleb128 0x3d
 3321 1771 17060000 		.4byte	.LASF303
 3322 1775 01       		.byte	0x1
 3323 1776 21       		.byte	0x21
 3324 1777 EC0A0000 		.4byte	0xaec
 3325 177b 02       		.uleb128 0x2
 3326 177c 91       		.byte	0x91
 3327 177d 4C       		.sleb128 -52
 3328 177e 41       		.uleb128 0x41
 3329 177f 12000000 		.4byte	.LVL5
 3330 1783 DD180000 		.4byte	0x18dd
 3331 1787 A7170000 		.4byte	0x17a7
 3332 178b 42       		.uleb128 0x42
 3333 178c 01       		.uleb128 0x1
 3334 178d 50       		.byte	0x50
 3335 178e 02       		.uleb128 0x2
 3336 178f 74       		.byte	0x74
 3337 1790 00       		.sleb128 0
 3338 1791 42       		.uleb128 0x42
 3339 1792 01       		.uleb128 0x1
 3340 1793 51       		.byte	0x51
 3341 1794 03       		.uleb128 0x3
 3342 1795 91       		.byte	0x91
 3343 1796 B07F     		.sleb128 -80
 3344 1798 42       		.uleb128 0x42
 3345 1799 01       		.uleb128 0x1
 3346 179a 52       		.byte	0x52
 3347 179b 03       		.uleb128 0x3
 3348 179c 91       		.byte	0x91
 3349 179d B47F     		.sleb128 -76
ARM GAS  /tmp/cc8RfTnf.s 			page 92


 3350 179f 42       		.uleb128 0x42
 3351 17a0 01       		.uleb128 0x1
 3352 17a1 53       		.byte	0x53
 3353 17a2 03       		.uleb128 0x3
 3354 17a3 91       		.byte	0x91
 3355 17a4 B87F     		.sleb128 -72
 3356 17a6 00       		.byte	0
 3357 17a7 41       		.uleb128 0x41
 3358 17a8 22000000 		.4byte	.LVL6
 3359 17ac E8180000 		.4byte	0x18e8
 3360 17b0 D5170000 		.4byte	0x17d5
 3361 17b4 42       		.uleb128 0x42
 3362 17b5 01       		.uleb128 0x1
 3363 17b6 50       		.byte	0x50
 3364 17b7 02       		.uleb128 0x2
 3365 17b8 74       		.byte	0x74
 3366 17b9 00       		.sleb128 0
 3367 17ba 42       		.uleb128 0x42
 3368 17bb 01       		.uleb128 0x1
 3369 17bc 51       		.byte	0x51
 3370 17bd 03       		.uleb128 0x3
 3371 17be 91       		.byte	0x91
 3372 17bf BC7F     		.sleb128 -68
 3373 17c1 42       		.uleb128 0x42
 3374 17c2 01       		.uleb128 0x1
 3375 17c3 52       		.byte	0x52
 3376 17c4 02       		.uleb128 0x2
 3377 17c5 91       		.byte	0x91
 3378 17c6 40       		.sleb128 -64
 3379 17c7 42       		.uleb128 0x42
 3380 17c8 01       		.uleb128 0x1
 3381 17c9 53       		.byte	0x53
 3382 17ca 02       		.uleb128 0x2
 3383 17cb 91       		.byte	0x91
 3384 17cc 44       		.sleb128 -60
 3385 17cd 42       		.uleb128 0x42
 3386 17ce 02       		.uleb128 0x2
 3387 17cf 7D       		.byte	0x7d
 3388 17d0 00       		.sleb128 0
 3389 17d1 02       		.uleb128 0x2
 3390 17d2 91       		.byte	0x91
 3391 17d3 48       		.sleb128 -56
 3392 17d4 00       		.byte	0
 3393 17d5 41       		.uleb128 0x41
 3394 17d6 2C000000 		.4byte	.LVL7
 3395 17da F3180000 		.4byte	0x18f3
 3396 17de F4170000 		.4byte	0x17f4
 3397 17e2 42       		.uleb128 0x42
 3398 17e3 01       		.uleb128 0x1
 3399 17e4 50       		.byte	0x50
 3400 17e5 02       		.uleb128 0x2
 3401 17e6 91       		.byte	0x91
 3402 17e7 4C       		.sleb128 -52
 3403 17e8 42       		.uleb128 0x42
 3404 17e9 01       		.uleb128 0x1
 3405 17ea 51       		.byte	0x51
 3406 17eb 01       		.uleb128 0x1
ARM GAS  /tmp/cc8RfTnf.s 			page 93


 3407 17ec 30       		.byte	0x30
 3408 17ed 42       		.uleb128 0x42
 3409 17ee 01       		.uleb128 0x1
 3410 17ef 52       		.byte	0x52
 3411 17f0 02       		.uleb128 0x2
 3412 17f1 08       		.byte	0x8
 3413 17f2 24       		.byte	0x24
 3414 17f3 00       		.byte	0
 3415 17f4 43       		.uleb128 0x43
 3416 17f5 50000000 		.4byte	.LVL8
 3417 17f9 C60B0000 		.4byte	0xbc6
 3418 17fd 42       		.uleb128 0x42
 3419 17fe 01       		.uleb128 0x1
 3420 17ff 50       		.byte	0x50
 3421 1800 02       		.uleb128 0x2
 3422 1801 91       		.byte	0x91
 3423 1802 4C       		.sleb128 -52
 3424 1803 00       		.byte	0
 3425 1804 00       		.byte	0
 3426 1805 3E       		.uleb128 0x3e
 3427 1806 9D0C0000 		.4byte	0xc9d
 3428 180a 01       		.byte	0x1
 3429 180b 14       		.byte	0x14
 3430 180c 00000000 		.4byte	.LFB152
 3431 1810 14000000 		.4byte	.LFE152-.LFB152
 3432 1814 01       		.uleb128 0x1
 3433 1815 9C       		.byte	0x9c
 3434 1816 2E180000 		.4byte	0x182e
 3435 181a 43       		.uleb128 0x43
 3436 181b 08000000 		.4byte	.LVL4
 3437 181f FC180000 		.4byte	0x18fc
 3438 1823 42       		.uleb128 0x42
 3439 1824 01       		.uleb128 0x1
 3440 1825 50       		.byte	0x50
 3441 1826 05       		.uleb128 0x5
 3442 1827 0C       		.byte	0xc
 3443 1828 60180E40 		.4byte	0x400e1860
 3444 182c 00       		.byte	0
 3445 182d 00       		.byte	0
 3446 182e 3E       		.uleb128 0x3e
 3447 182f 910C0000 		.4byte	0xc91
 3448 1833 01       		.byte	0x1
 3449 1834 0A       		.byte	0xa
 3450 1835 00000000 		.4byte	.LFB151
 3451 1839 28000000 		.4byte	.LFE151-.LFB151
 3452 183d 01       		.uleb128 0x1
 3453 183e 9C       		.byte	0x9c
 3454 183f 93180000 		.4byte	0x1893
 3455 1843 45       		.uleb128 0x45
 3456 1844 AD180000 		.4byte	0x18ad
 3457 1848 0C000000 		.4byte	.LBB6
 3458 184c 00000000 		.4byte	.Ldebug_ranges0+0
 3459 1850 01       		.byte	0x1
 3460 1851 10       		.byte	0x10
 3461 1852 60180000 		.4byte	0x1860
 3462 1856 46       		.uleb128 0x46
 3463 1857 BA180000 		.4byte	0x18ba
ARM GAS  /tmp/cc8RfTnf.s 			page 94


 3464 185b 21010000 		.4byte	.LLST0
 3465 185f 00       		.byte	0
 3466 1860 4D       		.uleb128 0x4d
 3467 1861 93180000 		.4byte	0x1893
 3468 1865 1A000000 		.4byte	.LBB10
 3469 1869 0E000000 		.4byte	.LBE10-.LBB10
 3470 186d 01       		.byte	0x1
 3471 186e 11       		.byte	0x11
 3472 186f 7D180000 		.4byte	0x187d
 3473 1873 46       		.uleb128 0x46
 3474 1874 A0180000 		.4byte	0x18a0
 3475 1878 35010000 		.4byte	.LLST1
 3476 187c 00       		.byte	0
 3477 187d 43       		.uleb128 0x43
 3478 187e 0C000000 		.4byte	.LVL0
 3479 1882 07190000 		.4byte	0x1907
 3480 1886 42       		.uleb128 0x42
 3481 1887 01       		.uleb128 0x1
 3482 1888 50       		.byte	0x50
 3483 1889 02       		.uleb128 0x2
 3484 188a 74       		.byte	0x74
 3485 188b 00       		.sleb128 0
 3486 188c 42       		.uleb128 0x42
 3487 188d 01       		.uleb128 0x1
 3488 188e 51       		.byte	0x51
 3489 188f 01       		.uleb128 0x1
 3490 1890 30       		.byte	0x30
 3491 1891 00       		.byte	0
 3492 1892 00       		.byte	0
 3493 1893 4E       		.uleb128 0x4e
 3494 1894 AB050000 		.4byte	.LASF317
 3495 1898 02       		.byte	0x2
 3496 1899 C606     		.2byte	0x6c6
 3497 189b 03       		.byte	0x3
 3498 189c AD180000 		.4byte	0x18ad
 3499 18a0 4F       		.uleb128 0x4f
 3500 18a1 11080000 		.4byte	.LASF316
 3501 18a5 02       		.byte	0x2
 3502 18a6 C606     		.2byte	0x6c6
 3503 18a8 B70E0000 		.4byte	0xeb7
 3504 18ac 00       		.byte	0
 3505 18ad 4E       		.uleb128 0x4e
 3506 18ae FC040000 		.4byte	.LASF318
 3507 18b2 02       		.byte	0x2
 3508 18b3 9E06     		.2byte	0x69e
 3509 18b5 03       		.byte	0x3
 3510 18b6 C7180000 		.4byte	0x18c7
 3511 18ba 4F       		.uleb128 0x4f
 3512 18bb 11080000 		.4byte	.LASF316
 3513 18bf 02       		.byte	0x2
 3514 18c0 9E06     		.2byte	0x69e
 3515 18c2 B70E0000 		.4byte	0xeb7
 3516 18c6 00       		.byte	0
 3517 18c7 50       		.uleb128 0x50
 3518 18c8 260B0000 		.4byte	.LASF319
 3519 18cc 260B0000 		.4byte	.LASF319
 3520 18d0 18       		.byte	0x18
ARM GAS  /tmp/cc8RfTnf.s 			page 95


 3521 18d1 43       		.byte	0x43
 3522 18d2 50       		.uleb128 0x50
 3523 18d3 D70B0000 		.4byte	.LASF320
 3524 18d7 D70B0000 		.4byte	.LASF320
 3525 18db 18       		.byte	0x18
 3526 18dc 4B       		.byte	0x4b
 3527 18dd 50       		.uleb128 0x50
 3528 18de 9A060000 		.4byte	.LASF321
 3529 18e2 9A060000 		.4byte	.LASF321
 3530 18e6 18       		.byte	0x18
 3531 18e7 41       		.byte	0x41
 3532 18e8 50       		.uleb128 0x50
 3533 18e9 6E070000 		.4byte	.LASF322
 3534 18ed 6E070000 		.4byte	.LASF322
 3535 18f1 18       		.byte	0x18
 3536 18f2 49       		.byte	0x49
 3537 18f3 51       		.uleb128 0x51
 3538 18f4 13070000 		.4byte	.LASF337
 3539 18f8 13070000 		.4byte	.LASF337
 3540 18fc 50       		.uleb128 0x50
 3541 18fd C50C0000 		.4byte	.LASF323
 3542 1901 C50C0000 		.4byte	.LASF323
 3543 1905 18       		.byte	0x18
 3544 1906 54       		.byte	0x54
 3545 1907 50       		.uleb128 0x50
 3546 1908 C90D0000 		.4byte	.LASF324
 3547 190c C90D0000 		.4byte	.LASF324
 3548 1910 18       		.byte	0x18
 3549 1911 3C       		.byte	0x3c
 3550 1912 00       		.byte	0
 3551              		.section	.debug_abbrev,"",%progbits
 3552              	.Ldebug_abbrev0:
 3553 0000 01       		.uleb128 0x1
 3554 0001 11       		.uleb128 0x11
 3555 0002 01       		.byte	0x1
 3556 0003 25       		.uleb128 0x25
 3557 0004 0E       		.uleb128 0xe
 3558 0005 13       		.uleb128 0x13
 3559 0006 0B       		.uleb128 0xb
 3560 0007 03       		.uleb128 0x3
 3561 0008 0E       		.uleb128 0xe
 3562 0009 1B       		.uleb128 0x1b
 3563 000a 0E       		.uleb128 0xe
 3564 000b 55       		.uleb128 0x55
 3565 000c 17       		.uleb128 0x17
 3566 000d 11       		.uleb128 0x11
 3567 000e 01       		.uleb128 0x1
 3568 000f 10       		.uleb128 0x10
 3569 0010 17       		.uleb128 0x17
 3570 0011 00       		.byte	0
 3571 0012 00       		.byte	0
 3572 0013 02       		.uleb128 0x2
 3573 0014 39       		.uleb128 0x39
 3574 0015 01       		.byte	0x1
 3575 0016 03       		.uleb128 0x3
 3576 0017 08       		.uleb128 0x8
 3577 0018 3A       		.uleb128 0x3a
ARM GAS  /tmp/cc8RfTnf.s 			page 96


 3578 0019 0B       		.uleb128 0xb
 3579 001a 3B       		.uleb128 0x3b
 3580 001b 0B       		.uleb128 0xb
 3581 001c 01       		.uleb128 0x1
 3582 001d 13       		.uleb128 0x13
 3583 001e 00       		.byte	0
 3584 001f 00       		.byte	0
 3585 0020 03       		.uleb128 0x3
 3586 0021 39       		.uleb128 0x39
 3587 0022 00       		.byte	0
 3588 0023 03       		.uleb128 0x3
 3589 0024 0E       		.uleb128 0xe
 3590 0025 3A       		.uleb128 0x3a
 3591 0026 0B       		.uleb128 0xb
 3592 0027 3B       		.uleb128 0x3b
 3593 0028 0B       		.uleb128 0xb
 3594 0029 00       		.byte	0
 3595 002a 00       		.byte	0
 3596 002b 04       		.uleb128 0x4
 3597 002c 3A       		.uleb128 0x3a
 3598 002d 00       		.byte	0
 3599 002e 3A       		.uleb128 0x3a
 3600 002f 0B       		.uleb128 0xb
 3601 0030 3B       		.uleb128 0x3b
 3602 0031 0B       		.uleb128 0xb
 3603 0032 18       		.uleb128 0x18
 3604 0033 13       		.uleb128 0x13
 3605 0034 00       		.byte	0
 3606 0035 00       		.byte	0
 3607 0036 05       		.uleb128 0x5
 3608 0037 08       		.uleb128 0x8
 3609 0038 00       		.byte	0
 3610 0039 3A       		.uleb128 0x3a
 3611 003a 0B       		.uleb128 0xb
 3612 003b 3B       		.uleb128 0x3b
 3613 003c 0B       		.uleb128 0xb
 3614 003d 18       		.uleb128 0x18
 3615 003e 13       		.uleb128 0x13
 3616 003f 00       		.byte	0
 3617 0040 00       		.byte	0
 3618 0041 06       		.uleb128 0x6
 3619 0042 08       		.uleb128 0x8
 3620 0043 00       		.byte	0
 3621 0044 3A       		.uleb128 0x3a
 3622 0045 0B       		.uleb128 0xb
 3623 0046 3B       		.uleb128 0x3b
 3624 0047 05       		.uleb128 0x5
 3625 0048 18       		.uleb128 0x18
 3626 0049 13       		.uleb128 0x13
 3627 004a 00       		.byte	0
 3628 004b 00       		.byte	0
 3629 004c 07       		.uleb128 0x7
 3630 004d 2E       		.uleb128 0x2e
 3631 004e 01       		.byte	0x1
 3632 004f 3F       		.uleb128 0x3f
 3633 0050 19       		.uleb128 0x19
 3634 0051 03       		.uleb128 0x3
ARM GAS  /tmp/cc8RfTnf.s 			page 97


 3635 0052 08       		.uleb128 0x8
 3636 0053 3A       		.uleb128 0x3a
 3637 0054 0B       		.uleb128 0xb
 3638 0055 3B       		.uleb128 0x3b
 3639 0056 0B       		.uleb128 0xb
 3640 0057 6E       		.uleb128 0x6e
 3641 0058 0E       		.uleb128 0xe
 3642 0059 49       		.uleb128 0x49
 3643 005a 13       		.uleb128 0x13
 3644 005b 3C       		.uleb128 0x3c
 3645 005c 19       		.uleb128 0x19
 3646 005d 01       		.uleb128 0x1
 3647 005e 13       		.uleb128 0x13
 3648 005f 00       		.byte	0
 3649 0060 00       		.byte	0
 3650 0061 08       		.uleb128 0x8
 3651 0062 05       		.uleb128 0x5
 3652 0063 00       		.byte	0
 3653 0064 49       		.uleb128 0x49
 3654 0065 13       		.uleb128 0x13
 3655 0066 00       		.byte	0
 3656 0067 00       		.byte	0
 3657 0068 09       		.uleb128 0x9
 3658 0069 39       		.uleb128 0x39
 3659 006a 01       		.byte	0x1
 3660 006b 03       		.uleb128 0x3
 3661 006c 0E       		.uleb128 0xe
 3662 006d 3A       		.uleb128 0x3a
 3663 006e 0B       		.uleb128 0xb
 3664 006f 3B       		.uleb128 0x3b
 3665 0070 0B       		.uleb128 0xb
 3666 0071 01       		.uleb128 0x1
 3667 0072 13       		.uleb128 0x13
 3668 0073 00       		.byte	0
 3669 0074 00       		.byte	0
 3670 0075 0A       		.uleb128 0xa
 3671 0076 2E       		.uleb128 0x2e
 3672 0077 01       		.byte	0x1
 3673 0078 3F       		.uleb128 0x3f
 3674 0079 19       		.uleb128 0x19
 3675 007a 03       		.uleb128 0x3
 3676 007b 08       		.uleb128 0x8
 3677 007c 3A       		.uleb128 0x3a
 3678 007d 0B       		.uleb128 0xb
 3679 007e 3B       		.uleb128 0x3b
 3680 007f 0B       		.uleb128 0xb
 3681 0080 6E       		.uleb128 0x6e
 3682 0081 0E       		.uleb128 0xe
 3683 0082 49       		.uleb128 0x49
 3684 0083 13       		.uleb128 0x13
 3685 0084 3C       		.uleb128 0x3c
 3686 0085 19       		.uleb128 0x19
 3687 0086 00       		.byte	0
 3688 0087 00       		.byte	0
 3689 0088 0B       		.uleb128 0xb
 3690 0089 24       		.uleb128 0x24
 3691 008a 00       		.byte	0
ARM GAS  /tmp/cc8RfTnf.s 			page 98


 3692 008b 0B       		.uleb128 0xb
 3693 008c 0B       		.uleb128 0xb
 3694 008d 3E       		.uleb128 0x3e
 3695 008e 0B       		.uleb128 0xb
 3696 008f 03       		.uleb128 0x3
 3697 0090 0E       		.uleb128 0xe
 3698 0091 00       		.byte	0
 3699 0092 00       		.byte	0
 3700 0093 0C       		.uleb128 0xc
 3701 0094 16       		.uleb128 0x16
 3702 0095 00       		.byte	0
 3703 0096 03       		.uleb128 0x3
 3704 0097 0E       		.uleb128 0xe
 3705 0098 3A       		.uleb128 0x3a
 3706 0099 0B       		.uleb128 0xb
 3707 009a 3B       		.uleb128 0x3b
 3708 009b 0B       		.uleb128 0xb
 3709 009c 49       		.uleb128 0x49
 3710 009d 13       		.uleb128 0x13
 3711 009e 00       		.byte	0
 3712 009f 00       		.byte	0
 3713 00a0 0D       		.uleb128 0xd
 3714 00a1 24       		.uleb128 0x24
 3715 00a2 00       		.byte	0
 3716 00a3 0B       		.uleb128 0xb
 3717 00a4 0B       		.uleb128 0xb
 3718 00a5 3E       		.uleb128 0x3e
 3719 00a6 0B       		.uleb128 0xb
 3720 00a7 03       		.uleb128 0x3
 3721 00a8 08       		.uleb128 0x8
 3722 00a9 00       		.byte	0
 3723 00aa 00       		.byte	0
 3724 00ab 0E       		.uleb128 0xe
 3725 00ac 3B       		.uleb128 0x3b
 3726 00ad 00       		.byte	0
 3727 00ae 03       		.uleb128 0x3
 3728 00af 0E       		.uleb128 0xe
 3729 00b0 00       		.byte	0
 3730 00b1 00       		.byte	0
 3731 00b2 0F       		.uleb128 0xf
 3732 00b3 16       		.uleb128 0x16
 3733 00b4 00       		.byte	0
 3734 00b5 03       		.uleb128 0x3
 3735 00b6 0E       		.uleb128 0xe
 3736 00b7 3A       		.uleb128 0x3a
 3737 00b8 0B       		.uleb128 0xb
 3738 00b9 3B       		.uleb128 0x3b
 3739 00ba 05       		.uleb128 0x5
 3740 00bb 49       		.uleb128 0x49
 3741 00bc 13       		.uleb128 0x13
 3742 00bd 00       		.byte	0
 3743 00be 00       		.byte	0
 3744 00bf 10       		.uleb128 0x10
 3745 00c0 13       		.uleb128 0x13
 3746 00c1 01       		.byte	0x1
 3747 00c2 0B       		.uleb128 0xb
 3748 00c3 0B       		.uleb128 0xb
ARM GAS  /tmp/cc8RfTnf.s 			page 99


 3749 00c4 3A       		.uleb128 0x3a
 3750 00c5 0B       		.uleb128 0xb
 3751 00c6 3B       		.uleb128 0x3b
 3752 00c7 0B       		.uleb128 0xb
 3753 00c8 6E       		.uleb128 0x6e
 3754 00c9 0E       		.uleb128 0xe
 3755 00ca 01       		.uleb128 0x1
 3756 00cb 13       		.uleb128 0x13
 3757 00cc 00       		.byte	0
 3758 00cd 00       		.byte	0
 3759 00ce 11       		.uleb128 0x11
 3760 00cf 17       		.uleb128 0x17
 3761 00d0 01       		.byte	0x1
 3762 00d1 0B       		.uleb128 0xb
 3763 00d2 0B       		.uleb128 0xb
 3764 00d3 3A       		.uleb128 0x3a
 3765 00d4 0B       		.uleb128 0xb
 3766 00d5 3B       		.uleb128 0x3b
 3767 00d6 0B       		.uleb128 0xb
 3768 00d7 01       		.uleb128 0x1
 3769 00d8 13       		.uleb128 0x13
 3770 00d9 00       		.byte	0
 3771 00da 00       		.byte	0
 3772 00db 12       		.uleb128 0x12
 3773 00dc 0D       		.uleb128 0xd
 3774 00dd 00       		.byte	0
 3775 00de 03       		.uleb128 0x3
 3776 00df 0E       		.uleb128 0xe
 3777 00e0 3A       		.uleb128 0x3a
 3778 00e1 0B       		.uleb128 0xb
 3779 00e2 3B       		.uleb128 0x3b
 3780 00e3 0B       		.uleb128 0xb
 3781 00e4 49       		.uleb128 0x49
 3782 00e5 13       		.uleb128 0x13
 3783 00e6 00       		.byte	0
 3784 00e7 00       		.byte	0
 3785 00e8 13       		.uleb128 0x13
 3786 00e9 0D       		.uleb128 0xd
 3787 00ea 00       		.byte	0
 3788 00eb 03       		.uleb128 0x3
 3789 00ec 0E       		.uleb128 0xe
 3790 00ed 3A       		.uleb128 0x3a
 3791 00ee 0B       		.uleb128 0xb
 3792 00ef 3B       		.uleb128 0x3b
 3793 00f0 0B       		.uleb128 0xb
 3794 00f1 49       		.uleb128 0x49
 3795 00f2 13       		.uleb128 0x13
 3796 00f3 38       		.uleb128 0x38
 3797 00f4 0B       		.uleb128 0xb
 3798 00f5 00       		.byte	0
 3799 00f6 00       		.byte	0
 3800 00f7 14       		.uleb128 0x14
 3801 00f8 01       		.uleb128 0x1
 3802 00f9 01       		.byte	0x1
 3803 00fa 49       		.uleb128 0x49
 3804 00fb 13       		.uleb128 0x13
 3805 00fc 01       		.uleb128 0x1
ARM GAS  /tmp/cc8RfTnf.s 			page 100


 3806 00fd 13       		.uleb128 0x13
 3807 00fe 00       		.byte	0
 3808 00ff 00       		.byte	0
 3809 0100 15       		.uleb128 0x15
 3810 0101 21       		.uleb128 0x21
 3811 0102 00       		.byte	0
 3812 0103 49       		.uleb128 0x49
 3813 0104 13       		.uleb128 0x13
 3814 0105 2F       		.uleb128 0x2f
 3815 0106 0B       		.uleb128 0xb
 3816 0107 00       		.byte	0
 3817 0108 00       		.byte	0
 3818 0109 16       		.uleb128 0x16
 3819 010a 0F       		.uleb128 0xf
 3820 010b 00       		.byte	0
 3821 010c 0B       		.uleb128 0xb
 3822 010d 0B       		.uleb128 0xb
 3823 010e 00       		.byte	0
 3824 010f 00       		.byte	0
 3825 0110 17       		.uleb128 0x17
 3826 0111 13       		.uleb128 0x13
 3827 0112 01       		.byte	0x1
 3828 0113 03       		.uleb128 0x3
 3829 0114 0E       		.uleb128 0xe
 3830 0115 0B       		.uleb128 0xb
 3831 0116 0B       		.uleb128 0xb
 3832 0117 3A       		.uleb128 0x3a
 3833 0118 0B       		.uleb128 0xb
 3834 0119 3B       		.uleb128 0x3b
 3835 011a 0B       		.uleb128 0xb
 3836 011b 01       		.uleb128 0x1
 3837 011c 13       		.uleb128 0x13
 3838 011d 00       		.byte	0
 3839 011e 00       		.byte	0
 3840 011f 18       		.uleb128 0x18
 3841 0120 0D       		.uleb128 0xd
 3842 0121 00       		.byte	0
 3843 0122 03       		.uleb128 0x3
 3844 0123 08       		.uleb128 0x8
 3845 0124 3A       		.uleb128 0x3a
 3846 0125 0B       		.uleb128 0xb
 3847 0126 3B       		.uleb128 0x3b
 3848 0127 0B       		.uleb128 0xb
 3849 0128 49       		.uleb128 0x49
 3850 0129 13       		.uleb128 0x13
 3851 012a 38       		.uleb128 0x38
 3852 012b 0B       		.uleb128 0xb
 3853 012c 00       		.byte	0
 3854 012d 00       		.byte	0
 3855 012e 19       		.uleb128 0x19
 3856 012f 0F       		.uleb128 0xf
 3857 0130 00       		.byte	0
 3858 0131 0B       		.uleb128 0xb
 3859 0132 0B       		.uleb128 0xb
 3860 0133 49       		.uleb128 0x49
 3861 0134 13       		.uleb128 0x13
 3862 0135 00       		.byte	0
ARM GAS  /tmp/cc8RfTnf.s 			page 101


 3863 0136 00       		.byte	0
 3864 0137 1A       		.uleb128 0x1a
 3865 0138 13       		.uleb128 0x13
 3866 0139 01       		.byte	0x1
 3867 013a 03       		.uleb128 0x3
 3868 013b 0E       		.uleb128 0xe
 3869 013c 0B       		.uleb128 0xb
 3870 013d 05       		.uleb128 0x5
 3871 013e 3A       		.uleb128 0x3a
 3872 013f 0B       		.uleb128 0xb
 3873 0140 3B       		.uleb128 0x3b
 3874 0141 0B       		.uleb128 0xb
 3875 0142 01       		.uleb128 0x1
 3876 0143 13       		.uleb128 0x13
 3877 0144 00       		.byte	0
 3878 0145 00       		.byte	0
 3879 0146 1B       		.uleb128 0x1b
 3880 0147 0D       		.uleb128 0xd
 3881 0148 00       		.byte	0
 3882 0149 03       		.uleb128 0x3
 3883 014a 0E       		.uleb128 0xe
 3884 014b 3A       		.uleb128 0x3a
 3885 014c 0B       		.uleb128 0xb
 3886 014d 3B       		.uleb128 0x3b
 3887 014e 0B       		.uleb128 0xb
 3888 014f 49       		.uleb128 0x49
 3889 0150 13       		.uleb128 0x13
 3890 0151 38       		.uleb128 0x38
 3891 0152 05       		.uleb128 0x5
 3892 0153 00       		.byte	0
 3893 0154 00       		.byte	0
 3894 0155 1C       		.uleb128 0x1c
 3895 0156 15       		.uleb128 0x15
 3896 0157 00       		.byte	0
 3897 0158 00       		.byte	0
 3898 0159 00       		.byte	0
 3899 015a 1D       		.uleb128 0x1d
 3900 015b 15       		.uleb128 0x15
 3901 015c 01       		.byte	0x1
 3902 015d 49       		.uleb128 0x49
 3903 015e 13       		.uleb128 0x13
 3904 015f 01       		.uleb128 0x1
 3905 0160 13       		.uleb128 0x13
 3906 0161 00       		.byte	0
 3907 0162 00       		.byte	0
 3908 0163 1E       		.uleb128 0x1e
 3909 0164 26       		.uleb128 0x26
 3910 0165 00       		.byte	0
 3911 0166 49       		.uleb128 0x49
 3912 0167 13       		.uleb128 0x13
 3913 0168 00       		.byte	0
 3914 0169 00       		.byte	0
 3915 016a 1F       		.uleb128 0x1f
 3916 016b 13       		.uleb128 0x13
 3917 016c 01       		.byte	0x1
 3918 016d 03       		.uleb128 0x3
 3919 016e 0E       		.uleb128 0xe
ARM GAS  /tmp/cc8RfTnf.s 			page 102


 3920 016f 0B       		.uleb128 0xb
 3921 0170 05       		.uleb128 0x5
 3922 0171 3A       		.uleb128 0x3a
 3923 0172 0B       		.uleb128 0xb
 3924 0173 3B       		.uleb128 0x3b
 3925 0174 05       		.uleb128 0x5
 3926 0175 01       		.uleb128 0x1
 3927 0176 13       		.uleb128 0x13
 3928 0177 00       		.byte	0
 3929 0178 00       		.byte	0
 3930 0179 20       		.uleb128 0x20
 3931 017a 17       		.uleb128 0x17
 3932 017b 01       		.byte	0x1
 3933 017c 0B       		.uleb128 0xb
 3934 017d 0B       		.uleb128 0xb
 3935 017e 3A       		.uleb128 0x3a
 3936 017f 0B       		.uleb128 0xb
 3937 0180 3B       		.uleb128 0x3b
 3938 0181 05       		.uleb128 0x5
 3939 0182 01       		.uleb128 0x1
 3940 0183 13       		.uleb128 0x13
 3941 0184 00       		.byte	0
 3942 0185 00       		.byte	0
 3943 0186 21       		.uleb128 0x21
 3944 0187 13       		.uleb128 0x13
 3945 0188 01       		.byte	0x1
 3946 0189 0B       		.uleb128 0xb
 3947 018a 0B       		.uleb128 0xb
 3948 018b 3A       		.uleb128 0x3a
 3949 018c 0B       		.uleb128 0xb
 3950 018d 3B       		.uleb128 0x3b
 3951 018e 05       		.uleb128 0x5
 3952 018f 01       		.uleb128 0x1
 3953 0190 13       		.uleb128 0x13
 3954 0191 00       		.byte	0
 3955 0192 00       		.byte	0
 3956 0193 22       		.uleb128 0x22
 3957 0194 0D       		.uleb128 0xd
 3958 0195 00       		.byte	0
 3959 0196 03       		.uleb128 0x3
 3960 0197 0E       		.uleb128 0xe
 3961 0198 3A       		.uleb128 0x3a
 3962 0199 0B       		.uleb128 0xb
 3963 019a 3B       		.uleb128 0x3b
 3964 019b 05       		.uleb128 0x5
 3965 019c 49       		.uleb128 0x49
 3966 019d 13       		.uleb128 0x13
 3967 019e 38       		.uleb128 0x38
 3968 019f 0B       		.uleb128 0xb
 3969 01a0 00       		.byte	0
 3970 01a1 00       		.byte	0
 3971 01a2 23       		.uleb128 0x23
 3972 01a3 0D       		.uleb128 0xd
 3973 01a4 00       		.byte	0
 3974 01a5 03       		.uleb128 0x3
 3975 01a6 0E       		.uleb128 0xe
 3976 01a7 3A       		.uleb128 0x3a
ARM GAS  /tmp/cc8RfTnf.s 			page 103


 3977 01a8 0B       		.uleb128 0xb
 3978 01a9 3B       		.uleb128 0x3b
 3979 01aa 05       		.uleb128 0x5
 3980 01ab 49       		.uleb128 0x49
 3981 01ac 13       		.uleb128 0x13
 3982 01ad 00       		.byte	0
 3983 01ae 00       		.byte	0
 3984 01af 24       		.uleb128 0x24
 3985 01b0 0D       		.uleb128 0xd
 3986 01b1 00       		.byte	0
 3987 01b2 03       		.uleb128 0x3
 3988 01b3 0E       		.uleb128 0xe
 3989 01b4 3A       		.uleb128 0x3a
 3990 01b5 0B       		.uleb128 0xb
 3991 01b6 3B       		.uleb128 0x3b
 3992 01b7 05       		.uleb128 0x5
 3993 01b8 49       		.uleb128 0x49
 3994 01b9 13       		.uleb128 0x13
 3995 01ba 38       		.uleb128 0x38
 3996 01bb 05       		.uleb128 0x5
 3997 01bc 00       		.byte	0
 3998 01bd 00       		.byte	0
 3999 01be 25       		.uleb128 0x25
 4000 01bf 13       		.uleb128 0x13
 4001 01c0 01       		.byte	0x1
 4002 01c1 03       		.uleb128 0x3
 4003 01c2 0E       		.uleb128 0xe
 4004 01c3 0B       		.uleb128 0xb
 4005 01c4 0B       		.uleb128 0xb
 4006 01c5 3A       		.uleb128 0x3a
 4007 01c6 0B       		.uleb128 0xb
 4008 01c7 3B       		.uleb128 0x3b
 4009 01c8 05       		.uleb128 0x5
 4010 01c9 01       		.uleb128 0x1
 4011 01ca 13       		.uleb128 0x13
 4012 01cb 00       		.byte	0
 4013 01cc 00       		.byte	0
 4014 01cd 26       		.uleb128 0x26
 4015 01ce 15       		.uleb128 0x15
 4016 01cf 01       		.byte	0x1
 4017 01d0 01       		.uleb128 0x1
 4018 01d1 13       		.uleb128 0x13
 4019 01d2 00       		.byte	0
 4020 01d3 00       		.byte	0
 4021 01d4 27       		.uleb128 0x27
 4022 01d5 34       		.uleb128 0x34
 4023 01d6 00       		.byte	0
 4024 01d7 03       		.uleb128 0x3
 4025 01d8 0E       		.uleb128 0xe
 4026 01d9 3A       		.uleb128 0x3a
 4027 01da 0B       		.uleb128 0xb
 4028 01db 3B       		.uleb128 0x3b
 4029 01dc 05       		.uleb128 0x5
 4030 01dd 49       		.uleb128 0x49
 4031 01de 13       		.uleb128 0x13
 4032 01df 3F       		.uleb128 0x3f
 4033 01e0 19       		.uleb128 0x19
ARM GAS  /tmp/cc8RfTnf.s 			page 104


 4034 01e1 3C       		.uleb128 0x3c
 4035 01e2 19       		.uleb128 0x19
 4036 01e3 00       		.byte	0
 4037 01e4 00       		.byte	0
 4038 01e5 28       		.uleb128 0x28
 4039 01e6 35       		.uleb128 0x35
 4040 01e7 00       		.byte	0
 4041 01e8 49       		.uleb128 0x49
 4042 01e9 13       		.uleb128 0x13
 4043 01ea 00       		.byte	0
 4044 01eb 00       		.byte	0
 4045 01ec 29       		.uleb128 0x29
 4046 01ed 13       		.uleb128 0x13
 4047 01ee 01       		.byte	0x1
 4048 01ef 03       		.uleb128 0x3
 4049 01f0 08       		.uleb128 0x8
 4050 01f1 0B       		.uleb128 0xb
 4051 01f2 0B       		.uleb128 0xb
 4052 01f3 3A       		.uleb128 0x3a
 4053 01f4 0B       		.uleb128 0xb
 4054 01f5 3B       		.uleb128 0x3b
 4055 01f6 0B       		.uleb128 0xb
 4056 01f7 01       		.uleb128 0x1
 4057 01f8 13       		.uleb128 0x13
 4058 01f9 00       		.byte	0
 4059 01fa 00       		.byte	0
 4060 01fb 2A       		.uleb128 0x2a
 4061 01fc 34       		.uleb128 0x34
 4062 01fd 00       		.byte	0
 4063 01fe 03       		.uleb128 0x3
 4064 01ff 0E       		.uleb128 0xe
 4065 0200 3A       		.uleb128 0x3a
 4066 0201 0B       		.uleb128 0xb
 4067 0202 3B       		.uleb128 0x3b
 4068 0203 0B       		.uleb128 0xb
 4069 0204 49       		.uleb128 0x49
 4070 0205 13       		.uleb128 0x13
 4071 0206 3F       		.uleb128 0x3f
 4072 0207 19       		.uleb128 0x19
 4073 0208 3C       		.uleb128 0x3c
 4074 0209 19       		.uleb128 0x19
 4075 020a 00       		.byte	0
 4076 020b 00       		.byte	0
 4077 020c 2B       		.uleb128 0x2b
 4078 020d 2E       		.uleb128 0x2e
 4079 020e 00       		.byte	0
 4080 020f 3F       		.uleb128 0x3f
 4081 0210 19       		.uleb128 0x19
 4082 0211 03       		.uleb128 0x3
 4083 0212 0E       		.uleb128 0xe
 4084 0213 3A       		.uleb128 0x3a
 4085 0214 0B       		.uleb128 0xb
 4086 0215 3B       		.uleb128 0x3b
 4087 0216 0B       		.uleb128 0xb
 4088 0217 49       		.uleb128 0x49
 4089 0218 13       		.uleb128 0x13
 4090 0219 3C       		.uleb128 0x3c
ARM GAS  /tmp/cc8RfTnf.s 			page 105


 4091 021a 19       		.uleb128 0x19
 4092 021b 00       		.byte	0
 4093 021c 00       		.byte	0
 4094 021d 2C       		.uleb128 0x2c
 4095 021e 2E       		.uleb128 0x2e
 4096 021f 01       		.byte	0x1
 4097 0220 3F       		.uleb128 0x3f
 4098 0221 19       		.uleb128 0x19
 4099 0222 03       		.uleb128 0x3
 4100 0223 0E       		.uleb128 0xe
 4101 0224 3A       		.uleb128 0x3a
 4102 0225 0B       		.uleb128 0xb
 4103 0226 3B       		.uleb128 0x3b
 4104 0227 0B       		.uleb128 0xb
 4105 0228 49       		.uleb128 0x49
 4106 0229 13       		.uleb128 0x13
 4107 022a 3C       		.uleb128 0x3c
 4108 022b 19       		.uleb128 0x19
 4109 022c 01       		.uleb128 0x1
 4110 022d 13       		.uleb128 0x13
 4111 022e 00       		.byte	0
 4112 022f 00       		.byte	0
 4113 0230 2D       		.uleb128 0x2d
 4114 0231 02       		.uleb128 0x2
 4115 0232 01       		.byte	0x1
 4116 0233 03       		.uleb128 0x3
 4117 0234 0E       		.uleb128 0xe
 4118 0235 0B       		.uleb128 0xb
 4119 0236 0B       		.uleb128 0xb
 4120 0237 3A       		.uleb128 0x3a
 4121 0238 0B       		.uleb128 0xb
 4122 0239 3B       		.uleb128 0x3b
 4123 023a 0B       		.uleb128 0xb
 4124 023b 01       		.uleb128 0x1
 4125 023c 13       		.uleb128 0x13
 4126 023d 00       		.byte	0
 4127 023e 00       		.byte	0
 4128 023f 2E       		.uleb128 0x2e
 4129 0240 2E       		.uleb128 0x2e
 4130 0241 00       		.byte	0
 4131 0242 3F       		.uleb128 0x3f
 4132 0243 19       		.uleb128 0x19
 4133 0244 03       		.uleb128 0x3
 4134 0245 0E       		.uleb128 0xe
 4135 0246 3A       		.uleb128 0x3a
 4136 0247 0B       		.uleb128 0xb
 4137 0248 3B       		.uleb128 0x3b
 4138 0249 0B       		.uleb128 0xb
 4139 024a 6E       		.uleb128 0x6e
 4140 024b 0E       		.uleb128 0xe
 4141 024c 32       		.uleb128 0x32
 4142 024d 0B       		.uleb128 0xb
 4143 024e 3C       		.uleb128 0x3c
 4144 024f 19       		.uleb128 0x19
 4145 0250 00       		.byte	0
 4146 0251 00       		.byte	0
 4147 0252 2F       		.uleb128 0x2f
ARM GAS  /tmp/cc8RfTnf.s 			page 106


 4148 0253 2E       		.uleb128 0x2e
 4149 0254 00       		.byte	0
 4150 0255 3F       		.uleb128 0x3f
 4151 0256 19       		.uleb128 0x19
 4152 0257 03       		.uleb128 0x3
 4153 0258 0E       		.uleb128 0xe
 4154 0259 3A       		.uleb128 0x3a
 4155 025a 0B       		.uleb128 0xb
 4156 025b 3B       		.uleb128 0x3b
 4157 025c 0B       		.uleb128 0xb
 4158 025d 6E       		.uleb128 0x6e
 4159 025e 0E       		.uleb128 0xe
 4160 025f 49       		.uleb128 0x49
 4161 0260 13       		.uleb128 0x13
 4162 0261 32       		.uleb128 0x32
 4163 0262 0B       		.uleb128 0xb
 4164 0263 3C       		.uleb128 0x3c
 4165 0264 19       		.uleb128 0x19
 4166 0265 00       		.byte	0
 4167 0266 00       		.byte	0
 4168 0267 30       		.uleb128 0x30
 4169 0268 2E       		.uleb128 0x2e
 4170 0269 01       		.byte	0x1
 4171 026a 3F       		.uleb128 0x3f
 4172 026b 19       		.uleb128 0x19
 4173 026c 03       		.uleb128 0x3
 4174 026d 0E       		.uleb128 0xe
 4175 026e 3A       		.uleb128 0x3a
 4176 026f 0B       		.uleb128 0xb
 4177 0270 3B       		.uleb128 0x3b
 4178 0271 0B       		.uleb128 0xb
 4179 0272 6E       		.uleb128 0x6e
 4180 0273 0E       		.uleb128 0xe
 4181 0274 49       		.uleb128 0x49
 4182 0275 13       		.uleb128 0x13
 4183 0276 32       		.uleb128 0x32
 4184 0277 0B       		.uleb128 0xb
 4185 0278 3C       		.uleb128 0x3c
 4186 0279 19       		.uleb128 0x19
 4187 027a 01       		.uleb128 0x1
 4188 027b 13       		.uleb128 0x13
 4189 027c 00       		.byte	0
 4190 027d 00       		.byte	0
 4191 027e 31       		.uleb128 0x31
 4192 027f 2E       		.uleb128 0x2e
 4193 0280 01       		.byte	0x1
 4194 0281 3F       		.uleb128 0x3f
 4195 0282 19       		.uleb128 0x19
 4196 0283 03       		.uleb128 0x3
 4197 0284 0E       		.uleb128 0xe
 4198 0285 3A       		.uleb128 0x3a
 4199 0286 0B       		.uleb128 0xb
 4200 0287 3B       		.uleb128 0x3b
 4201 0288 0B       		.uleb128 0xb
 4202 0289 6E       		.uleb128 0x6e
 4203 028a 0E       		.uleb128 0xe
 4204 028b 49       		.uleb128 0x49
ARM GAS  /tmp/cc8RfTnf.s 			page 107


 4205 028c 13       		.uleb128 0x13
 4206 028d 32       		.uleb128 0x32
 4207 028e 0B       		.uleb128 0xb
 4208 028f 3C       		.uleb128 0x3c
 4209 0290 19       		.uleb128 0x19
 4210 0291 00       		.byte	0
 4211 0292 00       		.byte	0
 4212 0293 32       		.uleb128 0x32
 4213 0294 04       		.uleb128 0x4
 4214 0295 01       		.byte	0x1
 4215 0296 03       		.uleb128 0x3
 4216 0297 0E       		.uleb128 0xe
 4217 0298 0B       		.uleb128 0xb
 4218 0299 0B       		.uleb128 0xb
 4219 029a 49       		.uleb128 0x49
 4220 029b 13       		.uleb128 0x13
 4221 029c 3A       		.uleb128 0x3a
 4222 029d 0B       		.uleb128 0xb
 4223 029e 3B       		.uleb128 0x3b
 4224 029f 0B       		.uleb128 0xb
 4225 02a0 01       		.uleb128 0x1
 4226 02a1 13       		.uleb128 0x13
 4227 02a2 00       		.byte	0
 4228 02a3 00       		.byte	0
 4229 02a4 33       		.uleb128 0x33
 4230 02a5 28       		.uleb128 0x28
 4231 02a6 00       		.byte	0
 4232 02a7 03       		.uleb128 0x3
 4233 02a8 0E       		.uleb128 0xe
 4234 02a9 1C       		.uleb128 0x1c
 4235 02aa 0D       		.uleb128 0xd
 4236 02ab 00       		.byte	0
 4237 02ac 00       		.byte	0
 4238 02ad 34       		.uleb128 0x34
 4239 02ae 28       		.uleb128 0x28
 4240 02af 00       		.byte	0
 4241 02b0 03       		.uleb128 0x3
 4242 02b1 0E       		.uleb128 0xe
 4243 02b2 1C       		.uleb128 0x1c
 4244 02b3 0B       		.uleb128 0xb
 4245 02b4 00       		.byte	0
 4246 02b5 00       		.byte	0
 4247 02b6 35       		.uleb128 0x35
 4248 02b7 13       		.uleb128 0x13
 4249 02b8 01       		.byte	0x1
 4250 02b9 0B       		.uleb128 0xb
 4251 02ba 05       		.uleb128 0x5
 4252 02bb 3A       		.uleb128 0x3a
 4253 02bc 0B       		.uleb128 0xb
 4254 02bd 3B       		.uleb128 0x3b
 4255 02be 05       		.uleb128 0x5
 4256 02bf 6E       		.uleb128 0x6e
 4257 02c0 0E       		.uleb128 0xe
 4258 02c1 01       		.uleb128 0x1
 4259 02c2 13       		.uleb128 0x13
 4260 02c3 00       		.byte	0
 4261 02c4 00       		.byte	0
ARM GAS  /tmp/cc8RfTnf.s 			page 108


 4262 02c5 36       		.uleb128 0x36
 4263 02c6 0D       		.uleb128 0xd
 4264 02c7 00       		.byte	0
 4265 02c8 03       		.uleb128 0x3
 4266 02c9 08       		.uleb128 0x8
 4267 02ca 3A       		.uleb128 0x3a
 4268 02cb 0B       		.uleb128 0xb
 4269 02cc 3B       		.uleb128 0x3b
 4270 02cd 05       		.uleb128 0x5
 4271 02ce 49       		.uleb128 0x49
 4272 02cf 13       		.uleb128 0x13
 4273 02d0 38       		.uleb128 0x38
 4274 02d1 05       		.uleb128 0x5
 4275 02d2 00       		.byte	0
 4276 02d3 00       		.byte	0
 4277 02d4 37       		.uleb128 0x37
 4278 02d5 21       		.uleb128 0x21
 4279 02d6 00       		.byte	0
 4280 02d7 49       		.uleb128 0x49
 4281 02d8 13       		.uleb128 0x13
 4282 02d9 2F       		.uleb128 0x2f
 4283 02da 05       		.uleb128 0x5
 4284 02db 00       		.byte	0
 4285 02dc 00       		.byte	0
 4286 02dd 38       		.uleb128 0x38
 4287 02de 16       		.uleb128 0x16
 4288 02df 00       		.byte	0
 4289 02e0 03       		.uleb128 0x3
 4290 02e1 08       		.uleb128 0x8
 4291 02e2 3A       		.uleb128 0x3a
 4292 02e3 0B       		.uleb128 0xb
 4293 02e4 3B       		.uleb128 0x3b
 4294 02e5 0B       		.uleb128 0xb
 4295 02e6 49       		.uleb128 0x49
 4296 02e7 13       		.uleb128 0x13
 4297 02e8 00       		.byte	0
 4298 02e9 00       		.byte	0
 4299 02ea 39       		.uleb128 0x39
 4300 02eb 26       		.uleb128 0x26
 4301 02ec 00       		.byte	0
 4302 02ed 00       		.byte	0
 4303 02ee 00       		.byte	0
 4304 02ef 3A       		.uleb128 0x3a
 4305 02f0 2E       		.uleb128 0x2e
 4306 02f1 01       		.byte	0x1
 4307 02f2 3F       		.uleb128 0x3f
 4308 02f3 19       		.uleb128 0x19
 4309 02f4 03       		.uleb128 0x3
 4310 02f5 08       		.uleb128 0x8
 4311 02f6 3A       		.uleb128 0x3a
 4312 02f7 0B       		.uleb128 0xb
 4313 02f8 3B       		.uleb128 0x3b
 4314 02f9 0B       		.uleb128 0xb
 4315 02fa 49       		.uleb128 0x49
 4316 02fb 13       		.uleb128 0x13
 4317 02fc 3C       		.uleb128 0x3c
 4318 02fd 19       		.uleb128 0x19
ARM GAS  /tmp/cc8RfTnf.s 			page 109


 4319 02fe 01       		.uleb128 0x1
 4320 02ff 13       		.uleb128 0x13
 4321 0300 00       		.byte	0
 4322 0301 00       		.byte	0
 4323 0302 3B       		.uleb128 0x3b
 4324 0303 2E       		.uleb128 0x2e
 4325 0304 01       		.byte	0x1
 4326 0305 3F       		.uleb128 0x3f
 4327 0306 19       		.uleb128 0x19
 4328 0307 03       		.uleb128 0x3
 4329 0308 0E       		.uleb128 0xe
 4330 0309 3A       		.uleb128 0x3a
 4331 030a 0B       		.uleb128 0xb
 4332 030b 3B       		.uleb128 0x3b
 4333 030c 0B       		.uleb128 0xb
 4334 030d 3C       		.uleb128 0x3c
 4335 030e 19       		.uleb128 0x19
 4336 030f 01       		.uleb128 0x1
 4337 0310 13       		.uleb128 0x13
 4338 0311 00       		.byte	0
 4339 0312 00       		.byte	0
 4340 0313 3C       		.uleb128 0x3c
 4341 0314 2E       		.uleb128 0x2e
 4342 0315 01       		.byte	0x1
 4343 0316 3F       		.uleb128 0x3f
 4344 0317 19       		.uleb128 0x19
 4345 0318 03       		.uleb128 0x3
 4346 0319 0E       		.uleb128 0xe
 4347 031a 3A       		.uleb128 0x3a
 4348 031b 0B       		.uleb128 0xb
 4349 031c 3B       		.uleb128 0x3b
 4350 031d 05       		.uleb128 0x5
 4351 031e 49       		.uleb128 0x49
 4352 031f 13       		.uleb128 0x13
 4353 0320 3C       		.uleb128 0x3c
 4354 0321 19       		.uleb128 0x19
 4355 0322 01       		.uleb128 0x1
 4356 0323 13       		.uleb128 0x13
 4357 0324 00       		.byte	0
 4358 0325 00       		.byte	0
 4359 0326 3D       		.uleb128 0x3d
 4360 0327 34       		.uleb128 0x34
 4361 0328 00       		.byte	0
 4362 0329 03       		.uleb128 0x3
 4363 032a 0E       		.uleb128 0xe
 4364 032b 3A       		.uleb128 0x3a
 4365 032c 0B       		.uleb128 0xb
 4366 032d 3B       		.uleb128 0x3b
 4367 032e 0B       		.uleb128 0xb
 4368 032f 49       		.uleb128 0x49
 4369 0330 13       		.uleb128 0x13
 4370 0331 02       		.uleb128 0x2
 4371 0332 18       		.uleb128 0x18
 4372 0333 00       		.byte	0
 4373 0334 00       		.byte	0
 4374 0335 3E       		.uleb128 0x3e
 4375 0336 2E       		.uleb128 0x2e
ARM GAS  /tmp/cc8RfTnf.s 			page 110


 4376 0337 01       		.byte	0x1
 4377 0338 47       		.uleb128 0x47
 4378 0339 13       		.uleb128 0x13
 4379 033a 3A       		.uleb128 0x3a
 4380 033b 0B       		.uleb128 0xb
 4381 033c 3B       		.uleb128 0x3b
 4382 033d 0B       		.uleb128 0xb
 4383 033e 11       		.uleb128 0x11
 4384 033f 01       		.uleb128 0x1
 4385 0340 12       		.uleb128 0x12
 4386 0341 06       		.uleb128 0x6
 4387 0342 40       		.uleb128 0x40
 4388 0343 18       		.uleb128 0x18
 4389 0344 9742     		.uleb128 0x2117
 4390 0346 19       		.uleb128 0x19
 4391 0347 01       		.uleb128 0x1
 4392 0348 13       		.uleb128 0x13
 4393 0349 00       		.byte	0
 4394 034a 00       		.byte	0
 4395 034b 3F       		.uleb128 0x3f
 4396 034c 05       		.uleb128 0x5
 4397 034d 00       		.byte	0
 4398 034e 03       		.uleb128 0x3
 4399 034f 0E       		.uleb128 0xe
 4400 0350 3A       		.uleb128 0x3a
 4401 0351 0B       		.uleb128 0xb
 4402 0352 3B       		.uleb128 0x3b
 4403 0353 0B       		.uleb128 0xb
 4404 0354 49       		.uleb128 0x49
 4405 0355 13       		.uleb128 0x13
 4406 0356 02       		.uleb128 0x2
 4407 0357 17       		.uleb128 0x17
 4408 0358 00       		.byte	0
 4409 0359 00       		.byte	0
 4410 035a 40       		.uleb128 0x40
 4411 035b 34       		.uleb128 0x34
 4412 035c 00       		.byte	0
 4413 035d 03       		.uleb128 0x3
 4414 035e 0E       		.uleb128 0xe
 4415 035f 3A       		.uleb128 0x3a
 4416 0360 0B       		.uleb128 0xb
 4417 0361 3B       		.uleb128 0x3b
 4418 0362 0B       		.uleb128 0xb
 4419 0363 49       		.uleb128 0x49
 4420 0364 13       		.uleb128 0x13
 4421 0365 02       		.uleb128 0x2
 4422 0366 17       		.uleb128 0x17
 4423 0367 00       		.byte	0
 4424 0368 00       		.byte	0
 4425 0369 41       		.uleb128 0x41
 4426 036a 898201   		.uleb128 0x4109
 4427 036d 01       		.byte	0x1
 4428 036e 11       		.uleb128 0x11
 4429 036f 01       		.uleb128 0x1
 4430 0370 31       		.uleb128 0x31
 4431 0371 13       		.uleb128 0x13
 4432 0372 01       		.uleb128 0x1
ARM GAS  /tmp/cc8RfTnf.s 			page 111


 4433 0373 13       		.uleb128 0x13
 4434 0374 00       		.byte	0
 4435 0375 00       		.byte	0
 4436 0376 42       		.uleb128 0x42
 4437 0377 8A8201   		.uleb128 0x410a
 4438 037a 00       		.byte	0
 4439 037b 02       		.uleb128 0x2
 4440 037c 18       		.uleb128 0x18
 4441 037d 9142     		.uleb128 0x2111
 4442 037f 18       		.uleb128 0x18
 4443 0380 00       		.byte	0
 4444 0381 00       		.byte	0
 4445 0382 43       		.uleb128 0x43
 4446 0383 898201   		.uleb128 0x4109
 4447 0386 01       		.byte	0x1
 4448 0387 11       		.uleb128 0x11
 4449 0388 01       		.uleb128 0x1
 4450 0389 31       		.uleb128 0x31
 4451 038a 13       		.uleb128 0x13
 4452 038b 00       		.byte	0
 4453 038c 00       		.byte	0
 4454 038d 44       		.uleb128 0x44
 4455 038e 34       		.uleb128 0x34
 4456 038f 00       		.byte	0
 4457 0390 03       		.uleb128 0x3
 4458 0391 0E       		.uleb128 0xe
 4459 0392 3A       		.uleb128 0x3a
 4460 0393 0B       		.uleb128 0xb
 4461 0394 3B       		.uleb128 0x3b
 4462 0395 0B       		.uleb128 0xb
 4463 0396 49       		.uleb128 0x49
 4464 0397 13       		.uleb128 0x13
 4465 0398 00       		.byte	0
 4466 0399 00       		.byte	0
 4467 039a 45       		.uleb128 0x45
 4468 039b 1D       		.uleb128 0x1d
 4469 039c 01       		.byte	0x1
 4470 039d 31       		.uleb128 0x31
 4471 039e 13       		.uleb128 0x13
 4472 039f 52       		.uleb128 0x52
 4473 03a0 01       		.uleb128 0x1
 4474 03a1 55       		.uleb128 0x55
 4475 03a2 17       		.uleb128 0x17
 4476 03a3 58       		.uleb128 0x58
 4477 03a4 0B       		.uleb128 0xb
 4478 03a5 59       		.uleb128 0x59
 4479 03a6 0B       		.uleb128 0xb
 4480 03a7 01       		.uleb128 0x1
 4481 03a8 13       		.uleb128 0x13
 4482 03a9 00       		.byte	0
 4483 03aa 00       		.byte	0
 4484 03ab 46       		.uleb128 0x46
 4485 03ac 05       		.uleb128 0x5
 4486 03ad 00       		.byte	0
 4487 03ae 31       		.uleb128 0x31
 4488 03af 13       		.uleb128 0x13
 4489 03b0 02       		.uleb128 0x2
ARM GAS  /tmp/cc8RfTnf.s 			page 112


 4490 03b1 17       		.uleb128 0x17
 4491 03b2 00       		.byte	0
 4492 03b3 00       		.byte	0
 4493 03b4 47       		.uleb128 0x47
 4494 03b5 0B       		.uleb128 0xb
 4495 03b6 01       		.byte	0x1
 4496 03b7 55       		.uleb128 0x55
 4497 03b8 17       		.uleb128 0x17
 4498 03b9 00       		.byte	0
 4499 03ba 00       		.byte	0
 4500 03bb 48       		.uleb128 0x48
 4501 03bc 34       		.uleb128 0x34
 4502 03bd 00       		.byte	0
 4503 03be 31       		.uleb128 0x31
 4504 03bf 13       		.uleb128 0x13
 4505 03c0 00       		.byte	0
 4506 03c1 00       		.byte	0
 4507 03c2 49       		.uleb128 0x49
 4508 03c3 2E       		.uleb128 0x2e
 4509 03c4 01       		.byte	0x1
 4510 03c5 03       		.uleb128 0x3
 4511 03c6 0E       		.uleb128 0xe
 4512 03c7 3A       		.uleb128 0x3a
 4513 03c8 0B       		.uleb128 0xb
 4514 03c9 3B       		.uleb128 0x3b
 4515 03ca 0B       		.uleb128 0xb
 4516 03cb 49       		.uleb128 0x49
 4517 03cc 13       		.uleb128 0x13
 4518 03cd 20       		.uleb128 0x20
 4519 03ce 0B       		.uleb128 0xb
 4520 03cf 01       		.uleb128 0x1
 4521 03d0 13       		.uleb128 0x13
 4522 03d1 00       		.byte	0
 4523 03d2 00       		.byte	0
 4524 03d3 4A       		.uleb128 0x4a
 4525 03d4 05       		.uleb128 0x5
 4526 03d5 00       		.byte	0
 4527 03d6 03       		.uleb128 0x3
 4528 03d7 0E       		.uleb128 0xe
 4529 03d8 3A       		.uleb128 0x3a
 4530 03d9 0B       		.uleb128 0xb
 4531 03da 3B       		.uleb128 0x3b
 4532 03db 0B       		.uleb128 0xb
 4533 03dc 49       		.uleb128 0x49
 4534 03dd 13       		.uleb128 0x13
 4535 03de 00       		.byte	0
 4536 03df 00       		.byte	0
 4537 03e0 4B       		.uleb128 0x4b
 4538 03e1 898201   		.uleb128 0x4109
 4539 03e4 01       		.byte	0x1
 4540 03e5 11       		.uleb128 0x11
 4541 03e6 01       		.uleb128 0x1
 4542 03e7 9542     		.uleb128 0x2115
 4543 03e9 19       		.uleb128 0x19
 4544 03ea 31       		.uleb128 0x31
 4545 03eb 13       		.uleb128 0x13
 4546 03ec 00       		.byte	0
ARM GAS  /tmp/cc8RfTnf.s 			page 113


 4547 03ed 00       		.byte	0
 4548 03ee 4C       		.uleb128 0x4c
 4549 03ef 34       		.uleb128 0x34
 4550 03f0 00       		.byte	0
 4551 03f1 03       		.uleb128 0x3
 4552 03f2 08       		.uleb128 0x8
 4553 03f3 3A       		.uleb128 0x3a
 4554 03f4 0B       		.uleb128 0xb
 4555 03f5 3B       		.uleb128 0x3b
 4556 03f6 0B       		.uleb128 0xb
 4557 03f7 49       		.uleb128 0x49
 4558 03f8 13       		.uleb128 0x13
 4559 03f9 02       		.uleb128 0x2
 4560 03fa 18       		.uleb128 0x18
 4561 03fb 00       		.byte	0
 4562 03fc 00       		.byte	0
 4563 03fd 4D       		.uleb128 0x4d
 4564 03fe 1D       		.uleb128 0x1d
 4565 03ff 01       		.byte	0x1
 4566 0400 31       		.uleb128 0x31
 4567 0401 13       		.uleb128 0x13
 4568 0402 11       		.uleb128 0x11
 4569 0403 01       		.uleb128 0x1
 4570 0404 12       		.uleb128 0x12
 4571 0405 06       		.uleb128 0x6
 4572 0406 58       		.uleb128 0x58
 4573 0407 0B       		.uleb128 0xb
 4574 0408 59       		.uleb128 0x59
 4575 0409 0B       		.uleb128 0xb
 4576 040a 01       		.uleb128 0x1
 4577 040b 13       		.uleb128 0x13
 4578 040c 00       		.byte	0
 4579 040d 00       		.byte	0
 4580 040e 4E       		.uleb128 0x4e
 4581 040f 2E       		.uleb128 0x2e
 4582 0410 01       		.byte	0x1
 4583 0411 03       		.uleb128 0x3
 4584 0412 0E       		.uleb128 0xe
 4585 0413 3A       		.uleb128 0x3a
 4586 0414 0B       		.uleb128 0xb
 4587 0415 3B       		.uleb128 0x3b
 4588 0416 05       		.uleb128 0x5
 4589 0417 20       		.uleb128 0x20
 4590 0418 0B       		.uleb128 0xb
 4591 0419 01       		.uleb128 0x1
 4592 041a 13       		.uleb128 0x13
 4593 041b 00       		.byte	0
 4594 041c 00       		.byte	0
 4595 041d 4F       		.uleb128 0x4f
 4596 041e 05       		.uleb128 0x5
 4597 041f 00       		.byte	0
 4598 0420 03       		.uleb128 0x3
 4599 0421 0E       		.uleb128 0xe
 4600 0422 3A       		.uleb128 0x3a
 4601 0423 0B       		.uleb128 0xb
 4602 0424 3B       		.uleb128 0x3b
 4603 0425 05       		.uleb128 0x5
ARM GAS  /tmp/cc8RfTnf.s 			page 114


 4604 0426 49       		.uleb128 0x49
 4605 0427 13       		.uleb128 0x13
 4606 0428 00       		.byte	0
 4607 0429 00       		.byte	0
 4608 042a 50       		.uleb128 0x50
 4609 042b 2E       		.uleb128 0x2e
 4610 042c 00       		.byte	0
 4611 042d 3F       		.uleb128 0x3f
 4612 042e 19       		.uleb128 0x19
 4613 042f 3C       		.uleb128 0x3c
 4614 0430 19       		.uleb128 0x19
 4615 0431 6E       		.uleb128 0x6e
 4616 0432 0E       		.uleb128 0xe
 4617 0433 03       		.uleb128 0x3
 4618 0434 0E       		.uleb128 0xe
 4619 0435 3A       		.uleb128 0x3a
 4620 0436 0B       		.uleb128 0xb
 4621 0437 3B       		.uleb128 0x3b
 4622 0438 0B       		.uleb128 0xb
 4623 0439 00       		.byte	0
 4624 043a 00       		.byte	0
 4625 043b 51       		.uleb128 0x51
 4626 043c 2E       		.uleb128 0x2e
 4627 043d 00       		.byte	0
 4628 043e 3F       		.uleb128 0x3f
 4629 043f 19       		.uleb128 0x19
 4630 0440 3C       		.uleb128 0x3c
 4631 0441 19       		.uleb128 0x19
 4632 0442 6E       		.uleb128 0x6e
 4633 0443 0E       		.uleb128 0xe
 4634 0444 03       		.uleb128 0x3
 4635 0445 0E       		.uleb128 0xe
 4636 0446 00       		.byte	0
 4637 0447 00       		.byte	0
 4638 0448 00       		.byte	0
 4639              		.section	.debug_loc,"",%progbits
 4640              	.Ldebug_loc0:
 4641              	.LLST7:
 4642 0000 00000000 		.4byte	.LVL20
 4643 0004 0C000000 		.4byte	.LVL21
 4644 0008 0100     		.2byte	0x1
 4645 000a 50       		.byte	0x50
 4646 000b 0C000000 		.4byte	.LVL21
 4647 000f 0F000000 		.4byte	.LVL22-1
 4648 0013 0200     		.2byte	0x2
 4649 0015 70       		.byte	0x70
 4650 0016 00       		.sleb128 0
 4651 0017 00000000 		.4byte	0
 4652 001b 00000000 		.4byte	0
 4653              	.LLST8:
 4654 001f 12000000 		.4byte	.LVL23
 4655 0023 14000000 		.4byte	.LVL24
 4656 0027 0100     		.2byte	0x1
 4657 0029 50       		.byte	0x50
 4658 002a 14000000 		.4byte	.LVL24
 4659 002e 1A000000 		.4byte	.LVL25
 4660 0032 0100     		.2byte	0x1
ARM GAS  /tmp/cc8RfTnf.s 			page 115


 4661 0034 51       		.byte	0x51
 4662 0035 00000000 		.4byte	0
 4663 0039 00000000 		.4byte	0
 4664              	.LLST2:
 4665 003d 00000000 		.4byte	.LVL9
 4666 0041 0C000000 		.4byte	.LVL10
 4667 0045 0100     		.2byte	0x1
 4668 0047 50       		.byte	0x50
 4669 0048 0C000000 		.4byte	.LVL10
 4670 004c 0F000000 		.4byte	.LVL11-1
 4671 0050 0200     		.2byte	0x2
 4672 0052 70       		.byte	0x70
 4673 0053 00       		.sleb128 0
 4674 0054 00000000 		.4byte	0
 4675 0058 00000000 		.4byte	0
 4676              	.LLST3:
 4677 005c 10000000 		.4byte	.LVL11
 4678 0060 2C000000 		.4byte	.LVL15
 4679 0064 0100     		.2byte	0x1
 4680 0066 50       		.byte	0x50
 4681 0067 76000000 		.4byte	.LVL17
 4682 006b 90000000 		.4byte	.LFE156
 4683 006f 0100     		.2byte	0x1
 4684 0071 50       		.byte	0x50
 4685 0072 00000000 		.4byte	0
 4686 0076 00000000 		.4byte	0
 4687              	.LLST4:
 4688 007a 20000000 		.4byte	.LVL13
 4689 007e 26000000 		.4byte	.LVL14
 4690 0082 0100     		.2byte	0x1
 4691 0084 53       		.byte	0x53
 4692 0085 76000000 		.4byte	.LVL17
 4693 0089 90000000 		.4byte	.LFE156
 4694 008d 0100     		.2byte	0x1
 4695 008f 53       		.byte	0x53
 4696 0090 00000000 		.4byte	0
 4697 0094 00000000 		.4byte	0
 4698              	.LLST5:
 4699 0098 20000000 		.4byte	.LVL13
 4700 009c 26000000 		.4byte	.LVL14
 4701 00a0 0100     		.2byte	0x1
 4702 00a2 52       		.byte	0x52
 4703 00a3 76000000 		.4byte	.LVL17
 4704 00a7 78000000 		.4byte	.LVL18
 4705 00ab 0100     		.2byte	0x1
 4706 00ad 52       		.byte	0x52
 4707 00ae 78000000 		.4byte	.LVL18
 4708 00b2 90000000 		.4byte	.LFE156
 4709 00b6 0100     		.2byte	0x1
 4710 00b8 56       		.byte	0x56
 4711 00b9 00000000 		.4byte	0
 4712 00bd 00000000 		.4byte	0
 4713              	.LLST6:
 4714 00c1 1C000000 		.4byte	.LVL12
 4715 00c5 26000000 		.4byte	.LVL14
 4716 00c9 0100     		.2byte	0x1
 4717 00cb 51       		.byte	0x51
ARM GAS  /tmp/cc8RfTnf.s 			page 116


 4718 00cc 76000000 		.4byte	.LVL17
 4719 00d0 7C000000 		.4byte	.LVL19
 4720 00d4 0100     		.2byte	0x1
 4721 00d6 51       		.byte	0x51
 4722 00d7 7C000000 		.4byte	.LVL19
 4723 00db 90000000 		.4byte	.LFE156
 4724 00df 0100     		.2byte	0x1
 4725 00e1 55       		.byte	0x55
 4726 00e2 00000000 		.4byte	0
 4727 00e6 00000000 		.4byte	0
 4728              	.LLST9:
 4729 00ea 00000000 		.4byte	.LVL27
 4730 00ee 07000000 		.4byte	.LVL28-1
 4731 00f2 0100     		.2byte	0x1
 4732 00f4 50       		.byte	0x50
 4733 00f5 07000000 		.4byte	.LVL28-1
 4734 00f9 12000000 		.4byte	.LVL30
 4735 00fd 0100     		.2byte	0x1
 4736 00ff 54       		.byte	0x54
 4737 0100 12000000 		.4byte	.LVL30
 4738 0104 15000000 		.4byte	.LVL31-1
 4739 0108 0100     		.2byte	0x1
 4740 010a 50       		.byte	0x50
 4741 010b 15000000 		.4byte	.LVL31-1
 4742 010f 16000000 		.4byte	.LFE154
 4743 0113 0400     		.2byte	0x4
 4744 0115 F3       		.byte	0xf3
 4745 0116 01       		.uleb128 0x1
 4746 0117 50       		.byte	0x50
 4747 0118 9F       		.byte	0x9f
 4748 0119 00000000 		.4byte	0
 4749 011d 00000000 		.4byte	0
 4750              	.LLST0:
 4751 0121 16000000 		.4byte	.LVL1
 4752 0125 1A000000 		.4byte	.LVL2
 4753 0129 0200     		.2byte	0x2
 4754 012b 32       		.byte	0x32
 4755 012c 9F       		.byte	0x9f
 4756 012d 00000000 		.4byte	0
 4757 0131 00000000 		.4byte	0
 4758              	.LLST1:
 4759 0135 1A000000 		.4byte	.LVL2
 4760 0139 1E000000 		.4byte	.LVL3
 4761 013d 0200     		.2byte	0x2
 4762 013f 32       		.byte	0x32
 4763 0140 9F       		.byte	0x9f
 4764 0141 00000000 		.4byte	0
 4765 0145 00000000 		.4byte	0
 4766              		.section	.debug_aranges,"",%progbits
 4767 0000 44000000 		.4byte	0x44
 4768 0004 0200     		.2byte	0x2
 4769 0006 00000000 		.4byte	.Ldebug_info0
 4770 000a 04       		.byte	0x4
 4771 000b 00       		.byte	0
 4772 000c 0000     		.2byte	0
 4773 000e 0000     		.2byte	0
 4774 0010 00000000 		.4byte	.LFB151
ARM GAS  /tmp/cc8RfTnf.s 			page 117


 4775 0014 28000000 		.4byte	.LFE151-.LFB151
 4776 0018 00000000 		.4byte	.LFB152
 4777 001c 14000000 		.4byte	.LFE152-.LFB152
 4778 0020 00000000 		.4byte	.LFB153
 4779 0024 58000000 		.4byte	.LFE153-.LFB153
 4780 0028 00000000 		.4byte	.LFB156
 4781 002c 90000000 		.4byte	.LFE156-.LFB156
 4782 0030 00000000 		.4byte	.LFB157
 4783 0034 30000000 		.4byte	.LFE157-.LFB157
 4784 0038 00000000 		.4byte	.LFB154
 4785 003c 16000000 		.4byte	.LFE154-.LFB154
 4786 0040 00000000 		.4byte	0
 4787 0044 00000000 		.4byte	0
 4788              		.section	.debug_ranges,"",%progbits
 4789              	.Ldebug_ranges0:
 4790 0000 0C000000 		.4byte	.LBB6
 4791 0004 10000000 		.4byte	.LBE6
 4792 0008 16000000 		.4byte	.LBB9
 4793 000c 1A000000 		.4byte	.LBE9
 4794 0010 00000000 		.4byte	0
 4795 0014 00000000 		.4byte	0
 4796 0018 14000000 		.4byte	.LBB14
 4797 001c 16000000 		.4byte	.LBE14
 4798 0020 20000000 		.4byte	.LBB19
 4799 0024 44000000 		.4byte	.LBE19
 4800 0028 46000000 		.4byte	.LBB20
 4801 002c 66000000 		.4byte	.LBE20
 4802 0030 76000000 		.4byte	.LBB21
 4803 0034 90000000 		.4byte	.LBE21
 4804 0038 00000000 		.4byte	0
 4805 003c 00000000 		.4byte	0
 4806 0040 00000000 		.4byte	.LFB151
 4807 0044 28000000 		.4byte	.LFE151
 4808 0048 00000000 		.4byte	.LFB152
 4809 004c 14000000 		.4byte	.LFE152
 4810 0050 00000000 		.4byte	.LFB153
 4811 0054 58000000 		.4byte	.LFE153
 4812 0058 00000000 		.4byte	.LFB156
 4813 005c 90000000 		.4byte	.LFE156
 4814 0060 00000000 		.4byte	.LFB157
 4815 0064 30000000 		.4byte	.LFE157
 4816 0068 00000000 		.4byte	.LFB154
 4817 006c 16000000 		.4byte	.LFE154
 4818 0070 00000000 		.4byte	0
 4819 0074 00000000 		.4byte	0
 4820              		.section	.debug_line,"",%progbits
 4821              	.Ldebug_line0:
 4822 0000 A2040000 		.section	.debug_str,"MS",%progbits,1
 4822      0200DE03 
 4822      00000201 
 4822      FB0E0D00 
 4822      01010101 
 4823              	.LASF273:
 4824 0000 67657465 		.ascii	"getenv\000"
 4824      6E7600
 4825              	.LASF8:
 4826 0007 6C6F6E67 		.ascii	"long int\000"
ARM GAS  /tmp/cc8RfTnf.s 			page 118


 4826      20696E74 
 4826      00
 4827              	.LASF269:
 4828 0010 61746F66 		.ascii	"atof\000"
 4828      00
 4829              	.LASF271:
 4830 0015 61746F6C 		.ascii	"atol\000"
 4830      00
 4831              	.LASF280:
 4832 001a 72616E64 		.ascii	"rand\000"
 4832      00
 4833              	.LASF172:
 4834 001f 52535443 		.ascii	"RSTC_IRQn\000"
 4834      5F495251 
 4834      6E00
 4835              	.LASF145:
 4836 0029 6D6B7469 		.ascii	"mktime\000"
 4836      6D6500
 4837              	.LASF43:
 4838 0030 5F6F6E5F 		.ascii	"_on_exit_args\000"
 4838      65786974 
 4838      5F617267 
 4838      7300
 4839              	.LASF286:
 4840 003e 73797374 		.ascii	"system\000"
 4840      656D00
 4841              	.LASF138:
 4842 0045 746D5F79 		.ascii	"tm_yday\000"
 4842      64617900 
 4843              	.LASF154:
 4844 004d 5F5A4E36 		.ascii	"_ZN6RTCDue13IsDateTimeSetEv\000"
 4844      52544344 
 4844      75653133 
 4844      49734461 
 4844      74655469 
 4845              	.LASF81:
 4846 0069 5F776374 		.ascii	"_wctomb_state\000"
 4846      6F6D625F 
 4846      73746174 
 4846      6500
 4847              	.LASF259:
 4848 0077 35646976 		.ascii	"5div_t\000"
 4848      5F7400
 4849              	.LASF306:
 4850 007e 756C5F6D 		.ascii	"ul_month\000"
 4850      6F6E7468 
 4850      00
 4851              	.LASF78:
 4852 0087 5F723438 		.ascii	"_r48\000"
 4852      00
 4853              	.LASF256:
 4854 008c 5254435F 		.ascii	"RTC_IDR\000"
 4854      49445200 
 4855              	.LASF83:
 4856 0094 5F736967 		.ascii	"_signal_buf\000"
 4856      6E616C5F 
 4856      62756600 
ARM GAS  /tmp/cc8RfTnf.s 			page 119


 4857              	.LASF275:
 4858 00a0 6D626C65 		.ascii	"mblen\000"
 4858      6E00
 4859              	.LASF13:
 4860 00a6 756E7369 		.ascii	"unsigned int\000"
 4860      676E6564 
 4860      20696E74 
 4860      00
 4861              	.LASF0:
 4862 00b3 5F5F676E 		.ascii	"__gnu_cxx\000"
 4862      755F6378 
 4862      7800
 4863              	.LASF57:
 4864 00bd 5F6C6266 		.ascii	"_lbfsize\000"
 4864      73697A65 
 4864      00
 4865              	.LASF55:
 4866 00c6 5F666C61 		.ascii	"_flags\000"
 4866      677300
 4867              	.LASF106:
 4868 00cd 5F703573 		.ascii	"_p5s\000"
 4868      00
 4869              	.LASF200:
 4870 00d2 44414343 		.ascii	"DACC_IRQn\000"
 4870      5F495251 
 4870      6E00
 4871              	.LASF177:
 4872 00dc 4546435F 		.ascii	"EFC_IRQn\000"
 4872      4952516E 
 4872      00
 4873              	.LASF182:
 4874 00e5 50494F43 		.ascii	"PIOC_IRQn\000"
 4874      5F495251 
 4874      6E00
 4875              	.LASF250:
 4876 00ef 5254435F 		.ascii	"RTC_CALR\000"
 4876      43414C52 
 4876      00
 4877              	.LASF94:
 4878 00f8 5F657272 		.ascii	"_errno\000"
 4878      6E6F00
 4879              	.LASF277:
 4880 00ff 77636861 		.ascii	"wchar_t\000"
 4880      725F7400 
 4881              	.LASF228:
 4882 0107 50455249 		.ascii	"PERIPH_COUNT_IRQn\000"
 4882      50485F43 
 4882      4F554E54 
 4882      5F495251 
 4882      6E00
 4883              	.LASF300:
 4884 0119 73747265 		.ascii	"strerror\000"
 4884      72726F72 
 4884      00
 4885              	.LASF333:
 4886 0122 5F5A4E36 		.ascii	"_ZN6RTCDue4InitEv\000"
 4886      52544344 
ARM GAS  /tmp/cc8RfTnf.s 			page 120


 4886      75653449 
 4886      6E697445 
 4886      7600
 4887              	.LASF207:
 4888 0134 474D4143 		.ascii	"GMAC_IRQn\000"
 4888      5F495251 
 4888      6E00
 4889              	.LASF134:
 4890 013e 746D5F6D 		.ascii	"tm_mday\000"
 4890      64617900 
 4891              	.LASF329:
 4892 0146 5F5A4E39 		.ascii	"_ZN9__gnu_cxx3divExx\000"
 4892      5F5F676E 
 4892      755F6378 
 4892      78336469 
 4892      76457878 
 4893              	.LASF26:
 4894 015b 5F666C6F 		.ascii	"_flock_t\000"
 4894      636B5F74 
 4894      00
 4895              	.LASF196:
 4896 0164 5443335F 		.ascii	"TC3_IRQn\000"
 4896      4952516E 
 4896      00
 4897              	.LASF69:
 4898 016d 5F6D6273 		.ascii	"_mbstate\000"
 4898      74617465 
 4898      00
 4899              	.LASF255:
 4900 0176 5254435F 		.ascii	"RTC_IER\000"
 4900      49455200 
 4901              	.LASF292:
 4902 017e 73747274 		.ascii	"strtoull\000"
 4902      6F756C6C 
 4902      00
 4903              	.LASF59:
 4904 0187 5F726561 		.ascii	"_read\000"
 4904      6400
 4905              	.LASF27:
 4906 018d 5F5F554C 		.ascii	"__ULong\000"
 4906      6F6E6700 
 4907              	.LASF85:
 4908 0195 5F6D6272 		.ascii	"_mbrlen_state\000"
 4908      6C656E5F 
 4908      73746174 
 4908      6500
 4909              	.LASF249:
 4910 01a3 5254435F 		.ascii	"RTC_TIMR\000"
 4910      54494D52 
 4910      00
 4911              	.LASF225:
 4912 01ac 50574D31 		.ascii	"PWM1_IRQn\000"
 4912      5F495251 
 4912      6E00
 4913              	.LASF183:
 4914 01b6 55534152 		.ascii	"USART0_IRQn\000"
 4914      54305F49 
ARM GAS  /tmp/cc8RfTnf.s 			page 121


 4914      52516E00 
 4915              	.LASF214:
 4916 01c2 55415254 		.ascii	"UART4_IRQn\000"
 4916      345F4952 
 4916      516E00
 4917              	.LASF96:
 4918 01cd 5F737464 		.ascii	"_stdout\000"
 4918      6F757400 
 4919              	.LASF226:
 4920 01d5 53445241 		.ascii	"SDRAMC_IRQn\000"
 4920      4D435F49 
 4920      52516E00 
 4921              	.LASF18:
 4922 01e1 5F66706F 		.ascii	"_fpos_t\000"
 4922      735F7400 
 4923              	.LASF50:
 4924 01e9 5F666E73 		.ascii	"_fns\000"
 4924      00
 4925              	.LASF58:
 4926 01ee 5F636F6F 		.ascii	"_cookie\000"
 4926      6B696500 
 4927              	.LASF125:
 4928 01f6 5F676C6F 		.ascii	"_global_impure_ptr\000"
 4928      62616C5F 
 4928      696D7075 
 4928      72655F70 
 4928      747200
 4929              	.LASF223:
 4930 0209 58444D41 		.ascii	"XDMAC_IRQn\000"
 4930      435F4952 
 4930      516E00
 4931              	.LASF296:
 4932 0214 675F696E 		.ascii	"g_interrupt_enabled\000"
 4932      74657272 
 4932      7570745F 
 4932      656E6162 
 4932      6C656400 
 4933              	.LASF32:
 4934 0228 5F426967 		.ascii	"_Bigint\000"
 4934      696E7400 
 4935              	.LASF308:
 4936 0230 7765656B 		.ascii	"week\000"
 4936      00
 4937              	.LASF164:
 4938 0235 4D656D6F 		.ascii	"MemoryManagement_IRQn\000"
 4938      72794D61 
 4938      6E616765 
 4938      6D656E74 
 4938      5F495251 
 4939              	.LASF40:
 4940 024b 5F5F746D 		.ascii	"__tm_wday\000"
 4940      5F776461 
 4940      7900
 4941              	.LASF2:
 4942 0255 7369676E 		.ascii	"signed char\000"
 4942      65642063 
 4942      68617200 
ARM GAS  /tmp/cc8RfTnf.s 			page 122


 4943              	.LASF295:
 4944 0261 73747274 		.ascii	"strtold\000"
 4944      6F6C6400 
 4945              	.LASF104:
 4946 0269 5F726573 		.ascii	"_result\000"
 4946      756C7400 
 4947              	.LASF291:
 4948 0271 73747274 		.ascii	"strtoll\000"
 4948      6F6C6C00 
 4949              	.LASF128:
 4950 0279 75696E74 		.ascii	"uint32_t\000"
 4950      33325F74 
 4950      00
 4951              	.LASF328:
 4952 0282 5F5A5374 		.ascii	"_ZSt3absx\000"
 4952      33616273 
 4952      7800
 4953              	.LASF36:
 4954 028c 5F5F746D 		.ascii	"__tm_hour\000"
 4954      5F686F75 
 4954      7200
 4955              	.LASF151:
 4956 0296 73747266 		.ascii	"strftime\000"
 4956      74696D65 
 4956      00
 4957              	.LASF278:
 4958 029f 6D62746F 		.ascii	"mbtowc\000"
 4958      776300
 4959              	.LASF135:
 4960 02a6 746D5F6D 		.ascii	"tm_mon\000"
 4960      6F6E00
 4961              	.LASF22:
 4962 02ad 5F5F636F 		.ascii	"__count\000"
 4962      756E7400 
 4963              	.LASF230:
 4964 02b5 49534552 		.ascii	"ISER\000"
 4964      00
 4965              	.LASF211:
 4966 02ba 51535049 		.ascii	"QSPI_IRQn\000"
 4966      5F495251 
 4966      6E00
 4967              	.LASF294:
 4968 02c4 666C6F61 		.ascii	"float\000"
 4968      7400
 4969              	.LASF158:
 4970 02ca 5F5A4E36 		.ascii	"_ZN6RTCDue11SetDateTimeEl\000"
 4970      52544344 
 4970      75653131 
 4970      53657444 
 4970      61746554 
 4971              	.LASF124:
 4972 02e4 5F696D70 		.ascii	"_impure_ptr\000"
 4972      7572655F 
 4972      70747200 
 4973              	.LASF246:
 4974 02f0 33527463 		.ascii	"3Rtc\000"
 4974      00
ARM GAS  /tmp/cc8RfTnf.s 			page 123


 4975              	.LASF91:
 4976 02f5 5F6E6578 		.ascii	"_nextf\000"
 4976      746600
 4977              	.LASF233:
 4978 02fc 52534552 		.ascii	"RSERVED1\000"
 4978      56454431 
 4978      00
 4979              	.LASF210:
 4980 0305 53504931 		.ascii	"SPI1_IRQn\000"
 4980      5F495251 
 4980      6E00
 4981              	.LASF199:
 4982 030f 41464543 		.ascii	"AFEC0_IRQn\000"
 4982      305F4952 
 4982      516E00
 4983              	.LASF87:
 4984 031a 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 4984      72746F77 
 4984      63735F73 
 4984      74617465 
 4984      00
 4985              	.LASF331:
 4986 032b 52544344 		.ascii	"RTCDue\000"
 4986      756500
 4987              	.LASF23:
 4988 0332 5F5F7661 		.ascii	"__value\000"
 4988      6C756500 
 4989              	.LASF12:
 4990 033a 6C6F6E67 		.ascii	"long long unsigned int\000"
 4990      206C6F6E 
 4990      6720756E 
 4990      7369676E 
 4990      65642069 
 4991              	.LASF179:
 4992 0351 55415254 		.ascii	"UART1_IRQn\000"
 4992      315F4952 
 4992      516E00
 4993              	.LASF74:
 4994 035c 5F617363 		.ascii	"_asctime_buf\000"
 4994      74696D65 
 4994      5F627566 
 4994      00
 4995              	.LASF120:
 4996 0369 5F72616E 		.ascii	"_rand48\000"
 4996      64343800 
 4997              	.LASF54:
 4998 0371 5F5F7346 		.ascii	"__sFILE\000"
 4998      494C4500 
 4999              	.LASF31:
 5000 0379 5F776473 		.ascii	"_wds\000"
 5000      00
 5001              	.LASF143:
 5002 037e 64696666 		.ascii	"difftime\000"
 5002      74696D65 
 5002      00
 5003              	.LASF288:
 5004 0387 7763746F 		.ascii	"wctomb\000"
ARM GAS  /tmp/cc8RfTnf.s 			page 124


 5004      6D6200
 5005              	.LASF187:
 5006 038e 50494F45 		.ascii	"PIOE_IRQn\000"
 5006      5F495251 
 5006      6E00
 5007              	.LASF148:
 5008 0398 6374696D 		.ascii	"ctime\000"
 5008      6500
 5009              	.LASF116:
 5010 039e 5F5F4649 		.ascii	"__FILE\000"
 5010      4C4500
 5011              	.LASF66:
 5012 03a5 5F6F6666 		.ascii	"_offset\000"
 5012      73657400 
 5013              	.LASF63:
 5014 03ad 5F756275 		.ascii	"_ubuf\000"
 5014      6600
 5015              	.LASF20:
 5016 03b3 5F5F7763 		.ascii	"__wch\000"
 5016      6800
 5017              	.LASF146:
 5018 03b9 74696D65 		.ascii	"time\000"
 5018      00
 5019              	.LASF289:
 5020 03be 6C6C6469 		.ascii	"lldiv\000"
 5020      7600
 5021              	.LASF130:
 5022 03c4 636C6F63 		.ascii	"clock_t\000"
 5022      6B5F7400 
 5023              	.LASF326:
 5024 03cc 2E2E2F6C 		.ascii	"../libraries/RTCDue/RTCDue.cpp\000"
 5024      69627261 
 5024      72696573 
 5024      2F525443 
 5024      4475652F 
 5025              	.LASF155:
 5026 03eb 5F5A4E36 		.ascii	"_ZN6RTCDue11GetDateTimeEv\000"
 5026      52544344 
 5026      75653131 
 5026      47657444 
 5026      61746554 
 5027              	.LASF99:
 5028 0405 5F656D65 		.ascii	"_emergency\000"
 5028      7267656E 
 5028      637900
 5029              	.LASF248:
 5030 0410 5254435F 		.ascii	"RTC_MR\000"
 5030      4D5200
 5031              	.LASF229:
 5032 0417 4952516E 		.ascii	"IRQn_Type\000"
 5032      5F547970 
 5032      6500
 5033              	.LASF309:
 5034 0421 756C5F77 		.ascii	"ul_week\000"
 5034      65656B00 
 5035              	.LASF298:
 5036 0429 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
ARM GAS  /tmp/cc8RfTnf.s 			page 125


 5036      6972715F 
 5036      70726576 
 5036      5F696E74 
 5036      65727275 
 5037              	.LASF332:
 5038 0446 496E6974 		.ascii	"Init\000"
 5038      00
 5039              	.LASF193:
 5040 044b 5443305F 		.ascii	"TC0_IRQn\000"
 5040      4952516E 
 5040      00
 5041              	.LASF14:
 5042 0454 73697A65 		.ascii	"size_t\000"
 5042      5F7400
 5043              	.LASF283:
 5044 045b 73747274 		.ascii	"strtod\000"
 5044      6F6400
 5045              	.LASF282:
 5046 0462 7372616E 		.ascii	"srand\000"
 5046      6400
 5047              	.LASF302:
 5048 0468 73747278 		.ascii	"strxfrm\000"
 5048      66726D00 
 5049              	.LASF34:
 5050 0470 5F5F746D 		.ascii	"__tm_sec\000"
 5050      5F736563 
 5050      00
 5051              	.LASF153:
 5052 0479 47657444 		.ascii	"GetDateTime\000"
 5052      61746554 
 5052      696D6500 
 5053              	.LASF301:
 5054 0485 73747274 		.ascii	"strtok\000"
 5054      6F6B00
 5055              	.LASF41:
 5056 048c 5F5F746D 		.ascii	"__tm_yday\000"
 5056      5F796461 
 5056      7900
 5057              	.LASF284:
 5058 0496 73747274 		.ascii	"strtol\000"
 5058      6F6C00
 5059              	.LASF98:
 5060 049d 5F696E63 		.ascii	"_inc\000"
 5060      00
 5061              	.LASF49:
 5062 04a2 5F696E64 		.ascii	"_ind\000"
 5062      00
 5063              	.LASF152:
 5064 04a7 49734461 		.ascii	"IsDateTimeSet\000"
 5064      74655469 
 5064      6D655365 
 5064      7400
 5065              	.LASF272:
 5066 04b5 62736561 		.ascii	"bsearch\000"
 5066      72636800 
 5067              	.LASF315:
 5068 04bd 6D6F6E74 		.ascii	"month\000"
ARM GAS  /tmp/cc8RfTnf.s 			page 126


 5068      6800
 5069              	.LASF28:
 5070 04c3 5F6E6578 		.ascii	"_next\000"
 5070      7400
 5071              	.LASF305:
 5072 04c9 756C5F79 		.ascii	"ul_year\000"
 5072      65617200 
 5073              	.LASF192:
 5074 04d1 5353435F 		.ascii	"SSC_IRQn\000"
 5074      4952516E 
 5074      00
 5075              	.LASF142:
 5076 04da 5F747A6E 		.ascii	"_tzname\000"
 5076      616D6500 
 5077              	.LASF313:
 5078 04e2 7365636F 		.ascii	"second\000"
 5078      6E6400
 5079              	.LASF311:
 5080 04e9 686F7572 		.ascii	"hour\000"
 5080      00
 5081              	.LASF279:
 5082 04ee 636C6F63 		.ascii	"clock\000"
 5082      6B00
 5083              	.LASF299:
 5084 04f4 73747263 		.ascii	"strcoll\000"
 5084      6F6C6C00 
 5085              	.LASF318:
 5086 04fc 4E564943 		.ascii	"NVIC_DisableIRQ\000"
 5086      5F446973 
 5086      61626C65 
 5086      49525100 
 5087              	.LASF171:
 5088 050c 53555043 		.ascii	"SUPC_IRQn\000"
 5088      5F495251 
 5088      6E00
 5089              	.LASF189:
 5090 0516 54574948 		.ascii	"TWIHS0_IRQn\000"
 5090      53305F49 
 5090      52516E00 
 5091              	.LASF245:
 5092 0522 31305F6D 		.ascii	"10_mbstate_t\000"
 5092      62737461 
 5092      74655F74 
 5092      00
 5093              	.LASF222:
 5094 052f 54524E47 		.ascii	"TRNG_IRQn\000"
 5094      5F495251 
 5094      6E00
 5095              	.LASF89:
 5096 0539 5F776373 		.ascii	"_wcsrtombs_state\000"
 5096      72746F6D 
 5096      62735F73 
 5096      74617465 
 5096      00
 5097              	.LASF79:
 5098 054a 5F6D626C 		.ascii	"_mblen_state\000"
 5098      656E5F73 
ARM GAS  /tmp/cc8RfTnf.s 			page 127


 5098      74617465 
 5098      00
 5099              	.LASF198:
 5100 0557 5443355F 		.ascii	"TC5_IRQn\000"
 5100      4952516E 
 5100      00
 5101              	.LASF30:
 5102 0560 5F736967 		.ascii	"_sign\000"
 5102      6E00
 5103              	.LASF115:
 5104 0566 63686172 		.ascii	"char\000"
 5104      00
 5105              	.LASF37:
 5106 056b 5F5F746D 		.ascii	"__tm_mday\000"
 5106      5F6D6461 
 5106      7900
 5107              	.LASF112:
 5108 0575 5F736967 		.ascii	"_sig_func\000"
 5108      5F66756E 
 5108      6300
 5109              	.LASF86:
 5110 057f 5F6D6272 		.ascii	"_mbrtowc_state\000"
 5110      746F7763 
 5110      5F737461 
 5110      746500
 5111              	.LASF111:
 5112 058e 5F617465 		.ascii	"_atexit0\000"
 5112      78697430 
 5112      00
 5113              	.LASF7:
 5114 0597 5F5F696E 		.ascii	"__int32_t\000"
 5114      7433325F 
 5114      7400
 5115              	.LASF220:
 5116 05a1 54433131 		.ascii	"TC11_IRQn\000"
 5116      5F495251 
 5116      6E00
 5117              	.LASF317:
 5118 05ab 4E564943 		.ascii	"NVIC_ClearPendingIRQ\000"
 5118      5F436C65 
 5118      61725065 
 5118      6E64696E 
 5118      67495251 
 5119              	.LASF136:
 5120 05c0 746D5F79 		.ascii	"tm_year\000"
 5120      65617200 
 5121              	.LASF336:
 5122 05c8 63616C63 		.ascii	"calculate_week\000"
 5122      756C6174 
 5122      655F7765 
 5122      656B00
 5123              	.LASF157:
 5124 05d7 53657444 		.ascii	"SetDate\000"
 5124      61746500 
 5125              	.LASF105:
 5126 05df 5F726573 		.ascii	"_result_k\000"
 5126      756C745F 
ARM GAS  /tmp/cc8RfTnf.s 			page 128


 5126      6B00
 5127              	.LASF224:
 5128 05e9 4953495F 		.ascii	"ISI_IRQn\000"
 5128      4952516E 
 5128      00
 5129              	.LASF304:
 5130 05f2 64617465 		.ascii	"date\000"
 5130      00
 5131              	.LASF110:
 5132 05f7 5F6E6577 		.ascii	"_new\000"
 5132      00
 5133              	.LASF126:
 5134 05fc 75696E74 		.ascii	"uint8_t\000"
 5134      385F7400 
 5135              	.LASF260:
 5136 0604 71756F74 		.ascii	"quot\000"
 5136      00
 5137              	.LASF129:
 5138 0609 74696D65 		.ascii	"time_t\000"
 5138      5F7400
 5139              	.LASF62:
 5140 0610 5F636C6F 		.ascii	"_close\000"
 5140      736500
 5141              	.LASF303:
 5142 0617 74696D65 		.ascii	"timeInfo\000"
 5142      496E666F 
 5142      00
 5143              	.LASF150:
 5144 0620 6C6F6361 		.ascii	"localtime\000"
 5144      6C74696D 
 5144      6500
 5145              	.LASF102:
 5146 062a 5F5F7364 		.ascii	"__sdidinit\000"
 5146      6964696E 
 5146      697400
 5147              	.LASF140:
 5148 0635 5F74696D 		.ascii	"_timezone\000"
 5148      657A6F6E 
 5148      6500
 5149              	.LASF312:
 5150 063f 6D696E75 		.ascii	"minute\000"
 5150      746500
 5151              	.LASF95:
 5152 0646 5F737464 		.ascii	"_stdin\000"
 5152      696E00
 5153              	.LASF76:
 5154 064d 5F67616D 		.ascii	"_gamma_signgam\000"
 5154      6D615F73 
 5154      69676E67 
 5154      616D00
 5155              	.LASF11:
 5156 065c 6C6F6E67 		.ascii	"long long int\000"
 5156      206C6F6E 
 5156      6720696E 
 5156      7400
 5157              	.LASF335:
 5158 066a 394E5649 		.ascii	"9NVIC_Type\000"
ARM GAS  /tmp/cc8RfTnf.s 			page 129


 5158      435F5479 
 5158      706500
 5159              	.LASF52:
 5160 0675 5F626173 		.ascii	"_base\000"
 5160      6500
 5161              	.LASF107:
 5162 067b 5F667265 		.ascii	"_freelist\000"
 5162      656C6973 
 5162      7400
 5163              	.LASF122:
 5164 0685 5F6D756C 		.ascii	"_mult\000"
 5164      7400
 5165              	.LASF123:
 5166 068b 5F616464 		.ascii	"_add\000"
 5166      00
 5167              	.LASF201:
 5168 0690 50574D30 		.ascii	"PWM0_IRQn\000"
 5168      5F495251 
 5168      6E00
 5169              	.LASF321:
 5170 069a 7274635F 		.ascii	"rtc_get_time\000"
 5170      6765745F 
 5170      74696D65 
 5170      00
 5171              	.LASF213:
 5172 06a7 55415254 		.ascii	"UART3_IRQn\000"
 5172      335F4952 
 5172      516E00
 5173              	.LASF88:
 5174 06b2 5F776372 		.ascii	"_wcrtomb_state\000"
 5174      746F6D62 
 5174      5F737461 
 5174      746500
 5175              	.LASF147:
 5176 06c1 61736374 		.ascii	"asctime\000"
 5176      696D6500 
 5177              	.LASF161:
 5178 06c9 626F6F6C 		.ascii	"bool\000"
 5178      00
 5179              	.LASF1:
 5180 06ce 5F5F6378 		.ascii	"__cxx11\000"
 5180      78313100 
 5181              	.LASF334:
 5182 06d6 5F5A4E36 		.ascii	"_ZN6RTCDue7SetTimeEl\000"
 5182      52544344 
 5182      75653753 
 5182      65745469 
 5182      6D65456C 
 5183              	.LASF254:
 5184 06eb 5254435F 		.ascii	"RTC_SCCR\000"
 5184      53434352 
 5184      00
 5185              	.LASF175:
 5186 06f4 5744545F 		.ascii	"WDT_IRQn\000"
 5186      4952516E 
 5186      00
 5187              	.LASF258:
ARM GAS  /tmp/cc8RfTnf.s 			page 130


 5188 06fd 5254435F 		.ascii	"RTC_VER\000"
 5188      56455200 
 5189              	.LASF165:
 5190 0705 42757346 		.ascii	"BusFault_IRQn\000"
 5190      61756C74 
 5190      5F495251 
 5190      6E00
 5191              	.LASF337:
 5192 0713 6D656D73 		.ascii	"memset\000"
 5192      657400
 5193              	.LASF274:
 5194 071a 6C646976 		.ascii	"ldiv\000"
 5194      00
 5195              	.LASF103:
 5196 071f 5F5F636C 		.ascii	"__cleanup\000"
 5196      65616E75 
 5196      7000
 5197              	.LASF221:
 5198 0729 4145535F 		.ascii	"AES_IRQn\000"
 5198      4952516E 
 5198      00
 5199              	.LASF25:
 5200 0732 5F6D6273 		.ascii	"_mbstate_t\000"
 5200      74617465 
 5200      5F7400
 5201              	.LASF266:
 5202 073d 5F5F636F 		.ascii	"__compar_fn_t\000"
 5202      6D706172 
 5202      5F666E5F 
 5202      7400
 5203              	.LASF169:
 5204 074b 50656E64 		.ascii	"PendSV_IRQn\000"
 5204      53565F49 
 5204      52516E00 
 5205              	.LASF209:
 5206 0757 54574948 		.ascii	"TWIHS2_IRQn\000"
 5206      53325F49 
 5206      52516E00 
 5207              	.LASF42:
 5208 0763 5F5F746D 		.ascii	"__tm_isdst\000"
 5208      5F697364 
 5208      737400
 5209              	.LASF322:
 5210 076e 7274635F 		.ascii	"rtc_get_date\000"
 5210      6765745F 
 5210      64617465 
 5210      00
 5211              	.LASF180:
 5212 077b 50494F41 		.ascii	"PIOA_IRQn\000"
 5212      5F495251 
 5212      6E00
 5213              	.LASF206:
 5214 0785 4D43414E 		.ascii	"MCAN1_IRQn\000"
 5214      315F4952 
 5214      516E00
 5215              	.LASF203:
 5216 0790 4143435F 		.ascii	"ACC_IRQn\000"
ARM GAS  /tmp/cc8RfTnf.s 			page 131


 5216      4952516E 
 5216      00
 5217              	.LASF216:
 5218 0799 5443375F 		.ascii	"TC7_IRQn\000"
 5218      4952516E 
 5218      00
 5219              	.LASF90:
 5220 07a2 5F685F65 		.ascii	"_h_errno\000"
 5220      72726E6F 
 5220      00
 5221              	.LASF236:
 5222 07ab 49435052 		.ascii	"ICPR\000"
 5222      00
 5223              	.LASF191:
 5224 07b0 53504930 		.ascii	"SPI0_IRQn\000"
 5224      5F495251 
 5224      6E00
 5225              	.LASF195:
 5226 07ba 5443325F 		.ascii	"TC2_IRQn\000"
 5226      4952516E 
 5226      00
 5227              	.LASF204:
 5228 07c3 55534248 		.ascii	"USBHS_IRQn\000"
 5228      535F4952 
 5228      516E00
 5229              	.LASF307:
 5230 07ce 756C5F64 		.ascii	"ul_day\000"
 5230      617900
 5231              	.LASF185:
 5232 07d5 55534152 		.ascii	"USART2_IRQn\000"
 5232      54325F49 
 5232      52516E00 
 5233              	.LASF38:
 5234 07e1 5F5F746D 		.ascii	"__tm_mon\000"
 5234      5F6D6F6E 
 5234      00
 5235              	.LASF251:
 5236 07ea 5254435F 		.ascii	"RTC_TIMALR\000"
 5236      54494D41 
 5236      4C5200
 5237              	.LASF15:
 5238 07f5 6C6F6E67 		.ascii	"long double\000"
 5238      20646F75 
 5238      626C6500 
 5239              	.LASF244:
 5240 0801 53797374 		.ascii	"SystemCoreClock\000"
 5240      656D436F 
 5240      7265436C 
 5240      6F636B00 
 5241              	.LASF316:
 5242 0811 4952516E 		.ascii	"IRQn\000"
 5242      00
 5243              	.LASF60:
 5244 0816 5F777269 		.ascii	"_write\000"
 5244      746500
 5245              	.LASF241:
 5246 081d 53544952 		.ascii	"STIR\000"
ARM GAS  /tmp/cc8RfTnf.s 			page 132


 5246      00
 5247              	.LASF77:
 5248 0822 5F72616E 		.ascii	"_rand_next\000"
 5248      645F6E65 
 5248      787400
 5249              	.LASF247:
 5250 082d 5254435F 		.ascii	"RTC_CR\000"
 5250      435200
 5251              	.LASF181:
 5252 0834 50494F42 		.ascii	"PIOB_IRQn\000"
 5252      5F495251 
 5252      6E00
 5253              	.LASF48:
 5254 083e 5F617465 		.ascii	"_atexit\000"
 5254      78697400 
 5255              	.LASF257:
 5256 0846 5254435F 		.ascii	"RTC_IMR\000"
 5256      494D5200 
 5257              	.LASF173:
 5258 084e 5254435F 		.ascii	"RTC_IRQn\000"
 5258      4952516E 
 5258      00
 5259              	.LASF231:
 5260 0857 52455345 		.ascii	"RESERVED0\000"
 5260      52564544 
 5260      3000
 5261              	.LASF235:
 5262 0861 52455345 		.ascii	"RESERVED2\000"
 5262      52564544 
 5262      3200
 5263              	.LASF237:
 5264 086b 52455345 		.ascii	"RESERVED3\000"
 5264      52564544 
 5264      3300
 5265              	.LASF239:
 5266 0875 52455345 		.ascii	"RESERVED4\000"
 5266      52564544 
 5266      3400
 5267              	.LASF240:
 5268 087f 52455345 		.ascii	"RESERVED5\000"
 5268      52564544 
 5268      3500
 5269              	.LASF4:
 5270 0889 73686F72 		.ascii	"short int\000"
 5270      7420696E 
 5270      7400
 5271              	.LASF188:
 5272 0893 48534D43 		.ascii	"HSMCI_IRQn\000"
 5272      495F4952 
 5272      516E00
 5273              	.LASF276:
 5274 089e 6D627374 		.ascii	"mbstowcs\000"
 5274      6F776373 
 5274      00
 5275              	.LASF184:
 5276 08a7 55534152 		.ascii	"USART1_IRQn\000"
 5276      54315F49 
ARM GAS  /tmp/cc8RfTnf.s 			page 133


 5276      52516E00 
 5277              	.LASF243:
 5278 08b3 49544D5F 		.ascii	"ITM_RxBuffer\000"
 5278      52784275 
 5278      66666572 
 5278      00
 5279              	.LASF310:
 5280 08c0 64617465 		.ascii	"datetime\000"
 5280      74696D65 
 5280      00
 5281              	.LASF162:
 5282 08c9 4E6F6E4D 		.ascii	"NonMaskableInt_IRQn\000"
 5282      61736B61 
 5282      626C6549 
 5282      6E745F49 
 5282      52516E00 
 5283              	.LASF253:
 5284 08dd 5254435F 		.ascii	"RTC_SR\000"
 5284      535200
 5285              	.LASF114:
 5286 08e4 5F5F7366 		.ascii	"__sf\000"
 5286      00
 5287              	.LASF268:
 5288 08e9 61746578 		.ascii	"atexit\000"
 5288      697400
 5289              	.LASF178:
 5290 08f0 55415254 		.ascii	"UART0_IRQn\000"
 5290      305F4952 
 5290      516E00
 5291              	.LASF101:
 5292 08fb 5F637572 		.ascii	"_current_locale\000"
 5292      72656E74 
 5292      5F6C6F63 
 5292      616C6500 
 5293              	.LASF149:
 5294 090b 676D7469 		.ascii	"gmtime\000"
 5294      6D6500
 5295              	.LASF67:
 5296 0912 5F646174 		.ascii	"_data\000"
 5296      6100
 5297              	.LASF21:
 5298 0918 5F5F7763 		.ascii	"__wchb\000"
 5298      686200
 5299              	.LASF141:
 5300 091f 5F646179 		.ascii	"_daylight\000"
 5300      6C696768 
 5300      7400
 5301              	.LASF39:
 5302 0929 5F5F746D 		.ascii	"__tm_year\000"
 5302      5F796561 
 5302      7200
 5303              	.LASF56:
 5304 0933 5F66696C 		.ascii	"_file\000"
 5304      6500
 5305              	.LASF186:
 5306 0939 50494F44 		.ascii	"PIOD_IRQn\000"
 5306      5F495251 
ARM GAS  /tmp/cc8RfTnf.s 			page 134


 5306      6E00
 5307              	.LASF263:
 5308 0943 6C646976 		.ascii	"ldiv_t\000"
 5308      5F7400
 5309              	.LASF75:
 5310 094a 5F6C6F63 		.ascii	"_localtime_buf\000"
 5310      616C7469 
 5310      6D655F62 
 5310      756600
 5311              	.LASF93:
 5312 0959 5F756E75 		.ascii	"_unused\000"
 5312      73656400 
 5313              	.LASF6:
 5314 0961 5F5F7569 		.ascii	"__uint8_t\000"
 5314      6E74385F 
 5314      7400
 5315              	.LASF218:
 5316 096b 5443395F 		.ascii	"TC9_IRQn\000"
 5316      4952516E 
 5316      00
 5317              	.LASF242:
 5318 0974 4E564943 		.ascii	"NVIC_Type\000"
 5318      5F547970 
 5318      6500
 5319              	.LASF252:
 5320 097e 5254435F 		.ascii	"RTC_CALALR\000"
 5320      43414C41 
 5320      4C5200
 5321              	.LASF108:
 5322 0989 5F637674 		.ascii	"_cvtlen\000"
 5322      6C656E00 
 5323              	.LASF29:
 5324 0991 5F6D6178 		.ascii	"_maxwds\000"
 5324      77647300 
 5325              	.LASF82:
 5326 0999 5F6C3634 		.ascii	"_l64a_buf\000"
 5326      615F6275 
 5326      6600
 5327              	.LASF100:
 5328 09a3 5F637572 		.ascii	"_current_category\000"
 5328      72656E74 
 5328      5F636174 
 5328      65676F72 
 5328      7900
 5329              	.LASF325:
 5330 09b5 474E5520 		.ascii	"GNU C++14 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -m"
 5330      432B2B31 
 5330      3420362E 
 5330      332E3120 
 5330      32303137 
 5331 09e8 6670753D 		.ascii	"fpu=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu++14 -"
 5331      66707635 
 5331      2D643136 
 5331      202D6D66 
 5331      6C6F6174 
 5332 0a1b 6666756E 		.ascii	"ffunction-sections -fdata-sections -fno-threadsafe-"
 5332      6374696F 
ARM GAS  /tmp/cc8RfTnf.s 			page 135


 5332      6E2D7365 
 5332      6374696F 
 5332      6E73202D 
 5333 0a4e 73746174 		.ascii	"statics -fno-rtti -fno-exceptions -fsingle-precisio"
 5333      69637320 
 5333      2D666E6F 
 5333      2D727474 
 5333      69202D66 
 5334 0a81 6E2D636F 		.ascii	"n-constant\000"
 5334      6E737461 
 5334      6E7400
 5335              	.LASF197:
 5336 0a8c 5443345F 		.ascii	"TC4_IRQn\000"
 5336      4952516E 
 5336      00
 5337              	.LASF65:
 5338 0a95 5F626C6B 		.ascii	"_blksize\000"
 5338      73697A65 
 5338      00
 5339              	.LASF33:
 5340 0a9e 5F5F746D 		.ascii	"__tm\000"
 5340      00
 5341              	.LASF170:
 5342 0aa3 53797354 		.ascii	"SysTick_IRQn\000"
 5342      69636B5F 
 5342      4952516E 
 5342      00
 5343              	.LASF68:
 5344 0ab0 5F6C6F63 		.ascii	"_lock\000"
 5344      6B00
 5345              	.LASF219:
 5346 0ab6 54433130 		.ascii	"TC10_IRQn\000"
 5346      5F495251 
 5346      6E00
 5347              	.LASF24:
 5348 0ac0 73697A65 		.ascii	"sizetype\000"
 5348      74797065 
 5348      00
 5349              	.LASF285:
 5350 0ac9 73747274 		.ascii	"strtoul\000"
 5350      6F756C00 
 5351              	.LASF10:
 5352 0ad1 6C6F6E67 		.ascii	"long unsigned int\000"
 5352      20756E73 
 5352      69676E65 
 5352      6420696E 
 5352      7400
 5353              	.LASF297:
 5354 0ae3 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 5354      6972715F 
 5354      63726974 
 5354      6963616C 
 5354      5F736563 
 5355              	.LASF118:
 5356 0b04 5F6E696F 		.ascii	"_niobs\000"
 5356      627300
 5357              	.LASF19:
ARM GAS  /tmp/cc8RfTnf.s 			page 136


 5358 0b0b 77696E74 		.ascii	"wint_t\000"
 5358      5F7400
 5359              	.LASF190:
 5360 0b12 54574948 		.ascii	"TWIHS1_IRQn\000"
 5360      53315F49 
 5360      52516E00 
 5361              	.LASF127:
 5362 0b1e 696E7433 		.ascii	"int32_t\000"
 5362      325F7400 
 5363              	.LASF319:
 5364 0b26 7274635F 		.ascii	"rtc_set_time\000"
 5364      7365745F 
 5364      74696D65 
 5364      00
 5365              	.LASF314:
 5366 0b33 79656172 		.ascii	"year\000"
 5366      00
 5367              	.LASF45:
 5368 0b38 5F64736F 		.ascii	"_dso_handle\000"
 5368      5F68616E 
 5368      646C6500 
 5369              	.LASF132:
 5370 0b44 746D5F6D 		.ascii	"tm_min\000"
 5370      696E00
 5371              	.LASF160:
 5372 0b4b 53657454 		.ascii	"SetTime\000"
 5372      696D6500 
 5373              	.LASF168:
 5374 0b53 44656275 		.ascii	"DebugMonitor_IRQn\000"
 5374      674D6F6E 
 5374      69746F72 
 5374      5F495251 
 5374      6E00
 5375              	.LASF166:
 5376 0b65 55736167 		.ascii	"UsageFault_IRQn\000"
 5376      65466175 
 5376      6C745F49 
 5376      52516E00 
 5377              	.LASF109:
 5378 0b75 5F637674 		.ascii	"_cvtbuf\000"
 5378      62756600 
 5379              	.LASF3:
 5380 0b7d 756E7369 		.ascii	"unsigned char\000"
 5380      676E6564 
 5380      20636861 
 5380      7200
 5381              	.LASF9:
 5382 0b8b 5F5F7569 		.ascii	"__uint32_t\000"
 5382      6E743332 
 5382      5F7400
 5383              	.LASF267:
 5384 0b96 7375626F 		.ascii	"suboptarg\000"
 5384      70746172 
 5384      6700
 5385              	.LASF167:
 5386 0ba0 53564361 		.ascii	"SVCall_IRQn\000"
 5386      6C6C5F49 
ARM GAS  /tmp/cc8RfTnf.s 			page 137


 5386      52516E00 
 5387              	.LASF16:
 5388 0bac 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 5388      4B5F5245 
 5388      43555253 
 5388      4956455F 
 5388      5400
 5389              	.LASF330:
 5390 0bbe 6465636C 		.ascii	"decltype(nullptr)\000"
 5390      74797065 
 5390      286E756C 
 5390      6C707472 
 5390      2900
 5391              	.LASF293:
 5392 0bd0 73747274 		.ascii	"strtof\000"
 5392      6F6600
 5393              	.LASF320:
 5394 0bd7 7274635F 		.ascii	"rtc_set_date\000"
 5394      7365745F 
 5394      64617465 
 5394      00
 5395              	.LASF133:
 5396 0be4 746D5F68 		.ascii	"tm_hour\000"
 5396      6F757200 
 5397              	.LASF287:
 5398 0bec 77637374 		.ascii	"wcstombs\000"
 5398      6F6D6273 
 5398      00
 5399              	.LASF156:
 5400 0bf5 53657444 		.ascii	"SetDateTime\000"
 5400      61746554 
 5400      696D6500 
 5401              	.LASF227:
 5402 0c01 52535744 		.ascii	"RSWDT_IRQn\000"
 5402      545F4952 
 5402      516E00
 5403              	.LASF232:
 5404 0c0c 49434552 		.ascii	"ICER\000"
 5404      00
 5405              	.LASF51:
 5406 0c11 5F5F7362 		.ascii	"__sbuf\000"
 5406      756600
 5407              	.LASF208:
 5408 0c18 41464543 		.ascii	"AFEC1_IRQn\000"
 5408      315F4952 
 5408      516E00
 5409              	.LASF261:
 5410 0c23 6469765F 		.ascii	"div_t\000"
 5410      7400
 5411              	.LASF238:
 5412 0c29 49414252 		.ascii	"IABR\000"
 5412      00
 5413              	.LASF212:
 5414 0c2e 55415254 		.ascii	"UART2_IRQn\000"
 5414      325F4952 
 5414      516E00
 5415              	.LASF262:
ARM GAS  /tmp/cc8RfTnf.s 			page 138


 5416 0c39 366C6469 		.ascii	"6ldiv_t\000"
 5416      765F7400 
 5417              	.LASF117:
 5418 0c41 5F676C75 		.ascii	"_glue\000"
 5418      6500
 5419              	.LASF290:
 5420 0c47 61746F6C 		.ascii	"atoll\000"
 5420      6C00
 5421              	.LASF327:
 5422 0c4d 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 5422      652F746F 
 5422      72626A6F 
 5422      726E2F65 
 5422      636C6970 
 5423              	.LASF137:
 5424 0c7c 746D5F77 		.ascii	"tm_wday\000"
 5424      64617900 
 5425              	.LASF113:
 5426 0c84 5F5F7367 		.ascii	"__sglue\000"
 5426      6C756500 
 5427              	.LASF84:
 5428 0c8c 5F676574 		.ascii	"_getdate_err\000"
 5428      64617465 
 5428      5F657272 
 5428      00
 5429              	.LASF73:
 5430 0c99 5F737472 		.ascii	"_strtok_last\000"
 5430      746F6B5F 
 5430      6C617374 
 5430      00
 5431              	.LASF80:
 5432 0ca6 5F6D6274 		.ascii	"_mbtowc_state\000"
 5432      6F77635F 
 5432      73746174 
 5432      6500
 5433              	.LASF264:
 5434 0cb4 376C6C64 		.ascii	"7lldiv_t\000"
 5434      69765F74 
 5434      00
 5435              	.LASF44:
 5436 0cbd 5F666E61 		.ascii	"_fnargs\000"
 5436      72677300 
 5437              	.LASF323:
 5438 0cc5 7274635F 		.ascii	"rtc_get_valid_entry\000"
 5438      6765745F 
 5438      76616C69 
 5438      645F656E 
 5438      74727900 
 5439              	.LASF205:
 5440 0cd9 4D43414E 		.ascii	"MCAN0_IRQn\000"
 5440      305F4952 
 5440      516E00
 5441              	.LASF71:
 5442 0ce4 5F726565 		.ascii	"_reent\000"
 5442      6E7400
 5443              	.LASF5:
 5444 0ceb 73686F72 		.ascii	"short unsigned int\000"
ARM GAS  /tmp/cc8RfTnf.s 			page 139


 5444      7420756E 
 5444      7369676E 
 5444      65642069 
 5444      6E7400
 5445              	.LASF131:
 5446 0cfe 746D5F73 		.ascii	"tm_sec\000"
 5446      656300
 5447              	.LASF265:
 5448 0d05 6C6C6469 		.ascii	"lldiv_t\000"
 5448      765F7400 
 5449              	.LASF174:
 5450 0d0d 5254545F 		.ascii	"RTT_IRQn\000"
 5450      4952516E 
 5450      00
 5451              	.LASF270:
 5452 0d16 61746F69 		.ascii	"atoi\000"
 5452      00
 5453              	.LASF163:
 5454 0d1b 48617264 		.ascii	"HardFault_IRQn\000"
 5454      4661756C 
 5454      745F4952 
 5454      516E00
 5455              	.LASF217:
 5456 0d2a 5443385F 		.ascii	"TC8_IRQn\000"
 5456      4952516E 
 5456      00
 5457              	.LASF139:
 5458 0d33 746D5F69 		.ascii	"tm_isdst\000"
 5458      73647374 
 5458      00
 5459              	.LASF234:
 5460 0d3c 49535052 		.ascii	"ISPR\000"
 5460      00
 5461              	.LASF46:
 5462 0d41 5F666E74 		.ascii	"_fntypes\000"
 5462      79706573 
 5462      00
 5463              	.LASF159:
 5464 0d4a 5F5A4E36 		.ascii	"_ZN6RTCDue7SetDateEl\000"
 5464      52544344 
 5464      75653753 
 5464      65744461 
 5464      7465456C 
 5465              	.LASF215:
 5466 0d5f 5443365F 		.ascii	"TC6_IRQn\000"
 5466      4952516E 
 5466      00
 5467              	.LASF53:
 5468 0d68 5F73697A 		.ascii	"_size\000"
 5468      6500
 5469              	.LASF144:
 5470 0d6e 646F7562 		.ascii	"double\000"
 5470      6C6500
 5471              	.LASF17:
 5472 0d75 5F6F6666 		.ascii	"_off_t\000"
 5472      5F7400
 5473              	.LASF64:
ARM GAS  /tmp/cc8RfTnf.s 			page 140


 5474 0d7c 5F6E6275 		.ascii	"_nbuf\000"
 5474      6600
 5475              	.LASF72:
 5476 0d82 5F756E75 		.ascii	"_unused_rand\000"
 5476      7365645F 
 5476      72616E64 
 5476      00
 5477              	.LASF194:
 5478 0d8f 5443315F 		.ascii	"TC1_IRQn\000"
 5478      4952516E 
 5478      00
 5479              	.LASF176:
 5480 0d98 504D435F 		.ascii	"PMC_IRQn\000"
 5480      4952516E 
 5480      00
 5481              	.LASF70:
 5482 0da1 5F666C61 		.ascii	"_flags2\000"
 5482      67733200 
 5483              	.LASF47:
 5484 0da9 5F69735F 		.ascii	"_is_cxa\000"
 5484      63786100 
 5485              	.LASF202:
 5486 0db1 49434D5F 		.ascii	"ICM_IRQn\000"
 5486      4952516E 
 5486      00
 5487              	.LASF35:
 5488 0dba 5F5F746D 		.ascii	"__tm_min\000"
 5488      5F6D696E 
 5488      00
 5489              	.LASF121:
 5490 0dc3 5F736565 		.ascii	"_seed\000"
 5490      6400
 5491              	.LASF324:
 5492 0dc9 7274635F 		.ascii	"rtc_set_hour_mode\000"
 5492      7365745F 
 5492      686F7572 
 5492      5F6D6F64 
 5492      6500
 5493              	.LASF61:
 5494 0ddb 5F736565 		.ascii	"_seek\000"
 5494      6B00
 5495              	.LASF97:
 5496 0de1 5F737464 		.ascii	"_stderr\000"
 5496      65727200 
 5497              	.LASF92:
 5498 0de9 5F6E6D61 		.ascii	"_nmalloc\000"
 5498      6C6C6F63 
 5498      00
 5499              	.LASF119:
 5500 0df2 5F696F62 		.ascii	"_iobs\000"
 5500      7300
 5501              	.LASF281:
 5502 0df8 71736F72 		.ascii	"qsort\000"
 5502      7400
 5503              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
