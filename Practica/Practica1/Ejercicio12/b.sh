#!/bin/bash
<<Enunciado
Modificar el script creado en el inciso anterior para que los números sean
recibidos como parámetros. El script debe controlar que los dos parámetros
sean enviados.
Enunciado

if [ $# -eq 2 ]; then
  echo "Multipliacion: $(($1*$2))"
  echo "Suma:  $(($1 + $2 ))"
  echo "Resta: $(($1 - $2))"
  if [ $1 -gt $2 ];then
   echo "El numero $1 es mayor"
  else
    echo "El numero $2 es mayor"
  fi
else
  exit 1
fi
