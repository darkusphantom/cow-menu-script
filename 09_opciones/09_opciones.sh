#!/bin/bash
# Programa para ejemplificar el uso de las opciones como parametro

cowsay "Programa Opciones"
echo "Opcion 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opcion enviada: $*"
echo -e "\n"
echo "Recuperar valores"

while [ -n "$1" ]
do
  case "$1" in
    -a) cowsay "Opcion A utilizada";;
    -b) echo "Opcion B utilizada";;
    -c) echo "Opcion C utilizada";;
    *) cowsay "$! no es una opcion esta paz"
  esac
shift
done
