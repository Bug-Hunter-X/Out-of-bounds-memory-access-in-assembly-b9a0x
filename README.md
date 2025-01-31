# Out-of-Bounds Memory Access in x86 Assembly

This repository demonstrates a common error in assembly programming: accessing memory outside the bounds of an array.  The `bug.asm` file contains code that is vulnerable to this issue, potentially causing segmentation faults or other unexpected behavior.  The `bugSolution.asm` file provides a corrected version with bounds checking.

## Problem

The problem lies in the line `mov eax, [ebx+ecx*4]`.  This instruction attempts to read a value from memory based on the index in `ecx`.  If `ecx` is larger than the array's size, it will attempt to access memory that it doesn't have permission to access, resulting in a crash.

## Solution

The solution involves adding bounds checking before accessing the array.  The corrected code in `bugSolution.asm` explicitly checks if `ecx` is within the valid range before accessing the array element.