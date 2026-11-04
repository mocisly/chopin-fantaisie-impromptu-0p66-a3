@echo off
setlocal
cd /d "%~dp0"
where lilypond >nul 2>nul
if errorlevel 1 (
 echo LilyPond was not found on PATH. Install LilyPond 2.26.0.
 pause
 exit /b 1
)
if not exist "build" mkdir "build"
lilypond -o "build\chopin-fantaisie-impromptu-0p66-a3" "chopin-fantaisie-impromptu-0p66-a3.ly" > "build\compile.log" 2>&1
set RESULT=%ERRORLEVEL%
type "build\compile.log"
echo.
echo Output: build. Please review remaining diagnostics.
pause
exit /b %RESULT%
