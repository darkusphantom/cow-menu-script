#!/bin/bash
# Desarrolla  un programa donde declares dos variables
# una llamada option y otra llamada result
# se debe inicializar e imprimir sus valores

option=$1
result=$2

echo "Option: $option"
echo "Result: $result"

# Con el uso de read

cowsay "Ingresa un valor: "
read value
cowsay "El valor ingresado es: $value"
