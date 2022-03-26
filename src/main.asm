format pe64 dll efi
entry main

section '.text' code executable readable

include 'efi.inc'

main:
    sub rsp, 4*8              ; reserve space for 4 arguments

    mov [Handle], rcx         ; ImageHandle
    mov [SystemTable], rdx    ; pointer to SystemTable

    lea rdx, [_hello]
    mov rcx, [SystemTable]
    mov rcx, [rcx + EFI_SYSTEM_TABLE.ConOut]
    call [rcx + SIMPLE_TEXT_OUTPUT_INTERFACE.OutputString]

    add rsp, 4*8
    mov eax, EFI_SUCCESS
    retn


section '.data' data readable writeable

Handle      dq ?
SystemTable dq ?
_hello      du 'Hello World',13,10

section '.reloc' fixups data discardable
