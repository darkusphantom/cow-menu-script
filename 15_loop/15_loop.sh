#!/bin/bash
# Programa para saber cómo usar los arreglos en bash

arrayNumber=(1 2 3 4 5)
arrayChar=('a' 'b' 'c')
arrayName=(Luis Angel Gerald Nel)
arrayRange=([A..Z] [10..20])

echo "Iterar en la Lista de Números"
for num in ${arrayNumber[*]}
do
    echo "Número:$num"
done

echo -e "\nIterar en la lista de Cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres:$nom"
done

echo -e "\nIterar en la lista de Cadenas"
for nom in ${arrayName[*]}
do
    echo "Nombres:$nom"
done

echo -e "\nIterar en la lista de Cadenas"
for nom in ${arrayRange[*]}
do
    echo "Nombres:$nom"
done


echo -e "\nIterar en Archivos"
for fil in *
do
    echo "Nombre archivo:$fil"
done

echo -e "\nIterar utilizando un comando"
for fil in $(ls)
do
    echo "Nombre archivo:$fil"
done

echo -e "\nIterar utilizando el formato tradcional"
for ((i=1; i<10; i++))
do
    echo "Número;$i"
done
