#******************************************************************************
#
# Makefile - Rules for building the AES normal key example.
#
# Copyright (c) 2009-2011 Texas Instruments Incorporated.  All rights reserved.
# Software License Agreement
# 
# Texas Instruments (TI) is supplying this software for use solely and
# exclusively on TI's microcontroller products. The software is owned by
# TI and/or its suppliers, and is protected under applicable copyright
# laws. You may not combine this software with "viral" open-source
# software in order to form a larger program.
# 
# THIS SOFTWARE IS PROVIDED "AS IS" AND WITH ALL FAULTS.
# NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT
# NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. TI SHALL NOT, UNDER ANY
# CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
# DAMAGES, FOR ANY REASON WHATSOEVER.
# 
# This is part of revision 6852 of the EK-LM3S8962 Firmware Package.
#
#******************************************************************************

#
# Defines the part type that this project uses.
#
PART=LM3S8962

#
# The base directory for StellarisWare.
#
ROOT=../../..

#
# Include the common make definitions.
#
include ${ROOT}/makedefs

#
# Where to find source files that do not live in this directory.
#
VPATH=../../../third_party/aes
VPATH+=../drivers

#
# Where to find header files that do not live in the source directory.
#
IPATH=.
IPATH+=..
IPATH+=../../..

#
# The default rule, which causes the AES normal key example to be built.
#
all: ${COMPILER}
all: ${COMPILER}/aes_set_key.axf

#
# The rule to clean out all the build products.
#
clean:
	@rm -rf ${COMPILER} ${wildcard *~}

#
# The rule to create the target directory.
#
${COMPILER}:
	@mkdir ${COMPILER}

#
# Rules for building the AES normal key example.
#
${COMPILER}/aes_set_key.axf: ${COMPILER}/aes.o
${COMPILER}/aes_set_key.axf: ${COMPILER}/aes_set_key.o
${COMPILER}/aes_set_key.axf: ${COMPILER}/rit128x96x4.o
${COMPILER}/aes_set_key.axf: ${COMPILER}/startup_${COMPILER}.o
${COMPILER}/aes_set_key.axf: ${ROOT}/driverlib/${COMPILER}/libdriver.a
${COMPILER}/aes_set_key.axf: aes_set_key.ld
SCATTERgcc_aes_set_key=aes_set_key.ld
ENTRY_aes_set_key=ResetISR

#
# Include the automatically generated dependency files.
#
ifneq (${MAKECMDGOALS},clean)
-include ${wildcard ${COMPILER}/*.d} __dummy__
endif
