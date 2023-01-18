#!/bin/bash
read -p "Ingresa un numero: " var
read -p "Ingresa otro numero: " var2
read -p "Que usuario ejecuta este script? " usu

if [ $(($var%2)) = 0 ]; then
  echo "El primer numero es par"
else
  echo "El primer numero es impar"
fi

if [ $(($var2%2)) = 0 ]; then
  echo "El segundo numero es par"
else
  echo "El segundo numero es impar"
fi

if [ $var -gt $var2 ]; then
  echo "$var es mayor que $var2"
fi

if [ ! $var -gt $var2 ]; then
  echo "$var2 es mayor que $var"
fi

if [ $# -gt 0 ]; then

  if [ $1 -gt $2 ]; then
    echo "$1 es mayor que $2"
  fi

  if [ ! $1 -gt $2 ]; then
    echo "$2 es mayor que $1"
  fi
fi
if [ -z $usu ]; then
  echo "Se debe ingresar un usuario"
  exit 1
fi

if [ $usu = $USER ]; then
  echo "Correcto el usuario que ejecuta este script es $USER"
fi

if [ ! $usu = $USER ]; then
  echo "INCORRECTO! el usuario que ejecuta este script no es $usu"
fi
