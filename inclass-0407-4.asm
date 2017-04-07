INCLUDE Irvine32.inc

.data
sum DWORD 0

.code
main proc
	mov ecx, 100
	jmp F2

L1:
	add sum, ecx
	dec ecx

F2:
	mov eax, sum
	cmp eax, 1000
	jb L1

	cmp ecx, 0
	jge L1

	jmp F1
F1:
	mov eax, sum
	call writeint

	exit
main endp
end main
