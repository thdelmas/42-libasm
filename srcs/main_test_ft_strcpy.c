
#include <stdio.h>
#include <stdlib.h>
#include "libasm.h"


int main(int ac, char **av)
{
	char	*s1;
	char	*s2;

	s1 = strdup("tatatatattata");
	s2 = strdup("totototottoto");
	printf("AV1: %s\n", s1);
	printf("AV2: %s\n", s2);
	ft_strcpy(s1, s2);
	printf("AV1: %s\n", s1);
	printf("AV2: %s\n", s2);
	return(0);
}
