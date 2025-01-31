mov eax, [ebx+ecx*4] ; This instruction assumes that ecx is a valid index into the array pointed to by ebx.  If ecx is too large (out of bounds), it will cause a segmentation fault or access violation.

mov ecx, 1000 ; Example:  ecx is set to a large value
mov ebx, array_start ; ebx points to the beginning of an array
mov eax, [ebx+ecx*4] ; Access violation likely here!