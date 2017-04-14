INCLUDE Irvine32.inc

.data
.code
main proc
	call Randomize
	mov ebx, 0
L1:
	mov eax, 99
	call RandomRange
	call writeint
	inc eax
	call crlf

	inc ebx
	cmp ebx, 10
	jb L1

	exit
main endp
end main
