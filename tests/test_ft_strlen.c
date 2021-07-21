
#include <stdio.h>
#include <string.h>
#include "libasm.h"

int main(int ac, char **av)
{
	printf("S: %s\n", av[1]);
	printf("FT: %d\n", ft_strlen(av[1]));
	printf("RL: %d\n", (int)strlen(av[1]));
	return(0);
}
