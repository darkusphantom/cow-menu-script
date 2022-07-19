#!/bin/bash
# Menu donde se muestra: Procesos actuales, memoria disponible, espacio en el disco, info de red,
# variables de entorno configuradas, informacion de programa y backup de informacion

option=0

while :; do
  clear
  cowsay "Hola humano. Bienvenido. Por favor, ¿Qué se le ofrece?"
  echo -e "\nMenu de opciones:"
  echo "1. Procesos actuales."
  echo "2. Memoria disponible."
  echo "3. Espacio de disco."
  echo "4. Información de Red."
  echo "5. Variables de entorno configuradas."
  echo "6. Información Programa."
  echo "7. Backup información"
  echo "8. Salir"
  read -p "Ingrese una opción: " option
  echo -e "\n"

  case $option in
    1 )
      cowsay "Ha elegido la opción $option. Veamos los procesos actuales."
      echo -e "\nProcesos actuales:"
      ps
      sleep 3
      ;;
    2 )
      cowsay "Ha elegido la opción $option. Veamos la memoria disponible."
      echo -e "\nMemoria disponible:"
      free -h
      sleep 3
      ;;
    3 )
      cowsay "Ha elegido la opción $option. Veamos el espacio en el disco."
      echo -e "\nEspacio en el disco:"
      free -h
      sleep 3
      ;;
    4 )
      cowsay "Ha elegido la opción $option. Veamos la información de red."
      echo -e "\nInformación de red:"
      ifconfig wlp3s0
      sleep 3
      ;;
    5 )
      cowsay "Ha elegido la opción $option. Veamos las variables de entorno configuradas."
      echo -e "\nEspere un momento..."
      sleep 2
      printenv | less
      #env -u VAR
      sleep 3
      ;;
    6 )
      cowsay "Ha elegido la opción $option. Veamos los programas del sistema."
      echo -e "\nEspere un momento..."
      sleep 2
      dpkg -l | less
      sleep 3
      ;;
    7 )
      cowsay "Ha elegido la opción $option. ¿Hacemos un Backup?"
      sleep 3
      cowsay "Pos, ahora no esta disponible."
      sleep 2
      ;;
    8 )
      cowsay "Saliendo del programa... hasta la proxima"
      sleep 2
      exit
      ;;
  esac
done

clear
