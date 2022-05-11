#!/bin/bash
<<Enunciado
Escribir un Programa de “Menu de Comandos Amigable con el Usuario” llamado menu,
el cual, al ser invocado, mostrará un menú con la selección para cada uno de los
scripts creados en esta práctica. Las instrucciones de como proceder deben
mostrarse junto con el menú. El menú deberá iniciarse y permanecer activo hasta
que se seleccione Salir. Por ejemplo:
MENU DE COMANDOS
03. Ejercicio 3
12. Evaluar Expresiones
13. Probar estructuras de control
...
Ingrese la opción a ejecutar: 03
Enunciado

echo "MENU DE COMANDOS"
variable="x"
select variable in Ejercicio12 Ejercicio13 Ejercicio14 Ejercicio16 Ejercicio17 Ejercicio18 Salir
do
    case $variable in
       "Ejercicio12")
          echo "Ingrese dos numero enteros"
          read num1 num2
          echo "Elija inciso(a,b o c)"
          read inciso
          if [ "$inciso" = "a" ];then
            ./ejer12a.sh num1 num2
          else
            if [ "$inciso" = b ];then
              ./ejer12b.sh num1 num2
            else
                ./ejer12c.sh num1 num2
            fi
          fi
       ;;
       "Ejercicio13")
         echo "Elija inciso (a,b o c)"
         read inciso
         if [ "$inciso" = "a" ];then
           ./ejer13a.sh
         else
           if [ "$inciso" = "b" ];then
             ./ejer13b.sh
           else
               ./ejer13c.sh
           fi
         fi
       ;;
       "Ejercicio14")
        echo "Ingrese nombre del archivo, opcion (-a o -b) y CADENA"
        read arc opc cadena
        ./Ejercicio14.sh arc opc cadena
       ;;
       "Ejercicio16")
         echo "Ingrese una extension"
         read ext
         ./Ejercicio16.sh ext
       ;;
       "Ejercicio17")
         ./Ejercicio17.sh
       ;;
       "Ejercicio18")
         echo "Ingrese usuario"
         read user
        ./Ejercicio18.sh user
       ;;
       "Salir")
         exit 0;
      ;;
    esac
done

VERRR
