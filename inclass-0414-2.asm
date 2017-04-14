INCLUDE Irvine32.inc

.data
prompt BYTE "Input 2 number", 0

.code
main proc
	mov edx, offset prompt
	call writestring
	call crlf

	call readint
	mov ebx, eax

	call readint
	add eax, ebx

	call clrscr

	call writeint

	exit
main endp
end main
