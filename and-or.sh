#!/bin/bash
# usando &&, solo se ejecuta el segundo comando si el primero resulta bien (devuelve true)
# suando ||, el segundo se ejecuta solo si el primero falla
ls -d /home/byron/Trabajo && echo "La ruta existe"
ls -d /home/byron/noexiste 2> /dev/null && echo "Esto no se ejecuta"
ls -d /home/byron/noexiste 2> /dev/null || echo "Se crea el directorio /home/byron/noexiste"
ls -d /home/byron/ 2> /dev/null || echo "Esto no se ejecuta"
