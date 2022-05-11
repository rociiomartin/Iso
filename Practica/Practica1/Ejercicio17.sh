#!/bin/bash
<<Enunciado Escribir un script que al ejecutarse imprima en pantalla los nombre
de los archivos que se encuentran en el directorio actual, intercambiando
minúsculas por mayúsculas, además de eliminar la letra a (mayúscula o
minúscula).
Enunciado

for i in $(ls $pwd); do
  #echo $i | tr '[:upper:][:lower:]' '[:lower:][:upper:]' | tr -d "aAáÁ"
  echo $i | tr  'a-z''A-Z' 'A-Z''a-z' | tr -d "aA"
done
