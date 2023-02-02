@echo off
:inicio
cls
echo --== Bienvenido al Sistema de Salud ==--
echo --=== Hoy es %date%%time% ===--
echo Introduce la clave
set /p contra=

if %contra%==salud GOTO correcto 
else 
GOTO incorrecto

:correcto
cls
echo CORRECTO!
pause>nul
rem exit

:incorrecto
cls
echo LO HAS ESCRITO MAL, VULVE A INTENTARLO
pause>nul
GOTO inicio