/*------------------------------------------------------------------------------
 Author: Abhinav Roy
 Date: 10 Aug, 2020
 Code to print the polar coordinates of a sphere of any arbitrary radius in an
 output file.
------------------------------------------------------------------------------*/
#include<stdio.h>
#include<math.h>
#include<stdlib.h>
void main()
{
	double theta;	//azimuthal angle (measured in the X-Y plane. Varies between 0 to 360 degrees)
	double phi;		//elevation angle (measured perpendicular to the X-Y plane, relative to the Z axis. Varies between 0 to 180 degrees)
	double x, y, z;	//The cartesian coordinates
	int R = 2;		//The radius of the sphere
	double step1 = M_PI/100;
	double step2 = (2*M_PI)/100;
	FILE *fw;
	/*---------------------------------------------------*/
	//Open the output data file.
	if ((fw = fopen("./sphere_data.txt", "w")) == NULL)
	{
		printf("\nUnable to open the output file.");
		exit(0);
	}
	else
	{
		fw = fopen("./sphere_data.txt", "w");
	}
	/*---------------------------------------------------*/
	//Loop to print the polar coordinates to the output file. 
	for (phi = 0; phi < M_PI; phi += step1)
	{
		for (theta = 0; theta < (2*M_PI); theta += step2)
		{
			x = R*cos(theta)*sin(phi);
			y = R*sin(theta)*sin(phi);
			z = R*cos(phi);
			fprintf(fw, "%le\t%le\t%le\n", x, y, z);
		}
	}
	(void) fclose(fw);
	/*---------------------------------------------------*/
}
/*------------------------------------------------------------------------------*/
