INCLUDE Irvine32.inc

.data
sum DWORD 0

.code
main proc
	mov ecx, 1
	jmp F2

L1:
	add sum, ecx
	inc ecx
	
F2:
	mov eax, sum
	cmp eax, 1000
	jb L1
	
	mov eax, sum
	call writeint

	exit
main endp
end main
