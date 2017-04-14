INCLUDE Irvine32.inc

.data
.code
main proc
	mov eax, 1
L1:
	call WriteInt
	call crlf
	inc eax
	cmp eax, 11
	jb L1

	exit
main endp
end main
