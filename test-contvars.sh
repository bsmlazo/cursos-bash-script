#!/bin/bash
# operaciones con el contenido de una variable
# ${#var} => devuelve el largo de un string
# ${var:posicion} => desde la posicion indicada hasta el final del string
# ${var:posicion:longitud} => desde la posicion con la longitud indicada
# ${var#patron} => elimina desde el inicio, la parte mas corta que coincida con el patron. Si se usa ## elimina la parte mas larga.
# ${var%patron} => Igual que lo anterior, pero elimina desde el final de $var
# ${var/patron/cadena} => sustituye la primera ocurrencia que coincida con patron por cadena.
# ${var//patron/cadena} => sustituye todas las ocurrencias

ip=$(hostname -I|awk '{print $1}')

echo ${ip}
echo ${#ip}
echo ${ip:4}
echo ${ip:4:3}
echo ${ip#*1}
echo ${ip##*1}
echo ${ip%1*}
echo ${ip%%1*}
echo ${ip/1/X}
echo ${ip//1/X}
echo ${ip//[12345]/X}
