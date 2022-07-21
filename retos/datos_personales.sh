#!/bin/bash
#Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos;
#y posterior imprima toda la información.

nombre='usuario'
nombreRegex='^([a-zA-Z]{2,})$'
apellido=''
apellidoRegex='^([a-zA-Z]{2,})$'
edad=''
edadRegex='^([0-9]{2})$'
direccion=''
direccionRegex=' '
telefono=''
telefonoRegex='^([0-9]{11})$'

cowsay "Ingrese su nombre"
read -p "Nombre: " nombre

if [[ $nombre =~ $nombreRegex ]]; then
  nombre=''
  echo -e "Nombre invalido.\n"
else
  echo -e "Aprobado.\n"
fi

cowsay "Ingrese su apellido"
read -p "Apellido: " apellido

if [[ $apellido =~ $apellidoRegex ]]; then
  apellido=''
  echo -e "Apellido invalido.\n"
else
  echo -e "Aprobado.\n"
fi

cowsay "Ingrese su edad"
read -n3 -p "Edad: " edad

if [[ $edad =~ $edadRegex ]]; then
  edad=''
  echo -e "Edad invalida.\n"
else
  echo -e "\nAprobado.\n"
fi

cowsay "Ingrese su ciudad"
read -p "Ciudad: " direccion

if [[ $direction =~ $directionRegex ]]; then
  direction='(anonimo)'
  echo -e "Dirección invalido.\n"
else
  echo -e "Aprobado.\n"
fi

cowsay "Ingrese su telefono"
read -p "Telefono: " telefono

if [[ $telefono =~ $telefonoRegex ]]; then
  telefono=''
  echo -e "Numero invalido.\n"
else
  echo -e "Aprobado."
fi

cowsay "Su nombre es $nombre $apellido. Tienes $edad de edad. Eres de $direccion y su telefono es $telefono"
