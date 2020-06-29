@ECHO OFF
SET trm=__ENDOFSTRING__
SET tekst=%1%trm%
SET line=
SET potega=
SET pochodna=

CALL :czytanie

SET /A pochodna = %line% * %potega%
SET /A potega = %potega% - 1
SET pochodna=%pochodna%%var%%potega%
ECHO %pochodna%

EXIT /B %ERRORLEVEL% 

:czytanie
SET chr=%tekst:~0,1%
SET tekst=%tekst:~1%
ECHO %chr%| findstr /r "[\-0-9]">nul
IF %ERRORLEVEL% ==  0 (
	SET line=%line%%chr%
	IF NOT "%tekst%" == "%trm%" GOTO czytanie
) ELSE (
	SET var=%chr%
	CALL :dalej
)
EXIT /B 0

:dalej
SET chr=%tekst:~0,1%
SET tekst=%tekst:~1%
ECHO %chr%| findstr /r "[\-0-9]">nul
IF %ERRORLEVEL% == 0 (
	SET potega=%potega%%chr%
)
IF NOT "%tekst%" == "%trm%" GOTO dalej
EXIT /B 0

PAUSE