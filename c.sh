#!/bin/bash
echo "--- Running C++ file ---"
clear
gcc Matrix.c -o output.out 
gcc -S Matrix.c -o x86/matrix-c.s
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi
./output.out

