#!/bin/bash
# Programa para revisar los tipos de operadores

numberA=10
numberB=20
numberC=$((numberA + numberB)) #Si tu haces esto: numberC= $((numberA + numberB)), no capta el valor. Lo correcto es asi: numberC=$((numberA + numberB))

echo "Operadores aritmeticos"
echo "number a: $numberA"
echo "number b: $numberB"
#echo "total: $numberC"
echo "Suma:" $((numberA + numberB))
echo "Resta: " $((numberA - numberB))
echo "Multiplicar: " $((numberA * numberB))
echo "Dividir: " $((numberA / numberB))
echo "Residuo: " $((numberA % numberB))


echo -e "\nOperadores Relacionales"
echo "Numeros: A=$numberA y $numberB"
echo "A > B: " $((numberA > numberB))
echo "A < B" $((numberA < numberB))
echo "A >= B: " $((numberA >= numberB))
echo "A <= B: " $((numberA <= numberB))
echo "A == B: " $((numberA == numberB))
echo "A != B: " $((numberA != numberB))

echo -e "\nOperadores Asignación"
echo "Numeros: A=$numberA y $numberB"
echo "A += B: " $((numberA += numberB))
echo "A -= B" $((numberA -= numberB))
echo "A *= B: " $((numberA *= numberB))
echo "A /= B" $((numberA /= numberB))
echo "A %= B: " $((numberA %= numberB))
