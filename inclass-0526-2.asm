include Irvine32.inc

.data
msg BYTE "input 3 number", 0

.code
main proc
	mov edx, offset msg
	call writestring
	call crlf

	call readint
	mov ebx, eax
	call readint
	mov ecx, eax
	call readint
	mul ebx
	mul ecx
	call writeint

	invoke ExitProcess,0
main endp
end main
