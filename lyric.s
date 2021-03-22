.intel_syntax noprefix
.global main

.LC0:
  .string "Hello World!"
main:
  push  rbp
  mov   rbp, rsp
  sub   rsp, 16
  mov   DWORD PTR [rbp-4], 0
  jmp   .L2
.L3:
  mov   edi, OFFSET FLAT:.LC0
  mov   eax, 0
  call  printf
  add   DWORD PTR [rbp-4], 1
.L2:
  cmp   DWORD PTR [rbp-4], 1
  jle   .L3
  mov   eax, 0
  leave
  ret
