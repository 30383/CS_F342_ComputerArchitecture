#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Feb 21 20:51:48 IST 2024
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 292a1ee1be274294892bb02a09a93518 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot ripplecarry_tb_behav xil_defaultlib.ripplecarry_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto 292a1ee1be274294892bb02a09a93518 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot ripplecarry_tb_behav xil_defaultlib.ripplecarry_tb xil_defaultlib.glbl -log elaborate.log

