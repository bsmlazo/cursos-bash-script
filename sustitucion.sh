#!/bin/bash
echo Hoy es: $(date)
echo El directorio actual tiene un tamaño de: `du -sh $(pwd)`
# la variable $? tiene el valor del ultimo comando ejecutado

ls -d /etc/
echo Valor de ultimo comando $?

ls -d /etc/noexiste/
echo Valor de ultimo comando $?
