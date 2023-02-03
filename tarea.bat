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
cls
echo Tiene perdida de olfato? S/N
set /p olfato=
cls
echo Tiene hipertension? S/N
set /p hipert=


if %fiebre%==S (echo --Tienes fiebre) else if %fiebre%==N (echo --No tienes fiebre)
if %olfato%==S (echo --Tienes Perdida de olfato) else if %olfato%==N (echo --No tienes perdida de olfato)
if %hipert%==S (echo --Tienes hipertension) else if %hipert%==N (echo --No tienes hipertension)

set /a Ustedtienecovid19=%fiebre%+%olfato%+%hipert%==S
echo Su resultado es: %Ustedtienecovid19%

echo == Gracias por utilizar el Sistema de Salud ==
echo -- Presiona cualquier tecla para continuar --
pause>nul
GOTO:eof

:incorrecto
cls
echo LO HAS ESCRITO MAL, VULVE A INTENTARLO
pause>nul
GOTO inicio