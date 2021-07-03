#ifndef H_LIBASM
# define H_LIBASM

#include <stddef.h>
#include <unistd.h>

int	ft_strlen(const char *str);
int	ft_strcmp(const char *dst, const char *str);
char	*ft_strcpy(char *dst, const char *str);
ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fd, void *buf, size_t count);
char	*ft_strdup(const char *s1);

#endif
