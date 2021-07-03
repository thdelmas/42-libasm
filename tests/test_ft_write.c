
#include "libasm.h"

int main(int ac, char **av)
{
	if (ac > 1)
	{
		ft_write(2, av[1], strlen(av[1]));
	}
	return (0);
}
