
#include <stdio.h>
#include <stdlib.h>
#include "libasm.h"


int main(int ac, char **av)
{
	printf("AV1: %s\n", av[1]);
	printf("AV2: %s\n", av[2]);
	printf("FT: %d\n", ft_strcmp(av[1], av[2]));
	printf("RL: %d\n", strcmp(av[1], av[2]));
	return(0);
}
