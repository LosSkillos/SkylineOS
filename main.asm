BITS 16
load:
	call nl
	int 0x10
	jmp loop
loop:
	mov si, data.wel
	call pstr
	call nl
	.repeat:
		mov ah, 00h
		int 16h
		mov ah, 0x0e
		int 0x10
		cmp al, 13
		je exit
		jmp .repeat
exit:
	call clrscr
	mov si, data.end
	call pstr
	call nl
	cli
	hlt

data:
	.wel db 'Welcome to SkylineOS!', 0
	.end db 'PC Halted...', 0