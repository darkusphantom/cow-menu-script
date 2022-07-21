#!/bin/bash
# Programa para saber cómo usar los arreglos en bash

arrayNumber=(1 2 3 4 5)
arrayChar=('a' 'b' 'c')
arrayName=(Luis Angel Gerald Nel)
arrayRange=([A..Z] [10..20])

echo "Veamos los valores de cada array:"
echo "Todos los numeros: ${arrayNumber[*]}"
echo "Todos los char: ${arrayChar[*]}"
echo "Todos los name: ${arrayName[*]}"
echo "Todos los range: ${arrayRange[*]}"

echo -e "\n"
echo "Veamos los tamaños:"
echo "Todos los numeros: ${#arrayNumber[*]}"
echo "Todos los char: ${#arrayChar[*]}"
echo "Todos los name: ${#arrayName[*]}"
echo "Todos los range: ${#arrayRange[*]}"

echo -e "\n"
echo "Veamos en la posicion 3:"
echo "Todos los numeros: ${arrayNumber[1]}"
echo "Todos los char: ${arrayChar[1]}"
echo "Todos los name: ${arrayName[1]}"
echo "Todos los range: ${arrayRange[1]}"

echo -e "\n"
echo "Añadir un elemento:"
arrayNumber[1]=10
echo "Todos los numeros: ${arrayNumber[*]}"

echo -e "\n"
echo "Eliminar un elemento:"
unset arrayNumber[2]
echo "Todos los numeros: ${arrayNumber[*]}"
echo "Tamaño de numeros: ${#arrayNumber[*]}"
