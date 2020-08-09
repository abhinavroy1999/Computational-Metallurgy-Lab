#!/usr/bin/bash
# bash directory path to be determined from 'which' command 

echo "The circle plotting program has begun"
echo "The compilation of the C code will commence, then the gnuplot prompt will be evoked"

# Compiling the C code
gcc -o circle2D.o circle2D.c -lm
./circle2D.o

# Executing the gnuplot command (assuming that Gnuplot is preinstalled)
gnuplot circle2D.plt


