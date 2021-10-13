@echo off
Setlocal EnableDelayedExpansion
type NUL > lookupresults.txt
type NUL > lookuperrors.txt
ECHO Searching data folder. Please wait...
ECHO note: CTRL + C to exit
ECHO.
set "_prefix=0"
set "_suffix=_CD"
for /f "delims=" %%a in (find_codes.txt) DO (
    set _filecode="%_prefix%%%a%_suffix%"
    dir /s /b /A:-D *!_filecode!.**>NUL^
    && (ECHO File Found)^
    && (ECHO Found: !_filecode!) >> lookupresults.txt^
    || (ECHO Not Found: !_filecode!) >> lookuperrors.txt
) || (
    ECHO Error Found &Exit /b 1
)
ECHO.
pause