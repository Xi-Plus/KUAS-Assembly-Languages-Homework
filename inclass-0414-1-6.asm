INCLUDE Irvine32.inc

.data
.code
main proc
	call Randomize
	mov ebx, 10
L1:
	mov eax, 256
	call RandomRange
	call SetTextColor

	mov dh, 10
	mov dl, 40
	call Gotoxy

	mov eax, ebx
	call WriteInt
	call crlf

	mov eax, 1000
	call Delay

	call clrscr

	dec ebx
	cmp ebx, 0
	ja L1

	exit
main endp
end main
