/*--------------------------------------------------------------------------------------------------
 Author: Abhinav Roy
 Date: 09 Aug, 2020
 
 Code to convert the cartesian coordinates to the polar coordinates and print the output for the 
 coordinates into an output txt file.
 --------------------------------------------------------------------------------------------------*/
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
void main()
{
	FILE *fw;
	double x, y;	//The cartesian coordinates
	double theta;	//Azimuthal angle for defining the polar coordinates
	int R = 2;		//The radius of the circle
	double step = (2*M_PI)/1000;
	/*-----------------------------------------------------------------------*/
	//Opening the data file
	if ((fw = fopen("./circle_data.txt", "w")) == NULL)
	{
		printf("\nUnable to open the output data file for printing the coordinates.\n");
		printf("Exiting!\n");
		exit(0);
	}
	else
	{
		fw = fopen("./circle_data.txt", "w");
	}
	/*-----------------------------------------------------------------------*/
	/*Loop for converting the the cartesian coordinates into polar coordinates
	and printing them into the output data file.*/
	for (theta = 0; theta < 2*M_PI; theta += step)
	{
		x = R*cos(theta);
		y = R*sin(theta);
		fprintf(fw, "%le\t%le\n", x, y);
	}
	(void) fclose (fw);
	/*-----------------------------------------------------------------------*/
}
