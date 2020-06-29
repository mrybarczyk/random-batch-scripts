@ECHO off
SET uno[0]=alfa
SET uno[1]=beta
SET uno[2]=gamma
SET /A liczba=%RANDOM% * 3 / 32768
SETLOCAL EnableDelayedExpansion 
ECHO !uno[%liczba%]!
ENDLOCAL