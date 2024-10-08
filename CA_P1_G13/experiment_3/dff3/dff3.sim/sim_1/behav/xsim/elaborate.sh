#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Feb 14 23:06:16 IST 2024
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 8fface7e4cb44b7c85df61ab513ed491 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot dff_tb_behav xil_defaultlib.dff_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto 8fface7e4cb44b7c85df61ab513ed491 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot dff_tb_behav xil_defaultlib.dff_tb xil_defaultlib.glbl -log elaborate.log

