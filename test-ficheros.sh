#!/bin/bash
# -d RUTA => true si la RUTA existe y es un directorio
# -e RUTA => true si la RUTA existe sea del elemento que sea
# -f RUTA => true si la RUTA existe y es un fichero normal
# -r RUTA => true si la RUTA existe y se puede leer
# -w RUTA => true si la RUTA existe y se puede escribir
# -x RUTA => true si la RUTA existe y es ejecutable
# -s RUTA => true si la RUTA existe y su tamaño es mayor que 0


read -p "Introduzca una ruta: " ruta

if [ -e $ruta ]; then
  echo "La ruta existe"
fi

if [ ! -e $ruta ]; then
  echo "La ruta NO existe"
  exit 1 # termina el script con un error
fi
