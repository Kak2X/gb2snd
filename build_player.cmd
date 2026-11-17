@echo off
call _build player\main.asm player
if %ERRORLEVEL% neq 0 goto end

rgbds\rgbfix -v player.gb -p 255

if EXIST original.gb ( fc /B player.gb original.gb | more )

:end
pause