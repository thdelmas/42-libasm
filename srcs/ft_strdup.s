	global		ft_strdup
	section		.text
	extern		malloc
	extern		ft_strcpy
	extern		ft_strlen

prologue:
	push	rbp
	mov	rbp, rsp

ft_strdup:
	call	ft_strlen
	push	rdi
	inc	rax
	mov	rdi, rax
	call	malloc wrt ..plt
	cmp	rax, 0
	jz	error
	mov	rdi, rax
	pop	rsi
	call	ft_strcpy

epilogue:	
	mov	rsp, rbp
	pop	rbp
	ret

error:
	pop	rdi
	jmp	epilogue
