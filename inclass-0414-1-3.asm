INCLUDE Irvine32.inc

.data
.code
main proc
	mov ebx, 10
L1:
	mov eax, ebx
	call WriteInt
	call crlf

	mov eax, 1000
	call Delay

	dec ebx
	cmp ebx, 0
	ja L1

	exit
main endp
end main
