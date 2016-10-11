// =============================================================================
// -----------------------------------------------------------------------------
// SMPS 32x corrector
// -----------------------------------------------------------------------------

#include <stdio.h>

// =============================================================================
// -----------------------------------------------------------------------------
// Subroutines
// -----------------------------------------------------------------------------

bool IncreasePointer (FILE *a0, int COUNT)

{
	int d0 = fgetc (a0);
	int d1 = fgetc (a0);
	d0 <<= 0x08;
	d0 += d1;
	d0 += COUNT;
	d1 = d0;
	d0 >>= 0x08;
	fseek (a0, -0x02, SEEK_CUR);
	fputc (d0, a0);
	fputc (d1, a0);
}

// =============================================================================
// -----------------------------------------------------------------------------
// Main Code
// -----------------------------------------------------------------------------

int main (int Unknown, char **c0)

{
	int EX, FM, d0, d1, d2; // integers to use
	FILE *a0; // file pointers to use
	if ((a0 = fopen (c0[0x01], "a")) == NULL) // if the source file could not be opened, branch
	{
		printf (" # Error: Could not open:\n          %s\n\n", c0[0x01]);
		printf ("Press enter key to exit...\n");
		EX = getc (stdin); // wait for key press
		return 0; //finish
	}
	d0 = 0x00;
	d1 = 0x04;
	while (d1 != 0x00)
	{
		fputc (d0, a0); // make way for the new PWM channels and 1 FM channel
		d1 -= 0x01;
	}
	d1 = ftell (a0);
	fputc (0xF2, a0); // set F2 flag for FM 6
	fclose (a0);
	a0 = fopen (c0[0x01], "r+b");

	fseek (a0, 0x00, SEEK_END);

	d2 = d1;
	d2 -= 0x04;
	while (d2 != 0x1D)
	{
		fseek (a0, -0x06, SEEK_CUR);
		d0 = fgetc (a0);
		fseek (a0, 0x03, SEEK_CUR);
		fputc (d0, a0);
		d2 -= 0x01;
	}
	fseek (a0, -0x04, SEEK_CUR);
	d1 -= 0x04;
	d0 = d1;
	d0 >>= 0x08;
	fputc (d0, a0);
	fputc (d1, a0);
	fputc (0x00, a0);
	fputc (0x00, a0);
	fseek (a0, 0x00, SEEK_SET);
	IncreasePointer (a0, 0x04);
	fputc (0x07, a0);
	fseek (a0, 0x03, SEEK_CUR);
	d1 = 0x07;
	while (d1 != 0x00)
	{
		IncreasePointer (a0, 0x04);
		fseek (a0, 0x02, SEEK_CUR);
		d1 -= 0x01;
	}
	d1 = 0x03;
	while (d1 != 0x00)
	{
		IncreasePointer (a0, 0x04);
		fseek (a0, 0x04, SEEK_CUR);
		d1 -= 0x01;
	}
	fclose (a0);
	printf ("Complete\n\n");
	printf ("Press enter key to exit...\n");
	EX = getc (stdin); // wait for key press
	return 0; //finish
}

// =============================================================================
