#!/bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable dinamica para su usuo

option=0
backupName=""

# Forma 1
#cowsay "Programa utilizando Postgress"
#echo -n "Ingresar una opcion:"
#read
#option=$REPLY
#echo "Ingresa el nombre del archivo backup"
#read
#backupName=$REPLY
#echo "Option: $option, backupName: $backupName"


# Forma 2
cowsay "Programa utilizando Postgress"
read -p "Ingresar una opcion:" option
read -p "Ingresa el nombre del archivo backup" backupName
echo "Option: $option, backupName: $backupName"
