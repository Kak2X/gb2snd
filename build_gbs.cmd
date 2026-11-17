@echo off
call _build player\gbs.asm gbs
if %ERRORLEVEL% neq 0 goto end

echo Generating GBS...
rem 16128 -> 3F00, 112 -> 70 see player\gbs.asm
rgbds\dd bs=112 if=gbs.gb of=tmp_a.bin count=1
rgbds\dd bs=16128 if=gbs.gb of=tmp_b.bin skip=1
copy /b tmp_a.bin + tmp_b.bin gb2.gbs
del tmp_*.bin
del gbs.gb
del gbs.sym

:end
pause