#!/bin/bash
read -p "Ingrese un numero:" n1
read -p "Ingrese otro numero:" n2
echo la suma es $(($n1+$n2))
echo la resta es es $(($n1-$n2))
echo la multiplicacion es $(($n1*$n2))
echo la division es $(($n1/$n2))
echo "El modulo (resto) es $(($n1%$n2))"
# ahora mostramos un numero aleatorio entre 0 y 25
echo $(($RANDOM%26))
