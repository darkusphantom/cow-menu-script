#!/bin/bash
# Programa que muestra un ejemplo de menu

option=0

while :
do
  clear

  echo "----------------------------------------------------"
  cowsay "Bienvenido al menu cowsay. ¿Qué deseas?"
  echo "----------------------------------------------------"

  echo "1. Pedir que cowsay te salude"
  echo "2. Hacer que cowsay diga algo"
  echo "3. Salir"
  read -p "Ingrese su opción: " option

  case $option in
    1 )
      cowsay "Hola humano"
      sleep 3
      ;;

    2 )
      cowsay "¿Qué quieres que diga?"
      sleep 3
      ;;

    3 )
      cowsay "Saliendo del programa... hasta la proxima."
      exit 0
      ;;
  esac
done
