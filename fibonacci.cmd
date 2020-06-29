@ECHO OFF

SET nz=0
SET nj=1
SET nw=1

FOR /L %%F IN (4,1,%1) DO CALL :fib
IF "%~1" == "0" (SET nw=0)
IF "%~1" == "1" (SET nw=0)
IF "%~1" == "2" (SET nw=1)
IF "%~1" == "3" (SET nw=1)
ECHO %nw%
EXIT /B %ERRORLEVEL% 

:fib
SET nz=%nj%
SET nj=%nw%
SET /A nw = %nj% + %nz%	
EXIT /B 0
	