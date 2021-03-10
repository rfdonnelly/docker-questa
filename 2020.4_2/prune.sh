#!/bin/sh

QUESTA_ROOT=$1

cd $QUESTA_ROOT/questasim

rm -r gcc-5.3.0-linux_x86_64
rm -r gcc-7.4.0-linux_aarch64
rm -r udbplayer
rm -r examples
rm -r gcc-4.7.4-linux_x86_64
rm -r uvm-1.1c
rm -r uvm-1.1d
rm -r ovm-2.1.2
rm -r ovm-2.1.1
rm -r avm
rm -r drill_src

bin/vmap -del mtiAvm
bin/vmap -del mtiOvm
