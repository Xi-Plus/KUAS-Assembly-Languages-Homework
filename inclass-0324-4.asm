; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
bigEndian BYTE 12h, 34h, 56h, 78h
littleEndian DWORD ?

.code
main proc
	mov eax, DWORD PTR bigEndian
	mov littleEndian, eax

	invoke ExitProcess,0
main endp
end main