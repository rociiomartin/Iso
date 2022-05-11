#!/bin/bash
<<Enunciado
Realizar un script que visualice por pantalla los números del 1 al 100 así como
sus cuadrados.
Enunciado

for (( i = 0; i < 100; i++ )); do
  echo "El numero es $i"
  echo "Y su cuadrado es de $(($i*$i))"
done
