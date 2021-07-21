
#include "libasm.h"
#include <stdio.h>
#include <errno.h>
#include <string.h>

extern int errno ;

int main(int ac, char **av)
{
	char	c;
	int errnum;

	fprintf(stderr, "Value of errno: %d\n", errno);
	perror("Error printed by perror");
	fprintf(stderr, "Error opening file: %s\n", strerror( errnum ));
	while (read(0, NULL, 1) >= 0)
		printf("%c", c);
	printf("\n");
	fprintf(stderr, "Value of errno: %d\n", errno);
	perror("Error printed by perror");
	fprintf(stderr, "Error opening file: %s\n", strerror( errnum ));
	return (0);
}
