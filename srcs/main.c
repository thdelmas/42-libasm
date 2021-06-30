
#include <stdio.h>
#include "libasm.h"


int main(int ac, char **av)
{
	printf("test\n");
	if (ac >= 2)
	{
		printf("%s:\t%i\n", av[1],ft_strlen(av[1]));
	}
	printf("test2\n");
	return(0);
}
