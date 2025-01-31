section .data
array_start: dd 1, 2, 3, 4, 5
array_size: equ 5 ; Define array size

section .text
    global _start

_start:
    mov ecx, 2 ; Example index

    ; Check if ecx is within bounds
    cmp ecx, array_size
    jge out_of_bounds ; Jump if out of bounds

    ; Access memory only if within bounds
    mov ebx, array_start
    mov eax, [ebx + ecx * 4] ; Access the array element safely 
    ; ... further processing ...
    jmp exit

out_of_bounds:
    ; Handle out-of-bounds error (e.g., print an error message)
    ; ... error handling ...

exit:
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80