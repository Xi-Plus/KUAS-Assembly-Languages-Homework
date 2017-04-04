TITLE
INCLUDE Irvine32.inc
.data
x DWORD ?
val1 DWORD ?
N DWORD ?
A DWORD ?
B DWORD ?
.code
main proc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 1
	mov ebx, 4
	mov ecx, 3
	mov x, 0
	cmp ebx, ecx
	jbe F1E
	mov x, 1
F1E:
	mov eax, x
	call WriteInt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 2
	mov edx, 4
	mov ecx, 3
	mov x, 0
	cmp edx, ecx
	jbe F21
	jmp F22
F21:
	mov x, 1
	jmp F2E
F22:
	mov x, 2
F2E:
	mov eax, x
	call WriteInt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 3
	mov val1, 5
	mov ecx, 3
	mov edx, 1
	mov x, 0
	cmp val1, ecx
	ja F31
	jmp F33
F31:
	cmp ecx, edx
	ja F32
	jmp F33
F32:
	mov x, 1
	jmp F3E
F33:
	mov x, 2
F3E:
	mov eax, x
	call WriteInt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 4
	mov ebx, 4
	mov ecx, 4
	mov val1, 4
	mov x, 0
	cmp ebx, ecx
	ja F41
	cmp ebx, val1
	ja F41
	jmp F42
F41:
	mov x, 1
	jmp F4E
F42:
	mov x, 2
F4E:
	mov eax, x
	call WriteInt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 5
	mov ebx, 4
	mov ecx, 3
	mov edx, 4
	mov eax, 6
	mov x, 0
	cmp ebx, ecx
	ja F51
	jmp F52
F51:
	cmp ebx, edx
	ja F53
	jmp F52
F52:
	cmp edx, eax
	ja F53
	jmp F54
F53:
	mov x, 1
	jmp F5E
F54:
	mov x, 2
F5E:
	mov eax, x
	call WriteInt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 6
	mov N, 49
	mov A, 2
	mov B, 2
	mov x, 0
L:
		cmp N, 3
		jne F61
		jmp F63
	F61:
		mov eax, A
		cmp N, eax
		jb F62
		mov eax, B
		cmp N, eax
		ja F62
		jmp F63
	F62:
		dec N
		dec N
		jmp F6E
	F63:
		dec N
	F6E:
		mov eax, N
		call WriteInt
	cmp N, 0
	ja L
	
	invoke ExitProcess,0
main endp
end main