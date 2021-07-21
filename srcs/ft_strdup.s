	global		ft_strdup
	section		.text
	extern		malloc
	extern		ft_strcpy
	extern		ft_strlen


ft_strdup:
	push	rbp
	mov	rbp, rsp
	push	rdi
	call	ft_strlen
	inc	rax
	mov	rdi, rax
	inc	rdi
	call	malloc wrt ..plt
	cmp	rax, 0
	je	_error
	pop	rsi
	mov	rdi, rax
	call	ft_strcpy
	mov	rsp, rbp
	pop	rbp
	ret

_error:
	mov	rax, 0
	mov	rsp, rbp
	pop	rbp
	ret
