; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
INCLUDE Irvine32.inc

.386

.model flat,stdcall

.stack 4096
ExitProcess proto,dwExitCode:dword

.data
;;;;;;;;;;;;;;;;;;;;;;;; question 2
a SWORD ?
b BYTE ?
wArray WORD 1,2,3
d BYTE 500 DUP("TEST"),0

;;;;;;;;;;;;;;;;;;;;;;;; question 3
na DWORD ?
nb DWORD ?
nc DWORD ?
nd DWORD ?

;;;;;;;;;;;;;;;;;;;;;;;; question 4
val1 DWORD 1
val2 DWORD 2
val3 DWORD 3

.code

main proc

	;;;;;;;;;;;;;;;;;;;;;;;; question 3
	;;;;;;;;;;;;; please std input 4 number (press enter after number)
	call ReadInt
	mov na,eax
	call ReadInt
	mov nb,eax
	call ReadInt
	mov nc,eax
	call ReadInt
	mov nd,eax
	mov eax,na
	add eax,nb
	mov ecx,nc
	add ecx,nd
	sub eax,ecx
	call WriteInt

	;;;;;;;;;;;;;;;;;;;;;;;; question 4
	mov eax,0
	sub eax,val2
	add eax,7
	sub eax,val3
	add eax,val1
	call WriteInt
	exit
main endp
end main
