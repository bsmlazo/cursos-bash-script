#! /bin/bash

# continue => termina la iteracion actual y vuelve al incio del bucle
# break => sale inmediatamente del bucle y sigue ejecutando lo que continua despues del ciclo

for i in $(seq 1 5); do
  if [ $i -eq 3 ]; then
    continue
  fi
  echo iteracion $i
done

for i in $(seq 1 5); do
  if [ $i -eq 3 ]; then
    echo El ciclo termina en la iteracion $i
    break
  fi
  echo iteracion $i
done

