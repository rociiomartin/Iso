#!/bin/bash
<<Enunciado
Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y
QuienEsta.
Según la opción elegida se le debe mostrar:
Listar: lista el contenido del directoria actual.
DondeEstoy: muestra el directorio donde me encuentro ubicado.
QuienEsta: muestra los usuarios conectados al sistema.
Enunciado

select variable in Listar DondeEstoy QuienEsta
do
case $variable in
  "Listar")
    ls -l
  break
  ;;
  "DondeEstoy")
    pwd
  break
  ;;
  "QuienEsta")
    who
  break
  ;;
  esac
done
