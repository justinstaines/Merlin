;code in printer buffer
5b00 7c       LD   A,H
5b01 32ff5b   LD   (5bff),A  ;save HL at top of printer buffer
5b04 7d       LD   A,L
5b05 32fe5b   LD   (5bfe),A
5b08 3a7b5c   LD   A,(5c7b)  ;save UDG at top of printer buffer
5b0b 32fd5b   LD   (5bfd),A
5b0e 3a7c5c   LD   A,(5c7c)
5b11 32fc5b   LD   (5bfc),A
5b14 2810     JR   Z,5b26    ;monster display cycle finished
5b16 3ec3     LD   A,c3      ;put JP 5b37 at 6e1b
5b18 321b6e   LD   (6e1b),A
5b1b 3e37     LD   A,37
5b1d 321c6e   LD   (6e1c),A
5b20 3e5b     LD   A,5b
5b22 321d6e   LD   (6e1d),A
5b25 c9       RET
;monster display cycle finished
5b26 3ecd     LD   A,cd      ;restore CALL 744a at 6e1b
5b28 321b6e   LD   (6e1b),A
5b2b 3e4a     LD   A,4a
5b2d 321c6e   LD   (6e1c),A
5b30 3e74     LD   A,74
5b32 321d6e   LD   (6e1d),A
5b35 c9       RET
5b36 00       NOP
5b37 3aff5b   LD   A,(5bff)  ;restore HL
5b3a 67       LD   H,A
5b3b 3afe5b   LD   A,(5bfe)
5b3e 6f       LD   L,A
5b3f 3afd5b   LD   A,(5bfd)  ;restore UDG
5b42 327b5c   LD   (5c7b),A
5b45 3afc5b   LD   A,(5bfc)
5b48 327c5c   LD   (5c7c),A
5b4b c31e6e   JP   6e1e
5b4e c9       RET

5b4f 00 00 00 00 00 00 00 00
5b57 00 00 00 00 00 00 00 00
5b5f 00 00 00 00 00 00 00 00
5b67 00 00 00 00 00 00 00 00
5b6f 00 00 00 00 00 00 00 00
5b77 00 00 00 00 00

5b7c af       XOR  A
5b7d 32056f   LD   (6f05),A  ;***5b7d:typo 52h corrected to 32h
5b80 32fb6d   LD   (6dfb),A  ;set number of monsters=00
5b83 3ecd     LD   A,cd      ;restore CALL 744a at 6e1b
5b85 321b6e   LD   (6e1b),A
5b88 3e4a     LD   A,4a
5b8a 321c6e   LD   (6e1c),A
5b8d 3e74     LD   A,74
5b8f 321d6e   LD   (6e1d),A
5b92 c3d067   JP   67d0      ;(does JP 6833)

5b95 00 00 00 00 00 00 00 00
5b9d 00 00 00 00 00 00 00 00
5ba5 00 00 00 00 00 00 00 00
5bad 00 00 00 00 00 00 00 00
5bb5 00 00 00 00 00 00 00 00
5bbd 00 00 00 00 00 00 00 00
5bc5 00 00 00 00 00 00 00 00
5bcd 00 00 00 00 00 00 00 00
5bd5 00 00 00 00 00 00 00 00
5bdd 00 00 00 00 00 00 00 00
5be5 00 00 00 00 00 00 00 00
5bed 00 00 00 00 00 00 00 00
5bf5 00 00 00 00 00 00 00
5bfc 62 12                   ;saved UDG address
5bfe 32 67                   ;saved HL register

----------

;character set (partial - codes 32-93)
5dc0 00000000000000001818181818001818
5dd0 666666000000000055aa4924189255ba
5de0 7cfcd0fc7e167e7ce6eedc3876eece00
5df0 387c6c386ec4fe7a0018300000000000
5e00 000c1c1818181c0c0030381818183830
5e10 663c187e7e183c66000018187e7e1818
5e20 0000000000181830000000003e3e0000
5e30 00000000001818000000060c18306000
5e40 7cfec6c6c6c6fe7c183878181818fefe
5e50 7cfe067efcc0fefe7cfec61c1ec6fe7c
5e60 1c3c7cecccfefe1cfefec0fcfe06fe7c
5e70 7cfcc0fcfec6fe7cfefe060c18303030
5e80 7cfec67cfec6fe7c7cfec6fe7e06fefc
5e90 00003030000030300000303000303060
5ea0 00000c1830180c0000003e3e003e3e00
5eb0 000030180c1830007cfece1c18001818
5ec0 5cfedad6dec0fe7e7cfec6c6[f]efec6c6 ;missing character restored
5ed0 fcfec6fcfec6fefc7cfee6c0c0e6fe7c
5ee0 f8fccec6c6cefcf8fefec0fcfcc0fefe
5ef0 fefec0fcfcc0c0c07cfec6c0cec6fe7c
5f00 c6c6c6fefec6c6c6fcfc30303030fcfc
5f10 06060606c6c6fe7cc6cedcf8f8dccec6
5f20 c0c0c0c0c0c0fefec6eefed6c6c6c6c6
5f30 c6e6f6[f]edecec6c67cfec6c6c6c6fe7c ;missing character restored
5f40 fcfec6c6fefcc0c07cfec6c6f6defe7c
5f50 fcfec6c6fcfccec67cfcc0fc7e067e7c
5f60 fcfc303030303030c6c6c6c6c6c6fe7c
5f70 c6c6c6c6c6ee7c38c6c6c6c6c6d6fe6c
5f80 c3e77[e]3c3c7ee7c386cefc7830303030 ;missing character restored
5f90 fefe1c3870e0fefe000e080808080e00
5fa0 00004020100804000070101010107000

;unreferenced data - checked
5fb0 00103854

;platform data is 6*3 bytes = row:col:length
;level 1 platform data - checked
5fb4 060506 090c08 0c1708 0d0505 0f0f05 120020   ;***changed
5fb4 060505        0c1807 0d0305 0f0e06          ;***to this
;level 2 platform data - checked
5fc6 040a10 070204 09090e 0c1a04 0e0a0d 120020   ;***changed
5fc6               09090c                        ;***to this
;level 3 platform data - checked
5fd8 070b08 071805 0a0107 0d060e 101807 120020
5fd8 070b08 071805 0a0107 0d060e 101807 120020
;level 4 platform data - checked
5fea 06060f 091905 0c0002 0c0f07 0f0705 120020   ;***changed
5fea        091b03        0c1109                 ;***to this
;level 5 platform data - checked
5ffc 070614 0a0002 0a1e02 0e0002 0e1e02 120020
5ffc 070614 0a0002 0a1e02 0e0002 0e1e02 120020
;platform workspace
600e 12002000

;Merlin animation data - display checked
6012 000007e00a1818ac225c344a24326a86
6022 42a26452554e2284103822041ff80000
6032 000007e00a1818ac225c344a24326a86
6042 42a26452554e32b8080412380dc00000
6052 000007e0185035183a44522c4c246156
6062 45424a2672aa21441c0820441ff80000
6072 000007e0185035183a44522c4c246156
6082 45424a2672aa1d4c20101c4803b00000

;level 1 monster animation data - display checked
6092 000007c00cf0088817c80fc40a7c143c
60a2 0c2813fc0aa8094802e003d006380700
60b2 000007c00cf008c815880fc40a7c143c
60c2 1c2813fc09c81084036006e007100038
60d2 000007c00cf0088817c80fc40a7c143c
60e2 0c2813fc0aa8094802e003d006380700
60f2 000007c00cf008c815880fc40a7c143c
6102 1c2813fc09c81084036006e007100038
6112 03800ee01bb017f037f83ff826882b70
6122 17f015a80be026c001c0028020100104
6132 03800ee01af017b03ff83bf826882b74
6142 17f025a40be006c001c0228800000900
;level 2 monster animation data - display checked
;(but still doesn't look right)
6152 00000000000000000000000000000000
6162 00000000000000000000000000000000
6172 00000000000000000000000000000000
6182 00000000000000000000000000000000
6192 056003d00a5012d81ac812c826242868
61a2 081432341098163039500ad40d2027c4 ;***61a2:typo 98h corrected to 08h
61b2 02200bc802400ad012d81ac816282864
61c2 2918101434b420181170281008a407c0
61d2 00000000000000000000000000000000
61e2 000000100824184827b0184808240010
61f2 00000000000000000000000000000010
6202 08200820144c27b0144c082008200010
;level 3 monster animation data - display checked
;(but still doesn't look right)
6212 024012480bd02eb41f683db41a482db4
6222 34d4242c1a102cb415f80db012480240
6232 000002400bd02fb015e83c34325805ac
6242 348c201c12382dd417e80db002400000
6252 0ff81d0418143c843fe43d3813c42bb8
6262 3dbc3ffc3c1c22a8133c32ac3c0c3ffc
6272 1ffc3c143a803c043fe43d3813c42dd8
6282 3dbc2ffc3c0825641674354c3c2c1ff8
6292 00001ce016b01ef007c0028005c01e38 ;level 5 monster data (start)
62a2 3ffc3b9c238404600a40000000000000
62b2 00000e701ad01ef007c0014023c43c7c
62c2 3ffc1b9803800c4004a0000000000000
;level 4 monster animation data - display checked
62d2 0f0016803fc032c039a0146019200e60
62e2 044003a000f80028005c006800100000
62f2 0f001e803e4035403e201f601d200e20
6302 044003a000f80028005c006800100000
6312 07e0181827043e1c2fe43004295c2d68
6322 2004319c263c28fc33f41fc807f00000
6332 07e0191825843e1c2fe4301819581d68
6342 18381d98362c28fc33f41fc807f00000 ;level 5 monster data (end)
6352 03900c2012483ffc34043a243c042a84
6362 3c043a1434041ff803c00e7012881ff8
6372 0750084802483ffc34042a4438043a04
6382 2c84381435041ff803c00e7015481ff8

;
6392-6412 00 ...             ;129 bytes
;initial text for status bar
6413 2053434f52452030303030204c495645
6423 532039204c4556454c20312054393920
;
6433 00
;workspace for movement routines
6434 5fc60000000b21110000
;
643e-658f 00 ...             ;338 bytes

;code in main memory
6590 cdf66c   CALL 6cf6      ;print keys
6593 3e03     LD   A,03
6595 328f5c   LD   (5c8f),A  ;ATTR_T=PAPER 0,INK 3
6598 3e16     LD   A,16
659a d7       RST  #10       ;AT 0,27
659b af       XOR  A
659c d7       RST  #10
659d 3e1a     LD   A,1a
659f d7       RST  #10
65a0 3acc67   LD   A,(67cc)
65a3 c630     ADD  A,30
65a5 d7       RST  #10       ;level
65a6 3acc67   LD   A,(67cc)
65a9 328f5c   LD   (5c8f),A  ;ATTR_T=level
65ac c9       RET

65ad-66e0 00 ...             ;308 (-27) bytes
;----->                      ;***
;patched routine for enhanced jumping
;taken from $6aab and $6b20
65ad 3a0967   LD   A,(6709)
65b0 3c       INC  A
65b1 320967   LD   (6709),A  ;increment Y co-ord
65b4 cdec68   CALL 68ec      ;print Merlin
65b7 cd9f6c   CALL 6c9f      ;check for collision left/right+up
65ba 3a3d64   LD   A,(643d)
65bd fe05     CP   05
65bf c8       RET  Z
65c0 3a0967   LD   A,(6709)
65c3 3c       INC  A
65c4 320967   LD   (6709),A  ;increment Y co-ord
;-----<
65c7 c9       ret

65c8-66e0 00 ...             ;281 bytes

66e1 cd9065   CALL 6590      ;print keys + level
66e4 c9       RET
;
66e5 02       LD   (BC),A
66e6 328f5c   LD   (5c8f),A  ;ATTR_T=A
66e9 c9       RET

66ea-66f6 00 ...             ;19 bytes

66f7 ff66753ac5edecff        ;UDG "A" - platform
66ff 00
6700 1864849a620d0102        ;UDG "A" - key
;movement control data for Merlin & monsters
;96 bytes from 6708 copied from 6768 at start
6708 003110100109
670e 3a2f10100105428f10100101a65710100101
6720 6417101001014e4f1010010172a710100101
6732 9689101001015a2f101001013c5710100101
6744 788f101001015a69101001018c4710100101
6756 5087101001015a5a101001013c4410100101
;96 bytes from 6768 copied to 6708 at start - checked
6768 00311010010d                         ;Merlin
676e 322f101001054e8f10100105985710100105 ;level 1 monsters
6780 641710100101644f101001018ca710100101 ;level 2 monsters
6792 9689101001015a2f101001013c5710100101 ;level 3 monsters
67a4 788f101001015a69101001018c4710100101 ;level 4 monsters
67b6 5087101001015a5a101001013c4410100101 ;level 5 monsters
;
67c8 0100030802080003

67d0 c33368   JP   6833
;level 1 platform data address
67d3 21b45f   LD   HL,5fb4
67d6 7c       LD   A,H
67d7 323464   LD   (6434),A
67da 7d       LD   A,L
67db 323564   LD   (6435),A
67de c9       RET
;level 2 platform data address
67df 21c65f   LD   HL,5fc6
67e2 7c       LD   A,H
67e3 323464   LD   (6434),A
67e6 7d       LD   A,L
67e7 323564   LD   (6435),A
67ea c9       RET
;level 3 platform data address
67eb 21d85f   LD   HL,5fd8
67ee 7c       LD   A,H
67ef 323464   LD   (6434),A
67f2 7d       LD   A,L
67f3 323564   LD   (6435),A
67f6 c9       RET
;level 4 platform data address
67f7 21ea5f   LD   HL,5fea
67fa 7c       LD   A,H
67fb 323464   LD   (6434),A
67fe 7d       LD   A,L
67ff 323564   LD   (6435),A
6802 c9       RET
;level 5 platform data address
6803 21fc5f   LD   HL,5ffc
6806 7c       LD   A,H
6807 323464   LD   (6434),A
680a 7d       LD   A,L
680b 323564   LD   (6435),A
680e c9       RET

;choose platform data for level
680f 3acc67   LD   A,(67cc)  ;level
6812 fe01     CP   01
6814 28bd     JR   Z,67d3
6816 3acc67   LD   A,(67cc)
6819 fe02     CP   02
681b 28c2     JR   Z,67df
681d 3acc67   LD   A,(67cc)
6820 fe03     CP   03
6822 28c7     JR   Z,67eb
6824 3acc67   LD   A,(67cc)
6827 fe04     CP   04
6829 28cc     JR   Z,67f7
682b 3acc67   LD   A,(67cc)
682e fe05     CP   05
6830 28d1     JR   Z,6803
6832 c9       RET

;print platforms - checked
6833 3ef7     LD   A,f7
6835 327b5c   LD   (5c7b),A
6838 3e66     LD   A,66
683a 327c5c   LD   (5c7c),A  ;UDG=66f7
683d 211364   LD   HL,6413
6840 3e00     LD   A,00
6842 323c5c   LD   (5c3c),A  ;TVFLAG=0
6845 0620     LD   B,20
6847 7e       LD   A,(HL)    ;loop to print status bar
6848 d7       RST  #10
6849 23       INC  HL
684a 10fb     DJNZ 6847
684c 3e06     LD   A,06      ;A=number of platforms on a level
684e 32385c   LD   (5c38),A  ;RASP=06 (loop counter)
6851 cd0f68   CALL 680f      ;set location of level platform data
6854 7e       LD   A,(HL)    ;<<<loop return point
6855 320e60   LD   (600e),A  ;platform line
6858 23       INC  HL
6859 7e       LD   A,(HL)
685a 320f60   LD   (600f),A  ;platform column
685d 23       INC  HL
685e 7e       LD   A,(HL)
685f 321060   LD   (6010),A  ;platform length
6862 23       INC  HL
6863 3e00     LD   A,00
6865 323c5c   LD   (5c3c),A  ;TVFLAG=0
6868 3a0f60   LD   A,(600f)
686b 321160   LD   (6011),A
686e 3a1060   LD   A,(6010)
6871 47       LD   B,A
6872 3e16     LD   A,16      ;<<<DJNZ returns here
6874 d7       RST  #10       ;AT ?,?
6875 3a0e60   LD   A,(600e)
6878 d7       RST  #10
6879 3a0f60   LD   A,(600f)
687c d7       RST  #10
687d 3e90     LD   A,90
687f d7       RST  #10       ;graphic "A"
6880 3a0f60   LD   A,(600f)
6883 3c       INC  A
6884 320f60   LD   (600f),A
6887 10e9     DJNZ 6872
6889 3a1160   LD   A,(6011)
688c 320f60   LD   (600f),A
688f 3a385c   LD   A,(5c38)
6892 3d       DEC  A
6893 32385c   LD   (5c38),A  ;decrement loop counter
6896 20bc     JR   NZ,6854   ;repeat for all platforms on level
6898 c9       RET
6899 00       NOP

;program initialisation
689a 216867   LD   HL,6768
689d 110867   LD   DE,6708
68a0 016000   LD   BC,0060
68a3 edb0     LDIR
68a5 3e01     LD   A,01
68a7 32c967   LD   (67c9),A  ;set "moving right"
68aa 32cc67   LD   (67cc),A  ;level
68ad af       XOR  A
68ae 32ca67   LD   (67ca),A  ;reset sum of keys found + level bonus
68b1 32c867   LD   (67c8),A  ;reset "moving left"
68b4 32936f   LD   (6f93),A  ;reset key flag
68b7 32946f   LD   (6f94),A  ;reset key flag
68ba 32956f   LD   (6f95),A  ;reset key flag
68bd 3e09     LD   A,09
68bf 32cb67   LD   (67cb),A  ;lives
68c2 32cd67   LD   (67cd),A  ;time tens
68c5 32cf67   LD   (67cf),A  ;time units
68c8 c9       RET
;
68c9 cf67c967
;
;for YX co-ords in BC
;set display file byte address (HL) and bit value (PIP)
68cd cdaa22   CALL 22aa,pixel_add
68d0 47       LD   B,A       ;B=pixel position within display file byte
68d1 04       INC  B
68d2 7e       LD   A,(HL)    ;A=display file byte
68d3 07       RLCA
68d4 10fd     DJNZ 68d3      ;loop until pixel rotated to bit 0
68d6 e601     AND  A,01      ;A=display bit value
68d8 32395c   LD   (5c39),A  ;PIP=display bit value
68db c9       RET

;update the display
68dc cdec68   CALL 68ec      ;print Merlin
68df cd1169   CALL 6911      ;check for left/right direction keypress
68e2 cd4e6c   CALL 6c4e      ;check for collision to right/left
68e5 cdda69   CALL 69da      ;check for up+right/left direction keypress
68e8 cd1a6a   CALL 6a1a      ;execute a screen display cycle
68eb c9       RET

;print Merlin
68ec 3e04     LD   A,04
68ee 328f5c   LD   (5c8f),A  ;ATTR_T=PAPER 0,INK 4
68f1 010600   LD   BC,0006   ;copy 6 bytes
68f4 210867   LD   HL,6708   ;from 6708
68f7 11327f   LD   DE,7f32   ;to graphics routine workspace
68fa 3e60     LD   A,60
68fc 327c5c   LD   (5c7c),A
68ff 3e12     LD   A,12
6901 327b5c   LD   (5c7b),A  ;UDG=6012
6904 edb0     LDIR
6906 cd3e7f   CALL 7f3e      ;graphics routine
6909 3a5e71   LD   A,(715e)
690c 328f5c   LD   (5c8f),A  ;ATTR_T=temporary attribute
690f c9       RET

6910 05
;
;game - check for left/right direction keypress
6911 af       XOR  A
6912 dbfe     IN   A,(fe)
6914 febe     CP   be        ;CAPS - left
6916 200b     JR   NZ,6923
6918 3e01     LD   A,01
691a 32c867   LD   (67c8),A  ;set "moving left"
691d af       XOR  A
691e 32c967   LD   (67c9),A  ;reset "moving right"
6921 1844     JR   6967      ;moving left
;
6923 af       XOR  A
6924 dbfe     IN   A,(fe)
6926 febd     CP   bd        ;Z - right
6928 c23975   JP   NZ,7539   ;check for equivalent joystick actions
                             ;***JP NZ,753a changed to JP NZ,7539
692b 3e01     LD   A,01
692d 32c967   LD   (67c9),A  ;set "moving right"
6930 af       XOR  A
6931 32c867   LD   (67c8),A  ;reset "moving left"
6934 c3b969   JP   69b9      ;moving right
;
6937 3ac867   LD   A,(67c8)  ;check "moving left"
693a fe01     CP   01
693c c23975   JP   NZ,7539   ;if not set, check for joystick actions
                             ;***JP NZ,753a changed to JP NZ,7539
;moving left - repeat for up to 8 pixels
693f 3e08     LD   A,08
6941 32385c   LD   (5c38),A  ;RASP=08 (loop counter)
6944 3a0867   LD   A,(6708)  ;check X co-ord <<<loop return point
6947 b7       OR   A
6948 c8       RET  Z         ;stop if at LH-side
6949 3ac867   LD   A,(67c8)  ;check "moving left"
694c fe01     CP   01
694e c0       RET  NZ        ;stop if not moving left
694f 3a0867   LD   A,(6708)
6952 3d       DEC  A
6953 320867   LD   (6708),A  ;decrement X co-ord
6956 cd4e6c   CALL 6c4e      ;check for collision to right/left
6959 cdec68   CALL 68ec      ;print Merlin
695c 3a385c   LD   A,(5c38)
695f 3d       DEC  A
6960 32385c   LD   (5c38),A  ;decrement loop counter
6963 b7       OR   A
6964 20de     JR   NZ,6944
6966 c9       RET

;moving left - toggle UDG offset key
6967 3a0d67   LD   A,(670d)
696a fe0d     CP   0d
696c 280d     JR   Z,697b
696e 3e0d     LD   A,0d      ;UDG offset key - 2nd left
6970 32377f   LD   (7f37),A
6973 320d67   LD   (670d),A
6976 cd4e6c   CALL 6c4e      ;check for collision to right/left
6979 18bc     JR   6937
;
697b 3e09     LD   A,09      ;UDG offset key - 1st left
697d 32377f   LD   (7f37),A
6980 320d67   LD   (670d),A
6983 cd4e6c   CALL 6c4e      ;check for collision to right/left
6986 18af     JR   6937

;
6988 3ac967   LD   A,(67c9)  ;check "moving right"
698b fe01     CP   01
698d c23975   JP   NZ,7539   ;if not set, check for joystick actions
                             ;***JP NZ,753a changed to JP NZ,7539
;moving right - repeat for up to 8 pixels
6990 3e08     LD   A,08
6992 32385c   LD   (5c38),A  ;RASP=08 (loop counter)
6995 3a0867   LD   A,(6708)  ;check X co-ord <<<loop return point
6998 feef     CP   ef
699a c8       RET  Z         ;stop if at RH-side
699b 3ac967   LD   A,(67c9)  ;check "moving right"
699e fe01     CP   01
69a0 c0       RET  NZ        ;stop if not moving right
69a1 3a0867   LD   A,(6708)
69a4 3c       INC  A
69a5 320867   LD   (6708),A  ;increment X co-ord
69a8 cd4e6c   CALL 6c4e      ;check for collision to right/left
69ab cdec68   CALL 68ec      ;print Merlin
69ae 3a385c   LD   A,(5c38)
69b1 3d       DEC  A
69b2 32385c   LD   (5c38),A  ;decrement loop counter
69b5 b7       OR   A
69b6 20dd     JR   NZ,6995
69b8 c9       RET

;moving right - toggle UDG offset key
69b9 3a0d67   LD   A,(670d)
69bc fe05     CP   05
69be 280d     JR   Z,69cd
69c0 3e05     LD   A,05      ;UDG offset key - 2nd right
69c2 32377f   LD   (7f37),A
69c5 320d67   LD   (670d),A
69c8 cd4e6c   CALL 6c4e      ;check for collision to right/left
69cb 18bb     JR   6988
;
69cd 3e01     LD   A,01      ;UDG offset key - 1st right
69cf 32377f   LD   (7f37),A
69d2 320d67   LD   (670d),A
69d5 cd4e6c   CALL 6c4e      ;check for collision to right/left
69d8 18ae     JR   6988

;game - check for up+right/left direction keypress
69da af       XOR  A
69db dbfe     IN   A,(fe)
69dd feb9     CP   b9        ;Z+X - right+up
69df cad26a   JP   Z,6ad2
69e2 af       XOR  A
69e3 dbfe     IN   A,(fe)
69e5 feba     CP   ba        ;CAPS+X - left+up
69e7 ca5e6a   JP   Z,6a5e
69ea c37575   JP   7575      ;check for equivalent joystick actions
                             ;***JP 7576 changed to JP 7575
;check for ground if falling
69ed 3a0967   LD   A,(6709)
69f0 d610     SUB  10
69f2 47       LD   B,A       ;B=Y co-ord - 10h
69f3 3a0867   LD   A,(6708)
69f6 4f       LD   C,A       ;C=X co-ord
69f7 cdcd68   CALL 68cd      ;set display file address (HL) and bit (PIP)
69fa 3a395c   LD   A,(5c39)  ;A=PIP
69fd d601     SUB  01
69ff 323764   LD   (6437),A
6a02 3a0967   LD   A,(6709)
6a05 d610     SUB  10
6a07 47       LD   B,A       ;B=Y co-ord - 10h
6a08 3a0867   LD   A,(6708)
6a0b c60f     ADD  A,0f
6a0d 4f       LD   C,A       ;C=X co-ord + 0fh
6a0e cdcd68   CALL 68cd      ;set display file address (HL) and bit (PIP)
6a11 3a395c   LD   A,(5c39)  ;A=PIP
6a14 d601     SUB  01
6a16 323864   LD   (6438),A
6a19 c9       RET

;execute a screen display cycle
6a1a cdec68   CALL 68ec      ;print Merlin
6a1d cd1b6e   CALL 6e1b      ;print monsters
6a20 cd3c73   CALL 733c      ;update status bar
6a23 cd9a6f   CALL 6f9a      ;check for key found (does JP 701f)
6a26 cde470   CALL 70e4      ;timer countdown
6a29 cd096f   CALL 6f09      ;check for monster collision
6a2c cded69   CALL 69ed      ;check for ground if falling
6a2f cd366a   CALL 6a36      ;check left then right
6a32 cd4a6a   CALL 6a4a      ;check right then left
6a35 c9       RET

;check ground proximity flags
6a36 3a3764   LD   A,(6437)
6a39 b7       OR   A
6a3a c8       RET  Z
6a3b 3a3864   LD   A,(6438)
6a3e b7       OR   A
6a3f c8       RET  Z
6a40 3a0967   LD   A,(6709)
6a43 3d       DEC  A
6a44 320967   LD   (6709),A  ;decrement Y co-ord
6a47 c31a6a   JP   6a1a      ;continue falling
;check ground proximity flags
6a4a 3a3864   LD   A,(6438)
6a4d b7       OR   A
6a4e c8       RET  Z
6a4f 3a3764   LD   A,(6437)
6a52 b7       OR   A
6a53 c8       RET  Z
6a54 3a0967   LD   A,(6709)
6a57 3d       DEC  A
6a58 320967   LD   (6709),A  ;decrement Y co-ord
6a5b c31a6a   JP   6a1a      ;continue falling

;left+up
6a5e 3e0b     ld   a,$0b     ;***3e0f     LD   A,0f
6a60 323964   LD   (6439),A  ;set loop counter=0f
6a63 af       XOR  A
6a64 32c967   LD   (67c9),A  ;reset "moving right"
6a67 3e01     LD   A,01
6a69 32c867   LD   (67c8),A  ;set "moving left"
6a6c 3e09     LD   A,09      ;<<<loop return point
6a6e 320d67   LD   (670d),A
;
6a71 000000   defb 00,00,00  ;***cdec68   CALL 68ec      ;print Merlin
6a74 cd1b6e   CALL 6e1b      ;print monsters
6a77 000000   defb 00,00,00  ;***cd3c73   CALL 733c      ;update status bar
6a7a 000000   defb 00,00,00  ;***cd9a6f   CALL 6f9a      ;check for key found (does JP 701f)
6a7d 000000   defb 00,00,00  ;***cde470   CALL 70e4      ;timer countdown
6a80 cd096f   CALL 6f09      ;check for monster collision
;
6a83 3a0867   LD   A,(6708)  ;check X co-ord
6a86 b7       OR   A
6a87 ca1a6a   JP   Z,6a1a    ;if at LH-side, JP to screen display cycle
6a8a cd4e6c   CALL 6c4e      ;check for collision to right/left
6a8d 3ac867   LD   A,(67c8)  ;check "moving left"
6a90 b7       OR   A
6a91 cc1a6a   CALL Z,6a1a    ;if not set, CALL to screen display cycle
6a94 3ac867   LD   A,(67c8)  ;check "moving left"
6a97 b7       OR   A
6a98 ca936c   JP   Z,6c93    ;if not set, set "moving left" & RET
6a9b af       XOR  A
6a9c 323d64   LD   (643d),A
6a9f cd9f6c   CALL 6c9f      ;check for collision left/right+up
6aa2 3a3d64   LD   A,(643d)
6aa5 fe05     CP   05
6aa7 c8       RET  Z
6aa8 cd6769   CALL 6967      ;moving left
;----->                      ;***patch for enhanced jumping
6aab cdad65   call $65ad
6aae 3a3d64   LD   A,(643d)
6ab1 fe05     CP   05
6ab3 c8       RET  Z
6ab4 cdb465   call $65b4
6ab7 3a3d64   LD   A,(643d)
6aba fe05     CP   05
6abc c8       RET  Z
6abd 1806     jr   $6ac5
6abf 000000   defb 00,00,00
6ac2 000000   defb 00,00,00
;-----<
6ac5 3a3964   LD   A,(6439)
6ac8 3d       DEC  A
6ac9 323964   LD   (6439),A  ;decrement loop counter
6acc b7       OR   A
6acd 209d     JR   NZ,6a6c
6acf c3466b   JP   6b46      ;print Merlin moving left

;right+up
6ad2 3e0b     ld   a,$0b     ;***3e0f     LD   A,0f
6ad4 323964   LD   (6439),A  ;set loop counter=0f
6ad7 3e01     LD   A,01
6ad9 32c967   LD   (67c9),A  ;set "moving right"
6adc af       XOR  A
6add 32c867   LD   (67c8),A  ;reset "moving left"
6ae0 3e05     LD   A,05      ;<<<loop return point
6ae2 320d67   LD   (670d),A
;
6ae5 000000   defb 00,00,00  ;***cdec68   CALL 68ec      ;print Merlin
6ae8 cd1b6e   CALL 6e1b      ;print monsters
6aeb 000000   defb 00,00,00  ;***cd3c73   CALL 733c      ;update status bar
6aee 000000   defb 00,00,00  ;***cd9a6f   CALL 6f9a      ;check for key found (does JP 701f)
6af1 000000   defb 00,00,00  ;***cde470   CALL 70e4      ;timer countdown
6af4 cd096f   CALL 6f09      ;check for monster collision
;
6af7 3a0867   LD   A,(6708)  ;check X co-ord
6afa feef     CP   ef
6afc ca1a6a   JP   Z,6a1a    ;if at RH-side, JP to screen display cycle
6aff cd4e6c   CALL 6c4e      ;check for collision to right/left
6b02 3ac967   LD   A,(67c9)  ;check "moving right"
6b05 b7       OR   A
6b06 cc1a6a   CALL Z,6a1a    ;if not set, CALL to screen display cycle
6b09 3ac967   LD   A,(67c9)  ;check "moving right"
6b0c b7       OR   A
6b0d ca996c   JP   Z,6c99    ;if not set, set "moving right" & RET
6b10 af       XOR  A
6b11 323d64   LD   (643d),A
6b14 cd9f6c   CALL 6c9f      ;check for collision left/right+up
6b17 3a3d64   LD   A,(643d)
6b1a fe05     CP   05
6b1c c8       RET  Z
6b1d cdb969   CALL 69b9      ;moving right
;----->                      ;***patch for enhanced jumping
6b20 cdad65   call $65ad
6b23 3a3d64   LD   A,(643d)
6b26 fe05     CP   05
6b28 c8       RET  Z
6b29 cdb465   call $65b4
6b2c 3a3d64   LD   A,(643d)
6b2f fe05     CP   05
6b31 c8       RET  Z
6b32 1806     jr   $6b3a
6b34 000000   defb 00,00,00
6b37 000000   defb 00,00,00
;-----<
6b3a 3a3964   LD   A,(6439)
6b3d 3d       DEC  A
6b3e 323964   LD   (6439),A  ;decrement loop counter
6b41 209d     JR   NZ,6ae0
6b43 c3af6b   JP   6baf      ;print Merlin moving right

;print Merlin moving left
6b46 000000   defb 00,00,00  ;***cdec68   CALL 68ec      ;print Merlin
6b49 000000   defb 00,00,00  ;***cd4e6c   CALL 6c4e      ;check for collision to right/left
6b4c 3ac867   LD   A,(67c8)  ;check "moving left"
6b4f b7       OR   A
6b50 cc1a6a   CALL Z,6a1a    ;if not set, CALL to screen display cycle
6b53 3ac867   LD   A,(67c8)  ;check "moving left"
6b56 b7       OR   A
6b57 ca936c   JP   Z,6c93    ;if not set, set "moving left" & RET
6b5a cd1b6e   CALL 6e1b      ;print monsters
6b5d 000000   defb 00,00,00  ;***cd3c73   CALL 733c      ;update status bar
6b60 000000   defb 00,00,00  ;***cd9a6f   CALL 6f9a      ;check for key found (does JP 701f)
6b63 000000   defb 00,00,00  ;***cde470   CALL 70e4      ;timer countdown
6b66 cd096f   CALL 6f09      ;check for monster collision
6b69 cded69   CALL 69ed      ;check for ground if falling
6b6c cd736b   CALL 6b73      ;check left then right
6b6f cd916b   CALL 6b91      ;check right then left
6b72 c9       RET

;check ground proximity flags - moving left
6b73 3a3764   LD   A,(6437)
6b76 b7       OR   A
6b77 c8       RET  Z
6b78 3a3864   LD   A,(6438)
6b7b b7       OR   A
6b7c c8       RET  Z
6b7d 3a0967   LD   A,(6709)
6b80 3d       DEC  A
6b81 320967   LD   (6709),A  ;decrement Y co-ord
6b84 3a0867   LD   A,(6708)  ;check X co-ord
6b87 b7       OR   A
6b88 ca1a6a   JP   Z,6a1a    ;if at LH-side, JP to screen display cycle
6b8b cd6769   CALL 6967      ;moving left
6b8e c3466b   JP   6b46      ;print Merlin moving left
;check ground proximity flags - moving left
6b91 3a3864   LD   A,(6438)
6b94 b7       OR   A
6b95 c8       RET  Z
6b96 3a3764   LD   A,(6437)
6b99 b7       OR   A
6b9a c8       RET  Z
6b9b 3a0967   LD   A,(6709)
6b9e 3d       DEC  A
6b9f 320967   LD   (6709),A  ;decrement Y co-ord
6ba2 3a0867   LD   A,(6708)  ;check X co-ord
6ba5 b7       OR   A
6ba6 ca1a6a   JP   Z,6a1a    ;if at LH-side, JP to screen display cycle
6ba9 cd6769   CALL 6967      ;moving left
6bac c3466b   JP   6b46      ;print Merlin moving left

;print Merlin moving right
6baf 000000   defb 00,00,00  ;***cdec68   CALL 68ec      ;print Merlin
6bb2 000000   defb 00,00,00  ;***cd4e6c   CALL 6c4e      ;check for collision to right/left
6bb5 3ac967   LD   A,(67c9)  ;check "moving right"
6bb8 b7       OR   A
6bb9 cc1a6a   CALL Z,6a1a    ;if not set, CALL to screen display cycle
6bbc 3ac967   LD   A,(67c9)  ;check "moving right"
6bbf b7       OR   A
6bc0 ca996c   JP   Z,6c99    ;if not set, set "moving right" & RET
6bc3 cd1b6e   CALL 6e1b      ;print monsters
6bc6 000000   defb 00,00,00  ;***cd3c73   CALL 733c      ;update status bar
6bc9 000000   defb 00,00,00  ;***cd9a6f   CALL 6f9a      ;check for key found (does JP 701f)
6bcc 000000   defb 00,00,00  ;***cde470   CALL 70e4      ;timer countdown
6bcf cd096f   CALL 6f09      ;check for monster collision
6bd2 cded69   CALL 69ed      ;check for ground if falling
6bd5 cddc6b   CALL 6bdc      ;check left then right
6bd8 cdfb6b   CALL 6bfb      ;check right then left
6bdb c9       RET

;check ground proximity flags - moving right
6bdc 3a3764   LD   A,(6437)
6bdf b7       OR   A
6be0 c8       RET  Z
6be1 3a3864   LD   A,(6438)
6be4 b7       OR   A
6be5 c8       RET  Z
6be6 3a0967   LD   A,(6709)
6be9 3d       DEC  A
6bea 320967   LD   (6709),A  ;decrement Y co-ord
6bed 3a0867   LD   A,(6708)  ;check X co-ord
6bf0 feef     CP   ef
6bf2 ca1a6a   JP   Z,6a1a    ;if at RH-side, JP to screen display cycle
6bf5 cdb969   CALL 69b9      ;moving right
6bf8 c3af6b   JP   6baf      ;print Merlin moving right
;check ground proximity flags - moving right
6bfb 3a3864   LD   A,(6438)
6bfe b7       OR   A
6bff c8       RET  Z
6c00 3a3764   LD   A,(6437)
6c03 b7       OR   A
6c04 c8       RET  Z
6c05 3a0967   LD   A,(6709)
6c08 3d       DEC  A
6c09 320967   LD   (6709),A  ;decrement Y co-ord
6c0c 3a0867   LD   A,(6708)  ;check X co-ord
6c0f feef     CP   ef
6c11 ca1a6a   JP   Z,6a1a    ;if at RH-side, JP to screen display cycle
6c14 cdb969   CALL 69b9      ;moving right
6c17 c3af6b   JP   6baf      ;print Merlin moving right

;check for collision moving right - checked
6c1a 3a0967   LD   A,(6709)
6c1d 323a64   LD   (643a),A  ;copy Y co-ord
6c20 3e10     LD   A,10
6c22 323c64   LD   (643c),A  ;set loop counter=10h
6c25 3a0867   LD   A,(6708)  ;get X co-ord <<<loop return point
6c28 c612     ADD  A,12
6c2a 4f       LD   C,A       ;C=X co-ord + 12h
6c2b 3a3a64   LD   A,(643a)
6c2e 47       LD   B,A       ;B=Y co-ord
6c2f cdcd68   CALL 68cd      ;set display file address (HL) and bit (PIP)
6c32 3a395c   LD   A,(5c39)  ;A=PIP
6c35 2012     JR   NZ,6c49   ;if PIP set, reset "moving right" & RET
6c37 3a3a64   LD   A,(643a)
6c3a 3d       DEC  A
6c3b 323a64   LD   (643a),A  ;decrement Y co-ord
6c3e 3a3c64   LD   A,(643c)
6c41 3d       DEC  A
6c42 323c64   LD   (643c),A  ;decrement loop counter
6c45 b7       OR   A
6c46 20dd     JR   NZ,6c25
6c48 c9       RET
;
6c49 af       XOR  A
6c4a 32c967   LD   (67c9),A  ;reset "moving right"
6c4d c9       RET

;check for collision to right/left - checked
6c4e 3ac967   LD   A,(67c9)  ;check "moving right"
6c51 fe01     CP   01
6c53 cc1a6c   CALL Z,6c1a    ;if set, check for collision moving right
6c56 3ac967   LD   A,(67c9)  ;check "moving right"
6c59 fe01     CP   01
6c5b c45f6c   CALL NZ,6c5f   ;if not set, check for collision moving left
6c5e c9       RET

;check for collision moving left - checked
6c5f 3a0967   LD   A,(6709)
6c62 323a64   LD   (643a),A  ;copy Y co-ord
6c65 3e10     LD   A,10
6c67 323c64   LD   (643c),A  ;set loop counter=10h
6c6a 3a0867   LD   A,(6708)  ;get X co-ord <<<loop return point
6c6d d603     SUB  03
6c6f 4f       LD   C,A       ;C=X co-ord - 03h
6c70 3a3a64   LD   A,(643a)
6c73 47       LD   B,A       ;B=Y co-ord
6c74 cdcd68   CALL 68cd      ;set display file address (HL) and bit (PIP)
6c77 3a395c   LD   A,(5c39)  ;A=PIP
6c7a 2012     JR   NZ,6c8e   ;if PIP set, reset "moving left" & RET
6c7c 3a3a64   LD   A,(643a)
6c7f 3d       DEC  A
6c80 323a64   LD   (643a),A  ;decrement Y co-ord
6c83 3a3c64   LD   A,(643c)
6c86 3d       DEC  A
6c87 323c64   LD   (643c),A  ;decrement loop counter
6c8a b7       OR   A
6c8b 20dd     JR   NZ,6c6a
6c8d c9       RET
;
6c8e af       XOR  A
6c8f 32c867   LD   (67c8),A  ;reset "moving left"
6c92 c9       RET
6c93 3e01     LD   A,01
6c95 32c867   LD   (67c8),A  ;set "moving left"
6c98 c9       RET
6c99 3e01     LD   A,01
6c9b 32c967   LD   (67c9),A  ;set "moving right"
6c9e c9       RET

;check for collision left/right+up - checked
6c9f 3a0867   LD   A,(6708)
6ca2 3d       DEC  A
6ca3 323b64   LD   (643b),A  ;copy X co-ord - 1
6ca6 3e12     LD   A,12
6ca8 323c64   LD   (643c),A  ;set loop counter=12h
6cab 3a3b64   LD   A,(643b)  ;<<<loop return point
6cae 4f       LD   C,A       ;C=X co-ord - 1
6caf 3a0967   LD   A,(6709)
6cb2 3c       INC  A
6cb3 47       LD   B,A       ;B=Y co-ord + 1
6cb4 cdcd68   CALL 68cd      ;set display file address (HL) and bit (PIP)
6cb7 3a395c   LD   A,(5c39)  ;A=PIP
6cba 2012     JR   NZ,6cce
6cbc 3a3b64   LD   A,(643b)
6cbf 3c       INC  A
6cc0 323b64   LD   (643b),A  ;increment X co-ord
6cc3 3a3c64   LD   A,(643c)
6cc6 3d       DEC  A
6cc7 323c64   LD   (643c),A  ;decrement loop counter
6cca b7       OR   A
6ccb 20de     JR   NZ,6cab
6ccd c9       RET
;
6cce 3e05     LD   A,05
6cd0 323d64   LD   (643d),A
6cd3 3ac867   LD   A,(67c8)  ;check "moving left"
6cd6 fe01     CP   01
6cd8 cc466b   CALL Z,6b46    ;if set, print Merlin moving left
6cdb 3ac967   LD   A,(67c9)  ;check "moving right"
6cde fe01     CP   01
6ce0 ccaf6b   CALL Z,6baf    ;if set, print Merlin moving right
6ce3 c9       RET

;These appear to be redundant code fragments, as they're never
;called and they CALL invalid addresses anyway.
6ce4 fe01     CP   01
6ce6 ccab6b   CALL Z,6bab
6ce9 c9       RET
6cea 3b6b
6cec 3ac967   LD   A,(67c9)
6cef fe01     CP   01
6cf1 ccb46b   CALL Z,6bb4
6cf4 c9       RET
6cf5 00

;print keys
6cf6 3e00     LD   A,00
6cf8 327b5c   LD   (5c7b),A
6cfb 3e67     LD   A,67
6cfd 327c5c   LD   (5c7c),A  ;UDG=6700
6d00 3e08     LD   A,08
6d02 32347f   LD   (7f34),A
6d05 32357f   LD   (7f35),A
6d08 3e01     LD   A,01
6d0a 32367f   LD   (7f36),A  ;set visibility
6d0d 32377f   LD   (7f37),A  ;UDG offset key - 01=static
6d10 cd516d   CALL 6d51      ;HL=location of level keys data
                             ;6 bytes; eg. level 1 = 7040e8582588
6d13 7c       LD   A,H
6d14 32b05c   LD   (5cb0),A
6d17 7d       LD   A,L
6d18 32b15c   LD   (5cb1),A  ;save address of level keys data
6d1b 3e03     LD   A,03
6d1d 32f56c   LD   (6cf5),A  ;loop counter = 3
6d20 7e       LD   A,(HL)    ;<<<loop return point
6d21 32327f   LD   (7f32),A  ;set X co-ord in graphics workspace
6d24 23       INC  HL
6d25 7c       LD   A,H
6d26 32b05c   LD   (5cb0),A
6d29 7d       LD   A,L
6d2a 32b15c   LD   (5cb1),A
6d2d 7e       LD   A,(HL)
6d2e 32337f   LD   (7f33),A  ;set Y co-ord in graphics workspace
6d31 cd3e7f   CALL 7f3e      ;graphics routine
6d34 3ab05c   LD   A,(5cb0)
6d37 67       LD   H,A
6d38 3ab15c   LD   A,(5cb1)
6d3b 6f       LD   L,A
6d3c 23       INC  HL
6d3d 7c       LD   A,H
6d3e 32b05c   LD   (5cb0),A
6d41 7d       LD   A,L
6d42 32b15c   LD   (5cb1),A
6d45 3af56c   LD   A,(6cf5)
6d48 3d       DEC  A
6d49 32f56c   LD   (6cf5),A
6d4c fe00     CP   00
6d4e 20d0     JR   NZ,6d20
6d50 c9       RET

;choose keys data for level
6d51 3acc67   LD   A,(67cc)  ;level
6d54 fe01     CP   01
6d56 281d     JR   Z,6d75
6d58 3acc67   LD   A,(67cc)
6d5b fe02     CP   02
6d5d 281a     JR   Z,6d79
6d5f 3acc67   LD   A,(67cc)
6d62 fe03     CP   03
6d64 2817     JR   Z,6d7d
6d66 3acc67   LD   A,(67cc)
6d69 fe04     CP   04
6d6b 2814     JR   Z,6d81
6d6d 3acc67   LD   A,(67cc)
6d70 fe05     CP   05
6d72 2811     JR   Z,6d85
6d74 c9       RET
;
6d75 21896d   LD   HL,6d89   ;level 1 keys data address
6d78 c9       RET
6d79 218f6d   LD   HL,6d8f   ;level 2 keys data address
6d7c c9       RET
6d7d 21956d   LD   HL,6d95   ;level 3 keys data address
6d80 c9       RET
6d81 219b6d   LD   HL,6d9b   ;level 4 keys data address
6d84 c9       RET
6d85 21a16d   LD   HL,6da1   ;level 5 keys data address
6d88 c9       RET

;level keys data is 3*2 bytes = x-coord:y-coord
;keys moved to sit on platforms centred in character squares ***
;    old settings                                     new settings
6d89 7040e8582588            ;level 1 keys data - *** 7040e8582888
6d8f 108f403ff861            ;level 2 keys data - *** 10808070e858
6d95 a06e1068f641            ;level 3 keys data - *** d0801068d838
6d9b 0057ec2fd26f            ;level 4 keys data - *** 0058e828e070
6da1 00477927f647            ;level 5 keys data - *** 08487828f048
6da7 006666ffff

;print starting pad
6dac 3ea8     LD   A,a8
6dae 327b5c   LD   (5c7b),A
6db1 3e6d     LD   A,6d
6db3 327c5c   LD   (5c7c),A  ;UDG=6da8 - bottom of pad
6db6 3e00     LD   A,00
6db8 32327f   LD   (7f32),A  ;X co-ord=00h
6dbb 3e20     LD   A,20
6dbd 32337f   LD   (7f33),A  ;Y co-ord=20h
6dc0 3e10     LD   A,10
6dc2 32347f   LD   (7f34),A
6dc5 3e01     LD   A,01
6dc7 32357f   LD   (7f35),A
6dca 32367f   LD   (7f36),A  ;set visibility
6dcd 32377f   LD   (7f37),A  ;UDG offset key - 01=static
6dd0 cd3e7f   CALL 7f3e      ;graphics routine
6dd3 3a7b5c   LD   A,(5c7b)
6dd6 c602     ADD  A,02
6dd8 327b5c   LD   (5c7b),A  ;UDG=6daa - top of pad
6ddb 3a337f   LD   A,(7f33)
6dde 3c       INC  A
6ddf 32337f   LD   (7f33),A  ;increment Y co-ord
6de2 cd3e7f   CALL 7f3e      ;graphics routine
6de5 3aa86d   LD   A,(6da8)
6de8 cb0f     RRC  A
6dea 32a86d   LD   (6da8),A  ;rotate bottom of pad
6ded 3aa96d   LD   A,(6da9)
6df0 cb0f     RRC  A
6df2 32a96d   LD   (6da9),A  ;rotate bottom of pad
6df5 c9       RET

6df6 0067326e0800
;monster animation flags data - checked
6dfc 010000010001            ;level 1
6e02 000000010100            ;level 2
6e08 010001000001            ;level 3
6e0e 010000010100            ;level 4
6e14 010000010100            ;level 5
;
6e1a 00

;print monsters
6e1b cd4a74   CALL 744a      ;code at 5b00 may change this to JP 5b37
6e1e 11327f   LD   DE,7f32   ;which, when executed, comes back to here
6e21 010600   LD   BC,0006
6e24 edb0     LDIR
6e26 cd3e7f   CALL 7f3e      ;graphics routine
6e29 3af76d   LD   A,(6df7)
6e2c 67       LD   H,A
6e2d 3af86d   LD   A,(6df8)
6e30 6f       LD   L,A
6e31 cd4e6e   CALL 6e4e      ;update monster animation settings
6e34 cd956e   CALL 6e95      ;toggle UDG offset key
6e37 23       INC  HL
6e38 7c       LD   A,H
6e39 32f76d   LD   (6df7),A
6e3c 7d       LD   A,L
6e3d 32f86d   LD   (6df8),A
6e40 cdba6e   CALL 6eba      ;update (+40h) address to next monster's data
6e43 3afb6d   LD   A,(6dfb)
6e46 3d       DEC  A
6e47 32fb6d   LD   (6dfb),A  ;decrement monster loop counter
6e4a b7       OR   A
6e4b c3005b   JP   5b00

;update monster animation settings
6e4e 3af96d   LD   A,(6df9)
6e51 47       LD   B,A
6e52 3afa6d   LD   A,(6dfa)
6e55 4f       LD   C,A       ;BC=address of monster animation flags
6e56 7e       LD   A,(HL)
6e57 fe32     CP   32
6e59 2826     JR   Z,6e81
6e5b 7e       LD   A,(HL)
6e5c fea6     CP   a6
6e5e 282b     JR   Z,6e8b
6e60 0a       LD   A,(BC)
6e61 fe01     CP   01
6e63 2810     JR   Z,6e75    ;does JP 7927
6e65 03       INC  BC        ;and returns here
6e66 0a       LD   A,(BC)
6e67 fe01     CP   01
6e69 2810     JR   Z,6e7b    ;does JP 7944
6e6b 03       INC  BC        ;and returns here
6e6c 78       LD   A,B
6e6d 32f96d   LD   (6df9),A
6e70 79       LD   A,C
6e71 32fa6d   LD   (6dfa),A
6e74 c9       RET
;
6e75 c32779   JP   7927
6e78 00       NOP
6e79 18ea     JR   6e65
;
6e7b c34479   JP   7944
6e7e 00       NOP
6e7f 18ea     JR   6e6b
;
6e81 af       XOR  A
6e82 02       LD   (BC),A
6e83 03       INC  BC
6e84 3e01     LD   A,01
6e86 02       LD   (BC),A
6e87 0b       DEC  BC
6e88 c35b6e   JP   6e5b
;
6e8b 3e01     LD   A,01
6e8d 02       LD   (BC),A
6e8e 03       INC  BC
6e8f af       XOR  A
6e90 02       LD   (BC),A
6e91 0b       DEC  BC
6e92 c3606e   JP   6e60

;toggle UDG offset key
6e95 3a377f   LD   A,(7f37)
6e98 fe05     CP   05
6e9a 2808     JR   Z,6ea4
6e9c 3a377f   LD   A,(7f37)
6e9f fe01     CP   01
6ea1 280c     JR   Z,6eaf
6ea3 c9       RET
6ea4 3e01     LD   A,01
6ea6 32377f   LD   (7f37),A
6ea9 010500   LD   BC,0005
6eac 09       ADD  HL,BC
6ead 77       LD   (HL),A
6eae c9       RET
6eaf 3e05     LD   A,05
6eb1 32377f   LD   (7f37),A
6eb4 010500   LD   BC,0005
6eb7 09       ADD  HL,BC
6eb8 77       LD   (HL),A
6eb9 c9       RET

;update (+40h) address to next monster's data
6eba 3a7c5c   LD   A,(5c7c)
6ebd 57       LD   D,A
6ebe 3a7b5c   LD   A,(5c7b)
6ec1 5f       LD   E,A       ;DE=UDG
6ec2 e5       PUSH HL
6ec3 214000   LD   HL,0040
6ec6 19       ADD  HL,DE
6ec7 7c       LD   A,H
6ec8 327c5c   LD   (5c7c),A
6ecb 7d       LD   A,L
6ecc 327b5c   LD   (5c7b),A  ;UDG=UDG+40h
6ecf e1       POP  HL
6ed0 c9       RET

6ed1 010500   LD   BC,0005
6ed4 09       ADD  HL,BC
6ed5 77       LD   (HL),A
6ed6 c9       RET
6ed7 3e05     LD   A,05      ;UDG offset key - 2nd right
6ed9 32377f   LD   (7f37),A
6edc 010500   LD   BC,0005
6edf 09       ADD  HL,BC
6ee0 77       LD   (HL),A
6ee1 c9       RET
;
6ee2 3a7c5c   LD   A,(5c7c)
6ee5 57       LD   D,A
6ee6 3a7b5c   LD   A,(5c7b)
6ee9 5f       LD   E,A       ;DE=UDG
6eea e5       PUSH HL
6eeb 214000   LD   HL,0040
6eee 19       ADD  HL,DE
6eef 7c       LD   A,H
6ef0 327c5c   LD   (5c7c),A
6ef3 7d       LD   A,L
6ef4 327b5c   LD   (5c7b),A  ;UDG=UDG+40h
6ef7 e1       POP  HL
6ef8 c9       RET
6ef9 327c5c   LD   (5c7c),A
6efc 7d       LD   A,L
6efd 327b5c   LD   (5c7b),A
6f00 e1       POP  HL
6f01 c9       RET

6f02 8698000000672c

;check for monster collision - checked
6f09 3e00     LD   A,00
6f0b 32056f   LD   (6f05),A  ;reset monster collision flag
6f0e 1805     JR   6f15
6f10 00       NOP
6f11 00       NOP
6f12 00       NOP
6f13 00       NOP
6f14 00       NOP
6f15 3e03     LD   A,03
6f17 32066f   LD   (6f06),A  ;set loop counter=03
6f1a cd0d75   CALL 750d      ;choose monster level data
6f1d 110600   LD   DE,0006
6f20 7c       LD   A,H       ;<<<(6f06) loop return point
6f21 32076f   LD   (6f07),A  ;hi-byte of monster level data address
6f24 7d       LD   A,L
6f25 32086f   LD   (6f08),A  ;lo-byte of monster level data address
6f28 7e       LD   A,(HL)
6f29 3d       DEC  A
6f2a 32026f   LD   (6f02),A	 ;=X co-ord - 1
6f2d 23       INC  HL
6f2e 7e       LD   A,(HL)
6f2f 2b       DEC  HL
6f30 3c       INC  A
6f31 32036f   LD   (6f03),A  ;=Y co-ord + 1
6f34 3e10     LD   A,$10
6f36 32046f   LD   (6f04),A  ;set loop counter=10h
6f39 cd6c6f   CALL 6f6c      ;check for collision vertically
6f3c 3e10     LD   A,$10
6f3e 32046f   LD   (6f04),A  ;set loop counter=10h
6f41 3a026f   LD   A,(6f02)
6f44 c611     ADD  A,11
6f46 32026f   LD   (6f02),A  ;=X co-ord + 11h
6f49 3a036f   LD   A,(6f03)
6f4c c610     ADD  A,10
6f4e 32036f   LD   (6f03),A  ;=Y co-ord + 10h
6f51 cd6c6f   CALL 6f6c      ;check for collision vertically
6f54 110600   LD   DE,0006
6f57 3a076f   LD   A,(6f07)
6f5a 67       LD   H,A
6f5b 3a086f   LD   A,(6f08)
6f5e 6f       LD   L,A
6f5f 19       ADD  HL,DE     ;HL=next monster level data address
6f60 3a066f   LD   A,(6f06)
6f63 3d       DEC  A
6f64 32066f   LD   (6f06),A  ;decrement loop counter (03)
6f67 fe00     CP   00
6f69 20b5     JR   NZ,6f20
6f6b c9       RET

;check for collision vertically - checked
6f6c 3a026f   LD   A,(6f02)  ;<<<loop return point (10h)
6f6f 4f       LD   C,A       ;C=X co-ord
6f70 3a036f   LD   A,(6f03)
6f73 3d       DEC  A
6f74 32036f   LD   (6f03),A
6f77 47       LD   B,A       ;B=Y co-ord - 1
6f78 cdcd68   CALL 68cd      ;set display file address (HL) and bit (PIP)
6f7b 3a395c   LD   A,(5c39)  ;A=PIP
6f7e 200c     JR   NZ,6f8c   ;if set, set monster collision flag
6f80 3a046f   LD   A,(6f04)
6f83 3d       DEC  A
6f84 32046f   LD   (6f04),A  ;decrement loop counter (10h)
6f87 fe00     CP   00
6f89 20e1     JR   NZ,6f6c
6f8b c9       RET
;
6f8c 3eff     LD   A,ff
6f8e 32056f   LD   (6f05),A  ;set monster collision flag
6f91 18ed     JR   6f80

6f93 000000                  ;key found flags
6f96 0000ff73

6f9a c31f70   JP   701f
;set addresses/co-ords for level keys data - checked
6f9d 21936f   LD   HL,6f93   ;HL=address of key1 found flag
6fa0 3ab05c   LD   A,(5cb0)
6fa3 57       LD   D,A       ;D=address hi-byte of level keys data
6fa4 3ab15c   LD   A,(5cb1)  ;A=address lo-byte of level keys data+6
6fa7 d606     SUB  06
6fa9 5f       LD   E,A       ;E=address lo-byte of level keys data
6faa 1a       LD   A,(DE)
6fab 32327f   LD   (7f32),A  ;set X co-ord in graphics workspace
6fae 13       INC  DE
6faf 1a       LD   A,(DE)
6fb0 32337f   LD   (7f33),A  ;set Y co-ord in graphics workspace
6fb3 1b       DEC  DE        ;DE=address of level keys data
6fb4 c9       RET

;check for key found - checked
6fb5 7e       LD   A,(HL)    ;A=key found flag
6fb6 c8       RET  Z         ;RET if not found
6fb7 1a       LD   A,(DE)
6fb8 32327f   LD   (7f32),A  ;set X co-ord in graphics workspace
6fbb d604     SUB  04        ;A=X co-ord - 4
6fbd f5       PUSH AF
6fbe 3a976f   LD   A,(6f97)
6fc1 fe01     CP   01
6fc3 204b     JR   NZ,7010
6fc5 f1       POP  AF
6fc6 4f       LD   C,A       ;C=X co-ord - 4
6fc7 3a986f   LD   A,(6f98)
6fca feff     CP   ff
6fcc 284a     JR   Z,7018
6fce 13       INC  DE
6fcf 1a       LD   A,(DE)
6fd0 32337f   LD   (7f33),A  ;set Y co-ord in graphics workspace
6fd3 d600     SUB  00
6fd5 47       LD   B,A       ;B=Y co-ord
6fd6 e5       PUSH HL
6fd7 cdcd68   CALL 68cd      ;set display file address (HL) and bit (PIP)
6fda e1       POP  HL
6fdb 3a395c   LD   A,(5c39)  ;A=PIP
6fde fe01     CP   01
6fe0 caf06f   JP   Z,6ff0    ;if set, erase found key
6fe3 13       INC  DE
6fe4 23       INC  HL
6fe5 3a966f   LD   A,(6f96)
6fe8 3d       DEC  A
6fe9 32966f   LD   (6f96),A
6fec c2b56f   JP   NZ,6fb5
6fef c9       RET

;erase found key
6ff0 3e08     LD   A,08
6ff2 32347f   LD   (7f34),A
6ff5 32357f   LD   (7f35),A
6ff8 3e01     LD   A,01
6ffa 32377f   LD   (7f37),A  ;UDG offset key - 01=static
6ffd 3e02     LD   A,02
6fff 32367f   LD   (7f36),A  ;reset visibility
7002 3a996f   LD   A,(6f99)
7005 3c       INC  A
7006 32996f   LD   (6f99),A
7009 3e01     LD   A,01
700b 77       LD   (HL),A
700c cd3e7f   CALL 7f3e      ;graphics routine
700f c9       RET
;
7010 3eff     LD   A,ff
7012 32986f   LD   (6f98),A
7015 c3c56f   JP   6fc5
7018 3e10     LD   A,10
701a 81       ADD  A,C
701b 4f       LD   C,A
701c c3ce6f   JP   6fce

;check for key found - checked
701f 3e00     LD   A,00
7021 32986f   LD   (6f98),A
7024 cd9d6f   CALL 6f9d      ;set addresses/co-ords for level keys data
7027 3e01     LD   A,01
7029 32976f   LD   (6f97),A
702c 3e03     LD   A,03
702e 32966f   LD   (6f96),A
7031 cdb56f   CALL 6fb5      ;check for key found
7034 cd9d6f   CALL 6f9d      ;set addresses/co-ords for level keys data
7037 3e00     LD   A,00
7039 32976f   LD   (6f97),A
703c 3e00     LD   A,00
703e 32986f   LD   (6f98),A
7041 3e03     LD   A,03
7043 32966f   LD   (6f96),A
7046 cdb56f   CALL 6fb5      ;check for key found
7049 c9       RET

704a-70e3 00 ...             ;154 bytes

70e4 cde970   CALL 70e9      ;timer countdown
70e7 1842     JR   712b
;timer countdown
70e9 3a1471   LD   A,(7114)
70ec 3d       DEC  A
70ed 321471   LD   (7114),A
70f0 b7       OR   A
70f1 c0       RET  NZ
70f2 3e08     LD   A,08
70f4 321471   LD   (7114),A
70f7 3acf67   LD   A,(67cf)
70fa 3d       DEC  A
70fb 32cf67   LD   (67cf),A  ;decrement time units
70fe feff     CP   ff
7100 2801     JR   Z,7103
7102 c9       RET
7103 3e09     LD   A,09
7105 32cf67   LD   (67cf),A
7108 3acd67   LD   A,(67cd)
710b 3d       DEC  A
710c 32cd67   LD   (67cd),A  ;decrement time tens
710f feff     CP   ff
7111 2802     JR   Z,7115
7113 c9       RET
;
7114 08                      ;timer countdown delay counter

;timed out - reset timer & lose a life
7115 3e09     LD   A,09
7117 32cd67   LD   (67cd),A
711a 32cf67   LD   (67cf),A
711d 3e05     LD   A,05
711f 321471   LD   (7114),A
7122 3acb67   LD   A,(67cb)
7125 b7       OR   A
7126 c8       RET  Z
7127 3d       DEC  A
7128 32cb67   LD   (67cb),A  ;decrement lives
;
712b cd5c76   CALL 765c      ;set up moving platform data
712e cdac6d   CALL 6dac      ;print starting pad
7131 cd5c7c   CALL 7c5c      ;check for editor & music actions
7134 cd8877   CALL 7788      ;set top line to PAPER 0, INK 3
7137 c9       RET

7138-7147 00 ...             ;16 bytes
7148 0303                    ;level bonus (twice)
714a-714f 00 ...             ;6 bytes

;unreferenced data - checked
;old character set fragment (see 71c2)
7150 181818181800181866666600

;workspace for next routine
715c 040003

;print lives & set platform colours
715f 3e03     LD   A,03
7161 328f5c   LD   (5c8f),A  ;ATTR_T=PAPER 0,INK 3
7164 3e16     LD   A,16
7166 d7       RST  #10       ;AT 0,18
7167 3e00     LD   A,00
7169 d7       RST  #10
716a 3e12     LD   A,12
716c d7       RST  #10
716d 3acb67   LD   A,(67cb)
7170 c630     ADD  A,30
7172 d7       RST  #10       ;lives
7173 0606     LD   B,06
7175 117472   LD   DE,7274
7178 211800   LD   HL,0018
717b 3acc67   LD   A,(67cc)  ;level
717e 3d       DEC  A         ;loop for address of platform colours
717f b7       OR   A
7180 2807     JR   Z,7189
7182 19       ADD  HL,DE
7183 eb       EX   DE,HL
7184 211800   LD   HL,0018
7187 18f5     JR   717e
;
7189 1a       LD   A,(DE)
718a 6f       LD   L,A
718b 13       INC  DE
718c 1a       LD   A,(DE)
718d 67       LD   H,A       ;HL=attribute byte address
718e 13       INC  DE
718f 1a       LD   A,(DE)
7190 13       INC  DE
7191 325c71   LD   (715c),A  ;=attribute setting
7194 1a       LD   A,(DE)
7195 325d71   LD   (715d),A  ;=span
7198 3a5c71   LD   A,(715c)
719b 77       LD   (HL),A    ;set attribute byte
719c 23       INC  HL
719d 3a5d71   LD   A,(715d)
71a0 3d       DEC  A
71a1 325d71   LD   (715d),A
71a4 b7       OR   A
71a5 2802     JR   Z,71a9
71a7 18ef     JR   7198      ;repeat for complete traverse
;
71a9 13       INC  DE
71aa 10dd     DJNZ 7189      ;repeat for 6 platforms
;
71ac 3a5e71   LD   A,(715e)
71af fe07     CP   07
71b1 2808     JR   Z,71bb
71b3 3c       INC  A         ;cycle temporary attribute (02-07)
71b4 325e71   LD   (715e),A
71b7 cdf373   CALL 73f3      ;choose/set level bonus
71ba c9       RET
71bb 3e02     LD   A,02      ;restart temporary attribute cycle
71bd 325e71   LD   (715e),A
71c0 18f5     JR   71b7

;--- Listing 6, line 170.
;    The missing character in this block was restored with an 'a' at 724a.
;--- Listing 6, line 180.
;    The missing character in this block was restored with an 'f' at 7266.
;Area from 71c2-7273 is part of the character set now starting at 5dc0,
;so it's just irrelevant junk data now.
71c2 060c183060007cfec6c6c6c6fe7c1838
71d2 78181818fefe7cfe067efcc0fefe7cfe
71e2 c61c1ec6fe7c1c3c7cecccfefe1cfefe
71f2 c0fcfe06fe7c7cfcc0fcfec6fe7cfefe
7202 060c183030307cfec67cfec6fe7c7cfe
7212 c6fe7e06fefc00003030000030300000
7222 30300030306000000c1830180c000000
7232 3e3e003e3e00000030180c1830007cfe
7242 ce1c180018185cfed[a]d6dec0fe7e7cfe;***missing character restored
7252 c6c6fefec6c6fcfec6fcfec6fefc7cfe
7262 e6c0c0e6[f]e7cf8fccec6c6cefcf8fefe;***missing character restored
7272 c0fc

;--- Platform attribute data.
;    6 platforms x 4 bytes = 24 bytes per level.
;    Each 4 bytes is lo/hi-byte of address + attributes + length.
7274 c5580206 2c594208 97590308 a5594106 ee590406 405a4320 ;level 1
7274 c5580205          98590307 a3594105 ee590406          ;***changed
728c 8a580410 e2580504 2959030e 9a590104 ca59020d 405a0420 ;level 2
728c                   2959030c                            ;***changed
72a4 eb580208 f8580405 41590507 a659030e 185a4207 405a0120 ;level 3
72bc c6580c0f 39590405 80590c02 8f590207 e7590405 405a0320 ;level 4
72bc          3b590403          91590209                   ;***changed
72d4 e6580114 40590302 5e590502 c0590202 de590402 405a0120 ;level 5

;another unused character set fragment
72ec 30303030c6c6c6c6c6c6fe7cc6c6c6c6
72fc c6ee7c38c6c6c6c6c6d6fe6cc3e77e3c
730c 3c7ee7c386cefc7830303030fefe1c38
731c 70e0fefe000e080808080e0000004020
732c 10080400007010101010700000103854

;update status bar
733c 3e00     LD   A,00
733e 323c5c   LD   (5c3c),A  ;TVFLAG=0
7341 cd5f71   CALL 715f      ;print lives & set platform colours
7344 3e16     LD   A,16
7346 d7       RST  #10       ;AT 0,30
7347 3e00     LD   A,00
7349 d7       RST  #10
734a 3e1e     LD   A,1e
734c d7       RST  #10
734d 3acf67   LD   A,(67cf)
7350 c630     ADD  A,30
7352 d7       RST  #10       ;time units
7353 3e16     LD   A,16
7355 d7       RST  #10       ;AT 0,29
7356 3e00     LD   A,00
7358 d7       RST  #10
7359 3e1d     LD   A,1d
735b d7       RST  #10
735c 3acd67   LD   A,(67cd)
735f c630     ADD  A,30
7361 d7       RST  #10       ;time tens
7362 3acc67   LD   A,(67cc)  ;level
7365 fe04     CP   04
7367 cae473   JP   Z,73e4    ;jump to add 1000 to score display on level 4
736a 3a936f   LD   A,(6f93)  ;returns here
736d 47       LD   B,A
736e 3a946f   LD   A,(6f94)
7371 80       ADD  A,B
7372 4f       LD   C,A
7373 3a956f   LD   A,(6f95)
7376 81       ADD  A,C
7377 32ca67   LD   (67ca),A
737a 3a4871   LD   A,(7148)
737d 47       LD   B,A
737e 3aca67   LD   A,(67ca)
7381 80       ADD  A,B
7382 32ca67   LD   (67ca),A
7385 3e16     LD   A,16
7387 d7       RST  #10       ;AT 0,8
7388 3e00     LD   A,00
738a d7       RST  #10
738b 3e08     LD   A,08
738d d7       RST  #10
738e 3aca67   LD   A,(67ca)
7391 c630     ADD  A,30
7393 d7       RST  #10       ;sum of keys found + level bonus
7394 3a056f   LD   A,(6f05)
7397 feff     CP   ff
7399 2818     JR   Z,73b3    ;monster collision
739b c9       RET

;this routine is never called
739c 06ff     LD   B,ff      ;B=loop counter (ff)
739e dbfe     IN   A,(fe)
73a0 324a71   LD   (714a),A  ;save keyboard input byte
73a3 3e00     LD   A,00      ;<<<loop returns here
73a5 d3fe     OUT  (fe),A
73a7 3e10     LD   A,10
73a9 d3fe     OUT  (fe),A
73ab 10f6     DJNZ 73a3
73ad 3a4a71   LD   A,(714a)  ;restore keyboard input byte
73b0 d3fe     OUT  (fe),A
73b2 c9       RET

;monster collision - checked
73b3 0617     LD   B,17
73b5 c5       PUSH BC
73b6 06ff     LD   B,ff
73b8 3e02     LD   A,02
73ba d3fe     OUT  (fe),A
73bc 3e12     LD   A,12
73be d3fe     OUT  (fe),A
73c0 10f6     DJNZ 73b8
73c2 c1       POP  BC
73c3 10f0     DJNZ 73b5
73c5 3e00     LD   A,00
73c7 d3fe     OUT  (fe),A
73c9 3e10     LD   A,10
73cb d3fe     OUT  (fe),A
73cd 3e00     LD   A,00
73cf 32056f   LD   (6f05),A  ;reset monster collision flag
73d2 3acb67   LD   A,(67cb)
73d5 fe00     CP   00
73d7 28c2     JR   Z,739b    ;if lives=0 (does a RET)
73d9 3d       DEC  A
73da 32cb67   LD   (67cb),A  ;decrement lives
73dd 3e00     LD   A,00
73df 32056f   LD   (6f05),A  ;reset monster collision flag (again)
73e2 18b7     JR   739b      ;(does a RET)

;add 1000 to score display on level 4
73e4 3e16     LD   A,16
73e6 d7       RST  #10       ;AT 0,7
73e7 3e00     LD   A,00
73e9 d7       RST  #10
73ea 3e07     LD   A,07
73ec d7       RST  #10
73ed 3e31     LD   A,31      ;"1"
73ef d7       RST  #10
73f0 c36a73   JP   736a

;choose level bonus
73f3 3a4971   LD   A,(7149)
73f6 feff     CP   ff
73f8 c8       RET  Z
73f9 3acc67   LD   A,(67cc)
73fc fe01     CP   01
73fe 281d     JR   Z,741d
7400 3acc67   LD   A,(67cc)
7403 fe02     CP   02
7405 281f     JR   Z,7426
7407 3acc67   LD   A,(67cc)
740a fe03     CP   03
740c 2821     JR   Z,742f
740e 3acc67   LD   A,(67cc)
7411 fe04     CP   04
7413 2823     JR   Z,7438
7415 3acc67   LD   A,(67cc)
7418 fe05     CP   05
741a 2825     JR   Z,7441
741c c9       RET
;
741d 3e00     LD   A,00      ;set level 1 bonus
741f 324871   LD   (7148),A
7422 324971   LD   (7149),A
7425 c9       RET
7426 3e03     LD   A,03      ;set level 2 bonus
7428 324871   LD   (7148),A
742b 324971   LD   (7149),A
742e c9       RET
742f 3e06     LD   A,06      ;set level 3 bonus
7431 324871   LD   (7148),A
7434 324971   LD   (7149),A
7437 c9       RET
7438 3e00     LD   A,00      ;set level 4 bonus
743a 324871   LD   (7148),A
743d 324971   LD   (7149),A
7440 c9       RET
7441 3e03     LD   A,03      ;set level 5 bonus
7443 324871   LD   (7148),A
7446 324971   LD   (7149),A
7449 c9       RET

;choose monsters for level
744a 3e03     LD   A,03
744c 32fb6d   LD   (6dfb),A  ;set number of monsters=03
744f 3acc67   LD   A,(67cc)  ;level
7452 fe01     CP   01
7454 2812     JR   Z,7468
7456 fe02     CP   02
7458 282f     JR   Z,7489
745a fe03     CP   03
745c 284c     JR   Z,74aa
745e fe04     CP   04
7460 2869     JR   Z,74cb
7462 fe05     CP   05
7464 caec74   JP   Z,74ec
7467 c9       RET
;select level 1 monster data
7468 3e92     LD   A,92      ;UDG=6092
746a 327b5c   LD   (5c7b),A
746d 3e60     LD   A,60
746f 327c5c   LD   (5c7c),A
7472 210e67   LD   HL,670e   ;address of
7475 7c       LD   A,H
7476 32f76d   LD   (6df7),A
7479 7d       LD   A,L
747a 32f86d   LD   (6df8),A
747d 01fc6d   LD   BC,6dfc   ;address of animation flags
7480 78       LD   A,B
7481 32f96d   LD   (6df9),A
7484 79       LD   A,C
7485 32fa6d   LD   (6dfa),A
7488 c9       RET
;select level 2 monster data
7489 3e52     LD   A,52      ;UDG=6152
748b 327b5c   LD   (5c7b),A
748e 3e61     LD   A,61
7490 327c5c   LD   (5c7c),A
7493 212067   LD   HL,6720   ;address of
7496 7c       LD   A,H
7497 32f76d   LD   (6df7),A
749a 7d       LD   A,L
749b 32f86d   LD   (6df8),A
749e 01026e   LD   BC,6e02   ;address of animation flags
74a1 78       LD   A,B
74a2 32f96d   LD   (6df9),A
74a5 79       LD   A,C
74a6 32fa6d   LD   (6dfa),A
74a9 c9       RET
;select level 3 monster data
74aa 3e12     LD   A,12      ;UDG=6212
74ac 327b5c   LD   (5c7b),A
74af 3e62     LD   A,62
74b1 327c5c   LD   (5c7c),A
74b4 213267   LD   HL,6732   ;address of
74b7 7c       LD   A,H
74b8 32f76d   LD   (6df7),A
74bb 7d       LD   A,L
74bc 32f86d   LD   (6df8),A
74bf 01086e   LD   BC,6e08   ;address of animation flags
74c2 78       LD   A,B
74c3 32f96d   LD   (6df9),A
74c6 79       LD   A,C
74c7 32fa6d   LD   (6dfa),A
74ca c9       RET
;select level 4 monster data
74cb 3ed2     LD   A,d2      ;UDG=62d2
74cd 327b5c   LD   (5c7b),A
74d0 3e62     LD   A,62
74d2 327c5c   LD   (5c7c),A
74d5 214467   LD   HL,6744   ;address of
74d8 7c       LD   A,H
74d9 32f76d   LD   (6df7),A
74dc 7d       LD   A,L
74dd 32f86d   LD   (6df8),A
74e0 010e6e   LD   BC,6e0e   ;address of animation flags
74e3 78       LD   A,B
74e4 32f96d   LD   (6df9),A
74e7 79       LD   A,C
74e8 32fa6d   LD   (6dfa),A
74eb c9       RET
;select level 5 monster data
74ec 3e92     LD   A,92      ;UDG=6292
74ee 327b5c   LD   (5c7b),A
74f1 3e62     LD   A,62
74f3 327c5c   LD   (5c7c),A
74f6 215667   LD   HL,6756   ;address of
74f9 7c       LD   A,H
74fa 32f76d   LD   (6df7),A
74fd 7d       LD   A,L
74fe 32f86d   LD   (6df8),A
7501 01146e   LD   BC,6e14   ;address of animation flags
                             ;***LD BC,6e0a changed to LD BC,6e14
7504 78       LD   A,B
7505 32f96d   LD   (6df9),A
7508 79       LD   A,C
7509 32fa6d   LD   (6dfa),A
750c c9       RET
;choose monster level data
750d 3acc67   LD   A,(67cc)  ;level
7510 fe01     CP   01
7512 2811     JR   Z,7525
7514 fe02     CP   02
7516 2811     JR   Z,7529
7518 fe03     CP   03
751a 2811     JR   Z,752d
751c fe04     CP   04
751e 2811     JR   Z,7531
7520 fe05     CP   05
7522 2811     JR   Z,7535
7524 c9       RET
;
7525 210e67   LD   HL,670e   ;monster level 1 data address
7528 c9       RET
7529 212067   LD   HL,6720   ;monster level 2 data address
752c c9       RET
752d 213267   LD   HL,6732   ;monster level 3 data address
7530 c9       RET
7531 214467   LD   HL,6744   ;monster level 4 data address
7534 c9       RET
7535 215667   LD   HL,6756   ;monster level 5 data address
7538 c9       RET

;game - check for right/left direction joystick input - bits 000FUDLR
7539 af       XOR  A         ;***NOP changed to XOR A
753a db1f     IN   A,(1f)
753c feff     CP   ff        ;no joystick
753e c8       RET  Z
753f fe03     CP   03        ;***CP 38 changed to CP 03
7541 d0       RET  NC        ;***RET Z changed to RET NC
7542 00       NOP            ;***IN A,(1f) changed to NOP,NOP
7543 00       NOP
7544 cb47     BIT  0,A
7546 c22b69   JP   NZ,692b   ;right
7549 cb4f     BIT  1,A
754b c21869   JP   NZ,6918   ;left
754e c9       RET

754f-7574 00 ...             ;38 bytes

;game - check for up+right/left direction joystick input - bits 000FUDLR
7575 af       XOR  A         ;***NOP changed to XOR A
7576 db1f     IN   A,(1f)
7578 feff     CP   ff        ;no joystick
757a c8       RET  Z
757b fe38     CP   38        ;no joystick
757d c8       RET  Z
757e 00       NOP            ;***IN A,(1f) changed to NOP,NOP
757f 00       NOP
7580 fe11     CP   11        ;fire+right
7582 cad26a   JP   Z,6ad2
7585 fe12     CP   12        ;fire+left
7587 ca5e6a   JP   Z,6a5e
758a c9       RET

758b-7593 00 ...             ;9 bytes

;moving platform data - checked
7594 ad3701a3ba              ;level 1
7599 1033020232              ;level 2
759e a077019fac              ;level 3
75a3 6237016170              ;level 4
75a8 c834021eca              ;level 5
;
75ad 007ffe55542aaa7ffe

75b6-765b 00 ...             ;166 bytes

;set up moving platform data
765c 3eae     LD   A,ae
765e 327b5c   LD   (5c7b),A
7661 3e75     LD   A,75
7663 327c5c   LD   (5c7c),A  ;UDG=75ae
7666 cd6c76   CALL 766c      ;choose moving platform data for level
7669 1832     JR   769d
766b c9       RET
;choose moving platform data for level
766c 3acc67   LD   A,(67cc)  ;level
766f fe01     CP   01
7671 cc8976   CALL Z,7689
7674 fe02     CP   02
7676 cc8d76   CALL Z,768d
7679 fe03     CP   03
767b cc9176   CALL Z,7691
767e fe04     CP   04
7680 cc9576   CALL Z,7695
7683 fe05     CP   05
7685 cc9976   CALL Z,7699
7688 c9       RET
;set moving platform data address for level
7689 219475   LD   HL,7594
768c c9       RET
768d 219975   LD   HL,7599
7690 c9       RET
7691 219e75   LD   HL,759e
7694 c9       RET
7695 21a375   LD   HL,75a3
7698 c9       RET
7699 21a875   LD   HL,75a8
769c c9       RET
;print moving platform - checked
769d 7e       LD   A,(HL)
769e 32327f   LD   (7f32),A
76a1 23       INC  HL
76a2 7e       LD   A,(HL)
76a3 32337f   LD   (7f33),A
76a6 3e10     LD   A,10
76a8 32347f   LD   (7f34),A
76ab 3e04     LD   A,04
76ad 32357f   LD   (7f35),A
76b0 328f5c   LD   (5c8f),A  ;ATTR_T=PAPER 0,INK 4
76b3 3e01     LD   A,01
76b5 32367f   LD   (7f36),A  ;set visibility
76b8 32377f   LD   (7f37),A  ;UDG offset key - 01=static
76bb cd3e7f   CALL 7f3e      ;graphics routine
76be cd6c76   CALL 766c      ;choose moving platform data for level
76c1 23       INC  HL
76c2 23       INC  HL
76c3 7e       LD   A,(HL)
76c4 fe01     CP   01
76c6 2805     JR   Z,76cd
76c8 fe02     CP   02
76ca 280b     JR   Z,76d7
76cc c9       RET
;
76cd 23       INC  HL
76ce 7e       LD   A,(HL)
76cf 2b       DEC  HL
76d0 2b       DEC  HL
76d1 2b       DEC  HL
76d2 be       CP   (HL)
76d3 280e     JR   Z,76e3
76d5 35       DEC  (HL)
76d6 c9       RET
;
76d7 23       INC  HL
76d8 23       INC  HL
76d9 7e       LD   A,(HL)
76da 2b       DEC  HL
76db 2b       DEC  HL
76dc 2b       DEC  HL
76dd 2[b]     DEC  HL        ;missing character restored
76de be       CP   (HL)
76df 2806     JR   Z,76e7
76e1 34       INC  (HL)
76e2 c9       RET
;
76e3 23       INC  HL
76e4 23       INC  HL
76e5 34       INC  (HL)
76e6 c9       RET
;
76e7 23       INC  HL
76e8 23       INC  HL
76e9 35       DEC  (HL)
76ea c9       RET

76eb-7723 00 ...             ;57 bytes

;SFX routine
7724 f3       DI
7725 110503   LD   DE,0305   ;value may be altered to 0f00 or 6464
7728 2602     LD   H,02      ;value may be altered to ff or 32
772a 3a485c   LD   A,(5c48)  ;A=BORDCR
772d 1f       RRA
772e 1f       RRA
772f 1f       RRA            ;A=rotate border colour code to RH-side
7730 0efe     LD   C,fe
7732 ee10     XOR  A,10
7734 ed79     OUT  (C),A
7736 43       LD   B,E
7737 10fe     DJNZ 7737      ;short pause
7739 25       DEC  H
773a 20f4     JR   NZ,7730
773c 1d       DEC  E         ;command may be altered to INC E
773d 15       DEC  D
773e 20e8     JR   NZ,7728
7740 fb       EI
7741 c9       RET

;unreferenced data - checked
7742 0000
;copyright symbol
7744 3c42bda1a1bd423c
;
774c-7787 00 ...             ;60 bytes

;set top line to PAPER 0, INK 3
7788 210058   LD   HL,5800
778b 0620     LD   B,20
778d 3e03     LD   A,03
778f 77       LD   (HL),A
7790 23       INC  HL
7791 10fc     DJNZ 778f
7793 c9       RET
7794 00       NOP
7795 00       NOP
7796 00       NOP

;print level title
7797 af       XOR  A
7798 323c5c   LD   (5c3c),A  ;TVFLAG=0
779b 112000   LD   DE,0020
779e 3acc67   LD   A,(67cc)  ;level
77a1 47       LD   B,A
77a2 21a677   LD   HL,77a6
77a5 19       ADD  HL,DE
77a6 112000   LD   DE,0020
77a9 10fa     DJNZ 77a5
77ab 3e16     LD   A,16      ;AT 21,0
77ad d7       RST  #10
77ae 3e15     LD   A,15
77b0 d7       RST  #10
77b1 af       XOR  A
77b2 d7       RST  #10
77b3 7e       LD   A,(HL)    ;char of level title
77b4 d7       RST  #10
77b5 23       INC  HL
77b6 3a6678   LD   A,(7866)
77b9 3d       DEC  A
77ba 326678   LD   (7866),A
77bd 20f4     JR   NZ,77b3
77bf 3e20     LD   A,20
77c1 216678   LD   HL,7866
77c4 77       LD   (HL),A
77c5 c9       RET

;level titles - checked
77c6 204c414952204f46205448452056414d
77d6 50495245204d555348524f4f4d532020
77e6 2020202020202020204f52494f4e5320
77f6 524556454e4745202020202020202020
7806 2020202020202020202042414e444552
7816 534e4154434820202020202020202020
7826 202020202020202020205945204f4c44
7836 4520424f524520202020202020202020
7846 20202020202020202020544845204341
7856 554c44524f4e20202020202020202020
7866 200000

;SFX sub-routine
7869 3e00     LD   A,00
786b 322677   LD   (7726),A  ;alter SFX routine code
786e 3e0f     LD   A,0f
7870 322777   LD   (7727),A  ;alter SFX routine code
7873 3e02     LD   A,02
7875 322977   LD   (7729),A  ;alter SFX routine code
7878 3e1c     LD   A,1c
787a 323c77   LD   (773c),A  ;alter SFX routine code
787d cd2477   CALL 7724      ;SFX routine
7880 3e05     LD   A,05
7882 322677   LD   (7726),A  ;alter SFX routine code
7885 3e03     LD   A,03
7887 322777   LD   (7727),A  ;alter SFX routine code
788a 3e1d     LD   A,1d
788c 323c77   LD   (773c),A  ;alter SFX routine code
788f cd2477   CALL 7724      ;SFX routine
7892 c9       RET

7893-78e5 00 ...             ;83 bytes

;START OF PROGRAM -  RANDOMIZE USR 30950
78e6 cd0c79   CALL 790c      ;set CHARS & RAMTOP then PRESS ANY KEY
78e9 cd9a68   CALL 689a      ;program initialisation
78ec cd7c5b   CALL 5b7c      ;print platforms for level
78ef cde166   CALL 66e1      ;print keys + level
78f2 cd9777   CALL 7797      ;print level title
78f5 c32c7e   JP   7e2c      ;check for completion of level
78f8 00       NOP
78f9 00       NOP

;check lives remaining
78fa 01fedf   LD   BC,dffe
78fd af       XOR  A
78fe ed79     OUT  (C),A
7900 cddc68   CALL 68dc      ;update the display
7903 3acb67   LD   A,(67cb)  ;lives
7906 b7       OR   A
7907 cae678   JP   Z,78e6    ;if no lives left, restart program
790a 18e9     JR   78f5      ;check for completion of level (does JP 7e2c)

;set CHARS & RAMTOP then PRESS ANY KEY
790c 3e5c     LD   A,5c      ;CHARS=5cc0 (data starts at 5dc0/24000)
790e 32375c   LD   (5c37),A
7911 3ec0     LD   A,c0
7913 32365c   LD   (5c36),A
7916 3e31     LD   A,31      ;RAMTOP=7f31/32561
7918 32b25c   LD   (5cb2),A
791b 3e7f     LD   A,7f
791d 32b35c   LD   (5cb3),A
7920 cd6b0d   CALL 0d6b,cls_stmt
7923 cd7679   CALL 7976      ;print PRESS ANY KEY message
7926 c9       RET
;
7927 7e       LD   A,(HL)    ;A=monster X co-ord
7928 d602     SUB  02        ;move left
792a 77       LD   (HL),A
792b 32327f   LD   (7f32),A
792e e5       PUSH HL
792f c5       PUSH BC
7930 d5       PUSH DE
7931 cd3e7f   CALL 7f3e      ;graphics routine
7934 d1       POP  DE
7935 c1       POP  BC
7936 e1       POP  HL
7937 7e       LD   A,(HL)
7938 fe32     CP   32        ;check for left margin
793a ca796e   JP   Z,6e79    ;does JR 6e65
793d d602     SUB  02
793f 77       LD   (HL),A
7940 c3796e   JP   6e79      ;does JR 6e65
7943 c9       RET
;
7944 7e       LD   A,(HL)    ;A=monster X co-ord
7945 c602     ADD  A,02      ;move right
7947 77       LD   (HL),A
7948 32327f   LD   (7f32),A
794b e5       PUSH HL
794c c5       PUSH BC
794d d5       PUSH DE
794e cd3e7f   CALL 7f3e      ;graphics routine
7951 d1       POP  DE
7952 c1       POP  BC
7953 e1       POP  HL
7954 7e       LD   A,(HL)
7955 fea6     CP   a6        ;check for right margin
7957 ca7f6e   JP   Z,6e7f    ;does JR 6e6b
795a c602     ADD  A,02
795c 77       LD   (HL),A
795d c37f6e   JP   6e7f      ;does JR 6e6b

;this routine is never called
7960 3e64     LD   A,64
7962 322777   LD   (7727),A  ;alter SFX routine code
7965 3eff     LD   A,ff
7967 322977   LD   (7729),A  ;alter SFX routine code
796a 3e1c     LD   A,1c
796c 323c77   LD   (773c),A  ;alter SFX routine code
796f cd2477   CALL 7724      ;SFX routine
7972 cd6b0d   CALL 0d6b,cls_stmt
7975 c9       RET

;print PRESS ANY KEY message
7976 af       XOR  A
7977 323c5c   LD   (5c3c),A  ;TVFLAG=0
797a 21ab79   LD   HL,79ab
797d 3e14     LD   A,14
797f d7       RST  #10       ;INVERSE 1
7980 3e01     LD   A,01
7982 d7       RST  #10
7983 3e16     LD   A,16
7985 d7       RST  #10       ;AT 10,9
7986 3e0a     LD   A,0a
7988 d7       RST  #10
7989 3e09     LD   A,09
798b d7       RST  #10
798c 7e       LD   A,(HL)
798d d7       RST  #10       ;char of message
798e 23       INC  HL
798f 3e14     LD   A,14      ;INVERSE 1
7991 d7       RST  #10
7992 3e01     LD   A,01
7994 d7       RST  #10
7995 3ab879   LD   A,(79b8)
7998 3d       DEC  A
7999 32b879   LD   (79b8),A
799c 20ee     JR   NZ,798c
799e 3e0d     LD   A,0d
79a0 21b879   LD   HL,79b8
79a3 77       LD   (HL),A
79a4 cdde15   CALL 15de,wait_key_1
79a7 cdaf0d   CALL 0daf,cl_all
79aa c9       RET

;PRESS ANY KEY message data - checked
79ab 505245535320414e59204b45590d0000
79bb 2020202020202020202020202020

;check for CAPS+V - enable editor
79c9 af       XOR  A
79ca dbfe     IN   A,(fe)
79cc feae     CP   ae        ;CAPS+V - enable editor
79ce 280e     JR   Z,79de
79d0 af       XOR  A
79d1 db1f     IN   A,(1f)
79d3 fe04     CP   04        ;checks for joystick down
79d5 00       NOP            ;but takes no action
79d6 00       NOP
79d7 00       NOP
79d8 3e15     LD   A,15      ;OVER 0
79da d7       RST  #10
79db af       XOR  A
79dc d7       RST  #10
79dd c9       RET

;platform editor
79de af       XOR  A
79df 323c5c   LD   (5c3c),A  ;TVFLAG=0
79e2 3ef7     LD   A,f7
79e4 327b5c   LD   (5c7b),A
79e7 3e66     LD   A,66
79e9 327c5c   LD   (5c7c),A  ;UDG=66f7
79ec 3e0a     LD   A,0a
79ee 32977a   LD   (7a97),A
79f1 32987a   LD   (7a98),A
79f4 af       XOR  A
79f5 dbfe     IN   A,(fe)
79f7 febe     CP   be        ;editor: CAPS - left
79f9 cc3f7a   CALL Z,7a3f
79fc febd     CP   bd        ;editor: Z - right
79fe cc497a   CALL Z,7a49
7a01 febb     CP   bb        ;editor: X - up/down
7a03 cc547a   CALL Z,7a54
7a06 feb7     CP   b7        ;editor: C - mark/unmark
7a08 cc667a   CALL Z,7a66
7a0b 3e15     LD   A,15
7a0d d7       RST  #10       ;OVER 1
7a0e 3e01     LD   A,01
7a10 d7       RST  #10
7a11 3e16     LD   A,16
7a13 d7       RST  #10       ;AT ?,?
7a14 3a987a   LD   A,(7a98)
7a17 d7       RST  #10
7a18 3a977a   LD   A,(7a97)
7a1b d7       RST  #10
7a1c 3e2b     LD   A,2b
7a1e d7       RST  #10       ;"+"
7a1f 3e15     LD   A,15
7a21 d7       RST  #10       ;OVER 1
7a22 3e01     LD   A,01
7a24 d7       RST  #10
7a25 3e16     LD   A,16
7a27 d7       RST  #10       ;AT ?,?
7a28 3a987a   LD   A,(7a98)
7a2b d7       RST  #10
7a2c 3a977a   LD   A,(7a97)
7a2f d7       RST  #10
7a30 3e2b     LD   A,2b
7a32 d7       RST  #10       ;"+"
7a33 af       XOR  A
7a34 dbfe     IN   A,(fe)
7a36 feaf     CP   af        ;disable editor
7a38 c8       RET  Z
7a39 06ff     LD   B,ff
7a3b 10fe     DJNZ 7a3b      ;short pause
7a3d 18b5     JR   79f4

;cursor left
7a3f 3a977a   LD   A,(7a97)
7a42 b7       OR   A
7a43 c8       RET  Z
7a44 3d       DEC  A
7a45 32977a   LD   (7a97),A
7a48 c9       RET
;cursor right
7a49 3a977a   LD   A,(7a97)
7a4c fe1f     CP   1f
7a4e c8       RET  Z
7a4f 3c       INC  A
7a50 32977a   LD   (7a97),A
7a53 c9       RET
;cursor up/down
7a54 3a987a   LD   A,(7a98)
7a57 fe02     CP   02
7a59 2805     JR   Z,7a60
7a5b 3d       DEC  A
7a5c 32987a   LD   (7a98),A
7a5f c9       RET
7a60 3e11     LD   A,11
7a62 32987a   LD   (7a98),A
7a65 c9       RET
;mark/unmark
7a66 3a997a   LD   A,(7a99)
7a69 feff     CP   ff
7a6b 2807     JR   Z,7a74
7a6d 3eff     LD   A,ff
7a6f 32997a   LD   (7a99),A
7a72 1804     JR   7a78
7a74 af       XOR  A
7a75 32997a   LD   (7a99),A
7a78 3e15     LD   A,15
7a7a d7       RST  #10       ;OVER 0
7a7b af       XOR  A
7a7c d7       RST  #10
7a7d 3e16     LD   A,16
7a7f d7       RST  #10       ;AT ?,?
7a80 3a987a   LD   A,(7a98)
7a83 d7       RST  #10
7a84 3a977a   LD   A,(7a97)
7a87 d7       RST  #10
7a88 3a997a   LD   A,(7a99)
7a8b feff     CP   ff
7a8d 2804     JR   Z,7a93
7a8f 3e90     LD   A,90
7a91 d7       RST  #10       ;graphic "A"
7a92 c9       RET
7a93 3e20     LD   A,20
7a95 d7       RST  #10       ;" "
7a96 c9       RET

7a97 000a00

;this routine (identical to 7acf) is never called
7a9a 3a0967   LD   A,(6709)
7a9d 3c       INC  A
7a9e 320967   LD   (6709),A  ;increment Y co-ord
7aa1 cdec68   CALL 68ec      ;print Merlin
7aa4 cd9f6c   CALL 6c9f      ;check for collision left/right+up
7aa7 3a3d64   LD   A,(643d)
7aaa fe05     CP   05
7aac c8       RET  Z
7aad 3a0967   LD   A,(6709)
7ab0 3c       INC  A
7ab1 320967   LD   (6709),A  ;increment Y co-ord
7ab4 3a0967   LD   A,(6709)
7ab7 3c       INC  A
7ab8 320967   LD   (6709),A  ;increment Y co-ord
7abb cdec68   CALL 68ec      ;print Merlin
7abe cd9f6c   CALL 6c9f      ;check for collision left/right+up
7ac1 3a3d64   LD   A,(643d)
7ac4 fe05     CP   05
7ac6 c8       RET  Z
7ac7 3a0967   LD   A,(6709)
7aca 3c       INC  A
7acb 320967   LD   (6709),A  ;increment Y co-ord
7ace c9       RET
;this routine (identical to 7a9a) is never called
7acf 3a0967   LD   A,(6709)
7ad2 3c       INC  A
7ad3 320967   LD   (6709),A  ;increment Y co-ord
7ad6 cdec68   CALL 68ec      ;print Merlin
7ad9 cd9f6c   CALL 6c9f      ;check for collision left/right+up
7adc 3a3d64   LD   A,(643d)
7adf fe05     CP   05
7ae1 c8       RET  Z
7ae2 3a0967   LD   A,(6709)
7ae5 3c       INC  A
7ae6 320967   LD   (6709),A  ;increment Y co-ord
7ae9 3a0967   LD   A,(6709)
7aec 3c       INC  A
7aed 320967   LD   (6709),A
7af0 cdec68   CALL 68ec      ;print Merlin
7af3 cd9f6c   CALL 6c9f      ;check for collision left/right+up
7af6 3a3d64   LD   A,(643d)
7af9 fe05     CP   05
7afb c8       RET  Z
7afc 3a0967   LD   A,(6709)
7aff 3c       INC  A
7b00 320967   LD   (6709),A  ;increment Y co-ord
7b03 c9       RET

;check for save/load game
7b04 af       XOR  A
7b05 ed79     OUT  (C),A
7b07 af       XOR  A
7b08 d3fe     OUT  (fe),A
7b0a 06ff     LD   B,ff
7b0c dbfe     IN   A,(fe)
7b0e feb5     CP   b5        ;Z+C - save game
7b10 2809     JR   Z,7b1b
7b12 feb4     CP   b4        ;CAPS+Z+C - load game
7b14 2822     JR   Z,7b38
7b16 10f4     DJNZ 7b0c
7b18 c36978   JP   7869      ;SFX sub-routine
;save game
7b1b a7       AND  A
7b1c 3eff     LD   A,ff
7b1e dd210040 LD   IX,4000
7b22 11b33f   LD   DE,3fb3
7b25 cdc204   CALL 04c2,sa_bytes
7b28 a7       AND  A
7b29 3eff     LD   A,ff
7b2b dd21bc7f LD   IX,7fbc
7b2f 114400   LD   DE,0044
7b32 cdc204   CALL 04c2,sa_bytes
7b35 c36978   JP   7869      ;SFX sub-routine
;load game
7b38 37       SCF
7b39 3eff     LD   A,ff
7b3b dd210040 LD   IX,4000
7b3f 11b33f   LD   DE,3fb3
7b42 cd5605   CALL 0556,ld_bytes
7b45 37       SCF
7b46 3eff     LD   A,ff
7b48 dd21bc7f LD   IX,7fbc
7b4c 114400   LD   DE,0044
7b4f cd5605   CALL 0556,ld_bytes
7b52 c36978   JP   7869      ;SFX sub-routine


;partial title data - checked
;Presumably this was intended to spell out "MERLIN" with
;large letters formed of "#"s, but it's only a fragment,
;which wrapped at 32 columns looks like this:

;#.#......#.#.#.#....#....#....#.
;#.#......#.#.#.#....#....#....#.
;#.#......#.#.#.####.#....####.#.
;#.#.............................

7b55 23202320202020202023202320232023
7b65 20202020232020202023202020202320
7b75 23202320202020202023202320232023
7b85 20202020232020202023202020202320
7b95 23202320202020202023202320232023
7ba5 23232320232020202023232323202320
7bb5 23202320202020202020202020202020
7bc5 20202020202020202020202020202020
7bd5 20202020202020202020202020202020
7be5 20202020202020202020202020202020
7bf5 20202020202020202020202020202020
7c05 20202020202020202020202020202020
7c15 20202020202020202020202020202020
7c25 20202020202020202020202020202020
7c35 202020202020
;"     BY JUSTIN STAINES (C)      "
7c3b 20202020204259204a555354494e2053
7c4b 5441494e455320284329202020202020
7c5b 00

;check for editor & music actions
7c5c cdc979   CALL 79c9      ;check for CAPS+V - enable editor
7c5f cd9c7c   CALL 7c9c      ;check for music
7c62 c9       RET

7c63-7c9b 00 ...             ;57 bytes

7c9c af       XOR  A
7c9d 01fedf   LD   BC,dffe
7ca0 ed79     OUT  (C),A
7ca2 181f     JR   7cc3

;workspace for next routine - checked
7ca4 00dcbae5a4dcfadc8edc848ebadc8c68
7cb4 68788c566868788c8c8c7868ff7cba

;music
7cc3 dbfe     IN   A,(fe)
7cc5 feaf     CP   af        ;V - music on/off
7cc7 2852     JR   Z,7d1b
7cc9 3aa47c   LD   A,(7ca4)
7ccc feff     CP   ff
7cce c8       RET  Z
7ccf 3ac17c   LD   A,(7cc1)
7cd2 47       LD   B,A
7cd3 3ac27c   LD   A,(7cc2)
7cd6 4f       LD   C,A
7cd7 110f00   LD   DE,000f
7cda af       XOR  A
7cdb 67       LD   H,A
7cdc 0a       LD   A,(BC)
7cdd 6f       LD   L,A
7cde 010000   LD   BC,0000
7ce1 af       XOR  A
7ce2 cdb503   CALL 03b5,beeper
7ce5 3ac17c   LD   A,(7cc1)
7ce8 47       LD   B,A
7ce9 3ac27c   LD   A,(7cc2)
7cec 4f       LD   C,A
7ced 0a       LD   A,(BC)
7cee feff     CP   ff
7cf0 281c     JR   Z,7d0e
7cf2 03       INC  BC
7cf3 78       LD   A,B
7cf4 32c17c   LD   (7cc1),A
7cf7 79       LD   A,C
7cf8 32c27c   LD   (7cc2),A
7cfb 0610     LD   B,10
7cfd 3e10     LD   A,10
7cff d3fe     OUT  (fe),A
7d01 3e00     LD   A,00
7d03 d3fe     OUT  (fe),A
7d05 10f6     DJNZ 7cfd
7d07 01fedf   LD   BC,dffe
7d0a cd047b   CALL 7b04      ;check for save/load game
7d0d c9       RET
7d0e 01a57c   LD   BC,7ca5
7d11 78       LD   A,B
7d12 32c17c   LD   (7cc1),A
7d15 79       LD   A,C
7d16 32c27c   LD   (7cc2),A
7d19 18e0     JR   7cfb
;toggle music on/off
7d1b 3aa47c   LD   A,(7ca4)
7d1e feff     CP   ff
7d20 2805     JR   Z,7d27
7d22 fe00     CP   00
7d24 2807     JR   Z,7d2d
7d26 c9       RET
7d27 3e00     LD   A,00
7d29 32a47c   LD   (7ca4),A
7d2c c9       RET
7d2d 3eff     LD   A,ff
7d2f 32a47c   LD   (7ca4),A
7d32 c9       RET

7d33-7e03 00 ...             ;209 bytes

;unreferenced data - checked
7e04 db024d005c605244db024d000600632d
7e14 ac4500c6be22d068d068106a346a346a
7e24 346a346a346a346a

;check for completion of level
7e2c 3a0867   LD   A,(6708)  ;get X co-ord
7e2f b7       OR   A
7e30 c2fa78   JP   NZ,78fa   ;if not 00h, continue level
7e33 3a0967   LD   A,(6709)  ;get Y co-ord
7e36 fe31     CP   31
7e38 c2fa78   JP   NZ,78fa   ;if not 31h, continue level
7e3b 3a936f   LD   A,(6f93)  ;A=key1 found flag
7e3e b7       OR   A
7e3f cafa78   JP   Z,78fa    ;if not found, continue level
7e42 3a946f   LD   A,(6f94)  ;A=key2 found flag
7e45 b7       OR   A
7e46 cafa78   JP   Z,78fa    ;if not found, continue level
7e49 3a956f   LD   A,(6f95)  ;A=key3 found flag
7e4c b7       OR   A
7e4d cafa78   JP   Z,78fa    ;if not found, continue level
;end of level
7e50 210058   LD   HL,5800
7e53 010003   LD   BC,0300
7e56 3e01     LD   A,01      ;start of loop to clear attributes area
7e58 77       LD   (HL),A
7e59 23       INC  HL
7e5a 0b       DEC  BC
7e5b 78       LD   A,B
7e5c b1       OR   C
7e5d 20f7     JR   NZ,7e56
7e5f 3e64     LD   A,64
7e61 322677   LD   (7726),A  ;alter SFX routine code
7e64 3e64     LD   A,64
7e66 322777   LD   (7727),A  ;alter SFX routine code
7e69 3e32     LD   A,32
7e6b 322977   LD   (7729),A  ;alter SFX routine code
7e6e 3e1c     LD   A,1c
7e70 323c77   LD   (773c),A  ;alter SFX routine code
7e73 cd2477   CALL 7724      ;SFX routine
7e76 cdaf0d   CALL 0daf,cl_all
7e79 af       XOR  A
7e7a 32936f   LD   (6f93),A  ;reset key flag
7e7d 32946f   LD   (6f94),A  ;reset key flag
7e80 32956f   LD   (6f95),A  ;reset key flag
7e83 3acc67   LD   A,(67cc)
7e86 fe05     CP   05
7e88 cae678   JP   Z,78e6    ;game over
7e8b 3c       INC  A
7e8c 32cc67   LD   (67cc),A
7e8f c3ec78   JP   78ec      ;next level
7e92 c9       RET

;stack data
7e93 550808d068d068106a346a346a346a34
7ea3 6a346a346a346a346a346a346a346a34
7eb3 6a346a346a346a346a346a346a346a34
7ec3 6a346adb024d00db02db024d00030000
7ed3 0008585c03db024d00db024d00605880
7ee3 02e057db024d0007000000ec5a5c07f3
7ef3 0dce0be450ce0be5501c17dc0ace0beb
7f03 501617dc0ad718b133f15c0500db024d
7f13 00db024d00dc5a2400db5a4c07c05771
7f23 0ef30d2117c61e58ff761b0313003e
;RAMTOP marker at 7f31 (32561)

;workspace for graphics routine
7f32 002110010101000001010000

;graphics routine
7f3e dd2ab25c LD   IX,(5cb2) ;IX=RAMTOP   (7f31)
7f42 dd23     INC  IX        ;IX=RAMTOP+1 (7f32)
7f44 2a7b5c   LD   HL,(5c7b) ;HL=UDG start address
7f47 dd5e05   LD   E,(IX+05) ;UDG offset key: 01h,05h (right), 09h,0dh (left)
7f4a 1d       DEC  E
7f4b cb23     SLA  E
7f4d cb23     SLA  E
7f4f cb23     SLA  E         ;UDG offset: 00h,20h (right), 40h,60h (left)
7f51 1600     LD   D,00
7f53 19       ADD  HL,DE     ;HL=UDG char byte address (start + offset E)
7f54 eb       EX   DE,HL     ;DE=UDG char byte address (start + offset E)
7f55 dd4e00   LD   C,(IX+00) ;X co-ord
7f58 dd4601   LD   B,(IX+01) ;Y co-ord
7f5b dd7e03   LD   A,(IX+03) ;values: 01,04,08,10h (number of pixels)
;
7f5e f5       PUSH AF        ;<<<A-loop return point
7f5f c5       PUSH BC
7f60 dd7e02   LD   A,(IX+02)
7f63 dd7706   LD   (IX+06),A ;values: 08h,10h
7f66 cdaa22   CALL 22aa,pixel_add ;get pixel address
                             ;HL=address of display file byte
7f69 dd7707   LD   (IX+07),A ;A=pixel position within display byte (0-7)
7f6c dd3407   INC  (IX+07)   ;(IX+07)=position within display byte (1-8)
7f6f 2f       CPL
7f70 e607     AND  A,07      ;A=pixel position within display byte (7-0)
7f72 3c       INC  A
7f73 dd7708   LD   (IX+08),A ;(IX+08)=position within display byte (8-1)
7f76 d5       PUSH DE
7f77 e5       PUSH HL
7f78 cddb0b   CALL 0bdb,po_attr ;set attribute byte
7f7b e1       POP  HL        ;HL=address of display file byte
7f7c d1       POP  DE        ;DE=UDG char byte address
7f7d ddcb0446 BIT  0,(IX+04) ;visibility flag - values: 01,02
7f81 2005     JR   NZ,7f88
;(IX+04)=00000010 = invisible
7f83 010000   LD   BC,0000   ;if (IX+04)=2, BC=0000
7f86 1805     JR   7f8d
;(IX+04)=00000001 = visible
7f88 eb       EX   DE,HL     ;DE=display address, HL=UDG address
7f89 46       LD   B,(HL)
7f8a 23       INC  HL
7f8b 4e       LD   C,(HL)    ;if (IX+04)=1, BC=2 bytes of UDG char
7f8c eb       EX   DE,HL     ;DE=UDG address, HL=display address
;
7f8d dd360908 LD   (IX+09),08;set counter=08h
;
7f91 dd360a09 LD   (IX+0a),09;set counter=09h
7f95 7e       LD   A,(HL)    ;A=display file byte
7f96 dd3507   DEC  (IX+07)   ;decrement position within display byte (1-8)
7f99 2809     JR   Z,7fa4
;rotate left display byte, bit 7 to bit 0 & Carry
7f9b 07       RLCA           ;<<<(IX+07) loop return point
7f9c dd350a   DEC  (IX+0a)   ;decrement counter (0a-00)
7f9f dd3507   DEC  (IX+07)   ;decrement position within display byte (1-8)
7fa2 20f7     JR   NZ,7f9b
;(IX+07)=0
;shift left 2nd graphic byte, bit 0 reset & bit 7 to Carry
7fa4 cb21     SLA  C         ;<<<(IX+08) loop return point
;rotate left 1st graphic byte, Carry to bit 0 & bit 7 to Carry
7fa6 cb10     RL   B
;rotate left display byte, Carry to bit 0 & bit 7 to Carry
7fa8 17       RLA
7fa9 dd350a   DEC  (IX+0a)   ;decrement counter (0a-00)
7fac dd3506   DEC  (IX+06)   ;decrement counter (values: 08h,10h-00)
7faf 2013     JR   NZ,7fc4
;(IX+06)=0
7fb1 dd350a   DEC  (IX+0a)   ;decrement counter (0a-00)
7fb4 2806     JR   Z,7fbc
;rotate left display byte, bit 7 to bit 0 & Carry
7fb6 07       RLCA           ;<<<(IX+0a) loop return point
7fb7 dd350a   DEC  (IX+0a)   ;decrement counter (0a-00)
7fba 20fa     JR   NZ,7fb6
;(IX+0a)=0
7fbc 77       LD   (HL),A    ;update display byte
7fbd c1       POP  BC        ;BC=YX co-ords
7fbe f1       POP  AF        ;A=number of pixels remaining
7fbf 05       DEC  B         ;decrement Y co-ord
7fc0 3d       DEC  A         ;decrement number of pixels
7fc1 209b     JR   NZ,7f5e   ;if not zero, loop back for next pixel
7fc3 c9       RET            ;exit
;
7fc4 dd3509   DEC  (IX+09)   ;decrement counter (09-00)
7fc7 200a     JR   NZ,7fd3
7fc9 ddcb0446 BIT  0,(IX+04) ;values: 01,02
7fcd 2804     JR   Z,7fd3
;(IX+04)=00000001
7fcf eb       EX   DE,HL     ;DE=display address, HL=UDG address
7fd0 23       INC  HL
7fd1 1825     JR   7ff8
;
7fd3 dd3508   DEC  (IX+08)   ;decrement position within display byte (8-1)
7fd6 20cc     JR   NZ,7fa4
7fd8 dd350a   DEC  (IX+0a)   ;decrement counter (0a-00)
7fdb 2806     JR   Z,7fe3
;rotate left display byte, bit 7 to bit 0 & Carry
7fdd 07       RLCA           ;<<<(IX+0a) loop return point
7fde dd350a   DEC  (IX+0a)   ;decrement counter (0a-00)
7fe1 20fa     JR   NZ,7fdd
;(IX+0a)=0
7fe3 77       LD   (HL),A    ;update display byte
7fe4 23       INC  HL
7fe5 d5       PUSH DE
7fe6 e5       PUSH HL
7fe7 f5       PUSH AF
7fe8 cddb0b   CALL 0bdb,po_attr ;set attribute byte
7feb f1       POP  AF
7fec e1       POP  HL
7fed d1       POP  DE
7fee dd360808 LD   (IX+08),08;(IX+08)=position within display byte (8-1)
7ff2 dd360701 LD   (IX+07),01;(IX+07)=position within display byte (1-8)
7ff6 1899     JR   7f91
;
7ff8 4e       LD   C,(HL)
7ff9 eb       EX   DE,HL     ;DE=UDG address, HL=display address
7ffa dd360908 LD   (IX+09),09;reset counter (09-00)
7ffe 18d3     JR   7fd3

;-- end