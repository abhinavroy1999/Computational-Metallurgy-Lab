# Author: Abhinav Roy
# Date: 9 Aug, 2020
# Code to plot a circle using polar coordinated
# For any doubt regarding any command, type help COMMAND in the octave prompt
#----------------------------------------------------------
# Define the parametric form of the circle equation
	theta = linspace (0, 2*pi, 1000);
	x = 2.*cos(theta);
	y = 2.*sin(theta);
#plot function for the two vectors
	plot(x, y, "*r");	
#----------------------------------------------------------
# Customize axis parameters
	set(gca, "linewidth", 4);
	axis("square");
	title("2D plot of a circle");
#print the figure in jpeg format
	print -dpng circle2D.png
#----------------------------------------------------------
