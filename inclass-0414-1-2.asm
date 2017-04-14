INCLUDE Irvine32.inc

.data
.code
main proc
	mov eax, 10
L1:
	call WriteInt
	call crlf
	dec eax
	cmp eax, 0
	ja L1

	exit
main endp
end main
