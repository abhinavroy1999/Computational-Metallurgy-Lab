#------------------------------------------------------------------------------
# Author: Abhinav Roy
# Date: 10 Aug, 2020
# Script to plot a Sphere in 3D of any arbitrary radius
# For any doubt regarding any command, type "help COMMAND" in the octave prompt
#------------------------------------------------------------------------------
# Defining the parameters 

	R = 2;
	
# Calling the sphere function
	
	[x, y, z] = sphere;	# Returns the value of the coordinates of a sphere
					# unit dimension.
	X = R*x;
	Y = R*y;
	Z = R*z;
	
#plotting the three vectors

	colormap winter;
	surf (X, Y, Z);
	
#------------------------------------------------------------------------------
# Customize axis parameters
	
	set(gca, "linewidth", 4);
	axis("square");
	title("3D plot of a sphere");
	
#print the figure in jpeg format

	print -dpng sphere3D.png
#------------------------------------------------------------------------------

