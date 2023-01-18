#! /bin/bash
for i in $(seq 4 8); do
  echo variable i = $i
done

for i in Claudia Analia Copito; do
  echo mi familia es $i
done

for i in $(ls *.sh); do
  echo en este curso hemos creado el script $i
done
