#! /bin/bash

if [ $# -gt 0 ]; then
  echo "Se han ingresado $# parametros"
else
  echo "No se han ingresado parametros"
fi

read -p "Año nacimiento: " year
read -p "Mes nacimiento: " mes
read -p "Dia nacimiento: " dia

edad=$(($(date +%Y)-$year))
if [ $(date +%m) -lt $mes ]; then
  edad=$(($edad-1))
elif [ $(date +%m) -eq $mes -a $(date +%d) -lt $dia ]; then
  edad=$(($edad-1))
fi

echo "Tu edad es: $edad"

num=$(($RANDOM%20))

read -p "Ingrese un numero: " n1
read -p "Ingrese otro numero: " n2

echo "El numero escogido aleatoriamente es: $num"

if [ $num -lt $n1 ]; then
  echo "No se puede dividir, ya que su primer numero es mayor"
else
  echo "La division es $(($num/$n1))"
fi

if [ $num -lt $n2 ]; then
  echo "No se puede dividir, ya que su segundo numero es mayor"
else
  echo "La division es $(($num/$n2))"
fi

#read -p "Ingrese su fecha de nacimiento: " fn

read -p "Ingrese una ruta: " ruta
echo "Favor ingresar una opción:"
echo "1) Comprobar si es un directorio"
echo "2) Crear el directorio"
echo "3) Listar su contenido"
echo "Opcion por defecto 1"
read opc

case $opc in
  1)
    if [ ${#ruta} -eq 0 ]; then
      echo "La ruta ingresada no es válida"
    else
      if [ -d $ruta ]; then
        echo "La ruta ingresada $ruta es un directorio"
      else
        echo "La ruta ingresada no es un directorio"
      fi
    fi
    ;;
  2)
    if [ ${#ruta} -eq 0 ]; then
      echo "La ruta ingresada no es válida"
    else
      echo "Creando directorio"
      echo "mkdir $ruta"
    fi
    ;;
  3)
    if [ ! -n $ruta ]; then
      echo "La ruta ingresada no es válida"
    else
      if [ -d $ruta ]; then
        echo "Listando el contenido del directorio $ruta"
        ls -ltr $ruta
      fi
    fi
    ;;
  *)
    if [ ${#ruta} -eq 0 ]; then
      echo "La ruta ingresada no es válida"
    else
      if [ -d $ruta ]; then
        echo "La ruta ingresada $ruta es un directorio"
      else
        echo "La ruta ingresada no es un directorio"
      fi
    fi
    ;;
esac
