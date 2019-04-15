#!/bin/sh

QUESTA_ROOT=$1

# $ du /opt/mentor/questa/10.5c/questasim/*
# 1084    /opt/mentor/questa/10.5c/questasim/upf_lib
# 1624    /opt/mentor/questa/10.5c/questasim/drill_src
# 1984    /opt/mentor/questa/10.5c/questasim/sv_std
# 2784    /opt/mentor/questa/10.5c/questasim/synopsys
# 3628    /opt/mentor/questa/10.5c/questasim/infact
# 6496    /opt/mentor/questa/10.5c/questasim/vital2.2b
# 7192    /opt/mentor/questa/10.5c/questasim/osvvm
# 10036   /opt/mentor/questa/10.5c/questasim/mpich2
# 10288   /opt/mentor/questa/10.5c/questasim/uvmc-2.3.1
# 12260   /opt/mentor/questa/10.5c/questasim/vhdl_src
# 15300   /opt/mentor/questa/10.5c/questasim/floatfixlib
# 16008   /opt/mentor/questa/10.5c/questasim/include
# 22280   /opt/mentor/questa/10.5c/questasim/verilog_src
# 28764   /opt/mentor/questa/10.5c/questasim/avm
# 34760   /opt/mentor/questa/10.5c/questasim/tcl.fs
# 36884   /opt/mentor/questa/10.5c/questasim/ieeepure
# 41512   /opt/mentor/questa/10.5c/questasim/vital1995
# 41616   /opt/mentor/questa/10.5c/questasim/std_developerskit
# 43036   /opt/mentor/questa/10.5c/questasim/tcl
# 47800   /opt/mentor/questa/10.5c/questasim/vital2000
# 47808   /opt/mentor/questa/10.5c/questasim/ieee
# 56196   /opt/mentor/questa/10.5c/questasim/uvm_reg-1.1
# 78496   /opt/mentor/questa/10.5c/questasim/ovm-2.1.1
# 78728   /opt/mentor/questa/10.5c/questasim/ovm-2.1.2
# 82016   /opt/mentor/questa/10.5c/questasim/examples
# 148252  /opt/mentor/questa/10.5c/questasim/uvm-1.1d
# 149548  /opt/mentor/questa/10.5c/questasim/uvm-1.1c
# 168492  /opt/mentor/questa/10.5c/questasim/uvm-1.2
# 181100  /opt/mentor/questa/10.5c/questasim/RUVM_4.6
# 192204  /opt/mentor/questa/10.5c/questasim/vm_src
# 940300  /opt/mentor/questa/10.5c/questasim/linux_x86_64

# 1624
rm -rf $QUESTA_ROOT/questasim/drill_src
# 12260
rm -rf $QUESTA_ROOT/questasim/vhdl_src
# 28764
rm -rf $QUESTA_ROOT/questasim/avm
# 78496
rm -rf $QUESTA_ROOT/questasim/ovm-2.1.1
# 78728
rm -rf $QUESTA_ROOT/questasim/ovm-2.1.2
# 82016
rm -rf $QUESTA_ROOT/questasim/examples
# 148252
rm -rf $QUESTA_ROOT/questasim/uvm-1.1d
# 149548
rm -rf $QUESTA_ROOT/questasim/uvm-1.1c
# 181100
rm -rf $QUESTA_ROOT/questasim/RUVM_4.6
# total: 975272

$QUESTA_ROOT/questasim/bin/vmap -del mtiAvm mtiOvm
