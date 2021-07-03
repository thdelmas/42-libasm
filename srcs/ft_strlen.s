          	global		ft_strlen
		section		.text
ft_strlen:
		xor	rax, rax

_loop:	
		cmp	BYTE [rdi+rax], 0
		je	_end_of_string
		inc	rax
		jmp	_loop

_end_of_string:
		ret
