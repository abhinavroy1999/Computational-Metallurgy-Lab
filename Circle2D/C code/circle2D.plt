#--------------------------------------------------------------------------------------------------
# Author: Abhinav Roy
# Date: 09 Aug, 2020
# Code to plot the output data file from the circle2D.c code
#--------------------------------------------------------------------------------------------------
# Setting the appropriate output terminal

	set terminal pngcairo background "#ffffff" fontscale 1.0 dashed size 1024,768
	
# Setting the axis properties of the figure
	
	set size square
	set grid
	set border linewidth 4.0
	set title 'Circle 2D plot'
	
# Setting the range of the axis and other suitable properties 
# (depends on the radius of the circle R in circle2D.c code)

	set xrange [-2.1:2.1]
	set yrange [-2.1:2.1]
	set xtics -2,0.5,2 nomirror
	set ytics -2,0.5,2 nomirror

# Setting the output file and subsequently plotting

	set output "Circle2D_plot.png"
	plot "./circle_data.txt" using 1:2 with lines linewidth 2.0 notitle
#--------------------------------------------------------------------------------------------------
