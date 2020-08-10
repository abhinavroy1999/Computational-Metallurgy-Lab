#!/usr/bin/bash
# bash directory path to be determined from 'which' command 

clear
echo "The sphere plotting program has begun"
echo "The compilation of the C code will commence, then the gnuplot prompt will be evoked"

# Compiling the C code
gcc -o sphere3D.o sphere3D.c -lm
./sphere3D.o

# Executing the gnuplot command (assuming that Gnuplot is preinstalled)
gnuplot sphere3D.plt 2> error_log.txt


