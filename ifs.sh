#! /bin/bash
# el intérprete de comandos por defecto tiene una variable llamada IFS, donde toma como
# separador de comando el caracter espacio (" "). Este valor lo podemos modificar

entrada="nombre apellido telefono"

for i in $entrada; do
  echo $i
done

# Siempre que modifiquemos la variable es recomendable guardarla antes y restaurarla despues de nuestro uso
OLDIFS=$IFS
entrada2="valor1:valor2:valor3"
IFS=":"
for i in $entrada2; do
  echo $i
done
IFS=$OLDIFS
