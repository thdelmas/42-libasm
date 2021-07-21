
#include <stdio.h>
#include <stdlib.h>
#include "libasm.h"


int main(int ac, char **av)
{
	char	*src;
	char	*dest;

	src = strdup("111111111111111111");
	dest = strdup("000000000000000000000000000000000000000000000000");
	printf("SRC:\t%s\n", src);
	printf("DEST:\t%s\n", dest);
	ft_strcpy(dest, src);
	printf("SRC:\t%s\n", src);
	printf("DEST:\t%s\n", dest);
	free(src);
	free(dest);
	return(0);
}
