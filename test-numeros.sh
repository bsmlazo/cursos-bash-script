#!/bin/bash
# comando test puede comparar se puede escribir como
# test expresion
# [ expresion ] debe existir un espacio entre los corchetes y la expresion
# int1 -eq int2 => entero1 es igual que entero2
# int1 -ge int2 => entero1 es mayor o igual qne entero2
# int1 -gt int2 => entero1 es mayor que entero2
# int1 -le int2 => entero1 es menor o igual que entero2
# int1 -lt int2 => entero1 es menor que entero2
# int1 -ne int2 => entero1 no es igual que entero2

int1=1
int2=2

echo "las variables entero son $int1 y $int2"

if [ $int1 -eq $int2 ]; then
  echo "variable 1 es igual que variable 2"
fi
if test $int1 -ge $int2; then
  echo "variable 1 es mayor o igual que variable 2"
fi
if [ $int1 -gt $int2 ]; then
  echo "variable 1 es mayor que variable 2"
fi
if [ $int1 -le $int2 ]; then
  echo "variable 1 es menor o igual que variable 2"
fi
if [ $int1 -lt $int2 ]; then
  echo "variable 1 es menor que variable 2"
fi
if [ $int1 -ne $int2 ]; then
  echo "variable 1 es distinta a variable 2"
fi
