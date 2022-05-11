#!/bin/bash
<<Enunciado
Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, %.
Esta calculadora debe funcionar recibiendo la operación y los números como
parámetros.
Enunciado

if [ $# -eq 3 ]; then
  variable=$1
  select variable in Multipliacion Suma Resta Mayor Exit
  do
  case $variable in
    "Multipliacion")
       echo "$(($2*$3))"
    ;;
    "Suma")
      echo  "$(($2 + $3 ))"
    ;;
    "Resta")
      echo "$(($2 - $3))"
    ;;
    "Mayor")
      if [ $2 -gt $3 ];then
       echo "El numero $2 es mayor"
      else
       echo "El numero $3 es mayor"
      fi
    ;;
    "Exit")
       exit 0
    ;;
    esac
done
else
  exit 1
fi
