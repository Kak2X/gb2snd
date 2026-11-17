@echo off
setlocal enableextensions enabledelayedexpansion

set frontendPath=%~1
set outputFile=%~2
if "%outputFile%" == "" (
	echo Don't execute this file directly.
	pause
	goto end
)

echo Assembling...
rgbds\rgbasm -v -o shared.o driver\_shared.asm

rem Automatically build anything in driver\banks as its own object file, that's getting then added to the linkerscript
del _linker_opt.txt
for /R "driver\banks" %%f in (*.asm) do (	
	rgbds\rgbasm -v -o %%~nf.o "%%f"
	echo | set /p fkg=%%~nf.o>>_linker_opt.txt
)
rgbds\rgbasm -v -o main.o %frontendPath%
echo Linking...
rgbds\rgblink -v -n %outputFile%.sym -p 255 -d -o %outputFile%.gb shared.o main.o @_linker_opt.txt

if %ERRORLEVEL% neq 0 goto fail
del *.o
del _linker_opt.txt
goto end

:fail
echo ==========================
echo   Build failure.
echo ==========================
exit /b 1

:end
exit /b 0