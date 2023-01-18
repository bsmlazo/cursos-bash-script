#!/bin/bash
#### ARRAYS ######
# miarray=(dato1 dato2 dato3)
# lectura ${miarray[indice]} => echo ${miarray[0]} ${miarray[1]} ${miarray[-1]} este ultimo muestra la ultima posicion
# del array
# mostrar todos los elementos => ${miarray[*]} o también ${miarray[@]}
# mostrar la cantidad de elementos ${#miarray[@]}
# mostrar todos los indices: ${!miarray[@]}
# eliminar una posicion: unset miarray[indice]
arr=(dato1 dato2 dato3)
echo ${arr[0]}
echo ${arr[1]}
echo ${arr[2]}
echo ${arr[-1]}
echo ${arr[@]}
echo "La cantidad de elementos del array son: ${#arr[@]}"
echo "Los indices disponibles son ${!arr[@]}"
unset arr[1]
echo "DESPUÉS DE BORRAR.."
echo "Nos quedan los elementos: ${arr[@]}"
echo "La cantidad de elementos del array son: ${#arr[@]}"
echo "Los indices disponibles son ${!arr[@]}"
