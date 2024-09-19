#!/bin/bash

file="$1"
echo "Compiling ${file}"
name="${file::-4}"
yasm -g dwarf2 -f elf64 "$file" -l "$name.lst"
echo "Output: ${name}.o and ${name}.lst"
echo "Compilation successful"
echo "Creating Linked File $name"
ld -g -o "$name" "$name.o"
echo "Linked file ${name} has been created"
gdb_option="$2"
if [ "$gdb_option" == "y" ]; then
	echo "Starting DDD"
	ddd ./"$name"
else 
	echo "DDD debugging not running, Have a Good Day!"
fi
