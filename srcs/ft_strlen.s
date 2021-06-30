          	global		ft_strlen

		section		.text

_strlen42:	
		cmp	BYTE [rdi+rax], 0
		je	_end_of_string
		inc	rax
		jmp	_strlen42

_end_of_string:
		ret

ft_strlen:
		xor	rax, rax
		jmp	_strlen42
