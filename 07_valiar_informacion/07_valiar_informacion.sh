#!/bin/bash
# Este programa para ejemplificar el uso para validar informacion

option=0
backupName=""
clave=""

cowsay "Programa de utilidades"
# Acepta el ingreso de informacion de un solo caracter
read -n1 -p "Ingresa una opcion: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo backup: " backupName
echo -e "\n"
echo "Option: $option - BackupName: $backupName"
read -s -p "Clave: " clave
echo -e "\nClave: $clave"
