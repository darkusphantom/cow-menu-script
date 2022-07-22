#!/bin/bash
# Menu donde se muestra: Procesos actuales, memoria disponible, espacio en el disco, info de red,
# variables de entorno configuradas, informacion de programa y backup de informacion

option=0
optionFile=0

introductionMenu() {
  cowsay "Hola humano. Bienvenido. Por favor, ¿Qué se le ofrece?"
  echo -e "\nMenu de opciones:"
  echo "1. Procesos actuales."
  echo "2. Memoria disponible."
  echo "3. Espacio de disco."
  echo "4. Información de Red."
  echo "5. Variables de entorno configuradas."
  echo "6. Información Programa."
  echo "7. Comprimir información"
  echo "8. Backup información"
  echo "9. Modificar un archivo (Crear, eliminar, renombrar...)"
  echo "10. Salir"
  read -p "Ingrese una opción: " option
  echo -e "\n"
}

fileMenu() {
  clear
  cowsay "Ha elegido la opción $option. ¿Qué deseas hacer con el archivo?"
  echo -e "\nOpciones:"
  echo "1. Crear archivo."
  echo "2. Modificar en el archivo."
  echo "3. Renombrar archivo."
  echo "4. Mover archivo."
  echo "5. Borrar archivo."
  echo "6. Ver archivos del directorio."
  echo "7. Salir"
  read -p "Ingrese una opción: " optionFile
  echo -e "\n"
}

showProcess() {
  cowsay "Ha elegido la opción $option. Veamos los procesos actuales."
  echo -e "\nProcesos actuales:"
  ps
  sleep 3
}

showMemoryFree() {
  cowsay "Ha elegido la opción $option. Veamos la memoria disponible."
  echo -e "\nMemoria disponible:"
  free -h
  sleep 3
}

showDiskFree() {
  cowsay "Ha elegido la opción $option. Veamos el espacio en el disco."
  echo -e "\nEspacio en el disco:"
  df -h / /home
  sleep 3
}

showNetworkInformation(){
  cowsay "Ha elegido la opción $option. Veamos la información de red."
  echo -e "\nInformación de red:"
  ifconfig
  sleep 3
}

showEnviromentsVar() {
  cowsay "Ha elegido la opción $option. Veamos las variables de entorno configuradas."
  echo -e "\nEspere un momento..."
  sleep 2
  printenv | less
  #env -u VAR
  sleep 3
}

showProgramSystem() {
  cowsay "Ha elegido la opción $option. Veamos los programas del sistema."
  echo -e "\nEspere un momento..."
  sleep 2
  dpkg -l | less
  sleep 3
}

compressFile() {
  cowsay "Ha elegido la opción $option. ¿Comprimimos?"
  
  fileName=''
  directoryName=''
  read -p "Ingrese el nombre que llevara el archivo comprimido: " fileName
  read -p "Ingrese el directorio que deseas comprimir (Si es el actual, escribe '.'): " directoryName

  tar -cvf $fileName $directoryName
  cowsay "Compresión de archivos de manera exitosa."
  sleep 1
  ls -la
  sleep 3
}

doBackup() {
  cowsay "Ha elegido la opción $option. ¿Hacemos un Backup?"
  sleep 3
  cowsay "Pos, ahora no esta disponible."
  sleep 2
}

createFile() {
  fileName=''
  read -p "Ingrese el nombre del archivo: " fileName
  touch $fileName
  cowsay "La creación del archivo ha sido exitosa."
  sleep 2
}

writeFile() {
  read -p "Ubiquese donde está el archivo e ingrese el nombre: " fileName
  nano $fileName
  cowsay "La modificación del archivo ha sido exitosa."
  sleep 2
}

exitMenu() {
  clear
  cowsay "Saliendo del programa... hasta la proxima"
  sleep 2
  clear
  exit
}

while :; do
  clear
  introductionMenu

  case $option in
    1 ) showProcess ;;
    2 ) showMemoryFree ;;
    3 ) showDiskFree ;;
    4 ) showNetworkInformation ;;
    5 ) showEnviromentsVar ;;
    6 ) showProgramSystem ;;
    7 ) compressFile ;;
    8 ) doBackup ;;
    9 )
      clear
      fileMenu

      case $optionFile in
        1 ) createFile ;;
        2 ) writeFile ;;
        8 ) exitMenu ;;
      esac

      ;;
    10 ) exitMenu ;;
  esac
done
