#! /bin/bash

read -p "Ingresa numero " num
while [ $num -ne 0 ]; do
  read -p "Ingresa numero " num
  if [ $num -eq 0 ]; then
    echo Has ingresado el numero 0. Saliendo...
    break
  fi
done

echo Fin del programa!
