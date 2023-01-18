#!/bin/bash
read -p "Ingrese un numero: " n1
read -p "Ingrese otro numero: " n2

if [ $n1 -eq $n2 ]; then
  echo "Los numeros son iguales"
elif [ $n1 -gt $n2 ]; then
  echo "El primer numero es mayor que el segundo"
else
  echo "Los numeros no son iguales y tampoco el primero es mayor que el segundo"
fi
