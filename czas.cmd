@ECHO off
FOR /f "USEBACKQ" %%t IN (`time /t`) DO (
	SET czas=%%t
)
ECHO %czas%