// =============================================================================
// -----------------------------------------------------------------------------
// Object Offset Generator
// -----------------------------------------------------------------------------

#include <stdio.h>

int main (int Unknown, char **c0)

{
	FILE *a0, *a1; // file pointers to use
	if ((a0 = fopen (c0[0x01], "rb")) == NULL) // if the source file could not be opened, branch
	{
		printf (" # Error: Could not open:\n          %s\n\n", c0[0x01]);
		return 0; //finish
	}
	if ((a1 = fopen (c0[0x02], "w")) == NULL) // if the destination file could not be opened, branch
	{
		printf (" # Error: Could not open:\n          %s\n\n", c0[0x02]);
		return 0; //finish
	}
	unsigned int d0; // unsigned integers to use
	fseek (a0, 0x00, SEEK_END); // goto end of file
	d0 = ftell (a0); // get offset (size) if file
	fprintf (a1, "; ===========================================================================\n");
	fprintf (a1, "; ---------------------------------------------------------------------------\n");
	fprintf (a1, "; Slave Offset - Automatically Generated File, Do Not Edit\n");
	fprintf (a1, "; ---------------------------------------------------------------------------\n");
	fprintf (a1, "; The offset for Slave is set for after the end offset of Master, thus the\n");
	fprintf (a1, "; offset for Slave needs to be automatically generated based on the size of\n");
	fprintf (a1, "; Master (if necessary to change, check 'exe/OBJGEN.cpp').\n");
	fprintf (a1, "; ---------------------------------------------------------------------------\n");
	fprintf (a1, "\n\t\tobj\t$%08x\n\n", d0+0x06000000);
	fprintf (a1, "; ===========================================================================");
	fclose (a0); // close source file
	fclose (a1); // close destination file
	return 0; //finish
}

// =============================================================================
