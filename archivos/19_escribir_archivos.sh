#!/bin/bash
#Programa para escribir en un archivo

cowsay "Hola de nuevo, humano. Vamos a enseñarte a escribir en un archivo"

echo "Valores escritos con el comando 'echo'" >> $1

#Adicion multilinea
cat << EOM >> $1
$2
EOM
