#******************************************************************************
#
# Makefile - Rules for building the ek-lm3s8962 examples.
#
# Copyright (c) 2005-2011 Texas Instruments Incorporated.  All rights reserved.
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
# A list of the directories containing the examples.
#
DIRS=aes_expanded_key \
     aes_set_key      \
     bitband          \
     blinky           \
     boot_demo1       \
     boot_demo2       \
     boot_demo_eth    \
     boot_eth         \
     boot_serial      \
     can_device_fifo  \
     can_device_led   \
     can_device_qs    \
     can_fifo         \
     enet_io          \
     enet_lwip        \
     enet_ptpd        \
     enet_uip         \
     gpio_jtag        \
     graphics         \
     hello            \
     interrupts       \
     mpu_fault        \
     pwmgen           \
     qs_ek-lm3s8962   \
     sd_card          \
     timers           \
     uart_echo        \
     watchdog        

#
# The default rule, which causes the examples to be built.
#
all:
	@for i in ${DIRS};              \
	 do                             \
	     make -C $${i} || exit $$?; \
	 done

#
# The rule to clean out all the build products.
#
clean:
	@rm -rf ${wildcard *~} __dummy__
	@-for i in ${DIRS};        \
	  do                       \
	      make -C $${i} clean; \
	  done
