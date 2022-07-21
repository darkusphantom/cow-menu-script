#!/bin/bash
# Programa para mostrar las operaciones de archivos

cowsay "Hola de nuevo, humano. Veamos cómo utilizar las operaciones de archivo"
mkdir -m 755 backupScripts

echo -e "\nVamos a copiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nVamos a mover el directorio a backupScript a otra ubicacion $HOME"
mv backupScripts $HOME

echo -e "\nVamos a eliminar los archivos .txt"
rm *.txt
