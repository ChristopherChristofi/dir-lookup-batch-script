@echo off

type NUL > lookupresults.txt
type NUL > lookuperrors.txt
ECHO Searching data folder. Please wait...
ECHO note: CTRL + C to exit
ECHO.
for /f "delims=" %%a in (find_codes.txt) DO (
    dir /s *%%a*>NUL^
    && (ECHO File Found)^
    && (ECHO Found: %%a) >> lookupresults.txt^
    || (ECHO Not Found: %%a) >> lookuperrors.txt
)
ECHO.
pause