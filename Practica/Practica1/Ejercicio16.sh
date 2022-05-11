#!/bin/bash
<<Enunciado
Realizar un script que reciba como parámetro una extensión y haga un reporte con
2 columnas, el nombre de usuario y la cantidad de archivos que posee con esa
extensión. Se debe guardar el resultado en un archivo llamado reporte.txt
Enunciado

if [ $# -eq 1 ]
then
	cant=0
	for i in $(find / -name "*.$1") # / indica filesystem
	do
		usr=$(ls -l $i | cut -f 3 -d ' ')
		let cant++
	done
	echo "${usr}	${cant}" >> reportes.txt
else
	echo "Cantidad de parametros incorrectos"
fi
