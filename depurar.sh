#!/bin/bash -xv
# /bin/bash -v => muestra lo que va ejecutando
# /bin/bash -x => muestra los valores sustituidos
# /bin/bash -xv => muestra ambas opciones
# para depurar un script se debe ejecutar de la sigueinte forma:
# /bin/bash -x ./script.sh
# o también puedo iniciar el shiban (creo) como #! /bin/bash -xv

num=$RANDOM
echo "El numero es $num"
resto=$(($num%2))
if [ $resto=0 ]; then # esto esta mal intencionalmente, debería ser [ $resto -eq 0 ]
  echo "El numero es par"
else
  echo "El numero es impar"
fi
