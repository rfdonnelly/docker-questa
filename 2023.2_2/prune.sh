#!/bin/sh

set -e

print_subpath_sizes() {
    echo "\nINFO: Top 10 largest paths remaining\n"
    du -s * | sort -n | tail -n10 | tac | awk '{print $2}' | xargs du -sh | sed 's/^/  /'
}

get_path_size() {
    path=$1
    du -sh $path | awk '{print $1}'
}

QUESTA_ROOT_ORIG=$1
QUESTA_ROOT=$2
rm -rf $QUESTA_ROOT
cp -r $QUESTA_ROOT_ORIG $QUESTA_ROOT

cd $QUESTA_ROOT/questasim

# Remove or replace references to libraries we'll be removing
echo "INFO: Fixing up modelsim.ini\n"
chmod +w modelsim.ini
echo "  Removing AVM"
bin/vmap -modelsimini modelsim.ini -del mtiAvm > /dev/null
echo "  Removing OVM"
bin/vmap -modelsimini modelsim.ini -del mtiOvm > /dev/null
echo "  Upgrading UVM from 1.1d to 1.2"
bin/vmap -modelsimini modelsim.ini mtiUvm '$MODEL_TECH/../uvm-1.2' > /dev/null
chmod -w modelsim.ini

# Remove all but one GCC.  Prefer the latest.  Keep gcc-7.4.0-linux_x86_64.
echo "\nINFO: Removing unnecessary dependencies\n"
for path in \
    linux_x86_64/VisualizerRls \
    gcc-7.4.0-linux_x86_64 \
    udbplayer \
    examples \
    uvm-1.1c \
    uvm-1.1d \
    ovm-2.1.2 \
    ovm-2.1.1 \
    avm \
    drill_src
do
    path_size=$(get_path_size $path)
    echo "  Removing $path ($path_size)"
    \rm -rf $path
done

print_subpath_sizes .
pre_prune_size=$(get_path_size $QUESTA_ROOT_ORIG)
post_prune_size=$(get_path_size $QUESTA_ROOT)
echo "\nINFO: Size of Questa reduced from $pre_prune_size to $post_prune_size"
