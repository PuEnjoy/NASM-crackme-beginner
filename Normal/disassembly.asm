┌ 129: entry0 ();
│           0x00401000      b801000000     mov eax, 1                  ; [01] -r-x section size 141 named .text
│           0x00401005      bf01000000     mov edi, 1
│           0x0040100a      488d342500..   lea rsi, loc.inputmsg       ; 0x402000 ; "Enter the code: \nRonjaWORNG!\nCORRECT!\n"
│           0x00401012      ba11000000     mov edx, 0x11               ; loc.inputmsglen
│           0x00401017      0f05           syscall
│           0x00401019      b800000000     mov eax, 0
│           0x0040101e      bf01000000     mov edi, 1
│           0x00401023      488d342528..   lea rsi, loc.inbuffer       ; 0x402028
│           0x0040102b      ba10000000     mov edx, 0x10               ; 16
│           0x00401030      0f05           syscall
│           ;-- _checkpw:
│           0x00401032      488d3c2511..   lea rdi, loc.secret         ; 0x402011 ; "RonjaWORNG!\nCORRECT!\n"
│           0x0040103a      488d342528..   lea rsi, loc.inbuffer       ; 0x402028
│           0x00401042      b905000000     mov ecx, 5
│           0x00401047      f3a6           repe cmpsb byte [rsi], byte [rdi]
│       ┌─< 0x00401049      751b           jne loc._wrong
│       │   0x0040104b      b801000000     mov eax, 1
│       │   0x00401050      bf01000000     mov edi, 1
│       │   0x00401055      488d34251d..   lea rsi, loc.correctmsg     ; 0x40201d ; "CORRECT!\n"
│       │   0x0040105d      ba09000000     mov edx, 9
│       │   0x00401062      0f05           syscall
│      ┌──< 0x00401064      eb1b           jmp loc._exit
│      ││   ;-- _wrong:
│      ││   ; CODE XREF from entry0 @ 0x401049(x)
│      │└─> 0x00401066      b801000000     mov eax, 1
│      │    0x0040106b      bf01000000     mov edi, 1
│      │    0x00401070      488d342516..   lea rsi, loc.wrongmsg       ; 0x402016 ; "WORNG!\nCORRECT!\n"
│      │    0x00401078      ba07000000     mov edx, 7
│      │    0x0040107d      0f05           syscall
└      │┌─< 0x0040107f      eb00           jmp loc._exit
