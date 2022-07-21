#!/bin/bash
# Opciones para cowsay

option=0

cowsay "Bienvenido al programa, ¿Quién quieres que sea tu guia"
echo -e "\nOpcion 1: Ver lista."
echo "Opcion 2: Continuar."
read -n1 -p "Escribe una opción: " option
echo -e "\n"

if (( $option > 2 )) || (( $option < 1)); then
  echo -e "\nOpcion invalida.\n"
  cowsay "Cierra el programa"
else
  if (( $option == 1 )); then
    cowsay -l
  fi

  if (( $option == 2 )); then
    cowsay "Sigamos con lo nuestro"
  fi
fi
