#!/bin/bash

read -p "Ingrese una nota: " nota

case $nota in
  9|10)
    echo "Tienes un sobresaliente";;
  [87])
    echo "Tienes un notable";;
  6)
    echo "Tienes un bien";;
  5)
    echo "Tienes un aprobado";;
  [43210])
    echo "Tienes un suspenso";;
  *) # default
    echo "Nota incorrecta";;
esac
