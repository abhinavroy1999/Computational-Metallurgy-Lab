#--------------------------------------------------------------------------------------------------
# Author: Abhinav Roy
# Date: 09 Aug, 2020
# Code to plot the output data file from the sphere3D.c code
#--------------------------------------------------------------------------------------------------
# Setting the appropriate output terminal

	set terminal pngcairo background "#ffffff" fontscale 1.0 dashed size 1024,768
	
# Setting all the axis to equal length

	set view equal xyz
	
# Setting the appropriate range along all the axis (based on the radius R in the C code)

	set xrange [-2:2]
	set yrange [-2:2]
	set zrange [-2:2]
	
# Setting the tics on all the axis appropriately

	set xtics -2,0.5,2 nomirror 
	set ytics -2,0.5,2 nomirror
	set ztics -2,0.5,2 nomirror
	
# Setting the relative position and point of intersectio of the X-Y plane 

	set xyplane at -2
	show xyplane
	set grid 
	
# Setting the appropriate borderwidth

	set border linewidth 2.0
	
# Setting the proper output file

	set output "Sphere3D_plot.png"
	
# Plotting the data from the output data file.

	splot "sphere_data.txt" using 1:2:3 notitle
#--------------------------------------------------------------------------------------------------
