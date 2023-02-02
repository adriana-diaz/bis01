@echo off
:inicio
cls
echo --== Bienvenido al Sistema de Salud ==--
echo --=== Hoy es %date%%time% ===--
echo Introduce la clave
set /p contra=

if /i %contra%==salud GOTO correcto 
else 
GOTO incorrecto

:correcto
cls
echo Tiene fiebre? S/N
set /p fiebre=
echo Tiene perdida de olfato? S/N
set /p olfato=
echo Tiene hipertension? S/N
set /p hipert=

echo fiebre es %fiebre%

echo == Gracias por utilizar el Sistema de Salud ==
echo -- Presiona cualquier tecla para continuar --
pause>nul
GOTO:eof

:incorrecto
cls
echo LO HAS ESCRITO MAL, VULVE A INTENTARLO
pause>nul
GOTO inicio