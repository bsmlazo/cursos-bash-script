#! /bin/bash
# de esta forma enviamos todo lo que está entre los EOF como datos de entrada
cat > tmp.txt <<EOF
Primera frase
Segunda frase
EOF

# si queremos ordenar el código con tabulaciones (deben ser solo tabulaciones) para que se vea mejor, entonces
# podemos agregar un - para quitar los espacios antes de los comandos
cat > tmp.txt <<-EOF
  Primera frase
  Segunda frase
EOF
