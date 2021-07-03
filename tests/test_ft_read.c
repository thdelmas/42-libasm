
#include "libasm.h"

int main(int ac, char **av)
{
	char	c;

	while (ft_read(0, &c, 1) >= 0)
		printf("%c", c);
	printf("\n");
	return (0);
}
