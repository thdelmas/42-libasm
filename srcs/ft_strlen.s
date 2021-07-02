%ifdef __LINUX__
	%define STRLEN ft_strlen
%else
	%define STRLEN _ft_strlen
%endif

		section		.text
          	global		STRLEN

_strlen42:	
		cmp	BYTE [rdi+rax], 0
		je	_end_of_string
		inc	rax
		jmp	_strlen42

_end_of_string:
		ret

STRLEN:
		xor	rax, rax
		jmp	_strlen42
