#!/bin/bash
# para comparar cadenas la sintaxis es
# str1 = str2 => string1 es igual a string2
# str1 > str2 => string1 es mayor que string2
# str1 < str2 => string1 es menor que string2
# str1 != str2 => string1 no es igual que string2
# -n str => no es un string vacío

read -p "Ingrese string1: " str1
read -p "Ingrese string2: " str2

if test ! $str1 = $str2; then
  echo "string1 es distinto que string2"
fi

if test $str1 = $str2; then
  echo "string1 es igual que string2"
fi

# ! expresion => negacion, true si la expresion es falsa
# expresion1 -a expresion2 => and, cierto si ambas expresiones son verdaderas
# expresion1 -o expresion2 => or, cierto si una de las 2 expresiones son verdaderas
