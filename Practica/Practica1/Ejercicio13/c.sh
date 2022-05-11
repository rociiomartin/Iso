#!/bin/bash
<<Enunciado
Crear un script que reciba como parámetro el nombre de un archivo e informe si
el mismo existe o no, y en caso afirmativo indique si es un directorio o un
archivo. En caso de que no exista el archivo/directorio cree un directorio con
el nombre recibido como parámetro.
Enunciado

if [ $# -eq 1 ];then
   if [ -e $1 ];then
       echo "El archivo existe"
       if [ -f $1 ];then
         echo "Es un archivo"
       else
        if [ -d $1 ];then
          echo "Es un directorio"
        fi
      fi
   else
      mkdir $1
   fi
fi
