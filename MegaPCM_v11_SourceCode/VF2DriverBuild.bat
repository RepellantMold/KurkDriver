@echo off

set USEANSI=n
as\asl -c -t 3 -L -A -xx VF2Driver.asm
as\p2bin VF2Driver.p VF2Driver.z80 -r 0x-0x

pause