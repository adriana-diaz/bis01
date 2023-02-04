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
:Menu
cls
echo Selecciones los sistomas de Covid 19 que usted posea
echo 1-Fiebre
echo 2-Perdida de olfato
echo 3-Hipertension
echo 4-Todas las anteriores
echo 5-Ninguna de las anteriores
echo Elija una opcion 
set /p opc=
If %opc% ==1 goto opcion1
If %opc% ==2 goto opcion2
If %opc% ==3 goto opcion3
If %opc% ==4 goto opcion4
If %opc% ==5 goto opcion5

:opcion1 
echo Tienes riesgo de covid 19


:opcion2 
echo Tienes riesgo de covid 19


:opcion3
echo Tienes riesgo de covid 19

:opcion4 
echo Ups tienes covid 19


:opcion5
echo Yey no tienes covid 19
echo ***********************************************
echo == Gracias por utilizar el Sistema de Salud ==
echo -- Presiona cualquier tecla para continuar --
pause>nul
GOTO:eof

:incorrecto
cls
echo LO HAS ESCRITO MAL, VULVE A INTENTARLO
pause>nul
GOTO inicio