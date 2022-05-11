#!/bin/bash
<<Enunciado
Realizar un script que le solicite al usuario 2 números, los lea de la entrada
Standard e imprima la multiplicación, suma, resta y cual es el mayor de los
números leídos.
Enunciado

echo "Ingrese 2 numeros"
read num1 num2
echo "Multipliacion: $(($num1*$num2))"
echo "Suma:  $(($num1 + $num2 ))"
echo "Resta: $(($num1-$num2))"
if [ $num1 -gt $num2 ];then
 echo "El numero $num1 es mayor"
else
  echo "El numero $num2 es mayor"
fi

