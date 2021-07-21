
#include <stdio.h>
#include <stdlib.h>
#include "libasm.h"


int main(int ac, char **av)
{
	char	*s2;

	s2 = NULL;
	printf("AV1: %s\n", av[1]);
	s2 = strdup(av[1]);
	printf("S: %s\n", s2);
	free(s2);
	return(0);
}
