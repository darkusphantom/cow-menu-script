#!/bin/bash
# Programa para crear archivos o directorios

cowsay "Bienvenido otra vez, humano. Te enseñaré a crear directorios y archivos"
#echo -e "\nIngresa 'd' si quieres crear un directorio".
#echo "Ingresa 'f' si quieres crear un archivo".
#echo "Ejemplo: 'd imagenes'"
#read -p "Opcion: " $1 $2

if [[ $1 == "d" ]]; then
  mkdir -m 755 $2
  cowsay "Se creo el directorio sastifactoriamente"
  ls -la $2
elif [[ $1 == "f" ]]; then
  touch $2
  cowsay "Se creo el archivo sastifactoriamente"
  ls -la $2
else
  cowsay "Se rompio todo. Vuelvelo a intentar"
fi

sleep 2
