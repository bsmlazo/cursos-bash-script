#!/bin/bash
ping -c1 www.cursea.me &> /dev/null || exit 1
wget http://www.cursea.me/poemas.tar.gz &> /dev/null && echo "Fichero descargado correctamente"
ls -l poemas.tar.gz
size=$(du poemas.tar.gz|cut -f1)
if [ $size -gt 1000 ]; then
  echo "El fichero es grande"
else
  echo "El fichero es pequeño"
fi
rm -f poemas.tar.gz &> /dev/null && echo "Fichero borrado correctamente"
