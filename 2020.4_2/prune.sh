#!/bin/sh

function print_subpath_sizes() {
    echo "Top 10 largest paths remaining:"
    du -s * | sort -n | tail -n10 | tac | awk '{print $2}' | xargs du -sh
}

function get_path_size() {
    path=$1
    du -sh $path | awk '{print $1}'
}

QUESTA_ROOT=$1

cd $QUESTA_ROOT/questasim

pre_prune_size=$(get_path_size $QUESTA_ROOT)

# Remove or replace references to libraries we'll be removing
bin/vmap -del mtiAvm >/dev/null
bin/vmap -del mtiOvm >/dev/null
bin/vmap mtiUvm '$MODEL_TECH/../uvm-1.2'

# Remove all but one GCC.  Prefer the latest.  Keep gcc-7.4.0-linux_x86_64.
echo "Removing unnecessary dependencies:"
for path in \
    gcc-5.3.0-linux_x86_64 \
    gcc-4.7.4-linux_x86_64 \
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
    echo "Removing $path ($path_size)"
    rm -r $path
done

print_subpath_sizes .
post_prune_size=$(get_path_size $QUESTA_ROOT)
echo "Size of Questa reduced from $pre_prune_size to $post_prune_size"
