#include "libasm.h"
#include <stdio.h>
#include <errno.h>
#include <string.h>

extern int errno ;

int main(int ac, char **av)
{
	char	c;
	int errnum;

	fprintf(stderr, "\nValue of errno: %d\n", errno);
	perror("Error printed by perror");
	fprintf(stderr, "Error opening file: %s\n", strerror( errnum ));
	if (ac > 1)
		ft_write(1, av[1], -1);
	fprintf(stderr, "\nValue of errno: %d\n", errno);
	perror("Error printed by perror");
	fprintf(stderr, "Error opening file: %s\n", strerror( errnum ));
	return (0);
}
