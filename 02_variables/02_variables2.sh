#!/bin/bash
# Programa para revisar declaracion de variables

opcion=0
nombre=Luis

echo "Opcion: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible en los demas procesos
export nombre

#Llamar al siguiente script para recuperar la variable
./02_variables.sh
