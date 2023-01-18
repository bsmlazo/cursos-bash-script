#! /bin/bash

function saludo {
  echo "Hola Mundo!"
}

saludo

function imprime_mensaje {
  echo $*
}

imprime_mensaje Hola como estas
